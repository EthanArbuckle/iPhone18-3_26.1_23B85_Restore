@interface ParsecSubscriptionManager
- (void)bagChangeNotificationWithNotification:(id)notification;
@end

@implementation ParsecSubscriptionManager

- (void)bagChangeNotificationWithNotification:(id)notification
{
  notificationCopy = notification;
  selfCopy = self;
  sub_100047C54(notificationCopy);
}

@end