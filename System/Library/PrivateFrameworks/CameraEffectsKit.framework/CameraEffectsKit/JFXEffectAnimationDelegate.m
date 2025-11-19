@interface JFXEffectAnimationDelegate
- (void)animateWithCompletion:(id)a3;
- (void)animationDidStop:(id)a3 finished:(BOOL)a4;
@end

@implementation JFXEffectAnimationDelegate

- (void)animateWithCompletion:(id)a3
{
  v4 = a3;
  [(JFXEffectAnimationDelegate *)self setAnimationDidBegin:1];
  [(JFXEffectAnimationDelegate *)self setCompletion:v4];
}

- (void)animationDidStop:(id)a3 finished:(BOOL)a4
{
  v4 = a4;
  [(JFXEffectAnimationDelegate *)self setAnimationDidEnd:1];
  v6 = [(JFXEffectAnimationDelegate *)self completion];

  if (v6)
  {
    v7 = [(JFXEffectAnimationDelegate *)self completion];
    v7[2](v7, v4);
  }

  [(JFXEffectAnimationDelegate *)self setCompletion:0];
}

@end