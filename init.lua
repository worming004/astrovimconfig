return {
    plugins = {
        init = {
            {"ChristianChiarulli/nvcode-color-schemes.vim"}
        }
    },
    colorscheme = "nvcode",
    polish = function()
        local opts = { noremap = true, silent = true }
        local map = vim.api.nvim_set_keymap
        local unmap = vim.api.nvim_del_keymap
        local set = vim.opt
        -- Set options
        set.relativenumber = true

    -- Set key bindings
    map("o", "&", "1", opts)
    map("o", "é", "2", opts)
    map("o", "\"", "3", opts)
    map("o", "'", "4", opts)
    map("o", "(", "5", opts)
    map("o", "§", "6", opts)
    map("o", "è", "7", opts)
    map("o", "!", "8", opts)
    map("o", "ç", "9", opts)
    map("o", "à", "0", opts)

    map("n", "&", "1", opts)
    map("n", "é", "2", opts)
    map("n", "\"", "3", opts)
    map("n", "'", "4", opts)
    map("n", "(", "5", opts)
    map("n", "§", "6", opts)
    map("n", "è", "7", opts)
    map("n", "!", "8", opts)
    map("n", "ç", "9", opts)
    map("n", "à", "0", opts)

        -- Set autocommands
        vim.cmd [[
          augroup packer_conf
            autocmd!
            autocmd bufwritepost plugins.lua source <afile> | PackerSync
          augroup end
        ]]
        -- unmap escape to use more easilty lazygit
        unmap("t", "<esc>")
        map("t", "<esc><esc>", "<c-\\><c-n>:q<CR>", {desc = "Quit terminal"})
  end,
}
