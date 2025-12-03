@interface HMDMediaDestinationController
+ (id)logCategory;
- (BOOL)hasSetDestinationRelatedToIdentifier:(id)identifier;
- (HMDMediaDestinationController)initWithBackingStoreHandler:(id)handler messageHandler:(id)messageHandler metricsEventDispatcher:(id)dispatcher targetDevice:(BOOL)device dataSource:(id)source delegate:(id)delegate featuresDataSource:(id)dataSource;
- (HMDMediaDestinationController)initWithData:(id)data backingStore:(id)store messageDispatcher:(id)dispatcher notificationCenter:(id)center logEventSubmitter:(id)submitter dailyScheduler:(id)scheduler targetDevice:(BOOL)device dataSource:(id)self0 delegate:(id)self1;
- (HMDMediaDestinationControllerDataSource)dataSource;
- (HMDMediaDestinationControllerDelegate)delegate;
- (HMMediaDestinationControllerData)committedData;
- (HMMediaDestinationControllerData)data;
- (NSString)urlString;
- (id)_updateDestinationIdentifier:(id)identifier;
- (id)assistantObjectWithHome:(id)home name:(id)name;
- (id)attributeDescriptions;
- (id)dataSourceAvailableDestinationIdentifiers;
- (id)dataSourceDestinationManagerWithIdentifier:(id)identifier;
- (id)dataSourceDestinationUsingRelatedIdentifier:(id)identifier;
- (id)dataSourceDestinationWithIdentifier:(id)identifier;
- (id)dataSourceTargetAccessory;
- (id)filteredAvailableDestinationIdentifiers;
- (id)filteredDestinationIdentifierFilteredAvailableDestinationIdentifiers:(id)identifiers;
- (id)legacyUpdateAvailableDestinationIdentifiers:(id)identifiers;
- (id)legacyUpdateDestinationIdentifier:(id)identifier;
- (id)logIdentifier;
- (id)mediaGroupParticipantDataLocalStorage;
- (id)messageHandler:(id)handler deviceForOutgoingMessage:(id)message;
- (id)messageHandler:(id)handler shouldRelayIncomingMessage:(id)message;
- (id)updateAvailableDestinationIdentifiers:(id)identifiers;
- (id)updateDestinationIdentifier:(id)identifier updateOptions:(unint64_t)options;
- (id)updateDestinationWithIdentifier:(id)identifier audioGroupIdentifier:(id)groupIdentifier;
- (void)configureWithHome:(id)home;
- (void)mediaDestinationControllerBackingStoreHandler:(id)handler didUpdateAvailableDestinationIdentifiers:(id)identifiers;
- (void)mediaDestinationControllerBackingStoreHandler:(id)handler didUpdateDestinationIdentifier:(id)identifier;
- (void)mediaDestinationControllerBackingStoreHandlerDidProcessUnexpectedModelAdd:(id)add;
- (void)mediaDestinationControllerMessageHandler:(id)handler didReceiveMediaDestinationControllerUpdateDestinationRequestMessage:(id)message destinationIdentifier:(id)identifier updateOptions:(unint64_t)options;
- (void)mediaDestinationControllerMessageHandler:(id)handler didReceiveMediaDestinationControllerUpdatedDestinationNotification:(id)notification destinationControllerIdentifier:(id)identifier destinationIdentifier:(id)destinationIdentifier;
- (void)mergeData:(id)data;
- (void)migrateSupportOptions;
- (void)migrateWithHome:(id)home cloudZone:(id)zone migrationQueue:(id)queue completion:(id)completion;
- (void)notifyDelegateDidUpdateStagedValues;
- (void)refreshAvailableDestinationIdentifiers;
- (void)refreshDestinationController;
- (void)refreshDestinationIdentifier;
- (void)requestToUpdateDestinationIdentifier:(id)identifier options:(unint64_t)options completion:(id)completion;
- (void)stageAvailableDestinationIdentifiers:(id)identifiers;
- (void)stageDestinationIdentifier:(id)identifier;
- (void)stagedValue:(id)value didExpireAvailableDestinationIdentifiers:(id)identifiers;
- (void)stagedValue:(id)value didExpireDestinationIdentifier:(id)identifier;
- (void)stagedValue:(id)value didExpireValue:(id)expireValue;
- (void)triggerStageValueDidExpireValueForStagedAvailableDestinationIdentifiers;
- (void)triggerStageValueDidExpireValueForStagedDestinationIdentifier;
- (void)unsetAudioGroupForCurrentDestination;
@end

@implementation HMDMediaDestinationController

- (id)assistantObjectWithHome:(id)home name:(id)name
{
  v16[9] = *MEMORY[0x277D85DE8];
  v15[0] = @"objectType";
  v15[1] = @"objectName";
  v16[0] = *MEMORY[0x277D48150];
  v16[1] = name;
  v15[2] = @"objectIdentifier";
  nameCopy = name;
  homeCopy = home;
  urlString = [(HMDMediaDestinationController *)self urlString];
  v16[2] = urlString;
  v15[3] = @"objectHome";
  name = [homeCopy name];
  v16[3] = name;
  v15[4] = @"objectHomeIdentifier";
  urlString2 = [homeCopy urlString];

  v16[4] = urlString2;
  v16[5] = self;
  v15[5] = @"objectReference";
  v15[6] = @"objectServiceType";
  v11 = *MEMORY[0x277D48200];
  v16[6] = *MEMORY[0x277D48350];
  v16[7] = v11;
  v15[7] = @"objectServiceSubType";
  v15[8] = @"objectGroupType";
  v16[8] = *MEMORY[0x277D48180];
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:9];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (NSString)urlString
{
  v2 = *MEMORY[0x277CCF288];
  identifier = [(HMDMediaDestinationController *)self identifier];
  v4 = hm_assistantIdentifier();

  return v4;
}

- (HMDMediaDestinationControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (HMDMediaDestinationControllerDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (void)notifyDelegateDidUpdateStagedValues
{
  v12 = *MEMORY[0x277D85DE8];
  delegate = [(HMDMediaDestinationController *)self delegate];
  v4 = delegate;
  if (delegate)
  {
    [delegate mediaDestinationControllerDidUpdateStagedValues:self];
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
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_ERROR, "%{public}@Failed notify did update staged values due to no delegate", &v10, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)stagedValue:(id)value didExpireAvailableDestinationIdentifiers:(id)identifiers
{
  v29 = *MEMORY[0x277D85DE8];
  valueCopy = value;
  identifiersCopy = identifiers;
  if (identifiersCopy)
  {
    v8 = [MEMORY[0x277CBEB98] setWithArray:identifiersCopy];
    v9 = MEMORY[0x277CBEB98];
    committedData = [(HMDMediaDestinationController *)self committedData];
    availableDestinationIdentifiers = [committedData availableDestinationIdentifiers];
    v12 = [v9 setWithArray:availableDestinationIdentifiers];
    v13 = [v8 isEqualToSet:v12];

    if ((v13 & 1) == 0)
    {
      v14 = objc_autoreleasePoolPush();
      selfCopy = self;
      v16 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = HMFGetLogIdentifier();
        v25 = 138543618;
        v26 = v17;
        v27 = 2112;
        v28 = identifiersCopy;
        _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_ERROR, "%{public}@Handling did expire available destination identifiers: %@", &v25, 0x16u);
      }

      objc_autoreleasePoolPop(v14);
      metricsEventDispatcher = [(HMDMediaDestinationController *)selfCopy metricsEventDispatcher];
      v19 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:15];
      [metricsEventDispatcher submitFailureEventWithEventErrorCode:9 error:v19];

      [(HMDMediaDestinationController *)selfCopy notifyDelegateDidUpdateStagedValues];
    }
  }

  else
  {
    v20 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = HMFGetLogIdentifier();
      v25 = 138543362;
      v26 = v23;
      _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_ERROR, "%{public}@Expired available destination identifiers was null when the property is non-null", &v25, 0xCu);
    }

    objc_autoreleasePoolPop(v20);
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (void)stagedValue:(id)value didExpireDestinationIdentifier:(id)identifier
{
  v23 = *MEMORY[0x277D85DE8];
  valueCopy = value;
  identifierCopy = identifier;
  committedData = [(HMDMediaDestinationController *)self committedData];
  destinationIdentifier = [committedData destinationIdentifier];
  v10 = HMFEqualObjects();

  if ((v10 & 1) == 0)
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v19 = 138543618;
      v20 = v14;
      v21 = 2112;
      v22 = identifierCopy;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_ERROR, "%{public}@Handling did expire destination identifier: %@", &v19, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    metricsEventDispatcher = [(HMDMediaDestinationController *)selfCopy metricsEventDispatcher];
    v16 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:15];
    [metricsEventDispatcher submitFailureEventWithEventErrorCode:8 error:v16];

    messageHandler = [(HMDMediaDestinationController *)selfCopy messageHandler];
    [messageHandler notifyUpdatedDestinationWithIdentifier:identifierCopy];

    [(HMDMediaDestinationController *)selfCopy notifyDelegateDidUpdateStagedValues];
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)stagedValue:(id)value didExpireValue:(id)expireValue
{
  v21 = *MEMORY[0x277D85DE8];
  valueCopy = value;
  expireValueCopy = expireValue;
  stagedDestinationIdentifier = [(HMDMediaDestinationController *)self stagedDestinationIdentifier];

  if (stagedDestinationIdentifier == valueCopy)
  {
    [(HMDMediaDestinationController *)self stagedValue:valueCopy didExpireDestinationIdentifier:expireValueCopy];
  }

  else
  {
    stagedAvailableDestinationIdentifiers = [(HMDMediaDestinationController *)self stagedAvailableDestinationIdentifiers];

    if (stagedAvailableDestinationIdentifiers == valueCopy)
    {
      [(HMDMediaDestinationController *)self stagedValue:valueCopy didExpireAvailableDestinationIdentifiers:expireValueCopy];
    }

    else
    {
      v10 = objc_autoreleasePoolPush();
      selfCopy = self;
      v12 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = HMFGetLogIdentifier();
        v15 = 138543874;
        v16 = v13;
        v17 = 2112;
        v18 = valueCopy;
        v19 = 2112;
        v20 = expireValueCopy;
        _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_ERROR, "%{public}@Unknown stage value: %@ did expire value: %@", &v15, 0x20u);
      }

      objc_autoreleasePoolPop(v10);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)triggerStageValueDidExpireValueForStagedAvailableDestinationIdentifiers
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
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@Triggering stage value did expire value for staged available destination identifiers", &v10, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  stagedAvailableDestinationIdentifiers = [(HMDMediaDestinationController *)selfCopy stagedAvailableDestinationIdentifiers];
  value = [stagedAvailableDestinationIdentifiers value];
  [(HMDMediaDestinationController *)selfCopy stagedValue:stagedAvailableDestinationIdentifiers didExpireValue:value];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)triggerStageValueDidExpireValueForStagedDestinationIdentifier
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
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@Triggering stage value did expire value for staged destination identifier", &v10, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  stagedDestinationIdentifier = [(HMDMediaDestinationController *)selfCopy stagedDestinationIdentifier];
  value = [stagedDestinationIdentifier value];
  [(HMDMediaDestinationController *)selfCopy stagedValue:stagedDestinationIdentifier didExpireValue:value];

  v9 = *MEMORY[0x277D85DE8];
}

- (id)logIdentifier
{
  identifier = [(HMDMediaDestinationController *)self identifier];
  uUIDString = [identifier UUIDString];

  return uUIDString;
}

- (id)attributeDescriptions
{
  v24[5] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  identifier = [(HMDMediaDestinationController *)self identifier];
  v22 = [v3 initWithName:@"identifier" value:identifier];
  v24[0] = v22;
  v4 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMDMediaDestinationController *)self isTargetDevice];
  v21 = HMFBooleanToString();
  v20 = [v4 initWithName:@"isTargetDevice" value:v21];
  v24[1] = v20;
  v5 = objc_alloc(MEMORY[0x277D0F778]);
  stagedDestinationIdentifier = [(HMDMediaDestinationController *)self stagedDestinationIdentifier];
  value = [stagedDestinationIdentifier value];
  v8 = [v5 initWithName:@"destinationIdentifier" value:value];
  v24[2] = v8;
  v9 = objc_alloc(MEMORY[0x277D0F778]);
  committedData = [(HMDMediaDestinationController *)self committedData];
  [committedData supportedOptions];
  v11 = HMMediaDestinationControllerSupportOptionsAsString();
  v12 = [v9 initWithName:@"supportedOptions" value:v11];
  v24[3] = v12;
  v13 = objc_alloc(MEMORY[0x277D0F778]);
  stagedAvailableDestinationIdentifiers = [(HMDMediaDestinationController *)self stagedAvailableDestinationIdentifiers];
  value2 = [stagedAvailableDestinationIdentifiers value];
  v16 = [v13 initWithName:@"availableDestinationIdentifiers" value:value2];
  v24[4] = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:5];

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

- (void)mediaDestinationControllerBackingStoreHandlerDidProcessUnexpectedModelAdd:(id)add
{
  v12 = *MEMORY[0x277D85DE8];
  addCopy = add;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v10 = 138543362;
    v11 = v8;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Refreshing destination controller due to unexpected model add", &v10, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  [(HMDMediaDestinationController *)selfCopy refreshDestinationController];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)mediaDestinationControllerBackingStoreHandler:(id)handler didUpdateAvailableDestinationIdentifiers:(id)identifiers
{
  v18 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  identifiersCopy = identifiers;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v14 = 138543618;
    v15 = v11;
    v16 = 2112;
    v17 = identifiersCopy;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Committing updated available destination identifiers: %@", &v14, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  stagedAvailableDestinationIdentifiers = [(HMDMediaDestinationController *)selfCopy stagedAvailableDestinationIdentifiers];
  [stagedAvailableDestinationIdentifiers commitValue:identifiersCopy];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)mediaDestinationControllerBackingStoreHandler:(id)handler didUpdateDestinationIdentifier:(id)identifier
{
  v22 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  identifierCopy = identifier;
  v8 = self->_logger;
  if (os_signpost_enabled(v8))
  {
    if (identifierCopy)
    {
      v18 = 138412290;
      v19 = identifierCopy;
      _os_signpost_emit_with_name_impl(&dword_2531F8000, v8, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "HMDMediaDestinationControllerCommitDestinationIdentifierEvent", "destinationIdentifier=%{signpost.description:attribute}@ ", &v18, 0xCu);
    }

    else
    {
      null = [MEMORY[0x277CBEB68] null];
      v18 = 138412290;
      v19 = null;
      _os_signpost_emit_with_name_impl(&dword_2531F8000, v8, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "HMDMediaDestinationControllerCommitDestinationIdentifierEvent", "destinationIdentifier=%{signpost.description:attribute}@ ", &v18, 0xCu);
    }
  }

  v10 = objc_autoreleasePoolPush();
  selfCopy = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = HMFGetLogIdentifier();
    v18 = 138543618;
    v19 = v13;
    v20 = 2112;
    v21 = identifierCopy;
    _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@Committing updated destination identifier: %@", &v18, 0x16u);
  }

  objc_autoreleasePoolPop(v10);
  stagedDestinationIdentifier = [(HMDMediaDestinationController *)selfCopy stagedDestinationIdentifier];
  [stagedDestinationIdentifier commitValue:identifierCopy];

  metricsEventDispatcher = [(HMDMediaDestinationController *)selfCopy metricsEventDispatcher];
  [metricsEventDispatcher submitStagedDestinationIdentifierCommittedEventWithCommittedDestinationIdentifier:identifierCopy];

  messageHandler = [(HMDMediaDestinationController *)selfCopy messageHandler];
  [messageHandler notifyUpdatedDestinationWithIdentifier:identifierCopy];

  v17 = *MEMORY[0x277D85DE8];
}

- (void)migrateWithHome:(id)home cloudZone:(id)zone migrationQueue:(id)queue completion:(id)completion
{
  completionCopy = completion;
  queueCopy = queue;
  zoneCopy = zone;
  homeCopy = home;
  backingStoreHandler = [(HMDMediaDestinationController *)self backingStoreHandler];
  [backingStoreHandler migrateWithHome:homeCopy cloudZone:zoneCopy migrationQueue:queueCopy completion:completionCopy];
}

- (void)mediaDestinationControllerMessageHandler:(id)handler didReceiveMediaDestinationControllerUpdatedDestinationNotification:(id)notification destinationControllerIdentifier:(id)identifier destinationIdentifier:(id)destinationIdentifier
{
  v34 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  notificationCopy = notification;
  identifierCopy = identifier;
  destinationIdentifierCopy = destinationIdentifier;
  identifier = [(HMDMediaDestinationController *)self identifier];
  if ([identifierCopy hmf_isEqualToUUID:identifier])
  {
  }

  else
  {
    stagedDestinationIdentifier = [(HMDMediaDestinationController *)self stagedDestinationIdentifier];
    value = [stagedDestinationIdentifier value];
    v17 = [destinationIdentifierCopy hmf_isEqualToUUID:value];

    if (v17)
    {
      v18 = objc_autoreleasePoolPush();
      selfCopy = self;
      v20 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v21 = HMFGetLogIdentifier();
        *buf = 138543618;
        v31 = v21;
        v32 = 2112;
        v33 = destinationIdentifierCopy;
        _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_INFO, "%{public}@Unsetting media destination due to another destination controller with the same destination identifier: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v18);
      v22 = [(HMDMediaDestinationController *)selfCopy updateDestinationIdentifier:0 updateOptions:4];
      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = __195__HMDMediaDestinationController_mediaDestinationControllerMessageHandler_didReceiveMediaDestinationControllerUpdatedDestinationNotification_destinationControllerIdentifier_destinationIdentifier___block_invoke;
      v29[3] = &unk_2797359D8;
      v29[4] = selfCopy;
      v23 = [v22 addFailureBlock:v29];
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __195__HMDMediaDestinationController_mediaDestinationControllerMessageHandler_didReceiveMediaDestinationControllerUpdatedDestinationNotification_destinationControllerIdentifier_destinationIdentifier___block_invoke_32;
      v28[3] = &unk_2797358F0;
      v28[4] = selfCopy;
      v24 = [v22 addSuccessBlock:v28];
    }
  }

  identifier2 = [(HMDMediaDestinationController *)self identifier];
  v26 = [identifierCopy hmf_isEqualToUUID:identifier2];

  if (v26)
  {
    [(HMDMediaDestinationController *)self refreshDestinationController];
  }

  v27 = *MEMORY[0x277D85DE8];
}

void __195__HMDMediaDestinationController_mediaDestinationControllerMessageHandler_didReceiveMediaDestinationControllerUpdatedDestinationNotification_destinationControllerIdentifier_destinationIdentifier___block_invoke(uint64_t a1, void *a2)
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
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_ERROR, "%{public}@Update destination identifier to unset destination finished with error: %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  v8 = *MEMORY[0x277D85DE8];
}

void __195__HMDMediaDestinationController_mediaDestinationControllerMessageHandler_didReceiveMediaDestinationControllerUpdatedDestinationNotification_destinationControllerIdentifier_destinationIdentifier___block_invoke_32(uint64_t a1, void *a2)
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
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Update destination identifier to unset destination finished", &v9, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)mediaDestinationControllerMessageHandler:(id)handler didReceiveMediaDestinationControllerUpdateDestinationRequestMessage:(id)message destinationIdentifier:(id)identifier updateOptions:(unint64_t)options
{
  v32 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  messageCopy = message;
  identifierCopy = identifier;
  v13 = objc_autoreleasePoolPush();
  selfCopy = self;
  v15 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = HMFGetLogIdentifier();
    *buf = 138543362;
    v31 = v16;
    _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@Handling did receive media destination controller update destination request message", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v13);
  metricsEventDispatcher = [(HMDMediaDestinationController *)selfCopy metricsEventDispatcher];
  stagedDestinationIdentifier = [(HMDMediaDestinationController *)selfCopy stagedDestinationIdentifier];
  value = [stagedDestinationIdentifier value];
  [metricsEventDispatcher submitReceivedUpdateDestinationRequestMessageEventWithDestinationIdentifier:identifierCopy existingDestinationIdentifier:value];

  v20 = [(HMDMediaDestinationController *)selfCopy updateDestinationIdentifier:identifierCopy updateOptions:options];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __178__HMDMediaDestinationController_mediaDestinationControllerMessageHandler_didReceiveMediaDestinationControllerUpdateDestinationRequestMessage_destinationIdentifier_updateOptions___block_invoke;
  v28[3] = &unk_2797358C8;
  v28[4] = selfCopy;
  v21 = messageCopy;
  v29 = v21;
  v22 = [v20 addFailureBlock:v28];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __178__HMDMediaDestinationController_mediaDestinationControllerMessageHandler_didReceiveMediaDestinationControllerUpdateDestinationRequestMessage_destinationIdentifier_updateOptions___block_invoke_31;
  v26[3] = &unk_279735918;
  v26[4] = selfCopy;
  v27 = v21;
  v23 = v21;
  v24 = [v20 addSuccessBlock:v26];

  v25 = *MEMORY[0x277D85DE8];
}

void __178__HMDMediaDestinationController_mediaDestinationControllerMessageHandler_didReceiveMediaDestinationControllerUpdateDestinationRequestMessage_destinationIdentifier_updateOptions___block_invoke(uint64_t a1, void *a2)
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
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_ERROR, "%{public}@Update destination future finished with error: %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  [*(a1 + 40) respondWithError:v3];

  v8 = *MEMORY[0x277D85DE8];
}

void __178__HMDMediaDestinationController_mediaDestinationControllerMessageHandler_didReceiveMediaDestinationControllerUpdateDestinationRequestMessage_destinationIdentifier_updateOptions___block_invoke_31(uint64_t a1, void *a2)
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
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Update destination future finished", &v9, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  [*(a1 + 40) respondWithSuccess];

  v8 = *MEMORY[0x277D85DE8];
}

- (id)messageHandler:(id)handler deviceForOutgoingMessage:(id)message
{
  v19 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  messageCopy = message;
  dataSourceTargetAccessory = [(HMDMediaDestinationController *)self dataSourceTargetAccessory];
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
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_ERROR, "%{public}@Failed to get relay preference due to no target accessory", &v17, 0xCu);
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
  dataSourceTargetAccessory = [(HMDMediaDestinationController *)self dataSourceTargetAccessory];
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

- (id)dataSourceDestinationUsingRelatedIdentifier:(id)identifier
{
  v32 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  dataSource = [(HMDMediaDestinationController *)self dataSource];
  v6 = dataSource;
  if (dataSource)
  {
    v7 = [dataSource mediaDestinationController:self destinationWithParentIdentifier:identifierCopy];
    if (v7)
    {
      v8 = objc_autoreleasePoolPush();
      selfCopy = self;
      v10 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = HMFGetLogIdentifier();
        v26 = 138543874;
        v27 = v11;
        v28 = 2112;
        v29 = v7;
        v30 = 2112;
        v31 = identifierCopy;
        _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Found destination: %@ using parent identifier: %@", &v26, 0x20u);
      }

      objc_autoreleasePoolPop(v8);
      uniqueIdentifier = [v7 uniqueIdentifier];

      identifierCopy = uniqueIdentifier;
    }

    v13 = [v6 mediaDestinationController:self rootDestinationWithDecendantIdentifier:identifierCopy];
    v14 = v7;
    if (v13)
    {
      v15 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v18 = HMFGetLogIdentifier();
        v26 = 138543874;
        v27 = v18;
        v28 = 2112;
        v29 = v13;
        v30 = 2112;
        v31 = identifierCopy;
        _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_INFO, "%{public}@Found root destination: %@ using decendant identifier: %@", &v26, 0x20u);
      }

      objc_autoreleasePoolPop(v15);
      v14 = v13;
    }

    v19 = v14;
  }

  else
  {
    v20 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = HMFGetLogIdentifier();
      v26 = 138543618;
      v27 = v23;
      v28 = 2112;
      v29 = identifierCopy;
      _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_ERROR, "%{public}@Failed to get data source during destination with parent identifier: %@", &v26, 0x16u);
    }

    objc_autoreleasePoolPop(v20);
    v19 = 0;
  }

  v24 = *MEMORY[0x277D85DE8];

  return v19;
}

- (id)dataSourceDestinationWithIdentifier:(id)identifier
{
  v3 = [(HMDMediaDestinationController *)self dataSourceDestinationManagerWithIdentifier:identifier];
  destination = [v3 destination];

  return destination;
}

- (id)dataSourceDestinationManagerWithIdentifier:(id)identifier
{
  v18 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  dataSource = [(HMDMediaDestinationController *)self dataSource];
  v6 = dataSource;
  if (dataSource)
  {
    v7 = [dataSource mediaDestinationController:self destinationManagerWithIdentifier:identifierCopy];
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v14 = 138543618;
      v15 = v11;
      v16 = 2112;
      v17 = identifierCopy;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to get destination manager with identifier: %@ due to no data source", &v14, 0x16u);
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
  dataSource = [(HMDMediaDestinationController *)self dataSource];
  v4 = dataSource;
  if (dataSource)
  {
    v5 = [dataSource targetAccessoryForMediaDestinationController:self];
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

- (id)dataSourceAvailableDestinationIdentifiers
{
  v14 = *MEMORY[0x277D85DE8];
  dataSource = [(HMDMediaDestinationController *)self dataSource];
  v4 = dataSource;
  if (dataSource)
  {
    v5 = [dataSource availableDestinationIdentifiersForMediaDestinationController:self];
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
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_ERROR, "%{public}@Failed to get refreshed available destination identifiers due to no data source", &v12, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    v5 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)mediaGroupParticipantDataLocalStorage
{
  v22 = *MEMORY[0x277D85DE8];
  dataSource = [(HMDMediaDestinationController *)self dataSource];
  v4 = dataSource;
  if (dataSource)
  {
    v5 = [dataSource mediaGroupLocalDataStorageForMediaDestinationController:self];
    v6 = v5;
    if (v5)
    {
      v7 = v5;
    }

    else
    {
      v12 = objc_autoreleasePoolPush();
      selfCopy = self;
      v14 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = HMFGetLogIdentifier();
        v18 = 138543618;
        v19 = v15;
        v20 = 2112;
        v21 = v4;
        _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_ERROR, "%{public}@Failed to get local data storage due data source: %@", &v18, 0x16u);
      }

      objc_autoreleasePoolPop(v12);
    }
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v18 = 138543362;
      v19 = v11;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to data souce local data storage due to no data source", &v18, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
    v6 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)filteredDestinationIdentifierFilteredAvailableDestinationIdentifiers:(id)identifiers
{
  v27 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  stagedDestinationIdentifier = [(HMDMediaDestinationController *)self stagedDestinationIdentifier];
  value = [stagedDestinationIdentifier value];

  if (!value)
  {
    v9 = 0;
    goto LABEL_14;
  }

  v7 = [(HMDMediaDestinationController *)self dataSourceDestinationWithIdentifier:value];
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = [(HMDMediaDestinationController *)self dataSourceDestinationUsingRelatedIdentifier:value];
    if (!v8)
    {
      goto LABEL_10;
    }
  }

  audioGroupIdentifier = [v8 audioGroupIdentifier];
  identifier = [(HMDMediaDestinationController *)self identifier];
  if (([audioGroupIdentifier hmf_isEqualToUUID:identifier] & 1) == 0)
  {

    goto LABEL_10;
  }

  v12 = [identifiersCopy containsObject:value];

  if ((v12 & 1) == 0)
  {
LABEL_10:
    v13 = objc_autoreleasePoolPush();
    selfCopy = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      v19 = 138544130;
      v20 = v16;
      v21 = 2112;
      v22 = value;
      v23 = 2112;
      v24 = v8;
      v25 = 2112;
      v26 = identifiersCopy;
      _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@Filtering unknown destination with identifier: %@ due to destination: %@ available destinations: %@", &v19, 0x2Au);
    }

    objc_autoreleasePoolPop(v13);
    v9 = 0;
    goto LABEL_13;
  }

  v9 = value;
LABEL_13:

LABEL_14:
  v17 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)filteredAvailableDestinationIdentifiers
{
  stagedAvailableDestinationIdentifiers = [(HMDMediaDestinationController *)self stagedAvailableDestinationIdentifiers];
  value = [stagedAvailableDestinationIdentifiers value];

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __72__HMDMediaDestinationController_filteredAvailableDestinationIdentifiers__block_invoke;
  v7[3] = &unk_2797358A0;
  v7[4] = self;
  v5 = [value na_filter:v7];

  return v5;
}

BOOL __72__HMDMediaDestinationController_filteredAvailableDestinationIdentifiers__block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) dataSourceDestinationWithIdentifier:v3];

  if (!v4)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = *(a1 + 32);
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      v11 = 138543618;
      v12 = v8;
      v13 = 2112;
      v14 = v3;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Filtering unknown available destination with identifier: %@", &v11, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
  }

  v9 = *MEMORY[0x277D85DE8];
  return v4 != 0;
}

- (HMMediaDestinationControllerData)data
{
  backingStoreHandler = [(HMDMediaDestinationController *)self backingStoreHandler];
  data = [backingStoreHandler data];
  v5 = [data mutableCopy];

  filteredAvailableDestinationIdentifiers = [(HMDMediaDestinationController *)self filteredAvailableDestinationIdentifiers];
  [v5 setAvailableDestinationIdentifiers:filteredAvailableDestinationIdentifiers];

  availableDestinationIdentifiers = [v5 availableDestinationIdentifiers];
  v8 = [(HMDMediaDestinationController *)self filteredDestinationIdentifierFilteredAvailableDestinationIdentifiers:availableDestinationIdentifiers];
  [v5 setDestinationIdentifier:v8];

  v9 = [v5 copy];

  return v9;
}

- (HMMediaDestinationControllerData)committedData
{
  backingStoreHandler = [(HMDMediaDestinationController *)self backingStoreHandler];
  data = [backingStoreHandler data];

  return data;
}

- (BOOL)hasSetDestinationRelatedToIdentifier:(id)identifier
{
  identifierCopy = identifier;
  stagedDestinationIdentifier = [(HMDMediaDestinationController *)self stagedDestinationIdentifier];
  value = [stagedDestinationIdentifier value];

  if (value)
  {
    if ([value hmf_isEqualToUUID:identifierCopy])
    {
      v7 = 1;
    }

    else
    {
      v8 = [(HMDMediaDestinationController *)self dataSourceDestinationUsingRelatedIdentifier:identifierCopy];
      if (v8)
      {
        v9 = [(HMDMediaDestinationController *)self dataSourceDestinationUsingRelatedIdentifier:value];
        v10 = v9;
        if (v9)
        {
          uniqueIdentifier = [v9 uniqueIdentifier];
          uniqueIdentifier2 = [v8 uniqueIdentifier];
          v7 = [uniqueIdentifier hmf_isEqualToUUID:uniqueIdentifier2];
        }

        else
        {
          v7 = 0;
        }
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)refreshDestinationIdentifier
{
  v25 = *MEMORY[0x277D85DE8];
  stagedDestinationIdentifier = [(HMDMediaDestinationController *)self stagedDestinationIdentifier];
  value = [stagedDestinationIdentifier value];

  if (value)
  {
    v5 = [(HMDMediaDestinationController *)self dataSourceDestinationUsingRelatedIdentifier:value];
    if (v5)
    {
      v6 = v5;
      v7 = objc_autoreleasePoolPush();
      selfCopy = self;
      v9 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = HMFGetLogIdentifier();
        identifier = [v6 identifier];
        *buf = 138543874;
        v20 = v10;
        v21 = 2112;
        v22 = value;
        v23 = 2112;
        v24 = identifier;
        _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Updating related destination identifier: %@ to destination identifier: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v7);
      uniqueIdentifier = [v6 uniqueIdentifier];
      v13 = [(HMDMediaDestinationController *)selfCopy updateDestinationIdentifier:uniqueIdentifier];

      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __61__HMDMediaDestinationController_refreshDestinationIdentifier__block_invoke;
      v18[3] = &unk_2797359D8;
      v18[4] = selfCopy;
      v14 = [v13 addFailureBlock:v18];
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __61__HMDMediaDestinationController_refreshDestinationIdentifier__block_invoke_29;
      v17[3] = &unk_2797358F0;
      v17[4] = selfCopy;
      v15 = [v13 addSuccessBlock:v17];
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __61__HMDMediaDestinationController_refreshDestinationIdentifier__block_invoke(uint64_t a1, void *a2)
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
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_ERROR, "%{public}@Update destination identifier for refresh finished with error: %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  v8 = *MEMORY[0x277D85DE8];
}

void __61__HMDMediaDestinationController_refreshDestinationIdentifier__block_invoke_29(uint64_t a1, void *a2)
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
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Update destination identifier for refresh finished", &v9, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)refreshAvailableDestinationIdentifiers
{
  v21 = *MEMORY[0x277D85DE8];
  dataSourceAvailableDestinationIdentifiers = [(HMDMediaDestinationController *)self dataSourceAvailableDestinationIdentifiers];
  if (dataSourceAvailableDestinationIdentifiers)
  {
    stagedAvailableDestinationIdentifiers = [(HMDMediaDestinationController *)self stagedAvailableDestinationIdentifiers];
    value = [stagedAvailableDestinationIdentifiers value];

    v6 = [MEMORY[0x277CBEB98] setWithArray:dataSourceAvailableDestinationIdentifiers];
    v7 = [MEMORY[0x277CBEB98] setWithArray:value];
    v8 = [v6 isEqualToSet:v7];

    if ((v8 & 1) == 0)
    {
      v9 = [(HMDMediaDestinationController *)self updateAvailableDestinationIdentifiers:dataSourceAvailableDestinationIdentifiers];
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __71__HMDMediaDestinationController_refreshAvailableDestinationIdentifiers__block_invoke;
      v18[3] = &unk_2797359D8;
      v18[4] = self;
      v10 = [v9 addFailureBlock:v18];
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __71__HMDMediaDestinationController_refreshAvailableDestinationIdentifiers__block_invoke_27;
      v17[3] = &unk_2797358F0;
      v17[4] = self;
      v11 = [v9 addSuccessBlock:v17];
    }
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    selfCopy = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543362;
      v20 = v15;
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_ERROR, "%{public}@Unable to update available destination identifiers due to no refreshed available destination identifiers", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v12);
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __71__HMDMediaDestinationController_refreshAvailableDestinationIdentifiers__block_invoke(uint64_t a1, void *a2)
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
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_ERROR, "%{public}@Update available destination identifiers for refresh finished with error: %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  v8 = *MEMORY[0x277D85DE8];
}

void __71__HMDMediaDestinationController_refreshAvailableDestinationIdentifiers__block_invoke_27(uint64_t a1, void *a2)
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
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Update available destination identifiers for refresh finished", &v9, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)refreshDestinationController
{
  v10 = *MEMORY[0x277D85DE8];
  if ([(HMDMediaDestinationController *)self isTargetDevice])
  {
    v3 = objc_autoreleasePoolPush();
    selfCopy = self;
    v5 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = HMFGetLogIdentifier();
      v8 = 138543362;
      v9 = v6;
      _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@Refreshing destination controller", &v8, 0xCu);
    }

    objc_autoreleasePoolPop(v3);
    [(HMDMediaDestinationController *)selfCopy refreshAvailableDestinationIdentifiers];
    [(HMDMediaDestinationController *)selfCopy refreshDestinationIdentifier];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (id)updateDestinationWithIdentifier:(id)identifier audioGroupIdentifier:(id)groupIdentifier
{
  v38 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  groupIdentifierCopy = groupIdentifier;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543874;
    v33 = v11;
    v34 = 2112;
    v35 = identifierCopy;
    v36 = 2112;
    v37 = groupIdentifierCopy;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Updating destination with identifier: %@ audio group identifier: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  v12 = [(HMDMediaDestinationController *)selfCopy dataSourceDestinationManagerWithIdentifier:identifierCopy];
  v13 = v12;
  if (v12)
  {
    [v12 stageAudioGroupIdentifier:groupIdentifierCopy];
    v14 = objc_alloc_init(MEMORY[0x277D2C900]);
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __86__HMDMediaDestinationController_updateDestinationWithIdentifier_audioGroupIdentifier___block_invoke;
    v30[3] = &unk_2797358C8;
    v30[4] = selfCopy;
    v15 = v14;
    v31 = v15;
    [v13 requestToUpdateAudioGroupIdentifier:groupIdentifierCopy completion:v30];
    v16 = v31;
    v17 = v15;

    v18 = v17;
    goto LABEL_12;
  }

  v19 = objc_autoreleasePoolPush();
  v20 = selfCopy;
  v21 = HMFGetOSLogHandle();
  v22 = v21;
  if (groupIdentifierCopy)
  {
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v23 = HMFGetLogIdentifier();
      *buf = 138543618;
      v33 = v23;
      v34 = 2112;
      v35 = identifierCopy;
      v24 = "%{public}@Failed to update destination due to no destination manager found for identifier: %@";
      v25 = v22;
      v26 = OS_LOG_TYPE_ERROR;
LABEL_10:
      _os_log_impl(&dword_2531F8000, v25, v26, v24, buf, 0x16u);
    }
  }

  else if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    v23 = HMFGetLogIdentifier();
    *buf = 138543618;
    v33 = v23;
    v34 = 2112;
    v35 = identifierCopy;
    v24 = "%{public}@No destination manager found to unset the audio group for the destination with identifier: %@";
    v25 = v22;
    v26 = OS_LOG_TYPE_INFO;
    goto LABEL_10;
  }

  objc_autoreleasePoolPop(v19);
  v27 = MEMORY[0x277D2C900];
  v17 = [MEMORY[0x277CCA9B8] hmPrivateErrorWithCode:9007];
  v18 = [v27 futureWithError:v17];
LABEL_12:

  v28 = *MEMORY[0x277D85DE8];

  return v18;
}

void __86__HMDMediaDestinationController_updateDestinationWithIdentifier_audioGroupIdentifier___block_invoke(uint64_t a1, void *a2)
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
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_ERROR, "%{public}@Send request to update audio group identifier completed with error: %@", &v11, 0x16u);
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
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Send request to update audio group identifier completed", &v11, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    [*(a1 + 40) finishWithNoResult];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)unsetAudioGroupForCurrentDestination
{
  stagedDestinationIdentifier = [(HMDMediaDestinationController *)self stagedDestinationIdentifier];
  value = [stagedDestinationIdentifier value];

  v4 = value;
  if (value)
  {
    v5 = [(HMDMediaDestinationController *)self updateDestinationWithIdentifier:value audioGroupIdentifier:0];
    v4 = value;
  }
}

- (id)legacyUpdateDestinationIdentifier:(id)identifier
{
  identifierCopy = identifier;
  stagedDestinationIdentifier = [(HMDMediaDestinationController *)self stagedDestinationIdentifier];
  [stagedDestinationIdentifier stageValue:identifierCopy withTimeout:60.0];

  v6 = objc_alloc_init(MEMORY[0x277D2C900]);
  backingStoreHandler = [(HMDMediaDestinationController *)self backingStoreHandler];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __67__HMDMediaDestinationController_legacyUpdateDestinationIdentifier___block_invoke;
  v12[3] = &unk_2797358C8;
  v12[4] = self;
  v8 = v6;
  v13 = v8;
  [backingStoreHandler updateDestinationIdentifier:identifierCopy completion:v12];

  v9 = v13;
  v10 = v8;

  return v8;
}

void __67__HMDMediaDestinationController_legacyUpdateDestinationIdentifier___block_invoke(uint64_t a1, void *a2)
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
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_ERROR, "%{public}@Update destination finished with error: %@", &v11, 0x16u);
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
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Update destination finished", &v11, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    [*(a1 + 40) finishWithNoResult];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (id)_updateDestinationIdentifier:(id)identifier
{
  v25 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  if (isFeatureHomeTheaterQFAEnabledForTests && ([isFeatureHomeTheaterQFAEnabledForTests BOOLValue] & 1) != 0)
  {
    mediaGroupParticipantDataLocalStorage = [(HMDMediaDestinationController *)self mediaGroupParticipantDataLocalStorage];
    v6 = mediaGroupParticipantDataLocalStorage;
    if (mediaGroupParticipantDataLocalStorage)
    {
      [mediaGroupParticipantDataLocalStorage updateDestinationControllerDestinationIdentifier:identifierCopy];
      stagedDestinationIdentifier = [(HMDMediaDestinationController *)self stagedDestinationIdentifier];
      [stagedDestinationIdentifier commitValue:identifierCopy];

      futureWithNoResult = [MEMORY[0x277D2C900] futureWithNoResult];
    }

    else
    {
      v13 = objc_autoreleasePoolPush();
      selfCopy = self;
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = HMFGetLogIdentifier();
        v21 = 138543618;
        v22 = v16;
        v23 = 2112;
        v24 = identifierCopy;
        _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_ERROR, "%{public}@Failed to update destination identifier: %@ in local storage due to no local storage found", &v21, 0x16u);
      }

      objc_autoreleasePoolPop(v13);
      v17 = MEMORY[0x277D2C900];
      v18 = [MEMORY[0x277CCA9B8] hmPrivateErrorWithCode:9008];
      futureWithNoResult = [v17 futureWithError:v18];
    }
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v21 = 138543362;
      v22 = v12;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Home Theater QFA is not enabled", &v21, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
    futureWithNoResult = [(HMDMediaDestinationController *)selfCopy2 legacyUpdateDestinationIdentifier:identifierCopy];
  }

  v19 = *MEMORY[0x277D85DE8];

  return futureWithNoResult;
}

- (id)updateDestinationIdentifier:(id)identifier updateOptions:(unint64_t)options
{
  optionsCopy = options;
  v39 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v11 = HMMediaDestinationControllerUpateOptionsAsString();
    v33 = 138543874;
    v34 = v10;
    v35 = 2112;
    v36 = identifierCopy;
    v37 = 2112;
    v38 = v11;
    _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Updating with destination identifier: %@ support options: %@", &v33, 0x20u);
  }

  objc_autoreleasePoolPop(v7);
  stagedAvailableDestinationIdentifiers = [(HMDMediaDestinationController *)selfCopy stagedAvailableDestinationIdentifiers];
  value = [stagedAvailableDestinationIdentifiers value];

  if (!identifierCopy || (optionsCopy & 3) != 0 || ([value containsObject:identifierCopy] & 1) != 0)
  {
    v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
    if (!identifierCopy || (optionsCopy & 4) != 0)
    {
      if (!identifierCopy)
      {
LABEL_19:
        v24 = [(HMDMediaDestinationController *)selfCopy _updateDestinationIdentifier:identifierCopy];
        [v14 addObject:v24];
        v25 = [MEMORY[0x277D2C900] chainFutures:v14];

        goto LABEL_23;
      }
    }

    else if (![(HMDMediaDestinationController *)selfCopy hasSetDestinationRelatedToIdentifier:identifierCopy])
    {
      [(HMDMediaDestinationController *)selfCopy unsetAudioGroupForCurrentDestination];
    }

    v15 = optionsCopy >> 1;
    v16 = [(HMDMediaDestinationController *)selfCopy dataSourceDestinationUsingRelatedIdentifier:identifierCopy];
    if (v16)
    {
      v17 = objc_autoreleasePoolPush();
      v18 = selfCopy;
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        v20 = HMFGetLogIdentifier();
        v33 = 138543618;
        v34 = v20;
        v35 = 2112;
        v36 = v16;
        _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_INFO, "%{public}@Updating using related destination: %@", &v33, 0x16u);
      }

      objc_autoreleasePoolPop(v17);
      uniqueIdentifier = [v16 uniqueIdentifier];

      v15 = 0;
      identifierCopy = uniqueIdentifier;
    }

    if ((v15 & 1) == 0 && identifierCopy && (optionsCopy & 4) == 0)
    {
      identifier = [(HMDMediaDestinationController *)selfCopy identifier];
      v23 = [(HMDMediaDestinationController *)selfCopy updateDestinationWithIdentifier:identifierCopy audioGroupIdentifier:identifier];
      [v14 addObject:v23];
    }

    goto LABEL_19;
  }

  v26 = objc_autoreleasePoolPush();
  v27 = selfCopy;
  v28 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
  {
    v29 = HMFGetLogIdentifier();
    v33 = 138543874;
    v34 = v29;
    v35 = 2112;
    v36 = identifierCopy;
    v37 = 2112;
    v38 = value;
    _os_log_impl(&dword_2531F8000, v28, OS_LOG_TYPE_ERROR, "%{public}@Failed to update to destination identifier: %@ due to identifier not in available destination identifiers: %@", &v33, 0x20u);
  }

  objc_autoreleasePoolPop(v26);
  v30 = MEMORY[0x277D2C900];
  v14 = [MEMORY[0x277CCA9B8] hmPrivateErrorWithCode:9006];
  v25 = [v30 futureWithError:v14];
LABEL_23:

  v31 = *MEMORY[0x277D85DE8];

  return v25;
}

- (id)legacyUpdateAvailableDestinationIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  stagedAvailableDestinationIdentifiers = [(HMDMediaDestinationController *)self stagedAvailableDestinationIdentifiers];
  [stagedAvailableDestinationIdentifiers stageValue:identifiersCopy withTimeout:60.0];

  v6 = objc_alloc_init(MEMORY[0x277D2C900]);
  backingStoreHandler = [(HMDMediaDestinationController *)self backingStoreHandler];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __77__HMDMediaDestinationController_legacyUpdateAvailableDestinationIdentifiers___block_invoke;
  v12[3] = &unk_2797358C8;
  v12[4] = self;
  v8 = v6;
  v13 = v8;
  [backingStoreHandler updateAvailableDestinationIdentifiers:identifiersCopy completion:v12];

  v9 = v13;
  v10 = v8;

  return v8;
}

void __77__HMDMediaDestinationController_legacyUpdateAvailableDestinationIdentifiers___block_invoke(uint64_t a1, void *a2)
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
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_ERROR, "%{public}@Update available destination identifiers finished with error: %@", &v11, 0x16u);
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
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Update available destination identifiers finished", &v11, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    [*(a1 + 40) finishWithNoResult];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (id)updateAvailableDestinationIdentifiers:(id)identifiers
{
  v29 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v25 = 138543618;
    v26 = v8;
    v27 = 2112;
    v28 = identifiersCopy;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Updating with available destination identifiers: %@", &v25, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  if (isFeatureHomeTheaterQFAEnabledForTests && ([isFeatureHomeTheaterQFAEnabledForTests BOOLValue] & 1) != 0)
  {
    mediaGroupParticipantDataLocalStorage = [(HMDMediaDestinationController *)selfCopy mediaGroupParticipantDataLocalStorage];
    v10 = mediaGroupParticipantDataLocalStorage;
    if (mediaGroupParticipantDataLocalStorage)
    {
      [mediaGroupParticipantDataLocalStorage updateDestinationControllerAvailableDestinationIdentifiers:identifiersCopy];
      stagedAvailableDestinationIdentifiers = [(HMDMediaDestinationController *)selfCopy stagedAvailableDestinationIdentifiers];
      [stagedAvailableDestinationIdentifiers commitValue:identifiersCopy];

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
        v25 = 138543362;
        v26 = v20;
        _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_ERROR, "%{public}@Failed to update available destination identifiers in local storage due to no local storage found", &v25, 0xCu);
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
    futureWithNoResult = [(HMDMediaDestinationController *)v14 legacyUpdateAvailableDestinationIdentifiers:identifiersCopy];
  }

  v23 = *MEMORY[0x277D85DE8];

  return futureWithNoResult;
}

- (void)requestToUpdateDestinationIdentifier:(id)identifier options:(unint64_t)options completion:(id)completion
{
  completionCopy = completion;
  identifierCopy = identifier;
  messageHandler = [(HMDMediaDestinationController *)self messageHandler];
  [messageHandler sendRequestToUpdateDestinationIdentifier:identifierCopy options:options completion:completionCopy];
}

- (void)stageAvailableDestinationIdentifiers:(id)identifiers
{
  v23 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    *buf = 138543618;
    v20 = v9;
    v21 = 2112;
    v22 = identifiersCopy;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Staging available destination identifiers: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  stagedAvailableDestinationIdentifiers = [(HMDMediaDestinationController *)selfCopy stagedAvailableDestinationIdentifiers];
  value = [stagedAvailableDestinationIdentifiers value];

  v12 = [value count];
  v13 = [identifiersCopy count];
  if (v12 == v13)
  {
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __70__HMDMediaDestinationController_stageAvailableDestinationIdentifiers___block_invoke;
    v17[3] = &unk_2797358A0;
    v3 = &v18;
    v18 = identifiersCopy;
    v14 = [value na_allObjectsPassTest:v17] ^ 1;
  }

  else
  {
    v14 = 1;
  }

  stagedAvailableDestinationIdentifiers2 = [(HMDMediaDestinationController *)selfCopy stagedAvailableDestinationIdentifiers];
  [stagedAvailableDestinationIdentifiers2 stageValue:identifiersCopy withTimeout:600.0];

  if (v14)
  {
    [(HMDMediaDestinationController *)selfCopy notifyDelegateDidUpdateStagedValues];
  }

  if (v12 == v13)
  {
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)stageDestinationIdentifier:(id)identifier
{
  v19 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v15 = 138543618;
    v16 = v8;
    v17 = 2112;
    v18 = identifierCopy;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Staging destination identifier: %@", &v15, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  stagedDestinationIdentifier = [(HMDMediaDestinationController *)selfCopy stagedDestinationIdentifier];
  value = [stagedDestinationIdentifier value];
  v11 = [value hmf_isEqualToUUID:identifierCopy];

  stagedDestinationIdentifier2 = [(HMDMediaDestinationController *)selfCopy stagedDestinationIdentifier];
  [stagedDestinationIdentifier2 stageValue:identifierCopy withTimeout:600.0];

  metricsEventDispatcher = [(HMDMediaDestinationController *)selfCopy metricsEventDispatcher];
  [metricsEventDispatcher startStagedDestinationIdentifierCommittedEventWithStagedDestinationIdentifier:identifierCopy];

  if ((v11 & 1) == 0)
  {
    [(HMDMediaDestinationController *)selfCopy notifyDelegateDidUpdateStagedValues];
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)mergeData:(id)data
{
  dataCopy = data;
  backingStoreHandler = [(HMDMediaDestinationController *)self backingStoreHandler];
  [backingStoreHandler mergeData:dataCopy];

  if (![(HMDMediaDestinationController *)self isTargetDevice])
  {
    stagedDestinationIdentifier = [(HMDMediaDestinationController *)self stagedDestinationIdentifier];
    destinationIdentifier = [dataCopy destinationIdentifier];
    [stagedDestinationIdentifier commitValue:destinationIdentifier];

    stagedAvailableDestinationIdentifiers = [(HMDMediaDestinationController *)self stagedAvailableDestinationIdentifiers];
    availableDestinationIdentifiers = [dataCopy availableDestinationIdentifiers];
    [stagedAvailableDestinationIdentifiers commitValue:availableDestinationIdentifiers];
  }
}

- (void)migrateSupportOptions
{
  v19 = *MEMORY[0x277D85DE8];
  if (!isFeatureHomeTheaterQFAEnabledForTests || ([isFeatureHomeTheaterQFAEnabledForTests BOOLValue] & 1) == 0)
  {
    if ([(HMDMediaDestinationController *)self isTargetDevice])
    {
      featuresDataSource = [(HMDMediaDestinationController *)self featuresDataSource];
      v4 = [HMDMediaDestinationController expectedSupportOptionsWithFeaturesDataSource:featuresDataSource];

      committedData = [(HMDMediaDestinationController *)self committedData];
      supportedOptions = [committedData supportedOptions];

      if (supportedOptions != v4)
      {
        v7 = objc_autoreleasePoolPush();
        selfCopy = self;
        v9 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          v10 = HMFGetLogIdentifier();
          v11 = HMMediaDestinationControllerSupportOptionsAsString();
          *buf = 138543618;
          v16 = v10;
          v17 = 2112;
          v18 = v11;
          _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Migrating support options: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v7);
        backingStoreHandler = [(HMDMediaDestinationController *)selfCopy backingStoreHandler];
        v14[0] = MEMORY[0x277D85DD0];
        v14[1] = 3221225472;
        v14[2] = __54__HMDMediaDestinationController_migrateSupportOptions__block_invoke;
        v14[3] = &unk_279735878;
        v14[4] = selfCopy;
        v14[5] = v4;
        [backingStoreHandler updateSupportedOptions:v4 completion:v14];
      }
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __54__HMDMediaDestinationController_migrateSupportOptions__block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
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
      v9 = HMMediaDestinationControllerSupportOptionsAsString();
      v11 = 138543874;
      v12 = v7;
      v13 = 2112;
      v14 = v9;
      v15 = 2112;
      v16 = v3;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_ERROR, "%{public}@Failed to migrate supported options: %@ error: %@", &v11, 0x20u);
    }

    objc_autoreleasePoolPop(v4);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)configureWithHome:(id)home
{
  v16 = *MEMORY[0x277D85DE8];
  homeCopy = home;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    committedData = [(HMDMediaDestinationController *)selfCopy committedData];
    v12 = 138543618;
    v13 = v8;
    v14 = 2112;
    v15 = committedData;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Configuring with data: %@", &v12, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  messageHandler = [(HMDMediaDestinationController *)selfCopy messageHandler];
  [messageHandler configureWithHome:homeCopy];

  [(HMDMediaDestinationController *)selfCopy refreshDestinationController];
  [(HMDMediaDestinationController *)selfCopy migrateSupportOptions];

  v11 = *MEMORY[0x277D85DE8];
}

- (HMDMediaDestinationController)initWithBackingStoreHandler:(id)handler messageHandler:(id)messageHandler metricsEventDispatcher:(id)dispatcher targetDevice:(BOOL)device dataSource:(id)source delegate:(id)delegate featuresDataSource:(id)dataSource
{
  handlerCopy = handler;
  obj = messageHandler;
  messageHandlerCopy = messageHandler;
  dispatcherCopy = dispatcher;
  dispatcherCopy2 = dispatcher;
  sourceCopy = source;
  delegateCopy = delegate;
  dataSourceCopy = dataSource;
  if (!handlerCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_8;
  }

  if (!messageHandlerCopy)
  {
LABEL_8:
    _HMFPreconditionFailure();
    goto LABEL_9;
  }

  if (!dispatcherCopy2)
  {
LABEL_9:
    v34 = _HMFPreconditionFailure();
    return [(HMDMediaDestinationController *)v34 initWithBackingStoreHandler:v35 messageHandler:v36 metricsEventDispatcher:v37 targetDevice:v38 dataSource:v39 delegate:v40, v41];
  }

  v45 = dataSourceCopy;
  v46 = dispatcherCopy2;
  v47 = messageHandlerCopy;
  data = [handlerCopy data];
  v22 = objc_alloc(MEMORY[0x277D0F900]);
  destinationIdentifier = [data destinationIdentifier];
  v24 = [v22 initWithValue:destinationIdentifier];

  v25 = objc_alloc(MEMORY[0x277D0F900]);
  availableDestinationIdentifiers = [data availableDestinationIdentifiers];
  v27 = [v25 initWithValue:availableDestinationIdentifiers];

  v48.receiver = self;
  v48.super_class = HMDMediaDestinationController;
  v28 = [(HMDMediaDestinationController *)&v48 init];
  if (v28)
  {
    v29 = HMFGetOSLogHandle();
    logger = v28->_logger;
    v28->_logger = v29;

    identifier = [handlerCopy identifier];
    identifier = v28->_identifier;
    v28->_identifier = identifier;

    objc_storeStrong(&v28->_backingStoreHandler, handler);
    objc_storeStrong(&v28->_messageHandler, obj);
    v28->_isTargetDevice = device;
    objc_storeStrong(&v28->_metricsEventDispatcher, dispatcherCopy);
    objc_storeWeak(&v28->_dataSource, sourceCopy);
    objc_storeWeak(&v28->_delegate, delegateCopy);
    objc_storeStrong(&v28->_stagedDestinationIdentifier, v24);
    [(HMFStagedValue *)v28->_stagedDestinationIdentifier setDelegate:v28];
    objc_storeStrong(&v28->_stagedAvailableDestinationIdentifiers, v27);
    [(HMFStagedValue *)v28->_stagedAvailableDestinationIdentifiers setDelegate:v28];
    objc_storeStrong(&v28->_featuresDataSource, dataSource);
  }

  return v28;
}

- (HMDMediaDestinationController)initWithData:(id)data backingStore:(id)store messageDispatcher:(id)dispatcher notificationCenter:(id)center logEventSubmitter:(id)submitter dailyScheduler:(id)scheduler targetDevice:(BOOL)device dataSource:(id)self0 delegate:(id)self1
{
  delegateCopy = delegate;
  sourceCopy = source;
  schedulerCopy = scheduler;
  submitterCopy = submitter;
  centerCopy = center;
  dispatcherCopy = dispatcher;
  storeCopy = store;
  dataCopy = data;
  v24 = [HMDMediaDestinationControllerMetricsEventDispatcher alloc];
  identifier = [dataCopy identifier];
  v26 = [(HMDMediaDestinationControllerMetricsEventDispatcher *)v24 initWithIdentifier:identifier logEventSubmitter:submitterCopy dataSource:sourceCopy];

  [schedulerCopy registerDailyTaskRunner:v26];
  v27 = [[HMDMediaDestinationControllerBackingStoreHandler alloc] initWithData:dataCopy backingStore:storeCopy metricsEventDispatcher:v26 delegate:self];

  v28 = [HMDMediaDestinationControllerMessageHandler alloc];
  identifier2 = [dataCopy identifier];

  v30 = [(HMDMediaDestinationControllerMessageHandler *)v28 initWithMessageTargetUUID:identifier2 messageDispatcher:dispatcherCopy notificationCenter:centerCopy metricsEventDispatcher:v26 targetDevice:device dataSource:self delegate:self];
  v31 = [(HMDMediaDestinationController *)self initWithBackingStoreHandler:v27 messageHandler:v30 metricsEventDispatcher:v26 targetDevice:device dataSource:sourceCopy delegate:delegateCopy];

  return v31;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t52_193396 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t52_193396, &__block_literal_global_193397);
  }

  v3 = logCategory__hmf_once_v53_193398;

  return v3;
}

uint64_t __44__HMDMediaDestinationController_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v53_193398;
  logCategory__hmf_once_v53_193398 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end