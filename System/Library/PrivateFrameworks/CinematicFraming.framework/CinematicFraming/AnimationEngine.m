@interface AnimationEngine
- (AnimationEngine)initWithInitialPosition:(float)a3;
- (void)_resetAnimations;
- (void)animateWithDuration:(double)a3 toTarget:(float)a4 options:(unint64_t)a5 atTime:(id *)a6;
- (void)driveAnimationAtTime:(id *)a3 withConstraints:(AnimationEngineAnimationConstraints *)a4 withMultiplier:(float)a5;
@end

@implementation AnimationEngine

- (AnimationEngine)initWithInitialPosition:(float)a3
{
  v8.receiver = self;
  v8.super_class = AnimationEngine;
  v4 = [(AnimationEngine *)&v8 init];
  v5 = v4;
  if (v4)
  {
    *(v4 + 20) = a3;
    *(v4 + 21) = 0;
    v6 = MEMORY[0x277CC0898];
    *(v4 + 36) = *MEMORY[0x277CC0898];
    *(v4 + 52) = *(v6 + 16);
    [v4 _resetAnimations];
  }

  return v5;
}

- (void)animateWithDuration:(double)a3 toTarget:(float)a4 options:(unint64_t)a5 atTime:(id *)a6
{
  [(AnimationEngine *)self _resetAnimations];
  v11 = *&a6->var0;
  *&self->_startTime.flags = a6->var3;
  *(&self->_targetPosition + 1) = v11;
  self->_animationDuration = a3;
  self->_targetPosition = a4;
  self->_animationOptions = a5;
  *&time1.value = *(&self->_startTime.epoch + 4);
  time1.epoch = *&self->_lastAnimationDriveTime.flags;
  v13 = **&MEMORY[0x277CC0898];
  if (!CMTimeCompare(&time1, &v13))
  {
    v12 = *&a6->var0;
    *&self->_lastAnimationDriveTime.flags = a6->var3;
    *(&self->_startTime.epoch + 4) = v12;
  }
}

- (void)driveAnimationAtTime:(id *)a3 withConstraints:(AnimationEngineAnimationConstraints *)a4 withMultiplier:(float)a5
{
  time = *a3;
  Seconds = CMTimeGetSeconds(&time);
  *&time.value = *(&self->_startTime.epoch + 4);
  time.epoch = *&self->_lastAnimationDriveTime.flags;
  v10 = CMTimeGetSeconds(&time);
  if (Seconds - v10 > 0.1)
  {
    v11 = 0.1;
  }

  else
  {
    v11 = Seconds - v10;
  }

  if (Seconds - v10 > 0.1 || vabdd_f64(Seconds, v10) >= 0.0001)
  {
    time = *(&self->_targetPosition + 1);
    v22 = **&MEMORY[0x277CC0898];
    if (CMTimeCompare(&time, &v22))
    {
      if ((self->_animationOptions & 6) != 0)
      {
        v12 = self->_animationDuration - v11;
        if (v12 < 0.00100000005)
        {
          v12 = 0.00100000005;
        }

        v13 = (self->_targetPosition - self->_position) / v12 * a5;
        v14 = (v13 - self->_velocity) / v11;
      }

      else
      {
        v14 = 0.0;
      }

      v15 = self->_velocity + ApplyMotionConstraints(v14, a4->var0.var0, a4->var0.var1) * v11;
      v16 = ApplyMotionConstraints(v15, a4->var1.var0, a4->var1.var1);
      position = self->_position;
      v18 = position + v16 * v11;
      self->_position = v18;
      v19 = ApplyMotionConstraints(v18, a4->var2.var0, a4->var2.var1);
      v20 = (v19 - position) / v11;
      self->_position = v19;
      self->_velocity = v20;
    }

    v21 = *&a3->var0;
    *&self->_lastAnimationDriveTime.flags = a3->var3;
    *(&self->_startTime.epoch + 4) = v21;
  }
}

- (void)_resetAnimations
{
  v2 = MEMORY[0x277CC0898];
  *(&self->_targetPosition + 1) = *MEMORY[0x277CC0898];
  *&self->_startTime.flags = *(v2 + 16);
  self->_animationDuration = 0.0;
}

@end