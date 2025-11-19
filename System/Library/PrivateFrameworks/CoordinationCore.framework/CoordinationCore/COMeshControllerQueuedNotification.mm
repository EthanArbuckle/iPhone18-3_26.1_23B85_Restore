@interface COMeshControllerQueuedNotification
- (COMeshControllerQueuedNotification)initWithNotification:(id)a3 destination:(id)a4;
@end

@implementation COMeshControllerQueuedNotification

- (COMeshControllerQueuedNotification)initWithNotification:(id)a3 destination:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = COMeshControllerQueuedNotification;
  v9 = [(COMeshControllerQueuedNotification *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_notification, a3);
    objc_storeStrong(&v10->_destination, a4);
  }

  return v10;
}

@end