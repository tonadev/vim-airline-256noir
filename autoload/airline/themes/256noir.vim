" vim-airline companion theme of vim-256noir
" (https://github.com/andreasvc/vim-256noir)
"
" License:      MIT
" Maintainer:   Alejandro Garcia <tonadevv@gmail.com>
" Repository:   https://github.com/tonadev/vim-airline-256noir
" Version:      1.0

let s:theme = '256noir'

let g:airline#themes#{s:theme}#palette = {}

" Normal airline sections
let s:airline_a_normal = ['#eeeeee', '#000000', 245, 16]
let s:airline_b_normal = ['#8a8a8a', '#000000', 245, 16]
let s:airline_c_normal = ['#8a8a8a', '#000000', 245, 16]

let s:airline_warning = ['#ffff00', '#000000', 245, 16]
let s:airline_error = ['ff0000', '#000000', 245, 16]

let g:airline#themes#{s:theme}#palette.normal = airline#themes#generate_color_map(
	\ s:airline_a_normal, 
	\ s:airline_b_normal, 
	\ s:airline_c_normal
	\ )

let g:airline#themes#{s:theme}#palette.normal.airline_error = s:airline_error
let g:airline#themes#{s:theme}#palette.normal.airline_warning = s:airline_warning

let g:airline#themes#{s:theme}#palette.insert = copy(g:airline#themes#{s:theme}#palette.normal)
let g:airline#themes#{s:theme}#palette.replace = copy(g:airline#themes#{s:theme}#palette.normal)
let g:airline#themes#{s:theme}#palette.visual = copy(g:airline#themes#{s:theme}#palette.normal)
let g:airline#themes#{s:theme}#palette.inactive = copy(g:airline#themes#{s:theme}#palette.normal)
let g:airline#themes#{s:theme}#palette.terminal = copy(g:airline#themes#{s:theme}#palette.normal)

