@interface UARPSupportedAccessoryd5b67c73d2e5e518
+ (id)appleModelNumber;
- (UARPSupportedAccessoryd5b67c73d2e5e518)init;
- (id)description;
@end

@implementation UARPSupportedAccessoryd5b67c73d2e5e518

- (UARPSupportedAccessoryd5b67c73d2e5e518)init
{
  v8.receiver = self;
  v8.super_class = UARPSupportedAccessoryd5b67c73d2e5e518;
  v2 = [(UARPSupportedAccessoryHID *)&v8 init];
  if (v2)
  {
    v3 = +[UARPSupportedAccessoryd5b67c73d2e5e518 productGroup];
    [(UARPSupportedAccessory *)v2 setProductGroup:v3];

    v4 = +[UARPSupportedAccessoryd5b67c73d2e5e518 productNumber];
    [(UARPSupportedAccessory *)v2 setProductNumber:v4];

    [(UARPSupportedAccessory *)v2 setModelName:@"Unity Remote"];
    [(UARPSupportedAccessory *)v2 setVendorName:@"Universal Electronics Inc."];
    [(UARPSupportedAccessory *)v2 setSupportsInternalSettings:0];
    v5 = [[UARPAccessoryHardwareHID alloc] initWithVendorID:+[UARPSupportedAccessoryd5b67c73d2e5e518 vendorID](UARPSupportedAccessoryd5b67c73d2e5e518 productID:"vendorID"), +[UARPSupportedAccessoryd5b67c73d2e5e518 productID]];
    hwID = v2->hwID;
    v2->hwID = v5;

    [(UARPSupportedAccessory *)v2 setHardwareID:v2->hwID];
  }

  return v2;
}

- (id)description
{
  v3 = objc_opt_new();
  v4 = +[UARPSupportedAccessoryd5b67c73d2e5e518 productGroup];
  v5 = +[UARPSupportedAccessoryd5b67c73d2e5e518 productNumber];
  [v3 appendFormat:@"PG/PN: %@%@, ", v4, v5];

  [v3 appendFormat:@"HardwareID: %@", self->hwID];
  v6 = [MEMORY[0x277CCACA8] stringWithString:v3];

  return v6;
}

+ (id)appleModelNumber
{
  v2 = MEMORY[0x277CCACA8];
  v3 = +[UARPSupportedAccessoryd5b67c73d2e5e518 productGroup];
  v4 = +[UARPSupportedAccessoryd5b67c73d2e5e518 productNumber];
  v5 = [v2 stringWithFormat:@"%@%@", v3, v4];

  return v5;
}

@end