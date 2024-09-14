#Persistent
SetTimer, CheckMousePosition, 100 ; 检查鼠标位置的频率，这里是每100毫秒检查一次

CheckMousePosition:
MouseGetPos, xpos, ypos

; 检查鼠标是否在屏幕左侧附近，且在距离上方和下方各165像素的高度范围内
if (xpos < 10 && ypos > 165 && ypos < A_ScreenHeight - 165)
{
    SendInput, {LControl down}{LWin down}{Left down}{Left up}{LWin up}{LControl up}
    Sleep, 100
}

; 检查鼠标是否在屏幕右侧附近，且在距离上方和下方各165像素的高度范围内
if (xpos > A_ScreenWidth - 10 && ypos > 165 && ypos < A_ScreenHeight - 165)
{
    SendInput, {LControl down}{LWin down}{Right down}{Right up}{LWin up}{LControl up}
    Sleep, 100
}

return