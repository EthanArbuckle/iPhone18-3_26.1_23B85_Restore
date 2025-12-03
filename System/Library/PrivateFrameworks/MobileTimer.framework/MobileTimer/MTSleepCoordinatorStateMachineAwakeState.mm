@interface MTSleepCoordinatorStateMachineAwakeState
- (void)didEnterWithPreviousState:(id)state;
@end

@implementation MTSleepCoordinatorStateMachineAwakeState

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
    [stateMachine stateMachineUserWokeUp:disabledState];
  }

LABEL_6:
}

@end