@interface HMDPersonDataBatchChange
+ (id)logCategory;
- (HMDPersonDataBatchChange)initWithLocalInput:(id)a3;
- (id)_commitInMemoryModels;
- (id)attributeDescriptions;
- (id)commit;
- (id)logIdentifier;
- (void)_commitLocalInput;
- (void)addOrUpdateFaceCrop:(id)a3;
- (void)addOrUpdatePerson:(id)a3;
- (void)removeFaceCropWithUUID:(id)a3;
- (void)removePersonWithUUID:(id)a3;
@end

@implementation HMDPersonDataBatchChange

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
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_DEBUG, "%{public}@Committing person data batch change local input", buf, 0xCu);
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
        _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_ERROR, "%{public}@Failed to commit person data batch change local input: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v16);
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (id)_commitInMemoryModels
{
  v2 = [MEMORY[0x277CBEB18] array];
  v3 = [MEMORY[0x277D2C900] chainFutures:v2];

  return v3;
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
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_DEBUG, "%{public}@Committing person data batch change", &v10, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  [(HMDPersonDataBatchChange *)v4 _commitLocalInput];
  v7 = [(HMDPersonDataBatchChange *)v4 _commitInMemoryModels];
  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (void)removeFaceCropWithUUID:(id)a3
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
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_DEBUG, "%{public}@Removing face crop with UUID: %@", &v11, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [(HMDPersonDataBatchChange *)v6 localInput];
  [v9 stageRemovalForModelWithID:v4 error:0];

  v10 = *MEMORY[0x277D85DE8];
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
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_DEBUG, "%{public}@Removing person with UUID: %@", &v11, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [(HMDPersonDataBatchChange *)v6 localInput];
  [v9 stageRemovalForModelWithID:v4 error:0];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)addOrUpdateFaceCrop:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = HMFGetLogIdentifier();
    v16 = 138543618;
    v17 = v8;
    v18 = 2112;
    v19 = v4;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_DEBUG, "%{public}@Adding/updating face crop: %@", &v16, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = v4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  if (v11)
  {
    v12 = [[HMDFaceCropModel alloc] initWithPersonFaceCrop:v11];
  }

  else
  {
    v12 = [[HMDUnassociatedFaceCropModel alloc] initWithFaceCrop:v9];
  }

  v13 = v12;

  v14 = [(HMDPersonDataBatchChange *)v6 localInput];
  [v14 stageAdditionForModel:v13 error:0];

  v15 = *MEMORY[0x277D85DE8];
}

- (void)addOrUpdatePerson:(id)a3
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
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_DEBUG, "%{public}@Adding/updating person: %@", &v12, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [(HMDPersonDataBatchChange *)v6 localInput];
  v10 = [[HMDPersonModel alloc] initWithPerson:v4];
  [v9 stageAdditionForModel:v10 error:0];

  v11 = *MEMORY[0x277D85DE8];
}

- (HMDPersonDataBatchChange)initWithLocalInput:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v6 = v5;
    v14.receiver = self;
    v14.super_class = HMDPersonDataBatchChange;
    v7 = [(HMDPersonDataBatchChange *)&v14 init];
    v8 = v7;
    if (v7)
    {
      objc_storeStrong(&v7->_localInput, a3);
      v9 = [MEMORY[0x277CCAD78] UUID];
      UUID = v8->_UUID;
      v8->_UUID = v9;
    }

    return v8;
  }

  else
  {
    v12 = _HMFPreconditionFailure();
    return +[(HMDPersonDataBatchChange *)v12];
  }
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t8_138667 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t8_138667, &__block_literal_global_138668);
  }

  v3 = logCategory__hmf_once_v9_138669;

  return v3;
}

uint64_t __39__HMDPersonDataBatchChange_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v9_138669;
  logCategory__hmf_once_v9_138669 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end