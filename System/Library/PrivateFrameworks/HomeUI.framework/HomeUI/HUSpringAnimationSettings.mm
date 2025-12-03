@interface HUSpringAnimationSettings
+ (id)criticallyDampedSpringSettings;
- (double)damping;
- (double)delay;
- (double)duration;
- (double)initialVelocity;
- (double)interpolatedProgressForProgress:(double)progress;
- (double)mass;
- (double)speed;
- (double)stiffness;
- (float)repeatCount;
- (id)_basicAnimationForView:(id)view withKeyPath:(id)path;
- (id)_initWithSpringAnimation:(id)animation completionEpsilon:(double)epsilon;
- (id)copyWithZone:(_NSZone *)zone;
- (id)timingFunction;
- (void)_updateDuration;
- (void)setDamping:(double)damping;
- (void)setDelay:(double)delay;
- (void)setInitialVelocity:(double)velocity;
- (void)setMass:(double)mass;
- (void)setRepeatCount:(float)count;
- (void)setSpeed:(double)speed;
- (void)setStiffness:(double)stiffness;
- (void)setTimingFunction:(id)function;
@end

@implementation HUSpringAnimationSettings

- (id)_initWithSpringAnimation:(id)animation completionEpsilon:(double)epsilon
{
  animationCopy = animation;
  v11.receiver = self;
  v11.super_class = HUSpringAnimationSettings;
  v7 = [(HUAnimationSettings *)&v11 init];
  if (v7)
  {
    if (animationCopy)
    {
      animation = [animationCopy copy];
    }

    else
    {
      animation = [MEMORY[0x277CD9FA0] animation];
    }

    v9 = animation;
    objc_storeStrong(&v7->_springAnimation, animation);

    [(HUSpringAnimationSettings *)v7 setCompletionEpsilon:epsilon];
  }

  return v7;
}

+ (id)criticallyDampedSpringSettings
{
  v2 = objc_alloc_init(self);
  [v2 setMass:3.0];
  [v2 setStiffness:1000.0];
  [v2 setDamping:500.0];

  return v2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [HUSpringAnimationSettings allocWithZone:zone];
  springAnimation = [(HUSpringAnimationSettings *)self springAnimation];
  [(HUSpringAnimationSettings *)self completionEpsilon];
  v6 = [(HUSpringAnimationSettings *)v4 _initWithSpringAnimation:springAnimation completionEpsilon:?];

  return v6;
}

- (id)timingFunction
{
  springAnimation = [(HUSpringAnimationSettings *)self springAnimation];
  timingFunction = [springAnimation timingFunction];

  return timingFunction;
}

- (void)setTimingFunction:(id)function
{
  functionCopy = function;
  springAnimation = [(HUSpringAnimationSettings *)self springAnimation];
  [springAnimation setTimingFunction:functionCopy];
}

- (double)mass
{
  springAnimation = [(HUSpringAnimationSettings *)self springAnimation];
  [springAnimation mass];
  v4 = v3;

  return v4;
}

- (void)setMass:(double)mass
{
  springAnimation = [(HUSpringAnimationSettings *)self springAnimation];
  [springAnimation setMass:mass];

  [(HUSpringAnimationSettings *)self _updateDuration];
}

- (double)stiffness
{
  springAnimation = [(HUSpringAnimationSettings *)self springAnimation];
  [springAnimation stiffness];
  v4 = v3;

  return v4;
}

- (void)setStiffness:(double)stiffness
{
  springAnimation = [(HUSpringAnimationSettings *)self springAnimation];
  [springAnimation setStiffness:stiffness];

  [(HUSpringAnimationSettings *)self _updateDuration];
}

- (double)damping
{
  springAnimation = [(HUSpringAnimationSettings *)self springAnimation];
  [springAnimation damping];
  v4 = v3;

  return v4;
}

- (void)setDamping:(double)damping
{
  springAnimation = [(HUSpringAnimationSettings *)self springAnimation];
  [springAnimation setDamping:damping];

  [(HUSpringAnimationSettings *)self _updateDuration];
}

- (double)initialVelocity
{
  springAnimation = [(HUSpringAnimationSettings *)self springAnimation];
  [springAnimation velocity];
  v4 = v3;

  return v4;
}

- (void)setInitialVelocity:(double)velocity
{
  springAnimation = [(HUSpringAnimationSettings *)self springAnimation];
  [springAnimation setVelocity:velocity];

  [(HUSpringAnimationSettings *)self _updateDuration];
}

- (double)duration
{
  springAnimation = [(HUSpringAnimationSettings *)self springAnimation];
  [springAnimation duration];
  v4 = v3;

  return v4;
}

- (double)delay
{
  springAnimation = [(HUSpringAnimationSettings *)self springAnimation];
  [springAnimation beginTime];
  v4 = v3;

  return v4;
}

- (void)setDelay:(double)delay
{
  springAnimation = [(HUSpringAnimationSettings *)self springAnimation];
  [springAnimation setBeginTime:delay];
}

- (double)speed
{
  springAnimation = [(HUSpringAnimationSettings *)self springAnimation];
  [springAnimation speed];
  v4 = v3;

  return v4;
}

- (void)setSpeed:(double)speed
{
  if (speed <= 0.00000011920929)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HUAnimationSettings.m" lineNumber:230 description:@"Speed must be non-zero"];
  }

  springAnimation = [(HUSpringAnimationSettings *)self springAnimation];
  speedCopy = speed;
  *&v7 = speedCopy;
  [springAnimation setSpeed:v7];

  [(HUSpringAnimationSettings *)self _updateDuration];
}

- (float)repeatCount
{
  springAnimation = [(HUSpringAnimationSettings *)self springAnimation];
  [springAnimation repeatCount];
  v4 = v3;

  return v4;
}

- (void)setRepeatCount:(float)count
{
  springAnimation = [(HUSpringAnimationSettings *)self springAnimation];
  *&v4 = count;
  [springAnimation setRepeatCount:v4];
}

- (double)interpolatedProgressForProgress:(double)progress
{
  springAnimation = [(HUSpringAnimationSettings *)self springAnimation];
  *&v5 = progress;
  [springAnimation _solveForInput:v5];
  v7 = v6;

  return v7;
}

- (void)_updateDuration
{
  springAnimation = [(HUSpringAnimationSettings *)self springAnimation];
  [springAnimation durationForEpsilon:self->_completionEpsilon];
  v5 = v4;

  springAnimation2 = [(HUSpringAnimationSettings *)self springAnimation];
  [springAnimation2 setDuration:v5];
}

- (id)_basicAnimationForView:(id)view withKeyPath:(id)path
{
  pathCopy = path;
  springAnimation = [(HUSpringAnimationSettings *)self springAnimation];
  v7 = [springAnimation copy];

  [v7 setKeyPath:pathCopy];

  return v7;
}

@end