# Set up the prompt


autoload -Uz promptinit
promptinit
prompt adam2


setopt histignorealldups sharehistory


# Use emacs keybindings even if our EDITOR is set to vi
bindkey -e


# Keep 1000 lines of history within the shell and save it to ~/.zsh_history:
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zsh_history


# Use modern completion system
autoload -Uz compinit
compinit


zstyle ':completion:*' auto-description 'specify: %d'
zstyle ':completion:*' completer _expand _complete _correct _approximate
zstyle ':completion:*' format 'Completing %d'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' menu select=2
eval "$(dircolors -b)"
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=* l:|=*'
zstyle ':completion:*' menu select=long
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' use-compctl false
zstyle ':completion:*' verbose true


zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'


alias ls='ls --color=auto'
alias la='ls -a'
alias ll='ls -l'
alias asp='powerpc64le-linux-gnu-as'
alias gccp='powerpc64le-linux-gnu-gcc'
alias objdumpp='powerpc64le-linux-gnu-objdump'
alias readelfp='powerpc64le-linux-gnu-readelf'
alias stripp='powerpc64le-linux-gnu-strip'
alias gdbp='powerpc-linux-gdb'
alias runp='powerpc-linux-run'
alias gg='git grep'
alias f='find . -name '
alias m='make -j 8 '
alias g='git '
alias c='checkout'
alias cpp='cherry-pick'
alias fi='c++filt '

autoload -Uz colors
colors


HISTFILE=~/.zsh_history
HISTSIZE=1000000
SAVEHIST=1000000


setopt auto_cd
export TERM=xterm-256color
alias gnomecc='env XDG_CURRENT_DESKTOP=GNOME gnome-control-center'
export EDITOR=vim

export VISUAL="vim"
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:~/halide-build/bin
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:~/halide-build/lib
export HALIDE_DISTRIB_PATH=~/halide-install
setopt noincappendhistory
setopt nosharehistory
export PATH=/home/yuka/Downloads/sde-external-8.69.1-2021-07-18-lin:$PATH
export CLANG=/usr/bin/clang-13
set tabstop=4
setxkbmap -layout us -option ctrl:nocaps
