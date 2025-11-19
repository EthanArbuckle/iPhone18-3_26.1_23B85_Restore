@interface UARPSupportedAccessoryA2924USB
- (UARPSupportedAccessoryA2924USB)init;
@end

@implementation UARPSupportedAccessoryA2924USB

- (UARPSupportedAccessoryA2924USB)init
{
  v7.receiver = self;
  v7.super_class = UARPSupportedAccessoryA2924USB;
  v2 = [(UARPSupportedAccessoryBeatsUSB *)&v7 init];
  if (v2)
  {
    v3 = +[UARPSupportedAccessoryA2924USB appleModelNumber];
    [(UARPSupportedAccessory *)v2 setAppleModelNumber:v3];

    [(UARPSupportedAccessory *)v2 setModelName:@"Headset"];
    v4 = [[UARPAccessoryHardwareB2PHID alloc] initWithVendorID:+[UARPSupportedAccessoryBeatsUSB vendorID](UARPSupportedAccessoryBeatsUSB productID:"vendorID"), +[UARPSupportedAccessoryA2924USB productID]];
    hwID = v2->hwID;
    v2->hwID = v4;

    [(UARPSupportedAccessory *)v2 setHardwareID:v2->hwID];
  }

  return v2;
}

@end