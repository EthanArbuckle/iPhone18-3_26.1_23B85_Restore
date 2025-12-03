@interface HMDMediaDestinationManager
+ (id)logCategory;
- (HMDMediaDestinationManager)initWithDestination:(id)destination messageDispatcher:(id)dispatcher notificationCenter:(id)center backingStore:(id)store targetDevice:(BOOL)device dataSource:(id)source delegate:(id)delegate;
- (HMDMediaDestinationManager)initWithDestination:(id)destination messageHandler:(id)handler backingStoreHandler:(id)storeHandler metricsDispatcher:(id)dispatcher targetDevice:(BOOL)device dataSource:(id)source delegate:(id)delegate;
- (HMDMediaDestinationManagerDataSource)dataSource;
- (HMDMediaDestinationManagerDelegate)delegate;
- (HMMediaDestination)committedDestination;
- (HMMediaDestination)destination;
- (id)attributeDescriptions;
- (id)dataSourceDestinationControllerWithIdentifier:(id)identifier;
- (id)dataSourceRootDestinationManager;
- (id)dataSourceTargetAccessory;
- (id)legacyUpdateAudioGroupIdentifier:(id)identifier;
- (id)legacyUpdateSupportedOptions:(unint64_t)options;
- (id)logIdentifier;
- (id)mediaGroupParticipantLocalDataStorage;
- (id)messageHandler:(id)handler deviceForOutgoingMessage:(id)message;
- (id)messageHandler:(id)handler shouldRelayIncomingMessage:(id)message;
- (id)updateAudioGroupIdentifier:(id)identifier;
- (id)updateSupportedOptions:(unint64_t)options;
- (void)configureWithHome:(id)home currentAccessory:(BOOL)accessory;
- (void)mediaDestinationBackingStoreHandler:(id)handler didUpdateDestination:(id)destination;
- (void)mediaDestinationMessageHandler:(id)handler didReceiveUpdateAudioGroupIdentifierRequestMessage:(id)message audioGroupIdentifier:(id)identifier;
- (void)mediaDestinationMessageHandler:(id)handler didReceiveUpdateSupportedOptionsRequestMessage:(id)message supportOptions:(unint64_t)options;
- (void)mergeDestination:(id)destination;
- (void)migrateWithHome:(id)home cloudZone:(id)zone migrationQueue:(id)queue completion:(id)completion;
- (void)notifyDelegateDidUpdateStagedValues;
- (void)requestToUpdateAudioGroupIdentifier:(id)identifier completion:(id)completion;
- (void)stageAudioGroupIdentifier:(id)identifier;
- (void)stagedValue:(id)value didExpireValue:(id)expireValue;
- (void)triggerStageValueDidExpireValueForAudioDestinationIdentifier;
@end

@implementation HMDMediaDestinationManager

- (HMDMediaDestinationManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (HMDMediaDestinationManagerDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (void)stagedValue:(id)value didExpireValue:(id)expireValue
{
  v30 = *MEMORY[0x277D85DE8];
  valueCopy = value;
  expireValueCopy = expireValue;
  stagedAudioGroupIdentifier = [(HMDMediaDestinationManager *)self stagedAudioGroupIdentifier];

  if (stagedAudioGroupIdentifier == valueCopy)
  {
    v13 = expireValueCopy;
    committedDestination = [(HMDMediaDestinationManager *)self committedDestination];
    audioGroupIdentifier = [committedDestination audioGroupIdentifier];
    v16 = HMFEqualObjects();

    if ((v16 & 1) == 0)
    {
      v17 = objc_autoreleasePoolPush();
      selfCopy = self;
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = HMFGetLogIdentifier();
        v24 = 138543618;
        v25 = v20;
        v26 = 2112;
        v27 = v13;
        _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_ERROR, "%{public}@Handling expired audio group identifier value: %@", &v24, 0x16u);
      }

      objc_autoreleasePoolPop(v17);
      messageHandler = [(HMDMediaDestinationManager *)selfCopy messageHandler];
      destination = [(HMDMediaDestinationManager *)selfCopy destination];
      [messageHandler handleUpdatedDestination:destination];

      [(HMDMediaDestinationManager *)selfCopy notifyDelegateDidUpdateStagedValues];
    }
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      v24 = 138543874;
      v25 = v12;
      v26 = 2112;
      v27 = valueCopy;
      v28 = 2112;
      v29 = expireValueCopy;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_ERROR, "%{public}@Unknown stage value: %@ did expire value: %@", &v24, 0x20u);
    }

    objc_autoreleasePoolPop(v9);
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)triggerStageValueDidExpireValueForAudioDestinationIdentifier
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v10 = 138543362;
    v11 = v6;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@Triggering did expire value for audio destination identifier", &v10, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  stagedAudioGroupIdentifier = [(HMDMediaDestinationManager *)selfCopy stagedAudioGroupIdentifier];
  value = [stagedAudioGroupIdentifier value];
  [(HMDMediaDestinationManager *)selfCopy stagedValue:stagedAudioGroupIdentifier didExpireValue:value];

  v9 = *MEMORY[0x277D85DE8];
}

- (id)logIdentifier
{
  identifier = [(HMDMediaDestinationManager *)self identifier];
  uUIDString = [identifier UUIDString];

  return uUIDString;
}

- (id)attributeDescriptions
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  identifier = [(HMDMediaDestinationManager *)self identifier];
  v5 = [v3 initWithName:@"identifier" value:identifier];
  v9[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)notifyDelegateDidUpdateStagedValues
{
  v12 = *MEMORY[0x277D85DE8];
  delegate = [(HMDMediaDestinationManager *)self delegate];
  v4 = delegate;
  if (delegate)
  {
    [delegate mediaDestinationManagerDidUpdateStagedValues:self];
  }

  else
  {
    v5 = objc_autoreleasePoolPush();
    selfCopy = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      v10 = 138543362;
      v11 = v8;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_ERROR, "%{public}@Failed to notify of updated staged values due to no delegate", &v10, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)mediaDestinationMessageHandler:(id)handler didReceiveUpdateAudioGroupIdentifierRequestMessage:(id)message audioGroupIdentifier:(id)identifier
{
  v27 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  messageCopy = message;
  identifierCopy = identifier;
  v11 = objc_autoreleasePoolPush();
  selfCopy = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    *buf = 138543362;
    v26 = v14;
    _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@Handling did receive update audio group identifier request message", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v11);
  v15 = [(HMDMediaDestinationManager *)selfCopy updateAudioGroupIdentifier:identifierCopy];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __133__HMDMediaDestinationManager_mediaDestinationMessageHandler_didReceiveUpdateAudioGroupIdentifierRequestMessage_audioGroupIdentifier___block_invoke;
  v23[3] = &unk_2797359D8;
  v16 = messageCopy;
  v24 = v16;
  v17 = [v15 addFailureBlock:v23];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __133__HMDMediaDestinationManager_mediaDestinationMessageHandler_didReceiveUpdateAudioGroupIdentifierRequestMessage_audioGroupIdentifier___block_invoke_2;
  v21[3] = &unk_2797358F0;
  v22 = v16;
  v18 = v16;
  v19 = [v15 addSuccessBlock:v21];

  v20 = *MEMORY[0x277D85DE8];
}

- (void)mediaDestinationMessageHandler:(id)handler didReceiveUpdateSupportedOptionsRequestMessage:(id)message supportOptions:(unint64_t)options
{
  v26 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  messageCopy = message;
  v10 = objc_autoreleasePoolPush();
  selfCopy = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = HMFGetLogIdentifier();
    *buf = 138543362;
    v25 = v13;
    _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@Handling did receive update supported options request message", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v10);
  v14 = [(HMDMediaDestinationManager *)selfCopy updateSupportedOptions:options];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __123__HMDMediaDestinationManager_mediaDestinationMessageHandler_didReceiveUpdateSupportedOptionsRequestMessage_supportOptions___block_invoke;
  v22[3] = &unk_2797359D8;
  v15 = messageCopy;
  v23 = v15;
  v16 = [v14 addFailureBlock:v22];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __123__HMDMediaDestinationManager_mediaDestinationMessageHandler_didReceiveUpdateSupportedOptionsRequestMessage_supportOptions___block_invoke_2;
  v20[3] = &unk_2797358F0;
  v21 = v15;
  v17 = v15;
  v18 = [v14 addSuccessBlock:v20];

  v19 = *MEMORY[0x277D85DE8];
}

- (id)messageHandler:(id)handler deviceForOutgoingMessage:(id)message
{
  v19 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  messageCopy = message;
  dataSourceTargetAccessory = [(HMDMediaDestinationManager *)self dataSourceTargetAccessory];
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
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_ERROR, "%{public}@Failed to get device due to no target accessory", &v17, 0xCu);
    }

    objc_autoreleasePoolPop(v11);
    deviceForDirectMessaging = 0;
  }

  v15 = *MEMORY[0x277D85DE8];

  return deviceForDirectMessaging;
}

- (id)messageHandler:(id)handler shouldRelayIncomingMessage:(id)message
{
  v19 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  messageCopy = message;
  dataSourceTargetAccessory = [(HMDMediaDestinationManager *)self dataSourceTargetAccessory];
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
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_ERROR, "%{public}@Failed to determine relay preference due to no target accessory", &v17, 0xCu);
    }

    objc_autoreleasePoolPop(v11);
    v10 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];

  return v10;
}

- (void)mediaDestinationBackingStoreHandler:(id)handler didUpdateDestination:(id)destination
{
  v24 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  destinationCopy = destination;
  v8 = self->_logger;
  if (os_signpost_enabled(v8))
  {
    audioGroupIdentifier = [destinationCopy audioGroupIdentifier];
    v10 = audioGroupIdentifier;
    if (audioGroupIdentifier)
    {
      v20 = 138412290;
      v21 = audioGroupIdentifier;
      _os_signpost_emit_with_name_impl(&dword_2531F8000, v8, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "HMDMediaDestinationManagerCommitAudioGroupIdentifier", "audioGroupIdentifier=%{signpost.description:attribute}@ ", &v20, 0xCu);
    }

    else
    {
      null = [MEMORY[0x277CBEB68] null];
      v20 = 138412290;
      v21 = null;
      _os_signpost_emit_with_name_impl(&dword_2531F8000, v8, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "HMDMediaDestinationManagerCommitAudioGroupIdentifier", "audioGroupIdentifier=%{signpost.description:attribute}@ ", &v20, 0xCu);
    }
  }

  v12 = objc_autoreleasePoolPush();
  selfCopy = self;
  v14 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = HMFGetLogIdentifier();
    v20 = 138543618;
    v21 = v15;
    v22 = 2112;
    v23 = destinationCopy;
    _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, "%{public}@Handling did update destination: %@", &v20, 0x16u);
  }

  objc_autoreleasePoolPop(v12);
  stagedAudioGroupIdentifier = [(HMDMediaDestinationManager *)selfCopy stagedAudioGroupIdentifier];
  audioGroupIdentifier2 = [destinationCopy audioGroupIdentifier];
  [stagedAudioGroupIdentifier commitValue:audioGroupIdentifier2];

  messageHandler = [(HMDMediaDestinationManager *)selfCopy messageHandler];
  [messageHandler handleUpdatedDestination:destinationCopy];

  v19 = *MEMORY[0x277D85DE8];
}

- (void)migrateWithHome:(id)home cloudZone:(id)zone migrationQueue:(id)queue completion:(id)completion
{
  completionCopy = completion;
  queueCopy = queue;
  zoneCopy = zone;
  homeCopy = home;
  backingStoreHandler = [(HMDMediaDestinationManager *)self backingStoreHandler];
  [backingStoreHandler migrateWithHome:homeCopy cloudZone:zoneCopy migrationQueue:queueCopy completion:completionCopy];
}

- (id)legacyUpdateAudioGroupIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (identifierCopy)
  {
    v5 = [(HMDMediaDestinationManager *)self dataSourceDestinationControllerWithIdentifier:identifierCopy];
    if (v5)
    {
      dataSourceRootDestinationManager = [(HMDMediaDestinationManager *)self dataSourceRootDestinationManager];
      v7 = dataSourceRootDestinationManager;
      if (dataSourceRootDestinationManager)
      {
        [(HMDMediaDestinationManager *)dataSourceRootDestinationManager stageAudioGroupIdentifier:identifierCopy];
        selfCopy = v7;
      }

      else
      {
        selfCopy = self;
      }

      identifier = [(HMDMediaDestinationManager *)selfCopy identifier];
      [v5 stageDestinationIdentifier:identifier];
    }
  }

  v10 = objc_alloc_init(MEMORY[0x277D2C900]);
  backingStoreHandler = [(HMDMediaDestinationManager *)self backingStoreHandler];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __63__HMDMediaDestinationManager_legacyUpdateAudioGroupIdentifier___block_invoke;
  v16[3] = &unk_2797358C8;
  v16[4] = self;
  v12 = v10;
  v17 = v12;
  [backingStoreHandler updateAudioGroupIdentifier:identifierCopy completion:v16];

  v13 = v17;
  v14 = v12;

  return v12;
}

void __63__HMDMediaDestinationManager_legacyUpdateAudioGroupIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  v7 = v6;
  if (v3)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      v11 = 138543618;
      v12 = v8;
      v13 = 2112;
      v14 = v3;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_ERROR, "%{public}@Update audio group identifier completed with error: %@", &v11, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    [*(a1 + 40) finishWithError:v3];
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v11 = 138543362;
      v12 = v9;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Update audio group identifier completed", &v11, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    [*(a1 + 40) finishWithNoResult];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (id)updateAudioGroupIdentifier:(id)identifier
{
  v29 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v25 = 138543618;
    v26 = v8;
    v27 = 2112;
    v28 = identifierCopy;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Updating audio group identifier: %@", &v25, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  if (isFeatureHomeTheaterQFAEnabledForTests && ([isFeatureHomeTheaterQFAEnabledForTests BOOLValue] & 1) != 0)
  {
    mediaGroupParticipantLocalDataStorage = [(HMDMediaDestinationManager *)selfCopy mediaGroupParticipantLocalDataStorage];
    v10 = mediaGroupParticipantLocalDataStorage;
    if (mediaGroupParticipantLocalDataStorage)
    {
      [mediaGroupParticipantLocalDataStorage updateAudioGroupIdentifier:identifierCopy];
      stagedAudioGroupIdentifier = [(HMDMediaDestinationManager *)selfCopy stagedAudioGroupIdentifier];
      [stagedAudioGroupIdentifier commitValue:identifierCopy];

      futureWithNoResult = [MEMORY[0x277D2C900] futureWithNoResult];
    }

    else
    {
      v17 = objc_autoreleasePoolPush();
      v18 = selfCopy;
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = HMFGetLogIdentifier();
        v25 = 138543618;
        v26 = v20;
        v27 = 2112;
        v28 = identifierCopy;
        _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_ERROR, "%{public}@Failed to update local storage with audio group identifier: %@ due to no local storage found", &v25, 0x16u);
      }

      objc_autoreleasePoolPop(v17);
      v21 = MEMORY[0x277D2C900];
      v22 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:4];
      futureWithNoResult = [v21 futureWithError:v22];
    }
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    v14 = selfCopy;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      v25 = 138543362;
      v26 = v16;
      _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@Home Theater QFA is not enabled", &v25, 0xCu);
    }

    objc_autoreleasePoolPop(v13);
    futureWithNoResult = [(HMDMediaDestinationManager *)v14 legacyUpdateAudioGroupIdentifier:identifierCopy];
  }

  v23 = *MEMORY[0x277D85DE8];

  return futureWithNoResult;
}

- (id)legacyUpdateSupportedOptions:(unint64_t)options
{
  v5 = objc_alloc_init(MEMORY[0x277D2C900]);
  backingStoreHandler = [(HMDMediaDestinationManager *)self backingStoreHandler];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __59__HMDMediaDestinationManager_legacyUpdateSupportedOptions___block_invoke;
  v11[3] = &unk_2797358C8;
  v11[4] = self;
  v7 = v5;
  v12 = v7;
  [backingStoreHandler updateSupportedOptions:options completion:v11];

  v8 = v12;
  v9 = v7;

  return v7;
}

void __59__HMDMediaDestinationManager_legacyUpdateSupportedOptions___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  v7 = v6;
  if (v3)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      v11 = 138543618;
      v12 = v8;
      v13 = 2112;
      v14 = v3;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_ERROR, "%{public}@Update supported options completed with error: %@", &v11, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    [*(a1 + 40) finishWithError:v3];
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v11 = 138543362;
      v12 = v9;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Update supported options completed", &v11, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    [*(a1 + 40) finishWithNoResult];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (id)updateSupportedOptions:(unint64_t)options
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = HMMediaDestinationSupportOptionsAsString();
    v26 = 138543618;
    v27 = v8;
    v28 = 2112;
    v29 = v9;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Updating supported options: %@", &v26, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  if (isFeatureHomeTheaterQFAEnabledForTests && ([isFeatureHomeTheaterQFAEnabledForTests BOOLValue] & 1) != 0)
  {
    mediaGroupParticipantLocalDataStorage = [(HMDMediaDestinationManager *)selfCopy mediaGroupParticipantLocalDataStorage];
    v11 = mediaGroupParticipantLocalDataStorage;
    if (mediaGroupParticipantLocalDataStorage)
    {
      [mediaGroupParticipantLocalDataStorage updateDestinationSupportOptions:options];
      futureWithNoResult = [MEMORY[0x277D2C900] futureWithNoResult];
    }

    else
    {
      v17 = objc_autoreleasePoolPush();
      v18 = selfCopy;
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = HMFGetLogIdentifier();
        v21 = HMMediaDestinationSupportOptionsAsString();
        v26 = 138543618;
        v27 = v20;
        v28 = 2112;
        v29 = v21;
        _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_ERROR, "%{public}@Failed to update supported options: %@ due to no local storage found", &v26, 0x16u);
      }

      objc_autoreleasePoolPop(v17);
      v22 = MEMORY[0x277D2C900];
      v23 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:4];
      futureWithNoResult = [v22 futureWithError:v23];
    }
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    v14 = selfCopy;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      v26 = 138543362;
      v27 = v16;
      _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@Home Theater QFA is not enabled", &v26, 0xCu);
    }

    objc_autoreleasePoolPop(v13);
    futureWithNoResult = [(HMDMediaDestinationManager *)v14 legacyUpdateSupportedOptions:options];
  }

  v24 = *MEMORY[0x277D85DE8];

  return futureWithNoResult;
}

- (id)dataSourceRootDestinationManager
{
  v13 = *MEMORY[0x277D85DE8];
  dataSource = [(HMDMediaDestinationManager *)self dataSource];
  if (!dataSource)
  {
    v4 = objc_autoreleasePoolPush();
    selfCopy = self;
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = HMFGetLogIdentifier();
      v11 = 138543362;
      v12 = v7;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_ERROR, "%{public}@Failed to determine root destination due to no data source", &v11, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
  }

  v8 = [dataSource rootDestinationManagerForMediaDestinationManager:self];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)dataSourceDestinationControllerWithIdentifier:(id)identifier
{
  v16 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  dataSource = [(HMDMediaDestinationManager *)self dataSource];
  v6 = dataSource;
  if (dataSource)
  {
    v7 = [dataSource mediaDestinationManager:self destinationControllerWithIdentifier:identifierCopy];
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
  v17 = *MEMORY[0x277D85DE8];
  dataSource = [(HMDMediaDestinationManager *)self dataSource];
  v4 = [dataSource targetAccessoryForMediaDestinationManager:self];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    selfCopy = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v13 = 138543618;
      v14 = v10;
      v15 = 2112;
      v16 = dataSource;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_ERROR, "%{public}@Failed to get associated accessory from data source: %@", &v13, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
  }

  v11 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)mediaGroupParticipantLocalDataStorage
{
  v14 = *MEMORY[0x277D85DE8];
  dataSource = [(HMDMediaDestinationManager *)self dataSource];
  v4 = dataSource;
  if (dataSource)
  {
    v5 = [dataSource mediaGroupParticipantLocalDataStorageForMediaDestinationManager:self];
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
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_ERROR, "%{public}@Failed to get local data storage due to no data source", &v12, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    v5 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];

  return v5;
}

- (HMMediaDestination)committedDestination
{
  backingStoreHandler = [(HMDMediaDestinationManager *)self backingStoreHandler];
  destination = [backingStoreHandler destination];

  return destination;
}

- (HMMediaDestination)destination
{
  backingStoreHandler = [(HMDMediaDestinationManager *)self backingStoreHandler];
  destination = [backingStoreHandler destination];
  v5 = [destination mutableCopy];

  stagedAudioGroupIdentifier = [(HMDMediaDestinationManager *)self stagedAudioGroupIdentifier];
  value = [stagedAudioGroupIdentifier value];
  [v5 setAudioGroupIdentifier:value];

  v8 = [v5 copy];

  return v8;
}

- (void)requestToUpdateAudioGroupIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  identifierCopy = identifier;
  messageHandler = [(HMDMediaDestinationManager *)self messageHandler];
  [messageHandler sendRequestToUpdateAudioGroupIdentifier:identifierCopy completion:completionCopy];
}

- (void)stageAudioGroupIdentifier:(id)identifier
{
  v18 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v14 = 138543618;
    v15 = v8;
    v16 = 2112;
    v17 = identifierCopy;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Staging audio group identifier: %@", &v14, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  stagedAudioGroupIdentifier = [(HMDMediaDestinationManager *)selfCopy stagedAudioGroupIdentifier];
  value = [stagedAudioGroupIdentifier value];
  v11 = [value hmf_isEqualToUUID:identifierCopy];

  stagedAudioGroupIdentifier2 = [(HMDMediaDestinationManager *)selfCopy stagedAudioGroupIdentifier];
  [stagedAudioGroupIdentifier2 stageValue:identifierCopy withTimeout:600.0];

  if ((v11 & 1) == 0)
  {
    [(HMDMediaDestinationManager *)selfCopy notifyDelegateDidUpdateStagedValues];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)mergeDestination:(id)destination
{
  destinationCopy = destination;
  backingStoreHandler = [(HMDMediaDestinationManager *)self backingStoreHandler];
  [backingStoreHandler mergeDestination:destinationCopy];

  if (![(HMDMediaDestinationManager *)self isTargetDevice])
  {
    stagedAudioGroupIdentifier = [(HMDMediaDestinationManager *)self stagedAudioGroupIdentifier];
    audioGroupIdentifier = [destinationCopy audioGroupIdentifier];
    [stagedAudioGroupIdentifier commitValue:audioGroupIdentifier];
  }
}

- (void)configureWithHome:(id)home currentAccessory:(BOOL)accessory
{
  v19 = *MEMORY[0x277D85DE8];
  homeCopy = home;
  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    committedDestination = [(HMDMediaDestinationManager *)selfCopy committedDestination];
    v13 = 138543874;
    v14 = v9;
    v15 = 2112;
    v16 = selfCopy;
    v17 = 2112;
    v18 = committedDestination;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Configuring destination manager: %@ destination: %@", &v13, 0x20u);
  }

  objc_autoreleasePoolPop(v6);
  messageHandler = [(HMDMediaDestinationManager *)selfCopy messageHandler];
  [messageHandler configureWithHome:homeCopy];

  v12 = *MEMORY[0x277D85DE8];
}

- (HMDMediaDestinationManager)initWithDestination:(id)destination messageHandler:(id)handler backingStoreHandler:(id)storeHandler metricsDispatcher:(id)dispatcher targetDevice:(BOOL)device dataSource:(id)source delegate:(id)delegate
{
  destinationCopy = destination;
  handlerCopy = handler;
  storeHandlerCopy = storeHandler;
  dispatcherCopy = dispatcher;
  sourceCopy = source;
  delegateCopy = delegate;
  if (!destinationCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_8;
  }

  if (!handlerCopy)
  {
LABEL_8:
    _HMFPreconditionFailure();
    goto LABEL_9;
  }

  if (!storeHandlerCopy)
  {
LABEL_9:
    v31 = _HMFPreconditionFailure();
    return [(HMDMediaDestinationManager *)v31 initWithDestination:v32 messageDispatcher:v33 notificationCenter:v34 backingStore:v35 targetDevice:v36 dataSource:v37 delegate:v38, delegate];
  }

  v20 = delegateCopy;
  v40.receiver = self;
  v40.super_class = HMDMediaDestinationManager;
  v21 = [(HMDMediaDestinationManager *)&v40 init];
  if (v21)
  {
    v22 = HMFGetOSLogHandle();
    logger = v21->_logger;
    v21->_logger = v22;

    uniqueIdentifier = [destinationCopy uniqueIdentifier];
    identifier = v21->_identifier;
    v21->_identifier = uniqueIdentifier;

    objc_storeStrong(&v21->_messageHandler, handler);
    objc_storeStrong(&v21->_backingStoreHandler, storeHandler);
    objc_storeStrong(&v21->_metricsDispatcher, dispatcher);
    v21->_targetDevice = device;
    objc_storeWeak(&v21->_dataSource, sourceCopy);
    objc_storeWeak(&v21->_delegate, v20);
    v26 = objc_alloc(MEMORY[0x277D0F900]);
    audioGroupIdentifier = [destinationCopy audioGroupIdentifier];
    v28 = [v26 initWithValue:audioGroupIdentifier];
    stagedAudioGroupIdentifier = v21->_stagedAudioGroupIdentifier;
    v21->_stagedAudioGroupIdentifier = v28;

    [(HMFStagedValue *)v21->_stagedAudioGroupIdentifier setDelegate:v21];
  }

  return v21;
}

- (HMDMediaDestinationManager)initWithDestination:(id)destination messageDispatcher:(id)dispatcher notificationCenter:(id)center backingStore:(id)store targetDevice:(BOOL)device dataSource:(id)source delegate:(id)delegate
{
  deviceCopy = device;
  delegateCopy = delegate;
  sourceCopy = source;
  storeCopy = store;
  centerCopy = center;
  dispatcherCopy = dispatcher;
  destinationCopy = destination;
  v20 = [HMDMediaDestinationManagerMetricsDispatcher alloc];
  uniqueIdentifier = [destinationCopy uniqueIdentifier];
  v22 = +[HMDMetricsManager sharedLogEventSubmitter];
  v23 = [(HMDMediaDestinationManagerMetricsDispatcher *)v20 initWithIdentifier:uniqueIdentifier logEventSubmitter:v22];

  v24 = [[HMDMediaDestinationMessageHandler alloc] initWithDestination:destinationCopy messageDispatcher:dispatcherCopy notificationCenter:centerCopy dataSource:self delegate:self];
  v25 = [[HMDMediaDestinationBackingStoreHandler alloc] initWithDestination:destinationCopy backingStore:storeCopy metricsDispatcher:v23 delegate:self];

  v26 = [(HMDMediaDestinationManager *)self initWithDestination:destinationCopy messageHandler:v24 backingStoreHandler:v25 metricsDispatcher:v23 targetDevice:deviceCopy dataSource:sourceCopy delegate:delegateCopy];
  return v26;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t24_78450 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t24_78450, &__block_literal_global_78451);
  }

  v3 = logCategory__hmf_once_v25_78452;

  return v3;
}

uint64_t __41__HMDMediaDestinationManager_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v25_78452;
  logCategory__hmf_once_v25_78452 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end