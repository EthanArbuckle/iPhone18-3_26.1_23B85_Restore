@interface HMDMediaGroupsAggregator
+ (id)logCategory;
- (BOOL)isRunning;
- (BOOL)isRunningAsPrimary;
- (BOOL)removeDestinationControllerDataWithParentIdentifier:(id)identifier;
- (BOOL)removeDestinationWithParentIdentifier:(id)identifier;
- (BOOL)setState:(unint64_t)state previousState:(unint64_t *)previousState;
- (BOOL)shouldWarmUp;
- (BOOL)updateAssociatedGroupIdentifier:(id)identifier forGroupIdentifier:(id)groupIdentifier error:(id *)error;
- (HMDMediaGroupsAggregator)initWithIdentifier:(id)identifier messenger:(id)messenger eventForwarder:(id)forwarder subscriptionProvider:(id)provider eventStoreReadHandle:(id)handle groupsLocalDataStorage:(id)storage;
- (HMDMediaGroupsAggregator)initWithIdentifier:(id)identifier messenger:(id)messenger eventForwarder:(id)forwarder subscriptionProvider:(id)provider eventStoreReadHandle:(id)handle groupsLocalDataStorage:(id)storage timerProvider:(id)timerProvider featuresDataSource:(id)self0;
- (HMDMediaGroupsAggregatorDataSource)dataSource;
- (HMDMediaGroupsAggregatorDelegate)delegate;
- (HMFTimerProvider)timerProvider;
- (id)aggregateDataTopic;
- (id)appleMediaAccessories;
- (id)createGenerators;
- (id)destinationControllersData;
- (id)destinationManagerWithIdentifier:(id)identifier;
- (id)destinations;
- (id)eventSource;
- (id)groups;
- (id)localGroupWithIdentifier:(id)identifier;
- (id)logIdentifier;
- (id)participantAccessoryUUIDFromTopic:(id)topic;
- (id)participantDataTopicForAccessory:(id)accessory;
- (id)roomForAllDestinationParentIdentifiers:(id)identifiers mediaSystemsAggregateDataGenerator:(id)generator;
- (id)sameRoomAccessoryUUIDsForDestinationControllerData:(id)data generator:(id)generator;
- (void)clearCachedData;
- (void)clearCachedDataForParticipantAccessoryUUID:(id)d;
- (void)configureWithHome:(id)home messageDispatcher:(id)dispatcher notificationCenter:(id)center primaryResidentChangeMonitor:(id)monitor;
- (void)didReceiveEvent:(id)event topic:(id)topic;
- (void)didReceiveUpdateAssociatedGroupRequestMessage:(id)message withGroupIdentifier:(id)identifier associatedGroupIdentifier:(id)groupIdentifier messenger:(id)messenger;
- (void)fixupGroupsForRemovedParticipantAccessoryUUID:(id)d;
- (void)forwardAggregateData;
- (void)handleAccessoryChangedRoomNotification:(id)notification;
- (void)handleHomeAddedAccessoryNotification:(id)notification;
- (void)handleHomeRemovedAccessoryNotification:(id)notification;
- (void)handleIncomingParticipantData:(id)data forAccessoryUUID:(id)d;
- (void)handleMediaSystemAddedNotification:(id)notification;
- (void)handleParticipantDataEvent:(id)event accessoryUUID:(id)d;
- (void)handleParticipantDestination:(id)destination backedUpGroups:(id)groups forParticipantAccessoryUUID:(id)d;
- (void)handlePrimaryResidentDeviceChangeNotification:(id)notification;
- (void)notifyOfStoppedState;
- (void)refreshAggregateData;
- (void)refreshRunningStateUsingPrimaryResidentChangeMonitor:(id)monitor;
- (void)registerForEvents;
- (void)registerForEventsForAccessory:(id)accessory;
- (void)registerForNotificationsWithHome:(id)home notificationCenter:(id)center primaryResidentChangeMonitor:(id)monitor;
- (void)removeGroupWithIdentifier:(id)identifier;
- (void)runAsPrimary;
- (void)setDestination:(id)destination;
- (void)setDestinationControllerData:(id)data;
- (void)startWarmUpTimer;
- (void)stop;
- (void)stopWarmUpTimer;
- (void)timerDidFire:(id)fire;
- (void)unregisterForAllEvents;
- (void)unregisterForEventsForAccessory:(id)accessory;
- (void)updateDestinationWithIdentifier:(id)identifier audioGroupIdentifier:(id)groupIdentifier;
- (void)updateGroup:(id)group;
- (void)updateGroup:(id)group participantAccessoryUUIDs:(id)ds;
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
  identifier = [(HMDMediaGroupsAggregator *)self identifier];
  uUIDString = [identifier UUIDString];

  return uUIDString;
}

- (void)timerDidFire:(id)fire
{
  v15 = *MEMORY[0x277D85DE8];
  fireCopy = fire;
  warmUpTimer = [(HMDMediaGroupsAggregator *)self warmUpTimer];

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  v9 = v8;
  if (warmUpTimer == fireCopy)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v13 = 138543362;
      v14 = v11;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Warm up timer fired", &v13, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    [(HMDMediaGroupsAggregator *)selfCopy setWarmUpTimer:0];
    [(HMDMediaGroupsAggregator *)selfCopy forwardAggregateData];
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v10 = HMFGetLogIdentifier();
      v13 = 138543362;
      v14 = v10;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_DEBUG, "%{public}@Skipping warmUp debounce refresh due to miss matched timer when fired", &v13, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (id)roomForAllDestinationParentIdentifiers:(id)identifiers mediaSystemsAggregateDataGenerator:(id)generator
{
  v21 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  generatorCopy = generator;
  dataSource = [(HMDMediaGroupsAggregator *)self dataSource];
  v9 = dataSource;
  if (dataSource)
  {
    v10 = [dataSource roomForAllDestinationParentIdentifiers:identifiersCopy mediaGroupsAggregator:self];
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v17 = 138543618;
      v18 = v14;
      v19 = 2112;
      v20 = identifiersCopy;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_ERROR, "%{public}@Failed to get room name for destination parent identifiers: %@ due to no data source", &v17, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    v10 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)sameRoomAccessoryUUIDsForDestinationControllerData:(id)data generator:(id)generator
{
  v22 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  generatorCopy = generator;
  dataSource = [(HMDMediaGroupsAggregator *)self dataSource];
  v9 = dataSource;
  if (dataSource)
  {
    v10 = [dataSource sameRoomAccessoryUUIDsForDestinationControllerData:dataCopy mediaGroupsAggregator:self];
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      identifier = [dataCopy identifier];
      v18 = 138543618;
      v19 = v14;
      v20 = 2112;
      v21 = identifier;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_ERROR, "%{public}@Failed to get same room accessory UUIDs for destination controller data: %@ due to no data source", &v18, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    v10 = MEMORY[0x277CBEBF8];
  }

  v16 = *MEMORY[0x277D85DE8];

  return v10;
}

- (void)didReceiveUpdateAssociatedGroupRequestMessage:(id)message withGroupIdentifier:(id)identifier associatedGroupIdentifier:(id)groupIdentifier messenger:(id)messenger
{
  v11 = 0;
  messageCopy = message;
  [(HMDMediaGroupsAggregator *)self updateAssociatedGroupIdentifier:groupIdentifier forGroupIdentifier:identifier error:&v11];
  v10 = v11;
  [messageCopy respondWithPayload:0 error:v10];
}

- (void)handleParticipantDestination:(id)destination backedUpGroups:(id)groups forParticipantAccessoryUUID:(id)d
{
  dCopy = d;
  groupsCopy = groups;
  destinationCopy = destination;
  [(HMDMediaGroupsAggregator *)self setDestination:destinationCopy];
  groupLocalDataStorage = [(HMDMediaGroupsAggregator *)self groupLocalDataStorage];
  audioGroupIdentifier = [destinationCopy audioGroupIdentifier];

  [groupLocalDataStorage updateUsingParticipantAccessoryUUID:dCopy associatedGroupIdentifier:audioGroupIdentifier backedUpGroupData:groupsCopy];
}

- (void)removeGroupWithIdentifier:(id)identifier
{
  v16 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v12 = 138543618;
    v13 = v8;
    v14 = 2112;
    v15 = identifierCopy;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Removing group with identifier: %@", &v12, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  groupLocalDataStorage = [(HMDMediaGroupsAggregator *)selfCopy groupLocalDataStorage];
  [groupLocalDataStorage removeGroupWithIdentifier:identifierCopy];

  [(HMDMediaGroupsAggregator *)selfCopy refreshAggregateData];
  groupLocalDataStorage2 = [(HMDMediaGroupsAggregator *)selfCopy groupLocalDataStorage];
  [groupLocalDataStorage2 backupData];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)updateGroup:(id)group participantAccessoryUUIDs:(id)ds
{
  v21 = *MEMORY[0x277D85DE8];
  groupCopy = group;
  dsCopy = ds;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v15 = 138543874;
    v16 = v11;
    v17 = 2112;
    v18 = groupCopy;
    v19 = 2112;
    v20 = dsCopy;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Updating group: %@ for participant accessory uuids: %@", &v15, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  groupLocalDataStorage = [(HMDMediaGroupsAggregator *)selfCopy groupLocalDataStorage];
  [groupLocalDataStorage updateGroup:groupCopy participantAccessoryUUIDs:dsCopy];

  [(HMDMediaGroupsAggregator *)selfCopy refreshAggregateData];
  groupLocalDataStorage2 = [(HMDMediaGroupsAggregator *)selfCopy groupLocalDataStorage];
  [groupLocalDataStorage2 backupData];

  v14 = *MEMORY[0x277D85DE8];
}

- (void)updateGroup:(id)group
{
  v16 = *MEMORY[0x277D85DE8];
  groupCopy = group;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v12 = 138543618;
    v13 = v8;
    v14 = 2112;
    v15 = groupCopy;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Updating group: %@", &v12, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  groupLocalDataStorage = [(HMDMediaGroupsAggregator *)selfCopy groupLocalDataStorage];
  [groupLocalDataStorage updateGroup:groupCopy];

  [(HMDMediaGroupsAggregator *)selfCopy refreshAggregateData];
  groupLocalDataStorage2 = [(HMDMediaGroupsAggregator *)selfCopy groupLocalDataStorage];
  [groupLocalDataStorage2 backupData];

  v11 = *MEMORY[0x277D85DE8];
}

- (BOOL)updateAssociatedGroupIdentifier:(id)identifier forGroupIdentifier:(id)groupIdentifier error:(id *)error
{
  v31 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  groupIdentifierCopy = groupIdentifier;
  v10 = objc_autoreleasePoolPush();
  selfCopy = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = HMFGetLogIdentifier();
    v25 = 138543874;
    v26 = v13;
    v27 = 2112;
    v28 = identifierCopy;
    v29 = 2112;
    v30 = groupIdentifierCopy;
    _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@Updating associated group identifier: %@ for group identifier: %@", &v25, 0x20u);
  }

  objc_autoreleasePoolPop(v10);
  v14 = [(HMDMediaGroupsAggregator *)selfCopy localGroupWithIdentifier:groupIdentifierCopy];
  v15 = v14;
  if (v14)
  {
    v16 = [v14 mutableCopy];
    [v16 setAssociatedGroupIdentifier:identifierCopy];
    groupLocalDataStorage = [(HMDMediaGroupsAggregator *)selfCopy groupLocalDataStorage];
    [groupLocalDataStorage updateGroup:v16];

    [(HMDMediaGroupsAggregator *)selfCopy refreshAggregateData];
    groupLocalDataStorage2 = [(HMDMediaGroupsAggregator *)selfCopy groupLocalDataStorage];
    [groupLocalDataStorage2 backupData];
  }

  else
  {
    v19 = objc_autoreleasePoolPush();
    v20 = selfCopy;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier();
      v25 = 138543618;
      v26 = v22;
      v27 = 2112;
      v28 = groupIdentifierCopy;
      _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_ERROR, "%{public}@Failed to find an local group with identifier: %@", &v25, 0x16u);
    }

    objc_autoreleasePoolPop(v19);
    if (error)
    {
      *error = [MEMORY[0x277CCA9B8] hmfErrorWithCode:2];
    }
  }

  v23 = *MEMORY[0x277D85DE8];
  return v15 != 0;
}

- (void)handleIncomingParticipantData:(id)data forAccessoryUUID:(id)d
{
  dataCopy = data;
  dCopy = d;
  destinationControllerData = [dataCopy destinationControllerData];

  if (destinationControllerData)
  {
    destinationControllerData2 = [dataCopy destinationControllerData];
    [(HMDMediaGroupsAggregator *)self setDestinationControllerData:destinationControllerData2];
  }

  destination = [dataCopy destination];

  if (destination)
  {
    destination2 = [dataCopy destination];
    backedUpGroups = [dataCopy backedUpGroups];
    [(HMDMediaGroupsAggregator *)self handleParticipantDestination:destination2 backedUpGroups:backedUpGroups forParticipantAccessoryUUID:dCopy];
  }

  [(HMDMediaGroupsAggregator *)self refreshAggregateData];
}

- (void)handleParticipantDataEvent:(id)event accessoryUUID:(id)d
{
  v20 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  dCopy = d;
  v8 = [HMDMediaGroupsParticipantData alloc];
  encodedData = [eventCopy encodedData];
  v10 = [(HMDMediaGroupsParticipantData *)v8 initWithProtoBufferData:encodedData];

  if (v10)
  {
    [(HMDMediaGroupsAggregator *)self handleIncomingParticipantData:v10 forAccessoryUUID:dCopy];
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v16 = 138543618;
      v17 = v14;
      v18 = 2112;
      v19 = eventCopy;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_ERROR, "%{public}@Failed to deserialize participant event data from event: %@", &v16, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (id)participantAccessoryUUIDFromTopic:(id)topic
{
  v28 = *MEMORY[0x277D85DE8];
  topicCopy = topic;
  v5 = [MEMORY[0x277CD19F0] decodeTopic:topicCopy];
  v6 = v5;
  if (v5)
  {
    asAccessoryTopic = [v5 asAccessoryTopic];
    v8 = asAccessoryTopic;
    if (asAccessoryTopic)
    {
      accessoryEventTopicSuffixID = [asAccessoryTopic accessoryEventTopicSuffixID];
      if (accessoryEventTopicSuffixID == *MEMORY[0x277CCEA70])
      {
        accessoryUUID = [v8 accessoryUUID];
LABEL_14:

        goto LABEL_15;
      }

      v15 = objc_autoreleasePoolPush();
      selfCopy2 = self;
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
        _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_ERROR, "%{public}@Received unexpected topic id: %@ topic: %@", &v22, 0x20u);

        goto LABEL_12;
      }
    }

    else
    {
      v15 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = HMFGetLogIdentifier();
        v22 = 138543618;
        v23 = v18;
        v24 = 2112;
        v25 = v6;
        _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_ERROR, "%{public}@Failed to convert to parsed accessory topic using topic: %@", &v22, 0x16u);
LABEL_12:
      }
    }

    objc_autoreleasePoolPop(v15);
    accessoryUUID = 0;
    goto LABEL_14;
  }

  v11 = objc_autoreleasePoolPush();
  selfCopy3 = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    v14 = HMFGetLogIdentifier();
    v22 = 138543618;
    v23 = v14;
    v24 = 2112;
    v25 = topicCopy;
    _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_ERROR, "%{public}@Failed to parse topic: %@", &v22, 0x16u);
  }

  objc_autoreleasePoolPop(v11);
  accessoryUUID = 0;
LABEL_15:

  v20 = *MEMORY[0x277D85DE8];

  return accessoryUUID;
}

- (void)didReceiveEvent:(id)event topic:(id)topic
{
  v24 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  topicCopy = topic;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v18 = 138543874;
    v19 = v11;
    v20 = 2112;
    v21 = topicCopy;
    v22 = 2112;
    v23 = eventCopy;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Received topic: %@ event: %@", &v18, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  v12 = [(HMDMediaGroupsAggregator *)selfCopy participantAccessoryUUIDFromTopic:topicCopy];
  if (v12)
  {
    [(HMDMediaGroupsAggregator *)selfCopy handleParticipantDataEvent:eventCopy accessoryUUID:v12];
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    v14 = selfCopy;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      v18 = 138543618;
      v19 = v16;
      v20 = 2112;
      v21 = topicCopy;
      _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_ERROR, "%{public}@Failed to get participant accessory uuid from topic: %@", &v18, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)clearCachedData
{
  os_unfair_lock_lock_with_options();
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  destinations = self->_destinations;
  self->_destinations = dictionary;

  dictionary2 = [MEMORY[0x277CBEB38] dictionary];
  destinationControllersData = self->_destinationControllersData;
  self->_destinationControllersData = dictionary2;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)clearCachedDataForParticipantAccessoryUUID:(id)d
{
  v16 = *MEMORY[0x277D85DE8];
  dCopy = d;
  groupLocalDataStorage = [(HMDMediaGroupsAggregator *)self groupLocalDataStorage];
  [groupLocalDataStorage clearCachedDataForParticipantAccessoryUUID:dCopy];

  LOBYTE(groupLocalDataStorage) = [(HMDMediaGroupsAggregator *)self removeDestinationWithParentIdentifier:dCopy];
  v6 = [(HMDMediaGroupsAggregator *)self removeDestinationControllerDataWithParentIdentifier:dCopy];
  if ((groupLocalDataStorage & 1) != 0 || v6)
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
      v15 = dCopy;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Refreshing aggregate data due to cleared cached data for participant uuid: %@", &v12, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    [(HMDMediaGroupsAggregator *)selfCopy refreshAggregateData];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)updateDestinationWithIdentifier:(id)identifier audioGroupIdentifier:(id)groupIdentifier
{
  v20 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  groupIdentifierCopy = groupIdentifier;
  v8 = [(HMDMediaGroupsAggregator *)self destinationManagerWithIdentifier:identifierCopy];
  if (v8)
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __81__HMDMediaGroupsAggregator_updateDestinationWithIdentifier_audioGroupIdentifier___block_invoke;
    v14[3] = &unk_27868A1D8;
    v14[4] = self;
    v15 = identifierCopy;
    [v8 requestToUpdateAudioGroupIdentifier:groupIdentifierCopy completion:v14];
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543618;
      v17 = v12;
      v18 = 2112;
      v19 = identifierCopy;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_ERROR, "%{public}@Failed to update destination with identifier: %@ due to no destination manager", buf, 0x16u);
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
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_ERROR, "%{public}@Failed to update destination with identifier: %@ due to request error: %@", &v10, 0x20u);
    }

    objc_autoreleasePoolPop(v4);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)fixupGroupsForRemovedParticipantAccessoryUUID:(id)d
{
  v39 = *MEMORY[0x277D85DE8];
  dCopy = d;
  if ([(HMDMediaGroupsAggregator *)self isRunningAsPrimary])
  {
    aggregateData = [(HMDMediaGroupsAggregator *)self aggregateData];
    destinations = [aggregateData destinations];
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __74__HMDMediaGroupsAggregator_fixupGroupsForRemovedParticipantAccessoryUUID___block_invoke;
    v29[3] = &unk_278689008;
    v30 = dCopy;
    v7 = [destinations na_firstObjectPassingTest:v29];

    if (v7)
    {
      aggregateData2 = [(HMDMediaGroupsAggregator *)self aggregateData];
      groups = [aggregateData2 groups];
      v24 = MEMORY[0x277D85DD0];
      v25 = 3221225472;
      v26 = __74__HMDMediaGroupsAggregator_fixupGroupsForRemovedParticipantAccessoryUUID___block_invoke_2;
      v27 = &unk_278689080;
      v10 = v7;
      v28 = v10;
      v11 = [groups na_firstObjectPassingTest:&v24];

      if (v11)
      {
        mediaSystemData = [v11 mediaSystemData];
        v13 = mediaSystemData;
        if (mediaSystemData)
        {
          associatedGroupIdentifier = [mediaSystemData associatedGroupIdentifier];

          if (associatedGroupIdentifier)
          {
            rightDestinationIdentifier = [v13 rightDestinationIdentifier];
            uniqueIdentifier = [v10 uniqueIdentifier];
            if ([rightDestinationIdentifier hmf_isEqualToUUID:uniqueIdentifier])
            {
              [v13 leftDestinationIdentifier];
            }

            else
            {
              [v13 rightDestinationIdentifier];
            }
            v17 = ;

            v18 = objc_autoreleasePoolPush();
            selfCopy = self;
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
              _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_INFO, "%{public}@Fixing up destination: %@ on removed media system: %@ due to removed destination: %@", buf, 0x2Au);
            }

            objc_autoreleasePoolPop(v18);
            associatedGroupIdentifier2 = [v13 associatedGroupIdentifier];
            [(HMDMediaGroupsAggregator *)selfCopy updateDestinationWithIdentifier:v17 audioGroupIdentifier:associatedGroupIdentifier2];
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
  allValues = [(NSMutableDictionary *)self->_destinationControllersData allValues];
  os_unfair_lock_unlock(&self->_lock);

  return allValues;
}

- (id)groups
{
  groupLocalDataStorage = [(HMDMediaGroupsAggregator *)self groupLocalDataStorage];
  groups = [groupLocalDataStorage groups];

  return groups;
}

- (id)localGroupWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  groups = [(HMDMediaGroupsAggregator *)self groups];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __53__HMDMediaGroupsAggregator_localGroupWithIdentifier___block_invoke;
  v9[3] = &unk_278689080;
  v10 = identifierCopy;
  v6 = identifierCopy;
  v7 = [groups na_firstObjectPassingTest:v9];

  return v7;
}

uint64_t __53__HMDMediaGroupsAggregator_localGroupWithIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [v3 hmf_isEqualToUUID:*(a1 + 32)];

  return v4;
}

- (BOOL)removeDestinationControllerDataWithParentIdentifier:(id)identifier
{
  v22 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  os_unfair_lock_lock_with_options();
  allValues = [(NSMutableDictionary *)self->_destinationControllersData allValues];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __80__HMDMediaGroupsAggregator_removeDestinationControllerDataWithParentIdentifier___block_invoke;
  v16[3] = &unk_27867BC08;
  v6 = identifierCopy;
  v17 = v6;
  v7 = [allValues na_firstObjectPassingTest:v16];

  if (v7)
  {
    destinationControllersData = self->_destinationControllersData;
    identifier = [v7 identifier];
    [(NSMutableDictionary *)destinationControllersData removeObjectForKey:identifier];

    os_unfair_lock_unlock(&self->_lock);
    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543618;
      v19 = v13;
      v20 = 2112;
      v21 = v7;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@Removed destination controller data: %@", buf, 0x16u);
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

- (void)setDestinationControllerData:(id)data
{
  v16 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v12 = 138543618;
    v13 = v8;
    v14 = 2112;
    v15 = dataCopy;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Setting destination controller data: %@", &v12, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  os_unfair_lock_lock_with_options();
  destinationControllersData = selfCopy->_destinationControllersData;
  identifier = [dataCopy identifier];
  [(NSMutableDictionary *)destinationControllersData setObject:dataCopy forKey:identifier];

  os_unfair_lock_unlock(&selfCopy->_lock);
  v11 = *MEMORY[0x277D85DE8];
}

- (id)destinations
{
  os_unfair_lock_lock_with_options();
  allValues = [(NSMutableDictionary *)self->_destinations allValues];
  os_unfair_lock_unlock(&self->_lock);

  return allValues;
}

- (BOOL)removeDestinationWithParentIdentifier:(id)identifier
{
  v22 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  os_unfair_lock_lock_with_options();
  allValues = [(NSMutableDictionary *)self->_destinations allValues];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __66__HMDMediaGroupsAggregator_removeDestinationWithParentIdentifier___block_invoke;
  v16[3] = &unk_278689008;
  v6 = identifierCopy;
  v17 = v6;
  v7 = [allValues na_firstObjectPassingTest:v16];

  if (v7)
  {
    destinations = self->_destinations;
    uniqueIdentifier = [v7 uniqueIdentifier];
    [(NSMutableDictionary *)destinations removeObjectForKey:uniqueIdentifier];

    os_unfair_lock_unlock(&self->_lock);
    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543618;
      v19 = v13;
      v20 = 2112;
      v21 = v7;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@Removed destination: %@", buf, 0x16u);
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

- (void)setDestination:(id)destination
{
  v16 = *MEMORY[0x277D85DE8];
  destinationCopy = destination;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v12 = 138543618;
    v13 = v8;
    v14 = 2112;
    v15 = destinationCopy;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Setting destination: %@", &v12, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  os_unfair_lock_lock_with_options();
  destinations = selfCopy->_destinations;
  uniqueIdentifier = [destinationCopy uniqueIdentifier];
  [(NSMutableDictionary *)destinations setObject:destinationCopy forKey:uniqueIdentifier];

  os_unfair_lock_unlock(&selfCopy->_lock);
  v11 = *MEMORY[0x277D85DE8];
}

- (void)stop
{
  v11 = *MEMORY[0x277D85DE8];
  if ([(HMDMediaGroupsAggregator *)self setState:0])
  {
    v3 = objc_autoreleasePoolPush();
    selfCopy = self;
    v5 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = HMFGetLogIdentifier();
      v9 = 138543362;
      v10 = v6;
      _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Stopping destination controller aggregator", &v9, 0xCu);
    }

    objc_autoreleasePoolPop(v3);
    [(HMDMediaGroupsAggregator *)selfCopy notifyOfStoppedState];
    [(HMDMediaGroupsAggregator *)selfCopy stopWarmUpTimer];
    [(HMDMediaGroupsAggregator *)selfCopy unregisterForAllEvents];
    [(HMDMediaGroupsAggregator *)selfCopy clearCachedData];
    groupLocalDataStorage = [(HMDMediaGroupsAggregator *)selfCopy groupLocalDataStorage];
    [groupLocalDataStorage clearCachedData];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)stopWarmUpTimer
{
  warmUpTimer = [(HMDMediaGroupsAggregator *)self warmUpTimer];
  [warmUpTimer setDelegate:0];

  [(HMDMediaGroupsAggregator *)self setWarmUpTimer:0];
}

- (void)startWarmUpTimer
{
  v14 = *MEMORY[0x277D85DE8];
  if ([(HMDMediaGroupsAggregator *)self shouldWarmUp])
  {
    v3 = objc_autoreleasePoolPush();
    selfCopy = self;
    v5 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = HMFGetLogIdentifier();
      v12 = 138543362;
      v13 = v6;
      _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Starting warmup timer", &v12, 0xCu);
    }

    objc_autoreleasePoolPop(v3);
    timerProvider = [(HMDMediaGroupsAggregator *)selfCopy timerProvider];
    v8 = [timerProvider timerWithTimeInterval:2 options:60.0];
    [(HMDMediaGroupsAggregator *)selfCopy setWarmUpTimer:v8];

    warmUpTimer = [(HMDMediaGroupsAggregator *)selfCopy warmUpTimer];
    [warmUpTimer setDelegate:selfCopy];

    warmUpTimer2 = [(HMDMediaGroupsAggregator *)selfCopy warmUpTimer];
    [warmUpTimer2 resume];
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

- (BOOL)setState:(unint64_t)state previousState:(unint64_t *)previousState
{
  v21 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock_with_options();
  state = self->_state;
  if (state == state)
  {
    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    if (previousState)
    {
      *previousState = state;
    }

    self->_state = state;
    os_unfair_lock_unlock(&self->_lock);
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      if (state)
      {
        if (state == 1)
        {
          v12 = @"HMDMediaGroupsAggregatorRunningAsPrimaryState";
        }

        else
        {
          v13 = MEMORY[0x277CCACA8];
          v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:state];
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
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Updated state: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
  }

  result = state != state;
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

- (id)destinationManagerWithIdentifier:(id)identifier
{
  v18 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  dataSource = [(HMDMediaGroupsAggregator *)self dataSource];
  v6 = dataSource;
  if (dataSource)
  {
    v7 = [dataSource destinationManagerWithIdentifier:identifierCopy mediaGroupsAggregator:self];
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
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to get destination manager with identifier: %@ due to no data source", &v14, 0x16u);
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
  dataSource = [(HMDMediaGroupsAggregator *)self dataSource];
  v4 = dataSource;
  if (dataSource)
  {
    v5 = [dataSource appleMediaAccessoriesForMediaGroupsAggregator:self];
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
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_ERROR, "%{public}@Failed to get apple media accessories due to no data source", &v12, 0xCu);
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
  dataSource = [(HMDMediaGroupsAggregator *)self dataSource];
  v4 = dataSource;
  if (dataSource)
  {
    v5 = [dataSource eventSourceForMediaGroupsAggregator:self];
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
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_ERROR, "%{public}@Failed to get event source due to no data source", &v12, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    v5 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)participantDataTopicForAccessory:(id)accessory
{
  v16 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  dataSource = [(HMDMediaGroupsAggregator *)self dataSource];
  v6 = dataSource;
  if (dataSource)
  {
    v7 = [dataSource participantDataTopicForAccessory:accessoryCopy mediaGroupsAggregator:self];
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
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to get destination topic due to no data source", &v14, 0xCu);
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
  dataSource = [(HMDMediaGroupsAggregator *)self dataSource];
  v4 = dataSource;
  if (dataSource)
  {
    v5 = [dataSource aggregateDataTopicForMediaGroupsAggregator:self];
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
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_ERROR, "%{public}@Failed to get aggregated data topic due to no data source", &v12, 0xCu);
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
  aggregateDataTopic = [(HMDMediaGroupsAggregator *)self aggregateDataTopic];
  if (aggregateDataTopic)
  {
    eventStoreReadHandle = [(HMDMediaGroupsAggregator *)self eventStoreReadHandle];
    v5 = [eventStoreReadHandle lastEventForTopic:aggregateDataTopic];

    if (v5)
    {
      v6 = [HMDMediaGroupsAggregateData alloc];
      encodedData = [v5 encodedData];
      v8 = [(HMDMediaGroupsAggregateData *)v6 initWithProtoBufferData:encodedData];

      if (v8)
      {
        destinations = [(HMDMediaGroupsAggregateData *)v8 destinations];
        if ([destinations count])
        {
          v10 = 1;
        }

        else
        {
          destinationControllersData = [(HMDMediaGroupsAggregateData *)v8 destinationControllersData];
          v10 = [destinationControllersData count] != 0;
        }
      }

      else
      {
        v15 = objc_autoreleasePoolPush();
        selfCopy = self;
        v17 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          v18 = HMFGetLogIdentifier();
          encodedData2 = [v5 encodedData];
          v23 = 138543874;
          v24 = v18;
          v25 = 2112;
          v26 = encodedData2;
          v27 = 2112;
          v28 = v5;
          _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_ERROR, "%{public}@Failed to decode last cached event participant data: %@ from event: %@", &v23, 0x20u);
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
    selfCopy2 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v23 = 138543362;
      v24 = v14;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_ERROR, "%{public}@Failed to get last cached event participant data due to missing topic name", &v23, 0xCu);
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
  warmUpTimer = [(HMDMediaGroupsAggregator *)self warmUpTimer];

  if (!warmUpTimer)
  {
    aggregateDataTopic = [(HMDMediaGroupsAggregator *)self aggregateDataTopic];
    if (aggregateDataTopic)
    {
      eventSource = [(HMDMediaGroupsAggregator *)self eventSource];
      if (eventSource)
      {
        aggregateData = [(HMDMediaGroupsAggregator *)self aggregateData];
        v7 = objc_autoreleasePoolPush();
        selfCopy = self;
        v9 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          v10 = HMFGetLogIdentifier();
          *buf = 138543874;
          v28 = v10;
          v29 = 2112;
          v30 = aggregateDataTopic;
          v31 = 2112;
          v32 = aggregateData;
          _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Publishing topic: %@ data: %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v7);
        v11 = objc_alloc(MEMORY[0x277D174B0]);
        [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
        v12 = [v11 initWithSource:eventSource cachePolicy:2 combineType:2 timestamp:?];
        v13 = objc_alloc(MEMORY[0x277D174A0]);
        encodeToProtoBufferData = [aggregateData encodeToProtoBufferData];
        v15 = [v13 initWithEventData:encodeToProtoBufferData metadata:v12];

        eventForwarder = [(HMDMediaGroupsAggregator *)selfCopy eventForwarder];
        v26[0] = MEMORY[0x277D85DD0];
        v26[1] = 3221225472;
        v26[2] = __48__HMDMediaGroupsAggregator_forwardAggregateData__block_invoke;
        v26[3] = &unk_27868A250;
        v26[4] = selfCopy;
        [eventForwarder forwardEvent:v15 topic:aggregateDataTopic completion:v26];
      }

      else
      {
        v21 = objc_autoreleasePoolPush();
        selfCopy2 = self;
        v23 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          v24 = HMFGetLogIdentifier();
          *buf = 138543362;
          v28 = v24;
          _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_ERROR, "%{public}@Failed to get event source to forward data", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v21);
      }
    }

    else
    {
      v17 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = HMFGetLogIdentifier();
        *buf = 138543362;
        v28 = v20;
        _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_ERROR, "%{public}@Failed to get topic name to forward data", buf, 0xCu);
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
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_ERROR, "%{public}@Forwarding event resulted in error: %@", &v9, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)notifyOfStoppedState
{
  v12 = *MEMORY[0x277D85DE8];
  delegate = [(HMDMediaGroupsAggregator *)self delegate];
  v4 = delegate;
  if (delegate)
  {
    [delegate didStopMediaGroupsAggregator:self];
  }

  else
  {
    v5 = objc_autoreleasePoolPush();
    selfCopy = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      v10 = 138543362;
      v11 = v8;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Failed to notify of stopped state due to no delegate", &v10, 0xCu);
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
    destinations = [(HMDMediaGroupsAggregator *)self destinations];
    destinationControllersData = [(HMDMediaGroupsAggregator *)self destinationControllersData];
    groups = [(HMDMediaGroupsAggregator *)self groups];
    v7 = [(HMDMediaGroupsAggregateData *)v3 initWithDestinations:destinations destinationControllersData:destinationControllersData groups:groups];

    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    generators = [(HMDMediaGroupsAggregator *)self generators];
    v9 = [generators countByEnumeratingWithState:&v29 objects:v37 count:16];
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
            objc_enumerationMutation(generators);
          }

          v14 = *(*(&v29 + 1) + 8 * v12);
          destinations2 = [(HMDMediaGroupsAggregateData *)v13 destinations];
          destinationControllersData2 = [(HMDMediaGroupsAggregateData *)v13 destinationControllersData];
          groups2 = [(HMDMediaGroupsAggregateData *)v13 groups];
          v7 = [v14 aggregateDataWithDestinations:destinations2 controllers:destinationControllersData2 groups:groups2];

          ++v12;
          v13 = v7;
        }

        while (v10 != v12);
        v10 = [generators countByEnumeratingWithState:&v29 objects:v37 count:16];
      }

      while (v10);
    }

    aggregateData = [(HMDMediaGroupsAggregator *)self aggregateData];
    v19 = [aggregateData isEqual:v7];

    if (v19)
    {
      v20 = objc_autoreleasePoolPush();
      selfCopy = self;
      v22 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v23 = HMFGetLogIdentifier();
        *buf = 138543618;
        v34 = v23;
        v35 = 2112;
        v36 = v7;
        _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_INFO, "%{public}@Refresh resulted in no change to aggregate data: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v20);
    }

    else
    {
      [(HMDMediaGroupsAggregator *)self setAggregateData:v7];
      v24 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v26 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        v27 = HMFGetLogIdentifier();
        *buf = 138543618;
        v34 = v27;
        v35 = 2112;
        v36 = v7;
        _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_INFO, "%{public}@Updated aggregate data: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v24);
      [(HMDMediaGroupsAggregator *)selfCopy2 notifyOfUpdatedMediaGroupsAggregateData:v7];
      [(HMDMediaGroupsAggregator *)selfCopy2 forwardAggregateData];
    }
  }

  v28 = *MEMORY[0x277D85DE8];
}

- (void)unregisterForEventsForAccessory:(id)accessory
{
  v22 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  if ([(HMDMediaGroupsAggregator *)self isRunningAsPrimary])
  {
    v5 = [(HMDMediaGroupsAggregator *)self participantDataTopicForAccessory:accessoryCopy];
    if (v5)
    {
      v6 = objc_autoreleasePoolPush();
      selfCopy = self;
      v8 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = HMFGetLogIdentifier();
        *buf = 138543874;
        v17 = v9;
        v18 = 2112;
        v19 = v5;
        v20 = 2112;
        v21 = accessoryCopy;
        _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Unregistering destination topic: %@ for accessory: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v6);
      subscriptionProvider = [(HMDMediaGroupsAggregator *)selfCopy subscriptionProvider];
      v15 = v5;
      v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v15 count:1];
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __60__HMDMediaGroupsAggregator_unregisterForEventsForAccessory___block_invoke;
      v13[3] = &unk_27868A1D8;
      v13[4] = selfCopy;
      v14 = v5;
      [subscriptionProvider unregisterConsumer:selfCopy topicFilters:v11 completion:v13];
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
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_ERROR, "%{public}@Unregister for destination topic: %@ resulted in error: %@", &v10, 0x20u);
    }

    objc_autoreleasePoolPop(v4);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)unregisterForAllEvents
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    *buf = 138543362;
    v11 = v6;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Unregister for all events", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  subscriptionProvider = [(HMDMediaGroupsAggregator *)selfCopy subscriptionProvider];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __50__HMDMediaGroupsAggregator_unregisterForAllEvents__block_invoke;
  v9[3] = &unk_27868A250;
  v9[4] = selfCopy;
  [subscriptionProvider unregisterConsumer:selfCopy completion:v9];

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
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_ERROR, "%{public}@Unregistering for all events returned with error: %@", &v9, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)registerForEventsForAccessory:(id)accessory
{
  v22 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  if ([(HMDMediaGroupsAggregator *)self isRunningAsPrimary])
  {
    v5 = [(HMDMediaGroupsAggregator *)self participantDataTopicForAccessory:accessoryCopy];
    if (v5)
    {
      v6 = objc_autoreleasePoolPush();
      selfCopy = self;
      v8 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = HMFGetLogIdentifier();
        *buf = 138543874;
        v17 = v9;
        v18 = 2112;
        v19 = v5;
        v20 = 2112;
        v21 = accessoryCopy;
        _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Registering participant data topic: %@ for accessory: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v6);
      subscriptionProvider = [(HMDMediaGroupsAggregator *)selfCopy subscriptionProvider];
      v15 = v5;
      v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v15 count:1];
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __58__HMDMediaGroupsAggregator_registerForEventsForAccessory___block_invoke;
      v13[3] = &unk_27867DBA0;
      v13[4] = selfCopy;
      v14 = v5;
      [subscriptionProvider registerConsumer:selfCopy topicFilters:v11 completion:v13];
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
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_ERROR, "%{public}@Register for destination topic: %@ resulted in error: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
  }

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __58__HMDMediaGroupsAggregator_registerForEventsForAccessory___block_invoke_40;
  v13[3] = &unk_278688EF8;
  v13[4] = *(a1 + 32);
  [v5 hmf_enumerateKeysAndObjectsWithAutoreleasePoolUsingBlock:v13];

  v12 = *MEMORY[0x277D85DE8];
}

- (void)registerForEvents
{
  v13 = *MEMORY[0x277D85DE8];
  appleMediaAccessories = [(HMDMediaGroupsAggregator *)self appleMediaAccessories];
  v4 = appleMediaAccessories;
  if (appleMediaAccessories)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __45__HMDMediaGroupsAggregator_registerForEvents__block_invoke;
    v10[3] = &unk_27867BBE0;
    v10[4] = self;
    [appleMediaAccessories na_each:v10];
  }

  else
  {
    v5 = objc_autoreleasePoolPush();
    selfCopy = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      *buf = 138543362;
      v12 = v8;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_ERROR, "%{public}@Failed to register for events due to no accessories", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)handleAccessoryChangedRoomNotification:(id)notification
{
  v12 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  if ([(HMDMediaGroupsAggregator *)self isRunning])
  {
    v5 = objc_autoreleasePoolPush();
    selfCopy = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      v10 = 138543362;
      v11 = v8;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Refreshing aggregate data due to change room notification", &v10, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
    [(HMDMediaGroupsAggregator *)selfCopy refreshAggregateData];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)handlePrimaryResidentDeviceChangeNotification:(id)notification
{
  v17 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  object = [notificationCopy object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = object;
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
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v13 = 138543618;
      v14 = v11;
      v15 = 2112;
      v16 = notificationCopy;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to get primary resident change monitor from notification: %@", &v13, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)handleMediaSystemAddedNotification:(id)notification
{
  v12 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  if ([(HMDMediaGroupsAggregator *)self isRunning])
  {
    v5 = objc_autoreleasePoolPush();
    selfCopy = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      v10 = 138543362;
      v11 = v8;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Refreshing aggregate data due to added media system notification", &v10, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
    [(HMDMediaGroupsAggregator *)selfCopy refreshAggregateData];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)handleHomeRemovedAccessoryNotification:(id)notification
{
  v22 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  userInfo = [notificationCopy userInfo];
  v6 = [userInfo objectForKey:@"HMDAccessoryNotificationKey"];

  if (v6)
  {
    uuid = [v6 uuid];
    [(HMDMediaGroupsAggregator *)self fixupGroupsForRemovedParticipantAccessoryUUID:uuid];

    uuid2 = [v6 uuid];
    [(HMDMediaGroupsAggregator *)self clearCachedDataForParticipantAccessoryUUID:uuid2];

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
    selfCopy = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      v18 = 138543618;
      v19 = v16;
      v20 = 2112;
      v21 = notificationCopy;
      _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_ERROR, "%{public}@Failed to get removed accessory from notification: %@", &v18, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)handleHomeAddedAccessoryNotification:(id)notification
{
  v20 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  userInfo = [notificationCopy userInfo];
  v6 = [userInfo objectForKey:@"HMDNotificationAddedAccessoryKey"];

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
    selfCopy = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v16 = 138543618;
      v17 = v14;
      v18 = 2112;
      v19 = notificationCopy;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_ERROR, "%{public}@Failed to get added accessory from notification: %@", &v16, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)refreshRunningStateUsingPrimaryResidentChangeMonitor:(id)monitor
{
  if ([monitor isCurrentDevicePrimaryResident])
  {

    [(HMDMediaGroupsAggregator *)self runAsPrimary];
  }

  else
  {

    [(HMDMediaGroupsAggregator *)self stop];
  }
}

- (void)registerForNotificationsWithHome:(id)home notificationCenter:(id)center primaryResidentChangeMonitor:(id)monitor
{
  monitorCopy = monitor;
  centerCopy = center;
  homeCopy = home;
  [centerCopy addObserver:self selector:sel_handleHomeAddedAccessoryNotification_ name:@"HMDNotificationHomeAddedAccessory" object:homeCopy];
  [centerCopy addObserver:self selector:sel_handleHomeRemovedAccessoryNotification_ name:@"HMDHomeAccessoryRemovedNotification" object:homeCopy];
  [centerCopy addObserver:self selector:sel_handleMediaSystemAddedNotification_ name:@"HMDMediaSystemAddedNotification" object:homeCopy];

  [centerCopy addObserver:self selector:sel_handlePrimaryResidentDeviceChangeNotification_ name:@"HMDPrimaryResidentChangeMonitorIsCurrentDeviceChangeNotification" object:monitorCopy];
  [centerCopy addObserver:self selector:sel_handlePrimaryResidentDeviceChangeNotification_ name:@"HMDPrimaryResidentChangeMonitorHasResidentDevicesChangeNotification" object:monitorCopy];

  [centerCopy addObserver:self selector:sel_handleAccessoryChangedRoomNotification_ name:@"HMDNotificationAccessoryChangedRoom" object:0];
}

- (void)configureWithHome:(id)home messageDispatcher:(id)dispatcher notificationCenter:(id)center primaryResidentChangeMonitor:(id)monitor
{
  v22 = *MEMORY[0x277D85DE8];
  homeCopy = home;
  dispatcherCopy = dispatcher;
  centerCopy = center;
  monitorCopy = monitor;
  v14 = objc_autoreleasePoolPush();
  selfCopy = self;
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = HMFGetLogIdentifier();
    v20 = 138543362;
    v21 = v17;
    _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@Configuring media groups aggregator", &v20, 0xCu);
  }

  objc_autoreleasePoolPop(v14);
  [(HMDMediaGroupsAggregator *)selfCopy registerForNotificationsWithHome:homeCopy notificationCenter:centerCopy primaryResidentChangeMonitor:monitorCopy];
  [(HMDMediaGroupsAggregator *)selfCopy refreshRunningStateUsingPrimaryResidentChangeMonitor:monitorCopy];
  messenger = [(HMDMediaGroupsAggregator *)selfCopy messenger];
  [messenger configureWithMessageDispatcher:dispatcherCopy home:homeCopy];

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

- (HMDMediaGroupsAggregator)initWithIdentifier:(id)identifier messenger:(id)messenger eventForwarder:(id)forwarder subscriptionProvider:(id)provider eventStoreReadHandle:(id)handle groupsLocalDataStorage:(id)storage timerProvider:(id)timerProvider featuresDataSource:(id)self0
{
  identifierCopy = identifier;
  obj = messenger;
  messengerCopy = messenger;
  forwarderCopy = forwarder;
  forwarderCopy2 = forwarder;
  providerCopy = provider;
  handleCopy = handle;
  storageCopy = storage;
  timerProviderCopy = timerProvider;
  sourceCopy = source;
  if (!identifierCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_13;
  }

  if (!messengerCopy)
  {
LABEL_13:
    _HMFPreconditionFailure();
    goto LABEL_14;
  }

  if (!forwarderCopy2)
  {
LABEL_14:
    _HMFPreconditionFailure();
    goto LABEL_15;
  }

  if (!providerCopy)
  {
LABEL_15:
    _HMFPreconditionFailure();
    goto LABEL_16;
  }

  if (!storageCopy)
  {
LABEL_16:
    _HMFPreconditionFailure();
    goto LABEL_17;
  }

  if (!handleCopy)
  {
LABEL_17:
    _HMFPreconditionFailure();
    goto LABEL_18;
  }

  if (!timerProviderCopy)
  {
LABEL_18:
    _HMFPreconditionFailure();
    goto LABEL_19;
  }

  if (!sourceCopy)
  {
LABEL_19:
    v35 = _HMFPreconditionFailure();
    return [(HMDMediaGroupsAggregator *)v35 initWithIdentifier:v36 messenger:v37 eventForwarder:v38 subscriptionProvider:v39 eventStoreReadHandle:v40 groupsLocalDataStorage:v41, v42];
  }

  v45 = sourceCopy;
  v49.receiver = self;
  v49.super_class = HMDMediaGroupsAggregator;
  v22 = [(HMDMediaGroupsAggregator *)&v49 init];
  v23 = v22;
  if (v22)
  {
    v22->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v22->_featuresDataSource, source);
    objc_storeStrong(&v23->_identifier, identifier);
    v23->_state = 0;
    warmUpTimer = v23->_warmUpTimer;
    v23->_warmUpTimer = 0;

    objc_storeWeak(&v23->_timerProvider, timerProviderCopy);
    objc_storeStrong(&v23->_messenger, obj);
    objc_storeStrong(&v23->_eventForwarder, forwarderCopy);
    objc_storeStrong(&v23->_subscriptionProvider, provider);
    objc_storeStrong(&v23->_groupLocalDataStorage, storage);
    objc_storeStrong(&v23->_eventStoreReadHandle, handle);
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    destinations = v23->_destinations;
    v23->_destinations = dictionary;

    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    destinationControllersData = v23->_destinationControllersData;
    v23->_destinationControllersData = dictionary2;

    v29 = [HMDMediaGroupsAggregateData alloc];
    v30 = [(HMDMediaGroupsAggregateData *)v29 initWithDestinations:MEMORY[0x277CBEBF8] destinationControllersData:MEMORY[0x277CBEBF8]];
    aggregateData = v23->_aggregateData;
    v23->_aggregateData = v30;

    createGenerators = [(HMDMediaGroupsAggregator *)v23 createGenerators];
    generators = v23->_generators;
    v23->_generators = createGenerators;
  }

  return v23;
}

- (HMDMediaGroupsAggregator)initWithIdentifier:(id)identifier messenger:(id)messenger eventForwarder:(id)forwarder subscriptionProvider:(id)provider eventStoreReadHandle:(id)handle groupsLocalDataStorage:(id)storage
{
  storageCopy = storage;
  handleCopy = handle;
  providerCopy = provider;
  forwarderCopy = forwarder;
  messengerCopy = messenger;
  identifierCopy = identifier;
  v20 = objc_alloc_init(HMDFeaturesDataSource);
  v21 = [(HMDMediaGroupsAggregator *)self initWithIdentifier:identifierCopy messenger:messengerCopy eventForwarder:forwarderCopy subscriptionProvider:providerCopy eventStoreReadHandle:handleCopy groupsLocalDataStorage:storageCopy timerProvider:self featuresDataSource:v20];

  return v21;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t68_155950 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t68_155950, &__block_literal_global_155951);
  }

  v3 = logCategory__hmf_once_v69_155952;

  return v3;
}

void __39__HMDMediaGroupsAggregator_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v69_155952;
  logCategory__hmf_once_v69_155952 = v1;
}

@end