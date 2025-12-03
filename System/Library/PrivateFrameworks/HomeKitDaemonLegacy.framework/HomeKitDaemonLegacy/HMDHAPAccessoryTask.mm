@interface HMDHAPAccessoryTask
- (BOOL)allResponsesReceived;
- (BOOL)supportsMultiPartResponse;
- (HMDHAPAccessoryTask)initWithContext:(id)context requests:(id)requests completion:(id)completion;
- (NSArray)characteristicResponses;
- (NSNumber)identifier;
- (NSString)debugDescription;
- (NSString)description;
- (double)executionTimeInterval;
- (id)_updatedCompletion:(id)completion;
- (id)activity;
- (id)logEventsFromAccessoryRequestMap:(id)map accessoryList:(id)list;
- (id)operationName;
- (id)requestIdentifier;
- (id)workQueue;
- (unint64_t)completedRequestsCount;
- (unint64_t)sourceType;
- (void)_sendCharacteristicNotificationsForTaskInProgress:(id)progress completion:(id)completion;
- (void)_updateCharacteristicsWithResponses:(id)responses accessoryRequests:(id)requests completedGroup:(id)group;
- (void)execute;
- (void)finishTaskWithCharacteristicResponses:(id)responses completion:(id)completion;
- (void)sendCharacteristicNotificationsForCompletedTask:(id)task completion:(id)completion;
- (void)sendCharacteristicNotificationsForTaskInProgress:(id)progress completion:(id)completion;
@end

@implementation HMDHAPAccessoryTask

- (void)execute
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"%@ is unavailable", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

- (id)_updatedCompletion:(id)completion
{
  completionCopy = completion;
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __42__HMDHAPAccessoryTask__updatedCompletion___block_invoke;
  aBlock[3] = &unk_2797351F8;
  objc_copyWeak(&v10, &location);
  v9 = completionCopy;
  v5 = completionCopy;
  v6 = _Block_copy(aBlock);

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);

  return v6;
}

void __42__HMDHAPAccessoryTask__updatedCompletion___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained addCharacteristicResponses:v3 isRemote:0];
    v6 = [v5 supportsMultiPartResponse];
    v7 = *(a1 + 32);
    if (v6)
    {
      (*(v7 + 16))(v7, v3);
    }

    else
    {
      v11 = [v5 characteristicResponses];
      (*(v7 + 16))(v7, v11);
    }
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = HMFGetLogIdentifier();
      v13 = 138543362;
      v14 = v10;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@Lost self reference for fallback task completion handler", &v13, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
    (*(*(a1 + 32) + 16))();
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __59__HMDHAPAccessoryTask_addCharacteristicResponses_isRemote___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v5 = [v2 requestToResponseMap];
  v4 = [v3 request];
  [v5 setObject:v3 forKey:v4];
}

- (BOOL)supportsMultiPartResponse
{
  context = [(HMDHAPAccessoryTask *)self context];
  supportsMultiPartResponse = [context supportsMultiPartResponse];

  return supportsMultiPartResponse;
}

- (void)finishTaskWithCharacteristicResponses:(id)responses completion:(id)completion
{
  v24 = *MEMORY[0x277D85DE8];
  responsesCopy = responses;
  completionCopy = completion;
  context = [(HMDHAPAccessoryTask *)self context];
  isComplete = [context isComplete];

  if (isComplete)
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = HMFGetLogIdentifier();
      context2 = [(HMDHAPAccessoryTask *)selfCopy context];
      requestMessage = [context2 requestMessage];
      v18 = 138543874;
      v19 = v13;
      v20 = 2112;
      v21 = selfCopy;
      v22 = 2112;
      v23 = requestMessage;
      _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@[%@] associated context is already completed: %@", &v18, 0x20u);
    }

    objc_autoreleasePoolPop(v10);
    (*(completionCopy + 2))(completionCopy, 1, 0, 0);
  }

  else
  {
    [(HMDHAPAccessoryTask *)self addCharacteristicResponses:responsesCopy isRemote:0];
    if ([(HMDHAPAccessoryTask *)self supportsMultiPartResponse]&& ![(HMDHAPAccessoryTask *)self allResponsesReceived])
    {
      [(HMDHAPAccessoryTask *)self sendCharacteristicNotificationsForTaskInProgress:responsesCopy completion:completionCopy];
    }

    else
    {
      characteristicResponses = [(HMDHAPAccessoryTask *)self characteristicResponses];
      [(HMDHAPAccessoryTask *)self sendCharacteristicNotificationsForCompletedTask:characteristicResponses completion:completionCopy];
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)sendCharacteristicNotificationsForCompletedTask:(id)task completion:(id)completion
{
  v40 = *MEMORY[0x277D85DE8];
  taskCopy = task;
  completionCopy = completion;
  [taskCopy na_each:&__block_literal_global_155_189567];
  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    *buf = 138543618;
    v37 = v10;
    v38 = 2112;
    v39 = selfCopy;
    _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@[%@] Sending characteristic notifications for completed task", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  context = [(HMDHAPAccessoryTask *)selfCopy context];
  requestMessage = [context requestMessage];

  context2 = [(HMDHAPAccessoryTask *)selfCopy context];
  workQueue = [context2 workQueue];

  context3 = [(HMDHAPAccessoryTask *)selfCopy context];
  home = [context3 home];

  requests = [(HMDHAPAccessoryTask *)selfCopy requests];
  v18 = [requests na_map:&__block_literal_global_159_189569];

  objc_initWeak(buf, home);
  context4 = [(HMDHAPAccessoryTask *)selfCopy context];
  requestMessageIdentifier = [context4 requestMessageIdentifier];
  supportsMultiPartResponse = [(HMDHAPAccessoryTask *)selfCopy supportsMultiPartResponse];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __82__HMDHAPAccessoryTask_sendCharacteristicNotificationsForCompletedTask_completion___block_invoke_2;
  v29[3] = &unk_2797351D0;
  objc_copyWeak(&v35, buf);
  v22 = requestMessage;
  v30 = v22;
  v23 = v18;
  v31 = v23;
  v24 = workQueue;
  v32 = v24;
  v25 = completionCopy;
  v34 = v25;
  v26 = taskCopy;
  v33 = v26;
  [home _notifyChangedCharacteristics:v26 identifier:requestMessageIdentifier multiPartResponse:supportsMultiPartResponse moreMessagesInMultipart:0 requestMessage:v22 withCompletionHandler:v29];

  objc_destroyWeak(&v35);
  objc_destroyWeak(buf);

  v27 = *MEMORY[0x277D85DE8];
}

void __82__HMDHAPAccessoryTask_sendCharacteristicNotificationsForCompletedTask_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  if ([*(a1 + 32) isRemote])
  {
    [WeakRetained _sendCoalescedRemoteNotificationsForRequestMessage:*(a1 + 32) accessories:*(a1 + 40)];
  }

  if ([*(a1 + 32) respondWithPayload:v6 error:v5])
  {
    v8 = 0;
  }

  else
  {
    v8 = [MEMORY[0x277CCA9B8] hmErrorWithCode:54];
  }

  v9 = *(a1 + 48);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __82__HMDHAPAccessoryTask_sendCharacteristicNotificationsForCompletedTask_completion___block_invoke_3;
  block[3] = &unk_2797355D0;
  v14 = *(a1 + 64);
  v12 = *(a1 + 56);
  v13 = v8;
  v10 = v8;
  dispatch_async(v9, block);
}

void __82__HMDHAPAccessoryTask_sendCharacteristicNotificationsForCompletedTask_completion___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 request];
  [v2 setCompleted:1];
}

- (void)_sendCharacteristicNotificationsForTaskInProgress:(id)progress completion:(id)completion
{
  v79[3] = *MEMORY[0x277D85DE8];
  progressCopy = progress;
  completionCopy = completion;
  v61 = progressCopy;
  v9 = [progressCopy na_filter:&__block_literal_global_141];
  if ([v9 count])
  {
    context = [(HMDHAPAccessoryTask *)self context];
    requestMessage = [context requestMessage];

    context2 = [(HMDHAPAccessoryTask *)self context];
    workQueue = [context2 workQueue];

    context3 = [(HMDHAPAccessoryTask *)self context];
    home = [context3 home];

    if ([requestMessage isRemote])
    {
      v15 = [v9 na_map:&__block_literal_global_152_189580];
      v16 = [requestMessage stringForKey:@"kRequestIdentifierKey"];
      uUIDString = v16;
      if (!v16)
      {
        identifier = [requestMessage identifier];
        uUIDString = [identifier UUIDString];
      }

      supportsMultiPartResponse = [(HMDHAPAccessoryTask *)self supportsMultiPartResponse];
      v62[0] = MEMORY[0x277D85DD0];
      v62[1] = 3221225472;
      v62[2] = __84__HMDHAPAccessoryTask__sendCharacteristicNotificationsForTaskInProgress_completion___block_invoke_5;
      v62[3] = &unk_279735168;
      v63 = workQueue;
      v65 = completionCopy;
      v64 = v9;
      [home _handleSendingNotificationsForRequest:requestMessage requestIdentifier:uUIDString supportsMultiPartResponse:supportsMultiPartResponse characteristicUpdates:v15 completion:v62];
      v19 = v16;
      if (!v16)
      {
      }

      v20 = v63;
    }

    else
    {
      v21 = [HMDCharacteristicResponseNotificationContext alloc];
      identifier2 = [requestMessage identifier];
      v23 = [(HMDCharacteristicResponseNotificationContext *)v21 initWithRequestIdentifier:identifier2 responses:v9 pendingMultiPartResponses:1];

      responseCharacteristics = [(HMDCharacteristicResponseNotificationContext *)v23 responseCharacteristics];
      allObjects = [responseCharacteristics allObjects];
      v59 = v23;
      notificationPayloadByAccessoryUUID = [(HMDCharacteristicResponseNotificationContext *)v23 notificationPayloadByAccessoryUUID];
      v27 = [home _splitCharacteristicChanges:allObjects changedAccessories:notificationPayloadByAccessoryUUID];

      proxyConnection = [requestMessage proxyConnection];
      v58 = v27;
      if ([proxyConnection isEntitledForSPIAccess])
      {
        [v27 characteristicUpdatesForEntitledClients];
      }

      else
      {
        [v27 characteristicUpdatesForAllClients];
      }
      v28 = ;
      v20 = v28;
      v29 = MEMORY[0x277CBEC10];
      if (v28)
      {
        v29 = v28;
      }

      v79[0] = v29;
      v30 = *MEMORY[0x277CD0640];
      v78[0] = @"kModifiedCharacteristicsForAccessoryKey";
      v78[1] = v30;
      uuid = [home uuid];
      uUIDString2 = [uuid UUIDString];
      v78[2] = @"kMultiPartResponseKey";
      v79[1] = uUIDString2;
      v79[2] = MEMORY[0x277CBEC38];
      v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v79 forKeys:v78 count:3];

      v34 = objc_alloc(MEMORY[0x277D0F820]);
      uuid2 = [home uuid];
      v36 = [v34 initWithTarget:uuid2];

      v37 = objc_alloc(MEMORY[0x277D0F848]);
      qualityOfService = [requestMessage qualityOfService];
      if (qualityOfService)
      {
        v39 = qualityOfService;
      }

      else
      {
        v39 = 17;
      }

      v55 = v36;
      v56 = v33;
      v40 = [v37 initWithName:@"kMultipleCharacteristicValuesUpdatedNotificationKey" qualityOfService:v39 destination:v36 payload:v33];
      identifier3 = [requestMessage identifier];
      [v40 setIdentifier:identifier3];

      [v40 setRequiresSPIEntitlement:{objc_msgSend(requestMessage, "requiresSPIEntitlement")}];
      v42 = objc_autoreleasePoolPush();
      selfCopy = self;
      v44 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
      {
        HMFGetLogIdentifier();
        v45 = v53 = v42;
        v46 = completionCopy;
        v47 = v20;
        v48 = [v9 count];
        [requestMessage shortDescription];
        v49 = v54 = home;
        *buf = 138544130;
        v71 = v45;
        v72 = 2112;
        v73 = selfCopy;
        v74 = 2048;
        v75 = v48;
        v20 = v47;
        completionCopy = v46;
        v76 = 2112;
        v77 = v49;
        _os_log_impl(&dword_2531F8000, v44, OS_LOG_TYPE_DEFAULT, "%{public}@[%@] Sending the multi-part responses[%ld] to local client: %@", buf, 0x2Au);

        home = v54;
        v42 = v53;
      }

      objc_autoreleasePoolPop(v42);
      [v9 na_each:&__block_literal_global_147_189579];
      if ([proxyConnection canSendMessage:v40])
      {
        [home handleReportingSessionResponseMessage:v40];
        v50 = [v40 copy];
        v66[0] = MEMORY[0x277D85DD0];
        v66[1] = 3221225472;
        v66[2] = __84__HMDHAPAccessoryTask__sendCharacteristicNotificationsForTaskInProgress_completion___block_invoke_2;
        v66[3] = &unk_279735168;
        v67 = workQueue;
        v69 = completionCopy;
        v68 = v9;
        [proxyConnection sendMessage:v50 completionHandler:v66];

        v51 = v67;
      }

      else
      {
        v51 = [MEMORY[0x277CCA9B8] hmErrorWithCode:54];
        (*(completionCopy + 2))(completionCopy, 0, v9, v51);
      }

      v19 = v58;

      v15 = v59;
    }
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 0, v9, 0);
  }

  v52 = *MEMORY[0x277D85DE8];
}

void __84__HMDHAPAccessoryTask__sendCharacteristicNotificationsForTaskInProgress_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __84__HMDHAPAccessoryTask__sendCharacteristicNotificationsForTaskInProgress_completion___block_invoke_3;
  block[3] = &unk_2797355D0;
  v9 = *(a1 + 48);
  v7 = *(a1 + 40);
  v8 = v3;
  v5 = v3;
  dispatch_async(v4, block);
}

void __84__HMDHAPAccessoryTask__sendCharacteristicNotificationsForTaskInProgress_completion___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if ([v3 isHMError])
  {
    v4 = v3;
    if ([v3 code] == 48)
    {

      v4 = 0;
    }
  }

  v5 = *(a1 + 32);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __84__HMDHAPAccessoryTask__sendCharacteristicNotificationsForTaskInProgress_completion___block_invoke_6;
  block[3] = &unk_2797355D0;
  v10 = *(a1 + 48);
  v8 = *(a1 + 40);
  v9 = v4;
  v6 = v4;
  dispatch_async(v5, block);
}

HMDCharacteristicUpdateTuple *__84__HMDHAPAccessoryTask__sendCharacteristicNotificationsForTaskInProgress_completion___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [HMDCharacteristicUpdateTuple alloc];
  v4 = [v2 request];
  v5 = [v4 characteristic];
  v6 = [v2 value];
  v7 = [(HMDCharacteristicUpdateTuple *)v3 initWithCharacteristic:v5 updatedValue:v6 isBroadcast:0];

  [(HMDCharacteristicUpdateTuple *)v7 setCharacteristicResponse:v2];

  return v7;
}

void __84__HMDHAPAccessoryTask__sendCharacteristicNotificationsForTaskInProgress_completion___block_invoke_145(uint64_t a1, void *a2)
{
  v2 = [a2 request];
  [v2 setCompleted:1];
}

BOOL __84__HMDHAPAccessoryTask__sendCharacteristicNotificationsForTaskInProgress_completion___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 request];
  if ([v3 isCompleted])
  {
    v4 = 0;
  }

  else
  {
    v5 = [v2 error];
    v4 = v5 == 0;
  }

  return v4;
}

- (void)sendCharacteristicNotificationsForTaskInProgress:(id)progress completion:(id)completion
{
  v26 = *MEMORY[0x277D85DE8];
  progressCopy = progress;
  completionCopy = completion;
  v8 = [progressCopy na_filter:&__block_literal_global_137_189584];
  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    *buf = 138543874;
    v21 = v12;
    v22 = 2112;
    v23 = selfCopy;
    v24 = 2048;
    v25 = [v8 count];
    _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@[%@] Sending characteristic notifications (%ld) for task in progress.", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v9);
  if ([v8 count])
  {
    v13 = dispatch_group_create();
    dispatch_group_enter(v13);
    [(HMDHAPAccessoryTask *)selfCopy addCharacteristicResponses:v8 isRemote:0];
    [(HMDHAPAccessoryTask *)selfCopy _updateCharacteristicsWithResponses:v8 accessoryRequests:0 completedGroup:v13];
    context = [(HMDHAPAccessoryTask *)selfCopy context];
    workQueue = [context workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __83__HMDHAPAccessoryTask_sendCharacteristicNotificationsForTaskInProgress_completion___block_invoke_138;
    block[3] = &unk_2797355D0;
    block[4] = selfCopy;
    v18 = v8;
    v19 = completionCopy;
    dispatch_group_notify(v13, workQueue, block);
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 0, v8, 0);
  }

  v16 = *MEMORY[0x277D85DE8];
}

BOOL __83__HMDHAPAccessoryTask_sendCharacteristicNotificationsForTaskInProgress_completion___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 request];
  if ([v3 isCompleted])
  {
    v4 = 0;
  }

  else
  {
    v5 = [v2 error];
    v4 = v5 == 0;
  }

  return v4;
}

- (void)_updateCharacteristicsWithResponses:(id)responses accessoryRequests:(id)requests completedGroup:(id)group
{
  v25[1] = *MEMORY[0x277D85DE8];
  responsesCopy = responses;
  requestsCopy = requests;
  groupCopy = group;
  if ([responsesCopy count])
  {
    v11 = objc_autoreleasePoolPush();
    v12 = requestsCopy;
    if (!v12)
    {
      strongToStrongObjectsMapTable = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
      v19 = MEMORY[0x277D85DD0];
      v20 = 3221225472;
      v21 = __92__HMDHAPAccessoryTask__updateCharacteristicsWithResponses_accessoryRequests_completedGroup___block_invoke;
      v22 = &unk_279735100;
      v12 = strongToStrongObjectsMapTable;
      v23 = v12;
      [responsesCopy na_each:&v19];
    }

    v14 = [HMDCharacteristicResponse characteristicsUpdateDictionaryFromResponses:responsesCopy, v19, v20, v21, v22];
    context = [(HMDHAPAccessoryTask *)self context];
    home = [context home];

    v24 = @"kModifiedCharacteristicsForAccessoryKey";
    v25[0] = v14;
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:&v24 count:1];
    [home _addResponseTuplesFromDictionary:v17 accessoryRequestMapTable:v12 responseTuples:0 completedGroup:groupCopy logEvents:0];

    objc_autoreleasePoolPop(v11);
  }

  else
  {
    dispatch_group_leave(groupCopy);
  }

  v18 = *MEMORY[0x277D85DE8];
}

void __92__HMDHAPAccessoryTask__updateCharacteristicsWithResponses_accessoryRequests_completedGroup___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 request];
  v4 = *(a1 + 32);
  v12 = v3;
  v5 = [v3 accessory];
  v6 = [v4 objectForKey:v5];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = [MEMORY[0x277CBEB18] array];
  }

  v9 = v8;

  [v9 addObject:v12];
  v10 = *(a1 + 32);
  v11 = [v12 accessory];
  [v10 setObject:v9 forKey:v11];
}

- (id)logEventsFromAccessoryRequestMap:(id)map accessoryList:(id)list
{
  listCopy = list;
  mapCopy = map;
  context = [(HMDHAPAccessoryTask *)self context];
  home = [context home];

  context2 = [(HMDHAPAccessoryTask *)self context];
  v21 = [context2 operationType] == 1;
  [MEMORY[0x277D17DC0] currentTime];
  v9 = v8;
  context3 = [(HMDHAPAccessoryTask *)self context];
  requestMessageIdentifier = [context3 requestMessageIdentifier];
  context4 = [(HMDHAPAccessoryTask *)self context];
  requestMessage = [context4 requestMessage];
  v11 = [requestMessage userForHome:home];
  uuid = [v11 uuid];
  context5 = [(HMDHAPAccessoryTask *)self context];
  sourceType = [context5 sourceType];
  context6 = [(HMDHAPAccessoryTask *)self context];
  biomeSource = [context6 biomeSource];
  context7 = [(HMDHAPAccessoryTask *)self context];
  clientIdentifier = [context7 clientIdentifier];
  v19 = [home _getLogEventsForOperation:v21 startTime:listCopy accessories:mapCopy requestMap:requestMessageIdentifier identifier:uuid userUUID:sourceType source:v9 biomeSource:biomeSource bundleID:clientIdentifier];

  return v19;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  requestIdentifier = [(HMDHAPAccessoryTask *)self requestIdentifier];
  uUIDString = [requestIdentifier UUIDString];
  identifier = [(HMDHAPAccessoryTask *)self identifier];
  completedRequestsCount = [(HMDHAPAccessoryTask *)self completedRequestsCount];
  requests = [(HMDHAPAccessoryTask *)self requests];
  v11 = [v3 stringWithFormat:@"%@(%@/%@)[%ld/%ld]", v5, uUIDString, identifier, completedRequestsCount, objc_msgSend(requests, "count")];

  return v11;
}

- (NSString)debugDescription
{
  string = [MEMORY[0x277CCAB68] string];
  string2 = [MEMORY[0x277CCAB68] string];
  requests = [(HMDHAPAccessoryTask *)self requests];
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __39__HMDHAPAccessoryTask_debugDescription__block_invoke;
  v17 = &unk_2797350D8;
  selfCopy = self;
  v19 = string;
  v20 = string2;
  v6 = string2;
  v7 = string;
  [requests na_each:&v14];

  v8 = MEMORY[0x277CCACA8];
  v9 = MEMORY[0x277CCABB0];
  requests2 = [(HMDHAPAccessoryTask *)self requests];
  v11 = [v9 numberWithUnsignedInteger:{objc_msgSend(requests2, "count")}];
  selfCopy = [v8 stringWithFormat:@"Requests[%@]: (\n%@%@)", v11, v6, v7, v14, v15, v16, v17, selfCopy];

  return selfCopy;
}

void __39__HMDHAPAccessoryTask_debugDescription__block_invoke(uint64_t a1, void *a2)
{
  v26 = a2;
  v5 = [*(a1 + 32) requestToResponseMap];
  v6 = [v5 objectForKey:v26];

  v7 = [v26 isCompleted];
  v8 = 48;
  if (v7)
  {
    v8 = 40;
  }

  v9 = *(a1 + v8);
  v10 = [v26 isCompleted];
  v11 = @"-";
  if (v10)
  {
    v11 = @"*";
  }

  v25 = v11;
  v12 = [v6 value];
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = &stru_286509E58;
  }

  v15 = [v6 error];
  if (v15)
  {
    v16 = MEMORY[0x277CCACA8];
    v24 = [v6 error];
    v17 = [v24 domain];
    v18 = MEMORY[0x277CCABB0];
    v2 = [v6 error];
    v3 = [v18 numberWithInteger:{objc_msgSend(v2, "code")}];
    v23 = v17;
    v19 = [v16 stringWithFormat:@"%@/%@", v17, v3];
  }

  else
  {
    v19 = &stru_286509E58;
  }

  v20 = [v6 valueUpdatedTime];
  v21 = v20;
  if (v20)
  {
    v22 = v20;
  }

  else
  {
    v22 = &stru_286509E58;
  }

  [v9 appendFormat:@"\t[%@] %@ --> Response: <%@%@(%@)>\n", v25, v26, v14, v19, v22];

  if (v15)
  {
  }
}

- (double)executionTimeInterval
{
  executionTime = [(HMDHAPAccessoryTask *)self executionTime];
  if (executionTime)
  {
    date = [MEMORY[0x277CBEAA8] date];
    executionTime2 = [(HMDHAPAccessoryTask *)self executionTime];
    [date timeIntervalSinceDate:executionTime2];
    v7 = v6;
  }

  else
  {
    v7 = 0.0;
  }

  return v7;
}

- (unint64_t)completedRequestsCount
{
  requests = [(HMDHAPAccessoryTask *)self requests];
  v3 = [requests na_filter:&__block_literal_global_103_189616];
  v4 = [v3 count];

  return v4;
}

- (BOOL)allResponsesReceived
{
  selfCopy = self;
  requests = [(HMDHAPAccessoryTask *)self requests];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __43__HMDHAPAccessoryTask_allResponsesReceived__block_invoke;
  v5[3] = &unk_279735090;
  v5[4] = selfCopy;
  LOBYTE(selfCopy) = [requests na_allObjectsPassTest:v5];

  return selfCopy;
}

BOOL __43__HMDHAPAccessoryTask_allResponsesReceived__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 requestToResponseMap];
  v5 = [v4 objectForKey:v3];

  return v5 != 0;
}

- (NSArray)characteristicResponses
{
  requestToResponseMap = [(HMDHAPAccessoryTask *)self requestToResponseMap];
  objectEnumerator = [requestToResponseMap objectEnumerator];
  allObjects = [objectEnumerator allObjects];
  v5 = allObjects;
  if (allObjects)
  {
    v6 = allObjects;
  }

  else
  {
    v6 = MEMORY[0x277CBEBF8];
  }

  v7 = v6;

  return v6;
}

- (id)activity
{
  context = [(HMDHAPAccessoryTask *)self context];
  activity = [context activity];

  return activity;
}

- (unint64_t)sourceType
{
  context = [(HMDHAPAccessoryTask *)self context];
  sourceType = [context sourceType];

  return sourceType;
}

- (id)workQueue
{
  context = [(HMDHAPAccessoryTask *)self context];
  workQueue = [context workQueue];

  return workQueue;
}

- (id)requestIdentifier
{
  context = [(HMDHAPAccessoryTask *)self context];
  requestMessageIdentifier = [context requestMessageIdentifier];

  return requestMessageIdentifier;
}

- (id)operationName
{
  context = [(HMDHAPAccessoryTask *)self context];
  operationName = [context operationName];

  return operationName;
}

- (NSNumber)identifier
{
  context = [(HMDHAPAccessoryTask *)self context];
  identifier = [context identifier];

  return identifier;
}

- (HMDHAPAccessoryTask)initWithContext:(id)context requests:(id)requests completion:(id)completion
{
  contextCopy = context;
  requestsCopy = requests;
  completionCopy = completion;
  v19.receiver = self;
  v19.super_class = HMDHAPAccessoryTask;
  v12 = [(HMDHAPAccessoryTask *)&v19 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_context, context);
    objc_storeStrong(&v13->_requests, requests);
    v14 = [(HMDHAPAccessoryTask *)v13 _updatedCompletion:completionCopy];
    completion = v13->_completion;
    v13->_completion = v14;

    strongToStrongObjectsMapTable = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    requestToResponseMap = v13->_requestToResponseMap;
    v13->_requestToResponseMap = strongToStrongObjectsMapTable;
  }

  return v13;
}

@end