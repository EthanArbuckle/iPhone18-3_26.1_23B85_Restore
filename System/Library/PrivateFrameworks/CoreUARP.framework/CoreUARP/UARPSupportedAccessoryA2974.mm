@interface UARPSupportedAccessoryA2974
- (UARPSupportedAccessoryA2974)init;
@end

@implementation UARPSupportedAccessoryA2974

- (UARPSupportedAccessoryA2974)init
{
  v7.receiver = self;
  v7.super_class = UARPSupportedAccessoryA2974;
  v2 = [(UARPSupportedAccessoryMagicKeyboard *)&v7 init];
  if (v2)
  {
    v3 = +[UARPSupportedAccessoryA2974 appleModelNumber];
    [(UARPSupportedAccessory *)v2 setAppleModelNumber:v3];

    [(UARPSupportedAccessory *)v2 setModelName:@"Magic Keyboard"];
    [(UARPSupportedAccessory *)v2 setUpdateRequiresPowerAssertion:1];
    v4 = [[UARPAccessoryHardwareHID alloc] initWithVendorID:+[UARPSupportedAccessoryHID vendorID](UARPSupportedAccessoryMagicKeyboard productID:"vendorID"), +[UARPSupportedAccessoryA2974 productID]];
    hwID = v2->hwID;
    v2->hwID = v4;

    [(UARPSupportedAccessory *)v2 setHardwareID:v2->hwID];
  }

  return v2;
}

@end