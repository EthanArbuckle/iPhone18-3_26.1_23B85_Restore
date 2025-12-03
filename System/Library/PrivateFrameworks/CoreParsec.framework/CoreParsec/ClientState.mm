@interface ClientState
- (void)bagChangeNotificationWithNotification:(id)notification;
@end

@implementation ClientState

- (void)bagChangeNotificationWithNotification:(id)notification
{
  notificationCopy = notification;

  sub_1000C399C();
}

@end