@interface QueryCache
- (void)cacheClearNotificationWithNotification:(id)notification;
@end

@implementation QueryCache

- (void)cacheClearNotificationWithNotification:(id)notification
{
  notificationCopy = notification;

  sub_1000F1ED0();
}

@end