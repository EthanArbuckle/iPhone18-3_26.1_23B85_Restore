@interface HMDAppleMediaAccessoriesStateManager
+ (id)logCategory;
- (HMDAppleMediaAccessoriesStateManager)initWithIdentifier:(id)a3 messenger:(id)a4 metricsDispatcher:(id)a5;
- (HMDAppleMediaAccessoriesStateManagerDataSource)dataSource;
- (id)dataSourceAppleMediaAccessories;
- (id)logIdentifier;
- (id)remoteAppleMediaAccessories;
- (id)remoteAppleMediaAccessoriesByIdentifier;
- (id)sendModelIdentifierRequestMessageForAppleMediaAccessory:(id)a3 accessoryIdentifier:(id)a4;
- (void)_correctStateForMatchingIdentifier:(id)a3 appleMediaAccessories:(id)a4 sendList:(id)a5;
- (void)appleMediaAccessoriesStateMessenger:(id)a3 didReceiveModelIdentifierRequestMessage:(id)a4 withAccessoryIdentifier:(id)a5;
- (void)correctStateForMatchingAppleMediaAccessories:(id)a3 modelIdentifier:(id)a4;
- (void)correctStateForMatchingIdentifier:(id)a3 appleMediaAccessories:(id)a4;
- (void)run;
- (void)runMultipleIdentifierCorrectionSequence;
@end

@implementation HMDAppleMediaAccessoriesStateManager

- (HMDAppleMediaAccessoriesStateManagerDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (id)logIdentifier
{
  v2 = [(HMDAppleMediaAccessoriesStateManager *)self identifier];
  v3 = [v2 UUIDString];

  return v3;
}

- (id)dataSourceAppleMediaAccessories
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = [(HMDAppleMediaAccessoriesStateManager *)self dataSource];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 appleMediaAccessoriesForStateManager:self];
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
    v7 = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      v12 = 138543362;
      v13 = v9;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_ERROR, "%{public}@Failed to data source apple media accessories due to no data source", &v12, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    v5 = MEMORY[0x277CBEBF8];
  }

  v10 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)remoteAppleMediaAccessories
{
  v2 = [(HMDAppleMediaAccessoriesStateManager *)self dataSourceAppleMediaAccessories];
  v3 = [v2 na_filter:&__block_literal_global_772];

  return v3;
}

- (id)remoteAppleMediaAccessoriesByIdentifier
{
  v34 = *MEMORY[0x277D85DE8];
  v2 = [(HMDAppleMediaAccessoriesStateManager *)self remoteAppleMediaAccessories];
  v3 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(v2, "count")}];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = v2;
  v4 = [obj countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = *v26;
    *&v5 = 138543618;
    v22 = v5;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v26 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v25 + 1) + 8 * i);
        v10 = [v9 identifier];
        if (v10)
        {
          v11 = [v3 objectForKey:v10];
          v12 = v11;
          v13 = MEMORY[0x277CBEBF8];
          if (v11)
          {
            v13 = v11;
          }

          v14 = v13;

          v15 = [v14 arrayByAddingObject:v9];

          [v3 setObject:v15 forKey:v10];
        }

        else
        {
          v16 = objc_autoreleasePoolPush();
          v17 = self;
          v18 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            v19 = HMFGetLogIdentifier();
            *buf = v22;
            v30 = v19;
            v31 = 2112;
            v32 = v9;
            _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_ERROR, "%{public}@Failed to get identifier for apple media accessory: %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v16);
        }
      }

      v6 = [obj countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v6);
  }

  v20 = *MEMORY[0x277D85DE8];

  return v3;
}

- (void)correctStateForMatchingAppleMediaAccessories:(id)a3 modelIdentifier:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543874;
    *&buf[4] = v11;
    *&buf[12] = 2112;
    *&buf[14] = v6;
    *&buf[22] = 2112;
    v22 = v7;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Correcting state for matching apple media accessories: %@ model identifier: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v22 = 0;
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __101__HMDAppleMediaAccessoriesStateManager_correctStateForMatchingAppleMediaAccessories_modelIdentifier___block_invoke;
  v18 = &unk_279720A40;
  v12 = v7;
  v19 = v12;
  v20 = buf;
  [v6 na_each:&v15];
  if (*(*&buf[8] + 24))
  {
    v13 = [(HMDAppleMediaAccessoriesStateManager *)v9 metricsDispatcher:v15];
    [v13 submitMatchingIdentifierRemovalEventWithRemovalCount:*(*&buf[8] + 24)];
  }

  _Block_object_dispose(buf, 8);
  v14 = *MEMORY[0x277D85DE8];
}

void __101__HMDAppleMediaAccessoriesStateManager_correctStateForMatchingAppleMediaAccessories_modelIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 uuid];
  v4 = [v3 hmf_isEqualToUUID:*(a1 + 32)];

  if ((v4 & 1) == 0)
  {
    ++*(*(*(a1 + 40) + 8) + 24);
    [v5 sendRemovalRequest];
  }
}

- (id)sendModelIdentifierRequestMessageForAppleMediaAccessory:(id)a3 accessoryIdentifier:(id)a4
{
  v6 = a3;
  v7 = MEMORY[0x277D2C900];
  v8 = a4;
  v9 = objc_alloc_init(v7);
  v10 = [(HMDAppleMediaAccessoriesStateManager *)self messenger];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __116__HMDAppleMediaAccessoriesStateManager_sendModelIdentifierRequestMessageForAppleMediaAccessory_accessoryIdentifier___block_invoke;
  v16[3] = &unk_279720A18;
  v16[4] = self;
  v17 = v6;
  v11 = v9;
  v18 = v11;
  v12 = v6;
  [v10 sendModelIdentifierRequestMessageToAppleMediaAccessory:v12 withAccessoryIdentifier:v8 completion:v16];

  v13 = v18;
  v14 = v11;

  return v11;
}

void __116__HMDAppleMediaAccessoriesStateManager_sendModelIdentifierRequestMessageForAppleMediaAccessory_accessoryIdentifier___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    [*(a1 + 48) finishWithResult:v6];
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 32);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v11 = *(a1 + 40);
      v13 = 138543874;
      v14 = v10;
      v15 = 2112;
      v16 = v11;
      v17 = 2112;
      v18 = v5;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch model identifier from apple media accessory: %@ error: %@", &v13, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
    if (!v5)
    {
      v5 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:15];
    }

    [*(a1 + 48) finishWithError:v5];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_correctStateForMatchingIdentifier:(id)a3 appleMediaAccessories:(id)a4 sendList:(id)a5
{
  v31 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v10 count])
  {
    v11 = [v10 firstObject];
    [v10 removeObjectAtIndex:0];
    v12 = [(HMDAppleMediaAccessoriesStateManager *)self sendModelIdentifierRequestMessageForAppleMediaAccessory:v11 accessoryIdentifier:v8];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __106__HMDAppleMediaAccessoriesStateManager__correctStateForMatchingIdentifier_appleMediaAccessories_sendList___block_invoke;
    v25[3] = &unk_279729328;
    v25[4] = self;
    v13 = v9;
    v26 = v13;
    v14 = [v12 addSuccessBlock:v25];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __106__HMDAppleMediaAccessoriesStateManager__correctStateForMatchingIdentifier_appleMediaAccessories_sendList___block_invoke_2;
    v21[3] = &unk_279730430;
    v21[4] = self;
    v22 = v8;
    v23 = v13;
    v24 = v10;
    v15 = [v12 addFailureBlock:v21];
  }

  else
  {
    v16 = objc_autoreleasePoolPush();
    v17 = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543618;
      v28 = v19;
      v29 = 2112;
      v30 = v8;
      _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_ERROR, "%{public}@Failed to correct matching identifier state for identifier %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v16);
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)correctStateForMatchingIdentifier:(id)a3 appleMediaAccessories:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = HMFGetLogIdentifier();
    v14 = 138543874;
    v15 = v11;
    v16 = 2112;
    v17 = v6;
    v18 = 2112;
    v19 = v7;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@Correcting state for matching identifier: %@ apple media accessories: %@", &v14, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  v12 = [v7 mutableCopy];
  [(HMDAppleMediaAccessoriesStateManager *)v9 _correctStateForMatchingIdentifier:v6 appleMediaAccessories:v7 sendList:v12];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)runMultipleIdentifierCorrectionSequence
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    *buf = 138543362;
    v23 = v6;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@Running multiple identifier correction sequence", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v7 = [(HMDAppleMediaAccessoriesStateManager *)v4 remoteAppleMediaAccessoriesByIdentifier];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = [v7 allKeys];
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v17 + 1) + 8 * i);
        v14 = [v7 objectForKey:v13];
        if ([v14 count] >= 2)
        {
          v15 = [(HMDAppleMediaAccessoriesStateManager *)v4 metricsDispatcher];
          [v15 submitMatchingIdentifierEventWithMatchingCount:{objc_msgSend(v14, "count")}];

          [(HMDAppleMediaAccessoriesStateManager *)v4 correctStateForMatchingIdentifier:v13 appleMediaAccessories:v14];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)run
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v8 = 138543362;
    v9 = v6;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@Configuring apple media accessories state manager", &v8, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  [(HMDAppleMediaAccessoriesStateManager *)v4 runMultipleIdentifierCorrectionSequence];
  v7 = *MEMORY[0x277D85DE8];
}

- (HMDAppleMediaAccessoriesStateManager)initWithIdentifier:(id)a3 messenger:(id)a4 metricsDispatcher:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (!v9)
  {
    _HMFPreconditionFailure();
    goto LABEL_8;
  }

  if (!v10)
  {
LABEL_8:
    _HMFPreconditionFailure();
    goto LABEL_9;
  }

  v12 = v11;
  if (!v11)
  {
LABEL_9:
    v16 = _HMFPreconditionFailure();
    return +[(HMDAppleMediaAccessoriesStateManager *)v16];
  }

  v18.receiver = self;
  v18.super_class = HMDAppleMediaAccessoriesStateManager;
  v13 = [(HMDAppleMediaAccessoriesStateManager *)&v18 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_identifier, a3);
    objc_storeStrong(&v14->_messenger, a4);
    objc_storeStrong(&v14->_metricsDispatcher, a5);
  }

  return v14;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t8 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t8, &__block_literal_global_16);
  }

  v3 = logCategory__hmf_once_v9;

  return v3;
}

uint64_t __51__HMDAppleMediaAccessoriesStateManager_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  logCategory__hmf_once_v9 = HMFCreateOSLogHandle();

  return MEMORY[0x2821F96F8]();
}

- (void)appleMediaAccessoriesStateMessenger:(id)a3 didReceiveModelIdentifierRequestMessage:(id)a4 withAccessoryIdentifier:(id)a5
{
  v45 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  [(HMDAppleMediaAccessoriesStateManager *)self dataSourceAppleMediaAccessories];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v11 = v37 = 0u;
  v12 = [(HMDAppleMediaAccessoryModelIdentifierResponseMessagePayload *)v11 countByEnumeratingWithState:&v34 objects:v44 count:16];
  if (v12)
  {
    v13 = v12;
    v32 = v9;
    v33 = v8;
    v14 = 0;
    v15 = *v35;
    while (2)
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v35 != v15)
        {
          objc_enumerationMutation(v11);
        }

        v17 = *(*(&v34 + 1) + 8 * i);
        v18 = [v17 identifier];
        if ([v18 isEqualToString:v10])
        {
          v19 = [v17 isCurrentAccessory];

          if (v19)
          {
            if (v14)
            {
              v26 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:12];
              v9 = v32;
              [v32 respondWithError:v26];

              v24 = v11;
              v8 = v33;
              goto LABEL_22;
            }

            v14 = [v17 uuid];
          }
        }

        else
        {
        }
      }

      v13 = [(HMDAppleMediaAccessoryModelIdentifierResponseMessagePayload *)v11 countByEnumeratingWithState:&v34 objects:v44 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }

    v9 = v32;
    v8 = v33;
    if (v14)
    {
      v20 = objc_autoreleasePoolPush();
      v21 = self;
      v22 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v23 = HMFGetLogIdentifier();
        *buf = 138543874;
        v39 = v23;
        v40 = 2112;
        v41 = v14;
        v42 = 2112;
        v43 = v10;
        _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_INFO, "%{public}@Responding with found model identifier: %@ for accessory identifier: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v20);
      v24 = [[HMDAppleMediaAccessoryModelIdentifierResponseMessagePayload alloc] initWithModelIdentifier:v14];
      v25 = [(HMDAppleMediaAccessoryModelIdentifierResponseMessagePayload *)v24 payloadCopy];
      [v32 respondWithPayload:v25];

      goto LABEL_22;
    }
  }

  else
  {
  }

  v27 = objc_autoreleasePoolPush();
  v28 = self;
  v29 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
  {
    v30 = HMFGetLogIdentifier();
    *buf = 138543618;
    v39 = v30;
    v40 = 2112;
    v41 = v10;
    _os_log_impl(&dword_2531F8000, v29, OS_LOG_TYPE_ERROR, "%{public}@Failed to determine the model identifier for a current accessory with identifier: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v27);
  v24 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:2];
  [v9 respondWithError:v24];
  v14 = 0;
LABEL_22:

  v31 = *MEMORY[0x277D85DE8];
}

@end