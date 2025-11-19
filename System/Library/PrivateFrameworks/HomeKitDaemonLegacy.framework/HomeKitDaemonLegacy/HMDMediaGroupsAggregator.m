@interface HMDMediaGroupsAggregator
+ (id)logCategory;
- (BOOL)isRunning;
- (BOOL)isRunningAsPrimary;
- (BOOL)removeDestinationControllerDataWithParentIdentifier:(id)a3;
- (BOOL)removeDestinationWithParentIdentifier:(id)a3;
- (BOOL)setState:(unint64_t)a3 previousState:(unint64_t *)a4;
- (BOOL)shouldWarmUp;
- (BOOL)updateAssociatedGroupIdentifier:(id)a3 forGroupIdentifier:(id)a4 error:(id *)a5;
- (HMDMediaGroupsAggregator)initWithIdentifier:(id)a3 messenger:(id)a4 eventForwarder:(id)a5 subscriptionProvider:(id)a6 eventStoreReadHandle:(id)a7 groupsLocalDataStorage:(id)a8;
- (HMDMediaGroupsAggregator)initWithIdentifier:(id)a3 messenger:(id)a4 eventForwarder:(id)a5 subscriptionProvider:(id)a6 eventStoreReadHandle:(id)a7 groupsLocalDataStorage:(id)a8 timerProvider:(id)a9 featuresDataSource:(id)a10;
- (HMDMediaGroupsAggregatorDataSource)dataSource;
- (HMDMediaGroupsAggregatorDelegate)delegate;
- (HMFTimerProvider)timerProvider;
- (id)aggregateDataTopic;
- (id)appleMediaAccessories;
- (id)createGenerators;
- (id)destinationControllersData;
- (id)destinationManagerWithIdentifier:(id)a3;
- (id)destinations;
- (id)eventSource;
- (id)groups;
- (id)localGroupWithIdentifier:(id)a3;
- (id)logIdentifier;
- (id)participantAccessoryUUIDFromTopic:(id)a3;
- (id)participantDataTopicForAccessory:(id)a3;
- (id)roomForAllDestinationParentIdentifiers:(id)a3 mediaSystemsAggregateDataGenerator:(id)a4;
- (id)sameRoomAccessoryUUIDsForDestinationControllerData:(id)a3 generator:(id)a4;
- (void)clearCachedData;
- (void)clearCachedDataForParticipantAccessoryUUID:(id)a3;
- (void)configureWithHome:(id)a3 messageDispatcher:(id)a4 notificationCenter:(id)a5 primaryResidentChangeMonitor:(id)a6;
- (void)didReceiveEvent:(id)a3 topic:(id)a4;
- (void)didReceiveUpdateAssociatedGroupRequestMessage:(id)a3 withGroupIdentifier:(id)a4 associatedGroupIdentifier:(id)a5 messenger:(id)a6;
- (void)fixupGroupsForRemovedParticipantAccessoryUUID:(id)a3;
- (void)forwardAggregateData;
- (void)handleAccessoryChangedRoomNotification:(id)a3;
- (void)handleHomeAddedAccessoryNotification:(id)a3;
- (void)handleHomeRemovedAccessoryNotification:(id)a3;
- (void)handleIncomingParticipantData:(id)a3 forAccessoryUUID:(id)a4;
- (void)handleMediaSystemAddedNotification:(id)a3;
- (void)handleParticipantDataEvent:(id)a3 accessoryUUID:(id)a4;
- (void)handleParticipantDestination:(id)a3 backedUpGroups:(id)a4 forParticipantAccessoryUUID:(id)a5;
- (void)handlePrimaryResidentDeviceChangeNotification:(id)a3;
- (void)notifyOfStoppedState;
- (void)refreshAggregateData;
- (void)refreshRunningStateUsingPrimaryResidentChangeMonitor:(id)a3;
- (void)registerForEvents;
- (void)registerForEventsForAccessory:(id)a3;
- (void)registerForNotificationsWithHome:(id)a3 notificationCenter:(id)a4 primaryResidentChangeMonitor:(id)a5;
- (void)removeGroupWithIdentifier:(id)a3;
- (void)runAsPrimary;
- (void)setDestination:(id)a3;
- (void)setDestinationControllerData:(id)a3;
- (void)startWarmUpTimer;
- (void)stop;
- (void)stopWarmUpTimer;
- (void)timerDidFire:(id)a3;
- (void)unregisterForAllEvents;
- (void)unregisterForEventsForAccessory:(id)a3;
- (void)updateDestinationWithIdentifier:(id)a3 audioGroupIdentifier:(id)a4;
- (void)updateGroup:(id)a3;
- (void)updateGroup:(id)a3 participantAccessoryUUIDs:(id)a4;
@end

@implementation HMDMediaGroupsAggregator

- (HMFTimerProvider)timerProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_timerProvider);

  return WeakRetained;
}

- (HMDMediaGroupsAggregatorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (HMDMediaGroupsAggregatorDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (id)logIdentifier
{
  v2 = [(HMDMediaGroupsAggregator *)self identifier];
  v3 = [v2 UUIDString];

  return v3;
}

- (void)timerDidFire:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDMediaGroupsAggregator *)self warmUpTimer];

  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  v9 = v8;
  if (v5 == v4)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v13 = 138543362;
      v14 = v11;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Warm up timer fired", &v13, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    [(HMDMediaGroupsAggregator *)v7 setWarmUpTimer:0];
    [(HMDMediaGroupsAggregator *)v7 forwardAggregateData];
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v10 = HMFGetLogIdentifier();
      v13 = 138543362;
      v14 = v10;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_DEBUG, "%{public}@Skipping warmUp debounce refresh due to miss matched timer when fired", &v13, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (id)roomForAllDestinationParentIdentifiers:(id)a3 mediaSystemsAggregateDataGenerator:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDMediaGroupsAggregator *)self dataSource];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 roomForAllDestinationParentIdentifiers:v6 mediaGroupsAggregator:self];
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    v12 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v17 = 138543618;
      v18 = v14;
      v19 = 2112;
      v20 = v6;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_ERROR, "%{public}@Failed to get room name for destination parent identifiers: %@ due to no data source", &v17, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    v10 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)sameRoomAccessoryUUIDsForDestinationControllerData:(id)a3 generator:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDMediaGroupsAggregator *)self dataSource];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 sameRoomAccessoryUUIDsForDestinationControllerData:v6 mediaGroupsAggregator:self];
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    v12 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v15 = [v6 identifier];
      v18 = 138543618;
      v19 = v14;
      v20 = 2112;
      v21 = v15;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_ERROR, "%{public}@Failed to get same room accessory UUIDs for destination controller data: %@ due to no data source", &v18, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    v10 = MEMORY[0x277CBEBF8];
  }

  v16 = *MEMORY[0x277D85DE8];

  return v10;
}

- (void)didReceiveUpdateAssociatedGroupRequestMessage:(id)a3 withGroupIdentifier:(id)a4 associatedGroupIdentifier:(id)a5 messenger:(id)a6
{
  v11 = 0;
  v9 = a3;
  [(HMDMediaGroupsAggregator *)self updateAssociatedGroupIdentifier:a5 forGroupIdentifier:a4 error:&v11];
  v10 = v11;
  [v9 respondWithPayload:0 error:v10];
}

- (void)handleParticipantDestination:(id)a3 backedUpGroups:(id)a4 forParticipantAccessoryUUID:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  [(HMDMediaGroupsAggregator *)self setDestination:v10];
  v12 = [(HMDMediaGroupsAggregator *)self groupLocalDataStorage];
  v11 = [v10 audioGroupIdentifier];

  [v12 updateUsingParticipantAccessoryUUID:v8 associatedGroupIdentifier:v11 backedUpGroupData:v9];
}

- (void)removeGroupWithIdentifier:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v12 = 138543618;
    v13 = v8;
    v14 = 2112;
    v15 = v4;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Removing group with identifier: %@", &v12, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [(HMDMediaGroupsAggregator *)v6 groupLocalDataStorage];
  [v9 removeGroupWithIdentifier:v4];

  [(HMDMediaGroupsAggregator *)v6 refreshAggregateData];
  v10 = [(HMDMediaGroupsAggregator *)v6 groupLocalDataStorage];
  [v10 backupData];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)updateGroup:(id)a3 participantAccessoryUUIDs:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v15 = 138543874;
    v16 = v11;
    v17 = 2112;
    v18 = v6;
    v19 = 2112;
    v20 = v7;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Updating group: %@ for participant accessory uuids: %@", &v15, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  v12 = [(HMDMediaGroupsAggregator *)v9 groupLocalDataStorage];
  [v12 updateGroup:v6 participantAccessoryUUIDs:v7];

  [(HMDMediaGroupsAggregator *)v9 refreshAggregateData];
  v13 = [(HMDMediaGroupsAggregator *)v9 groupLocalDataStorage];
  [v13 backupData];

  v14 = *MEMORY[0x277D85DE8];
}

- (void)updateGroup:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v12 = 138543618;
    v13 = v8;
    v14 = 2112;
    v15 = v4;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Updating group: %@", &v12, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [(HMDMediaGroupsAggregator *)v6 groupLocalDataStorage];
  [v9 updateGroup:v4];

  [(HMDMediaGroupsAggregator *)v6 refreshAggregateData];
  v10 = [(HMDMediaGroupsAggregator *)v6 groupLocalDataStorage];
  [v10 backupData];

  v11 = *MEMORY[0x277D85DE8];
}

- (BOOL)updateAssociatedGroupIdentifier:(id)a3 forGroupIdentifier:(id)a4 error:(id *)a5
{
  v31 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = objc_autoreleasePoolPush();
  v11 = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = HMFGetLogIdentifier();
    v25 = 138543874;
    v26 = v13;
    v27 = 2112;
    v28 = v8;
    v29 = 2112;
    v30 = v9;
    _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@Updating associated group identifier: %@ for group identifier: %@", &v25, 0x20u);
  }

  objc_autoreleasePoolPop(v10);
  v14 = [(HMDMediaGroupsAggregator *)v11 localGroupWithIdentifier:v9];
  v15 = v14;
  if (v14)
  {
    v16 = [v14 mutableCopy];
    [v16 setAssociatedGroupIdentifier:v8];
    v17 = [(HMDMediaGroupsAggregator *)v11 groupLocalDataStorage];
    [v17 updateGroup:v16];

    [(HMDMediaGroupsAggregator *)v11 refreshAggregateData];
    v18 = [(HMDMediaGroupsAggregator *)v11 groupLocalDataStorage];
    [v18 backupData];
  }

  else
  {
    v19 = objc_autoreleasePoolPush();
    v20 = v11;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier();
      v25 = 138543618;
      v26 = v22;
      v27 = 2112;
      v28 = v9;
      _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_ERROR, "%{public}@Failed to find an local group with identifier: %@", &v25, 0x16u);
    }

    objc_autoreleasePoolPop(v19);
    if (a5)
    {
      *a5 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:2];
    }
  }

  v23 = *MEMORY[0x277D85DE8];
  return v15 != 0;
}

- (void)handleIncomingParticipantData:(id)a3 forAccessoryUUID:(id)a4
{
  v12 = a3;
  v6 = a4;
  v7 = [v12 destinationControllerData];

  if (v7)
  {
    v8 = [v12 destinationControllerData];
    [(HMDMediaGroupsAggregator *)self setDestinationControllerData:v8];
  }

  v9 = [v12 destination];

  if (v9)
  {
    v10 = [v12 destination];
    v11 = [v12 backedUpGroups];
    [(HMDMediaGroupsAggregator *)self handleParticipantDestination:v10 backedUpGroups:v11 forParticipantAccessoryUUID:v6];
  }

  [(HMDMediaGroupsAggregator *)self refreshAggregateData];
}

- (void)handleParticipantDataEvent:(id)a3 accessoryUUID:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [HMDMediaGroupsParticipantData alloc];
  v9 = [v6 encodedData];
  v10 = [(HMDMediaGroupsParticipantData *)v8 initWithProtoBufferData:v9];

  if (v10)
  {
    [(HMDMediaGroupsAggregator *)self handleIncomingParticipantData:v10 forAccessoryUUID:v7];
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    v12 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v16 = 138543618;
      v17 = v14;
      v18 = 2112;
      v19 = v6;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_ERROR, "%{public}@Failed to deserialize participant event data from event: %@", &v16, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (id)participantAccessoryUUIDFromTopic:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CD19F0] decodeTopic:v4];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 asAccessoryTopic];
    v8 = v7;
    if (v7)
    {
      v9 = [v7 accessoryEventTopicSuffixID];
      if (v9 == *MEMORY[0x277CCEA70])
      {
        v10 = [v8 accessoryUUID];
LABEL_14:

        goto LABEL_15;
      }

      v15 = objc_autoreleasePoolPush();
      v16 = self;
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = HMFGetLogIdentifier();
        v19 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v8, "accessoryEventTopicSuffixID")}];
        v22 = 138543874;
        v23 = v18;
        v24 = 2112;
        v25 = v19;
        v26 = 2112;
        v27 = v6;
        _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_ERROR, "%{public}@Received unexpected topic id: %@ topic: %@", &v22, 0x20u);

        goto LABEL_12;
      }
    }

    else
    {
      v15 = objc_autoreleasePoolPush();
      v16 = self;
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = HMFGetLogIdentifier();
        v22 = 138543618;
        v23 = v18;
        v24 = 2112;
        v25 = v6;
        _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_ERROR, "%{public}@Failed to convert to parsed accessory topic using topic: %@", &v22, 0x16u);
LABEL_12:
      }
    }

    objc_autoreleasePoolPop(v15);
    v10 = 0;
    goto LABEL_14;
  }

  v11 = objc_autoreleasePoolPush();
  v12 = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    v14 = HMFGetLogIdentifier();
    v22 = 138543618;
    v23 = v14;
    v24 = 2112;
    v25 = v4;
    _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_ERROR, "%{public}@Failed to parse topic: %@", &v22, 0x16u);
  }

  objc_autoreleasePoolPop(v11);
  v10 = 0;
LABEL_15:

  v20 = *MEMORY[0x277D85DE8];

  return v10;
}

- (void)didReceiveEvent:(id)a3 topic:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v18 = 138543874;
    v19 = v11;
    v20 = 2112;
    v21 = v7;
    v22 = 2112;
    v23 = v6;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Received topic: %@ event: %@", &v18, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  v12 = [(HMDMediaGroupsAggregator *)v9 participantAccessoryUUIDFromTopic:v7];
  if (v12)
  {
    [(HMDMediaGroupsAggregator *)v9 handleParticipantDataEvent:v6 accessoryUUID:v12];
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    v14 = v9;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      v18 = 138543618;
      v19 = v16;
      v20 = 2112;
      v21 = v7;
      _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_ERROR, "%{public}@Failed to get participant accessory uuid from topic: %@", &v18, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)clearCachedData
{
  os_unfair_lock_lock_with_options();
  v3 = [MEMORY[0x277CBEB38] dictionary];
  destinations = self->_destinations;
  self->_destinations = v3;

  v5 = [MEMORY[0x277CBEB38] dictionary];
  destinationControllersData = self->_destinationControllersData;
  self->_destinationControllersData = v5;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)clearCachedDataForParticipantAccessoryUUID:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDMediaGroupsAggregator *)self groupLocalDataStorage];
  [v5 clearCachedDataForParticipantAccessoryUUID:v4];

  LOBYTE(v5) = [(HMDMediaGroupsAggregator *)self removeDestinationWithParentIdentifier:v4];
  v6 = [(HMDMediaGroupsAggregator *)self removeDestinationControllerDataWithParentIdentifier:v4];
  if ((v5 & 1) != 0 || v6)
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
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Refreshing aggregate data due to cleared cached data for participant uuid: %@", &v12, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    [(HMDMediaGroupsAggregator *)v8 refreshAggregateData];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)updateDestinationWithIdentifier:(id)a3 audioGroupIdentifier:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDMediaGroupsAggregator *)self destinationManagerWithIdentifier:v6];
  if (v8)
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __81__HMDMediaGroupsAggregator_updateDestinationWithIdentifier_audioGroupIdentifier___block_invoke;
    v14[3] = &unk_2797358C8;
    v14[4] = self;
    v15 = v6;
    [v8 requestToUpdateAudioGroupIdentifier:v7 completion:v14];
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    v10 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543618;
      v17 = v12;
      v18 = 2112;
      v19 = v6;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_ERROR, "%{public}@Failed to update destination with identifier: %@ due to no destination manager", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __81__HMDMediaGroupsAggregator_updateDestinationWithIdentifier_audioGroupIdentifier___block_invoke(uint64_t a1, void *a2)
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
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_ERROR, "%{public}@Failed to update destination with identifier: %@ due to request error: %@", &v10, 0x20u);
    }

    objc_autoreleasePoolPop(v4);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)fixupGroupsForRemovedParticipantAccessoryUUID:(id)a3
{
  v39 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(HMDMediaGroupsAggregator *)self isRunningAsPrimary])
  {
    v5 = [(HMDMediaGroupsAggregator *)self aggregateData];
    v6 = [v5 destinations];
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __74__HMDMediaGroupsAggregator_fixupGroupsForRemovedParticipantAccessoryUUID___block_invoke;
    v29[3] = &unk_27972DFC0;
    v30 = v4;
    v7 = [v6 na_firstObjectPassingTest:v29];

    if (v7)
    {
      v8 = [(HMDMediaGroupsAggregator *)self aggregateData];
      v9 = [v8 groups];
      v24 = MEMORY[0x277D85DD0];
      v25 = 3221225472;
      v26 = __74__HMDMediaGroupsAggregator_fixupGroupsForRemovedParticipantAccessoryUUID___block_invoke_2;
      v27 = &unk_27972E038;
      v10 = v7;
      v28 = v10;
      v11 = [v9 na_firstObjectPassingTest:&v24];

      if (v11)
      {
        v12 = [v11 mediaSystemData];
        v13 = v12;
        if (v12)
        {
          v14 = [v12 associatedGroupIdentifier];

          if (v14)
          {
            v15 = [v13 rightDestinationIdentifier];
            v16 = [v10 uniqueIdentifier];
            if ([v15 hmf_isEqualToUUID:v16])
            {
              [v13 leftDestinationIdentifier];
            }

            else
            {
              [v13 rightDestinationIdentifier];
            }
            v17 = ;

            v18 = objc_autoreleasePoolPush();
            v19 = self;
            v20 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
            {
              v21 = HMFGetLogIdentifier();
              *buf = 138544130;
              v32 = v21;
              v33 = 2112;
              v34 = v17;
              v35 = 2112;
              v36 = v13;
              v37 = 2112;
              v38 = v10;
              _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_INFO, "%{public}@Fixing up destination: %@ on removed media system: %@ due to removed destination: %@", buf, 0x2Au);
            }

            objc_autoreleasePoolPop(v18);
            v22 = [v13 associatedGroupIdentifier];
            [(HMDMediaGroupsAggregator *)v19 updateDestinationWithIdentifier:v17 audioGroupIdentifier:v22];
          }
        }
      }
    }
  }

  v23 = *MEMORY[0x277D85DE8];
}

uint64_t __74__HMDMediaGroupsAggregator_fixupGroupsForRemovedParticipantAccessoryUUID___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 parentIdentifier];
  v4 = [v3 hmf_isEqualToUUID:*(a1 + 32)];

  return v4;
}

uint64_t __74__HMDMediaGroupsAggregator_fixupGroupsForRemovedParticipantAccessoryUUID___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 destinationUniqueIdentifiers];
  v4 = [*(a1 + 32) uniqueIdentifier];
  v5 = [v3 containsObject:v4];

  return v5;
}

- (id)destinationControllersData
{
  os_unfair_lock_lock_with_options();
  v3 = [(NSMutableDictionary *)self->_destinationControllersData allValues];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (id)groups
{
  v2 = [(HMDMediaGroupsAggregator *)self groupLocalDataStorage];
  v3 = [v2 groups];

  return v3;
}

- (id)localGroupWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(HMDMediaGroupsAggregator *)self groups];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __53__HMDMediaGroupsAggregator_localGroupWithIdentifier___block_invoke;
  v9[3] = &unk_27972E038;
  v10 = v4;
  v6 = v4;
  v7 = [v5 na_firstObjectPassingTest:v9];

  return v7;
}

uint64_t __53__HMDMediaGroupsAggregator_localGroupWithIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [v3 hmf_isEqualToUUID:*(a1 + 32)];

  return v4;
}

- (BOOL)removeDestinationControllerDataWithParentIdentifier:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  os_unfair_lock_lock_with_options();
  v5 = [(NSMutableDictionary *)self->_destinationControllersData allValues];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __80__HMDMediaGroupsAggregator_removeDestinationControllerDataWithParentIdentifier___block_invoke;
  v16[3] = &unk_27972B060;
  v6 = v4;
  v17 = v6;
  v7 = [v5 na_firstObjectPassingTest:v16];

  if (v7)
  {
    destinationControllersData = self->_destinationControllersData;
    v9 = [v7 identifier];
    [(NSMutableDictionary *)destinationControllersData removeObjectForKey:v9];

    os_unfair_lock_unlock(&self->_lock);
    v10 = objc_autoreleasePoolPush();
    v11 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543618;
      v19 = v13;
      v20 = 2112;
      v21 = v7;
      _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@Removed destination controller data: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
  }

  else
  {

    os_unfair_lock_unlock(&self->_lock);
  }

  v14 = *MEMORY[0x277D85DE8];
  return v7 != 0;
}

uint64_t __80__HMDMediaGroupsAggregator_removeDestinationControllerDataWithParentIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 parentIdentifier];
  v4 = [v3 hmf_isEqualToUUID:*(a1 + 32)];

  return v4;
}

- (void)setDestinationControllerData:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v12 = 138543618;
    v13 = v8;
    v14 = 2112;
    v15 = v4;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Setting destination controller data: %@", &v12, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  os_unfair_lock_lock_with_options();
  destinationControllersData = v6->_destinationControllersData;
  v10 = [v4 identifier];
  [(NSMutableDictionary *)destinationControllersData setObject:v4 forKey:v10];

  os_unfair_lock_unlock(&v6->_lock);
  v11 = *MEMORY[0x277D85DE8];
}

- (id)destinations
{
  os_unfair_lock_lock_with_options();
  v3 = [(NSMutableDictionary *)self->_destinations allValues];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (BOOL)removeDestinationWithParentIdentifier:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  os_unfair_lock_lock_with_options();
  v5 = [(NSMutableDictionary *)self->_destinations allValues];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __66__HMDMediaGroupsAggregator_removeDestinationWithParentIdentifier___block_invoke;
  v16[3] = &unk_27972DFC0;
  v6 = v4;
  v17 = v6;
  v7 = [v5 na_firstObjectPassingTest:v16];

  if (v7)
  {
    destinations = self->_destinations;
    v9 = [v7 uniqueIdentifier];
    [(NSMutableDictionary *)destinations removeObjectForKey:v9];

    os_unfair_lock_unlock(&self->_lock);
    v10 = objc_autoreleasePoolPush();
    v11 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543618;
      v19 = v13;
      v20 = 2112;
      v21 = v7;
      _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@Removed destination: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
  }

  else
  {

    os_unfair_lock_unlock(&self->_lock);
  }

  v14 = *MEMORY[0x277D85DE8];
  return v7 != 0;
}

uint64_t __66__HMDMediaGroupsAggregator_removeDestinationWithParentIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 parentIdentifier];
  v4 = [v3 hmf_isEqualToUUID:*(a1 + 32)];

  return v4;
}

- (void)setDestination:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v12 = 138543618;
    v13 = v8;
    v14 = 2112;
    v15 = v4;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Setting destination: %@", &v12, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  os_unfair_lock_lock_with_options();
  destinations = v6->_destinations;
  v10 = [v4 uniqueIdentifier];
  [(NSMutableDictionary *)destinations setObject:v4 forKey:v10];

  os_unfair_lock_unlock(&v6->_lock);
  v11 = *MEMORY[0x277D85DE8];
}

- (void)stop
{
  v11 = *MEMORY[0x277D85DE8];
  if ([(HMDMediaGroupsAggregator *)self setState:0])
  {
    v3 = objc_autoreleasePoolPush();
    v4 = self;
    v5 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = HMFGetLogIdentifier();
      v9 = 138543362;
      v10 = v6;
      _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@Stopping destination controller aggregator", &v9, 0xCu);
    }

    objc_autoreleasePoolPop(v3);
    [(HMDMediaGroupsAggregator *)v4 notifyOfStoppedState];
    [(HMDMediaGroupsAggregator *)v4 stopWarmUpTimer];
    [(HMDMediaGroupsAggregator *)v4 unregisterForAllEvents];
    [(HMDMediaGroupsAggregator *)v4 clearCachedData];
    v7 = [(HMDMediaGroupsAggregator *)v4 groupLocalDataStorage];
    [v7 clearCachedData];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)stopWarmUpTimer
{
  v3 = [(HMDMediaGroupsAggregator *)self warmUpTimer];
  [v3 setDelegate:0];

  [(HMDMediaGroupsAggregator *)self setWarmUpTimer:0];
}

- (void)startWarmUpTimer
{
  v14 = *MEMORY[0x277D85DE8];
  if ([(HMDMediaGroupsAggregator *)self shouldWarmUp])
  {
    v3 = objc_autoreleasePoolPush();
    v4 = self;
    v5 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = HMFGetLogIdentifier();
      v12 = 138543362;
      v13 = v6;
      _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@Starting warmup timer", &v12, 0xCu);
    }

    objc_autoreleasePoolPop(v3);
    v7 = [(HMDMediaGroupsAggregator *)v4 timerProvider];
    v8 = [v7 timerWithTimeInterval:2 options:60.0];
    [(HMDMediaGroupsAggregator *)v4 setWarmUpTimer:v8];

    v9 = [(HMDMediaGroupsAggregator *)v4 warmUpTimer];
    [v9 setDelegate:v4];

    v10 = [(HMDMediaGroupsAggregator *)v4 warmUpTimer];
    [v10 resume];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)runAsPrimary
{
  v3 = 0;
  if ([(HMDMediaGroupsAggregator *)self setState:1 previousState:&v3])
  {
    [(HMDMediaGroupsAggregator *)self startWarmUpTimer];
    [(HMDMediaGroupsAggregator *)self registerForEvents];
  }
}

- (BOOL)setState:(unint64_t)a3 previousState:(unint64_t *)a4
{
  v21 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock_with_options();
  state = self->_state;
  if (state == a3)
  {
    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    if (a4)
    {
      *a4 = state;
    }

    self->_state = a3;
    os_unfair_lock_unlock(&self->_lock);
    v8 = objc_autoreleasePoolPush();
    v9 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      if (a3)
      {
        if (a3 == 1)
        {
          v12 = @"HMDMediaGroupsAggregatorRunningAsPrimaryState";
        }

        else
        {
          v13 = MEMORY[0x277CCACA8];
          v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
          v12 = [v13 stringWithFormat:@"Unknown State (%@)", v14];
        }
      }

      else
      {
        v12 = @"HMDMediaGroupsAggregatorStoppedState";
      }

      *buf = 138543618;
      v18 = v11;
      v19 = 2112;
      v20 = v12;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Updated state: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
  }

  result = state != a3;
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)isRunningAsPrimary
{
  os_unfair_lock_lock_with_options();
  v3 = self->_state == 1;
  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (BOOL)isRunning
{
  os_unfair_lock_lock_with_options();
  v3 = self->_state == 1;
  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (id)destinationManagerWithIdentifier:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDMediaGroupsAggregator *)self dataSource];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 destinationManagerWithIdentifier:v4 mediaGroupsAggregator:self];
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
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to get destination manager with identifier: %@ due to no data source", &v14, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    v7 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)appleMediaAccessories
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = [(HMDMediaGroupsAggregator *)self dataSource];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 appleMediaAccessoriesForMediaGroupsAggregator:self];
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
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_ERROR, "%{public}@Failed to get apple media accessories due to no data source", &v12, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    v5 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)eventSource
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = [(HMDMediaGroupsAggregator *)self dataSource];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 eventSourceForMediaGroupsAggregator:self];
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
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_ERROR, "%{public}@Failed to get event source due to no data source", &v12, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    v5 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)participantDataTopicForAccessory:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDMediaGroupsAggregator *)self dataSource];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 participantDataTopicForAccessory:v4 mediaGroupsAggregator:self];
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
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to get destination topic due to no data source", &v14, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
    v7 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)aggregateDataTopic
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = [(HMDMediaGroupsAggregator *)self dataSource];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 aggregateDataTopicForMediaGroupsAggregator:self];
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
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_ERROR, "%{public}@Failed to get aggregated data topic due to no data source", &v12, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    v5 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];

  return v5;
}

- (BOOL)shouldWarmUp
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = [(HMDMediaGroupsAggregator *)self aggregateDataTopic];
  if (v3)
  {
    v4 = [(HMDMediaGroupsAggregator *)self eventStoreReadHandle];
    v5 = [v4 lastEventForTopic:v3];

    if (v5)
    {
      v6 = [HMDMediaGroupsAggregateData alloc];
      v7 = [v5 encodedData];
      v8 = [(HMDMediaGroupsAggregateData *)v6 initWithProtoBufferData:v7];

      if (v8)
      {
        v9 = [(HMDMediaGroupsAggregateData *)v8 destinations];
        if ([v9 count])
        {
          v10 = 1;
        }

        else
        {
          v20 = [(HMDMediaGroupsAggregateData *)v8 destinationControllersData];
          v10 = [v20 count] != 0;
        }
      }

      else
      {
        v15 = objc_autoreleasePoolPush();
        v16 = self;
        v17 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          v18 = HMFGetLogIdentifier();
          v19 = [v5 encodedData];
          v23 = 138543874;
          v24 = v18;
          v25 = 2112;
          v26 = v19;
          v27 = 2112;
          v28 = v5;
          _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_ERROR, "%{public}@Failed to decode last cached event participant data: %@ from event: %@", &v23, 0x20u);
        }

        objc_autoreleasePoolPop(v15);
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    v12 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v23 = 138543362;
      v24 = v14;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_ERROR, "%{public}@Failed to get last cached event participant data due to missing topic name", &v23, 0xCu);
    }

    objc_autoreleasePoolPop(v11);
    v10 = 0;
  }

  v21 = *MEMORY[0x277D85DE8];
  return v10;
}

- (void)forwardAggregateData
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = [(HMDMediaGroupsAggregator *)self warmUpTimer];

  if (!v3)
  {
    v4 = [(HMDMediaGroupsAggregator *)self aggregateDataTopic];
    if (v4)
    {
      v5 = [(HMDMediaGroupsAggregator *)self eventSource];
      if (v5)
      {
        v6 = [(HMDMediaGroupsAggregator *)self aggregateData];
        v7 = objc_autoreleasePoolPush();
        v8 = self;
        v9 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          v10 = HMFGetLogIdentifier();
          *buf = 138543874;
          v28 = v10;
          v29 = 2112;
          v30 = v4;
          v31 = 2112;
          v32 = v6;
          _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Publishing topic: %@ data: %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v7);
        v11 = objc_alloc(MEMORY[0x277D174B0]);
        [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
        v12 = [v11 initWithSource:v5 cachePolicy:2 combineType:2 timestamp:?];
        v13 = objc_alloc(MEMORY[0x277D174A0]);
        v14 = [v6 encodeToProtoBufferData];
        v15 = [v13 initWithEventData:v14 metadata:v12];

        v16 = [(HMDMediaGroupsAggregator *)v8 eventForwarder];
        v26[0] = MEMORY[0x277D85DD0];
        v26[1] = 3221225472;
        v26[2] = __48__HMDMediaGroupsAggregator_forwardAggregateData__block_invoke;
        v26[3] = &unk_2797359D8;
        v26[4] = v8;
        [v16 forwardEvent:v15 topic:v4 completion:v26];
      }

      else
      {
        v21 = objc_autoreleasePoolPush();
        v22 = self;
        v23 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          v24 = HMFGetLogIdentifier();
          *buf = 138543362;
          v28 = v24;
          _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_ERROR, "%{public}@Failed to get event source to forward data", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v21);
      }
    }

    else
    {
      v17 = objc_autoreleasePoolPush();
      v18 = self;
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = HMFGetLogIdentifier();
        *buf = 138543362;
        v28 = v20;
        _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_ERROR, "%{public}@Failed to get topic name to forward data", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v17);
    }
  }

  v25 = *MEMORY[0x277D85DE8];
}

void __48__HMDMediaGroupsAggregator_forwardAggregateData__block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
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
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_ERROR, "%{public}@Forwarding event resulted in error: %@", &v9, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)notifyOfStoppedState
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = [(HMDMediaGroupsAggregator *)self delegate];
  v4 = v3;
  if (v3)
  {
    [v3 didStopMediaGroupsAggregator:self];
  }

  else
  {
    v5 = objc_autoreleasePoolPush();
    v6 = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      v10 = 138543362;
      v11 = v8;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Failed to notify of stopped state due to no delegate", &v10, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)refreshAggregateData
{
  v38 = *MEMORY[0x277D85DE8];
  if ([(HMDMediaGroupsAggregator *)self isRunning])
  {
    v3 = [HMDMediaGroupsAggregateData alloc];
    v4 = [(HMDMediaGroupsAggregator *)self destinations];
    v5 = [(HMDMediaGroupsAggregator *)self destinationControllersData];
    v6 = [(HMDMediaGroupsAggregator *)self groups];
    v7 = [(HMDMediaGroupsAggregateData *)v3 initWithDestinations:v4 destinationControllersData:v5 groups:v6];

    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v8 = [(HMDMediaGroupsAggregator *)self generators];
    v9 = [v8 countByEnumeratingWithState:&v29 objects:v37 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v30;
      do
      {
        v12 = 0;
        v13 = v7;
        do
        {
          if (*v30 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v14 = *(*(&v29 + 1) + 8 * v12);
          v15 = [(HMDMediaGroupsAggregateData *)v13 destinations];
          v16 = [(HMDMediaGroupsAggregateData *)v13 destinationControllersData];
          v17 = [(HMDMediaGroupsAggregateData *)v13 groups];
          v7 = [v14 aggregateDataWithDestinations:v15 controllers:v16 groups:v17];

          ++v12;
          v13 = v7;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v29 objects:v37 count:16];
      }

      while (v10);
    }

    v18 = [(HMDMediaGroupsAggregator *)self aggregateData];
    v19 = [v18 isEqual:v7];

    if (v19)
    {
      v20 = objc_autoreleasePoolPush();
      v21 = self;
      v22 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v23 = HMFGetLogIdentifier();
        *buf = 138543618;
        v34 = v23;
        v35 = 2112;
        v36 = v7;
        _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_INFO, "%{public}@Refresh resulted in no change to aggregate data: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v20);
    }

    else
    {
      [(HMDMediaGroupsAggregator *)self setAggregateData:v7];
      v24 = objc_autoreleasePoolPush();
      v25 = self;
      v26 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        v27 = HMFGetLogIdentifier();
        *buf = 138543618;
        v34 = v27;
        v35 = 2112;
        v36 = v7;
        _os_log_impl(&dword_2531F8000, v26, OS_LOG_TYPE_INFO, "%{public}@Updated aggregate data: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v24);
      [(HMDMediaGroupsAggregator *)v25 notifyOfUpdatedMediaGroupsAggregateData:v7];
      [(HMDMediaGroupsAggregator *)v25 forwardAggregateData];
    }
  }

  v28 = *MEMORY[0x277D85DE8];
}

- (void)unregisterForEventsForAccessory:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(HMDMediaGroupsAggregator *)self isRunningAsPrimary])
  {
    v5 = [(HMDMediaGroupsAggregator *)self participantDataTopicForAccessory:v4];
    if (v5)
    {
      v6 = objc_autoreleasePoolPush();
      v7 = self;
      v8 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = HMFGetLogIdentifier();
        *buf = 138543874;
        v17 = v9;
        v18 = 2112;
        v19 = v5;
        v20 = 2112;
        v21 = v4;
        _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Unregistering destination topic: %@ for accessory: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v6);
      v10 = [(HMDMediaGroupsAggregator *)v7 subscriptionProvider];
      v15 = v5;
      v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v15 count:1];
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __60__HMDMediaGroupsAggregator_unregisterForEventsForAccessory___block_invoke;
      v13[3] = &unk_2797358C8;
      v13[4] = v7;
      v14 = v5;
      [v10 unregisterConsumer:v7 topicFilters:v11 completion:v13];
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __60__HMDMediaGroupsAggregator_unregisterForEventsForAccessory___block_invoke(uint64_t a1, void *a2)
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
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_ERROR, "%{public}@Unregister for destination topic: %@ resulted in error: %@", &v10, 0x20u);
    }

    objc_autoreleasePoolPop(v4);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)unregisterForAllEvents
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    *buf = 138543362;
    v11 = v6;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@Unregister for all events", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v7 = [(HMDMediaGroupsAggregator *)v4 subscriptionProvider];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __50__HMDMediaGroupsAggregator_unregisterForAllEvents__block_invoke;
  v9[3] = &unk_2797359D8;
  v9[4] = v4;
  [v7 unregisterConsumer:v4 completion:v9];

  v8 = *MEMORY[0x277D85DE8];
}

void __50__HMDMediaGroupsAggregator_unregisterForAllEvents__block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
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
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_ERROR, "%{public}@Unregistering for all events returned with error: %@", &v9, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)registerForEventsForAccessory:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(HMDMediaGroupsAggregator *)self isRunningAsPrimary])
  {
    v5 = [(HMDMediaGroupsAggregator *)self participantDataTopicForAccessory:v4];
    if (v5)
    {
      v6 = objc_autoreleasePoolPush();
      v7 = self;
      v8 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = HMFGetLogIdentifier();
        *buf = 138543874;
        v17 = v9;
        v18 = 2112;
        v19 = v5;
        v20 = 2112;
        v21 = v4;
        _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Registering participant data topic: %@ for accessory: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v6);
      v10 = [(HMDMediaGroupsAggregator *)v7 subscriptionProvider];
      v15 = v5;
      v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v15 count:1];
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __58__HMDMediaGroupsAggregator_registerForEventsForAccessory___block_invoke;
      v13[3] = &unk_2797354B8;
      v13[4] = v7;
      v14 = v5;
      [v10 registerConsumer:v7 topicFilters:v11 completion:v13];
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __58__HMDMediaGroupsAggregator_registerForEventsForAccessory___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 32);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v11 = *(a1 + 40);
      *buf = 138543874;
      v15 = v10;
      v16 = 2112;
      v17 = v11;
      v18 = 2112;
      v19 = v6;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_ERROR, "%{public}@Register for destination topic: %@ resulted in error: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
  }

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __58__HMDMediaGroupsAggregator_registerForEventsForAccessory___block_invoke_40;
  v13[3] = &unk_279734E90;
  v13[4] = *(a1 + 32);
  [v5 hmf_enumerateKeysAndObjectsWithAutoreleasePoolUsingBlock:v13];

  v12 = *MEMORY[0x277D85DE8];
}

- (void)registerForEvents
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = [(HMDMediaGroupsAggregator *)self appleMediaAccessories];
  v4 = v3;
  if (v3)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __45__HMDMediaGroupsAggregator_registerForEvents__block_invoke;
    v10[3] = &unk_279731490;
    v10[4] = self;
    [v3 na_each:v10];
  }

  else
  {
    v5 = objc_autoreleasePoolPush();
    v6 = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      *buf = 138543362;
      v12 = v8;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_ERROR, "%{public}@Failed to register for events due to no accessories", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)handleAccessoryChangedRoomNotification:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(HMDMediaGroupsAggregator *)self isRunning])
  {
    v5 = objc_autoreleasePoolPush();
    v6 = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      v10 = 138543362;
      v11 = v8;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Refreshing aggregate data due to change room notification", &v10, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
    [(HMDMediaGroupsAggregator *)v6 refreshAggregateData];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)handlePrimaryResidentDeviceChangeNotification:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 object];
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

  if (v7)
  {
    [(HMDMediaGroupsAggregator *)self refreshRunningStateUsingPrimaryResidentChangeMonitor:v7];
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v9 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v13 = 138543618;
      v14 = v11;
      v15 = 2112;
      v16 = v4;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to get primary resident change monitor from notification: %@", &v13, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)handleMediaSystemAddedNotification:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(HMDMediaGroupsAggregator *)self isRunning])
  {
    v5 = objc_autoreleasePoolPush();
    v6 = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      v10 = 138543362;
      v11 = v8;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Refreshing aggregate data due to added media system notification", &v10, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
    [(HMDMediaGroupsAggregator *)v6 refreshAggregateData];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)handleHomeRemovedAccessoryNotification:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [v5 objectForKey:@"HMDAccessoryNotificationKey"];

  if (v6)
  {
    v7 = [v6 uuid];
    [(HMDMediaGroupsAggregator *)self fixupGroupsForRemovedParticipantAccessoryUUID:v7];

    v8 = [v6 uuid];
    [(HMDMediaGroupsAggregator *)self clearCachedDataForParticipantAccessoryUUID:v8];

    v9 = v6;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      v11 = v9;
    }

    else
    {
      v11 = 0;
    }

    v12 = v11;

    if (isKindOfClass)
    {
      [(HMDMediaGroupsAggregator *)self unregisterForEventsForAccessory:v9];
    }
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    v14 = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      v18 = 138543618;
      v19 = v16;
      v20 = 2112;
      v21 = v4;
      _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_ERROR, "%{public}@Failed to get removed accessory from notification: %@", &v18, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)handleHomeAddedAccessoryNotification:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [v5 objectForKey:@"HMDNotificationAddedAccessoryKey"];

  if (v6)
  {
    v7 = v6;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      v9 = v7;
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;

    if (isKindOfClass)
    {
      [(HMDMediaGroupsAggregator *)self registerForEventsForAccessory:v7];
    }
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    v12 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v16 = 138543618;
      v17 = v14;
      v18 = 2112;
      v19 = v4;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_ERROR, "%{public}@Failed to get added accessory from notification: %@", &v16, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)refreshRunningStateUsingPrimaryResidentChangeMonitor:(id)a3
{
  if ([a3 isCurrentDevicePrimaryResident])
  {

    [(HMDMediaGroupsAggregator *)self runAsPrimary];
  }

  else
  {

    [(HMDMediaGroupsAggregator *)self stop];
  }
}

- (void)registerForNotificationsWithHome:(id)a3 notificationCenter:(id)a4 primaryResidentChangeMonitor:(id)a5
{
  v8 = a5;
  v10 = a4;
  v9 = a3;
  [v10 addObserver:self selector:sel_handleHomeAddedAccessoryNotification_ name:@"HMDNotificationHomeAddedAccessory" object:v9];
  [v10 addObserver:self selector:sel_handleHomeRemovedAccessoryNotification_ name:@"HMDHomeAccessoryRemovedNotification" object:v9];
  [v10 addObserver:self selector:sel_handleMediaSystemAddedNotification_ name:@"HMDMediaSystemAddedNotification" object:v9];

  [v10 addObserver:self selector:sel_handlePrimaryResidentDeviceChangeNotification_ name:@"HMDPrimaryResidentChangeMonitorIsCurrentDeviceChangeNotification" object:v8];
  [v10 addObserver:self selector:sel_handlePrimaryResidentDeviceChangeNotification_ name:@"HMDPrimaryResidentChangeMonitorHasResidentDevicesChangeNotification" object:v8];

  [v10 addObserver:self selector:sel_handleAccessoryChangedRoomNotification_ name:@"HMDNotificationAccessoryChangedRoom" object:0];
}

- (void)configureWithHome:(id)a3 messageDispatcher:(id)a4 notificationCenter:(id)a5 primaryResidentChangeMonitor:(id)a6
{
  v22 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = objc_autoreleasePoolPush();
  v15 = self;
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = HMFGetLogIdentifier();
    v20 = 138543362;
    v21 = v17;
    _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_INFO, "%{public}@Configuring media groups aggregator", &v20, 0xCu);
  }

  objc_autoreleasePoolPop(v14);
  [(HMDMediaGroupsAggregator *)v15 registerForNotificationsWithHome:v10 notificationCenter:v12 primaryResidentChangeMonitor:v13];
  [(HMDMediaGroupsAggregator *)v15 refreshRunningStateUsingPrimaryResidentChangeMonitor:v13];
  v18 = [(HMDMediaGroupsAggregator *)v15 messenger];
  [v18 configureWithMessageDispatcher:v11 home:v10];

  v19 = *MEMORY[0x277D85DE8];
}

- (id)createGenerators
{
  v11[1] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(HMDMediaSystemsAggregateDataGenerator);
  [(HMDMediaSystemsAggregateDataGenerator *)v3 setDataSource:self];
  v4 = objc_alloc_init(HMDMediaDestinationControllerAggregateDataGenerator);
  [(HMDMediaDestinationControllerAggregateDataGenerator *)v4 setDataSource:self];
  v11[0] = v3;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
  v10 = v4;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:&v10 count:1];
  v7 = [v5 arrayByAddingObjectsFromArray:v6];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (HMDMediaGroupsAggregator)initWithIdentifier:(id)a3 messenger:(id)a4 eventForwarder:(id)a5 subscriptionProvider:(id)a6 eventStoreReadHandle:(id)a7 groupsLocalDataStorage:(id)a8 timerProvider:(id)a9 featuresDataSource:(id)a10
{
  v17 = a3;
  obj = a4;
  v18 = a4;
  v44 = a5;
  v19 = a5;
  v48 = a6;
  v46 = a7;
  v47 = a8;
  v20 = a9;
  v21 = a10;
  if (!v17)
  {
    _HMFPreconditionFailure();
    goto LABEL_13;
  }

  if (!v18)
  {
LABEL_13:
    _HMFPreconditionFailure();
    goto LABEL_14;
  }

  if (!v19)
  {
LABEL_14:
    _HMFPreconditionFailure();
    goto LABEL_15;
  }

  if (!v48)
  {
LABEL_15:
    _HMFPreconditionFailure();
    goto LABEL_16;
  }

  if (!v47)
  {
LABEL_16:
    _HMFPreconditionFailure();
    goto LABEL_17;
  }

  if (!v46)
  {
LABEL_17:
    _HMFPreconditionFailure();
    goto LABEL_18;
  }

  if (!v20)
  {
LABEL_18:
    _HMFPreconditionFailure();
    goto LABEL_19;
  }

  if (!v21)
  {
LABEL_19:
    v35 = _HMFPreconditionFailure();
    return [(HMDMediaGroupsAggregator *)v35 initWithIdentifier:v36 messenger:v37 eventForwarder:v38 subscriptionProvider:v39 eventStoreReadHandle:v40 groupsLocalDataStorage:v41, v42];
  }

  v45 = v21;
  v49.receiver = self;
  v49.super_class = HMDMediaGroupsAggregator;
  v22 = [(HMDMediaGroupsAggregator *)&v49 init];
  v23 = v22;
  if (v22)
  {
    v22->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v22->_featuresDataSource, a10);
    objc_storeStrong(&v23->_identifier, a3);
    v23->_state = 0;
    warmUpTimer = v23->_warmUpTimer;
    v23->_warmUpTimer = 0;

    objc_storeWeak(&v23->_timerProvider, v20);
    objc_storeStrong(&v23->_messenger, obj);
    objc_storeStrong(&v23->_eventForwarder, v44);
    objc_storeStrong(&v23->_subscriptionProvider, a6);
    objc_storeStrong(&v23->_groupLocalDataStorage, a8);
    objc_storeStrong(&v23->_eventStoreReadHandle, a7);
    v25 = [MEMORY[0x277CBEB38] dictionary];
    destinations = v23->_destinations;
    v23->_destinations = v25;

    v27 = [MEMORY[0x277CBEB38] dictionary];
    destinationControllersData = v23->_destinationControllersData;
    v23->_destinationControllersData = v27;

    v29 = [HMDMediaGroupsAggregateData alloc];
    v30 = [(HMDMediaGroupsAggregateData *)v29 initWithDestinations:MEMORY[0x277CBEBF8] destinationControllersData:MEMORY[0x277CBEBF8]];
    aggregateData = v23->_aggregateData;
    v23->_aggregateData = v30;

    v32 = [(HMDMediaGroupsAggregator *)v23 createGenerators];
    generators = v23->_generators;
    v23->_generators = v32;
  }

  return v23;
}

- (HMDMediaGroupsAggregator)initWithIdentifier:(id)a3 messenger:(id)a4 eventForwarder:(id)a5 subscriptionProvider:(id)a6 eventStoreReadHandle:(id)a7 groupsLocalDataStorage:(id)a8
{
  v14 = a8;
  v15 = a7;
  v16 = a6;
  v17 = a5;
  v18 = a4;
  v19 = a3;
  v20 = objc_alloc_init(HMDFeaturesDataSource);
  v21 = [(HMDMediaGroupsAggregator *)self initWithIdentifier:v19 messenger:v18 eventForwarder:v17 subscriptionProvider:v16 eventStoreReadHandle:v15 groupsLocalDataStorage:v14 timerProvider:self featuresDataSource:v20];

  return v21;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t68_108565 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t68_108565, &__block_literal_global_108566);
  }

  v3 = logCategory__hmf_once_v69_108567;

  return v3;
}

uint64_t __39__HMDMediaGroupsAggregator_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v69_108567;
  logCategory__hmf_once_v69_108567 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end