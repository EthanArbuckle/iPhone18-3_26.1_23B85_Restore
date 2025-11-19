@interface BWRamp
- (BWRamp)initWithName:(id)a3;
- (float)updateRampForNextIteration;
- (void)dealloc;
- (void)reset;
- (void)startRampFrom:(float)a3 to:(float)a4 iterations:(int)a5 shape:(int)a6 exponentialConvergenceFraction:(float)a7;
- (void)startSpringRampFrom:(float)a3 to:(float)a4 withTension:(float)a5 friction:(float)a6 snapFraction:(float)a7 frameRate:(float)a8;
@end

@implementation BWRamp

- (float)updateRampForNextIteration
{
  if (!self->_isRamping)
  {
    return self->_currentValue;
  }

  v3 = self->_currentIteration + 1;
  self->_currentIteration = v3;
  v4 = v3;
  targetValue = self->_targetValue;
  v6 = v3 / self->_durationInIterations;
  startValue = self->_startValue;
  shape = self->_shape;
  v9 = 0.0;
  if (shape > 1)
  {
    if (shape == 2)
    {
      v9 = 1.0;
      v17 = powf(1.0 - self->_exponentialConvergenceFraction, v6);
      if (v6 <= self->_exponentialSnapFraction)
      {
        v9 = 1.0 - v17;
      }
    }

    else if (shape == 3)
    {
      v10 = FigCaptureRoundFloatToMultipleOf(1, (v4 / self->_frameRate) * 60.0);
      v11 = [(BWSpringSimulation *)self->_spring updateCount];
      v12 = __OFSUB__(v10, v11);
      v13 = v10 - v11;
      if (!((v13 < 0) ^ v12 | (v13 == 0)))
      {
        do
        {
          [(BWSpringSimulation *)self->_spring update];
          --v13;
        }

        while (v13);
      }

      [(BWSpringSimulation *)self->_spring output];
      v15 = v14;
      v9 = 1.0;
      if (![(BWSpringSimulation *)self->_spring isCompleted])
      {
        v9 = v15;
        if (self->_exponentialSnapFraction > 0.0)
        {
          [(BWSpringSimulation *)self->_spring output];
          if (v16 >= 1.0 - self->_exponentialSnapFraction)
          {
            v9 = 1.0;
          }
        }
      }
    }
  }

  else if (shape)
  {
    if (shape == 1)
    {
      v9 = powf(1.0 - self->_exponentialConvergenceFraction, 1.0 - v6);
    }
  }

  else
  {
    v9 = v6;
  }

  v18 = vabds_f32(targetValue, startValue);
  v19 = self->_startValue;
  if (self->_isRampingUp)
  {
    result = v19 + (v9 * v18);
    if (result >= self->_targetValue)
    {
      result = self->_targetValue;
    }
  }

  else
  {
    result = v19 - (v9 * v18);
    if (result <= self->_targetValue)
    {
      result = self->_targetValue;
    }
  }

  self->_currentValue = result;
  self->_isRamping = v9 < 1.0;
  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWRamp;
  [(BWRamp *)&v3 dealloc];
}

- (BWRamp)initWithName:(id)a3
{
  v6.receiver = self;
  v6.super_class = BWRamp;
  v4 = [(BWRamp *)&v6 init];
  if (v4)
  {
    v4->_name = [a3 copy];
    *&v4->_exponentialConvergenceFraction = vdup_n_s32(0x3F7AE148u);
  }

  return v4;
}

- (void)startRampFrom:(float)a3 to:(float)a4 iterations:(int)a5 shape:(int)a6 exponentialConvergenceFraction:(float)a7
{
  if (a6 == 3)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Use -startSpringRampFrom: for BWRampShapeSpring" userInfo:{0, v7, v8}]);
  }

  if (a3 == a4)
  {
    v9 = 0;
  }

  else
  {
    self->_startValue = a3;
    self->_targetValue = a4;
    self->_durationInIterations = a5;
    self->_shape = a6;
    self->_exponentialConvergenceFraction = a7;
    self->_exponentialSnapFraction = a7;
    self->_isRampingUp = a3 < a4;
    self->_currentIteration = 0;
    v9 = 1;
  }

  self->_currentValue = a3;
  self->_isRamping = v9;
}

- (void)startSpringRampFrom:(float)a3 to:(float)a4 withTension:(float)a5 friction:(float)a6 snapFraction:(float)a7 frameRate:(float)a8
{
  if (a8 <= 0.0)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Invalid frame rate" userInfo:0]);
  }

  if (a3 == a4)
  {
    v11 = 0;
  }

  else
  {
    self->_startValue = a3;
    self->_targetValue = a4;
    self->_shape = 3;
    self->_exponentialSnapFraction = a7;

    v15 = objc_alloc_init(BWSpringSimulation);
    self->_spring = v15;
    [(BWSpringSimulation *)v15 setTension:a5];
    [(BWSpringSimulation *)self->_spring setFriction:a6];
    [(BWSpringSimulation *)self->_spring resetWithInput:1.0 initialOutput:0.0 initialVelocity:0.0 convergedSpeed:0.001];
    v16 = MEMORY[0x1E6960CC0];
    *&self->_springPTS.value = *MEMORY[0x1E6960CC0];
    self->_springPTS.epoch = *(v16 + 16);
    self->_frameRate = a8;
    self->_isRampingUp = a3 < a4;
    self->_currentIteration = 0;
    v11 = 1;
  }

  self->_currentValue = a3;
  self->_isRamping = v11;
}

- (void)reset
{
  *&self->_startValue = 0;
  *&self->_currentValue = 0;
  *&self->_durationInIterations = 0;
  *&self->_exponentialConvergenceFraction = vdup_n_s32(0x3F7AE148u);

  self->_spring = 0;
  self->_isRamping = 0;
  self->_isRampingUp = 0;
}

@end