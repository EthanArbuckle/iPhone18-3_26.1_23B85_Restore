@interface HMDHAPAccessoryRemoteOperationTask
- (BOOL)_appendServiceListWithRequest:(id)a3 serviceList:(id)a4;
- (BOOL)_buildMessageAccessoryListFromAccessoryRequestMap:(id)a3 accessoryList:(id)a4;
- (BOOL)_buildMessageAccessoryListFromRequests:(id)a3 accessoryList:(id)a4;
- (HMDHAPAccessoryRemoteOperationTask)initWithContext:(id)a3 remoteMessageName:(id)a4 requests:(id)a5 delegateDevice:(id)a6 timeout:(double)a7 completion:(id)a8;
- (id)_remoteMessageFromAccessoryRequestMap:(id)a3;
- (id)activityRequestEventName;
- (void)_receivedRemotelyChangedCharacteristicResponses:(id)a3 message:(id)a4;
- (void)_updateLastKnownStateForAccessoriesWithPayload:(id)a3;
- (void)execute;
@end

@implementation HMDHAPAccessoryRemoteOperationTask

- (BOOL)_appendServiceListWithRequest:(id)a3 serviceList:(id)a4
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

- (BOOL)_buildMessageAccessoryListFromRequests:(id)a3 accessoryList:(id)a4
{
  v47 = *MEMORY[0x277D85DE8];
  obj = a3;
  v38 = a4;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v6 = [obj countByEnumeratingWithState:&v42 objects:v46 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v43;
    v32 = *MEMORY[0x277CD2678];
    v34 = *v43;
    v35 = self;
    do
    {
      v10 = 0;
      v36 = v7;
      do
      {
        if (*v43 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v42 + 1) + 8 * v10);
        v12 = [v11 characteristic];
        v13 = [v11 service];
        v14 = [v11 accessory];
        v15 = v14;
        if (v14)
        {
          v16 = v13 == 0;
        }

        else
        {
          v16 = 1;
        }

        if (!v16 && v12 != 0)
        {
          v18 = v8;
          v19 = [v14 uuid];
          v20 = [v19 UUIDString];

          v21 = [v38 hmf_mutableDictionaryForKey:v20];
          if (!v21)
          {
            v21 = [MEMORY[0x277CBEB38] dictionary];
            [v38 setObject:v21 forKeyedSubscript:v20];
          }

          v22 = [(HMDHAPAccessoryTask *)self context];
          v23 = [v22 isShortActionOperation];

          v24 = v18;
          if (v23)
          {
            [v38 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:v32];
            v24 = 1;
          }

          if ([v15 hasBTLELink] && (objc_msgSend(v15, "hasIPLink") & 1) == 0)
          {
            v41 = 0;
            v40 = 5;
            v25 = [v15 home];
            v26 = [v15 identifier];
            v39 = 0;
            [v25 retrieveStateForTrackedAccessory:v26 stateNumber:0 isReachable:&v41 linkQuality:&v40 lastSeen:&v39];
            v33 = v39;

            if (v41 == 1)
            {
              v27 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v40];
              v28 = [v38 objectForKeyedSubscript:v20];
              [v28 setObject:v27 forKeyedSubscript:@"kAccessoryLinkQuality"];

              v29 = [v38 objectForKeyedSubscript:v20];
              [v29 setObject:v33 forKeyedSubscript:@"kAccessoryLastSeen"];
            }
          }

          self = v35;
          v8 = [(HMDHAPAccessoryRemoteOperationTask *)v35 _appendServiceListWithRequest:v11 serviceList:v21]| v24;

          v9 = v34;
          v7 = v36;
        }

        ++v10;
      }

      while (v7 != v10);
      v7 = [obj countByEnumeratingWithState:&v42 objects:v46 count:16];
    }

    while (v7);
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  v30 = *MEMORY[0x277D85DE8];
  return v8 & 1;
}

- (BOOL)_buildMessageAccessoryListFromAccessoryRequestMap:(id)a3 accessoryList:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v17;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v6);
        }

        v13 = [v6 objectForKey:*(*(&v16 + 1) + 8 * i)];
        v10 |= [(HMDHAPAccessoryRemoteOperationTask *)self _buildMessageAccessoryListFromRequests:v13 accessoryList:v7];
      }

      v9 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  else
  {
    LOBYTE(v10) = 0;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v10 & 1;
}

- (id)_remoteMessageFromAccessoryRequestMap:(id)a3
{
  v59[5] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CBEB38];
  v5 = a3;
  v6 = [v4 dictionary];
  v7 = [(HMDHAPAccessoryRemoteOperationTask *)self _buildMessageAccessoryListFromAccessoryRequestMap:v5 accessoryList:v6];

  if ([v6 count])
  {
    if (v7)
    {
      v8 = *MEMORY[0x277CD2678];
      v9 = 1;
    }

    else
    {
      v11 = [(HMDHAPAccessoryTask *)self context];
      v12 = [v11 requestMessage];
      v8 = *MEMORY[0x277CD2678];
      v9 = [v12 BOOLForKey:*MEMORY[0x277CD2678]];
    }

    v13 = [(HMDHAPAccessoryTask *)self context];
    v14 = [v13 requestMessage];
    v15 = [v14 uuidForKey:*MEMORY[0x277CD2050]];

    v16 = (v15 != 0) | v9;
    v17 = MEMORY[0x277CBEB38];
    v57 = v6;
    v58[0] = *MEMORY[0x277CCE7A8];
    v56 = [v6 copy];
    v59[0] = v56;
    v58[1] = *MEMORY[0x277CD0640];
    v55 = [(HMDHAPAccessoryTask *)self context];
    v18 = [v55 homeUniqueIdentifier];
    v19 = [v18 UUIDString];
    v59[1] = v19;
    v58[2] = v8;
    v20 = [MEMORY[0x277CCABB0] numberWithBool:v16 & 1];
    v59[2] = v20;
    v58[3] = @"kDoNotForwardMessageKey";
    v21 = MEMORY[0x277CCABB0];
    v22 = [(HMDHAPAccessoryRemoteOperationTask *)self delegateDevice];
    v23 = [v21 numberWithInt:v22 != 0];
    v59[3] = v23;
    v58[4] = @"kRequestIdentifierKey";
    v24 = [(HMDHAPAccessoryTask *)self requestIdentifier];
    v25 = [v24 UUIDString];
    v59[4] = v25;
    v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v59 forKeys:v58 count:5];
    v27 = [v17 dictionaryWithDictionary:v26];

    v28 = [(HMDHAPAccessoryTask *)self context];
    v29 = [v28 requestMessage];
    v30 = [v29 numberForKey:@"kMessageOriginalSourceKey"];

    if (v30)
    {
      [v27 setObject:v30 forKeyedSubscript:@"kMessageOriginalSourceKey"];
    }

    v31 = [(HMDHAPAccessoryTask *)self context];
    v32 = [v31 requestMessage];
    v33 = [v32 stringForKey:@"kMessageUserOverrideKey"];

    if (v33)
    {
      [v27 setObject:v33 forKeyedSubscript:@"kMessageUserOverrideKey"];
    }

    v34 = [(HMDHAPAccessoryRemoteOperationTask *)self remoteMessageName];
    v35 = [(HMDHAPAccessoryTask *)self context];
    v36 = [v35 requestMessage];
    v37 = [v36 name];
    v38 = [v37 isEqualToString:@"kCharacteristicReadRequestKey"];

    if (v38)
    {
      v39 = [(HMDHAPAccessoryTask *)self context];
      v40 = [v39 requestMessage];
      v41 = [v40 name];

      v42 = [(HMDHAPAccessoryTask *)self context];
      v43 = [v42 requestMessage];
      v44 = [v43 messagePayload];
      [v27 addEntriesFromDictionary:v44];

      v34 = v41;
    }

    if ([(HMDHAPAccessoryTask *)self supportsMultiPartResponse])
    {
      v45 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDHAPAccessoryTask supportsMultiPartResponse](self, "supportsMultiPartResponse")}];
      [v27 setObject:v45 forKeyedSubscript:@"kMultiPartResponseKey"];
    }

    v46 = [(HMDHAPAccessoryTask *)self context];
    v47 = [v46 qualityOfService];

    if (v47 <= 17)
    {
      v48 = 17;
    }

    else
    {
      v48 = v47;
    }

    v49 = MEMORY[0x277D0F848];
    v50 = [(HMDHAPAccessoryTask *)self context];
    v51 = [v50 homeMessageDestination];
    v52 = [v27 copy];
    v10 = [v49 messageWithName:v34 qualityOfService:v48 destination:v51 payload:v52];

    v6 = v57;
  }

  else
  {
    v10 = 0;
  }

  v53 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)activityRequestEventName
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [(HMDHAPAccessoryTask *)self operationName];
  v4 = [v3 capitalizedString];
  v5 = [v2 stringWithFormat:@"HMDHAPAccessoryRemoteOperationTask.Forward%@sToResident", v4];

  return v5;
}

- (void)_receivedRemotelyChangedCharacteristicResponses:(id)a3 message:(id)a4
{
  v14 = a3;
  v6 = a4;
  v7 = [(HMDHAPAccessoryTask *)self workQueue];
  dispatch_assert_queue_V2(v7);

  if ([v14 count] && -[HMDHAPAccessoryTask supportsMultiPartResponse](self, "supportsMultiPartResponse") && !-[HMDHAPAccessoryRemoteOperationTask isFinished](self, "isFinished"))
  {
    v8 = [(HMDHAPAccessoryTask *)self completion];
    (v8)[2](v8, v14);

    if ([(HMDHAPAccessoryTask *)self allResponsesReceived])
    {
      [(HMDHAPAccessoryRemoteOperationTask *)self setFinished:1];
    }

    v9 = objc_opt_class();
    v10 = [(HMDHAPAccessoryRemoteOperationTask *)self logEvents];
    v11 = [v6 userInfo];
    v12 = [(HMDHAPAccessoryTask *)self requestIdentifier];
    v13 = [v12 UUIDString];
    [v9 updateLogEvents:v10 withResponses:v14 remoteMessageResponse:v11 forTaskID:v13 shouldSubmit:1];
  }
}

- (void)_updateLastKnownStateForAccessoriesWithPayload:(id)a3
{
  v4 = a3;
  v5 = [(HMDHAPAccessoryTask *)self context];
  v6 = [v5 home];

  v7 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v8 = [v4 objectForKeyedSubscript:*MEMORY[0x277CD1FB0]];
  if (v8)
  {
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __85__HMDHAPAccessoryRemoteOperationTask__updateLastKnownStateForAccessoriesWithPayload___block_invoke;
    v16[3] = &unk_278689488;
    v17 = v6;
    v18 = v7;
    [v8 enumerateKeysAndObjectsUsingBlock:v16];
  }

  v9 = [v4 objectForKeyedSubscript:@"kModifiedCharacteristicsForAccessoryKey"];
  if (v9)
  {
    v10 = MEMORY[0x277D85DD0];
    v11 = 3221225472;
    v12 = __85__HMDHAPAccessoryRemoteOperationTask__updateLastKnownStateForAccessoriesWithPayload___block_invoke_2;
    v13 = &unk_278689488;
    v14 = v7;
    v15 = v6;
    [v9 enumerateKeysAndObjectsUsingBlock:&v10];
  }

  [v7 removeAllObjects];
}

void __85__HMDHAPAccessoryRemoteOperationTask__updateLastKnownStateForAccessoriesWithPayload___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = MEMORY[0x277CCAD78];
  v7 = a3;
  v8 = a2;
  v9 = [[v6 alloc] initWithUUIDString:v8];
  v16 = [v5 accessoryWithUUID:v9];

  v10 = [v7 objectForKeyedSubscript:*MEMORY[0x277CD1FA8]];
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

  v13 = [v7 objectForKeyedSubscript:*MEMORY[0x277CD1FB8]];

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

  [v16 updateLastSeenStatusWithDate:v12 lowBatteryStatus:v15];
  [*(a1 + 40) addObject:v8];
}

void __85__HMDHAPAccessoryRemoteOperationTask__updateLastKnownStateForAccessoriesWithPayload___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __85__HMDHAPAccessoryRemoteOperationTask__updateLastKnownStateForAccessoriesWithPayload___block_invoke_3;
  v7[3] = &unk_2786894D8;
  v8 = *(a1 + 32);
  v9 = v5;
  v10 = *(a1 + 40);
  v6 = v5;
  [a3 enumerateKeysAndObjectsUsingBlock:v7];
}

void __85__HMDHAPAccessoryRemoteOperationTask__updateLastKnownStateForAccessoriesWithPayload___block_invoke_3(id *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __85__HMDHAPAccessoryRemoteOperationTask__updateLastKnownStateForAccessoriesWithPayload___block_invoke_4;
  v6[3] = &unk_2786894B0;
  v10 = a4;
  v7 = a1[4];
  v8 = a1[5];
  v9 = a1[6];
  [a3 enumerateKeysAndObjectsUsingBlock:v6];
}

void __85__HMDHAPAccessoryRemoteOperationTask__updateLastKnownStateForAccessoriesWithPayload___block_invoke_4(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v6 = [a3 objectForKey:*MEMORY[0x277CD2128]];

  if (!v6)
  {
    **(a1 + 56) = 1;
    *a4 = 1;
    if (([*(a1 + 32) containsObject:*(a1 + 40)] & 1) == 0)
    {
      v7 = *(a1 + 48);
      v8 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:*(a1 + 40)];
      v10 = [v7 accessoryWithUUID:v8];

      v9 = [MEMORY[0x277CBEAA8] distantPast];
      [v10 updateLastSeenStatusWithDate:v9 lowBatteryStatus:0];
    }
  }
}

- (void)execute
{
  v52 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEAA8] date];
  [(HMDHAPAccessoryTask *)self setExecutionTime:v3];

  v32 = [MEMORY[0x277CBEB18] array];
  v4 = [(HMDHAPAccessoryTask *)self requests];
  v5 = [(HMDHAPAccessoryTask *)self context];
  v6 = [v5 user];
  v7 = accessoryRequestMapFromRequests(v4, v32, v6);

  [(HMDHAPAccessoryTask *)self addCharacteristicResponses:v32 isRemote:0];
  v8 = [(HMDHAPAccessoryRemoteOperationTask *)self _remoteMessageFromAccessoryRequestMap:v7];
  [(HMDHAPAccessoryRemoteOperationTask *)self remoteMessageTimeout];
  [v8 setTimeout:?];
  v9 = [v8 messagePayload];
  v10 = [v9 objectForKeyedSubscript:*MEMORY[0x277CCE7A8]];
  obj = [(HMDHAPAccessoryTask *)self logEventsFromAccessoryRequestMap:v7 accessoryList:v10];

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v11 = v7;
  v12 = [v11 countByEnumeratingWithState:&v39 objects:v51 count:16];
  if (v12)
  {
    v13 = *v40;
    do
    {
      v14 = 0;
      do
      {
        if (*v40 != v13)
        {
          objc_enumerationMutation(v11);
        }

        v15 = *(*(&v39 + 1) + 8 * v14);
        v16 = [(HMDHAPAccessoryTask *)self activity];
        [(HMDHAPAccessoryRemoteOperationTask *)self activityRequestEventName];

        [(HMDHAPAccessoryTask *)self operationName];
        [v15 uuid];

        ++v14;
      }

      while (v12 != v14);
      v12 = [v11 countByEnumeratingWithState:&v39 objects:v51 count:16];
    }

    while (v12);
  }

  v17 = dispatch_group_create();
  dispatch_group_enter(v17);
  objc_initWeak(&location, self);
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __45__HMDHAPAccessoryRemoteOperationTask_execute__block_invoke;
  v34[3] = &unk_278689460;
  objc_copyWeak(&v37, &location);
  v18 = v11;
  v35 = v18;
  v19 = v17;
  v36 = v19;
  [v8 setResponseHandler:v34];
  objc_storeStrong(&self->_logEvents, obj);
  v20 = objc_autoreleasePoolPush();
  v21 = self;
  v22 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v23 = HMFGetLogIdentifier();
    v24 = [v8 shortDescription];
    v25 = [(HMDHAPAccessoryRemoteOperationTask *)v21 delegateDevice];
    v26 = [v25 shortDescription];
    *buf = 138544130;
    v44 = v23;
    v45 = 2114;
    v46 = v21;
    v47 = 2114;
    v48 = v24;
    v49 = 2114;
    v50 = v26;
    _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_DEFAULT, "%{public}@[%{public}@] Dispatching message: %{public}@ to device: %{public}@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v20);
  v27 = [(HMDHAPAccessoryTask *)v21 context];
  v28 = [(HMDHAPAccessoryRemoteOperationTask *)v21 delegateDevice];
  [v27 dispatchMessage:v8 delegateDevice:v28];

  v29 = [(HMDHAPAccessoryTask *)v21 workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__HMDHAPAccessoryRemoteOperationTask_execute__block_invoke_306;
  block[3] = &unk_27868A728;
  block[4] = v21;
  dispatch_group_notify(v19, v29, block);

  objc_destroyWeak(&v37);
  objc_destroyWeak(&location);

  v30 = *MEMORY[0x277D85DE8];
}

void __45__HMDHAPAccessoryRemoteOperationTask_execute__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v63 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v43 = a1;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    if (v6)
    {
      [WeakRetained _updateLastKnownStateForAccessoriesWithPayload:v6];
    }

    if (v5)
    {
      v39 = v6;
      v40 = v5;
      v9 = [MEMORY[0x277CBEB18] array];
      v49 = 0u;
      v50 = 0u;
      v51 = 0u;
      v52 = 0u;
      obj = *(a1 + 32);
      v44 = [obj countByEnumeratingWithState:&v49 objects:v62 count:16];
      if (v44)
      {
        v42 = *v50;
        do
        {
          for (i = 0; i != v44; ++i)
          {
            if (*v50 != v42)
            {
              objc_enumerationMutation(obj);
            }

            v11 = [*(v43 + 32) objectForKey:*(*(&v49 + 1) + 8 * i)];
            v45 = 0u;
            v46 = 0u;
            v47 = 0u;
            v48 = 0u;
            v12 = [v11 countByEnumeratingWithState:&v45 objects:v61 count:16];
            if (v12)
            {
              v13 = v12;
              v14 = *v46;
              do
              {
                for (j = 0; j != v13; ++j)
                {
                  if (*v46 != v14)
                  {
                    objc_enumerationMutation(v11);
                  }

                  v16 = *(*(&v45 + 1) + 8 * j);
                  v17 = [v8 requestToResponseMap];
                  v18 = [v17 objectForKey:v16];

                  if (!v18)
                  {
                    [v9 addObject:v16];
                  }
                }

                v13 = [v11 countByEnumeratingWithState:&v45 objects:v61 count:16];
              }

              while (v13);
            }
          }

          v44 = [obj countByEnumeratingWithState:&v49 objects:v62 count:16];
        }

        while (v44);
      }

      v5 = v40;
      v19 = [HMDCharacteristicResponse responsesWithRequests:v9 error:v40];
      v20 = objc_autoreleasePoolPush();
      v21 = v8;
      v22 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = HMFGetLogIdentifier();
        v24 = [v19 count];
        *buf = 138544130;
        v54 = v23;
        v55 = 2112;
        v56 = v21;
        v57 = 2048;
        v58 = v24;
        v59 = 2112;
        v60 = v40;
        _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_DEFAULT, "%{public}@[%@] Received remote characteristic responses: [%ld] with error: %@", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v20);
      v6 = v39;
    }

    else
    {
      v28 = [v8 requests];
      v19 = [HMDCharacteristicResponse responsesWithRequests:v28 characteristicUpdateDictionary:v6];

      v29 = objc_autoreleasePoolPush();
      v30 = v8;
      v31 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        v32 = HMFGetLogIdentifier();
        *buf = 138543874;
        v54 = v32;
        v55 = 2112;
        v56 = v30;
        v57 = 2048;
        v58 = [v19 count];
        _os_log_impl(&dword_229538000, v31, OS_LOG_TYPE_DEFAULT, "%{public}@[%@] Received remote characteristic responses: [%ld]", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v29);
    }

    [v8 addCharacteristicResponses:v19 isRemote:1];
    v33 = [v8 characteristicResponses];
    [v8 _updateCharacteristicsWithResponses:v33 accessoryRequests:*(v43 + 32) completedGroup:*(v43 + 40)];

    v34 = objc_opt_class();
    v35 = [v8 logEvents];
    v36 = [v8 requestIdentifier];
    v37 = [v36 UUIDString];
    [v34 updateLogEvents:v35 withResponses:v19 remoteMessageResponse:v6 forTaskID:v37 shouldSubmit:0];
  }

  else
  {
    v25 = objc_autoreleasePoolPush();
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v27 = HMFGetLogIdentifier();
      *buf = 138543362;
      v54 = v27;
      _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_DEFAULT, "%{public}@Lost self reference for remote operation message response handler", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v25);
  }

  v38 = *MEMORY[0x277D85DE8];
}

void __45__HMDHAPAccessoryRemoteOperationTask_execute__block_invoke_306(uint64_t a1)
{
  if (([*(a1 + 32) isFinished] & 1) == 0)
  {
    [*(a1 + 32) setFinished:1];
    v3 = [*(a1 + 32) completion];
    v2 = [*(a1 + 32) characteristicResponses];
    v3[2](v3, v2);
  }
}

- (HMDHAPAccessoryRemoteOperationTask)initWithContext:(id)a3 remoteMessageName:(id)a4 requests:(id)a5 delegateDevice:(id)a6 timeout:(double)a7 completion:(id)a8
{
  v15 = a4;
  v16 = a6;
  v20.receiver = self;
  v20.super_class = HMDHAPAccessoryRemoteOperationTask;
  v17 = [(HMDHAPAccessoryTask *)&v20 initWithContext:a3 requests:a5 completion:a8];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_remoteMessageName, a4);
    objc_storeStrong(&v18->_delegateDevice, a6);
    v18->_remoteMessageTimeout = a7;
  }

  return v18;
}

@end