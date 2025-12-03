@interface HMDBackingStoreCacheFetchMigratedResult
- (HMDBackingStoreCacheFetchMigratedResult)initWithGroup:(id)group update:(BOOL)update migration:(BOOL)migration fetchResult:(id)result;
- (id)mainReturningError;
@end

@implementation HMDBackingStoreCacheFetchMigratedResult

- (id)mainReturningError
{
  v54 = *MEMORY[0x277D85DE8];
  v3 = +[HMDBackingStoreSingleton sharedInstance];
  array = [MEMORY[0x277CBEB18] array];
  group = [(HMDBackingStoreCacheFetchMigratedResult *)self group];
  groupID = [group groupID];

  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  v8 = v7;
  v46 = 0;
  v47 = &v46;
  v48 = 0x2020000000;
  v49 = 0;
  v40 = 0;
  v41 = &v40;
  v42 = 0x3032000000;
  v43 = __Block_byref_object_copy__16828;
  v44 = __Block_byref_object_dispose__16829;
  v45 = 0;
  objc_initWeak(&location, self);
  if ([(HMDBackingStoreCacheFetchMigratedResult *)self migration])
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __61__HMDBackingStoreCacheFetchMigratedResult_mainReturningError__block_invoke;
    aBlock[3] = &unk_279723768;
    objc_copyWeak(v38, &location);
    v36 = &v40;
    v9 = v3;
    v38[1] = groupID;
    v35 = v9;
    v37 = &v46;
    v10 = _Block_copy(aBlock);
    store = [(HMDBackingStoreOperation *)self store];
    local = [store local];
    [local _fetchRecordTypeSchemaWithGroupID:groupID callback:v10];

    objc_destroyWeak(v38);
  }

  if (![(HMDBackingStoreCacheFetchMigratedResult *)self migration]|| *(v47 + 24) == 1)
  {
    array2 = [MEMORY[0x277CBEB18] array];

    v14 = v41[5];
    v41[5] = 0;

    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __61__HMDBackingStoreCacheFetchMigratedResult_mainReturningError__block_invoke_413;
    v29[3] = &unk_279723790;
    objc_copyWeak(v33, &location);
    v32 = &v40;
    v33[1] = groupID;
    v30 = v3;
    array = array2;
    v31 = array;
    v15 = _Block_copy(v29);
    store2 = [(HMDBackingStoreOperation *)self store];
    local2 = [store2 local];
    [local2 _fetchRecordsWithGroupID:groupID callback:v15];

    objc_destroyWeak(v33);
  }

  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  v19 = v18;
  v20 = objc_autoreleasePoolPush();
  selfCopy = self;
  v22 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v23 = HMFGetLogIdentifier();
    *buf = 138543618;
    v51 = v23;
    v52 = 2048;
    v53 = v19 - v8;
    _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_DEFAULT, "%{public}@time to fetch migrated records: %.4f s", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v20);
  if (v41[5])
  {

    array = 0;
  }

  fetchResult = [(HMDBackingStoreCacheFetchMigratedResult *)selfCopy fetchResult];

  if (fetchResult)
  {
    fetchResult2 = [(HMDBackingStoreCacheFetchMigratedResult *)selfCopy fetchResult];
    (fetchResult2)[2](fetchResult2, array, v41[5]);
  }

  v26 = v41[5];
  objc_destroyWeak(&location);
  _Block_object_dispose(&v40, 8);

  _Block_object_dispose(&v46, 8);
  v27 = *MEMORY[0x277D85DE8];

  return v26;
}

uint64_t __61__HMDBackingStoreCacheFetchMigratedResult_mainReturningError__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v33 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v11 = WeakRetained;
  if (v9)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a4);
LABEL_3:
    v12 = 0;
    goto LABEL_4;
  }

  v12 = 1;
  if (v7 && WeakRetained)
  {
    v15 = +[HMDBackingStoreSingleton sharedInstance];
    v16 = [v15 nameToClassTransform];
    v17 = [v16 objectForKey:v7];

    if (!v17)
    {
      v18 = NSClassFromString(v7);
      if (!v18)
      {
        goto LABEL_16;
      }

      v17 = v18;
    }

    if ([(objc_class *)v17 isSubclassOfClass:objc_opt_class()])
    {
      v19 = [v17 alloc];
      v20 = [MEMORY[0x277CCAD78] UUID];
      v21 = [v19 initWithUUID:v20];

      if (v21)
      {
        v22 = [*(a1 + 32) schemaHashForObject:v21];
        if (!v8 || ([v8 isEqual:v22] & 1) == 0)
        {
          v23 = objc_autoreleasePoolPush();
          v24 = v11;
          v25 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            HMFGetLogIdentifier();
            v26 = v28 = v23;
            v27 = *(a1 + 64);
            *buf = 138543618;
            v30 = v26;
            v31 = 2048;
            v32 = v27;
            _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_DEFAULT, "%{public}@detected migrations is need for %lu", buf, 0x16u);

            v23 = v28;
          }

          objc_autoreleasePoolPop(v23);
          *(*(*(a1 + 48) + 8) + 24) = 1;

          goto LABEL_3;
        }
      }
    }

LABEL_16:
    v12 = 1;
  }

LABEL_4:

  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

uint64_t __61__HMDBackingStoreCacheFetchMigratedResult_mainReturningError__block_invoke_413(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5, void *a6, void *a7, void *a8, void *a9, void *a10)
{
  v67 = *MEMORY[0x277D85DE8];
  v17 = a2;
  v18 = a3;
  v19 = a5;
  v53 = a6;
  v52 = a7;
  v20 = a8;
  v21 = a9;
  v22 = a10;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v24 = WeakRetained;
  if (v22)
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a10);
    v25 = 1;
    goto LABEL_22;
  }

  v25 = 0;
  if (v17 && WeakRetained)
  {
    v54 = 0;
    v26 = [HMDBackingStoreModelObject objectFromData:v19 encoding:a4 record:v18 error:&v54];
    v51 = v54;
    if (v51 || !v26)
    {
      v50 = v26;
      v48 = objc_autoreleasePoolPush();
      v36 = v24;
      v37 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        v38 = HMFGetLogIdentifier();
        v39 = *(a1 + 64);
        *buf = 138543874;
        v56 = v38;
        v40 = v38;
        v57 = 2048;
        v58 = v39;
        v59 = 2112;
        v60 = v17;
        _os_log_impl(&dword_2531F8000, v37, OS_LOG_TYPE_ERROR, "%{public}@unable to decode object for %lu / %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v48);
      v25 = 0;
      v26 = v50;
      goto LABEL_21;
    }

    if ([v24 migration])
    {
      v47 = [*(a1 + 32) schemaHashForObject:v26];
      if (!v21 || ([v21 isEqual:v47] & 1) == 0)
      {
        v49 = v26;
        context = objc_autoreleasePoolPush();
        v46 = v24;
        v27 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          v28 = HMFGetLogIdentifier();
          v43 = *(a1 + 64);
          v44 = v28;
          v29 = objc_opt_class();
          *buf = 138544642;
          v56 = v28;
          v57 = 2048;
          v58 = v43;
          v59 = 2112;
          v60 = v17;
          v61 = 2112;
          v62 = v29;
          v63 = 2112;
          v64 = v21;
          v65 = 2112;
          v66 = v47;
          v30 = v29;
          _os_log_impl(&dword_2531F8000, v27, OS_LOG_TYPE_DEFAULT, "%{public}@detected a schema change for %lu / %@/%@ from %@ to %@", buf, 0x3Eu);
        }

        objc_autoreleasePoolPop(context);
        v26 = v49;
        [*(a1 + 40) addObject:v49];
        if ([v46 update])
        {
          v31 = [v46 store];
          v32 = [v31 local];
          v33 = [v32 _updateRecordWithGroupID:*(a1 + 64) name:v17 schema:v47];
          v34 = *(*(a1 + 48) + 8);
          v35 = *(v34 + 40);
          *(v34 + 40) = v33;

          v26 = v49;
          if (*(*(*(a1 + 48) + 8) + 40))
          {

            v25 = 1;
LABEL_21:

            goto LABEL_22;
          }
        }
      }
    }

    else
    {
      [*(a1 + 40) addObject:v26];
    }

    v25 = 0;
    goto LABEL_21;
  }

LABEL_22:

  v41 = *MEMORY[0x277D85DE8];
  return v25;
}

- (HMDBackingStoreCacheFetchMigratedResult)initWithGroup:(id)group update:(BOOL)update migration:(BOOL)migration fetchResult:(id)result
{
  groupCopy = group;
  resultCopy = result;
  v19.receiver = self;
  v19.super_class = HMDBackingStoreCacheFetchMigratedResult;
  v13 = [(HMDBackingStoreOperation *)&v19 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_group, group);
    v14->_update = update;
    v14->_migration = migration;
    v15 = _Block_copy(resultCopy);
    fetchResult = v14->_fetchResult;
    v14->_fetchResult = v15;

    v17 = v14;
  }

  return v14;
}

@end