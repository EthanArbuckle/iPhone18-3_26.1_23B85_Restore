@interface HMDCameraRecordingReachabilityEventManager
+ (id)logCategory;
- (BOOL)isAccessoryReachable;
- (BOOL)isCurrentDeviceConfirmedPrimaryResident;
- (BOOL)isCurrentDeviceConnectedToNetwork;
- (BOOL)shouldAddInitialReachabilityEventWithReachability:(BOOL)a3 mostRecentReachabilityEventModel:(id)a4;
- (BOOL)shouldHandleReachabilityChanges;
- (HMDCameraRecordingReachabilityEventManager)initWithAccessory:(id)a3 workQueue:(id)a4 identifier:(id)a5 bulletinBoard:(id)a6 logEventSubmitter:(id)a7 accountSettings:(id)a8 featuresDataSource:(id)a9 notificationCenter:(id)a10;
- (HMDCameraRecordingReachabilityEventManager)initWithHAPAccessory:(id)a3 zoneName:(id)a4 workQueue:(id)a5;
- (HMDHAPAccessory)hapAccessory;
- (_HMCameraUserSettings)currentSettings;
- (double)initialReachabilityTimeout;
- (double)reachabilityChangeReachableDebounceTimeout;
- (double)reachabilityChangeUnreachableDebounceTimeout;
- (id)addCameraReachabilityEventModel:(id)a3;
- (id)fetchMostRecentReachabilityEventModel;
- (id)fetchReachabilityEventsWithDateInterval:(id)a3;
- (id)logIdentifier;
- (id)mostRecentReachabilityEventModelInModels:(id)a3;
- (id)performCloudPullWithLabel:(id)a3;
- (void)cleanUpEvents;
- (void)clipManagerDidStart:(id)a3;
- (void)clipManagerDidStop:(id)a3;
- (void)configureWithMessageDispatcher:(id)a3 currentSettings:(id)a4 isCurrentDeviceConfirmedPrimaryResident:(BOOL)a5 isCurrentDeviceConnectedToNetwork:(BOOL)a6;
- (void)handleAccessoryConnectedNotification:(id)a3;
- (void)handleAccessoryDisconnectedNotification:(id)a3;
- (void)handleAppleAccountSettingsHomeStateUpdated:(id)a3;
- (void)handleBridgedAccessoryConnectedNotification:(id)a3;
- (void)handleBridgedAccessoryDisconnectedNotification:(id)a3;
- (void)handleCameraProfileSettingsDidChange:(id)a3;
- (void)handleDeleteAllEventsMessage:(id)a3;
- (void)handleFetchCountOfEventsMessage:(id)a3;
- (void)handleFetchEventsMessage:(id)a3;
- (void)handleInitialCameraReachability;
- (void)handlePerformCloudPullMessage:(id)a3;
- (void)handleRemoteCameraReachabilityDidChangeMessage:(id)a3;
- (void)handleResidentDeviceConfirmedStateChangedNotification:(id)a3;
- (void)handleSubscribeMessage:(id)a3;
- (void)handleUnsubscribeMessage:(id)a3;
- (void)insertBulletinForReachabilityEvent:(id)a3;
- (void)localZone:(id)a3 didProcessModelCreation:(id)a4;
- (void)localZone:(id)a3 didProcessModelDeletion:(id)a4;
- (void)localZone:(id)a3 didProcessModelUpdate:(id)a4;
- (void)networkMonitorIsReachable:(id)a3;
- (void)networkMonitorIsUnreachable:(id)a3;
- (void)notifyRemoteSubscribersOfCameraReachabilityEventModel:(id)a3;
- (void)notifyTransportOfUpdatedEvents:(id)a3 removedEventUUIDs:(id)a4;
- (void)setCurrentDeviceConfirmedPrimaryResident:(BOOL)a3;
- (void)setCurrentDeviceConnectedToNetwork:(BOOL)a3;
- (void)setCurrentSettings:(id)a3;
- (void)startReachabilityChangeDebounceTimerWithReachability:(BOOL)a3;
- (void)submitLogEventWithCurrentModel:(id)a3;
- (void)timerDidFire:(id)a3;
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
  v3 = [(HMDCameraRecordingReachabilityEventManager *)self hapAccessory];
  if (isInternalBuild())
  {
    v4 = MEMORY[0x277CCACA8];
    v5 = [v3 home];
    v6 = [v5 name];
    v7 = [v3 name];
    v8 = [(HMDCameraRecordingReachabilityEventManager *)self uniqueIdentifier];
    v9 = [v4 stringWithFormat:@"%@/%@/%@", v6, v7, v8];
  }

  else
  {
    v5 = [(HMDCameraRecordingReachabilityEventManager *)self uniqueIdentifier];
    v9 = [v5 UUIDString];
  }

  return v9;
}

- (void)networkMonitorIsUnreachable:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDCameraRecordingReachabilityEventManager *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v11 = 138543362;
    v12 = v9;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Received network monitor is unreachable", &v11, 0xCu);
  }

  objc_autoreleasePoolPop(v6);
  [(HMDCameraRecordingReachabilityEventManager *)v7 setCurrentDeviceConnectedToNetwork:0];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)networkMonitorIsReachable:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDCameraRecordingReachabilityEventManager *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v11 = 138543362;
    v12 = v9;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Received network monitor is reachable", &v11, 0xCu);
  }

  objc_autoreleasePoolPop(v6);
  [(HMDCameraRecordingReachabilityEventManager *)v7 setCurrentDeviceConnectedToNetwork:1];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)timerDidFire:(id)a3
{
  v37 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDCameraRecordingReachabilityEventManager *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(HMDCameraRecordingReachabilityEventManager *)self initialReachabilityTimer];

  if (v6 == v4)
  {
    v21 = [(HMDCameraRecordingReachabilityEventManager *)self isAccessoryReachable];
    v22 = objc_autoreleasePoolPush();
    v23 = self;
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
    [(HMDCameraRecordingReachabilityEventManager *)v23 setLastKnownCameraReachability:v21];
    [(HMDCameraRecordingReachabilityEventManager *)v23 setCurrentCameraReachability:v21];
    [(HMDCameraRecordingReachabilityEventManager *)v23 setInitialReachabilityTimer:0];
    [(HMDCameraRecordingReachabilityEventManager *)v23 handleInitialCameraReachability];
  }

  else
  {
    v7 = [(HMDCameraRecordingReachabilityEventManager *)self reachabilityChangeDebounceTimer];

    if (v7 == v4)
    {
      v8 = objc_autoreleasePoolPush();
      v9 = self;
      v10 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = HMFGetLogIdentifier();
        [(HMDCameraRecordingReachabilityEventManager *)v9 lastKnownCameraReachability];
        v12 = HMFBooleanToString();
        [(HMDCameraRecordingReachabilityEventManager *)v9 currentCameraReachability];
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
      v14 = [(HMDCameraRecordingReachabilityEventManager *)v9 lastKnownCameraReachability];
      if (v14 == [(HMDCameraRecordingReachabilityEventManager *)v9 currentCameraReachability])
      {
        [(HMDCameraRecordingReachabilityEventManager *)v9 submitLogEventWithCurrentModel:0];
      }

      else
      {
        [(HMDCameraRecordingReachabilityEventManager *)v9 setLastKnownCameraReachability:[(HMDCameraRecordingReachabilityEventManager *)v9 currentCameraReachability]];
        v15 = [(HMDCameraRecordingReachabilityEventManager *)v9 currentCameraReachability];
        v16 = [(HMDCameraRecordingReachabilityEventManager *)v9 reachabilityChangeDebounceStartDate];
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 3221225472;
        aBlock[2] = __59__HMDCameraRecordingReachabilityEventManager_timerDidFire___block_invoke;
        aBlock[3] = &unk_27867EA90;
        v30 = v15;
        aBlock[4] = v9;
        v29 = v16;
        v17 = v16;
        v18 = _Block_copy(aBlock);
        v19 = [(HMDCameraRecordingReachabilityEventManager *)v9 didHandleInitialReachabilityFuture];
        v20 = [v19 addSuccessBlock:v18];
      }

      [(HMDCameraRecordingReachabilityEventManager *)v9 setReachabilityChangeDebounceTimer:0];
    }
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (void)clipManagerDidStop:(id)a3
{
  v4 = [(HMDCameraRecordingReachabilityEventManager *)self workQueue];
  dispatch_assert_queue_V2(v4);

  [(HMDCameraRecordingReachabilityEventManager *)self setLocalZone:0];

  [(HMDCameraRecordingReachabilityEventManager *)self setCloudZone:0];
}

- (void)clipManagerDidStart:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDCameraRecordingReachabilityEventManager *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [v4 localZone];
  [(HMDCameraRecordingReachabilityEventManager *)self setLocalZone:v6];

  v7 = [v4 cloudZone];
  [(HMDCameraRecordingReachabilityEventManager *)self setCloudZone:v7];

  v8 = [(HMDCameraRecordingReachabilityEventManager *)self localZone];
  [v8 addObserverForAllModels:self];

  [(HMDCameraRecordingReachabilityEventManager *)self cleanUpEvents];
  v9 = [(HMDCameraRecordingReachabilityEventManager *)self cloudZone];
  v10 = [v9 hasPerformedInitialFetch];

  if ((v10 & 1) == 0)
  {
    v11 = objc_autoreleasePoolPush();
    v12 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      v15 = [(HMDCameraRecordingReachabilityEventManager *)v12 suppressNotificationsBeforeDate];
      v18 = 138543618;
      v19 = v14;
      v20 = 2112;
      v21 = v15;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Suppressing all reachability notifications before %@", &v18, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    v16 = [MEMORY[0x277CBEAA8] date];
    [(HMDCameraRecordingReachabilityEventManager *)v12 setSuppressNotificationsBeforeDate:v16];
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)localZone:(id)a3 didProcessModelUpdate:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v11 = HMFGetLogIdentifier();
    v13 = 138543618;
    v14 = v11;
    v15 = 2112;
    v16 = v7;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_DEBUG, "%{public}@Received model update: %@", &v13, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  v12 = *MEMORY[0x277D85DE8];
}

- (void)localZone:(id)a3 didProcessModelDeletion:(id)a4
{
  v5 = a4;
  v6 = [(HMDCameraRecordingReachabilityEventManager *)self workQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __80__HMDCameraRecordingReachabilityEventManager_localZone_didProcessModelDeletion___block_invoke;
  v8[3] = &unk_27868A750;
  v9 = v5;
  v10 = self;
  v7 = v5;
  dispatch_sync(v6, v8);
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

- (void)localZone:(id)a3 didProcessModelCreation:(id)a4
{
  v5 = a4;
  v6 = [(HMDCameraRecordingReachabilityEventManager *)self workQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __80__HMDCameraRecordingReachabilityEventManager_localZone_didProcessModelCreation___block_invoke;
  v8[3] = &unk_27868A750;
  v9 = v5;
  v10 = self;
  v7 = v5;
  dispatch_sync(v6, v8);
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

- (void)handleDeleteAllEventsMessage:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDCameraRecordingReachabilityEventManager *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    *buf = 138543362;
    v28 = v9;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Handling delete all reachability events message", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v6);
  v10 = [(HMDCameraRecordingReachabilityEventManager *)v7 localZone];

  if (v10)
  {
    v11 = [(HMDCameraRecordingReachabilityEventManager *)v7 localZone];
    v26 = objc_opt_class();
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v26 count:1];
    v13 = MEMORY[0x277D17108];
    v14 = [v4 name];
    v15 = [v13 optionsWithLabel:v14];
    v16 = [v11 removeAllModelsOfTypes:v12 options:v15];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __75__HMDCameraRecordingReachabilityEventManager_handleDeleteAllEventsMessage___block_invoke;
    v24[3] = &unk_278681178;
    v25 = v4;
    v17 = [v16 addCompletionBlock:v24];

    v18 = v25;
  }

  else
  {
    v19 = objc_autoreleasePoolPush();
    v20 = v7;
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
    [v4 respondWithError:v18];
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)handlePerformCloudPullMessage:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDCameraRecordingReachabilityEventManager *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    *buf = 138543362;
    v21 = v9;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Handling perform cloud pull message", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v6);
  v10 = [(HMDCameraRecordingReachabilityEventManager *)v7 performCloudPullWithLabel:@"Fetching reachability events due to client request"];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __76__HMDCameraRecordingReachabilityEventManager_handlePerformCloudPullMessage___block_invoke;
  v18[3] = &unk_27868A200;
  v11 = v4;
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

- (void)handleUnsubscribeMessage:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDCameraRecordingReachabilityEventManager *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v22 = 138543362;
    v23 = v9;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Handling unsubscribe message", &v22, 0xCu);
  }

  objc_autoreleasePoolPop(v6);
  v10 = [v4 transport];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  if (v12)
  {
    v13 = [(HMDCameraRecordingReachabilityEventManager *)v7 clientConnections];
    [v13 removeObject:v12];

    [v4 respondWithSuccess];
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    v15 = v7;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      v18 = objc_opt_class();
      v19 = [v4 transport];
      v22 = 138543874;
      v23 = v17;
      v24 = 2112;
      v25 = v18;
      v26 = 2112;
      v27 = v19;
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_ERROR, "%{public}@Unsubscribing transport was not of expected class %@: %@", &v22, 0x20u);
    }

    objc_autoreleasePoolPop(v14);
    v20 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
    [v4 respondWithError:v20];
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)handleSubscribeMessage:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDCameraRecordingReachabilityEventManager *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v22 = 138543362;
    v23 = v9;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Handling subscribe message", &v22, 0xCu);
  }

  objc_autoreleasePoolPop(v6);
  v10 = [v4 transport];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  if (v12)
  {
    v13 = [(HMDCameraRecordingReachabilityEventManager *)v7 clientConnections];
    [v13 addObject:v12];

    [v4 respondWithSuccess];
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    v15 = v7;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      v18 = objc_opt_class();
      v19 = [v4 transport];
      v22 = 138543874;
      v23 = v17;
      v24 = 2112;
      v25 = v18;
      v26 = 2112;
      v27 = v19;
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_ERROR, "%{public}@Subscribing transport was not of expected class %@: %@", &v22, 0x20u);
    }

    objc_autoreleasePoolPop(v14);
    v20 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
    [v4 respondWithError:v20];
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)handleFetchCountOfEventsMessage:(id)a3
{
  v47 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDCameraRecordingReachabilityEventManager *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v10 = [v4 shortDescription];
    *buf = 138543618;
    v42 = v9;
    v43 = 2112;
    v44 = v10;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Received message to fetch count of events: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  v11 = [(HMDCameraRecordingReachabilityEventManager *)v7 localZone];

  if (v11)
  {
    v12 = [v4 messagePayload];
    v13 = [v12 hmf_dateForKey:*MEMORY[0x277CCF548]];

    v14 = [v4 messagePayload];
    v15 = [v14 hmf_dateForKey:*MEMORY[0x277CCF550]];

    if (v13 && v15)
    {
      v16 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v13 endDate:v15];
      v17 = objc_autoreleasePoolPush();
      v18 = v7;
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

      [v4 respondWithPayload:v28];
    }

    else
    {
      v33 = objc_autoreleasePoolPush();
      v34 = v7;
      v35 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        v36 = HMFGetLogIdentifier();
        v37 = [v4 messagePayload];
        *buf = 138543618;
        v42 = v36;
        v43 = 2112;
        v44 = v37;
        _os_log_impl(&dword_229538000, v35, OS_LOG_TYPE_ERROR, "%{public}@Could not find required value in message payload: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v33);
      v16 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
      [v4 respondWithError:v16];
    }
  }

  else
  {
    v29 = objc_autoreleasePoolPush();
    v30 = v7;
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
    [v4 respondWithError:v13];
  }

  v38 = *MEMORY[0x277D85DE8];
}

- (void)handleFetchEventsMessage:(id)a3
{
  v57 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDCameraRecordingReachabilityEventManager *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v10 = [v4 shortDescription];
    *buf = 138543618;
    v50 = v9;
    v51 = 2112;
    v52 = v10;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Received message to fetch events: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  v11 = [(HMDCameraRecordingReachabilityEventManager *)v7 localZone];

  if (v11)
  {
    v12 = [v4 dateForKey:*MEMORY[0x277CCF548]];
    v13 = [v4 dateForKey:*MEMORY[0x277CCF550]];
    v14 = [v4 numberForKey:*MEMORY[0x277CCF558]];
    v15 = [v4 numberForKey:*MEMORY[0x277CCF568]];
    v16 = v15;
    if (v12 && v13 && v14 && v15)
    {
      v46 = v13;
      v17 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v12 endDate:v13];
      v18 = [v16 BOOLValue];
      v19 = [v14 unsignedIntegerValue];
      v20 = objc_autoreleasePoolPush();
      v21 = v7;
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
        v54 = v19;
        v55 = 2112;
        v56 = v24;
        _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_INFO, "%{public}@Fetching reachability event models with date interval: %@, limit: %lu, shouldOrderAscending: %@", buf, 0x2Au);

        v14 = v44;
      }

      objc_autoreleasePoolPop(v20);
      v25 = [(HMDCameraRecordingReachabilityEventManager *)v21 fetchReachabilityEventsWithDateInterval:v17];
      v26 = [v25 mutableCopy];

      if (v18)
      {
        v27 = &__block_literal_global_116_195280;
      }

      else
      {
        v27 = &__block_literal_global_118_195281;
      }

      [v26 sortUsingComparator:v27];
      v28 = v14;
      if ([v26 count] <= v19)
      {
        v29 = [v26 copy];
      }

      else
      {
        v29 = [v26 subarrayWithRange:{0, v19}];
      }

      v39 = v29;
      v13 = v46;
      v40 = [v29 na_map:&__block_literal_global_121];
      v47 = *MEMORY[0x277CCF578];
      v41 = encodeRootObjectForIncomingXPCMessage(v40, 0);
      v48 = v41;
      v42 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v48 forKeys:&v47 count:1];
      [v4 respondWithPayload:v42];

      v14 = v28;
      v16 = v45;
    }

    else
    {
      v34 = objc_autoreleasePoolPush();
      v35 = v7;
      v36 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        v37 = HMFGetLogIdentifier();
        v38 = [v4 messagePayload];
        *buf = 138543618;
        v50 = v37;
        v51 = 2112;
        v52 = v38;
        _os_log_impl(&dword_229538000, v36, OS_LOG_TYPE_ERROR, "%{public}@Could not find required value in message payload: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v34);
      v17 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
      [v4 respondWithError:v17];
    }
  }

  else
  {
    v30 = objc_autoreleasePoolPush();
    v31 = v7;
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
    [v4 respondWithError:v12];
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

- (void)handleRemoteCameraReachabilityDidChangeMessage:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDCameraRecordingReachabilityEventManager *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v12 = 138543362;
    v13 = v9;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Received remote camera reachability change message", &v12, 0xCu);
  }

  objc_autoreleasePoolPop(v6);
  v10 = [(HMDCameraRecordingReachabilityEventManager *)v7 performCloudPullWithLabel:@"Fetching reachability events due to remote message"];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)handleAppleAccountSettingsHomeStateUpdated:(id)a3
{
  v4 = [(HMDCameraRecordingReachabilityEventManager *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __89__HMDCameraRecordingReachabilityEventManager_handleAppleAccountSettingsHomeStateUpdated___block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(v4, block);
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

- (void)handleBridgedAccessoryDisconnectedNotification:(id)a3
{
  v4 = [(HMDCameraRecordingReachabilityEventManager *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __93__HMDCameraRecordingReachabilityEventManager_handleBridgedAccessoryDisconnectedNotification___block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(v4, block);
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

- (void)handleBridgedAccessoryConnectedNotification:(id)a3
{
  v4 = [(HMDCameraRecordingReachabilityEventManager *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __90__HMDCameraRecordingReachabilityEventManager_handleBridgedAccessoryConnectedNotification___block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(v4, block);
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

- (void)handleAccessoryDisconnectedNotification:(id)a3
{
  v4 = [(HMDCameraRecordingReachabilityEventManager *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __86__HMDCameraRecordingReachabilityEventManager_handleAccessoryDisconnectedNotification___block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(v4, block);
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

- (void)handleAccessoryConnectedNotification:(id)a3
{
  v4 = [(HMDCameraRecordingReachabilityEventManager *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __83__HMDCameraRecordingReachabilityEventManager_handleAccessoryConnectedNotification___block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(v4, block);
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

- (void)handleCameraProfileSettingsDidChange:(id)a3
{
  v4 = a3;
  v5 = [(HMDCameraRecordingReachabilityEventManager *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __83__HMDCameraRecordingReachabilityEventManager_handleCameraProfileSettingsDidChange___block_invoke;
  v7[3] = &unk_27868A750;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
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

- (void)handleResidentDeviceConfirmedStateChangedNotification:(id)a3
{
  v4 = [(HMDCameraRecordingReachabilityEventManager *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __100__HMDCameraRecordingReachabilityEventManager_handleResidentDeviceConfirmedStateChangedNotification___block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(v4, block);
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

- (void)insertBulletinForReachabilityEvent:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDCameraRecordingReachabilityEventManager *)self currentSettings];
  v6 = [v5 notificationSettings];
  v7 = [v6 isReachabilityEventNotificationEnabled];

  v8 = [(HMDCameraRecordingReachabilityEventManager *)self accountSettings];
  v9 = [v8 isHomeEnabled];

  v10 = objc_autoreleasePoolPush();
  v11 = self;
  v12 = HMFGetOSLogHandle();
  v13 = v12;
  if (v7 && v9)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      v23 = 138543618;
      v24 = v14;
      v25 = 2114;
      v26 = v4;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Inserting bulletin for new reachability event: %{public}@", &v23, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    v15 = [(HMDCameraRecordingReachabilityEventManager *)v11 bulletinBoard];
    v16 = [(HMDCameraRecordingReachabilityEventManager *)v11 hapAccessory];
    v17 = [v4 isReachable];
    v18 = [v4 dateOfOccurrence];
    [v15 insertReachabilityEventBulletinForAccessory:v16 reachable:v17 date:v18];
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
      v26 = v4;
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

- (id)mostRecentReachabilityEventModelInModels:(id)a3
{
  v3 = a3;
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
  [v3 hmf_enumerateWithAutoreleasePoolUsingBlock:v6];
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

- (void)startReachabilityChangeDebounceTimerWithReachability:(BOOL)a3
{
  v3 = a3;
  v24 = *MEMORY[0x277D85DE8];
  v5 = [(HMDCameraRecordingReachabilityEventManager *)self workQueue];
  dispatch_assert_queue_V2(v5);

  if (v3)
  {
    [(HMDCameraRecordingReachabilityEventManager *)self reachabilityChangeReachableDebounceTimeout];
  }

  else
  {
    [(HMDCameraRecordingReachabilityEventManager *)self reachabilityChangeUnreachableDebounceTimeout];
  }

  v7 = v6;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
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
  v12 = [(HMDCameraRecordingReachabilityEventManager *)v9 reachabilityChangeDebounceTimerFactory];
  v13 = v12[2](v12, 0, v7);
  [(HMDCameraRecordingReachabilityEventManager *)v9 setReachabilityChangeDebounceTimer:v13];

  v14 = [(HMDCameraRecordingReachabilityEventManager *)v9 reachabilityChangeDebounceTimer];
  [v14 setDelegate:v9];

  v15 = [(HMDCameraRecordingReachabilityEventManager *)v9 workQueue];
  v16 = [(HMDCameraRecordingReachabilityEventManager *)v9 reachabilityChangeDebounceTimer];
  [v16 setDelegateQueue:v15];

  v17 = [(HMDCameraRecordingReachabilityEventManager *)v9 reachabilityChangeDebounceTimer];
  [v17 resume];

  v18 = [MEMORY[0x277CBEAA8] date];
  [(HMDCameraRecordingReachabilityEventManager *)v9 setReachabilityChangeDebounceStartDate:v18];

  v19 = *MEMORY[0x277D85DE8];
}

- (double)reachabilityChangeUnreachableDebounceTimeout
{
  v2 = [MEMORY[0x277D0F8D0] sharedPreferences];
  v3 = [v2 preferenceForKey:@"reachabilityChangeUnreachableDebounceTimeout"];
  v4 = [v3 numberValue];

  [v4 doubleValue];
  v6 = v5;

  return v6;
}

- (double)reachabilityChangeReachableDebounceTimeout
{
  v2 = [MEMORY[0x277D0F8D0] sharedPreferences];
  v3 = [v2 preferenceForKey:@"reachabilityChangeReachableDebounceTimeout"];
  v4 = [v3 numberValue];

  [v4 doubleValue];
  v6 = v5;

  return v6;
}

- (void)updateInitialReachabilityTimer
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = [(HMDCameraRecordingReachabilityEventManager *)self workQueue];
  dispatch_assert_queue_V2(v3);

  if ([(HMDCameraRecordingReachabilityEventManager *)self shouldHandleReachabilityChanges])
  {
    v4 = objc_autoreleasePoolPush();
    v5 = self;
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      v17 = 138543362;
      v18 = v7;
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Starting initial reachability timer", &v17, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    [(HMDCameraRecordingReachabilityEventManager *)v5 setReachabilityChangeDebounceTimer:0];
    v8 = objc_alloc_init(MEMORY[0x277D2C900]);
    [(HMDCameraRecordingReachabilityEventManager *)v5 setDidHandleInitialReachabilityFuture:v8];

    v9 = [(HMDCameraRecordingReachabilityEventManager *)v5 initialReachabilityTimerFactory];
    [(HMDCameraRecordingReachabilityEventManager *)v5 initialReachabilityTimeout];
    v10 = v9[2](v9, 0);
    [(HMDCameraRecordingReachabilityEventManager *)v5 setInitialReachabilityTimer:v10];

    v11 = [(HMDCameraRecordingReachabilityEventManager *)v5 initialReachabilityTimer];
    [v11 setDelegate:v5];

    v12 = [(HMDCameraRecordingReachabilityEventManager *)v5 workQueue];
    v13 = [(HMDCameraRecordingReachabilityEventManager *)v5 initialReachabilityTimer];
    [v13 setDelegateQueue:v12];

    v14 = [(HMDCameraRecordingReachabilityEventManager *)v5 initialReachabilityTimer];
    [v14 resume];

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
  v2 = [MEMORY[0x277D0F8D0] sharedPreferences];
  v3 = [v2 preferenceForKey:@"cameraInitialReachabilityTimeout"];
  v4 = [v3 numberValue];

  [v4 doubleValue];
  v6 = v5;

  return v6;
}

- (id)performCloudPullWithLabel:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDCameraRecordingReachabilityEventManager *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(HMDCameraRecordingReachabilityEventManager *)self cloudZone];

  if (v6)
  {
    v7 = [MEMORY[0x277D17108] optionsWithLabel:v4];
    v8 = [(HMDCameraRecordingReachabilityEventManager *)self cloudZone];
    v9 = [v8 performCloudPullWithOptions:v7];
    v10 = MEMORY[0x277D2C938];
    v11 = [(HMDCameraRecordingReachabilityEventManager *)self workQueue];
    v12 = [v10 schedulerWithDispatchQueue:v11];
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
    v17 = self;
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

- (void)submitLogEventWithCurrentModel:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = 0.0;
  if ([v4 reachable])
  {
    v6 = [(HMDCameraRecordingReachabilityEventManager *)self mostRecentReachabilityEventModel];
    if (!v6)
    {
      _HMFPreconditionFailure();
    }

    v7 = v6;
    v8 = [v6 dateOfOccurrence];
    if (v8)
    {
      v9 = [v4 dateOfOccurrence];
      [v9 timeIntervalSinceDate:v8];
      v5 = v10;
    }

    else
    {
      v11 = objc_autoreleasePoolPush();
      v12 = self;
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
  if (v4)
  {
    v17 = [v4 reachable];
  }

  else
  {
    v17 = [(HMDCameraRecordingReachabilityEventManager *)self currentCameraReachability];
  }

  v18 = v17;
  v19 = [(HMDCameraRecordingReachabilityEventManager *)self reachabilityChangeDebounceCount];
  v20 = [(HMDCameraRecordingReachabilityEventManager *)self hapAccessory];
  v21 = [(HMDCameraRecordingReachabilityLogEvent *)v16 initWithReachability:v18 didCreateEventModel:v4 != 0 reachabilityChangeDebounceCount:v19 offlineDuration:v20 hapAccessory:v5];

  v22 = [(HMDCameraRecordingReachabilityEventManager *)self logEventSubmitter];
  [v22 submitLogEvent:v21];

  [(HMDCameraRecordingReachabilityEventManager *)self setReachabilityChangeDebounceCount:0];
  v23 = *MEMORY[0x277D85DE8];
}

- (void)notifyTransportOfUpdatedEvents:(id)a3 removedEventUUIDs:(id)a4
{
  v50 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDCameraRecordingReachabilityEventManager *)self workQueue];
  dispatch_assert_queue_V2(v8);

  v9 = [(HMDCameraRecordingReachabilityEventManager *)self clientConnections];
  v10 = [v9 count];

  v11 = objc_autoreleasePoolPush();
  v12 = self;
  v13 = HMFGetOSLogHandle();
  v14 = v13;
  if (v10)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier();
      v16 = [(HMDCameraRecordingReachabilityEventManager *)v12 clientConnections];
      *buf = 138544130;
      v43 = v15;
      v44 = 2048;
      v45 = [v16 count];
      v46 = 2048;
      v47 = [v6 count];
      v48 = 2048;
      v49 = [v7 count];
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, "%{public}@Notifying %lu subscribed transports of %lu updated events, %lu removed events", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v11);
    v40[0] = *MEMORY[0x277CCF570];
    v33 = v6;
    v17 = encodeRootObjectForIncomingXPCMessage(v6, 0);
    v40[1] = *MEMORY[0x277CCF560];
    v41[0] = v17;
    v32 = v7;
    v41[1] = v7;
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v41 forKeys:v40 count:2];

    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    obj = [(HMDCameraRecordingReachabilityEventManager *)v12 clientConnections];
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
          v27 = [(HMDCameraRecordingReachabilityEventManager *)v12 messageTargetUUID];
          v28 = [v26 initWithTarget:v27];
          [v25 setDestination:v28];

          [v25 setRequiresCameraClipsEntitlement];
          v29 = [(HMDCameraRecordingReachabilityEventManager *)v12 messageDispatcher];
          [v29 sendMessage:v25];

          ++v23;
        }

        while (v20 != v23);
        v20 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
      }

      while (v20);
    }

    v7 = v32;
    v6 = v33;
  }

  else
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v30 = HMFGetLogIdentifier();
      *buf = 138543874;
      v43 = v30;
      v44 = 2048;
      v45 = [v6 count];
      v46 = 2048;
      v47 = [v7 count];
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_DEBUG, "%{public}@No subscribed transports to notify of %lu updated events, %lu removed events", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v11);
  }

  v31 = *MEMORY[0x277D85DE8];
}

- (void)notifyRemoteSubscribersOfCameraReachabilityEventModel:(id)a3
{
  v70[3] = *MEMORY[0x277D85DE8];
  v52 = a3;
  v4 = [(HMDCameraRecordingReachabilityEventManager *)self workQueue];
  dispatch_assert_queue_V2(v4);

  v5 = [(HMDCameraRecordingReachabilityEventManager *)self hapAccessory];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 home];
    v8 = v7;
    if (v7)
    {
      v9 = [v7 cameraBulletinNotificationManager];
      v10 = [v9 devicesToNotifyForCameraReachabilityForAccessory:v6];

      if ([v10 hmf_isEmpty])
      {
        v11 = objc_autoreleasePoolPush();
        v12 = self;
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
        v23 = [v52 hmbModelID];
        v24 = [v23 UUIDString];
        v70[0] = v24;
        v69[1] = @"HMDRemoteCameraReachabilityDidChangeMessageKeyDateOfOccurrence";
        v25 = [v52 dateOfOccurrence];
        v70[1] = v25;
        v69[2] = @"HMDRemoteCameraReachabilityDidChangeMessageKeyIsReachable";
        v26 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v52, "reachable")}];
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
              v34 = [(HMDCameraRecordingReachabilityEventManager *)self uniqueIdentifier];
              v35 = [(HMDRemoteDeviceMessageDestination *)v33 initWithTarget:v34 device:v31];
              v36 = [v32 initWithName:@"HMDRemoteCameraReachabilityDidChangeMessage" destination:v35 payload:v27 type:3 timeout:1 secure:86400.0];

              v37 = objc_autoreleasePoolPush();
              v38 = self;
              v39 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
              {
                v40 = HMFGetLogIdentifier();
                v41 = [v31 shortDescription];
                v42 = [v52 hmbModelID];
                [v36 shortDescription];
                v54 = v37;
                v43 = self;
                v45 = v44 = v27;
                *buf = 138544130;
                v61 = v40;
                v62 = 2112;
                v63 = v41;
                v64 = 2114;
                v65 = v42;
                v66 = 2114;
                v67 = v45;
                _os_log_impl(&dword_229538000, v39, OS_LOG_TYPE_INFO, "%{public}@Notifying device %@ of camera reachability event model %{public}@ using message: %{public}@", buf, 0x2Au);

                v27 = v44;
                self = v43;
                v37 = v54;

                p_superclass = (HMDTimeBasedFlagNameSpecifier + 8);
                v28 = v51;
              }

              objc_autoreleasePoolPop(v37);
              v46 = [(HMDCameraRecordingReachabilityEventManager *)v38 messageDispatcher];
              [v46 sendMessage:v36];
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
      v20 = self;
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
    v16 = self;
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

- (id)addCameraReachabilityEventModel:(id)a3
{
  v4 = MEMORY[0x277D17108];
  v5 = a3;
  v6 = [v4 optionsWithLabel:@"Create camera reachability event"];
  v7 = [(HMDCameraRecordingReachabilityEventManager *)self localZone];
  v8 = [MEMORY[0x277CBEB98] setWithObject:v5];

  v9 = [v7 createModels:v8 options:v6];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __78__HMDCameraRecordingReachabilityEventManager_addCameraReachabilityEventModel___block_invoke;
  v17[3] = &unk_278686CE8;
  v17[4] = self;
  v10 = [v9 flatMap:v17];
  v11 = [v10 flatMap:&__block_literal_global_88_195338];
  v12 = MEMORY[0x277D2C938];
  v13 = [(HMDCameraRecordingReachabilityEventManager *)self workQueue];
  v14 = [v12 schedulerWithDispatchQueue:v13];
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

- (id)fetchReachabilityEventsWithDateInterval:(id)a3
{
  v4 = a3;
  v5 = [(HMDCameraRecordingReachabilityEventManager *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v7 = [(HMDCameraRecordingReachabilityEventManager *)self localZone];
  v8 = [v7 queryModelsOfType:objc_opt_class()];

  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __86__HMDCameraRecordingReachabilityEventManager_fetchReachabilityEventsWithDateInterval___block_invoke;
  v16 = &unk_27867EA00;
  v17 = v4;
  v18 = v6;
  v9 = v6;
  v10 = v4;
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

- (BOOL)shouldAddInitialReachabilityEventWithReachability:(BOOL)a3 mostRecentReachabilityEventModel:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(HMDCameraRecordingReachabilityEventManager *)self workQueue];
  dispatch_assert_queue_V2(v7);

  if (v6)
  {
    v4 ^= [v6 reachable];
  }

  else
  {
    LOBYTE(v4) = v4 ^ 1;
  }

  return v4;
}

- (void)handleInitialCameraReachability
{
  v3 = [(HMDCameraRecordingReachabilityEventManager *)self workQueue];
  dispatch_assert_queue_V2(v3);

  LOBYTE(v3) = [(HMDCameraRecordingReachabilityEventManager *)self currentCameraReachability];
  v4 = [MEMORY[0x277CBEAA8] date];
  [(HMDCameraRecordingReachabilityEventManager *)self setSuppressNotificationsBeforeDate:v4];
  v5 = [(HMDCameraRecordingReachabilityEventManager *)self fetchMostRecentReachabilityEventModel];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __77__HMDCameraRecordingReachabilityEventManager_handleInitialCameraReachability__block_invoke;
  v8[3] = &unk_27867E9D8;
  v10 = v3;
  v8[4] = self;
  v9 = v4;
  v6 = v4;
  v7 = [v5 addCompletionBlock:v8];
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

- (void)setCurrentDeviceConnectedToNetwork:(BOOL)a3
{
  v3 = a3;
  v5 = [(HMDCameraRecordingReachabilityEventManager *)self workQueue];
  dispatch_assert_queue_V2(v5);

  if (self->_currentDeviceConnectedToNetwork != v3)
  {
    self->_currentDeviceConnectedToNetwork = v3;

    [(HMDCameraRecordingReachabilityEventManager *)self updateInitialReachabilityTimer];
  }
}

- (BOOL)isCurrentDeviceConnectedToNetwork
{
  v3 = [(HMDCameraRecordingReachabilityEventManager *)self workQueue];
  dispatch_assert_queue_V2(v3);

  return self->_currentDeviceConnectedToNetwork;
}

- (void)setCurrentDeviceConfirmedPrimaryResident:(BOOL)a3
{
  v3 = a3;
  v21 = *MEMORY[0x277D85DE8];
  v5 = [(HMDCameraRecordingReachabilityEventManager *)self workQueue];
  dispatch_assert_queue_V2(v5);

  if (self->_currentDeviceConfirmedPrimaryResident != v3)
  {
    self->_currentDeviceConfirmedPrimaryResident = v3;
    [(HMDCameraRecordingReachabilityEventManager *)self updateInitialReachabilityTimer];
    v6 = [(HMDCameraRecordingReachabilityEventManager *)self hapAccessory];
    if (v6)
    {
      v7 = [(HMDCameraRecordingReachabilityEventManager *)self notificationCenter];
      v8 = v7;
      if (v3)
      {
        [v7 addObserver:self selector:sel_handleAccessoryConnectedNotification_ name:@"HMDAccessoryConnectedNotification" object:v6];

        v9 = [(HMDCameraRecordingReachabilityEventManager *)self notificationCenter];
        [v9 addObserver:self selector:sel_handleAccessoryDisconnectedNotification_ name:@"HMDAccessoryDisconnectedNotification" object:v6];

        v10 = [(HMDCameraRecordingReachabilityEventManager *)self notificationCenter];
        [v10 addObserver:self selector:sel_handleBridgedAccessoryConnectedNotification_ name:@"HMDBridgedAccessoryConnectedNotification" object:v6];

        v11 = [(HMDCameraRecordingReachabilityEventManager *)self notificationCenter];
        [v11 addObserver:self selector:sel_handleBridgedAccessoryDisconnectedNotification_ name:@"HMDBridgedAccessoryDisconnectedNotification" object:v6];
      }

      else
      {
        [v7 removeObserver:self name:@"HMDAccessoryConnectedNotification" object:v6];

        v16 = [(HMDCameraRecordingReachabilityEventManager *)self notificationCenter];
        [v16 removeObserver:self name:@"HMDAccessoryDisconnectedNotification" object:v6];

        v17 = [(HMDCameraRecordingReachabilityEventManager *)self notificationCenter];
        [v17 removeObserver:self name:@"HMDBridgedAccessoryConnectedNotification" object:v6];

        v11 = [(HMDCameraRecordingReachabilityEventManager *)self notificationCenter];
        [v11 removeObserver:self name:@"HMDBridgedAccessoryDisconnectedNotification" object:v6];
      }
    }

    else
    {
      v12 = objc_autoreleasePoolPush();
      v13 = self;
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
  v3 = [(HMDCameraRecordingReachabilityEventManager *)self workQueue];
  dispatch_assert_queue_V2(v3);

  return self->_currentDeviceConfirmedPrimaryResident;
}

- (void)setCurrentSettings:(id)a3
{
  v4 = a3;
  v5 = [(HMDCameraRecordingReachabilityEventManager *)self workQueue];
  dispatch_assert_queue_V2(v5);

  LODWORD(v5) = isRecordingAllowedForSettings(self->_currentSettings);
  v6 = [v4 copy];
  currentSettings = self->_currentSettings;
  self->_currentSettings = v6;

  v8 = isRecordingAllowedForSettings(v4);
  if (v5 != v8)
  {

    [(HMDCameraRecordingReachabilityEventManager *)self updateInitialReachabilityTimer];
  }
}

- (_HMCameraUserSettings)currentSettings
{
  v3 = [(HMDCameraRecordingReachabilityEventManager *)self workQueue];
  dispatch_assert_queue_V2(v3);

  currentSettings = self->_currentSettings;

  return currentSettings;
}

- (BOOL)shouldHandleReachabilityChanges
{
  v3 = [(HMDCameraRecordingReachabilityEventManager *)self currentSettings];
  v4 = isRecordingAllowedForSettings(v3) && [(HMDCameraRecordingReachabilityEventManager *)self isCurrentDeviceConnectedToNetwork]&& [(HMDCameraRecordingReachabilityEventManager *)self isCurrentDeviceConfirmedPrimaryResident];

  return v4;
}

- (BOOL)isAccessoryReachable
{
  v3 = [(HMDCameraRecordingReachabilityEventManager *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(HMDCameraRecordingReachabilityEventManager *)self hapAccessory];
  v5 = v4;
  if (v4)
  {
    if ([v4 isPrimary])
    {
      v6 = [v5 isSecuritySessionOpen];
    }

    else
    {
      v6 = [v5 isBridgedAccessoryConnected];
    }

    v7 = v6;
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
  v3 = [(HMDCameraRecordingReachabilityEventManager *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-*MEMORY[0x277CCF518]];
  v5 = objc_alloc(MEMORY[0x277CCA970]);
  v6 = [MEMORY[0x277CBEAA8] distantPast];
  v7 = [v5 initWithStartDate:v6 endDate:v4];

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
    v19 = self;
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
    v24 = [(HMDCameraRecordingReachabilityEventManager *)v19 localZone];
    v25 = [v24 removeModelIDs:v17 options:v23];
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    v10 = self;
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

- (void)configureWithMessageDispatcher:(id)a3 currentSettings:(id)a4 isCurrentDeviceConfirmedPrimaryResident:(BOOL)a5 isCurrentDeviceConnectedToNetwork:(BOOL)a6
{
  v6 = a6;
  v53 = a5;
  v69 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = [(HMDCameraRecordingReachabilityEventManager *)self workQueue];
  dispatch_assert_queue_V2(v11);

  v12 = objc_autoreleasePoolPush();
  v13 = self;
  v14 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = HMFGetLogIdentifier();
    v16 = HMFBooleanToString();
    v17 = HMFBooleanToString();
    *buf = 138544130;
    v62 = v15;
    v63 = 2112;
    v64 = v10;
    v65 = 2112;
    v66 = v16;
    v67 = 2112;
    v68 = v17;
    _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, "%{public}@Configuring with current settings: %@, isCurrentDeviceConfirmedPrimaryResident: %@, isCurrentDeviceConnectedToNetwork: %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v12);
  v18 = [(HMDCameraRecordingReachabilityEventManager *)v13 hapAccessory];
  v19 = [v18 home];
  [(HMDCameraRecordingReachabilityEventManager *)v13 setMessageDispatcher:v9];
  v20 = [HMDXPCMessagePolicy policyWithEntitlements:133];
  v21 = [HMDUserMessagePolicy userMessagePolicyWithHome:v19 userPrivilege:0 remoteAccessRequired:0 requiresCameraStreamingAccess:1];
  [HMDUserMessagePolicy userMessagePolicyWithHome:v19 userPrivilege:4 remoteAccessRequired:0];
  v22 = v51 = v6;
  v23 = [(HMDCameraRecordingReachabilityEventManager *)v13 messageDispatcher];
  +[HMDRemoteMessagePolicy defaultSecurePolicy];
  v24 = v52 = v9;
  v60[0] = v24;
  v60[1] = v21;
  v50 = v10;
  v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v60 count:2];
  [v23 registerForMessage:@"HMDRemoteCameraReachabilityDidChangeMessage" receiver:v13 policies:v25 selector:sel_handleRemoteCameraReachabilityDidChangeMessage_];

  v26 = [(HMDCameraRecordingReachabilityEventManager *)v13 messageDispatcher];
  v27 = *MEMORY[0x277CCF538];
  v59[0] = v20;
  v59[1] = v21;
  v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v59 count:2];
  [v26 registerForMessage:v27 receiver:v13 policies:v28 selector:sel_handleFetchEventsMessage_];

  v29 = [(HMDCameraRecordingReachabilityEventManager *)v13 messageDispatcher];
  v30 = *MEMORY[0x277CCF530];
  v58[0] = v20;
  v58[1] = v21;
  v31 = [MEMORY[0x277CBEA60] arrayWithObjects:v58 count:2];
  [v29 registerForMessage:v30 receiver:v13 policies:v31 selector:sel_handleFetchCountOfEventsMessage_];

  v32 = [(HMDCameraRecordingReachabilityEventManager *)v13 messageDispatcher];
  v33 = *MEMORY[0x277CCF588];
  v57[0] = v20;
  v57[1] = v21;
  v34 = [MEMORY[0x277CBEA60] arrayWithObjects:v57 count:2];
  [v32 registerForMessage:v33 receiver:v13 policies:v34 selector:sel_handleSubscribeMessage_];

  v35 = [(HMDCameraRecordingReachabilityEventManager *)v13 messageDispatcher];
  v36 = *MEMORY[0x277CCF590];
  v56[0] = v20;
  v56[1] = v21;
  v37 = [MEMORY[0x277CBEA60] arrayWithObjects:v56 count:2];
  [v35 registerForMessage:v36 receiver:v13 policies:v37 selector:sel_handleUnsubscribeMessage_];

  v38 = [(HMDCameraRecordingReachabilityEventManager *)v13 messageDispatcher];
  v39 = *MEMORY[0x277CCF580];
  v55[0] = v20;
  v55[1] = v21;
  v40 = [MEMORY[0x277CBEA60] arrayWithObjects:v55 count:2];
  [v38 registerForMessage:v39 receiver:v13 policies:v40 selector:sel_handlePerformCloudPullMessage_];

  v41 = [HMDConfigurationMessagePolicy policyWithOperationTypes:4];
  v42 = [(HMDCameraRecordingReachabilityEventManager *)v13 messageDispatcher];
  v43 = *MEMORY[0x277CCF520];
  v54[0] = v20;
  v54[1] = v22;
  v54[2] = v41;
  v44 = [MEMORY[0x277CBEA60] arrayWithObjects:v54 count:3];
  [v42 registerForMessage:v43 receiver:v13 policies:v44 selector:sel_handleDeleteAllEventsMessage_];

  v45 = [(HMDCameraRecordingReachabilityEventManager *)v13 notificationCenter];
  [v45 addObserver:v13 selector:sel_handleResidentDeviceConfirmedStateChangedNotification_ name:@"HMDResidentDeviceConfirmedStateChangedNotification" object:0];

  v46 = [(HMDCameraRecordingReachabilityEventManager *)v13 notificationCenter];
  [v46 addObserver:v13 selector:sel_handleCameraProfileSettingsDidChange_ name:@"HMDCameraProfileSettingsDidChangeNotification" object:v18];

  v47 = [(HMDCameraRecordingReachabilityEventManager *)v13 notificationCenter];
  v48 = [(HMDCameraRecordingReachabilityEventManager *)v13 accountSettings];
  [v47 addObserver:v13 selector:sel_handleAppleAccountSettingsHomeStateUpdated_ name:@"HMDAppleAccountSettingsHomeStateUpdatedNotification" object:v48];

  [(HMDCameraRecordingReachabilityEventManager *)v13 setCurrentSettings:v50];
  [(HMDCameraRecordingReachabilityEventManager *)v13 setCurrentDeviceConfirmedPrimaryResident:v53];
  [(HMDCameraRecordingReachabilityEventManager *)v13 setCurrentDeviceConnectedToNetwork:v51];

  v49 = *MEMORY[0x277D85DE8];
}

- (HMDCameraRecordingReachabilityEventManager)initWithHAPAccessory:(id)a3 zoneName:(id)a4 workQueue:(id)a5
{
  v7 = a5;
  v8 = a3;
  v9 = [v8 uuid];
  v10 = +[HMDBulletinBoard sharedBulletinBoard];
  v11 = +[HMDMetricsManager sharedLogEventSubmitter];
  v12 = +[HMDAppleAccountSettings sharedSettings];
  v13 = objc_alloc_init(HMDFeaturesDataSource);
  v14 = [MEMORY[0x277CCAB98] defaultCenter];
  v15 = [(HMDCameraRecordingReachabilityEventManager *)self initWithAccessory:v8 workQueue:v7 identifier:v9 bulletinBoard:v10 logEventSubmitter:v11 accountSettings:v12 featuresDataSource:v13 notificationCenter:v14];

  return v15;
}

- (HMDCameraRecordingReachabilityEventManager)initWithAccessory:(id)a3 workQueue:(id)a4 identifier:(id)a5 bulletinBoard:(id)a6 logEventSubmitter:(id)a7 accountSettings:(id)a8 featuresDataSource:(id)a9 notificationCenter:(id)a10
{
  obj = a3;
  v33 = a4;
  v32 = a5;
  v31 = a6;
  v30 = a7;
  v29 = a8;
  v16 = a9;
  v17 = a10;
  v35.receiver = self;
  v35.super_class = HMDCameraRecordingReachabilityEventManager;
  v18 = [(HMDCameraRecordingReachabilityEventManager *)&v35 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_uniqueIdentifier, a5);
    objc_storeWeak(&v19->_hapAccessory, obj);
    objc_storeStrong(&v19->_workQueue, a4);
    objc_storeStrong(&v19->_bulletinBoard, a6);
    objc_storeStrong(&v19->_logEventSubmitter, a7);
    objc_storeStrong(&v19->_accountSettings, a8);
    objc_storeStrong(&v19->_featuresDataSource, a9);
    objc_storeStrong(&v19->_notificationCenter, a10);
    v20 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    clientConnections = v19->_clientConnections;
    v19->_clientConnections = v20;

    v22 = [MEMORY[0x277CBEAA8] distantPast];
    suppressNotificationsBeforeDate = v19->_suppressNotificationsBeforeDate;
    v19->_suppressNotificationsBeforeDate = v22;

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