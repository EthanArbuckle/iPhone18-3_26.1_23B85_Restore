@interface LACDTODarwinNotificationsController
- (LACDTODarwinNotificationsController)initWithNotificationCenter:(id)a3;
- (void)handleEvent:(id)a3 sender:(id)a4;
@end

@implementation LACDTODarwinNotificationsController

- (LACDTODarwinNotificationsController)initWithNotificationCenter:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = LACDTODarwinNotificationsController;
  v6 = [(LACDTODarwinNotificationsController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_notificationCenter, a3);
  }

  return v7;
}

- (void)handleEvent:(id)a3 sender:(id)a4
{
  v5 = a3;
  if (![v5 rawValue] || objc_msgSend(v5, "rawValue") == 2 || objc_msgSend(v5, "rawValue") == 3)
  {
    [(LACDarwinNotificationCenter *)self->_notificationCenter postNotification:@"com.apple.LocalAuthentication.ratchet.StateDidChange"];
  }
}

@end