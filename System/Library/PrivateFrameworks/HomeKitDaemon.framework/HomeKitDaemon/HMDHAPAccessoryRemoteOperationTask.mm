@interface HMDHAPAccessoryRemoteOperationTask
- (BOOL)_appendServiceListWithRequest:(id)request serviceList:(id)list;
- (BOOL)_buildMessageAccessoryListFromAccessoryRequestMap:(id)map accessoryList:(id)list;
- (BOOL)_buildMessageAccessoryListFromRequests:(id)requests accessoryList:(id)list;
- (HMDHAPAccessoryRemoteOperationTask)initWithContext:(id)context remoteMessageName:(id)name requests:(id)requests delegateDevice:(id)device timeout:(double)timeout completion:(id)completion;
- (id)_remoteMessageFromAccessoryRequestMap:(id)map;
- (id)activityRequestEventName;
- (void)_receivedRemotelyChangedCharacteristicResponses:(id)responses message:(id)message;
- (void)_updateLastKnownStateForAccessoriesWithPayload:(id)payload;
- (void)execute;
@end

@implementation HMDHAPAccessoryRemoteOperationTask

- (BOOL)_appendServiceListWithRequest:(id)request serviceList:(id)list
{
  requestCopy = request;
  listCopy = list;
  v8 = MEMORY[0x277CBEAD8];
  v9 = *MEMORY[0x277CBE658];
  v10 = MEMORY[0x277CCACA8];
  v11 = NSStringFromSelector(a2);
  v12 = [v10 stringWithFormat:@"%@ is unavailable", v11];
  v13 = [v8 exceptionWithName:v9 reason:v12 userInfo:0];
  v14 = v13;

  objc_exception_throw(v13);
}

- (BOOL)_buildMessageAccessoryListFromRequests:(id)requests accessoryList:(id)list
{
  v47 = *MEMORY[0x277D85DE8];
  obj = requests;
  listCopy = list;
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
    selfCopy = self;
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
        characteristic = [v11 characteristic];
        service = [v11 service];
        accessory = [v11 accessory];
        v15 = accessory;
        if (accessory)
        {
          v16 = service == 0;
        }

        else
        {
          v16 = 1;
        }

        if (!v16 && characteristic != 0)
        {
          v18 = v8;
          uuid = [accessory uuid];
          uUIDString = [uuid UUIDString];

          dictionary = [listCopy hmf_mutableDictionaryForKey:uUIDString];
          if (!dictionary)
          {
            dictionary = [MEMORY[0x277CBEB38] dictionary];
            [listCopy setObject:dictionary forKeyedSubscript:uUIDString];
          }

          context = [(HMDHAPAccessoryTask *)self context];
          isShortActionOperation = [context isShortActionOperation];

          v24 = v18;
          if (isShortActionOperation)
          {
            [listCopy setObject:MEMORY[0x277CBEC38] forKeyedSubscript:v32];
            v24 = 1;
          }

          if ([v15 hasBTLELink] && (objc_msgSend(v15, "hasIPLink") & 1) == 0)
          {
            v41 = 0;
            v40 = 5;
            home = [v15 home];
            identifier = [v15 identifier];
            v39 = 0;
            [home retrieveStateForTrackedAccessory:identifier stateNumber:0 isReachable:&v41 linkQuality:&v40 lastSeen:&v39];
            v33 = v39;

            if (v41 == 1)
            {
              v27 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v40];
              v28 = [listCopy objectForKeyedSubscript:uUIDString];
              [v28 setObject:v27 forKeyedSubscript:@"kAccessoryLinkQuality"];

              v29 = [listCopy objectForKeyedSubscript:uUIDString];
              [v29 setObject:v33 forKeyedSubscript:@"kAccessoryLastSeen"];
            }
          }

          self = selfCopy;
          v8 = [(HMDHAPAccessoryRemoteOperationTask *)selfCopy _appendServiceListWithRequest:v11 serviceList:dictionary]| v24;

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

- (BOOL)_buildMessageAccessoryListFromAccessoryRequestMap:(id)map accessoryList:(id)list
{
  v21 = *MEMORY[0x277D85DE8];
  mapCopy = map;
  listCopy = list;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = [mapCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(mapCopy);
        }

        v13 = [mapCopy objectForKey:*(*(&v16 + 1) + 8 * i)];
        v10 |= [(HMDHAPAccessoryRemoteOperationTask *)self _buildMessageAccessoryListFromRequests:v13 accessoryList:listCopy];
      }

      v9 = [mapCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
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

- (id)_remoteMessageFromAccessoryRequestMap:(id)map
{
  v59[5] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CBEB38];
  mapCopy = map;
  dictionary = [v4 dictionary];
  v7 = [(HMDHAPAccessoryRemoteOperationTask *)self _buildMessageAccessoryListFromAccessoryRequestMap:mapCopy accessoryList:dictionary];

  if ([dictionary count])
  {
    if (v7)
    {
      v8 = *MEMORY[0x277CD2678];
      v9 = 1;
    }

    else
    {
      context = [(HMDHAPAccessoryTask *)self context];
      requestMessage = [context requestMessage];
      v8 = *MEMORY[0x277CD2678];
      v9 = [requestMessage BOOLForKey:*MEMORY[0x277CD2678]];
    }

    context2 = [(HMDHAPAccessoryTask *)self context];
    requestMessage2 = [context2 requestMessage];
    v15 = [requestMessage2 uuidForKey:*MEMORY[0x277CD2050]];

    v16 = (v15 != 0) | v9;
    v17 = MEMORY[0x277CBEB38];
    v57 = dictionary;
    v58[0] = *MEMORY[0x277CCE7A8];
    v56 = [dictionary copy];
    v59[0] = v56;
    v58[1] = *MEMORY[0x277CD0640];
    context3 = [(HMDHAPAccessoryTask *)self context];
    homeUniqueIdentifier = [context3 homeUniqueIdentifier];
    uUIDString = [homeUniqueIdentifier UUIDString];
    v59[1] = uUIDString;
    v58[2] = v8;
    v20 = [MEMORY[0x277CCABB0] numberWithBool:v16 & 1];
    v59[2] = v20;
    v58[3] = @"kDoNotForwardMessageKey";
    v21 = MEMORY[0x277CCABB0];
    delegateDevice = [(HMDHAPAccessoryRemoteOperationTask *)self delegateDevice];
    v23 = [v21 numberWithInt:delegateDevice != 0];
    v59[3] = v23;
    v58[4] = @"kRequestIdentifierKey";
    requestIdentifier = [(HMDHAPAccessoryTask *)self requestIdentifier];
    uUIDString2 = [requestIdentifier UUIDString];
    v59[4] = uUIDString2;
    v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v59 forKeys:v58 count:5];
    v27 = [v17 dictionaryWithDictionary:v26];

    context4 = [(HMDHAPAccessoryTask *)self context];
    requestMessage3 = [context4 requestMessage];
    v30 = [requestMessage3 numberForKey:@"kMessageOriginalSourceKey"];

    if (v30)
    {
      [v27 setObject:v30 forKeyedSubscript:@"kMessageOriginalSourceKey"];
    }

    context5 = [(HMDHAPAccessoryTask *)self context];
    requestMessage4 = [context5 requestMessage];
    v33 = [requestMessage4 stringForKey:@"kMessageUserOverrideKey"];

    if (v33)
    {
      [v27 setObject:v33 forKeyedSubscript:@"kMessageUserOverrideKey"];
    }

    remoteMessageName = [(HMDHAPAccessoryRemoteOperationTask *)self remoteMessageName];
    context6 = [(HMDHAPAccessoryTask *)self context];
    requestMessage5 = [context6 requestMessage];
    name = [requestMessage5 name];
    v38 = [name isEqualToString:@"kCharacteristicReadRequestKey"];

    if (v38)
    {
      context7 = [(HMDHAPAccessoryTask *)self context];
      requestMessage6 = [context7 requestMessage];
      name2 = [requestMessage6 name];

      context8 = [(HMDHAPAccessoryTask *)self context];
      requestMessage7 = [context8 requestMessage];
      messagePayload = [requestMessage7 messagePayload];
      [v27 addEntriesFromDictionary:messagePayload];

      remoteMessageName = name2;
    }

    if ([(HMDHAPAccessoryTask *)self supportsMultiPartResponse])
    {
      v45 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDHAPAccessoryTask supportsMultiPartResponse](self, "supportsMultiPartResponse")}];
      [v27 setObject:v45 forKeyedSubscript:@"kMultiPartResponseKey"];
    }

    context9 = [(HMDHAPAccessoryTask *)self context];
    qualityOfService = [context9 qualityOfService];

    if (qualityOfService <= 17)
    {
      v48 = 17;
    }

    else
    {
      v48 = qualityOfService;
    }

    v49 = MEMORY[0x277D0F848];
    context10 = [(HMDHAPAccessoryTask *)self context];
    homeMessageDestination = [context10 homeMessageDestination];
    v52 = [v27 copy];
    v10 = [v49 messageWithName:remoteMessageName qualityOfService:v48 destination:homeMessageDestination payload:v52];

    dictionary = v57;
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
  operationName = [(HMDHAPAccessoryTask *)self operationName];
  capitalizedString = [operationName capitalizedString];
  v5 = [v2 stringWithFormat:@"HMDHAPAccessoryRemoteOperationTask.Forward%@sToResident", capitalizedString];

  return v5;
}

- (void)_receivedRemotelyChangedCharacteristicResponses:(id)responses message:(id)message
{
  responsesCopy = responses;
  messageCopy = message;
  workQueue = [(HMDHAPAccessoryTask *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  if ([responsesCopy count] && -[HMDHAPAccessoryTask supportsMultiPartResponse](self, "supportsMultiPartResponse") && !-[HMDHAPAccessoryRemoteOperationTask isFinished](self, "isFinished"))
  {
    completion = [(HMDHAPAccessoryTask *)self completion];
    (completion)[2](completion, responsesCopy);

    if ([(HMDHAPAccessoryTask *)self allResponsesReceived])
    {
      [(HMDHAPAccessoryRemoteOperationTask *)self setFinished:1];
    }

    v9 = objc_opt_class();
    logEvents = [(HMDHAPAccessoryRemoteOperationTask *)self logEvents];
    userInfo = [messageCopy userInfo];
    requestIdentifier = [(HMDHAPAccessoryTask *)self requestIdentifier];
    uUIDString = [requestIdentifier UUIDString];
    [v9 updateLogEvents:logEvents withResponses:responsesCopy remoteMessageResponse:userInfo forTaskID:uUIDString shouldSubmit:1];
  }
}

- (void)_updateLastKnownStateForAccessoriesWithPayload:(id)payload
{
  payloadCopy = payload;
  context = [(HMDHAPAccessoryTask *)self context];
  home = [context home];

  v7 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v8 = [payloadCopy objectForKeyedSubscript:*MEMORY[0x277CD1FB0]];
  if (v8)
  {
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __85__HMDHAPAccessoryRemoteOperationTask__updateLastKnownStateForAccessoriesWithPayload___block_invoke;
    v16[3] = &unk_278689488;
    v17 = home;
    v18 = v7;
    [v8 enumerateKeysAndObjectsUsingBlock:v16];
  }

  v9 = [payloadCopy objectForKeyedSubscript:@"kModifiedCharacteristicsForAccessoryKey"];
  if (v9)
  {
    v10 = MEMORY[0x277D85DD0];
    v11 = 3221225472;
    v12 = __85__HMDHAPAccessoryRemoteOperationTask__updateLastKnownStateForAccessoriesWithPayload___block_invoke_2;
    v13 = &unk_278689488;
    v14 = v7;
    v15 = home;
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
  date = [MEMORY[0x277CBEAA8] date];
  [(HMDHAPAccessoryTask *)self setExecutionTime:date];

  array = [MEMORY[0x277CBEB18] array];
  requests = [(HMDHAPAccessoryTask *)self requests];
  context = [(HMDHAPAccessoryTask *)self context];
  user = [context user];
  v7 = accessoryRequestMapFromRequests(requests, array, user);

  [(HMDHAPAccessoryTask *)self addCharacteristicResponses:array isRemote:0];
  v8 = [(HMDHAPAccessoryRemoteOperationTask *)self _remoteMessageFromAccessoryRequestMap:v7];
  [(HMDHAPAccessoryRemoteOperationTask *)self remoteMessageTimeout];
  [v8 setTimeout:?];
  messagePayload = [v8 messagePayload];
  v10 = [messagePayload objectForKeyedSubscript:*MEMORY[0x277CCE7A8]];
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
        activity = [(HMDHAPAccessoryTask *)self activity];
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
  selfCopy = self;
  v22 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v23 = HMFGetLogIdentifier();
    shortDescription = [v8 shortDescription];
    delegateDevice = [(HMDHAPAccessoryRemoteOperationTask *)selfCopy delegateDevice];
    shortDescription2 = [delegateDevice shortDescription];
    *buf = 138544130;
    v44 = v23;
    v45 = 2114;
    v46 = selfCopy;
    v47 = 2114;
    v48 = shortDescription;
    v49 = 2114;
    v50 = shortDescription2;
    _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_DEFAULT, "%{public}@[%{public}@] Dispatching message: %{public}@ to device: %{public}@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v20);
  context2 = [(HMDHAPAccessoryTask *)selfCopy context];
  delegateDevice2 = [(HMDHAPAccessoryRemoteOperationTask *)selfCopy delegateDevice];
  [context2 dispatchMessage:v8 delegateDevice:delegateDevice2];

  workQueue = [(HMDHAPAccessoryTask *)selfCopy workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__HMDHAPAccessoryRemoteOperationTask_execute__block_invoke_306;
  block[3] = &unk_27868A728;
  block[4] = selfCopy;
  dispatch_group_notify(v19, workQueue, block);

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

- (HMDHAPAccessoryRemoteOperationTask)initWithContext:(id)context remoteMessageName:(id)name requests:(id)requests delegateDevice:(id)device timeout:(double)timeout completion:(id)completion
{
  nameCopy = name;
  deviceCopy = device;
  v20.receiver = self;
  v20.super_class = HMDHAPAccessoryRemoteOperationTask;
  v17 = [(HMDHAPAccessoryTask *)&v20 initWithContext:context requests:requests completion:completion];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_remoteMessageName, name);
    objc_storeStrong(&v18->_delegateDevice, device);
    v18->_remoteMessageTimeout = timeout;
  }

  return v18;
}

@end