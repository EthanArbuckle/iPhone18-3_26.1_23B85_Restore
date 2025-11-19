@interface HMDAppleMediaAccessoryModelIdentifierRequestMessagePayload
+ (id)logCategory;
- (BOOL)isEqual:(id)a3;
- (HMDAppleMediaAccessoryModelIdentifierRequestMessagePayload)initWithAccessoryIdentifier:(id)a3;
- (HMDAppleMediaAccessoryModelIdentifierRequestMessagePayload)initWithPayload:(id)a3;
- (id)attributeDescriptions;
- (id)payloadCopy;
- (unint64_t)hash;
@end

@implementation HMDAppleMediaAccessoryModelIdentifierRequestMessagePayload

- (unint64_t)hash
{
  v2 = [(HMDAppleMediaAccessoryModelIdentifierRequestMessagePayload *)self accessoryIdentifier];
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
      v7 = [(HMDAppleMediaAccessoryModelIdentifierRequestMessagePayload *)self accessoryIdentifier];
      v8 = [(HMDAppleMediaAccessoryModelIdentifierRequestMessagePayload *)v6 accessoryIdentifier];
      v9 = [v7 isEqualToString:v8];
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
  v4 = [(HMDAppleMediaAccessoryModelIdentifierRequestMessagePayload *)self accessoryIdentifier];
  v5 = [v3 initWithName:@"accessoryIdentifier" value:v4];
  v9[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)payloadCopy
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = *MEMORY[0x277CCEC20];
  v2 = [(HMDAppleMediaAccessoryModelIdentifierRequestMessagePayload *)self accessoryIdentifier];
  v7[0] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

- (HMDAppleMediaAccessoryModelIdentifierRequestMessagePayload)initWithPayload:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 hmf_stringForKey:*MEMORY[0x277CCEC20]];
  if (v5)
  {
    v6 = [(HMDAppleMediaAccessoryModelIdentifierRequestMessagePayload *)self initWithAccessoryIdentifier:v5];
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
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_ERROR, "%{public}@Failed to derive message due to no accessory identifier in payload: %@", &v13, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    v7 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v7;
}

- (HMDAppleMediaAccessoryModelIdentifierRequestMessagePayload)initWithAccessoryIdentifier:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v6 = v5;
    v12.receiver = self;
    v12.super_class = HMDAppleMediaAccessoryModelIdentifierRequestMessagePayload;
    v7 = [(HMDAppleMediaAccessoryModelIdentifierRequestMessagePayload *)&v12 init];
    v8 = v7;
    if (v7)
    {
      objc_storeStrong(&v7->_accessoryIdentifier, a3);
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
  if (logCategory__hmf_once_t1_75644 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t1_75644, &__block_literal_global_75645);
  }

  v3 = logCategory__hmf_once_v2_75646;

  return v3;
}

uint64_t __73__HMDAppleMediaAccessoryModelIdentifierRequestMessagePayload_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v2_75646;
  logCategory__hmf_once_v2_75646 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end