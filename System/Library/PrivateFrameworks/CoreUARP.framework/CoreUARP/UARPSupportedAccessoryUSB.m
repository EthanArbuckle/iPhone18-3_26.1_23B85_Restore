@interface UARPSupportedAccessoryUSB
- (UARPSupportedAccessoryUSB)init;
@end

@implementation UARPSupportedAccessoryUSB

- (UARPSupportedAccessoryUSB)init
{
  v5.receiver = self;
  v5.super_class = UARPSupportedAccessoryUSB;
  v2 = [(UARPSupportedAccessory *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(UARPSupportedAccessory *)v2 setVendorName:@"Apple Inc."];
    [(UARPSupportedAccessory *)v3 setSupportsInternalSettings:1];
    [(UARPSupportedAccessory *)v3 setUpdateRequiresPowerAssertion:1];
  }

  return v3;
}

@end