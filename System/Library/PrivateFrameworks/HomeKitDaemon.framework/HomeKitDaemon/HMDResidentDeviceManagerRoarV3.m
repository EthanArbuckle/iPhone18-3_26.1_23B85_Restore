@interface HMDResidentDeviceManagerRoarV3
+ (id)logCategory;
+ (id)shortDescription;
- (BOOL)_updatePrimaryResidentGenerationID:(id)a3;
- (BOOL)allowExternalUpdateOfPrimaryResidentTo:(id)a3 selectionTimestamp:(id)a4;
- (BOOL)hasAnyResident;
- (BOOL)hasReachableAccessories;
- (BOOL)hasTrustZoneCapableResident;
- (BOOL)homeSupportsResidentSelection;
- (BOOL)isCurrentDeviceAvailableResident;
- (BOOL)isCurrentDevicePrimaryResident;
- (BOOL)isOwnerUser;
- (BOOL)isResidentAvailable;
- (BOOL)isResidentEnabled;
- (BOOL)isResidentSupported;
- (HMDDevice)confirmedPrimaryResidentDevice;
- (HMDHome)home;
- (HMDIDSServerBag)idsServerBag;
- (HMDPreferredResidentsList)electorsPreferredResidentsList;
- (HMDResidentDevice)primaryResidentDevice;
- (HMDResidentDevice)userSelectedPreferredResident;
- (HMDResidentDeviceManagerDelegate)delegate;
- (HMDResidentDeviceManagerRoarV3)init;
- (HMDResidentDeviceManagerRoarV3)initWithDataSource:(id)a3 featuresDataSource:(id)a4;
- (HMDResidentSelectionInfo)residentSelectionInfo;
- (NSArray)autoSelectedPreferredResidents;
- (NSArray)residentDevices;
- (NSArray)residentsPresentOnStatusKit;
- (NSDate)primaryResidentSelectionTimestamp;
- (NSUUID)primaryResidentGenerationID;
- (NSUUID)primaryResidentUUID;
- (double)_initialConnectionToStatusKitOnResidentTimeout;
- (double)_primaryResidentPeriodicReassertionTimeInterval;
- (double)_statusKitConnectionTTSUNoReachablePrimaryTimeoutSeconds;
- (double)blockPrimaryTakeoverDuration;
- (id)_createBackoffTimer;
- (id)_electorForDeterminingResidentLocationFromPresentResidentStatuses:(id)a3;
- (id)_residentDeviceDisplayName:(id)a3;
- (id)_residentStatusWithPreferredResidentsList:(id)a3;
- (id)_residentsFromResidentStatuses:(id)a3 residentDevices:(id)a4;
- (id)_updateReachabilityForResidentDevices:(id)a3 reachableResidents:(id)a4 source:(unint64_t)a5;
- (id)descriptionWithPointer:(BOOL)a3;
- (id)dumpState;
- (id)foundNewPrimaryResident:(id)a3 generationID:(id)a4 selectionTimestamp:(id)a5 changeSource:(unint64_t)a6;
- (id)ourSelf;
- (id)preferredResidentUUIDs;
- (id)residentDeviceForDevice:(id)a3;
- (id)residentDeviceWithIDSIdentifier:(id)a3;
- (id)residentDevicesSet;
- (id)residentDevicesWithIDSIdentifiers:(id)a3;
- (id)residentIDSIdentifierToLocationMap;
- (id)residentWithUUID:(id)a3;
- (id)shortDescription;
- (int64_t)atHomeLevel;
- (unint64_t)myLocation;
- (unint64_t)ourNetworkConnectionType;
- (unint64_t)residentSelectionMode;
- (void)_addResidentDevice:(id)a3;
- (void)_checkForResidentSelectionInfoUpdate;
- (void)_checkForResidentSelectionInfoUpdateInNotification:(id)a3;
- (void)_checkForUnknownLocationAndRetry;
- (void)_checkPrimaryResidentDeviceRemoved:(id)a3 currentPrimary:(id)a4;
- (void)_configureResidentSupported;
- (void)_createAllKnownResidentsInHomeWithCurrentDevice:(id)a3 hasResidents:(BOOL *)a4;
- (void)_determineResidentLocationWithCompletion:(id)a3;
- (void)_discoverPrimaryResidentForRequester:(id)a3;
- (void)_handleCloudResidentChange:(id)a3;
- (void)_handleCloudZoneReadyNotification:(id)a3;
- (void)_handleDataReadyAfterBecomingPrimaryNotification:(id)a3;
- (void)_handleHomeLocationChangedNotification:(id)a3;
- (void)_handleInitialConnectionToStatusKit;
- (void)_handleInitialTransitionToResidentSelectionWithCompletion:(id)a3;
- (void)_handlePrimaryResident:(id)a3 isReachable:(BOOL)a4;
- (void)_handlePrimaryResidentDiscoveryRequest:(id)a3;
- (void)_handlePrimaryResidentDiscoveryXPCRequest:(id)a3;
- (void)_handleReachabilityAfterPrimaryResidentChangedTo:(id)a3 previousPrimaryResident:(id)a4;
- (void)_handleRemoteDeviceIsNotReachable:(id)a3;
- (void)_handleRemoteDeviceIsReachable:(id)a3;
- (void)_handleResidentDeviceUpdateEnabled:(id)a3;
- (void)_handleResidentSelectionVersionDidChange:(id)a3;
- (void)_handleUpdatedPrimaryFromSelection:(id)a3;
- (void)_handleUpdatedPrimaryResidentDevice:(id)a3 previousPrimaryResident:(id)a4 generationID:(id)a5 changeSource:(unint64_t)a6;
- (void)_notifyPrimaryResidentChanged:(id)a3 previousPrimaryResident:(id)a4 changeSource:(unint64_t)a5;
- (void)_notifyUpdatedGenerationIDWithPrimaryResident:(id)a3;
- (void)_notifyUserPreferredResidentReachability:(id)a3 previousPrimaryResident:(id)a4;
- (void)_publishCurrentResidentStatusWithReason:(int64_t)a3 preferredResidentsList:(id)a4;
- (void)_refreshAllResidentsReachabilityFromStatusKit;
- (void)_registerForMessages;
- (void)_registerForNotifications;
- (void)_removeResidentDevice:(id)a3;
- (void)_removeRetryTimer;
- (void)_run;
- (void)_sendResidentDeviceNotificationWithName:(id)a3 forResidentDevice:(id)a4;
- (void)_setupAsAResident;
- (void)_setupSessionWithPrimaryResidentDevice;
- (void)_startActingAsResident;
- (void)_startPrimaryResidentPeriodicReassertionTimer;
- (void)_startResidentSelectionManager;
- (void)_startRetryTimer;
- (void)_stopActingAsResidentViaStatusKit;
- (void)_stopPrimaryResidentPeriodicReassertionTimer;
- (void)_submitLogeventForPrimaryResident:(id)a3 previousPrimaryResident:(id)a4 changeSource:(unint64_t)a5;
- (void)_teardownSessionWithPrimaryResidentDevice;
- (void)_updatePrimaryResidentPeriodicReassertionTimerWithPrimaryResidentDevice:(id)a3;
- (void)_updatePrimaryResidentSelectionTimestamp:(id)a3;
- (void)_updatePrimaryResidentTransactionWithPrimaryResidentDevice:(id)a3;
- (void)_updateReachabilityFromWorkingStoreExceptResident:(id)a3;
- (void)_updateResidentAvailability:(BOOL)a3;
- (void)_updateResidentIDSReachability:(BOOL)a3 withUpdatedDevice:(id)a4;
- (void)_updateResidentReachabilityFromReachableResidents:(id)a3 source:(unint64_t)a4;
- (void)accountOrDeviceDidUpdate:(id)a3;
- (void)addDataSource:(id)a3;
- (void)atHomeLevelChanged:(int64_t)a3;
- (void)channel:(id)a3 didObserveDevicesAdded:(id)a4 lost:(id)a5 updated:(id)a6;
- (void)channel:(id)a3 didObservePrimaryResidentChange:(id)a4;
- (void)configureWithHome:(id)a3 messageDispatcher:(id)a4;
- (void)confirmAsResident;
- (void)confirmOnAvailability;
- (void)confirmWithCompletionHandler:(id)a3;
- (void)discoverPrimaryResidentForRequester:(id)a3;
- (void)discoveryManager:(id)a3 didCompleteDiscoveryWithPrimaryResidentDevice:(id)a4 primaryResidentGenerationID:(id)a5 error:(id)a6;
- (void)discoveryManager:(id)a3 didCompleteInitialDiscoveryAttemptWithError:(id)a4;
- (void)discoveryManager:(id)a3 didNotCompleteDiscoveryWithError:(id)a4;
- (void)electResidentDevice:(unint64_t)a3;
- (void)handleCurrentDeviceChanged:(id)a3;
- (void)handlePrimaryResidentDiscovered:(id)a3 primaryResidentGenerationID:(id)a4;
- (void)handleSetPreferredResidentSelectionMessage:(id)a3;
- (void)invalidate;
- (void)modernTransportDeviceReachabilityObserverDidUpdate:(id)a3 isReachable:(BOOL)a4;
- (void)notifyClientsOfUpdatedResidentDevice:(id)a3;
- (void)notifyResidentAvailable:(BOOL)a3;
- (void)notifyUpdatedPrimaryResident:(id)a3 previousPrimaryResident:(id)a4;
- (void)reAssertAsTheCurrentPrimaryResident;
- (void)removeResidentDevice:(id)a3;
- (void)residentSelectionManager:(id)a3 didFailToSelectWithError:(id)a4;
- (void)residentSelectionManager:(id)a3 didReceivePrimaryResidentIdsIdentifier:(id)a4 selectionTimestamp:(id)a5;
- (void)residentSelectionManager:(id)a3 didSelectPrimaryResident:(id)a4 selectionInfo:(id)a5 electionLogEvent:(id)a6 completion:(id)a7;
- (void)residentSelectionManager:(id)a3 didUpdateActiveNodes:(id)a4;
- (void)residentSelectionManager:(id)a3 didUpdatePreferredResidentsList:(id)a4;
- (void)residentSelectionManager:(id)a3 didUpdateResidentDevice:(id)a4;
- (void)residentSelectionManager:(id)a3 didUpdateResidentSelectionInfo:(id)a4 completion:(id)a5;
- (void)residentSelectionManager:(id)a3 reassertAsTheCurrentPrimaryWithSelectionTimestamp:(id)a4;
- (void)residentSelectionManagerReadyAsResident:(id)a3;
- (void)run;
- (void)sawGenerationID:(id)a3 forDevice:(id)a4;
- (void)setResidentSupported:(BOOL)a3;
- (void)timerDidFire:(id)a3;
- (void)transactionObjectRemoved:(id)a3 message:(id)a4;
- (void)transactionObjectUpdated:(id)a3 newValues:(id)a4 message:(id)a5;
- (void)updatePrimaryResidentWithUUID:(id)a3 actions:(id)a4;
- (void)updateResidentAvailability;
@end

@implementation HMDResidentDeviceManagerRoarV3

+ (id)logCategory
{
  if (logCategory__hmf_once_t123 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t123, &__block_literal_global_278_250124);
  }

  v3 = logCategory__hmf_once_v124;

  return v3;
}

- (HMDResidentDevice)primaryResidentDevice
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = [(HMDResidentDeviceManagerRoarV3 *)self residentDevicesSet];
  v4 = [(HMDResidentDeviceManagerRoarV3 *)self primaryResidentUUID];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [v9 identifier];
        v11 = [v4 isEqual:v10];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v12 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)residentDevicesSet
{
  os_unfair_lock_lock_with_options();
  v3 = [(NSMutableSet *)self->_residentDevices copy];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (NSUUID)primaryResidentUUID
{
  os_unfair_lock_lock_with_options();
  v3 = self->_primaryResidentUUID;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (HMDHome)home
{
  WeakRetained = objc_loadWeakRetained(&self->_home);

  return WeakRetained;
}

- (HMDResidentDeviceManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

- (id)_residentDeviceDisplayName:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v5 = [(HMDResidentDeviceManagerRoarV3 *)self home];
  v6 = [v5 appleMediaAccessories];

  obj = v6;
  v7 = [v6 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v25;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v25 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v24 + 1) + 8 * i);
        v12 = [v11 device];
        v13 = [v12 identifier];
        v14 = [v4 device];
        v15 = [v14 identifier];
        v16 = [v13 isEqual:v15];

        if (v16)
        {
          v20 = [v11 name];
          goto LABEL_14;
        }
      }

      v8 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  obj = [v4 device];
  v17 = [obj name];
  v18 = v17;
  if (v17)
  {
    v19 = v17;
  }

  else
  {
    v19 = [v4 name];
  }

  v20 = v19;

LABEL_14:
  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

- (void)_checkForUnknownLocationAndRetry
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = [(HMDResidentDeviceManagerRoarV3 *)self residentLocationHandler];
  v4 = [v3 residentLocationRawValue];
  v5 = [v4 unsignedIntegerValue];

  if (v5 == 100)
  {
    [(HMDResidentDeviceManagerRoarV3 *)self _startRetryTimer];
    v6 = objc_autoreleasePoolPush();
    v7 = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      v10 = [(HMDResidentDeviceManagerRoarV3 *)v7 residentLocationRetryTimer];
      v11 = [v10 fireDate];
      [v11 timeIntervalSinceNow];
      v19 = 138543874;
      v20 = v9;
      v21 = 2112;
      v22 = @"Unknown";
      v23 = 2048;
      v24 = v12;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_ERROR, "%{public}@Resident location is: %@, retrying after %.03f seconds", &v19, 0x20u);
    }

    objc_autoreleasePoolPop(v6);
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    v14 = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      v17 = StringFromHMDResidentLocation(v5);
      v19 = 138543618;
      v20 = v16;
      v21 = 2112;
      v22 = v17;
      _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@Resident location determined to: %@", &v19, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
    [(HMDResidentDeviceManagerRoarV3 *)v14 _removeRetryTimer];
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_determineResidentLocationWithCompletion:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543362;
    v26 = v8;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@Determining resident location", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [(HMDResidentDeviceManagerRoarV3 *)v6 residentLocationRetryTimer];
  [v9 suspend];

  v10 = [(HMDResidentDeviceManagerRoarV3 *)v6 residentStatusChannel];
  v11 = [v10 isConnected];

  if (v11)
  {
    v12 = [(HMDResidentDeviceManagerRoarV3 *)v6 residentLocationHandler];
    [v12 requestResidentLocation];

    v13 = [(HMDResidentDeviceManagerRoarV3 *)v6 residentStatusChannel];
    v14 = [v13 presentResidentStatuses];
    v15 = [(HMDResidentDeviceManagerRoarV3 *)v6 _electorForDeterminingResidentLocationFromPresentResidentStatuses:v14];

    v16 = [(HMDResidentDeviceManagerRoarV3 *)v6 residentLocationHandler];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __75__HMDResidentDeviceManagerRoarV3__determineResidentLocationWithCompletion___block_invoke;
    v23[3] = &unk_278689A68;
    v23[4] = v6;
    v24 = v4;
    [v16 determineHomeOrAwayUsingElector:v15 withCompletion:v23];
  }

  else
  {
    v17 = objc_autoreleasePoolPush();
    v18 = v6;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543362;
      v26 = v20;
      _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_INFO, "%{public}@Not connected to StatusKit, unable to determine resident location", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v17);
    [(HMDResidentDeviceManagerRoarV3 *)v18 _checkForUnknownLocationAndRetry];
    v21 = _Block_copy(v4);
    v15 = v21;
    if (v21)
    {
      (*(v21 + 2))(v21, 0);
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

void __75__HMDResidentDeviceManagerRoarV3__determineResidentLocationWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 32);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = HMFGetLogIdentifier();
      v11 = 138543618;
      v12 = v7;
      v13 = 2112;
      v14 = v3;
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_ERROR, "%{public}@Determining resident home/away state encountered error: %@", &v11, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
  }

  [*(a1 + 32) _checkForUnknownLocationAndRetry];
  v8 = _Block_copy(*(a1 + 40));
  v9 = v8;
  if (v8)
  {
    (*(v8 + 2))(v8, v3);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_removeRetryTimer
{
  v3 = [(HMDResidentDeviceManagerRoarV3 *)self residentLocationRetryTimer];
  [v3 cancel];

  [(HMDResidentDeviceManagerRoarV3 *)self setResidentLocationRetryTimer:0];
}

- (void)_startRetryTimer
{
  v3 = [(HMDResidentDeviceManagerRoarV3 *)self residentLocationRetryTimer];

  if (!v3)
  {
    v4 = [(HMDResidentDeviceManagerRoarV3 *)self _createBackoffTimer];
    [(HMDResidentDeviceManagerRoarV3 *)self setResidentLocationRetryTimer:v4];

    v5 = [(HMDResidentDeviceManagerRoarV3 *)self residentLocationRetryTimer];
    [v5 setDelegate:self];

    v6 = [(HMDResidentDeviceManagerRoarV3 *)self queue];
    v7 = [(HMDResidentDeviceManagerRoarV3 *)self residentLocationRetryTimer];
    [v7 setDelegateQueue:v6];
  }

  v8 = [(HMDResidentDeviceManagerRoarV3 *)self residentLocationRetryTimer];
  [v8 resume];
}

- (id)_createBackoffTimer
{
  v2 = [objc_alloc(MEMORY[0x277D0F7B0]) initWithMinimumTimeInterval:4 maximumTimeInterval:0 exponentialFactor:300.0 options:43200.0];

  return v2;
}

- (void)_handleHomeLocationChangedNotification:(id)a3
{
  if ([(HMDResidentDeviceManagerRoarV3 *)self isActingAsResident])
  {
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __73__HMDResidentDeviceManagerRoarV3__handleHomeLocationChangedNotification___block_invoke;
    block[3] = &unk_27868A728;
    block[4] = self;
    dispatch_async(queue, block);
  }
}

uint64_t __73__HMDResidentDeviceManagerRoarV3__handleHomeLocationChangedNotification___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v8 = 138543362;
    v9 = v5;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Determining resident location due to home location change", &v8, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  result = [*(a1 + 32) _determineResidentLocationWithCompletion:0];
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)timerDidFire:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  v5 = [(HMDResidentDeviceManagerRoarV3 *)self residentLocationRetryTimer];

  if (v5 == v4)
  {
    v13 = objc_autoreleasePoolPush();
    v14 = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = HMFGetLogIdentifier();
      v18 = 138543362;
      v19 = v16;
      _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@Determining resident location due to retry timer firing", &v18, 0xCu);
    }

    objc_autoreleasePoolPop(v13);
    [(HMDResidentDeviceManagerRoarV3 *)v14 _determineResidentLocationWithCompletion:0];
  }

  else
  {
    v6 = [(HMDResidentDeviceManagerRoarV3 *)self primaryResidentPeriodicReassertTimer];

    if (v6 == v4)
    {
      v7 = objc_autoreleasePoolPush();
      v8 = self;
      v9 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = HMFGetLogIdentifier();
        v18 = 138543362;
        v19 = v10;
        _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@Primary resident periodic re-assert timer fired", &v18, 0xCu);
      }

      objc_autoreleasePoolPop(v7);
      [(HMDResidentDeviceManagerRoarV3 *)v8 _startPrimaryResidentPeriodicReassertionTimer];
      v11 = [(HMDResidentDeviceManagerRoarV3 *)v8 residentSelectionManager];
      v12 = [v11 localPreferredResidentsList];
      [(HMDResidentDeviceManagerRoarV3 *)v8 _publishCurrentResidentStatusWithReason:5 preferredResidentsList:v12];
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)transactionObjectUpdated:(id)a3 newValues:(id)a4 message:(id)a5
{
  v22 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = objc_autoreleasePoolPush();
  v13 = self;
  v14 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v15 = HMFGetLogIdentifier();
    v16 = NSStringFromSelector(a2);
    v18 = 138543618;
    v19 = v15;
    v20 = 2112;
    v21 = v16;
    _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_DEBUG, "%{public}@Method %@ no longer relevant in HH2", &v18, 0x16u);
  }

  objc_autoreleasePoolPop(v12);
  v17 = *MEMORY[0x277D85DE8];
}

- (void)transactionObjectRemoved:(id)a3 message:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = objc_autoreleasePoolPush();
  v10 = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v12 = HMFGetLogIdentifier();
    v13 = NSStringFromSelector(a2);
    v15 = 138543618;
    v16 = v12;
    v17 = 2112;
    v18 = v13;
    _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_DEBUG, "%{public}@Method %@ no longer relevant in HH2", &v15, 0x16u);
  }

  objc_autoreleasePoolPop(v9);
  v14 = *MEMORY[0x277D85DE8];
}

- (void)residentSelectionManager:(id)a3 didUpdatePreferredResidentsList:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v15 = 138543362;
    v16 = v11;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Publishing updated resident status because preferred residents list was updated", &v15, 0xCu);
  }

  objc_autoreleasePoolPop(v8);
  v12 = [(HMDResidentDeviceManagerRoarV3 *)v9 residentSelectionManager];
  v13 = [v12 localPreferredResidentsList];
  [(HMDResidentDeviceManagerRoarV3 *)v9 _publishCurrentResidentStatusWithReason:4 preferredResidentsList:v13];

  v14 = *MEMORY[0x277D85DE8];
}

- (void)residentSelectionManager:(id)a3 didUpdateResidentSelectionInfo:(id)a4 completion:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [(HMDResidentDeviceManagerRoarV3 *)self backingStore];
  [v9 updateResidentSelectionInfoTo:v8 completion:v7];
}

- (void)residentSelectionManager:(id)a3 reassertAsTheCurrentPrimaryWithSelectionTimestamp:(id)a4
{
  [(HMDResidentDeviceManagerRoarV3 *)self _updatePrimaryResidentSelectionTimestamp:a4];

  [(HMDResidentDeviceManagerRoarV3 *)self reAssertAsTheCurrentPrimaryResident];
}

- (void)residentSelectionManager:(id)a3 didUpdateResidentDevice:(id)a4
{
  v8 = a4;
  v5 = [(HMDResidentDeviceManagerRoarV3 *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = [(HMDResidentDeviceManagerRoarV3 *)self residentDevices];
  v7 = [v6 containsObject:v8];

  if ((v7 & 1) == 0)
  {
    [(HMDResidentDeviceManagerRoarV3 *)self _addResidentDevice:v8];
  }

  [(HMDResidentDeviceManagerRoarV3 *)self notifyClientsOfUpdatedResidentDevice:v8];
}

- (void)residentSelectionManager:(id)a3 didUpdateActiveNodes:(id)a4
{
  v9 = a4;
  v5 = [(HMDResidentDeviceManagerRoarV3 *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = [(HMDResidentDeviceManagerRoarV3 *)self residentSelectionManager];
  if ([v6 currentModeType] != 1)
  {

    goto LABEL_5;
  }

  v7 = [(HMDResidentDeviceManagerRoarV3 *)self isCurrentDeviceConfirmedPrimaryResident];

  v8 = v9;
  if (v7)
  {
LABEL_5:
    [(HMDResidentDeviceManagerRoarV3 *)self _updateResidentReachabilityFromReachableResidents:v9 source:7];
    v8 = v9;
  }
}

- (void)residentSelectionManager:(id)a3 didReceivePrimaryResidentIdsIdentifier:(id)a4 selectionTimestamp:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [(HMDResidentDeviceManagerRoarV3 *)self queue];
  dispatch_assert_queue_V2(v9);

  [(HMDResidentDeviceManagerRoarV3 *)self _updatePrimaryResidentSelectionTimestamp:v7];
  v11 = [(HMDResidentDeviceManagerRoarV3 *)self residentDeviceWithIDSIdentifier:v8];

  v10 = [v11 identifier];
  [(HMDResidentDeviceManagerRoarV3 *)self _handleUpdatedPrimaryFromSelection:v10];
}

- (void)residentSelectionManagerReadyAsResident:(id)a3
{
  v4 = [(HMDResidentDeviceManagerRoarV3 *)self queue];
  dispatch_assert_queue_V2(v4);

  v6 = [(HMDResidentDeviceManagerRoarV3 *)self residentSelectionManager];
  v5 = [v6 localPreferredResidentsList];
  [(HMDResidentDeviceManagerRoarV3 *)self _publishCurrentResidentStatusWithReason:1 preferredResidentsList:v5];
}

- (void)residentSelectionManager:(id)a3 didFailToSelectWithError:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDResidentDeviceManagerRoarV3 *)self queue];
  dispatch_assert_queue_V2(v8);

  v9 = objc_autoreleasePoolPush();
  v10 = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v12 = HMFGetLogIdentifier();
    v14 = 138543618;
    v15 = v12;
    v16 = 2112;
    v17 = v7;
    _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_ERROR, "%{public}@Selection failed with error: %@", &v14, 0x16u);
  }

  objc_autoreleasePoolPop(v9);
  v13 = *MEMORY[0x277D85DE8];
}

- (void)residentSelectionManager:(id)a3 didSelectPrimaryResident:(id)a4 selectionInfo:(id)a5 electionLogEvent:(id)a6 completion:(id)a7
{
  v39 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = [(HMDResidentDeviceManagerRoarV3 *)self queue];
  dispatch_assert_queue_V2(v17);

  v18 = objc_autoreleasePoolPush();
  v19 = self;
  v20 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = HMFGetLogIdentifier();
    v22 = [v13 shortDescription];
    *buf = 138543874;
    v34 = v21;
    v35 = 2112;
    v36 = v22;
    v37 = 2112;
    v38 = v14;
    _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@residentSelectionManager didSelectPrimaryResident: %@ selectionInfo: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v18);
  if ([v13 isCurrentDevice])
  {
    [MEMORY[0x277CCAD78] UUID];
  }

  else
  {
    [(HMDResidentDeviceManagerRoarV3 *)v19 primaryResidentGenerationID];
  }
  v23 = ;
  v24 = [v14 selectionTimestamp];
  [(HMDResidentDeviceManagerRoarV3 *)v19 _updatePrimaryResidentSelectionTimestamp:v24];

  if (!v14)
  {
    v27 = [(HMDResidentDeviceManagerRoarV3 *)v19 backingStore];
    [v27 updateResidentSelectionInfoTo:0 completion:v16];

    goto LABEL_10;
  }

  v25 = [(HMDResidentDeviceManagerRoarV3 *)v19 homeSupportsResidentSelection];
  v26 = [(HMDResidentDeviceManagerRoarV3 *)v19 backingStore];
  [v26 updateResidentSelectionInfoTo:v14 completion:v16];

  if (v25)
  {
LABEL_10:
    v28 = [(HMDResidentDeviceManagerRoarV3 *)v19 primaryResidentDevice];
    [(HMDResidentDeviceManagerRoarV3 *)v19 _handleUpdatedPrimaryResidentDevice:v13 previousPrimaryResident:v28 generationID:v23 changeSource:1];

    goto LABEL_11;
  }

  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __126__HMDResidentDeviceManagerRoarV3_residentSelectionManager_didSelectPrimaryResident_selectionInfo_electionLogEvent_completion___block_invoke;
  v30[3] = &unk_278688D58;
  v30[4] = v19;
  v31 = v13;
  v32 = v23;
  [(HMDResidentDeviceManagerRoarV3 *)v19 _handleInitialTransitionToResidentSelectionWithCompletion:v30];

LABEL_11:
  v29 = *MEMORY[0x277D85DE8];
}

void __126__HMDResidentDeviceManagerRoarV3_residentSelectionManager_didSelectPrimaryResident_selectionInfo_electionLogEvent_completion___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = [v2 primaryResidentDevice];
  [v2 _handleUpdatedPrimaryResidentDevice:v3 previousPrimaryResident:v4 generationID:a1[6] changeSource:1];
}

- (void)_handleUpdatedPrimaryFromSelection:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDResidentDeviceManagerRoarV3 *)self primaryResidentUUID];
  v6 = [v4 isEqual:v5];

  if ((v6 & 1) == 0)
  {
    v7 = [(HMDResidentDeviceManagerRoarV3 *)self residentWithUUID:v4];
    v8 = [(HMDResidentDeviceManagerRoarV3 *)self primaryResidentDevice];
    v9 = [v7 isCurrentDevice];
    v10 = objc_autoreleasePoolPush();
    v11 = self;
    v12 = HMFGetOSLogHandle();
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_INFO);
    if (v9)
    {
      if (v13)
      {
        v14 = HMFGetLogIdentifier();
        v20 = 138543362;
        v21 = v14;
        _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@Selection notified that we are the primary. Becoming the primary resident.", &v20, 0xCu);
      }

      objc_autoreleasePoolPop(v10);
      v15 = [MEMORY[0x277CCAD78] UUID];
      [(HMDResidentDeviceManagerRoarV3 *)v11 _handleUpdatedPrimaryResidentDevice:v7 previousPrimaryResident:v8 generationID:v15 changeSource:6];
    }

    else
    {
      if (v13)
      {
        v16 = HMFGetLogIdentifier();
        v17 = [v7 shortDescription];
        v18 = [v8 shortDescription];
        v20 = 138543874;
        v21 = v16;
        v22 = 2114;
        v23 = v17;
        v24 = 2114;
        v25 = v18;
        _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@Selection notified a new primary resident: %{public}@. Current Primary: %{public}@. Kicking off a primary resident discovery", &v20, 0x20u);
      }

      objc_autoreleasePoolPop(v10);
      [(HMDResidentDeviceManagerRoarV3 *)v11 _discoverPrimaryResidentForRequester:0];
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)_handleReachabilityAfterPrimaryResidentChangedTo:(id)a3 previousPrimaryResident:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    v14 = objc_autoreleasePoolPush();
    v15 = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = HMFGetLogIdentifier();
      v19 = 138543362;
      v20 = v17;
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@There is no primary resident. Marking all residents as unreachable", &v19, 0xCu);
    }

    objc_autoreleasePoolPop(v14);
    v13 = [(HMDResidentDeviceManagerRoarV3 *)v15 residentDevices];
    [(HMDResidentDeviceManagerRoarV3 *)v15 _updateReachability:0 forResidentDevices:v13 source:6];
    goto LABEL_8;
  }

  if ([v6 isCurrentDevice])
  {
    v8 = [(HMDResidentDeviceManagerRoarV3 *)self residentSelectionManager];
    v9 = [v8 currentModeType];

    if (v9 == 1)
    {
      v10 = MEMORY[0x277CBEB58];
      v11 = [(HMDResidentDeviceManagerRoarV3 *)self residentSelectionManager];
      v12 = [v11 locallyReachableResidents];
      v13 = [v10 setWithSet:v12];

      [v13 addObject:v6];
      [(HMDResidentDeviceManagerRoarV3 *)self _updateResidentReachabilityFromReachableResidents:v13 source:7];
LABEL_8:
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (double)_primaryResidentPeriodicReassertionTimeInterval
{
  v37 = *MEMORY[0x277D85DE8];
  v3 = [(HMDResidentDeviceManagerRoarV3 *)self dataSource];
  v4 = [v3 primaryResidentPeriodicReassertDurationSeconds];

  if (v4)
  {
    v5 = [v4 unsignedIntValue];
    v6 = objc_autoreleasePoolPush();
    v7 = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = HMFGetLogIdentifier();
      v29 = 138543618;
      v30 = v9;
      v31 = 2048;
      v32 = *&v5;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@Using primaryResidentPeriodicReassertDurationSeconds from server bag: %lu", &v29, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
  }

  else
  {
    *&v5 = 0.0;
  }

  v10 = [(HMDResidentDeviceManagerRoarV3 *)self dataSource];
  v11 = [v10 primaryResidentPeriodicReassertSlopDurationSeconds];

  if (v11)
  {
    *&v12 = [v11 unsignedIntValue];
    v13 = objc_autoreleasePoolPush();
    v14 = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = HMFGetLogIdentifier();
      v29 = 138543618;
      v30 = v16;
      v31 = 2048;
      v32 = v12;
      _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@Using primaryResidentPeriodicReassertSlopDurationSeconds from server bag: %lu", &v29, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
    if (*&v5 != 0.0)
    {
      if (LODWORD(v12))
      {
        v17 = v5 + arc4random() % LODWORD(v12);
        goto LABEL_14;
      }

LABEL_13:
      v12 = 0.0;
      v17 = v5;
LABEL_14:
      v18 = v17;
      v19 = objc_autoreleasePoolPush();
      v20 = self;
      v21 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = HMFGetLogIdentifier();
        v29 = 138544130;
        v30 = v22;
        v31 = 2048;
        v32 = v18;
        v33 = 2048;
        v34 = v5;
        v35 = 2048;
        v36 = v12;
        v23 = "%{public}@Determined reassert interval: %f seconds (base: %lu seconds, slop: %lu seconds)";
        v24 = v21;
        v25 = 42;
LABEL_18:
        _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_DEFAULT, v23, &v29, v25);

        goto LABEL_19;
      }

      goto LABEL_19;
    }
  }

  else if (*&v5 != 0.0)
  {
    goto LABEL_13;
  }

  v19 = objc_autoreleasePoolPush();
  v26 = self;
  v21 = HMFGetOSLogHandle();
  v18 = 0.0;
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v22 = HMFGetLogIdentifier();
    v29 = 138543362;
    v30 = v22;
    v23 = "%{public}@Primary resident periodic re-assert duration is 0, defaulting to 0";
    v24 = v21;
    v25 = 12;
    goto LABEL_18;
  }

LABEL_19:

  objc_autoreleasePoolPop(v19);
  v27 = *MEMORY[0x277D85DE8];
  return v18;
}

- (void)_stopPrimaryResidentPeriodicReassertionTimer
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = HMFGetLogIdentifier();
    v9 = 138543362;
    v10 = v6;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@Stopping primary resident periodic re-assert timer", &v9, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v7 = [(HMDResidentDeviceManagerRoarV3 *)v4 primaryResidentPeriodicReassertTimer];
  [v7 cancel];

  [(HMDResidentDeviceManagerRoarV3 *)v4 setPrimaryResidentPeriodicReassertTimer:0];
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_startPrimaryResidentPeriodicReassertionTimer
{
  v24 = *MEMORY[0x277D85DE8];
  [(HMDResidentDeviceManagerRoarV3 *)self _primaryResidentPeriodicReassertionTimeInterval];
  v4 = v3;
  v5 = fabs(v3);
  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (v5 >= 2.22044605e-16)
  {
    if (v9)
    {
      v11 = HMFGetLogIdentifier();
      v20 = 138543618;
      v21 = v11;
      v22 = 2048;
      v23 = v4;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@Starting primary resident periodic re-assert timer with interval: %f seconds", &v20, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    v12 = [(HMDResidentDeviceManagerRoarV3 *)v7 dataSource];
    v13 = [v12 timerProvider];
    v14 = [v13 timerWithTimeInterval:0 options:v4];
    [(HMDResidentDeviceManagerRoarV3 *)v7 setPrimaryResidentPeriodicReassertTimer:v14];

    v15 = [(HMDResidentDeviceManagerRoarV3 *)v7 primaryResidentPeriodicReassertTimer];
    [v15 setDelegate:v7];

    v16 = [(HMDResidentDeviceManagerRoarV3 *)v7 queue];
    v17 = [(HMDResidentDeviceManagerRoarV3 *)v7 primaryResidentPeriodicReassertTimer];
    [v17 setDelegateQueue:v16];

    v18 = [(HMDResidentDeviceManagerRoarV3 *)v7 primaryResidentPeriodicReassertTimer];
    [v18 resume];
  }

  else
  {
    if (v9)
    {
      v10 = HMFGetLogIdentifier();
      v20 = 138543362;
      v21 = v10;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@Primary resident periodic re-assert interval is 0, not starting timer", &v20, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)_updatePrimaryResidentPeriodicReassertionTimerWithPrimaryResidentDevice:(id)a3
{
  v4 = [a3 isCurrentDevice];
  v5 = [(HMDResidentDeviceManagerRoarV3 *)self primaryResidentPeriodicReassertTimer];
  v6 = v5;
  if (v4)
  {

    if (!v6)
    {

      [(HMDResidentDeviceManagerRoarV3 *)self _startPrimaryResidentPeriodicReassertionTimer];
    }
  }

  else
  {

    if (v6)
    {

      [(HMDResidentDeviceManagerRoarV3 *)self _stopPrimaryResidentPeriodicReassertionTimer];
    }
  }
}

- (void)_updatePrimaryResidentTransactionWithPrimaryResidentDevice:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 isCurrentDevice] && !self->_primaryResidentTransaction)
  {
    v10 = objc_autoreleasePoolPush();
    v11 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v13 = HMFGetLogIdentifier();
      v16 = 138543362;
      v17 = v13;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_DEBUG, "%{public}@Taking OS transaction since this device is now the primary resident", &v16, 0xCu);
    }

    objc_autoreleasePoolPop(v10);
    v14 = [objc_alloc(MEMORY[0x277D0F880]) initWithName:@"com.apple.homed.primary-resident"];
    primaryResidentTransaction = self->_primaryResidentTransaction;
    self->_primaryResidentTransaction = v14;
    goto LABEL_11;
  }

  if (([v4 isCurrentDevice] & 1) == 0 && self->_primaryResidentTransaction)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v8 = HMFGetLogIdentifier();
      v16 = 138543362;
      v17 = v8;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_DEBUG, "%{public}@Releasing OS transaction since this device is no longer the primary resident", &v16, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
    primaryResidentTransaction = self->_primaryResidentTransaction;
    self->_primaryResidentTransaction = 0;
LABEL_11:
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_handleUpdatedPrimaryResidentDevice:(id)a3 previousPrimaryResident:(id)a4 generationID:(id)a5 changeSource:(unint64_t)a6
{
  v93 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  obj = a5;
  v84 = a5;
  v11 = [v9 isCurrentDevice];
  v12 = v11;
  if (v9)
  {
    v13 = [v9 isReachable];
    if (v12)
    {
LABEL_3:
      v14 = v12;
      v15 = [(HMDResidentDeviceManagerRoarV3 *)self residentDevices];
      v83 = [v15 count] == 1;

      v12 = v14;
      goto LABEL_6;
    }
  }

  else
  {
    v13 = 1;
    if (v11)
    {
      goto LABEL_3;
    }
  }

  v83 = 0;
LABEL_6:
  v80 = (v9 == 0) | v12;
  v81 = v12;
  if (!((v10 != 0) & v13 | (v9 == 0) | v12 & 1))
  {
    [(HMDResidentDeviceManagerRoarV3 *)self _updateReachabilityFromWorkingStoreExceptResident:v9];
  }

  v16 = [v10 identifier];
  v17 = [v9 identifier];
  v18 = HMFEqualObjects();

  if (v13)
  {
    if (!v9)
    {
      v19 = objc_autoreleasePoolPush();
      v20 = self;
      v21 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        v22 = HMFGetLogIdentifier();
        *buf = 138543362;
        v86 = v22;
        _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_INFO, "%{public}@There is no primary resident. Marking all residents as unreachable", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v19);
      v23 = [(HMDResidentDeviceManagerRoarV3 *)v20 residentDevices];
      [(HMDResidentDeviceManagerRoarV3 *)v20 _updateReachability:0 forResidentDevices:v23 source:6];
    }
  }

  else
  {
    v24 = objc_autoreleasePoolPush();
    v25 = self;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      v27 = HMFGetLogIdentifier();
      *buf = 138543362;
      v86 = v27;
      _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_INFO, "%{public}@Marking new primary resident as reachable", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v24);
    if (v18)
    {
      v28 = 5;
    }

    else
    {
      v28 = 4;
    }

    [(HMDResidentDeviceManagerRoarV3 *)v25 _updateReachability:1 forResidentDevice:v9 source:v28 forceUpdate:v83];
  }

  if (v18)
  {
    [(HMDResidentDeviceManagerRoarV3 *)self _updatePrimaryResidentGenerationID:v84];
  }

  else
  {
    v29 = objc_autoreleasePoolPush();
    v30 = self;
    v31 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      v32 = HMFGetLogIdentifier();
      if (a6 - 1 > 6)
      {
        v33 = @"resident removed";
      }

      else
      {
        v33 = off_278685270[a6 - 1];
      }

      v34 = [v10 shortDescription];
      v35 = [v9 shortDescription];
      *buf = 138544130;
      v86 = v32;
      v87 = 2112;
      v88 = v33;
      v89 = 2112;
      v90 = v34;
      v91 = 2112;
      v92 = v35;
      _os_log_impl(&dword_229538000, v31, OS_LOG_TYPE_DEFAULT, "%{public}@Updating primary resident due to %@, from %@ to %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v29);
    os_unfair_lock_lock_with_options();
    v36 = [v9 identifier];
    primaryResidentUUID = v30->_primaryResidentUUID;
    v30->_primaryResidentUUID = v36;

    primaryResidentGenerationID = v30->_primaryResidentGenerationID;
    v39 = HMFEqualObjects();
    if ((v39 & 1) == 0)
    {
      objc_storeStrong(&v30->_primaryResidentGenerationID, obj);
    }

    os_unfair_lock_unlock(&v30->_lock);
    if (![(HMDResidentDeviceManagerRoarV3 *)v30 isActingAsResident])
    {
      if (v10)
      {
        v40 = [(HMDResidentDeviceManagerRoarV3 *)v30 reachabilityObserver];
        v41 = [v10 device];
        v42 = [v41 deviceAddress];
        [v40 removeListener:v30 forDeviceAddress:v42];

        v43 = [(HMDResidentDeviceManagerRoarV3 *)v30 deviceMonitor];
        v44 = [v10 device];
        [v43 stopMonitoringDevice:v44 forClient:v30];
      }

      if (v9)
      {
        v45 = [(HMDResidentDeviceManagerRoarV3 *)v30 reachabilityObserver];
        v46 = [v9 device];
        v47 = [v46 deviceAddress];
        [v45 addListener:v30 forDeviceAddress:v47];

        v48 = [(HMDResidentDeviceManagerRoarV3 *)v30 deviceMonitor];
        v49 = [v9 device];
        [v48 startMonitoringDevice:v49 withInitialReachability:0 forClient:v30];

        v50 = [(HMDResidentDeviceManagerRoarV3 *)v30 deviceMonitor];
        v51 = [v50 unreachableDevices];
        v52 = [v9 device];
        -[HMDResidentDeviceManagerRoarV3 _setResident:reachableOverIDS:andNotify:](v30, "_setResident:reachableOverIDS:andNotify:", v9, [v51 containsObject:v52] ^ 1, 0);
      }
    }

    [(HMDResidentDeviceManagerRoarV3 *)v30 _updatePrimaryResidentTransactionWithPrimaryResidentDevice:v9];
    if (!(v83 | (([(HMDResidentDeviceManagerRoarV3 *)v30 homeSupportsResidentSelection]& v81 & 1) == 0)))
    {
      [(HMDResidentDeviceManagerRoarV3 *)v30 _refreshAllResidentsReachabilityFromStatusKit];
    }

    [(HMDResidentDeviceManagerRoarV3 *)v30 notifyUpdatedPrimaryResident:v9 previousPrimaryResident:v10];
    if ((v39 & 1) == 0)
    {
      v53 = objc_autoreleasePoolPush();
      v54 = v30;
      v55 = HMFGetOSLogHandle();
      v56 = os_log_type_enabled(v55, OS_LOG_TYPE_INFO);
      if (v81)
      {
        if (v56)
        {
          v57 = HMFGetLogIdentifier();
          *buf = 138543618;
          v86 = v57;
          v87 = 2114;
          v88 = v84;
          _os_log_impl(&dword_229538000, v55, OS_LOG_TYPE_INFO, "%{public}@Using newly generated primaryResidentGenerationID = %{public}@", buf, 0x16u);
        }
      }

      else if (v56)
      {
        v58 = HMFGetLogIdentifier();
        *buf = 138543618;
        v86 = v58;
        v87 = 2114;
        v88 = v84;
        _os_log_impl(&dword_229538000, v55, OS_LOG_TYPE_INFO, "%{public}@Updating primaryResidentGenerationID = %{public}@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v53);
    }

    if (v80)
    {
      [(HMDResidentDeviceManagerRoarV3 *)v30 _teardownSessionWithPrimaryResidentDevice];
    }

    else
    {
      [(HMDResidentDeviceManagerRoarV3 *)v30 _setupSessionWithPrimaryResidentDevice];
    }

    [(HMDResidentDeviceManagerRoarV3 *)v30 _notifyPrimaryResidentChanged:v9 previousPrimaryResident:v10 changeSource:a6];
  }

  if (v9)
  {
    v59 = [(HMDResidentDeviceManagerRoarV3 *)self primaryDiscoveryManager];
    [v59 cancel];

    logger = self->_logger;
    if (os_signpost_enabled(logger))
    {
      v61 = logger;
      v62 = [v9 identifier];
      *buf = 138412290;
      v86 = v62;
      _os_signpost_emit_with_name_impl(&dword_229538000, v61, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "HH2ElectedPrimaryResident", "electedPrimaryResidentIdentifier=%{signpost.description:attribute}@ ", buf, 0xCu);
    }
  }

  [(HMDResidentDeviceManagerRoarV3 *)self _handleReachabilityAfterPrimaryResidentChangedTo:v9 previousPrimaryResident:v10];
  v63 = [v9 device];
  if (-[HMDResidentDeviceManagerRoarV3 isCurrentDeviceConfirmedPrimaryResident](self, "isCurrentDeviceConfirmedPrimaryResident") && [v63 isCurrentDevice])
  {
    v64 = [(HMDResidentDeviceManagerRoarV3 *)self backingStore];
    v65 = [(HMDResidentDeviceManagerRoarV3 *)self availableResidentDevices];
    [v64 updateIdentifiersForAvailableResidentDevices:v65];
  }

  v66 = [(HMDResidentDeviceManagerRoarV3 *)self residentSelectionManager];
  if ([v66 currentModeType] == 3)
  {
  }

  else
  {
    v67 = [(HMDResidentDeviceManagerRoarV3 *)self residentSelectionManager];
    v68 = [v67 currentModeType] == 2;

    if (!v68)
    {
      goto LABEL_65;
    }
  }

  if (([v9 isCurrentDevice] & 1) != 0 || objc_msgSend(v10, "isCurrentDevice") && -[HMDResidentDeviceManagerRoarV3 isActingAsResident](self, "isActingAsResident"))
  {
    v69 = objc_autoreleasePoolPush();
    v70 = self;
    v71 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v71, OS_LOG_TYPE_INFO))
    {
      v72 = HMFGetLogIdentifier();
      [v9 isCurrentDevice];
      v73 = HMFBooleanToString();
      [v10 isCurrentDevice];
      v74 = HMFBooleanToString();
      *buf = 138543874;
      v86 = v72;
      v87 = 2112;
      v88 = v73;
      v89 = 2112;
      v90 = v74;
      _os_log_impl(&dword_229538000, v71, OS_LOG_TYPE_INFO, "%{public}@Publishing updated resident status because became primary: %@ was previous primary: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v69);
    if ([v9 isCurrentDevice])
    {
      v75 = 2;
    }

    else
    {
      v75 = 3;
    }

    v76 = [(HMDResidentDeviceManagerRoarV3 *)v70 residentSelectionManager];
    v77 = [v76 localPreferredResidentsList];
    [(HMDResidentDeviceManagerRoarV3 *)v70 _publishCurrentResidentStatusWithReason:v75 preferredResidentsList:v77];
  }

  [(HMDResidentDeviceManagerRoarV3 *)self _updatePrimaryResidentPeriodicReassertionTimerWithPrimaryResidentDevice:v9];
LABEL_65:

  v78 = *MEMORY[0x277D85DE8];
}

- (void)_notifyPrimaryResidentChanged:(id)a3 previousPrimaryResident:(id)a4 changeSource:(unint64_t)a5
{
  v29 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __101__HMDResidentDeviceManagerRoarV3__notifyPrimaryResidentChanged_previousPrimaryResident_changeSource___block_invoke;
  aBlock[3] = &unk_278685218;
  objc_copyWeak(v25, &location);
  v10 = v8;
  v23 = v10;
  v11 = v9;
  v24 = v11;
  v25[1] = a5;
  v12 = _Block_copy(aBlock);
  v13 = [(HMDResidentDeviceManagerRoarV3 *)self residentSelectionInfo];
  v14 = [v13 selectionTimestamp];
  v15 = [(HMDResidentDeviceManagerRoarV3 *)self primaryResidentSelectionTimestamp];
  v16 = [v14 compare:v15] == -1;

  if (v16)
  {
    v17 = objc_autoreleasePoolPush();
    v18 = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543362;
      v28 = v20;
      _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_INFO, "%{public}@ResidentSelectionInfo is out of date submit the logevent when it is synced", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v17);
    [(HMDResidentDeviceManagerRoarV3 *)v18 setPendingNotifyPrimaryChanged:v12];
  }

  else
  {
    v12[2](v12);
  }

  objc_destroyWeak(v25);
  objc_destroyWeak(&location);

  v21 = *MEMORY[0x277D85DE8];
}

void __101__HMDResidentDeviceManagerRoarV3__notifyPrimaryResidentChanged_previousPrimaryResident_changeSource___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = [WeakRetained isActingAsResident];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (v2)
  {
    [WeakRetained _submitLogeventForPrimaryResident:v3 previousPrimaryResident:v4 changeSource:*(a1 + 56)];
  }

  else
  {
    [WeakRetained _notifyUserPreferredResidentReachability:v3 previousPrimaryResident:v4];
  }
}

- (void)_submitLogeventForPrimaryResident:(id)a3 previousPrimaryResident:(id)a4 changeSource:(unint64_t)a5
{
  v122 = *MEMORY[0x277D85DE8];
  v89 = a3;
  v8 = a4;
  if (!v8 && a5 != 6)
  {
    v9 = objc_autoreleasePoolPush();
    v10 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543362;
      *&buf[4] = v12;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Skip not a resident selection primary changed", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
    goto LABEL_63;
  }

  v96 = [(HMDResidentDeviceManagerRoarV3 *)self home];
  v13 = [(HMDResidentDeviceManagerRoarV3 *)self residentSelectionInfo];
  v14 = [(HMDResidentDeviceManagerRoarV3 *)self residentSelectionManager];
  v15 = [v14 minimumHomeKitVersionForResidentSelection];

  if (v8)
  {
    v16 = [v8 device];
    v17 = [v16 version];
    v85 = [v17 isAtLeastVersion:v15] ^ 1;
  }

  else
  {
    v85 = 0;
  }

  v88 = v13;
  if ([v13 currentModeType] == 2)
  {
    v18 = [(HMDResidentDeviceManagerRoarV3 *)self currentResidentDevice];
    v19 = [v18 device];
    v20 = [v19 idsIdentifier];
    v21 = [v13 preferredResidentIDSIdentifier];
    v84 = [v20 isEqual:v21];

    v23 = [v89 device];
    v27 = [v23 idsIdentifier];
    v29 = [v13 preferredResidentIDSIdentifier];
    v28 = v27;
    v30 = v29;
  }

  else
  {
    v22 = [(HMDResidentDeviceManagerRoarV3 *)self preferredResidentUUIDs];
    v23 = [v22 firstObject];

    v24 = [(HMDResidentDeviceManagerRoarV3 *)self currentResidentDevice];
    v25 = [v24 device];
    v26 = [v25 idsIdentifier];
    v84 = [v26 isEqual:v23];

    v27 = [v89 device];
    v28 = [v27 idsIdentifier];
    v29 = v28;
    v30 = v23;
  }

  v83 = [v28 isEqual:v30];

  v95 = [(HMDResidentDeviceManagerRoarV3 *)self homeSupportsResidentSelection];
  v115 = 0u;
  v116 = 0u;
  v117 = 0u;
  v118 = 0u;
  obj = [(HMDResidentDeviceManagerRoarV3 *)self residentDevices];
  v91 = v15;
  v97 = [obj countByEnumeratingWithState:&v115 objects:v121 count:16];
  v86 = self;
  v87 = v8;
  if (!v97)
  {
    v101 = 0;
    v102 = 0;
    v100 = 0;
    v31 = 0;
    v104 = 0;
    v105 = 0;
    v32 = 0;
    goto LABEL_60;
  }

  v101 = 0;
  v102 = 0;
  v100 = 0;
  v31 = 0;
  v104 = 0;
  v105 = 0;
  v32 = 0;
  v94 = *v116;
  v93 = *MEMORY[0x277D0F5F8];
  v92 = *(MEMORY[0x277D0F5F8] + 16);
  do
  {
    v33 = 0;
    do
    {
      if (*v116 != v94)
      {
        objc_enumerationMutation(obj);
      }

      v103 = v33;
      v34 = *(*(&v115 + 1) + 8 * v33);
      v35 = [v34 device];
      v36 = [v35 productInfo];
      v37 = [v36 softwareVersion];

      v113 = 0u;
      v114 = 0u;
      v111 = 0u;
      v112 = 0u;
      v108 = [v96 appleMediaAccessories];
      v38 = [v108 countByEnumeratingWithState:&v111 objects:v120 count:16];
      v106 = v32;
      if (v38)
      {
        v39 = v38;
        v98 = v37;
        v99 = v31;
        v40 = *v112;
        while (2)
        {
          for (i = 0; i != v39; ++i)
          {
            if (*v112 != v40)
            {
              objc_enumerationMutation(v108);
            }

            v42 = *(*(&v111 + 1) + 8 * i);
            v43 = [v42 device];
            v44 = [v43 identifier];
            v45 = v34;
            v46 = [v34 device];
            v47 = [v46 identifier];
            v48 = [v44 isEqual:v47];

            if (v48)
            {
              v37 = [v42 softwareVersion];

              v15 = v91;
              v31 = v99;
              v34 = v45;
              goto LABEL_27;
            }

            v34 = v45;
          }

          v39 = [v108 countByEnumeratingWithState:&v111 objects:v120 count:16];
          if (v39)
          {
            continue;
          }

          break;
        }

        v15 = v91;
        v37 = v98;
        v31 = v99;
      }

LABEL_27:

      if (v37)
      {
        [v37 operatingSystemVersion];
      }

      else
      {
        memset(buf, 0, sizeof(buf));
      }

      v49 = HMFOperatingSystemVersionCompare();
      if (v95)
      {
        if (v37)
        {
          [v37 operatingSystemVersion];
        }

        else
        {
          memset(buf, 0, sizeof(buf));
        }

        v109 = *MEMORY[0x277D0F690];
        v110 = *(MEMORY[0x277D0F690] + 16);
        v50 = HMFOperatingSystemVersionCompare() != 1;
        if (v31)
        {
LABEL_37:
          if (![v31 isGreaterThanVersion:v37])
          {
            goto LABEL_39;
          }
        }
      }

      else
      {
        v50 = 0;
        if (v31)
        {
          goto LABEL_37;
        }
      }

      v51 = v37;

      v31 = v51;
LABEL_39:
      if (v49 == 1)
      {
        if (!v50)
        {
          goto LABEL_53;
        }

        v52 = v101;
        if (v101)
        {
          v53 = v37;
          v54 = v100;
          if (![v101 isGreaterThanVersion:v37])
          {
            goto LABEL_43;
          }
        }

        else
        {
          v53 = v37;
          v54 = v100;
        }
      }

      else
      {
        v52 = v100;
        v53 = v101;
        if (v100)
        {
          v54 = v37;
          if (([v100 isGreaterThanVersion:v37] & 1) == 0)
          {
LABEL_43:
            if (!v102)
            {
              goto LABEL_52;
            }

            goto LABEL_51;
          }
        }

        else
        {
          v54 = v37;
        }
      }

      v55 = v37;

      v100 = v54;
      v101 = v53;
      if (!v102)
      {
        goto LABEL_52;
      }

LABEL_51:
      if ([v102 isGreaterThanVersion:v37])
      {
LABEL_52:
        v56 = v37;

        v102 = v56;
      }

LABEL_53:
      v32 = v106;
      if (!v106 || ([v34 device], v57 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v57, "version"), v58 = objc_claimAutoreleasedReturnValue(), v59 = objc_msgSend(v58, "isGreaterThanVersion:", v106), v58, v57, v59))
      {
        v60 = [v34 device];
        v61 = [v60 version];

        v32 = v61;
      }

      v62 = [v34 device];
      v63 = [v62 version];
      v64 = [v63 isAtLeastVersion:v15];

      v104 += v64;
      v105 += v64 ^ 1;

      v33 = v103 + 1;
    }

    while (v103 + 1 != v97);
    v97 = [obj countByEnumeratingWithState:&v115 objects:v121 count:16];
  }

  while (v97);
LABEL_60:

  [v89 device];
  v66 = v65 = v32;
  v67 = [v66 version];
  v107 = v65;
  v68 = [v67 isAtLeastVersion:v65];

  v69 = [HMDResidentSelectionPrimaryResidentChangedLogEvent alloc];
  v70 = [v89 isCurrentDevice];
  v71 = [v88 currentModeType];
  v72 = [(HMDResidentDeviceManagerRoarV3 *)v86 residentSelectionManager];
  v73 = v31;
  v74 = [v72 primaryChangedReason];
  v75 = [v96 uuid];
  v76 = [(HMDResidentSelectionPrimaryResidentChangedLogEvent *)v69 initWithPrimaryResidentDidChange:1 isElectedDevicePreferred:v83 isCurrentDevicePrimary:v70 isCurrentDevicePreferred:v84 isPreviousPrimaryRev2:v85 isElectedDeviceLatestSWVersionInHome:v68 residentSelectionMode:v71 triggerReason:v74 numResidentsREV3Capable:v104 numResidentsREV3Incompatible:v105 minimumVersionInHome:v73 minimumParticipatingtvOS17Version:v101 minimumParticipatingAllVersion:v102 minimumParticipatingtvOS18Version:v100 homeUUID:v75];

  v77 = objc_autoreleasePoolPush();
  v78 = v86;
  v79 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v79, OS_LOG_TYPE_INFO))
  {
    v80 = HMFGetLogIdentifier();
    *buf = 138543618;
    *&buf[4] = v80;
    *&buf[12] = 2112;
    *&buf[14] = v76;
    _os_log_impl(&dword_229538000, v79, OS_LOG_TYPE_INFO, "%{public}@Primary resident changed logEvent: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v77);
  v81 = [v96 logEventSubmitter];
  [v81 submitLogEvent:v76];

  v8 = v87;
LABEL_63:

  v82 = *MEMORY[0x277D85DE8];
}

- (void)_updateReachabilityFromWorkingStoreExceptResident:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDResidentDeviceManagerRoarV3 *)self residentDevicesSet];
  v6 = [v5 mutableCopy];

  [v6 removeObject:v4];
  v7 = objc_autoreleasePoolPush();
  v8 = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    *buf = 138543362;
    v20 = v10;
    _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Updating resident reachability from database", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v7);
  v11 = objc_alloc(MEMORY[0x277D0F7A8]);
  v12 = [(HMDResidentDeviceManagerRoarV3 *)v8 queue];
  v13 = [v11 initWithQueue:v12];

  v14 = [(HMDResidentDeviceManagerRoarV3 *)v8 backingStore];
  v15 = [v14 residentsRequiringReachabilityUpdate:v6];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __84__HMDResidentDeviceManagerRoarV3__updateReachabilityFromWorkingStoreExceptResident___block_invoke;
  v18[3] = &unk_2786851F0;
  v18[4] = v8;
  v16 = [v15 inContext:v13 then:v18];

  v17 = *MEMORY[0x277D85DE8];
}

uint64_t __84__HMDResidentDeviceManagerRoarV3__updateReachabilityFromWorkingStoreExceptResident___block_invoke(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __84__HMDResidentDeviceManagerRoarV3__updateReachabilityFromWorkingStoreExceptResident___block_invoke_2;
  v3[3] = &unk_278685038;
  v3[4] = *(a1 + 32);
  [a2 hmf_enumerateWithAutoreleasePoolUsingBlock:v3];
  return 1;
}

void __84__HMDResidentDeviceManagerRoarV3__updateReachabilityFromWorkingStoreExceptResident___block_invoke_2(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 isReachable];
  v5 = objc_autoreleasePoolPush();
  v6 = *(a1 + 32);
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = HMFBooleanToString();
    v10 = [v3 shortDescription];
    v12 = 138543874;
    v13 = v8;
    v14 = 2112;
    v15 = v9;
    v16 = 2112;
    v17 = v10;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Updating resident reachability from database to %@ for: %@", &v12, 0x20u);
  }

  objc_autoreleasePoolPop(v5);
  [*(a1 + 32) _updateReachability:v4 ^ 1u forResidentDevice:v3 source:3];

  v11 = *MEMORY[0x277D85DE8];
}

- (int64_t)atHomeLevel
{
  WeakRetained = objc_loadWeakRetained(&self->_home);
  v3 = [WeakRetained atHomeLevel];

  return v3;
}

- (BOOL)isOwnerUser
{
  v2 = [(HMDResidentDeviceManagerRoarV3 *)self home];
  v3 = [v2 isOwnerUser];

  return v3;
}

- (BOOL)isResidentEnabled
{
  v2 = [(HMDResidentDeviceManagerRoarV3 *)self ourSelf];
  v3 = [v2 isEnabled];

  return v3;
}

- (void)updatePrimaryResidentWithUUID:(id)a3 actions:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = objc_autoreleasePoolPush();
  v10 = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v12 = HMFGetLogIdentifier();
    v13 = NSStringFromSelector(a2);
    v15 = 138543618;
    v16 = v12;
    v17 = 2112;
    v18 = v13;
    _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_DEBUG, "%{public}@Method %@ no longer relevant in HH2", &v15, 0x16u);
  }

  objc_autoreleasePoolPop(v9);
  v14 = *MEMORY[0x277D85DE8];
}

- (void)_handleCloudZoneReadyNotification:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = HMFGetLogIdentifier();
    v10 = NSStringFromSelector(a2);
    v12 = 138543618;
    v13 = v9;
    v14 = 2112;
    v15 = v10;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_DEBUG, "%{public}@Method %@ no longer relevant in HH2", &v12, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  v11 = *MEMORY[0x277D85DE8];
}

- (id)_residentsFromResidentStatuses:(id)a3 residentDevices:(id)a4
{
  v5 = a4;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __81__HMDResidentDeviceManagerRoarV3__residentsFromResidentStatuses_residentDevices___block_invoke;
  v9[3] = &unk_2786851C8;
  v10 = v5;
  v6 = v5;
  v7 = [a3 na_map:v9];

  return v7;
}

- (void)channel:(id)a3 didObservePrimaryResidentChange:(id)a4
{
  v32 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDResidentDeviceManagerRoarV3 *)self queue];
  dispatch_assert_queue_V2(v8);

  if (v7)
  {
    v9 = objc_autoreleasePoolPush();
    v10 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = HMFGetLogIdentifier();
      v13 = [v7 idsIdentifier];
      v14 = [v7 generationID];
      v26 = 138543874;
      v27 = v12;
      v28 = 2114;
      v29 = v13;
      v30 = 2112;
      v31 = v14;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@Did observed primary resident from status channel: %{public}@, generation: %@", &v26, 0x20u);
    }

    objc_autoreleasePoolPop(v9);
    v15 = [v7 idsIdentifier];
    v16 = [v7 idsDestination];
    v17 = [HMDDeviceAddress addressWithIDSIdentifier:v15 idsDestination:v16];

    v18 = [(HMDResidentDeviceManagerRoarV3 *)v10 appleAccountManager];
    v19 = [v18 accountRegistry];
    v20 = [v19 deviceForAddress:v17];

    v21 = [v7 generationID];
    v22 = [v7 selectionInfo];
    v23 = [v22 selectionTimestamp];
    v24 = [(HMDResidentDeviceManagerRoarV3 *)v10 foundNewPrimaryResident:v20 generationID:v21 selectionTimestamp:v23 changeSource:7];
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)channel:(id)a3 didObserveDevicesAdded:(id)a4 lost:(id)a5 updated:(id)a6
{
  v42 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(HMDResidentDeviceManagerRoarV3 *)self queue];
  dispatch_assert_queue_V2(v14);

  v15 = [(HMDResidentDeviceManagerRoarV3 *)self residentSelectionManager];
  v16 = [v15 currentModeType];

  if (v16 == 1)
  {
    v17 = objc_autoreleasePoolPush();
    v18 = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = HMFGetLogIdentifier();
      v34 = 138543362;
      v35 = v20;
      _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_INFO, "%{public}@Ignoring Resident Status Channel update - in Coordination selection mode", &v34, 0xCu);
    }

    objc_autoreleasePoolPop(v17);
  }

  else
  {
    v21 = [HMDResidentSelectionStatusKit alloc];
    v22 = [(HMDResidentDeviceManagerRoarV3 *)self residentStatusChannel];
    v23 = [v22 presentResidentStatuses];
    v24 = [(HMDResidentSelectionStatusKit *)v21 initWithWithContext:self residentStatusList:v23];
    [(HMDResidentDeviceManagerRoarV3 *)self setPresentResidentsStatuses:v24];

    v25 = objc_autoreleasePoolPush();
    v26 = self;
    v27 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      v28 = HMFGetLogIdentifier();
      v34 = 138544130;
      v35 = v28;
      v36 = 2112;
      v37 = v11;
      v38 = 2112;
      v39 = v12;
      v40 = 2112;
      v41 = v13;
      _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_INFO, "%{public}@Status channel Observed devices added %@ \nlost %@ \nupdated %@", &v34, 0x2Au);
    }

    objc_autoreleasePoolPop(v25);
    [(HMDResidentDeviceManagerRoarV3 *)v26 _refreshAllResidentsReachabilityFromStatusKit];
    if ([(HMDResidentDeviceManagerRoarV3 *)v26 isActingAsResident])
    {
      v29 = [v11 na_map:&__block_literal_global_284_249892];
      v30 = [v12 na_map:&__block_literal_global_286_249893];
      v31 = [(HMDResidentDeviceManagerRoarV3 *)v26 residentSelectionManager];
      v32 = [(HMDResidentDeviceManagerRoarV3 *)v26 presentResidentsStatuses];
      [v31 didUpdateResidentStatus:v32 residentsFound:v29 residentsLost:v30];
    }
  }

  v33 = *MEMORY[0x277D85DE8];
}

- (id)dumpState
{
  v44 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v36 = [(HMDResidentDeviceManagerRoarV3 *)self home];
  v37 = MEMORY[0x277CCACA8];
  v35 = [v36 uuid];
  v4 = [v35 UUIDString];
  v34 = [(HMDResidentDeviceManagerRoarV3 *)self primaryResidentDevice];
  v5 = [v34 device];
  v6 = [v5 identifier];
  v7 = [v6 UUIDString];
  [(HMDResidentDeviceManagerRoarV3 *)self isResidentAvailable];
  v8 = HMFBooleanToString();
  [(HMDResidentDeviceManagerRoarV3 *)self isResidentSupported];
  v9 = HMFBooleanToString();
  [(HMDResidentDeviceManagerRoarV3 *)self homeSupportsResidentSelection];
  v10 = HMFBooleanToString();
  v11 = [v37 stringWithFormat:@"home: %@, primaryResidentDevice: %@ isResidentAvailable: %@, isResidentSupported: %@, supportsResidentSelection: %@", v4, v7, v8, v9, v10];
  v38 = v3;
  [v3 setObject:v11 forKeyedSubscript:@"State"];

  v12 = [MEMORY[0x277CBEB18] array];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v13 = [(HMDResidentDeviceManagerRoarV3 *)self residentDevices];
  v14 = [v13 countByEnumeratingWithState:&v39 objects:v43 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v40;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v40 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = [*(*(&v39 + 1) + 8 * i) dumpState];
        [v12 addObject:v18];
      }

      v15 = [v13 countByEnumeratingWithState:&v39 objects:v43 count:16];
    }

    while (v15);
  }

  [v38 setObject:v12 forKeyedSubscript:@"Residents"];
  v19 = [(HMDResidentDeviceManagerRoarV3 *)self messageDispatcher];
  v20 = [v19 secureRemoteTransport];
  v21 = [v20 deviceMonitor];
  v22 = [v21 dumpState];
  [v38 setObject:v22 forKeyedSubscript:@"Remote Device Monitor"];

  v23 = [(HMDResidentDeviceManagerRoarV3 *)self residentSelectionManager];
  v24 = [v23 dumpState];
  [v38 setObject:v24 forKeyedSubscript:@"Primary.Selection"];

  v25 = [(HMDResidentDeviceManagerRoarV3 *)self electorsPreferredResidentsList];
  v26 = [v25 modifiedTimestamp];
  v27 = [v26 localTimeDescription];
  [v38 setObject:v27 forKeyedSubscript:@"Merged Elector's Preferred Residents Timestamp"];

  v28 = [(HMDResidentDeviceManagerRoarV3 *)self autoSelectedPreferredResidents];
  v29 = [v28 na_map:&__block_literal_global_270_249906];
  [v38 setObject:v29 forKeyedSubscript:@"Merged Elector's Preferred Residents"];

  v30 = [(HMDResidentDeviceManagerRoarV3 *)self statusChannel];
  v31 = [v30 dumpStateWithPrivacyLevel:0];
  [v38 setObject:v31 forKeyedSubscript:@"Status Channel"];

  v32 = *MEMORY[0x277D85DE8];

  return v38;
}

- (id)descriptionWithPointer:(BOOL)a3
{
  v3 = a3;
  v5 = MEMORY[0x277CCACA8];
  v6 = [objc_opt_class() shortDescription];
  if (v3)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@" %p", self];
  }

  else
  {
    v7 = &stru_283CF9D50;
  }

  v8 = [(HMDResidentDeviceManagerRoarV3 *)self residentDevices];
  v9 = [v5 stringWithFormat:@"<%@%@, Resident Devices = %@", v6, v7, v8];

  if (v3)
  {
  }

  return v9;
}

- (id)shortDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [objc_opt_class() shortDescription];
  v5 = [(HMDResidentDeviceManagerRoarV3 *)self messageTargetUUID];
  v6 = [v5 UUIDString];
  v7 = [v3 stringWithFormat:@"%@ %@", v4, v6];

  return v7;
}

- (id)_updateReachabilityForResidentDevices:(id)a3 reachableResidents:(id)a4 source:(unint64_t)a5
{
  v8 = MEMORY[0x277CBEB58];
  v9 = a4;
  v10 = a3;
  v11 = [v8 set];
  v12 = [(HMDResidentDeviceManagerRoarV3 *)self primaryResidentDevice];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __98__HMDResidentDeviceManagerRoarV3__updateReachabilityForResidentDevices_reachableResidents_source___block_invoke;
  v28[3] = &unk_278685180;
  v13 = v12;
  v29 = v13;
  v30 = self;
  v32 = a5;
  v14 = v11;
  v31 = v14;
  [v9 hmf_enumerateWithAutoreleasePoolUsingBlock:v28];
  v15 = [v10 hmf_removedObjectsFromSet:v9];

  v20 = MEMORY[0x277D85DD0];
  v21 = 3221225472;
  v22 = __98__HMDResidentDeviceManagerRoarV3__updateReachabilityForResidentDevices_reachableResidents_source___block_invoke_236;
  v23 = &unk_278685180;
  v24 = v13;
  v25 = self;
  v26 = v14;
  v27 = a5;
  v16 = v14;
  v17 = v13;
  [v15 hmf_enumerateWithAutoreleasePoolUsingBlock:&v20];
  v18 = [v16 copy];

  return v18;
}

void __98__HMDResidentDeviceManagerRoarV3__updateReachabilityForResidentDevices_reachableResidents_source___block_invoke(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a2;
  [v3 isEqual:*(a1 + 32)];
  if (([v3 isReachable] & 1) == 0)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 40);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = HMFGetLogIdentifier();
      v8 = HMFBooleanToString();
      v9 = [v3 shortDescription];
      v10 = HMFBooleanToString();
      v11 = *(a1 + 56) - 1;
      if (v11 > 6)
      {
        v12 = @"StatusKit";
      }

      else
      {
        v12 = off_278685238[v11];
      }

      v13 = v12;
      v15 = 138544386;
      v16 = v7;
      v17 = 2112;
      v18 = v8;
      v19 = 2112;
      v20 = v9;
      v21 = 2112;
      v22 = v10;
      v23 = 2112;
      v24 = v13;
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@Setting reachability to %@ for resident %@. isPrimary: %@. Source: %@", &v15, 0x34u);
    }

    objc_autoreleasePoolPop(v4);
    [v3 setReachable:1];
    [*(a1 + 48) addObject:v3];
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __98__HMDResidentDeviceManagerRoarV3__updateReachabilityForResidentDevices_reachableResidents_source___block_invoke_236(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a2;
  [v3 isEqual:*(a1 + 32)];
  if ([v3 isReachable])
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 40);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = HMFGetLogIdentifier();
      v8 = HMFBooleanToString();
      v9 = [v3 shortDescription];
      v10 = HMFBooleanToString();
      v11 = *(a1 + 56) - 1;
      if (v11 > 6)
      {
        v12 = @"StatusKit";
      }

      else
      {
        v12 = off_278685238[v11];
      }

      v13 = v12;
      v15 = 138544386;
      v16 = v7;
      v17 = 2112;
      v18 = v8;
      v19 = 2112;
      v20 = v9;
      v21 = 2112;
      v22 = v10;
      v23 = 2112;
      v24 = v13;
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@Setting reachability to %@ for resident %@. isPrimary: %@. Source: %@", &v15, 0x34u);
    }

    objc_autoreleasePoolPop(v4);
    [v3 setReachable:0];
    [*(a1 + 48) addObject:v3];
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_updateResidentReachabilityFromReachableResidents:(id)a3 source:(unint64_t)a4
{
  v6 = a3;
  v7 = [(HMDResidentDeviceManagerRoarV3 *)self residentDevicesSet];
  v8 = [(HMDResidentDeviceManagerRoarV3 *)self _updateReachabilityForResidentDevices:v7 reachableResidents:v6 source:a4];

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __91__HMDResidentDeviceManagerRoarV3__updateResidentReachabilityFromReachableResidents_source___block_invoke;
  v10[3] = &unk_278685158;
  v10[4] = self;
  [v8 na_each:v10];
  if ([(HMDResidentDeviceManagerRoarV3 *)self isCurrentDeviceConfirmedPrimaryResident])
  {
    v9 = [(HMDResidentDeviceManagerRoarV3 *)self backingStore];
    [v9 updateReachabilityForResidents:v6];
  }
}

- (void)_refreshAllResidentsReachabilityFromStatusKit
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [(HMDResidentDeviceManagerRoarV3 *)self residentStatusChannel];
  v4 = [v3 presentResidentStatuses];
  v5 = [(HMDResidentDeviceManagerRoarV3 *)self residentDevicesSet];
  v6 = [(HMDResidentDeviceManagerRoarV3 *)self _residentsFromResidentStatuses:v4 residentDevices:v5];

  v7 = objc_autoreleasePoolPush();
  v8 = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v11 = [v6 shortDescription];
    v13 = 138543618;
    v14 = v10;
    v15 = 2112;
    v16 = v11;
    _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Residents present on Status channel are: %@", &v13, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  [(HMDResidentDeviceManagerRoarV3 *)v8 _updateResidentReachabilityFromReachableResidents:v6 source:0];

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_updateResidentIDSReachability:(BOOL)a3 withUpdatedDevice:(id)a4
{
  v6 = a4;
  if (![(HMDResidentDeviceManagerRoarV3 *)self isActingAsResident])
  {
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __83__HMDResidentDeviceManagerRoarV3__updateResidentIDSReachability_withUpdatedDevice___block_invoke;
    block[3] = &unk_278688BD0;
    block[4] = self;
    v9 = v6;
    v10 = a3;
    dispatch_async(queue, block);
  }
}

void __83__HMDResidentDeviceManagerRoarV3__updateResidentIDSReachability_withUpdatedDevice___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) residentDeviceForDevice:*(a1 + 40)];
  if (v2)
  {
    v3 = objc_autoreleasePoolPush();
    v4 = *(a1 + 32);
    v5 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = HMFGetLogIdentifier();
      v7 = [v2 shortDescription];
      v8 = *(a1 + 48);
      v9 = HMFBooleanToString();
      v11 = 138543874;
      v12 = v6;
      v13 = 2112;
      v14 = v7;
      v15 = 2112;
      v16 = v9;
      _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Notified that resident device %@ IDS reachability changed: %@", &v11, 0x20u);
    }

    objc_autoreleasePoolPop(v3);
    [*(a1 + 32) _setResident:v2 reachableOverIDS:*(a1 + 48) andNotify:1];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_handleDataReadyAfterBecomingPrimaryNotification:(id)a3
{
  v4 = a3;
  v5 = [(HMDResidentDeviceManagerRoarV3 *)self backingStore];
  [v5 handleHomeDataReadyAfterBecomingPrimary:v4];
}

- (void)_handleResidentSelectionVersionDidChange:(id)a3
{
  v4 = [(HMDResidentDeviceManagerRoarV3 *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __75__HMDResidentDeviceManagerRoarV3__handleResidentSelectionVersionDidChange___block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(v4, block);
}

void __75__HMDResidentDeviceManagerRoarV3__handleResidentSelectionVersionDidChange___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) home];
  v3 = [v2 residentSelectionVersion];

  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = HMFGetLogIdentifier();
    *buf = 138543618;
    v16 = v7;
    v17 = 2112;
    v18 = v3;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@Home's resident selection version changed to %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  v8 = [*(a1 + 32) homeSupportsResidentSelection];
  v9 = *(a1 + 32);
  if (v8)
  {
    v10 = [v9 configuredStatusKitForResidentSelection];
    v9 = *(a1 + 32);
    if (!v10)
    {
      if (![v9 isCurrentDeviceAvailableResident] || (objc_msgSend(*(a1 + 32), "isActingAsResident") & 1) != 0)
      {
        v13 = *(a1 + 32);
        v14[0] = MEMORY[0x277D85DD0];
        v14[1] = 3221225472;
        v14[2] = __75__HMDResidentDeviceManagerRoarV3__handleResidentSelectionVersionDidChange___block_invoke_232;
        v14[3] = &unk_27868A250;
        v14[4] = v13;
        [v13 _handleInitialTransitionToResidentSelectionWithCompletion:v14];
        goto LABEL_6;
      }

      v9 = *(a1 + 32);
    }
  }

  v11 = [v9 residentSelectionManager];
  [v11 didUpdateResidentSelectionVersion];

LABEL_6:
  v12 = *MEMORY[0x277D85DE8];
}

void __75__HMDResidentDeviceManagerRoarV3__handleResidentSelectionVersionDidChange___block_invoke_232(uint64_t a1)
{
  v1 = [*(a1 + 32) residentSelectionManager];
  [v1 didUpdateResidentSelectionVersion];
}

- (void)_handleRemoteDeviceIsNotReachable:(id)a3
{
  v4 = [a3 object];
  [(HMDResidentDeviceManagerRoarV3 *)self _updateResidentIDSReachability:0 withUpdatedDevice:v4];
}

- (void)_handleRemoteDeviceIsReachable:(id)a3
{
  v4 = [a3 object];
  [(HMDResidentDeviceManagerRoarV3 *)self _updateResidentIDSReachability:1 withUpdatedDevice:v4];
}

- (void)modernTransportDeviceReachabilityObserverDidUpdate:(id)a3 isReachable:(BOOL)a4
{
  v6 = a3;
  if (![(HMDResidentDeviceManagerRoarV3 *)self isActingAsResident])
  {
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __97__HMDResidentDeviceManagerRoarV3_modernTransportDeviceReachabilityObserverDidUpdate_isReachable___block_invoke;
    block[3] = &unk_278688BD0;
    block[4] = self;
    v9 = v6;
    v10 = a4;
    dispatch_async(queue, block);
  }
}

void __97__HMDResidentDeviceManagerRoarV3_modernTransportDeviceReachabilityObserverDidUpdate_isReachable___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) primaryResidentDevice];
  if ([v2 isDeviceEquivalentToDeviceAddress:*(a1 + 40)])
  {
    [*(a1 + 32) _handlePrimaryResident:v2 isReachable:*(a1 + 48)];
  }
}

- (void)discoveryManager:(id)a3 didNotCompleteDiscoveryWithError:(id)a4
{
  v5 = a4;
  v6 = [(HMDResidentDeviceManagerRoarV3 *)self queue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __84__HMDResidentDeviceManagerRoarV3_discoveryManager_didNotCompleteDiscoveryWithError___block_invoke;
  v8[3] = &unk_27868A750;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(v6, v8);
}

void __84__HMDResidentDeviceManagerRoarV3_discoveryManager_didNotCompleteDiscoveryWithError___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) primaryDiscoveryRequesters];
  v3 = [v2 copy];

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * v8);
        if (objc_opt_respondsToSelector())
        {
          [v9 residentDeviceManager:*(a1 + 32) didNotCompleteDiscoveryWithError:{*(a1 + 40), v11}];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)discoveryManager:(id)a3 didCompleteInitialDiscoveryAttemptWithError:(id)a4
{
  v5 = a4;
  v6 = [(HMDResidentDeviceManagerRoarV3 *)self queue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __95__HMDResidentDeviceManagerRoarV3_discoveryManager_didCompleteInitialDiscoveryAttemptWithError___block_invoke;
  v8[3] = &unk_27868A750;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(v6, v8);
}

void __95__HMDResidentDeviceManagerRoarV3_discoveryManager_didCompleteInitialDiscoveryAttemptWithError___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 40);
    v11 = 138543618;
    v12 = v5;
    v13 = 2112;
    v14 = v6;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Account message phase of the primary resident discovery operation completed. Error: %@", &v11, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v7 = *(a1 + 40);
  v8 = [*(a1 + 32) firstPrimaryResidentDiscoveryAttemptCompletionPromise];
  v9 = v8;
  if (v7)
  {
    [v8 rejectWithError:*(a1 + 40)];
  }

  else
  {
    [v8 fulfillWithNoValue];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)discoveryManager:(id)a3 didCompleteDiscoveryWithPrimaryResidentDevice:(id)a4 primaryResidentGenerationID:(id)a5 error:(id)a6
{
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v12 = [(HMDResidentDeviceManagerRoarV3 *)self queue];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __131__HMDResidentDeviceManagerRoarV3_discoveryManager_didCompleteDiscoveryWithPrimaryResidentDevice_primaryResidentGenerationID_error___block_invoke;
  v16[3] = &unk_2786891E0;
  v16[4] = self;
  v17 = v9;
  v18 = v10;
  v19 = v11;
  v13 = v11;
  v14 = v10;
  v15 = v9;
  dispatch_async(v12, v16);
}

void __131__HMDResidentDeviceManagerRoarV3_discoveryManager_didCompleteDiscoveryWithPrimaryResidentDevice_primaryResidentGenerationID_error___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) primaryDiscoveryRequesters];
  v3 = [v2 copy];

  v4 = [*(a1 + 32) primaryDiscoveryRequesters];
  [v4 removeAllObjects];

  v5 = *(a1 + 40);
  if (v5 && ([v5 isCurrentDevice] & 1) == 0)
  {
    [*(a1 + 32) handlePrimaryResidentDiscovered:*(a1 + 40) primaryResidentGenerationID:*(a1 + 48)];
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = v3;
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v12 + 1) + 8 * v10++) residentDeviceManager:*(a1 + 32) didCompleteDiscoveryWithPrimaryResidentDevice:*(a1 + 40) error:{*(a1 + 56), v12}];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)electResidentDevice:(unint64_t)a3
{
  v18 = *MEMORY[0x277D85DE8];
  if (a3 != 7)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v9 = HMFGetLogIdentifier();
      v10 = NSStringFromSelector(a2);
      *buf = 138543618;
      v15 = v9;
      v16 = 2112;
      v17 = v10;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_DEBUG, "%{public}@Method %@ no longer relevant in HH2", buf, 0x16u);
    }

    goto LABEL_8;
  }

  if (![(HMDResidentDeviceManagerRoarV3 *)self isActingAsResident])
  {
    v6 = objc_autoreleasePoolPush();
    v7 = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543362;
      v15 = v11;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@SetPreferredPrimary - This device is not an acting resident, returning from electResidentDevice", buf, 0xCu);
    }

LABEL_8:

    objc_autoreleasePoolPop(v6);
    goto LABEL_9;
  }

  v4 = [(HMDResidentDeviceManagerRoarV3 *)self residentSelectionManager];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __54__HMDResidentDeviceManagerRoarV3_electResidentDevice___block_invoke;
  v13[3] = &unk_2786899A0;
  v13[4] = self;
  [v4 performSelectionInMode:1 preferredPrimaryResident:0 requireAutoUpdate:0 reason:7 completion:v13];

LABEL_9:
  v12 = *MEMORY[0x277D85DE8];
}

void __54__HMDResidentDeviceManagerRoarV3_electResidentDevice___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = HMFGetLogIdentifier();
    v12 = 138543618;
    v13 = v10;
    v14 = 2112;
    v15 = v6;
    _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@SetPreferredPrimary completed with error: %@", &v12, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  v11 = *MEMORY[0x277D85DE8];
}

- (BOOL)allowExternalUpdateOfPrimaryResidentTo:(id)a3 selectionTimestamp:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDResidentDeviceManagerRoarV3 *)self residentDeviceForDevice:v6];
  if ([(HMDResidentDeviceManagerRoarV3 *)self isCurrentDevicePrimaryResident])
  {
    v9 = objc_autoreleasePoolPush();
    v10 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v13 = [v6 shortDescription];
      v18 = 138543618;
      v19 = v12;
      v20 = 2114;
      v21 = v13;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Request for external update of the primary resident to: %{public}@ received while we are the primary", &v18, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
  }

  v14 = [(HMDResidentDeviceManagerRoarV3 *)self residentSelectionManager];
  v15 = [v14 allowExternalUpdateOfPrimaryResidentTo:v8 selectionTimestamp:v7];

  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

- (void)sawGenerationID:(id)a3 forDevice:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__HMDResidentDeviceManagerRoarV3_sawGenerationID_forDevice___block_invoke;
  block[3] = &unk_27868A010;
  block[4] = self;
  v12 = v7;
  v13 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_async(queue, block);
}

void __60__HMDResidentDeviceManagerRoarV3_sawGenerationID_forDevice___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) residentDeviceForDevice:*(a1 + 40)];
  if (!v2)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = *(a1 + 32);
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v10 = *(a1 + 40);
      v15 = 138543618;
      v16 = v9;
      v17 = 2112;
      v18 = v10;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Resident device %@ is unknown, ignoring generation ID", &v15, 0x16u);
    }

    goto LABEL_10;
  }

  v3 = [*(a1 + 32) primaryResidentUUID];
  v4 = [v2 identifier];
  v5 = [v3 hmf_isEqualToUUID:v4];

  if ((v5 & 1) == 0)
  {
    v6 = objc_autoreleasePoolPush();
    v11 = *(a1 + 32);
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      v15 = 138543618;
      v16 = v13;
      v17 = 2112;
      v18 = v2;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@New generation ID is for a resident that isn't the primary: %@ ignoring it.", &v15, 0x16u);
    }

LABEL_10:
    objc_autoreleasePoolPop(v6);
    goto LABEL_11;
  }

  [*(a1 + 32) _updatePrimaryResidentGenerationID:*(a1 + 48)];
LABEL_11:

  v14 = *MEMORY[0x277D85DE8];
}

- (void)reAssertAsTheCurrentPrimaryResident
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = [(HMDResidentDeviceManagerRoarV3 *)self primaryResidentDevice];
  v4 = [v3 isCurrentDevice];

  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  v8 = v7;
  if (v4)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v13 = 138543362;
      v14 = v9;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Reasserting ourselves as the current primary resident", &v13, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
    v10 = [(HMDResidentDeviceManagerRoarV3 *)v6 primaryResidentDevice];
    [(HMDResidentDeviceManagerRoarV3 *)v6 _sendResidentDeviceNotificationWithName:@"HMDResidentDeviceManagerReassertAsCurrentPrimaryNotification" forResidentDevice:v10];
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v13 = 138543362;
      v14 = v11;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_ERROR, "%{public}@Ignoring the request to reassert ourselves as the current primary resident", &v13, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (id)foundNewPrimaryResident:(id)a3 generationID:(id)a4 selectionTimestamp:(id)a5 changeSource:(unint64_t)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = objc_alloc(MEMORY[0x277D0F7A8]);
  v14 = [(HMDResidentDeviceManagerRoarV3 *)self queue];
  v15 = [v13 initWithQueue:v14];

  v16 = MEMORY[0x277D0F7C0];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __103__HMDResidentDeviceManagerRoarV3_foundNewPrimaryResident_generationID_selectionTimestamp_changeSource___block_invoke;
  v22[3] = &unk_278685130;
  v22[4] = self;
  v23 = v10;
  v24 = v11;
  v25 = v12;
  v26 = a6;
  v17 = v12;
  v18 = v11;
  v19 = v10;
  v20 = [v16 inContext:v15 perform:v22];

  return v20;
}

uint64_t __103__HMDResidentDeviceManagerRoarV3_foundNewPrimaryResident_generationID_selectionTimestamp_changeSource___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) residentDeviceForDevice:*(a1 + 40)];
  if (!v2)
  {
    v3 = objc_autoreleasePoolPush();
    v4 = *(a1 + 32);
    v5 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = HMFGetLogIdentifier();
      v7 = *(a1 + 40);
      v20 = 138543618;
      v21 = v6;
      v22 = 2112;
      v23 = v7;
      _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@New resident device %@ is not known as a resident device, creating one", &v20, 0x16u);
    }

    objc_autoreleasePoolPop(v3);
    v8 = [HMDResidentDevice alloc];
    v9 = *(a1 + 40);
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 288));
    v2 = [(HMDResidentDevice *)v8 initWithDevice:v9 home:WeakRetained];

    [*(a1 + 32) _addResidentDevice:v2];
  }

  v11 = [*(a1 + 32) primaryResidentUUID];
  v12 = [(HMDResidentDevice *)v2 identifier];
  v13 = [v11 hmf_isEqualToUUID:v12];

  v14 = *(a1 + 32);
  if (v13)
  {
    [v14 _updatePrimaryResidentGenerationID:*(a1 + 48)];
    v15 = [*(a1 + 32) primaryDiscoveryManager];
    [v15 cancel];
    v16 = 0;
  }

  else
  {
    if (![v14 allowExternalUpdateOfPrimaryResidentTo:*(a1 + 40) selectionTimestamp:*(a1 + 56)])
    {
      v16 = 1;
      goto LABEL_11;
    }

    [*(a1 + 32) _updatePrimaryResidentSelectionTimestamp:*(a1 + 56)];
    v17 = *(a1 + 32);
    v15 = [v17 primaryResidentDevice];
    [v17 _handleUpdatedPrimaryResidentDevice:v2 previousPrimaryResident:v15 generationID:*(a1 + 48) changeSource:*(a1 + 64)];
    v16 = 2;
  }

LABEL_11:
  [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v16];
  objc_claimAutoreleasedReturnValue();

  v18 = *MEMORY[0x277D85DE8];
  return 1;
}

- (void)handleCurrentDeviceChanged:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __61__HMDResidentDeviceManagerRoarV3_handleCurrentDeviceChanged___block_invoke;
  v7[3] = &unk_27868A750;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(queue, v7);
}

void __61__HMDResidentDeviceManagerRoarV3_handleCurrentDeviceChanged___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 objectForKeyedSubscript:@"HMDDeviceNotificationKey"];

  objc_opt_class();
  objc_opt_isKindOfClass();

  v4 = [*(a1 + 40) notificationCenter];
  [v4 removeObserver:*(a1 + 40) name:@"HMDDeviceUpdatedNotification" object:0];
}

- (void)handleSetPreferredResidentSelectionMessage:(id)a3
{
  v35 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 messagePayload];
  v6 = [v5 hmf_UUIDForKey:*MEMORY[0x277CD04E0]];

  v7 = [v4 messagePayload];
  v8 = [v7 hmf_BOOLForKey:*MEMORY[0x277CD04E8]];

  if (v6)
  {
    v9 = objc_autoreleasePoolPush();
    v10 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543362;
      v28 = v12;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Going to update the selection mode to manual", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
    v13 = [(HMDResidentDeviceManagerRoarV3 *)v10 residentDevices];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __77__HMDResidentDeviceManagerRoarV3_handleSetPreferredResidentSelectionMessage___block_invoke;
    v25[3] = &unk_2786850E0;
    v26 = v6;
    v14 = [v13 na_firstObjectPassingTest:v25];

    v15 = 2;
  }

  else
  {
    v14 = 0;
    v15 = 3;
  }

  v16 = objc_autoreleasePoolPush();
  v17 = self;
  v18 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = HMFGetLogIdentifier();
    *buf = 138544130;
    v28 = v19;
    v29 = 2112;
    v30 = v14;
    v31 = 2048;
    v32 = v15;
    v33 = 1024;
    v34 = v8;
    _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@Handling request to set preferred resident to: %@, in mode: %lu, requireAutoUpdate: %{BOOL}d", buf, 0x26u);
  }

  objc_autoreleasePoolPop(v16);
  v20 = [(HMDResidentDeviceManagerRoarV3 *)v17 residentSelectionManager];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __77__HMDResidentDeviceManagerRoarV3_handleSetPreferredResidentSelectionMessage___block_invoke_226;
  v23[3] = &unk_2786899A0;
  v24 = v4;
  v21 = v4;
  [v20 performSelectionInMode:v15 preferredPrimaryResident:v14 requireAutoUpdate:v8 reason:7 completion:v23];

  v22 = *MEMORY[0x277D85DE8];
}

uint64_t __77__HMDResidentDeviceManagerRoarV3_handleSetPreferredResidentSelectionMessage___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 device];
  v4 = [v3 idsIdentifier];
  v5 = [v4 isEqual:*(a1 + 32)];

  return v5;
}

uint64_t __77__HMDResidentDeviceManagerRoarV3_handleSetPreferredResidentSelectionMessage___block_invoke_226(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (a3)
  {
    return [v3 respondWithError:?];
  }

  else
  {
    return [v3 respondWithSuccess];
  }
}

- (void)_handleResidentDeviceUpdateEnabled:(id)a3
{
  v49 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 uuidForKey:@"kIdentifierKey"];
  if (v5)
  {
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v6 = [(HMDResidentDeviceManagerRoarV3 *)self residentDevices];
    v7 = [v6 countByEnumeratingWithState:&v40 objects:v44 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v41;
LABEL_4:
      v10 = 0;
      while (1)
      {
        if (*v41 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v40 + 1) + 8 * v10);
        v12 = [v11 identifier];
        v13 = [v12 isEqual:v5];

        if (v13)
        {
          break;
        }

        if (v8 == ++v10)
        {
          v8 = [v6 countByEnumeratingWithState:&v40 objects:v44 count:16];
          if (v8)
          {
            goto LABEL_4;
          }

          goto LABEL_10;
        }
      }

      v14 = v11;

      if (!v14)
      {
        goto LABEL_17;
      }

      v39 = 0;
      v15 = [v4 messagePayload];
      [v15 hmf_BOOLForKey:@"kEnabledKey" isPresent:&v39];

      if ((v39 & 1) == 0)
      {
        v16 = objc_autoreleasePoolPush();
        v17 = self;
        v18 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          v19 = HMFGetLogIdentifier();
          v20 = [v4 messagePayload];
          buf = 138543618;
          v46 = v19;
          v47 = 2112;
          v48 = v20;
          _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_INFO, "%{public}@Invalid message payload, missing enabled state: %@", &buf, 0x16u);
        }

        objc_autoreleasePoolPop(v16);
        v21 = [v4 responseHandler];

        if (v21)
        {
          v22 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
          v23 = [v4 responseHandler];
          v23[2](v23, v22, 0);

          goto LABEL_26;
        }
      }

      goto LABEL_27;
    }

LABEL_10:

LABEL_17:
    v24 = objc_autoreleasePoolPush();
    v25 = self;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      v27 = HMFGetLogIdentifier();
      v28 = [v5 UUIDString];
      buf = 138543618;
      v46 = v27;
      v47 = 2114;
      v48 = v28;
      _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_INFO, "%{public}@Failed to find resident device with identifier: %{public}@", &buf, 0x16u);
    }

    objc_autoreleasePoolPop(v24);
    v29 = [v4 responseHandler];

    if (v29)
    {
      v30 = MEMORY[0x277CCA9B8];
      v31 = 2;
      goto LABEL_25;
    }
  }

  else
  {
    v32 = objc_autoreleasePoolPush();
    v33 = self;
    v34 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
    {
      v35 = HMFGetLogIdentifier();
      v36 = [v4 messagePayload];
      buf = 138543618;
      v46 = v35;
      v47 = 2112;
      v48 = v36;
      _os_log_impl(&dword_229538000, v34, OS_LOG_TYPE_INFO, "%{public}@Invalid message payload, missing resident device identifier: %@", &buf, 0x16u);
    }

    objc_autoreleasePoolPop(v32);
    v37 = [v4 responseHandler];

    if (v37)
    {
      v30 = MEMORY[0x277CCA9B8];
      v31 = 20;
LABEL_25:
      v14 = [v30 hmErrorWithCode:v31];
      v22 = [v4 responseHandler];
      (v22)[2](v22, v14, 0);
LABEL_26:

LABEL_27:
    }
  }

  v38 = *MEMORY[0x277D85DE8];
}

- (void)_handlePrimaryResidentDiscoveryRequest:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDResidentDeviceManagerRoarV3 *)self isCurrentDevicePrimaryResident];
  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  v9 = v8;
  if (v5)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543362;
      v24 = v10;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@Received query for primary resident, responding", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    v11 = [(HMDResidentDeviceManagerRoarV3 *)v7 currentResidentDevice];
    v12 = [v11 identifier];
    v13 = [v12 UUIDString];
    v22 = v13;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
    v15 = [v14 mutableCopy];

    v16 = [(HMDResidentDeviceManagerRoarV3 *)v7 primaryResidentGenerationID];
    v17 = [v16 UUIDString];
    [v15 setObject:v17 forKeyedSubscript:@"gen"];

    v18 = [v15 copy];
    [v4 respondWithPayload:v18];
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543362;
      v24 = v19;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_DEBUG, "%{public}@Received query for primary but we are standby, ignoring", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)_handlePrimaryResidentDiscoveryXPCRequest:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543362;
    v18 = v8;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Handling primary resident discovery request", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  v9 = objc_alloc_init(HMDResidentDeviceManagerV3XPCDiscoveryRequester);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __76__HMDResidentDeviceManagerRoarV3__handlePrimaryResidentDiscoveryXPCRequest___block_invoke;
  v13[3] = &unk_278685108;
  v14 = v9;
  v15 = v6;
  v16 = v4;
  v10 = v4;
  v11 = v9;
  [(HMDResidentDeviceManagerV3XPCDiscoveryRequester *)v11 setBlock:v13];
  [(HMDResidentDeviceManagerRoarV3 *)v6 _discoverPrimaryResidentForRequester:v11];

  v12 = *MEMORY[0x277D85DE8];
}

void __76__HMDResidentDeviceManagerRoarV3__handlePrimaryResidentDiscoveryXPCRequest___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = *(a1 + 32);
  v7 = a3;
  [v6 setBlock:0];
  if (v5)
  {
    v15 = @"uuid";
    v8 = [v5 identifier];
    v16[0] = v8;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    v10 = [v9 mutableCopy];

    v11 = [*(a1 + 40) primaryResidentGenerationID];
    [v10 setObject:v11 forKeyedSubscript:@"uuid"];
  }

  else
  {
    v10 = 0;
  }

  v12 = *(a1 + 48);
  v13 = [v10 copy];
  [v12 respondWithPayload:v13 error:v7];

  v14 = *MEMORY[0x277D85DE8];
}

- (void)handlePrimaryResidentDiscovered:(id)a3 primaryResidentGenerationID:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = [(HMDResidentDeviceManagerRoarV3 *)self residentDevices];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __94__HMDResidentDeviceManagerRoarV3_handlePrimaryResidentDiscovered_primaryResidentGenerationID___block_invoke;
    v17[3] = &unk_2786850E0;
    v9 = v6;
    v18 = v9;
    v10 = [v8 na_any:v17];

    if ((v10 & 1) == 0)
    {
      [(HMDResidentDeviceManagerRoarV3 *)self _addResidentDevice:v9];
    }

    v11 = [(HMDResidentDeviceManagerRoarV3 *)self primaryResidentDevice];
    [(HMDResidentDeviceManagerRoarV3 *)self _handleUpdatedPrimaryResidentDevice:v9 previousPrimaryResident:v11 generationID:v7 changeSource:4];
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
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_ERROR, "%{public}@Primary resident discovered is nil", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v12);
  }

  v16 = *MEMORY[0x277D85DE8];
}

uint64_t __94__HMDResidentDeviceManagerRoarV3_handlePrimaryResidentDiscovered_primaryResidentGenerationID___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 identifier];
  v5 = [v3 identifier];

  v6 = [v4 isEqual:v5];
  return v6;
}

- (void)_discoverPrimaryResidentForRequester:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v19 = 138543362;
    v20 = v8;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Running primary resident discovery", &v19, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [(HMDResidentDeviceManagerRoarV3 *)v6 queue];
  dispatch_assert_queue_V2(v9);

  if ([(HMDResidentDeviceManagerRoarV3 *)v6 isResidentSupported])
  {
    v10 = [(HMDResidentDeviceManagerRoarV3 *)v6 home];
    v11 = v10;
    if (v10)
    {
      v12 = [v10 homeManager];
      v13 = [v11 uuid];
      v14 = [v12 sharedUserAcceptEventBuilderForHomeUuid:v13];

      [v14 markDiscoverPrimaryResidentBegin];
    }

    v15 = [(HMDResidentDeviceManagerRoarV3 *)v6 primaryResidentDevice];
    if ([v15 isCurrentDevice])
    {
      [v4 residentDeviceManager:v6 didCompleteDiscoveryWithPrimaryResidentDevice:v15 error:0];
    }

    else
    {
      if (v4)
      {
        v16 = [(HMDResidentDeviceManagerRoarV3 *)v6 primaryDiscoveryRequesters];
        [v16 addObject:v4];
      }

      v17 = [(HMDResidentDeviceManagerRoarV3 *)v6 primaryDiscoveryManager];
      [v17 discoverPrimaryResident];
    }
  }

  else
  {
    v11 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
    [v4 residentDeviceManager:v6 didCompleteDiscoveryWithPrimaryResidentDevice:0 error:v11];
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)discoverPrimaryResidentForRequester:(id)a3
{
  v4 = a3;
  v5 = [(HMDResidentDeviceManagerRoarV3 *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __70__HMDResidentDeviceManagerRoarV3_discoverPrimaryResidentForRequester___block_invoke;
  v7[3] = &unk_27868A750;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)_handlePrimaryResident:(id)a3 isReachable:(BOOL)a4
{
  v4 = a4;
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(HMDResidentDeviceManagerRoarV3 *)self queue];
  dispatch_assert_queue_V2(v7);

  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_INFO);
  if (v4)
  {
    if (v11)
    {
      v12 = HMFGetLogIdentifier();
      v16 = 138543618;
      v17 = v12;
      v18 = 2112;
      v19 = v6;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Primary resident: %@ became reachable. Updating the reachability of all residents from the working store", &v16, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    [(HMDResidentDeviceManagerRoarV3 *)v9 _updateReachability:1 forResidentDevice:v6 source:1];
    [(HMDResidentDeviceManagerRoarV3 *)v9 _updateReachabilityFromWorkingStoreExceptResident:v6];
  }

  else
  {
    if (v11)
    {
      v13 = HMFGetLogIdentifier();
      v16 = 138543618;
      v17 = v13;
      v18 = 2112;
      v19 = v6;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Primary resident: %@ became unreachable. Marking all residents as unreachable", &v16, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    v14 = [(HMDResidentDeviceManagerRoarV3 *)v9 residentDevices];
    [(HMDResidentDeviceManagerRoarV3 *)v9 _updateReachability:0 forResidentDevices:v14 source:1];

    [(HMDResidentDeviceManagerRoarV3 *)v9 _discoverPrimaryResidentForRequester:0];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_sendResidentDeviceNotificationWithName:(id)a3 forResidentDevice:(id)a4
{
  v33 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(self->_queue);
  v8 = [MEMORY[0x277CBEB38] dictionary];
  [v8 setObject:v7 forKeyedSubscript:@"HMDResidentDeviceManagerResidentDeviceNotificationKey"];
  v9 = [(HMDResidentDeviceManagerRoarV3 *)self home];
  v10 = [v9 uuid];
  [v8 setObject:v10 forKeyedSubscript:@"HMDResidentDeviceManagerHomeUUIDNotificationKey"];

  if ([v6 isEqual:@"HMDResidentDeviceManagerUpdatePrimaryResidentNotification"])
  {
    if ([v7 isCurrentDevice])
    {
      v11 = [(HMDResidentDeviceManagerRoarV3 *)self residentSelectionManager];
      v12 = [v11 currentModeType];

      if (v12 != 1)
      {
        v13 = [(HMDResidentDeviceManagerRoarV3 *)self residentLocationHandler];
        v14 = [v13 residentLocationRawValue];

        v15 = objc_autoreleasePoolPush();
        v16 = self;
        v17 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          v18 = HMFGetLogIdentifier();
          StringFromHMDResidentLocation([v14 unsignedIntegerValue]);
          v19 = v26 = v15;
          *buf = 138543874;
          v28 = v18;
          v29 = 2112;
          v30 = v19;
          v31 = 2112;
          v32 = @"HMDResidentDeviceManagerUpdatePrimaryResidentNotification";
          _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@Including current resident location: %@ in: %@", buf, 0x20u);

          v15 = v26;
        }

        objc_autoreleasePoolPop(v15);
        [v8 setObject:v14 forKeyedSubscript:@"HMDResidentDeviceManagerResidentLocationKey"];
      }
    }
  }

  v20 = objc_autoreleasePoolPush();
  v21 = self;
  v22 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
  {
    v23 = HMFGetLogIdentifier();
    *buf = 138543618;
    v28 = v23;
    v29 = 2114;
    v30 = v6;
    _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_INFO, "%{public}@Posting notification: %{public}@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v20);
  v24 = [(HMDResidentDeviceManagerRoarV3 *)v21 notificationCenter];
  [v24 postNotificationName:v6 object:v21 userInfo:v8];

  v25 = *MEMORY[0x277D85DE8];
}

- (void)_notifyUpdatedGenerationIDWithPrimaryResident:(id)a3
{
  queue = self->_queue;
  v5 = a3;
  dispatch_assert_queue_V2(queue);
  [(HMDResidentDeviceManagerRoarV3 *)self _sendResidentDeviceNotificationWithName:@"HMDResidentDeviceManagerUpdatePrimaryResidentGenerationIDNotification" forResidentDevice:v5];
}

- (void)notifyUpdatedPrimaryResident:(id)a3 previousPrimaryResident:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __87__HMDResidentDeviceManagerRoarV3_notifyUpdatedPrimaryResident_previousPrimaryResident___block_invoke;
  block[3] = &unk_27868A010;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, block);
}

void __87__HMDResidentDeviceManagerRoarV3_notifyUpdatedPrimaryResident_previousPrimaryResident___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) _sendResidentDeviceNotificationWithName:@"HMDResidentDeviceManagerUpdatePrimaryResidentNotification" forResidentDevice:*(a1 + 40)];
  v2 = [*(a1 + 32) residentSelectionManager];
  [v2 primaryResidentChanged:*(a1 + 40) previousResidentDevice:*(a1 + 48)];

  if (*(a1 + 40))
  {
    v3 = [*(a1 + 32) delegate];
    [v3 residentDeviceManager:*(a1 + 32) didUpdatePrimaryResident:*(a1 + 40) previousPrimaryResident:*(a1 + 48)];

    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 40);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      *buf = 138543362;
      v17 = v7;
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Notifying clients of resident device confirmed state changing to YES", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    v8 = [*(a1 + 32) notificationCenter];
    v14[0] = @"HMDResidentDeviceHomeUUIDNotificationKey";
    v9 = *(a1 + 40);
    v10 = [*(a1 + 32) home];
    v11 = [v10 uuid];
    v14[1] = @"HMDResidentDeviceResidentNotificationKey";
    v15[0] = v11;
    v15[1] = *(a1 + 40);
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];
    [v8 postNotificationName:@"HMDResidentDeviceConfirmedStateChangedNotification" object:v9 userInfo:v12];

    [*(a1 + 32) _notifyUpdatedGenerationIDWithPrimaryResident:*(a1 + 40)];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_notifyUserPreferredResidentReachability:(id)a3 previousPrimaryResident:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __99__HMDResidentDeviceManagerRoarV3__notifyUserPreferredResidentReachability_previousPrimaryResident___block_invoke;
  block[3] = &unk_27868A010;
  block[4] = self;
  v12 = v7;
  v13 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_async(queue, block);
}

void __99__HMDResidentDeviceManagerRoarV3__notifyUserPreferredResidentReachability_previousPrimaryResident___block_invoke(uint64_t a1)
{
  v41 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) isOwnerUser])
  {
    if (*(a1 + 40))
    {
      v2 = [*(a1 + 32) residentSelectionInfo];
      v3 = [v2 preferredResidentIDSIdentifier];
      if (v3 && (v4 = *(a1 + 48), v3, v4))
      {
        v5 = [*(a1 + 32) home];
        if (v5)
        {
          v6 = [*(a1 + 48) device];
          v7 = [v6 idsIdentifier];
          v8 = [v2 preferredResidentIDSIdentifier];
          v9 = [v7 isEqual:v8];

          v10 = [*(a1 + 32) _residentDeviceDisplayName:*(a1 + 40)];
          v11 = [*(a1 + 32) _residentDeviceDisplayName:*(a1 + 48)];
          v12 = [MEMORY[0x277CBEB38] dictionary];
          v13 = [v5 uuid];
          [v12 setObject:v13 forKeyedSubscript:@"HMDResidentDeviceHomeUUIDNotificationKey"];

          v14 = [MEMORY[0x277CCABB0] numberWithBool:v9];
          [v12 setObject:v14 forKeyedSubscript:@"HMDResidentDeviceManagerUserPreferredResidentReachabilityKey"];

          if (v10)
          {
            [v12 setObject:v10 forKeyedSubscript:@"HMDResidentDeviceManagerUserPreferredResidentNameKey"];
          }

          if (v11)
          {
            [v12 setObject:v11 forKeyedSubscript:@"HMDResidentDeviceManagerBackupResidentNameKey"];
          }

          v15 = objc_autoreleasePoolPush();
          v16 = *(a1 + 32);
          v17 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
          {
            v18 = HMFGetLogIdentifier();
            v37 = 138543362;
            v38 = v18;
            _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@Notify user preferred resident reachability is changed", &v37, 0xCu);
          }

          objc_autoreleasePoolPop(v15);
          v19 = [*(a1 + 32) notificationCenter];
          v20 = *(a1 + 32);
          v21 = [v12 copy];
          [v19 postNotificationName:@"HMDResidentDeviceManagerUserPreferredResidentReachabilityNotification" object:v20 userInfo:v21];
        }

        else
        {
          v32 = objc_autoreleasePoolPush();
          v33 = *(a1 + 32);
          v34 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
          {
            v35 = HMFGetLogIdentifier();
            v37 = 138543362;
            v38 = v35;
            _os_log_impl(&dword_229538000, v34, OS_LOG_TYPE_ERROR, "%{public}@No home to notify user preferred change", &v37, 0xCu);
          }

          objc_autoreleasePoolPop(v32);
        }
      }

      else
      {
        v26 = objc_autoreleasePoolPush();
        v27 = *(a1 + 32);
        v28 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
        {
          v29 = HMFGetLogIdentifier();
          v30 = [v2 preferredResidentIDSIdentifier];
          v31 = "no elected primary";
          if (!v30)
          {
            v31 = "in auto mode";
          }

          v37 = 138543618;
          v38 = v29;
          v39 = 2080;
          v40 = v31;
          _os_log_impl(&dword_229538000, v28, OS_LOG_TYPE_INFO, "%{public}@Do not notify user preferred change: %s", &v37, 0x16u);
        }

        objc_autoreleasePoolPop(v26);
      }
    }
  }

  else
  {
    v22 = objc_autoreleasePoolPush();
    v23 = *(a1 + 32);
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v25 = HMFGetLogIdentifier();
      v37 = 138543362;
      v38 = v25;
      _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_INFO, "%{public}@Not owner do not notify user perferred resident reachability is changed.", &v37, 0xCu);
    }

    objc_autoreleasePoolPop(v22);
  }

  v36 = *MEMORY[0x277D85DE8];
}

- (void)notifyClientsOfUpdatedResidentDevice:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDResidentDeviceManagerRoarV3 *)self residentDevices];
  v6 = [v5 containsObject:v4];

  if (v6)
  {
    queue = self->_queue;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __71__HMDResidentDeviceManagerRoarV3_notifyClientsOfUpdatedResidentDevice___block_invoke;
    v13[3] = &unk_27868A750;
    v13[4] = self;
    v14 = v4;
    dispatch_async(queue, v13);
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v9 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543618;
      v16 = v11;
      v17 = 2112;
      v18 = v4;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Not notifying clients of updated resident %@ since it is not in the resident devices list", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __71__HMDResidentDeviceManagerRoarV3_notifyClientsOfUpdatedResidentDevice___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 40);
    v12 = 138543618;
    v13 = v5;
    v14 = 2112;
    v15 = v6;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Notifying clients of updated resident: %@", &v12, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v7 = [*(a1 + 32) delegate];
  [v7 residentDeviceManagerDidUpdateResidents:*(a1 + 32)];

  [*(a1 + 32) _sendResidentDeviceNotificationWithName:@"HMDResidentDeviceManagerUpdateResidentNotification" forResidentDevice:*(a1 + 40)];
  v8 = [*(a1 + 32) home];
  v9 = [v8 homeManager];
  v10 = [*(a1 + 40) identifier];
  [v9 updateGenerationCounterWithReason:@"ResidentDeviceUpdated" sourceUUID:v10 shouldNotifyClients:1];

  [v8 reEvaluateHomeHubState];
  [v8 evaluateResidentUpdate];
  [v8 evaluateBulletinNotificationsSupported];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)notifyResidentAvailable:(BOOL)a3
{
  queue = self->_queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __58__HMDResidentDeviceManagerRoarV3_notifyResidentAvailable___block_invoke;
  v4[3] = &unk_278688650;
  v4[4] = self;
  v5 = a3;
  dispatch_async(queue, v4);
}

void __58__HMDResidentDeviceManagerRoarV3_notifyResidentAvailable___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 residentDeviceManager:*(a1 + 32) didUpdateResidentAvailable:*(a1 + 40)];
}

- (void)accountOrDeviceDidUpdate:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __59__HMDResidentDeviceManagerRoarV3_accountOrDeviceDidUpdate___block_invoke;
  v7[3] = &unk_27868A750;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

void __59__HMDResidentDeviceManagerRoarV3_accountOrDeviceDidUpdate___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = [*(a1 + 40) name];
    v7 = [*(a1 + 32) isResidentSupported];
    v11 = 138543874;
    v12 = v5;
    v13 = 2114;
    v14 = v6;
    v15 = 1024;
    v16 = v7;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Handling notification: %{public}@. self.isResidentSupported: %d", &v11, 0x1Cu);
  }

  objc_autoreleasePoolPop(v2);
  [*(a1 + 32) _configureResidentSupported];
  v8 = [*(a1 + 32) appleAccountManager];
  v9 = [v8 device];

  if (([*(a1 + 32) isCurrentDeviceAvailableResident] & 1) == 0 && v9)
  {
    [*(a1 + 32) _createAllKnownResidentsInHomeWithCurrentDevice:v9 hasResidents:0];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)setResidentSupported:(BOOL)a3
{
  v3 = a3;
  v23 = *MEMORY[0x277D85DE8];
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = HMFBooleanToString();
    v19 = 138543618;
    v20 = v8;
    v21 = 2112;
    v22 = v9;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@ResidentSupported = %@", &v19, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  os_unfair_lock_lock_with_options();
  v6->_residentSupported = v3;
  os_unfair_lock_unlock(&v6->_lock);
  if (v3 && [(HMDResidentDeviceManagerRoarV3 *)v6 isCurrentDeviceAvailableResident])
  {
    v10 = [(HMDResidentDeviceManagerRoarV3 *)v6 notificationCenter];
    v11 = [(HMDResidentDeviceManagerRoarV3 *)v6 appleAccountManager];
    [v10 removeObserver:v6 name:@"HMDAppleAccountManagerDeviceUpdatedNotification" object:v11];
  }

  else
  {
    v12 = [(HMDResidentDeviceManagerRoarV3 *)v6 notificationCenter];
    v13 = [(HMDResidentDeviceManagerRoarV3 *)v6 appleAccountManager];
    [v12 removeObserver:v6 name:@"HMDAppleAccountManagerResolved" object:v13];

    v14 = [(HMDResidentDeviceManagerRoarV3 *)v6 notificationCenter];
    v15 = [(HMDResidentDeviceManagerRoarV3 *)v6 appleAccountManager];
    [v14 removeObserver:v6 name:@"HMDAppleAccountManagerDeviceUpdatedNotification" object:v15];

    v16 = [(HMDResidentDeviceManagerRoarV3 *)v6 notificationCenter];
    v17 = [(HMDResidentDeviceManagerRoarV3 *)v6 appleAccountManager];
    [v16 addObserver:v6 selector:sel_accountOrDeviceDidUpdate_ name:@"HMDAppleAccountManagerResolved" object:v17];

    v10 = [(HMDResidentDeviceManagerRoarV3 *)v6 notificationCenter];
    v11 = [(HMDResidentDeviceManagerRoarV3 *)v6 appleAccountManager];
    [v10 addObserver:v6 selector:sel_accountOrDeviceDidUpdate_ name:@"HMDAppleAccountManagerDeviceUpdatedNotification" object:v11];
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (BOOL)isResidentSupported
{
  os_unfair_lock_lock_with_options();
  residentSupported = self->_residentSupported;
  os_unfair_lock_unlock(&self->_lock);
  return residentSupported;
}

- (void)_updatePrimaryResidentSelectionTimestamp:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  primaryResidentSelectionTimestamp = self->_primaryResidentSelectionTimestamp;
  self->_primaryResidentSelectionTimestamp = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSDate)primaryResidentSelectionTimestamp
{
  os_unfair_lock_lock_with_options();
  v3 = self->_primaryResidentSelectionTimestamp;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (BOOL)_updatePrimaryResidentGenerationID:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a3;
  dispatch_assert_queue_V2(self->_queue);
  os_unfair_lock_lock_with_options();
  v6 = self->_primaryResidentGenerationID;
  v7 = HMFEqualObjects();
  if (v7)
  {

    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    objc_storeStrong(&self->_primaryResidentGenerationID, a3);

    os_unfair_lock_unlock(&self->_lock);
    v8 = objc_autoreleasePoolPush();
    v9 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v15 = 138543618;
      v16 = v11;
      v17 = 2114;
      v18 = v5;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Updating primaryResidentGenerationID = %{public}@", &v15, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    v12 = [(HMDResidentDeviceManagerRoarV3 *)v9 primaryResidentDevice];
    [(HMDResidentDeviceManagerRoarV3 *)v9 _notifyUpdatedGenerationIDWithPrimaryResident:v12];
  }

  v13 = *MEMORY[0x277D85DE8];
  return v7 ^ 1;
}

- (NSUUID)primaryResidentGenerationID
{
  os_unfair_lock_lock_with_options();
  v3 = self->_primaryResidentGenerationID;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (BOOL)hasAnyResident
{
  v3 = [(HMDResidentDeviceManagerRoarV3 *)self residentDevicesSet];
  v4 = [v3 hmf_isEmpty];

  if (!v4)
  {
    return 1;
  }

  v5 = [(HMDResidentDeviceManagerRoarV3 *)self backingStore];
  v6 = [v5 hasAnyResident];

  return v6;
}

- (BOOL)isResidentAvailable
{
  os_unfair_lock_lock_with_options();
  residentAvailable = self->_residentAvailable;
  os_unfair_lock_unlock(&self->_lock);
  return residentAvailable;
}

- (void)_updateResidentAvailability:(BOOL)a3
{
  LODWORD(v3) = a3;
  v5 = [(HMDResidentDeviceManagerRoarV3 *)self availableResidentDevices];
  if ([v5 count])
  {
    v3 = 1;
  }

  else
  {
    v3 = v3;
  }

  [(HMDResidentDeviceManagerRoarV3 *)self setResidentAvailable:v3];
}

- (void)updateResidentAvailability
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__HMDResidentDeviceManagerRoarV3_updateResidentAvailability__block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)removeResidentDevice:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55__HMDResidentDeviceManagerRoarV3_removeResidentDevice___block_invoke;
  v7[3] = &unk_27868A750;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)_stopActingAsResidentViaStatusKit
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v9 = 138543362;
    v10 = v6;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Stopping acting as a resident via StatusKit", &v9, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v7 = [(HMDResidentDeviceManagerRoarV3 *)v4 statusChannel];
  [v7 stopPublishingAsResident];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_handleInitialTransitionToResidentSelectionWithCompletion:(id)a3
{
  v58 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDResidentDeviceManagerRoarV3 *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = [(HMDResidentDeviceManagerRoarV3 *)self configuredStatusKitForResidentSelection];
  v7 = objc_autoreleasePoolPush();
  v8 = self;
  v9 = HMFGetOSLogHandle();
  v10 = v9;
  if (v6)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543362;
      v55 = v11;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Handling initial transition to resident selection - already configured, ignoring", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
    v12 = _Block_copy(v4);
    v13 = v12;
    if (v12)
    {
      (*(v12 + 2))(v12, 0);
    }
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543362;
      v55 = v14;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@Handling initial transition to resident selection", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
    [(HMDResidentDeviceManagerRoarV3 *)v8 setConfiguredStatusKitForResidentSelection:1];
    v13 = [(HMDResidentDeviceManagerRoarV3 *)v8 home];
    v15 = [(HMDResidentDeviceManagerRoarV3 *)v8 dataSource];
    v16 = [v15 createResidentStatusChannelForHome:v13 queue:v8->_queue];
    statusChannel = v8->_statusChannel;
    v8->_statusChannel = v16;

    v18 = [(HMDResidentDeviceManagerRoarV3 *)v8 statusChannel];
    [v18 addObserver:v8];

    v19 = [HMDResidentStatusChannelManager alloc];
    v20 = [(HMDResidentDeviceManagerRoarV3 *)v8 statusChannel];
    v21 = [(HMDResidentDeviceManagerRoarV3 *)v8 queue];
    v22 = [(HMDResidentDeviceManagerRoarV3 *)v8 idsServerBag];
    v23 = [(HMDResidentStatusChannelManager *)v19 initWithResidentStatusChannel:v20 queue:v21 idsServerBag:v22];
    residentStatusChannelManager = v8->_residentStatusChannelManager;
    v8->_residentStatusChannelManager = v23;

    v25 = [(HMDResidentDeviceManagerRoarV3 *)v8 residentStatusChannelManager];
    v26 = [(HMDResidentDeviceManagerRoarV3 *)v8 statusChannel];
    [v26 setManager:v25];

    v27 = [(HMDResidentDeviceManagerRoarV3 *)v8 residentStatusChannelManager];
    [v27 configure];

    if ([(HMDResidentDeviceManagerRoarV3 *)v8 isActingAsResident])
    {
      v28 = [(HMDResidentDeviceManagerRoarV3 *)v8 residentLocationHandler];
      [v28 configure];

      v29 = [(HMDResidentDeviceManagerRoarV3 *)v8 residentLocationHandler];
      [v29 requestResidentLocation];

      v30 = objc_alloc(MEMORY[0x277D0F7A8]);
      v31 = [(HMDResidentDeviceManagerRoarV3 *)v8 queue];
      v32 = [v30 initWithQueue:v31];

      [(HMDResidentDeviceManagerRoarV3 *)v8 _statusKitConnectionTTSUNoReachablePrimaryTimeoutSeconds];
      v34 = v33;
      v35 = objc_autoreleasePoolPush();
      v36 = v8;
      v37 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        v38 = HMFGetLogIdentifier();
        *buf = 138543618;
        v55 = v38;
        v56 = 2048;
        v57 = v34;
        _os_log_impl(&dword_229538000, v37, OS_LOG_TYPE_DEFAULT, "%{public}@Setting timeout of %f for initial connected to status kit future", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v35);
      v39 = [(HMDResidentDeviceManagerRoarV3 *)v36 residentStatusChannel];
      v40 = [v39 initialConnectedToStatusKitFuture];
      v41 = [v40 timeout:v34];

      v52[0] = MEMORY[0x277D85DD0];
      v52[1] = 3221225472;
      v52[2] = __92__HMDResidentDeviceManagerRoarV3__handleInitialTransitionToResidentSelectionWithCompletion___block_invoke;
      v52[3] = &unk_278685090;
      v52[4] = v36;
      v53 = v4;
      v46 = MEMORY[0x277D85DD0];
      v47 = 3221225472;
      v48 = __92__HMDResidentDeviceManagerRoarV3__handleInitialTransitionToResidentSelectionWithCompletion___block_invoke_212;
      v49 = &unk_2786850B8;
      v50 = v36;
      v51 = v53;
      v42 = [v41 inContext:v32 then:v52 orRecover:&v46];
      v43 = [(HMDResidentDeviceManagerRoarV3 *)v36 residentStatusChannelManager:v46];
      [v43 addClientWithIdentifier:@"resident.device.manager"];
    }

    else
    {
      v44 = _Block_copy(v4);
      v32 = v44;
      if (v44)
      {
        (*(v44 + 2))(v44, 0);
      }
    }
  }

  v45 = *MEMORY[0x277D85DE8];
}

uint64_t __92__HMDResidentDeviceManagerRoarV3__handleInitialTransitionToResidentSelectionWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = HMFGetLogIdentifier();
    v10 = 138543362;
    v11 = v7;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@Handling initial transition to resident selection - Received initial Resident Status Channel state.", &v10, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  [*(a1 + 32) _determineResidentLocationWithCompletion:*(a1 + 40)];

  v8 = *MEMORY[0x277D85DE8];
  return 1;
}

uint64_t __92__HMDResidentDeviceManagerRoarV3__handleInitialTransitionToResidentSelectionWithCompletion___block_invoke_212(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = HMFGetLogIdentifier();
    v10 = 138543618;
    v11 = v7;
    v12 = 2112;
    v13 = v3;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_ERROR, "%{public}@Handling initial transition to resident selection - Initial Resident Status Channel state returned error: %@.", &v10, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  [*(a1 + 32) _determineResidentLocationWithCompletion:*(a1 + 40)];

  v8 = *MEMORY[0x277D85DE8];
  return 1;
}

- (void)_checkPrimaryResidentDeviceRemoved:(id)a3 currentPrimary:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(NSMutableSet *)self->_residentDevices count];
  v9 = [v7 isEqual:v6];
  v10 = [(HMDResidentDeviceManagerRoarV3 *)self primaryResidentDevice];

  if (v9)
  {
    v11 = objc_autoreleasePoolPush();
    v12 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      v16 = 138543618;
      v17 = v14;
      v18 = 2048;
      v19 = v8;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Current primary got removed. There are %lu residents remaining.", &v16, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    if (!v10)
    {
      [(HMDResidentDeviceManagerRoarV3 *)v12 _handleUpdatedPrimaryResidentDevice:0 previousPrimaryResident:v7 generationID:0 changeSource:0];
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_removeResidentDevice:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(HMDResidentDeviceManagerRoarV3 *)self primaryResidentDevice];
    os_unfair_lock_lock_with_options();
    if ([(NSMutableSet *)self->_residentDevices containsObject:v4])
    {
      [(NSMutableSet *)self->_residentDevices removeObject:v4];
      os_unfair_lock_unlock(&self->_lock);
      queue = self->_queue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __56__HMDResidentDeviceManagerRoarV3__removeResidentDevice___block_invoke;
      block[3] = &unk_27868A010;
      block[4] = self;
      v8 = v4;
      v9 = v5;
      dispatch_async(queue, block);
    }

    else
    {
      os_unfair_lock_unlock(&self->_lock);
    }
  }
}

void __56__HMDResidentDeviceManagerRoarV3__removeResidentDevice___block_invoke(uint64_t a1)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) delegate];
  [v2 residentDeviceManagerDidUpdateResidents:*(a1 + 32)];

  [*(a1 + 32) _sendResidentDeviceNotificationWithName:@"HMDResidentDeviceManagerRemoveResidentNotification" forResidentDevice:*(a1 + 40)];
  v3 = [*(a1 + 32) home];
  [v3 reEvaluateHomeHubState];
  [v3 evaluateResidentUpdate];
  [v3 evaluateBulletinNotificationsSupported];
  [*(a1 + 32) _updateResidentAvailability:0];
  v4 = [*(a1 + 40) device];
  v9[0] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  [v3 disableNotificationsForDevices:v5];

  if ([*(a1 + 40) isCurrentDevice])
  {
    [*(a1 + 32) setActingAsResident:0];
    v6 = [*(a1 + 32) residentSelectionManager];
    [v6 stop];

    if ([*(a1 + 32) homeSupportsResidentSelection])
    {
      [*(a1 + 32) _stopActingAsResidentViaStatusKit];
      v7 = [*(a1 + 32) residentStatusChannelManager];
      [v7 removeClientWithIdentifier:@"resident.device.manager"];
    }
  }

  [*(a1 + 32) _checkPrimaryResidentDeviceRemoved:*(a1 + 40) currentPrimary:*(a1 + 48)];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_addResidentDevice:(id)a3
{
  v46 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDResidentDeviceManagerRoarV3 *)self queue];
  dispatch_assert_queue_V2(v5);

  os_unfair_lock_lock_with_options();
  v6 = [(NSMutableSet *)self->_residentDevices member:v4];
  if (v6)
  {

    os_unfair_lock_unlock(&self->_lock);
    goto LABEL_29;
  }

  [(NSMutableSet *)self->_residentDevices addObject:v4];
  os_unfair_lock_unlock(&self->_lock);
  v7 = objc_autoreleasePoolPush();
  v8 = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v10 = HMFGetLogIdentifier();
    *buf = 138543618;
    v43 = v10;
    v44 = 2112;
    v45 = v4;
    _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_DEBUG, "%{public}@Added resident device %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  v11 = [(HMDResidentDeviceManagerRoarV3 *)v8 home];
  [v4 configureWithHome:v11];
  v12 = [(HMDResidentDeviceManagerRoarV3 *)v8 primaryResidentUUID];
  v13 = v12 == 0;

  if (v13)
  {
    [v4 setReachable:0];
  }

  if ([(HMDResidentDeviceManagerRoarV3 *)v8 isCurrentDeviceConfirmedPrimaryResident])
  {
    if (([v4 isReachable] & 1) == 0)
    {
      v14 = [(HMDResidentDeviceManagerRoarV3 *)v8 residentSelectionManager];
      v15 = [v14 currentModeType] == 1;

      if (v15)
      {
        v16 = [(HMDResidentDeviceManagerRoarV3 *)v8 residentSelectionManager];
        v17 = [v16 residentIsLocallyReachable:v4];

        if (v17)
        {
          [(HMDResidentDeviceManagerRoarV3 *)v8 _updateReachability:1 forResidentDevice:v4 source:7];
          v18 = [(HMDResidentDeviceManagerRoarV3 *)v8 backingStore];
          v19 = [MEMORY[0x277CBEB98] setWithObject:v4];
          [v18 updateReachabilityForResidents:v19];
        }
      }
    }
  }

  [(HMDResidentDeviceManagerRoarV3 *)v8 _updateResidentAvailability:0];
  v20 = [(HMDResidentDeviceManagerRoarV3 *)v8 delegate];
  [v20 residentDeviceManagerDidUpdateResidents:v8];

  [(HMDResidentDeviceManagerRoarV3 *)v8 _sendResidentDeviceNotificationWithName:@"HMDResidentDeviceManagerAddResidentNotification" forResidentDevice:v4];
  [v11 reEvaluateHomeHubState];
  [v11 evaluateBulletinNotificationsSupported];
  v21 = [(HMDResidentDeviceManagerRoarV3 *)v8 primaryResidentUUID];
  v22 = [v4 identifier];
  if ([v21 isEqual:v22])
  {
  }

  else
  {
    v23 = [(HMDResidentDeviceManagerRoarV3 *)v8 primaryResidentDevice];
    v24 = [v23 device];
    if (![v24 isCurrentDevice])
    {

      goto LABEL_19;
    }

    v25 = [v4 isEnabled];

    if (!v25)
    {
      goto LABEL_20;
    }
  }

  v21 = [v4 device];
  v41 = v21;
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:&v41 count:1];
  [v11 enableNotificationsForDevices:v22];
LABEL_19:

LABEL_20:
  v26 = [v4 device];
  if ([v26 isCurrentDevice])
  {
    v27 = [v11 homeManager];
    v28 = [v27 currentAccessorySetupMetricDispatcher];
    [v28 markSetupBeginStage:14 error:0];
    v29 = objc_autoreleasePoolPush();
    v30 = v8;
    v31 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      v32 = HMFGetLogIdentifier();
      v33 = [v11 residentSelectionVersion];
      *buf = 138543618;
      v43 = v32;
      v44 = 2114;
      v45 = v33;
      _os_log_impl(&dword_229538000, v31, OS_LOG_TYPE_INFO, "%{public}@Current device added as resident to home with resident selection version %{public}@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v29);
    if ([(HMDResidentDeviceManagerRoarV3 *)v30 homeSupportsResidentSelection])
    {
      v34 = [(HMDResidentDeviceManagerRoarV3 *)v30 residentLocationHandler];
      [v34 configure];

      v35 = [(HMDResidentDeviceManagerRoarV3 *)v30 residentLocationHandler];
      v36 = [v35 residentLocationRawValue];
      v37 = [v36 unsignedIntegerValue] == 100;

      if (v37)
      {
        v38 = [(HMDResidentDeviceManagerRoarV3 *)v30 residentLocationHandler];
        [v38 requestResidentLocation];
      }

      v39 = [(HMDResidentDeviceManagerRoarV3 *)v30 residentStatusChannelManager];
      [v39 addClientWithIdentifier:@"resident.device.manager"];
    }

    [(HMDResidentDeviceManagerRoarV3 *)v30 _setupAsAResident];
  }

LABEL_29:
  v40 = *MEMORY[0x277D85DE8];
}

- (id)residentDevicesWithIDSIdentifiers:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB18] array];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [(HMDResidentDeviceManagerRoarV3 *)self residentDeviceWithIDSIdentifier:*(*(&v15 + 1) + 8 * i), v15];
        if (v11)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v12 = [v5 copy];
  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)residentDeviceWithIDSIdentifier:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  os_unfair_lock_lock_with_options();
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self->_residentDevices;
  v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = *v16;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        v10 = [v9 device];
        v11 = [v10 idsIdentifier];
        v12 = [v11 isEqual:v4];

        if (v12)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  os_unfair_lock_unlock(&self->_lock);
  v13 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)residentDeviceForDevice:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  os_unfair_lock_lock_with_options();
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = self->_residentDevices;
  v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [v9 device];
        v11 = [v10 isEqual:v4];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  os_unfair_lock_unlock(&self->_lock);
  v12 = *MEMORY[0x277D85DE8];

  return v6;
}

- (HMDDevice)confirmedPrimaryResidentDevice
{
  v2 = [(HMDResidentDeviceManagerRoarV3 *)self primaryResidentDevice];
  v3 = [v2 device];

  return v3;
}

- (BOOL)isCurrentDevicePrimaryResident
{
  v2 = [(HMDResidentDeviceManagerRoarV3 *)self primaryResidentDevice];
  v3 = [v2 isCurrentDevice];

  return v3;
}

- (BOOL)isCurrentDeviceAvailableResident
{
  v2 = [(HMDResidentDeviceManagerRoarV3 *)self ourSelf];
  v3 = [v2 isEnabled];

  return v3;
}

- (NSArray)residentDevices
{
  os_unfair_lock_lock_with_options();
  v3 = [(NSMutableSet *)self->_residentDevices allObjects];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (id)ourSelf
{
  v2 = [(HMDResidentDeviceManagerRoarV3 *)self residentDevices];
  v3 = [v2 hmf_objectPassingTest:&__block_literal_global_250044];

  return v3;
}

uint64_t __41__HMDResidentDeviceManagerRoarV3_ourSelf__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 device];
  v3 = [v2 isCurrentDevice];

  return v3;
}

- (id)residentWithUUID:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [(HMDResidentDeviceManagerRoarV3 *)self residentDevices];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [v9 identifier];
        v11 = [v10 isEqual:v4];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v12 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)addDataSource:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = HMFGetLogIdentifier();
    v10 = NSStringFromSelector(a2);
    v12 = 138543618;
    v13 = v9;
    v14 = 2112;
    v15 = v10;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_DEBUG, "%{public}@Method %@ no longer relevant in HH2", &v12, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  v11 = *MEMORY[0x277D85DE8];
}

- (HMDIDSServerBag)idsServerBag
{
  v3 = [(HMDResidentDeviceManagerRoarV3 *)self dataSource];
  v4 = [(HMDResidentDeviceManagerRoarV3 *)self home];
  v5 = [v3 idsServerBagForHome:v4];

  return v5;
}

- (void)_teardownSessionWithPrimaryResidentDevice
{
  v4 = [(HMDResidentDeviceManagerRoarV3 *)self messageDispatcher];
  v3 = [(HMDResidentDeviceManagerRoarV3 *)self home];
  [v4 setRemoteAccessDevice:0 forHome:v3];
}

- (void)_setupSessionWithPrimaryResidentDevice
{
  v3 = [(HMDResidentDeviceManagerRoarV3 *)self primaryResidentDevice];
  if (v3)
  {
    v7 = v3;
    v4 = [(HMDResidentDeviceManagerRoarV3 *)self messageDispatcher];
    v5 = [v7 device];
    v6 = [(HMDResidentDeviceManagerRoarV3 *)self home];
    [v4 setRemoteAccessDevice:v5 forHome:v6];

    v3 = v7;
  }
}

- (void)_run
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = HMFGetLogIdentifier();
    v18 = 138543362;
    v19 = v6;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_DEBUG, "%{public}@Starting", &v18, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v7 = [(HMDResidentDeviceManagerRoarV3 *)v4 home];
  v8 = [(HMDResidentDeviceManagerRoarV3 *)v4 primaryResidentDevice];
  if (v8 && [(HMDResidentDeviceManagerRoarV3 *)v4 isResidentSupported])
  {
    [v7 subscribeForNotificationsFromRemoteGateway];
  }

  else
  {
    v9 = [(HMDResidentDeviceManagerRoarV3 *)v4 messageDispatcher];
    v10 = [v9 remoteAccessDeviceForHome:v7];

    v11 = [v10 capabilities];
    v12 = [v11 isResidentCapable];

    if (v12)
    {
      v13 = objc_autoreleasePoolPush();
      v14 = v4;
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = HMFGetLogIdentifier();
        v18 = 138543618;
        v19 = v16;
        v20 = 2112;
        v21 = v10;
        _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@Tearing down remote access to device: %@", &v18, 0x16u);
      }

      objc_autoreleasePoolPop(v13);
      [(HMDResidentDeviceManagerRoarV3 *)v14 _teardownSessionWithPrimaryResidentDevice];
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)run
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__HMDResidentDeviceManagerRoarV3_run__block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)atHomeLevelChanged:(int64_t)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = HMFGetLogIdentifier();
    v9 = NSStringFromSelector(a2);
    v11 = 138543618;
    v12 = v8;
    v13 = 2112;
    v14 = v9;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_DEBUG, "%{public}@Method %@ no longer relevant in HH2", &v11, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v10 = *MEMORY[0x277D85DE8];
}

- (void)confirmOnAvailability
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = objc_autoreleasePoolPush();
  v5 = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = HMFGetLogIdentifier();
    v8 = NSStringFromSelector(a2);
    v10 = 138543618;
    v11 = v7;
    v12 = 2112;
    v13 = v8;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_DEBUG, "%{public}@Method %@ no longer relevant in HH2", &v10, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  v9 = *MEMORY[0x277D85DE8];
}

- (void)confirmAsResident
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = objc_autoreleasePoolPush();
  v5 = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = HMFGetLogIdentifier();
    v8 = NSStringFromSelector(a2);
    v10 = 138543618;
    v11 = v7;
    v12 = 2112;
    v13 = v8;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_DEBUG, "%{public}@Method %@ no longer relevant in HH2", &v10, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  v9 = *MEMORY[0x277D85DE8];
}

- (void)confirmWithCompletionHandler:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = HMFGetLogIdentifier();
    v10 = NSStringFromSelector(a2);
    v12 = 138543618;
    v13 = v9;
    v14 = 2112;
    v15 = v10;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_DEBUG, "%{public}@Method %@ no longer relevant in HH2", &v12, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  if (v5)
  {
    v5[2](v5, 0);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (BOOL)hasTrustZoneCapableResident
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = +[HMDHomeKitVersion version6];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [(HMDResidentDeviceManagerRoarV3 *)self residentDevices];
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = *v14;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = [*(*(&v13 + 1) + 8 * i) device];
        v9 = [v8 version];
        v10 = [v9 isAtLeastVersion:v3];

        if (v10)
        {
          LOBYTE(v5) = 1;
          goto LABEL_11;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v11 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)_handleCloudResidentChange:(id)a3
{
  v4 = a3;
  v5 = [(HMDResidentDeviceManagerRoarV3 *)self appleAccountManager];
  v6 = [v5 device];

  v7 = [(HMDResidentDeviceManagerRoarV3 *)self backingStore];
  v8 = [(HMDResidentDeviceManagerRoarV3 *)self residentDevicesSet];
  v9 = [v7 handleCloudResidentChange:v4 currentResidents:v8 isCurrentDevicePrimaryResident:-[HMDResidentDeviceManagerRoarV3 isCurrentDevicePrimaryResident](self currentDevice:{"isCurrentDevicePrimaryResident"), v6}];

  [(HMDResidentDeviceManagerRoarV3 *)self _checkForResidentSelectionInfoUpdateInNotification:v4];
  v10 = [v9 addedResidentDevices];
  if (![v10 count])
  {
    v11 = [v9 deletedResidentDevices];
    if (![v11 count])
    {
      v13 = [v9 reachabilityUpdates];
      v14 = [v13 count];

      if (!v14)
      {
        goto LABEL_6;
      }

      goto LABEL_5;
    }
  }

LABEL_5:
  queue = self->_queue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __61__HMDResidentDeviceManagerRoarV3__handleCloudResidentChange___block_invoke;
  v15[3] = &unk_27868A750;
  v15[4] = self;
  v16 = v9;
  dispatch_async(queue, v15);

LABEL_6:
}

void __61__HMDResidentDeviceManagerRoarV3__handleCloudResidentChange___block_invoke(uint64_t a1)
{
  v40 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = [*(a1 + 40) addedResidentDevices];
    v7 = [v6 count];
    v8 = [*(a1 + 40) deletedResidentDevices];
    v9 = [v8 count];
    v10 = [*(a1 + 40) reachabilityUpdates];
    *buf = 138544130;
    v33 = v5;
    v34 = 2048;
    v35 = v7;
    v36 = 2048;
    v37 = v9;
    v38 = 2048;
    v39 = [v10 count];
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Residents changed, added: %lu; removed: %lu; reachability: %lu", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v2);
  v11 = [*(a1 + 40) deletedResidentDevices];
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __61__HMDResidentDeviceManagerRoarV3__handleCloudResidentChange___block_invoke_202;
  v31[3] = &unk_278685038;
  v31[4] = *(a1 + 32);
  [v11 hmf_enumerateWithAutoreleasePoolUsingBlock:v31];

  v12 = [*(a1 + 40) addedResidentDevices];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __61__HMDResidentDeviceManagerRoarV3__handleCloudResidentChange___block_invoke_204;
  v30[3] = &unk_278685038;
  v30[4] = *(a1 + 32);
  [v12 hmf_enumerateWithAutoreleasePoolUsingBlock:v30];

  v13 = [*(a1 + 40) reachabilityUpdates];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __61__HMDResidentDeviceManagerRoarV3__handleCloudResidentChange___block_invoke_205;
  v29[3] = &unk_278685038;
  v29[4] = *(a1 + 32);
  [v13 hmf_enumerateWithAutoreleasePoolUsingBlock:v29];

  v14 = [*(a1 + 40) addedResidentDevices];
  v15 = [v14 count];

  if (v15)
  {
    v16 = [*(a1 + 32) residentSelectionManager];
    v17 = [*(a1 + 40) addedResidentDevices];
    [v16 didAddResidentsToHome:v17];

    if ([*(a1 + 32) homeSupportsResidentSelection])
    {
      v18 = [*(a1 + 32) residentStatusChannel];
      v19 = [v18 isConnected];

      if (v19)
      {
        v20 = objc_autoreleasePoolPush();
        v21 = *(a1 + 32);
        v22 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          v23 = HMFGetLogIdentifier();
          *buf = 138543362;
          v33 = v23;
          _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_DEFAULT, "%{public}@Cloud added resident refresh residents reachability", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v20);
        [*(a1 + 32) _refreshAllResidentsReachabilityFromStatusKit];
      }
    }
  }

  v24 = [*(a1 + 40) deletedResidentDevices];
  v25 = [v24 count];

  if (v25)
  {
    v26 = [*(a1 + 32) residentSelectionManager];
    v27 = [*(a1 + 40) deletedResidentDevices];
    [v26 didRemoveResidentsFromHome:v27];
  }

  v28 = *MEMORY[0x277D85DE8];
}

void __61__HMDResidentDeviceManagerRoarV3__handleCloudResidentChange___block_invoke_202(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v8 = [v3 name];
    v9 = [v3 identifier];
    v11 = 138543874;
    v12 = v7;
    v13 = 2112;
    v14 = v8;
    v15 = 2114;
    v16 = v9;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Cloud removed resident: %@ (%{public}@)", &v11, 0x20u);
  }

  objc_autoreleasePoolPop(v4);
  [*(a1 + 32) _removeResidentDevice:v3];

  v10 = *MEMORY[0x277D85DE8];
}

void __61__HMDResidentDeviceManagerRoarV3__handleCloudResidentChange___block_invoke_204(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v8 = [v3 name];
    v9 = [v3 identifier];
    v11 = 138543874;
    v12 = v7;
    v13 = 2112;
    v14 = v8;
    v15 = 2114;
    v16 = v9;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Cloud added resident: %@ (%{public}@)", &v11, 0x20u);
  }

  objc_autoreleasePoolPop(v4);
  [*(a1 + 32) _addResidentDevice:v3];

  v10 = *MEMORY[0x277D85DE8];
}

void __61__HMDResidentDeviceManagerRoarV3__handleCloudResidentChange___block_invoke_205(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) _verifyAndUpdateReachability:objc_msgSend(v3 forResidentDevice:{"isReachable") ^ 1, v3}];
}

- (unint64_t)myLocation
{
  v2 = [(HMDResidentDeviceManagerRoarV3 *)self residentLocationHandler];
  v3 = [v2 residentLocationRawValue];
  v4 = [v3 unsignedIntegerValue];

  return v4;
}

- (unint64_t)residentSelectionMode
{
  v2 = [(HMDResidentDeviceManagerRoarV3 *)self residentSelectionManager];
  v3 = [v2 currentModeType];

  return v3;
}

- (NSArray)autoSelectedPreferredResidents
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = [(HMDResidentDeviceManagerRoarV3 *)self electorsPreferredResidentsList];
  v4 = [v3 residentIDSIdentifiers];
  v5 = [v4 mutableCopy];

  v6 = [(HMDResidentDeviceManagerRoarV3 *)self residentDevicesWithIDSIdentifiers:v5];
  v7 = [v6 mutableCopy];

  v8 = [(HMDResidentDeviceManagerRoarV3 *)self residentSelectionManager];
  v9 = [v8 residentsNotPresentInPreferredResidentsList:v3];

  [v7 addObjectsFromArray:v9];
  v10 = objc_autoreleasePoolPush();
  v11 = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v13 = HMFGetLogIdentifier();
    v14 = [v7 shortDescription];
    v18 = 138543618;
    v19 = v13;
    v20 = 2112;
    v21 = v14;
    _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_DEBUG, "%{public}@autoSelectedPreferredResidents: %@.", &v18, 0x16u);
  }

  objc_autoreleasePoolPop(v10);
  v15 = [MEMORY[0x277CBEA60] arrayWithArray:v7];

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

- (HMDResidentDevice)userSelectedPreferredResident
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = [(HMDResidentDeviceManagerRoarV3 *)self residentSelectionManager];
  v4 = [v3 currentModeType];

  if (v4 == 2)
  {
    v5 = [(HMDResidentDeviceManagerRoarV3 *)self residentSelectionInfo];
    v6 = [v5 preferredResidentIDSIdentifier];

    if (v6)
    {
      v7 = [(HMDResidentDeviceManagerRoarV3 *)self residentDeviceWithIDSIdentifier:v6];
      v8 = objc_autoreleasePoolPush();
      v9 = self;
      v10 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        v11 = HMFGetLogIdentifier();
        v12 = [v7 shortDescription];
        v19 = 138543618;
        v20 = v11;
        v21 = 2112;
        v22 = v12;
        _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_DEBUG, "%{public}@User preferred resident: %@.", &v19, 0x16u);
      }

      objc_autoreleasePoolPop(v8);
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    v14 = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v16 = HMFGetLogIdentifier();
      v19 = 138543362;
      v20 = v16;
      _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_DEBUG, "%{public}@We are not in Manual mode. Returning nil for user preferred resident.", &v19, 0xCu);
    }

    objc_autoreleasePoolPop(v13);
    v7 = 0;
  }

  v17 = *MEMORY[0x277D85DE8];

  return v7;
}

- (NSArray)residentsPresentOnStatusKit
{
  v3 = [MEMORY[0x277CBEB58] set];
  v4 = [(HMDResidentDeviceManagerRoarV3 *)self statusChannel];
  v5 = [v4 presentResidentStatuses];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __61__HMDResidentDeviceManagerRoarV3_residentsPresentOnStatusKit__block_invoke;
  v9[3] = &unk_278685010;
  v10 = v3;
  v6 = v3;
  [v5 hmf_enumerateWithAutoreleasePoolUsingBlock:v9];

  v7 = [v6 allObjects];

  return v7;
}

void __61__HMDResidentDeviceManagerRoarV3_residentsPresentOnStatusKit__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 idsIdentifier];
  [v2 addObject:v3];
}

- (HMDResidentSelectionInfo)residentSelectionInfo
{
  v3 = [(HMDResidentDeviceManagerRoarV3 *)self backingStore];
  v4 = [v3 residentSelectionInfo];

  v5 = [(HMDResidentDeviceManagerRoarV3 *)self presentResidentsStatuses];
  v6 = [v5 selectionInfo];

  v7 = v6;
  v8 = [v4 selectionTimestamp];
  v9 = [v7 selectionTimestamp];
  v10 = v9;
  v11 = v7;
  if (v8)
  {
    if (!v9 || (v11 = v7, [v8 compare:v9] == 1))
    {
      v11 = v4;
    }
  }

  return v11;
}

- (BOOL)homeSupportsResidentSelection
{
  v2 = [(HMDResidentDeviceManagerRoarV3 *)self home];
  v3 = [v2 residentSelectionVersion];
  v4 = [v3 integerValue] > 2;

  return v4;
}

- (void)_checkForResidentSelectionInfoUpdateInNotification:(id)a3
{
  v4 = a3;
  v5 = [(HMDResidentDeviceManagerRoarV3 *)self backingStore];
  v6 = [v5 hasResidentSelectionInfoUpdateInNotification:v4];

  if (v6)
  {
    [(HMDResidentDeviceManagerRoarV3 *)self _checkForResidentSelectionInfoUpdate];
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __85__HMDResidentDeviceManagerRoarV3__checkForResidentSelectionInfoUpdateInNotification___block_invoke;
    block[3] = &unk_27868A728;
    block[4] = self;
    dispatch_async(queue, block);
  }
}

void __85__HMDResidentDeviceManagerRoarV3__checkForResidentSelectionInfoUpdateInNotification___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) pendingNotifyPrimaryChanged];

  if (v2)
  {
    v3 = [*(a1 + 32) pendingNotifyPrimaryChanged];
    v3[2]();

    v4 = *(a1 + 32);

    [v4 setPendingNotifyPrimaryChanged:0];
  }
}

- (void)_checkForResidentSelectionInfoUpdate
{
  v3 = [(HMDResidentDeviceManagerRoarV3 *)self backingStore];
  v4 = [v3 residentSelectionInfo];

  if (v4)
  {
    queue = self->_queue;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __70__HMDResidentDeviceManagerRoarV3__checkForResidentSelectionInfoUpdate__block_invoke;
    v6[3] = &unk_27868A750;
    v6[4] = self;
    v7 = v4;
    dispatch_async(queue, v6);
  }
}

void __70__HMDResidentDeviceManagerRoarV3__checkForResidentSelectionInfoUpdate__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) residentSelectionManager];
  [v2 didUpdateResidentSelectionModelTo:*(a1 + 40)];
}

- (id)residentIDSIdentifierToLocationMap
{
  v3 = [(HMDResidentDeviceManagerRoarV3 *)self presentResidentsStatuses];
  v4 = [v3 residentIDSIdentifierToLocationMap];
  v5 = [v4 mutableCopy];

  v6 = [(HMDResidentDeviceManagerRoarV3 *)self currentResidentDevice];
  if (v6)
  {
    v7 = v6;
    v8 = [(HMDResidentDeviceManagerRoarV3 *)self currentResidentDevice];
    v9 = [v8 device];
    v10 = [v9 idsIdentifier];
    v11 = [v5 objectForKeyedSubscript:v10];

    if (!v11)
    {
      v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDResidentDeviceManagerRoarV3 myLocation](self, "myLocation")}];
      v13 = [(HMDResidentDeviceManagerRoarV3 *)self currentResidentDevice];
      v14 = [v13 device];
      v15 = [v14 idsIdentifier];
      [v5 setObject:v12 forKeyedSubscript:v15];
    }
  }

  v16 = [v5 copy];

  return v16;
}

- (id)preferredResidentUUIDs
{
  v2 = [(HMDResidentDeviceManagerRoarV3 *)self electorsPreferredResidentsList];
  v3 = [v2 residentIDSIdentifiers];

  return v3;
}

- (HMDPreferredResidentsList)electorsPreferredResidentsList
{
  v2 = [(HMDResidentDeviceManagerRoarV3 *)self presentResidentsStatuses];
  v3 = [v2 preferredResidentsList];

  return v3;
}

- (void)_startResidentSelectionManager
{
  v3 = [(HMDResidentDeviceManagerRoarV3 *)self dataSource];
  v4 = [v3 createResidentSelectionManagerWithContext:self];
  [(HMDResidentDeviceManagerRoarV3 *)self setResidentSelectionManager:v4];

  v5 = [(HMDResidentDeviceManagerRoarV3 *)self residentSelectionManager];
  [v5 setDelegate:self];

  [(HMDResidentDeviceManagerRoarV3 *)self _checkForResidentSelectionInfoUpdate];
  v6 = [(HMDResidentDeviceManagerRoarV3 *)self residentSelectionManager];
  [v6 start];
}

- (id)_electorForDeterminingResidentLocationFromPresentResidentStatuses:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 hmf_isEmpty])
  {
    v5 = objc_autoreleasePoolPush();
    v6 = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      v13 = 138543362;
      v14 = v8;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@No present resident statuses, returning ourselves as the elector", &v13, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
    v9 = [(HMDResidentDeviceManagerRoarV3 *)v6 ourSelf];
  }

  else
  {
    v10 = [[HMDResidentSelectionStatusKit alloc] initWithWithContext:self residentStatusList:v4];
    v9 = [(HMDResidentSelectionStatusKit *)v10 elector];
  }

  v11 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)_residentStatusWithPreferredResidentsList:(id)a3
{
  v4 = a3;
  if ([(HMDResidentDeviceManagerRoarV3 *)self isCurrentDevicePrimaryResident])
  {
    v5 = [(HMDResidentDeviceManagerRoarV3 *)self primaryResidentGenerationID];
  }

  else
  {
    v5 = 0;
  }

  v6 = [(HMDResidentDeviceManagerRoarV3 *)self residentLocationHandler];
  v7 = [v6 residentLocationRawValue];

  v8 = [HMDUnpublishedResidentStatus alloc];
  v9 = +[HMDHomeKitVersion currentVersion];
  v10 = [(HMDResidentDeviceManagerRoarV3 *)self backingStore];
  v11 = [v10 residentSelectionInfo];
  v12 = [(HMDResidentDeviceManagerRoarV3 *)self ourNetworkConnectionType];
  LOBYTE(v15) = [(HMDResidentDeviceManagerRoarV3 *)self hasReachableAccessories];
  v13 = [(HMDUnpublishedResidentStatus *)v8 initWithVersion:v9 generationID:v5 preferredResidentsList:v4 selectionInfo:v11 connectionType:v12 locationRawValue:v7 hasReachableAccessories:v15];

  return v13;
}

- (BOOL)hasReachableAccessories
{
  v2 = [(HMDResidentDeviceManagerRoarV3 *)self home];
  if ([v2 isCurrentDeviceAvailableResident])
  {
    v7 = 0;
    v8 = &v7;
    v9 = 0x2020000000;
    v10 = 0;
    v3 = [v2 accessories];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __57__HMDResidentDeviceManagerRoarV3_hasReachableAccessories__block_invoke;
    v6[3] = &unk_278684FE8;
    v6[4] = &v7;
    [v3 hmf_enumerateWithAutoreleasePoolUsingBlock:v6];

    v4 = *(v8 + 24);
    _Block_object_dispose(&v7, 8);
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

void __57__HMDResidentDeviceManagerRoarV3_hasReachableAccessories__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v11 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v11;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  v8 = v7;
  if (v7)
  {
    if (([v7 supportsCHIP] & 1) == 0)
    {
      v9 = [v8 hostAccessory];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if ((isKindOfClass & 1) == 0 && [v8 hasIPLink] && objc_msgSend(v8, "isReachable"))
      {
        *(*(*(a1 + 32) + 8) + 24) = 1;
        *a4 = 1;
      }
    }
  }
}

- (unint64_t)ourNetworkConnectionType
{
  default_evaluator = nw_path_create_default_evaluator();
  v3 = nw_path_evaluator_copy_path();
  if (MEMORY[0x22AAD4080](v3, 3))
  {
    v4 = 1;
  }

  else if (MEMORY[0x22AAD4080](v3, 1))
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_publishCurrentResidentStatusWithReason:(int64_t)a3 preferredResidentsList:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [(HMDResidentDeviceManagerRoarV3 *)self residentStatusChannel];

  if (!v7)
  {
    v10 = objc_autoreleasePoolPush();
    v11 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      v16 = 138543362;
      v17 = v13;
      v14 = "%{public}@Attempting to publish current resident status but Resident Status Channel is nil";
LABEL_8:
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, v14, &v16, 0xCu);
    }

LABEL_9:

    objc_autoreleasePoolPop(v10);
    goto LABEL_10;
  }

  if (![(HMDResidentDeviceManagerRoarV3 *)self configuredStatusKitForResidentSelection])
  {
    v10 = objc_autoreleasePoolPush();
    v11 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      v16 = 138543362;
      v17 = v13;
      v14 = "%{public}@Attempting to publish current resident status before Resident Status Channel is configured";
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  v8 = [(HMDResidentDeviceManagerRoarV3 *)self _residentStatusWithPreferredResidentsList:v6];
  v9 = [(HMDResidentDeviceManagerRoarV3 *)self statusChannel];
  [v9 publishResidentStatus:v8 reason:a3];

LABEL_10:
  v15 = *MEMORY[0x277D85DE8];
}

- (double)blockPrimaryTakeoverDuration
{
  v28 = *MEMORY[0x277D85DE8];
  [(HMDResidentDeviceManagerRoarV3 *)self blockPrimaryTakeoverStartTime];
  v3 = 0.0;
  if (v4 >= 0.0)
  {
    v5 = [(HMDResidentDeviceManagerRoarV3 *)self idsServerBag];
    v6 = [v5 residentDeviceManagerBlockPrimaryTakeoverDurationSeconds];

    if (v6)
    {
      [v6 doubleValue];
      v8 = v7;
    }

    else
    {
      v8 = 300.0;
    }

    HMFUptime();
    v10 = v9;
    [(HMDResidentDeviceManagerRoarV3 *)self blockPrimaryTakeoverStartTime];
    v12 = v10 - v11;
    v3 = 0.0;
    if (v12 < v8)
    {
      v3 = v8 - v12;
      v13 = objc_autoreleasePoolPush();
      v14 = self;
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = HMFGetLogIdentifier();
        [(HMDResidentDeviceManagerRoarV3 *)v14 blockPrimaryTakeoverStartTime];
        v20 = 138544130;
        v21 = v16;
        v22 = 2048;
        v23 = v17;
        v24 = 2048;
        v25 = v12;
        v26 = 2048;
        v27 = v8 - v12;
        _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@Blocking primary takeover (start: %fs, durationAlreadyBlocked: %fs, durationLeft: %fs)", &v20, 0x2Au);
      }

      objc_autoreleasePoolPop(v13);
    }
  }

  v18 = *MEMORY[0x277D85DE8];
  return v3;
}

- (double)_initialConnectionToStatusKitOnResidentTimeout
{
  v47 = *MEMORY[0x277D85DE8];
  v3 = [(HMDResidentDeviceManagerRoarV3 *)self userDefaults];
  v4 = [v3 objectForKey:@"TTSU.Finished"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  v7 = [(HMDResidentDeviceManagerRoarV3 *)self userDefaults];
  [v7 removeObjectForKey:@"TTSU.Finished"];

  if (v6)
  {
    v8 = [v6 BOOLValue];
  }

  else
  {
    v8 = 0;
  }

  v9 = !isAppleTV() & v8;
  v10 = [(HMDResidentDeviceManagerRoarV3 *)self userDefaults];
  v11 = [v10 objectForKey:@"rpr"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  v14 = [(HMDResidentDeviceManagerRoarV3 *)self userDefaults];
  [v14 removeObjectForKey:@"rpr"];

  v15 = [(HMDResidentDeviceManagerRoarV3 *)self idsServerBag];
  v16 = [v15 statusKitInitialConnectionTimeoutSeconds];

  if (v16)
  {
    [v16 doubleValue];
    v18 = v17;
    if (v9)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v18 = 60.0;
    if (v9)
    {
LABEL_12:
      if (v13)
      {
        v19 = objc_autoreleasePoolPush();
        v20 = self;
        v21 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          v22 = HMFGetLogIdentifier();
          [v13 BOOLValue];
          v23 = HMFBooleanToString();
          v41 = 138543618;
          v42 = v22;
          v43 = 2112;
          v44 = *&v23;
          _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@Determining initial StatusKit timeout: using hint from controller homeHasReachableResident: %@", &v41, 0x16u);
        }

        objc_autoreleasePoolPop(v19);
        if ([v13 BOOLValue])
        {
LABEL_16:
          HMFUptime();
          goto LABEL_24;
        }
      }

      else
      {
        v29 = [(HMDResidentDeviceManagerRoarV3 *)self availableResidentDevices];
        v30 = [v29 count];

        v31 = objc_autoreleasePoolPush();
        v32 = self;
        v33 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          v34 = HMFGetLogIdentifier();
          v41 = 138543618;
          v42 = v34;
          v43 = 2048;
          v44 = *&v30;
          _os_log_impl(&dword_229538000, v33, OS_LOG_TYPE_DEFAULT, "%{public}@Determining initial StatusKit timeout: using available resident devices count: %lu", &v41, 0x16u);
        }

        objc_autoreleasePoolPop(v31);
        if (v30 >= 2)
        {
          goto LABEL_16;
        }
      }

      [(HMDResidentDeviceManagerRoarV3 *)self _statusKitConnectionTTSUNoReachablePrimaryTimeoutSeconds];
      v18 = v35;
      v24 = -1.0;
LABEL_24:
      [(HMDResidentDeviceManagerRoarV3 *)self setBlockPrimaryTakeoverStartTime:v24];
      v25 = objc_autoreleasePoolPush();
      v36 = self;
      v27 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v37 = HMFGetLogIdentifier();
        v38 = HMFBooleanToString();
        v41 = 138543874;
        v42 = v37;
        v43 = 2048;
        v44 = v18;
        v45 = 2112;
        v46 = v38;
        _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_DEFAULT, "%{public}@Using initial StatusKit timeout of: %f seconds (blockPrimaryTakeover: %@)", &v41, 0x20u);
      }

      goto LABEL_26;
    }
  }

  v25 = objc_autoreleasePoolPush();
  v26 = self;
  v27 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    v28 = HMFGetLogIdentifier();
    v41 = 138543618;
    v42 = v28;
    v43 = 2048;
    v44 = v18;
    _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_DEFAULT, "%{public}@Using initial StatusKit timeout of: %f seconds", &v41, 0x16u);
  }

LABEL_26:

  objc_autoreleasePoolPop(v25);
  v39 = *MEMORY[0x277D85DE8];
  return v18;
}

- (double)_statusKitConnectionTTSUNoReachablePrimaryTimeoutSeconds
{
  v2 = [(HMDResidentDeviceManagerRoarV3 *)self idsServerBag];
  v3 = [v2 statusKitConnectionTTSUNoReachablePrimaryTimeoutSeconds];

  if (v3)
  {
    [v3 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = 30.0;
  }

  return v5;
}

- (void)_startActingAsResident
{
  v39 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  v3 = [(HMDResidentDeviceManagerRoarV3 *)self isCurrentDeviceAvailableResident];
  v4 = objc_autoreleasePoolPush();
  v5 = self;
  v6 = HMFGetOSLogHandle();
  v7 = v6;
  if (v3)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      v33 = 138543362;
      v34 = v8;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Met conditions required to start acting as a resident.", &v33, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    v9 = [(HMDResidentDeviceManagerRoarV3 *)v5 home];
    v10 = [v9 homeManager];
    v11 = [v10 currentAccessorySetupMetricDispatcher];
    [v11 markPrimaryResidentElectionJoinMesh];
    [(HMDResidentDeviceManagerRoarV3 *)v5 setActingAsResident:1];
    v12 = [(HMDResidentDeviceManagerRoarV3 *)v5 primaryResidentDevice];
    if (v12)
    {
      v13 = [(HMDResidentDeviceManagerRoarV3 *)v5 reachabilityObserver];
      v14 = [v12 messageAddress];
      [v13 removeListener:v5 forDeviceAddress:v14];

      v15 = [(HMDResidentDeviceManagerRoarV3 *)v5 deviceMonitor];
      v16 = [v12 device];
      [v15 stopMonitoringDevice:v16 forClient:v5];
    }

    if ([(HMDResidentDeviceManagerRoarV3 *)v5 homeSupportsResidentSelection])
    {
      v17 = [(HMDResidentDeviceManagerRoarV3 *)v5 residentLocationHandler];
      v18 = [v17 residentLocationRawValue];
      v19 = [v18 unsignedIntegerValue];

      if (v19 == 100)
      {
        [(HMDResidentDeviceManagerRoarV3 *)v5 _startRetryTimer];
        v20 = objc_autoreleasePoolPush();
        v21 = v5;
        v22 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          v23 = HMFGetLogIdentifier();
          v24 = [(HMDResidentDeviceManagerRoarV3 *)v21 residentLocationRetryTimer];
          v25 = [v24 fireDate];
          [v25 timeIntervalSinceNow];
          v33 = 138543874;
          v34 = v23;
          v35 = 2112;
          v36 = @"Unknown";
          v37 = 2048;
          v38 = v26;
          _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_ERROR, "%{public}@Resident location is: %@, scheduling retry after %.03f seconds", &v33, 0x20u);
        }
      }

      else
      {
        v20 = objc_autoreleasePoolPush();
        v28 = v5;
        v22 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          v29 = HMFGetLogIdentifier();
          v30 = StringFromHMDResidentLocation(v19);
          v33 = 138543618;
          v34 = v29;
          v35 = 2112;
          v36 = v30;
          _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_INFO, "%{public}@Resident location determined to: %@", &v33, 0x16u);
        }
      }

      objc_autoreleasePoolPop(v20);
    }

    v31 = [(HMDResidentDeviceManagerRoarV3 *)v5 residentSelectionManager];
    [v31 currentDeviceReadyAsAResident];
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v27 = HMFGetLogIdentifier();
      v33 = 138543362;
      v34 = v27;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_ERROR, "%{public}@Current device is not a resident anymore. Do not start acting as a resident.", &v33, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
  }

  v32 = *MEMORY[0x277D85DE8];
}

- (void)_handleInitialConnectionToStatusKit
{
  v25 = *MEMORY[0x277D85DE8];
  [(HMDResidentDeviceManagerRoarV3 *)self setConfiguredStatusKitForResidentSelection:1];
  v3 = [(HMDResidentDeviceManagerRoarV3 *)self residentStatusChannel];
  v4 = [v3 isConnected];

  if ((v4 & 1) == 0)
  {
    v16 = objc_autoreleasePoolPush();
    v17 = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543362;
      v24 = v19;
      _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_ERROR, "%{public}@Not connected to StatusKit, unable to determine resident location", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v16);
    [(HMDResidentDeviceManagerRoarV3 *)v17 _startActingAsResident];
    goto LABEL_7;
  }

  [(HMDResidentDeviceManagerRoarV3 *)self _refreshAllResidentsReachabilityFromStatusKit];
  v5 = [HMDResidentSelectionStatusKit alloc];
  v6 = [(HMDResidentDeviceManagerRoarV3 *)self residentStatusChannel];
  v7 = [v6 presentResidentStatuses];
  v8 = [(HMDResidentSelectionStatusKit *)v5 initWithWithContext:self residentStatusList:v7];
  [(HMDResidentDeviceManagerRoarV3 *)self setPresentResidentsStatuses:v8];

  v9 = [(HMDResidentDeviceManagerRoarV3 *)self residentLocationHandler];
  v10 = [v9 residentLocationRawValue];
  v11 = [v10 unsignedIntegerValue];

  if (v11 == 100)
  {
    v12 = [(HMDResidentDeviceManagerRoarV3 *)self residentStatusChannel];
    v13 = [v12 presentResidentStatuses];
    v14 = [(HMDResidentDeviceManagerRoarV3 *)self _electorForDeterminingResidentLocationFromPresentResidentStatuses:v13];

    v15 = [(HMDResidentDeviceManagerRoarV3 *)self residentLocationHandler];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __69__HMDResidentDeviceManagerRoarV3__handleInitialConnectionToStatusKit__block_invoke;
    v22[3] = &unk_27868A250;
    v22[4] = self;
    [v15 determineHomeOrAwayUsingElector:v14 withCompletion:v22];

LABEL_7:
    v20 = *MEMORY[0x277D85DE8];
    return;
  }

  v21 = *MEMORY[0x277D85DE8];

  [(HMDResidentDeviceManagerRoarV3 *)self _startActingAsResident];
}

void __69__HMDResidentDeviceManagerRoarV3__handleInitialConnectionToStatusKit__block_invoke(uint64_t a1, void *a2)
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
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_ERROR, "%{public}@Determining resident home/away state encountered error: %@", &v9, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
  }

  [*(a1 + 32) _startActingAsResident];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_setupAsAResident
{
  v39[3] = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  v3 = objc_alloc(MEMORY[0x277D0F7A8]);
  v4 = [(HMDResidentDeviceManagerRoarV3 *)self queue];
  v5 = [v3 initWithQueue:v4];

  v6 = [(HMDResidentDeviceManagerRoarV3 *)self home];
  v7 = [v6 homeManager];
  v8 = [v7 currentAccessorySetupMetricDispatcher];

  v9 = [(HMDResidentDeviceManagerRoarV3 *)self appleAccountManager];
  v10 = [v9 idsDevicesUpdated];

  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __51__HMDResidentDeviceManagerRoarV3__setupAsAResident__block_invoke;
  v37[3] = &unk_278687050;
  v37[4] = self;
  v11 = v8;
  v38 = v11;
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __51__HMDResidentDeviceManagerRoarV3__setupAsAResident__block_invoke_180;
  v36[3] = &unk_278689CD8;
  v36[4] = self;
  v12 = [v10 inContext:v5 then:v37 orRecover:v36];
  v13 = [(HMDResidentDeviceManagerRoarV3 *)self dataSource];
  v14 = [v13 firstCloudKitImportFuture];

  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __51__HMDResidentDeviceManagerRoarV3__setupAsAResident__block_invoke_182;
  v34[3] = &unk_278687050;
  v34[4] = self;
  v15 = v11;
  v35 = v15;
  v16 = [v14 inContext:v5 then:v34];
  v17 = [(HMDResidentDeviceManagerRoarV3 *)self messageDispatcher];
  v18 = [v17 secureRemoteTransport];
  v19 = [v18 startFuture];

  v31[4] = self;
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __51__HMDResidentDeviceManagerRoarV3__setupAsAResident__block_invoke_183;
  v32[3] = &unk_278687050;
  v32[4] = self;
  v33 = v15;
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __51__HMDResidentDeviceManagerRoarV3__setupAsAResident__block_invoke_184;
  v31[3] = &unk_278689CD8;
  v20 = v15;
  v21 = [v19 inContext:v5 then:v32 orRecover:v31];
  v22 = MEMORY[0x277D0F7C0];
  v39[0] = v19;
  v39[1] = v14;
  v39[2] = v10;
  v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:3];
  v24 = [v22 allSettled:v23];

  v28[4] = self;
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __51__HMDResidentDeviceManagerRoarV3__setupAsAResident__block_invoke_185;
  v29[3] = &unk_278687050;
  v29[4] = self;
  v30 = v5;
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __51__HMDResidentDeviceManagerRoarV3__setupAsAResident__block_invoke_193;
  v28[3] = &unk_278689CD8;
  v25 = v5;
  v26 = [v24 inContext:v25 then:v29 orRecover:v28];

  v27 = *MEMORY[0x277D85DE8];
}

uint64_t __51__HMDResidentDeviceManagerRoarV3__setupAsAResident__block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v10 = 138543362;
    v11 = v7;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Peer devices settled.", &v10, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  [*(a1 + 40) markPrimaryResidentElectionPeerDeviceFutureResolved];

  v8 = *MEMORY[0x277D85DE8];
  return 1;
}

uint64_t __51__HMDResidentDeviceManagerRoarV3__setupAsAResident__block_invoke_180(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = HMFGetLogIdentifier();
    v10 = 138543618;
    v11 = v7;
    v12 = 2112;
    v13 = v3;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_ERROR, "%{public}@Peer devices settled with error: %@.", &v10, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  v8 = *MEMORY[0x277D85DE8];
  return 1;
}

uint64_t __51__HMDResidentDeviceManagerRoarV3__setupAsAResident__block_invoke_182(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v10 = 138543362;
    v11 = v7;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@First CloudKit import promise resolved.", &v10, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  [*(a1 + 40) markPrimaryResidentElectionFirstCloudKitImportFutureResolved];

  v8 = *MEMORY[0x277D85DE8];
  return 1;
}

uint64_t __51__HMDResidentDeviceManagerRoarV3__setupAsAResident__block_invoke_183(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v10 = 138543362;
    v11 = v7;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Modern Transport Started.", &v10, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  [*(a1 + 40) markPrimaryResidentElectionModernTransportStartedFutureResolved];

  v8 = *MEMORY[0x277D85DE8];
  return 1;
}

uint64_t __51__HMDResidentDeviceManagerRoarV3__setupAsAResident__block_invoke_184(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = HMFGetLogIdentifier();
    v10 = 138543618;
    v11 = v7;
    v12 = 2112;
    v13 = v3;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_ERROR, "%{public}@Modern Transport start returned error: %@.", &v10, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  v8 = *MEMORY[0x277D85DE8];
  return 1;
}

uint64_t __51__HMDResidentDeviceManagerRoarV3__setupAsAResident__block_invoke_185(uint64_t a1, void *a2)
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) home];
  v5 = [v4 homeManager];
  v6 = [v5 badCDPState];

  if (v6)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 32);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543362;
      v35 = v10;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_ERROR, "%{public}@Operating in bad CDP state. Not joining the mesh", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
  }

  else if (([*(a1 + 32) isActingAsResident] & 1) == 0)
  {
    v11 = [*(a1 + 32) appleAccountManager];
    v12 = [v11 device];

    if (v12)
    {
      [*(a1 + 32) _createAllKnownResidentsInHomeWithCurrentDevice:v12 hasResidents:0];
    }

    else
    {
      v13 = objc_autoreleasePoolPush();
      v14 = *(a1 + 32);
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
      {
        v16 = HMFGetLogIdentifier();
        *buf = 138543362;
        v35 = v16;
        _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_FAULT, "%{public}@Submitting ABC event for failure: No current device to add resident devices", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v13);
      v17 = [[HMDAssertionLogEvent alloc] initWithReason:@"No current device to add resident devices"];
      v18 = +[HMDMetricsManager sharedLogEventSubmitter];
      [v18 submitLogEvent:v17];
    }

    v19 = [*(a1 + 32) residentSelectionManager];
    v20 = [v19 currentModeType];

    v21 = *(a1 + 32);
    if (v20 == 1)
    {
      [v21 _startActingAsResident];
    }

    else if ([v21 homeSupportsResidentSelection])
    {
      [*(a1 + 32) _initialConnectionToStatusKitOnResidentTimeout];
      v23 = v22;
      v24 = [*(a1 + 32) residentStatusChannel];
      v25 = [v24 initialConnectedToStatusKitFuture];
      v26 = [v25 timeout:v23];

      v32[0] = MEMORY[0x277D85DD0];
      v32[1] = 3221225472;
      v32[2] = __51__HMDResidentDeviceManagerRoarV3__setupAsAResident__block_invoke_191;
      v32[3] = &unk_278689CB0;
      v27 = *(a1 + 40);
      v33 = *(a1 + 32);
      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 3221225472;
      v31[2] = __51__HMDResidentDeviceManagerRoarV3__setupAsAResident__block_invoke_192;
      v31[3] = &unk_278689CD8;
      v31[4] = v33;
      v28 = [v26 inContext:v27 then:v32 orRecover:v31];
    }
  }

  v29 = *MEMORY[0x277D85DE8];
  return 1;
}

uint64_t __51__HMDResidentDeviceManagerRoarV3__setupAsAResident__block_invoke_193(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = HMFGetLogIdentifier();
    v10 = 138543362;
    v11 = v7;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_ERROR, "%{public}@Could not join the mesh. One of the conditions to join was not met", &v10, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  v8 = *MEMORY[0x277D85DE8];
  return 1;
}

uint64_t __51__HMDResidentDeviceManagerRoarV3__setupAsAResident__block_invoke_191(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v10 = 138543362;
    v11 = v7;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Received initial Resident Status Channel state.", &v10, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  [*(a1 + 32) _handleInitialConnectionToStatusKit];

  v8 = *MEMORY[0x277D85DE8];
  return 1;
}

uint64_t __51__HMDResidentDeviceManagerRoarV3__setupAsAResident__block_invoke_192(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = HMFGetLogIdentifier();
    v10 = 138543618;
    v11 = v7;
    v12 = 2112;
    v13 = v3;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_ERROR, "%{public}@Initial Resident Status Channel state returned error: %@.", &v10, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  [*(a1 + 32) _handleInitialConnectionToStatusKit];

  v8 = *MEMORY[0x277D85DE8];
  return 1;
}

- (void)invalidate
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__HMDResidentDeviceManagerRoarV3_invalidate__block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(queue, block);
}

void __44__HMDResidentDeviceManagerRoarV3_invalidate__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) notificationCenter];
  [v2 removeObserver:*(a1 + 32)];

  v3 = [*(a1 + 32) residentSelectionManager];
  [v3 stop];
}

- (void)_configureResidentSupported
{
  v23 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  v3 = [(HMDResidentDeviceManagerRoarV3 *)self appleAccountManager];
  v4 = [v3 device];

  if (v4)
  {
    if (![(HMDResidentDeviceManagerRoarV3 *)self isResidentSupported])
    {
      v18 = 0;
      [(HMDResidentDeviceManagerRoarV3 *)self _createAllKnownResidentsInHomeWithCurrentDevice:v4 hasResidents:&v18];
      v5 = objc_autoreleasePoolPush();
      v6 = self;
      v7 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = HMFGetLogIdentifier();
        v9 = [(HMDResidentDeviceManagerRoarV3 *)v6 residentDevices];
        *buf = 138543618;
        v20 = v8;
        v21 = 2114;
        v22 = v9;
        _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Initial resident devices: %{public}@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v5);
      v10 = [(HMDResidentDeviceManagerRoarV3 *)v6 residentDevices];
      v11 = [v10 count] == 0;
      v12 = v11 & v18;

      if (v12 == 1)
      {
        v13 = objc_autoreleasePoolPush();
        v14 = v6;
        v15 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          v16 = HMFGetLogIdentifier();
          *buf = 138543362;
          v20 = v16;
          _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@No HMDResidentDevice but has MKFResident models, force update", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v13);
      }

      [(HMDResidentDeviceManagerRoarV3 *)v6 setResidentSupported:1];
      [(HMDResidentDeviceManagerRoarV3 *)v6 _updateResidentAvailability:v12];
    }
  }

  else
  {
    [(HMDResidentDeviceManagerRoarV3 *)self setResidentSupported:0];
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)_createAllKnownResidentsInHomeWithCurrentDevice:(id)a3 hasResidents:(BOOL *)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (!v6)
  {
    _HMFPreconditionFailure();
  }

  v7 = v6;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543362;
    v17 = v11;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Constructing all known resident devices in the home", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v8);
  v12 = [(HMDResidentDeviceManagerRoarV3 *)v9 backingStore];
  v13 = [v12 findResidents:v7 outHasResidents:a4];

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __95__HMDResidentDeviceManagerRoarV3__createAllKnownResidentsInHomeWithCurrentDevice_hasResidents___block_invoke;
  v15[3] = &unk_278684FC0;
  v15[4] = v9;
  [v13 hmf_enumerateWithAutoreleasePoolUsingBlock:v15];

  v14 = *MEMORY[0x277D85DE8];
}

void __95__HMDResidentDeviceManagerRoarV3__createAllKnownResidentsInHomeWithCurrentDevice_hasResidents___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((v3 + 288));
  [v5 configureWithHome:WeakRetained];

  [*(a1 + 32) _addResidentDevice:v5];
}

- (void)_registerForNotifications
{
  v3 = [(HMDResidentDeviceManagerRoarV3 *)self notificationCenter];
  v4 = [(HMDResidentDeviceManagerRoarV3 *)self backingStore];
  v5 = [v4 cloudChangeUpdateNotificationName];
  [v3 addObserver:self selector:sel__handleCloudResidentChange_ name:v5 object:0];

  v6 = [(HMDResidentDeviceManagerRoarV3 *)self notificationCenter];
  [v6 addObserver:self selector:sel__handleRemoteDeviceIsReachable_ name:@"HMDRemoteDeviceIsReachableNotification" object:0];

  v7 = [(HMDResidentDeviceManagerRoarV3 *)self notificationCenter];
  [v7 addObserver:self selector:sel__handleRemoteDeviceIsNotReachable_ name:@"HMDRemoteDeviceIsNotReachableNotification" object:0];

  v8 = [(HMDResidentDeviceManagerRoarV3 *)self notificationCenter];
  v9 = [(HMDResidentDeviceManagerRoarV3 *)self home];
  [v8 addObserver:self selector:sel__handleResidentSelectionVersionDidChange_ name:@"HMDHomeResidentSelectionVersionDidChangeNotification" object:v9];

  v10 = [(HMDResidentDeviceManagerRoarV3 *)self notificationCenter];
  [v10 addObserver:self selector:sel__handleDataReadyAfterBecomingPrimaryNotification_ name:@"HMDHomeDataReadyAfterBecomingPrimaryNotification" object:0];

  v11 = [(HMDResidentDeviceManagerRoarV3 *)self notificationCenter];
  [v11 addObserver:self selector:sel__handleHomeLocationChangedNotification_ name:@"HMDLocationForHomeChanged" object:0];
}

- (void)_registerForMessages
{
  v25[3] = *MEMORY[0x277D85DE8];
  v3 = [(HMDResidentDeviceManagerRoarV3 *)self home];
  v4 = [(HMDResidentDeviceManagerRoarV3 *)self messageDispatcher];
  v5 = [HMDUserMessagePolicy userMessagePolicyWithHome:v3 userPrivilege:3 remoteAccessRequired:0];
  v6 = [HMDUserMessagePolicy userMessagePolicyWithHome:v3 userPrivilege:4 remoteAccessRequired:0];
  v7 = [HMDXPCMessagePolicy policyWithEntitlements:5];
  v25[0] = v7;
  v25[1] = v5;
  v8 = [HMDConfigurationMessagePolicy policyWithOperationTypes:2];
  v25[2] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:3];
  [v4 registerForMessage:@"kResidentDeviceUpdateEnabledRequestKey" receiver:self policies:v9 selector:sel__handleResidentDeviceUpdateEnabled_];

  v10 = +[HMDRemoteMessagePolicy defaultPolicy];
  v11 = [HMDUserMessagePolicy userMessagePolicyWithHome:v3 userPrivilege:5 remoteAccessRequired:0];
  if (isInternalBuild())
  {
    v12 = [HMDXPCMessagePolicy policyWithEntitlements:5];
    v24[0] = v12;
    v24[1] = v11;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:2];
    [v4 registerForMessage:@"hm.prdisco" receiver:self policies:v13 selector:sel__handlePrimaryResidentDiscoveryXPCRequest_];
  }

  v14 = [(HMDResidentDeviceManagerRoarV3 *)self dataSource];
  v15 = [v14 isResidentCapable];

  if (v15)
  {
    v23[0] = v10;
    v23[1] = v11;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:2];
    [v4 registerForMessage:@"primaryResidentDiscovery" receiver:self policies:v16 selector:sel__handlePrimaryResidentDiscoveryRequest_];
  }

  v17 = *MEMORY[0x277CD05C0];
  v18 = [HMDXPCMessagePolicy policyWithEntitlements:5];
  v22[0] = v18;
  v22[1] = v6;
  v19 = [HMDConfigurationMessagePolicy policyWithOperationTypes:2];
  v22[2] = v19;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:3];
  [v4 registerForMessage:v17 receiver:self policies:v20 selector:sel_handleSetPreferredResidentSelectionMessage_];

  v21 = *MEMORY[0x277D85DE8];
}

- (void)configureWithHome:(id)a3 messageDispatcher:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__HMDResidentDeviceManagerRoarV3_configureWithHome_messageDispatcher___block_invoke;
  block[3] = &unk_27868A010;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, block);
}

uint64_t __70__HMDResidentDeviceManagerRoarV3_configureWithHome_messageDispatcher___block_invoke(id *a1)
{
  v52 = *MEMORY[0x277D85DE8];
  [a1[4] setHome:a1[5]];
  v2 = [a1[4] dataSource];
  v3 = [v2 logIdentifierForHome:a1[5]];
  v4 = a1[4];
  v5 = v4[11];
  v4[11] = v3;

  v6 = [a1[5] uuid];
  v7 = a1[4];
  v8 = v7[10];
  v7[10] = v6;

  v9 = objc_autoreleasePoolPush();
  v10 = a1[4];
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    isInternalBuild();
    v13 = HMFBooleanToString();
    v14 = [a1[4] dataSource];
    [v14 isResidentCapable];
    v15 = HMFBooleanToString();
    v46 = 138543874;
    v47 = v12;
    v48 = 2112;
    v49 = v13;
    v50 = 2112;
    v51 = v15;
    _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Configuring and registering for messages, isInternal: %@, isResidentEnabled: %@", &v46, 0x20u);
  }

  objc_autoreleasePoolPop(v9);
  v16 = [a1[4] dataSource];
  v17 = [v16 createBackingStoreForHome:a1[5]];
  v18 = a1[4];
  v19 = v18[20];
  v18[20] = v17;

  objc_storeStrong(a1[4] + 8, a1[6]);
  v20 = [a1[6] secureRemoteTransport];
  v21 = [v20 modernReachabilityObserver];
  [a1[4] setReachabilityObserver:v21];

  v22 = [a1[6] secureRemoteTransport];
  v23 = [v22 deviceMonitor];
  [a1[4] setDeviceMonitor:v23];

  [a1[4] _registerForMessages];
  [a1[4] _registerForNotifications];
  [a1[4] _startResidentSelectionManager];
  v24 = [a1[4] primaryDiscoveryManager];
  [v24 configureWithContext:a1[4]];

  if ([a1[4] homeSupportsResidentSelection])
  {
    v25 = [a1[4] dataSource];
    v26 = [v25 createResidentStatusChannelForHome:a1[5] queue:*(a1[4] + 2)];
    v27 = a1[4];
    v28 = v27[26];
    v27[26] = v26;

    v29 = [a1[4] statusChannel];
    [v29 addObserver:a1[4]];

    v30 = [HMDResidentStatusChannelManager alloc];
    v31 = [a1[4] statusChannel];
    v32 = [a1[4] queue];
    v33 = [a1[4] idsServerBag];
    v34 = [(HMDResidentStatusChannelManager *)v30 initWithResidentStatusChannel:v31 queue:v32 idsServerBag:v33];
    v35 = a1[4];
    v36 = v35[27];
    v35[27] = v34;

    v37 = [a1[4] residentStatusChannelManager];
    v38 = [a1[4] statusChannel];
    [v38 setManager:v37];

    v39 = [a1[4] residentStatusChannelManager];
    [v39 configure];
  }

  [a1[4] setPendingNotifyPrimaryChanged:0];
  v40 = [a1[4] dataSource];
  v41 = [v40 createResidentLocationHandlerForHome:a1[5] queue:*(a1[4] + 2) messageDispatcher:a1[6]];
  v42 = a1[4];
  v43 = v42[33];
  v42[33] = v41;

  result = [a1[4] _configureResidentSupported];
  v45 = *MEMORY[0x277D85DE8];
  return result;
}

- (HMDResidentDeviceManagerRoarV3)initWithDataSource:(id)a3 featuresDataSource:(id)a4
{
  v7 = a3;
  v8 = a4;
  v31.receiver = self;
  v31.super_class = HMDResidentDeviceManagerRoarV3;
  v9 = [(HMDResidentDeviceManagerRoarV3 *)&v31 init];
  if (v9)
  {
    v10 = HMFGetOSLogHandle();
    logger = v9->_logger;
    v9->_logger = v10;

    v12 = [v7 queue];
    queue = v9->_queue;
    v9->_queue = v12;

    objc_storeStrong(&v9->_dataSource, a3);
    objc_storeStrong(&v9->_featuresDataSource, a4);
    logIdentifier = v9->_logIdentifier;
    v9->_logIdentifier = @"<unconfigured>";

    messageTargetUUID = v9->_messageTargetUUID;
    v9->_messageTargetUUID = 0;

    v16 = [MEMORY[0x277CBEB58] set];
    residentDevices = v9->_residentDevices;
    v9->_residentDevices = v16;

    v18 = [v7 notificationCenter];
    notificationCenter = v9->_notificationCenter;
    v9->_notificationCenter = v18;

    v20 = [v7 appleAccountManager];
    appleAccountManager = v9->_appleAccountManager;
    v9->_appleAccountManager = v20;

    v9->_residentCapable = [v7 isResidentCapable];
    v22 = [v7 createPrimaryResidentDiscoveryManagerWithQueue:v9->_queue];
    primaryDiscoveryManager = v9->_primaryDiscoveryManager;
    v9->_primaryDiscoveryManager = v22;

    [(HMDPrimaryResidentDiscoveryManager *)v9->_primaryDiscoveryManager setDelegate:v9];
    v24 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    primaryDiscoveryRequesters = v9->_primaryDiscoveryRequesters;
    v9->_primaryDiscoveryRequesters = v24;

    v26 = [MEMORY[0x277D0F7C0] futureWithPromise:&v9->_firstPrimaryResidentDiscoveryAttemptCompletionPromise];
    firstPrimaryResidentDiscoveryAttemptCompletionFuture = v9->_firstPrimaryResidentDiscoveryAttemptCompletionFuture;
    v9->_firstPrimaryResidentDiscoveryAttemptCompletionFuture = v26;

    v9->_configuredStatusKitForResidentSelection = 0;
    v28 = [v7 userDefaults];
    userDefaults = v9->_userDefaults;
    v9->_userDefaults = v28;

    v9->_blockPrimaryTakeoverStartTime = -1.0;
  }

  return v9;
}

- (HMDResidentDeviceManagerRoarV3)init
{
  v3 = objc_alloc_init(HMDDefaultResidentDeviceManagerRoarV3DataSource);
  v4 = +[HMDFeaturesDataSource defaultDataSource];
  v5 = [(HMDResidentDeviceManagerRoarV3 *)self initWithDataSource:v3 featuresDataSource:v4];

  return v5;
}

void __45__HMDResidentDeviceManagerRoarV3_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v124;
  logCategory__hmf_once_v124 = v1;
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

@end