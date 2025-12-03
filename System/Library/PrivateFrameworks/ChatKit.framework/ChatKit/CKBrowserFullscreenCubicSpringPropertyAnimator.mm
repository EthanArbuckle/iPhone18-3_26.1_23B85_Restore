@interface CKBrowserFullscreenCubicSpringPropertyAnimator
- (id)_basicAnimationForView:(id)view withKeyPath:(id)path;
@end

@implementation CKBrowserFullscreenCubicSpringPropertyAnimator

- (id)_basicAnimationForView:(id)view withKeyPath:(id)path
{
  v10.receiver = self;
  v10.super_class = CKBrowserFullscreenCubicSpringPropertyAnimator;
  v5 = [(UIViewPropertyAnimator *)&v10 _basicAnimationForView:view withKeyPath:path];
  timingParameters = [(UIViewPropertyAnimator *)self timingParameters];
  springCubicTimingParameters = [timingParameters springCubicTimingParameters];
  _mediaTimingFunction = [springCubicTimingParameters _mediaTimingFunction];

  if (_mediaTimingFunction)
  {
    [v5 setTimingFunction:_mediaTimingFunction];
  }

  return v5;
}

@end