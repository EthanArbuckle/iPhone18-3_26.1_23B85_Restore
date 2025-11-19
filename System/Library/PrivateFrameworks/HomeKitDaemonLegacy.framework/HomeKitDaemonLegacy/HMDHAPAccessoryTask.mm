@interface HMDHAPAccessoryTask
- (BOOL)allResponsesReceived;
- (BOOL)supportsMultiPartResponse;
- (HMDHAPAccessoryTask)initWithContext:(id)a3 requests:(id)a4 completion:(id)a5;
- (NSArray)characteristicResponses;
- (NSNumber)identifier;
- (NSString)debugDescription;
- (NSString)description;
- (double)executionTimeInterval;
- (id)_updatedCompletion:(id)a3;
- (id)activity;
- (id)logEventsFromAccessoryRequestMap:(id)a3 accessoryList:(id)a4;
- (id)operationName;
- (id)requestIdentifier;
- (id)workQueue;
- (unint64_t)completedRequestsCount;
- (unint64_t)sourceType;
- (void)_sendCharacteristicNotificationsForTaskInProgress:(id)a3 completion:(id)a4;
- (void)_updateCharacteristicsWithResponses:(id)a3 accessoryRequests:(id)a4 completedGroup:(id)a5;
- (void)execute;
- (void)finishTaskWithCharacteristicResponses:(id)a3 completion:(id)a4;
- (void)sendCharacteristicNotificationsForCompletedTask:(id)a3 completion:(id)a4;
- (void)sendCharacteristicNotificationsForTaskInProgress:(id)a3 completion:(id)a4;
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

- (id)_updatedCompletion:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __42__HMDHAPAccessoryTask__updatedCompletion___block_invoke;
  aBlock[3] = &unk_2797351F8;
  objc_copyWeak(&v10, &location);
  v9 = v4;
  v5 = v4;
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
  v2 = [(HMDHAPAccessoryTask *)self context];
  v3 = [v2 supportsMultiPartResponse];

  return v3;
}

- (void)finishTaskWithCharacteristicResponses:(id)a3 completion:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDHAPAccessoryTask *)self context];
  v9 = [v8 isComplete];

  if (v9)
  {
    v10 = objc_autoreleasePoolPush();
    v11 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = HMFGetLogIdentifier();
      v14 = [(HMDHAPAccessoryTask *)v11 context];
      v15 = [v14 requestMessage];
      v18 = 138543874;
      v19 = v13;
      v20 = 2112;
      v21 = v11;
      v22 = 2112;
      v23 = v15;
      _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@[%@] associated context is already completed: %@", &v18, 0x20u);
    }

    objc_autoreleasePoolPop(v10);
    (*(v7 + 2))(v7, 1, 0, 0);
  }

  else
  {
    [(HMDHAPAccessoryTask *)self addCharacteristicResponses:v6 isRemote:0];
    if ([(HMDHAPAccessoryTask *)self supportsMultiPartResponse]&& ![(HMDHAPAccessoryTask *)self allResponsesReceived])
    {
      [(HMDHAPAccessoryTask *)self sendCharacteristicNotificationsForTaskInProgress:v6 completion:v7];
    }

    else
    {
      v16 = [(HMDHAPAccessoryTask *)self characteristicResponses];
      [(HMDHAPAccessoryTask *)self sendCharacteristicNotificationsForCompletedTask:v16 completion:v7];
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)sendCharacteristicNotificationsForCompletedTask:(id)a3 completion:(id)a4
{
  v40 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v28 = a4;
  [v6 na_each:&__block_literal_global_155_189567];
  v7 = objc_autoreleasePoolPush();
  v8 = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    *buf = 138543618;
    v37 = v10;
    v38 = 2112;
    v39 = v8;
    _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@[%@] Sending characteristic notifications for completed task", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  v11 = [(HMDHAPAccessoryTask *)v8 context];
  v12 = [v11 requestMessage];

  v13 = [(HMDHAPAccessoryTask *)v8 context];
  v14 = [v13 workQueue];

  v15 = [(HMDHAPAccessoryTask *)v8 context];
  v16 = [v15 home];

  v17 = [(HMDHAPAccessoryTask *)v8 requests];
  v18 = [v17 na_map:&__block_literal_global_159_189569];

  objc_initWeak(buf, v16);
  v19 = [(HMDHAPAccessoryTask *)v8 context];
  v20 = [v19 requestMessageIdentifier];
  v21 = [(HMDHAPAccessoryTask *)v8 supportsMultiPartResponse];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __82__HMDHAPAccessoryTask_sendCharacteristicNotificationsForCompletedTask_completion___block_invoke_2;
  v29[3] = &unk_2797351D0;
  objc_copyWeak(&v35, buf);
  v22 = v12;
  v30 = v22;
  v23 = v18;
  v31 = v23;
  v24 = v14;
  v32 = v24;
  v25 = v28;
  v34 = v25;
  v26 = v6;
  v33 = v26;
  [v16 _notifyChangedCharacteristics:v26 identifier:v20 multiPartResponse:v21 moreMessagesInMultipart:0 requestMessage:v22 withCompletionHandler:v29];

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

- (void)_sendCharacteristicNotificationsForTaskInProgress:(id)a3 completion:(id)a4
{
  v79[3] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v61 = v7;
  v9 = [v7 na_filter:&__block_literal_global_141];
  if ([v9 count])
  {
    v10 = [(HMDHAPAccessoryTask *)self context];
    v11 = [v10 requestMessage];

    v12 = [(HMDHAPAccessoryTask *)self context];
    v60 = [v12 workQueue];

    v13 = [(HMDHAPAccessoryTask *)self context];
    v14 = [v13 home];

    if ([v11 isRemote])
    {
      v15 = [v9 na_map:&__block_literal_global_152_189580];
      v16 = [v11 stringForKey:@"kRequestIdentifierKey"];
      v17 = v16;
      if (!v16)
      {
        v4 = [v11 identifier];
        v17 = [v4 UUIDString];
      }

      v18 = [(HMDHAPAccessoryTask *)self supportsMultiPartResponse];
      v62[0] = MEMORY[0x277D85DD0];
      v62[1] = 3221225472;
      v62[2] = __84__HMDHAPAccessoryTask__sendCharacteristicNotificationsForTaskInProgress_completion___block_invoke_5;
      v62[3] = &unk_279735168;
      v63 = v60;
      v65 = v8;
      v64 = v9;
      [v14 _handleSendingNotificationsForRequest:v11 requestIdentifier:v17 supportsMultiPartResponse:v18 characteristicUpdates:v15 completion:v62];
      v19 = v16;
      if (!v16)
      {
      }

      v20 = v63;
    }

    else
    {
      v21 = [HMDCharacteristicResponseNotificationContext alloc];
      v22 = [v11 identifier];
      v23 = [(HMDCharacteristicResponseNotificationContext *)v21 initWithRequestIdentifier:v22 responses:v9 pendingMultiPartResponses:1];

      v24 = [(HMDCharacteristicResponseNotificationContext *)v23 responseCharacteristics];
      v25 = [v24 allObjects];
      v59 = v23;
      v26 = [(HMDCharacteristicResponseNotificationContext *)v23 notificationPayloadByAccessoryUUID];
      v27 = [v14 _splitCharacteristicChanges:v25 changedAccessories:v26];

      v57 = [v11 proxyConnection];
      v58 = v27;
      if ([v57 isEntitledForSPIAccess])
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
      v31 = [v14 uuid];
      v32 = [v31 UUIDString];
      v78[2] = @"kMultiPartResponseKey";
      v79[1] = v32;
      v79[2] = MEMORY[0x277CBEC38];
      v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v79 forKeys:v78 count:3];

      v34 = objc_alloc(MEMORY[0x277D0F820]);
      v35 = [v14 uuid];
      v36 = [v34 initWithTarget:v35];

      v37 = objc_alloc(MEMORY[0x277D0F848]);
      v38 = [v11 qualityOfService];
      if (v38)
      {
        v39 = v38;
      }

      else
      {
        v39 = 17;
      }

      v55 = v36;
      v56 = v33;
      v40 = [v37 initWithName:@"kMultipleCharacteristicValuesUpdatedNotificationKey" qualityOfService:v39 destination:v36 payload:v33];
      v41 = [v11 identifier];
      [v40 setIdentifier:v41];

      [v40 setRequiresSPIEntitlement:{objc_msgSend(v11, "requiresSPIEntitlement")}];
      v42 = objc_autoreleasePoolPush();
      v43 = self;
      v44 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
      {
        HMFGetLogIdentifier();
        v45 = v53 = v42;
        v46 = v8;
        v47 = v20;
        v48 = [v9 count];
        [v11 shortDescription];
        v49 = v54 = v14;
        *buf = 138544130;
        v71 = v45;
        v72 = 2112;
        v73 = v43;
        v74 = 2048;
        v75 = v48;
        v20 = v47;
        v8 = v46;
        v76 = 2112;
        v77 = v49;
        _os_log_impl(&dword_2531F8000, v44, OS_LOG_TYPE_DEFAULT, "%{public}@[%@] Sending the multi-part responses[%ld] to local client: %@", buf, 0x2Au);

        v14 = v54;
        v42 = v53;
      }

      objc_autoreleasePoolPop(v42);
      [v9 na_each:&__block_literal_global_147_189579];
      if ([v57 canSendMessage:v40])
      {
        [v14 handleReportingSessionResponseMessage:v40];
        v50 = [v40 copy];
        v66[0] = MEMORY[0x277D85DD0];
        v66[1] = 3221225472;
        v66[2] = __84__HMDHAPAccessoryTask__sendCharacteristicNotificationsForTaskInProgress_completion___block_invoke_2;
        v66[3] = &unk_279735168;
        v67 = v60;
        v69 = v8;
        v68 = v9;
        [v57 sendMessage:v50 completionHandler:v66];

        v51 = v67;
      }

      else
      {
        v51 = [MEMORY[0x277CCA9B8] hmErrorWithCode:54];
        (*(v8 + 2))(v8, 0, v9, v51);
      }

      v19 = v58;

      v15 = v59;
    }
  }

  else
  {
    (*(v8 + 2))(v8, 0, v9, 0);
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

- (void)sendCharacteristicNotificationsForTaskInProgress:(id)a3 completion:(id)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 na_filter:&__block_literal_global_137_189584];
  v9 = objc_autoreleasePoolPush();
  v10 = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    *buf = 138543874;
    v21 = v12;
    v22 = 2112;
    v23 = v10;
    v24 = 2048;
    v25 = [v8 count];
    _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@[%@] Sending characteristic notifications (%ld) for task in progress.", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v9);
  if ([v8 count])
  {
    v13 = dispatch_group_create();
    dispatch_group_enter(v13);
    [(HMDHAPAccessoryTask *)v10 addCharacteristicResponses:v8 isRemote:0];
    [(HMDHAPAccessoryTask *)v10 _updateCharacteristicsWithResponses:v8 accessoryRequests:0 completedGroup:v13];
    v14 = [(HMDHAPAccessoryTask *)v10 context];
    v15 = [v14 workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __83__HMDHAPAccessoryTask_sendCharacteristicNotificationsForTaskInProgress_completion___block_invoke_138;
    block[3] = &unk_2797355D0;
    block[4] = v10;
    v18 = v8;
    v19 = v7;
    dispatch_group_notify(v13, v15, block);
  }

  else
  {
    (*(v7 + 2))(v7, 0, v8, 0);
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

- (void)_updateCharacteristicsWithResponses:(id)a3 accessoryRequests:(id)a4 completedGroup:(id)a5
{
  v25[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v8 count])
  {
    v11 = objc_autoreleasePoolPush();
    v12 = v9;
    if (!v12)
    {
      v13 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
      v19 = MEMORY[0x277D85DD0];
      v20 = 3221225472;
      v21 = __92__HMDHAPAccessoryTask__updateCharacteristicsWithResponses_accessoryRequests_completedGroup___block_invoke;
      v22 = &unk_279735100;
      v12 = v13;
      v23 = v12;
      [v8 na_each:&v19];
    }

    v14 = [HMDCharacteristicResponse characteristicsUpdateDictionaryFromResponses:v8, v19, v20, v21, v22];
    v15 = [(HMDHAPAccessoryTask *)self context];
    v16 = [v15 home];

    v24 = @"kModifiedCharacteristicsForAccessoryKey";
    v25[0] = v14;
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:&v24 count:1];
    [v16 _addResponseTuplesFromDictionary:v17 accessoryRequestMapTable:v12 responseTuples:0 completedGroup:v10 logEvents:0];

    objc_autoreleasePoolPop(v11);
  }

  else
  {
    dispatch_group_leave(v10);
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

- (id)logEventsFromAccessoryRequestMap:(id)a3 accessoryList:(id)a4
{
  v25 = a4;
  v24 = a3;
  v6 = [(HMDHAPAccessoryTask *)self context];
  v7 = [v6 home];

  v27 = [(HMDHAPAccessoryTask *)self context];
  v21 = [v27 operationType] == 1;
  [MEMORY[0x277D17DC0] currentTime];
  v9 = v8;
  v26 = [(HMDHAPAccessoryTask *)self context];
  v10 = [v26 requestMessageIdentifier];
  v23 = [(HMDHAPAccessoryTask *)self context];
  v22 = [v23 requestMessage];
  v11 = [v22 userForHome:v7];
  v12 = [v11 uuid];
  v13 = [(HMDHAPAccessoryTask *)self context];
  v14 = [v13 sourceType];
  v15 = [(HMDHAPAccessoryTask *)self context];
  v16 = [v15 biomeSource];
  v17 = [(HMDHAPAccessoryTask *)self context];
  v18 = [v17 clientIdentifier];
  v19 = [v7 _getLogEventsForOperation:v21 startTime:v25 accessories:v24 requestMap:v10 identifier:v12 userUUID:v14 source:v9 biomeSource:v16 bundleID:v18];

  return v19;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(HMDHAPAccessoryTask *)self requestIdentifier];
  v7 = [v6 UUIDString];
  v8 = [(HMDHAPAccessoryTask *)self identifier];
  v9 = [(HMDHAPAccessoryTask *)self completedRequestsCount];
  v10 = [(HMDHAPAccessoryTask *)self requests];
  v11 = [v3 stringWithFormat:@"%@(%@/%@)[%ld/%ld]", v5, v7, v8, v9, objc_msgSend(v10, "count")];

  return v11;
}

- (NSString)debugDescription
{
  v3 = [MEMORY[0x277CCAB68] string];
  v4 = [MEMORY[0x277CCAB68] string];
  v5 = [(HMDHAPAccessoryTask *)self requests];
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __39__HMDHAPAccessoryTask_debugDescription__block_invoke;
  v17 = &unk_2797350D8;
  v18 = self;
  v19 = v3;
  v20 = v4;
  v6 = v4;
  v7 = v3;
  [v5 na_each:&v14];

  v8 = MEMORY[0x277CCACA8];
  v9 = MEMORY[0x277CCABB0];
  v10 = [(HMDHAPAccessoryTask *)self requests];
  v11 = [v9 numberWithUnsignedInteger:{objc_msgSend(v10, "count")}];
  v12 = [v8 stringWithFormat:@"Requests[%@]: (\n%@%@)", v11, v6, v7, v14, v15, v16, v17, v18];

  return v12;
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
  v3 = [(HMDHAPAccessoryTask *)self executionTime];
  if (v3)
  {
    v4 = [MEMORY[0x277CBEAA8] date];
    v5 = [(HMDHAPAccessoryTask *)self executionTime];
    [v4 timeIntervalSinceDate:v5];
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
  v2 = [(HMDHAPAccessoryTask *)self requests];
  v3 = [v2 na_filter:&__block_literal_global_103_189616];
  v4 = [v3 count];

  return v4;
}

- (BOOL)allResponsesReceived
{
  v2 = self;
  v3 = [(HMDHAPAccessoryTask *)self requests];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __43__HMDHAPAccessoryTask_allResponsesReceived__block_invoke;
  v5[3] = &unk_279735090;
  v5[4] = v2;
  LOBYTE(v2) = [v3 na_allObjectsPassTest:v5];

  return v2;
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
  v2 = [(HMDHAPAccessoryTask *)self requestToResponseMap];
  v3 = [v2 objectEnumerator];
  v4 = [v3 allObjects];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
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
  v2 = [(HMDHAPAccessoryTask *)self context];
  v3 = [v2 activity];

  return v3;
}

- (unint64_t)sourceType
{
  v2 = [(HMDHAPAccessoryTask *)self context];
  v3 = [v2 sourceType];

  return v3;
}

- (id)workQueue
{
  v2 = [(HMDHAPAccessoryTask *)self context];
  v3 = [v2 workQueue];

  return v3;
}

- (id)requestIdentifier
{
  v2 = [(HMDHAPAccessoryTask *)self context];
  v3 = [v2 requestMessageIdentifier];

  return v3;
}

- (id)operationName
{
  v2 = [(HMDHAPAccessoryTask *)self context];
  v3 = [v2 operationName];

  return v3;
}

- (NSNumber)identifier
{
  v2 = [(HMDHAPAccessoryTask *)self context];
  v3 = [v2 identifier];

  return v3;
}

- (HMDHAPAccessoryTask)initWithContext:(id)a3 requests:(id)a4 completion:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v19.receiver = self;
  v19.super_class = HMDHAPAccessoryTask;
  v12 = [(HMDHAPAccessoryTask *)&v19 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_context, a3);
    objc_storeStrong(&v13->_requests, a4);
    v14 = [(HMDHAPAccessoryTask *)v13 _updatedCompletion:v11];
    completion = v13->_completion;
    v13->_completion = v14;

    v16 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    requestToResponseMap = v13->_requestToResponseMap;
    v13->_requestToResponseMap = v16;
  }

  return v13;
}

@end