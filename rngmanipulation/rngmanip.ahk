        Loop
        {
                ifWinActive Minecraft 1.11.2
                {
                    if pSearch(0xFF0000, 967,467,968,468) {
                        Send {E down}
                    }
                    if pSearch(0x0000FF, 967,467,968,468) {
                        Send {E down}
                    }
                }
                Sleep 25
        } ; Loop
        pSearch(color, x1, y1, x2, y2)
        {
                PixelSearch, x, y, %x1%, %y1%, %x2%, %y2%, %color%, 0, Fast RGB
                if not ErrorLevel
                {
                        return 1  
                }
                else
                        return 0       
        }