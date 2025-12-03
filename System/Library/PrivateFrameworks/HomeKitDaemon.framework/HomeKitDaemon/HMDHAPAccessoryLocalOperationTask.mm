@interface HMDHAPAccessoryLocalOperationTask
- (NSString)activityRequestEventName;
- (NSString)activityResponseEventName;
- (id)_completionHandlerForAccessory:(id)accessory accessoryRequests:(id)requests responseWaitGroup:(id)group;
- (void)_dispatchToAccessory:(id)accessory requests:(id)requests logEvent:(id)event completion:(id)completion;
- (void)_processResponseTuplesForBridgedAccessories:(id)accessories;
- (void)execute;
@end

@implementation HMDHAPAccessoryLocalOperationTask

- (void)_dispatchToAccessory:(id)accessory requests:(id)requests logEvent:(id)event completion:(id)completion
{
  accessoryCopy = accessory;
  requestsCopy = requests;
  eventCopy = event;
  completionCopy = completion;
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
  operationName = [(HMDHAPAccessoryTask *)self operationName];
  capitalizedString = [operationName capitalizedString];
  v5 = [v2 stringWithFormat:@"HMDHAPAccessoryLocalOperationTask.MultiCharacteristic%@Response", capitalizedString];

  return v5;
}

- (NSString)activityRequestEventName
{
  v2 = MEMORY[0x277CCACA8];
  operationName = [(HMDHAPAccessoryTask *)self operationName];
  capitalizedString = [operationName capitalizedString];
  v5 = [v2 stringWithFormat:@"HMDHAPAccessoryLocalOperationTask.MultiCharacteristic%@Accessory", capitalizedString];

  return v5;
}

- (id)_completionHandlerForAccessory:(id)accessory accessoryRequests:(id)requests responseWaitGroup:(id)group
{
  accessoryCopy = accessory;
  requestsCopy = requests;
  groupCopy = group;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __104__HMDHAPAccessoryLocalOperationTask__completionHandlerForAccessory_accessoryRequests_responseWaitGroup___block_invoke;
  v16[3] = &unk_278689438;
  v16[4] = self;
  v17 = accessoryCopy;
  v18 = requestsCopy;
  v19 = groupCopy;
  v11 = groupCopy;
  v12 = requestsCopy;
  v13 = accessoryCopy;
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

- (void)_processResponseTuplesForBridgedAccessories:(id)accessories
{
  v45 = *MEMORY[0x277D85DE8];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  accessoriesCopy = accessories;
  v5 = [accessoriesCopy countByEnumeratingWithState:&v34 objects:v44 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v35;
    *&v6 = 138543874;
    v31 = v6;
    selfCopy = self;
    v33 = accessoriesCopy;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v35 != v8)
        {
          objc_enumerationMutation(accessoriesCopy);
        }

        v10 = *(*(&v34 + 1) + 8 * i);
        request = [v10 request];
        accessory = [request accessory];

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v13 = accessory;
        }

        else
        {
          v13 = 0;
        }

        v14 = v13;

        if (v14)
        {
          home = [v14 home];
          if (([home isCurrentDeviceConfirmedPrimaryResident] & 1) == 0)
          {

            goto LABEL_22;
          }

          bridge = [v14 bridge];

          if (!bridge)
          {
            goto LABEL_22;
          }

          error = [v10 error];

          if (error)
          {
            if (([v14 isLastSeenDateValid] & 1) == 0)
            {
              date = [MEMORY[0x277CBEAA8] date];
              goto LABEL_18;
            }
          }

          else
          {
            lastSeenDate = [v14 lastSeenDate];
            distantPast = [MEMORY[0x277CBEAA8] distantPast];
            v21 = [lastSeenDate isEqual:distantPast];

            if ((v21 & 1) == 0)
            {
              date = [MEMORY[0x277CBEAA8] distantPast];
LABEL_18:
              v22 = date;
              [v14 updateLastSeenStatusWithDate:date lowBatteryStatus:0];
            }
          }

          v23 = objc_autoreleasePoolPush();
          selfCopy2 = self;
          v25 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
          {
            v26 = HMFGetLogIdentifier();
            lastSeenDate2 = [v14 lastSeenDate];
            [v14 uuid];
            v29 = v28 = v8;
            *buf = v31;
            v39 = v26;
            v40 = 2112;
            v41 = lastSeenDate2;
            v42 = 2112;
            v43 = v29;
            _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_INFO, "%{public}@Updated last seen date to %@ for bridged accessory %@", buf, 0x20u);

            v8 = v28;
            self = selfCopy;
            accessoriesCopy = v33;
          }

          objc_autoreleasePoolPop(v23);
        }

LABEL_22:
      }

      v7 = [accessoriesCopy countByEnumeratingWithState:&v34 objects:v44 count:16];
    }

    while (v7);
  }

  v30 = *MEMORY[0x277D85DE8];
}

- (void)execute
{
  v58 = *MEMORY[0x277D85DE8];
  date = [MEMORY[0x277CBEAA8] date];
  [(HMDHAPAccessoryTask *)self setExecutionTime:date];

  array = [MEMORY[0x277CBEB18] array];
  requests = [(HMDHAPAccessoryTask *)self requests];
  selfCopy = self;
  context = [(HMDHAPAccessoryTask *)self context];
  user = [context user];
  v33 = array;
  v8 = accessoryRequestMapFromRequests(requests, array, user);

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
        activity = [(HMDHAPAccessoryTask *)selfCopy activity];
        operationName = [(HMDHAPAccessoryTask *)selfCopy operationName];
        shortDescription = [v11 shortDescription];
        [activity markWithFormat:@"Starting %@ for accessory: %@", operationName, shortDescription];

        v16 = objc_autoreleasePoolPush();
        v17 = selfCopy;
        v18 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v19 = HMFGetLogIdentifier();
          name = [v11 name];
          uuid = [v11 uuid];
          [uuid UUIDString];
          v22 = v35 = v16;
          uniqueIdentifier = [v11 uniqueIdentifier];
          v24 = [v12 count];
          *buf = 138544642;
          v46 = v19;
          v47 = 2114;
          v48 = selfCopy;
          v49 = 2112;
          v50 = name;
          v51 = 2114;
          v52 = v22;
          v53 = 2114;
          v54 = uniqueIdentifier;
          v55 = 2048;
          v56 = v24;
          _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@[%{public}@] Starting for accessory %@/%{public}@/%{public}@ with %ld requests", buf, 0x3Eu);

          v16 = v35;
          v9 = v34;
        }

        objc_autoreleasePoolPop(v16);
        activity2 = [(HMDHAPAccessoryTask *)v17 activity];
        [(HMDHAPAccessoryLocalOperationTask *)v17 activityRequestEventName];

        [(HMDHAPAccessoryTask *)v17 operationName];
        [v11 uuid];

        [v12 count];
        logEvents = [(HMDHAPAccessoryLocalOperationTask *)v17 logEvents];
        uuid2 = [v11 uuid];
        uUIDString = [uuid2 UUIDString];
        v29 = [logEvents objectForKeyedSubscript:uUIDString];

        dispatch_group_enter(v9);
        v30 = [(HMDHAPAccessoryLocalOperationTask *)v17 _completionHandlerForAccessory:v11 accessoryRequests:v12 responseWaitGroup:v9];
        [(HMDHAPAccessoryLocalOperationTask *)v17 _dispatchToAccessory:v11 requests:v12 logEvent:v29 completion:v30];
      }

      v37 = [obj countByEnumeratingWithState:&v41 objects:v57 count:16];
    }

    while (v37);
  }

  [(HMDHAPAccessoryTask *)selfCopy addCharacteristicResponses:v33 isRemote:0];
  workQueue = [(HMDHAPAccessoryTask *)selfCopy workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__HMDHAPAccessoryLocalOperationTask_execute__block_invoke;
  block[3] = &unk_27868A728;
  block[4] = selfCopy;
  dispatch_group_notify(v9, workQueue, block);

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