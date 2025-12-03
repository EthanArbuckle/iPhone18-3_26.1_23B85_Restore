@interface HUDynamicStateAnimationApplier
- (BOOL)start;
- (HUAnimationSettings)animationSettings;
- (HUDynamicStateAnimationApplier)initWithAnimationSettings:(id)settings initialProgress:(double)progress progressInputBlock:(id)block;
- (double)effectiveInputProgressForBlock:(id)block;
- (void)updateProgress:(double)progress;
@end

@implementation HUDynamicStateAnimationApplier

- (HUDynamicStateAnimationApplier)initWithAnimationSettings:(id)settings initialProgress:(double)progress progressInputBlock:(id)block
{
  settingsCopy = settings;
  v13.receiver = self;
  v13.super_class = HUDynamicStateAnimationApplier;
  v9 = [(HUDisplayLinkApplier *)&v13 initWithProgressInputBlock:block];
  if (v9)
  {
    v10 = [settingsCopy copy];
    animationSettings = v9->_animationSettings;
    v9->_animationSettings = v10;

    v9->_initialProgress = progress;
  }

  return v9;
}

- (HUAnimationSettings)animationSettings
{
  v2 = [(HUAnimationSettings *)self->_animationSettings copy];

  return v2;
}

- (BOOL)start
{
  v5.receiver = self;
  v5.super_class = HUDynamicStateAnimationApplier;
  start = [(HUDisplayLinkApplier *)&v5 start];
  if (start)
  {
    [(HUDynamicStateAnimationApplier *)self setLastTargetChangeTime:CACurrentMediaTime()];
  }

  return start;
}

- (void)updateProgress:(double)progress
{
  [(HUDynamicStateAnimationApplier *)self setHasUpdatedProgress:1];
  v5.receiver = self;
  v5.super_class = HUDynamicStateAnimationApplier;
  [(HUApplier *)&v5 updateProgress:progress];
}

- (double)effectiveInputProgressForBlock:(id)block
{
  v4 = (*(block + 2))(block, a2);
  if ([(HUDynamicStateAnimationApplier *)self hasUpdatedProgress])
  {
    [(HUDynamicStateAnimationApplier *)self targetProgress];
    if (vabdd_f64(v5, v4) > 0.00000011920929)
    {
      [(HUDynamicStateAnimationApplier *)self preInterpolatedProgress];
      [(HUDynamicStateAnimationApplier *)self setInitialProgress:?];
      [(HUDynamicStateAnimationApplier *)self setTargetProgress:v4];
      [(HUDynamicStateAnimationApplier *)self setLastTargetChangeTime:CACurrentMediaTime()];
    }

    [(HUDynamicStateAnimationApplier *)self initialProgress];
    v7 = vabdd_f64(v4, v6);
    if (v7 >= 0.001)
    {
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __65__HUDynamicStateAnimationApplier_effectiveInputProgressForBlock___block_invoke;
      v19[3] = &unk_277DBC380;
      v19[4] = self;
      *&v19[5] = v4;
      v8 = _Block_copy(v19);
      animationSettings = [(HUDynamicStateAnimationApplier *)self animationSettings];
      [animationSettings durationWithSpeed];
      v11 = v7 * v10;

      v12 = CACurrentMediaTime();
      [(HUDynamicStateAnimationApplier *)self lastTargetChangeTime];
      v14 = (v12 - v13) / v11;
      v8[2](v8, v14);
      [(HUDynamicStateAnimationApplier *)self setPreInterpolatedProgress:?];
      animationSettings2 = [(HUDynamicStateAnimationApplier *)self animationSettings];
      [animationSettings2 interpolatedProgressForProgress:v14];
      v17 = v16;

      v4 = (v8[2])(v8, v17);
    }

    return v4;
  }

  else
  {
    [(HUDynamicStateAnimationApplier *)self setTargetProgress:v4];
    [(HUDynamicStateAnimationApplier *)self initialProgress];
    [(HUDynamicStateAnimationApplier *)self setPreInterpolatedProgress:?];
    [(HUDynamicStateAnimationApplier *)self setLastTargetChangeTime:CACurrentMediaTime()];

    [(HUDynamicStateAnimationApplier *)self initialProgress];
  }

  return result;
}

@end