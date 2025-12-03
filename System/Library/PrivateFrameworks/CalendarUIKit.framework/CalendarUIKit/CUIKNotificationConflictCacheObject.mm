@interface CUIKNotificationConflictCacheObject
+ (id)keyForNotification:(id)notification;
@end

@implementation CUIKNotificationConflictCacheObject

+ (id)keyForNotification:(id)notification
{
  v15 = MEMORY[0x1E696AEC0];
  notificationCopy = notification;
  title = [notificationCopy title];
  event = [notificationCopy event];
  calendar = [event calendar];
  title2 = [calendar title];
  event2 = [notificationCopy event];
  startDate = [event2 startDate];
  event3 = [notificationCopy event];
  endDateUnadjustedForLegacyClients = [event3 endDateUnadjustedForLegacyClients];
  event4 = [notificationCopy event];

  v13 = [v15 stringWithFormat:@"%@ %@ %@ %@ %i", title, title2, startDate, endDateUnadjustedForLegacyClients, objc_msgSend(event4, "isDetached")];

  return v13;
}

@end