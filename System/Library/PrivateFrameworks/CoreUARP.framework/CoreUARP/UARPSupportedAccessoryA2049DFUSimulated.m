@interface UARPSupportedAccessoryA2049DFUSimulated
+ (id)appleModelNumber;
+ (id)modelName;
- (UARPSupportedAccessoryA2049DFUSimulated)init;
@end

@implementation UARPSupportedAccessoryA2049DFUSimulated

- (UARPSupportedAccessoryA2049DFUSimulated)init
{
  v9.receiver = self;
  v9.super_class = UARPSupportedAccessoryA2049DFUSimulated;
  v2 = [(UARPSupportedAccessoryUSB *)&v9 init];
  if (v2)
  {
    v3 = +[UARPSupportedAccessoryA2049DFUSimulated appleModelNumber];
    [(UARPSupportedAccessory *)v2 setAppleModelNumber:v3];

    v4 = +[UARPSupportedAccessoryA2049DFUSimulated modelName];
    [(UARPSupportedAccessory *)v2 setModelName:v4];

    [(UARPSupportedAccessory *)v2 setDfuMode:1];
    [(UARPSupportedAccessory *)v2 setIsSimulator:1];
    v5 = +[UARPSupportedAccessoryA2049 appleModelNumber];
    [(UARPSupportedAccessory *)v2 setMobileAssetAppleModelNumber:v5];

    v6 = [[UARPAccessoryHardwareUSB alloc] initWithVendorID:+[UARPSupportedAccessoryA2049Simulated vendorID](UARPSupportedAccessoryA2049Simulated productID:"vendorID"), +[UARPSupportedAccessoryA2049DFUSimulated productID]];
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
  v4 = [v2 stringWithFormat:@"%@-DFUSIM", v3];

  return v4;
}

+ (id)modelName
{
  v2 = MEMORY[0x277CCACA8];
  v3 = +[UARPSupportedAccessoryA2049DFU modelName];
  v4 = [v2 stringWithFormat:@"%@ [Simulator]", v3];

  return v4;
}

@end