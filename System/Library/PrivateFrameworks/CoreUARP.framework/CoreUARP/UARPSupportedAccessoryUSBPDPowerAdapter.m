@interface UARPSupportedAccessoryUSBPDPowerAdapter
- (UARPSupportedAccessoryUSBPDPowerAdapter)init;
@end

@implementation UARPSupportedAccessoryUSBPDPowerAdapter

- (UARPSupportedAccessoryUSBPDPowerAdapter)init
{
  v5.receiver = self;
  v5.super_class = UARPSupportedAccessoryUSBPDPowerAdapter;
  v2 = [(UARPSupportedAccessoryUSBPD *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(UARPSupportedAccessory *)v2 addServiceBSDNotificationName:@"com.apple.system.powermanagement.poweradapter"];
    [(UARPSupportedAccessory *)v3 setCapabilities:1];
  }

  return v3;
}

@end