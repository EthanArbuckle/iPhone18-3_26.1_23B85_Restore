@interface COMeshControllerQueuedNotification
- (COMeshControllerQueuedNotification)initWithNotification:(id)notification destination:(id)destination;
@end

@implementation COMeshControllerQueuedNotification

- (COMeshControllerQueuedNotification)initWithNotification:(id)notification destination:(id)destination
{
  notificationCopy = notification;
  destinationCopy = destination;
  v12.receiver = self;
  v12.super_class = COMeshControllerQueuedNotification;
  v9 = [(COMeshControllerQueuedNotification *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_notification, notification);
    objc_storeStrong(&v10->_destination, destination);
  }

  return v10;
}

@end