@interface UARPSupportedAccessoryA3340
- (UARPSupportedAccessoryA3340)init;
@end

@implementation UARPSupportedAccessoryA3340

- (UARPSupportedAccessoryA3340)init
{
  v7.receiver = self;
  v7.super_class = UARPSupportedAccessoryA3340;
  v2 = [(UARPSupportedAccessoryMagicKeyboard *)&v7 init];
  if (v2)
  {
    v3 = +[UARPSupportedAccessoryA3340 appleModelNumber];
    [(UARPSupportedAccessory *)v2 setAppleModelNumber:v3];

    [(UARPSupportedAccessory *)v2 setModelName:@"Magic Keyboard"];
    [(UARPSupportedAccessory *)v2 setUpdateRequiresPowerAssertion:1];
    v4 = [[UARPAccessoryHardwareHID alloc] initWithVendorID:+[UARPSupportedAccessoryHID vendorID](UARPSupportedAccessoryMagicKeyboard productID:"vendorID"), +[UARPSupportedAccessoryA3340 productID]];
    hwID = v2->hwID;
    v2->hwID = v4;

    [(UARPSupportedAccessory *)v2 setHardwareID:v2->hwID];
  }

  return v2;
}

@end