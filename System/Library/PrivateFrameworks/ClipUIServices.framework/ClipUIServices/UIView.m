@interface UIView
@end

@implementation UIView

uint64_t __77__UIView_ClipServicesUIExtras__cps_configureForAnimatesAlphaWhenHighlighted___block_invoke(uint64_t a1)
{
  v1 = 0.6;
  if (!*(a1 + 40))
  {
    v1 = 1.0;
  }

  return [*(a1 + 32) setAlpha:v1];
}

@end