@interface HMDAccessoryBrowser
+ (id)logCategory;
- (BOOL)__isAccessoryBrowsingRequested;
- (BOOL)__isMediaAccessoryBrowsingRequested;
- (BOOL)_isAccessoryServerTombstoned:(id)a3;
- (BOOL)_isHomeHubAvailableWithConfiguration:(id)a3;
- (BOOL)_isHomeHubMatterSharedAdminPairingCapableWithConfiguration:(id)a3;
- (BOOL)_isOwnerPairingAccessoryWithConfiguration:(id)a3;
- (BOOL)_isPrimaryResidentReachableWithConfiguration:(id)a3;
- (BOOL)_shouldAccessoryServerBeTombstoned:(id)a3;
- (BOOL)areThereAnyAssociatedAirPlayAccessories;
- (BOOL)areThereAnyPairedAccessories;
- (BOOL)areThereAnyPairedBTLEAccessories;
- (BOOL)areThereAnyPairedUnknownLinkTypeAccessories;
- (BOOL)doesLinkTypeNumber:(uint64_t)a3 matchLinkType:;
- (BOOL)internalDiscoveryRequest;
- (BOOL)isDiscoveringAccessoriesWithLinkType:(int64_t)a3;
- (BOOL)isServerLinkTypeBrowseable:(int64_t)a3;
- (BOOL)isThreadAccessoryWithAccessoryServerIdentifier:(id)a3;
- (BOOL)supportsCommissioningCertificateRetrievalForCurrentlyPairingAccessory;
- (BOOL)supportsCommissioningCertificateRetrievalForHomeUUID:(id)a3;
- (HMDAccessoryBrowser)initWithMessageDispatcher:(id)a3;
- (HMDAccessoryBrowser)initWithMessageDispatcher:(id)a3 injectedSettings:(id)a4;
- (HMDAccessoryBrowserManagerDelegate)managerDelegate;
- (HMDAccessoryBrowserUnpairedAccessoryManagerDelegate)unpairedAccessoryManagerDelegate;
- (HMDHomeManager)homeManager;
- (HMDUnassociatedWACAccessory)getActiveWACSession;
- (NSArray)deviceSetupMediaAccessories;
- (NSArray)unassociatedAccessories;
- (NSArray)unassociatedMediaAccessories;
- (NSArray)unpairedHAPAccessories;
- (NSMutableArray)pairedAccessories;
- (id)__identifiersOfPairedAccessoriesWithTransports:(unint64_t)a3;
- (id)_currentPairingProgressHandlerForAccessoryUUID:(id)a3;
- (id)_getHAPMetadataFromHMMetadata:(id)a3;
- (id)_pairingInformationForAccessoryIdentifier:(id)a3;
- (id)_pairingInformationForUnpairedAccessory:(id)a3;
- (id)_progressHandlerForUnpairedAccessory:(id)a3;
- (id)_requiredCharacteristicsTypesToReadFromBTLEServer:(id)a3;
- (id)_setPairingTargetFabricUUIDWithServer:(id)a3 homeUUID:(id)a4;
- (id)_tombstonedAccessoryServerWithServerIdentifier:(id)a3;
- (id)_unassociatedMediaAccessoryWithIdentifier:(id)a3;
- (id)_unpairedAccessoryMatchingPairingInfo:(id)a3;
- (id)beginActiveAssertionWithReason:(id)a3;
- (id)browsingConnections;
- (id)currentControllerPairingIdentity;
- (id)demoAccessoryServerBrowser;
- (id)discoveredAccessoryServers;
- (id)dumpBrowsingConnections;
- (id)dumpRegisteredPairedAccessories;
- (id)dumpUnassociatedAccessories;
- (id)findAccessoryServerForAccessoryDescription:(id)a3;
- (id)identifiersOfPairedUnknownLinkTypeAccessories;
- (id)messageDestination;
- (id)pairedAccessoryInformationWithIdentifier:(id)a3;
- (id)pairedAccessoryInformationWithSetupID:(id)a3;
- (id)pairedHMDHAPAccessoryWithAccessoryServer:(id)a3;
- (id)pairedHMDHAPAccessoryWithAccessoryServerIdentifier:(id)a3;
- (id)unassociatedAccessoriesForClientRequest:(id)a3;
- (id)unpairedAccessoryForServer:(id)a3;
- (id)unpairedAccessoryWithServerIdentifier:(id)a3;
- (id)unpairedAccessoryWithUUID:(id)a3;
- (id)unpairedHAPAccessoryWithAccessoryDescription:(id)a3;
- (unint64_t)numPairedIPAccessories;
- (void)__activate;
- (void)__addBrowsingConnection:(id)a3;
- (void)__handleProcessStateChange:(id)a3;
- (void)__inactivate;
- (void)__removeBrowsingObserver:(id)a3 error:(id)a4;
- (void)__resetBrowsingConnections;
- (void)_accessoryServer:(id)a3 didStopPairingWithError:(id)a4 matterPairingEndContext:(id)a5;
- (void)_accessoryServerBrowser:(id)a3 didRemoveAccessoryServer:(id)a4 error:(id)a5 matterPairingEndContext:(id)a6;
- (void)_addDiscoveredAccessoryServerIdentifier:(id)a3;
- (void)_addReconfirmTimer:(id)a3 accessoryServer:(id)a4;
- (void)_addUnpairedAccessoryForServer:(id)a3;
- (void)_associate:(BOOL)a3 hapAccessoryWithAdvertisement:(id)a4;
- (void)_associateMediaAccessoryForServer:(id)a3;
- (void)_btleAccessoryReachabilityProbeTimer:(BOOL)a3;
- (void)_callProgressOrErrorOut:(id)a3 pairingInfo:(id)a4 accessoryInfo:(id)a5 unpairedAccessory:(id)a6 progress:(int64_t)a7 certStatus:(unint64_t)a8;
- (void)_cancelCurrentlyPairingAccessories:(int64_t)a3 linkType:(id)a4;
- (void)_cancelPairingWithAccessory:(id)a3 error:(id)a4 context:(id)a5;
- (void)_cancelPairingWithAccessoryDescription:(id)a3 error:(id)a4 context:(id)a5;
- (void)_checkIfPairingWithPairedAccessoryServer:(id)a3 errorCode:(int64_t)a4;
- (void)_discoverAccessories:(id)a3;
- (void)_discoverAccessoryServer:(id)a3 linkType:(int64_t)a4 errorHandler:(id)a5;
- (void)_handleAddedAccessory:(id)a3;
- (void)_handleAddedAccessoryAdvertisements:(id)a3;
- (void)_handleCurrentWiFiNetworkChangedNotification:(id)a3;
- (void)_handlePairingInterruptedTimeout:(id)a3 error:(id)a4;
- (void)_handleRemovedAccessory:(id)a3;
- (void)_handleRemovedAccessoryAdvertisements:(id)a3;
- (void)_handleRemovedUnpairedHAPAccessory:(id)a3;
- (void)_handleRequestFetchNewAccessories:(id)a3;
- (void)_handleRequestFetchVendorMetadataProductData:(id)a3;
- (void)_handleRequestFetchVendorMetadataVendorData:(id)a3;
- (void)_handleRequestFetchVendorModelEntryForManufacturer:(id)a3;
- (void)_handleRequestFetchVendorModelEntryForProductData:(id)a3;
- (void)_handleRequestSearchForNewAccessories:(id)a3;
- (void)_handleSetupCodeAvailable:(id)a3;
- (void)_handleWACAccessoryFound;
- (void)_notifyDelegateOfAccessoryServer:(id)a3 didDiscoverAccessories:(id)a4 transaction:(id)a5 error:(id)a6;
- (void)_notifyDelegateOfAccessoryServer:(id)a3 didStopPairingWithError:(id)a4;
- (void)_notifyDelegateOfAccessoryServer:(id)a3 didUpdateCategory:(id)a4;
- (void)_notifyDelegateOfAccessoryServerNeedingReprovisioning:(id)a3 error:(id)a4;
- (void)_notifyDelegateOfDiscoveryFailure:(id)a3 accessoryServer:(id)a4 linkType:(int64_t)a5;
- (void)_notifyDelegateOfRemovedAccessoryServer:(id)a3 error:(id)a4;
- (void)_notifyDelegateOfTombstonedAccessoryServer:(id)a3;
- (void)_notifyDelegateOfWACCompletionForAccessoryServerWithIdentifier:(id)a3 error:(id)a4;
- (void)_notifyManagerOfNewAccessory;
- (void)_pairAccessory:(id)a3 configuration:(id)a4 completionHandler:(id)a5;
- (void)_pairAccessoryWithDescription:(id)a3 configuration:(id)a4 progressHandler:(id)a5 completionHandler:(id)a6;
- (void)_promptForPairingPasswordForServer:(id)a3 reason:(id)a4;
- (void)_registerForMessages;
- (void)_registerForNotifications;
- (void)_removeBrowsingConnection:(id)a3 error:(id)a4;
- (void)_removeDiscoveredAccessoryServerIdentifier:(id)a3;
- (void)_removePairingInformation:(id)a3 error:(id)a4 context:(id)a5;
- (void)_removePairingInformationForUnpairedAccessory:(id)a3;
- (void)_reprovisionAccessoryWithIdentifier:(id)a3 wiFiPSK:(id)a4 countryCode:(id)a5 withCompletion:(id)a6;
- (void)_restartBrowsers;
- (void)_resurrectAccessoryServer:(id)a3;
- (void)_sendNewAccessoryData:(id)a3 messageName:(id)a4;
- (void)_sendPairingCompletionStatusForServer:(id)a3 error:(id)a4 matterPairingEndContext:(id)a5 completionHandler:(id)a6;
- (void)_setBTLEPowerChangeCompletionHandler;
- (void)_setupHMMTRAccessoryServer:(id)a3 pairingInfo:(id)a4;
- (void)_startDiscoveringAccessoriesNeedingReprovisioning;
- (void)_startDiscoveringAccessoriesWithLinkType:(id)a3;
- (void)_startDiscoveringMediaAccessories;
- (void)_startDiscoveringPairedAccessories:(id)a3;
- (void)_startDiscoveryForAccessoryServerBrowser:(id)a3;
- (void)_startPairingInterruptionTimer:(id)a3;
- (void)_stopBtleAccessoryReachabilityProbeTimer;
- (void)_stopDiscoveringAccessoriesWithError:(id)a3;
- (void)_stopDiscoveringAccessoriesWithLinkType:(id)a3 force:(BOOL)a4 error:(id)a5;
- (void)_stopDiscoveringMediaAccessories;
- (void)_stopDiscoveryForAccessoryServerBrowser:(id)a3;
- (void)_stopReconfirmTimer:(id)a3;
- (void)_stopReprovisioningTimerHandler;
- (void)_tombstoneAccessoryServer:(id)a3 forceNotify:(BOOL)a4;
- (void)_updateHasActiveWACPairing:(int64_t)a3;
- (void)_updatePairingRetryTimerForAccessory:(id)a3 delay:(int64_t)a4;
- (void)accessoryServer:(id)a3 authenticateUUID:(id)a4 token:(id)a5;
- (void)accessoryServer:(id)a3 confirmUUID:(id)a4 token:(id)a5;
- (void)accessoryServer:(id)a3 didDisconnectWithError:(id)a4;
- (void)accessoryServer:(id)a3 didDiscoverAccessories:(id)a4 transaction:(id)a5 error:(id)a6;
- (void)accessoryServer:(id)a3 didFinishAuth:(id)a4;
- (void)accessoryServer:(id)a3 didReadCommissioneeInfo:(id)a4;
- (void)accessoryServer:(id)a3 didReceiveBadPasswordThrottleAttemptsWithDelay:(int64_t)a4;
- (void)accessoryServer:(id)a3 didStopPairingWithError:(id)a4 matterPairingEndContext:(id)a5;
- (void)accessoryServer:(id)a3 didUpdateCategory:(id)a4;
- (void)accessoryServer:(id)a3 didUpdateMatterDeviceTypeID:(id)a4;
- (void)accessoryServer:(id)a3 didUpdateName:(id)a4;
- (void)accessoryServer:(id)a3 didUpdateWakeNumber:(id)a4;
- (void)accessoryServer:(id)a3 promptUserForPasswordWithType:(unint64_t)a4;
- (void)accessoryServer:(id)a3 promtDialog:(id)a4 forNotCertifiedAccessory:(id)a5 completion:(id)a6;
- (void)accessoryServer:(id)a3 requestUserPermission:(int64_t)a4 accessoryInfo:(id)a5 error:(id)a6;
- (void)accessoryServer:(id)a3 updatePairingProgress:(int64_t)a4;
- (void)accessoryServer:(id)a3 validateCert:(id)a4 model:(id)a5;
- (void)accessoryServer:(id)a3 validateUUID:(id)a4 token:(id)a5 model:(id)a6;
- (void)accessoryServerBrowser:(id)a3 didFailToDiscoverAccessoryServerWithIdentifier:(id)a4;
- (void)accessoryServerBrowser:(id)a3 didFindAccessoryServerForReprovisioning:(id)a4;
- (void)accessoryServerBrowser:(id)a3 didFinishPairingForAccessoryServer:(id)a4;
- (void)accessoryServerBrowser:(id)a3 didFinishWACForAccessoryWithIdentifier:(id)a4 error:(id)a5;
- (void)accessoryServerBrowser:(id)a3 didRemoveAccessoryServer:(id)a4 error:(id)a5 matterPairingEndContext:(id)a6;
- (void)accessoryServerBrowser:(id)a3 didStartDiscoveringWithError:(id)a4;
- (void)accessoryServerBrowser:(id)a3 didStopDiscoveringWithError:(id)a4;
- (void)accessoryServerBrowser:(id)a3 getCacheForAccessoryWithIdentifier:(id)a4 withCompletion:(id)a5;
- (void)accessoryServerBrowser:(id)a3 getCommissioningCertificatesForNodeID:(id)a4 fabricID:(id)a5 publicKey:(id)a6 completion:(id)a7;
- (void)accessoryServerBrowser:(id)a3 getThreadNetworkCredentialsForAccessoryWithIdentifier:(id)a4 withCompletion:(id)a5;
- (void)accessoryServerBrowser:(id)a3 saveCache:(id)a4 serverIdentifier:(id)a5;
- (void)accessoryServerDidUpdateStateNumber:(id)a3;
- (void)accessoryServerNeedsOwnershipToken:(id)a3;
- (void)activate:(BOOL)a3;
- (void)addPairedAccessory:(id)a3;
- (void)addUnassociatedMediaAccessory:(id)a3 forDeviceSetup:(BOOL)a4;
- (void)addUnassociatedWACAccessory:(id)a3;
- (void)addUnpairedAccessoryServer:(id)a3 identifier:(id)a4;
- (void)addUnpairedHAPAccessory:(id)a3;
- (void)browser:(id)a3 didAddAdvertisements:(id)a4;
- (void)browser:(id)a3 didFindAssociatedMediaAccessory:(id)a4;
- (void)browser:(id)a3 didLoseAssociatedMediaAccessory:(id)a4 error:(id)a5;
- (void)browser:(id)a3 didRemoveAdvertisements:(id)a4;
- (void)browser:(id)a3 didRemoveSessions:(id)a4;
- (void)browser:(id)a3 didUpdateEndpoints:(id)a4;
- (void)btleAccessoryReachabilityProbeTimer:(BOOL)a3;
- (void)cancelPairingWithAccessory:(id)a3 error:(id)a4 context:(id)a5;
- (void)cancelPairingWithAccessoryDescription:(id)a3 error:(id)a4 context:(id)a5;
- (void)configureAccessory:(id)a3 trackState:(BOOL)a4 connectionPriority:(BOOL)a5;
- (void)configureWithHomeManager:(id)a3 mediaBrowserFactory:(id)a4;
- (void)continueAddingAccessoryToHomeAfterUserConfirmation:(id)a3 withError:(id)a4;
- (void)currentlyFoundHAPAccessoryServerWithIdentifier:(id)a3 linkType:(int64_t)a4 completion:(id)a5;
- (void)dealloc;
- (void)deregisterPairedAccessory:(id)a3;
- (void)didFinishActivation:(id)a3 context:(id)a4;
- (void)didReceiveUserConsentResponseForSetupAccessoryDetail:(id)a3 consent:(BOOL)a4;
- (void)discoverAccessories:(id)a3;
- (void)discoverAccessoryServer:(id)a3 linkType:(int64_t)a4 errorHandler:(id)a5;
- (void)endActiveAssertion:(id)a3;
- (void)evaluateAccessoryDiscoveryState;
- (void)handleActivationResponse:(id)a3 context:(id)a4;
- (void)handleAddedAccessory:(id)a3;
- (void)handleConnectionDeactivation:(id)a3;
- (void)handleConnectionUpdateWithBonjourDeviceInfo:(id)a3 socketInfo:(id)a4;
- (void)handleNewlyPairedAccessory:(id)a3 linkType:(int64_t)a4;
- (void)handlePPIDInfoResponse:(id)a3 context:(id)a4 error:(id)a5;
- (void)handleRemovedAccessory:(id)a3;
- (void)handleSetupCodeAvailable:(id)a3;
- (void)handleXPCConnectionInvalidated:(id)a3;
- (void)homeLocationChangeNotification:(id)a3;
- (void)notifyMTRMetrics:(id)a3;
- (void)notifyMatterAccessoryIsWEDAccessory:(id)a3;
- (void)notifyMatterAccessoryMatchingCommissioningDiscriminatorDiscovered;
- (void)notifyMatterAccessoryPairingStep:(unint64_t)a3;
- (void)notifyMatterAccessoryThreadCapabilities:(id)a3;
- (void)notifyMatterAccessoryVendorID:(id)a3 productID:(id)a4 deviceType:(id)a5;
- (void)notifySupportedLinkLayerTypes:(id)a3;
- (void)notifyUnauthenticatedMatterAccessoryPromptEnded;
- (void)notifyUnauthenticatedMatterAccessoryPromptStarted;
- (void)pairAccessory:(id)a3 configuration:(id)a4 completionHandler:(id)a5;
- (void)pairAccessoryWithDescription:(id)a3 configuration:(id)a4 progressHandler:(id)a5 completionHandler:(id)a6;
- (void)populateUnassociatedCurrentAccessory;
- (void)probeReachabilityForBTLEAccessoryServersWithIdentifiers:(id)a3 forceScan:(BOOL)a4 withCompletion:(id)a5;
- (void)registerPairedAccessory:(id)a3 transports:(unint64_t)a4 setupHash:(id)a5 delegate:(id)a6;
- (void)registerProgressHandler:(id)a3 unpairedAccessoryUUID:(id)a4;
- (void)removePairedAccessory:(id)a3;
- (void)removePairedAccessoryInfoWithIdentifier:(id)a3;
- (void)removePairingInformationForAccessoryServer:(id)a3;
- (void)removeUnassociatedAccessory:(id)a3 completion:(id)a4;
- (void)removeUnassociatedAccessoryWithIdentifier:(id)a3;
- (void)removeUnassociatedMediaAccessory:(id)a3 completion:(id)a4;
- (void)removeUnassociatedWACAccessory:(id)a3 completion:(id)a4;
- (void)removeUnpairedHAPAccessory:(id)a3 completion:(id)a4;
- (void)reprovisionAccessoryWithIdentifier:(id)a3 wiFiPSK:(id)a4 countryCode:(id)a5 withCompletion:(id)a6;
- (void)requestPermissionToAssociateWACAccessory:(id)a3 completionHandler:(id)a4;
- (void)resetConfiguration;
- (void)resetPairedAccessories;
- (void)resetUnassociatedCurrentAccessory;
- (void)restartBrowsers;
- (void)resurrectAccessoryServer:(id)a3;
- (void)retrieveCurrentStateForIdentifier:(id)a3 stateNumber:(id *)a4 isReachable:(BOOL *)a5 linkQuality:(unint64_t *)a6 lastSeen:(id *)a7;
- (void)setActiveWACSession:(id)a3;
- (void)setBrowseableLinkTypes:(id)a3;
- (void)setInternalDiscoveryRequest:(BOOL)a3;
- (void)setManagerDelegate:(id)a3;
- (void)setQOS:(int64_t)a3;
- (void)setUnpairedAccessoryManagerDelegate:(id)a3;
- (void)startDiscoveringAccessories;
- (void)startDiscoveringAccessoriesNeedingReprovisioning;
- (void)startDiscoveringAccessoriesWithLinkType:(int64_t)a3;
- (void)startDiscoveringMediaAccessories;
- (void)startDiscoveringPairedAccessories;
- (void)startDiscoveringPairedAccessoriesWithLinkType:(int64_t)a3;
- (void)stopDiscoveringAccessories;
- (void)stopDiscoveringAccessoriesWithLinkType:(int64_t)a3;
- (void)stopDiscoveringForUnpairedAccessoriesWithLinkType:(int64_t)a3;
- (void)stopDiscoveringMediaAccessories;
- (void)stopTrackingBTLEAccessoriesWithIdentifiers:(id)a3;
- (void)timerDidFire:(id)a3;
- (void)tombstoneAccessoryServer:(id)a3;
- (void)unassociatedWACAccessoryDidFinishAssociation:(id)a3 withError:(id)a4;
- (void)unassociatedWACAccessoryDidStartAssociation:(id)a3;
- (void)updateAlreadyPairingProgressForAccessoryServerIdentifier:(id)a3 progressHandler:(id)a4;
- (void)updateBroadcastKeyForIdentifier:(id)a3 key:(id)a4 keyUpdatedStateNumber:(id)a5 keyUpdatedTime:(double)a6;
- (void)updatePairingWithProgress:(int64_t)a3 accessoryServer:(id)a4;
- (void)updateProgressForMappedErrors:(id)a3 accessoryServer:(id)a4 progressHandler:(id)a5;
- (void)updateStateForIdentifier:(id)a3 stateNumber:(id)a4;
- (void)validateLinkTypes:(id)a3;
- (void)vendorModel:(id *)a3 vendorManufacturer:(id *)a4 accessoryInfo:(id)a5;
@end

@implementation HMDAccessoryBrowser

+ (id)logCategory
{
  if (logCategory__hmf_once_t391 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t391, &__block_literal_global_682);
  }

  v3 = logCategory__hmf_once_v392;

  return v3;
}

- (void)__activate
{
  v3 = [(HMDAccessoryBrowser *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__HMDAccessoryBrowser___activate__block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(v3, block);
}

void __33__HMDAccessoryBrowser___activate__block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v17 = 138543362;
    v18 = v5;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Activating", &v17, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  [*(a1 + 32) setActive:1];
  v6 = isWatch();
  v7 = *(a1 + 32);
  if (v6)
  {
    [v7 _startOrStopAccessoryDiscovery];
  }

  else
  {
    if ([v7 areThereAnyPairedBTLEAccessories])
    {
      v8 = 1;
    }

    else
    {
      v8 = [*(a1 + 32) areThereAnyPairedUnknownLinkTypeAccessories];
    }

    if ([*(a1 + 32) areThereAnyAssociatedAirPlayAccessories])
    {
      v9 = [*(a1 + 32) mediaBrowser];
      [v9 startDiscoveringAssociatedAccessoriesViaBonjour];
    }

    if (v8)
    {
      v10 = objc_autoreleasePoolPush();
      v11 = *(a1 + 32);
      v12 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = HMFGetLogIdentifier();
        v17 = 138543362;
        v18 = v13;
        _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@HomeKit App came into foreground - enabling BTLE scanning since there is atleast one paired (potential) BTLE accessory", &v17, 0xCu);
      }

      objc_autoreleasePoolPop(v10);
      [*(a1 + 32) btleAccessoryReachabilityProbeTimer:1];
    }

    if (isiOSDevice() || isMac())
    {
      v14 = [*(a1 + 32) hap2AccessoryServerBrowser];
      [v14 startConfirmingPairedAccessoryReachability];
    }

    v15 = [*(a1 + 32) btleAccessoryServerBrowser];
    [v15 updateScanInBackground:1];
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (BOOL)areThereAnyPairedBTLEAccessories
{
  v2 = [(HMDAccessoryBrowser *)self identifiersOfPairedBTLEAccessories];
  v3 = [v2 count] != 0;

  return v3;
}

- (NSMutableArray)pairedAccessories
{
  os_unfair_lock_lock_with_options();
  v3 = [(NSMutableArray *)self->_pairedAccessories copy];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (BOOL)areThereAnyPairedUnknownLinkTypeAccessories
{
  v2 = [(HMDAccessoryBrowser *)self pairedAccessories];
  v3 = [v2 na_any:&__block_literal_global_406_220943];

  return v3;
}

- (BOOL)areThereAnyAssociatedAirPlayAccessories
{
  v2 = [(HMDAccessoryBrowser *)self identifiersOfAssociatedMediaAccessories];
  v3 = [v2 count] != 0;

  return v3;
}

- (HMDHomeManager)homeManager
{
  WeakRetained = objc_loadWeakRetained(&self->_homeManager);

  return WeakRetained;
}

- (HMDAccessoryBrowserManagerDelegate)managerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_managerDelegate);

  return WeakRetained;
}

- (id)dumpRegisteredPairedAccessories
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = [(HMDAccessoryBrowser *)self pairedAccessories];
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        v10 = [v9 identifier];
        [v9 transports];
        v11 = HMAccessoryTransportTypesToString();
        v12 = [v9 delegate];
        [v3 appendFormat:@"Accessory identifier: %@, Transports: %@, Delegate: %@\n", v10, v11, v12];
      }

      v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  v13 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)dumpUnassociatedAccessories
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:2];
  v4 = MEMORY[0x277CBEB18];
  v5 = [(HMDAccessoryBrowser *)self unassociatedAccessories];
  v6 = [v4 arrayWithCapacity:{objc_msgSend(v5, "count")}];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = [(HMDAccessoryBrowser *)self unassociatedAccessories];
  v8 = [v7 copy];

  v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v18 + 1) + 8 * i) dumpDescription];
        if (v13)
        {
          [v6 addObject:v13];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }

  if ([v6 count])
  {
    [v3 setObject:v6 forKey:*MEMORY[0x277CD2270]];
  }

  v14 = [(HMDAccessoryBrowser *)self mediaBrowser];
  v15 = [v14 dumpDescription];

  if ([v15 count])
  {
    [v3 setObject:v15 forKey:@"Media Advertisements"];
  }

  v16 = *MEMORY[0x277D85DE8];

  return v3;
}

- (void)accessoryServerBrowser:(id)a3 didRemoveAccessoryServer:(id)a4 error:(id)a5 matterPairingEndContext:(id)a6
{
  v28 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (v13)
  {
    v14 = [HMDMatterAccessoryPairingEndContext contextFromMTRContext:v13];
  }

  else
  {
    v14 = 0;
  }

  v15 = objc_autoreleasePoolPush();
  v16 = self;
  v17 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    v18 = HMFGetLogIdentifier();
    v20 = 138544130;
    v21 = v18;
    v22 = 2112;
    v23 = v12;
    v24 = 2112;
    v25 = v13;
    v26 = 2112;
    v27 = v14;
    _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@Handling matter didRemoveAccessoryServer with error %@ mtrContext %@ -> hmdContext %@", &v20, 0x2Au);
  }

  objc_autoreleasePoolPop(v15);
  [(HMDAccessoryBrowser *)v16 _accessoryServerBrowser:v10 didRemoveAccessoryServer:v11 error:v12 matterPairingEndContext:v14];

  v19 = *MEMORY[0x277D85DE8];
}

- (void)notifyUnauthenticatedMatterAccessoryPromptEnded
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = self;
  v3 = objc_autoreleasePoolPush();
  v4 = v2;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v11 = 138543362;
    v12 = v6;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Notifying unauthenticated Matter accessory prompt ended", &v11, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v7 = [MEMORY[0x277CBEB38] dictionary];
  [v7 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"HMDMatterAccessoryUnauthenticatedPromptStartStopKey"];
  v8 = [MEMORY[0x277CCAB98] defaultCenter];
  v9 = [v7 copy];
  [v8 postNotificationName:@"HMDMatterAccessoryUpdatePairingMetricNotification" object:0 userInfo:v9];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)notifyUnauthenticatedMatterAccessoryPromptStarted
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = self;
  v3 = objc_autoreleasePoolPush();
  v4 = v2;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v11 = 138543362;
    v12 = v6;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Notifying unauthenticated Matter accessory prompt started", &v11, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v7 = [MEMORY[0x277CBEB38] dictionary];
  [v7 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"HMDMatterAccessoryUnauthenticatedPromptStartStopKey"];
  v8 = [MEMORY[0x277CCAB98] defaultCenter];
  v9 = [v7 copy];
  [v8 postNotificationName:@"HMDMatterAccessoryUpdatePairingMetricNotification" object:0 userInfo:v9];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)notifyMatterAccessoryIsWEDAccessory:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = self;
  v5 = a3;
  v6 = objc_autoreleasePoolPush();
  v7 = v4;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    [v5 BOOLValue];
    v10 = HMFBooleanToString();
    v15 = 138543618;
    v16 = v9;
    v17 = 2112;
    v18 = v10;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Notifying matter accessory is WED accessory: %@", &v15, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  v11 = [MEMORY[0x277CBEB38] dictionary];
  [v11 setObject:v5 forKeyedSubscript:@"HMDMatterAccessoryIsWEDAccessoryKey"];
  v12 = [MEMORY[0x277CCAB98] defaultCenter];
  v13 = [v11 copy];
  [v12 postNotificationName:@"HMDMatterAccessoryUpdatePairingMetricNotification" object:0 userInfo:v13];

  v14 = *MEMORY[0x277D85DE8];
}

- (void)notifyMatterAccessoryThreadCapabilities:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = self;
  v5 = a3;
  v6 = objc_autoreleasePoolPush();
  v7 = v4;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v14 = 138543618;
    v15 = v9;
    v16 = 2112;
    v17 = v5;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Notifying matter accessory Thread capabilities: %@", &v14, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  v10 = [MEMORY[0x277CBEB38] dictionary];
  [v10 setObject:v5 forKeyedSubscript:@"HMDMatterAccessoryThreadCapabilitiesKey"];
  v11 = [MEMORY[0x277CCAB98] defaultCenter];
  v12 = [v10 copy];
  [v11 postNotificationName:@"HMDMatterAccessoryUpdatePairingMetricNotification" object:0 userInfo:v12];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)notifyMatterAccessoryVendorID:(id)a3 productID:(id)a4 deviceType:(id)a5
{
  v28 = *MEMORY[0x277D85DE8];
  v8 = self;
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = objc_autoreleasePoolPush();
  v13 = v8;
  v14 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = HMFGetLogIdentifier();
    v20 = 138544130;
    v21 = v15;
    v22 = 2112;
    v23 = v9;
    v24 = 2112;
    v25 = v10;
    v26 = 2112;
    v27 = v11;
    _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, "%{public}@Notifying matter accessory vendor ID: %@, product ID: %@, device type: %@", &v20, 0x2Au);
  }

  objc_autoreleasePoolPop(v12);
  v16 = [MEMORY[0x277CBEB38] dictionary];
  [v16 setObject:v9 forKeyedSubscript:@"HMDMatterAccessoryMatterVendorIDKey"];
  [v16 setObject:v10 forKeyedSubscript:@"HMDMatterAccessoryMatterProductIDKey"];
  [v16 setObject:v11 forKeyedSubscript:@"HMDMatterAccessoryMatterDeviceTypeKey"];
  v17 = [MEMORY[0x277CCAB98] defaultCenter];
  v18 = [v16 copy];
  [v17 postNotificationName:@"HMDMatterAccessoryUpdatePairingMetricNotification" object:0 userInfo:v18];

  v19 = *MEMORY[0x277D85DE8];
}

- (void)notifyMatterAccessoryMatchingCommissioningDiscriminatorDiscovered
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = self;
  v3 = objc_autoreleasePoolPush();
  v4 = v2;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v11 = 138543362;
    v12 = v6;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Notifying matter accessory matching commissioning discriminator discovered", &v11, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v7 = [MEMORY[0x277CBEB38] dictionary];
  [v7 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"HMDMatterAccessoryPairingAccessoryDiscoveredKey"];
  v8 = [MEMORY[0x277CCAB98] defaultCenter];
  v9 = [v7 copy];
  [v8 postNotificationName:@"HMDMatterAccessoryUpdatePairingMetricNotification" object:0 userInfo:v9];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)notifyMatterAccessoryPairingStep:(unint64_t)a3
{
  if (a3 - 1 < 0x16)
  {
    v3 = a3 + 1;
  }

  else
  {
    v3 = 0;
  }

  notifyMatterMetricPairingStep(self, v3);
}

- (void)notifyMTRMetrics:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CCAB98];
  v5 = a3;
  v6 = self;
  v15 = [v4 defaultCenter];
  v7 = v6;
  v8 = v5;
  v9 = objc_autoreleasePoolPush();
  v10 = v7;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    *buf = 138543362;
    *&buf[4] = v12;
    _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Notifying mtr metrics", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v9);
  v16 = @"HMDMatterAccessoryPairingMTRMetricsKey";
  *buf = v8;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:&v16 count:1];
  [v15 postNotificationName:@"HMDMatterAccessoryUpdatePairingMetricNotification" object:0 userInfo:v13];

  v14 = *MEMORY[0x277D85DE8];
}

- (void)notifySupportedLinkLayerTypes:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = self;
  v5 = a3;
  v6 = objc_autoreleasePoolPush();
  v7 = v4;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v14 = 138543618;
    v15 = v9;
    v16 = 2112;
    v17 = v5;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Notifying supported link layer types %@", &v14, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  v10 = [MEMORY[0x277CBEB38] dictionary];
  [v10 setObject:v5 forKeyedSubscript:@"HMDAccessoryPairingSupportedLinkLayerTypesKey"];
  v11 = [MEMORY[0x277CCAB98] defaultCenter];
  v12 = [v10 copy];
  [v11 postNotificationName:@"HMDMatterAccessoryUpdatePairingMetricNotification" object:0 userInfo:v12];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)accessoryServer:(id)a3 didStopPairingWithError:(id)a4 matterPairingEndContext:(id)a5
{
  v25 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v10)
  {
    v11 = [HMDMatterAccessoryPairingEndContext contextFromMTRContext:v10];
  }

  else
  {
    v11 = 0;
  }

  v12 = objc_autoreleasePoolPush();
  v13 = self;
  v14 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = HMFGetLogIdentifier();
    v17 = 138544130;
    v18 = v15;
    v19 = 2112;
    v20 = v9;
    v21 = 2112;
    v22 = v10;
    v23 = 2112;
    v24 = v11;
    _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, "%{public}@Handling matter didStopPairing with error %@ mtrContext %@ -> hmdContext %@", &v17, 0x2Au);
  }

  objc_autoreleasePoolPop(v12);
  [(HMDAccessoryBrowser *)v13 _accessoryServer:v8 didStopPairingWithError:v9 matterPairingEndContext:v11];

  v16 = *MEMORY[0x277D85DE8];
}

- (void)vendorModel:(id *)a3 vendorManufacturer:(id *)a4 accessoryInfo:(id)a5
{
  v7 = a5;
  if (!(a3 | a4))
  {
    goto LABEL_11;
  }

  v20 = v7;
  v8 = [v7 modelName];
  if (v8)
  {
    v9 = v8;
    v10 = [v20 manufacturer];

    if (v10)
    {
      v11 = +[HMDVendorDataManager sharedVendorDataManager];
      v12 = [v20 manufacturer];
      v13 = [v20 modelName];
      v14 = [v11 vendorModelEntryForManufacturer:v12 model:v13];

      v15 = [v14 model];
      v10 = [v14 manufacturer];

      if (v15)
      {
        if (v10)
        {
          goto LABEL_6;
        }

LABEL_16:
        v19 = [v20 manufacturer];
        v10 = anonymizeUnknownVendorString(v19);

        if (!a3)
        {
          goto LABEL_8;
        }

        goto LABEL_7;
      }
    }
  }

  else
  {
    v10 = 0;
  }

  v18 = [v20 modelName];
  v15 = anonymizeUnknownVendorString(v18);

  if (!v10)
  {
    goto LABEL_16;
  }

LABEL_6:
  if (a3)
  {
LABEL_7:
    v16 = v15;
    *a3 = v15;
  }

LABEL_8:
  if (a4)
  {
    v17 = v10;
    *a4 = v10;
  }

  v7 = v20;
LABEL_11:
}

- (void)handlePPIDInfoResponse:(id)a3 context:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(HMDAccessoryBrowser *)self workQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __60__HMDAccessoryBrowser_handlePPIDInfoResponse_context_error___block_invoke;
  v15[3] = &unk_2786891E0;
  v16 = v9;
  v17 = self;
  v18 = v8;
  v19 = v10;
  v12 = v10;
  v13 = v8;
  v14 = v9;
  dispatch_async(v11, v15);
}

void __60__HMDAccessoryBrowser_handlePPIDInfoResponse_context_error___block_invoke(id *a1)
{
  v2 = a1[4];
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

  v19 = 0;
  v20 = 0;
  [a1[5] vendorModel:&v20 vendorManufacturer:&v19 accessoryInfo:a1[6]];
  v5 = v20;
  v6 = v19;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __60__HMDAccessoryBrowser_handlePPIDInfoResponse_context_error___block_invoke_2;
  v13[3] = &unk_278689550;
  v7 = v4;
  v14 = v7;
  v8 = v5;
  v15 = v8;
  v9 = v6;
  v16 = v9;
  v17 = a1[6];
  v18 = a1[7];
  __60__HMDAccessoryBrowser_handlePPIDInfoResponse_context_error___block_invoke_2(v13);
  v10 = [a1[6] name];

  if (v10)
  {
    v11 = a1[5];
    v12 = [a1[6] name];
    [v11 accessoryServer:v7 didUpdateName:v12];
  }

  [a1[5] accessoryServer:v7 requestUserPermission:2 accessoryInfo:a1[6] error:a1[7]];
}

void __60__HMDAccessoryBrowser_handlePPIDInfoResponse_context_error___block_invoke_2(id *a1)
{
  v2 = [a1[4] pairingActivity];

  if (v2)
  {
    v5 = [a1[4] pairingActivity];
    [a1[4] category];

    [a1[7] isCertified];
    v3 = HMFBooleanToString();
    [a1[7] isDenylisted];
    v4 = HMFBooleanToString();
    [a1[8] domain];

    [a1[8] code];
  }
}

- (void)handleActivationResponse:(id)a3 context:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HMDAccessoryBrowser *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__HMDAccessoryBrowser_handleActivationResponse_context___block_invoke;
  block[3] = &unk_27868A010;
  block[4] = self;
  v12 = v7;
  v13 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_async(v8, block);
}

void __56__HMDAccessoryBrowser_handleActivationResponse_context___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    v15 = 138543874;
    v16 = v5;
    v17 = 2112;
    v18 = v6;
    v19 = 2112;
    v20 = v7;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Got Token activation response for server: %@, T1: %@", &v15, 0x20u);
  }

  objc_autoreleasePoolPop(v2);
  v8 = *(a1 + 40);
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

  if ([v10 isPreSoftAuthWacStarted])
  {
    [v10 setToken:*(a1 + 48)];
    [v10 pairSetupStartSoftAuthWAC];
  }

  else
  {
    v11 = *(a1 + 40);
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

    [v13 provisionToken:*(a1 + 48)];
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)didFinishActivation:(id)a3 context:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HMDAccessoryBrowser *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__HMDAccessoryBrowser_didFinishActivation_context___block_invoke;
  block[3] = &unk_27868A010;
  v12 = v7;
  v13 = v6;
  v14 = self;
  v9 = v6;
  v10 = v7;
  dispatch_async(v8, block);
}

void __51__HMDAccessoryBrowser_didFinishActivation_context___block_invoke(id *a1)
{
  v2 = a1[4];
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

  v6 = MEMORY[0x277D85DD0];
  v7 = 3221225472;
  v8 = __51__HMDAccessoryBrowser_didFinishActivation_context___block_invoke_2;
  v9 = &unk_27868A750;
  v10 = v4;
  v11 = a1[5];
  v5 = v4;
  __51__HMDAccessoryBrowser_didFinishActivation_context___block_invoke_2(&v6);
  [a1[6] accessoryServer:v5 didFinishAuth:{a1[5], v6, v7, v8, v9}];
}

void __51__HMDAccessoryBrowser_didFinishActivation_context___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) pairingActivity];

  if (v2)
  {
    v3 = [*(a1 + 32) pairingActivity];
    [*(a1 + 40) domain];

    [*(a1 + 40) code];
  }
}

- (void)browser:(id)a3 didLoseAssociatedMediaAccessory:(id)a4 error:(id)a5
{
  v29 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(HMDAccessoryBrowser *)self pairedAccessoryInformationWithIdentifier:v9];
  v12 = [v11 delegate];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;

  v15 = [v14 accessories];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __69__HMDAccessoryBrowser_browser_didLoseAssociatedMediaAccessory_error___block_invoke;
  v23[3] = &unk_278681708;
  v16 = v9;
  v24 = v16;
  v17 = [v15 na_firstObjectPassingTest:v23];

  v18 = objc_autoreleasePoolPush();
  v19 = self;
  v20 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = HMFGetLogIdentifier();
    *buf = 138543618;
    v26 = v21;
    v27 = 2112;
    v28 = v16;
    _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@Lost Associated Media Accessory %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v18);
  [v17 setReachable:0];

  v22 = *MEMORY[0x277D85DE8];
}

uint64_t __69__HMDAccessoryBrowser_browser_didLoseAssociatedMediaAccessory_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 identifier];
  v4 = [v2 isEqualToString:v3];

  return v4;
}

- (void)browser:(id)a3 didFindAssociatedMediaAccessory:(id)a4
{
  v5 = a4;
  v6 = [(HMDAccessoryBrowser *)self pairedAccessoryInformationWithIdentifier:v5];
  v7 = [v6 delegate];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  v10 = [v9 accessories];

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __63__HMDAccessoryBrowser_browser_didFindAssociatedMediaAccessory___block_invoke;
  v13[3] = &unk_278681708;
  v14 = v5;
  v11 = v5;
  v12 = [v10 na_firstObjectPassingTest:v13];

  [v12 setReachable:1];
}

uint64_t __63__HMDAccessoryBrowser_browser_didFindAssociatedMediaAccessory___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 identifier];
  v4 = [v2 isEqualToString:v3];

  return v4;
}

- (void)browser:(id)a3 didUpdateEndpoints:(id)a4
{
  v5 = a4;
  v6 = [(HMDAccessoryBrowser *)self workQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __50__HMDAccessoryBrowser_browser_didUpdateEndpoints___block_invoke;
  v8[3] = &unk_27868A750;
  v9 = v5;
  v10 = self;
  v7 = v5;
  dispatch_async(v6, v8);
}

void __50__HMDAccessoryBrowser_browser_didUpdateEndpoints___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = *(a1 + 32);
  v15 = [obj countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v15)
  {
    v14 = *v21;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v21 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v3 = *(*(&v20 + 1) + 8 * i);
        v4 = [v3 advertisements];
        v16 = 0u;
        v17 = 0u;
        v18 = 0u;
        v19 = 0u;
        v5 = v4;
        v6 = [v5 countByEnumeratingWithState:&v16 objects:v24 count:16];
        if (v6)
        {
          v7 = *v17;
          while (2)
          {
            for (j = 0; j != v6; j = j + 1)
            {
              if (*v17 != v7)
              {
                objc_enumerationMutation(v5);
              }

              v9 = [*(*(&v16 + 1) + 8 * j) identifier];
              v10 = [*(a1 + 40) pairedAccessoryInformationWithIdentifier:v9];
              v11 = [v10 delegate];

              if (v11)
              {
                v6 = [v10 delegate];

                goto LABEL_16;
              }
            }

            v6 = [v5 countByEnumeratingWithState:&v16 objects:v24 count:16];
            if (v6)
            {
              continue;
            }

            break;
          }
        }

LABEL_16:

        if (objc_opt_respondsToSelector())
        {
          [v6 accessoryBrowser:*(a1 + 40) didUpdateEndpoint:v3];
        }
      }

      v15 = [obj countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v15);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)browser:(id)a3 didRemoveSessions:(id)a4
{
  v5 = a4;
  v6 = [(HMDAccessoryBrowser *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__HMDAccessoryBrowser_browser_didRemoveSessions___block_invoke;
  block[3] = &unk_27868A728;
  v9 = v5;
  v7 = v5;
  dispatch_async(v6, block);
}

void __49__HMDAccessoryBrowser_browser_didRemoveSessions___block_invoke(uint64_t a1)
{
  v7[1] = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) count])
  {
    v2 = [MEMORY[0x277CCAB98] defaultCenter];
    v3 = *(a1 + 32);
    v6 = @"kRemovedMediaSessionIdentifiersKey";
    v7[0] = v3;
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];
    [v2 postNotificationName:@"HMDMediaSessionsRemovedNotification" object:0 userInfo:v4];
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)browser:(id)a3 didRemoveAdvertisements:(id)a4
{
  v5 = a4;
  v6 = [(HMDAccessoryBrowser *)self workQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __55__HMDAccessoryBrowser_browser_didRemoveAdvertisements___block_invoke;
  v8[3] = &unk_27868A750;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(v6, v8);
}

- (void)browser:(id)a3 didAddAdvertisements:(id)a4
{
  v5 = a4;
  v6 = [(HMDAccessoryBrowser *)self workQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __52__HMDAccessoryBrowser_browser_didAddAdvertisements___block_invoke;
  v8[3] = &unk_27868A750;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(v6, v8);
}

- (void)accessoryServer:(id)a3 confirmUUID:(id)a4 token:(id)a5
{
  v30 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(HMDAccessoryBrowser *)self workQueue];
  dispatch_assert_queue_V2(v11);

  v12 = [(HMDAccessoryBrowser *)self unpairedAccessoryForServer:v8];
  if (!v12)
  {
    v13 = objc_autoreleasePoolPush();
    v14 = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      v26 = 138543618;
      v27 = v16;
      v28 = 2112;
      v29 = v8;
      _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_ERROR, "%{public}@While confirming UUID, cannot find unpaired accessory for server %@", &v26, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
  }

  v17 = [(HMDAccessoryBrowser *)self _pairingInformationForUnpairedAccessory:v12];
  v18 = v17;
  if (v17 && ([v17 setupAuthToken], v19 = objc_claimAutoreleasedReturnValue(), v19, v19))
  {
    [(HMDAccessoryBrowser *)self accessoryServer:v8 updatePairingProgress:5];
    v20 = objc_autoreleasePoolPush();
    v21 = self;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      v23 = HMFGetLogIdentifier();
      v26 = 138543362;
      v27 = v23;
      _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_DEBUG, "%{public}@Wrap up internal setup token authentication", &v26, 0xCu);
    }

    objc_autoreleasePoolPop(v20);
    [(HMDAccessoryBrowser *)v21 didFinishActivation:0 context:v8];
  }

  else
  {
    v24 = [(HMDAccessoryBrowser *)self authServer];
    [v24 sendActivationConfirmation:v10 uuid:v9 context:v8];
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)accessoryServer:(id)a3 authenticateUUID:(id)a4 token:(id)a5
{
  v30 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(HMDAccessoryBrowser *)self workQueue];
  dispatch_assert_queue_V2(v11);

  v12 = [(HMDAccessoryBrowser *)self unpairedAccessoryForServer:v8];
  if (!v12)
  {
    v13 = objc_autoreleasePoolPush();
    v14 = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      v26 = 138543618;
      v27 = v16;
      v28 = 2112;
      v29 = v8;
      _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_ERROR, "%{public}@While authenticating UUID, cannot find unpaired accessory for server %@", &v26, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
  }

  v17 = [(HMDAccessoryBrowser *)self _pairingInformationForUnpairedAccessory:v12];
  v18 = v17;
  if (v17 && ([v17 setupAuthToken], v19 = objc_claimAutoreleasedReturnValue(), v19, v19))
  {
    [(HMDAccessoryBrowser *)self accessoryServer:v8 updatePairingProgress:5];
    v20 = objc_autoreleasePoolPush();
    v21 = self;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      v23 = HMFGetLogIdentifier();
      v26 = 138543362;
      v27 = v23;
      _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_DEBUG, "%{public}@Emulating auth token activation following internal setup token authentication", &v26, 0xCu);
    }

    objc_autoreleasePoolPop(v20);
    v24 = objc_alloc_init(MEMORY[0x277CBEB28]);
    LOWORD(v27) = 8270;
    v26 = 1881788898;
    [v24 appendBytes:&v26 length:6];
    [(HMDAccessoryBrowser *)v21 handleActivationResponse:v24 context:v8];
  }

  else
  {
    v24 = [(HMDAccessoryBrowser *)self authServer];
    [v24 sendActivationRequest:v10 uuid:v9 context:v8];
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)accessoryServer:(id)a3 validateCert:(id)a4 model:(id)a5
{
  v8 = MEMORY[0x277CBEAF8];
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v13 = [v8 currentLocale];
  v12 = [(HMDAccessoryBrowser *)self authServer];
  [v12 getPPIDInfo:v13 model:v9 cert:v10 context:v11];
}

- (void)accessoryServer:(id)a3 validateUUID:(id)a4 token:(id)a5 model:(id)a6
{
  v52 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v47 = a4;
  v11 = a5;
  v46 = a6;
  v12 = [(HMDAccessoryBrowser *)self workQueue];
  dispatch_assert_queue_V2(v12);

  v13 = [MEMORY[0x277CBEAF8] currentLocale];
  if ([v10 compatibilityFeatures])
  {
    v14 = 2;
  }

  else
  {
    v14 = 1;
  }

  [(HMDAccessoryBrowser *)self accessoryServer:v10 updatePairingProgress:5];
  v15 = [(HMDAccessoryBrowser *)self unpairedAccessoryForServer:v10];
  if (!v15)
  {
    v16 = objc_autoreleasePoolPush();
    v17 = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543618;
      v49 = v19;
      v50 = 2112;
      v51 = v10;
      _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_ERROR, "%{public}@While validating UUID, cannot find unpaired accessory for server %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v16);
  }

  v20 = [(HMDAccessoryBrowser *)self _pairingInformationForUnpairedAccessory:v15];
  v21 = v20;
  if (!v20 || ([v20 setupAuthToken], v22 = objc_claimAutoreleasedReturnValue(), v22, !v22))
  {
    v34 = [(HMDAccessoryBrowser *)self authServer];
    v33 = v46;
    v35 = v47;
    [v34 sendPPIDInfoRequest:v13 model:v46 token:v11 authFeatures:v14 uuid:v47 context:v10];
    goto LABEL_20;
  }

  v23 = objc_autoreleasePoolPush();
  v24 = self;
  v25 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
  {
    v26 = HMFGetLogIdentifier();
    *buf = 138543362;
    v49 = v26;
    _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_DEBUG, "%{public}@Authentication using internal setup auth token", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v23);
  v27 = [v21 setupAuthToken];
  if ([v11 isEqualToData:v27])
  {
    v28 = [v21 setupAuthTokenUUID];
    v29 = [v47 hmf_isEqualToUUID:v28];

    if (v29)
    {
      v43 = objc_alloc(MEMORY[0x277CFEA00]);
      v42 = [v10 name];
      v45 = [v10 primaryAccessory];
      v41 = [v45 manufacturer];
      [v10 category];
      v30 = v44 = v13;
      v31 = [MEMORY[0x277CCAD78] UUID];
      v32 = [v31 UUIDString];
      v33 = v46;
      v34 = [v43 initWithName:v42 manufacturer:v41 modelName:v46 category:v30 certificationStatus:@"CERTIFIED" denylisted:@"NO" ppid:v32];

      v13 = v44;
      [(HMDAccessoryBrowser *)v24 handlePPIDInfoResponse:v34 context:v10 error:0];
      v35 = v47;
      goto LABEL_20;
    }
  }

  else
  {
  }

  v36 = objc_autoreleasePoolPush();
  v37 = v24;
  v38 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
  {
    v39 = HMFGetLogIdentifier();
    *buf = 138543362;
    v49 = v39;
    _os_log_impl(&dword_229538000, v38, OS_LOG_TYPE_ERROR, "%{public}@Internal token auth failed", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v36);
  v34 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCFD28] code:-1 userInfo:0];
  [(HMDAccessoryBrowser *)v37 didFinishActivation:v34 context:v10];
  v33 = v46;
  v35 = v47;
LABEL_20:

  v40 = *MEMORY[0x277D85DE8];
}

- (void)accessoryServerNeedsOwnershipToken:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDAccessoryBrowser *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(HMDAccessoryBrowser *)self unpairedAccessoryForServer:v4];
  if (v6)
  {
    v7 = [(HMDAccessoryBrowser *)self _pairingInformationForUnpairedAccessory:v6];
    v8 = [v7 addAccessoryProgressHandler];
    if (v8)
    {
      v9 = v8;
    }

    else
    {
      v14 = [v6 uuid];
      v15 = [(HMDAccessoryBrowser *)self _currentPairingProgressHandlerForAccessoryUUID:v14];
      v9 = [v15 progressHandler];

      if (!v9)
      {
LABEL_9:

        goto LABEL_10;
      }
    }

    v16 = [[HMDAddAccessoryProgressState alloc] initWithUnpairedAccessory:v6 server:v4];
    (v9)[2](v9, 8, v16);

    goto LABEL_9;
  }

  v10 = objc_autoreleasePoolPush();
  v11 = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    v13 = HMFGetLogIdentifier();
    v18 = 138543618;
    v19 = v13;
    v20 = 2112;
    v21 = v4;
    _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@No unpaired accessory for server %@", &v18, 0x16u);
  }

  objc_autoreleasePoolPop(v10);
LABEL_10:

  v17 = *MEMORY[0x277D85DE8];
}

- (void)accessoryServer:(id)a3 didFinishAuth:(id)a4
{
  v34 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDAccessoryBrowser *)self workQueue];
  dispatch_assert_queue_V2(v8);

  [v6 tearDownSessionOnAuthCompletion];
  if (v7)
  {
    v9 = objc_autoreleasePoolPush();
    v10 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      v30 = 138543618;
      v31 = v12;
      v32 = 2112;
      v33 = v7;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_ERROR, "%{public}@Auth Finished with error: %@", &v30, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
    if ([v7 isHAPError])
    {
      v13 = [v7 code];
      if (v13 > 0x20)
      {
        v14 = 52;
      }

      else
      {
        v14 = qword_22A587D08[v13];
      }
    }

    else if ([v7 isHMError])
    {
      v14 = [v7 code];
    }

    else
    {
      v14 = 55;
    }

    v17 = [MEMORY[0x277CCA9B8] hmErrorWithCode:v14 description:@"Authentication failed" reason:0 suggestion:0 underlyingError:v7];
    [(HMDAccessoryBrowser *)v10 continueAddingAccessoryToHomeAfterUserConfirmation:v6 withError:v17];
  }

  else
  {
    v15 = v6;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    v17 = v16;

    v18 = [v17 isPostSoftAuthWacStarted];
    v19 = objc_autoreleasePoolPush();
    v20 = self;
    v21 = HMFGetOSLogHandle();
    v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG);
    if (v18)
    {
      if (v22)
      {
        v23 = HMFGetLogIdentifier();
        v30 = 138543362;
        v31 = v23;
        _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_DEBUG, "%{public}@Auth finished with success", &v30, 0xCu);
      }

      objc_autoreleasePoolPop(v19);
      [v17 resetPostSoftAuthWAC];
    }

    else
    {
      if (v22)
      {
        v24 = HMFGetLogIdentifier();
        v30 = 138543362;
        v31 = v24;
        _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_DEBUG, "%{public}@Auth finished with success .. Do regular pair-setup", &v30, 0xCu);
      }

      objc_autoreleasePoolPop(v19);
      v25 = [(HMDAccessoryBrowser *)v20 unpairedAccessoryForServer:v15];
      v26 = [(HMDAccessoryBrowser *)v20 _pairingInformationForUnpairedAccessory:v25];
      v27 = [v26 pairingRequest];
      v28 = [v27 copy];

      [v28 setRequiresUserConsent:0];
      [v15 startPairingWithRequest:v28];
    }
  }

  v29 = *MEMORY[0x277D85DE8];
}

- (void)accessoryServer:(id)a3 didUpdateName:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDAccessoryBrowser *)self unpairedAccessoryForServer:v6];
  v9 = objc_autoreleasePoolPush();
  v10 = self;
  v11 = HMFGetOSLogHandle();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_INFO);
  if (v8)
  {
    if (v12)
    {
      v13 = HMFGetLogIdentifier();
      v16 = 138543874;
      v17 = v13;
      v18 = 2112;
      v19 = v6;
      v20 = 2112;
      v21 = v7;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Accessory: %@, Updated Name to %@", &v16, 0x20u);
    }

    objc_autoreleasePoolPop(v9);
    [v8 setName:v7];
  }

  else
  {
    if (v12)
    {
      v14 = HMFGetLogIdentifier();
      v16 = 138543874;
      v17 = v14;
      v18 = 2112;
      v19 = v6;
      v20 = 2112;
      v21 = v7;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Accessory: %@, is paired - dropping provided name update to %@", &v16, 0x20u);
    }

    objc_autoreleasePoolPop(v9);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)accessoryServer:(id)a3 didUpdateMatterDeviceTypeID:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDAccessoryBrowser *)self unpairedAccessoryForServer:v6];
  v9 = objc_autoreleasePoolPush();
  v10 = self;
  v11 = HMFGetOSLogHandle();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_INFO);
  if (v8)
  {
    if (v12)
    {
      v13 = HMFGetLogIdentifier();
      v16 = 138543874;
      v17 = v13;
      v18 = 2112;
      v19 = v6;
      v20 = 2112;
      v21 = v7;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Accessory: %@, Updated matterDeviceTypeID to %@", &v16, 0x20u);
    }

    objc_autoreleasePoolPop(v9);
    [v8 setMatterDeviceTypeID:v7];
  }

  else
  {
    if (v12)
    {
      v14 = HMFGetLogIdentifier();
      v16 = 138543874;
      v17 = v14;
      v18 = 2112;
      v19 = v6;
      v20 = 2112;
      v21 = v7;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Accessory: %@, is paired - dropping provided device type update to %@", &v16, 0x20u);
    }

    objc_autoreleasePoolPop(v9);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)accessoryServer:(id)a3 didUpdateCategory:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = [(HMDAccessoryBrowser *)self unpairedAccessoryForServer:v9];
  v8 = v7;
  if (v7)
  {
    [v7 updateCategoryWithCategoryIdentifier:v6];
  }

  else
  {
    [(HMDAccessoryBrowser *)self _notifyDelegateOfAccessoryServer:v9 didUpdateCategory:v6];
  }
}

- (void)_notifyDelegateOfAccessoryServer:(id)a3 didUpdateCategory:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 identifier];
  v9 = [(HMDAccessoryBrowser *)self pairedAccessoryInformationWithIdentifier:v8];

  v10 = [v9 delegate];
  if (objc_opt_respondsToSelector())
  {
    v11 = objc_autoreleasePoolPush();
    v12 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      v16 = 138544130;
      v17 = v14;
      v18 = 2112;
      v19 = v10;
      v20 = 2112;
      v21 = v6;
      v22 = 2112;
      v23 = v7;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Notifying '%@' that an accessory server %@ updated category to %@", &v16, 0x2Au);
    }

    objc_autoreleasePoolPop(v11);
    [v10 accessoryBrowser:v12 accessoryServer:v6 didUpdateCategory:v7];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)accessoryServerDidUpdateStateNumber:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v10 = 138543618;
    v11 = v8;
    v12 = 2112;
    v13 = v4;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Accessory: %@, Updated State", &v10, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = *MEMORY[0x277D85DE8];
}

- (void)accessoryServer:(id)a3 didUpdateWakeNumber:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = [v9 primaryAccessory];
  if (v7)
  {
    v8 = [(HMDAccessoryBrowser *)self pairedHMDHAPAccessoryWithAccessoryServer:v9];
    [v8 updateSuspendedStateWithWakeNumber:v6 hapAccessory:v7];
  }
}

- (void)accessoryServer:(id)a3 didDisconnectWithError:(id)a4
{
  v7 = a3;
  v5 = [v7 primaryAccessory];
  if (v5)
  {
    v6 = [(HMDAccessoryBrowser *)self pairedHMDHAPAccessoryWithAccessoryServer:v7];
    [v6 updateSuspendedStateWithConnectionState:0 hapAccessory:v5];
  }
}

- (void)continueAddingAccessoryToHomeAfterUserConfirmation:(id)a3 withError:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HMDAccessoryBrowser *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __84__HMDAccessoryBrowser_continueAddingAccessoryToHomeAfterUserConfirmation_withError___block_invoke;
  block[3] = &unk_27868A010;
  v12 = v7;
  v13 = self;
  v14 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_async(v8, block);
}

void __84__HMDAccessoryBrowser_continueAddingAccessoryToHomeAfterUserConfirmation_withError___block_invoke(id *a1)
{
  v29 = *MEMORY[0x277D85DE8];
  if (a1[4])
  {
    v2 = objc_autoreleasePoolPush();
    v3 = a1[5];
    v4 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = HMFGetLogIdentifier();
      *buf = 138543362;
      v28 = v5;
      _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_ERROR, "%{public}@Authentication failed for adding accessory to home", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v2);
    if ([a1[6] communicationProtocol] == 2)
    {
      v6 = [HMDMatterAccessoryPairingEndContext hmdContextWithStep:2 error:a1[4]];
    }

    else
    {
      v6 = 0;
    }

    v14 = a1[6];
    v15 = [a1[5] workQueue];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __84__HMDAccessoryBrowser_continueAddingAccessoryToHomeAfterUserConfirmation_withError___block_invoke_637;
    v22[3] = &unk_278683340;
    v16 = a1[6];
    v22[4] = a1[5];
    v23 = v16;
    v24 = a1[4];
    v25 = v6;
    [v14 removePairingForCurrentControllerOnQueue:v15 completion:v22];
  }

  else
  {
    v6 = [a1[5] unpairedAccessoryForServer:a1[6]];
    [a1[5] _sendPairingCompletionStatusForServer:a1[6] error:0 matterPairingEndContext:0 completionHandler:0];
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v7 = [v6 accessoryServers];
    v8 = [v7 countByEnumeratingWithState:&v18 objects:v26 count:16];
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
          v13 = [v12 linkType];
          if (v13 != [a1[6] linkType])
          {
            [a1[5] _discoverAccessories:v12];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v18 objects:v26 count:16];
      }

      while (v9);
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)accessoryServer:(id)a3 didDiscoverAccessories:(id)a4 transaction:(id)a5 error:(id)a6
{
  v73 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(HMDAccessoryBrowser *)self workQueue];
  dispatch_assert_queue_V2(v14);

  if ([v10 linkType] == 2)
  {
    v15 = objc_autoreleasePoolPush();
    v16 = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      HMFGetLogIdentifier();
      v18 = v55 = v12;
      [v10 identifier];
      v19 = v51 = v11;
      v20 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v10, "hasPairings")}];
      v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v10, "stateNumber")}];
      *buf = 138544130;
      v66 = v18;
      v67 = 2112;
      v68 = v19;
      v69 = 2112;
      v70 = v20;
      v71 = 2112;
      v72 = v21;
      _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@Removing BLE Accessory: %@ that has pairings: %@ with state number: %@", buf, 0x2Au);

      v11 = v51;
      v12 = v55;
    }

    objc_autoreleasePoolPop(v15);
    v22 = [(HMDAccessoryBrowser *)v16 discoveringBLEAccessoryServerIdentifiers];
    v23 = [v10 identifier];
    [v22 removeObject:v23];
  }

  v24 = [(HMDAccessoryBrowser *)self unpairedAccessoryForServer:v10];
  if (v24)
  {
    v61[0] = MEMORY[0x277D85DD0];
    v61[1] = 3221225472;
    v61[2] = __80__HMDAccessoryBrowser_accessoryServer_didDiscoverAccessories_transaction_error___block_invoke;
    v61[3] = &unk_27868A750;
    v25 = v10;
    v62 = v25;
    v26 = v13;
    v63 = v26;
    __80__HMDAccessoryBrowser_accessoryServer_didDiscoverAccessories_transaction_error___block_invoke(v61);
    v56 = v12;
    if (v26)
    {
      v27 = v26;
      v28 = v27;
      if (([v27 isHMError] & 1) == 0)
      {
        v29 = [v27 domain];
        if ([v29 isEqualToString:*MEMORY[0x277CFE770]])
        {
          v30 = [v27 code];

          if (v30 == 7)
          {
            v31 = 66;
          }

          else
          {
            v31 = 57;
          }
        }

        else
        {

          v31 = 57;
        }

        v28 = [MEMORY[0x277CCA9B8] hmErrorWithCode:v31 description:@"Discovery failed." reason:0 suggestion:0 underlyingError:v27];
      }

      v54 = v13;
      v42 = v11;
      v43 = objc_autoreleasePoolPush();
      v44 = self;
      v45 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
      {
        v46 = HMFGetLogIdentifier();
        *buf = 138543874;
        v66 = v46;
        v67 = 2112;
        v68 = v25;
        v69 = 2114;
        v70 = v27;
        _os_log_impl(&dword_229538000, v45, OS_LOG_TYPE_ERROR, "%{public}@Failed HAP service discovery on accessory server %@ with error: %{public}@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v43);
      v47 = [v25 identifier];
      [(HMDAccessoryBrowser *)v44 deregisterPairedAccessory:v47];

      if ([v24 supportsCHIP])
      {
        v48 = [HMDMatterAccessoryPairingEndContext hmdContextWithStep:2 error:v27];
      }

      else
      {
        v48 = 0;
      }

      v11 = v42;
      v12 = v56;
      [(HMDAccessoryBrowser *)v44 _sendPairingCompletionStatusForServer:v25 error:v28 matterPairingEndContext:v48 completionHandler:0];
      v49 = [(HMDAccessoryBrowser *)v44 workQueue];
      [v25 removePairingForCurrentControllerOnQueue:v49 completion:0];

      v13 = v54;
    }

    else
    {
      v32 = objc_autoreleasePoolPush();
      v33 = self;
      v34 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
      {
        v35 = HMFGetLogIdentifier();
        *buf = 138543618;
        v66 = v35;
        v67 = 2112;
        v68 = v25;
        _os_log_impl(&dword_229538000, v34, OS_LOG_TYPE_INFO, "%{public}@Completed accessory discovery on accessory server %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v32);
      [(HMDAccessoryBrowser *)v33 _sendPairingCompletionStatusForServer:v25 error:0 matterPairingEndContext:0 completionHandler:0];
      v59 = 0u;
      v60 = 0u;
      v57 = 0u;
      v58 = 0u;
      v28 = [v24 accessoryServers];
      v36 = [v28 countByEnumeratingWithState:&v57 objects:v64 count:16];
      if (v36)
      {
        v37 = v36;
        v52 = v11;
        v53 = v13;
        v38 = *v58;
        do
        {
          for (i = 0; i != v37; ++i)
          {
            if (*v58 != v38)
            {
              objc_enumerationMutation(v28);
            }

            v40 = *(*(&v57 + 1) + 8 * i);
            v41 = [v40 linkType];
            if (v41 != [v25 linkType])
            {
              [(HMDAccessoryBrowser *)v33 _discoverAccessories:v40];
            }
          }

          v37 = [v28 countByEnumeratingWithState:&v57 objects:v64 count:16];
        }

        while (v37);
        v11 = v52;
        v13 = v53;
      }

      v12 = v56;
    }
  }

  else
  {
    [(HMDAccessoryBrowser *)self _notifyDelegateOfAccessoryServer:v10 didDiscoverAccessories:v11 transaction:v12 error:v13];
  }

  v50 = *MEMORY[0x277D85DE8];
}

void __80__HMDAccessoryBrowser_accessoryServer_didDiscoverAccessories_transaction_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) pairingActivity];

  if (v2)
  {
    v3 = [*(a1 + 32) pairingActivity];
    [*(a1 + 40) domain];

    [*(a1 + 40) code];
  }
}

- (void)updateProgressForMappedErrors:(id)a3 accessoryServer:(id)a4 progressHandler:(id)a5
{
  v10 = a3;
  v7 = a4;
  if ([v10 isHMError] && _os_feature_enabled_impl())
  {
    v8 = [v10 code];
    switch(v8)
    {
      case 11:
        v9 = 11;
        break;
      case 2015:
        v9 = 9;
        break;
      case 2016:
        v9 = 10;
        break;
      default:
        goto LABEL_10;
    }

    [(HMDAccessoryBrowser *)self accessoryServer:v7 updatePairingProgress:v9];
  }

LABEL_10:
}

- (void)updateAlreadyPairingProgressForAccessoryServerIdentifier:(id)a3 progressHandler:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDAccessoryBrowser *)self pairedAccessoryInformationWithIdentifier:v6];
  v9 = [v8 delegate];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  v12 = [v11 hapAccessoryWithIdentifier:v6];
  v13 = v12;
  if (v7 && v12 && _os_feature_enabled_impl())
  {
    v14 = [[HMDAddAccessoryProgressState alloc] initWithPairedAccessory:v13];
    v15 = objc_autoreleasePoolPush();
    v16 = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      v20 = 138543618;
      v21 = v18;
      v22 = 2112;
      v23 = v14;
      _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@Calling progress handler to inform already paired accessory with state: %@", &v20, 0x16u);
    }

    objc_autoreleasePoolPop(v15);
    v7[2](v7, 47, v14);
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)updatePairingWithProgress:(int64_t)a3 accessoryServer:(id)a4
{
  v6 = a4;
  v7 = [(HMDAccessoryBrowser *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__HMDAccessoryBrowser_updatePairingWithProgress_accessoryServer___block_invoke;
  block[3] = &unk_278685DF8;
  block[4] = self;
  v10 = v6;
  v11 = a3;
  v8 = v6;
  dispatch_async(v7, block);
}

- (void)_updateHasActiveWACPairing:(int64_t)a3
{
  v5 = [(HMDAccessoryBrowser *)self workQueue];
  dispatch_assert_queue_V2(v5);

  if (a3 <= 0x31)
  {
    if (((1 << a3) & 0x19000) != 0)
    {
      if ([(HMDAccessoryBrowser *)self hasActiveWACPairing])
      {
        return;
      }

      v6 = 1;
    }

    else
    {
      if (((1 << a3) & 0x2000000002008) == 0 || ![(HMDAccessoryBrowser *)self hasActiveWACPairing])
      {
        return;
      }

      v6 = 0;
    }

    [(HMDAccessoryBrowser *)self setHasActiveWACPairing:v6];
  }
}

- (void)accessoryServer:(id)a3 didReadCommissioneeInfo:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDAccessoryBrowser *)self workQueue];
  dispatch_assert_queue_V2(v8);

  v9 = [(HMDAccessoryBrowser *)self unpairedAccessoryForServer:v6];
  if (v9)
  {
    v10 = [(HMDAccessoryBrowser *)self _progressHandlerForUnpairedAccessory:v9];
    if (v10)
    {
      v11 = [HMDAddAccessoryProgressState alloc];
      v12 = [v9 uuid];
      v13 = [v9 name];
      v14 = [v9 category];
      v15 = [v6 productData];
      v16 = [v6 commissioningID];
      v17 = [(HMDAddAccessoryProgressState *)v11 initWithUUID:v12 accessoryName:v13 manufacturerName:0 category:v14 certificationStatus:0 productData:v15 commissioneeInfo:v7 systemCommissionerUUID:v16];

      (v10)[2](v10, 51, v17);
    }
  }

  else
  {
    v18 = objc_autoreleasePoolPush();
    v19 = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      *buf = 138543618;
      v24 = v21;
      v25 = 2112;
      v26 = v6;
      _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_ERROR, "%{public}@No unpaired accessory for server %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v18);
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)accessoryServer:(id)a3 updatePairingProgress:(int64_t)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(HMDAccessoryBrowser *)self workQueue];
  dispatch_assert_queue_V2(v7);

  v8 = [(HMDAccessoryBrowser *)self unpairedAccessoryForServer:v6];
  if (v8)
  {
    v9 = [(HMDAccessoryBrowser *)self _progressHandlerForUnpairedAccessory:v8];
    if (v9)
    {
      if ((a4 - 1) > 0x25)
      {
        v10 = 15;
      }

      else
      {
        v10 = qword_22A587318[a4 - 1];
      }

      v15 = [[HMDAddAccessoryProgressState alloc] initWithUnpairedAccessory:v8 server:v6];
      [(HMDAccessoryBrowser *)self _updateHasActiveWACPairing:v10];
      (v9)[2](v9, v10, v15);
      if (v10 == 36)
      {
        (v9)[2](v9, 3, v15);
      }
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
      v17 = 138543618;
      v18 = v14;
      v19 = 2112;
      v20 = v6;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_ERROR, "%{public}@No unpaired accessory for server %@", &v17, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_notifyDelegateOfAccessoryServer:(id)a3 didDiscoverAccessories:(id)a4 transaction:(id)a5 error:(id)a6
{
  v30 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [v10 identifier];
  v15 = [(HMDAccessoryBrowser *)self pairedAccessoryInformationWithIdentifier:v14];

  v16 = [v15 delegate];
  if (objc_opt_respondsToSelector())
  {
    v17 = objc_autoreleasePoolPush();
    v18 = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = HMFGetLogIdentifier();
      v22 = 138544130;
      v23 = v20;
      v24 = 2112;
      v25 = v16;
      v26 = 2112;
      v27 = v10;
      v28 = 2112;
      v29 = v13;
      _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_INFO, "%{public}@Notifying '%@' that an accessory server %@ finished discovering accessories [error %@]", &v22, 0x2Au);
    }

    objc_autoreleasePoolPop(v17);
    [v16 accessoryBrowser:v18 accessoryServer:v10 didDiscoverAccessories:v11 transaction:v12 error:v13];
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)_accessoryServer:(id)a3 didStopPairingWithError:(id)a4 matterPairingEndContext:(id)a5
{
  v70 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(HMDAccessoryBrowser *)self workQueue];
  dispatch_assert_queue_V2(v11);

  v12 = [v8 pairingActivity];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __88__HMDAccessoryBrowser__accessoryServer_didStopPairingWithError_matterPairingEndContext___block_invoke;
  aBlock[3] = &unk_2786816E0;
  v13 = v12;
  v61 = v13;
  v14 = _Block_copy(aBlock);
  v59 = v10;
  if ([v8 linkType] == 2)
  {
    v15 = v14;
    v16 = objc_autoreleasePoolPush();
    v17 = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = HMFGetLogIdentifier();
      v20 = [v8 identifier];
      *buf = 138543618;
      v63 = v19;
      v64 = 2112;
      v65 = v20;
      _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_INFO, "%{public}@Removing BLE Accessory: %@ from discovering list", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v16);
    v21 = [(HMDAccessoryBrowser *)v17 discoveringBLEAccessoryServerIdentifiers];
    v22 = [v8 identifier];
    [v21 removeObject:v22];

    v14 = v15;
    v10 = v59;
  }

  v23 = v9;
  v24 = v23;
  if (v23)
  {
    v25 = v23;
    if (([v23 isHMError] & 1) == 0)
    {
      v25 = mapHAPPairingErrorToHMError(v24);
    }
  }

  else
  {
    v25 = 0;
  }

  v26 = [(HMDAccessoryBrowser *)self unpairedAccessoryForServer:v8];
  if (v26)
  {
    v27 = [(HMDAccessoryBrowser *)self _pairingInformationForUnpairedAccessory:v26];
    v57 = v14;
    v58 = v13;
    if (!v27)
    {
      v28 = objc_autoreleasePoolPush();
      v29 = self;
      v30 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        v31 = HMFGetLogIdentifier();
        *buf = 138543874;
        v63 = v31;
        v64 = 2112;
        v65 = v24;
        v66 = 2112;
        v67 = v8;
        _os_log_impl(&dword_229538000, v30, OS_LOG_TYPE_INFO, "%{public}@Error %@ reported for accessory server %@ corresponding to unpaired accessory that is not in list of currently pairing accessories", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v28);
      v10 = v59;
      v14 = v57;
    }

    v32 = [v27 addAccessoryProgressHandler];
    v33 = v32;
    if (v24)
    {
      [(HMDAccessoryBrowser *)self updateProgressForMappedErrors:v25 accessoryServer:v8 progressHandler:v32];

      v34 = isIrrecoverableError(v24);
      v35 = objc_autoreleasePoolPush();
      v36 = self;
      v37 = HMFGetOSLogHandle();
      v38 = os_log_type_enabled(v37, OS_LOG_TYPE_INFO);
      if (v34)
      {
        if (v38)
        {
          v39 = HMFGetLogIdentifier();
          *buf = 138543874;
          v63 = v39;
          v64 = 2112;
          v65 = v8;
          v66 = 2112;
          v67 = v24;
          _os_log_impl(&dword_229538000, v37, OS_LOG_TYPE_INFO, "%{public}@Accessory server %@ failed to pair with irrecoverable error: %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v35);
        v14[2](v14, v24, 0);
        v10 = v59;
        [(HMDAccessoryBrowser *)v36 _sendPairingCompletionStatusForServer:v8 error:v25 matterPairingEndContext:v59 completionHandler:0];
      }

      else
      {
        if (v38)
        {
          HMFGetLogIdentifier();
          v48 = v56 = v35;
          v49 = [v26 name];
          v50 = [v26 identifier];
          *buf = 138544130;
          v63 = v48;
          v64 = 2112;
          v65 = v24;
          v66 = 2112;
          v67 = v49;
          v68 = 2112;
          v69 = v50;
          _os_log_impl(&dword_229538000, v37, OS_LOG_TYPE_INFO, "%{public}@Ignoring didStopPairingWithError:(%@) and starting a pairing interrupted timer for unpaired accessory %@/%@", buf, 0x2Au);

          v14 = v57;
          v35 = v56;
        }

        objc_autoreleasePoolPop(v35);
        v51 = [v27 pairingRetryTimer];

        if (!v51)
        {
          v14[2](v14, v24, 1);
        }

        [(HMDAccessoryBrowser *)v36 _startPairingInterruptionTimer:v26];
        v10 = v59;
        if ([v8 linkType] == 1)
        {
          [(HMDAccessoryBrowser *)v36 _addReconfirmTimer:v26 accessoryServer:v8];
        }

        if ([v8 linkType] == 2)
        {
          v52 = [(HMDAccessoryBrowser *)v36 btleAccessoryServerBrowser];
          v53 = [v52 scanState];

          if (!v53)
          {
            v54 = [(HMDAccessoryBrowser *)v36 btleAccessoryServerBrowser];
            [(HMDAccessoryBrowser *)v36 _startDiscoveryForAccessoryServerBrowser:v54];
          }
        }
      }
    }

    else
    {
      if (v32)
      {
        goto LABEL_22;
      }

      v40 = [v26 uuid];
      v41 = [(HMDAccessoryBrowser *)self _currentPairingProgressHandlerForAccessoryUUID:v40];
      v33 = [v41 progressHandler];

      if (v33)
      {
LABEL_22:
        v42 = [v26 certificationStatus];
        if (v42 == 2)
        {
          v43 = 1;
        }

        else
        {
          v43 = 2 * (v42 == 1);
        }

        v44 = [[HMDAddAccessoryProgressState alloc] initWithUnpairedAccessory:v26 server:v8 accessoryInfo:0 certificationStatus:v43];
        (v33)[2](v33, 3, v44);
        (v33)[2](v33, 19, v44);
      }

      v45 = [v8 identifier];
      v46 = [v26 transportTypes];
      v47 = [v8 setupHash];
      [(HMDAccessoryBrowser *)self registerPairedAccessory:v45 transports:v46 setupHash:v47 delegate:0];

      [(HMDAccessoryBrowser *)self _discoverAccessories:v8];
      v14 = v57;
    }

    v13 = v58;
  }

  else
  {
    [(HMDAccessoryBrowser *)self _notifyDelegateOfAccessoryServer:v8 didStopPairingWithError:v25];
  }

  v55 = *MEMORY[0x277D85DE8];
}

void __88__HMDAccessoryBrowser__accessoryServer_didStopPairingWithError_matterPairingEndContext___block_invoke(uint64_t a1, void *a2, char a3)
{
  v5 = a2;
  v6 = [v5 userInfo];
  v7 = [v6 objectForKeyedSubscript:*MEMORY[0x277CCA7E8]];

  if (!v7)
  {
    v7 = v5;
  }

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __88__HMDAccessoryBrowser__accessoryServer_didStopPairingWithError_matterPairingEndContext___block_invoke_2;
  v9[3] = &unk_278688BD0;
  v10 = *(a1 + 32);
  v11 = v7;
  v12 = a3;
  v8 = v7;
  __88__HMDAccessoryBrowser__accessoryServer_didStopPairingWithError_matterPairingEndContext___block_invoke_2(v9);
}

void *__88__HMDAccessoryBrowser__accessoryServer_didStopPairingWithError_matterPairingEndContext___block_invoke_2(void *result)
{
  v1 = result[4];
  if (v1)
  {
    v2 = result;
    v3 = result[5];
    v4 = v1;
    [v3 domain];

    [v2[5] code];
    v5 = *(v2 + 48);
    return HMFBooleanToString();
  }

  return result;
}

- (void)_notifyDelegateOfAccessoryServer:(id)a3 didStopPairingWithError:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 identifier];
  v9 = [(HMDAccessoryBrowser *)self pairedAccessoryInformationWithIdentifier:v8];

  v10 = [v9 delegate];
  if (objc_opt_respondsToSelector())
  {
    v11 = objc_autoreleasePoolPush();
    v12 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      v16 = 138543874;
      v17 = v14;
      v18 = 2112;
      v19 = v10;
      v20 = 2112;
      v21 = v6;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Notifying '%@' that an accessory server stopped pairing %@", &v16, 0x20u);
    }

    objc_autoreleasePoolPop(v11);
    [v10 accessoryBrowser:v12 accessoryServer:v6 didStopPairingWithError:v7];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)accessoryServer:(id)a3 didReceiveBadPasswordThrottleAttemptsWithDelay:(int64_t)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(HMDAccessoryBrowser *)self workQueue];
  dispatch_assert_queue_V2(v7);

  if (a4 < 1)
  {
    v9 = objc_autoreleasePoolPush();
    v10 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v14 = 138543618;
      v15 = v12;
      v16 = 2112;
      v17 = v6;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Bad password for server %@ - re-prompting for setup code and re-start pairing", &v14, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
    [(HMDAccessoryBrowser *)v10 _promptForPairingPasswordForServer:v6 reason:@"HMSetupCodeProviderReasonBadPassword"];
  }

  else
  {
    v8 = [(HMDAccessoryBrowser *)self unpairedAccessoryForServer:v6];
    [(HMDAccessoryBrowser *)self _updatePairingRetryTimerForAccessory:v8 delay:a4];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)accessoryServer:(id)a3 promptUserForPasswordWithType:(unint64_t)a4
{
  v34 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(HMDAccessoryBrowser *)self workQueue];
  dispatch_assert_queue_V2(v7);

  v8 = [(HMDAccessoryBrowser *)self unpairedAccessoryForServer:v6];
  v9 = [(HMDAccessoryBrowser *)self _pairingInformationForUnpairedAccessory:v8];
  v10 = [v9 setupCode];
  if (v10)
  {
    v11 = objc_autoreleasePoolPush();
    v12 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      v28 = 138543874;
      v29 = v14;
      v30 = 2112;
      v31 = v6;
      v32 = 2112;
      v33 = v10;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Have a pair setup password for server %@ - trying %@", &v28, 0x20u);
    }

    objc_autoreleasePoolPop(v11);
    v15 = _normalizeSetupCode(v10);
    [v6 tryPairingPassword:v15 onboardingSetupPayloadString:0 error:0];
  }

  else
  {
    v16 = objc_autoreleasePoolPush();
    v17 = self;
    v18 = HMFGetOSLogHandle();
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_INFO);
    if (a4 == 2)
    {
      if (v19)
      {
        v20 = HMFGetLogIdentifier();
        v28 = 138543618;
        v29 = v20;
        v30 = 2112;
        v31 = v6;
        _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_INFO, "%{public}@Need ownership proof token for server %@ but there is no productData to look up the app that can provide it", &v28, 0x16u);
      }

      objc_autoreleasePoolPop(v16);
      v21 = [v9 addAccessoryProgressHandler];
      if (v21)
      {
        v22 = v21;
      }

      else
      {
        v24 = [v8 uuid];
        v25 = [(HMDAccessoryBrowser *)v17 _currentPairingProgressHandlerForAccessoryUUID:v24];
        v22 = [v25 progressHandler];

        if (!v22)
        {
          goto LABEL_15;
        }
      }

      v26 = [[HMDAddAccessoryProgressState alloc] initWithUnpairedAccessory:v8 server:v6];
      (v22)[2](v22, 10, v26);

      goto LABEL_15;
    }

    if (v19)
    {
      v23 = HMFGetLogIdentifier();
      v28 = 138543618;
      v29 = v23;
      v30 = 2112;
      v31 = v6;
      _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_INFO, "%{public}@Do not have a pair setup password for server %@ - requesting it", &v28, 0x16u);
    }

    objc_autoreleasePoolPop(v16);
    [(HMDAccessoryBrowser *)v17 _promptForPairingPasswordForServer:v6 reason:@"HMSetupCodeProviderReasonInitial"];
  }

LABEL_15:

  v27 = *MEMORY[0x277D85DE8];
}

- (void)accessoryServer:(id)a3 requestUserPermission:(int64_t)a4 accessoryInfo:(id)a5 error:(id)a6
{
  v108 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a5;
  v12 = a6;
  val = self;
  v13 = [(HMDAccessoryBrowser *)self workQueue];
  dispatch_assert_queue_V2(v13);

  v102[0] = 0;
  v102[1] = v102;
  v102[2] = 0x2020000000;
  v103 = 1;
  v14 = [v10 pairingActivity];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __81__HMDAccessoryBrowser_accessoryServer_requestUserPermission_accessoryInfo_error___block_invoke;
  aBlock[3] = &unk_278681618;
  v15 = v14;
  v97 = v15;
  v100 = v102;
  v16 = v11;
  v98 = v16;
  v99 = self;
  v101 = a4;
  v73 = _Block_copy(aBlock);
  v93[0] = MEMORY[0x277D85DD0];
  v93[1] = 3221225472;
  v93[2] = __81__HMDAccessoryBrowser_accessoryServer_requestUserPermission_accessoryInfo_error___block_invoke_3;
  v93[3] = &unk_278681668;
  v68 = v15;
  v94 = v68;
  v95 = a4;
  v17 = _Block_copy(v93);
  objc_initWeak(&location, self);
  v86[0] = MEMORY[0x277D85DD0];
  v86[1] = 3221225472;
  v86[2] = __81__HMDAccessoryBrowser_accessoryServer_requestUserPermission_accessoryInfo_error___block_invoke_5;
  v86[3] = &unk_278681690;
  objc_copyWeak(v91, &location);
  v18 = v10;
  v87 = v18;
  v19 = v17;
  v89 = v19;
  v90 = v102;
  v91[1] = a4;
  v67 = v12;
  v88 = v67;
  v20 = _Block_copy(v86);
  v21 = [(HMDAccessoryBrowser *)self unpairedAccessoryForServer:v18];
  v22 = [(HMDAccessoryBrowser *)self _pairingInformationForUnpairedAccessory:v21];
  v74 = +[HMDUIDialogPresenter sharedUIDialogPresenter];
  v75 = +[HMDHAPMetadata getSharedInstance];
  v23 = [v75 categoryForOther];
  v24 = [v16 category];

  if (v24)
  {
    v25 = [v16 category];
    v26 = [v75 categoryForIdentifier:v25];

    v27 = v26;
  }

  else
  {
    v27 = v23;
  }

  v69 = v27;
  v72 = [v27 name];
  v77[0] = MEMORY[0x277D85DD0];
  v77[1] = 3221225472;
  v77[2] = __81__HMDAccessoryBrowser_accessoryServer_requestUserPermission_accessoryInfo_error___block_invoke_623;
  v77[3] = &unk_2786816B8;
  objc_copyWeak(&v85, &location);
  v28 = v20;
  v82 = v28;
  v66 = v19;
  v83 = v66;
  v84 = v102;
  v29 = v22;
  v78 = v29;
  v30 = v18;
  v79 = v30;
  v31 = v16;
  v80 = v31;
  v71 = v21;
  v81 = v71;
  v70 = _Block_copy(v77);
  if (a4 > 2)
  {
    switch(a4)
    {
      case 3:
        v49 = objc_autoreleasePoolPush();
        v37 = val;
        v50 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
        {
          v51 = HMFGetLogIdentifier();
          *buf = 138543362;
          v105 = v51;
          _os_log_impl(&dword_229538000, v50, OS_LOG_TYPE_INFO, "%{public}@need to confirm accessory info with user", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v49);
        if (showAuthDialog == 1)
        {
          goto LABEL_14;
        }

LABEL_36:
        [(HMDAccessoryBrowser *)val _callProgressOrErrorOut:v30 pairingInfo:v29 accessoryInfo:v31 unpairedAccessory:v71 progress:6 certStatus:1];
        goto LABEL_54;
      case 4:
        if (showAuthDialog == 1)
        {
          v73[2]();
          v40 = [v30 name];
          v41 = [(HMDAccessoryBrowser *)val workQueue];
          [v74 showUserDialogForIncompatibleAccessory:v31 name:v40 category:v72 withContext:v30 queue:v41 completionHandler:v28];
          goto LABEL_53;
        }

        v52 = objc_autoreleasePoolPush();
        v58 = val;
        v54 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
        {
          v59 = HMFGetLogIdentifier();
          *buf = 138543362;
          v105 = v59;
          _os_log_impl(&dword_229538000, v54, OS_LOG_TYPE_ERROR, "%{public}@Accessory is in-compatible .. cancelling", buf, 0xCu);
        }

        goto LABEL_39;
      case 5:
        v42 = objc_autoreleasePoolPush();
        v43 = val;
        v44 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
        {
          v45 = HMFGetLogIdentifier();
          *buf = 138543362;
          v105 = v45;
          _os_log_impl(&dword_229538000, v44, OS_LOG_TYPE_INFO, "%{public}@need to confirm accessory information with user", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v42);
        if (showAuthDialog == 1)
        {
          v73[2]();
          v40 = [v30 name];
          v41 = [(HMDAccessoryBrowser *)v43 workQueue];
          [v74 requestUserPermissionWithAccessoryPPIDInfo:v31 name:v40 category:v72 withContext:v30 queue:v41 completionHandler:v28];
          goto LABEL_53;
        }

        v60 = 0;
        goto LABEL_44;
    }

LABEL_29:
    v52 = objc_autoreleasePoolPush();
    v53 = val;
    v54 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
    {
      v55 = HMFGetLogIdentifier();
      *buf = 138543618;
      v105 = v55;
      v106 = 2048;
      v107 = a4;
      _os_log_impl(&dword_229538000, v54, OS_LOG_TYPE_INFO, "%{public}@Accessory Browser: Request user permission - unsupported type %tu - cancelling...", buf, 0x16u);
    }

LABEL_39:

    objc_autoreleasePoolPop(v52);
    v60 = 1;
LABEL_44:
    (*(v28 + 2))(v28, v60);
    goto LABEL_54;
  }

  if (a4)
  {
    if (a4 == 1)
    {
      if ([v29 provideNetworkCredentialsToAccessory])
      {
        v46 = objc_autoreleasePoolPush();
        v56 = val;
        v48 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
        {
          v57 = HMFGetLogIdentifier();
          *buf = 138543362;
          v105 = v57;
          _os_log_impl(&dword_229538000, v48, OS_LOG_TYPE_INFO, "%{public}@Accessory Browser: User already consented to providing network credentials to accessory - skipping prompt", buf, 0xCu);
        }
      }

      else
      {
        if (skipAuthPromptDialog != 1)
        {
          v73[2]();
          v40 = [v30 name];
          v41 = [(HMDAccessoryBrowser *)val workQueue];
          [v74 requestUserPermissionForLegacyWACAccessory:v40 withContext:v30 queue:v41 completionHandler:v28];
          goto LABEL_53;
        }

        v46 = objc_autoreleasePoolPush();
        v61 = val;
        v48 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
        {
          v62 = HMFGetLogIdentifier();
          *buf = 138543362;
          v105 = v62;
          _os_log_impl(&dword_229538000, v48, OS_LOG_TYPE_INFO, "%{public}@Accessory Browser: Defaults write set - skipping auth prompt", buf, 0xCu);
        }
      }

      goto LABEL_48;
    }

    if (a4 == 2)
    {
      v32 = objc_autoreleasePoolPush();
      v33 = val;
      v34 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
      {
        v35 = HMFGetLogIdentifier();
        *buf = 138543618;
        v105 = v35;
        v106 = 2112;
        v107 = v31;
        _os_log_impl(&dword_229538000, v34, OS_LOG_TYPE_DEBUG, "%{public}@Confirming Accessory Info: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v32);
      if ([v31 isCertified])
      {
        v36 = objc_autoreleasePoolPush();
        v37 = v33;
        v38 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
        {
          v39 = HMFGetLogIdentifier();
          *buf = 138543362;
          v105 = v39;
          _os_log_impl(&dword_229538000, v38, OS_LOG_TYPE_INFO, "%{public}@need to confirm PPID", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v36);
        if (showAuthDialog == 1)
        {
LABEL_14:
          v73[2]();
          v40 = [v30 name];
          v41 = [(HMDAccessoryBrowser *)v37 workQueue];
          [v74 requestUserPermissionWithAccessoryPPIDInfo:v31 name:v40 category:v72 withContext:v30 queue:v41 completionHandler:v28];
LABEL_53:

          goto LABEL_54;
        }

        goto LABEL_36;
      }

      if ([v29 allowAddUnauthenticatedAccessory])
      {
        v46 = objc_autoreleasePoolPush();
        v63 = v33;
        v48 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
        {
LABEL_47:
          v64 = HMFGetLogIdentifier();
          *buf = 138543362;
          v105 = v64;
          _os_log_impl(&dword_229538000, v48, OS_LOG_TYPE_INFO, "%{public}@Accessory Browser: User already consented to adding unauthenticated accessory to home - skipping auth prompt", buf, 0xCu);
        }

LABEL_48:

        objc_autoreleasePoolPop(v46);
        [v30 continuePairingAfterAuthPrompt];
        goto LABEL_54;
      }

      goto LABEL_49;
    }

    goto LABEL_29;
  }

  if ([v29 allowAddUnauthenticatedAccessory])
  {
    v46 = objc_autoreleasePoolPush();
    v47 = val;
    v48 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
    {
      goto LABEL_47;
    }

    goto LABEL_48;
  }

LABEL_49:
  if ((skipAuthPromptDialog & 1) == 0)
  {
    v73[2]();
  }

  [(HMDAccessoryBrowser *)val accessoryServer:v30 promtDialog:v74 forNotCertifiedAccessory:v71 completion:v70];
LABEL_54:

  objc_destroyWeak(&v85);
  objc_destroyWeak(v91);
  objc_destroyWeak(&location);

  _Block_object_dispose(v102, 8);
  v65 = *MEMORY[0x277D85DE8];
}

void __81__HMDAccessoryBrowser_accessoryServer_requestUserPermission_accessoryInfo_error___block_invoke(uint64_t a1)
{
  if (*(a1 + 32))
  {
    *(*(*(a1 + 56) + 8) + 24) = 0;
    if (*(a1 + 40))
    {
      v2 = *(a1 + 48);
      v13 = 0;
      v14 = 0;
      [v2 vendorModel:&v14 vendorManufacturer:&v13 accessoryInfo:?];
      v3 = v14;
      v4 = v13;
    }

    else
    {
      v3 = 0;
      v4 = 0;
    }

    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __81__HMDAccessoryBrowser_accessoryServer_requestUserPermission_accessoryInfo_error___block_invoke_2;
    v8[3] = &unk_278685330;
    v9 = *(a1 + 32);
    v10 = v3;
    v5 = *(a1 + 64);
    v11 = v4;
    v12 = v5;
    v6 = v4;
    v7 = v3;
    __81__HMDAccessoryBrowser_accessoryServer_requestUserPermission_accessoryInfo_error___block_invoke_2(v8);
  }
}

void __81__HMDAccessoryBrowser_accessoryServer_requestUserPermission_accessoryInfo_error___block_invoke_3(uint64_t a1, void *a2, char a3, char a4)
{
  v7 = a2;
  v8 = *(a1 + 32);
  if (v8 && (a4 & 1) == 0)
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __81__HMDAccessoryBrowser_accessoryServer_requestUserPermission_accessoryInfo_error___block_invoke_4;
    v11[3] = &unk_278681640;
    v9 = v8;
    v10 = *(a1 + 40);
    v12 = v9;
    v14 = v10;
    v15 = a3;
    v13 = v7;
    __81__HMDAccessoryBrowser_accessoryServer_requestUserPermission_accessoryInfo_error___block_invoke_4(v11);
  }
}

void __81__HMDAccessoryBrowser_accessoryServer_requestUserPermission_accessoryInfo_error___block_invoke_5(uint64_t a1, char a2)
{
  v52 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v5 = WeakRetained;
  if (!WeakRetained)
  {
    goto LABEL_45;
  }

  v6 = [WeakRetained workQueue];
  dispatch_assert_queue_V2(v6);

  if ((a2 & 1) == 0)
  {
    v13 = [v5 unpairedAccessoryForServer:*(a1 + 32)];
    v14 = [v5 _pairingInformationForUnpairedAccessory:v13];
    v15 = *(*(*(a1 + 56) + 8) + 24);
    (*(*(a1 + 48) + 16))();
    v16 = *(a1 + 72);
    if (v16 > 1)
    {
      if (v16 == 2)
      {
        v37 = objc_autoreleasePoolPush();
        v38 = v5;
        v39 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
        {
          v40 = HMFGetLogIdentifier();
          *buf = 138543362;
          v51 = v40;
          _os_log_impl(&dword_229538000, v39, OS_LOG_TYPE_INFO, "%{public}@User confirmed accessory PPID Info .. continuing with auth.", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v37);
        [v38 _continueAfterPPIDValidation:1 server:*(a1 + 32)];
        goto LABEL_44;
      }

      if (v16 != 3)
      {
        if (v16 == 5)
        {
          v17 = objc_autoreleasePoolPush();
          v18 = v5;
          v19 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
          {
            v20 = HMFGetLogIdentifier();
            *buf = 138543362;
            v51 = v20;
            _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_INFO, "%{public}@User confirmed accessory Info .. continuing wac pairing", buf, 0xCu);
          }

          objc_autoreleasePoolPop(v17);
          [*(a1 + 32) continuePairingUsingWAC];
        }

        goto LABEL_44;
      }

      v30 = objc_autoreleasePoolPush();
      v41 = v5;
      v42 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
      {
        v43 = HMFGetLogIdentifier();
        *buf = 138543362;
        v51 = v43;
        _os_log_impl(&dword_229538000, v42, OS_LOG_TYPE_INFO, "%{public}@User confirmed accessory Info .. continuing pairing", buf, 0xCu);
      }

      goto LABEL_42;
    }

    if (!v16)
    {
      [v14 setAllowAddUnauthenticatedAccessory:1];
LABEL_43:
      [*(a1 + 32) continuePairingAfterAuthPrompt];
      goto LABEL_44;
    }

    if (v16 != 1)
    {
LABEL_44:

      goto LABEL_45;
    }

    [v14 setProvideNetworkCredentialsToAccessory:1];
    v29 = [v14 setupCode];

    if (v29)
    {
      v30 = objc_autoreleasePoolPush();
      v31 = v5;
      v32 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
      {
        v33 = HMFGetLogIdentifier();
        *buf = 138543362;
        v51 = v33;
        v34 = "%{public}@Legacy WAC accessory - password provided ahead of time - continuing pairing process...\n";
LABEL_40:
        _os_log_impl(&dword_229538000, v32, OS_LOG_TYPE_INFO, v34, buf, 0xCu);
      }
    }

    else
    {
      v44 = [v14 setupCodeProvided];
      v30 = objc_autoreleasePoolPush();
      v45 = v5;
      v32 = HMFGetOSLogHandle();
      v46 = os_log_type_enabled(v32, OS_LOG_TYPE_INFO);
      if (v44)
      {
        if (v46)
        {
          v33 = HMFGetLogIdentifier();
          *buf = 138543362;
          v51 = v33;
          v34 = "%{public}@Legacy WAC accessory - setup code provided by user - continuing pairing process...\n";
          goto LABEL_40;
        }
      }

      else if (v46)
      {
        v33 = HMFGetLogIdentifier();
        *buf = 138543362;
        v51 = v33;
        v34 = "%{public}@Legacy WAC accessory - continuing pairing even though setup code is yet to be provided...\n";
        goto LABEL_40;
      }
    }

LABEL_42:
    objc_autoreleasePoolPop(v30);
    goto LABEL_43;
  }

  v7 = *(a1 + 72);
  v8 = objc_autoreleasePoolPush();
  v9 = v5;
  v10 = HMFGetOSLogHandle();
  v11 = v10;
  if (v7 == 2)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543362;
      v51 = v12;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@User denied adding accessory after PPID conf.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
    [v9 _continueAfterPPIDValidation:0 server:*(a1 + 32)];
  }

  else
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      *buf = 138543362;
      v51 = v21;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_ERROR, "%{public}@User canceled pairing, stopping pairing...\n", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
    [*(a1 + 32) stopPairingWithError:0];
    v22 = [MEMORY[0x277CCA9B8] hmPrivateErrorWithCode:2001];
    v48 = *MEMORY[0x277CCA7E8];
    v49 = v22;
    v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v49 forKeys:&v48 count:1];
    v24 = [MEMORY[0x277CCA9B8] hmErrorWithCode:23 userInfo:v23];
    v25 = v22;
    v26 = v25;
    if (*(a1 + 72) == 4)
    {
      v27 = [MEMORY[0x277CCA9B8] hmErrorWithCode:93 userInfo:0];

      v28 = v27;
      v24 = v28;
    }

    else
    {
      v28 = v25;
    }

    v35 = *(*(*(a1 + 56) + 8) + 24);
    (*(*(a1 + 48) + 16))();
    if ([*(a1 + 32) communicationProtocol] == 2)
    {
      v36 = [HMDMatterAccessoryPairingEndContext hmdContextWithStep:2 error:*(a1 + 40)];
    }

    else
    {
      v36 = 0;
    }

    [v9 _sendPairingCompletionStatusForServer:*(a1 + 32) error:v24 matterPairingEndContext:v36 completionHandler:0];
  }

LABEL_45:

  v47 = *MEMORY[0x277D85DE8];
}

void __81__HMDAccessoryBrowser_accessoryServer_requestUserPermission_accessoryInfo_error___block_invoke_623(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 88));
  if (WeakRetained)
  {
    v7 = WeakRetained;
    v5 = [WeakRetained workQueue];
    dispatch_assert_queue_V2(v5);

    if (a2)
    {
      (*(*(a1 + 64) + 16))();
    }

    else
    {
      v6 = *(*(*(a1 + 80) + 8) + 24);
      (*(*(a1 + 72) + 16))();
      [*(a1 + 32) setAllowAddUnauthenticatedAccessory:1];
      [v7 _callProgressOrErrorOut:*(a1 + 40) pairingInfo:*(a1 + 32) accessoryInfo:*(a1 + 48) unpairedAccessory:*(a1 + 56) progress:6 certStatus:2];
    }

    WeakRetained = v7;
  }
}

void __81__HMDAccessoryBrowser_accessoryServer_requestUserPermission_accessoryInfo_error___block_invoke_4(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v3 = *(a1 + 48);
    v8 = v1;
    v4 = HAPUserPermissionTypeDescription();
    v5 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 48)];
    v6 = *(a1 + 56);
    v7 = HMFBooleanToString();
    [*(a1 + 40) domain];

    [*(a1 + 40) code];
  }
}

void *__81__HMDAccessoryBrowser_accessoryServer_requestUserPermission_accessoryInfo_error___block_invoke_2(void *result)
{
  if (result[4])
  {
    v1 = result;
    v2 = result[7];
    v3 = HAPUserPermissionTypeDescription();
    return [MEMORY[0x277CCABB0] numberWithInteger:v1[7]];
  }

  return result;
}

- (void)accessoryServer:(id)a3 promtDialog:(id)a4 forNotCertifiedAccessory:(id)a5 completion:(id)a6
{
  v26 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  [v12 setCertificationStatus:1];
  v14 = skipAuthPromptDialog;
  v15 = objc_autoreleasePoolPush();
  v16 = self;
  v17 = HMFGetOSLogHandle();
  v18 = os_log_type_enabled(v17, OS_LOG_TYPE_INFO);
  if (v14 == 1)
  {
    if (v18)
    {
      v19 = HMFGetLogIdentifier();
      v24 = 138543362;
      v25 = v19;
      _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@Accessory Browser: Defaults write set - skipping auth prompt", &v24, 0xCu);
    }

    objc_autoreleasePoolPop(v15);
    if (v13)
    {
      v13[2](v13, 0);
    }
  }

  else
  {
    if (v18)
    {
      v20 = HMFGetLogIdentifier();
      v24 = 138543362;
      v25 = v20;
      _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@Prompting for not certified confirmation", &v24, 0xCu);
    }

    objc_autoreleasePoolPop(v15);
    v21 = [v10 name];
    v22 = [(HMDAccessoryBrowser *)v16 workQueue];
    [v11 requestUserPermissionForUnauthenticatedAccessory:v21 withContext:v10 queue:v22 completionHandler:v13];
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)_callProgressOrErrorOut:(id)a3 pairingInfo:(id)a4 accessoryInfo:(id)a5 unpairedAccessory:(id)a6 progress:(int64_t)a7 certStatus:(unint64_t)a8
{
  v36 = *MEMORY[0x277D85DE8];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = [(HMDAccessoryBrowser *)self workQueue];
  dispatch_assert_queue_V2(v18);

  if ([v16 isDenylisted])
  {
    v19 = objc_autoreleasePoolPush();
    v20 = self;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = HMFGetLogIdentifier();
      v34 = 138543362;
      v35 = v22;
      _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@Accessory is blacklisted - Stopping pairing", &v34, 0xCu);
    }

    objc_autoreleasePoolPop(v19);
    [v14 stopPairingWithError:0];
    v23 = [MEMORY[0x277CCA9B8] hmErrorWithCode:55 userInfo:0];
    v24 = 0;
    if ([v17 supportsCHIP])
    {
      v24 = [HMDMatterAccessoryPairingEndContext hmdContextWithStep:2 error:v23];
    }

    [(HMDAccessoryBrowser *)v20 _sendPairingCompletionStatusForServer:v14 error:v23 matterPairingEndContext:v24 completionHandler:0];

    goto LABEL_11;
  }

  v23 = [[HMDAddAccessoryProgressState alloc] initWithUnpairedAccessory:v17 server:v14 accessoryInfo:v16 certificationStatus:a8];
  v25 = [v15 addAccessoryProgressHandler];
  if (v25)
  {
    v26 = v25;
LABEL_10:
    (v26)[2](v26, a7, v23);

    goto LABEL_11;
  }

  v27 = [v17 uuid];
  v28 = [(HMDAccessoryBrowser *)self _currentPairingProgressHandlerForAccessoryUUID:v27];
  v26 = [v28 progressHandler];

  if (v26)
  {
    goto LABEL_10;
  }

  v30 = objc_autoreleasePoolPush();
  v31 = self;
  v32 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
  {
    v33 = HMFGetLogIdentifier();
    v34 = 138543362;
    v35 = v33;
    _os_log_impl(&dword_229538000, v32, OS_LOG_TYPE_DEFAULT, "%{public}@no progress handler available - implicit auth", &v34, 0xCu);
  }

  objc_autoreleasePoolPop(v30);
  [v14 continueAuthAfterValidation:1];
LABEL_11:

  v29 = *MEMORY[0x277D85DE8];
}

- (id)_getHAPMetadataFromHMMetadata:(id)a3
{
  if (a3)
  {
    v3 = MEMORY[0x277CFECA0];
    v4 = a3;
    v5 = [v3 alloc];
    v6 = [v4 name];
    v7 = [v4 channel];
    v8 = [v4 PANID];
    v9 = [v4 extendedPANID];
    v10 = [v4 masterKey];
    v11 = [v4 passPhrase];
    v12 = [v4 PSKc];
    v13 = [v4 operationalDataset];

    v14 = [v5 initWithName:v6 channel:v7 PANID:v8 extendedPANID:v9 masterKey:v10 passPhrase:v11 PSKc:v12 activeOperationalDataSet:v13];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (void)accessoryServerBrowser:(id)a3 getThreadNetworkCredentialsForAccessoryWithIdentifier:(id)a4 withCompletion:(id)a5
{
  v54 = *MEMORY[0x277D85DE8];
  v41 = a3;
  v40 = a4;
  v8 = a5;
  v9 = [(HMDAccessoryBrowser *)self homeManager];
  v10 = [(HMDAccessoryBrowser *)self currentlyPairingAccessories];
  v11 = [v10 firstObject];
  v12 = [v11 homeUUID];

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v39 = v9;
  v13 = [v9 homes];
  v14 = [v13 countByEnumeratingWithState:&v45 objects:v53 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v46;
LABEL_3:
    v17 = 0;
    while (1)
    {
      if (*v46 != v16)
      {
        objc_enumerationMutation(v13);
      }

      v18 = *(*(&v45 + 1) + 8 * v17);
      v19 = [v18 uuid];
      v20 = [v19 isEqual:v12];

      if (v20)
      {
        break;
      }

      if (v15 == ++v17)
      {
        v15 = [v13 countByEnumeratingWithState:&v45 objects:v53 count:16];
        if (v15)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v21 = v18;

    if (!v21)
    {
      goto LABEL_15;
    }

    v23 = v40;
    v22 = v41;
    if (isFeatureMatteriPhoneOnlyPairingControlEnabled() && [v21 isSharedAdmin])
    {
      v24 = [v21 threadOperationalDataset];

      if (v24)
      {
        v25 = objc_alloc(MEMORY[0x277CFECA0]);
        v26 = [v21 threadOperationalDataset];
        v27 = [v25 initWithActiveOperationalDataSet:v26];

        v8[2](v8, v27, 0);
        goto LABEL_22;
      }

      v33 = objc_autoreleasePoolPush();
      v34 = self;
      v35 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
      {
        v36 = HMFGetLogIdentifier();
        *buf = 138543362;
        v50 = v36;
        _os_log_impl(&dword_229538000, v35, OS_LOG_TYPE_INFO, "%{public}@Unexpected, shared admin does not have thread operational dataset for home. Falling back to request credentials from primary resident", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v33);
    }

    v37 = [(HMDAccessoryBrowser *)self workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __115__HMDAccessoryBrowser_accessoryServerBrowser_getThreadNetworkCredentialsForAccessoryWithIdentifier_withCompletion___block_invoke;
    block[3] = &unk_278689F98;
    block[4] = self;
    v44 = v8;
    v21 = v21;
    v43 = v21;
    dispatch_async(v37, block);
  }

  else
  {
LABEL_9:

LABEL_15:
    v28 = objc_autoreleasePoolPush();
    v29 = self;
    v30 = HMFGetOSLogHandle();
    v22 = v41;
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      v31 = HMFGetLogIdentifier();
      *buf = 138543618;
      v50 = v31;
      v51 = 2112;
      v52 = v12;
      _os_log_impl(&dword_229538000, v30, OS_LOG_TYPE_ERROR, "%{public}@no home found for home uuid %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v28);
    v32 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    (v8)[2](v8, 0, v32);

    v21 = 0;
    v23 = v40;
  }

LABEL_22:

  v38 = *MEMORY[0x277D85DE8];
}

void __115__HMDAccessoryBrowser_accessoryServerBrowser_getThreadNetworkCredentialsForAccessoryWithIdentifier_withCompletion___block_invoke(uint64_t a1)
{
  v3 = MEMORY[0x277D85DD0];
  v4 = 3221225472;
  v5 = __115__HMDAccessoryBrowser_accessoryServerBrowser_getThreadNetworkCredentialsForAccessoryWithIdentifier_withCompletion___block_invoke_2;
  v6 = &unk_2786815F0;
  v7 = *(a1 + 32);
  v8 = *(a1 + 48);
  v2 = _Block_copy(&v3);
  [*(a1 + 40) retrieveThreadNetworkMetadataWithNoFallbackWithCompletion:{v2, v3, v4, v5, v6, v7}];
}

void __115__HMDAccessoryBrowser_accessoryServerBrowser_getThreadNetworkCredentialsForAccessoryWithIdentifier_withCompletion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
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
      v17 = 138543362;
      v18 = v10;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_ERROR, "%{public}@Failed to retrieve Thread Network metadata", &v17, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v11 = [*(a1 + 32) _getHAPMetadataFromHMMetadata:v5];
    v12 = objc_autoreleasePoolPush();
    v13 = *(a1 + 32);
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier();
      v17 = 138543618;
      v18 = v15;
      v19 = 2112;
      v20 = v11;
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, "%{public}@Returning Thread Credentials as %@", &v17, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
    (*(*(a1 + 40) + 16))();
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)accessoryServerBrowser:(id)a3 didFinishPairingForAccessoryServer:(id)a4
{
  v5 = a4;
  v6 = [v5 identifier];
  v8 = [(HMDAccessoryBrowser *)self pairedAccessoryInformationWithIdentifier:v6];

  v7 = [v8 delegate];
  [v7 accessoryBrowser:self didFinishPairingForAccessoryServer:v5];
}

- (BOOL)supportsCommissioningCertificateRetrievalForHomeUUID:(id)a3
{
  v35 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDAccessoryBrowser *)self homeManager];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v6 = [v5 homes];
  v7 = [v6 countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v27;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v27 != v9)
      {
        objc_enumerationMutation(v6);
      }

      v11 = *(*(&v26 + 1) + 8 * v10);
      v12 = [v11 uuid];
      v13 = [v12 isEqual:v4];

      if (v13)
      {
        break;
      }

      if (v8 == ++v10)
      {
        v8 = [v6 countByEnumeratingWithState:&v26 objects:v34 count:16];
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
      goto LABEL_16;
    }

    v15 = [v14 hasAnyResident];
    if (!v15)
    {
      goto LABEL_14;
    }

    v16 = [v14 primaryResident];
    if (!v16)
    {
      v19 = 1;
      goto LABEL_22;
    }

    self = v16;
    v11 = [v14 primaryResident];
    v13 = [v11 capabilities];
    if (!v13)
    {
      v19 = 1;
    }

    else
    {
LABEL_14:
      v17 = [v14 primaryResident];
      v18 = [v17 capabilities];
      v19 = [v18 supportsMatterOwnerCertFetch];

      if (!v15)
      {
        goto LABEL_22;
      }
    }
  }

  else
  {
LABEL_9:

LABEL_16:
    v20 = objc_autoreleasePoolPush();
    v21 = self;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = HMFGetLogIdentifier();
      *buf = 138543618;
      v31 = v23;
      v32 = 2112;
      v33 = v4;
      _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_ERROR, "%{public}@no home found for home uuid %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v20);
    v14 = 0;
    v19 = 0;
  }

LABEL_22:

  v24 = *MEMORY[0x277D85DE8];
  return v19;
}

- (BOOL)supportsCommissioningCertificateRetrievalForCurrentlyPairingAccessory
{
  v34 = *MEMORY[0x277D85DE8];
  v3 = [(HMDAccessoryBrowser *)self homeManager];
  v4 = [(HMDAccessoryBrowser *)self currentlyPairingAccessories];
  v5 = [v4 firstObject];
  v6 = [v5 homeUUID];

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v7 = [v3 homes];
  v8 = [v7 countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v26;
LABEL_3:
    v11 = 0;
    while (1)
    {
      if (*v26 != v10)
      {
        objc_enumerationMutation(v7);
      }

      v12 = *(*(&v25 + 1) + 8 * v11);
      v13 = [v12 uuid];
      v14 = [v13 isEqual:v6];

      if (v14)
      {
        break;
      }

      if (v9 == ++v11)
      {
        v9 = [v7 countByEnumeratingWithState:&v25 objects:v33 count:16];
        if (v9)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v15 = v12;

    if (!v15)
    {
      goto LABEL_12;
    }

    v16 = [v15 primaryResident];
    v17 = [v16 capabilities];
    v18 = [v17 supportsMatterOwnerCertFetch];
  }

  else
  {
LABEL_9:

LABEL_12:
    v19 = objc_autoreleasePoolPush();
    v20 = self;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier();
      *buf = 138543618;
      v30 = v22;
      v31 = 2112;
      v32 = v6;
      _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_ERROR, "%{public}@no home found for home uuid %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v19);
    v15 = 0;
    v18 = 0;
  }

  v23 = *MEMORY[0x277D85DE8];
  return v18;
}

- (void)accessoryServerBrowser:(id)a3 getCommissioningCertificatesForNodeID:(id)a4 fabricID:(id)a5 publicKey:(id)a6 completion:(id)a7
{
  v50 = *MEMORY[0x277D85DE8];
  v40 = a3;
  v39 = a4;
  v38 = a5;
  v37 = a6;
  v12 = a7;
  v13 = [(HMDAccessoryBrowser *)self homeManager];
  v14 = [(HMDAccessoryBrowser *)self currentlyPairingAccessories];
  v15 = [v14 firstObject];
  v16 = [v15 homeUUID];

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v36 = v13;
  v17 = [v13 homes];
  v18 = [v17 countByEnumeratingWithState:&v41 objects:v49 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v42;
LABEL_3:
    v21 = 0;
    while (1)
    {
      if (*v42 != v20)
      {
        objc_enumerationMutation(v17);
      }

      v22 = *(*(&v41 + 1) + 8 * v21);
      v23 = [v22 uuid];
      v24 = [v23 isEqual:v16];

      if (v24)
      {
        break;
      }

      if (v19 == ++v21)
      {
        v19 = [v17 countByEnumeratingWithState:&v41 objects:v49 count:16];
        if (v19)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v25 = v22;

    if (!v25)
    {
      goto LABEL_12;
    }

    v27 = v38;
    v26 = v39;
    v28 = v37;
    [v25 retrieveOperationalCertificatesForFabricID:v38 commissionerNodeID:0 commissioneeNodeID:v39 publicKey:v37 completion:v12];
    v29 = v40;
  }

  else
  {
LABEL_9:

LABEL_12:
    v30 = objc_autoreleasePoolPush();
    v31 = self;
    v32 = HMFGetOSLogHandle();
    v29 = v40;
    v28 = v37;
    v27 = v38;
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      v33 = HMFGetLogIdentifier();
      *buf = 138543618;
      v46 = v33;
      v47 = 2112;
      v48 = v16;
      _os_log_impl(&dword_229538000, v32, OS_LOG_TYPE_ERROR, "%{public}@no home found for home uuid %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v30);
    v34 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    (*(v12 + 2))(v12, 0, 0, 0, 0, v34);

    v25 = 0;
    v26 = v39;
  }

  v35 = *MEMORY[0x277D85DE8];
}

- (BOOL)isServerLinkTypeBrowseable:(int64_t)a3
{
  v28 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock_with_options();
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [(HMDAccessoryBrowser *)self browseableLinkTypes];
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v27 count:16];
  if (v6)
  {
    v7 = *v18;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(v5);
        }

        if ([*(*(&v17 + 1) + 8 * i) intValue] == a3)
        {
          LOBYTE(v6) = 1;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v17 objects:v27 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  os_unfair_lock_unlock(&self->_lock);
  v9 = objc_autoreleasePoolPush();
  v10 = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = HMFGetLogIdentifier();
    v13 = HAPLinkTypeDescription();
    v14 = HMFBooleanToString();
    *buf = 138543874;
    v22 = v12;
    v23 = 2112;
    v24 = v13;
    v25 = 2112;
    v26 = v14;
    _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@LinkType %@ browseable %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v9);
  v15 = *MEMORY[0x277D85DE8];
  return v6;
}

- (void)accessoryServerBrowser:(id)a3 getCacheForAccessoryWithIdentifier:(id)a4 withCompletion:(id)a5
{
  v7 = a5;
  v8 = [HMDHomeManager getAccessoryCacheForIdentifier:a4];
  (*(a5 + 2))(v7, v8);
}

- (void)accessoryServerBrowser:(id)a3 saveCache:(id)a4 serverIdentifier:(id)a5
{
  if (a5)
  {
    [HMDHomeManager saveAccessoryCache:a4 forIdentifier:a5];
  }
}

- (void)accessoryServerBrowser:(id)a3 didFailToDiscoverAccessoryServerWithIdentifier:(id)a4
{
  v46 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDAccessoryBrowser *)self workQueue];
  dispatch_assert_queue_V2(v8);

  if ([v6 linkType] == 2)
  {
    v9 = objc_autoreleasePoolPush();
    v10 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v40 = 138543618;
      v41 = v12;
      v42 = 2112;
      v43 = v7;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Removing BLE Accessory: %@ from discovering list", &v40, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
    v13 = [(HMDAccessoryBrowser *)v10 discoveringBLEAccessoryServerIdentifiers];
    [v13 removeObject:v7];
    goto LABEL_5;
  }

  if ([v6 linkType] == 1)
  {
    v14 = [(HMDAccessoryBrowser *)self ipAccessoryServerBrowser];
    if ([v6 isEqual:v14])
    {
      v15 = [(HMDAccessoryBrowser *)self hap2AccessoryServerBrowser];

      if (v15)
      {
        v16 = objc_autoreleasePoolPush();
        v17 = self;
        v18 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          v19 = HMFGetLogIdentifier();
          v40 = 138543618;
          v41 = v19;
          v42 = 2112;
          v43 = v7;
          _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_INFO, "%{public}@IP Browser couldn't find Server with Identifier %@. Giving HAP2 a chance...", &v40, 0x16u);
        }

        objc_autoreleasePoolPop(v16);
        v20 = [(HMDAccessoryBrowser *)v17 hap2AccessoryServerBrowser];
LABEL_25:
        v34 = v20;
        [v20 discoverAccessoryServerWithIdentifier:v7];
        goto LABEL_31;
      }
    }

    else
    {
    }
  }

  if ([v6 linkType] == 1)
  {
    v13 = [(HMDAccessoryBrowser *)self hap2AccessoryServerBrowser];
    if (([v6 isEqual:v13] & 1) == 0)
    {
LABEL_5:

      goto LABEL_26;
    }

    v21 = [(HMDAccessoryBrowser *)self chipAccessoryServerBrowser];

    if (v21)
    {
      v22 = objc_autoreleasePoolPush();
      v23 = self;
      v24 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        v25 = HMFGetLogIdentifier();
        v40 = 138543618;
        v41 = v25;
        v42 = 2112;
        v43 = v7;
        _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_INFO, "%{public}@HAP2 Browser couldn't find Server with Identifier %@. Maybe it's a CHIP accessory, checking...", &v40, 0x16u);
      }

      objc_autoreleasePoolPop(v22);
      if ([(HMDAccessoryBrowser *)v23 isThreadAccessoryWithAccessoryServerIdentifier:v7])
      {
        v26 = [(HMDAccessoryBrowser *)v23 pairedHMDHAPAccessoryWithAccessoryServerIdentifier:v7];
        if (v26)
        {
          v27 = +[HMDCharacteristicReadWriteLogEventManager sharedInstance];
          v28 = [v26 uuid];
          [v27 updateBrowseStatus:0 forAccessoryUUID:v28];

          v29 = objc_autoreleasePoolPush();
          v30 = v23;
          v31 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
          {
            v32 = HMFGetLogIdentifier();
            v33 = [v26 uuid];
            v40 = 138543874;
            v41 = v32;
            v42 = 2112;
            v43 = v7;
            v44 = 2112;
            v45 = v33;
            _os_log_impl(&dword_229538000, v31, OS_LOG_TYPE_INFO, "%{public}@Lost thread accessory with server ID: %@ and device ID: %@", &v40, 0x20u);
          }

          objc_autoreleasePoolPop(v29);
        }
      }

      v20 = [(HMDAccessoryBrowser *)v23 chipAccessoryServerBrowser];
      goto LABEL_25;
    }
  }

LABEL_26:
  v35 = [(HMDAccessoryBrowser *)self _tombstonedAccessoryServerWithServerIdentifier:v7];
  v36 = v35;
  if (v35 && (v37 = [v35 linkType], v37 == objc_msgSend(v6, "linkType")))
  {
    v38 = 53;
  }

  else
  {
    v38 = 4;
  }

  v34 = [MEMORY[0x277CCA9B8] hmErrorWithCode:v38];
  -[HMDAccessoryBrowser _notifyDelegateOfDiscoveryFailure:accessoryServer:linkType:](self, "_notifyDelegateOfDiscoveryFailure:accessoryServer:linkType:", v34, v7, [v6 linkType]);

LABEL_31:
  v39 = *MEMORY[0x277D85DE8];
}

- (void)_notifyDelegateOfDiscoveryFailure:(id)a3 accessoryServer:(id)a4 linkType:(int64_t)a5
{
  v39 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = [(HMDAccessoryBrowser *)self workQueue];
  dispatch_assert_queue_V2(v10);

  v11 = [(HMDAccessoryBrowser *)self _pairingInformationForAccessoryIdentifier:v9];
  v12 = [v11 pairingActivity];

  if (v12)
  {
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __82__HMDAccessoryBrowser__notifyDelegateOfDiscoveryFailure_accessoryServer_linkType___block_invoke;
    v28[3] = &unk_27868A750;
    v29 = v12;
    v30 = v8;
    __82__HMDAccessoryBrowser__notifyDelegateOfDiscoveryFailure_accessoryServer_linkType___block_invoke(v28);
  }

  v13 = [(HMDAccessoryBrowser *)self pairedAccessoryInformationWithIdentifier:v9];
  v14 = v13;
  if (v13)
  {
    v15 = [v13 delegate];
    if (objc_opt_respondsToSelector())
    {
      v16 = objc_autoreleasePoolPush();
      v17 = self;
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v19 = HMFGetLogIdentifier();
        v27 = v16;
        if (a5 > 2)
        {
          v20 = @"Undefined";
        }

        else
        {
          v20 = off_2786768F0[a5];
        }

        v25 = v20;
        *buf = 138544130;
        v32 = v19;
        v33 = 2112;
        v34 = v15;
        v35 = 2112;
        v36 = v9;
        v37 = 2112;
        v38 = v25;
        _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_INFO, "%{public}@Notifying '%@' that accessory server discovery failed %@ over %@", buf, 0x2Au);

        v16 = v27;
      }

      objc_autoreleasePoolPop(v16);
      [v15 accessoryBrowser:v17 discoveryFailedWithError:v8 accessoryServer:v9 linkType:a5];
    }
  }

  else
  {
    v21 = objc_autoreleasePoolPush();
    v22 = self;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = HMFGetLogIdentifier();
      *buf = 138543618;
      v32 = v24;
      v33 = 2112;
      v34 = v9;
      _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_INFO, "%{public}@Not notifying of discovery failure for %@ because no paired accessory information exists", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v21);
  }

  v26 = *MEMORY[0x277D85DE8];
}

void __82__HMDAccessoryBrowser__notifyDelegateOfDiscoveryFailure_accessoryServer_linkType___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v3 = *(a1 + 40);
    v4 = v1;
    [v3 domain];

    [*(a1 + 40) code];
  }
}

- (void)accessoryServerBrowser:(id)a3 didStopDiscoveringWithError:(id)a4
{
  v32 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v8 = [(HMDAccessoryBrowser *)self discoveredAccessoryServerIdentifiers];
  v9 = [v8 copy];

  v10 = [v9 countByEnumeratingWithState:&v21 objects:v31 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v22;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v22 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v21 + 1) + 8 * i);
        v15 = [(HMDAccessoryBrowser *)self pairedAccessoryInformationWithIdentifier:v14];
        if (!v15)
        {
          [(HMDAccessoryBrowser *)self _removeDiscoveredAccessoryServerIdentifier:v14];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v21 objects:v31 count:16];
    }

    while (v11);
  }

  if (v7)
  {
    v16 = objc_autoreleasePoolPush();
    v17 = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543874;
      v26 = v19;
      v27 = 2112;
      v28 = v6;
      v29 = 2112;
      v30 = v7;
      _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_ERROR, "%{public}@Failed to stop discovering accessories for server browser %@ with error %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v16);
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)accessoryServerBrowser:(id)a3 didStartDiscoveringWithError:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v13 = 138543874;
      v14 = v11;
      v15 = 2112;
      v16 = v6;
      v17 = 2112;
      v18 = v7;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to start discovering accessories for server browser %@ with error %@", &v13, 0x20u);
    }

    objc_autoreleasePoolPop(v8);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_accessoryServerBrowser:(id)a3 didRemoveAccessoryServer:(id)a4 error:(id)a5 matterPairingEndContext:(id)a6
{
  v70 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(HMDAccessoryBrowser *)self workQueue];
  dispatch_assert_queue_V2(v14);

  v15 = [v11 identifier];
  [(HMDAccessoryBrowser *)self _removeDiscoveredAccessoryServerIdentifier:v15];

  if ([v10 linkType] == 2)
  {
    v16 = [(HMDAccessoryBrowser *)self discoveringBLEAccessoryServerIdentifiers];
    v17 = [v11 identifier];
    [v16 removeObject:v17];
  }

  v18 = [(HMDAccessoryBrowser *)self unpairedAccessoryForServer:v11];
  if (!v18)
  {
    if (![v11 isPaired])
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  v19 = v11;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v59 = v13;
  if (v19 && (isKindOfClass & 1) != 0)
  {
    v57 = v10;
    v21 = objc_autoreleasePoolPush();
    v22 = self;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = HMFGetLogIdentifier();
      [v18 name];
      v25 = v55 = v21;
      [v18 identifier];
      v27 = v26 = v12;
      *buf = 138544386;
      v61 = v24;
      v62 = 2112;
      v63 = v25;
      v64 = 2112;
      v65 = v27;
      v66 = 2112;
      v67 = v26;
      v68 = 2112;
      v69 = v59;
      _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_INFO, "%{public}@Removing unpaired accessory server %@/%@ error %@ context %@", buf, 0x34u);

      v12 = v26;
      v21 = v55;
    }

    objc_autoreleasePoolPop(v21);
    v10 = v57;
    v13 = v59;
  }

  [v18 removeAccessoryServer:v19];
  v28 = [(HMDAccessoryBrowser *)self _pairingInformationForUnpairedAccessory:v18];
  v29 = v28;
  if (v28)
  {
    v30 = [v28 setupID];

    if (v30)
    {
      v31 = v10;
      v32 = v12;
      v33 = v32;
      if (v32 && ([v32 isHMError] & 1) == 0)
      {
        v34 = v12;
        v35 = mapHAPPairingErrorToHMError(v33);
      }

      else
      {
        v34 = v12;
        v35 = [MEMORY[0x277CCA9B8] hmErrorWithCode:79];
      }

      v52 = v35;

      v13 = v59;
      [(HMDAccessoryBrowser *)self _cancelPairingWithAccessory:v18 error:v52 context:v59];

      v10 = v31;
      goto LABEL_28;
    }

    if ([v19 isPaired])
    {
LABEL_29:
      [(HMDAccessoryBrowser *)self _notifyDelegateOfRemovedAccessoryServer:v11 error:v12, v54];
      goto LABEL_30;
    }

    [(HMDAccessoryBrowser *)self _stopReconfirmTimer:v18];
    [(HMDAccessoryBrowser *)self accessoryServer:v19 updatePairingProgress:9];
    v43 = objc_autoreleasePoolPush();
    v44 = self;
    v45 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
    {
      v46 = HMFGetLogIdentifier();
      [v18 name];
      v48 = v47 = v12;
      v49 = [v18 identifier];
      *buf = 138543874;
      v61 = v46;
      v62 = 2112;
      v63 = v48;
      v64 = 2112;
      v65 = v49;
      _os_log_impl(&dword_229538000, v45, OS_LOG_TYPE_INFO, "%{public}@Lost the accessory before setup code was scanned - likely unplugged: %@/%@", buf, 0x20u);

      v12 = v47;
    }

    objc_autoreleasePoolPop(v43);
    v50 = [v18 supportsCHIP];
    if (v50 && ([v12 domain], v43 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v43, "isEqual:", *MEMORY[0x277D17A00])))
    {
      v51 = [MEMORY[0x277CCA9B8] hmPrivateErrorWithCode:2015 underlyingError:v12];
    }

    else
    {
      v51 = [MEMORY[0x277CCA9B8] hmPrivateErrorWithCode:2015];
      if (!v50)
      {
LABEL_33:
        [(HMDAccessoryBrowser *)v44 _handlePairingInterruptedTimeout:v18 error:v51];

        v13 = v59;
        goto LABEL_30;
      }
    }

    goto LABEL_33;
  }

  v34 = v12;
  v36 = [v18 accessoryServers];
  v37 = [v36 count];

  if (!v37)
  {
    v58 = v10;
    v38 = objc_autoreleasePoolPush();
    v39 = self;
    v40 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
    {
      v56 = HMFGetLogIdentifier();
      v41 = [v19 name];
      [v19 identifier];
      v42 = v54 = v38;
      *buf = 138543874;
      v61 = v56;
      v62 = 2112;
      v63 = v41;
      v64 = 2112;
      v65 = v42;
      _os_log_impl(&dword_229538000, v40, OS_LOG_TYPE_INFO, "%{public}@Removing unpaired accessory server %@ (%@)", buf, 0x20u);

      v38 = v54;
    }

    objc_autoreleasePoolPop(v38);
    [(HMDAccessoryBrowser *)v39 removeUnpairedHAPAccessory:v18 completion:&__block_literal_global_600];
    v10 = v58;
    v13 = v59;
  }

LABEL_28:

  v12 = v34;
  if ([v19 isPaired])
  {
    goto LABEL_29;
  }

LABEL_30:

  v53 = *MEMORY[0x277D85DE8];
}

- (void)_addReconfirmTimer:(id)a3 accessoryServer:(id)a4
{
  v35 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDAccessoryBrowser *)self workQueue];
  dispatch_assert_queue_V2(v8);

  v9 = [(HMDAccessoryBrowser *)self _pairingInformationForUnpairedAccessory:v6];
  v10 = v9;
  if (!v9)
  {
    v12 = objc_autoreleasePoolPush();
    v13 = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier();
      v16 = [v6 name];
      v17 = [v6 identifier];
      v29 = 138543874;
      v30 = v15;
      v31 = 2112;
      v32 = v16;
      v33 = 2112;
      v34 = v17;
      v18 = "%{public}@Not starting a reconfirm timer for unpaired accessory %@/%@ - pairing information does not exist";
      goto LABEL_7;
    }

LABEL_8:

    objc_autoreleasePoolPop(v12);
    goto LABEL_12;
  }

  v11 = [v9 reconfirmTimer];

  if (v11)
  {
    v12 = objc_autoreleasePoolPush();
    v13 = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier();
      v16 = [v6 name];
      v17 = [v6 identifier];
      v29 = 138543874;
      v30 = v15;
      v31 = 2112;
      v32 = v16;
      v33 = 2112;
      v34 = v17;
      v18 = "%{public}@WAC/Bonjour reconfirm timer exists for unpaired accessory %@/%@ - skipping";
LABEL_7:
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, v18, &v29, 0x20u);

      goto LABEL_8;
    }

    goto LABEL_8;
  }

  [v7 reconfirm];
  v19 = objc_autoreleasePoolPush();
  v20 = self;
  v21 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    v22 = HMFGetLogIdentifier();
    v23 = [v6 name];
    v24 = [v6 identifier];
    v29 = 138543874;
    v30 = v22;
    v31 = 2112;
    v32 = v23;
    v33 = 2112;
    v34 = v24;
    _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_INFO, "%{public}@Starting a WAC/Bonjour reconfirm timer for unpaired accessory %@/%@", &v29, 0x20u);
  }

  objc_autoreleasePoolPop(v19);
  v25 = objc_alloc(MEMORY[0x277D0F920]);
  v26 = [v25 initWithTimeInterval:0 options:*&pairingReconfirmWaitPeriod];
  [v10 setReconfirmTimer:v26];
  [v26 setDelegate:v20];
  v27 = [(HMDAccessoryBrowser *)v20 workQueue];
  [v26 setDelegateQueue:v27];

  [v26 resume];
LABEL_12:

  v28 = *MEMORY[0x277D85DE8];
}

- (void)_startPairingInterruptionTimer:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDAccessoryBrowser *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(HMDAccessoryBrowser *)self _pairingInformationForUnpairedAccessory:v4];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 pairingInterruptionTimer];

    if (!v8)
    {
      v16 = objc_alloc(MEMORY[0x277D0F920]);
      v17 = [v16 initWithTimeInterval:0 options:*&pairingInterruptionGracePeriod];
      [v7 setPairingInterruptionTimer:v17];
      [v17 setDelegate:self];
      v18 = [(HMDAccessoryBrowser *)self workQueue];
      [v17 setDelegateQueue:v18];

      [v17 resume];
      goto LABEL_10;
    }

    v9 = objc_autoreleasePoolPush();
    v10 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v13 = [v4 name];
      v14 = [v4 identifier];
      v20 = 138543874;
      v21 = v12;
      v22 = 2112;
      v23 = v13;
      v24 = 2112;
      v25 = v14;
      v15 = "%{public}@Pairing interrupted timer exists for unpaired accessory %@/%@ - skipping";
LABEL_7:
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, v15, &v20, 0x20u);
    }
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    v10 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v13 = [v4 name];
      v14 = [v4 identifier];
      v20 = 138543874;
      v21 = v12;
      v22 = 2112;
      v23 = v13;
      v24 = 2112;
      v25 = v14;
      v15 = "%{public}@Not starting a pairing interrupted timer for unpaired accessory %@/%@ - pairing information does not exist";
      goto LABEL_7;
    }
  }

  objc_autoreleasePoolPop(v9);
LABEL_10:

  v19 = *MEMORY[0x277D85DE8];
}

- (void)_stopReconfirmTimer:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDAccessoryBrowser *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(HMDAccessoryBrowser *)self _pairingInformationForUnpairedAccessory:v4];
  v7 = [v6 reconfirmTimer];

  if (v7)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v12 = [v4 name];
      v13 = [v4 identifier];
      v16 = 138543874;
      v17 = v11;
      v18 = 2112;
      v19 = v12;
      v20 = 2112;
      v21 = v13;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Canceling reconfirm timer for unpaired accessory %@/%@", &v16, 0x20u);
    }

    objc_autoreleasePoolPop(v8);
    v14 = [v6 reconfirmTimer];
    [v14 cancel];

    [v6 setReconfirmTimer:0];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_handlePairingInterruptedTimeout:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v8 = +[HMDUIDialogPresenter sharedUIDialogPresenter];
  v9 = [(HMDAccessoryBrowser *)self workQueue];
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __62__HMDAccessoryBrowser__handlePairingInterruptedTimeout_error___block_invoke;
  v17 = &unk_278685F38;
  objc_copyWeak(&v20, &location);
  v10 = v6;
  v18 = v10;
  v11 = v7;
  v19 = v11;
  [v8 dismissPendingDialogWithContext:v10 queue:v9 completionHandler:&v14];

  v12 = [v10 accessoryServers];
  v13 = [v12 count];

  if (!v13)
  {
    [(HMDAccessoryBrowser *)self removeUnpairedHAPAccessory:v10 completion:&__block_literal_global_598_220673];
  }

  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);
}

void __62__HMDAccessoryBrowser__handlePairingInterruptedTimeout_error___block_invoke(uint64_t a1)
{
  v36 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained workQueue];
    dispatch_assert_queue_V2(v4);

    if ([*(a1 + 32) supportsCHIP])
    {
      v5 = *(a1 + 40);
      v6 = getLowestError();
      v7 = [HMDMatterAccessoryPairingEndContext hmdContextWithCancelledError:v6];

      v8 = objc_autoreleasePoolPush();
      v9 = v3;
      v10 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = HMFGetLogIdentifier();
        v12 = [*(a1 + 32) name];
        v13 = [*(a1 + 32) identifier];
        v14 = *(a1 + 40);
        v26 = 138544386;
        v27 = v11;
        v28 = 2112;
        v29 = v12;
        v30 = 2112;
        v31 = v13;
        v32 = 2112;
        v33 = v14;
        v34 = 2112;
        v35 = v7;
        _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Indicating addAccessory failure for matter accessory %@(%@) with error %@ context %@", &v26, 0x34u);
      }
    }

    else
    {
      v8 = objc_autoreleasePoolPush();
      v15 = v3;
      v10 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v16 = HMFGetLogIdentifier();
        v17 = [*(a1 + 32) name];
        v18 = [*(a1 + 32) identifier];
        v19 = *(a1 + 40);
        v26 = 138544130;
        v27 = v16;
        v28 = 2112;
        v29 = v17;
        v30 = 2112;
        v31 = v18;
        v32 = 2112;
        v33 = v19;
        _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Indicating addAccessory failure for accessory %@(%@) with error %@", &v26, 0x2Au);
      }

      v7 = 0;
    }

    objc_autoreleasePoolPop(v8);
    [v3 _cancelPairingWithAccessory:*(a1 + 32) error:*(a1 + 40) context:v7];
    v20 = [v3 _pairingInformationForUnpairedAccessory:*(a1 + 32)];
    if (v20)
    {
      v21 = [v3 currentlyPairingAccessories];
      [v21 removeObject:v20];
    }

    v22 = [*(a1 + 32) uuid];
    v23 = [v3 _currentPairingProgressHandlerForAccessoryUUID:v22];

    if (v23)
    {
      v24 = [v3 currentlyPairingProgressHandlers];
      [v24 removeObject:v23];
    }
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)_notifyDelegateOfRemovedAccessoryServer:(id)a3 error:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 identifier];
  v9 = [(HMDAccessoryBrowser *)self pairedAccessoryInformationWithIdentifier:v8];

  v10 = [v9 delegate];
  if (objc_opt_respondsToSelector())
  {
    v11 = objc_autoreleasePoolPush();
    v12 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      v16 = 138544130;
      v17 = v14;
      v18 = 2112;
      v19 = v10;
      v20 = 2112;
      v21 = v6;
      v22 = 2112;
      v23 = v7;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Notifying '%@' that a paired accessory server %@ was removed with error: %@", &v16, 0x2Au);
    }

    objc_autoreleasePoolPop(v11);
    [v10 accessoryBrowser:v12 didRemoveAccessoryServer:v6 error:v7];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)accessoryServerBrowser:(id)a3 didFinishWACForAccessoryWithIdentifier:(id)a4 error:(id)a5
{
  v10 = a4;
  v7 = a5;
  v8 = [(HMDAccessoryBrowser *)self identifierOfAccessoryBeingReprovisioned];
  v9 = [v8 isEqual:v10];

  if (v9)
  {
    [(HMDAccessoryBrowser *)self setIdentifierOfAccessoryBeingReprovisioned:0];
    [(HMDAccessoryBrowser *)self _notifyDelegateOfWACCompletionForAccessoryServerWithIdentifier:v10 error:v7];
  }
}

- (void)_notifyDelegateOfAccessoryServerNeedingReprovisioning:(id)a3 error:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 identifier];
  v9 = [(HMDAccessoryBrowser *)self pairedAccessoryInformationWithIdentifier:v8];

  v10 = [v9 delegate];
  if (objc_opt_respondsToSelector())
  {
    v11 = objc_autoreleasePoolPush();
    v12 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      v16 = 138544130;
      v17 = v14;
      v18 = 2112;
      v19 = v10;
      v20 = 2112;
      v21 = v6;
      v22 = 2112;
      v23 = v7;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Notifying '%@'' that a paired accessory server %@ needs reprovisioning with error: %@", &v16, 0x2Au);
    }

    objc_autoreleasePoolPop(v11);
    [v10 accessoryBrowser:v12 didFindAccessoryServerNeedingReprovisioning:v6 error:v7];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_notifyDelegateOfWACCompletionForAccessoryServerWithIdentifier:(id)a3 error:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDAccessoryBrowser *)self pairedAccessoryInformationWithIdentifier:v6];
  v9 = [v8 delegate];
  if (objc_opt_respondsToSelector())
  {
    v10 = objc_autoreleasePoolPush();
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v14 = 138544130;
      v15 = v12;
      v16 = 2112;
      v17 = v9;
      v18 = 2112;
      v19 = v6;
      v20 = 2112;
      v21 = v7;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@[Accessory Browser] Notifying '%@' on provision complete for accessory: %@ with error: %@", &v14, 0x2Au);
    }

    objc_autoreleasePoolPop(v10);
    [v9 accessoryBrowser:self didFinishWACForAccessoryWithIdentifier:v6 error:v7];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)accessoryServerBrowser:(id)a3 didFindAccessoryServerForReprovisioning:(id)a4
{
  v31 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDAccessoryBrowser *)self workQueue];
  dispatch_assert_queue_V2(v8);

  v9 = [v7 identifier];
  v10 = objc_autoreleasePoolPush();
  v11 = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v13 = HMFGetLogIdentifier();
    v14 = [(HMDAccessoryBrowser *)v11 identifierOfAccessoryBeingReprovisioned];
    v25 = 138543874;
    v26 = v13;
    v27 = 2112;
    v28 = v14;
    v29 = 2112;
    v30 = v7;
    _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_DEBUG, "%{public}@Currently reprovisioning:%@,  Found accessory server: %@ for reprovisioning", &v25, 0x20u);
  }

  objc_autoreleasePoolPop(v10);
  v15 = [(HMDAccessoryBrowser *)v11 workQueue];
  [v7 setDelegate:v11 queue:v15];

  if ([v7 isPaired])
  {
    v16 = [(HMDAccessoryBrowser *)v11 identifierOfAccessoryBeingReprovisioned];
    v17 = [v16 isEqual:v9];

    if (v17)
    {
      v18 = objc_alloc_init(MEMORY[0x277CFEA08]);
      v19 = [(HMDAccessoryBrowser *)v11 wiFiPSKForAccessoryReprovisioning];
      [v18 setPsk:v19];

      v20 = [(HMDAccessoryBrowser *)v11 countrycodeForAccessoryReprovisioning];
      [v18 setIsoCountryCode:v20];

      v21 = v7;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v22 = v21;
      }

      else
      {
        v22 = 0;
      }

      v23 = v22;

      [v23 startReprovisioningWithPairingRequest:v18];
    }
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (void)_checkIfPairingWithPairedAccessoryServer:(id)a3 errorCode:(int64_t)a4
{
  v38 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(HMDAccessoryBrowser *)self workQueue];
  dispatch_assert_queue_V2(v7);

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v8 = [(HMDAccessoryBrowser *)self currentlyPairingAccessories];
  v9 = [v8 countByEnumeratingWithState:&v27 objects:v37 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v28;
LABEL_3:
    v12 = 0;
    while (1)
    {
      if (*v28 != v11)
      {
        objc_enumerationMutation(v8);
      }

      v13 = *(*(&v27 + 1) + 8 * v12);
      if ([v13 matchesAccessoryServer:v6])
      {
        break;
      }

      if (v10 == ++v12)
      {
        v10 = [v8 countByEnumeratingWithState:&v27 objects:v37 count:16];
        if (v10)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v14 = v13;

    if (!v14)
    {
      goto LABEL_18;
    }

    v15 = objc_autoreleasePoolPush();
    v16 = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      v19 = [v6 identifier];
      *buf = 138543874;
      v32 = v18;
      v33 = 2112;
      v34 = v19;
      v35 = 2112;
      v36 = v14;
      _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@Paired Accessory server %@ matches accessory pending to be paired %@ - aborting the operation", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v15);
    v20 = [v6 identifier];
    v21 = [v14 addAccessoryProgressHandler];
    [(HMDAccessoryBrowser *)v16 updateAlreadyPairingProgressForAccessoryServerIdentifier:v20 progressHandler:v21];

    v22 = [MEMORY[0x277CCA9B8] hmErrorWithCode:a4];
    v23 = v6;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    v25 = 0;
    if (v23 && (isKindOfClass & 1) != 0)
    {
      v25 = [HMDMatterAccessoryPairingEndContext hmdContextWithCancelledError:v22];
    }

    [(HMDAccessoryBrowser *)v16 _removePairingInformation:v14 error:v22 context:v25];
  }

  else
  {
LABEL_9:
    v14 = v8;
  }

LABEL_18:
  v26 = *MEMORY[0x277D85DE8];
}

- (void)_removePairingInformation:(id)a3 error:(id)a4 context:(id)a5
{
  v41 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(HMDAccessoryBrowser *)self workQueue];
  dispatch_assert_queue_V2(v11);

  v12 = objc_autoreleasePoolPush();
  v13 = self;
  v14 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = HMFGetLogIdentifier();
    *buf = 138543874;
    v36 = v15;
    v37 = 2112;
    v38 = v8;
    v39 = 2112;
    v40 = v9;
    _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, "%{public}@Removing current pairing info %@ error %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v12);
  v29 = MEMORY[0x277D85DD0];
  v30 = 3221225472;
  v31 = __63__HMDAccessoryBrowser__removePairingInformation_error_context___block_invoke;
  v32 = &unk_27868A750;
  v16 = v8;
  v33 = v16;
  v17 = v9;
  v34 = v17;
  __63__HMDAccessoryBrowser__removePairingInformation_error_context___block_invoke(&v29);
  v18 = [v16 addAccessoryCompletionHandler];

  if (v18)
  {
    v19 = [v16 addAccessoryCompletionHandler];
    (v19)[2](v19, 0, 0, 0, 0, 0, v17, v10);
  }

  else
  {
    v20 = objc_autoreleasePoolPush();
    v21 = v13;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = HMFGetLogIdentifier();
      *buf = 138543362;
      v36 = v23;
      _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_INFO, "%{public}@No addAccessory completion handler", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v20);
  }

  v24 = [(HMDAccessoryBrowser *)v13 currentlyPairingAccessories];
  [v24 removeObject:v16];

  v25 = [v16 accessoryUUID];
  v26 = [(HMDAccessoryBrowser *)v13 _currentPairingProgressHandlerForAccessoryUUID:v25];

  if (v26)
  {
    v27 = [(HMDAccessoryBrowser *)v13 currentlyPairingProgressHandlers];
    [v27 removeObject:v26];
  }

  v28 = *MEMORY[0x277D85DE8];
}

void __63__HMDAccessoryBrowser__removePairingInformation_error_context___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) pairingActivity];

  if (v2)
  {
    v3 = [*(a1 + 32) pairingActivity];
    [*(a1 + 40) domain];

    [*(a1 + 40) code];
  }
}

void __90__HMDAccessoryBrowser__notifyDelegateOfNewPairedAccessoryServer_stateChanged_stateNumber___block_invoke(uint64_t a1, char a2, char a3)
{
  v6 = [*(a1 + 32) workQueue];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __90__HMDAccessoryBrowser__notifyDelegateOfNewPairedAccessoryServer_stateChanged_stateNumber___block_invoke_2;
  v10[3] = &unk_2786815A0;
  v7 = *(a1 + 40);
  v13 = *(a1 + 48);
  v14 = a2;
  v8 = v7;
  v9 = *(a1 + 32);
  v11 = v8;
  v12 = v9;
  v15 = a3;
  dispatch_async(v6, v10);
}

void __90__HMDAccessoryBrowser__notifyDelegateOfNewPairedAccessoryServer_stateChanged_stateNumber___block_invoke_2(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  if (*(*(*(a1 + 48) + 8) + 24) != 1 || (*(a1 + 56) & 1) != 0 || (v2 = [*(a1 + 32) isPaired], v2 == objc_msgSend(*(a1 + 32), "hasPairings")))
  {
    if (*(a1 + 57) == 1)
    {
      v8 = *(a1 + 32);
      v7 = *(a1 + 40);
      v9 = *MEMORY[0x277D85DE8];

      [v7 _discoverAccessories:v8];
    }

    else
    {
      v10 = objc_autoreleasePoolPush();
      v11 = *(a1 + 40);
      v12 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        v13 = HMFGetLogIdentifier();
        v14 = *(a1 + 32);
        v16 = 138543618;
        v17 = v13;
        v18 = 2112;
        v19 = v14;
        _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_DEBUG, "%{public}@Not allowed to discover accessory server: %@", &v16, 0x16u);
      }

      objc_autoreleasePoolPop(v10);
      v15 = *MEMORY[0x277D85DE8];
    }
  }

  else
  {
    v4 = *(a1 + 32);
    v3 = *(a1 + 40);
    v5 = *(a1 + 57);
    v6 = *MEMORY[0x277D85DE8];

    [v3 _tombstoneAccessoryServer:v4 forceNotify:v5];
  }
}

- (void)_resurrectAccessoryServer:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDAccessoryBrowser *)self workQueue];
  dispatch_assert_queue_V2(v5);

  if ([(HMDAccessoryBrowser *)self _isAccessoryServerTombstoned:v4])
  {
    v6 = objc_autoreleasePoolPush();
    v7 = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v10 = [v4 identifier];
      v13 = 138543618;
      v14 = v9;
      v15 = 2112;
      v16 = v10;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Resurrecting paired accessory server '%@'", &v13, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    v11 = [(HMDAccessoryBrowser *)v7 tombstonedHAPAccessoryServers];
    [v11 removeObject:v4];

    if ([v4 isPaired])
    {
      [(HMDAccessoryBrowser *)v7 _discoverAccessories:v4];
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_discoverAccessories:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDAccessoryBrowser *)self workQueue];
  dispatch_assert_queue_V2(v5);

  if ([v4 linkType] == 2)
  {
    v6 = [(HMDAccessoryBrowser *)self discoveringBLEAccessoryServerIdentifiers];
    v7 = [v4 identifier];
    v8 = [v6 containsObject:v7];

    if (v8)
    {
      v9 = objc_autoreleasePoolPush();
      v10 = self;
      v11 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = HMFGetLogIdentifier();
        v26 = 138543618;
        v27 = v12;
        v28 = 2112;
        v29 = v4;
        _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Accessory discovery already in progress for BLE Accessory with server: %@", &v26, 0x16u);
      }

      objc_autoreleasePoolPop(v9);
    }

    else
    {
      v13 = v4;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v14 = v13;
      }

      else
      {
        v14 = 0;
      }

      v15 = v14;

      v16 = [(HMDAccessoryBrowser *)self _requiredCharacteristicsTypesToReadFromBTLEServer:v15];
      v17 = objc_autoreleasePoolPush();
      v18 = self;
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        v20 = HMFGetLogIdentifier();
        v21 = [v13 shortDescription];
        v22 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{objc_msgSend(v15, "connectReason")}];
        v26 = 138544130;
        v27 = v20;
        v28 = 2112;
        v29 = v21;
        v30 = 2112;
        v31 = v22;
        v32 = 2112;
        v33 = v16;
        _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_INFO, "%{public}@Adding BLE Accessory server: %@ to the discovering list. Connection Reason: %@. Reading characteristic types: %@", &v26, 0x2Au);
      }

      objc_autoreleasePoolPop(v17);
      v23 = [(HMDAccessoryBrowser *)v18 discoveringBLEAccessoryServerIdentifiers];
      v24 = [v13 identifier];
      [v23 addObject:v24];

      [v15 discoverAccessoriesAndReadCharacteristicTypes:v16];
    }
  }

  else
  {
    [v4 discoverAccessories];
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (id)_requiredCharacteristicsTypesToReadFromBTLEServer:(id)a3
{
  v4 = a3;
  v5 = [(HMDAccessoryBrowser *)self workQueue];
  dispatch_assert_queue_V2(v5);

  if (v4)
  {
    v6 = [(HMDAccessoryBrowser *)self pairedHMDHAPAccessoryWithAccessoryServer:v4];
    v7 = [v4 identifier];
    v8 = [(HMDAccessoryBrowser *)self _pairingInformationForAccessoryIdentifier:v7];

    if (v6 | v8)
    {
      v9 = [MEMORY[0x277CBEB58] set];
      v10 = [v6 productData];

      if (!v10)
      {
        [v9 addObject:@"00000220-0000-1000-8000-0026BB765291"];
      }

      v11 = [v6 providedName];

      if (!v11)
      {
        [v9 addObject:*MEMORY[0x277CCF988]];
      }

      v12 = [v6 model];

      if (!v12)
      {
        [v9 addObject:*MEMORY[0x277CCF970]];
      }

      v13 = [v6 manufacturer];

      if (!v13)
      {
        [v9 addObject:*MEMORY[0x277CCF968]];
      }

      v14 = [v6 serialNumber];

      if (!v14)
      {
        [v9 addObject:*MEMORY[0x277CCFA58]];
      }

      v15 = [v6 firmwareVersion];
      if (!v15 || (v16 = v15, v17 = [v6 configNumber], v18 = objc_msgSend(v4, "configNumber"), v16, v17 != v18))
      {
        [v9 addObject:*MEMORY[0x277CCF8B8]];
        if ([v6 supportsCHIP])
        {
          [v9 addObject:*MEMORY[0x277CFE670]];
        }
      }

      v19 = [v6 accessoryFlags];

      if (!v19)
      {
        [v9 addObject:@"000000A6-0000-1000-8000-0026BB765291"];
      }

      if (v8)
      {
        [v9 addObject:@"00000703-0000-1000-8000-0026BB765291"];
        [v9 addObject:@"0000022B-0000-1000-8000-0026BB765291"];
        [v9 addObject:@"00000702-0000-1000-8000-0026BB765291"];
      }

      v20 = [v9 allObjects];
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (void)_tombstoneAccessoryServer:(id)a3 forceNotify:(BOOL)a4
{
  v4 = a4;
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if ([(HMDAccessoryBrowser *)self _isAccessoryServerTombstoned:v6])
  {
    if (!v4)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    v8 = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v11 = [v6 identifier];
      v15 = 138543618;
      v16 = v10;
      v17 = 2114;
      v18 = v11;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Tombstoning paired accessory server '%{public}@'", &v15, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    v12 = [(HMDAccessoryBrowser *)v8 tombstonedHAPAccessoryServers];
    [v12 addObject:v6];
  }

  [(HMDAccessoryBrowser *)self _notifyDelegateOfTombstonedAccessoryServer:v6];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = [(HMDAccessoryBrowser *)self btleAccessoryServerBrowser];
    [v13 disconnectFromBTLEAccessoryServer:v6];
  }

LABEL_9:

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_notifyDelegateOfTombstonedAccessoryServer:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 identifier];
  v6 = [(HMDAccessoryBrowser *)self pairedAccessoryInformationWithIdentifier:v5];

  v7 = [v6 delegate];
  if (objc_opt_respondsToSelector())
  {
    v8 = objc_autoreleasePoolPush();
    v9 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v12 = [v6 delegate];
      v14 = 138543874;
      v15 = v11;
      v16 = 2112;
      v17 = v12;
      v18 = 2112;
      v19 = v4;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Notifying '%@' that an accessory server %@ was tombstoned", &v14, 0x20u);
    }

    objc_autoreleasePoolPop(v8);
    [v7 accessoryBrowser:v9 didTombstoneAccessoryServer:v4];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (BOOL)_shouldAccessoryServerBeTombstoned:(id)a3
{
  v4 = a3;
  v5 = [(HMDAccessoryBrowser *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(HMDAccessoryBrowser *)self unpairedAccessoryForServer:v4];
  v7 = [(HMDAccessoryBrowser *)self _pairingInformationForUnpairedAccessory:v6];
  v8 = v7;
  if (v6 && v7)
  {
    LOBYTE(v9) = 0;
  }

  else
  {
    v10 = [v4 isPaired];
    v9 = v10 ^ [v4 hasPairings];
  }

  return v9;
}

- (id)_tombstonedAccessoryServerWithServerIdentifier:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [(HMDAccessoryBrowser *)self tombstonedHAPAccessoryServers];
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

- (BOOL)_isAccessoryServerTombstoned:(id)a3
{
  v4 = a3;
  v5 = [(HMDAccessoryBrowser *)self tombstonedHAPAccessoryServers];
  v6 = [v5 containsObject:v4];

  return v6;
}

- (id)messageDestination
{
  v3 = objc_alloc(MEMORY[0x277D0F820]);
  v4 = [(HMDAccessoryBrowser *)self messageTargetUUID];
  v5 = [v3 initWithTarget:v4];

  return v5;
}

- (void)_sendPairingCompletionStatusForServer:(id)a3 error:(id)a4 matterPairingEndContext:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = +[HMDUIDialogPresenter sharedUIDialogPresenter];
  v15 = [(HMDAccessoryBrowser *)self unpairedAccessoryForServer:v10];
  if (v15)
  {
    objc_initWeak(&location, self);
    v16 = [(HMDAccessoryBrowser *)self workQueue];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __109__HMDAccessoryBrowser__sendPairingCompletionStatusForServer_error_matterPairingEndContext_completionHandler___block_invoke;
    v19[3] = &unk_278681578;
    objc_copyWeak(&v25, &location);
    v24 = v13;
    v20 = v15;
    v21 = v10;
    v22 = v11;
    v23 = v12;
    [v14 dismissPendingDialogWithContext:v20 queue:v16 completionHandler:v19];

    objc_destroyWeak(&v25);
    objc_destroyWeak(&location);
  }

  else
  {
    v17 = _Block_copy(v13);
    v18 = v17;
    if (v17)
    {
      (*(v17 + 2))(v17);
    }
  }
}

void __109__HMDAccessoryBrowser__sendPairingCompletionStatusForServer_error_matterPairingEndContext_completionHandler___block_invoke(uint64_t a1)
{
  v54 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained workQueue];
    dispatch_assert_queue_V2(v4);

    v5 = [v3 _pairingInformationForUnpairedAccessory:*(a1 + 32)];
    v6 = [v5 addAccessoryCompletionHandler];
    [v5 setAddAccessoryCompletionHandler:0];
    if (!v6)
    {
      v21 = objc_autoreleasePoolPush();
      v22 = v3;
      v23 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        v24 = HMFGetLogIdentifier();
        v25 = *(a1 + 32);
        v26 = *(a1 + 48);
        *buf = 138543874;
        v49 = v24;
        v50 = 2112;
        v51 = v25;
        v52 = 2112;
        v53 = v26;
        _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_INFO, "%{public}@No addAccessory completion handler for %@ - error %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v21);
      goto LABEL_27;
    }

    v7 = *(a1 + 40);
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    v9 = objc_autoreleasePoolPush();
    v10 = v3;
    v11 = HMFGetOSLogHandle();
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_INFO);
    if ((isKindOfClass & 1) != 0 && v7)
    {
      if (v12)
      {
        v13 = HMFGetLogIdentifier();
        v14 = *(a1 + 48);
        v15 = *(a1 + 56);
        *buf = 138543874;
        v49 = v13;
        v50 = 2112;
        v51 = v14;
        v52 = 2112;
        v53 = v15;
        v16 = "%{public}@Invoking addAccessory completion handler with error %@ context %@";
        v17 = v11;
        v18 = 32;
LABEL_15:
        _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, v16, buf, v18);
      }
    }

    else if (v12)
    {
      v13 = HMFGetLogIdentifier();
      v27 = *(a1 + 48);
      *buf = 138543618;
      v49 = v13;
      v50 = 2112;
      v51 = v27;
      v16 = "%{public}@Invoking addAccessory completion handler with error %@";
      v17 = v11;
      v18 = 22;
      goto LABEL_15;
    }

    objc_autoreleasePoolPop(v9);
    v28 = [*(a1 + 32) certificationStatus];
    if (v28)
    {
      v29 = v28;
    }

    else
    {
      v29 = 2;
    }

    v30 = *(a1 + 40);
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

    if (v32)
    {
      if ([v32 isCertified])
      {
        v29 = 2;
      }

      else
      {
        v29 = 1;
      }
    }

    v33 = *(a1 + 40);
    v34 = [*(a1 + 32) uuid];
    (v6)[2](v6, v33, v34, v29, [v5 wacAccessory], objc_msgSend(v5, "legacyWAC"), *(a1 + 48), *(a1 + 56));

LABEL_27:
    if (*(a1 + 48) && [*(a1 + 40) pendingRemovePairing] != 1)
    {
      v35 = [MEMORY[0x277CFEC78] systemStore];
      v36 = [*(a1 + 32) identifier];
      v47 = 0;
      [v35 removeAccessoryKeyForName:v36 error:&v47];
      v37 = v47;

      if (v37)
      {
        v38 = objc_autoreleasePoolPush();
        v39 = v3;
        v40 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
        {
          v41 = HMFGetLogIdentifier();
          v42 = *(a1 + 32);
          v43 = *(a1 + 48);
          *buf = 138543874;
          v49 = v41;
          v50 = 2112;
          v51 = v42;
          v52 = 2112;
          v53 = v43;
          _os_log_impl(&dword_229538000, v40, OS_LOG_TYPE_ERROR, "%{public}@Failed to remove keychain entry for accessory %@ - error %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v38);
      }
    }

    v44 = _Block_copy(*(a1 + 64));
    v45 = v44;
    if (v44)
    {
      (*(v44 + 2))(v44);
    }

    goto LABEL_37;
  }

  v19 = _Block_copy(*(a1 + 64));
  v20 = v19;
  if (v19)
  {
    (*(v19 + 2))(v19);
  }

LABEL_37:
  v46 = *MEMORY[0x277D85DE8];
}

- (void)_updatePairingRetryTimerForAccessory:(id)a3 delay:(int64_t)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(HMDAccessoryBrowser *)self workQueue];
  dispatch_assert_queue_V2(v7);

  v8 = [(HMDAccessoryBrowser *)self _pairingInformationForUnpairedAccessory:v6];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 pairingRetryTimer];
    [v10 cancel];
    v11 = [objc_alloc(MEMORY[0x277D0F920]) initWithTimeInterval:0 options:a4];

    [v9 setPairingRetryTimer:v11];
    [v11 setDelegate:self];
    v12 = [(HMDAccessoryBrowser *)self workQueue];
    [v11 setDelegateQueue:v12];

    [v11 resume];
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    v14 = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      v17 = [v6 name];
      v18 = [v6 identifier];
      v20 = 138543874;
      v21 = v16;
      v22 = 2112;
      v23 = v17;
      v24 = 2112;
      v25 = v18;
      _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@Not starting a pairing retry timer for unpaired accessory %@/%@ - pairing information does not exist", &v20, 0x20u);
    }

    objc_autoreleasePoolPop(v13);
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)_promptForPairingPasswordForServer:(id)a3 reason:(id)a4
{
  v48 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v30 = a4;
  v7 = [(HMDAccessoryBrowser *)self workQueue];
  dispatch_assert_queue_V2(v7);

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __65__HMDAccessoryBrowser__promptForPairingPasswordForServer_reason___block_invoke;
  aBlock[3] = &unk_278686138;
  v8 = v6;
  v43 = v8;
  v9 = _Block_copy(aBlock);
  v10 = [(HMDAccessoryBrowser *)self unpairedAccessoryForServer:v8];
  if (v10)
  {
    v11 = [(HMDAccessoryBrowser *)self _pairingInformationForUnpairedAccessory:v10];
    v12 = [v11 setupCodeProviderCompletionHandler];
    if (v12)
    {
      objc_initWeak(&location, self);
      v13 = objc_autoreleasePoolPush();
      v14 = self;
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = HMFGetLogIdentifier();
        *buf = 138543618;
        v45 = v16;
        v46 = 2112;
        v47 = v10;
        _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@Invoking setupCode provider for accessory %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v13);
      v38[0] = MEMORY[0x277D85DD0];
      v38[1] = 3221225472;
      v38[2] = __65__HMDAccessoryBrowser__promptForPairingPasswordForServer_reason___block_invoke_571;
      v38[3] = &unk_27868A750;
      v17 = v8;
      v39 = v17;
      v18 = v30;
      v40 = v18;
      __65__HMDAccessoryBrowser__promptForPairingPasswordForServer_reason___block_invoke_571(v38);
      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 3221225472;
      v31[2] = __65__HMDAccessoryBrowser__promptForPairingPasswordForServer_reason___block_invoke_2_576;
      v31[3] = &unk_278681550;
      objc_copyWeak(&v37, &location);
      v36 = v9;
      v32 = v18;
      v33 = v17;
      v34 = v10;
      v11 = v11;
      v35 = v11;
      (v12)[2](v12, v34, v32, v31);

      objc_destroyWeak(&v37);
      objc_destroyWeak(&location);
    }

    else
    {
      v23 = objc_autoreleasePoolPush();
      v24 = self;
      v25 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        v26 = HMFGetLogIdentifier();
        *buf = 138543618;
        v45 = v26;
        v46 = 2112;
        v47 = v8;
        _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_INFO, "%{public}@Received request to prompt for pairing password for accessory server %@ but there is no setupCodeProvider", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v23);
      v27 = [MEMORY[0x277CCA9B8] hmPrivateErrorWithCode:2002];
      (*(v9 + 2))(v9, v30, v27);
      [v8 stopPairingWithError:0];
      if ([v10 supportsCHIP])
      {
        v28 = [HMDMatterAccessoryPairingEndContext hmdContextWithStep:2 error:v27];
      }

      else
      {
        v28 = 0;
      }

      [(HMDAccessoryBrowser *)v24 _sendPairingCompletionStatusForServer:v8 error:v27 matterPairingEndContext:v28 completionHandler:0];

      v12 = 0;
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
      *buf = 138543618;
      v45 = v22;
      v46 = 2112;
      v47 = v8;
      _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_INFO, "%{public}@Received request to prompt for pairing password for accessory server %@ that cannot be mapped to an unpaired accessory", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v19);
    v11 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    if ([0 supportsCHIP])
    {
      v12 = [HMDMatterAccessoryPairingEndContext hmdContextWithStep:2 error:v11];
    }

    else
    {
      v12 = 0;
    }

    [(HMDAccessoryBrowser *)v20 _sendPairingCompletionStatusForServer:v8 error:v11 matterPairingEndContext:v12 completionHandler:0];
    [v8 stopPairingWithError:0];
  }

  v29 = *MEMORY[0x277D85DE8];
}

void __65__HMDAccessoryBrowser__promptForPairingPasswordForServer_reason___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v6 userInfo];
  v8 = [v7 objectForKeyedSubscript:*MEMORY[0x277CCA7E8]];

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

  if (!v10)
  {
    v8 = v6;
  }

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __65__HMDAccessoryBrowser__promptForPairingPasswordForServer_reason___block_invoke_2;
  v13[3] = &unk_27868A010;
  v14 = *(a1 + 32);
  v15 = v5;
  v16 = v8;
  v11 = v8;
  v12 = v5;
  __65__HMDAccessoryBrowser__promptForPairingPasswordForServer_reason___block_invoke_2(v13);
}

void __65__HMDAccessoryBrowser__promptForPairingPasswordForServer_reason___block_invoke_571(uint64_t a1)
{
  v2 = [*(a1 + 32) pairingActivity];

  if (v2)
  {
    v3 = [*(a1 + 32) pairingActivity];
  }
}

void __65__HMDAccessoryBrowser__promptForPairingPasswordForServer_reason___block_invoke_2_576(id *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained(a1 + 9);
  v11 = WeakRetained;
  if (WeakRetained)
  {
    v12 = [WeakRetained workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __65__HMDAccessoryBrowser__promptForPairingPasswordForServer_reason___block_invoke_3;
    block[3] = &unk_278681528;
    v22 = a1[8];
    v14 = a1[4];
    v15 = v9;
    v16 = a1[5];
    v17 = a1[6];
    v18 = v11;
    v19 = v7;
    v20 = a1[7];
    v21 = v8;
    dispatch_async(v12, block);
  }
}

void __65__HMDAccessoryBrowser__promptForPairingPasswordForServer_reason___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  (*(*(a1 + 96) + 16))();
  if (*(a1 + 40))
  {
    [*(a1 + 48) stopPairingWithError:0];
    v4 = [*(a1 + 56) supportsCHIP];
    v5 = 0;
    if (v4)
    {
      v5 = [HMDMatterAccessoryPairingEndContext hmdContextWithStep:2 error:*(a1 + 40)];
    }

    v9 = v5;
    [*(a1 + 64) _sendPairingCompletionStatusForServer:*(a1 + 48) error:*(a1 + 40) matterPairingEndContext:v5 completionHandler:0];
  }

  else
  {
    if (!*(a1 + 72))
    {
      return;
    }

    [*(a1 + 80) setSetupCode:?];
    v6 = *(a1 + 48);
    v7 = _normalizeSetupCode(*(a1 + 72));
    v8 = *(a1 + 88);
    v9 = v7;
    [v6 tryPairingPassword:? onboardingSetupPayloadString:? error:?];
  }
}

void __65__HMDAccessoryBrowser__promptForPairingPasswordForServer_reason___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) pairingActivity];

  if (v2)
  {
    v3 = [*(a1 + 32) pairingActivity];
    [*(a1 + 48) domain];

    [*(a1 + 48) code];
  }
}

- (void)_pairAccessory:(id)a3 configuration:(id)a4 completionHandler:(id)a5
{
  v135 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(HMDAccessoryBrowser *)self workQueue];
  dispatch_assert_queue_V2(v11);

  v12 = objc_autoreleasePoolPush();
  v13 = self;
  v14 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = HMFGetLogIdentifier();
    *buf = 138543618;
    v132 = v15;
    v133 = 2112;
    v134 = v8;
    _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, "%{public}@Received request to start pairing accessory %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v12);
  v16 = [MEMORY[0x277D0F770] currentActivity];
  v17 = [(HMDAccessoryBrowser *)v13 identifierOfAccessoryBeingReprovisioned];

  if (!v17)
  {
    v21 = [v8 preferredAccessoryServer];
    if (!v21)
    {
      v44 = objc_autoreleasePoolPush();
      v45 = v13;
      v46 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
      {
        v47 = HMFGetLogIdentifier();
        *buf = 138543618;
        v132 = v47;
        v133 = 2112;
        v134 = v8;
        _os_log_impl(&dword_229538000, v46, OS_LOG_TYPE_ERROR, "%{public}@Could not find a server for unpaired accessory %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v44);
      v129[0] = *MEMORY[0x277CCA450];
      v48 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to start pairing with the accessory %@", v8];
      v130[0] = v48;
      v129[1] = *MEMORY[0x277CCA470];
      v49 = [MEMORY[0x277CCA8D8] mainBundle];
      v50 = [v49 localizedStringForKey:@"There was no server present for the accessory." value:&stru_283CF9D50 table:0];
      v130[1] = v50;
      v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v130 forKeys:v129 count:2];

      v24 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCFD28] code:2 userInfo:v22];
      v30 = [HMDMatterAccessoryPairingEndContext hmdContextWithStep:2 error:v24];
      v31 = [v8 uuid];
      (*(v10 + 2))(v10, 0, v31, [v8 certificationStatus], 0, 0, v24, v30);
      goto LABEL_27;
    }

    v25 = [v8 identifier];
    v22 = [(HMDAccessoryBrowser *)v13 pairedAccessoryInformationWithIdentifier:v25];

    if (v22 && ([v22 transports] & 0x10) == 0)
    {
      v127[0] = *MEMORY[0x277CCA450];
      v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"Accessory %@ is already associated with a home", v8];
      v127[1] = *MEMORY[0x277CCA470];
      v128[0] = v26;
      v27 = MEMORY[0x277CCACA8];
      v28 = [MEMORY[0x277CCA9B8] hmStringFromErrorCode:15];
      v29 = [v27 stringWithFormat:@"%ld (%@) This accessory is already part of a home.", 13, v28];
      v128[1] = v29;
      v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v128 forKeys:v127 count:2];

      v30 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCFD28] code:15 userInfo:v24];
      v31 = [HMDMatterAccessoryPairingEndContext hmdContextWithStep:2 error:v30];
      v32 = [v8 uuid];
      (*(v10 + 2))(v10, 0, v32, [v8 certificationStatus], 0, 0, v30, v31);

LABEL_27:
LABEL_47:

      goto LABEL_48;
    }

    v33 = v21;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      goto LABEL_15;
    }

    if (![(HMDAccessoryBrowser *)v13 _isHomeHubMatterSharedAdminPairingCapableWithConfiguration:v9])
    {
      v86 = objc_autoreleasePoolPush();
      v87 = v13;
      v88 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v88, OS_LOG_TYPE_INFO))
      {
        v89 = HMFGetLogIdentifier();
        *buf = 138543362;
        v132 = v89;
        _os_log_impl(&dword_229538000, v88, OS_LOG_TYPE_INFO, "%{public}@HomeHub is not capable to handle Matter Shared Admin Pairing requests", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v86);
      v24 = [MEMORY[0x277CCA9B8] hmErrorWithCode:92];
      v30 = [HMDMatterAccessoryPairingEndContext hmdContextWithStep:2 error:v24];
      (*(v10 + 2))(v10, 0, 0, 0, 0, 0, v24, v30);
      goto LABEL_47;
    }

    if (isFeatureMatteriPhoneOnlyPairingControlEnabled())
    {
LABEL_15:
      v102 = v21;
      v103 = v33;
      v106 = v16;
      v107 = v22;
      v108 = v10;
      v105 = v9;
      v122 = 0u;
      v123 = 0u;
      v120 = 0u;
      v121 = 0u;
      v35 = [(HMDAccessoryBrowser *)v13 currentlyPairingAccessories];
      v36 = [v35 countByEnumeratingWithState:&v120 objects:v126 count:16];
      if (v36)
      {
        v37 = v36;
        v38 = *v121;
LABEL_17:
        v39 = 0;
        while (1)
        {
          if (*v121 != v38)
          {
            objc_enumerationMutation(v35);
          }

          v40 = *(*(&v120 + 1) + 8 * v39);
          v41 = [v40 accessoryUUID];
          v42 = [v8 uuid];
          v43 = [v41 isEqual:v42];

          if (v43)
          {
            break;
          }

          if (v37 == ++v39)
          {
            v37 = [v35 countByEnumeratingWithState:&v120 objects:v126 count:16];
            if (v37)
            {
              goto LABEL_17;
            }

            goto LABEL_23;
          }
        }

        v24 = v40;

        if (!v24)
        {
          goto LABEL_32;
        }

        v51 = objc_autoreleasePoolPush();
        v52 = v13;
        v53 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
        {
          v54 = HMFGetLogIdentifier();
          *buf = 138543618;
          v132 = v54;
          v133 = 2112;
          v134 = v8;
          _os_log_impl(&dword_229538000, v53, OS_LOG_TYPE_INFO, "%{public}@Accessory %@ is currently being paired", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v51);
        v124[0] = *MEMORY[0x277CCA450];
        v55 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to start pairing with the accessory %@", v8];
        v124[1] = *MEMORY[0x277CCA470];
        v125[0] = v55;
        v56 = MEMORY[0x277CCACA8];
        v57 = [MEMORY[0x277CCA9B8] hmStringFromErrorCode:15];
        v58 = [v56 stringWithFormat:@"%ld (%@) This accessory is already being added to a home.", 15, v57];
        v125[1] = v58;
        v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v125 forKeys:v124 count:2];

        v59 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCFD28] code:15 userInfo:v30];
        v60 = [HMDMatterAccessoryPairingEndContext hmdContextWithStep:2 error:v59];
        v61 = [v8 uuid];
        (v108)[2](v108, 0, v61, [v8 certificationStatus], 0, 0, v59, v60);
        v21 = v102;
        v22 = v107;
      }

      else
      {
LABEL_23:

LABEL_32:
        v30 = objc_alloc_init(MEMORY[0x277CFEA08]);
        v62 = [(HMDAccessoryBrowser *)v13 currentControllerPairingIdentity];
        [v30 setPairingIdentity:v62];

        [v30 setRequiresUserConsent:1];
        v63 = [v105 networkCredential];
        v64 = [v63 wiFiPSK];
        [v30 setPsk:v64];

        v65 = [v105 isoCountryCode];
        [v30 setIsoCountryCode:v65];

        v66 = [v105 chipFabricID];
        [v30 setChipFabricID:v66];

        [v30 setOwnerPairing:{-[HMDAccessoryBrowser _isOwnerPairingAccessoryWithConfiguration:](v13, "_isOwnerPairingAccessoryWithConfiguration:", v105)}];
        v67 = [HMDUnpairedHAPAccessoryPairingInformation alloc];
        v68 = [v8 uuid];
        v69 = [v8 name];
        v70 = [v103 linkType];
        v71 = [v105 setupCode];
        v72 = [v105 setupCodeProvider];
        v73 = [(HMDUnpairedHAPAccessoryPairingInformation *)v67 initWithAccessoryUUID:v68 accessoryName:v69 linkType:v70 setupCode:v71 completionHandler:v108 setupCodeProvider:v72 pairingRequest:v30];

        [(HMDUnpairedHAPAccessoryPairingInformation *)v73 setPairingActivity:v106];
        v74 = [v105 homeUUID];
        [(HMDUnpairedHAPAccessoryPairingInformation *)v73 setHomeUUID:v74];

        v75 = v103;
        objc_opt_class();
        v76 = objc_opt_isKindOfClass();
        if (v76)
        {
          v77 = v75;
        }

        else
        {
          v77 = 0;
        }

        v104 = v77;

        if (v76)
        {
          -[HMDUnpairedHAPAccessoryPairingInformation setWacAccessory:](v73, "setWacAccessory:", [v75 isWacAccessory]);
          -[HMDUnpairedHAPAccessoryPairingInformation setLegacyWAC:](v73, "setLegacyWAC:", [v75 isWacLegacy]);
        }

        v78 = v75;
        objc_opt_class();
        v79 = objc_opt_isKindOfClass();
        if (v79)
        {
          v80 = v78;
        }

        else
        {
          v80 = 0;
        }

        v101 = v80;

        v81 = 0;
        v22 = v107;
        if (v79)
        {
          [(HMDAccessoryBrowser *)v13 _setupHMMTRAccessoryServer:v78 pairingInfo:v73];
          v82 = [v105 homeUUID];
          v81 = [(HMDAccessoryBrowser *)v13 _setPairingTargetFabricUUIDWithServer:v78 homeUUID:v82];
        }

        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 3221225472;
        aBlock[2] = __70__HMDAccessoryBrowser__pairAccessory_configuration_completionHandler___block_invoke;
        aBlock[3] = &unk_278681500;
        v115 = v81;
        v116 = v13;
        v83 = v8;
        v117 = v83;
        v119 = v108;
        v84 = v78;
        v118 = v84;
        v61 = v81;
        v85 = _Block_copy(aBlock);
        v109[0] = MEMORY[0x277D85DD0];
        v109[1] = 3221225472;
        v109[2] = __70__HMDAccessoryBrowser__pairAccessory_configuration_completionHandler___block_invoke_563;
        v109[3] = &unk_278689550;
        v109[4] = v13;
        v24 = v73;
        v110 = v24;
        v111 = v83;
        v112 = v106;
        v113 = v84;
        v85[2](v85, v109);

        v21 = v102;
        v59 = v104;
        v60 = v101;
      }

      v9 = v105;
      v16 = v106;
      v10 = v108;
      goto LABEL_47;
    }

    if ([(HMDAccessoryBrowser *)v13 _isHomeHubAvailableWithConfiguration:v9])
    {
      if ([(HMDAccessoryBrowser *)v13 _isPrimaryResidentReachableWithConfiguration:v9])
      {
        goto LABEL_15;
      }

      v91 = objc_autoreleasePoolPush();
      v92 = v13;
      v93 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v93, OS_LOG_TYPE_ERROR))
      {
        v94 = HMFGetLogIdentifier();
        *buf = 138543362;
        v132 = v94;
        _os_log_impl(&dword_229538000, v93, OS_LOG_TYPE_ERROR, "%{public}@Primary resident is not reachable", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v91);
      v95 = [MEMORY[0x277CCA9B8] hmPrivateErrorWithCode:2709];
    }

    else
    {
      v96 = objc_autoreleasePoolPush();
      v97 = v13;
      v98 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v98, OS_LOG_TYPE_ERROR))
      {
        v99 = HMFGetLogIdentifier();
        *buf = 138543362;
        v132 = v99;
        _os_log_impl(&dword_229538000, v98, OS_LOG_TYPE_ERROR, "%{public}@HomeHub is not available", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v96);
      v95 = [MEMORY[0x277CCA9B8] hmErrorWithCode:91];
    }

    v24 = v95;
    v30 = [HMDMatterAccessoryPairingEndContext hmdContextWithStep:2 error:v95];
    v100 = _Block_copy(v10);
    v31 = v100;
    if (v100)
    {
      (*(v100 + 2))(v100, 0, 0, 0, 0, 0, v24, v30);
    }

    goto LABEL_27;
  }

  v18 = objc_autoreleasePoolPush();
  v19 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    v20 = HMFGetLogIdentifier();
    *buf = 138543618;
    v132 = v20;
    v133 = 2112;
    v134 = v8;
    _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_INFO, "%{public}@[Accessory Browser] Pairing accessory %@ failed since reprovisioning is in progress", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v18);
  v21 = [MEMORY[0x277CCA9B8] hmErrorWithCode:15];
  v22 = [HMDMatterAccessoryPairingEndContext hmdContextWithStep:2 error:v21];
  v23 = _Block_copy(v10);
  v24 = v23;
  if (v23)
  {
    (v23->_linkType)(v23, 0, 0, 0, 0, 0, v21, v22);
  }

LABEL_48:

  v90 = *MEMORY[0x277D85DE8];
}

void __70__HMDAccessoryBrowser__pairAccessory_configuration_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v5 = *(a1 + 32);
  if (v5)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __70__HMDAccessoryBrowser__pairAccessory_configuration_completionHandler___block_invoke_2;
    v10[3] = &unk_2786814D8;
    v9 = *(a1 + 40);
    v6 = *(&v9 + 1);
    v7 = *(a1 + 64);
    *&v8 = *(a1 + 56);
    *(&v8 + 1) = v7;
    v11 = v9;
    v12 = v8;
    v13 = v4;
    [v5 setUpFabricForPairingWithCompletion:v10];
  }

  else
  {
    (*(v3 + 2))(v3);
  }
}

void __70__HMDAccessoryBrowser__pairAccessory_configuration_completionHandler___block_invoke_563(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) currentlyPairingAccessories];
  [v3 addObject:*(a1 + 40)];

  v4 = objc_autoreleasePoolPush();
  v5 = *v2;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v8 = *(a1 + 48);
    v9 = [*(a1 + 40) pairingRequest];
    *buf = 138543874;
    *&buf[4] = v7;
    v18 = 2112;
    v19 = v8;
    v20 = 2112;
    v21 = v9;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Starting pairing with accessory %@, request: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v4);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __70__HMDAccessoryBrowser__pairAccessory_configuration_completionHandler___block_invoke_564;
  v13[3] = &unk_27868A010;
  v14 = *(a1 + 56);
  v15 = *(a1 + 40);
  v16 = *(a1 + 64);
  __70__HMDAccessoryBrowser__pairAccessory_configuration_completionHandler___block_invoke_564(v13);
  [*(a1 + 56) begin];
  *buf = *(a1 + 56);
  v10 = *(a1 + 64);
  v11 = [*(a1 + 40) pairingRequest];
  [v10 startPairingWithRequest:v11];

  __HMFActivityScopeLeave();
  v12 = *MEMORY[0x277D85DE8];
}

void *__70__HMDAccessoryBrowser__pairAccessory_configuration_completionHandler___block_invoke_564(void *result)
{
  v1 = result[4];
  if (v1)
  {
    v2 = result;
    v3 = result[5];
    v4 = v1;
    [v3 accessoryUUID];

    v5 = [v2[5] setupID];
    v6 = HMFBooleanToString();

    [v2[5] wacAccessory];
    v7 = HMFBooleanToString();
    [v2[5] legacyWAC];
    v8 = HMFBooleanToString();
    [v2[5] linkType];
    v9 = HAPLinkTypeDescription();
    [v2[6] communicationProtocol];

    return HAPCommunicationProtocolDescription();
  }

  return result;
}

void __70__HMDAccessoryBrowser__pairAccessory_configuration_completionHandler___block_invoke_2(uint64_t a1, void *a2)
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
      v15 = 138543874;
      v16 = v7;
      v17 = 2112;
      v18 = v8;
      v19 = 2112;
      v20 = v3;
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_ERROR, "%{public}@Accessory %@ cannot be paired because target home could not setup fabric with error: %@", &v15, 0x20u);
    }

    objc_autoreleasePoolPop(v4);
    if (*(a1 + 56))
    {
      v9 = getLowestError();
      v10 = [HMDMatterAccessoryPairingEndContext hmdContextWithStep:2 error:v9];

      v12 = *(a1 + 48);
      v11 = *(a1 + 56);
      v13 = [*(a1 + 40) uuid];
      (*(v11 + 16))(v11, v12, v13, [*(a1 + 40) certificationStatus], 0, 0, v3, v10);
    }
  }

  else
  {
    (*(*(a1 + 64) + 16))();
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (BOOL)_isHomeHubMatterSharedAdminPairingCapableWithConfiguration:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDAccessoryBrowser *)self homeManager];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = [v5 homes];
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = *v19;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        v11 = [v10 uuid];
        v12 = [v4 homeUUID];
        v13 = HMFEqualObjects();

        if (v13)
        {
          if ([v10 isOwnerUser])
          {
            LOBYTE(v7) = 1;
          }

          else
          {
            v14 = [v10 primaryResident];
            v15 = [v14 capabilities];
            LOBYTE(v7) = [v15 supportsMatterSharedAdminPairing];
          }

          goto LABEL_13;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  v16 = *MEMORY[0x277D85DE8];
  return v7;
}

- (BOOL)_isHomeHubAvailableWithConfiguration:(id)a3
{
  v4 = a3;
  v5 = [(HMDAccessoryBrowser *)self homeManager];
  v6 = [v5 homes];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __60__HMDAccessoryBrowser__isHomeHubAvailableWithConfiguration___block_invoke;
  v11[3] = &unk_278685BA0;
  v12 = v4;
  v7 = v4;
  v8 = [v6 na_firstObjectPassingTest:v11];

  v9 = [v8 primaryResident];
  LOBYTE(v5) = v9 != 0;

  return v5;
}

BOOL __60__HMDAccessoryBrowser__isHomeHubAvailableWithConfiguration___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 uuid];
  v4 = [*(a1 + 32) homeUUID];
  v5 = v3 == v4;

  return v5;
}

- (BOOL)_isPrimaryResidentReachableWithConfiguration:(id)a3
{
  v4 = a3;
  v5 = [(HMDAccessoryBrowser *)self homeManager];
  v6 = [v5 homes];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __68__HMDAccessoryBrowser__isPrimaryResidentReachableWithConfiguration___block_invoke;
  v11[3] = &unk_278685BA0;
  v12 = v4;
  v7 = v4;
  v8 = [v6 na_firstObjectPassingTest:v11];

  v9 = [v8 primaryResident];
  LOBYTE(v6) = [v9 isReachable];

  return v6;
}

BOOL __68__HMDAccessoryBrowser__isPrimaryResidentReachableWithConfiguration___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 uuid];
  v4 = [*(a1 + 32) homeUUID];
  v5 = v3 == v4;

  return v5;
}

- (BOOL)_isOwnerPairingAccessoryWithConfiguration:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDAccessoryBrowser *)self homeManager];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = [v5 homes];
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = *v17;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = [v10 uuid];
        v12 = [v4 homeUUID];
        v13 = HMFEqualObjects();

        if (v13)
        {
          LOBYTE(v7) = [v10 isOwnerUser];
          goto LABEL_11;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v14 = *MEMORY[0x277D85DE8];
  return v7;
}

- (id)_setPairingTargetFabricUUIDWithServer:(id)a3 homeUUID:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = [(HMDAccessoryBrowser *)self homeManager];
  v9 = [v8 homes];

  v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v10)
  {
    v11 = *v20;
    while (2)
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v19 + 1) + 8 * i);
        v14 = [v13 uuid];
        v15 = [v14 isEqual:v7];

        if (v15)
        {
          v16 = [v13 targetFabricUUID];
          [v6 setFabricUUID:v16];
          v10 = v13;

          goto LABEL_11;
        }
      }

      v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v17 = *MEMORY[0x277D85DE8];

  return v10;
}

- (void)_pairAccessoryWithDescription:(id)a3 configuration:(id)a4 progressHandler:(id)a5 completionHandler:(id)a6
{
  v244 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v180 = a4;
  v181 = a5;
  aBlock = a6;
  v11 = [(HMDAccessoryBrowser *)self workQueue];
  dispatch_assert_queue_V2(v11);

  v179 = [MEMORY[0x277D0F770] currentActivity];
  v12 = objc_autoreleasePoolPush();
  v184 = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    v15 = [v10 debugDescription];
    *buf = 138543618;
    *&buf[4] = v14;
    *&buf[12] = 2112;
    *&buf[14] = v15;
    _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Received request to start pairing accessory with description %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v12);
  v16 = [(HMDAccessoryBrowser *)v184 identifierOfAccessoryBeingReprovisioned];

  if (v16)
  {
    v17 = objc_autoreleasePoolPush();
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543618;
      *&buf[4] = v19;
      *&buf[12] = 2112;
      *&buf[14] = v10;
      _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_INFO, "%{public}@[Accessory Browser] Pairing accessory with description %@ failed since reprovisioning is in progress", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v17);
    v20 = [MEMORY[0x277CCA9B8] hmErrorWithCode:15];
    v186 = [HMDMatterAccessoryPairingEndContext hmdContextWithStep:2 error:v20];
    v21 = _Block_copy(aBlock);
    v22 = v21;
    if (v21)
    {
      (*(v21 + 2))(v21, 0, 0, 0, 0, 0, v20, v186);
    }

    goto LABEL_24;
  }

  v233 = 0u;
  v234 = 0u;
  v231 = 0u;
  v232 = 0u;
  v20 = [(HMDAccessoryBrowser *)v184 tombstonedHAPAccessoryServers];
  v23 = [v20 countByEnumeratingWithState:&v231 objects:v243 count:16];
  if (v23)
  {
    v24 = *v232;
    do
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v232 != v24)
        {
          objc_enumerationMutation(v20);
        }

        v26 = *(*(&v231 + 1) + 8 * i);
        if ([v10 matchesAccessoryServer:v26])
        {
          v32 = objc_autoreleasePoolPush();
          v33 = v184;
          v34 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
          {
            v35 = HMFGetLogIdentifier();
            v36 = [v10 debugDescription];
            *buf = 138543874;
            *&buf[4] = v35;
            *&buf[12] = 2112;
            *&buf[14] = v26;
            *&buf[22] = 2112;
            v238 = v36;
            _os_log_impl(&dword_229538000, v34, OS_LOG_TYPE_INFO, "%{public}@A tombstoned accessoryServer %@ matches the accessory with description %@", buf, 0x20u);
          }

          objc_autoreleasePoolPop(v32);
          v37 = [v26 identifier];
          [(HMDAccessoryBrowser *)v33 updateAlreadyPairingProgressForAccessoryServerIdentifier:v37 progressHandler:v181];

          v186 = [MEMORY[0x277CCA9B8] hmErrorWithCode:13];
          v38 = [HMDMatterAccessoryPairingEndContext hmdContextWithStep:2 error:v186];
          (*(aBlock + 2))(aBlock, v26, 0, 0, 0, 0, v186, v38);

          goto LABEL_24;
        }
      }

      v23 = [v20 countByEnumeratingWithState:&v231 objects:v243 count:16];
    }

    while (v23);
  }

  if ([v10 isPaired])
  {
    v27 = objc_autoreleasePoolPush();
    v28 = v184;
    v29 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
    {
      v30 = HMFGetLogIdentifier();
      *buf = 138543362;
      *&buf[4] = v30;
      _os_log_impl(&dword_229538000, v29, OS_LOG_TYPE_INFO, "%{public}@Accessory description indicates that the accessory is already paired - aborting...", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v27);
    v20 = [MEMORY[0x277CCA9B8] hmErrorWithCode:11];
    v187 = [HMDMatterAccessoryPairingEndContext hmdContextWithStep:2 error:v20];
    v31 = [MEMORY[0x277CCA9B8] hmErrorWithCode:11];
    (*(aBlock + 2))(aBlock, 0, 0, 0, 0, 0, v31, v187);

    goto LABEL_25;
  }

  v40 = [v10 setupAccessoryPayload];
  v41 = [v40 chipAccessorySetupPayload];

  if (!v41)
  {
    goto LABEL_29;
  }

  if (![(HMDAccessoryBrowser *)v184 _isHomeHubMatterSharedAdminPairingCapableWithConfiguration:v180])
  {
    v64 = objc_autoreleasePoolPush();
    v65 = v184;
    v66 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v66, OS_LOG_TYPE_INFO))
    {
      v67 = HMFGetLogIdentifier();
      *buf = 138543362;
      *&buf[4] = v67;
      _os_log_impl(&dword_229538000, v66, OS_LOG_TYPE_INFO, "%{public}@HomeHub is not capable to handle Matter Shared Admin Pairing requests", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v64);
    v20 = [MEMORY[0x277CCA9B8] hmErrorWithCode:92];
    v188 = [HMDMatterAccessoryPairingEndContext hmdContextWithStep:2 error:v20];
    (*(aBlock + 2))(aBlock, 0, 0, 0, 0, 0, v20, v188);

    goto LABEL_25;
  }

  if (isFeatureMatteriPhoneOnlyPairingControlEnabled())
  {
    goto LABEL_29;
  }

  if (![(HMDAccessoryBrowser *)v184 _isHomeHubAvailableWithConfiguration:v180])
  {
    v129 = objc_autoreleasePoolPush();
    v130 = v184;
    v131 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v131, OS_LOG_TYPE_ERROR))
    {
      v132 = HMFGetLogIdentifier();
      *buf = 138543362;
      *&buf[4] = v132;
      _os_log_impl(&dword_229538000, v131, OS_LOG_TYPE_ERROR, "%{public}@HomeHub is not available", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v129);
    v20 = [MEMORY[0x277CCA9B8] hmErrorWithCode:91];
    v186 = [HMDMatterAccessoryPairingEndContext hmdContextWithStep:2 error:v20];
    v133 = _Block_copy(aBlock);
    v94 = v133;
    if (v133)
    {
      (*(v133 + 2))(v133, 0, 0, 0, 0, 0, v20, v186);
    }

    goto LABEL_73;
  }

  if (![(HMDAccessoryBrowser *)v184 _isPrimaryResidentReachableWithConfiguration:v180])
  {
    v89 = objc_autoreleasePoolPush();
    v90 = v184;
    v91 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v91, OS_LOG_TYPE_ERROR))
    {
      v92 = HMFGetLogIdentifier();
      *buf = 138543362;
      *&buf[4] = v92;
      _os_log_impl(&dword_229538000, v91, OS_LOG_TYPE_ERROR, "%{public}@Primary resident is not reachable", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v89);
    v20 = [MEMORY[0x277CCA9B8] hmPrivateErrorWithCode:2709];
    v186 = [HMDMatterAccessoryPairingEndContext hmdContextWithStep:2 error:v20];
    v93 = _Block_copy(aBlock);
    v94 = v93;
    if (v93)
    {
      (*(v93 + 2))(v93, 0, 0, 0, 0, 0, v20, v186);
    }

LABEL_73:

    goto LABEL_24;
  }

LABEL_29:
  v229 = 0u;
  v230 = 0u;
  v227 = 0u;
  v228 = 0u;
  obj = [(HMDAccessoryBrowser *)v184 unpairedHAPAccessories];
  v42 = [obj countByEnumeratingWithState:&v227 objects:v242 count:16];
  if (!v42)
  {
    v186 = 0;
    goto LABEL_60;
  }

  v186 = 0;
  v43 = *v228;
  do
  {
    for (j = 0; j != v42; ++j)
    {
      if (*v228 != v43)
      {
        objc_enumerationMutation(obj);
      }

      v45 = *(*(&v227 + 1) + 8 * j);
      v223 = 0u;
      v224 = 0u;
      v225 = 0u;
      v226 = 0u;
      v46 = [v45 accessoryServers];
      v47 = [v46 countByEnumeratingWithState:&v223 objects:v241 count:16];
      if (v47)
      {
        v48 = *v224;
LABEL_36:
        v49 = 0;
        while (1)
        {
          if (*v224 != v48)
          {
            objc_enumerationMutation(v46);
          }

          v50 = *(*(&v223 + 1) + 8 * v49);
          if ([v10 matchesAccessoryServer:v50])
          {
            break;
          }

          if (v47 == ++v49)
          {
            v47 = [v46 countByEnumeratingWithState:&v223 objects:v241 count:16];
            if (v47)
            {
              goto LABEL_36;
            }

            goto LABEL_42;
          }
        }

        v51 = v45;

        v20 = v50;
        if (!v20)
        {
          v186 = v51;
          continue;
        }

        v52 = objc_autoreleasePoolPush();
        v53 = v184;
        v54 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
        {
          v55 = HMFGetLogIdentifier();
          v56 = [v10 debugDescription];
          *buf = 138543874;
          *&buf[4] = v55;
          *&buf[12] = 2112;
          *&buf[14] = v20;
          *&buf[22] = 2112;
          v238 = v56;
          _os_log_impl(&dword_229538000, v54, OS_LOG_TYPE_INFO, "%{public}@Matched accessoryServer %@ to pair accessory %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v52);
        if (([v20 isPaired] & 1) != 0 || objc_msgSend(v20, "hasPairings"))
        {
          v57 = objc_autoreleasePoolPush();
          v58 = v53;
          v59 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v59, OS_LOG_TYPE_INFO))
          {
            v60 = HMFGetLogIdentifier();
            v61 = [v10 debugDescription];
            *buf = 138543874;
            *&buf[4] = v60;
            *&buf[12] = 2112;
            *&buf[14] = v20;
            *&buf[22] = 2112;
            v238 = v61;
            _os_log_impl(&dword_229538000, v59, OS_LOG_TYPE_INFO, "%{public}@Matched accessoryServer %@ is already paired while attempting to pair accessory %@", buf, 0x20u);
          }

          objc_autoreleasePoolPop(v57);
          if (!aBlock)
          {

            goto LABEL_25;
          }

          v62 = [v20 identifier];
          [(HMDAccessoryBrowser *)v58 updateAlreadyPairingProgressForAccessoryServerIdentifier:v62 progressHandler:v181];

          v63 = [MEMORY[0x277CCA9B8] hmErrorWithCode:13];
          obja = [HMDMatterAccessoryPairingEndContext hmdContextWithStep:2 error:v63];
          (*(aBlock + 2))(aBlock, v20, 0, 0, 0, 0, v63, obja);
          goto LABEL_137;
        }

        v121 = [v20 identifier];
        v63 = [(HMDAccessoryBrowser *)v53 pairedAccessoryInformationWithIdentifier:v121];

        if (v63 && ([v63 transports] & 0x10) == 0)
        {
          v122 = objc_autoreleasePoolPush();
          v123 = v53;
          v124 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v124, OS_LOG_TYPE_INFO))
          {
            v125 = HMFGetLogIdentifier();
            v126 = [v10 debugDescription];
            *buf = 138543874;
            *&buf[4] = v125;
            *&buf[12] = 2112;
            *&buf[14] = v20;
            *&buf[22] = 2112;
            v238 = v126;
            _os_log_impl(&dword_229538000, v124, OS_LOG_TYPE_INFO, "%{public}@Matched accessoryServer %@ is part of paired accessories while attempting to pair accessory %@", buf, 0x20u);
          }

          objc_autoreleasePoolPop(v122);
          obja = [MEMORY[0x277CCA9B8] hmErrorWithCode:13];
          v189 = [HMDMatterAccessoryPairingEndContext hmdContextWithStep:2 error:obja];
          v127 = _Block_copy(aBlock);
          v128 = v127;
          if (v127)
          {
            (*(v127 + 2))(v127, v20, 0, 0, 0, 0, obja, v189);
          }

          goto LABEL_136;
        }

        v134 = [v10 accessoryName];
        v135 = v134 == 0;

        if (v135)
        {
          v136 = [v51 name];
          [v10 setAccessoryName:v136];
        }

        v137 = [v10 accessoryUUID];
        v138 = v137 == 0;

        if (v138)
        {
          v139 = [v51 uuid];
          [v10 setAccessoryUUID:v139];
        }

        obja = [(HMDAccessoryBrowser *)v53 _pairingInformationForUnpairedAccessory:v51];
        if (obja)
        {
          v140 = objc_autoreleasePoolPush();
          v141 = v53;
          v142 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v142, OS_LOG_TYPE_INFO))
          {
            v143 = HMFGetLogIdentifier();
            *buf = 138543618;
            *&buf[4] = v143;
            *&buf[12] = 2112;
            *&buf[14] = v51;
            _os_log_impl(&dword_229538000, v142, OS_LOG_TYPE_INFO, "%{public}@Accessory %@ is currently being paired", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v140);
          v235[0] = *MEMORY[0x277CCA450];
          v144 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to start pairing with the accessory %@", v51];
          v236[0] = v144;
          v235[1] = *MEMORY[0x277CCA470];
          v145 = MEMORY[0x277CCACA8];
          v146 = [MEMORY[0x277CCA9B8] hmStringFromErrorCode:15];
          v147 = [v145 stringWithFormat:@"%ld (%@) This accessory is already being added to a home.", 15, v146];
          v236[1] = v147;
          v189 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v236 forKeys:v235 count:2];

          v185 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCFD28] code:15 userInfo:v189];
          v175 = [HMDMatterAccessoryPairingEndContext hmdContextWithStep:2 error:v185];
          v148 = _Block_copy(aBlock);
          if (v148)
          {
            v149 = [v51 uuid];
            (*(v148 + 2))(v148, 0, v149, [v51 certificationStatus], 0, 0, v185, v175);
            goto LABEL_134;
          }
        }

        else
        {
          v189 = objc_alloc_init(MEMORY[0x277CFEA08]);
          v150 = [(HMDAccessoryBrowser *)v53 currentControllerPairingIdentity];
          [v189 setPairingIdentity:v150];

          [v189 setRequiresUserConsent:{objc_msgSend(v180, "requiresUserConsent")}];
          v151 = [v10 ownershipToken];
          v152 = [v151 internalData];
          [v189 setOwnershipToken:v152];

          v153 = [v180 networkCredential];
          v154 = [v153 wiFiPSK];
          [v189 setPsk:v154];

          v155 = [v180 isoCountryCode];
          [v189 setIsoCountryCode:v155];

          v156 = [v180 chipFabricID];
          [v189 setChipFabricID:v156];

          [v189 setDoNetworkScan:{objc_msgSend(v10, "doNetworkScan")}];
          [v189 setOwnerPairing:{-[HMDAccessoryBrowser _isOwnerPairingAccessoryWithConfiguration:](v53, "_isOwnerPairingAccessoryWithConfiguration:", v180)}];
          objb = -[HMDUnpairedHAPAccessoryPairingInformation initWithAccessoryDescription:linkType:completionHandler:progressHandler:pairingRequest:]([HMDUnpairedHAPAccessoryPairingInformation alloc], "initWithAccessoryDescription:linkType:completionHandler:progressHandler:pairingRequest:", v10, [v20 linkType], aBlock, v181, v189);
          [(HMDUnpairedHAPAccessoryPairingInformation *)objb setPairingActivity:v179];
          v157 = [(HMDUnpairedHAPAccessoryPairingInformation *)objb homeUUID];
          LODWORD(v156) = v157 == 0;

          if (v156)
          {
            v158 = [v180 homeUUID];
            [(HMDUnpairedHAPAccessoryPairingInformation *)objb setHomeUUID:v158];
          }

          v159 = v20;
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v160 = v159;
          }

          else
          {
            v160 = 0;
          }

          v185 = v160;

          if (v185)
          {
            -[HMDUnpairedHAPAccessoryPairingInformation setWacAccessory:](objb, "setWacAccessory:", [v185 isWacAccessory]);
            -[HMDUnpairedHAPAccessoryPairingInformation setLegacyWAC:](objb, "setLegacyWAC:", [v185 isWacLegacy]);
          }

          v161 = v159;
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v162 = v161;
          }

          else
          {
            v162 = 0;
          }

          v148 = v162;

          if (v148)
          {
            [(HMDAccessoryBrowser *)v53 _setupHMMTRAccessoryServer:v148 pairingInfo:objb];
            v163 = [v180 homeUUID];
            v164 = [(HMDAccessoryBrowser *)v53 _setPairingTargetFabricUUIDWithServer:v148 homeUUID:v163];
          }

          else
          {
            v164 = 0;
          }

          v197[0] = MEMORY[0x277D85DD0];
          v197[1] = 3221225472;
          v197[2] = __101__HMDAccessoryBrowser__pairAccessoryWithDescription_configuration_progressHandler_completionHandler___block_invoke_544;
          v197[3] = &unk_2786814B0;
          v175 = v164;
          v198 = v175;
          v199 = v53;
          v168 = v161;
          v200 = v168;
          v201 = aBlock;
          v169 = _Block_copy(v197);
          v170 = v181;
          if (!v181)
          {
            v182 = [v51 uuid];
            v171 = [(HMDAccessoryBrowser *)v53 _currentPairingProgressHandlerForAccessoryUUID:v182];
            v172 = [v171 progressHandler];

            v170 = v172;
          }

          v190[0] = MEMORY[0x277D85DD0];
          v190[1] = 3221225472;
          v190[2] = __101__HMDAccessoryBrowser__pairAccessoryWithDescription_configuration_progressHandler_completionHandler___block_invoke_547;
          v190[3] = &unk_2786873D8;
          v190[4] = v53;
          obja = objb;
          v191 = obja;
          v181 = v170;
          v196 = v181;
          v192 = v51;
          v193 = v168;
          v194 = v180;
          v195 = v179;
          v169[2](v169, v190);

          v149 = v198;
LABEL_134:
        }

        v128 = v185;
LABEL_136:

LABEL_137:
        v186 = v51;
        goto LABEL_138;
      }

LABEL_42:
    }

    v42 = [obj countByEnumeratingWithState:&v227 objects:v242 count:16];
  }

  while (v42);
LABEL_60:

  v63 = objc_alloc_init(MEMORY[0x277CFEA08]);
  v68 = [(HMDAccessoryBrowser *)v184 currentControllerPairingIdentity];
  [v63 setPairingIdentity:v68];

  [v63 setRequiresUserConsent:{objc_msgSend(v180, "requiresUserConsent")}];
  v69 = [v10 ownershipToken];
  v70 = [v69 internalData];
  [v63 setOwnershipToken:v70];

  v71 = [v180 networkCredential];
  v72 = [v71 wiFiPSK];
  [v63 setPsk:v72];

  v73 = [v180 isoCountryCode];
  [v63 setIsoCountryCode:v73];

  v74 = [v180 chipFabricID];
  [v63 setChipFabricID:v74];

  [v63 setDoNetworkScan:{objc_msgSend(v10, "doNetworkScan")}];
  [v63 setOwnerPairing:{-[HMDAccessoryBrowser _isOwnerPairingAccessoryWithConfiguration:](v184, "_isOwnerPairingAccessoryWithConfiguration:", v180)}];
  v75 = [[HMDUnpairedHAPAccessoryPairingInformation alloc] initWithAccessoryDescription:v10 linkType:0 completionHandler:aBlock progressHandler:v181 pairingRequest:v63];
  [(HMDUnpairedHAPAccessoryPairingInformation *)v75 setPairingActivity:v179];
  v76 = [(HMDUnpairedHAPAccessoryPairingInformation *)v75 homeUUID];
  LODWORD(v74) = v76 == 0;

  if (v74)
  {
    v77 = [v180 homeUUID];
    [(HMDUnpairedHAPAccessoryPairingInformation *)v75 setHomeUUID:v77];
  }

  v78 = [(HMDAccessoryBrowser *)v184 currentlyPairingAccessories];
  [v78 addObject:v75];

  v217[0] = MEMORY[0x277D85DD0];
  v217[1] = 3221225472;
  v217[2] = __101__HMDAccessoryBrowser__pairAccessoryWithDescription_configuration_progressHandler_completionHandler___block_invoke;
  v217[3] = &unk_2786813C0;
  v217[4] = v184;
  v181 = v181;
  v221 = v181;
  v79 = aBlock;
  v222 = v79;
  v218 = v179;
  obja = v75;
  v219 = obja;
  v80 = v10;
  v220 = v80;
  v81 = _Block_copy(v217);
  v174 = [v80 accessoryServerIdentifier];
  if (v174)
  {
    v82 = [(HMDAccessoryBrowser *)v184 pairedAccessoryInformationWithIdentifier:v174];
    v83 = v82 == 0;

    if (!v83)
    {
      v84 = objc_autoreleasePoolPush();
      v85 = v184;
      v86 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v86, OS_LOG_TYPE_INFO))
      {
        v87 = HMFGetLogIdentifier();
        v88 = [v80 debugDescription];
        *buf = 138543874;
        *&buf[4] = v87;
        *&buf[12] = 2112;
        *&buf[14] = v174;
        *&buf[22] = 2112;
        v238 = v88;
        _os_log_impl(&dword_229538000, v86, OS_LOG_TYPE_INFO, "%{public}@Accessory with identifier %@ is already paired while attempting to pair %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v84);
      (*(v81 + 2))(v81, 1, 0, 0, 0);
      goto LABEL_129;
    }
  }

  v173 = [v80 setupID];
  v95 = v173;
  if (v173)
  {
    v96 = [(HMDAccessoryBrowser *)v184 pairedAccessoryInformationWithSetupID:v173];
    v95 = v173;
    if (v96)
    {
      v97 = objc_autoreleasePoolPush();
      v98 = v184;
      v99 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v99, OS_LOG_TYPE_INFO))
      {
        v100 = HMFGetLogIdentifier();
        v101 = [v80 debugDescription];
        *buf = 138543874;
        *&buf[4] = v100;
        *&buf[12] = 2112;
        *&buf[14] = v173;
        *&buf[22] = 2112;
        v238 = v101;
        _os_log_impl(&dword_229538000, v99, OS_LOG_TYPE_INFO, "%{public}@Accessory with setupID %@ is already paired while attempting to pair %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v97);
      v102 = objc_autoreleasePoolPush();
      v103 = v98;
      v104 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v104, OS_LOG_TYPE_INFO))
      {
        v105 = HMFGetLogIdentifier();
        *buf = 138543618;
        *&buf[4] = v105;
        *&buf[12] = 2112;
        *&buf[14] = v96;
        _os_log_impl(&dword_229538000, v104, OS_LOG_TYPE_INFO, "%{public}@Already paired accessory info: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v102);
      v106 = [v96 identifier];
      [(HMDAccessoryBrowser *)v103 updateAlreadyPairingProgressForAccessoryServerIdentifier:v106 progressHandler:v181];

      v107 = [MEMORY[0x277CCA9B8] hmErrorWithCode:13];
      v108 = [HMDMatterAccessoryPairingEndContext hmdContextWithStep:2 error:v107];
      v109 = _Block_copy(v79);
      v110 = v109;
      if (v109)
      {
        (*(v109 + 2))(v109, 0, 0, 0, 0, 0, v107, v108);
      }

      goto LABEL_128;
    }
  }

  v215[0] = 0;
  v215[1] = v215;
  v215[2] = 0x2020000000;
  v216 = 0;
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v238 = __Block_byref_object_copy__220754;
  v239 = __Block_byref_object_dispose__220755;
  v240 = 0;
  v111 = dispatch_group_create();
  v209[0] = MEMORY[0x277D85DD0];
  v209[1] = 3221225472;
  v209[2] = __101__HMDAccessoryBrowser__pairAccessoryWithDescription_configuration_progressHandler_completionHandler___block_invoke_535;
  v209[3] = &unk_278681410;
  v112 = v111;
  v210 = v112;
  v211 = v95;
  v212 = v174;
  v213 = buf;
  v214 = v215;
  v113 = _Block_copy(v209);
  v114 = [v80 setupAccessoryPayload];
  v115 = v114;
  if ((!v114 || [v114 supportsIP]) && (-[HMDAccessoryBrowser ipAccessoryServerBrowser](v184, "ipAccessoryServerBrowser"), v116 = objc_claimAutoreleasedReturnValue(), v113[2](v113, v116), v116, !v115) || objc_msgSend(v115, "supportsBTLE"))
  {
    v117 = [(HMDAccessoryBrowser *)v184 btleAccessoryServerBrowser];
    v113[2](v113, v117);
  }

  v118 = [(HMDAccessoryBrowser *)v184 chipAccessoryServerBrowser];
  v119 = v118;
  if (v118)
  {
    if (v115)
    {
      v120 = [v115 communicationProtocol] == 2;

      if (!v120)
      {
        goto LABEL_127;
      }
    }

    else
    {
    }

    v165 = [(HMDAccessoryBrowser *)v184 chipAccessoryServerBrowser];
    v113[2](v113, v165);
  }

LABEL_127:
  v166 = [(HMDAccessoryBrowser *)v184 workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __101__HMDAccessoryBrowser__pairAccessoryWithDescription_configuration_progressHandler_completionHandler___block_invoke_3;
  block[3] = &unk_278681460;
  v203 = v115;
  v204 = v184;
  v207 = buf;
  v205 = v180;
  v206 = v81;
  v208 = v215;
  v167 = v115;
  dispatch_group_notify(v112, v166, block);

  _Block_object_dispose(buf, 8);
  _Block_object_dispose(v215, 8);
LABEL_128:

LABEL_129:
  v20 = 0;
LABEL_138:

LABEL_24:
LABEL_25:

  v39 = *MEMORY[0x277D85DE8];
}

void __101__HMDAccessoryBrowser__pairAccessoryWithDescription_configuration_progressHandler_completionHandler___block_invoke(uint64_t a1, int a2, void *a3, void *a4, void *a5)
{
  v54 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [v9 pendingRemovePairing];
  v13 = v12 != 0;
  if (v12)
  {
    v14 = objc_autoreleasePoolPush();
    v15 = *(a1 + 32);
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = HMFGetLogIdentifier();
      v18 = [v9 identifier];
      *buf = 138543618;
      v49 = v17;
      v50 = 2112;
      v51 = v18;
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@Waiting for the prior pending pairing to be removed from the accessory before proceeding with adding accessory %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v14);
  }

  else if (a2)
  {
    if (v9)
    {
      v19 = *(a1 + 32);
      v20 = [v9 identifier];
      [v19 updateAlreadyPairingProgressForAccessoryServerIdentifier:v20 progressHandler:*(a1 + 64)];

      v21 = 13;
    }

    else
    {
      v21 = 11;
    }

    v31 = [MEMORY[0x277CCA9B8] hmErrorWithCode:v21];
    v36 = [HMDMatterAccessoryPairingEndContext hmdContextWithStep:2 error:v31];
    if (*(a1 + 72))
    {
      v37 = objc_autoreleasePoolPush();
      v38 = *(a1 + 32);
      v39 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        v40 = HMFGetLogIdentifier();
        [v9 identifier];
        v41 = v43 = v37;
        *buf = 138543618;
        v49 = v40;
        v50 = 2112;
        v51 = v41;
        _os_log_impl(&dword_229538000, v39, OS_LOG_TYPE_ERROR, "%{public}@Pairing failed because its already associated to home %@", buf, 0x16u);

        v37 = v43;
      }

      objc_autoreleasePoolPop(v37);
      (*(*(a1 + 72) + 16))();
    }

    goto LABEL_29;
  }

  if (!v10)
  {
    v44[0] = MEMORY[0x277D85DD0];
    v44[1] = 3221225472;
    v44[2] = __101__HMDAccessoryBrowser__pairAccessoryWithDescription_configuration_progressHandler_completionHandler___block_invoke_529;
    v44[3] = &unk_278688BD0;
    v45 = *(a1 + 40);
    v46 = *(a1 + 48);
    v47 = v13;
    __101__HMDAccessoryBrowser__pairAccessoryWithDescription_configuration_progressHandler_completionHandler___block_invoke_529(v44);
    if (!v9)
    {
      v25 = objc_autoreleasePoolPush();
      v26 = *(a1 + 32);
      v27 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        v28 = HMFGetLogIdentifier();
        v29 = [*(a1 + 48) setupID];
        v30 = [*(a1 + 56) debugDescription];
        *buf = 138543874;
        v49 = v28;
        v50 = 2112;
        v51 = v29;
        v52 = 2112;
        v53 = v30;
        _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_INFO, "%{public}@Waiting for discovery of accessory with setupID %@ (%@) to start pairing", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v25);
    }

    v31 = v45;
    goto LABEL_29;
  }

  if (!v11)
  {
    v22 = [v10 copy];
    v11 = [HMDMatterAccessoryPairingEndContext hmdContextWithStep:2 error:v22];
  }

  if (*(a1 + 72))
  {
    v23 = [v10 domain];
    if (v23 == *MEMORY[0x277CFE770])
    {
      v24 = mapHAPPairingErrorToHMError(v10);
    }

    else
    {
      v24 = v10;
    }

    v31 = v24;

    v32 = objc_autoreleasePoolPush();
    v33 = *(a1 + 32);
    v34 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      v35 = HMFGetLogIdentifier();
      *buf = 138543362;
      v49 = v35;
      _os_log_impl(&dword_229538000, v34, OS_LOG_TYPE_ERROR, "%{public}@Pairing failed with fatal error", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v32);
    (*(*(a1 + 72) + 16))();
LABEL_29:
  }

  v42 = *MEMORY[0x277D85DE8];
}

void __101__HMDAccessoryBrowser__pairAccessoryWithDescription_configuration_progressHandler_completionHandler___block_invoke_535(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  dispatch_group_enter(v3);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __101__HMDAccessoryBrowser__pairAccessoryWithDescription_configuration_progressHandler_completionHandler___block_invoke_2;
  v7[3] = &unk_2786813E8;
  v9 = *(a1 + 56);
  v8 = *(a1 + 32);
  [v4 matchAccessoryServerWithSetupID:v5 serverIdentifier:v6 completionHandler:v7];
}

void __101__HMDAccessoryBrowser__pairAccessoryWithDescription_configuration_progressHandler_completionHandler___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) chipAccessorySetupPayload];
  v3 = [*(a1 + 40) chipAccessoryServerBrowser];
  if (v3 && !*(*(*(a1 + 64) + 8) + 40))
  {

    if (v2)
    {
      v6 = [*(a1 + 40) homeManager];
      v7 = [*(a1 + 48) homeUUID];
      v8 = [v6 _homeWithUUID:v7];

      v9 = [v8 targetFabricUUID];
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __101__HMDAccessoryBrowser__pairAccessoryWithDescription_configuration_progressHandler_completionHandler___block_invoke_4;
      v13[3] = &unk_27868A528;
      v10 = *(a1 + 56);
      v11 = *(a1 + 40);
      v16 = v10;
      v13[4] = v11;
      v14 = v2;
      v15 = v9;
      v12 = v9;
      [v8 setUpFabricForPairingWithCompletion:v13];

      goto LABEL_5;
    }
  }

  else
  {
  }

  v4 = *(*(*(a1 + 72) + 8) + 24);
  v5 = *(*(*(a1 + 64) + 8) + 40);
  (*(*(a1 + 56) + 16))();
LABEL_5:
}

void __101__HMDAccessoryBrowser__pairAccessoryWithDescription_configuration_progressHandler_completionHandler___block_invoke_544(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v5 = *(a1 + 32);
  if (v5)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __101__HMDAccessoryBrowser__pairAccessoryWithDescription_configuration_progressHandler_completionHandler___block_invoke_2_545;
    v7[3] = &unk_278681488;
    v6 = *(a1 + 48);
    v7[4] = *(a1 + 40);
    v8 = v6;
    v9 = *(a1 + 56);
    v10 = v4;
    [v5 setUpFabricForPairingWithCompletion:v7];
  }

  else
  {
    (*(v3 + 2))(v3);
  }
}

void __101__HMDAccessoryBrowser__pairAccessoryWithDescription_configuration_progressHandler_completionHandler___block_invoke_547(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) currentlyPairingAccessories];
  [v2 addObject:*(a1 + 40)];

  if (*(a1 + 80))
  {
    v3 = [[HMDAddAccessoryProgressState alloc] initWithUnpairedAccessory:*(a1 + 48) server:*(a1 + 56)];
    (*(*(a1 + 80) + 16))();
  }

  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v8 = *(a1 + 48);
    [*(a1 + 64) requiresUserConsent];
    v9 = HMFBooleanToString();
    *buf = 138543874;
    *&buf[4] = v7;
    v18 = 2112;
    v19 = v8;
    v20 = 2112;
    v21 = v9;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Starting pairing with accessory %@, needs consent: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v4);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __101__HMDAccessoryBrowser__pairAccessoryWithDescription_configuration_progressHandler_completionHandler___block_invoke_548;
  v13[3] = &unk_27868A010;
  v14 = *(a1 + 72);
  v15 = *(a1 + 40);
  v16 = *(a1 + 56);
  __101__HMDAccessoryBrowser__pairAccessoryWithDescription_configuration_progressHandler_completionHandler___block_invoke_548(v13);
  [*(a1 + 72) begin];
  *buf = *(a1 + 72);
  v10 = *(a1 + 56);
  v11 = [*(a1 + 40) pairingRequest];
  [v10 startPairingWithRequest:v11];

  __HMFActivityScopeLeave();
  v12 = *MEMORY[0x277D85DE8];
}

void *__101__HMDAccessoryBrowser__pairAccessoryWithDescription_configuration_progressHandler_completionHandler___block_invoke_548(void *result)
{
  v1 = result[4];
  if (v1)
  {
    v2 = result;
    v3 = result[5];
    v4 = v1;
    [v3 accessoryUUID];

    v5 = [v2[5] setupID];
    v6 = HMFBooleanToString();

    [v2[5] wacAccessory];
    v7 = HMFBooleanToString();
    [v2[5] legacyWAC];
    v8 = HMFBooleanToString();
    [v2[5] linkType];
    v9 = HAPLinkTypeDescription();
    [v2[6] communicationProtocol];

    return HAPCommunicationProtocolDescription();
  }

  return result;
}

void __101__HMDAccessoryBrowser__pairAccessoryWithDescription_configuration_progressHandler_completionHandler___block_invoke_2_545(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
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
      v13 = 138543874;
      v14 = v7;
      v15 = 2112;
      v16 = v8;
      v17 = 2112;
      v18 = v3;
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_ERROR, "%{public}@Matched accessoryServer %@ cannot be paired because target home could not setup fabric with error: %@", &v13, 0x20u);
    }

    objc_autoreleasePoolPop(v4);
    if (*(a1 + 48))
    {
      v9 = getLowestError();
      v10 = [HMDMatterAccessoryPairingEndContext hmdContextWithStep:2 error:v9];

      v11 = *(a1 + 40);
      (*(*(a1 + 48) + 16))();
    }
  }

  else
  {
    (*(*(a1 + 56) + 16))();
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __101__HMDAccessoryBrowser__pairAccessoryWithDescription_configuration_progressHandler_completionHandler___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = getLowestError();
    v5 = [HMDMatterAccessoryPairingEndContext hmdContextWithStep:2 error:v4];

    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v6 = [*(a1 + 32) chipAccessoryServerBrowser];
    v7 = [*(a1 + 40) chipSetupPayload];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __101__HMDAccessoryBrowser__pairAccessoryWithDescription_configuration_progressHandler_completionHandler___block_invoke_5;
    v9[3] = &unk_278681438;
    v8 = *(a1 + 48);
    v10 = *(a1 + 56);
    [v6 prepareForPairingWithSetupPayload:v7 targetFabricUUID:v8 completionHandler:v9];
  }
}

void __101__HMDAccessoryBrowser__pairAccessoryWithDescription_configuration_progressHandler_completionHandler___block_invoke_5(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v10 = a3;
  v6 = a4;
  v7 = v6;
  if (v6)
  {
    v8 = [v6 copy];
    v9 = [HMDMatterAccessoryPairingEndContext hmdContextWithStep:2 error:v8];
  }

  else
  {
    v9 = 0;
  }

  (*(*(a1 + 32) + 16))();
}

void __101__HMDAccessoryBrowser__pairAccessoryWithDescription_configuration_progressHandler_completionHandler___block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v6 = a3;
  if (v6 && !*(*(*(a1 + 40) + 8) + 40))
  {
    *(*(*(a1 + 48) + 8) + 24) = a2;
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  }

  dispatch_group_leave(*(a1 + 32));
}

void *__101__HMDAccessoryBrowser__pairAccessoryWithDescription_configuration_progressHandler_completionHandler___block_invoke_529(void *result)
{
  v1 = result[4];
  if (v1)
  {
    v2 = result;
    v3 = result[5];
    v4 = v1;
    v5 = [v3 setupID];
    v6 = HMFBooleanToString();

    [v2[5] wacAccessory];
    v7 = HMFBooleanToString();
    [v2[5] linkType];

    v8 = HAPLinkTypeDescription();
    v9 = *(v2 + 48);
    return HMFBooleanToString();
  }

  return result;
}

- (void)_cancelPairingWithAccessoryDescription:(id)a3 error:(id)a4 context:(id)a5
{
  v52 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(HMDAccessoryBrowser *)self workQueue];
  dispatch_assert_queue_V2(v11);

  v12 = [v8 cancellationReason];
  v13 = v12;
  if (!v12)
  {
    goto LABEL_5;
  }

  if ([v12 isHMError])
  {
    v14 = [HMDMatterAccessoryPairingEndContext hmContextWithCancelledError:v13];

    v10 = v14;
  }

  if (([v13 isHMError] & 1) == 0)
  {
LABEL_5:
    v15 = v9;

    v13 = v15;
  }

  v16 = [(HMDAccessoryBrowser *)self unpairedHAPAccessoryWithAccessoryDescription:v8];
  if (v16)
  {
    [(HMDAccessoryBrowser *)self _cancelPairingWithAccessory:v16 error:v13 context:v10];
  }

  else
  {
    v17 = objc_autoreleasePoolPush();
    v18 = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = HMFGetLogIdentifier();
      v21 = [v8 debugDescription];
      *buf = 138543618;
      v46 = v20;
      v47 = 2112;
      v48 = v21;
      _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_INFO, "%{public}@There is no unpaired accessory for %@ - removing with pairingInfo", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v17);
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v22 = [(HMDAccessoryBrowser *)v18 currentlyPairingAccessories];
    v23 = [v22 countByEnumeratingWithState:&v41 objects:v51 count:16];
    if (v23)
    {
      v24 = v23;
      v38 = v18;
      v39 = v10;
      v40 = v9;
      v25 = *v42;
LABEL_12:
      v26 = 0;
      while (1)
      {
        if (*v42 != v25)
        {
          objc_enumerationMutation(v22);
        }

        v27 = *(*(&v41 + 1) + 8 * v26);
        v28 = [v27 setupID];
        v29 = [v27 accessoryServerIdentifier];
        v30 = [v8 matchesSetupID:v28 serverIdentifier:v29];

        if (v30)
        {
          break;
        }

        if (v24 == ++v26)
        {
          v24 = [v22 countByEnumeratingWithState:&v41 objects:v51 count:16];
          if (v24)
          {
            goto LABEL_12;
          }

          v31 = v22;
          v10 = v39;
          v9 = v40;
          v16 = 0;
          goto LABEL_24;
        }
      }

      v31 = v27;

      v10 = v39;
      v9 = v40;
      v16 = 0;
      if (!v31)
      {
        goto LABEL_25;
      }

      v32 = objc_autoreleasePoolPush();
      v33 = v38;
      v34 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
      {
        v35 = HMFGetLogIdentifier();
        v36 = [v8 debugDescription];
        *buf = 138543874;
        v46 = v35;
        v47 = 2112;
        v48 = v36;
        v49 = 2112;
        v50 = v31;
        _os_log_impl(&dword_229538000, v34, OS_LOG_TYPE_INFO, "%{public}@Accessory description %@ matches accessory pending to be paired %@ - aborting the operation", buf, 0x20u);

        v10 = v39;
        v9 = v40;
      }

      objc_autoreleasePoolPop(v32);
      [(HMDAccessoryBrowser *)v33 _removePairingInformation:v31 error:v13 context:v10];
    }

    else
    {
      v31 = v22;
    }

LABEL_24:
  }

LABEL_25:

  v37 = *MEMORY[0x277D85DE8];
}

- (void)cancelPairingWithAccessoryDescription:(id)a3 error:(id)a4 context:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(HMDAccessoryBrowser *)self workQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __75__HMDAccessoryBrowser_cancelPairingWithAccessoryDescription_error_context___block_invoke;
  v15[3] = &unk_2786891E0;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(v11, v15);
}

- (id)currentControllerPairingIdentity
{
  v2 = [(HMDAccessoryBrowser *)self homeManager];
  v3 = [v2 bgOpsManager];
  v4 = [v3 getHH2ControllerKey];

  return v4;
}

- (id)findAccessoryServerForAccessoryDescription:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v5 = [(HMDAccessoryBrowser *)self unpairedHAPAccessories];
  v6 = [v5 countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v28;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v28 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v27 + 1) + 8 * i);
        v11 = [v10 uuid];
        v12 = [v4 accessoryUUID];
        v13 = [v11 isEqual:v12];

        if (v13)
        {
          v20 = [v10 preferredAccessoryServer];
          goto LABEL_22;
        }

        v25 = 0u;
        v26 = 0u;
        v23 = 0u;
        v24 = 0u;
        v14 = [v10 accessoryServers];
        v15 = [v14 countByEnumeratingWithState:&v23 objects:v31 count:16];
        if (v15)
        {
          v16 = v15;
          v17 = *v24;
LABEL_9:
          v18 = 0;
          while (1)
          {
            if (*v24 != v17)
            {
              objc_enumerationMutation(v14);
            }

            v19 = *(*(&v23 + 1) + 8 * v18);
            if ([v4 matchesAccessoryServer:v19])
            {
              break;
            }

            if (v16 == ++v18)
            {
              v16 = [v14 countByEnumeratingWithState:&v23 objects:v31 count:16];
              if (v16)
              {
                goto LABEL_9;
              }

              goto LABEL_15;
            }
          }

          v20 = v19;

          if (v20)
          {
            goto LABEL_22;
          }
        }

        else
        {
LABEL_15:
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v27 objects:v32 count:16];
      v20 = 0;
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v20 = 0;
  }

LABEL_22:

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

- (void)_cancelPairingWithAccessory:(id)a3 error:(id)a4 context:(id)a5
{
  v109 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(HMDAccessoryBrowser *)self workQueue];
  dispatch_assert_queue_V2(v11);

  v84 = self;
  if ([v8 supportsCHIP])
  {
    v12 = objc_autoreleasePoolPush();
    v13 = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543874;
      v99 = v15;
      v100 = 2112;
      v101 = v9;
      v102 = 2112;
      v103 = v10;
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, "%{public}@Cancel pairing matter accessory with error %@ context %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v12);
  }

  v16 = [(HMDAccessoryBrowser *)v84 _pairingInformationForUnpairedAccessory:v8];
  [v16 addAccessoryCompletionHandler];
  v77 = v8;
  v86 = v83 = v16;
  if (!v86)
  {
    v17 = v10;
    v18 = objc_autoreleasePoolPush();
    v19 = v84;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = HMFGetLogIdentifier();
      v22 = [v77 name];
      v23 = [v77 uuid];
      *buf = 138543874;
      v99 = v21;
      v100 = 2112;
      v101 = v22;
      v102 = 2112;
      v103 = v23;
      _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_INFO, "%{public}@Cancel pairing with accessory but addAccessoryCompletion is nil %@/%@", buf, 0x20u);

      v8 = v77;
    }

    objc_autoreleasePoolPop(v18);
    v10 = v17;
    v16 = v83;
  }

  v97 = 0u;
  v95 = 0u;
  v96 = 0u;
  v94 = 0u;
  obj = [v8 accessoryServers];
  v78 = v9;
  v85 = [obj countByEnumeratingWithState:&v94 objects:v108 count:16];
  if (v85)
  {
    v25 = *v95;
    v26 = 0x277D17000uLL;
    *&v24 = 138544386;
    v76 = v24;
    v81 = *v95;
    do
    {
      for (i = 0; i != v85; ++i)
      {
        if (*v95 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v28 = *(*(&v94 + 1) + 8 * i);
        if (v16)
        {
          v29 = [v16 linkType];
          v30 = v29 == [v28 linkType];
        }

        else
        {
          v30 = 0;
        }

        v31 = *(v26 + 2752);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v32 = v16 != 0;
        }

        else
        {
          v32 = v30;
        }

        if (v32)
        {
          if ([v28 isPaired])
          {
            v33 = objc_autoreleasePoolPush();
            v34 = v84;
            v35 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
            {
              HMFGetLogIdentifier();
              v36 = v79 = v10;
              v37 = [v8 name];
              v38 = [v8 uuid];
              v39 = [v38 UUIDString];
              v40 = [v28 identifier];
              *buf = 138544130;
              v99 = v36;
              v100 = 2112;
              v101 = v37;
              v102 = 2112;
              v103 = v39;
              v104 = 2112;
              v105 = v40;
              _os_log_impl(&dword_229538000, v35, OS_LOG_TYPE_INFO, "%{public}@Cancelling pairing of the accessory that completed pair-setup: %@/%@/%@", buf, 0x2Au);

              v25 = v81;
              v9 = v78;

              v8 = v77;
              v10 = v79;
            }

            objc_autoreleasePoolPop(v33);
            v16 = v83;
            v26 = 0x277D17000uLL;
          }

          if ([v8 supportsCHIP] && !v10)
          {
            v10 = [HMDMatterAccessoryPairingEndContext hmContextWithCancelledError:v9];
          }

          v41 = *(v26 + 2752);
          v42 = v28;
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v43 = v42;
          }

          else
          {
            v43 = 0;
          }

          v44 = v43;

          if (v44)
          {
            v87[0] = MEMORY[0x277D85DD0];
            v87[1] = 3221225472;
            v87[2] = __65__HMDAccessoryBrowser__cancelPairingWithAccessory_error_context___block_invoke;
            v87[3] = &unk_2786873D8;
            v87[4] = v84;
            v88 = v8;
            v89 = v9;
            v45 = v10;
            v93 = v86;
            v90 = v45;
            v91 = v42;
            v92 = v16;
            v46 = v86;
            [v44 stopPairingWithError:0 metricsReadyHandler:v87];
          }

          else
          {
            v47 = v86;
            if (v86)
            {
              if ([v8 supportsCHIP])
              {
                v48 = v10;
                v49 = objc_autoreleasePoolPush();
                v50 = v84;
                v51 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
                {
                  HMFGetLogIdentifier();
                  v52 = v80 = v49;
                  v53 = [v8 name];
                  v54 = [v8 uuid];
                  *buf = v76;
                  v99 = v52;
                  v100 = 2112;
                  v101 = v53;
                  v102 = 2112;
                  v103 = v54;
                  v104 = 2112;
                  v105 = v78;
                  v106 = 2112;
                  v107 = v48;
                  _os_log_impl(&dword_229538000, v51, OS_LOG_TYPE_INFO, "%{public}@Calling addAccessoryCompletion for unpaired accessory %@/%@, error %@, context %@", buf, 0x34u);

                  v9 = v78;
                  v49 = v80;
                }

                objc_autoreleasePoolPop(v49);
                v10 = v48;
                v16 = v83;
              }

              v55 = [v8 uuid];
              v56 = [v8 certificationStatus];
              v57 = [v16 wacAccessory];
              v58 = [v83 legacyWAC];
              v47 = v86;
              v59 = v57;
              v16 = v83;
              (v86)[2](v86, v42, v55, v56, v59, v58, v9, v10);
            }

            [v42 stopPairingWithError:0];
            v25 = v81;
          }

          v86 = 0;
          v26 = 0x277D17000;
        }
      }

      v85 = [obj countByEnumeratingWithState:&v94 objects:v108 count:16];
    }

    while (v85);
  }

  if (v86)
  {
    if ([v8 supportsCHIP])
    {
      v60 = v10;
      v61 = objc_autoreleasePoolPush();
      v62 = v84;
      v63 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v63, OS_LOG_TYPE_INFO))
      {
        v64 = HMFGetLogIdentifier();
        v65 = [v8 name];
        v66 = [v8 uuid];
        *buf = 138544386;
        v99 = v64;
        v100 = 2112;
        v101 = v65;
        v102 = 2112;
        v103 = v66;
        v104 = 2112;
        v105 = v78;
        v106 = 2112;
        v107 = v60;
        _os_log_impl(&dword_229538000, v63, OS_LOG_TYPE_INFO, "%{public}@Calling addAccessoryCompletion explicitly because accessoryServer went away %@/%@, error %@, context %@", buf, 0x34u);

        v9 = v78;
      }

      objc_autoreleasePoolPop(v61);
      v10 = v60;
      v16 = v83;
    }

    v67 = [v8 uuid];
    v68 = [v8 certificationStatus];
    v69 = [v16 wacAccessory];
    v70 = [v83 legacyWAC];
    v71 = v69;
    v16 = v83;
    (v86)[2](v86, 0, v67, v68, v71, v70, v9, v10);
  }

  [(HMDAccessoryBrowser *)v84 _removePairingInformationForUnpairedAccessory:v8, v76];
  v72 = [v8 identifier];
  [(HMDAccessoryBrowser *)v84 removePairedAccessoryInfoWithIdentifier:v72];

  v73 = [v8 accessoryServers];
  v74 = [v73 count];

  if (!v74)
  {
    [(HMDAccessoryBrowser *)v84 removeUnpairedHAPAccessory:v8 completion:&__block_literal_global_525];
  }

  v75 = *MEMORY[0x277D85DE8];
}

void __65__HMDAccessoryBrowser__cancelPairingWithAccessory_error_context___block_invoke(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__HMDAccessoryBrowser__cancelPairingWithAccessory_error_context___block_invoke_2;
  block[3] = &unk_2786873D8;
  *&v4 = *(a1 + 40);
  *(&v4 + 1) = *v2;
  v11 = v4;
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  *&v7 = v5;
  *(&v7 + 1) = v6;
  v13 = v11;
  v14 = v7;
  v8 = *(a1 + 80);
  v9 = *(a1 + 64);
  v10 = *(a1 + 72);
  v17 = v8;
  v15 = v9;
  v16 = v10;
  dispatch_async(v3, block);
}

void __65__HMDAccessoryBrowser__cancelPairingWithAccessory_error_context___block_invoke_2(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) supportsCHIP])
  {
    v2 = objc_autoreleasePoolPush();
    v3 = *(a1 + 40);
    v4 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = HMFGetLogIdentifier();
      v6 = [*(a1 + 32) name];
      v7 = [*(a1 + 32) uuid];
      v8 = *(a1 + 48);
      v9 = *(a1 + 56);
      v14 = 138544386;
      v15 = v5;
      v16 = 2112;
      v17 = v6;
      v18 = 2112;
      v19 = v7;
      v20 = 2112;
      v21 = v8;
      v22 = 2112;
      v23 = v9;
      _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Calling addAccessoryCompletion for unpaired accessory %@/%@, error %@, context %@ when metrics is ready by server", &v14, 0x34u);
    }

    objc_autoreleasePoolPop(v2);
  }

  v10 = *(a1 + 80);
  if (v10)
  {
    v11 = *(a1 + 64);
    v12 = [*(a1 + 32) uuid];
    (*(v10 + 16))(v10, v11, v12, [*(a1 + 32) certificationStatus], objc_msgSend(*(a1 + 72), "wacAccessory"), objc_msgSend(*(a1 + 72), "legacyWAC"), *(a1 + 48), *(a1 + 56));
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_handleSetupCodeAvailable:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDAccessoryBrowser *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(HMDAccessoryBrowser *)self _pairingInformationForUnpairedAccessory:v4];
  if ([v6 provideNetworkCredentialsToAccessory])
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v7 = [v4 accessoryServers];
    v8 = [v7 countByEnumeratingWithState:&v23 objects:v33 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v24;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v24 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v23 + 1) + 8 * i);
          v13 = [v12 linkType];
          if (v13 == [v6 linkType])
          {
            v14 = objc_autoreleasePoolPush();
            v15 = self;
            v16 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
            {
              v17 = HMFGetLogIdentifier();
              v18 = [v4 name];
              v19 = [v4 uuid];
              [v19 UUIDString];
              v20 = v22 = v14;
              *buf = 138543874;
              v28 = v17;
              v29 = 2112;
              v30 = v18;
              v31 = 2112;
              v32 = v20;
              _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@WAC accessory %@/%@: continuing pairing after setup code has been provided", buf, 0x20u);

              v14 = v22;
            }

            objc_autoreleasePoolPop(v14);
            [v12 continuePairingAfterAuthPrompt];
            goto LABEL_15;
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v23 objects:v33 count:16];
        if (v9)
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
    [v6 setSetupCodeProvided:1];
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)_notifyManagerOfNewAccessory
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = [(HMDAccessoryBrowser *)self managerDelegate];
  if (v3)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = self;
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      v9 = 138543362;
      v10 = v7;
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Notifying Home manager that a new unpaired accessory was discovered", &v9, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    [v3 accessoryBrowserDidFindNewAccessory];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (id)unpairedAccessoryForServer:(id)a3
{
  v4 = a3;
  v5 = [v4 identifier];

  if (v5)
  {
    v6 = [v4 identifier];
    v7 = [(HMDAccessoryBrowser *)self unpairedAccessoryWithServerIdentifier:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)unpairedAccessoryWithServerIdentifier:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [(HMDAccessoryBrowser *)self unpairedHAPAccessories];
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
        v11 = [v4 isEqualToString:v10];

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

- (void)_setBTLEPowerChangeCompletionHandler
{
  objc_initWeak(&location, self);
  v5 = MEMORY[0x277D85DD0];
  v6 = 3221225472;
  v7 = __59__HMDAccessoryBrowser__setBTLEPowerChangeCompletionHandler__block_invoke;
  v8 = &unk_278681398;
  objc_copyWeak(&v9, &location);
  v3 = _Block_copy(&v5);
  v4 = [(HMDAccessoryBrowser *)self btleAccessoryServerBrowser:v5];
  [v4 setReachabilityCompletionHandler:v3];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __59__HMDAccessoryBrowser__setBTLEPowerChangeCompletionHandler__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && [v7 code] != 48 && objc_msgSend(WeakRetained, "btlePowerState") != a2)
  {
    v6 = [WeakRetained workQueue];
    dispatch_assert_queue_V2(v6);

    [WeakRetained setBtlePowerState:a2];
    if (a2)
    {
      [WeakRetained _btleAccessoryReachabilityProbeTimer:1];
    }

    else
    {
      [WeakRetained _notifyDelegateOfReachabilityChangeChange:0 forBTLEAccessories:0];
    }
  }
}

- (void)handleXPCConnectionInvalidated:(id)a3
{
  v4 = a3;
  v5 = [(HMDAccessoryBrowser *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __54__HMDAccessoryBrowser_handleXPCConnectionInvalidated___block_invoke;
  v7[3] = &unk_27868A750;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __54__HMDAccessoryBrowser_handleXPCConnectionInvalidated___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 objectForKeyedSubscript:@"connection"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  if (v5)
  {
    v6 = *(a1 + 40);
    v7 = [MEMORY[0x277CCA9B8] hmPrivateErrorWithCode:2503];
    [v6 _removeBrowsingConnection:v5 error:v7];
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v9 = *(a1 + 40);
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v12 = *(a1 + 32);
      v14 = 138543618;
      v15 = v11;
      v16 = 2112;
      v17 = v12;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Received connection invalidated notification, but no connection object was found: %@", &v14, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_handleRequestFetchVendorModelEntryForProductData:(id)a3
{
  v41 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDAccessoryBrowser *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [v4 messagePayload];
  v7 = *MEMORY[0x277CD24D8];
  v8 = [v6 valueForKey:*MEMORY[0x277CD24D8]];

  if (v8)
  {
    v9 = [v4 stringForKey:v7];
    v10 = +[HMDVendorDataManager sharedVendorDataManager];
    v11 = [v10 vendorModelEntryForProductData:v9];

    if (v11)
    {
      v12 = objc_alloc(MEMORY[0x277CD1F10]);
      v13 = [v11 manufacturer];
      v14 = [v11 model];
      v15 = [v11 appBundleID];
      v16 = [v11 appStoreID];
      v17 = [v11 firmwareVersion];
      v18 = [v17 rawVersionString];
      [v11 productData];
      v19 = v33 = v9;
      [v11 productDataAlternates];
      v20 = v34 = v4;
      v21 = [v12 initWithManufacturer:v13 model:v14 appBundleID:v15 appStoreID:v16 firmwareVersion:v18 productData:v19 productDataAlternates:v20];

      v35 = *MEMORY[0x277CD27A8];
      v22 = [v21 dictionaryRepresentation];
      v36 = v22;
      v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v36 forKeys:&v35 count:1];

      v4 = v34;
      [v34 respondWithPayload:v23];

      v9 = v33;
    }

    else
    {
      v28 = objc_autoreleasePoolPush();
      v29 = self;
      v30 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        v31 = HMFGetLogIdentifier();
        *buf = 138543618;
        v38 = v31;
        v39 = 2112;
        v40 = v9;
        _os_log_impl(&dword_229538000, v30, OS_LOG_TYPE_ERROR, "%{public}@Vendor model entry for product data %@ not found", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v28);
      v21 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
      [v4 respondWithError:v21];
    }
  }

  else
  {
    v24 = objc_autoreleasePoolPush();
    v25 = self;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v27 = HMFGetLogIdentifier();
      *buf = 138543362;
      v38 = v27;
      _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_DEFAULT, "%{public}@Received invalid message in _handleRequestFetchVendorModelEntryForProductData", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v24);
    v9 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
    [v4 respondWithError:v9];
  }

  v32 = *MEMORY[0x277D85DE8];
}

- (void)_handleRequestFetchVendorModelEntryForManufacturer:(id)a3
{
  v47 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDAccessoryBrowser *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [v4 messagePayload];
  v7 = *MEMORY[0x277CD2408];
  v8 = [v6 valueForKey:*MEMORY[0x277CD2408]];

  if (v8)
  {
    v9 = [v4 stringForKey:v7];
    v10 = [v4 stringForKey:*MEMORY[0x277CD2488]];
    v11 = +[HMDVendorDataManager sharedVendorDataManager];
    v12 = [v11 vendorModelEntryForManufacturer:v9 model:v10];

    if (v12)
    {
      v35 = objc_alloc(MEMORY[0x277CD1F10]);
      v13 = [v12 manufacturer];
      v14 = [v12 model];
      v15 = [v12 appBundleID];
      v16 = [v12 appStoreID];
      v17 = [v12 firmwareVersion];
      [v17 rawVersionString];
      v18 = v37 = v10;
      [v12 productData];
      v19 = v38 = v9;
      v20 = [v12 productDataAlternates];
      v21 = v35;
      v36 = v4;
      v22 = v13;
      v23 = [v21 initWithManufacturer:v13 model:v14 appBundleID:v15 appStoreID:v16 firmwareVersion:v18 productData:v19 productDataAlternates:v20];

      v4 = v36;
      v39 = *MEMORY[0x277CD27A8];
      v24 = [v23 dictionaryRepresentation];
      v40 = v24;
      v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v40 forKeys:&v39 count:1];

      v9 = v38;
      [v36 respondWithPayload:v25];

      v10 = v37;
    }

    else
    {
      v30 = objc_autoreleasePoolPush();
      v31 = self;
      v32 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        v33 = HMFGetLogIdentifier();
        *buf = 138543874;
        v42 = v33;
        v43 = 2112;
        v44 = v9;
        v45 = 2112;
        v46 = v10;
        _os_log_impl(&dword_229538000, v32, OS_LOG_TYPE_ERROR, "%{public}@Vendor model entry for manufacturer %@, model %@ not found", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v30);
      v23 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
      [v4 respondWithError:v23];
    }
  }

  else
  {
    v26 = objc_autoreleasePoolPush();
    v27 = self;
    v28 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      v29 = HMFGetLogIdentifier();
      *buf = 138543362;
      v42 = v29;
      _os_log_impl(&dword_229538000, v28, OS_LOG_TYPE_DEFAULT, "%{public}@Received invalid message in _handleRequestFetchVendorModelEntryForManufacturer", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v26);
    v9 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
    [v4 respondWithError:v9];
  }

  v34 = *MEMORY[0x277D85DE8];
}

- (void)_handleRequestFetchVendorMetadataProductData:(id)a3
{
  v54 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDAccessoryBrowser *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [v4 messagePayload];
  v7 = *MEMORY[0x277CD2790];
  v8 = [v6 valueForKey:*MEMORY[0x277CD2790]];
  if (v8)
  {
    v9 = v8;
    v10 = [v4 messagePayload];
    v11 = *MEMORY[0x277CD24E0];
    v12 = [v10 valueForKey:*MEMORY[0x277CD24E0]];

    if (v12)
    {
      v13 = [v4 numberForKey:v7];
      v14 = [v4 numberForKey:v11];
      v15 = [(HMDAccessoryBrowser *)self homeManager];
      v16 = [v15 chipDataSource];
      v17 = [v16 vendorMetadataStore];
      v18 = [v17 retrieveVendorMetadataForVendorID:v13 productID:v14];

      v19 = [v18 productWithID:v14];
      if (v19)
      {
        v20 = objc_alloc(MEMORY[0x277CD1898]);
        v21 = [v19 identifier];
        v22 = [v19 categoryNumber];
        v23 = [v19 deviceTypeID];
        [v19 name];
        v24 = v44 = v18;
        [v19 label];
        v25 = v45 = v14;
        v26 = [v19 installationGuideURL];
        v27 = [v20 initWithIdentifier:v21 categoryNumber:v22 deviceTypeID:v23 name:v24 label:v25 installationGuideURL:v26];

        v18 = v44;
        v28 = objc_alloc(MEMORY[0x277CD18A0]);
        v29 = [v44 identifier];
        v30 = [v44 name];
        v31 = [v28 initWithIdentifier:v29 name:v30];

        v46[0] = *MEMORY[0x277CD2798];
        v32 = [v27 dictionaryRepresentation];
        v47[0] = v32;
        v46[1] = *MEMORY[0x277CD27A0];
        v33 = [v31 dictionaryRepresentation];
        v47[1] = v33;
        v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v47 forKeys:v46 count:2];

        v14 = v45;
        [v4 respondWithPayload:v34];
      }

      else
      {
        v39 = objc_autoreleasePoolPush();
        v40 = self;
        v41 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
        {
          v42 = HMFGetLogIdentifier();
          *buf = 138543874;
          v49 = v42;
          v50 = 2112;
          v51 = v13;
          v52 = 2112;
          v53 = v14;
          _os_log_impl(&dword_229538000, v41, OS_LOG_TYPE_ERROR, "%{public}@Product metadata for vendor %@, product %@ not found", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v39);
        v27 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
        [v4 respondWithError:v27];
      }

      goto LABEL_13;
    }
  }

  else
  {
  }

  v35 = objc_autoreleasePoolPush();
  v36 = self;
  v37 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
  {
    v38 = HMFGetLogIdentifier();
    *buf = 138543362;
    v49 = v38;
    _os_log_impl(&dword_229538000, v37, OS_LOG_TYPE_DEFAULT, "%{public}@Received invalid message in _handleRequestFetchVendorMetadataProductData", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v35);
  v13 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
  [v4 respondWithError:v13];
LABEL_13:

  v43 = *MEMORY[0x277D85DE8];
}

- (void)_handleRequestFetchVendorMetadataVendorData:(id)a3
{
  v35 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDAccessoryBrowser *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [v4 messagePayload];
  v7 = *MEMORY[0x277CD2790];
  v8 = [v6 valueForKey:*MEMORY[0x277CD2790]];

  if (v8)
  {
    v9 = [v4 numberForKey:v7];
    v10 = [(HMDAccessoryBrowser *)self homeManager];
    v11 = [v10 chipDataSource];
    v12 = [v11 vendorMetadataStore];
    v13 = [v12 retrieveVendorMetadataForVendorID:v9 productID:0];

    if (v13)
    {
      v14 = objc_alloc(MEMORY[0x277CD18A0]);
      v15 = [v13 identifier];
      v16 = [v13 name];
      v17 = [v14 initWithIdentifier:v15 name:v16];

      v18 = [v17 dictionaryRepresentation];
      v30 = v18;
      v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v30 forKeys:&v29 count:1];

      [v4 respondWithPayload:v19];
    }

    else
    {
      v24 = objc_autoreleasePoolPush();
      v25 = self;
      v26 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v27 = HMFGetLogIdentifier();
        *buf = 138543618;
        v32 = v27;
        v33 = 2112;
        v34 = v9;
        _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_ERROR, "%{public}@Vendor metadata for vendor %@ not found", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v24);
      v17 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
      [v4 respondWithError:v17];
    }
  }

  else
  {
    v20 = objc_autoreleasePoolPush();
    v21 = self;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = HMFGetLogIdentifier();
      *buf = 138543362;
      v32 = v23;
      _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_DEFAULT, "%{public}@Received invalid message in _handleRequestFetchVendorMetadataVendorData", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v20);
    v9 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
    [v4 respondWithError:v9];
  }

  v28 = *MEMORY[0x277D85DE8];
}

- (void)_handleRequestSearchForNewAccessories:(id)a3
{
  v45 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDAccessoryBrowser *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [v4 messagePayload];
  v7 = [v6 valueForKey:@"kStartSearch"];

  if (v7)
  {
    v8 = [v4 transport];
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
      v11 = [v4 BOOLForKey:@"kStartSearch"];
      v12 = objc_autoreleasePoolPush();
      v13 = self;
      v14 = HMFGetOSLogHandle();
      v15 = os_log_type_enabled(v14, OS_LOG_TYPE_INFO);
      if (!v11)
      {
        if (v15)
        {
          v27 = HMFGetLogIdentifier();
          *buf = 138543618;
          v42 = v27;
          v43 = 2112;
          v44 = v10;
          _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, "%{public}@Received request to stop searching for new accessories for XPC connection: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v12);
        v20 = [v4 errorForKey:@"kStopSearchReason"];
        if (!v20 || ([v4 isEntitledForSPIAccess] & 1) != 0)
        {
          [(HMDAccessoryBrowser *)v13 _removeBrowsingConnection:v10 error:v20];
          v19 = -[HMDAccessoryBrowserXPCMessageSendPolicyParameters initWithEntitlements:browsing:]([HMDAccessoryBrowserXPCMessageSendPolicyParameters alloc], "initWithEntitlements:browsing:", [v10 entitlements], 0);
          [v10 updateSendPolicyParameters:v19];
          v21 = 0;
          goto LABEL_20;
        }

        v33 = objc_autoreleasePoolPush();
        v34 = v13;
        v35 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          v36 = HMFGetLogIdentifier();
          *buf = 138543362;
          v42 = v36;
          _os_log_impl(&dword_229538000, v35, OS_LOG_TYPE_ERROR, "%{public}@Received invalid request to stop searching for new accessories with stop reason", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v33);
        v37 = [MEMORY[0x277CCA9B8] hmErrorWithCode:80];
        [v4 respondWithError:v37];

LABEL_25:
        goto LABEL_26;
      }

      if (v15)
      {
        v16 = HMFGetLogIdentifier();
        *buf = 138543618;
        v42 = v16;
        v43 = 2112;
        v44 = v10;
        _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, "%{public}@Received request to start searching for new accessories for XPC connection: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v12);
      v17 = [v4 proxyConnection];
      v18 = [v17 processInfo];
      v38 = 0;
      v19 = [v18 clientIdentifierSalt:&v38];
      v20 = v38;

      if (v19)
      {
        v39 = @"kIdentifierSaltKey";
        v40 = v19;
        v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v40 forKeys:&v39 count:1];
        [(HMDAccessoryBrowser *)v13 __addBrowsingConnection:v10];
        v22 = -[HMDAccessoryBrowserXPCMessageSendPolicyParameters initWithEntitlements:browsing:]([HMDAccessoryBrowserXPCMessageSendPolicyParameters alloc], "initWithEntitlements:browsing:", [v10 entitlements], 1);
        [v10 updateSendPolicyParameters:v22];

LABEL_20:
        [v4 respondWithPayload:v21];

LABEL_26:
        goto LABEL_27;
      }

      v28 = objc_autoreleasePoolPush();
      v29 = v13;
      v30 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        v31 = HMFGetLogIdentifier();
        *buf = 138543618;
        v42 = v31;
        v43 = 2112;
        v44 = v20;
        _os_log_impl(&dword_229538000, v30, OS_LOG_TYPE_ERROR, "%{public}@Cannot search for new accessories because client identifier salt could not be determined: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v28);
    }

    else
    {
      v20 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
    }

    [v4 respondWithError:v20];
    goto LABEL_25;
  }

  v23 = objc_autoreleasePoolPush();
  v24 = self;
  v25 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    v26 = HMFGetLogIdentifier();
    *buf = 138543362;
    v42 = v26;
    _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_DEFAULT, "%{public}@Received invalid message in _handleRequestSearchForNewAccessories", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v23);
LABEL_27:

  v32 = *MEMORY[0x277D85DE8];
}

- (void)_handleRequestFetchNewAccessories:(id)a3
{
  v44[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 numberForKey:@"kConfigGenerationCounterKey"];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 unsignedIntegerValue];
    v8 = [(HMDAccessoryBrowser *)self generationCounter];
    v9 = objc_autoreleasePoolPush();
    v10 = self;
    v11 = HMFGetOSLogHandle();
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_INFO);
    if (v7 == v8)
    {
      if (v12)
      {
        v13 = HMFGetLogIdentifier();
        *buf = 138543618;
        v38 = v13;
        v39 = 2048;
        v40 = [(HMDAccessoryBrowser *)v10 generationCounter];
        _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Accessory browser's generation counter matches client's value of %lu", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v9);
      v43 = @"kConfigGenerationCounterKey";
      v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDAccessoryBrowser generationCounter](v10, "generationCounter")}];
      v44[0] = v14;
      v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v44 forKeys:&v43 count:1];
    }

    else
    {
      if (v12)
      {
        v17 = HMFGetLogIdentifier();
        *buf = 138543874;
        v38 = v17;
        v39 = 2048;
        v40 = [(HMDAccessoryBrowser *)v10 generationCounter];
        v41 = 2048;
        v42 = [v6 unsignedIntegerValue];
        _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Accessory browser's generation counter %lu does not match client's value of %lu", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v9);
      v18 = [(HMDAccessoryBrowser *)v10 unassociatedAccessoriesForClientRequest:v4];
      v14 = encodeRootObjectForIncomingXPCMessage(v18, v4);

      v36[0] = v14;
      v35[0] = @"kAccessoriesInfoDataKey";
      v35[1] = @"kConfigGenerationCounterKey";
      v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDAccessoryBrowser generationCounter](v10, "generationCounter")}];
      v36[1] = v19;
      v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:v35 count:2];
    }

    [v4 respondWithPayload:v15];
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v20 = [(HMDAccessoryBrowser *)v10 unassociatedAccessories];
    v21 = [v20 countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v31;
      do
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v31 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v25 = *(*(&v30 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v26 = v25;
          }

          else
          {
            v26 = 0;
          }

          v27 = v26;

          if ([v27 hasIPLink])
          {
            v28 = [v27 preferredAccessoryServer];
            [v28 reconfirm];
          }
        }

        v22 = [v20 countByEnumeratingWithState:&v30 objects:v34 count:16];
      }

      while (v22);
    }
  }

  else
  {
    v16 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
    [v4 respondWithError:v16];
  }

  v29 = *MEMORY[0x277D85DE8];
}

- (void)_handleCurrentWiFiNetworkChangedNotification:(id)a3
{
  v4 = +[HMDThreadNetworkMetadataStore defaultStore];
  v5 = v4;
  if (v4)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __68__HMDAccessoryBrowser__handleCurrentWiFiNetworkChangedNotification___block_invoke;
    v6[3] = &unk_27868A250;
    v6[4] = self;
    [v4 triggerPreferredNetworkUpdateWithCompletion:v6];
  }
}

void __68__HMDAccessoryBrowser__handleCurrentWiFiNetworkChangedNotification___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = HMFGetLogIdentifier();
    v8 = v7;
    v9 = @" not";
    if (!v3)
    {
      v9 = &stru_283CF9D50;
    }

    v11 = 138543618;
    v12 = v7;
    v13 = 2112;
    v14 = v9;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@WiFi network connection changed; Thread preferred network database%@ updated", &v11, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  v10 = *MEMORY[0x277D85DE8];
}

- (void)__handleProcessStateChange:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKeyedSubscript:@"processInfo"];

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

  v8 = [v7 bundleIdentifier];
  v9 = [v8 isEqual:*MEMORY[0x277CD0638]];

  if (v9)
  {
    v10 = [(HMDAccessoryBrowser *)self workQueue];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __50__HMDAccessoryBrowser___handleProcessStateChange___block_invoke;
    v11[3] = &unk_27868A750;
    v12 = v7;
    v13 = self;
    dispatch_async(v10, v11);
  }
}

unint64_t __50__HMDAccessoryBrowser___handleProcessStateChange___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) state];
  if (result <= 4 && ((1 << result) & 0x1A) != 0)
  {
    v4 = *(a1 + 40);

    return [v4 _cancelCurrentlyPairingAccessories:2501 linkType:0];
  }

  return result;
}

- (void)_cancelCurrentlyPairingAccessories:(int64_t)a3 linkType:(id)a4
{
  v75[1] = *MEMORY[0x277D85DE8];
  v58 = a4;
  v6 = [(HMDAccessoryBrowser *)self workQueue];
  dispatch_assert_queue_V2(v6);

  v49 = a3;
  v7 = [MEMORY[0x277CCA9B8] hmErrorWithCode:a3];
  v8 = MEMORY[0x277CCA9B8];
  v74 = *MEMORY[0x277CCA7E8];
  v75[0] = v7;
  v57 = v7;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v75 forKeys:&v74 count:1];
  v50 = [v8 hmErrorWithCode:79 userInfo:v9];

  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v10 = [(HMDAccessoryBrowser *)self currentlyPairingAccessories];
  v11 = [v10 copy];

  obj = v11;
  v56 = [v11 countByEnumeratingWithState:&v59 objects:v73 count:16];
  if (v56)
  {
    v55 = *v60;
    *&v12 = 138543874;
    v48 = v12;
    v52 = self;
    do
    {
      for (i = 0; i != v56; ++i)
      {
        if (*v60 != v55)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v59 + 1) + 8 * i);
        v15 = [(HMDAccessoryBrowser *)self _unpairedAccessoryMatchingPairingInfo:v14, v48];
        v16 = [HMDMatterAccessoryPairingEndContext hmdContextWithCancelledError:v57];
        if (v15)
        {
          if (-[HMDAccessoryBrowser doesLinkTypeNumber:matchLinkType:](self, v58, [v15 linkType]))
          {
            v17 = objc_autoreleasePoolPush();
            v18 = self;
            v19 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
            {
              v20 = HMFGetLogIdentifier();
              [MEMORY[0x277CCA9B8] hmStringFromErrorCode:v49];
              v21 = v54 = v17;
              v22 = [v15 name];
              v23 = [v15 identifier];
              *buf = 138544130;
              v64 = v20;
              v65 = 2112;
              v66 = v21;
              v67 = 2112;
              v68 = v22;
              v69 = 2112;
              v70 = v23;
              _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_INFO, "%{public}@%@ - sending addAccessory failure for accessory %@/%@", buf, 0x2Au);

              self = v52;
              v17 = v54;
            }

            objc_autoreleasePoolPop(v17);
            if ([v15 supportsCHIP])
            {
              v24 = v16;
            }

            else
            {
              v24 = 0;
            }

            [(HMDAccessoryBrowser *)v18 _cancelPairingWithAccessory:v15 error:v50 context:v24];
LABEL_18:
            v32 = [(HMDAccessoryBrowser *)self currentlyPairingAccessories];
            [v32 removeObject:v14];

            v33 = [v14 accessoryUUID];
            v34 = [(HMDAccessoryBrowser *)self _currentPairingProgressHandlerForAccessoryUUID:v33];

            if (v34)
            {
              v35 = [(HMDAccessoryBrowser *)self currentlyPairingProgressHandlers];
              [v35 removeObject:v34];
            }

            goto LABEL_24;
          }
        }

        else if (-[HMDAccessoryBrowser doesLinkTypeNumber:matchLinkType:](self, v58, [v14 linkType]))
        {
          v25 = objc_autoreleasePoolPush();
          v26 = self;
          v27 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
          {
            v28 = HMFGetLogIdentifier();
            v29 = [v14 accessoryName];
            v30 = [v14 accessoryUUID];
            *buf = v48;
            v64 = v28;
            v65 = 2112;
            v66 = v29;
            v67 = 2112;
            v68 = v30;
            _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_INFO, "%{public}@Removing pending pairing for accessory %@/%@", buf, 0x20u);

            self = v52;
          }

          objc_autoreleasePoolPop(v25);
          v31 = [v57 copy];
          [(HMDAccessoryBrowser *)v26 _removePairingInformation:v14 error:v31 context:v16];

          goto LABEL_18;
        }

        v36 = objc_autoreleasePoolPush();
        v37 = self;
        v38 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
        {
          v39 = HMFGetLogIdentifier();
          [v14 accessoryName];
          v40 = v51 = v36;
          v41 = [v14 accessoryUUID];
          v42 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v14, "linkType")}];
          *buf = 138544386;
          v64 = v39;
          v65 = 2112;
          v66 = v40;
          v67 = 2112;
          v68 = v41;
          v69 = 2112;
          v70 = v42;
          v71 = 2112;
          v72 = v58;
          _os_log_impl(&dword_229538000, v38, OS_LOG_TYPE_INFO, "%{public}@Not canceling pairing for accessory %@/%@ as link type %@ does not match stopped link type %@", buf, 0x34u);

          self = v52;
          v36 = v51;
        }

        objc_autoreleasePoolPop(v36);
LABEL_24:
      }

      v56 = [obj countByEnumeratingWithState:&v59 objects:v73 count:16];
    }

    while (v56);
  }

  if (!v58)
  {
    v43 = [(HMDAccessoryBrowser *)self currentlyPairingAccessories];
    [v43 removeAllObjects];

    v44 = [(HMDAccessoryBrowser *)self currentlyPairingProgressHandlers];
    [v44 removeAllObjects];
  }

  v45 = [(HMDAccessoryBrowser *)self getActiveWACSession];
  v46 = v45;
  if (v45)
  {
    [v45 cancelConfigurationWithCompletionHandler:&__block_literal_global_507];
  }

  v47 = *MEMORY[0x277D85DE8];
}

- (BOOL)doesLinkTypeNumber:(uint64_t)a3 matchLinkType:
{
  v5 = a2;
  v6 = v5;
  if (a1)
  {
    if (v5)
    {
      v7 = [v5 integerValue] == a3;
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_registerForNotifications
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 addObserver:self selector:sel___handleProcessStateChange_ name:HMDProcessMonitorProcessStateDidChangeNotification object:0];

  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 addObserver:self selector:sel_handleXPCConnectionInvalidated_ name:@"HMDXPCClientConnectionDidInvalidateNotification" object:0];

  v5 = [MEMORY[0x277CCAB98] defaultCenter];
  [v5 addObserver:self selector:sel__handleCurrentWiFiNetworkChangedNotification_ name:*MEMORY[0x277D0F768] object:0];
}

- (void)_registerForMessages
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    *buf = 138543362;
    v24 = v6;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Registering remote account message filter", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v7 = [HMDRemoteAccountMessageFilter alloc];
  v8 = [(HMDAccessoryBrowser *)v4 messageDestination];
  v9 = [(HMDRemoteAccountMessageFilter *)v7 initWithTarget:v8];

  v10 = [(HMDAccessoryBrowser *)v4 homeManager];
  v11 = [v10 msgFilterChain];
  [v11 addMessageFilter:v9];

  v12 = [(HMDAccessoryBrowser *)v4 messageDispatcher];
  v13 = [MEMORY[0x277D0F8E8] productInfo];
  v14 = [v13 productPlatform];

  if (v14 == 1)
  {
    v15 = 5;
  }

  else
  {
    v15 = 1;
  }

  v16 = [HMDXPCMessagePolicy policyWithEntitlements:v15];
  v22 = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v22 count:1];

  v18 = [HMDXPCMessagePolicy policyWithEntitlements:5];
  v21 = v18;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v21 count:1];

  [v12 registerForMessage:@"kFetchNewAccessoriesRequestKey" receiver:v4 policies:v17 selector:sel__handleRequestFetchNewAccessories_];
  [v12 registerForMessage:@"kSearchForNewAccessoriesRequestKey" receiver:v4 policies:v17 selector:sel__handleRequestSearchForNewAccessories_];
  [v12 registerForMessage:*MEMORY[0x277CD2358] receiver:v4 policies:v19 selector:sel__handleRequestFetchVendorMetadataVendorData_];
  [v12 registerForMessage:*MEMORY[0x277CD2350] receiver:v4 policies:v19 selector:sel__handleRequestFetchVendorMetadataProductData_];
  [v12 registerForMessage:*MEMORY[0x277CD2360] receiver:v4 policies:v19 selector:sel__handleRequestFetchVendorModelEntryForManufacturer_];
  [v12 registerForMessage:*MEMORY[0x277CD2368] receiver:v4 policies:v19 selector:sel__handleRequestFetchVendorModelEntryForProductData_];

  v20 = *MEMORY[0x277D85DE8];
}

- (void)setUnpairedAccessoryManagerDelegate:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  objc_storeWeak(&self->_unpairedAccessoryManagerDelegate, v4);

  os_unfair_lock_unlock(&self->_lock);
}

- (HMDAccessoryBrowserUnpairedAccessoryManagerDelegate)unpairedAccessoryManagerDelegate
{
  os_unfair_lock_lock_with_options();
  WeakRetained = objc_loadWeakRetained(&self->_unpairedAccessoryManagerDelegate);
  os_unfair_lock_unlock(&self->_lock);

  return WeakRetained;
}

- (void)setManagerDelegate:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  objc_storeWeak(&self->_managerDelegate, v4);

  os_unfair_lock_unlock(&self->_lock);
}

- (void)resurrectAccessoryServer:(id)a3
{
  v4 = a3;
  v5 = [(HMDAccessoryBrowser *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__HMDAccessoryBrowser_resurrectAccessoryServer___block_invoke;
  v7[3] = &unk_27868A750;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)tombstoneAccessoryServer:(id)a3
{
  v4 = a3;
  v5 = [(HMDAccessoryBrowser *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__HMDAccessoryBrowser_tombstoneAccessoryServer___block_invoke;
  v7[3] = &unk_27868A750;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)discoverAccessories:(id)a3
{
  v4 = a3;
  v5 = [(HMDAccessoryBrowser *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __43__HMDAccessoryBrowser_discoverAccessories___block_invoke;
  v7[3] = &unk_27868A750;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)handleConnectionUpdateWithBonjourDeviceInfo:(id)a3 socketInfo:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(HMDAccessoryBrowser *)self ipAccessoryServerBrowser];
  [v8 handleConnectionUpdateWithBonjourDeviceInfo:v7 socketInfo:v6];
}

- (void)restartBrowsers
{
  v3 = [(HMDAccessoryBrowser *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__HMDAccessoryBrowser_restartBrowsers__block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)_restartBrowsers
{
  v37 = *MEMORY[0x277D85DE8];
  v3 = [(HMDAccessoryBrowser *)self accessoryServerBrowsers];
  v4 = [v3 copy];

  v5 = [(HMDAccessoryBrowser *)self accessoryServerBrowsers];
  v6 = [v5 count];

  if (v6)
  {
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v26 = v4;
    obj = v4;
    v7 = [obj countByEnumeratingWithState:&v28 objects:v36 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v29;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v29 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v28 + 1) + 8 * i);
          v12 = [v11 recommendBrowserReset];
          v13 = objc_autoreleasePoolPush();
          v14 = self;
          v15 = HMFGetOSLogHandle();
          v16 = os_log_type_enabled(v15, OS_LOG_TYPE_INFO);
          if (v12)
          {
            if (v16)
            {
              v17 = HMFGetLogIdentifier();
              v18 = [v11 description];
              *buf = 138543618;
              v33 = v17;
              v34 = 2112;
              v35 = v18;
              _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@Restarting browser %@", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v13);
            [v11 stopDiscoveringAccessoryServers];
            [v11 startDiscoveringAccessoryServers];
          }

          else
          {
            if (v16)
            {
              v19 = HMFGetLogIdentifier();
              v20 = [v11 description];
              *buf = 138543618;
              v33 = v19;
              v34 = 2112;
              v35 = v20;
              _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@Skipping Restarting browser %@", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v13);
          }
        }

        v8 = [obj countByEnumeratingWithState:&v28 objects:v36 count:16];
      }

      while (v8);
    }

    v4 = v26;
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
      v33 = v24;
      _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_ERROR, "%{public}@No accessory browsers yet --- reset request ignored", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v21);
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)_startDiscoveringAccessoriesNeedingReprovisioning
{
  v22 = *MEMORY[0x277D85DE8];
  if ([(HMDAccessoryBrowser *)self isBrowsingAllowed])
  {
    v3 = [(HMDAccessoryBrowser *)self identifierOfAccessoryBeingReprovisioned];

    if (v3)
    {
      v4 = objc_autoreleasePoolPush();
      v5 = self;
      v6 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = HMFGetLogIdentifier();
        v20 = 138543362;
        v21 = v7;
        v8 = "%{public}@Ignoring request for start discovering accessories need reprovision since provisioing is already in progress";
LABEL_7:
        _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, v8, &v20, 0xCu);

        goto LABEL_8;
      }

      goto LABEL_8;
    }

    v10 = [(HMDAccessoryBrowser *)self ipAccessoryServerBrowser];
    if (v10)
    {
      v11 = [(HMDAccessoryBrowser *)self identifierOfAccessoryBeingReprovisioned];

      v12 = objc_autoreleasePoolPush();
      if (v11)
      {
        v13 = self;
        v14 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          v15 = HMFGetLogIdentifier();
          v20 = 138543362;
          v21 = v15;
          v16 = "%{public}@Unable to start discovering accessories need reprovision since provisioing is in progress";
LABEL_16:
          _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_ERROR, v16, &v20, 0xCu);
        }
      }

      else
      {
        v17 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v18 = HMFGetLogIdentifier();
          v20 = 138543362;
          v21 = v18;
          _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@Start discovering accessories need reprovision", &v20, 0xCu);
        }

        objc_autoreleasePoolPop(v12);
        [v10 startDiscoveringWACAccessoryServers];
        v19 = [(HMDAccessoryBrowser *)self stopBrowsingAccessoriesNeedingReprovisioningTimer];
        [v19 resume];

        v12 = objc_autoreleasePoolPush();
        v13 = HMFGetOSLogHandle();
        if (!os_log_type_enabled(&v13->super.super, OS_LOG_TYPE_INFO))
        {
          goto LABEL_22;
        }

        v14 = HMFGetLogIdentifier();
        v20 = 138543362;
        v21 = v14;
        _os_log_impl(&dword_229538000, &v13->super.super, OS_LOG_TYPE_INFO, "%{public}@Started the stop browsing accessories needing reprovisioning timer", &v20, 0xCu);
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
        v20 = 138543362;
        v21 = v15;
        v16 = "%{public}@Unable to start discovering accessories need reprovision without a IP accessory server browser";
        goto LABEL_16;
      }
    }

LABEL_22:
    objc_autoreleasePoolPop(v12);

    goto LABEL_9;
  }

  v4 = objc_autoreleasePoolPush();
  v5 = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v20 = 138543362;
    v21 = v7;
    v8 = "%{public}@Ignoring request for start discovering accessories need reprovision since browsing is not allowed";
    goto LABEL_7;
  }

LABEL_8:

  objc_autoreleasePoolPop(v4);
LABEL_9:
  v9 = *MEMORY[0x277D85DE8];
}

- (void)startDiscoveringAccessoriesNeedingReprovisioning
{
  v3 = [(HMDAccessoryBrowser *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71__HMDAccessoryBrowser_startDiscoveringAccessoriesNeedingReprovisioning__block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)_stopDiscoveryForAccessoryServerBrowser:(id)a3
{
  v8 = a3;
  [v8 stopDiscoveringAccessoryServers];
  v4 = [(HMDAccessoryBrowser *)self btleAccessoryServerBrowser];
  v5 = [v8 isEqual:v4];

  if (v5)
  {
    v6 = [(HMDAccessoryBrowser *)self chipAccessoryServerBrowser];
    [v6 stopBluetoothScan];
  }

  os_unfair_lock_lock_with_options();
  v7 = [(HMDAccessoryBrowser *)self discoveringAccessoryServerBrowsers];
  [v7 removeObject:v8];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_stopDiscoveringAccessoriesWithError:(id)a3
{
  v5 = a3;
  v4 = [(HMDAccessoryBrowser *)self workQueue];
  dispatch_assert_queue_V2(v4);

  [(HMDAccessoryBrowser *)self _stopDiscoveringAccessoriesWithLinkType:0 force:0 error:v5];
}

- (void)_stopDiscoveringAccessoriesWithLinkType:(id)a3 force:(BOOL)a4 error:(id)a5
{
  v37 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = [(HMDAccessoryBrowser *)self workQueue];
  dispatch_assert_queue_V2(v10);

  if (v8)
  {
    if (![(HMDAccessoryBrowser *)self doesLinkTypeNumber:v8 matchLinkType:1])
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  [(HMDAccessoryBrowser *)self _stopDiscoveringMediaAccessories];
  if (self)
  {
LABEL_3:
    v11 = [(HMDAccessoryBrowser *)self ipAccessoryServerBrowser];
    [v11 stopDiscoveringWACAccessoryServersWithInvalidation:1];
  }

LABEL_4:
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v12 = [(HMDAccessoryBrowser *)self accessoryServerBrowsers];
  v13 = [v12 countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v32;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v32 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v31 + 1) + 8 * i);
        if (-[HMDAccessoryBrowser doesLinkTypeNumber:matchLinkType:](self, v8, [v17 linkType]) && (a4 || !-[HMDAccessoryBrowser areThereAnyPairedAccessories](self, "areThereAnyPairedAccessories") || objc_msgSend(v17, "linkType") != 1))
        {
          [(HMDAccessoryBrowser *)self _stopDiscoveryForAccessoryServerBrowser:v17];
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v14);
  }

  if (v9)
  {
    v18 = [v9 code];
  }

  else
  {
    v18 = 2504;
  }

  [(HMDAccessoryBrowser *)self _cancelCurrentlyPairingAccessories:v18 linkType:v8];
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v19 = [(HMDAccessoryBrowser *)self unpairedHAPAccessories];
  v20 = [v19 copy];

  v21 = [v20 countByEnumeratingWithState:&v27 objects:v35 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v28;
    do
    {
      for (j = 0; j != v22; ++j)
      {
        if (*v28 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = *(*(&v27 + 1) + 8 * j);
        if (([v25 hasIPLink] & 1) == 0)
        {
          [(HMDAccessoryBrowser *)self removeUnpairedHAPAccessory:v25 completion:&__block_literal_global_483_220824];
        }
      }

      v22 = [v20 countByEnumeratingWithState:&v27 objects:v35 count:16];
    }

    while (v22);
  }

  [(HMDAccessoryBrowser *)self __resetBrowsingConnections];
  v26 = *MEMORY[0x277D85DE8];
}

- (void)_stopDiscoveringMediaAccessories
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [(HMDAccessoryBrowser *)self mediaBrowser];
  [v3 stopDiscoveringUnassociatedAccessories];

  v4 = [(HMDAccessoryBrowser *)self wacBrowser];
  [v4 stopBrowsingForAccessories];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [(HMDAccessoryBrowser *)self unassociatedMediaAccessories];
  v6 = [v5 copy];

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

        [(HMDAccessoryBrowser *)self removeUnassociatedMediaAccessory:*(*(&v12 + 1) + 8 * v10++) completion:&__block_literal_global_481_220826];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_startDiscoveringMediaAccessories
{
  v3 = [(HMDAccessoryBrowser *)self mediaBrowser];
  [v3 startDiscoveringUnassociatedAccessories];

  v5 = [(HMDAccessoryBrowser *)self wacBrowser];
  v4 = [(HMDAccessoryBrowser *)self ipAccessoryServerBrowser];
  [v5 startBrowsingForAirPlayWACAccessoriesWithBrowser:v4];
}

- (void)_startDiscoveryForAccessoryServerBrowser:(id)a3
{
  v8 = a3;
  [v8 startDiscoveringAccessoryServers];
  v4 = [(HMDAccessoryBrowser *)self btleAccessoryServerBrowser];
  v5 = [v8 isEqual:v4];

  if (v5)
  {
    v6 = [(HMDAccessoryBrowser *)self chipAccessoryServerBrowser];
    [v6 startBluetoothScan];
  }

  os_unfair_lock_lock_with_options();
  v7 = [(HMDAccessoryBrowser *)self discoveringAccessoryServerBrowsers];
  [v7 addObject:v8];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_startDiscoveringAccessoriesWithLinkType:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(HMDAccessoryBrowser *)self isBrowsingAllowed])
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v5 = [(HMDAccessoryBrowser *)self accessoryServerBrowsers];
    v6 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v20;
      do
      {
        v9 = 0;
        do
        {
          if (*v20 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v19 + 1) + 8 * v9);
          if (!v4 || (v11 = [*(*(&v19 + 1) + 8 * v9) linkType], v11 == objc_msgSend(v4, "integerValue")))
          {
            [(HMDAccessoryBrowser *)self _startDiscoveryForAccessoryServerBrowser:v10];
          }

          ++v9;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v7);
    }

    if ([(HMDAccessoryBrowser *)self __isAccessoryBrowsingRequested])
    {
      if (v4 && [v4 integerValue] != 1)
      {
        [(HMDAccessoryBrowser *)self __isMediaAccessoryBrowsingRequested];
        goto LABEL_22;
      }

      v12 = [(HMDAccessoryBrowser *)self ipAccessoryServerBrowser];
      [v12 startDiscoveringWACAccessoryServers];
    }

    v13 = [(HMDAccessoryBrowser *)self __isMediaAccessoryBrowsingRequested];
    if (!v4 && v13)
    {
      [(HMDAccessoryBrowser *)self _startDiscoveringMediaAccessories];
    }
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    v15 = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = HMFGetLogIdentifier();
      *buf = 138543362;
      v25 = v17;
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@Ignoring request to start discovering accessories because browsing is not allowed", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v14);
  }

LABEL_22:

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_startDiscoveringPairedAccessories:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(HMDAccessoryBrowser *)self areThereAnyPairedAccessories])
  {
    if ([(HMDAccessoryBrowser *)self isBrowsingAllowed])
    {
      if (!v4 || [v4 integerValue] == 1)
      {
        v5 = [(HMDAccessoryBrowser *)self ipAccessoryServerBrowser];
        [(HMDAccessoryBrowser *)self _startDiscoveryForAccessoryServerBrowser:v5];

        v6 = [(HMDAccessoryBrowser *)self mediaBrowser];
        v7 = [(HMDAccessoryBrowser *)self identifiersOfAssociatedMediaAccessories];
        [v6 updateSessionsForAccessories:v7];

        v8 = [(HMDAccessoryBrowser *)self demoAccessoryServerBrowser];

        if (v8)
        {
          v9 = [(HMDAccessoryBrowser *)self demoAccessoryServerBrowser];
          [(HMDAccessoryBrowser *)self _startDiscoveryForAccessoryServerBrowser:v9];
        }

        v10 = [(HMDAccessoryBrowser *)self hap2AccessoryServerBrowser];

        if (v10)
        {
          v11 = [(HMDAccessoryBrowser *)self hap2AccessoryServerBrowser];
          [(HMDAccessoryBrowser *)self _startDiscoveryForAccessoryServerBrowser:v11];
        }

        v12 = [(HMDAccessoryBrowser *)self chipAccessoryServerBrowser];

        if (v12)
        {
          v13 = [(HMDAccessoryBrowser *)self chipAccessoryServerBrowser];
          [(HMDAccessoryBrowser *)self _startDiscoveryForAccessoryServerBrowser:v13];
        }
      }

      if ([(HMDAccessoryBrowser *)self areThereAnyPairedBTLEAccessories]|| [(HMDAccessoryBrowser *)self areThereAnyPairedUnknownLinkTypeAccessories])
      {
        v14 = objc_autoreleasePoolPush();
        v15 = self;
        v16 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v17 = HMFGetLogIdentifier();
          v23 = 138543362;
          v24 = v17;
          _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@Have paired BTLE accessories, starting reachability scan", &v23, 0xCu);
        }

        objc_autoreleasePoolPop(v14);
        [(HMDAccessoryBrowser *)v15 _btleAccessoryReachabilityProbeTimer:1];
      }
    }

    else
    {
      v18 = objc_autoreleasePoolPush();
      v19 = self;
      v20 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v21 = HMFGetLogIdentifier();
        v23 = 138543362;
        v24 = v21;
        _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_INFO, "%{public}@Ignoring request for start discovering paired accessories", &v23, 0xCu);
      }

      objc_autoreleasePoolPop(v18);
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)currentlyFoundHAPAccessoryServerWithIdentifier:(id)a3 linkType:(int64_t)a4 completion:(id)a5
{
  v27 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  if (v9)
  {
    if (a4 == 1)
    {
      v10 = [(HMDAccessoryBrowser *)self ipAccessoryServerBrowser];
    }

    else
    {
      if (a4 != 2)
      {
        v12 = objc_autoreleasePoolPush();
        v13 = self;
        v14 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          v15 = HMFGetLogIdentifier();
          if (a4 > 2)
          {
            v16 = @"Undefined";
          }

          else
          {
            v16 = off_2786768F0[a4];
          }

          v17 = v16;
          *buf = 138543874;
          v22 = v15;
          v23 = 2112;
          v24 = v8;
          v25 = 2112;
          v26 = v17;
          _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_ERROR, "%{public}@Unable to retrieve server for identifier %@ for link type: %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v12);
        goto LABEL_14;
      }

      v10 = [(HMDAccessoryBrowser *)self btleAccessoryServerBrowser];
    }

    v11 = v10;
    if (v10)
    {
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __90__HMDAccessoryBrowser_currentlyFoundHAPAccessoryServerWithIdentifier_linkType_completion___block_invoke;
      v19[3] = &unk_278681368;
      v20 = v9;
      [v11 matchAccessoryServerWithSetupID:0 serverIdentifier:v8 completionHandler:v19];

      goto LABEL_15;
    }

LABEL_14:
    (*(v9 + 2))(v9, 0);
  }

LABEL_15:

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_discoverAccessoryServer:(id)a3 linkType:(int64_t)a4 errorHandler:(id)a5
{
  v40 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  if (!v8)
  {
    v17 = objc_autoreleasePoolPush();
    v18 = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      if (a4 > 2)
      {
        v21 = @"Undefined";
      }

      else
      {
        v21 = off_2786768F0[a4];
      }

      v31 = v21;
      v34 = 138543618;
      v35 = v20;
      v36 = 2112;
      v37 = v31;
      _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_ERROR, "%{public}@Unable to discover accessory for link type: %@ due to missing server identifier", &v34, 0x16u);
    }

LABEL_19:

    objc_autoreleasePoolPop(v17);
    v25 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
    if (v9)
    {
LABEL_20:
      v9[2](v9, v25);
      goto LABEL_21;
    }

    goto LABEL_21;
  }

  if (!a4)
  {
    v26 = [(HMDAccessoryBrowser *)self btleAccessoryServerBrowser];
    [v26 discoverAccessoryServerWithIdentifier:v8];

    v27 = [(HMDAccessoryBrowser *)self ipAccessoryServerBrowser];
    [v27 discoverAccessoryServerWithIdentifier:v8];

    v28 = [(HMDAccessoryBrowser *)self demoAccessoryServerBrowser];
    goto LABEL_24;
  }

  if (a4 != 1)
  {
    if (a4 == 2)
    {
      v10 = [(HMDAccessoryBrowser *)self discoveringBLEAccessoryServerIdentifiers];
      v11 = [v10 containsObject:v8];

      if (v11)
      {
        v12 = objc_autoreleasePoolPush();
        v13 = self;
        v14 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          v15 = HMFGetLogIdentifier();
          v16 = @"BTLE";
          v34 = 138543874;
          v35 = v15;
          v36 = 2112;
          v37 = v8;
          v38 = 2112;
          v39 = @"BTLE";
          _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_ERROR, "%{public}@Retrieval already in progress for accessory with server %@/%@", &v34, 0x20u);
        }

        objc_autoreleasePoolPop(v12);
LABEL_25:
        v25 = 0;
        if (!v9)
        {
          goto LABEL_21;
        }

        goto LABEL_20;
      }

      v28 = [(HMDAccessoryBrowser *)self btleAccessoryServerBrowser];
LABEL_24:
      v33 = v28;
      [v28 discoverAccessoryServerWithIdentifier:v8];

      goto LABEL_25;
    }

    v17 = objc_autoreleasePoolPush();
    v18 = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v29 = HMFGetLogIdentifier();
      v30 = @"Undefined";
      v34 = 138543874;
      v35 = v29;
      v36 = 2112;
      v37 = v8;
      v38 = 2112;
      v39 = @"Undefined";
      _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_ERROR, "%{public}@Unable to retrieve server for accessory with identifier %@, due to unknown link type: %@", &v34, 0x20u);
    }

    goto LABEL_19;
  }

  v22 = [(HMDAccessoryBrowser *)self pairedHMDHAPAccessoryWithAccessoryServerIdentifier:v8];
  v23 = [v22 isDemoAccessory];

  if (!v23)
  {
    v28 = [(HMDAccessoryBrowser *)self ipAccessoryServerBrowser];
    goto LABEL_24;
  }

  v24 = [(HMDAccessoryBrowser *)self demoAccessoryServerBrowser];
  [v24 discoverAccessoryServerWithIdentifier:v8];

  v25 = 0;
LABEL_21:

  v32 = *MEMORY[0x277D85DE8];
}

- (void)timerDidFire:(id)a3
{
  v56 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDAccessoryBrowser *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(HMDAccessoryBrowser *)self stopReprovisioningTimer];

  if (v6 == v4)
  {
    [(HMDAccessoryBrowser *)self _stopReprovisioningTimerHandler];
    goto LABEL_39;
  }

  v7 = [(HMDAccessoryBrowser *)self stopBrowsingAccessoriesNeedingReprovisioningTimer];

  if (v7 == v4)
  {
    v19 = [(HMDAccessoryBrowser *)self ipAccessoryServerBrowser];
    [v19 stopDiscoveringWACAccessoryServersWithInvalidation:1];

    goto LABEL_39;
  }

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v8 = [(HMDAccessoryBrowser *)self currentlyPairingAccessories];
  v9 = [v8 countByEnumeratingWithState:&v49 objects:v55 count:16];
  if (!v9)
  {
    goto LABEL_38;
  }

  v10 = *v50;
  while (2)
  {
    for (i = 0; i != v9; ++i)
    {
      if (*v50 != v10)
      {
        objc_enumerationMutation(v8);
      }

      v12 = *(*(&v49 + 1) + 8 * i);
      v13 = [v12 pairingInterruptionTimer];
      v14 = v13 == v4;

      if (v14)
      {
        v35 = [(HMDAccessoryBrowser *)self _unpairedAccessoryMatchingPairingInfo:v12];
        v20 = [MEMORY[0x277CCA9B8] hmErrorWithCode:4];
        [(HMDAccessoryBrowser *)self _handlePairingInterruptedTimeout:v35 error:v20];
LABEL_37:

        goto LABEL_38;
      }

      v15 = [v12 reconfirmTimer];
      v16 = v15 == v4;

      if (v16)
      {
        v35 = [(HMDAccessoryBrowser *)self _unpairedAccessoryMatchingPairingInfo:v12];
        v47 = 0u;
        v48 = 0u;
        v45 = 0u;
        v46 = 0u;
        v20 = [v35 accessoryServers];
        v21 = [v20 countByEnumeratingWithState:&v45 objects:v54 count:16];
        if (v21)
        {
          v22 = *v46;
          while (2)
          {
            for (j = 0; j != v21; ++j)
            {
              if (*v46 != v22)
              {
                objc_enumerationMutation(v20);
              }

              v24 = *(*(&v45 + 1) + 8 * j);
              v25 = [v24 linkType];
              if (v25 == [v12 linkType])
              {
                v31 = [v12 pairingActivity];
                v41[0] = MEMORY[0x277D85DD0];
                v41[1] = 3221225472;
                v41[2] = __36__HMDAccessoryBrowser_timerDidFire___block_invoke;
                v41[3] = &unk_27868A010;
                v32 = v31;
                v42 = v32;
                v43 = v12;
                v44 = v24;
                __36__HMDAccessoryBrowser_timerDidFire___block_invoke(v41);
                [v32 begin];
                v40 = v32;
                v33 = [v12 pairingRequest];
                [v24 startPairingWithRequest:v33];

                __HMFActivityScopeLeave();
                goto LABEL_37;
              }
            }

            v21 = [v20 countByEnumeratingWithState:&v45 objects:v54 count:16];
            if (v21)
            {
              continue;
            }

            break;
          }
        }

        goto LABEL_37;
      }

      v17 = [v12 pairingRetryTimer];
      v18 = v17 == v4;

      if (v18)
      {
        v35 = [(HMDAccessoryBrowser *)self _unpairedAccessoryMatchingPairingInfo:v12];
        v38 = 0u;
        v39 = 0u;
        v36 = 0u;
        v37 = 0u;
        v20 = [v35 accessoryServers];
        v26 = [v20 countByEnumeratingWithState:&v36 objects:v53 count:16];
        if (v26)
        {
          v27 = *v37;
          while (2)
          {
            for (k = 0; k != v26; ++k)
            {
              if (*v37 != v27)
              {
                objc_enumerationMutation(v20);
              }

              v29 = *(*(&v36 + 1) + 8 * k);
              v30 = [v29 linkType];
              if (v30 == [v12 linkType])
              {
                [(HMDAccessoryBrowser *)self _promptForPairingPasswordForServer:v29 reason:@"HMSetupCodeProviderReasontTimeoutRetry"];
                goto LABEL_37;
              }
            }

            v26 = [v20 countByEnumeratingWithState:&v36 objects:v53 count:16];
            if (v26)
            {
              continue;
            }

            break;
          }
        }

        goto LABEL_37;
      }
    }

    v9 = [v8 countByEnumeratingWithState:&v49 objects:v55 count:16];
    if (v9)
    {
      continue;
    }

    break;
  }

LABEL_38:

LABEL_39:
  v34 = *MEMORY[0x277D85DE8];
}

void *__36__HMDAccessoryBrowser_timerDidFire___block_invoke(void *result)
{
  v1 = result[4];
  if (v1)
  {
    v2 = result;
    v3 = result[5];
    v4 = v1;
    [v3 accessoryUUID];

    v5 = [v2[5] setupID];
    v6 = HMFBooleanToString();

    [v2[5] wacAccessory];
    v7 = HMFBooleanToString();
    [v2[5] legacyWAC];
    v8 = HMFBooleanToString();
    [v2[5] linkType];
    v9 = HAPLinkTypeDescription();
    [v2[6] communicationProtocol];

    return HAPCommunicationProtocolDescription();
  }

  return result;
}

- (void)_stopReprovisioningTimerHandler
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = [(HMDAccessoryBrowser *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = objc_autoreleasePoolPush();
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v19 = 138543362;
    v20 = v6;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@[Accessory Browser] Stop reprovisioning timer fired", &v19, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  v7 = [(HMDAccessoryBrowser *)self currentlyPairingAccessories];
  v8 = [v7 count];

  if (!v8)
  {
    v9 = objc_autoreleasePoolPush();
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v19 = 138543362;
      v20 = v11;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@[Accessory Browser] Stopping browsing for WAC servers", &v19, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
    v12 = [(HMDAccessoryBrowser *)self ipAccessoryServerBrowser];
    [v12 stopDiscoveringWACAccessoryServersWithInvalidation:1];
  }

  v13 = [MEMORY[0x277CCA9B8] hmErrorWithCode:8];
  v14 = [(HMDAccessoryBrowser *)self identifierOfAccessoryBeingReprovisioned];
  [(HMDAccessoryBrowser *)self _notifyDelegateOfWACCompletionForAccessoryServerWithIdentifier:v14 error:v13];

  v15 = objc_autoreleasePoolPush();
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = HMFGetLogIdentifier();
    v19 = 138543362;
    v20 = v17;
    _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@[Accessory Browser] Clean up reprovisioning accessory", &v19, 0xCu);
  }

  objc_autoreleasePoolPop(v15);
  [(HMDAccessoryBrowser *)self setIdentifierOfAccessoryBeingReprovisioned:0];
  [(HMDAccessoryBrowser *)self setWiFiPSKForAccessoryReprovisioning:0];

  v18 = *MEMORY[0x277D85DE8];
}

- (void)evaluateAccessoryDiscoveryState
{
  if (isWatch())
  {
    v3 = [(HMDAccessoryBrowser *)self workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __54__HMDAccessoryBrowser_evaluateAccessoryDiscoveryState__block_invoke;
    block[3] = &unk_27868A728;
    block[4] = self;
    dispatch_async(v3, block);
  }
}

- (void)_stopBtleAccessoryReachabilityProbeTimer
{
  v12 = *MEMORY[0x277D85DE8];
  if (isBTLECapableDevice())
  {
    v3 = [(HMDAccessoryBrowser *)self reachabilityTimerForBTLE];

    if (v3)
    {
      v4 = objc_autoreleasePoolPush();
      v5 = self;
      v6 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = HMFGetLogIdentifier();
        v10 = 138543362;
        v11 = v7;
        _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Suspending the BTLE reachability probe timer", &v10, 0xCu);
      }

      objc_autoreleasePoolPop(v4);
      v8 = [(HMDAccessoryBrowser *)v5 reachabilityTimerForBTLE];
      dispatch_source_cancel(v8);

      [(HMDAccessoryBrowser *)v5 setReachabilityTimerForBTLE:0];
    }

    [(HMDAccessoryBrowser *)self _notifyDelegateOfReachabilityChangeChange:0 forBTLEAccessories:0];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_btleAccessoryReachabilityProbeTimer:(BOOL)a3
{
  v3 = a3;
  v37 = *MEMORY[0x277D85DE8];
  if (isBTLECapableDevice())
  {
    if ([(HMDAccessoryBrowser *)self isBrowsingAllowed])
    {
      v5 = [(HMDAccessoryBrowser *)self reachabilityTimerForBTLE];

      if (v5)
      {
        v6 = [(HMDAccessoryBrowser *)self reachabilityTimerForBTLE];
        dispatch_source_cancel(v6);

        [(HMDAccessoryBrowser *)self setReachabilityTimerForBTLE:0];
      }

      v7 = [(HMDAccessoryBrowser *)self workQueue];
      v8 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v7);
      [(HMDAccessoryBrowser *)self setReachabilityTimerForBTLE:v8];

      v9 = btleReachabilityLeewayNanoseconds;
      v10 = btleReachabilityTimerNanoseconds;
      if (v3)
      {
        v11 = 0;
      }

      else
      {
        v11 = btleReachabilityTimerNanoseconds;
      }

      v12 = dispatch_time(0, v11);
      v13 = [(HMDAccessoryBrowser *)self homeManager];
      v14 = [v13 homes];
      v15 = [v14 na_firstObjectPassingTest:&__block_literal_global_470];

      if (v15)
      {
        v10 = btleReachabilityTimerNanoseconds / btleReachabilityProbeReduceFactor;
        if (!v3)
        {
          v12 = dispatch_time(0, btleReachabilityTimerNanoseconds / btleReachabilityProbeReduceFactor);
        }

        v16 = objc_autoreleasePoolPush();
        v17 = self;
        v18 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          v19 = HMFGetLogIdentifier();
          v20 = [v15 shortDescription];
          *buf = 138543874;
          v32 = v19;
          v33 = 2112;
          v34 = v20;
          v35 = 2048;
          v36 = v10 / 0x3B9ACA00;
          _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_DEBUG, "%{public}@In home: %@ location probing reachability every %llu sec", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v16);
      }

      isWatch();
      if ([(HMDAccessoryBrowser *)self unitTestBTLEReachabilityInterval])
      {
        v10 = [(HMDAccessoryBrowser *)self unitTestBTLEReachabilityInterval];
        v9 = 0;
      }

      v21 = [(HMDAccessoryBrowser *)self reachabilityTimerForBTLE];
      dispatch_source_set_timer(v21, v12, v10, v9);

      objc_initWeak(buf, self);
      v22 = [(HMDAccessoryBrowser *)self reachabilityTimerForBTLE];
      handler[0] = MEMORY[0x277D85DD0];
      handler[1] = 3221225472;
      handler[2] = __60__HMDAccessoryBrowser__btleAccessoryReachabilityProbeTimer___block_invoke_471;
      handler[3] = &unk_278686B80;
      objc_copyWeak(&v30, buf);
      dispatch_source_set_event_handler(v22, handler);

      v23 = [(HMDAccessoryBrowser *)self reachabilityTimerForBTLE];
      dispatch_resume(v23);

      objc_destroyWeak(&v30);
      objc_destroyWeak(buf);
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
        v32 = v27;
        _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_INFO, "%{public}@Ignoring request to start BTLE reachability timer", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v24);
    }
  }

  v28 = *MEMORY[0x277D85DE8];
}

void __60__HMDAccessoryBrowser__btleAccessoryReachabilityProbeTimer___block_invoke_471(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained identifiersOfPairedBTLEAccessories];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __60__HMDAccessoryBrowser__btleAccessoryReachabilityProbeTimer___block_invoke_2;
  v21[3] = &unk_278686D38;
  v21[4] = WeakRetained;
  v4 = [v3 na_map:v21];

  if ([WeakRetained areThereAnyPairedUnknownLinkTypeAccessories])
  {
    v5 = [WeakRetained identifiersOfPairedUnknownLinkTypeAccessories];
    v6 = [v4 arrayByAddingObjectsFromArray:v5];

    v4 = v6;
  }

  if (([WeakRetained active] & 1) == 0)
  {

    v4 = 0;
  }

  v7 = [WeakRetained btleAccessoryServerBrowser];
  if (v7)
  {
    v8 = [v4 count] == 0;

    if (!v8)
    {
      v16 = MEMORY[0x277D85DD0];
      v17 = 3221225472;
      v18 = __60__HMDAccessoryBrowser__btleAccessoryReachabilityProbeTimer___block_invoke_3;
      v19 = &unk_278681340;
      objc_copyWeak(&v20, (a1 + 32));
      v9 = _Block_copy(&v16);
      v10 = objc_autoreleasePoolPush();
      v11 = WeakRetained;
      v12 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = HMFGetLogIdentifier();
        *buf = 138543362;
        v23 = v13;
        _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@BTLE reachability probe timer fired.", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v10);
      v14 = [v11 btleAccessoryServerBrowser];
      [v14 probeReachabilityForAccessoryServersWithIdentifiers:v4 forceScan:0 withCompletion:v9];

      objc_destroyWeak(&v20);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

id __60__HMDAccessoryBrowser__btleAccessoryReachabilityProbeTimer___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) pairedAccessoryInformationWithIdentifier:v3];
  v5 = [v4 delegate];

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

  if ([v7 isCurrentDeviceAvailableResident])
  {
    v8 = v3;
    goto LABEL_12;
  }

  if (!v7)
  {
    goto LABEL_11;
  }

  v9 = +[HMDDeviceCapabilities deviceCapabilities];
  v10 = [v9 isResidentCapable];

  if (v10)
  {
    goto LABEL_11;
  }

  v11 = [v7 hapAccessoryWithIdentifier:v3 instanceID:0];
  v12 = v11;
  if (!v11 || ([v11 reachableTransports] & 9) != 0)
  {

LABEL_11:
    v8 = 0;
    goto LABEL_12;
  }

  v8 = v3;

LABEL_12:

  return v8;
}

void __60__HMDAccessoryBrowser__btleAccessoryReachabilityProbeTimer___block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _notifyDelegateOfReachabilityChangeChange:a3 forBTLEAccessories:v5];
}

uint64_t __60__HMDAccessoryBrowser__btleAccessoryReachabilityProbeTimer___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 homeLocation] == 1 || (objc_msgSend(v2, "isAnyBTLEAccessoryReachable") & 1) != 0)
  {
    v3 = 1;
  }

  else
  {
    v3 = [v2 isCurrentDeviceAvailableResident];
  }

  return v3;
}

- (void)cancelPairingWithAccessory:(id)a3 error:(id)a4 context:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(HMDAccessoryBrowser *)self workQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __64__HMDAccessoryBrowser_cancelPairingWithAccessory_error_context___block_invoke;
  v15[3] = &unk_2786891E0;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(v11, v15);
}

void __64__HMDAccessoryBrowser_cancelPairingWithAccessory_error_context___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _cancelPairingWithAccessory:*(a1 + 40) error:*(a1 + 48) context:*(a1 + 56)];
  v7 = [*(a1 + 32) _pairingInformationForUnpairedAccessory:*(a1 + 40)];
  if (v7)
  {
    v2 = [*(a1 + 32) currentlyPairingAccessories];
    [v2 removeObject:v7];
  }

  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) uuid];
  v5 = [v3 _currentPairingProgressHandlerForAccessoryUUID:v4];

  if (v5)
  {
    v6 = [*(a1 + 32) currentlyPairingProgressHandlers];
    [v6 removeObject:v5];
  }
}

- (void)handleSetupCodeAvailable:(id)a3
{
  v4 = a3;
  v5 = [(HMDAccessoryBrowser *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__HMDAccessoryBrowser_handleSetupCodeAvailable___block_invoke;
  v7[3] = &unk_27868A750;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)didReceiveUserConsentResponseForSetupAccessoryDetail:(id)a3 consent:(BOOL)a4
{
  v6 = a3;
  v7 = [(HMDAccessoryBrowser *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __84__HMDAccessoryBrowser_didReceiveUserConsentResponseForSetupAccessoryDetail_consent___block_invoke;
  block[3] = &unk_278688BD0;
  block[4] = self;
  v10 = v6;
  v11 = a4;
  v8 = v6;
  dispatch_async(v7, block);
}

void __84__HMDAccessoryBrowser_didReceiveUserConsentResponseForSetupAccessoryDetail_consent___block_invoke(uint64_t a1)
{
  v12 = [*(a1 + 32) findAccessoryServerForAccessoryDescription:*(a1 + 40)];
  v2 = [*(a1 + 32) unpairedAccessoryForServer:?];
  v3 = [*(a1 + 32) _pairingInformationForUnpairedAccessory:v2];
  v4 = v3;
  if (*(a1 + 48) != 1)
  {
    v7 = 0;
    goto LABEL_8;
  }

  v5 = [v3 addAccessoryProgressHandler];
  if (v5)
  {
    v6 = v5;
LABEL_6:
    v11 = [[HMDAddAccessoryProgressState alloc] initWithUnpairedAccessory:v2 server:v12 accessoryInfo:0 certificationStatus:1];
    (v6)[2](v6, 2, v11);
    (v6)[2](v6, 7, v11);

    goto LABEL_7;
  }

  v8 = *(a1 + 32);
  v9 = [v2 uuid];
  v10 = [v8 _currentPairingProgressHandlerForAccessoryUUID:v9];
  v6 = [v10 progressHandler];

  if (v6)
  {
    goto LABEL_6;
  }

LABEL_7:
  v7 = *(a1 + 48);
LABEL_8:
  [*(a1 + 32) _continueAfterPPIDValidation:v7 & 1 server:v12];
}

- (void)removePairingInformationForAccessoryServer:(id)a3
{
  v4 = a3;
  v5 = [(HMDAccessoryBrowser *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __66__HMDAccessoryBrowser_removePairingInformationForAccessoryServer___block_invoke;
  v7[3] = &unk_27868A750;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __66__HMDAccessoryBrowser_removePairingInformationForAccessoryServer___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) unpairedAccessoryForServer:*(a1 + 40)];
  if (v2)
  {
    v3 = v2;
    [*(a1 + 32) _removePairingInformationForUnpairedAccessory:v2];
    v2 = v3;
  }
}

- (id)unpairedHAPAccessoryWithAccessoryDescription:(id)a3
{
  v4 = [(HMDAccessoryBrowser *)self findAccessoryServerForAccessoryDescription:a3];
  v5 = [(HMDAccessoryBrowser *)self unpairedAccessoryForServer:v4];

  return v5;
}

- (void)pairAccessoryWithDescription:(id)a3 configuration:(id)a4 progressHandler:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(HMDAccessoryBrowser *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __100__HMDAccessoryBrowser_pairAccessoryWithDescription_configuration_progressHandler_completionHandler___block_invoke;
  block[3] = &unk_278681318;
  block[4] = self;
  v20 = v10;
  v21 = v11;
  v22 = v12;
  v23 = v13;
  v15 = v13;
  v16 = v12;
  v17 = v11;
  v18 = v10;
  dispatch_async(v14, block);
}

- (void)pairAccessory:(id)a3 configuration:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(HMDAccessoryBrowser *)self workQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __69__HMDAccessoryBrowser_pairAccessory_configuration_completionHandler___block_invoke;
  v15[3] = &unk_278689AB8;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(v11, v15);
}

- (void)registerProgressHandler:(id)a3 unpairedAccessoryUUID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HMDAccessoryBrowser *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__HMDAccessoryBrowser_registerProgressHandler_unpairedAccessoryUUID___block_invoke;
  block[3] = &unk_278689F98;
  block[4] = self;
  v12 = v7;
  v13 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_async(v8, block);
}

void __69__HMDAccessoryBrowser_registerProgressHandler_unpairedAccessoryUUID___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _currentPairingProgressHandlerForAccessoryUUID:*(a1 + 40)];
  if (v2)
  {
    v3 = [*(a1 + 32) currentlyPairingProgressHandlers];
    [v3 removeObject:v2];
  }

  v5 = [[HMDUnpairedHAPAccessoryProgressHandler alloc] initWithAccessoryUUID:*(a1 + 40) progressHandler:*(a1 + 48)];

  v4 = [*(a1 + 32) currentlyPairingProgressHandlers];
  [v4 addObject:v5];
}

- (void)_removeDiscoveredAccessoryServerIdentifier:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = v4;
    os_unfair_lock_lock_with_options();
    [(NSMutableSet *)self->_discoveredAccessoryServerIdentifiers removeObject:v5];
    os_unfair_lock_unlock(&self->_lock);
    v4 = v5;
  }
}

- (void)_addDiscoveredAccessoryServerIdentifier:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = v4;
    os_unfair_lock_lock_with_options();
    [(NSMutableSet *)self->_discoveredAccessoryServerIdentifiers addObject:v5];
    os_unfair_lock_unlock(&self->_lock);
    v4 = v5;
  }
}

- (id)discoveredAccessoryServers
{
  os_unfair_lock_lock_with_options();
  v3 = [(NSMutableSet *)self->_discoveredAccessoryServerIdentifiers copy];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)addUnpairedAccessoryServer:(id)a3 identifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HMDAccessoryBrowser *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__HMDAccessoryBrowser_addUnpairedAccessoryServer_identifier___block_invoke;
  block[3] = &unk_27868A010;
  v12 = v6;
  v13 = self;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

void __61__HMDAccessoryBrowser_addUnpairedAccessoryServer_identifier___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = [*(a1 + 40) _tombstonedAccessoryServerWithServerIdentifier:*(a1 + 48)];
    if (!v3)
    {
      goto LABEL_14;
    }
  }

  if ([*(a1 + 40) _isAccessoryServerTombstoned:v3] && (objc_msgSend(*(a1 + 40), "_shouldAccessoryServerBeTombstoned:", v3) & 1) == 0)
  {
    [*(a1 + 40) _resurrectAccessoryServer:v3];
  }

  if ([v3 linkType] == 1 && (objc_msgSend(v3, "hasPairings") & 1) == 0)
  {
    if ([v3 isPaired])
    {
      v4 = objc_autoreleasePoolPush();
      v5 = *(a1 + 40);
      v6 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = HMFGetLogIdentifier();
        v8 = [v3 identifier];
        v10 = 138543618;
        v11 = v7;
        v12 = 2112;
        v13 = v8;
        _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Accessory server %@ reports it is unpaired, but we have pairings for it", &v10, 0x16u);
      }

      objc_autoreleasePoolPop(v4);
    }

    else
    {
      [*(a1 + 40) _addUnpairedAccessoryForServer:v3];
      [v3 reconfirm];
    }
  }

LABEL_14:

  v9 = *MEMORY[0x277D85DE8];
}

- (void)deregisterPairedAccessory:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      *buf = 138543618;
      v19 = v8;
      v20 = 2112;
      v21 = v4;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@De-registering accessory server %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    [(HMDAccessoryBrowser *)v6 removePairedAccessoryInfoWithIdentifier:v4];
    v9 = [(HMDAccessoryBrowser *)v6 btleAccessoryServerBrowser];
    [v9 deRegisterAccessoryWithIdentifier:v4];

    v10 = [(HMDAccessoryBrowser *)v6 ipAccessoryServerBrowser];
    [v10 deRegisterAccessoryWithIdentifier:v4];

    v11 = [(HMDAccessoryBrowser *)v6 hap2AccessoryServerBrowser];
    [v11 deRegisterAccessoryWithIdentifier:v4];

    v12 = [(HMDAccessoryBrowser *)v6 hap2Storage];
    [v12 deregisterPairedAccessoryWithIdentifier:v4];

    v13 = [(HMDAccessoryBrowser *)v6 chipAccessoryServerBrowser];
    [v13 deRegisterAccessoryWithIdentifier:v4];

    v14 = [(HMDAccessoryBrowser *)v6 mediaBrowser];
    v17 = v4;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v17 count:1];
    [v14 deregisterAccessories:v15];
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)registerPairedAccessory:(id)a3 transports:(unint64_t)a4 setupHash:(id)a5 delegate:(id)a6
{
  v53 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a5;
  v12 = a6;
  if (!v10)
  {
    goto LABEL_22;
  }

  if (a4)
  {
    if ((a4 & 2) != 0)
    {
      v13 = objc_autoreleasePoolPush();
      v14 = self;
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = HMFGetLogIdentifier();
        *buf = 138543618;
        v50 = v16;
        v51 = 2112;
        v52 = v10;
        _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@Registering BTLE accessory server %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v13);
      v17 = [(HMDAccessoryBrowser *)v14 btleAccessoryServerBrowser];
      [v17 registerPairedAccessoryWithIdentifier:v10];
    }

    if ((a4 & 0x10) != 0)
    {
      v18 = objc_autoreleasePoolPush();
      v19 = self;
      v20 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v21 = HMFGetLogIdentifier();
        *buf = 138543618;
        v50 = v21;
        v51 = 2112;
        v52 = v10;
        _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_INFO, "%{public}@Registering media accessory %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v18);
      v22 = [(HMDAccessoryBrowser *)v19 mediaBrowser];
      v47 = v10;
      v23 = [MEMORY[0x277CBEA60] arrayWithObjects:&v47 count:1];
      [v22 registerAccessories:v23];

      goto LABEL_15;
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
      *buf = 138543618;
      v50 = v27;
      v51 = 2112;
      v52 = v10;
      _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_INFO, "%{public}@Registering paired accessory: %@ with all browser types since transport type is none", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v24);
    v28 = [(HMDAccessoryBrowser *)v25 btleAccessoryServerBrowser];
    [v28 registerPairedAccessoryWithIdentifier:v10];

    v29 = [(HMDAccessoryBrowser *)v25 mediaBrowser];
    v48 = v10;
    v30 = [MEMORY[0x277CBEA60] arrayWithObjects:&v48 count:1];
    [v29 registerAccessories:v30];

    v31 = [(HMDAccessoryBrowser *)v25 hap2AccessoryServerBrowser];
    [v31 registerPairedAccessoryWithIdentifier:v10];

    v32 = [(HMDAccessoryBrowser *)v25 hap2Storage];
    [v32 registerPairedAccessoryWithIdentifier:v10];

    v33 = [(HMDAccessoryBrowser *)v25 ipAccessoryServerBrowser];
    [v33 registerPairedAccessoryWithIdentifier:v10];

    v34 = [(HMDAccessoryBrowser *)v25 chipAccessoryServerBrowser];
    [v34 registerPairedAccessoryWithIdentifier:v10];
  }

  v35 = [(HMDAccessoryBrowser *)self hap2AccessoryServerBrowser];
  [v35 registerPairedAccessoryWithIdentifier:v10];

  v22 = [(HMDAccessoryBrowser *)self hap2Storage];
  [v22 registerPairedAccessoryWithIdentifier:v10];
LABEL_15:

  if (a4)
  {
    v36 = objc_autoreleasePoolPush();
    v37 = self;
    v38 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
    {
      v39 = HMFGetLogIdentifier();
      *buf = 138543618;
      v50 = v39;
      v51 = 2112;
      v52 = v10;
      _os_log_impl(&dword_229538000, v38, OS_LOG_TYPE_INFO, "%{public}@Registering IP accessory server %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v36);
    v40 = [(HMDAccessoryBrowser *)v37 homeManager];
    v41 = [v40 isDemoModeV2Active];

    if (v41)
    {
      v42 = [(HMDAccessoryBrowser *)v37 demoAccessoryServerBrowser];
      [v42 registerPairedAccessoryWithIdentifier:v10];
    }

    v43 = [(HMDAccessoryBrowser *)v37 ipAccessoryServerBrowser];
    [v43 registerPairedAccessoryWithIdentifier:v10];

    v44 = [(HMDAccessoryBrowser *)v37 chipAccessoryServerBrowser];
    [v44 registerPairedAccessoryWithIdentifier:v10];
  }

  v45 = [[HMDPairedAccessoryInformation alloc] initWithIdentifier:v10 transports:a4 setupHash:v11 delegate:v12];
  [(HMDAccessoryBrowser *)self addPairedAccessory:v45];

LABEL_22:
  v46 = *MEMORY[0x277D85DE8];
}

- (void)_addUnpairedAccessoryForServer:(id)a3
{
  v97 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDAccessoryBrowser *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [v4 identifier];
  v7 = [(HMDAccessoryBrowser *)self unpairedAccessoryWithServerIdentifier:v6];

  if (v7)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v12 = [v4 linkType];
      if (v12 > 2)
      {
        v13 = @"Undefined";
      }

      else
      {
        v13 = off_2786768F0[v12];
      }

      v25 = v13;
      *buf = 138543874;
      *&buf[4] = v11;
      v93 = 2112;
      v94 = v25;
      v95 = 2112;
      v96 = v7;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Found accessory server (transport %@) for unpaired accessory: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v8);
    [(HMDUnpairedHAPAccessory *)v7 addAccessoryServer:v4];
    [(HMDAccessoryBrowser *)v9 _associateMediaAccessoryForServer:v4];
    v26 = [(HMDAccessoryBrowser *)v9 _pairingInformationForUnpairedAccessory:v7];
    v17 = v26;
    if (v26)
    {
      v27 = [v26 linkType];
      if (v27 == [v4 linkType])
      {
        v28 = v4;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v29 = v28;
        }

        else
        {
          v29 = 0;
        }

        v82 = v29;

        if (v82)
        {
          [v17 setWacAccessory:{objc_msgSend(v82, "isWacAccessory")}];
          [v17 setLegacyWAC:{objc_msgSend(v82, "isWacLegacy")}];
        }

        v30 = objc_autoreleasePoolPush();
        v31 = v9;
        v32 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
        {
          v33 = HMFGetLogIdentifier();
          *buf = 138543618;
          *&buf[4] = v33;
          v93 = 2112;
          v94 = v7;
          _os_log_impl(&dword_229538000, v32, OS_LOG_TYPE_INFO, "%{public}@Restarting the pairing process for unpaired accessory: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v30);
        v34 = [v17 pairingActivity];
        v84[0] = MEMORY[0x277D85DD0];
        v84[1] = 3221225472;
        v84[2] = __54__HMDAccessoryBrowser__addUnpairedAccessoryForServer___block_invoke_465;
        v84[3] = &unk_27868A010;
        v35 = v34;
        v85 = v35;
        v36 = v17;
        v86 = v36;
        v37 = v28;
        v87 = v37;
        __54__HMDAccessoryBrowser__addUnpairedAccessoryForServer___block_invoke_465(v84);
        v38 = [v36 addAccessoryProgressHandler];
        if (v38)
        {
          goto LABEL_25;
        }

        v39 = [(HMDUnassociatedAccessory *)v7 uuid];
        v40 = [(HMDAccessoryBrowser *)v31 _currentPairingProgressHandlerForAccessoryUUID:v39];
        v38 = [v40 progressHandler];

        if (v38)
        {
LABEL_25:
          v41 = [[HMDAddAccessoryProgressState alloc] initWithUnpairedAccessory:v7 server:v37 accessoryInfo:0 certificationStatus:0];
          (v38)[2](v38, 11, v41);
        }

        [v35 begin];
        v42 = v35;
        *buf = v42;
        v43 = [v36 pairingRequest];
        [v37 startPairingWithRequest:v43];

        __HMFActivityScopeLeave();
      }
    }

    [(HMDAccessoryBrowser *)v9 _handleAddedAccessory:v7];
  }

  else
  {
    v14 = [HMDUnpairedHAPAccessory alloc];
    v15 = [(HMDAccessoryBrowser *)self messageDispatcher];
    v7 = [(HMDUnpairedHAPAccessory *)v14 initWithAccessoryServer:v4 messageDispatcher:v15];

    v16 = [(HMDAccessoryBrowser *)self unpairedAccessoryManagerDelegate];
    v17 = v16;
    if (v16)
    {
      v18 = [v16 updatedUUIDForDiscoveredUnpairedAccessory:v7];
      if (v18)
      {
        [(HMDUnassociatedAccessory *)v7 setUUID:v18];
      }
    }

    v19 = objc_autoreleasePoolPush();
    v20 = self;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = HMFGetLogIdentifier();
      v23 = [v4 linkType];
      if (v23 > 2)
      {
        v24 = @"Undefined";
      }

      else
      {
        v24 = off_2786768F0[v23];
      }

      v44 = v24;
      *buf = 138543874;
      *&buf[4] = v22;
      v93 = 2112;
      v94 = v7;
      v95 = 2112;
      v96 = v44;
      _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_INFO, "%{public}@Found new unpaired accessory: %@ with transport %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v19);
    [(HMDAccessoryBrowser *)v20 addUnpairedHAPAccessory:v7];
    [(HMDAccessoryBrowser *)v20 _associateMediaAccessoryForServer:v4];
    v45 = v4;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v46 = v45;
    }

    else
    {
      v46 = 0;
    }

    v47 = v46;

    if ([v47 isWacAccessory])
    {
      [(HMDAccessoryBrowser *)v20 _handleWACAccessoryFound];
    }

    v48 = v45;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v49 = v48;
    }

    else
    {
      v49 = 0;
    }

    v83 = v49;

    if (v83)
    {
      v81 = [v83 isLocallyDiscoveredServer] ^ 1;
    }

    else
    {
      LOBYTE(v81) = 0;
    }

    v50 = [(HMDAccessoryBrowser *)v20 _pairingInformationForUnpairedAccessory:v7];
    if (v50)
    {
      v51 = objc_autoreleasePoolPush();
      v52 = v20;
      v53 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
      {
        v54 = HMFGetLogIdentifier();
        *buf = 138543874;
        *&buf[4] = v54;
        v93 = 2112;
        v94 = v7;
        v95 = 2112;
        v96 = v50;
        _os_log_impl(&dword_229538000, v53, OS_LOG_TYPE_INFO, "%{public}@Starting the pairing process for unpaired accessory: %@ matching setup description %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v51);
      v55 = [(HMDUnpairedHAPAccessory *)v50 accessoryName];
      v56 = v55 == 0;

      if (v56)
      {
        v57 = [(HMDUnassociatedAccessory *)v7 name];
        [(HMDUnpairedHAPAccessory *)v50 setAccessoryName:v57];
      }

      v58 = [(HMDUnpairedHAPAccessory *)v50 accessoryUUID];
      v59 = v58 == 0;

      if (v59)
      {
        v60 = [(HMDUnassociatedAccessory *)v7 uuid];
        [(HMDUnpairedHAPAccessory *)v50 setAccessoryUUID:v60];
      }

      v61 = [(HMDUnpairedHAPAccessory *)v50 accessoryServerIdentifier];
      v62 = v61 == 0;

      if (v62)
      {
        v63 = [(HMDUnassociatedAccessory *)v7 identifier];
        [(HMDUnpairedHAPAccessory *)v50 setAccessoryServerIdentifier:v63];
      }

      if (![(HMDUnpairedHAPAccessory *)v50 linkType])
      {
        -[HMDUnpairedHAPAccessory setLinkType:](v50, "setLinkType:", [v48 linkType]);
      }

      -[HMDUnpairedHAPAccessory setWacAccessory:](v50, "setWacAccessory:", [v47 isWacAccessory]);
      -[HMDUnpairedHAPAccessory setLegacyWAC:](v50, "setLegacyWAC:", [v47 isWacLegacy]);
      v64 = v48;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v65 = v64;
      }

      else
      {
        v65 = 0;
      }

      v66 = v65;

      if (v66)
      {
        [(HMDAccessoryBrowser *)v52 _setupHMMTRAccessoryServer:v66 pairingInfo:v50];
        v67 = [(HMDUnpairedHAPAccessory *)v50 homeUUID];
        v68 = [(HMDAccessoryBrowser *)v52 _setPairingTargetFabricUUIDWithServer:v66 homeUUID:v67];
      }

      v69 = [(HMDUnpairedHAPAccessory *)v50 addAccessoryProgressHandler];
      if (!v69)
      {
        v70 = [(HMDUnassociatedAccessory *)v7 uuid];
        v71 = [(HMDAccessoryBrowser *)v52 _currentPairingProgressHandlerForAccessoryUUID:v70];
        v69 = [v71 progressHandler];
      }

      if (v69)
      {
        v72 = v81;
      }

      else
      {
        v72 = 1;
      }

      if ((v72 & 1) == 0)
      {
        v73 = [[HMDAddAccessoryProgressState alloc] initWithUnpairedAccessory:v7 server:v64];
        (v69)[2](v69, 2, v73);
      }

      v74 = [(HMDUnpairedHAPAccessory *)v50 pairingActivity];
      v88[0] = MEMORY[0x277D85DD0];
      v88[1] = 3221225472;
      v88[2] = __54__HMDAccessoryBrowser__addUnpairedAccessoryForServer___block_invoke;
      v88[3] = &unk_27868A010;
      v75 = v74;
      v89 = v75;
      v76 = v50;
      v90 = v76;
      v77 = v64;
      v91 = v77;
      __54__HMDAccessoryBrowser__addUnpairedAccessoryForServer___block_invoke(v88);
      [v75 begin];
      v78 = v75;
      *buf = v78;
      v79 = [(HMDUnpairedHAPAccessory *)v76 pairingRequest];
      [v77 startPairingWithRequest:v79];

      __HMFActivityScopeLeave();
    }
  }

  v80 = *MEMORY[0x277D85DE8];
}

void *__54__HMDAccessoryBrowser__addUnpairedAccessoryForServer___block_invoke(void *result)
{
  v1 = result[4];
  if (v1)
  {
    v2 = result;
    v3 = result[5];
    v4 = v1;
    [v3 accessoryUUID];

    v5 = [v2[5] setupID];
    v6 = HMFBooleanToString();

    [v2[5] wacAccessory];
    v7 = HMFBooleanToString();
    [v2[5] legacyWAC];
    v8 = HMFBooleanToString();
    [v2[5] linkType];
    v9 = HAPLinkTypeDescription();
    [v2[6] communicationProtocol];

    return HAPCommunicationProtocolDescription();
  }

  return result;
}

void *__54__HMDAccessoryBrowser__addUnpairedAccessoryForServer___block_invoke_465(void *result)
{
  v1 = result[4];
  if (v1)
  {
    v2 = result;
    v3 = result[5];
    v4 = v1;
    [v3 accessoryUUID];

    v5 = [v2[5] setupID];
    v6 = HMFBooleanToString();

    [v2[5] wacAccessory];
    v7 = HMFBooleanToString();
    [v2[5] legacyWAC];
    v8 = HMFBooleanToString();
    [v2[5] linkType];
    v9 = HAPLinkTypeDescription();
    [v2[6] communicationProtocol];

    return HAPCommunicationProtocolDescription();
  }

  return result;
}

- (void)_setupHMMTRAccessoryServer:(id)a3 pairingInfo:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v8 = [(HMDAccessoryBrowser *)self homeManager];
  v9 = [v8 homes];

  v10 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v21;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v21 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v20 + 1) + 8 * i);
        v15 = [v14 uuid];
        v16 = [v7 homeUUID];
        v17 = [v15 isEqual:v16];

        if (v17)
        {
          v18 = [v14 fabric];
          [v6 setPairingTargetFabric:v18];

          goto LABEL_11;
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v19 = *MEMORY[0x277D85DE8];
}

- (void)_handleWACAccessoryFound
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = [(HMDAccessoryBrowser *)self homeManager];
  v3 = [v2 homes];

  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        v9 = [v8 homeLocationHandler];
        v10 = [v9 isoCountryCode];

        if (!v10)
        {
          v11 = [v8 homeLocationHandler];
          [v11 updateHomeLocation];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_removePairingInformationForUnpairedAccessory:(id)a3
{
  v13 = a3;
  v4 = [(HMDAccessoryBrowser *)self workQueue];
  dispatch_assert_queue_V2(v4);

  v5 = [(HMDAccessoryBrowser *)self _pairingInformationForUnpairedAccessory:v13];
  v6 = [v5 pairingRetryTimer];
  [v6 cancel];

  [v5 setPairingRetryTimer:0];
  v7 = [v5 pairingInterruptionTimer];
  [v7 cancel];

  [v5 setPairingInterruptionTimer:0];
  v8 = [v5 reconfirmTimer];
  [v8 cancel];

  [v5 setReconfirmTimer:0];
  if (v5)
  {
    v9 = [(HMDAccessoryBrowser *)self currentlyPairingAccessories];
    [v9 removeObject:v5];
  }

  v10 = [v13 uuid];
  v11 = [(HMDAccessoryBrowser *)self _currentPairingProgressHandlerForAccessoryUUID:v10];

  if (v11)
  {
    v12 = [(HMDAccessoryBrowser *)self currentlyPairingProgressHandlers];
    [v12 removeObject:v11];
  }
}

- (void)_handleRemovedUnpairedHAPAccessory:(id)a3
{
  v5 = a3;
  v4 = [(HMDAccessoryBrowser *)self workQueue];
  dispatch_assert_queue_V2(v4);

  [(HMDAccessoryBrowser *)self _removePairingInformationForUnpairedAccessory:v5];
}

- (void)removeUnpairedHAPAccessory:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6)
  {
    os_unfair_lock_lock_with_options();
    if ([(NSMutableSet *)self->_unpairedHAPAccessories containsObject:v6])
    {
      [(NSMutableSet *)self->_unpairedHAPAccessories removeObject:v6];
      v9 = [(HMDAccessoryBrowser *)self workQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __61__HMDAccessoryBrowser_removeUnpairedHAPAccessory_completion___block_invoke;
      block[3] = &unk_278689F98;
      block[4] = self;
      v11 = v6;
      v12 = v8;
      dispatch_async(v9, block);
    }

    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    (*(v7 + 2))(v7);
  }
}

uint64_t __61__HMDAccessoryBrowser_removeUnpairedHAPAccessory_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _handleRemovedAccessory:*(a1 + 40)];
  [*(a1 + 32) _handleRemovedUnpairedHAPAccessory:*(a1 + 40)];
  v2 = *(*(a1 + 48) + 16);

  return v2();
}

- (void)addUnpairedHAPAccessory:(id)a3
{
  v4 = a3;
  if (v4)
  {
    os_unfair_lock_lock_with_options();
    if (([(NSMutableSet *)self->_unpairedHAPAccessories containsObject:v4]& 1) == 0)
    {
      [(NSMutableSet *)self->_unpairedHAPAccessories addObject:v4];
      v5 = [(HMDAccessoryBrowser *)self workQueue];
      v6[0] = MEMORY[0x277D85DD0];
      v6[1] = 3221225472;
      v6[2] = __47__HMDAccessoryBrowser_addUnpairedHAPAccessory___block_invoke;
      v6[3] = &unk_27868A750;
      v6[4] = self;
      v7 = v4;
      dispatch_async(v5, v6);
    }

    os_unfair_lock_unlock(&self->_lock);
  }
}

- (void)unassociatedWACAccessoryDidFinishAssociation:(id)a3 withError:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = +[HMDUIDialogPresenter sharedUIDialogPresenter];
  v9 = [(HMDAccessoryBrowser *)self workQueue];
  [v8 dismissPendingDialogWithContext:v6 queue:v9 completionHandler:&__block_literal_global_457];

  if (v7)
  {
    v10 = objc_autoreleasePoolPush();
    v11 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      v15 = 138543874;
      v16 = v13;
      v17 = 2112;
      v18 = v6;
      v19 = 2112;
      v20 = v7;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@WAC session for %@ failed with %@", &v15, 0x20u);
    }

    objc_autoreleasePoolPop(v10);
    [(HMDAccessoryBrowser *)v11 setActiveWACSession:0];
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)unassociatedWACAccessoryDidStartAssociation:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      v10 = 138543618;
      v11 = v8;
      v12 = 2112;
      v13 = v4;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Tracking active WAC session: %@", &v10, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    [(HMDAccessoryBrowser *)v6 setActiveWACSession:v4];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)requestPermissionToAssociateWACAccessory:(id)a3 completionHandler:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDAccessoryBrowser *)self getActiveWACSession];

  if (v8)
  {
    v7[2](v7, 1);
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    v10 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v17 = 138543362;
      v18 = v12;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Requesting permission from user to share network credentials with WAC accessory", &v17, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
    v13 = +[HMDUIDialogPresenter sharedUIDialogPresenter];
    v14 = [v6 name];
    v15 = [(HMDAccessoryBrowser *)v10 workQueue];
    [v13 requestUserPermissionForLegacyWACAccessory:v14 withContext:v6 queue:v15 completionHandler:v7];
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (HMDUnassociatedWACAccessory)getActiveWACSession
{
  os_unfair_lock_lock_with_options();
  v3 = self->_accessoryPerformingWAC;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setActiveWACSession:(id)a3
{
  v5 = a3;
  os_unfair_lock_lock_with_options();
  objc_storeStrong(&self->_accessoryPerformingWAC, a3);
  v6 = [(HMDAccessoryBrowser *)self workQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __43__HMDAccessoryBrowser_setActiveWACSession___block_invoke;
  v8[3] = &unk_27868A750;
  v9 = v5;
  v10 = self;
  v7 = v5;
  dispatch_async(v6, v8);

  os_unfair_lock_unlock(&self->_lock);
}

void __43__HMDAccessoryBrowser_setActiveWACSession___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) wacBrowser];
  v3 = v2;
  if (v1)
  {
    [v2 requestBackoff];
  }

  else
  {
    [v2 clearBackoff];
  }
}

- (void)removeUnassociatedWACAccessory:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6)
  {
    os_unfair_lock_lock_with_options();
    if ([(NSMutableSet *)self->_unassociatedWACAccessories containsObject:v6])
    {
      [(NSMutableSet *)self->_unassociatedWACAccessories removeObject:v6];
      v9 = [(HMDAccessoryBrowser *)self workQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __65__HMDAccessoryBrowser_removeUnassociatedWACAccessory_completion___block_invoke;
      block[3] = &unk_278689F98;
      v11 = v6;
      v12 = self;
      v13 = v8;
      dispatch_async(v9, block);
    }

    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    (*(v7 + 2))(v7);
  }
}

void __65__HMDAccessoryBrowser_removeUnassociatedWACAccessory_completion___block_invoke(uint64_t a1)
{
  v4 = +[HMDUIDialogPresenter sharedUIDialogPresenter];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) workQueue];
  [v4 dismissPendingDialogWithContext:v2 queue:v3 completionHandler:&__block_literal_global_455];

  [*(a1 + 40) _handleRemovedAccessory:*(a1 + 32)];
  (*(*(a1 + 48) + 16))();
}

- (void)addUnassociatedWACAccessory:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v6 = v4;
    os_unfair_lock_lock_with_options();
    if (([(NSMutableSet *)self->_unassociatedWACAccessories containsObject:v6]& 1) == 0)
    {
      [(NSMutableSet *)self->_unassociatedWACAccessories addObject:v6];
      v5 = [(HMDAccessoryBrowser *)self workQueue];
      [v6 setDelegate:self withQueue:v5];

      [(HMDAccessoryBrowser *)self handleAddedAccessory:v6];
    }

    os_unfair_lock_unlock(&self->_lock);
    v4 = v6;
  }
}

- (void)removeUnassociatedMediaAccessory:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6)
  {
    os_unfair_lock_lock_with_options();
    v9 = [(NSMutableSet *)self->_unassociatedMediaAccessories containsObject:v6];
    if (v9)
    {
      [(NSMutableSet *)self->_unassociatedMediaAccessories removeObject:v6];
    }

    if ([(NSMutableSet *)self->_deviceSetupMediaAccessories containsObject:v6])
    {
      [(NSMutableSet *)self->_deviceSetupMediaAccessories removeObject:v6];
    }

    else if (!v9)
    {
LABEL_9:
      os_unfair_lock_unlock(&self->_lock);
      goto LABEL_10;
    }

    v10 = [(HMDAccessoryBrowser *)self workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __67__HMDAccessoryBrowser_removeUnassociatedMediaAccessory_completion___block_invoke;
    block[3] = &unk_278689F98;
    v12 = v6;
    v13 = self;
    v14 = v8;
    dispatch_async(v10, block);

    goto LABEL_9;
  }

  (*(v7 + 2))(v7);
LABEL_10:
}

uint64_t __67__HMDAccessoryBrowser_removeUnassociatedMediaAccessory_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) isHAPAirPlay2Accessory];
  v3 = *(a1 + 40);
  if (v2)
  {
    v4 = [*(a1 + 32) advertisement];
    [v3 _associate:0 hapAccessoryWithAdvertisement:v4];
  }

  else
  {
    [*(a1 + 40) _handleRemovedAccessory:*(a1 + 32)];
  }

  v5 = *(*(a1 + 48) + 16);

  return v5();
}

- (void)_associateMediaAccessoryForServer:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 compatibilityFeatures])
  {
    v5 = objc_autoreleasePoolPush();
    v6 = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v8 = HMFGetLogIdentifier();
      v17 = 138543618;
      v18 = v8;
      v19 = 2112;
      v20 = v4;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_DEBUG, "%{public}@Found server: %@ supporting HAP+AP2", &v17, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    v9 = [v4 identifier];
    v10 = [(HMDAccessoryBrowser *)v6 _unassociatedMediaAccessoryWithIdentifier:v9];

    if (v10 && [v10 isHAPAirPlay2Accessory])
    {
      v11 = objc_autoreleasePoolPush();
      v12 = v6;
      v13 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        v14 = HMFGetLogIdentifier();
        v17 = 138543874;
        v18 = v14;
        v19 = 2112;
        v20 = v4;
        v21 = 2112;
        v22 = v10;
        _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_DEBUG, "%{public}@Associating unpaired HAP Accessory: %@ with media Accessory: %@", &v17, 0x20u);
      }

      objc_autoreleasePoolPop(v11);
      v15 = [v10 advertisement];
      [(HMDAccessoryBrowser *)v12 _associate:1 hapAccessoryWithAdvertisement:v15];
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_associate:(BOOL)a3 hapAccessoryWithAdvertisement:(id)a4
{
  v4 = a3;
  v40 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v27 = 8;
  os_unfair_lock_lock_with_options();
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v28 = self;
  v7 = self->_unpairedHAPAccessories;
  v8 = [(NSMutableSet *)v7 countByEnumeratingWithState:&v29 objects:v39 count:16];
  if (v8)
  {
    v9 = *v30;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v30 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v29 + 1) + 8 * i);
        v12 = [v11 identifier];
        v13 = [v6 identifier];
        v14 = [v12 isEqualToString:v13];

        if (v14)
        {
          v19 = objc_autoreleasePoolPush();
          v20 = v28;
          if (v4)
          {
            v21 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
            {
              v22 = HMFGetLogIdentifier();
              *buf = 138543874;
              v34 = v22;
              v35 = 2112;
              v36 = v6;
              v37 = 2112;
              v38 = v11;
              _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_DEBUG, "%{public}@Associating Advertisement: %@ with HAPAccessory: %@", buf, 0x20u);
            }

            objc_autoreleasePoolPop(v19);
            v23 = v6;
          }

          else
          {
            v24 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
            {
              v25 = HMFGetLogIdentifier();
              *buf = 138543874;
              v34 = v25;
              v35 = 2112;
              v36 = v6;
              v37 = 2112;
              v38 = v11;
              _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_DEBUG, "%{public}@Disassociating Advertisement: %@ from HAPAccessory: %@", buf, 0x20u);
            }

            objc_autoreleasePoolPop(v19);
            v23 = 0;
          }

          [v11 associateWithAccessoryAdvertisement:v23];

          goto LABEL_20;
        }
      }

      v8 = [(NSMutableSet *)v7 countByEnumeratingWithState:&v29 objects:v39 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v15 = objc_autoreleasePoolPush();
  v16 = v28;
  v17 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    v18 = HMFGetLogIdentifier();
    *buf = 138543618;
    v34 = v18;
    v35 = 2112;
    v36 = v6;
    _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_DEBUG, "%{public}@No unpaired HAP accessory yet for advertisement: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v15);
LABEL_20:
  os_unfair_lock_unlock((v28 + v27));

  v26 = *MEMORY[0x277D85DE8];
}

- (void)addUnassociatedMediaAccessory:(id)a3 forDeviceSetup:(BOOL)a4
{
  v4 = a4;
  v31 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (v6)
  {
    os_unfair_lock_lock_with_options();
    v19 = v4;
    if (v4)
    {
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v7 = self->_deviceSetupMediaAccessories;
      v8 = [(NSMutableSet *)v7 countByEnumeratingWithState:&v26 objects:v30 count:16];
      if (v8)
      {
        v9 = *v27;
        while (2)
        {
          for (i = 0; i != v8; i = i + 1)
          {
            if (*v27 != v9)
            {
              objc_enumerationMutation(v7);
            }

            v11 = *(*(&v26 + 1) + 8 * i);
            v12 = [v11 identifier];
            v13 = [v6 identifier];
            v14 = [v12 isEqual:v13];

            if (v14)
            {
              v8 = v11;
              [(NSMutableSet *)self->_deviceSetupMediaAccessories removeObject:v8];
              goto LABEL_15;
            }
          }

          v8 = [(NSMutableSet *)v7 countByEnumeratingWithState:&v26 objects:v30 count:16];
          if (v8)
          {
            continue;
          }

          break;
        }
      }

LABEL_15:

      [(NSMutableSet *)self->_deviceSetupMediaAccessories addObject:v6];
    }

    else
    {
      if (([(NSMutableSet *)self->_unassociatedMediaAccessories containsObject:v6]& 1) != 0)
      {
        v15 = 0;
        v8 = 0;
LABEL_18:
        v16 = [(HMDAccessoryBrowser *)self workQueue];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __68__HMDAccessoryBrowser_addUnassociatedMediaAccessory_forDeviceSetup___block_invoke;
        block[3] = &unk_278684B18;
        v21 = v8;
        v22 = self;
        v23 = v6;
        v24 = v15;
        v25 = v19;
        v17 = v8;
        dispatch_async(v16, block);

        os_unfair_lock_unlock(&self->_lock);
        goto LABEL_19;
      }

      [(NSMutableSet *)self->_unassociatedMediaAccessories addObject:v6];
      v8 = 0;
    }

    v15 = 1;
    goto LABEL_18;
  }

LABEL_19:

  v18 = *MEMORY[0x277D85DE8];
}

void __68__HMDAccessoryBrowser_addUnassociatedMediaAccessory_forDeviceSetup___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v2 = objc_autoreleasePoolPush();
    v3 = *(a1 + 40);
    v4 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = HMFGetLogIdentifier();
      v6 = *(a1 + 48);
      v7 = *(a1 + 32);
      v16 = 138543874;
      v17 = v5;
      v18 = 2112;
      v19 = v6;
      v20 = 2112;
      v21 = v7;
      _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@DeviceSetup accessory %@ already has a previous instance %@ - removing it", &v16, 0x20u);
    }

    objc_autoreleasePoolPop(v2);
    [*(a1 + 40) _handleRemovedAccessory:*(a1 + 32)];
  }

  if (*(a1 + 56) == 1)
  {
    if ([*(a1 + 48) isHAPAirPlay2Accessory])
    {
      v8 = *(a1 + 40);
      v9 = [*(a1 + 48) advertisement];
      [v8 _associate:1 hapAccessoryWithAdvertisement:v9];
    }

    else
    {
      if (*(a1 + 57) == 1)
      {
        v10 = objc_autoreleasePoolPush();
        v11 = *(a1 + 40);
        v12 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          v13 = HMFGetLogIdentifier();
          v14 = *(a1 + 48);
          v16 = 138543618;
          v17 = v13;
          v18 = 2112;
          v19 = v14;
          _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@Adding accessory %@ for deviceSetup", &v16, 0x16u);
        }

        objc_autoreleasePoolPop(v10);
      }

      [*(a1 + 40) _handleAddedAccessory:*(a1 + 48)];
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (id)_progressHandlerForUnpairedAccessory:(id)a3
{
  v4 = a3;
  v5 = [(HMDAccessoryBrowser *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(HMDAccessoryBrowser *)self _pairingInformationForUnpairedAccessory:v4];
  v7 = [v6 addAccessoryProgressHandler];
  if (!v7)
  {
    v8 = [v4 uuid];
    v9 = [(HMDAccessoryBrowser *)self _currentPairingProgressHandlerForAccessoryUUID:v8];
    v7 = [v9 progressHandler];
  }

  v10 = _Block_copy(v7);

  return v10;
}

- (id)_currentPairingProgressHandlerForAccessoryUUID:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDAccessoryBrowser *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [(HMDAccessoryBrowser *)self currentlyPairingProgressHandlers];
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = *v16;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [v10 accessoryUUID];
        v12 = [v11 isEqual:v4];

        if (v12)
        {
          v7 = v10;
          goto LABEL_11;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v13 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)_pairingInformationForAccessoryIdentifier:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDAccessoryBrowser *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = [(HMDAccessoryBrowser *)self currentlyPairingAccessories];
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        v12 = [v11 accessoryServerIdentifier];
        v13 = [v12 isEqualToString:v4];

        if (v13)
        {
          v14 = v11;
          goto LABEL_12;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v6 = [(HMDAccessoryBrowser *)self unpairedAccessoryWithServerIdentifier:v4];
  if (v6)
  {
    v14 = [(HMDAccessoryBrowser *)self _pairingInformationForUnpairedAccessory:v6];
LABEL_12:
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

- (id)_pairingInformationForUnpairedAccessory:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDAccessoryBrowser *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = [(HMDAccessoryBrowser *)self currentlyPairingAccessories];
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = *v14;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        if ([v10 matchesUnpairedAccessory:v4])
        {
          v7 = v10;
          goto LABEL_11;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v11 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)_unpairedAccessoryMatchingPairingInfo:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [(HMDAccessoryBrowser *)self unpairedHAPAccessories];
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([v4 matchesUnpairedAccessory:v9])
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v10 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)unpairedAccessoryWithUUID:(id)a3
{
  v4 = a3;
  v5 = [(HMDAccessoryBrowser *)self unpairedHAPAccessories];
  v6 = [v5 hmf_firstObjectWithUUID:v4];

  return v6;
}

- (NSArray)unpairedHAPAccessories
{
  os_unfair_lock_lock_with_options();
  v3 = [(NSMutableSet *)self->_unpairedHAPAccessories allObjects];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)probeReachabilityForBTLEAccessoryServersWithIdentifiers:(id)a3 forceScan:(BOOL)a4 withCompletion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(HMDAccessoryBrowser *)self workQueue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __104__HMDAccessoryBrowser_probeReachabilityForBTLEAccessoryServersWithIdentifiers_forceScan_withCompletion___block_invoke;
  v13[3] = &unk_278685C18;
  v13[4] = self;
  v14 = v8;
  v16 = a4;
  v15 = v9;
  v11 = v9;
  v12 = v8;
  dispatch_async(v10, v13);
}

void __104__HMDAccessoryBrowser_probeReachabilityForBTLEAccessoryServersWithIdentifiers_forceScan_withCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) btleAccessoryServerBrowser];
  [v2 probeReachabilityForAccessoryServersWithIdentifiers:*(a1 + 40) forceScan:*(a1 + 56) withCompletion:*(a1 + 48)];
}

- (void)handleNewlyPairedAccessory:(id)a3 linkType:(int64_t)a4
{
  v6 = a3;
  v7 = [(HMDAccessoryBrowser *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__HMDAccessoryBrowser_handleNewlyPairedAccessory_linkType___block_invoke;
  block[3] = &unk_278685DF8;
  block[4] = self;
  v10 = v6;
  v11 = a4;
  v8 = v6;
  dispatch_async(v7, block);
}

void __59__HMDAccessoryBrowser_handleNewlyPairedAccessory_linkType___block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) unpairedAccessoryWithServerIdentifier:*(a1 + 40)];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v3 = [v2 accessoryServers];
  v4 = [v3 countByEnumeratingWithState:&v16 objects:v26 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v17;
    while (2)
    {
      v7 = 0;
      do
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(v3);
        }

        if (*(*(&v16 + 1) + 8 * v7))
        {
          [*(a1 + 32) _discoverAccessories:?];
          [*(a1 + 32) removeUnpairedHAPAccessory:v2 completion:&__block_literal_global_452];

          goto LABEL_13;
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v16 objects:v26 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v8 = objc_autoreleasePoolPush();
  v9 = *(a1 + 32);
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v13 = *(a1 + 40);
    v12 = *(a1 + 48);
    v14 = HAPLinkTypeDescription();
    *buf = 138543874;
    v21 = v11;
    v22 = 2112;
    v23 = v13;
    v24 = 2112;
    v25 = v14;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Discovering accessory server for newly added accessory: %@/%@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  [*(a1 + 32) _discoverAccessoryServer:*(a1 + 40) linkType:*(a1 + 48) errorHandler:0];
LABEL_13:

  v15 = *MEMORY[0x277D85DE8];
}

- (void)homeLocationChangeNotification:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = [v4 name];
    *buf = 138543618;
    v17 = v8;
    v18 = 2112;
    v19 = v9;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Received notification: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v10 = [(HMDAccessoryBrowser *)v6 workQueue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __54__HMDAccessoryBrowser_homeLocationChangeNotification___block_invoke;
  v13[3] = &unk_27868A750;
  v14 = v4;
  v15 = v6;
  v11 = v4;
  dispatch_async(v10, v13);

  v12 = *MEMORY[0x277D85DE8];
}

uint64_t __54__HMDAccessoryBrowser_homeLocationChangeNotification___block_invoke(uint64_t a1)
{
  v56 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) name];
  v3 = [v2 isEqualToString:@"HMDHomeRegionExitedNotificationKey"];

  if (v3)
  {
    v4 = [*(a1 + 40) homeManager];
    v5 = [v4 homes];

    if (v5)
    {
      v6 = [MEMORY[0x277CBEB18] array];
      v44 = 0u;
      v45 = 0u;
      v46 = 0u;
      v47 = 0u;
      v35 = v5;
      obj = v5;
      v38 = [obj countByEnumeratingWithState:&v44 objects:v55 count:16];
      if (v38)
      {
        v37 = *v45;
        do
        {
          for (i = 0; i != v38; ++i)
          {
            if (*v45 != v37)
            {
              objc_enumerationMutation(obj);
            }

            v8 = *(*(&v44 + 1) + 8 * i);
            v43 = 0;
            [v8 getReachableIPAccessories:&v43 btleAccessories:0 mediaAccessories:0];
            v9 = v43;
            v10 = objc_autoreleasePoolPush();
            v11 = *(a1 + 40);
            v12 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
            {
              v13 = HMFGetLogIdentifier();
              *buf = 138543874;
              v50 = v13;
              v51 = 2112;
              v52 = v8;
              v53 = 2048;
              v54 = v43;
              _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@Home: %@ Reachable IP accessories: %tu", buf, 0x20u);
            }

            objc_autoreleasePoolPop(v10);
            v14 = [v8 homeLocationHandler];
            v15 = [v14 regionStateAtHome];

            if (v15 == 2 && v9 == 0)
            {
              v17 = objc_autoreleasePoolPush();
              v18 = *(a1 + 40);
              v19 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
              {
                v20 = HMFGetLogIdentifier();
                *buf = 138543618;
                v50 = v20;
                v51 = 2112;
                v52 = v8;
                _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_INFO, "%{public}@Outside home region for home %@", buf, 0x16u);
              }

              objc_autoreleasePoolPop(v17);
              v21 = [v8 accessories];
              v22 = [v21 copy];

              v41 = 0u;
              v42 = 0u;
              v39 = 0u;
              v40 = 0u;
              v23 = v22;
              v24 = [v23 countByEnumeratingWithState:&v39 objects:v48 count:16];
              if (v24)
              {
                v25 = v24;
                v26 = *v40;
                do
                {
                  for (j = 0; j != v25; ++j)
                  {
                    if (*v40 != v26)
                    {
                      objc_enumerationMutation(v23);
                    }

                    v28 = *(*(&v39 + 1) + 8 * j);
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      v29 = v28;
                    }

                    else
                    {
                      v29 = 0;
                    }

                    v30 = v29;

                    if ([v30 hasBTLELink])
                    {
                      v31 = [v30 identifier];
                      [v6 addObject:v31];
                    }
                  }

                  v25 = [v23 countByEnumeratingWithState:&v39 objects:v48 count:16];
                }

                while (v25);
              }
            }
          }

          v38 = [obj countByEnumeratingWithState:&v44 objects:v55 count:16];
        }

        while (v38);
      }

      if ([v6 count])
      {
        v32 = [*(a1 + 40) btleAccessoryServerBrowser];
        [v32 resetLastSeenForAccessoryServersWithIdentifiers:v6];
      }

      v5 = v35;
    }
  }

  result = [*(a1 + 40) btleAccessoryReachabilityProbeTimer:1];
  v34 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)handleConnectionDeactivation:(id)a3
{
  v4 = a3;
  v5 = [(HMDAccessoryBrowser *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __52__HMDAccessoryBrowser_handleConnectionDeactivation___block_invoke;
  v7[3] = &unk_27868A750;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __52__HMDAccessoryBrowser_handleConnectionDeactivation___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 objectForKeyedSubscript:@"connection"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v7 = v4;

  if (v7)
  {
    v5 = *(a1 + 40);
    v6 = [MEMORY[0x277CCA9B8] hmPrivateErrorWithCode:2503];
    [v5 _removeBrowsingConnection:v7 error:v6];
  }
}

- (void)_reprovisionAccessoryWithIdentifier:(id)a3 wiFiPSK:(id)a4 countryCode:(id)a5 withCompletion:(id)a6
{
  v44 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(HMDAccessoryBrowser *)self workQueue];
  dispatch_assert_queue_V2(v14);

  v15 = [(HMDAccessoryBrowser *)self ipAccessoryServerBrowser];
  if (!v15)
  {
    v22 = objc_autoreleasePoolPush();
    v23 = self;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = HMFGetLogIdentifier();
      *v43 = 138543362;
      *&v43[4] = v25;
      _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_ERROR, "%{public}@Unable to reprovision accessory without a IP accessory server browser", v43, 0xCu);
    }

    objc_autoreleasePoolPop(v22);
    v26 = _Block_copy(v13);
    if (!v26)
    {
      goto LABEL_16;
    }

    v27 = MEMORY[0x277CCA9B8];
    v28 = 57;
    goto LABEL_15;
  }

  v16 = [(HMDAccessoryBrowser *)self identifierOfAccessoryBeingReprovisioned];

  if (v16)
  {
    v17 = objc_autoreleasePoolPush();
    v18 = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      *v43 = 138543362;
      *&v43[4] = v20;
      v21 = "%{public}@Unable to reprovision accessory since provisioing is already in progress";
LABEL_12:
      _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_ERROR, v21, v43, 0xCu);

      goto LABEL_13;
    }

    goto LABEL_13;
  }

  v29 = [(HMDAccessoryBrowser *)self currentlyPairingAccessories];
  v30 = [v29 count];

  if (v30)
  {
    v17 = objc_autoreleasePoolPush();
    v18 = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      *v43 = 138543362;
      *&v43[4] = v20;
      v21 = "%{public}@Unable to reprovision accessory since an addAccessory operation is already in progress";
      goto LABEL_12;
    }

LABEL_13:

    objc_autoreleasePoolPop(v17);
    v26 = _Block_copy(v13);
    if (!v26)
    {
LABEL_16:

      goto LABEL_17;
    }

    v27 = MEMORY[0x277CCA9B8];
    v28 = 15;
LABEL_15:
    v31 = [v27 hmErrorWithCode:{v28, *v43}];
    (*(v26 + 2))(v26, v31);

    goto LABEL_16;
  }

  [(HMDAccessoryBrowser *)self setIdentifierOfAccessoryBeingReprovisioned:v10];
  [(HMDAccessoryBrowser *)self setWiFiPSKForAccessoryReprovisioning:v11];
  [(HMDAccessoryBrowser *)self setCountrycodeForAccessoryReprovisioning:v12];
  v33 = objc_autoreleasePoolPush();
  v34 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
  {
    v35 = HMFGetLogIdentifier();
    *v43 = 138543618;
    *&v43[4] = v35;
    *&v43[12] = 2112;
    *&v43[14] = v10;
    _os_log_impl(&dword_229538000, v34, OS_LOG_TYPE_DEFAULT, "%{public}@Start searching for accessory: %@ for reprovisioning", v43, 0x16u);
  }

  objc_autoreleasePoolPop(v33);
  [v15 startDiscoveringWACAccessoryServerWithIdentifier:v10];
  v36 = [(HMDAccessoryBrowser *)self stopReprovisioningTimer];
  [v36 resume];

  v37 = _Block_copy(v13);
  v38 = v37;
  if (v37)
  {
    (*(v37 + 2))(v37, 0);
  }

  v39 = objc_autoreleasePoolPush();
  v40 = self;
  v41 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
  {
    v42 = HMFGetLogIdentifier();
    *v43 = 138543362;
    *&v43[4] = v42;
    _os_log_impl(&dword_229538000, v41, OS_LOG_TYPE_INFO, "%{public}@Started the stop reprovisioning timer", v43, 0xCu);
  }

  objc_autoreleasePoolPop(v39);
LABEL_17:

  v32 = *MEMORY[0x277D85DE8];
}

- (void)reprovisionAccessoryWithIdentifier:(id)a3 wiFiPSK:(id)a4 countryCode:(id)a5 withCompletion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(HMDAccessoryBrowser *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __93__HMDAccessoryBrowser_reprovisionAccessoryWithIdentifier_wiFiPSK_countryCode_withCompletion___block_invoke;
  block[3] = &unk_278688978;
  block[4] = self;
  v20 = v10;
  v21 = v11;
  v22 = v12;
  v23 = v13;
  v15 = v13;
  v16 = v12;
  v17 = v11;
  v18 = v10;
  dispatch_async(v14, block);
}

- (void)activate:(BOOL)a3
{
  v5 = [(HMDAccessoryBrowser *)self workQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __32__HMDAccessoryBrowser_activate___block_invoke;
  v6[3] = &unk_278688650;
  v6[4] = self;
  v7 = a3;
  dispatch_sync(v5, v6);
}

uint64_t __32__HMDAccessoryBrowser_activate___block_invoke(uint64_t a1)
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
    v14 = 2048;
    v15 = v6;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Activating with startDiscovery %ld", &v12, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  if (*(a1 + 40) == 1)
  {
    [*(a1 + 32) _startDiscoveringPairedAccessories:0];
  }

  v7 = [MEMORY[0x277CCAB98] defaultCenter];
  [v7 addObserver:*(a1 + 32) selector:sel_homeLocationChangeNotification_ name:@"HMDHomeRegionExitedNotificationKey" object:0];

  v8 = [MEMORY[0x277CCAB98] defaultCenter];
  [v8 addObserver:*(a1 + 32) selector:sel_homeLocationChangeNotification_ name:@"HMDHomeRegionEnteredNotificationKey" object:0];

  v9 = [MEMORY[0x277CCAB98] defaultCenter];
  [v9 addObserver:*(a1 + 32) selector:sel_handleConnectionDeactivation_ name:@"HMDXPCClientConnectionDidDeactivateNotification" object:0];

  result = [*(a1 + 32) _setBTLEPowerChangeCompletionHandler];
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)discoverAccessoryServer:(id)a3 linkType:(int64_t)a4 errorHandler:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(HMDAccessoryBrowser *)self workQueue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __69__HMDAccessoryBrowser_discoverAccessoryServer_linkType_errorHandler___block_invoke;
  v13[3] = &unk_278688B30;
  v13[4] = self;
  v14 = v8;
  v15 = v9;
  v16 = a4;
  v11 = v9;
  v12 = v8;
  dispatch_async(v10, v13);
}

- (void)stopTrackingBTLEAccessoriesWithIdentifiers:(id)a3
{
  v4 = a3;
  v5 = [(HMDAccessoryBrowser *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __66__HMDAccessoryBrowser_stopTrackingBTLEAccessoriesWithIdentifiers___block_invoke;
  v7[3] = &unk_27868A750;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __66__HMDAccessoryBrowser_stopTrackingBTLEAccessoriesWithIdentifiers___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) btleAccessoryServerBrowser];
  [v2 stopTrackingBTLEAccessoriesWithIdentifiers:*(a1 + 40)];
}

- (void)btleAccessoryReachabilityProbeTimer:(BOOL)a3
{
  v5 = [(HMDAccessoryBrowser *)self workQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __59__HMDAccessoryBrowser_btleAccessoryReachabilityProbeTimer___block_invoke;
  v6[3] = &unk_278688650;
  v6[4] = self;
  v7 = a3;
  dispatch_async(v5, v6);
}

- (void)stopDiscoveringMediaAccessories
{
  v3 = [(HMDAccessoryBrowser *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__HMDAccessoryBrowser_stopDiscoveringMediaAccessories__block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)stopDiscoveringForUnpairedAccessoriesWithLinkType:(int64_t)a3
{
  v5 = [(HMDAccessoryBrowser *)self workQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __73__HMDAccessoryBrowser_stopDiscoveringForUnpairedAccessoriesWithLinkType___block_invoke;
  v6[3] = &unk_27868A0D0;
  v6[4] = self;
  v6[5] = a3;
  dispatch_async(v5, v6);
}

void __73__HMDAccessoryBrowser_stopDiscoveringForUnpairedAccessoriesWithLinkType___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 40);
    v7 = HAPLinkTypeDescription();
    v11 = 138543618;
    v12 = v5;
    v13 = 2112;
    v14 = v7;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Stopping discovery for unpaired accessories with link type: %@", &v11, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v8 = *(a1 + 32);
  v9 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 40)];
  [v8 _stopDiscoveringAccessoriesWithLinkType:v9 force:0 error:0];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)stopDiscoveringAccessoriesWithLinkType:(int64_t)a3
{
  v5 = [(HMDAccessoryBrowser *)self workQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __62__HMDAccessoryBrowser_stopDiscoveringAccessoriesWithLinkType___block_invoke;
  v6[3] = &unk_27868A0D0;
  v6[4] = self;
  v6[5] = a3;
  dispatch_async(v5, v6);
}

void __62__HMDAccessoryBrowser_stopDiscoveringAccessoriesWithLinkType___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 40);
    v7 = HAPLinkTypeDescription();
    v11 = 138543618;
    v12 = v5;
    v13 = 2112;
    v14 = v7;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Stopping discovery for accessories with link type: %@", &v11, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v8 = *(a1 + 32);
  v9 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 40)];
  [v8 _stopDiscoveringAccessoriesWithLinkType:v9 force:1 error:0];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)stopDiscoveringAccessories
{
  v3 = [(HMDAccessoryBrowser *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__HMDAccessoryBrowser_stopDiscoveringAccessories__block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(v3, block);
}

uint64_t __49__HMDAccessoryBrowser_stopDiscoveringAccessories__block_invoke(uint64_t a1)
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
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Stopping discovery for accessories", &v8, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  result = [*(a1 + 32) _stopDiscoveringAccessoriesWithLinkType:0 force:1 error:0];
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)startDiscoveringMediaAccessories
{
  v3 = [(HMDAccessoryBrowser *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__HMDAccessoryBrowser_startDiscoveringMediaAccessories__block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(v3, block);
}

void __55__HMDAccessoryBrowser_startDiscoveringMediaAccessories__block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) isBrowsingAllowed])
  {
    v2 = *(a1 + 32);
    v3 = *MEMORY[0x277D85DE8];

    [v2 _startDiscoveringMediaAccessories];
  }

  else
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 32);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      v9 = 138543362;
      v10 = v7;
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Ignoring request to start discovering media accessories", &v9, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    v8 = *MEMORY[0x277D85DE8];
  }
}

- (void)startDiscoveringAccessoriesWithLinkType:(int64_t)a3
{
  v5 = [(HMDAccessoryBrowser *)self workQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __63__HMDAccessoryBrowser_startDiscoveringAccessoriesWithLinkType___block_invoke;
  v6[3] = &unk_27868A0D0;
  v6[4] = self;
  v6[5] = a3;
  dispatch_async(v5, v6);
}

void __63__HMDAccessoryBrowser_startDiscoveringAccessoriesWithLinkType___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 40);
    v7 = HAPLinkTypeDescription();
    v11 = 138543618;
    v12 = v5;
    v13 = 2112;
    v14 = v7;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Starting discovery for accessories with link Type: %@", &v11, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v8 = *(a1 + 32);
  v9 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 40)];
  [v8 _startDiscoveringAccessoriesWithLinkType:v9];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)startDiscoveringAccessories
{
  v3 = [(HMDAccessoryBrowser *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__HMDAccessoryBrowser_startDiscoveringAccessories__block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(v3, block);
}

uint64_t __50__HMDAccessoryBrowser_startDiscoveringAccessories__block_invoke(uint64_t a1)
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
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Starting discovery for accessories", &v8, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  result = [*(a1 + 32) _startDiscoveringAccessoriesWithLinkType:0];
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)startDiscoveringPairedAccessoriesWithLinkType:(int64_t)a3
{
  v5 = [(HMDAccessoryBrowser *)self workQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __69__HMDAccessoryBrowser_startDiscoveringPairedAccessoriesWithLinkType___block_invoke;
  v6[3] = &unk_27868A0D0;
  v6[4] = self;
  v6[5] = a3;
  dispatch_async(v5, v6);
}

void __69__HMDAccessoryBrowser_startDiscoveringPairedAccessoriesWithLinkType___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 40)];
  [v1 _startDiscoveringPairedAccessories:v2];
}

- (void)startDiscoveringPairedAccessories
{
  v3 = [(HMDAccessoryBrowser *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__HMDAccessoryBrowser_startDiscoveringPairedAccessories__block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(v3, block);
}

- (BOOL)isDiscoveringAccessoriesWithLinkType:(int64_t)a3
{
  v17 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock_with_options();
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [(HMDAccessoryBrowser *)self discoveringAccessoryServerBrowsers];
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v5);
        }

        if ([*(*(&v12 + 1) + 8 * i) linkType] == a3)
        {
          v9 = 1;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v9 = 0;
LABEL_11:

  os_unfair_lock_unlock(&self->_lock);
  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

- (void)resetConfiguration
{
  v3 = [(HMDAccessoryBrowser *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__HMDAccessoryBrowser_resetConfiguration__block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(v3, block);
}

void __41__HMDAccessoryBrowser_resetConfiguration__block_invoke(uint64_t a1)
{
  v31 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) btleAccessoryServerBrowser];
  [v2 resetPairedAccessories];

  v3 = [*(a1 + 32) ipAccessoryServerBrowser];
  [v3 resetPairedAccessories];

  v4 = [*(a1 + 32) chipAccessoryServerBrowser];
  [v4 resetPairedAccessories];

  v5 = [*(a1 + 32) hap2Storage];
  [v5 resetPairedAccessoryIdentifiers];

  v6 = [*(a1 + 32) mediaBrowser];
  v7 = [*(a1 + 32) identifiersOfAssociatedMediaAccessories];
  [v6 deregisterAccessories:v7];

  [*(a1 + 32) resetPairedAccessories];
  v8 = *(a1 + 32);
  v9 = [MEMORY[0x277CCA9B8] hmPrivateErrorWithCode:2500];
  [v8 _stopDiscoveringAccessoriesWithError:v9];

  [*(a1 + 32) _cancelCurrentlyPairingAccessories:2500 linkType:0];
  v10 = [*(a1 + 32) unpairedHAPAccessories];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v11 = [v10 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v26;
    do
    {
      v14 = 0;
      do
      {
        if (*v26 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [*(a1 + 32) removeUnpairedHAPAccessory:*(*(&v25 + 1) + 8 * v14++) completion:&__block_literal_global_439];
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v12);
  }

  v15 = [*(a1 + 32) unassociatedMediaAccessories];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v16 = [v15 countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v22;
    do
    {
      v19 = 0;
      do
      {
        if (*v22 != v18)
        {
          objc_enumerationMutation(v15);
        }

        [*(a1 + 32) removeUnassociatedMediaAccessory:*(*(&v21 + 1) + 8 * v19++) completion:&__block_literal_global_441];
      }

      while (v17 != v19);
      v17 = [v15 countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v17);
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)_handleRemovedAccessoryAdvertisements:(id)a3
{
  v53 = *MEMORY[0x277D85DE8];
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = a3;
  v4 = [obj countByEnumeratingWithState:&v41 objects:v52 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v42;
    v35 = self;
    v29 = *v42;
    do
    {
      v7 = 0;
      v30 = v5;
      do
      {
        if (*v42 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v41 + 1) + 8 * v7);
        v9 = [v8 identifier];
        v10 = [(HMDAccessoryBrowser *)self pairedAccessoryInformationWithIdentifier:v9];

        v11 = [v10 delegate];
        if (objc_opt_respondsToSelector())
        {
          [v11 accessoryBrowser:self didRemoveAccessoryAdvertisement:v8];
          v12 = [v8 identifier];
          [(HMDAccessoryBrowser *)self _notifyDelegateOfReachabilityChange:0 forAccessoryWithIdentifier:v12];
        }

        else
        {
          v39 = 0u;
          v40 = 0u;
          v37 = 0u;
          v38 = 0u;
          v36 = [(HMDAccessoryBrowser *)self unassociatedAccessories];
          v13 = [v36 countByEnumeratingWithState:&v37 objects:v51 count:16];
          if (v13)
          {
            v14 = v13;
            v32 = v11;
            v33 = v10;
            v34 = v7;
            v15 = *v38;
            do
            {
              for (i = 0; i != v14; ++i)
              {
                if (*v38 != v15)
                {
                  objc_enumerationMutation(v36);
                }

                v17 = *(*(&v37 + 1) + 8 * i);
                v18 = [v17 identifier];
                v19 = [v8 identifier];
                v20 = [v18 isEqual:v19];

                if (v20)
                {
                  v21 = v17;
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v22 = v21;
                  }

                  else
                  {
                    v22 = 0;
                  }

                  v23 = v22;

                  if (v23)
                  {
                    [(HMDAccessoryBrowser *)self removeUnassociatedMediaAccessory:v23 completion:&__block_literal_global_437];
                  }

                  else
                  {
                    v24 = objc_autoreleasePoolPush();
                    v25 = self;
                    v26 = HMFGetOSLogHandle();
                    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
                    {
                      v27 = HMFGetLogIdentifier();
                      *buf = 138543874;
                      v46 = v27;
                      v47 = 2112;
                      v48 = v8;
                      v49 = 2112;
                      v50 = v21;
                      _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_ERROR, "%{public}@HAP accessory advertisement data not routed through AccessoryBrowser: %@ - %@", buf, 0x20u);

                      self = v35;
                    }

                    objc_autoreleasePoolPop(v24);
                  }
                }
              }

              v14 = [v36 countByEnumeratingWithState:&v37 objects:v51 count:16];
            }

            while (v14);
            v6 = v29;
            v5 = v30;
            v10 = v33;
            v7 = v34;
            v11 = v32;
          }

          v12 = v36;
        }

        ++v7;
      }

      while (v7 != v5);
      v5 = [obj countByEnumeratingWithState:&v41 objects:v52 count:16];
    }

    while (v5);
  }

  v28 = *MEMORY[0x277D85DE8];
}

- (void)_handleAddedAccessoryAdvertisements:(id)a3
{
  v81 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v66 = [(HMDAccessoryBrowser *)self __isAccessoryBrowsingRequested];
  v65 = [(HMDAccessoryBrowser *)self __isMediaAccessoryBrowsingRequested];
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v5 = v4;
  v68 = [v5 countByEnumeratingWithState:&v69 objects:v80 count:16];
  if (!v68)
  {
    goto LABEL_55;
  }

  v67 = *v70;
  v64 = v5;
  while (2)
  {
    v6 = 0;
    do
    {
      if (*v70 != v67)
      {
        objc_enumerationMutation(v5);
      }

      v7 = *(*(&v69 + 1) + 8 * v6);
      v8 = [v7 identifier];
      v9 = [v7 identifier];
      v10 = [(HMDAccessoryBrowser *)self pairedAccessoryInformationWithIdentifier:v9];

      if (v10)
      {
        v11 = v7;
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
          [v13 setAssociated:1];
          [(HMDAccessoryBrowser *)self _associate:1 hapAccessoryWithAdvertisement:v13];
          v14 = [v10 delegate];
          if (objc_opt_respondsToSelector())
          {
            [v14 accessoryBrowser:self didAddAccessoryAdvertisement:v11];
          }

          v15 = [(HMDAccessoryBrowser *)self mediaBrowser];
          v79 = v8;
          v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v79 count:1];
          [v15 updateSessionsForAccessories:v16];
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
LABEL_32:
            [(HMDAccessoryBrowser *)self _notifyDelegateOfReachabilityChange:1 forAccessoryWithIdentifier:v8];
LABEL_33:

            goto LABEL_34;
          }

          v25 = v11;
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v26 = v25;
          }

          else
          {
            v26 = 0;
          }

          v14 = v26;

          v27 = objc_autoreleasePoolPush();
          v28 = self;
          v29 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            v30 = HMFGetLogIdentifier();
            *buf = 138543618;
            v74 = v30;
            v75 = 2112;
            v76 = v14;
            _os_log_impl(&dword_229538000, v29, OS_LOG_TYPE_ERROR, "%{public}@Unsupported operation - not creating HMDHAPAccessory from advertisement data: %@", buf, 0x16u);

            v5 = v64;
          }

          objc_autoreleasePoolPop(v27);
        }

        goto LABEL_32;
      }

      if (!v66)
      {
        goto LABEL_34;
      }

      v17 = v7;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v18 = v17;
      }

      else
      {
        v18 = 0;
      }

      v13 = v18;

      if (!v13)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v13 = 0;
          goto LABEL_33;
        }

        v31 = v17;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v32 = v31;
        }

        else
        {
          v32 = 0;
        }

        v20 = v32;

        v33 = objc_autoreleasePoolPush();
        v34 = self;
        v35 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          v36 = HMFGetLogIdentifier();
          *buf = 138543618;
          v74 = v36;
          v75 = 2112;
          v76 = v20;
          _os_log_impl(&dword_229538000, v35, OS_LOG_TYPE_ERROR, "%{public}@Unsupported operation - not  creating HMDHAPUnassociatedAccessory from advertisement data: %@", buf, 0x16u);

          v5 = v64;
        }

        objc_autoreleasePoolPop(v33);
LABEL_52:

        goto LABEL_33;
      }

      if (v65)
      {
        [v13 setAssociated:0];
        v19 = [(HMDAccessoryBrowser *)self _unassociatedMediaAccessoryWithIdentifier:v8];
        if (v19)
        {
          v20 = v19;
          v21 = objc_autoreleasePoolPush();
          v22 = self;
          v23 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
          {
            v24 = HMFGetLogIdentifier();
            *buf = 138543362;
            v74 = v24;
            _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_DEBUG, "%{public}@Advertisement is for known accessory, updating", buf, 0xCu);

            v5 = v64;
          }

          objc_autoreleasePoolPop(v21);
          [v20 updateAdvertisementData:v13];
        }

        else
        {
          v37 = [(HMDAccessoryBrowser *)self getActiveWACSession];

          if (v37 && [v13 conformsToProtocol:&unk_283F90B00])
          {
            v38 = objc_autoreleasePoolPush();
            v39 = self;
            v40 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
            {
              v41 = HMFGetLogIdentifier();
              *buf = 138543362;
              v74 = v41;
              _os_log_impl(&dword_229538000, v40, OS_LOG_TYPE_INFO, "%{public}@Advertisement supports WAC matching, checking active sessions for match", buf, 0xCu);
            }

            objc_autoreleasePoolPop(v38);
            v42 = v13;
            v62 = v39;
            v43 = [(HMDAccessoryBrowser *)v39 getActiveWACSession];
            v44 = [v43 wacDeviceID];
            v63 = [v42 matchesWACDeviceID:v44];
            v45 = v42;

            if (v63)
            {
              v49 = [(HMDAccessoryBrowser *)v62 mediaBrowser];
              v50 = [v49 unassociatedAccessoryFromAdvertisementData:v42];

              v51 = [(HMDAccessoryBrowser *)v62 getActiveWACSession];
              v52 = [v51 uuid];
              [v50 setUUID:v52];

              v53 = objc_autoreleasePoolPush();
              v54 = v62;
              v55 = HMFGetOSLogHandle();
              v56 = v55;
              v57 = v45;
              if (v50)
              {
                if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
                {
                  v58 = HMFGetLogIdentifier();
                  *buf = 138543362;
                  v74 = v58;
                  _os_log_impl(&dword_229538000, v56, OS_LOG_TYPE_INFO, "%{public}@Advertisement matches WAC device, performing handoff", buf, 0xCu);
                }

                objc_autoreleasePoolPop(v53);
                v59 = [(HMDAccessoryBrowser *)v54 getActiveWACSession];
                [v59 updateWithMatchingUnassociatedAccessory:v50];
              }

              else
              {
                if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
                {
                  v60 = HMFGetLogIdentifier();
                  v61 = [(HMDAccessoryBrowser *)v54 getActiveWACSession];
                  *buf = 138543874;
                  v74 = v60;
                  v75 = 2112;
                  v76 = v57;
                  v77 = 2112;
                  v78 = v61;
                  _os_log_impl(&dword_229538000, v56, OS_LOG_TYPE_ERROR, "%{public}@Could not create accessory from advertisement %@ for matching WAC device %@", buf, 0x20u);
                }

                objc_autoreleasePoolPop(v53);
                v59 = [(HMDAccessoryBrowser *)v54 getActiveWACSession];
                [v59 cancelConfigurationWithCompletionHandler:&__block_literal_global_433];
              }

              [(HMDAccessoryBrowser *)v54 setActiveWACSession:0];
              goto LABEL_55;
            }
          }

          v46 = [(HMDAccessoryBrowser *)self mediaBrowser];
          v20 = [v46 unassociatedAccessoryFromAdvertisementData:v13];

          if (!v20)
          {
            goto LABEL_33;
          }

          [(HMDAccessoryBrowser *)self addUnassociatedAccessory:v20 forDeviceSetup:0];
        }

        goto LABEL_52;
      }

      v10 = v13;
LABEL_34:

      ++v6;
    }

    while (v68 != v6);
    v47 = [v5 countByEnumeratingWithState:&v69 objects:v80 count:16];
    v68 = v47;
    if (v47)
    {
      continue;
    }

    break;
  }

LABEL_55:

  v48 = *MEMORY[0x277D85DE8];
}

- (void)__inactivate
{
  v3 = [(HMDAccessoryBrowser *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__HMDAccessoryBrowser___inactivate__block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(v3, block);
}

void __35__HMDAccessoryBrowser___inactivate__block_invoke(uint64_t a1)
{
  v33 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  os_unfair_lock_lock_with_options();
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v3 = *(*(a1 + 32) + 64);
  v4 = [v3 countByEnumeratingWithState:&v26 objects:v32 count:16];
  if (v4)
  {
    v5 = *v27;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v27 != v5)
        {
          objc_enumerationMutation(v3);
        }

        if ([*(*(&v26 + 1) + 8 * i) isValid])
        {

          os_unfair_lock_unlock(v2 + 2);
          v11 = objc_autoreleasePoolPush();
          v12 = *(a1 + 32);
          v13 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
          {
            v14 = HMFGetLogIdentifier();
            *buf = 138543362;
            v31 = v14;
            _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Not inactivating, there is an active assertion", buf, 0xCu);
          }

          objc_autoreleasePoolPop(v11);
          goto LABEL_22;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v26 objects:v32 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  os_unfair_lock_unlock(v2 + 2);
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    *buf = 138543362;
    v31 = v10;
    _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Inactivating", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v7);
  [*(a1 + 32) setActive:0];
  if (isWatch())
  {
    [*(a1 + 32) _startOrStopAccessoryDiscovery];
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    v16 = *(a1 + 32);
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = HMFGetLogIdentifier();
      *buf = 138543362;
      v31 = v18;
      _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@No HomeKit App in foreground - disabling BTLE scanning", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v15);
    v19 = *(a1 + 32);
    v20 = [v19 btleAccessoryServerBrowser];
    [v19 _stopDiscoveryForAccessoryServerBrowser:v20];

    v21 = [*(a1 + 32) btleAccessoryServerBrowser];
    [v21 updateScanInBackground:0];

    v22 = [*(a1 + 32) ipAccessoryServerBrowser];
    [v22 stopDiscoveringWACAccessoryServersWithInvalidation:1];

    if (isiOSDevice() || isMac())
    {
      v23 = [*(a1 + 32) hap2AccessoryServerBrowser];
      [v23 stopConfirmingPairedAccessoryReachability];
    }

    v24 = [*(a1 + 32) mediaBrowser];
    [v24 stopDiscoveringAssociatedAccessoriesViaBonjour];
  }

LABEL_22:
  v25 = *MEMORY[0x277D85DE8];
}

- (void)endActiveAssertion:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
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

  if (!v6)
  {
    v13 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"Invalid assertion object" userInfo:0];
    goto LABEL_11;
  }

  v7 = [v6 accessoryBrowser];

  if (v7 != self)
  {
    v13 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"Invalid assertion object not created by HMHomeManager instance" userInfo:0];
LABEL_11:
    objc_exception_throw(v13);
  }

  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v14 = 138543618;
    v15 = v11;
    v16 = 2112;
    v17 = v6;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Releasing active assertion : %@", &v14, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  [v6 invalidate];
  os_unfair_lock_lock_with_options();
  [(NSHashTable *)v9->_activeAssertions removeObject:v6];
  os_unfair_lock_unlock(&v9->_lock);

  v12 = *MEMORY[0x277D85DE8];
}

- (id)beginActiveAssertionWithReason:(id)a3
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
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Taking active assertion with reason: %@", &v12, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [[__HMDPairedAccessoryBrowseAssertion alloc] initWithAccessoryBrowser:v6 reason:v4];
  os_unfair_lock_lock_with_options();
  [(NSHashTable *)v6->_activeAssertions addObject:v9];
  os_unfair_lock_unlock(&v6->_lock);

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (unint64_t)numPairedIPAccessories
{
  v2 = [(HMDAccessoryBrowser *)self __identifiersOfPairedAccessoriesWithTransports:1];
  v3 = [v2 count];

  return v3;
}

- (id)identifiersOfPairedUnknownLinkTypeAccessories
{
  v2 = [(HMDAccessoryBrowser *)self pairedAccessories];
  v3 = [v2 na_map:&__block_literal_global_409];

  return v3;
}

id __68__HMDAccessoryBrowser_identifiersOfPairedUnknownLinkTypeAccessories__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 transports])
  {
    v3 = 0;
  }

  else
  {
    v3 = [v2 identifier];
  }

  return v3;
}

- (BOOL)areThereAnyPairedAccessories
{
  v2 = [(HMDAccessoryBrowser *)self pairedAccessories];
  v3 = [v2 count] != 0;

  return v3;
}

- (id)__identifiersOfPairedAccessoriesWithTransports:(unint64_t)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = [(HMDAccessoryBrowser *)self pairedAccessories];
  v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v4, "count")}];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        if (([v11 transports] & a3) != 0)
        {
          v12 = [v11 identifier];
          [v5 addObject:v12];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  v13 = [v5 copy];
  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (BOOL)isThreadAccessoryWithAccessoryServerIdentifier:(id)a3
{
  v3 = [(HMDAccessoryBrowser *)self pairedHMDHAPAccessoryWithAccessoryServerIdentifier:a3];
  v4 = [v3 findServiceWithServiceType:@"00000701-0000-1000-8000-0026BB765291"];

  return v4 != 0;
}

- (id)pairedHMDHAPAccessoryWithAccessoryServerIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(HMDAccessoryBrowser *)self pairedAccessoryInformationWithIdentifier:v4];
  v6 = [v5 delegate];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  v9 = [v8 hapAccessoryWithIdentifier:v4];

  return v9;
}

- (id)pairedHMDHAPAccessoryWithAccessoryServer:(id)a3
{
  v4 = a3;
  v5 = [v4 identifier];
  v6 = [(HMDAccessoryBrowser *)self pairedAccessoryInformationWithIdentifier:v5];
  v7 = [v6 delegate];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  v10 = [v4 primaryAccessory];

  v11 = [v9 hmdHAPAccessoryWithHAPAccessory:v10];

  return v11;
}

- (id)pairedAccessoryInformationWithSetupID:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [(HMDAccessoryBrowser *)self pairedAccessories];
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
        v10 = [v9 setupHash];
        v11 = [v9 identifier];
        v12 = HAPValidateSetupHash();

        if (v12)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v13 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)pairedAccessoryInformationWithIdentifier:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [(HMDAccessoryBrowser *)self pairedAccessories];
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
        v11 = [v10 isEqualToString:v4];

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

- (void)removePairedAccessoryInfoWithIdentifier:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  os_unfair_lock_lock_with_options();
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = self->_pairedAccessories;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [v9 identifier];
        v11 = [v10 isEqualToString:v4];

        if (v11)
        {
          v12 = v9;

          if (v12)
          {
            [(NSMutableArray *)self->_pairedAccessories removeObject:v12];
          }

          goto LABEL_12;
        }
      }

      v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v12 = 0;
LABEL_12:

  os_unfair_lock_unlock(&self->_lock);
  v13 = *MEMORY[0x277D85DE8];
}

- (void)resetPairedAccessories
{
  os_unfair_lock_lock_with_options();
  [(NSMutableArray *)self->_pairedAccessories removeAllObjects];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)removePairedAccessory:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = v4;
    os_unfair_lock_lock_with_options();
    [(NSMutableArray *)self->_pairedAccessories removeObject:v5];
    os_unfair_lock_unlock(&self->_lock);
    v4 = v5;
  }
}

- (void)addPairedAccessory:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    os_unfair_lock_lock_with_options();
    pairedAccessories = self->_pairedAccessories;
    v15 = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = __42__HMDAccessoryBrowser_addPairedAccessory___block_invoke;
    v18 = &unk_2786812B0;
    v6 = v4;
    v19 = v6;
    v7 = [(NSMutableArray *)pairedAccessories hmf_objectPassingTest:&v15];
    if (v7)
    {
      v8 = objc_autoreleasePoolPush();
      v9 = self;
      v10 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v14 = v8;
        v11 = HMFGetLogIdentifier();
        v12 = [v7 identifier];
        *buf = 138543618;
        v21 = v11;
        v22 = 2112;
        v23 = v12;
        _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Removing existing paired accessory instance %@", buf, 0x16u);

        v8 = v14;
      }

      objc_autoreleasePoolPop(v8);
      [(NSMutableArray *)self->_pairedAccessories removeObject:v7];
    }

    [(NSMutableArray *)self->_pairedAccessories addObject:v6, v14, v15, v16, v17, v18];

    os_unfair_lock_unlock(&self->_lock);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_removeBrowsingConnection:(id)a3 error:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDAccessoryBrowser *)self workQueue];
  dispatch_assert_queue_V2(v8);

  if (v6)
  {
    v9 = [(HMDAccessoryBrowser *)self browsingConnections];
    v10 = observerMatchingConnection(v6, v9);

    if (v10)
    {
      v11 = objc_autoreleasePoolPush();
      v12 = self;
      v13 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = HMFGetLogIdentifier();
        v16 = 138543618;
        v17 = v14;
        v18 = 2112;
        v19 = v6;
        _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@De-registering connection for accessory browsing: %@", &v16, 0x16u);
      }

      objc_autoreleasePoolPop(v11);
      [(HMDAccessoryBrowser *)v12 __removeBrowsingObserver:v10 error:v7];
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)__addBrowsingConnection:(id)a3
{
  v46 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDAccessoryBrowser *)self browsingConnections];
  v6 = observerMatchingConnection(v4, v5);

  if (v6)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543618;
      v43 = v10;
      v44 = 2112;
      v45 = v4;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Already have an active accessory browsing request from the connection: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
  }

  else
  {
    v11 = [objc_alloc(MEMORY[0x277D0F898]) initWithObservedObject:v4];
    v12 = objc_autoreleasePoolPush();
    v13 = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543618;
      v43 = v15;
      v44 = 2112;
      v45 = v4;
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, "%{public}@Registering connection for accessory browsing: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
    objc_initWeak(&location, v13);
    objc_initWeak(&from, v11);
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __47__HMDAccessoryBrowser___addBrowsingConnection___block_invoke;
    v36[3] = &unk_278681288;
    objc_copyWeak(&v37, &location);
    objc_copyWeak(&v38, &from);
    [v11 setDeallocationBlock:v36];
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v16 = v5;
    v17 = [v16 countByEnumeratingWithState:&v32 objects:v41 count:16];
    if (v17)
    {
      v18 = *v33;
      while (2)
      {
        v19 = 0;
        do
        {
          if (*v33 != v18)
          {
            objc_enumerationMutation(v16);
          }

          v20 = [*(*(&v32 + 1) + 8 * v19) observedObject];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          if ((isKindOfClass & (v20 != 0)) != 0)
          {
            v22 = 1;
            goto LABEL_17;
          }

          ++v19;
        }

        while (v17 != v19);
        v17 = [v16 countByEnumeratingWithState:&v32 objects:v41 count:16];
        if (v17)
        {
          continue;
        }

        break;
      }
    }

    v22 = 0;
LABEL_17:

    os_unfair_lock_lock_with_options();
    [(NSMutableSet *)v13->_browsingConnections addObject:v11];
    os_unfair_lock_unlock(&v13->_lock);
    v5 = [(HMDAccessoryBrowser *)v13 browsingConnections];

    if ([v5 count] == 1)
    {
      v23 = objc_autoreleasePoolPush();
      v24 = v13;
      v25 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        v26 = HMFGetLogIdentifier();
        *buf = 138543362;
        v43 = v26;
        _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_INFO, "%{public}@First connection interested in accessory(and media) browsing - starting", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v23);
      [(HMDAccessoryBrowser *)v24 _startDiscoveringAccessoriesWithLinkType:0];
    }

    else if ((v22 & 1) == 0)
    {
      v27 = objc_autoreleasePoolPush();
      v28 = v13;
      v29 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        v30 = HMFGetLogIdentifier();
        *buf = 138543362;
        v43 = v30;
        _os_log_impl(&dword_229538000, v29, OS_LOG_TYPE_INFO, "%{public}@First connection interested in media accessory browsing - starting", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v27);
      [(HMDAccessoryBrowser *)v28 _startDiscoveringMediaAccessories];
    }

    objc_destroyWeak(&v38);
    objc_destroyWeak(&v37);
    objc_destroyWeak(&from);
    objc_destroyWeak(&location);
  }

  v31 = *MEMORY[0x277D85DE8];
}

void __47__HMDAccessoryBrowser___addBrowsingConnection___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_loadWeakRetained((a1 + 40));
  v4 = v3;
  if (WeakRetained && v3)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = WeakRetained;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      v9 = [v4 observedObject];
      *buf = 138543618;
      v15 = v8;
      v16 = 2112;
      v17 = v9;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Handling de-allocation of connection for accessory browsing: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    v10 = [v6 workQueue];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __47__HMDAccessoryBrowser___addBrowsingConnection___block_invoke_400;
    v12[3] = &unk_27868A750;
    v12[4] = v6;
    v13 = v4;
    dispatch_async(v10, v12);
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __47__HMDAccessoryBrowser___addBrowsingConnection___block_invoke_400(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = [MEMORY[0x277CCA9B8] hmPrivateErrorWithCode:2504];
  [v1 __removeBrowsingObserver:v2 error:v3];
}

- (void)__removeBrowsingObserver:(id)a3 error:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDAccessoryBrowser *)self workQueue];
  dispatch_assert_queue_V2(v8);

  if (v6)
  {
    v9 = [(HMDAccessoryBrowser *)self browsingConnections];
    if ([v9 containsObject:v6])
    {
      [v6 setDeallocationBlock:0];
      os_unfair_lock_lock_with_options();
      [(NSMutableSet *)self->_browsingConnections removeObject:v6];
      os_unfair_lock_unlock(&self->_lock);
      v10 = [(HMDAccessoryBrowser *)self browsingConnections];

      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v9 = v10;
      v11 = [v9 countByEnumeratingWithState:&v21 objects:v27 count:16];
      if (v11)
      {
        v12 = *v22;
        while (2)
        {
          v13 = 0;
          do
          {
            if (*v22 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = [*(*(&v21 + 1) + 8 * v13) observedObject];
            objc_opt_class();
            isKindOfClass = objc_opt_isKindOfClass();

            if ((isKindOfClass & (v14 != 0)) != 0)
            {

              goto LABEL_15;
            }

            ++v13;
          }

          while (v11 != v13);
          v11 = [v9 countByEnumeratingWithState:&v21 objects:v27 count:16];
          if (v11)
          {
            continue;
          }

          break;
        }
      }

      v16 = objc_autoreleasePoolPush();
      v17 = self;
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v19 = HMFGetLogIdentifier();
        *buf = 138543362;
        v26 = v19;
        _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_INFO, "%{public}@No more clients interested in accessory browsing - stopping", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v16);
      [(HMDAccessoryBrowser *)v17 _stopDiscoveringAccessoriesWithError:v7];
    }

LABEL_15:
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (BOOL)__isMediaAccessoryBrowsingRequested
{
  v2 = [(HMDAccessoryBrowser *)self browsingConnections];
  v3 = [v2 count] != 0;

  return v3;
}

- (BOOL)__isAccessoryBrowsingRequested
{
  v2 = [(HMDAccessoryBrowser *)self browsingConnections];
  v3 = [v2 count] != 0;

  return v3;
}

- (void)__resetBrowsingConnections
{
  os_unfair_lock_lock_with_options();
  [(NSMutableSet *)self->_browsingConnections removeAllObjects];

  os_unfair_lock_unlock(&self->_lock);
}

- (id)browsingConnections
{
  os_unfair_lock_lock_with_options();
  v3 = [(NSMutableSet *)self->_browsingConnections copy];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setInternalDiscoveryRequest:(BOOL)a3
{
  os_unfair_lock_lock_with_options();
  self->_internalDiscoveryRequest = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)internalDiscoveryRequest
{
  os_unfair_lock_lock_with_options();
  internalDiscoveryRequest = self->_internalDiscoveryRequest;
  os_unfair_lock_unlock(&self->_lock);
  return internalDiscoveryRequest;
}

- (id)dumpBrowsingConnections
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v4 = [(HMDAccessoryBrowser *)self browsingConnections];
  if ([v4 count])
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v5 = v4;
    v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v17;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v17 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [*(*(&v16 + 1) + 8 * i) observedObject];
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
            [v3 appendFormat:@"Browsing(Media): %@\n", v12];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v7);
    }

    v13 = v3;
  }

  else
  {
    v13 = @"None";
  }

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (void)_sendNewAccessoryData:(id)a3 messageName:(id)a4
{
  v35[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ([(HMDAccessoryBrowser *)self __isAccessoryBrowsingRequested])
  {
    v35[0] = v6;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:1];
    v29 = encodeRootObjectForIncomingXPCMessage(v8, 0);

    v34 = v6;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:&v34 count:1];
    v28 = encodeRootObjectForSPIClients(v9);

    v32 = @"kAccessoriesInfoDataKey";
    v33 = v29;
    v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
    v30 = @"kAccessoriesInfoDataKey";
    v31 = v28;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
    v11 = objc_alloc(MEMORY[0x277CCAD78]);
    v12 = [v11 initWithUUIDString:*MEMORY[0x277CD1F88]];
    v13 = [objc_alloc(MEMORY[0x277D0F820]) initWithTarget:v12];
    v14 = [MEMORY[0x277D0F848] messageWithName:v7 destination:v13 payload:v27];
    v15 = v6;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    v17 = v15;
    v18 = v16;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    v20 = (v17 != 0) & isKindOfClass;
    if (!v18)
    {
      v20 = 1;
    }

    if (v20)
    {
      v21 = 1;
    }

    else
    {
      v21 = 5;
    }

    v22 = [[HMDAccessoryBrowserXPCMessageSendPolicy alloc] initWithRequiredEntitlements:v21];
    [v14 setSendPolicy:v22];

    [v14 setRequiresNoSPIEntitlement:1];
    v23 = [(HMDAccessoryBrowser *)self messageDispatcher];
    [v23 sendMessage:v14 completionHandler:0];

    v24 = [v14 mutableCopy];
    [v24 setMessagePayload:v10];
    [v24 setRequiresNoSPIEntitlement:0];
    [v24 setRequiresSPIEntitlement:1];
    v25 = [(HMDAccessoryBrowser *)self messageDispatcher];
    [v25 sendMessage:v24 completionHandler:0];
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (void)_handleRemovedAccessory:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      v10 = 138543618;
      v11 = v8;
      v12 = 2112;
      v13 = v4;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Removed accessory: %@", &v10, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    [(HMDAccessoryBrowser *)v6 _sendNewAccessoryData:v4 messageName:@"kNewAccessoriesRemovedNotificationKey"];
    [(HMDAccessoryBrowser *)v6 setGenerationCounter:[(HMDAccessoryBrowser *)v6 generationCounter]+ 1];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)handleRemovedAccessory:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(HMDAccessoryBrowser *)self workQueue];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __46__HMDAccessoryBrowser_handleRemovedAccessory___block_invoke;
    v6[3] = &unk_27868A750;
    v6[4] = self;
    v7 = v4;
    dispatch_async(v5, v6);
  }
}

- (void)_handleAddedAccessory:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      v10 = 138543618;
      v11 = v8;
      v12 = 2112;
      v13 = v4;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Added accessory: %@", &v10, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    [(HMDAccessoryBrowser *)v6 _sendNewAccessoryData:v4 messageName:@"kNewAccessoriesFoundNotificationKey"];
    [(HMDAccessoryBrowser *)v6 _notifyManagerOfNewAccessory];
    [(HMDAccessoryBrowser *)v6 setGenerationCounter:[(HMDAccessoryBrowser *)v6 generationCounter]+ 1];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)handleAddedAccessory:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(HMDAccessoryBrowser *)self workQueue];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __44__HMDAccessoryBrowser_handleAddedAccessory___block_invoke;
    v6[3] = &unk_27868A750;
    v6[4] = self;
    v7 = v4;
    dispatch_async(v5, v6);
  }
}

- (NSArray)deviceSetupMediaAccessories
{
  os_unfair_lock_lock_with_options();
  v3 = [(NSMutableSet *)self->_deviceSetupMediaAccessories allObjects];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (NSArray)unassociatedMediaAccessories
{
  os_unfair_lock_lock_with_options();
  v3 = [(NSMutableSet *)self->_unassociatedMediaAccessories allObjects];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (id)_unassociatedMediaAccessoryWithIdentifier:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [(HMDAccessoryBrowser *)self unassociatedMediaAccessories];
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

- (id)unassociatedAccessoriesForClientRequest:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = [a3 isEntitledForSPIAccess];
  if (v4)
  {
    [(HMDAccessoryBrowser *)self populateUnassociatedCurrentAccessory];
  }

  v5 = [(HMDAccessoryBrowser *)self unassociatedAccessories];
  v19 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v5, "count")}];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = v5;
  v6 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v22;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v21 + 1) + 8 * i);
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        v12 = v10 != 0;
        v13 = isKindOfClass & v12;
        v14 = v10;
        objc_opt_class();
        v15 = objc_opt_isKindOfClass();

        if (((v4 | v13) & 1) != 0 || (v15 & v12) != 0)
        {
          [v19 addObject:{v14, v19}];
        }
      }

      v7 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v7);
  }

  v16 = [v19 copy];
  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

- (void)resetUnassociatedCurrentAccessory
{
  v12 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock_with_options();
  v3 = self->_unassociatedCurrentAccessory;
  unassociatedCurrentAccessory = self->_unassociatedCurrentAccessory;
  self->_unassociatedCurrentAccessory = 0;

  os_unfair_lock_unlock(&self->_lock);
  if (v3)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      v10 = 138543362;
      v11 = v8;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Resetting unassociated current accessory", &v10, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
    [(HMDAccessoryBrowser *)v6 _sendNewAccessoryData:v3 messageName:@"kNewAccessoriesRemovedNotificationKey"];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)populateUnassociatedCurrentAccessory
{
  v15 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock_with_options();
  if (self->_unassociatedCurrentAccessory)
  {
    v3 = *MEMORY[0x277D85DE8];

    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    v4 = [(HMDAccessoryBrowser *)self mediaBrowser];
    v5 = [v4 currentAccessory];
    objc_storeStrong(&self->_unassociatedCurrentAccessory, v5);

    os_unfair_lock_unlock(&self->_lock);
    if (v5)
    {
      v6 = objc_autoreleasePoolPush();
      v7 = self;
      v8 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = HMFGetLogIdentifier();
        v11 = 138543618;
        v12 = v9;
        v13 = 2112;
        v14 = v5;
        _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Populated unassociated current accessory: %@", &v11, 0x16u);
      }

      objc_autoreleasePoolPop(v6);
      [(HMDAccessoryBrowser *)v7 _sendNewAccessoryData:v5 messageName:@"kNewAccessoriesFoundNotificationKey"];
    }

    v10 = *MEMORY[0x277D85DE8];
  }
}

- (NSArray)unassociatedAccessories
{
  v3 = [MEMORY[0x277CBEB18] array];
  os_unfair_lock_lock_with_options();
  v4 = [(NSMutableSet *)self->_unpairedHAPAccessories allObjects];
  [v3 addObjectsFromArray:v4];

  v5 = [(NSMutableSet *)self->_unassociatedMediaAccessories allObjects];
  [v3 addObjectsFromArray:v5];

  v6 = [(NSMutableSet *)self->_deviceSetupMediaAccessories allObjects];
  [v3 addObjectsFromArray:v6];

  v7 = [(NSMutableSet *)self->_unassociatedWACAccessories allObjects];
  [v3 addObjectsFromArray:v7];

  v8 = self->_unassociatedCurrentAccessory;
  if (v8)
  {
    [v3 addObject:v8];
  }

  os_unfair_lock_unlock(&self->_lock);
  v9 = [v3 copy];

  return v9;
}

- (void)removeUnassociatedAccessory:(id)a3 completion:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v6;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  if (v9)
  {
    [(HMDAccessoryBrowser *)self removeUnassociatedMediaAccessory:v9 completion:v7];
  }

  else
  {
    v10 = v6;
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
      [(HMDAccessoryBrowser *)self removeUnassociatedWACAccessory:v12 completion:v7];
    }

    else
    {
      v13 = v10;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v14 = v13;
      }

      else
      {
        v14 = 0;
      }

      v15 = v14;

      if (v15)
      {
        [(HMDAccessoryBrowser *)self removeUnpairedHAPAccessory:v15 completion:v7];
      }

      else
      {
        v16 = objc_autoreleasePoolPush();
        v17 = self;
        v18 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v19 = HMFGetLogIdentifier();
          v21 = 138543618;
          v22 = v19;
          v23 = 2112;
          v24 = v13;
          _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@Unknown unassociated accessory type: %@ - dropping...", &v21, 0x16u);
        }

        objc_autoreleasePoolPop(v16);
        v7[2](v7);
      }
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)removeUnassociatedAccessoryWithIdentifier:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [(HMDAccessoryBrowser *)self unassociatedAccessories];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = v21 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        v11 = [v10 identifier];
        v12 = [v4 isEqual:v11];

        if (v12)
        {
          v13 = objc_autoreleasePoolPush();
          v14 = self;
          v15 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
          {
            v16 = HMFGetLogIdentifier();
            *buf = 138543618;
            v23 = v16;
            v24 = 2112;
            v25 = v10;
            _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@Removing unassociated accessory: %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v13);
          [(HMDAccessoryBrowser *)v14 removeUnassociatedAccessory:v10 completion:&__block_literal_global_384];
          goto LABEL_13;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v18 objects:v26 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  v17 = *MEMORY[0x277D85DE8];
}

- (id)demoAccessoryServerBrowser
{
  v2 = [(HMDAccessoryBrowser *)self homeManager];
  v3 = [v2 demoModeManager];
  v4 = [v3 demoAccessoryBrowser];

  return v4;
}

- (void)setBrowseableLinkTypes:(id)a3
{
  v4 = a3;
  [(HMDAccessoryBrowser *)self validateLinkTypes:v4];
  os_unfair_lock_lock_with_options();
  browseableLinkTypes = self->_browseableLinkTypes;
  self->_browseableLinkTypes = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)validateLinkTypes:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
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

        [*(*(&v9 + 1) + 8 * v7++) intValue];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  v3 = [(HMDAccessoryBrowser *)self messageDispatcher];
  [v3 deregisterReceiver:self];

  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 removeObserver:self];

  v5.receiver = self;
  v5.super_class = HMDAccessoryBrowser;
  [(HMDAccessoryBrowser *)&v5 dealloc];
}

- (void)updateBroadcastKeyForIdentifier:(id)a3 key:(id)a4 keyUpdatedStateNumber:(id)a5 keyUpdatedTime:(double)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [(HMDAccessoryBrowser *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __96__HMDAccessoryBrowser_updateBroadcastKeyForIdentifier_key_keyUpdatedStateNumber_keyUpdatedTime___block_invoke;
  block[3] = &unk_278684018;
  block[4] = self;
  v18 = v10;
  v19 = v11;
  v20 = v12;
  v21 = a6;
  v14 = v12;
  v15 = v11;
  v16 = v10;
  dispatch_async(v13, block);
}

void __96__HMDAccessoryBrowser_updateBroadcastKeyForIdentifier_key_keyUpdatedStateNumber_keyUpdatedTime___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) btleAccessoryServerBrowser];
  [v2 updateBroadcastKeyForIdentifier:*(a1 + 40) key:*(a1 + 48) keyUpdatedStateNumber:*(a1 + 56) keyUpdatedTime:*(a1 + 64)];
}

- (void)updateStateForIdentifier:(id)a3 stateNumber:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(HMDAccessoryBrowser *)self btleAccessoryServerBrowser];
  [v8 updateStateForIdentifier:v7 stateNumber:v6];
}

- (void)retrieveCurrentStateForIdentifier:(id)a3 stateNumber:(id *)a4 isReachable:(BOOL *)a5 linkQuality:(unint64_t *)a6 lastSeen:(id *)a7
{
  v12 = a3;
  v13 = [(HMDAccessoryBrowser *)self btleAccessoryServerBrowser];
  [v13 retrieveCurrentStateForIdentifier:v12 stateNumber:a4 isReachable:a5 linkQuality:a6 lastSeen:a7];
}

- (void)setQOS:(int64_t)a3
{
  v5 = [(HMDAccessoryBrowser *)self workQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __30__HMDAccessoryBrowser_setQOS___block_invoke;
  v6[3] = &unk_27868A0D0;
  v6[4] = self;
  v6[5] = a3;
  dispatch_async(v5, v6);
}

void __30__HMDAccessoryBrowser_setQOS___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40) == 1;
  v2 = [*(a1 + 32) btleAccessoryServerBrowser];
  [v2 configureBTLEQoSLimits:v1];
}

- (void)configureAccessory:(id)a3 trackState:(BOOL)a4 connectionPriority:(BOOL)a5
{
  v8 = a3;
  v9 = [(HMDAccessoryBrowser *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __72__HMDAccessoryBrowser_configureAccessory_trackState_connectionPriority___block_invoke;
  block[3] = &unk_278681260;
  block[4] = self;
  v12 = v8;
  v13 = a4;
  v14 = a5;
  v10 = v8;
  dispatch_async(v9, block);
}

void __72__HMDAccessoryBrowser_configureAccessory_trackState_connectionPriority___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) btleAccessoryServerBrowser];
  v2 = [*(a1 + 40) identifier];
  [v3 configureAccessoryWithIdentifier:v2 trackState:*(a1 + 48) connectionPriority:*(a1 + 49)];
}

- (void)configureWithHomeManager:(id)a3 mediaBrowserFactory:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HMDAccessoryBrowser *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__HMDAccessoryBrowser_configureWithHomeManager_mediaBrowserFactory___block_invoke;
  block[3] = &unk_278689F98;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

void __68__HMDAccessoryBrowser_configureWithHomeManager_mediaBrowserFactory___block_invoke(uint64_t a1)
{
  v57 = *MEMORY[0x277D85DE8];
  objc_storeWeak((*(a1 + 32) + 168), *(a1 + 40));
  if (isFeatureMatterLocalFabricConfigEnabled())
  {
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v2 = [*(a1 + 40) homes];
    v3 = [v2 countByEnumeratingWithState:&v49 objects:v56 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v50;
      do
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v50 != v5)
          {
            objc_enumerationMutation(v2);
          }

          v7 = *(*(&v49 + 1) + 8 * i);
          v8 = [v7 currentUser];
          v9 = +[HMDUser hmmtrUserPrivilegeFromHMDUserPrivilege:](HMDUser, "hmmtrUserPrivilegeFromHMDUserPrivilege:", [v8 privilege]);
          v10 = [v7 fabric];
          v11 = [v10 accessControl];
          [v11 setCurrentUserPrivilege:v9];
        }

        v4 = [v2 countByEnumeratingWithState:&v49 objects:v56 count:16];
      }

      while (v4);
    }
  }

  v12 = [*(a1 + 40) chipDataSource];
  v13 = [*(a1 + 32) chipAccessoryServerBrowser];
  [v12 configureWithAccessoryServerBrowser:v13];

  if ((_os_feature_enabled_impl() & 1) != 0 || CFPreferencesGetAppBooleanValue(@"MatterOTA", @"/Library/Managed Preferences/mobile/com.apple.homed.plist", 0))
  {
    v14 = [*(a1 + 40) matterSoftwareUpdateProviderDelegate];
    v15 = [*(a1 + 32) chipAccessoryServerBrowser];
    v16 = [v15 softwareUpdateProvider];
    [v14 configureWithSoftwareUpdateProvider:v16];
  }

  v17 = *(a1 + 40);
  v18 = *(a1 + 32);
  v19 = (*(*(a1 + 48) + 16))();
  [v18 setMediaBrowser:v19];

  v20 = [*(a1 + 32) mediaBrowser];
  [v20 setDelegate:*(a1 + 32)];

  v21 = [*(a1 + 32) identifiersOfAssociatedMediaAccessories];
  if ([v21 count])
  {
    v22 = [*(a1 + 32) mediaBrowser];
    [v22 registerAccessories:v21];
  }

  v23 = [*(a1 + 32) chipAccessoryServerBrowser];
  [v23 configure];

  v24 = [*(a1 + 32) demoAccessoryServerBrowser];

  if (v24)
  {
    v25 = [*(a1 + 32) demoAccessoryServerBrowser];
    v26 = *(a1 + 32);
    v27 = [v26 workQueue];
    [v25 setDelegate:v26 queue:v27];

    v28 = [*(a1 + 32) accessoryServerBrowsers];
    v29 = [*(a1 + 32) demoAccessoryServerBrowser];
    [v28 addObject:v29];
  }

  if ((isFeatureMatteriPhoneOnlyPairingControlEnabled() & 1) != 0 || ([*(a1 + 40) featuresDataSource], v30 = objc_claimAutoreleasedReturnValue(), v31 = objc_msgSend(v30, "isRVCEnabled"), v30, v31))
  {
    v32 = [*(a1 + 40) hasLoadedData];
    v33 = objc_autoreleasePoolPush();
    v34 = *(a1 + 32);
    v35 = HMFGetOSLogHandle();
    v36 = os_log_type_enabled(v35, OS_LOG_TYPE_INFO);
    if (v32)
    {
      if (v36)
      {
        v37 = HMFGetLogIdentifier();
        *buf = 138543362;
        v55 = v37;
        _os_log_impl(&dword_229538000, v35, OS_LOG_TYPE_INFO, "%{public}@Configuring matter controller for all homes during configure since home manager data is loaded", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v33);
      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      v46 = 0u;
      v38 = [*(a1 + 40) homes];
      v39 = [v38 countByEnumeratingWithState:&v45 objects:v53 count:16];
      if (v39)
      {
        v40 = v39;
        v41 = *v46;
        do
        {
          for (j = 0; j != v40; ++j)
          {
            if (*v46 != v41)
            {
              objc_enumerationMutation(v38);
            }

            [*(*(&v45 + 1) + 8 * j) prepareOperationalFabricData];
          }

          v40 = [v38 countByEnumeratingWithState:&v45 objects:v53 count:16];
        }

        while (v40);
      }
    }

    else
    {
      if (v36)
      {
        v43 = HMFGetLogIdentifier();
        *buf = 138543362;
        v55 = v43;
        _os_log_impl(&dword_229538000, v35, OS_LOG_TYPE_INFO, "%{public}@Delaying configuring matter controller for all homes during configure since home manager data is not yet loaded", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v33);
    }
  }

  v44 = *MEMORY[0x277D85DE8];
}

HMDMediaBrowser *__48__HMDAccessoryBrowser_configureWithHomeManager___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[HMDMediaBrowser alloc] initWithHomeManager:v2];

  return v3;
}

- (HMDAccessoryBrowser)initWithMessageDispatcher:(id)a3 injectedSettings:(id)a4
{
  v84 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v79.receiver = self;
  v79.super_class = HMDAccessoryBrowser;
  v9 = [(HMDAccessoryBrowser *)&v79 init];
  if (v9)
  {
    v10 = objc_alloc(MEMORY[0x277CCAD78]);
    v11 = [v10 initWithUUIDString:*MEMORY[0x277CD1F88]];
    uuid = v9->_uuid;
    v9->_uuid = v11;

    v13 = [v8 workQueue];
    workQueue = v9->_workQueue;
    v9->_workQueue = v13;

    v9->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v9->_messageDispatcher, a3);
    v9->_generationCounter = 0;
    v9->_btlePowerState = 0;
    v15 = [MEMORY[0x277CBEB18] array];
    accessoryServerBrowsers = v9->_accessoryServerBrowsers;
    v9->_accessoryServerBrowsers = v15;

    v17 = +[HMDFeaturesDataSource defaultDataSource];
    v18 = [v17 isPersistAccessoryServerIPCacheEnabled];

    if (v18)
    {
      v19 = [[HMDHAPAccessoryServerIPCache alloc] initWithQueue:v9->_workQueue];
      ipAccessoryServerCache = v9->_ipAccessoryServerCache;
      v9->_ipAccessoryServerCache = v19;
    }

    v21 = [(HMDAccessoryBrowser *)v9 ipAccessoryServerCache];
    v22 = [v8 createIpAccessoryBrowserWithCache:v21];
    ipAccessoryServerBrowser = v9->_ipAccessoryServerBrowser;
    v9->_ipAccessoryServerBrowser = v22;

    [(HAPAccessoryServerBrowserIP *)v9->_ipAccessoryServerBrowser setDelegate:v9 queue:v9->_workQueue];
    [(NSMutableArray *)v9->_accessoryServerBrowsers addObject:v9->_ipAccessoryServerBrowser];
    v24 = [v8 createBtleAccessoryBrowser];
    btleAccessoryServerBrowser = v9->_btleAccessoryServerBrowser;
    v9->_btleAccessoryServerBrowser = v24;

    [(HAPAccessoryServerBrowserBTLE *)v9->_btleAccessoryServerBrowser setDelegate:v9 queue:v9->_workQueue];
    [(NSMutableArray *)v9->_accessoryServerBrowsers addObject:v9->_btleAccessoryServerBrowser];
    v26 = [v8 createCHIPAccessoryBrowser];
    chipAccessoryServerBrowser = v9->_chipAccessoryServerBrowser;
    v9->_chipAccessoryServerBrowser = v26;

    [(HMMTRAccessoryServerBrowser *)v9->_chipAccessoryServerBrowser setDelegate:v9 queue:v9->_workQueue];
    [(NSMutableArray *)v9->_accessoryServerBrowsers addObject:v9->_chipAccessoryServerBrowser];
    v28 = [[HMDHAP2Storage alloc] initWithAccessoryBrowser:v9];
    hap2Storage = v9->_hap2Storage;
    v9->_hap2Storage = v28;

    v30 = [(HMDAccessoryBrowser *)v9 hap2Storage];
    v31 = [v8 createHap2AccessoryBrowserWithStorage:v30];
    hap2AccessoryServerBrowser = v9->_hap2AccessoryServerBrowser;
    v9->_hap2AccessoryServerBrowser = v31;

    v33 = v9->_hap2AccessoryServerBrowser;
    if (v33)
    {
      [(HAPAccessoryServerBrowser *)v33 setDelegate:v9 queue:v9->_workQueue];
      [(NSMutableArray *)v9->_accessoryServerBrowsers addObject:v9->_hap2AccessoryServerBrowser];
    }

    v34 = [MEMORY[0x277CBEB18] array];
    pairedAccessories = v9->_pairedAccessories;
    v9->_pairedAccessories = v34;

    v36 = [MEMORY[0x277CBEB58] set];
    unpairedHAPAccessories = v9->_unpairedHAPAccessories;
    v9->_unpairedHAPAccessories = v36;

    v38 = [MEMORY[0x277CBEB58] set];
    unassociatedMediaAccessories = v9->_unassociatedMediaAccessories;
    v9->_unassociatedMediaAccessories = v38;

    v40 = [MEMORY[0x277CBEB58] set];
    deviceSetupMediaAccessories = v9->_deviceSetupMediaAccessories;
    v9->_deviceSetupMediaAccessories = v40;

    v42 = [MEMORY[0x277CBEB58] set];
    unassociatedWACAccessories = v9->_unassociatedWACAccessories;
    v9->_unassociatedWACAccessories = v42;

    v44 = [HMDWACBrowser alloc];
    v45 = objc_alloc_init(HMDWACScanner);
    v46 = [(HMDWACBrowser *)v44 initWithWACScanner:v45 messageDispatcher:v9->_messageDispatcher];
    wacBrowser = v9->_wacBrowser;
    v9->_wacBrowser = v46;

    [(HMDWACBrowser *)v9->_wacBrowser setDelegate:v9 queue:v9->_workQueue];
    v48 = [MEMORY[0x277CBEB58] set];
    browsingConnections = v9->_browsingConnections;
    v9->_browsingConnections = v48;

    v50 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    activeAssertions = v9->_activeAssertions;
    v9->_activeAssertions = v50;

    v52 = [MEMORY[0x277CBEB58] set];
    discoveredAccessoryServerIdentifiers = v9->_discoveredAccessoryServerIdentifiers;
    v9->_discoveredAccessoryServerIdentifiers = v52;

    v54 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    tombstonedHAPAccessoryServers = v9->_tombstonedHAPAccessoryServers;
    v9->_tombstonedHAPAccessoryServers = v54;

    v56 = [MEMORY[0x277CBEB18] array];
    currentlyPairingAccessories = v9->_currentlyPairingAccessories;
    v9->_currentlyPairingAccessories = v56;

    v58 = [MEMORY[0x277CBEB18] array];
    currentlyPairingProgressHandlers = v9->_currentlyPairingProgressHandlers;
    v9->_currentlyPairingProgressHandlers = v58;

    v60 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    discoveringBLEAccessoryServerIdentifiers = v9->_discoveringBLEAccessoryServerIdentifiers;
    v9->_discoveringBLEAccessoryServerIdentifiers = v60;

    v62 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    discoveringAccessoryServerBrowsers = v9->_discoveringAccessoryServerBrowsers;
    v9->_discoveringAccessoryServerBrowsers = v62;

    v9->_active = 0;
    v64 = [v8 createAuthServerWithDelegate:v9];
    authServer = v9->_authServer;
    v9->_authServer = v64;

    v66 = [objc_alloc(MEMORY[0x277D0F920]) initWithTimeInterval:0 options:120.0];
    stopReprovisioningTimer = v9->_stopReprovisioningTimer;
    v9->_stopReprovisioningTimer = v66;

    [(HMFTimer *)v9->_stopReprovisioningTimer setDelegate:v9];
    v68 = [(HMDAccessoryBrowser *)v9 workQueue];
    [(HMFTimer *)v9->_stopReprovisioningTimer setDelegateQueue:v68];

    v69 = [objc_alloc(MEMORY[0x277D0F920]) initWithTimeInterval:0 options:60.0];
    stopBrowsingAccessoriesNeedingReprovisioningTimer = v9->_stopBrowsingAccessoriesNeedingReprovisioningTimer;
    v9->_stopBrowsingAccessoriesNeedingReprovisioningTimer = v69;

    [(HMFTimer *)v9->_stopBrowsingAccessoriesNeedingReprovisioningTimer setDelegate:v9];
    v71 = [(HMDAccessoryBrowser *)v9 workQueue];
    [(HMFTimer *)v9->_stopBrowsingAccessoriesNeedingReprovisioningTimer setDelegateQueue:v71];

    v72 = objc_autoreleasePoolPush();
    v73 = v9;
    v74 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v74, OS_LOG_TYPE_INFO))
    {
      v75 = HMFGetLogIdentifier();
      *buf = 138543618;
      v81 = v75;
      v82 = 2112;
      v83 = @"Enabled";
      _os_log_impl(&dword_229538000, v74, OS_LOG_TYPE_INFO, "%{public}@Whole Home Bluetooth %@ on target OS", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v72);
    browseableLinkTypes = v73->_browseableLinkTypes;
    v73->_browseableLinkTypes = &unk_283E75BC0;

    [(HMDAccessoryBrowser *)v73 _registerForMessages];
    [(HMDAccessoryBrowser *)v73 _registerForNotifications];
  }

  v77 = *MEMORY[0x277D85DE8];
  return v9;
}

- (HMDAccessoryBrowser)initWithMessageDispatcher:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(HMDAccessoryBrowserInjectedSettingsDevice);
  v6 = [(HMDAccessoryBrowser *)self initWithMessageDispatcher:v4 injectedSettings:v5];

  return v6;
}

void __34__HMDAccessoryBrowser_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v392;
  logCategory__hmf_once_v392 = v1;
}

@end