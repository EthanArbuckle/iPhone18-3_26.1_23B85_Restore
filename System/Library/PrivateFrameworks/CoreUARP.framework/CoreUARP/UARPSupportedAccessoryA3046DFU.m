@interface UARPSupportedAccessoryA3046DFU
+ (id)appleModelNumber;
+ (id)modelName;
- (UARPSupportedAccessoryA3046DFU)init;
@end

@implementation UARPSupportedAccessoryA3046DFU

- (UARPSupportedAccessoryA3046DFU)init
{
  v9.receiver = self;
  v9.super_class = UARPSupportedAccessoryA3046DFU;
  v2 = [(UARPSupportedAccessoryUSB *)&v9 init];
  if (v2)
  {
    v3 = +[UARPSupportedAccessoryA3046DFU appleModelNumber];
    [(UARPSupportedAccessory *)v2 setAppleModelNumber:v3];

    v4 = +[UARPSupportedAccessoryA3046DFU modelName];
    [(UARPSupportedAccessory *)v2 setModelName:v4];

    [(UARPSupportedAccessory *)v2 setDfuMode:1];
    v5 = +[UARPSupportedAccessoryA3046 appleModelNumber];
    [(UARPSupportedAccessory *)v2 setMobileAssetAppleModelNumber:v5];

    v6 = [[UARPAccessoryHardwareUSB alloc] initWithVendorID:+[UARPSupportedAccessoryUSB vendorID](UARPSupportedAccessoryUSB productID:"vendorID"), +[UARPSupportedAccessoryA3046DFU productID]];
    hwID = v2->hwID;
    v2->hwID = v6;

    [(UARPSupportedAccessory *)v2 setHardwareID:v2->hwID];
  }

  return v2;
}

+ (id)appleModelNumber
{
  v2 = MEMORY[0x277CCACA8];
  v3 = +[UARPSupportedAccessoryA3046 appleModelNumber];
  v4 = [v2 stringWithFormat:@"%@-DFU", v3];

  return v4;
}

+ (id)modelName
{
  v2 = MEMORY[0x277CCACA8];
  v3 = +[UARPSupportedAccessoryA3046 modelName];
  v4 = [v2 stringWithFormat:@"%@ (DFU)", v3];

  return v4;
}

@end