@interface UARPSupportedAccessoryA2968USB
- (UARPSupportedAccessoryA2968USB)init;
@end

@implementation UARPSupportedAccessoryA2968USB

- (UARPSupportedAccessoryA2968USB)init
{
  v7.receiver = self;
  v7.super_class = UARPSupportedAccessoryA2968USB;
  v2 = [(UARPSupportedAccessoryAirPodsCaseUSB *)&v7 init];
  if (v2)
  {
    v3 = +[UARPSupportedAccessoryA2968USB appleModelNumber];
    [(UARPSupportedAccessory *)v2 setAppleModelNumber:v3];

    [(UARPSupportedAccessory *)v2 setModelName:@"AirPods Pro 2 Case"];
    v4 = [[UARPAccessoryHardwareUSB alloc] initWithVendorID:+[UARPSupportedAccessoryAirPodsCaseUSB vendorID](UARPSupportedAccessoryAirPodsCaseUSB productID:"vendorID"), +[UARPSupportedAccessoryA2968USB productID]];
    hwID = v2->hwID;
    v2->hwID = v4;

    [(UARPSupportedAccessory *)v2 setHardwareID:v2->hwID];
  }

  return v2;
}

@end