@interface UIView(GKAdditions)
- (double)_gkPopoverPresentationArea;
- (uint64_t)_gkDisableDefaultFocusEffect;
- (void)_gkAddStandardFadeTransition;
- (void)_gkEnumerateSubviewsUsingBlock:()GKAdditions;
- (void)_gkPerformWithoutAnimationWhenRotating:()GKAdditions;
@end

@implementation UIView(GKAdditions)

- (void)_gkEnumerateSubviewsUsingBlock:()GKAdditions
{
  v4 = a3;
  v5 = [a1 subviews];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __54__UIView_GKAdditions___gkEnumerateSubviewsUsingBlock___block_invoke;
  v7[3] = &unk_27967F028;
  v8 = v4;
  v6 = v4;
  [v5 enumerateObjectsUsingBlock:v7];
}

- (void)_gkAddStandardFadeTransition
{
  v4 = [MEMORY[0x277CDA000] animation];
  [v4 setType:*MEMORY[0x277CDA928]];
  [v4 setDuration:0.3];
  v2 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7B0]];
  [v4 setTimingFunction:v2];

  [v4 setFillMode:*MEMORY[0x277CDA230]];
  v3 = [a1 layer];
  [v3 addAnimation:v4 forKey:0];
}

- (uint64_t)_gkDisableDefaultFocusEffect
{
  result = objc_opt_respondsToSelector();
  if (result)
  {

    return [a1 setFocusEffect:0];
  }

  return result;
}

- (double)_gkPopoverPresentationArea
{
  [a1 _gkPopoverPresentationRect];
  v3 = v2;
  [a1 _gkPopoverPresentationInsets];
  return v3 + v4;
}

- (void)_gkPerformWithoutAnimationWhenRotating:()GKAdditions
{
  v6 = a3;
  v4 = [a1 window];
  v5 = [v4 isRotating];

  if (v5)
  {
    [objc_opt_class() performWithoutAnimation:v6];
  }

  else
  {
    v6[2]();
  }
}

@end