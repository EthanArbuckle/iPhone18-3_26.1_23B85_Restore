@interface MTSleepModeStateMachineWaitingState
- (void)didEnterWithPreviousState:(id)state;
@end

@implementation MTSleepModeStateMachineWaitingState

- (void)didEnterWithPreviousState:(id)state
{
  if (self != state)
  {
    stateMachine = [(MTStateMachineState *)self stateMachine];
    stateMachine2 = [(MTStateMachineState *)self stateMachine];
    [stateMachine stateMachine:stateMachine2 scheduleUpdateForSecondsFromNow:60.0];
  }
}

@end