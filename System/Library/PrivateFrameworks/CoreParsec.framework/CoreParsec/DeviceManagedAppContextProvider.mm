@interface DeviceManagedAppContextProvider
- (void)onAppDistUpdateWithNotification:(id)notification;
@end

@implementation DeviceManagedAppContextProvider

- (void)onAppDistUpdateWithNotification:(id)notification
{
  notificationCopy = notification;
  selfCopy = self;
  sub_10004FF5C();
}

@end