@interface SFTransitionBasicAnimation
- (SFTransitionBasicAnimation)initWithDuration:(double)a3 delay:(double)a4 options:(unint64_t)a5;
@end

@implementation SFTransitionBasicAnimation

- (SFTransitionBasicAnimation)initWithDuration:(double)a3 delay:(double)a4 options:(unint64_t)a5
{
  v12.receiver = self;
  v12.super_class = SFTransitionBasicAnimation;
  v8 = [(SFTransitionBasicAnimation *)&v12 init];
  v9 = v8;
  if (v8)
  {
    v8->_duration = a3;
    v8->_delay = a4;
    v8->_options = a5;
    v10 = v8;
  }

  return v9;
}

@end