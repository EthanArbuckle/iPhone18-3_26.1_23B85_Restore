@interface HMCHIPAccessorySetupPayload(HMD)
- (id)chipSetupPayload;
- (uint64_t)initWithCHIPSetupPayload:()HMD;
@end

@implementation HMCHIPAccessorySetupPayload(HMD)

- (id)chipSetupPayload
{
  v2 = objc_alloc(MEMORY[0x277D17B48]);
  v3 = [a1 setupCode];
  v4 = [a1 discriminator];
  v5 = [v2 initWithSetupCode:v3 discriminator:v4];

  [v5 setHasShortDiscriminator:{objc_msgSend(a1, "hasShortDiscriminator")}];
  v6 = [a1 setupPayloadString];
  [v5 setSetupPayloadString:v6];

  v7 = [a1 vendorID];
  [v5 setVendorID:v7];

  v8 = [a1 productID];
  [v5 setProductID:v8];

  v9 = [a1 serialNumber];
  [v5 setSerialNumber:v9];

  [v5 setRequiresCustomFlow:{objc_msgSend(a1, "requiresCustomFlow")}];
  v10 = [a1 deviceTypeID];
  [v5 setDeviceTypeID:v10];

  v11 = [v5 copy];

  return v11;
}

- (uint64_t)initWithCHIPSetupPayload:()HMD
{
  v4 = a3;
  v5 = [v4 setupCode];
  v6 = [v4 discriminator];
  v7 = [a1 initWithSetupCode:v5 discriminator:v6];
  v8 = [v7 mutableCopy];

  [v8 setHasShortDiscriminator:{objc_msgSend(v4, "hasShortDiscriminator")}];
  v9 = [v4 setupPayloadString];
  [v8 setSetupPayloadString:v9];

  v10 = [v4 vendorID];
  [v8 setVendorID:v10];

  v11 = [v4 productID];
  [v8 setProductID:v11];

  v12 = [v4 serialNumber];
  [v8 setSerialNumber:v12];

  [v8 setRequiresCustomFlow:{objc_msgSend(v4, "requiresCustomFlow")}];
  v13 = [v4 deviceTypeID];

  [v8 setDeviceTypeID:v13];
  v14 = [v8 copy];

  return v14;
}

@end