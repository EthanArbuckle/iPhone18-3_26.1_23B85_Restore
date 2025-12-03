@interface HMMTRAccessorySetupPayload
+ (BOOL)isValidSetupPayloadURLScheme:(id)scheme;
+ (id)shortDescription;
- (BOOL)isEqual:(id)equal;
- (HMMTRAccessorySetupPayload)initWithCHIPSetupPayload:(id)payload setupPayloadString:(id)string;
- (HMMTRAccessorySetupPayload)initWithCoder:(id)coder;
- (HMMTRAccessorySetupPayload)initWithSetupCode:(id)code discriminator:(id)discriminator isShortDiscriminator:(BOOL)shortDiscriminator;
- (HMMTRAccessorySetupPayload)initWithSetupCodeString:(id)string;
- (HMMTRAccessorySetupPayload)initWithSetupPayloadString:(id)string;
- (NSString)setupID;
- (id)attributeDescriptions;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)shortDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMMTRAccessorySetupPayload

- (id)attributeDescriptions
{
  array = [MEMORY[0x277CBEB18] array];
  v4 = objc_alloc(MEMORY[0x277D0F778]);
  discriminator = [(HMMTRAccessorySetupPayload *)self discriminator];
  v6 = [v4 initWithName:@"Discriminator" value:discriminator];
  [array addObject:v6];

  v7 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMMTRAccessorySetupPayload *)self hasShortDiscriminator];
  v8 = HMFBooleanToString();
  v9 = [v7 initWithName:@"Has Short Discriminator" value:v8];
  [array addObject:v9];

  v10 = objc_alloc(MEMORY[0x277D0F778]);
  setupCode = [(HMMTRAccessorySetupPayload *)self setupCode];
  v12 = [v10 initWithName:@"Setup Code" value:setupCode];
  [array addObject:v12];

  v13 = objc_alloc(MEMORY[0x277D0F778]);
  setupID = [(HMMTRAccessorySetupPayload *)self setupID];
  v15 = [v13 initWithName:@"Setup ID" value:setupID];
  [array addObject:v15];

  vendorID = [(HMMTRAccessorySetupPayload *)self vendorID];

  if (vendorID)
  {
    v17 = objc_alloc(MEMORY[0x277D0F778]);
    vendorID2 = [(HMMTRAccessorySetupPayload *)self vendorID];
    v19 = [v17 initWithName:@"Vendor ID" value:vendorID2];
    [array addObject:v19];
  }

  productID = [(HMMTRAccessorySetupPayload *)self productID];

  if (productID)
  {
    v21 = objc_alloc(MEMORY[0x277D0F778]);
    productID2 = [(HMMTRAccessorySetupPayload *)self productID];
    v23 = [v21 initWithName:@"Product ID" value:productID2];
    [array addObject:v23];
  }

  deviceTypeID = [(HMMTRAccessorySetupPayload *)self deviceTypeID];

  if (deviceTypeID)
  {
    v25 = objc_alloc(MEMORY[0x277D0F778]);
    deviceTypeID2 = [(HMMTRAccessorySetupPayload *)self deviceTypeID];
    v27 = [v25 initWithName:@"Device Type ID" value:deviceTypeID2];
    [array addObject:v27];
  }

  serialNumber = [(HMMTRAccessorySetupPayload *)self serialNumber];

  if (serialNumber)
  {
    v29 = objc_alloc(MEMORY[0x277D0F778]);
    serialNumber2 = [(HMMTRAccessorySetupPayload *)self serialNumber];
    v31 = [v29 initWithName:@"Serial Number" value:serialNumber2];
    [array addObject:v31];
  }

  setupPayloadString = [(HMMTRAccessorySetupPayload *)self setupPayloadString];

  if (setupPayloadString)
  {
    v33 = objc_alloc(MEMORY[0x277D0F778]);
    setupPayloadString2 = [(HMMTRAccessorySetupPayload *)self setupPayloadString];
    v35 = [v33 initWithName:@"Raw Setup Payload" value:setupPayloadString2];
    [array addObject:v35];
  }

  if ([(HMMTRAccessorySetupPayload *)self requiresCustomFlow])
  {
    v36 = objc_alloc(MEMORY[0x277D0F778]);
    [(HMMTRAccessorySetupPayload *)self requiresCustomFlow];
    v37 = HMFBooleanToString();
    v38 = [v36 initWithName:@"Requires Custom Flow" value:v37];
    [array addObject:v38];
  }

  v39 = [array copy];

  return v39;
}

- (id)shortDescription
{
  v2 = objc_opt_class();

  return [v2 shortDescription];
}

- (HMMTRAccessorySetupPayload)initWithCoder:(id)coder
{
  v27 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CPASP.ck.setupCode"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CPASP.ck.discriminator"];
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
    selfCopy = self;
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
    selfCopy = -[HMMTRAccessorySetupPayload initWithSetupCode:discriminator:isShortDiscriminator:](self, "initWithSetupCode:discriminator:isShortDiscriminator:", v5, v6, [coderCopy decodeBoolForKey:@"CPASP.ck.hasShortDiscriminator"]);
    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CPASP.ck.vendorID"];
    [(HMMTRAccessorySetupPayload *)selfCopy setVendorID:v13];

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CPASP.ck.productID"];
    [(HMMTRAccessorySetupPayload *)selfCopy setProductID:v14];

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CPASP.ck.deviceTypeID"];
    [(HMMTRAccessorySetupPayload *)selfCopy setDeviceTypeID:v15];

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CPASP.ck.serialNumber"];
    [(HMMTRAccessorySetupPayload *)selfCopy setSerialNumber:v16];

    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CPASP.ck.setupPayloadString"];
    [(HMMTRAccessorySetupPayload *)selfCopy setSetupPayloadString:v17];

    -[HMMTRAccessorySetupPayload setRequiresCustomFlow:](selfCopy, "setRequiresCustomFlow:", [coderCopy decodeBoolForKey:@"CPASP.ck.requiresCustomFlow"]);
    v18 = selfCopy;
  }

  v19 = *MEMORY[0x277D85DE8];
  return v18;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  setupCode = [(HMMTRAccessorySetupPayload *)self setupCode];
  [coderCopy encodeObject:setupCode forKey:@"CPASP.ck.setupCode"];

  discriminator = [(HMMTRAccessorySetupPayload *)self discriminator];
  [coderCopy encodeObject:discriminator forKey:@"CPASP.ck.discriminator"];

  [coderCopy encodeBool:-[HMMTRAccessorySetupPayload hasShortDiscriminator](self forKey:{"hasShortDiscriminator"), @"CPASP.ck.hasShortDiscriminator"}];
  vendorID = [(HMMTRAccessorySetupPayload *)self vendorID];
  [coderCopy encodeObject:vendorID forKey:@"CPASP.ck.vendorID"];

  productID = [(HMMTRAccessorySetupPayload *)self productID];
  [coderCopy encodeObject:productID forKey:@"CPASP.ck.productID"];

  deviceTypeID = [(HMMTRAccessorySetupPayload *)self deviceTypeID];
  [coderCopy encodeObject:deviceTypeID forKey:@"CPASP.ck.deviceTypeID"];

  serialNumber = [(HMMTRAccessorySetupPayload *)self serialNumber];
  [coderCopy encodeObject:serialNumber forKey:@"CPASP.ck.serialNumber"];

  setupPayloadString = [(HMMTRAccessorySetupPayload *)self setupPayloadString];
  [coderCopy encodeObject:setupPayloadString forKey:@"CPASP.ck.setupPayloadString"];

  [coderCopy encodeBool:-[HMMTRAccessorySetupPayload requiresCustomFlow](self forKey:{"requiresCustomFlow"), @"CPASP.ck.requiresCustomFlow"}];
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [HMMTRMutableAccessorySetupPayload allocWithZone:zone];
  setupCode = [(HMMTRAccessorySetupPayload *)self setupCode];
  discriminator = [(HMMTRAccessorySetupPayload *)self discriminator];
  v7 = [(HMMTRAccessorySetupPayload *)v4 initWithSetupCode:setupCode discriminator:discriminator isShortDiscriminator:[(HMMTRAccessorySetupPayload *)self hasShortDiscriminator]];

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

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

+ (BOOL)isValidSetupPayloadURLScheme:(id)scheme
{
  v14 = *MEMORY[0x277D85DE8];
  schemeCopy = scheme;
  if ([schemeCopy isEqualToString:@"CH"])
  {
    v5 = objc_autoreleasePoolPush();
    selfCopy = self;
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
    v9 = [schemeCopy isEqualToString:@"MT"];
  }

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

- (unint64_t)hash
{
  setupCode = [(HMMTRAccessorySetupPayload *)self setupCode];
  v3 = [setupCode hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  if (v6)
  {
    setupCode = [(HMMTRAccessorySetupPayload *)self setupCode];
    setupCode2 = [v6 setupCode];
    if ([setupCode isEqualToNumber:setupCode2])
    {
      discriminator = [(HMMTRAccessorySetupPayload *)self discriminator];
      discriminator2 = [v6 discriminator];
      if (![discriminator isEqualToNumber:discriminator2])
      {
        goto LABEL_16;
      }

      hasShortDiscriminator = [(HMMTRAccessorySetupPayload *)self hasShortDiscriminator];
      if (hasShortDiscriminator != [v6 hasShortDiscriminator])
      {
        goto LABEL_16;
      }

      vendorID = [(HMMTRAccessorySetupPayload *)self vendorID];
      vendorID2 = [v6 vendorID];
      v14 = HMFEqualObjects();

      if (!v14)
      {
        goto LABEL_16;
      }

      productID = [(HMMTRAccessorySetupPayload *)self productID];
      productID2 = [v6 productID];
      v17 = HMFEqualObjects();

      if (!v17)
      {
        goto LABEL_16;
      }

      deviceTypeID = [(HMMTRAccessorySetupPayload *)self deviceTypeID];
      deviceTypeID2 = [v6 deviceTypeID];
      v20 = HMFEqualObjects();

      if (!v20)
      {
        goto LABEL_16;
      }

      serialNumber = [(HMMTRAccessorySetupPayload *)self serialNumber];
      serialNumber2 = [v6 serialNumber];
      v23 = HMFEqualObjects();

      if (!v23)
      {
        goto LABEL_16;
      }

      setupPayloadString = [(HMMTRAccessorySetupPayload *)self setupPayloadString];
      setupPayloadString2 = [v6 setupPayloadString];
      v26 = HMFEqualObjects();

      if (v26)
      {
        requiresCustomFlow = [(HMMTRAccessorySetupPayload *)self requiresCustomFlow];
        v28 = requiresCustomFlow ^ [v6 requiresCustomFlow] ^ 1;
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
  setupCode = [(HMMTRAccessorySetupPayload *)self setupCode];
  discriminator = [(HMMTRAccessorySetupPayload *)self discriminator];
  v5 = [HMMTRUtilities setupIDFromSetupCode:setupCode discriminator:discriminator];

  return v5;
}

- (HMMTRAccessorySetupPayload)initWithSetupCode:(id)code discriminator:(id)discriminator isShortDiscriminator:(BOOL)shortDiscriminator
{
  codeCopy = code;
  discriminatorCopy = discriminator;
  if (!codeCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_7;
  }

  v11 = discriminatorCopy;
  if (!discriminatorCopy)
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
    objc_storeStrong(&v12->_setupCode, code);
    objc_storeStrong(&v13->_discriminator, discriminator);
    v13->_hasShortDiscriminator = shortDiscriminator;
  }

  return v13;
}

- (HMMTRAccessorySetupPayload)initWithCHIPSetupPayload:(id)payload setupPayloadString:(id)string
{
  payloadCopy = payload;
  stringCopy = string;
  setUpPINCode = [payloadCopy setUpPINCode];
  discriminator = [payloadCopy discriminator];
  v10 = -[HMMTRAccessorySetupPayload initWithSetupCode:discriminator:isShortDiscriminator:](self, "initWithSetupCode:discriminator:isShortDiscriminator:", setUpPINCode, discriminator, [payloadCopy hasShortDiscriminator]);

  vendorID = [payloadCopy vendorID];
  [(HMMTRAccessorySetupPayload *)v10 setVendorID:vendorID];

  productID = [payloadCopy productID];
  [(HMMTRAccessorySetupPayload *)v10 setProductID:productID];

  serialNumber = [payloadCopy serialNumber];
  [(HMMTRAccessorySetupPayload *)v10 setSerialNumber:serialNumber];

  if (!stringCopy)
  {
    v18 = 0;
    manualEntryCode = [payloadCopy qrCodeString:&v18];
    if (!manualEntryCode)
    {
      manualEntryCode = [payloadCopy manualEntryCode];
    }

    stringCopy = manualEntryCode;
  }

  [(HMMTRAccessorySetupPayload *)v10 setSetupPayloadString:stringCopy];
  -[HMMTRAccessorySetupPayload setRequiresCustomFlow:](v10, "setRequiresCustomFlow:", [payloadCopy commissioningFlow] == 2);
  rendezvousInformation = [payloadCopy rendezvousInformation];
  v16 = rendezvousInformation;
  if (rendezvousInformation)
  {
    -[HMMTRAccessorySetupPayload setSupportsBLE:](v10, "setSupportsBLE:", ([rendezvousInformation unsignedIntegerValue] >> 1) & 1);
    -[HMMTRAccessorySetupPayload setSupportsSoftAP:](v10, "setSupportsSoftAP:", [v16 unsignedIntegerValue] & 1);
    -[HMMTRAccessorySetupPayload setSupportsIP:](v10, "setSupportsIP:", ([v16 unsignedIntegerValue] >> 2) & 1);
  }

  return v10;
}

- (HMMTRAccessorySetupPayload)initWithSetupPayloadString:(id)string
{
  v23 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  if (!stringCopy)
  {
    _HMFPreconditionFailure();
  }

  v5 = stringCopy;
  v6 = [objc_alloc(MEMORY[0x277CD5488]) initWithBase38Representation:stringCopy];
  v16 = 0;
  v7 = [v6 populatePayload:&v16];
  v8 = v16;
  if (v7)
  {
    selfCopy = [(HMMTRAccessorySetupPayload *)self initWithCHIPSetupPayload:v7 setupPayloadString:v5];
    v10 = selfCopy;
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy = self;
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

- (HMMTRAccessorySetupPayload)initWithSetupCodeString:(id)string
{
  v23 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  if (!stringCopy)
  {
    _HMFPreconditionFailure();
  }

  v5 = stringCopy;
  v6 = [objc_alloc(MEMORY[0x277CD5428]) initWithDecimalStringRepresentation:stringCopy];
  v16 = 0;
  v7 = [v6 populatePayload:&v16];
  v8 = v16;
  if (v7)
  {
    selfCopy = [(HMMTRAccessorySetupPayload *)self initWithCHIPSetupPayload:v7 setupPayloadString:v5];
    v10 = selfCopy;
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy = self;
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