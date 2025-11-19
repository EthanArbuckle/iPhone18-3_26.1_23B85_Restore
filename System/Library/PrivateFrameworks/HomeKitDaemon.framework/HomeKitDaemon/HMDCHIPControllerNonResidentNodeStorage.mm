@interface HMDCHIPControllerNonResidentNodeStorage
+ (id)logCategory;
- (BOOL)isEqual:(id)a3;
- (BOOL)updateUsingHomeModel:(id)a3;
- (NSDictionary)debugDictionaryRepresentation;
- (id)attributeDescriptions;
- (id)copyWithZone:(_NSZone *)a3;
- (id)logIdentifier;
- (unint64_t)hash;
- (void)updateHomeModel:(id)a3;
@end

@implementation HMDCHIPControllerNonResidentNodeStorage

- (id)attributeDescriptions
{
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = [(HMDCHIPControllerNonResidentNodeStorage *)self keyValueStore];
  v5 = [v4 count];

  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x277D0F778]);
    v7 = MEMORY[0x277CCABB0];
    v8 = [(HMDCHIPControllerNonResidentNodeStorage *)self keyValueStore];
    v9 = [v7 numberWithUnsignedInteger:{objc_msgSend(v8, "count")}];
    v10 = [v6 initWithName:@"Key-Value Store Count" value:v9];
    [v3 addObject:v10];
  }

  v11 = [v3 copy];

  return v11;
}

- (id)logIdentifier
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [(HMDCHIPControllerNonResidentNodeStorage *)self keyValueStore];
  v4 = [v2 stringWithFormat:@"%zu", objc_msgSend(v3, "count")];

  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[HMDCHIPControllerNonResidentNodeStorage allocWithZone:?]];
  v5 = [(HMDCHIPControllerNonResidentNodeStorage *)self keyValueStore];
  [(HMDCHIPControllerNonResidentNodeStorage *)v4 setKeyValueStore:v5];

  return v4;
}

- (unint64_t)hash
{
  v2 = [(HMDCHIPControllerNonResidentNodeStorage *)self keyValueStore];
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
    v7 = [(HMDCHIPControllerNonResidentNodeStorage *)self keyValueStore];
    v8 = [v6 keyValueStore];
    v9 = HMFEqualObjects();
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)updateHomeModel:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v8 = HMFGetLogIdentifier();
    v10 = 138543362;
    v11 = v8;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_ERROR, "%{public}@Not implemented", &v10, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  v9 = *MEMORY[0x277D85DE8];
}

- (BOOL)updateUsingHomeModel:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v8 = HMFGetLogIdentifier();
    v11 = 138543362;
    v12 = v8;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_ERROR, "%{public}@Not implemented", &v11, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  v9 = *MEMORY[0x277D85DE8];
  return 0;
}

- (NSDictionary)debugDictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = [(HMDCHIPControllerNonResidentNodeStorage *)self keyValueStore];
  [v3 setObject:v4 forKeyedSubscript:@"Key-Value Store"];

  v5 = [v3 copy];

  return v5;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t3_280358 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t3_280358, &__block_literal_global_280359);
  }

  v3 = logCategory__hmf_once_v4_280360;

  return v3;
}

void __54__HMDCHIPControllerNonResidentNodeStorage_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v4_280360;
  logCategory__hmf_once_v4_280360 = v1;
}

@end