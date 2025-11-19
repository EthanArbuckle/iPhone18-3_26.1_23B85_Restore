@interface MTSleepModeStateMachineState
- (id)determineNextState:(BOOL)a3;
- (id)nextSleepModeEndDate;
- (id)nextSleepModeEndDateAfterDate:(id)a3;
- (id)nextSleepModeStartDate;
- (id)nextSleepModeStartDateAfterDate:(id)a3;
- (void)sleepModeEnabled:(BOOL)a3 userRequested:(BOOL)a4 date:(id)a5;
- (void)updateModeKeepOffUntilDateIfNecessary;
- (void)userWokeUp;
@end

@implementation MTSleepModeStateMachineState

- (void)updateModeKeepOffUntilDateIfNecessary
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = [(MTStateMachineState *)self stateMachine];
  v4 = [v3 currentDate];

  v5 = [(MTStateMachineState *)self stateMachine];
  v6 = [v5 keepOffUntilDate];

  if (v6 && [v4 mtIsBeforeDate:v6])
  {
    v7 = [(MTSleepModeStateMachineState *)self nextSleepModeStartDateAfterDate:v4];
    if (([v6 isEqualToDate:v7] & 1) == 0)
    {
      v8 = MTLogForCategory(7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 138543618;
        v13 = self;
        v14 = 2114;
        v15 = v7;
        _os_log_impl(&dword_1B1F9F000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ Updating keep off until date: %{public}@", &v12, 0x16u);
      }

      v9 = [(MTStateMachineState *)self stateMachine];
      v10 = [(MTStateMachineState *)self stateMachine];
      [v9 stateMachine:v10 keepSleepModeOffUntilDate:v7];
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (id)determineNextState:(BOOL)a3
{
  v3 = a3;
  v40 = *MEMORY[0x1E69E9840];
  v5 = [(MTStateMachineState *)self stateMachine];
  v6 = [v5 currentDate];

  v7 = [(MTStateMachineState *)self stateMachine];
  v8 = [v7 keepOffUntilDate];

  if (!v8 || ![v6 mtIsBeforeDate:v8])
  {
    v12 = [(MTStateMachineState *)self stateMachine];
    v10 = [v12 sleepAlarm];

    if (!v10)
    {
      v22 = MTLogForCategory(7);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v32 = 138543618;
        v33 = self;
        v34 = 2114;
        v35 = @"sleep mode";
        _os_log_impl(&dword_1B1F9F000, v22, OS_LOG_TYPE_DEFAULT, "%{public}@ no sleep alarm, turning off %{public}@ if it's on", &v32, 0x16u);
      }

      goto LABEL_24;
    }

    if ([v10 sleepSchedule])
    {
      if ([v10 sleepMode])
      {
        v13 = [(MTStateMachineState *)self stateMachine];
        v14 = [v13 isUserAsleep];

        if (v14)
        {
          if (!v3 || ([v10 bedtimeReminder], (v15 = objc_claimAutoreleasedReturnValue()) == 0) || (v16 = v15, v17 = objc_msgSend(v10, "bedtimeReminderMinutes"), v16, v17))
          {
            v18 = MTLogForCategory(7);
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
            {
              v19 = [v10 alarmIDString];
              v32 = 138543874;
              v33 = self;
              v34 = 2114;
              v35 = @"sleep mode";
              v36 = 2114;
              v37 = v19;
              _os_log_impl(&dword_1B1F9F000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@ turning on %{public}@ if it's not on for alarm %{public}@", &v32, 0x20u);
            }

            v20 = [(MTStateMachineState *)self stateMachine];
            v21 = [(MTSleepModeStateMachineState *)self nextSleepModeEndDate];
            v11 = [v20 onStateWithSleepModeEndDate:v21];

            goto LABEL_26;
          }

          v30 = MTLogForCategory(7);
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
          {
            v31 = [v10 alarmIDString];
            v32 = 138543874;
            v33 = self;
            v34 = 2114;
            v35 = @"sleep mode";
            v36 = 2114;
            v37 = v31;
            _os_log_impl(&dword_1B1F9F000, v30, OS_LOG_TYPE_DEFAULT, "%{public}@ waiting 60 seconds before turning on %{public}@ for alarm %{public}@", &v32, 0x20u);
          }

          v20 = [(MTStateMachineState *)self stateMachine];
          v27 = [v20 waitingState];
LABEL_25:
          v11 = v27;
LABEL_26:

          goto LABEL_27;
        }

        v22 = MTLogForCategory(7);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          v23 = [v10 alarmIDString];
          v32 = 138543874;
          v33 = self;
          v34 = 2114;
          v35 = v23;
          v36 = 2114;
          v37 = @"sleep mode";
          v24 = "%{public}@ not in sleep window for alarm %{public}@, turning off %{public}@ if it's on";
          goto LABEL_20;
        }
      }

      else
      {
        v22 = MTLogForCategory(7);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          v23 = [v10 alarmIDString];
          v32 = 138544130;
          v33 = self;
          v34 = 2114;
          v35 = @"sleep mode";
          v36 = 2114;
          v37 = v23;
          v38 = 2114;
          v39 = @"sleep mode";
          v24 = "%{public}@ %{public}@ not enabled for alarm %{public}@, turning off %{public}@ if it's on";
          v25 = v22;
          v26 = 42;
          goto LABEL_23;
        }
      }
    }

    else
    {
      v22 = MTLogForCategory(7);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = [v10 alarmIDString];
        v32 = 138543874;
        v33 = self;
        v34 = 2114;
        v35 = v23;
        v36 = 2114;
        v37 = @"sleep mode";
        v24 = "%{public}@ sleep schedule for %{public}@ not enabled, turning off %{public}@ if it's on";
LABEL_20:
        v25 = v22;
        v26 = 32;
LABEL_23:
        _os_log_impl(&dword_1B1F9F000, v25, OS_LOG_TYPE_DEFAULT, v24, &v32, v26);
      }
    }

LABEL_24:

    v20 = [(MTStateMachineState *)self stateMachine];
    v27 = [v20 offState];
    goto LABEL_25;
  }

  v9 = MTLogForCategory(7);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v32 = 138543874;
    v33 = self;
    v34 = 2114;
    v35 = v8;
    v36 = 2114;
    v37 = @"sleep mode";
    _os_log_impl(&dword_1B1F9F000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ We are before keep off until date: %{public}@, turning off %{public}@ if it's on", &v32, 0x20u);
  }

  v10 = [(MTStateMachineState *)self stateMachine];
  v11 = [v10 userRequestedOffStateWithKeepOffUntilDate:v8];
LABEL_27:

  v28 = *MEMORY[0x1E69E9840];

  return v11;
}

- (void)sleepModeEnabled:(BOOL)a3 userRequested:(BOOL)a4 date:(id)a5
{
  v5 = a4;
  v6 = a3;
  v22 = *MEMORY[0x1E69E9840];
  v8 = a5;
  if (v6)
  {
    v9 = [(MTSleepModeStateMachineState *)self nextSleepModeEndDate];
    v10 = [(MTStateMachineState *)self stateMachine];
    v11 = [(MTStateMachineState *)self stateMachine];
    v12 = [v11 onStateWithSleepModeEndDate:v9];
  }

  else
  {
    if (!v5)
    {
      v9 = [(MTStateMachineState *)self stateMachine];
      v17 = [(MTStateMachineState *)self stateMachine];
      v18 = [v17 offState];
      [v9 enterState:v18];

      goto LABEL_9;
    }

    v9 = [(MTSleepModeStateMachineState *)self nextSleepModeStartDateAfterDate:v8];
    v14 = [(MTStateMachineState *)self stateMachine];
    v15 = [v14 currentDate];
    v16 = [v9 mtIsAfterDate:v15];

    if (!v16)
    {
      v10 = MTLogForCategory(7);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v20 = 138543362;
        v21 = self;
        _os_log_impl(&dword_1B1F9F000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ ignoring user requested off because it's for previous sleep window", &v20, 0xCu);
      }

      goto LABEL_4;
    }

    v10 = [(MTStateMachineState *)self stateMachine];
    v11 = [(MTStateMachineState *)self stateMachine];
    v12 = [v11 userRequestedOffStateWithKeepOffUntilDate:v9];
  }

  v13 = v12;
  [v10 enterState:v12];

LABEL_4:
LABEL_9:

  v19 = *MEMORY[0x1E69E9840];
}

- (void)userWokeUp
{
  v5 = [(MTStateMachineState *)self stateMachine];
  v3 = [(MTStateMachineState *)self stateMachine];
  v4 = [v3 offState];
  [v5 enterState:v4];
}

- (id)nextSleepModeEndDate
{
  v3 = [(MTStateMachineState *)self stateMachine];
  v4 = [v3 currentDate];
  v5 = [(MTSleepModeStateMachineState *)self nextSleepModeEndDateAfterDate:v4];

  return v5;
}

- (id)nextSleepModeEndDateAfterDate:(id)a3
{
  v4 = a3;
  v5 = [(MTStateMachineState *)self stateMachine];
  v6 = [v5 sleepAlarm];
  v7 = [v6 nextExpectedWakeUpDateAfterDate:v4];

  return v7;
}

- (id)nextSleepModeStartDate
{
  v3 = [(MTStateMachineState *)self stateMachine];
  v4 = [v3 currentDate];
  v5 = [(MTSleepModeStateMachineState *)self nextSleepModeStartDateAfterDate:v4];

  return v5;
}

- (id)nextSleepModeStartDateAfterDate:(id)a3
{
  v4 = a3;
  v5 = [(MTStateMachineState *)self stateMachine];
  v6 = [v5 sleepAlarm];
  v7 = [v6 nextExpectedBedtimeDateAfterDate:v4];

  return v7;
}

@end