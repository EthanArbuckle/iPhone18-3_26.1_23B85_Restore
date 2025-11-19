@interface BDSNotificationForwarder
- (BDSNotificationForwarder)init;
- (void)_registerForSignificantTimeChangeNotification;
- (void)_unregisterForSignificantTimeChangeNotification;
- (void)dealloc;
@end

@implementation BDSNotificationForwarder

- (BDSNotificationForwarder)init
{
  v5.receiver = self;
  v5.super_class = BDSNotificationForwarder;
  v2 = [(BDSNotificationForwarder *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(BDSNotificationForwarder *)v2 _registerForSignificantTimeChangeNotification];
  }

  return v3;
}

- (void)dealloc
{
  [(BDSNotificationForwarder *)self _unregisterForSignificantTimeChangeNotification];
  v3.receiver = self;
  v3.super_class = BDSNotificationForwarder;
  [(BDSNotificationForwarder *)&v3 dealloc];
}

- (void)_registerForSignificantTimeChangeNotification
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterAddObserver(DarwinNotifyCenter, self, sub_100082C94, @"SignificantTimeChangeNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
}

- (void)_unregisterForSignificantTimeChangeNotification
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"SignificantTimeChangeNotification", 0);
}

@end