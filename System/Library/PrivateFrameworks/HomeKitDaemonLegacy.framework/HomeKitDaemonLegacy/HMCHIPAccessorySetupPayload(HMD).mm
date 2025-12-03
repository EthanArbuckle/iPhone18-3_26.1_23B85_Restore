@interface HMCHIPAccessorySetupPayload(HMD)
- (id)chipSetupPayload;
- (uint64_t)initWithCHIPSetupPayload:()HMD;
@end

@implementation HMCHIPAccessorySetupPayload(HMD)

- (id)chipSetupPayload
{
  v2 = objc_alloc(MEMORY[0x277D17B48]);
  setupCode = [self setupCode];
  discriminator = [self discriminator];
  v5 = [v2 initWithSetupCode:setupCode discriminator:discriminator];

  [v5 setHasShortDiscriminator:{objc_msgSend(self, "hasShortDiscriminator")}];
  setupPayloadString = [self setupPayloadString];
  [v5 setSetupPayloadString:setupPayloadString];

  vendorID = [self vendorID];
  [v5 setVendorID:vendorID];

  productID = [self productID];
  [v5 setProductID:productID];

  serialNumber = [self serialNumber];
  [v5 setSerialNumber:serialNumber];

  [v5 setRequiresCustomFlow:{objc_msgSend(self, "requiresCustomFlow")}];
  deviceTypeID = [self deviceTypeID];
  [v5 setDeviceTypeID:deviceTypeID];

  v11 = [v5 copy];

  return v11;
}

- (uint64_t)initWithCHIPSetupPayload:()HMD
{
  v4 = a3;
  setupCode = [v4 setupCode];
  discriminator = [v4 discriminator];
  v7 = [self initWithSetupCode:setupCode discriminator:discriminator];
  v8 = [v7 mutableCopy];

  [v8 setHasShortDiscriminator:{objc_msgSend(v4, "hasShortDiscriminator")}];
  setupPayloadString = [v4 setupPayloadString];
  [v8 setSetupPayloadString:setupPayloadString];

  vendorID = [v4 vendorID];
  [v8 setVendorID:vendorID];

  productID = [v4 productID];
  [v8 setProductID:productID];

  serialNumber = [v4 serialNumber];
  [v8 setSerialNumber:serialNumber];

  [v8 setRequiresCustomFlow:{objc_msgSend(v4, "requiresCustomFlow")}];
  deviceTypeID = [v4 deviceTypeID];

  [v8 setDeviceTypeID:deviceTypeID];
  v14 = [v8 copy];

  return v14;
}

@end