@interface EMKRippleAnimator
- (EMKRippleAnimator)initWithAnimation:(id)animation foregroundColor:(id)color;
- (double)nextAnimationTriggerDelay;
- (unint64_t)state;
- (void)start;
@end

@implementation EMKRippleAnimator

- (EMKRippleAnimator)initWithAnimation:(id)animation foregroundColor:(id)color
{
  v9.receiver = self;
  v9.super_class = EMKRippleAnimator;
  colorCopy = color;
  animationCopy = animation;
  v7 = [(EMKRippleAnimator *)&v9 init];
  [(EMKRippleAnimator *)v7 setAnimation:animationCopy, v9.receiver, v9.super_class];

  [(EMKRippleAnimator *)v7 setForegroundColor:colorCopy];
  return v7;
}

- (unint64_t)state
{
  glimmerAnimator = [(EMKRippleAnimator *)self glimmerAnimator];
  state = [glimmerAnimator state];

  if (state >= 4)
  {
    return 1;
  }

  else
  {
    return state;
  }
}

- (double)nextAnimationTriggerDelay
{
  glimmerAnimator = [(EMKRippleAnimator *)self glimmerAnimator];
  [glimmerAnimator nextAnimationTriggerDelay];
  v4 = v3 * 0.33;

  return v4;
}

- (void)start
{
  glimmerAnimator = [(EMKRippleAnimator *)self glimmerAnimator];
  [glimmerAnimator duration];
  v5 = v4;

  glimmerAnimator2 = [(EMKRippleAnimator *)self glimmerAnimator];
  [glimmerAnimator2 start];

  scaleRippleAnimator = [(EMKRippleAnimator *)self scaleRippleAnimator];
  [scaleRippleAnimator startWithDuration:v5];
}

@end