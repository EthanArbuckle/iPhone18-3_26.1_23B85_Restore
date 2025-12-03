@interface CALNResourceChangedLaunchUtils
+ (void)setResourceChangedEventURLForCalendarNotification:(id)notification onNotificationContent:(id)content;
@end

@implementation CALNResourceChangedLaunchUtils

+ (void)setResourceChangedEventURLForCalendarNotification:(id)notification onNotificationContent:(id)content
{
  contentCopy = content;
  startDate = [notification startDate];
  v6 = MEMORY[0x277CCACA8];
  [startDate timeIntervalSinceReferenceDate];
  v8 = [v6 stringWithFormat:@"calshow:%.0f", v7];
  [contentCopy setUserInfoValue:v8 forKey:@"kCALNResourceChangedShowEventURLKey"];
}

@end