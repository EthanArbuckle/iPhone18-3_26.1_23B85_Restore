@interface HMMTRMutableAccessorySetupPayload
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation HMMTRMutableAccessorySetupPayload

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [HMMTRAccessorySetupPayload allocWithZone:a3];
  v5 = [(HMMTRAccessorySetupPayload *)self setupCode];
  v6 = [(HMMTRAccessorySetupPayload *)self discriminator];
  v7 = [(HMMTRAccessorySetupPayload *)v4 initWithSetupCode:v5 discriminator:v6 isShortDiscriminator:[(HMMTRAccessorySetupPayload *)self hasShortDiscriminator]];

  [(HMMTRAccessorySetupPayload *)v7 setHasShortDiscriminator:[(HMMTRAccessorySetupPayload *)self hasShortDiscriminator]];
  v8 = [(HMMTRAccessorySetupPayload *)self vendorID];
  [(HMMTRAccessorySetupPayload *)v7 setVendorID:v8];

  v9 = [(HMMTRAccessorySetupPayload *)self productID];
  [(HMMTRAccessorySetupPayload *)v7 setProductID:v9];

  v10 = [(HMMTRAccessorySetupPayload *)self deviceTypeID];
  [(HMMTRAccessorySetupPayload *)v7 setDeviceTypeID:v10];

  v11 = [(HMMTRAccessorySetupPayload *)self serialNumber];
  [(HMMTRAccessorySetupPayload *)v7 setSerialNumber:v11];

  v12 = [(HMMTRAccessorySetupPayload *)self setupPayloadString];
  [(HMMTRAccessorySetupPayload *)v7 setSetupPayloadString:v12];

  [(HMMTRAccessorySetupPayload *)v7 setRequiresCustomFlow:[(HMMTRAccessorySetupPayload *)self requiresCustomFlow]];
  return v7;
}

@end