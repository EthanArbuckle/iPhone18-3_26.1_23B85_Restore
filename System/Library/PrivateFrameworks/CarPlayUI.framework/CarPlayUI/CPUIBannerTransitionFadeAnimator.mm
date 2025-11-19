@interface CPUIBannerTransitionFadeAnimator
- (void)actionsForTransition:(id)a3;
@end

@implementation CPUIBannerTransitionFadeAnimator

- (void)actionsForTransition:(id)a3
{
  v4 = a3;
  if ([(BNBannerTransitionAnimator *)self isPresenting])
  {
    v5 = [v4 viewControllerForKey:*MEMORY[0x277D77240]];
    v6 = [v5 view];
    v7 = MEMORY[0x277D75D18];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __57__CPUIBannerTransitionFadeAnimator_actionsForTransition___block_invoke;
    v10[3] = &unk_278D9C708;
    v11 = v4;
    v12 = self;
    v8 = v6;
    v13 = v8;
    [v7 performWithoutAnimation:v10];

    v9 = 1.0;
  }

  else
  {
    v5 = [v4 viewControllerForKey:*MEMORY[0x277D77230]];
    v8 = [v5 view];
    v9 = 0.0;
  }

  [v8 setAlpha:v9];
}

uint64_t __57__CPUIBannerTransitionFadeAnimator_actionsForTransition___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4.receiver = *(a1 + 40);
  v4.super_class = CPUIBannerTransitionFadeAnimator;
  objc_msgSendSuper2(&v4, sel_actionsForTransition_, v2);
  return [*(a1 + 48) setAlpha:0.0];
}

@end