@interface FCCCAnimator
@end

@implementation FCCCAnimator

uint64_t __35___FCCCAnimator_animateTransition___block_invoke(uint64_t a1)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v3 = *(a1 + 32);

    return [v3 __runAlongsideAnimations];
  }

  return result;
}

@end