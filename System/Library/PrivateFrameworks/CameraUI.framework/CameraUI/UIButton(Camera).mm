@interface UIButton(Camera)
- (id)hudItemForAccessibilityHUDManager:()Camera;
- (void)selectedByAccessibilityHUDManager:()Camera;
@end

@implementation UIButton(Camera)

- (id)hudItemForAccessibilityHUDManager:()Camera
{
  v2 = [self titleForState:{objc_msgSend(self, "state")}];
  if (objc_opt_respondsToSelector())
  {
    [self imageForAccessibilityHUD];
  }

  else
  {
    [self imageForState:{objc_msgSend(self, "state")}];
  }
  v3 = ;
  v4 = objc_alloc(MEMORY[0x1E69DC618]);
  v5 = [v4 initWithTitle:v2 image:v3 imageInsets:1 scaleImage:{*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)}];

  return v5;
}

- (void)selectedByAccessibilityHUDManager:()Camera
{
  [self cancelTouchTracking];
  [self sendActionsForControlEvents:64];
  [self setHighlighted:1];
  v2 = dispatch_time(0, 200000000);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__UIButton_Camera__selectedByAccessibilityHUDManager___block_invoke;
  block[3] = &unk_1E76F77B0;
  block[4] = self;
  dispatch_after(v2, MEMORY[0x1E69E96A0], block);
}

@end