@interface HMDSelfRemovalWatchdog
+ (id)logCategory;
- (HMDSelfRemovalWatchdog)initWithCurrentAccessoryUUID:(id)d workQueue:(id)queue;
- (id)_retrieveExpectedObjectIDsTokenMap;
- (void)_stopWithError:(id)error;
- (void)configure;
- (void)monitorDidObserveExportComplete:(id)complete;
- (void)startWithCompletion:(id)completion;
- (void)timerDidFire:(id)fire;
@end

@implementation HMDSelfRemovalWatchdog

- (void)timerDidFire:(id)fire
{
  v15 = *MEMORY[0x277D85DE8];
  fireCopy = fire;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543362;
    v14 = v8;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_ERROR, "%{public}@Timeout waiting for cloud mirroring export to complete", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  monitor = [(HMDSelfRemovalWatchdog *)selfCopy monitor];
  managedObjectContext = [monitor managedObjectContext];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __39__HMDSelfRemovalWatchdog_timerDidFire___block_invoke;
  v12[3] = &unk_27868A728;
  v12[4] = selfCopy;
  [managedObjectContext performBlock:v12];

  v11 = *MEMORY[0x277D85DE8];
}

void __39__HMDSelfRemovalWatchdog_timerDidFire___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] hmErrorWithCode:8];
  [v1 _stopWithError:v2];
}

- (void)monitorDidObserveExportComplete:(id)complete
{
  monitor = [(HMDSelfRemovalWatchdog *)self monitor];
  managedObjectContext = [monitor managedObjectContext];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __58__HMDSelfRemovalWatchdog_monitorDidObserveExportComplete___block_invoke;
  v6[3] = &unk_27868A728;
  v6[4] = self;
  [managedObjectContext performBlock:v6];
}

uint64_t __58__HMDSelfRemovalWatchdog_monitorDidObserveExportComplete___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v8 = 138543362;
    v9 = v5;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Cloud mirroring export is finished", &v8, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  result = [*(a1 + 32) _stopWithError:0];
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)_retrieveExpectedObjectIDsTokenMap
{
  v62 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBE4B0];
  selfRemovalBeginDate = [(HMDSelfRemovalWatchdog *)self selfRemovalBeginDate];
  v5 = [v3 fetchHistoryAfterDate:selfRemovalBeginDate];

  [v5 setResultType:5];
  v6 = +[HMDCoreData sharedInstance];
  cloudPrivateStore = [v6 cloudPrivateStore];
  v57 = cloudPrivateStore;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v57 count:1];
  [v5 setAffectedStores:v8];

  monitor = [(HMDSelfRemovalWatchdog *)self monitor];
  managedObjectContext = [monitor managedObjectContext];
  v51 = 0;
  v11 = [managedObjectContext executeRequest:v5 error:&v51];
  v12 = v51;

  if (v11)
  {
    v42 = v12;
    v43 = v11;
    v44 = v5;
    [v11 result];
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v13 = v50 = 0u;
    v14 = [v13 countByEnumeratingWithState:&v47 objects:v56 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v48;
      obj = v13;
      while (2)
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v48 != v16)
          {
            objc_enumerationMutation(obj);
          }

          v18 = *(*(&v47 + 1) + 8 * i);
          changes = [v18 changes];
          v46[0] = MEMORY[0x277D85DD0];
          v46[1] = 3221225472;
          v46[2] = __60__HMDSelfRemovalWatchdog__retrieveExpectedObjectIDsTokenMap__block_invoke;
          v46[3] = &unk_278676C18;
          v46[4] = self;
          v20 = [changes na_firstObjectPassingTest:v46];

          if (v20)
          {
            v26 = v18;
            dictionary = [MEMORY[0x277CBEB38] dictionary];
            v52 = 0u;
            v53 = 0u;
            v54 = 0u;
            v55 = 0u;
            changes2 = [v26 changes];
            v29 = [changes2 countByEnumeratingWithState:&v52 objects:buf count:16];
            v13 = obj;
            if (v29)
            {
              v30 = v29;
              v31 = *v53;
              do
              {
                for (j = 0; j != v30; ++j)
                {
                  if (*v53 != v31)
                  {
                    objc_enumerationMutation(changes2);
                  }

                  v33 = *(*(&v52 + 1) + 8 * j);
                  token = [v26 token];
                  changedObjectID = [v33 changedObjectID];
                  [dictionary setObject:token forKey:changedObjectID];
                }

                v30 = [changes2 countByEnumeratingWithState:&v52 objects:buf count:16];
              }

              while (v30);
            }

            v25 = [dictionary copy];
            goto LABEL_21;
          }
        }

        v13 = obj;
        v15 = [obj countByEnumeratingWithState:&v47 objects:v56 count:16];
        if (v15)
        {
          continue;
        }

        break;
      }
    }

    v21 = objc_autoreleasePoolPush();
    selfCopy = self;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = HMFGetLogIdentifier();
      *buf = 138543362;
      v59 = v24;
      _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_ERROR, "%{public}@Failed to find transaction that did the self removal", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v21);
    v25 = 0;
LABEL_21:
    v11 = v43;
    v5 = v44;

    v12 = v42;
  }

  else
  {
    v36 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v38 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      v39 = HMFGetLogIdentifier();
      *buf = 138543618;
      v59 = v39;
      v60 = 2112;
      v61 = v12;
      _os_log_impl(&dword_229538000, v38, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch store history: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v36);
    v25 = 0;
  }

  v40 = *MEMORY[0x277D85DE8];

  return v25;
}

uint64_t __60__HMDSelfRemovalWatchdog__retrieveExpectedObjectIDsTokenMap__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 changeType] == 2)
  {
    v4 = [v3 changedObjectID];
    v5 = [*(a1 + 32) currentAccessoryModelObjectID];
    v6 = [v4 isEqual:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_stopWithError:(id)error
{
  errorCopy = error;
  watchdogTimer = [(HMDSelfRemovalWatchdog *)self watchdogTimer];
  [watchdogTimer suspend];

  completion = [(HMDSelfRemovalWatchdog *)self completion];
  v6 = completion;
  if (completion)
  {
    (*(completion + 16))(completion, errorCopy);
  }

  [(HMDSelfRemovalWatchdog *)self setCompletion:0];
}

- (void)startWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = +[HMDCoreDataCloudTransform sharedInstance];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __46__HMDSelfRemovalWatchdog_startWithCompletion___block_invoke;
  v7[3] = &unk_278689A68;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  [v5 runTransformWithCompletion:v7];
}

void __46__HMDSelfRemovalWatchdog_startWithCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) monitor];
  v3 = [v2 managedObjectContext];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __46__HMDSelfRemovalWatchdog_startWithCompletion___block_invoke_2;
  v5[3] = &unk_27868A7A0;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v4;
  [v3 performBlock:v5];
}

void __46__HMDSelfRemovalWatchdog_startWithCompletion___block_invoke_2(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) setCompletion:*(a1 + 40)];
  v2 = [*(a1 + 32) watchdogTimer];
  [v2 cancel];

  v3 = [objc_alloc(MEMORY[0x277D0F920]) initWithTimeInterval:1 options:55.0];
  [*(a1 + 32) setWatchdogTimer:v3];

  v4 = *(a1 + 32);
  v5 = [v4 watchdogTimer];
  [v5 setDelegate:v4];

  v6 = [*(a1 + 32) watchdogTimer];
  [v6 resume];

  v7 = [*(a1 + 32) _retrieveExpectedObjectIDsTokenMap];
  v8 = objc_autoreleasePoolPush();
  v9 = *(a1 + 32);
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v21 = 138543618;
    v22 = v11;
    v23 = 2112;
    v24 = v7;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Self removal expected objectIDs token map: %@", &v21, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  if (v7)
  {
    v12 = objc_autoreleasePoolPush();
    v13 = *(a1 + 32);
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier();
      v21 = 138543362;
      v22 = v15;
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, "%{public}@Started monitoring cloud export", &v21, 0xCu);
    }

    objc_autoreleasePoolPop(v12);
    v16 = *(a1 + 32);
    v17 = [v16 monitor];
    [v17 setDelegate:v16];

    v18 = [*(a1 + 32) monitor];
    [v18 configureWithExpectedObjectIDToExportedToken:v7];
  }

  else
  {
    v19 = *(a1 + 32);
    v18 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    [v19 _stopWithError:v18];
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)configure
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = +[HMDCoreDataCloudTransform sharedInstance];
  newCloudMirrorExportStatusMonitor = [v3 newCloudMirrorExportStatusMonitor];
  monitor = self->_monitor;
  self->_monitor = newCloudMirrorExportStatusMonitor;

  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__85229;
  v19 = __Block_byref_object_dispose__85230;
  v20 = 0;
  monitor = [(HMDSelfRemovalWatchdog *)self monitor];
  managedObjectContext = [monitor managedObjectContext];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __35__HMDSelfRemovalWatchdog_configure__block_invoke;
  v14[3] = &unk_27868A688;
  v14[4] = self;
  v14[5] = &v15;
  [managedObjectContext performBlockAndWait:v14];

  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v11 = HMFGetLogIdentifier();
    v12 = v16[5];
    *buf = 138543618;
    v22 = v11;
    v23 = 2112;
    v24 = v12;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_DEBUG, "%{public}@modelObjectID for current accessory found: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  [(HMDSelfRemovalWatchdog *)selfCopy setCurrentAccessoryModelObjectID:v16[5]];
  _Block_object_dispose(&v15, 8);

  v13 = *MEMORY[0x277D85DE8];
}

void __35__HMDSelfRemovalWatchdog_configure__block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v2 = +[MKFCKAppleMediaAccessory fetchRequest];
  v3 = MEMORY[0x277CCAC30];
  v4 = [*(a1 + 32) currentAccessoryUUID];
  v5 = [v3 predicateWithFormat:@"(%K == %@)", @"modelID", v4];
  [v2 setPredicate:v5];

  v6 = [*(a1 + 32) monitor];
  v7 = [v6 managedObjectContext];
  v20 = 0;
  v8 = [v7 executeFetchRequest:v2 error:&v20];
  v9 = v20;

  if (v8 && ![v8 hmf_isEmpty])
  {
    v15 = [v8 firstObject];
    v16 = [v15 objectID];
    v17 = *(*(a1 + 40) + 8);
    v18 = *(v17 + 40);
    *(v17 + 40) = v16;
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    v11 = *(a1 + 32);
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      v14 = [*(a1 + 32) currentAccessoryUUID];
      *buf = 138543874;
      v22 = v13;
      v23 = 2112;
      v24 = v14;
      v25 = 2112;
      v26 = v9;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch current accessory cloud model with UUID %@ due to error %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v10);
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (HMDSelfRemovalWatchdog)initWithCurrentAccessoryUUID:(id)d workQueue:(id)queue
{
  dCopy = d;
  queueCopy = queue;
  v14.receiver = self;
  v14.super_class = HMDSelfRemovalWatchdog;
  v9 = [(HMDSelfRemovalWatchdog *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_currentAccessoryUUID, d);
    objc_storeStrong(&v10->_workQueue, queue);
    date = [MEMORY[0x277CBEAA8] date];
    selfRemovalBeginDate = v10->_selfRemovalBeginDate;
    v10->_selfRemovalBeginDate = date;
  }

  return v10;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t9_85248 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t9_85248, &__block_literal_global_85249);
  }

  v3 = logCategory__hmf_once_v10_85250;

  return v3;
}

void __37__HMDSelfRemovalWatchdog_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v10_85250;
  logCategory__hmf_once_v10_85250 = v1;
}

@end