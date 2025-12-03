@interface CCUICASpringAnimationFactory
- (CCUICASpringAnimationFactory)initWithParameters:(id)parameters speed:(double)speed;
- (double)animationDuration;
- (id)_animation;
- (id)_basicAnimationForView:(id)view withKeyPath:(id)path;
- (void)_animation;
@end

@implementation CCUICASpringAnimationFactory

- (CCUICASpringAnimationFactory)initWithParameters:(id)parameters speed:(double)speed
{
  parametersCopy = parameters;
  v11.receiver = self;
  v11.super_class = CCUICASpringAnimationFactory;
  v8 = [(CCUICASpringAnimationFactory *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_parameters, parameters);
    v9->_speed = speed;
  }

  return v9;
}

- (double)animationDuration
{
  _animation = [(CCUICASpringAnimationFactory *)self _animation];
  [_animation durationForEpsilon:0.0];
  v4 = v3;

  return v4;
}

- (id)_basicAnimationForView:(id)view withKeyPath:(id)path
{
  pathCopy = path;
  _animation = [(CCUICASpringAnimationFactory *)self _animation];
  [_animation setKeyPath:pathCopy];

  return _animation;
}

- (id)_animation
{
  animation = [MEMORY[0x277CD9FA0] animation];
  [(CCUICASpringAnimationParameters *)self->_parameters mass];
  [animation setMass:?];
  [(CCUICASpringAnimationParameters *)self->_parameters stiffness];
  [animation setStiffness:?];
  [(CCUICASpringAnimationParameters *)self->_parameters damping];
  [animation setDamping:?];
  speed = self->_speed;
  *&speed = speed;
  [animation setSpeed:speed];
  timingFunction = [(CCUICASpringAnimationParameters *)self->_parameters timingFunction];
  v6 = objc_opt_class();
  v7 = timingFunction;
  if (v6)
  {
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  if (v9)
  {
    v10 = [MEMORY[0x277CD9EF8] functionWithName:v9];
  }

  else
  {
    v10 = 0;
  }

  v11 = objc_opt_class();
  v12 = v7;
  if (v11)
  {
    if (objc_opt_isKindOfClass())
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;

  if (v14)
  {
    [v14 controlPoint1];
    v16 = v15;
    v18 = v17;
    [v14 controlPoint2];
    v19 = v16;
    v20 = v18;
    *&v22 = v21;
    *&v24 = v23;
    *&v21 = v19;
    *&v23 = v20;
    v25 = [MEMORY[0x277CD9EF8] functionWithControlPoints:v21 :v23 :v22 :v24];

    v10 = v25;
  }

  if (v12 && !v10)
  {
    [CCUICASpringAnimationFactory _animation];
  }

  [animation setTimingFunction:v10];

  return animation;
}

- (void)_animation
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"CAMediaTimingFunction *CATimingFunctionFromDescription(__strong id<CCUIAnimationTimingFunctionDescription>)"];
  [currentHandler handleFailureInFunction:v0 file:@"CCUIAnimationRunner.m" lineNumber:36 description:@"Unknown timing function"];
}

@end