@interface HMDSiriEndpointProfileMessageHandler
+ (id)logCategory;
- (HMDSiriEndpointProfileMessageHandler)initWithHomeUUID:(id)d;
- (HMDSiriEndpointProfileMessageHandlerDataSource)dataSource;
- (id)dataSourceHubAccessories;
- (id)dataSourceSiriEndpointOnboardingManager;
- (id)deleteHistoryForAccessoryUUID:(id)d onHubAccessories:(id)accessories;
- (id)deleteHistoryForAccessoryUUID:(id)d onHubAccessory:(id)accessory;
- (id)logIdentifier;
- (void)handleSiriEndpointApplyOnboardingSelectionsRequestMessage:(id)message;
- (void)handleSiriEndpointDeleteSiriHistoryRequestMessage:(id)message;
@end

@implementation HMDSiriEndpointProfileMessageHandler

- (HMDSiriEndpointProfileMessageHandlerDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (id)logIdentifier
{
  homeUUID = [(HMDSiriEndpointProfileMessageHandler *)self homeUUID];
  uUIDString = [homeUUID UUIDString];

  return uUIDString;
}

- (id)dataSourceHubAccessories
{
  v14 = *MEMORY[0x277D85DE8];
  dataSource = [(HMDSiriEndpointProfileMessageHandler *)self dataSource];
  if (dataSource)
  {
    homeUUID = [(HMDSiriEndpointProfileMessageHandler *)self homeUUID];
    v5 = [dataSource hubAccessoriesWithHomeUUID:homeUUID forSiriEndpointProfileMessageHandler:self];
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
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_ERROR, "%{public}@Failed to data source hub accessories due to no data source", &v12, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    v5 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)dataSourceSiriEndpointOnboardingManager
{
  v14 = *MEMORY[0x277D85DE8];
  dataSource = [(HMDSiriEndpointProfileMessageHandler *)self dataSource];
  v4 = dataSource;
  if (dataSource)
  {
    v5 = [dataSource siriEndpointOnboardingManagerForSiriEndpointProfileMessageHandler:self];
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
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_ERROR, "%{public}@Failed to data source Siri Endpoint Onboarding Manager due to no data source", &v12, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    v5 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)deleteHistoryForAccessoryUUID:(id)d onHubAccessory:(id)accessory
{
  v5 = MEMORY[0x277D2C900];
  accessoryCopy = accessory;
  dCopy = d;
  v8 = objc_alloc_init(v5);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __85__HMDSiriEndpointProfileMessageHandler_deleteHistoryForAccessoryUUID_onHubAccessory___block_invoke;
  v11[3] = &unk_27868A250;
  v9 = v8;
  v12 = v9;
  [accessoryCopy deleteSiriHistoryForAccessoryWithUUID:dCopy completionHandler:v11];

  return v9;
}

uint64_t __85__HMDSiriEndpointProfileMessageHandler_deleteHistoryForAccessoryUUID_onHubAccessory___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    return [v2 finishWithError:a2];
  }

  else
  {
    return [v2 finishWithNoResult];
  }
}

- (id)deleteHistoryForAccessoryUUID:(id)d onHubAccessories:(id)accessories
{
  v34 = *MEMORY[0x277D85DE8];
  dCopy = d;
  accessoriesCopy = accessories;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543874;
    v29 = v11;
    v30 = 2112;
    v31 = dCopy;
    v32 = 2112;
    v33 = accessoriesCopy;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Deleting siri history for accessory UUID: %@ on hub accessories: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  v12 = objc_alloc_init(MEMORY[0x277D2C900]);
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __87__HMDSiriEndpointProfileMessageHandler_deleteHistoryForAccessoryUUID_onHubAccessories___block_invoke;
  v25[3] = &unk_278671F38;
  v25[4] = selfCopy;
  v26 = dCopy;
  v13 = v12;
  v27 = v13;
  v14 = dCopy;
  v15 = [accessoriesCopy na_map:v25];
  v16 = [MEMORY[0x277D2C900] chainFutures:v15];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __87__HMDSiriEndpointProfileMessageHandler_deleteHistoryForAccessoryUUID_onHubAccessories___block_invoke_4;
  v23[3] = &unk_278687CC0;
  v17 = v13;
  v24 = v17;
  v18 = [v16 addCompletionBlock:v23];
  v19 = v24;
  v20 = v17;

  v21 = *MEMORY[0x277D85DE8];
  return v17;
}

id __87__HMDSiriEndpointProfileMessageHandler_deleteHistoryForAccessoryUUID_onHubAccessories___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277D2C900];
  v4 = a2;
  v5 = objc_alloc_init(v3);
  v6 = [*(a1 + 32) deleteHistoryForAccessoryUUID:*(a1 + 40) onHubAccessory:v4];

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __87__HMDSiriEndpointProfileMessageHandler_deleteHistoryForAccessoryUUID_onHubAccessories___block_invoke_2;
  v15[3] = &unk_27868A200;
  v16 = *(a1 + 48);
  v7 = [v6 addSuccessBlock:v15];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __87__HMDSiriEndpointProfileMessageHandler_deleteHistoryForAccessoryUUID_onHubAccessories___block_invoke_3;
  v13[3] = &unk_278687CC0;
  v8 = v5;
  v14 = v8;
  v9 = [v6 addCompletionBlock:v13];
  v10 = v14;
  v11 = v8;

  return v8;
}

void __87__HMDSiriEndpointProfileMessageHandler_deleteHistoryForAccessoryUUID_onHubAccessories___block_invoke_4(uint64_t a1)
{
  if (([*(a1 + 32) isFinished] & 1) == 0)
  {
    v2 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:18];
    [*(a1 + 32) finishWithError:v2];
  }
}

- (void)handleSiriEndpointDeleteSiriHistoryRequestMessage:(id)message
{
  v45 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543618;
    v40 = v8;
    v41 = 2112;
    v42 = messageCopy;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Handle siri endpoint delete siri history request message: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  messagePayload = [messageCopy messagePayload];
  if (messagePayload)
  {
    v10 = [objc_alloc(MEMORY[0x277CD1E18]) initWithPayload:messagePayload];
    if (v10)
    {
      dataSourceHubAccessories = [(HMDSiriEndpointProfileMessageHandler *)selfCopy dataSourceHubAccessories];
      if (dataSourceHubAccessories)
      {
        accessoryUUID = [v10 accessoryUUID];
        v13 = [(HMDSiriEndpointProfileMessageHandler *)selfCopy deleteHistoryForAccessoryUUID:accessoryUUID onHubAccessories:dataSourceHubAccessories];
        v35[0] = MEMORY[0x277D85DD0];
        v35[1] = 3221225472;
        v35[2] = __90__HMDSiriEndpointProfileMessageHandler_handleSiriEndpointDeleteSiriHistoryRequestMessage___block_invoke;
        v35[3] = &unk_278683340;
        v35[4] = selfCopy;
        v14 = accessoryUUID;
        v36 = v14;
        v37 = dataSourceHubAccessories;
        v15 = messageCopy;
        v38 = v15;
        v16 = [v13 addFailureBlock:v35];
        v32[0] = MEMORY[0x277D85DD0];
        v32[1] = 3221225472;
        v32[2] = __90__HMDSiriEndpointProfileMessageHandler_handleSiriEndpointDeleteSiriHistoryRequestMessage___block_invoke_6;
        v32[3] = &unk_2786835C0;
        v32[4] = selfCopy;
        v33 = v14;
        v34 = v15;
        v17 = v14;
        v18 = [v13 addSuccessBlock:v32];
      }

      else
      {
        v13 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:4];
        v27 = objc_autoreleasePoolPush();
        v28 = selfCopy;
        v29 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          v30 = HMFGetLogIdentifier();
          *buf = 138543874;
          v40 = v30;
          v41 = 2112;
          v42 = messageCopy;
          v43 = 2112;
          v44 = v13;
          _os_log_impl(&dword_229538000, v29, OS_LOG_TYPE_ERROR, "%{public}@Failed to get hub accessories to handle delete siri history request message: %@ error: %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v27);
        [messageCopy respondWithError:v13];
      }
    }

    else
    {
      dataSourceHubAccessories = [MEMORY[0x277CCA9B8] hmfErrorWithCode:15];
      v23 = objc_autoreleasePoolPush();
      v24 = selfCopy;
      v25 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v26 = HMFGetLogIdentifier();
        *buf = 138543874;
        v40 = v26;
        v41 = 2112;
        v42 = messagePayload;
        v43 = 2112;
        v44 = dataSourceHubAccessories;
        _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_ERROR, "%{public}@Failed to decode message payload from delete siri history message payload: %@ error: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v23);
      [messageCopy respondWithError:dataSourceHubAccessories];
    }
  }

  else
  {
    v10 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:8];
    v19 = objc_autoreleasePoolPush();
    v20 = selfCopy;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier();
      *buf = 138543874;
      v40 = v22;
      v41 = 2112;
      v42 = messageCopy;
      v43 = 2112;
      v44 = v10;
      _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_ERROR, "%{public}@Failed to get message payload from delete siri history message: %@ error: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v19);
    [messageCopy respondWithError:v10];
  }

  v31 = *MEMORY[0x277D85DE8];
}

void __90__HMDSiriEndpointProfileMessageHandler_handleSiriEndpointDeleteSiriHistoryRequestMessage___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = HMFGetLogIdentifier();
    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    v11 = 138544130;
    v12 = v7;
    v13 = 2112;
    v14 = v8;
    v15 = 2112;
    v16 = v9;
    v17 = 2112;
    v18 = v3;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_ERROR, "%{public}@Delete siri history failed for accessory uuid: %@ using hub accessories: %@ error: %@", &v11, 0x2Au);
  }

  objc_autoreleasePoolPop(v4);
  [*(a1 + 56) respondWithError:v3];

  v10 = *MEMORY[0x277D85DE8];
}

void __90__HMDSiriEndpointProfileMessageHandler_handleSiriEndpointDeleteSiriHistoryRequestMessage___block_invoke_6(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v8 = *(a1 + 40);
    v10 = 138543618;
    v11 = v7;
    v12 = 2112;
    v13 = v8;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Delete siri history succeeded for accessory uuid: %@", &v10, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  [*(a1 + 48) respondWithSuccess];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)handleSiriEndpointApplyOnboardingSelectionsRequestMessage:(id)message
{
  v34 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543618;
    v31 = v8;
    v32 = 2112;
    v33 = messageCopy;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Handling siri endpoint apply onboarding selections request message: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  messagePayload = [messageCopy messagePayload];
  if (messagePayload)
  {
    v10 = [objc_alloc(MEMORY[0x277CD1E08]) initWithPayload:messagePayload];
    if (v10)
    {
      dataSourceSiriEndpointOnboardingManager = [(HMDSiriEndpointProfileMessageHandler *)selfCopy dataSourceSiriEndpointOnboardingManager];
      if (dataSourceSiriEndpointOnboardingManager)
      {
        hmf_zeroUUID = [MEMORY[0x277CCAD78] hmf_zeroUUID];
        dataSource = [(HMDSiriEndpointProfileMessageHandler *)selfCopy dataSource];
        homeUUID = [(HMDSiriEndpointProfileMessageHandler *)selfCopy homeUUID];
        v15 = [dataSource userUUIDForMessage:messageCopy homeUUID:homeUUID];

        onboardingSelections = [v10 onboardingSelections];
        accessoryUUID = [v10 accessoryUUID];
        homeUUID2 = [(HMDSiriEndpointProfileMessageHandler *)selfCopy homeUUID];
        v28[0] = MEMORY[0x277D85DD0];
        v28[1] = 3221225472;
        v28[2] = __98__HMDSiriEndpointProfileMessageHandler_handleSiriEndpointApplyOnboardingSelectionsRequestMessage___block_invoke;
        v28[3] = &unk_278671F10;
        v28[4] = selfCopy;
        v29 = messageCopy;
        [dataSourceSiriEndpointOnboardingManager applyOnboardingSelections:onboardingSelections accessoryUUID:accessoryUUID homeUUID:homeUUID2 userUUID:v15 completion:v28];
      }

      else
      {
        v15 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:3];
        [messageCopy respondWithError:v15];
      }
    }

    else
    {
      v23 = objc_autoreleasePoolPush();
      v24 = selfCopy;
      v25 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v26 = HMFGetLogIdentifier();
        *buf = 138543618;
        v31 = v26;
        v32 = 2112;
        v33 = messagePayload;
        _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_ERROR, "%{public}@Failed to decode onboarding message payload: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v23);
      dataSourceSiriEndpointOnboardingManager = [MEMORY[0x277CCA9B8] hmfErrorWithCode:3];
      [messageCopy respondWithError:dataSourceSiriEndpointOnboardingManager];
    }
  }

  else
  {
    v19 = objc_autoreleasePoolPush();
    v20 = selfCopy;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier();
      *buf = 138543618;
      v31 = v22;
      v32 = 2112;
      v33 = messageCopy;
      _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_ERROR, "%{public}@Failed to get onboarding message payload on message: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v19);
    v10 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:8];
    [messageCopy respondWithError:v10];
  }

  v27 = *MEMORY[0x277D85DE8];
}

void __98__HMDSiriEndpointProfileMessageHandler_handleSiriEndpointApplyOnboardingSelectionsRequestMessage___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = objc_autoreleasePoolPush();
  v7 = *(a1 + 32);
  v8 = HMFGetOSLogHandle();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_INFO);
  if (v5)
  {
    if (v9)
    {
      v10 = HMFGetLogIdentifier();
      v17 = 138543618;
      v18 = v10;
      v19 = 2112;
      v20 = v5;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Apply onboarding selections failed with error: %@", &v17, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    [*(a1 + 40) respondWithError:v5];
  }

  else
  {
    if (v9)
    {
      v11 = HMFGetLogIdentifier();
      v12 = HMSiriEndpointOnboardingResultAsString();
      v17 = 138543618;
      v18 = v11;
      v19 = 2112;
      v20 = v12;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Apply result received from onboarding manager: %@", &v17, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    v13 = [objc_alloc(MEMORY[0x277CD1E10]) initWithOnboardingResult:a3];
    v14 = *(a1 + 40);
    v15 = [v13 payloadCopy];
    [v14 respondWithPayload:v15];
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (HMDSiriEndpointProfileMessageHandler)initWithHomeUUID:(id)d
{
  dCopy = d;
  v9.receiver = self;
  v9.super_class = HMDSiriEndpointProfileMessageHandler;
  v6 = [(HMDSiriEndpointProfileMessageHandler *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_homeUUID, d);
  }

  return v7;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t14 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t14, &__block_literal_global_30346);
  }

  v3 = logCategory__hmf_once_v15;

  return v3;
}

void __51__HMDSiriEndpointProfileMessageHandler_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v15;
  logCategory__hmf_once_v15 = v1;
}

@end