@interface FBSSceneTransitionContextCore
- (BKSAnimationFenceHandle)animationFence;
- (BOOL)allowCPUThrottling;
- (BOOL)isBarrier;
- (BOOL)isRunningBoardAssertionDisabled;
- (BSAnimationSettings)animationSettings;
- (BSProcessHandle)originatingProcess;
- (FBProcessExecutionContext)executionContext;
- (FBSceneUpdateContext)updateContext;
- (FBWatchdogTransitionContext)watchdogTransitionContext;
- (NSError)error;
- (RBSProcessHandle)clientProcessHandle;
- (void)setAllowCPUThrottling:(BOOL)a3;
- (void)setBarrier:(BOOL)a3;
- (void)setRunningBoardAssertionDisabled:(BOOL)a3;
@end

@implementation FBSSceneTransitionContextCore

- (BKSAnimationFenceHandle)animationFence
{
  v4 = objc_opt_class();

  return [(FBSSceneTransitionContextCore *)self valueForProperty:a2 expectedClass:v4];
}

- (BOOL)isRunningBoardAssertionDisabled
{
  v2 = [(FBSSceneTransitionContextCore *)self valueForProperty:a2 expectedClass:objc_opt_class()];
  v3 = [v2 BOOLValue];

  return v3;
}

- (FBSceneUpdateContext)updateContext
{
  v4 = NSClassFromString(&cfstr_Fbsceneupdatec.isa);

  return [(FBSSceneTransitionContextCore *)self valueForProperty:a2 expectedClass:v4];
}

- (BOOL)allowCPUThrottling
{
  v2 = [(FBSSceneTransitionContextCore *)self valueForProperty:a2 expectedClass:objc_opt_class()];
  v3 = [v2 BOOLValue];

  return v3;
}

- (FBWatchdogTransitionContext)watchdogTransitionContext
{
  v4 = NSClassFromString(&cfstr_Fbwatchdogtran.isa);

  return [(FBSSceneTransitionContextCore *)self valueForProperty:a2 expectedClass:v4];
}

- (BSAnimationSettings)animationSettings
{
  v4 = objc_opt_class();

  return [(FBSSceneTransitionContextCore *)self valueForProperty:a2 expectedClass:v4];
}

- (RBSProcessHandle)clientProcessHandle
{
  v4 = objc_opt_class();

  return [(FBSSceneTransitionContextCore *)self valueForProperty:a2 expectedClass:v4];
}

- (FBProcessExecutionContext)executionContext
{
  v4 = NSClassFromString(&cfstr_Fbprocessexecu.isa);

  return [(FBSSceneTransitionContextCore *)self valueForProperty:a2 expectedClass:v4];
}

- (BSProcessHandle)originatingProcess
{
  v4 = objc_opt_class();

  return [(FBSSceneTransitionContextCore *)self valueForProperty:a2 expectedClass:v4];
}

- (BOOL)isBarrier
{
  v2 = [(FBSSceneTransitionContextCore *)self valueForProperty:a2 expectedClass:objc_opt_class()];
  v3 = [v2 BOOLValue];

  return v3;
}

- (void)setBarrier:(BOOL)a3
{
  if (a3)
  {
    v3 = *MEMORY[0x1E695E4D0];
  }

  else
  {
    v3 = 0;
  }

  [(FBSSceneTransitionContextCore *)self setValue:v3 forProperty:a2];
}

- (void)setAllowCPUThrottling:(BOOL)a3
{
  if (a3)
  {
    v3 = *MEMORY[0x1E695E4D0];
  }

  else
  {
    v3 = 0;
  }

  [(FBSSceneTransitionContextCore *)self setValue:v3 forProperty:a2];
}

- (void)setRunningBoardAssertionDisabled:(BOOL)a3
{
  if (a3)
  {
    v3 = *MEMORY[0x1E695E4D0];
  }

  else
  {
    v3 = 0;
  }

  [(FBSSceneTransitionContextCore *)self setValue:v3 forProperty:a2];
}

- (NSError)error
{
  v4 = objc_opt_class();

  return [(FBSSceneTransitionContextCore *)self valueForProperty:a2 expectedClass:v4];
}

@end