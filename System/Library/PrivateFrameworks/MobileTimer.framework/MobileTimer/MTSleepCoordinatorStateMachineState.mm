@interface MTSleepCoordinatorStateMachineState
- (id)determineNextStateForSleepAlarm:(id)a3;
- (void)updateState;
- (void)updateStateForSleepAlarm:(id)a3;
- (void)userBedTimeReached:(id)a3;
- (void)userWakeTimeReached:(id)a3;
- (void)userWakeUpAlarmFired;
- (void)userWentToBed;
- (void)userWokeUp;
- (void)wakeUpAlarmTimedOut;
@end

@implementation MTSleepCoordinatorStateMachineState

- (void)updateState
{
  v4 = [(MTStateMachineState *)self stateMachine];
  v3 = [v4 sleepAlarm];
  [(MTSleepCoordinatorStateMachineState *)self updateStateForSleepAlarm:v3];
}

- (void)updateStateForSleepAlarm:(id)a3
{
  v5 = [(MTSleepCoordinatorStateMachineState *)self determineNextStateForSleepAlarm:a3];
  v4 = [(MTStateMachineState *)self stateMachine];
  [v4 enterState:v5];
}

- (id)determineNextStateForSleepAlarm:(id)a3
{
  v46 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [(MTStateMachineState *)self stateMachine];
  v7 = [v6 currentDate];

  if (!v5)
  {
    v11 = MTLogForCategory(7);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v40 = 138543362;
      v41 = self;
      v12 = "%{public}@ no sleep alarm, sleep disabled";
LABEL_11:
      _os_log_impl(&dword_1B1F9F000, v11, OS_LOG_TYPE_DEFAULT, v12, &v40, 0xCu);
    }

LABEL_12:

    v9 = [(MTStateMachineState *)self stateMachine];
    v10 = [v9 disabledState];
LABEL_13:
    v13 = v10;
    goto LABEL_14;
  }

  if (([v5 sleepSchedule] & 1) == 0)
  {
    v11 = MTLogForCategory(7);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v40 = 138543362;
      v41 = self;
      v12 = "%{public}@ sleep schedule disabled";
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  if ([v5 isFiring])
  {
    v8 = MTLogForCategory(7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v40 = 138543362;
      v41 = self;
      _os_log_impl(&dword_1B1F9F000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ haven't dismissed morning alarm yet so we're sleeping", &v40, 0xCu);
    }

    v9 = [(MTStateMachineState *)self stateMachine];
    v10 = [v9 asleepState];
    goto LABEL_13;
  }

  v9 = [v5 nextTriggersAfterDate:v7 includeBedtime:1];
  v16 = [v9 firstObject];
  if ([v16 triggerType] == 5)
  {
    v17 = MTLogForCategory(7);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = [v16 triggerDate];
      v40 = 138543618;
      v41 = self;
      v42 = 2114;
      v43 = v18;
      v19 = "%{public}@ wake up alarm was snoozed (%{public}@) so we're sleeping";
LABEL_24:
      _os_log_impl(&dword_1B1F9F000, v17, OS_LOG_TYPE_DEFAULT, v19, &v40, 0x16u);

      goto LABEL_25;
    }

    goto LABEL_25;
  }

  if ([v16 triggerType] != 4 && objc_msgSend(v16, "triggerType") != 8)
  {
    v21 = [v9 na_firstObjectPassingTest:&__block_literal_global_8];
    v20 = [v21 triggerDate];

    v22 = [v9 na_firstObjectPassingTest:&__block_literal_global_2];
    v23 = [v22 triggerDate];

    if (v23)
    {
      v24 = [v9 na_firstObjectPassingTest:&__block_literal_global_4];
      v25 = [v24 triggerDate];

      if ([v25 mtIsBeforeDate:v20] && objc_msgSend(v23, "mtIsAfterDate:", v25) && objc_msgSend(v23, "mtIsBeforeDate:", v20))
      {
        v26 = MTLogForCategory(7);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          v40 = 138543874;
          v41 = self;
          v42 = 2114;
          v43 = v23;
          v44 = 2114;
          v45 = v25;
          v27 = "%{public}@ bedtime reminder was snoozed (%{public}@) for after the bedtime: (%{public}@). it is currently before bedtime and the snooze date";
          v28 = v26;
          v29 = 32;
LABEL_39:
          _os_log_impl(&dword_1B1F9F000, v28, OS_LOG_TYPE_DEFAULT, v27, &v40, v29);
          goto LABEL_40;
        }

        goto LABEL_40;
      }

      if ([v25 mtIsAfterDate:v20] && objc_msgSend(v23, "mtIsBeforeDate:", v25) && objc_msgSend(v23, "mtIsBeforeDate:", v20))
      {
        v26 = MTLogForCategory(7);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          v40 = 138543618;
          v41 = self;
          v42 = 2114;
          v43 = v23;
          v27 = "%{public}@ bedtime reminder was snoozed (%{public}@) for after the bedtime. it is currently past bedtime but before the snooze date.";
          v28 = v26;
          v29 = 22;
          goto LABEL_39;
        }

LABEL_40:

        v30 = [(MTStateMachineState *)self stateMachine];
        v13 = [v30 awakeState];

LABEL_58:
        goto LABEL_26;
      }

      v31 = [v9 na_filter:&__block_literal_global_7];

      v32 = [v31 firstObject];

      v16 = v32;
      v9 = v31;
    }

    if ([v16 triggerType] == 7 && objc_msgSend(v5, "confirmedLastBedtimeReminder"))
    {
      v33 = MTLogForCategory(7);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        v34 = [v5 bedtimeDismissedDate];
        v40 = 138543874;
        v41 = self;
        v42 = 2114;
        v43 = v34;
        v44 = 2114;
        v45 = v20;
        _os_log_impl(&dword_1B1F9F000, v33, OS_LOG_TYPE_DEFAULT, "%{public}@ user confirmed go to bed notification (%{public}@) so we're sleeping until %{public}@", &v40, 0x20u);
      }

      v25 = [(MTStateMachineState *)self stateMachine];
      v35 = [v25 asleepState];
      goto LABEL_57;
    }

    if ([v16 triggerType] == 2 || objc_msgSend(v16, "triggerType") == 7)
    {
      if ([v16 triggerType] == 2)
      {
        v36 = MTLogForCategory(7);
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          v37 = [v16 triggerDate];
          v40 = 138543618;
          v41 = self;
          v42 = 2114;
          v43 = v37;
          v38 = "%{public}@ haven't seen go to bed reminder yet (%{public}@)";
LABEL_55:
          _os_log_impl(&dword_1B1F9F000, v36, OS_LOG_TYPE_DEFAULT, v38, &v40, 0x16u);

          goto LABEL_56;
        }

        goto LABEL_56;
      }

      if ([v16 triggerType] == 7)
      {
        v36 = MTLogForCategory(7);
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          v37 = [v16 triggerDate];
          v40 = 138543618;
          v41 = self;
          v42 = 2114;
          v43 = v37;
          v38 = "%{public}@ not bedtime yet (%{public}@)";
          goto LABEL_55;
        }

LABEL_56:

        v25 = [(MTStateMachineState *)self stateMachine];
        v35 = [v25 awakeState];
LABEL_57:
        v13 = v35;
        goto LABEL_58;
      }
    }

    v39 = [MEMORY[0x1E696AAA8] currentHandler];
    [v39 handleFailureInMethod:a2 object:self file:@"MTSleepCoordinatorStateMachineState.m" lineNumber:127 description:@"Unhandled sleep window case!"];

    v13 = 0;
    goto LABEL_27;
  }

  v17 = MTLogForCategory(7);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = [v16 triggerDate];
    v40 = 138543618;
    v41 = self;
    v42 = 2114;
    v43 = v18;
    v19 = "%{public}@ next trigger is for wake up (%{public}@) so we're sleeping";
    goto LABEL_24;
  }

LABEL_25:

  v20 = [(MTStateMachineState *)self stateMachine];
  v13 = [v20 asleepState];
LABEL_26:

LABEL_27:
LABEL_14:

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

- (void)userWokeUp
{
  v5 = [(MTStateMachineState *)self stateMachine];
  v3 = [(MTStateMachineState *)self stateMachine];
  v4 = [v3 awakeState];
  [v5 enterState:v4];
}

- (void)userWentToBed
{
  v5 = [(MTStateMachineState *)self stateMachine];
  v3 = [(MTStateMachineState *)self stateMachine];
  v4 = [v3 asleepState];
  [v5 enterState:v4];
}

- (void)userBedTimeReached:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = MTLogForCategory(7);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    v7 = self;
    _os_log_impl(&dword_1B1F9F000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ bedtime reached, checking state", &v6, 0xCu);
  }

  [(MTSleepCoordinatorStateMachineState *)self updateState];
  v5 = *MEMORY[0x1E69E9840];
}

- (void)userWakeTimeReached:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(MTStateMachineState *)self stateMachine];
  v6 = [v5 sleepAlarm];

  if ([v6 isEnabled])
  {
    [(MTSleepCoordinatorStateMachineState *)self updateStateForSleepAlarm:v6];
  }

  else
  {
    v7 = MTLogForCategory(7);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138543362;
      v12 = self;
      _os_log_impl(&dword_1B1F9F000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ waketime reached but alarm not enabled, dismissing", &v11, 0xCu);
    }

    v8 = [(MTStateMachineState *)self stateMachine];
    v9 = [(MTStateMachineState *)self stateMachine];
    [v8 stateMachine:v9 dismissWakeUpAlarm:v4 dismissAction:8];
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)userWakeUpAlarmFired
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = MTLogForCategory(7);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543362;
    v9 = self;
    _os_log_impl(&dword_1B1F9F000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ scheduling alarm timeout", &v8, 0xCu);
  }

  v4 = [(MTStateMachineState *)self stateMachine];
  v5 = [(MTStateMachineState *)self stateMachine];
  v6 = [(MTStateMachineState *)self stateMachine];
  [v4 stateMachine:v5 shouldScheduleAlarmTimeoutForSecondsFromNow:{(60 * objc_msgSend(v6, "sleepTimeOutMinutes"))}];

  [(MTSleepCoordinatorStateMachineState *)self updateState];
  v7 = *MEMORY[0x1E69E9840];
}

- (void)wakeUpAlarmTimedOut
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = MTLogForCategory(7);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543362;
    v10 = self;
    _os_log_impl(&dword_1B1F9F000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ alarm timeout occurred, dismissing", &v9, 0xCu);
  }

  v4 = [(MTStateMachineState *)self stateMachine];
  v5 = [(MTStateMachineState *)self stateMachine];
  v6 = [(MTStateMachineState *)self stateMachine];
  v7 = [v6 currentDate];
  [v4 stateMachine:v5 dismissWakeUpAlarm:v7 dismissAction:7];

  v8 = *MEMORY[0x1E69E9840];
}

@end