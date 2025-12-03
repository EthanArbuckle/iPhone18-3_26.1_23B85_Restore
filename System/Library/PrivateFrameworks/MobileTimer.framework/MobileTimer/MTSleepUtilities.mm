@interface MTSleepUtilities
+ (id)alarmFromSleepOccurrence:(id)occurrence scheduleEnabled:(BOOL)enabled keepOffUntilDate:(id)date;
+ (unint64_t)silentModeOptionsForOccurrence:(id)occurrence;
@end

@implementation MTSleepUtilities

+ (id)alarmFromSleepOccurrence:(id)occurrence scheduleEnabled:(BOOL)enabled keepOffUntilDate:(id)date
{
  occurrenceCopy = occurrence;
  dateCopy = date;
  v10 = +[MTAlarm sleepAlarmWithSchedule:](MTMutableAlarm, "sleepAlarmWithSchedule:", [self alarmRepeatScheduleFrom:{objc_msgSend(occurrenceCopy, "weekdays")}]);
  bedtimeComponents = [occurrenceCopy bedtimeComponents];
  [v10 setBedtimeHour:{objc_msgSend(bedtimeComponents, "hour")}];

  bedtimeComponents2 = [occurrenceCopy bedtimeComponents];
  [v10 setBedtimeMinute:{objc_msgSend(bedtimeComponents2, "minute")}];

  wakeUpComponents = [occurrenceCopy wakeUpComponents];
  [v10 setHour:{objc_msgSend(wakeUpComponents, "hour")}];

  wakeUpComponents2 = [occurrenceCopy wakeUpComponents];
  [v10 setMinute:{objc_msgSend(wakeUpComponents2, "minute")}];

  if ([occurrenceCopy isSingleDayOverride])
  {
    wakeUpComponents3 = [occurrenceCopy wakeUpComponents];
    [v10 setDay:{objc_msgSend(wakeUpComponents3, "day")}];

    wakeUpComponents4 = [occurrenceCopy wakeUpComponents];
    [v10 setMonth:{objc_msgSend(wakeUpComponents4, "month")}];

    wakeUpComponents5 = [occurrenceCopy wakeUpComponents];
    [v10 setYear:{objc_msgSend(wakeUpComponents5, "year")}];
  }

  selfCopy = self;
  if (enabled)
  {
    alarmConfiguration = [occurrenceCopy alarmConfiguration];
    [v10 setEnabled:{objc_msgSend(alarmConfiguration, "isEnabled")}];
  }

  else
  {
    [v10 setEnabled:0];
  }

  alarmConfiguration2 = [occurrenceCopy alarmConfiguration];
  toneIdentifier = [alarmConfiguration2 toneIdentifier];
  alarmConfiguration3 = [occurrenceCopy alarmConfiguration];
  vibrationIdentifier = [alarmConfiguration3 vibrationIdentifier];
  alarmConfiguration4 = [occurrenceCopy alarmConfiguration];
  soundVolume = [alarmConfiguration4 soundVolume];
  v25 = [MTSound toneSoundWithIdentifier:toneIdentifier vibrationIdentifer:vibrationIdentifier volume:soundVolume];
  [v10 setSound:v25];

  [v10 setBedtimeReminder:0];
  [v10 setBedtimeReminderMinutes:0];
  [v10 setKeepOffUntilDate:dateCopy];

  alarmConfiguration5 = [occurrenceCopy alarmConfiguration];
  [v10 setAllowsSnooze:{objc_msgSend(alarmConfiguration5, "allowsSnooze")}];

  alarmConfiguration6 = [occurrenceCopy alarmConfiguration];
  [alarmConfiguration6 snoozeDuration];
  v29 = vcvtmd_u64_f64(v28 / 60.0);

  if (v29 - 1 >= 0xF)
  {
    v30 = MTLogForCategory(7);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      [MTSleepUtilities alarmFromSleepOccurrence:selfCopy scheduleEnabled:occurrenceCopy keepOffUntilDate:v30];
    }

    [v10 setSnoozeDuration:9];
  }

  else
  {
    [v10 setSnoozeDuration:v29];
  }

  [v10 setSilentModeOptions:{objc_msgSend(objc_opt_class(), "silentModeOptionsForOccurrence:", occurrenceCopy)}];
  v31 = [v10 copy];

  return v31;
}

+ (unint64_t)silentModeOptionsForOccurrence:(id)occurrence
{
  occurrenceCopy = occurrence;
  alarmConfiguration = [occurrenceCopy alarmConfiguration];
  v5 = [alarmConfiguration breaksThroughSilentModeOptions] & 2;

  alarmConfiguration2 = [occurrenceCopy alarmConfiguration];

  LOBYTE(occurrenceCopy) = [alarmConfiguration2 breaksThroughSilentModeOptions];
  return v5 & 0xFFFFFFFFFFFFFFFELL | occurrenceCopy & 1;
}

+ (void)alarmFromSleepOccurrence:(uint64_t)a1 scheduleEnabled:(void *)a2 keepOffUntilDate:(NSObject *)a3 .cold.1(uint64_t a1, void *a2, NSObject *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = [a2 alarmConfiguration];
  [v5 snoozeDuration];
  v8 = 138543618;
  v9 = a1;
  v10 = 2050;
  v11 = v6;
  _os_log_error_impl(&dword_1B1F9F000, a3, OS_LOG_TYPE_ERROR, "%{public}@ Received invalid snooze duration from Sleep: %{public}f@. Defaulting to 9mins.", &v8, 0x16u);

  v7 = *MEMORY[0x1E69E9840];
}

@end