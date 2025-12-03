@interface HUAnimationSettings
+ (HUAnimationSettings)settingsWithDuration:(double)duration curve:(int64_t)curve;
- (HUAnimationSettings)init;
- (double)durationWithSpeed;
- (double)interpolatedProgressForProgress:(double)progress;
- (double)interpolatedProgressForTime:(double)time;
- (id)_basicAnimationForView:(id)view withKeyPath:(id)path;
- (id)copyWithZone:(_NSZone *)zone;
- (id)settingsSpedUpByFactor:(double)factor;
- (void)setSpeed:(double)speed;
@end

@implementation HUAnimationSettings

+ (HUAnimationSettings)settingsWithDuration:(double)duration curve:(int64_t)curve
{
  v6 = objc_alloc_init(self);
  [v6 setDuration:duration];
  v7 = [MEMORY[0x277CD9EF8] hu_functionWithAnimationCurve:curve];
  [v6 setTimingFunction:v7];

  return v6;
}

- (HUAnimationSettings)init
{
  v3.receiver = self;
  v3.super_class = HUAnimationSettings;
  result = [(HUAnimationSettings *)&v3 init];
  if (result)
  {
    result->_duration = 0.25;
    result->_speed = 1.0;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[HUAnimationSettings allocWithZone:?]];
  [(HUAnimationSettings *)self duration];
  [(HUAnimationSettings *)v4 setDuration:?];
  timingFunction = [(HUAnimationSettings *)self timingFunction];
  [(HUAnimationSettings *)v4 setTimingFunction:timingFunction];

  [(HUAnimationSettings *)self speed];
  [(HUAnimationSettings *)v4 setSpeed:?];
  [(HUAnimationSettings *)self delay];
  [(HUAnimationSettings *)v4 setDelay:?];
  [(HUAnimationSettings *)self repeatCount];
  [(HUAnimationSettings *)v4 setRepeatCount:?];
  return v4;
}

- (void)setSpeed:(double)speed
{
  if (speed <= 0.00000011920929)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HUAnimationSettings.m" lineNumber:78 description:@"Speed must be a non-zero value"];
  }

  self->_speed = speed;
}

- (double)durationWithSpeed
{
  [(HUAnimationSettings *)self duration];
  v4 = v3;
  [(HUAnimationSettings *)self speed];
  return v4 / v5;
}

- (double)interpolatedProgressForProgress:(double)progress
{
  timingFunction = [(HUAnimationSettings *)self timingFunction];
  if (timingFunction)
  {
    timingFunction2 = [(HUAnimationSettings *)self timingFunction];
    *&v7 = progress;
    [timingFunction2 _solveForInput:v7];
    progress = v8;
  }

  return progress;
}

- (double)interpolatedProgressForTime:(double)time
{
  [(HUAnimationSettings *)self duration];
  v6 = v5;
  v7 = 1.0;
  if (v6 >= 0.00000011920929)
  {
    [(HUAnimationSettings *)self durationWithSpeed];
    v7 = time / v8;
  }

  [(HUAnimationSettings *)self interpolatedProgressForProgress:v7];
  return result;
}

- (id)_basicAnimationForView:(id)view withKeyPath:(id)path
{
  v5 = [MEMORY[0x277CD9E10] animationWithKeyPath:path];
  [(HUAnimationSettings *)self duration];
  [v5 setDuration:?];
  [(HUAnimationSettings *)self delay];
  [v5 setBeginTime:?];
  [(HUAnimationSettings *)self speed];
  *&v6 = v6;
  [v5 setSpeed:v6];
  [(HUAnimationSettings *)self repeatCount];
  [v5 setRepeatCount:?];

  return v5;
}

- (id)settingsSpedUpByFactor:(double)factor
{
  v4 = [(HUAnimationSettings *)self copy];
  [v4 speed];
  [v4 setSpeed:v5 * factor];

  return v4;
}

@end