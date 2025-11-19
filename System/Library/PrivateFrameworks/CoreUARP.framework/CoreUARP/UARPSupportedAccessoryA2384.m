@interface UARPSupportedAccessoryA2384
- (UARPSupportedAccessoryA2384)init;
@end

@implementation UARPSupportedAccessoryA2384

- (UARPSupportedAccessoryA2384)init
{
  v7.receiver = self;
  v7.super_class = UARPSupportedAccessoryA2384;
  v2 = [(UARPSupportedAccessoryMagSafe *)&v7 init];
  if (v2)
  {
    v3 = +[UARPSupportedAccessoryA2384 appleModelNumber];
    [(UARPSupportedAccessory *)v2 setAppleModelNumber:v3];

    [(UARPSupportedAccessory *)v2 setModelName:@"MagSafe Battery Pack"];
    v4 = [[UARPAccessoryHardwareHID alloc] initWithVendorID:+[UARPSupportedAccessoryHID vendorID](UARPSupportedAccessoryHID productID:"vendorID"), +[UARPSupportedAccessoryA2384 productID]];
    hwID = v2->hwID;
    v2->hwID = v4;

    [(UARPSupportedAccessory *)v2 setHardwareID:v2->hwID];
  }

  return v2;
}

@end