@interface SFTransitionBasicAnimation
- (SFTransitionBasicAnimation)initWithDuration:(double)duration delay:(double)delay options:(unint64_t)options;
@end

@implementation SFTransitionBasicAnimation

- (SFTransitionBasicAnimation)initWithDuration:(double)duration delay:(double)delay options:(unint64_t)options
{
  v12.receiver = self;
  v12.super_class = SFTransitionBasicAnimation;
  v8 = [(SFTransitionBasicAnimation *)&v12 init];
  v9 = v8;
  if (v8)
  {
    v8->_duration = duration;
    v8->_delay = delay;
    v8->_options = options;
    v10 = v8;
  }

  return v9;
}

@end