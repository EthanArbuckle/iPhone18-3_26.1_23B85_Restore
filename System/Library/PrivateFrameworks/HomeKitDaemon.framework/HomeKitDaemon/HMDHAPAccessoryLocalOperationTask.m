@interface HMDHAPAccessoryLocalOperationTask
- (NSString)activityRequestEventName;
- (NSString)activityResponseEventName;
- (id)_completionHandlerForAccessory:(id)a3 accessoryRequests:(id)a4 responseWaitGroup:(id)a5;
- (void)_dispatchToAccessory:(id)a3 requests:(id)a4 logEvent:(id)a5 completion:(id)a6;
- (void)_processResponseTuplesForBridgedAccessories:(id)a3;
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
  v16[3] = &unk_278689438;
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
  v53 = *MEMORY[0x277D85DE8];
  v3 = a2;
  [*(a1 + 32) _processResponseTuplesForBridgedAccessories:v3];
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v30 objects:v52 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v31;
    do
    {
      v9 = 0;
      v10 = v7;
      do
      {
        if (*v31 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v11 = [*(*(&v30 + 1) + 8 * v9) error];
        v12 = v11;
        if (v11)
        {
          v13 = v11;
        }

        else
        {
          v13 = v10;
        }

        v7 = v13;

        v14 = [*(a1 + 32) activity];
        [*(a1 + 32) activityResponseEventName];

        [*(a1 + 40) uuid];
        [v12 domain];

        [v12 code];
        ++v9;
        v10 = v7;
      }

      while (v6 != v9);
      v6 = [v4 countByEnumeratingWithState:&v30 objects:v52 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  v15 = objc_autoreleasePoolPush();
  v16 = *(a1 + 32);
  v17 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = HMFGetLogIdentifier();
    v19 = *(a1 + 32);
    v27 = [*(a1 + 40) name];
    v29 = [*(a1 + 40) uuid];
    v20 = [v29 UUIDString];
    v21 = [*(a1 + 40) uniqueIdentifier];
    v28 = v15;
    v22 = [v4 count];
    v26 = [*(a1 + 48) count];
    [*(a1 + 32) executionTimeInterval];
    *buf = 138545410;
    v35 = v18;
    v36 = 2114;
    v37 = v19;
    v38 = 2112;
    v39 = v27;
    v40 = 2114;
    v41 = v20;
    v42 = 2114;
    v43 = v21;
    v44 = 2048;
    v45 = v22;
    v15 = v28;
    v46 = 2048;
    v47 = v26;
    v48 = 2048;
    v49 = v23;
    v50 = 2114;
    v51 = v7;
    _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@[%{public}@] Completed operation for accessory %@/%{public}@/%{public}@ with %ld/%ld responses. Execution Time: %.3fs. Error: %{public}@", buf, 0x5Cu);
  }

  objc_autoreleasePoolPop(v15);
  [*(a1 + 32) addCharacteristicResponses:v4 isRemote:0];
  dispatch_group_leave(*(a1 + 56));
  if ([*(a1 + 32) supportsMultiPartResponse])
  {
    v24 = [*(a1 + 32) completion];
    (v24)[2](v24, v4);
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)_processResponseTuplesForBridgedAccessories:(id)a3
{
  v45 = *MEMORY[0x277D85DE8];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v34 objects:v44 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v35;
    *&v6 = 138543874;
    v31 = v6;
    v32 = self;
    v33 = v4;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v35 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v34 + 1) + 8 * i);
        v11 = [v10 request];
        v12 = [v11 accessory];

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v13 = v12;
        }

        else
        {
          v13 = 0;
        }

        v14 = v13;

        if (v14)
        {
          v15 = [v14 home];
          if (([v15 isCurrentDeviceConfirmedPrimaryResident] & 1) == 0)
          {

            goto LABEL_22;
          }

          v16 = [v14 bridge];

          if (!v16)
          {
            goto LABEL_22;
          }

          v17 = [v10 error];

          if (v17)
          {
            if (([v14 isLastSeenDateValid] & 1) == 0)
            {
              v18 = [MEMORY[0x277CBEAA8] date];
              goto LABEL_18;
            }
          }

          else
          {
            v19 = [v14 lastSeenDate];
            v20 = [MEMORY[0x277CBEAA8] distantPast];
            v21 = [v19 isEqual:v20];

            if ((v21 & 1) == 0)
            {
              v18 = [MEMORY[0x277CBEAA8] distantPast];
LABEL_18:
              v22 = v18;
              [v14 updateLastSeenStatusWithDate:v18 lowBatteryStatus:0];
            }
          }

          v23 = objc_autoreleasePoolPush();
          v24 = self;
          v25 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
          {
            v26 = HMFGetLogIdentifier();
            v27 = [v14 lastSeenDate];
            [v14 uuid];
            v29 = v28 = v8;
            *buf = v31;
            v39 = v26;
            v40 = 2112;
            v41 = v27;
            v42 = 2112;
            v43 = v29;
            _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_INFO, "%{public}@Updated last seen date to %@ for bridged accessory %@", buf, 0x20u);

            v8 = v28;
            self = v32;
            v4 = v33;
          }

          objc_autoreleasePoolPop(v23);
        }

LABEL_22:
      }

      v7 = [v4 countByEnumeratingWithState:&v34 objects:v44 count:16];
    }

    while (v7);
  }

  v30 = *MEMORY[0x277D85DE8];
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
          _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@[%{public}@] Starting for accessory %@/%{public}@/%{public}@ with %ld requests", buf, 0x3Eu);

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
  block[3] = &unk_27868A728;
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