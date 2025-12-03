@interface HMDCoreDataCloudMirroringExportStatusMonitor
+ (id)logCategory;
- (BOOL)isComplete;
- (HMDCoreDataCloudMirroringExportStatusMonitor)initWithCoreData:(id)data managedObjectContext:(id)context;
- (HMDCoreDataCloudMirroringExportStatusMonitorDelegate)delegate;
- (void)_verifyModelsExportComplete;
- (void)configureWithExpectedObjectIDToExportedToken:(id)token;
- (void)coreData:(id)data persistentStoreWithIdentifierDidChange:(id)change;
- (void)verifyModelsExportStatus;
@end

@implementation HMDCoreDataCloudMirroringExportStatusMonitor

- (HMDCoreDataCloudMirroringExportStatusMonitorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)coreData:(id)data persistentStoreWithIdentifierDidChange:(id)change
{
  if (self)
  {
    coreData = self->_coreData;
  }

  else
  {
    coreData = 0;
  }

  changeCopy = change;
  cloudPrivateStore = [(HMDCoreData *)coreData cloudPrivateStore];
  identifier = [cloudPrivateStore identifier];
  v9 = HMFEqualObjects();

  if (v9)
  {
    managedObjectContext = [(HMDCoreDataCloudMirroringExportStatusMonitor *)self managedObjectContext];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __96__HMDCoreDataCloudMirroringExportStatusMonitor_coreData_persistentStoreWithIdentifierDidChange___block_invoke;
    v11[3] = &unk_27868A728;
    v11[4] = self;
    [managedObjectContext performBlock:v11];
  }
}

- (void)_verifyModelsExportComplete
{
  v45 = *MEMORY[0x277D85DE8];
  if (self)
  {
    if (*(self + 8) == 1 && [*(self + 40) count])
    {
      v2 = objc_autoreleasePoolPush();
      selfCopy = self;
      v4 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
      {
        v5 = HMFGetLogIdentifier();
        LODWORD(buf) = 138543362;
        *(&buf + 4) = v5;
        _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_DEBUG, "%{public}@Request to verify export while another is still in progress", &buf, 0xCu);
      }

      objc_autoreleasePoolPop(v2);
      selfCopy[9] = 1;
    }

    else if ([*(self + 40) count])
    {
      *&buf = 0;
      *(&buf + 1) = &buf;
      v41 = 0x3032000000;
      v42 = __Block_byref_object_copy__177884;
      v43 = __Block_byref_object_dispose__177885;
      v44 = 0;
      v6 = objc_alloc_init(MEMORY[0x277CBE3D8]);
      v7 = objc_alloc(MEMORY[0x277CBE3A8]);
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __75__HMDCoreDataCloudMirroringExportStatusMonitor__verifyModelsExportComplete__block_invoke;
      v30[3] = &unk_27867DA88;
      v30[4] = self;
      v30[5] = &buf;
      v8 = [v7 initWithOptions:v6 completionBlock:v30];
      requestIdentifier = [v8 requestIdentifier];
      v10 = *(*(&buf + 1) + 40);
      *(*(&buf + 1) + 40) = requestIdentifier;

      v11 = MEMORY[0x277CBEB98];
      v12 = *(self + 40);
      allKeys = [v12 allKeys];
      v14 = [v11 setWithArray:allKeys];
      [v8 setObjectIDsToFetch:v14];

      v15 = *(self + 32);
      cloudPrivateStore = [v15 cloudPrivateStore];
      v39 = cloudPrivateStore;
      v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v39 count:1];
      [v8 setAffectedStores:v17];

      managedObjectContext = [self managedObjectContext];
      v29 = 0;
      v19 = [managedObjectContext executeRequest:v8 error:&v29];
      v20 = v29;

      if (!v19 || v20)
      {
        v21 = objc_autoreleasePoolPush();
        selfCopy2 = self;
        v23 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          v27 = HMFGetLogIdentifier();
          *v31 = 138543618;
          v32 = v27;
          v33 = 2114;
          v34 = v20;
          _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_ERROR, "%{public}@Got error while submitting export progress request: %{public}@", v31, 0x16u);
        }
      }

      else
      {
        *(self + 8) = 1;
        v21 = objc_autoreleasePoolPush();
        selfCopy3 = self;
        v23 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
        {
          v24 = HMFGetLogIdentifier();
          v25 = *(*(&buf + 1) + 40);
          *v31 = 138544130;
          v32 = v24;
          v33 = 2114;
          v34 = v25;
          v35 = 2114;
          v36 = v19;
          v37 = 2114;
          v38 = 0;
          _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_INFO, "%{public}@Successfully submitted NSCloudKitMirroringExportProgressRequest [%{public}@] to CD. Result: %{public}@, error: %{public}@", v31, 0x2Au);
        }
      }

      objc_autoreleasePoolPop(v21);
      _Block_object_dispose(&buf, 8);
    }
  }

  v28 = *MEMORY[0x277D85DE8];
}

void __75__HMDCoreDataCloudMirroringExportStatusMonitor__verifyModelsExportComplete__block_invoke(uint64_t a1, void *a2)
{
  v41 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v25 = v4;
    v8 = *(*(*(a1 + 40) + 8) + 40);
    [v3 success];
    v9 = HMFBooleanToString();
    [v3 madeChanges];
    v10 = HMFBooleanToString();
    v11 = objc_opt_class();
    v12 = [v3 error];
    *buf = 138544642;
    v30 = v7;
    v31 = 2114;
    v32 = v8;
    v4 = v25;
    v33 = 2114;
    v34 = v9;
    v35 = 2114;
    v36 = v10;
    v37 = 2114;
    v38 = v11;
    v39 = 2114;
    v40 = v12;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Export progress result completion handler block is called with : Success : %{public}@, madeChanges: %{public}@, result Class : %{public}@, error: %{public}@", buf, 0x3Eu);
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
    v15 = objc_autoreleasePoolPush();
    v16 = *(a1 + 32);
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      v19 = [v3 error];
      *buf = 138543618;
      v30 = v18;
      v31 = 2114;
      v32 = v19;
      _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_ERROR, "%{public}@Unexpected export progress result error: %{public}@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v15);
    v14 = [MEMORY[0x277CBEAC0] dictionary];
  }

  v20 = [*(a1 + 32) managedObjectContext];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __75__HMDCoreDataCloudMirroringExportStatusMonitor__verifyModelsExportComplete__block_invoke_5;
  v26[3] = &unk_27868A4D8;
  v21 = *(a1 + 32);
  v22 = *(a1 + 40);
  v27 = v14;
  v28 = v22;
  v26[4] = v21;
  v23 = v14;
  [v20 performBlock:v26];

  v24 = *MEMORY[0x277D85DE8];
}

void __75__HMDCoreDataCloudMirroringExportStatusMonitor__verifyModelsExportComplete__block_invoke_5(uint64_t a1)
{
  v41 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(*(*(a1 + 48) + 8) + 40);
    *buf = 138543618;
    *&buf[4] = v5;
    *&buf[12] = 2114;
    *&buf[14] = v6;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Processing export results", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  if (v7)
  {
    v9 = objc_autoreleasePoolPush();
    v10 = v7;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543618;
      *&buf[4] = v12;
      *&buf[12] = 2114;
      *&buf[14] = v8;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Process export result: %{public}@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
    v13 = [MEMORY[0x277CBEB58] set];
    v14 = v10[5];
    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 3221225472;
    *&buf[16] = __69__HMDCoreDataCloudMirroringExportStatusMonitor__processExportResult___block_invoke;
    v37 = &unk_27867D230;
    v38 = v8;
    v39 = v10;
    v15 = v13;
    v40 = v15;
    [v14 enumerateKeysAndObjectsUsingBlock:buf];
    v16 = v10[5];
    v17 = [v15 allObjects];
    [v16 removeObjectsForKeys:v17];

    v18 = [v10[5] count];
    v19 = objc_autoreleasePoolPush();
    v20 = v10;
    v21 = HMFGetOSLogHandle();
    v22 = os_log_type_enabled(v21, OS_LOG_TYPE_INFO);
    if (v18)
    {
      if (v22)
      {
        v23 = HMFGetLogIdentifier();
        v24 = MEMORY[0x277CCABB0];
        v25 = v20[5];
        v26 = [v24 numberWithUnsignedInteger:{objc_msgSend(v25, "count")}];
        v32 = 138543618;
        v33 = v23;
        v34 = 2114;
        v35 = v26;
        _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_INFO, "%{public}@CD to CK export progress : %{public}@ remaining", &v32, 0x16u);
      }

      objc_autoreleasePoolPop(v19);
    }

    else
    {
      if (v22)
      {
        v27 = HMFGetLogIdentifier();
        v32 = 138543362;
        v33 = v27;
        _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_INFO, "%{public}@Successfully exported all the CD objects to CloudKit.", &v32, 0xCu);
      }

      objc_autoreleasePoolPop(v19);
      [v20[4] removeNotificationListener:v20];
      v28 = [v20 delegate];
      [v28 monitorDidObserveExportComplete:v20];
    }
  }

  v29 = *(a1 + 32);
  if (v29)
  {
    *(v29 + 8) = 0;
    v30 = *(a1 + 32);
    if (v30)
    {
      if (*(v30 + 9) == 1)
      {
        *(v30 + 9) = 0;
        [(HMDCoreDataCloudMirroringExportStatusMonitor *)*(a1 + 32) _verifyModelsExportComplete];
      }
    }
  }

  v31 = *MEMORY[0x277D85DE8];
}

void __69__HMDCoreDataCloudMirroringExportStatusMonitor__processExportResult___block_invoke(id *a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [a1[4] objectForKey:v5];
  v8 = v7;
  if (v7)
  {
    v22 = 0;
    v9 = [v7 compareToken:v6 error:&v22];
    v10 = v22;
    if ((v9 - 3) > 1)
    {
      if (!v9)
      {
        v16 = objc_autoreleasePoolPush();
        v17 = a1[5];
        v18 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
        {
          v19 = HMFGetLogIdentifier();
          *buf = 138543618;
          v24 = v19;
          v25 = 2112;
          v26 = v10;
          _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_FAULT, "%{public}@Submitting ABC event for failure: Cloud Mirror Export Token Comparison Failed %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v16);
        v20 = [[HMDAssertionLogEvent alloc] initWithReason:@"Cloud Mirror Export Token Comparison Failed %@", v10];
        v21 = +[HMDMetricsManager sharedLogEventSubmitter];
        [v21 submitLogEvent:v20];
      }
    }

    else
    {
      [a1[6] addObject:v5];
    }
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    v12 = a1[5];
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543618;
      v24 = v14;
      v25 = 2114;
      v26 = v5;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_DEBUG, "%{public}@Cannot compare a nil result token for key %{public}@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    v10 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)verifyModelsExportStatus
{
  managedObjectContext = [(HMDCoreDataCloudMirroringExportStatusMonitor *)self managedObjectContext];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __72__HMDCoreDataCloudMirroringExportStatusMonitor_verifyModelsExportStatus__block_invoke;
  v4[3] = &unk_27868A728;
  v4[4] = self;
  [managedObjectContext performBlock:v4];
}

- (void)configureWithExpectedObjectIDToExportedToken:(id)token
{
  tokenCopy = token;
  managedObjectContext = [(HMDCoreDataCloudMirroringExportStatusMonitor *)self managedObjectContext];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __93__HMDCoreDataCloudMirroringExportStatusMonitor_configureWithExpectedObjectIDToExportedToken___block_invoke;
  v7[3] = &unk_27868A750;
  v7[4] = self;
  v8 = tokenCopy;
  v6 = tokenCopy;
  [managedObjectContext performBlock:v7];
}

void __93__HMDCoreDataCloudMirroringExportStatusMonitor_configureWithExpectedObjectIDToExportedToken___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) mutableCopy];
  v3 = *(a1 + 32);
  if (v3)
  {
    objc_storeStrong((v3 + 40), v2);
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = *(v4 + 32);
  }

  else
  {
    v5 = 0;
  }

  [v5 addNotificationListener:?];
  v6 = *(a1 + 32);

  [(HMDCoreDataCloudMirroringExportStatusMonitor *)v6 _verifyModelsExportComplete];
}

- (BOOL)isComplete
{
  selfCopy = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  managedObjectContext = [(HMDCoreDataCloudMirroringExportStatusMonitor *)self managedObjectContext];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __58__HMDCoreDataCloudMirroringExportStatusMonitor_isComplete__block_invoke;
  v5[3] = &unk_27868A688;
  v5[4] = selfCopy;
  v5[5] = &v6;
  [managedObjectContext performBlockAndWait:v5];

  LOBYTE(selfCopy) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return selfCopy;
}

uint64_t __58__HMDCoreDataCloudMirroringExportStatusMonitor_isComplete__block_invoke(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2)
  {
    result = [*(v2 + 40) count];
    LOBYTE(v2) = result == 0;
  }

  *(*(*(v1 + 40) + 8) + 24) = v2;
  return result;
}

- (HMDCoreDataCloudMirroringExportStatusMonitor)initWithCoreData:(id)data managedObjectContext:(id)context
{
  dataCopy = data;
  contextCopy = context;
  v12.receiver = self;
  v12.super_class = HMDCoreDataCloudMirroringExportStatusMonitor;
  v9 = [(HMDCoreDataCloudMirroringExportStatusMonitor *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_coreData, data);
    objc_storeStrong(&v10->_managedObjectContext, context);
  }

  return v10;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t11_177921 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t11_177921, &__block_literal_global_177922);
  }

  v3 = logCategory__hmf_once_v12_177923;

  return v3;
}

void __59__HMDCoreDataCloudMirroringExportStatusMonitor_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v12_177923;
  logCategory__hmf_once_v12_177923 = v1;
}

@end