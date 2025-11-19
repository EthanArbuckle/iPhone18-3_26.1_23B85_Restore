@interface HUSpringAnimationSettings
+ (id)criticallyDampedSpringSettings;
- (double)damping;
- (double)delay;
- (double)duration;
- (double)initialVelocity;
- (double)interpolatedProgressForProgress:(double)a3;
- (double)mass;
- (double)speed;
- (double)stiffness;
- (float)repeatCount;
- (id)_basicAnimationForView:(id)a3 withKeyPath:(id)a4;
- (id)_initWithSpringAnimation:(id)a3 completionEpsilon:(double)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)timingFunction;
- (void)_updateDuration;
- (void)setDamping:(double)a3;
- (void)setDelay:(double)a3;
- (void)setInitialVelocity:(double)a3;
- (void)setMass:(double)a3;
- (void)setRepeatCount:(float)a3;
- (void)setSpeed:(double)a3;
- (void)setStiffness:(double)a3;
- (void)setTimingFunction:(id)a3;
@end

@implementation HUSpringAnimationSettings

- (id)_initWithSpringAnimation:(id)a3 completionEpsilon:(double)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = HUSpringAnimationSettings;
  v7 = [(HUAnimationSettings *)&v11 init];
  if (v7)
  {
    if (v6)
    {
      v8 = [v6 copy];
    }

    else
    {
      v8 = [MEMORY[0x277CD9FA0] animation];
    }

    v9 = v8;
    objc_storeStrong(&v7->_springAnimation, v8);

    [(HUSpringAnimationSettings *)v7 setCompletionEpsilon:a4];
  }

  return v7;
}

+ (id)criticallyDampedSpringSettings
{
  v2 = objc_alloc_init(a1);
  [v2 setMass:3.0];
  [v2 setStiffness:1000.0];
  [v2 setDamping:500.0];

  return v2;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [HUSpringAnimationSettings allocWithZone:a3];
  v5 = [(HUSpringAnimationSettings *)self springAnimation];
  [(HUSpringAnimationSettings *)self completionEpsilon];
  v6 = [(HUSpringAnimationSettings *)v4 _initWithSpringAnimation:v5 completionEpsilon:?];

  return v6;
}

- (id)timingFunction
{
  v2 = [(HUSpringAnimationSettings *)self springAnimation];
  v3 = [v2 timingFunction];

  return v3;
}

- (void)setTimingFunction:(id)a3
{
  v4 = a3;
  v5 = [(HUSpringAnimationSettings *)self springAnimation];
  [v5 setTimingFunction:v4];
}

- (double)mass
{
  v2 = [(HUSpringAnimationSettings *)self springAnimation];
  [v2 mass];
  v4 = v3;

  return v4;
}

- (void)setMass:(double)a3
{
  v5 = [(HUSpringAnimationSettings *)self springAnimation];
  [v5 setMass:a3];

  [(HUSpringAnimationSettings *)self _updateDuration];
}

- (double)stiffness
{
  v2 = [(HUSpringAnimationSettings *)self springAnimation];
  [v2 stiffness];
  v4 = v3;

  return v4;
}

- (void)setStiffness:(double)a3
{
  v5 = [(HUSpringAnimationSettings *)self springAnimation];
  [v5 setStiffness:a3];

  [(HUSpringAnimationSettings *)self _updateDuration];
}

- (double)damping
{
  v2 = [(HUSpringAnimationSettings *)self springAnimation];
  [v2 damping];
  v4 = v3;

  return v4;
}

- (void)setDamping:(double)a3
{
  v5 = [(HUSpringAnimationSettings *)self springAnimation];
  [v5 setDamping:a3];

  [(HUSpringAnimationSettings *)self _updateDuration];
}

- (double)initialVelocity
{
  v2 = [(HUSpringAnimationSettings *)self springAnimation];
  [v2 velocity];
  v4 = v3;

  return v4;
}

- (void)setInitialVelocity:(double)a3
{
  v5 = [(HUSpringAnimationSettings *)self springAnimation];
  [v5 setVelocity:a3];

  [(HUSpringAnimationSettings *)self _updateDuration];
}

- (double)duration
{
  v2 = [(HUSpringAnimationSettings *)self springAnimation];
  [v2 duration];
  v4 = v3;

  return v4;
}

- (double)delay
{
  v2 = [(HUSpringAnimationSettings *)self springAnimation];
  [v2 beginTime];
  v4 = v3;

  return v4;
}

- (void)setDelay:(double)a3
{
  v4 = [(HUSpringAnimationSettings *)self springAnimation];
  [v4 setBeginTime:a3];
}

- (double)speed
{
  v2 = [(HUSpringAnimationSettings *)self springAnimation];
  [v2 speed];
  v4 = v3;

  return v4;
}

- (void)setSpeed:(double)a3
{
  if (a3 <= 0.00000011920929)
  {
    v9 = [MEMORY[0x277CCA890] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"HUAnimationSettings.m" lineNumber:230 description:@"Speed must be non-zero"];
  }

  v6 = [(HUSpringAnimationSettings *)self springAnimation];
  v5 = a3;
  *&v7 = v5;
  [v6 setSpeed:v7];

  [(HUSpringAnimationSettings *)self _updateDuration];
}

- (float)repeatCount
{
  v2 = [(HUSpringAnimationSettings *)self springAnimation];
  [v2 repeatCount];
  v4 = v3;

  return v4;
}

- (void)setRepeatCount:(float)a3
{
  v5 = [(HUSpringAnimationSettings *)self springAnimation];
  *&v4 = a3;
  [v5 setRepeatCount:v4];
}

- (double)interpolatedProgressForProgress:(double)a3
{
  v4 = [(HUSpringAnimationSettings *)self springAnimation];
  *&v5 = a3;
  [v4 _solveForInput:v5];
  v7 = v6;

  return v7;
}

- (void)_updateDuration
{
  v3 = [(HUSpringAnimationSettings *)self springAnimation];
  [v3 durationForEpsilon:self->_completionEpsilon];
  v5 = v4;

  v6 = [(HUSpringAnimationSettings *)self springAnimation];
  [v6 setDuration:v5];
}

- (id)_basicAnimationForView:(id)a3 withKeyPath:(id)a4
{
  v5 = a4;
  v6 = [(HUSpringAnimationSettings *)self springAnimation];
  v7 = [v6 copy];

  [v7 setKeyPath:v5];

  return v7;
}

@end