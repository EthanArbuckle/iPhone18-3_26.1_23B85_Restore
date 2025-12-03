@interface HMDAppleMediaAccessoryModelIdentifierRequestMessagePayload
+ (id)logCategory;
- (BOOL)isEqual:(id)equal;
- (HMDAppleMediaAccessoryModelIdentifierRequestMessagePayload)initWithAccessoryIdentifier:(id)identifier;
- (HMDAppleMediaAccessoryModelIdentifierRequestMessagePayload)initWithPayload:(id)payload;
- (id)attributeDescriptions;
- (id)payloadCopy;
- (unint64_t)hash;
@end

@implementation HMDAppleMediaAccessoryModelIdentifierRequestMessagePayload

- (unint64_t)hash
{
  accessoryIdentifier = [(HMDAppleMediaAccessoryModelIdentifierRequestMessagePayload *)self accessoryIdentifier];
  v3 = [accessoryIdentifier hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v9 = 1;
  }

  else
  {
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
      accessoryIdentifier = [(HMDAppleMediaAccessoryModelIdentifierRequestMessagePayload *)self accessoryIdentifier];
      accessoryIdentifier2 = [(HMDAppleMediaAccessoryModelIdentifierRequestMessagePayload *)v6 accessoryIdentifier];
      v9 = [accessoryIdentifier isEqualToString:accessoryIdentifier2];
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (id)attributeDescriptions
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  accessoryIdentifier = [(HMDAppleMediaAccessoryModelIdentifierRequestMessagePayload *)self accessoryIdentifier];
  v5 = [v3 initWithName:@"accessoryIdentifier" value:accessoryIdentifier];
  v9[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)payloadCopy
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = *MEMORY[0x277CCEC20];
  accessoryIdentifier = [(HMDAppleMediaAccessoryModelIdentifierRequestMessagePayload *)self accessoryIdentifier];
  v7[0] = accessoryIdentifier;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

- (HMDAppleMediaAccessoryModelIdentifierRequestMessagePayload)initWithPayload:(id)payload
{
  v17 = *MEMORY[0x277D85DE8];
  payloadCopy = payload;
  v5 = [payloadCopy hmf_stringForKey:*MEMORY[0x277CCEC20]];
  if (v5)
  {
    selfCopy = [(HMDAppleMediaAccessoryModelIdentifierRequestMessagePayload *)self initWithAccessoryIdentifier:v5];
    v7 = selfCopy;
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v13 = 138543618;
      v14 = v10;
      v15 = 2112;
      v16 = payloadCopy;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_ERROR, "%{public}@Failed to derive message due to no accessory identifier in payload: %@", &v13, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    v7 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v7;
}

- (HMDAppleMediaAccessoryModelIdentifierRequestMessagePayload)initWithAccessoryIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (identifierCopy)
  {
    v6 = identifierCopy;
    v12.receiver = self;
    v12.super_class = HMDAppleMediaAccessoryModelIdentifierRequestMessagePayload;
    v7 = [(HMDAppleMediaAccessoryModelIdentifierRequestMessagePayload *)&v12 init];
    v8 = v7;
    if (v7)
    {
      objc_storeStrong(&v7->_accessoryIdentifier, identifier);
    }

    return v8;
  }

  else
  {
    v10 = _HMFPreconditionFailure();
    return +[(HMDAppleMediaAccessoryModelIdentifierRequestMessagePayload *)v10];
  }
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t1_114658 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t1_114658, &__block_literal_global_114659);
  }

  v3 = logCategory__hmf_once_v2_114660;

  return v3;
}

void __73__HMDAppleMediaAccessoryModelIdentifierRequestMessagePayload_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v2_114660;
  logCategory__hmf_once_v2_114660 = v1;
}

@end