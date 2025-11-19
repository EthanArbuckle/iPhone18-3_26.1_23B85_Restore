@interface MTSleepModeStateMachineUserRequestedOffState
- (BOOL)isEqualToState:(id)a3;
- (MTSleepModeStateMachineUserRequestedOffState)initWithKeepOffUntilDate:(id)a3 stateMachine:(id)a4;
- (void)didEnterWithPreviousState:(id)a3;
@end

@implementation MTSleepModeStateMachineUserRequestedOffState

- (MTSleepModeStateMachineUserRequestedOffState)initWithKeepOffUntilDate:(id)a3 stateMachine:(id)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = MTSleepModeStateMachineUserRequestedOffState;
  v8 = [(MTStateMachineState *)&v11 initWithStateMachine:a4];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_keepOffUntilDate, a3);
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

  else if (v4 && [(MTSleepModeStateMachineUserRequestedOffState *)v4 isMemberOfClass:objc_opt_class()])
  {
    v6 = [(MTSleepModeStateMachineUserRequestedOffState *)self keepOffUntilDate];
    v7 = [(MTSleepModeStateMachineUserRequestedOffState *)v5 keepOffUntilDate];
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
  v20 = *MEMORY[0x1E69E9840];
  if (![(MTSleepModeStateMachineUserRequestedOffState *)self isEqualToState:a3])
  {
    v4 = [(MTStateMachineState *)self stateMachine];
    v5 = [(MTStateMachineState *)self stateMachine];
    v6 = [v4 stateMachine:v5 disengageSleepModeUserRequested:1];

    if (v6)
    {
      v7 = MTLogForCategory(7);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v16 = 138543618;
        v17 = self;
        v18 = 2114;
        v19 = @"sleep mode";
        _os_log_impl(&dword_1B1F9F000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ Handling manual %{public}@ invalidation", &v16, 0x16u);
      }

      v8 = [(MTStateMachineState *)self stateMachine];
      v9 = [v8 isUserAsleep];

      v10 = MTLogForCategory(7);
      v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
      if (v9)
      {
        if (v11)
        {
          v12 = [(MTSleepModeStateMachineUserRequestedOffState *)self keepOffUntilDate];
          v16 = 138543618;
          v17 = self;
          v18 = 2114;
          v19 = v12;
          _os_log_impl(&dword_1B1F9F000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ Keeping off until: %{public}@", &v16, 0x16u);
        }

        v10 = [(MTStateMachineState *)self stateMachine];
        v13 = [(MTStateMachineState *)self stateMachine];
        v14 = [(MTSleepModeStateMachineUserRequestedOffState *)self keepOffUntilDate];
        [v10 stateMachine:v13 keepSleepModeOffUntilDate:v14];
      }

      else if (v11)
      {
        v16 = 138543362;
        v17 = self;
        _os_log_impl(&dword_1B1F9F000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ Not in user sleep window", &v16, 0xCu);
      }
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

@end