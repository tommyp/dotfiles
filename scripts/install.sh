#!/bin/sh

# this script was pinched from Simon Coffey:
# https://github.com/urbanautomaton/dotfiles/blob/e8a37d16f7eb7326a522fb5685e9926861a84362/install.sh
# once, it was as good, now, it's a bastardization

set -euo pipefail

readonly DOTFILES="
  gitconfig
  gitignore_global
  zshrc
"

for file in $DOTFILES; do
  if [[ -n "$file" ]]; then
    ln -sf ~/Code/dotfiles/$file ~/.$file
  fi
done

# vs code
ln -sf ~/Code/dotfiles/vscode_settings.json "$HOME/Library/Application Support/Code/User/settings.json"

