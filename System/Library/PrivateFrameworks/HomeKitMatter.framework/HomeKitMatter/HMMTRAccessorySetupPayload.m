@interface HMMTRAccessorySetupPayload
+ (BOOL)isValidSetupPayloadURLScheme:(id)a3;
+ (id)shortDescription;
- (BOOL)isEqual:(id)a3;
- (HMMTRAccessorySetupPayload)initWithCHIPSetupPayload:(id)a3 setupPayloadString:(id)a4;
- (HMMTRAccessorySetupPayload)initWithCoder:(id)a3;
- (HMMTRAccessorySetupPayload)initWithSetupCode:(id)a3 discriminator:(id)a4 isShortDiscriminator:(BOOL)a5;
- (HMMTRAccessorySetupPayload)initWithSetupCodeString:(id)a3;
- (HMMTRAccessorySetupPayload)initWithSetupPayloadString:(id)a3;
- (NSString)setupID;
- (id)attributeDescriptions;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)shortDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HMMTRAccessorySetupPayload

- (id)attributeDescriptions
{
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = objc_alloc(MEMORY[0x277D0F778]);
  v5 = [(HMMTRAccessorySetupPayload *)self discriminator];
  v6 = [v4 initWithName:@"Discriminator" value:v5];
  [v3 addObject:v6];

  v7 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMMTRAccessorySetupPayload *)self hasShortDiscriminator];
  v8 = HMFBooleanToString();
  v9 = [v7 initWithName:@"Has Short Discriminator" value:v8];
  [v3 addObject:v9];

  v10 = objc_alloc(MEMORY[0x277D0F778]);
  v11 = [(HMMTRAccessorySetupPayload *)self setupCode];
  v12 = [v10 initWithName:@"Setup Code" value:v11];
  [v3 addObject:v12];

  v13 = objc_alloc(MEMORY[0x277D0F778]);
  v14 = [(HMMTRAccessorySetupPayload *)self setupID];
  v15 = [v13 initWithName:@"Setup ID" value:v14];
  [v3 addObject:v15];

  v16 = [(HMMTRAccessorySetupPayload *)self vendorID];

  if (v16)
  {
    v17 = objc_alloc(MEMORY[0x277D0F778]);
    v18 = [(HMMTRAccessorySetupPayload *)self vendorID];
    v19 = [v17 initWithName:@"Vendor ID" value:v18];
    [v3 addObject:v19];
  }

  v20 = [(HMMTRAccessorySetupPayload *)self productID];

  if (v20)
  {
    v21 = objc_alloc(MEMORY[0x277D0F778]);
    v22 = [(HMMTRAccessorySetupPayload *)self productID];
    v23 = [v21 initWithName:@"Product ID" value:v22];
    [v3 addObject:v23];
  }

  v24 = [(HMMTRAccessorySetupPayload *)self deviceTypeID];

  if (v24)
  {
    v25 = objc_alloc(MEMORY[0x277D0F778]);
    v26 = [(HMMTRAccessorySetupPayload *)self deviceTypeID];
    v27 = [v25 initWithName:@"Device Type ID" value:v26];
    [v3 addObject:v27];
  }

  v28 = [(HMMTRAccessorySetupPayload *)self serialNumber];

  if (v28)
  {
    v29 = objc_alloc(MEMORY[0x277D0F778]);
    v30 = [(HMMTRAccessorySetupPayload *)self serialNumber];
    v31 = [v29 initWithName:@"Serial Number" value:v30];
    [v3 addObject:v31];
  }

  v32 = [(HMMTRAccessorySetupPayload *)self setupPayloadString];

  if (v32)
  {
    v33 = objc_alloc(MEMORY[0x277D0F778]);
    v34 = [(HMMTRAccessorySetupPayload *)self setupPayloadString];
    v35 = [v33 initWithName:@"Raw Setup Payload" value:v34];
    [v3 addObject:v35];
  }

  if ([(HMMTRAccessorySetupPayload *)self requiresCustomFlow])
  {
    v36 = objc_alloc(MEMORY[0x277D0F778]);
    [(HMMTRAccessorySetupPayload *)self requiresCustomFlow];
    v37 = HMFBooleanToString();
    v38 = [v36 initWithName:@"Requires Custom Flow" value:v37];
    [v3 addObject:v38];
  }

  v39 = [v3 copy];

  return v39;
}

- (id)shortDescription
{
  v2 = objc_opt_class();

  return [v2 shortDescription];
}

- (HMMTRAccessorySetupPayload)initWithCoder:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"CPASP.ck.setupCode"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"CPASP.ck.discriminator"];
  v7 = v6;
  if (v5)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    v9 = objc_autoreleasePoolPush();
    v12 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v21 = 138543874;
      v22 = v11;
      v23 = 2112;
      v24 = v5;
      v25 = 2112;
      v26 = v7;
      _os_log_impl(&dword_22AEAE000, v10, OS_LOG_TYPE_ERROR, "%{public}@Could not initialize from decoded setupCode: %@ discriminator: %@ ", &v21, 0x20u);
    }

    objc_autoreleasePoolPop(v9);
    v18 = 0;
  }

  else
  {
    v12 = -[HMMTRAccessorySetupPayload initWithSetupCode:discriminator:isShortDiscriminator:](self, "initWithSetupCode:discriminator:isShortDiscriminator:", v5, v6, [v4 decodeBoolForKey:@"CPASP.ck.hasShortDiscriminator"]);
    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"CPASP.ck.vendorID"];
    [(HMMTRAccessorySetupPayload *)v12 setVendorID:v13];

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"CPASP.ck.productID"];
    [(HMMTRAccessorySetupPayload *)v12 setProductID:v14];

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"CPASP.ck.deviceTypeID"];
    [(HMMTRAccessorySetupPayload *)v12 setDeviceTypeID:v15];

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"CPASP.ck.serialNumber"];
    [(HMMTRAccessorySetupPayload *)v12 setSerialNumber:v16];

    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"CPASP.ck.setupPayloadString"];
    [(HMMTRAccessorySetupPayload *)v12 setSetupPayloadString:v17];

    -[HMMTRAccessorySetupPayload setRequiresCustomFlow:](v12, "setRequiresCustomFlow:", [v4 decodeBoolForKey:@"CPASP.ck.requiresCustomFlow"]);
    v18 = v12;
  }

  v19 = *MEMORY[0x277D85DE8];
  return v18;
}

- (void)encodeWithCoder:(id)a3
{
  v11 = a3;
  v4 = [(HMMTRAccessorySetupPayload *)self setupCode];
  [v11 encodeObject:v4 forKey:@"CPASP.ck.setupCode"];

  v5 = [(HMMTRAccessorySetupPayload *)self discriminator];
  [v11 encodeObject:v5 forKey:@"CPASP.ck.discriminator"];

  [v11 encodeBool:-[HMMTRAccessorySetupPayload hasShortDiscriminator](self forKey:{"hasShortDiscriminator"), @"CPASP.ck.hasShortDiscriminator"}];
  v6 = [(HMMTRAccessorySetupPayload *)self vendorID];
  [v11 encodeObject:v6 forKey:@"CPASP.ck.vendorID"];

  v7 = [(HMMTRAccessorySetupPayload *)self productID];
  [v11 encodeObject:v7 forKey:@"CPASP.ck.productID"];

  v8 = [(HMMTRAccessorySetupPayload *)self deviceTypeID];
  [v11 encodeObject:v8 forKey:@"CPASP.ck.deviceTypeID"];

  v9 = [(HMMTRAccessorySetupPayload *)self serialNumber];
  [v11 encodeObject:v9 forKey:@"CPASP.ck.serialNumber"];

  v10 = [(HMMTRAccessorySetupPayload *)self setupPayloadString];
  [v11 encodeObject:v10 forKey:@"CPASP.ck.setupPayloadString"];

  [v11 encodeBool:-[HMMTRAccessorySetupPayload requiresCustomFlow](self forKey:{"requiresCustomFlow"), @"CPASP.ck.requiresCustomFlow"}];
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [HMMTRMutableAccessorySetupPayload allocWithZone:a3];
  v5 = [(HMMTRAccessorySetupPayload *)self setupCode];
  v6 = [(HMMTRAccessorySetupPayload *)self discriminator];
  v7 = [(HMMTRAccessorySetupPayload *)v4 initWithSetupCode:v5 discriminator:v6 isShortDiscriminator:[(HMMTRAccessorySetupPayload *)self hasShortDiscriminator]];

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

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

+ (BOOL)isValidSetupPayloadURLScheme:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 isEqualToString:@"CH"])
  {
    v5 = objc_autoreleasePoolPush();
    v6 = a1;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      v12 = 138543362;
      v13 = v8;
      _os_log_impl(&dword_22AEAE000, v7, OS_LOG_TYPE_INFO, "%{public}@Legacy Matter prefix 'CH' detected, support will be removed in the future.", &v12, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
    v9 = 1;
  }

  else
  {
    v9 = [v4 isEqualToString:@"MT"];
  }

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

- (unint64_t)hash
{
  v2 = [(HMMTRAccessorySetupPayload *)self setupCode];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  if (v6)
  {
    v7 = [(HMMTRAccessorySetupPayload *)self setupCode];
    v8 = [v6 setupCode];
    if ([v7 isEqualToNumber:v8])
    {
      v9 = [(HMMTRAccessorySetupPayload *)self discriminator];
      v10 = [v6 discriminator];
      if (![v9 isEqualToNumber:v10])
      {
        goto LABEL_16;
      }

      v11 = [(HMMTRAccessorySetupPayload *)self hasShortDiscriminator];
      if (v11 != [v6 hasShortDiscriminator])
      {
        goto LABEL_16;
      }

      v12 = [(HMMTRAccessorySetupPayload *)self vendorID];
      v13 = [v6 vendorID];
      v14 = HMFEqualObjects();

      if (!v14)
      {
        goto LABEL_16;
      }

      v15 = [(HMMTRAccessorySetupPayload *)self productID];
      v16 = [v6 productID];
      v17 = HMFEqualObjects();

      if (!v17)
      {
        goto LABEL_16;
      }

      v18 = [(HMMTRAccessorySetupPayload *)self deviceTypeID];
      v19 = [v6 deviceTypeID];
      v20 = HMFEqualObjects();

      if (!v20)
      {
        goto LABEL_16;
      }

      v21 = [(HMMTRAccessorySetupPayload *)self serialNumber];
      v22 = [v6 serialNumber];
      v23 = HMFEqualObjects();

      if (!v23)
      {
        goto LABEL_16;
      }

      v24 = [(HMMTRAccessorySetupPayload *)self setupPayloadString];
      v25 = [v6 setupPayloadString];
      v26 = HMFEqualObjects();

      if (v26)
      {
        v27 = [(HMMTRAccessorySetupPayload *)self requiresCustomFlow];
        v28 = v27 ^ [v6 requiresCustomFlow] ^ 1;
      }

      else
      {
LABEL_16:
        LOBYTE(v28) = 0;
      }
    }

    else
    {
      LOBYTE(v28) = 0;
    }
  }

  else
  {
    LOBYTE(v28) = 0;
  }

  return v28;
}

- (NSString)setupID
{
  v3 = [(HMMTRAccessorySetupPayload *)self setupCode];
  v4 = [(HMMTRAccessorySetupPayload *)self discriminator];
  v5 = [HMMTRUtilities setupIDFromSetupCode:v3 discriminator:v4];

  return v5;
}

- (HMMTRAccessorySetupPayload)initWithSetupCode:(id)a3 discriminator:(id)a4 isShortDiscriminator:(BOOL)a5
{
  v9 = a3;
  v10 = a4;
  if (!v9)
  {
    _HMFPreconditionFailure();
    goto LABEL_7;
  }

  v11 = v10;
  if (!v10)
  {
LABEL_7:
    v15 = _HMFPreconditionFailure();
    return [(HMMTRAccessorySetupPayload *)v15 initWithSetupCode:v16 discriminator:v17, v18];
  }

  v19.receiver = self;
  v19.super_class = HMMTRAccessorySetupPayload;
  v12 = [(HMMTRAccessorySetupPayload *)&v19 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_setupCode, a3);
    objc_storeStrong(&v13->_discriminator, a4);
    v13->_hasShortDiscriminator = a5;
  }

  return v13;
}

- (HMMTRAccessorySetupPayload)initWithCHIPSetupPayload:(id)a3 setupPayloadString:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 setUpPINCode];
  v9 = [v6 discriminator];
  v10 = -[HMMTRAccessorySetupPayload initWithSetupCode:discriminator:isShortDiscriminator:](self, "initWithSetupCode:discriminator:isShortDiscriminator:", v8, v9, [v6 hasShortDiscriminator]);

  v11 = [v6 vendorID];
  [(HMMTRAccessorySetupPayload *)v10 setVendorID:v11];

  v12 = [v6 productID];
  [(HMMTRAccessorySetupPayload *)v10 setProductID:v12];

  v13 = [v6 serialNumber];
  [(HMMTRAccessorySetupPayload *)v10 setSerialNumber:v13];

  if (!v7)
  {
    v18 = 0;
    v14 = [v6 qrCodeString:&v18];
    if (!v14)
    {
      v14 = [v6 manualEntryCode];
    }

    v7 = v14;
  }

  [(HMMTRAccessorySetupPayload *)v10 setSetupPayloadString:v7];
  -[HMMTRAccessorySetupPayload setRequiresCustomFlow:](v10, "setRequiresCustomFlow:", [v6 commissioningFlow] == 2);
  v15 = [v6 rendezvousInformation];
  v16 = v15;
  if (v15)
  {
    -[HMMTRAccessorySetupPayload setSupportsBLE:](v10, "setSupportsBLE:", ([v15 unsignedIntegerValue] >> 1) & 1);
    -[HMMTRAccessorySetupPayload setSupportsSoftAP:](v10, "setSupportsSoftAP:", [v16 unsignedIntegerValue] & 1);
    -[HMMTRAccessorySetupPayload setSupportsIP:](v10, "setSupportsIP:", ([v16 unsignedIntegerValue] >> 2) & 1);
  }

  return v10;
}

- (HMMTRAccessorySetupPayload)initWithSetupPayloadString:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!v4)
  {
    _HMFPreconditionFailure();
  }

  v5 = v4;
  v6 = [objc_alloc(MEMORY[0x277CD5488]) initWithBase38Representation:v4];
  v16 = 0;
  v7 = [v6 populatePayload:&v16];
  v8 = v16;
  if (v7)
  {
    v9 = [(HMMTRAccessorySetupPayload *)self initWithCHIPSetupPayload:v7 setupPayloadString:v5];
    v10 = v9;
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    v9 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543874;
      v18 = v13;
      v19 = 2112;
      v20 = v5;
      v21 = 2112;
      v22 = v8;
      _os_log_impl(&dword_22AEAE000, v12, OS_LOG_TYPE_ERROR, "%{public}@Failed to parse CHIP setup payload from setup payload string %@: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v11);
    v10 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v10;
}

- (HMMTRAccessorySetupPayload)initWithSetupCodeString:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!v4)
  {
    _HMFPreconditionFailure();
  }

  v5 = v4;
  v6 = [objc_alloc(MEMORY[0x277CD5428]) initWithDecimalStringRepresentation:v4];
  v16 = 0;
  v7 = [v6 populatePayload:&v16];
  v8 = v16;
  if (v7)
  {
    v9 = [(HMMTRAccessorySetupPayload *)self initWithCHIPSetupPayload:v7 setupPayloadString:v5];
    v10 = v9;
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    v9 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543874;
      v18 = v13;
      v19 = 2112;
      v20 = v5;
      v21 = 2112;
      v22 = v8;
      _os_log_impl(&dword_22AEAE000, v12, OS_LOG_TYPE_ERROR, "%{public}@Failed to parse CHIP setup payload from decimal string %@: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v11);
    v10 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v10;
}

@end