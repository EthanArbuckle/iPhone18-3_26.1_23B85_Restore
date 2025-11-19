@interface MTSleepModeStateMachineOffState
- (void)didEnterWithPreviousState:(id)a3;
@end

@implementation MTSleepModeStateMachineOffState

- (void)didEnterWithPreviousState:(id)a3
{
  if (self != a3 && a3)
  {
    v6 = [(MTStateMachineState *)self stateMachine];
    v5 = [(MTStateMachineState *)self stateMachine];
    [v6 stateMachine:v5 disengageSleepModeUserRequested:0];
  }
}

@end