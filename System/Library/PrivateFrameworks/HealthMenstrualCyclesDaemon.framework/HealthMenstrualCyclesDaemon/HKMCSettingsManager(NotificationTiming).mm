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
  menstruationNotificationTimeOfDay = [self menstruationNotificationTimeOfDay];
  v6 = [self _hdmc_dateComponentsForNotificationOnDayIndex:a3 timeOfDay:menstruationNotificationTimeOfDay];

  return v6;
}

- (id)hdmc_dateComponentsForFertileWindowNotificationOnDayIndex:()NotificationTiming
{
  fertileWindowNotificationTimeOfDay = [self fertileWindowNotificationTimeOfDay];
  v6 = [self _hdmc_dateComponentsForNotificationOnDayIndex:a3 timeOfDay:fertileWindowNotificationTimeOfDay];

  return v6;
}

- (id)_hdmc_dateComponentsForNotificationOnDayIndex:()NotificationTiming timeOfDay:
{
  v5 = MEMORY[0x277CBEAB8];
  v6 = MEMORY[0x277CBEA80];
  v7 = a4;
  hk_gregorianCalendar = [v6 hk_gregorianCalendar];
  v9 = [v5 hk_componentsWithDayIndex:a3 calendar:hk_gregorianCalendar];

  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  v11 = [v9 hk_translateDateComponentsToCalendar:currentCalendar calendarUnits:30];

  [v11 setHour:{objc_msgSend(v7, "hour")}];
  minute = [v7 minute];

  [v11 setMinute:minute];

  return v11;
}

- (id)hdmc_nextAnalysisSchedulingWindowStartDateAfterDate:()NotificationTiming calendar:
{
  v6 = a4;
  v7 = a3;
  _hdmc_analysisSchedulingWindowStartComponents = [self _hdmc_analysisSchedulingWindowStartComponents];
  v9 = [v6 nextDateAfterDate:v7 matchingComponents:_hdmc_analysisSchedulingWindowStartComponents options:1024];

  return v9;
}

- (id)_hdmc_analysisSchedulingWindowStartComponents
{
  v2 = [MEMORY[0x277CBEAB8] hk_componentsWithHour:18 minute:30];
  mEMORY[0x277CCDD30] = [MEMORY[0x277CCDD30] sharedBehavior];
  isAppleInternalInstall = [mEMORY[0x277CCDD30] isAppleInternalInstall];

  if (isAppleInternalInstall)
  {
    fertileWindowNotificationTimeOfDay = [self fertileWindowNotificationTimeOfDay];
    calendar = [fertileWindowNotificationTimeOfDay calendar];
    v7 = calendar;
    if (calendar)
    {
      currentCalendar = calendar;
    }

    else
    {
      currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
    }

    v9 = currentCalendar;

    date = [MEMORY[0x277CBEAA8] date];
    v11 = [v9 nextDateAfterDate:date matchingComponents:fertileWindowNotificationTimeOfDay options:1024];
    v12 = [v11 dateByAddingTimeInterval:-5400.0];
    v13 = [v9 components:96 fromDate:v12];

    v2 = v13;
  }

  return v2;
}

@end