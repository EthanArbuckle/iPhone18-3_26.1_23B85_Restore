@interface HUAnimationSettings
+ (HUAnimationSettings)settingsWithDuration:(double)a3 curve:(int64_t)a4;
- (HUAnimationSettings)init;
- (double)durationWithSpeed;
- (double)interpolatedProgressForProgress:(double)a3;
- (double)interpolatedProgressForTime:(double)a3;
- (id)_basicAnimationForView:(id)a3 withKeyPath:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)settingsSpedUpByFactor:(double)a3;
- (void)setSpeed:(double)a3;
@end

@implementation HUAnimationSettings

+ (HUAnimationSettings)settingsWithDuration:(double)a3 curve:(int64_t)a4
{
  v6 = objc_alloc_init(a1);
  [v6 setDuration:a3];
  v7 = [MEMORY[0x277CD9EF8] hu_functionWithAnimationCurve:a4];
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[HUAnimationSettings allocWithZone:?]];
  [(HUAnimationSettings *)self duration];
  [(HUAnimationSettings *)v4 setDuration:?];
  v5 = [(HUAnimationSettings *)self timingFunction];
  [(HUAnimationSettings *)v4 setTimingFunction:v5];

  [(HUAnimationSettings *)self speed];
  [(HUAnimationSettings *)v4 setSpeed:?];
  [(HUAnimationSettings *)self delay];
  [(HUAnimationSettings *)v4 setDelay:?];
  [(HUAnimationSettings *)self repeatCount];
  [(HUAnimationSettings *)v4 setRepeatCount:?];
  return v4;
}

- (void)setSpeed:(double)a3
{
  if (a3 <= 0.00000011920929)
  {
    v6 = [MEMORY[0x277CCA890] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"HUAnimationSettings.m" lineNumber:78 description:@"Speed must be a non-zero value"];
  }

  self->_speed = a3;
}

- (double)durationWithSpeed
{
  [(HUAnimationSettings *)self duration];
  v4 = v3;
  [(HUAnimationSettings *)self speed];
  return v4 / v5;
}

- (double)interpolatedProgressForProgress:(double)a3
{
  v5 = [(HUAnimationSettings *)self timingFunction];
  if (v5)
  {
    v6 = [(HUAnimationSettings *)self timingFunction];
    *&v7 = a3;
    [v6 _solveForInput:v7];
    a3 = v8;
  }

  return a3;
}

- (double)interpolatedProgressForTime:(double)a3
{
  [(HUAnimationSettings *)self duration];
  v6 = v5;
  v7 = 1.0;
  if (v6 >= 0.00000011920929)
  {
    [(HUAnimationSettings *)self durationWithSpeed];
    v7 = a3 / v8;
  }

  [(HUAnimationSettings *)self interpolatedProgressForProgress:v7];
  return result;
}

- (id)_basicAnimationForView:(id)a3 withKeyPath:(id)a4
{
  v5 = [MEMORY[0x277CD9E10] animationWithKeyPath:a4];
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

- (id)settingsSpedUpByFactor:(double)a3
{
  v4 = [(HUAnimationSettings *)self copy];
  [v4 speed];
  [v4 setSpeed:v5 * a3];

  return v4;
}

@end