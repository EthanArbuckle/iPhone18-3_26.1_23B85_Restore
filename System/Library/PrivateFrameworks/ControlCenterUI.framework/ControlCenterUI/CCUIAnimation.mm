@interface CCUIAnimation
+ (id)animationWithParameters:(id)a3 delay:(double)a4 speed:(double)a5 animations:(id)a6;
- (id)_initWithParameters:(id)a3 delay:(double)a4 speed:(double)a5 animations:(id)a6;
@end

@implementation CCUIAnimation

+ (id)animationWithParameters:(id)a3 delay:(double)a4 speed:(double)a5 animations:(id)a6
{
  v10 = a6;
  v11 = a3;
  v12 = [[a1 alloc] _initWithParameters:v11 delay:v10 speed:a4 animations:a5];

  return v12;
}

- (id)_initWithParameters:(id)a3 delay:(double)a4 speed:(double)a5 animations:(id)a6
{
  v10 = a3;
  v11 = a6;
  v18.receiver = self;
  v18.super_class = CCUIAnimation;
  v12 = [(CCUIAnimation *)&v18 init];
  if (v12)
  {
    v13 = [v10 copyWithZone:0];
    parameters = v12->_parameters;
    v12->_parameters = v13;

    v12->_delay = a4;
    v12->_speed = a5;
    v15 = [v11 copy];
    animations = v12->_animations;
    v12->_animations = v15;
  }

  return v12;
}

@end