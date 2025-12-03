@interface EngagedCompletionSQLCache
- (void)bagChangeNotificationWithNotification:(id)notification;
@end

@implementation EngagedCompletionSQLCache

- (void)bagChangeNotificationWithNotification:(id)notification
{
  notificationCopy = notification;

  sub_10005A050(notificationCopy);
}

@end