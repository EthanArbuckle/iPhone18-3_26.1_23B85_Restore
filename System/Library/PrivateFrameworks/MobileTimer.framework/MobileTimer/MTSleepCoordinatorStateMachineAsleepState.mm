@interface MTSleepCoordinatorStateMachineAsleepState
- (void)didEnterWithPreviousState:(id)state;
@end

@implementation MTSleepCoordinatorStateMachineAsleepState

- (void)didEnterWithPreviousState:(id)state
{
  stateCopy = state;
  stateMachine = [(MTStateMachineState *)self stateMachine];
  disabledState = [stateMachine disabledState];
  if (stateCopy != self && disabledState != stateCopy)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      goto LABEL_6;
    }

    stateMachine = [(MTStateMachineState *)self stateMachine];
    disabledState = [(MTStateMachineState *)self stateMachine];
    [stateMachine stateMachineUserWentToBed:disabledState];
  }

LABEL_6:
}

@end