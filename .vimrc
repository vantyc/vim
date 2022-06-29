call plug#begin('~/.vim/plugged')
"Plug 'joshdick/onedark.vim'
Plug 'tribela/vim-transparent'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'preservim/nerdtree'
Plug 'christoomey/vim-tmux-navigator'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-commentary'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

"Config para vim
set number
set rnu
set cursorline
set is hls
set mouse=a
set clipboard=unnamed
set laststatus=2
set showcmd
set noshowmode
set showmatch
set encoding=utf-8
syntax enable

"colorscheme onedark 
if (empty($TMUX))
	if (has("nvim"))
		let $NVIM_TUI_ENABLE_TRUE_COLOR=1
	endif
	if (has("termguicolors"))
		set termguicolors
	endif
endif

"Config para AirLione Theme
let g:airline#extensions#tabline#enabled = 1
"let g:airline_theme='badwolf'

"NERDTree
nnoremap <C-n> :NERDTreeToggle<CR>

" Comandos personalizados
nmap <C-s> :w<CR>
nmap <C-x> :x<CR>
nmap <C-w> :q!<CR>

noremap <C-p> :bprev<CR>
noremap <C-o> :bnext<CR>

nmap - dd

autocmd BufWrite *.html :CocCommand prettier.formatFile
autocmd BufWrite *.js :CocCommand prettier.formatFile
autocmd BufWrite *.ts :CocCommand prettier.formatFile
autocmd BufWrite *.css :CocCommand prettier.formatFile
autocmd BufWrite *.scss :CocCommand prettier.formatFile
autocmd BufWrite *.java :CocCommand prettier.formatFile


