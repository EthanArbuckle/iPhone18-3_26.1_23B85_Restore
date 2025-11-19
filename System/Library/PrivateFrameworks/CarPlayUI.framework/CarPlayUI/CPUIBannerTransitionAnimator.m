@interface CPUIBannerTransitionAnimator
+ (void)animateInteractive:(BOOL)a3 animations:(id)a4 completion:(id)a5;
- (double)transitionDuration:(id)a3;
@end

@implementation CPUIBannerTransitionAnimator

+ (void)animateInteractive:(BOOL)a3 animations:(id)a4 completion:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = v8;
  if (v7)
  {
    v10 = MEMORY[0x277D75D18];
    [a1 defaultTransitionDuration];
    v12 = v11;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __73__CPUIBannerTransitionAnimator_animateInteractive_animations_completion___block_invoke;
    v15[3] = &unk_278D9C4C0;
    v16 = v7;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __73__CPUIBannerTransitionAnimator_animateInteractive_animations_completion___block_invoke_2;
    v13[3] = &unk_278D9C4E8;
    v14 = v9;
    [v10 animateWithDuration:v15 animations:v13 completion:v12];
  }

  else if (v8)
  {
    (*(v8 + 2))(v8, 1, 0);
  }
}

uint64_t __73__CPUIBannerTransitionAnimator_animateInteractive_animations_completion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2, 0);
  }

  return result;
}

- (double)transitionDuration:(id)a3
{
  v3 = objc_opt_class();

  [v3 defaultTransitionDuration];
  return result;
}

@end