@interface UARPSupportedAccessoryA2514
- (UARPSupportedAccessoryA2514)init;
@end

@implementation UARPSupportedAccessoryA2514

- (UARPSupportedAccessoryA2514)init
{
  v7.receiver = self;
  v7.super_class = UARPSupportedAccessoryA2514;
  v2 = [(UARPSupportedAccessoryBeatsUSB *)&v7 init];
  if (v2)
  {
    v3 = +[UARPSupportedAccessoryA2514 appleModelNumber];
    [(UARPSupportedAccessory *)v2 setAppleModelNumber:v3];

    [(UARPSupportedAccessory *)v2 setModelName:@"Studio Case"];
    v4 = [[UARPAccessoryHardwareB2PHID alloc] initWithVendorID:+[UARPSupportedAccessoryBeatsUSB vendorID](UARPSupportedAccessoryBeatsUSB productID:"vendorID"), +[UARPSupportedAccessoryA2514 productID]];
    hwID = v2->hwID;
    v2->hwID = v4;

    [(UARPSupportedAccessory *)v2 setHardwareID:v2->hwID];
  }

  return v2;
}

@end