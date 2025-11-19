@interface UARPSupportedAccessoryA2975
- (UARPSupportedAccessoryA2975)init;
@end

@implementation UARPSupportedAccessoryA2975

- (UARPSupportedAccessoryA2975)init
{
  v7.receiver = self;
  v7.super_class = UARPSupportedAccessoryA2975;
  v2 = [(UARPSupportedAccessoryMagicKeyboard *)&v7 init];
  if (v2)
  {
    v3 = +[UARPSupportedAccessoryA2975 appleModelNumber];
    [(UARPSupportedAccessory *)v2 setAppleModelNumber:v3];

    [(UARPSupportedAccessory *)v2 setModelName:@"Magic Keyboard"];
    [(UARPSupportedAccessory *)v2 setUpdateRequiresPowerAssertion:1];
    v4 = [[UARPAccessoryHardwareHID alloc] initWithVendorID:+[UARPSupportedAccessoryHID vendorID](UARPSupportedAccessoryMagicKeyboard productID:"vendorID"), +[UARPSupportedAccessoryA2975 productID]];
    hwID = v2->hwID;
    v2->hwID = v4;

    [(UARPSupportedAccessory *)v2 setHardwareID:v2->hwID];
  }

  return v2;
}

@end