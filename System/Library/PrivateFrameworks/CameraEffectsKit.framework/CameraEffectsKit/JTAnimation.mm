@interface JTAnimation
+ (void)performAnimation:(id)animation curve:(int64_t)curve duration:(double)duration completion:(id)completion delay:(double)delay userInteractionEnabled:(BOOL)enabled;
+ (void)performAnimation:(id)animation timingParameters:(id)parameters duration:(double)duration completion:(id)completion delay:(double)delay userInteractionEnabled:(BOOL)enabled;
+ (void)performWithAnimator:(id)animator animation:(id)animation duration:(double)duration completion:(id)completion delay:(double)delay userInteractionEnabled:(BOOL)enabled;
@end

@implementation JTAnimation

+ (void)performAnimation:(id)animation curve:(int64_t)curve duration:(double)duration completion:(id)completion delay:(double)delay userInteractionEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v13 = MEMORY[0x277D75D40];
  completionCopy = completion;
  animationCopy = animation;
  v16 = [[v13 alloc] initWithDuration:curve curve:animationCopy animations:duration];
  [JTAnimation performWithAnimator:v16 animation:animationCopy duration:completionCopy completion:enabledCopy delay:duration userInteractionEnabled:delay];
}

+ (void)performAnimation:(id)animation timingParameters:(id)parameters duration:(double)duration completion:(id)completion delay:(double)delay userInteractionEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v13 = MEMORY[0x277D75D40];
  completionCopy = completion;
  parametersCopy = parameters;
  animationCopy = animation;
  v17 = [[v13 alloc] initWithDuration:parametersCopy timingParameters:duration];

  [JTAnimation performWithAnimator:v17 animation:animationCopy duration:completionCopy completion:enabledCopy delay:duration userInteractionEnabled:delay];
}

+ (void)performWithAnimator:(id)animator animation:(id)animation duration:(double)duration completion:(id)completion delay:(double)delay userInteractionEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  animatorCopy = animator;
  animationCopy = animation;
  completionCopy = completion;
  if (animationCopy)
  {
    [animatorCopy addAnimations:animationCopy];
  }

  if (completionCopy)
  {
    [animatorCopy addCompletion:completionCopy];
  }

  [animatorCopy setUserInteractionEnabled:enabledCopy];
  [animatorCopy startAnimationAfterDelay:delay];
}

@end