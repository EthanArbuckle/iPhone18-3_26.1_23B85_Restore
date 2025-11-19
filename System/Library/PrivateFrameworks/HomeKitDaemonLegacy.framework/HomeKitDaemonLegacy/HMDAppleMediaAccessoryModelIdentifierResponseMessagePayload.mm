@interface HMDAppleMediaAccessoryModelIdentifierResponseMessagePayload
+ (id)logCategory;
- (BOOL)isEqual:(id)a3;
- (HMDAppleMediaAccessoryModelIdentifierResponseMessagePayload)initWithModelIdentifier:(id)a3;
- (HMDAppleMediaAccessoryModelIdentifierResponseMessagePayload)initWithPayload:(id)a3;
- (id)attributeDescriptions;
- (id)payloadCopy;
- (unint64_t)hash;
@end

@implementation HMDAppleMediaAccessoryModelIdentifierResponseMessagePayload

- (unint64_t)hash
{
  v2 = [(HMDAppleMediaAccessoryModelIdentifierResponseMessagePayload *)self modelIdentifier];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v9 = 1;
  }

  else
  {
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
      v7 = [(HMDAppleMediaAccessoryModelIdentifierResponseMessagePayload *)self modelIdentifier];
      v8 = [(HMDAppleMediaAccessoryModelIdentifierResponseMessagePayload *)v6 modelIdentifier];
      v9 = [v7 hmf_isEqualToUUID:v8];
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
  v4 = [(HMDAppleMediaAccessoryModelIdentifierResponseMessagePayload *)self modelIdentifier];
  v5 = [v3 initWithName:@"modelIdentifier" value:v4];
  v9[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)payloadCopy
{
  v8[1] = *MEMORY[0x277D85DE8];
  v7 = *MEMORY[0x277CCF0B8];
  v2 = [(HMDAppleMediaAccessoryModelIdentifierResponseMessagePayload *)self modelIdentifier];
  v3 = [v2 UUIDString];
  v8[0] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (HMDAppleMediaAccessoryModelIdentifierResponseMessagePayload)initWithPayload:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 hmf_UUIDForKey:*MEMORY[0x277CCF0B8]];
  if (v5)
  {
    v6 = [(HMDAppleMediaAccessoryModelIdentifierResponseMessagePayload *)self initWithModelIdentifier:v5];
    v7 = v6;
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v6 = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v13 = 138543618;
      v14 = v10;
      v15 = 2112;
      v16 = v4;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_ERROR, "%{public}@Failed to derive message due to no model identifier in payload: %@", &v13, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    v7 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v7;
}

- (HMDAppleMediaAccessoryModelIdentifierResponseMessagePayload)initWithModelIdentifier:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v6 = v5;
    v12.receiver = self;
    v12.super_class = HMDAppleMediaAccessoryModelIdentifierResponseMessagePayload;
    v7 = [(HMDAppleMediaAccessoryModelIdentifierResponseMessagePayload *)&v12 init];
    v8 = v7;
    if (v7)
    {
      objc_storeStrong(&v7->_modelIdentifier, a3);
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
  if (logCategory__hmf_once_t1_51971 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t1_51971, &__block_literal_global_51972);
  }

  v3 = logCategory__hmf_once_v2_51973;

  return v3;
}

uint64_t __74__HMDAppleMediaAccessoryModelIdentifierResponseMessagePayload_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v2_51973;
  logCategory__hmf_once_v2_51973 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end