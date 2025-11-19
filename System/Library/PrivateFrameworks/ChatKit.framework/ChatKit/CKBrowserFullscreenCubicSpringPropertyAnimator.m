@interface CKBrowserFullscreenCubicSpringPropertyAnimator
- (id)_basicAnimationForView:(id)a3 withKeyPath:(id)a4;
@end

@implementation CKBrowserFullscreenCubicSpringPropertyAnimator

- (id)_basicAnimationForView:(id)a3 withKeyPath:(id)a4
{
  v10.receiver = self;
  v10.super_class = CKBrowserFullscreenCubicSpringPropertyAnimator;
  v5 = [(UIViewPropertyAnimator *)&v10 _basicAnimationForView:a3 withKeyPath:a4];
  v6 = [(UIViewPropertyAnimator *)self timingParameters];
  v7 = [v6 springCubicTimingParameters];
  v8 = [v7 _mediaTimingFunction];

  if (v8)
  {
    [v5 setTimingFunction:v8];
  }

  return v5;
}

@end