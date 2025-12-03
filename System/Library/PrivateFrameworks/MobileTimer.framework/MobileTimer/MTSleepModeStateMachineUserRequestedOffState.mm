@interface MTSleepModeStateMachineUserRequestedOffState
- (BOOL)isEqualToState:(id)state;
- (MTSleepModeStateMachineUserRequestedOffState)initWithKeepOffUntilDate:(id)date stateMachine:(id)machine;
- (void)didEnterWithPreviousState:(id)state;
@end

@implementation MTSleepModeStateMachineUserRequestedOffState

- (MTSleepModeStateMachineUserRequestedOffState)initWithKeepOffUntilDate:(id)date stateMachine:(id)machine
{
  dateCopy = date;
  v11.receiver = self;
  v11.super_class = MTSleepModeStateMachineUserRequestedOffState;
  v8 = [(MTStateMachineState *)&v11 initWithStateMachine:machine];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_keepOffUntilDate, date);
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

  else if (stateCopy && [(MTSleepModeStateMachineUserRequestedOffState *)stateCopy isMemberOfClass:objc_opt_class()])
  {
    keepOffUntilDate = [(MTSleepModeStateMachineUserRequestedOffState *)self keepOffUntilDate];
    keepOffUntilDate2 = [(MTSleepModeStateMachineUserRequestedOffState *)v5 keepOffUntilDate];
    v8 = [keepOffUntilDate isEqualToDate:keepOffUntilDate2];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)didEnterWithPreviousState:(id)state
{
  v20 = *MEMORY[0x1E69E9840];
  if (![(MTSleepModeStateMachineUserRequestedOffState *)self isEqualToState:state])
  {
    stateMachine = [(MTStateMachineState *)self stateMachine];
    stateMachine2 = [(MTStateMachineState *)self stateMachine];
    v6 = [stateMachine stateMachine:stateMachine2 disengageSleepModeUserRequested:1];

    if (v6)
    {
      v7 = MTLogForCategory(7);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v16 = 138543618;
        selfCopy3 = self;
        v18 = 2114;
        v19 = @"sleep mode";
        _os_log_impl(&dword_1B1F9F000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ Handling manual %{public}@ invalidation", &v16, 0x16u);
      }

      stateMachine3 = [(MTStateMachineState *)self stateMachine];
      isUserAsleep = [stateMachine3 isUserAsleep];

      stateMachine4 = MTLogForCategory(7);
      v11 = os_log_type_enabled(stateMachine4, OS_LOG_TYPE_DEFAULT);
      if (isUserAsleep)
      {
        if (v11)
        {
          keepOffUntilDate = [(MTSleepModeStateMachineUserRequestedOffState *)self keepOffUntilDate];
          v16 = 138543618;
          selfCopy3 = self;
          v18 = 2114;
          v19 = keepOffUntilDate;
          _os_log_impl(&dword_1B1F9F000, stateMachine4, OS_LOG_TYPE_DEFAULT, "%{public}@ Keeping off until: %{public}@", &v16, 0x16u);
        }

        stateMachine4 = [(MTStateMachineState *)self stateMachine];
        stateMachine5 = [(MTStateMachineState *)self stateMachine];
        keepOffUntilDate2 = [(MTSleepModeStateMachineUserRequestedOffState *)self keepOffUntilDate];
        [stateMachine4 stateMachine:stateMachine5 keepSleepModeOffUntilDate:keepOffUntilDate2];
      }

      else if (v11)
      {
        v16 = 138543362;
        selfCopy3 = self;
        _os_log_impl(&dword_1B1F9F000, stateMachine4, OS_LOG_TYPE_DEFAULT, "%{public}@ Not in user sleep window", &v16, 0xCu);
      }
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

@end