@interface UARPSupportedAccessoryA2049Simulated
+ (id)appleModelNumber;
+ (id)modelName;
- (UARPSupportedAccessoryA2049Simulated)init;
@end

@implementation UARPSupportedAccessoryA2049Simulated

- (UARPSupportedAccessoryA2049Simulated)init
{
  v9.receiver = self;
  v9.super_class = UARPSupportedAccessoryA2049Simulated;
  v2 = [(UARPSupportedAccessoryUSB *)&v9 init];
  if (v2)
  {
    v3 = +[UARPSupportedAccessoryA2049Simulated appleModelNumber];
    [(UARPSupportedAccessory *)v2 setAppleModelNumber:v3];

    v4 = +[UARPSupportedAccessoryA2049Simulated modelName];
    [(UARPSupportedAccessory *)v2 setModelName:v4];

    [(UARPSupportedAccessory *)v2 setIsSimulator:1];
    v5 = +[UARPSupportedAccessoryA2049 appleModelNumber];
    [(UARPSupportedAccessory *)v2 setMobileAssetAppleModelNumber:v5];

    v6 = [[UARPAccessoryHardwareUSB alloc] initWithVendorID:+[UARPSupportedAccessoryA2049Simulated vendorID](UARPSupportedAccessoryA2049Simulated productID:"vendorID"), +[UARPSupportedAccessoryA2049Simulated productID]];
    hwID = v2->hwID;
    v2->hwID = v6;

    [(UARPSupportedAccessory *)v2 setHardwareID:v2->hwID];
  }

  return v2;
}

+ (id)appleModelNumber
{
  v2 = MEMORY[0x277CCACA8];
  v3 = +[UARPSupportedAccessoryA2049 appleModelNumber];
  v4 = [v2 stringWithFormat:@"%@-SIM", v3];

  return v4;
}

+ (id)modelName
{
  v2 = MEMORY[0x277CCACA8];
  v3 = +[UARPSupportedAccessoryA2049 modelName];
  v4 = [v2 stringWithFormat:@"%@ [Simulator]", v3];

  return v4;
}

@end