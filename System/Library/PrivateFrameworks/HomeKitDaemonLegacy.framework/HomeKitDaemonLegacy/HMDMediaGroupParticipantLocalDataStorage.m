@interface HMDMediaGroupParticipantLocalDataStorage
+ (id)logCategory;
- (BOOL)hasDataToPublishInParticipantData:(id)a3;
- (HMDMediaGroupParticipantLocalDataStorage)initWithIdentifier:(id)a3 backUpReciever:(id)a4 userDefaults:(id)a5 eventForwarder:(id)a6 eventStoreReadHandle:(id)a7;
- (HMDMediaGroupParticipantLocalDataStorage)initWithIdentifier:(id)a3 backUpReciever:(id)a4 userDefaults:(id)a5 eventForwarder:(id)a6 eventStoreReadHandle:(id)a7 featuresDataSource:(id)a8;
- (HMDMediaGroupParticipantLocalDataStorageDataSource)dataSource;
- (HMDMediaGroupParticipantLocalDataStorageDelegate)delegate;
- (HMMediaDestination)destination;
- (HMMediaDestinationControllerData)destinationControllerData;
- (id)createDefaultParticipantData;
- (id)eventSource;
- (id)lastCachedEventParticipantData;
- (id)logIdentifier;
- (id)migratedParticipantData:(id)a3 withDestinationSupportOptions:(unint64_t)a4;
- (id)participantData;
- (id)protoParticipantData;
- (id)topicName;
- (void)configureWithHome:(id)a3 messageDispatcher:(id)a4;
- (void)migrateWithExpectedDestinationControllerSupportOptions:(unint64_t)a3;
- (void)migrateWithExpectedDestinationSupportOptions:(unint64_t)a3;
- (void)notifyDidChangeDestinationIdentifier:(id)a3 forDestinationControllerIdentifier:(id)a4;
- (void)publishCachedObject;
- (void)publishCachedObjectIfNeeded;
- (void)updateAudioGroupIdentifier:(id)a3;
- (void)updateBackupGroupData:(id)a3;
- (void)updateDestinationControllerAvailableDestinationIdentifiers:(id)a3;
- (void)updateDestinationControllerData:(id)a3;
- (void)updateDestinationControllerDestinationIdentifier:(id)a3;
- (void)updateDestinationControllerSupportedOptions:(unint64_t)a3;
- (void)updateDestinationSupportOptions:(unint64_t)a3;
- (void)updateMediaDestination:(id)a3;
- (void)updateParticipantData:(id)a3;
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
  v2 = [(HMDMediaGroupParticipantLocalDataStorage *)self identifier];
  v3 = [v2 UUIDString];

  return v3;
}

- (void)updateBackupGroupData:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v4, "count")}];
    v27 = 138543618;
    v28 = v8;
    v29 = 2112;
    v30 = v9;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Update backup groups: count(%@)", &v27, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  logger = v6->_logger;
  if (os_signpost_enabled(logger))
  {
    LOWORD(v27) = 0;
    _os_signpost_emit_with_name_impl(&dword_2531F8000, logger, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "MediaGroupsParticipantUpdateBackupGroup", "", &v27, 2u);
  }

  v11 = [(HMDMediaGroupParticipantLocalDataStorage *)v6 participantData];
  v12 = [v11 backedUpGroups];
  v13 = [v12 count];
  if (v13 != [v4 count])
  {

    goto LABEL_11;
  }

  v14 = MEMORY[0x277CBEB98];
  v15 = [v11 backedUpGroups];
  v16 = [v14 setWithArray:v15];
  v17 = [MEMORY[0x277CBEB98] setWithArray:v4];
  v18 = [v16 isEqual:v17];

  if (!v18)
  {
LABEL_11:
    v24 = [v11 mutableCopy];
    v25 = [v4 mutableCopy];
    [v24 setBackedUpGroups:v25];

    [(HMDMediaGroupParticipantLocalDataStorage *)v6 updateParticipantData:v24];
    goto LABEL_12;
  }

  v19 = objc_autoreleasePoolPush();
  v20 = v6;
  v21 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    v22 = HMFGetLogIdentifier();
    v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v4, "count")}];
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

- (void)updateDestinationSupportOptions:(unint64_t)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = objc_autoreleasePoolPush();
  v6 = self;
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
  v10 = [(HMDMediaGroupParticipantLocalDataStorage *)v6 participantData];
  v11 = [v10 destination];

  if (v11)
  {
    v12 = [v10 destination];
    v13 = [v12 mutableCopy];

    [v13 setSupportedOptions:a3];
    [(HMDMediaGroupParticipantLocalDataStorage *)v6 updateMediaDestination:v13];
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    v15 = v6;
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

- (void)updateAudioGroupIdentifier:(id)a3
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
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Updating audio group identifier: %@", &v18, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [(HMDMediaGroupParticipantLocalDataStorage *)v6 participantData];
  v10 = [v9 destination];

  if (v10)
  {
    v11 = [v9 destination];
    v12 = [v11 mutableCopy];

    [v12 setAudioGroupIdentifier:v4];
    [(HMDMediaGroupParticipantLocalDataStorage *)v6 updateMediaDestination:v12];
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    v14 = v6;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      v18 = 138543618;
      v19 = v16;
      v20 = 2112;
      v21 = v4;
      _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_ERROR, "%{public}@Failed to update audio group identifier: %@ due to no destination data", &v18, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)updateMediaDestination:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v19 = 138543618;
    v20 = v8;
    v21 = 2112;
    v22 = v4;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Updating media destination: %@", &v19, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  logger = v6->_logger;
  if (os_signpost_enabled(logger))
  {
    LOWORD(v19) = 0;
    _os_signpost_emit_with_name_impl(&dword_2531F8000, logger, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "MediaGroupsParticipantUpdateDestination", "", &v19, 2u);
  }

  v10 = [(HMDMediaGroupParticipantLocalDataStorage *)v6 participantData];
  v11 = [v10 destination];
  v12 = HMFEqualObjects();

  if (v12)
  {
    v13 = objc_autoreleasePoolPush();
    v14 = v6;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      v19 = 138543618;
      v20 = v16;
      v21 = 2112;
      v22 = v4;
      _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@Skipping destination update due to no changed in value: %@", &v19, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
  }

  else
  {
    v17 = [v10 mutableCopy];
    [v17 setDestination:v4];
    [(HMDMediaGroupParticipantLocalDataStorage *)v6 updateParticipantData:v17];
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)updateDestinationControllerAvailableDestinationIdentifiers:(id)a3
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
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Updating destination controller available destination identifiers: %@", &v18, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [(HMDMediaGroupParticipantLocalDataStorage *)v6 participantData];
  v10 = [v9 destinationControllerData];

  if (v10)
  {
    v11 = [v9 destinationControllerData];
    v12 = [v11 mutableCopy];

    [v12 setAvailableDestinationIdentifiers:v4];
    [(HMDMediaGroupParticipantLocalDataStorage *)v6 updateDestinationControllerData:v12];
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    v14 = v6;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      v18 = 138543618;
      v19 = v16;
      v20 = 2112;
      v21 = v4;
      _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_ERROR, "%{public}@Failed to update destination controller available destination identifiers: %@ due to no controller data", &v18, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)updateDestinationControllerSupportedOptions:(unint64_t)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = objc_autoreleasePoolPush();
  v6 = self;
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
  v10 = [(HMDMediaGroupParticipantLocalDataStorage *)v6 participantData];
  v11 = [v10 destinationControllerData];

  if (v11)
  {
    v12 = [v10 destinationControllerData];
    v13 = [v12 mutableCopy];

    [v13 setSupportedOptions:a3];
    [(HMDMediaGroupParticipantLocalDataStorage *)v6 updateDestinationControllerData:v13];
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    v15 = v6;
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

- (void)notifyDidChangeDestinationIdentifier:(id)a3 forDestinationControllerIdentifier:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDMediaGroupParticipantLocalDataStorage *)self delegate];
  v9 = v8;
  if (v8)
  {
    [v8 mediaGroupParticipantLocalDataStorage:self didChangeDestinationIdentifier:v6 forDestinationControllerIdentifier:v7];
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    v11 = self;
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

- (void)updateDestinationControllerDestinationIdentifier:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v19 = 138543618;
    v20 = v8;
    v21 = 2112;
    v22 = v4;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Updating destinaiton controller destination identifier: %@", &v19, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [(HMDMediaGroupParticipantLocalDataStorage *)v6 participantData];
  v10 = [v9 destinationControllerData];

  if (v10)
  {
    v11 = [v9 destinationControllerData];
    v12 = [v11 mutableCopy];

    [v12 setDestinationIdentifier:v4];
    [(HMDMediaGroupParticipantLocalDataStorage *)v6 updateDestinationControllerData:v12];
    v13 = [v12 identifier];
    [(HMDMediaGroupParticipantLocalDataStorage *)v6 notifyDidChangeDestinationIdentifier:v4 forDestinationControllerIdentifier:v13];
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    v15 = v6;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      v19 = 138543618;
      v20 = v17;
      v21 = 2112;
      v22 = v4;
      _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_ERROR, "%{public}@Failed to update destination controller destination identifier: %@ due to no controller data", &v19, 0x16u);
    }

    objc_autoreleasePoolPop(v14);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)updateDestinationControllerData:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v19 = 138543618;
    v20 = v8;
    v21 = 2112;
    v22 = v4;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Updating DestinationControllerData: %@", &v19, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  logger = v6->_logger;
  if (os_signpost_enabled(logger))
  {
    LOWORD(v19) = 0;
    _os_signpost_emit_with_name_impl(&dword_2531F8000, logger, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "MediaGroupsParticipantUpdateDestinationController", "", &v19, 2u);
  }

  v10 = [(HMDMediaGroupParticipantLocalDataStorage *)v6 participantData];
  v11 = [v10 destinationControllerData];
  v12 = HMFEqualObjects();

  if (v12)
  {
    v13 = objc_autoreleasePoolPush();
    v14 = v6;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      v19 = 138543618;
      v20 = v16;
      v21 = 2112;
      v22 = v4;
      _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@Skipping update destination controller due to no change to value: %@", &v19, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
  }

  else
  {
    v17 = [v10 mutableCopy];
    [v17 setDestinationControllerData:v4];
    [(HMDMediaGroupParticipantLocalDataStorage *)v6 updateParticipantData:v17];
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)updateParticipantData:(id)a3
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
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Updating participant data: %@", &v12, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [(HMDMediaGroupParticipantLocalDataStorage *)v6 userDefaults];
  v10 = [v4 encodeToProtoBufferData];
  [v9 setObject:v10 forKey:@"HMDMediaDestinationControllerLocalDataStorageHandlerObjectDataKey"];

  [(HMDMediaGroupParticipantLocalDataStorage *)v6 publishCachedObject];
  v11 = *MEMORY[0x277D85DE8];
}

- (id)eventSource
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = [(HMDMediaGroupParticipantLocalDataStorage *)self dataSource];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 eventSourceForMediaGroupParticipantDataLocalStorage:self];
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

- (id)topicName
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = [(HMDMediaGroupParticipantLocalDataStorage *)self dataSource];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 topicNameForMediaGroupParticipantDataLocalStorage:self];
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
  v3 = [(HMDMediaGroupParticipantLocalDataStorage *)self participantData];
  if ([(HMDMediaGroupParticipantLocalDataStorage *)self hasDataToPublishInParticipantData:v3])
  {
    v4 = [(HMDMediaGroupParticipantLocalDataStorage *)self topicName];
    v5 = [(HMDMediaGroupParticipantLocalDataStorage *)self eventSource];
    v6 = objc_autoreleasePoolPush();
    v7 = self;
    v8 = HMFGetOSLogHandle();
    v9 = v8;
    if (v4 && v5)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v10 = HMFGetLogIdentifier();
        *buf = 138543874;
        v25 = v10;
        v26 = 2112;
        v27 = v4;
        v28 = 2112;
        v29 = v3;
        _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Publishing topic: %@ data: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v6);
      v11 = objc_alloc(MEMORY[0x277D174B0]);
      [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
      v12 = [v11 initWithSource:v5 cachePolicy:2 combineType:2 timestamp:?];
      v13 = objc_alloc(MEMORY[0x277D174A0]);
      v14 = [v3 encodeToProtoBufferData];
      v15 = [v13 initWithEventData:v14 metadata:v12];

      v16 = [(HMDMediaGroupParticipantLocalDataStorage *)v7 eventForwarder];
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __63__HMDMediaGroupParticipantLocalDataStorage_publishCachedObject__block_invoke;
      v23[3] = &unk_2797359D8;
      v23[4] = v7;
      [v16 forwardEvent:v15 topic:v4 completion:v23];
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
    v18 = self;
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
  v3 = [(HMDMediaGroupParticipantLocalDataStorage *)self participantData];
  if ([(HMDMediaGroupParticipantLocalDataStorage *)self hasDataToPublishInParticipantData:v3])
  {
    v4 = [(HMDMediaGroupParticipantLocalDataStorage *)self lastCachedEventParticipantData];
    v5 = HMFEqualObjects();
    v6 = objc_autoreleasePoolPush();
    v7 = self;
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
        v16 = v4;
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
      [(HMDMediaGroupParticipantLocalDataStorage *)v7 publishCachedObject];
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (BOOL)hasDataToPublishInParticipantData:(id)a3
{
  v3 = a3;
  v4 = [v3 destination];
  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v6 = [v3 destinationControllerData];
    if (v6)
    {
      v5 = 1;
    }

    else
    {
      v7 = [v3 backedUpGroups];
      v5 = [v7 count] != 0;
    }
  }

  return v5;
}

- (HMMediaDestination)destination
{
  v2 = [(HMDMediaGroupParticipantLocalDataStorage *)self participantData];
  v3 = [v2 destination];

  return v3;
}

- (HMMediaDestinationControllerData)destinationControllerData
{
  v2 = [(HMDMediaGroupParticipantLocalDataStorage *)self participantData];
  v3 = [v2 destinationControllerData];

  return v3;
}

- (void)migrateWithExpectedDestinationControllerSupportOptions:(unint64_t)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = [(HMDMediaGroupParticipantLocalDataStorage *)self destinationControllerData];
  v6 = v5;
  if (v5)
  {
    if ([v5 supportedOptions] != a3)
    {
      v7 = objc_autoreleasePoolPush();
      v8 = self;
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
      [(HMDMediaGroupParticipantLocalDataStorage *)v8 updateDestinationControllerSupportedOptions:a3];
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

- (id)migratedParticipantData:(id)a3 withDestinationSupportOptions:(unint64_t)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [v6 destination];
  v8 = v7;
  if (!v7)
  {
    v16 = objc_autoreleasePoolPush();
    v17 = self;
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

  if ([v7 supportedOptions] == a4)
  {
LABEL_9:
    v15 = v6;
    goto LABEL_10;
  }

  v9 = objc_autoreleasePoolPush();
  v10 = self;
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
  [v14 setSupportedOptions:a4];
  v15 = [v6 mutableCopy];
  [v15 setDestination:v14];

LABEL_10:
  v21 = *MEMORY[0x277D85DE8];

  return v15;
}

- (void)migrateWithExpectedDestinationSupportOptions:(unint64_t)a3
{
  v6 = [(HMDMediaGroupParticipantLocalDataStorage *)self participantData];
  v5 = [(HMDMediaGroupParticipantLocalDataStorage *)self migratedParticipantData:v6 withDestinationSupportOptions:a3];
  if (([v6 isEqual:v5] & 1) == 0)
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
  v2 = self;
  v3 = [(HMDMediaGroupParticipantLocalDataStorage *)self protoParticipantData];
  if (v3)
  {
    v4 = [HMDMediaGroupsParticipantData alloc];
    v5 = [v3 data];
    v2 = [(HMDMediaGroupsParticipantData *)v4 initWithProtoBufferData:v5];

    if (v2)
    {
      goto LABEL_5;
    }

    _HMFPreconditionFailure();
  }

  v2 = [(HMDMediaGroupsParticipantData *)v2 createDefaultParticipantData];
LABEL_5:

  return v2;
}

- (id)lastCachedEventParticipantData
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = [(HMDMediaGroupParticipantLocalDataStorage *)self topicName];
  if (v3)
  {
    v4 = [(HMDMediaGroupParticipantLocalDataStorage *)self eventStoreReadHandle];
    v5 = [v4 lastEventForTopic:v3];

    if (v5)
    {
      v6 = [HMDMediaGroupsParticipantData alloc];
      v7 = [v5 encodedData];
      v8 = [(HMDMediaGroupsParticipantData *)v6 initWithProtoBufferData:v7];

      if (v8)
      {
        v9 = v8;
      }

      else
      {
        v14 = objc_autoreleasePoolPush();
        v15 = self;
        v16 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          v17 = HMFGetLogIdentifier();
          v18 = [v5 encodedData];
          v21 = 138543874;
          v22 = v17;
          v23 = 2112;
          v24 = v18;
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
    v11 = self;
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
  v2 = [(HMDMediaGroupParticipantLocalDataStorage *)self userDefaults];
  v3 = [v2 dataForKey:@"HMDMediaDestinationControllerLocalDataStorageHandlerObjectDataKey"];

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

- (void)configureWithHome:(id)a3 messageDispatcher:(id)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v14 = 138543362;
    v15 = v11;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Configuring media groups participant local storage", &v14, 0xCu);
  }

  objc_autoreleasePoolPop(v8);
  v12 = [(HMDMediaGroupParticipantLocalDataStorage *)v9 groupsBackupReceiver];
  [v12 configureWithHome:v6 messageDispatcher:v7];

  [(HMDMediaGroupParticipantLocalDataStorage *)v9 publishCachedObjectIfNeeded];
  v13 = *MEMORY[0x277D85DE8];
}

- (HMDMediaGroupParticipantLocalDataStorage)initWithIdentifier:(id)a3 backUpReciever:(id)a4 userDefaults:(id)a5 eventForwarder:(id)a6 eventStoreReadHandle:(id)a7 featuresDataSource:(id)a8
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  obj = a6;
  v18 = a6;
  v34 = a7;
  v19 = a7;
  v35 = a8;
  v20 = a8;
  if (!v15)
  {
    _HMFPreconditionFailure();
    goto LABEL_11;
  }

  if (!v16)
  {
LABEL_11:
    _HMFPreconditionFailure();
    goto LABEL_12;
  }

  if (!v17)
  {
LABEL_12:
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

  v21 = v20;
  if (!v20)
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

    objc_storeStrong(&v22->_identifier, a3);
    objc_storeStrong(&v22->_groupsBackupReceiver, a4);
    objc_storeStrong(&v22->_userDefaults, a5);
    objc_storeStrong(&v22->_eventForwarder, obj);
    objc_storeStrong(&v22->_eventStoreReadHandle, v34);
    objc_storeStrong(&v22->_featuresDataSource, v35);
  }

  return v22;
}

- (HMDMediaGroupParticipantLocalDataStorage)initWithIdentifier:(id)a3 backUpReciever:(id)a4 userDefaults:(id)a5 eventForwarder:(id)a6 eventStoreReadHandle:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  v17 = objc_alloc_init(HMDFeaturesDataSource);
  v18 = [(HMDMediaGroupParticipantLocalDataStorage *)self initWithIdentifier:v16 backUpReciever:v15 userDefaults:v14 eventForwarder:v13 eventStoreReadHandle:v12 featuresDataSource:v17];

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