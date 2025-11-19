@interface UIColor
@end

@implementation UIColor

id __59__UIColor_HKAdditions__hk_sleepScoreDurationComponentColor__block_invoke(uint64_t a1, void *a2)
{
  if ([a2 userInterfaceStyle] == 2)
  {
    v2 = 0.258823544;
    v3 = 0.396078438;
  }

  else
  {
    v2 = 0.243137255;
    v3 = 0.384313732;
  }

  v4 = [MEMORY[0x1E69DC888] colorWithRed:v2 green:v3 blue:1.0 alpha:1.0];

  return v4;
}

uint64_t __47__UIColor_HKAdditions___accessibilityColorView__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E69DD250]);
  v1 = _accessibilityColorView_accessibilityColorView;
  _accessibilityColorView_accessibilityColorView = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end