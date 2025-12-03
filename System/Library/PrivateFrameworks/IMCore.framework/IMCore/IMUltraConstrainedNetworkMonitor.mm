@interface IMUltraConstrainedNetworkMonitor
+ (id)sharedInstance;
- (IMUltraConstrainedNetworkMonitor)init;
- (void)networkMonitorDidUpdate:(id)update;
@end

@implementation IMUltraConstrainedNetworkMonitor

+ (id)sharedInstance
{
  if (qword_1ED767510 != -1)
  {
    swift_once();
  }

  v3 = qword_1ED767518;

  return v3;
}

- (IMUltraConstrainedNetworkMonitor)init
{
  *(&self->super.isa + OBJC_IVAR___IMUltraConstrainedNetworkMonitor_isUltraConstrained) = 0;
  v3.receiver = self;
  v3.super_class = IMUltraConstrainedNetworkMonitor;
  return [(IMUltraConstrainedNetworkMonitor *)&v3 init];
}

- (void)networkMonitorDidUpdate:(id)update
{
  updateCopy = update;
  selfCopy = self;
  isUltraConstrained = [updateCopy isUltraConstrained];
  v6 = *(&selfCopy->super.isa + OBJC_IVAR___IMUltraConstrainedNetworkMonitor_isUltraConstrained);
  *(&selfCopy->super.isa + OBJC_IVAR___IMUltraConstrainedNetworkMonitor_isUltraConstrained) = isUltraConstrained;
  sub_1A84A41F0(v6);
}

@end