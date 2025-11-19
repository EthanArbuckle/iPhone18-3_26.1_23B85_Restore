@interface HMBCloudZoneStateModel
+ (id)hmbProperties;
- (HMBCloudZone)cloudZone;
- (HMBCloudZoneStateModel)initWithModelID:(id)a3 parentModelID:(id)a4;
- (NSSet)subscriptions;
- (void)setSubscriptions:(id)a3;
@end

@implementation HMBCloudZoneStateModel

+ (id)hmbProperties
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__HMBCloudZoneStateModel_hmbProperties__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (hmbProperties_onceToken != -1)
  {
    dispatch_once(&hmbProperties_onceToken, block);
  }

  v2 = hmbProperties__properties;

  return v2;
}

void __39__HMBCloudZoneStateModel_hmbProperties__block_invoke(uint64_t a1)
{
  v14[5] = *MEMORY[0x277D85DE8];
  v12.receiver = *(a1 + 32);
  v12.super_class = &OBJC_METACLASS___HMBCloudZoneStateModel;
  v1 = objc_msgSendSuper2(&v12, sel_hmbProperties);
  v2 = [v1 mutableCopy];
  v3 = hmbProperties__properties;
  hmbProperties__properties = v2;

  v4 = hmbProperties__properties;
  v13[0] = @"zoneID";
  v5 = [HMBModelField fieldWithClass:objc_opt_class()];
  v14[0] = v5;
  v13[1] = @"needsZoneCreation";
  v6 = [HMBModelField fieldWithClass:objc_opt_class()];
  v14[1] = v6;
  v13[2] = @"needsZoneDeletion";
  v7 = [HMBModelField fieldWithClass:objc_opt_class()];
  v14[2] = v7;
  v13[3] = @"subscriptionsData";
  v8 = [HMBModelField fieldWithClass:objc_opt_class()];
  v14[3] = v8;
  v13[4] = @"rebuilderStatus";
  v9 = [HMBModelField fieldWithClass:objc_opt_class()];
  v14[4] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:5];
  [v4 addEntriesFromDictionary:v10];

  v11 = *MEMORY[0x277D85DE8];
}

- (HMBCloudZone)cloudZone
{
  WeakRetained = objc_loadWeakRetained(&self->_cloudZone);

  return WeakRetained;
}

- (void)setSubscriptions:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v13 = 0;
  v5 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v4 requiringSecureCoding:1 error:&v13];
  v6 = v13;
  if (v5)
  {
    [(HMBCloudZoneStateModel *)self setSubscriptionsData:v5];
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    v8 = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v11 = [v4 hmbDescription];
      *buf = 138543874;
      v15 = v10;
      v16 = 2112;
      v17 = v11;
      v18 = 2112;
      v19 = v6;
      _os_log_impl(&dword_22AD27000, v9, OS_LOG_TYPE_ERROR, "%{public}@Failed to encode subscriptions %@: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (NSSet)subscriptions
{
  v25[2] = *MEMORY[0x277D85DE8];
  v3 = [(HMBCloudZoneStateModel *)self subscriptionsData];
  if (v3)
  {
    v4 = MEMORY[0x277CCAAC8];
    v5 = MEMORY[0x277CBEB98];
    v25[0] = objc_opt_class();
    v25[1] = objc_opt_class();
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:2];
    v7 = [v5 setWithArray:v6];
    v18 = 0;
    v8 = [v4 unarchivedObjectOfClasses:v7 fromData:v3 error:&v18];
    v9 = v18;

    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v12 = objc_autoreleasePoolPush();
      v13 = self;
      v14 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = HMFGetLogIdentifier();
        *buf = 138543874;
        v20 = v15;
        v21 = 2112;
        v22 = v3;
        v23 = 2112;
        v24 = v9;
        _os_log_impl(&dword_22AD27000, v14, OS_LOG_TYPE_ERROR, "%{public}@Failed to decode subscriptions data %@: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v12);
      v10 = [MEMORY[0x277CBEB98] set];
    }

    v11 = v10;
  }

  else
  {
    v11 = [MEMORY[0x277CBEB98] set];
  }

  v16 = *MEMORY[0x277D85DE8];

  return v11;
}

- (HMBCloudZoneStateModel)initWithModelID:(id)a3 parentModelID:(id)a4
{
  v9.receiver = self;
  v9.super_class = HMBCloudZoneStateModel;
  v4 = [(HMBModel *)&v9 initWithModelID:a3 parentModelID:a4];
  v5 = v4;
  if (v4)
  {
    v6 = MEMORY[0x277CBEC28];
    [(HMBCloudZoneStateModel *)v4 setNeedsZoneCreation:MEMORY[0x277CBEC28]];
    [(HMBCloudZoneStateModel *)v5 setNeedsZoneDeletion:v6];
    v7 = [MEMORY[0x277CBEB98] set];
    [(HMBCloudZoneStateModel *)v5 setSubscriptions:v7];
  }

  return v5;
}

@end