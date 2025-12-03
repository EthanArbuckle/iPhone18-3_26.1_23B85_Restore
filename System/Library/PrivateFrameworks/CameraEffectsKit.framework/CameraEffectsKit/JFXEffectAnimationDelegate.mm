@interface JFXEffectAnimationDelegate
- (void)animateWithCompletion:(id)completion;
- (void)animationDidStop:(id)stop finished:(BOOL)finished;
@end

@implementation JFXEffectAnimationDelegate

- (void)animateWithCompletion:(id)completion
{
  completionCopy = completion;
  [(JFXEffectAnimationDelegate *)self setAnimationDidBegin:1];
  [(JFXEffectAnimationDelegate *)self setCompletion:completionCopy];
}

- (void)animationDidStop:(id)stop finished:(BOOL)finished
{
  finishedCopy = finished;
  [(JFXEffectAnimationDelegate *)self setAnimationDidEnd:1];
  completion = [(JFXEffectAnimationDelegate *)self completion];

  if (completion)
  {
    completion2 = [(JFXEffectAnimationDelegate *)self completion];
    completion2[2](completion2, finishedCopy);
  }

  [(JFXEffectAnimationDelegate *)self setCompletion:0];
}

@end