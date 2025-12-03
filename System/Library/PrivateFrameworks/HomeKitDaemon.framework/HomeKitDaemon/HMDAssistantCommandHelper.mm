@interface HMDAssistantCommandHelper
+ (id)logCategory;
- (HMDAssistantCommandHelper)initWithQueue:(id)queue msgDispatcher:(id)dispatcher;
- (HMDHome)home;
- (void)__handleAccessoryCharacteristicsChanged:(id)changed;
- (void)_register;
- (void)_reportOperationStartedForAccessory:(id)accessory;
- (void)_reportResponses;
- (void)_reportResponsesForMediaRequests;
- (void)addActionSetRequest:(id)request actionSet:(id)set completionHandler:(id)handler;
- (void)addMediaWriteRequests:(id)requests withRequestProperty:(id)property completion:(id)completion;
- (void)addReadRequests:(id)requests home:(id)home completion:(id)completion;
- (void)addWriteRequests:(id)requests home:(id)home completion:(id)completion;
- (void)dealloc;
- (void)handleAccessoryCharacteristicsChangedNotification:(id)notification;
- (void)removeResponses:(id)responses;
- (void)reportOperationStartedForAccessory:(id)accessory;
- (void)timeoutAndReportResults;
@end

@implementation HMDAssistantCommandHelper

- (HMDHome)home
{
  WeakRetained = objc_loadWeakRetained(&self->_home);

  return WeakRetained;
}

- (void)removeResponses:(id)responses
{
  responsesCopy = responses;
  responses = [(HMDAssistantCommandHelper *)self responses];
  [responses removeObjectsInArray:responsesCopy];
}

- (void)addActionSetRequest:(id)request actionSet:(id)set completionHandler:(id)handler
{
  v52 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  setCopy = set;
  handlerCopy = handler;
  v12 = objc_alloc(MEMORY[0x277D0F770]);
  v13 = MEMORY[0x277CCACA8];
  v14 = MEMORY[0x22AAD2510](self, a2);
  v15 = [v13 stringWithFormat:@"%@, %s:%ld", v14, "/Library/Caches/com.apple.xbs/Sources/HomeKit_executables/Sources/homed/Assistant/HMDAssistantCommandHelper.m", 518];
  v36 = [v12 initWithName:v15];

  uUID = [MEMORY[0x277CCAD78] UUID];
  [(HMDAssistantCommandHelper *)self setMessageId:uUID];

  v17 = objc_autoreleasePoolPush();
  selfCopy = self;
  v19 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    v20 = HMFGetLogIdentifier();
    messageId = [(HMDAssistantCommandHelper *)selfCopy messageId];
    uUIDString = [messageId UUIDString];
    name = [setCopy name];
    *buf = 138544130;
    v45 = v20;
    v46 = 2112;
    v47 = uUIDString;
    v48 = 2112;
    v49 = name;
    v50 = 2112;
    v51 = requestCopy;
    _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_INFO, "%{public}@Sending execute action set %@ with id %@ to home %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v17);
  v43[0] = &unk_283E72260;
  v24 = *MEMORY[0x277CD2050];
  v42[0] = @"sourceType";
  v42[1] = v24;
  uuid = [setCopy uuid];
  uUIDString2 = [uuid UUIDString];
  v43[1] = uUIDString2;
  v42[2] = @"kApplyDeviceUnlockKey";
  v27 = [MEMORY[0x277CCABB0] numberWithInt:!isPasscodeEnabledOnThisDevice()];
  v43[2] = v27;
  v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v43 forKeys:v42 count:3];

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __77__HMDAssistantCommandHelper_addActionSetRequest_actionSet_completionHandler___block_invoke;
  aBlock[3] = &unk_278674340;
  v29 = handlerCopy;
  v41 = v29;
  v30 = _Block_copy(aBlock);
  [(HMDAssistantCommandHelper *)selfCopy setResponseHandler:v30];
  [(HMDAssistantCommandHelper *)selfCopy setExecutingActionSet:1];
  objc_initWeak(buf, selfCopy);
  v31 = MEMORY[0x277D0F818];
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __77__HMDAssistantCommandHelper_addActionSetRequest_actionSet_completionHandler___block_invoke_2;
  v37[3] = &unk_278687F40;
  objc_copyWeak(&v39, buf);
  v32 = *MEMORY[0x277CD2348];
  v33 = v36;
  v38 = v33;
  v34 = [v31 internalMessageWithName:v32 messagePayload:v28 responseHandler:v37];
  [requestCopy executeActionSet:v34];

  objc_destroyWeak(&v39);
  objc_destroyWeak(buf);

  v35 = *MEMORY[0x277D85DE8];
}

void __77__HMDAssistantCommandHelper_addActionSetRequest_actionSet_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = [a3 firstObject];
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  (*(*(a1 + 32) + 16))();
}

void __77__HMDAssistantCommandHelper_addActionSetRequest_actionSet_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = [WeakRetained queue];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __77__HMDAssistantCommandHelper_addActionSetRequest_actionSet_completionHandler___block_invoke_3;
    v10[3] = &unk_2786891E0;
    v11 = *(a1 + 32);
    v12 = v8;
    v13 = v6;
    v14 = v5;
    dispatch_async(v9, v10);
  }
}

void __77__HMDAssistantCommandHelper_addActionSetRequest_actionSet_completionHandler___block_invoke_3(uint64_t a1)
{
  v4 = [*(a1 + 40) responseHandler];
  [*(a1 + 40) setResponseHandler:0];
  v2 = v4;
  if (v4)
  {
    if (*(a1 + 48))
    {
      v3 = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{*(a1 + 48), 0}];
      v2 = v4;
    }

    else
    {
      v3 = 0;
    }

    (v2)[2](v4, *(a1 + 56), v3);

    v2 = v4;
  }
}

- (void)addWriteRequests:(id)requests home:(id)home completion:(id)completion
{
  v35 = *MEMORY[0x277D85DE8];
  requestsCopy = requests;
  homeCopy = home;
  completionCopy = completion;
  if ([requestsCopy count])
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    [(HMDAssistantCommandHelper *)self setMessageId:uUID];

    [(HMDAssistantCommandHelper *)self setHome:homeCopy];
    [(HMDAssistantCommandHelper *)self setResponseHandler:completionCopy];
    [(HMDAssistantCommandHelper *)self _register];
    v12 = objc_autoreleasePoolPush();
    selfCopy = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier();
      messageId = [(HMDAssistantCommandHelper *)selfCopy messageId];
      uUIDString = [messageId UUIDString];
      *buf = 138544130;
      v28 = v15;
      v29 = 2112;
      v30 = uUIDString;
      v31 = 2112;
      v32 = homeCopy;
      v33 = 2112;
      v34 = requestsCopy;
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, "%{public}@Sending write request with id %@ to home %@ with write request tuples: %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v12);
    [(HMDAssistantCommandHelper *)selfCopy setRequests:requestsCopy];
    objc_initWeak(buf, selfCopy);
    messageId2 = [(HMDAssistantCommandHelper *)selfCopy messageId];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __62__HMDAssistantCommandHelper_addWriteRequests_home_completion___block_invoke;
    v25[3] = &unk_278687F40;
    objc_copyWeak(&v26, buf);
    v25[4] = selfCopy;
    [homeCopy writeCharacteristicValues:requestsCopy source:1 message:0 identifier:messageId2 qualityOfService:25 withCompletionHandler:v25];

    objc_destroyWeak(&v26);
    objc_destroyWeak(buf);
  }

  else
  {
    v19 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = HMFGetLogIdentifier();
      *buf = 138543618;
      v28 = v22;
      v29 = 2112;
      v30 = homeCopy;
      _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_INFO, "%{public}@Received write request to home %@ with no request tuples, reporting invalid parameters error", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v19);
    v23 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCFD28] code:3 userInfo:0];
    completionCopy[2](completionCopy, v23, 0);
  }

  v24 = *MEMORY[0x277D85DE8];
}

void __62__HMDAssistantCommandHelper_addWriteRequests_home_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = WeakRetained;
  if (v5 && WeakRetained)
  {
    v9 = objc_autoreleasePoolPush();
    v10 = *(a1 + 32);
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v13 = [*(a1 + 32) messageId];
      v14 = [v13 UUIDString];
      *buf = 138543874;
      v21 = v12;
      v22 = 2112;
      v23 = v14;
      v24 = 2112;
      v25 = v5;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Write request with id %@ to home failed with error: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v9);
    v15 = [v8 queue];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __62__HMDAssistantCommandHelper_addWriteRequests_home_completion___block_invoke_22;
    v17[3] = &unk_27868A750;
    v18 = v8;
    v19 = v5;
    dispatch_async(v15, v17);
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __62__HMDAssistantCommandHelper_addWriteRequests_home_completion___block_invoke_22(uint64_t a1)
{
  v3 = [*(a1 + 32) responseHandler];
  [*(a1 + 32) setResponseHandler:0];
  v2 = v3;
  if (v3)
  {
    (*(v3 + 16))(v3, *(a1 + 40), 0);
    v2 = v3;
  }
}

- (void)addReadRequests:(id)requests home:(id)home completion:(id)completion
{
  v35 = *MEMORY[0x277D85DE8];
  requestsCopy = requests;
  homeCopy = home;
  completionCopy = completion;
  if ([requestsCopy count])
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    [(HMDAssistantCommandHelper *)self setMessageId:uUID];

    [(HMDAssistantCommandHelper *)self setHome:homeCopy];
    [(HMDAssistantCommandHelper *)self setResponseHandler:completionCopy];
    [(HMDAssistantCommandHelper *)self _register];
    v12 = objc_autoreleasePoolPush();
    selfCopy = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier();
      messageId = [(HMDAssistantCommandHelper *)selfCopy messageId];
      uUIDString = [messageId UUIDString];
      *buf = 138544130;
      v28 = v15;
      v29 = 2112;
      v30 = uUIDString;
      v31 = 2112;
      v32 = homeCopy;
      v33 = 2112;
      v34 = requestsCopy;
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, "%{public}@Sending read request with id %@ to home %@ with characteristics: %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v12);
    [(HMDAssistantCommandHelper *)selfCopy setRequests:requestsCopy];
    objc_initWeak(buf, selfCopy);
    messageId2 = [(HMDAssistantCommandHelper *)selfCopy messageId];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __61__HMDAssistantCommandHelper_addReadRequests_home_completion___block_invoke;
    v25[3] = &unk_278687FB0;
    objc_copyWeak(&v26, buf);
    [homeCopy readCharacteristicValues:requestsCopy identifier:messageId2 source:1 qualityOfService:25 withCompletionHandler:v25];

    objc_destroyWeak(&v26);
    objc_destroyWeak(buf);
  }

  else
  {
    v19 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = HMFGetLogIdentifier();
      *buf = 138543618;
      v28 = v22;
      v29 = 2112;
      v30 = homeCopy;
      _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_INFO, "%{public}@Received read request to home %@ with no characteristics, reporting invalid parameters error", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v19);
    v23 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCFD28] code:3 userInfo:0];
    completionCopy[2](completionCopy, v23, 0);
  }

  v24 = *MEMORY[0x277D85DE8];
}

void __61__HMDAssistantCommandHelper_addReadRequests_home_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (v5 && WeakRetained)
  {
    v9 = objc_autoreleasePoolPush();
    v10 = v8;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v13 = [v10 messageId];
      v14 = [v13 UUIDString];
      *buf = 138543874;
      v21 = v12;
      v22 = 2112;
      v23 = v14;
      v24 = 2112;
      v25 = v5;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Read request with id %@ failed with error: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v9);
    v15 = [v10 queue];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __61__HMDAssistantCommandHelper_addReadRequests_home_completion___block_invoke_21;
    v17[3] = &unk_27868A750;
    v18 = v10;
    v19 = v5;
    dispatch_async(v15, v17);
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __61__HMDAssistantCommandHelper_addReadRequests_home_completion___block_invoke_21(uint64_t a1)
{
  v3 = [*(a1 + 32) responseHandler];
  [*(a1 + 32) setResponseHandler:0];
  v2 = v3;
  if (v3)
  {
    (*(v3 + 16))(v3, *(a1 + 40), 0);
    v2 = v3;
  }
}

- (void)addMediaWriteRequests:(id)requests withRequestProperty:(id)property completion:(id)completion
{
  v60 = *MEMORY[0x277D85DE8];
  requestsCopy = requests;
  propertyCopy = property;
  completionCopy = completion;
  v38 = completionCopy;
  v35 = requestsCopy;
  if ([requestsCopy count])
  {
    [(HMDAssistantCommandHelper *)self setMediaResponseHandler:completionCopy];
    [(HMDAssistantCommandHelper *)self setMediaRequests:requestsCopy];
    v10 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(requestsCopy, "count")}];
    [(HMDAssistantCommandHelper *)self setMediaResponses:v10];

    selfCopy = self;
    objc_initWeak(&location, self);
    *&v57 = 0;
    *(&v57 + 1) = &v57;
    v58 = 0x2020000000;
    v59 = 0;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v11 = requestsCopy;
    v12 = [v11 countByEnumeratingWithState:&v47 objects:v56 count:16];
    if (v12)
    {
      v40 = *v48;
      v36 = *MEMORY[0x277CCFD28];
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v48 != v40)
          {
            objc_enumerationMutation(v11);
          }

          v14 = *(*(&v47 + 1) + 8 * i);
          mediaProfile = [v14 mediaProfile];
          accessory = [mediaProfile accessory];

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v17 = accessory;
          }

          else
          {
            v17 = 0;
          }

          v18 = v17;

          if (v18)
          {
            mediaProfile2 = [v18 mediaProfile];
            value = [v14 value];
            v41[0] = MEMORY[0x277D85DD0];
            v41[1] = 3221225472;
            v41[2] = __82__HMDAssistantCommandHelper_addMediaWriteRequests_withRequestProperty_completion___block_invoke;
            v41[3] = &unk_27868A3E8;
            objc_copyWeak(&v46, &location);
            v45 = &v57;
            v21 = propertyCopy;
            v42 = v21;
            v43 = v18;
            v44 = v11;
            [mediaProfile2 handleSetValue:value withRequestProperty:v21 withCompletionHandler:v41];

            objc_destroyWeak(&v46);
          }

          else
          {
            v22 = objc_autoreleasePoolPush();
            v23 = selfCopy;
            v24 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
            {
              v25 = HMFGetLogIdentifier();
              mediaProfile3 = [v14 mediaProfile];
              uniqueIdentifier = [mediaProfile3 uniqueIdentifier];
              *buf = 138543618;
              v53 = v25;
              v54 = 2112;
              v55 = uniqueIdentifier;
              _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_INFO, "%{public}@Media Profile (%@) does not contain HMDAppleMediaAccessory type accessory, something went wrong.", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v22);
            v28 = [MEMORY[0x277CCA9B8] errorWithDomain:v36 code:22 userInfo:0];
            (v38)[2](v38, v28, 0);
          }
        }

        v12 = [v11 countByEnumeratingWithState:&v47 objects:v56 count:16];
      }

      while (v12);
    }

    _Block_object_dispose(&v57, 8);
    objc_destroyWeak(&location);
  }

  else
  {
    v29 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v31 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      v32 = HMFGetLogIdentifier();
      LODWORD(v57) = 138543362;
      *(&v57 + 4) = v32;
      _os_log_impl(&dword_229538000, v31, OS_LOG_TYPE_INFO, "%{public}@Received write request with no apple media accessory, reporting invalid parameters error", &v57, 0xCu);
    }

    objc_autoreleasePoolPop(v29);
    v33 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCFD28] code:3 userInfo:0];
    (v38)[2](v38, v33, 0);
  }

  v34 = *MEMORY[0x277D85DE8];
}

void __82__HMDAssistantCommandHelper_addMediaWriteRequests_withRequestProperty_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = [WeakRetained queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __82__HMDAssistantCommandHelper_addMediaWriteRequests_withRequestProperty_completion___block_invoke_2;
    block[3] = &unk_278684B90;
    v17 = *(a1 + 56);
    v11 = v5;
    v12 = *(a1 + 32);
    v13 = *(a1 + 40);
    v14 = v8;
    v15 = v6;
    v16 = *(a1 + 48);
    dispatch_async(v9, block);
  }
}

void __82__HMDAssistantCommandHelper_addMediaWriteRequests_withRequestProperty_completion___block_invoke_2(uint64_t a1)
{
  v13[1] = *MEMORY[0x277D85DE8];
  ++*(*(*(a1 + 80) + 8) + 24);
  if (*(a1 + 32))
  {
    v2 = *(a1 + 40);
    v3 = [*(a1 + 48) mediaProfile];
    v4 = [HMDMediaPropertyRequest requestWithProperty:v2 mediaProfile:v3];

    v5 = [HMDMediaPropertyResponse responseWithRequest:v4 error:*(a1 + 32)];
    v6 = [*(a1 + 56) mediaResponses];
    v13[0] = v5;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
    v8 = [HMDMediaPropertyResponse serializeResponses:v7];
    [v6 addObject:v8];
  }

  else
  {
    if (!*(a1 + 64))
    {
      goto LABEL_6;
    }

    v4 = [*(a1 + 56) mediaResponses];
    [v4 addObject:*(a1 + 64)];
  }

LABEL_6:
  v9 = *(*(*(a1 + 80) + 8) + 24);
  if ([*(a1 + 72) count] == v9)
  {
    v10 = [*(a1 + 56) mediaResponseHandler];
    [*(a1 + 56) setMediaResponseHandler:0];
    v11 = [*(a1 + 56) mediaResponses];
    [*(a1 + 56) setMediaResponses:0];
    if (v10)
    {
      (v10)[2](v10, 0, v11);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)handleAccessoryCharacteristicsChangedNotification:(id)notification
{
  notificationCopy = notification;
  queue = [(HMDAssistantCommandHelper *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __79__HMDAssistantCommandHelper_handleAccessoryCharacteristicsChangedNotification___block_invoke;
  v7[3] = &unk_27868A750;
  v7[4] = self;
  v8 = notificationCopy;
  v6 = notificationCopy;
  dispatch_async(queue, v7);
}

void __79__HMDAssistantCommandHelper_handleAccessoryCharacteristicsChangedNotification___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) userInfo];
  [v1 __handleAccessoryCharacteristicsChanged:v2];
}

- (void)__handleAccessoryCharacteristicsChanged:(id)changed
{
  v122 = *MEMORY[0x277D85DE8];
  changedCopy = changed;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543618;
    v117 = v8;
    v118 = 2112;
    v119 = changedCopy;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Processing characteristic reponses for Siri: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v67 = changedCopy;
  v9 = [changedCopy hmf_UUIDForKey:@"kModifiedCharacteristicsMessageIdentifierKey"];
  messageId = [(HMDAssistantCommandHelper *)selfCopy messageId];
  v66 = v9;
  LODWORD(v9) = [v9 isEqual:messageId];

  if (v9)
  {
    responseHandler = [(HMDAssistantCommandHelper *)selfCopy responseHandler];

    if (responseHandler)
    {
      [changedCopy hmf_dictionaryForKey:@"kModifiedCharacteristicsForAccessoryKey"];
      v107 = 0u;
      v108 = 0u;
      v109 = 0u;
      obj = v110 = 0u;
      v69 = [obj countByEnumeratingWithState:&v107 objects:v115 count:16];
      if (v69)
      {
        v68 = *v108;
        v76 = *MEMORY[0x277CD2128];
        v82 = selfCopy;
        do
        {
          v12 = 0;
          do
          {
            if (*v108 != v68)
            {
              objc_enumerationMutation(obj);
            }

            v71 = v12;
            v13 = *(*(&v107 + 1) + 8 * v12);
            v14 = [obj hmf_dictionaryForKey:v13];
            home = [(HMDAssistantCommandHelper *)selfCopy home];
            v90 = v13;
            v16 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v13];
            v17 = [home accessoryWithUUID:v16];

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v18 = v17;
            }

            else
            {
              v18 = 0;
            }

            v77 = v18;

            v105 = 0u;
            v106 = 0u;
            v103 = 0u;
            v104 = 0u;
            v74 = v14;
            v73 = [v74 countByEnumeratingWithState:&v103 objects:v114 count:16];
            if (v73)
            {
              v72 = *v104;
              do
              {
                v19 = 0;
                do
                {
                  if (*v104 != v72)
                  {
                    objc_enumerationMutation(v74);
                  }

                  v75 = v19;
                  v79 = *(*(&v103 + 1) + 8 * v19);
                  v20 = [v74 hmf_dictionaryForKey:?];
                  v99 = 0u;
                  v100 = 0u;
                  v101 = 0u;
                  v102 = 0u;
                  v81 = v20;
                  v80 = [v81 countByEnumeratingWithState:&v99 objects:v113 count:16];
                  if (v80)
                  {
                    v78 = *v100;
                    do
                    {
                      for (i = 0; i != v80; i = v53 + 1)
                      {
                        if (*v100 != v78)
                        {
                          objc_enumerationMutation(v81);
                        }

                        v85 = i;
                        v22 = *(*(&v99 + 1) + 8 * i);
                        v23 = HAPInstanceIDFromValue();
                        HAPInstanceIDFromValue();
                        v84 = v88 = v23;
                        v86 = [v77 findCharacteristic:v23 forService:?];
                        v83 = [v81 hmf_dictionaryForKey:v22];
                        v87 = [v83 errorFromDataForKey:v76];
                        if (v87)
                        {
                          [(HMDAssistantCommandHelper *)selfCopy setNumErrors:[(HMDAssistantCommandHelper *)selfCopy numErrors]+ 1];
                        }

                        v97 = 0u;
                        v98 = 0u;
                        v95 = 0u;
                        v96 = 0u;
                        requests = [(HMDAssistantCommandHelper *)selfCopy requests];
                        v25 = [requests countByEnumeratingWithState:&v95 objects:v112 count:16];
                        if (v25)
                        {
                          v26 = v25;
                          v27 = *v96;
LABEL_27:
                          v28 = 0;
                          while (1)
                          {
                            if (*v96 != v27)
                            {
                              objc_enumerationMutation(requests);
                            }

                            v29 = *(*(&v95 + 1) + 8 * v28);
                            characteristic = [v29 characteristic];
                            accessory = [characteristic accessory];
                            uuid = [accessory uuid];

                            instanceID = [characteristic instanceID];
                            uUIDString = [uuid UUIDString];
                            if ([v90 isEqual:uUIDString])
                            {
                              v35 = [v88 isEqual:instanceID];

                              if (v35)
                              {
                                v36 = [HMDCharacteristicResponse responseWithRequest:v29 error:v87];

                                selfCopy = v82;
                                v89 = v36;
                                if (v36)
                                {
                                  goto LABEL_41;
                                }

                                goto LABEL_38;
                              }
                            }

                            else
                            {
                            }

                            if (v26 == ++v28)
                            {
                              v26 = [requests countByEnumeratingWithState:&v95 objects:v112 count:16];
                              if (v26)
                              {
                                goto LABEL_27;
                              }

                              break;
                            }
                          }
                        }

                        selfCopy = v82;
LABEL_38:
                        v37 = objc_autoreleasePoolPush();
                        v38 = selfCopy;
                        v39 = HMFGetOSLogHandle();
                        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
                        {
                          v40 = HMFGetLogIdentifier();
                          *buf = 138543874;
                          v117 = v40;
                          v118 = 2112;
                          v119 = v90;
                          v120 = 2112;
                          v121 = v88;
                          _os_log_impl(&dword_229538000, v39, OS_LOG_TYPE_DEFAULT, "%{public}@Could not find a request corresponding to %@/%@ - creating a dummy request", buf, 0x20u);
                        }

                        objc_autoreleasePoolPop(v37);
                        v41 = [HMDCharacteristicWriteRequest writeRequestWithCharacteristic:v86 value:&unk_283E72248 authorizationData:0 type:0];
                        v89 = [HMDCharacteristicResponse responseWithRequest:v41 error:v87];

LABEL_41:
                        v93 = 0u;
                        v94 = 0u;
                        v91 = 0u;
                        v92 = 0u;
                        responses = [(HMDAssistantCommandHelper *)selfCopy responses];
                        v43 = [responses countByEnumeratingWithState:&v91 objects:v111 count:16];
                        if (v43)
                        {
                          v44 = v43;
                          v45 = *v92;
LABEL_43:
                          v46 = 0;
                          while (1)
                          {
                            if (*v92 != v45)
                            {
                              objc_enumerationMutation(responses);
                            }

                            v47 = *(*(&v91 + 1) + 8 * v46);
                            request = [v47 request];
                            characteristic2 = [request characteristic];
                            request2 = [v89 request];
                            characteristic3 = [request2 characteristic];
                            v52 = [characteristic2 isEqual:characteristic3];

                            if (v52)
                            {
                              break;
                            }

                            if (v44 == ++v46)
                            {
                              v44 = [responses countByEnumeratingWithState:&v91 objects:v111 count:16];
                              if (v44)
                              {
                                goto LABEL_43;
                              }

                              selfCopy = v82;
                              goto LABEL_50;
                            }
                          }

                          v56 = v47;

                          selfCopy = v82;
                          v55 = v83;
                          v54 = v84;
                          v53 = v85;
                          if (!v56)
                          {
                            goto LABEL_54;
                          }

                          responses2 = [(HMDAssistantCommandHelper *)v82 responses];
                          [responses2 removeObject:v56];

                          responses = v56;
                        }

                        else
                        {
LABEL_50:
                          v54 = v84;
                          v53 = v85;
                          v55 = v83;
                        }

LABEL_54:
                        responses3 = [(HMDAssistantCommandHelper *)selfCopy responses];
                        [responses3 addObject:v89];
                      }

                      v80 = [v81 countByEnumeratingWithState:&v99 objects:v113 count:16];
                    }

                    while (v80);
                  }

                  v19 = v75 + 1;
                }

                while (v75 + 1 != v73);
                v73 = [v74 countByEnumeratingWithState:&v103 objects:v114 count:16];
              }

              while (v73);
            }

            v12 = v71 + 1;
          }

          while (v71 + 1 != v69);
          v69 = [obj countByEnumeratingWithState:&v107 objects:v115 count:16];
        }

        while (v69);
      }

      if (([v67 hmf_BOOLForKey:@"kMultiPartResponseKey"] & 1) == 0)
      {
        [(HMDAssistantCommandHelper *)selfCopy _reportResponses];
      }
    }

    else
    {
      v59 = objc_autoreleasePoolPush();
      v60 = selfCopy;
      v61 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v61, OS_LOG_TYPE_INFO))
      {
        v62 = HMFGetLogIdentifier();
        shortDescription = [v67 shortDescription];
        uUIDString2 = [v66 UUIDString];
        *buf = 138543874;
        v117 = v62;
        v118 = 2112;
        v119 = shortDescription;
        v120 = 2112;
        v121 = uUIDString2;
        _os_log_impl(&dword_229538000, v61, OS_LOG_TYPE_INFO, "%{public}@Characteristic change notification '%@' too late for request %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v59);
    }
  }

  v65 = *MEMORY[0x277D85DE8];
}

- (void)_reportOperationStartedForAccessory:(id)accessory
{
  v65 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  object = [accessoryCopy object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = object;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v10 = HMFGetLogIdentifier();
    *buf = 138543618;
    v58 = v10;
    v59 = 2112;
    v60 = v6;
    _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_DEBUG, "%{public}@Reporting operation started for accessory: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  obj = [(HMDAssistantCommandHelper *)selfCopy requests];
  v11 = [obj countByEnumeratingWithState:&v53 objects:v64 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v54;
    v43 = selfCopy;
    v44 = v6;
    v42 = *v54;
    do
    {
      v14 = 0;
      v45 = v12;
      do
      {
        if (*v54 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v48 = *(*(&v53 + 1) + 8 * v14);
        characteristic = [v48 characteristic];
        accessory = [characteristic accessory];
        uuid = [accessory uuid];

        instanceID = [characteristic instanceID];
        uuid2 = [v6 uuid];
        v20 = [uuid hmf_isEqualToUUID:uuid2];

        if (v20)
        {
          v47 = characteristic;
          v51 = 0u;
          v52 = 0u;
          v49 = 0u;
          v50 = 0u;
          responses = [(HMDAssistantCommandHelper *)selfCopy responses];
          v22 = [responses countByEnumeratingWithState:&v49 objects:v63 count:16];
          if (v22)
          {
            v23 = v22;
            v24 = *v50;
            while (2)
            {
              for (i = 0; i != v23; ++i)
              {
                if (*v50 != v24)
                {
                  objc_enumerationMutation(responses);
                }

                request = [*(*(&v49 + 1) + 8 * i) request];
                characteristic2 = [request characteristic];

                accessory2 = [characteristic2 accessory];
                uuid3 = [accessory2 uuid];

                instanceID2 = [characteristic2 instanceID];
                if (HMFEqualObjects() && HMFEqualObjects())
                {

                  selfCopy = v43;
                  v6 = v44;
                  goto LABEL_25;
                }
              }

              v23 = [responses countByEnumeratingWithState:&v49 objects:v63 count:16];
              if (v23)
              {
                continue;
              }

              break;
            }
          }

          v31 = objc_autoreleasePoolPush();
          selfCopy = v43;
          v32 = v43;
          v33 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
          {
            v34 = HMFGetLogIdentifier();
            uUIDString = [uuid UUIDString];
            *buf = 138543874;
            v58 = v34;
            v59 = 2112;
            v60 = uUIDString;
            v61 = 2112;
            v62 = instanceID;
            _os_log_impl(&dword_229538000, v33, OS_LOG_TYPE_INFO, "%{public}@No response for requests with characteristic %@/%@ - inserting operation started error response", buf, 0x20u);
          }

          objc_autoreleasePoolPop(v31);
          responses = [MEMORY[0x277CCA9B8] hmPrivateErrorWithCode:2404];
          characteristic2 = [HMDCharacteristicResponse responseWithRequest:v48 error:responses];
          [(HMDAssistantCommandHelper *)v32 setNumErrors:[(HMDAssistantCommandHelper *)v32 numErrors]+ 1];
          uuid3 = [(HMDAssistantCommandHelper *)v32 responses];
          [uuid3 addObject:characteristic2];
          v6 = v44;
LABEL_25:
          v13 = v42;

          v12 = v45;
          characteristic = v47;
        }

        ++v14;
      }

      while (v14 != v12);
      v12 = [obj countByEnumeratingWithState:&v53 objects:v64 count:16];
    }

    while (v12);
  }

  requests = [(HMDAssistantCommandHelper *)selfCopy requests];
  v37 = [requests count];
  responses2 = [(HMDAssistantCommandHelper *)selfCopy responses];
  v39 = [responses2 count];

  if (v37 == v39)
  {
    [(HMDAssistantCommandHelper *)selfCopy _reportResponses];
  }

  v40 = *MEMORY[0x277D85DE8];
}

- (void)reportOperationStartedForAccessory:(id)accessory
{
  accessoryCopy = accessory;
  queue = [(HMDAssistantCommandHelper *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __64__HMDAssistantCommandHelper_reportOperationStartedForAccessory___block_invoke;
  v7[3] = &unk_27868A750;
  v7[4] = self;
  v8 = accessoryCopy;
  v6 = accessoryCopy;
  dispatch_async(queue, v7);
}

- (void)_reportResponses
{
  selfCopy = self;
  v86 = *MEMORY[0x277D85DE8];
  responseHandler = [(HMDAssistantCommandHelper *)self responseHandler];

  if (responseHandler)
  {
    responseHandler2 = [(HMDAssistantCommandHelper *)selfCopy responseHandler];
    [(HMDAssistantCommandHelper *)selfCopy setResponseHandler:0];
    v5 = MEMORY[0x277CBEB18];
    requests = [(HMDAssistantCommandHelper *)selfCopy requests];
    v62 = [v5 arrayWithCapacity:{objc_msgSend(requests, "count")}];

    if ([(HMDAssistantCommandHelper *)selfCopy executingActionSet])
    {
      v7 = [MEMORY[0x277CCA9B8] hmErrorWithCode:15];
    }

    else
    {
      requests2 = [(HMDAssistantCommandHelper *)selfCopy requests];
      v15 = [requests2 count];
      responses = [(HMDAssistantCommandHelper *)selfCopy responses];
      v17 = [responses count];

      responses2 = [(HMDAssistantCommandHelper *)selfCopy responses];
      if (v15 == v17)
      {

        v62 = responses2;
      }

      else
      {
        v60 = responseHandler2;
        [v62 addObjectsFromArray:responses2];

        v75 = 0u;
        v76 = 0u;
        v73 = 0u;
        v74 = 0u;
        obj = [(HMDAssistantCommandHelper *)selfCopy requests];
        v66 = [obj countByEnumeratingWithState:&v73 objects:v85 count:16];
        if (v66)
        {
          v64 = *v74;
          v65 = selfCopy;
          do
          {
            for (i = 0; i != v66; ++i)
            {
              if (*v74 != v64)
              {
                objc_enumerationMutation(obj);
              }

              v67 = *(*(&v73 + 1) + 8 * i);
              characteristic = [v67 characteristic];
              accessory = [characteristic accessory];
              uuid = [accessory uuid];

              v68 = characteristic;
              instanceID = [characteristic instanceID];
              v69 = 0u;
              v70 = 0u;
              v71 = 0u;
              v72 = 0u;
              responses3 = [(HMDAssistantCommandHelper *)selfCopy responses];
              v25 = [responses3 countByEnumeratingWithState:&v69 objects:v84 count:16];
              if (v25)
              {
                v26 = v25;
                v27 = *v70;
                while (2)
                {
                  for (j = 0; j != v26; ++j)
                  {
                    if (*v70 != v27)
                    {
                      objc_enumerationMutation(responses3);
                    }

                    request = [*(*(&v69 + 1) + 8 * j) request];
                    characteristic2 = [request characteristic];

                    accessory2 = [characteristic2 accessory];
                    uuid2 = [accessory2 uuid];

                    instanceID2 = [characteristic2 instanceID];
                    if (HMFEqualObjects() && HMFEqualObjects())
                    {

                      selfCopy = v65;
                      v44 = v68;
                      goto LABEL_33;
                    }
                  }

                  v26 = [responses3 countByEnumeratingWithState:&v69 objects:v84 count:16];
                  if (v26)
                  {
                    continue;
                  }

                  break;
                }
              }

              v34 = v67;
              characteristic3 = [v67 characteristic];
              responses3 = [characteristic3 accessory];

              if ([responses3 isSuspendCapable] && (v83 = v67, objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", &v83, 1), v36 = objc_claimAutoreleasedReturnValue(), v37 = objc_msgSend(responses3, "canWakeBasedOnCharacteristicRequests:", v36), v36, v37))
              {
                v38 = objc_autoreleasePoolPush();
                selfCopy = v65;
                v39 = v65;
                v40 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
                {
                  v41 = HMFGetLogIdentifier();
                  [uuid UUIDString];
                  v42 = v61 = v38;
                  *buf = 138543874;
                  v78 = v41;
                  v79 = 2112;
                  v80 = v42;
                  v81 = 2112;
                  v82 = instanceID;
                  _os_log_impl(&dword_229538000, v40, OS_LOG_TYPE_INFO, "%{public}@No response for wakeable write requests with characteristic %@/%@ - for suspeded accessory inserting operation started error response", buf, 0x20u);

                  v38 = v61;
                }

                objc_autoreleasePoolPop(v38);
                v43 = [MEMORY[0x277CCA9B8] hmPrivateErrorWithCode:2404];
              }

              else
              {
                v45 = objc_autoreleasePoolPush();
                selfCopy = v65;
                v46 = v65;
                v47 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
                {
                  v48 = HMFGetLogIdentifier();
                  uUIDString = [uuid UUIDString];
                  *buf = 138543874;
                  v78 = v48;
                  v79 = 2112;
                  v80 = uUIDString;
                  v81 = 2112;
                  v82 = instanceID;
                  _os_log_impl(&dword_229538000, v47, OS_LOG_TYPE_INFO, "%{public}@No response for requests with characteristic %@/%@ - inserting an in-progress error response", buf, 0x20u);

                  v34 = v67;
                }

                objc_autoreleasePoolPop(v45);
                v43 = [MEMORY[0x277CCA9B8] hmErrorWithCode:15];
              }

              characteristic2 = v43;
              v44 = v68;
              uuid2 = [HMDCharacteristicResponse responseWithRequest:v34 error:v43];
              [(HMDAssistantCommandHelper *)selfCopy setNumErrors:[(HMDAssistantCommandHelper *)selfCopy numErrors]+ 1];
              [v62 addObject:uuid2];
LABEL_33:
            }

            v66 = [obj countByEnumeratingWithState:&v73 objects:v85 count:16];
          }

          while (v66);
        }

        responseHandler2 = v60;
      }

      if (![(HMDAssistantCommandHelper *)selfCopy numErrors])
      {
        v52 = 0;
LABEL_43:
        v53 = objc_autoreleasePoolPush();
        v54 = selfCopy;
        v55 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
        {
          v56 = HMFGetLogIdentifier();
          messageId = [(HMDAssistantCommandHelper *)v54 messageId];
          uUIDString2 = [messageId UUIDString];
          *buf = 138543618;
          v78 = v56;
          v79 = 2112;
          v80 = uUIDString2;
          _os_log_impl(&dword_229538000, v55, OS_LOG_TYPE_INFO, "%{public}@Calling response handler for the id %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v53);
        (responseHandler2)[2](responseHandler2, v52, v62);

        goto LABEL_46;
      }

      numErrors = [(HMDAssistantCommandHelper *)selfCopy numErrors];
      if (numErrors >= [v62 count])
      {
        v51 = 74;
      }

      else
      {
        v51 = 73;
      }

      v7 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCFD28] code:v51 userInfo:0];
    }

    v52 = v7;
    goto LABEL_43;
  }

  v8 = objc_autoreleasePoolPush();
  v9 = selfCopy;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    messageId2 = [(HMDAssistantCommandHelper *)v9 messageId];
    uUIDString3 = [messageId2 UUIDString];
    *buf = 138543618;
    v78 = v11;
    v79 = 2112;
    v80 = uUIDString3;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Results already reported for Siri command %@ - ignoring the notification/timer", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
LABEL_46:
  v59 = *MEMORY[0x277D85DE8];
}

- (void)_reportResponsesForMediaRequests
{
  v57 = *MEMORY[0x277D85DE8];
  mediaResponseHandler = [(HMDAssistantCommandHelper *)self mediaResponseHandler];

  if (mediaResponseHandler)
  {
    mediaResponseHandler2 = [(HMDAssistantCommandHelper *)self mediaResponseHandler];
    [(HMDAssistantCommandHelper *)self setMediaResponseHandler:0];
    v5 = objc_alloc(MEMORY[0x277CBEB18]);
    mediaRequests = [(HMDAssistantCommandHelper *)self mediaRequests];
    v7 = [v5 initWithCapacity:{objc_msgSend(mediaRequests, "count")}];

    mediaResponses = [(HMDAssistantCommandHelper *)self mediaResponses];
    v9 = [mediaResponses count];
    mediaRequests2 = [(HMDAssistantCommandHelper *)self mediaRequests];
    v11 = [mediaRequests2 count];

    mediaResponses2 = [(HMDAssistantCommandHelper *)self mediaResponses];
    if (v9 == v11)
    {
    }

    else
    {
      v38 = mediaResponseHandler2;
      v39 = v7;
      [v7 addObjectsFromArray:mediaResponses2];

      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      obj = [(HMDAssistantCommandHelper *)self mediaRequests];
      v17 = [obj countByEnumeratingWithState:&v46 objects:v56 count:16];
      if (v17)
      {
        v18 = v17;
        v41 = *v47;
        do
        {
          for (i = 0; i != v18; ++i)
          {
            if (*v47 != v41)
            {
              objc_enumerationMutation(obj);
            }

            v20 = *(*(&v46 + 1) + 8 * i);
            mediaProfile = [v20 mediaProfile];
            uniqueIdentifier = [mediaProfile uniqueIdentifier];
            uUIDString = [uniqueIdentifier UUIDString];

            v44 = 0u;
            v45 = 0u;
            v42 = 0u;
            v43 = 0u;
            mediaResponses3 = [(HMDAssistantCommandHelper *)self mediaResponses];
            v25 = [mediaResponses3 countByEnumeratingWithState:&v42 objects:v55 count:16];
            if (v25)
            {
              v26 = v25;
              v27 = *v43;
LABEL_14:
              v28 = 0;
              while (1)
              {
                if (*v43 != v27)
                {
                  objc_enumerationMutation(mediaResponses3);
                }

                v29 = [*(*(&v42 + 1) + 8 * v28) objectForKey:uUIDString];

                if (v29)
                {
                  break;
                }

                if (v26 == ++v28)
                {
                  v26 = [mediaResponses3 countByEnumeratingWithState:&v42 objects:v55 count:16];
                  if (v26)
                  {
                    goto LABEL_14;
                  }

                  goto LABEL_20;
                }
              }
            }

            else
            {
LABEL_20:

              v30 = objc_autoreleasePoolPush();
              selfCopy = self;
              v32 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
              {
                v33 = HMFGetLogIdentifier();
                *buf = 138543618;
                v52 = v33;
                v53 = 2112;
                v54 = uUIDString;
                _os_log_impl(&dword_229538000, v32, OS_LOG_TYPE_INFO, "%{public}@No response for requests for media profile %@ - inserting an in-progress error response", buf, 0x16u);
              }

              objc_autoreleasePoolPop(v30);
              v34 = [MEMORY[0x277CCA9B8] hmErrorWithCode:15];
              mediaResponses3 = [HMDMediaPropertyResponse responseWithRequest:v20 error:v34];

              v50 = mediaResponses3;
              v35 = [MEMORY[0x277CBEA60] arrayWithObjects:&v50 count:1];
              v36 = [HMDMediaPropertyResponse serializeResponses:v35];
              [v39 addObject:v36];
            }
          }

          v18 = [obj countByEnumeratingWithState:&v46 objects:v56 count:16];
        }

        while (v18);
      }

      mediaResponseHandler2 = v38;
      mediaResponses2 = v39;
    }

    (mediaResponseHandler2)[2](mediaResponseHandler2, 0, mediaResponses2);
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      *buf = 138543362;
      v52 = v16;
      _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@Media results already reported for Siri command - ignoring the notification/timer", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v13);
  }

  v37 = *MEMORY[0x277D85DE8];
}

- (void)timeoutAndReportResults
{
  queue = [(HMDAssistantCommandHelper *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__HMDAssistantCommandHelper_timeoutAndReportResults__block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(queue, block);
}

uint64_t __52__HMDAssistantCommandHelper_timeoutAndReportResults__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v11 = 138543362;
    v12 = v5;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Timeout current requests execution - reporting results", &v11, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  v6 = [*(a1 + 32) mediaRequests];
  v7 = [v6 count];

  v8 = *(a1 + 32);
  if (v7)
  {
    result = [v8 _reportResponsesForMediaRequests];
  }

  else
  {
    result = [v8 _reportResponses];
  }

  v10 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_register
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel_handleAccessoryCharacteristicsChangedNotification_ name:@"HMDAccessoryCharacteristicsResponseReceivedNotification" object:0];
}

- (void)dealloc
{
  msgDispatcher = [(HMDAssistantCommandHelper *)self msgDispatcher];
  [msgDispatcher deregisterReceiver:self];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v5.receiver = self;
  v5.super_class = HMDAssistantCommandHelper;
  [(HMDAssistantCommandHelper *)&v5 dealloc];
}

- (HMDAssistantCommandHelper)initWithQueue:(id)queue msgDispatcher:(id)dispatcher
{
  queueCopy = queue;
  dispatcherCopy = dispatcher;
  v17.receiver = self;
  v17.super_class = HMDAssistantCommandHelper;
  v9 = [(HMDAssistantCommandHelper *)&v17 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_queue, queue);
    objc_storeStrong(&v10->_msgDispatcher, dispatcher);
    uUID = [MEMORY[0x277CCAD78] UUID];
    uuid = v10->_uuid;
    v10->_uuid = uUID;

    array = [MEMORY[0x277CBEB18] array];
    responses = v10->_responses;
    v10->_responses = array;

    v10->_numErrors = 0;
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v10 selector:sel_reportOperationStartedForAccessory_ name:@"kHMDAccessoryWakeNotificationStarted" object:0];
  }

  return v10;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t0_55046 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t0_55046, &__block_literal_global_55047);
  }

  v3 = logCategory__hmf_once_v1_55048;

  return v3;
}

void __40__HMDAssistantCommandHelper_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v1_55048;
  logCategory__hmf_once_v1_55048 = v1;
}

@end