@interface UARPSupportedAccessoryA3211USB
- (UARPSupportedAccessoryA3211USB)init;
@end

@implementation UARPSupportedAccessoryA3211USB

- (UARPSupportedAccessoryA3211USB)init
{
  v7.receiver = self;
  v7.super_class = UARPSupportedAccessoryA3211USB;
  v2 = [(UARPSupportedAccessoryBeatsUSB *)&v7 init];
  if (v2)
  {
    v3 = +[UARPSupportedAccessoryA3211USB appleModelNumber];
    [(UARPSupportedAccessory *)v2 setAppleModelNumber:v3];

    [(UARPSupportedAccessory *)v2 setModelName:@"Speaker"];
    v4 = [[UARPAccessoryHardwareB2PHID alloc] initWithVendorID:+[UARPSupportedAccessoryBeatsUSB vendorID](UARPSupportedAccessoryBeatsUSB productID:"vendorID"), +[UARPSupportedAccessoryA3211USB productID]];
    hwID = v2->hwID;
    v2->hwID = v4;

    [(UARPSupportedAccessory *)v2 setHardwareID:v2->hwID];
  }

  return v2;
}

@end