@interface HMDHAPAccessoryPrimaryResidentOperationTask
- (HMDHAPAccessoryPrimaryResidentOperationTask)initWithContext:(id)a3 requests:(id)a4 completion:(id)a5;
- (id)_makeLocalTaskWithRequests:(id)a3 completion:(id)a4;
- (void)_processLocalRequests:(id)a3 responseWaitGroup:(id)a4;
- (void)execute;
@end

@implementation HMDHAPAccessoryPrimaryResidentOperationTask

- (id)_makeLocalTaskWithRequests:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = MEMORY[0x277CBEAD8];
  v9 = *MEMORY[0x277CBE658];
  v10 = MEMORY[0x277CCACA8];
  v11 = NSStringFromSelector(a2);
  v12 = [v10 stringWithFormat:@"%@ is unavailable", v11];
  v13 = [v8 exceptionWithName:v9 reason:v12 userInfo:0];
  v14 = v13;

  objc_exception_throw(v13);
}

- (void)_processLocalRequests:(id)a3 responseWaitGroup:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [v7 mutableCopy];
  v10 = [MEMORY[0x277CBEB18] array];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __87__HMDHAPAccessoryPrimaryResidentOperationTask__processLocalRequests_responseWaitGroup___block_invoke;
  v28[3] = &unk_278689280;
  v28[4] = self;
  v11 = v9;
  v12 = v10;
  v13 = v28;
  if (v11 == v12)
  {
    v21 = _HMFPreconditionFailure();
    objc_destroyWeak((v4 + 40));
    objc_destroyWeak(location);
    _Unwind_Resume(v21);
  }

  location[0] = MEMORY[0x277D85DD0];
  location[1] = 3221225472;
  location[2] = __migrateRequestsPassingTest_block_invoke;
  location[3] = &unk_2786896B0;
  v30 = v13;
  v14 = [v11 indexesOfObjectsPassingTest:location];
  v15 = [v11 objectsAtIndexes:v14];
  [v12 addObjectsFromArray:v15];

  [v11 removeObjectsAtIndexes:v14];
  if (([v12 hmf_isEmpty] & 1) == 0)
  {
    v16 = [MEMORY[0x277CCA9B8] hmErrorWithCode:4];
    v17 = [HMDCharacteristicResponse responsesWithRequests:v12 error:v16];

    v18 = [(HMDHAPAccessoryTask *)self completion];
    (v18)[2](v18, v17);
  }

  if (([v11 hmf_isEmpty] & 1) == 0)
  {
    dispatch_group_enter(v8);
    objc_initWeak(location, self);
    v22 = MEMORY[0x277D85DD0];
    v23 = 3221225472;
    v24 = __87__HMDHAPAccessoryPrimaryResidentOperationTask__processLocalRequests_responseWaitGroup___block_invoke_427;
    v25 = &unk_278689618;
    objc_copyWeak(&v27, location);
    v26 = v8;
    v19 = [(HMDHAPAccessoryPrimaryResidentOperationTask *)self _makeLocalTaskWithRequests:v11 completion:&v22];
    [(HMDHAPAccessoryPrimaryResidentOperationTask *)self setLocalTask:v19, v22, v23, v24, v25];

    v20 = [(HMDHAPAccessoryPrimaryResidentOperationTask *)self localTask];
    [v20 execute];

    objc_destroyWeak(&v27);
    objc_destroyWeak(location);
  }
}

uint64_t __87__HMDHAPAccessoryPrimaryResidentOperationTask__processLocalRequests_responseWaitGroup___block_invoke(uint64_t a1, void *a2)
{
  v52 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) context];
  v5 = [v4 requestMessage];

  v6 = [v3 accessory];
  if ([v5 isRemote] && objc_msgSend(v6, "hasBTLELink") && (objc_msgSend(v6, "hasIPLink") & 1) == 0)
  {
    v10 = [v5 dictionaryForKey:*MEMORY[0x277CCE7A8]];
    v11 = [v6 uuid];
    v12 = [v11 UUIDString];
    v13 = [v10 objectForKeyedSubscript:v12];
    v14 = [v13 objectForKeyedSubscript:@"kAccessoryLinkQuality"];

    v15 = [v6 uuid];
    v16 = [v15 UUIDString];
    v17 = [v10 objectForKeyedSubscript:v16];
    v18 = [v17 objectForKeyedSubscript:@"kAccessoryLastSeen"];

    v7 = 0;
    if (v14 && v18)
    {
      v37 = 0;
      v19 = [v6 home];
      v36 = 5;
      v20 = [v6 identifier];
      v35 = 0;
      v33 = v19;
      [v19 retrieveStateForTrackedAccessory:v20 stateNumber:0 isReachable:&v37 linkQuality:&v36 lastSeen:&v35];
      v34 = v35;

      v21 = [MEMORY[0x277D0F8D0] sharedPreferences];
      v22 = [v21 preferenceForKey:@"BTLEAccessoryLossDetectionTimeInSec"];
      v23 = [v22 numberValue];
      v24 = [v23 unsignedIntegerValue];

      if ((v37 & 1) != 0 || (v25 = [v14 integerValue], v25 >= v36) || objc_msgSend(v18, "unsignedIntegerValue") >= v24)
      {

        v7 = 0;
      }

      else
      {
        v26 = objc_autoreleasePoolPush();
        v27 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
        {
          v28 = HMFGetLogIdentifier();
          [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v36];
          v29 = v32 = v26;
          v30 = [v5 shortDescription];
          *buf = 138544898;
          v39 = v28;
          v40 = 2112;
          v41 = v3;
          v42 = 2112;
          v43 = v14;
          v44 = 2112;
          v45 = v18;
          v46 = 2112;
          v47 = v29;
          v48 = 2112;
          v49 = v34;
          v50 = 2112;
          v51 = v30;
          _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_INFO, "%{public}@Skipping characteristic request: %@, accessory has a better link quality: %@(%@s) / %@(%@s) to the device originating message: %@", buf, 0x48u);

          v26 = v32;
        }

        objc_autoreleasePoolPop(v26);
        v31 = [v6 workQueue];
        [v33 retrieveHAPAccessoryForHMDAccessory:v6 linkType:2 forceRetrieve:0 queue:v31 completion:0];

        v7 = 1;
      }
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

void __87__HMDHAPAccessoryPrimaryResidentOperationTask__processLocalRequests_responseWaitGroup___block_invoke_427(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained addCharacteristicResponses:v3 isRemote:0];
    v6 = [v5 localTask];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;

    if (v8 && [v8 allResponsesReceived])
    {
      if ([v5 supportsMultiPartResponse] && (objc_msgSend(v5, "allResponsesReceived") & 1) == 0)
      {
        v9 = [v5 completion];
        (v9)[2](v9, v3);
      }

      dispatch_group_leave(*(a1 + 32));
    }

    else if ([v5 supportsMultiPartResponse])
    {
      v10 = [v5 completion];
      (v10)[2](v10, v3);
    }
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = HMFGetLogIdentifier();
      v15 = 138543362;
      v16 = v13;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@Lost self reference for local task completion handler", &v15, 0xCu);
    }

    objc_autoreleasePoolPop(v11);
    dispatch_group_leave(*(a1 + 32));
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)execute
{
  v3 = [MEMORY[0x277CBEAA8] date];
  [(HMDHAPAccessoryTask *)self setExecutionTime:v3];

  v4 = dispatch_group_create();
  v5 = [(HMDHAPAccessoryTask *)self requests];
  [(HMDHAPAccessoryPrimaryResidentOperationTask *)self _processLocalRequests:v5 responseWaitGroup:v4];
  v6 = [(HMDHAPAccessoryTask *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__HMDHAPAccessoryPrimaryResidentOperationTask_execute__block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_group_notify(v4, v6, block);
}

void __54__HMDHAPAccessoryPrimaryResidentOperationTask_execute__block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) completion];
  v2 = [*(a1 + 32) characteristicResponses];
  v3[2](v3, v2);
}

- (HMDHAPAccessoryPrimaryResidentOperationTask)initWithContext:(id)a3 requests:(id)a4 completion:(id)a5
{
  v6.receiver = self;
  v6.super_class = HMDHAPAccessoryPrimaryResidentOperationTask;
  return [(HMDHAPAccessoryTask *)&v6 initWithContext:a3 requests:a4 completion:a5];
}

@end