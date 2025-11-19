@interface HMDHH2CoreDataCloudKitMirroringObserver
+ (id)logCategory;
- (BOOL)verifyModelsPushedToCloudKitUsingCoreDataExportStream;
- (HMDHH2CoreDataCloudKitMirroringObserver)initWithObjectIds:(id)a3 coreData:(id)a4 storeIdentifier:(id)a5;
- (void)callClientsCompletionHandler:(id)a3;
- (void)coreData:(id)a3 persistentStoreWithIdentifierDidChange:(id)a4;
- (void)processExportResult:(id)a3 withError:(id)a4;
- (void)startMonitoring:(id)a3;
- (void)stopMonitoring;
- (void)verifyModelsPushedToCloudKit;
@end

@implementation HMDHH2CoreDataCloudKitMirroringObserver

- (void)coreData:(id)a3 persistentStoreWithIdentifierDidChange:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543618;
    v23 = v11;
    v24 = 2112;
    v25 = v7;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Received persistent store changed notification for store: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  v12 = [(HMDHH2CoreDataCloudKitMirroringObserver *)v9 storeIdentifier];
  v13 = HMFEqualObjects();

  if (v13)
  {
    v14 = [(HMDHH2CoreDataCloudKitMirroringObserver *)v9 cachedMOC];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __91__HMDHH2CoreDataCloudKitMirroringObserver_coreData_persistentStoreWithIdentifierDidChange___block_invoke;
    v21[3] = &unk_27868A728;
    v21[4] = v9;
    [v14 performBlock:v21];
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    v16 = v9;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      v19 = [(HMDHH2CoreDataCloudKitMirroringObserver *)v16 storeIdentifier];
      *buf = 138543874;
      v23 = v18;
      v24 = 2112;
      v25 = v19;
      v26 = 2112;
      v27 = v7;
      _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@Wrong store identifier: Expecting %@ got %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v15);
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (BOOL)verifyModelsPushedToCloudKitUsingCoreDataExportStream
{
  v55 = *MEMORY[0x277D85DE8];
  if ([(HMDHH2CoreDataCloudKitMirroringObserver *)self isExportProgressRequestAlreadyInProgress])
  {
    [(HMDHH2CoreDataCloudKitMirroringObserver *)self setNumberOfIgnoredExportProgressRequest:[(HMDHH2CoreDataCloudKitMirroringObserver *)self numberOfIgnoredExportProgressRequest]+ 1];
    v3 = objc_autoreleasePoolPush();
    v4 = self;
    v5 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = HMFGetLogIdentifier();
      v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDHH2CoreDataCloudKitMirroringObserver numberOfIgnoredExportProgressRequest](v4, "numberOfIgnoredExportProgressRequest")}];
      *buf = 138543618;
      *&buf[4] = v6;
      *&buf[12] = 2112;
      *&buf[14] = v7;
      _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@There is an export request already in progress. Will not create another one. : %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v3);
    v8 = 1;
  }

  else
  {
    v9 = objc_alloc_init(MEMORY[0x277CBE3D8]);
    v10 = objc_autoreleasePoolPush();
    v11 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      v14 = MEMORY[0x277CCABB0];
      v15 = [(HMDHH2CoreDataCloudKitMirroringObserver *)v11 objectIdsToMonitor];
      v16 = [v14 numberWithUnsignedInteger:{objc_msgSend(v15, "count")}];
      *buf = 138543618;
      *&buf[4] = v13;
      *&buf[12] = 2112;
      *&buf[14] = v16;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@Waiting for [%@] migrated models to be pushed to the cloud", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v52 = __Block_byref_object_copy__185732;
    v53 = __Block_byref_object_dispose__185733;
    v54 = 0;
    v17 = objc_alloc(MEMORY[0x277CBE3A8]);
    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = __96__HMDHH2CoreDataCloudKitMirroringObserver_verifyModelsPushedToCloudKitUsingCoreDataExportStream__block_invoke;
    v41[3] = &unk_27867DA88;
    v41[4] = v11;
    v41[5] = buf;
    v18 = [v17 initWithOptions:v9 completionBlock:v41];
    v19 = [v18 requestIdentifier];
    v20 = *(*&buf[8] + 40);
    *(*&buf[8] + 40) = v19;

    v21 = [(HMDHH2CoreDataCloudKitMirroringObserver *)v11 objectIdsToMonitor];
    v22 = [v21 copy];
    [v18 setObjectIDsToFetch:v22];

    v23 = +[HMDCoreData sharedInstance];
    v24 = [v23 cloudPrivateStore];
    v50 = v24;
    v25 = [MEMORY[0x277CBEA60] arrayWithObjects:&v50 count:1];
    [v18 setAffectedStores:v25];

    v26 = [(HMDHH2CoreDataCloudKitMirroringObserver *)v11 cachedMOC];
    v40 = 0;
    v27 = [v26 executeRequest:v18 error:&v40];
    v28 = v40;

    if (v27)
    {
      v29 = v28 == 0;
    }

    else
    {
      v29 = 0;
    }

    v8 = v29;
    if (v29)
    {
      [(HMDHH2CoreDataCloudKitMirroringObserver *)v11 setIsExportProgressRequestAlreadyInProgress:1];
      v33 = objc_autoreleasePoolPush();
      v30 = v11;
      v35 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
      {
        v31 = HMFGetLogIdentifier();
        v32 = *(*&buf[8] + 40);
        *v42 = 138544130;
        v43 = v31;
        v44 = 2112;
        v45 = v32;
        v46 = 2112;
        v47 = v27;
        v48 = 2112;
        v49 = 0;
        _os_log_impl(&dword_229538000, v35, OS_LOG_TYPE_INFO, "%{public}@Successfully submitted NSCloudKitMirroringExportProgressRequest [%@] to CD. Result: %@, error: %@", v42, 0x2Au);
      }
    }

    else
    {
      v33 = objc_autoreleasePoolPush();
      v34 = v11;
      v35 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        v37 = HMFGetLogIdentifier();
        *v42 = 138543618;
        v43 = v37;
        v44 = 2112;
        v45 = v28;
        _os_log_impl(&dword_229538000, v35, OS_LOG_TYPE_ERROR, "%{public}@Got error while submitting export progress request: %@", v42, 0x16u);
      }
    }

    objc_autoreleasePoolPop(v33);
    _Block_object_dispose(buf, 8);
  }

  v38 = *MEMORY[0x277D85DE8];
  return v8;
}

void __96__HMDHH2CoreDataCloudKitMirroringObserver_verifyModelsPushedToCloudKitUsingCoreDataExportStream__block_invoke(uint64_t a1, void *a2)
{
  v37 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v20 = v4;
    v8 = *(*(*(a1 + 40) + 8) + 40);
    [v3 success];
    v9 = HMFBooleanToString();
    [v3 madeChanges];
    v10 = HMFBooleanToString();
    v11 = objc_opt_class();
    v12 = [v3 error];
    *buf = 138544642;
    v26 = v7;
    v27 = 2112;
    v28 = v8;
    v4 = v20;
    v29 = 2112;
    v30 = v9;
    v31 = 2112;
    v32 = v10;
    v33 = 2112;
    v34 = v11;
    v35 = 2112;
    v36 = v12;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@[%@] export progress result completion handler block is called with : Success : %@, madeChanges: %@, result Class : %@, error: %@", buf, 0x3Eu);
  }

  objc_autoreleasePoolPop(v4);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    _HMFPreconditionFailure();
  }

  if ([v3 success])
  {
    v13 = [v3 objectIDToLastExportedToken];
    v14 = [v13 copy];
  }

  else
  {
    v14 = 0;
  }

  v15 = [*(a1 + 32) cachedMOC];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __96__HMDHH2CoreDataCloudKitMirroringObserver_verifyModelsPushedToCloudKitUsingCoreDataExportStream__block_invoke_24;
  v21[3] = &unk_278689D20;
  v16 = *(a1 + 40);
  v21[4] = *(a1 + 32);
  v22 = v14;
  v23 = v3;
  v24 = v16;
  v17 = v3;
  v18 = v14;
  [v15 performBlock:v21];

  v19 = *MEMORY[0x277D85DE8];
}

void __96__HMDHH2CoreDataCloudKitMirroringObserver_verifyModelsPushedToCloudKitUsingCoreDataExportStream__block_invoke_24(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(*(*(a1 + 56) + 8) + 40);
    v11 = 138543618;
    v12 = v5;
    v13 = 2112;
    v14 = v6;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@[%@] processing export results", &v11, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = [*(a1 + 48) error];
  [v7 processExportResult:v8 withError:v9];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)processExportResult:(id)a3 withError:(id)a4
{
  v51 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543874;
    v46 = v11;
    v47 = 2112;
    v48 = v6;
    v49 = 2112;
    v50 = v7;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@process export result: %@, %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  [(HMDHH2CoreDataCloudKitMirroringObserver *)v9 setIsExportProgressRequestAlreadyInProgress:0];
  if (v7)
  {
    v12 = objc_autoreleasePoolPush();
    v13 = v9;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543618;
      v46 = v15;
      v47 = 2112;
      v48 = v7;
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_ERROR, "%{public}@Core Data export stream indicated error while exporting models to CloudKit : %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
    v16 = v13;
    v17 = v7;
LABEL_7:
    [(HMDHH2CoreDataCloudKitMirroringObserver *)v16 callClientsCompletionHandler:v17];
    goto LABEL_8;
  }

  v19 = [v6 allKeys];
  v44[0] = MEMORY[0x277D85DD0];
  v44[1] = 3221225472;
  v44[2] = __73__HMDHH2CoreDataCloudKitMirroringObserver_processExportResult_withError___block_invoke;
  v44[3] = &unk_27867DA60;
  v44[4] = v9;
  [v19 hmf_enumerateWithAutoreleasePoolUsingBlock:v44];

  v20 = [(HMDHH2CoreDataCloudKitMirroringObserver *)v9 objectIdsToMonitor];
  v21 = [v20 count];

  v22 = objc_autoreleasePoolPush();
  v23 = v9;
  v24 = HMFGetOSLogHandle();
  v25 = os_log_type_enabled(v24, OS_LOG_TYPE_INFO);
  if (!v21)
  {
    if (v25)
    {
      v42 = HMFGetLogIdentifier();
      *buf = 138543362;
      v46 = v42;
      _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_INFO, "%{public}@Successfully exported all the CD objects to CloudKit.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v22);
    v16 = v23;
    v17 = 0;
    goto LABEL_7;
  }

  if (v25)
  {
    v26 = HMFGetLogIdentifier();
    v27 = MEMORY[0x277CCABB0];
    v28 = [(HMDHH2CoreDataCloudKitMirroringObserver *)v23 totalObjectsToMonitor];
    v29 = [(HMDHH2CoreDataCloudKitMirroringObserver *)v23 objectIdsToMonitor];
    v30 = [v27 numberWithUnsignedLongLong:{v28 - objc_msgSend(v29, "count")}];
    v31 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[HMDHH2CoreDataCloudKitMirroringObserver totalObjectsToMonitor](v23, "totalObjectsToMonitor")}];
    *buf = 138543874;
    v46 = v26;
    v47 = 2112;
    v48 = v30;
    v49 = 2112;
    v50 = v31;
    _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_INFO, "%{public}@CD to CK export progress : %@ out of %@ exported", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v22);
  v32 = objc_autoreleasePoolPush();
  v33 = v23;
  v34 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
  {
    v35 = HMFGetLogIdentifier();
    v36 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDHH2CoreDataCloudKitMirroringObserver numberOfIgnoredExportProgressRequest](v33, "numberOfIgnoredExportProgressRequest")}];
    *buf = 138543618;
    v46 = v35;
    v47 = 2112;
    v48 = v36;
    _os_log_impl(&dword_229538000, v34, OS_LOG_TYPE_INFO, "%{public}@Number of ignored export progress request:%@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v32);
  if ([(HMDHH2CoreDataCloudKitMirroringObserver *)v33 numberOfIgnoredExportProgressRequest])
  {
    [(HMDHH2CoreDataCloudKitMirroringObserver *)v33 setNumberOfIgnoredExportProgressRequest:0];
    v37 = objc_autoreleasePoolPush();
    v38 = v33;
    v39 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
    {
      v40 = HMFGetLogIdentifier();
      *buf = 138543362;
      v46 = v40;
      _os_log_impl(&dword_229538000, v39, OS_LOG_TYPE_INFO, "%{public}@Requesting to verify the models pushed to CK as we ignored few export progress request earlier", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v37);
    v41 = [(HMDHH2CoreDataCloudKitMirroringObserver *)v38 cachedMOC];
    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = __73__HMDHH2CoreDataCloudKitMirroringObserver_processExportResult_withError___block_invoke_17;
    v43[3] = &unk_27868A728;
    v43[4] = v38;
    [v41 performBlock:v43];
  }

LABEL_8:

  v18 = *MEMORY[0x277D85DE8];
}

void __73__HMDHH2CoreDataCloudKitMirroringObserver_processExportResult_withError___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 objectIdsToMonitor];
  [v4 removeObject:v3];
}

- (void)verifyModelsPushedToCloudKit
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v19 = 138543362;
    v20 = v6;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Going to verify models pushed to cloudKit using export stream", &v19, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v7 = [(HMDHH2CoreDataCloudKitMirroringObserver *)v4 objectIdsToMonitor];
  v8 = [v7 count];

  if (v8)
  {
    if (![(HMDHH2CoreDataCloudKitMirroringObserver *)v4 verifyModelsPushedToCloudKitUsingCoreDataExportStream])
    {
      v9 = objc_autoreleasePoolPush();
      v10 = v4;
      v11 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = HMFGetLogIdentifier();
        v19 = 138543362;
        v20 = v12;
        _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_ERROR, "%{public}@Error occurred while pushing the CD models to CloudKit.", &v19, 0xCu);
      }

      objc_autoreleasePoolPop(v9);
      v13 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
      [(HMDHH2CoreDataCloudKitMirroringObserver *)v10 callClientsCompletionHandler:v13];
    }
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    v15 = v4;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = HMFGetLogIdentifier();
      v19 = 138543362;
      v20 = v17;
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@Looks like we are not monitoring any object changes. Not doing anything.", &v19, 0xCu);
    }

    objc_autoreleasePoolPop(v14);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)callClientsCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(HMDHH2CoreDataCloudKitMirroringObserver *)self completionHandler];
  [(HMDHH2CoreDataCloudKitMirroringObserver *)self stopMonitoring];
  if (v5)
  {
    v5[2](v5, v4);
  }
}

- (void)stopMonitoring
{
  v3 = [(HMDHH2CoreDataCloudKitMirroringObserver *)self cachedMOC];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __57__HMDHH2CoreDataCloudKitMirroringObserver_stopMonitoring__block_invoke;
  v4[3] = &unk_27868A728;
  v4[4] = self;
  [v3 performBlock:v4];
}

void __57__HMDHH2CoreDataCloudKitMirroringObserver_stopMonitoring__block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v14 = 138543362;
    v15 = v5;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@stopMonitoring", &v14, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  v6 = [*(a1 + 32) completionHandler];

  if (v6)
  {
    [*(a1 + 32) setCompletionHandler:0];
    [*(a1 + 32) setNumberOfIgnoredExportProgressRequest:0];
    v7 = [*(a1 + 32) objectIdsToMonitor];
    [v7 removeAllObjects];

    v8 = [*(a1 + 32) coreData];
    [v8 removeNotificationListener:*(a1 + 32)];
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    v10 = *(a1 + 32);
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v14 = 138543362;
      v15 = v12;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@already stopped monitoring. Not doing anything.", &v14, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)startMonitoring:(id)a3
{
  v4 = a3;
  v5 = [(HMDHH2CoreDataCloudKitMirroringObserver *)self cachedMOC];

  if (v5)
  {
    v6 = [(HMDHH2CoreDataCloudKitMirroringObserver *)self cachedMOC];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __59__HMDHH2CoreDataCloudKitMirroringObserver_startMonitoring___block_invoke;
    v9[3] = &unk_27868A7A0;
    v9[4] = self;
    v10 = v4;
    v7 = v4;
    [v6 performBlock:v9];
  }

  else
  {
    v8 = _HMFPreconditionFailure();
    __59__HMDHH2CoreDataCloudKitMirroringObserver_startMonitoring___block_invoke(v8);
  }
}

uint64_t __59__HMDHH2CoreDataCloudKitMirroringObserver_startMonitoring___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v10 = 138543362;
    v11 = v5;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@startMonitoring", &v10, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  if (!*(a1 + 40))
  {
    _HMFPreconditionFailure();
LABEL_7:
    _HMFPreconditionFailure();
  }

  v6 = [*(a1 + 32) completionHandler];

  if (v6)
  {
    goto LABEL_7;
  }

  [*(a1 + 32) setCompletionHandler:*(a1 + 40)];
  v7 = [*(a1 + 32) coreData];
  [v7 addNotificationListener:*(a1 + 32)];

  result = [*(a1 + 32) verifyModelsPushedToCloudKit];
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

- (HMDHH2CoreDataCloudKitMirroringObserver)initWithObjectIds:(id)a3 coreData:(id)a4 storeIdentifier:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v20.receiver = self;
  v20.super_class = HMDHH2CoreDataCloudKitMirroringObserver;
  v11 = [(HMDHH2CoreDataCloudKitMirroringObserver *)&v20 init];
  if (!v11)
  {
    goto LABEL_5;
  }

  if (v10)
  {
    if (v9)
    {
      v12 = [MEMORY[0x277CBEB58] setWithSet:v8];
      objectIdsToMonitor = v11->_objectIdsToMonitor;
      v11->_objectIdsToMonitor = v12;

      v11->_totalObjectsToMonitor = [v8 count];
      objc_storeStrong(&v11->_coreData, a4);
      objc_storeStrong(&v11->_storeIdentifier, a5);
      v11->_isExportProgressRequestAlreadyInProgress = 0;
      v11->_numberOfIgnoredExportProgressRequest = 0;
      v14 = [(HMDHH2CoreDataCloudKitMirroringObserver *)v11 coreData];
      v15 = [v14 newManagedObjectContext];
      cachedMOC = v11->_cachedMOC;
      v11->_cachedMOC = v15;

LABEL_5:
      return v11;
    }
  }

  else
  {
    _HMFPreconditionFailure();
  }

  v18 = _HMFPreconditionFailure();
  return +[(HMDHH2CoreDataCloudKitMirroringObserver *)v18];
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t20_185782 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t20_185782, &__block_literal_global_185783);
  }

  v3 = logCategory__hmf_once_v21_185784;

  return v3;
}

void __54__HMDHH2CoreDataCloudKitMirroringObserver_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v21_185784;
  logCategory__hmf_once_v21_185784 = v1;
}

@end