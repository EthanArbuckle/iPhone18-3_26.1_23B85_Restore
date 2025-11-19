@interface MTSleepUtilities
+ (id)alarmFromSleepOccurrence:(id)a3 scheduleEnabled:(BOOL)a4 keepOffUntilDate:(id)a5;
+ (unint64_t)silentModeOptionsForOccurrence:(id)a3;
@end

@implementation MTSleepUtilities

+ (id)alarmFromSleepOccurrence:(id)a3 scheduleEnabled:(BOOL)a4 keepOffUntilDate:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = +[MTAlarm sleepAlarmWithSchedule:](MTMutableAlarm, "sleepAlarmWithSchedule:", [a1 alarmRepeatScheduleFrom:{objc_msgSend(v8, "weekdays")}]);
  v11 = [v8 bedtimeComponents];
  [v10 setBedtimeHour:{objc_msgSend(v11, "hour")}];

  v12 = [v8 bedtimeComponents];
  [v10 setBedtimeMinute:{objc_msgSend(v12, "minute")}];

  v13 = [v8 wakeUpComponents];
  [v10 setHour:{objc_msgSend(v13, "hour")}];

  v14 = [v8 wakeUpComponents];
  [v10 setMinute:{objc_msgSend(v14, "minute")}];

  if ([v8 isSingleDayOverride])
  {
    v15 = [v8 wakeUpComponents];
    [v10 setDay:{objc_msgSend(v15, "day")}];

    v16 = [v8 wakeUpComponents];
    [v10 setMonth:{objc_msgSend(v16, "month")}];

    v17 = [v8 wakeUpComponents];
    [v10 setYear:{objc_msgSend(v17, "year")}];
  }

  v33 = a1;
  if (a4)
  {
    v18 = [v8 alarmConfiguration];
    [v10 setEnabled:{objc_msgSend(v18, "isEnabled")}];
  }

  else
  {
    [v10 setEnabled:0];
  }

  v19 = [v8 alarmConfiguration];
  v20 = [v19 toneIdentifier];
  v21 = [v8 alarmConfiguration];
  v22 = [v21 vibrationIdentifier];
  v23 = [v8 alarmConfiguration];
  v24 = [v23 soundVolume];
  v25 = [MTSound toneSoundWithIdentifier:v20 vibrationIdentifer:v22 volume:v24];
  [v10 setSound:v25];

  [v10 setBedtimeReminder:0];
  [v10 setBedtimeReminderMinutes:0];
  [v10 setKeepOffUntilDate:v9];

  v26 = [v8 alarmConfiguration];
  [v10 setAllowsSnooze:{objc_msgSend(v26, "allowsSnooze")}];

  v27 = [v8 alarmConfiguration];
  [v27 snoozeDuration];
  v29 = vcvtmd_u64_f64(v28 / 60.0);

  if (v29 - 1 >= 0xF)
  {
    v30 = MTLogForCategory(7);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      [MTSleepUtilities alarmFromSleepOccurrence:v33 scheduleEnabled:v8 keepOffUntilDate:v30];
    }

    [v10 setSnoozeDuration:9];
  }

  else
  {
    [v10 setSnoozeDuration:v29];
  }

  [v10 setSilentModeOptions:{objc_msgSend(objc_opt_class(), "silentModeOptionsForOccurrence:", v8)}];
  v31 = [v10 copy];

  return v31;
}

+ (unint64_t)silentModeOptionsForOccurrence:(id)a3
{
  v3 = a3;
  v4 = [v3 alarmConfiguration];
  v5 = [v4 breaksThroughSilentModeOptions] & 2;

  v6 = [v3 alarmConfiguration];

  LOBYTE(v3) = [v6 breaksThroughSilentModeOptions];
  return v5 & 0xFFFFFFFFFFFFFFFELL | v3 & 1;
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