@interface HURelativeAnimation
- (HURelativeAnimation)initWithAnimationApplier:(id)a3 relativeStart:(double)a4 relativeDuration:(double)a5;
@end

@implementation HURelativeAnimation

- (HURelativeAnimation)initWithAnimationApplier:(id)a3 relativeStart:(double)a4 relativeDuration:(double)a5
{
  v9 = a3;
  v13.receiver = self;
  v13.super_class = HURelativeAnimation;
  v10 = [(HURelativeAnimation *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_applier, a3);
    v11->_relativeStart = a4;
    v11->_relativeDuration = a5;
  }

  return v11;
}

@end