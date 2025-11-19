@interface UIView
@end

@implementation UIView

id __55__UIView_ControlCenterUI__ccui_performLayerAnimations___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (*(a1 + 40) == 1)
  {
    v5 = [*(a1 + 32) isSpringAnimation];
    v6 = 0x277CD9FA0;
    if (!v5)
    {
      v6 = 0x277CD9E10;
    }

    v7 = [*v6 animationWithKeyPath:v4];
    [*(a1 + 32) applyToCAAnimation:v7];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end