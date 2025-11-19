@interface BWSpringSimulation
- (BWSpringSimulation)init;
- (void)resetWithInput:(double)a3 initialOutput:(double)a4 initialVelocity:(double)a5 convergedSpeed:(double)a6;
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

- (void)resetWithInput:(double)a3 initialOutput:(double)a4 initialVelocity:(double)a5 convergedSpeed:(double)a6
{
  self->_completed = 0;
  self->_updateCount = 0;
  v6 = a4 - a3;
  self->_convergedSpeed = a6;
  self->_inputValue = a3;
  v7 = a6 * 1.1;
  if (a6 * 1.1 >= a5)
  {
    v8 = a6 * 1.1;
  }

  else
  {
    v8 = a5;
  }

  v9 = -v7;
  if (v9 > a5)
  {
    v9 = a5;
  }

  if (v6 >= 0.0)
  {
    v9 = v8;
  }

  v10 = a4 + v6 * self->_tension * 0.02 * -0.02 + v9 * 0.0166666667 / fmax(self->_friction * -0.02 + 1.0, 0.0);
  self->_velocity = v9;
  self->_previousForce = v10;
  self->_outputValue = a4;
}

@end