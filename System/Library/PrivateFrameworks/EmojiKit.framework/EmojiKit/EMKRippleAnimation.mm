@interface EMKRippleAnimation
- (EMKRippleAnimation)initWithGlimmerFilterAnimation:(id)animation scaleRippleAnimation:(id)rippleAnimation;
@end

@implementation EMKRippleAnimation

- (EMKRippleAnimation)initWithGlimmerFilterAnimation:(id)animation scaleRippleAnimation:(id)rippleAnimation
{
  v9.receiver = self;
  v9.super_class = EMKRippleAnimation;
  rippleAnimationCopy = rippleAnimation;
  animationCopy = animation;
  v7 = [(EMKRippleAnimation *)&v9 init];
  [(EMKRippleAnimation *)v7 setGlimmerFilterAnimation:animationCopy, v9.receiver, v9.super_class];

  [(EMKRippleAnimation *)v7 setScaleRippleAnimation:rippleAnimationCopy];
  return v7;
}

@end