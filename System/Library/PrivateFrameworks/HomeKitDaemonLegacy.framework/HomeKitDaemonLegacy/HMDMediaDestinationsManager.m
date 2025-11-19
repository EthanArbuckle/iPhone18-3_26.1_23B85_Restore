@interface HMDMediaDestinationsManager
+ (id)deriveAudioGroupIdentifierFromDestinations:(id)a3;
+ (id)logCategory;
+ (unint64_t)deriveSupportedOptionsFromDestinations:(id)a3;
- (BOOL)messageHandler:(id)a3 isReadyForIncomingMessage:(id)a4;
- (HMDMediaDestinationsManager)initWithDestination:(id)a3 messageDispatcher:(id)a4 notificationCenter:(id)a5 dataSource:(id)a6 delegate:(id)a7;
- (HMDMediaDestinationsManager)initWithDestination:(id)a3 messageHandler:(id)a4 dataSource:(id)a5 delegate:(id)a6;
- (HMDMediaDestinationsManagerDataSource)dataSource;
- (HMDMediaDestinationsManagerDelegate)delegate;
- (NSUUID)identifier;
- (id)attributeDescriptions;
- (id)dataSourceAssociatedDestinationManagers;
- (id)dataSourceAssociatedDestinations;
- (id)dataSourceDestinationControllerWithIdentifier:(id)a3;
- (id)dataSourceTargetAccessory;
- (id)defaultDestination;
- (id)deriveAudioDestination;
- (id)logIdentifier;
- (id)mediaGroupsAggregatorMessenger;
- (id)messageHandler:(id)a3 deviceForOutgoingMessage:(id)a4;
- (id)messageHandler:(id)a3 shouldRelayIncomingMessage:(id)a4;
- (id)sendRequestsToUpdateAudioGroupIdentifier:(id)a3;
- (id)sendRequestsToUpdateSupportOptions:(unint64_t)a3;
- (void)configureWithHome:(id)a3;
- (void)legacyRequestToUpdateAudioGroupIdentifier:(id)a3 completion:(id)a4;
- (void)mediaDestinationMessageHandler:(id)a3 didReceiveUpdateAudioGroupIdentifierRequestMessage:(id)a4 audioGroupIdentifier:(id)a5;
- (void)mediaDestinationMessageHandler:(id)a3 didReceiveUpdateSupportedOptionsRequestMessage:(id)a4 supportOptions:(unint64_t)a5;
- (void)mediaDestinationsMessageHandler:(id)a3 didReceiveDestinationUpdatedNotification:(id)a4 destination:(id)a5;
- (void)mergeDestination:(id)a3;
- (void)refreshDestination;
- (void)requestToUpdateAudioGroupIdentifier:(id)a3 completion:(id)a4;
- (void)stageAudioGroupIdentifier:(id)a3;
@end

@implementation HMDMediaDestinationsManager

- (HMDMediaDestinationsManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (HMDMediaDestinationsManagerDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (id)logIdentifier
{
  v2 = [(HMDMediaDestinationsManager *)self identifier];
  v3 = [v2 UUIDString];

  return v3;
}

- (id)attributeDescriptions
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  v4 = [(HMDMediaDestinationsManager *)self identifier];
  v5 = [v3 initWithName:@"identifier" value:v4];
  v9[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)mediaDestinationsMessageHandler:(id)a3 didReceiveDestinationUpdatedNotification:(id)a4 destination:(id)a5
{
  v20 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!isFeatureHomeTheaterQFAEnabledForTests || ([isFeatureHomeTheaterQFAEnabledForTests BOOLValue] & 1) == 0)
  {
    v11 = objc_autoreleasePoolPush();
    v12 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      v16 = 138543618;
      v17 = v14;
      v18 = 2112;
      v19 = v10;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@Refreshing manager due to updated destination notification with destination: %@", &v16, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    [(HMDMediaDestinationsManager *)v12 refreshDestination];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)mediaDestinationMessageHandler:(id)a3 didReceiveUpdateSupportedOptionsRequestMessage:(id)a4 supportOptions:(unint64_t)a5
{
  v7 = a4;
  v8 = [(HMDMediaDestinationsManager *)self sendRequestsToUpdateSupportOptions:a5];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __124__HMDMediaDestinationsManager_mediaDestinationMessageHandler_didReceiveUpdateSupportedOptionsRequestMessage_supportOptions___block_invoke;
  v15[3] = &unk_2797358C8;
  v15[4] = self;
  v9 = v7;
  v16 = v9;
  v10 = [v8 addFailureBlock:v15];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __124__HMDMediaDestinationsManager_mediaDestinationMessageHandler_didReceiveUpdateSupportedOptionsRequestMessage_supportOptions___block_invoke_16;
  v13[3] = &unk_279735918;
  v13[4] = self;
  v14 = v9;
  v11 = v9;
  v12 = [v8 addSuccessBlock:v13];
}

void __124__HMDMediaDestinationsManager_mediaDestinationMessageHandler_didReceiveUpdateSupportedOptionsRequestMessage_supportOptions___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = HMFGetLogIdentifier();
    v9 = 138543618;
    v10 = v7;
    v11 = 2112;
    v12 = v3;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_ERROR, "%{public}@Send update supported options requests finished with error: %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  [*(a1 + 40) respondWithError:v3];

  v8 = *MEMORY[0x277D85DE8];
}

void __124__HMDMediaDestinationsManager_mediaDestinationMessageHandler_didReceiveUpdateSupportedOptionsRequestMessage_supportOptions___block_invoke_16(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v9 = 138543362;
    v10 = v7;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Send update supported options requests finished", &v9, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  [*(a1 + 40) respondWithSuccess];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)mediaDestinationMessageHandler:(id)a3 didReceiveUpdateAudioGroupIdentifierRequestMessage:(id)a4 audioGroupIdentifier:(id)a5
{
  v7 = a4;
  v8 = [(HMDMediaDestinationsManager *)self sendRequestsToUpdateAudioGroupIdentifier:a5];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __134__HMDMediaDestinationsManager_mediaDestinationMessageHandler_didReceiveUpdateAudioGroupIdentifierRequestMessage_audioGroupIdentifier___block_invoke;
  v15[3] = &unk_2797358C8;
  v15[4] = self;
  v9 = v7;
  v16 = v9;
  v10 = [v8 addFailureBlock:v15];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __134__HMDMediaDestinationsManager_mediaDestinationMessageHandler_didReceiveUpdateAudioGroupIdentifierRequestMessage_audioGroupIdentifier___block_invoke_14;
  v13[3] = &unk_279735918;
  v13[4] = self;
  v14 = v9;
  v11 = v9;
  v12 = [v8 addSuccessBlock:v13];
}

void __134__HMDMediaDestinationsManager_mediaDestinationMessageHandler_didReceiveUpdateAudioGroupIdentifierRequestMessage_audioGroupIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = HMFGetLogIdentifier();
    v9 = 138543618;
    v10 = v7;
    v11 = 2112;
    v12 = v3;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_ERROR, "%{public}@Send update audio group identifier requests finished with error: %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  [*(a1 + 40) respondWithError:v3];

  v8 = *MEMORY[0x277D85DE8];
}

void __134__HMDMediaDestinationsManager_mediaDestinationMessageHandler_didReceiveUpdateAudioGroupIdentifierRequestMessage_audioGroupIdentifier___block_invoke_14(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v9 = 138543362;
    v10 = v7;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Send update audio group identifier requests finished", &v9, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  [*(a1 + 40) respondWithSuccess];

  v8 = *MEMORY[0x277D85DE8];
}

- (BOOL)messageHandler:(id)a3 isReadyForIncomingMessage:(id)a4
{
  v4 = [(HMDMediaDestinationsManager *)self destination:a3];
  v5 = [v4 supportedOptions] != 0;

  return v5;
}

- (id)messageHandler:(id)a3 shouldRelayIncomingMessage:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDMediaDestinationsManager *)self dataSourceTargetAccessory];
  v9 = v8;
  if (v8)
  {
    v10 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v8, "isCurrentAccessory") ^ 1}];
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    v12 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v17 = 138543362;
      v18 = v14;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_ERROR, "%{public}@Failed to get relay preference due to no target accessory", &v17, 0xCu);
    }

    objc_autoreleasePoolPop(v11);
    v10 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)messageHandler:(id)a3 deviceForOutgoingMessage:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDMediaDestinationsManager *)self dataSourceTargetAccessory];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 deviceForDirectMessaging];
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    v12 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v17 = 138543362;
      v18 = v14;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_ERROR, "%{public}@Failed to get device for message due to no target accessory", &v17, 0xCu);
    }

    objc_autoreleasePoolPop(v11);
    v10 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)dataSourceDestinationControllerWithIdentifier:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDMediaDestinationsManager *)self dataSource];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 mediaDestinationsManager:self destinationControllerWithIdentifier:v4];
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v9 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v14 = 138543362;
      v15 = v11;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to data source destination controller due to no data source", &v14, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
    v7 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)dataSourceTargetAccessory
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = [(HMDMediaDestinationsManager *)self dataSource];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 targetAccessoryForMediaDestinationManager:self];
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
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_ERROR, "%{public}@Failed to get target accessory due to no data source", &v12, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    v5 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)dataSourceAssociatedDestinationManagers
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = [(HMDMediaDestinationsManager *)self dataSource];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 associatedDestinationManagersForMediaDestinationsManager:self];
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
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_ERROR, "%{public}@Failed to derive destination due to no data source", &v12, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    v5 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)dataSourceAssociatedDestinations
{
  v2 = [(HMDMediaDestinationsManager *)self dataSourceAssociatedDestinationManagers];
  v3 = [v2 na_map:&__block_literal_global_3562];

  return v3;
}

- (id)mediaGroupsAggregatorMessenger
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = [(HMDMediaDestinationsManager *)self dataSource];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 mediaGroupsAggregatorMessengerForMediaDestinationsManager:self];
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
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_ERROR, "%{public}@Failed to get media groups aggregator messenger due to no data source", &v12, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    v5 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)defaultDestination
{
  v2 = [(HMDMediaDestinationsManager *)self destination];
  v3 = objc_alloc(MEMORY[0x277CD1B80]);
  v4 = [v2 uniqueIdentifier];
  v5 = [v2 parentIdentifier];
  v6 = [v3 initWithUniqueIdentifier:v4 parentIdentifier:v5 supportedOptions:0];

  return v6;
}

- (id)deriveAudioDestination
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = [(HMDMediaDestinationsManager *)self dataSourceAssociatedDestinations];
  if (v3)
  {
    v4 = [(HMDMediaDestinationsManager *)self destination];
    v5 = [HMDMediaDestinationsManager deriveSupportedOptionsFromDestinations:v3];
    v6 = [HMDMediaDestinationsManager deriveAudioGroupIdentifierFromDestinations:v3];
    v7 = objc_alloc(MEMORY[0x277CD1B80]);
    v8 = [v4 uniqueIdentifier];
    v9 = [v4 parentIdentifier];
    v10 = [v7 initWithUniqueIdentifier:v8 parentIdentifier:v9 supportedOptions:v5 audioGroupIdentifier:v6];
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    v12 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      v17 = 138543362;
      v18 = v14;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@Derived default destination due to no associated destinations", &v17, 0xCu);
    }

    objc_autoreleasePoolPop(v11);
    v10 = [(HMDMediaDestinationsManager *)v12 defaultDestination];
  }

  v15 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)sendRequestsToUpdateAudioGroupIdentifier:(id)a3
{
  v40 = *MEMORY[0x277D85DE8];
  v25 = a3;
  v4 = [(HMDMediaDestinationsManager *)self dataSourceAssociatedDestinationManagers];
  v5 = objc_autoreleasePoolPush();
  v26 = self;
  v6 = HMFGetOSLogHandle();
  v7 = v6;
  if (v4)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      *buf = 138543874;
      v35 = v8;
      v36 = 2112;
      v37 = v25;
      v38 = 2112;
      v39 = v4;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Sending request to update audio group identifier: %@ managers: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v5);
    v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v23 = v4;
    obj = v4;
    v10 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v30;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v30 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v29 + 1) + 8 * i);
          v15 = objc_alloc_init(MEMORY[0x277D2C900]);
          [v9 addObject:v15];
          v16 = [v14 messageHandler];
          v27[0] = MEMORY[0x277D85DD0];
          v27[1] = 3221225472;
          v27[2] = __72__HMDMediaDestinationsManager_sendRequestsToUpdateAudioGroupIdentifier___block_invoke;
          v27[3] = &unk_279734D88;
          v27[4] = v26;
          v27[5] = v14;
          v28 = v15;
          v17 = v15;
          [v16 sendRequestToUpdateAudioGroupIdentifier:v25 completion:v27];
        }

        v11 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v11);
    }

    v18 = [MEMORY[0x277D2C900] chainFutures:v9];
    v4 = v23;
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543362;
      v35 = v19;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_ERROR, "%{public}@Failed to send update supported options request to associated destinations due to no associated destinations", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
    v20 = MEMORY[0x277D2C900];
    v9 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:2];
    v18 = [v20 futureWithError:v9];
  }

  v21 = *MEMORY[0x277D85DE8];

  return v18;
}

void __72__HMDMediaDestinationsManager_sendRequestsToUpdateAudioGroupIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 32);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = HMFGetLogIdentifier();
      v8 = *(a1 + 40);
      v10 = 138543874;
      v11 = v7;
      v12 = 2112;
      v13 = v8;
      v14 = 2112;
      v15 = v3;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_ERROR, "%{public}@Send request to update audio group identifier for manager: %@ completed with error: %@", &v10, 0x20u);
    }

    objc_autoreleasePoolPop(v4);
    [*(a1 + 48) finishWithError:v3];
  }

  else
  {
    [*(a1 + 48) finishWithNoResult];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (id)sendRequestsToUpdateSupportOptions:(unint64_t)a3
{
  v41 = *MEMORY[0x277D85DE8];
  v4 = [(HMDMediaDestinationsManager *)self dataSourceAssociatedDestinationManagers];
  v5 = objc_autoreleasePoolPush();
  v27 = self;
  v6 = HMFGetOSLogHandle();
  v7 = v6;
  if (v4)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      v9 = HMMediaDestinationSupportOptionsAsString();
      *buf = 138543874;
      v36 = v8;
      v37 = 2112;
      v38 = v9;
      v39 = 2112;
      v40 = v4;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Sending request to update supported options: %@ managers: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v5);
    v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v24 = v4;
    obj = v4;
    v11 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v31;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v31 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v30 + 1) + 8 * i);
          v16 = objc_alloc_init(MEMORY[0x277D2C900]);
          [v10 addObject:v16];
          v17 = [v15 messageHandler];
          v28[0] = MEMORY[0x277D85DD0];
          v28[1] = 3221225472;
          v28[2] = __66__HMDMediaDestinationsManager_sendRequestsToUpdateSupportOptions___block_invoke;
          v28[3] = &unk_279734D88;
          v28[4] = v27;
          v28[5] = v15;
          v29 = v16;
          v18 = v16;
          [v17 sendRequestToUpdateSupportOptions:a3 completion:v28];
        }

        v12 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
      }

      while (v12);
    }

    v19 = [MEMORY[0x277D2C900] chainFutures:v10];
    v4 = v24;
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543362;
      v36 = v20;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_ERROR, "%{public}@Failed to send update supported options request to associated destinations due to no associated destinations", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
    v21 = MEMORY[0x277D2C900];
    v10 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:2];
    v19 = [v21 futureWithError:v10];
  }

  v22 = *MEMORY[0x277D85DE8];

  return v19;
}

void __66__HMDMediaDestinationsManager_sendRequestsToUpdateSupportOptions___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 32);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = HMFGetLogIdentifier();
      v8 = *(a1 + 40);
      v10 = 138543874;
      v11 = v7;
      v12 = 2112;
      v13 = v8;
      v14 = 2112;
      v15 = v3;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_ERROR, "%{public}@Send request to update support options for manager: %@ completed with error: %@", &v10, 0x20u);
    }

    objc_autoreleasePoolPop(v4);
    [*(a1 + 48) finishWithError:v3];
  }

  else
  {
    [*(a1 + 48) finishWithNoResult];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (NSUUID)identifier
{
  v2 = [(HMDMediaDestinationsManager *)self destination];
  v3 = [v2 uniqueIdentifier];

  return v3;
}

- (void)refreshDestination
{
  v27 = *MEMORY[0x277D85DE8];
  if (!isFeatureHomeTheaterQFAEnabledForTests || ([isFeatureHomeTheaterQFAEnabledForTests BOOLValue] & 1) == 0)
  {
    v3 = objc_autoreleasePoolPush();
    v4 = self;
    v5 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = HMFGetLogIdentifier();
      v21 = 138543362;
      v22 = v6;
      _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@Refreshing destination", &v21, 0xCu);
    }

    objc_autoreleasePoolPop(v3);
    v7 = [(HMDMediaDestinationsManager *)v4 destination];
    v8 = [(HMDMediaDestinationsManager *)v4 deriveAudioDestination];
    if ((HMFEqualObjects() & 1) == 0)
    {
      v9 = objc_autoreleasePoolPush();
      v10 = v4;
      v11 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = HMFGetLogIdentifier();
        v21 = 138543874;
        v22 = v12;
        v23 = 2112;
        v24 = v7;
        v25 = 2112;
        v26 = v8;
        _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Updating audio destination: %@ with derived audio destination: %@", &v21, 0x20u);
      }

      objc_autoreleasePoolPop(v9);
      [(HMDMediaDestinationsManager *)v10 setDestination:v8];
      v13 = [(HMDMediaDestinationsManager *)v10 messageHandler];
      [v13 handleUpdatedDestination:v8];

      v14 = [(HMDMediaDestinationsManager *)v10 delegate];
      v15 = v14;
      if (v14)
      {
        [v14 mediaDestinationsManager:v10 didUpdateDestination:v8];
      }

      else
      {
        v16 = objc_autoreleasePoolPush();
        v17 = v10;
        v18 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          v19 = HMFGetLogIdentifier();
          v21 = 138543362;
          v22 = v19;
          _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_ERROR, "%{public}@Failed to notify delegate of updated destination due to no delegate", &v21, 0xCu);
        }

        objc_autoreleasePoolPop(v16);
      }
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)mergeDestination:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDMediaDestinationsManager *)self destination];
  v6 = [v5 isEqual:v4];

  if ((v6 & 1) == 0)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v12 = 138543618;
      v13 = v10;
      v14 = 2112;
      v15 = v4;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Merging destination: %@", &v12, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    [(HMDMediaDestinationsManager *)v8 setDestination:v4];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)legacyRequestToUpdateAudioGroupIdentifier:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(HMDMediaDestinationsManager *)self messageHandler];
  [v8 sendRequestToUpdateAudioGroupIdentifier:v7 completion:v6];
}

- (void)requestToUpdateAudioGroupIdentifier:(id)a3 completion:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (isFeatureHomeTheaterQFAEnabledForTests && ([isFeatureHomeTheaterQFAEnabledForTests BOOLValue] & 1) != 0)
  {
    v8 = [(HMDMediaDestinationsManager *)self mediaGroupsAggregatorMessenger];
    if (v8)
    {
      v9 = [(HMDMediaDestinationsManager *)self destination];
      v10 = [v9 parentIdentifier];
      [v8 sendRequestToUpdateAssociatedGroupIdentifier:v6 forGroupIdentifier:v10 completion:v7];
    }

    else
    {
      v15 = objc_autoreleasePoolPush();
      v16 = self;
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = HMFGetLogIdentifier();
        v20 = 138543618;
        v21 = v18;
        v22 = 2112;
        v23 = v6;
        _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_ERROR, "%{public}@Failed to request update audio group identifier: %@ due to no aggregator messenger", &v20, 0x16u);
      }

      objc_autoreleasePoolPop(v15);
      v9 = [MEMORY[0x277CCA9B8] hmErrorWithCode:21];
      v7[2](v7, v9);
    }
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    v12 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      v20 = 138543362;
      v21 = v14;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@HT QFA is not enabled", &v20, 0xCu);
    }

    objc_autoreleasePoolPop(v11);
    [(HMDMediaDestinationsManager *)v12 legacyRequestToUpdateAudioGroupIdentifier:v6 completion:v7];
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)stageAudioGroupIdentifier:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!isFeatureHomeTheaterQFAEnabledForTests || ([isFeatureHomeTheaterQFAEnabledForTests BOOLValue] & 1) == 0)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      *buf = 138543618;
      v18 = v8;
      v19 = 2112;
      v20 = v4;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Stageing audio group identifier: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    v9 = [(HMDMediaDestinationsManager *)v6 dataSourceAssociatedDestinationManagers];
    if (v9)
    {
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __57__HMDMediaDestinationsManager_stageAudioGroupIdentifier___block_invoke;
      v15[3] = &unk_279721008;
      v16 = v4;
      [v9 na_each:v15];
      [(HMDMediaDestinationsManager *)v6 refreshDestination];
    }

    else
    {
      v10 = objc_autoreleasePoolPush();
      v11 = v6;
      v12 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = HMFGetLogIdentifier();
        *buf = 138543362;
        v18 = v13;
        _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_ERROR, "%{public}@Failed to stage audio group identifier due to no associated destination managers", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v10);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)configureWithHome:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = [(HMDMediaDestinationsManager *)v6 committedDestination];
    v12 = 138543874;
    v13 = v8;
    v14 = 2112;
    v15 = v6;
    v16 = 2112;
    v17 = v9;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Configuring destinations manager: %@ destination: %@", &v12, 0x20u);
  }

  objc_autoreleasePoolPop(v5);
  v10 = [(HMDMediaDestinationsManager *)v6 messageHandler];
  [v10 configureWithHome:v4];

  [(HMDMediaDestinationsManager *)v6 refreshDestination];
  v11 = *MEMORY[0x277D85DE8];
}

- (HMDMediaDestinationsManager)initWithDestination:(id)a3 messageHandler:(id)a4 dataSource:(id)a5 delegate:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if (!v11)
  {
    _HMFPreconditionFailure();
    goto LABEL_7;
  }

  if (!v12)
  {
LABEL_7:
    v19 = _HMFPreconditionFailure();
    return [(HMDMediaDestinationsManager *)v19 initWithDestination:v20 messageDispatcher:v21 notificationCenter:v22 dataSource:v23 delegate:v24, v25];
  }

  v15 = v14;
  v26.receiver = self;
  v26.super_class = HMDMediaDestinationsManager;
  v16 = [(HMDMediaDestinationsManager *)&v26 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_destination, a3);
    objc_storeStrong(&v17->_messageHandler, a4);
    objc_storeWeak(&v17->_dataSource, v13);
    objc_storeWeak(&v17->_delegate, v15);
  }

  return v17;
}

- (HMDMediaDestinationsManager)initWithDestination:(id)a3 messageDispatcher:(id)a4 notificationCenter:(id)a5 dataSource:(id)a6 delegate:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  v17 = [[HMDMediaDestinationsMessageHandler alloc] initWithDestination:v16 messageDispatcher:v15 notificationCenter:v14 dataSource:self delegate:self];

  v18 = [(HMDMediaDestinationsManager *)self initWithDestination:v16 messageHandler:v17 dataSource:v13 delegate:v12];
  return v18;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t27 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t27, &__block_literal_global_24);
  }

  v3 = logCategory__hmf_once_v28;

  return v3;
}

uint64_t __42__HMDMediaDestinationsManager_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  logCategory__hmf_once_v28 = HMFCreateOSLogHandle();

  return MEMORY[0x2821F96F8]();
}

+ (id)deriveAudioGroupIdentifierFromDestinations:(id)a3
{
  v3 = a3;
  v4 = [v3 firstObject];
  v5 = [v4 audioGroupIdentifier];

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __74__HMDMediaDestinationsManager_deriveAudioGroupIdentifierFromDestinations___block_invoke;
  v10[3] = &unk_27972DFC0;
  v11 = v5;
  v6 = v5;
  LODWORD(v5) = [v3 na_allObjectsPassTest:v10];

  if (v5)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  return v7;
}

uint64_t __74__HMDMediaDestinationsManager_deriveAudioGroupIdentifierFromDestinations___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 audioGroupIdentifier];
  v4 = [v2 hmf_isEqualToUUID:v3];

  return v4;
}

+ (unint64_t)deriveSupportedOptionsFromDestinations:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    v7 = 77;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if (![v9 containsSupportedOptions:1])
        {
          v7 &= ~1uLL;
        }

        if (![v9 containsSupportedOptions:8])
        {
          v7 &= ~8uLL;
        }

        if (![v9 containsSupportedOptions:4])
        {
          v7 &= ~4uLL;
        }

        if (![v9 containsSupportedOptions:64])
        {
          v7 &= ~0x40uLL;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  else
  {
    v7 = 77;
  }

  v10 = *MEMORY[0x277D85DE8];
  return v7;
}

@end