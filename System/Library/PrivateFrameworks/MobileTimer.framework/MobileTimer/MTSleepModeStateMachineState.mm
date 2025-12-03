@interface MTSleepModeStateMachineState
- (id)determineNextState:(BOOL)state;
- (id)nextSleepModeEndDate;
- (id)nextSleepModeEndDateAfterDate:(id)date;
- (id)nextSleepModeStartDate;
- (id)nextSleepModeStartDateAfterDate:(id)date;
- (void)sleepModeEnabled:(BOOL)enabled userRequested:(BOOL)requested date:(id)date;
- (void)updateModeKeepOffUntilDateIfNecessary;
- (void)userWokeUp;
@end

@implementation MTSleepModeStateMachineState

- (void)updateModeKeepOffUntilDateIfNecessary
{
  v16 = *MEMORY[0x1E69E9840];
  stateMachine = [(MTStateMachineState *)self stateMachine];
  currentDate = [stateMachine currentDate];

  stateMachine2 = [(MTStateMachineState *)self stateMachine];
  keepOffUntilDate = [stateMachine2 keepOffUntilDate];

  if (keepOffUntilDate && [currentDate mtIsBeforeDate:keepOffUntilDate])
  {
    v7 = [(MTSleepModeStateMachineState *)self nextSleepModeStartDateAfterDate:currentDate];
    if (([keepOffUntilDate isEqualToDate:v7] & 1) == 0)
    {
      v8 = MTLogForCategory(7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 138543618;
        selfCopy = self;
        v14 = 2114;
        v15 = v7;
        _os_log_impl(&dword_1B1F9F000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ Updating keep off until date: %{public}@", &v12, 0x16u);
      }

      stateMachine3 = [(MTStateMachineState *)self stateMachine];
      stateMachine4 = [(MTStateMachineState *)self stateMachine];
      [stateMachine3 stateMachine:stateMachine4 keepSleepModeOffUntilDate:v7];
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (id)determineNextState:(BOOL)state
{
  stateCopy = state;
  v40 = *MEMORY[0x1E69E9840];
  stateMachine = [(MTStateMachineState *)self stateMachine];
  currentDate = [stateMachine currentDate];

  stateMachine2 = [(MTStateMachineState *)self stateMachine];
  keepOffUntilDate = [stateMachine2 keepOffUntilDate];

  if (!keepOffUntilDate || ![currentDate mtIsBeforeDate:keepOffUntilDate])
  {
    stateMachine3 = [(MTStateMachineState *)self stateMachine];
    sleepAlarm = [stateMachine3 sleepAlarm];

    if (!sleepAlarm)
    {
      v22 = MTLogForCategory(7);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v32 = 138543618;
        selfCopy7 = self;
        v34 = 2114;
        v35 = @"sleep mode";
        _os_log_impl(&dword_1B1F9F000, v22, OS_LOG_TYPE_DEFAULT, "%{public}@ no sleep alarm, turning off %{public}@ if it's on", &v32, 0x16u);
      }

      goto LABEL_24;
    }

    if ([sleepAlarm sleepSchedule])
    {
      if ([sleepAlarm sleepMode])
      {
        stateMachine4 = [(MTStateMachineState *)self stateMachine];
        isUserAsleep = [stateMachine4 isUserAsleep];

        if (isUserAsleep)
        {
          if (!stateCopy || ([sleepAlarm bedtimeReminder], (v15 = objc_claimAutoreleasedReturnValue()) == 0) || (v16 = v15, v17 = objc_msgSend(sleepAlarm, "bedtimeReminderMinutes"), v16, v17))
          {
            v18 = MTLogForCategory(7);
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
            {
              alarmIDString = [sleepAlarm alarmIDString];
              v32 = 138543874;
              selfCopy7 = self;
              v34 = 2114;
              v35 = @"sleep mode";
              v36 = 2114;
              v37 = alarmIDString;
              _os_log_impl(&dword_1B1F9F000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@ turning on %{public}@ if it's not on for alarm %{public}@", &v32, 0x20u);
            }

            stateMachine5 = [(MTStateMachineState *)self stateMachine];
            nextSleepModeEndDate = [(MTSleepModeStateMachineState *)self nextSleepModeEndDate];
            v11 = [stateMachine5 onStateWithSleepModeEndDate:nextSleepModeEndDate];

            goto LABEL_26;
          }

          v30 = MTLogForCategory(7);
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
          {
            alarmIDString2 = [sleepAlarm alarmIDString];
            v32 = 138543874;
            selfCopy7 = self;
            v34 = 2114;
            v35 = @"sleep mode";
            v36 = 2114;
            v37 = alarmIDString2;
            _os_log_impl(&dword_1B1F9F000, v30, OS_LOG_TYPE_DEFAULT, "%{public}@ waiting 60 seconds before turning on %{public}@ for alarm %{public}@", &v32, 0x20u);
          }

          stateMachine5 = [(MTStateMachineState *)self stateMachine];
          waitingState = [stateMachine5 waitingState];
LABEL_25:
          v11 = waitingState;
LABEL_26:

          goto LABEL_27;
        }

        v22 = MTLogForCategory(7);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          alarmIDString3 = [sleepAlarm alarmIDString];
          v32 = 138543874;
          selfCopy7 = self;
          v34 = 2114;
          v35 = alarmIDString3;
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
          alarmIDString3 = [sleepAlarm alarmIDString];
          v32 = 138544130;
          selfCopy7 = self;
          v34 = 2114;
          v35 = @"sleep mode";
          v36 = 2114;
          v37 = alarmIDString3;
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
        alarmIDString3 = [sleepAlarm alarmIDString];
        v32 = 138543874;
        selfCopy7 = self;
        v34 = 2114;
        v35 = alarmIDString3;
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

    stateMachine5 = [(MTStateMachineState *)self stateMachine];
    waitingState = [stateMachine5 offState];
    goto LABEL_25;
  }

  v9 = MTLogForCategory(7);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v32 = 138543874;
    selfCopy7 = self;
    v34 = 2114;
    v35 = keepOffUntilDate;
    v36 = 2114;
    v37 = @"sleep mode";
    _os_log_impl(&dword_1B1F9F000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ We are before keep off until date: %{public}@, turning off %{public}@ if it's on", &v32, 0x20u);
  }

  sleepAlarm = [(MTStateMachineState *)self stateMachine];
  v11 = [sleepAlarm userRequestedOffStateWithKeepOffUntilDate:keepOffUntilDate];
LABEL_27:

  v28 = *MEMORY[0x1E69E9840];

  return v11;
}

- (void)sleepModeEnabled:(BOOL)enabled userRequested:(BOOL)requested date:(id)date
{
  requestedCopy = requested;
  enabledCopy = enabled;
  v22 = *MEMORY[0x1E69E9840];
  dateCopy = date;
  if (enabledCopy)
  {
    nextSleepModeEndDate = [(MTSleepModeStateMachineState *)self nextSleepModeEndDate];
    stateMachine = [(MTStateMachineState *)self stateMachine];
    stateMachine2 = [(MTStateMachineState *)self stateMachine];
    v12 = [stateMachine2 onStateWithSleepModeEndDate:nextSleepModeEndDate];
  }

  else
  {
    if (!requestedCopy)
    {
      nextSleepModeEndDate = [(MTStateMachineState *)self stateMachine];
      stateMachine3 = [(MTStateMachineState *)self stateMachine];
      offState = [stateMachine3 offState];
      [nextSleepModeEndDate enterState:offState];

      goto LABEL_9;
    }

    nextSleepModeEndDate = [(MTSleepModeStateMachineState *)self nextSleepModeStartDateAfterDate:dateCopy];
    stateMachine4 = [(MTStateMachineState *)self stateMachine];
    currentDate = [stateMachine4 currentDate];
    v16 = [nextSleepModeEndDate mtIsAfterDate:currentDate];

    if (!v16)
    {
      stateMachine = MTLogForCategory(7);
      if (os_log_type_enabled(stateMachine, OS_LOG_TYPE_DEFAULT))
      {
        v20 = 138543362;
        selfCopy = self;
        _os_log_impl(&dword_1B1F9F000, stateMachine, OS_LOG_TYPE_DEFAULT, "%{public}@ ignoring user requested off because it's for previous sleep window", &v20, 0xCu);
      }

      goto LABEL_4;
    }

    stateMachine = [(MTStateMachineState *)self stateMachine];
    stateMachine2 = [(MTStateMachineState *)self stateMachine];
    v12 = [stateMachine2 userRequestedOffStateWithKeepOffUntilDate:nextSleepModeEndDate];
  }

  v13 = v12;
  [stateMachine enterState:v12];

LABEL_4:
LABEL_9:

  v19 = *MEMORY[0x1E69E9840];
}

- (void)userWokeUp
{
  stateMachine = [(MTStateMachineState *)self stateMachine];
  stateMachine2 = [(MTStateMachineState *)self stateMachine];
  offState = [stateMachine2 offState];
  [stateMachine enterState:offState];
}

- (id)nextSleepModeEndDate
{
  stateMachine = [(MTStateMachineState *)self stateMachine];
  currentDate = [stateMachine currentDate];
  v5 = [(MTSleepModeStateMachineState *)self nextSleepModeEndDateAfterDate:currentDate];

  return v5;
}

- (id)nextSleepModeEndDateAfterDate:(id)date
{
  dateCopy = date;
  stateMachine = [(MTStateMachineState *)self stateMachine];
  sleepAlarm = [stateMachine sleepAlarm];
  v7 = [sleepAlarm nextExpectedWakeUpDateAfterDate:dateCopy];

  return v7;
}

- (id)nextSleepModeStartDate
{
  stateMachine = [(MTStateMachineState *)self stateMachine];
  currentDate = [stateMachine currentDate];
  v5 = [(MTSleepModeStateMachineState *)self nextSleepModeStartDateAfterDate:currentDate];

  return v5;
}

- (id)nextSleepModeStartDateAfterDate:(id)date
{
  dateCopy = date;
  stateMachine = [(MTStateMachineState *)self stateMachine];
  sleepAlarm = [stateMachine sleepAlarm];
  v7 = [sleepAlarm nextExpectedBedtimeDateAfterDate:dateCopy];

  return v7;
}

@end