@interface OverlayCallCenter
- (void)callCenterCallStatusChangedWithNotification:(id)notification;
@end

@implementation OverlayCallCenter

- (void)callCenterCallStatusChangedWithNotification:(id)notification
{
  notificationCopy = notification;

  sub_24F1D5B7C(notificationCopy);
}

@end