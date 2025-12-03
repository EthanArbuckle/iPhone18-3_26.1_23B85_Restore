@interface CBStopsBasedBrightnessRamp
- (CBStopsBasedBrightnessRamp)initWithStartingBrightness:(float)brightness targetBrightness:(float)targetBrightness rampSpeed:(float)speed andCurrentTime:(float)time;
- (int)updateRampWithProgress:(float)progress;
@end

@implementation CBStopsBasedBrightnessRamp

- (CBStopsBasedBrightnessRamp)initWithStartingBrightness:(float)brightness targetBrightness:(float)targetBrightness rampSpeed:(float)speed andCurrentTime:(float)time
{
  selfCopy = self;
  v14 = a2;
  brightnessCopy = brightness;
  targetBrightnessCopy = targetBrightness;
  speedCopy = speed;
  timeCopy = time;
  v9.receiver = self;
  v9.super_class = CBStopsBasedBrightnessRamp;
  selfCopy = [(CBStopsBasedBrightnessRamp *)&v9 init];
  if (!selfCopy)
  {
    return 0;
  }

  if (brightnessCopy == 0.0 || speedCopy == 0.0 || brightnessCopy == targetBrightnessCopy)
  {
    MEMORY[0x1E69E5920](selfCopy);
    selfCopy = 0;
    return 0;
  }

  else
  {
    selfCopy->_start = brightnessCopy;
    selfCopy->_target = targetBrightnessCopy;
    selfCopy->_current = brightnessCopy;
    selfCopy->_rampSpeed = speedCopy;
    v6 = log2f(selfCopy->_target / selfCopy->_start);
    v7 = fabs(v6) * selfCopy->_rampSpeed;
    selfCopy->_rampTime = v7;
    selfCopy->_startTime = timeCopy;
    selfCopy->_timeOfLastUpdate = timeCopy;
    return selfCopy;
  }
}

- (int)updateRampWithProgress:(float)progress
{
  if (progress >= 1.0)
  {
    self->_current = self->_target;
    return 1;
  }

  else
  {
    v6 = progress * self->_rampTime;
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