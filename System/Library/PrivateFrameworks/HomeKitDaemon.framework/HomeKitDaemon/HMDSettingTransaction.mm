@interface HMDSettingTransaction
- (HMDSettingTransaction)initWithTransactionLabel:(id)a3;
- (id)initForInitialCreationWithTransactionLabel:(id)a3;
- (void)addModel:(id)a3;
- (void)addModelToBeUpdated:(id)a3;
- (void)addSettingModel:(id)a3;
- (void)removeModelWithIdentifier:(id)a3;
@end

@implementation HMDSettingTransaction

- (void)addModelToBeUpdated:(id)a3
{
  v4 = a3;
  v5 = [(HMDSettingTransaction *)self updateModels];
  [v5 addObject:v4];
}

- (void)removeModelWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(HMDSettingTransaction *)self removeUUIDs];
  [v5 addObject:v4];
}

- (void)addModel:(id)a3
{
  v4 = a3;
  v5 = [(HMDSettingTransaction *)self updateModels];
  [v5 addObject:v4];
}

- (void)addSettingModel:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
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
    v7 = [(HMDSettingTransaction *)self updateModels];
    [v7 addObject:v6];
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v12 = 138543618;
      v13 = v10;
      v14 = 2112;
      v15 = v4;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_ERROR, "%{public}@Model not of required type %@", &v12, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (id)initForInitialCreationWithTransactionLabel:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = HMDSettingTransaction;
  v6 = [(HMDSettingTransaction *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_transactionLabel, a3);
    v7->_initialCreation = 1;
    v8 = [MEMORY[0x277CBEB58] set];
    updateModels = v7->_updateModels;
    v7->_updateModels = v8;

    v10 = [MEMORY[0x277CBEB58] set];
    removeUUIDs = v7->_removeUUIDs;
    v7->_removeUUIDs = v10;
  }

  return v7;
}

- (HMDSettingTransaction)initWithTransactionLabel:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = HMDSettingTransaction;
  v6 = [(HMDSettingTransaction *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_transactionLabel, a3);
    v7->_initialCreation = 0;
    v8 = [MEMORY[0x277CBEB58] set];
    updateModels = v7->_updateModels;
    v7->_updateModels = v8;

    v10 = [MEMORY[0x277CBEB58] set];
    removeUUIDs = v7->_removeUUIDs;
    v7->_removeUUIDs = v10;
  }

  return v7;
}

@end