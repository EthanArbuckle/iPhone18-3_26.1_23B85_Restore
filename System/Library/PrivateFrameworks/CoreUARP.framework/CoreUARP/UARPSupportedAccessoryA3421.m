@interface UARPSupportedAccessoryA3421
- (UARPSupportedAccessoryA3421)init;
@end

@implementation UARPSupportedAccessoryA3421

- (UARPSupportedAccessoryA3421)init
{
  v7.receiver = self;
  v7.super_class = UARPSupportedAccessoryA3421;
  v2 = [(UARPSupportedAccessory *)&v7 init];
  if (v2)
  {
    v3 = +[UARPSupportedAccessoryA3421 appleModelNumber];
    [(UARPSupportedAccessory *)v2 setAppleModelNumber:v3];

    [(UARPSupportedAccessory *)v2 setModelName:@"Agnes PRQ1"];
    [(UARPSupportedAccessory *)v2 setSupportsInternalSettings:1];
    [(UARPSupportedAccessory *)v2 addServiceBSDNotificationName:@"com.apple.accessoryUpdater.uarp.fwUpdateNow."];
    v4 = objc_alloc_init(UARPAccessoryHardwareIIC);
    hwID = v2->hwID;
    v2->hwID = v4;

    [(UARPSupportedAccessory *)v2 setHardwareID:v2->hwID];
  }

  return v2;
}

@end