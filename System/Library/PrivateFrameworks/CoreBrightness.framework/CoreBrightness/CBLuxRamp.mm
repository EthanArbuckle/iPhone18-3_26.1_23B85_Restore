@interface CBLuxRamp
+ (id)luxRampStateToString:(int)a3;
- (BOOL)shouldRampFromStartLux:(float)a3 toTargetLux:(float)a4;
- (CBLuxRamp)initWithPolicy:(id)a3 andLuxShape:(id)a4;
- (float)targetLux;
- (int)updateRampWithProgress:(float)a3;
- (void)dealloc;
- (void)forceLux:(float)a3;
@end

@implementation CBLuxRamp

- (float)targetLux
{
  if ([(CBLuxRamp *)self rampIsRunning])
  {
    return self->_targetLux;
  }

  else
  {
    return self->_lux;
  }
}

- (CBLuxRamp)initWithPolicy:(id)a3 andLuxShape:(id)a4
{
  v11 = self;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  v7.receiver = self;
  v7.super_class = CBLuxRamp;
  v11 = [(CBLuxRamp *)&v7 init];
  if (!v11)
  {
    return 0;
  }

  v11->_lux = NAN;
  v11->_startTime = 0.0;
  v11->_duration = 0.0;
  v11->_targetLux = NAN;
  v11->_startLux = NAN;
  v11->_state = 1;
  v4 = MEMORY[0x1E69E5928](v8);
  v11->_shape = v4;
  v5 = MEMORY[0x1E69E5928](v9);
  v11->_policy = v5;
  return v11;
}

- (void)dealloc
{
  v5 = self;
  v4 = a2;
  MEMORY[0x1E69E5920](self->_shape);
  *&v2 = MEMORY[0x1E69E5920](v5->_policy).n128_u64[0];
  v3.receiver = v5;
  v3.super_class = CBLuxRamp;
  [(CBLuxRamp *)&v3 dealloc];
}

- (void)forceLux:(float)a3
{
  self->_lux = a3;
  self->_targetLux = a3;
  self->_startLux = a3;
  self->_duration = 0.0;
}

- (int)updateRampWithProgress:(float)a3
{
  if (![(CBLuxRamp *)self rampIsRunning])
  {
    return self->_state;
  }

  *&v3 = a3;
  *&v4 = self->_startLux;
  *&v5 = self->_targetLux;
  [(CBCurveShape *)self->_shape interpolateProgress:v3 from:v4 toEnd:v5];
  self->_lux = v6;
  if (self->_targetLux <= self->_startLux)
  {
    v9 = self->_lux <= self->_targetLux;
  }

  else
  {
    v9 = self->_lux >= self->_targetLux;
  }

  v8 = 1;
  if (!v9)
  {
    v8 = a3 >= 1.0;
  }

  if (!v8)
  {
    return 0;
  }

  self->_startTime = 0.0;
  self->_state = 1;
  return 3;
}

- (BOOL)shouldRampFromStartLux:(float)a3 toTargetLux:(float)a4
{
  if (float_equal(a3, a4))
  {
    return 0;
  }

  if ([(CBLuxRamp *)self rampIsRunning]&& float_equal(a4, self->_targetLux))
  {
    return 0;
  }

  if ([(CBLuxRamp *)self rampIsRunning]&& ((a4 - self->_lux) * (self->_targetLux - self->_lux)) < 0.0)
  {
    return 1;
  }

  *&v4 = self->_lux;
  if (a4 <= a3)
  {
    [(CBLuxRampPolicy *)self->_policy rampDownLuxDeltaThresholdFor:v4];
  }

  else
  {
    [(CBLuxRampPolicy *)self->_policy rampUpLuxDeltaThresholdFor:v4];
  }

  return vabds_f32(a4, a3) >= v5;
}

+ (id)luxRampStateToString:(int)a3
{
  switch(a3)
  {
    case 0:
      return @"Running";
    case 1:
      return @"Idle";
    case 2:
      return @"Started";
    case 3:
      return @"Finished";
  }

  return @"Unknown";
}

@end