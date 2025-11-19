@interface HMDResidentDeviceManagerRoar
+ (id)logCategory;
+ (id)shortDescription;
- (BOOL)_updatePrimaryResidentGenerationID:(id)a3;
- (BOOL)allowExternalUpdateOfPrimaryResidentTo:(id)a3;
- (BOOL)hasAnyResident;
- (BOOL)hasTrustZoneCapableResident;
- (BOOL)isCurrentDeviceAvailableResident;
- (BOOL)isCurrentDevicePrimaryResident;
- (BOOL)isOwnerUser;
- (BOOL)isResidentAvailable;
- (BOOL)isResidentEnabled;
- (BOOL)isResidentSupported;
- (HMDDevice)confirmedPrimaryResidentDevice;
- (HMDHome)home;
- (HMDResidentDevice)primaryResidentDevice;
- (HMDResidentDeviceManagerDelegate)delegate;
- (HMDResidentDeviceManagerRoar)init;
- (HMDResidentDeviceManagerRoar)initWithDataSource:(id)a3;
- (NSArray)residentDevices;
- (NSUUID)primaryResidentGenerationID;
- (NSUUID)primaryResidentUUID;
- (id)descriptionWithPointer:(BOOL)a3;
- (id)dumpState;
- (id)foundNewPrimaryResident:(id)a3 generationID:(id)a4 selectionTimestamp:(id)a5 changeSource:(unint64_t)a6;
- (id)ourSelf;
- (id)residentDeviceForDevice:(id)a3;
- (id)residentDeviceWithIDSIdentifier:(id)a3;
- (id)residentDevicesSet;
- (id)residentDevicesWithIDSIdentifiers:(id)a3;
- (id)residentWithUUID:(id)a3;
- (id)shortDescription;
- (int64_t)atHomeLevel;
- (void)_addResidentDevice:(id)a3;
- (void)_checkPrimaryResidentDeviceRemoved:(id)a3 currentPrimary:(id)a4;
- (void)_configureResidentSupported;
- (void)_discoverPrimaryResidentForRequester:(id)a3;
- (void)_handleCloudResidentChange:(id)a3;
- (void)_handleCloudZoneReadyNotification:(id)a3;
- (void)_handlePrimaryResident:(id)a3 isReachable:(BOOL)a4;
- (void)_handlePrimaryResidentDiscoveryRequest:(id)a3;
- (void)_handlePrimaryResidentDiscoveryXPCRequest:(id)a3;
- (void)_handleReachabilityAfterPrimaryResidentChangedTo:(id)a3 previousPrimaryResident:(id)a4;
- (void)_handleRemoteDeviceIsNotReachable:(id)a3;
- (void)_handleRemoteDeviceIsReachable:(id)a3;
- (void)_handleResidentDeviceUpdateEnabled:(id)a3;
- (void)_handleResidentSelectionVersionDidChange:(id)a3;
- (void)_handleUpdatedPrimaryFromLeader:(id)a3;
- (void)_handleUpdatedPrimaryResidentDevice:(id)a3 previousPrimaryResident:(id)a4 generationID:(id)a5 changeSource:(unint64_t)a6;
- (void)_joinLocalMesh;
- (void)_notifyUpdatedGenerationIDWithPrimaryResident:(id)a3;
- (void)_registerForMessages;
- (void)_registerForNotifications;
- (void)_removeResidentDevice:(id)a3;
- (void)_run;
- (void)_sendResidentDeviceNotificationWithName:(id)a3 forResidentDevice:(id)a4;
- (void)_setupSessionWithPrimaryResidentDevice;
- (void)_startLocalNetworkElection;
- (void)_stopLocalNetworkElection;
- (void)_teardownSessionWithPrimaryResidentDevice;
- (void)_updatePrimaryResidentTransactionWithPrimaryResidentDevice:(id)a3;
- (void)_updateReachabilityFromWorkingStoreExceptResident:(id)a3;
- (void)_updateResidentAvailability:(BOOL)a3;
- (void)_updateResidentIDSReachability:(BOOL)a3 withUpdatedDevice:(id)a4;
- (void)_updateResidentReachabilityWithResidents:(id)a3;
- (void)accountOrDeviceDidUpdate:(id)a3;
- (void)addDataSource:(id)a3;
- (void)atHomeLevelChanged:(int64_t)a3;
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
- (void)invalidate;
- (void)modernTransportDeviceReachabilityObserverDidUpdate:(id)a3 isReachable:(BOOL)a4;
- (void)notifyClientsOfUpdatedResidentDevice:(id)a3;
- (void)notifyResidentAvailable:(BOOL)a3;
- (void)notifyUpdatedPrimaryResident:(id)a3 previousPrimaryResident:(id)a4;
- (void)primaryElectionAddOn:(id)a3 didElectPrimaryResident:(id)a4 confirmed:(BOOL)a5 electionLogEvent:(id)a6;
- (void)primaryElectionAddOn:(id)a3 didFailToElectWithError:(id)a4;
- (void)primaryElectionAddOn:(id)a3 didReceivePrimaryResidentUUIDFromLeader:(id)a4;
- (void)primaryElectionAddOn:(id)a3 didUpdateActiveNodes:(id)a4;
- (void)primaryElectionAddOn:(id)a3 didUpdateResidentDevice:(id)a4;
- (void)removeResidentDevice:(id)a3;
- (void)run;
- (void)sawGenerationID:(id)a3 forDevice:(id)a4;
- (void)setResidentSupported:(BOOL)a3;
- (void)transactionObjectRemoved:(id)a3 message:(id)a4;
- (void)transactionObjectUpdated:(id)a3 newValues:(id)a4 message:(id)a5;
- (void)updatePrimaryResidentWithUUID:(id)a3 actions:(id)a4;
- (void)updateResidentAvailability;
@end

@implementation HMDResidentDeviceManagerRoar

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

- (void)primaryElectionAddOn:(id)a3 didReceivePrimaryResidentUUIDFromLeader:(id)a4
{
  v6 = a4;
  v5 = [(HMDResidentDeviceManagerRoar *)self queue];
  dispatch_assert_queue_V2(v5);

  [(HMDResidentDeviceManagerRoar *)self _handleUpdatedPrimaryFromLeader:v6];
}

- (void)primaryElectionAddOn:(id)a3 didFailToElectWithError:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDResidentDeviceManagerRoar *)self queue];
  dispatch_assert_queue_V2(v8);

  v9 = objc_autoreleasePoolPush();
  v10 = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v12 = HMFGetLogIdentifier();
    v14 = 138543874;
    v15 = v12;
    v16 = 2112;
    v17 = v6;
    v18 = 2112;
    v19 = v7;
    _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_ERROR, "%{public}@Election %@ failed: %@", &v14, 0x20u);
  }

  objc_autoreleasePoolPop(v9);
  v13 = *MEMORY[0x277D85DE8];
}

- (void)primaryElectionAddOn:(id)a3 didUpdateActiveNodes:(id)a4
{
  v6 = a4;
  v5 = [(HMDResidentDeviceManagerRoar *)self queue];
  dispatch_assert_queue_V2(v5);

  [(HMDResidentDeviceManagerRoar *)self _updateResidentReachabilityWithResidents:v6];
}

- (void)primaryElectionAddOn:(id)a3 didUpdateResidentDevice:(id)a4
{
  v8 = a4;
  v5 = [(HMDResidentDeviceManagerRoar *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = [(HMDResidentDeviceManagerRoar *)self residentDevices];
  v7 = [v6 containsObject:v8];

  if ((v7 & 1) == 0)
  {
    [(HMDResidentDeviceManagerRoar *)self _addResidentDevice:v8];
  }

  [(HMDResidentDeviceManagerRoar *)self notifyClientsOfUpdatedResidentDevice:v8];
}

- (void)primaryElectionAddOn:(id)a3 didElectPrimaryResident:(id)a4 confirmed:(BOOL)a5 electionLogEvent:(id)a6
{
  v10 = a4;
  v7 = [(HMDResidentDeviceManagerRoar *)self queue];
  dispatch_assert_queue_V2(v7);

  if ([v10 isCurrentDevice])
  {
    [MEMORY[0x277CCAD78] UUID];
  }

  else
  {
    [(HMDResidentDeviceManagerRoar *)self primaryResidentGenerationID];
  }
  v8 = ;
  v9 = [(HMDResidentDeviceManagerRoar *)self primaryResidentDevice];
  [(HMDResidentDeviceManagerRoar *)self _handleUpdatedPrimaryResidentDevice:v10 previousPrimaryResident:v9 generationID:v8 changeSource:1];
}

- (void)_handleUpdatedPrimaryFromLeader:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDResidentDeviceManagerRoar *)self primaryResidentUUID];
  v6 = [v4 isEqual:v5];

  if ((v6 & 1) == 0)
  {
    v7 = [(HMDResidentDeviceManagerRoar *)self residentWithUUID:v4];
    v8 = [(HMDResidentDeviceManagerRoar *)self primaryResidentDevice];
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
        _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@Leader notified that we are the primary. Becoming the primary resident.", &v20, 0xCu);
      }

      objc_autoreleasePoolPop(v10);
      v15 = [MEMORY[0x277CCAD78] UUID];
      [(HMDResidentDeviceManagerRoar *)v11 _handleUpdatedPrimaryResidentDevice:v7 previousPrimaryResident:v8 generationID:v15 changeSource:2];
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
        _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@Leader notified a new primary resident in the ping notification: %{public}@. Current Primary: %{public}@. Kicking off a primary resident discovery", &v20, 0x20u);
      }

      objc_autoreleasePoolPop(v10);
      [(HMDResidentDeviceManagerRoar *)v11 _discoverPrimaryResidentForRequester:0];
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)_updateResidentReachabilityWithResidents:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  if ([(HMDResidentDeviceManagerRoar *)self isCurrentDeviceConfirmedPrimaryResident])
  {
    v5 = objc_autoreleasePoolPush();
    v6 = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      *buf = 138543618;
      v16 = v8;
      v17 = 2114;
      v18 = v4;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Processing resident reachability update: %{public}@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __73__HMDResidentDeviceManagerRoar__updateResidentReachabilityWithResidents___block_invoke;
    v14[3] = &unk_278685038;
    v14[4] = v6;
    [v4 hmf_enumerateWithAutoreleasePoolUsingBlock:v14];
    v9 = [(HMDResidentDeviceManagerRoar *)v6 residentDevicesSet];
    v10 = [v9 hmf_removedObjectsFromSet:v4];

    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __73__HMDResidentDeviceManagerRoar__updateResidentReachabilityWithResidents___block_invoke_2;
    v13[3] = &unk_278685038;
    v13[4] = v6;
    [v10 hmf_enumerateWithAutoreleasePoolUsingBlock:v13];
    v11 = [(HMDResidentDeviceManagerRoar *)v6 backingStore];
    [v11 updateReachabilityForResidents:v4];
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __73__HMDResidentDeviceManagerRoar__updateResidentReachabilityWithResidents___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([v3 isReachable] & 1) == 0)
  {
    [*(a1 + 32) _updateReachability:1 forResidentDevice:v3];
  }
}

void __73__HMDResidentDeviceManagerRoar__updateResidentReachabilityWithResidents___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isReachable])
  {
    [*(a1 + 32) _updateReachability:0 forResidentDevice:v3];
  }
}

- (void)_handleReachabilityAfterPrimaryResidentChangedTo:(id)a3 previousPrimaryResident:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    v12 = objc_autoreleasePoolPush();
    v13 = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier();
      v17 = 138543362;
      v18 = v15;
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, "%{public}@There is no primary resident. Marking all residents as unreachable", &v17, 0xCu);
    }

    objc_autoreleasePoolPop(v12);
    v11 = [(HMDResidentDeviceManagerRoar *)v13 residentDevices];
    [(HMDResidentDeviceManagerRoar *)v13 _updateReachability:0 forResidentDevices:v11];
    goto LABEL_7;
  }

  if ([v6 isCurrentDevice])
  {
    v8 = MEMORY[0x277CBEB58];
    v9 = [(HMDResidentDeviceManagerRoar *)self localNetworkElection];
    v10 = [v9 residentsInMesh];
    v11 = [v8 setWithSet:v10];

    [v11 addObject:v6];
    [(HMDResidentDeviceManagerRoar *)self _updateResidentReachabilityWithResidents:v11];
LABEL_7:
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_updatePrimaryResidentTransactionWithPrimaryResidentDevice:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 isCurrentDevice] && !-[HMDResidentDeviceManagerRoar hasActivePrimaryResidentTransaction](self, "hasActivePrimaryResidentTransaction"))
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
    v9 = [objc_alloc(MEMORY[0x277D0F880]) initWithName:@"com.apple.homed.primary-resident"];
    goto LABEL_11;
  }

  if (([v4 isCurrentDevice] & 1) == 0 && -[HMDResidentDeviceManagerRoar hasActivePrimaryResidentTransaction](self, "hasActivePrimaryResidentTransaction"))
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
    v9 = 0;
LABEL_11:
    primaryResidentTransaction = self->_primaryResidentTransaction;
    self->_primaryResidentTransaction = v9;
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_handleUpdatedPrimaryResidentDevice:(id)a3 previousPrimaryResident:(id)a4 generationID:(id)a5 changeSource:(unint64_t)a6
{
  v72 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v63 = a5;
  v12 = [v10 isCurrentDevice];
  if (v10)
  {
    v13 = [v10 isReachable];
  }

  else
  {
    v13 = 1;
  }

  if (!((v11 != 0) & v13 | (v10 == 0) | v12 & 1))
  {
    [(HMDResidentDeviceManagerRoar *)self _updateReachabilityFromWorkingStoreExceptResident:v10];
  }

  if (v13)
  {
    if (!v10)
    {
      v14 = objc_autoreleasePoolPush();
      v15 = self;
      v16 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v17 = HMFGetLogIdentifier();
        *buf = 138543362;
        v65 = v17;
        _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@There is no primary resident. Marking all residents as unreachable", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v14);
      v18 = [(HMDResidentDeviceManagerRoar *)v15 residentDevices];
      [(HMDResidentDeviceManagerRoar *)v15 _updateReachability:0 forResidentDevices:v18];
    }
  }

  else
  {
    v19 = objc_autoreleasePoolPush();
    v20 = self;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = HMFGetLogIdentifier();
      *buf = 138543362;
      v65 = v22;
      _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_INFO, "%{public}@Marking new primary resident as reachable", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v19);
    [(HMDResidentDeviceManagerRoar *)v20 _updateReachability:1 forResidentDevice:v10];
  }

  v23 = [v11 identifier];
  v24 = [v10 identifier];
  v25 = HMFEqualObjects();

  if (v25)
  {
    [(HMDResidentDeviceManagerRoar *)self _updatePrimaryResidentGenerationID:v63];
    goto LABEL_37;
  }

  v26 = objc_autoreleasePoolPush();
  v27 = self;
  v28 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    v29 = HMFGetLogIdentifier();
    v30 = v29;
    if (a6 - 1 > 6)
    {
      v31 = @"resident removed";
    }

    else
    {
      v31 = off_27867D278[a6 - 1];
    }

    *buf = 138544130;
    v65 = v29;
    v66 = 2112;
    v67 = v31;
    v68 = 2112;
    v69 = v11;
    v70 = 2112;
    v71 = v10;
    _os_log_impl(&dword_229538000, v28, OS_LOG_TYPE_DEFAULT, "%{public}@Updating primary resident due to %@, from %@ to %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v26);
  os_unfair_lock_lock_with_options();
  v32 = [v10 identifier];
  primaryResidentUUID = v27->_primaryResidentUUID;
  v27->_primaryResidentUUID = v32;

  primaryResidentGenerationID = v27->_primaryResidentGenerationID;
  v35 = HMFEqualObjects();
  if ((v35 & 1) == 0)
  {
    objc_storeStrong(&v27->_primaryResidentGenerationID, a5);
  }

  os_unfair_lock_unlock(&v27->_lock);
  if (![(HMDResidentDeviceManagerRoar *)v27 isActingAsResident])
  {
    if (v11)
    {
      v36 = [(HMDResidentDeviceManagerRoar *)v27 reachabilityObserver];
      v37 = [v11 device];
      v38 = [v37 deviceAddress];
      [v36 removeListener:v27 forDeviceAddress:v38];

      v39 = [(HMDResidentDeviceManagerRoar *)v27 deviceMonitor];
      v40 = [v11 device];
      [v39 stopMonitoringDevice:v40 forClient:v27];
    }

    if (v10)
    {
      v41 = [(HMDResidentDeviceManagerRoar *)v27 reachabilityObserver];
      v42 = [v10 device];
      v43 = [v42 deviceAddress];
      [v41 addListener:v27 forDeviceAddress:v43];

      v44 = [(HMDResidentDeviceManagerRoar *)v27 deviceMonitor];
      v45 = [v10 device];
      [v44 startMonitoringDevice:v45 withInitialReachability:0 forClient:v27];

      v46 = [(HMDResidentDeviceManagerRoar *)v27 deviceMonitor];
      v47 = [v46 unreachableDevices];
      v48 = [v10 device];
      -[HMDResidentDeviceManagerRoar _setResident:reachableOverIDS:andNotify:](v27, "_setResident:reachableOverIDS:andNotify:", v10, [v47 containsObject:v48] ^ 1, 0);
    }
  }

  [(HMDResidentDeviceManagerRoar *)v27 _updatePrimaryResidentTransactionWithPrimaryResidentDevice:v10];
  [(HMDResidentDeviceManagerRoar *)v27 notifyUpdatedPrimaryResident:v10 previousPrimaryResident:v11];
  if ((v35 & 1) == 0)
  {
    v49 = objc_autoreleasePoolPush();
    v50 = v27;
    v51 = HMFGetOSLogHandle();
    v52 = os_log_type_enabled(v51, OS_LOG_TYPE_INFO);
    if (v12)
    {
      if (v52)
      {
        v53 = HMFGetLogIdentifier();
        *buf = 138543618;
        v65 = v53;
        v66 = 2114;
        v67 = v63;
        _os_log_impl(&dword_229538000, v51, OS_LOG_TYPE_INFO, "%{public}@Using newly generated primaryResidentGenerationID = %{public}@", buf, 0x16u);
      }
    }

    else if (v52)
    {
      v54 = HMFGetLogIdentifier();
      *buf = 138543618;
      v65 = v54;
      v66 = 2114;
      v67 = v63;
      _os_log_impl(&dword_229538000, v51, OS_LOG_TYPE_INFO, "%{public}@Updating primaryResidentGenerationID = %{public}@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v49);
  }

  if ((v10 == 0) | v12 & 1)
  {
    [(HMDResidentDeviceManagerRoar *)v27 _teardownSessionWithPrimaryResidentDevice];
LABEL_37:
    if (!v10)
    {
      goto LABEL_42;
    }

    goto LABEL_40;
  }

  [(HMDResidentDeviceManagerRoar *)v27 _setupSessionWithPrimaryResidentDevice];
LABEL_40:
  v55 = [(HMDResidentDeviceManagerRoar *)self primaryDiscoveryManager];
  [v55 cancel];

  logger = self->_logger;
  if (os_signpost_enabled(logger))
  {
    v57 = logger;
    v58 = [v10 identifier];
    *buf = 138412290;
    v65 = v58;
    _os_signpost_emit_with_name_impl(&dword_229538000, v57, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "HH2ElectedPrimaryResident", "electedPrimaryResidentIdentifier=%{signpost.description:attribute}@ ", buf, 0xCu);
  }

LABEL_42:
  [(HMDResidentDeviceManagerRoar *)self _handleReachabilityAfterPrimaryResidentChangedTo:v10 previousPrimaryResident:v11];
  v59 = [v10 device];
  if (-[HMDResidentDeviceManagerRoar isCurrentDeviceConfirmedPrimaryResident](self, "isCurrentDeviceConfirmedPrimaryResident") && [v59 isCurrentDevice])
  {
    v60 = [(HMDResidentDeviceManagerRoar *)self backingStore];
    v61 = [(HMDResidentDeviceManagerRoar *)self availableResidentDevices];
    [v60 updateIdentifiersForAvailableResidentDevices:v61];
  }

  v62 = *MEMORY[0x277D85DE8];
}

- (void)_updateReachabilityFromWorkingStoreExceptResident:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDResidentDeviceManagerRoar *)self residentDevicesSet];
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
  v12 = [(HMDResidentDeviceManagerRoar *)v8 queue];
  v13 = [v11 initWithQueue:v12];

  v14 = [(HMDResidentDeviceManagerRoar *)v8 backingStore];
  v15 = [v14 residentsRequiringReachabilityUpdate:v6];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __82__HMDResidentDeviceManagerRoar__updateReachabilityFromWorkingStoreExceptResident___block_invoke;
  v18[3] = &unk_2786851F0;
  v18[4] = v8;
  v16 = [v15 inContext:v13 then:v18];

  v17 = *MEMORY[0x277D85DE8];
}

uint64_t __82__HMDResidentDeviceManagerRoar__updateReachabilityFromWorkingStoreExceptResident___block_invoke(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __82__HMDResidentDeviceManagerRoar__updateReachabilityFromWorkingStoreExceptResident___block_invoke_2;
  v3[3] = &unk_278685038;
  v3[4] = *(a1 + 32);
  [a2 hmf_enumerateWithAutoreleasePoolUsingBlock:v3];
  return 1;
}

void __82__HMDResidentDeviceManagerRoar__updateReachabilityFromWorkingStoreExceptResident___block_invoke_2(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 isReachable];
  v5 = objc_autoreleasePoolPush();
  v6 = *(a1 + 32);
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = HMFBooleanToString();
    v11 = 138543874;
    v12 = v8;
    v13 = 2112;
    v14 = v9;
    v15 = 2112;
    v16 = v3;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Updating resident reachability from database to %@ for: %@", &v11, 0x20u);
  }

  objc_autoreleasePoolPop(v5);
  [*(a1 + 32) _updateReachability:v4 ^ 1u forResidentDevice:v3];

  v10 = *MEMORY[0x277D85DE8];
}

- (int64_t)atHomeLevel
{
  WeakRetained = objc_loadWeakRetained(&self->_home);
  v3 = [WeakRetained atHomeLevel];

  return v3;
}

- (BOOL)isOwnerUser
{
  v2 = [(HMDResidentDeviceManagerRoar *)self home];
  v3 = [v2 isOwnerUser];

  return v3;
}

- (BOOL)isResidentEnabled
{
  v2 = [(HMDResidentDeviceManagerRoar *)self ourSelf];
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

- (id)dumpState
{
  v39 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = [(HMDResidentDeviceManagerRoar *)self localNetworkElection];

  if (v4)
  {
    v5 = [(HMDResidentDeviceManagerRoar *)self localNetworkElection];
    v6 = [v5 dumpState];
    [v3 setObject:v6 forKeyedSubscript:@"Election.Coordination"];
  }

  v7 = [(HMDResidentDeviceManagerRoar *)self home];
  v8 = MEMORY[0x277CCACA8];
  v32 = v7;
  v31 = [v7 uuid];
  v9 = [v31 UUIDString];
  [(HMDResidentDeviceManagerRoar *)self primaryResidentDevice];
  v11 = v10 = v3;
  v12 = [v11 device];
  v13 = [v12 identifier];
  v14 = [v13 UUIDString];
  [(HMDResidentDeviceManagerRoar *)self isResidentAvailable];
  v15 = HMFBooleanToString();
  [(HMDResidentDeviceManagerRoar *)self isResidentSupported];
  v16 = HMFBooleanToString();
  v17 = [v8 stringWithFormat:@"home: %@, primaryResidentDevice: %@ isResidentAvailable: %@, isResidentSupported: %@", v9, v14, v15, v16];
  v33 = v10;
  [v10 setObject:v17 forKeyedSubscript:@"State"];

  v18 = [MEMORY[0x277CBEB18] array];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v19 = [(HMDResidentDeviceManagerRoar *)self residentDevices];
  v20 = [v19 countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v35;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v35 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = [*(*(&v34 + 1) + 8 * i) dumpState];
        [v18 addObject:v24];
      }

      v21 = [v19 countByEnumeratingWithState:&v34 objects:v38 count:16];
    }

    while (v21);
  }

  [v33 setObject:v18 forKeyedSubscript:@"Residents"];
  v25 = [(HMDResidentDeviceManagerRoar *)self messageDispatcher];
  v26 = [v25 secureRemoteTransport];
  v27 = [v26 deviceMonitor];
  v28 = [v27 dumpState];
  [v33 setObject:v28 forKeyedSubscript:@"Remote Device Monitor"];

  v29 = *MEMORY[0x277D85DE8];

  return v33;
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

  v8 = [(HMDResidentDeviceManagerRoar *)self residentDevices];
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
  v5 = [(HMDResidentDeviceManagerRoar *)self messageTargetUUID];
  v6 = [v5 UUIDString];
  v7 = [v3 stringWithFormat:@"%@ %@", v4, v6];

  return v7;
}

- (void)_updateResidentIDSReachability:(BOOL)a3 withUpdatedDevice:(id)a4
{
  v6 = a4;
  if (![(HMDResidentDeviceManagerRoar *)self isActingAsResident])
  {
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __81__HMDResidentDeviceManagerRoar__updateResidentIDSReachability_withUpdatedDevice___block_invoke;
    block[3] = &unk_278688BD0;
    block[4] = self;
    v9 = v6;
    v10 = a3;
    dispatch_async(queue, block);
  }
}

void __81__HMDResidentDeviceManagerRoar__updateResidentIDSReachability_withUpdatedDevice___block_invoke(uint64_t a1)
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

- (void)_handleResidentSelectionVersionDidChange:(id)a3
{
  v4 = [(HMDResidentDeviceManagerRoar *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __73__HMDResidentDeviceManagerRoar__handleResidentSelectionVersionDidChange___block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(v4, block);
}

void __73__HMDResidentDeviceManagerRoar__handleResidentSelectionVersionDidChange___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) home];
  v3 = [v2 residentSelectionVersion];

  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = HMFGetLogIdentifier();
    [*(a1 + 32) isActingAsResident];
    v8 = HMFBooleanToString();
    v14 = 138543874;
    v15 = v7;
    v16 = 2112;
    v17 = v8;
    v18 = 2112;
    v19 = v3;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_DEBUG, "%{public}@Device is acting as resident %@, home's resident selection version changed to %@", &v14, 0x20u);
  }

  objc_autoreleasePoolPop(v4);
  if ([*(a1 + 32) isActingAsResident] && objc_msgSend(v3, "integerValue") >= 3)
  {
    v9 = objc_autoreleasePoolPush();
    v10 = *(a1 + 32);
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v14 = 138543618;
      v15 = v12;
      v16 = 2114;
      v17 = v3;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Exiting mesh since home's resident selection version changed to %{public}@", &v14, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
    [*(a1 + 32) _stopLocalNetworkElection];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_handleRemoteDeviceIsNotReachable:(id)a3
{
  v4 = [a3 object];
  [(HMDResidentDeviceManagerRoar *)self _updateResidentIDSReachability:0 withUpdatedDevice:v4];
}

- (void)_handleRemoteDeviceIsReachable:(id)a3
{
  v4 = [a3 object];
  [(HMDResidentDeviceManagerRoar *)self _updateResidentIDSReachability:1 withUpdatedDevice:v4];
}

- (void)modernTransportDeviceReachabilityObserverDidUpdate:(id)a3 isReachable:(BOOL)a4
{
  v6 = a3;
  if (![(HMDResidentDeviceManagerRoar *)self isActingAsResident])
  {
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __95__HMDResidentDeviceManagerRoar_modernTransportDeviceReachabilityObserverDidUpdate_isReachable___block_invoke;
    block[3] = &unk_278688BD0;
    block[4] = self;
    v9 = v6;
    v10 = a4;
    dispatch_async(queue, block);
  }
}

void __95__HMDResidentDeviceManagerRoar_modernTransportDeviceReachabilityObserverDidUpdate_isReachable___block_invoke(uint64_t a1)
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
  v6 = [(HMDResidentDeviceManagerRoar *)self queue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __82__HMDResidentDeviceManagerRoar_discoveryManager_didNotCompleteDiscoveryWithError___block_invoke;
  v8[3] = &unk_27868A750;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(v6, v8);
}

void __82__HMDResidentDeviceManagerRoar_discoveryManager_didNotCompleteDiscoveryWithError___block_invoke(uint64_t a1)
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
  v6 = [(HMDResidentDeviceManagerRoar *)self queue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __93__HMDResidentDeviceManagerRoar_discoveryManager_didCompleteInitialDiscoveryAttemptWithError___block_invoke;
  v8[3] = &unk_27868A750;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(v6, v8);
}

void __93__HMDResidentDeviceManagerRoar_discoveryManager_didCompleteInitialDiscoveryAttemptWithError___block_invoke(uint64_t a1)
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
  v12 = [(HMDResidentDeviceManagerRoar *)self queue];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __129__HMDResidentDeviceManagerRoar_discoveryManager_didCompleteDiscoveryWithPrimaryResidentDevice_primaryResidentGenerationID_error___block_invoke;
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

void __129__HMDResidentDeviceManagerRoar_discoveryManager_didCompleteDiscoveryWithPrimaryResidentDevice_primaryResidentGenerationID_error___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) primaryDiscoveryRequesters];
  v3 = [v2 copy];

  v4 = [*(a1 + 32) primaryDiscoveryRequesters];
  [v4 removeAllObjects];

  v5 = *(a1 + 40);
  if (v5)
  {
    [*(a1 + 32) handlePrimaryResidentDiscovered:v5 primaryResidentGenerationID:*(a1 + 48)];
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

    goto LABEL_10;
  }

  if (![(HMDResidentDeviceManagerRoar *)self isActingAsResident])
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

LABEL_10:

    objc_autoreleasePoolPop(v6);
    v12 = *MEMORY[0x277D85DE8];
    return;
  }

  v13 = [(HMDResidentDeviceManagerRoar *)self localNetworkElection];
  [v13 selectPrimaryResidentWithReason:7];
  v4 = *MEMORY[0x277D85DE8];
}

- (BOOL)allowExternalUpdateOfPrimaryResidentTo:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDResidentDeviceManagerRoar *)self residentDeviceForDevice:v4];
  if ([(HMDResidentDeviceManagerRoar *)self isCurrentDevicePrimaryResident])
  {
    v6 = objc_autoreleasePoolPush();
    v7 = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v10 = [v4 shortDescription];
      v16 = 138543618;
      v17 = v9;
      v18 = 2114;
      v19 = v10;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Request for external update of the primary resident to: %{public}@ received while we are the primary", &v16, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
  }

  v11 = [(HMDResidentDeviceManagerRoar *)self localNetworkElection];

  if (v11)
  {
    v12 = [(HMDResidentDeviceManagerRoar *)self localNetworkElection];
    v13 = [v12 allowExternalUpdateOfPrimaryResidentTo:v5];
  }

  else
  {
    v13 = 1;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

- (void)sawGenerationID:(id)a3 forDevice:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__HMDResidentDeviceManagerRoar_sawGenerationID_forDevice___block_invoke;
  block[3] = &unk_27868A010;
  block[4] = self;
  v12 = v7;
  v13 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_async(queue, block);
}

void __58__HMDResidentDeviceManagerRoar_sawGenerationID_forDevice___block_invoke(uint64_t a1)
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

- (id)foundNewPrimaryResident:(id)a3 generationID:(id)a4 selectionTimestamp:(id)a5 changeSource:(unint64_t)a6
{
  v9 = a3;
  v10 = a4;
  v11 = objc_alloc(MEMORY[0x277D0F7A8]);
  v12 = [(HMDResidentDeviceManagerRoar *)self queue];
  v13 = [v11 initWithQueue:v12];

  v14 = MEMORY[0x277D0F7C0];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __101__HMDResidentDeviceManagerRoar_foundNewPrimaryResident_generationID_selectionTimestamp_changeSource___block_invoke;
  v19[3] = &unk_27867D258;
  v19[4] = self;
  v20 = v9;
  v21 = v10;
  v22 = a6;
  v15 = v10;
  v16 = v9;
  v17 = [v14 inContext:v13 perform:v19];

  return v17;
}

uint64_t __101__HMDResidentDeviceManagerRoar_foundNewPrimaryResident_generationID_selectionTimestamp_changeSource___block_invoke(uint64_t a1)
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
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 272));
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
    if (![v14 allowExternalUpdateOfPrimaryResidentTo:*(a1 + 40)])
    {
      v16 = 1;
      goto LABEL_11;
    }

    v17 = *(a1 + 32);
    v15 = [v17 primaryResidentDevice];
    [v17 _handleUpdatedPrimaryResidentDevice:v2 previousPrimaryResident:v15 generationID:*(a1 + 48) changeSource:*(a1 + 56)];
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
  v7[2] = __59__HMDResidentDeviceManagerRoar_handleCurrentDeviceChanged___block_invoke;
  v7[3] = &unk_27868A750;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(queue, v7);
}

void __59__HMDResidentDeviceManagerRoar_handleCurrentDeviceChanged___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 objectForKeyedSubscript:@"HMDDeviceNotificationKey"];

  objc_opt_class();
  objc_opt_isKindOfClass();

  v4 = [*(a1 + 40) notificationCenter];
  [v4 removeObserver:*(a1 + 40) name:@"HMDDeviceUpdatedNotification" object:0];
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
    v6 = [(HMDResidentDeviceManagerRoar *)self residentDevices];
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
  v5 = [(HMDResidentDeviceManagerRoar *)self isCurrentDevicePrimaryResident];
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
    v11 = [(HMDResidentDeviceManagerRoar *)v7 currentResidentDevice];
    v12 = [v11 identifier];
    v13 = [v12 UUIDString];
    v22 = v13;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
    v15 = [v14 mutableCopy];

    v16 = [(HMDResidentDeviceManagerRoar *)v7 primaryResidentGenerationID];
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
  v9 = objc_alloc_init(HMDResidentDeviceManagerXPCDiscoveryRequester);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __74__HMDResidentDeviceManagerRoar__handlePrimaryResidentDiscoveryXPCRequest___block_invoke;
  v13[3] = &unk_278685108;
  v14 = v9;
  v15 = v6;
  v16 = v4;
  v10 = v4;
  v11 = v9;
  [(HMDResidentDeviceManagerXPCDiscoveryRequester *)v11 setBlock:v13];
  [(HMDResidentDeviceManagerRoar *)v6 _discoverPrimaryResidentForRequester:v11];

  v12 = *MEMORY[0x277D85DE8];
}

void __74__HMDResidentDeviceManagerRoar__handlePrimaryResidentDiscoveryXPCRequest___block_invoke(uint64_t a1, void *a2, void *a3)
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
    v8 = [(HMDResidentDeviceManagerRoar *)self residentDevices];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __92__HMDResidentDeviceManagerRoar_handlePrimaryResidentDiscovered_primaryResidentGenerationID___block_invoke;
    v17[3] = &unk_2786850E0;
    v9 = v6;
    v18 = v9;
    v10 = [v8 na_any:v17];

    if ((v10 & 1) == 0)
    {
      [(HMDResidentDeviceManagerRoar *)self _addResidentDevice:v9];
    }

    v11 = [(HMDResidentDeviceManagerRoar *)self primaryResidentDevice];
    [(HMDResidentDeviceManagerRoar *)self _handleUpdatedPrimaryResidentDevice:v9 previousPrimaryResident:v11 generationID:v7 changeSource:4];
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

uint64_t __92__HMDResidentDeviceManagerRoar_handlePrimaryResidentDiscovered_primaryResidentGenerationID___block_invoke(uint64_t a1, void *a2)
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
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v18 = 138543362;
    v19 = v8;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Running primary resident discovery", &v18, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [(HMDResidentDeviceManagerRoar *)v6 queue];
  dispatch_assert_queue_V2(v9);

  if (![(HMDResidentDeviceManagerRoar *)v6 isResidentSupported])
  {
    v10 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
    v11 = v4;
    v12 = v6;
    v13 = 0;
    v14 = v10;
    goto LABEL_7;
  }

  v10 = [(HMDResidentDeviceManagerRoar *)v6 primaryResidentDevice];
  if ([v10 isCurrentDevice])
  {
    v11 = v4;
    v12 = v6;
    v13 = v10;
    v14 = 0;
LABEL_7:
    [v11 residentDeviceManager:v12 didCompleteDiscoveryWithPrimaryResidentDevice:v13 error:v14];
    goto LABEL_11;
  }

  if (v4)
  {
    v15 = [(HMDResidentDeviceManagerRoar *)v6 primaryDiscoveryRequesters];
    [v15 addObject:v4];
  }

  v16 = [(HMDResidentDeviceManagerRoar *)v6 primaryDiscoveryManager];
  [v16 discoverPrimaryResident];

LABEL_11:
  v17 = *MEMORY[0x277D85DE8];
}

- (void)discoverPrimaryResidentForRequester:(id)a3
{
  v4 = a3;
  v5 = [(HMDResidentDeviceManagerRoar *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __68__HMDResidentDeviceManagerRoar_discoverPrimaryResidentForRequester___block_invoke;
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
  v7 = [(HMDResidentDeviceManagerRoar *)self queue];
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
    [(HMDResidentDeviceManagerRoar *)v9 _updateReachability:1 forResidentDevice:v6];
    [(HMDResidentDeviceManagerRoar *)v9 _updateReachabilityFromWorkingStoreExceptResident:v6];
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
    v14 = [(HMDResidentDeviceManagerRoar *)v9 residentDevices];
    [(HMDResidentDeviceManagerRoar *)v9 _updateReachability:0 forResidentDevices:v14];

    [(HMDResidentDeviceManagerRoar *)v9 _discoverPrimaryResidentForRequester:0];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_sendResidentDeviceNotificationWithName:(id)a3 forResidentDevice:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(self->_queue);
  v8 = [MEMORY[0x277CBEB38] dictionary];
  [v8 setObject:v7 forKeyedSubscript:@"HMDResidentDeviceManagerResidentDeviceNotificationKey"];
  v9 = [(HMDResidentDeviceManagerRoar *)self home];
  v10 = [v9 uuid];
  [v8 setObject:v10 forKeyedSubscript:@"HMDResidentDeviceManagerHomeUUIDNotificationKey"];

  v11 = objc_autoreleasePoolPush();
  v12 = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    v17 = 138543618;
    v18 = v14;
    v19 = 2114;
    v20 = v6;
    _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Notifying %{public}@", &v17, 0x16u);
  }

  objc_autoreleasePoolPop(v11);
  v15 = [(HMDResidentDeviceManagerRoar *)v12 notificationCenter];
  [v15 postNotificationName:v6 object:v12 userInfo:v8];

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_notifyUpdatedGenerationIDWithPrimaryResident:(id)a3
{
  queue = self->_queue;
  v5 = a3;
  dispatch_assert_queue_V2(queue);
  [(HMDResidentDeviceManagerRoar *)self _sendResidentDeviceNotificationWithName:@"HMDResidentDeviceManagerUpdatePrimaryResidentGenerationIDNotification" forResidentDevice:v5];
}

- (void)notifyUpdatedPrimaryResident:(id)a3 previousPrimaryResident:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __85__HMDResidentDeviceManagerRoar_notifyUpdatedPrimaryResident_previousPrimaryResident___block_invoke;
  block[3] = &unk_27868A010;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, block);
}

void __85__HMDResidentDeviceManagerRoar_notifyUpdatedPrimaryResident_previousPrimaryResident___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) _sendResidentDeviceNotificationWithName:@"HMDResidentDeviceManagerUpdatePrimaryResidentNotification" forResidentDevice:*(a1 + 40)];
  v2 = [*(a1 + 32) localNetworkElection];
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

- (void)notifyClientsOfUpdatedResidentDevice:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDResidentDeviceManagerRoar *)self residentDevices];
  v6 = [v5 containsObject:v4];

  if (v6)
  {
    queue = self->_queue;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __69__HMDResidentDeviceManagerRoar_notifyClientsOfUpdatedResidentDevice___block_invoke;
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

void __69__HMDResidentDeviceManagerRoar_notifyClientsOfUpdatedResidentDevice___block_invoke(uint64_t a1)
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
  v4[2] = __56__HMDResidentDeviceManagerRoar_notifyResidentAvailable___block_invoke;
  v4[3] = &unk_278688650;
  v4[4] = self;
  v5 = a3;
  dispatch_async(queue, v4);
}

void __56__HMDResidentDeviceManagerRoar_notifyResidentAvailable___block_invoke(uint64_t a1)
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
  v7[2] = __57__HMDResidentDeviceManagerRoar_accountOrDeviceDidUpdate___block_invoke;
  v7[3] = &unk_27868A750;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

uint64_t __57__HMDResidentDeviceManagerRoar_accountOrDeviceDidUpdate___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = [*(a1 + 40) name];
    v7 = [*(a1 + 32) isResidentSupported];
    v10 = 138543874;
    v11 = v5;
    v12 = 2114;
    v13 = v6;
    v14 = 1024;
    v15 = v7;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Handling notification: %{public}@. self.isResidentSupported: %d", &v10, 0x1Cu);
  }

  objc_autoreleasePoolPop(v2);
  result = [*(a1 + 32) _configureResidentSupported];
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)setResidentSupported:(BOOL)a3
{
  v3 = a3;
  v21 = *MEMORY[0x277D85DE8];
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = HMFBooleanToString();
    v17 = 138543618;
    v18 = v8;
    v19 = 2112;
    v20 = v9;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@ResidentSupported = %@", &v17, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  os_unfair_lock_lock_with_options();
  v6->_residentSupported = v3;
  os_unfair_lock_unlock(&v6->_lock);
  v10 = [(HMDResidentDeviceManagerRoar *)v6 notificationCenter];
  v11 = [(HMDResidentDeviceManagerRoar *)v6 appleAccountManager];
  if (v3)
  {
    [v10 removeObserver:v6 name:@"HMDAppleAccountManagerDeviceUpdatedNotification" object:v11];
  }

  else
  {
    [v10 removeObserver:v6 name:@"HMDAppleAccountManagerResolved" object:v11];

    v12 = [(HMDResidentDeviceManagerRoar *)v6 notificationCenter];
    v13 = [(HMDResidentDeviceManagerRoar *)v6 appleAccountManager];
    [v12 removeObserver:v6 name:@"HMDAppleAccountManagerDeviceUpdatedNotification" object:v13];

    v14 = [(HMDResidentDeviceManagerRoar *)v6 notificationCenter];
    v15 = [(HMDResidentDeviceManagerRoar *)v6 appleAccountManager];
    [v14 addObserver:v6 selector:sel_accountOrDeviceDidUpdate_ name:@"HMDAppleAccountManagerResolved" object:v15];

    v10 = [(HMDResidentDeviceManagerRoar *)v6 notificationCenter];
    v11 = [(HMDResidentDeviceManagerRoar *)v6 appleAccountManager];
    [v10 addObserver:v6 selector:sel_accountOrDeviceDidUpdate_ name:@"HMDAppleAccountManagerDeviceUpdatedNotification" object:v11];
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (BOOL)isResidentSupported
{
  os_unfair_lock_lock_with_options();
  residentSupported = self->_residentSupported;
  os_unfair_lock_unlock(&self->_lock);
  return residentSupported;
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
    v12 = [(HMDResidentDeviceManagerRoar *)v9 primaryResidentDevice];
    [(HMDResidentDeviceManagerRoar *)v9 _notifyUpdatedGenerationIDWithPrimaryResident:v12];
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
  v3 = [(HMDResidentDeviceManagerRoar *)self residentDevicesSet];
  v4 = [v3 hmf_isEmpty];

  if (!v4)
  {
    return 1;
  }

  v5 = [(HMDResidentDeviceManagerRoar *)self backingStore];
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
  v5 = [(HMDResidentDeviceManagerRoar *)self availableResidentDevices];
  if ([v5 count])
  {
    v3 = 1;
  }

  else
  {
    v3 = v3;
  }

  [(HMDResidentDeviceManagerRoar *)self setResidentAvailable:v3];
}

- (void)updateResidentAvailability
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__HMDResidentDeviceManagerRoar_updateResidentAvailability__block_invoke;
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
  v7[2] = __53__HMDResidentDeviceManagerRoar_removeResidentDevice___block_invoke;
  v7[3] = &unk_27868A750;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)_checkPrimaryResidentDeviceRemoved:(id)a3 currentPrimary:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(NSMutableSet *)self->_residentDevices count];
  v9 = [v7 isEqual:v6];
  v10 = [(HMDResidentDeviceManagerRoar *)self primaryResidentDevice];

  v11 = objc_autoreleasePoolPush();
  v12 = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    v17 = 138543618;
    v18 = v14;
    v19 = 2048;
    v20 = v8;
    _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Removed residentDevice is current device. There are %lu residents remaining.", &v17, 0x16u);
  }

  objc_autoreleasePoolPop(v11);
  if (v10)
  {
    v15 = 0;
  }

  else
  {
    v15 = v9;
  }

  if (v15 == 1)
  {
    [(HMDResidentDeviceManagerRoar *)v12 _handleUpdatedPrimaryResidentDevice:0 previousPrimaryResident:v7 generationID:0 changeSource:0];
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_removeResidentDevice:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(HMDResidentDeviceManagerRoar *)self primaryResidentDevice];
    os_unfair_lock_lock_with_options();
    if ([(NSMutableSet *)self->_residentDevices containsObject:v4])
    {
      [(NSMutableSet *)self->_residentDevices removeObject:v4];
      os_unfair_lock_unlock(&self->_lock);
      queue = self->_queue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __54__HMDResidentDeviceManagerRoar__removeResidentDevice___block_invoke;
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

void __54__HMDResidentDeviceManagerRoar__removeResidentDevice___block_invoke(uint64_t a1)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) delegate];
  [v2 residentDeviceManagerDidUpdateResidents:*(a1 + 32)];

  [*(a1 + 32) _sendResidentDeviceNotificationWithName:@"HMDResidentDeviceManagerRemoveResidentNotification" forResidentDevice:*(a1 + 40)];
  v3 = [*(a1 + 32) home];
  [v3 reEvaluateHomeHubState];
  [v3 evaluateResidentUpdate];
  [v3 evaluateBulletinNotificationsSupported];
  [*(a1 + 32) _updateResidentAvailability:0];
  v4 = [*(a1 + 40) device];
  v8[0] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  [v3 disableNotificationsForDevices:v5];

  [*(a1 + 32) _checkPrimaryResidentDeviceRemoved:*(a1 + 40) currentPrimary:*(a1 + 48)];
  if ([*(a1 + 40) isCurrentDevice])
  {
    v6 = [*(a1 + 32) localNetworkElection];
    [v6 stop];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_addResidentDevice:(id)a3
{
  v46 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDResidentDeviceManagerRoar *)self queue];
  dispatch_assert_queue_V2(v5);

  os_unfair_lock_lock_with_options();
  v6 = [(NSMutableSet *)self->_residentDevices member:v4];
  if (v6)
  {

    os_unfair_lock_unlock(&self->_lock);
    goto LABEL_31;
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
  v11 = [(HMDResidentDeviceManagerRoar *)v8 home];
  [v4 configureWithHome:v11];
  v12 = [(HMDResidentDeviceManagerRoar *)v8 primaryResidentUUID];
  v13 = v12 == 0;

  if (v13)
  {
    [v4 setReachable:0];
  }

  if ([(HMDResidentDeviceManagerRoar *)v8 isCurrentDeviceConfirmedPrimaryResident])
  {
    if (([v4 isReachable] & 1) == 0)
    {
      v14 = [(HMDResidentDeviceManagerRoar *)v8 localNetworkElection];
      v15 = [v14 residentIsPartOfTheCurrentMesh:v4];

      if (v15)
      {
        [(HMDResidentDeviceManagerRoar *)v8 _updateReachability:1 forResidentDevice:v4];
        v16 = [(HMDResidentDeviceManagerRoar *)v8 backingStore];
        v17 = [MEMORY[0x277CBEB98] setWithObject:v4];
        [v16 updateReachabilityForResidents:v17];
      }
    }
  }

  [(HMDResidentDeviceManagerRoar *)v8 _updateResidentAvailability:0];
  v18 = [(HMDResidentDeviceManagerRoar *)v8 delegate];
  [v18 residentDeviceManagerDidUpdateResidents:v8];

  [(HMDResidentDeviceManagerRoar *)v8 _sendResidentDeviceNotificationWithName:@"HMDResidentDeviceManagerAddResidentNotification" forResidentDevice:v4];
  [v11 reEvaluateHomeHubState];
  [v11 evaluateBulletinNotificationsSupported];
  v19 = [(HMDResidentDeviceManagerRoar *)v8 primaryResidentUUID];
  v20 = [v4 identifier];
  if ([v19 isEqual:v20])
  {
  }

  else
  {
    v21 = [(HMDResidentDeviceManagerRoar *)v8 primaryResidentDevice];
    v22 = [v21 device];
    if (![v22 isCurrentDevice])
    {

      goto LABEL_18;
    }

    v23 = [v4 isEnabled];

    if (!v23)
    {
      goto LABEL_19;
    }
  }

  v19 = [v4 device];
  v41 = v19;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:&v41 count:1];
  [v11 enableNotificationsForDevices:v20];
LABEL_18:

LABEL_19:
  v24 = [v4 device];
  if ([v24 isCurrentDevice])
  {
    v25 = [v11 homeManager];
    v26 = [v25 currentAccessorySetupMetricDispatcher];
    [v26 markSetupBeginStage:14 error:0];
    v27 = objc_autoreleasePoolPush();
    v28 = v8;
    v29 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
    {
      v30 = HMFGetLogIdentifier();
      v31 = [v11 residentSelectionVersion];
      *buf = 138543618;
      v43 = v30;
      v44 = 2114;
      v45 = v31;
      _os_log_impl(&dword_229538000, v29, OS_LOG_TYPE_INFO, "%{public}@Current device added as resident to home with resident selection version %{public}@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v27);
    v32 = [v11 residentSelectionVersion];
    v33 = [v32 integerValue] > 2;

    v34 = objc_autoreleasePoolPush();
    v35 = v28;
    v36 = HMFGetOSLogHandle();
    v37 = os_log_type_enabled(v36, OS_LOG_TYPE_INFO);
    if (v33)
    {
      if (v37)
      {
        v38 = HMFGetLogIdentifier();
        *buf = 138543362;
        v43 = v38;
        _os_log_impl(&dword_229538000, v36, OS_LOG_TYPE_INFO, "%{public}@Backing off from joining mesh since home's resident selection version is higher", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v34);
    }

    else
    {
      if (v37)
      {
        v39 = HMFGetLogIdentifier();
        *buf = 138543362;
        v43 = v39;
        _os_log_impl(&dword_229538000, v36, OS_LOG_TYPE_INFO, "%{public}@Will attempt to join mesh.", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v34);
      [(HMDResidentDeviceManagerRoar *)v35 _joinLocalMesh];
    }
  }

LABEL_31:
  v40 = *MEMORY[0x277D85DE8];
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
  v2 = [(HMDResidentDeviceManagerRoar *)self primaryResidentDevice];
  v3 = [v2 device];

  return v3;
}

- (BOOL)isCurrentDevicePrimaryResident
{
  v2 = [(HMDResidentDeviceManagerRoar *)self primaryResidentDevice];
  v3 = [v2 isCurrentDevice];

  return v3;
}

- (BOOL)isCurrentDeviceAvailableResident
{
  v2 = [(HMDResidentDeviceManagerRoar *)self ourSelf];
  v3 = [v2 isEnabled];

  return v3;
}

- (id)residentDevicesSet
{
  os_unfair_lock_lock_with_options();
  v3 = [(NSMutableSet *)self->_residentDevices copy];
  os_unfair_lock_unlock(&self->_lock);

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
  v2 = [(HMDResidentDeviceManagerRoar *)self residentDevices];
  v3 = [v2 hmf_objectPassingTest:&__block_literal_global_178836];

  return v3;
}

uint64_t __39__HMDResidentDeviceManagerRoar_ourSelf__block_invoke(uint64_t a1, void *a2)
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
  v5 = [(HMDResidentDeviceManagerRoar *)self residentDevices];
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

- (NSUUID)primaryResidentUUID
{
  os_unfair_lock_lock_with_options();
  v3 = self->_primaryResidentUUID;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (HMDResidentDevice)primaryResidentDevice
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = [(HMDResidentDeviceManagerRoar *)self residentDevicesSet];
  v4 = [(HMDResidentDeviceManagerRoar *)self primaryResidentUUID];
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

- (void)_teardownSessionWithPrimaryResidentDevice
{
  v4 = [(HMDResidentDeviceManagerRoar *)self messageDispatcher];
  v3 = [(HMDResidentDeviceManagerRoar *)self home];
  [v4 setRemoteAccessDevice:0 forHome:v3];
}

- (void)_setupSessionWithPrimaryResidentDevice
{
  v3 = [(HMDResidentDeviceManagerRoar *)self primaryResidentDevice];
  if (v3)
  {
    v7 = v3;
    v4 = [(HMDResidentDeviceManagerRoar *)self messageDispatcher];
    v5 = [v7 device];
    v6 = [(HMDResidentDeviceManagerRoar *)self home];
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
  v7 = [(HMDResidentDeviceManagerRoar *)v4 home];
  v8 = [(HMDResidentDeviceManagerRoar *)v4 primaryResidentDevice];
  if (v8 && [(HMDResidentDeviceManagerRoar *)v4 isResidentSupported])
  {
    [v7 subscribeForNotificationsFromRemoteGateway];
  }

  else
  {
    v9 = [(HMDResidentDeviceManagerRoar *)v4 messageDispatcher];
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
      [(HMDResidentDeviceManagerRoar *)v14 _teardownSessionWithPrimaryResidentDevice];
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)run
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__HMDResidentDeviceManagerRoar_run__block_invoke;
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
  v4 = [(HMDResidentDeviceManagerRoar *)self residentDevices];
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
  v5 = [(HMDResidentDeviceManagerRoar *)self appleAccountManager];
  v6 = [v5 device];

  v7 = [(HMDResidentDeviceManagerRoar *)self backingStore];
  v8 = [(HMDResidentDeviceManagerRoar *)self residentDevicesSet];
  v9 = [v7 handleCloudResidentChange:v4 currentResidents:v8 isCurrentDevicePrimaryResident:-[HMDResidentDeviceManagerRoar isCurrentDevicePrimaryResident](self currentDevice:{"isCurrentDevicePrimaryResident"), v6}];

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
  v15[2] = __59__HMDResidentDeviceManagerRoar__handleCloudResidentChange___block_invoke;
  v15[3] = &unk_27868A750;
  v15[4] = self;
  v16 = v9;
  dispatch_async(queue, v15);

LABEL_6:
}

void __59__HMDResidentDeviceManagerRoar__handleCloudResidentChange___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
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
    v19 = v5;
    v20 = 2048;
    v21 = v7;
    v22 = 2048;
    v23 = v9;
    v24 = 2048;
    v25 = [v10 count];
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Residents changed, added: %lu; removed: %lu; reachability: %lu", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v2);
  v11 = [*(a1 + 40) deletedResidentDevices];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __59__HMDResidentDeviceManagerRoar__handleCloudResidentChange___block_invoke_148;
  v17[3] = &unk_278685038;
  v17[4] = *(a1 + 32);
  [v11 hmf_enumerateWithAutoreleasePoolUsingBlock:v17];

  v12 = [*(a1 + 40) addedResidentDevices];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __59__HMDResidentDeviceManagerRoar__handleCloudResidentChange___block_invoke_150;
  v16[3] = &unk_278685038;
  v16[4] = *(a1 + 32);
  [v12 hmf_enumerateWithAutoreleasePoolUsingBlock:v16];

  v13 = [*(a1 + 40) reachabilityUpdates];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __59__HMDResidentDeviceManagerRoar__handleCloudResidentChange___block_invoke_151;
  v15[3] = &unk_278685038;
  v15[4] = *(a1 + 32);
  [v13 hmf_enumerateWithAutoreleasePoolUsingBlock:v15];

  v14 = *MEMORY[0x277D85DE8];
}

void __59__HMDResidentDeviceManagerRoar__handleCloudResidentChange___block_invoke_148(uint64_t a1, void *a2)
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

void __59__HMDResidentDeviceManagerRoar__handleCloudResidentChange___block_invoke_150(uint64_t a1, void *a2)
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

void __59__HMDResidentDeviceManagerRoar__handleCloudResidentChange___block_invoke_151(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 isReachable];
  v5 = objc_autoreleasePoolPush();
  v6 = *(a1 + 32);
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = [v3 name];
    v10 = [v3 identifier];
    v11 = HMFBooleanToString();
    v13 = 138544130;
    v14 = v8;
    v15 = 2112;
    v16 = v9;
    v17 = 2114;
    v18 = v10;
    v19 = 2112;
    v20 = v11;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Cloud updated resident reachability: %@ (%{public}@) -> %@", &v13, 0x2Au);
  }

  objc_autoreleasePoolPop(v5);
  [*(a1 + 32) _updateReachability:v4 ^ 1u forResidentDevice:v3];

  v12 = *MEMORY[0x277D85DE8];
}

- (id)residentDevicesWithIDSIdentifiers:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDResidentDeviceManagerRoar *)self availableResidentDevices];
  v6 = [MEMORY[0x277CBEB18] array];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = v4;
  v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        v17[0] = MEMORY[0x277D85DD0];
        v17[1] = 3221225472;
        v17[2] = __66__HMDResidentDeviceManagerRoar_residentDevicesWithIDSIdentifiers___block_invoke;
        v17[3] = &unk_2786850E0;
        v17[4] = v12;
        v13 = [v5 na_firstObjectPassingTest:v17];
        if (v13)
        {
          [v6 addObject:v13];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v9);
  }

  v14 = [v6 copy];
  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

uint64_t __66__HMDResidentDeviceManagerRoar_residentDevicesWithIDSIdentifiers___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 device];
  v4 = [v3 idsIdentifier];
  v5 = [v4 isEqual:*(a1 + 32)];

  return v5;
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

- (void)_joinLocalMesh
{
  v39[3] = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  v3 = [(HMDResidentDeviceManagerRoar *)self home];
  v27 = [v3 homeManager];

  v4 = [v27 currentAccessorySetupMetricDispatcher];
  v5 = objc_alloc(MEMORY[0x277D0F7A8]);
  v6 = [(HMDResidentDeviceManagerRoar *)self queue];
  v7 = [v5 initWithQueue:v6];

  v8 = [(HMDResidentDeviceManagerRoar *)self appleAccountManager];
  v9 = [v8 idsDevicesUpdated];

  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __46__HMDResidentDeviceManagerRoar__joinLocalMesh__block_invoke;
  v37[3] = &unk_278687050;
  v37[4] = self;
  v10 = v4;
  v38 = v10;
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __46__HMDResidentDeviceManagerRoar__joinLocalMesh__block_invoke_139;
  v36[3] = &unk_278689CD8;
  v36[4] = self;
  v11 = [v9 inContext:v7 then:v37 orRecover:v36];
  v12 = [(HMDResidentDeviceManagerRoar *)self dataSource];
  v13 = [v12 firstCloudKitImportFuture];

  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __46__HMDResidentDeviceManagerRoar__joinLocalMesh__block_invoke_141;
  v34[3] = &unk_278687050;
  v34[4] = self;
  v14 = v10;
  v35 = v14;
  v15 = [v13 inContext:v7 then:v34];
  v16 = [(HMDResidentDeviceManagerRoar *)self messageDispatcher];
  v17 = [v16 secureRemoteTransport];
  v18 = [v17 startFuture];

  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __46__HMDResidentDeviceManagerRoar__joinLocalMesh__block_invoke_142;
  v32[3] = &unk_278687050;
  v32[4] = self;
  v19 = v14;
  v33 = v19;
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __46__HMDResidentDeviceManagerRoar__joinLocalMesh__block_invoke_143;
  v31[3] = &unk_278689CD8;
  v31[4] = self;
  v20 = [v18 inContext:v7 then:v32 orRecover:v31];
  v21 = MEMORY[0x277D0F7C0];
  v39[0] = v18;
  v39[1] = v13;
  v39[2] = v9;
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:3];
  v23 = [v21 allSettled:v22];

  v28[4] = self;
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __46__HMDResidentDeviceManagerRoar__joinLocalMesh__block_invoke_144;
  v29[3] = &unk_278687050;
  v29[4] = self;
  v30 = v19;
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __46__HMDResidentDeviceManagerRoar__joinLocalMesh__block_invoke_145;
  v28[3] = &unk_278689CD8;
  v24 = v19;
  v25 = [v23 inContext:v7 then:v29 orRecover:v28];

  v26 = *MEMORY[0x277D85DE8];
}

uint64_t __46__HMDResidentDeviceManagerRoar__joinLocalMesh__block_invoke(uint64_t a1, void *a2)
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

uint64_t __46__HMDResidentDeviceManagerRoar__joinLocalMesh__block_invoke_139(uint64_t a1, void *a2)
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

uint64_t __46__HMDResidentDeviceManagerRoar__joinLocalMesh__block_invoke_141(uint64_t a1, void *a2)
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

uint64_t __46__HMDResidentDeviceManagerRoar__joinLocalMesh__block_invoke_142(uint64_t a1, void *a2)
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

uint64_t __46__HMDResidentDeviceManagerRoar__joinLocalMesh__block_invoke_143(uint64_t a1, void *a2)
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

uint64_t __46__HMDResidentDeviceManagerRoar__joinLocalMesh__block_invoke_144(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
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
      v23 = 138543362;
      v24 = v10;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_ERROR, "%{public}@Operating in bad CDP state. Not joining the mesh", &v23, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
  }

  else if (([*(a1 + 32) isActingAsResident] & 1) == 0)
  {
    v11 = objc_autoreleasePoolPush();
    v12 = *(a1 + 32);
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      v23 = 138543362;
      v24 = v14;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Met conditions required to join mesh, starting join.", &v23, 0xCu);
    }

    objc_autoreleasePoolPop(v11);
    [*(a1 + 40) markPrimaryResidentElectionJoinMesh];
    [*(a1 + 32) setActingAsResident:1];
    [*(a1 + 32) _startLocalNetworkElection];
    v15 = [*(a1 + 32) primaryResidentDevice];
    if (v15)
    {
      v16 = [*(a1 + 32) reachabilityObserver];
      v17 = *(a1 + 32);
      v18 = [v15 messageAddress];
      [v16 removeListener:v17 forDeviceAddress:v18];

      v19 = [*(a1 + 32) deviceMonitor];
      v20 = [v15 device];
      [v19 stopMonitoringDevice:v20 forClient:*(a1 + 32)];
    }
  }

  v21 = *MEMORY[0x277D85DE8];
  return 1;
}

uint64_t __46__HMDResidentDeviceManagerRoar__joinLocalMesh__block_invoke_145(uint64_t a1, void *a2)
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

- (void)invalidate
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__HMDResidentDeviceManagerRoar_invalidate__block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(queue, block);
}

uint64_t __42__HMDResidentDeviceManagerRoar_invalidate__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) notificationCenter];
  [v2 removeObserver:*(a1 + 32)];

  v3 = *(a1 + 32);

  return [v3 _stopLocalNetworkElection];
}

- (void)_configureResidentSupported
{
  v26 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  v3 = [(HMDResidentDeviceManagerRoar *)self appleAccountManager];
  v4 = [v3 device];

  if (v4)
  {
    if (![(HMDResidentDeviceManagerRoar *)self isResidentSupported])
    {
      v21 = 0;
      v5 = [(HMDResidentDeviceManagerRoar *)self backingStore];
      v6 = [v5 findResidents:v4 outHasResidents:&v21];

      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __59__HMDResidentDeviceManagerRoar__configureResidentSupported__block_invoke;
      v20[3] = &unk_278684FC0;
      v20[4] = self;
      [v6 hmf_enumerateWithAutoreleasePoolUsingBlock:v20];
      v7 = objc_autoreleasePoolPush();
      v8 = self;
      v9 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = HMFGetLogIdentifier();
        v11 = [(HMDResidentDeviceManagerRoar *)v8 residentDevices];
        *buf = 138543618;
        v23 = v10;
        v24 = 2114;
        v25 = v11;
        _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Initial resident devices: %{public}@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v7);
      v12 = [(HMDResidentDeviceManagerRoar *)v8 residentDevices];
      v13 = [v12 count] == 0;
      v14 = v13 & v21;

      if (v14 == 1)
      {
        v15 = objc_autoreleasePoolPush();
        v16 = v8;
        v17 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          v18 = HMFGetLogIdentifier();
          *buf = 138543362;
          v23 = v18;
          _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@No HMDResidentDevice but has MKFResident models, force update", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v15);
      }

      [(HMDResidentDeviceManagerRoar *)v8 setResidentSupported:1];
      [(HMDResidentDeviceManagerRoar *)v8 _updateResidentAvailability:v14];
    }
  }

  else
  {
    [(HMDResidentDeviceManagerRoar *)self setResidentSupported:0];
  }

  v19 = *MEMORY[0x277D85DE8];
}

void __59__HMDResidentDeviceManagerRoar__configureResidentSupported__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((v3 + 272));
  [v5 configureWithHome:WeakRetained];

  [*(a1 + 32) _addResidentDevice:v5];
}

- (void)_stopLocalNetworkElection
{
  [(HMDResidentDeviceManagerRoar *)self setActingAsResident:0];
  v3 = [(HMDResidentDeviceManagerRoar *)self localNetworkElection];
  [v3 stop];

  [(HMDResidentDeviceManagerRoar *)self setLocalNetworkElection:0];
}

- (void)_startLocalNetworkElection
{
  v3 = [(HMDResidentDeviceManagerRoar *)self dataSource];
  v4 = [v3 createElectionAddOnWithContext:self];
  [(HMDResidentDeviceManagerRoar *)self setLocalNetworkElection:v4];

  v5 = [(HMDResidentDeviceManagerRoar *)self localNetworkElection];
  [v5 setDelegate:self];

  v6 = [(HMDResidentDeviceManagerRoar *)self localNetworkElection];
  [v6 registerForMessages];

  v7 = [(HMDResidentDeviceManagerRoar *)self localNetworkElection];
  [v7 start];
}

- (void)_registerForNotifications
{
  v3 = [(HMDResidentDeviceManagerRoar *)self notificationCenter];
  v4 = [(HMDResidentDeviceManagerRoar *)self backingStore];
  v5 = [v4 cloudChangeUpdateNotificationName];
  [v3 addObserver:self selector:sel__handleCloudResidentChange_ name:v5 object:0];

  v6 = [(HMDResidentDeviceManagerRoar *)self notificationCenter];
  [v6 addObserver:self selector:sel__handleRemoteDeviceIsReachable_ name:@"HMDRemoteDeviceIsReachableNotification" object:0];

  v7 = [(HMDResidentDeviceManagerRoar *)self notificationCenter];
  [v7 addObserver:self selector:sel__handleRemoteDeviceIsNotReachable_ name:@"HMDRemoteDeviceIsNotReachableNotification" object:0];

  v9 = [(HMDResidentDeviceManagerRoar *)self notificationCenter];
  v8 = [(HMDResidentDeviceManagerRoar *)self home];
  [v9 addObserver:self selector:sel__handleResidentSelectionVersionDidChange_ name:@"HMDHomeResidentSelectionVersionDidChangeNotification" object:v8];
}

- (void)_registerForMessages
{
  v19[3] = *MEMORY[0x277D85DE8];
  v3 = [(HMDResidentDeviceManagerRoar *)self home];
  v4 = [(HMDResidentDeviceManagerRoar *)self messageDispatcher];
  v5 = [HMDUserMessagePolicy userMessagePolicyWithHome:v3 userPrivilege:3 remoteAccessRequired:0];
  v6 = [HMDXPCMessagePolicy policyWithEntitlements:5];
  v19[0] = v6;
  v19[1] = v5;
  v7 = [HMDConfigurationMessagePolicy policyWithOperationTypes:2];
  v19[2] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:3];
  [v4 registerForMessage:@"kResidentDeviceUpdateEnabledRequestKey" receiver:self policies:v8 selector:sel__handleResidentDeviceUpdateEnabled_];

  v9 = +[HMDRemoteMessagePolicy defaultPolicy];
  v10 = [HMDUserMessagePolicy userMessagePolicyWithHome:v3 userPrivilege:5 remoteAccessRequired:0];
  if (isInternalBuild())
  {
    v11 = [HMDXPCMessagePolicy policyWithEntitlements:5];
    v18[0] = v11;
    v18[1] = v10;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:2];
    [v4 registerForMessage:@"hm.prdisco" receiver:self policies:v12 selector:sel__handlePrimaryResidentDiscoveryXPCRequest_];
  }

  v13 = [(HMDResidentDeviceManagerRoar *)self dataSource];
  v14 = [v13 isResidentCapable];

  if (v14)
  {
    v17[0] = v9;
    v17[1] = v10;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:2];
    [v4 registerForMessage:@"primaryResidentDiscovery" receiver:self policies:v15 selector:sel__handlePrimaryResidentDiscoveryRequest_];
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)configureWithHome:(id)a3 messageDispatcher:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__HMDResidentDeviceManagerRoar_configureWithHome_messageDispatcher___block_invoke;
  block[3] = &unk_27868A010;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, block);
}

uint64_t __68__HMDResidentDeviceManagerRoar_configureWithHome_messageDispatcher___block_invoke(id *a1)
{
  v33 = *MEMORY[0x277D85DE8];
  [a1[4] setHome:a1[5]];
  v2 = [a1[4] dataSource];
  v3 = [v2 logIdentifierForHome:a1[5]];
  v4 = a1[4];
  v5 = v4[12];
  v4[12] = v3;

  v6 = [a1[5] uuid];
  v7 = a1[4];
  v8 = v7[11];
  v7[11] = v6;

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
    v27 = 138543874;
    v28 = v12;
    v29 = 2112;
    v30 = v13;
    v31 = 2112;
    v32 = v15;
    _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Configuring and registering for messages, isInternal: %@, isResidentEnabled: %@", &v27, 0x20u);
  }

  objc_autoreleasePoolPop(v9);
  v16 = [a1[4] dataSource];
  v17 = [v16 createBackingStoreForHome:a1[5]];
  v18 = a1[4];
  v19 = v18[28];
  v18[28] = v17;

  objc_storeStrong(a1[4] + 8, a1[6]);
  v20 = [a1[6] secureRemoteTransport];
  v21 = [v20 modernReachabilityObserver];
  [a1[4] setReachabilityObserver:v21];

  v22 = [a1[6] secureRemoteTransport];
  v23 = [v22 deviceMonitor];
  [a1[4] setDeviceMonitor:v23];

  [a1[4] _registerForMessages];
  [a1[4] _registerForNotifications];
  v24 = [a1[4] primaryDiscoveryManager];
  [v24 configureWithContext:a1[4]];

  result = [a1[4] _configureResidentSupported];
  v26 = *MEMORY[0x277D85DE8];
  return result;
}

- (HMDResidentDeviceManagerRoar)initWithDataSource:(id)a3
{
  v5 = a3;
  v28.receiver = self;
  v28.super_class = HMDResidentDeviceManagerRoar;
  v6 = [(HMDResidentDeviceManagerRoar *)&v28 init];
  if (v6)
  {
    v7 = HMFGetOSLogHandle();
    logger = v6->_logger;
    v6->_logger = v7;

    v9 = [v5 queue];
    queue = v6->_queue;
    v6->_queue = v9;

    objc_storeStrong(&v6->_dataSource, a3);
    logIdentifier = v6->_logIdentifier;
    v6->_logIdentifier = @"<unconfigured>";

    messageTargetUUID = v6->_messageTargetUUID;
    v6->_messageTargetUUID = 0;

    v13 = [MEMORY[0x277CBEB58] set];
    residentDevices = v6->_residentDevices;
    v6->_residentDevices = v13;

    v15 = [v5 notificationCenter];
    notificationCenter = v6->_notificationCenter;
    v6->_notificationCenter = v15;

    v17 = [v5 appleAccountManager];
    appleAccountManager = v6->_appleAccountManager;
    v6->_appleAccountManager = v17;

    v19 = [v5 createPrimaryResidentDiscoveryManagerWithQueue:v6->_queue];
    primaryDiscoveryManager = v6->_primaryDiscoveryManager;
    v6->_primaryDiscoveryManager = v19;

    [(HMDPrimaryResidentDiscoveryManager *)v6->_primaryDiscoveryManager setDelegate:v6];
    v21 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    primaryDiscoveryRequesters = v6->_primaryDiscoveryRequesters;
    v6->_primaryDiscoveryRequesters = v21;

    v23 = [MEMORY[0x277D0F7C0] futureWithPromise:&v6->_firstPrimaryResidentDiscoveryAttemptCompletionPromise];
    firstPrimaryResidentDiscoveryAttemptCompletionFuture = v6->_firstPrimaryResidentDiscoveryAttemptCompletionFuture;
    v6->_firstPrimaryResidentDiscoveryAttemptCompletionFuture = v23;

    v25 = [v5 featuresDataSource];
    featuresDataSource = v6->_featuresDataSource;
    v6->_featuresDataSource = v25;
  }

  return v6;
}

- (HMDResidentDeviceManagerRoar)init
{
  v3 = objc_alloc_init(HMDDefaultResidentDeviceManagerRoarDataSource);
  v4 = [(HMDResidentDeviceManagerRoar *)self initWithDataSource:v3];

  return v4;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t75_178879 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t75_178879, &__block_literal_global_200_178880);
  }

  v3 = logCategory__hmf_once_v76_178881;

  return v3;
}

void __43__HMDResidentDeviceManagerRoar_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v76_178881;
  logCategory__hmf_once_v76_178881 = v1;
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

@end