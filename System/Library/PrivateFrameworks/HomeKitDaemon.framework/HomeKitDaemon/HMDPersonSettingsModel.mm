@interface HMDPersonSettingsModel
+ (NSUUID)sentinelModelUUID;
+ (NSUUID)sentinelParentUUID;
+ (id)hmbProperties;
- (HMDPersonSettingsModel)init;
- (NSDictionary)faceClassificationNotificationsEnabledByPersonUUID;
- (id)classificationNotificationsEnabledForPersonUUID:(id)a3;
- (id)unarchivedClassificationNotificationsEnabledForPersonUUID;
- (void)archiveClassificationNotificationsEnabledForPersonUUID:(id)a3;
- (void)setClassificationNotificationsEnabled:(id)a3 forPersonUUID:(id)a4;
@end

@implementation HMDPersonSettingsModel

+ (NSUUID)sentinelModelUUID
{
  if (sentinelModelUUID_onceToken != -1)
  {
    dispatch_once(&sentinelModelUUID_onceToken, &__block_literal_global_11_283155);
  }

  v3 = sentinelModelUUID_sentinelModelUUID;

  return v3;
}

void __43__HMDPersonSettingsModel_sentinelModelUUID__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"B9F6C6E7-1B18-463B-B95A-6AF8C7A5E4DF"];
  v1 = sentinelModelUUID_sentinelModelUUID;
  sentinelModelUUID_sentinelModelUUID = v0;
}

+ (NSUUID)sentinelParentUUID
{
  if (sentinelParentUUID_onceToken_283161 != -1)
  {
    dispatch_once(&sentinelParentUUID_onceToken_283161, &__block_literal_global_5_283162);
  }

  v3 = sentinelParentUUID_sentinelParentUUID_283163;

  return v3;
}

void __44__HMDPersonSettingsModel_sentinelParentUUID__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"BCF7ED70-4FE2-4186-8B8C-F4832AC1A54B"];
  v1 = sentinelParentUUID_sentinelParentUUID_283163;
  sentinelParentUUID_sentinelParentUUID_283163 = v0;
}

+ (id)hmbProperties
{
  if (hmbProperties_onceToken_283168 != -1)
  {
    dispatch_once(&hmbProperties_onceToken_283168, &__block_literal_global_283169);
  }

  v3 = hmbProperties_properties_283170;

  return v3;
}

void __39__HMDPersonSettingsModel_hmbProperties__block_invoke()
{
  v5[1] = *MEMORY[0x277D85DE8];
  v4 = @"classificationNotificationSettingsData";
  v0 = [MEMORY[0x277D170B8] fieldWithClass:objc_opt_class()];
  v5[0] = v0;
  v1 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:&v4 count:1];
  v2 = hmbProperties_properties_283170;
  hmbProperties_properties_283170 = v1;

  v3 = *MEMORY[0x277D85DE8];
}

- (void)archiveClassificationNotificationsEnabledForPersonUUID:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = MEMORY[0x277CCAAB0];
  v6 = [v4 copy];
  v14 = 0;
  v7 = [v5 archivedDataWithRootObject:v6 requiringSecureCoding:1 error:&v14];
  v8 = v14;

  if (v7)
  {
    [(HMDPersonSettingsModel *)self setClassificationNotificationSettingsData:v7];
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    v10 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543362;
      v16 = v12;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_ERROR, "%{public}@Failed to archive classificationNotificationsEnabledForPersonUUID, settings updates have not been made", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (id)unarchivedClassificationNotificationsEnabledForPersonUUID
{
  v2 = [(HMDPersonSettingsModel *)self faceClassificationNotificationsEnabledByPersonUUID];
  v3 = [v2 mutableCopy];

  return v3;
}

- (void)setClassificationNotificationsEnabled:(id)a3 forPersonUUID:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(HMDPersonSettingsModel *)self unarchivedClassificationNotificationsEnabledForPersonUUID];
  [v8 setObject:v7 forKeyedSubscript:v6];

  [(HMDPersonSettingsModel *)self archiveClassificationNotificationsEnabledForPersonUUID:v8];
}

- (id)classificationNotificationsEnabledForPersonUUID:(id)a3
{
  v4 = a3;
  v5 = [(HMDPersonSettingsModel *)self unarchivedClassificationNotificationsEnabledForPersonUUID];
  v6 = [v5 objectForKeyedSubscript:v4];

  return v6;
}

- (HMDPersonSettingsModel)init
{
  v3 = [objc_opt_class() sentinelModelUUID];
  v4 = [objc_opt_class() sentinelParentUUID];
  v5 = [(HMBModel *)self initWithModelID:v3 parentModelID:v4];

  return v5;
}

- (NSDictionary)faceClassificationNotificationsEnabledByPersonUUID
{
  v24[3] = *MEMORY[0x277D85DE8];
  v3 = [(HMDPersonSettingsModel *)self classificationNotificationSettingsData];

  if (v3)
  {
    v4 = MEMORY[0x277CCAAC8];
    v5 = MEMORY[0x277CBEB98];
    v24[0] = objc_opt_class();
    v24[1] = objc_opt_class();
    v24[2] = objc_opt_class();
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:3];
    v7 = [v5 setWithArray:v6];
    v8 = [(HMDPersonSettingsModel *)self classificationNotificationSettingsData];
    v19 = 0;
    v9 = [v4 unarchivedObjectOfClasses:v7 fromData:v8 error:&v19];
    v10 = v19;

    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v13 = objc_autoreleasePoolPush();
      v14 = self;
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = HMFGetLogIdentifier();
        *buf = 138543618;
        v21 = v16;
        v22 = 2112;
        v23 = v10;
        _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_ERROR, "%{public}@Failed to unarchive classificationNotificationSettingsData with error: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v13);
      v11 = [MEMORY[0x277CBEAC0] dictionary];
    }

    v12 = v11;
  }

  else
  {
    v12 = [MEMORY[0x277CBEAC0] dictionary];
  }

  v17 = *MEMORY[0x277D85DE8];

  return v12;
}

@end