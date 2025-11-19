@interface IMUltraConstrainedNetworkMonitor
+ (id)sharedInstance;
- (IMUltraConstrainedNetworkMonitor)init;
- (void)networkMonitorDidUpdate:(id)a3;
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

- (void)networkMonitorDidUpdate:(id)a3
{
  v4 = a3;
  v7 = self;
  v5 = [v4 isUltraConstrained];
  v6 = *(&v7->super.isa + OBJC_IVAR___IMUltraConstrainedNetworkMonitor_isUltraConstrained);
  *(&v7->super.isa + OBJC_IVAR___IMUltraConstrainedNetworkMonitor_isUltraConstrained) = v5;
  sub_1A84A41F0(v6);
}

@end