@interface HMIUpdatedFaceprintsResult
- (HMIUpdatedFaceprintsResult)initWithExistingAtCurrentVersion:(id)a3 createdAtCurrentVersion:(id)a4 existingAtOtherVersions:(id)a5;
- (NSSet)allAtCurrentVersion;
@end

@implementation HMIUpdatedFaceprintsResult

- (HMIUpdatedFaceprintsResult)initWithExistingAtCurrentVersion:(id)a3 createdAtCurrentVersion:(id)a4 existingAtOtherVersions:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = HMIUpdatedFaceprintsResult;
  v12 = [(HMIUpdatedFaceprintsResult *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_existingAtCurrentVersion, a3);
    objc_storeStrong(&v13->_createdAtCurrentVersion, a4);
    objc_storeStrong(&v13->_existingAtOtherVersions, a5);
  }

  return v13;
}

- (NSSet)allAtCurrentVersion
{
  v3 = [MEMORY[0x277CBEB58] set];
  v4 = [(HMIUpdatedFaceprintsResult *)self existingAtCurrentVersion];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __49__HMIUpdatedFaceprintsResult_allAtCurrentVersion__block_invoke;
  v16[3] = &unk_278753D48;
  v16[4] = self;
  v5 = v3;
  v17 = v5;
  [v4 na_each:v16];

  v6 = [(HMIUpdatedFaceprintsResult *)self createdAtCurrentVersion];
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __49__HMIUpdatedFaceprintsResult_allAtCurrentVersion__block_invoke_149;
  v13 = &unk_278753D48;
  v14 = self;
  v15 = v5;
  v7 = v5;
  [v6 na_each:&v10];

  v8 = [v7 copy];

  return v8;
}

void __49__HMIUpdatedFaceprintsResult_allAtCurrentVersion__block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([v3 isSentinelFaceprint])
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 32);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      v8 = 138543362;
      v9 = v7;
      _os_log_impl(&dword_22D12F000, v6, OS_LOG_TYPE_INFO, "%{public}@Skipping sentinel faceprint in existingAtCurrentVersion", &v8, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
  }

  else
  {
    [*(a1 + 40) addObject:v3];
  }
}

void __49__HMIUpdatedFaceprintsResult_allAtCurrentVersion__block_invoke_149(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([v3 isSentinelFaceprint])
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 32);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      v8 = 138543362;
      v9 = v7;
      _os_log_impl(&dword_22D12F000, v6, OS_LOG_TYPE_INFO, "%{public}@Skipping sentinel faceprint in createdAtCurrentVersion", &v8, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
  }

  else
  {
    [*(a1 + 40) addObject:v3];
  }
}

@end