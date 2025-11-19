@interface HMDPersonDataBatchChange
+ (id)logCategory;
- (HMDPersonDataBatchChange)initWithLocalInput:(id)a3;
- (HMDPersonDataSource)dataSource;
- (id)_commitInMemoryModels;
- (id)attributeDescriptions;
- (id)commit;
- (id)commitIfNeeded;
- (id)logIdentifier;
- (void)_commitLocalInput;
- (void)addOrUpdateFaceCrop:(id)a3;
- (void)addOrUpdatePerson:(id)a3;
- (void)removeFaceCropWithUUID:(id)a3;
- (void)removePersonWithUUID:(id)a3;
@end

@implementation HMDPersonDataBatchChange

- (HMDPersonDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (id)attributeDescriptions
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  v4 = [(HMDPersonDataBatchChange *)self UUID];
  v5 = [v3 initWithName:@"UUID" value:v4];
  v9[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)logIdentifier
{
  v2 = [(HMDPersonDataBatchChange *)self UUID];
  v3 = [v2 UUIDString];

  return v3;
}

- (void)_commitLocalInput
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = [(HMDPersonDataBatchChange *)self localInput];

  if (v3)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = self;
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v7 = HMFGetLogIdentifier();
      *buf = 138543362;
      v23 = v7;
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_DEBUG, "%{public}@Committing person data batch change local input", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    v8 = MEMORY[0x277D17108];
    v9 = MEMORY[0x277CCACA8];
    v10 = [(HMDPersonDataBatchChange *)v5 UUID];
    v11 = [v9 stringWithFormat:@"Batch person data change for %@", v10];
    v12 = [v8 optionsWithLabel:v11];

    v13 = [(HMDPersonDataBatchChange *)v5 localInput];
    v21 = 0;
    v14 = [v13 commitWithOptions:v12 error:&v21];
    v15 = v21;

    if (!v14)
    {
      v16 = objc_autoreleasePoolPush();
      v17 = v5;
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = HMFGetLogIdentifier();
        *buf = 138543618;
        v23 = v19;
        v24 = 2112;
        v25 = v15;
        _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_ERROR, "%{public}@Failed to commit person data batch change local input: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v16);
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (id)_commitInMemoryModels
{
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = [(HMDPersonDataBatchChange *)self dataSource];
  v5 = [(HMDPersonDataBatchChange *)self addedOrUpdatedPersons];
  v6 = [v5 copy];

  v7 = [(HMDPersonDataBatchChange *)self addedOrUpdatedPersons];
  [v7 removeAllObjects];

  v8 = [(HMDPersonDataBatchChange *)self removedPersonsUUIDs];
  v9 = [v8 copy];

  v10 = [(HMDPersonDataBatchChange *)self removedPersonsUUIDs];
  [v10 removeAllObjects];

  v11 = [(HMDPersonDataBatchChange *)self addedOrUpdatedFaceCrops];
  v12 = [v11 copy];

  v13 = [(HMDPersonDataBatchChange *)self addedOrUpdatedFaceCrops];
  [v13 removeAllObjects];

  v14 = [(HMDPersonDataBatchChange *)self removedFaceCropUUIDs];
  v15 = [v14 copy];

  v16 = [(HMDPersonDataBatchChange *)self removedFaceCropUUIDs];
  [v16 removeAllObjects];

  if ([v6 count] || objc_msgSend(v9, "count"))
  {
    v17 = [v4 addOrUpdatePersons:v6 andRemovePersonsWithUUIDs:v9];
    [v3 addObject:v17];
  }

  if ([v12 count] || objc_msgSend(v15, "count"))
  {
    v18 = [v4 addOrUpdateFaceCrops:v12 andRemoveFaceCropsWithUUIDs:v15];
    [v3 addObject:v18];
  }

  v19 = [MEMORY[0x277D2C900] chainFutures:v3];

  return v19;
}

- (id)commit
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = HMFGetLogIdentifier();
    v10 = 138543362;
    v11 = v6;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_DEBUG, "%{public}@Committing person data batch change", &v10, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  [(HMDPersonDataBatchChange *)v4 _commitLocalInput];
  v7 = [(HMDPersonDataBatchChange *)v4 _commitInMemoryModels];
  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)commitIfNeeded
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = [(HMDPersonDataBatchChange *)self addedOrUpdatedPersons];
  v4 = [v3 count];
  v5 = [(HMDPersonDataBatchChange *)self addedOrUpdatedFaceCrops];
  v6 = [v5 count] + v4;

  if (v6 > 0x13)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v11 = HMFGetLogIdentifier();
      v12 = [(HMDPersonDataBatchChange *)v9 addedOrUpdatedPersons];
      v13 = [v12 count];
      v14 = [(HMDPersonDataBatchChange *)v9 addedOrUpdatedFaceCrops];
      v17 = 138543874;
      v18 = v11;
      v19 = 2048;
      v20 = v13;
      v21 = 2048;
      v22 = [v14 count];
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_DEBUG, "%{public}@Committing person data batch change because there are %lu added/updated persons and %lu added/updated face crops", &v17, 0x20u);
    }

    objc_autoreleasePoolPop(v8);
    v7 = [(HMDPersonDataBatchChange *)v9 _commitInMemoryModels];
  }

  else
  {
    v7 = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  v15 = *MEMORY[0x277D85DE8];

  return v7;
}

- (void)removeFaceCropWithUUID:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = HMFGetLogIdentifier();
    v12 = 138543618;
    v13 = v8;
    v14 = 2112;
    v15 = v4;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_DEBUG, "%{public}@Removing face crop with UUID: %@", &v12, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [(HMDPersonDataBatchChange *)v6 localInput];

  if (v9)
  {
    v10 = [(HMDPersonDataBatchChange *)v6 localInput];
    [v10 stageRemovalForModelWithID:v4 error:0];
  }

  else
  {
    v10 = [(HMDPersonDataBatchChange *)v6 removedFaceCropUUIDs];
    [v10 addObject:v4];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)removePersonWithUUID:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = HMFGetLogIdentifier();
    v11 = 138543618;
    v12 = v8;
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_DEBUG, "%{public}@Removing person with UUID: %@", &v11, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [(HMDPersonDataBatchChange *)v6 removedPersonsUUIDs];
  [v9 addObject:v4];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)addOrUpdateFaceCrop:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = HMFGetLogIdentifier();
    v17 = 138543618;
    v18 = v8;
    v19 = 2112;
    v20 = v4;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_DEBUG, "%{public}@Adding/updating face crop: %@", &v17, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [(HMDPersonDataBatchChange *)v6 localInput];

  if (v9)
  {
    v10 = v4;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = v11;

    if (v12)
    {
      v13 = [[HMDFaceCropModel alloc] initWithPersonFaceCrop:v12];
    }

    else
    {
      v13 = [[HMDUnassociatedFaceCropModel alloc] initWithFaceCrop:v10];
    }

    v14 = v13;

    v15 = [(HMDPersonDataBatchChange *)v6 localInput];
    [v15 stageAdditionForModel:v14 error:0];
  }

  else
  {
    v14 = [(HMDPersonDataBatchChange *)v6 addedOrUpdatedFaceCrops];
    [v14 addObject:v4];
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)addOrUpdatePerson:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = HMFGetLogIdentifier();
    v11 = 138543618;
    v12 = v8;
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_DEBUG, "%{public}@Adding/updating person: %@", &v11, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [(HMDPersonDataBatchChange *)v6 addedOrUpdatedPersons];
  [v9 addObject:v4];

  v10 = *MEMORY[0x277D85DE8];
}

- (HMDPersonDataBatchChange)initWithLocalInput:(id)a3
{
  v5 = a3;
  v19.receiver = self;
  v19.super_class = HMDPersonDataBatchChange;
  v6 = [(HMDPersonDataBatchChange *)&v19 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_localInput, a3);
    v8 = [MEMORY[0x277CCAD78] UUID];
    UUID = v7->_UUID;
    v7->_UUID = v8;

    v10 = [MEMORY[0x277CBEB58] set];
    addedOrUpdatedPersons = v7->_addedOrUpdatedPersons;
    v7->_addedOrUpdatedPersons = v10;

    v12 = [MEMORY[0x277CBEB58] set];
    removedPersonsUUIDs = v7->_removedPersonsUUIDs;
    v7->_removedPersonsUUIDs = v12;

    v14 = [MEMORY[0x277CBEB58] set];
    addedOrUpdatedFaceCrops = v7->_addedOrUpdatedFaceCrops;
    v7->_addedOrUpdatedFaceCrops = v14;

    v16 = [MEMORY[0x277CBEB58] set];
    removedFaceCropUUIDs = v7->_removedFaceCropUUIDs;
    v7->_removedFaceCropUUIDs = v16;
  }

  return v7;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t9_36931 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t9_36931, &__block_literal_global_36932);
  }

  v3 = logCategory__hmf_once_v10_36933;

  return v3;
}

void __39__HMDPersonDataBatchChange_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v10_36933;
  logCategory__hmf_once_v10_36933 = v1;
}

@end