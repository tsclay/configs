PATH="/Library/Frameworks/Python.framework/Versions/3.8/bin:${PATH}"
export PATH
# ------------------------

parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

setMyChar()
        {
                echo -e '\xf0\x9d\x84\xa2'
        }

export PS1="\d  $(setMyChar)  \[\033[32m\]\W\[\033[33m\]\$(parse_git_branch)\[\033[00m\] \$ "
