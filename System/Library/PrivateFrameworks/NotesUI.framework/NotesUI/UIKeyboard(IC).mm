@interface UIKeyboard(IC)
+ (uint64_t)ic_isInFloatingKeyboardMode;
+ (uint64_t)ic_isShiftKeyPressed;
+ (void)ic_suppressingShiftStateUpdates:()IC;
@end

@implementation UIKeyboard(IC)

+ (uint64_t)ic_isShiftKeyPressed
{
  activeInstance = [MEMORY[0x1E69DCBE0] activeInstance];
  callLayoutIsShiftKeyBeingHeld = [activeInstance callLayoutIsShiftKeyBeingHeld];

  return callLayoutIsShiftKeyBeingHeld;
}

+ (uint64_t)ic_isInFloatingKeyboardMode
{
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  v0 = MEMORY[0x1E69DCBE0];

  return [v0 isFloating];
}

+ (void)ic_suppressingShiftStateUpdates:()IC
{
  v3 = a3;
  activeInstance = [MEMORY[0x1E69DCBE0] activeInstance];
  if ([activeInstance suppressUpdateShiftState])
  {
    v3[2](v3);
  }

  else
  {
    [MEMORY[0x1E6979518] begin];
    [activeInstance setSuppressUpdateShiftState:1];
    v3[2](v3);
    v5 = MEMORY[0x1E6979518];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __50__UIKeyboard_IC__ic_suppressingShiftStateUpdates___block_invoke;
    v6[3] = &unk_1E8468BA0;
    v7 = activeInstance;
    [v5 setCompletionBlock:v6];

    [MEMORY[0x1E6979518] commit];
  }
}

@end