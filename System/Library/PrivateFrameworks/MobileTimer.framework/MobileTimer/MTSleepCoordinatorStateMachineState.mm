@interface MTSleepCoordinatorStateMachineState
- (id)determineNextStateForSleepAlarm:(id)alarm;
- (void)updateState;
- (void)updateStateForSleepAlarm:(id)alarm;
- (void)userBedTimeReached:(id)reached;
- (void)userWakeTimeReached:(id)reached;
- (void)userWakeUpAlarmFired;
- (void)userWentToBed;
- (void)userWokeUp;
- (void)wakeUpAlarmTimedOut;
@end

@implementation MTSleepCoordinatorStateMachineState

- (void)updateState
{
  stateMachine = [(MTStateMachineState *)self stateMachine];
  sleepAlarm = [stateMachine sleepAlarm];
  [(MTSleepCoordinatorStateMachineState *)self updateStateForSleepAlarm:sleepAlarm];
}

- (void)updateStateForSleepAlarm:(id)alarm
{
  v5 = [(MTSleepCoordinatorStateMachineState *)self determineNextStateForSleepAlarm:alarm];
  stateMachine = [(MTStateMachineState *)self stateMachine];
  [stateMachine enterState:v5];
}

- (id)determineNextStateForSleepAlarm:(id)alarm
{
  v46 = *MEMORY[0x1E69E9840];
  alarmCopy = alarm;
  stateMachine = [(MTStateMachineState *)self stateMachine];
  currentDate = [stateMachine currentDate];

  if (!alarmCopy)
  {
    v11 = MTLogForCategory(7);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v40 = 138543362;
      selfCopy10 = self;
      v12 = "%{public}@ no sleep alarm, sleep disabled";
LABEL_11:
      _os_log_impl(&dword_1B1F9F000, v11, OS_LOG_TYPE_DEFAULT, v12, &v40, 0xCu);
    }

LABEL_12:

    stateMachine2 = [(MTStateMachineState *)self stateMachine];
    disabledState = [stateMachine2 disabledState];
LABEL_13:
    awakeState = disabledState;
    goto LABEL_14;
  }

  if (([alarmCopy sleepSchedule] & 1) == 0)
  {
    v11 = MTLogForCategory(7);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v40 = 138543362;
      selfCopy10 = self;
      v12 = "%{public}@ sleep schedule disabled";
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  if ([alarmCopy isFiring])
  {
    v8 = MTLogForCategory(7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v40 = 138543362;
      selfCopy10 = self;
      _os_log_impl(&dword_1B1F9F000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ haven't dismissed morning alarm yet so we're sleeping", &v40, 0xCu);
    }

    stateMachine2 = [(MTStateMachineState *)self stateMachine];
    disabledState = [stateMachine2 asleepState];
    goto LABEL_13;
  }

  stateMachine2 = [alarmCopy nextTriggersAfterDate:currentDate includeBedtime:1];
  firstObject = [stateMachine2 firstObject];
  if ([firstObject triggerType] == 5)
  {
    v17 = MTLogForCategory(7);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      triggerDate = [firstObject triggerDate];
      v40 = 138543618;
      selfCopy10 = self;
      v42 = 2114;
      v43 = triggerDate;
      v19 = "%{public}@ wake up alarm was snoozed (%{public}@) so we're sleeping";
LABEL_24:
      _os_log_impl(&dword_1B1F9F000, v17, OS_LOG_TYPE_DEFAULT, v19, &v40, 0x16u);

      goto LABEL_25;
    }

    goto LABEL_25;
  }

  if ([firstObject triggerType] != 4 && objc_msgSend(firstObject, "triggerType") != 8)
  {
    v21 = [stateMachine2 na_firstObjectPassingTest:&__block_literal_global_8];
    triggerDate2 = [v21 triggerDate];

    v22 = [stateMachine2 na_firstObjectPassingTest:&__block_literal_global_2];
    triggerDate3 = [v22 triggerDate];

    if (triggerDate3)
    {
      v24 = [stateMachine2 na_firstObjectPassingTest:&__block_literal_global_4];
      triggerDate4 = [v24 triggerDate];

      if ([triggerDate4 mtIsBeforeDate:triggerDate2] && objc_msgSend(triggerDate3, "mtIsAfterDate:", triggerDate4) && objc_msgSend(triggerDate3, "mtIsBeforeDate:", triggerDate2))
      {
        v26 = MTLogForCategory(7);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          v40 = 138543874;
          selfCopy10 = self;
          v42 = 2114;
          v43 = triggerDate3;
          v44 = 2114;
          v45 = triggerDate4;
          v27 = "%{public}@ bedtime reminder was snoozed (%{public}@) for after the bedtime: (%{public}@). it is currently before bedtime and the snooze date";
          v28 = v26;
          v29 = 32;
LABEL_39:
          _os_log_impl(&dword_1B1F9F000, v28, OS_LOG_TYPE_DEFAULT, v27, &v40, v29);
          goto LABEL_40;
        }

        goto LABEL_40;
      }

      if ([triggerDate4 mtIsAfterDate:triggerDate2] && objc_msgSend(triggerDate3, "mtIsBeforeDate:", triggerDate4) && objc_msgSend(triggerDate3, "mtIsBeforeDate:", triggerDate2))
      {
        v26 = MTLogForCategory(7);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          v40 = 138543618;
          selfCopy10 = self;
          v42 = 2114;
          v43 = triggerDate3;
          v27 = "%{public}@ bedtime reminder was snoozed (%{public}@) for after the bedtime. it is currently past bedtime but before the snooze date.";
          v28 = v26;
          v29 = 22;
          goto LABEL_39;
        }

LABEL_40:

        stateMachine3 = [(MTStateMachineState *)self stateMachine];
        awakeState = [stateMachine3 awakeState];

LABEL_58:
        goto LABEL_26;
      }

      v31 = [stateMachine2 na_filter:&__block_literal_global_7];

      firstObject2 = [v31 firstObject];

      firstObject = firstObject2;
      stateMachine2 = v31;
    }

    if ([firstObject triggerType] == 7 && objc_msgSend(alarmCopy, "confirmedLastBedtimeReminder"))
    {
      v33 = MTLogForCategory(7);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        bedtimeDismissedDate = [alarmCopy bedtimeDismissedDate];
        v40 = 138543874;
        selfCopy10 = self;
        v42 = 2114;
        v43 = bedtimeDismissedDate;
        v44 = 2114;
        v45 = triggerDate2;
        _os_log_impl(&dword_1B1F9F000, v33, OS_LOG_TYPE_DEFAULT, "%{public}@ user confirmed go to bed notification (%{public}@) so we're sleeping until %{public}@", &v40, 0x20u);
      }

      triggerDate4 = [(MTStateMachineState *)self stateMachine];
      asleepState = [triggerDate4 asleepState];
      goto LABEL_57;
    }

    if ([firstObject triggerType] == 2 || objc_msgSend(firstObject, "triggerType") == 7)
    {
      if ([firstObject triggerType] == 2)
      {
        v36 = MTLogForCategory(7);
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          triggerDate5 = [firstObject triggerDate];
          v40 = 138543618;
          selfCopy10 = self;
          v42 = 2114;
          v43 = triggerDate5;
          v38 = "%{public}@ haven't seen go to bed reminder yet (%{public}@)";
LABEL_55:
          _os_log_impl(&dword_1B1F9F000, v36, OS_LOG_TYPE_DEFAULT, v38, &v40, 0x16u);

          goto LABEL_56;
        }

        goto LABEL_56;
      }

      if ([firstObject triggerType] == 7)
      {
        v36 = MTLogForCategory(7);
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          triggerDate5 = [firstObject triggerDate];
          v40 = 138543618;
          selfCopy10 = self;
          v42 = 2114;
          v43 = triggerDate5;
          v38 = "%{public}@ not bedtime yet (%{public}@)";
          goto LABEL_55;
        }

LABEL_56:

        triggerDate4 = [(MTStateMachineState *)self stateMachine];
        asleepState = [triggerDate4 awakeState];
LABEL_57:
        awakeState = asleepState;
        goto LABEL_58;
      }
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MTSleepCoordinatorStateMachineState.m" lineNumber:127 description:@"Unhandled sleep window case!"];

    awakeState = 0;
    goto LABEL_27;
  }

  v17 = MTLogForCategory(7);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    triggerDate = [firstObject triggerDate];
    v40 = 138543618;
    selfCopy10 = self;
    v42 = 2114;
    v43 = triggerDate;
    v19 = "%{public}@ next trigger is for wake up (%{public}@) so we're sleeping";
    goto LABEL_24;
  }

LABEL_25:

  triggerDate2 = [(MTStateMachineState *)self stateMachine];
  awakeState = [triggerDate2 asleepState];
LABEL_26:

LABEL_27:
LABEL_14:

  v14 = *MEMORY[0x1E69E9840];

  return awakeState;
}

- (void)userWokeUp
{
  stateMachine = [(MTStateMachineState *)self stateMachine];
  stateMachine2 = [(MTStateMachineState *)self stateMachine];
  awakeState = [stateMachine2 awakeState];
  [stateMachine enterState:awakeState];
}

- (void)userWentToBed
{
  stateMachine = [(MTStateMachineState *)self stateMachine];
  stateMachine2 = [(MTStateMachineState *)self stateMachine];
  asleepState = [stateMachine2 asleepState];
  [stateMachine enterState:asleepState];
}

- (void)userBedTimeReached:(id)reached
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = MTLogForCategory(7);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_1B1F9F000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ bedtime reached, checking state", &v6, 0xCu);
  }

  [(MTSleepCoordinatorStateMachineState *)self updateState];
  v5 = *MEMORY[0x1E69E9840];
}

- (void)userWakeTimeReached:(id)reached
{
  v13 = *MEMORY[0x1E69E9840];
  reachedCopy = reached;
  stateMachine = [(MTStateMachineState *)self stateMachine];
  sleepAlarm = [stateMachine sleepAlarm];

  if ([sleepAlarm isEnabled])
  {
    [(MTSleepCoordinatorStateMachineState *)self updateStateForSleepAlarm:sleepAlarm];
  }

  else
  {
    v7 = MTLogForCategory(7);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138543362;
      selfCopy = self;
      _os_log_impl(&dword_1B1F9F000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ waketime reached but alarm not enabled, dismissing", &v11, 0xCu);
    }

    stateMachine2 = [(MTStateMachineState *)self stateMachine];
    stateMachine3 = [(MTStateMachineState *)self stateMachine];
    [stateMachine2 stateMachine:stateMachine3 dismissWakeUpAlarm:reachedCopy dismissAction:8];
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
    selfCopy = self;
    _os_log_impl(&dword_1B1F9F000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ scheduling alarm timeout", &v8, 0xCu);
  }

  stateMachine = [(MTStateMachineState *)self stateMachine];
  stateMachine2 = [(MTStateMachineState *)self stateMachine];
  stateMachine3 = [(MTStateMachineState *)self stateMachine];
  [stateMachine stateMachine:stateMachine2 shouldScheduleAlarmTimeoutForSecondsFromNow:{(60 * objc_msgSend(stateMachine3, "sleepTimeOutMinutes"))}];

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
    selfCopy = self;
    _os_log_impl(&dword_1B1F9F000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ alarm timeout occurred, dismissing", &v9, 0xCu);
  }

  stateMachine = [(MTStateMachineState *)self stateMachine];
  stateMachine2 = [(MTStateMachineState *)self stateMachine];
  stateMachine3 = [(MTStateMachineState *)self stateMachine];
  currentDate = [stateMachine3 currentDate];
  [stateMachine stateMachine:stateMachine2 dismissWakeUpAlarm:currentDate dismissAction:7];

  v8 = *MEMORY[0x1E69E9840];
}

@end