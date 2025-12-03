@interface HMDAppleMediaAccessoryModelIdentifierResponseMessagePayload
+ (id)logCategory;
- (BOOL)isEqual:(id)equal;
- (HMDAppleMediaAccessoryModelIdentifierResponseMessagePayload)initWithModelIdentifier:(id)identifier;
- (HMDAppleMediaAccessoryModelIdentifierResponseMessagePayload)initWithPayload:(id)payload;
- (id)attributeDescriptions;
- (id)payloadCopy;
- (unint64_t)hash;
@end

@implementation HMDAppleMediaAccessoryModelIdentifierResponseMessagePayload

- (unint64_t)hash
{
  modelIdentifier = [(HMDAppleMediaAccessoryModelIdentifierResponseMessagePayload *)self modelIdentifier];
  v3 = [modelIdentifier hash];

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
      modelIdentifier = [(HMDAppleMediaAccessoryModelIdentifierResponseMessagePayload *)self modelIdentifier];
      modelIdentifier2 = [(HMDAppleMediaAccessoryModelIdentifierResponseMessagePayload *)v6 modelIdentifier];
      v9 = [modelIdentifier hmf_isEqualToUUID:modelIdentifier2];
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
  modelIdentifier = [(HMDAppleMediaAccessoryModelIdentifierResponseMessagePayload *)self modelIdentifier];
  v5 = [v3 initWithName:@"modelIdentifier" value:modelIdentifier];
  v9[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)payloadCopy
{
  v8[1] = *MEMORY[0x277D85DE8];
  v7 = *MEMORY[0x277CCF0B8];
  modelIdentifier = [(HMDAppleMediaAccessoryModelIdentifierResponseMessagePayload *)self modelIdentifier];
  uUIDString = [modelIdentifier UUIDString];
  v8[0] = uUIDString;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (HMDAppleMediaAccessoryModelIdentifierResponseMessagePayload)initWithPayload:(id)payload
{
  v17 = *MEMORY[0x277D85DE8];
  payloadCopy = payload;
  v5 = [payloadCopy hmf_UUIDForKey:*MEMORY[0x277CCF0B8]];
  if (v5)
  {
    selfCopy = [(HMDAppleMediaAccessoryModelIdentifierResponseMessagePayload *)self initWithModelIdentifier:v5];
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
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_ERROR, "%{public}@Failed to derive message due to no model identifier in payload: %@", &v13, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    v7 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v7;
}

- (HMDAppleMediaAccessoryModelIdentifierResponseMessagePayload)initWithModelIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (identifierCopy)
  {
    v6 = identifierCopy;
    v12.receiver = self;
    v12.super_class = HMDAppleMediaAccessoryModelIdentifierResponseMessagePayload;
    v7 = [(HMDAppleMediaAccessoryModelIdentifierResponseMessagePayload *)&v12 init];
    v8 = v7;
    if (v7)
    {
      objc_storeStrong(&v7->_modelIdentifier, identifier);
    }

    return v8;
  }

  else
  {
    v10 = _HMFPreconditionFailure();
    return +[(HMDAppleMediaAccessoryModelIdentifierResponseMessagePayload *)v10];
  }
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t1_83784 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t1_83784, &__block_literal_global_83785);
  }

  v3 = logCategory__hmf_once_v2_83786;

  return v3;
}

void __74__HMDAppleMediaAccessoryModelIdentifierResponseMessagePayload_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v2_83786;
  logCategory__hmf_once_v2_83786 = v1;
}

@end