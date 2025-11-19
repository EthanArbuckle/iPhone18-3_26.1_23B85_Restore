@interface HKMCAnalysis(NotificationTiming)
- (BOOL)isEarliestNotificationScheduledAfterDate:()NotificationTiming gregorianCalendar:;
- (HDMCNotification)hdmc_afterPeriodEndNotification;
- (HDMCNotification)hdmc_afterPeriodStartNotification;
- (HDMCNotification)hdmc_beforeFertileWindowStartNotification;
- (HDMCNotification)hdmc_beforePeriodStartNotification;
- (HDMCNotification)hdmc_fertileWindowDidUpdateDueToSensorDataNotificationForNotificationFireDate:()NotificationTiming lastFiredDate:fertileWindowNotificationTimeOfDay:;
- (id)_hdmc_firstPeriodStartProjection;
@end

@implementation HKMCAnalysis(NotificationTiming)

- (id)_hdmc_firstPeriodStartProjection
{
  v2 = [a1 menstruationProjections];
  v3 = [v2 firstObject];

  if (!v3)
  {
    goto LABEL_4;
  }

  if ([v3 isPartiallyLogged])
  {
    v4 = [a1 menstruationProjections];
    v5 = [v4 count];

    if (v5 < 2)
    {
LABEL_4:
      v6 = 0;
      goto LABEL_7;
    }

    v7 = [a1 menstruationProjections];
    v8 = [v7 objectAtIndexedSubscript:1];

    v3 = v8;
  }

  v6 = v3;
  v3 = v6;
LABEL_7:

  return v6;
}

- (HDMCNotification)hdmc_beforePeriodStartNotification
{
  v1 = [a1 _hdmc_firstPeriodStartProjection];
  v2 = v1;
  if (v1)
  {
    v3 = [v1 startDayRange];
    v4 = [HDMCNotification alloc];
    v5 = HKMCNotificationCategoryBeforePeriodStartForDays();
    v6 = [(HDMCNotification *)v4 initWithFireOnDayIndex:v3 - 1 category:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (HDMCNotification)hdmc_afterPeriodStartNotification
{
  v1 = [a1 _hdmc_firstPeriodStartProjection];
  v2 = v1;
  if (v1)
  {
    v3 = [v1 mostLikelyDays];
    v4 = [HDMCNotification alloc];
    v5 = [(HDMCNotification *)v4 initWithFireOnDayIndex:v3 + 4 category:*MEMORY[0x277D118D0]];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (HDMCNotification)hdmc_afterPeriodEndNotification
{
  v2 = [a1 menstruationProjections];
  v3 = [v2 firstObject];

  if (!v3)
  {
    goto LABEL_6;
  }

  if ([v3 isPartiallyLogged])
  {
    v4 = [a1 statistics];
    v5 = [v4 cycleLengthMedian];
    if (v5)
    {
      v6 = v5;
      v7 = [a1 lastMenstrualFlowDayIndex];

      if (v7)
      {
        v8 = [a1 lastMenstrualFlowDayIndex];
        v9 = [v8 integerValue];
        v10 = v9 - [v3 mostLikelyDays] + 1;

        v11 = [a1 statistics];
        v12 = [v11 menstruationLengthMedian];
        v13 = [v12 integerValue] - 1;

        if (v10 >= v13)
        {
LABEL_6:
          v14 = 0;
          goto LABEL_11;
        }
      }
    }

    else
    {
    }
  }

  v15 = [v3 isPartiallyLogged];
  v16 = MEMORY[0x277D118C8];
  if (!v15)
  {
    v16 = MEMORY[0x277D118D8];
  }

  v17 = *v16;
  v14 = -[HDMCNotification initWithFireOnDayIndex:category:]([HDMCNotification alloc], "initWithFireOnDayIndex:category:", [v3 dayIndexFromEndWithCoefficient:2.2], v17);

LABEL_11:

  return v14;
}

- (HDMCNotification)hdmc_beforeFertileWindowStartNotification
{
  v1 = [a1 fertileWindowProjections];
  v2 = [v1 firstObject];

  if (v2)
  {
    v3 = [HDMCNotification alloc];
    v4 = [v2 allDays];
    v5 = [(HDMCNotification *)v3 initWithFireOnDayIndex:v4 - 3 category:*MEMORY[0x277D118E0]];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (HDMCNotification)hdmc_fertileWindowDidUpdateDueToSensorDataNotificationForNotificationFireDate:()NotificationTiming lastFiredDate:fertileWindowNotificationTimeOfDay:
{
  v41 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [a1 fertileWindowProjections];
  v12 = [v11 firstObject];

  if (!v12 || ![v12 daysOffsetFromCalendarMethod] || objc_msgSend(v12, "daysOffsetFromCalendarMethod") && objc_msgSend(v12, "predictionPrimarySource") != 2)
  {
    v29 = 0;
    goto LABEL_21;
  }

  v13 = [MEMORY[0x277CBEA80] hk_gregorianCalendar];
  v14 = [v13 hkmc_nextDateAfterDate:v8 matchingHourComponents:v10];
  if (!v14)
  {
    _HKInitializeLogging();
    v15 = *MEMORY[0x277CCC2E8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_DEFAULT))
    {
      v16 = v15;
      *buf = 138543362;
      v38 = objc_opt_class();
      v17 = v38;
      _os_log_impl(&dword_2293D1000, v16, OS_LOG_TYPE_DEFAULT, "[%{public}@] Our next date to fire a notification is nil, defaulting back to today as our next fire date", buf, 0xCu);
    }

    v14 = v8;
  }

  v18 = [v14 hk_dayIndexWithCalendar:v13];
  if (v9 && v18 - [v9 hk_dayIndexWithCalendar:v13] <= 9)
  {
    _HKInitializeLogging();
    v31 = *MEMORY[0x277CCC2E8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_DEFAULT))
    {
      v24 = v31;
      v32 = objc_opt_class();
      *buf = 138543362;
      v38 = v32;
      v33 = v32;
      _os_log_impl(&dword_2293D1000, v24, OS_LOG_TYPE_DEFAULT, "[%{public}@] We have already fired our update fertile window notification within the past 10 days, we are going to skip scheduling another one.", buf, 0xCu);

      goto LABEL_18;
    }

LABEL_19:
    v29 = 0;
    goto LABEL_20;
  }

  v19 = [v12 allDays];
  [v12 allDays];
  v21 = v19 + v20 - 1;
  v22 = v21 - v18;
  if ((v21 - v18) >= 4)
  {
    _HKInitializeLogging();
    v23 = *MEMORY[0x277CCC2E8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_DEFAULT))
    {
      v24 = v23;
      v25 = objc_opt_class();
      v26 = MEMORY[0x277CCABB0];
      v36 = v25;
      v27 = [v26 numberWithInteger:v22];
      v28 = HKSensitiveLogItem();
      *buf = 138543618;
      v38 = v25;
      v39 = 2112;
      v40 = v28;
      _os_log_impl(&dword_2293D1000, v24, OS_LOG_TYPE_DEFAULT, "[%{public}@] The remaining days in our fertile window are: %@, so we will skip scheduling an update fertile window notification", buf, 0x16u);

LABEL_18:
      goto LABEL_19;
    }

    goto LABEL_19;
  }

  v30 = [HDMCNotification alloc];
  v29 = -[HDMCNotification initWithFireOnDayIndex:category:fertileWindowEndDayIndex:daysShifted:](v30, "initWithFireOnDayIndex:category:fertileWindowEndDayIndex:daysShifted:", v18, *MEMORY[0x277D118F8], v21, [v12 daysOffsetFromCalendarMethod]);
LABEL_20:

LABEL_21:
  v34 = *MEMORY[0x277D85DE8];

  return v29;
}

- (BOOL)isEarliestNotificationScheduledAfterDate:()NotificationTiming gregorianCalendar:
{
  v6 = a3;
  v7 = a4;
  v8 = [a1 menstruationProjections];
  v9 = [v8 firstObject];

  if (v9)
  {
    v10 = [v9 startDayRange] - 1;
    v11 = [v6 hk_dayIndexWithCalendar:v7] < v10;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end