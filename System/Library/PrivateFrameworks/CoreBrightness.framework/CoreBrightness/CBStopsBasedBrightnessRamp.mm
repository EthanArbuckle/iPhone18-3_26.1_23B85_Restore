@interface CBStopsBasedBrightnessRamp
- (CBStopsBasedBrightnessRamp)initWithStartingBrightness:(float)a3 targetBrightness:(float)a4 rampSpeed:(float)a5 andCurrentTime:(float)a6;
- (int)updateRampWithProgress:(float)a3;
@end

@implementation CBStopsBasedBrightnessRamp

- (CBStopsBasedBrightnessRamp)initWithStartingBrightness:(float)a3 targetBrightness:(float)a4 rampSpeed:(float)a5 andCurrentTime:(float)a6
{
  v15 = self;
  v14 = a2;
  v13 = a3;
  v12 = a4;
  v11 = a5;
  v10 = a6;
  v9.receiver = self;
  v9.super_class = CBStopsBasedBrightnessRamp;
  v15 = [(CBStopsBasedBrightnessRamp *)&v9 init];
  if (!v15)
  {
    return 0;
  }

  if (v13 == 0.0 || v11 == 0.0 || v13 == v12)
  {
    MEMORY[0x1E69E5920](v15);
    v15 = 0;
    return 0;
  }

  else
  {
    v15->_start = v13;
    v15->_target = v12;
    v15->_current = v13;
    v15->_rampSpeed = v11;
    v6 = log2f(v15->_target / v15->_start);
    v7 = fabs(v6) * v15->_rampSpeed;
    v15->_rampTime = v7;
    v15->_startTime = v10;
    v15->_timeOfLastUpdate = v10;
    return v15;
  }
}

- (int)updateRampWithProgress:(float)a3
{
  if (a3 >= 1.0)
  {
    self->_current = self->_target;
    return 1;
  }

  else
  {
    v6 = a3 * self->_rampTime;
    self->_timeOfLastUpdate = self->_startTime + v6;
    v5 = 2.0;
    if (self->_start > self->_target)
    {
      v5 = 1.0 / 2.0;
    }

    start = self->_start;
    self->_current = start * powf(v5, v6 / self->_rampSpeed);
    return 0;
  }
}

@end