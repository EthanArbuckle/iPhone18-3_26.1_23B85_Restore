@interface HMDMediaDestinationController
+ (id)logCategory;
- (BOOL)hasSetDestinationRelatedToIdentifier:(id)a3;
- (HMDMediaDestinationController)initWithBackingStoreHandler:(id)a3 messageHandler:(id)a4 metricsEventDispatcher:(id)a5 targetDevice:(BOOL)a6 dataSource:(id)a7 delegate:(id)a8 featuresDataSource:(id)a9;
- (HMDMediaDestinationController)initWithData:(id)a3 backingStore:(id)a4 messageDispatcher:(id)a5 notificationCenter:(id)a6 logEventSubmitter:(id)a7 dailyScheduler:(id)a8 targetDevice:(BOOL)a9 dataSource:(id)a10 delegate:(id)a11;
- (HMDMediaDestinationControllerDataSource)dataSource;
- (HMDMediaDestinationControllerDelegate)delegate;
- (HMMediaDestinationControllerData)committedData;
- (HMMediaDestinationControllerData)data;
- (NSString)urlString;
- (id)_updateDestinationIdentifier:(id)a3;
- (id)assistantObjectWithHome:(id)a3 name:(id)a4;
- (id)attributeDescriptions;
- (id)dataSourceAvailableDestinationIdentifiers;
- (id)dataSourceDestinationManagerWithIdentifier:(id)a3;
- (id)dataSourceDestinationUsingRelatedIdentifier:(id)a3;
- (id)dataSourceDestinationWithIdentifier:(id)a3;
- (id)dataSourceTargetAccessory;
- (id)filteredAvailableDestinationIdentifiers;
- (id)filteredDestinationIdentifierFilteredAvailableDestinationIdentifiers:(id)a3;
- (id)legacyUpdateAvailableDestinationIdentifiers:(id)a3;
- (id)legacyUpdateDestinationIdentifier:(id)a3;
- (id)logIdentifier;
- (id)mediaGroupParticipantDataLocalStorage;
- (id)messageHandler:(id)a3 deviceForOutgoingMessage:(id)a4;
- (id)messageHandler:(id)a3 shouldRelayIncomingMessage:(id)a4;
- (id)updateAvailableDestinationIdentifiers:(id)a3;
- (id)updateDestinationIdentifier:(id)a3 updateOptions:(unint64_t)a4;
- (id)updateDestinationWithIdentifier:(id)a3 audioGroupIdentifier:(id)a4;
- (void)configureWithHome:(id)a3;
- (void)mediaDestinationControllerBackingStoreHandler:(id)a3 didUpdateAvailableDestinationIdentifiers:(id)a4;
- (void)mediaDestinationControllerBackingStoreHandler:(id)a3 didUpdateDestinationIdentifier:(id)a4;
- (void)mediaDestinationControllerBackingStoreHandlerDidProcessUnexpectedModelAdd:(id)a3;
- (void)mediaDestinationControllerMessageHandler:(id)a3 didReceiveMediaDestinationControllerUpdateDestinationRequestMessage:(id)a4 destinationIdentifier:(id)a5 updateOptions:(unint64_t)a6;
- (void)mediaDestinationControllerMessageHandler:(id)a3 didReceiveMediaDestinationControllerUpdatedDestinationNotification:(id)a4 destinationControllerIdentifier:(id)a5 destinationIdentifier:(id)a6;
- (void)mergeData:(id)a3;
- (void)migrateSupportOptions;
- (void)notifyDelegateDidUpdateStagedValues;
- (void)refreshAvailableDestinationIdentifiers;
- (void)refreshDestinationController;
- (void)refreshDestinationIdentifier;
- (void)requestToUpdateDestinationIdentifier:(id)a3 options:(unint64_t)a4 completion:(id)a5;
- (void)stageAvailableDestinationIdentifiers:(id)a3;
- (void)stageDestinationIdentifier:(id)a3;
- (void)stagedValue:(id)a3 didExpireAvailableDestinationIdentifiers:(id)a4;
- (void)stagedValue:(id)a3 didExpireDestinationIdentifier:(id)a4;
- (void)stagedValue:(id)a3 didExpireValue:(id)a4;
- (void)triggerStageValueDidExpireValueForStagedAvailableDestinationIdentifiers;
- (void)triggerStageValueDidExpireValueForStagedDestinationIdentifier;
- (void)unsetAudioGroupForCurrentDestination;
@end

@implementation HMDMediaDestinationController

- (id)assistantObjectWithHome:(id)a3 name:(id)a4
{
  v16[9] = *MEMORY[0x277D85DE8];
  v15[0] = @"objectType";
  v15[1] = @"objectName";
  v16[0] = *MEMORY[0x277D48150];
  v16[1] = a4;
  v15[2] = @"objectIdentifier";
  v6 = a4;
  v7 = a3;
  v8 = [(HMDMediaDestinationController *)self urlString];
  v16[2] = v8;
  v15[3] = @"objectHome";
  v9 = [v7 name];
  v16[3] = v9;
  v15[4] = @"objectHomeIdentifier";
  v10 = [v7 urlString];

  v16[4] = v10;
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
  v3 = [(HMDMediaDestinationController *)self identifier];
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
  v3 = [(HMDMediaDestinationController *)self delegate];
  v4 = v3;
  if (v3)
  {
    [v3 mediaDestinationControllerDidUpdateStagedValues:self];
  }

  else
  {
    v5 = objc_autoreleasePoolPush();
    v6 = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      v10 = 138543362;
      v11 = v8;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_ERROR, "%{public}@Failed notify did update staged values due to no delegate", &v10, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)stagedValue:(id)a3 didExpireAvailableDestinationIdentifiers:(id)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = [MEMORY[0x277CBEB98] setWithArray:v7];
    v9 = MEMORY[0x277CBEB98];
    v10 = [(HMDMediaDestinationController *)self committedData];
    v11 = [v10 availableDestinationIdentifiers];
    v12 = [v9 setWithArray:v11];
    v13 = [v8 isEqualToSet:v12];

    if ((v13 & 1) == 0)
    {
      v14 = objc_autoreleasePoolPush();
      v15 = self;
      v16 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = HMFGetLogIdentifier();
        v25 = 138543618;
        v26 = v17;
        v27 = 2112;
        v28 = v7;
        _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_ERROR, "%{public}@Handling did expire available destination identifiers: %@", &v25, 0x16u);
      }

      objc_autoreleasePoolPop(v14);
      v18 = [(HMDMediaDestinationController *)v15 metricsEventDispatcher];
      v19 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:15];
      [v18 submitFailureEventWithEventErrorCode:9 error:v19];

      [(HMDMediaDestinationController *)v15 notifyDelegateDidUpdateStagedValues];
    }
  }

  else
  {
    v20 = objc_autoreleasePoolPush();
    v21 = self;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = HMFGetLogIdentifier();
      v25 = 138543362;
      v26 = v23;
      _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_ERROR, "%{public}@Expired available destination identifiers was null when the property is non-null", &v25, 0xCu);
    }

    objc_autoreleasePoolPop(v20);
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (void)stagedValue:(id)a3 didExpireDestinationIdentifier:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDMediaDestinationController *)self committedData];
  v9 = [v8 destinationIdentifier];
  v10 = HMFEqualObjects();

  if ((v10 & 1) == 0)
  {
    v11 = objc_autoreleasePoolPush();
    v12 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v19 = 138543618;
      v20 = v14;
      v21 = 2112;
      v22 = v7;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_ERROR, "%{public}@Handling did expire destination identifier: %@", &v19, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    v15 = [(HMDMediaDestinationController *)v12 metricsEventDispatcher];
    v16 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:15];
    [v15 submitFailureEventWithEventErrorCode:8 error:v16];

    v17 = [(HMDMediaDestinationController *)v12 messageHandler];
    [v17 notifyUpdatedDestinationWithIdentifier:v7];

    [(HMDMediaDestinationController *)v12 notifyDelegateDidUpdateStagedValues];
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)stagedValue:(id)a3 didExpireValue:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDMediaDestinationController *)self stagedDestinationIdentifier];

  if (v8 == v6)
  {
    [(HMDMediaDestinationController *)self stagedValue:v6 didExpireDestinationIdentifier:v7];
  }

  else
  {
    v9 = [(HMDMediaDestinationController *)self stagedAvailableDestinationIdentifiers];

    if (v9 == v6)
    {
      [(HMDMediaDestinationController *)self stagedValue:v6 didExpireAvailableDestinationIdentifiers:v7];
    }

    else
    {
      v10 = objc_autoreleasePoolPush();
      v11 = self;
      v12 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = HMFGetLogIdentifier();
        v15 = 138543874;
        v16 = v13;
        v17 = 2112;
        v18 = v6;
        v19 = 2112;
        v20 = v7;
        _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@Unknown stage value: %@ did expire value: %@", &v15, 0x20u);
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
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v10 = 138543362;
    v11 = v6;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Triggering stage value did expire value for staged available destination identifiers", &v10, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v7 = [(HMDMediaDestinationController *)v4 stagedAvailableDestinationIdentifiers];
  v8 = [v7 value];
  [(HMDMediaDestinationController *)v4 stagedValue:v7 didExpireValue:v8];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)triggerStageValueDidExpireValueForStagedDestinationIdentifier
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v10 = 138543362;
    v11 = v6;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Triggering stage value did expire value for staged destination identifier", &v10, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v7 = [(HMDMediaDestinationController *)v4 stagedDestinationIdentifier];
  v8 = [v7 value];
  [(HMDMediaDestinationController *)v4 stagedValue:v7 didExpireValue:v8];

  v9 = *MEMORY[0x277D85DE8];
}

- (id)logIdentifier
{
  v2 = [(HMDMediaDestinationController *)self identifier];
  v3 = [v2 UUIDString];

  return v3;
}

- (id)attributeDescriptions
{
  v24[5] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  v23 = [(HMDMediaDestinationController *)self identifier];
  v22 = [v3 initWithName:@"identifier" value:v23];
  v24[0] = v22;
  v4 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMDMediaDestinationController *)self isTargetDevice];
  v21 = HMFBooleanToString();
  v20 = [v4 initWithName:@"isTargetDevice" value:v21];
  v24[1] = v20;
  v5 = objc_alloc(MEMORY[0x277D0F778]);
  v6 = [(HMDMediaDestinationController *)self stagedDestinationIdentifier];
  v7 = [v6 value];
  v8 = [v5 initWithName:@"destinationIdentifier" value:v7];
  v24[2] = v8;
  v9 = objc_alloc(MEMORY[0x277D0F778]);
  v10 = [(HMDMediaDestinationController *)self committedData];
  [v10 supportedOptions];
  v11 = HMMediaDestinationControllerSupportOptionsAsString();
  v12 = [v9 initWithName:@"supportedOptions" value:v11];
  v24[3] = v12;
  v13 = objc_alloc(MEMORY[0x277D0F778]);
  v14 = [(HMDMediaDestinationController *)self stagedAvailableDestinationIdentifiers];
  v15 = [v14 value];
  v16 = [v13 initWithName:@"availableDestinationIdentifiers" value:v15];
  v24[4] = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:5];

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

- (void)mediaDestinationControllerBackingStoreHandlerDidProcessUnexpectedModelAdd:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v10 = 138543362;
    v11 = v8;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Refreshing destination controller due to unexpected model add", &v10, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  [(HMDMediaDestinationController *)v6 refreshDestinationController];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)mediaDestinationControllerBackingStoreHandler:(id)a3 didUpdateAvailableDestinationIdentifiers:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v14 = 138543618;
    v15 = v11;
    v16 = 2112;
    v17 = v7;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Committing updated available destination identifiers: %@", &v14, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  v12 = [(HMDMediaDestinationController *)v9 stagedAvailableDestinationIdentifiers];
  [v12 commitValue:v7];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)mediaDestinationControllerBackingStoreHandler:(id)a3 didUpdateDestinationIdentifier:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = self->_logger;
  if (os_signpost_enabled(v8))
  {
    if (v7)
    {
      v18 = 138412290;
      v19 = v7;
      _os_signpost_emit_with_name_impl(&dword_229538000, v8, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "HMDMediaDestinationControllerCommitDestinationIdentifierEvent", "destinationIdentifier=%{signpost.description:attribute}@ ", &v18, 0xCu);
    }

    else
    {
      v9 = [MEMORY[0x277CBEB68] null];
      v18 = 138412290;
      v19 = v9;
      _os_signpost_emit_with_name_impl(&dword_229538000, v8, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "HMDMediaDestinationControllerCommitDestinationIdentifierEvent", "destinationIdentifier=%{signpost.description:attribute}@ ", &v18, 0xCu);
    }
  }

  v10 = objc_autoreleasePoolPush();
  v11 = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = HMFGetLogIdentifier();
    v18 = 138543618;
    v19 = v13;
    v20 = 2112;
    v21 = v7;
    _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@Committing updated destination identifier: %@", &v18, 0x16u);
  }

  objc_autoreleasePoolPop(v10);
  v14 = [(HMDMediaDestinationController *)v11 stagedDestinationIdentifier];
  [v14 commitValue:v7];

  v15 = [(HMDMediaDestinationController *)v11 metricsEventDispatcher];
  [v15 submitStagedDestinationIdentifierCommittedEventWithCommittedDestinationIdentifier:v7];

  v16 = [(HMDMediaDestinationController *)v11 messageHandler];
  [v16 notifyUpdatedDestinationWithIdentifier:v7];

  v17 = *MEMORY[0x277D85DE8];
}

- (void)mediaDestinationControllerMessageHandler:(id)a3 didReceiveMediaDestinationControllerUpdatedDestinationNotification:(id)a4 destinationControllerIdentifier:(id)a5 destinationIdentifier:(id)a6
{
  v34 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(HMDMediaDestinationController *)self identifier];
  if ([v12 hmf_isEqualToUUID:v14])
  {
  }

  else
  {
    v15 = [(HMDMediaDestinationController *)self stagedDestinationIdentifier];
    v16 = [v15 value];
    v17 = [v13 hmf_isEqualToUUID:v16];

    if (v17)
    {
      v18 = objc_autoreleasePoolPush();
      v19 = self;
      v20 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v21 = HMFGetLogIdentifier();
        *buf = 138543618;
        v31 = v21;
        v32 = 2112;
        v33 = v13;
        _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_INFO, "%{public}@Unsetting media destination due to another destination controller with the same destination identifier: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v18);
      v22 = [(HMDMediaDestinationController *)v19 updateDestinationIdentifier:0 updateOptions:4];
      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = __195__HMDMediaDestinationController_mediaDestinationControllerMessageHandler_didReceiveMediaDestinationControllerUpdatedDestinationNotification_destinationControllerIdentifier_destinationIdentifier___block_invoke;
      v29[3] = &unk_27868A250;
      v29[4] = v19;
      v23 = [v22 addFailureBlock:v29];
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __195__HMDMediaDestinationController_mediaDestinationControllerMessageHandler_didReceiveMediaDestinationControllerUpdatedDestinationNotification_destinationControllerIdentifier_destinationIdentifier___block_invoke_32;
      v28[3] = &unk_27868A200;
      v28[4] = v19;
      v24 = [v22 addSuccessBlock:v28];
    }
  }

  v25 = [(HMDMediaDestinationController *)self identifier];
  v26 = [v12 hmf_isEqualToUUID:v25];

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
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_ERROR, "%{public}@Update destination identifier to unset destination finished with error: %@", &v9, 0x16u);
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
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Update destination identifier to unset destination finished", &v9, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)mediaDestinationControllerMessageHandler:(id)a3 didReceiveMediaDestinationControllerUpdateDestinationRequestMessage:(id)a4 destinationIdentifier:(id)a5 updateOptions:(unint64_t)a6
{
  v32 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = objc_autoreleasePoolPush();
  v14 = self;
  v15 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = HMFGetLogIdentifier();
    *buf = 138543362;
    v31 = v16;
    _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@Handling did receive media destination controller update destination request message", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v13);
  v17 = [(HMDMediaDestinationController *)v14 metricsEventDispatcher];
  v18 = [(HMDMediaDestinationController *)v14 stagedDestinationIdentifier];
  v19 = [v18 value];
  [v17 submitReceivedUpdateDestinationRequestMessageEventWithDestinationIdentifier:v12 existingDestinationIdentifier:v19];

  v20 = [(HMDMediaDestinationController *)v14 updateDestinationIdentifier:v12 updateOptions:a6];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __178__HMDMediaDestinationController_mediaDestinationControllerMessageHandler_didReceiveMediaDestinationControllerUpdateDestinationRequestMessage_destinationIdentifier_updateOptions___block_invoke;
  v28[3] = &unk_27868A1D8;
  v28[4] = v14;
  v21 = v11;
  v29 = v21;
  v22 = [v20 addFailureBlock:v28];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __178__HMDMediaDestinationController_mediaDestinationControllerMessageHandler_didReceiveMediaDestinationControllerUpdateDestinationRequestMessage_destinationIdentifier_updateOptions___block_invoke_31;
  v26[3] = &unk_27868A228;
  v26[4] = v14;
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
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_ERROR, "%{public}@Update destination future finished with error: %@", &v9, 0x16u);
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
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Update destination future finished", &v9, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  [*(a1 + 40) respondWithSuccess];

  v8 = *MEMORY[0x277D85DE8];
}

- (id)messageHandler:(id)a3 deviceForOutgoingMessage:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDMediaDestinationController *)self dataSourceTargetAccessory];
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
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_ERROR, "%{public}@Failed to get relay preference due to no target accessory", &v17, 0xCu);
    }

    objc_autoreleasePoolPop(v11);
    v10 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)messageHandler:(id)a3 shouldRelayIncomingMessage:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDMediaDestinationController *)self dataSourceTargetAccessory];
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
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_ERROR, "%{public}@Failed to get relay preference due to no target accessory", &v17, 0xCu);
    }

    objc_autoreleasePoolPop(v11);
    v10 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)dataSourceDestinationUsingRelatedIdentifier:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDMediaDestinationController *)self dataSource];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 mediaDestinationController:self destinationWithParentIdentifier:v4];
    if (v7)
    {
      v8 = objc_autoreleasePoolPush();
      v9 = self;
      v10 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = HMFGetLogIdentifier();
        v26 = 138543874;
        v27 = v11;
        v28 = 2112;
        v29 = v7;
        v30 = 2112;
        v31 = v4;
        _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Found destination: %@ using parent identifier: %@", &v26, 0x20u);
      }

      objc_autoreleasePoolPop(v8);
      v12 = [v7 uniqueIdentifier];

      v4 = v12;
    }

    v13 = [v6 mediaDestinationController:self rootDestinationWithDecendantIdentifier:v4];
    v14 = v7;
    if (v13)
    {
      v15 = objc_autoreleasePoolPush();
      v16 = self;
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v18 = HMFGetLogIdentifier();
        v26 = 138543874;
        v27 = v18;
        v28 = 2112;
        v29 = v13;
        v30 = 2112;
        v31 = v4;
        _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@Found root destination: %@ using decendant identifier: %@", &v26, 0x20u);
      }

      objc_autoreleasePoolPop(v15);
      v14 = v13;
    }

    v19 = v14;
  }

  else
  {
    v20 = objc_autoreleasePoolPush();
    v21 = self;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = HMFGetLogIdentifier();
      v26 = 138543618;
      v27 = v23;
      v28 = 2112;
      v29 = v4;
      _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_ERROR, "%{public}@Failed to get data source during destination with parent identifier: %@", &v26, 0x16u);
    }

    objc_autoreleasePoolPop(v20);
    v19 = 0;
  }

  v24 = *MEMORY[0x277D85DE8];

  return v19;
}

- (id)dataSourceDestinationWithIdentifier:(id)a3
{
  v3 = [(HMDMediaDestinationController *)self dataSourceDestinationManagerWithIdentifier:a3];
  v4 = [v3 destination];

  return v4;
}

- (id)dataSourceDestinationManagerWithIdentifier:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDMediaDestinationController *)self dataSource];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 mediaDestinationController:self destinationManagerWithIdentifier:v4];
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v9 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v14 = 138543618;
      v15 = v11;
      v16 = 2112;
      v17 = v4;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to get destination manager with identifier: %@ due to no data source", &v14, 0x16u);
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
  v3 = [(HMDMediaDestinationController *)self dataSource];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 targetAccessoryForMediaDestinationController:self];
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
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_ERROR, "%{public}@Failed to get target accessory due to no data source", &v12, 0xCu);
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
  v3 = [(HMDMediaDestinationController *)self dataSource];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 availableDestinationIdentifiersForMediaDestinationController:self];
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
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_ERROR, "%{public}@Failed to get refreshed available destination identifiers due to no data source", &v12, 0xCu);
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
  v3 = [(HMDMediaDestinationController *)self dataSource];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 mediaGroupLocalDataStorageForMediaDestinationController:self];
    v6 = v5;
    if (v5)
    {
      v7 = v5;
    }

    else
    {
      v12 = objc_autoreleasePoolPush();
      v13 = self;
      v14 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = HMFGetLogIdentifier();
        v18 = 138543618;
        v19 = v15;
        v20 = 2112;
        v21 = v4;
        _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_ERROR, "%{public}@Failed to get local data storage due data source: %@", &v18, 0x16u);
      }

      objc_autoreleasePoolPop(v12);
    }
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v9 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v18 = 138543362;
      v19 = v11;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to data souce local data storage due to no data source", &v18, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
    v6 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)filteredDestinationIdentifierFilteredAvailableDestinationIdentifiers:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDMediaDestinationController *)self stagedDestinationIdentifier];
  v6 = [v5 value];

  if (!v6)
  {
    v9 = 0;
    goto LABEL_14;
  }

  v7 = [(HMDMediaDestinationController *)self dataSourceDestinationWithIdentifier:v6];
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = [(HMDMediaDestinationController *)self dataSourceDestinationUsingRelatedIdentifier:v6];
    if (!v8)
    {
      goto LABEL_10;
    }
  }

  v10 = [v8 audioGroupIdentifier];
  v11 = [(HMDMediaDestinationController *)self identifier];
  if (([v10 hmf_isEqualToUUID:v11] & 1) == 0)
  {

    goto LABEL_10;
  }

  v12 = [v4 containsObject:v6];

  if ((v12 & 1) == 0)
  {
LABEL_10:
    v13 = objc_autoreleasePoolPush();
    v14 = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      v19 = 138544130;
      v20 = v16;
      v21 = 2112;
      v22 = v6;
      v23 = 2112;
      v24 = v8;
      v25 = 2112;
      v26 = v4;
      _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@Filtering unknown destination with identifier: %@ due to destination: %@ available destinations: %@", &v19, 0x2Au);
    }

    objc_autoreleasePoolPop(v13);
    v9 = 0;
    goto LABEL_13;
  }

  v9 = v6;
LABEL_13:

LABEL_14:
  v17 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)filteredAvailableDestinationIdentifiers
{
  v3 = [(HMDMediaDestinationController *)self stagedAvailableDestinationIdentifiers];
  v4 = [v3 value];

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __72__HMDMediaDestinationController_filteredAvailableDestinationIdentifiers__block_invoke;
  v7[3] = &unk_27868A1B0;
  v7[4] = self;
  v5 = [v4 na_filter:v7];

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
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Filtering unknown available destination with identifier: %@", &v11, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
  }

  v9 = *MEMORY[0x277D85DE8];
  return v4 != 0;
}

- (HMMediaDestinationControllerData)data
{
  v3 = [(HMDMediaDestinationController *)self backingStoreHandler];
  v4 = [v3 data];
  v5 = [v4 mutableCopy];

  v6 = [(HMDMediaDestinationController *)self filteredAvailableDestinationIdentifiers];
  [v5 setAvailableDestinationIdentifiers:v6];

  v7 = [v5 availableDestinationIdentifiers];
  v8 = [(HMDMediaDestinationController *)self filteredDestinationIdentifierFilteredAvailableDestinationIdentifiers:v7];
  [v5 setDestinationIdentifier:v8];

  v9 = [v5 copy];

  return v9;
}

- (HMMediaDestinationControllerData)committedData
{
  v2 = [(HMDMediaDestinationController *)self backingStoreHandler];
  v3 = [v2 data];

  return v3;
}

- (BOOL)hasSetDestinationRelatedToIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(HMDMediaDestinationController *)self stagedDestinationIdentifier];
  v6 = [v5 value];

  if (v6)
  {
    if ([v6 hmf_isEqualToUUID:v4])
    {
      v7 = 1;
    }

    else
    {
      v8 = [(HMDMediaDestinationController *)self dataSourceDestinationUsingRelatedIdentifier:v4];
      if (v8)
      {
        v9 = [(HMDMediaDestinationController *)self dataSourceDestinationUsingRelatedIdentifier:v6];
        v10 = v9;
        if (v9)
        {
          v11 = [v9 uniqueIdentifier];
          v12 = [v8 uniqueIdentifier];
          v7 = [v11 hmf_isEqualToUUID:v12];
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
  v3 = [(HMDMediaDestinationController *)self stagedDestinationIdentifier];
  v4 = [v3 value];

  if (v4)
  {
    v5 = [(HMDMediaDestinationController *)self dataSourceDestinationUsingRelatedIdentifier:v4];
    if (v5)
    {
      v6 = v5;
      v7 = objc_autoreleasePoolPush();
      v8 = self;
      v9 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = HMFGetLogIdentifier();
        v11 = [v6 identifier];
        *buf = 138543874;
        v20 = v10;
        v21 = 2112;
        v22 = v4;
        v23 = 2112;
        v24 = v11;
        _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Updating related destination identifier: %@ to destination identifier: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v7);
      v12 = [v6 uniqueIdentifier];
      v13 = [(HMDMediaDestinationController *)v8 updateDestinationIdentifier:v12];

      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __61__HMDMediaDestinationController_refreshDestinationIdentifier__block_invoke;
      v18[3] = &unk_27868A250;
      v18[4] = v8;
      v14 = [v13 addFailureBlock:v18];
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __61__HMDMediaDestinationController_refreshDestinationIdentifier__block_invoke_29;
      v17[3] = &unk_27868A200;
      v17[4] = v8;
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
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_ERROR, "%{public}@Update destination identifier for refresh finished with error: %@", &v9, 0x16u);
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
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Update destination identifier for refresh finished", &v9, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)refreshAvailableDestinationIdentifiers
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = [(HMDMediaDestinationController *)self dataSourceAvailableDestinationIdentifiers];
  if (v3)
  {
    v4 = [(HMDMediaDestinationController *)self stagedAvailableDestinationIdentifiers];
    v5 = [v4 value];

    v6 = [MEMORY[0x277CBEB98] setWithArray:v3];
    v7 = [MEMORY[0x277CBEB98] setWithArray:v5];
    v8 = [v6 isEqualToSet:v7];

    if ((v8 & 1) == 0)
    {
      v9 = [(HMDMediaDestinationController *)self updateAvailableDestinationIdentifiers:v3];
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __71__HMDMediaDestinationController_refreshAvailableDestinationIdentifiers__block_invoke;
      v18[3] = &unk_27868A250;
      v18[4] = self;
      v10 = [v9 addFailureBlock:v18];
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __71__HMDMediaDestinationController_refreshAvailableDestinationIdentifiers__block_invoke_27;
      v17[3] = &unk_27868A200;
      v17[4] = self;
      v11 = [v9 addSuccessBlock:v17];
    }
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    v13 = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543362;
      v20 = v15;
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_ERROR, "%{public}@Unable to update available destination identifiers due to no refreshed available destination identifiers", buf, 0xCu);
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
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_ERROR, "%{public}@Update available destination identifiers for refresh finished with error: %@", &v9, 0x16u);
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
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Update available destination identifiers for refresh finished", &v9, 0xCu);
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
    v4 = self;
    v5 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = HMFGetLogIdentifier();
      v8 = 138543362;
      v9 = v6;
      _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Refreshing destination controller", &v8, 0xCu);
    }

    objc_autoreleasePoolPop(v3);
    [(HMDMediaDestinationController *)v4 refreshAvailableDestinationIdentifiers];
    [(HMDMediaDestinationController *)v4 refreshDestinationIdentifier];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (id)updateDestinationWithIdentifier:(id)a3 audioGroupIdentifier:(id)a4
{
  v38 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543874;
    v33 = v11;
    v34 = 2112;
    v35 = v6;
    v36 = 2112;
    v37 = v7;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Updating destination with identifier: %@ audio group identifier: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  v12 = [(HMDMediaDestinationController *)v9 dataSourceDestinationManagerWithIdentifier:v6];
  v13 = v12;
  if (v12)
  {
    [v12 stageAudioGroupIdentifier:v7];
    v14 = objc_alloc_init(MEMORY[0x277D2C900]);
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __86__HMDMediaDestinationController_updateDestinationWithIdentifier_audioGroupIdentifier___block_invoke;
    v30[3] = &unk_27868A1D8;
    v30[4] = v9;
    v15 = v14;
    v31 = v15;
    [v13 requestToUpdateAudioGroupIdentifier:v7 completion:v30];
    v16 = v31;
    v17 = v15;

    v18 = v17;
    goto LABEL_12;
  }

  v19 = objc_autoreleasePoolPush();
  v20 = v9;
  v21 = HMFGetOSLogHandle();
  v22 = v21;
  if (v7)
  {
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v23 = HMFGetLogIdentifier();
      *buf = 138543618;
      v33 = v23;
      v34 = 2112;
      v35 = v6;
      v24 = "%{public}@Failed to update destination due to no destination manager found for identifier: %@";
      v25 = v22;
      v26 = OS_LOG_TYPE_ERROR;
LABEL_10:
      _os_log_impl(&dword_229538000, v25, v26, v24, buf, 0x16u);
    }
  }

  else if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    v23 = HMFGetLogIdentifier();
    *buf = 138543618;
    v33 = v23;
    v34 = 2112;
    v35 = v6;
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
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_ERROR, "%{public}@Send request to update audio group identifier completed with error: %@", &v11, 0x16u);
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
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Send request to update audio group identifier completed", &v11, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    [*(a1 + 40) finishWithNoResult];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)unsetAudioGroupForCurrentDestination
{
  v3 = [(HMDMediaDestinationController *)self stagedDestinationIdentifier];
  v6 = [v3 value];

  v4 = v6;
  if (v6)
  {
    v5 = [(HMDMediaDestinationController *)self updateDestinationWithIdentifier:v6 audioGroupIdentifier:0];
    v4 = v6;
  }
}

- (id)legacyUpdateDestinationIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(HMDMediaDestinationController *)self stagedDestinationIdentifier];
  [v5 stageValue:v4 withTimeout:60.0];

  v6 = objc_alloc_init(MEMORY[0x277D2C900]);
  v7 = [(HMDMediaDestinationController *)self backingStoreHandler];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __67__HMDMediaDestinationController_legacyUpdateDestinationIdentifier___block_invoke;
  v12[3] = &unk_27868A1D8;
  v12[4] = self;
  v8 = v6;
  v13 = v8;
  [v7 updateDestinationIdentifier:v4 completion:v12];

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
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_ERROR, "%{public}@Update destination finished with error: %@", &v11, 0x16u);
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
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Update destination finished", &v11, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    [*(a1 + 40) finishWithNoResult];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (id)_updateDestinationIdentifier:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (isFeatureHomeTheaterQFAEnabledForTests && ([isFeatureHomeTheaterQFAEnabledForTests BOOLValue] & 1) == 0)
  {
    v9 = objc_autoreleasePoolPush();
    v10 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v21 = 138543362;
      v22 = v12;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Home Theater QFA is not enabled", &v21, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
    v8 = [(HMDMediaDestinationController *)v10 legacyUpdateDestinationIdentifier:v4];
  }

  else
  {
    v5 = [(HMDMediaDestinationController *)self mediaGroupParticipantDataLocalStorage];
    v6 = v5;
    if (v5)
    {
      [v5 updateDestinationControllerDestinationIdentifier:v4];
      v7 = [(HMDMediaDestinationController *)self stagedDestinationIdentifier];
      [v7 commitValue:v4];

      v8 = [MEMORY[0x277D2C900] futureWithNoResult];
    }

    else
    {
      v13 = objc_autoreleasePoolPush();
      v14 = self;
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = HMFGetLogIdentifier();
        v21 = 138543618;
        v22 = v16;
        v23 = 2112;
        v24 = v4;
        _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_ERROR, "%{public}@Failed to update destination identifier: %@ in local storage due to no local storage found", &v21, 0x16u);
      }

      objc_autoreleasePoolPop(v13);
      v17 = MEMORY[0x277D2C900];
      v18 = [MEMORY[0x277CCA9B8] hmPrivateErrorWithCode:9008];
      v8 = [v17 futureWithError:v18];
    }
  }

  v19 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)updateDestinationIdentifier:(id)a3 updateOptions:(unint64_t)a4
{
  v4 = a4;
  v39 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v11 = HMMediaDestinationControllerUpateOptionsAsString();
    v33 = 138543874;
    v34 = v10;
    v35 = 2112;
    v36 = v6;
    v37 = 2112;
    v38 = v11;
    _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Updating with destination identifier: %@ support options: %@", &v33, 0x20u);
  }

  objc_autoreleasePoolPop(v7);
  v12 = [(HMDMediaDestinationController *)v8 stagedAvailableDestinationIdentifiers];
  v13 = [v12 value];

  if (!v6 || (v4 & 3) != 0 || ([v13 containsObject:v6] & 1) != 0)
  {
    v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
    if (!v6 || (v4 & 4) != 0)
    {
      if (!v6)
      {
LABEL_19:
        v24 = [(HMDMediaDestinationController *)v8 _updateDestinationIdentifier:v6];
        [v14 addObject:v24];
        v25 = [MEMORY[0x277D2C900] chainFutures:v14];

        goto LABEL_23;
      }
    }

    else if (![(HMDMediaDestinationController *)v8 hasSetDestinationRelatedToIdentifier:v6])
    {
      [(HMDMediaDestinationController *)v8 unsetAudioGroupForCurrentDestination];
    }

    v15 = v4 >> 1;
    v16 = [(HMDMediaDestinationController *)v8 dataSourceDestinationUsingRelatedIdentifier:v6];
    if (v16)
    {
      v17 = objc_autoreleasePoolPush();
      v18 = v8;
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        v20 = HMFGetLogIdentifier();
        v33 = 138543618;
        v34 = v20;
        v35 = 2112;
        v36 = v16;
        _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_INFO, "%{public}@Updating using related destination: %@", &v33, 0x16u);
      }

      objc_autoreleasePoolPop(v17);
      v21 = [v16 uniqueIdentifier];

      v15 = 0;
      v6 = v21;
    }

    if ((v15 & 1) == 0 && v6 && (v4 & 4) == 0)
    {
      v22 = [(HMDMediaDestinationController *)v8 identifier];
      v23 = [(HMDMediaDestinationController *)v8 updateDestinationWithIdentifier:v6 audioGroupIdentifier:v22];
      [v14 addObject:v23];
    }

    goto LABEL_19;
  }

  v26 = objc_autoreleasePoolPush();
  v27 = v8;
  v28 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
  {
    v29 = HMFGetLogIdentifier();
    v33 = 138543874;
    v34 = v29;
    v35 = 2112;
    v36 = v6;
    v37 = 2112;
    v38 = v13;
    _os_log_impl(&dword_229538000, v28, OS_LOG_TYPE_ERROR, "%{public}@Failed to update to destination identifier: %@ due to identifier not in available destination identifiers: %@", &v33, 0x20u);
  }

  objc_autoreleasePoolPop(v26);
  v30 = MEMORY[0x277D2C900];
  v14 = [MEMORY[0x277CCA9B8] hmPrivateErrorWithCode:9006];
  v25 = [v30 futureWithError:v14];
LABEL_23:

  v31 = *MEMORY[0x277D85DE8];

  return v25;
}

- (id)legacyUpdateAvailableDestinationIdentifiers:(id)a3
{
  v4 = a3;
  v5 = [(HMDMediaDestinationController *)self stagedAvailableDestinationIdentifiers];
  [v5 stageValue:v4 withTimeout:60.0];

  v6 = objc_alloc_init(MEMORY[0x277D2C900]);
  v7 = [(HMDMediaDestinationController *)self backingStoreHandler];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __77__HMDMediaDestinationController_legacyUpdateAvailableDestinationIdentifiers___block_invoke;
  v12[3] = &unk_27868A1D8;
  v12[4] = self;
  v8 = v6;
  v13 = v8;
  [v7 updateAvailableDestinationIdentifiers:v4 completion:v12];

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
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_ERROR, "%{public}@Update available destination identifiers finished with error: %@", &v11, 0x16u);
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
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Update available destination identifiers finished", &v11, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    [*(a1 + 40) finishWithNoResult];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (id)updateAvailableDestinationIdentifiers:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v25 = 138543618;
    v26 = v8;
    v27 = 2112;
    v28 = v4;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Updating with available destination identifiers: %@", &v25, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  if (isFeatureHomeTheaterQFAEnabledForTests && ([isFeatureHomeTheaterQFAEnabledForTests BOOLValue] & 1) == 0)
  {
    v13 = objc_autoreleasePoolPush();
    v14 = v6;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      v25 = 138543362;
      v26 = v16;
      _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@Home Theater QFA is not enabled", &v25, 0xCu);
    }

    objc_autoreleasePoolPop(v13);
    v12 = [(HMDMediaDestinationController *)v14 legacyUpdateAvailableDestinationIdentifiers:v4];
  }

  else
  {
    v9 = [(HMDMediaDestinationController *)v6 mediaGroupParticipantDataLocalStorage];
    v10 = v9;
    if (v9)
    {
      [v9 updateDestinationControllerAvailableDestinationIdentifiers:v4];
      v11 = [(HMDMediaDestinationController *)v6 stagedAvailableDestinationIdentifiers];
      [v11 commitValue:v4];

      v12 = [MEMORY[0x277D2C900] futureWithNoResult];
    }

    else
    {
      v17 = objc_autoreleasePoolPush();
      v18 = v6;
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = HMFGetLogIdentifier();
        v25 = 138543362;
        v26 = v20;
        _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_ERROR, "%{public}@Failed to update available destination identifiers in local storage due to no local storage found", &v25, 0xCu);
      }

      objc_autoreleasePoolPop(v17);
      v21 = MEMORY[0x277D2C900];
      v22 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:4];
      v12 = [v21 futureWithError:v22];
    }
  }

  v23 = *MEMORY[0x277D85DE8];

  return v12;
}

- (void)requestToUpdateDestinationIdentifier:(id)a3 options:(unint64_t)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [(HMDMediaDestinationController *)self messageHandler];
  [v10 sendRequestToUpdateDestinationIdentifier:v9 options:a4 completion:v8];
}

- (void)stageAvailableDestinationIdentifiers:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    *buf = 138543618;
    v20 = v9;
    v21 = 2112;
    v22 = v5;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Staging available destination identifiers: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  v10 = [(HMDMediaDestinationController *)v7 stagedAvailableDestinationIdentifiers];
  v11 = [v10 value];

  v12 = [v11 count];
  v13 = [v5 count];
  if (v12 == v13)
  {
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __70__HMDMediaDestinationController_stageAvailableDestinationIdentifiers___block_invoke;
    v17[3] = &unk_27868A1B0;
    v3 = &v18;
    v18 = v5;
    v14 = [v11 na_allObjectsPassTest:v17] ^ 1;
  }

  else
  {
    v14 = 1;
  }

  v15 = [(HMDMediaDestinationController *)v7 stagedAvailableDestinationIdentifiers];
  [v15 stageValue:v5 withTimeout:600.0];

  if (v14)
  {
    [(HMDMediaDestinationController *)v7 notifyDelegateDidUpdateStagedValues];
  }

  if (v12 == v13)
  {
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)stageDestinationIdentifier:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v15 = 138543618;
    v16 = v8;
    v17 = 2112;
    v18 = v4;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Staging destination identifier: %@", &v15, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [(HMDMediaDestinationController *)v6 stagedDestinationIdentifier];
  v10 = [v9 value];
  v11 = [v10 hmf_isEqualToUUID:v4];

  v12 = [(HMDMediaDestinationController *)v6 stagedDestinationIdentifier];
  [v12 stageValue:v4 withTimeout:600.0];

  v13 = [(HMDMediaDestinationController *)v6 metricsEventDispatcher];
  [v13 startStagedDestinationIdentifierCommittedEventWithStagedDestinationIdentifier:v4];

  if ((v11 & 1) == 0)
  {
    [(HMDMediaDestinationController *)v6 notifyDelegateDidUpdateStagedValues];
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)mergeData:(id)a3
{
  v9 = a3;
  v4 = [(HMDMediaDestinationController *)self backingStoreHandler];
  [v4 mergeData:v9];

  if (![(HMDMediaDestinationController *)self isTargetDevice])
  {
    v5 = [(HMDMediaDestinationController *)self stagedDestinationIdentifier];
    v6 = [v9 destinationIdentifier];
    [v5 commitValue:v6];

    v7 = [(HMDMediaDestinationController *)self stagedAvailableDestinationIdentifiers];
    v8 = [v9 availableDestinationIdentifiers];
    [v7 commitValue:v8];
  }
}

- (void)migrateSupportOptions
{
  v19 = *MEMORY[0x277D85DE8];
  if (isFeatureHomeTheaterQFAEnabledForTests)
  {
    if (([isFeatureHomeTheaterQFAEnabledForTests BOOLValue] & 1) == 0)
    {
      if ([(HMDMediaDestinationController *)self isTargetDevice])
      {
        v3 = [(HMDMediaDestinationController *)self featuresDataSource];
        v4 = [HMDMediaDestinationController expectedSupportOptionsWithFeaturesDataSource:v3];

        v5 = [(HMDMediaDestinationController *)self committedData];
        v6 = [v5 supportedOptions];

        if (v6 != v4)
        {
          v7 = objc_autoreleasePoolPush();
          v8 = self;
          v9 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
          {
            v10 = HMFGetLogIdentifier();
            v11 = HMMediaDestinationControllerSupportOptionsAsString();
            *buf = 138543618;
            v16 = v10;
            v17 = 2112;
            v18 = v11;
            _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Migrating support options: %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v7);
          v12 = [(HMDMediaDestinationController *)v8 backingStoreHandler];
          v14[0] = MEMORY[0x277D85DD0];
          v14[1] = 3221225472;
          v14[2] = __54__HMDMediaDestinationController_migrateSupportOptions__block_invoke;
          v14[3] = &unk_27868A188;
          v14[4] = v8;
          v14[5] = v4;
          [v12 updateSupportedOptions:v4 completion:v14];
        }
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
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_ERROR, "%{public}@Failed to migrate supported options: %@ error: %@", &v11, 0x20u);
    }

    objc_autoreleasePoolPop(v4);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)configureWithHome:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = [(HMDMediaDestinationController *)v6 committedData];
    v12 = 138543618;
    v13 = v8;
    v14 = 2112;
    v15 = v9;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Configuring with data: %@", &v12, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v10 = [(HMDMediaDestinationController *)v6 messageHandler];
  [v10 configureWithHome:v4];

  [(HMDMediaDestinationController *)v6 refreshDestinationController];
  [(HMDMediaDestinationController *)v6 migrateSupportOptions];

  v11 = *MEMORY[0x277D85DE8];
}

- (HMDMediaDestinationController)initWithBackingStoreHandler:(id)a3 messageHandler:(id)a4 metricsEventDispatcher:(id)a5 targetDevice:(BOOL)a6 dataSource:(id)a7 delegate:(id)a8 featuresDataSource:(id)a9
{
  v15 = a3;
  obj = a4;
  v16 = a4;
  v44 = a5;
  v17 = a5;
  v18 = a7;
  v19 = a8;
  v20 = a9;
  if (!v15)
  {
    _HMFPreconditionFailure();
    goto LABEL_8;
  }

  if (!v16)
  {
LABEL_8:
    _HMFPreconditionFailure();
    goto LABEL_9;
  }

  if (!v17)
  {
LABEL_9:
    v34 = _HMFPreconditionFailure();
    return [(HMDMediaDestinationController *)v34 initWithBackingStoreHandler:v35 messageHandler:v36 metricsEventDispatcher:v37 targetDevice:v38 dataSource:v39 delegate:v40, v41];
  }

  v45 = v20;
  v46 = v17;
  v47 = v16;
  v21 = [v15 data];
  v22 = objc_alloc(MEMORY[0x277D0F900]);
  v23 = [v21 destinationIdentifier];
  v24 = [v22 initWithValue:v23];

  v25 = objc_alloc(MEMORY[0x277D0F900]);
  v26 = [v21 availableDestinationIdentifiers];
  v27 = [v25 initWithValue:v26];

  v48.receiver = self;
  v48.super_class = HMDMediaDestinationController;
  v28 = [(HMDMediaDestinationController *)&v48 init];
  if (v28)
  {
    v29 = HMFGetOSLogHandle();
    logger = v28->_logger;
    v28->_logger = v29;

    v31 = [v15 identifier];
    identifier = v28->_identifier;
    v28->_identifier = v31;

    objc_storeStrong(&v28->_backingStoreHandler, a3);
    objc_storeStrong(&v28->_messageHandler, obj);
    v28->_isTargetDevice = a6;
    objc_storeStrong(&v28->_metricsEventDispatcher, v44);
    objc_storeWeak(&v28->_dataSource, v18);
    objc_storeWeak(&v28->_delegate, v19);
    objc_storeStrong(&v28->_stagedDestinationIdentifier, v24);
    [(HMFStagedValue *)v28->_stagedDestinationIdentifier setDelegate:v28];
    objc_storeStrong(&v28->_stagedAvailableDestinationIdentifiers, v27);
    [(HMFStagedValue *)v28->_stagedAvailableDestinationIdentifiers setDelegate:v28];
    objc_storeStrong(&v28->_featuresDataSource, a9);
  }

  return v28;
}

- (HMDMediaDestinationController)initWithData:(id)a3 backingStore:(id)a4 messageDispatcher:(id)a5 notificationCenter:(id)a6 logEventSubmitter:(id)a7 dailyScheduler:(id)a8 targetDevice:(BOOL)a9 dataSource:(id)a10 delegate:(id)a11
{
  v34 = a11;
  v18 = a10;
  v19 = a8;
  v20 = a7;
  v33 = a6;
  v21 = a5;
  v22 = a4;
  v23 = a3;
  v24 = [HMDMediaDestinationControllerMetricsEventDispatcher alloc];
  v25 = [v23 identifier];
  v26 = [(HMDMediaDestinationControllerMetricsEventDispatcher *)v24 initWithIdentifier:v25 logEventSubmitter:v20 dataSource:v18];

  [v19 registerDailyTaskRunner:v26];
  v27 = [[HMDMediaDestinationControllerBackingStoreHandler alloc] initWithData:v23 backingStore:v22 metricsEventDispatcher:v26 delegate:self];

  v28 = [HMDMediaDestinationControllerMessageHandler alloc];
  v29 = [v23 identifier];

  v30 = [(HMDMediaDestinationControllerMessageHandler *)v28 initWithMessageTargetUUID:v29 messageDispatcher:v21 notificationCenter:v33 metricsEventDispatcher:v26 targetDevice:a9 dataSource:self delegate:self];
  v31 = [(HMDMediaDestinationController *)self initWithBackingStoreHandler:v27 messageHandler:v30 metricsEventDispatcher:v26 targetDevice:a9 dataSource:v18 delegate:v34];

  return v31;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t52_283473 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t52_283473, &__block_literal_global_283474);
  }

  v3 = logCategory__hmf_once_v53_283475;

  return v3;
}

void __44__HMDMediaDestinationController_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v53_283475;
  logCategory__hmf_once_v53_283475 = v1;
}

@end