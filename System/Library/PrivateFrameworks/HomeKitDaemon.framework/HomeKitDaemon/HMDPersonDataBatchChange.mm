@interface HMDPersonDataBatchChange
+ (id)logCategory;
- (HMDPersonDataBatchChange)initWithLocalInput:(id)input;
- (HMDPersonDataSource)dataSource;
- (id)_commitInMemoryModels;
- (id)attributeDescriptions;
- (id)commit;
- (id)commitIfNeeded;
- (id)logIdentifier;
- (void)_commitLocalInput;
- (void)addOrUpdateFaceCrop:(id)crop;
- (void)addOrUpdatePerson:(id)person;
- (void)removeFaceCropWithUUID:(id)d;
- (void)removePersonWithUUID:(id)d;
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
  uUID = [(HMDPersonDataBatchChange *)self UUID];
  v5 = [v3 initWithName:@"UUID" value:uUID];
  v9[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)logIdentifier
{
  uUID = [(HMDPersonDataBatchChange *)self UUID];
  uUIDString = [uUID UUIDString];

  return uUIDString;
}

- (void)_commitLocalInput
{
  v26 = *MEMORY[0x277D85DE8];
  localInput = [(HMDPersonDataBatchChange *)self localInput];

  if (localInput)
  {
    v4 = objc_autoreleasePoolPush();
    selfCopy = self;
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
    uUID = [(HMDPersonDataBatchChange *)selfCopy UUID];
    v11 = [v9 stringWithFormat:@"Batch person data change for %@", uUID];
    v12 = [v8 optionsWithLabel:v11];

    localInput2 = [(HMDPersonDataBatchChange *)selfCopy localInput];
    v21 = 0;
    v14 = [localInput2 commitWithOptions:v12 error:&v21];
    v15 = v21;

    if (!v14)
    {
      v16 = objc_autoreleasePoolPush();
      v17 = selfCopy;
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
  array = [MEMORY[0x277CBEB18] array];
  dataSource = [(HMDPersonDataBatchChange *)self dataSource];
  addedOrUpdatedPersons = [(HMDPersonDataBatchChange *)self addedOrUpdatedPersons];
  v6 = [addedOrUpdatedPersons copy];

  addedOrUpdatedPersons2 = [(HMDPersonDataBatchChange *)self addedOrUpdatedPersons];
  [addedOrUpdatedPersons2 removeAllObjects];

  removedPersonsUUIDs = [(HMDPersonDataBatchChange *)self removedPersonsUUIDs];
  v9 = [removedPersonsUUIDs copy];

  removedPersonsUUIDs2 = [(HMDPersonDataBatchChange *)self removedPersonsUUIDs];
  [removedPersonsUUIDs2 removeAllObjects];

  addedOrUpdatedFaceCrops = [(HMDPersonDataBatchChange *)self addedOrUpdatedFaceCrops];
  v12 = [addedOrUpdatedFaceCrops copy];

  addedOrUpdatedFaceCrops2 = [(HMDPersonDataBatchChange *)self addedOrUpdatedFaceCrops];
  [addedOrUpdatedFaceCrops2 removeAllObjects];

  removedFaceCropUUIDs = [(HMDPersonDataBatchChange *)self removedFaceCropUUIDs];
  v15 = [removedFaceCropUUIDs copy];

  removedFaceCropUUIDs2 = [(HMDPersonDataBatchChange *)self removedFaceCropUUIDs];
  [removedFaceCropUUIDs2 removeAllObjects];

  if ([v6 count] || objc_msgSend(v9, "count"))
  {
    v17 = [dataSource addOrUpdatePersons:v6 andRemovePersonsWithUUIDs:v9];
    [array addObject:v17];
  }

  if ([v12 count] || objc_msgSend(v15, "count"))
  {
    v18 = [dataSource addOrUpdateFaceCrops:v12 andRemoveFaceCropsWithUUIDs:v15];
    [array addObject:v18];
  }

  v19 = [MEMORY[0x277D2C900] chainFutures:array];

  return v19;
}

- (id)commit
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = HMFGetLogIdentifier();
    v10 = 138543362;
    v11 = v6;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_DEBUG, "%{public}@Committing person data batch change", &v10, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  [(HMDPersonDataBatchChange *)selfCopy _commitLocalInput];
  _commitInMemoryModels = [(HMDPersonDataBatchChange *)selfCopy _commitInMemoryModels];
  v8 = *MEMORY[0x277D85DE8];

  return _commitInMemoryModels;
}

- (id)commitIfNeeded
{
  v23 = *MEMORY[0x277D85DE8];
  addedOrUpdatedPersons = [(HMDPersonDataBatchChange *)self addedOrUpdatedPersons];
  v4 = [addedOrUpdatedPersons count];
  addedOrUpdatedFaceCrops = [(HMDPersonDataBatchChange *)self addedOrUpdatedFaceCrops];
  v6 = [addedOrUpdatedFaceCrops count] + v4;

  if (v6 > 0x13)
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v11 = HMFGetLogIdentifier();
      addedOrUpdatedPersons2 = [(HMDPersonDataBatchChange *)selfCopy addedOrUpdatedPersons];
      v13 = [addedOrUpdatedPersons2 count];
      addedOrUpdatedFaceCrops2 = [(HMDPersonDataBatchChange *)selfCopy addedOrUpdatedFaceCrops];
      v17 = 138543874;
      v18 = v11;
      v19 = 2048;
      v20 = v13;
      v21 = 2048;
      v22 = [addedOrUpdatedFaceCrops2 count];
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_DEBUG, "%{public}@Committing person data batch change because there are %lu added/updated persons and %lu added/updated face crops", &v17, 0x20u);
    }

    objc_autoreleasePoolPop(v8);
    _commitInMemoryModels = [(HMDPersonDataBatchChange *)selfCopy _commitInMemoryModels];
  }

  else
  {
    _commitInMemoryModels = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  v15 = *MEMORY[0x277D85DE8];

  return _commitInMemoryModels;
}

- (void)removeFaceCropWithUUID:(id)d
{
  v16 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = HMFGetLogIdentifier();
    v12 = 138543618;
    v13 = v8;
    v14 = 2112;
    v15 = dCopy;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_DEBUG, "%{public}@Removing face crop with UUID: %@", &v12, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  localInput = [(HMDPersonDataBatchChange *)selfCopy localInput];

  if (localInput)
  {
    localInput2 = [(HMDPersonDataBatchChange *)selfCopy localInput];
    [localInput2 stageRemovalForModelWithID:dCopy error:0];
  }

  else
  {
    localInput2 = [(HMDPersonDataBatchChange *)selfCopy removedFaceCropUUIDs];
    [localInput2 addObject:dCopy];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)removePersonWithUUID:(id)d
{
  v15 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = HMFGetLogIdentifier();
    v11 = 138543618;
    v12 = v8;
    v13 = 2112;
    v14 = dCopy;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_DEBUG, "%{public}@Removing person with UUID: %@", &v11, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  removedPersonsUUIDs = [(HMDPersonDataBatchChange *)selfCopy removedPersonsUUIDs];
  [removedPersonsUUIDs addObject:dCopy];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)addOrUpdateFaceCrop:(id)crop
{
  v21 = *MEMORY[0x277D85DE8];
  cropCopy = crop;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = HMFGetLogIdentifier();
    v17 = 138543618;
    v18 = v8;
    v19 = 2112;
    v20 = cropCopy;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_DEBUG, "%{public}@Adding/updating face crop: %@", &v17, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  localInput = [(HMDPersonDataBatchChange *)selfCopy localInput];

  if (localInput)
  {
    v10 = cropCopy;
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

    addedOrUpdatedFaceCrops = v13;

    localInput2 = [(HMDPersonDataBatchChange *)selfCopy localInput];
    [localInput2 stageAdditionForModel:addedOrUpdatedFaceCrops error:0];
  }

  else
  {
    addedOrUpdatedFaceCrops = [(HMDPersonDataBatchChange *)selfCopy addedOrUpdatedFaceCrops];
    [addedOrUpdatedFaceCrops addObject:cropCopy];
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)addOrUpdatePerson:(id)person
{
  v15 = *MEMORY[0x277D85DE8];
  personCopy = person;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = HMFGetLogIdentifier();
    v11 = 138543618;
    v12 = v8;
    v13 = 2112;
    v14 = personCopy;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_DEBUG, "%{public}@Adding/updating person: %@", &v11, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  addedOrUpdatedPersons = [(HMDPersonDataBatchChange *)selfCopy addedOrUpdatedPersons];
  [addedOrUpdatedPersons addObject:personCopy];

  v10 = *MEMORY[0x277D85DE8];
}

- (HMDPersonDataBatchChange)initWithLocalInput:(id)input
{
  inputCopy = input;
  v19.receiver = self;
  v19.super_class = HMDPersonDataBatchChange;
  v6 = [(HMDPersonDataBatchChange *)&v19 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_localInput, input);
    uUID = [MEMORY[0x277CCAD78] UUID];
    UUID = v7->_UUID;
    v7->_UUID = uUID;

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