@interface HKSPSleepStore(MobileTimerUIAdditions)
+ (id)mt_getDetailedAlarmTitleForDate:()MobileTimerUIAdditions calendar:onlyAppliesOnce:;
- (id)mt_sleepMetaDataForUpcomingAlarmInCalendar:()MobileTimerUIAdditions error:;
@end

@implementation HKSPSleepStore(MobileTimerUIAdditions)

- (id)mt_sleepMetaDataForUpcomingAlarmInCalendar:()MobileTimerUIAdditions error:
{
  v31 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = objc_opt_new();
  v26 = 0;
  v8 = [MEMORY[0x277CBEAA8] mtNow];
  v25 = 0;
  v9 = [a1 upcomingResolvedScheduleOccurrenceAfterDate:v8 alarmStatus:&v26 error:&v25];
  v10 = v25;

  v11 = MTLogForCategory();
  v12 = v11;
  if (a4)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [(HKSPSleepStore(MobileTimerUIAdditions) *)a1 mt_sleepMetaDataForUpcomingAlarmInCalendar:v10 error:v12];
    }

    [v7 setDisplaysTime:0];
    v13 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.MobileTimerUI"];
    v14 = [v13 localizedStringForKey:@"SLEEP_ALARM_NONE" value:&stru_286BC5E38 table:@"MobileTimerUI_Burrito"];
    [v7 setMainDescription:v14];
    goto LABEL_18;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v28 = a1;
    v29 = 2114;
    v30 = v9;
    _os_log_impl(&dword_25A0D1000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ upcoming sleep occurrence: %{public}@", buf, 0x16u);
  }

  v15 = [v9 occurrence];
  v16 = [v15 wakeUpComponents];
  [v7 setAlarmComponents:v16];

  if (v26 > 1)
  {
    if (v26 == 2)
    {
      v19 = 1;
      [v7 setDisplaysTime:1];
      goto LABEL_17;
    }

    if (v26 != 3)
    {
      goto LABEL_19;
    }

    [v7 setDisplaysTime:1];
  }

  else
  {
    if (v26)
    {
      if (v26 != 1)
      {
        goto LABEL_19;
      }

      [v7 setDisplaysTime:0];
      v17 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.MobileTimerUI"];
      v18 = [v17 localizedStringForKey:@"SLEEP_ALARM_SKIPPED" value:&stru_286BC5E38 table:@"MobileTimerUI_Burrito"];
      [v7 setMainDescription:v18];

      v19 = 1;
      goto LABEL_17;
    }

    [v7 setDisplaysTime:0];
    v20 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.MobileTimerUI"];
    v21 = [v20 localizedStringForKey:@"SLEEP_ALARM_NONE" value:&stru_286BC5E38 table:@"MobileTimerUI_Burrito"];
    [v7 setMainDescription:v21];
  }

  v19 = 0;
LABEL_17:
  v22 = objc_opt_class();
  v13 = [v9 wakeUpEvent];
  v14 = [v13 dueDate];
  v23 = [v22 mt_getDetailedAlarmTitleForDate:v14 calendar:v6 onlyAppliesOnce:v19];
  [v7 setDetailedDescription:v23];

LABEL_18:
LABEL_19:

  return v7;
}

+ (id)mt_getDetailedAlarmTitleForDate:()MobileTimerUIAdditions calendar:onlyAppliesOnce:
{
  v26 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    v16 = 0;
    goto LABEL_19;
  }

  v9 = [MEMORY[0x277CBEAF8] currentLocale];
  v10 = [v8 hksp_dayPeriodForDate:v7 locale:v9];

  v11 = MTLogForCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v22 = 138543618;
    v23 = v7;
    v24 = 2048;
    v25 = v10;
    _os_log_impl(&dword_25A0D1000, v11, OS_LOG_TYPE_DEFAULT, "wake up date is %{public}@ and time of the day enum is %lu", &v22, 0x16u);
  }

  v12 = [v8 isDateInToday:v7];
  v13 = [v8 isDateInTomorrow:v7];
  if ((v12 & 1) == 0 && !v13)
  {
    v14 = objc_alloc_init(MEMORY[0x277CCA968]);
    [v14 setDateFormat:@"EEEE"];
    v15 = [MEMORY[0x277CBEAF8] currentLocale];
    [v14 setLocale:v15];

    v16 = [v14 stringFromDate:v7];
    v17 = MTLogForCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v22 = 138412290;
      v23 = v16;
      _os_log_impl(&dword_25A0D1000, v17, OS_LOG_TYPE_DEFAULT, "wake up day of the week is %@", &v22, 0xCu);
    }

    goto LABEL_18;
  }

  v18 = objc_opt_new();
  v14 = v18;
  if (v12)
  {
    v19 = @"TODAY_";
  }

  else
  {
    v19 = @"TOMORROW_";
  }

  [v18 appendString:v19];
  if (a5)
  {
    v20 = @"ONLY";
LABEL_16:
    [v14 appendString:v20];
    goto LABEL_17;
  }

  if ((v10 - 1) <= 2)
  {
    v20 = off_2799179D0[v10 - 1];
    goto LABEL_16;
  }

LABEL_17:
  v17 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.MobileTimerUI"];
  v16 = [v17 localizedStringForKey:v14 value:&stru_286BC5E38 table:@"MobileTimerUI_Burrito"];
LABEL_18:

LABEL_19:

  return v16;
}

- (void)mt_sleepMetaDataForUpcomingAlarmInCalendar:()MobileTimerUIAdditions error:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138543618;
  v4 = a1;
  v5 = 2114;
  v6 = a2;
  _os_log_error_impl(&dword_25A0D1000, log, OS_LOG_TYPE_ERROR, "%{public}@ failed to retrieve upcoming sleep occurrence with error: %{public}@", &v3, 0x16u);
}

@end