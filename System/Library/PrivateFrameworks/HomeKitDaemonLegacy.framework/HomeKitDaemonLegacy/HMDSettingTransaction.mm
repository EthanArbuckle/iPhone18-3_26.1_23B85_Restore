@interface HMDSettingTransaction
- (HMDSettingTransaction)initWithTransactionLabel:(id)label;
- (id)initForInitialCreationWithTransactionLabel:(id)label;
- (void)addModel:(id)model;
- (void)addModelToBeUpdated:(id)updated;
- (void)addSettingModel:(id)model;
- (void)removeModelWithIdentifier:(id)identifier;
@end

@implementation HMDSettingTransaction

- (void)addModelToBeUpdated:(id)updated
{
  updatedCopy = updated;
  updateModels = [(HMDSettingTransaction *)self updateModels];
  [updateModels addObject:updatedCopy];
}

- (void)removeModelWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  removeUUIDs = [(HMDSettingTransaction *)self removeUUIDs];
  [removeUUIDs addObject:identifierCopy];
}

- (void)addModel:(id)model
{
  modelCopy = model;
  updateModels = [(HMDSettingTransaction *)self updateModels];
  [updateModels addObject:modelCopy];
}

- (void)addSettingModel:(id)model
{
  v16 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = modelCopy;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (v6)
  {
    updateModels = [(HMDSettingTransaction *)self updateModels];
    [updateModels addObject:v6];
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
      v15 = modelCopy;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_ERROR, "%{public}@Model not of required type %@", &v12, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (id)initForInitialCreationWithTransactionLabel:(id)label
{
  labelCopy = label;
  v13.receiver = self;
  v13.super_class = HMDSettingTransaction;
  v6 = [(HMDSettingTransaction *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_transactionLabel, label);
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

- (HMDSettingTransaction)initWithTransactionLabel:(id)label
{
  labelCopy = label;
  v13.receiver = self;
  v13.super_class = HMDSettingTransaction;
  v6 = [(HMDSettingTransaction *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_transactionLabel, label);
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