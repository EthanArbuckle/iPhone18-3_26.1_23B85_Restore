@interface HMDHAPAccessoryLocalOperationTask
- (NSString)activityRequestEventName;
- (NSString)activityResponseEventName;
- (id)_completionHandlerForAccessory:(id)a3 accessoryRequests:(id)a4 responseWaitGroup:(id)a5;
- (void)_dispatchToAccessory:(id)a3 requests:(id)a4 logEvent:(id)a5 completion:(id)a6;
- (void)execute;
@end

@implementation HMDHAPAccessoryLocalOperationTask

- (void)_dispatchToAccessory:(id)a3 requests:(id)a4 logEvent:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = MEMORY[0x277CBEAD8];
  v15 = *MEMORY[0x277CBE658];
  v16 = MEMORY[0x277CCACA8];
  v17 = NSStringFromSelector(a2);
  v18 = [v16 stringWithFormat:@"%@ is unavailable", v17];
  v19 = [v14 exceptionWithName:v15 reason:v18 userInfo:0];
  v20 = v19;

  objc_exception_throw(v19);
}

- (NSString)activityResponseEventName
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [(HMDHAPAccessoryTask *)self operationName];
  v4 = [v3 capitalizedString];
  v5 = [v2 stringWithFormat:@"HMDHAPAccessoryLocalOperationTask.MultiCharacteristic%@Response", v4];

  return v5;
}

- (NSString)activityRequestEventName
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [(HMDHAPAccessoryTask *)self operationName];
  v4 = [v3 capitalizedString];
  v5 = [v2 stringWithFormat:@"HMDHAPAccessoryLocalOperationTask.MultiCharacteristic%@Accessory", v4];

  return v5;
}

- (id)_completionHandlerForAccessory:(id)a3 accessoryRequests:(id)a4 responseWaitGroup:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __104__HMDHAPAccessoryLocalOperationTask__completionHandlerForAccessory_accessoryRequests_responseWaitGroup___block_invoke;
  v16[3] = &unk_279735220;
  v16[4] = self;
  v17 = v8;
  v18 = v9;
  v19 = v10;
  v11 = v10;
  v12 = v9;
  v13 = v8;
  v14 = _Block_copy(v16);

  return v14;
}

void __104__HMDHAPAccessoryLocalOperationTask__completionHandlerForAccessory_accessoryRequests_responseWaitGroup___block_invoke(uint64_t a1, void *a2)
{
  v52 = *MEMORY[0x277D85DE8];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v3 = a2;
  v4 = [v3 countByEnumeratingWithState:&v29 objects:v51 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v30;
    do
    {
      v8 = 0;
      v9 = v6;
      do
      {
        if (*v30 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v10 = [*(*(&v29 + 1) + 8 * v8) error];
        v11 = v10;
        if (v10)
        {
          v12 = v10;
        }

        else
        {
          v12 = v9;
        }

        v6 = v12;

        v13 = [*(a1 + 32) activity];
        [*(a1 + 32) activityResponseEventName];

        [*(a1 + 40) uuid];
        [v11 domain];

        [v11 code];
        ++v8;
        v9 = v6;
      }

      while (v5 != v8);
      v5 = [v3 countByEnumeratingWithState:&v29 objects:v51 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  v14 = objc_autoreleasePoolPush();
  v15 = *(a1 + 32);
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = HMFGetLogIdentifier();
    v18 = *(a1 + 32);
    v26 = [*(a1 + 40) name];
    v28 = [*(a1 + 40) uuid];
    v19 = [v28 UUIDString];
    v20 = [*(a1 + 40) uniqueIdentifier];
    v27 = v14;
    v21 = [v3 count];
    v25 = [*(a1 + 48) count];
    [*(a1 + 32) executionTimeInterval];
    *buf = 138545410;
    v34 = v17;
    v35 = 2114;
    v36 = v18;
    v37 = 2112;
    v38 = v26;
    v39 = 2114;
    v40 = v19;
    v41 = 2114;
    v42 = v20;
    v43 = 2048;
    v44 = v21;
    v14 = v27;
    v45 = 2048;
    v46 = v25;
    v47 = 2048;
    v48 = v22;
    v49 = 2114;
    v50 = v6;
    _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@[%{public}@] Completed operation for accessory %@/%{public}@/%{public}@ with %ld/%ld responses. Execution Time: %.3fs. Error: %{public}@", buf, 0x5Cu);
  }

  objc_autoreleasePoolPop(v14);
  [*(a1 + 32) addCharacteristicResponses:v3 isRemote:0];
  dispatch_group_leave(*(a1 + 56));
  if ([*(a1 + 32) supportsMultiPartResponse])
  {
    v23 = [*(a1 + 32) completion];
    (v23)[2](v23, v3);
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (void)execute
{
  v58 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEAA8] date];
  [(HMDHAPAccessoryTask *)self setExecutionTime:v3];

  v4 = [MEMORY[0x277CBEB18] array];
  v5 = [(HMDHAPAccessoryTask *)self requests];
  v38 = self;
  v6 = [(HMDHAPAccessoryTask *)self context];
  v7 = [v6 user];
  v33 = v4;
  v8 = accessoryRequestMapFromRequests(v5, v4, v7);

  v9 = dispatch_group_create();
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = v8;
  v37 = [obj countByEnumeratingWithState:&v41 objects:v57 count:16];
  if (v37)
  {
    v36 = *v42;
    v34 = v9;
    do
    {
      for (i = 0; i != v37; ++i)
      {
        if (*v42 != v36)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v41 + 1) + 8 * i);
        v12 = [obj objectForKey:v11];
        v13 = [(HMDHAPAccessoryTask *)v38 activity];
        v14 = [(HMDHAPAccessoryTask *)v38 operationName];
        v15 = [v11 shortDescription];
        [v13 markWithFormat:@"Starting %@ for accessory: %@", v14, v15];

        v16 = objc_autoreleasePoolPush();
        v17 = v38;
        v18 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v19 = HMFGetLogIdentifier();
          v20 = [v11 name];
          v21 = [v11 uuid];
          [v21 UUIDString];
          v22 = v35 = v16;
          v23 = [v11 uniqueIdentifier];
          v24 = [v12 count];
          *buf = 138544642;
          v46 = v19;
          v47 = 2114;
          v48 = v38;
          v49 = 2112;
          v50 = v20;
          v51 = 2114;
          v52 = v22;
          v53 = 2114;
          v54 = v23;
          v55 = 2048;
          v56 = v24;
          _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@[%{public}@] Starting for accessory %@/%{public}@/%{public}@ with %ld requests", buf, 0x3Eu);

          v16 = v35;
          v9 = v34;
        }

        objc_autoreleasePoolPop(v16);
        v25 = [(HMDHAPAccessoryTask *)v17 activity];
        [(HMDHAPAccessoryLocalOperationTask *)v17 activityRequestEventName];

        [(HMDHAPAccessoryTask *)v17 operationName];
        [v11 uuid];

        [v12 count];
        v26 = [(HMDHAPAccessoryLocalOperationTask *)v17 logEvents];
        v27 = [v11 uuid];
        v28 = [v27 UUIDString];
        v29 = [v26 objectForKeyedSubscript:v28];

        dispatch_group_enter(v9);
        v30 = [(HMDHAPAccessoryLocalOperationTask *)v17 _completionHandlerForAccessory:v11 accessoryRequests:v12 responseWaitGroup:v9];
        [(HMDHAPAccessoryLocalOperationTask *)v17 _dispatchToAccessory:v11 requests:v12 logEvent:v29 completion:v30];
      }

      v37 = [obj countByEnumeratingWithState:&v41 objects:v57 count:16];
    }

    while (v37);
  }

  [(HMDHAPAccessoryTask *)v38 addCharacteristicResponses:v33 isRemote:0];
  v31 = [(HMDHAPAccessoryTask *)v38 workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__HMDHAPAccessoryLocalOperationTask_execute__block_invoke;
  block[3] = &unk_279735D00;
  block[4] = v38;
  dispatch_group_notify(v9, v31, block);

  v32 = *MEMORY[0x277D85DE8];
}

void __44__HMDHAPAccessoryLocalOperationTask_execute__block_invoke(uint64_t a1)
{
  if (([*(a1 + 32) supportsMultiPartResponse] & 1) == 0)
  {
    v3 = [*(a1 + 32) completion];
    v2 = [*(a1 + 32) characteristicResponses];
    v3[2](v3, v2);
  }
}

@end