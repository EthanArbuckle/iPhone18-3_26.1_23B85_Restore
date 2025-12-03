@interface HMDCameraRecordingReachabilityEventModel
+ (id)hmbProperties;
- (BOOL)reachable;
- (id)createEvent;
@end

@implementation HMDCameraRecordingReachabilityEventModel

+ (id)hmbProperties
{
  if (hmbProperties_onceToken_100247 != -1)
  {
    dispatch_once(&hmbProperties_onceToken_100247, &__block_literal_global_100248);
  }

  v3 = hmbProperties__properties_100249;

  return v3;
}

void __57__HMDCameraRecordingReachabilityEventModel_hmbProperties__block_invoke()
{
  v6[2] = *MEMORY[0x277D85DE8];
  v5[0] = @"dateOfOccurrence";
  v0 = [MEMORY[0x277D170B8] fieldWithClass:objc_opt_class()];
  v5[1] = @"reachableField";
  v6[0] = v0;
  v1 = [MEMORY[0x277D170B8] fieldWithClass:objc_opt_class()];
  v6[1] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5 count:2];
  v3 = hmbProperties__properties_100249;
  hmbProperties__properties_100249 = v2;

  v4 = *MEMORY[0x277D85DE8];
}

- (id)createEvent
{
  v19 = *MEMORY[0x277D85DE8];
  dateOfOccurrence = [(HMDCameraRecordingReachabilityEventModel *)self dateOfOccurrence];
  if (dateOfOccurrence)
  {
    v4 = objc_alloc(MEMORY[0x277CD1928]);
    hmbModelID = [(HMBModel *)self hmbModelID];
    dateOfOccurrence2 = [(HMDCameraRecordingReachabilityEventModel *)self dateOfOccurrence];
    v7 = [v4 initWithUniqueIdentifier:hmbModelID dateOfOccurrence:dateOfOccurrence2 reachable:{-[HMDCameraRecordingReachabilityEventModel reachable](self, "reachable")}];
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v12 = [(HMBModel *)selfCopy debugDescription];
      v15 = 138543618;
      v16 = v11;
      v17 = 2112;
      v18 = v12;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_ERROR, "%{public}@Cannot create reachability event from model: %@", &v15, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    v7 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];

  return v7;
}

- (BOOL)reachable
{
  reachableField = [(HMDCameraRecordingReachabilityEventModel *)self reachableField];
  bOOLValue = [reachableField BOOLValue];

  return bOOLValue;
}

@end