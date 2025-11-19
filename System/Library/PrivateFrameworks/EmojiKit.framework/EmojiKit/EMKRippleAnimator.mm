@interface EMKRippleAnimator
- (EMKRippleAnimator)initWithAnimation:(id)a3 foregroundColor:(id)a4;
- (double)nextAnimationTriggerDelay;
- (unint64_t)state;
- (void)start;
@end

@implementation EMKRippleAnimator

- (EMKRippleAnimator)initWithAnimation:(id)a3 foregroundColor:(id)a4
{
  v9.receiver = self;
  v9.super_class = EMKRippleAnimator;
  v5 = a4;
  v6 = a3;
  v7 = [(EMKRippleAnimator *)&v9 init];
  [(EMKRippleAnimator *)v7 setAnimation:v6, v9.receiver, v9.super_class];

  [(EMKRippleAnimator *)v7 setForegroundColor:v5];
  return v7;
}

- (unint64_t)state
{
  v2 = [(EMKRippleAnimator *)self glimmerAnimator];
  v3 = [v2 state];

  if (v3 >= 4)
  {
    return 1;
  }

  else
  {
    return v3;
  }
}

- (double)nextAnimationTriggerDelay
{
  v2 = [(EMKRippleAnimator *)self glimmerAnimator];
  [v2 nextAnimationTriggerDelay];
  v4 = v3 * 0.33;

  return v4;
}

- (void)start
{
  v3 = [(EMKRippleAnimator *)self glimmerAnimator];
  [v3 duration];
  v5 = v4;

  v6 = [(EMKRippleAnimator *)self glimmerAnimator];
  [v6 start];

  v7 = [(EMKRippleAnimator *)self scaleRippleAnimator];
  [v7 startWithDuration:v5];
}

@end