@interface IAPTransportManager
- (IAPTransportManager)initWithService:(unsigned int)a3 andNotificationPort:(IONotificationPort *)a4;
- (int)accResistorID;
- (void)dealloc;
@end

@implementation IAPTransportManager

- (IAPTransportManager)initWithService:(unsigned int)a3 andNotificationPort:(IONotificationPort *)a4
{
  v13.receiver = self;
  v13.super_class = IAPTransportManager;
  v6 = [(IAPTransportManager *)&v13 init];
  v7 = v6;
  if (v6)
  {
    v6->_accResistorID = -1;
    v6->_notificationPortRef = a4;
    v6->_service = a3;
    v8 = IOObjectRetain(a3);
    if (v8)
    {
      NSLog(@"ERROR - %s:%s - %d IOObjectRetain failed %#x", "/Library/Caches/com.apple.xbs/Sources/iapd/iaptransportd/IAPTransportManager.mm", "[IAPTransportManager initWithService:andNotificationPort:]", 64, v8);
    }

    v9 = IOServiceAddInterestNotification(v7->_notificationPortRef, v7->_service, "IOGeneralInterest", sub_100003CD8, v7, &v7->_notification);
    if (v9)
    {
      NSLog(@"ERROR - %s:%s - %d couldn't add interest notification %#x", "/Library/Caches/com.apple.xbs/Sources/iapd/iaptransportd/IAPTransportManager.mm", "[IAPTransportManager initWithService:andNotificationPort:]", 69, v9);
    }

    v10 = [NSNumber alloc];
    service = v7->_service;
    v7->_portNumber = [v10 initWithInt:IOAccessoryManagerGetPrimaryPort()];
  }

  return v7;
}

- (void)dealloc
{
  service = self->_service;
  if (service)
  {
    IOObjectRelease(service);
    self->_service = 0;
  }

  notification = self->_notification;
  if (notification)
  {
    IOObjectRelease(notification);
    self->_notification = 0;
  }

  v5.receiver = self;
  v5.super_class = IAPTransportManager;
  [(IAPTransportManager *)&v5 dealloc];
}

- (int)accResistorID
{
  if (!self->_service)
  {
    return 100;
  }

  result = self->_accResistorID;
  if (result == -1)
  {
    result = IOAccessoryManagerGetAccessoryID();
    self->_accResistorID = result;
  }

  if (result == -1)
  {
    return 100;
  }

  return result;
}

@end