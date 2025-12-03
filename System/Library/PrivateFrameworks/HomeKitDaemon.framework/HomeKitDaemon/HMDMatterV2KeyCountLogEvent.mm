@interface HMDMatterV2KeyCountLogEvent
+ (id)logCategory;
- (HMDMatterV2KeyCountLogEvent)initWithConfigurationDataSource:(id)source;
- (HMDMatterV2KeyCountLogEvent)initWithDictionary:(id)dictionary;
- (HMDMatterV2KeyCountLogEvent)initWithHomeUUID:(id)d numV2Keys:(unint64_t)keys;
- (NSDictionary)coreAnalyticsEventDictionary;
- (id)serializedMetrics;
@end

@implementation HMDMatterV2KeyCountLogEvent

- (NSDictionary)coreAnalyticsEventDictionary
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = @"numV2Keys";
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDMatterV2KeyCountLogEvent numV2Keys](self, "numV2Keys")}];
  v7[0] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)serializedMetrics
{
  v9[2] = *MEMORY[0x277D85DE8];
  v8[0] = @"homeUUID";
  homeUUIDString = [(HMMHomeLogEvent *)self homeUUIDString];
  v8[1] = @"numV2Keys";
  v9[0] = homeUUIDString;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDMatterV2KeyCountLogEvent numV2Keys](self, "numV2Keys")}];
  v9[1] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:2];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (HMDMatterV2KeyCountLogEvent)initWithDictionary:(id)dictionary
{
  v19 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy objectForKeyedSubscript:@"homeUUID"];
  v6 = [dictionaryCopy objectForKeyedSubscript:@"numV2Keys"];
  v7 = v6;
  if (v5 && v6)
  {
    selfCopy = -[HMDMatterV2KeyCountLogEvent initWithHomeUUID:numV2Keys:](self, "initWithHomeUUID:numV2Keys:", v5, [v6 unsignedIntValue]);
    v9 = selfCopy;
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      v15 = 138543618;
      v16 = v12;
      v17 = 2112;
      v18 = dictionaryCopy;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_ERROR, "%{public}@Could not init HMDMatterV2KeyCountLogEvent with dictionary %@", &v15, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    v9 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v9;
}

- (HMDMatterV2KeyCountLogEvent)initWithHomeUUID:(id)d numV2Keys:(unint64_t)keys
{
  v6.receiver = self;
  v6.super_class = HMDMatterV2KeyCountLogEvent;
  result = [(HMMHomeLogEvent *)&v6 initWithHomeUUID:d];
  if (result)
  {
    result->_numV2Keys = keys;
  }

  return result;
}

- (HMDMatterV2KeyCountLogEvent)initWithConfigurationDataSource:(id)source
{
  sourceCopy = source;
  uuid = [sourceCopy uuid];
  numMatterV2Keys = [sourceCopy numMatterV2Keys];

  v7 = [(HMDMatterV2KeyCountLogEvent *)self initWithHomeUUID:uuid numV2Keys:numMatterV2Keys];
  return v7;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t8 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t8, &__block_literal_global_43_34886);
  }

  v3 = logCategory__hmf_once_v9;

  return v3;
}

void __42__HMDMatterV2KeyCountLogEvent_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v9;
  logCategory__hmf_once_v9 = v1;
}

@end