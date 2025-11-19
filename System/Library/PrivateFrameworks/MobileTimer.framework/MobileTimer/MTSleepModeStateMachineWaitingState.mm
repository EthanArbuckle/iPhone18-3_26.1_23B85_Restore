@interface MTSleepModeStateMachineWaitingState
- (void)didEnterWithPreviousState:(id)a3;
@end

@implementation MTSleepModeStateMachineWaitingState

- (void)didEnterWithPreviousState:(id)a3
{
  if (self != a3)
  {
    v6 = [(MTStateMachineState *)self stateMachine];
    v5 = [(MTStateMachineState *)self stateMachine];
    [v6 stateMachine:v5 scheduleUpdateForSecondsFromNow:60.0];
  }
}

@end