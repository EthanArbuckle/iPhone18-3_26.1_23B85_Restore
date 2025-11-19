@interface CALNResourceChangedNotificationDataSourceUtils
+ (id)expirationDateForNotification:(id)a3;
+ (id)launchURLForNotification:(id)a3 inEventStore:(id)a4;
@end

@implementation CALNResourceChangedNotificationDataSourceUtils

+ (id)expirationDateForNotification:(id)a3
{
  v3 = a3;
  if ([v3 changeType] == 3 || objc_msgSend(v3, "changeType") == 4)
  {
    v4 = MEMORY[0x277CBEAA8];
LABEL_4:
    v5 = [v4 distantFuture];
    goto LABEL_5;
  }

  v7 = [v3 endDate];

  v4 = MEMORY[0x277CBEAA8];
  if (!v7)
  {
    goto LABEL_4;
  }

  v8 = [MEMORY[0x277CBEAA8] CalSimulatedDateForNow];
  v9 = [v3 endDate];
  [v9 timeIntervalSinceDate:v8];
  v11 = v10;

  v12 = [MEMORY[0x277CBEAA8] date];
  v13 = [v12 dateByAddingTimeInterval:v11];

  v5 = [v13 dateByAddingTimeInterval:86400.0];

LABEL_5:

  return v5;
}

+ (id)launchURLForNotification:(id)a3 inEventStore:(id)a4
{
  v4 = [a3 resourceChangeFromEventStore:a4];
  v5 = [v4 calendarItem];
  v6 = CUIKLaunchURLForEvent();

  return v6;
}

@end