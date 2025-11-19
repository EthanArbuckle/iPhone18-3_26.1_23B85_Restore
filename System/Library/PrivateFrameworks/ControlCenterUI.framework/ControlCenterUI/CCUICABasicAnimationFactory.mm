@interface CCUICABasicAnimationFactory
- (CCUICABasicAnimationFactory)initWithParameters:(id)a3 speed:(double)a4;
- (id)_animation;
- (id)_basicAnimationForView:(id)a3 withKeyPath:(id)a4;
@end

@implementation CCUICABasicAnimationFactory

- (CCUICABasicAnimationFactory)initWithParameters:(id)a3 speed:(double)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = CCUICABasicAnimationFactory;
  v8 = [(CCUICABasicAnimationFactory *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_parameters, a3);
    v9->_speed = a4;
  }

  return v9;
}

- (id)_basicAnimationForView:(id)a3 withKeyPath:(id)a4
{
  v5 = a4;
  v6 = [(CCUICABasicAnimationFactory *)self _animation];
  [v6 setKeyPath:v5];

  return v6;
}

- (id)_animation
{
  v3 = [MEMORY[0x277CD9E10] animation];
  [(CCUICABasicAnimationParameters *)self->_parameters duration];
  [v3 setDuration:?];
  speed = self->_speed;
  *&speed = speed;
  [v3 setSpeed:speed];

  return v3;
}

@end