@interface CPUIBannerTransitionAnimator
+ (void)animateInteractive:(BOOL)interactive animations:(id)animations completion:(id)completion;
- (double)transitionDuration:(id)duration;
@end

@implementation CPUIBannerTransitionAnimator

+ (void)animateInteractive:(BOOL)interactive animations:(id)animations completion:(id)completion
{
  animationsCopy = animations;
  completionCopy = completion;
  v9 = completionCopy;
  if (animationsCopy)
  {
    v10 = MEMORY[0x277D75D18];
    [self defaultTransitionDuration];
    v12 = v11;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __73__CPUIBannerTransitionAnimator_animateInteractive_animations_completion___block_invoke;
    v15[3] = &unk_278D9C4C0;
    v16 = animationsCopy;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __73__CPUIBannerTransitionAnimator_animateInteractive_animations_completion___block_invoke_2;
    v13[3] = &unk_278D9C4E8;
    v14 = v9;
    [v10 animateWithDuration:v15 animations:v13 completion:v12];
  }

  else if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 1, 0);
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

- (double)transitionDuration:(id)duration
{
  v3 = objc_opt_class();

  [v3 defaultTransitionDuration];
  return result;
}

@end