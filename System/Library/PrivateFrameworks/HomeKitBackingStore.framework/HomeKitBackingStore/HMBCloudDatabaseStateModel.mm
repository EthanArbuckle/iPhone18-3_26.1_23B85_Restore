@interface HMBCloudDatabaseStateModel
+ (id)hmbProperties;
- (CKDatabase)database;
- (HMBCloudDatabaseStateModel)initWithModelID:(id)d parentModelID:(id)iD;
- (NSSet)subscriptions;
- (void)setSubscriptions:(id)subscriptions;
@end

@implementation HMBCloudDatabaseStateModel

+ (id)hmbProperties
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__HMBCloudDatabaseStateModel_hmbProperties__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (hmbProperties_onceToken_7882 != -1)
  {
    dispatch_once(&hmbProperties_onceToken_7882, block);
  }

  v2 = hmbProperties__properties_7883;

  return v2;
}

void __43__HMBCloudDatabaseStateModel_hmbProperties__block_invoke(uint64_t a1)
{
  v12[3] = *MEMORY[0x277D85DE8];
  v10.receiver = *(a1 + 32);
  v10.super_class = &OBJC_METACLASS___HMBCloudDatabaseStateModel;
  v1 = objc_msgSendSuper2(&v10, sel_hmbProperties);
  v2 = [v1 mutableCopy];
  v3 = hmbProperties__properties_7883;
  hmbProperties__properties_7883 = v2;

  v4 = hmbProperties__properties_7883;
  v11[0] = @"cloudID";
  v5 = [HMBModelField fieldWithClass:objc_opt_class()];
  v12[0] = v5;
  v11[1] = @"lastAdministrativeFetch";
  v6 = [HMBModelField fieldWithClass:objc_opt_class()];
  v12[1] = v6;
  v11[2] = @"subscriptionsData";
  v7 = [HMBModelField fieldWithClass:objc_opt_class()];
  v12[2] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:3];
  [v4 addEntriesFromDictionary:v8];

  v9 = *MEMORY[0x277D85DE8];
}

- (CKDatabase)database
{
  WeakRetained = objc_loadWeakRetained(&self->_database);

  return WeakRetained;
}

- (void)setSubscriptions:(id)subscriptions
{
  v20 = *MEMORY[0x277D85DE8];
  subscriptionsCopy = subscriptions;
  v13 = 0;
  v5 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:subscriptionsCopy requiringSecureCoding:1 error:&v13];
  v6 = v13;
  if (v5)
  {
    [(HMBCloudDatabaseStateModel *)self setSubscriptionsData:v5];
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    selfCopy = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      hmbDescription = [subscriptionsCopy hmbDescription];
      *buf = 138543874;
      v15 = v10;
      v16 = 2112;
      v17 = hmbDescription;
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
  subscriptionsData = [(HMBCloudDatabaseStateModel *)self subscriptionsData];
  if (subscriptionsData)
  {
    v4 = MEMORY[0x277CCAAC8];
    v5 = MEMORY[0x277CBEB98];
    v25[0] = objc_opt_class();
    v25[1] = objc_opt_class();
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:2];
    v7 = [v5 setWithArray:v6];
    v18 = 0;
    v8 = [v4 unarchivedObjectOfClasses:v7 fromData:subscriptionsData error:&v18];
    v9 = v18;

    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v12 = objc_autoreleasePoolPush();
      selfCopy = self;
      v14 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = HMFGetLogIdentifier();
        *buf = 138543874;
        v20 = v15;
        v21 = 2112;
        v22 = subscriptionsData;
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

- (HMBCloudDatabaseStateModel)initWithModelID:(id)d parentModelID:(id)iD
{
  v8.receiver = self;
  v8.super_class = HMBCloudDatabaseStateModel;
  v4 = [(HMBModel *)&v8 initWithModelID:d parentModelID:iD];
  if (v4)
  {
    distantPast = [MEMORY[0x277CBEAA8] distantPast];
    [(HMBCloudDatabaseStateModel *)v4 setLastAdministrativeFetch:distantPast];

    v6 = [MEMORY[0x277CBEB98] set];
    [(HMBCloudDatabaseStateModel *)v4 setSubscriptions:v6];
  }

  return v4;
}

@end