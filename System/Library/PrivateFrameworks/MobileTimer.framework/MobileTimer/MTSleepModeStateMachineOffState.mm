@interface MTSleepModeStateMachineOffState
- (void)didEnterWithPreviousState:(id)state;
@end

@implementation MTSleepModeStateMachineOffState

- (void)didEnterWithPreviousState:(id)state
{
  if (self != state && state)
  {
    stateMachine = [(MTStateMachineState *)self stateMachine];
    stateMachine2 = [(MTStateMachineState *)self stateMachine];
    [stateMachine stateMachine:stateMachine2 disengageSleepModeUserRequested:0];
  }
}

@end