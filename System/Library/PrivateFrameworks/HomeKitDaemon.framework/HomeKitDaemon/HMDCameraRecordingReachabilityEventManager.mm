@interface HMDCameraRecordingReachabilityEventManager
+ (id)logCategory;
- (BOOL)isAccessoryReachable;
- (BOOL)isCurrentDeviceConfirmedPrimaryResident;
- (BOOL)isCurrentDeviceConnectedToNetwork;
- (BOOL)shouldAddInitialReachabilityEventWithReachability:(BOOL)reachability mostRecentReachabilityEventModel:(id)model;
- (BOOL)shouldHandleReachabilityChanges;
- (HMDCameraRecordingReachabilityEventManager)initWithAccessory:(id)accessory workQueue:(id)queue identifier:(id)identifier bulletinBoard:(id)board logEventSubmitter:(id)submitter accountSettings:(id)settings featuresDataSource:(id)source notificationCenter:(id)self0;
- (HMDCameraRecordingReachabilityEventManager)initWithHAPAccessory:(id)accessory zoneName:(id)name workQueue:(id)queue;
- (HMDHAPAccessory)hapAccessory;
- (_HMCameraUserSettings)currentSettings;
- (double)initialReachabilityTimeout;
- (double)reachabilityChangeReachableDebounceTimeout;
- (double)reachabilityChangeUnreachableDebounceTimeout;
- (id)addCameraReachabilityEventModel:(id)model;
- (id)fetchMostRecentReachabilityEventModel;
- (id)fetchReachabilityEventsWithDateInterval:(id)interval;
- (id)logIdentifier;
- (id)mostRecentReachabilityEventModelInModels:(id)models;
- (id)performCloudPullWithLabel:(id)label;
- (void)cleanUpEvents;
- (void)clipManagerDidStart:(id)start;
- (void)clipManagerDidStop:(id)stop;
- (void)configureWithMessageDispatcher:(id)dispatcher currentSettings:(id)settings isCurrentDeviceConfirmedPrimaryResident:(BOOL)resident isCurrentDeviceConnectedToNetwork:(BOOL)network;
- (void)handleAccessoryConnectedNotification:(id)notification;
- (void)handleAccessoryDisconnectedNotification:(id)notification;
- (void)handleAppleAccountSettingsHomeStateUpdated:(id)updated;
- (void)handleBridgedAccessoryConnectedNotification:(id)notification;
- (void)handleBridgedAccessoryDisconnectedNotification:(id)notification;
- (void)handleCameraProfileSettingsDidChange:(id)change;
- (void)handleDeleteAllEventsMessage:(id)message;
- (void)handleFetchCountOfEventsMessage:(id)message;
- (void)handleFetchEventsMessage:(id)message;
- (void)handleInitialCameraReachability;
- (void)handlePerformCloudPullMessage:(id)message;
- (void)handleRemoteCameraReachabilityDidChangeMessage:(id)message;
- (void)handleResidentDeviceConfirmedStateChangedNotification:(id)notification;
- (void)handleSubscribeMessage:(id)message;
- (void)handleUnsubscribeMessage:(id)message;
- (void)insertBulletinForReachabilityEvent:(id)event;
- (void)localZone:(id)zone didProcessModelCreation:(id)creation;
- (void)localZone:(id)zone didProcessModelDeletion:(id)deletion;
- (void)localZone:(id)zone didProcessModelUpdate:(id)update;
- (void)networkMonitorIsReachable:(id)reachable;
- (void)networkMonitorIsUnreachable:(id)unreachable;
- (void)notifyRemoteSubscribersOfCameraReachabilityEventModel:(id)model;
- (void)notifyTransportOfUpdatedEvents:(id)events removedEventUUIDs:(id)ds;
- (void)setCurrentDeviceConfirmedPrimaryResident:(BOOL)resident;
- (void)setCurrentDeviceConnectedToNetwork:(BOOL)network;
- (void)setCurrentSettings:(id)settings;
- (void)startReachabilityChangeDebounceTimerWithReachability:(BOOL)reachability;
- (void)submitLogEventWithCurrentModel:(id)model;
- (void)timerDidFire:(id)fire;
- (void)updateInitialReachabilityTimer;
@end

@implementation HMDCameraRecordingReachabilityEventManager

- (HMDHAPAccessory)hapAccessory
{
  WeakRetained = objc_loadWeakRetained(&self->_hapAccessory);

  return WeakRetained;
}

- (id)logIdentifier
{
  hapAccessory = [(HMDCameraRecordingReachabilityEventManager *)self hapAccessory];
  if (isInternalBuild())
  {
    v4 = MEMORY[0x277CCACA8];
    home = [hapAccessory home];
    name = [home name];
    name2 = [hapAccessory name];
    uniqueIdentifier = [(HMDCameraRecordingReachabilityEventManager *)self uniqueIdentifier];
    uUIDString = [v4 stringWithFormat:@"%@/%@/%@", name, name2, uniqueIdentifier];
  }

  else
  {
    home = [(HMDCameraRecordingReachabilityEventManager *)self uniqueIdentifier];
    uUIDString = [home UUIDString];
  }

  return uUIDString;
}

- (void)networkMonitorIsUnreachable:(id)unreachable
{
  v13 = *MEMORY[0x277D85DE8];
  unreachableCopy = unreachable;
  workQueue = [(HMDCameraRecordingReachabilityEventManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v11 = 138543362;
    v12 = v9;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Received network monitor is unreachable", &v11, 0xCu);
  }

  objc_autoreleasePoolPop(v6);
  [(HMDCameraRecordingReachabilityEventManager *)selfCopy setCurrentDeviceConnectedToNetwork:0];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)networkMonitorIsReachable:(id)reachable
{
  v13 = *MEMORY[0x277D85DE8];
  reachableCopy = reachable;
  workQueue = [(HMDCameraRecordingReachabilityEventManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v11 = 138543362;
    v12 = v9;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Received network monitor is reachable", &v11, 0xCu);
  }

  objc_autoreleasePoolPop(v6);
  [(HMDCameraRecordingReachabilityEventManager *)selfCopy setCurrentDeviceConnectedToNetwork:1];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)timerDidFire:(id)fire
{
  v37 = *MEMORY[0x277D85DE8];
  fireCopy = fire;
  workQueue = [(HMDCameraRecordingReachabilityEventManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  initialReachabilityTimer = [(HMDCameraRecordingReachabilityEventManager *)self initialReachabilityTimer];

  if (initialReachabilityTimer == fireCopy)
  {
    isAccessoryReachable = [(HMDCameraRecordingReachabilityEventManager *)self isAccessoryReachable];
    v22 = objc_autoreleasePoolPush();
    selfCopy = self;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v25 = HMFGetLogIdentifier();
      v26 = HMFBooleanToString();
      *buf = 138543618;
      v32 = v25;
      v33 = 2112;
      v34 = v26;
      _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_INFO, "%{public}@Initial reachability timer fired with isReachable: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v22);
    [(HMDCameraRecordingReachabilityEventManager *)selfCopy setLastKnownCameraReachability:isAccessoryReachable];
    [(HMDCameraRecordingReachabilityEventManager *)selfCopy setCurrentCameraReachability:isAccessoryReachable];
    [(HMDCameraRecordingReachabilityEventManager *)selfCopy setInitialReachabilityTimer:0];
    [(HMDCameraRecordingReachabilityEventManager *)selfCopy handleInitialCameraReachability];
  }

  else
  {
    reachabilityChangeDebounceTimer = [(HMDCameraRecordingReachabilityEventManager *)self reachabilityChangeDebounceTimer];

    if (reachabilityChangeDebounceTimer == fireCopy)
    {
      v8 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v10 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = HMFGetLogIdentifier();
        [(HMDCameraRecordingReachabilityEventManager *)selfCopy2 lastKnownCameraReachability];
        v12 = HMFBooleanToString();
        [(HMDCameraRecordingReachabilityEventManager *)selfCopy2 currentCameraReachability];
        v13 = HMFBooleanToString();
        *buf = 138543874;
        v32 = v11;
        v33 = 2114;
        v34 = v12;
        v35 = 2114;
        v36 = v13;
        _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Reachability change debounce timer fired with last known reachability %{public}@ and current reachability %{public}@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v8);
      lastKnownCameraReachability = [(HMDCameraRecordingReachabilityEventManager *)selfCopy2 lastKnownCameraReachability];
      if (lastKnownCameraReachability == [(HMDCameraRecordingReachabilityEventManager *)selfCopy2 currentCameraReachability])
      {
        [(HMDCameraRecordingReachabilityEventManager *)selfCopy2 submitLogEventWithCurrentModel:0];
      }

      else
      {
        [(HMDCameraRecordingReachabilityEventManager *)selfCopy2 setLastKnownCameraReachability:[(HMDCameraRecordingReachabilityEventManager *)selfCopy2 currentCameraReachability]];
        currentCameraReachability = [(HMDCameraRecordingReachabilityEventManager *)selfCopy2 currentCameraReachability];
        reachabilityChangeDebounceStartDate = [(HMDCameraRecordingReachabilityEventManager *)selfCopy2 reachabilityChangeDebounceStartDate];
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 3221225472;
        aBlock[2] = __59__HMDCameraRecordingReachabilityEventManager_timerDidFire___block_invoke;
        aBlock[3] = &unk_27867EA90;
        v30 = currentCameraReachability;
        aBlock[4] = selfCopy2;
        v29 = reachabilityChangeDebounceStartDate;
        v17 = reachabilityChangeDebounceStartDate;
        v18 = _Block_copy(aBlock);
        didHandleInitialReachabilityFuture = [(HMDCameraRecordingReachabilityEventManager *)selfCopy2 didHandleInitialReachabilityFuture];
        v20 = [didHandleInitialReachabilityFuture addSuccessBlock:v18];
      }

      [(HMDCameraRecordingReachabilityEventManager *)selfCopy2 setReachabilityChangeDebounceTimer:0];
    }
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (void)clipManagerDidStop:(id)stop
{
  workQueue = [(HMDCameraRecordingReachabilityEventManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  [(HMDCameraRecordingReachabilityEventManager *)self setLocalZone:0];

  [(HMDCameraRecordingReachabilityEventManager *)self setCloudZone:0];
}

- (void)clipManagerDidStart:(id)start
{
  v22 = *MEMORY[0x277D85DE8];
  startCopy = start;
  workQueue = [(HMDCameraRecordingReachabilityEventManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  localZone = [startCopy localZone];
  [(HMDCameraRecordingReachabilityEventManager *)self setLocalZone:localZone];

  cloudZone = [startCopy cloudZone];
  [(HMDCameraRecordingReachabilityEventManager *)self setCloudZone:cloudZone];

  localZone2 = [(HMDCameraRecordingReachabilityEventManager *)self localZone];
  [localZone2 addObserverForAllModels:self];

  [(HMDCameraRecordingReachabilityEventManager *)self cleanUpEvents];
  cloudZone2 = [(HMDCameraRecordingReachabilityEventManager *)self cloudZone];
  hasPerformedInitialFetch = [cloudZone2 hasPerformedInitialFetch];

  if ((hasPerformedInitialFetch & 1) == 0)
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      suppressNotificationsBeforeDate = [(HMDCameraRecordingReachabilityEventManager *)selfCopy suppressNotificationsBeforeDate];
      v18 = 138543618;
      v19 = v14;
      v20 = 2112;
      v21 = suppressNotificationsBeforeDate;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Suppressing all reachability notifications before %@", &v18, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    date = [MEMORY[0x277CBEAA8] date];
    [(HMDCameraRecordingReachabilityEventManager *)selfCopy setSuppressNotificationsBeforeDate:date];
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)localZone:(id)zone didProcessModelUpdate:(id)update
{
  v17 = *MEMORY[0x277D85DE8];
  zoneCopy = zone;
  updateCopy = update;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v11 = HMFGetLogIdentifier();
    v13 = 138543618;
    v14 = v11;
    v15 = 2112;
    v16 = updateCopy;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_DEBUG, "%{public}@Received model update: %@", &v13, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  v12 = *MEMORY[0x277D85DE8];
}

- (void)localZone:(id)zone didProcessModelDeletion:(id)deletion
{
  deletionCopy = deletion;
  workQueue = [(HMDCameraRecordingReachabilityEventManager *)self workQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __80__HMDCameraRecordingReachabilityEventManager_localZone_didProcessModelDeletion___block_invoke;
  v8[3] = &unk_27868A750;
  v9 = deletionCopy;
  selfCopy = self;
  v7 = deletionCopy;
  dispatch_sync(workQueue, v8);
}

void __80__HMDCameraRecordingReachabilityEventManager_localZone_didProcessModelDeletion___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) model];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  v5 = objc_autoreleasePoolPush();
  v6 = *(a1 + 40);
  v7 = HMFGetOSLogHandle();
  v8 = v7;
  if (v4)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v10 = [v4 debugDescription];
      v19 = 138543618;
      v20 = v9;
      v21 = 2112;
      v22 = v10;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Received deleted reachability event model: %@", &v19, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    v11 = *(a1 + 40);
    v12 = [MEMORY[0x277CBEB98] set];
    v13 = MEMORY[0x277CBEB98];
    v14 = [v4 hmbModelID];
    v15 = [v13 setWithObject:v14];
    [v11 notifyTransportOfUpdatedEvents:v12 removedEventUUIDs:v15];
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v16 = HMFGetLogIdentifier();
      v17 = *(a1 + 32);
      v19 = 138543874;
      v20 = v16;
      v21 = 2112;
      v22 = v17;
      v23 = 2112;
      v24 = objc_opt_class();
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_DEBUG, "%{public}@Deletion model %@ is not of expected type: %@", &v19, 0x20u);
    }

    objc_autoreleasePoolPop(v5);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)localZone:(id)zone didProcessModelCreation:(id)creation
{
  creationCopy = creation;
  workQueue = [(HMDCameraRecordingReachabilityEventManager *)self workQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __80__HMDCameraRecordingReachabilityEventManager_localZone_didProcessModelCreation___block_invoke;
  v8[3] = &unk_27868A750;
  v9 = creationCopy;
  selfCopy = self;
  v7 = creationCopy;
  dispatch_sync(workQueue, v8);
}

void __80__HMDCameraRecordingReachabilityEventManager_localZone_didProcessModelCreation___block_invoke(uint64_t a1)
{
  v34 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) model];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  if (v4)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = *(a1 + 40);
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      v9 = [v4 debugDescription];
      v28 = 138543618;
      v29 = v8;
      v30 = 2114;
      v31 = v9;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Received new reachability event model: %{public}@", &v28, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    v10 = [v4 createEvent];
    if (v10)
    {
      v11 = *(a1 + 40);
      v12 = [MEMORY[0x277CBEB98] setWithObject:v10];
      v13 = [MEMORY[0x277CBEB98] set];
      [v11 notifyTransportOfUpdatedEvents:v12 removedEventUUIDs:v13];

      v14 = [v10 dateOfOccurrence];
      v15 = [*(a1 + 40) suppressNotificationsBeforeDate];
      v16 = [v14 compare:v15];

      if (v16 != -1)
      {
        [*(a1 + 40) insertBulletinForReachabilityEvent:v10];
LABEL_17:

        goto LABEL_18;
      }

      v17 = objc_autoreleasePoolPush();
      v22 = *(a1 + 40);
      v23 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        v24 = HMFGetLogIdentifier();
        v25 = [v10 dateOfOccurrence];
        v26 = [*(a1 + 40) suppressNotificationsBeforeDate];
        v28 = 138543874;
        v29 = v24;
        v30 = 2112;
        v31 = v25;
        v32 = 2112;
        v33 = v26;
        _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_INFO, "%{public}@Ignoring created event with date of occurrence %@ because it is before %@", &v28, 0x20u);
      }
    }

    else
    {
      v17 = objc_autoreleasePoolPush();
      v18 = *(a1 + 40);
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = HMFGetLogIdentifier();
        v21 = [v4 debugDescription];
        v28 = 138543618;
        v29 = v20;
        v30 = 2112;
        v31 = v21;
        _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_ERROR, "%{public}@Failed to convert reachability model into event: %@", &v28, 0x16u);
      }
    }

    objc_autoreleasePoolPop(v17);
    goto LABEL_17;
  }

LABEL_18:

  v27 = *MEMORY[0x277D85DE8];
}

- (void)handleDeleteAllEventsMessage:(id)message
{
  v29 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  workQueue = [(HMDCameraRecordingReachabilityEventManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    *buf = 138543362;
    v28 = v9;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Handling delete all reachability events message", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v6);
  localZone = [(HMDCameraRecordingReachabilityEventManager *)selfCopy localZone];

  if (localZone)
  {
    localZone2 = [(HMDCameraRecordingReachabilityEventManager *)selfCopy localZone];
    v26 = objc_opt_class();
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v26 count:1];
    v13 = MEMORY[0x277D17108];
    name = [messageCopy name];
    v15 = [v13 optionsWithLabel:name];
    v16 = [localZone2 removeAllModelsOfTypes:v12 options:v15];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __75__HMDCameraRecordingReachabilityEventManager_handleDeleteAllEventsMessage___block_invoke;
    v24[3] = &unk_278681178;
    v25 = messageCopy;
    v17 = [v16 addCompletionBlock:v24];

    v18 = v25;
  }

  else
  {
    v19 = objc_autoreleasePoolPush();
    v20 = selfCopy;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier();
      *buf = 138543362;
      v28 = v22;
      _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_ERROR, "%{public}@Cannot delete clips because zones are not ready", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v19);
    v18 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
    [messageCopy respondWithError:v18];
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)handlePerformCloudPullMessage:(id)message
{
  v22 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  workQueue = [(HMDCameraRecordingReachabilityEventManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    *buf = 138543362;
    v21 = v9;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Handling perform cloud pull message", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v6);
  v10 = [(HMDCameraRecordingReachabilityEventManager *)selfCopy performCloudPullWithLabel:@"Fetching reachability events due to client request"];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __76__HMDCameraRecordingReachabilityEventManager_handlePerformCloudPullMessage___block_invoke;
  v18[3] = &unk_27868A200;
  v11 = messageCopy;
  v19 = v11;
  v12 = [v10 addSuccessBlock:v18];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __76__HMDCameraRecordingReachabilityEventManager_handlePerformCloudPullMessage___block_invoke_2;
  v16[3] = &unk_27868A250;
  v17 = v11;
  v13 = v11;
  v14 = [v12 addFailureBlock:v16];

  v15 = *MEMORY[0x277D85DE8];
}

- (void)handleUnsubscribeMessage:(id)message
{
  v28 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  workQueue = [(HMDCameraRecordingReachabilityEventManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v22 = 138543362;
    v23 = v9;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Handling unsubscribe message", &v22, 0xCu);
  }

  objc_autoreleasePoolPop(v6);
  transport = [messageCopy transport];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = transport;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  if (v12)
  {
    clientConnections = [(HMDCameraRecordingReachabilityEventManager *)selfCopy clientConnections];
    [clientConnections removeObject:v12];

    [messageCopy respondWithSuccess];
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    v15 = selfCopy;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      v18 = objc_opt_class();
      transport2 = [messageCopy transport];
      v22 = 138543874;
      v23 = v17;
      v24 = 2112;
      v25 = v18;
      v26 = 2112;
      v27 = transport2;
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_ERROR, "%{public}@Unsubscribing transport was not of expected class %@: %@", &v22, 0x20u);
    }

    objc_autoreleasePoolPop(v14);
    v20 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
    [messageCopy respondWithError:v20];
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)handleSubscribeMessage:(id)message
{
  v28 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  workQueue = [(HMDCameraRecordingReachabilityEventManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v22 = 138543362;
    v23 = v9;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Handling subscribe message", &v22, 0xCu);
  }

  objc_autoreleasePoolPop(v6);
  transport = [messageCopy transport];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = transport;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  if (v12)
  {
    clientConnections = [(HMDCameraRecordingReachabilityEventManager *)selfCopy clientConnections];
    [clientConnections addObject:v12];

    [messageCopy respondWithSuccess];
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    v15 = selfCopy;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      v18 = objc_opt_class();
      transport2 = [messageCopy transport];
      v22 = 138543874;
      v23 = v17;
      v24 = 2112;
      v25 = v18;
      v26 = 2112;
      v27 = transport2;
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_ERROR, "%{public}@Subscribing transport was not of expected class %@: %@", &v22, 0x20u);
    }

    objc_autoreleasePoolPop(v14);
    v20 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
    [messageCopy respondWithError:v20];
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)handleFetchCountOfEventsMessage:(id)message
{
  v47 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  workQueue = [(HMDCameraRecordingReachabilityEventManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    shortDescription = [messageCopy shortDescription];
    *buf = 138543618;
    v42 = v9;
    v43 = 2112;
    v44 = shortDescription;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Received message to fetch count of events: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  localZone = [(HMDCameraRecordingReachabilityEventManager *)selfCopy localZone];

  if (localZone)
  {
    messagePayload = [messageCopy messagePayload];
    v13 = [messagePayload hmf_dateForKey:*MEMORY[0x277CCF548]];

    messagePayload2 = [messageCopy messagePayload];
    v15 = [messagePayload2 hmf_dateForKey:*MEMORY[0x277CCF550]];

    if (v13 && v15)
    {
      v16 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v13 endDate:v15];
      v17 = objc_autoreleasePoolPush();
      v18 = selfCopy;
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        v20 = HMFGetLogIdentifier();
        *buf = 138543618;
        v42 = v20;
        v43 = 2112;
        v44 = v16;
        _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_INFO, "%{public}@Fetching count of reachability event models with date interval: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v17);
      v21 = [(HMDCameraRecordingReachabilityEventManager *)v18 fetchReachabilityEventsWithDateInterval:v16];
      v22 = objc_autoreleasePoolPush();
      v23 = v18;
      v24 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        v25 = HMFGetLogIdentifier();
        v26 = [v21 count];
        *buf = 138543874;
        v42 = v25;
        v43 = 2048;
        v44 = v26;
        v45 = 2112;
        v46 = v16;
        _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_INFO, "%{public}@Successfully fetched count of %lu events with date interval: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v22);
      v27 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v21, "count", *MEMORY[0x277CCF540])}];
      v40 = v27;
      v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v40 forKeys:&v39 count:1];

      [messageCopy respondWithPayload:v28];
    }

    else
    {
      v33 = objc_autoreleasePoolPush();
      v34 = selfCopy;
      v35 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        v36 = HMFGetLogIdentifier();
        messagePayload3 = [messageCopy messagePayload];
        *buf = 138543618;
        v42 = v36;
        v43 = 2112;
        v44 = messagePayload3;
        _os_log_impl(&dword_229538000, v35, OS_LOG_TYPE_ERROR, "%{public}@Could not find required value in message payload: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v33);
      v16 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
      [messageCopy respondWithError:v16];
    }
  }

  else
  {
    v29 = objc_autoreleasePoolPush();
    v30 = selfCopy;
    v31 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v32 = HMFGetLogIdentifier();
      *buf = 138543362;
      v42 = v32;
      _os_log_impl(&dword_229538000, v31, OS_LOG_TYPE_ERROR, "%{public}@Cannot fetch count of events because zones are not ready", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v29);
    v13 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
    [messageCopy respondWithError:v13];
  }

  v38 = *MEMORY[0x277D85DE8];
}

- (void)handleFetchEventsMessage:(id)message
{
  v57 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  workQueue = [(HMDCameraRecordingReachabilityEventManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    shortDescription = [messageCopy shortDescription];
    *buf = 138543618;
    v50 = v9;
    v51 = 2112;
    v52 = shortDescription;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Received message to fetch events: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  localZone = [(HMDCameraRecordingReachabilityEventManager *)selfCopy localZone];

  if (localZone)
  {
    v12 = [messageCopy dateForKey:*MEMORY[0x277CCF548]];
    v13 = [messageCopy dateForKey:*MEMORY[0x277CCF550]];
    v14 = [messageCopy numberForKey:*MEMORY[0x277CCF558]];
    v15 = [messageCopy numberForKey:*MEMORY[0x277CCF568]];
    v16 = v15;
    if (v12 && v13 && v14 && v15)
    {
      v46 = v13;
      v17 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v12 endDate:v13];
      bOOLValue = [v16 BOOLValue];
      unsignedIntegerValue = [v14 unsignedIntegerValue];
      v20 = objc_autoreleasePoolPush();
      v21 = selfCopy;
      v22 = HMFGetOSLogHandle();
      v45 = v16;
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v23 = HMFGetLogIdentifier();
        HMFBooleanToString();
        v24 = v44 = v14;
        *buf = 138544130;
        v50 = v23;
        v51 = 2112;
        v52 = v17;
        v53 = 2048;
        v54 = unsignedIntegerValue;
        v55 = 2112;
        v56 = v24;
        _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_INFO, "%{public}@Fetching reachability event models with date interval: %@, limit: %lu, shouldOrderAscending: %@", buf, 0x2Au);

        v14 = v44;
      }

      objc_autoreleasePoolPop(v20);
      v25 = [(HMDCameraRecordingReachabilityEventManager *)v21 fetchReachabilityEventsWithDateInterval:v17];
      v26 = [v25 mutableCopy];

      if (bOOLValue)
      {
        v27 = &__block_literal_global_116_195280;
      }

      else
      {
        v27 = &__block_literal_global_118_195281;
      }

      [v26 sortUsingComparator:v27];
      v28 = v14;
      if ([v26 count] <= unsignedIntegerValue)
      {
        v29 = [v26 copy];
      }

      else
      {
        v29 = [v26 subarrayWithRange:{0, unsignedIntegerValue}];
      }

      v39 = v29;
      v13 = v46;
      v40 = [v29 na_map:&__block_literal_global_121];
      v47 = *MEMORY[0x277CCF578];
      v41 = encodeRootObjectForIncomingXPCMessage(v40, 0);
      v48 = v41;
      v42 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v48 forKeys:&v47 count:1];
      [messageCopy respondWithPayload:v42];

      v14 = v28;
      v16 = v45;
    }

    else
    {
      v34 = objc_autoreleasePoolPush();
      v35 = selfCopy;
      v36 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        v37 = HMFGetLogIdentifier();
        messagePayload = [messageCopy messagePayload];
        *buf = 138543618;
        v50 = v37;
        v51 = 2112;
        v52 = messagePayload;
        _os_log_impl(&dword_229538000, v36, OS_LOG_TYPE_ERROR, "%{public}@Could not find required value in message payload: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v34);
      v17 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
      [messageCopy respondWithError:v17];
    }
  }

  else
  {
    v30 = objc_autoreleasePoolPush();
    v31 = selfCopy;
    v32 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      v33 = HMFGetLogIdentifier();
      *buf = 138543362;
      v50 = v33;
      _os_log_impl(&dword_229538000, v32, OS_LOG_TYPE_ERROR, "%{public}@Cannot fetch events because zones are not ready", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v30);
    v12 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
    [messageCopy respondWithError:v12];
  }

  v43 = *MEMORY[0x277D85DE8];
}

uint64_t __71__HMDCameraRecordingReachabilityEventManager_handleFetchEventsMessage___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = [a3 dateOfOccurrence];
  v6 = [v4 dateOfOccurrence];

  v7 = [v5 compare:v6];
  return v7;
}

uint64_t __71__HMDCameraRecordingReachabilityEventManager_handleFetchEventsMessage___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 dateOfOccurrence];
  v6 = [v4 dateOfOccurrence];

  v7 = [v5 compare:v6];
  return v7;
}

- (void)handleRemoteCameraReachabilityDidChangeMessage:(id)message
{
  v14 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  workQueue = [(HMDCameraRecordingReachabilityEventManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v12 = 138543362;
    v13 = v9;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Received remote camera reachability change message", &v12, 0xCu);
  }

  objc_autoreleasePoolPop(v6);
  v10 = [(HMDCameraRecordingReachabilityEventManager *)selfCopy performCloudPullWithLabel:@"Fetching reachability events due to remote message"];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)handleAppleAccountSettingsHomeStateUpdated:(id)updated
{
  workQueue = [(HMDCameraRecordingReachabilityEventManager *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __89__HMDCameraRecordingReachabilityEventManager_handleAppleAccountSettingsHomeStateUpdated___block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(workQueue, block);
}

void __89__HMDCameraRecordingReachabilityEventManager_handleAppleAccountSettingsHomeStateUpdated___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = [*(a1 + 32) accountSettings];
    v12 = 138543618;
    v13 = v5;
    v14 = 2112;
    v15 = v6;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Received notification of updated home state for account settings: %@", &v12, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v7 = [*(a1 + 32) accountSettings];
  v8 = [v7 isHomeEnabled];

  if (v8)
  {
    v9 = [MEMORY[0x277CBEAA8] date];
    [*(a1 + 32) setSuppressNotificationsBeforeDate:v9];

    v10 = [*(a1 + 32) performCloudPullWithLabel:@"Fetching reachability events due to account settings changed"];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)handleBridgedAccessoryDisconnectedNotification:(id)notification
{
  workQueue = [(HMDCameraRecordingReachabilityEventManager *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __93__HMDCameraRecordingReachabilityEventManager_handleBridgedAccessoryDisconnectedNotification___block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(workQueue, block);
}

void __93__HMDCameraRecordingReachabilityEventManager_handleBridgedAccessoryDisconnectedNotification___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) hapAccessory];
  v3 = [v2 isPrimary];

  if ((v3 & 1) == 0)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 32);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      v8 = [*(a1 + 32) hapAccessory];
      v9 = [v8 shortDescription];
      v11 = 138543618;
      v12 = v7;
      v13 = 2112;
      v14 = v9;
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Bridged camera disconnected: %@", &v11, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    [*(a1 + 32) handleUpdatedCameraReachability:0];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)handleBridgedAccessoryConnectedNotification:(id)notification
{
  workQueue = [(HMDCameraRecordingReachabilityEventManager *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __90__HMDCameraRecordingReachabilityEventManager_handleBridgedAccessoryConnectedNotification___block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(workQueue, block);
}

void __90__HMDCameraRecordingReachabilityEventManager_handleBridgedAccessoryConnectedNotification___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) hapAccessory];
  v3 = [v2 isPrimary];

  if ((v3 & 1) == 0)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 32);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      v8 = [*(a1 + 32) hapAccessory];
      v9 = [v8 shortDescription];
      v11 = 138543618;
      v12 = v7;
      v13 = 2112;
      v14 = v9;
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Bridged camera connected: %@", &v11, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    [*(a1 + 32) handleUpdatedCameraReachability:1];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)handleAccessoryDisconnectedNotification:(id)notification
{
  workQueue = [(HMDCameraRecordingReachabilityEventManager *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __86__HMDCameraRecordingReachabilityEventManager_handleAccessoryDisconnectedNotification___block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(workQueue, block);
}

void __86__HMDCameraRecordingReachabilityEventManager_handleAccessoryDisconnectedNotification___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) hapAccessory];
  v3 = [v2 isPrimary];

  if (v3)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 32);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      v8 = [*(a1 + 32) hapAccessory];
      v9 = [v8 shortDescription];
      v11 = 138543618;
      v12 = v7;
      v13 = 2112;
      v14 = v9;
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Unconfigured camera: %@", &v11, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    [*(a1 + 32) handleUpdatedCameraReachability:0];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)handleAccessoryConnectedNotification:(id)notification
{
  workQueue = [(HMDCameraRecordingReachabilityEventManager *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __83__HMDCameraRecordingReachabilityEventManager_handleAccessoryConnectedNotification___block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(workQueue, block);
}

void __83__HMDCameraRecordingReachabilityEventManager_handleAccessoryConnectedNotification___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) hapAccessory];
  v3 = [v2 isPrimary];

  if (v3)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 32);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      v8 = [*(a1 + 32) hapAccessory];
      v9 = [v8 shortDescription];
      v11 = 138543618;
      v12 = v7;
      v13 = 2112;
      v14 = v9;
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Configured camera: %@", &v11, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    [*(a1 + 32) handleUpdatedCameraReachability:1];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)handleCameraProfileSettingsDidChange:(id)change
{
  changeCopy = change;
  workQueue = [(HMDCameraRecordingReachabilityEventManager *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __83__HMDCameraRecordingReachabilityEventManager_handleCameraProfileSettingsDidChange___block_invoke;
  v7[3] = &unk_27868A750;
  v7[4] = self;
  v8 = changeCopy;
  v6 = changeCopy;
  dispatch_async(workQueue, v7);
}

void __83__HMDCameraRecordingReachabilityEventManager_handleCameraProfileSettingsDidChange___block_invoke(uint64_t a1)
{
  v39 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v31 = 138543362;
    v32 = v5;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Received camera profile settings did change notification", &v31, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  v6 = [*(a1 + 32) currentSettings];
  v7 = [*(a1 + 40) userInfo];
  v8 = [v7 objectForKeyedSubscript:@"HMDCameraProfileSettingsNotificationKey"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  if (v10)
  {
    [*(a1 + 32) setCurrentSettings:v10];
    v11 = [*(a1 + 40) userInfo];
    v12 = [v11 hmf_BOOLForKey:@"HMDCameraProfileSettingsIsInitialSettingsUpdateNotificationKey"];

    if ((v12 & 1) == 0)
    {
      v13 = [v6 notificationSettings];
      v14 = [v13 isReachabilityEventNotificationEnabled];

      v15 = [v10 notificationSettings];
      v16 = [v15 isReachabilityEventNotificationEnabled];

      if ((v14 & 1) == 0)
      {
        if (v16)
        {
          v17 = objc_autoreleasePoolPush();
          v18 = *(a1 + 32);
          v19 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
          {
            v20 = HMFGetLogIdentifier();
            v31 = 138543362;
            v32 = v20;
            _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_INFO, "%{public}@Reachability event notifications are now enabled", &v31, 0xCu);
          }

          objc_autoreleasePoolPop(v17);
          v21 = [MEMORY[0x277CBEAA8] date];
          [*(a1 + 32) setSuppressNotificationsBeforeDate:v21];

          v22 = [*(a1 + 32) performCloudPullWithLabel:@"Fetching reachability events due to enabling notifications"];
        }
      }
    }
  }

  else
  {
    v23 = objc_autoreleasePoolPush();
    v24 = *(a1 + 32);
    v25 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = HMFGetLogIdentifier();
      v27 = objc_opt_class();
      v28 = [*(a1 + 40) userInfo];
      v29 = [v28 objectForKeyedSubscript:@"HMDCameraProfileSettingsNotificationKey"];
      v31 = 138544130;
      v32 = v26;
      v33 = 2112;
      v34 = @"HMDCameraProfileSettingsNotificationKey";
      v35 = 2112;
      v36 = v27;
      v37 = 2112;
      v38 = v29;
      _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_ERROR, "%{public}@Object for key %@ is not of expected type %@: %@", &v31, 0x2Au);
    }

    objc_autoreleasePoolPop(v23);
  }

  v30 = *MEMORY[0x277D85DE8];
}

- (void)handleResidentDeviceConfirmedStateChangedNotification:(id)notification
{
  workQueue = [(HMDCameraRecordingReachabilityEventManager *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __100__HMDCameraRecordingReachabilityEventManager_handleResidentDeviceConfirmedStateChangedNotification___block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(workQueue, block);
}

uint64_t __100__HMDCameraRecordingReachabilityEventManager_handleResidentDeviceConfirmedStateChangedNotification___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) hapAccessory];
  v3 = [v2 home];
  v4 = [v3 isCurrentDeviceConfirmedPrimaryResident];

  result = [*(a1 + 32) isCurrentDeviceConfirmedPrimaryResident];
  if (v4 != result)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = *(a1 + 32);
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      [*(a1 + 32) isCurrentDeviceConfirmedPrimaryResident];
      v10 = HMFBooleanToString();
      v11 = HMFBooleanToString();
      v13 = 138543874;
      v14 = v9;
      v15 = 2112;
      v16 = v10;
      v17 = 2112;
      v18 = v11;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Notified that isCurrentDeviceConfirmedPrimaryResident changed from %@ to %@", &v13, 0x20u);
    }

    objc_autoreleasePoolPop(v6);
    result = [*(a1 + 32) setCurrentDeviceConfirmedPrimaryResident:v4];
  }

  v12 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)insertBulletinForReachabilityEvent:(id)event
{
  v31 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  currentSettings = [(HMDCameraRecordingReachabilityEventManager *)self currentSettings];
  notificationSettings = [currentSettings notificationSettings];
  isReachabilityEventNotificationEnabled = [notificationSettings isReachabilityEventNotificationEnabled];

  accountSettings = [(HMDCameraRecordingReachabilityEventManager *)self accountSettings];
  isHomeEnabled = [accountSettings isHomeEnabled];

  v10 = objc_autoreleasePoolPush();
  selfCopy = self;
  v12 = HMFGetOSLogHandle();
  v13 = v12;
  if (isReachabilityEventNotificationEnabled && isHomeEnabled)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      v23 = 138543618;
      v24 = v14;
      v25 = 2114;
      v26 = eventCopy;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Inserting bulletin for new reachability event: %{public}@", &v23, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    bulletinBoard = [(HMDCameraRecordingReachabilityEventManager *)selfCopy bulletinBoard];
    hapAccessory = [(HMDCameraRecordingReachabilityEventManager *)selfCopy hapAccessory];
    isReachable = [eventCopy isReachable];
    dateOfOccurrence = [eventCopy dateOfOccurrence];
    [bulletinBoard insertReachabilityEventBulletinForAccessory:hapAccessory reachable:isReachable date:dateOfOccurrence];
  }

  else
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v19 = HMFGetLogIdentifier();
      v20 = HMFBooleanToString();
      v21 = HMFBooleanToString();
      v23 = 138544130;
      v24 = v19;
      v25 = 2112;
      v26 = eventCopy;
      v27 = 2112;
      v28 = v20;
      v29 = 2112;
      v30 = v21;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_DEBUG, "%{public}@Not inserting bulletin for new reachability event: %@ due to reachabilityEventNotificationEnabled: %@ and isHomeEnabled: %@", &v23, 0x2Au);
    }

    objc_autoreleasePoolPop(v10);
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (id)mostRecentReachabilityEventModelInModels:(id)models
{
  modelsCopy = models;
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__195308;
  v11 = __Block_byref_object_dispose__195309;
  v12 = 0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __87__HMDCameraRecordingReachabilityEventManager_mostRecentReachabilityEventModelInModels___block_invoke;
  v6[3] = &unk_27867EA28;
  v6[4] = &v7;
  [modelsCopy hmf_enumerateWithAutoreleasePoolUsingBlock:v6];
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __87__HMDCameraRecordingReachabilityEventManager_mostRecentReachabilityEventModelInModels___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  v10 = v4;
  if (v6)
  {
    v7 = [v6 dateOfOccurrence];
    v8 = [v10 dateOfOccurrence];
    v9 = [v7 compare:v8];

    if (v9 != -1)
    {
      goto LABEL_5;
    }

    v5 = *(*(a1 + 32) + 8);
  }

  objc_storeStrong((v5 + 40), a2);
LABEL_5:
}

- (void)startReachabilityChangeDebounceTimerWithReachability:(BOOL)reachability
{
  reachabilityCopy = reachability;
  v24 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDCameraRecordingReachabilityEventManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  if (reachabilityCopy)
  {
    [(HMDCameraRecordingReachabilityEventManager *)self reachabilityChangeReachableDebounceTimeout];
  }

  else
  {
    [(HMDCameraRecordingReachabilityEventManager *)self reachabilityChangeUnreachableDebounceTimeout];
  }

  v7 = v6;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v20 = 138543618;
    v21 = v11;
    v22 = 2048;
    v23 = v7;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Starting reachability change debounce timer with time interval of %fs", &v20, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  reachabilityChangeDebounceTimerFactory = [(HMDCameraRecordingReachabilityEventManager *)selfCopy reachabilityChangeDebounceTimerFactory];
  v13 = reachabilityChangeDebounceTimerFactory[2](reachabilityChangeDebounceTimerFactory, 0, v7);
  [(HMDCameraRecordingReachabilityEventManager *)selfCopy setReachabilityChangeDebounceTimer:v13];

  reachabilityChangeDebounceTimer = [(HMDCameraRecordingReachabilityEventManager *)selfCopy reachabilityChangeDebounceTimer];
  [reachabilityChangeDebounceTimer setDelegate:selfCopy];

  workQueue2 = [(HMDCameraRecordingReachabilityEventManager *)selfCopy workQueue];
  reachabilityChangeDebounceTimer2 = [(HMDCameraRecordingReachabilityEventManager *)selfCopy reachabilityChangeDebounceTimer];
  [reachabilityChangeDebounceTimer2 setDelegateQueue:workQueue2];

  reachabilityChangeDebounceTimer3 = [(HMDCameraRecordingReachabilityEventManager *)selfCopy reachabilityChangeDebounceTimer];
  [reachabilityChangeDebounceTimer3 resume];

  date = [MEMORY[0x277CBEAA8] date];
  [(HMDCameraRecordingReachabilityEventManager *)selfCopy setReachabilityChangeDebounceStartDate:date];

  v19 = *MEMORY[0x277D85DE8];
}

- (double)reachabilityChangeUnreachableDebounceTimeout
{
  mEMORY[0x277D0F8D0] = [MEMORY[0x277D0F8D0] sharedPreferences];
  v3 = [mEMORY[0x277D0F8D0] preferenceForKey:@"reachabilityChangeUnreachableDebounceTimeout"];
  numberValue = [v3 numberValue];

  [numberValue doubleValue];
  v6 = v5;

  return v6;
}

- (double)reachabilityChangeReachableDebounceTimeout
{
  mEMORY[0x277D0F8D0] = [MEMORY[0x277D0F8D0] sharedPreferences];
  v3 = [mEMORY[0x277D0F8D0] preferenceForKey:@"reachabilityChangeReachableDebounceTimeout"];
  numberValue = [v3 numberValue];

  [numberValue doubleValue];
  v6 = v5;

  return v6;
}

- (void)updateInitialReachabilityTimer
{
  v19 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDCameraRecordingReachabilityEventManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  if ([(HMDCameraRecordingReachabilityEventManager *)self shouldHandleReachabilityChanges])
  {
    v4 = objc_autoreleasePoolPush();
    selfCopy = self;
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      v17 = 138543362;
      v18 = v7;
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Starting initial reachability timer", &v17, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    [(HMDCameraRecordingReachabilityEventManager *)selfCopy setReachabilityChangeDebounceTimer:0];
    v8 = objc_alloc_init(MEMORY[0x277D2C900]);
    [(HMDCameraRecordingReachabilityEventManager *)selfCopy setDidHandleInitialReachabilityFuture:v8];

    initialReachabilityTimerFactory = [(HMDCameraRecordingReachabilityEventManager *)selfCopy initialReachabilityTimerFactory];
    [(HMDCameraRecordingReachabilityEventManager *)selfCopy initialReachabilityTimeout];
    v10 = initialReachabilityTimerFactory[2](initialReachabilityTimerFactory, 0);
    [(HMDCameraRecordingReachabilityEventManager *)selfCopy setInitialReachabilityTimer:v10];

    initialReachabilityTimer = [(HMDCameraRecordingReachabilityEventManager *)selfCopy initialReachabilityTimer];
    [initialReachabilityTimer setDelegate:selfCopy];

    workQueue2 = [(HMDCameraRecordingReachabilityEventManager *)selfCopy workQueue];
    initialReachabilityTimer2 = [(HMDCameraRecordingReachabilityEventManager *)selfCopy initialReachabilityTimer];
    [initialReachabilityTimer2 setDelegateQueue:workQueue2];

    initialReachabilityTimer3 = [(HMDCameraRecordingReachabilityEventManager *)selfCopy initialReachabilityTimer];
    [initialReachabilityTimer3 resume];

    v15 = *MEMORY[0x277D85DE8];
  }

  else
  {
    [(HMDCameraRecordingReachabilityEventManager *)self setInitialReachabilityTimer:0];
    v16 = *MEMORY[0x277D85DE8];

    [(HMDCameraRecordingReachabilityEventManager *)self setReachabilityChangeDebounceTimer:0];
  }
}

- (double)initialReachabilityTimeout
{
  mEMORY[0x277D0F8D0] = [MEMORY[0x277D0F8D0] sharedPreferences];
  v3 = [mEMORY[0x277D0F8D0] preferenceForKey:@"cameraInitialReachabilityTimeout"];
  numberValue = [v3 numberValue];

  [numberValue doubleValue];
  v6 = v5;

  return v6;
}

- (id)performCloudPullWithLabel:(id)label
{
  v27 = *MEMORY[0x277D85DE8];
  labelCopy = label;
  workQueue = [(HMDCameraRecordingReachabilityEventManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  cloudZone = [(HMDCameraRecordingReachabilityEventManager *)self cloudZone];

  if (cloudZone)
  {
    v7 = [MEMORY[0x277D17108] optionsWithLabel:labelCopy];
    cloudZone2 = [(HMDCameraRecordingReachabilityEventManager *)self cloudZone];
    v9 = [cloudZone2 performCloudPullWithOptions:v7];
    v10 = MEMORY[0x277D2C938];
    workQueue2 = [(HMDCameraRecordingReachabilityEventManager *)self workQueue];
    v12 = [v10 schedulerWithDispatchQueue:workQueue2];
    v13 = [v9 reschedule:v12];

    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __72__HMDCameraRecordingReachabilityEventManager_performCloudPullWithLabel___block_invoke;
    v23[3] = &unk_27868A1D8;
    v23[4] = self;
    v24 = v7;
    v14 = v7;
    v15 = [v13 addFailureBlock:v23];
  }

  else
  {
    v16 = objc_autoreleasePoolPush();
    selfCopy = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543362;
      v26 = v19;
      _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_ERROR, "%{public}@Cannot perform cloud pull because zones are not ready", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v16);
    v20 = MEMORY[0x277D2C900];
    v13 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
    v15 = [v20 futureWithError:v13];
  }

  v21 = *MEMORY[0x277D85DE8];

  return v15;
}

void __72__HMDCameraRecordingReachabilityEventManager_performCloudPullWithLabel___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
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
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_ERROR, "%{public}@Failed to perform cloud pull with options %@ due to error: %@", &v10, 0x20u);
  }

  objc_autoreleasePoolPop(v4);
  v9 = *MEMORY[0x277D85DE8];
}

- (void)submitLogEventWithCurrentModel:(id)model
{
  v28 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  v5 = 0.0;
  if ([modelCopy reachable])
  {
    mostRecentReachabilityEventModel = [(HMDCameraRecordingReachabilityEventManager *)self mostRecentReachabilityEventModel];
    if (!mostRecentReachabilityEventModel)
    {
      _HMFPreconditionFailure();
    }

    v7 = mostRecentReachabilityEventModel;
    dateOfOccurrence = [mostRecentReachabilityEventModel dateOfOccurrence];
    if (dateOfOccurrence)
    {
      dateOfOccurrence2 = [modelCopy dateOfOccurrence];
      [dateOfOccurrence2 timeIntervalSinceDate:dateOfOccurrence];
      v5 = v10;
    }

    else
    {
      v11 = objc_autoreleasePoolPush();
      selfCopy = self;
      v13 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
        v14 = HMFGetLogIdentifier();
        v15 = [v7 debugDescription];
        v24 = 138543618;
        v25 = v14;
        v26 = 2112;
        v27 = v15;
        _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_FAULT, "%{public}@Most recent reachability event model has no date of occurrence: %@", &v24, 0x16u);
      }

      objc_autoreleasePoolPop(v11);
    }
  }

  v16 = [HMDCameraRecordingReachabilityLogEvent alloc];
  if (modelCopy)
  {
    reachable = [modelCopy reachable];
  }

  else
  {
    reachable = [(HMDCameraRecordingReachabilityEventManager *)self currentCameraReachability];
  }

  v18 = reachable;
  reachabilityChangeDebounceCount = [(HMDCameraRecordingReachabilityEventManager *)self reachabilityChangeDebounceCount];
  hapAccessory = [(HMDCameraRecordingReachabilityEventManager *)self hapAccessory];
  v21 = [(HMDCameraRecordingReachabilityLogEvent *)v16 initWithReachability:v18 didCreateEventModel:modelCopy != 0 reachabilityChangeDebounceCount:reachabilityChangeDebounceCount offlineDuration:hapAccessory hapAccessory:v5];

  logEventSubmitter = [(HMDCameraRecordingReachabilityEventManager *)self logEventSubmitter];
  [logEventSubmitter submitLogEvent:v21];

  [(HMDCameraRecordingReachabilityEventManager *)self setReachabilityChangeDebounceCount:0];
  v23 = *MEMORY[0x277D85DE8];
}

- (void)notifyTransportOfUpdatedEvents:(id)events removedEventUUIDs:(id)ds
{
  v50 = *MEMORY[0x277D85DE8];
  eventsCopy = events;
  dsCopy = ds;
  workQueue = [(HMDCameraRecordingReachabilityEventManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  clientConnections = [(HMDCameraRecordingReachabilityEventManager *)self clientConnections];
  v10 = [clientConnections count];

  v11 = objc_autoreleasePoolPush();
  selfCopy = self;
  v13 = HMFGetOSLogHandle();
  v14 = v13;
  if (v10)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier();
      clientConnections2 = [(HMDCameraRecordingReachabilityEventManager *)selfCopy clientConnections];
      *buf = 138544130;
      v43 = v15;
      v44 = 2048;
      v45 = [clientConnections2 count];
      v46 = 2048;
      v47 = [eventsCopy count];
      v48 = 2048;
      v49 = [dsCopy count];
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, "%{public}@Notifying %lu subscribed transports of %lu updated events, %lu removed events", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v11);
    v40[0] = *MEMORY[0x277CCF570];
    v33 = eventsCopy;
    v17 = encodeRootObjectForIncomingXPCMessage(eventsCopy, 0);
    v40[1] = *MEMORY[0x277CCF560];
    v41[0] = v17;
    v32 = dsCopy;
    v41[1] = dsCopy;
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v41 forKeys:v40 count:2];

    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    obj = [(HMDCameraRecordingReachabilityEventManager *)selfCopy clientConnections];
    v19 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v36;
      v22 = *MEMORY[0x277CCF528];
      do
      {
        v23 = 0;
        do
        {
          if (*v36 != v21)
          {
            objc_enumerationMutation(obj);
          }

          v24 = *(*(&v35 + 1) + 8 * v23);
          v25 = [MEMORY[0x277D0F848] entitledMessageWithName:v22 messagePayload:v18];
          [v25 setTransport:v24];
          v26 = objc_alloc(MEMORY[0x277D0F820]);
          messageTargetUUID = [(HMDCameraRecordingReachabilityEventManager *)selfCopy messageTargetUUID];
          v28 = [v26 initWithTarget:messageTargetUUID];
          [v25 setDestination:v28];

          [v25 setRequiresCameraClipsEntitlement];
          messageDispatcher = [(HMDCameraRecordingReachabilityEventManager *)selfCopy messageDispatcher];
          [messageDispatcher sendMessage:v25];

          ++v23;
        }

        while (v20 != v23);
        v20 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
      }

      while (v20);
    }

    dsCopy = v32;
    eventsCopy = v33;
  }

  else
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v30 = HMFGetLogIdentifier();
      *buf = 138543874;
      v43 = v30;
      v44 = 2048;
      v45 = [eventsCopy count];
      v46 = 2048;
      v47 = [dsCopy count];
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_DEBUG, "%{public}@No subscribed transports to notify of %lu updated events, %lu removed events", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v11);
  }

  v31 = *MEMORY[0x277D85DE8];
}

- (void)notifyRemoteSubscribersOfCameraReachabilityEventModel:(id)model
{
  v70[3] = *MEMORY[0x277D85DE8];
  modelCopy = model;
  workQueue = [(HMDCameraRecordingReachabilityEventManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  hapAccessory = [(HMDCameraRecordingReachabilityEventManager *)self hapAccessory];
  v6 = hapAccessory;
  if (hapAccessory)
  {
    home = [hapAccessory home];
    v8 = home;
    if (home)
    {
      cameraBulletinNotificationManager = [home cameraBulletinNotificationManager];
      v10 = [cameraBulletinNotificationManager devicesToNotifyForCameraReachabilityForAccessory:v6];

      if ([v10 hmf_isEmpty])
      {
        v11 = objc_autoreleasePoolPush();
        selfCopy = self;
        v13 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          v14 = HMFGetLogIdentifier();
          *buf = 138543362;
          v61 = v14;
          _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@No devices need to be notified for accessory reachability event", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v11);
      }

      else
      {
        v49 = v8;
        v50 = v6;
        v69[0] = @"HMDRemoteCameraReachabilityDidChangeMessageKeyUUID";
        hmbModelID = [modelCopy hmbModelID];
        uUIDString = [hmbModelID UUIDString];
        v70[0] = uUIDString;
        v69[1] = @"HMDRemoteCameraReachabilityDidChangeMessageKeyDateOfOccurrence";
        dateOfOccurrence = [modelCopy dateOfOccurrence];
        v70[1] = dateOfOccurrence;
        v69[2] = @"HMDRemoteCameraReachabilityDidChangeMessageKeyIsReachable";
        v26 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(modelCopy, "reachable")}];
        v70[2] = v26;
        v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v70 forKeys:v69 count:3];

        v58 = 0u;
        v59 = 0u;
        v56 = 0u;
        v57 = 0u;
        v48 = v10;
        obj = v10;
        v55 = [obj countByEnumeratingWithState:&v56 objects:v68 count:16];
        if (v55)
        {
          v28 = *v57;
          p_superclass = HMDTimeBasedFlagNameSpecifier.superclass;
          v51 = *v57;
          do
          {
            for (i = 0; i != v55; ++i)
            {
              if (*v57 != v28)
              {
                objc_enumerationMutation(obj);
              }

              v31 = *(*(&v56 + 1) + 8 * i);
              v32 = objc_alloc((p_superclass + 229));
              v33 = [HMDRemoteDeviceMessageDestination alloc];
              uniqueIdentifier = [(HMDCameraRecordingReachabilityEventManager *)self uniqueIdentifier];
              v35 = [(HMDRemoteDeviceMessageDestination *)v33 initWithTarget:uniqueIdentifier device:v31];
              v36 = [v32 initWithName:@"HMDRemoteCameraReachabilityDidChangeMessage" destination:v35 payload:v27 type:3 timeout:1 secure:86400.0];

              v37 = objc_autoreleasePoolPush();
              selfCopy2 = self;
              v39 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
              {
                v40 = HMFGetLogIdentifier();
                shortDescription = [v31 shortDescription];
                hmbModelID2 = [modelCopy hmbModelID];
                [v36 shortDescription];
                v54 = v37;
                selfCopy3 = self;
                v45 = v44 = v27;
                *buf = 138544130;
                v61 = v40;
                v62 = 2112;
                v63 = shortDescription;
                v64 = 2114;
                v65 = hmbModelID2;
                v66 = 2114;
                v67 = v45;
                _os_log_impl(&dword_229538000, v39, OS_LOG_TYPE_INFO, "%{public}@Notifying device %@ of camera reachability event model %{public}@ using message: %{public}@", buf, 0x2Au);

                v27 = v44;
                self = selfCopy3;
                v37 = v54;

                p_superclass = (HMDTimeBasedFlagNameSpecifier + 8);
                v28 = v51;
              }

              objc_autoreleasePoolPop(v37);
              messageDispatcher = [(HMDCameraRecordingReachabilityEventManager *)selfCopy2 messageDispatcher];
              [messageDispatcher sendMessage:v36];
            }

            v55 = [obj countByEnumeratingWithState:&v56 objects:v68 count:16];
          }

          while (v55);
        }

        v8 = v49;
        v6 = v50;
        v10 = v48;
      }
    }

    else
    {
      v19 = objc_autoreleasePoolPush();
      selfCopy4 = self;
      v21 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v22 = HMFGetLogIdentifier();
        *buf = 138543362;
        v61 = v22;
        _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_ERROR, "%{public}@Home reference was nil when attempting to notify subscribers", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v19);
    }
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    selfCopy5 = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      *buf = 138543362;
      v61 = v18;
      _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_ERROR, "%{public}@HAP accessory reference was nil when attempting to notify subscribers", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v15);
  }

  v47 = *MEMORY[0x277D85DE8];
}

- (id)addCameraReachabilityEventModel:(id)model
{
  v4 = MEMORY[0x277D17108];
  modelCopy = model;
  v6 = [v4 optionsWithLabel:@"Create camera reachability event"];
  localZone = [(HMDCameraRecordingReachabilityEventManager *)self localZone];
  v8 = [MEMORY[0x277CBEB98] setWithObject:modelCopy];

  v9 = [localZone createModels:v8 options:v6];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __78__HMDCameraRecordingReachabilityEventManager_addCameraReachabilityEventModel___block_invoke;
  v17[3] = &unk_278686CE8;
  v17[4] = self;
  v10 = [v9 flatMap:v17];
  v11 = [v10 flatMap:&__block_literal_global_88_195338];
  v12 = MEMORY[0x277D2C938];
  workQueue = [(HMDCameraRecordingReachabilityEventManager *)self workQueue];
  v14 = [v12 schedulerWithDispatchQueue:workQueue];
  v15 = [v11 reschedule:v14];

  return v15;
}

id __78__HMDCameraRecordingReachabilityEventManager_addCameraReachabilityEventModel___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 mirrorOutputResult];

  if (v4)
  {
    v5 = [v3 mirrorOutputResult];
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
    v7 = *(a1 + 32);
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      v14 = 138543362;
      v15 = v9;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_ERROR, "%{public}@No mirrorOutputResult future provided", &v14, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    v10 = MEMORY[0x277D2C900];
    v11 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:15];
    v5 = [v10 futureWithError:v11];
  }

  v12 = *MEMORY[0x277D85DE8];

  return v5;
}

void __106__HMDCameraRecordingReachabilityEventManager_addCameraReachabilityEventWithReachability_dateOfOccurrence___block_invoke_2(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
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
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_ERROR, "%{public}@Failed to push event %@ to the cloud due to error: %@", &v10, 0x20u);
  }

  objc_autoreleasePoolPop(v4);
  v9 = *MEMORY[0x277D85DE8];
}

- (id)fetchMostRecentReachabilityEventModel
{
  v3 = [(HMDCameraRecordingReachabilityEventManager *)self performCloudPullWithLabel:@"Fetch most recent reachability event model"];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __83__HMDCameraRecordingReachabilityEventManager_fetchMostRecentReachabilityEventModel__block_invoke;
  v6[3] = &unk_2786837F8;
  v6[4] = self;
  v4 = [v3 flatMap:v6];

  return v4;
}

id __83__HMDCameraRecordingReachabilityEventManager_fetchMostRecentReachabilityEventModel__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) workQueue];
  dispatch_assert_queue_V2(v2);

  v3 = objc_alloc(MEMORY[0x277CCA970]);
  v4 = [MEMORY[0x277CBEAA8] distantPast];
  v5 = [MEMORY[0x277CBEAA8] distantFuture];
  v6 = [v3 initWithStartDate:v4 endDate:v5];

  v7 = [*(a1 + 32) fetchReachabilityEventsWithDateInterval:v6];
  v8 = [*(a1 + 32) mostRecentReachabilityEventModelInModels:v7];
  v9 = MEMORY[0x277D2C900];
  if (v8)
  {
    v10 = [MEMORY[0x277D2C900] futureWithResult:v8];
  }

  else
  {
    v11 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    v10 = [v9 futureWithError:v11];
  }

  return v10;
}

- (id)fetchReachabilityEventsWithDateInterval:(id)interval
{
  intervalCopy = interval;
  workQueue = [(HMDCameraRecordingReachabilityEventManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  localZone = [(HMDCameraRecordingReachabilityEventManager *)self localZone];
  v8 = [localZone queryModelsOfType:objc_opt_class()];

  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __86__HMDCameraRecordingReachabilityEventManager_fetchReachabilityEventsWithDateInterval___block_invoke;
  v16 = &unk_27867EA00;
  v17 = intervalCopy;
  v18 = v6;
  v9 = v6;
  v10 = intervalCopy;
  [v8 enumerateObjectsUsingBlock:&v13];
  v11 = [v9 copy];

  return v11;
}

void __86__HMDCameraRecordingReachabilityEventManager_fetchReachabilityEventsWithDateInterval___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6 = v3;
  v5 = [v3 dateOfOccurrence];
  LODWORD(v4) = [v4 containsDate:v5];

  if (v4)
  {
    [*(a1 + 40) addObject:v6];
  }
}

- (BOOL)shouldAddInitialReachabilityEventWithReachability:(BOOL)reachability mostRecentReachabilityEventModel:(id)model
{
  reachabilityCopy = reachability;
  modelCopy = model;
  workQueue = [(HMDCameraRecordingReachabilityEventManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  if (modelCopy)
  {
    reachabilityCopy ^= [modelCopy reachable];
  }

  else
  {
    LOBYTE(reachabilityCopy) = reachabilityCopy ^ 1;
  }

  return reachabilityCopy;
}

- (void)handleInitialCameraReachability
{
  workQueue = [(HMDCameraRecordingReachabilityEventManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  LOBYTE(workQueue) = [(HMDCameraRecordingReachabilityEventManager *)self currentCameraReachability];
  date = [MEMORY[0x277CBEAA8] date];
  [(HMDCameraRecordingReachabilityEventManager *)self setSuppressNotificationsBeforeDate:date];
  fetchMostRecentReachabilityEventModel = [(HMDCameraRecordingReachabilityEventManager *)self fetchMostRecentReachabilityEventModel];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __77__HMDCameraRecordingReachabilityEventManager_handleInitialCameraReachability__block_invoke;
  v8[3] = &unk_27867E9D8;
  v10 = workQueue;
  v8[4] = self;
  v9 = date;
  v6 = date;
  v7 = [fetchMostRecentReachabilityEventModel addCompletionBlock:v8];
}

void __77__HMDCameraRecordingReachabilityEventManager_handleInitialCameraReachability__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v35 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) workQueue];
  dispatch_assert_queue_V2(v7);

  v8 = [*(a1 + 32) mostRecentReachabilityEventModel];
  if (v8)
  {
    v9 = [v5 dateOfOccurrence];
    v10 = [v8 dateOfOccurrence];
    v11 = [v9 compare:v10];

    if (v11 == -1)
    {
      v12 = v8;

      v5 = v12;
    }
  }

  [*(a1 + 32) setMostRecentReachabilityEventModel:v5];
  v13 = objc_autoreleasePoolPush();
  v14 = *(a1 + 32);
  v15 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = HMFGetLogIdentifier();
    v28 = v13;
    v17 = v8;
    v18 = v5;
    v19 = v6;
    v20 = *(a1 + 48);
    v21 = [*(a1 + 32) mostRecentReachabilityEventModel];
    v22 = [v21 createEvent];
    *buf = 138543874;
    v30 = v16;
    v31 = 1024;
    v32 = v20;
    v6 = v19;
    v5 = v18;
    v8 = v17;
    v13 = v28;
    v33 = 2114;
    v34 = v22;
    _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@Determining should add initial reachability event using reachability: %{BOOL}d, most recent reachability event: %{public}@", buf, 0x1Cu);
  }

  objc_autoreleasePoolPop(v13);
  v23 = *(a1 + 32);
  v24 = *(a1 + 48);
  v25 = [v23 mostRecentReachabilityEventModel];
  LODWORD(v23) = [v23 shouldAddInitialReachabilityEventWithReachability:v24 mostRecentReachabilityEventModel:v25];

  if (v23)
  {
    [*(a1 + 32) setReachabilityChangeDebounceCount:1];
    [*(a1 + 32) addCameraReachabilityEventWithReachability:*(a1 + 48) dateOfOccurrence:*(a1 + 40)];
  }

  v26 = [*(a1 + 32) didHandleInitialReachabilityFuture];
  [v26 finishWithNoResult];

  v27 = *MEMORY[0x277D85DE8];
}

- (void)setCurrentDeviceConnectedToNetwork:(BOOL)network
{
  networkCopy = network;
  workQueue = [(HMDCameraRecordingReachabilityEventManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  if (self->_currentDeviceConnectedToNetwork != networkCopy)
  {
    self->_currentDeviceConnectedToNetwork = networkCopy;

    [(HMDCameraRecordingReachabilityEventManager *)self updateInitialReachabilityTimer];
  }
}

- (BOOL)isCurrentDeviceConnectedToNetwork
{
  workQueue = [(HMDCameraRecordingReachabilityEventManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  return self->_currentDeviceConnectedToNetwork;
}

- (void)setCurrentDeviceConfirmedPrimaryResident:(BOOL)resident
{
  residentCopy = resident;
  v21 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDCameraRecordingReachabilityEventManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  if (self->_currentDeviceConfirmedPrimaryResident != residentCopy)
  {
    self->_currentDeviceConfirmedPrimaryResident = residentCopy;
    [(HMDCameraRecordingReachabilityEventManager *)self updateInitialReachabilityTimer];
    hapAccessory = [(HMDCameraRecordingReachabilityEventManager *)self hapAccessory];
    if (hapAccessory)
    {
      notificationCenter = [(HMDCameraRecordingReachabilityEventManager *)self notificationCenter];
      v8 = notificationCenter;
      if (residentCopy)
      {
        [notificationCenter addObserver:self selector:sel_handleAccessoryConnectedNotification_ name:@"HMDAccessoryConnectedNotification" object:hapAccessory];

        notificationCenter2 = [(HMDCameraRecordingReachabilityEventManager *)self notificationCenter];
        [notificationCenter2 addObserver:self selector:sel_handleAccessoryDisconnectedNotification_ name:@"HMDAccessoryDisconnectedNotification" object:hapAccessory];

        notificationCenter3 = [(HMDCameraRecordingReachabilityEventManager *)self notificationCenter];
        [notificationCenter3 addObserver:self selector:sel_handleBridgedAccessoryConnectedNotification_ name:@"HMDBridgedAccessoryConnectedNotification" object:hapAccessory];

        notificationCenter4 = [(HMDCameraRecordingReachabilityEventManager *)self notificationCenter];
        [notificationCenter4 addObserver:self selector:sel_handleBridgedAccessoryDisconnectedNotification_ name:@"HMDBridgedAccessoryDisconnectedNotification" object:hapAccessory];
      }

      else
      {
        [notificationCenter removeObserver:self name:@"HMDAccessoryConnectedNotification" object:hapAccessory];

        notificationCenter5 = [(HMDCameraRecordingReachabilityEventManager *)self notificationCenter];
        [notificationCenter5 removeObserver:self name:@"HMDAccessoryDisconnectedNotification" object:hapAccessory];

        notificationCenter6 = [(HMDCameraRecordingReachabilityEventManager *)self notificationCenter];
        [notificationCenter6 removeObserver:self name:@"HMDBridgedAccessoryConnectedNotification" object:hapAccessory];

        notificationCenter4 = [(HMDCameraRecordingReachabilityEventManager *)self notificationCenter];
        [notificationCenter4 removeObserver:self name:@"HMDBridgedAccessoryDisconnectedNotification" object:hapAccessory];
      }
    }

    else
    {
      v12 = objc_autoreleasePoolPush();
      selfCopy = self;
      v14 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = HMFGetLogIdentifier();
        v19 = 138543362;
        v20 = v15;
        _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@Not updating notification registrations because accessory reference is nil", &v19, 0xCu);
      }

      objc_autoreleasePoolPop(v12);
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (BOOL)isCurrentDeviceConfirmedPrimaryResident
{
  workQueue = [(HMDCameraRecordingReachabilityEventManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  return self->_currentDeviceConfirmedPrimaryResident;
}

- (void)setCurrentSettings:(id)settings
{
  settingsCopy = settings;
  workQueue = [(HMDCameraRecordingReachabilityEventManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  LODWORD(workQueue) = isRecordingAllowedForSettings(self->_currentSettings);
  v6 = [settingsCopy copy];
  currentSettings = self->_currentSettings;
  self->_currentSettings = v6;

  v8 = isRecordingAllowedForSettings(settingsCopy);
  if (workQueue != v8)
  {

    [(HMDCameraRecordingReachabilityEventManager *)self updateInitialReachabilityTimer];
  }
}

- (_HMCameraUserSettings)currentSettings
{
  workQueue = [(HMDCameraRecordingReachabilityEventManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  currentSettings = self->_currentSettings;

  return currentSettings;
}

- (BOOL)shouldHandleReachabilityChanges
{
  currentSettings = [(HMDCameraRecordingReachabilityEventManager *)self currentSettings];
  v4 = isRecordingAllowedForSettings(currentSettings) && [(HMDCameraRecordingReachabilityEventManager *)self isCurrentDeviceConnectedToNetwork]&& [(HMDCameraRecordingReachabilityEventManager *)self isCurrentDeviceConfirmedPrimaryResident];

  return v4;
}

- (BOOL)isAccessoryReachable
{
  workQueue = [(HMDCameraRecordingReachabilityEventManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  hapAccessory = [(HMDCameraRecordingReachabilityEventManager *)self hapAccessory];
  v5 = hapAccessory;
  if (hapAccessory)
  {
    if ([hapAccessory isPrimary])
    {
      isSecuritySessionOpen = [v5 isSecuritySessionOpen];
    }

    else
    {
      isSecuritySessionOpen = [v5 isBridgedAccessoryConnected];
    }

    v7 = isSecuritySessionOpen;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)cleanUpEvents
{
  v33 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDCameraRecordingReachabilityEventManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v4 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-*MEMORY[0x277CCF518]];
  v5 = objc_alloc(MEMORY[0x277CCA970]);
  distantPast = [MEMORY[0x277CBEAA8] distantPast];
  v7 = [v5 initWithStartDate:distantPast endDate:v4];

  v8 = [(HMDCameraRecordingReachabilityEventManager *)self fetchReachabilityEventsWithDateInterval:v7];
  if ([v8 count] > 1)
  {
    v13 = [(HMDCameraRecordingReachabilityEventManager *)self mostRecentReachabilityEventModelInModels:v8];
    v14 = MEMORY[0x277CBEB98];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __59__HMDCameraRecordingReachabilityEventManager_cleanUpEvents__block_invoke;
    v27[3] = &unk_27867E9B0;
    v15 = v13;
    v28 = v15;
    v16 = [v8 na_map:v27];
    v17 = [v14 setWithArray:v16];

    v18 = objc_autoreleasePoolPush();
    selfCopy = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = HMFGetLogIdentifier();
      v22 = [v17 count];
      *buf = 138543618;
      v30 = v21;
      v31 = 2048;
      v32 = v22;
      _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_INFO, "%{public}@Removing %lu expired records", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v18);
    v23 = [MEMORY[0x277D17108] optionsWithLabel:@"Remove expired camera reachability event records"];
    [v23 setShouldEnqueueMirrorOutput:0];
    localZone = [(HMDCameraRecordingReachabilityEventManager *)selfCopy localZone];
    v25 = [localZone removeModelIDs:v17 options:v23];
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543362;
      v30 = v12;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_DEBUG, "%{public}@No expired models to delete", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
  }

  v26 = *MEMORY[0x277D85DE8];
}

id __59__HMDCameraRecordingReachabilityEventManager_cleanUpEvents__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 hmbModelID];
  v5 = [*(a1 + 32) hmbModelID];
  v6 = [v4 isEqual:v5];

  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = [v3 hmbModelID];
  }

  return v7;
}

- (void)configureWithMessageDispatcher:(id)dispatcher currentSettings:(id)settings isCurrentDeviceConfirmedPrimaryResident:(BOOL)resident isCurrentDeviceConnectedToNetwork:(BOOL)network
{
  networkCopy = network;
  residentCopy = resident;
  v69 = *MEMORY[0x277D85DE8];
  dispatcherCopy = dispatcher;
  settingsCopy = settings;
  workQueue = [(HMDCameraRecordingReachabilityEventManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v12 = objc_autoreleasePoolPush();
  selfCopy = self;
  v14 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = HMFGetLogIdentifier();
    v16 = HMFBooleanToString();
    v17 = HMFBooleanToString();
    *buf = 138544130;
    v62 = v15;
    v63 = 2112;
    v64 = settingsCopy;
    v65 = 2112;
    v66 = v16;
    v67 = 2112;
    v68 = v17;
    _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, "%{public}@Configuring with current settings: %@, isCurrentDeviceConfirmedPrimaryResident: %@, isCurrentDeviceConnectedToNetwork: %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v12);
  hapAccessory = [(HMDCameraRecordingReachabilityEventManager *)selfCopy hapAccessory];
  home = [hapAccessory home];
  [(HMDCameraRecordingReachabilityEventManager *)selfCopy setMessageDispatcher:dispatcherCopy];
  v20 = [HMDXPCMessagePolicy policyWithEntitlements:133];
  v21 = [HMDUserMessagePolicy userMessagePolicyWithHome:home userPrivilege:0 remoteAccessRequired:0 requiresCameraStreamingAccess:1];
  [HMDUserMessagePolicy userMessagePolicyWithHome:home userPrivilege:4 remoteAccessRequired:0];
  v22 = v51 = networkCopy;
  messageDispatcher = [(HMDCameraRecordingReachabilityEventManager *)selfCopy messageDispatcher];
  +[HMDRemoteMessagePolicy defaultSecurePolicy];
  v24 = v52 = dispatcherCopy;
  v60[0] = v24;
  v60[1] = v21;
  v50 = settingsCopy;
  v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v60 count:2];
  [messageDispatcher registerForMessage:@"HMDRemoteCameraReachabilityDidChangeMessage" receiver:selfCopy policies:v25 selector:sel_handleRemoteCameraReachabilityDidChangeMessage_];

  messageDispatcher2 = [(HMDCameraRecordingReachabilityEventManager *)selfCopy messageDispatcher];
  v27 = *MEMORY[0x277CCF538];
  v59[0] = v20;
  v59[1] = v21;
  v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v59 count:2];
  [messageDispatcher2 registerForMessage:v27 receiver:selfCopy policies:v28 selector:sel_handleFetchEventsMessage_];

  messageDispatcher3 = [(HMDCameraRecordingReachabilityEventManager *)selfCopy messageDispatcher];
  v30 = *MEMORY[0x277CCF530];
  v58[0] = v20;
  v58[1] = v21;
  v31 = [MEMORY[0x277CBEA60] arrayWithObjects:v58 count:2];
  [messageDispatcher3 registerForMessage:v30 receiver:selfCopy policies:v31 selector:sel_handleFetchCountOfEventsMessage_];

  messageDispatcher4 = [(HMDCameraRecordingReachabilityEventManager *)selfCopy messageDispatcher];
  v33 = *MEMORY[0x277CCF588];
  v57[0] = v20;
  v57[1] = v21;
  v34 = [MEMORY[0x277CBEA60] arrayWithObjects:v57 count:2];
  [messageDispatcher4 registerForMessage:v33 receiver:selfCopy policies:v34 selector:sel_handleSubscribeMessage_];

  messageDispatcher5 = [(HMDCameraRecordingReachabilityEventManager *)selfCopy messageDispatcher];
  v36 = *MEMORY[0x277CCF590];
  v56[0] = v20;
  v56[1] = v21;
  v37 = [MEMORY[0x277CBEA60] arrayWithObjects:v56 count:2];
  [messageDispatcher5 registerForMessage:v36 receiver:selfCopy policies:v37 selector:sel_handleUnsubscribeMessage_];

  messageDispatcher6 = [(HMDCameraRecordingReachabilityEventManager *)selfCopy messageDispatcher];
  v39 = *MEMORY[0x277CCF580];
  v55[0] = v20;
  v55[1] = v21;
  v40 = [MEMORY[0x277CBEA60] arrayWithObjects:v55 count:2];
  [messageDispatcher6 registerForMessage:v39 receiver:selfCopy policies:v40 selector:sel_handlePerformCloudPullMessage_];

  v41 = [HMDConfigurationMessagePolicy policyWithOperationTypes:4];
  messageDispatcher7 = [(HMDCameraRecordingReachabilityEventManager *)selfCopy messageDispatcher];
  v43 = *MEMORY[0x277CCF520];
  v54[0] = v20;
  v54[1] = v22;
  v54[2] = v41;
  v44 = [MEMORY[0x277CBEA60] arrayWithObjects:v54 count:3];
  [messageDispatcher7 registerForMessage:v43 receiver:selfCopy policies:v44 selector:sel_handleDeleteAllEventsMessage_];

  notificationCenter = [(HMDCameraRecordingReachabilityEventManager *)selfCopy notificationCenter];
  [notificationCenter addObserver:selfCopy selector:sel_handleResidentDeviceConfirmedStateChangedNotification_ name:@"HMDResidentDeviceConfirmedStateChangedNotification" object:0];

  notificationCenter2 = [(HMDCameraRecordingReachabilityEventManager *)selfCopy notificationCenter];
  [notificationCenter2 addObserver:selfCopy selector:sel_handleCameraProfileSettingsDidChange_ name:@"HMDCameraProfileSettingsDidChangeNotification" object:hapAccessory];

  notificationCenter3 = [(HMDCameraRecordingReachabilityEventManager *)selfCopy notificationCenter];
  accountSettings = [(HMDCameraRecordingReachabilityEventManager *)selfCopy accountSettings];
  [notificationCenter3 addObserver:selfCopy selector:sel_handleAppleAccountSettingsHomeStateUpdated_ name:@"HMDAppleAccountSettingsHomeStateUpdatedNotification" object:accountSettings];

  [(HMDCameraRecordingReachabilityEventManager *)selfCopy setCurrentSettings:v50];
  [(HMDCameraRecordingReachabilityEventManager *)selfCopy setCurrentDeviceConfirmedPrimaryResident:residentCopy];
  [(HMDCameraRecordingReachabilityEventManager *)selfCopy setCurrentDeviceConnectedToNetwork:v51];

  v49 = *MEMORY[0x277D85DE8];
}

- (HMDCameraRecordingReachabilityEventManager)initWithHAPAccessory:(id)accessory zoneName:(id)name workQueue:(id)queue
{
  queueCopy = queue;
  accessoryCopy = accessory;
  uuid = [accessoryCopy uuid];
  v10 = +[HMDBulletinBoard sharedBulletinBoard];
  v11 = +[HMDMetricsManager sharedLogEventSubmitter];
  v12 = +[HMDAppleAccountSettings sharedSettings];
  v13 = objc_alloc_init(HMDFeaturesDataSource);
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v15 = [(HMDCameraRecordingReachabilityEventManager *)self initWithAccessory:accessoryCopy workQueue:queueCopy identifier:uuid bulletinBoard:v10 logEventSubmitter:v11 accountSettings:v12 featuresDataSource:v13 notificationCenter:defaultCenter];

  return v15;
}

- (HMDCameraRecordingReachabilityEventManager)initWithAccessory:(id)accessory workQueue:(id)queue identifier:(id)identifier bulletinBoard:(id)board logEventSubmitter:(id)submitter accountSettings:(id)settings featuresDataSource:(id)source notificationCenter:(id)self0
{
  obj = accessory;
  queueCopy = queue;
  identifierCopy = identifier;
  boardCopy = board;
  submitterCopy = submitter;
  settingsCopy = settings;
  sourceCopy = source;
  centerCopy = center;
  v35.receiver = self;
  v35.super_class = HMDCameraRecordingReachabilityEventManager;
  v18 = [(HMDCameraRecordingReachabilityEventManager *)&v35 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_uniqueIdentifier, identifier);
    objc_storeWeak(&v19->_hapAccessory, obj);
    objc_storeStrong(&v19->_workQueue, queue);
    objc_storeStrong(&v19->_bulletinBoard, board);
    objc_storeStrong(&v19->_logEventSubmitter, submitter);
    objc_storeStrong(&v19->_accountSettings, settings);
    objc_storeStrong(&v19->_featuresDataSource, source);
    objc_storeStrong(&v19->_notificationCenter, center);
    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    clientConnections = v19->_clientConnections;
    v19->_clientConnections = weakObjectsHashTable;

    distantPast = [MEMORY[0x277CBEAA8] distantPast];
    suppressNotificationsBeforeDate = v19->_suppressNotificationsBeforeDate;
    v19->_suppressNotificationsBeforeDate = distantPast;

    v24 = objc_alloc_init(MEMORY[0x277D2C900]);
    didHandleInitialReachabilityFuture = v19->_didHandleInitialReachabilityFuture;
    v19->_didHandleInitialReachabilityFuture = v24;

    initialReachabilityTimerFactory = v19->_initialReachabilityTimerFactory;
    v19->_initialReachabilityTimerFactory = &__block_literal_global_195389;

    reachabilityChangeDebounceTimerFactory = v19->_reachabilityChangeDebounceTimerFactory;
    v19->_reachabilityChangeDebounceTimerFactory = &__block_literal_global_24_195390;
  }

  return v19;
}

id __171__HMDCameraRecordingReachabilityEventManager_initWithAccessory_workQueue_identifier_bulletinBoard_logEventSubmitter_accountSettings_featuresDataSource_notificationCenter___block_invoke_2(double a1, uint64_t a2, uint64_t a3)
{
  v3 = [objc_alloc(MEMORY[0x277D0F920]) initWithTimeInterval:a3 options:a1];

  return v3;
}

id __171__HMDCameraRecordingReachabilityEventManager_initWithAccessory_workQueue_identifier_bulletinBoard_logEventSubmitter_accountSettings_featuresDataSource_notificationCenter___block_invoke(double a1, uint64_t a2, uint64_t a3)
{
  v3 = [objc_alloc(MEMORY[0x277D0F920]) initWithTimeInterval:a3 options:a1];

  return v3;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t66_195398 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t66_195398, &__block_literal_global_128_195399);
  }

  v3 = logCategory__hmf_once_v67_195400;

  return v3;
}

void __57__HMDCameraRecordingReachabilityEventManager_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v67_195400;
  logCategory__hmf_once_v67_195400 = v1;
}

@end