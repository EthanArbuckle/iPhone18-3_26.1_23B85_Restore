@interface MTSleepCoordinatorStateMachineAsleepState
- (void)didEnterWithPreviousState:(id)a3;
@end

@implementation MTSleepCoordinatorStateMachineAsleepState

- (void)didEnterWithPreviousState:(id)a3
{
  v7 = a3;
  v4 = [(MTStateMachineState *)self stateMachine];
  v5 = [v4 disabledState];
  if (v7 != self && v5 != v7)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      goto LABEL_6;
    }

    v4 = [(MTStateMachineState *)self stateMachine];
    v5 = [(MTStateMachineState *)self stateMachine];
    [v4 stateMachineUserWentToBed:v5];
  }

LABEL_6:
}

@end