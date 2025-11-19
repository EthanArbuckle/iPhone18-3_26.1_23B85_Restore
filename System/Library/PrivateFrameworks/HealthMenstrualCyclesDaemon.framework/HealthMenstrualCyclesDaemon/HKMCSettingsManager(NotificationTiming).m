@interface HKMCSettingsManager(NotificationTiming)
- (id)_hdmc_analysisSchedulingWindowStartComponents;
- (id)_hdmc_dateComponentsForNotificationOnDayIndex:()NotificationTiming timeOfDay:;
- (id)hdmc_dateComponentsForFertileWindowNotificationOnDayIndex:()NotificationTiming;
- (id)hdmc_dateComponentsForMenstruationNotificationOnDayIndex:()NotificationTiming;
- (id)hdmc_nextAnalysisSchedulingWindowStartDateAfterDate:()NotificationTiming calendar:;
@end

@implementation HKMCSettingsManager(NotificationTiming)

- (id)hdmc_dateComponentsForMenstruationNotificationOnDayIndex:()NotificationTiming
{
  v5 = [a1 menstruationNotificationTimeOfDay];
  v6 = [a1 _hdmc_dateComponentsForNotificationOnDayIndex:a3 timeOfDay:v5];

  return v6;
}

- (id)hdmc_dateComponentsForFertileWindowNotificationOnDayIndex:()NotificationTiming
{
  v5 = [a1 fertileWindowNotificationTimeOfDay];
  v6 = [a1 _hdmc_dateComponentsForNotificationOnDayIndex:a3 timeOfDay:v5];

  return v6;
}

- (id)_hdmc_dateComponentsForNotificationOnDayIndex:()NotificationTiming timeOfDay:
{
  v5 = MEMORY[0x277CBEAB8];
  v6 = MEMORY[0x277CBEA80];
  v7 = a4;
  v8 = [v6 hk_gregorianCalendar];
  v9 = [v5 hk_componentsWithDayIndex:a3 calendar:v8];

  v10 = [MEMORY[0x277CBEA80] currentCalendar];
  v11 = [v9 hk_translateDateComponentsToCalendar:v10 calendarUnits:30];

  [v11 setHour:{objc_msgSend(v7, "hour")}];
  v12 = [v7 minute];

  [v11 setMinute:v12];

  return v11;
}

- (id)hdmc_nextAnalysisSchedulingWindowStartDateAfterDate:()NotificationTiming calendar:
{
  v6 = a4;
  v7 = a3;
  v8 = [a1 _hdmc_analysisSchedulingWindowStartComponents];
  v9 = [v6 nextDateAfterDate:v7 matchingComponents:v8 options:1024];

  return v9;
}

- (id)_hdmc_analysisSchedulingWindowStartComponents
{
  v2 = [MEMORY[0x277CBEAB8] hk_componentsWithHour:18 minute:30];
  v3 = [MEMORY[0x277CCDD30] sharedBehavior];
  v4 = [v3 isAppleInternalInstall];

  if (v4)
  {
    v5 = [a1 fertileWindowNotificationTimeOfDay];
    v6 = [v5 calendar];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = [MEMORY[0x277CBEA80] currentCalendar];
    }

    v9 = v8;

    v10 = [MEMORY[0x277CBEAA8] date];
    v11 = [v9 nextDateAfterDate:v10 matchingComponents:v5 options:1024];
    v12 = [v11 dateByAddingTimeInterval:-5400.0];
    v13 = [v9 components:96 fromDate:v12];

    v2 = v13;
  }

  return v2;
}

@end