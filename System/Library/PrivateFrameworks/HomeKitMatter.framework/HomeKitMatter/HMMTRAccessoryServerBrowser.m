@interface HMMTRAccessoryServerBrowser
+ (id)logCategory;
- (BOOL)_delegateRespondsToSelector:(SEL)a3;
- (BOOL)_isDeviceIDPaired:(id)a3 nodeID:(id *)a4 targetFabricUUID:(id *)a5;
- (BOOL)_isDevicePaired:(unint64_t)a3 fabricUUID:(id)a4;
- (BOOL)_isNodeIDPaired:(id)a3 targetFabricUUID:(id *)a4;
- (BOOL)_isWedPollingDisabledForTests;
- (BOOL)_pollWedAccessoriesIfAllowed;
- (BOOL)_tryAddAccessoryConnectionRequestToExistingFabric:(id)a3;
- (BOOL)canEstablishConnectionForNodeID:(id)a3;
- (BOOL)isCurrentDeviceAllowedAccessoryControlDespiteReachableResident;
- (BOOL)isCurrentDeviceAllowedAccessoryControlDespiteReachableResidentForFabric:(id)a3;
- (BOOL)isCurrentDeviceAllowedAccessoryControlDespiteReachableResidentForFabricUUID:(id)a3;
- (BOOL)isCurrentDeviceAllowedAccessoryControlPerExplicitRequestDespiteReachableResidentForFabric:(id)a3;
- (BOOL)isCurrentDeviceMobileAndAllowedAccessoryControl;
- (BOOL)isCurrentDeviceMobileAndResidentReachable;
- (BOOL)isOperationAllowedForAccessoryServer:(id)a3;
- (BOOL)isOwnerForHomeWithFabric:(id)a3;
- (BOOL)locallyDiscoveredAccessoryServerMatchesDiscriminatorOfSetupPayload:(id)a3;
- (BOOL)supportsCommissioningCertificateRetrievalForCurrentlyPairingAccessory;
- (BOOL)supportsCommissioningCertificateRetrievalForHomeUUID:(id)a3;
- (HAPAccessoryServerBrowserDelegate)delegate;
- (HMMTRAccessoryServer)commissioneeAccessoryServer;
- (HMMTRAccessoryServerBrowser)initWithQueue:(id)a3 storeDirectoryURL:(id)a4 dataSource:(id)a5;
- (HMMTRAccessoryServerBrowserDelegate)accessoryServerBrowserDelegate;
- (HMMTRControllerWrapper)systemCommissionerControllerWrapper;
- (HMMTRMatterKeypair)systemCommissionerNocSigner;
- (NSData)systemCommissionerFabricRootPublicKey;
- (NSNumber)systemCommissionerFabricID;
- (NSSet)fabricsWithActiveClients;
- (NSSet)fabricsWithActiveSecondaryClients;
- (id)_allServers;
- (id)_createCHIPAccessoryForNodeID:(unint64_t)a3 ifPaired:(BOOL)a4 fabricUUID:(id)a5 fatalError:(id *)a6;
- (id)_discoveredServerWithDiscriminator:(id)a3 vendorID:(id)a4 productID:(id)a5;
- (id)_getSystemCommissionerFabricRootCertificateWithIndex:(id)a3 ipk:(id *)a4 controllerNodeID:(id *)a5;
- (id)_populateControllerFactoryParams;
- (id)_serverFromMTSDevicePairing:(id)a3;
- (id)accessoryServerWithNodeID:(id)a3;
- (id)appleHomeFabricWithTargetFabricUUID:(id)a3;
- (id)controllerWrapperForFabricUUID:(id)a3;
- (id)createSystemCommissionerFabricNOCWithSigningCertificate:(id)a3 operationalPublicKey:(__SecKey *)a4 fabricID:(id)a5 nodeID:(id)a6 caseAuthenticatedTags:(id)a7 error:(id *)a8;
- (id)currentFabric;
- (id)deviceControllerForFabricUUID:(id)a3;
- (id)discoveredAccessoryServers;
- (id)fabricDataForPairingTargetFabricUUID:(id)a3;
- (id)fabricsWithActiveConnections;
- (id)fabricsWithPendingConnections;
- (id)stagedAccessoryServerWithIdentifier:(id)a3;
- (id)storageForSystemCommissioner;
- (id)suspendedActiveClientFabricUUID;
- (id)suspendedActiveSecondaryClientFabricUUIDs;
- (int)_discriminator:(id *)a3 vendorID:(id *)a4 productID:(id *)a5 CM:(id *)a6 fromTXTRecord:(id)a7;
- (int)_initializeAndStartBonjourBrowser;
- (unint64_t)_generateNodeID;
- (unint64_t)_getRandomFabricId;
- (void)_abortAllOperationsForFabricUUID:(id)a3 reason:(id)a4;
- (void)_accessoryServerForSystemCommissionerDeviceWithNodeID:(id)a3 completionHandler:(id)a4;
- (void)_addDiscoveredAccessoryServerWithNodeID:(id)a3 fabricUUID:(id)a4;
- (void)_addToActiveFabrics:(id)a3;
- (void)_addToPendingFabrics:(id)a3;
- (void)_cleanUpMTRDevicesWithFabricUUID:(id)a3;
- (void)_cleanupDisappearedServersOverBLE;
- (void)_cleanupDiscoveredServers;
- (void)_cleanupDiscoveredServersWithReason:(id)a3 completion:(id)a4;
- (void)_cleanupLocallyDiscoveredServers;
- (void)_cleanupStagedServers;
- (void)_clearLocallyDiscoveredFlags;
- (void)_connectPendingFabricConnections;
- (void)_connectPendingFabricConnectionsForTargetFabricUUID:(id)a3;
- (void)_deleteOldPairingsForFabricUUID:(id)a3;
- (void)_disconnectFromIdleFabric:(id)a3 reason:(id)a4;
- (void)_establishConnectionWhenAllowedWithAccessoryConnectionRequest:(id)a3;
- (void)_establishConnectionWhenAllowedWithFabricConnectionRequest:(id)a3;
- (void)_fetchDevicePairingsForSystemCommissionerDeviceWithNodeID:(id)a3 completionHandler:(id)a4;
- (void)_handleAddOrUpdateWithDiscriminator:(id)a3 vendorID:(id)a4 productID:(id)a5 overBLE:(BOOL)a6;
- (void)_handleBonjourBrowserBatchResults;
- (void)_handleBonjourRemoveWithDiscriminator:(id)a3 vendorID:(id)a4 productID:(id)a5 txtRecordRemove:(BOOL)a6;
- (void)_handleClientsRemovedWithFabricUUID:(id)a3 updateConnectionIdleTimeout:(BOOL)a4 reason:(id)a5;
- (void)_handleLockStateNotification;
- (void)_invalidateAccessoryServer:(id)a3 reason:(id)a4 withCompletion:(id)a5;
- (void)_logHMMTRFeatures;
- (void)_notifyDelegateOfPairingStep:(unint64_t)a3;
- (void)_operationsCompletedForFabricConnectionRequest:(id)a3 reason:(id)a4;
- (void)_preWarmCommissioningSession;
- (void)_prepareForPairingWithSetupPayload:(id)a3 targetFabricUUID:(id)a4 fabricID:(id)a5 controllerWrapper:(id)a6 hasPriorSuccessfulPairing:(BOOL)a7 category:(id)a8 completionHandler:(id)a9;
- (void)_prepareServerForBLEDiscovery;
- (void)_queueBonjourBrowserOldResult:(id)a3 newResult:(id)a4;
- (void)_reenumeratePairedDevices;
- (void)_removeFromActiveFabrics:(id)a3;
- (void)_removeFromPendingFabrics:(id)a3;
- (void)_removeOrSuspendAllActiveClientsWithCurrentFabricUUID:(id)a3 reason:(int64_t)a4;
- (void)_reportAccessoriesKnownToSystemCommissioner;
- (void)_restartDiscovery;
- (void)_setUpBrowserTargetFabricUUID:(id)a3;
- (void)_setUpUpdatedBrowserTargetFabricUUID:(id)a3 rediscoverAccessories:(BOOL)a4 overrideAccessoryControlAllowed:(BOOL)a5;
- (void)_setupPairedDevices;
- (void)_stageAccessoryServerWithSetupPayload:(id)a3 deviceCredentialHandler:(id)a4 wifiScanResultsHandler:(id)a5 threadScanResultsHandler:(id)a6 readyToCancelHandler:(id)a7 progressUpdateHandler:(id)a8 commissioneeInfoHandler:(id)a9 scanningNetworks:(BOOL)a10 hasPriorSuccessfulPairing:(BOOL)a11 category:(id)a12 completionHandler:(id)a13;
- (void)_startDiscoveringAccessoryServersWithNoResponseToDelegate;
- (void)_stopMatterStackWithReason:(id)a3;
- (void)_stopSystemCommissionerFabricWithReason:(id)a3;
- (void)_storageDidBecomeAvailable:(id)a3;
- (void)_suspendOperationsForTargetFabricUUID:(id)a3;
- (void)_updateACLOnPairedAccessories;
- (void)_updateAccessoryControlListForServer:(id)a3 completion:(id)a4;
- (void)_updateCentralManager;
- (void)_updateDiscoveredAccessoryServersWithNodes:(id)a3 fabricUUID:(id)a4;
- (void)_updateLocallyDiscoveredServerPairedStates;
- (void)_updatePairingMetricsUponAccessoryDiscovery;
- (void)abortAndSuspendAllOperationsWithReason:(id)a3;
- (void)abortOperationsForAccessoryServer:(id)a3 reason:(id)a4;
- (void)accessoryServerForSystemCommissionerDeviceWithNodeID:(id)a3 completionHandler:(id)a4;
- (void)addFabricWithActiveClientForTargetFabricUUID:(id)a3;
- (void)addFabricWithActiveClients:(id)a3;
- (void)addFabricWithActiveSecondaryClients:(id)a3;
- (void)addSuspendedActiveSecondaryClientFabricUUIDs:(id)a3;
- (void)announceOtaProviderForNodeID:(id)a3 isRetry:(BOOL)a4;
- (void)centralManager:(id)a3 didDiscoverPeripheral:(id)a4 advertisementData:(id)a5 RSSI:(id)a6;
- (void)centralManagerDidUpdateState:(id)a3;
- (void)cleanUpStaleSystemCommissionerPairingsWithNewlyPairedUUID:(id)a3 vendorID:(id)a4 productID:(id)a5 serialNumber:(id)a6 setupPayload:(id)a7;
- (void)clearOperationalFabricDataForTargetFabricUUID:(id)a3;
- (void)clearSuspendedActiveSecondaryClientFabricUUIDs;
- (void)commitStagedAccessoryServer:(id)a3;
- (void)configure;
- (void)connectToAccessoryWhenAllowed:(id)a3 priority:(unint64_t)a4 completion:(id)a5;
- (void)createNewSystemCommissionerFabricNodeIDWithCompletion:(id)a3;
- (void)dealloc;
- (void)didFinishPairingAccessoryServer:(id)a3 operationDisabled:(BOOL)a4;
- (void)disableUnrestrictedOperationsForAccessoryServer:(id)a3;
- (void)discardStagedAccessoryServerWithIdentifier:(id)a3 completionHandler:(id)a4;
- (void)discoverAccessoryServerWithIdentifier:(id)a3;
- (void)discoverAccessoryServerWithNodeID:(id)a3 completion:(id)a4;
- (void)dispatchAfter:(unint64_t)a3 block:(id)a4;
- (void)dispatchAfterConfiguration:(id)a3;
- (void)dispatchBlock:(id)a3;
- (void)enableUnrestrictedOperationsForAccessoryServer:(id)a3;
- (void)fetchAllDevicePairingsForSystemCommissionerDeviceWithNodeID:(id)a3 completionHandler:(id)a4;
- (void)fetchCertificatesForMatterNodeWithCommissionerNodeID:(id)a3 commissioneeNodeID:(id)a4 forOwner:(BOOL)a5 publicKey:(id)a6 fabricData:(id)a7 adminCAT:(id)a8 opCAT:(id)a9 completionHandler:(id)a10;
- (void)fetchCommissioningCertificatesFromOwnerForPublicKey:(id)a3 fabricID:(id)a4 completionHandler:(id)a5;
- (void)fetchPreferredThreadCredentialsForServer:(id)a3 withCompletion:(id)a4;
- (void)fetchSystemCommissionerRootCertificateWithCompletion:(id)a3;
- (void)finishSystemCommissionerFabricCommissioningWithFabricID:(id)a3 rootCACert:(id)a4 ipk:(id)a5 controllerNodeID:(id)a6 commissioneeNodeID:(id)a7 queue:(id)a8 completion:(id)a9;
- (void)handleDeviceNoLongerPrimaryResidentWithCompletion:(id)a3;
- (void)handleHomeAddedAccessoryWithNodeID:(id)a3 fabricUUID:(id)a4 localControl:(BOOL)a5;
- (void)handleHomeDeletionWithFabricUUID:(id)a3;
- (void)handleHomeRemovedAccessoryWithNodeID:(id)a3 fabricUUID:(id)a4;
- (void)handlePairingCompletionForAccessoryWithNodeID:(id)a3 targetFabricUUID:(id)a4 fabricID:(id)a5 vendorID:(id)a6 productID:(id)a7 configNumber:(id)a8 category:(id)a9 topology:(id)a10;
- (void)handlePairingForThreadAccessoryWithTargetFabricUUID:(id)a3 nodeID:(id)a4;
- (void)handlePrimaryResidentDataReady;
- (void)handleResidentReachabilityChangeForFabric:(id)a3;
- (void)handleSystemKeychainStoreUpdatedNotification:(id)a3;
- (void)handleThreadNetworkStateChangedNotification:(id)a3;
- (void)handleThreadRadioStateChanged;
- (void)handleUpdateNotificationsEnabled:(BOOL)a3 forFabric:(id)a4 keepAliveOnly:(BOOL)a5;
- (void)indicateNotificationFromServer:(id)a3 notifyType:(unint64_t)a4 withDictionary:(id)a5;
- (void)invalidateAccessoryServer:(id)a3 reason:(id)a4 withCompletion:(id)a5;
- (void)invalidateAllDiscoveredServersWithReason:(id)a3 completion:(id)a4;
- (void)matchAccessoryServerWithSetupID:(id)a3 serverIdentifier:(id)a4 completionHandler:(id)a5;
- (void)notifyDiscoveredAccessoryServer:(id)a3;
- (void)notifyPairingCompletionForAccessoryServer:(id)a3;
- (void)openCommissioningWindowForSystemCommissionerDeviceWithNodeID:(id)a3 duration:(double)a4 completionHandler:(id)a5;
- (void)operationsStartedForFabricConnectionRequest:(id)a3;
- (void)prepareForPairingWithSetupPayload:(id)a3 targetFabricUUID:(id)a4 completionHandler:(id)a5;
- (void)readCommissioningWindowStatusForSystemCommissionerDeviceWithNodeID:(id)a3 completionHandler:(id)a4;
- (void)registerPairingWindowWithSetupPayload:(id)a3 duration:(double)a4 accessoryServer:(id)a5;
- (void)removeAccessoryServer:(id)a3 fromDiscoveredAccessoryServerListWithReason:(id)a4;
- (void)removeAllDevicePairingsForSystemCommissionerDeviceWithNodeID:(id)a3 completionHandler:(id)a4;
- (void)removeDevicePairingFabricForSystemCommissionerDeviceWithNodeID:(id)a3 fabric:(id)a4 completionHandler:(id)a5;
- (void)removeFabricWithActiveClients:(id)a3;
- (void)removeFabricWithActiveSecondaryClients:(id)a3;
- (void)removeSystemCommissionerFabricAccessoryWithNodeID:(id)a3 completionHandler:(id)a4;
- (void)restartDiscovery;
- (void)resumeAllOperations;
- (void)runAfterCommissioningToTargetFabricUUID:(id)a3 controllerSetUpBlock:(id)a4;
- (void)setCommissioneeAccessoryServer:(id)a3;
- (void)setConnectionRequestSuspended:(BOOL)a3;
- (void)setDelegate:(id)a3 queue:(id)a4;
- (void)setOperationalFabricData:(id)a3 operationalCertIssuer:(id)a4 storageDataSource:(id)a5 allTargetFabricUUIDs:(id)a6 entityIdentifier:(id)a7 accessoryServerNodeIDs:(id)a8 forTargetFabricUUID:(id)a9;
- (void)setPairingTargetFabricData:(id)a3 targetFabricUUID:(id)a4;
- (void)setSuspendedActiveClientFabricUUID:(id)a3;
- (void)setUpBrowserTargetFabricAndRediscoverAccessoriesForHomeFabricUUID:(id)a3;
- (void)setUpBrowserTargetFabricUUID:(id)a3;
- (void)setUpBrowserTargetFabricUUID:(id)a3 completion:(id)a4;
- (void)setUpBrowserTargetFabricWithoutRediscoveringAccessoriesForHomeFabricUUID:(id)a3;
- (void)setupPairedDevices;
- (void)stageAccessoryServerWithSetupPayload:(id)a3 fabricID:(id)a4 deviceCredentialHandler:(id)a5 wifiScanResultsHandler:(id)a6 threadScanResultsHandler:(id)a7 readyToCancelHandler:(id)a8 progressUpdateHandler:(id)a9 commissioneeInfoHandler:(id)a10 scanningNetworks:(BOOL)a11 completionHandler:(id)a12;
- (void)stageAccessoryServerWithSetupPayload:(id)a3 hasPriorSuccessfulPairing:(BOOL)a4 category:(id)a5 completionHandler:(id)a6;
- (void)startBluetoothScan;
- (void)startDiscoveringAccessoryServers;
- (void)startDiscoveringAccessoryServersWithNoResponseToDelegate;
- (void)stopBluetoothScan;
- (void)stopDiscoveringAccessoryServers;
- (void)storageDidBecomeAvailable:(id)a3;
- (void)storageDidUpdateData:(id)a3 isLocalChange:(BOOL)a4;
- (void)updateAccessoryACLForFabric:(id)a3;
- (void)updateDiscoveredAccessoryServersWithNodes:(id)a3 fabricUUID:(id)a4;
- (void)waitForDeviceControllerWithCompletion:(id)a3;
@end

@implementation HMMTRAccessoryServerBrowser

void __40__HMMTRAccessoryServerBrowser_configure__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleLockStateNotification];
}

- (void)_handleLockStateNotification
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0;
  if ([(HMMTRAccessoryServerBrowser *)self _delegateRespondsToSelector:sel_accessoryServerBrowser_getLockedState_])
  {
    v3 = [(HMMTRAccessoryServerBrowser *)self delegate];
    [v3 accessoryServerBrowser:self getLockedState:&v10];
  }

  v4 = objc_autoreleasePoolPush();
  v5 = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v8 = HMFBooleanToString();
    *buf = 138543618;
    v12 = v7;
    v13 = 2112;
    v14 = v8;
    _os_log_impl(&dword_22AEAE000, v6, OS_LOG_TYPE_INFO, "%{public}@Lock state changed: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  [(HMMTRAccessoryServerBrowser *)v5 _handleDeviceActivityStateChange:v10 reason:8];
  v9 = *MEMORY[0x277D85DE8];
}

- (HAPAccessoryServerBrowserDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t370 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t370, &__block_literal_global_372);
  }

  v3 = logCategory__hmf_once_v371;

  return v3;
}

- (HMMTRAccessoryServerBrowserDelegate)accessoryServerBrowserDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_accessoryServerBrowserDelegate);

  return WeakRetained;
}

- (void)dispatchAfter:(unint64_t)a3 block:(id)a4
{
  v6 = a4;
  v7 = [(HAPAccessoryServerBrowser *)self workQueue];
  dispatch_after(a3, v7, v6);
}

- (void)dispatchBlock:(id)a3
{
  v4 = a3;
  v5 = [(HAPAccessoryServerBrowser *)self workQueue];
  dispatch_async(v5, v4);
}

- (void)centralManager:(id)a3 didDiscoverPeripheral:(id)a4 advertisementData:(id)a5 RSSI:(id)a6
{
  v39 = *MEMORY[0x277D85DE8];
  v7 = a5;
  v33 = self;
  v8 = [(HAPAccessoryServerBrowser *)self workQueue];
  dispatch_assert_queue_V2(v8);

  v9 = [v7 objectForKeyedSubscript:*MEMORY[0x277CBDCF0]];
  if ([v9 BOOLValue])
  {
    v31 = v9;
    v32 = v7;
    v10 = [v7 objectForKeyedSubscript:*MEMORY[0x277CBDD28]];
    v11 = v10;
    if (v10)
    {
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v12 = [v10 countByEnumeratingWithState:&v34 objects:v38 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v35;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v35 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = *(*(&v34 + 1) + 8 * i);
            v17 = [v16 data];
            v18 = [MEMORY[0x277CBE0A0] UUIDWithString:@"FFF6"];
            v19 = [v18 data];
            v20 = [v17 isEqual:v19];

            if (v20)
            {
              v21 = [v11 objectForKey:v16];
              if ([v21 length] == 8)
              {
                v22 = [v21 bytes];
                v23 = *(v22 + 3);
                v24 = *(v22 + 5);
                if (*v22 <= 1u && v23 != 0 && v24 != 0)
                {
                  v27 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v22[1] | ((v22[2] & 0xF) << 8)];
                  v28 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v23];
                  v29 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v24];
                  [(HMMTRAccessoryServerBrowser *)v33 _handleBLEAddOrUpdateWithDiscriminator:v27 vendorID:v28 productID:v29];
                }
              }
            }
          }

          v13 = [v11 countByEnumeratingWithState:&v34 objects:v38 count:16];
        }

        while (v13);
      }
    }

    v9 = v31;
    v7 = v32;
  }

  v30 = *MEMORY[0x277D85DE8];
}

- (void)centralManagerDidUpdateState:(id)a3
{
  v4 = [(HAPAccessoryServerBrowser *)self workQueue];
  dispatch_assert_queue_V2(v4);

  [(HMMTRAccessoryServerBrowser *)self _updateCentralManager];
}

- (void)_updateCentralManager
{
  v40 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v7 = [(HMMTRAccessoryServerBrowser *)v4 cbCentral];
    *buf = 138543618;
    v37 = v6;
    v38 = 2048;
    v39 = [v7 state];
    _os_log_impl(&dword_22AEAE000, v5, OS_LOG_TYPE_INFO, "%{public}@CBCentralManager state: %ld", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v3);
  v8 = [(HMMTRAccessoryServerBrowser *)v4 cbCentral];
  v9 = [v8 state] == 5;

  if (v9)
  {
    v10 = [(HMMTRAccessoryServerBrowser *)v4 bleScanActive];
    v11 = [(HMMTRAccessoryServerBrowser *)v4 requestedBLEScan];
    if (v10)
    {
      if (v11)
      {
        objc_initWeak(buf, v4);
        v12 = dispatch_time(0, 60000000000);
        v13 = [(HAPAccessoryServerBrowser *)v4 workQueue];
        v31[0] = MEMORY[0x277D85DD0];
        v31[1] = 3221225472;
        v31[2] = __52__HMMTRAccessoryServerBrowser__updateCentralManager__block_invoke;
        v31[3] = &unk_2786EF2B8;
        objc_copyWeak(&v32, buf);
        dispatch_after(v12, v13, v31);

        objc_destroyWeak(&v32);
        objc_destroyWeak(buf);
      }

      else
      {
        v24 = objc_autoreleasePoolPush();
        v25 = v4;
        v26 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
        {
          v27 = HMFGetLogIdentifier();
          *buf = 138543362;
          v37 = v27;
          _os_log_impl(&dword_22AEAE000, v26, OS_LOG_TYPE_INFO, "%{public}@Stopping BLE scan", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v24);
        v28 = [(HMMTRAccessoryServerBrowser *)v25 cbCentral];
        [v28 stopScan];

        v29 = [(HMMTRAccessoryServerBrowser *)v25 cbCentral];
        [v29 setDelegate:0];

        [(HMMTRAccessoryServerBrowser *)v25 setCbCentral:0];
        [(HMMTRAccessoryServerBrowser *)v25 setBleScanActive:0];
        [(HMMTRAccessoryServerBrowser *)v25 _cleanupDisappearedServersOverBLE];
      }
    }

    else if (v11)
    {
      v14 = objc_autoreleasePoolPush();
      v15 = v4;
      v16 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v17 = HMFGetLogIdentifier();
        *buf = 138543362;
        v37 = v17;
        _os_log_impl(&dword_22AEAE000, v16, OS_LOG_TYPE_INFO, "%{public}@Starting BLE scan", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v14);
      [(HMMTRAccessoryServerBrowser *)v15 _prepareServerForBLEDiscovery];
      [(HMMTRAccessoryServerBrowser *)v15 setBleScanActive:1];
      v18 = [(HMMTRAccessoryServerBrowser *)v15 cbCentral];
      v19 = [MEMORY[0x277CBE0A0] UUIDWithString:@"FFF6"];
      v35 = v19;
      v20 = [MEMORY[0x277CBEA60] arrayWithObjects:&v35 count:1];
      v21 = *MEMORY[0x277CBDDA8];
      v33[0] = *MEMORY[0x277CBDDB0];
      v33[1] = v21;
      v34[0] = MEMORY[0x277CBEC38];
      v34[1] = MEMORY[0x277CBEC28];
      v22 = *MEMORY[0x277CBDE38];
      v33[2] = *MEMORY[0x277CBDE58];
      v33[3] = v22;
      v34[2] = &unk_283EE87F0;
      v34[3] = &unk_283EE8808;
      v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:v33 count:4];
      [v18 scanForPeripheralsWithServices:v20 options:v23];

      [(HMMTRAccessoryServerBrowser *)v15 _updateCentralManager];
    }
  }

  v30 = *MEMORY[0x277D85DE8];
}

void __52__HMMTRAccessoryServerBrowser__updateCentralManager__block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_autoreleasePoolPush();
  v3 = WeakRetained;
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v7 = 138543362;
    v8 = v5;
    _os_log_impl(&dword_22AEAE000, v4, OS_LOG_TYPE_INFO, "%{public}@Refreshing BLE discovered servers", &v7, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  [v3 _cleanupDisappearedServersOverBLE];
  [v3 _prepareServerForBLEDiscovery];
  [v3 _updateCentralManager];

  v6 = *MEMORY[0x277D85DE8];
}

- (void)stopBluetoothScan
{
  v3 = [(HAPAccessoryServerBrowser *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__HMMTRAccessoryServerBrowser_stopBluetoothScan__block_invoke;
  block[3] = &unk_2786F0CA8;
  block[4] = self;
  dispatch_async(v3, block);
}

void __48__HMMTRAccessoryServerBrowser_stopBluetoothScan__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) setRequestedBLEScan:0];
  [*(a1 + 32) _updateCentralManager];
  v2 = [*(a1 + 32) bonjourBrowser];

  if (v2)
  {
    v3 = [*(a1 + 32) bonjourBrowser];
    nw_browser_cancel(v3);
  }

  [*(a1 + 32) _cleanupLocallyDiscoveredServers];
  [*(a1 + 32) _clearLocallyDiscoveredFlags];
  v4 = [MEMORY[0x277D0F8E8] productInfo];
  v5 = [v4 productPlatform];

  if ((v5 - 1) <= 1 && isFeatureMatteriPhoneOnlyPairingControlForThreadEnabled())
  {
    v6 = objc_autoreleasePoolPush();
    v7 = *(a1 + 32);
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v11 = 138543362;
      v12 = v9;
      _os_log_impl(&dword_22AEAE000, v8, OS_LOG_TYPE_INFO, "%{public}@Resume all thread connection requests due to BLE scan end", &v11, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    [*(a1 + 32) resumeAllOperations];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)startBluetoothScan
{
  objc_initWeak(&location, self);
  v3 = [(HAPAccessoryServerBrowser *)self workQueue];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __49__HMMTRAccessoryServerBrowser_startBluetoothScan__block_invoke;
  v4[3] = &unk_2786EF2B8;
  objc_copyWeak(&v5, &location);
  dispatch_async(v3, v4);

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __49__HMMTRAccessoryServerBrowser_startBluetoothScan__block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [MEMORY[0x277D0F8E8] productInfo];
  v3 = [v2 productPlatform];

  if ((v3 - 1) <= 1)
  {
    if (isFeatureMatteriPhoneOnlyPairingControlForThreadEnabled())
    {
      v4 = objc_autoreleasePoolPush();
      v5 = WeakRetained;
      v6 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = HMFGetLogIdentifier();
        *buf = 138543362;
        v19 = v7;
        _os_log_impl(&dword_22AEAE000, v6, OS_LOG_TYPE_INFO, "%{public}@Aborting all thread connection requests due to BLE scan", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v4);
      v8 = [MEMORY[0x277CCA9B8] hmmtrErrorWithCode:6];
      [v5 abortAndSuspendAllOperationsWithReason:v8];
    }

    [WeakRetained _preWarmCommissioningSession];
    [WeakRetained _cleanupLocallyDiscoveredServers];
    [WeakRetained setRequestedBLEScan:1];
    v9 = [WeakRetained cbCentral];

    if (!v9)
    {
      v10 = objc_alloc(MEMORY[0x277CBDFF8]);
      v11 = [WeakRetained workQueue];
      v12 = [v10 initWithDelegate:WeakRetained queue:v11];
      [WeakRetained setCbCentral:v12];
    }

    [WeakRetained _updateCentralManager];
    v13 = [WeakRetained _initializeAndStartBonjourBrowser];
    if ([WeakRetained _delegateRespondsToSelector:sel_accessoryServerBrowser_didStartDiscoveringWithError_])
    {
      v14 = [WeakRetained delegateQueue];
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __49__HMMTRAccessoryServerBrowser_startBluetoothScan__block_invoke_364;
      v16[3] = &unk_2786EEFF8;
      v16[4] = WeakRetained;
      v17 = v13;
      dispatch_async(v14, v16);
    }

    [WeakRetained _reportAccessoriesKnownToSystemCommissioner];
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __49__HMMTRAccessoryServerBrowser_startBluetoothScan__block_invoke_364(uint64_t a1)
{
  v5 = [*(a1 + 32) delegate];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = HMErrorFromOSStatus();
  [v5 accessoryServerBrowser:v2 didStartDiscoveringWithError:v4];
}

- (void)_preWarmCommissioningSession
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CD5328] sharedInstance];
  v4 = objc_autoreleasePoolPush();
  v5 = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v9 = 138543362;
    v10 = v7;
    _os_log_impl(&dword_22AEAE000, v6, OS_LOG_TYPE_INFO, "%{public}@Pre-warming device controller factory", &v9, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  [v3 preWarmCommissioningSession];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)fetchPreferredThreadCredentialsForServer:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HMMTRAccessoryServerBrowser *)self delegateQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __87__HMMTRAccessoryServerBrowser_fetchPreferredThreadCredentialsForServer_withCompletion___block_invoke;
  block[3] = &unk_2786F0EA8;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

void __87__HMMTRAccessoryServerBrowser_fetchPreferredThreadCredentialsForServer_withCompletion___block_invoke(id *a1)
{
  v2 = [a1[4] delegate];
  v3 = a1[4];
  v4 = [a1[5] identifier];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __87__HMMTRAccessoryServerBrowser_fetchPreferredThreadCredentialsForServer_withCompletion___block_invoke_2;
  v5[3] = &unk_2786EEFD0;
  v5[4] = a1[4];
  v7 = a1[6];
  v6 = a1[5];
  [v2 accessoryServerBrowser:v3 getThreadNetworkCredentialsForAccessoryWithIdentifier:v4 withCompletion:v5];
}

void __87__HMMTRAccessoryServerBrowser_fetchPreferredThreadCredentialsForServer_withCompletion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_INFO);
  if (v5 && !v6)
  {
    if (v10)
    {
      v11 = HMFGetLogIdentifier();
      v23 = 138543362;
      v24 = v11;
      _os_log_impl(&dword_22AEAE000, v9, OS_LOG_TYPE_INFO, "%{public}@Successfully fetched Preferred Thread Credentials from owner.", &v23, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
    v12 = *(a1 + 32);
    v13 = [v12 currentFabric];
    LODWORD(v12) = [v12 isCurrentDeviceAllowedAccessoryControlDespiteReachableResidentForFabric:v13];

    if (!v12)
    {
      goto LABEL_14;
    }

    v14 = [*(a1 + 32) threadRadioManager];
    v15 = [*(a1 + 32) currentFabricUUID];
    [v14 overrideLocationCheckForPairingForFabricUUID:v15];

    v16 = [*(a1 + 40) knownToSystemCommissioner];
    v17 = [*(a1 + 32) threadRadioManager];
    v18 = [*(a1 + 32) currentFabricUUID];
    if (v16)
    {
      [v17 startThreadRadioForSystemCommissionerFabricUUID:v18];
    }

    else
    {
      v21 = [v17 hasMatterThreadAccessoryInHomeWithFabricUUID:v18];

      if (!v21)
      {
LABEL_14:
        v20 = *(*(a1 + 48) + 16);
        goto LABEL_15;
      }

      v17 = [*(a1 + 32) threadRadioManager];
      v18 = [*(a1 + 32) currentFabricUUID];
      [v17 startThreadRadioForHomeWithFabricUUID:v18];
    }

    goto LABEL_14;
  }

  if (v10)
  {
    v19 = HMFGetLogIdentifier();
    v23 = 138543618;
    v24 = v19;
    v25 = 2112;
    v26 = v6;
    _os_log_impl(&dword_22AEAE000, v9, OS_LOG_TYPE_INFO, "%{public}@Failed to fetch Preferred Thread Credentials from owner with error %@", &v23, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  v20 = *(*(a1 + 48) + 16);
LABEL_15:
  v20();

  v22 = *MEMORY[0x277D85DE8];
}

- (void)fetchCommissioningCertificatesFromOwnerForPublicKey:(id)a3 fabricID:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(HMMTRAccessoryServerBrowser *)self delegateQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __110__HMMTRAccessoryServerBrowser_fetchCommissioningCertificatesFromOwnerForPublicKey_fabricID_completionHandler___block_invoke;
  v15[3] = &unk_2786EFA60;
  v15[4] = self;
  v16 = v9;
  v17 = v8;
  v18 = v10;
  v12 = v10;
  v13 = v8;
  v14 = v9;
  dispatch_async(v11, v15);
}

void __110__HMMTRAccessoryServerBrowser_fetchCommissioningCertificatesFromOwnerForPublicKey_fabricID_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __110__HMMTRAccessoryServerBrowser_fetchCommissioningCertificatesFromOwnerForPublicKey_fabricID_completionHandler___block_invoke_2;
  v6[3] = &unk_2786EEFA8;
  v6[4] = v3;
  v5 = *(a1 + 48);
  v7 = *(a1 + 56);
  [v2 accessoryServerBrowser:v3 getCommissioningCertificatesForNodeID:0 fabricID:v4 publicKey:v5 completion:v6];
}

void __110__HMMTRAccessoryServerBrowser_fetchCommissioningCertificatesFromOwnerForPublicKey_fabricID_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v31 = *MEMORY[0x277D85DE8];
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = objc_autoreleasePoolPush();
  v17 = *(a1 + 32);
  v18 = HMFGetOSLogHandle();
  v19 = os_log_type_enabled(v18, OS_LOG_TYPE_INFO);
  if (v15)
  {
    if (v19)
    {
      v20 = HMFGetLogIdentifier();
      v23 = 138543618;
      v24 = v20;
      v25 = 2112;
      v26 = v15;
      _os_log_impl(&dword_22AEAE000, v18, OS_LOG_TYPE_INFO, "%{public}@Failed to fetch commissioning certificates from owner with error %@", &v23, 0x16u);
    }
  }

  else if (v19)
  {
    v21 = HMFGetLogIdentifier();
    v23 = 138544130;
    v24 = v21;
    v25 = 2112;
    v26 = v11;
    v27 = 2112;
    v28 = v12;
    v29 = 2112;
    v30 = v13;
    _os_log_impl(&dword_22AEAE000, v18, OS_LOG_TYPE_INFO, "%{public}@Successfully fetched commissioning certificates from owner. Root Certificate %@, Operational certificate %@, Owner NodeID %@", &v23, 0x2Au);
  }

  objc_autoreleasePoolPop(v16);
  (*(*(a1 + 40) + 16))();

  v22 = *MEMORY[0x277D85DE8];
}

- (void)handleHomeDeletionWithFabricUUID:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543618;
    v14 = v8;
    v15 = 2112;
    v16 = v4;
    _os_log_impl(&dword_22AEAE000, v7, OS_LOG_TYPE_INFO, "%{public}@Home with fabric %@ has been deleted, cleaning up state", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  if (v4)
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __64__HMMTRAccessoryServerBrowser_handleHomeDeletionWithFabricUUID___block_invoke;
    v11[3] = &unk_2786EF328;
    v11[4] = v6;
    v12 = v4;
    [(HMMTRAccessoryServerBrowser *)v6 dispatchBlock:v11];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __64__HMMTRAccessoryServerBrowser_handleHomeDeletionWithFabricUUID___block_invoke_2;
    v10[3] = &unk_2786F0CA8;
    v10[4] = v6;
    [(HMMTRAccessoryServerBrowser *)v6 dispatchBlock:v10];
  }

  v9 = *MEMORY[0x277D85DE8];
}

uint64_t __64__HMMTRAccessoryServerBrowser_handleHomeDeletionWithFabricUUID___block_invoke(uint64_t a1)
{
  [*(a1 + 32) removeFabricWithActiveClients:*(a1 + 40)];
  [*(a1 + 32) removeFabricWithActiveSecondaryClients:*(a1 + 40)];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = [MEMORY[0x277CCA9B8] hmmtrErrorWithCode:4];
  [v2 _abortAllOperationsForFabricUUID:v3 reason:v4];

  v5 = *(a1 + 32);
  v6 = *(a1 + 40);

  return [v5 clearOperationalFabricDataForTargetFabricUUID:v6];
}

- (void)_handleClientsRemovedWithFabricUUID:(id)a3 updateConnectionIdleTimeout:(BOOL)a4 reason:(id)a5
{
  v6 = a4;
  v51 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  if (v8)
  {
    v10 = [(HMMTRAccessoryServerBrowser *)self fabricsWithActiveClients];
    v11 = [v10 containsObject:v8];

    if (v11)
    {
      v12 = objc_autoreleasePoolPush();
      v13 = self;
      v14 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = HMFGetLogIdentifier();
        *buf = 138543618;
        v48 = v15;
        v49 = 2112;
        v50 = v8;
        v16 = "%{public}@Not shutting down stack for fabric %@ because there is an active client";
LABEL_8:
        _os_log_impl(&dword_22AEAE000, v14, OS_LOG_TYPE_INFO, v16, buf, 0x16u);

        goto LABEL_9;
      }

      goto LABEL_9;
    }

    v17 = [(HMMTRAccessoryServerBrowser *)self fabricsWithActiveSecondaryClients];
    v18 = [v17 containsObject:v8];

    if (v18)
    {
      v12 = objc_autoreleasePoolPush();
      v13 = self;
      v14 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = HMFGetLogIdentifier();
        *buf = 138543618;
        v48 = v15;
        v49 = 2112;
        v50 = v8;
        v16 = "%{public}@Not shutting down stack for fabric %@ because there is an active secondary client";
        goto LABEL_8;
      }

LABEL_9:

      objc_autoreleasePoolPop(v12);
      goto LABEL_10;
    }

    v20 = [(HMMTRAccessoryServerBrowser *)self currentFabricUUID];
    v21 = [v20 isEqual:v8];

    if (v21)
    {
      v39 = v9;
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v22 = [(HMMTRAccessoryServerBrowser *)self fabricsWithActiveConnections];
      v23 = [v22 countByEnumeratingWithState:&v42 objects:v46 count:16];
      if (v23)
      {
        v24 = v23;
        v25 = *v43;
        while (2)
        {
          for (i = 0; i != v24; ++i)
          {
            if (*v43 != v25)
            {
              objc_enumerationMutation(v22);
            }

            v27 = *(*(&v42 + 1) + 8 * i);
            v28 = [v27 fabricUUID];
            v29 = HMFEqualObjects();

            if (v29)
            {
              v9 = v39;
              [v27 abortAllLowPriorityOperationsWithReason:v39];
              if (v6)
              {
                [v27 updateAllConnectionIdleTimeoutsToMinimum];
              }

              v35 = objc_autoreleasePoolPush();
              v36 = self;
              v37 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
              {
                v38 = HMFGetLogIdentifier();
                *buf = 138543618;
                v48 = v38;
                v49 = 2112;
                v50 = v8;
                _os_log_impl(&dword_22AEAE000, v37, OS_LOG_TYPE_INFO, "%{public}@Not shutting down stack for fabric %@ because there is an active connection", buf, 0x16u);
              }

              objc_autoreleasePoolPop(v35);
              goto LABEL_10;
            }
          }

          v24 = [v22 countByEnumeratingWithState:&v42 objects:v46 count:16];
          if (v24)
          {
            continue;
          }

          break;
        }
      }

      v30 = objc_autoreleasePoolPush();
      v31 = self;
      v32 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
      {
        v33 = HMFGetLogIdentifier();
        *buf = 138543618;
        v48 = v33;
        v49 = 2112;
        v50 = v8;
        _os_log_impl(&dword_22AEAE000, v32, OS_LOG_TYPE_INFO, "%{public}@Shutting down stack for fabric %@ because there are no active clients", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v30);
      v34 = [(HAPAccessoryServerBrowser *)v31 workQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __102__HMMTRAccessoryServerBrowser__handleClientsRemovedWithFabricUUID_updateConnectionIdleTimeout_reason___block_invoke;
      block[3] = &unk_2786EF328;
      block[4] = v31;
      v9 = v39;
      v41 = v39;
      dispatch_async(v34, block);
    }
  }

LABEL_10:

  v19 = *MEMORY[0x277D85DE8];
}

void __102__HMMTRAccessoryServerBrowser__handleClientsRemovedWithFabricUUID_updateConnectionIdleTimeout_reason___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) currentFabricUUID];

  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = [v3 currentFabricUUID];
    [v3 _disconnectFromIdleFabric:v4 reason:*(a1 + 40)];
  }
}

- (void)_removeOrSuspendAllActiveClientsWithCurrentFabricUUID:(id)a3 reason:(int64_t)a4
{
  v43 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(HMMTRAccessoryServerBrowser *)self fabricsWithActiveSecondaryClients];
  if ([v7 count])
  {
    v8 = objc_autoreleasePoolPush();
    v9 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543618;
      v40 = v11;
      v41 = 2112;
      v42 = v7;
      _os_log_impl(&dword_22AEAE000, v10, OS_LOG_TYPE_INFO, "%{public}@Removing fabrics with secondary clients fabricUUIDs: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v12 = v7;
    v13 = [v12 countByEnumeratingWithState:&v33 objects:v38 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v34;
      do
      {
        v16 = 0;
        do
        {
          if (*v34 != v15)
          {
            objc_enumerationMutation(v12);
          }

          [(HMMTRAccessoryServerBrowser *)v9 removeFabricWithActiveSecondaryClients:*(*(&v33 + 1) + 8 * v16++)];
        }

        while (v14 != v16);
        v14 = [v12 countByEnumeratingWithState:&v33 objects:v38 count:16];
      }

      while (v14);
    }
  }

  v17 = [(HMMTRAccessoryServerBrowser *)self fabricsWithActiveClients];
  if ([v17 count])
  {
    v18 = objc_autoreleasePoolPush();
    v19 = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = HMFGetLogIdentifier();
      *buf = 138543618;
      v40 = v21;
      v41 = 2112;
      v42 = v17;
      _os_log_impl(&dword_22AEAE000, v20, OS_LOG_TYPE_INFO, "%{public}@Removing active clients fabricUUIDs: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v18);
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v22 = v17;
    v23 = [v22 countByEnumeratingWithState:&v29 objects:v37 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v30;
      do
      {
        v26 = 0;
        do
        {
          if (*v30 != v25)
          {
            objc_enumerationMutation(v22);
          }

          [(HMMTRAccessoryServerBrowser *)v19 removeFabricWithActiveClients:*(*(&v29 + 1) + 8 * v26++), v29];
        }

        while (v24 != v26);
        v24 = [v22 countByEnumeratingWithState:&v29 objects:v37 count:16];
      }

      while (v24);
    }
  }

  if (v6)
  {
    v27 = [MEMORY[0x277CCA9B8] hmmtrErrorWithCode:a4];
    [(HMMTRAccessoryServerBrowser *)self _handleClientsRemovedWithFabricUUID:v6 updateConnectionIdleTimeout:1 reason:v27];
  }

  v28 = *MEMORY[0x277D85DE8];
}

- (void)handleUpdateNotificationsEnabled:(BOOL)a3 forFabric:(id)a4 keepAliveOnly:(BOOL)a5
{
  v46 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = [v8 targetFabricUUID];
  if (isFeatureMatterLocalFabricConfigEnabled())
  {
    v10 = objc_autoreleasePoolPush();
    v11 = self;
    v12 = HMFGetOSLogHandle();
    v13 = v12;
    if (v9)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        v22 = HMFGetLogIdentifier();
        v21 = HMFBooleanToString();
        v14 = HMFBooleanToString();
        [(HMMTRAccessoryServerBrowser *)v11 currentFabricUUID];
        v15 = v23 = a5;
        v20 = [(HMMTRAccessoryServerBrowser *)v11 browserState];
        [(HMMTRAccessoryServerBrowser *)v11 fabricsWithActiveClients];
        v16 = v24 = v10;
        v17 = [(HMMTRAccessoryServerBrowser *)v11 fabricsWithActiveSecondaryClients];
        *buf = 138545154;
        v31 = v22;
        v32 = 2112;
        v33 = v9;
        v34 = 2112;
        v35 = v21;
        v36 = 2112;
        v37 = v14;
        v38 = 2112;
        v39 = v15;
        v40 = 2048;
        v41 = v20;
        v42 = 2112;
        v43 = v16;
        v44 = 2112;
        v45 = v17;
        _os_log_impl(&dword_22AEAE000, v13, OS_LOG_TYPE_DEBUG, "%{public}@UpdateNotifications received for target fabric UUID:%@ enabled:%@ keepAliveOnly:%@. currentFabricUUID %@, browserState = %lu, fabricsWithActiveClients = %@, fabricWithActiveSecondaryClients = %@", buf, 0x52u);

        v10 = v24;
        a5 = v23;
      }

      objc_autoreleasePoolPop(v10);
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __88__HMMTRAccessoryServerBrowser_handleUpdateNotificationsEnabled_forFabric_keepAliveOnly___block_invoke;
      v25[3] = &unk_2786EEF80;
      v28 = a5;
      v29 = a3;
      v25[4] = v11;
      v26 = v9;
      v27 = v8;
      [(HMMTRAccessoryServerBrowser *)v11 dispatchAfterConfiguration:v25];
    }

    else
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v18 = HMFGetLogIdentifier();
        *buf = 138543618;
        v31 = v18;
        v32 = 2112;
        v33 = v8;
        _os_log_impl(&dword_22AEAE000, v13, OS_LOG_TYPE_ERROR, "%{public}@UpdateNotifications received nil target fabric UUID for fabric: %@. Ignoring request", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v10);
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

void __88__HMMTRAccessoryServerBrowser_handleUpdateNotificationsEnabled_forFabric_keepAliveOnly___block_invoke(uint64_t a1)
{
  v47 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 57);
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (*(a1 + 56) != 1)
  {
    if (!*(a1 + 57))
    {
      v35 = [MEMORY[0x277CCA9B8] hmmtrErrorWithCode:7];
      [v3 removeActiveClientWithFabricUUID:v2 updateConnectionIdleTimeout:0 reason:?];
      goto LABEL_16;
    }

    [*(a1 + 32) addFabricWithActiveClients:v2];
    v7 = [*(a1 + 32) currentFabricUUID];

    if (v7)
    {
      v8 = [*(a1 + 32) currentFabricUUID];
      v9 = [v8 isEqual:*(a1 + 40)];

      if (v9)
      {
        if ([*(a1 + 32) isCurrentDeviceAllowedAccessoryControlDespiteReachableResidentForFabric:*(a1 + 48)] && objc_msgSend(*(a1 + 32), "browserState") != 2)
        {
          v10 = objc_autoreleasePoolPush();
          v11 = *(a1 + 32);
          v12 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
          {
            v13 = HMFGetLogIdentifier();
            v14 = *(a1 + 40);
            *buf = 138543618;
            v42 = v13;
            v43 = 2112;
            v44 = v14;
            _os_log_impl(&dword_22AEAE000, v12, OS_LOG_TYPE_INFO, "%{public}@Starting discovery stack for target fabric UUID %@ because there are active clients", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v10);
          v15 = [*(a1 + 32) workQueue];
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __88__HMMTRAccessoryServerBrowser_handleUpdateNotificationsEnabled_forFabric_keepAliveOnly___block_invoke_357;
          block[3] = &unk_2786F0CA8;
          block[4] = *(a1 + 32);
          dispatch_async(v15, block);
        }

        goto LABEL_30;
      }

      v24 = [*(a1 + 48) delegate];
      if ([v24 isPrimaryResidentNodeReachable])
      {
        v25 = _os_feature_enabled_impl();

        if ((v25 & 1) == 0)
        {
          goto LABEL_30;
        }
      }

      else
      {
      }

      v26 = objc_autoreleasePoolPush();
      v27 = *(a1 + 32);
      v28 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        v29 = HMFGetLogIdentifier();
        v30 = [*(a1 + 32) currentFabricUUID];
        v31 = *(a1 + 40);
        *buf = 138543874;
        v42 = v29;
        v43 = 2112;
        v44 = v30;
        v45 = 2112;
        v46 = v31;
        _os_log_impl(&dword_22AEAE000, v28, OS_LOG_TYPE_INFO, "%{public}@Shutting down active fabric %@ to start new fabric %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v26);
      v32 = [*(a1 + 32) workQueue];
      v36[0] = MEMORY[0x277D85DD0];
      v36[1] = 3221225472;
      v36[2] = __88__HMMTRAccessoryServerBrowser_handleUpdateNotificationsEnabled_forFabric_keepAliveOnly___block_invoke_358;
      v36[3] = &unk_2786EF328;
      v33 = *(a1 + 40);
      v36[4] = *(a1 + 32);
      v37 = v33;
      dispatch_async(v32, v36);

      v23 = v37;
    }

    else
    {
      v17 = objc_autoreleasePoolPush();
      v18 = *(a1 + 32);
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        v20 = HMFGetLogIdentifier();
        v21 = *(a1 + 40);
        *buf = 138543618;
        v42 = v20;
        v43 = 2112;
        v44 = v21;
        _os_log_impl(&dword_22AEAE000, v19, OS_LOG_TYPE_INFO, "%{public}@Starting stack for target fabric UUID %@ because there are active clients and local stack is unconfigured", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v17);
      v22 = *(a1 + 32);
      v39[0] = MEMORY[0x277D85DD0];
      v39[1] = 3221225472;
      v39[2] = __88__HMMTRAccessoryServerBrowser_handleUpdateNotificationsEnabled_forFabric_keepAliveOnly___block_invoke_356;
      v39[3] = &unk_2786EF328;
      v39[4] = v22;
      v40 = *(a1 + 40);
      [v22 dispatchBlock:v39];
      v23 = v40;
    }

LABEL_30:
    v34 = *MEMORY[0x277D85DE8];
    return;
  }

  if (*(a1 + 57))
  {
    v4 = *MEMORY[0x277D85DE8];
    v5 = *(a1 + 32);

    [v5 addFabricWithActiveSecondaryClients:v2];
    return;
  }

  v35 = [MEMORY[0x277CCA9B8] hmmtrErrorWithCode:7];
  [v3 removeActiveSecondaryClientWithFabricUUID:v2 updateConnectionIdleTimeout:0 reason:?];
LABEL_16:
  v16 = *MEMORY[0x277D85DE8];
}

uint64_t __88__HMMTRAccessoryServerBrowser_handleUpdateNotificationsEnabled_forFabric_keepAliveOnly___block_invoke_358(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 currentFabricUUID];
  v4 = [MEMORY[0x277CCA9B8] hmmtrErrorWithCode:5];
  [v2 _abortAllOperationsForFabricUUID:v3 reason:v4];

  v5 = *(a1 + 32);
  v6 = [MEMORY[0x277CCA9B8] hmmtrErrorWithCode:5];
  [v5 _stopMatterStackWithReason:v6];

  v7 = *(a1 + 32);
  v8 = *(a1 + 40);

  return [v7 _setUpUpdatedBrowserTargetFabricUUID:v8];
}

- (void)handleResidentReachabilityChangeForFabric:(id)a3
{
  v37 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 targetFabricUUID];
  if (!isFeatureMatteriPhoneOnlyPairingControlEnabled())
  {
    goto LABEL_18;
  }

  v6 = [(HMMTRAccessoryServerBrowser *)self currentFabricUUID];

  if (v6)
  {
    v7 = [(HMMTRAccessoryServerBrowser *)self currentFabricUUID];
    v8 = [v7 isEqual:v5];

    if (v8)
    {
      if (![(HMMTRAccessoryServerBrowser *)self isCurrentDeviceMobileAndAllowedAccessoryControl]|| [(HMMTRAccessoryServerBrowser *)self browserState]== 2)
      {
        goto LABEL_18;
      }

      v9 = [(HMMTRAccessoryServerBrowser *)self fabricsWithActiveClients];
      if ([v9 containsObject:v5])
      {

LABEL_20:
        v24 = objc_autoreleasePoolPush();
        v25 = self;
        v26 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
        {
          v27 = HMFGetLogIdentifier();
          *buf = 138543618;
          v32 = v27;
          v33 = 2112;
          v34 = v5;
          _os_log_impl(&dword_22AEAE000, v26, OS_LOG_TYPE_INFO, "%{public}@No resident reachable for target fabric UUID %@ and there are active clients, start local stack", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v24);
        v28 = [(HMMTRAccessoryServerBrowser *)v25 delegateQueue];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __73__HMMTRAccessoryServerBrowser_handleResidentReachabilityChangeForFabric___block_invoke;
        block[3] = &unk_2786F0CA8;
        block[4] = v25;
        dispatch_async(v28, block);

        goto LABEL_18;
      }

      v22 = [(HMMTRAccessoryServerBrowser *)self fabricsWithActiveSecondaryClients];
      v23 = [v22 containsObject:v5];

      if (v23)
      {
        goto LABEL_20;
      }

      v11 = objc_autoreleasePoolPush();
      v12 = self;
      v13 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = HMFGetLogIdentifier();
        v29 = [(HMMTRAccessoryServerBrowser *)v12 fabricsWithActiveClients];
        *buf = 138543874;
        v32 = v14;
        v33 = 2112;
        v34 = v5;
        v35 = 2112;
        v36 = v29;
        _os_log_impl(&dword_22AEAE000, v13, OS_LOG_TYPE_INFO, "%{public}@Fabric %@ does not have active clients, fabricsWithActiveClients - %@", buf, 0x20u);

        goto LABEL_12;
      }
    }

    else
    {
      v11 = objc_autoreleasePoolPush();
      v12 = self;
      v13 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = HMFGetLogIdentifier();
        *buf = 138543618;
        v32 = v14;
        v33 = 2112;
        v34 = v5;
        _os_log_impl(&dword_22AEAE000, v13, OS_LOG_TYPE_INFO, "%{public}@Resident reachability changed for non-current target fabric UUID %@, ignoring", buf, 0x16u);
LABEL_12:
      }
    }

    objc_autoreleasePoolPop(v11);
    goto LABEL_18;
  }

  v10 = [(HMMTRAccessoryServerBrowser *)self fabricsWithActiveClients];
  if ([v10 containsObject:v5])
  {
  }

  else
  {
    v15 = [(HMMTRAccessoryServerBrowser *)self fabricsWithActiveSecondaryClients];
    v16 = [v15 containsObject:v5];

    if (!v16)
    {
      goto LABEL_18;
    }
  }

  v17 = objc_autoreleasePoolPush();
  v18 = self;
  v19 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    v20 = HMFGetLogIdentifier();
    *buf = 138543618;
    v32 = v20;
    v33 = 2112;
    v34 = v5;
    _os_log_impl(&dword_22AEAE000, v19, OS_LOG_TYPE_INFO, "%{public}@Starting stack for target fabric UUID %@ because there are active clients and local stack is unconfigured", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v17);
  [(HMMTRAccessoryServerBrowser *)v18 _setUpUpdatedBrowserTargetFabricUUID:v5];
LABEL_18:

  v21 = *MEMORY[0x277D85DE8];
}

void __73__HMMTRAccessoryServerBrowser_handleResidentReachabilityChangeForFabric___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 currentFabricUUID];
  [v1 _setUpUpdatedBrowserTargetFabricUUID:v2];
}

- (void)_updateACLOnPairedAccessories
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = [(HMMTRAccessoryServerBrowser *)self discoveredAccessoryServers];
  v4 = [v3 copy];

  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if (([v9 removalInProgress] & 1) == 0)
        {
          v11[0] = MEMORY[0x277D85DD0];
          v11[1] = 3221225472;
          v11[2] = __60__HMMTRAccessoryServerBrowser__updateACLOnPairedAccessories__block_invoke;
          v11[3] = &unk_2786EF9E0;
          v11[4] = self;
          v11[5] = v9;
          [(HMMTRAccessoryServerBrowser *)self _updateAccessoryControlListForServer:v9 completion:v11];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __60__HMMTRAccessoryServerBrowser__updateACLOnPairedAccessories__block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v8 = *(a1 + 40);
    v10 = 138543618;
    v11 = v7;
    v12 = 2112;
    v13 = v8;
    _os_log_impl(&dword_22AEAE000, v6, OS_LOG_TYPE_INFO, "%{public}@Updated ACL after user CAT update on server %@", &v10, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  v9 = *MEMORY[0x277D85DE8];
}

- (void)updateAccessoryACLForFabric:(id)a3
{
  v4 = [(HAPAccessoryServerBrowser *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__HMMTRAccessoryServerBrowser_updateAccessoryACLForFabric___block_invoke;
  block[3] = &unk_2786F0CA8;
  block[4] = self;
  dispatch_async(v4, block);
}

- (BOOL)isOwnerForHomeWithFabric:(id)a3
{
  v3 = [a3 delegate];
  v4 = [v3 isCurrentUserOwner];

  return v4;
}

- (BOOL)canEstablishConnectionForNodeID:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!isFeatureMatteriPhoneOnlyPairingControlForThreadEnabled())
  {
    goto LABEL_10;
  }

  v5 = [(HMMTRAccessoryServerBrowser *)self threadRadioManager];
  v6 = [v5 deviceSupportsThreadService];

  if (!v6 || ![(HMMTRAccessoryServerBrowser *)self isCurrentDeviceAllowedAccessoryControlDespiteReachableResident])
  {
    goto LABEL_10;
  }

  v7 = [(HMMTRAccessoryServerBrowser *)self accessoryServerWithNodeID:v4];
  if (!v7)
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
      v20 = v4;
      _os_log_impl(&dword_22AEAE000, v13, OS_LOG_TYPE_ERROR, "%{public}@Could not associate with a paired accessory for canEstablishConnectionForNodeID:%@", &v17, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    goto LABEL_10;
  }

  v8 = v7;
  v9 = [v7 linkLayerType] & 0xFFFFFFFFFFFFFFFBLL;

  if (v9)
  {
LABEL_10:
    v10 = 0;
    goto LABEL_11;
  }

  v10 = 1;
LABEL_11:

  v15 = *MEMORY[0x277D85DE8];
  return v10;
}

- (BOOL)isCurrentDeviceMobileAndResidentReachable
{
  v2 = [(HMMTRAccessoryServerBrowser *)self currentFabric];
  if (isFeatureMatteriPhoneOnlyPairingControlEnabled())
  {
    v3 = [v2 delegate];
    v4 = [v3 isPrimaryResidentNodeReachable];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)isCurrentDeviceAllowedAccessoryControlDespiteReachableResident
{
  v2 = self;
  v3 = [(HMMTRAccessoryServerBrowser *)self currentFabric];
  LOBYTE(v2) = [(HMMTRAccessoryServerBrowser *)v2 isCurrentDeviceAllowedAccessoryControlDespiteReachableResidentForFabric:v3];

  return v2;
}

- (BOOL)isCurrentDeviceAllowedAccessoryControlPerExplicitRequestDespiteReachableResidentForFabric:(id)a3
{
  result = isFeatureMatteriPhoneOnlyPairingControlEnabled();
  if (!a3)
  {
    return 0;
  }

  return result;
}

- (BOOL)isCurrentDeviceAllowedAccessoryControlDespiteReachableResidentForFabricUUID:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(HMMTRAccessoryServerBrowser *)self systemCommissionerFabricUUID];
    v6 = [v4 isEqual:v5];

    if (v6)
    {
      v7 = 1;
    }

    else
    {
      v8 = [(HMMTRAccessoryServerBrowser *)self appleHomeFabricWithTargetFabricUUID:v4];
      v7 = [(HMMTRAccessoryServerBrowser *)self isCurrentDeviceAllowedAccessoryControlDespiteReachableResidentForFabric:v8];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)isCurrentDeviceAllowedAccessoryControlDespiteReachableResidentForFabric:(id)a3
{
  v3 = a3;
  v4 = isFeatureMatteriPhoneOnlyPairingControlEnabled();
  LOBYTE(v5) = 0;
  if (v3 && v4)
  {
    v6 = [v3 delegate];
    v5 = [v6 isPrimaryResidentNodeReachable] ^ 1;
  }

  return v5;
}

- (BOOL)isCurrentDeviceMobileAndAllowedAccessoryControl
{
  v2 = self;
  v3 = [(HMMTRAccessoryServerBrowser *)self currentFabric];
  if (isFeatureMatteriPhoneOnlyPairingControlEnabled())
  {
    v4 = [(HMMTRAccessoryServerBrowser *)v2 currentFabricUUID];

    LOBYTE(v2) = 0;
    if (v4 && v3)
    {
      v5 = [v3 delegate];
      LODWORD(v2) = [v5 isPrimaryResidentNodeReachable] ^ 1;
    }
  }

  else
  {
    LOBYTE(v2) = 0;
  }

  return v2;
}

- (void)handlePrimaryResidentDataReady
{
  v3 = [(HAPAccessoryServerBrowser *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__HMMTRAccessoryServerBrowser_handlePrimaryResidentDataReady__block_invoke;
  block[3] = &unk_2786F0CA8;
  block[4] = self;
  dispatch_async(v3, block);
}

uint64_t __61__HMMTRAccessoryServerBrowser_handlePrimaryResidentDataReady__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  if (([*(a1 + 32) isCurrentDevicePrimaryResident] & 1) != 0 || (result = objc_msgSend(*(a1 + 32), "isCurrentDeviceMobileAndAllowedAccessoryControl"), result))
  {
    v3 = [*(a1 + 32) controllerFactoryEnablePerPrimaryResidentConfirmationToken];

    if (v3)
    {
      v4 = [*(a1 + 32) controllerFactory];
      v5 = [*(a1 + 32) controllerFactoryEnablePerPrimaryResidentConfirmationToken];
      [v4 enableNormalOperationWithToken:v5];

      [*(a1 + 32) setControllerFactoryEnablePerPrimaryResidentConfirmationToken:0];
    }

    v6 = objc_autoreleasePoolPush();
    v7 = *(a1 + 32);
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v11 = 138543362;
      v12 = v9;
      _os_log_impl(&dword_22AEAE000, v8, OS_LOG_TYPE_INFO, "%{public}@Primary resident data is ready. Re-enumerating accessories from storage", &v11, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    result = [*(a1 + 32) _reenumeratePairedDevices];
  }

  v10 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)handleDeviceNoLongerPrimaryResidentWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CCA9B8] hmmtrErrorWithCode:10];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __81__HMMTRAccessoryServerBrowser_handleDeviceNoLongerPrimaryResidentWithCompletion___block_invoke;
  v7[3] = &unk_2786EF5A8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [(HMMTRAccessoryServerBrowser *)self invalidateAllDiscoveredServersWithReason:v5 completion:v7];
}

void __81__HMMTRAccessoryServerBrowser_handleDeviceNoLongerPrimaryResidentWithCompletion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  if ((isFeatureMatterRVCEnabled() & 1) == 0)
  {
    v3 = [*(a1 + 32) controllerFactoryEnablePerPrimaryResidentConfirmationToken];

    if (!v3)
    {
      v4 = [*(a1 + 32) homeFabricControllers];
      [v4 removeAllGetters];

      v6 = [*(a1 + 32) controllerFactory];
      v5 = [v6 disableNormalOperation];
      [*(a1 + 32) setControllerFactoryEnablePerPrimaryResidentConfirmationToken:v5];
    }
  }
}

- (void)storageDidUpdateData:(id)a3 isLocalChange:(BOOL)a4
{
  v43 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [v6 fabricID];

  if (!v7)
  {
    v28 = objc_autoreleasePoolPush();
    v29 = self;
    v30 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
    {
      v31 = HMFGetLogIdentifier();
      *buf = 138543362;
      v38 = v31;
      v32 = "%{public}@Updated storage doesn't contain fabric ID; ignoring the update";
LABEL_15:
      _os_log_impl(&dword_22AEAE000, v30, OS_LOG_TYPE_INFO, v32, buf, 0xCu);
    }

LABEL_16:

    objc_autoreleasePoolPop(v28);
    goto LABEL_17;
  }

  v8 = [(HMMTRAccessoryServerBrowser *)self storage];
  v9 = [v8 fabricDataSource];

  if (!v9)
  {
    v28 = objc_autoreleasePoolPush();
    v29 = self;
    v30 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
    {
      v31 = HMFGetLogIdentifier();
      *buf = 138543362;
      v38 = v31;
      v32 = "%{public}@CHIP Storage updated for other fabric; ignoring the update";
      goto LABEL_15;
    }

    goto LABEL_16;
  }

  if (!a4)
  {
    v10 = objc_autoreleasePoolPush();
    v11 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      v14 = [v6 fabricID];
      v35 = [(HMMTRAccessoryServerBrowser *)v11 storage];
      v34 = [v35 fabricDataSource];
      [v34 keyValueStore];
      v15 = v36 = v10;
      v16 = [v15 allKeys];
      v17 = [v16 sortedArrayUsingSelector:sel_caseInsensitiveCompare_];
      *buf = 138543874;
      v38 = v13;
      v39 = 2112;
      v40 = v14;
      v41 = 2112;
      v42 = v17;
      _os_log_impl(&dword_22AEAE000, v12, OS_LOG_TYPE_INFO, "%{public}@CHIP Storage updated for fabric ID = %@. Currently contains %@", buf, 0x20u);

      v10 = v36;
    }

    objc_autoreleasePoolPop(v10);
  }

  v18 = [(HMMTRAccessoryServerBrowser *)self homeFabricControllers];
  v19 = [(HMMTRAccessoryServerBrowser *)self storage];
  v20 = [v19 dataSource];
  v21 = [v20 allTargetFabricUUIDs];
  [v18 updateAllTargetFabricUUIDs:v21];

  v22 = objc_autoreleasePoolPush();
  v23 = self;
  v24 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
  {
    v25 = HMFGetLogIdentifier();
    [(HMMTRAccessoryServerBrowser *)v23 isCurrentDevicePrimaryResident];
    v26 = HMFBooleanToString();
    v27 = HMFBooleanToString();
    *buf = 138543874;
    v38 = v25;
    v39 = 2112;
    v40 = v26;
    v41 = 2112;
    v42 = v27;
    _os_log_impl(&dword_22AEAE000, v24, OS_LOG_TYPE_INFO, "%{public}@Partially handling data storage update as isPrimaryResident = %@, isLocalChange = %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v22);
  if (!a4)
  {
    [(HMMTRAccessoryServerBrowser *)v23 _updateLocallyDiscoveredServerPairedStates];
  }

LABEL_17:

  v33 = *MEMORY[0x277D85DE8];
}

- (void)_stopSystemCommissionerFabricWithReason:(id)a3
{
  v38 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543362;
    v37 = v8;
    _os_log_impl(&dword_22AEAE000, v7, OS_LOG_TYPE_INFO, "%{public}@Stopping operation with system commissioner fabric", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [MEMORY[0x277CBEB18] array];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v10 = v6->_discoveredAccessoryServers;
  v11 = [(NSMutableSet *)v10 countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v31;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v31 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v30 + 1) + 8 * i);
        if ([v15 knownToSystemCommissioner])
        {
          [v9 addObject:v15];
        }
      }

      v12 = [(NSMutableSet *)v10 countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v12);
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v16 = v9;
  v17 = [v16 countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v27;
    do
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v27 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v26 + 1) + 8 * j);
        [v21 disable];
        [(HMMTRAccessoryServerBrowser *)v6 _invalidateAccessoryServer:v21 reason:v4 withCompletion:0];
      }

      v18 = [v16 countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v18);
  }

  v22 = [(HMMTRAccessoryServerBrowser *)v6 systemCommissionerFabricUUID];
  [(HMMTRAccessoryServerBrowser *)v6 _suspendOperationsForTargetFabricUUID:v22];

  v23 = [(HMMTRAccessoryServerBrowser *)v6 threadRadioManager];
  v24 = [(HMMTRAccessoryServerBrowser *)v6 systemCommissionerFabricUUID];
  [v23 stopThreadRadioForSystemCommissionerFabricUUID:v24];

  v25 = *MEMORY[0x277D85DE8];
}

- (void)_disconnectFromIdleFabric:(id)a3 reason:(id)a4
{
  v51 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMMTRAccessoryServerBrowser *)self currentFabricUUID];
  v9 = HMFEqualObjects();

  if (v9)
  {
    v10 = [(HMMTRAccessoryServerBrowser *)self fabricsWithActiveClients];
    v11 = [(HMMTRAccessoryServerBrowser *)self currentFabricUUID];
    if ([v10 containsObject:v11])
    {

LABEL_11:
      v27 = objc_autoreleasePoolPush();
      v28 = self;
      v29 = HMFGetOSLogHandle();
      if (!os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
LABEL_14:

        objc_autoreleasePoolPop(v27);
        goto LABEL_15;
      }

      v30 = HMFGetLogIdentifier();
      v31 = [(HMMTRAccessoryServerBrowser *)v28 currentFabricUUID];
      v32 = [(HMMTRAccessoryServerBrowser *)v28 fabricsWithActiveClients];
      v33 = [(HMMTRAccessoryServerBrowser *)v28 fabricsWithActiveSecondaryClients];
      v43 = 138544130;
      v44 = v30;
      v45 = 2112;
      v46 = v31;
      v47 = 2112;
      v48 = v32;
      v49 = 2112;
      v50 = v33;
      v34 = "%{public}@Connection has become idle but there are still active clients, keeping matter stack active for fabric %@. Fabrics with active clients: %@, secondary clients: %@";
LABEL_13:
      _os_log_impl(&dword_22AEAE000, v29, OS_LOG_TYPE_INFO, v34, &v43, 0x2Au);

      goto LABEL_14;
    }

    v24 = [(HMMTRAccessoryServerBrowser *)self fabricsWithActiveSecondaryClients];
    v25 = [(HMMTRAccessoryServerBrowser *)self currentFabricUUID];
    v26 = [v24 containsObject:v25];

    if (v26)
    {
      goto LABEL_11;
    }

    v36 = [(HMMTRAccessoryServerBrowser *)self threadSoftwareUpdateController];
    v37 = [(HMMTRAccessoryServerBrowser *)self currentFabricUUID];
    v38 = [v36 isFirmwareUpdateInProgressForFabricUUID:v37];

    v27 = objc_autoreleasePoolPush();
    v28 = self;
    v29 = HMFGetOSLogHandle();
    v39 = os_log_type_enabled(v29, OS_LOG_TYPE_INFO);
    if (v38)
    {
      if (!v39)
      {
        goto LABEL_14;
      }

      v30 = HMFGetLogIdentifier();
      v31 = [(HMMTRAccessoryServerBrowser *)v28 currentFabricUUID];
      v32 = [(HMMTRAccessoryServerBrowser *)v28 fabricsWithActiveClients];
      v33 = [(HMMTRAccessoryServerBrowser *)v28 fabricsWithActiveSecondaryClients];
      v43 = 138544130;
      v44 = v30;
      v45 = 2112;
      v46 = v31;
      v47 = 2112;
      v48 = v32;
      v49 = 2112;
      v50 = v33;
      v34 = "%{public}@Connection has become idle, but FW update is active, keeping matter stack active for fabric %@. Fabrics with active clients: %@, secondary clients: %@";
      goto LABEL_13;
    }

    if (v39)
    {
      v40 = HMFGetLogIdentifier();
      v41 = [(HMMTRAccessoryServerBrowser *)v28 currentFabricUUID];
      v42 = [(HMMTRAccessoryServerBrowser *)v28 fabricsWithActiveClients];
      v43 = 138543874;
      v44 = v40;
      v45 = 2112;
      v46 = v41;
      v47 = 2112;
      v48 = v42;
      _os_log_impl(&dword_22AEAE000, v29, OS_LOG_TYPE_INFO, "%{public}@Connection has become idle, shutting down matter stack for fabric %@. Fabrics with active clients: %@", &v43, 0x20u);
    }

    objc_autoreleasePoolPop(v27);
    [(HMMTRAccessoryServerBrowser *)v28 _stopMatterStackWithReason:v7];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v12 = [(HMMTRAccessoryServerBrowser *)self systemCommissionerFabricUUID];
    v13 = HMFEqualObjects();

    if (!v13)
    {
      goto LABEL_7;
    }

    v14 = [(HMMTRAccessoryServerBrowser *)self fabricsWithActiveClients];
    v15 = [v14 containsObject:v6];

    if ((v15 & 1) == 0)
    {
      [(HMMTRAccessoryServerBrowser *)self _stopSystemCommissionerFabricWithReason:v7];
    }

    else
    {
LABEL_7:
      v16 = objc_autoreleasePoolPush();
      v17 = self;
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = HMFGetLogIdentifier();
        v20 = [(HMMTRAccessoryServerBrowser *)v17 currentFabricUUID];
        v21 = [(HMMTRAccessoryServerBrowser *)v17 fabricsWithActiveClients];
        v43 = 138544130;
        v44 = v19;
        v45 = 2112;
        v46 = v6;
        v47 = 2112;
        v48 = v20;
        v49 = 2112;
        v50 = v21;
        _os_log_impl(&dword_22AEAE000, v18, OS_LOG_TYPE_ERROR, "%{public}@Fabric %@ has become idle, but current fabric is %@, not stopping current matter stack. fabrics with active clients:%@", &v43, 0x2Au);
      }

      objc_autoreleasePoolPop(v16);
      v22 = [(HMMTRAccessoryServerBrowser *)v17 homeFabricControllers];
      v23 = [v22 cachedWrapperWithTargetFabricUUID:v6];
      [v23 suspendOrShutdown];
    }
  }

LABEL_15:

  v35 = *MEMORY[0x277D85DE8];
}

- (void)_storageDidBecomeAvailable:(id)a3
{
  v52 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMMTRAccessoryServerBrowser *)self storage];
  v6 = [v5 fabricID];

  if (!v6)
  {
    v9 = objc_autoreleasePoolPush();
    v10 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v40 = HMFGetLogIdentifier();
      *buf = 138543362;
      v49 = v40;
      v41 = "%{public}@Updated storage doesn't contain fabric ID; ignoring the update";
LABEL_25:
      _os_log_impl(&dword_22AEAE000, v11, OS_LOG_TYPE_INFO, v41, buf, 0xCu);
    }

LABEL_26:

    objc_autoreleasePoolPop(v9);
    goto LABEL_28;
  }

  v7 = [(HMMTRAccessoryServerBrowser *)self storage];
  v8 = [v7 fabricDataSource];

  v9 = objc_autoreleasePoolPush();
  v10 = self;
  v11 = HMFGetOSLogHandle();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_INFO);
  if (!v8)
  {
    if (v12)
    {
      v40 = HMFGetLogIdentifier();
      *buf = 138543362;
      v49 = v40;
      v41 = "%{public}@CHIP Storage updated for other fabric; ignoring";
      goto LABEL_25;
    }

    goto LABEL_26;
  }

  if (v12)
  {
    v13 = HMFGetLogIdentifier();
    v14 = [(HMMTRAccessoryServerBrowser *)v10 storage];
    v15 = [v14 fabricDataSource];
    v16 = [v15 keyValueStore];
    *buf = 138543618;
    v49 = v13;
    v50 = 2112;
    v51 = v16;
    _os_log_impl(&dword_22AEAE000, v11, OS_LOG_TYPE_INFO, "%{public}@CHIP Storage is available. Currently contains %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v9);
  v17 = objc_autoreleasePoolPush();
  v18 = v10;
  v19 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    v20 = HMFGetLogIdentifier();
    v21 = [(HMMTRAccessoryServerBrowser *)v18 storage];
    v22 = [v21 fabricDataSource];
    v23 = [v22 allNodeIDs];
    *buf = 138543618;
    v49 = v20;
    v50 = 2112;
    v51 = v23;
    _os_log_impl(&dword_22AEAE000, v19, OS_LOG_TYPE_INFO, "%{public}@Currently paired nodes %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v17);
  if ([(HMMTRAccessoryServerBrowser *)v18 isCurrentDeviceMobileAndAllowedAccessoryControl])
  {
    v24 = [(HMMTRAccessoryServerBrowser *)v18 storage];
    v25 = [v24 fabricUUID];
    [(HMMTRAccessoryServerBrowser *)v18 _setUpBrowserTargetFabricUUID:v25];

    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v26 = [(HMMTRAccessoryServerBrowser *)v18 storage];
    v27 = [v26 fabricDataSource];
    v28 = [v27 allNodeIDs];

    v29 = [v28 countByEnumeratingWithState:&v43 objects:v47 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = *v44;
      do
      {
        for (i = 0; i != v30; ++i)
        {
          if (*v44 != v31)
          {
            objc_enumerationMutation(v28);
          }

          v33 = *(*(&v43 + 1) + 8 * i);
          if (v33 && ([*(*(&v43 + 1) + 8 * i) isEqual:&unk_283EE87C0] & 1) == 0)
          {
            v34 = [(HMMTRAccessoryServerBrowser *)v18 nodesAddedToHome];
            [v34 addObject:v33];
          }
        }

        v30 = [v28 countByEnumeratingWithState:&v43 objects:v47 count:16];
      }

      while (v30);
    }

    v35 = objc_autoreleasePoolPush();
    v36 = v18;
    v37 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
    {
      v38 = HMFGetLogIdentifier();
      v39 = [(HMMTRAccessoryServerBrowser *)v36 nodesAddedToHome];
      *buf = 138543618;
      v49 = v38;
      v50 = 2112;
      v51 = v39;
      _os_log_impl(&dword_22AEAE000, v37, OS_LOG_TYPE_INFO, "%{public}@All nodes to add when storage became available: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v35);
    [(HMMTRAccessoryServerBrowser *)v36 setupPairedDevices];
    [(HMMTRAccessoryServerBrowser *)v36 startDiscoveringAccessoryServersWithNoResponseToDelegate];
  }

  else
  {
    [(HMMTRAccessoryServerBrowser *)v18 _cleanupStagedServers];
  }

LABEL_28:

  v42 = *MEMORY[0x277D85DE8];
}

- (void)storageDidBecomeAvailable:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __57__HMMTRAccessoryServerBrowser_storageDidBecomeAvailable___block_invoke;
  v6[3] = &unk_2786EF328;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(HMMTRAccessoryServerBrowser *)self dispatchBlock:v6];
}

- (void)_notifyDelegateOfPairingStep:(unint64_t)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = HMMTRAccessoryPairingStepAsString(a3);
    v14 = 138543618;
    v15 = v8;
    v16 = 2112;
    v17 = v9;
    _os_log_impl(&dword_22AEAE000, v7, OS_LOG_TYPE_INFO, "%{public}@Notifying matter petric pairing step %@", &v14, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v10 = [(HMMTRAccessoryServerBrowser *)v6 delegate];
  if ([v10 conformsToProtocol:&unk_283F23578])
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  [v12 notifyMatterAccessoryPairingStep:a3];
  v13 = *MEMORY[0x277D85DE8];
}

- (void)setPairingTargetFabricData:(id)a3 targetFabricUUID:(id)a4
{
  v7 = a3;
  v6 = a4;
  os_unfair_lock_lock_with_options();
  [(NSMutableDictionary *)self->_fabricDataPerPairingTargetFabricUUID setObject:v7 forKeyedSubscript:v6];
  os_unfair_lock_unlock(&self->_pairingTargetFabricDataLock);
}

- (id)createSystemCommissionerFabricNOCWithSigningCertificate:(id)a3 operationalPublicKey:(__SecKey *)a4 fabricID:(id)a5 nodeID:(id)a6 caseAuthenticatedTags:(id)a7 error:(id *)a8
{
  v14 = MEMORY[0x277CD5230];
  v15 = a7;
  v16 = a6;
  v17 = a5;
  v18 = a3;
  v19 = [(HMMTRAccessoryServerBrowser *)self systemCommissionerNocSigner];
  v20 = [v14 createOperationalCertificate:v19 signingCertificate:v18 operationalPublicKey:a4 fabricID:v17 nodeID:v16 caseAuthenticatedTags:v15 error:a8];

  return v20;
}

- (void)createNewSystemCommissionerFabricNodeIDWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(HAPAccessoryServerBrowser *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __85__HMMTRAccessoryServerBrowser_createNewSystemCommissionerFabricNodeIDWithCompletion___block_invoke;
  v7[3] = &unk_2786EF5A8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __85__HMMTRAccessoryServerBrowser_createNewSystemCommissionerFabricNodeIDWithCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) systemCommissionerFabricID];

  if (v2)
  {
    v3 = [*(a1 + 32) systemCommissionerPairingManager];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __85__HMMTRAccessoryServerBrowser_createNewSystemCommissionerFabricNodeIDWithCompletion___block_invoke_2;
    v6[3] = &unk_2786EEF58;
    v7 = *(a1 + 40);
    [v3 fetchSystemCommissionerPairingsWithCompletionHandler:v6];
  }

  else
  {
    v4 = *(a1 + 40);
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{+[HMMTRUtilities randomNodeID](HMMTRUtilities, "randomNodeID")}];
    (*(v4 + 16))(v4, v5);
  }
}

void __85__HMMTRAccessoryServerBrowser_createNewSystemCommissionerFabricNodeIDWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 na_map:&__block_literal_global_353_9096];
  v10 = v3;
  if (v3)
  {
    [MEMORY[0x277CBEB98] setWithArray:v3];
  }

  else
  {
    [MEMORY[0x277CBEB98] set];
  }
  v4 = ;
  do
  {
    v5 = +[HMMTRUtilities randomNodeID];
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v5];
    v7 = [v4 containsObject:v6];
  }

  while ((v7 & 1) != 0);
  v8 = *(a1 + 32);
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v5];
  (*(v8 + 16))(v8, v9);
}

- (void)fetchSystemCommissionerRootCertificateWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(HAPAccessoryServerBrowser *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __84__HMMTRAccessoryServerBrowser_fetchSystemCommissionerRootCertificateWithCompletion___block_invoke;
  v7[3] = &unk_2786EF5A8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __84__HMMTRAccessoryServerBrowser_fetchSystemCommissionerRootCertificateWithCompletion___block_invoke(uint64_t a1)
{
  v52 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) systemCommissionerControllerParams];
  v44 = 0;
  v45 = 0;
  v3 = [v2 fetchControllerParamsAllowingNew:1 nocSigner:&v45 controllerWrapper:&v44];
  v4 = v45;
  v5 = v44;

  if ((v3 & 1) == 0)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = *(a1 + 32);
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      *buf = 138543362;
      v47 = v9;
      _os_log_impl(&dword_22AEAE000, v8, OS_LOG_TYPE_ERROR, "%{public}@System commissioner controller parameters could not be fetched. No certs are fetched.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    v10 = *(a1 + 40);
    v11 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CD5120] code:6 userInfo:0];
    (*(v10 + 16))(v10, 0, 0, 0, 0, v11);
  }

  v12 = [v5 startupParams];
  if (v12)
  {
    v13 = objc_alloc(MEMORY[0x277CD5228]);
    v14 = MEMORY[0x277CD5230];
    v15 = [v12 operationalCertificate];
    v16 = [v14 convertX509Certificate:v15];
    v17 = [v13 initWithTLVBytes:v16];

    v18 = [v17 subject];
    v19 = [v18 nodeID];

    v20 = objc_autoreleasePoolPush();
    v21 = *(a1 + 32);
    v22 = HMFGetOSLogHandle();
    v23 = v22;
    if (v19)
    {
      v43 = v5;
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v24 = HMFGetLogIdentifier();
        [v12 fabricID];
        v25 = v42 = v4;
        v26 = [v17 subject];
        v27 = [v26 nodeID];
        *buf = 138543874;
        v47 = v24;
        v48 = 2112;
        v49 = v25;
        v50 = 2112;
        v51 = v27;
        _os_log_impl(&dword_22AEAE000, v23, OS_LOG_TYPE_INFO, "%{public}@Fetching system commissioner certs for fabric ID %@ and controller node ID %@", buf, 0x20u);

        v4 = v42;
      }

      objc_autoreleasePoolPop(v20);
      v28 = *(a1 + 40);
      v29 = [v12 rootCertificate];
      v30 = [v12 fabricID];
      v31 = [v12 ipk];
      v32 = [v17 subject];
      v33 = [v32 nodeID];
      (*(v28 + 16))(v28, v29, v30, v31, v33, 0);

      v5 = v43;
    }

    else
    {
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v39 = HMFGetLogIdentifier();
        *buf = 138543362;
        v47 = v39;
        _os_log_impl(&dword_22AEAE000, v23, OS_LOG_TYPE_ERROR, "%{public}@System commissioner operational cert missing controller node ID. No certs are fetched.", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v20);
      v40 = *(a1 + 40);
      v29 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CD5120] code:6 userInfo:0];
      (*(v40 + 16))(v40, 0, 0, 0, 0, v29);
    }
  }

  else
  {
    v34 = objc_autoreleasePoolPush();
    v35 = *(a1 + 32);
    v36 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      v37 = HMFGetLogIdentifier();
      *buf = 138543362;
      v47 = v37;
      _os_log_impl(&dword_22AEAE000, v36, OS_LOG_TYPE_ERROR, "%{public}@System commissioner controller parameters are not available. No certs are fetched.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v34);
    v38 = *(a1 + 40);
    v17 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CD5120] code:6 userInfo:0];
    (*(v38 + 16))(v38, 0, 0, 0, 0, v17);
  }

  v41 = *MEMORY[0x277D85DE8];
}

- (id)_getSystemCommissionerFabricRootCertificateWithIndex:(id)a3 ipk:(id *)a4 controllerNodeID:(id *)a5
{
  v106 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = objc_alloc_init(MEMORY[0x277CD55A8]);
  v10 = v9;
  if (v9)
  {
    v11 = [v9 storedValueForKey:@"IPK"];
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

    if (v13)
    {
      v14 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:v13 options:0];
      *a4 = v14;

      if (*a4)
      {
        v15 = objc_autoreleasePoolPush();
        v16 = self;
        v17 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          v18 = HMFGetLogIdentifier();
          *buf = 138543362;
          v101 = v18;
          v19 = "%{public}@IPK retrieved from MatterSupport storage";
          v20 = v17;
          v21 = OS_LOG_TYPE_DEBUG;
LABEL_15:
          _os_log_impl(&dword_22AEAE000, v20, v21, v19, buf, 0xCu);

          goto LABEL_16;
        }

        goto LABEL_16;
      }
    }

    else
    {
      *a4 = 0;
    }

    v15 = objc_autoreleasePoolPush();
    v27 = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      *buf = 138543362;
      v101 = v18;
      v19 = "%{public}@No IPK in MatterSupport storage";
      v20 = v17;
      v21 = OS_LOG_TYPE_INFO;
      goto LABEL_15;
    }

LABEL_16:

    objc_autoreleasePoolPop(v15);
    if (v8)
    {
      v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"f/%x/r", objc_msgSend(v8, "unsignedIntValue")];
      v29 = [MEMORY[0x277CCACA8] stringWithFormat:@"f/%x/n", objc_msgSend(v8, "unsignedIntValue")];
      v99 = v28;
      v30 = [v10 storedValueForKey:v28];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v31 = v30;
      }

      else
      {
        v31 = 0;
      }

      v32 = v31;

      if (v32 && (v33 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:v32 options:0]) != 0)
      {
        v34 = v33;
        v94 = a5;
        v98 = v29;
        v35 = [MEMORY[0x277CD5230] convertMatterCertificate:v33];
        v36 = MEMORY[0x277CD5230];
        v37 = [(HMMTRAccessoryServerBrowser *)self systemCommissionerNocSigner];
        v97 = v35;
        LOBYTE(v36) = [v36 keypair:v37 matchesCertificate:v35];

        if (v36)
        {
          v38 = [v10 storedValueForKey:v98];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v39 = v38;
          }

          else
          {
            v39 = 0;
          }

          v40 = v39;

          if (v40 && (v41 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:v40 options:0]) != 0)
          {
            v42 = v41;
            v90 = v34;
            v43 = [objc_alloc(MEMORY[0x277CD5228]) initWithTLVBytes:v41];
            v44 = [v43 subject];
            v45 = [v44 fabricID];

            v46 = [(HMMTRAccessoryServerBrowser *)self systemCommissionerFabricID];
            v91 = v45;
            LOBYTE(v45) = [v45 isEqual:v46];

            v88 = v43;
            v89 = v42;
            if (v45)
            {
              v92 = v40;
              v47 = [v43 subject];
              v48 = [v47 nodeID];

              v49 = objc_autoreleasePoolPush();
              v50 = self;
              v51 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
              {
                v52 = HMFGetLogIdentifier();
                v53 = [v8 unsignedIntValue];
                *buf = 138544130;
                v101 = v52;
                v102 = 2112;
                *v103 = v91;
                *&v103[8] = 1024;
                *&v103[10] = v53;
                v104 = 2112;
                v105 = v48;
                _os_log_impl(&dword_22AEAE000, v51, OS_LOG_TYPE_DEBUG, "%{public}@Retrieved root cert for fabric ID %@ with fabric index 0x%x. Controller node ID is %@.", buf, 0x26u);
              }

              objc_autoreleasePoolPop(v49);
              v54 = v48;
              v55 = v97;
              *v94 = v48;
              v26 = v97;

              v29 = v98;
              v34 = v90;
              v40 = v92;
            }

            else
            {
              v79 = objc_autoreleasePoolPush();
              v80 = self;
              v81 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v81, OS_LOG_TYPE_DEBUG))
              {
                v82 = HMFGetLogIdentifier();
                v83 = [v8 unsignedIntValue];
                [(HMMTRAccessoryServerBrowser *)v80 systemCommissionerFabricID];
                v96 = v79;
                v85 = v84 = v40;
                *buf = 138544130;
                v101 = v82;
                v102 = 1024;
                *v103 = v83;
                *&v103[4] = 2112;
                *&v103[6] = v91;
                v104 = 2112;
                v105 = v85;
                _os_log_impl(&dword_22AEAE000, v81, OS_LOG_TYPE_DEBUG, "%{public}@f/%x/n fabric ID %@ doesn't match system commissioner fabric ID %@", buf, 0x26u);

                v40 = v84;
                v79 = v96;
              }

              objc_autoreleasePoolPop(v79);
              v26 = 0;
              v55 = v97;
              v29 = v98;
              v34 = v90;
            }
          }

          else
          {
            v93 = v40;
            v72 = objc_autoreleasePoolPush();
            v73 = self;
            v74 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
            {
              v75 = HMFGetLogIdentifier();
              v76 = v34;
              v77 = [v8 unsignedIntValue];
              v78 = [v8 unsignedIntValue];
              *buf = 138543874;
              v101 = v75;
              v102 = 1024;
              *v103 = v77;
              v34 = v76;
              *&v103[4] = 1024;
              *&v103[6] = v78;
              _os_log_impl(&dword_22AEAE000, v74, OS_LOG_TYPE_ERROR, "%{public}@f/%x/r doesn't have matching f/%x/n", buf, 0x18u);
            }

            objc_autoreleasePoolPop(v72);
            v26 = 0;
            v55 = v97;
            v29 = v98;
            v40 = v93;
          }
        }

        else
        {
          v65 = objc_autoreleasePoolPush();
          v66 = self;
          v67 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
          {
            v68 = HMFGetLogIdentifier();
            v95 = v65;
            v69 = v34;
            v70 = [v8 unsignedIntValue];
            v71 = [(HMMTRAccessoryServerBrowser *)v66 systemCommissionerNocSigner];
            *buf = 138543874;
            v101 = v68;
            v102 = 1024;
            *v103 = v70;
            v34 = v69;
            v65 = v95;
            *&v103[4] = 2112;
            *&v103[6] = v71;
            _os_log_impl(&dword_22AEAE000, v67, OS_LOG_TYPE_ERROR, "%{public}@f/%x/r doesn't match system commissioner keypair %@", buf, 0x1Cu);
          }

          objc_autoreleasePoolPop(v65);
          v26 = 0;
          v55 = v97;
          v29 = v98;
        }
      }

      else
      {
        v56 = objc_autoreleasePoolPush();
        v57 = self;
        v58 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
        {
          v59 = HMFGetLogIdentifier();
          v60 = [v8 unsignedIntValue];
          *buf = 138543618;
          v101 = v59;
          v102 = 1024;
          *v103 = v60;
          _os_log_impl(&dword_22AEAE000, v58, OS_LOG_TYPE_ERROR, "%{public}@f/%x/r isn't base64 encoded", buf, 0x12u);
        }

        objc_autoreleasePoolPop(v56);
        v26 = 0;
      }
    }

    else
    {
      v61 = objc_autoreleasePoolPush();
      v62 = self;
      v63 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v63, OS_LOG_TYPE_DEBUG))
      {
        v64 = HMFGetLogIdentifier();
        *buf = 138543362;
        v101 = v64;
        _os_log_impl(&dword_22AEAE000, v63, OS_LOG_TYPE_DEBUG, "%{public}@Not fetching root cert since fabric index is unknown", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v61);
      v26 = 0;
    }

    goto LABEL_52;
  }

  v22 = objc_autoreleasePoolPush();
  v23 = self;
  v24 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    v25 = HMFGetLogIdentifier();
    *buf = 138543362;
    v101 = v25;
    _os_log_impl(&dword_22AEAE000, v24, OS_LOG_TYPE_ERROR, "%{public}@Couldn't access MatterSupport key store", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v22);
  v26 = 0;
LABEL_52:

  v86 = *MEMORY[0x277D85DE8];

  return v26;
}

- (id)_serverFromMTSDevicePairing:(id)a3
{
  v4 = a3;
  v5 = [HMMTRAccessoryServerFactory alloc];
  v6 = [(HAPAccessoryServerBrowser *)self keyStore];
  v7 = [(HMMTRAccessoryServerFactory *)v5 initWithKeystore:v6 browser:self];

  v8 = [v4 nodeID];
  v9 = [v4 vendorID];
  v10 = [v4 productID];
  v11 = [v4 serialNumber];
  v12 = [(HMMTRAccessoryServerFactory *)v7 vendAccessoryServerWithNodeID:v8 setupCode:0 discriminator:0 category:0 vendorID:v9 productID:v10 serialNumber:v11 firmwareRevision:0];

  v13 = [v12 category];

  if (!v13)
  {
    v14 = [v4 deviceType];
    [v12 setCategory:v14];
  }

  v15 = [(HMMTRAccessoryServerBrowser *)self storage];
  v16 = [v15 fabricDataSource];
  v17 = [v4 nodeID];
  v18 = [v16 storageDataSourceForDeviceWithNodeID:v17];
  v19 = [v4 vendorID];
  v20 = [v4 productID];
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __59__HMMTRAccessoryServerBrowser__serverFromMTSDevicePairing___block_invoke;
  v32[3] = &unk_2786EF9E0;
  v32[4] = self;
  v21 = v4;
  v33 = v21;
  [v18 updateVendorID:v19 productID:v20 completion:v32];

  v22 = [(HMMTRAccessoryServerBrowser *)self systemCommissionerControllerWrapper];
  [v12 setControllerWrapper:v22];

  [v12 setKnownToSystemCommissioner:1];
  v23 = [(HMMTRAccessoryServerBrowser *)self systemCommissionerFabricID];
  [v12 setFabricID:v23];

  v24 = [(HMMTRAccessoryServerBrowser *)self systemCommissionerFabricUUID];
  [v12 setFabricUUID:v24];

  [v12 setPairedState:3];
  v25 = [v21 uuid];
  [v12 setCommissioningID:v25];

  if (isFeatureMatteriPhoneOnlyPairingControlEnabled())
  {
    v26 = [(HMMTRAccessoryServerBrowser *)self storageForSystemCommissioner];
    v27 = [v21 nodeID];
    [v12 setWedDevice:{objc_msgSend(v26, "wedSupportedForSystemCommissionerFabricNode:", v27)}];

    v28 = [v21 nodeID];
    v29 = [v26 extendedMACAddressForSystemCommissionerFabricNode:v28];
    [v12 setEMACAddress:v29];
  }

  v30 = [(HMMTRAccessoryServerBrowser *)self discoveredAccessoryServers];
  [v30 addObject:v12];

  return v12;
}

void __59__HMMTRAccessoryServerBrowser__serverFromMTSDevicePairing___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 32);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = HMFGetLogIdentifier();
      v8 = [*(a1 + 40) vendorID];
      v9 = [*(a1 + 40) productID];
      v11 = 138544386;
      v12 = v7;
      v13 = 2080;
      v14 = "[HMMTRAccessoryServerBrowser _serverFromMTSDevicePairing:]_block_invoke";
      v15 = 2112;
      v16 = v8;
      v17 = 2112;
      v18 = v9;
      v19 = 2112;
      v20 = v3;
      _os_log_impl(&dword_22AEAE000, v6, OS_LOG_TYPE_ERROR, "%{public}@%s: Failed to update vendorID to %@ and productID to %@ with error: %@", &v11, 0x34u);
    }

    objc_autoreleasePoolPop(v4);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (id)accessoryServerWithNodeID:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = self->_discoveredAccessoryServers;
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
        v10 = [v9 nodeID];
        v11 = [v4 isEqualToNumber:v10];

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

  v12 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)handlePairingCompletionForAccessoryWithNodeID:(id)a3 targetFabricUUID:(id)a4 fabricID:(id)a5 vendorID:(id)a6 productID:(id)a7 configNumber:(id)a8 category:(id)a9 topology:(id)a10
{
  v70 = *MEMORY[0x277D85DE8];
  v16 = a3;
  v44 = a4;
  v43 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = a9;
  v21 = a10;
  v22 = objc_autoreleasePoolPush();
  v23 = self;
  v24 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
  {
    HMFGetLogIdentifier();
    v25 = v42 = v22;
    *buf = 138545154;
    v55 = v25;
    v56 = 2112;
    v57 = v16;
    v58 = 2112;
    v59 = v43;
    v60 = 2112;
    v61 = v17;
    v62 = 2112;
    v63 = v18;
    v64 = 2112;
    v65 = v19;
    v66 = 2112;
    v67 = v20;
    v68 = 2112;
    v69 = v44;
    _os_log_impl(&dword_22AEAE000, v24, OS_LOG_TYPE_INFO, "%{public}@Handling pairing completion for Accessory with Node ID %@, Fabric ID %@, Vendor ID %@, Product ID %@, Config Number %@, Category %@, fabric UUID %@", buf, 0x52u);

    v22 = v42;
  }

  objc_autoreleasePoolPop(v22);
  v26 = [(HMMTRAccessoryServerBrowser *)v23 nodesWithPendingACLOverwrite];
  [v26 addObject:v16];

  v27 = objc_autoreleasePoolPush();
  v28 = v23;
  v29 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
  {
    v30 = HMFGetLogIdentifier();
    *buf = 138543362;
    v55 = v30;
    _os_log_impl(&dword_22AEAE000, v29, OS_LOG_TYPE_INFO, "%{public}@Updating storage with information for newly paired accessory", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v27);
  v31 = [(HMMTRAccessoryServerBrowser *)v28 storageForFabricUUID:v44 sharedAdmin:0];
  v32 = [(HAPAccessoryServerBrowser *)v28 workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __153__HMMTRAccessoryServerBrowser_handlePairingCompletionForAccessoryWithNodeID_targetFabricUUID_fabricID_vendorID_productID_configNumber_category_topology___block_invoke;
  block[3] = &unk_2786EEF10;
  v46 = v31;
  v47 = v16;
  v48 = v17;
  v49 = v43;
  v50 = v18;
  v51 = v20;
  v52 = v19;
  v53 = v21;
  v33 = v21;
  v34 = v19;
  v35 = v20;
  v36 = v18;
  v37 = v43;
  v38 = v17;
  v39 = v16;
  v40 = v31;
  dispatch_async(v32, block);

  v41 = *MEMORY[0x277D85DE8];
}

uint64_t __153__HMMTRAccessoryServerBrowser_handlePairingCompletionForAccessoryWithNodeID_targetFabricUUID_fabricID_vendorID_productID_configNumber_category_topology___block_invoke(uint64_t a1)
{
  [*(a1 + 32) startLocalStorageMode];
  [*(a1 + 32) addPairedNodeID:*(a1 + 40)];
  [*(a1 + 32) setVendorID:*(a1 + 48) forNode:*(a1 + 40)];
  [*(a1 + 32) setFabricID:*(a1 + 56) forNode:*(a1 + 40)];
  [*(a1 + 32) setProductID:*(a1 + 64) forNode:*(a1 + 40)];
  [*(a1 + 32) setCategory:*(a1 + 72) forNode:*(a1 + 40)];
  [*(a1 + 32) setConfigNumber:*(a1 + 80) forNode:*(a1 + 40)];
  [*(a1 + 32) setStaged:0 forNode:*(a1 + 40)];
  [*(a1 + 32) setTopology:*(a1 + 88) forNode:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 endLocalStorageModeBySyncingToRemote:1];
}

- (void)notifyPairingCompletionForAccessoryServer:(id)a3
{
  v4 = a3;
  v5 = [(HMMTRAccessoryServerBrowser *)self delegate];
  [v5 accessoryServerBrowser:self didFinishPairingForAccessoryServer:v4];
}

- (void)fetchCertificatesForMatterNodeWithCommissionerNodeID:(id)a3 commissioneeNodeID:(id)a4 forOwner:(BOOL)a5 publicKey:(id)a6 fabricData:(id)a7 adminCAT:(id)a8 opCAT:(id)a9 completionHandler:(id)a10
{
  v16 = a3;
  v17 = a4;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  v22 = a10;
  v23 = [(HAPAccessoryServerBrowser *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __166__HMMTRAccessoryServerBrowser_fetchCertificatesForMatterNodeWithCommissionerNodeID_commissioneeNodeID_forOwner_publicKey_fabricData_adminCAT_opCAT_completionHandler___block_invoke;
  block[3] = &unk_2786EEEE8;
  v32 = v19;
  v33 = self;
  v40 = a5;
  v34 = v17;
  v35 = v18;
  v36 = v16;
  v37 = v20;
  v38 = v21;
  v39 = v22;
  v24 = v21;
  v25 = v20;
  v26 = v16;
  v27 = v18;
  v28 = v17;
  v29 = v22;
  v30 = v19;
  dispatch_async(v23, block);
}

void __166__HMMTRAccessoryServerBrowser_fetchCertificatesForMatterNodeWithCommissionerNodeID_commissioneeNodeID_forOwner_publicKey_fabricData_adminCAT_opCAT_completionHandler___block_invoke(uint64_t a1)
{
  v117[2] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) rootKeyPair];
  if (v2)
  {
    v3 = v2;
    v4 = [*(a1 + 32) rootCert];

    if (v4)
    {
      v5 = "non-owner";
      if (*(a1 + 96))
      {
        v5 = "Owner";
      }

      v97 = v5;
      v6 = *(a1 + 48);
      v7 = objc_autoreleasePoolPush();
      v8 = *(a1 + 40);
      v9 = HMFGetOSLogHandle();
      v10 = os_log_type_enabled(v9, OS_LOG_TYPE_INFO);
      if (v6)
      {
        if (!v10)
        {
          goto LABEL_14;
        }

        v11 = HMFGetLogIdentifier();
        v12 = *(a1 + 48);
        *buf = 138543874;
        v101 = v11;
        v102 = 2080;
        v103 = v97;
        v104 = 2112;
        v105 = v12;
        v13 = "%{public}@Received request from %s controller to generate Operational Certificate for Node ID %@";
        v14 = v9;
        v15 = 32;
      }

      else
      {
        if (!v10)
        {
          goto LABEL_14;
        }

        v11 = HMFGetLogIdentifier();
        *buf = 138543618;
        v101 = v11;
        v102 = 2080;
        v103 = v97;
        v13 = "%{public}@Received request from %s controller to generate Operational certificate for itself";
        v14 = v9;
        v15 = 22;
      }

      _os_log_impl(&dword_22AEAE000, v14, OS_LOG_TYPE_INFO, v13, buf, v15);

LABEL_14:
      objc_autoreleasePoolPop(v7);
      v24 = *MEMORY[0x277CDC000];
      v25 = *MEMORY[0x277CDC028];
      v116[0] = *MEMORY[0x277CDBFE0];
      v116[1] = v25;
      v26 = *MEMORY[0x277CDC040];
      v117[0] = v24;
      v117[1] = v26;
      [MEMORY[0x277CBEAC0] dictionaryWithObjects:v117 forKeys:v116 count:2];
      v96 = error = 0;
      v27 = SecKeyCreateWithData(*(a1 + 56), v96, &error);
      if (!v27)
      {
        v31 = error;
        v32 = objc_autoreleasePoolPush();
        v33 = *(a1 + 40);
        v34 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          v35 = HMFGetLogIdentifier();
          *buf = 138543618;
          v101 = v35;
          v102 = 2112;
          v103 = v31;
          _os_log_impl(&dword_22AEAE000, v34, OS_LOG_TYPE_ERROR, "%{public}@Failed to convert Public Key Data to SecKey with error %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v32);
        v22 = 0;
        goto LABEL_38;
      }

      v28 = v27;
      v29 = *(a1 + 48);
      if (!v29)
      {
        v36 = *(a1 + 64);
        if (!v36 || ([v36 isEqualToNumber:&unk_283EE87C0] & 1) != 0 || (v37 = *(a1 + 48), objc_msgSend(*(a1 + 32), "residentNodeID"), v38 = objc_claimAutoreleasedReturnValue(), LOBYTE(v37) = objc_msgSend(v37, "isEqualToNumber:", v38), v38, (v37 & 1) != 0))
        {
          v30 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{+[HMMTRUtilities randomNodeID](HMMTRUtilities, "randomNodeID")}];
          v39 = objc_autoreleasePoolPush();
          v40 = *(a1 + 40);
          v41 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
          {
            v42 = HMFGetLogIdentifier();
            *buf = 138543874;
            v101 = v42;
            v102 = 2080;
            v103 = v97;
            v104 = 2112;
            v105 = v30;
            _os_log_impl(&dword_22AEAE000, v41, OS_LOG_TYPE_INFO, "%{public}@Generating a Random Node ID for %s Controller as %@", buf, 0x20u);
          }

          objc_autoreleasePoolPop(v39);
          if (v6)
          {
            goto LABEL_32;
          }

LABEL_27:
          if (isFeatureMatterLocalFabricConfigEnabled())
          {
            v43 = 80;
            if (*(a1 + 96))
            {
              v43 = 72;
            }

            v44 = *(a1 + v43);
            if (v44)
            {
              v93 = v44;
              v45 = [MEMORY[0x277CBEB98] setWithObject:v44];
              goto LABEL_33;
            }
          }

LABEL_32:
          v93 = 0;
          v45 = 0;
LABEL_33:
          v46 = objc_autoreleasePoolPush();
          v47 = *(a1 + 40);
          v48 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
          {
            HMFGetLogIdentifier();
            v49 = v28;
            v51 = v50 = v30;
            [*(a1 + 32) rootKeyPair];
            v52 = v91 = v46;
            v53 = [*(a1 + 32) rootCert];
            v54 = [*(a1 + 32) fabricID];
            *buf = 138545154;
            v101 = v51;
            v102 = 2080;
            v103 = v97;
            v104 = 2112;
            v105 = v52;
            v106 = 2112;
            v107 = v53;
            v108 = 2112;
            v109 = v49;
            v110 = 2112;
            v111 = v54;
            v112 = 2112;
            v113 = v50;
            v114 = 2112;
            v115 = v45;
            _os_log_impl(&dword_22AEAE000, v48, OS_LOG_TYPE_INFO, "%{public}@Generating a OP cert for %s with nocSigner %@, rootCert = %@, pubKeyAsSecKey %@, fabricID %@, nodeID %@ CATs = %@", buf, 0x52u);

            v46 = v91;
            v30 = v50;
            v28 = v49;
          }

          objc_autoreleasePoolPop(v46);
          v55 = MEMORY[0x277CD5230];
          v56 = [*(a1 + 32) rootKeyPair];
          v57 = [*(a1 + 32) rootCert];
          v58 = [*(a1 + 32) fabricID];
          v98 = 0;
          v23 = [v55 createOperationalCertificate:v56 signingCertificate:v57 operationalPublicKey:v28 fabricID:v58 nodeID:v30 caseAuthenticatedTags:v45 error:&v98];
          v22 = v98;

          CFRelease(v28);
          if (v23)
          {
            v59 = objc_autoreleasePoolPush();
            v60 = *(a1 + 40);
            v61 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v61, OS_LOG_TYPE_INFO))
            {
              v62 = HMFGetLogIdentifier();
              *buf = 138543618;
              v101 = v62;
              v102 = 2080;
              v103 = v97;
              _os_log_impl(&dword_22AEAE000, v61, OS_LOG_TYPE_INFO, "%{public}@Successfully generated Operational Certificate for %s Controller", buf, 0x16u);
            }

LABEL_41:

            objc_autoreleasePoolPop(v59);
            if (*(a1 + 48))
            {
              v64 = objc_autoreleasePoolPush();
              v65 = *(a1 + 40);
              v66 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v66, OS_LOG_TYPE_INFO))
              {
                v67 = HMFGetLogIdentifier();
                v94 = v64;
                v68 = MEMORY[0x277CD5230];
                v69 = [*(a1 + 32) rootCert];
                v70 = [v68 shortDescriptionForX509Certificate:v69];
                v71 = [MEMORY[0x277CD5230] shortDescriptionForX509Certificate:v23];
                *buf = 138544130;
                v101 = v67;
                v102 = 2112;
                v103 = v70;
                v104 = 2112;
                v105 = v71;
                v106 = 2080;
                v107 = v97;
                _os_log_impl(&dword_22AEAE000, v66, OS_LOG_TYPE_INFO, "%{public}@Returning Root Certificate %@, Operational Certificate %@ to %s Controller", buf, 0x2Au);

                v64 = v94;
              }

              objc_autoreleasePoolPop(v64);
              v72 = MEMORY[0x277CD5230];
              v73 = [*(a1 + 32) rootCert];
              [v72 printX509Certificate:v73];

              [MEMORY[0x277CD5230] printX509Certificate:v23];
              v74 = *(a1 + 88);
              v75 = [*(a1 + 32) rootCert];
              (*(v74 + 16))(v74, v75, v23, 0, 0, 0);
            }

            else
            {
              v75 = [*(a1 + 32) ipk];
              v76 = [*(a1 + 32) residentNodeID];
              v77 = objc_autoreleasePoolPush();
              v78 = *(a1 + 40);
              v79 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v79, OS_LOG_TYPE_INFO))
              {
                HMFGetLogIdentifier();
                v92 = v77;
                v80 = v95 = v76;
                v81 = MEMORY[0x277CD5230];
                v90 = [*(a1 + 32) rootCert];
                v82 = [v81 shortDescriptionForX509Certificate:v90];
                v83 = [MEMORY[0x277CD5230] shortDescriptionForX509Certificate:v23];
                v84 = [v75 hmmtr_sha256hash];
                *buf = 138544642;
                v101 = v80;
                v102 = 2112;
                v103 = v82;
                v104 = 2112;
                v105 = v83;
                v106 = 2112;
                v107 = v95;
                v108 = 2112;
                v109 = v84;
                v110 = 2080;
                v111 = v97;
                _os_log_impl(&dword_22AEAE000, v79, OS_LOG_TYPE_INFO, "%{public}@Returning Root Certificate %@, Operational Certificate %@, Resident NodeID %@, and IPK %@ to %s Controller", buf, 0x3Eu);

                v77 = v92;
                v76 = v95;
              }

              objc_autoreleasePoolPop(v77);
              v85 = MEMORY[0x277CD5230];
              v86 = [*(a1 + 32) rootCert];
              [v85 printX509Certificate:v86];

              [MEMORY[0x277CD5230] printX509Certificate:v23];
              v87 = *(a1 + 88);
              v88 = [*(a1 + 32) rootCert];
              (*(v87 + 16))(v87, v88, v23, v76, v75, 0);
            }

            goto LABEL_49;
          }

LABEL_38:
          v59 = objc_autoreleasePoolPush();
          v60 = *(a1 + 40);
          v61 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
          {
            v63 = HMFGetLogIdentifier();
            *buf = 138543618;
            v101 = v63;
            v102 = 2112;
            v103 = v22;
            _os_log_impl(&dword_22AEAE000, v61, OS_LOG_TYPE_ERROR, "%{public}@Failed to generate Operational Certificate %@", buf, 0x16u);
          }

          v23 = 0;
          goto LABEL_41;
        }

        v29 = *(a1 + 64);
      }

      v30 = v29;
      if (v6)
      {
        goto LABEL_32;
      }

      goto LABEL_27;
    }
  }

  v16 = objc_autoreleasePoolPush();
  v17 = *(a1 + 40);
  v18 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    v19 = HMFGetLogIdentifier();
    *buf = 138543362;
    v101 = v19;
    _os_log_impl(&dword_22AEAE000, v18, OS_LOG_TYPE_ERROR, "%{public}@Fabric key pairs or root cert are missing. Declining to fetch certificates.", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v16);
  v20 = *(a1 + 88);
  v21 = MEMORY[0x277CCA9B8];
  v22 = [MEMORY[0x277CCA9B8] hmmtrErrorWithCode:1];
  v23 = [v21 hapErrorWithCode:36 description:0 reason:0 suggestion:0 underlyingError:v22];
  (*(v20 + 16))(v20, 0, 0, 0, 0, v23);
LABEL_49:

  v89 = *MEMORY[0x277D85DE8];
}

- (void)_reportAccessoriesKnownToSystemCommissioner
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    *buf = 138543362;
    v15 = v6;
    _os_log_impl(&dword_22AEAE000, v5, OS_LOG_TYPE_INFO, "%{public}@Reporting accessories known to System Commissioner", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v7 = [(HMMTRAccessoryServerBrowser *)v4 discoveredAccessoryServers];
  v8 = [v7 copy];

  v9 = [(HMMTRAccessoryServerBrowser *)v4 systemCommissionerPairingManager];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __74__HMMTRAccessoryServerBrowser__reportAccessoriesKnownToSystemCommissioner__block_invoke;
  v12[3] = &unk_2786EEEC0;
  v12[4] = v4;
  v13 = v8;
  v10 = v8;
  [v9 fetchSystemCommissionerPairingsWithCompletionHandler:v12];

  v11 = *MEMORY[0x277D85DE8];
}

void __74__HMMTRAccessoryServerBrowser__reportAccessoriesKnownToSystemCommissioner__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __74__HMMTRAccessoryServerBrowser__reportAccessoriesKnownToSystemCommissioner__block_invoke_2;
  block[3] = &unk_2786EF3C8;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v9 = v3;
  v10 = v5;
  v11 = v6;
  v7 = v3;
  dispatch_async(v4, block);
}

void __74__HMMTRAccessoryServerBrowser__reportAccessoriesKnownToSystemCommissioner__block_invoke_2(id *a1)
{
  v57 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB58] set];
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v3 = a1[4];
  v4 = [v3 countByEnumeratingWithState:&v46 objects:v56 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v47;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v47 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [a1[5] _serverFromMTSDevicePairing:*(*(&v46 + 1) + 8 * i)];
        [v2 addObject:v8];
      }

      v5 = [v3 countByEnumeratingWithState:&v46 objects:v56 count:16];
    }

    while (v5);
  }

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v9 = a1[6];
  v10 = [v9 countByEnumeratingWithState:&v42 objects:v55 count:16];
  if (v10)
  {
    v12 = v10;
    v13 = *v43;
    *&v11 = 138543618;
    v34 = v11;
    obj = v9;
    do
    {
      for (j = 0; j != v12; ++j)
      {
        if (*v43 != v13)
        {
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v42 + 1) + 8 * j);
        if ([v15 isKnownToSystemCommissioner] && (objc_msgSend(v2, "containsObject:", v15) & 1) == 0)
        {
          v16 = objc_autoreleasePoolPush();
          v17 = a1[5];
          v18 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
          {
            v19 = HMFGetLogIdentifier();
            *buf = v34;
            v52 = v19;
            v53 = 2112;
            v54 = v15;
            _os_log_impl(&dword_22AEAE000, v18, OS_LOG_TYPE_INFO, "%{public}@Invalidating stale discovered server %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v16);
          v20 = a1[5];
          v21 = [MEMORY[0x277CCA9B8] hmmtrErrorWithCode:9];
          [v20 invalidateAccessoryServer:v15 reason:v21];

          v9 = obj;
        }
      }

      v12 = [v9 countByEnumeratingWithState:&v42 objects:v55 count:16];
    }

    while (v12);
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  obja = v2;
  v22 = [obja countByEnumeratingWithState:&v38 objects:v50 count:16];
  if (v22)
  {
    v24 = v22;
    v25 = *v39;
    *&v23 = 138543618;
    v35 = v23;
    do
    {
      for (k = 0; k != v24; ++k)
      {
        if (*v39 != v25)
        {
          objc_enumerationMutation(obja);
        }

        v27 = *(*(&v38 + 1) + 8 * k);
        if ([a1[5] _delegateRespondsToSelector:{sel_accessoryServerBrowser_didFindAccessoryServer_stateChanged_stateNumber_, v35}])
        {
          v28 = objc_autoreleasePoolPush();
          v29 = a1[5];
          v30 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
          {
            v31 = HMFGetLogIdentifier();
            *buf = v35;
            v52 = v31;
            v53 = 2112;
            v54 = v27;
            _os_log_impl(&dword_22AEAE000, v30, OS_LOG_TYPE_INFO, "%{public}@Reporting SC server %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v28);
          v32 = [a1[5] delegate];
          [v32 accessoryServerBrowser:a1[5] didFindAccessoryServer:v27 stateChanged:0 stateNumber:0];
        }
      }

      v24 = [obja countByEnumeratingWithState:&v38 objects:v50 count:16];
    }

    while (v24);
  }

  v33 = *MEMORY[0x277D85DE8];
}

- (void)cleanUpStaleSystemCommissionerPairingsWithNewlyPairedUUID:(id)a3 vendorID:(id)a4 productID:(id)a5 serialNumber:(id)a6 setupPayload:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  v17 = [(HMMTRAccessoryServerBrowser *)self systemCommissionerPairingManager];
  [v17 cleanUpStaleSystemCommissionerPairingsWithNewlyPairedUUID:v16 vendorID:v15 productID:v14 serialNumber:v13 setupPayload:v12];
}

- (void)finishSystemCommissionerFabricCommissioningWithFabricID:(id)a3 rootCACert:(id)a4 ipk:(id)a5 controllerNodeID:(id)a6 commissioneeNodeID:(id)a7 queue:(id)a8 completion:(id)a9
{
  v12 = a3;
  v13 = a7;
  v14 = a8;
  v15 = a9;
  v16 = [(HAPAccessoryServerBrowser *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __155__HMMTRAccessoryServerBrowser_finishSystemCommissionerFabricCommissioningWithFabricID_rootCACert_ipk_controllerNodeID_commissioneeNodeID_queue_completion___block_invoke;
  block[3] = &unk_2786F0260;
  block[4] = self;
  v22 = v12;
  v24 = v13;
  v25 = v15;
  v23 = v14;
  v17 = v13;
  v18 = v15;
  v19 = v14;
  v20 = v12;
  dispatch_async(v16, block);
}

void __155__HMMTRAccessoryServerBrowser_finishSystemCommissionerFabricCommissioningWithFabricID_rootCACert_ipk_controllerNodeID_commissioneeNodeID_queue_completion___block_invoke(uint64_t a1)
{
  v48 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CD5120] code:1 userInfo:0];
  v3 = [*(a1 + 32) systemCommissionerControllerWrapper];
  v4 = [v3 controller];

  v5 = objc_autoreleasePoolPush();
  v6 = *(a1 + 32);
  v7 = HMFGetOSLogHandle();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_INFO);
  if (v4)
  {
    if (v8)
    {
      v9 = HMFGetLogIdentifier();
      *buf = 138543362;
      v45 = v9;
      _os_log_impl(&dword_22AEAE000, v7, OS_LOG_TYPE_INFO, "%{public}@Connecting to the commissionee to complete commissioning...", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
    v10 = [MEMORY[0x277CD5220] deviceWithNodeID:*(a1 + 56) controller:v4];
    if (v10)
    {
      v11 = objc_alloc(MEMORY[0x277CD51F8]);
      v12 = [*(a1 + 32) workQueue];
      v13 = [v11 initWithDevice:v10 endpointID:&unk_283EE87C0 queue:v12];

      if (v13)
      {
        [*(a1 + 32) _notifyDelegateOfPairingStep:21];
        v14 = objc_autoreleasePoolPush();
        v15 = *(a1 + 32);
        v16 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          v17 = HMFGetLogIdentifier();
          *buf = 138543362;
          v45 = v17;
          _os_log_impl(&dword_22AEAE000, v16, OS_LOG_TYPE_INFO, "%{public}@Sending commissioning complete...", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v14);
        v34[0] = MEMORY[0x277D85DD0];
        v34[1] = 3221225472;
        v34[2] = __155__HMMTRAccessoryServerBrowser_finishSystemCommissionerFabricCommissioningWithFabricID_rootCACert_ipk_controllerNodeID_commissioneeNodeID_queue_completion___block_invoke_331;
        v34[3] = &unk_2786EEE98;
        v34[4] = *(a1 + 32);
        v18 = v35;
        v35[0] = *(a1 + 48);
        v35[1] = v2;
        v37 = *(a1 + 64);
        v36 = v10;
        [v13 commissioningCompleteWithCompletion:v34];
      }

      else
      {
        v28 = objc_autoreleasePoolPush();
        v29 = *(a1 + 32);
        v30 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          v31 = HMFGetLogIdentifier();
          *buf = 138543362;
          v45 = v31;
          _os_log_impl(&dword_22AEAE000, v30, OS_LOG_TYPE_ERROR, "%{public}@Unable to create GeneralCommissioning cluster object", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v28);
        v32 = *(a1 + 48);
        v38[0] = MEMORY[0x277D85DD0];
        v38[1] = 3221225472;
        v38[2] = __155__HMMTRAccessoryServerBrowser_finishSystemCommissionerFabricCommissioningWithFabricID_rootCACert_ipk_controllerNodeID_commissioneeNodeID_queue_completion___block_invoke_330;
        v38[3] = &unk_2786EF5A8;
        v38[4] = v2;
        v18 = &v39;
        v39 = *(a1 + 64);
        dispatch_async(v32, v38);
      }
    }

    else
    {
      v22 = objc_autoreleasePoolPush();
      v23 = *(a1 + 32);
      v24 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v25 = HMFGetLogIdentifier();
        v26 = *(a1 + 56);
        *buf = 138543618;
        v45 = v25;
        v46 = 2112;
        v47 = v26;
        _os_log_impl(&dword_22AEAE000, v24, OS_LOG_TYPE_ERROR, "%{public}@Unable to get connected device (%@) to complete commissioning", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v22);
      v27 = *(a1 + 48);
      v40[0] = MEMORY[0x277D85DD0];
      v40[1] = 3221225472;
      v40[2] = __155__HMMTRAccessoryServerBrowser_finishSystemCommissionerFabricCommissioningWithFabricID_rootCACert_ipk_controllerNodeID_commissioneeNodeID_queue_completion___block_invoke_328;
      v40[3] = &unk_2786EF5A8;
      v40[4] = v2;
      v41 = *(a1 + 64);
      dispatch_async(v27, v40);
    }
  }

  else
  {
    if (v8)
    {
      v19 = HMFGetLogIdentifier();
      v20 = *(a1 + 40);
      *buf = 138543618;
      v45 = v19;
      v46 = 2112;
      v47 = v20;
      _os_log_impl(&dword_22AEAE000, v7, OS_LOG_TYPE_INFO, "%{public}@Failed to start system commissioner controller for fabric ID: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    v21 = *(a1 + 48);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __155__HMMTRAccessoryServerBrowser_finishSystemCommissionerFabricCommissioningWithFabricID_rootCACert_ipk_controllerNodeID_commissioneeNodeID_queue_completion___block_invoke_327;
    block[3] = &unk_2786EF5A8;
    block[4] = v2;
    v43 = *(a1 + 64);
    dispatch_async(v21, block);
  }

  v33 = *MEMORY[0x277D85DE8];
}

void __155__HMMTRAccessoryServerBrowser_finishSystemCommissionerFabricCommissioningWithFabricID_rootCACert_ipk_controllerNodeID_commissioneeNodeID_queue_completion___block_invoke_327(uint64_t a1)
{
  v3 = [HMMTRAccessoryPairingEndContext hmmtrContextWithStep:20 error:*(a1 + 32)];
  v2 = *(a1 + 32);
  (*(*(a1 + 40) + 16))();
}

void __155__HMMTRAccessoryServerBrowser_finishSystemCommissionerFabricCommissioningWithFabricID_rootCACert_ipk_controllerNodeID_commissioneeNodeID_queue_completion___block_invoke_328(uint64_t a1)
{
  v3 = [HMMTRAccessoryPairingEndContext hmmtrContextWithStep:20 error:*(a1 + 32)];
  v2 = *(a1 + 32);
  (*(*(a1 + 40) + 16))();
}

void __155__HMMTRAccessoryServerBrowser_finishSystemCommissionerFabricCommissioningWithFabricID_rootCACert_ipk_controllerNodeID_commissioneeNodeID_queue_completion___block_invoke_330(uint64_t a1)
{
  v3 = [HMMTRAccessoryPairingEndContext hmmtrContextWithStep:20 error:*(a1 + 32)];
  v2 = *(a1 + 32);
  (*(*(a1 + 40) + 16))();
}

void __155__HMMTRAccessoryServerBrowser_finishSystemCommissionerFabricCommissioningWithFabricID_rootCACert_ipk_controllerNodeID_commissioneeNodeID_queue_completion___block_invoke_331(uint64_t a1, void *a2, void *a3)
{
  v44 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    goto LABEL_2;
  }

  v17 = [v5 errorCode];
  if (!v17)
  {
    goto LABEL_7;
  }

  v18 = v17;
  v19 = [v5 errorCode];
  v20 = [v19 isEqual:&unk_283EE87C0];

  if ((v20 & 1) == 0)
  {
LABEL_2:
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 32);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v11 = [v5 errorCode];
      v12 = [v5 debugText];
      *buf = 138544130;
      v37 = v10;
      v38 = 2112;
      v39 = v6;
      v40 = 2112;
      v41 = v11;
      v42 = 2112;
      v43 = v12;
      _os_log_impl(&dword_22AEAE000, v9, OS_LOG_TYPE_ERROR, "%{public}@Commissioning complete failed with %@ (%@: %@)", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v7);
    v13 = *(a1 + 40);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __155__HMMTRAccessoryServerBrowser_finishSystemCommissionerFabricCommissioningWithFabricID_rootCACert_ipk_controllerNodeID_commissioneeNodeID_queue_completion___block_invoke_332;
    block[3] = &unk_2786F0EA8;
    v14 = v6;
    v15 = *(a1 + 48);
    v33 = v14;
    v34 = v15;
    v35 = *(a1 + 64);
    dispatch_async(v13, block);

    v16 = v33;
  }

  else
  {
LABEL_7:
    v21 = objc_autoreleasePoolPush();
    v22 = *(a1 + 32);
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = HMFGetLogIdentifier();
      *buf = 138543362;
      v37 = v24;
      _os_log_impl(&dword_22AEAE000, v23, OS_LOG_TYPE_INFO, "%{public}@Commissioning complete responded. Fetching serial number.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v21);
    v25 = *(a1 + 56);
    v26 = [*(a1 + 32) workQueue];
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __155__HMMTRAccessoryServerBrowser_finishSystemCommissionerFabricCommissioningWithFabricID_rootCACert_ipk_controllerNodeID_commissioneeNodeID_queue_completion___block_invoke_333;
    v29[3] = &unk_2786EEE70;
    v27 = *(a1 + 40);
    v29[4] = *(a1 + 32);
    v30 = v27;
    v31 = *(a1 + 64);
    [v25 fetchSerialNumberWithCallbackQueue:v26 completionHandler:v29];

    v16 = v30;
  }

  v28 = *MEMORY[0x277D85DE8];
}

void __155__HMMTRAccessoryServerBrowser_finishSystemCommissionerFabricCommissioningWithFabricID_rootCACert_ipk_controllerNodeID_commissioneeNodeID_queue_completion___block_invoke_332(void *a1)
{
  if (a1[4])
  {
    [HMMTRAccessoryPairingEndContext mtrContextWithStep:21 error:?];
  }

  else
  {
    [HMMTRAccessoryPairingEndContext hmmtrContextWithStep:21 error:a1[5]];
  }
  v2 = ;
  v3 = a1[4];
  if (!v3)
  {
    v3 = a1[5];
  }

  v4 = v2;
  (*(a1[6] + 16))(a1[6], 0, v3);
}

void __155__HMMTRAccessoryServerBrowser_finishSystemCommissionerFabricCommissioningWithFabricID_rootCACert_ipk_controllerNodeID_commissioneeNodeID_queue_completion___block_invoke_333(uint64_t a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  v10 = v9;
  if (v5)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543618;
      v23 = v11;
      v24 = 2112;
      v25 = v5;
      _os_log_impl(&dword_22AEAE000, v10, OS_LOG_TYPE_INFO, "%{public}@Accessory returned Serial Number as %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __155__HMMTRAccessoryServerBrowser_finishSystemCommissionerFabricCommissioningWithFabricID_rootCACert_ipk_controllerNodeID_commissioneeNodeID_queue_completion___block_invoke_335;
    block[3] = &unk_2786EF5A8;
    v12 = &v19;
    v13 = *(a1 + 40);
    v19 = *(a1 + 48);
    v18 = v5;
    dispatch_async(v13, block);
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543618;
      v23 = v14;
      v24 = 2112;
      v25 = v6;
      _os_log_impl(&dword_22AEAE000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to retrieve serial number: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __155__HMMTRAccessoryServerBrowser_finishSystemCommissionerFabricCommissioningWithFabricID_rootCACert_ipk_controllerNodeID_commissioneeNodeID_queue_completion___block_invoke_334;
    v20[3] = &unk_2786EF878;
    v12 = &v21;
    v15 = *(a1 + 40);
    v21 = *(a1 + 48);
    dispatch_async(v15, v20);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_prepareForPairingWithSetupPayload:(id)a3 targetFabricUUID:(id)a4 fabricID:(id)a5 controllerWrapper:(id)a6 hasPriorSuccessfulPairing:(BOOL)a7 category:(id)a8 completionHandler:(id)a9
{
  v79 = a7;
  v94 = *MEMORY[0x277D85DE8];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a8;
  v19 = a9;
  v20 = [(HAPAccessoryServerBrowser *)self workQueue];
  dispatch_assert_queue_V2(v20);

  v21 = [(HMMTRAccessoryServerBrowser *)self storage];
  v22 = [v21 dataSource];

  if (!v15 || v22)
  {
    v81 = v17;
    if (!v15)
    {
      v15 = [(HMMTRAccessoryServerBrowser *)self systemCommissionerFabricUUID];
    }

    [(HMMTRAccessoryServerBrowser *)self addFabricWithActiveClients:v15];
    v28 = objc_autoreleasePoolPush();
    v29 = self;
    v30 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
    {
      v31 = HMFGetLogIdentifier();
      v32 = [(HMMTRAccessoryServerBrowser *)v29 fabricsWithActiveClients];
      *buf = 138543874;
      v87 = v31;
      v88 = 2112;
      v89 = v16;
      v90 = 2112;
      v91 = v32;
      _os_log_impl(&dword_22AEAE000, v30, OS_LOG_TYPE_INFO, "%{public}@Added active client for pairing into fabric ID %@, currently active clients: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v28);
    v33 = [(HMMTRAccessoryServerBrowser *)v29 controllerFactoryEnablePerPrimaryResidentConfirmationToken];

    if (v33)
    {
      v34 = [(HMMTRAccessoryServerBrowser *)v29 controllerFactory];
      v35 = [(HMMTRAccessoryServerBrowser *)v29 controllerFactoryEnablePerPrimaryResidentConfirmationToken];
      [v34 enableNormalOperationWithToken:v35];

      [(HMMTRAccessoryServerBrowser *)v29 setControllerFactoryEnablePerPrimaryResidentConfirmationToken:0];
    }

    v82 = v14;
    v78 = v19;
    v80 = v16;
    if (v15)
    {
      v36 = [(HMMTRAccessoryServerBrowser *)v29 systemCommissionerFabricUUID];
      v37 = [v15 isEqual:v36];

      if ((v37 & 1) == 0)
      {
        [(HMMTRAccessoryServerBrowser *)v29 _deleteOldPairingsForFabricUUID:v15];
      }
    }

    v38 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[HMMTRAccessoryServerBrowser _generateNodeID](v29, "_generateNodeID")}];
    v39 = [v82 discriminator];
    v40 = [v39 unsignedShortValue];

    if ([v82 hasShortDiscriminator])
    {
      v41 = v40 << 8;
    }

    else
    {
      v41 = v40;
    }

    v42 = [HMMTRAccessoryServerFactory alloc];
    v43 = [(HAPAccessoryServerBrowser *)v29 keyStore];
    v44 = [(HMMTRAccessoryServerFactory *)v42 initWithKeystore:v43 browser:v29];

    v45 = [v82 setupCode];
    v46 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v41];
    v47 = [v82 vendorID];
    v48 = [v82 productID];
    v49 = [v82 serialNumber];
    v76 = v44;
    v77 = v18;
    v50 = v44;
    v27 = v38;
    v51 = [v50 vendAccessoryServerWithNodeID:v38 setupCode:v45 discriminator:v46 category:v18 vendorID:v47 productID:v48 serialNumber:v49 firmwareRevision:@"1.0.0"];

    if (v51)
    {
      [v51 setFabricUUID:v15];
      [v51 setFabricID:v80];
      v19 = v78;
      if (v15)
      {
        v52 = [(HMMTRAccessoryServerBrowser *)v29 systemCommissionerFabricUUID];
        [v51 setKnownToSystemCommissioner:{objc_msgSend(v15, "isEqual:", v52)}];
      }

      else
      {
        [v51 setKnownToSystemCommissioner:1];
      }

      v14 = v82;
      [v51 setHasPriorSuccessfulPairing:v79];
      [v51 setDiscriminatorIsOriginatedFromShort:{objc_msgSend(v82, "hasShortDiscriminator")}];
      v58 = [v82 setupPayloadString];
      [v51 setSetupPayloadString:v58];

      [v51 setControllerWrapper:v81];
      if (isFeatureMatterRVCEnabled())
      {
        [v81 resume];
      }

      v59 = [(HMMTRAccessoryServerBrowser *)v29 pairingWindowInfoTable];
      v60 = [v82 setupPayloadString];
      v61 = [MEMORY[0x277CBEAA8] now];
      v57 = [v59 retrieveAccessoryServerForPairingWindowWithSetupPayload:v60 currentDate:v61];

      if (v57)
      {
        if ([v57 isWEDDevice])
        {
          [v51 setWedDevice:1];
          v62 = [v57 eMACAddress];
          [v51 setEMACAddress:v62];
        }

        [v51 setLinkLayerType:{objc_msgSend(v57, "linkLayerType")}];
        v63 = objc_autoreleasePoolPush();
        v64 = v29;
        v65 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v65, OS_LOG_TYPE_INFO))
        {
          HMFGetLogIdentifier();
          v66 = v83 = v63;
          if ([v51 isWEDDevice])
          {
            v67 = " WED";
          }

          else
          {
            v67 = "";
          }

          v68 = [v51 linkLayerType];
          v69 = "non-Thread";
          *buf = 138544130;
          v87 = v66;
          v88 = 2080;
          if (v68 == 4)
          {
            v69 = "Thread";
          }

          v89 = v67;
          v19 = v78;
          v90 = 2080;
          v91 = v69;
          v92 = 2112;
          v93 = v51;
          _os_log_impl(&dword_22AEAE000, v65, OS_LOG_TYPE_INFO, "%{public}@Pairing with%s %s accessory %@ via locally opened pairing window", buf, 0x2Au);

          v63 = v83;
        }

        objc_autoreleasePoolPop(v63);
      }

      v70 = objc_autoreleasePoolPush();
      v71 = v29;
      v72 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v72, OS_LOG_TYPE_INFO))
      {
        v73 = HMFGetLogIdentifier();
        *buf = 138543618;
        v87 = v73;
        v88 = 2112;
        v89 = v51;
        _os_log_impl(&dword_22AEAE000, v72, OS_LOG_TYPE_INFO, "%{public}@Ready to pair with Accessory %@.", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v70);
      [v71[7] addObject:v51];
      (*(v19 + 2))(v19, 0, v51, 0);
      if ([v71 _delegateRespondsToSelector:sel_accessoryServerBrowser_didFindAccessoryServer_stateChanged_stateNumber_])
      {
        v74 = [v71 delegateQueue];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __163__HMMTRAccessoryServerBrowser__prepareForPairingWithSetupPayload_targetFabricUUID_fabricID_controllerWrapper_hasPriorSuccessfulPairing_category_completionHandler___block_invoke;
        block[3] = &unk_2786EF328;
        block[4] = v71;
        v85 = v51;
        dispatch_async(v74, block);
      }

      v17 = v81;
    }

    else
    {
      v53 = objc_autoreleasePoolPush();
      v54 = v29;
      v55 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
      {
        v56 = HMFGetLogIdentifier();
        *buf = 138543362;
        v87 = v56;
        _os_log_impl(&dword_22AEAE000, v55, OS_LOG_TYPE_ERROR, "%{public}@Unable to create server...pairing won't work.", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v53);
      v57 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:15];
      v19 = v78;
      (*(v78 + 2))(v78, 0, 0, v57);
      v17 = v81;
      v14 = v82;
    }

    v16 = v80;
    v18 = v77;
  }

  else
  {
    v23 = objc_autoreleasePoolPush();
    v24 = self;
    v25 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = HMFGetLogIdentifier();
      *buf = 138543362;
      v87 = v26;
      _os_log_impl(&dword_22AEAE000, v25, OS_LOG_TYPE_ERROR, "%{public}@CHIP Storage has not been initialized...pairing won't work", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v23);
    v27 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:15];
    (*(v19 + 2))(v19, 0, 0, v27);
  }

  v75 = *MEMORY[0x277D85DE8];
}

void __163__HMMTRAccessoryServerBrowser__prepareForPairingWithSetupPayload_targetFabricUUID_fabricID_controllerWrapper_hasPriorSuccessfulPairing_category_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 accessoryServerBrowser:*(a1 + 32) didFindAccessoryServer:*(a1 + 40) stateChanged:0 stateNumber:0];
}

- (void)prepareForPairingWithSetupPayload:(id)a3 targetFabricUUID:(id)a4 completionHandler:(id)a5
{
  v37 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_autoreleasePoolPush();
  v12 = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    *buf = 138543874;
    v32 = v14;
    v33 = 2112;
    v34 = v8;
    v35 = 2112;
    v36 = v9;
    _os_log_impl(&dword_22AEAE000, v13, OS_LOG_TYPE_INFO, "%{public}@Prepare pairing with setup payload: %@, targetfabricUUID: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v11);
  v15 = [(HMMTRAccessoryServerBrowser *)v12 homeFabricControllers];
  v16 = [v15 cachedWrapperWithTargetFabricUUID:v9];

  if (v16)
  {
    v17 = [v16 startupParams];
    v18 = [v17 fabricID];

    [(HMMTRAccessoryServerBrowser *)v12 setCurrentFabricUUID:v9];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __100__HMMTRAccessoryServerBrowser_prepareForPairingWithSetupPayload_targetFabricUUID_completionHandler___block_invoke;
    v25[3] = &unk_2786EEE48;
    v25[4] = v12;
    v26 = v8;
    v27 = v9;
    v28 = v18;
    v29 = v16;
    v30 = v10;
    v19 = v18;
    [(HMMTRAccessoryServerBrowser *)v12 dispatchBlock:v25];
  }

  else
  {
    v20 = objc_autoreleasePoolPush();
    v21 = v12;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = HMFGetLogIdentifier();
      *buf = 138543618;
      v32 = v23;
      v33 = 2112;
      v34 = v9;
      _os_log_impl(&dword_22AEAE000, v22, OS_LOG_TYPE_ERROR, "%{public}@Cached wrapper required for pairing prep was not found for %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v20);
    v19 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:15];
    (*(v10 + 2))(v10, 0, 0, v19);
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (void)_deleteOldPairingsForFabricUUID:(id)a3
{
  v55 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMMTRAccessoryServerBrowser *)self storage];
  v6 = [v5 dataSource];
  v7 = [v6 storageDataSourceForFabricUUID:v4];

  v8 = [v7 allNodeIDs];
  v9 = [(HMMTRAccessoryServerBrowser *)self storageForFabricUUID:v4 sharedAdmin:0];
  v10 = [v9 pairedNodeIDs];
  v11 = objc_autoreleasePoolPush();
  v12 = self;
  v13 = HMFGetOSLogHandle();
  v14 = v13;
  if (v10)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543874;
      v50 = v15;
      v51 = 2112;
      v52 = v10;
      v53 = 2112;
      v54 = v8;
      _os_log_impl(&dword_22AEAE000, v14, OS_LOG_TYPE_DEBUG, "%{public}@Preparing for cleanup: comparing paired node IDs %@ vs all node IDs %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v11);
    if (v8)
    {
      v38 = v9;
      v39 = v7;
      v40 = v4;
      v16 = [(HMMTRAccessoryServerBrowser *)v12 controllerWrapperForFabricUUID:v4];
      v41 = [v16 controller];

      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      v37 = v10;
      obj = v10;
      v17 = [obj countByEnumeratingWithState:&v44 objects:v48 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v45;
        while (2)
        {
          for (i = 0; i != v18; ++i)
          {
            if (*v45 != v19)
            {
              objc_enumerationMutation(obj);
            }

            v21 = *(*(&v44 + 1) + 8 * i);
            if (([v8 containsObject:{v21, v37}] & 1) == 0)
            {
              v22 = v8;
              v23 = objc_autoreleasePoolPush();
              v24 = v12;
              v25 = v12;
              v26 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
              {
                v27 = HMFGetLogIdentifier();
                *buf = 138543618;
                v50 = v27;
                v51 = 2112;
                v52 = v21;
                _os_log_impl(&dword_22AEAE000, v26, OS_LOG_TYPE_INFO, "%{public}@Cleaning up unpaired server with nodeID:%@", buf, 0x16u);
              }

              objc_autoreleasePoolPop(v23);
              v28 = [MEMORY[0x277CD5220] deviceWithNodeID:v21 controller:v41];
              if (!v28)
              {
                v32 = objc_autoreleasePoolPush();
                v33 = v25;
                v34 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
                {
                  v35 = HMFGetLogIdentifier();
                  *buf = 138543618;
                  v50 = v35;
                  v51 = 2112;
                  v52 = v21;
                  _os_log_impl(&dword_22AEAE000, v34, OS_LOG_TYPE_ERROR, "%{public}@Unable to get connected device(%@), cleaning up locally", buf, 0x16u);
                }

                objc_autoreleasePoolPop(v32);
                v7 = v39;
                v4 = v40;
                v10 = v37;
                v9 = v38;
                v8 = v22;
                goto LABEL_24;
              }

              v29 = v28;
              v30 = [(HAPAccessoryServerBrowser *)v25 workQueue];
              v43[0] = MEMORY[0x277D85DD0];
              v43[1] = 3221225472;
              v43[2] = __63__HMMTRAccessoryServerBrowser__deleteOldPairingsForFabricUUID___block_invoke;
              v43[3] = &unk_2786EF9E0;
              v43[4] = v25;
              v43[5] = v21;
              [v29 unpairDevice:v30 completionHandler:v43];

              v12 = v24;
              v8 = v22;
            }
          }

          v18 = [obj countByEnumeratingWithState:&v44 objects:v48 count:16];
          if (v18)
          {
            continue;
          }

          break;
        }
      }

      v9 = v38;
      [v38 removeAndSyncAllKeysNotIncludedInActiveNodeIDs:v8];

      v7 = v39;
      v4 = v40;
      v10 = v37;
    }
  }

  else
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v31 = HMFGetLogIdentifier();
      *buf = 138543362;
      v50 = v31;
      _os_log_impl(&dword_22AEAE000, v14, OS_LOG_TYPE_INFO, "%{public}@No paired nodeIDs... Is this the first pairing?", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v11);
  }

LABEL_24:

  v36 = *MEMORY[0x277D85DE8];
}

void __63__HMMTRAccessoryServerBrowser__deleteOldPairingsForFabricUUID___block_invoke(uint64_t a1, void *a2)
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
    _os_log_impl(&dword_22AEAE000, v6, OS_LOG_TYPE_ERROR, "%{public}@Notified device(%@) of removal, cleaning up locally. Error: %@", &v10, 0x20u);
  }

  objc_autoreleasePoolPop(v4);
  v9 = *MEMORY[0x277D85DE8];
}

- (void)_setUpBrowserTargetFabricUUID:(id)a3
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
    _os_log_impl(&dword_22AEAE000, v7, OS_LOG_TYPE_INFO, "%{public}@Setting up target Fabric UUID = %@", &v19, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  if (v4)
  {
    [(HMMTRAccessoryServerBrowser *)v6 setCurrentFabricUUID:v4];
    v9 = [(HMMTRAccessoryServerBrowser *)v6 deviceControllerForFabricUUID:v4];

    if (!v9)
    {
      v10 = objc_autoreleasePoolPush();
      v11 = v6;
      v12 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = HMFGetLogIdentifier();
        v19 = 138543618;
        v20 = v13;
        v21 = 2112;
        v22 = v4;
        _os_log_impl(&dword_22AEAE000, v12, OS_LOG_TYPE_INFO, "%{public}@Failed to start matter stack for target fabric UUID: %@", &v19, 0x16u);
      }

      objc_autoreleasePoolPop(v10);
    }

    [(HMMTRAccessoryServerBrowser *)v6 setBrowserState:1];
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    v15 = v6;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      v19 = 138543362;
      v20 = v17;
      _os_log_impl(&dword_22AEAE000, v16, OS_LOG_TYPE_ERROR, "%{public}@Cannot set nil target fabric UUID", &v19, 0xCu);
    }

    objc_autoreleasePoolPop(v14);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)didFinishPairingAccessoryServer:(id)a3 operationDisabled:(BOOL)a4
{
  [(HMMTRAccessoryServerBrowser *)self disableUnrestrictedOperationsForAccessoryServer:a3];
  [(HMMTRAccessoryServerBrowser *)self resumeAllOperations];
  v6 = [(HMMTRAccessoryServerBrowser *)self threadRadioManager];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __81__HMMTRAccessoryServerBrowser_didFinishPairingAccessoryServer_operationDisabled___block_invoke;
  v7[3] = &unk_2786EF290;
  v7[4] = self;
  [v6 stopAccessoryPairingWithCompletion:v7];

  if (!a4)
  {
    [(HMMTRAccessoryServerBrowser *)self restartDiscovery];
  }
}

void __81__HMMTRAccessoryServerBrowser_didFinishPairingAccessoryServer_operationDisabled___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v9 = 138543618;
    v10 = v7;
    v11 = 2112;
    v12 = v3;
    _os_log_impl(&dword_22AEAE000, v6, OS_LOG_TYPE_INFO, "%{public}@stopAccessoryPairingWithCompletion completed, error: %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_restartDiscovery
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = [(HMMTRAccessoryServerBrowser *)self currentFabric];
  v4 = [(HMMTRAccessoryServerBrowser *)self isCurrentDeviceAllowedAccessoryControlDespiteReachableResidentForFabric:v3];

  if (v4)
  {
    v5 = [(HMMTRAccessoryServerBrowser *)self currentFabricUUID];
    v6 = [(HMMTRAccessoryServerBrowser *)self controllerWrapperForFabricUUID:v5];
    [v6 resume];

    v7 = [(HMMTRAccessoryServerBrowser *)self currentFabricUUID];
    [(HMMTRAccessoryServerBrowser *)self _connectPendingFabricConnectionsForTargetFabricUUID:v7];

    v8 = [(HMMTRAccessoryServerBrowser *)self threadRadioManager];
    v9 = [(HMMTRAccessoryServerBrowser *)self currentFabricUUID];
    v10 = [v8 hasMatterThreadAccessoryInHomeWithFabricUUID:v9];

    if (v10)
    {
      v11 = [(HMMTRAccessoryServerBrowser *)self threadRadioManager];
      v12 = [(HMMTRAccessoryServerBrowser *)self currentFabricUUID];
      [v11 startThreadRadioForHomeWithFabricUUID:v12];
    }

    else
    {
      v13 = objc_autoreleasePoolPush();
      v14 = self;
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = HMFGetLogIdentifier();
        v17 = [(HMMTRAccessoryServerBrowser *)v14 currentFabricUUID];
        v24 = 138543618;
        v25 = v16;
        v26 = 2112;
        v27 = v17;
        _os_log_impl(&dword_22AEAE000, v15, OS_LOG_TYPE_INFO, "%{public}@Not starting thread because fabric %@ has no thread accessories", &v24, 0x16u);
      }

      objc_autoreleasePoolPop(v13);
    }

    v18 = objc_autoreleasePoolPush();
    v19 = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = HMFGetLogIdentifier();
      v22 = [(HMMTRAccessoryServerBrowser *)v19 currentFabricUUID];
      v24 = 138543618;
      v25 = v21;
      v26 = 2112;
      v27 = v22;
      _os_log_impl(&dword_22AEAE000, v20, OS_LOG_TYPE_INFO, "%{public}@Starting discovery for fabric %@", &v24, 0x16u);
    }

    objc_autoreleasePoolPop(v18);
    [(HMMTRAccessoryServerBrowser *)v19 setupPairedDevices];
    [(HMMTRAccessoryServerBrowser *)v19 startDiscoveringAccessoryServersWithNoResponseToDelegate];
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)restartDiscovery
{
  objc_initWeak(&location, self);
  v3 = [(HAPAccessoryServerBrowser *)self workQueue];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __47__HMMTRAccessoryServerBrowser_restartDiscovery__block_invoke;
  v4[3] = &unk_2786EF2B8;
  objc_copyWeak(&v5, &location);
  dispatch_async(v3, v4);

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __47__HMMTRAccessoryServerBrowser_restartDiscovery__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _restartDiscovery];
}

- (void)_stopMatterStackWithReason:(id)a3
{
  v46 = *MEMORY[0x277D85DE8];
  v31 = a3;
  v4 = objc_autoreleasePoolPush();
  v5 = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v8 = [(HMMTRAccessoryServerBrowser *)v5 currentFabricUUID];
    *buf = 138543618;
    v43 = v7;
    v44 = 2112;
    v45 = v8;
    _os_log_impl(&dword_22AEAE000, v6, OS_LOG_TYPE_INFO, "%{public}@Stopping the matter stack for target fabric UUID %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  v9 = [MEMORY[0x277CBEB18] array];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v10 = v5->_discoveredAccessoryServers;
  v11 = [(NSMutableSet *)v10 countByEnumeratingWithState:&v36 objects:v41 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v37;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v37 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v36 + 1) + 8 * i);
        v16 = [v15 fabricUUID];
        v17 = [(HMMTRAccessoryServerBrowser *)v5 currentFabricUUID];
        v18 = [v16 isEqual:v17];

        if (v18)
        {
          [v9 addObject:v15];
        }
      }

      v12 = [(NSMutableSet *)v10 countByEnumeratingWithState:&v36 objects:v41 count:16];
    }

    while (v12);
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v19 = v9;
  v20 = [v19 countByEnumeratingWithState:&v32 objects:v40 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v33;
    do
    {
      for (j = 0; j != v21; ++j)
      {
        if (*v33 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v32 + 1) + 8 * j);
        [v24 disable];
        [(HMMTRAccessoryServerBrowser *)v5 _invalidateAccessoryServer:v24 reason:v31 withCompletion:0];
      }

      v21 = [v19 countByEnumeratingWithState:&v32 objects:v40 count:16];
    }

    while (v21);
  }

  v25 = [(HMMTRAccessoryServerBrowser *)v5 currentFabricUUID];
  [(HMMTRAccessoryServerBrowser *)v5 _suspendOperationsForTargetFabricUUID:v25];

  if (![(HMMTRAccessoryServerBrowser *)v5 preventThreadStopDuringStackRestart])
  {
    v26 = [(HMMTRAccessoryServerBrowser *)v5 threadRadioManager];
    v27 = [(HMMTRAccessoryServerBrowser *)v5 currentFabricUUID];
    [v26 stopThreadRadioForHomeWithFabricUUID:v27];
  }

  [(HMMTRAccessoryServerBrowser *)v5 setPreventThreadStopDuringStackRestart:0];
  v28 = [(HMMTRAccessoryServerBrowser *)v5 currentFabricUUID];
  v29 = [(HMMTRAccessoryServerBrowser *)v5 controllerWrapperForFabricUUID:v28];
  [v29 suspendOrShutdown];

  [(HMMTRAccessoryServerBrowser *)v5 setCurrentFabricUUID:0];
  v30 = *MEMORY[0x277D85DE8];
}

- (void)handlePairingForThreadAccessoryWithTargetFabricUUID:(id)a3 nodeID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HAPAccessoryServerBrowser *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __90__HMMTRAccessoryServerBrowser_handlePairingForThreadAccessoryWithTargetFabricUUID_nodeID___block_invoke;
  block[3] = &unk_2786EF3C8;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

void __90__HMMTRAccessoryServerBrowser_handlePairingForThreadAccessoryWithTargetFabricUUID_nodeID___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _setUpBrowserTargetFabricIfNotFabricUUID:*(a1 + 40) rediscoverAccessories:0];
  if ([*(a1 + 32) canEstablishConnectionForNodeID:*(a1 + 48)])
  {
    v3 = [*(a1 + 32) threadRadioManager];
    v2 = [*(a1 + 32) currentFabricUUID];
    [v3 startThreadRadioForHomeWithFabricUUID:v2];
  }
}

- (void)addFabricWithActiveClientForTargetFabricUUID:(id)a3
{
  v4 = a3;
  v5 = [(HAPAccessoryServerBrowser *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __76__HMMTRAccessoryServerBrowser_addFabricWithActiveClientForTargetFabricUUID___block_invoke;
  v7[3] = &unk_2786EF328;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __76__HMMTRAccessoryServerBrowser_addFabricWithActiveClientForTargetFabricUUID___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) addFabricWithActiveClients:*(a1 + 40)];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 40);
    v7 = [*(a1 + 32) fabricsWithActiveClients];
    v9 = 138543874;
    v10 = v5;
    v11 = 2112;
    v12 = v6;
    v13 = 2112;
    v14 = v7;
    _os_log_impl(&dword_22AEAE000, v4, OS_LOG_TYPE_INFO, "%{public}@Added active client for pairing into fabric %@, currently active clients: %@", &v9, 0x20u);
  }

  objc_autoreleasePoolPop(v2);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_setUpUpdatedBrowserTargetFabricUUID:(id)a3 rediscoverAccessories:(BOOL)a4 overrideAccessoryControlAllowed:(BOOL)a5
{
  v6 = a4;
  v65 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = objc_autoreleasePoolPush();
  v10 = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    v13 = [(HMMTRAccessoryServerBrowser *)v10 currentFabricUUID];
    v59 = 138543874;
    v60 = v12;
    v61 = 2112;
    v62 = v8;
    v63 = 2112;
    v64 = v13;
    _os_log_impl(&dword_22AEAE000, v11, OS_LOG_TYPE_INFO, "%{public}@Setting up controller wrapper for Target Fabric UUID = %@, currentFabricUUID = %@", &v59, 0x20u);
  }

  objc_autoreleasePoolPop(v9);
  if (v8)
  {
    v14 = [(HMMTRAccessoryServerBrowser *)v10 currentFabricUUID];
    if (v14)
    {
      v15 = v14;
      v16 = [(HMMTRAccessoryServerBrowser *)v10 currentFabricUUID];
      v17 = [v16 isEqual:v8];

      if (v17)
      {
        [(HMMTRAccessoryServerBrowser *)v10 setPreventThreadStopDuringStackRestart:1];
      }
    }
  }

  if (![(HMMTRAccessoryServerBrowser *)v10 preventThreadStopDuringStackRestart])
  {
    v18 = [(HMMTRAccessoryServerBrowser *)v10 threadRadioManager];
    v19 = [(HMMTRAccessoryServerBrowser *)v10 systemCommissionerFabricUUID];
    [v18 stopThreadRadioForSystemCommissionerFabricUUID:v19];

    v20 = [(HMMTRAccessoryServerBrowser *)v10 threadRadioManager];
    v21 = [(HMMTRAccessoryServerBrowser *)v10 currentFabricUUID];
    [v20 stopThreadRadioForHomeWithFabricUUID:v21];
  }

  [(HMMTRAccessoryServerBrowser *)v10 setPreventThreadStopDuringStackRestart:0];
  [(HMMTRAccessoryServerBrowser *)v10 _setUpBrowserTargetFabricUUID:v8];
  if (isFeatureMatteriPhoneOnlyPairingControlEnabled())
  {
    if (!v8)
    {
      v22 = [(HMMTRAccessoryServerBrowser *)v10 threadRadioManager];
      [v22 allowDisconnect];

      v23 = [(HMMTRAccessoryServerBrowser *)v10 fabricsWithActiveClients];
      v24 = [v23 count];

      if (v24)
      {
        v25 = [(HMMTRAccessoryServerBrowser *)v10 fabricsWithActiveClients];
        v8 = [v25 anyObject];

        v26 = objc_autoreleasePoolPush();
        v27 = v10;
        v28 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
        {
          v29 = HMFGetLogIdentifier();
          v59 = 138543618;
          v60 = v29;
          v61 = 2112;
          v62 = v8;
          _os_log_impl(&dword_22AEAE000, v28, OS_LOG_TYPE_INFO, "%{public}@no target fabric UUID was provided, restarting with fabric with active client: %@", &v59, 0x16u);
        }

        objc_autoreleasePoolPop(v26);
        [(HMMTRAccessoryServerBrowser *)v27 _setUpBrowserTargetFabricUUID:v8];
      }

      else
      {
        v8 = 0;
      }
    }

    v30 = [(HMMTRAccessoryServerBrowser *)v10 currentFabricUUID];

    if (v30)
    {
      if (a5 || ([(HMMTRAccessoryServerBrowser *)v10 currentFabric], v31 = objc_claimAutoreleasedReturnValue(), v32 = [(HMMTRAccessoryServerBrowser *)v10 isCurrentDeviceAllowedAccessoryControlDespiteReachableResidentForFabric:v31], v31, v32))
      {
        v33 = [(HMMTRAccessoryServerBrowser *)v10 currentFabricUUID];
        v34 = [(HMMTRAccessoryServerBrowser *)v10 controllerWrapperForFabricUUID:v33];
        [v34 resume];

        if (v6 && (-[HMMTRAccessoryServerBrowser fabricsWithActiveClients](v10, "fabricsWithActiveClients"), v35 = objc_claimAutoreleasedReturnValue(), -[HMMTRAccessoryServerBrowser currentFabricUUID](v10, "currentFabricUUID"), v36 = objc_claimAutoreleasedReturnValue(), v37 = [v35 containsObject:v36], v36, v35, v37))
        {
          v38 = objc_autoreleasePoolPush();
          v39 = v10;
          v40 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
          {
            v41 = HMFGetLogIdentifier();
            v42 = [(HMMTRAccessoryServerBrowser *)v39 currentFabricUUID];
            v59 = 138543618;
            v60 = v41;
            v61 = 2112;
            v62 = v42;
            _os_log_impl(&dword_22AEAE000, v40, OS_LOG_TYPE_INFO, "%{public}@Starting discovery for target fabric UUID %@ because there are active clients", &v59, 0x16u);
          }

          objc_autoreleasePoolPop(v38);
          [(HMMTRAccessoryServerBrowser *)v39 _restartDiscovery];
        }

        else
        {
          v47 = [(HMMTRAccessoryServerBrowser *)v10 threadRadioManager];
          v48 = [(HMMTRAccessoryServerBrowser *)v10 currentFabricUUID];
          v49 = [v47 hasMatterThreadAccessoryInHomeWithFabricUUID:v48];

          if (v49)
          {
            v50 = objc_autoreleasePoolPush();
            v51 = v10;
            v52 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
            {
              v53 = HMFGetLogIdentifier();
              v54 = [(HMMTRAccessoryServerBrowser *)v51 currentFabricUUID];
              v59 = 138543618;
              v60 = v53;
              v61 = 2112;
              v62 = v54;
              _os_log_impl(&dword_22AEAE000, v52, OS_LOG_TYPE_INFO, "%{public}@Starting thread for target fabric UUID %@ because it became the current fabric", &v59, 0x16u);
            }

            objc_autoreleasePoolPop(v50);
            v55 = [(HMMTRAccessoryServerBrowser *)v51 threadRadioManager];
            v56 = [(HMMTRAccessoryServerBrowser *)v51 currentFabricUUID];
            [v55 startThreadRadioForHomeWithFabricUUID:v56];
          }
        }

        goto LABEL_34;
      }

      v43 = objc_autoreleasePoolPush();
      v44 = v10;
      v45 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
      {
        v46 = HMFGetLogIdentifier();
        v57 = [(HMMTRAccessoryServerBrowser *)v44 currentFabricUUID];
        v59 = 138543618;
        v60 = v46;
        v61 = 2112;
        v62 = v57;
        _os_log_impl(&dword_22AEAE000, v45, OS_LOG_TYPE_INFO, "%{public}@Not starting local discovery for target fabric UUID %@, resident available", &v59, 0x16u);

        goto LABEL_32;
      }
    }

    else
    {
      v43 = objc_autoreleasePoolPush();
      v44 = v10;
      v45 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
      {
        v46 = HMFGetLogIdentifier();
        v59 = 138543362;
        v60 = v46;
        _os_log_impl(&dword_22AEAE000, v45, OS_LOG_TYPE_INFO, "%{public}@Fabric not provided and no active clients, not configuring any controller wrapper", &v59, 0xCu);
LABEL_32:
      }
    }

    objc_autoreleasePoolPop(v43);
  }

LABEL_34:

  v58 = *MEMORY[0x277D85DE8];
}

- (void)setUpBrowserTargetFabricWithoutRediscoveringAccessoriesForHomeFabricUUID:(id)a3
{
  v4 = a3;
  v5 = [(HAPAccessoryServerBrowser *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __104__HMMTRAccessoryServerBrowser_setUpBrowserTargetFabricWithoutRediscoveringAccessoriesForHomeFabricUUID___block_invoke;
  v7[3] = &unk_2786EF328;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)setUpBrowserTargetFabricAndRediscoverAccessoriesForHomeFabricUUID:(id)a3
{
  v4 = a3;
  v5 = [(HAPAccessoryServerBrowser *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __97__HMMTRAccessoryServerBrowser_setUpBrowserTargetFabricAndRediscoverAccessoriesForHomeFabricUUID___block_invoke;
  v7[3] = &unk_2786EF328;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)setUpBrowserTargetFabricUUID:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __71__HMMTRAccessoryServerBrowser_setUpBrowserTargetFabricUUID_completion___block_invoke;
  v10[3] = &unk_2786F0EA8;
  v10[4] = self;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  [(HMMTRAccessoryServerBrowser *)self dispatchBlock:v10];
}

uint64_t __71__HMMTRAccessoryServerBrowser_setUpBrowserTargetFabricUUID_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _setUpBrowserTargetFabricUUID:*(a1 + 40)];
  v2 = *(*(a1 + 48) + 16);

  return v2();
}

- (void)setUpBrowserTargetFabricUUID:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __60__HMMTRAccessoryServerBrowser_setUpBrowserTargetFabricUUID___block_invoke;
  v6[3] = &unk_2786EF328;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(HMMTRAccessoryServerBrowser *)self dispatchBlock:v6];
}

- (unint64_t)_getRandomFabricId
{
  v2 = self;
  v3 = [(HMMTRAccessoryServerBrowser *)self storage];
  v4 = [v3 dataSource];

  v5 = [v4 allFabricIDs];
  v14 = v2;
  do
  {
    while (1)
    {
      v6 = +[HMMTRUtilities randomNodeID];
      v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v6];
      if ([v5 containsObject:v7])
      {
        do
        {

          v6 = +[HMMTRUtilities randomNodeID];
          v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v6];
        }

        while (([v5 containsObject:v7] & 1) != 0);
      }

      v8 = [(HMMTRAccessoryServerBrowser *)v2 storage];
      v9 = [v8 fabricID];
      v10 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v6];
      if (([v9 isEqualToNumber:v10] & 1) == 0)
      {
        break;
      }
    }

    v11 = [(HMMTRAccessoryServerBrowser *)v2 systemCommissionerFabricID];
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v6];
    v15 = [v11 isEqualToNumber:v12];

    v2 = v14;
  }

  while ((v15 & 1) != 0);

  return v6;
}

- (unint64_t)_generateNodeID
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = [(HMMTRAccessoryServerBrowser *)self storage];
  v4 = [v3 fabricDataSource];
  v5 = [v4 allNodeIDs];

  do
  {
    v6 = +[HMMTRUtilities randomNodeID];
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v6];
    v8 = [v5 containsObject:v7];
  }

  while ((v8 & 1) != 0);
  v9 = objc_autoreleasePoolPush();
  v10 = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    v15 = 138543618;
    v16 = v12;
    v17 = 2048;
    v18 = v6;
    _os_log_impl(&dword_22AEAE000, v11, OS_LOG_TYPE_INFO, "%{public}@Picking nodeID = %llu for the pairing request", &v15, 0x16u);
  }

  objc_autoreleasePoolPop(v9);
  v13 = *MEMORY[0x277D85DE8];
  return v6;
}

- (BOOL)_delegateRespondsToSelector:(SEL)a3
{
  v4 = [(HMMTRAccessoryServerBrowser *)self delegate];
  if (v4)
  {
    v5 = [(HMMTRAccessoryServerBrowser *)self delegateQueue];
    if (v5)
    {
      v6 = [(HMMTRAccessoryServerBrowser *)self delegate];
      v7 = objc_opt_respondsToSelector();
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

  return v7 & 1;
}

- (id)_allServers
{
  v3 = [(HMMTRAccessoryServerBrowser *)self discoveredAccessoryServers];
  v4 = [v3 mutableCopy];

  v5 = [(HMMTRAccessoryServerBrowser *)self stagedAccessoryServers];
  [v4 unionSet:v5];

  return v4;
}

- (void)announceOtaProviderForNodeID:(id)a3 isRetry:(BOOL)a4
{
  v4 = a4;
  v30 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if ([(HMMTRAccessoryServerBrowser *)self isCurrentDevicePrimaryResident]|| [(HMMTRAccessoryServerBrowser *)self isCurrentDeviceMobileAndAllowedAccessoryControl]|| [(HMMTRAccessoryServerBrowser *)self isCurrentDeviceAllowedAccessoryControlDespiteReachableResident])
  {
    if ((_os_feature_enabled_impl() & 1) != 0 || CFPreferencesGetAppBooleanValue(@"MatterOTA", @"/Library/Managed Preferences/mobile/com.apple.homed.plist", 0))
    {
      v7 = [(HMMTRAccessoryServerBrowser *)self accessoryServerWithNodeID:v6];
      v8 = v7;
      if (v7)
      {
        v9 = [v7 matterFirmwareUpdateStatus];
        [v9 updateFirmwareUpdateStatus:3];

        v10 = [v8 matterFirmwareUpdateStatus];
        v11 = v10;
        if (v4)
        {
          v12 = [v10 incrementOtaAnnounceDelayCounter];
        }

        else
        {
          [v10 resetOtaAnnounceDelayCounter];
          v12 = 0;
        }

        v17 = [v8 deviceController];
        v18 = [v17 controllerNodeId];
        v24[0] = MEMORY[0x277D85DD0];
        v24[1] = 3221225472;
        v24[2] = __68__HMMTRAccessoryServerBrowser_announceOtaProviderForNodeID_isRetry___block_invoke;
        v24[3] = &unk_2786EF9E0;
        v24[4] = self;
        v25 = v8;
        [v25 announceOtaProvider:v18 providerEndpoint:&unk_283EE87C0 immediateAnnouncement:0 delayCounter:v12 completionHandler:v24];
      }

      else
      {
        v13 = objc_autoreleasePoolPush();
        v14 = self;
        v15 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          v16 = HMFGetLogIdentifier();
          *buf = 138543618;
          v27 = v16;
          v28 = 2112;
          v29 = v6;
          _os_log_impl(&dword_22AEAE000, v15, OS_LOG_TYPE_ERROR, "%{public}@Could not associate with a paired accessory for announceOtaProviderForNodeID:%@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v13);
      }
    }
  }

  else
  {
    v20 = objc_autoreleasePoolPush();
    v21 = self;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = HMFGetLogIdentifier();
      *buf = 138543362;
      v27 = v23;
      _os_log_impl(&dword_22AEAE000, v22, OS_LOG_TYPE_INFO, "%{public}@Current device cannot be an OTA provider", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v20);
  }

  v19 = *MEMORY[0x277D85DE8];
}

void __68__HMMTRAccessoryServerBrowser_announceOtaProviderForNodeID_isRetry___block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
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
      v9 = *(a1 + 40);
      v16 = 138543874;
      v17 = v8;
      v18 = 2112;
      v19 = v9;
      v20 = 2112;
      v21 = v3;
      v10 = "%{public}@OTA Announce failed for server %@: %@";
      v11 = v7;
      v12 = OS_LOG_TYPE_ERROR;
      v13 = 32;
LABEL_6:
      _os_log_impl(&dword_22AEAE000, v11, v12, v10, &v16, v13);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v14 = *(a1 + 40);
    v16 = 138543618;
    v17 = v8;
    v18 = 2112;
    v19 = v14;
    v10 = "%{public}@OTA Announce completed for server: %@";
    v11 = v7;
    v12 = OS_LOG_TYPE_INFO;
    v13 = 22;
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v4);
  v15 = *MEMORY[0x277D85DE8];
}

- (void)_updateAccessoryControlListForServer:(id)a3 completion:(id)a4
{
  v31 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 populateACLEntriesAfterPairing];
  v9 = [v8 objectForKeyedSubscript:@"adminNodesForPairing"];
  v10 = [v8 objectForKeyedSubscript:@"regularNodesForPairing"];
  v11 = [(HMMTRAccessoryServerBrowser *)self nodesWithPendingACLOverwrite];
  v12 = [v6 nodeID];
  v13 = [v11 containsObject:v12];

  if (v13)
  {
    v14 = objc_autoreleasePoolPush();
    v15 = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = HMFGetLogIdentifier();
      *buf = 138543362;
      v30 = v17;
      _os_log_impl(&dword_22AEAE000, v16, OS_LOG_TYPE_INFO, "%{public}@Overwriting ACL on accessory to remove node ID of shared Admin controller", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v14);
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __79__HMMTRAccessoryServerBrowser__updateAccessoryControlListForServer_completion___block_invoke;
    v26[3] = &unk_2786F0C10;
    v18 = &v27;
    v26[4] = v15;
    v27 = v6;
    v19 = &v28;
    v28 = v7;
    v20 = v7;
    [v6 updateAccessoryControlToAdministratorNodes:v9 sharedUserNodes:v10 completion:v26];
  }

  else
  {
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __79__HMMTRAccessoryServerBrowser__updateAccessoryControlListForServer_completion___block_invoke_322;
    v23[3] = &unk_2786F0C10;
    v18 = &v24;
    v23[4] = self;
    v24 = v6;
    v19 = &v25;
    v25 = v7;
    v21 = v7;
    [v6 updateAccessoryControlToIncludeAdministratorNodes:v9 sharedUserNodes:v10 completion:v23];
  }

  v22 = *MEMORY[0x277D85DE8];
}

void __79__HMMTRAccessoryServerBrowser__updateAccessoryControlListForServer_completion___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
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
      v14 = 138543618;
      v15 = v8;
      v16 = 2112;
      v17 = v3;
      _os_log_impl(&dword_22AEAE000, v7, OS_LOG_TYPE_ERROR, "%{public}@Failed to update Access Control List on the accessory with error %@", &v14, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v10 = *(a1 + 40);
      v14 = 138543618;
      v15 = v9;
      v16 = 2112;
      v17 = v10;
      _os_log_impl(&dword_22AEAE000, v7, OS_LOG_TYPE_INFO, "%{public}@Updated Access Control List on accessory %@", &v14, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    v11 = [*(a1 + 32) nodesWithPendingACLOverwrite];
    v12 = [*(a1 + 40) nodeID];
    [v11 removeObject:v12];
  }

  (*(*(a1 + 48) + 16))();

  v13 = *MEMORY[0x277D85DE8];
}

void __79__HMMTRAccessoryServerBrowser__updateAccessoryControlListForServer_completion___block_invoke_322(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
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
      v16 = 138543618;
      v17 = v8;
      v18 = 2112;
      v19 = v3;
      v9 = "%{public}@Failed to update Access Control List on the accessory with error %@";
      v10 = v7;
      v11 = OS_LOG_TYPE_ERROR;
LABEL_6:
      _os_log_impl(&dword_22AEAE000, v10, v11, v9, &v16, 0x16u);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v12 = *(a1 + 40);
    v16 = 138543618;
    v17 = v8;
    v18 = 2112;
    v19 = v12;
    v9 = "%{public}@Updated Access Control List on accessory %@";
    v10 = v7;
    v11 = OS_LOG_TYPE_INFO;
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v4);
  (*(*(a1 + 48) + 16))(*(a1 + 48), v3, v13, v14);

  v15 = *MEMORY[0x277D85DE8];
}

- (id)_createCHIPAccessoryForNodeID:(unint64_t)a3 ifPaired:(BOOL)a4 fabricUUID:(id)a5 fatalError:(id *)a6
{
  v7 = a4;
  v194 = *MEMORY[0x277D85DE8];
  v158 = a5;
  if (!v7 || [(HMMTRAccessoryServerBrowser *)self _isDevicePaired:a3 fabricUUID:v158])
  {
    if (v158)
    {
      [(HMMTRAccessoryServerBrowser *)self storageForFabricUUID:v158 sharedAdmin:0];
    }

    else
    {
      [(HMMTRAccessoryServerBrowser *)self storageForSystemCommissioner];
    }
    v157 = ;
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
    v11 = [v157 isStagedForNode:v10];

    if (v11)
    {
      v12 = objc_autoreleasePoolPush();
      v13 = self;
      v14 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = HMFGetLogIdentifier();
        *buf = 138543618;
        v179 = v15;
        v180 = 2048;
        v181 = a3;
        _os_log_impl(&dword_22AEAE000, v14, OS_LOG_TYPE_INFO, "%{public}@Found staged accessory %llu in storage, skipping...", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v12);
      if (a6)
      {
        [MEMORY[0x277CCA9B8] hapErrorWithCode:18];
        *a6 = v16 = 0;
      }

      else
      {
        v16 = 0;
      }

      goto LABEL_100;
    }

    obj = a6;
    v17 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
    v18 = [v157 vendorIDForNode:v17];

    v19 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
    v20 = [v157 productIDForNode:v19];

    v21 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
    v22 = [v157 configNumberForNode:v21];

    v156 = a3;
    if (v158)
    {
      v23 = [(HMMTRAccessoryServerBrowser *)self storage];
      v24 = [v23 dataSource];
      v25 = [v24 storageDataSourceForFabricUUID:v158];

      v26 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
      v155 = v25;
      v27 = [v25 primaryAccessoryCategoryForNodeID:v26];
    }

    else
    {
      v26 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
      v27 = [v157 categoryForNode:v26];
      v155 = 0;
    }

    if (!v18 || !v20)
    {
      v32 = v20;
      v33 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v156];
      v34 = [v155 storageDataSourceForDeviceWithNodeID:v33];
      v35 = [v34 vendorID];

      v36 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v156];
      v37 = [v155 storageDataSourceForDeviceWithNodeID:v36];
      v20 = [v37 productID];

      v18 = v35;
    }

    if (v18)
    {
      v38 = v20 == 0;
    }

    else
    {
      v38 = 1;
    }

    v39 = !v38;
    v152 = v39;
    v154 = v27;
    if (v38 || !v27 || !v22)
    {
      v40 = objc_autoreleasePoolPush();
      v41 = self;
      v42 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
      {
        v43 = HMFGetLogIdentifier();
        [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v156];
        v45 = v44 = v22;
        *buf = 138544642;
        v179 = v43;
        v180 = 2112;
        v181 = v18;
        v182 = 2112;
        v183 = v20;
        v184 = 2112;
        v185 = v154;
        v186 = 2112;
        v187 = v44;
        v188 = 2112;
        v189 = v45;
        _os_log_impl(&dword_22AEAE000, v42, OS_LOG_TYPE_INFO, "%{public}@vendorID = %@, productID = %@, category = %@, configNumber = %@, nodeID = %@", buf, 0x3Eu);

        v22 = v44;
        v27 = v154;
      }

      objc_autoreleasePoolPop(v40);
      v46 = objc_autoreleasePoolPush();
      v47 = v41;
      v48 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
      {
        v49 = HMFGetLogIdentifier();
        *buf = 138543362;
        v179 = v49;
        _os_log_impl(&dword_22AEAE000, v48, OS_LOG_TYPE_INFO, "%{public}@All parameters are not available", buf, 0xCu);

        v27 = v154;
      }

      objc_autoreleasePoolPop(v46);
    }

    v50 = [HMMTRAccessoryServerFactory alloc];
    v51 = [(HAPAccessoryServerBrowser *)self keyStore];
    v52 = v20;
    v53 = [(HMMTRAccessoryServerFactory *)v50 initWithKeystore:v51 browser:self];

    v54 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v156];
    v161 = v18;
    v55 = v18;
    v56 = v52;
    v16 = [(HMMTRAccessoryServerFactory *)v53 vendAccessoryServerWithNodeID:v54 setupCode:0 discriminator:0 category:v27 vendorID:v55 productID:v52 serialNumber:0 firmwareRevision:@"1.0.0"];

    if (!v16)
    {
      v71 = objc_autoreleasePoolPush();
      v72 = self;
      v73 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
      {
        v74 = HMFGetLogIdentifier();
        *buf = 138543618;
        v179 = v74;
        v180 = 2048;
        v181 = v156;
        _os_log_impl(&dword_22AEAE000, v73, OS_LOG_TYPE_ERROR, "%{public}@Unable to recover stored accessory for NodeID %llu...skipping", buf, 0x16u);

        v27 = v154;
      }

      objc_autoreleasePoolPop(v71);
      if (obj)
      {
        [MEMORY[0x277CCA9B8] hapErrorWithCode:1];
        *obj = v16 = 0;
      }

      else
      {
        v16 = 0;
      }

      goto LABEL_99;
    }

    v150 = v53;
    [v16 setConfigNumber:{objc_msgSend(v22, "integerValue")}];
    v57 = objc_autoreleasePoolPush();
    v58 = self;
    v59 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v59, OS_LOG_TYPE_DEBUG))
    {
      v60 = HMFGetLogIdentifier();
      v61 = [v16 configNumber];
      *buf = 138543618;
      v179 = v60;
      v180 = 2048;
      v181 = v61;
      _os_log_impl(&dword_22AEAE000, v59, OS_LOG_TYPE_DEBUG, "%{public}@Loading with config number %tu", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v57);
    v153 = v56;
    v151 = v22;
    if (v158)
    {
      v62 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v156];
      v63 = [v155 storageDataSourceForDeviceWithNodeID:v62];

      [v16 setWedDevice:{objc_msgSend(v63, "wedSupport")}];
      v64 = [v63 extendedMACAddress];
      [v16 setEMACAddress:v64];

      v65 = [v63 supportedLinkLayerTypes];
      [v16 setSupportedLinkLayerTypes:v65];

      [v16 configureDefaultRequiresThreadRouter];
      v66 = [v63 softwareVersionNumber];
      if (v66)
      {
        v67 = objc_autoreleasePoolPush();
        v68 = v58;
        v69 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v69, OS_LOG_TYPE_INFO))
        {
          v70 = HMFGetLogIdentifier();
          *buf = 138543618;
          v179 = v70;
          v180 = 2112;
          v181 = v66;
          _os_log_impl(&dword_22AEAE000, v69, OS_LOG_TYPE_INFO, "%{public}@Accessory software version number = %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v67);
        [v16 updateSoftwareVersion:v66];
        [v16 notifyMatterFirmwareRevisionNumberCharacteristicChanged];
      }
    }

    else
    {
      if (!isFeatureMatteriPhoneOnlyPairingControlEnabled())
      {
LABEL_50:
        v76 = [v16 supportedLinkLayerTypes];
        [v76 unsignedIntValue];

        v77 = [v16 supportedLinkLayerTypes];
        [v77 unsignedIntValue];

        v78 = [v16 supportedLinkLayerTypes];
        [v78 unsignedIntValue];

        v79 = objc_autoreleasePoolPush();
        v80 = v58;
        v81 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v81, OS_LOG_TYPE_INFO))
        {
          v148 = HMFGetLogIdentifier();
          v82 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v156];
          [v16 isWEDDevice];
          v147 = HMFBooleanToString();
          [v16 eMACAddress];
          v83 = v149 = v79;
          v84 = [v16 supportedLinkLayerTypes];
          v85 = HMFBooleanToString();
          v86 = HMFBooleanToString();
          v87 = HMFBooleanToString();
          *buf = 138545154;
          v179 = v148;
          v180 = 2112;
          v181 = v82;
          v182 = 2112;
          v183 = v147;
          v184 = 2112;
          v185 = v83;
          v186 = 2112;
          v187 = v84;
          v188 = 2112;
          v189 = v85;
          v88 = v85;
          v190 = 2112;
          v191 = v86;
          v89 = v86;
          v192 = 2112;
          v193 = v87;
          v90 = v87;
          _os_log_impl(&dword_22AEAE000, v81, OS_LOG_TYPE_INFO, "%{public}@nodeID: %@ WED: %@ eMAC: %@, supportedLinkLayerTypes: %@ [WiFi:%@, Ethernet:%@, Thread:%@]", buf, 0x52u);

          v79 = v149;
        }

        objc_autoreleasePoolPop(v79);
        v174 = 0u;
        v175 = 0u;
        v172 = 0u;
        v173 = 0u;
        v91 = [(HMMTRAccessoryServerBrowser *)v80 _allServers];
        v92 = [v91 countByEnumeratingWithState:&v172 objects:v177 count:16];
        if (v92)
        {
          v93 = v92;
          v94 = v80;
          v95 = *v173;
LABEL_54:
          v96 = 0;
          while (1)
          {
            if (*v173 != v95)
            {
              objc_enumerationMutation(v91);
            }

            v97 = *(*(&v172 + 1) + 8 * v96);
            if ([v97 isEqual:v16])
            {
              break;
            }

            if (v93 == ++v96)
            {
              v93 = [v91 countByEnumeratingWithState:&v172 objects:v177 count:16];
              if (v93)
              {
                goto LABEL_54;
              }

              v80 = v94;
              goto LABEL_76;
            }
          }

          v80 = v94;
          if (![(HMMTRAccessoryServerBrowser *)v94 isCurrentDeviceMobileAndAllowedAccessoryControl])
          {
            goto LABEL_68;
          }

          if ([v97 delayDiscovery])
          {
            v98 = objc_autoreleasePoolPush();
            v99 = v94;
            v100 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v100, OS_LOG_TYPE_INFO))
            {
              v101 = HMFGetLogIdentifier();
              *buf = 138543874;
              v179 = v101;
              v180 = 2048;
              v181 = v156;
              v182 = 2112;
              v183 = v97;
              _os_log_impl(&dword_22AEAE000, v100, OS_LOG_TYPE_INFO, "%{public}@Found existing server for nodeID %llu in unpaired state, but discovery is delayed for server %@", buf, 0x20u);
            }

            v56 = v153;

            objc_autoreleasePoolPop(v98);
LABEL_72:

            v16 = 0;
            goto LABEL_98;
          }

          if ([v97 pairedState] == 3)
          {
LABEL_68:
            v102 = objc_autoreleasePoolPush();
            v103 = v94;
            v104 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v104, OS_LOG_TYPE_ERROR))
            {
              v105 = HMFGetLogIdentifier();
              *buf = 138543618;
              v179 = v105;
              v180 = 2048;
              v181 = v156;
              _os_log_impl(&dword_22AEAE000, v104, OS_LOG_TYPE_ERROR, "%{public}@Found existing server for node %llu...skipping", buf, 0x16u);
            }

            v56 = v153;

            objc_autoreleasePoolPop(v102);
            if (obj)
            {
              *obj = [MEMORY[0x277CCA9B8] hapErrorWithCode:18];
            }

            goto LABEL_72;
          }

          v106 = objc_autoreleasePoolPush();
          v107 = v94;
          v108 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v108, OS_LOG_TYPE_INFO))
          {
            v109 = HMFGetLogIdentifier();
            *buf = 138543874;
            v179 = v109;
            v180 = 2048;
            v181 = v156;
            v182 = 2112;
            v183 = v16;
            _os_log_impl(&dword_22AEAE000, v108, OS_LOG_TYPE_INFO, "%{public}@Found existing server for nodeID %llu in unpaired state, using it instead of new server = %@ ", buf, 0x20u);
          }

          objc_autoreleasePoolPop(v106);
          v110 = v97;

          v16 = v110;
        }

LABEL_76:

        if (v152)
        {
          v111 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v156];
          v112 = [v155 allStorageDataSourcesForDeviceWithNodeID:v111];

          v170 = 0u;
          v171 = 0u;
          v168 = 0u;
          v169 = 0u;
          obja = v112;
          v113 = [obja countByEnumeratingWithState:&v168 objects:v176 count:16];
          if (v113)
          {
            v114 = v113;
            v115 = *v169;
            do
            {
              for (i = 0; i != v114; ++i)
              {
                if (*v169 != v115)
                {
                  objc_enumerationMutation(obja);
                }

                v117 = *(*(&v168 + 1) + 8 * i);
                v165[0] = MEMORY[0x277D85DD0];
                v165[1] = 3221225472;
                v165[2] = __92__HMMTRAccessoryServerBrowser__createCHIPAccessoryForNodeID_ifPaired_fabricUUID_fatalError___block_invoke;
                v165[3] = &unk_2786EEE20;
                v165[4] = v80;
                v118 = v161;
                v166 = v118;
                v167 = v153;
                [v117 updateVendorID:v118 productID:v167 completion:v165];
              }

              v114 = [obja countByEnumeratingWithState:&v168 objects:v176 count:16];
            }

            while (v114);
          }
        }

        [v16 setPairedState:3];
        [v16 setFabricUUID:v158];
        if (v158)
        {
          v119 = [(HMMTRAccessoryServerBrowser *)v80 storage];
          v120 = [v119 dataSource];
          v121 = [v120 fabricIDFromFabricUUID:v158];
          [v16 setFabricID:v121];

          v122 = [(HMMTRAccessoryServerBrowser *)v80 controllerWrapperForFabricUUID:v158];
          [v16 setControllerWrapper:v122];

          v123 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v156];
          v124 = [v157 topologyForNode:v123];
          [v16 setTopology:v124];

          v125 = [v16 topology];

          if (!v125)
          {
            v126 = objc_autoreleasePoolPush();
            v127 = v80;
            v128 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v128, OS_LOG_TYPE_INFO))
            {
              v129 = HMFGetLogIdentifier();
              *buf = 138543362;
              v179 = v129;
              _os_log_impl(&dword_22AEAE000, v128, OS_LOG_TYPE_INFO, "%{public}@Failed to fetch topology from storage. This would require rebuilding topology again from resident", buf, 0xCu);
            }

            objc_autoreleasePoolPop(v126);
          }

          if ([(HMMTRAccessoryServerBrowser *)v80 isCurrentDevicePrimaryResident])
          {
            v164[0] = MEMORY[0x277D85DD0];
            v164[1] = 3221225472;
            v164[2] = __92__HMMTRAccessoryServerBrowser__createCHIPAccessoryForNodeID_ifPaired_fabricUUID_fatalError___block_invoke_320;
            v164[3] = &unk_2786EF290;
            v164[4] = v80;
            [(HMMTRAccessoryServerBrowser *)v80 _updateAccessoryControlListForServer:v16 completion:v164];
          }

          v162[0] = MEMORY[0x277D85DD0];
          v162[1] = 3221225472;
          v162[2] = __92__HMMTRAccessoryServerBrowser__createCHIPAccessoryForNodeID_ifPaired_fabricUUID_fatalError___block_invoke_321;
          v162[3] = &unk_2786EF9E0;
          v162[4] = v80;
          v130 = v16;
          v163 = v130;
          [v130 enumerateHAPServices:v162];
          v131 = objc_autoreleasePoolPush();
          v132 = v80;
          v133 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v133, OS_LOG_TYPE_INFO))
          {
            v134 = HMFGetLogIdentifier();
            v135 = [v130 identifier];
            *buf = 138543618;
            v179 = v134;
            v180 = 2112;
            v181 = v135;
            _os_log_impl(&dword_22AEAE000, v133, OS_LOG_TYPE_INFO, "%{public}@Adding previously paired server with Identifier %@", buf, 0x16u);
          }

          v56 = v153;

          objc_autoreleasePoolPop(v131);
          v136 = v163;
          v16 = v130;
        }

        else
        {
          v56 = v153;
          v137 = objc_autoreleasePoolPush();
          v138 = v80;
          v139 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v139, OS_LOG_TYPE_INFO))
          {
            v140 = HMFGetLogIdentifier();
            v141 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v156];
            *buf = 138543874;
            v179 = v140;
            v180 = 2112;
            v181 = v16;
            v182 = 2112;
            v183 = v141;
            _os_log_impl(&dword_22AEAE000, v139, OS_LOG_TYPE_INFO, "%{public}@Created %@ for System Commissioner Fabric Node %@", buf, 0x20u);
          }

          objc_autoreleasePoolPop(v137);
          v142 = [(HMMTRAccessoryServerBrowser *)v138 systemCommissionerFabricID];
          [v16 setFabricID:v142];

          v143 = [(HMMTRAccessoryServerBrowser *)v138 systemCommissionerFabricUUID];
          [v16 setFabricUUID:v143];

          [v16 setKnownToSystemCommissioner:1];
          v144 = [(HMMTRAccessoryServerBrowser *)v138 systemCommissionerControllerWrapper];
          [v16 setControllerWrapper:v144];
        }

LABEL_98:
        v53 = v150;
        v22 = v151;
        v27 = v154;
LABEL_99:

LABEL_100:
        goto LABEL_101;
      }

      v75 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v156];
      [v16 setWedDevice:{objc_msgSend(v157, "wedSupportedForSystemCommissionerFabricNode:", v75)}];

      v63 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v156];
      v66 = [v157 extendedMACAddressForSystemCommissionerFabricNode:v63];
      [v16 setEMACAddress:v66];
    }

    goto LABEL_50;
  }

  v28 = objc_autoreleasePoolPush();
  v29 = self;
  v30 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
  {
    v31 = HMFGetLogIdentifier();
    *buf = 138543618;
    v179 = v31;
    v180 = 2048;
    v181 = a3;
    _os_log_impl(&dword_22AEAE000, v30, OS_LOG_TYPE_INFO, "%{public}@No CHIP accessory for nodeID %llu, skipping...", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v28);
  v16 = 0;
LABEL_101:

  v145 = *MEMORY[0x277D85DE8];

  return v16;
}

void __92__HMMTRAccessoryServerBrowser__createCHIPAccessoryForNodeID_ifPaired_fabricUUID_fatalError___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
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
      v9 = *(a1 + 48);
      v11 = 138544386;
      v12 = v7;
      v13 = 2080;
      v14 = "[HMMTRAccessoryServerBrowser _createCHIPAccessoryForNodeID:ifPaired:fabricUUID:fatalError:]_block_invoke";
      v15 = 2112;
      v16 = v8;
      v17 = 2112;
      v18 = v9;
      v19 = 2112;
      v20 = v3;
      _os_log_impl(&dword_22AEAE000, v6, OS_LOG_TYPE_ERROR, "%{public}@%s: Failed to update vendorID to %@ and productID to %@ with error: %@", &v11, 0x34u);
    }

    objc_autoreleasePoolPop(v4);
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __92__HMMTRAccessoryServerBrowser__createCHIPAccessoryForNodeID_ifPaired_fabricUUID_fatalError___block_invoke_320(uint64_t a1, void *a2)
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
      _os_log_impl(&dword_22AEAE000, v6, OS_LOG_TYPE_ERROR, "%{public}@Failed to update ACL on accessory with error %@", &v9, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __92__HMMTRAccessoryServerBrowser__createCHIPAccessoryForNodeID_ifPaired_fabricUUID_fatalError___block_invoke_321(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v8 = *(a1 + 40);
    v14 = 138543874;
    v15 = v7;
    v16 = 2112;
    v17 = v8;
    v18 = 2112;
    v19 = v3;
    _os_log_impl(&dword_22AEAE000, v6, OS_LOG_TYPE_INFO, "%{public}@Enumerated HAP Services for server :%@ with Error: %@", &v14, 0x20u);
  }

  objc_autoreleasePoolPop(v4);
  if ((_os_feature_enabled_impl() & 1) != 0 || CFPreferencesGetAppBooleanValue(@"MatterOTA", @"/Library/Managed Preferences/mobile/com.apple.homed.plist", 0))
  {
    v9 = objc_autoreleasePoolPush();
    v10 = *(a1 + 32);
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v14 = 138543362;
      v15 = v12;
      _os_log_impl(&dword_22AEAE000, v11, OS_LOG_TYPE_INFO, "%{public}@Not sending an OTA announcement or setting this device as a OTA provider", &v14, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_reenumeratePairedDevices
{
  v2 = self;
  v28 = *MEMORY[0x277D85DE8];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v3 = self->_discoveredAccessoryServers;
  v4 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = *v20;
    *&v5 = 138543618;
    v17 = v5;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v19 + 1) + 8 * i);
        if (([v9 removalInProgress] & 1) == 0)
        {
          v10 = objc_autoreleasePoolPush();
          v11 = v2;
          v12 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
          {
            HMFGetLogIdentifier();
            v13 = v3;
            v15 = v14 = v2;
            *buf = v17;
            v24 = v15;
            v25 = 2112;
            v26 = v9;
            _os_log_impl(&dword_22AEAE000, v12, OS_LOG_TYPE_INFO, "%{public}@Re-enumerating server %@", buf, 0x16u);

            v2 = v14;
            v3 = v13;
          }

          objc_autoreleasePoolPop(v10);
          v18[0] = MEMORY[0x277D85DD0];
          v18[1] = 3221225472;
          v18[2] = __56__HMMTRAccessoryServerBrowser__reenumeratePairedDevices__block_invoke;
          v18[3] = &unk_2786EF9E0;
          v18[4] = v11;
          v18[5] = v9;
          [v9 enumerateHAPServices:v18];
        }
      }

      v6 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v6);
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __56__HMMTRAccessoryServerBrowser__reenumeratePairedDevices__block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = HMFGetLogIdentifier();
    v8 = *(a1 + 40);
    v10 = 138543874;
    v11 = v7;
    v12 = 2112;
    v13 = v8;
    v14 = 2112;
    v15 = v3;
    _os_log_impl(&dword_22AEAE000, v6, OS_LOG_TYPE_DEBUG, "%{public}@Re-enumeration completed for server %@, error: %@", &v10, 0x20u);
  }

  objc_autoreleasePoolPop(v4);
  v9 = *MEMORY[0x277D85DE8];
}

- (void)_updateDiscoveredAccessoryServersWithNodes:(id)a3 fabricUUID:(id)a4
{
  v62 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543874;
    v57 = v11;
    v58 = 2112;
    v59 = v7;
    v60 = 2112;
    v61 = v6;
    _os_log_impl(&dword_22AEAE000, v10, OS_LOG_TYPE_INFO, "%{public}@Updating discovered accessory servers for fabric %@ with paired nodes: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  discoveredAccessoryServers = v9->_discoveredAccessoryServers;
  v51[0] = MEMORY[0x277D85DD0];
  v51[1] = 3221225472;
  v51[2] = __85__HMMTRAccessoryServerBrowser__updateDiscoveredAccessoryServersWithNodes_fabricUUID___block_invoke;
  v51[3] = &unk_2786EEDF8;
  v13 = v7;
  v52 = v13;
  v14 = v6;
  v53 = v14;
  v39 = [(NSMutableSet *)discoveredAccessoryServers na_filter:v51];
  v15 = [(HMMTRAccessoryServerBrowser *)v9 controllerFactoryEnablePerPrimaryResidentConfirmationToken];

  if (v15)
  {
    v16 = [(HMMTRAccessoryServerBrowser *)v9 controllerFactory];
    v17 = [(HMMTRAccessoryServerBrowser *)v9 controllerFactoryEnablePerPrimaryResidentConfirmationToken];
    [v16 enableNormalOperationWithToken:v17];

    [(HMMTRAccessoryServerBrowser *)v9 setControllerFactoryEnablePerPrimaryResidentConfirmationToken:0];
  }

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  obj = v14;
  v42 = [obj countByEnumeratingWithState:&v47 objects:v55 count:16];
  if (v42)
  {
    v41 = *v48;
    do
    {
      for (i = 0; i != v42; ++i)
      {
        if (*v48 != v41)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v47 + 1) + 8 * i);
        v20 = objc_autoreleasePoolPush();
        v21 = [(HMMTRAccessoryServerBrowser *)v9 storage];
        v22 = [v21 dataSource];
        [v22 storageDataSourceForFabricUUID:v13];
        v24 = v23 = v13;
        v25 = [v24 allNodeIDs];
        v26 = [v25 containsObject:v19];

        if (v26)
        {
          [(HMMTRAccessoryServerBrowser *)v9 _addDiscoveredAccessoryServerWithNodeID:v19 fabricUUID:v23];
        }

        else
        {
          v27 = objc_autoreleasePoolPush();
          v28 = v9;
          v29 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
          {
            v30 = HMFGetLogIdentifier();
            *buf = 138543618;
            v57 = v30;
            v58 = 2112;
            v59 = v19;
            _os_log_impl(&dword_22AEAE000, v29, OS_LOG_TYPE_INFO, "%{public}@Node %@ is removed in a race, server shall not be created while updating discovered accessory servers", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v27);
        }

        v13 = v23;
        objc_autoreleasePoolPop(v20);
      }

      v42 = [obj countByEnumeratingWithState:&v47 objects:v55 count:16];
    }

    while (v42);
  }

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v31 = v39;
  v32 = [v31 countByEnumeratingWithState:&v43 objects:v54 count:16];
  if (v32)
  {
    v33 = v32;
    v34 = *v44;
    do
    {
      for (j = 0; j != v33; ++j)
      {
        if (*v44 != v34)
        {
          objc_enumerationMutation(v31);
        }

        v36 = *(*(&v43 + 1) + 8 * j);
        [v36 disable];
        v37 = [MEMORY[0x277CCA9B8] hmmtrErrorWithCode:9];
        [(HMMTRAccessoryServerBrowser *)v9 invalidateAccessoryServer:v36 reason:v37];
      }

      v33 = [v31 countByEnumeratingWithState:&v43 objects:v54 count:16];
    }

    while (v33);
  }

  v38 = *MEMORY[0x277D85DE8];
}

uint64_t __85__HMMTRAccessoryServerBrowser__updateDiscoveredAccessoryServersWithNodes_fabricUUID___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isKnownToSystemCommissioner])
  {
    v4 = 0;
  }

  else
  {
    v5 = [v3 fabricUUID];
    if ([v5 isEqual:*(a1 + 32)])
    {
      v6 = *(a1 + 40);
      v7 = [v3 nodeID];
      if ([v6 containsObject:v7])
      {
        v4 = 0;
      }

      else
      {
        v4 = [v3 isPairedInStorage] ^ 1;
      }
    }

    else
    {
      v4 = 1;
    }
  }

  return v4;
}

- (void)_addDiscoveredAccessoryServerWithNodeID:(id)a3 fabricUUID:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v17 = 0;
  v8 = -[HMMTRAccessoryServerBrowser _createCHIPAccessoryForNodeID:ifPaired:fabricUUID:fatalError:](self, "_createCHIPAccessoryForNodeID:ifPaired:fabricUUID:fatalError:", [v6 unsignedLongLongValue], 0, v7, &v17);
  v9 = v17;
  v10 = objc_autoreleasePoolPush();
  v11 = self;
  v12 = HMFGetOSLogHandle();
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_INFO);
  if (v8)
  {
    if (v13)
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543618;
      v19 = v14;
      v20 = 2112;
      v21 = v8;
      _os_log_impl(&dword_22AEAE000, v12, OS_LOG_TYPE_INFO, "%{public}@Set up new accessory server: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    [(NSMutableSet *)v11->_discoveredAccessoryServers addObject:v8];
  }

  else
  {
    if (v13)
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543874;
      v19 = v15;
      v20 = 2112;
      v21 = v6;
      v22 = 2112;
      v23 = v7;
      _os_log_impl(&dword_22AEAE000, v12, OS_LOG_TYPE_INFO, "%{public}@There must have been an existing server for node %@, fabric %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v10);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)updateDiscoveredAccessoryServersWithNodes:(id)a3 fabricUUID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __84__HMMTRAccessoryServerBrowser_updateDiscoveredAccessoryServersWithNodes_fabricUUID___block_invoke;
  v10[3] = &unk_2786EF3C8;
  v10[4] = self;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  [(HMMTRAccessoryServerBrowser *)self dispatchBlock:v10];
}

- (void)_setupPairedDevices
{
  v75 = *MEMORY[0x277D85DE8];
  if (![(HMMTRAccessoryServerBrowser *)self isCurrentDeviceMobileAndAllowedAccessoryControl])
  {
    v11 = objc_autoreleasePoolPush();
    v12 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543362;
      v71 = v14;
      v15 = "%{public}@Not the primary Resident, not restoring previously paired accessories...";
LABEL_42:
      _os_log_impl(&dword_22AEAE000, v13, OS_LOG_TYPE_INFO, v15, buf, 0xCu);
    }

LABEL_43:

    objc_autoreleasePoolPop(v11);
    v41 = [(HMMTRAccessoryServerBrowser *)v12 nodesAddedToHome];
    [v41 removeAllObjects];
    goto LABEL_44;
  }

  v3 = [(HMMTRAccessoryServerBrowser *)self nodesAddedToHome];
  if ([v3 count])
  {
    v4 = [(HMMTRAccessoryServerBrowser *)self controllerFactoryEnablePerPrimaryResidentConfirmationToken];

    if (v4)
    {
      v5 = objc_autoreleasePoolPush();
      v6 = self;
      v7 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = HMFGetLogIdentifier();
        *buf = 138543362;
        v71 = v8;
        _os_log_impl(&dword_22AEAE000, v7, OS_LOG_TYPE_INFO, "%{public}@Voting to enable controller factory when setting up paired devices", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v5);
      v9 = [(HMMTRAccessoryServerBrowser *)v6 controllerFactory];
      v10 = [(HMMTRAccessoryServerBrowser *)v6 controllerFactoryEnablePerPrimaryResidentConfirmationToken];
      [v9 enableNormalOperationWithToken:v10];

      [(HMMTRAccessoryServerBrowser *)v6 setControllerFactoryEnablePerPrimaryResidentConfirmationToken:0];
    }
  }

  else
  {
  }

  v16 = [(HMMTRAccessoryServerBrowser *)self currentFabricUUID];
  v17 = [(HMMTRAccessoryServerBrowser *)self deviceControllerForFabricUUID:v16];
  v18 = [v17 isRunning];

  if ((v18 & 1) == 0)
  {
    v11 = objc_autoreleasePoolPush();
    v12 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543362;
      v71 = v14;
      v15 = "%{public}@CHIP Controller hasn't been setup, maybe storage isn't available yet?";
      goto LABEL_42;
    }

    goto LABEL_43;
  }

  if ([(HMMTRAccessoryServerBrowser *)self isCurrentDeviceMobileAndAllowedAccessoryControl])
  {
    v19 = [(HMMTRAccessoryServerBrowser *)self storage];
    v20 = [v19 dataSource];
    v21 = [(HMMTRAccessoryServerBrowser *)self currentFabricUUID];
    v22 = [v20 storageDataSourceForFabricUUID:v21];

    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    v23 = [v22 allNodeIDs];
    v24 = [v23 countByEnumeratingWithState:&v65 objects:v74 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v66;
      do
      {
        for (i = 0; i != v25; ++i)
        {
          if (*v66 != v26)
          {
            objc_enumerationMutation(v23);
          }

          v28 = *(*(&v65 + 1) + 8 * i);
          if (v28)
          {
            if (([*(*(&v65 + 1) + 8 * i) isEqual:&unk_283EE87C0] & 1) == 0)
            {
              v29 = [(HMMTRAccessoryServerBrowser *)self accessoryServerWithNodeID:v28];

              if (!v29)
              {
                v30 = [(HMMTRAccessoryServerBrowser *)self nodesAddedToHome];
                [v30 addObject:v28];
              }
            }
          }
        }

        v25 = [v23 countByEnumeratingWithState:&v65 objects:v74 count:16];
      }

      while (v25);
    }
  }

  v31 = objc_autoreleasePoolPush();
  v32 = self;
  v33 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
  {
    v34 = HMFGetLogIdentifier();
    *buf = 138543362;
    v71 = v34;
    _os_log_impl(&dword_22AEAE000, v33, OS_LOG_TYPE_INFO, "%{public}@Checking for new devices in storage...", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v31);
  v35 = [(HMMTRAccessoryServerBrowser *)v32 nodesAddedToHome];
  v36 = [v35 copy];

  v37 = objc_autoreleasePoolPush();
  v38 = v32;
  v39 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
  {
    v40 = HMFGetLogIdentifier();
    *buf = 138543618;
    v71 = v40;
    v72 = 2112;
    v73 = v36;
    _os_log_impl(&dword_22AEAE000, v39, OS_LOG_TYPE_INFO, "%{public}@Looking through all paired NodeIDs: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v37);
  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v41 = v36;
  v59 = [v41 countByEnumeratingWithState:&v61 objects:v69 count:16];
  if (v59)
  {
    v58 = *v62;
    *&v42 = 138543618;
    v56 = v42;
    obj = v41;
    do
    {
      for (j = 0; j != v59; ++j)
      {
        if (*v62 != v58)
        {
          objc_enumerationMutation(obj);
        }

        v44 = *(*(&v61 + 1) + 8 * j);
        v45 = objc_autoreleasePoolPush();
        v46 = [v44 unsignedLongLongValue];
        v47 = [(HMMTRAccessoryServerBrowser *)v38 currentFabricUUID];
        v60 = 0;
        v48 = [(HMMTRAccessoryServerBrowser *)v38 _createCHIPAccessoryForNodeID:v46 ifPaired:0 fabricUUID:v47 fatalError:&v60];
        v49 = v60;

        if (v48)
        {
          v50 = objc_autoreleasePoolPush();
          v51 = v38;
          v52 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
          {
            v53 = HMFGetLogIdentifier();
            *buf = v56;
            v71 = v53;
            v72 = 2112;
            v73 = v44;
            _os_log_impl(&dword_22AEAE000, v52, OS_LOG_TYPE_INFO, "%{public}@Found new device(%@) in storage...", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v50);
          [v51[7] addObject:v48];
        }

        v54 = [(HMMTRAccessoryServerBrowser *)v38 nodesAddedToHome];
        [v54 removeObject:v44];

        objc_autoreleasePoolPop(v45);
      }

      v41 = obj;
      v59 = [obj countByEnumeratingWithState:&v61 objects:v69 count:16];
    }

    while (v59);
  }

LABEL_44:
  v55 = *MEMORY[0x277D85DE8];
}

- (void)setupPairedDevices
{
  v3 = [(HAPAccessoryServerBrowser *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__HMMTRAccessoryServerBrowser_setupPairedDevices__block_invoke;
  block[3] = &unk_2786F0CA8;
  block[4] = self;
  dispatch_async(v3, block);
}

- (BOOL)_isNodeIDPaired:(id)a3 targetFabricUUID:(id *)a4
{
  v6 = a3;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v7 = [(HMMTRAccessoryServerBrowser *)self storage];
  v8 = [v7 dataSource];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __64__HMMTRAccessoryServerBrowser__isNodeIDPaired_targetFabricUUID___block_invoke;
  v11[3] = &unk_2786EEDD0;
  v9 = v6;
  v12 = v9;
  v13 = &v15;
  v14 = a4;
  [v8 forAllStorageDataSourcesDo:v11];

  LOBYTE(a4) = *(v16 + 24);
  _Block_object_dispose(&v15, 8);

  return a4;
}

uint64_t __64__HMMTRAccessoryServerBrowser__isNodeIDPaired_targetFabricUUID___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 allNodeIDs];
  v5 = [v4 containsObject:*(a1 + 32)];
  if (v5)
  {
    **(a1 + 48) = [v3 fabricUUID];
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  return v5 ^ 1u;
}

- (BOOL)_isDeviceIDPaired:(id)a3 nodeID:(id *)a4 targetFabricUUID:(id *)a5
{
  v8 = a3;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v9 = [(HMMTRAccessoryServerBrowser *)self storage];
  v10 = [v9 dataSource];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __73__HMMTRAccessoryServerBrowser__isDeviceIDPaired_nodeID_targetFabricUUID___block_invoke;
  v13[3] = &unk_2786EEDA8;
  v11 = v8;
  v16 = a4;
  v17 = a5;
  v14 = v11;
  v15 = &v18;
  [v10 forAllStorageDataSourcesDo:v13];

  LOBYTE(a5) = *(v19 + 24);
  _Block_object_dispose(&v18, 8);

  return a5;
}

uint64_t __73__HMMTRAccessoryServerBrowser__isDeviceIDPaired_nodeID_targetFabricUUID___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  [v3 allNodeIDs];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = v19 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        v10 = *(a1 + 32);
        v11 = [HMMTRUtilities identifierStringWithCHIPNodeID:v9, v16];
        LODWORD(v10) = [v10 hasPrefix:v11];

        if (v10)
        {
          v13 = v9;
          **(a1 + 48) = v9;
          [v3 fabricUUID];
          **(a1 + 56) = v12 = 0;
          *(*(*(a1 + 40) + 8) + 24) = 1;
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v12 = 1;
LABEL_11:

  v14 = *MEMORY[0x277D85DE8];
  return v12;
}

- (BOOL)_isDevicePaired:(unint64_t)a3 fabricUUID:(id)a4
{
  v6 = a4;
  if (v6)
  {
    v7 = [(HMMTRAccessoryServerBrowser *)self storage];
    v8 = [v7 dataSource];
    v9 = [v8 storageDataSourceForFabricUUID:v6];

    [v9 allNodeIDs];
  }

  else
  {
    v9 = [(HMMTRAccessoryServerBrowser *)self storageForSystemCommissioner];
    [v9 pairedNodeIDsOnSystemCommissionerFabric:1];
  }
  v10 = ;
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
  v12 = [v10 containsObject:v11];

  return v12;
}

- (void)_cleanupStagedServers
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
    _os_log_impl(&dword_22AEAE000, v5, OS_LOG_TYPE_INFO, "%{public}@Deleting staged accessory pairings", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v7 = [(HAPAccessoryServerBrowser *)v4 workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__HMMTRAccessoryServerBrowser__cleanupStagedServers__block_invoke;
  block[3] = &unk_2786F0CA8;
  block[4] = v4;
  dispatch_async(v7, block);

  v8 = *MEMORY[0x277D85DE8];
}

void __52__HMMTRAccessoryServerBrowser__cleanupStagedServers__block_invoke(uint64_t a1)
{
  v46 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [v2 storage];
  v4 = [v3 fabricUUID];
  v5 = [v2 storageForFabricUUID:v4 sharedAdmin:0];

  v6 = [v5 pairedNodeIDs];
  v7 = [MEMORY[0x277CBEB18] array];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v37 objects:v45 count:16];
  if (v9)
  {
    v11 = v9;
    v12 = *v38;
    *&v10 = 138543618;
    v33 = v10;
    v34 = v8;
    v35 = v5;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v38 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v37 + 1) + 8 * i);
        if ([v5 isStagedForNode:{v14, v33}])
        {
          v15 = v7;
          v16 = objc_autoreleasePoolPush();
          v17 = *(a1 + 32);
          v18 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
          {
            v19 = HMFGetLogIdentifier();
            *buf = v33;
            v42 = v19;
            v43 = 2112;
            v44 = v14;
            _os_log_impl(&dword_22AEAE000, v18, OS_LOG_TYPE_INFO, "%{public}@Deleting staged accessory for nodeID %@...", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v16);
          v20 = *(a1 + 32);
          v21 = [v20 storage];
          v22 = [v21 fabricUUID];
          v23 = [v20 controllerWrapperForFabricUUID:v22];
          v24 = [v23 controller];

          v25 = [MEMORY[0x277CD5220] deviceWithNodeID:v14 controller:v24];
          if (!v25)
          {
            v28 = objc_autoreleasePoolPush();
            v29 = *(a1 + 32);
            v30 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
            {
              v31 = HMFGetLogIdentifier();
              *buf = v33;
              v42 = v31;
              v43 = 2112;
              v44 = v14;
              _os_log_impl(&dword_22AEAE000, v30, OS_LOG_TYPE_ERROR, "%{public}@Unable to get connected device(%@), cleaning up locally", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v28);
            v8 = v34;

            v7 = v15;
            v5 = v35;
            goto LABEL_17;
          }

          v26 = v25;
          v27 = [*(a1 + 32) workQueue];
          v36[0] = MEMORY[0x277D85DD0];
          v36[1] = 3221225472;
          v36[2] = __52__HMMTRAccessoryServerBrowser__cleanupStagedServers__block_invoke_317;
          v36[3] = &unk_2786EF9E0;
          v36[4] = *(a1 + 32);
          v36[5] = v14;
          [v26 unpairDevice:v27 completionHandler:v36];

          v7 = v15;
          [v15 addObject:v14];

          v8 = v34;
          v5 = v35;
        }
      }

      v11 = [v8 countByEnumeratingWithState:&v37 objects:v45 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  [v5 removeRecordsForNodeIDs:v7 systemCommissionerFabric:{objc_msgSend(v5, "isSystemCommissionerFabric")}];
LABEL_17:

  v32 = *MEMORY[0x277D85DE8];
}

void __52__HMMTRAccessoryServerBrowser__cleanupStagedServers__block_invoke_317(uint64_t a1, void *a2)
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
    _os_log_impl(&dword_22AEAE000, v6, OS_LOG_TYPE_ERROR, "%{public}@Notified device(%@) of removal, cleaning up locally. Error: %@", &v10, 0x20u);
  }

  objc_autoreleasePoolPop(v4);
  v9 = *MEMORY[0x277D85DE8];
}

- (NSNumber)systemCommissionerFabricID
{
  v2 = [(HMMTRAccessoryServerBrowser *)self systemCommissionerControllerWrapper];
  v3 = [v2 startupParams];
  v4 = [v3 fabricID];

  return v4;
}

- (HMMTRMatterKeypair)systemCommissionerNocSigner
{
  v2 = [(HMMTRAccessoryServerBrowser *)self systemCommissionerControllerParams];
  v8 = 0;
  v9 = 0;
  v3 = [v2 fetchControllerParamsAllowingNew:0 nocSigner:&v9 controllerWrapper:&v8];
  v4 = v9;
  v5 = v8;

  v6 = 0;
  if (v3)
  {
    v6 = v4;
  }

  return v6;
}

- (HMMTRControllerWrapper)systemCommissionerControllerWrapper
{
  v2 = [(HMMTRAccessoryServerBrowser *)self systemCommissionerControllerParams];
  v8 = 0;
  v9 = 0;
  v3 = [v2 fetchControllerParamsAllowingNew:0 nocSigner:&v9 controllerWrapper:&v8];
  v4 = v9;
  v5 = v8;

  v6 = 0;
  if (v3)
  {
    v6 = v5;
  }

  return v6;
}

- (id)storageForSystemCommissioner
{
  v3 = [HMMTRStorage alloc];
  v4 = [(HAPAccessoryServerBrowser *)self workQueue];
  v5 = [(HMMTRStorage *)v3 initWithQueue:v4 dataSource:0 systemCommissionerFabric:1 fabricUUID:0 sharedAdmin:0];

  return v5;
}

- (void)waitForDeviceControllerWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(HAPAccessoryServerBrowser *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __69__HMMTRAccessoryServerBrowser_waitForDeviceControllerWithCompletion___block_invoke;
  v7[3] = &unk_2786EF5A8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __69__HMMTRAccessoryServerBrowser_waitForDeviceControllerWithCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) storage];
  v8 = [v2 fabricUUID];

  if (v8)
  {
    v3 = [*(a1 + 32) homeFabricControllers];
    v4 = [v3 cachedWrapperWithTargetFabricUUID:v8];
  }

  else
  {
    v4 = 0;
  }

  v5 = [v4 controller];
  if ([v5 isRunning])
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v6 = [*(a1 + 32) deviceControllerHandlers];
    v7 = MEMORY[0x2318887D0](*(a1 + 40));
    [v6 addObject:v7];
  }
}

- (id)deviceControllerForFabricUUID:(id)a3
{
  v4 = [(HMMTRAccessoryServerBrowser *)self controllerWrapperForFabricUUID:a3];
  v5 = [v4 controller];

  if (v5)
  {
    v6 = [(HAPAccessoryServerBrowser *)self workQueue];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __61__HMMTRAccessoryServerBrowser_deviceControllerForFabricUUID___block_invoke;
    v8[3] = &unk_2786EF328;
    v8[4] = self;
    v9 = v5;
    dispatch_async(v6, v8);
  }

  return v5;
}

void __61__HMMTRAccessoryServerBrowser_deviceControllerForFabricUUID___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) deviceControllerHandlers];
  v3 = [v2 copy];

  v4 = [*(a1 + 32) deviceControllerHandlers];
  [v4 removeAllObjects];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(a1 + 40);
        (*(*(*(&v12 + 1) + 8 * v9) + 16))(*(*(&v12 + 1) + 8 * v9));
        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (id)controllerWrapperForFabricUUID:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(HMMTRAccessoryServerBrowser *)self homeFabricControllers];
    v6 = [v5 cachedWrapperWithTargetFabricUUID:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_updateLocallyDiscoveredServerPairedStates
{
  v30 = *MEMORY[0x277D85DE8];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v3 = self->_discoveredAccessoryServers;
  v4 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v19 objects:v29 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = *v20;
    *&v5 = 138543874;
    v18 = v5;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v19 + 1) + 8 * i);
        if ([v9 locallyDiscovered])
        {
          v10 = [(HMMTRAccessoryServerBrowser *)self stagedAccessoryServers];
          v11 = [v10 containsObject:v9];

          v12 = [v9 isPairedInStorage];
          if ([v9 pairedState])
          {
            if ((([v9 storageUpdatePending] | v12 | v11) & 1) == 0 && (objc_msgSend(v9, "removalInProgress") & 1) == 0 && (objc_msgSend(v9, "blockInvalidation") & 1) == 0)
            {
              v13 = objc_autoreleasePoolPush();
              v14 = self;
              v15 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
              {
                v16 = HMFGetLogIdentifier();
                *buf = v18;
                v24 = v16;
                v25 = 1024;
                v26 = 1;
                v27 = 2112;
                v28 = v9;
                _os_log_impl(&dword_22AEAE000, v15, OS_LOG_TYPE_INFO, "%{public}@Updating server paired state because it was removed from storage(%d). Server:%@", buf, 0x1Cu);
              }

              objc_autoreleasePoolPop(v13);
              [v9 setPairedState:0];
            }
          }
        }
      }

      v6 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v19 objects:v29 count:16];
    }

    while (v6);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)_cleanUpMTRDevicesWithFabricUUID:(id)a3
{
  v48 = *MEMORY[0x277D85DE8];
  v32 = a3;
  v4 = objc_autoreleasePoolPush();
  v5 = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    *buf = 138543362;
    v40 = v7;
    _os_log_impl(&dword_22AEAE000, v6, OS_LOG_TYPE_INFO, "%{public}@Cleaning up stale MTRDevices", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  v8 = [(HMMTRAccessoryServerBrowser *)v5 storage];
  v9 = [v8 dataSource];
  v10 = [v9 storageDataSourceForFabricUUID:v32];
  v11 = [v10 allNodeIDs];

  v12 = [(HMMTRAccessoryServerBrowser *)v5 homeFabricControllers];
  v13 = [v12 cachedWrapperWithTargetFabricUUID:v32];
  v14 = [v13 controller];

  v34 = v14;
  [v14 nodesWithStoredData];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v15 = v38 = 0u;
  v16 = [v15 countByEnumeratingWithState:&v35 objects:v47 count:16];
  if (v16)
  {
    v18 = v16;
    v19 = *v36;
    *&v17 = 138544130;
    v31 = v17;
    do
    {
      v20 = 0;
      v33 = v18;
      do
      {
        if (*v36 != v19)
        {
          objc_enumerationMutation(v15);
        }

        v21 = *(*(&v35 + 1) + 8 * v20);
        if (([v11 containsObject:{v21, v31}] & 1) == 0)
        {
          v22 = objc_autoreleasePoolPush();
          v23 = v5;
          v24 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
          {
            HMFGetLogIdentifier();
            v25 = v19;
            v26 = v11;
            v27 = v15;
            v29 = v28 = v5;
            *buf = v31;
            v40 = v29;
            v41 = 2112;
            v42 = v21;
            v43 = 2112;
            v44 = v32;
            v45 = 2112;
            v46 = v34;
            _os_log_impl(&dword_22AEAE000, v24, OS_LOG_TYPE_INFO, "%{public}@Removing unpaired node %@ from fabric %@ controller %@", buf, 0x2Au);

            v5 = v28;
            v15 = v27;
            v11 = v26;
            v19 = v25;
            v18 = v33;
          }

          objc_autoreleasePoolPop(v22);
          [v34 forgetDeviceWithNodeID:v21];
        }

        ++v20;
      }

      while (v18 != v20);
      v18 = [v15 countByEnumeratingWithState:&v35 objects:v47 count:16];
    }

    while (v18);
  }

  v30 = *MEMORY[0x277D85DE8];
}

- (void)_cleanupDiscoveredServersWithReason:(id)a3 completion:(id)a4
{
  v58 = *MEMORY[0x277D85DE8];
  v35 = a3;
  v32 = a4;
  v34 = [MEMORY[0x277CBEB58] set];
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v6 = self->_discoveredAccessoryServers;
  v7 = [(NSMutableSet *)v6 countByEnumeratingWithState:&v44 objects:v57 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v45;
    v33 = v6;
    do
    {
      v10 = 0;
      do
      {
        if (*v45 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v44 + 1) + 8 * v10);
        if (([v11 isKnownToSystemCommissioner] & 1) == 0)
        {
          v12 = [(HMMTRAccessoryServerBrowser *)self stagedAccessoryServers];
          v13 = [v12 containsObject:v11];

          v14 = [v11 isPairedInStorage];
          if (![v11 pairedState] || ((objc_msgSend(v11, "storageUpdatePending") | v14 | v13) & 1) != 0 || (objc_msgSend(v11, "removalInProgress") & 1) != 0)
          {
            v15 = 0;
          }

          else
          {
            v15 = [v11 blockInvalidation] ^ 1;
          }

          if (([v11 isDisabled] & 1) != 0 || v15)
          {
            v16 = objc_autoreleasePoolPush();
            v17 = self;
            v18 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
            {
              v19 = HMFGetLogIdentifier();
              v20 = [v11 isDisabled];
              *buf = 138544130;
              v50 = v19;
              v51 = 1024;
              v52 = v20;
              v53 = 1024;
              v54 = v15;
              v55 = 2112;
              v56 = v11;
              _os_log_impl(&dword_22AEAE000, v18, OS_LOG_TYPE_INFO, "%{public}@Invalidating server because it is disabled(%d) or was removed from storage(%d). Server:%@", buf, 0x22u);

              v6 = v33;
            }

            objc_autoreleasePoolPop(v16);
            [v34 addObject:v11];
          }
        }

        ++v10;
      }

      while (v8 != v10);
      v21 = [(NSMutableSet *)v6 countByEnumeratingWithState:&v44 objects:v57 count:16];
      v8 = v21;
    }

    while (v21);
  }

  v22 = dispatch_group_create();
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v23 = v34;
  v24 = [v23 countByEnumeratingWithState:&v40 objects:v48 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v41;
    do
    {
      for (i = 0; i != v25; ++i)
      {
        if (*v41 != v26)
        {
          objc_enumerationMutation(v23);
        }

        v28 = *(*(&v40 + 1) + 8 * i);
        dispatch_group_enter(v22);
        v38[0] = MEMORY[0x277D85DD0];
        v38[1] = 3221225472;
        v38[2] = __78__HMMTRAccessoryServerBrowser__cleanupDiscoveredServersWithReason_completion___block_invoke;
        v38[3] = &unk_2786F0CA8;
        v39 = v22;
        [(HMMTRAccessoryServerBrowser *)self invalidateAccessoryServer:v28 reason:v35 withCompletion:v38];
      }

      v25 = [v23 countByEnumeratingWithState:&v40 objects:v48 count:16];
    }

    while (v25);
  }

  v29 = [(HAPAccessoryServerBrowser *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __78__HMMTRAccessoryServerBrowser__cleanupDiscoveredServersWithReason_completion___block_invoke_2;
  block[3] = &unk_2786EF5A8;
  block[4] = self;
  v37 = v32;
  v30 = v32;
  dispatch_group_notify(v22, v29, block);

  v31 = *MEMORY[0x277D85DE8];
}

uint64_t __78__HMMTRAccessoryServerBrowser__cleanupDiscoveredServersWithReason_completion___block_invoke_2(uint64_t result)
{
  v17 = *MEMORY[0x277D85DE8];
  if (*(result + 40))
  {
    v1 = result;
    v2 = objc_autoreleasePoolPush();
    v3 = *(v1 + 32);
    v4 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v5 = HMFGetLogIdentifier();
      v6 = *(*(v1 + 32) + 56);
      v13 = 138543618;
      v14 = v5;
      v15 = 2112;
      v16 = v6;
      _os_log_impl(&dword_22AEAE000, v4, OS_LOG_TYPE_DEBUG, "%{public}@Discovered Servers: %@", &v13, 0x16u);
    }

    objc_autoreleasePoolPop(v2);
    v7 = objc_autoreleasePoolPush();
    v8 = *(v1 + 32);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v10 = HMFGetLogIdentifier();
      v11 = *(*(v1 + 32) + 288);
      v13 = 138543618;
      v14 = v10;
      v15 = 2112;
      v16 = v11;
      _os_log_impl(&dword_22AEAE000, v9, OS_LOG_TYPE_DEBUG, "%{public}@Staged Servers: %@", &v13, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    result = (*(*(v1 + 40) + 16))();
  }

  v12 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_cleanupDiscoveredServers
{
  v3 = [MEMORY[0x277CCA9B8] hmmtrErrorWithCode:9];
  [(HMMTRAccessoryServerBrowser *)self _cleanupDiscoveredServersWithReason:v3 completion:0];
}

- (void)handleThreadNetworkStateChangedNotification:(id)a3
{
  v4 = [(HAPAccessoryServerBrowser *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __75__HMMTRAccessoryServerBrowser_handleThreadNetworkStateChangedNotification___block_invoke;
  block[3] = &unk_2786F0CA8;
  block[4] = self;
  dispatch_async(v4, block);
}

uint64_t __75__HMMTRAccessoryServerBrowser_handleThreadNetworkStateChangedNotification___block_invoke(uint64_t a1)
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
    _os_log_impl(&dword_22AEAE000, v4, OS_LOG_TYPE_INFO, "%{public}@Handling thread network state changed notification", &v8, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  result = [*(a1 + 32) handleThreadRadioStateChanged];
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)handleThreadRadioStateChanged
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = [(HMMTRAccessoryServerBrowser *)self fabricsWithActiveConnections];
  [v2 count];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = v2;
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v9 + 1) + 8 * v7++) retryOperations];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_abortAllOperationsForFabricUUID:(id)a3 reason:(id)a4
{
  v44 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v29 = a4;
  v28 = *MEMORY[0x277CFECE8];
  os_unfair_lock_lock_with_options();
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v7 = self->_fabricsWithActiveConnections;
  v8 = [(NSMutableOrderedSet *)v7 countByEnumeratingWithState:&v34 objects:v43 count:16];
  if (v8)
  {
    v9 = *v35;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v35 != v9)
      {
        objc_enumerationMutation(v7);
      }

      v11 = *(*(&v34 + 1) + 8 * v10);
      v12 = [v11 fabricUUID];
      v13 = HMFEqualObjects();

      if (v13)
      {
        break;
      }

      if (v8 == ++v10)
      {
        v8 = [(NSMutableOrderedSet *)v7 countByEnumeratingWithState:&v34 objects:v43 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v14 = v11;

    if (!v14)
    {
      goto LABEL_12;
    }

    os_unfair_lock_unlock((self + v28));
    goto LABEL_23;
  }

LABEL_9:

LABEL_12:
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v15 = self->_fabricsWithPendingConnections;
  v14 = [(NSMutableOrderedSet *)v15 countByEnumeratingWithState:&v30 objects:v42 count:16];
  if (v14)
  {
    v16 = *v31;
    while (2)
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v31 != v16)
        {
          objc_enumerationMutation(v15);
        }

        v18 = *(*(&v30 + 1) + 8 * i);
        v19 = [v18 fabricUUID];
        v20 = [v18 fabricUUID];
        v21 = HMFEqualObjects();

        if (v21)
        {
          v14 = v18;
          goto LABEL_22;
        }
      }

      v14 = [(NSMutableOrderedSet *)v15 countByEnumeratingWithState:&v30 objects:v42 count:16];
      if (v14)
      {
        continue;
      }

      break;
    }
  }

LABEL_22:

  os_unfair_lock_unlock((self + v28));
  if (v14)
  {
LABEL_23:
    v22 = objc_autoreleasePoolPush();
    v23 = self;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v25 = HMFGetLogIdentifier();
      v26 = [v14 fabricUUID];
      *buf = 138543618;
      v39 = v25;
      v40 = 2112;
      v41 = v26;
      _os_log_impl(&dword_22AEAE000, v24, OS_LOG_TYPE_INFO, "%{public}@Aborting operations for fabric: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v22);
    [v14 abortAllOperationsWithReason:v29];
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (void)_connectPendingFabricConnectionsForTargetFabricUUID:(id)a3
{
  v60 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543618;
    v55 = v8;
    v56 = 2112;
    v57 = v4;
    _os_log_impl(&dword_22AEAE000, v7, OS_LOG_TYPE_INFO, "%{public}@_connectPendingFabricConnectionsForTargetFabricUUIDID for - %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = objc_autoreleasePoolPush();
  v10 = v6;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v12 = HMFGetLogIdentifier();
    v13 = [v10 fabricsWithPendingConnections];
    v14 = [v10 fabricsWithActiveConnections];
    *buf = 138543874;
    v55 = v12;
    v56 = 2112;
    v57 = v13;
    v58 = 2112;
    v59 = v14;
    _os_log_impl(&dword_22AEAE000, v11, OS_LOG_TYPE_DEBUG, "%{public}@Current pending connections: %@, Connected/Connecting: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v9);
  v15 = *MEMORY[0x277CFECE8];
  os_unfair_lock_lock_with_options();
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v16 = v10[11];
  v17 = [v16 countByEnumeratingWithState:&v48 objects:v53 count:16];
  if (v17)
  {
    v18 = *v49;
    while (2)
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v49 != v18)
        {
          objc_enumerationMutation(v16);
        }

        v20 = *(*(&v48 + 1) + 8 * i);
        v21 = [v20 fabricUUID];
        v22 = HMFEqualObjects();

        if (v22)
        {
          v43 = v20;
          goto LABEL_15;
        }
      }

      v17 = [v16 countByEnumeratingWithState:&v48 objects:v53 count:16];
      if (v17)
      {
        continue;
      }

      break;
    }
  }

  v43 = 0;
LABEL_15:

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v23 = v10[12];
  v24 = [v23 countByEnumeratingWithState:&v44 objects:v52 count:16];
  if (v24)
  {
    v25 = *v45;
    while (2)
    {
      for (j = 0; j != v24; j = j + 1)
      {
        if (*v45 != v25)
        {
          objc_enumerationMutation(v23);
        }

        v27 = *(*(&v44 + 1) + 8 * j);
        v28 = [v27 fabricUUID];
        v29 = HMFEqualObjects();

        if (v29)
        {
          v24 = v27;
          goto LABEL_25;
        }
      }

      v24 = [v23 countByEnumeratingWithState:&v44 objects:v52 count:16];
      if (v24)
      {
        continue;
      }

      break;
    }
  }

LABEL_25:

  os_unfair_lock_unlock((v10 + v15));
  if (v43)
  {
    v30 = objc_autoreleasePoolPush();
    v31 = v10;
    v32 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
    {
      v33 = HMFGetLogIdentifier();
      v34 = [v43 fabricUUID];
      *buf = 138543618;
      v55 = v33;
      v56 = 2112;
      v57 = v34;
      _os_log_impl(&dword_22AEAE000, v32, OS_LOG_TYPE_INFO, "%{public}@Re-starting operations for fabric: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v30);
    [v43 startOperations];
  }

  else
  {
    v35 = objc_autoreleasePoolPush();
    v36 = v10;
    v37 = HMFGetOSLogHandle();
    v38 = os_log_type_enabled(v37, OS_LOG_TYPE_INFO);
    if (v24)
    {
      if (v38)
      {
        v39 = HMFGetLogIdentifier();
        v40 = [v24 fabricUUID];
        *buf = 138543618;
        v55 = v39;
        v56 = 2112;
        v57 = v40;
        _os_log_impl(&dword_22AEAE000, v37, OS_LOG_TYPE_INFO, "%{public}@Connecting pending fabric fabric: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v35);
      [v36 _removeFromPendingFabrics:v24];
      [v36 _establishConnectionWhenAllowedWithFabricConnectionRequest:v24];
    }

    else
    {
      if (v38)
      {
        v41 = HMFGetLogIdentifier();
        *buf = 138543618;
        v55 = v41;
        v56 = 2112;
        v57 = v4;
        _os_log_impl(&dword_22AEAE000, v37, OS_LOG_TYPE_INFO, "%{public}@fabric %@ not found in either lists", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v35);
    }
  }

  v42 = *MEMORY[0x277D85DE8];
}

- (void)_suspendOperationsForTargetFabricUUID:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = *MEMORY[0x277CFECE8];
  os_unfair_lock_lock_with_options();
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = self->_fabricsWithActiveConnections;
  v7 = [(NSMutableOrderedSet *)v6 countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v7)
  {
    v8 = *v21;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v20 + 1) + 8 * i);
        v11 = [v10 fabricUUID];
        v12 = HMFEqualObjects();

        if (v12)
        {
          v7 = v10;
          goto LABEL_11;
        }
      }

      v7 = [(NSMutableOrderedSet *)v6 countByEnumeratingWithState:&v20 objects:v28 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  os_unfair_lock_unlock((self + v5));
  if (v7)
  {
    v13 = objc_autoreleasePoolPush();
    v14 = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      v17 = [v7 fabricUUID];
      *buf = 138543618;
      v25 = v16;
      v26 = 2112;
      v27 = v17;
      _os_log_impl(&dword_22AEAE000, v15, OS_LOG_TYPE_INFO, "%{public}@Suspending operations for fabric: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
    [v7 suspendOperations];
  }

  v18 = [(HMMTRAccessoryServerBrowser *)self threadSoftwareUpdateController];
  [v18 suspendOperationsForFabricUUID:v4];

  v19 = *MEMORY[0x277D85DE8];
}

- (BOOL)_pollWedAccessoriesIfAllowed
{
  v79 = *MEMORY[0x277D85DE8];
  if ([(HMMTRAccessoryServerBrowser *)self _isWedPollingDisabledForTests])
  {
    v3 = objc_autoreleasePoolPush();
    v4 = self;
    v5 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = HMFGetLogIdentifier();
      *buf = 138543362;
      v75 = v6;
      v7 = "%{public}@WED polling not scheduled: disabled via preference";
      v8 = v5;
      v9 = OS_LOG_TYPE_ERROR;
LABEL_29:
      _os_log_impl(&dword_22AEAE000, v8, v9, v7, buf, 0xCu);

      goto LABEL_30;
    }

    goto LABEL_30;
  }

  v10 = [(HMMTRAccessoryServerBrowser *)self threadRadioManager];
  v11 = [v10 deviceSupportsThreadService];

  if ((v11 & 1) == 0)
  {
    v3 = objc_autoreleasePoolPush();
    v4 = self;
    v5 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = HMFGetLogIdentifier();
      *buf = 138543362;
      v75 = v6;
      v7 = "%{public}@WED polling not scheduled: device doesn't support thread";
      v8 = v5;
      v9 = OS_LOG_TYPE_DEBUG;
      goto LABEL_29;
    }

LABEL_30:

    objc_autoreleasePoolPop(v3);
    v25 = 0;
    goto LABEL_31;
  }

  if ([(HMMTRAccessoryServerBrowser *)self connectionRequestSuspended])
  {
    v3 = objc_autoreleasePoolPush();
    v4 = self;
    v5 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      goto LABEL_30;
    }

    v6 = HMFGetLogIdentifier();
    *buf = 138543362;
    v75 = v6;
    v7 = "%{public}@WED polling not scheduled: in pairing mode";
LABEL_28:
    v8 = v5;
    v9 = OS_LOG_TYPE_INFO;
    goto LABEL_29;
  }

  v12 = [(HMMTRAccessoryServerBrowser *)self currentFabricUUID];

  if (!v12)
  {
    v3 = objc_autoreleasePoolPush();
    v4 = self;
    v5 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      goto LABEL_30;
    }

    v6 = HMFGetLogIdentifier();
    *buf = 138543362;
    v75 = v6;
    v7 = "%{public}@WED polling not scheduled: current fabric UUID is nil";
    goto LABEL_28;
  }

  v13 = [(HMMTRAccessoryServerBrowser *)self currentFabricUUID];
  v14 = [(HMMTRAccessoryServerBrowser *)self systemCommissionerFabricUUID];
  v15 = HMFEqualObjects();

  if (v15)
  {
    v3 = objc_autoreleasePoolPush();
    v4 = self;
    v5 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      goto LABEL_30;
    }

    v6 = HMFGetLogIdentifier();
    *buf = 138543362;
    v75 = v6;
    v7 = "%{public}@WED polling not scheduled: current fabric UUID is system commissioner";
    goto LABEL_28;
  }

  v16 = [(HMMTRAccessoryServerBrowser *)self currentFabricUUID];
  v17 = [(HMMTRAccessoryServerBrowser *)self deviceControllerForFabricUUID:v16];
  v18 = [v17 isRunning];

  if ((v18 & 1) == 0)
  {
    v3 = objc_autoreleasePoolPush();
    v4 = self;
    v5 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      goto LABEL_30;
    }

    v6 = HMFGetLogIdentifier();
    *buf = 138543362;
    v75 = v6;
    v7 = "%{public}@WED polling not scheduled: device controller is not running for current fabric";
    goto LABEL_28;
  }

  v19 = [(HMMTRAccessoryServerBrowser *)self fabricsWithActiveClients];
  v20 = [v19 count];

  if (!v20)
  {
    v3 = objc_autoreleasePoolPush();
    v4 = self;
    v5 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      goto LABEL_30;
    }

    v6 = HMFGetLogIdentifier();
    *buf = 138543362;
    v75 = v6;
    v7 = "%{public}@WED polling not scheduled: no active clients";
    goto LABEL_28;
  }

  v21 = [(HMMTRAccessoryServerBrowser *)self currentFabricUUID];
  v22 = [(HMMTRAccessoryServerBrowser *)self isCurrentDeviceAllowedAccessoryControlDespiteReachableResidentForFabricUUID:v21];

  if (!v22)
  {
    v3 = objc_autoreleasePoolPush();
    v4 = self;
    v5 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      goto LABEL_30;
    }

    v6 = HMFGetLogIdentifier();
    *buf = 138543362;
    v75 = v6;
    v7 = "%{public}@WED polling not scheduled: resident is reachable";
    goto LABEL_28;
  }

  v23 = [(HMMTRAccessoryServerBrowser *)self threadRadioManager];
  v24 = [v23 isThreadNetworkConnected];

  if (v24)
  {
    v3 = objc_autoreleasePoolPush();
    v4 = self;
    v5 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      goto LABEL_30;
    }

    v6 = HMFGetLogIdentifier();
    *buf = 138543362;
    v75 = v6;
    v7 = "%{public}@WED polling not scheduled: connected to thread network";
    goto LABEL_28;
  }

  v28 = [(HMMTRAccessoryServerBrowser *)self threadRadioManager];
  v29 = [v28 isReadyToEstablishWEDConnection];

  if ((v29 & 1) == 0)
  {
    v3 = objc_autoreleasePoolPush();
    v4 = self;
    v5 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      goto LABEL_30;
    }

    v6 = HMFGetLogIdentifier();
    *buf = 138543362;
    v75 = v6;
    v7 = "%{public}@WED polling not scheduled: not ready to establish wed connection";
    goto LABEL_28;
  }

  v30 = [(HMMTRAccessoryServerBrowser *)self discoveredAccessoryServers];
  v31 = [v30 copy];

  v32 = [MEMORY[0x277CBEB18] array];
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v33 = v31;
  v34 = [v33 countByEnumeratingWithState:&v69 objects:v78 count:16];
  v63 = v33;
  if (v34)
  {
    v35 = v34;
    v36 = *v70;
    do
    {
      for (i = 0; i != v35; ++i)
      {
        if (*v70 != v36)
        {
          objc_enumerationMutation(v33);
        }

        v38 = *(*(&v69 + 1) + 8 * i);
        if (([v38 isDisabled] & 1) == 0)
        {
          if ([v38 isWEDDevice])
          {
            v39 = [(HMMTRAccessoryServerBrowser *)self currentFabricUUID];
            v40 = [v38 fabricUUID];
            v41 = HMFEqualObjects();

            v33 = v63;
            if (v41)
            {
              [v32 addObject:v38];
            }
          }
        }
      }

      v35 = [v33 countByEnumeratingWithState:&v69 objects:v78 count:16];
    }

    while (v35);
  }

  v42 = [v32 count];
  v25 = v42 != 0;
  v43 = objc_autoreleasePoolPush();
  v44 = self;
  v45 = HMFGetOSLogHandle();
  v46 = os_log_type_enabled(v45, OS_LOG_TYPE_INFO);
  if (v42)
  {
    if (v46)
    {
      v47 = HMFGetLogIdentifier();
      *buf = 138543618;
      v75 = v47;
      v76 = 2112;
      v77 = v32;
      _os_log_impl(&dword_22AEAE000, v45, OS_LOG_TYPE_INFO, "%{public}@WED polling scheduled for the following accessories: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v43);
    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    v62 = v32;
    obj = v32;
    v48 = [obj countByEnumeratingWithState:&v65 objects:v73 count:16];
    if (v48)
    {
      v49 = v48;
      v50 = *v66;
      v51 = &__block_literal_global_314;
      do
      {
        for (j = 0; j != v49; ++j)
        {
          if (*v66 != v50)
          {
            objc_enumerationMutation(obj);
          }

          v53 = *(*(&v65 + 1) + 8 * j);
          v54 = objc_autoreleasePoolPush();
          v55 = v44;
          v56 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
          {
            HMFGetLogIdentifier();
            v57 = v50;
            v58 = v44;
            v60 = v59 = v51;
            *buf = 138543618;
            v75 = v60;
            v76 = 2112;
            v77 = v53;
            _os_log_impl(&dword_22AEAE000, v56, OS_LOG_TYPE_INFO, "%{public}@WED polling accessory: %@", buf, 0x16u);

            v51 = v59;
            v44 = v58;
            v50 = v57;
          }

          objc_autoreleasePoolPop(v54);
          [(HMMTRAccessoryServerBrowser *)v55 connectToAccessoryWhenAllowed:v53 priority:2 completion:v51];
        }

        v49 = [obj countByEnumeratingWithState:&v65 objects:v73 count:16];
      }

      while (v49);
    }

    v32 = v62;
    v25 = 1;
  }

  else
  {
    if (v46)
    {
      v61 = HMFGetLogIdentifier();
      *buf = 138543362;
      v75 = v61;
      _os_log_impl(&dword_22AEAE000, v45, OS_LOG_TYPE_INFO, "%{public}@WED polling not scheduled: no wed accessories in home", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v43);
  }

LABEL_31:
  v26 = *MEMORY[0x277D85DE8];
  return v25;
}

- (void)_connectPendingFabricConnections
{
  v41 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = HMFGetLogIdentifier();
    v7 = [(HMMTRAccessoryServerBrowser *)v4 fabricsWithPendingConnections];
    v8 = [(HMMTRAccessoryServerBrowser *)v4 fabricsWithActiveConnections];
    *buf = 138543874;
    v36 = v6;
    v37 = 2112;
    v38 = v7;
    v39 = 2112;
    v40 = v8;
    _os_log_impl(&dword_22AEAE000, v5, OS_LOG_TYPE_DEBUG, "%{public}@Current pending connections: %@, Connected/Connecting: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v3);
  v9 = [(HMMTRAccessoryServerBrowser *)v4 fabricsWithPendingConnections];
  v10 = [v9 count];

  if (v10)
  {
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v11 = [(HMMTRAccessoryServerBrowser *)v4 fabricsWithPendingConnections];
    v12 = [v11 countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = 0;
      v15 = 0;
      v16 = *v31;
      while (2)
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v31 != v16)
          {
            objc_enumerationMutation(v11);
          }

          v18 = *(*(&v30 + 1) + 8 * i);
          if ([v18 hasPendingHighPriorityConnectionRequest])
          {
            v20 = v18;

            v15 = v20;
            goto LABEL_21;
          }

          if (v15)
          {
            if (v14)
            {
              if ([v18 hasPendingLowPriorityConnectionRequestsOnly])
              {
                v14 = 1;
              }

              else
              {
                v19 = v18;

                v14 = 0;
                v15 = v19;
              }
            }

            else
            {
              v14 = 0;
            }
          }

          else
          {
            v15 = v18;
            v14 = [v15 hasPendingLowPriorityConnectionRequestsOnly];
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v30 objects:v34 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }

LABEL_21:

      if (v15)
      {
        [(HMMTRAccessoryServerBrowser *)v4 _removeFromPendingFabrics:v15];
        [(HMMTRAccessoryServerBrowser *)v4 _establishConnectionWhenAllowedWithFabricConnectionRequest:v15];

        goto LABEL_30;
      }
    }

    else
    {
    }

    v25 = objc_autoreleasePoolPush();
    v26 = v4;
    v27 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = HMFGetLogIdentifier();
      *buf = 138543362;
      v36 = v28;
      _os_log_impl(&dword_22AEAE000, v27, OS_LOG_TYPE_ERROR, "%{public}@No fabric to connect", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v25);
  }

  else
  {
    v21 = objc_autoreleasePoolPush();
    v22 = v4;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      v24 = HMFGetLogIdentifier();
      *buf = 138543362;
      v36 = v24;
      _os_log_impl(&dword_22AEAE000, v23, OS_LOG_TYPE_DEBUG, "%{public}@No more pending fabric connection requests", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v21);
    [(HMMTRAccessoryServerBrowser *)v22 _pollWedAccessoriesIfAllowed];
  }

LABEL_30:
  v29 = *MEMORY[0x277D85DE8];
}

- (void)_operationsCompletedForFabricConnectionRequest:(id)a3 reason:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v12 = [v6 fabricUUID];
    v15 = 138543618;
    v16 = v11;
    v17 = 2112;
    v18 = v12;
    _os_log_impl(&dword_22AEAE000, v10, OS_LOG_TYPE_INFO, "%{public}@Marking operation complete for fabric: %@", &v15, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  [(HMMTRAccessoryServerBrowser *)v9 _removeFromActiveFabrics:v6];
  v13 = [v6 fabricUUID];
  [(HMMTRAccessoryServerBrowser *)v9 _disconnectFromIdleFabric:v13 reason:v7];

  [(HMMTRAccessoryServerBrowser *)v9 _connectPendingFabricConnections];
  v14 = *MEMORY[0x277D85DE8];
}

- (void)operationsStartedForFabricConnectionRequest:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HAPAccessoryServerBrowser *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v10 = [v4 fabricUUID];
    v20 = 138543618;
    v21 = v9;
    v22 = 2112;
    v23 = v10;
    _os_log_impl(&dword_22AEAE000, v8, OS_LOG_TYPE_INFO, "%{public}@Starting operations for fabric: %@", &v20, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  if (([v4 systemCommissionerFabric] & 1) == 0)
  {
    v11 = [v4 fabricUUID];
    [(HMMTRAccessoryServerBrowser *)v7 _setUpBrowserTargetFabricIfNotFabricUUID:v11 rediscoverAccessories:0];
  }

  if ([v4 systemCommissionerFabric])
  {
    v12 = [(HMMTRAccessoryServerBrowser *)v7 threadRadioManager];
    v13 = [v4 fabricUUID];
    [v12 startThreadRadioForSystemCommissionerFabricUUID:v13];
  }

  else
  {
    v12 = [(HMMTRAccessoryServerBrowser *)v7 currentFabric];
    if (![(HMMTRAccessoryServerBrowser *)v7 isCurrentDeviceAllowedAccessoryControlDespiteReachableResidentForFabric:v12])
    {
      goto LABEL_11;
    }

    v14 = [(HMMTRAccessoryServerBrowser *)v7 threadRadioManager];
    v15 = [(HMMTRAccessoryServerBrowser *)v7 currentFabricUUID];
    v16 = [v14 hasMatterThreadAccessoryInHomeWithFabricUUID:v15];

    if (!v16)
    {
      goto LABEL_12;
    }

    v12 = [(HMMTRAccessoryServerBrowser *)v7 threadRadioManager];
    v13 = [(HMMTRAccessoryServerBrowser *)v7 currentFabricUUID];
    [v12 startThreadRadioForHomeWithFabricUUID:v13];
  }

LABEL_11:
LABEL_12:
  if (isFeatureMatterRVCEnabled())
  {
    v17 = [v4 fabricUUID];
    v18 = [(HMMTRAccessoryServerBrowser *)v7 controllerWrapperForFabricUUID:v17];
    [v18 resume];
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)_establishConnectionWhenAllowedWithFabricConnectionRequest:(id)a3
{
  v60 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = HMFGetLogIdentifier();
    v9 = [v4 fabricUUID];
    v10 = [(HMMTRAccessoryServerBrowser *)v6 fabricsWithActiveConnections];
    v11 = [v10 count];
    v12 = [(HMMTRAccessoryServerBrowser *)v6 fabricsWithPendingConnections];
    *buf = 138544130;
    v53 = v8;
    v54 = 2112;
    v55 = v9;
    v56 = 2048;
    v57 = v11;
    v58 = 2048;
    v59 = [v12 count];
    _os_log_impl(&dword_22AEAE000, v7, OS_LOG_TYPE_DEBUG, "%{public}@Connection request for fabric %@, Current active fabric count: %tu, Pending: %tu", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v5);
  v13 = [(HMMTRAccessoryServerBrowser *)v6 fabricsWithActiveConnections];
  v14 = [v13 count];

  v15 = objc_autoreleasePoolPush();
  v16 = v6;
  v17 = HMFGetOSLogHandle();
  v18 = os_log_type_enabled(v17, OS_LOG_TYPE_ERROR);
  if (v14)
  {
    if (v18)
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543618;
      v53 = v19;
      v54 = 2112;
      v55 = v4;
      _os_log_impl(&dword_22AEAE000, v17, OS_LOG_TYPE_ERROR, "%{public}@establishConnectionWhenAllowedWithFabricConnectionRequest add to pending %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v15);
    [(HMMTRAccessoryServerBrowser *)v16 _addToPendingFabrics:v4];
    v20 = [v4 fabricUUID];
    v21 = [(HMMTRAccessoryServerBrowser *)v16 currentFabricUUID];
    v22 = HMFEqualObjects();

    if ((v22 & 1) != 0 || ([v4 fabricUUID], v23 = objc_claimAutoreleasedReturnValue(), v23, !v23))
    {
      v24 = objc_autoreleasePoolPush();
      v25 = v16;
      v26 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        v27 = HMFGetLogIdentifier();
        v28 = [v4 fabricUUID];
        *buf = 138543618;
        v53 = v27;
        v54 = 2112;
        v55 = v28;
        _os_log_impl(&dword_22AEAE000, v26, OS_LOG_TYPE_INFO, "%{public}@Making room for target fabric UUID: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v24);
      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      v29 = [(HMMTRAccessoryServerBrowser *)v25 fabricsWithActiveConnections];
      v30 = [v29 countByEnumeratingWithState:&v47 objects:v51 count:16];
      if (v30)
      {
        v31 = v30;
        v32 = *v48;
        while (2)
        {
          for (i = 0; i != v31; ++i)
          {
            if (*v48 != v32)
            {
              objc_enumerationMutation(v29);
            }

            v34 = *(*(&v47 + 1) + 8 * i);
            v35 = [v4 fabricUUID];
            v36 = [v34 fabricUUID];
            v37 = HMFEqualObjects();

            if ((v37 & 1) == 0)
            {
              v39 = objc_autoreleasePoolPush();
              v40 = v25;
              v41 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
              {
                v42 = HMFGetLogIdentifier();
                v43 = [v34 fabricUUID];
                *buf = 138543618;
                v53 = v42;
                v54 = 2112;
                v55 = v43;
                _os_log_impl(&dword_22AEAE000, v41, OS_LOG_TYPE_INFO, "%{public}@Evicting fabric: %@", buf, 0x16u);
              }

              objc_autoreleasePoolPop(v39);
              v44 = [v34 fabricUUID];
              v45 = [MEMORY[0x277CCA9B8] hmmtrErrorWithCode:5];
              [(HMMTRAccessoryServerBrowser *)v40 _abortAllOperationsForFabricUUID:v44 reason:v45];

              goto LABEL_25;
            }
          }

          v31 = [v29 countByEnumeratingWithState:&v47 objects:v51 count:16];
          if (v31)
          {
            continue;
          }

          break;
        }
      }

LABEL_25:
    }
  }

  else
  {
    if (v18)
    {
      v38 = HMFGetLogIdentifier();
      *buf = 138543618;
      v53 = v38;
      v54 = 2112;
      v55 = v4;
      _os_log_impl(&dword_22AEAE000, v17, OS_LOG_TYPE_ERROR, "%{public}@establishConnectionWhenAllowedWithFabricConnectionRequest add to active %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v15);
    [(HMMTRAccessoryServerBrowser *)v16 _addToActiveFabrics:v4];
  }

  v46 = *MEMORY[0x277D85DE8];
}

- (void)_establishConnectionWhenAllowedWithAccessoryConnectionRequest:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = HMFGetLogIdentifier();
    v9 = [(HMMTRAccessoryServerBrowser *)v6 fabricsWithActiveConnections];
    v10 = [v9 count];
    v11 = [(HMMTRAccessoryServerBrowser *)v6 fabricsWithPendingConnections];
    v26 = 138544130;
    v27 = v8;
    v28 = 2112;
    v29 = v4;
    v30 = 2048;
    v31 = v10;
    v32 = 2048;
    v33 = [v11 count];
    _os_log_impl(&dword_22AEAE000, v7, OS_LOG_TYPE_DEBUG, "%{public}@Connection request for accessory %@. Current active fabric count: %tu, Pending: %tu", &v26, 0x2Au);
  }

  objc_autoreleasePoolPop(v5);
  v12 = [v4 server];
  v13 = [(HMMTRAccessoryServerBrowser *)v6 isOperationAllowedForAccessoryServer:v12];

  if (!v13)
  {
    v19 = objc_autoreleasePoolPush();
    v20 = v6;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier();
      v23 = [v4 nodeID];
      v24 = [(HMMTRAccessoryServerBrowser *)v20 allowedNodeIDsForConnectionRequests];
      v26 = 138543874;
      v27 = v22;
      v28 = 2112;
      v29 = v23;
      v30 = 2112;
      v31 = v24;
      _os_log_impl(&dword_22AEAE000, v21, OS_LOG_TYPE_ERROR, "%{public}@Connection requests rejected for nodeID %@: Allowed NodeIDs: %@", &v26, 0x20u);
    }

    objc_autoreleasePoolPop(v19);
    v18 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D0F1A0] code:9 userInfo:0];
    [v4 abortAllPendingOperations:v18];
    goto LABEL_9;
  }

  if (![(HMMTRAccessoryServerBrowser *)v6 _tryAddAccessoryConnectionRequestToExistingFabric:v4])
  {
    v14 = [HMMTRFabricConnectionRequest alloc];
    v15 = [(HAPAccessoryServerBrowser *)v6 workQueue];
    v16 = [v4 fabricUUID];
    v17 = [v4 server];
    v18 = -[HMMTRFabricConnectionRequest initWithQueue:browser:fabricUUID:systemCommissionerFabric:](v14, "initWithQueue:browser:fabricUUID:systemCommissionerFabric:", v15, v6, v16, [v17 knownToSystemCommissioner]);

    [(HMMTRAccessoryServerBrowser *)v6 _establishConnectionWhenAllowedWithFabricConnectionRequest:v18];
    [(HMMTRFabricConnectionRequest *)v18 connectToAccessoryWhenAllowed:v4];
LABEL_9:
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)disableUnrestrictedOperationsForAccessoryServer:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMMTRAccessoryServerBrowser *)self allowedNodeIDsForConnectionRequests];
  v6 = [v4 nodeID];
  [v5 removeObject:v6];

  v7 = objc_autoreleasePoolPush();
  v8 = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v11 = [(HMMTRAccessoryServerBrowser *)v8 allowedNodeIDsForConnectionRequests];
    v13 = 138543618;
    v14 = v10;
    v15 = 2112;
    v16 = v11;
    _os_log_impl(&dword_22AEAE000, v9, OS_LOG_TYPE_INFO, "%{public}@Connection requests: Allowed NodeIDs: %@", &v13, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  v12 = *MEMORY[0x277D85DE8];
}

- (void)enableUnrestrictedOperationsForAccessoryServer:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [(HMMTRAccessoryServerBrowser *)self setConnectionRequestSuspended:1];
  v5 = [(HMMTRAccessoryServerBrowser *)self allowedNodeIDsForConnectionRequests];
  v6 = [v4 nodeID];
  [v5 addObject:v6];

  v7 = objc_autoreleasePoolPush();
  v8 = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v11 = [(HMMTRAccessoryServerBrowser *)v8 allowedNodeIDsForConnectionRequests];
    v13 = 138543618;
    v14 = v10;
    v15 = 2112;
    v16 = v11;
    _os_log_impl(&dword_22AEAE000, v9, OS_LOG_TYPE_INFO, "%{public}@Connection requests: Allowed NodeIDs: %@", &v13, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  v12 = *MEMORY[0x277D85DE8];
}

- (void)resumeAllOperations
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = [(HMMTRAccessoryServerBrowser *)self allowedNodeIDsForConnectionRequests];
  [v3 removeAllObjects];

  [(HMMTRAccessoryServerBrowser *)self setConnectionRequestSuspended:0];
  v4 = objc_autoreleasePoolPush();
  v5 = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v9 = 138543362;
    v10 = v7;
    _os_log_impl(&dword_22AEAE000, v6, OS_LOG_TYPE_INFO, "%{public}@Connection requests resumed", &v9, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)abortAndSuspendAllOperationsWithReason:(id)a3
{
  v4 = a3;
  v5 = [(HAPAccessoryServerBrowser *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __70__HMMTRAccessoryServerBrowser_abortAndSuspendAllOperationsWithReason___block_invoke;
  v7[3] = &unk_2786EF328;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __70__HMMTRAccessoryServerBrowser_abortAndSuspendAllOperationsWithReason___block_invoke(uint64_t a1)
{
  v30 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) connectionRequestSuspended])
  {
    v2 = objc_autoreleasePoolPush();
    v3 = *(a1 + 32);
    v4 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = HMFGetLogIdentifier();
      *buf = 138543362;
      v29 = v5;
      _os_log_impl(&dword_22AEAE000, v4, OS_LOG_TYPE_INFO, "%{public}@Connection requests already suspended", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v2);
  }

  else
  {
    [*(a1 + 32) setConnectionRequestSuspended:1];
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v6 = [*(a1 + 32) fabricsWithActiveConnections];
    v7 = [v6 countByEnumeratingWithState:&v22 objects:v27 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v23;
      do
      {
        v10 = 0;
        do
        {
          if (*v23 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [*(*(&v22 + 1) + 8 * v10++) abortAllOperationsWithReason:*(a1 + 40)];
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v22 objects:v27 count:16];
      }

      while (v8);
    }

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v11 = [*(a1 + 32) fabricsWithPendingConnections];
    v12 = [v11 countByEnumeratingWithState:&v18 objects:v26 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v19;
      do
      {
        v15 = 0;
        do
        {
          if (*v19 != v14)
          {
            objc_enumerationMutation(v11);
          }

          [*(*(&v18 + 1) + 8 * v15++) abortAllOperationsWithReason:*(a1 + 40)];
        }

        while (v13 != v15);
        v13 = [v11 countByEnumeratingWithState:&v18 objects:v26 count:16];
      }

      while (v13);
    }

    v16 = [*(a1 + 32) threadSoftwareUpdateController];
    [v16 suspendOperations];
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (BOOL)isOperationAllowedForAccessoryServer:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(HMMTRAccessoryServerBrowser *)self connectionRequestSuspended])
  {
    v5 = objc_autoreleasePoolPush();
    v6 = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      v9 = [(HMMTRAccessoryServerBrowser *)v6 allowedNodeIDsForConnectionRequests];
      *buf = 138543618;
      v24 = v8;
      v25 = 2112;
      v26 = v9;
      _os_log_impl(&dword_22AEAE000, v7, OS_LOG_TYPE_INFO, "%{public}@Connection requests are currently suspended. Only allowing nodeIDs: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v10 = [(HMMTRAccessoryServerBrowser *)v6 allowedNodeIDsForConnectionRequests];
    v11 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v11)
    {
      v12 = *v19;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v19 != v12)
          {
            objc_enumerationMutation(v10);
          }

          v14 = *(*(&v18 + 1) + 8 * i);
          v15 = [v4 nodeID];
          LOBYTE(v14) = [v14 isEqualToNumber:v15];

          if (v14)
          {
            LOBYTE(v11) = 1;
            goto LABEL_15;
          }
        }

        v11 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

LABEL_15:
  }

  else
  {
    LOBYTE(v11) = 1;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v11;
}

- (void)setConnectionRequestSuspended:(BOOL)a3
{
  if (self->_connectionRequestSuspended != a3)
  {
    self->_connectionRequestSuspended = a3;
  }
}

- (void)abortOperationsForAccessoryServer:(id)a3 reason:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HAPAccessoryServerBrowser *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __72__HMMTRAccessoryServerBrowser_abortOperationsForAccessoryServer_reason___block_invoke;
  block[3] = &unk_2786EF3C8;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

void __72__HMMTRAccessoryServerBrowser_abortOperationsForAccessoryServer_reason___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = [HMMTRAccessoryConnectionRequest alloc];
  v3 = [*(a1 + 32) workQueue];
  v4 = [(HMMTRAccessoryConnectionRequest *)v2 initWithQueue:v3 server:*(a1 + 40) highPriority:0 completion:&__block_literal_global_311];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = [*(a1 + 32) fabricsWithActiveConnections];
  v6 = [v5 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v20 != v8)
      {
        objc_enumerationMutation(v5);
      }

      if ([*(*(&v19 + 1) + 8 * v9) abortOperationsForConnectionRequest:v4 reason:*(a1 + 48)])
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [v5 countByEnumeratingWithState:&v19 objects:v24 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = [*(a1 + 32) fabricsWithPendingConnections];
    v10 = [v5 countByEnumeratingWithState:&v15 objects:v23 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v16;
LABEL_11:
      v13 = 0;
      while (1)
      {
        if (*v16 != v12)
        {
          objc_enumerationMutation(v5);
        }

        if ([*(*(&v15 + 1) + 8 * v13) abortOperationsForConnectionRequest:v4 reason:*(a1 + 48)])
        {
          break;
        }

        if (v11 == ++v13)
        {
          v11 = [v5 countByEnumeratingWithState:&v15 objects:v23 count:16];
          if (v11)
          {
            goto LABEL_11;
          }

          break;
        }
      }
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)connectToAccessoryWhenAllowed:(id)a3 priority:(unint64_t)a4 completion:(id)a5
{
  v26 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = [(HAPAccessoryServerBrowser *)self workQueue];

  if (v10)
  {
    if (a4 < 3)
    {
      v16 = [(HAPAccessoryServerBrowser *)self workQueue];
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __81__HMMTRAccessoryServerBrowser_connectToAccessoryWhenAllowed_priority_completion___block_invoke;
      v18[3] = &unk_2786EF850;
      v18[4] = self;
      v19 = v8;
      v21 = a4;
      v20 = v9;
      dispatch_async(v16, v18);
    }

    else
    {
      v11 = objc_autoreleasePoolPush();
      v12 = self;
      v13 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = HMFGetLogIdentifier();
        *buf = 138543618;
        v23 = v14;
        v24 = 2048;
        v25 = a4;
        _os_log_impl(&dword_22AEAE000, v13, OS_LOG_TYPE_ERROR, "%{public}@Invalid request priority: %lu", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v11);
      v15 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:3];
      (*(v9 + 2))(v9, v15);
    }
  }

  else
  {
    (*(v9 + 2))(v9, 0);
  }

  v17 = *MEMORY[0x277D85DE8];
}

void __81__HMMTRAccessoryServerBrowser_connectToAccessoryWhenAllowed_priority_completion___block_invoke(uint64_t a1)
{
  v2 = [HMMTRAccessoryConnectionRequest alloc];
  v3 = [*(a1 + 32) workQueue];
  v4 = [(HMMTRAccessoryConnectionRequest *)v2 initWithQueue:v3 server:*(a1 + 40) priority:*(a1 + 56) completion:*(a1 + 48)];

  [*(a1 + 32) _establishConnectionWhenAllowedWithAccessoryConnectionRequest:v4];
}

- (void)_removeFromPendingFabrics:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = *MEMORY[0x277CFECE8];
  os_unfair_lock_lock_with_options();
  if ([(NSMutableOrderedSet *)self->_fabricsWithPendingConnections containsObject:v4])
  {
    [(NSMutableOrderedSet *)self->_fabricsWithPendingConnections removeObject:v4];
    os_unfair_lock_unlock((self + v5));
    v6 = objc_autoreleasePoolPush();
    v7 = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v10 = [v4 fabricUUID];
      v12 = 138543618;
      v13 = v9;
      v14 = 2112;
      v15 = v10;
      _os_log_impl(&dword_22AEAE000, v8, OS_LOG_TYPE_INFO, "%{public}@Removed pending connection for fabric: %@", &v12, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
  }

  else
  {
    os_unfair_lock_unlock((self + v5));
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_addToPendingFabrics:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = *MEMORY[0x277CFECE8];
  os_unfair_lock_lock_with_options();
  if (([(NSMutableOrderedSet *)self->_fabricsWithPendingConnections containsObject:v4]& 1) != 0)
  {
    os_unfair_lock_unlock((self + v5));
  }

  else
  {
    [(NSMutableOrderedSet *)self->_fabricsWithPendingConnections addObject:v4];
    os_unfair_lock_unlock((self + v5));
    v6 = objc_autoreleasePoolPush();
    v7 = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v10 = [v4 fabricUUID];
      v12 = 138543618;
      v13 = v9;
      v14 = 2112;
      v15 = v10;
      _os_log_impl(&dword_22AEAE000, v8, OS_LOG_TYPE_INFO, "%{public}@Pending connection to fabric: %@", &v12, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (id)fabricsWithPendingConnections
{
  v3 = *MEMORY[0x277CFECE8];
  os_unfair_lock_lock_with_options();
  v4 = MEMORY[0x277CBEA60];
  v5 = [(NSMutableOrderedSet *)self->_fabricsWithPendingConnections array];
  v6 = [v4 arrayWithArray:v5];

  os_unfair_lock_unlock((self + v3));

  return v6;
}

- (BOOL)_tryAddAccessoryConnectionRequestToExistingFabric:(id)a3
{
  v36 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v24 = *MEMORY[0x277CFECE8];
  os_unfair_lock_lock_with_options();
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v25 = self;
  v5 = self->_fabricsWithActiveConnections;
  v6 = [(NSMutableOrderedSet *)v5 countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v6)
  {
    v7 = *v31;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v31 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v30 + 1) + 8 * i);
        v10 = [v9 fabricUUID];
        v11 = [v4 fabricUUID];
        v12 = HMFEqualObjects();

        if (v12)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [(NSMutableOrderedSet *)v5 countByEnumeratingWithState:&v30 objects:v35 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v13 = self->_fabricsWithPendingConnections;
  v14 = [(NSMutableOrderedSet *)v13 countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v14)
  {
    v15 = *v27;
    while (2)
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v27 != v15)
        {
          objc_enumerationMutation(v13);
        }

        v17 = *(*(&v26 + 1) + 8 * j);
        v18 = [v17 fabricUUID];
        v19 = [v4 fabricUUID];
        v20 = HMFEqualObjects();

        if (v20)
        {
          v21 = v17;

          v6 = v21;
          goto LABEL_21;
        }
      }

      v14 = [(NSMutableOrderedSet *)v13 countByEnumeratingWithState:&v26 objects:v34 count:16];
      if (v14)
      {
        continue;
      }

      break;
    }
  }

LABEL_21:

  os_unfair_lock_unlock((v25 + v24));
  if (v6)
  {
    [v6 connectToAccessoryWhenAllowed:v4];
  }

  v22 = *MEMORY[0x277D85DE8];
  return v6 != 0;
}

- (void)_removeFromActiveFabrics:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = *MEMORY[0x277CFECE8];
  os_unfair_lock_lock_with_options();
  if ([(NSMutableOrderedSet *)self->_fabricsWithActiveConnections containsObject:v4])
  {
    [(NSMutableOrderedSet *)self->_fabricsWithActiveConnections removeObject:v4];
    os_unfair_lock_unlock((self + v5));
    v6 = objc_autoreleasePoolPush();
    v7 = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v10 = [v4 fabricUUID];
      v12 = 138543618;
      v13 = v9;
      v14 = 2112;
      v15 = v10;
      _os_log_impl(&dword_22AEAE000, v8, OS_LOG_TYPE_INFO, "%{public}@Removed active connection for fabric: %@", &v12, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    [v4 stopOperations];
  }

  else
  {
    os_unfair_lock_unlock((self + v5));
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_addToActiveFabrics:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = *MEMORY[0x277CFECE8];
  os_unfair_lock_lock_with_options();
  if (([(NSMutableOrderedSet *)self->_fabricsWithActiveConnections containsObject:v4]& 1) != 0)
  {
    os_unfair_lock_unlock((self + v5));
  }

  else
  {
    [(NSMutableOrderedSet *)self->_fabricsWithActiveConnections addObject:v4];
    os_unfair_lock_unlock((self + v5));
    v6 = objc_autoreleasePoolPush();
    v7 = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v10 = [v4 fabricUUID];
      v12 = 138543618;
      v13 = v9;
      v14 = 2112;
      v15 = v10;
      _os_log_impl(&dword_22AEAE000, v8, OS_LOG_TYPE_INFO, "%{public}@Adding active connection for fabric: %@", &v12, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    [v4 startOperations];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (id)fabricsWithActiveConnections
{
  v3 = *MEMORY[0x277CFECE8];
  os_unfair_lock_lock_with_options();
  v4 = MEMORY[0x277CBEA60];
  v5 = [(NSMutableOrderedSet *)self->_fabricsWithActiveConnections array];
  v6 = [v4 arrayWithArray:v5];

  os_unfair_lock_unlock((self + v3));

  return v6;
}

- (id)fabricDataForPairingTargetFabricUUID:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  v5 = [(NSMutableDictionary *)self->_fabricDataPerPairingTargetFabricUUID objectForKeyedSubscript:v4];
  os_unfair_lock_unlock(&self->_pairingTargetFabricDataLock);

  return v5;
}

- (void)registerPairingWindowWithSetupPayload:(id)a3 duration:(double)a4 accessoryServer:(id)a5
{
  v8 = a5;
  v9 = a3;
  v11 = [(HMMTRAccessoryServerBrowser *)self pairingWindowInfoTable];
  v10 = [MEMORY[0x277CBEAA8] now];
  [v11 registerPairingWindowWithSetupPayload:v9 currentDate:v10 duration:v8 accessoryServer:a4];
}

- (BOOL)supportsCommissioningCertificateRetrievalForHomeUUID:(id)a3
{
  v4 = a3;
  v5 = [(HMMTRAccessoryServerBrowser *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v6 = [(HMMTRAccessoryServerBrowser *)self delegate];
    v7 = [v6 supportsCommissioningCertificateRetrievalForHomeUUID:v4];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)supportsCommissioningCertificateRetrievalForCurrentlyPairingAccessory
{
  v3 = [(HMMTRAccessoryServerBrowser *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = [(HMMTRAccessoryServerBrowser *)self delegate];
    v5 = [v4 supportsCommissioningCertificateRetrievalForCurrentlyPairingAccessory];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)commitStagedAccessoryServer:(id)a3
{
  v4 = a3;
  v5 = [(HAPAccessoryServerBrowser *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __59__HMMTRAccessoryServerBrowser_commitStagedAccessoryServer___block_invoke;
  v7[3] = &unk_2786EF328;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __59__HMMTRAccessoryServerBrowser_commitStagedAccessoryServer___block_invoke(uint64_t a1)
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
    _os_log_impl(&dword_22AEAE000, v4, OS_LOG_TYPE_INFO, "%{public}@Committing staged server: %@", &v12, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  [*(a1 + 40) commitStagedPairing];
  v7 = *(a1 + 32);
  v8 = [*(a1 + 40) identifier];
  [v7 registerPairedAccessoryWithIdentifier:v8];

  v9 = [*(a1 + 32) discoveredAccessoryServers];
  [v9 addObject:*(a1 + 40)];

  v10 = [*(a1 + 32) stagedAccessoryServers];
  [v10 removeObject:*(a1 + 40)];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)removeAccessoryServer:(id)a3 fromDiscoveredAccessoryServerListWithReason:(id)a4
{
  v33 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 removeReason];
  v9 = [v6 pairingEndContextWhenRemove];
  v10 = v9;
  if (!v8 || !v9)
  {
    v11 = v7;

    v12 = [HMMTRAccessoryPairingEndContext hmmtrContextWithCancelledError:v11];

    v10 = v12;
    v8 = v11;
  }

  v13 = objc_autoreleasePoolPush();
  v14 = self;
  v15 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = HMFGetLogIdentifier();
    *buf = 138544130;
    v26 = v16;
    v27 = 2112;
    v28 = v6;
    v29 = 2112;
    v30 = v8;
    v31 = 2112;
    v32 = v10;
    _os_log_impl(&dword_22AEAE000, v15, OS_LOG_TYPE_INFO, "%{public}@Removing from discovered accessory server list: %@ for reason: %@, context: %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v13);
  [v6 setRemoveReason:0 pairingEndContextWhenRemove:0];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __97__HMMTRAccessoryServerBrowser_removeAccessoryServer_fromDiscoveredAccessoryServerListWithReason___block_invoke;
  v21[3] = &unk_2786EF378;
  v21[4] = v14;
  v22 = v6;
  v23 = v8;
  v24 = v10;
  v17 = v10;
  v18 = v8;
  v19 = v6;
  [(HMMTRAccessoryServerBrowser *)v14 dispatchBlock:v21];

  v20 = *MEMORY[0x277D85DE8];
}

void __97__HMMTRAccessoryServerBrowser_removeAccessoryServer_fromDiscoveredAccessoryServerListWithReason___block_invoke(id *a1)
{
  v29 = *MEMORY[0x277D85DE8];
  if ([*(a1[4] + 7) containsObject:a1[5]])
  {
    [a1[5] handleRemoveFromBrowser];
    [*(a1[4] + 7) removeObject:a1[5]];
    v2 = [a1[4] delegate];
    if ([v2 conformsToProtocol:&unk_283F23578])
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
      v5 = [a1[4] delegateQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __97__HMMTRAccessoryServerBrowser_removeAccessoryServer_fromDiscoveredAccessoryServerListWithReason___block_invoke_305;
      block[3] = &unk_2786EED80;
      v22 = v4;
      v20 = *(a1 + 2);
      v6 = *(&v20 + 1);
      v7 = a1[6];
      v8 = a1[7];
      *&v9 = v7;
      *(&v9 + 1) = v8;
      v23 = v20;
      v24 = v9;
      dispatch_async(v5, block);
    }

    else
    {
      v15 = objc_autoreleasePoolPush();
      v16 = a1[4];
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = HMFGetLogIdentifier();
        *buf = 138543362;
        v26 = v18;
        _os_log_impl(&dword_22AEAE000, v17, OS_LOG_TYPE_ERROR, "%{public}@Unable to find delegate conforming to HMMTRHAPAccessoryServerBrowserPairingDelegate", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v15);
    }
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    v11 = a1[4];
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      v14 = a1[5];
      *buf = 138543618;
      v26 = v13;
      v27 = 2112;
      v28 = v14;
      _os_log_impl(&dword_22AEAE000, v12, OS_LOG_TYPE_INFO, "%{public}@Server %@ already removed from discovered server list", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)_invalidateAccessoryServer:(id)a3 reason:(id)a4 withCompletion:(id)a5
{
  v48 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (v8)
  {
    v12 = [v8 removeReason];
    v13 = [v8 pairingEndContextWhenRemove];
    v14 = v13;
    if (!v12 || !v13)
    {
      v15 = v9;

      v16 = [HMMTRAccessoryPairingEndContext hmmtrContextWithCancelledError:v15];

      v14 = v16;
      v12 = v15;
    }

    v17 = objc_autoreleasePoolPush();
    v18 = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138544130;
      v41 = v20;
      v42 = 2112;
      v43 = v8;
      v44 = 2112;
      v45 = v12;
      v46 = 2112;
      v47 = v14;
      _os_log_impl(&dword_22AEAE000, v19, OS_LOG_TYPE_INFO, "%{public}@Invalidating accessory Server: %@ for reason: %@ context: %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v17);
    [v8 setRemoveReason:0 pairingEndContextWhenRemove:0];
    if (([v8 locallyDiscovered] & 1) == 0)
    {
      [v8 handleRemoveFromBrowser];
      [(NSMutableSet *)v18->_discoveredAccessoryServers removeObject:v8];
    }

    [(NSMutableSet *)v18->_stagedAccessoryServers removeObject:v8];
    if ([v8 locallyDiscovered])
    {
      v21 = objc_autoreleasePoolPush();
      v22 = v18;
      v23 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        v24 = HMFGetLogIdentifier();
        *buf = 138543618;
        v41 = v24;
        v42 = 2112;
        v43 = v8;
        _os_log_impl(&dword_22AEAE000, v23, OS_LOG_TYPE_INFO, "%{public}@Keeping the locally discovered server: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v21);
    }

    else
    {
      [v8 setReachable:0];
      [v8 setControllerWrapper:0];
    }

    [v8 setSecuritySessionOpen:0];
    if (([v8 locallyDiscovered] & 1) == 0)
    {
      v25 = [(HMMTRAccessoryServerBrowser *)v18 delegate];
      if ([v25 conformsToProtocol:&unk_283F23578])
      {
        v26 = v25;
      }

      else
      {
        v26 = 0;
      }

      v27 = v26;

      if (v27)
      {
        v28 = [(HMMTRAccessoryServerBrowser *)v18 delegateQueue];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __80__HMMTRAccessoryServerBrowser__invalidateAccessoryServer_reason_withCompletion___block_invoke;
        block[3] = &unk_2786EED80;
        v35 = v27;
        v36 = v18;
        v37 = v8;
        v38 = v12;
        v39 = v14;
        dispatch_async(v28, block);
      }

      else
      {
        v29 = objc_autoreleasePoolPush();
        v30 = v18;
        v31 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          v32 = HMFGetLogIdentifier();
          *buf = 138543362;
          v41 = v32;
          _os_log_impl(&dword_22AEAE000, v31, OS_LOG_TYPE_ERROR, "%{public}@Unable to find delegate conforming to HMMTRHAPAccessoryServerBrowserPairingDelegate", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v29);
      }
    }

    if (v11)
    {
      v11[2](v11);
    }
  }

  else if (v10)
  {
    v10[2](v10);
  }

  v33 = *MEMORY[0x277D85DE8];
}

- (void)invalidateAccessoryServer:(id)a3 reason:(id)a4 withCompletion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  objc_initWeak(&location, self);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __79__HMMTRAccessoryServerBrowser_invalidateAccessoryServer_reason_withCompletion___block_invoke;
  v14[3] = &unk_2786EED58;
  objc_copyWeak(&v18, &location);
  v11 = v8;
  v15 = v11;
  v12 = v9;
  v16 = v12;
  v13 = v10;
  v17 = v13;
  [(HMMTRAccessoryServerBrowser *)self dispatchBlock:v14];

  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
}

void __79__HMMTRAccessoryServerBrowser_invalidateAccessoryServer_reason_withCompletion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained _invalidateAccessoryServer:*(a1 + 32) reason:*(a1 + 40) withCompletion:*(a1 + 48)];
}

- (void)invalidateAllDiscoveredServersWithReason:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v8 = [(HAPAccessoryServerBrowser *)self workQueue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __83__HMMTRAccessoryServerBrowser_invalidateAllDiscoveredServersWithReason_completion___block_invoke;
  v11[3] = &unk_2786EF558;
  objc_copyWeak(&v14, &location);
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, v11);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __83__HMMTRAccessoryServerBrowser_invalidateAllDiscoveredServersWithReason_completion___block_invoke(uint64_t a1)
{
  v31 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = objc_autoreleasePoolPush();
  v3 = WeakRetained;
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    *buf = 138543362;
    v27 = v5;
    _os_log_impl(&dword_22AEAE000, v4, OS_LOG_TYPE_INFO, "%{public}@Disabling and invalidating all servers...", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = [v3 _allServers];
  v7 = [v6 countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v23;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v23 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v22 + 1) + 8 * i);
        if (([v11 isKnownToSystemCommissioner] & 1) == 0)
        {
          if ([v11 pairedState] && (objc_msgSend(v11, "removalInProgress") & 1) == 0)
          {
            v16 = objc_autoreleasePoolPush();
            v17 = v3;
            v18 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
            {
              v19 = HMFGetLogIdentifier();
              *buf = 138543618;
              v27 = v19;
              v28 = 2112;
              v29 = v11;
              _os_log_impl(&dword_22AEAE000, v18, OS_LOG_TYPE_INFO, "%{public}@Disabling server: %@", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v16);
            [v11 disable];
          }

          else
          {
            v12 = objc_autoreleasePoolPush();
            v13 = v3;
            v14 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
            {
              v15 = HMFGetLogIdentifier();
              *buf = 138543618;
              v27 = v15;
              v28 = 2112;
              v29 = v11;
              _os_log_impl(&dword_22AEAE000, v14, OS_LOG_TYPE_DEBUG, "%{public}@Ignoring unpaired server: %@", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v12);
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v8);
  }

  [v3 _cleanupDiscoveredServersWithReason:*(a1 + 32) completion:*(a1 + 40)];
  v20 = *MEMORY[0x277D85DE8];
}

- (void)handleHomeRemovedAccessoryWithNodeID:(id)a3 fabricUUID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __79__HMMTRAccessoryServerBrowser_handleHomeRemovedAccessoryWithNodeID_fabricUUID___block_invoke;
  v10[3] = &unk_2786EF3C8;
  v10[4] = self;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  [(HMMTRAccessoryServerBrowser *)self dispatchBlock:v10];
}

uint64_t __79__HMMTRAccessoryServerBrowser_handleHomeRemovedAccessoryWithNodeID_fabricUUID___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 40);
    v9 = 138543618;
    v10 = v5;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&dword_22AEAE000, v4, OS_LOG_TYPE_INFO, "%{public}@Accessory with node ID %@ was removed from home", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  [*(a1 + 32) _cleanupDiscoveredServers];
  result = [*(a1 + 32) _cleanUpMTRDevicesWithFabricUUID:*(a1 + 48)];
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)handleHomeAddedAccessoryWithNodeID:(id)a3 fabricUUID:(id)a4 localControl:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __90__HMMTRAccessoryServerBrowser_handleHomeAddedAccessoryWithNodeID_fabricUUID_localControl___block_invoke;
  v12[3] = &unk_2786EEAB8;
  v12[4] = self;
  v13 = v9;
  v14 = v8;
  v15 = a5;
  v10 = v8;
  v11 = v9;
  [(HMMTRAccessoryServerBrowser *)self dispatchBlock:v12];
}

uint64_t __90__HMMTRAccessoryServerBrowser_handleHomeAddedAccessoryWithNodeID_fabricUUID_localControl___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) _cleanUpMTRDevicesWithFabricUUID:*(a1 + 40)];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v7 = *(a1 + 40);
    v6 = *(a1 + 48);
    v8 = *(a1 + 56);
    v9 = HMFBooleanToString();
    v14 = 138544130;
    v15 = v5;
    v16 = 2112;
    v17 = v6;
    v18 = 2112;
    v19 = v7;
    v20 = 2112;
    v21 = v9;
    _os_log_impl(&dword_22AEAE000, v4, OS_LOG_TYPE_INFO, "%{public}@Accessory with node ID %@ was added to home with fabric %@, for local control: %@", &v14, 0x2Au);
  }

  objc_autoreleasePoolPop(v2);
  v10 = *(a1 + 32);
  if (*(a1 + 56) == 1)
  {
    result = [v10 _addDiscoveredAccessoryServerWithNodeID:*(a1 + 48) fabricUUID:*(a1 + 40)];
  }

  else
  {
    v12 = [v10 nodesAddedToHome];
    [v12 addObject:*(a1 + 48)];

    result = [*(a1 + 32) _setupPairedDevices];
  }

  v13 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)accessoryServerForSystemCommissionerDeviceWithNodeID:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HAPAccessoryServerBrowser *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __102__HMMTRAccessoryServerBrowser_accessoryServerForSystemCommissionerDeviceWithNodeID_completionHandler___block_invoke;
  block[3] = &unk_2786F0EA8;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)readCommissioningWindowStatusForSystemCommissionerDeviceWithNodeID:(id)a3 completionHandler:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543618;
    v20 = v11;
    v21 = 2112;
    v22 = v6;
    _os_log_impl(&dword_22AEAE000, v10, OS_LOG_TYPE_INFO, "%{public}@Received request to read commissioning window status for node (%@) from System Commissioner Fabric", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  v12 = [(HAPAccessoryServerBrowser *)v9 workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __116__HMMTRAccessoryServerBrowser_readCommissioningWindowStatusForSystemCommissionerDeviceWithNodeID_completionHandler___block_invoke;
  block[3] = &unk_2786F0EA8;
  block[4] = v9;
  v17 = v6;
  v18 = v7;
  v13 = v7;
  v14 = v6;
  dispatch_async(v12, block);

  v15 = *MEMORY[0x277D85DE8];
}

void __116__HMMTRAccessoryServerBrowser_readCommissioningWindowStatusForSystemCommissionerDeviceWithNodeID_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __116__HMMTRAccessoryServerBrowser_readCommissioningWindowStatusForSystemCommissionerDeviceWithNodeID_completionHandler___block_invoke_2;
  v7[3] = &unk_2786EED08;
  v4 = *(a1 + 48);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v9 = v4;
  v7[4] = v5;
  v8 = v6;
  [v2 _accessoryServerForSystemCommissionerDeviceWithNodeID:v3 completionHandler:v7];
}

void __116__HMMTRAccessoryServerBrowser_readCommissioningWindowStatusForSystemCommissionerDeviceWithNodeID_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    [v5 readPairingWindowStatusWithCompletionHandler:*(a1 + 48)];
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 32);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v11 = *(a1 + 40);
      v13 = 138543874;
      v14 = v10;
      v15 = 2112;
      v16 = v11;
      v17 = 2112;
      v18 = v6;
      _os_log_impl(&dword_22AEAE000, v9, OS_LOG_TYPE_ERROR, "%{public}@Failed to retrieve accessory server for node %@ to read commissioning window status, error: %@", &v13, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
    (*(*(a1 + 48) + 16))();
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)openCommissioningWindowForSystemCommissionerDeviceWithNodeID:(id)a3 duration:(double)a4 completionHandler:(id)a5
{
  v28 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = objc_autoreleasePoolPush();
  v11 = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = HMFGetLogIdentifier();
    *buf = 138543874;
    v23 = v13;
    v24 = 2112;
    v25 = v8;
    v26 = 2048;
    v27 = a4;
    _os_log_impl(&dword_22AEAE000, v12, OS_LOG_TYPE_INFO, "%{public}@Received request to open commissioning window for node (%@) from System Commissioner Fabric, for %fs", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v10);
  v14 = [(HAPAccessoryServerBrowser *)v11 workQueue];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __119__HMMTRAccessoryServerBrowser_openCommissioningWindowForSystemCommissionerDeviceWithNodeID_duration_completionHandler___block_invoke;
  v18[3] = &unk_2786EF850;
  v18[4] = v11;
  v19 = v8;
  v21 = a4;
  v20 = v9;
  v15 = v9;
  v16 = v8;
  dispatch_async(v14, v18);

  v17 = *MEMORY[0x277D85DE8];
}

void __119__HMMTRAccessoryServerBrowser_openCommissioningWindowForSystemCommissionerDeviceWithNodeID_duration_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __119__HMMTRAccessoryServerBrowser_openCommissioningWindowForSystemCommissionerDeviceWithNodeID_duration_completionHandler___block_invoke_2;
  v4[3] = &unk_2786EED30;
  v7 = *(a1 + 56);
  v4[4] = v2;
  v6 = *(a1 + 48);
  v5 = *(a1 + 40);
  [v2 _accessoryServerForSystemCommissionerDeviceWithNodeID:v3 completionHandler:v4];
}

void __119__HMMTRAccessoryServerBrowser_openCommissioningWindowForSystemCommissionerDeviceWithNodeID_duration_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = *(a1 + 56);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __119__HMMTRAccessoryServerBrowser_openCommissioningWindowForSystemCommissionerDeviceWithNodeID_duration_completionHandler___block_invoke_3;
    v14[3] = &unk_2786EF990;
    v14[4] = *(a1 + 32);
    v15 = *(a1 + 48);
    [v5 openPairingWindowWithPINForDuration:v14 completionHandler:v7];
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v9 = *(a1 + 32);
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v12 = *(a1 + 40);
      *buf = 138543874;
      v17 = v11;
      v18 = 2112;
      v19 = v12;
      v20 = 2112;
      v21 = v6;
      _os_log_impl(&dword_22AEAE000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to retrieve accessory server for node %@ to open commissioning window, error: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v8);
    (*(*(a1 + 48) + 16))();
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __119__HMMTRAccessoryServerBrowser_openCommissioningWindowForSystemCommissionerDeviceWithNodeID_duration_completionHandler___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (!v5)
  {
    v9 = 0;
    goto LABEL_5;
  }

  v16 = 0;
  v7 = [MEMORY[0x277CD5528] setupPayloadWithOnboardingPayload:v5 error:&v16];
  v8 = v16;
  v9 = v8;
  if (v7)
  {

    v9 = v7;
LABEL_5:
    v10 = *(*(a1 + 40) + 16);
    goto LABEL_9;
  }

  v11 = objc_autoreleasePoolPush();
  v12 = *(a1 + 32);
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    v14 = HMFGetLogIdentifier();
    *buf = 138543362;
    v18 = v14;
    _os_log_impl(&dword_22AEAE000, v13, OS_LOG_TYPE_ERROR, "%{public}@Failed to convert onboarding payload to setup payload", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v11);
  v10 = *(*(a1 + 40) + 16);
LABEL_9:
  v10();

  v15 = *MEMORY[0x277D85DE8];
}

- (void)removeAllDevicePairingsForSystemCommissionerDeviceWithNodeID:(id)a3 completionHandler:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543618;
    v20 = v11;
    v21 = 2112;
    v22 = v6;
    _os_log_impl(&dword_22AEAE000, v10, OS_LOG_TYPE_INFO, "%{public}@Received request to remove node (%@) from System Commissioner Fabric", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  v12 = [MEMORY[0x277CCA9B8] hmmtrErrorWithCode:9];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __110__HMMTRAccessoryServerBrowser_removeAllDevicePairingsForSystemCommissionerDeviceWithNodeID_completionHandler___block_invoke;
  v16[3] = &unk_2786F0EA8;
  v16[4] = v9;
  v17 = v6;
  v18 = v7;
  v13 = v7;
  v14 = v6;
  [(HMMTRAccessoryServerBrowser *)v9 invalidateAllDiscoveredServersWithReason:v12 completion:v16];

  v15 = *MEMORY[0x277D85DE8];
}

void __110__HMMTRAccessoryServerBrowser_removeAllDevicePairingsForSystemCommissionerDeviceWithNodeID_completionHandler___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __110__HMMTRAccessoryServerBrowser_removeAllDevicePairingsForSystemCommissionerDeviceWithNodeID_completionHandler___block_invoke_2;
  v4[3] = &unk_2786EED08;
  v4[4] = v3;
  v5 = v2;
  v6 = *(a1 + 48);
  [v3 _accessoryServerForSystemCommissionerDeviceWithNodeID:v5 completionHandler:v4];
}

void __110__HMMTRAccessoryServerBrowser_removeAllDevicePairingsForSystemCommissionerDeviceWithNodeID_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) storageForSystemCommissioner];
  [v4 removeRecordsForSystemCommissionerFabricNode:*(a1 + 40)];
  (*(*(a1 + 48) + 16))();
  if (v3)
  {
    [v3 setRemovalInProgress:1];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __110__HMMTRAccessoryServerBrowser_removeAllDevicePairingsForSystemCommissionerDeviceWithNodeID_completionHandler___block_invoke_3;
    v14[3] = &unk_2786EF328;
    v5 = v3;
    v6 = *(a1 + 32);
    v15 = v5;
    v16 = v6;
    v7 = MEMORY[0x2318887D0](v14);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __110__HMMTRAccessoryServerBrowser_removeAllDevicePairingsForSystemCommissionerDeviceWithNodeID_completionHandler___block_invoke_4;
    v10[3] = &unk_2786EECE0;
    v8 = *(a1 + 40);
    v10[4] = *(a1 + 32);
    v11 = v8;
    v12 = v5;
    v13 = v7;
    v9 = v7;
    [v12 fetchPairingsWithCompletionHandler:v10];
  }
}

void __110__HMMTRAccessoryServerBrowser_removeAllDevicePairingsForSystemCommissionerDeviceWithNodeID_completionHandler___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    [v2 disable];
    v5 = a1 + 32;
    v3 = *(a1 + 32);
    v4 = *(v5 + 8);
    v6 = [MEMORY[0x277CCA9B8] hmmtrErrorWithCode:12];
    [v4 invalidateAccessoryServer:v3 reason:v6];
  }
}

void __110__HMMTRAccessoryServerBrowser_removeAllDevicePairingsForSystemCommissionerDeviceWithNodeID_completionHandler___block_invoke_4(uint64_t a1, void *a2, void *a3, void *a4)
{
  v56 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v34 = a3;
  v8 = a4;
  v43 = 0;
  v44 = &v43;
  v45 = 0x3032000000;
  v46 = __Block_byref_object_copy__9232;
  v47 = __Block_byref_object_dispose__9233;
  v48 = [MEMORY[0x277CBEB18] array];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v39 objects:v55 count:16];
  if (v10)
  {
    v11 = *v40;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v40 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v39 + 1) + 8 * i);
        v14 = [v13 vendorID];
        v15 = [v14 integerValue] == 4937;

        if (v15)
        {
          v16 = v44[5];
          v17 = [v13 nodeID];
          [v16 addObject:v17];

          v18 = objc_autoreleasePoolPush();
          v19 = *(a1 + 32);
          v20 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
          {
            v21 = HMFGetLogIdentifier();
            v22 = [v13 nodeID];
            v23 = *(a1 + 40);
            *buf = 138543874;
            v50 = v21;
            v51 = 2112;
            v52 = v22;
            v53 = 2112;
            v54 = v23;
            _os_log_impl(&dword_22AEAE000, v20, OS_LOG_TYPE_INFO, "%{public}@Found Apple Home pairing with node id %@ during removeAllDevicePairingsForSystemCommissionerDeviceWithNodeID: %@", buf, 0x20u);
          }

          objc_autoreleasePoolPop(v18);
          goto LABEL_13;
        }
      }

      v10 = [v9 countByEnumeratingWithState:&v39 objects:v55 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  [*(a1 + 48) setBlockInvalidation:1];
  v24 = objc_autoreleasePoolPush();
  v25 = *(a1 + 32);
  v26 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
  {
    v27 = HMFGetLogIdentifier();
    v28 = *(a1 + 40);
    *buf = 138543618;
    v50 = v27;
    v51 = 2112;
    v52 = v28;
    _os_log_impl(&dword_22AEAE000, v26, OS_LOG_TYPE_INFO, "%{public}@Now removing all connected services for %@ ...", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v24);
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __110__HMMTRAccessoryServerBrowser_removeAllDevicePairingsForSystemCommissionerDeviceWithNodeID_completionHandler___block_invoke_214;
  v35[3] = &unk_2786F0FC0;
  v29 = *(a1 + 48);
  v30 = *(a1 + 56);
  v31 = *(a1 + 32);
  v32 = *(a1 + 40);
  v37 = v30;
  v35[4] = v31;
  v36 = v32;
  v38 = &v43;
  [v29 removeAllPairingsWithCompletionHandler:v35];

  _Block_object_dispose(&v43, 8);
  v33 = *MEMORY[0x277D85DE8];
}

void __110__HMMTRAccessoryServerBrowser_removeAllDevicePairingsForSystemCommissionerDeviceWithNodeID_completionHandler___block_invoke_214(uint64_t a1, void *a2)
{
  v35 = *MEMORY[0x277D85DE8];
  v3 = a2;
  (*(*(a1 + 48) + 16))();
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  v7 = v6;
  if (v3)
  {
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    v8 = HMFGetLogIdentifier();
    *buf = 138543618;
    v32 = v8;
    v33 = 2112;
    v34 = v3;
    v9 = "%{public}@Failed remove all connected services for node (%@) with error";
    v10 = v7;
    v11 = OS_LOG_TYPE_ERROR;
  }

  else
  {
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      goto LABEL_7;
    }

    v8 = HMFGetLogIdentifier();
    v12 = *(a1 + 40);
    *buf = 138543618;
    v32 = v8;
    v33 = 2112;
    v34 = v12;
    v9 = "%{public}@Successfully removed all connected services for node (%@)";
    v10 = v7;
    v11 = OS_LOG_TYPE_INFO;
  }

  _os_log_impl(&dword_22AEAE000, v10, v11, v9, buf, 0x16u);

LABEL_7:
  v25 = v3;

  objc_autoreleasePoolPop(v4);
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v13 = *(*(*(a1 + 56) + 8) + 40);
  v14 = [v13 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v27;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v27 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v26 + 1) + 8 * i);
        v19 = objc_autoreleasePoolPush();
        v20 = *(a1 + 32);
        v21 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
        {
          v22 = HMFGetLogIdentifier();
          *buf = 138543618;
          v32 = v22;
          v33 = 2112;
          v34 = v18;
          _os_log_impl(&dword_22AEAE000, v21, OS_LOG_TYPE_INFO, "%{public}@Apple Home pairing is present. Removing accessory from Apple Home with node ID %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v19);
        v23 = [*(a1 + 32) accessoryServerBrowserDelegate];
        [v23 browser:*(a1 + 32) didRemoveAccessoryPairingWithNodeID:v18];
      }

      v15 = [v13 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v15);
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (void)_fetchDevicePairingsForSystemCommissionerDeviceWithNodeID:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __107__HMMTRAccessoryServerBrowser__fetchDevicePairingsForSystemCommissionerDeviceWithNodeID_completionHandler___block_invoke;
  v10[3] = &unk_2786EED08;
  v11 = v6;
  v12 = v7;
  v10[4] = self;
  v8 = v6;
  v9 = v7;
  [(HMMTRAccessoryServerBrowser *)self _accessoryServerForSystemCommissionerDeviceWithNodeID:v8 completionHandler:v10];
}

void __107__HMMTRAccessoryServerBrowser__fetchDevicePairingsForSystemCommissionerDeviceWithNodeID_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __107__HMMTRAccessoryServerBrowser__fetchDevicePairingsForSystemCommissionerDeviceWithNodeID_completionHandler___block_invoke_2;
    v23[3] = &unk_2786EECB8;
    v24 = *(a1 + 48);
    v7 = MEMORY[0x2318887D0](v23);
    v8 = objc_autoreleasePoolPush();
    v9 = *(a1 + 32);
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v12 = *(a1 + 40);
      *buf = 138543618;
      v26 = v11;
      v27 = 2112;
      v28 = v12;
      _os_log_impl(&dword_22AEAE000, v10, OS_LOG_TYPE_INFO, "%{public}@Now fetching connected services for %@ ...", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __107__HMMTRAccessoryServerBrowser__fetchDevicePairingsForSystemCommissionerDeviceWithNodeID_completionHandler___block_invoke_212;
    v18[3] = &unk_2786EECE0;
    v13 = v5;
    v14 = *(a1 + 32);
    v15 = *(a1 + 40);
    v19 = v13;
    v20 = v14;
    v22 = v7;
    v21 = v15;
    v16 = v7;
    [v13 fetchPairingsWithCompletionHandler:v18];
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }

  v17 = *MEMORY[0x277D85DE8];
}

void __107__HMMTRAccessoryServerBrowser__fetchDevicePairingsForSystemCommissionerDeviceWithNodeID_completionHandler___block_invoke_212(uint64_t a1, void *a2, void *a3, void *a4)
{
  v28 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  [*(a1 + 32) setBlockInvalidation:0];
  v10 = objc_autoreleasePoolPush();
  v11 = *(a1 + 40);
  v12 = HMFGetOSLogHandle();
  v13 = v12;
  if (v8)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v22 = 138543618;
      v23 = v14;
      v24 = 2112;
      v25 = v8;
      _os_log_impl(&dword_22AEAE000, v13, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch connected services for node (%@) with error", &v22, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    v15 = *(a1 + 56);
    v16 = *(a1 + 32);
    v17 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:2];
    (*(v15 + 16))(v15, 0, v16, v17);
  }

  else
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      v19 = *(a1 + 48);
      v22 = 138543874;
      v23 = v18;
      v24 = 2112;
      v25 = v19;
      v26 = 2112;
      v27 = v7;
      _os_log_impl(&dword_22AEAE000, v13, OS_LOG_TYPE_INFO, "%{public}@Successfully fetched connected services for node (%@) %@", &v22, 0x20u);
    }

    objc_autoreleasePoolPop(v10);
    v20 = *(a1 + 32);
    (*(*(a1 + 56) + 16))();
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)_accessoryServerForSystemCommissionerDeviceWithNodeID:(id)a3 completionHandler:(id)a4
{
  v52 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMMTRAccessoryServerBrowser *)self systemCommissionerFabricID];

  if (!v8)
  {
    v20 = objc_autoreleasePoolPush();
    v21 = self;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = HMFGetLogIdentifier();
      *buf = 138543362;
      v48 = v23;
      _os_log_impl(&dword_22AEAE000, v22, OS_LOG_TYPE_ERROR, "%{public}@System Commissioner Fabric is not set up yet", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v20);
    v24 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:2];
    v7[2](v7, 0, v24);
    goto LABEL_29;
  }

  v45[0] = MEMORY[0x277D85DD0];
  v45[1] = 3221225472;
  v45[2] = __103__HMMTRAccessoryServerBrowser__accessoryServerForSystemCommissionerDeviceWithNodeID_completionHandler___block_invoke;
  v45[3] = &unk_2786EEC90;
  v39 = v7;
  v46 = v7;
  v38 = MEMORY[0x2318887D0](v45);
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = [(HMMTRAccessoryServerBrowser *)self _allServers];
  v9 = [obj countByEnumeratingWithState:&v41 objects:v51 count:16];
  if (!v9)
  {
LABEL_15:

    goto LABEL_20;
  }

  v10 = v9;
  v11 = *v42;
LABEL_4:
  v12 = 0;
  while (1)
  {
    if (*v42 != v11)
    {
      objc_enumerationMutation(obj);
    }

    v13 = *(*(&v41 + 1) + 8 * v12);
    v14 = [v13 nodeID];
    if (![v14 isEqualToNumber:v6])
    {
      goto LABEL_12;
    }

    v15 = v6;
    v16 = [v13 fabricID];
    v17 = self;
    v18 = [(HMMTRAccessoryServerBrowser *)self systemCommissionerFabricID];
    if (([v16 isEqual:v18] & 1) == 0)
    {

      v6 = v15;
      self = v17;
LABEL_12:

      goto LABEL_13;
    }

    v19 = [v13 knownToSystemCommissioner];

    v6 = v15;
    self = v17;
    if (v19)
    {
      break;
    }

LABEL_13:
    if (v10 == ++v12)
    {
      v10 = [obj countByEnumeratingWithState:&v41 objects:v51 count:16];
      if (v10)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  v25 = v13;

  if (v25)
  {
    goto LABEL_22;
  }

LABEL_20:
  v26 = -[HMMTRAccessoryServerBrowser _createSystemCommissionerCHIPAccessoryForNodeID:](self, "_createSystemCommissionerCHIPAccessoryForNodeID:", [v6 unsignedLongLongValue]);
  if (v26)
  {
    v25 = v26;
LABEL_22:
    v27 = v38;
    v28 = objc_autoreleasePoolPush();
    v29 = self;
    v30 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
    {
      v31 = HMFGetLogIdentifier();
      *buf = 138543618;
      v48 = v31;
      v49 = 2112;
      v50 = v6;
      _os_log_impl(&dword_22AEAE000, v30, OS_LOG_TYPE_INFO, "%{public}@Found paired device (%@) in System Commissioner Storage", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v28);
    [v25 setBlockInvalidation:1];
    v32 = [(HMMTRAccessoryServerBrowser *)v29 systemCommissionerControllerWrapper];
    [v25 setControllerWrapper:v32];

    (*(v38 + 16))(v38, v25, 0);
  }

  else
  {
    v33 = objc_autoreleasePoolPush();
    v34 = self;
    v35 = HMFGetOSLogHandle();
    v27 = v38;
    if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
    {
      v36 = HMFGetLogIdentifier();
      *buf = 138543618;
      v48 = v36;
      v49 = 2112;
      v50 = v6;
      _os_log_impl(&dword_22AEAE000, v35, OS_LOG_TYPE_INFO, "%{public}@Failed to create server with node ID (%@)", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v33);
    v25 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:11];
    (*(v38 + 16))(v38, 0, v25);
  }

  v7 = v39;

  v24 = v46;
LABEL_29:

  v37 = *MEMORY[0x277D85DE8];
}

- (void)removeDevicePairingFabricForSystemCommissionerDeviceWithNodeID:(id)a3 fabric:(id)a4 completionHandler:(id)a5
{
  v34 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(HAPAccessoryServerBrowser *)self workQueue];
  dispatch_assert_queue_V2(v11);

  v12 = objc_autoreleasePoolPush();
  v13 = self;
  v14 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = HMFGetLogIdentifier();
    *buf = 138543874;
    v29 = v15;
    v30 = 2112;
    v31 = v9;
    v32 = 2112;
    v33 = v8;
    _os_log_impl(&dword_22AEAE000, v14, OS_LOG_TYPE_INFO, "%{public}@Received request to remove connected service with UUID %@ for node (%@)", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v12);
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __119__HMMTRAccessoryServerBrowser_removeDevicePairingFabricForSystemCommissionerDeviceWithNodeID_fabric_completionHandler___block_invoke;
  v26[3] = &unk_2786F0BC0;
  v27 = v10;
  v16 = v10;
  v17 = MEMORY[0x2318887D0](v26);
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __119__HMMTRAccessoryServerBrowser_removeDevicePairingFabricForSystemCommissionerDeviceWithNodeID_fabric_completionHandler___block_invoke_2;
  v22[3] = &unk_2786EEC68;
  v22[4] = v13;
  v23 = v9;
  v24 = v8;
  v25 = v17;
  v18 = v8;
  v19 = v17;
  v20 = v9;
  [(HMMTRAccessoryServerBrowser *)v13 _fetchDevicePairingsForSystemCommissionerDeviceWithNodeID:v18 completionHandler:v22];

  v21 = *MEMORY[0x277D85DE8];
}

void __119__HMMTRAccessoryServerBrowser_removeDevicePairingFabricForSystemCommissionerDeviceWithNodeID_fabric_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v79 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (!v9)
  {
    v60 = a1;
    v55 = v7;
    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    v16 = v7;
    v17 = [v16 countByEnumeratingWithState:&v68 objects:v72 count:16];
    v56 = v8;
    if (v17)
    {
      v18 = v17;
      v59 = 0;
      obj = v16;
      v58 = *v69;
LABEL_7:
      v19 = 0;
      while (1)
      {
        if (*v69 != v58)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v68 + 1) + 8 * v19);
        v21 = objc_alloc(MEMORY[0x277CD5590]);
        v22 = [v20 vendorID];
        v23 = [v20 vendorName];
        v24 = [v21 initWithIdentifier:v22 displayName:v23];

        v25 = objc_alloc(MEMORY[0x277CD5578]);
        v26 = [v20 rootPublicKey];
        v27 = [v25 initWithRootPublicKey:v26 vendor:v24];

        v28 = objc_alloc(MEMORY[0x277CD5580]);
        v29 = [v20 fabricID];
        v30 = [v20 fabricID];
        v31 = [v20 fabricLabel];
        v32 = [v28 initWithIdentifier:v29 index:v30 displayName:v31 ecosystem:v27];

        v33 = objc_alloc(MEMORY[0x277CD5570]);
        v34 = [v20 nodeID];
        v35 = [v33 initWithNodeID:v34 fabric:v32];

        v36 = [v35 uuid];
        v37 = [v36 isEqual:*(v60 + 40)];

        if (v37)
        {
          v38 = v20;

          v59 = v38;
        }

        if (v37)
        {
          break;
        }

        if (v18 == ++v19)
        {
          v18 = [obj countByEnumeratingWithState:&v68 objects:v72 count:16];
          if (v18)
          {
            goto LABEL_7;
          }

          break;
        }
      }

      if (v59)
      {
        v39 = objc_autoreleasePoolPush();
        v40 = *(v60 + 32);
        v41 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
        {
          v42 = HMFGetLogIdentifier();
          v43 = *(v60 + 40);
          *buf = 138543618;
          v74 = v42;
          v75 = 2112;
          v76 = v43;
          _os_log_impl(&dword_22AEAE000, v41, OS_LOG_TYPE_INFO, "%{public}@Now removing connected service (%@)", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v39);
        [v56 setBlockInvalidation:1];
        v61[0] = MEMORY[0x277D85DD0];
        v61[1] = 3221225472;
        v61[2] = __119__HMMTRAccessoryServerBrowser_removeDevicePairingFabricForSystemCommissionerDeviceWithNodeID_fabric_completionHandler___block_invoke_210;
        v61[3] = &unk_2786EEC40;
        v44 = v56;
        v45 = *(v60 + 32);
        v46 = *(v60 + 40);
        v62 = v44;
        v63 = v45;
        v64 = v46;
        v67 = *(v60 + 56);
        v65 = *(v60 + 48);
        v66 = v59;
        v47 = v59;
        [v44 removePairing:v47 completionHandler:v61];

LABEL_23:
        v7 = v55;
        v8 = v56;
        v9 = 0;
        goto LABEL_24;
      }
    }

    else
    {
    }

    v48 = objc_autoreleasePoolPush();
    v49 = *(v60 + 32);
    v50 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
    {
      v51 = HMFGetLogIdentifier();
      v52 = *(v60 + 40);
      *buf = 138543874;
      v74 = v51;
      v75 = 2112;
      v76 = v52;
      v77 = 2112;
      v78 = 0;
      _os_log_impl(&dword_22AEAE000, v50, OS_LOG_TYPE_INFO, "%{public}@Couldn't find connected service (%@) to remove for node (%@) with error", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v48);
    v53 = *(v60 + 56);
    v47 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:2];
    (*(v53 + 16))(v53, v47);
    goto LABEL_23;
  }

  v10 = objc_autoreleasePoolPush();
  v11 = a1;
  v12 = *(a1 + 32);
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    v14 = HMFGetLogIdentifier();
    v15 = *(v11 + 40);
    *buf = 138543874;
    v74 = v14;
    v75 = 2112;
    v76 = v15;
    v77 = 2112;
    v78 = v9;
    _os_log_impl(&dword_22AEAE000, v13, OS_LOG_TYPE_ERROR, "%{public}@Failed to remove connected service (%@) for node (%@) with error", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v10);
  (*(*(v11 + 56) + 16))();
LABEL_24:

  v54 = *MEMORY[0x277D85DE8];
}

void __119__HMMTRAccessoryServerBrowser_removeDevicePairingFabricForSystemCommissionerDeviceWithNodeID_fabric_completionHandler___block_invoke_210(uint64_t a1, void *a2)
{
  v35 = *MEMORY[0x277D85DE8];
  v3 = a2;
  [*(a1 + 32) setBlockInvalidation:0];
  [*(a1 + 32) disable];
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = [MEMORY[0x277CCA9B8] hmmtrErrorWithCode:12];
  [v4 invalidateAccessoryServer:v5 reason:v6];

  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 40);
  v9 = HMFGetOSLogHandle();
  v10 = v9;
  if (v3)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v12 = *(a1 + 48);
      v29 = 138543874;
      v30 = v11;
      v31 = 2112;
      v32 = v12;
      v33 = 2112;
      v34 = v3;
      _os_log_impl(&dword_22AEAE000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to remove connected service (%@) for node (%@) with error", &v29, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
    v13 = *(a1 + 72);
    v14 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:15];
    (*(v13 + 16))(v13, v14);
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier();
      v16 = *(a1 + 48);
      v17 = *(a1 + 56);
      v29 = 138543874;
      v30 = v15;
      v31 = 2112;
      v32 = v16;
      v33 = 2112;
      v34 = v17;
      _os_log_impl(&dword_22AEAE000, v10, OS_LOG_TYPE_INFO, "%{public}@Successfully removed connected services (%@) for node (%@)", &v29, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
    v18 = [*(a1 + 64) vendorID];
    v19 = [v18 integerValue];

    if (v19 == 4937)
    {
      v20 = objc_autoreleasePoolPush();
      v21 = *(a1 + 40);
      v22 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v23 = HMFGetLogIdentifier();
        v24 = [*(a1 + 64) nodeID];
        v29 = 138543618;
        v30 = v23;
        v31 = 2112;
        v32 = v24;
        _os_log_impl(&dword_22AEAE000, v22, OS_LOG_TYPE_INFO, "%{public}@Apple Home pairing has been removed. Removing accessory from Apple Home with node ID %@", &v29, 0x16u);
      }

      objc_autoreleasePoolPop(v20);
      v25 = [*(a1 + 40) accessoryServerBrowserDelegate];
      v26 = *(a1 + 40);
      v27 = [*(a1 + 64) nodeID];
      [v25 browser:v26 didRemoveAccessoryPairingWithNodeID:v27];
    }

    (*(*(a1 + 72) + 16))();
  }

  v28 = *MEMORY[0x277D85DE8];
}

- (void)fetchAllDevicePairingsForSystemCommissionerDeviceWithNodeID:(id)a3 completionHandler:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543618;
    v19 = v11;
    v20 = 2112;
    v21 = v6;
    _os_log_impl(&dword_22AEAE000, v10, OS_LOG_TYPE_INFO, "%{public}@Received request to fetch connected services for node (%@)", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __109__HMMTRAccessoryServerBrowser_fetchAllDevicePairingsForSystemCommissionerDeviceWithNodeID_completionHandler___block_invoke;
  v15[3] = &unk_2786EEC18;
  v16 = v6;
  v17 = v7;
  v15[4] = v9;
  v12 = v6;
  v13 = v7;
  [(HMMTRAccessoryServerBrowser *)v9 _fetchDevicePairingsForSystemCommissionerDeviceWithNodeID:v12 completionHandler:v15];

  v14 = *MEMORY[0x277D85DE8];
}

void __109__HMMTRAccessoryServerBrowser_fetchAllDevicePairingsForSystemCommissionerDeviceWithNodeID_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v63 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  [v8 disable];
  v10 = *(a1 + 32);
  v11 = [MEMORY[0x277CCA9B8] hmmtrErrorWithCode:12];
  [v10 invalidateAccessoryServer:v8 reason:v11];

  if (v9)
  {
    v12 = objc_autoreleasePoolPush();
    v13 = *(a1 + 32);
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543618;
      v57 = v15;
      v58 = 2112;
      v59 = v9;
      _os_log_impl(&dword_22AEAE000, v14, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch connected services for node (%@) with error", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
    v16 = *(a1 + 48);
    v17 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:2];
    v18 = *(v16 + 16);
    v19 = v16;
    v20 = v17;
    v18(v19, 0, v17);
  }

  else
  {
    v47 = a1;
    v48 = v8;
    v20 = [MEMORY[0x277CBEB18] array];
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v49 = v7;
    obj = v7;
    v21 = [obj countByEnumeratingWithState:&v52 objects:v62 count:16];
    if (v21)
    {
      v22 = v21;
      v51 = *v53;
      do
      {
        for (i = 0; i != v22; ++i)
        {
          v24 = v20;
          if (*v53 != v51)
          {
            objc_enumerationMutation(obj);
          }

          v25 = *(*(&v52 + 1) + 8 * i);
          v26 = objc_alloc(MEMORY[0x277CD5590]);
          v27 = [v25 vendorID];
          v28 = [v25 vendorName];
          v29 = [v26 initWithIdentifier:v27 displayName:v28];

          v30 = objc_alloc(MEMORY[0x277CD5578]);
          v31 = [v25 rootPublicKey];
          v32 = [v30 initWithRootPublicKey:v31 vendor:v29];

          v33 = objc_alloc(MEMORY[0x277CD5580]);
          v34 = [v25 fabricID];
          v35 = [v25 fabricID];
          v36 = [v25 fabricLabel];
          v37 = [v33 initWithIdentifier:v34 index:v35 displayName:v36 ecosystem:v32];

          v38 = objc_alloc(MEMORY[0x277CD5570]);
          v39 = [v25 nodeID];
          v40 = [v38 initWithNodeID:v39 fabric:v37];

          v20 = v24;
          [v24 addObject:v40];
        }

        v22 = [obj countByEnumeratingWithState:&v52 objects:v62 count:16];
      }

      while (v22);
    }

    v41 = objc_autoreleasePoolPush();
    v42 = *(v47 + 32);
    v43 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
    {
      v44 = HMFGetLogIdentifier();
      v45 = *(v47 + 40);
      *buf = 138543874;
      v57 = v44;
      v58 = 2112;
      v59 = v45;
      v60 = 2112;
      v61 = v20;
      _os_log_impl(&dword_22AEAE000, v43, OS_LOG_TYPE_INFO, "%{public}@Successfully fetched connected services for node (%@) as %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v41);
    (*(*(v47 + 48) + 16))();
    v8 = v48;
    v7 = v49;
    v9 = 0;
  }

  v46 = *MEMORY[0x277D85DE8];
}

- (void)removeSystemCommissionerFabricAccessoryWithNodeID:(id)a3 completionHandler:(id)a4
{
  v52 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543618;
    *&buf[4] = v11;
    *&buf[12] = 2112;
    *&buf[14] = v6;
    _os_log_impl(&dword_22AEAE000, v10, OS_LOG_TYPE_INFO, "%{public}@Received request to remove node (%@) from System Commissioner Fabric", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  v12 = [(HMMTRAccessoryServerBrowser *)v9 systemCommissionerFabricID];
  v13 = v12 == 0;

  if (v13)
  {
    v28 = objc_autoreleasePoolPush();
    v29 = v9;
    v30 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      v31 = HMFGetLogIdentifier();
      *buf = 138543362;
      *&buf[4] = v31;
      _os_log_impl(&dword_22AEAE000, v30, OS_LOG_TYPE_ERROR, "%{public}@System Commissioner Fabric is not set up yet", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v28);
    v32 = [(HMMTRAccessoryServerBrowser *)v29 storageForSystemCommissioner];
    [v32 removeRecordsForSystemCommissionerFabricNode:v6];
    v33 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:2];
    v7[2](v7, v33);
  }

  else
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v49 = __Block_byref_object_copy__9232;
    v50 = __Block_byref_object_dispose__9233;
    v51 = 0;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v14 = [(HMMTRAccessoryServerBrowser *)v9 _allServers];
    v15 = [v14 countByEnumeratingWithState:&v39 objects:v47 count:16];
    if (v15)
    {
      v16 = *v40;
      while (2)
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v40 != v16)
          {
            objc_enumerationMutation(v14);
          }

          v18 = *(*(&v39 + 1) + 8 * i);
          v19 = [v18 nodeID];
          v20 = [v19 isEqualToNumber:v6];

          if (v20)
          {
            objc_storeStrong((*&buf[8] + 40), v18);
            goto LABEL_14;
          }
        }

        v15 = [v14 countByEnumeratingWithState:&v39 objects:v47 count:16];
        if (v15)
        {
          continue;
        }

        break;
      }
    }

LABEL_14:

    if (*(*&buf[8] + 40) || (-[HMMTRAccessoryServerBrowser _createSystemCommissionerCHIPAccessoryForNodeID:](v9, "_createSystemCommissionerCHIPAccessoryForNodeID:", [v6 unsignedLongLongValue]), v21 = objc_claimAutoreleasedReturnValue(), v22 = *(*&buf[8] + 40), *(*&buf[8] + 40) = v21, v22, *(*&buf[8] + 40)))
    {
      v23 = objc_autoreleasePoolPush();
      v24 = v9;
      v25 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        v26 = HMFGetLogIdentifier();
        *v43 = 138543618;
        v44 = v26;
        v45 = 2112;
        v46 = v6;
        _os_log_impl(&dword_22AEAE000, v25, OS_LOG_TYPE_INFO, "%{public}@Found paired device (%@) in System Commissioner Storage", v43, 0x16u);
      }

      objc_autoreleasePoolPop(v23);
      [*(*&buf[8] + 40) setRemovalInProgress:1];
    }

    v27 = [MEMORY[0x277CCA9B8] hmmtrErrorWithCode:9];
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __99__HMMTRAccessoryServerBrowser_removeSystemCommissionerFabricAccessoryWithNodeID_completionHandler___block_invoke;
    v35[3] = &unk_2786EF788;
    v35[4] = v9;
    v36 = v6;
    v38 = buf;
    v37 = v7;
    [(HMMTRAccessoryServerBrowser *)v9 invalidateAllDiscoveredServersWithReason:v27 completion:v35];

    _Block_object_dispose(buf, 8);
  }

  v34 = *MEMORY[0x277D85DE8];
}

void __99__HMMTRAccessoryServerBrowser_removeSystemCommissionerFabricAccessoryWithNodeID_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) storageForSystemCommissioner];
  [v2 removeRecordsForSystemCommissionerFabricNode:*(a1 + 40)];
  [*(*(*(a1 + 56) + 8) + 40) setBlockInvalidation:1];
  v3 = [*(a1 + 32) workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __99__HMMTRAccessoryServerBrowser_removeSystemCommissionerFabricAccessoryWithNodeID_completionHandler___block_invoke_2;
  block[3] = &unk_2786EF878;
  v12 = *(a1 + 48);
  dispatch_async(v3, block);

  v4 = *(*(*(a1 + 56) + 8) + 40);
  v5 = [*(a1 + 32) workQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __99__HMMTRAccessoryServerBrowser_removeSystemCommissionerFabricAccessoryWithNodeID_completionHandler___block_invoke_3;
  v8[3] = &unk_2786F0D68;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v10 = *(a1 + 56);
  v8[4] = v6;
  v9 = v7;
  [v4 removePairingForCurrentControllerOnQueue:v5 completion:v8];
}

void __99__HMMTRAccessoryServerBrowser_removeSystemCommissionerFabricAccessoryWithNodeID_completionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  [*(*(*(a1 + 48) + 8) + 40) setBlockInvalidation:0];
  v4 = *(a1 + 32);
  v5 = *(*(*(a1 + 48) + 8) + 40);
  v6 = [MEMORY[0x277CCA9B8] hmmtrErrorWithCode:12];
  [v4 invalidateAccessoryServer:v5 reason:v6];

  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  v10 = v9;
  if (v3)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v15 = 138543618;
      v16 = v11;
      v17 = 2112;
      v18 = v3;
      _os_log_impl(&dword_22AEAE000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to remove node (%@) from System Commissioner Fabric with error", &v15, 0x16u);
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    v13 = *(a1 + 40);
    v15 = 138543618;
    v16 = v12;
    v17 = 2112;
    v18 = v13;
    _os_log_impl(&dword_22AEAE000, v10, OS_LOG_TYPE_INFO, "%{public}@Successfully removed node (%@) from System Commissioner Fabric", &v15, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  v14 = *MEMORY[0x277D85DE8];
}

- (void)discardStagedAccessoryServerWithIdentifier:(id)a3 completionHandler:(id)a4
{
  v36 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMMTRAccessoryServerBrowser *)self stagedAccessoryServerWithIdentifier:v6];
  if (v8)
  {
    v9 = MEMORY[0x2318887D0](v7);
    if (v9)
    {
      v10 = v9;
    }

    else
    {
      v10 = &__block_literal_global_9264;
    }

    v11 = objc_autoreleasePoolPush();
    v12 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v30 = 138543874;
      v31 = v14;
      v32 = 2114;
      v33 = @"hmmtrAccessoryServerMetricsStagedPairingCancelled";
      v34 = 2112;
      v35 = @"Pairing Cancelled";
      _os_log_impl(&dword_22AEAE000, v13, OS_LOG_TYPE_ERROR, "%{public}@tag=%{public}@ desc=%@", &v30, 0x20u);
    }

    objc_autoreleasePoolPop(v11);
    v15 = [MEMORY[0x277D17DE8] sharedInstance];
    v16 = objc_alloc(MEMORY[0x277D17DF8]);
    v17 = [v16 initWithTag:@"hmmtrAccessoryServerMetricsStagedPairingCancelled" data:MEMORY[0x277CBEC10]];
    v18 = [(__CFString *)v8 activity];
    v19 = [v18 tagProcessorList];
    [v15 submitTaggedEvent:v17 processorList:v19];

    v20 = objc_autoreleasePoolPush();
    v21 = v12;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = HMFGetLogIdentifier();
      v30 = 138543618;
      v31 = v23;
      v32 = 2112;
      v33 = v8;
      _os_log_impl(&dword_22AEAE000, v22, OS_LOG_TYPE_INFO, "%{public}@Attempting to discard staged server: %@", &v30, 0x16u);
    }

    objc_autoreleasePoolPop(v20);
    v24 = [(__CFString *)v8 nodeID];
    [(HMMTRAccessoryServerBrowser *)v21 removeSystemCommissionerFabricAccessoryWithNodeID:v24 completionHandler:v10];
    goto LABEL_14;
  }

  v25 = objc_autoreleasePoolPush();
  v26 = self;
  v27 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
  {
    v28 = HMFGetLogIdentifier();
    v30 = 138543618;
    v31 = v28;
    v32 = 2112;
    v33 = v6;
    _os_log_impl(&dword_22AEAE000, v27, OS_LOG_TYPE_INFO, "%{public}@Did not find staged accessory server to discard with identifier: %@", &v30, 0x16u);
  }

  objc_autoreleasePoolPop(v25);
  v10 = MEMORY[0x2318887D0](v7);
  if (v10)
  {
    v24 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:2];
    v10[2](v10, v24);
LABEL_14:
  }

  v29 = *MEMORY[0x277D85DE8];
}

- (id)stagedAccessoryServerWithIdentifier:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543618;
    *&buf[4] = v8;
    *&buf[12] = 2112;
    *&buf[14] = v4;
    _os_log_impl(&dword_22AEAE000, v7, OS_LOG_TYPE_INFO, "%{public}@Looking for staged server with identifier: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v18 = __Block_byref_object_copy__9232;
  v19 = __Block_byref_object_dispose__9233;
  v20 = 0;
  v9 = [(HAPAccessoryServerBrowser *)v6 workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__HMMTRAccessoryServerBrowser_stagedAccessoryServerWithIdentifier___block_invoke;
  block[3] = &unk_2786F0468;
  block[4] = v6;
  v15 = v4;
  v16 = buf;
  v10 = v4;
  dispatch_sync(v9, block);

  v11 = *(*&buf[8] + 40);
  _Block_object_dispose(buf, 8);

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

void __67__HMMTRAccessoryServerBrowser_stagedAccessoryServerWithIdentifier___block_invoke(uint64_t a1)
{
  v1 = a1;
  v50 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) isSystemCommissionerFeatureEnabled])
  {
    v38 = 0uLL;
    v39 = 0uLL;
    v36 = 0uLL;
    v37 = 0uLL;
    obj = [*(v1 + 32) discoveredAccessoryServers];
    v2 = [obj countByEnumeratingWithState:&v36 objects:v49 count:16];
    if (v2)
    {
      v4 = v2;
      v5 = *v37;
      *&v3 = 138544130;
      v28 = v3;
      do
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v37 != v5)
          {
            objc_enumerationMutation(obj);
          }

          v7 = *(*(&v36 + 1) + 8 * i);
          if (([v7 removalInProgress] & 1) == 0)
          {
            v8 = objc_autoreleasePoolPush();
            v9 = *(v1 + 32);
            v10 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
            {
              v11 = HMFGetLogIdentifier();
              v12 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v7, "pairedState")}];
              [v7 knownToSystemCommissioner];
              v13 = HMFBooleanToString();
              *buf = v28;
              v42 = v11;
              v43 = 2112;
              v44 = v7;
              v45 = 2112;
              v46 = v12;
              v47 = 2112;
              v48 = v13;
              _os_log_impl(&dword_22AEAE000, v10, OS_LOG_TYPE_INFO, "%{public}@Found staged server: %@, state = %@, knownToSystemCommissioner %@", buf, 0x2Au);

              v1 = a1;
            }

            objc_autoreleasePoolPop(v8);
            if ([v7 pairedState] == 3)
            {
              v14 = [v7 identifier];
              if ([v14 isEqualToString:*(v1 + 40)])
              {
                v15 = [v7 knownToSystemCommissioner];

                if (v15)
                {
                  goto LABEL_31;
                }
              }

              else
              {
              }
            }
          }
        }

        v4 = [obj countByEnumeratingWithState:&v36 objects:v49 count:16];
      }

      while (v4);
    }
  }

  else
  {
    v34 = 0uLL;
    v35 = 0uLL;
    v32 = 0uLL;
    v33 = 0uLL;
    obj = [*(v1 + 32) stagedAccessoryServers];
    v16 = [obj countByEnumeratingWithState:&v32 objects:v40 count:16];
    if (v16)
    {
      v18 = v16;
      v19 = *v33;
      *&v17 = 138543618;
      v29 = v17;
      while (2)
      {
        for (j = 0; j != v18; ++j)
        {
          if (*v33 != v19)
          {
            objc_enumerationMutation(obj);
          }

          v7 = *(*(&v32 + 1) + 8 * j);
          if (([v7 removalInProgress] & 1) == 0)
          {
            v21 = objc_autoreleasePoolPush();
            v22 = *(v1 + 32);
            v23 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
            {
              v24 = HMFGetLogIdentifier();
              *buf = v29;
              v42 = v24;
              v43 = 2112;
              v44 = v7;
              _os_log_impl(&dword_22AEAE000, v23, OS_LOG_TYPE_INFO, "%{public}@Found staged server: %@", buf, 0x16u);

              v1 = a1;
            }

            objc_autoreleasePoolPop(v21);
            if ([v7 pairedState] == 2)
            {
              v25 = [v7 identifier];
              v26 = [v25 isEqualToString:*(v1 + 40)];

              if (v26)
              {
LABEL_31:
                objc_storeStrong((*(*(v1 + 48) + 8) + 40), v7);
                goto LABEL_32;
              }
            }
          }
        }

        v18 = [obj countByEnumeratingWithState:&v32 objects:v40 count:16];
        if (v18)
        {
          continue;
        }

        break;
      }
    }
  }

LABEL_32:

  v27 = *MEMORY[0x277D85DE8];
}

- (void)_stageAccessoryServerWithSetupPayload:(id)a3 deviceCredentialHandler:(id)a4 wifiScanResultsHandler:(id)a5 threadScanResultsHandler:(id)a6 readyToCancelHandler:(id)a7 progressUpdateHandler:(id)a8 commissioneeInfoHandler:(id)a9 scanningNetworks:(BOOL)a10 hasPriorSuccessfulPairing:(BOOL)a11 category:(id)a12 completionHandler:(id)a13
{
  v65 = *MEMORY[0x277D85DE8];
  v47 = a3;
  v19 = a4;
  v20 = a5;
  v50 = a6;
  v49 = a7;
  v48 = a8;
  v21 = a9;
  v22 = a12;
  v23 = a13;
  LODWORD(a6) = [(HMMTRAccessoryServerBrowser *)self isSystemCommissionerFeatureEnabled];
  v24 = objc_autoreleasePoolPush();
  v25 = self;
  v26 = HMFGetOSLogHandle();
  v27 = v26;
  if (a6)
  {
    v45 = v21;
    v46 = v20;
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      v28 = HMFGetLogIdentifier();
      *buf = 138543362;
      v64 = v28;
      _os_log_impl(&dword_22AEAE000, v27, OS_LOG_TYPE_INFO, "%{public}@Received request for staging", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v24);
    v29 = [(HMMTRAccessoryServerBrowser *)v25 systemCommissionerControllerParams];
    v61 = 0;
    v62 = 0;
    v30 = [v29 fetchControllerParamsAllowingNew:1 nocSigner:&v62 controllerWrapper:&v61];
    v31 = v62;
    v32 = v61;

    v33 = [v32 startupParams];
    v34 = [v33 fabricID];

    if (v30 && v34)
    {

      [(HMMTRAccessoryServerBrowser *)v25 setCurrentFabricUUID:0];
      v51[0] = MEMORY[0x277D85DD0];
      v51[1] = 3221225472;
      v51[2] = __278__HMMTRAccessoryServerBrowser__stageAccessoryServerWithSetupPayload_deviceCredentialHandler_wifiScanResultsHandler_threadScanResultsHandler_readyToCancelHandler_progressUpdateHandler_commissioneeInfoHandler_scanningNetworks_hasPriorSuccessfulPairing_category_completionHandler___block_invoke;
      v51[3] = &unk_2786EEBD0;
      v51[4] = v25;
      v52 = v34;
      v53 = v23;
      v54 = v19;
      v20 = v46;
      v55 = v46;
      v56 = v50;
      v57 = v49;
      v58 = v48;
      v59 = v21;
      v60 = a10;
      v34 = v34;
      v35 = v25;
      v36 = v47;
      [(HMMTRAccessoryServerBrowser *)v35 _prepareForPairingWithSetupPayload:v47 targetFabricUUID:0 fabricID:v34 controllerWrapper:v32 hasPriorSuccessfulPairing:a11 category:v22 completionHandler:v51];
    }

    else
    {
      v38 = objc_autoreleasePoolPush();
      v39 = v25;
      v40 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        HMFGetLogIdentifier();
        v42 = v41 = v19;
        *buf = 138543362;
        v64 = v42;
        _os_log_impl(&dword_22AEAE000, v40, OS_LOG_TYPE_ERROR, "%{public}@System commissioner controller is not ready to start. Aborting staging.", buf, 0xCu);

        v19 = v41;
      }

      objc_autoreleasePoolPop(v38);
      v43 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CD5120] code:6 userInfo:0];
      (*(v23 + 2))(v23, 0, 0, v43);

      v20 = v46;
      v36 = v47;
      v21 = v45;
    }
  }

  else
  {
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v37 = HMFGetLogIdentifier();
      *buf = 138543362;
      v64 = v37;
      _os_log_impl(&dword_22AEAE000, v27, OS_LOG_TYPE_ERROR, "%{public}@Staging is no longer supported when system commissioner feature is disabled", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v24);
    v34 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CD5120] code:6 userInfo:0];
    (*(v23 + 2))(v23, 0, 0, v34);
    v36 = v47;
  }

  v44 = *MEMORY[0x277D85DE8];
}

void __278__HMMTRAccessoryServerBrowser__stageAccessoryServerWithSetupPayload_deviceCredentialHandler_wifiScanResultsHandler_threadScanResultsHandler_readyToCancelHandler_progressUpdateHandler_commissioneeInfoHandler_scanningNetworks_hasPriorSuccessfulPairing_category_completionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = [*(a1 + 32) workQueue];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __278__HMMTRAccessoryServerBrowser__stageAccessoryServerWithSetupPayload_deviceCredentialHandler_wifiScanResultsHandler_threadScanResultsHandler_readyToCancelHandler_progressUpdateHandler_commissioneeInfoHandler_scanningNetworks_hasPriorSuccessfulPairing_category_completionHandler___block_invoke_2;
  v18[3] = &unk_2786EEBA8;
  v9 = *(a1 + 40);
  v18[4] = *(a1 + 32);
  v19 = v6;
  v20 = v9;
  v10 = *(a1 + 48);
  v21 = v7;
  v11 = *(a1 + 56);
  v12 = *(a1 + 64);
  v13 = *(a1 + 72);
  *&v14 = v12;
  *(&v14 + 1) = v13;
  *&v15 = v10;
  *(&v15 + 1) = v11;
  v22 = v15;
  v23 = v14;
  v24 = *(a1 + 80);
  v25 = *(a1 + 88);
  v26 = *(a1 + 96);
  v27 = *(a1 + 104);
  v16 = v7;
  v17 = v6;
  dispatch_async(v8, v18);
}

void __278__HMMTRAccessoryServerBrowser__stageAccessoryServerWithSetupPayload_deviceCredentialHandler_wifiScanResultsHandler_threadScanResultsHandler_readyToCancelHandler_progressUpdateHandler_commissioneeInfoHandler_scanningNetworks_hasPriorSuccessfulPairing_category_completionHandler___block_invoke_2(uint64_t a1)
{
  v40 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    *buf = 138543874;
    v35 = v5;
    v36 = 2112;
    v37 = v6;
    v38 = 2112;
    v39 = v7;
    _os_log_impl(&dword_22AEAE000, v4, OS_LOG_TYPE_INFO, "%{public}@Staging server: %@ with fabric ID %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v2);
  if (*(a1 + 40))
  {
    v8 = [*(a1 + 32) systemCommissionerControllerWrapper];
    v9 = [v8 controller];
    v10 = [v9 isRunning];

    if (v10)
    {
      v11 = [*(a1 + 40) nodeID];
      v12 = [*(a1 + 32) systemCommissionerControllerParams];
      [v12 setCommissioneeNodeID:v11];

      v13 = *(a1 + 72);
      v14 = *(a1 + 80);
      v15 = *(a1 + 88);
      v16 = *(a1 + 96);
      v17 = *(a1 + 104);
      v18 = *(a1 + 112);
      v19 = *(a1 + 120);
      v32[0] = MEMORY[0x277D85DD0];
      v32[1] = 3221225472;
      v32[2] = __278__HMMTRAccessoryServerBrowser__stageAccessoryServerWithSetupPayload_deviceCredentialHandler_wifiScanResultsHandler_threadScanResultsHandler_readyToCancelHandler_progressUpdateHandler_commissioneeInfoHandler_scanningNetworks_hasPriorSuccessfulPairing_category_completionHandler___block_invoke_197;
      v32[3] = &unk_2786EEB80;
      v20 = *(a1 + 40);
      v32[4] = *(a1 + 32);
      v33 = *(a1 + 64);
      LOBYTE(v31) = v19;
      [v20 startStagedPairingWithDeviceCredentialHandler:v13 wifiScanResultsHandler:v14 threadScanResultsHandler:v15 readyToCancelHandler:v16 progressUpdateHandler:v17 commissioneeInfoHandler:v18 scanningNetworks:v31 completion:v32];
      v21 = [*(a1 + 32) stagedAccessoryServers];
      [v21 addObject:*(a1 + 40)];
    }

    else
    {
      v23 = objc_autoreleasePoolPush();
      v24 = *(a1 + 32);
      v25 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        v26 = HMFGetLogIdentifier();
        *buf = 138543362;
        v35 = v26;
        _os_log_impl(&dword_22AEAE000, v25, OS_LOG_TYPE_INFO, "%{public}@CHIP Stack is not running. Aborting pairing.", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v23);
      v27 = *(a1 + 64);
      v28 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CD5120] code:6 userInfo:0];
      (*(v27 + 16))(v27, 0, 0, v28);
    }
  }

  else
  {
    v22 = *(a1 + 64);
    if (*(a1 + 56))
    {
      (*(v22 + 16))(*(a1 + 64), 0, 0);
    }

    else
    {
      v29 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CD5120] code:6 userInfo:0];
      (*(v22 + 16))(v22, 0, 0, v29);
    }
  }

  v30 = *MEMORY[0x277D85DE8];
}

void __278__HMMTRAccessoryServerBrowser__stageAccessoryServerWithSetupPayload_deviceCredentialHandler_wifiScanResultsHandler_threadScanResultsHandler_readyToCancelHandler_progressUpdateHandler_commissioneeInfoHandler_scanningNetworks_hasPriorSuccessfulPairing_category_completionHandler___block_invoke_197(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = *(a1 + 32);
  v7 = a4;
  v9 = a3;
  v8 = [v6 systemCommissionerControllerParams];
  [v8 setCommissioneeNodeID:0];

  (*(*(a1 + 40) + 16))();
}

- (void)stageAccessoryServerWithSetupPayload:(id)a3 fabricID:(id)a4 deviceCredentialHandler:(id)a5 wifiScanResultsHandler:(id)a6 threadScanResultsHandler:(id)a7 readyToCancelHandler:(id)a8 progressUpdateHandler:(id)a9 commissioneeInfoHandler:(id)a10 scanningNetworks:(BOOL)a11 completionHandler:(id)a12
{
  v33 = a3;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  v22 = a10;
  v23 = a12;
  v24 = [(HAPAccessoryServerBrowser *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __251__HMMTRAccessoryServerBrowser_stageAccessoryServerWithSetupPayload_fabricID_deviceCredentialHandler_wifiScanResultsHandler_threadScanResultsHandler_readyToCancelHandler_progressUpdateHandler_commissioneeInfoHandler_scanningNetworks_completionHandler___block_invoke;
  block[3] = &unk_2786EEB58;
  block[4] = self;
  v35 = v33;
  v36 = v17;
  v37 = v18;
  v38 = v19;
  v39 = v20;
  v40 = v21;
  v41 = v22;
  v43 = a11;
  v42 = v23;
  v25 = v23;
  v26 = v22;
  v27 = v21;
  v28 = v20;
  v29 = v19;
  v30 = v18;
  v31 = v17;
  v32 = v33;
  dispatch_async(v24, block);
}

- (void)stageAccessoryServerWithSetupPayload:(id)a3 hasPriorSuccessfulPairing:(BOOL)a4 category:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = [(HAPAccessoryServerBrowser *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __121__HMMTRAccessoryServerBrowser_stageAccessoryServerWithSetupPayload_hasPriorSuccessfulPairing_category_completionHandler___block_invoke;
  block[3] = &unk_2786EF8F0;
  block[4] = self;
  v18 = v10;
  v21 = a4;
  v19 = v11;
  v20 = v12;
  v14 = v12;
  v15 = v11;
  v16 = v10;
  dispatch_async(v13, block);
}

uint64_t __121__HMMTRAccessoryServerBrowser_stageAccessoryServerWithSetupPayload_hasPriorSuccessfulPairing_category_completionHandler___block_invoke(uint64_t a1)
{
  BYTE1(v2) = *(a1 + 64);
  LOBYTE(v2) = 0;
  return [*(a1 + 32) _stageAccessoryServerWithSetupPayload:*(a1 + 40) deviceCredentialHandler:0 wifiScanResultsHandler:0 threadScanResultsHandler:0 readyToCancelHandler:0 progressUpdateHandler:0 commissioneeInfoHandler:0 scanningNetworks:v2 hasPriorSuccessfulPairing:*(a1 + 48) category:*(a1 + 56) completionHandler:?];
}

- (void)matchAccessoryServerWithSetupID:(id)a3 serverIdentifier:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  objc_initWeak(&location, self);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __98__HMMTRAccessoryServerBrowser_matchAccessoryServerWithSetupID_serverIdentifier_completionHandler___block_invoke;
  v14[3] = &unk_2786EED58;
  objc_copyWeak(&v18, &location);
  v11 = v10;
  v17 = v11;
  v12 = v8;
  v15 = v12;
  v13 = v9;
  v16 = v13;
  [(HMMTRAccessoryServerBrowser *)self dispatchBlock:v14];

  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
}

void __98__HMMTRAccessoryServerBrowser_matchAccessoryServerWithSetupID_serverIdentifier_completionHandler___block_invoke(uint64_t a1)
{
  v53 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = WeakRetained;
  if (*(a1 + 48))
  {
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v4 = [WeakRetained _allServers];
    v5 = [v4 countByEnumeratingWithState:&v38 objects:v52 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = 0;
      v8 = *v39;
      v31 = v3;
      v35 = *v39;
      v37 = v4;
      while (2)
      {
        v9 = 0;
        v32 = v6;
        do
        {
          if (*v39 != v8)
          {
            objc_enumerationMutation(v4);
          }

          v10 = *(*(&v38 + 1) + 8 * v9);
          if ([v10 matchesSetupID:*(a1 + 32) serverIdentifier:*(a1 + 40)] && (objc_msgSend(v10, "removalInProgress") & 1) == 0)
          {
            v11 = [v10 identifier];
            v12 = [v3 isPaired:v11];

            v13 = [v10 hasPairings];
            if (((v12 | (v13 | v7)) & 1) == 0)
            {
              v12 = 0;
              v14 = 0;
LABEL_19:
              v23 = objc_autoreleasePoolPush();
              v24 = v3;
              v25 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
              {
                v34 = HMFGetLogIdentifier();
                v36 = v23;
                v26 = *(a1 + 32);
                [MEMORY[0x277CCABB0] numberWithBool:v12];
                v28 = v27 = v3;
                v29 = [MEMORY[0x277CCABB0] numberWithBool:v14 & 1];
                *buf = 138544386;
                v43 = v34;
                v44 = 2112;
                v45 = v10;
                v46 = 2112;
                v47 = v26;
                v23 = v36;
                v48 = 2112;
                v49 = v28;
                v50 = 2112;
                v51 = v29;
                _os_log_impl(&dword_22AEAE000, v25, OS_LOG_TYPE_INFO, "%{public}@CHIP Accessory server %@ matches setupID %@ and is paired/hasPairings: (%@/%@)", buf, 0x34u);

                v3 = v27;
              }

              objc_autoreleasePoolPop(v23);
              v22 = v10;
              v4 = v37;
              goto LABEL_22;
            }

            v14 = v13;
            if (*(a1 + 40))
            {
              goto LABEL_19;
            }

            v15 = objc_autoreleasePoolPush();
            v16 = v3;
            v17 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
            {
              v18 = HMFGetLogIdentifier();
              v33 = v15;
              v19 = *(a1 + 32);
              v20 = [MEMORY[0x277CCABB0] numberWithBool:v12];
              v21 = [MEMORY[0x277CCABB0] numberWithBool:v14 & 1];
              *buf = 138544386;
              v43 = v18;
              v44 = 2112;
              v45 = v10;
              v46 = 2112;
              v47 = v19;
              v6 = v32;
              v15 = v33;
              v48 = 2112;
              v49 = v20;
              v50 = 2112;
              v51 = v21;
              _os_log_impl(&dword_22AEAE000, v17, OS_LOG_TYPE_INFO, "%{public}@Paired CHIP Accessory server %@ matches setupID %@ (isPaired/hasPairings: %@/%@) but will be ignored when searched without identifier", buf, 0x34u);

              v3 = v31;
            }

            objc_autoreleasePoolPop(v15);
            v7 = 1;
            v8 = v35;
            v4 = v37;
          }

          ++v9;
        }

        while (v6 != v9);
        v6 = [v4 countByEnumeratingWithState:&v38 objects:v52 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }

      v22 = 0;
    }

    else
    {
      v22 = 0;
    }

LABEL_22:

    (*(*(a1 + 48) + 16))();
  }

  v30 = *MEMORY[0x277D85DE8];
}

- (void)indicateNotificationFromServer:(id)a3 notifyType:(unint64_t)a4 withDictionary:(id)a5
{
  v19 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a5;
  v9 = objc_autoreleasePoolPush();
  v10 = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    v13 = [v7 nodeID];
    v15 = 138543618;
    v16 = v12;
    v17 = 2112;
    v18 = v13;
    _os_log_impl(&dword_22AEAE000, v11, OS_LOG_TYPE_INFO, "%{public}@Received notification from accessory server with nodeID %@", &v15, 0x16u);
  }

  objc_autoreleasePoolPop(v9);
  v14 = *MEMORY[0x277D85DE8];
}

- (void)discoverAccessoryServerWithNodeID:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v8 = [(HAPAccessoryServerBrowser *)self workQueue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __76__HMMTRAccessoryServerBrowser_discoverAccessoryServerWithNodeID_completion___block_invoke;
  v11[3] = &unk_2786EF558;
  objc_copyWeak(&v14, &location);
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, v11);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __76__HMMTRAccessoryServerBrowser_discoverAccessoryServerWithNodeID_completion___block_invoke(id *a1)
{
  v52 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v3 = objc_autoreleasePoolPush();
  v4 = WeakRetained;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v7 = a1[4];
    *buf = 138543618;
    v46 = v6;
    v47 = 2112;
    v48 = v7;
    _os_log_impl(&dword_22AEAE000, v5, OS_LOG_TYPE_INFO, "%{public}@discoverAccessoryServerWithNodeId %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v3);
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v8 = [v4 discoveredAccessoryServers];
  v9 = [v8 countByEnumeratingWithState:&v41 objects:v51 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v42;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v42 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v41 + 1) + 8 * i);
        v14 = a1[4];
        v15 = [v13 nodeID];
        if ([v14 isEqual:v15] && (objc_msgSend(v13, "isDisabled") & 1) == 0)
        {
          v16 = [v13 serviceEnumerationFailed];

          if ((v16 & 1) == 0)
          {
            v39[0] = MEMORY[0x277D85DD0];
            v39[1] = 3221225472;
            v39[2] = __76__HMMTRAccessoryServerBrowser_discoverAccessoryServerWithNodeID_completion___block_invoke_195;
            v39[3] = &unk_2786EFA88;
            v39[4] = v4;
            v39[5] = v13;
            v40 = a1[5];
            [v13 isDiscoverableWithCompletion:v39];

            goto LABEL_26;
          }
        }

        else
        {
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v41 objects:v51 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v17 = a1[4];
  v38 = 0;
  v18 = [v4 _isNodeIDPaired:v17 targetFabricUUID:&v38];
  v8 = v38;
  if (v18 && isFeatureMatteriPhoneOnlyPairingControlEnabled())
  {
    v19 = objc_autoreleasePoolPush();
    v20 = v4;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = HMFGetLogIdentifier();
      v23 = [HMMTRUtilities identifierStringWithCHIPNodeID:a1[4]];
      v24 = a1[4];
      *buf = 138543874;
      v46 = v22;
      v47 = 2112;
      v48 = v23;
      v49 = 2112;
      v50 = v24;
      _os_log_impl(&dword_22AEAE000, v21, OS_LOG_TYPE_INFO, "%{public}@Paired device %@ with node ID %@ fakes discovery for local fallback", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v19);
    v25 = [v20 appleHomeFabricWithTargetFabricUUID:v8];
    [v20 _setUpUpdatedBrowserTargetFabricUUID:v8 rediscoverAccessories:0 overrideAccessoryControlAllowed:{objc_msgSend(v20, "isCurrentDeviceAllowedAccessoryControlPerExplicitRequestDespiteReachableResidentForFabric:", v25)}];
    v26 = [a1[4] unsignedLongLongValue];
    v37 = 0;
    v27 = [v20 _createCHIPAccessoryForNodeID:v26 ifPaired:1 fabricUUID:v8 fatalError:&v37];
    v28 = v37;
    if (v27)
    {
      v29 = [v20 discoveredAccessoryServers];
      [v29 addObject:v27];

      v30 = *(a1[5] + 2);
    }

    else
    {
      v31 = objc_autoreleasePoolPush();
      v32 = v20;
      v33 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        HMFGetLogIdentifier();
        v34 = v36 = v31;
        *buf = 138543618;
        v46 = v34;
        v47 = 2112;
        v48 = v28;
        _os_log_impl(&dword_22AEAE000, v33, OS_LOG_TYPE_ERROR, "%{public}@Could not create server for local try: %@", buf, 0x16u);

        v31 = v36;
      }

      objc_autoreleasePoolPop(v31);
      v30 = *(a1[5] + 2);
    }

    v30();
  }

  else
  {
    (*(a1[5] + 2))();
  }

LABEL_26:

  v35 = *MEMORY[0x277D85DE8];
}

void __76__HMMTRAccessoryServerBrowser_discoverAccessoryServerWithNodeID_completion___block_invoke_195(uint64_t a1, char a2)
{
  v4 = [*(a1 + 32) workQueue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __76__HMMTRAccessoryServerBrowser_discoverAccessoryServerWithNodeID_completion___block_invoke_2;
  v5[3] = &unk_2786EEB30;
  v8 = a2;
  v6 = *(a1 + 32);
  v7 = *(a1 + 48);
  dispatch_async(v4, v5);
}

uint64_t __76__HMMTRAccessoryServerBrowser_discoverAccessoryServerWithNodeID_completion___block_invoke_2(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 56);
  v3 = objc_autoreleasePoolPush();
  v4 = *(a1 + 32);
  v5 = HMFGetOSLogHandle();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_INFO);
  if (v2 == 1)
  {
    if (v6)
    {
      v7 = HMFGetLogIdentifier();
      v8 = *(a1 + 40);
      v15 = 138543618;
      v16 = v7;
      v17 = 2112;
      v18 = v8;
      _os_log_impl(&dword_22AEAE000, v5, OS_LOG_TYPE_INFO, "%{public}@Found server %@", &v15, 0x16u);
    }

    objc_autoreleasePoolPop(v3);
    v9 = *(a1 + 40);
    v10 = *(*(a1 + 48) + 16);
  }

  else
  {
    if (v6)
    {
      v11 = HMFGetLogIdentifier();
      v12 = *(a1 + 40);
      v15 = 138543618;
      v16 = v11;
      v17 = 2112;
      v18 = v12;
      _os_log_impl(&dword_22AEAE000, v5, OS_LOG_TYPE_INFO, "%{public}@Failed to discover server: %@", &v15, 0x16u);
    }

    objc_autoreleasePoolPop(v3);
    v10 = *(*(a1 + 48) + 16);
  }

  result = v10();
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)discoverAccessoryServerWithIdentifier:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __69__HMMTRAccessoryServerBrowser_discoverAccessoryServerWithIdentifier___block_invoke;
  v6[3] = &unk_2786EEB08;
  objc_copyWeak(&v8, &location);
  v5 = v4;
  v7 = v5;
  [(HMMTRAccessoryServerBrowser *)self dispatchAfterConfiguration:v6];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __69__HMMTRAccessoryServerBrowser_discoverAccessoryServerWithIdentifier___block_invoke(uint64_t a1)
{
  v63 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = objc_autoreleasePoolPush();
  v4 = WeakRetained;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v7 = *(a1 + 32);
    *buf = 138543618;
    v57 = v6;
    v58 = 2112;
    v59 = v7;
    _os_log_impl(&dword_22AEAE000, v5, OS_LOG_TYPE_INFO, "%{public}@discoverAccessoryServerWithIdentifier %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v3);
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v8 = [v4 discoveredAccessoryServers];
  v9 = [v8 countByEnumeratingWithState:&v52 objects:v62 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v53;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v53 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v52 + 1) + 8 * i);
        v14 = *(a1 + 32);
        v15 = [v13 identifier];
        if ([v14 isEqual:v15] && (objc_msgSend(v13, "isDisabled") & 1) == 0)
        {
          v16 = [v13 serviceEnumerationFailed];

          if ((v16 & 1) == 0)
          {
            v50[0] = MEMORY[0x277D85DD0];
            v50[1] = 3221225472;
            v50[2] = __69__HMMTRAccessoryServerBrowser_discoverAccessoryServerWithIdentifier___block_invoke_187;
            v50[3] = &unk_2786EEAE0;
            v50[4] = v4;
            v50[5] = v13;
            v51 = *(a1 + 32);
            [v13 isDiscoverableWithCompletion:v50];

            goto LABEL_37;
          }
        }

        else
        {
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v52 objects:v62 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v17 = *(a1 + 32);
  v48 = 0;
  v49 = 0;
  v18 = [v4 _isDeviceIDPaired:v17 nodeID:&v49 targetFabricUUID:&v48];
  v8 = v49;
  v19 = v48;
  if (!v18 || !isFeatureMatteriPhoneOnlyPairingControlEnabled())
  {
    if ([v4 _delegateRespondsToSelector:sel_accessoryServerBrowser_didFailToDiscoverAccessoryServerWithIdentifier_])
    {
      v32 = [v4 delegateQueue];
      v41[0] = MEMORY[0x277D85DD0];
      v41[1] = 3221225472;
      v41[2] = __69__HMMTRAccessoryServerBrowser_discoverAccessoryServerWithIdentifier___block_invoke_194;
      v41[3] = &unk_2786EF328;
      v41[4] = v4;
      v42 = *(a1 + 32);
      dispatch_async(v32, v41);
    }

    goto LABEL_36;
  }

  v20 = objc_autoreleasePoolPush();
  v21 = v4;
  v22 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
  {
    v23 = HMFGetLogIdentifier();
    v24 = *(a1 + 32);
    *buf = 138543874;
    v57 = v23;
    v58 = 2112;
    v59 = v24;
    v60 = 2112;
    v61 = v8;
    _os_log_impl(&dword_22AEAE000, v22, OS_LOG_TYPE_INFO, "%{public}@Paired device %@ with node ID %@ fakes discovery for local fallback", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v20);
  v25 = [v21 appleHomeFabricWithTargetFabricUUID:v19];
  [v21 _setUpUpdatedBrowserTargetFabricUUID:v19 rediscoverAccessories:0 overrideAccessoryControlAllowed:{objc_msgSend(v21, "isCurrentDeviceAllowedAccessoryControlPerExplicitRequestDespiteReachableResidentForFabric:", v25)}];
  v26 = [v21 controllerWrapperForFabricUUID:v19];

  if (!v26)
  {
    v33 = objc_autoreleasePoolPush();
    v34 = v21;
    v35 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
    {
      v36 = HMFGetLogIdentifier();
      *buf = 138543618;
      v57 = v36;
      v58 = 2112;
      v59 = v8;
      _os_log_impl(&dword_22AEAE000, v35, OS_LOG_TYPE_INFO, "%{public}@Device controller is not set up yet to fake discover node ID %@", buf, 0x16u);
    }

    v28 = 0;
    goto LABEL_31;
  }

  v47 = 0;
  v27 = [v21 _createCHIPAccessoryForNodeID:objc_msgSend(v8 ifPaired:"unsignedLongLongValue") fabricUUID:1 fatalError:{v19, &v47}];
  v28 = v47;
  if (!v27)
  {
    v40 = objc_autoreleasePoolPush();
    v37 = v21;
    v35 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      v38 = HMFGetLogIdentifier();
      *buf = 138543618;
      v57 = v38;
      v58 = 2112;
      v59 = v28;
      _os_log_impl(&dword_22AEAE000, v35, OS_LOG_TYPE_ERROR, "%{public}@Could not create server for local try: %@", buf, 0x16u);
    }

    v33 = v40;
LABEL_31:

    objc_autoreleasePoolPop(v33);
    if (![v21 _delegateRespondsToSelector:sel_accessoryServerBrowser_didFailToDiscoverAccessoryServerWithIdentifier_])
    {
      v27 = 0;
      goto LABEL_35;
    }

    v30 = [v21 delegateQueue];
    v45[0] = MEMORY[0x277D85DD0];
    v45[1] = 3221225472;
    v45[2] = __69__HMMTRAccessoryServerBrowser_discoverAccessoryServerWithIdentifier___block_invoke_192;
    v45[3] = &unk_2786EF328;
    v45[4] = v21;
    v31 = &v46;
    v46 = *(a1 + 32);
    dispatch_async(v30, v45);
    v27 = 0;
    goto LABEL_33;
  }

  v29 = [v21 discoveredAccessoryServers];
  [v29 addObject:v27];

  if ([v21 _delegateRespondsToSelector:sel_accessoryServerBrowser_didFindAccessoryServer_stateChanged_stateNumber_])
  {
    v30 = [v21 delegateQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __69__HMMTRAccessoryServerBrowser_discoverAccessoryServerWithIdentifier___block_invoke_2_193;
    block[3] = &unk_2786EF328;
    block[4] = v21;
    v31 = &v44;
    v27 = v27;
    v44 = v27;
    dispatch_async(v30, block);
LABEL_33:
  }

LABEL_35:

LABEL_36:
LABEL_37:

  v39 = *MEMORY[0x277D85DE8];
}

void __69__HMMTRAccessoryServerBrowser_discoverAccessoryServerWithIdentifier___block_invoke_187(uint64_t a1, char a2)
{
  v4 = [*(a1 + 32) workQueue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __69__HMMTRAccessoryServerBrowser_discoverAccessoryServerWithIdentifier___block_invoke_2;
  v5[3] = &unk_2786EEAB8;
  v8 = a2;
  v6 = *(a1 + 32);
  v7 = *(a1 + 48);
  dispatch_async(v4, v5);
}

void __69__HMMTRAccessoryServerBrowser_discoverAccessoryServerWithIdentifier___block_invoke_192(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 accessoryServerBrowser:*(a1 + 32) didFailToDiscoverAccessoryServerWithIdentifier:*(a1 + 40)];
}

void __69__HMMTRAccessoryServerBrowser_discoverAccessoryServerWithIdentifier___block_invoke_2_193(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 40);
    v9 = 138543618;
    v10 = v5;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&dword_22AEAE000, v4, OS_LOG_TYPE_INFO, "%{public}@Found server %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v7 = [*(a1 + 32) delegate];
  [v7 accessoryServerBrowser:*(a1 + 32) didFindAccessoryServer:*(a1 + 40) stateChanged:0 stateNumber:0];

  v8 = *MEMORY[0x277D85DE8];
}

void __69__HMMTRAccessoryServerBrowser_discoverAccessoryServerWithIdentifier___block_invoke_194(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 40);
    v9 = 138543618;
    v10 = v5;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&dword_22AEAE000, v4, OS_LOG_TYPE_INFO, "%{public}@Failed to discover server with identifier: %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v7 = [*(a1 + 32) delegate];
  [v7 accessoryServerBrowser:*(a1 + 32) didFailToDiscoverAccessoryServerWithIdentifier:*(a1 + 40)];

  v8 = *MEMORY[0x277D85DE8];
}

void __69__HMMTRAccessoryServerBrowser_discoverAccessoryServerWithIdentifier___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 56);
  v3 = *(a1 + 32);
  if (v2 == 1)
  {
    if (![v3 _delegateRespondsToSelector:sel_accessoryServerBrowser_didFindAccessoryServer_stateChanged_stateNumber_])
    {
      return;
    }

    v4 = [*(a1 + 32) delegateQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __69__HMMTRAccessoryServerBrowser_discoverAccessoryServerWithIdentifier___block_invoke_3;
    block[3] = &unk_2786EF328;
    v10 = *(a1 + 32);
    dispatch_async(v4, block);
  }

  else
  {
    if (![v3 _delegateRespondsToSelector:sel_accessoryServerBrowser_didFailToDiscoverAccessoryServerWithIdentifier_])
    {
      return;
    }

    v5 = [*(a1 + 32) delegateQueue];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __69__HMMTRAccessoryServerBrowser_discoverAccessoryServerWithIdentifier___block_invoke_190;
    v6[3] = &unk_2786EF3C8;
    v7 = *(a1 + 32);
    v8 = *(a1 + 48);
    dispatch_async(v5, v6);

    v4 = v8;
  }
}

void __69__HMMTRAccessoryServerBrowser_discoverAccessoryServerWithIdentifier___block_invoke_3(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 40);
    v9 = 138543618;
    v10 = v5;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&dword_22AEAE000, v4, OS_LOG_TYPE_INFO, "%{public}@Found server %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v7 = [*(a1 + 32) delegate];
  [v7 accessoryServerBrowser:*(a1 + 32) didFindAccessoryServer:*(a1 + 40) stateChanged:0 stateNumber:0];

  v8 = *MEMORY[0x277D85DE8];
}

void __69__HMMTRAccessoryServerBrowser_discoverAccessoryServerWithIdentifier___block_invoke_190(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 40);
    v9 = 138543618;
    v10 = v5;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&dword_22AEAE000, v4, OS_LOG_TYPE_INFO, "%{public}@Failed to discover server: %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v7 = [*(a1 + 32) delegate];
  [v7 accessoryServerBrowser:*(a1 + 32) didFailToDiscoverAccessoryServerWithIdentifier:*(a1 + 48)];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)notifyDiscoveredAccessoryServer:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __63__HMMTRAccessoryServerBrowser_notifyDiscoveredAccessoryServer___block_invoke;
  v6[3] = &unk_2786EF328;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(HMMTRAccessoryServerBrowser *)self dispatchBlock:v6];
}

void __63__HMMTRAccessoryServerBrowser_notifyDiscoveredAccessoryServer___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) discoveringAccessoryServersRequested] && objc_msgSend(*(a1 + 40), "pairedState") && (objc_msgSend(*(a1 + 40), "isDisabled") & 1) == 0 && (objc_msgSend(*(a1 + 40), "removalInProgress") & 1) == 0)
  {
    v2 = *(a1 + 40);
    v3 = [*(a1 + 32) commissioneeAccessoryServer];
    if (v2 == v3)
    {
    }

    else
    {
      v8 = v3;
      v4 = [*(a1 + 32) discoveredAccessoryServers];
      v5 = [v4 containsObject:*(a1 + 40)];

      if (v5)
      {
        v6 = [*(a1 + 32) delegateQueue];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __63__HMMTRAccessoryServerBrowser_notifyDiscoveredAccessoryServer___block_invoke_2;
        block[3] = &unk_2786EF328;
        v7 = *(a1 + 40);
        block[4] = *(a1 + 32);
        v10 = v7;
        dispatch_async(v6, block);
      }
    }
  }
}

void __63__HMMTRAccessoryServerBrowser_notifyDiscoveredAccessoryServer___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 accessoryServerBrowser:*(a1 + 32) didFindAccessoryServer:*(a1 + 40) stateChanged:0 stateNumber:0];
}

- (void)stopDiscoveringAccessoryServers
{
  v3 = [(HAPAccessoryServerBrowser *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__HMMTRAccessoryServerBrowser_stopDiscoveringAccessoryServers__block_invoke;
  block[3] = &unk_2786F0CA8;
  block[4] = self;
  dispatch_async(v3, block);
}

void __62__HMMTRAccessoryServerBrowser_stopDiscoveringAccessoryServers__block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    *buf = 138543362;
    v10 = v5;
    _os_log_impl(&dword_22AEAE000, v4, OS_LOG_TYPE_INFO, "%{public}@Stopping browse for CHIP accessories", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  [*(a1 + 32) setDiscoveringAccessoryServersRequested:0];
  if ([*(a1 + 32) _delegateRespondsToSelector:sel_accessoryServerBrowser_didStopDiscoveringWithError_])
  {
    v6 = [*(a1 + 32) delegateQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __62__HMMTRAccessoryServerBrowser_stopDiscoveringAccessoryServers__block_invoke_186;
    block[3] = &unk_2786F0CA8;
    block[4] = *(a1 + 32);
    dispatch_async(v6, block);
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __62__HMMTRAccessoryServerBrowser_stopDiscoveringAccessoryServers__block_invoke_186(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 accessoryServerBrowser:*(a1 + 32) didStopDiscoveringWithError:0];
}

- (void)startDiscoveringAccessoryServers
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
    _os_log_impl(&dword_22AEAE000, v5, OS_LOG_TYPE_INFO, "%{public}@Starting browse for accessory servers", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  objc_initWeak(buf, v4);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __63__HMMTRAccessoryServerBrowser_startDiscoveringAccessoryServers__block_invoke;
  v8[3] = &unk_2786EF2B8;
  objc_copyWeak(&v9, buf);
  [(HMMTRAccessoryServerBrowser *)v4 dispatchBlock:v8];
  objc_destroyWeak(&v9);
  objc_destroyWeak(buf);
  v7 = *MEMORY[0x277D85DE8];
}

void __63__HMMTRAccessoryServerBrowser_startDiscoveringAccessoryServers__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _startDiscoveringAccessoryServersWithNoResponseToDelegate];
  [WeakRetained setDiscoveringAccessoryServersRequested:1];
  if ([WeakRetained _delegateRespondsToSelector:sel_accessoryServerBrowser_didStartDiscoveringWithError_])
  {
    v2 = [WeakRetained delegateQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __63__HMMTRAccessoryServerBrowser_startDiscoveringAccessoryServers__block_invoke_2;
    block[3] = &unk_2786F0CA8;
    block[4] = WeakRetained;
    dispatch_async(v2, block);
  }
}

void __63__HMMTRAccessoryServerBrowser_startDiscoveringAccessoryServers__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 accessoryServerBrowser:*(a1 + 32) didStartDiscoveringWithError:0];
}

- (void)startDiscoveringAccessoryServersWithNoResponseToDelegate
{
  objc_initWeak(&location, self);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __87__HMMTRAccessoryServerBrowser_startDiscoveringAccessoryServersWithNoResponseToDelegate__block_invoke;
  v3[3] = &unk_2786EF2B8;
  objc_copyWeak(&v4, &location);
  [(HMMTRAccessoryServerBrowser *)self dispatchBlock:v3];
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

void __87__HMMTRAccessoryServerBrowser_startDiscoveringAccessoryServersWithNoResponseToDelegate__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _startDiscoveringAccessoryServersWithNoResponseToDelegate];
}

- (void)_startDiscoveringAccessoryServersWithNoResponseToDelegate
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277D0F8E8] productInfo];
  v4 = [v3 productPlatform];

  if (v4 == 4)
  {
    if ([(HMMTRAccessoryServerBrowser *)self discoveringAccessoryServersRequested])
    {
LABEL_23:
      [(HMMTRAccessoryServerBrowser *)self setBrowserState:2];
      goto LABEL_27;
    }

LABEL_8:
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v11 = [(HMMTRAccessoryServerBrowser *)self discoveredAccessoryServers];
    v12 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v23;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v23 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v22 + 1) + 8 * i);
          if ([v16 pairedState])
          {
            if (([v16 isDisabled] & 1) == 0 && (objc_msgSend(v16, "removalInProgress") & 1) == 0)
            {
              v17 = [(HMMTRAccessoryServerBrowser *)self commissioneeAccessoryServer];

              if (v16 != v17 && (!-[HMMTRAccessoryServerBrowser isCurrentDeviceMobileAndAllowedAccessoryControl](self, "isCurrentDeviceMobileAndAllowedAccessoryControl") || ([v16 delayDiscovery] & 1) == 0))
              {
                v18 = [(HMMTRAccessoryServerBrowser *)self delegateQueue];
                v21[0] = MEMORY[0x277D85DD0];
                v21[1] = 3221225472;
                v21[2] = __88__HMMTRAccessoryServerBrowser__startDiscoveringAccessoryServersWithNoResponseToDelegate__block_invoke;
                v21[3] = &unk_2786EF328;
                v21[4] = self;
                v21[5] = v16;
                dispatch_async(v18, v21);
              }
            }
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v13);
    }

    goto LABEL_23;
  }

  v5 = [(HMMTRAccessoryServerBrowser *)self isCurrentDeviceMobileAndAllowedAccessoryControl];
  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_INFO);
  if (v5)
  {
    if (v9)
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543362;
      v28 = v10;
      _os_log_impl(&dword_22AEAE000, v8, OS_LOG_TYPE_INFO, "%{public}@startDiscoveringAccessoryServers invoked while resident is down - allowing discovery", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    [(HMMTRAccessoryServerBrowser *)v7 discoveringAccessoryServersRequested];
    goto LABEL_8;
  }

  if (v9)
  {
    v19 = HMFGetLogIdentifier();
    *buf = 138543362;
    v28 = v19;
    _os_log_impl(&dword_22AEAE000, v8, OS_LOG_TYPE_INFO, "%{public}@startDiscoveringAccessoryServers: resident is up - preventing discovery of all accessory servers", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v6);
LABEL_27:
  v20 = *MEMORY[0x277D85DE8];
}

void __88__HMMTRAccessoryServerBrowser__startDiscoveringAccessoryServersWithNoResponseToDelegate__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 accessoryServerBrowser:*(a1 + 32) didFindAccessoryServer:*(a1 + 40) stateChanged:0 stateNumber:0];
}

- (void)setCommissioneeAccessoryServer:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  os_unfair_lock_lock_with_options();
  WeakRetained = objc_loadWeakRetained(&self->_commissioneeAccessoryServer);
  if (WeakRetained && ([v4 fabricUUID], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(WeakRetained, "fabricUUID"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v6, "isEqual:", v7), v7, v6, (v8 & 1) == 0))
  {
    v9 = MEMORY[0x2318887D0](self->_controllerSetUpBlockToRunAfterCommissioning);
    controllerSetUpBlockToRunAfterCommissioning = self->_controllerSetUpBlockToRunAfterCommissioning;
    self->_controllerSetUpBlockToRunAfterCommissioning = 0;
  }

  else
  {
    v9 = 0;
  }

  objc_storeWeak(&self->_commissioneeAccessoryServer, v4);

  os_unfair_lock_unlock(&self->_commissioneeAccessoryServerLock);
  if (v9)
  {
    v11 = objc_autoreleasePoolPush();
    v12 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      v16 = 138543362;
      v17 = v14;
      _os_log_impl(&dword_22AEAE000, v13, OS_LOG_TYPE_INFO, "%{public}@Setting deferred controller parameters after pairing is complete", &v16, 0xCu);
    }

    objc_autoreleasePoolPop(v11);
    v9[2](v9);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (HMMTRAccessoryServer)commissioneeAccessoryServer
{
  os_unfair_lock_lock_with_options();
  WeakRetained = objc_loadWeakRetained(&self->_commissioneeAccessoryServer);
  os_unfair_lock_unlock(&self->_commissioneeAccessoryServerLock);

  return WeakRetained;
}

- (void)runAfterCommissioningToTargetFabricUUID:(id)a3 controllerSetUpBlock:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  os_unfair_lock_lock_with_options();
  WeakRetained = objc_loadWeakRetained(&self->_commissioneeAccessoryServer);
  v9 = [WeakRetained fabricUUID];
  v10 = [v9 isEqual:v6];

  if (v10)
  {
    v11 = MEMORY[0x2318887D0](v7);
    controllerSetUpBlockToRunAfterCommissioning = self->_controllerSetUpBlockToRunAfterCommissioning;
    self->_controllerSetUpBlockToRunAfterCommissioning = v11;

    os_unfair_lock_unlock(&self->_commissioneeAccessoryServerLock);
    v13 = objc_autoreleasePoolPush();
    v14 = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      v18 = 138543618;
      v19 = v16;
      v20 = 2112;
      v21 = v6;
      _os_log_impl(&dword_22AEAE000, v15, OS_LOG_TYPE_INFO, "%{public}@Setting controller parameters for target fabric UUID %@ was deferred during pairing", &v18, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
  }

  else
  {
    os_unfair_lock_unlock(&self->_commissioneeAccessoryServerLock);
    v7[2](v7);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)clearOperationalFabricDataForTargetFabricUUID:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __77__HMMTRAccessoryServerBrowser_clearOperationalFabricDataForTargetFabricUUID___block_invoke;
  v6[3] = &unk_2786EF328;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(HMMTRAccessoryServerBrowser *)self runAfterCommissioningToTargetFabricUUID:v5 controllerSetUpBlock:v6];
}

void __77__HMMTRAccessoryServerBrowser_clearOperationalFabricDataForTargetFabricUUID___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 40);
    v9 = 138543618;
    v10 = v5;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&dword_22AEAE000, v4, OS_LOG_TYPE_INFO, "%{public}@Clearing fabric data for target fabric UUID %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  [*(a1 + 32) setPairingTargetFabricData:0 targetFabricUUID:*(a1 + 40)];
  v7 = [*(a1 + 32) homeFabricControllers];
  [v7 removeTargetFabricUUID:*(a1 + 40)];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)setOperationalFabricData:(id)a3 operationalCertIssuer:(id)a4 storageDataSource:(id)a5 allTargetFabricUUIDs:(id)a6 entityIdentifier:(id)a7 accessoryServerNodeIDs:(id)a8 forTargetFabricUUID:(id)a9
{
  v76 = *MEMORY[0x277D85DE8];
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v65 = a8;
  v20 = a9;
  v21 = [(HMMTRAccessoryServerBrowser *)self storage];
  v22 = [v21 dataSource];

  if (v22)
  {
    v63 = v18;
    v64 = v17;
    v61 = v20;
    v62 = v19;
    if ([(HMMTRAccessoryServerBrowser *)self _isPerControllerStorageEnabled])
    {
      if (!v17)
      {
        _HMFPreconditionFailure();
      }

      v60 = v16;
      v23 = dispatch_queue_create("HMMTRPerControllerStorage queue", 0);
      v24 = [[HMMTRPerControllerStorage alloc] initWithQueue:v23 privateDataSource:v17];
      v25 = [HMMTRControllerParameters alloc];
      v26 = [MEMORY[0x277CCAD78] UUID];
      v27 = [v15 ipk];
      v28 = [v15 operationalKeyPair];
      v29 = [v15 operationalCert];
      v30 = [v15 rootCert];
      v31 = [(HMMTRControllerParameters *)v25 initWithStorageDelegate:v24 storageDelegateQueue:v23 uniqueIdentifier:v26 ipk:v27 vendorID:&unk_283EE87D8 operationalKeypair:v28 operationalCertificate:v29 intermediateCertificate:0 rootCertificate:v30];

      v16 = v60;
    }

    else
    {
      v38 = [HMMTRControllerParameters alloc];
      v39 = [v15 ipk];
      v40 = [v15 operationalKeyPair];
      v41 = [v15 operationalCert];
      v42 = [v15 rootCert];
      v31 = [(HMMTRControllerParameters *)v38 initWithIPK:v39 operationalKeypair:v40 operationalCertificate:v41 intermediateCertificate:0 rootCertificate:v42];

      [(HMMTRControllerParameters *)v31 setVendorID:&unk_283EE87D8];
    }

    [(HMMTRControllerParameters *)v31 setOperationalCertificateIssuer:v16];
    v43 = [(HAPAccessoryServerBrowser *)self workQueue];
    [(HMMTRControllerParameters *)v31 setOperationalCertificateIssuerQueue:v43];

    v44 = [(HMMTRAccessoryServerBrowser *)self otaProviderDelegate];
    [(HMMTRControllerParameters *)v31 setOtaProviderDelegate:v44];

    v45 = [(HAPAccessoryServerBrowser *)self workQueue];
    [(HMMTRControllerParameters *)v31 setOtaProviderDelegateQueue:v45];

    v46 = [(HMMTRAccessoryServerBrowser *)self attestationDataStore];
    v47 = [v46 cdCertificates];
    [(HMMTRControllerParameters *)v31 setCertificationDeclarationCertificates:v47];

    v48 = [(HMMTRAccessoryServerBrowser *)self attestationDataStore];
    v49 = [v48 paaCertificates];
    [(HMMTRControllerParameters *)v31 setProductAttestationAuthorityCertificates:v49];

    v50 = [MEMORY[0x277D0F8E8] productInfo];
    v51 = [v50 productPlatform];

    v19 = v62;
    v18 = v63;
    v37 = v65;
    if (v51 == 4)
    {
      v52 = v16;
      [(HMMTRControllerParameters *)v31 setShouldAdvertiseOperational:1];
      v53 = objc_autoreleasePoolPush();
      v54 = self;
      v55 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
      {
        v56 = HMFGetLogIdentifier();
        *buf = 138543362;
        v75 = v56;
        _os_log_impl(&dword_22AEAE000, v55, OS_LOG_TYPE_INFO, "%{public}@Requesting operational discovery for current controller node", buf, 0xCu);

        v19 = v62;
        v37 = v65;
      }

      objc_autoreleasePoolPop(v53);
      v16 = v52;
    }

    v66[0] = MEMORY[0x277D85DD0];
    v66[1] = 3221225472;
    v66[2] = __177__HMMTRAccessoryServerBrowser_setOperationalFabricData_operationalCertIssuer_storageDataSource_allTargetFabricUUIDs_entityIdentifier_accessoryServerNodeIDs_forTargetFabricUUID___block_invoke;
    v66[3] = &unk_2786EEA90;
    v67 = v31;
    v68 = self;
    v69 = v61;
    v70 = v63;
    v71 = v19;
    v72 = v15;
    v73 = v37;
    v57 = v31;
    v20 = v61;
    v58 = v57;
    [(HMMTRAccessoryServerBrowser *)self runAfterCommissioningToTargetFabricUUID:v69 controllerSetUpBlock:v66];

    v17 = v64;
  }

  else
  {
    v32 = objc_autoreleasePoolPush();
    v33 = self;
    v34 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
    {
      HMFGetLogIdentifier();
      v36 = v35 = v20;
      *buf = 138543362;
      v75 = v36;
      _os_log_impl(&dword_22AEAE000, v34, OS_LOG_TYPE_INFO, "%{public}@Ignoring setOperationalFabricData call because storage data source is not configured yet", buf, 0xCu);

      v20 = v35;
    }

    objc_autoreleasePoolPop(v32);
    v37 = v65;
  }

  v59 = *MEMORY[0x277D85DE8];
}

void __177__HMMTRAccessoryServerBrowser_setOperationalFabricData_operationalCertIssuer_storageDataSource_allTargetFabricUUIDs_entityIdentifier_accessoryServerNodeIDs_forTargetFabricUUID___block_invoke(uint64_t a1)
{
  v68 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) operationalKeypair];
  v3 = SecKeyCopyExternalRepresentation([v2 publicKey], 0);

  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 40);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v8 = [*(a1 + 32) rootCertificate];
    v9 = [*(a1 + 32) operationalCertificate];
    v55 = *(a1 + 48);
    v10 = [*(a1 + 32) uniqueIdentifier];
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[__CFData hash](v3, "hash")}];
    *buf = 138544642;
    v57 = v7;
    v58 = 2112;
    v59 = v8;
    v60 = 2112;
    v61 = v9;
    v62 = 2112;
    v63 = v55;
    v64 = 2112;
    v65 = v10;
    v66 = 2112;
    v67 = v11;
    _os_log_impl(&dword_22AEAE000, v6, OS_LOG_TYPE_INFO, "%{public}@Setting root and operational cert in start up params %@ %@ for target fabric UUID %@ with UUID %@ using operational key %@", buf, 0x3Eu);
  }

  objc_autoreleasePoolPop(v4);
  v12 = objc_autoreleasePoolPush();
  v13 = *(a1 + 40);
  v14 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = HMFGetLogIdentifier();
    v16 = MEMORY[0x277CD5230];
    v17 = [*(a1 + 32) rootCertificate];
    v18 = [v16 shortDescriptionForX509Certificate:v17];
    *buf = 138543618;
    v57 = v15;
    v58 = 2112;
    v59 = v18;
    _os_log_impl(&dword_22AEAE000, v14, OS_LOG_TYPE_INFO, "%{public}@Controller Root certificate: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v12);
  v19 = MEMORY[0x277CD5230];
  v20 = [*(a1 + 32) rootCertificate];
  [v19 printX509Certificate:v20];

  v21 = objc_autoreleasePoolPush();
  v22 = *(a1 + 40);
  v23 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
  {
    v24 = HMFGetLogIdentifier();
    v25 = MEMORY[0x277CD5230];
    v26 = [*(a1 + 32) operationalCertificate];
    v27 = [v25 shortDescriptionForX509Certificate:v26];
    *buf = 138543618;
    v57 = v24;
    v58 = 2112;
    v59 = v27;
    _os_log_impl(&dword_22AEAE000, v23, OS_LOG_TYPE_INFO, "%{public}@Controller NOC: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v21);
  v28 = MEMORY[0x277CD5230];
  v29 = [*(a1 + 32) operationalCertificate];
  [v28 printX509Certificate:v29];

  v30 = objc_autoreleasePoolPush();
  v31 = *(a1 + 40);
  v32 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
  {
    v33 = HMFGetLogIdentifier();
    v34 = [*(a1 + 32) ipk];
    v35 = [v34 hmmtr_sha256hash];
    *buf = 138543618;
    v57 = v33;
    v58 = 2112;
    v59 = v35;
    _os_log_impl(&dword_22AEAE000, v32, OS_LOG_TYPE_INFO, "%{public}@IPK: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v30);
  v36 = [*(a1 + 40) homeFabricControllers];
  v37 = [v36 wrapperWithTargetFabricUUID:*(a1 + 48) startupParams:*(a1 + 32) allTargetFabricUUIDs:*(a1 + 56) entityIdentifier:*(a1 + 64)];

  v38 = objc_autoreleasePoolPush();
  v39 = *(a1 + 40);
  v40 = HMFGetOSLogHandle();
  v41 = os_log_type_enabled(v40, OS_LOG_TYPE_INFO);
  if (v37)
  {
    if (v41)
    {
      v42 = HMFGetLogIdentifier();
      v43 = *(a1 + 48);
      *buf = 138543618;
      v57 = v42;
      v58 = 2112;
      v59 = v43;
      _os_log_impl(&dword_22AEAE000, v40, OS_LOG_TYPE_INFO, "%{public}@Operational fabric data was set successfully for %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v38);
    [*(a1 + 40) setPairingTargetFabricData:*(a1 + 72) targetFabricUUID:*(a1 + 48)];
    if (isFeatureMatterRVCEnabled())
    {
      v44 = [v37 controller];
      v45 = objc_autoreleasePoolPush();
      v46 = *(a1 + 40);
      v47 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
      {
        v48 = HMFGetLogIdentifier();
        v49 = *(a1 + 48);
        *buf = 138543874;
        v57 = v48;
        v58 = 2112;
        v59 = v44;
        v60 = 2112;
        v61 = v49;
        _os_log_impl(&dword_22AEAE000, v47, OS_LOG_TYPE_INFO, "%{public}@Retrieved controller %@ for fabric UUID %@ upon setting the startup parameters", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v45);
    }

    v50 = *(a1 + 80);
    if (v50)
    {
      [*(a1 + 40) updateDiscoveredAccessoryServersWithNodes:v50 fabricUUID:*(a1 + 48)];
      v51 = [*(a1 + 40) deviceControllerForFabricUUID:*(a1 + 48)];
    }
  }

  else
  {
    if (v41)
    {
      v52 = HMFGetLogIdentifier();
      v53 = *(a1 + 48);
      *buf = 138543618;
      v57 = v52;
      v58 = 2112;
      v59 = v53;
      _os_log_impl(&dword_22AEAE000, v40, OS_LOG_TYPE_INFO, "%{public}@Operational fabric data wasn't set for %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v38);
    [*(a1 + 40) setPairingTargetFabricData:0 targetFabricUUID:*(a1 + 48)];
  }

  v54 = *MEMORY[0x277D85DE8];
}

- (void)_clearLocallyDiscoveredFlags
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [(HMMTRAccessoryServerBrowser *)self discoveredAccessoryServers];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v8 + 1) + 8 * v6++) setLocallyDiscovered:0];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_cleanupDisappearedServersOverBLE
{
  v44 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB58] set];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v4 = self->_discoveredAccessoryServers;
  v5 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v32 objects:v43 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v33;
    *&v6 = 138543874;
    v25 = v6;
    v26 = v3;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v33 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v32 + 1) + 8 * i);
        if ([v10 discoveredOverBLE] && objc_msgSend(v10, "bleScanPending"))
        {
          [v10 setLocallyDiscovered:0];
          v11 = [v10 setupPayloadString];

          if (v11)
          {
            [v10 setDiscoveredOverBLE:0];
          }

          else if (([v10 isPairingInProgress] & 1) == 0 && (!objc_msgSend(v10, "pairedState") || objc_msgSend(v10, "isDisabled")))
          {
            v12 = objc_autoreleasePoolPush();
            v13 = self;
            v14 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
            {
              HMFGetLogIdentifier();
              v15 = v27 = v12;
              v16 = [v10 identifier];
              *buf = v25;
              v38 = v15;
              v39 = 2112;
              v40 = v16;
              v41 = 1024;
              v42 = 0;
              _os_log_impl(&dword_22AEAE000, v14, OS_LOG_TYPE_INFO, "%{public}@Invalidating server disappeared from BLE, id %@, pairingInProgress %d", buf, 0x1Cu);

              v3 = v26;
              v12 = v27;
            }

            objc_autoreleasePoolPop(v12);
            [v3 addObject:v10];
          }
        }
      }

      v7 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v32 objects:v43 count:16];
    }

    while (v7);
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v17 = v3;
  v18 = [v17 countByEnumeratingWithState:&v28 objects:v36 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v29;
    do
    {
      for (j = 0; j != v19; ++j)
      {
        if (*v29 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v28 + 1) + 8 * j);
        v23 = [MEMORY[0x277CCA9B8] hmmtrErrorWithCode:13];
        [(HMMTRAccessoryServerBrowser *)self invalidateAccessoryServer:v22 reason:v23];
      }

      v19 = [v17 countByEnumeratingWithState:&v28 objects:v36 count:16];
    }

    while (v19);
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (void)_prepareServerForBLEDiscovery
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = self->_discoveredAccessoryServers;
  v3 = [(NSMutableSet *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v9 + 1) + 8 * i);
        if ([v7 discoveredOverBLE])
        {
          [v7 setBleScanPending:1];
        }
      }

      v4 = [(NSMutableSet *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_cleanupLocallyDiscoveredServers
{
  v43 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB58] set];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v4 = self->_discoveredAccessoryServers;
  v5 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v33 objects:v42 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v34;
    *&v6 = 138543618;
    v26 = v6;
    v27 = self;
    v28 = v4;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v34 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v33 + 1) + 8 * i);
        if ([v10 locallyDiscovered] && (!objc_msgSend(v10, "pairedState") && !objc_msgSend(v10, "isPairingInProgress") || objc_msgSend(v10, "isDisabled")))
        {
          v11 = objc_autoreleasePoolPush();
          v12 = self;
          v13 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
          {
            HMFGetLogIdentifier();
            v15 = v14 = v3;
            [v10 identifier];
            v17 = v16 = v8;
            *buf = v26;
            v39 = v15;
            v40 = 2112;
            v41 = v17;
            _os_log_impl(&dword_22AEAE000, v13, OS_LOG_TYPE_INFO, "%{public}@Invalidating only locally discovered server, id %@", buf, 0x16u);

            v8 = v16;
            v3 = v14;
            self = v27;
            v4 = v28;
          }

          objc_autoreleasePoolPop(v11);
          [v10 setLocallyDiscovered:0];
          [v3 addObject:v10];
        }
      }

      v7 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v33 objects:v42 count:16];
    }

    while (v7);
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v18 = v3;
  v19 = [v18 countByEnumeratingWithState:&v29 objects:v37 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v30;
    do
    {
      for (j = 0; j != v20; ++j)
      {
        if (*v30 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v29 + 1) + 8 * j);
        v24 = [MEMORY[0x277CCA9B8] hmmtrErrorWithCode:9];
        [(HMMTRAccessoryServerBrowser *)self invalidateAccessoryServer:v23 reason:v24];
      }

      v20 = [v18 countByEnumeratingWithState:&v29 objects:v37 count:16];
    }

    while (v20);
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)_handleBonjourRemoveWithDiscriminator:(id)a3 vendorID:(id)a4 productID:(id)a5 txtRecordRemove:(BOOL)a6
{
  v6 = a6;
  v28 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [(HMMTRAccessoryServerBrowser *)self _discoveredServerWithDiscriminator:v10 vendorID:v11 productID:v12];
  if ([v13 locallyDiscovered])
  {
    v14 = objc_autoreleasePoolPush();
    v15 = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = HMFGetLogIdentifier();
      if (v6)
      {
        v18 = "remove";
      }

      else
      {
        v18 = "non-commissioning";
      }

      v19 = [v13 identifier];
      v22 = 138543874;
      v23 = v17;
      v24 = 2080;
      v25 = v18;
      v26 = 2112;
      v27 = v19;
      _os_log_impl(&dword_22AEAE000, v16, OS_LOG_TYPE_INFO, "%{public}@Received bonjour %s for server id %@", &v22, 0x20u);
    }

    objc_autoreleasePoolPop(v14);
    [v13 setLocallyDiscovered:0];
    if (([v13 isPairingInProgress] & 1) == 0 && (!objc_msgSend(v13, "pairedState") || objc_msgSend(v13, "isDisabled")))
    {
      v20 = [MEMORY[0x277CCA9B8] hmmtrErrorWithCode:13];
      [(HMMTRAccessoryServerBrowser *)v15 invalidateAccessoryServer:v13 reason:v20];
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)_handleAddOrUpdateWithDiscriminator:(id)a3 vendorID:(id)a4 productID:(id)a5 overBLE:(BOOL)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [MEMORY[0x277CCA9B8] hmmtrErrorWithCode:9];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __94__HMMTRAccessoryServerBrowser__handleAddOrUpdateWithDiscriminator_vendorID_productID_overBLE___block_invoke;
  v17[3] = &unk_2786EEA68;
  v17[4] = self;
  v18 = v10;
  v19 = v11;
  v20 = v12;
  v21 = a6;
  v14 = v12;
  v15 = v11;
  v16 = v10;
  [(HMMTRAccessoryServerBrowser *)self _cleanupDiscoveredServersWithReason:v13 completion:v17];
}

void __94__HMMTRAccessoryServerBrowser__handleAddOrUpdateWithDiscriminator_vendorID_productID_overBLE___block_invoke(uint64_t a1)
{
  v56 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _discoveredServerWithDiscriminator:*(a1 + 40) vendorID:*(a1 + 48) productID:*(a1 + 56)];
  v3 = v2;
  if (v2)
  {
    if ([v2 pairedState] && !objc_msgSend(v3, "isDisabled"))
    {
      v30 = objc_autoreleasePoolPush();
      v31 = *(a1 + 32);
      v32 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        v33 = HMFGetLogIdentifier();
        v34 = [v3 identifier];
        v35 = v34;
        v36 = *(a1 + 64);
        *buf = 138543874;
        v47 = v33;
        if (v36)
        {
          v37 = "BLE";
        }

        else
        {
          v37 = "Bonjour";
        }

        v48 = 2114;
        v49 = v34;
        v50 = 2080;
        v51 = v37;
        _os_log_impl(&dword_22AEAE000, v32, OS_LOG_TYPE_ERROR, "%{public}@CHIP accessory server %{public}@ paired or being paired was unexpectedly discovered over %s", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v30);
    }

    else
    {
      if (*(a1 + 64) != 1 || ![v3 locallyDiscovered] || !objc_msgSend(v3, "discoveredOverBLE") || objc_msgSend(v3, "bleScanPending"))
      {
        v4 = objc_autoreleasePoolPush();
        v5 = *(a1 + 32);
        v6 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
        {
          v7 = HMFGetLogIdentifier();
          v8 = [v3 identifier];
          v9 = v8;
          v10 = *(a1 + 64);
          *buf = 138543874;
          v47 = v7;
          if (v10)
          {
            v11 = "BLE";
          }

          else
          {
            v11 = "Bonjour";
          }

          v48 = 2114;
          v49 = v8;
          v50 = 2080;
          v51 = v11;
          _os_log_impl(&dword_22AEAE000, v6, OS_LOG_TYPE_DEBUG, "%{public}@Updating CHIP accessory server %{public}@ with new discovery over %s", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v4);
      }

      [v3 setLocallyDiscovered:1];
      [v3 setDiscoveredOverBLE:*(a1 + 64)];
      [v3 setBleScanPending:0];
    }
  }

  else
  {
    v12 = [HMMTRAccessoryServerFactory alloc];
    v13 = [*(a1 + 32) keyStore];
    v14 = [(HMMTRAccessoryServerFactory *)v12 initWithKeystore:v13 browser:*(a1 + 32)];

    v15 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(*(a1 + 32), "_generateNodeID")}];
    v16 = [(HMMTRAccessoryServerFactory *)v14 vendAccessoryServerWithNodeID:v15 setupCode:0 discriminator:*(a1 + 40) category:0 vendorID:*(a1 + 48) productID:*(a1 + 56) serialNumber:0 firmwareRevision:@"1.0.0"];
    v17 = v16;
    if (v16)
    {
      [v16 setFabricID:0];
      [v17 setKnownToSystemCommissioner:0];
      v18 = objc_autoreleasePoolPush();
      v19 = *(a1 + 32);
      v20 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        HMFGetLogIdentifier();
        v21 = v43 = v14;
        v22 = [v17 name];
        v23 = [v17 identifier];
        v24 = v23;
        v25 = *(a1 + 64);
        v26 = *(a1 + 40);
        *buf = 138544386;
        if (v25)
        {
          v27 = "BLE";
        }

        else
        {
          v27 = "Bonjour";
        }

        v47 = v21;
        v48 = 2112;
        v49 = v22;
        v50 = 2114;
        v51 = v23;
        v52 = 2080;
        v53 = v27;
        v54 = 2112;
        v55 = v26;
        _os_log_impl(&dword_22AEAE000, v20, OS_LOG_TYPE_INFO, "%{public}@Discovered new accessory server %@/%{public}@ with new discovery over %s, D=%@", buf, 0x34u);

        v14 = v43;
      }

      objc_autoreleasePoolPop(v18);
      [v17 setLocallyDiscovered:1];
      [v17 setDiscoveredOverBLE:*(a1 + 64)];
      [v17 setBleScanPending:0];
      v28 = [*(a1 + 32) discoveredAccessoryServers];
      [v28 addObject:v17];

      if ([*(a1 + 32) _delegateRespondsToSelector:sel_accessoryServerBrowser_didFindAccessoryServer_stateChanged_stateNumber_])
      {
        v29 = [*(a1 + 32) delegateQueue];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __94__HMMTRAccessoryServerBrowser__handleAddOrUpdateWithDiscriminator_vendorID_productID_overBLE___block_invoke_170;
        block[3] = &unk_2786EF328;
        block[4] = *(a1 + 32);
        v45 = v17;
        dispatch_async(v29, block);
      }

      [v17 registerForNotifications:*(a1 + 32)];
    }

    else
    {
      v38 = objc_autoreleasePoolPush();
      v39 = *(a1 + 32);
      v40 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        v41 = HMFGetLogIdentifier();
        *buf = 138543362;
        v47 = v41;
        _os_log_impl(&dword_22AEAE000, v40, OS_LOG_TYPE_ERROR, "%{public}@Failed to create an accessory server from a new discovery", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v38);
    }
  }

  [*(a1 + 32) _updatePairingMetricsUponAccessoryDiscovery];

  v42 = *MEMORY[0x277D85DE8];
}

void __94__HMMTRAccessoryServerBrowser__handleAddOrUpdateWithDiscriminator_vendorID_productID_overBLE___block_invoke_170(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 accessoryServerBrowser:*(a1 + 32) didFindAccessoryServer:*(a1 + 40) stateChanged:0 stateNumber:0];
}

- (void)_updatePairingMetricsUponAccessoryDiscovery
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = [(HAPAccessoryServerBrowser *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = self->_discoveredAccessoryServers;
  v5 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if ([v9 isPairingInProgress])
        {
          if ([v9 accessoryWithSameDiscriminatorDiscovered])
          {
            [v9 notifyDelegateOfAccessoryMatchingCommissioningDiscriminatorDiscovered];
          }

          goto LABEL_12;
        }
      }

      v6 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  v10 = *MEMORY[0x277D85DE8];
}

- (BOOL)locallyDiscoveredAccessoryServerMatchesDiscriminatorOfSetupPayload:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v5 = [(NSMutableSet *)self->_discoveredAccessoryServers copy];
  v6 = [v5 countByEnumeratingWithState:&v20 objects:v32 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v21;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v20 + 1) + 8 * i);
        if ([v10 isLocallyDiscoveredAndMatchesDiscriminatorOfSetupPayload:v4])
        {
          v12 = objc_autoreleasePoolPush();
          v13 = self;
          v14 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
          {
            v15 = HMFGetLogIdentifier();
            v16 = [v4 discriminator];
            [v4 hasShortDiscriminator];
            v17 = HMFBooleanToString();
            *buf = 138544130;
            v25 = v15;
            v26 = 2112;
            v27 = v10;
            v28 = 2112;
            v29 = v16;
            v30 = 2112;
            v31 = v17;
            _os_log_impl(&dword_22AEAE000, v14, OS_LOG_TYPE_DEBUG, "%{public}@Locally discovered server %@ matches the discriminator %@ (short %@)", buf, 0x2Au);
          }

          objc_autoreleasePoolPop(v12);
          v11 = 1;
          goto LABEL_13;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v20 objects:v32 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_13:

  v18 = *MEMORY[0x277D85DE8];
  return v11;
}

- (id)_discoveredServerWithDiscriminator:(id)a3 vendorID:(id)a4 productID:(id)a5
{
  v26 = *MEMORY[0x277D85DE8];
  v20 = a3;
  v8 = a4;
  v9 = a5;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v10 = self->_discoveredAccessoryServers;
  v11 = [(NSMutableSet *)v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v11)
  {
    v12 = *v22;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v22 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = *(*(&v21 + 1) + 8 * i);
        if (([v14 removalInProgress] & 1) == 0)
        {
          v15 = [v14 vendorID];
          if (![v15 isEqual:v8])
          {
            goto LABEL_12;
          }

          v16 = [v14 productID];
          if (([v16 isEqual:v9] & 1) == 0)
          {

LABEL_12:
            continue;
          }

          v17 = [v14 doesMatchDiscriminator:v20];

          if (v17)
          {
            v11 = v14;
            goto LABEL_15;
          }
        }
      }

      v11 = [(NSMutableSet *)v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v11);
  }

LABEL_15:

  v18 = *MEMORY[0x277D85DE8];

  return v11;
}

- (int)_discriminator:(id *)a3 vendorID:(id *)a4 productID:(id *)a5 CM:(id *)a6 fromTXTRecord:(id)a7
{
  v12 = a7;
  *a3 = 0;
  *a4 = 0;
  *a5 = 0;
  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = __Block_byref_object_copy__9232;
  v40 = __Block_byref_object_dispose__9233;
  v41 = &unk_283EE87C0;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__9232;
  v34 = __Block_byref_object_dispose__9233;
  v35 = &unk_283EE87C0;
  access_value[0] = MEMORY[0x277D85DD0];
  access_value[1] = 3221225472;
  access_value[2] = __82__HMMTRAccessoryServerBrowser__discriminator_vendorID_productID_CM_fromTXTRecord___block_invoke;
  access_value[3] = &unk_2786EEA18;
  access_value[4] = self;
  access_value[5] = &v36;
  access_value[6] = &v30;
  if (nw_txt_record_access_key(v12, "VP", access_value))
  {
    v23 = 0;
    v24 = &v23;
    v25 = 0x3032000000;
    v26 = __Block_byref_object_copy__9232;
    v27 = __Block_byref_object_dispose__9233;
    v28 = &unk_283EE87C0;
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __82__HMMTRAccessoryServerBrowser__discriminator_vendorID_productID_CM_fromTXTRecord___block_invoke_161;
    v22[3] = &unk_2786EEA40;
    v22[4] = self;
    v22[5] = &v23;
    if (nw_txt_record_access_key(v12, "D", v22))
    {
      v16 = 0;
      v17 = &v16;
      v18 = 0x3032000000;
      v19 = __Block_byref_object_copy__9232;
      v20 = __Block_byref_object_dispose__9233;
      v21 = &unk_283EE87C0;
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __82__HMMTRAccessoryServerBrowser__discriminator_vendorID_productID_CM_fromTXTRecord___block_invoke_163;
      v15[3] = &unk_2786EEA40;
      v15[4] = self;
      v15[5] = &v16;
      nw_txt_record_access_key(v12, "CM", v15);
      *a4 = v37[5];
      *a5 = v31[5];
      *a3 = v24[5];
      *a6 = v17[5];
      _Block_object_dispose(&v16, 8);

      v13 = 0;
    }

    else
    {
      v13 = -6737;
    }

    _Block_object_dispose(&v23, 8);
  }

  else
  {
    v13 = -6737;
  }

  _Block_object_dispose(&v30, 8);

  _Block_object_dispose(&v36, 8);
  return v13;
}

uint64_t __82__HMMTRAccessoryServerBrowser__discriminator_vendorID_productID_CM_fromTXTRecord___block_invoke(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v41 = *MEMORY[0x277D85DE8];
  if (a3 == 4)
  {
    v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:a4 length:a5 encoding:1];
    v7 = [v6 componentsSeparatedByString:@"+"];
    v8 = objc_autoreleasePoolPush();
    v9 = *(a1 + 32);
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v11 = HMFGetLogIdentifier();
      v35 = 138543874;
      v36 = v11;
      v37 = 2112;
      v38 = v6;
      v39 = 2112;
      v40 = v7;
      _os_log_impl(&dword_22AEAE000, v10, OS_LOG_TYPE_DEBUG, "%{public}@VP value: %@, split int components: %@", &v35, 0x20u);
    }

    objc_autoreleasePoolPop(v8);
    if ([v7 count] == 2)
    {
      v12 = MEMORY[0x277CCABB0];
      v13 = [v7 objectAtIndexedSubscript:0];
      v14 = [v12 numberWithInteger:{objc_msgSend(v13, "integerValue")}];
      v15 = *(*(a1 + 40) + 8);
      v16 = *(v15 + 40);
      *(v15 + 40) = v14;

      v17 = MEMORY[0x277CCABB0];
      v18 = [v7 objectAtIndexedSubscript:1];
      v19 = [v17 numberWithInteger:{objc_msgSend(v18, "integerValue")}];
      v20 = *(*(a1 + 48) + 8);
      v21 = *(v20 + 40);
      *(v20 + 40) = v19;

      if (([*(*(*(a1 + 40) + 8) + 40) isEqual:&unk_283EE87C0] & 1) == 0 && !objc_msgSend(*(*(*(a1 + 48) + 8) + 40), "isEqual:", &unk_283EE87C0))
      {
        v32 = 1;
        goto LABEL_16;
      }

      v22 = objc_autoreleasePoolPush();
      v23 = *(a1 + 32);
      v24 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v25 = HMFGetLogIdentifier();
        v35 = 138543618;
        v36 = v25;
        v37 = 2112;
        v38 = v7;
        v26 = "%{public}@Invalid VP values in TXT record: %@";
LABEL_14:
        _os_log_impl(&dword_22AEAE000, v24, OS_LOG_TYPE_ERROR, v26, &v35, 0x16u);
      }
    }

    else
    {
      v22 = objc_autoreleasePoolPush();
      v23 = *(a1 + 32);
      v24 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v25 = HMFGetLogIdentifier();
        v35 = 138543618;
        v36 = v25;
        v37 = 2112;
        v38 = v6;
        v26 = "%{public}@Invalid VP value format in TXT record: %@";
        goto LABEL_14;
      }
    }

    objc_autoreleasePoolPop(v22);
    v32 = 0;
LABEL_16:

    goto LABEL_17;
  }

  v28 = objc_autoreleasePoolPush();
  v29 = *(a1 + 32);
  v30 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
  {
    v31 = HMFGetLogIdentifier();
    v35 = 138543618;
    v36 = v31;
    v37 = 1024;
    LODWORD(v38) = a3;
    _os_log_impl(&dword_22AEAE000, v30, OS_LOG_TYPE_INFO, "%{public}@Missing VP value in TXT record: %d", &v35, 0x12u);
  }

  objc_autoreleasePoolPop(v28);
  v32 = 0;
LABEL_17:
  v33 = *MEMORY[0x277D85DE8];
  return v32;
}

uint64_t __82__HMMTRAccessoryServerBrowser__discriminator_vendorID_productID_CM_fromTXTRecord___block_invoke_161(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v27 = *MEMORY[0x277D85DE8];
  if (a3 == 4)
  {
    v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:a4 length:a5 encoding:1];
    v7 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v6, "integerValue")}];
    v8 = *(*(a1 + 40) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    v10 = [*(*(*(a1 + 40) + 8) + 40) isEqual:&unk_283EE87C0];
    if (v10)
    {
      v11 = objc_autoreleasePoolPush();
      v12 = *(a1 + 32);
      v13 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = HMFGetLogIdentifier();
        v15 = *(*(*(a1 + 40) + 8) + 40);
        v23 = 138543618;
        v24 = v14;
        v25 = 2112;
        v26 = v15;
        _os_log_impl(&dword_22AEAE000, v13, OS_LOG_TYPE_ERROR, "%{public}@Invalid discriminator value in TXT record: %@", &v23, 0x16u);
      }

      objc_autoreleasePoolPop(v11);
    }

    v16 = v10 ^ 1u;
  }

  else
  {
    v17 = objc_autoreleasePoolPush();
    v18 = *(a1 + 32);
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = HMFGetLogIdentifier();
      v23 = 138543362;
      v24 = v20;
      _os_log_impl(&dword_22AEAE000, v19, OS_LOG_TYPE_INFO, "%{public}@Missing discriminator value in TXT record", &v23, 0xCu);
    }

    objc_autoreleasePoolPop(v17);
    v16 = 0;
  }

  v21 = *MEMORY[0x277D85DE8];
  return v16;
}

BOOL __82__HMMTRAccessoryServerBrowser__discriminator_vendorID_productID_CM_fromTXTRecord___block_invoke_163(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v19 = *MEMORY[0x277D85DE8];
  if (a3 == 4)
  {
    v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:a4 length:a5 encoding:1];
    v8 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v7, "integerValue")}];
    v9 = *(*(a1 + 40) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    v12 = *(a1 + 32);
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      v17 = 138543362;
      v18 = v14;
      _os_log_impl(&dword_22AEAE000, v13, OS_LOG_TYPE_INFO, "%{public}@Missing CM value in TXT record", &v17, 0xCu);
    }

    objc_autoreleasePoolPop(v11);
  }

  result = a3 == 4;
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_handleBonjourBrowserBatchResults
{
  v72 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    *buf = 138543362;
    v66 = v6;
    _os_log_impl(&dword_22AEAE000, v5, OS_LOG_TYPE_INFO, "%{public}@Handle bonjour results batch", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  obj = [(HMMTRAccessoryServerBrowser *)v4 bonjourBrowserChanges];
  v7 = v4;
  v51 = [obj countByEnumeratingWithState:&v61 objects:v71 count:16];
  if (v51)
  {
    v50 = *v62;
    v9 = 0x277CBE000uLL;
    *&v8 = 138543874;
    v46 = v8;
    v48 = v4;
    do
    {
      for (i = 0; i != v51; ++i)
      {
        if (*v62 != v50)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v61 + 1) + 8 * i);
        v12 = [v11 objectAtIndexedSubscript:{0, v46}];
        v13 = [v11 objectAtIndexedSubscript:1];
        v14 = [*(v9 + 2920) null];
        v15 = [v12 isEqual:v14];

        if (v15)
        {

          v12 = 0;
        }

        v16 = [*(v9 + 2920) null];
        v17 = [v13 isEqual:v16];

        if (v17)
        {

          v13 = 0;
        }

        v18 = objc_autoreleasePoolPush();
        v19 = v7;
        v20 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          v21 = HMFGetLogIdentifier();
          *buf = v46;
          v66 = v21;
          v67 = 2112;
          v68 = v12;
          v69 = 2112;
          v70 = v13;
          _os_log_impl(&dword_22AEAE000, v20, OS_LOG_TYPE_DEBUG, "%{public}@Batch result: %@ -> %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v18);
        changes = nw_browse_result_get_changes(v12, v13);
        v52 = v12;
        if ((changes & 0x22) != 0)
        {
          v23 = nw_browse_result_copy_txt_record_object(v13);
          v24 = objc_autoreleasePoolPush();
          v25 = v19;
          v26 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
          {
            v27 = HMFGetLogIdentifier();
            *buf = 138543618;
            v66 = v27;
            v67 = 2112;
            v68 = v23;
            _os_log_impl(&dword_22AEAE000, v26, OS_LOG_TYPE_DEBUG, "%{public}@New txt record: %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v24);
          if (v23)
          {
            v49 = v13;
            v59 = 0;
            v60 = 0;
            v57 = 0;
            v58 = 0;
            v28 = [(HMMTRAccessoryServerBrowser *)v25 _discriminator:&v60 vendorID:&v59 productID:&v58 CM:&v57 fromTXTRecord:v23];
            v29 = v60;
            v30 = v59;
            v31 = v58;
            v32 = v57;
            v33 = v32;
            if (!v28)
            {
              if ([v32 isEqual:&unk_283EE87C0])
              {
                [(HMMTRAccessoryServerBrowser *)v25 _handleBonjourRemoveWithDiscriminator:v29 vendorID:v30 productID:v31 txtRecordRemove:0];
              }

              else
              {
                [(HMMTRAccessoryServerBrowser *)v25 _handleBonjourAddOrUpdateWithDiscriminator:v29 vendorID:v30 productID:v31];
              }
            }

            v7 = v48;
            v13 = v49;
          }

          v9 = 0x277CBE000;
          v12 = v52;
        }

        if ((changes & 4) != 0)
        {
          v34 = nw_browse_result_copy_txt_record_object(v12);
          v35 = objc_autoreleasePoolPush();
          v36 = v19;
          v37 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
          {
            v38 = HMFGetLogIdentifier();
            *buf = 138543618;
            v66 = v38;
            v67 = 2112;
            v68 = v34;
            _os_log_impl(&dword_22AEAE000, v37, OS_LOG_TYPE_DEBUG, "%{public}@Removed txt record: %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v35);
          if (v34)
          {
            v55 = 0;
            v56 = 0;
            v53 = 0;
            v54 = 0;
            v39 = [(HMMTRAccessoryServerBrowser *)v36 _discriminator:&v56 vendorID:&v55 productID:&v54 CM:&v53 fromTXTRecord:v34];
            v40 = v56;
            v41 = v55;
            v42 = v54;
            v43 = v53;
            if (!v39)
            {
              [(HMMTRAccessoryServerBrowser *)v36 _handleBonjourRemoveWithDiscriminator:v40 vendorID:v41 productID:v42 txtRecordRemove:1];
            }

            v7 = v48;
            v9 = 0x277CBE000;
          }

          v12 = v52;
        }
      }

      v51 = [obj countByEnumeratingWithState:&v61 objects:v71 count:16];
    }

    while (v51);
  }

  v44 = [(HMMTRAccessoryServerBrowser *)v7 bonjourBrowserChanges];
  [v44 removeAllObjects];

  v45 = *MEMORY[0x277D85DE8];
}

- (void)_queueBonjourBrowserOldResult:(id)a3 newResult:(id)a4
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
    *buf = 138543874;
    v19 = v11;
    v20 = 2112;
    v21 = v6;
    v22 = 2112;
    v23 = v7;
    _os_log_impl(&dword_22AEAE000, v10, OS_LOG_TYPE_INFO, "%{public}@Queued bonjour old result: %@, new result: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  v12 = [(HMMTRAccessoryServerBrowser *)v9 bonjourBrowserChanges];
  v13 = v6;
  if (!v6)
  {
    v13 = [MEMORY[0x277CBEB68] null];
  }

  v17[0] = v13;
  v14 = v7;
  if (!v7)
  {
    v14 = [MEMORY[0x277CBEB68] null];
  }

  v17[1] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:2];
  [v12 addObject:v15];

  if (!v7)
  {

    if (v6)
    {
      goto LABEL_9;
    }

LABEL_11:

    goto LABEL_9;
  }

  if (!v6)
  {
    goto LABEL_11;
  }

LABEL_9:

  v16 = *MEMORY[0x277D85DE8];
}

- (int)_initializeAndStartBonjourBrowser
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = [(HMMTRAccessoryServerBrowser *)self bonjourBrowser];

  v4 = v3 == 0;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_INFO);
  if (v4)
  {
    if (v8)
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543362;
      v30 = v11;
      _os_log_impl(&dword_22AEAE000, v7, OS_LOG_TYPE_INFO, "%{public}@Starting Bonjour Browser...", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
    v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
    [(HMMTRAccessoryServerBrowser *)v6 setBonjourBrowserChanges:v12];

    bonjour_service = nw_browse_descriptor_create_bonjour_service("_matterc._udp", "local");
    nw_browse_descriptor_set_include_txt_record(bonjour_service, 1);
    v14 = nw_browser_create(bonjour_service, 0);
    if (v14)
    {
      [(HMMTRAccessoryServerBrowser *)v6 setBonjourBrowser:v14];
      v15 = [(HAPAccessoryServerBrowser *)v6 workQueue];
      nw_browser_set_queue(v14, v15);

      objc_initWeak(buf, v6);
      state_changed_handler[0] = MEMORY[0x277D85DD0];
      state_changed_handler[1] = 3221225472;
      state_changed_handler[2] = __64__HMMTRAccessoryServerBrowser__initializeAndStartBonjourBrowser__block_invoke;
      state_changed_handler[3] = &unk_2786EE9C8;
      objc_copyWeak(&v28, buf);
      v27 = v14;
      nw_browser_set_state_changed_handler(v27, state_changed_handler);
      v16 = [(HMMTRAccessoryServerBrowser *)v6 bonjourBrowser];
      handler[0] = MEMORY[0x277D85DD0];
      handler[1] = 3221225472;
      handler[2] = __64__HMMTRAccessoryServerBrowser__initializeAndStartBonjourBrowser__block_invoke_149;
      handler[3] = &unk_2786EE9F0;
      objc_copyWeak(&v25, buf);
      nw_browser_set_browse_results_changed_handler(v16, handler);

      v17 = [(HMMTRAccessoryServerBrowser *)v6 bonjourBrowser];
      nw_browser_start(v17);

      objc_destroyWeak(&v25);
      objc_destroyWeak(&v28);
      objc_destroyWeak(buf);
      v10 = 0;
    }

    else
    {
      v18 = objc_autoreleasePoolPush();
      v19 = v6;
      v20 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v21 = HMFGetLogIdentifier();
        *buf = 138543362;
        v30 = v21;
        _os_log_impl(&dword_22AEAE000, v20, OS_LOG_TYPE_ERROR, "%{public}@nw_browser_create failed", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v18);
      v10 = -6728;
    }
  }

  else
  {
    if (v8)
    {
      v9 = HMFGetLogIdentifier();
      *buf = 138543362;
      v30 = v9;
      _os_log_impl(&dword_22AEAE000, v7, OS_LOG_TYPE_INFO, "%{public}@Bonjour Browser already active", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
    v10 = 0;
  }

  v22 = *MEMORY[0x277D85DE8];
  return v10;
}

void __64__HMMTRAccessoryServerBrowser__initializeAndStartBonjourBrowser__block_invoke(uint64_t a1, int a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = objc_autoreleasePoolPush();
  v8 = WeakRetained;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v12 = 138543874;
    v13 = v10;
    v14 = 1024;
    v15 = a2;
    v16 = 2112;
    v17 = v5;
    _os_log_impl(&dword_22AEAE000, v9, OS_LOG_TYPE_INFO, "%{public}@Bonjour browser state: %d, error: %@", &v12, 0x1Cu);
  }

  objc_autoreleasePoolPop(v7);
  if (a2 == 2)
  {
    goto LABEL_6;
  }

  if (a2 == 3)
  {
    nw_browser_set_browse_results_changed_handler(*(a1 + 32), 0);
    nw_browser_set_state_changed_handler(*(a1 + 32), 0);
LABEL_6:
    [v8 setBonjourBrowser:0];
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __64__HMMTRAccessoryServerBrowser__initializeAndStartBonjourBrowser__block_invoke_149(uint64_t a1, void *a2, void *a3, int a4)
{
  v7 = a3;
  v8 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _queueBonjourBrowserOldResult:v8 newResult:v7];

  if (a4)
  {
    [WeakRetained _handleBonjourBrowserBatchResults];
  }
}

- (void)handleSystemKeychainStoreUpdatedNotification:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543362;
    v13 = v8;
    _os_log_impl(&dword_22AEAE000, v7, OS_LOG_TYPE_INFO, "%{public}@Handling system keychain store updated notification", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [(HAPAccessoryServerBrowser *)v6 workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __76__HMMTRAccessoryServerBrowser_handleSystemKeychainStoreUpdatedNotification___block_invoke;
  block[3] = &unk_2786F0CA8;
  block[4] = v6;
  dispatch_async(v9, block);

  v10 = *MEMORY[0x277D85DE8];
}

void __76__HMMTRAccessoryServerBrowser_handleSystemKeychainStoreUpdatedNotification___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) systemCommissionerControllerParams];
  [v2 handleKeyPairDataChanged];

  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 postNotificationName:@"HMMTRUserFabricKeyUpdatedNotification" object:*(a1 + 32)];
}

- (void)setDelegate:(id)a3 queue:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __49__HMMTRAccessoryServerBrowser_setDelegate_queue___block_invoke;
  v10[3] = &unk_2786EE9A0;
  objc_copyWeak(&v13, &location);
  v8 = v6;
  v11 = v8;
  v9 = v7;
  v12 = v9;
  [(HMMTRAccessoryServerBrowser *)self dispatchBlock:v10];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

void __49__HMMTRAccessoryServerBrowser_setDelegate_queue___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = objc_autoreleasePoolPush();
  v4 = WeakRetained;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v8 = 138543362;
    v9 = v6;
    _os_log_impl(&dword_22AEAE000, v5, OS_LOG_TYPE_INFO, "%{public}@Setting Delegate...", &v8, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  [v4 setDelegate:*(a1 + 32)];
  [v4 setDelegateQueue:*(a1 + 40)];

  v7 = *MEMORY[0x277D85DE8];
}

- (id)discoveredAccessoryServers
{
  v3 = [(HAPAccessoryServerBrowser *)self workQueue];
  dispatch_assert_queue_V2(v3);

  [(HMMTRAccessoryServerBrowser *)self _cleanupDiscoveredServers];
  discoveredAccessoryServers = self->_discoveredAccessoryServers;

  return discoveredAccessoryServers;
}

- (id)appleHomeFabricWithTargetFabricUUID:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(HMMTRAccessoryServerBrowser *)self storage];
    v6 = [v5 dataSource];
    v7 = [v6 appleHomeFabricWithTargetFabricUUID:v4];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)currentFabric
{
  v3 = [(HMMTRAccessoryServerBrowser *)self currentFabricUUID];
  v4 = [(HMMTRAccessoryServerBrowser *)self appleHomeFabricWithTargetFabricUUID:v3];

  return v4;
}

- (BOOL)_isWedPollingDisabledForTests
{
  v2 = [MEMORY[0x277D0F8D0] sharedPreferences];
  v3 = [v2 preferenceForKey:@"hmmtr.thread.wed.polling.disable"];
  v4 = [v3 BOOLValue];

  return v4;
}

- (NSData)systemCommissionerFabricRootPublicKey
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = [(HMMTRAccessoryServerBrowser *)self systemCommissionerNocSigner];
  v4 = v3;
  if (v3 && [v3 publicKey])
  {
    v5 = v4;
    goto LABEL_6;
  }

  v6 = [(HMMTRAccessoryServerBrowser *)self systemCommissionerControllerParams];
  v5 = [v6 v0MatterKeypairFromKeychain];

  if (v5 && [v5 publicKey])
  {
LABEL_6:
    v7 = SecKeyCopyExternalRepresentation([v5 publicKey], 0);
    if (v7)
    {
      v8 = v7;
      goto LABEL_14;
    }

    v9 = objc_autoreleasePoolPush();
    v14 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      v17 = 138543362;
      v18 = v12;
      v13 = "%{public}@Failed to fetch system commissioner fabric public key";
      goto LABEL_12;
    }

    goto LABEL_13;
  }

  v9 = objc_autoreleasePoolPush();
  v10 = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v12 = HMFGetLogIdentifier();
    v17 = 138543362;
    v18 = v12;
    v13 = "%{public}@Failed to fetch system commissioner fabric public key; Key-pair doesn't exist";
LABEL_12:
    _os_log_impl(&dword_22AEAE000, v11, OS_LOG_TYPE_ERROR, v13, &v17, 0xCu);
  }

LABEL_13:

  objc_autoreleasePoolPop(v9);
  v8 = 0;
LABEL_14:

  v15 = *MEMORY[0x277D85DE8];

  return v8;
}

- (void)dealloc
{
  homeKeychainReadyNotificationToken = self->_homeKeychainReadyNotificationToken;
  if (homeKeychainReadyNotificationToken)
  {
    notify_cancel(homeKeychainReadyNotificationToken);
  }

  mtsKeychainReadyNotificationToken = self->_mtsKeychainReadyNotificationToken;
  if (mtsKeychainReadyNotificationToken)
  {
    notify_cancel(mtsKeychainReadyNotificationToken);
  }

  if (self->_lockStateNotificationRegistered)
  {
    notify_cancel(self->_lockStateNotificationRegistrationToken);
  }

  v5.receiver = self;
  v5.super_class = HMMTRAccessoryServerBrowser;
  [(HMMTRAccessoryServerBrowser *)&v5 dealloc];
}

- (void)dispatchAfterConfiguration:(id)a3
{
  block = a3;
  if (isFeatureMatterRVCEnabled())
  {
    v4 = [(HMMTRAccessoryServerBrowser *)self configureDispatchGroup];
    v5 = [(HAPAccessoryServerBrowser *)self workQueue];
    dispatch_group_notify(v4, v5, block);
  }

  else
  {
    [(HMMTRAccessoryServerBrowser *)self dispatchBlock:block];
  }
}

- (void)configure
{
  v30 = *MEMORY[0x277D85DE8];
  [(HMMTRAccessoryServerBrowser *)self _logHMMTRFeatures];
  v3 = [MEMORY[0x277D0F8E8] productInfo];
  if ([v3 productPlatform] == 4 && !-[HMMTRAccessoryServerBrowser isCurrentDevicePrimaryResident](self, "isCurrentDevicePrimaryResident"))
  {
    v14 = [(HMMTRAccessoryServerBrowser *)self controllerFactoryEnablePerPrimaryResidentConfirmationToken];

    if (!v14)
    {
      v15 = objc_autoreleasePoolPush();
      v16 = self;
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v18 = HMFGetLogIdentifier();
        *buf = 138543362;
        v27 = v18;
        _os_log_impl(&dword_22AEAE000, v17, OS_LOG_TYPE_INFO, "%{public}@Disable controller factory operation while not a primary resident", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v15);
      v19 = [(HMMTRAccessoryServerBrowser *)v16 controllerFactory];
      v20 = [v19 disableNormalOperation];
      [(HMMTRAccessoryServerBrowser *)v16 setControllerFactoryEnablePerPrimaryResidentConfirmationToken:v20];
    }
  }

  else
  {
  }

  out_token = 0;
  objc_initWeak(&location, self);
  v4 = [(HAPAccessoryServerBrowser *)self workQueue];
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __40__HMMTRAccessoryServerBrowser_configure__block_invoke;
  handler[3] = &unk_2786EE978;
  objc_copyWeak(&v23, &location);
  v5 = notify_register_dispatch("com.apple.springboard.lockstate", &out_token, v4, handler);

  v6 = objc_autoreleasePoolPush();
  v7 = self;
  if (v5)
  {
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      *buf = 138543618;
      v27 = v9;
      v28 = 1024;
      v29 = v5;
      _os_log_impl(&dword_22AEAE000, v8, OS_LOG_TYPE_ERROR, "%{public}@Failed to register a handler for lock state notification with status: %u", buf, 0x12u);
    }

    objc_autoreleasePoolPop(v6);
  }

  else
  {
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543362;
      v27 = v11;
      _os_log_impl(&dword_22AEAE000, v10, OS_LOG_TYPE_INFO, "%{public}@Registered lock state notification handler", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    [(HMMTRAccessoryServerBrowser *)v7 setLockStateNotificationRegistrationToken:out_token];
  }

  [(HMMTRAccessoryServerBrowser *)v7 setLockStateNotificationRegistered:v5 == 0];
  if (isFeatureMatteriPhoneOnlyPairingControlForThreadEnabled() && CFPreferencesGetAppBooleanValue(@"StartThreadOnWake", @"/Library/Managed Preferences/mobile/com.apple.homed.plist", 0))
  {
    v12 = dispatch_time(0, 150000000);
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __40__HMMTRAccessoryServerBrowser_configure__block_invoke_141;
    v21[3] = &unk_2786F0CA8;
    v21[4] = v7;
    [(HMMTRAccessoryServerBrowser *)v7 dispatchAfter:v12 block:v21];
  }

  objc_destroyWeak(&v23);
  objc_destroyWeak(&location);
  v13 = *MEMORY[0x277D85DE8];
}

- (void)_logHMMTRFeatures
{
  v68 = *MEMORY[0x277D85DE8];
  if (!isFeatureMatteriPhoneOnlyPairingControlEnabled())
  {
    v6 = objc_autoreleasePoolPush();
    v12 = self;
    v8 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_9;
    }

    v10 = HMFGetLogIdentifier();
    v66 = 138543362;
    v67 = v10;
    v11 = "%{public}@iPhoneOnly Pairing and Control feature is disabled";
    goto LABEL_8;
  }

  v3 = [MEMORY[0x277D0F8E8] productInfo];
  v4 = [v3 productClass];

  if (v4 != 3)
  {
    v25 = [MEMORY[0x277D0F8E8] productInfo];
    v26 = [v25 productPlatform];

    if (v26 == 1)
    {
      AppBooleanValue = CFPreferencesGetAppBooleanValue(@"MatteriPhoneOnlyPairingForMacEnabled", @"/Library/Managed Preferences/mobile/com.apple.homed.plist", 0);
      v6 = objc_autoreleasePoolPush();
      v28 = self;
      v8 = HMFGetOSLogHandle();
      v29 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
      if (!AppBooleanValue)
      {
        if (v29)
        {
          v10 = HMFGetLogIdentifier();
          v66 = 138543362;
          v67 = v10;
          v11 = "%{public}@iPhoneOnly Pairing and Control feature for Mac is enabled";
          goto LABEL_8;
        }

        goto LABEL_9;
      }

      if (!v29)
      {
        goto LABEL_9;
      }

      v10 = HMFGetLogIdentifier();
      v66 = 138543362;
      v67 = v10;
      v11 = "%{public}@iPhoneOnly Pairing and Control feature for Mac is enabled through profile";
    }

    else
    {
      v63 = CFPreferencesGetAppBooleanValue(@"MatteriPhoneOnlyPairingEnabled", @"/Library/Managed Preferences/mobile/com.apple.homed.plist", 0);
      v6 = objc_autoreleasePoolPush();
      v64 = self;
      v8 = HMFGetOSLogHandle();
      v65 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
      if (!v63)
      {
        if (v65)
        {
          v10 = HMFGetLogIdentifier();
          v66 = 138543362;
          v67 = v10;
          v11 = "%{public}@iPhoneOnly Pairing and Control feature is enabled";
          goto LABEL_8;
        }

        goto LABEL_9;
      }

      if (!v65)
      {
        goto LABEL_9;
      }

      v10 = HMFGetLogIdentifier();
      v66 = 138543362;
      v67 = v10;
      v11 = "%{public}@iPhoneOnly Pairing and Control feature is enabled through profile";
    }

LABEL_8:
    _os_log_impl(&dword_22AEAE000, v8, OS_LOG_TYPE_DEFAULT, v11, &v66, 0xCu);

    goto LABEL_9;
  }

  v5 = CFPreferencesGetAppBooleanValue(@"MatteriPhoneOnlyPairingForIPadEnabled", @"/Library/Managed Preferences/mobile/com.apple.homed.plist", 0);
  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (!v9)
    {
      goto LABEL_9;
    }

    v10 = HMFGetLogIdentifier();
    v66 = 138543362;
    v67 = v10;
    v11 = "%{public}@iPhoneOnly Pairing and Control feature for iPad is enabled through profile";
    goto LABEL_8;
  }

  if (v9)
  {
    v10 = HMFGetLogIdentifier();
    v66 = 138543362;
    v67 = v10;
    v11 = "%{public}@iPhoneOnly Pairing and Control feature for iPad is enabled";
    goto LABEL_8;
  }

LABEL_9:

  objc_autoreleasePoolPop(v6);
  if (!isFeatureMatteriPhoneOnlyPairingControlForThreadEnabled())
  {
    v20 = objc_autoreleasePoolPush();
    v21 = self;
    v22 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_40;
    }

    v23 = HMFGetLogIdentifier();
    v66 = 138543362;
    v67 = v23;
    v24 = "%{public}@ThreadService feature is disabled";
    goto LABEL_39;
  }

  v13 = CFPreferencesGetAppBooleanValue(@"ThreadServiceEnabled", @"/Library/Managed Preferences/mobile/com.apple.homed.plist", 0);
  v14 = objc_autoreleasePoolPush();
  v15 = self;
  v16 = HMFGetOSLogHandle();
  v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
  if (v13)
  {
    if (!v17)
    {
      goto LABEL_22;
    }

    v18 = HMFGetLogIdentifier();
    v66 = 138543362;
    v67 = v18;
    v19 = "%{public}@ThreadService feature is enabled through profile";
  }

  else
  {
    if (!v17)
    {
      goto LABEL_22;
    }

    v18 = HMFGetLogIdentifier();
    v66 = 138543362;
    v67 = v18;
    v19 = "%{public}@ThreadService feature is enabled";
  }

  _os_log_impl(&dword_22AEAE000, v16, OS_LOG_TYPE_DEFAULT, v19, &v66, 0xCu);

LABEL_22:
  objc_autoreleasePoolPop(v14);
  v30 = CFPreferencesGetAppBooleanValue(@"StartThreadOnWake", @"/Library/Managed Preferences/mobile/com.apple.homed.plist", 0);
  v31 = objc_autoreleasePoolPush();
  v32 = v15;
  v33 = HMFGetOSLogHandle();
  v34 = os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT);
  if (v30)
  {
    if (!v34)
    {
      goto LABEL_28;
    }

    v35 = HMFGetLogIdentifier();
    v66 = 138543362;
    v67 = v35;
    v36 = "%{public}@StartThreadOnWake feature is enabled through profile";
  }

  else
  {
    if (!v34)
    {
      goto LABEL_28;
    }

    v35 = HMFGetLogIdentifier();
    v66 = 138543362;
    v67 = v35;
    v36 = "%{public}@StartThreadOnWake feature is disabled";
  }

  _os_log_impl(&dword_22AEAE000, v33, OS_LOG_TYPE_DEFAULT, v36, &v66, 0xCu);

LABEL_28:
  objc_autoreleasePoolPop(v31);
  v37 = CFPreferencesGetAppBooleanValue(@"StartThreadOnWakeBypassAccessoryRequirement", @"/Library/Managed Preferences/mobile/com.apple.homed.plist", 0);
  v38 = objc_autoreleasePoolPush();
  v39 = v32;
  v40 = HMFGetOSLogHandle();
  v41 = os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT);
  if (v37)
  {
    if (!v41)
    {
      goto LABEL_34;
    }

    v42 = HMFGetLogIdentifier();
    v66 = 138543362;
    v67 = v42;
    v43 = "%{public}@StartThreadOnWakeBypassAccessoryRequirement feature is enabled through profile";
  }

  else
  {
    if (!v41)
    {
      goto LABEL_34;
    }

    v42 = HMFGetLogIdentifier();
    v66 = 138543362;
    v67 = v42;
    v43 = "%{public}@StartThreadOnWakeBypassAccessoryRequirement feature is disabled";
  }

  _os_log_impl(&dword_22AEAE000, v40, OS_LOG_TYPE_DEFAULT, v43, &v66, 0xCu);

LABEL_34:
  objc_autoreleasePoolPop(v38);
  v44 = CFPreferencesGetAppBooleanValue(@"StartThreadOnWakeAllowHomeThreadStop", @"/Library/Managed Preferences/mobile/com.apple.homed.plist", 0);
  v20 = objc_autoreleasePoolPush();
  v45 = v39;
  v22 = HMFGetOSLogHandle();
  v46 = os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);
  if (v44)
  {
    if (!v46)
    {
      goto LABEL_40;
    }

    v23 = HMFGetLogIdentifier();
    v66 = 138543362;
    v67 = v23;
    v24 = "%{public}@StartThreadOnWakeAllowHomeThreadStop feature is enabled through profile";
  }

  else
  {
    if (!v46)
    {
      goto LABEL_40;
    }

    v23 = HMFGetLogIdentifier();
    v66 = 138543362;
    v67 = v23;
    v24 = "%{public}@StartThreadOnWakeAllowHomeThreadStop feature is disabled";
  }

LABEL_39:
  _os_log_impl(&dword_22AEAE000, v22, OS_LOG_TYPE_DEFAULT, v24, &v66, 0xCu);

LABEL_40:
  objc_autoreleasePoolPop(v20);
  if (_os_feature_enabled_impl())
  {
    v47 = objc_autoreleasePoolPush();
    v48 = self;
    v49 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_49;
    }

    v50 = HMFGetLogIdentifier();
    v66 = 138543362;
    v67 = v50;
    v51 = "%{public}@RVC feature is enabled";
  }

  else
  {
    v52 = HM_FEATURE_RVC_DEFAULTS_ENABLED();
    v47 = objc_autoreleasePoolPush();
    v53 = self;
    v49 = HMFGetOSLogHandle();
    v54 = os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT);
    if (v52)
    {
      if (!v54)
      {
        goto LABEL_49;
      }

      v50 = HMFGetLogIdentifier();
      v66 = 138543362;
      v67 = v50;
      v51 = "%{public}@RVC feature is enabled through profile";
    }

    else
    {
      if (!v54)
      {
        goto LABEL_49;
      }

      v50 = HMFGetLogIdentifier();
      v66 = 138543362;
      v67 = v50;
      v51 = "%{public}@RVC feature is disabled";
    }
  }

  _os_log_impl(&dword_22AEAE000, v49, OS_LOG_TYPE_DEFAULT, v51, &v66, 0xCu);

LABEL_49:
  objc_autoreleasePoolPop(v47);
  v55 = isFeatureMatterLocalFabricConfigEnabled();
  v56 = objc_autoreleasePoolPush();
  v57 = self;
  v58 = HMFGetOSLogHandle();
  v59 = os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT);
  if (v55)
  {
    if (v59)
    {
      v60 = HMFGetLogIdentifier();
      v66 = 138543362;
      v67 = v60;
      v61 = "%{public}@Local fabric config feature is enabled";
LABEL_54:
      _os_log_impl(&dword_22AEAE000, v58, OS_LOG_TYPE_DEFAULT, v61, &v66, 0xCu);
    }
  }

  else if (v59)
  {
    v60 = HMFGetLogIdentifier();
    v66 = 138543362;
    v67 = v60;
    v61 = "%{public}@Local fabric config feature is disabled";
    goto LABEL_54;
  }

  objc_autoreleasePoolPop(v56);
  v62 = *MEMORY[0x277D85DE8];
}

- (void)clearSuspendedActiveSecondaryClientFabricUUIDs
{
  os_unfair_lock_lock(&self->_fabricSetLock);
  [(NSMutableSet *)self->_suspendedActiveSecondaryClientFabricUUIDs removeAllObjects];

  os_unfair_lock_unlock(&self->_fabricSetLock);
}

- (void)addSuspendedActiveSecondaryClientFabricUUIDs:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_fabricSetLock);
  [(NSMutableSet *)self->_suspendedActiveSecondaryClientFabricUUIDs addObject:v4];

  os_unfair_lock_unlock(&self->_fabricSetLock);
}

- (id)suspendedActiveSecondaryClientFabricUUIDs
{
  os_unfair_lock_lock(&self->_fabricSetLock);
  v3 = [(NSMutableSet *)self->_suspendedActiveSecondaryClientFabricUUIDs copy];
  os_unfair_lock_unlock(&self->_fabricSetLock);

  return v3;
}

- (id)suspendedActiveClientFabricUUID
{
  os_unfair_lock_lock(&self->_fabricSetLock);
  v3 = [(NSUUID *)self->_suspendedActiveClientFabricUUID copy];
  os_unfair_lock_unlock(&self->_fabricSetLock);

  return v3;
}

- (void)setSuspendedActiveClientFabricUUID:(id)a3
{
  v6 = a3;
  os_unfair_lock_lock(&self->_fabricSetLock);
  v4 = v6;
  if (v6)
  {
    v4 = [(NSUUID *)v6 copy];
  }

  suspendedActiveClientFabricUUID = self->_suspendedActiveClientFabricUUID;
  self->_suspendedActiveClientFabricUUID = v4;

  os_unfair_lock_unlock(&self->_fabricSetLock);
}

- (void)removeFabricWithActiveSecondaryClients:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_fabricSetLock);
  [(NSMutableSet *)self->_fabricsWithActiveSecondaryClients removeObject:v4];

  os_unfair_lock_unlock(&self->_fabricSetLock);
}

- (void)addFabricWithActiveSecondaryClients:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_fabricSetLock);
  [(NSMutableSet *)self->_fabricsWithActiveSecondaryClients addObject:v4];

  os_unfair_lock_unlock(&self->_fabricSetLock);
}

- (void)removeFabricWithActiveClients:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_fabricSetLock);
  [(NSMutableSet *)self->_fabricsWithActiveClients removeObject:v4];

  os_unfair_lock_unlock(&self->_fabricSetLock);
}

- (void)addFabricWithActiveClients:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_fabricSetLock);
  [(NSMutableSet *)self->_fabricsWithActiveClients addObject:v4];

  os_unfair_lock_unlock(&self->_fabricSetLock);
}

- (NSSet)fabricsWithActiveSecondaryClients
{
  os_unfair_lock_lock(&self->_fabricSetLock);
  v3 = [(NSMutableSet *)self->_fabricsWithActiveSecondaryClients copy];
  os_unfair_lock_unlock(&self->_fabricSetLock);

  return v3;
}

- (NSSet)fabricsWithActiveClients
{
  os_unfair_lock_lock(&self->_fabricSetLock);
  v3 = [(NSMutableSet *)self->_fabricsWithActiveClients copy];
  os_unfair_lock_unlock(&self->_fabricSetLock);

  return v3;
}

- (id)_populateControllerFactoryParams
{
  if ([(HMMTRAccessoryServerBrowser *)self _isPerControllerStorageEnabled])
  {
    v3 = 0;
  }

  else
  {
    v3 = +[HMMTRControllerFactory factoryParamsWithCommonStorage];
    v4 = [(HMMTRAttestationDataStore *)self->_attestationDataStore paaCertificates];
    [v3 setProductAttestationAuthorityCertificates:v4];

    v5 = [(HMMTRAttestationDataStore *)self->_attestationDataStore cdCertificates];
    [v3 setCertificationDeclarationCertificates:v5];

    if ((_os_feature_enabled_impl() & 1) != 0 || CFPreferencesGetAppBooleanValue(@"MatterOTA", @"/Library/Managed Preferences/mobile/com.apple.homed.plist", 0))
    {
      [v3 setOtaProviderDelegate:self->_otaProviderDelegate];
    }
  }

  return v3;
}

- (HMMTRAccessoryServerBrowser)initWithQueue:(id)a3 storeDirectoryURL:(id)a4 dataSource:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v94.receiver = self;
  v94.super_class = HMMTRAccessoryServerBrowser;
  v11 = [(HAPAccessoryServerBrowser *)&v94 initWithQueue:v8];
  if (v11)
  {
    v12 = [MEMORY[0x277CBEB58] set];
    discoveredAccessoryServers = v11->_discoveredAccessoryServers;
    v11->_discoveredAccessoryServers = v12;

    v14 = [MEMORY[0x277CBEB58] set];
    stagedAccessoryServers = v11->_stagedAccessoryServers;
    v11->_stagedAccessoryServers = v14;

    v16 = [[HMMTRStorageEventDispatcher alloc] initWithQueue:v8];
    storage = v11->_storage;
    v11->_storage = v16;

    [(HMMTRStorageEventDispatcher *)v11->_storage setDelegate:v11];
    v18 = objc_alloc_init(HMMTRResidentStateManager);
    residentStateManager = v11->_residentStateManager;
    v11->_residentStateManager = v18;

    v11->_browserState = 0;
    [(HMMTRResidentStateManager *)v11->_residentStateManager setDelegate:v11];
    v11->_fabricSetLock._os_unfair_lock_opaque = 0;
    v20 = [MEMORY[0x277CBEB58] set];
    fabricsWithActiveClients = v11->_fabricsWithActiveClients;
    v11->_fabricsWithActiveClients = v20;

    v22 = [MEMORY[0x277CBEB58] set];
    fabricsWithActiveSecondaryClients = v11->_fabricsWithActiveSecondaryClients;
    v11->_fabricsWithActiveSecondaryClients = v22;

    v24 = [MEMORY[0x277CBEB40] orderedSet];
    fabricsWithActiveConnections = v11->_fabricsWithActiveConnections;
    v11->_fabricsWithActiveConnections = v24;

    v26 = [MEMORY[0x277CBEB40] orderedSet];
    fabricsWithPendingConnections = v11->_fabricsWithPendingConnections;
    v11->_fabricsWithPendingConnections = v26;

    v28 = [MEMORY[0x277CBEB58] set];
    suspendedActiveSecondaryClientFabricUUIDs = v11->_suspendedActiveSecondaryClientFabricUUIDs;
    v11->_suspendedActiveSecondaryClientFabricUUIDs = v28;

    v11->_connectionRequestSuspended = 0;
    v30 = [MEMORY[0x277CBEB58] set];
    allowedNodeIDsForConnectionRequests = v11->_allowedNodeIDsForConnectionRequests;
    v11->_allowedNodeIDsForConnectionRequests = v30;

    v11->_commissioneeAccessoryServerLock._os_unfair_lock_opaque = 0;
    v32 = [v10 makeThreadRadioManagerWithBrowser:v11];
    threadRadioManager = v11->_threadRadioManager;
    v11->_threadRadioManager = v32;

    v34 = [v9 URLByAppendingPathComponent:@"chip-vendor-metadata"];
    v35 = [v34 URLByAppendingPathExtension:@"plist"];

    v93 = v35;
    v36 = [[HMMTRVendorMetadataFileStore alloc] initWithFileURL:v35];
    vendorMetadataStore = v11->_vendorMetadataStore;
    v11->_vendorMetadataStore = v36;

    v38 = [v9 URLByAppendingPathComponent:@"chip-attestation-data-store"];
    v39 = [v38 URLByAppendingPathExtension:@"plist"];

    v40 = [[HMMTRAttestationDataStore alloc] initWithFileURL:v39];
    attestationDataStore = v11->_attestationDataStore;
    v11->_attestationDataStore = v40;

    v42 = [[HMMTRUIDialogPresenter alloc] initWithQueue:v8 context:v11];
    uiDialogPresenter = v11->_uiDialogPresenter;
    v11->_uiDialogPresenter = v42;

    v44 = [[HMMTRAttestationStatus alloc] initWithQueue:v8 uiDialogPresenter:v11->_uiDialogPresenter failSafeExpiryTimeoutSecs:&unk_283EE87A8];
    attestationStatus = v11->_attestationStatus;
    v11->_attestationStatus = v44;

    v92 = [[HMMTRUserAuthorizationForPairing alloc] initWithUiDialogPresenter:v11->_uiDialogPresenter];
    [(HMMTRAttestationStatus *)v11->_attestationStatus setUserAuthorizationDelegate:?];
    if ((_os_feature_enabled_impl() & 1) != 0 || CFPreferencesGetAppBooleanValue(@"MatterOTA", @"/Library/Managed Preferences/mobile/com.apple.homed.plist", 0))
    {
      v46 = [[HMMTRSoftwareUpdateProvider alloc] initWithQueue:v8 browser:v11];
      softwareUpdateProvider = v11->_softwareUpdateProvider;
      v11->_softwareUpdateProvider = v46;

      v48 = [[HMMTROTAProviderDelegate alloc] initWithQueue:v8 browser:v11];
      otaProviderDelegate = v11->_otaProviderDelegate;
      v11->_otaProviderDelegate = v48;

      v50 = [[HMMTRThreadSoftwareUpdateController alloc] initWithQueue:v8 browser:v11];
      threadSoftwareUpdateController = v11->_threadSoftwareUpdateController;
      v11->_threadSoftwareUpdateController = v50;
    }

    v52 = [v10 makeSystemCommissionerPairingManagerWithQueue:v8 browser:v11];
    systemCommissionerPairingManager = v11->_systemCommissionerPairingManager;
    v11->_systemCommissionerPairingManager = v52;

    v11->_requestedBLEScan = 0;
    v11->_bleScanActive = 0;
    v11->_restartCount = 0;
    v54 = [MEMORY[0x277CBEB58] set];
    nodesWithPendingACLOverwrite = v11->_nodesWithPendingACLOverwrite;
    v11->_nodesWithPendingACLOverwrite = v54;

    v11->_systemCommissionerFeatureEnabled = [(HMMTRAccessoryServerBrowser *)v11 _isSystemCommissionerFeaturePreferenceEnabled];
    v56 = [v10 makeMatterKeypair];
    ownerSharedOperationalKeyPair = v11->_ownerSharedOperationalKeyPair;
    v11->_ownerSharedOperationalKeyPair = v56;

    v58 = objc_alloc_init(HMMTRRegulatoryInfo);
    regulatoryInfo = v11->_regulatoryInfo;
    v11->_regulatoryInfo = v58;

    v60 = [MEMORY[0x277CBEB58] set];
    nodesAddedToHome = v11->_nodesAddedToHome;
    v11->_nodesAddedToHome = v60;

    v62 = [MEMORY[0x277CCAB98] defaultCenter];
    v63 = *MEMORY[0x277CFE930];
    v64 = [MEMORY[0x277CFEC78] systemStore];
    [v62 addObserver:v11 selector:sel_handleSystemKeychainStoreUpdatedNotification_ name:v63 object:v64];

    v65 = [MEMORY[0x277CCAB98] defaultCenter];
    [v65 addObserver:v11 selector:sel_handleThreadNetworkStateChangedNotification_ name:@"HMMTRThreadRadioStateChangedNotification" object:0];

    v66 = [HMMTRControllerFactory alloc];
    v67 = dispatch_queue_create("HMMTRControllerFactory queue", 0);
    v68 = [(HMMTRAccessoryServerBrowser *)v11 _populateControllerFactoryParams];
    v69 = [(HMMTRControllerFactory *)v66 initWithWorkQueue:v67 factoryParams:v68];
    controllerFactory = v11->_controllerFactory;
    v11->_controllerFactory = v69;

    v71 = [HMMTRFabricControllerStore alloc];
    v72 = dispatch_queue_create("HMMTRFabricControllerStore queue", 0);
    v73 = [(HMMTRFabricControllerStore *)v71 initWithQueue:v72 controllerFactory:v11->_controllerFactory];
    homeFabricControllers = v11->_homeFabricControllers;
    v11->_homeFabricControllers = v73;

    v75 = [HMMTRSystemCommissionerControllerParams alloc];
    v76 = dispatch_queue_create("HMMTRSystemCommissionerControllerParams queue", 0);
    v77 = [(HMMTRSystemCommissionerControllerParams *)v75 initWithQueue:v76 controllerFactory:v11->_controllerFactory];
    systemCommissionerControllerParams = v11->_systemCommissionerControllerParams;
    v11->_systemCommissionerControllerParams = v77;

    if ([(HMMTRAccessoryServerBrowser *)v11 _isSystemCommissionerFeaturePreferenceEnabled]&& [(HMMTRAccessoryServerBrowser *)v11 _isPerControllerStorageEnabled])
    {
      v79 = [(HMMTRAttestationDataStore *)v11->_attestationDataStore paaCertificates];
      [(HMMTRSystemCommissionerControllerParams *)v11->_systemCommissionerControllerParams setProductAttestationAuthorityCertificates:v79];

      v80 = [(HMMTRAttestationDataStore *)v11->_attestationDataStore cdCertificates];
      [(HMMTRSystemCommissionerControllerParams *)v11->_systemCommissionerControllerParams setCertificationDeclarationCertificates:v80];
    }

    v81 = objc_alloc_init(HMMTRPairingWindowInfoTable);
    pairingWindowInfoTable = v11->_pairingWindowInfoTable;
    v11->_pairingWindowInfoTable = v81;

    v83 = [MEMORY[0x277CBEB18] array];
    deviceControllerHandlers = v11->_deviceControllerHandlers;
    v11->_deviceControllerHandlers = v83;

    v85 = dispatch_group_create();
    configureDispatchGroup = v11->_configureDispatchGroup;
    v11->_configureDispatchGroup = v85;

    v11->_pairingTargetFabricDataLock._os_unfair_lock_opaque = 0;
    v87 = [MEMORY[0x277CBEB38] dictionary];
    fabricDataPerPairingTargetFabricUUID = v11->_fabricDataPerPairingTargetFabricUUID;
    v11->_fabricDataPerPairingTargetFabricUUID = v87;

    v89 = [MEMORY[0x277CCAD78] UUID];
    systemCommissionerFabricUUID = v11->_systemCommissionerFabricUUID;
    v11->_systemCommissionerFabricUUID = v89;
  }

  return v11;
}

uint64_t __42__HMMTRAccessoryServerBrowser_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v371;
  logCategory__hmf_once_v371 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end