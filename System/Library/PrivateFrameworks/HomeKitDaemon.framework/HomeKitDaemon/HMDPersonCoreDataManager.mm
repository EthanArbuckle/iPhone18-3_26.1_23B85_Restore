@interface HMDPersonCoreDataManager
+ (id)logCategory;
- (BOOL)isRelevantFaceprint:(id)a3;
- (BOOL)isRelevantManagedObjectContext:(id)a3;
- (BOOL)isRelevantPerson:(id)a3;
- (BOOL)shouldDispatchToPrimaryResident;
- (HMDHome)home;
- (HMDPersonCoreDataManager)initWithUUID:(id)a3 workQueue:(id)a4 home:(id)a5 userUUID:(id)a6;
- (HMDPersonCoreDataManager)initWithUUID:(id)a3 workQueue:(id)a4 home:(id)a5 userUUID:(id)a6 context:(id)a7 residentSyncManager:(id)a8 notificationCenter:(id)a9;
- (HMDPersonCoreDataManagerDelegate)delegate;
- (HMDPersonDataSource)dataSource;
- (id)addOrUpdateFaceprints:(id)a3 andRemoveFaceprintsWithUUIDs:(id)a4;
- (id)addOrUpdatePersons:(id)a3 andRemovePersonsWithUUIDs:(id)a4;
- (id)deletedFaceprintUUIDsUserInfoKey;
- (id)deletedPersonUUIDsUserInfoKey;
- (id)logIdentifier;
- (id)mkfPersons;
- (id)personModelWithModelID:(id)a3;
- (id)personWithModelID:(id)a3;
- (id)personWithUUID:(id)a3;
- (id)persons;
- (id)removeAllAssociatedData;
- (id)removeAllAssociatedLocalData;
- (id)removeAllAssociatedSyncedData;
- (void)configureWithDataSource:(id)a3;
- (void)enumerateFaceprintsForFaceCropsWithUUIDs:(id)a3 usingBlock:(id)a4;
- (void)enumerateFaceprintsUsingBlock:(id)a3;
- (void)enumerateMKFFaceprintsForFaceCropsWithUUIDs:(id)a3 usingBlock:(id)a4;
- (void)enumeratePersonsUsingBlock:(id)a3;
- (void)handleManagedObjectContextDidSaveNotification:(id)a3;
- (void)handleManagedObjectContextWillSaveNotification:(id)a3;
- (void)insertOrUpdateFaceprintUsingFaceprint:(id)a3;
- (void)insertOrUpdatePersonUsingPerson:(id)a3;
@end

@implementation HMDPersonCoreDataManager

- (HMDPersonDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (HMDHome)home
{
  WeakRetained = objc_loadWeakRetained(&self->_home);

  return WeakRetained;
}

- (HMDPersonCoreDataManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)logIdentifier
{
  v2 = [(HMDPersonCoreDataManager *)self UUID];
  v3 = [v2 UUIDString];

  return v3;
}

- (id)removeAllAssociatedSyncedData
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = [(HMDPersonCoreDataManager *)self home];
  v4 = objc_autoreleasePoolPush();
  v5 = self;
  v6 = HMFGetOSLogHandle();
  v7 = v6;
  if (v3)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      *buf = 138543362;
      v26 = v8;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Removing all associated synced data", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    v9 = objc_alloc_init(MEMORY[0x277D2C900]);
    v10 = MEMORY[0x277D2C938];
    v11 = [(HMDPersonCoreDataManager *)v5 workQueue];
    v12 = [v10 schedulerWithDispatchQueue:v11];
    v13 = [v9 reschedule:v12];

    v14 = [(HMDPersonCoreDataManager *)v5 context];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __57__HMDPersonCoreDataManager_removeAllAssociatedSyncedData__block_invoke;
    v23[3] = &unk_27868A750;
    v23[4] = v5;
    v15 = v13;
    v24 = v15;
    [v14 performBlock:v23];

    v16 = v24;
    v17 = v15;

    v18 = v17;
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543362;
      v26 = v19;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_ERROR, "%{public}@Home reference was nil while removing all associated synced data", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    v20 = MEMORY[0x277D2C900];
    v17 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
    v18 = [v20 futureWithError:v17];
  }

  v21 = *MEMORY[0x277D85DE8];

  return v18;
}

void __57__HMDPersonCoreDataManager_removeAllAssociatedSyncedData__block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v2 = [*(a1 + 32) mkfPersons];
  v3 = [v2 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v20;
    do
    {
      v6 = 0;
      do
      {
        if (*v20 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v19 + 1) + 8 * v6);
        v8 = [*(a1 + 32) context];
        v9 = [v8 managedObjectContext];
        [v9 deleteObject:v7];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v4);
  }

  v10 = [*(a1 + 32) context];
  v18 = 0;
  v11 = [v10 save:&v18];
  v12 = v18;

  if (v11)
  {
    [*(a1 + 40) finishWithNoResult];
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    v14 = *(a1 + 32);
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      *buf = 138543618;
      v24 = v16;
      v25 = 2112;
      v26 = v12;
      _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_ERROR, "%{public}@Failed to remove all associated data: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
    [*(a1 + 40) finishWithError:v12];
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)handleManagedObjectContextDidSaveNotification:(id)a3
{
  v100 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7 && [(HMDPersonCoreDataManager *)self isRelevantManagedObjectContext:v7])
  {
    v75 = v7;
    v80 = [MEMORY[0x277CBEB58] set];
    v78 = [MEMORY[0x277CBEB58] set];
    v76 = v4;
    v8 = [v4 userInfo];
    v9 = [v8 hmf_setForKey:*MEMORY[0x277CBE188]];

    v92 = 0u;
    v93 = 0u;
    v90 = 0u;
    v91 = 0u;
    obj = v9;
    v10 = [obj countByEnumeratingWithState:&v90 objects:v99 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v91;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v91 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v90 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v15 = v14;
          }

          else
          {
            v15 = 0;
          }

          v16 = v15;

          if (v16 && [(HMDPersonCoreDataManager *)self isRelevantPerson:v16])
          {
            v17 = objc_autoreleasePoolPush();
            v18 = self;
            v19 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
            {
              v20 = HMFGetLogIdentifier();
              *buf = 138543618;
              v96 = v20;
              v97 = 2112;
              v98 = v16;
              _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_INFO, "%{public}@Received notification about inserted person: %@", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v17);
            v21 = [v16 createHMPerson];
            [v80 addObject:v21];
          }

          else
          {
            v22 = v14;
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v23 = v22;
            }

            else
            {
              v23 = 0;
            }

            v21 = v23;

            if (v21 && [(HMDPersonCoreDataManager *)self isRelevantFaceprint:v21])
            {
              v24 = objc_autoreleasePoolPush();
              v25 = self;
              v26 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
              {
                v27 = HMFGetLogIdentifier();
                *buf = 138543618;
                v96 = v27;
                v97 = 2112;
                v98 = v21;
                _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_INFO, "%{public}@Received notification about inserted faceprint: %@", buf, 0x16u);
              }

              objc_autoreleasePoolPop(v24);
              v28 = [v21 createHMFaceprint];
              [v78 addObject:v28];
            }
          }
        }

        v11 = [obj countByEnumeratingWithState:&v90 objects:v99 count:16];
      }

      while (v11);
    }

    v29 = [v76 userInfo];
    v30 = [v29 hmf_setForKey:*MEMORY[0x277CBE310]];

    v88 = 0u;
    v89 = 0u;
    v86 = 0u;
    v87 = 0u;
    v31 = v30;
    v32 = [v31 countByEnumeratingWithState:&v86 objects:v94 count:16];
    v77 = v31;
    if (v32)
    {
      v33 = v32;
      v34 = *v87;
      do
      {
        for (j = 0; j != v33; ++j)
        {
          if (*v87 != v34)
          {
            objc_enumerationMutation(v31);
          }

          v36 = *(*(&v86 + 1) + 8 * j);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v37 = v36;
          }

          else
          {
            v37 = 0;
          }

          v38 = v37;

          if (v38 && [(HMDPersonCoreDataManager *)self isRelevantPerson:v38])
          {
            v39 = objc_autoreleasePoolPush();
            v40 = self;
            v41 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
            {
              v42 = HMFGetLogIdentifier();
              *buf = 138543618;
              v96 = v42;
              v97 = 2112;
              v98 = v38;
              _os_log_impl(&dword_229538000, v41, OS_LOG_TYPE_INFO, "%{public}@Received notification about updated person: %@", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v39);
            v43 = [v38 createHMPerson];
            [v80 addObject:v43];
          }

          else
          {
            v44 = v36;
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v45 = v44;
            }

            else
            {
              v45 = 0;
            }

            v43 = v45;

            if (v43 && [(HMDPersonCoreDataManager *)self isRelevantFaceprint:v43])
            {
              v46 = objc_autoreleasePoolPush();
              v47 = self;
              v48 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
              {
                v49 = HMFGetLogIdentifier();
                *buf = 138543618;
                v96 = v49;
                v97 = 2112;
                v98 = v43;
                _os_log_impl(&dword_229538000, v48, OS_LOG_TYPE_INFO, "%{public}@Received notification about updated faceprint: %@", buf, 0x16u);

                v31 = v77;
              }

              objc_autoreleasePoolPop(v46);
              v50 = [v43 createHMFaceprint];
              [v78 addObject:v50];
            }
          }
        }

        v33 = [v31 countByEnumeratingWithState:&v86 objects:v94 count:16];
      }

      while (v33);
    }

    v7 = v75;
    v51 = [v75 userInfo];
    v52 = [(HMDPersonCoreDataManager *)self deletedPersonUUIDsUserInfoKey];
    v53 = [v51 objectForKeyedSubscript:v52];

    v54 = [v75 userInfo];
    v55 = [(HMDPersonCoreDataManager *)self deletedPersonUUIDsUserInfoKey];
    [v54 setObject:0 forKeyedSubscript:v55];

    if (v53)
    {
      v56 = objc_autoreleasePoolPush();
      v57 = self;
      v58 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
      {
        v59 = HMFGetLogIdentifier();
        *buf = 138543618;
        v96 = v59;
        v97 = 2112;
        v98 = v53;
        _os_log_impl(&dword_229538000, v58, OS_LOG_TYPE_INFO, "%{public}@Received notification about deleted person UUIDs: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v56);
    }

    v60 = [v75 userInfo];
    v61 = [(HMDPersonCoreDataManager *)self deletedFaceprintUUIDsUserInfoKey];
    v62 = [v60 objectForKeyedSubscript:v61];

    v63 = [v75 userInfo];
    v64 = [(HMDPersonCoreDataManager *)self deletedFaceprintUUIDsUserInfoKey];
    [v63 setObject:0 forKeyedSubscript:v64];

    if (v62)
    {
      v65 = objc_autoreleasePoolPush();
      v66 = self;
      v67 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v67, OS_LOG_TYPE_INFO))
      {
        v68 = HMFGetLogIdentifier();
        *buf = 138543618;
        v96 = v68;
        v97 = 2112;
        v98 = v62;
        _os_log_impl(&dword_229538000, v67, OS_LOG_TYPE_INFO, "%{public}@Received notification about deleted faceprint UUIDs: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v65);
    }

    v69 = [(HMDPersonCoreDataManager *)self workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __74__HMDPersonCoreDataManager_handleManagedObjectContextDidSaveNotification___block_invoke;
    block[3] = &unk_278689550;
    block[4] = self;
    v82 = v80;
    v83 = v53;
    v84 = v78;
    v85 = v62;
    v70 = v62;
    v71 = v78;
    v72 = v53;
    v73 = v80;
    dispatch_async(v69, block);

    v4 = v76;
  }

  v74 = *MEMORY[0x277D85DE8];
}

void __74__HMDPersonCoreDataManager_handleManagedObjectContextDidSaveNotification___block_invoke(id *a1)
{
  v4 = [a1[4] delegate];
  if ([a1[5] count])
  {
    [v4 coreDataManager:a1[4] didUpdatePersons:a1[5]];
  }

  if ([a1[6] count])
  {
    [v4 coreDataManager:a1[4] didRemovePersonsWithUUIDs:a1[6]];
  }

  if ([a1[7] count])
  {
    [v4 coreDataManager:a1[4] didUpdateFaceprints:a1[7]];
  }

  v2 = [a1[8] count];
  v3 = v4;
  if (v2)
  {
    [v4 coreDataManager:a1[4] didRemoveFaceprintsWithUUIDs:a1[8]];
    v3 = v4;
  }
}

- (void)handleManagedObjectContextWillSaveNotification:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7 && [(HMDPersonCoreDataManager *)self isRelevantManagedObjectContext:v7])
  {
    v8 = [v7 deletedObjects];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __75__HMDPersonCoreDataManager_handleManagedObjectContextWillSaveNotification___block_invoke;
    v28[3] = &unk_2786878A8;
    v28[4] = self;
    v9 = [v8 na_map:v28];

    v10 = [v7 deletedObjects];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __75__HMDPersonCoreDataManager_handleManagedObjectContextWillSaveNotification___block_invoke_2;
    v27[3] = &unk_2786878A8;
    v27[4] = self;
    v11 = [v10 na_map:v27];

    if ([v9 count])
    {
      v12 = objc_autoreleasePoolPush();
      v13 = self;
      v14 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = HMFGetLogIdentifier();
        *buf = 138543618;
        v30 = v15;
        v31 = 2112;
        v32 = v9;
        _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, "%{public}@Received notification of impending delete for person UUIDs: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v12);
      v16 = v9;
    }

    else
    {
      v16 = 0;
    }

    v17 = [v7 userInfo];
    v18 = [(HMDPersonCoreDataManager *)self deletedPersonUUIDsUserInfoKey];
    [v17 setObject:v16 forKeyedSubscript:v18];

    if ([v11 count])
    {
      v19 = objc_autoreleasePoolPush();
      v20 = self;
      v21 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        v22 = HMFGetLogIdentifier();
        *buf = 138543618;
        v30 = v22;
        v31 = 2112;
        v32 = v11;
        _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_INFO, "%{public}@Received notification of impending delete for faceprint UUIDs: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v19);
      v23 = v11;
    }

    else
    {
      v23 = 0;
    }

    v24 = [v7 userInfo];
    v25 = [(HMDPersonCoreDataManager *)self deletedFaceprintUUIDsUserInfoKey];
    [v24 setObject:v23 forKeyedSubscript:v25];
  }

  v26 = *MEMORY[0x277D85DE8];
}

id __75__HMDPersonCoreDataManager_handleManagedObjectContextWillSaveNotification___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  if (v5 && [*(a1 + 32) isRelevantPerson:v5])
  {
    v6 = [v5 modelID];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id __75__HMDPersonCoreDataManager_handleManagedObjectContextWillSaveNotification___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  if (v5 && [*(a1 + 32) isRelevantFaceprint:v5])
  {
    v6 = [v5 modelID];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)removeAllAssociatedLocalData
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = [(HMDPersonCoreDataManager *)self home];
  v4 = objc_autoreleasePoolPush();
  v5 = self;
  v6 = HMFGetOSLogHandle();
  v7 = v6;
  if (v3)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      *buf = 138543362;
      v26 = v8;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Removing all associated local data", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    v9 = objc_alloc_init(MEMORY[0x277D2C900]);
    v10 = MEMORY[0x277D2C938];
    v11 = [(HMDPersonCoreDataManager *)v5 workQueue];
    v12 = [v10 schedulerWithDispatchQueue:v11];
    v13 = [v9 reschedule:v12];

    v14 = [(HMDPersonCoreDataManager *)v5 context];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __56__HMDPersonCoreDataManager_removeAllAssociatedLocalData__block_invoke;
    v23[3] = &unk_27868A750;
    v23[4] = v5;
    v15 = v13;
    v24 = v15;
    [v14 performBlock:v23];

    v16 = v24;
    v17 = v15;

    v18 = v17;
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543362;
      v26 = v19;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_ERROR, "%{public}@Home reference was nil while removing all associated local data", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    v20 = MEMORY[0x277D2C900];
    v17 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
    v18 = [v20 futureWithError:v17];
  }

  v21 = *MEMORY[0x277D85DE8];

  return v18;
}

void __56__HMDPersonCoreDataManager_removeAllAssociatedLocalData__block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __56__HMDPersonCoreDataManager_removeAllAssociatedLocalData__block_invoke_2;
  v12[3] = &unk_278687880;
  v12[4] = v2;
  [v2 enumerateMKFFaceprintsForFaceCropsWithUUIDs:0 usingBlock:v12];
  v3 = [*(a1 + 32) context];
  v11 = 0;
  v4 = [v3 save:&v11];
  v5 = v11;

  if (v4)
  {
    [*(a1 + 40) finishWithNoResult];
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
    v7 = *(a1 + 32);
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      *buf = 138543618;
      v14 = v9;
      v15 = 2112;
      v16 = v5;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_ERROR, "%{public}@Failed to remove all associated local data: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    [*(a1 + 40) finishWithError:v5];
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __56__HMDPersonCoreDataManager_removeAllAssociatedLocalData__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 context];
  [v4 deleteObject:v3];
}

- (BOOL)isRelevantFaceprint:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDPersonCoreDataManager *)self home];
  if (v5)
  {
    v6 = [(HMDPersonCoreDataManager *)self userUUID];

    if (v6)
    {
      v7 = [v4 hmd_lastKnownValueForKey:@"user"];
      v8 = v7;
      if (v7)
      {
        v9 = [v7 modelID];
        v10 = [(HMDPersonCoreDataManager *)self userUUID];
        v11 = [v9 isEqual:v10];
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v16 = [v4 hmd_lastKnownValueForKey:@"home"];
      v17 = v16;
      if (v16)
      {
        v18 = [v16 modelID];
        v19 = [v5 uuid];
        v11 = [v18 isEqual:v19];
      }

      else
      {
        v11 = 0;
      }
    }
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    v13 = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      v22 = 138543362;
      v23 = v15;
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_ERROR, "%{public}@Home reference was nil while checking if faceprint was relevant", &v22, 0xCu);
    }

    objc_autoreleasePoolPop(v12);
    v11 = 0;
  }

  v20 = *MEMORY[0x277D85DE8];
  return v11;
}

- (BOOL)isRelevantPerson:(id)a3
{
  v35 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDPersonCoreDataManager *)self home];
  if (v5)
  {
    v6 = [(HMDPersonCoreDataManager *)self userUUID];

    if (v6)
    {
      v7 = v4;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = v7;
      }

      else
      {
        v8 = 0;
      }

      v9 = v8;

      if (v9)
      {
        v10 = [v9 hmd_lastKnownValueForKey:@"user"];
        v11 = v10;
        if (v10)
        {
          v12 = [v10 modelID];
          v13 = [(HMDPersonCoreDataManager *)self userUUID];
LABEL_18:
          v22 = v13;
          v18 = [v12 isEqual:v13];

LABEL_26:
          goto LABEL_27;
        }

        v23 = objc_autoreleasePoolPush();
        v24 = self;
        v25 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          v26 = HMFGetLogIdentifier();
          v27 = [v9 debugDescription];
          v31 = 138543618;
          v32 = v26;
          v33 = 2112;
          v34 = v27;
          v28 = "%{public}@User relationship is nil for photos person checked for relevance: %@";
LABEL_24:
          _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_ERROR, v28, &v31, 0x16u);

          goto LABEL_25;
        }

        goto LABEL_25;
      }
    }

    else
    {
      v19 = v4;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v20 = v19;
      }

      else
      {
        v20 = 0;
      }

      v9 = v20;

      if (v9)
      {
        v21 = [v9 hmd_lastKnownValueForKey:@"home"];
        v11 = v21;
        if (v21)
        {
          v12 = [v21 modelID];
          v13 = [v5 uuid];
          goto LABEL_18;
        }

        v23 = objc_autoreleasePoolPush();
        v24 = self;
        v25 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          v26 = HMFGetLogIdentifier();
          v27 = [v9 debugDescription];
          v31 = 138543618;
          v32 = v26;
          v33 = 2112;
          v34 = v27;
          v28 = "%{public}@Home relationship is nil for home person checked for relevance: %@";
          goto LABEL_24;
        }

LABEL_25:

        objc_autoreleasePoolPop(v23);
        v18 = 0;
        goto LABEL_26;
      }
    }

    v18 = 0;
LABEL_27:

    goto LABEL_28;
  }

  v14 = objc_autoreleasePoolPush();
  v15 = self;
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    v17 = HMFGetLogIdentifier();
    v31 = 138543362;
    v32 = v17;
    _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_ERROR, "%{public}@Home reference was nil while checking if person was relevant", &v31, 0xCu);
  }

  objc_autoreleasePoolPop(v14);
  v18 = 0;
LABEL_28:

  v29 = *MEMORY[0x277D85DE8];
  return v18;
}

- (BOOL)isRelevantManagedObjectContext:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDPersonCoreDataManager *)self home];
  v6 = v5;
  if (!v5)
  {
    v14 = objc_autoreleasePoolPush();
    v15 = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      v20 = 138543362;
      v21 = v17;
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_ERROR, "%{public}@Home reference was nil while checking if managed object context was relevant", &v20, 0xCu);
    }

    objc_autoreleasePoolPop(v14);
    goto LABEL_7;
  }

  v7 = [v5 backingStore];
  v8 = [v7 coreData];
  v9 = [v8 isRelatedContext:v4];

  if (!v9)
  {
LABEL_7:
    v13 = 0;
    goto LABEL_8;
  }

  v10 = [v4 name];
  v11 = [v6 uuid];
  v12 = HMDWorkingContextNameForHomeUUID(v11);
  v13 = [v10 isEqualToString:v12];

LABEL_8:
  v18 = *MEMORY[0x277D85DE8];
  return v13;
}

- (BOOL)shouldDispatchToPrimaryResident
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = [(HMDPersonCoreDataManager *)self home];
  v4 = v3;
  if (!v3)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v13 = 138543362;
      v14 = v10;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_ERROR, "%{public}@Home reference was nil while checking we should dispatch to primary resident", &v13, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
    goto LABEL_8;
  }

  if ([v3 isCurrentDeviceConfirmedPrimaryResident])
  {
LABEL_8:
    v6 = 0;
    goto LABEL_11;
  }

  v5 = [(HMDPersonCoreDataManager *)self userUUID];
  if (v5)
  {
    v6 = [v4 isOwnerUser];
  }

  else
  {
    v6 = 1;
  }

LABEL_11:
  v11 = *MEMORY[0x277D85DE8];
  return v6;
}

- (void)enumerateMKFFaceprintsForFaceCropsWithUUIDs:(id)a3 usingBlock:(id)a4
{
  v40 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDPersonCoreDataManager *)self context];
  [v8 assertIsExecuting];

  v9 = [(HMDPersonCoreDataManager *)self home];
  if (v9)
  {
    v10 = +[_MKFFaceprint fetchRequest];
    [v10 setFetchBatchSize:10];
    v11 = [(HMDPersonCoreDataManager *)self userUUID];

    v12 = MEMORY[0x277CCAC30];
    if (v11)
    {
      v13 = [(HMDPersonCoreDataManager *)self userUUID];
      if (v6)
      {
        v32 = v6;
        v14 = @"user.modelID";
LABEL_10:
        [v12 predicateWithFormat:@"(%K == %@) && (%K IN %@)", v14, v13, @"faceCropUUID", v32];
        v20 = LABEL_14:;
        [v10 setPredicate:v20];

        v21 = [(HMDPersonCoreDataManager *)self context];
        v22 = [v21 managedObjectContext];
        v35 = 0;
        v23 = [v22 executeFetchRequest:v10 error:&v35];
        v24 = v35;

        if (v23)
        {
          v33[0] = MEMORY[0x277D85DD0];
          v33[1] = 3221225472;
          v33[2] = __83__HMDPersonCoreDataManager_enumerateMKFFaceprintsForFaceCropsWithUUIDs_usingBlock___block_invoke;
          v33[3] = &unk_278687858;
          v34 = v7;
          [v23 hmf_enumerateWithAutoreleasePoolUsingBlock:v33];
        }

        else
        {
          v25 = objc_autoreleasePoolPush();
          v26 = self;
          v27 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            v28 = HMFGetLogIdentifier();
            *buf = 138543618;
            v37 = v28;
            v38 = 2112;
            v39 = v24;
            _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_ERROR, "%{public}@Failed to execute fetch request for enumerating faceprints: %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v25);
        }

        goto LABEL_20;
      }

      v19 = @"user.modelID";
    }

    else
    {
      v13 = [v9 uuid];
      if (v6)
      {
        v32 = v6;
        v14 = @"home.modelID";
        goto LABEL_10;
      }

      v19 = @"home.modelID";
    }

    [v12 predicateWithFormat:@"(%K == %@)", v19, v13, v30, v31];
    goto LABEL_14;
  }

  v15 = objc_autoreleasePoolPush();
  v16 = self;
  v17 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    v18 = HMFGetLogIdentifier();
    *buf = 138543362;
    v37 = v18;
    _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_ERROR, "%{public}@Home reference was nil while enumerating faceprints", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v15);
LABEL_20:

  v29 = *MEMORY[0x277D85DE8];
}

- (void)insertOrUpdateFaceprintUsingFaceprint:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDPersonCoreDataManager *)self context];
  [v5 assertIsExecuting];

  v6 = [(HMDPersonCoreDataManager *)self home];
  if (v6)
  {
    v7 = [v4 UUID];
    v8 = [(HMDPersonCoreDataManager *)self context];
    v9 = [v8 managedObjectContext];
    v10 = [(_MKFModel *)_MKFFaceprint modelWithModelID:v7 context:v9];

    if (!v10)
    {
      v11 = [_MKFFaceprint alloc];
      v12 = [(HMDPersonCoreDataManager *)self context];
      v13 = [v12 managedObjectContext];
      v10 = [(_MKFFaceprint *)v11 initWithContext:v13];

      v14 = [v4 UUID];
      [(_MKFFaceprint *)v10 setModelID:v14];

      v15 = [(HMDPersonCoreDataManager *)self userUUID];

      if (v15)
      {
        v16 = [(HMDPersonCoreDataManager *)self userUUID];
        v17 = [(HMDPersonCoreDataManager *)self context];
        v18 = [v17 managedObjectContext];
        v19 = [(_MKFModel *)_MKFUser modelWithModelID:v16 context:v18];
        [(_MKFFaceprint *)v10 setUser:v19];
      }

      else
      {
        v16 = [v6 uuid];
        v17 = [(HMDPersonCoreDataManager *)self context];
        v18 = [v17 managedObjectContext];
        v19 = [(_MKFModel *)_MKFHome modelWithModelID:v16 context:v18];
        [(_MKFFaceprint *)v10 setHome:v19];
      }
    }

    [(_MKFFaceprint *)v10 updateWithHMFaceprint:v4];
  }

  else
  {
    v20 = objc_autoreleasePoolPush();
    v21 = self;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = HMFGetLogIdentifier();
      v25 = 138543362;
      v26 = v23;
      _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_ERROR, "%{public}@Home reference was nil while inserting / updating faceprint", &v25, 0xCu);
    }

    objc_autoreleasePoolPop(v20);
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (id)personModelWithModelID:(id)a3
{
  v4 = a3;
  v5 = [(HMDPersonCoreDataManager *)self context];
  [v5 assertIsExecuting];

  v6 = [(HMDPersonCoreDataManager *)self home];
  if (!v6)
  {
    v9 = 0;
    goto LABEL_10;
  }

  v7 = [(HMDPersonCoreDataManager *)self userUUID];

  if (v7)
  {
    if (![v6 isOwnerUser])
    {
      v10 = [(HMDPersonCoreDataManager *)self context];
      v11 = [v10 managedObjectContext];
      v12 = [(MKFCKModel *)MKFCKSharedUserPhotosPerson modelWithModelID:v4 context:v11 error:0];
      goto LABEL_9;
    }

    v8 = _MKFPhotosPerson;
  }

  else
  {
    v8 = _MKFHomePerson;
  }

  v10 = [(HMDPersonCoreDataManager *)self context];
  v11 = [v10 managedObjectContext];
  v12 = [(__objc2_class *)v8 modelWithModelID:v4 context:v11];
LABEL_9:
  v9 = v12;

LABEL_10:

  return v9;
}

- (id)deletedFaceprintUUIDsUserInfoKey
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [(HMDPersonCoreDataManager *)self UUID];
  v4 = [v2 stringWithFormat:@"HMDPersonCoreDataManagerDeletedFaceprintUUIDs.%@", v3];

  return v4;
}

- (id)personWithModelID:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDPersonCoreDataManager *)self context];
  [v5 assertIsExecuting];

  v6 = [(HMDPersonCoreDataManager *)self home];
  if (v6)
  {
    v7 = [(HMDPersonCoreDataManager *)self userUUID];

    if (v7)
    {
      if (![v6 isOwnerUser])
      {
        v14 = [(HMDPersonCoreDataManager *)self context];
        v15 = [v14 managedObjectContext];
        v16 = [(MKFCKModel *)MKFCKSharedUserPhotosPerson modelWithModelID:v4 context:v15 error:0];
        goto LABEL_11;
      }

      v8 = _MKFPhotosPerson;
    }

    else
    {
      v8 = _MKFHomePerson;
    }

    v14 = [(HMDPersonCoreDataManager *)self context];
    v15 = [v14 managedObjectContext];
    v16 = [(__objc2_class *)v8 modelWithModelID:v4 context:v15];
LABEL_11:
    v17 = v16;

    v13 = [v17 createHMPerson];

    goto LABEL_12;
  }

  v9 = objc_autoreleasePoolPush();
  v10 = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v12 = HMFGetLogIdentifier();
    v20 = 138543362;
    v21 = v12;
    _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_ERROR, "%{public}@Home reference was nil while fetching person with model ID", &v20, 0xCu);
  }

  objc_autoreleasePoolPop(v9);
  v13 = 0;
LABEL_12:

  v18 = *MEMORY[0x277D85DE8];

  return v13;
}

- (void)insertOrUpdatePersonUsingPerson:(id)a3
{
  v46 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDPersonCoreDataManager *)self context];
  [v5 assertIsExecuting];

  v6 = [(HMDPersonCoreDataManager *)self home];
  if (v6)
  {
    v7 = [(HMDPersonCoreDataManager *)self userUUID];

    if (v7)
    {
      if (![v6 isOwnerUser])
      {
        v31 = [v4 UUID];
        v32 = [(HMDPersonCoreDataManager *)self context];
        v33 = [v32 managedObjectContext];
        v11 = [(MKFCKModel *)MKFCKSharedUserPhotosPerson modelWithModelID:v31 context:v33 error:0];

        if (!v11)
        {
          v34 = [MKFCKSharedUserPhotosPerson alloc];
          v35 = [(HMDPersonCoreDataManager *)self context];
          v36 = [v35 managedObjectContext];
          v11 = [(MKFCKSharedUserPhotosPerson *)v34 initWithContext:v36];

          v37 = [v4 UUID];
          [(MKFCKSharedUserPhotosPerson *)v11 setModelID:v37];

          v38 = [v6 uuid];
          v39 = [(HMDPersonCoreDataManager *)self context];
          v40 = [v39 managedObjectContext];
          v41 = [(MKFCKModel *)MKFCKSharedUserDataRoot modelWithModelID:v38 context:v40 error:0];
          [(MKFCKSharedUserPhotosPerson *)v11 setRoot:v41];

          v42 = [v6 uuid];
          [(MKFCKSharedUserPhotosPerson *)v11 setHomeModelID:v42];
        }

        goto LABEL_14;
      }

      v8 = [v4 UUID];
      v9 = [(HMDPersonCoreDataManager *)self context];
      v10 = [v9 managedObjectContext];
      v11 = [(_MKFModel *)_MKFPhotosPerson modelWithModelID:v8 context:v10];

      if (!v11)
      {
        v12 = [_MKFPhotosPerson alloc];
        v13 = [(HMDPersonCoreDataManager *)self context];
        v14 = [v13 managedObjectContext];
        v11 = [(_MKFPhotosPerson *)v12 initWithContext:v14];

        v15 = [v4 UUID];
        [(MKFCKSharedUserPhotosPerson *)v11 setModelID:v15];

        v16 = [(HMDPersonCoreDataManager *)self userUUID];
        v17 = [(HMDPersonCoreDataManager *)self context];
        v18 = [v17 managedObjectContext];
        v19 = [(_MKFModel *)_MKFUser modelWithModelID:v16 context:v18];
        [(MKFCKSharedUserPhotosPerson *)v11 setUser:v19];
LABEL_11:
      }
    }

    else
    {
      v24 = [v4 UUID];
      v25 = [(HMDPersonCoreDataManager *)self context];
      v26 = [v25 managedObjectContext];
      v11 = [(_MKFModel *)_MKFHomePerson modelWithModelID:v24 context:v26];

      if (!v11)
      {
        v27 = [_MKFHomePerson alloc];
        v28 = [(HMDPersonCoreDataManager *)self context];
        v29 = [v28 managedObjectContext];
        v11 = [(_MKFHomePerson *)v27 initWithContext:v29];

        v30 = [v4 UUID];
        [(MKFCKSharedUserPhotosPerson *)v11 setModelID:v30];

        v16 = [v6 uuid];
        v17 = [(HMDPersonCoreDataManager *)self context];
        v18 = [v17 managedObjectContext];
        v19 = [(_MKFModel *)_MKFHome modelWithModelID:v16 context:v18];
        [(MKFCKSharedUserPhotosPerson *)v11 setHome:v19];
        goto LABEL_11;
      }
    }

LABEL_14:
    [(MKFCKSharedUserPhotosPerson *)v11 updateWithHMPerson:v4];

    goto LABEL_15;
  }

  v20 = objc_autoreleasePoolPush();
  v21 = self;
  v22 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    v23 = HMFGetLogIdentifier();
    v44 = 138543362;
    v45 = v23;
    _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_ERROR, "%{public}@Home reference was nil while inserting / updating person", &v44, 0xCu);
  }

  objc_autoreleasePoolPop(v20);
LABEL_15:

  v43 = *MEMORY[0x277D85DE8];
}

- (id)mkfPersons
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = [(HMDPersonCoreDataManager *)self context];
  [v3 assertIsExecuting];

  v4 = [(HMDPersonCoreDataManager *)self home];
  if (v4)
  {
    v5 = [(HMDPersonCoreDataManager *)self userUUID];

    if (v5)
    {
      if ([v4 isOwnerUser])
      {
        v6 = [(HMDPersonCoreDataManager *)self userUUID];
        v7 = [(HMDPersonCoreDataManager *)self context];
        v8 = [v7 managedObjectContext];
        [(_MKFModel *)_MKFUser modelWithModelID:v6 context:v8];
      }

      else
      {
        v6 = [v4 uuid];
        v7 = [(HMDPersonCoreDataManager *)self context];
        v8 = [v7 managedObjectContext];
        [(MKFCKModel *)MKFCKSharedUserDataRoot modelWithModelID:v6 context:v8 error:0];
      }
      v9 = ;

      v10 = [v9 personsFromPhotos];
    }

    else
    {
      v16 = [v4 uuid];
      v17 = [(HMDPersonCoreDataManager *)self context];
      v18 = [v17 managedObjectContext];
      v9 = [(_MKFModel *)_MKFHome modelWithModelID:v16 context:v18];

      v10 = [v9 persons];
    }

    v15 = v10;
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    v12 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v21 = 138543362;
      v22 = v14;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_ERROR, "%{public}@Home reference was nil while fetching all persons", &v21, 0xCu);
    }

    objc_autoreleasePoolPop(v11);
    v15 = [MEMORY[0x277CBEB98] set];
  }

  v19 = *MEMORY[0x277D85DE8];

  return v15;
}

- (id)persons
{
  v3 = [(HMDPersonCoreDataManager *)self context];
  [v3 assertIsExecuting];

  v4 = [(HMDPersonCoreDataManager *)self mkfPersons];
  v5 = [v4 na_map:&__block_literal_global_264218];

  return v5;
}

- (id)deletedPersonUUIDsUserInfoKey
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [(HMDPersonCoreDataManager *)self UUID];
  v4 = [v2 stringWithFormat:@"HMDPersonCoreDataManagerDeletedPersonUUIDs.%@", v3];

  return v4;
}

- (id)removeAllAssociatedData
{
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = [(HMDPersonCoreDataManager *)self removeAllAssociatedLocalData];
  [v3 addObject:v4];

  if ([(HMDPersonCoreDataManager *)self shouldDispatchToPrimaryResident])
  {
    v5 = [(HMDPersonCoreDataManager *)self residentSyncManager];
    v6 = [v5 removeAllAssociatedSyncedData];
    [v3 addObject:v6];
  }

  else
  {
    v5 = [(HMDPersonCoreDataManager *)self removeAllAssociatedSyncedData];
    [v3 addObject:v5];
  }

  v7 = [MEMORY[0x277D2C900] chainFutures:v3];

  return v7;
}

- (id)addOrUpdateFaceprints:(id)a3 andRemoveFaceprintsWithUUIDs:(id)a4
{
  v33 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDPersonCoreDataManager *)self home];
  if (v8)
  {
    v9 = objc_alloc_init(MEMORY[0x277D2C900]);
    v10 = MEMORY[0x277D2C938];
    v11 = [(HMDPersonCoreDataManager *)self workQueue];
    v12 = [v10 schedulerWithDispatchQueue:v11];
    v13 = [v9 reschedule:v12];

    v14 = [(HMDPersonCoreDataManager *)self context];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __79__HMDPersonCoreDataManager_addOrUpdateFaceprints_andRemoveFaceprintsWithUUIDs___block_invoke;
    v26[3] = &unk_2786891E0;
    v27 = v6;
    v28 = self;
    v29 = v7;
    v15 = v13;
    v30 = v15;
    [v14 performBlock:v26];

    v16 = v30;
    v17 = v15;

    v18 = v17;
  }

  else
  {
    v19 = objc_autoreleasePoolPush();
    v20 = self;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier();
      *buf = 138543362;
      v32 = v22;
      _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_ERROR, "%{public}@Home reference was nil while adding or updating faceprints", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v19);
    v23 = MEMORY[0x277D2C900];
    v17 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
    v18 = [v23 futureWithError:v17];
  }

  v24 = *MEMORY[0x277D85DE8];

  return v18;
}

void __79__HMDPersonCoreDataManager_addOrUpdateFaceprints_andRemoveFaceprintsWithUUIDs___block_invoke(id *a1)
{
  v1 = a1;
  v50 = *MEMORY[0x277D85DE8];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v2 = a1[4];
  v3 = [v2 countByEnumeratingWithState:&v40 objects:v49 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v41;
    do
    {
      v6 = 0;
      do
      {
        if (*v41 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [v1[5] insertOrUpdateFaceprintUsingFaceprint:*(*(&v40 + 1) + 8 * v6++)];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v40 objects:v49 count:16];
    }

    while (v4);
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = v1[6];
  v7 = [obj countByEnumeratingWithState:&v36 objects:v48 count:16];
  if (v7)
  {
    v9 = v7;
    v10 = *v37;
    p_cache = &OBJC_METACLASS___HMDAccessCodeManagerUtilities.cache;
    *&v8 = 138543618;
    v32 = v8;
    v33 = v1;
    do
    {
      v12 = 0;
      do
      {
        if (*v37 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v36 + 1) + 8 * v12);
        v14 = [v1[5] context];
        v15 = [v14 managedObjectContext];
        v16 = [p_cache + 383 modelWithModelID:v13 context:v15];

        if (v16)
        {
          v17 = [v1[5] context];
          v18 = [v17 managedObjectContext];
          [v18 deleteObject:v16];
        }

        else
        {
          v19 = objc_autoreleasePoolPush();
          v20 = v1[5];
          v21 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            HMFGetLogIdentifier();
            v23 = v22 = p_cache;
            *buf = v32;
            v45 = v23;
            v46 = 2112;
            v47 = v13;
            _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@Not removing faceprint that cannot be found for UUID: %@", buf, 0x16u);

            p_cache = v22;
            v1 = v33;
          }

          objc_autoreleasePoolPop(v19);
        }

        ++v12;
      }

      while (v9 != v12);
      v9 = [obj countByEnumeratingWithState:&v36 objects:v48 count:16];
    }

    while (v9);
  }

  v24 = [v1[5] context];
  v35 = 0;
  v25 = [v24 save:&v35];
  v26 = v35;

  if (v25)
  {
    [v1[7] finishWithNoResult];
  }

  else
  {
    v27 = objc_autoreleasePoolPush();
    v28 = v1[5];
    v29 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = HMFGetLogIdentifier();
      *buf = 138543618;
      v45 = v30;
      v46 = 2112;
      v47 = v26;
      _os_log_impl(&dword_229538000, v29, OS_LOG_TYPE_ERROR, "%{public}@Failed to add or update faceprints: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v27);
    [v1[7] finishWithError:v26];
  }

  v31 = *MEMORY[0x277D85DE8];
}

- (void)enumerateFaceprintsForFaceCropsWithUUIDs:(id)a3 usingBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HMDPersonCoreDataManager *)self context];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __80__HMDPersonCoreDataManager_enumerateFaceprintsForFaceCropsWithUUIDs_usingBlock___block_invoke;
  v11[3] = &unk_278689F98;
  v11[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  [v8 unsafeSynchronousBlock:v11];
}

void __80__HMDPersonCoreDataManager_enumerateFaceprintsForFaceCropsWithUUIDs_usingBlock___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __80__HMDPersonCoreDataManager_enumerateFaceprintsForFaceCropsWithUUIDs_usingBlock___block_invoke_2;
  v3[3] = &unk_278687810;
  v4 = *(a1 + 48);
  [v1 enumerateMKFFaceprintsForFaceCropsWithUUIDs:v2 usingBlock:v3];
}

void __80__HMDPersonCoreDataManager_enumerateFaceprintsForFaceCropsWithUUIDs_usingBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 createHMFaceprint];
  if (v3)
  {
    v4 = v3;
    (*(*(a1 + 32) + 16))();
    v3 = v4;
  }
}

- (void)enumerateFaceprintsUsingBlock:(id)a3
{
  v4 = a3;
  v5 = [(HMDPersonCoreDataManager *)self context];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58__HMDPersonCoreDataManager_enumerateFaceprintsUsingBlock___block_invoke;
  v7[3] = &unk_27868A7A0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 unsafeSynchronousBlock:v7];
}

void __58__HMDPersonCoreDataManager_enumerateFaceprintsUsingBlock___block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __58__HMDPersonCoreDataManager_enumerateFaceprintsUsingBlock___block_invoke_2;
  v2[3] = &unk_278687810;
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  [v1 enumerateMKFFaceprintsForFaceCropsWithUUIDs:0 usingBlock:v2];
}

void __58__HMDPersonCoreDataManager_enumerateFaceprintsUsingBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 createHMFaceprint];
  if (v3)
  {
    v4 = v3;
    (*(*(a1 + 32) + 16))();
    v3 = v4;
  }
}

- (id)addOrUpdatePersons:(id)a3 andRemovePersonsWithUUIDs:(id)a4
{
  v34 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDPersonCoreDataManager *)self home];
  if (!v8)
  {
    v11 = objc_autoreleasePoolPush();
    v12 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543362;
      v33 = v14;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_ERROR, "%{public}@Home reference was nil while adding or updating persons", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v11);
    v15 = MEMORY[0x277D2C900];
    v9 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
    v10 = [v15 futureWithError:v9];
    goto LABEL_7;
  }

  if ([(HMDPersonCoreDataManager *)self shouldDispatchToPrimaryResident])
  {
    v9 = [(HMDPersonCoreDataManager *)self residentSyncManager];
    v10 = [v9 addOrUpdatePersons:v6 andRemovePersonsWithUUIDs:v7];
LABEL_7:
    v16 = v10;

    goto LABEL_9;
  }

  v17 = objc_alloc_init(MEMORY[0x277D2C900]);
  v18 = MEMORY[0x277D2C938];
  v19 = [(HMDPersonCoreDataManager *)self workQueue];
  v20 = [v18 schedulerWithDispatchQueue:v19];
  v21 = [v17 reschedule:v20];

  v22 = [(HMDPersonCoreDataManager *)self context];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __73__HMDPersonCoreDataManager_addOrUpdatePersons_andRemovePersonsWithUUIDs___block_invoke;
  v27[3] = &unk_2786891E0;
  v28 = v6;
  v29 = self;
  v30 = v7;
  v23 = v21;
  v31 = v23;
  [v22 performBlock:v27];

  v24 = v31;
  v16 = v23;

LABEL_9:
  v25 = *MEMORY[0x277D85DE8];

  return v16;
}

void __73__HMDPersonCoreDataManager_addOrUpdatePersons_andRemovePersonsWithUUIDs___block_invoke(id *a1)
{
  v1 = a1;
  v47 = *MEMORY[0x277D85DE8];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v2 = a1[4];
  v3 = [v2 countByEnumeratingWithState:&v37 objects:v46 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v38;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v38 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [v1[5] insertOrUpdatePersonUsingPerson:*(*(&v37 + 1) + 8 * i)];
      }

      v4 = [v2 countByEnumeratingWithState:&v37 objects:v46 count:16];
    }

    while (v4);
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v7 = v1[6];
  v8 = [v7 countByEnumeratingWithState:&v33 objects:v45 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v34;
    v31 = v1;
    do
    {
      for (j = 0; j != v9; ++j)
      {
        if (*v34 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v33 + 1) + 8 * j);
        v13 = [v1[5] personModelWithModelID:v12];
        if (v13)
        {
          v14 = [v1[5] context];
          v15 = [v14 managedObjectContext];
          [v15 deleteObject:v13];
        }

        else
        {
          v16 = objc_autoreleasePoolPush();
          v17 = v1[5];
          v18 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            HMFGetLogIdentifier();
            v19 = v9;
            v20 = v10;
            v22 = v21 = v7;
            *buf = 138543618;
            v42 = v22;
            v43 = 2112;
            v44 = v12;
            _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@Not removing person that cannot be found for UUID: %@", buf, 0x16u);

            v7 = v21;
            v10 = v20;
            v9 = v19;
            v1 = v31;
          }

          objc_autoreleasePoolPop(v16);
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v33 objects:v45 count:16];
    }

    while (v9);
  }

  v23 = [v1[5] context];
  v32 = 0;
  v24 = [v23 save:&v32];
  v25 = v32;

  if (v24)
  {
    [v1[7] finishWithNoResult];
  }

  else
  {
    v26 = objc_autoreleasePoolPush();
    v27 = v1[5];
    v28 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v29 = HMFGetLogIdentifier();
      *buf = 138543618;
      v42 = v29;
      v43 = 2112;
      v44 = v25;
      _os_log_impl(&dword_229538000, v28, OS_LOG_TYPE_ERROR, "%{public}@Failed to add or update persons: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v26);
    [v1[7] finishWithError:v25];
  }

  v30 = *MEMORY[0x277D85DE8];
}

- (void)enumeratePersonsUsingBlock:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__264231;
  v15 = __Block_byref_object_dispose__264232;
  v16 = 0;
  v5 = [(HMDPersonCoreDataManager *)self context];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __55__HMDPersonCoreDataManager_enumeratePersonsUsingBlock___block_invoke;
  v10[3] = &unk_27868A688;
  v10[4] = self;
  v10[5] = &v11;
  [v5 unsafeSynchronousBlock:v10];

  v6 = v12[5];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __55__HMDPersonCoreDataManager_enumeratePersonsUsingBlock___block_invoke_2;
  v8[3] = &unk_2786877E8;
  v7 = v4;
  v9 = v7;
  [v6 hmf_enumerateWithAutoreleasePoolUsingBlock:v8];

  _Block_object_dispose(&v11, 8);
}

void __55__HMDPersonCoreDataManager_enumeratePersonsUsingBlock___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) persons];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)personWithUUID:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__264231;
  v16 = __Block_byref_object_dispose__264232;
  v17 = 0;
  v5 = [(HMDPersonCoreDataManager *)self context];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __43__HMDPersonCoreDataManager_personWithUUID___block_invoke;
  v9[3] = &unk_27868A4D8;
  v11 = &v12;
  v9[4] = self;
  v6 = v4;
  v10 = v6;
  [v5 unsafeSynchronousBlock:v9];

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

void __43__HMDPersonCoreDataManager_personWithUUID___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) personWithModelID:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)configureWithDataSource:(id)a3
{
  v4 = a3;
  v5 = [(HMDPersonCoreDataManager *)self workQueue];
  dispatch_assert_queue_V2(v5);

  [(HMDPersonCoreDataManager *)self setDataSource:v4];
  v6 = [(HMDPersonCoreDataManager *)self notificationCenter];
  [v6 addObserver:self selector:sel_handleManagedObjectContextWillSaveNotification_ name:*MEMORY[0x277CBE1C0] object:0];

  v7 = [(HMDPersonCoreDataManager *)self notificationCenter];
  [v7 addObserver:self selector:sel_handleManagedObjectContextDidSaveNotification_ name:*MEMORY[0x277CBE1A8] object:0];

  v9 = [(HMDPersonCoreDataManager *)self residentSyncManager];
  v8 = [(HMDPersonCoreDataManager *)self home];
  [v9 configureWithHome:v8 delegate:self];
}

- (HMDPersonCoreDataManager)initWithUUID:(id)a3 workQueue:(id)a4 home:(id)a5 userUUID:(id)a6 context:(id)a7 residentSyncManager:(id)a8 notificationCenter:(id)a9
{
  v15 = a3;
  v28 = a4;
  v16 = a5;
  v17 = a6;
  v27 = a7;
  v18 = a8;
  v19 = a9;
  v29.receiver = self;
  v29.super_class = HMDPersonCoreDataManager;
  v20 = [(HMDPersonCoreDataManager *)&v29 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_workQueue, a4);
    v22 = [v15 copy];
    UUID = v21->_UUID;
    v21->_UUID = v22;

    objc_storeWeak(&v21->_home, v16);
    v24 = [v17 copy];
    userUUID = v21->_userUUID;
    v21->_userUUID = v24;

    objc_storeStrong(&v21->_context, a7);
    objc_storeStrong(&v21->_residentSyncManager, a8);
    objc_storeStrong(&v21->_notificationCenter, a9);
  }

  return v21;
}

- (HMDPersonCoreDataManager)initWithUUID:(id)a3 workQueue:(id)a4 home:(id)a5 userUUID:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [v11 backingStore];
  v15 = [v14 context];

  v16 = [HMDPersonResidentSyncManager alloc];
  v17 = [v11 msgDispatcher];
  v18 = [v11 residentSyncManager];
  v19 = [(HMDPersonResidentSyncManager *)v16 initWithUUID:v13 messageDispatcher:v17 workQueue:v12 residentSyncManager:v18];

  v20 = [MEMORY[0x277CCAB98] defaultCenter];
  v21 = [(HMDPersonCoreDataManager *)self initWithUUID:v13 workQueue:v12 home:v11 userUUID:v10 context:v15 residentSyncManager:v19 notificationCenter:v20];

  return v21;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t42_264244 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t42_264244, &__block_literal_global_54_264245);
  }

  v3 = logCategory__hmf_once_v43_264246;

  return v3;
}

void __39__HMDPersonCoreDataManager_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v43_264246;
  logCategory__hmf_once_v43_264246 = v1;
}

@end