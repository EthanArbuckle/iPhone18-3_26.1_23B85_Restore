@interface CCUIAnimation
+ (id)animationWithParameters:(id)parameters delay:(double)delay speed:(double)speed animations:(id)animations;
- (id)_initWithParameters:(id)parameters delay:(double)delay speed:(double)speed animations:(id)animations;
@end

@implementation CCUIAnimation

+ (id)animationWithParameters:(id)parameters delay:(double)delay speed:(double)speed animations:(id)animations
{
  animationsCopy = animations;
  parametersCopy = parameters;
  v12 = [[self alloc] _initWithParameters:parametersCopy delay:animationsCopy speed:delay animations:speed];

  return v12;
}

- (id)_initWithParameters:(id)parameters delay:(double)delay speed:(double)speed animations:(id)animations
{
  parametersCopy = parameters;
  animationsCopy = animations;
  v18.receiver = self;
  v18.super_class = CCUIAnimation;
  v12 = [(CCUIAnimation *)&v18 init];
  if (v12)
  {
    v13 = [parametersCopy copyWithZone:0];
    parameters = v12->_parameters;
    v12->_parameters = v13;

    v12->_delay = delay;
    v12->_speed = speed;
    v15 = [animationsCopy copy];
    animations = v12->_animations;
    v12->_animations = v15;
  }

  return v12;
}

@end