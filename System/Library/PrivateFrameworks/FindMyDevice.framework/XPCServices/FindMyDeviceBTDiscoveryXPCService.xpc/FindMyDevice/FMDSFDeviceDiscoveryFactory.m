@interface FMDSFDeviceDiscoveryFactory
+ (BOOL)isAutomationActive;
+ (id)deviceDiscovery;
@end

@implementation FMDSFDeviceDiscoveryFactory

+ (BOOL)isAutomationActive
{
  if (qword_100012E70 != -1)
  {
    sub_100003E64();
  }

  v2 = sub_1000012D0();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4[0] = 67109120;
    v4[1] = byte_100012E68;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "FMDAutomationBluetoothDiscovery: isAutomationActive: %d", v4, 8u);
  }

  return byte_100012E68;
}

+ (id)deviceDiscovery
{
  if (+[FMDSFDeviceDiscoveryFactory isAutomationActive])
  {
    v2 = +[FMDAutomationHelperFactory sharedFactory];
    v3 = [v2 automationHelperClassWithName:@"FMDAutomationBluetoothDiscovery"];
  }

  else
  {
    v3 = SFDeviceDiscovery;
  }

  v4 = objc_alloc_init(v3);

  return v4;
}

@end