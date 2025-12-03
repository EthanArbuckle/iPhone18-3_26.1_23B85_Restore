@interface LACDTODarwinNotificationsController
- (LACDTODarwinNotificationsController)initWithNotificationCenter:(id)center;
- (void)handleEvent:(id)event sender:(id)sender;
@end

@implementation LACDTODarwinNotificationsController

- (LACDTODarwinNotificationsController)initWithNotificationCenter:(id)center
{
  centerCopy = center;
  v9.receiver = self;
  v9.super_class = LACDTODarwinNotificationsController;
  v6 = [(LACDTODarwinNotificationsController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_notificationCenter, center);
  }

  return v7;
}

- (void)handleEvent:(id)event sender:(id)sender
{
  eventCopy = event;
  if (![eventCopy rawValue] || objc_msgSend(eventCopy, "rawValue") == 2 || objc_msgSend(eventCopy, "rawValue") == 3)
  {
    [(LACDarwinNotificationCenter *)self->_notificationCenter postNotification:@"com.apple.LocalAuthentication.ratchet.StateDidChange"];
  }
}

@end