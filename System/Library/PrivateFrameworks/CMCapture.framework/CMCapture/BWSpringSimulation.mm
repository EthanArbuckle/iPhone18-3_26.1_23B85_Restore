@interface BWSpringSimulation
- (BWSpringSimulation)init;
- (void)resetWithInput:(double)input initialOutput:(double)output initialVelocity:(double)velocity convergedSpeed:(double)speed;
- (void)update;
@end

@implementation BWSpringSimulation

- (BWSpringSimulation)init
{
  v3.receiver = self;
  v3.super_class = BWSpringSimulation;
  result = [(BWSpringSimulation *)&v3 init];
  if (result)
  {
    *&result->_tension = xmmword_1AD055AD0;
    result->_previousForce = 0.0;
    result->_inputValue = 0.0;
    result->_outputValue = 0.0;
  }

  return result;
}

- (void)update
{
  if (!self->_completed)
  {
    convergedSpeed = self->_convergedSpeed;
    v3 = self->_outputValue + (self->_outputValue - self->_inputValue) * self->_tension * 0.02 * -0.02;
    v4 = fmax(self->_friction * -0.02 + 1.0, 0.0) * (v3 - self->_previousForce) / 0.0166666667;
    self->_velocity = v4;
    if (fabs(v4) < convergedSpeed)
    {
      self->_completed = 1;
    }

    self->_previousForce = v3;
    self->_outputValue = v3 + v4 * 0.02;
    ++self->_updateCount;
  }
}

- (void)resetWithInput:(double)input initialOutput:(double)output initialVelocity:(double)velocity convergedSpeed:(double)speed
{
  self->_completed = 0;
  self->_updateCount = 0;
  v6 = output - input;
  self->_convergedSpeed = speed;
  self->_inputValue = input;
  v7 = speed * 1.1;
  if (speed * 1.1 >= velocity)
  {
    velocityCopy = speed * 1.1;
  }

  else
  {
    velocityCopy = velocity;
  }

  velocityCopy2 = -v7;
  if (velocityCopy2 > velocity)
  {
    velocityCopy2 = velocity;
  }

  if (v6 >= 0.0)
  {
    velocityCopy2 = velocityCopy;
  }

  v10 = output + v6 * self->_tension * 0.02 * -0.02 + velocityCopy2 * 0.0166666667 / fmax(self->_friction * -0.02 + 1.0, 0.0);
  self->_velocity = velocityCopy2;
  self->_previousForce = v10;
  self->_outputValue = output;
}

@end