@interface HMDHAPAccessoryPrimaryResidentOperationTask
+ (void)filterAccessoriesByDevicesFromMap:(id)map currentDeviceAccessories:(id)accessories otherDeviceAccessories:(id)deviceAccessories;
- (HMDHAPAccessoryPrimaryResidentOperationTask)initWithContext:(id)context requests:(id)requests completion:(id)completion;
- (id)_fallbackTaskForDevice:(id)device;
- (id)_makeLocalTaskWithRequests:(id)requests completion:(id)completion;
- (id)_makeRemoteWithFallbackTaskWithRequests:(id)requests delegateDevice:(id)device completion:(id)completion;
- (void)_fanOutRemoteRequests:(id)requests residentToAccessoriesMap:(id)map responseWaitGroup:(id)group;
- (void)_processLocalRequests:(id)requests responseWaitGroup:(id)group;
- (void)execute;
@end

@implementation HMDHAPAccessoryPrimaryResidentOperationTask

- (id)_makeLocalTaskWithRequests:(id)requests completion:(id)completion
{
  requestsCopy = requests;
  completionCopy = completion;
  v8 = MEMORY[0x277CBEAD8];
  v9 = *MEMORY[0x277CBE658];
  v10 = MEMORY[0x277CCACA8];
  v11 = NSStringFromSelector(a2);
  v12 = [v10 stringWithFormat:@"%@ is unavailable", v11];
  v13 = [v8 exceptionWithName:v9 reason:v12 userInfo:0];
  v14 = v13;

  objc_exception_throw(v13);
}

- (id)_makeRemoteWithFallbackTaskWithRequests:(id)requests delegateDevice:(id)device completion:(id)completion
{
  requestsCopy = requests;
  deviceCopy = device;
  completionCopy = completion;
  v11 = MEMORY[0x277CBEAD8];
  v12 = *MEMORY[0x277CBE658];
  v13 = MEMORY[0x277CCACA8];
  v14 = NSStringFromSelector(a2);
  v15 = [v13 stringWithFormat:@"%@ is unavailable", v14];
  v16 = [v11 exceptionWithName:v12 reason:v15 userInfo:0];
  v17 = v16;

  objc_exception_throw(v16);
}

- (id)_fallbackTaskForDevice:(id)device
{
  v25 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  if (!deviceCopy)
  {
    _HMFPreconditionFailure();
  }

  v5 = deviceCopy;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  remoteFallbackTasks = [(HMDHAPAccessoryPrimaryResidentOperationTask *)self remoteFallbackTasks];
  v7 = [remoteFallbackTasks countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v7)
  {
    v8 = *v21;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(remoteFallbackTasks);
        }

        v10 = *(*(&v20 + 1) + 8 * i);
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

        remoteTask = [v12 remoteTask];

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v14 = remoteTask;
        }

        else
        {
          v14 = 0;
        }

        v15 = v14;

        delegateDevice = [v15 delegateDevice];
        v17 = [delegateDevice isEqual:v5];

        if (v17)
        {
          v7 = v10;

          goto LABEL_18;
        }
      }

      v7 = [remoteFallbackTasks countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_18:

  v18 = *MEMORY[0x277D85DE8];

  return v7;
}

- (void)_processLocalRequests:(id)requests responseWaitGroup:(id)group
{
  requestsCopy = requests;
  groupCopy = group;
  v8 = [requestsCopy mutableCopy];
  array = [MEMORY[0x277CBEB18] array];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __87__HMDHAPAccessoryPrimaryResidentOperationTask__processLocalRequests_responseWaitGroup___block_invoke;
  v22[3] = &unk_279735090;
  v22[4] = self;
  migrateRequestsPassingTest(v8, array, v22);
  if (([array hmf_isEmpty] & 1) == 0)
  {
    v10 = [MEMORY[0x277CCA9B8] hmErrorWithCode:4];
    v11 = [HMDCharacteristicResponse responsesWithRequests:array error:v10];

    completion = [(HMDHAPAccessoryTask *)self completion];
    (completion)[2](completion, v11);
  }

  if (([v8 hmf_isEmpty] & 1) == 0)
  {
    dispatch_group_enter(groupCopy);
    objc_initWeak(&location, self);
    v15 = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = __87__HMDHAPAccessoryPrimaryResidentOperationTask__processLocalRequests_responseWaitGroup___block_invoke_432;
    v18 = &unk_2797353F8;
    objc_copyWeak(&v20, &location);
    v19 = groupCopy;
    v13 = [(HMDHAPAccessoryPrimaryResidentOperationTask *)self _makeLocalTaskWithRequests:v8 completion:&v15];
    [(HMDHAPAccessoryPrimaryResidentOperationTask *)self setLocalTask:v13, v15, v16, v17, v18];

    localTask = [(HMDHAPAccessoryPrimaryResidentOperationTask *)self localTask];
    [localTask execute];

    objc_destroyWeak(&v20);
    objc_destroyWeak(&location);
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
          _os_log_impl(&dword_2531F8000, v27, OS_LOG_TYPE_INFO, "%{public}@Skipping characteristic request: %@, accessory has a better link quality: %@(%@s) / %@(%@s) to the device originating message: %@", buf, 0x48u);

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

void __87__HMDHAPAccessoryPrimaryResidentOperationTask__processLocalRequests_responseWaitGroup___block_invoke_432(uint64_t a1, void *a2)
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
      _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@Lost self reference for local task completion handler", &v15, 0xCu);
    }

    objc_autoreleasePoolPop(v11);
    dispatch_group_leave(*(a1 + 32));
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_fanOutRemoteRequests:(id)requests residentToAccessoriesMap:(id)map responseWaitGroup:(id)group
{
  v51 = *MEMORY[0x277D85DE8];
  requestsCopy = requests;
  mapCopy = map;
  groupCopy3 = group;
  v30 = requestsCopy;
  if (([requestsCopy hmf_isEmpty] & 1) == 0)
  {
    group = groupCopy3;
    array = [MEMORY[0x277CBEB18] array];
    context = [(HMDHAPAccessoryTask *)self context];
    user = [context user];
    v12 = accessoryRequestMapFromRequests(requestsCopy, array, user);

    [(HMDHAPAccessoryTask *)self addCharacteristicResponses:array isRemote:0];
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    obj = mapCopy;
    v34 = [obj countByEnumeratingWithState:&v45 objects:v50 count:16];
    if (v34)
    {
      v32 = *v46;
      do
      {
        for (i = 0; i != v34; ++i)
        {
          if (*v46 != v32)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v45 + 1) + 8 * i);
          v15 = [obj objectForKey:v14];
          array2 = [MEMORY[0x277CBEB18] array];
          v43 = 0u;
          v44 = 0u;
          v41 = 0u;
          v42 = 0u;
          v17 = v15;
          v18 = [v17 countByEnumeratingWithState:&v41 objects:v49 count:16];
          if (v18)
          {
            v19 = *v42;
            do
            {
              for (j = 0; j != v18; ++j)
              {
                if (*v42 != v19)
                {
                  objc_enumerationMutation(v17);
                }

                v21 = [v12 objectForKey:*(*(&v41 + 1) + 8 * j)];
                [array2 addObjectsFromArray:v21];
              }

              v18 = [v17 countByEnumeratingWithState:&v41 objects:v49 count:16];
            }

            while (v18);
          }

          if (([array2 hmf_isEmpty] & 1) == 0)
          {
            dispatch_group_enter(group);
            objc_initWeak(&location, self);
            v22 = [array2 copy];
            device = [v14 device];
            v36[0] = MEMORY[0x277D85DD0];
            v36[1] = 3221225472;
            v36[2] = __112__HMDHAPAccessoryPrimaryResidentOperationTask__fanOutRemoteRequests_residentToAccessoriesMap_responseWaitGroup___block_invoke;
            v36[3] = &unk_2797353D0;
            objc_copyWeak(&v39, &location);
            groupCopy2 = group;
            v38 = v14;
            v24 = [(HMDHAPAccessoryPrimaryResidentOperationTask *)self _makeRemoteWithFallbackTaskWithRequests:v22 delegateDevice:device completion:v36];

            remoteFallbackTasks = [(HMDHAPAccessoryPrimaryResidentOperationTask *)self remoteFallbackTasks];
            LODWORD(device) = remoteFallbackTasks == 0;

            if (device)
            {
              array3 = [MEMORY[0x277CBEB18] array];
              [(HMDHAPAccessoryPrimaryResidentOperationTask *)self setRemoteFallbackTasks:array3];
            }

            remoteFallbackTasks2 = [(HMDHAPAccessoryPrimaryResidentOperationTask *)self remoteFallbackTasks];
            [remoteFallbackTasks2 addObject:v24];

            [v24 execute];
            objc_destroyWeak(&v39);
            objc_destroyWeak(&location);
          }
        }

        v34 = [obj countByEnumeratingWithState:&v45 objects:v50 count:16];
      }

      while (v34);
    }

    groupCopy3 = group;
  }

  v28 = *MEMORY[0x277D85DE8];
}

void __112__HMDHAPAccessoryPrimaryResidentOperationTask__fanOutRemoteRequests_residentToAccessoriesMap_responseWaitGroup___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained addCharacteristicResponses:v3 isRemote:0];
    v6 = [*(a1 + 40) device];
    v7 = [v5 _fallbackTaskForDevice:v6];

    if (v7 && [v7 allResponsesReceived])
    {
      if ([v5 supportsMultiPartResponse] && (objc_msgSend(v5, "allResponsesReceived") & 1) == 0)
      {
        v8 = [v5 completion];
        (v8)[2](v8, v3);
      }

      dispatch_group_leave(*(a1 + 32));
    }

    else if ([v5 supportsMultiPartResponse])
    {
      v9 = [v5 completion];
      (v9)[2](v9, v3);
    }
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = HMFGetLogIdentifier();
      v14 = 138543362;
      v15 = v12;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@Lost self reference for fallback task completion handler", &v14, 0xCu);
    }

    objc_autoreleasePoolPop(v10);
    dispatch_group_leave(*(a1 + 32));
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)execute
{
  date = [MEMORY[0x277CBEAA8] date];
  [(HMDHAPAccessoryTask *)self setExecutionTime:date];

  v4 = dispatch_group_create();
  requests = [(HMDHAPAccessoryTask *)self requests];
  v6 = [requests mutableCopy];

  array = [MEMORY[0x277CBEB18] array];
  migrateRequestsPassingTest(v6, array, &__block_literal_global_428);
  v8 = [v6 na_map:&__block_literal_global_431_189811];
  context = [(HMDHAPAccessoryTask *)self context];
  v10 = [context residentMapForAccessories:v8];

  v11 = [MEMORY[0x277CBEB58] set];
  v12 = [MEMORY[0x277CBEB58] set];
  [objc_opt_class() filterAccessoriesByDevicesFromMap:v10 currentDeviceAccessories:v11 otherDeviceAccessories:v12];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __54__HMDHAPAccessoryPrimaryResidentOperationTask_execute__block_invoke_3;
  v17[3] = &unk_2797353A8;
  v18 = v11;
  v19 = v12;
  v13 = v12;
  v14 = v11;
  migrateRequestsPassingTest(v6, array, v17);
  [(HMDHAPAccessoryPrimaryResidentOperationTask *)self _fanOutRemoteRequests:v6 residentToAccessoriesMap:v10 responseWaitGroup:v4];
  [(HMDHAPAccessoryPrimaryResidentOperationTask *)self _processLocalRequests:array responseWaitGroup:v4];
  workQueue = [(HMDHAPAccessoryTask *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__HMDHAPAccessoryPrimaryResidentOperationTask_execute__block_invoke_4;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_group_notify(v4, workQueue, block);
}

uint64_t __54__HMDHAPAccessoryPrimaryResidentOperationTask_execute__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 accessory];
  if ([v4 containsObject:v5])
  {
    v6 = 1;
  }

  else
  {
    v7 = *(a1 + 40);
    v8 = [v3 accessory];
    v6 = [v7 containsObject:v8] ^ 1;
  }

  return v6;
}

void __54__HMDHAPAccessoryPrimaryResidentOperationTask_execute__block_invoke_4(uint64_t a1)
{
  v3 = [*(a1 + 32) completion];
  v2 = [*(a1 + 32) characteristicResponses];
  v3[2](v3, v2);
}

uint64_t __54__HMDHAPAccessoryPrimaryResidentOperationTask_execute__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 accessory];
  v4 = v2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ([v3 hasIPLink] & 1) != 0 || (objc_msgSend(v3, "custom1WoBLE"))
  {
    v6 = 1;
  }

  else
  {
    v8 = isKindOfClass & (v4 != 0);
    v6 = [v3 isBLELinkConnected];
    if (((v6 | v8) & 1) == 0)
    {
      v9 = [v4 characteristic];
      v6 = [v3 hasValidCachedValueForCharacteristic:v9 shouldLog:0];
    }
  }

  return v6;
}

- (HMDHAPAccessoryPrimaryResidentOperationTask)initWithContext:(id)context requests:(id)requests completion:(id)completion
{
  v6.receiver = self;
  v6.super_class = HMDHAPAccessoryPrimaryResidentOperationTask;
  return [(HMDHAPAccessoryTask *)&v6 initWithContext:context requests:requests completion:completion];
}

+ (void)filterAccessoriesByDevicesFromMap:(id)map currentDeviceAccessories:(id)accessories otherDeviceAccessories:(id)deviceAccessories
{
  v23 = *MEMORY[0x277D85DE8];
  mapCopy = map;
  accessoriesCopy = accessories;
  deviceAccessoriesCopy = deviceAccessories;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v10 = [mapCopy countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(mapCopy);
        }

        v14 = *(*(&v18 + 1) + 8 * i);
        v15 = [mapCopy objectForKey:v14];
        if ([v14 isCurrentDevice])
        {
          v16 = accessoriesCopy;
        }

        else
        {
          v16 = deviceAccessoriesCopy;
        }

        [v16 addObjectsFromArray:v15];
      }

      v11 = [mapCopy countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v11);
  }

  v17 = *MEMORY[0x277D85DE8];
}

@end