@interface HMMTRVendorMetadataProduct
- (BOOL)isEqual:(id)a3;
- (HMMTRVendorMetadataProduct)initWithIdentifier:(id)a3 categoryNumber:(id)a4 isInvalid:(BOOL)a5;
- (HMMTRVendorMetadataProduct)initWithIdentifier:(id)a3 dictionaryRepresentation:(id)a4;
- (NSDictionary)dictionaryRepresentation;
- (id)attributeDescriptions;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
@end

@implementation HMMTRVendorMetadataProduct

- (id)attributeDescriptions
{
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = objc_alloc(MEMORY[0x277D0F778]);
  v5 = [(HMMTRVendorMetadataProduct *)self identifier];
  v6 = [v4 initWithName:@"Identifier" value:v5];
  [v3 addObject:v6];

  v7 = objc_alloc(MEMORY[0x277D0F778]);
  v8 = [(HMMTRVendorMetadataProduct *)self categoryNumber];
  v9 = [v7 initWithName:@"Category" value:v8];
  [v3 addObject:v9];

  v10 = [(HMMTRVendorMetadataProduct *)self deviceTypeID];

  if (v10)
  {
    v11 = objc_alloc(MEMORY[0x277D0F778]);
    v12 = [(HMMTRVendorMetadataProduct *)self deviceTypeID];
    v13 = [v11 initWithName:@"Device Type" value:v12];
    [v3 addObject:v13];
  }

  v14 = [(HMMTRVendorMetadataProduct *)self name];

  if (v14)
  {
    v15 = objc_alloc(MEMORY[0x277D0F778]);
    v16 = [(HMMTRVendorMetadataProduct *)self name];
    v17 = [v15 initWithName:@"Name" value:v16];
    [v3 addObject:v17];
  }

  v18 = [(HMMTRVendorMetadataProduct *)self label];

  if (v18)
  {
    v19 = objc_alloc(MEMORY[0x277D0F778]);
    v20 = [(HMMTRVendorMetadataProduct *)self label];
    v21 = [v19 initWithName:@"Label" value:v20];
    [v3 addObject:v21];
  }

  v22 = [(HMMTRVendorMetadataProduct *)self installationGuideURL];

  if (v22)
  {
    v23 = objc_alloc(MEMORY[0x277D0F778]);
    v24 = [(HMMTRVendorMetadataProduct *)self installationGuideURL];
    v25 = [v23 initWithName:@"Installation Guide URL" value:v24];
    [v3 addObject:v25];
  }

  v26 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMMTRVendorMetadataProduct *)self isInvalid];
  v27 = HMFBooleanToString();
  v28 = [v26 initWithName:@"invalid" value:v27];
  [v3 addObject:v28];

  v29 = [v3 copy];

  return v29;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [HMMTRMutableVendorMetadataProduct allocWithZone:a3];
  v5 = [(HMMTRVendorMetadataProduct *)self identifier];
  v6 = [(HMMTRVendorMetadataProduct *)self categoryNumber];
  v7 = [(HMMTRVendorMetadataProduct *)v4 initWithIdentifier:v5 categoryNumber:v6 isInvalid:[(HMMTRVendorMetadataProduct *)self isInvalid]];

  v8 = [(HMMTRVendorMetadataProduct *)self deviceTypeID];
  [(HMMTRVendorMetadataProduct *)v7 setDeviceTypeID:v8];

  v9 = [(HMMTRVendorMetadataProduct *)self name];
  [(HMMTRVendorMetadataProduct *)v7 setName:v9];

  v10 = [(HMMTRVendorMetadataProduct *)self label];
  [(HMMTRVendorMetadataProduct *)v7 setLabel:v10];

  v11 = [(HMMTRVendorMetadataProduct *)self installationGuideURL];
  [(HMMTRVendorMetadataProduct *)v7 setInstallationGuideURL:v11];

  return v7;
}

- (unint64_t)hash
{
  v2 = [(HMMTRVendorMetadataProduct *)self identifier];
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
  v7 = v6;
  if (v6)
  {
    v8 = [v6 identifier];
    v9 = [(HMMTRVendorMetadataProduct *)self identifier];
    if ([v8 isEqualToNumber:v9])
    {
      v10 = [v7 categoryNumber];
      v11 = [(HMMTRVendorMetadataProduct *)self categoryNumber];
      if (![v10 isEqualToNumber:v11])
      {
        goto LABEL_13;
      }

      v12 = [v7 deviceTypeID];
      v13 = [(HMMTRVendorMetadataProduct *)self deviceTypeID];
      v14 = HMFEqualObjects();

      if (!v14)
      {
        goto LABEL_13;
      }

      v15 = [v7 name];
      v16 = [(HMMTRVendorMetadataProduct *)self name];
      v17 = HMFEqualObjects();

      if (!v17)
      {
        goto LABEL_13;
      }

      v18 = [v7 label];
      v19 = [(HMMTRVendorMetadataProduct *)self label];
      v20 = HMFEqualObjects();

      if (v20)
      {
        v21 = [v7 installationGuideURL];
        v22 = [(HMMTRVendorMetadataProduct *)self installationGuideURL];
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
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = [(HMMTRVendorMetadataProduct *)self categoryNumber];
  [v3 setObject:v4 forKeyedSubscript:@"Category"];

  v5 = [(HMMTRVendorMetadataProduct *)self deviceTypeID];

  if (v5)
  {
    v6 = [(HMMTRVendorMetadataProduct *)self deviceTypeID];
    [v3 setObject:v6 forKeyedSubscript:@"DeviceType"];
  }

  v7 = [(HMMTRVendorMetadataProduct *)self name];
  [v3 setObject:v7 forKeyedSubscript:@"Name"];

  v8 = [(HMMTRVendorMetadataProduct *)self label];
  [v3 setObject:v8 forKeyedSubscript:@"Label"];

  v9 = [(HMMTRVendorMetadataProduct *)self installationGuideURL];
  v10 = [v9 absoluteString];
  [v3 setObject:v10 forKeyedSubscript:@"InstallationGuideURL"];

  v11 = [v3 copy];

  return v11;
}

- (HMMTRVendorMetadataProduct)initWithIdentifier:(id)a3 categoryNumber:(id)a4 isInvalid:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  if (!v8)
  {
    _HMFPreconditionFailure();
    goto LABEL_7;
  }

  v10 = v9;
  if (!v9)
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
    v12 = [v8 copy];
    identifier = v11->_identifier;
    v11->_identifier = v12;

    v14 = [v10 copy];
    categoryNumber = v11->_categoryNumber;
    v11->_categoryNumber = v14;

    v11->_invalid = a5;
  }

  return v11;
}

- (HMMTRVendorMetadataProduct)initWithIdentifier:(id)a3 dictionaryRepresentation:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (!v7)
  {
    _HMFPreconditionFailure();
  }

  v8 = v7;
  v9 = [v7 hmf_numberForKey:@"Category"];
  if (v9)
  {
    v10 = [(HMMTRVendorMetadataProduct *)self initWithIdentifier:v6 categoryNumber:v9 isInvalid:0];
    v11 = [(HMMTRVendorMetadataProduct *)v10 mutableCopy];
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
    v10 = self;
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