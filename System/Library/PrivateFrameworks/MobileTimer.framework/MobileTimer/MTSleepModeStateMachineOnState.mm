@interface MTSleepModeStateMachineOnState
- (BOOL)isEqualToState:(id)state;
- (MTSleepModeStateMachineOnState)initWithSleepModeEndDate:(id)date stateMachine:(id)machine;
- (void)didEnterWithPreviousState:(id)state;
@end

@implementation MTSleepModeStateMachineOnState

- (MTSleepModeStateMachineOnState)initWithSleepModeEndDate:(id)date stateMachine:(id)machine
{
  dateCopy = date;
  v11.receiver = self;
  v11.super_class = MTSleepModeStateMachineOnState;
  v8 = [(MTStateMachineState *)&v11 initWithStateMachine:machine];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_sleepModeEndDate, date);
  }

  return v9;
}

- (BOOL)isEqualToState:(id)state
{
  stateCopy = state;
  v5 = stateCopy;
  if (self == stateCopy)
  {
    v8 = 1;
  }

  else if (stateCopy && [(MTSleepModeStateMachineOnState *)stateCopy isMemberOfClass:objc_opt_class()])
  {
    sleepModeEndDate = [(MTSleepModeStateMachineOnState *)self sleepModeEndDate];
    sleepModeEndDate2 = [(MTSleepModeStateMachineOnState *)v5 sleepModeEndDate];
    v8 = [sleepModeEndDate isEqualToDate:sleepModeEndDate2];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)didEnterWithPreviousState:(id)state
{
  if (![(MTSleepModeStateMachineOnState *)self isEqualToState:state])
  {
    stateMachine = [(MTStateMachineState *)self stateMachine];
    stateMachine2 = [(MTStateMachineState *)self stateMachine];
    sleepModeEndDate = [(MTSleepModeStateMachineOnState *)self sleepModeEndDate];
    [stateMachine stateMachine:stateMachine2 engageSleepModeUntilDate:sleepModeEndDate userEngaged:0];
  }
}

@end