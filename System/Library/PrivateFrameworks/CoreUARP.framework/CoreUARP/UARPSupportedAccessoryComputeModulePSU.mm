@interface UARPSupportedAccessoryComputeModulePSU
- (UARPSupportedAccessoryComputeModulePSU)init;
@end

@implementation UARPSupportedAccessoryComputeModulePSU

- (UARPSupportedAccessoryComputeModulePSU)init
{
  v9.receiver = self;
  v9.super_class = UARPSupportedAccessoryComputeModulePSU;
  v2 = [(UARPSupportedAccessoryIP *)&v9 init];
  if (v2)
  {
    v3 = +[UARPSupportedAccessoryComputeModulePSU appleModelNumber];
    [(UARPSupportedAccessory *)v2 setAppleModelNumber:v3];

    v4 = [UARPAccessoryHardwareIPv6 alloc];
    appleModelNumber = [(UARPSupportedAccessory *)v2 appleModelNumber];
    v6 = [(UARPAccessoryHardwareIPv6 *)v4 initWithAppleModelNumber:appleModelNumber];
    hwID = v2->hwID;
    v2->hwID = v6;

    [(UARPSupportedAccessory *)v2 setHardwareID:v2->hwID];
    [(UARPSupportedAccessory *)v2 setSupportsAuthListingInternally:1];
  }

  return v2;
}

@end