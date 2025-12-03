@interface HURelativeAnimation
- (HURelativeAnimation)initWithAnimationApplier:(id)applier relativeStart:(double)start relativeDuration:(double)duration;
@end

@implementation HURelativeAnimation

- (HURelativeAnimation)initWithAnimationApplier:(id)applier relativeStart:(double)start relativeDuration:(double)duration
{
  applierCopy = applier;
  v13.receiver = self;
  v13.super_class = HURelativeAnimation;
  v10 = [(HURelativeAnimation *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_applier, applier);
    v11->_relativeStart = start;
    v11->_relativeDuration = duration;
  }

  return v11;
}

@end