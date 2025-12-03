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
  subviews = [self subviews];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __54__UIView_GKAdditions___gkEnumerateSubviewsUsingBlock___block_invoke;
  v7[3] = &unk_27967F028;
  v8 = v4;
  v6 = v4;
  [subviews enumerateObjectsUsingBlock:v7];
}

- (void)_gkAddStandardFadeTransition
{
  animation = [MEMORY[0x277CDA000] animation];
  [animation setType:*MEMORY[0x277CDA928]];
  [animation setDuration:0.3];
  v2 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7B0]];
  [animation setTimingFunction:v2];

  [animation setFillMode:*MEMORY[0x277CDA230]];
  layer = [self layer];
  [layer addAnimation:animation forKey:0];
}

- (uint64_t)_gkDisableDefaultFocusEffect
{
  result = objc_opt_respondsToSelector();
  if (result)
  {

    return [self setFocusEffect:0];
  }

  return result;
}

- (double)_gkPopoverPresentationArea
{
  [self _gkPopoverPresentationRect];
  v3 = v2;
  [self _gkPopoverPresentationInsets];
  return v3 + v4;
}

- (void)_gkPerformWithoutAnimationWhenRotating:()GKAdditions
{
  v6 = a3;
  window = [self window];
  isRotating = [window isRotating];

  if (isRotating)
  {
    [objc_opt_class() performWithoutAnimation:v6];
  }

  else
  {
    v6[2]();
  }
}

@end