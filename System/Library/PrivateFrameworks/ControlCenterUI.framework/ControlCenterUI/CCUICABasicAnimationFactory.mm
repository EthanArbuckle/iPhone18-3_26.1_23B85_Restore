@interface CCUICABasicAnimationFactory
- (CCUICABasicAnimationFactory)initWithParameters:(id)parameters speed:(double)speed;
- (id)_animation;
- (id)_basicAnimationForView:(id)view withKeyPath:(id)path;
@end

@implementation CCUICABasicAnimationFactory

- (CCUICABasicAnimationFactory)initWithParameters:(id)parameters speed:(double)speed
{
  parametersCopy = parameters;
  v11.receiver = self;
  v11.super_class = CCUICABasicAnimationFactory;
  v8 = [(CCUICABasicAnimationFactory *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_parameters, parameters);
    v9->_speed = speed;
  }

  return v9;
}

- (id)_basicAnimationForView:(id)view withKeyPath:(id)path
{
  pathCopy = path;
  _animation = [(CCUICABasicAnimationFactory *)self _animation];
  [_animation setKeyPath:pathCopy];

  return _animation;
}

- (id)_animation
{
  animation = [MEMORY[0x277CD9E10] animation];
  [(CCUICABasicAnimationParameters *)self->_parameters duration];
  [animation setDuration:?];
  speed = self->_speed;
  *&speed = speed;
  [animation setSpeed:speed];

  return animation;
}

@end