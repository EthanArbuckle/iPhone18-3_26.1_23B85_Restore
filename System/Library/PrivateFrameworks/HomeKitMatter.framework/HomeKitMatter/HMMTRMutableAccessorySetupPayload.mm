@interface HMMTRMutableAccessorySetupPayload
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation HMMTRMutableAccessorySetupPayload

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [HMMTRAccessorySetupPayload allocWithZone:zone];
  setupCode = [(HMMTRAccessorySetupPayload *)self setupCode];
  discriminator = [(HMMTRAccessorySetupPayload *)self discriminator];
  v7 = [(HMMTRAccessorySetupPayload *)v4 initWithSetupCode:setupCode discriminator:discriminator isShortDiscriminator:[(HMMTRAccessorySetupPayload *)self hasShortDiscriminator]];

  [(HMMTRAccessorySetupPayload *)v7 setHasShortDiscriminator:[(HMMTRAccessorySetupPayload *)self hasShortDiscriminator]];
  vendorID = [(HMMTRAccessorySetupPayload *)self vendorID];
  [(HMMTRAccessorySetupPayload *)v7 setVendorID:vendorID];

  productID = [(HMMTRAccessorySetupPayload *)self productID];
  [(HMMTRAccessorySetupPayload *)v7 setProductID:productID];

  deviceTypeID = [(HMMTRAccessorySetupPayload *)self deviceTypeID];
  [(HMMTRAccessorySetupPayload *)v7 setDeviceTypeID:deviceTypeID];

  serialNumber = [(HMMTRAccessorySetupPayload *)self serialNumber];
  [(HMMTRAccessorySetupPayload *)v7 setSerialNumber:serialNumber];

  setupPayloadString = [(HMMTRAccessorySetupPayload *)self setupPayloadString];
  [(HMMTRAccessorySetupPayload *)v7 setSetupPayloadString:setupPayloadString];

  [(HMMTRAccessorySetupPayload *)v7 setRequiresCustomFlow:[(HMMTRAccessorySetupPayload *)self requiresCustomFlow]];
  return v7;
}

@end