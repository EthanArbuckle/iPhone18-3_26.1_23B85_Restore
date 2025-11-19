@interface UARPSupportedAccessoryA3085
- (UARPSupportedAccessoryA3085)init;
@end

@implementation UARPSupportedAccessoryA3085

- (UARPSupportedAccessoryA3085)init
{
  v7.receiver = self;
  v7.super_class = UARPSupportedAccessoryA3085;
  v2 = [(UARPSupportedAccessoryPencil *)&v7 init];
  if (v2)
  {
    v3 = +[UARPSupportedAccessoryA3085 appleModelNumber];
    [(UARPSupportedAccessory *)v2 setAppleModelNumber:v3];

    [(UARPSupportedAccessory *)v2 setUpdateRequiresPowerAssertion:1];
    [(UARPSupportedAccessory *)v2 setAutoAppliesStagedFirmware:1];
    v4 = [[UARPAccessoryHardwareHID alloc] initWithVendorID:+[UARPSupportedAccessoryA3085 vendorID](UARPSupportedAccessoryA3085 productID:"vendorID"), +[UARPSupportedAccessoryA3085 productID]];
    hwID = v2->hwID;
    v2->hwID = v4;

    [(UARPSupportedAccessory *)v2 setHardwareID:v2->hwID];
  }

  return v2;
}

@end