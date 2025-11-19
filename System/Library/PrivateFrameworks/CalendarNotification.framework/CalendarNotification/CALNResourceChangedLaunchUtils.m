@interface CALNResourceChangedLaunchUtils
+ (void)setResourceChangedEventURLForCalendarNotification:(id)a3 onNotificationContent:(id)a4;
@end

@implementation CALNResourceChangedLaunchUtils

+ (void)setResourceChangedEventURLForCalendarNotification:(id)a3 onNotificationContent:(id)a4
{
  v5 = a4;
  v9 = [a3 startDate];
  v6 = MEMORY[0x277CCACA8];
  [v9 timeIntervalSinceReferenceDate];
  v8 = [v6 stringWithFormat:@"calshow:%.0f", v7];
  [v5 setUserInfoValue:v8 forKey:@"kCALNResourceChangedShowEventURLKey"];
}

@end