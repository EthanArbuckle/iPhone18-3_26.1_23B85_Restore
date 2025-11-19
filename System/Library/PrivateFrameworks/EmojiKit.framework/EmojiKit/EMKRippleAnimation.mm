@interface EMKRippleAnimation
- (EMKRippleAnimation)initWithGlimmerFilterAnimation:(id)a3 scaleRippleAnimation:(id)a4;
@end

@implementation EMKRippleAnimation

- (EMKRippleAnimation)initWithGlimmerFilterAnimation:(id)a3 scaleRippleAnimation:(id)a4
{
  v9.receiver = self;
  v9.super_class = EMKRippleAnimation;
  v5 = a4;
  v6 = a3;
  v7 = [(EMKRippleAnimation *)&v9 init];
  [(EMKRippleAnimation *)v7 setGlimmerFilterAnimation:v6, v9.receiver, v9.super_class];

  [(EMKRippleAnimation *)v7 setScaleRippleAnimation:v5];
  return v7;
}

@end