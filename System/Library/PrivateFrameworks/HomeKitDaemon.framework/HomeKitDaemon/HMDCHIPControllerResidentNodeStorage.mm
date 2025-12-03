@interface HMDCHIPControllerResidentNodeStorage
+ (id)logCategory;
- (BOOL)isEqual:(id)equal;
- (BOOL)updateUsingHomeModel:(id)model;
- (NSDictionary)debugDictionaryRepresentation;
- (id)attributeDescriptions;
- (id)copyWithZone:(_NSZone *)zone;
- (id)logIdentifier;
- (unint64_t)hash;
- (void)updateHomeModel:(id)model;
@end

@implementation HMDCHIPControllerResidentNodeStorage

- (id)attributeDescriptions
{
  array = [MEMORY[0x277CBEB18] array];
  keyValueStore = [(HMDCHIPControllerResidentNodeStorage *)self keyValueStore];
  v5 = [keyValueStore count];

  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x277D0F778]);
    v7 = MEMORY[0x277CCABB0];
    keyValueStore2 = [(HMDCHIPControllerResidentNodeStorage *)self keyValueStore];
    v9 = [v7 numberWithUnsignedInteger:{objc_msgSend(keyValueStore2, "count")}];
    v10 = [v6 initWithName:@"Key-Value Store Count" value:v9];
    [array addObject:v10];
  }

  v11 = [array copy];

  return v11;
}

- (id)logIdentifier
{
  v2 = MEMORY[0x277CCACA8];
  keyValueStore = [(HMDCHIPControllerResidentNodeStorage *)self keyValueStore];
  v4 = [v2 stringWithFormat:@"%zu", objc_msgSend(keyValueStore, "count")];

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[HMDCHIPControllerResidentNodeStorage allocWithZone:?]];
  keyValueStore = [(HMDCHIPControllerResidentNodeStorage *)self keyValueStore];
  [(HMDCHIPControllerResidentNodeStorage *)v4 setKeyValueStore:keyValueStore];

  return v4;
}

- (unint64_t)hash
{
  keyValueStore = [(HMDCHIPControllerResidentNodeStorage *)self keyValueStore];
  v3 = [keyValueStore hash];

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
    keyValueStore = [(HMDCHIPControllerResidentNodeStorage *)self keyValueStore];
    keyValueStore2 = [v6 keyValueStore];
    v9 = HMFEqualObjects();
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)updateHomeModel:(id)model
{
  v12 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
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

- (BOOL)updateUsingHomeModel:(id)model
{
  v13 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
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
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  keyValueStore = [(HMDCHIPControllerResidentNodeStorage *)self keyValueStore];
  [dictionary setObject:keyValueStore forKeyedSubscript:@"Key-Value Store"];

  v5 = [dictionary copy];

  return v5;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t3_280465 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t3_280465, &__block_literal_global_280466);
  }

  v3 = logCategory__hmf_once_v4_280467;

  return v3;
}

void __51__HMDCHIPControllerResidentNodeStorage_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v4_280467;
  logCategory__hmf_once_v4_280467 = v1;
}

@end