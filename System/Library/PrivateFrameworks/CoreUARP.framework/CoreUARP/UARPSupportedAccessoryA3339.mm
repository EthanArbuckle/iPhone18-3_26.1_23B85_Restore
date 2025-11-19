@interface UARPSupportedAccessoryA3339
- (UARPSupportedAccessoryA3339)init;
@end

@implementation UARPSupportedAccessoryA3339

- (UARPSupportedAccessoryA3339)init
{
  v7.receiver = self;
  v7.super_class = UARPSupportedAccessoryA3339;
  v2 = [(UARPSupportedAccessoryMagicKeyboard *)&v7 init];
  if (v2)
  {
    v3 = +[UARPSupportedAccessoryA3339 appleModelNumber];
    [(UARPSupportedAccessory *)v2 setAppleModelNumber:v3];

    [(UARPSupportedAccessory *)v2 setModelName:@"Magic Keyboard"];
    [(UARPSupportedAccessory *)v2 setUpdateRequiresPowerAssertion:1];
    v4 = [[UARPAccessoryHardwareHID alloc] initWithVendorID:+[UARPSupportedAccessoryHID vendorID](UARPSupportedAccessoryMagicKeyboard productID:"vendorID"), +[UARPSupportedAccessoryA3339 productID]];
    hwID = v2->hwID;
    v2->hwID = v4;

    [(UARPSupportedAccessory *)v2 setHardwareID:v2->hwID];
  }

  return v2;
}

@end