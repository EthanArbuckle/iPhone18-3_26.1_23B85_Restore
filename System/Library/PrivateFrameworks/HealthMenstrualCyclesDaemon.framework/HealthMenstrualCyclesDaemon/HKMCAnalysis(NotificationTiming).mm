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
  menstruationProjections = [self menstruationProjections];
  firstObject = [menstruationProjections firstObject];

  if (!firstObject)
  {
    goto LABEL_4;
  }

  if ([firstObject isPartiallyLogged])
  {
    menstruationProjections2 = [self menstruationProjections];
    v5 = [menstruationProjections2 count];

    if (v5 < 2)
    {
LABEL_4:
      v6 = 0;
      goto LABEL_7;
    }

    menstruationProjections3 = [self menstruationProjections];
    v8 = [menstruationProjections3 objectAtIndexedSubscript:1];

    firstObject = v8;
  }

  v6 = firstObject;
  firstObject = v6;
LABEL_7:

  return v6;
}

- (HDMCNotification)hdmc_beforePeriodStartNotification
{
  _hdmc_firstPeriodStartProjection = [self _hdmc_firstPeriodStartProjection];
  v2 = _hdmc_firstPeriodStartProjection;
  if (_hdmc_firstPeriodStartProjection)
  {
    startDayRange = [_hdmc_firstPeriodStartProjection startDayRange];
    v4 = [HDMCNotification alloc];
    v5 = HKMCNotificationCategoryBeforePeriodStartForDays();
    v6 = [(HDMCNotification *)v4 initWithFireOnDayIndex:startDayRange - 1 category:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (HDMCNotification)hdmc_afterPeriodStartNotification
{
  _hdmc_firstPeriodStartProjection = [self _hdmc_firstPeriodStartProjection];
  v2 = _hdmc_firstPeriodStartProjection;
  if (_hdmc_firstPeriodStartProjection)
  {
    mostLikelyDays = [_hdmc_firstPeriodStartProjection mostLikelyDays];
    v4 = [HDMCNotification alloc];
    v5 = [(HDMCNotification *)v4 initWithFireOnDayIndex:mostLikelyDays + 4 category:*MEMORY[0x277D118D0]];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (HDMCNotification)hdmc_afterPeriodEndNotification
{
  menstruationProjections = [self menstruationProjections];
  firstObject = [menstruationProjections firstObject];

  if (!firstObject)
  {
    goto LABEL_6;
  }

  if ([firstObject isPartiallyLogged])
  {
    statistics = [self statistics];
    cycleLengthMedian = [statistics cycleLengthMedian];
    if (cycleLengthMedian)
    {
      v6 = cycleLengthMedian;
      lastMenstrualFlowDayIndex = [self lastMenstrualFlowDayIndex];

      if (lastMenstrualFlowDayIndex)
      {
        lastMenstrualFlowDayIndex2 = [self lastMenstrualFlowDayIndex];
        integerValue = [lastMenstrualFlowDayIndex2 integerValue];
        v10 = integerValue - [firstObject mostLikelyDays] + 1;

        statistics2 = [self statistics];
        menstruationLengthMedian = [statistics2 menstruationLengthMedian];
        v13 = [menstruationLengthMedian integerValue] - 1;

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

  isPartiallyLogged = [firstObject isPartiallyLogged];
  v16 = MEMORY[0x277D118C8];
  if (!isPartiallyLogged)
  {
    v16 = MEMORY[0x277D118D8];
  }

  v17 = *v16;
  v14 = -[HDMCNotification initWithFireOnDayIndex:category:]([HDMCNotification alloc], "initWithFireOnDayIndex:category:", [firstObject dayIndexFromEndWithCoefficient:2.2], v17);

LABEL_11:

  return v14;
}

- (HDMCNotification)hdmc_beforeFertileWindowStartNotification
{
  fertileWindowProjections = [self fertileWindowProjections];
  firstObject = [fertileWindowProjections firstObject];

  if (firstObject)
  {
    v3 = [HDMCNotification alloc];
    allDays = [firstObject allDays];
    v5 = [(HDMCNotification *)v3 initWithFireOnDayIndex:allDays - 3 category:*MEMORY[0x277D118E0]];
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
  fertileWindowProjections = [self fertileWindowProjections];
  firstObject = [fertileWindowProjections firstObject];

  if (!firstObject || ![firstObject daysOffsetFromCalendarMethod] || objc_msgSend(firstObject, "daysOffsetFromCalendarMethod") && objc_msgSend(firstObject, "predictionPrimarySource") != 2)
  {
    v29 = 0;
    goto LABEL_21;
  }

  hk_gregorianCalendar = [MEMORY[0x277CBEA80] hk_gregorianCalendar];
  v14 = [hk_gregorianCalendar hkmc_nextDateAfterDate:v8 matchingHourComponents:v10];
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

  v18 = [v14 hk_dayIndexWithCalendar:hk_gregorianCalendar];
  if (v9 && v18 - [v9 hk_dayIndexWithCalendar:hk_gregorianCalendar] <= 9)
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

  allDays = [firstObject allDays];
  [firstObject allDays];
  v21 = allDays + v20 - 1;
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
  v29 = -[HDMCNotification initWithFireOnDayIndex:category:fertileWindowEndDayIndex:daysShifted:](v30, "initWithFireOnDayIndex:category:fertileWindowEndDayIndex:daysShifted:", v18, *MEMORY[0x277D118F8], v21, [firstObject daysOffsetFromCalendarMethod]);
LABEL_20:

LABEL_21:
  v34 = *MEMORY[0x277D85DE8];

  return v29;
}

- (BOOL)isEarliestNotificationScheduledAfterDate:()NotificationTiming gregorianCalendar:
{
  v6 = a3;
  v7 = a4;
  menstruationProjections = [self menstruationProjections];
  firstObject = [menstruationProjections firstObject];

  if (firstObject)
  {
    v10 = [firstObject startDayRange] - 1;
    v11 = [v6 hk_dayIndexWithCalendar:v7] < v10;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end