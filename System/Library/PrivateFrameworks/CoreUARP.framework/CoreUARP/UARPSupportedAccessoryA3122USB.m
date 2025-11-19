@interface UARPSupportedAccessoryA3122USB
- (UARPSupportedAccessoryA3122USB)init;
@end

@implementation UARPSupportedAccessoryA3122USB

- (UARPSupportedAccessoryA3122USB)init
{
  v7.receiver = self;
  v7.super_class = UARPSupportedAccessoryA3122USB;
  v2 = [(UARPSupportedAccessoryAirPodsCaseUSB *)&v7 init];
  if (v2)
  {
    v3 = +[UARPSupportedAccessoryA3122USB appleModelNumber];
    [(UARPSupportedAccessory *)v2 setAppleModelNumber:v3];

    [(UARPSupportedAccessory *)v2 setModelName:@"AirPods Pro Case"];
    v4 = [[UARPAccessoryHardwareUSB alloc] initWithVendorID:+[UARPSupportedAccessoryAirPodsCaseUSB vendorID](UARPSupportedAccessoryAirPodsCaseUSB productID:"vendorID"), +[UARPSupportedAccessoryA3122USB productID]];
    hwID = v2->hwID;
    v2->hwID = v4;

    [(UARPSupportedAccessory *)v2 setHardwareID:v2->hwID];
  }

  return v2;
}

@end