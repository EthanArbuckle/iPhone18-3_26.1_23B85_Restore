@interface UIButton
@end

@implementation UIButton

uint64_t __54__UIButton_Camera__selectedByAccessibilityHUDManager___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isTracking];
  if ((result & 1) == 0)
  {
    v3 = *(a1 + 32);

    return [v3 setHighlighted:0];
  }

  return result;
}

@end