@interface HMDBackingStore
+ (NSSet)allowedTypes;
+ (NSSet)deeplyProblematicObjectTypes;
+ (NSSet)internalAllowedTypes;
+ (id)cdlsActiveBackingStores;
+ (id)cdlsBackingStoreForHomeManagerWithError:(id *)a3;
+ (id)cdlsBackingStoreWithHandle:(id)a3 error:(id *)a4;
+ (id)cdlsFetchManagedObjectWithUUID:(id)a3 ofManagedObjectType:(Class)a4 error:(id *)a5;
+ (id)cdlsFetchManagedObjectWithUUID:(id)a3 ofModelType:(Class)a4 error:(id *)a5;
+ (id)cdlsFetchManagedObjectsWithUUIDStrings:(id)a3 ofManagedObjectType:(Class)a4;
+ (id)cdlsFetchObjectWithUUID:(id)a3 ofModelType:(Class)a4 error:(id *)a5;
+ (id)cdlsModelIDStringsForManagedObjects:(id)a3;
+ (id)logCategory;
+ (void)saveToPersistentStoreWithReason:(id)a3 homeManager:(id)a4 shouldIncrementGenerationCounter:(BOOL)a5 backingStore:(id)a6 completionHandler:(id)a7;
- (HMDBackingStore)initWithUUID:(id)a3;
- (HMDBackingStore)initWithUUID:(id)a3 home:(id)a4;
- (HMDBackingStore)initWithUUID:(id)a3 homeManager:(id)a4;
- (HMDBackingStore)initWithUUID:(id)a3 homeManager:(id)a4 home:(id)a5 dataSource:(id)a6;
- (HMDBackingStoreObjectProtocol)delegate;
- (HMDCoreData)coreData;
- (HMDHome)home;
- (HMDHomeManager)homeManager;
- (NSString)activeControllerKeyUsername;
- (id)backingStoreOperationQueue;
- (id)cdlsFetchObjectWithUUID:(id)a3 ofModelType:(Class)a4 error:(id *)a5;
- (id)createBackingStoreLogAddTransactionOperationWithTransaction:(id)a3;
- (id)createBackingStoreOperation;
- (id)createHomeObjectLookupWithHome:(id)a3;
- (id)localBackingStore;
- (id)logIdentifier;
- (id)transaction:(id)a3 options:(id)a4;
- (void)_cdlsReplayAllModelsStartingAt:(id)a3 fromContext:(id)a4 isInitialGraphLoad:(BOOL)a5;
- (void)cdlsCommit:(id)a3 run:(BOOL)a4 save:(BOOL)a5 coreDataBlock:(id)a6 completionHandler:(id)a7;
- (void)cdlsReplayAllModelsStartingAt:(id)a3 isInitialGraphLoad:(BOOL)a4;
- (void)dmKickClients;
- (void)handleCoreDataDidSaveNotification:(id)a3;
- (void)handleCoreDataDidSaveNotification:(id)a3 sourceContext:(id)a4;
- (void)handleCoreDataWillSaveNotification:(id)a3;
- (void)setContext:(id)a3;
- (void)shouldHandleNotificationFromContext:(void *)a1;
- (void)submitBlock:(id)a3;
@end

@implementation HMDBackingStore

- (HMDCoreData)coreData
{
  v2 = +[HMDMainDriver driver];
  v3 = [v2 coreData];

  return v3;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t10_242029 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t10_242029, &__block_literal_global_106_242030);
  }

  v3 = logCategory__hmf_once_v11_242031;

  return v3;
}

- (void)cdlsCommit:(id)a3 run:(BOOL)a4 save:(BOOL)a5 coreDataBlock:(id)a6 completionHandler:(id)a7
{
  v10 = a3;
  v11 = a6;
  v12 = a7;
  v13 = [(HMDBackingStore *)self home];
  v14 = [(HMDBackingStore *)self context];
  v15 = [v14 managedObjectContext];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __81__HMDBackingStore_CoreData__cdlsCommit_run_save_coreDataBlock_completionHandler___block_invoke;
  v21[3] = &unk_278676728;
  v21[4] = self;
  v22 = v10;
  v23 = v13;
  v24 = v15;
  v25 = v11;
  v26 = v12;
  v16 = v12;
  v17 = v11;
  v18 = v15;
  v19 = v13;
  v20 = v10;
  [v14 performBlock:v21];
}

void __81__HMDBackingStore_CoreData__cdlsCommit_run_save_coreDataBlock_completionHandler___block_invoke(uint64_t a1)
{
  v82 = *MEMORY[0x277D85DE8];
  v74 = 0;
  v75 = &v74;
  v76 = 0x2020000000;
  v77 = 0;
  v68 = 0;
  v69 = &v68;
  v70 = 0x3032000000;
  v71 = __Block_byref_object_copy__49687;
  v72 = __Block_byref_object_dispose__49688;
  v73 = 0;
  v62 = 0;
  v63 = &v62;
  v64 = 0x3032000000;
  v65 = __Block_byref_object_copy__49687;
  v66 = __Block_byref_object_dispose__49688;
  v67 = 0;
  v2 = [*(a1 + 32) context];
  v3 = [v2 managedObjectContext];

  v4 = [*(a1 + 40) options];
  v5 = [v4 label];
  v6 = v5;
  v7 = @"<no message>";
  if (v5)
  {
    v7 = v5;
  }

  v8 = v7;

  v9 = [*(a1 + 40) objects];
  v53[0] = MEMORY[0x277D85DD0];
  v53[1] = 3221225472;
  v53[2] = __81__HMDBackingStore_CoreData__cdlsCommit_run_save_coreDataBlock_completionHandler___block_invoke_2;
  v53[3] = &unk_2786736B0;
  v59 = &v68;
  v10 = *(a1 + 48);
  v60 = &v74;
  v11 = *(a1 + 32);
  v54 = v10;
  v55 = v11;
  v12 = v8;
  v56 = v12;
  v57 = *(a1 + 56);
  v61 = &v62;
  v13 = v3;
  v58 = v13;
  [v9 hmf_enumerateWithAutoreleasePoolUsingBlock:v53];

  if (v63[5])
  {
    v14 = _Block_copy(*(a1 + 64));
    v15 = v14;
    if (v14)
    {
      (*(v14 + 2))(v14, v13, v63[5], 0);
    }

    v16 = [*(a1 + 32) context];
    [v16 rollback];

    v17 = _Block_copy(*(a1 + 72));
    v18 = v17;
    if (v17)
    {
      (*(v17 + 2))(v17, v63[5]);
    }
  }

  else
  {
    v19 = [*(a1 + 40) objects];
    v50[0] = MEMORY[0x277D85DD0];
    v50[1] = 3221225472;
    v50[2] = __81__HMDBackingStore_CoreData__cdlsCommit_run_save_coreDataBlock_completionHandler___block_invoke_52;
    v50[3] = &unk_2786736D8;
    v50[4] = *(a1 + 32);
    v20 = v13;
    v51 = v20;
    v52 = &v62;
    [v19 hmf_enumerateWithAutoreleasePoolUsingBlock:v50];

    v21 = v63[5] == 0;
    v22 = _Block_copy(*(a1 + 64));
    v23 = v22;
    if (v21)
    {
      if (v22)
      {
        v27 = (v63 + 5);
        obj = v63[5];
        (*(v22 + 2))(v22, v20, 0, &obj);
        objc_storeStrong(v27, obj);
      }

      if (v63[5])
      {
        v28 = [*(a1 + 32) context];
        [v28 rollback];

        v29 = _Block_copy(*(a1 + 72));
        v26 = v29;
        if (v29)
        {
          (*(v29 + 2))(v29, v63[5]);
        }
      }

      else
      {
        v26 = [v20 userInfo];
        [v26 setObject:*(a1 + 40) forKeyedSubscript:@"HMD.v4txn"];
        v30 = [*(a1 + 40) options];
        v31 = [v30 clientIdentifier];
        if (v31)
        {
          v32 = [v30 clientIdentifier];
          v33 = v69[5];
          v69[5] = v32;
        }

        else
        {
          v34 = v69;
          v35 = v69[5];
          v33 = v34[5];
          v34[5] = v35;
        }

        v36 = [v30 cdTransactionAuthor];
        v37 = v69[5];
        v38 = *(v75 + 24);
        v39 = (v63 + 5);
        v48 = v63[5];
        [v20 hmd_saveWithTransactionAuthor:v36 clientIdentifier:v37 allowQoSEscalation:v38 error:&v48];
        objc_storeStrong(v39, v48);
        [v20 reset];
        removeDictionaryEntry(v26, @"HMD.v4txn", *(a1 + 40));
        if (v63[5])
        {
          v40 = objc_autoreleasePoolPush();
          v41 = *(a1 + 32);
          v42 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
          {
            v43 = HMFGetLogIdentifier();
            v44 = v63[5];
            *buf = 138543618;
            v79 = v43;
            v80 = 2112;
            v81 = v44;
            _os_log_impl(&dword_229538000, v42, OS_LOG_TYPE_ERROR, "%{public}@Context save failed: %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v40);
        }

        v45 = _Block_copy(*(a1 + 72));
        if (v45)
        {
          v46 = HMDSanitizeCoreDataError(v63[5]);
          v45[2](v45, v46);
        }
      }
    }

    else
    {
      if (v22)
      {
        (*(v22 + 2))(v22, v20, v63[5], 0);
      }

      v24 = [*(a1 + 32) context];
      [v24 rollback];

      v25 = _Block_copy(*(a1 + 72));
      v26 = v25;
      if (v25)
      {
        (*(v25 + 2))(v25, v63[5]);
      }
    }
  }

  _Block_object_dispose(&v62, 8);
  _Block_object_dispose(&v68, 8);

  _Block_object_dispose(&v74, 8);
  v47 = *MEMORY[0x277D85DE8];
}

void __81__HMDBackingStore_CoreData__cdlsCommit_run_save_coreDataBlock_completionHandler___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v79 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [(__CFString *)v5 message];
  v7 = v6;
  if (!*(*(*(a1 + 72) + 8) + 40))
  {
    v15 = [v6 untrustedClientIdentifier];
    if (v15)
    {
      v16 = *(a1 + 32);

      if (v16)
      {
        v17 = [v7 untrustedClientIdentifier];
        v18 = *(*(a1 + 72) + 8);
        v19 = *(v18 + 40);
        *(v18 + 40) = v17;

        v20 = [v7 userForHome:*(a1 + 32)];
        *(*(*(a1 + 80) + 8) + 24) = [v20 isOwner];
      }
    }
  }

  v8 = [(__CFString *)v5 change];
  v9 = HMDCastIfModelCDRepresentable(v8);

  v10 = objc_autoreleasePoolPush();
  v11 = *(a1 + 40);
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v64 = v10;
    v63 = HMFGetLogIdentifier();
    v62 = [(__CFString *)v5 change];
    v13 = [v62 objectChangeType];
    if ((v13 - 1) > 2)
    {
      v14 = @"unknown";
    }

    else
    {
      v14 = off_278680560[v13 - 1];
    }

    v21 = v14;
    v66 = v7;
    v22 = [v7 name];
    v23 = v22;
    if (!v22)
    {
      v23 = *(a1 + 48);
    }

    v24 = [(__CFString *)v5 change];
    v25 = [v24 debugString:1];
    *buf = 138544130;
    v72 = v63;
    v73 = 2112;
    v74 = v21;
    v75 = 2112;
    v76 = v23;
    v77 = 2112;
    v78 = v25;
    _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@COREDATA LEGACY PROCESSING: %@ (%@)\n%@", buf, 0x2Au);

    v7 = v66;
    v10 = v64;
  }

  objc_autoreleasePoolPop(v10);
  v26 = [(__CFString *)v5 change];
  v27 = [v26 objectChangeType];

  v28 = *(*(a1 + 88) + 8);
  v31 = *(v28 + 40);
  v30 = (v28 + 40);
  v29 = v31;
  if (v27 == 3)
  {
    v32 = *(a1 + 56);
    obj = v29;
    v33 = [v9 cd_fetchManagedObjectInContext:v32 error:&obj];
    objc_storeStrong(v30, obj);

    if (v33)
    {
      v34 = [v9 managedObject];

      if (v34)
      {
        v35 = *(a1 + 64);
        v36 = [v9 managedObject];
        [v35 deleteObject:v36];

        goto LABEL_29;
      }

      v68 = v9;
      v39 = objc_autoreleasePoolPush();
      v54 = *(a1 + 40);
      v55 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
      {
        v56 = HMFGetLogIdentifier();
        v57 = [(__CFString *)v5 change];
        v58 = [v57 bsoType];
        v59 = [(__CFString *)v5 change];
        v60 = [v59 uuid];
        *buf = 138543874;
        v72 = v56;
        v73 = 2112;
        v74 = v58;
        v75 = 2112;
        v76 = v60;
        _os_log_impl(&dword_229538000, v55, OS_LOG_TYPE_DEFAULT, "%{public}@Fetch succeeded for %@.%@ but no managed object actually found", buf, 0x20u);
      }
    }

    else
    {
      v68 = v9;
      v39 = objc_autoreleasePoolPush();
      v40 = *(a1 + 40);
      v41 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        v42 = HMFGetLogIdentifier();
        [(__CFString *)v5 change];
        v43 = v67 = v7;
        v44 = [v43 bsoType];
        v45 = [(__CFString *)v5 change];
        v46 = [v45 uuid];
        v47 = *(*(*(a1 + 88) + 8) + 40);
        *buf = 138544130;
        v72 = v42;
        v73 = 2112;
        v74 = v44;
        v75 = 2112;
        v76 = v46;
        v77 = 2112;
        v78 = v47;
        _os_log_impl(&dword_229538000, v41, OS_LOG_TYPE_ERROR, "%{public}@Unable to find %@.%@ for deletion: %@", buf, 0x2Au);

        v7 = v67;
      }
    }

    objc_autoreleasePoolPop(v39);
    v9 = v68;
    goto LABEL_29;
  }

  v37 = *(a1 + 64);
  v69 = v29;
  v38 = [v9 cd_currentManagedObjectInContext:v37 error:&v69];
  objc_storeStrong(v30, v69);
  if (v38)
  {
  }

  else if (*(*(*(a1 + 88) + 8) + 40))
  {
    v48 = v9;
    v49 = objc_autoreleasePoolPush();
    v50 = *(a1 + 40);
    v51 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
    {
      v52 = HMFGetLogIdentifier();
      v53 = *(*(*(a1 + 88) + 8) + 40);
      *buf = 138543874;
      v72 = v52;
      v73 = 2112;
      v74 = v5;
      v75 = 2112;
      v76 = v53;
      _os_log_impl(&dword_229538000, v51, OS_LOG_TYPE_ERROR, "%{public}@Unable to find current managed object for %@: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v49);
    *a4 = 1;
    v9 = v48;
  }

LABEL_29:

  v61 = *MEMORY[0x277D85DE8];
}

void __81__HMDBackingStore_CoreData__cdlsCommit_run_save_coreDataBlock_completionHandler___block_invoke_52(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 change];
  v5 = [v4 objectChangeType];

  if (v5 != 3)
  {
    v6 = [v3 change];
    v7 = HMDCastIfModelCDRepresentable(v6);

    if (v7)
    {
      v8 = *(a1 + 40);
      v9 = *(*(a1 + 48) + 8);
      obj = *(v9 + 40);
      v10 = [v7 cd_updateManagedObjectInContext:v8 error:&obj];
      objc_storeStrong((v9 + 40), obj);
      if (v10)
      {
LABEL_9:

        goto LABEL_10;
      }

      v11 = objc_autoreleasePoolPush();
      v12 = *(a1 + 32);
      v13 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = HMFGetLogIdentifier();
        v15 = [v3 change];
        v16 = *(*(*(a1 + 48) + 8) + 40);
        *buf = 138543874;
        v22 = v14;
        v23 = 2112;
        v24 = v15;
        v25 = 2112;
        v26 = v16;
        _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_ERROR, "%{public}@Unable to update managed object for %@: %@", buf, 0x20u);
      }
    }

    else
    {
      v11 = objc_autoreleasePoolPush();
      v12 = *(a1 + 32);
      v13 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v17 = HMFGetLogIdentifier();
        v18 = [v3 change];
        *buf = 138543618;
        v22 = v17;
        v23 = 2112;
        v24 = v18;
        _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_ERROR, "%{public}@Got a %@ but don't know how to represent it as a NSManagedObject", buf, 0x16u);
      }
    }

    objc_autoreleasePoolPop(v11);
    goto LABEL_9;
  }

LABEL_10:

  v19 = *MEMORY[0x277D85DE8];
}

- (void)_cdlsReplayAllModelsStartingAt:(id)a3 fromContext:(id)a4 isInitialGraphLoad:(BOOL)a5
{
  v62 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  v11 = v10;
  v12 = [v8 uuid];
  v55 = 0;
  v13 = [HMDBackingStore cdlsFetchManagedObjectWithUUID:v12 ofModelType:objc_opt_class() error:&v55];
  v14 = COERCE_DOUBLE(v55);

  if (v13)
  {
    v15 = HMDCastIfManagedObjectBSORepresentable(v13);
    v54 = v14;
    v16 = [v15 hmd_modelsWithChangeType:0 detached:0 error:&v54];
    v48 = COERCE_DOUBLE(*&v54);

    v17 = objc_autoreleasePoolPush();
    v18 = self;
    v19 = HMFGetOSLogHandle();
    v20 = v19;
    if (v16)
    {
      v45 = v15;
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v21 = HMFGetLogIdentifier();
        v22 = objc_opt_class();
        *buf = 138543618;
        v57 = v21;
        v58 = 2112;
        v59 = v22;
        v23 = v22;
        _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@Begin replaying models from CoreData: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v17);
      v24 = [MEMORY[0x277CBEB58] set];
      if (a5)
      {
        +[HMDBackingStoreTransactionOptions defaultCloudOptionsForInitialGraphLoad];
      }

      else
      {
        +[HMDBackingStoreTransactionOptions defaultCloudOptions];
      }
      v31 = ;
      v47 = v13;
      v32 = 0;
      if ([v16 count])
      {
        v33 = v16;
        do
        {
          v34 = [MEMORY[0x277CBEB38] dictionary];
          v35 = [MEMORY[0x277CBEB18] array];
          v49[0] = MEMORY[0x277D85DD0];
          v49[1] = 3221225472;
          v49[2] = __91__HMDBackingStore_CoreData___cdlsReplayAllModelsStartingAt_fromContext_isInitialGraphLoad___block_invoke;
          v49[3] = &unk_278673688;
          v49[4] = v18;
          v50 = v24;
          v51 = v34;
          v52 = v9;
          v36 = v35;
          v53 = v36;
          v37 = v34;
          [v33 hmf_enumerateWithAutoreleasePoolUsingBlock:v49];
          v38 = __dependencySort(v37);
          __lookup(v18, v38, v31);
          v32 += [v38 count];
          v16 = v36;

          v33 = v16;
        }

        while ([v16 count]);
      }

      v39 = objc_autoreleasePoolPush();
      v40 = v18;
      v41 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        v42 = HMFGetLogIdentifier();
        [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
        *buf = 138543874;
        v57 = v42;
        v58 = 2048;
        v59 = v32;
        v60 = 2048;
        v61 = v43 - v11;
        _os_log_impl(&dword_229538000, v41, OS_LOG_TYPE_DEFAULT, "%{public}@Replayed %zd models from CoreData in %.3lf seconds", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v39);
      [(HMDBackingStore *)v40 dmKickClients];

      v15 = v46;
      v13 = v47;
      v29 = v48;
    }

    else
    {
      v29 = v48;
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v30 = HMFGetLogIdentifier();
        *buf = 138543874;
        v57 = v30;
        v58 = 2112;
        v59 = v13;
        v60 = 2112;
        v61 = v48;
        _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_ERROR, "%{public}@Unable to decode managed object %@ into model objects: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v17);
    }

    v14 = v29;
  }

  else
  {
    v25 = objc_autoreleasePoolPush();
    v26 = self;
    v27 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = HMFGetLogIdentifier();
      *buf = 138543874;
      v57 = v28;
      v58 = 2112;
      v59 = v8;
      v60 = 2112;
      v61 = v14;
      _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_ERROR, "%{public}@Unable to find root model to start replay at %@: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v25);
  }

  v44 = *MEMORY[0x277D85DE8];
}

void __91__HMDBackingStore_CoreData___cdlsReplayAllModelsStartingAt_fromContext_isInitialGraphLoad___block_invoke(uint64_t a1, void *a2)
{
  v37 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = HMFGetLogIdentifier();
    v8 = [v3 bsoType];
    v9 = [v3 uuid];
    v10 = [v3 parentUUID];
    *buf = 138544130;
    v30 = v7;
    v31 = 2112;
    v32 = v8;
    v33 = 2112;
    v34 = v9;
    v35 = 2112;
    v36 = v10;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_DEBUG, "%{public}@COREDATA: Replaying %@.%@.%@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v4);
  [v3 setObjectChangeType:2];
  v11 = *(a1 + 40);
  v12 = [v3 uuid];
  [v11 addObject:v12];

  v13 = *(a1 + 48);
  v14 = [[HMDBackingStoreTransactionItem alloc] initWithChange:v3 message:0];
  v15 = [v3 uuid];
  [v13 setObject:v14 forKey:v15];

  v16 = HMDCastIfModelCDRepresentable(v3);
  v17 = *(a1 + 40);
  v18 = *(a1 + 56);
  v28 = 0;
  v19 = [v16 cd_childrenExcluding:v17 fromContext:v18 error:&v28];
  v20 = v28;

  if (v19)
  {
    v21 = *(a1 + 64);
    v22 = [v19 allObjects];
    [v21 addObjectsFromArray:v22];
  }

  else
  {
    v23 = objc_autoreleasePoolPush();
    v24 = *(a1 + 32);
    v25 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = HMFGetLogIdentifier();
      *buf = 138543874;
      v30 = v26;
      v31 = 2112;
      v32 = v3;
      v33 = 2112;
      v34 = v20;
      _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_ERROR, "%{public}@Unable to fetch children of %@: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v23);
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (void)cdlsReplayAllModelsStartingAt:(id)a3 isInitialGraphLoad:(BOOL)a4
{
  v6 = a3;
  v7 = [(HMDBackingStore *)self context];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __78__HMDBackingStore_CoreData__cdlsReplayAllModelsStartingAt_isInitialGraphLoad___block_invoke;
  v10[3] = &unk_278685AA8;
  v10[4] = self;
  v11 = v6;
  v12 = v7;
  v13 = a4;
  v8 = v7;
  v9 = v6;
  [v8 performBlockAndWaitWithPinnedQueryGeneration:v10];
}

void __78__HMDBackingStore_CoreData__cdlsReplayAllModelsStartingAt_isInitialGraphLoad___block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = [*(a1 + 48) managedObjectContext];
  [v2 _cdlsReplayAllModelsStartingAt:v3 fromContext:v5 isInitialGraphLoad:*(a1 + 56)];
  v4 = *MEMORY[0x277D85DE8];
}

- (id)cdlsFetchObjectWithUUID:(id)a3 ofModelType:(Class)a4 error:(id *)a5
{
  v8 = a3;
  if ((HMDModelClassIsCDRepresentable(a4) & 1) == 0)
  {
    v13 = _HMFPreconditionFailure();
    _Block_object_dispose(&v19, 8);
    _Unwind_Resume(v13);
  }

  if (v8)
  {
    v19 = 0;
    v20 = &v19;
    v21 = 0x3032000000;
    v22 = __Block_byref_object_copy__49687;
    v23 = __Block_byref_object_dispose__49688;
    v24 = 0;
    v9 = [(HMDBackingStore *)self context];
    v10 = [v9 managedObjectContext];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __71__HMDBackingStore_CoreData__cdlsFetchObjectWithUUID_ofModelType_error___block_invoke;
    v14[3] = &unk_278673660;
    v16 = &v19;
    v15 = v8;
    v17 = a4;
    v18 = a5;
    [v10 performBlockAndWait:v14];

    v11 = v20[5];
    _Block_object_dispose(&v19, 8);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

void __71__HMDBackingStore_CoreData__cdlsFetchObjectWithUUID_ofModelType_error___block_invoke(void *a1)
{
  v2 = [HMDBackingStore cdlsFetchObjectWithUUID:a1[4] ofModelType:a1[6] error:a1[7]];
  v3 = *(a1[5] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)dmKickClients
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = [(HMDBackingStore *)self home];
  v4 = [v3 homeManager];
  if (v4)
  {
    v16 = v4;

    v5 = v16;
LABEL_4:
    v18 = v5;
    [v5 dmKickClients];
    v6 = *MEMORY[0x277D85DE8];

    return;
  }

  v17 = [(HMDBackingStore *)self homeManager];

  v5 = v17;
  if (v17)
  {
    goto LABEL_4;
  }

  v7 = objc_autoreleasePoolPush();
  v8 = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v10 = HMFGetLogIdentifier();
    v11 = [(HMDBackingStore *)v8 context];
    v12 = [v11 name];
    v13 = [(HMDBackingStore *)v8 context];
    v14 = [v13 transactionAuthor];
    *buf = 138543874;
    v20 = v10;
    v21 = 2112;
    v22 = v12;
    v23 = 2112;
    v24 = v14;
    _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_ERROR, "%{public}@Warning: HMDBackingStore with context %@.%@ does not have a homeManager", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v7);
  v15 = *MEMORY[0x277D85DE8];
}

- (void)handleCoreDataDidSaveNotification:(id)a3 sourceContext:(id)a4
{
  v120 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [v5 userInfo];
  v8 = [v7 objectForKeyedSubscript:*MEMORY[0x277CBE310]];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v84 = v9;

  v10 = [v7 objectForKeyedSubscript:*MEMORY[0x277CBE188]];
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

  v13 = [v7 objectForKeyedSubscript:*MEMORY[0x277CBE150]];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;

  v16 = [v6 userInfo];
  [v16 objectForKeyedSubscript:@"HMD.deletes"];
  v86 = v85 = v16;
  [v16 removeObjectForKey:@"HMD.deletes"];
  if ([v12 count] || objc_msgSend(v84, "count") || objc_msgSend(v15, "count") || objc_msgSend(v86, "count"))
  {
    v82 = v7;
    v83 = v12;
    v80 = v15;
    [v6 name];
    v18 = v17 = v6;
    v19 = [v6 transactionAuthor];
    v20 = [HMDCoreDataContextTransactionAuthor contextAuthorWithString:v19];

    v21 = [v20 type];
    v22 = [HMDCoreDataWorkingStoreTransactionLogEvent alloc];
    v23 = [v20 string];
    v24 = [(HMDCoreDataWorkingStoreTransactionLogEvent *)v22 initWithTransactionAuthor:v23];

    v25 = [(HMDBackingStore *)self homeManager];
    v26 = [v25 metricsManager];
    v27 = [v26 logEventSubmitter];
    v79 = v24;
    [v27 submitLogEvent:v24];

    v28 = self;
    v29 = [(HMDBackingStore *)self context];
    v30 = [v29 managedObjectContext];

    v81 = v17;
    if (![v17 isEqual:v30])
    {
      v56 = [(HMDBackingStore *)self context];
      v92[0] = MEMORY[0x277D85DD0];
      v92[1] = 3221225472;
      v92[2] = __77__HMDBackingStore_CoreData__handleCoreDataDidSaveNotification_sourceContext___block_invoke;
      v92[3] = &unk_278673638;
      v92[4] = self;
      v93 = v18;
      v94 = v20;
      v95 = v30;
      v96 = v5;
      v57 = v84;
      v97 = v84;
      v12 = v83;
      v98 = v83;
      v15 = v80;
      v99 = v80;
      v100 = v86;
      v101 = v21;
      [v56 performBlock:v92];

      v7 = v82;
LABEL_45:

      v67 = v85;
      v6 = v81;
      goto LABEL_46;
    }

    v78 = v30;
    v31 = [v85 objectForKeyedSubscript:@"HMD.v4txn"];
    v12 = v83;
    if (v31)
    {
      [v85 removeObjectForKey:@"HMD.v4txn"];
    }

    v32 = [v31 objects];
    v33 = v86;
    v7 = v82;
    if (self)
    {
      if ([v32 count] || objc_msgSend(v33, "count"))
      {
        if ([v33 count])
        {
          if ([v32 count])
          {
            v76 = v31;
            v77 = v5;
            v34 = v33;
            v89 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v33, "count") + objc_msgSend(v32, "count")}];
            [v89 addObjectsFromArray:v32];
            v35 = MEMORY[0x277CBEB98];
            v75 = v32;
            v36 = [v32 na_map:&__block_literal_global_11_49731];
            v37 = [v35 setWithArray:v36];

            v38 = v37;
            v104 = 0u;
            v105 = 0u;
            v102 = 0u;
            v103 = 0u;
            v74 = v34;
            v39 = v34;
            v40 = self;
            v91 = [v39 countByEnumeratingWithState:&v102 objects:v112 count:16];
            if (v91)
            {
              v90 = *v103;
              v87 = v39;
              do
              {
                for (i = 0; i != v91; ++i)
                {
                  v42 = v20;
                  v43 = v18;
                  if (*v103 != v90)
                  {
                    objc_enumerationMutation(v39);
                  }

                  v44 = *(*(&v102 + 1) + 8 * i);
                  v45 = [v44 change];
                  v46 = [v45 uuid];
                  v47 = [v38 containsObject:v46];

                  if (v47)
                  {
                    v48 = objc_autoreleasePoolPush();
                    v49 = v40;
                    v50 = HMFGetOSLogHandle();
                    if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
                    {
                      HMFGetLogIdentifier();
                      v52 = v51 = v38;
                      v53 = [v45 uuid];
                      *buf = 138543874;
                      v107 = v52;
                      v108 = 2112;
                      v109 = v45;
                      v110 = 2112;
                      v111 = v53;
                      _os_log_impl(&dword_229538000, v50, OS_LOG_TYPE_DEBUG, "%{public}@Skipping merging transaction item for change %@/%@ as one already exists", buf, 0x20u);

                      v38 = v51;
                      v39 = v87;
                      v40 = self;
                    }

                    objc_autoreleasePoolPop(v48);
                  }

                  else
                  {
                    [v89 addObject:v44];
                  }

                  v18 = v43;
                  v20 = v42;
                }

                v91 = [v39 countByEnumeratingWithState:&v102 objects:v112 count:16];
              }

              while (v91);
            }

            v54 = [v89 copy];
            v55 = v38;
            v28 = v54;

            v31 = v76;
            v5 = v77;
            v7 = v82;
            v12 = v83;
            v33 = v74;
            v32 = v75;
            goto LABEL_40;
          }

          v58 = v33;
        }

        else
        {
          v58 = v32;
        }

        v28 = v58;
      }

      else
      {
        v28 = 0;
      }
    }

LABEL_40:

    v59 = objc_autoreleasePoolPush();
    v60 = self;
    v61 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v61, OS_LOG_TYPE_INFO))
    {
      HMFGetLogIdentifier();
      v63 = v62 = v31;
      v64 = "legacy";
      *v112 = 138544130;
      v114 = 2080;
      v113 = v63;
      if (!v62)
      {
        v64 = "native";
      }

      v115 = v64;
      v116 = 2112;
      v117 = v18;
      v118 = 2112;
      v119 = v20;
      _os_log_impl(&dword_229538000, v61, OS_LOG_TYPE_INFO, "%{public}@Processing %s Core Data save from this backing store's context: %@ / %@", v112, 0x2Au);

      v31 = v62;
      v12 = v83;
    }

    objc_autoreleasePoolPop(v59);
    v65 = [v31 options];
    v66 = v60;
    v57 = v84;
    __broadcastChanges(v66, v84, v12, v80, v28, v65);

    v15 = v80;
    v30 = v78;
    goto LABEL_45;
  }

  v69 = objc_autoreleasePoolPush();
  v70 = self;
  v71 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v71, OS_LOG_TYPE_DEBUG))
  {
    HMFGetLogIdentifier();
    v73 = v72 = v15;
    *v112 = 138543362;
    v113 = v73;
    _os_log_impl(&dword_229538000, v71, OS_LOG_TYPE_DEBUG, "%{public}@No changes actually saved, skipping further processing", v112, 0xCu);

    v15 = v72;
  }

  objc_autoreleasePoolPop(v69);
  v57 = v84;
  v67 = v85;
LABEL_46:

  v68 = *MEMORY[0x277D85DE8];
}

void __77__HMDBackingStore_CoreData__handleCoreDataDidSaveNotification_sourceContext___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    v15 = 138543874;
    v16 = v5;
    v17 = 2112;
    v18 = v6;
    v19 = 2112;
    v20 = v7;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Processing Core Data save from a different context: %@ / %@", &v15, 0x20u);
  }

  objc_autoreleasePoolPop(v2);
  [*(a1 + 56) mergeChangesFromContextDidSaveNotification:*(a1 + 64)];
  v8 = *(a1 + 32);
  v9 = __mirrorForeignObjects(*(a1 + 56), *(a1 + 72));
  v10 = __mirrorForeignObjects(*(a1 + 56), *(a1 + 80));
  v11 = __mirrorForeignObjects(*(a1 + 56), *(a1 + 88));
  v13 = *(a1 + 96);
  v12 = *(a1 + 104);
  if (v12 <= 0xB)
  {
    a1 = [HMDBackingStoreTransactionOptions optionsWithSource:qword_22A5870D0[v12] destination:0 mustReplay:0 mustPush:0];
  }

  __broadcastChanges(v8, v9, v10, v11, v13, a1);

  v14 = *MEMORY[0x277D85DE8];
}

id __62__HMDBackingStore_CoreData____mergeLegacyChanges_intoDeletes___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 change];
  v4 = [v3 objectChangeType];

  if (v4 == 3)
  {
    v5 = [v2 change];
    v6 = [v5 uuid];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)handleCoreDataDidSaveNotification:(id)a3
{
  v8 = a3;
  v4 = [v8 object];
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

  if ([(HMDBackingStore *)self shouldHandleNotificationFromContext:v6])
  {
    v7 = objc_autoreleasePoolPush();
    [(HMDBackingStore *)self handleCoreDataDidSaveNotification:v8 sourceContext:v6];
    objc_autoreleasePoolPop(v7);
  }
}

- (void)shouldHandleNotificationFromContext:(void *)a1
{
  v3 = a2;
  if (a1)
  {
    v4 = [a1 coreData];
    v5 = [v4 isRelatedContext:v3];

    if (v5 && [v3 hmd_transactionAuthor] != 7)
    {
      v6 = [v3 name];
      v7 = [a1 contextName];
      a1 = [v6 isEqualToString:v7];
    }

    else
    {
      a1 = 0;
    }
  }

  return a1;
}

- (void)handleCoreDataWillSaveNotification:(id)a3
{
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

  if ([(HMDBackingStore *)self shouldHandleNotificationFromContext:v7])
  {
    v8 = [v7 userInfo];
    v9 = [v7 deletedObjects];
    if ([v9 count])
    {
      v10 = self;
      v11 = MEMORY[0x277CBEB18];
      v12 = v9;
      v13 = [[v11 alloc] initWithCapacity:{objc_msgSend(v12, "count")}];
      location[0] = MEMORY[0x277D85DD0];
      location[1] = 3221225472;
      location[2] = ____createLegacyDeletes_block_invoke;
      location[3] = &unk_278678F60;
      v22 = v10;
      v23 = v13;
      v14 = v10;
      v15 = v13;
      [v12 hmf_enumerateWithAutoreleasePoolUsingBlock:location];

      v16 = [v15 copy];
      [v8 setObject:v16 forKeyedSubscript:@"HMD.deletes"];
      objc_initWeak(location, v7);
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __64__HMDBackingStore_CoreData__handleCoreDataWillSaveNotification___block_invoke;
      v18[3] = &unk_278686B48;
      objc_copyWeak(&v20, location);
      v17 = v16;
      v19 = v17;
      [v7 performWithOptions:1 andBlock:v18];

      objc_destroyWeak(&v20);
      objc_destroyWeak(location);
    }

    else
    {
      v17 = [v7 userInfo];
      [v17 removeObjectForKey:@"HMD.deletes"];
    }
  }
}

void __64__HMDBackingStore_CoreData__handleCoreDataWillSaveNotification___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = [WeakRetained userInfo];
    removeDictionaryEntry(v3, @"HMD.deletes", *(a1 + 32));

    WeakRetained = v4;
  }
}

+ (id)cdlsFetchManagedObjectsWithUUIDStrings:(id)a3 ofManagedObjectType:(Class)a4
{
  v47 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if ([v5 count])
  {
    aClass = a4;
    v6 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(v5, "count")}];
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    obj = v5;
    v7 = [obj countByEnumeratingWithState:&v35 objects:v46 count:16];
    v31 = v6;
    if (v7)
    {
      v8 = v7;
      v9 = *v36;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v36 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v35 + 1) + 8 * i);
          v12 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v11];
          if (v12)
          {
            [v6 addObject:v12];
          }

          else
          {
            v13 = objc_autoreleasePoolPush();
            v14 = a1;
            v15 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
            {
              v16 = HMFGetLogIdentifier();
              *buf = 138543618;
              v40 = v16;
              v41 = 2112;
              v42 = v11;
              _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_ERROR, "%{public}@Invalid UUID string '%@'", buf, 0x16u);

              v6 = v31;
            }

            objc_autoreleasePoolPop(v13);
          }
        }

        v8 = [obj countByEnumeratingWithState:&v35 objects:v46 count:16];
      }

      while (v8);
    }

    if ([v6 count])
    {
      v17 = [(objc_class *)aClass fetchRequest];
      v18 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K IN %@", @"modelID", v6];
      [v17 setPredicate:v18];

      v45 = @"modelID";
      v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v45 count:1];
      [v17 setPropertiesToFetch:v19];

      v34 = 0;
      v20 = [v17 execute:&v34];
      v21 = v34;
      if (v20)
      {
        v22 = [MEMORY[0x277CBEB98] setWithArray:v20];
      }

      else
      {
        v23 = objc_autoreleasePoolPush();
        v24 = a1;
        v25 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          v26 = HMFGetLogIdentifier();
          v27 = NSStringFromClass(aClass);
          *buf = 138543874;
          v40 = v26;
          v41 = 2112;
          v42 = v27;
          v43 = 2112;
          v44 = v21;
          _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_ERROR, "%{public}@Fetch of %@ models failed: %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v23);
        v22 = 0;
        v6 = v31;
      }
    }

    else
    {
      v22 = [MEMORY[0x277CBEB98] set];
    }
  }

  else
  {
    v22 = [MEMORY[0x277CBEB98] set];
  }

  v28 = *MEMORY[0x277D85DE8];

  return v22;
}

+ (id)cdlsModelIDStringsForManagedObjects:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 count];
  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v4];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v6 = v3;
    v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v17;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v17 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [*(*(&v16 + 1) + 8 * i) modelID];
          v12 = [v11 UUIDString];
          [v5 addObject:v12];
        }

        v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v8);
    }

    v13 = [v5 copy];
  }

  else
  {
    v13 = MEMORY[0x277CBEBF8];
  }

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (id)cdlsFetchObjectWithUUID:(id)a3 ofModelType:(Class)a4 error:(id *)a5
{
  v8 = a3;
  if (HMDModelClassIsCDRepresentable(a4))
  {
    v9 = [a1 cdlsFetchManagedObjectWithUUID:v8 ofManagedObjectType:-[objc_class cd_entityClass](a4 error:{"cd_entityClass"), a5}];
    if (v9)
    {
      v10 = [[a4 alloc] initWithManagedObject:v9 changeType:0 detached:0 error:a5];
    }

    else
    {
      v10 = 0;
    }

    return v10;
  }

  else
  {
    v12 = _HMFPreconditionFailure();
    return [(HMDBackingStore *)v12 cdlsFetchManagedObjectWithUUID:v13 ofManagedObjectType:v14 error:v15, v16];
  }
}

+ (id)cdlsFetchManagedObjectWithUUID:(id)a3 ofManagedObjectType:(Class)a4 error:(id *)a5
{
  v35[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  if (([(objc_class *)a4 isSubclassOfClass:objc_opt_class()]& 1) == 0)
  {
    _HMFPreconditionFailure();
    goto LABEL_14;
  }

  v9 = [(objc_class *)a4 fetchRequest];
  v10 = +[HMDBackingStoreModelObject fetchByModelID];
  v34 = @"MODELID";
  v35[0] = v8;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:&v34 count:1];
  v12 = [v10 predicateWithSubstitutionVariables:v11];
  [v9 setPredicate:v12];

  v13 = [v9 execute:a5];
  v14 = v13;
  if (v13)
  {
    if ([v13 count] < 2)
    {
      v15 = [v14 firstObject];
      v16 = v15;
      if (v15)
      {
        v17 = v15;
      }

      goto LABEL_10;
    }

LABEL_14:
    _HMFPreconditionFailure();
  }

  v18 = objc_autoreleasePoolPush();
  v19 = a1;
  v20 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    v21 = HMFGetLogIdentifier();
    v22 = NSStringFromClass(a4);
    v23 = *a5;
    v26 = 138544130;
    v27 = v21;
    v28 = 2112;
    v29 = v22;
    v30 = 2112;
    v31 = v8;
    v32 = 2112;
    v33 = v23;
    _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_ERROR, "%{public}@Fetch of model %@.%@ failed: %@", &v26, 0x2Au);
  }

  objc_autoreleasePoolPop(v18);
  v16 = 0;
LABEL_10:

  v24 = *MEMORY[0x277D85DE8];

  return v16;
}

+ (id)cdlsFetchManagedObjectWithUUID:(id)a3 ofModelType:(Class)a4 error:(id *)a5
{
  v8 = a3;
  if (HMDModelClassIsCDRepresentable(a4))
  {
    v9 = [a1 cdlsFetchManagedObjectWithUUID:v8 ofManagedObjectType:-[objc_class cd_entityClass](a4 error:{"cd_entityClass"), a5}];

    return v9;
  }

  else
  {
    v11 = _HMFPreconditionFailure();
    return [(HMDBackingStore *)v11 dependencySortTestInterface:v12, v13];
  }
}

+ (id)cdlsBackingStoreForHomeManagerWithError:(id *)a3
{
  v3 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"030440CB-974B-44F3-8786-7191F302252E"];
  v4 = __backingStoreWithUUID(v3, 0);

  return v4;
}

+ (id)cdlsBackingStoreWithHandle:(id)a3 error:(id *)a4
{
  v4 = a3;
  v5 = [v4 backingStoreUUID];
  v6 = [v4 homeUUID];

  v7 = __backingStoreWithUUID(v5, v6);

  return v7;
}

+ (id)cdlsActiveBackingStores
{
  if (cdlsActiveBackingStores_onceToken != -1)
  {
    dispatch_once(&cdlsActiveBackingStores_onceToken, &__block_literal_global_49757);
  }

  v3 = cdlsActiveBackingStores_activeBackingStores;

  return v3;
}

void __52__HMDBackingStore_CoreData__cdlsActiveBackingStores__block_invoke()
{
  v0 = [MEMORY[0x277CCAB00] strongToWeakObjectsMapTable];
  v1 = cdlsActiveBackingStores_activeBackingStores;
  cdlsActiveBackingStores_activeBackingStores = v0;
}

- (HMDBackingStoreObjectProtocol)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (HMDHome)home
{
  WeakRetained = objc_loadWeakRetained(&self->_home);

  return WeakRetained;
}

- (HMDHomeManager)homeManager
{
  WeakRetained = objc_loadWeakRetained(&self->_homeManager);

  return WeakRetained;
}

- (NSString)activeControllerKeyUsername
{
  v2 = [MEMORY[0x277CFEC78] systemStore];
  v3 = [v2 activeControllerPairingIdentifier];
  v4 = [v3 copy];

  return v4;
}

- (id)createHomeObjectLookupWithHome:(id)a3
{
  v3 = a3;
  v4 = [[HMDHomeObjectLookup alloc] initWithHome:v3];

  return v4;
}

- (id)backingStoreOperationQueue
{
  v2 = +[HMDBackingStoreSingleton sharedInstance];
  v3 = [v2 queue];

  return v3;
}

- (id)localBackingStore
{
  v2 = +[HMDBackingStoreSingleton sharedInstance];
  v3 = [v2 local];

  return v3;
}

- (id)createBackingStoreOperation
{
  v2 = objc_alloc_init(HMDBackingStoreOperation);

  return v2;
}

- (id)createBackingStoreLogAddTransactionOperationWithTransaction:(id)a3
{
  v3 = a3;
  v4 = [[HMDBackingStoreLogAddTransactionOperation alloc] initWithTransaction:v3];

  return v4;
}

- (void)submitBlock:(id)a3
{
  v4 = a3;
  v5 = [(HMDBackingStore *)self home];
  v6 = [v5 workQueue];
  if (v6)
  {
    v7 = v6;

LABEL_4:
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __31__HMDBackingStore_submitBlock___block_invoke;
    block[3] = &unk_278688B80;
    v12 = v4;
    v9 = v4;
    dispatch_async(v7, block);

    return;
  }

  v8 = [(HMDBackingStore *)self homeManager];
  v7 = [v8 workQueue];

  if (v7)
  {
    goto LABEL_4;
  }

  v10 = _HMFPreconditionFailure();
  __31__HMDBackingStore_submitBlock___block_invoke(v10);
}

- (id)logIdentifier
{
  v2 = [(HMDBackingStore *)self uuid];
  v3 = [v2 UUIDString];

  return v3;
}

uint64_t __81__HMDBackingStore_commit_run_save_archiveInline_coreDataBlock_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 administratorHandler];
  v5 = [v3 message];

  v6 = [v4 allowLocalFallbackForMessage:v5];
  return v6;
}

void __81__HMDBackingStore_commit_run_save_archiveInline_coreDataBlock_completionHandler___block_invoke()
{
  v0 = [MEMORY[0x277CBEB98] setWithArray:&unk_283E75C68];
  v1 = commit_run_save_archiveInline_coreDataBlock_completionHandler___hmf_once_v5;
  commit_run_save_archiveInline_coreDataBlock_completionHandler___hmf_once_v5 = v0;
}

- (id)transaction:(id)a3 options:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[HMDBackingStoreTransactionBlock alloc] initWithBackingStore:self options:v6 label:v7];

  return v8;
}

- (void)setContext:(id)a3
{
  v4 = a3;
  v5 = [(HMCContext *)v4 name];
  contextName = self->_contextName;
  self->_contextName = v5;

  v7 = [(HMCContext *)v4 transactionAuthor];
  contextTransactionAuthor = self->_contextTransactionAuthor;
  self->_contextTransactionAuthor = v7;

  context = self->_context;
  self->_context = v4;
}

- (HMDBackingStore)initWithUUID:(id)a3
{
  if (self)
  {
    return [(HMDBackingStore *)self initWithUUID:a3 homeManager:0 home:0 dataSource:self];
  }

  return self;
}

- (HMDBackingStore)initWithUUID:(id)a3 home:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 homeManager];
  if (self)
  {
    self = [(HMDBackingStore *)self initWithUUID:v6 homeManager:v8 home:v7 dataSource:self];
  }

  return self;
}

- (HMDBackingStore)initWithUUID:(id)a3 homeManager:(id)a4
{
  if (self)
  {
    return [(HMDBackingStore *)self initWithUUID:a3 homeManager:a4 home:0 dataSource:self];
  }

  return self;
}

- (HMDBackingStore)initWithUUID:(id)a3 homeManager:(id)a4 home:(id)a5 dataSource:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v26.receiver = self;
  v26.super_class = HMDBackingStore;
  v15 = [(HMDBackingStore *)&v26 init];
  if (v15)
  {
    v16 = [v14 localBackingStore];
    local = v15->_local;
    v15->_local = v16;

    objc_storeStrong(&v15->_uuid, a3);
    v18 = objc_alloc(MEMORY[0x277CBC5D0]);
    v19 = [v11 UUIDString];
    v20 = [v18 initWithRecordName:v19];
    root = v15->_root;
    v15->_root = v20;

    objc_storeWeak(&v15->_home, v13);
    objc_storeWeak(&v15->_homeManager, v12);
    objc_storeWeak(&v15->_dataSource, v14);
    if (v13)
    {
      v22 = [v14 createHomeObjectLookupWithHome:v13];
    }

    else
    {
      if (!v12)
      {
LABEL_7:
        v24 = v15;
        goto LABEL_8;
      }

      v22 = [[HMDHomeManagerObjectLookup alloc] initWithHomeManager:v12];
    }

    lookup = v15->_lookup;
    v15->_lookup = &v22->super;

    goto LABEL_7;
  }

LABEL_8:

  return v15;
}

+ (void)saveToPersistentStoreWithReason:(id)a3 homeManager:(id)a4 shouldIncrementGenerationCounter:(BOOL)a5 backingStore:(id)a6 completionHandler:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a7;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __127__HMDBackingStore_saveToPersistentStoreWithReason_homeManager_shouldIncrementGenerationCounter_backingStore_completionHandler___block_invoke;
  v20[3] = &unk_278684288;
  v24 = v15;
  v25 = a1;
  v21 = v12;
  v22 = v13;
  v26 = a5;
  v23 = v14;
  v16 = v15;
  v17 = v14;
  v18 = v13;
  v19 = v12;
  [v17 submitBlock:v20];
}

void __127__HMDBackingStore_saveToPersistentStoreWithReason_homeManager_shouldIncrementGenerationCounter_backingStore_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 64);
  v3 = [objc_opt_class() _saveToLocalStoreWithReason:*(a1 + 32) homeManager:*(a1 + 40) shouldIncrementGenerationCounter:*(a1 + 72) backingStore:*(a1 + 48)];
  v4 = *(a1 + 56);
  if (v4)
  {
    v5 = v3;
    (*(v4 + 16))();
    v3 = v5;
  }
}

void __30__HMDBackingStore_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v11_242031;
  logCategory__hmf_once_v11_242031 = v1;
}

+ (NSSet)internalAllowedTypes
{
  if (internalAllowedTypes_onceToken != -1)
  {
    dispatch_once(&internalAllowedTypes_onceToken, &__block_literal_global_81_242036);
  }

  v3 = internalAllowedTypes__internalAllowedTypes;

  return v3;
}

void __39__HMDBackingStore_internalAllowedTypes__block_invoke()
{
  v0 = MEMORY[0x277CBEB98];
  v4 = +[HMDBackingStore allowedTypes];
  v1 = [v0 setWithSet:v4];
  v2 = [v1 setByAddingObject:objc_opt_class()];
  v3 = internalAllowedTypes__internalAllowedTypes;
  internalAllowedTypes__internalAllowedTypes = v2;
}

+ (NSSet)deeplyProblematicObjectTypes
{
  if (deeplyProblematicObjectTypes_onceToken != -1)
  {
    dispatch_once(&deeplyProblematicObjectTypes_onceToken, &__block_literal_global_73_242040);
  }

  v3 = deeplyProblematicObjectTypes__neverAllowedTypes;

  return v3;
}

void __47__HMDBackingStore_deeplyProblematicObjectTypes__block_invoke()
{
  v12 = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB98];
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:&v5 count:7];
  v2 = [v0 setWithArray:{v1, v5, v6, v7, v8, v9, v10}];
  v3 = deeplyProblematicObjectTypes__neverAllowedTypes;
  deeplyProblematicObjectTypes__neverAllowedTypes = v2;

  v4 = *MEMORY[0x277D85DE8];
}

+ (NSSet)allowedTypes
{
  if (allowedTypes_onceToken_242049 != -1)
  {
    dispatch_once(&allowedTypes_onceToken_242049, &__block_literal_global_242050);
  }

  v3 = allowedTypes__allowedTypes_242051;

  return v3;
}

void __31__HMDBackingStore_allowedTypes__block_invoke()
{
  v12 = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB98];
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:&v5 count:7];
  v2 = [v0 setWithArray:{v1, v5, v6, v7, v8, v9, v10}];
  v3 = allowedTypes__allowedTypes_242051;
  allowedTypes__allowedTypes_242051 = v2;

  v4 = *MEMORY[0x277D85DE8];
}

@end