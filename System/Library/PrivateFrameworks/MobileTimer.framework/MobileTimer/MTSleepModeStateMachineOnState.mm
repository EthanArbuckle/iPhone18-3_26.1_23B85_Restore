@interface MTSleepModeStateMachineOnState
- (BOOL)isEqualToState:(id)a3;
- (MTSleepModeStateMachineOnState)initWithSleepModeEndDate:(id)a3 stateMachine:(id)a4;
- (void)didEnterWithPreviousState:(id)a3;
@end

@implementation MTSleepModeStateMachineOnState

- (MTSleepModeStateMachineOnState)initWithSleepModeEndDate:(id)a3 stateMachine:(id)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = MTSleepModeStateMachineOnState;
  v8 = [(MTStateMachineState *)&v11 initWithStateMachine:a4];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_sleepModeEndDate, a3);
  }

  return v9;
}

- (BOOL)isEqualToState:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v8 = 1;
  }

  else if (v4 && [(MTSleepModeStateMachineOnState *)v4 isMemberOfClass:objc_opt_class()])
  {
    v6 = [(MTSleepModeStateMachineOnState *)self sleepModeEndDate];
    v7 = [(MTSleepModeStateMachineOnState *)v5 sleepModeEndDate];
    v8 = [v6 isEqualToDate:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)didEnterWithPreviousState:(id)a3
{
  if (![(MTSleepModeStateMachineOnState *)self isEqualToState:a3])
  {
    v6 = [(MTStateMachineState *)self stateMachine];
    v4 = [(MTStateMachineState *)self stateMachine];
    v5 = [(MTSleepModeStateMachineOnState *)self sleepModeEndDate];
    [v6 stateMachine:v4 engageSleepModeUntilDate:v5 userEngaged:0];
  }
}

@end