@interface HMDAppleMediaAccessoriesStateManager
+ (id)logCategory;
- (HMDAppleMediaAccessoriesStateManager)initWithIdentifier:(id)identifier messenger:(id)messenger metricsDispatcher:(id)dispatcher;
- (HMDAppleMediaAccessoriesStateManagerDataSource)dataSource;
- (id)dataSourceAppleMediaAccessories;
- (id)logIdentifier;
- (id)remoteAppleMediaAccessories;
- (id)remoteAppleMediaAccessoriesByIdentifier;
- (id)sendModelIdentifierRequestMessageForAppleMediaAccessory:(id)accessory accessoryIdentifier:(id)identifier;
- (void)_correctStateForMatchingIdentifier:(id)identifier appleMediaAccessories:(id)accessories sendList:(id)list;
- (void)appleMediaAccessoriesStateMessenger:(id)messenger didReceiveModelIdentifierRequestMessage:(id)message withAccessoryIdentifier:(id)identifier;
- (void)correctStateForMatchingAppleMediaAccessories:(id)accessories modelIdentifier:(id)identifier;
- (void)correctStateForMatchingIdentifier:(id)identifier appleMediaAccessories:(id)accessories;
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
  identifier = [(HMDAppleMediaAccessoriesStateManager *)self identifier];
  uUIDString = [identifier UUIDString];

  return uUIDString;
}

- (id)dataSourceAppleMediaAccessories
{
  v14 = *MEMORY[0x277D85DE8];
  dataSource = [(HMDAppleMediaAccessoriesStateManager *)self dataSource];
  v4 = dataSource;
  if (dataSource)
  {
    v5 = [dataSource appleMediaAccessoriesForStateManager:self];
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
    selfCopy = self;
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
  dataSourceAppleMediaAccessories = [(HMDAppleMediaAccessoriesStateManager *)self dataSourceAppleMediaAccessories];
  v3 = [dataSourceAppleMediaAccessories na_filter:&__block_literal_global_772];

  return v3;
}

- (id)remoteAppleMediaAccessoriesByIdentifier
{
  v34 = *MEMORY[0x277D85DE8];
  remoteAppleMediaAccessories = [(HMDAppleMediaAccessoriesStateManager *)self remoteAppleMediaAccessories];
  v3 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(remoteAppleMediaAccessories, "count")}];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = remoteAppleMediaAccessories;
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
        identifier = [v9 identifier];
        if (identifier)
        {
          v11 = [v3 objectForKey:identifier];
          v12 = v11;
          v13 = MEMORY[0x277CBEBF8];
          if (v11)
          {
            v13 = v11;
          }

          v14 = v13;

          v15 = [v14 arrayByAddingObject:v9];

          [v3 setObject:v15 forKey:identifier];
        }

        else
        {
          v16 = objc_autoreleasePoolPush();
          selfCopy = self;
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

- (void)correctStateForMatchingAppleMediaAccessories:(id)accessories modelIdentifier:(id)identifier
{
  v23 = *MEMORY[0x277D85DE8];
  accessoriesCopy = accessories;
  identifierCopy = identifier;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543874;
    *&buf[4] = v11;
    *&buf[12] = 2112;
    *&buf[14] = accessoriesCopy;
    *&buf[22] = 2112;
    v22 = identifierCopy;
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
  v12 = identifierCopy;
  v19 = v12;
  v20 = buf;
  [accessoriesCopy na_each:&v15];
  if (*(*&buf[8] + 24))
  {
    v13 = [(HMDAppleMediaAccessoriesStateManager *)selfCopy metricsDispatcher:v15];
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

- (id)sendModelIdentifierRequestMessageForAppleMediaAccessory:(id)accessory accessoryIdentifier:(id)identifier
{
  accessoryCopy = accessory;
  v7 = MEMORY[0x277D2C900];
  identifierCopy = identifier;
  v9 = objc_alloc_init(v7);
  messenger = [(HMDAppleMediaAccessoriesStateManager *)self messenger];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __116__HMDAppleMediaAccessoriesStateManager_sendModelIdentifierRequestMessageForAppleMediaAccessory_accessoryIdentifier___block_invoke;
  v16[3] = &unk_279720A18;
  v16[4] = self;
  v17 = accessoryCopy;
  v11 = v9;
  v18 = v11;
  v12 = accessoryCopy;
  [messenger sendModelIdentifierRequestMessageToAppleMediaAccessory:v12 withAccessoryIdentifier:identifierCopy completion:v16];

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

- (void)_correctStateForMatchingIdentifier:(id)identifier appleMediaAccessories:(id)accessories sendList:(id)list
{
  v31 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  accessoriesCopy = accessories;
  listCopy = list;
  if ([listCopy count])
  {
    firstObject = [listCopy firstObject];
    [listCopy removeObjectAtIndex:0];
    v12 = [(HMDAppleMediaAccessoriesStateManager *)self sendModelIdentifierRequestMessageForAppleMediaAccessory:firstObject accessoryIdentifier:identifierCopy];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __106__HMDAppleMediaAccessoriesStateManager__correctStateForMatchingIdentifier_appleMediaAccessories_sendList___block_invoke;
    v25[3] = &unk_279729328;
    v25[4] = self;
    v13 = accessoriesCopy;
    v26 = v13;
    v14 = [v12 addSuccessBlock:v25];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __106__HMDAppleMediaAccessoriesStateManager__correctStateForMatchingIdentifier_appleMediaAccessories_sendList___block_invoke_2;
    v21[3] = &unk_279730430;
    v21[4] = self;
    v22 = identifierCopy;
    v23 = v13;
    v24 = listCopy;
    v15 = [v12 addFailureBlock:v21];
  }

  else
  {
    v16 = objc_autoreleasePoolPush();
    selfCopy = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543618;
      v28 = v19;
      v29 = 2112;
      v30 = identifierCopy;
      _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_ERROR, "%{public}@Failed to correct matching identifier state for identifier %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v16);
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)correctStateForMatchingIdentifier:(id)identifier appleMediaAccessories:(id)accessories
{
  v20 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  accessoriesCopy = accessories;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = HMFGetLogIdentifier();
    v14 = 138543874;
    v15 = v11;
    v16 = 2112;
    v17 = identifierCopy;
    v18 = 2112;
    v19 = accessoriesCopy;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@Correcting state for matching identifier: %@ apple media accessories: %@", &v14, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  v12 = [accessoriesCopy mutableCopy];
  [(HMDAppleMediaAccessoriesStateManager *)selfCopy _correctStateForMatchingIdentifier:identifierCopy appleMediaAccessories:accessoriesCopy sendList:v12];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)runMultipleIdentifierCorrectionSequence
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    *buf = 138543362;
    v23 = v6;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@Running multiple identifier correction sequence", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  remoteAppleMediaAccessoriesByIdentifier = [(HMDAppleMediaAccessoriesStateManager *)selfCopy remoteAppleMediaAccessoriesByIdentifier];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  allKeys = [remoteAppleMediaAccessoriesByIdentifier allKeys];
  v9 = [allKeys countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(allKeys);
        }

        v13 = *(*(&v17 + 1) + 8 * i);
        v14 = [remoteAppleMediaAccessoriesByIdentifier objectForKey:v13];
        if ([v14 count] >= 2)
        {
          metricsDispatcher = [(HMDAppleMediaAccessoriesStateManager *)selfCopy metricsDispatcher];
          [metricsDispatcher submitMatchingIdentifierEventWithMatchingCount:{objc_msgSend(v14, "count")}];

          [(HMDAppleMediaAccessoriesStateManager *)selfCopy correctStateForMatchingIdentifier:v13 appleMediaAccessories:v14];
        }
      }

      v10 = [allKeys countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)run
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v8 = 138543362;
    v9 = v6;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@Configuring apple media accessories state manager", &v8, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  [(HMDAppleMediaAccessoriesStateManager *)selfCopy runMultipleIdentifierCorrectionSequence];
  v7 = *MEMORY[0x277D85DE8];
}

- (HMDAppleMediaAccessoriesStateManager)initWithIdentifier:(id)identifier messenger:(id)messenger metricsDispatcher:(id)dispatcher
{
  identifierCopy = identifier;
  messengerCopy = messenger;
  dispatcherCopy = dispatcher;
  if (!identifierCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_8;
  }

  if (!messengerCopy)
  {
LABEL_8:
    _HMFPreconditionFailure();
    goto LABEL_9;
  }

  v12 = dispatcherCopy;
  if (!dispatcherCopy)
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
    objc_storeStrong(&v13->_identifier, identifier);
    objc_storeStrong(&v14->_messenger, messenger);
    objc_storeStrong(&v14->_metricsDispatcher, dispatcher);
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

- (void)appleMediaAccessoriesStateMessenger:(id)messenger didReceiveModelIdentifierRequestMessage:(id)message withAccessoryIdentifier:(id)identifier
{
  v45 = *MEMORY[0x277D85DE8];
  messengerCopy = messenger;
  messageCopy = message;
  identifierCopy = identifier;
  [(HMDAppleMediaAccessoriesStateManager *)self dataSourceAppleMediaAccessories];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v11 = v37 = 0u;
  v12 = [(HMDAppleMediaAccessoryModelIdentifierResponseMessagePayload *)v11 countByEnumeratingWithState:&v34 objects:v44 count:16];
  if (v12)
  {
    v13 = v12;
    v32 = messageCopy;
    v33 = messengerCopy;
    uuid = 0;
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
        identifier = [v17 identifier];
        if ([identifier isEqualToString:identifierCopy])
        {
          isCurrentAccessory = [v17 isCurrentAccessory];

          if (isCurrentAccessory)
          {
            if (uuid)
            {
              v26 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:12];
              messageCopy = v32;
              [v32 respondWithError:v26];

              v24 = v11;
              messengerCopy = v33;
              goto LABEL_22;
            }

            uuid = [v17 uuid];
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

    messageCopy = v32;
    messengerCopy = v33;
    if (uuid)
    {
      v20 = objc_autoreleasePoolPush();
      selfCopy = self;
      v22 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v23 = HMFGetLogIdentifier();
        *buf = 138543874;
        v39 = v23;
        v40 = 2112;
        v41 = uuid;
        v42 = 2112;
        v43 = identifierCopy;
        _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_INFO, "%{public}@Responding with found model identifier: %@ for accessory identifier: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v20);
      v24 = [[HMDAppleMediaAccessoryModelIdentifierResponseMessagePayload alloc] initWithModelIdentifier:uuid];
      payloadCopy = [(HMDAppleMediaAccessoryModelIdentifierResponseMessagePayload *)v24 payloadCopy];
      [v32 respondWithPayload:payloadCopy];

      goto LABEL_22;
    }
  }

  else
  {
  }

  v27 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v29 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
  {
    v30 = HMFGetLogIdentifier();
    *buf = 138543618;
    v39 = v30;
    v40 = 2112;
    v41 = identifierCopy;
    _os_log_impl(&dword_2531F8000, v29, OS_LOG_TYPE_ERROR, "%{public}@Failed to determine the model identifier for a current accessory with identifier: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v27);
  v24 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:2];
  [messageCopy respondWithError:v24];
  uuid = 0;
LABEL_22:

  v31 = *MEMORY[0x277D85DE8];
}

@end