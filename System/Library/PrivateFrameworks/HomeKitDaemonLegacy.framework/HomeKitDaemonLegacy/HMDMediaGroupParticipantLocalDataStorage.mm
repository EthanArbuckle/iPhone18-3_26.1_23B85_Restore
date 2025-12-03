@interface HMDMediaGroupParticipantLocalDataStorage
+ (id)logCategory;
- (BOOL)hasDataToPublishInParticipantData:(id)data;
- (HMDMediaGroupParticipantLocalDataStorage)initWithIdentifier:(id)identifier backUpReciever:(id)reciever userDefaults:(id)defaults eventForwarder:(id)forwarder eventStoreReadHandle:(id)handle;
- (HMDMediaGroupParticipantLocalDataStorage)initWithIdentifier:(id)identifier backUpReciever:(id)reciever userDefaults:(id)defaults eventForwarder:(id)forwarder eventStoreReadHandle:(id)handle featuresDataSource:(id)source;
- (HMDMediaGroupParticipantLocalDataStorageDataSource)dataSource;
- (HMDMediaGroupParticipantLocalDataStorageDelegate)delegate;
- (HMMediaDestination)destination;
- (HMMediaDestinationControllerData)destinationControllerData;
- (id)createDefaultParticipantData;
- (id)eventSource;
- (id)lastCachedEventParticipantData;
- (id)logIdentifier;
- (id)migratedParticipantData:(id)data withDestinationSupportOptions:(unint64_t)options;
- (id)participantData;
- (id)protoParticipantData;
- (id)topicName;
- (void)configureWithHome:(id)home messageDispatcher:(id)dispatcher;
- (void)migrateWithExpectedDestinationControllerSupportOptions:(unint64_t)options;
- (void)migrateWithExpectedDestinationSupportOptions:(unint64_t)options;
- (void)notifyDidChangeDestinationIdentifier:(id)identifier forDestinationControllerIdentifier:(id)controllerIdentifier;
- (void)publishCachedObject;
- (void)publishCachedObjectIfNeeded;
- (void)updateAudioGroupIdentifier:(id)identifier;
- (void)updateBackupGroupData:(id)data;
- (void)updateDestinationControllerAvailableDestinationIdentifiers:(id)identifiers;
- (void)updateDestinationControllerData:(id)data;
- (void)updateDestinationControllerDestinationIdentifier:(id)identifier;
- (void)updateDestinationControllerSupportedOptions:(unint64_t)options;
- (void)updateDestinationSupportOptions:(unint64_t)options;
- (void)updateMediaDestination:(id)destination;
- (void)updateParticipantData:(id)data;
@end

@implementation HMDMediaGroupParticipantLocalDataStorage

- (HMDMediaGroupParticipantLocalDataStorageDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (HMDMediaGroupParticipantLocalDataStorageDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (id)logIdentifier
{
  identifier = [(HMDMediaGroupParticipantLocalDataStorage *)self identifier];
  uUIDString = [identifier UUIDString];

  return uUIDString;
}

- (void)updateBackupGroupData:(id)data
{
  v31 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(dataCopy, "count")}];
    v27 = 138543618;
    v28 = v8;
    v29 = 2112;
    v30 = v9;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Update backup groups: count(%@)", &v27, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  logger = selfCopy->_logger;
  if (os_signpost_enabled(logger))
  {
    LOWORD(v27) = 0;
    _os_signpost_emit_with_name_impl(&dword_2531F8000, logger, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "MediaGroupsParticipantUpdateBackupGroup", "", &v27, 2u);
  }

  participantData = [(HMDMediaGroupParticipantLocalDataStorage *)selfCopy participantData];
  backedUpGroups = [participantData backedUpGroups];
  v13 = [backedUpGroups count];
  if (v13 != [dataCopy count])
  {

    goto LABEL_11;
  }

  v14 = MEMORY[0x277CBEB98];
  backedUpGroups2 = [participantData backedUpGroups];
  v16 = [v14 setWithArray:backedUpGroups2];
  v17 = [MEMORY[0x277CBEB98] setWithArray:dataCopy];
  v18 = [v16 isEqual:v17];

  if (!v18)
  {
LABEL_11:
    v24 = [participantData mutableCopy];
    v25 = [dataCopy mutableCopy];
    [v24 setBackedUpGroups:v25];

    [(HMDMediaGroupParticipantLocalDataStorage *)selfCopy updateParticipantData:v24];
    goto LABEL_12;
  }

  v19 = objc_autoreleasePoolPush();
  v20 = selfCopy;
  v21 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    v22 = HMFGetLogIdentifier();
    v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(dataCopy, "count")}];
    v27 = 138543618;
    v28 = v22;
    v29 = 2112;
    v30 = v23;
    _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_INFO, "%{public}@Skipping backup groups update due to no change to values: count(%@)", &v27, 0x16u);
  }

  objc_autoreleasePoolPop(v19);
LABEL_12:

  v26 = *MEMORY[0x277D85DE8];
}

- (void)updateDestinationSupportOptions:(unint64_t)options
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = HMMediaDestinationSupportOptionsAsString();
    v20 = 138543618;
    v21 = v8;
    v22 = 2112;
    v23 = v9;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Updating destination support options: %@", &v20, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  participantData = [(HMDMediaGroupParticipantLocalDataStorage *)selfCopy participantData];
  destination = [participantData destination];

  if (destination)
  {
    destination2 = [participantData destination];
    v13 = [destination2 mutableCopy];

    [v13 setSupportedOptions:options];
    [(HMDMediaGroupParticipantLocalDataStorage *)selfCopy updateMediaDestination:v13];
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    v15 = selfCopy;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      v18 = HMMediaDestinationSupportOptionsAsString();
      v20 = 138543618;
      v21 = v17;
      v22 = 2112;
      v23 = v18;
      _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_ERROR, "%{public}@Failed to update destination support options: %@ due to no destination data", &v20, 0x16u);
    }

    objc_autoreleasePoolPop(v14);
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)updateAudioGroupIdentifier:(id)identifier
{
  v22 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v18 = 138543618;
    v19 = v8;
    v20 = 2112;
    v21 = identifierCopy;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Updating audio group identifier: %@", &v18, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  participantData = [(HMDMediaGroupParticipantLocalDataStorage *)selfCopy participantData];
  destination = [participantData destination];

  if (destination)
  {
    destination2 = [participantData destination];
    v12 = [destination2 mutableCopy];

    [v12 setAudioGroupIdentifier:identifierCopy];
    [(HMDMediaGroupParticipantLocalDataStorage *)selfCopy updateMediaDestination:v12];
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
      v21 = identifierCopy;
      _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_ERROR, "%{public}@Failed to update audio group identifier: %@ due to no destination data", &v18, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)updateMediaDestination:(id)destination
{
  v23 = *MEMORY[0x277D85DE8];
  destinationCopy = destination;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v19 = 138543618;
    v20 = v8;
    v21 = 2112;
    v22 = destinationCopy;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Updating media destination: %@", &v19, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  logger = selfCopy->_logger;
  if (os_signpost_enabled(logger))
  {
    LOWORD(v19) = 0;
    _os_signpost_emit_with_name_impl(&dword_2531F8000, logger, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "MediaGroupsParticipantUpdateDestination", "", &v19, 2u);
  }

  participantData = [(HMDMediaGroupParticipantLocalDataStorage *)selfCopy participantData];
  destination = [participantData destination];
  v12 = HMFEqualObjects();

  if (v12)
  {
    v13 = objc_autoreleasePoolPush();
    v14 = selfCopy;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      v19 = 138543618;
      v20 = v16;
      v21 = 2112;
      v22 = destinationCopy;
      _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@Skipping destination update due to no changed in value: %@", &v19, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
  }

  else
  {
    v17 = [participantData mutableCopy];
    [v17 setDestination:destinationCopy];
    [(HMDMediaGroupParticipantLocalDataStorage *)selfCopy updateParticipantData:v17];
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)updateDestinationControllerAvailableDestinationIdentifiers:(id)identifiers
{
  v22 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v18 = 138543618;
    v19 = v8;
    v20 = 2112;
    v21 = identifiersCopy;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Updating destination controller available destination identifiers: %@", &v18, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  participantData = [(HMDMediaGroupParticipantLocalDataStorage *)selfCopy participantData];
  destinationControllerData = [participantData destinationControllerData];

  if (destinationControllerData)
  {
    destinationControllerData2 = [participantData destinationControllerData];
    v12 = [destinationControllerData2 mutableCopy];

    [v12 setAvailableDestinationIdentifiers:identifiersCopy];
    [(HMDMediaGroupParticipantLocalDataStorage *)selfCopy updateDestinationControllerData:v12];
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
      v21 = identifiersCopy;
      _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_ERROR, "%{public}@Failed to update destination controller available destination identifiers: %@ due to no controller data", &v18, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)updateDestinationControllerSupportedOptions:(unint64_t)options
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = HMMediaDestinationControllerSupportOptionsAsString();
    v20 = 138543618;
    v21 = v8;
    v22 = 2112;
    v23 = v9;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Updating destination controller supported options: %@", &v20, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  participantData = [(HMDMediaGroupParticipantLocalDataStorage *)selfCopy participantData];
  destinationControllerData = [participantData destinationControllerData];

  if (destinationControllerData)
  {
    destinationControllerData2 = [participantData destinationControllerData];
    v13 = [destinationControllerData2 mutableCopy];

    [v13 setSupportedOptions:options];
    [(HMDMediaGroupParticipantLocalDataStorage *)selfCopy updateDestinationControllerData:v13];
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    v15 = selfCopy;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      v18 = HMMediaDestinationControllerSupportOptionsAsString();
      v20 = 138543618;
      v21 = v17;
      v22 = 2112;
      v23 = v18;
      _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_ERROR, "%{public}@Failed to update destination controller supported options: %@ due to no controller data", &v20, 0x16u);
    }

    objc_autoreleasePoolPop(v14);
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)notifyDidChangeDestinationIdentifier:(id)identifier forDestinationControllerIdentifier:(id)controllerIdentifier
{
  v17 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  controllerIdentifierCopy = controllerIdentifier;
  delegate = [(HMDMediaGroupParticipantLocalDataStorage *)self delegate];
  v9 = delegate;
  if (delegate)
  {
    [delegate mediaGroupParticipantLocalDataStorage:self didChangeDestinationIdentifier:identifierCopy forDestinationControllerIdentifier:controllerIdentifierCopy];
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      v15 = 138543362;
      v16 = v13;
      _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_ERROR, "%{public}@Failed to notify of updated destination identifier due to missing delegate", &v15, 0xCu);
    }

    objc_autoreleasePoolPop(v10);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)updateDestinationControllerDestinationIdentifier:(id)identifier
{
  v23 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v19 = 138543618;
    v20 = v8;
    v21 = 2112;
    v22 = identifierCopy;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Updating destinaiton controller destination identifier: %@", &v19, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  participantData = [(HMDMediaGroupParticipantLocalDataStorage *)selfCopy participantData];
  destinationControllerData = [participantData destinationControllerData];

  if (destinationControllerData)
  {
    destinationControllerData2 = [participantData destinationControllerData];
    v12 = [destinationControllerData2 mutableCopy];

    [v12 setDestinationIdentifier:identifierCopy];
    [(HMDMediaGroupParticipantLocalDataStorage *)selfCopy updateDestinationControllerData:v12];
    identifier = [v12 identifier];
    [(HMDMediaGroupParticipantLocalDataStorage *)selfCopy notifyDidChangeDestinationIdentifier:identifierCopy forDestinationControllerIdentifier:identifier];
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    v15 = selfCopy;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      v19 = 138543618;
      v20 = v17;
      v21 = 2112;
      v22 = identifierCopy;
      _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_ERROR, "%{public}@Failed to update destination controller destination identifier: %@ due to no controller data", &v19, 0x16u);
    }

    objc_autoreleasePoolPop(v14);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)updateDestinationControllerData:(id)data
{
  v23 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v19 = 138543618;
    v20 = v8;
    v21 = 2112;
    v22 = dataCopy;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Updating DestinationControllerData: %@", &v19, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  logger = selfCopy->_logger;
  if (os_signpost_enabled(logger))
  {
    LOWORD(v19) = 0;
    _os_signpost_emit_with_name_impl(&dword_2531F8000, logger, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "MediaGroupsParticipantUpdateDestinationController", "", &v19, 2u);
  }

  participantData = [(HMDMediaGroupParticipantLocalDataStorage *)selfCopy participantData];
  destinationControllerData = [participantData destinationControllerData];
  v12 = HMFEqualObjects();

  if (v12)
  {
    v13 = objc_autoreleasePoolPush();
    v14 = selfCopy;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      v19 = 138543618;
      v20 = v16;
      v21 = 2112;
      v22 = dataCopy;
      _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@Skipping update destination controller due to no change to value: %@", &v19, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
  }

  else
  {
    v17 = [participantData mutableCopy];
    [v17 setDestinationControllerData:dataCopy];
    [(HMDMediaGroupParticipantLocalDataStorage *)selfCopy updateParticipantData:v17];
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)updateParticipantData:(id)data
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
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Updating participant data: %@", &v12, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  userDefaults = [(HMDMediaGroupParticipantLocalDataStorage *)selfCopy userDefaults];
  encodeToProtoBufferData = [dataCopy encodeToProtoBufferData];
  [userDefaults setObject:encodeToProtoBufferData forKey:@"HMDMediaDestinationControllerLocalDataStorageHandlerObjectDataKey"];

  [(HMDMediaGroupParticipantLocalDataStorage *)selfCopy publishCachedObject];
  v11 = *MEMORY[0x277D85DE8];
}

- (id)eventSource
{
  v14 = *MEMORY[0x277D85DE8];
  dataSource = [(HMDMediaGroupParticipantLocalDataStorage *)self dataSource];
  v4 = dataSource;
  if (dataSource)
  {
    v5 = [dataSource eventSourceForMediaGroupParticipantDataLocalStorage:self];
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
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_ERROR, "%{public}@Failed to get event source due to no data source", &v12, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    v5 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)topicName
{
  v14 = *MEMORY[0x277D85DE8];
  dataSource = [(HMDMediaGroupParticipantLocalDataStorage *)self dataSource];
  v4 = dataSource;
  if (dataSource)
  {
    v5 = [dataSource topicNameForMediaGroupParticipantDataLocalStorage:self];
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
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_ERROR, "%{public}@Failed to get topic name due to no data source", &v12, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    v5 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];

  return v5;
}

- (void)publishCachedObject
{
  v30 = *MEMORY[0x277D85DE8];
  participantData = [(HMDMediaGroupParticipantLocalDataStorage *)self participantData];
  if ([(HMDMediaGroupParticipantLocalDataStorage *)self hasDataToPublishInParticipantData:participantData])
  {
    topicName = [(HMDMediaGroupParticipantLocalDataStorage *)self topicName];
    eventSource = [(HMDMediaGroupParticipantLocalDataStorage *)self eventSource];
    v6 = objc_autoreleasePoolPush();
    selfCopy = self;
    v8 = HMFGetOSLogHandle();
    v9 = v8;
    if (topicName && eventSource)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v10 = HMFGetLogIdentifier();
        *buf = 138543874;
        v25 = v10;
        v26 = 2112;
        v27 = topicName;
        v28 = 2112;
        v29 = participantData;
        _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Publishing topic: %@ data: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v6);
      v11 = objc_alloc(MEMORY[0x277D174B0]);
      [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
      v12 = [v11 initWithSource:eventSource cachePolicy:2 combineType:2 timestamp:?];
      v13 = objc_alloc(MEMORY[0x277D174A0]);
      encodeToProtoBufferData = [participantData encodeToProtoBufferData];
      v15 = [v13 initWithEventData:encodeToProtoBufferData metadata:v12];

      eventForwarder = [(HMDMediaGroupParticipantLocalDataStorage *)selfCopy eventForwarder];
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __63__HMDMediaGroupParticipantLocalDataStorage_publishCachedObject__block_invoke;
      v23[3] = &unk_2797359D8;
      v23[4] = selfCopy;
      [eventForwarder forwardEvent:v15 topic:topicName completion:v23];
    }

    else
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v21 = HMFGetLogIdentifier();
        *buf = 138543362;
        v25 = v21;
        _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_ERROR, "%{public}@Failed to publish data due to no topic name or event source", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v6);
    }
  }

  else
  {
    v17 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543362;
      v25 = v20;
      _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_INFO, "%{public}@Skipping publish due to no data", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v17);
  }

  v22 = *MEMORY[0x277D85DE8];
}

void __63__HMDMediaGroupParticipantLocalDataStorage_publishCachedObject__block_invoke(uint64_t a1, void *a2)
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
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_ERROR, "%{public}@Forwarding event completed with error: %@", &v9, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)publishCachedObjectIfNeeded
{
  v17 = *MEMORY[0x277D85DE8];
  participantData = [(HMDMediaGroupParticipantLocalDataStorage *)self participantData];
  if ([(HMDMediaGroupParticipantLocalDataStorage *)self hasDataToPublishInParticipantData:participantData])
  {
    lastCachedEventParticipantData = [(HMDMediaGroupParticipantLocalDataStorage *)self lastCachedEventParticipantData];
    v5 = HMFEqualObjects();
    v6 = objc_autoreleasePoolPush();
    selfCopy = self;
    v8 = HMFGetOSLogHandle();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_INFO);
    if (v5)
    {
      if (v9)
      {
        v10 = HMFGetLogIdentifier();
        v13 = 138543618;
        v14 = v10;
        v15 = 2112;
        v16 = lastCachedEventParticipantData;
        _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Skipping publish due to last cached event participant data: %@", &v13, 0x16u);
      }

      objc_autoreleasePoolPop(v6);
    }

    else
    {
      if (v9)
      {
        v11 = HMFGetLogIdentifier();
        v13 = 138543362;
        v14 = v11;
        _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Publishing cached object due to mismatching last cached event data", &v13, 0xCu);
      }

      objc_autoreleasePoolPop(v6);
      [(HMDMediaGroupParticipantLocalDataStorage *)selfCopy publishCachedObject];
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (BOOL)hasDataToPublishInParticipantData:(id)data
{
  dataCopy = data;
  destination = [dataCopy destination];
  if (destination)
  {
    v5 = 1;
  }

  else
  {
    destinationControllerData = [dataCopy destinationControllerData];
    if (destinationControllerData)
    {
      v5 = 1;
    }

    else
    {
      backedUpGroups = [dataCopy backedUpGroups];
      v5 = [backedUpGroups count] != 0;
    }
  }

  return v5;
}

- (HMMediaDestination)destination
{
  participantData = [(HMDMediaGroupParticipantLocalDataStorage *)self participantData];
  destination = [participantData destination];

  return destination;
}

- (HMMediaDestinationControllerData)destinationControllerData
{
  participantData = [(HMDMediaGroupParticipantLocalDataStorage *)self participantData];
  destinationControllerData = [participantData destinationControllerData];

  return destinationControllerData;
}

- (void)migrateWithExpectedDestinationControllerSupportOptions:(unint64_t)options
{
  v22 = *MEMORY[0x277D85DE8];
  destinationControllerData = [(HMDMediaGroupParticipantLocalDataStorage *)self destinationControllerData];
  v6 = destinationControllerData;
  if (destinationControllerData)
  {
    if ([destinationControllerData supportedOptions] != options)
    {
      v7 = objc_autoreleasePoolPush();
      selfCopy = self;
      v9 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = HMFGetLogIdentifier();
        v11 = HMMediaDestinationControllerSupportOptionsAsString();
        v18 = 138543618;
        v19 = v10;
        v20 = 2112;
        v21 = v11;
        _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Migrating expected destination controller support options: %@", &v18, 0x16u);
      }

      objc_autoreleasePoolPop(v7);
      [(HMDMediaGroupParticipantLocalDataStorage *)selfCopy updateDestinationControllerSupportedOptions:options];
    }
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      v16 = HMMediaDestinationControllerSupportOptionsAsString();
      v18 = 138543618;
      v19 = v15;
      v20 = 2112;
      v21 = v16;
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_ERROR, "%{public}@Attempted to migrate with expected support options: %@ without a destination controller", &v18, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (id)migratedParticipantData:(id)data withDestinationSupportOptions:(unint64_t)options
{
  v27 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  destination = [dataCopy destination];
  v8 = destination;
  if (!destination)
  {
    v16 = objc_autoreleasePoolPush();
    selfCopy = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      v20 = HMMediaDestinationSupportOptionsAsString();
      v23 = 138543618;
      v24 = v19;
      v25 = 2112;
      v26 = v20;
      _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_ERROR, "%{public}@Attempted to migrate expected destination support options: %@ without a destination", &v23, 0x16u);
    }

    objc_autoreleasePoolPop(v16);
    goto LABEL_9;
  }

  if ([destination supportedOptions] == options)
  {
LABEL_9:
    v15 = dataCopy;
    goto LABEL_10;
  }

  v9 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    v13 = HMMediaDestinationSupportOptionsAsString();
    v23 = 138543618;
    v24 = v12;
    v25 = 2112;
    v26 = v13;
    _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Migrating supported options to: %@", &v23, 0x16u);
  }

  objc_autoreleasePoolPop(v9);
  v14 = [v8 mutableCopy];
  [v14 setSupportedOptions:options];
  v15 = [dataCopy mutableCopy];
  [v15 setDestination:v14];

LABEL_10:
  v21 = *MEMORY[0x277D85DE8];

  return v15;
}

- (void)migrateWithExpectedDestinationSupportOptions:(unint64_t)options
{
  participantData = [(HMDMediaGroupParticipantLocalDataStorage *)self participantData];
  v5 = [(HMDMediaGroupParticipantLocalDataStorage *)self migratedParticipantData:participantData withDestinationSupportOptions:options];
  if (([participantData isEqual:v5] & 1) == 0)
  {
    [(HMDMediaGroupParticipantLocalDataStorage *)self updateParticipantData:v5];
  }
}

- (id)createDefaultParticipantData
{
  v2 = [HMDMediaGroupsParticipantData alloc];
  v3 = [(HMDMediaGroupsParticipantData *)v2 initWithDestination:0 destinationControllerData:0 backedUpGroups:MEMORY[0x277CBEBF8]];

  return v3;
}

- (id)participantData
{
  selfCopy = self;
  protoParticipantData = [(HMDMediaGroupParticipantLocalDataStorage *)self protoParticipantData];
  if (protoParticipantData)
  {
    v4 = [HMDMediaGroupsParticipantData alloc];
    data = [protoParticipantData data];
    selfCopy = [(HMDMediaGroupsParticipantData *)v4 initWithProtoBufferData:data];

    if (selfCopy)
    {
      goto LABEL_5;
    }

    _HMFPreconditionFailure();
  }

  selfCopy = [(HMDMediaGroupsParticipantData *)selfCopy createDefaultParticipantData];
LABEL_5:

  return selfCopy;
}

- (id)lastCachedEventParticipantData
{
  v27 = *MEMORY[0x277D85DE8];
  topicName = [(HMDMediaGroupParticipantLocalDataStorage *)self topicName];
  if (topicName)
  {
    eventStoreReadHandle = [(HMDMediaGroupParticipantLocalDataStorage *)self eventStoreReadHandle];
    v5 = [eventStoreReadHandle lastEventForTopic:topicName];

    if (v5)
    {
      v6 = [HMDMediaGroupsParticipantData alloc];
      encodedData = [v5 encodedData];
      v8 = [(HMDMediaGroupsParticipantData *)v6 initWithProtoBufferData:encodedData];

      if (v8)
      {
        v9 = v8;
      }

      else
      {
        v14 = objc_autoreleasePoolPush();
        selfCopy = self;
        v16 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          v17 = HMFGetLogIdentifier();
          encodedData2 = [v5 encodedData];
          v21 = 138543874;
          v22 = v17;
          v23 = 2112;
          v24 = encodedData2;
          v25 = 2112;
          v26 = v5;
          _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_ERROR, "%{public}@Failed to decode last cached event participant data: %@ from event: %@", &v21, 0x20u);
        }

        objc_autoreleasePoolPop(v14);
      }
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      v21 = 138543362;
      v22 = v13;
      _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_ERROR, "%{public}@Failed to get last cached event participant data due to missing topic name", &v21, 0xCu);
    }

    objc_autoreleasePoolPop(v10);
    v8 = 0;
  }

  v19 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)protoParticipantData
{
  userDefaults = [(HMDMediaGroupParticipantLocalDataStorage *)self userDefaults];
  v3 = [userDefaults dataForKey:@"HMDMediaDestinationControllerLocalDataStorageHandlerObjectDataKey"];

  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x277CD1BC8]) initWithData:v3];
    if (v4)
    {
      goto LABEL_5;
    }

    _HMFPreconditionFailure();
  }

  v4 = 0;
LABEL_5:

  return v4;
}

- (void)configureWithHome:(id)home messageDispatcher:(id)dispatcher
{
  v16 = *MEMORY[0x277D85DE8];
  homeCopy = home;
  dispatcherCopy = dispatcher;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v14 = 138543362;
    v15 = v11;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Configuring media groups participant local storage", &v14, 0xCu);
  }

  objc_autoreleasePoolPop(v8);
  groupsBackupReceiver = [(HMDMediaGroupParticipantLocalDataStorage *)selfCopy groupsBackupReceiver];
  [groupsBackupReceiver configureWithHome:homeCopy messageDispatcher:dispatcherCopy];

  [(HMDMediaGroupParticipantLocalDataStorage *)selfCopy publishCachedObjectIfNeeded];
  v13 = *MEMORY[0x277D85DE8];
}

- (HMDMediaGroupParticipantLocalDataStorage)initWithIdentifier:(id)identifier backUpReciever:(id)reciever userDefaults:(id)defaults eventForwarder:(id)forwarder eventStoreReadHandle:(id)handle featuresDataSource:(id)source
{
  identifierCopy = identifier;
  recieverCopy = reciever;
  defaultsCopy = defaults;
  obj = forwarder;
  forwarderCopy = forwarder;
  handleCopy = handle;
  handleCopy2 = handle;
  sourceCopy = source;
  sourceCopy2 = source;
  if (!identifierCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_11;
  }

  if (!recieverCopy)
  {
LABEL_11:
    _HMFPreconditionFailure();
    goto LABEL_12;
  }

  if (!defaultsCopy)
  {
LABEL_12:
    _HMFPreconditionFailure();
    goto LABEL_13;
  }

  if (!forwarderCopy)
  {
LABEL_13:
    _HMFPreconditionFailure();
    goto LABEL_14;
  }

  if (!handleCopy2)
  {
LABEL_14:
    _HMFPreconditionFailure();
    goto LABEL_15;
  }

  v21 = sourceCopy2;
  if (!sourceCopy2)
  {
LABEL_15:
    v26 = _HMFPreconditionFailure();
    return [(HMDMediaGroupParticipantLocalDataStorage *)v26 initWithIdentifier:v27 backUpReciever:v28 userDefaults:v29 eventForwarder:v30 eventStoreReadHandle:v31, v32];
  }

  v36.receiver = self;
  v36.super_class = HMDMediaGroupParticipantLocalDataStorage;
  v22 = [(HMDMediaGroupParticipantLocalDataStorage *)&v36 init];
  if (v22)
  {
    v23 = HMFGetOSLogHandle();
    logger = v22->_logger;
    v22->_logger = v23;

    objc_storeStrong(&v22->_identifier, identifier);
    objc_storeStrong(&v22->_groupsBackupReceiver, reciever);
    objc_storeStrong(&v22->_userDefaults, defaults);
    objc_storeStrong(&v22->_eventForwarder, obj);
    objc_storeStrong(&v22->_eventStoreReadHandle, handleCopy);
    objc_storeStrong(&v22->_featuresDataSource, sourceCopy);
  }

  return v22;
}

- (HMDMediaGroupParticipantLocalDataStorage)initWithIdentifier:(id)identifier backUpReciever:(id)reciever userDefaults:(id)defaults eventForwarder:(id)forwarder eventStoreReadHandle:(id)handle
{
  handleCopy = handle;
  forwarderCopy = forwarder;
  defaultsCopy = defaults;
  recieverCopy = reciever;
  identifierCopy = identifier;
  v17 = objc_alloc_init(HMDFeaturesDataSource);
  v18 = [(HMDMediaGroupParticipantLocalDataStorage *)self initWithIdentifier:identifierCopy backUpReciever:recieverCopy userDefaults:defaultsCopy eventForwarder:forwarderCopy eventStoreReadHandle:handleCopy featuresDataSource:v17];

  return v18;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t39_176416 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t39_176416, &__block_literal_global_176417);
  }

  v3 = logCategory__hmf_once_v40_176418;

  return v3;
}

uint64_t __55__HMDMediaGroupParticipantLocalDataStorage_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v40_176418;
  logCategory__hmf_once_v40_176418 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end