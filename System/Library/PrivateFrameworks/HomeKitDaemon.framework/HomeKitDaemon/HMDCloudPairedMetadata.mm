@interface HMDCloudPairedMetadata
+ (id)__decodeVersionConfigurationWithVersionString:(id)string versionConfigurationValue:(id)value baseAccessoryIdentifier:(id)identifier;
+ (id)_decodeVersionConfigurationsFromJSONDictionary:(id)dictionary baseAccessoryIdentifier:(id)identifier allowUnzippedData:(BOOL)data;
+ (id)logCategory;
- (HMDCloudPairedMetadata)initWithBaseAccessoryIdentifier:(id)identifier versionConfigurations:(id)configurations;
- (NSDictionary)prettyJSONDictionary;
- (id)attributeDescriptions;
@end

@implementation HMDCloudPairedMetadata

- (NSDictionary)prettyJSONDictionary
{
  v25 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  versionConfigurations = [(HMDCloudPairedMetadata *)self versionConfigurations];
  v5 = [versionConfigurations countByEnumeratingWithState:&v18 objects:v24 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v19;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(versionConfigurations);
        }

        v9 = *(*(&v18 + 1) + 8 * i);
        accessoryIdentifier = [v9 accessoryIdentifier];
        firmwareVersion = [accessoryIdentifier firmwareVersion];
        versionString = [firmwareVersion versionString];

        prettyJSONDictionary = [v9 prettyJSONDictionary];
        [dictionary setObject:prettyJSONDictionary forKeyedSubscript:versionString];
      }

      v6 = [versionConfigurations countByEnumeratingWithState:&v18 objects:v24 count:16];
    }

    while (v6);
  }

  v22 = @"versionConfigurations";
  v14 = [dictionary copy];
  v23 = v14;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v23 forKeys:&v22 count:1];

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

- (id)attributeDescriptions
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  versionConfigurations = [(HMDCloudPairedMetadata *)self versionConfigurations];
  v5 = [v3 initWithName:@"VersionConfigurations" value:versionConfigurations];
  v9[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (HMDCloudPairedMetadata)initWithBaseAccessoryIdentifier:(id)identifier versionConfigurations:(id)configurations
{
  identifierCopy = identifier;
  configurationsCopy = configurations;
  v13.receiver = self;
  v13.super_class = HMDCloudPairedMetadata;
  v9 = [(HMDCloudPairedMetadata *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_baseAccessoryIdentifier, identifier);
    objc_storeStrong(&v10->_versionConfigurations, configurations);
    v11 = v10;
  }

  return v10;
}

+ (id)_decodeVersionConfigurationsFromJSONDictionary:(id)dictionary baseAccessoryIdentifier:(id)identifier allowUnzippedData:(BOOL)data
{
  dataCopy = data;
  v55 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  identifierCopy = identifier;
  if (dataCopy)
  {
    v10 = [dictionaryCopy objectForKeyedSubscript:@"v"];
    objc_opt_class();
    v11 = (objc_opt_isKindOfClass() & 1) != 0 ? v10 : 0;
    v12 = v11;

    if (v12)
    {
      goto LABEL_6;
    }
  }

  v50 = 0;
  v16 = decodeStringFromJSONDictionary(dictionaryCopy, @"v", 1, &v50);
  v17 = v50;
  v18 = v17;
  if ((v16 & 1) == 0)
  {

LABEL_26:
    v10 = 0;
    goto LABEL_27;
  }

  v19 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:v17 options:0];
  if (!v19)
  {
    v27 = objc_autoreleasePoolPush();
    selfCopy = self;
    v29 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = HMFGetLogIdentifier();
      *buf = 138543874;
      *&buf[4] = v30;
      *&buf[12] = 2112;
      *&buf[14] = @"v";
      *&buf[22] = 2112;
      v52 = dictionaryCopy;
      _os_log_impl(&dword_229538000, v29, OS_LOG_TYPE_ERROR, "%{public}@JSON contains '%@' value that is not valid base64: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v27);
    goto LABEL_26;
  }

  v20 = v19;
  hmd_uncompressedData = [v19 hmd_uncompressedData];
  if (!hmd_uncompressedData)
  {
    v31 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v33 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v34 = HMFGetLogIdentifier();
      *buf = 138543874;
      *&buf[4] = v34;
      *&buf[12] = 2112;
      *&buf[14] = @"v";
      *&buf[22] = 2112;
      v52 = dictionaryCopy;
      _os_log_impl(&dword_229538000, v33, OS_LOG_TYPE_ERROR, "%{public}@JSON contains '%@' value that is not compressed properly: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v31);
    goto LABEL_26;
  }

  v49 = 0;
  v22 = [MEMORY[0x277CCAAA0] JSONObjectWithData:hmd_uncompressedData options:0 error:&v49];
  v43 = v49;
  if (v22)
  {
    v10 = v22;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      v24 = v10;
    }

    else
    {
      v24 = 0;
    }

    v25 = v24;

    if (isKindOfClass)
    {
      v26 = 1;
      goto LABEL_36;
    }

    context = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v38 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      v41 = HMFGetLogIdentifier();
      *buf = 138543874;
      *&buf[4] = v41;
      *&buf[12] = 2112;
      *&buf[14] = @"v";
      *&buf[22] = 2112;
      v52 = dictionaryCopy;
      _os_log_impl(&dword_229538000, v38, OS_LOG_TYPE_ERROR, "%{public}@JSON contains a '%@' value that is not a dictionary: %@", buf, 0x20u);
    }
  }

  else
  {
    context = objc_autoreleasePoolPush();
    selfCopy4 = self;
    v38 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      v39 = HMFGetLogIdentifier();
      *buf = 138544130;
      *&buf[4] = v39;
      *&buf[12] = 2112;
      *&buf[14] = @"v";
      *&buf[22] = 2112;
      v52 = dictionaryCopy;
      v53 = 2112;
      v54 = v43;
      _os_log_impl(&dword_229538000, v38, OS_LOG_TYPE_ERROR, "%{public}@JSON contains '%@' value that is not valid JSON: %@: %@", buf, 0x2Au);
    }
  }

  objc_autoreleasePoolPop(context);
  v26 = 0;
  v10 = 0;
LABEL_36:

  if (v26)
  {
LABEL_6:
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    LOBYTE(v52) = 0;
    v13 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v10, "count", context)}];
    v44[0] = MEMORY[0x277D85DD0];
    v44[1] = 3221225472;
    v44[2] = __115__HMDCloudPairedMetadata__decodeVersionConfigurationsFromJSONDictionary_baseAccessoryIdentifier_allowUnzippedData___block_invoke;
    v44[3] = &unk_278684300;
    selfCopy5 = self;
    v45 = identifierCopy;
    v47 = buf;
    v14 = v13;
    v46 = v14;
    [v10 enumerateKeysAndObjectsUsingBlock:v44];
    if (*(*&buf[8] + 24))
    {
      v15 = 0;
    }

    else
    {
      v15 = [v14 copy];
    }

    _Block_object_dispose(buf, 8);
    goto LABEL_28;
  }

LABEL_27:
  v15 = 0;
LABEL_28:

  v35 = *MEMORY[0x277D85DE8];

  return v15;
}

void __115__HMDCloudPairedMetadata__decodeVersionConfigurationsFromJSONDictionary_baseAccessoryIdentifier_allowUnzippedData___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = *(a1 + 56);
  v8 = a3;
  v9 = a2;
  v11 = [objc_opt_class() __decodeVersionConfigurationWithVersionString:v9 versionConfigurationValue:v8 baseAccessoryIdentifier:*(a1 + 32)];

  v10 = v11;
  if (v11)
  {
    [*(a1 + 40) addObject:v11];
    v10 = v11;
  }

  else
  {
    *a4 = 1;
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }
}

+ (id)__decodeVersionConfigurationWithVersionString:(id)string versionConfigurationValue:(id)value baseAccessoryIdentifier:(id)identifier
{
  v36 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  valueCopy = value;
  identifierCopy = identifier;
  v11 = [objc_alloc(MEMORY[0x277D0F940]) initWithString:stringCopy];
  if (v11)
  {
    v12 = valueCopy;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = v13;

    if (v14)
    {
      v15 = [HMDNetworkRouterFirewallRuleAccessoryIdentifier alloc];
      productGroup = [identifierCopy productGroup];
      productNumber = [identifierCopy productNumber];
      v18 = [(HMDNetworkRouterFirewallRuleAccessoryIdentifier *)v15 initWithProductGroup:productGroup productNumber:productNumber firmwareVersion:v11];

      v19 = [[HMDCloudPairedMetadataVersionConfiguration alloc] initWithAccessoryIdentifier:v18 jsonDictionary:v14];
    }

    else
    {
      v24 = objc_autoreleasePoolPush();
      selfCopy = self;
      v26 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v27 = HMFGetLogIdentifier();
        v30 = 138543874;
        v31 = v27;
        v32 = 2112;
        v33 = stringCopy;
        v34 = 2112;
        v35 = v12;
        _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_ERROR, "%{public}@Version configuration for version '%@' is not a dictionary: %@", &v30, 0x20u);
      }

      objc_autoreleasePoolPop(v24);
      v19 = 0;
    }
  }

  else
  {
    v20 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = HMFGetLogIdentifier();
      v30 = 138543618;
      v31 = v23;
      v32 = 2112;
      v33 = stringCopy;
      _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_ERROR, "%{public}@Version configuration contains an invalid version string: %@", &v30, 0x16u);
    }

    objc_autoreleasePoolPop(v20);
    v19 = 0;
  }

  v28 = *MEMORY[0x277D85DE8];

  return v19;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t0_190981 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t0_190981, &__block_literal_global_190982);
  }

  v3 = logCategory__hmf_once_v1_190983;

  return v3;
}

void __37__HMDCloudPairedMetadata_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v1_190983;
  logCategory__hmf_once_v1_190983 = v1;
}

@end