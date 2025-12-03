@interface HMMTRVendorMetadataProduct
- (BOOL)isEqual:(id)equal;
- (HMMTRVendorMetadataProduct)initWithIdentifier:(id)identifier categoryNumber:(id)number isInvalid:(BOOL)invalid;
- (HMMTRVendorMetadataProduct)initWithIdentifier:(id)identifier dictionaryRepresentation:(id)representation;
- (NSDictionary)dictionaryRepresentation;
- (id)attributeDescriptions;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation HMMTRVendorMetadataProduct

- (id)attributeDescriptions
{
  array = [MEMORY[0x277CBEB18] array];
  v4 = objc_alloc(MEMORY[0x277D0F778]);
  identifier = [(HMMTRVendorMetadataProduct *)self identifier];
  v6 = [v4 initWithName:@"Identifier" value:identifier];
  [array addObject:v6];

  v7 = objc_alloc(MEMORY[0x277D0F778]);
  categoryNumber = [(HMMTRVendorMetadataProduct *)self categoryNumber];
  v9 = [v7 initWithName:@"Category" value:categoryNumber];
  [array addObject:v9];

  deviceTypeID = [(HMMTRVendorMetadataProduct *)self deviceTypeID];

  if (deviceTypeID)
  {
    v11 = objc_alloc(MEMORY[0x277D0F778]);
    deviceTypeID2 = [(HMMTRVendorMetadataProduct *)self deviceTypeID];
    v13 = [v11 initWithName:@"Device Type" value:deviceTypeID2];
    [array addObject:v13];
  }

  name = [(HMMTRVendorMetadataProduct *)self name];

  if (name)
  {
    v15 = objc_alloc(MEMORY[0x277D0F778]);
    name2 = [(HMMTRVendorMetadataProduct *)self name];
    v17 = [v15 initWithName:@"Name" value:name2];
    [array addObject:v17];
  }

  label = [(HMMTRVendorMetadataProduct *)self label];

  if (label)
  {
    v19 = objc_alloc(MEMORY[0x277D0F778]);
    label2 = [(HMMTRVendorMetadataProduct *)self label];
    v21 = [v19 initWithName:@"Label" value:label2];
    [array addObject:v21];
  }

  installationGuideURL = [(HMMTRVendorMetadataProduct *)self installationGuideURL];

  if (installationGuideURL)
  {
    v23 = objc_alloc(MEMORY[0x277D0F778]);
    installationGuideURL2 = [(HMMTRVendorMetadataProduct *)self installationGuideURL];
    v25 = [v23 initWithName:@"Installation Guide URL" value:installationGuideURL2];
    [array addObject:v25];
  }

  v26 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMMTRVendorMetadataProduct *)self isInvalid];
  v27 = HMFBooleanToString();
  v28 = [v26 initWithName:@"invalid" value:v27];
  [array addObject:v28];

  v29 = [array copy];

  return v29;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [HMMTRMutableVendorMetadataProduct allocWithZone:zone];
  identifier = [(HMMTRVendorMetadataProduct *)self identifier];
  categoryNumber = [(HMMTRVendorMetadataProduct *)self categoryNumber];
  v7 = [(HMMTRVendorMetadataProduct *)v4 initWithIdentifier:identifier categoryNumber:categoryNumber isInvalid:[(HMMTRVendorMetadataProduct *)self isInvalid]];

  deviceTypeID = [(HMMTRVendorMetadataProduct *)self deviceTypeID];
  [(HMMTRVendorMetadataProduct *)v7 setDeviceTypeID:deviceTypeID];

  name = [(HMMTRVendorMetadataProduct *)self name];
  [(HMMTRVendorMetadataProduct *)v7 setName:name];

  label = [(HMMTRVendorMetadataProduct *)self label];
  [(HMMTRVendorMetadataProduct *)v7 setLabel:label];

  installationGuideURL = [(HMMTRVendorMetadataProduct *)self installationGuideURL];
  [(HMMTRVendorMetadataProduct *)v7 setInstallationGuideURL:installationGuideURL];

  return v7;
}

- (unint64_t)hash
{
  identifier = [(HMMTRVendorMetadataProduct *)self identifier];
  v3 = [identifier hash];

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
  v7 = v6;
  if (v6)
  {
    identifier = [v6 identifier];
    identifier2 = [(HMMTRVendorMetadataProduct *)self identifier];
    if ([identifier isEqualToNumber:identifier2])
    {
      categoryNumber = [v7 categoryNumber];
      categoryNumber2 = [(HMMTRVendorMetadataProduct *)self categoryNumber];
      if (![categoryNumber isEqualToNumber:categoryNumber2])
      {
        goto LABEL_13;
      }

      deviceTypeID = [v7 deviceTypeID];
      deviceTypeID2 = [(HMMTRVendorMetadataProduct *)self deviceTypeID];
      v14 = HMFEqualObjects();

      if (!v14)
      {
        goto LABEL_13;
      }

      name = [v7 name];
      name2 = [(HMMTRVendorMetadataProduct *)self name];
      v17 = HMFEqualObjects();

      if (!v17)
      {
        goto LABEL_13;
      }

      label = [v7 label];
      label2 = [(HMMTRVendorMetadataProduct *)self label];
      v20 = HMFEqualObjects();

      if (v20)
      {
        installationGuideURL = [v7 installationGuideURL];
        installationGuideURL2 = [(HMMTRVendorMetadataProduct *)self installationGuideURL];
        v23 = HMFEqualObjects();
      }

      else
      {
LABEL_13:
        v23 = 0;
      }
    }

    else
    {
      v23 = 0;
    }
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

- (NSDictionary)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  categoryNumber = [(HMMTRVendorMetadataProduct *)self categoryNumber];
  [dictionary setObject:categoryNumber forKeyedSubscript:@"Category"];

  deviceTypeID = [(HMMTRVendorMetadataProduct *)self deviceTypeID];

  if (deviceTypeID)
  {
    deviceTypeID2 = [(HMMTRVendorMetadataProduct *)self deviceTypeID];
    [dictionary setObject:deviceTypeID2 forKeyedSubscript:@"DeviceType"];
  }

  name = [(HMMTRVendorMetadataProduct *)self name];
  [dictionary setObject:name forKeyedSubscript:@"Name"];

  label = [(HMMTRVendorMetadataProduct *)self label];
  [dictionary setObject:label forKeyedSubscript:@"Label"];

  installationGuideURL = [(HMMTRVendorMetadataProduct *)self installationGuideURL];
  absoluteString = [installationGuideURL absoluteString];
  [dictionary setObject:absoluteString forKeyedSubscript:@"InstallationGuideURL"];

  v11 = [dictionary copy];

  return v11;
}

- (HMMTRVendorMetadataProduct)initWithIdentifier:(id)identifier categoryNumber:(id)number isInvalid:(BOOL)invalid
{
  identifierCopy = identifier;
  numberCopy = number;
  if (!identifierCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_7;
  }

  v10 = numberCopy;
  if (!numberCopy)
  {
LABEL_7:
    v17 = _HMFPreconditionFailure();
    return [(HMMTRVendorMetadataProduct *)v17 initWithIdentifier:v18 dictionaryRepresentation:v19, v20];
  }

  v21.receiver = self;
  v21.super_class = HMMTRVendorMetadataProduct;
  v11 = [(HMMTRVendorMetadataProduct *)&v21 init];
  if (v11)
  {
    v12 = [identifierCopy copy];
    identifier = v11->_identifier;
    v11->_identifier = v12;

    v14 = [v10 copy];
    categoryNumber = v11->_categoryNumber;
    v11->_categoryNumber = v14;

    v11->_invalid = invalid;
  }

  return v11;
}

- (HMMTRVendorMetadataProduct)initWithIdentifier:(id)identifier dictionaryRepresentation:(id)representation
{
  v27 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  representationCopy = representation;
  if (!representationCopy)
  {
    _HMFPreconditionFailure();
  }

  v8 = representationCopy;
  v9 = [representationCopy hmf_numberForKey:@"Category"];
  if (v9)
  {
    selfCopy = [(HMMTRVendorMetadataProduct *)self initWithIdentifier:identifierCopy categoryNumber:v9 isInvalid:0];
    v11 = [(HMMTRVendorMetadataProduct *)selfCopy mutableCopy];
    v12 = [v8 hmf_stringForKey:@"Label"];
    [v11 setLabel:v12];

    v13 = [v8 hmf_stringForKey:@"Name"];
    [v11 setName:v13];

    v14 = [v8 hmf_numberForKey:@"DeviceType"];
    [v11 setDeviceTypeID:v14];

    v15 = [v8 hmf_stringForKey:@"InstallationGuideURL"];
    if (v15)
    {
      v16 = [MEMORY[0x277CBEBC0] URLWithString:v15];
      [v11 setInstallationGuideURL:v16];
    }

    else
    {
      [v11 setInstallationGuideURL:0];
    }

    v20 = [v11 copy];
  }

  else
  {
    v17 = objc_autoreleasePoolPush();
    selfCopy = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      v23 = 138543618;
      v24 = v19;
      v25 = 2112;
      v26 = v8;
      _os_log_impl(&dword_22AEAE000, v18, OS_LOG_TYPE_ERROR, "%{public}@Cannot find category to create vendor information from dictionary: %@", &v23, 0x16u);
    }

    objc_autoreleasePoolPop(v17);
    v20 = 0;
  }

  v21 = *MEMORY[0x277D85DE8];
  return v20;
}

@end