@interface CBLuxRamp
+ (id)luxRampStateToString:(int)string;
- (BOOL)shouldRampFromStartLux:(float)lux toTargetLux:(float)targetLux;
- (CBLuxRamp)initWithPolicy:(id)policy andLuxShape:(id)shape;
- (float)targetLux;
- (int)updateRampWithProgress:(float)progress;
- (void)dealloc;
- (void)forceLux:(float)lux;
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

- (CBLuxRamp)initWithPolicy:(id)policy andLuxShape:(id)shape
{
  selfCopy = self;
  v10 = a2;
  policyCopy = policy;
  shapeCopy = shape;
  v7.receiver = self;
  v7.super_class = CBLuxRamp;
  selfCopy = [(CBLuxRamp *)&v7 init];
  if (!selfCopy)
  {
    return 0;
  }

  selfCopy->_lux = NAN;
  selfCopy->_startTime = 0.0;
  selfCopy->_duration = 0.0;
  selfCopy->_targetLux = NAN;
  selfCopy->_startLux = NAN;
  selfCopy->_state = 1;
  v4 = MEMORY[0x1E69E5928](shapeCopy);
  selfCopy->_shape = v4;
  v5 = MEMORY[0x1E69E5928](policyCopy);
  selfCopy->_policy = v5;
  return selfCopy;
}

- (void)dealloc
{
  selfCopy = self;
  v4 = a2;
  MEMORY[0x1E69E5920](self->_shape);
  *&v2 = MEMORY[0x1E69E5920](selfCopy->_policy).n128_u64[0];
  v3.receiver = selfCopy;
  v3.super_class = CBLuxRamp;
  [(CBLuxRamp *)&v3 dealloc];
}

- (void)forceLux:(float)lux
{
  self->_lux = lux;
  self->_targetLux = lux;
  self->_startLux = lux;
  self->_duration = 0.0;
}

- (int)updateRampWithProgress:(float)progress
{
  if (![(CBLuxRamp *)self rampIsRunning])
  {
    return self->_state;
  }

  *&v3 = progress;
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
    v8 = progress >= 1.0;
  }

  if (!v8)
  {
    return 0;
  }

  self->_startTime = 0.0;
  self->_state = 1;
  return 3;
}

- (BOOL)shouldRampFromStartLux:(float)lux toTargetLux:(float)targetLux
{
  if (float_equal(lux, targetLux))
  {
    return 0;
  }

  if ([(CBLuxRamp *)self rampIsRunning]&& float_equal(targetLux, self->_targetLux))
  {
    return 0;
  }

  if ([(CBLuxRamp *)self rampIsRunning]&& ((targetLux - self->_lux) * (self->_targetLux - self->_lux)) < 0.0)
  {
    return 1;
  }

  *&v4 = self->_lux;
  if (targetLux <= lux)
  {
    [(CBLuxRampPolicy *)self->_policy rampDownLuxDeltaThresholdFor:v4];
  }

  else
  {
    [(CBLuxRampPolicy *)self->_policy rampUpLuxDeltaThresholdFor:v4];
  }

  return vabds_f32(targetLux, lux) >= v5;
}

+ (id)luxRampStateToString:(int)string
{
  switch(string)
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