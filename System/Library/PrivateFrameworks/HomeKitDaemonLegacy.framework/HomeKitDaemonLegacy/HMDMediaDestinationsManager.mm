@interface HMDMediaDestinationsManager
+ (id)deriveAudioGroupIdentifierFromDestinations:(id)destinations;
+ (id)logCategory;
+ (unint64_t)deriveSupportedOptionsFromDestinations:(id)destinations;
- (BOOL)messageHandler:(id)handler isReadyForIncomingMessage:(id)message;
- (HMDMediaDestinationsManager)initWithDestination:(id)destination messageDispatcher:(id)dispatcher notificationCenter:(id)center dataSource:(id)source delegate:(id)delegate;
- (HMDMediaDestinationsManager)initWithDestination:(id)destination messageHandler:(id)handler dataSource:(id)source delegate:(id)delegate;
- (HMDMediaDestinationsManagerDataSource)dataSource;
- (HMDMediaDestinationsManagerDelegate)delegate;
- (NSUUID)identifier;
- (id)attributeDescriptions;
- (id)dataSourceAssociatedDestinationManagers;
- (id)dataSourceAssociatedDestinations;
- (id)dataSourceDestinationControllerWithIdentifier:(id)identifier;
- (id)dataSourceTargetAccessory;
- (id)defaultDestination;
- (id)deriveAudioDestination;
- (id)logIdentifier;
- (id)mediaGroupsAggregatorMessenger;
- (id)messageHandler:(id)handler deviceForOutgoingMessage:(id)message;
- (id)messageHandler:(id)handler shouldRelayIncomingMessage:(id)message;
- (id)sendRequestsToUpdateAudioGroupIdentifier:(id)identifier;
- (id)sendRequestsToUpdateSupportOptions:(unint64_t)options;
- (void)configureWithHome:(id)home;
- (void)legacyRequestToUpdateAudioGroupIdentifier:(id)identifier completion:(id)completion;
- (void)mediaDestinationMessageHandler:(id)handler didReceiveUpdateAudioGroupIdentifierRequestMessage:(id)message audioGroupIdentifier:(id)identifier;
- (void)mediaDestinationMessageHandler:(id)handler didReceiveUpdateSupportedOptionsRequestMessage:(id)message supportOptions:(unint64_t)options;
- (void)mediaDestinationsMessageHandler:(id)handler didReceiveDestinationUpdatedNotification:(id)notification destination:(id)destination;
- (void)mergeDestination:(id)destination;
- (void)refreshDestination;
- (void)requestToUpdateAudioGroupIdentifier:(id)identifier completion:(id)completion;
- (void)stageAudioGroupIdentifier:(id)identifier;
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
  identifier = [(HMDMediaDestinationsManager *)self identifier];
  uUIDString = [identifier UUIDString];

  return uUIDString;
}

- (id)attributeDescriptions
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  identifier = [(HMDMediaDestinationsManager *)self identifier];
  v5 = [v3 initWithName:@"identifier" value:identifier];
  v9[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)mediaDestinationsMessageHandler:(id)handler didReceiveDestinationUpdatedNotification:(id)notification destination:(id)destination
{
  v20 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  notificationCopy = notification;
  destinationCopy = destination;
  if (!isFeatureHomeTheaterQFAEnabledForTests || ([isFeatureHomeTheaterQFAEnabledForTests BOOLValue] & 1) == 0)
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      v16 = 138543618;
      v17 = v14;
      v18 = 2112;
      v19 = destinationCopy;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@Refreshing manager due to updated destination notification with destination: %@", &v16, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    [(HMDMediaDestinationsManager *)selfCopy refreshDestination];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)mediaDestinationMessageHandler:(id)handler didReceiveUpdateSupportedOptionsRequestMessage:(id)message supportOptions:(unint64_t)options
{
  messageCopy = message;
  v8 = [(HMDMediaDestinationsManager *)self sendRequestsToUpdateSupportOptions:options];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __124__HMDMediaDestinationsManager_mediaDestinationMessageHandler_didReceiveUpdateSupportedOptionsRequestMessage_supportOptions___block_invoke;
  v15[3] = &unk_2797358C8;
  v15[4] = self;
  v9 = messageCopy;
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

- (void)mediaDestinationMessageHandler:(id)handler didReceiveUpdateAudioGroupIdentifierRequestMessage:(id)message audioGroupIdentifier:(id)identifier
{
  messageCopy = message;
  v8 = [(HMDMediaDestinationsManager *)self sendRequestsToUpdateAudioGroupIdentifier:identifier];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __134__HMDMediaDestinationsManager_mediaDestinationMessageHandler_didReceiveUpdateAudioGroupIdentifierRequestMessage_audioGroupIdentifier___block_invoke;
  v15[3] = &unk_2797358C8;
  v15[4] = self;
  v9 = messageCopy;
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

- (BOOL)messageHandler:(id)handler isReadyForIncomingMessage:(id)message
{
  v4 = [(HMDMediaDestinationsManager *)self destination:handler];
  v5 = [v4 supportedOptions] != 0;

  return v5;
}

- (id)messageHandler:(id)handler shouldRelayIncomingMessage:(id)message
{
  v19 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  messageCopy = message;
  dataSourceTargetAccessory = [(HMDMediaDestinationsManager *)self dataSourceTargetAccessory];
  v9 = dataSourceTargetAccessory;
  if (dataSourceTargetAccessory)
  {
    v10 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(dataSourceTargetAccessory, "isCurrentAccessory") ^ 1}];
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy = self;
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

- (id)messageHandler:(id)handler deviceForOutgoingMessage:(id)message
{
  v19 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  messageCopy = message;
  dataSourceTargetAccessory = [(HMDMediaDestinationsManager *)self dataSourceTargetAccessory];
  v9 = dataSourceTargetAccessory;
  if (dataSourceTargetAccessory)
  {
    deviceForDirectMessaging = [dataSourceTargetAccessory deviceForDirectMessaging];
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v17 = 138543362;
      v18 = v14;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_ERROR, "%{public}@Failed to get device for message due to no target accessory", &v17, 0xCu);
    }

    objc_autoreleasePoolPop(v11);
    deviceForDirectMessaging = 0;
  }

  v15 = *MEMORY[0x277D85DE8];

  return deviceForDirectMessaging;
}

- (id)dataSourceDestinationControllerWithIdentifier:(id)identifier
{
  v16 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  dataSource = [(HMDMediaDestinationsManager *)self dataSource];
  v6 = dataSource;
  if (dataSource)
  {
    v7 = [dataSource mediaDestinationsManager:self destinationControllerWithIdentifier:identifierCopy];
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
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
  dataSource = [(HMDMediaDestinationsManager *)self dataSource];
  v4 = dataSource;
  if (dataSource)
  {
    v5 = [dataSource targetAccessoryForMediaDestinationManager:self];
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
  dataSource = [(HMDMediaDestinationsManager *)self dataSource];
  v4 = dataSource;
  if (dataSource)
  {
    v5 = [dataSource associatedDestinationManagersForMediaDestinationsManager:self];
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
  dataSourceAssociatedDestinationManagers = [(HMDMediaDestinationsManager *)self dataSourceAssociatedDestinationManagers];
  v3 = [dataSourceAssociatedDestinationManagers na_map:&__block_literal_global_3562];

  return v3;
}

- (id)mediaGroupsAggregatorMessenger
{
  v14 = *MEMORY[0x277D85DE8];
  dataSource = [(HMDMediaDestinationsManager *)self dataSource];
  v4 = dataSource;
  if (dataSource)
  {
    v5 = [dataSource mediaGroupsAggregatorMessengerForMediaDestinationsManager:self];
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
  destination = [(HMDMediaDestinationsManager *)self destination];
  v3 = objc_alloc(MEMORY[0x277CD1B80]);
  uniqueIdentifier = [destination uniqueIdentifier];
  parentIdentifier = [destination parentIdentifier];
  v6 = [v3 initWithUniqueIdentifier:uniqueIdentifier parentIdentifier:parentIdentifier supportedOptions:0];

  return v6;
}

- (id)deriveAudioDestination
{
  v19 = *MEMORY[0x277D85DE8];
  dataSourceAssociatedDestinations = [(HMDMediaDestinationsManager *)self dataSourceAssociatedDestinations];
  if (dataSourceAssociatedDestinations)
  {
    destination = [(HMDMediaDestinationsManager *)self destination];
    v5 = [HMDMediaDestinationsManager deriveSupportedOptionsFromDestinations:dataSourceAssociatedDestinations];
    v6 = [HMDMediaDestinationsManager deriveAudioGroupIdentifierFromDestinations:dataSourceAssociatedDestinations];
    v7 = objc_alloc(MEMORY[0x277CD1B80]);
    uniqueIdentifier = [destination uniqueIdentifier];
    parentIdentifier = [destination parentIdentifier];
    defaultDestination = [v7 initWithUniqueIdentifier:uniqueIdentifier parentIdentifier:parentIdentifier supportedOptions:v5 audioGroupIdentifier:v6];
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      v17 = 138543362;
      v18 = v14;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@Derived default destination due to no associated destinations", &v17, 0xCu);
    }

    objc_autoreleasePoolPop(v11);
    defaultDestination = [(HMDMediaDestinationsManager *)selfCopy defaultDestination];
  }

  v15 = *MEMORY[0x277D85DE8];

  return defaultDestination;
}

- (id)sendRequestsToUpdateAudioGroupIdentifier:(id)identifier
{
  v40 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  dataSourceAssociatedDestinationManagers = [(HMDMediaDestinationsManager *)self dataSourceAssociatedDestinationManagers];
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v6 = HMFGetOSLogHandle();
  v7 = v6;
  if (dataSourceAssociatedDestinationManagers)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      *buf = 138543874;
      v35 = v8;
      v36 = 2112;
      v37 = identifierCopy;
      v38 = 2112;
      v39 = dataSourceAssociatedDestinationManagers;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Sending request to update audio group identifier: %@ managers: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v5);
    v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v23 = dataSourceAssociatedDestinationManagers;
    obj = dataSourceAssociatedDestinationManagers;
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
          messageHandler = [v14 messageHandler];
          v27[0] = MEMORY[0x277D85DD0];
          v27[1] = 3221225472;
          v27[2] = __72__HMDMediaDestinationsManager_sendRequestsToUpdateAudioGroupIdentifier___block_invoke;
          v27[3] = &unk_279734D88;
          v27[4] = selfCopy;
          v27[5] = v14;
          v28 = v15;
          v17 = v15;
          [messageHandler sendRequestToUpdateAudioGroupIdentifier:identifierCopy completion:v27];
        }

        v11 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v11);
    }

    v18 = [MEMORY[0x277D2C900] chainFutures:v9];
    dataSourceAssociatedDestinationManagers = v23;
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

- (id)sendRequestsToUpdateSupportOptions:(unint64_t)options
{
  v41 = *MEMORY[0x277D85DE8];
  dataSourceAssociatedDestinationManagers = [(HMDMediaDestinationsManager *)self dataSourceAssociatedDestinationManagers];
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v6 = HMFGetOSLogHandle();
  v7 = v6;
  if (dataSourceAssociatedDestinationManagers)
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
      v40 = dataSourceAssociatedDestinationManagers;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Sending request to update supported options: %@ managers: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v5);
    v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v24 = dataSourceAssociatedDestinationManagers;
    obj = dataSourceAssociatedDestinationManagers;
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
          messageHandler = [v15 messageHandler];
          v28[0] = MEMORY[0x277D85DD0];
          v28[1] = 3221225472;
          v28[2] = __66__HMDMediaDestinationsManager_sendRequestsToUpdateSupportOptions___block_invoke;
          v28[3] = &unk_279734D88;
          v28[4] = selfCopy;
          v28[5] = v15;
          v29 = v16;
          v18 = v16;
          [messageHandler sendRequestToUpdateSupportOptions:options completion:v28];
        }

        v12 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
      }

      while (v12);
    }

    v19 = [MEMORY[0x277D2C900] chainFutures:v10];
    dataSourceAssociatedDestinationManagers = v24;
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
  destination = [(HMDMediaDestinationsManager *)self destination];
  uniqueIdentifier = [destination uniqueIdentifier];

  return uniqueIdentifier;
}

- (void)refreshDestination
{
  v27 = *MEMORY[0x277D85DE8];
  if (!isFeatureHomeTheaterQFAEnabledForTests || ([isFeatureHomeTheaterQFAEnabledForTests BOOLValue] & 1) == 0)
  {
    v3 = objc_autoreleasePoolPush();
    selfCopy = self;
    v5 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = HMFGetLogIdentifier();
      v21 = 138543362;
      v22 = v6;
      _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@Refreshing destination", &v21, 0xCu);
    }

    objc_autoreleasePoolPop(v3);
    destination = [(HMDMediaDestinationsManager *)selfCopy destination];
    deriveAudioDestination = [(HMDMediaDestinationsManager *)selfCopy deriveAudioDestination];
    if ((HMFEqualObjects() & 1) == 0)
    {
      v9 = objc_autoreleasePoolPush();
      v10 = selfCopy;
      v11 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = HMFGetLogIdentifier();
        v21 = 138543874;
        v22 = v12;
        v23 = 2112;
        v24 = destination;
        v25 = 2112;
        v26 = deriveAudioDestination;
        _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Updating audio destination: %@ with derived audio destination: %@", &v21, 0x20u);
      }

      objc_autoreleasePoolPop(v9);
      [(HMDMediaDestinationsManager *)v10 setDestination:deriveAudioDestination];
      messageHandler = [(HMDMediaDestinationsManager *)v10 messageHandler];
      [messageHandler handleUpdatedDestination:deriveAudioDestination];

      delegate = [(HMDMediaDestinationsManager *)v10 delegate];
      v15 = delegate;
      if (delegate)
      {
        [delegate mediaDestinationsManager:v10 didUpdateDestination:deriveAudioDestination];
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

- (void)mergeDestination:(id)destination
{
  v16 = *MEMORY[0x277D85DE8];
  destinationCopy = destination;
  destination = [(HMDMediaDestinationsManager *)self destination];
  v6 = [destination isEqual:destinationCopy];

  if ((v6 & 1) == 0)
  {
    v7 = objc_autoreleasePoolPush();
    selfCopy = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v12 = 138543618;
      v13 = v10;
      v14 = 2112;
      v15 = destinationCopy;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Merging destination: %@", &v12, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    [(HMDMediaDestinationsManager *)selfCopy setDestination:destinationCopy];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)legacyRequestToUpdateAudioGroupIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  identifierCopy = identifier;
  messageHandler = [(HMDMediaDestinationsManager *)self messageHandler];
  [messageHandler sendRequestToUpdateAudioGroupIdentifier:identifierCopy completion:completionCopy];
}

- (void)requestToUpdateAudioGroupIdentifier:(id)identifier completion:(id)completion
{
  v24 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  completionCopy = completion;
  if (isFeatureHomeTheaterQFAEnabledForTests && ([isFeatureHomeTheaterQFAEnabledForTests BOOLValue] & 1) != 0)
  {
    mediaGroupsAggregatorMessenger = [(HMDMediaDestinationsManager *)self mediaGroupsAggregatorMessenger];
    if (mediaGroupsAggregatorMessenger)
    {
      destination = [(HMDMediaDestinationsManager *)self destination];
      parentIdentifier = [destination parentIdentifier];
      [mediaGroupsAggregatorMessenger sendRequestToUpdateAssociatedGroupIdentifier:identifierCopy forGroupIdentifier:parentIdentifier completion:completionCopy];
    }

    else
    {
      v15 = objc_autoreleasePoolPush();
      selfCopy = self;
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = HMFGetLogIdentifier();
        v20 = 138543618;
        v21 = v18;
        v22 = 2112;
        v23 = identifierCopy;
        _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_ERROR, "%{public}@Failed to request update audio group identifier: %@ due to no aggregator messenger", &v20, 0x16u);
      }

      objc_autoreleasePoolPop(v15);
      destination = [MEMORY[0x277CCA9B8] hmErrorWithCode:21];
      completionCopy[2](completionCopy, destination);
    }
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      v20 = 138543362;
      v21 = v14;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@HT QFA is not enabled", &v20, 0xCu);
    }

    objc_autoreleasePoolPop(v11);
    [(HMDMediaDestinationsManager *)selfCopy2 legacyRequestToUpdateAudioGroupIdentifier:identifierCopy completion:completionCopy];
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)stageAudioGroupIdentifier:(id)identifier
{
  v21 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  if (!isFeatureHomeTheaterQFAEnabledForTests || ([isFeatureHomeTheaterQFAEnabledForTests BOOLValue] & 1) == 0)
  {
    v5 = objc_autoreleasePoolPush();
    selfCopy = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      *buf = 138543618;
      v18 = v8;
      v19 = 2112;
      v20 = identifierCopy;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Stageing audio group identifier: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    dataSourceAssociatedDestinationManagers = [(HMDMediaDestinationsManager *)selfCopy dataSourceAssociatedDestinationManagers];
    if (dataSourceAssociatedDestinationManagers)
    {
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __57__HMDMediaDestinationsManager_stageAudioGroupIdentifier___block_invoke;
      v15[3] = &unk_279721008;
      v16 = identifierCopy;
      [dataSourceAssociatedDestinationManagers na_each:v15];
      [(HMDMediaDestinationsManager *)selfCopy refreshDestination];
    }

    else
    {
      v10 = objc_autoreleasePoolPush();
      v11 = selfCopy;
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

- (void)configureWithHome:(id)home
{
  v18 = *MEMORY[0x277D85DE8];
  homeCopy = home;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    committedDestination = [(HMDMediaDestinationsManager *)selfCopy committedDestination];
    v12 = 138543874;
    v13 = v8;
    v14 = 2112;
    v15 = selfCopy;
    v16 = 2112;
    v17 = committedDestination;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Configuring destinations manager: %@ destination: %@", &v12, 0x20u);
  }

  objc_autoreleasePoolPop(v5);
  messageHandler = [(HMDMediaDestinationsManager *)selfCopy messageHandler];
  [messageHandler configureWithHome:homeCopy];

  [(HMDMediaDestinationsManager *)selfCopy refreshDestination];
  v11 = *MEMORY[0x277D85DE8];
}

- (HMDMediaDestinationsManager)initWithDestination:(id)destination messageHandler:(id)handler dataSource:(id)source delegate:(id)delegate
{
  destinationCopy = destination;
  handlerCopy = handler;
  sourceCopy = source;
  delegateCopy = delegate;
  if (!destinationCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_7;
  }

  if (!handlerCopy)
  {
LABEL_7:
    v19 = _HMFPreconditionFailure();
    return [(HMDMediaDestinationsManager *)v19 initWithDestination:v20 messageDispatcher:v21 notificationCenter:v22 dataSource:v23 delegate:v24, v25];
  }

  v15 = delegateCopy;
  v26.receiver = self;
  v26.super_class = HMDMediaDestinationsManager;
  v16 = [(HMDMediaDestinationsManager *)&v26 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_destination, destination);
    objc_storeStrong(&v17->_messageHandler, handler);
    objc_storeWeak(&v17->_dataSource, sourceCopy);
    objc_storeWeak(&v17->_delegate, v15);
  }

  return v17;
}

- (HMDMediaDestinationsManager)initWithDestination:(id)destination messageDispatcher:(id)dispatcher notificationCenter:(id)center dataSource:(id)source delegate:(id)delegate
{
  delegateCopy = delegate;
  sourceCopy = source;
  centerCopy = center;
  dispatcherCopy = dispatcher;
  destinationCopy = destination;
  v17 = [[HMDMediaDestinationsMessageHandler alloc] initWithDestination:destinationCopy messageDispatcher:dispatcherCopy notificationCenter:centerCopy dataSource:self delegate:self];

  v18 = [(HMDMediaDestinationsManager *)self initWithDestination:destinationCopy messageHandler:v17 dataSource:sourceCopy delegate:delegateCopy];
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

+ (id)deriveAudioGroupIdentifierFromDestinations:(id)destinations
{
  destinationsCopy = destinations;
  firstObject = [destinationsCopy firstObject];
  audioGroupIdentifier = [firstObject audioGroupIdentifier];

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __74__HMDMediaDestinationsManager_deriveAudioGroupIdentifierFromDestinations___block_invoke;
  v10[3] = &unk_27972DFC0;
  v11 = audioGroupIdentifier;
  v6 = audioGroupIdentifier;
  LODWORD(audioGroupIdentifier) = [destinationsCopy na_allObjectsPassTest:v10];

  if (audioGroupIdentifier)
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

+ (unint64_t)deriveSupportedOptionsFromDestinations:(id)destinations
{
  v17 = *MEMORY[0x277D85DE8];
  destinationsCopy = destinations;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [destinationsCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(destinationsCopy);
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

      v5 = [destinationsCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
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