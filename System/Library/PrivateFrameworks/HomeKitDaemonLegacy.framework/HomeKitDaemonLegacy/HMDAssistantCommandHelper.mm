@interface HMDAssistantCommandHelper
+ (id)logCategory;
- (HMDAssistantCommandHelper)initWithQueue:(id)a3 msgDispatcher:(id)a4;
- (HMDHome)home;
- (void)__handleAccessoryCharacteristicsChanged:(id)a3;
- (void)_register;
- (void)_reportOperationStartedForAccessory:(id)a3;
- (void)_reportResponses;
- (void)_reportResponsesForMediaRequests;
- (void)addActionSetRequest:(id)a3 actionSet:(id)a4 completionHandler:(id)a5;
- (void)addMediaWriteRequests:(id)a3 withRequestProperty:(id)a4 completion:(id)a5;
- (void)addReadRequests:(id)a3 home:(id)a4 completion:(id)a5;
- (void)addWriteRequests:(id)a3 home:(id)a4 completion:(id)a5;
- (void)dealloc;
- (void)handleAccessoryCharacteristicsChangedNotification:(id)a3;
- (void)removeResponses:(id)a3;
- (void)reportOperationStartedForAccessory:(id)a3;
- (void)timeoutAndReportResults;
@end

@implementation HMDAssistantCommandHelper

- (HMDHome)home
{
  WeakRetained = objc_loadWeakRetained(&self->_home);

  return WeakRetained;
}

- (void)removeResponses:(id)a3
{
  v4 = a3;
  v5 = [(HMDAssistantCommandHelper *)self responses];
  [v5 removeObjectsInArray:v4];
}

- (void)addActionSetRequest:(id)a3 actionSet:(id)a4 completionHandler:(id)a5
{
  v52 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = objc_alloc(MEMORY[0x277D0F770]);
  v13 = MEMORY[0x277CCACA8];
  v14 = MEMORY[0x259C01AE0](self, a2);
  v15 = [v13 stringWithFormat:@"%@, %s:%ld", v14, "/Library/Caches/com.apple.xbs/Sources/HomeKit_executables_legacy/Sources/homed/Assistant/HMDAssistantCommandHelper.m", 518];
  v36 = [v12 initWithName:v15];

  v16 = [MEMORY[0x277CCAD78] UUID];
  [(HMDAssistantCommandHelper *)self setMessageId:v16];

  v17 = objc_autoreleasePoolPush();
  v18 = self;
  v19 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    v20 = HMFGetLogIdentifier();
    v21 = [(HMDAssistantCommandHelper *)v18 messageId];
    v22 = [v21 UUIDString];
    v23 = [v10 name];
    *buf = 138544130;
    v45 = v20;
    v46 = 2112;
    v47 = v22;
    v48 = 2112;
    v49 = v23;
    v50 = 2112;
    v51 = v9;
    _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_INFO, "%{public}@Sending execute action set %@ with id %@ to home %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v17);
  v43[0] = &unk_286627D48;
  v24 = *MEMORY[0x277CD2050];
  v42[0] = @"sourceType";
  v42[1] = v24;
  v25 = [v10 uuid];
  v26 = [v25 UUIDString];
  v43[1] = v26;
  v42[2] = @"kApplyDeviceUnlockKey";
  v27 = [MEMORY[0x277CCABB0] numberWithInt:!isPasscodeEnabledOnThisDevice()];
  v43[2] = v27;
  v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v43 forKeys:v42 count:3];

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __77__HMDAssistantCommandHelper_addActionSetRequest_actionSet_completionHandler___block_invoke;
  aBlock[3] = &unk_279725198;
  v29 = v11;
  v41 = v29;
  v30 = _Block_copy(aBlock);
  [(HMDAssistantCommandHelper *)v18 setResponseHandler:v30];
  [(HMDAssistantCommandHelper *)v18 setExecutingActionSet:1];
  objc_initWeak(buf, v18);
  v31 = MEMORY[0x277D0F818];
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __77__HMDAssistantCommandHelper_addActionSetRequest_actionSet_completionHandler___block_invoke_2;
  v37[3] = &unk_279733AE8;
  objc_copyWeak(&v39, buf);
  v32 = *MEMORY[0x277CD2348];
  v33 = v36;
  v38 = v33;
  v34 = [v31 internalMessageWithName:v32 messagePayload:v28 responseHandler:v37];
  [v9 executeActionSet:v34];

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
    v10[3] = &unk_279734870;
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

- (void)addWriteRequests:(id)a3 home:(id)a4 completion:(id)a5
{
  v35 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v8 count])
  {
    v11 = [MEMORY[0x277CCAD78] UUID];
    [(HMDAssistantCommandHelper *)self setMessageId:v11];

    [(HMDAssistantCommandHelper *)self setHome:v9];
    [(HMDAssistantCommandHelper *)self setResponseHandler:v10];
    [(HMDAssistantCommandHelper *)self _register];
    v12 = objc_autoreleasePoolPush();
    v13 = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier();
      v16 = [(HMDAssistantCommandHelper *)v13 messageId];
      v17 = [v16 UUIDString];
      *buf = 138544130;
      v28 = v15;
      v29 = 2112;
      v30 = v17;
      v31 = 2112;
      v32 = v9;
      v33 = 2112;
      v34 = v8;
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, "%{public}@Sending write request with id %@ to home %@ with write request tuples: %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v12);
    [(HMDAssistantCommandHelper *)v13 setRequests:v8];
    objc_initWeak(buf, v13);
    v18 = [(HMDAssistantCommandHelper *)v13 messageId];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __62__HMDAssistantCommandHelper_addWriteRequests_home_completion___block_invoke;
    v25[3] = &unk_279733AE8;
    objc_copyWeak(&v26, buf);
    v25[4] = v13;
    [v9 writeCharacteristicValues:v8 source:1 message:0 identifier:v18 qualityOfService:25 withCompletionHandler:v25];

    objc_destroyWeak(&v26);
    objc_destroyWeak(buf);
  }

  else
  {
    v19 = objc_autoreleasePoolPush();
    v20 = self;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = HMFGetLogIdentifier();
      *buf = 138543618;
      v28 = v22;
      v29 = 2112;
      v30 = v9;
      _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_INFO, "%{public}@Received write request to home %@ with no request tuples, reporting invalid parameters error", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v19);
    v23 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCFD28] code:3 userInfo:0];
    v10[2](v10, v23, 0);
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
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Write request with id %@ to home failed with error: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v9);
    v15 = [v8 queue];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __62__HMDAssistantCommandHelper_addWriteRequests_home_completion___block_invoke_22;
    v17[3] = &unk_2797359B0;
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

- (void)addReadRequests:(id)a3 home:(id)a4 completion:(id)a5
{
  v35 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v8 count])
  {
    v11 = [MEMORY[0x277CCAD78] UUID];
    [(HMDAssistantCommandHelper *)self setMessageId:v11];

    [(HMDAssistantCommandHelper *)self setHome:v9];
    [(HMDAssistantCommandHelper *)self setResponseHandler:v10];
    [(HMDAssistantCommandHelper *)self _register];
    v12 = objc_autoreleasePoolPush();
    v13 = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier();
      v16 = [(HMDAssistantCommandHelper *)v13 messageId];
      v17 = [v16 UUIDString];
      *buf = 138544130;
      v28 = v15;
      v29 = 2112;
      v30 = v17;
      v31 = 2112;
      v32 = v9;
      v33 = 2112;
      v34 = v8;
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, "%{public}@Sending read request with id %@ to home %@ with characteristics: %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v12);
    [(HMDAssistantCommandHelper *)v13 setRequests:v8];
    objc_initWeak(buf, v13);
    v18 = [(HMDAssistantCommandHelper *)v13 messageId];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __61__HMDAssistantCommandHelper_addReadRequests_home_completion___block_invoke;
    v25[3] = &unk_279733B98;
    objc_copyWeak(&v26, buf);
    [v9 readCharacteristicValues:v8 identifier:v18 source:1 qualityOfService:25 withCompletionHandler:v25];

    objc_destroyWeak(&v26);
    objc_destroyWeak(buf);
  }

  else
  {
    v19 = objc_autoreleasePoolPush();
    v20 = self;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = HMFGetLogIdentifier();
      *buf = 138543618;
      v28 = v22;
      v29 = 2112;
      v30 = v9;
      _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_INFO, "%{public}@Received read request to home %@ with no characteristics, reporting invalid parameters error", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v19);
    v23 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCFD28] code:3 userInfo:0];
    v10[2](v10, v23, 0);
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
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Read request with id %@ failed with error: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v9);
    v15 = [v10 queue];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __61__HMDAssistantCommandHelper_addReadRequests_home_completion___block_invoke_21;
    v17[3] = &unk_2797359B0;
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

- (void)addMediaWriteRequests:(id)a3 withRequestProperty:(id)a4 completion:(id)a5
{
  v60 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v39 = a4;
  v9 = a5;
  v38 = v9;
  v35 = v8;
  if ([v8 count])
  {
    [(HMDAssistantCommandHelper *)self setMediaResponseHandler:v9];
    [(HMDAssistantCommandHelper *)self setMediaRequests:v8];
    v10 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v8, "count")}];
    [(HMDAssistantCommandHelper *)self setMediaResponses:v10];

    v37 = self;
    objc_initWeak(&location, self);
    *&v57 = 0;
    *(&v57 + 1) = &v57;
    v58 = 0x2020000000;
    v59 = 0;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v11 = v8;
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
          v15 = [v14 mediaProfile];
          v16 = [v15 accessory];

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v17 = v16;
          }

          else
          {
            v17 = 0;
          }

          v18 = v17;

          if (v18)
          {
            v19 = [v18 mediaProfile];
            v20 = [v14 value];
            v41[0] = MEMORY[0x277D85DD0];
            v41[1] = 3221225472;
            v41[2] = __82__HMDAssistantCommandHelper_addMediaWriteRequests_withRequestProperty_completion___block_invoke;
            v41[3] = &unk_279735AF8;
            objc_copyWeak(&v46, &location);
            v45 = &v57;
            v21 = v39;
            v42 = v21;
            v43 = v18;
            v44 = v11;
            [v19 handleSetValue:v20 withRequestProperty:v21 withCompletionHandler:v41];

            objc_destroyWeak(&v46);
          }

          else
          {
            v22 = objc_autoreleasePoolPush();
            v23 = v37;
            v24 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
            {
              v25 = HMFGetLogIdentifier();
              v26 = [v14 mediaProfile];
              v27 = [v26 uniqueIdentifier];
              *buf = 138543618;
              v53 = v25;
              v54 = 2112;
              v55 = v27;
              _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_INFO, "%{public}@Media Profile (%@) does not contain HMDAppleMediaAccessory type accessory, something went wrong.", buf, 0x16u);
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
    v30 = self;
    v31 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      v32 = HMFGetLogIdentifier();
      LODWORD(v57) = 138543362;
      *(&v57 + 4) = v32;
      _os_log_impl(&dword_2531F8000, v31, OS_LOG_TYPE_INFO, "%{public}@Received write request with no apple media accessory, reporting invalid parameters error", &v57, 0xCu);
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
    block[3] = &unk_279725170;
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

- (void)handleAccessoryCharacteristicsChangedNotification:(id)a3
{
  v4 = a3;
  v5 = [(HMDAssistantCommandHelper *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __79__HMDAssistantCommandHelper_handleAccessoryCharacteristicsChangedNotification___block_invoke;
  v7[3] = &unk_2797359B0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __79__HMDAssistantCommandHelper_handleAccessoryCharacteristicsChangedNotification___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) userInfo];
  [v1 __handleAccessoryCharacteristicsChanged:v2];
}

- (void)__handleAccessoryCharacteristicsChanged:(id)a3
{
  v122 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543618;
    v117 = v8;
    v118 = 2112;
    v119 = v4;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Processing characteristic reponses for Siri: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v67 = v4;
  v9 = [v4 hmf_UUIDForKey:@"kModifiedCharacteristicsMessageIdentifierKey"];
  v10 = [(HMDAssistantCommandHelper *)v6 messageId];
  v66 = v9;
  LODWORD(v9) = [v9 isEqual:v10];

  if (v9)
  {
    v11 = [(HMDAssistantCommandHelper *)v6 responseHandler];

    if (v11)
    {
      [v4 hmf_dictionaryForKey:@"kModifiedCharacteristicsForAccessoryKey"];
      v107 = 0u;
      v108 = 0u;
      v109 = 0u;
      obj = v110 = 0u;
      v69 = [obj countByEnumeratingWithState:&v107 objects:v115 count:16];
      if (v69)
      {
        v68 = *v108;
        v76 = *MEMORY[0x277CD2128];
        v82 = v6;
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
            v15 = [(HMDAssistantCommandHelper *)v6 home];
            v90 = v13;
            v16 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v13];
            v17 = [v15 accessoryWithUUID:v16];

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
                          [(HMDAssistantCommandHelper *)v6 setNumErrors:[(HMDAssistantCommandHelper *)v6 numErrors]+ 1];
                        }

                        v97 = 0u;
                        v98 = 0u;
                        v95 = 0u;
                        v96 = 0u;
                        v24 = [(HMDAssistantCommandHelper *)v6 requests];
                        v25 = [v24 countByEnumeratingWithState:&v95 objects:v112 count:16];
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
                              objc_enumerationMutation(v24);
                            }

                            v29 = *(*(&v95 + 1) + 8 * v28);
                            v30 = [v29 characteristic];
                            v31 = [v30 accessory];
                            v32 = [v31 uuid];

                            v33 = [v30 instanceID];
                            v34 = [v32 UUIDString];
                            if ([v90 isEqual:v34])
                            {
                              v35 = [v88 isEqual:v33];

                              if (v35)
                              {
                                v36 = [HMDCharacteristicResponse responseWithRequest:v29 error:v87];

                                v6 = v82;
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
                              v26 = [v24 countByEnumeratingWithState:&v95 objects:v112 count:16];
                              if (v26)
                              {
                                goto LABEL_27;
                              }

                              break;
                            }
                          }
                        }

                        v6 = v82;
LABEL_38:
                        v37 = objc_autoreleasePoolPush();
                        v38 = v6;
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
                          _os_log_impl(&dword_2531F8000, v39, OS_LOG_TYPE_DEFAULT, "%{public}@Could not find a request corresponding to %@/%@ - creating a dummy request", buf, 0x20u);
                        }

                        objc_autoreleasePoolPop(v37);
                        v41 = [HMDCharacteristicWriteRequest writeRequestWithCharacteristic:v86 value:&unk_286627D30 authorizationData:0 type:0];
                        v89 = [HMDCharacteristicResponse responseWithRequest:v41 error:v87];

LABEL_41:
                        v93 = 0u;
                        v94 = 0u;
                        v91 = 0u;
                        v92 = 0u;
                        v42 = [(HMDAssistantCommandHelper *)v6 responses];
                        v43 = [v42 countByEnumeratingWithState:&v91 objects:v111 count:16];
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
                              objc_enumerationMutation(v42);
                            }

                            v47 = *(*(&v91 + 1) + 8 * v46);
                            v48 = [v47 request];
                            v49 = [v48 characteristic];
                            v50 = [v89 request];
                            v51 = [v50 characteristic];
                            v52 = [v49 isEqual:v51];

                            if (v52)
                            {
                              break;
                            }

                            if (v44 == ++v46)
                            {
                              v44 = [v42 countByEnumeratingWithState:&v91 objects:v111 count:16];
                              if (v44)
                              {
                                goto LABEL_43;
                              }

                              v6 = v82;
                              goto LABEL_50;
                            }
                          }

                          v56 = v47;

                          v6 = v82;
                          v55 = v83;
                          v54 = v84;
                          v53 = v85;
                          if (!v56)
                          {
                            goto LABEL_54;
                          }

                          v57 = [(HMDAssistantCommandHelper *)v82 responses];
                          [v57 removeObject:v56];

                          v42 = v56;
                        }

                        else
                        {
LABEL_50:
                          v54 = v84;
                          v53 = v85;
                          v55 = v83;
                        }

LABEL_54:
                        v58 = [(HMDAssistantCommandHelper *)v6 responses];
                        [v58 addObject:v89];
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
        [(HMDAssistantCommandHelper *)v6 _reportResponses];
      }
    }

    else
    {
      v59 = objc_autoreleasePoolPush();
      v60 = v6;
      v61 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v61, OS_LOG_TYPE_INFO))
      {
        v62 = HMFGetLogIdentifier();
        v63 = [v67 shortDescription];
        v64 = [v66 UUIDString];
        *buf = 138543874;
        v117 = v62;
        v118 = 2112;
        v119 = v63;
        v120 = 2112;
        v121 = v64;
        _os_log_impl(&dword_2531F8000, v61, OS_LOG_TYPE_INFO, "%{public}@Characteristic change notification '%@' too late for request %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v59);
    }
  }

  v65 = *MEMORY[0x277D85DE8];
}

- (void)_reportOperationStartedForAccessory:(id)a3
{
  v65 = *MEMORY[0x277D85DE8];
  v41 = a3;
  v4 = [v41 object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  v7 = objc_autoreleasePoolPush();
  v8 = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v10 = HMFGetLogIdentifier();
    *buf = 138543618;
    v58 = v10;
    v59 = 2112;
    v60 = v6;
    _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_DEBUG, "%{public}@Reporting operation started for accessory: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  obj = [(HMDAssistantCommandHelper *)v8 requests];
  v11 = [obj countByEnumeratingWithState:&v53 objects:v64 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v54;
    v43 = v8;
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
        v15 = [v48 characteristic];
        v16 = [v15 accessory];
        v17 = [v16 uuid];

        v18 = [v15 instanceID];
        v19 = [v6 uuid];
        v20 = [v17 hmf_isEqualToUUID:v19];

        if (v20)
        {
          v47 = v15;
          v51 = 0u;
          v52 = 0u;
          v49 = 0u;
          v50 = 0u;
          v21 = [(HMDAssistantCommandHelper *)v8 responses];
          v22 = [v21 countByEnumeratingWithState:&v49 objects:v63 count:16];
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
                  objc_enumerationMutation(v21);
                }

                v26 = [*(*(&v49 + 1) + 8 * i) request];
                v27 = [v26 characteristic];

                v28 = [v27 accessory];
                v29 = [v28 uuid];

                v30 = [v27 instanceID];
                if (HMFEqualObjects() && HMFEqualObjects())
                {

                  v8 = v43;
                  v6 = v44;
                  goto LABEL_25;
                }
              }

              v23 = [v21 countByEnumeratingWithState:&v49 objects:v63 count:16];
              if (v23)
              {
                continue;
              }

              break;
            }
          }

          v31 = objc_autoreleasePoolPush();
          v8 = v43;
          v32 = v43;
          v33 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
          {
            v34 = HMFGetLogIdentifier();
            v35 = [v17 UUIDString];
            *buf = 138543874;
            v58 = v34;
            v59 = 2112;
            v60 = v35;
            v61 = 2112;
            v62 = v18;
            _os_log_impl(&dword_2531F8000, v33, OS_LOG_TYPE_INFO, "%{public}@No response for requests with characteristic %@/%@ - inserting operation started error response", buf, 0x20u);
          }

          objc_autoreleasePoolPop(v31);
          v21 = [MEMORY[0x277CCA9B8] hmPrivateErrorWithCode:2404];
          v27 = [HMDCharacteristicResponse responseWithRequest:v48 error:v21];
          [(HMDAssistantCommandHelper *)v32 setNumErrors:[(HMDAssistantCommandHelper *)v32 numErrors]+ 1];
          v29 = [(HMDAssistantCommandHelper *)v32 responses];
          [v29 addObject:v27];
          v6 = v44;
LABEL_25:
          v13 = v42;

          v12 = v45;
          v15 = v47;
        }

        ++v14;
      }

      while (v14 != v12);
      v12 = [obj countByEnumeratingWithState:&v53 objects:v64 count:16];
    }

    while (v12);
  }

  v36 = [(HMDAssistantCommandHelper *)v8 requests];
  v37 = [v36 count];
  v38 = [(HMDAssistantCommandHelper *)v8 responses];
  v39 = [v38 count];

  if (v37 == v39)
  {
    [(HMDAssistantCommandHelper *)v8 _reportResponses];
  }

  v40 = *MEMORY[0x277D85DE8];
}

- (void)reportOperationStartedForAccessory:(id)a3
{
  v4 = a3;
  v5 = [(HMDAssistantCommandHelper *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __64__HMDAssistantCommandHelper_reportOperationStartedForAccessory___block_invoke;
  v7[3] = &unk_2797359B0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)_reportResponses
{
  v2 = self;
  v86 = *MEMORY[0x277D85DE8];
  v3 = [(HMDAssistantCommandHelper *)self responseHandler];

  if (v3)
  {
    v4 = [(HMDAssistantCommandHelper *)v2 responseHandler];
    [(HMDAssistantCommandHelper *)v2 setResponseHandler:0];
    v5 = MEMORY[0x277CBEB18];
    v6 = [(HMDAssistantCommandHelper *)v2 requests];
    v62 = [v5 arrayWithCapacity:{objc_msgSend(v6, "count")}];

    if ([(HMDAssistantCommandHelper *)v2 executingActionSet])
    {
      v7 = [MEMORY[0x277CCA9B8] hmErrorWithCode:15];
    }

    else
    {
      v14 = [(HMDAssistantCommandHelper *)v2 requests];
      v15 = [v14 count];
      v16 = [(HMDAssistantCommandHelper *)v2 responses];
      v17 = [v16 count];

      v18 = [(HMDAssistantCommandHelper *)v2 responses];
      if (v15 == v17)
      {

        v62 = v18;
      }

      else
      {
        v60 = v4;
        [v62 addObjectsFromArray:v18];

        v75 = 0u;
        v76 = 0u;
        v73 = 0u;
        v74 = 0u;
        obj = [(HMDAssistantCommandHelper *)v2 requests];
        v66 = [obj countByEnumeratingWithState:&v73 objects:v85 count:16];
        if (v66)
        {
          v64 = *v74;
          v65 = v2;
          do
          {
            for (i = 0; i != v66; ++i)
            {
              if (*v74 != v64)
              {
                objc_enumerationMutation(obj);
              }

              v67 = *(*(&v73 + 1) + 8 * i);
              v20 = [v67 characteristic];
              v21 = [v20 accessory];
              v22 = [v21 uuid];

              v68 = v20;
              v23 = [v20 instanceID];
              v69 = 0u;
              v70 = 0u;
              v71 = 0u;
              v72 = 0u;
              v24 = [(HMDAssistantCommandHelper *)v2 responses];
              v25 = [v24 countByEnumeratingWithState:&v69 objects:v84 count:16];
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
                      objc_enumerationMutation(v24);
                    }

                    v29 = [*(*(&v69 + 1) + 8 * j) request];
                    v30 = [v29 characteristic];

                    v31 = [v30 accessory];
                    v32 = [v31 uuid];

                    v33 = [v30 instanceID];
                    if (HMFEqualObjects() && HMFEqualObjects())
                    {

                      v2 = v65;
                      v44 = v68;
                      goto LABEL_33;
                    }
                  }

                  v26 = [v24 countByEnumeratingWithState:&v69 objects:v84 count:16];
                  if (v26)
                  {
                    continue;
                  }

                  break;
                }
              }

              v34 = v67;
              v35 = [v67 characteristic];
              v24 = [v35 accessory];

              if ([v24 isSuspendCapable] && (v83 = v67, objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", &v83, 1), v36 = objc_claimAutoreleasedReturnValue(), v37 = objc_msgSend(v24, "canWakeBasedOnCharacteristicRequests:", v36), v36, v37))
              {
                v38 = objc_autoreleasePoolPush();
                v2 = v65;
                v39 = v65;
                v40 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
                {
                  v41 = HMFGetLogIdentifier();
                  [v22 UUIDString];
                  v42 = v61 = v38;
                  *buf = 138543874;
                  v78 = v41;
                  v79 = 2112;
                  v80 = v42;
                  v81 = 2112;
                  v82 = v23;
                  _os_log_impl(&dword_2531F8000, v40, OS_LOG_TYPE_INFO, "%{public}@No response for wakeable write requests with characteristic %@/%@ - for suspeded accessory inserting operation started error response", buf, 0x20u);

                  v38 = v61;
                }

                objc_autoreleasePoolPop(v38);
                v43 = [MEMORY[0x277CCA9B8] hmPrivateErrorWithCode:2404];
              }

              else
              {
                v45 = objc_autoreleasePoolPush();
                v2 = v65;
                v46 = v65;
                v47 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
                {
                  v48 = HMFGetLogIdentifier();
                  v49 = [v22 UUIDString];
                  *buf = 138543874;
                  v78 = v48;
                  v79 = 2112;
                  v80 = v49;
                  v81 = 2112;
                  v82 = v23;
                  _os_log_impl(&dword_2531F8000, v47, OS_LOG_TYPE_INFO, "%{public}@No response for requests with characteristic %@/%@ - inserting an in-progress error response", buf, 0x20u);

                  v34 = v67;
                }

                objc_autoreleasePoolPop(v45);
                v43 = [MEMORY[0x277CCA9B8] hmErrorWithCode:15];
              }

              v30 = v43;
              v44 = v68;
              v32 = [HMDCharacteristicResponse responseWithRequest:v34 error:v43];
              [(HMDAssistantCommandHelper *)v2 setNumErrors:[(HMDAssistantCommandHelper *)v2 numErrors]+ 1];
              [v62 addObject:v32];
LABEL_33:
            }

            v66 = [obj countByEnumeratingWithState:&v73 objects:v85 count:16];
          }

          while (v66);
        }

        v4 = v60;
      }

      if (![(HMDAssistantCommandHelper *)v2 numErrors])
      {
        v52 = 0;
LABEL_43:
        v53 = objc_autoreleasePoolPush();
        v54 = v2;
        v55 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
        {
          v56 = HMFGetLogIdentifier();
          v57 = [(HMDAssistantCommandHelper *)v54 messageId];
          v58 = [v57 UUIDString];
          *buf = 138543618;
          v78 = v56;
          v79 = 2112;
          v80 = v58;
          _os_log_impl(&dword_2531F8000, v55, OS_LOG_TYPE_INFO, "%{public}@Calling response handler for the id %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v53);
        (v4)[2](v4, v52, v62);

        goto LABEL_46;
      }

      v50 = [(HMDAssistantCommandHelper *)v2 numErrors];
      if (v50 >= [v62 count])
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
  v9 = v2;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v12 = [(HMDAssistantCommandHelper *)v9 messageId];
    v13 = [v12 UUIDString];
    *buf = 138543618;
    v78 = v11;
    v79 = 2112;
    v80 = v13;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Results already reported for Siri command %@ - ignoring the notification/timer", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
LABEL_46:
  v59 = *MEMORY[0x277D85DE8];
}

- (void)_reportResponsesForMediaRequests
{
  v57 = *MEMORY[0x277D85DE8];
  v3 = [(HMDAssistantCommandHelper *)self mediaResponseHandler];

  if (v3)
  {
    v4 = [(HMDAssistantCommandHelper *)self mediaResponseHandler];
    [(HMDAssistantCommandHelper *)self setMediaResponseHandler:0];
    v5 = objc_alloc(MEMORY[0x277CBEB18]);
    v6 = [(HMDAssistantCommandHelper *)self mediaRequests];
    v7 = [v5 initWithCapacity:{objc_msgSend(v6, "count")}];

    v8 = [(HMDAssistantCommandHelper *)self mediaResponses];
    v9 = [v8 count];
    v10 = [(HMDAssistantCommandHelper *)self mediaRequests];
    v11 = [v10 count];

    v12 = [(HMDAssistantCommandHelper *)self mediaResponses];
    if (v9 == v11)
    {
    }

    else
    {
      v38 = v4;
      v39 = v7;
      [v7 addObjectsFromArray:v12];

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
            v21 = [v20 mediaProfile];
            v22 = [v21 uniqueIdentifier];
            v23 = [v22 UUIDString];

            v44 = 0u;
            v45 = 0u;
            v42 = 0u;
            v43 = 0u;
            v24 = [(HMDAssistantCommandHelper *)self mediaResponses];
            v25 = [v24 countByEnumeratingWithState:&v42 objects:v55 count:16];
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
                  objc_enumerationMutation(v24);
                }

                v29 = [*(*(&v42 + 1) + 8 * v28) objectForKey:v23];

                if (v29)
                {
                  break;
                }

                if (v26 == ++v28)
                {
                  v26 = [v24 countByEnumeratingWithState:&v42 objects:v55 count:16];
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
              v31 = self;
              v32 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
              {
                v33 = HMFGetLogIdentifier();
                *buf = 138543618;
                v52 = v33;
                v53 = 2112;
                v54 = v23;
                _os_log_impl(&dword_2531F8000, v32, OS_LOG_TYPE_INFO, "%{public}@No response for requests for media profile %@ - inserting an in-progress error response", buf, 0x16u);
              }

              objc_autoreleasePoolPop(v30);
              v34 = [MEMORY[0x277CCA9B8] hmErrorWithCode:15];
              v24 = [HMDMediaPropertyResponse responseWithRequest:v20 error:v34];

              v50 = v24;
              v35 = [MEMORY[0x277CBEA60] arrayWithObjects:&v50 count:1];
              v36 = [HMDMediaPropertyResponse serializeResponses:v35];
              [v39 addObject:v36];
            }
          }

          v18 = [obj countByEnumeratingWithState:&v46 objects:v56 count:16];
        }

        while (v18);
      }

      v4 = v38;
      v12 = v39;
    }

    (v4)[2](v4, 0, v12);
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    v14 = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      *buf = 138543362;
      v52 = v16;
      _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@Media results already reported for Siri command - ignoring the notification/timer", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v13);
  }

  v37 = *MEMORY[0x277D85DE8];
}

- (void)timeoutAndReportResults
{
  v3 = [(HMDAssistantCommandHelper *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__HMDAssistantCommandHelper_timeoutAndReportResults__block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(v3, block);
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
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, "%{public}@Timeout current requests execution - reporting results", &v11, 0xCu);
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
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 addObserver:self selector:sel_handleAccessoryCharacteristicsChangedNotification_ name:@"HMDAccessoryCharacteristicsResponseReceivedNotification" object:0];
}

- (void)dealloc
{
  v3 = [(HMDAssistantCommandHelper *)self msgDispatcher];
  [v3 deregisterReceiver:self];

  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 removeObserver:self];

  v5.receiver = self;
  v5.super_class = HMDAssistantCommandHelper;
  [(HMDAssistantCommandHelper *)&v5 dealloc];
}

- (HMDAssistantCommandHelper)initWithQueue:(id)a3 msgDispatcher:(id)a4
{
  v7 = a3;
  v8 = a4;
  v17.receiver = self;
  v17.super_class = HMDAssistantCommandHelper;
  v9 = [(HMDAssistantCommandHelper *)&v17 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_queue, a3);
    objc_storeStrong(&v10->_msgDispatcher, a4);
    v11 = [MEMORY[0x277CCAD78] UUID];
    uuid = v10->_uuid;
    v10->_uuid = v11;

    v13 = [MEMORY[0x277CBEB18] array];
    responses = v10->_responses;
    v10->_responses = v13;

    v10->_numErrors = 0;
    v15 = [MEMORY[0x277CCAB98] defaultCenter];
    [v15 addObserver:v10 selector:sel_reportOperationStartedForAccessory_ name:@"kHMDAccessoryWakeNotificationStarted" object:0];
  }

  return v10;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t0_35352 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t0_35352, &__block_literal_global_35353);
  }

  v3 = logCategory__hmf_once_v1_35354;

  return v3;
}

uint64_t __40__HMDAssistantCommandHelper_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v1_35354;
  logCategory__hmf_once_v1_35354 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end