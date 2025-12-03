@interface CALNResourceChangedNotificationDataSourceUtils
+ (id)expirationDateForNotification:(id)notification;
+ (id)launchURLForNotification:(id)notification inEventStore:(id)store;
@end

@implementation CALNResourceChangedNotificationDataSourceUtils

+ (id)expirationDateForNotification:(id)notification
{
  notificationCopy = notification;
  if ([notificationCopy changeType] == 3 || objc_msgSend(notificationCopy, "changeType") == 4)
  {
    v4 = MEMORY[0x277CBEAA8];
LABEL_4:
    distantFuture = [v4 distantFuture];
    goto LABEL_5;
  }

  endDate = [notificationCopy endDate];

  v4 = MEMORY[0x277CBEAA8];
  if (!endDate)
  {
    goto LABEL_4;
  }

  calSimulatedDateForNow = [MEMORY[0x277CBEAA8] CalSimulatedDateForNow];
  endDate2 = [notificationCopy endDate];
  [endDate2 timeIntervalSinceDate:calSimulatedDateForNow];
  v11 = v10;

  date = [MEMORY[0x277CBEAA8] date];
  v13 = [date dateByAddingTimeInterval:v11];

  distantFuture = [v13 dateByAddingTimeInterval:86400.0];

LABEL_5:

  return distantFuture;
}

+ (id)launchURLForNotification:(id)notification inEventStore:(id)store
{
  v4 = [notification resourceChangeFromEventStore:store];
  calendarItem = [v4 calendarItem];
  v6 = CUIKLaunchURLForEvent();

  return v6;
}

@end