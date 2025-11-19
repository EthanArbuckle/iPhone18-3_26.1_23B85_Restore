@interface HMDMediaDestinationManager
+ (id)logCategory;
- (BOOL)addGroupDataForTargetDevice:(id)a3;
- (BOOL)updateTargetDeviceAudioGroupIdentifier:(id)a3;
- (HMDMediaDestinationManager)initWithDestination:(id)a3 messageDispatcher:(id)a4 notificationCenter:(id)a5 backingStore:(id)a6 targetDevice:(BOOL)a7 dataSource:(id)a8 delegate:(id)a9;
- (HMDMediaDestinationManager)initWithDestination:(id)a3 messageHandler:(id)a4 backingStoreHandler:(id)a5 metricsDispatcher:(id)a6 targetDevice:(BOOL)a7 dataSource:(id)a8 delegate:(id)a9;
- (HMDMediaDestinationManagerDataSource)dataSource;
- (HMDMediaDestinationManagerDelegate)delegate;
- (HMMediaDestination)committedDestination;
- (HMMediaDestination)destination;
- (id)attributeDescriptions;
- (id)dataSourceDestinationControllerWithIdentifier:(id)a3;
- (id)dataSourceRootDestinationManager;
- (id)dataSourceTargetAccessory;
- (id)legacyUpdateAudioGroupIdentifier:(id)a3;
- (id)legacyUpdateSupportedOptions:(unint64_t)a3;
- (id)logIdentifier;
- (id)mediaGroupParticipantLocalDataStorage;
- (id)messageHandler:(id)a3 deviceForOutgoingMessage:(id)a4;
- (id)messageHandler:(id)a3 shouldRelayIncomingMessage:(id)a4;
- (id)updateAudioGroupIdentifier:(id)a3;
- (id)updateSupportedOptions:(unint64_t)a3;
- (void)configureWithHome:(id)a3 currentAccessory:(BOOL)a4;
- (void)mediaDestinationBackingStoreHandler:(id)a3 didUpdateDestination:(id)a4;
- (void)mediaDestinationMessageHandler:(id)a3 didReceiveUpdateAudioGroupIdentifierRequestMessage:(id)a4 audioGroupIdentifier:(id)a5;
- (void)mediaDestinationMessageHandler:(id)a3 didReceiveUpdateSupportedOptionsRequestMessage:(id)a4 supportOptions:(unint64_t)a5;
- (void)mergeDestination:(id)a3;
- (void)notifyDelegateDidUpdateStagedValues;
- (void)requestToUpdateAudioGroupIdentifier:(id)a3 completion:(id)a4;
- (void)stageAudioGroupIdentifier:(id)a3;
- (void)stagedValue:(id)a3 didExpireValue:(id)a4;
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

- (void)stagedValue:(id)a3 didExpireValue:(id)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDMediaDestinationManager *)self stagedAudioGroupIdentifier];

  if (v8 == v6)
  {
    v13 = v7;
    v14 = [(HMDMediaDestinationManager *)self committedDestination];
    v15 = [v14 audioGroupIdentifier];
    v16 = HMFEqualObjects();

    if ((v16 & 1) == 0)
    {
      v17 = objc_autoreleasePoolPush();
      v18 = self;
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = HMFGetLogIdentifier();
        v24 = 138543618;
        v25 = v20;
        v26 = 2112;
        v27 = v13;
        _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_ERROR, "%{public}@Handling expired audio group identifier value: %@", &v24, 0x16u);
      }

      objc_autoreleasePoolPop(v17);
      v21 = [(HMDMediaDestinationManager *)v18 messageHandler];
      v22 = [(HMDMediaDestinationManager *)v18 destination];
      [v21 handleUpdatedDestination:v22];

      [(HMDMediaDestinationManager *)v18 notifyDelegateDidUpdateStagedValues];
    }
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    v10 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      v24 = 138543874;
      v25 = v12;
      v26 = 2112;
      v27 = v6;
      v28 = 2112;
      v29 = v7;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_ERROR, "%{public}@Unknown stage value: %@ did expire value: %@", &v24, 0x20u);
    }

    objc_autoreleasePoolPop(v9);
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)triggerStageValueDidExpireValueForAudioDestinationIdentifier
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
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Triggering did expire value for audio destination identifier", &v10, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v7 = [(HMDMediaDestinationManager *)v4 stagedAudioGroupIdentifier];
  v8 = [v7 value];
  [(HMDMediaDestinationManager *)v4 stagedValue:v7 didExpireValue:v8];

  v9 = *MEMORY[0x277D85DE8];
}

- (id)logIdentifier
{
  v2 = [(HMDMediaDestinationManager *)self identifier];
  v3 = [v2 UUIDString];

  return v3;
}

- (id)attributeDescriptions
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  v4 = [(HMDMediaDestinationManager *)self identifier];
  v5 = [v3 initWithName:@"identifier" value:v4];
  v9[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)notifyDelegateDidUpdateStagedValues
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = [(HMDMediaDestinationManager *)self delegate];
  v4 = v3;
  if (v3)
  {
    [v3 mediaDestinationManagerDidUpdateStagedValues:self];
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
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_ERROR, "%{public}@Failed to notify of updated staged values due to no delegate", &v10, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)mediaDestinationMessageHandler:(id)a3 didReceiveUpdateAudioGroupIdentifierRequestMessage:(id)a4 audioGroupIdentifier:(id)a5
{
  v27 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_autoreleasePoolPush();
  v12 = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    *buf = 138543362;
    v26 = v14;
    _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Handling did receive update audio group identifier request message", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v11);
  v15 = [(HMDMediaDestinationManager *)v12 updateAudioGroupIdentifier:v10];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __133__HMDMediaDestinationManager_mediaDestinationMessageHandler_didReceiveUpdateAudioGroupIdentifierRequestMessage_audioGroupIdentifier___block_invoke;
  v23[3] = &unk_27868A250;
  v16 = v9;
  v24 = v16;
  v17 = [v15 addFailureBlock:v23];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __133__HMDMediaDestinationManager_mediaDestinationMessageHandler_didReceiveUpdateAudioGroupIdentifierRequestMessage_audioGroupIdentifier___block_invoke_2;
  v21[3] = &unk_27868A200;
  v22 = v16;
  v18 = v16;
  v19 = [v15 addSuccessBlock:v21];

  v20 = *MEMORY[0x277D85DE8];
}

- (void)mediaDestinationMessageHandler:(id)a3 didReceiveUpdateSupportedOptionsRequestMessage:(id)a4 supportOptions:(unint64_t)a5
{
  v26 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = objc_autoreleasePoolPush();
  v11 = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = HMFGetLogIdentifier();
    *buf = 138543362;
    v25 = v13;
    _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@Handling did receive update supported options request message", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v10);
  v14 = [(HMDMediaDestinationManager *)v11 updateSupportedOptions:a5];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __123__HMDMediaDestinationManager_mediaDestinationMessageHandler_didReceiveUpdateSupportedOptionsRequestMessage_supportOptions___block_invoke;
  v22[3] = &unk_27868A250;
  v15 = v9;
  v23 = v15;
  v16 = [v14 addFailureBlock:v22];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __123__HMDMediaDestinationManager_mediaDestinationMessageHandler_didReceiveUpdateSupportedOptionsRequestMessage_supportOptions___block_invoke_2;
  v20[3] = &unk_27868A200;
  v21 = v15;
  v17 = v15;
  v18 = [v14 addSuccessBlock:v20];

  v19 = *MEMORY[0x277D85DE8];
}

- (id)messageHandler:(id)a3 deviceForOutgoingMessage:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDMediaDestinationManager *)self dataSourceTargetAccessory];
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
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_ERROR, "%{public}@Failed to get device due to no target accessory", &v17, 0xCu);
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
  v8 = [(HMDMediaDestinationManager *)self dataSourceTargetAccessory];
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
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_ERROR, "%{public}@Failed to determine relay preference due to no target accessory", &v17, 0xCu);
    }

    objc_autoreleasePoolPop(v11);
    v10 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];

  return v10;
}

- (void)mediaDestinationBackingStoreHandler:(id)a3 didUpdateDestination:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = self->_logger;
  if (os_signpost_enabled(v8))
  {
    v9 = [v7 audioGroupIdentifier];
    v10 = v9;
    if (v9)
    {
      v20 = 138412290;
      v21 = v9;
      _os_signpost_emit_with_name_impl(&dword_229538000, v8, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "HMDMediaDestinationManagerCommitAudioGroupIdentifier", "audioGroupIdentifier=%{signpost.description:attribute}@ ", &v20, 0xCu);
    }

    else
    {
      v11 = [MEMORY[0x277CBEB68] null];
      v20 = 138412290;
      v21 = v11;
      _os_signpost_emit_with_name_impl(&dword_229538000, v8, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "HMDMediaDestinationManagerCommitAudioGroupIdentifier", "audioGroupIdentifier=%{signpost.description:attribute}@ ", &v20, 0xCu);
    }
  }

  v12 = objc_autoreleasePoolPush();
  v13 = self;
  v14 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = HMFGetLogIdentifier();
    v20 = 138543618;
    v21 = v15;
    v22 = 2112;
    v23 = v7;
    _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, "%{public}@Handling did update destination: %@", &v20, 0x16u);
  }

  objc_autoreleasePoolPop(v12);
  v16 = [(HMDMediaDestinationManager *)v13 stagedAudioGroupIdentifier];
  v17 = [v7 audioGroupIdentifier];
  [v16 commitValue:v17];

  v18 = [(HMDMediaDestinationManager *)v13 messageHandler];
  [v18 handleUpdatedDestination:v7];

  v19 = *MEMORY[0x277D85DE8];
}

- (id)legacyUpdateAudioGroupIdentifier:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(HMDMediaDestinationManager *)self dataSourceDestinationControllerWithIdentifier:v4];
    if (v5)
    {
      v6 = [(HMDMediaDestinationManager *)self dataSourceRootDestinationManager];
      v7 = v6;
      if (v6)
      {
        [(HMDMediaDestinationManager *)v6 stageAudioGroupIdentifier:v4];
        v8 = v7;
      }

      else
      {
        v8 = self;
      }

      v9 = [(HMDMediaDestinationManager *)v8 identifier];
      [v5 stageDestinationIdentifier:v9];
    }
  }

  v10 = objc_alloc_init(MEMORY[0x277D2C900]);
  v11 = [(HMDMediaDestinationManager *)self backingStoreHandler];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __63__HMDMediaDestinationManager_legacyUpdateAudioGroupIdentifier___block_invoke;
  v16[3] = &unk_27868A1D8;
  v16[4] = self;
  v12 = v10;
  v17 = v12;
  [v11 updateAudioGroupIdentifier:v4 completion:v16];

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
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_ERROR, "%{public}@Update audio group identifier completed with error: %@", &v11, 0x16u);
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
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Update audio group identifier completed", &v11, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    [*(a1 + 40) finishWithNoResult];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (id)updateAudioGroupIdentifier:(id)a3
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
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Updating audio group identifier: %@", &v25, 0x16u);
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
    v12 = [(HMDMediaDestinationManager *)v14 legacyUpdateAudioGroupIdentifier:v4];
  }

  else
  {
    v9 = [(HMDMediaDestinationManager *)v6 mediaGroupParticipantLocalDataStorage];
    v10 = v9;
    if (v9)
    {
      [v9 updateAudioGroupIdentifier:v4];
      v11 = [(HMDMediaDestinationManager *)v6 stagedAudioGroupIdentifier];
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
        v25 = 138543618;
        v26 = v20;
        v27 = 2112;
        v28 = v4;
        _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_ERROR, "%{public}@Failed to update local storage with audio group identifier: %@ due to no local storage found", &v25, 0x16u);
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

- (id)legacyUpdateSupportedOptions:(unint64_t)a3
{
  v5 = objc_alloc_init(MEMORY[0x277D2C900]);
  v6 = [(HMDMediaDestinationManager *)self backingStoreHandler];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __59__HMDMediaDestinationManager_legacyUpdateSupportedOptions___block_invoke;
  v11[3] = &unk_27868A1D8;
  v11[4] = self;
  v7 = v5;
  v12 = v7;
  [v6 updateSupportedOptions:a3 completion:v11];

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
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_ERROR, "%{public}@Update supported options completed with error: %@", &v11, 0x16u);
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
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Update supported options completed", &v11, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    [*(a1 + 40) finishWithNoResult];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (id)updateSupportedOptions:(unint64_t)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = HMMediaDestinationSupportOptionsAsString();
    v26 = 138543618;
    v27 = v8;
    v28 = 2112;
    v29 = v9;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Updating supported options: %@", &v26, 0x16u);
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
      v26 = 138543362;
      v27 = v16;
      _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@Home Theater QFA is not enabled", &v26, 0xCu);
    }

    objc_autoreleasePoolPop(v13);
    v12 = [(HMDMediaDestinationManager *)v14 legacyUpdateSupportedOptions:a3];
  }

  else
  {
    v10 = [(HMDMediaDestinationManager *)v6 mediaGroupParticipantLocalDataStorage];
    v11 = v10;
    if (v10)
    {
      [v10 updateDestinationSupportOptions:a3];
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
        v21 = HMMediaDestinationSupportOptionsAsString();
        v26 = 138543618;
        v27 = v20;
        v28 = 2112;
        v29 = v21;
        _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_ERROR, "%{public}@Failed to update supported options: %@ due to no local storage found", &v26, 0x16u);
      }

      objc_autoreleasePoolPop(v17);
      v22 = MEMORY[0x277D2C900];
      v23 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:4];
      v12 = [v22 futureWithError:v23];
    }
  }

  v24 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)dataSourceRootDestinationManager
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = [(HMDMediaDestinationManager *)self dataSource];
  if (!v3)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = self;
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = HMFGetLogIdentifier();
      v11 = 138543362;
      v12 = v7;
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_ERROR, "%{public}@Failed to determine root destination due to no data source", &v11, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
  }

  v8 = [v3 rootDestinationManagerForMediaDestinationManager:self];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)dataSourceDestinationControllerWithIdentifier:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDMediaDestinationManager *)self dataSource];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 mediaDestinationManager:self destinationControllerWithIdentifier:v4];
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
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to data source destination controller due to no data source", &v14, 0xCu);
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
  v3 = [(HMDMediaDestinationManager *)self dataSource];
  v4 = [v3 targetAccessoryForMediaDestinationManager:self];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    v8 = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v13 = 138543618;
      v14 = v10;
      v15 = 2112;
      v16 = v3;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_ERROR, "%{public}@Failed to get associated accessory from data source: %@", &v13, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
  }

  v11 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)mediaGroupParticipantLocalDataStorage
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = [(HMDMediaDestinationManager *)self dataSource];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 mediaGroupParticipantLocalDataStorageForMediaDestinationManager:self];
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
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_ERROR, "%{public}@Failed to get local data storage due to no data source", &v12, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    v5 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];

  return v5;
}

- (HMMediaDestination)committedDestination
{
  v2 = [(HMDMediaDestinationManager *)self backingStoreHandler];
  v3 = [v2 destination];

  return v3;
}

- (HMMediaDestination)destination
{
  v3 = [(HMDMediaDestinationManager *)self backingStoreHandler];
  v4 = [v3 destination];
  v5 = [v4 mutableCopy];

  v6 = [(HMDMediaDestinationManager *)self stagedAudioGroupIdentifier];
  v7 = [v6 value];
  [v5 setAudioGroupIdentifier:v7];

  v8 = [v5 copy];

  return v8;
}

- (BOOL)addGroupDataForTargetDevice:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v17 = 138543362;
    v18 = v8;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Adding group data for target device", &v17, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [(HMDMediaDestinationManager *)v6 mediaGroupParticipantLocalDataStorage];
  if (v9)
  {
    v10 = [v4 encodeToProtoBufferData];
    [v9 addBackupGroupData:v10];
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    v12 = v6;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v17 = 138543362;
      v18 = v14;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_ERROR, "%{public}@Failed to add group data for target device due to no local data storage", &v17, 0xCu);
    }

    objc_autoreleasePoolPop(v11);
  }

  v15 = *MEMORY[0x277D85DE8];
  return v9 != 0;
}

- (BOOL)updateTargetDeviceAudioGroupIdentifier:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v18 = 138543618;
    v19 = v8;
    v20 = 2112;
    v21 = v4;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Updating target device audio group identifier with %@", &v18, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [(HMDMediaDestinationManager *)v6 mediaGroupParticipantLocalDataStorage];
  v10 = v9;
  if (v9)
  {
    [v9 updateAudioGroupIdentifier:v4];
    v11 = [(HMDMediaDestinationManager *)v6 stagedAudioGroupIdentifier];
    [v11 commitValue:v4];
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    v13 = v6;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      v18 = 138543618;
      v19 = v15;
      v20 = 2112;
      v21 = v4;
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_ERROR, "%{public}@Failed to update audio group identifier: %@ due to no local storage found", &v18, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
  }

  v16 = *MEMORY[0x277D85DE8];
  return v10 != 0;
}

- (void)requestToUpdateAudioGroupIdentifier:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(HMDMediaDestinationManager *)self messageHandler];
  [v8 sendRequestToUpdateAudioGroupIdentifier:v7 completion:v6];
}

- (void)stageAudioGroupIdentifier:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v14 = 138543618;
    v15 = v8;
    v16 = 2112;
    v17 = v4;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Staging audio group identifier: %@", &v14, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [(HMDMediaDestinationManager *)v6 stagedAudioGroupIdentifier];
  v10 = [v9 value];
  v11 = [v10 hmf_isEqualToUUID:v4];

  v12 = [(HMDMediaDestinationManager *)v6 stagedAudioGroupIdentifier];
  [v12 stageValue:v4 withTimeout:600.0];

  if ((v11 & 1) == 0)
  {
    [(HMDMediaDestinationManager *)v6 notifyDelegateDidUpdateStagedValues];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)mergeDestination:(id)a3
{
  v7 = a3;
  v4 = [(HMDMediaDestinationManager *)self backingStoreHandler];
  [v4 mergeDestination:v7];

  if (![(HMDMediaDestinationManager *)self isTargetDevice])
  {
    v5 = [(HMDMediaDestinationManager *)self stagedAudioGroupIdentifier];
    v6 = [v7 audioGroupIdentifier];
    [v5 commitValue:v6];
  }
}

- (void)configureWithHome:(id)a3 currentAccessory:(BOOL)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v10 = [(HMDMediaDestinationManager *)v7 committedDestination];
    v13 = 138543874;
    v14 = v9;
    v15 = 2112;
    v16 = v7;
    v17 = 2112;
    v18 = v10;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Configuring destination manager: %@ destination: %@", &v13, 0x20u);
  }

  objc_autoreleasePoolPop(v6);
  v11 = [(HMDMediaDestinationManager *)v7 messageHandler];
  [v11 configureWithHome:v5];

  v12 = *MEMORY[0x277D85DE8];
}

- (HMDMediaDestinationManager)initWithDestination:(id)a3 messageHandler:(id)a4 backingStoreHandler:(id)a5 metricsDispatcher:(id)a6 targetDevice:(BOOL)a7 dataSource:(id)a8 delegate:(id)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v39 = a6;
  v18 = a8;
  v19 = a9;
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
    v31 = _HMFPreconditionFailure();
    return [(HMDMediaDestinationManager *)v31 initWithDestination:v32 messageDispatcher:v33 notificationCenter:v34 backingStore:v35 targetDevice:v36 dataSource:v37 delegate:v38, a9];
  }

  v20 = v19;
  v40.receiver = self;
  v40.super_class = HMDMediaDestinationManager;
  v21 = [(HMDMediaDestinationManager *)&v40 init];
  if (v21)
  {
    v22 = HMFGetOSLogHandle();
    logger = v21->_logger;
    v21->_logger = v22;

    v24 = [v15 uniqueIdentifier];
    identifier = v21->_identifier;
    v21->_identifier = v24;

    objc_storeStrong(&v21->_messageHandler, a4);
    objc_storeStrong(&v21->_backingStoreHandler, a5);
    objc_storeStrong(&v21->_metricsDispatcher, a6);
    v21->_targetDevice = a7;
    objc_storeWeak(&v21->_dataSource, v18);
    objc_storeWeak(&v21->_delegate, v20);
    v26 = objc_alloc(MEMORY[0x277D0F900]);
    v27 = [v15 audioGroupIdentifier];
    v28 = [v26 initWithValue:v27];
    stagedAudioGroupIdentifier = v21->_stagedAudioGroupIdentifier;
    v21->_stagedAudioGroupIdentifier = v28;

    [(HMFStagedValue *)v21->_stagedAudioGroupIdentifier setDelegate:v21];
  }

  return v21;
}

- (HMDMediaDestinationManager)initWithDestination:(id)a3 messageDispatcher:(id)a4 notificationCenter:(id)a5 backingStore:(id)a6 targetDevice:(BOOL)a7 dataSource:(id)a8 delegate:(id)a9
{
  v29 = a7;
  v28 = a9;
  v15 = a8;
  v16 = a6;
  v17 = a5;
  v18 = a4;
  v19 = a3;
  v20 = [HMDMediaDestinationManagerMetricsDispatcher alloc];
  v21 = [v19 uniqueIdentifier];
  v22 = +[HMDMetricsManager sharedLogEventSubmitter];
  v23 = [(HMDMediaDestinationManagerMetricsDispatcher *)v20 initWithIdentifier:v21 logEventSubmitter:v22];

  v24 = [[HMDMediaDestinationMessageHandler alloc] initWithDestination:v19 messageDispatcher:v18 notificationCenter:v17 dataSource:self delegate:self];
  v25 = [[HMDMediaDestinationBackingStoreHandler alloc] initWithDestination:v19 backingStore:v16 metricsDispatcher:v23 delegate:self];

  v26 = [(HMDMediaDestinationManager *)self initWithDestination:v19 messageHandler:v24 backingStoreHandler:v25 metricsDispatcher:v23 targetDevice:v29 dataSource:v15 delegate:v28];
  return v26;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t28_118770 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t28_118770, &__block_literal_global_118771);
  }

  v3 = logCategory__hmf_once_v29_118772;

  return v3;
}

void __41__HMDMediaDestinationManager_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v29_118772;
  logCategory__hmf_once_v29_118772 = v1;
}

@end