@interface HMMTRAccessoryServer
+ (BOOL)certificateSubjectHasCATs:(id)a3;
+ (id)_convertPairingFailureError:(id)a3;
+ (id)logCategory;
+ (id)shortDescription;
+ (void)propagateCharactersticValuesToAccessory:(id)a3;
- (BOOL)_controllerIsOnWiFiNetworkWhichSupportsBothBands;
- (BOOL)_delegateRespondsToSelector:(SEL)a3;
- (BOOL)_handleUnmappedAttributeReport:(id)a3;
- (BOOL)_ignoreAttributeReport:(id)a3;
- (BOOL)_isAllowedForRawEventDictionaryHandling:(id)a3;
- (BOOL)_isBridgedBasicInformation:(id)a3 reportClusterID:(id)a4;
- (BOOL)_legacyHMDHAPAccessoryDelegateShouldHandleEvent:(id)a3;
- (BOOL)_populateCommissioningParameterCountryCode:(id)a3;
- (BOOL)_shouldUpdateUnreachableState;
- (BOOL)accessoryWithSameDiscriminatorDiscovered;
- (BOOL)doesMatchDiscriminator:(id)a3;
- (BOOL)handleNotAvailableImageResponseCounter;
- (BOOL)hasNetworkProvisioningFailed:(unsigned int)a3;
- (BOOL)hasPreferredLocalLink;
- (BOOL)isDisabled;
- (BOOL)isEqual:(id)a3;
- (BOOL)isLocallyDiscoveredAndMatchesDiscriminatorOfSetupPayload:(id)a3;
- (BOOL)isPairedInStorage;
- (BOOL)isReadyToReadFromMTRDevice;
- (BOOL)matchesSetupID:(id)a3;
- (BOOL)matchesSetupID:(id)a3 serverIdentifier:(id)a4;
- (BOOL)removePairingForCurrentControllerOnQueue:(id)a3 completion:(id)a4;
- (BOOL)tryPairingPassword:(id)a3 onboardingSetupPayloadString:(id)a4 error:(id *)a5;
- (BOOL)updateProductAttributes;
- (HAPAccessory)primaryAccessory;
- (HMMTRAccessoryPairingEndContext)pairingEndContextWhenRemove;
- (HMMTRAccessoryServer)initWithKeystore:(id)a3 browser:(id)a4;
- (HMMTRAccessoryServerBrowser)browser;
- (HMMTRAccessoryServerDelegate)chipDelegate;
- (HMMTRAccessoryServerDiagnosticsEventDelegate)diagnosticsEventDelegate;
- (HMMTRPairing)currentPairing;
- (HMMTRReportObserver)hmdHAPAccessoryDelegate;
- (MTRDeviceController)deviceController;
- (NSData)rootPublicKey;
- (NSDictionary)endpointToDeviceTypesMap;
- (NSError)removeReason;
- (NSHashTable)reportObservers;
- (NSNumber)supportedLinkLayerTypes;
- (double)handleBusyImageResponseCounter;
- (id)_categoryFromAccessoryInfo:(id)a3 endpoint:(id)a4;
- (id)_categoryFromTopology:(id)a3 endpoint:(id)a4;
- (id)_convertFetchedCredentials:(id)a3;
- (id)_distinctEndpointsHavingHapServicesForTopology:(id)a3;
- (id)_endCurrentMetricTimeWithName:(id)a3;
- (id)_fetchSupportedThreadFeatures;
- (id)_getFirstNonOtherCategory:(id)a3;
- (id)_getOperationalHardwareAddressFromReadValue:(id)a3;
- (id)_getOperationalNetworkAddressForAccessory:(id)a3;
- (id)_getSupportedLinkLayerTypesForAccessory:(id)a3;
- (id)_getThreadHardwareAddressFromReadValue:(id)a3;
- (id)_hapAccessoryAtEndpoint:(id)a3;
- (id)_matterCredentialsFromTHCredentials:(id)a3;
- (id)_pairingSetupPayload;
- (id)_populateHandlingForCharacteristics:(id)a3;
- (id)_processEvent:(id)a3;
- (id)_progressStateToString:(int64_t)a3;
- (id)_readFixedCharacteristicValue:(id)a3;
- (id)_readLocallyMaintainedCharacteristicValue:(id)a3;
- (id)_readPastEventsFromAccessory:(id)a3 forClusters:(id)a4;
- (id)_setupPayloadForLastCommissioning;
- (id)accessoryProductID;
- (id)accessoryVendorID;
- (id)attributeDescriptions;
- (id)collectDiagnosticsForAccessory:(id)a3;
- (id)connectedNetworkIDFromReadValue:(id)a3;
- (id)createDoorLockClusterObjectWithFlow:(id)a3;
- (id)currentDeviceTypeFromDCL;
- (id)currentWiFiNetworkInfo;
- (id)dataOfReadValue:(id)a3;
- (id)deviceID;
- (id)deviceTopology;
- (id)dumpState:(id)a3;
- (id)endPointForHapAccessory:(id)a3;
- (id)endpointForDiagnosticCluster:(id)a3 clusterName:(id)a4 amongEndpoints:(id)a5 topology:(id)a6 device:(id)a7 definitelyUnsupported:(BOOL *)a8;
- (id)endpointsForHAPAccessory:(id)a3 topology:(id)a4;
- (id)ensureCommissioningID;
- (id)errorCountOfThreadNetworkDiagnostics:(id)a3;
- (id)errorCountOfWiFiNetworkDiagnostics:(id)a3;
- (id)generalDiagnosticsClusterFromEndpoints:(id)a3 topology:(id)a4 device:(id)a5 definitelyUnsupported:(BOOL *)a6;
- (id)getConnectNetworkIDForAccessory:(id)a3;
- (id)getOperationalNetworkAddressForAccessory:(id)a3;
- (id)getSupportedLinkLayerTypesForAccessory:(id)a3;
- (id)getSupportedLinkLayerTypesFromNetworkCommissioningClusterFeatureMap:(id)a3;
- (id)getThreadNetworkLinkQualityForAccessory:(id)a3;
- (id)getWiFiNetworkLinkQualityForAccessory:(id)a3;
- (id)highestRSSIofThreadNetworkDiagnostics:(id)a3;
- (id)logIdentifier;
- (id)mergeExistingAclEntries:(id)a3 withAdminNodes:(id)a4 regularUserNodes:(id)a5;
- (id)mergeExistingAclEntries:(id)a3 withNewNodes:(id)a4 withPrivilege:(unsigned __int8)a5;
- (id)networkCommissioningClusterFromEndpoints:(id)a3 topology:(id)a4 device:(id)a5 definitelyUnsupported:(BOOL *)a6;
- (id)numberOfReadValue:(id)a3;
- (id)packetCountOfThreadNetworkDiagnostics:(id)a3;
- (id)packetCountOfWiFiNetworkDiagnostics:(id)a3;
- (id)populateACLEntriesAfterPairing;
- (id)populateACLEntriesForPairing;
- (id)privateDescription;
- (id)protocolMappingStateForCharacteristic:(id)a3;
- (id)readPastDiagnosticEventsFromAccessory:(id)a3 fromEventNumber:(id)a4;
- (id)removeNode:(id)a3 withPrivilge:(unsigned __int8)a4 fromExistingAclEntries:(id)a5;
- (id)stringOfReadValue:(id)a3;
- (id)threadNetworkDiagnosticsClusterFromEndpoints:(id)a3 topology:(id)a4 device:(id)a5 definitelyUnsupported:(BOOL *)a6;
- (id)wifiNetworkDiagnosticsClusterFromEndpoints:(id)a3 topology:(id)a4 device:(id)a5 definitelyUnsupported:(BOOL *)a6;
- (id)wifiNetworkInfoForSSID:(id)a3;
- (int64_t)_getLinkLayerTypeForAccessory:(id)a3;
- (int64_t)getLinkLayerTypeForAccessory:(id)a3;
- (int64_t)linkLayerType;
- (int64_t)pairedState;
- (os_state_data_s)createStateData:(id)a3 data:(id)a4;
- (unint64_t)_registerStateCaptureHandlerWithStateCaptureInformation:(id)a3;
- (unint64_t)hash;
- (unint64_t)pairingProgress;
- (void)_buildHAPCategoriesFromCHIPWithCompletionHandler:(id)a3;
- (void)_clearCommissioneeInfoAfterPairingCompletion;
- (void)_collectNetworkCredentials:(id)a3;
- (void)_commissionWithParams:(id)a3;
- (void)_continueNetworkProvisioning;
- (void)_controller:(id)a3 commissioningAndPairedNodeRecoveryComplete:(id)a4 nodeID:(id)a5 abstractMetrics:(id)a6;
- (void)_controller:(id)a3 commissioningComplete:(id)a4 nodeID:(id)a5 abstractMetrics:(id)a6;
- (void)_createFirmwareUpdateServiceWithInstanceID:(int64_t)a3 device:(id)a4 completionHandler:(id)a5;
- (void)_deleteAccessoryServerData;
- (void)_deregisterDeviceConnectedStateCaptureHandler;
- (void)_deregisterPartsListStateCaptureHandler;
- (void)_deregisterStateCaptureHandlers;
- (void)_deviceInternalStateChanged:(id)a3;
- (void)_disconnectWithError:(id)a3;
- (void)_endpointForOTARequestorWithTopology:(id)a3 mtrDevice:(id)a4 callbackQueue:(id)a5 completionHandler:(id)a6;
- (void)_fetchAdditionalThreadNetworkInformationFromDevice:(id)a3 completion:(id)a4;
- (void)_fetchAdditionalThreadNetworkInformationWithCompletion:(id)a3;
- (void)_fetchCurrentPairingWithCompletionHandler:(id)a3;
- (void)_fetchSerialNumberWithCompletionHandler:(id)a3;
- (void)_finalizePairing;
- (void)_findSystemCommissionerPairingMatchingSetupPayload:(id)a3 systemCommissionerPairings:(id)a4 pairingManager:(id)a5;
- (void)_finishMaximumDurationCollection;
- (void)_flushMTRDeviceReadReadyHandlers;
- (void)_getCommissioneeHasActiveNetworkWithNetworkCommissioningCluster:(id)a3 completion:(id)a4;
- (void)_getCommissioneeNetworkCommissioningClusterEndpointWithDevice:(id)a3 completion:(id)a4;
- (void)_handleAddNocCompletionDuringSystemCommissionerFabricCommissioningWithDispatchGroup:(id)a3 fabricID:(id)a4 rootCACert:(id)a5 ipk:(id)a6 controllerNodeID:(id)a7 commissioneeNodeID:(id)a8 error:(id)a9;
- (void)_handleAddTrustedRootCertificateCompletionDuringSystemCommissionerFabricCommissioningWithDispatchGroup:(id)a3 fabricID:(id)a4 rootCACert:(id)a5 operationalPublicKey:(id)a6 ipk:(id)a7 controllerNodeID:(id)a8;
- (void)_handleArmFailSafeResponseDuringSystemCommissionerFabricCommissioningWithDispatchGroup:(id)a3 error:(id)a4;
- (void)_handleCSRResponseDuringSystemCommissionerFabricCommissioningWithDispatchGroup:(id)a3 responseParams:(id)a4 error:(id)a5;
- (void)_handleDiagnosticsEvent:(id)a3;
- (void)_handleEventReport:(id)a3;
- (void)_handleNewSystemCommissionerFabricNodeID:(id)a3 dispatchGroup:(id)a4 fabricID:(id)a5 rootCACert:(id)a6 operationalPublicKey:(id)a7 ipk:(id)a8 controllerNodeID:(id)a9 device:(id)a10;
- (void)_handlePairingFailureWithError:(id)a3 context:(id)a4;
- (void)_handleSystemCommissionerRootCertificate:(id)a3 fabricID:(id)a4 ipk:(id)a5 controllerNodeID:(id)a6 dispatchGroup:(id)a7 csrResponseParams:(id)a8 device:(id)a9;
- (void)_handleThreadRadioStateChanged;
- (void)_handleUnreachableStateWithError:(id)a3;
- (void)_initAccessoriesForServer;
- (void)_metricCollectionWithError:(id)a3 description:(id)a4 progressState:(int64_t)a5;
- (void)_notifyDelegateOfAccessoryMatchingCommissioningDiscriminatorDiscovered;
- (void)_notifyDelegateOfMTRMetrics:(id)a3;
- (void)_notifyDelegateOfMatterAccessoryIsWEDAccessory:(id)a3;
- (void)_notifyDelegateOfMatterAccessoryThreadCapabilities:(id)a3;
- (void)_notifyDelegateOfMatterAccessoryVendorID:(id)a3 productID:(id)a4 deviceType:(id)a5;
- (void)_notifyDelegateOfPairingProgress:(int64_t)a3 error:(id)a4;
- (void)_notifyDelegateOfPairingStep:(unint64_t)a3;
- (void)_notifyDelegateOfSupportedLinkLayerTypes:(id)a3;
- (void)_onNetworkScanResults:(id)a3;
- (void)_onThreadScanResults:(id)a3;
- (void)_onUnpairFinishedWithError:(id)a3 queue:(id)a4 completion:(id)a5;
- (void)_onWiFiScanResults:(id)a3;
- (void)_openPairingWindowForDuration:(double)a3 completionHandler:(id)a4;
- (void)_openPairingWindowWithPINForDuration:(double)a3 completionHandler:(id)a4;
- (void)_pairOnSystemCommissionerFabric;
- (void)_pairOnSystemCommissionerFabricUnlessAlreadyPairedWithRootPublicKey:(id)a3;
- (void)_pairingComplete:(id)a3 context:(id)a4;
- (void)_persistAccessoryServerData;
- (void)_populateServiceForCharacteristic:(id)a3;
- (void)_populateThreadCredentials:(id)a3 completion:(id)a4;
- (void)_populateWifiCredentials:(id)a3 scanResults:(id)a4 completion:(id)a5;
- (void)_prepareThreadCredentials;
- (void)_queryBridgedAccessoryAndUnreachablePerCacheForCharacteristic:(id)a3 completion:(id)a4;
- (void)_queueOpenPairingWindowWithPINForDuration:(double)a3 completionHandler:(id)a4;
- (void)_readCharacteristicValueFromCacheAfterConfirmingBridgedAccessroyReachabilityWithCharacteristic:(id)a3 responseHandler:(id)a4;
- (void)_readCharacteristicValueFromCacheWithCharacteristic:(id)a3 responseHandler:(id)a4;
- (void)_readCharacteristicValues:(id)a3 timeout:(double)a4 skipCache:(BOOL)a5 sendNotification:(BOOL)a6 completionQueue:(id)a7 completionHandler:(id)a8;
- (void)_rebuildHAPServicesFromCHIPWithCompletionHandler:(id)a3;
- (void)_reportPairingComplete;
- (void)_requestAccessoryNetworkScanWithCompletionHandler:(id)a3;
- (void)_retrieveRootEndpointPartsListWithDevice:(id)a3 completion:(id)a4;
- (void)_retryPairing;
- (void)_returnMatterSupportPairingAsStagedPairing;
- (void)_setCategoryForPrimaryAccessory:(id)a3;
- (void)_setSupportedLinkLayerTypes:(id)a3;
- (void)_setupMatterDevice;
- (void)_setupPairingProperties;
- (void)_setupThreadPairing;
- (void)_startCurrentMetricTimeWithName:(id)a3;
- (void)_startLocallyDiscoveredAccessoryServerPairingWithRequest:(id)a3 fabricID:(id)a4;
- (void)_startPairingWithReadyToCancelHandler:(id)a3 error:(id *)a4 pairingEndContext:(id *)a5;
- (void)_tryPairingUsingMatterSupport;
- (void)_tryPairingWithOnboardingPayload:(id)a3 systemCommissionerPairings:(id)a4 pairingManager:(id)a5;
- (void)_unpair:(id)a3 completion:(id)a4;
- (void)_updateAdditionalCharacteristicsFromCharacteristicUpdate:(id)a3 service:(id)a4 path:(id)a5 completionHandler:(id)a6;
- (void)_updateAttributeTimer:(id)a3 report:(id)a4 timeout:(double)a5 server:(id)a6;
- (void)_updateDefaultEntriesForBridgedClusterIDCharacteristicMap:(id)a3;
- (void)_updateDefaultEntriesForClusterIDCharacteristicMap:(id)a3;
- (void)_updateDelegateOfConnectionStatus:(BOOL)a3 withError:(id)a4;
- (void)_updateMetricWithProgressState:(int64_t)a3 error:(id)a4;
- (void)_updatedCharacteristicsForAttributeReport:(id)a3 completionHandler:(id)a4;
- (void)_updatedCharacteristicsForEventReport:(id)a3 completionHandler:(id)a4;
- (void)_writeCharacteristicValues:(id)a3 responseTuples:(id)a4 completionQueue:(id)a5 completionHandler:(id)a6;
- (void)abortStagingWithError:(id)a3 context:(id)a4;
- (void)addMetricsWithDuration:(id)a3 metricsKey:(id)a4;
- (void)addPairing:(id)a3 completionQueue:(id)a4 completionHandler:(id)a5;
- (void)addReportObserver:(id)a3;
- (void)announceOtaProvider:(id)a3 providerEndpoint:(id)a4 immediateAnnouncement:(BOOL)a5 delayCounter:(int64_t)a6 completionHandler:(id)a7;
- (void)commitStagedPairing;
- (void)configureDefaultRequiresThreadRouter;
- (void)controller:(id)a3 commissioningSessionEstablishmentDone:(id)a4;
- (void)controller:(id)a3 readCommissioneeInfo:(id)a4;
- (void)dealloc;
- (void)device:(id)a3 receivedAttributeReport:(id)a4;
- (void)device:(id)a3 receivedEventReport:(id)a4;
- (void)device:(id)a3 stateChanged:(unint64_t)a4;
- (void)deviceCachePrimed:(id)a3;
- (void)deviceConfigurationChanged:(id)a3;
- (void)disable;
- (void)disconnectWithError:(id)a3;
- (void)discoverAccessories;
- (void)dispatchAfter:(unint64_t)a3 block:(id)a4;
- (void)dispatchBlock:(id)a3;
- (void)enableEvents:(BOOL)a3 forCharacteristics:(id)a4 withCompletionHandler:(id)a5 queue:(id)a6;
- (void)enumerateHAPServices:(id)a3;
- (void)fetchColorControlClusterForHapAccessory:(id)a3 completionHandler:(id)a4;
- (void)fetchExtendedMACAddressFromDevice:(id)a3 completion:(id)a4;
- (void)fetchLastKnownPairingsWithCompletionHandler:(id)a3;
- (void)fetchPairingsWithCompletionHandler:(id)a3;
- (void)fetchSoftwareVersion:(BOOL)a3 completionHandler:(id)a4;
- (void)fetchWEDSupportInformationFromDevice:(id)a3 completion:(id)a4;
- (void)findSystemCommissionerPairingMatchingSetupPayload:(id)a3 systemCommissionerPairings:(id)a4 pairingManager:(id)a5;
- (void)finishPairing;
- (void)generateAccessoryConfigurationForReason:(id)a3 completionHandler:(id)a4;
- (void)handleAttestationComplete;
- (void)handleCHIPRemoteRequest:(id)a3 completion:(id)a4;
- (void)handleCHIPRemoteRequest:(id)a3 device:(id)a4 completion:(id)a5;
- (void)handleCommissioneeHasReceivedNetworkCredentials;
- (void)handleDownloadLogCommand:(id)a3 device:(id)a4 completion:(id)a5;
- (void)handleFirmwareUpdateStatusChange:(int64_t)a3;
- (void)handleRemoveFromBrowser;
- (void)handleThreadDirectConnectionSleepyTypeChange:(BOOL)a3;
- (void)handleThreadNetworkStateChangedNotification:(id)a3;
- (void)handleUpdatesForCharacteristics:(id)a3 stateNumber:(id)a4;
- (void)handleWEDDisconnectedWhileNotPairing;
- (void)identifyWithCompletion:(id)a3;
- (void)isDiscoverableWithCompletion:(id)a3;
- (void)listPairingsWithCompletionQueue:(id)a3 completionHandler:(id)a4;
- (void)markAsSubscribed;
- (void)markForResubscription;
- (void)notifyDelegateOfUnauthenticatedAccessoryPromptEnded;
- (void)notifyDelegateOfUnauthenticatedAccessoryPromptStarted;
- (void)notifyMatterFirmwareRevisionNumberCharacteristicChanged;
- (void)openPairingWindowForDuration:(double)a3 completionHandler:(id)a4;
- (void)openPairingWindowWithPINForDuration:(double)a3 completionHandler:(id)a4;
- (void)processAttributeReport:(id)a3;
- (void)queueAccessoryOperation:(id)a3 highPriority:(BOOL)a4 completion:(id)a5;
- (void)readPairingWindowStatusWithCompletionHandler:(id)a3;
- (void)readSpecificationVersionWithCompletionHandler:(id)a3;
- (void)refreshThreadCapabilitiesWithCompletion:(id)a3;
- (void)removeAllPairingsWithCompletionHandler:(id)a3;
- (void)removePairing:(id)a3 completionHandler:(id)a4;
- (void)removePairing:(id)a3 completionQueue:(id)a4 completionHandler:(id)a5;
- (void)removeReportObserver:(id)a3;
- (void)resetNonAvailableCounters;
- (void)resetThreadNetworkDiagnosticsCountForAccessory:(id)a3;
- (void)resetWiFiNetworkDiagnosticsCountForAccessory:(id)a3;
- (void)setClusterIDForCharacteristic:(id)a3 endpointID:(id)a4 clusterID:(id)a5;
- (void)setCommissioningID:(id)a3;
- (void)setEndpointToDeviceTypesMap:(id)a3;
- (void)setLinkLayerType:(int64_t)a3;
- (void)setPairedState:(int64_t)a3;
- (void)setPairingProgress:(unint64_t)a3;
- (void)setPrimaryAccessory:(id)a3;
- (void)setRemoveReason:(id)a3 pairingEndContextWhenRemove:(id)a4;
- (void)setSupportedLinkLayerTypes:(id)a3;
- (void)setupReporting;
- (void)startPairingMetricWithActivity:(id)a3;
- (void)startPairingWithRequest:(id)a3;
- (void)startStagedPairingWithCompletion:(id)a3;
- (void)startStagedPairingWithDeviceCredentialHandler:(id)a3 wifiScanResultsHandler:(id)a4 threadScanResultsHandler:(id)a5 readyToCancelHandler:(id)a6 progressUpdateHandler:(id)a7 commissioneeInfoHandler:(id)a8 scanningNetworks:(BOOL)a9 completion:(id)a10;
- (void)stopPairingWithError:(id *)a3 metricsReadyHandler:(id)a4;
- (void)timerDidFire:(id)a3;
- (void)triggerEstablishingMatterSubscription;
- (void)tryPairingWithOnboardingPayload:(id)a3 systemCommissionerPairings:(id)a4 pairingManager:(id)a5;
- (void)updateAccessoryControlToAdministratorNodes:(id)a3 sharedUserNodes:(id)a4 completion:(id)a5;
- (void)updateAccessoryControlToIncludeAdministratorNodes:(id)a3 sharedUserNodes:(id)a4 completion:(id)a5;
- (void)updateAccessoryControlToRemoveAdministratorNode:(id)a3 completion:(id)a4;
- (void)updateAccessoryName:(id)a3;
- (void)updateAllCharacteristicValuesPostHAPServiceEnumeration:(id)a3;
- (void)updateAllCharacteristicValuesPostHAPServiceEnumerationForAccessory:(id)a3 completion:(id)a4;
- (void)updateDefaultOtaProvider:(id)a3 providerEndpoint:(id)a4 completionHandler:(id)a5;
- (void)updateFabricLabel:(id)a3 completionHandler:(id)a4;
- (void)updateSoftwareVersion:(id)a3;
- (void)updateVidPidWithAttestationDeviceInfo:(id)a3;
- (void)validateAttestationDeviceInfo:(id)a3 error:(id)a4 completion:(id)a5;
- (void)writeCharacteristicValues:(id)a3 timeout:(double)a4 expiry:(id)a5 completionQueue:(id)a6 completionHandler:(id)a7;
@end

@implementation HMMTRAccessoryServer

- (id)endPointForHapAccessory:(id)a3
{
  v3 = [a3 services];
  v4 = [v3 hmf_objectPassingTest:&__block_literal_global_49];

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

  v7 = [v6 endpoint];

  return v7;
}

uint64_t __62__HMMTRAccessoryServer_HAPAccessory__endPointForHapAccessory___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 type];
  v3 = [v2 isEqual:@"0000003E-0000-1000-8000-0026BB765291"];

  return v3;
}

- (id)_hapAccessoryAtEndpoint:(id)a3
{
  v4 = a3;
  v5 = [(HAPAccessoryServer *)self accessories];
  v6 = [v5 count];

  if (v6 == 1)
  {
    v7 = [(HMMTRAccessoryServer *)self primaryAccessory];
  }

  else
  {
    v8 = [(HMMTRAccessoryServer *)self deviceTopology];
    v9 = [(HAPAccessoryServer *)self accessories];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __62__HMMTRAccessoryServer_HAPAccessory___hapAccessoryAtEndpoint___block_invoke;
    v12[3] = &unk_2786EC6E8;
    v13 = v8;
    v14 = v4;
    v10 = v8;
    v7 = [v9 hmf_objectPassingTest:v12];
  }

  return v7;
}

uint64_t __62__HMMTRAccessoryServer_HAPAccessory___hapAccessoryAtEndpoint___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 services];
  v4 = [v3 hmf_objectPassingTest:&__block_literal_global_58];

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

  v7 = *(a1 + 32);
  v8 = [v6 endpoint];
  v9 = [v7 getPartsListAtEndpoint:v8];

  v10 = [v6 endpoint];

  if ([v10 isEqual:*(a1 + 40)])
  {
    v11 = 1;
  }

  else
  {
    v11 = [v9 containsObject:*(a1 + 40)];
  }

  return v11;
}

uint64_t __62__HMMTRAccessoryServer_HAPAccessory___hapAccessoryAtEndpoint___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 type];
  v3 = [v2 isEqual:@"0000003E-0000-1000-8000-0026BB765291"];

  return v3;
}

- (void)handleCHIPRemoteRequest:(id)a3 completion:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = random();
  v9 = objc_autoreleasePoolPush();
  v10 = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    *buf = 138543618;
    v24 = v12;
    v25 = 2048;
    v26 = v8;
    _os_log_impl(&dword_22AEAE000, v11, OS_LOG_TYPE_INFO, "%{public}@Accessory Operation Queue: remote request job(%lu) queued.", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v9);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __73__HMMTRAccessoryServer_RemoteAccess__handleCHIPRemoteRequest_completion___block_invoke;
  v19[3] = &unk_2786EF850;
  v22 = v8;
  v19[4] = v10;
  v20 = v6;
  v21 = v7;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __73__HMMTRAccessoryServer_RemoteAccess__handleCHIPRemoteRequest_completion___block_invoke_21;
  v16[3] = &unk_2786ED9B0;
  v17 = v21;
  v18 = v8;
  v16[4] = v10;
  v13 = v6;
  v14 = v21;
  [(HMMTRAccessoryServer *)v10 queueAccessoryOperation:v19 highPriority:0 completion:v16];

  v15 = *MEMORY[0x277D85DE8];
}

void __73__HMMTRAccessoryServer_RemoteAccess__handleCHIPRemoteRequest_completion___block_invoke(uint64_t a1)
{
  v34 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 56);
    *buf = 138543618;
    v31 = v5;
    v32 = 2048;
    v33 = v6;
    _os_log_impl(&dword_22AEAE000, v4, OS_LOG_TYPE_INFO, "%{public}@Accessory Operation Queue: remote request job(%lu) started.", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v7 = [*(a1 + 32) deviceController];
  if (v7 && (v8 = MEMORY[0x277CD5220], [*(a1 + 32) nodeID], v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "deviceWithNodeID:controller:", v9, v7), v10 = objc_claimAutoreleasedReturnValue(), v9, v10))
  {
    v11 = *(a1 + 32);
    v12 = *(a1 + 40);
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __73__HMMTRAccessoryServer_RemoteAccess__handleCHIPRemoteRequest_completion___block_invoke_18;
    v27[3] = &unk_2786ED988;
    v14 = *(a1 + 48);
    v13 = *(a1 + 56);
    v27[4] = v11;
    v29 = v13;
    v28 = v14;
    [v11 handleCHIPRemoteRequest:v12 device:v10 completion:v27];
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    v16 = *(a1 + 32);
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      v19 = *(a1 + 56);
      *buf = 138543618;
      v31 = v18;
      v32 = 2048;
      v33 = v19;
      _os_log_impl(&dword_22AEAE000, v17, OS_LOG_TYPE_ERROR, "%{public}@Device not found to handle remote request job(%lu)", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v15);
    v20 = objc_autoreleasePoolPush();
    v21 = *(a1 + 32);
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = HMFGetLogIdentifier();
      v24 = *(a1 + 56);
      *buf = 138543618;
      v31 = v23;
      v32 = 2048;
      v33 = v24;
      _os_log_impl(&dword_22AEAE000, v22, OS_LOG_TYPE_INFO, "%{public}@Accessory Operation Queue: remote request job(%lu) complete.", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v20);
    v25 = *(a1 + 48);
    v10 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D0F1A0] code:2 userInfo:0];
    (*(v25 + 16))(v25, 0, v10);
  }

  v26 = *MEMORY[0x277D85DE8];
}

void __73__HMMTRAccessoryServer_RemoteAccess__handleCHIPRemoteRequest_completion___block_invoke_21(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 32);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      v8 = *(a1 + 48);
      v10 = 138543618;
      v11 = v7;
      v12 = 2048;
      v13 = v8;
      _os_log_impl(&dword_22AEAE000, v6, OS_LOG_TYPE_INFO, "%{public}@Accessory Operation Queue: remote request job(%lu) unscheduled.", &v10, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    (*(*(a1 + 40) + 16))();
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __73__HMMTRAccessoryServer_RemoteAccess__handleCHIPRemoteRequest_completion___block_invoke_18(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v11 = *(a1 + 48);
    v13 = 138543618;
    v14 = v10;
    v15 = 2048;
    v16 = v11;
    _os_log_impl(&dword_22AEAE000, v9, OS_LOG_TYPE_INFO, "%{public}@Accessory Operation Queue: remote request job(%lu) complete.", &v13, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  (*(*(a1 + 40) + 16))();

  v12 = *MEMORY[0x277D85DE8];
}

- (void)handleDownloadLogCommand:(id)a3 device:(id)a4 completion:(id)a5
{
  v28 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 CHIPDownloadLogType];
  v12 = [v8 CHIPDownloadTimeout];
  v13 = v12;
  if (v11 && v12)
  {
    v14 = [v11 integerValue];
    [v13 doubleValue];
    v16 = v15;
    v17 = [(HAPAccessoryServer *)self clientQueue];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __81__HMMTRAccessoryServer_RemoteAccess__handleDownloadLogCommand_device_completion___block_invoke;
    v24[3] = &unk_2786ED960;
    v24[4] = self;
    v25 = v10;
    [v9 downloadLogOfType:v14 timeout:v17 queue:v24 completion:v16];
  }

  else
  {
    v18 = objc_autoreleasePoolPush();
    v19 = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      *buf = 138543362;
      v27 = v21;
      _os_log_impl(&dword_22AEAE000, v20, OS_LOG_TYPE_ERROR, "%{public}@Download log command w/o valid log type/timeout", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v18);
    v22 = [MEMORY[0x277CCA9B8] hapErrorWithCode:9];
    (*(v10 + 2))(v10, 0, v22);
  }

  v23 = *MEMORY[0x277D85DE8];
}

void __81__HMMTRAccessoryServer_RemoteAccess__handleDownloadLogCommand_device_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v43 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [v5 lastPathComponent];
  v8 = objc_autoreleasePoolPush();
  v9 = *(a1 + 32);
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543874;
    v38 = v11;
    v39 = 2112;
    v40 = v5;
    v41 = 2112;
    v42 = v6;
    _os_log_impl(&dword_22AEAE000, v10, OS_LOG_TYPE_INFO, "%{public}@Did download to URL: %@. Error: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  if (v5 && !v6 && v7)
  {
    v12 = [MEMORY[0x277D0F8D0] sharedPreferences];
    v13 = [v12 preferenceForKey:@"maxAccessoryLogSize"];
    v14 = [v13 numberValue];
    v15 = [v14 unsignedIntegerValue];

    v16 = [MEMORY[0x277CCAA00] defaultManager];
    v17 = [v5 path];
    v34 = 0;
    v18 = [v16 attributesOfItemAtPath:v17 error:&v34];
    v19 = v34;

    v20 = [v18 fileSize];
    v21 = v20;
    if (v19 || v20 > v15)
    {
      v25 = objc_autoreleasePoolPush();
      v26 = *(a1 + 32);
      v27 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        HMFGetLogIdentifier();
        v28 = v32 = v25;
        v29 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v21];
        *buf = 138543874;
        v38 = v28;
        v39 = 2112;
        v40 = v29;
        v41 = 2112;
        v42 = v19;
        _os_log_impl(&dword_22AEAE000, v27, OS_LOG_TYPE_ERROR, "%{public}@Invalid log file with size %@. Error: %@", buf, 0x20u);

        v25 = v32;
      }

      objc_autoreleasePoolPop(v25);
      v30 = *(a1 + 40);
      if (!v19)
      {
        v19 = [MEMORY[0x277CCA9B8] hapErrorWithCode:12];
      }

      (*(v30 + 16))(v30, 0, v19);
    }

    else
    {
      v33 = 0;
      v22 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v5 options:0 error:&v33];
      v19 = v33;
      if (v22)
      {
        v35[0] = @"fileData";
        v35[1] = @"fileName";
        v36[0] = v22;
        v36[1] = v7;
        v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:v35 count:2];
      }

      else
      {
        v23 = 0;
      }

      (*(*(a1 + 40) + 16))();
    }

    goto LABEL_21;
  }

  v24 = *(a1 + 40);
  if (!v6)
  {
    v18 = [MEMORY[0x277CCA9B8] hapErrorWithCode:12];
    (*(v24 + 16))(v24, 0, v18);
LABEL_21:

    goto LABEL_22;
  }

  (*(v24 + 16))(v24, 0, v6);
LABEL_22:

  v31 = *MEMORY[0x277D85DE8];
}

- (void)handleCHIPRemoteRequest:(id)a3 device:(id)a4 completion:(id)a5
{
  v74 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v56 = a4;
  v9 = a5;
  v10 = [v8 objectForKeyedSubscript:@"command"];
  if (v10)
  {
    v11 = [v8 CHIPEndpointID];
    v12 = [v8 CHIPClusterID];
    v55 = [v8 CHIPAttributeID];
    v54 = [v8 CHIPCommandID];
    if ([v10 isEqualToString:@"read"])
    {
      objc_initWeak(location, self);
      v13 = [v8 CHIPReadParams];
      v14 = [(HAPAccessoryServer *)self clientQueue];
      v65[0] = MEMORY[0x277D85DD0];
      v65[1] = 3221225472;
      v65[2] = __80__HMMTRAccessoryServer_RemoteAccess__handleCHIPRemoteRequest_device_completion___block_invoke;
      v65[3] = &unk_2786ED938;
      objc_copyWeak(&v68, location);
      v66 = v10;
      v67 = v9;
      [v56 readAttributeWithEndpointId:v11 clusterId:v12 attributeId:v55 params:v13 clientQueue:v14 completion:v65];

      objc_destroyWeak(&v68);
      objc_destroyWeak(location);
    }

    else if ([v10 isEqualToString:@"write"])
    {
      v19 = [v8 objectForKeyedSubscript:@"data"];
      if (v19)
      {
        objc_initWeak(location, self);
        v20 = [v8 CHIPTimedWriteTimeout];
        v21 = [(HAPAccessoryServer *)self clientQueue];
        v61[0] = MEMORY[0x277D85DD0];
        v61[1] = 3221225472;
        v61[2] = __80__HMMTRAccessoryServer_RemoteAccess__handleCHIPRemoteRequest_device_completion___block_invoke_9;
        v61[3] = &unk_2786ED938;
        objc_copyWeak(&v64, location);
        v62 = v10;
        v63 = v9;
        [v56 writeAttributeWithEndpointId:v11 clusterId:v12 attributeId:v55 value:v19 timedWriteTimeout:v20 clientQueue:v21 completion:v61];

        objc_destroyWeak(&v64);
        objc_destroyWeak(location);
      }

      else
      {
        v53 = objc_autoreleasePoolPush();
        v31 = self;
        v32 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          v33 = HMFGetLogIdentifier();
          *location = 138543618;
          *&location[4] = v33;
          v72 = 2112;
          v73 = v8;
          _os_log_impl(&dword_22AEAE000, v32, OS_LOG_TYPE_ERROR, "%{public}@data field missing from CHIP remote request message payload: %@", location, 0x16u);
        }

        objc_autoreleasePoolPop(v53);
        v34 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D0F1A0] code:2 userInfo:0];
        (*(v9 + 2))(v9, 0, v34);
      }
    }

    else if ([v10 isEqualToString:@"command"])
    {
      if (v54 && v12)
      {
        v22 = [v8 CHIPCommandFields];
        if (!v22)
        {
          v23 = *MEMORY[0x277CD5180];
          v24 = *MEMORY[0x277CD51A0];
          v69[0] = *MEMORY[0x277CD5188];
          v69[1] = v24;
          v70[0] = v23;
          v70[1] = MEMORY[0x277CBEBF8];
          v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v70 forKeys:v69 count:2];
        }

        objc_initWeak(location, self);
        v25 = [v8 CHIPTimedInvokeTimeout];
        v26 = [(HAPAccessoryServer *)self clientQueue];
        v57[0] = MEMORY[0x277D85DD0];
        v57[1] = 3221225472;
        v57[2] = __80__HMMTRAccessoryServer_RemoteAccess__handleCHIPRemoteRequest_device_completion___block_invoke_11;
        v57[3] = &unk_2786ED938;
        objc_copyWeak(&v60, location);
        v58 = v10;
        v59 = v9;
        [v56 invokeCommandWithEndpointId:v11 clusterId:v12 commandId:v54 commandFields:v22 timedInvokeTimeout:v25 clientQueue:v26 completion:v57];

        objc_destroyWeak(&v60);
        objc_destroyWeak(location);
      }

      else
      {
        v35 = objc_autoreleasePoolPush();
        v36 = self;
        v37 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          v38 = HMFGetLogIdentifier();
          *location = 138543362;
          *&location[4] = v38;
          _os_log_impl(&dword_22AEAE000, v37, OS_LOG_TYPE_ERROR, "%{public}@Invoke CHIP command with no specific command path", location, 0xCu);
        }

        objc_autoreleasePoolPop(v35);
        v39 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CFE770] code:9 userInfo:0];
        (*(v9 + 2))(v9, 0, v39);
      }
    }

    else if ([v10 isEqualToString:@"subscribe"])
    {
      v52 = [v8 CHIPMinInterval];
      v51 = [v8 CHIPMaxInterval];
      if (v52 && v51)
      {
        v27 = objc_alloc_init(MEMORY[0x277CBEB38]);
        [v27 setCHIPRemoteCommand:v10];
        context = objc_autoreleasePoolPush();
        v28 = self;
        v29 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
        {
          HMFGetLogIdentifier();
          v30 = *location = 138543618;
          *&location[4] = v30;
          v72 = 2112;
          v73 = v27;
          _os_log_impl(&dword_22AEAE000, v29, OS_LOG_TYPE_DEBUG, "%{public}@Subscribe CHIP attribute responded with %@", location, 0x16u);
        }

        objc_autoreleasePoolPop(context);
        (*(v9 + 2))(v9, v27, 0);
      }

      else
      {
        v45 = objc_autoreleasePoolPush();
        v46 = self;
        v47 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
        {
          v48 = HMFGetLogIdentifier();
          *location = 138543362;
          *&location[4] = v48;
          _os_log_impl(&dword_22AEAE000, v47, OS_LOG_TYPE_ERROR, "%{public}@Subscribe CHIP attribute with no specific min/max interval", location, 0xCu);
        }

        objc_autoreleasePoolPop(v45);
        v27 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CFE770] code:9 userInfo:0];
        (*(v9 + 2))(v9, 0, v27);
      }
    }

    else if ([v10 isEqualToString:@"downloadLog"])
    {
      [(HMMTRAccessoryServer *)self handleDownloadLogCommand:v8 device:v56 completion:v9];
    }

    else
    {
      v40 = objc_autoreleasePoolPush();
      v41 = self;
      v42 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        v43 = HMFGetLogIdentifier();
        *location = 138543362;
        *&location[4] = v43;
        _os_log_impl(&dword_22AEAE000, v42, OS_LOG_TYPE_ERROR, "%{public}@Unsupported manufacturer extension control command", location, 0xCu);
      }

      objc_autoreleasePoolPop(v40);
      v44 = [MEMORY[0x277CCA9B8] hapErrorWithCode:3 marker:239];
      (*(v9 + 2))(v9, 0, v44);
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
      *location = 138543618;
      *&location[4] = v18;
      v72 = 2112;
      v73 = v8;
      _os_log_impl(&dword_22AEAE000, v17, OS_LOG_TYPE_ERROR, "%{public}@command field missing from CHIP remote request message payload: %@", location, 0x16u);
    }

    objc_autoreleasePoolPop(v15);
    v11 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D0F1A0] code:2 userInfo:0];
    (*(v9 + 2))(v9, 0, v11);
  }

  v49 = *MEMORY[0x277D85DE8];
}

void __80__HMMTRAccessoryServer_RemoteAccess__handleCHIPRemoteRequest_device_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v9 = objc_autoreleasePoolPush();
    v10 = WeakRetained;
    v11 = HMFGetOSLogHandle();
    v12 = v11;
    if (v6)
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v13 = HMFGetLogIdentifier();
        v23 = 138543618;
        v24 = v13;
        v25 = 2112;
        v26 = v6;
        v14 = "%{public}@Read CHIP attribute completed with an error: %@";
        v15 = v12;
        v16 = OS_LOG_TYPE_ERROR;
LABEL_7:
        _os_log_impl(&dword_22AEAE000, v15, v16, v14, &v23, 0x16u);
      }
    }

    else if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v13 = HMFGetLogIdentifier();
      v23 = 138543618;
      v24 = v13;
      v25 = 2112;
      v26 = v5;
      v14 = "%{public}@Read CHIP attribute completed with value: %@";
      v15 = v12;
      v16 = OS_LOG_TYPE_DEBUG;
      goto LABEL_7;
    }

    objc_autoreleasePoolPop(v9);
  }

  if (v5)
  {
    v17 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [v17 setCHIPRemoteCommand:*(a1 + 32)];
    [v17 setCHIPRemoteResults:v5];
    if (WeakRetained)
    {
      v18 = objc_autoreleasePoolPush();
      v19 = WeakRetained;
      v20 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        v21 = HMFGetLogIdentifier();
        v23 = 138543618;
        v24 = v21;
        v25 = 2112;
        v26 = v17;
        _os_log_impl(&dword_22AEAE000, v20, OS_LOG_TYPE_DEBUG, "%{public}@Read CHIP attribute responded with %@", &v23, 0x16u);
      }

      objc_autoreleasePoolPop(v18);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    (*(*(a1 + 40) + 16))(*(a1 + 40), 0, v6, v7);
  }

  v22 = *MEMORY[0x277D85DE8];
}

void __80__HMMTRAccessoryServer_RemoteAccess__handleCHIPRemoteRequest_device_completion___block_invoke_9(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v9 = objc_autoreleasePoolPush();
    v10 = WeakRetained;
    v11 = HMFGetOSLogHandle();
    v12 = v11;
    if (v6)
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v13 = HMFGetLogIdentifier();
        v23 = 138543618;
        v24 = v13;
        v25 = 2112;
        v26 = v6;
        v14 = "%{public}@Write CHIP attribute completed with an error: %@";
        v15 = v12;
        v16 = OS_LOG_TYPE_ERROR;
LABEL_7:
        _os_log_impl(&dword_22AEAE000, v15, v16, v14, &v23, 0x16u);
      }
    }

    else if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v13 = HMFGetLogIdentifier();
      v23 = 138543618;
      v24 = v13;
      v25 = 2112;
      v26 = v5;
      v14 = "%{public}@Write CHIP attribute completed with values: %@";
      v15 = v12;
      v16 = OS_LOG_TYPE_DEBUG;
      goto LABEL_7;
    }

    objc_autoreleasePoolPop(v9);
  }

  if (v5)
  {
    v17 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [v17 setCHIPRemoteCommand:*(a1 + 32)];
    [v17 setCHIPRemoteResults:v5];
    if (WeakRetained)
    {
      v18 = objc_autoreleasePoolPush();
      v19 = WeakRetained;
      v20 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        v21 = HMFGetLogIdentifier();
        v23 = 138543618;
        v24 = v21;
        v25 = 2112;
        v26 = v17;
        _os_log_impl(&dword_22AEAE000, v20, OS_LOG_TYPE_DEBUG, "%{public}@Write CHIP attribute responded with %@", &v23, 0x16u);
      }

      objc_autoreleasePoolPop(v18);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    (*(*(a1 + 40) + 16))(*(a1 + 40), 0, v6, v7);
  }

  v22 = *MEMORY[0x277D85DE8];
}

void __80__HMMTRAccessoryServer_RemoteAccess__handleCHIPRemoteRequest_device_completion___block_invoke_11(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v9 = objc_autoreleasePoolPush();
    v10 = WeakRetained;
    v11 = HMFGetOSLogHandle();
    v12 = v11;
    if (v6)
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v13 = HMFGetLogIdentifier();
        v23 = 138543618;
        v24 = v13;
        v25 = 2112;
        v26 = v6;
        v14 = "%{public}@Invoke CHIP command completed with an error: %@";
        v15 = v12;
        v16 = OS_LOG_TYPE_ERROR;
LABEL_7:
        _os_log_impl(&dword_22AEAE000, v15, v16, v14, &v23, 0x16u);
      }
    }

    else if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v13 = HMFGetLogIdentifier();
      v23 = 138543618;
      v24 = v13;
      v25 = 2112;
      v26 = v5;
      v14 = "%{public}@Invoke CHIP command completed with response: %@";
      v15 = v12;
      v16 = OS_LOG_TYPE_DEBUG;
      goto LABEL_7;
    }

    objc_autoreleasePoolPop(v9);
  }

  if (v5)
  {
    v17 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [v17 setCHIPRemoteCommand:*(a1 + 32)];
    [v17 setCHIPRemoteResults:v5];
    if (WeakRetained)
    {
      v18 = objc_autoreleasePoolPush();
      v19 = WeakRetained;
      v20 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        v21 = HMFGetLogIdentifier();
        v23 = 138543618;
        v24 = v21;
        v25 = 2112;
        v26 = v17;
        _os_log_impl(&dword_22AEAE000, v20, OS_LOG_TYPE_DEBUG, "%{public}@Invoke CHIP command responded with %@", &v23, 0x16u);
      }

      objc_autoreleasePoolPop(v18);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    (*(*(a1 + 40) + 16))(*(a1 + 40), 0, v6, v7);
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (id)_getThreadHardwareAddressFromReadValue:(id)a3
{
  v82 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    v9 = 0;
    goto LABEL_58;
  }

  v64 = *MEMORY[0x277CD5188];
  v6 = [v4 objectForKeyedSubscript:?];
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

  v57 = v8;
  v9 = 0;
  if (![v8 isEqual:*MEMORY[0x277CD50B0]])
  {
    goto LABEL_57;
  }

  v61 = *MEMORY[0x277CD51A0];
  v10 = [v5 objectForKeyedSubscript:?];
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

  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  obj = v12;
  v13 = [obj countByEnumeratingWithState:&v76 objects:v81 count:16];
  if (!v13)
  {
    v9 = 0;
    goto LABEL_56;
  }

  v14 = v13;
  v56 = v5;
  v15 = *v77;
  v16 = *MEMORY[0x277CD50D8];
  v17 = *MEMORY[0x277CD5180];
  v18 = 0x277CBE000uLL;
  v65 = *MEMORY[0x277CD50D0];
  v58 = *MEMORY[0x277CD5180];
  v59 = *v77;
LABEL_11:
  v19 = 0;
  v60 = v14;
  while (1)
  {
    if (*v77 != v15)
    {
      objc_enumerationMutation(obj);
    }

    v20 = [*(*(&v76 + 1) + 8 * v19) objectForKeyedSubscript:{v16, v56}];
    v21 = *(v18 + 2752);
    objc_opt_class();
    v22 = (objc_opt_isKindOfClass() & 1) != 0 ? v20 : 0;
    v23 = v22;

    v24 = [v23 objectForKeyedSubscript:v64];
    objc_opt_class();
    v25 = (objc_opt_isKindOfClass() & 1) != 0 ? v24 : 0;
    v26 = v25;

    v27 = v23;
    if ([v26 isEqual:v17])
    {
      break;
    }

LABEL_49:

    if (++v19 == v14)
    {
      v14 = [obj countByEnumeratingWithState:&v76 objects:v81 count:16];
      if (!v14)
      {
        v9 = 0;
        goto LABEL_54;
      }

      goto LABEL_11;
    }
  }

  v63 = v19;
  v70 = v23;
  v28 = [v23 objectForKeyedSubscript:v61];
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

  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  v31 = v30;
  v71 = [v31 countByEnumeratingWithState:&v72 objects:v80 count:16];
  if (!v71)
  {

    v53 = v31;
    v9 = 0;
    v27 = v70;
LABEL_48:

    v19 = v63;
    goto LABEL_49;
  }

  v69 = 0;
  v66 = 0;
  v67 = v31;
  v68 = *v73;
  v32 = v65;
  do
  {
    for (i = 0; i != v71; ++i)
    {
      v34 = v26;
      if (*v73 != v68)
      {
        objc_enumerationMutation(v67);
      }

      v35 = *(*(&v72 + 1) + 8 * i);
      v36 = [v35 objectForKeyedSubscript:v32];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v37 = v36;
      }

      else
      {
        v37 = 0;
      }

      v38 = v37;

      if ([v38 isEqual:&unk_283EE7E00])
      {
        v39 = [v35 objectForKeyedSubscript:v16];
        v40 = *(v18 + 2752);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v41 = v39;
        }

        else
        {
          v41 = 0;
        }

        v42 = v41;

        v43 = [(HMMTRAccessoryServer *)self numberOfReadValue:v42];

        v69 |= [v43 isEqualToNumber:&unk_283EE7E18];
      }

      else
      {
        if (![v38 isEqual:&unk_283EE7DE8])
        {
          goto LABEL_43;
        }

        v44 = [v35 objectForKeyedSubscript:v16];
        v45 = *(v18 + 2752);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v46 = v44;
        }

        else
        {
          v46 = 0;
        }

        v47 = v46;

        v43 = [(HMMTRAccessoryServer *)self dataOfReadValue:v47];
        v48 = v16;
        v49 = [objc_alloc(MEMORY[0x277D0F7E8]) initWithAddressData:v43];
        [v49 formattedString];
        v50 = v18;
        v52 = v51 = self;

        v16 = v48;
        v66 = v52;
        self = v51;
        v18 = v50;
        v32 = v65;
      }

LABEL_43:
      v26 = v34;

      v27 = v70;
    }

    v71 = [v67 countByEnumeratingWithState:&v72 objects:v80 count:16];
  }

  while (v71);

  v9 = v66;
  if ((v69 & (v66 != 0)) == 0)
  {
    v15 = v59;
    v14 = v60;
    v17 = v58;
    v53 = v67;
    goto LABEL_48;
  }

LABEL_54:
  v5 = v56;
LABEL_56:

LABEL_57:
LABEL_58:

  v54 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)_getOperationalHardwareAddressFromReadValue:(id)a3
{
  v80 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = *MEMORY[0x277CD5188];
    v7 = [v4 objectForKeyedSubscript:*MEMORY[0x277CD5188]];
    v8 = 0x277CCA000uLL;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v7;
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;

    v11 = 0;
    v12 = 0;
    if ([v10 isEqual:*MEMORY[0x277CD50B0]])
    {
      v66 = self;
      v59 = *MEMORY[0x277CD51A0];
      v13 = [v5 objectForKeyedSubscript:?];
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

      v76 = 0u;
      v77 = 0u;
      v74 = 0u;
      v75 = 0u;
      obj = v15;
      v12 = [obj countByEnumeratingWithState:&v74 objects:v79 count:16];
      if (v12)
      {
        v55 = v10;
        v56 = v5;
        LOBYTE(v5) = 0;
        v68 = 0;
        v16 = *v75;
        v67 = *MEMORY[0x277CD50D8];
        v64 = *MEMORY[0x277CD5180];
        v17 = *MEMORY[0x277CD50D0];
        v18 = v66;
        v57 = *v75;
        v58 = v6;
        while (2)
        {
          v19 = 0;
          v60 = v12;
          do
          {
            if (*v75 != v16)
            {
              objc_enumerationMutation(obj);
            }

            if (v5)
            {
              v12 = v68;
              v11 = v68;
              goto LABEL_56;
            }

            v20 = [*(*(&v74 + 1) + 8 * v19) objectForKeyedSubscript:v67];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v21 = v20;
            }

            else
            {
              v21 = 0;
            }

            v22 = v21;

            v23 = [v22 objectForKeyedSubscript:v6];
            v24 = v8;
            v25 = *(v8 + 3240);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v26 = v23;
            }

            else
            {
              v26 = 0;
            }

            v27 = v6;
            v28 = v26;

            v29 = v28;
            v65 = v22;
            if ([v28 isEqual:v64])
            {
              v62 = v28;
              v63 = v19;
              v30 = [v22 objectForKeyedSubscript:v59];
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

              v72 = 0u;
              v73 = 0u;
              v70 = 0u;
              v71 = 0u;
              v69 = v32;
              v33 = [v69 countByEnumeratingWithState:&v70 objects:v78 count:16];
              if (v33)
              {
                v34 = v33;
                LODWORD(v5) = 0;
                v35 = *v71;
                v36 = v67;
                do
                {
                  for (i = 0; i != v34; ++i)
                  {
                    if (*v71 != v35)
                    {
                      objc_enumerationMutation(v69);
                    }

                    v38 = *(*(&v70 + 1) + 8 * i);
                    v39 = [v38 objectForKeyedSubscript:v17];
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      v40 = v39;
                    }

                    else
                    {
                      v40 = 0;
                    }

                    v41 = v40;

                    if ([v41 isEqual:&unk_283EE7DA0])
                    {
                      v42 = [v38 objectForKeyedSubscript:v36];
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

                      v45 = [(HMMTRAccessoryServer *)v18 numberOfReadValue:v44];

                      LODWORD(v5) = [v45 BOOLValue] | v5;
                    }

                    else if ([v41 isEqual:&unk_283EE7DE8])
                    {
                      v46 = [v38 objectForKeyedSubscript:v36];
                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        v47 = v46;
                      }

                      else
                      {
                        v47 = 0;
                      }

                      v48 = v47;

                      v49 = [(HMMTRAccessoryServer *)v18 dataOfReadValue:v48];
                      v50 = [objc_alloc(MEMORY[0x277D0F7E8]) initWithAddressData:v49];
                      v51 = [v50 formattedString];

                      v68 = v51;
                      v18 = v66;
                      v36 = v67;
                    }
                  }

                  v34 = [v69 countByEnumeratingWithState:&v70 objects:v78 count:16];
                }

                while (v34);
              }

              else
              {
                LOBYTE(v5) = 0;
              }

              v16 = v57;
              v6 = v58;
              v8 = 0x277CCA000;
              v12 = v60;
              v29 = v62;
              v19 = v63;
            }

            else
            {
              LOBYTE(v5) = 0;
              v6 = v27;
              v8 = v24;
            }

            v19 = v19 + 1;
          }

          while (v19 != v12);
          v12 = [obj countByEnumeratingWithState:&v74 objects:v79 count:16];
          if (v12)
          {
            continue;
          }

          break;
        }

        v12 = v68;
        if (v5)
        {
          v11 = v68;
        }

        else
        {
          v11 = 0;
        }

LABEL_56:
        v10 = v55;
        v5 = v56;
      }

      else
      {
        v11 = 0;
      }
    }

    v52 = v11;
  }

  else
  {
    v52 = 0;
  }

  v53 = *MEMORY[0x277D85DE8];

  return v52;
}

- (id)_getOperationalNetworkAddressForAccessory:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMMTRAccessoryServer *)self matterDevice];

  if (v5)
  {
    v6 = [HMMTRDeviceTopology alloc];
    v7 = [(HMMTRAccessoryServer *)self nodeID];
    v8 = [(HMMTRDeviceTopology *)v6 initWithNodeId:v7 server:self];

    if (v8)
    {
      v9 = [MEMORY[0x277CBEB38] dictionary];
      v10 = [(HMMTRAccessoryServer *)self endpointsForHAPAccessory:v4 topology:v8];
      v30 = 0;
      if (![v10 count])
      {

        v10 = &unk_283EE9210;
      }

      v11 = [(HMMTRAccessoryServer *)self matterDevice];
      v12 = [(HMMTRAccessoryServer *)self generalDiagnosticsClusterFromEndpoints:v10 topology:v8 device:v11 definitelyUnsupported:&v30];

      if (v12)
      {
        v13 = [v12 readAttributeNetworkInterfacesWithParams:0];
        v14 = [(HMMTRAccessoryServer *)self _getOperationalHardwareAddressFromReadValue:v13];

        [v9 setObject:v14 forKeyedSubscript:@"hardware_address"];
        v15 = v9;
      }

      else
      {
        v24 = objc_autoreleasePoolPush();
        v25 = self;
        v26 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          v27 = HMFGetLogIdentifier();
          *buf = 138543362;
          v32 = v27;
          _os_log_impl(&dword_22AEAE000, v26, OS_LOG_TYPE_ERROR, "%{public}@Matter device doesn't have general diagnostic cluster", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v24);
        v15 = 0;
      }
    }

    else
    {
      v20 = objc_autoreleasePoolPush();
      v21 = self;
      v22 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v23 = HMFGetLogIdentifier();
        *buf = 138543362;
        v32 = v23;
        _os_log_impl(&dword_22AEAE000, v22, OS_LOG_TYPE_ERROR, "%{public}@Matter topology is nil", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v20);
      v15 = 0;
    }
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
      v32 = v19;
      _os_log_impl(&dword_22AEAE000, v18, OS_LOG_TYPE_ERROR, "%{public}@Matter device is nil", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v16);
    v15 = 0;
  }

  v28 = *MEMORY[0x277D85DE8];

  return v15;
}

- (void)_handleDiagnosticsEvent:(id)a3
{
  v282 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:*MEMORY[0x277CD5140]];
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

  v8 = [v4 objectForKeyedSubscript:*MEMORY[0x277CD5138]];
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

  v11 = [v4 objectForKeyedSubscript:*MEMORY[0x277CD5148]];
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

  v14 = [v7 cluster];
  v15 = [v14 isEqual:&unk_283EE7D58];

  if (v15)
  {
    v16 = [v7 event];
    v17 = [v16 isEqual:&unk_283EE7D88];

    if (v17)
    {
      v220 = v13;
      v18 = *MEMORY[0x277CD50D8];
      v19 = [v4 objectForKeyedSubscript:*MEMORY[0x277CD50D8]];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v20 = v19;
      }

      else
      {
        v20 = 0;
      }

      v21 = v20;

      if (v21)
      {
        v22 = [v21 objectForKeyedSubscript:*MEMORY[0x277CD5188]];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v23 = v22;
        }

        else
        {
          v23 = 0;
        }

        v24 = v23;

        v221 = v24;
        if ([v24 isEqual:*MEMORY[0x277CD5180]])
        {
          v227 = self;
          v214 = v4;
          v218 = v10;
          v209 = v7;
          v206 = v21;
          v25 = [v21 objectForKeyedSubscript:*MEMORY[0x277CD51A0]];
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

          if (v27)
          {
            v250 = 0u;
            v251 = 0u;
            v248 = 0u;
            v249 = 0u;
            obj = v27;
            v28 = [obj countByEnumeratingWithState:&v248 objects:v281 count:16];
            if (!v28)
            {
LABEL_38:

              v40 = v227;
LABEL_110:
              v125 = objc_autoreleasePoolPush();
              v126 = v40;
              v127 = HMFGetOSLogHandle();
              v7 = v209;
              v4 = v214;
              if (os_log_type_enabled(v127, OS_LOG_TYPE_ERROR))
              {
                v128 = HMFGetLogIdentifier();
                *buf = 138543618;
                v266 = v128;
                v267 = 2112;
                v268 = v214;
                _os_log_impl(&dword_22AEAE000, v127, OS_LOG_TYPE_ERROR, "%{public}@ThreadNetworkDiagnostics ConnectionStatus event data has unexpected structure: %@", buf, 0x16u);
              }

              goto LABEL_194;
            }

            v29 = v28;
            v30 = *v249;
            v31 = *MEMORY[0x277CD50D0];
LABEL_26:
            v32 = 0;
            while (1)
            {
              if (*v249 != v30)
              {
                objc_enumerationMutation(obj);
              }

              v33 = *(*(&v248 + 1) + 8 * v32);
              v34 = [v33 objectForKeyedSubscript:v31];
              objc_opt_class();
              v35 = (objc_opt_isKindOfClass() & 1) != 0 ? v34 : 0;
              v36 = v35;

              v37 = [v33 objectForKeyedSubscript:v18];
              objc_opt_class();
              v38 = (objc_opt_isKindOfClass() & 1) != 0 ? v37 : 0;
              v39 = v38;

              if ([v36 isEqual:&unk_283EE7D88])
              {
                break;
              }

              if (v29 == ++v32)
              {
                v29 = [obj countByEnumeratingWithState:&v248 objects:v281 count:16];
                if (v29)
                {
                  goto LABEL_26;
                }

                goto LABEL_38;
              }
            }

            v40 = v227;
            v115 = [(HMMTRAccessoryServer *)v227 numberOfReadValue:v39];

            if (!v115)
            {
              goto LABEL_110;
            }

            v116 = objc_autoreleasePoolPush();
            v117 = v227;
            v118 = HMFGetOSLogHandle();
            v7 = v209;
            v10 = v218;
            if (os_log_type_enabled(v118, OS_LOG_TYPE_INFO))
            {
              v119 = HMFGetLogIdentifier();
              v120 = [(HMMTRAccessoryServer *)v117 primaryAccessory];
              v121 = [v120 shortDescription];
              *buf = 138544386;
              v266 = v119;
              v267 = 2112;
              v268 = v121;
              v269 = 2112;
              v270 = v218;
              v271 = 2112;
              v272 = v220;
              v273 = 2112;
              v274 = v115;
              _os_log_impl(&dword_22AEAE000, v118, OS_LOG_TYPE_INFO, "%{public}@%@ [Event no. %@, UpTime %@] Thread connection status %@", buf, 0x34u);
            }

            objc_autoreleasePoolPop(v116);
            v279 = @"threadNetwork_ConnectionStatus";
            v122 = [HMMTRAccessoryServerDiagnosticsEvent alloc];
            v278 = v115;
            v123 = [MEMORY[0x277CBEA60] arrayWithObjects:&v278 count:1];
            v124 = [(HMMTRAccessoryServerDiagnosticsEvent *)v122 initWithValues:v123];
            v280 = v124;
            v82 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v280 forKeys:&v279 count:1];
            v4 = v214;
LABEL_167:

            v13 = v220;
LABEL_168:
            if (v82)
            {
              v218 = v10;
              v234 = 0u;
              v235 = 0u;
              v232 = 0u;
              v233 = 0u;
              v180 = [(HAPAccessoryServer *)v227 accessories];
              v208 = [v180 countByEnumeratingWithState:&v232 objects:v253 count:16];
              if (v208)
              {
                v181 = *v233;
                v217 = v4;
                v220 = v13;
                objb = v180;
                v205 = *v233;
                do
                {
                  v182 = 0;
                  do
                  {
                    v183 = v7;
                    if (*v233 != v181)
                    {
                      objc_enumerationMutation(v180);
                    }

                    v213 = v182;
                    v184 = *(*(&v232 + 1) + 8 * v182);
                    v228 = 0u;
                    v229 = 0u;
                    v230 = 0u;
                    v231 = 0u;
                    v223 = v184;
                    v185 = [v184 services];
                    v186 = [v185 countByEnumeratingWithState:&v228 objects:v252 count:16];
                    if (v186)
                    {
                      v187 = v186;
                      v188 = *v229;
                      while (2)
                      {
                        for (i = 0; i != v187; ++i)
                        {
                          if (*v229 != v188)
                          {
                            objc_enumerationMutation(v185);
                          }

                          v190 = *(*(&v228 + 1) + 8 * i);
                          objc_opt_class();
                          if (objc_opt_isKindOfClass())
                          {
                            v191 = [v190 endpoint];
                            v192 = [v183 endpoint];
                            v193 = [v191 isEqualToNumber:v192];

                            if (v193)
                            {
                              v198 = objc_autoreleasePoolPush();
                              v199 = v227;
                              v200 = HMFGetOSLogHandle();
                              if (os_log_type_enabled(v200, OS_LOG_TYPE_INFO))
                              {
                                v201 = HMFGetLogIdentifier();
                                *buf = 138543874;
                                v266 = v201;
                                v267 = 2112;
                                v268 = v82;
                                v269 = 2112;
                                v270 = v223;
                                _os_log_impl(&dword_22AEAE000, v200, OS_LOG_TYPE_INFO, "%{public}@Calling delegate to handle diagnostics event: %@ for accessory: %@", buf, 0x20u);
                              }

                              objc_autoreleasePoolPop(v198);
                              v202 = [(HMMTRAccessoryServer *)v199 diagnosticsEventDelegate];
                              [v202 handleDiagnosticsEvents:v82 forAccessory:v223];

                              v4 = v217;
                              v7 = v183;
                              goto LABEL_196;
                            }
                          }
                        }

                        v187 = [v185 countByEnumeratingWithState:&v228 objects:v252 count:16];
                        if (v187)
                        {
                          continue;
                        }

                        break;
                      }
                    }

                    v182 = v213 + 1;
                    v7 = v183;
                    v13 = v220;
                    v180 = objb;
                    v181 = v205;
                  }

                  while (v213 + 1 != v208);
                  v4 = v217;
                  v208 = [objb countByEnumeratingWithState:&v232 objects:v253 count:16];
                }

                while (v208);
              }

              v194 = objc_autoreleasePoolPush();
              v195 = v227;
              v196 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v196, OS_LOG_TYPE_ERROR))
              {
                v197 = HMFGetLogIdentifier();
                *buf = 138543618;
                v266 = v197;
                v267 = 2112;
                v268 = v82;
                _os_log_impl(&dword_22AEAE000, v196, OS_LOG_TYPE_ERROR, "%{public}@Diagnostic event did not find any destination accessory: %@", buf, 0x16u);
              }

              objc_autoreleasePoolPop(v194);
            }

            goto LABEL_197;
          }

LABEL_199:
          _HMFPreconditionFailure();
        }

        v108 = objc_autoreleasePoolPush();
        v109 = self;
        v110 = HMFGetOSLogHandle();
        v111 = v221;
        if (os_log_type_enabled(v110, OS_LOG_TYPE_ERROR))
        {
          HMFGetLogIdentifier();
          v113 = v112 = v10;
          *buf = 138543618;
          v266 = v113;
          v267 = 2112;
          v268 = v221;
          v114 = "%{public}@ThreadNetworkDiagnostics ConnectionStatus event data type is unexpected: %@";
LABEL_140:
          _os_log_impl(&dword_22AEAE000, v110, OS_LOG_TYPE_ERROR, v114, buf, 0x16u);

          v10 = v112;
          goto LABEL_141;
        }

        goto LABEL_141;
      }

LABEL_198:
      _HMFPreconditionFailure();
      goto LABEL_199;
    }

LABEL_137:
    v82 = 0;
    goto LABEL_197;
  }

  v41 = [v7 cluster];
  v42 = [v41 isEqual:&unk_283EE7D70];

  if (!v42)
  {
    goto LABEL_137;
  }

  v43 = [v7 event];
  v44 = [v43 isEqual:&unk_283EE7DA0];

  if (!v44)
  {
    v83 = [v7 event];
    v84 = [v83 isEqual:&unk_283EE7DB8];

    if (v84)
    {
      v218 = v10;
      v220 = v13;
      v85 = *MEMORY[0x277CD50D8];
      v86 = [v4 objectForKeyedSubscript:*MEMORY[0x277CD50D8]];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v87 = v86;
      }

      else
      {
        v87 = 0;
      }

      v88 = v87;

      if (!v88)
      {
        goto LABEL_198;
      }

      v89 = [v88 objectForKeyedSubscript:*MEMORY[0x277CD5188]];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v90 = v89;
      }

      else
      {
        v90 = 0;
      }

      v91 = v90;

      v221 = v91;
      if ([v91 isEqual:*MEMORY[0x277CD5180]])
      {
        v227 = self;
        v211 = v7;
        v216 = v4;
        v206 = v88;
        v92 = [v88 objectForKeyedSubscript:*MEMORY[0x277CD51A0]];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v93 = v92;
        }

        else
        {
          v93 = 0;
        }

        v94 = v93;

        if (v94)
        {
          v242 = 0u;
          v243 = 0u;
          v240 = 0u;
          v241 = 0u;
          obj = v94;
          v95 = [obj countByEnumeratingWithState:&v240 objects:v261 count:16];
          if (!v95)
          {
            goto LABEL_103;
          }

          v96 = v95;
          v97 = *v241;
          v98 = *MEMORY[0x277CD50D0];
          while (1)
          {
            for (j = 0; j != v96; ++j)
            {
              if (*v241 != v97)
              {
                objc_enumerationMutation(obj);
              }

              v100 = *(*(&v240 + 1) + 8 * j);
              v101 = [v100 objectForKeyedSubscript:v98];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v102 = v101;
              }

              else
              {
                v102 = 0;
              }

              v103 = v102;

              v104 = [v100 objectForKeyedSubscript:v85];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v105 = v104;
              }

              else
              {
                v105 = 0;
              }

              v106 = v105;

              if ([v103 isEqual:&unk_283EE7D88])
              {
                v107 = v227;
                v115 = [(HMMTRAccessoryServer *)v227 numberOfReadValue:v106];

                if (v115)
                {
                  v157 = objc_autoreleasePoolPush();
                  v158 = v227;
                  v159 = HMFGetOSLogHandle();
                  v7 = v211;
                  if (os_log_type_enabled(v159, OS_LOG_TYPE_INFO))
                  {
                    v160 = HMFGetLogIdentifier();
                    v161 = [(HMMTRAccessoryServer *)v158 primaryAccessory];
                    v162 = [v161 shortDescription];
                    *buf = 138544386;
                    v266 = v160;
                    v267 = 2112;
                    v268 = v162;
                    v269 = 2112;
                    v270 = v10;
                    v271 = 2112;
                    v272 = v220;
                    v273 = 2112;
                    v274 = v115;
                    _os_log_impl(&dword_22AEAE000, v159, OS_LOG_TYPE_INFO, "%{public}@%@ [Event no. %@, UpTime %@] WiFi Connection Status event with status %@", buf, 0x34u);
                  }

                  objc_autoreleasePoolPop(v157);
                  v259 = @"wifiNetwork_ConnectionStatus";
                  v163 = [HMMTRAccessoryServerDiagnosticsEvent alloc];
                  v258 = v115;
                  v123 = [MEMORY[0x277CBEA60] arrayWithObjects:&v258 count:1];
                  v124 = [(HMMTRAccessoryServerDiagnosticsEvent *)v163 initWithValues:v123];
                  v260 = v124;
                  v164 = MEMORY[0x277CBEAC0];
                  v165 = &v260;
                  v166 = &v259;
                  goto LABEL_166;
                }

LABEL_149:
                v125 = objc_autoreleasePoolPush();
                v126 = v107;
                v127 = HMFGetOSLogHandle();
                v7 = v211;
                v4 = v216;
                if (os_log_type_enabled(v127, OS_LOG_TYPE_ERROR))
                {
                  v167 = HMFGetLogIdentifier();
                  *buf = 138543618;
                  v266 = v167;
                  v267 = 2112;
                  v268 = v216;
                  v168 = "%{public}@WiFiNetworkDiagnostics ConnectionStatus event data has unexpected structure: %@";
                  goto LABEL_193;
                }

                goto LABEL_194;
              }
            }

            v96 = [obj countByEnumeratingWithState:&v240 objects:v261 count:16];
            if (!v96)
            {
LABEL_103:

              v107 = v227;
              goto LABEL_149;
            }
          }
        }

        goto LABEL_199;
      }

      v151 = objc_autoreleasePoolPush();
      v152 = self;
      v153 = HMFGetOSLogHandle();
      v154 = v91;
      if (os_log_type_enabled(v153, OS_LOG_TYPE_ERROR))
      {
        v155 = HMFGetLogIdentifier();
        *buf = 138543618;
        v266 = v155;
        v267 = 2112;
        v268 = v221;
        v156 = "%{public}@WiFiNetworkDiagnostics ConnectionStatus event data type is unexpected: %@";
LABEL_153:
        _os_log_impl(&dword_22AEAE000, v153, OS_LOG_TYPE_ERROR, v156, buf, 0x16u);
      }
    }

    else
    {
      v129 = [v7 event];
      v130 = [v129 isEqual:&unk_283EE7D88];

      if (!v130)
      {
        goto LABEL_137;
      }

      v218 = v10;
      v220 = v13;
      v131 = *MEMORY[0x277CD50D8];
      v132 = [v4 objectForKeyedSubscript:*MEMORY[0x277CD50D8]];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v133 = v132;
      }

      else
      {
        v133 = 0;
      }

      v88 = v133;

      if (!v88)
      {
        goto LABEL_198;
      }

      v134 = [v88 objectForKeyedSubscript:*MEMORY[0x277CD5188]];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v135 = v134;
      }

      else
      {
        v135 = 0;
      }

      v136 = v135;

      v221 = v136;
      if ([v136 isEqual:*MEMORY[0x277CD5180]])
      {
        v227 = self;
        v212 = v7;
        v216 = v4;
        v206 = v88;
        v137 = [v88 objectForKeyedSubscript:*MEMORY[0x277CD51A0]];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v138 = v137;
        }

        else
        {
          v138 = 0;
        }

        v139 = v138;

        if (v139)
        {
          v238 = 0u;
          v239 = 0u;
          v236 = 0u;
          v237 = 0u;
          obj = v139;
          v140 = [obj countByEnumeratingWithState:&v236 objects:v257 count:16];
          if (!v140)
          {
            goto LABEL_136;
          }

          v141 = v140;
          v142 = *v237;
          v143 = *MEMORY[0x277CD50D0];
          while (1)
          {
            for (k = 0; k != v141; ++k)
            {
              if (*v237 != v142)
              {
                objc_enumerationMutation(obj);
              }

              v145 = *(*(&v236 + 1) + 8 * k);
              v146 = [v145 hmf_numberForKey:v143];
              v147 = [v145 objectForKeyedSubscript:v131];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v148 = v147;
              }

              else
              {
                v148 = 0;
              }

              v149 = v148;

              if ([v146 isEqual:&unk_283EE7D88])
              {
                v150 = v227;
                v115 = [(HMMTRAccessoryServer *)v227 numberOfReadValue:v149];

                if (v115)
                {
                  v173 = objc_autoreleasePoolPush();
                  v174 = v227;
                  v175 = HMFGetOSLogHandle();
                  v7 = v212;
                  if (os_log_type_enabled(v175, OS_LOG_TYPE_INFO))
                  {
                    v176 = HMFGetLogIdentifier();
                    v177 = [(HMMTRAccessoryServer *)v174 primaryAccessory];
                    v178 = [v177 shortDescription];
                    *buf = 138544386;
                    v266 = v176;
                    v267 = 2112;
                    v268 = v178;
                    v269 = 2112;
                    v270 = v10;
                    v271 = 2112;
                    v272 = v220;
                    v273 = 2112;
                    v274 = v115;
                    _os_log_impl(&dword_22AEAE000, v175, OS_LOG_TYPE_INFO, "%{public}@%@ [Event no. %@, UpTime %@] WiFi Disconnection event with reason %@", buf, 0x34u);
                  }

                  objc_autoreleasePoolPop(v173);
                  v255 = @"wifiNetwork_ConnectionStatus";
                  v179 = [HMMTRAccessoryServerDiagnosticsEvent alloc];
                  v254 = v115;
                  v123 = [MEMORY[0x277CBEA60] arrayWithObjects:&v254 count:1];
                  v124 = [(HMMTRAccessoryServerDiagnosticsEvent *)v179 initWithValues:v123];
                  v256 = v124;
                  v164 = MEMORY[0x277CBEAC0];
                  v165 = &v256;
                  v166 = &v255;
LABEL_166:
                  v82 = [v164 dictionaryWithObjects:v165 forKeys:v166 count:1];
                  v4 = v216;
                  v10 = v218;
                  goto LABEL_167;
                }

LABEL_191:
                v125 = objc_autoreleasePoolPush();
                v126 = v150;
                v127 = HMFGetOSLogHandle();
                v7 = v212;
                v4 = v216;
                if (os_log_type_enabled(v127, OS_LOG_TYPE_ERROR))
                {
                  v167 = HMFGetLogIdentifier();
                  *buf = 138543618;
                  v266 = v167;
                  v267 = 2112;
                  v268 = v216;
                  v168 = "%{public}@WiFiNetworkDiagnostics Disconnection event data has unexpected structure: %@";
LABEL_193:
                  _os_log_impl(&dword_22AEAE000, v127, OS_LOG_TYPE_ERROR, v168, buf, 0x16u);
                }

LABEL_194:

                objc_autoreleasePoolPop(v125);
LABEL_195:
                v82 = 0;
LABEL_196:
                v10 = v218;
                v13 = v220;
                goto LABEL_197;
              }
            }

            v141 = [obj countByEnumeratingWithState:&v236 objects:v257 count:16];
            if (!v141)
            {
LABEL_136:

              v150 = v227;
              goto LABEL_191;
            }
          }
        }

        goto LABEL_199;
      }

      v151 = objc_autoreleasePoolPush();
      v152 = self;
      v153 = HMFGetOSLogHandle();
      v154 = v136;
      if (os_log_type_enabled(v153, OS_LOG_TYPE_ERROR))
      {
        v155 = HMFGetLogIdentifier();
        *buf = 138543618;
        v266 = v155;
        v267 = 2112;
        v268 = v221;
        v156 = "%{public}@WiFiNetworkDiagnostics Disconnection event data type is unexpected: %@";
        goto LABEL_153;
      }
    }

    objc_autoreleasePoolPop(v151);
    goto LABEL_195;
  }

  v220 = v13;
  v45 = *MEMORY[0x277CD50D8];
  v46 = [v4 objectForKeyedSubscript:*MEMORY[0x277CD50D8]];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v47 = v46;
  }

  else
  {
    v47 = 0;
  }

  v21 = v47;

  if (!v21)
  {
    goto LABEL_198;
  }

  v48 = [v21 objectForKeyedSubscript:*MEMORY[0x277CD5188]];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v49 = v48;
  }

  else
  {
    v49 = 0;
  }

  v50 = v49;

  v207 = v50;
  if (([v50 isEqual:*MEMORY[0x277CD5180]] & 1) == 0)
  {
    v108 = objc_autoreleasePoolPush();
    v109 = self;
    v110 = HMFGetOSLogHandle();
    v111 = v50;
    if (os_log_type_enabled(v110, OS_LOG_TYPE_ERROR))
    {
      HMFGetLogIdentifier();
      v113 = v112 = v10;
      *buf = 138543618;
      v266 = v113;
      v267 = 2112;
      v268 = v207;
      v114 = "%{public}@WiFiNetworkDiagnostics AssociationFailure event data type is unexpected: %@";
      goto LABEL_140;
    }

LABEL_141:

    objc_autoreleasePoolPop(v108);
    v82 = 0;
    v13 = v220;
    goto LABEL_197;
  }

  v227 = self;
  v204 = v21;
  v51 = [v21 objectForKeyedSubscript:*MEMORY[0x277CD51A0]];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v52 = v51;
  }

  else
  {
    v52 = 0;
  }

  v53 = v52;

  if (!v53)
  {
    goto LABEL_199;
  }

  v219 = v10;
  v246 = 0u;
  v247 = 0u;
  v244 = 0u;
  v245 = 0u;
  v54 = v53;
  v55 = [v54 countByEnumeratingWithState:&v244 objects:v277 count:16];
  obja = v54;
  if (!v55)
  {

    v57 = 0;
    v71 = 0;
    v13 = v220;
    goto LABEL_157;
  }

  v56 = v55;
  v210 = v7;
  v215 = v4;
  v222 = 0;
  v57 = 0;
  v58 = *v245;
  v59 = *MEMORY[0x277CD50D0];
  do
  {
    for (m = 0; m != v56; ++m)
    {
      if (*v245 != v58)
      {
        objc_enumerationMutation(obja);
      }

      v61 = *(*(&v244 + 1) + 8 * m);
      v62 = [v61 objectForKeyedSubscript:v59];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v63 = v62;
      }

      else
      {
        v63 = 0;
      }

      v64 = v63;

      v65 = [v61 objectForKeyedSubscript:v45];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v66 = v65;
      }

      else
      {
        v66 = 0;
      }

      v67 = v66;

      if ([v64 isEqual:&unk_283EE7D88])
      {
        v68 = [(HMMTRAccessoryServer *)v227 numberOfReadValue:v67];
        v69 = v57;
        v57 = v68;
      }

      else
      {
        if (![v64 isEqual:&unk_283EE7DA0])
        {
          goto LABEL_69;
        }

        v70 = [(HMMTRAccessoryServer *)v227 numberOfReadValue:v67];
        v69 = v222;
        v222 = v70;
      }

LABEL_69:
    }

    v56 = [obja countByEnumeratingWithState:&v244 objects:v277 count:16];
  }

  while (v56);

  v7 = v210;
  if (v57)
  {
    v13 = v220;
    v71 = v222;
    if (v222)
    {
      v72 = objc_autoreleasePoolPush();
      v73 = v227;
      v74 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v74, OS_LOG_TYPE_INFO))
      {
        v75 = HMFGetLogIdentifier();
        v76 = [(HMMTRAccessoryServer *)v73 primaryAccessory];
        v77 = [v76 shortDescription];
        *buf = 138544642;
        v266 = v75;
        v267 = 2112;
        v268 = v77;
        v269 = 2112;
        v270 = v219;
        v271 = 2112;
        v272 = v220;
        v273 = 2112;
        v274 = v57;
        v275 = 2112;
        v276 = v222;
        _os_log_impl(&dword_22AEAE000, v74, OS_LOG_TYPE_INFO, "%{public}@%@ [Event no. %@, UpTime %@] WiFi Association Failure event with cause %@, status %@", buf, 0x3Eu);
      }

      objc_autoreleasePoolPop(v72);
      v263 = @"wifiNetwork_AssociationFailure";
      v78 = [HMMTRAccessoryServerDiagnosticsEvent alloc];
      v262[0] = v57;
      v71 = v222;
      v262[1] = v222;
      v79 = [MEMORY[0x277CBEA60] arrayWithObjects:v262 count:2];
      v80 = [(HMMTRAccessoryServerDiagnosticsEvent *)v78 initWithValues:v79];
      v264 = v80;
      v81 = 1;
      v82 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v264 forKeys:&v263 count:1];

      v4 = v215;
      goto LABEL_160;
    }

    v4 = v215;
  }

  else
  {
    v4 = v215;
    v13 = v220;
    v71 = v222;
  }

LABEL_157:
  v169 = objc_autoreleasePoolPush();
  v170 = v227;
  v171 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v171, OS_LOG_TYPE_ERROR))
  {
    v172 = HMFGetLogIdentifier();
    *buf = 138543618;
    v266 = v172;
    v267 = 2112;
    v268 = v4;
    _os_log_impl(&dword_22AEAE000, v171, OS_LOG_TYPE_ERROR, "%{public}@WiFiNetworkDiagnostics AssociationFailure event data has unexpected structure: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v169);
  v81 = 0;
  v82 = 0;
LABEL_160:

  v10 = v219;
  if (v81)
  {
    goto LABEL_168;
  }

LABEL_197:

  v203 = *MEMORY[0x277D85DE8];
}

- (id)generalDiagnosticsClusterFromEndpoints:(id)a3 topology:(id)a4 device:(id)a5 definitelyUnsupported:(BOOL *)a6
{
  v10 = a5;
  v11 = [(HMMTRAccessoryServer *)self endpointForDiagnosticCluster:&unk_283EE7D28 clusterName:@"GeneralDiagnostics" amongEndpoints:a3 topology:a4 device:v10 definitelyUnsupported:a6];
  if (v11)
  {
    v12 = objc_alloc(MEMORY[0x277CD5268]);
    v13 = [(HAPAccessoryServer *)self clientQueue];
    v14 = [v12 initWithDevice:v10 endpointID:v11 queue:v13];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)errorCountOfWiFiNetworkDiagnostics:(id)a3
{
  v4 = [a3 readAttributeOverrunCountWithParams:0];
  v5 = [(HMMTRAccessoryServer *)self numberOfReadValue:v4];

  return v5;
}

- (id)packetCountOfWiFiNetworkDiagnostics:(id)a3
{
  v4 = a3;
  v5 = [v4 readAttributePacketUnicastTxCountWithParams:0];
  v6 = [(HMMTRAccessoryServer *)self numberOfReadValue:v5];

  if (!v6)
  {
    goto LABEL_6;
  }

  v7 = [v6 unsignedLongValue];
  v8 = [v4 readAttributePacketMulticastTxCountWithParams:0];
  v9 = [(HMMTRAccessoryServer *)self numberOfReadValue:v8];

  if (!v9)
  {
    goto LABEL_6;
  }

  v10 = [v9 unsignedLongValue];
  v11 = [v4 readAttributePacketUnicastRxCountWithParams:0];
  v12 = [(HMMTRAccessoryServer *)self numberOfReadValue:v11];

  if (!v12)
  {
    goto LABEL_6;
  }

  v13 = [v12 unsignedLongValue];
  v14 = [v4 readAttributePacketMulticastRxCountWithParams:0];
  v15 = [(HMMTRAccessoryServer *)self numberOfReadValue:v14];

  if (v15)
  {
    v16 = [v15 unsignedLongValue];
    v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:(v10 + v7 + v13 + v16)];
  }

  else
  {
LABEL_6:
    v17 = 0;
  }

  return v17;
}

- (id)highestRSSIofThreadNetworkDiagnostics:(id)a3
{
  v89 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 readAttributeNeighborTableWithParams:0];
  v6 = v5;
  if (v5)
  {
    v71 = *MEMORY[0x277CD5188];
    v7 = [v5 objectForKeyedSubscript:?];
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

    if ([v9 isEqual:*MEMORY[0x277CD50B0]])
    {
      v67 = *MEMORY[0x277CD51A0];
      v10 = [v6 objectForKeyedSubscript:?];
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

      if (!v12)
      {
        goto LABEL_75;
      }

      v61 = v6;
      v62 = v4;
      v81 = 0u;
      v82 = 0u;
      v79 = 0u;
      v80 = 0u;
      v13 = v12;
      v70 = [v13 countByEnumeratingWithState:&v79 objects:v84 count:16];
      if (!v70)
      {
        v65 = 0;
        goto LABEL_66;
      }

      v65 = 0;
      v69 = *v80;
      v73 = *MEMORY[0x277CD50D8];
      v68 = *MEMORY[0x277CD5180];
      v14 = *MEMORY[0x277CD50D0];
      v66 = self;
      obj = v13;
LABEL_12:
      v15 = 0;
      while (1)
      {
        v16 = v9;
        if (*v80 != v69)
        {
          objc_enumerationMutation(obj);
        }

        v17 = [*(*(&v79 + 1) + 8 * v15) objectForKeyedSubscript:{v73, v61, v62}];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v18 = v17;
        }

        else
        {
          v18 = 0;
        }

        v19 = v18;

        if (!v19)
        {
LABEL_73:
          _HMFPreconditionFailure();
LABEL_74:
          _HMFPreconditionFailure();
LABEL_75:
          _HMFPreconditionFailure();
        }

        v20 = [v19 objectForKeyedSubscript:v71];
        objc_opt_class();
        v21 = (objc_opt_isKindOfClass() & 1) != 0 ? v20 : 0;
        v9 = v21;

        if (([v9 isEqual:v68] & 1) == 0)
        {
          break;
        }

        v22 = [v19 objectForKeyedSubscript:v67];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v23 = v22;
        }

        else
        {
          v23 = 0;
        }

        v24 = v23;

        if (!v24)
        {
          goto LABEL_74;
        }

        v74 = v15;
        v77 = 0u;
        v78 = 0u;
        v75 = 0u;
        v76 = 0u;
        v25 = v24;
        v26 = [v25 countByEnumeratingWithState:&v75 objects:v83 count:16];
        if (v26)
        {
          v27 = v26;
          v72 = v9;
          v28 = *v76;
LABEL_29:
          v29 = 0;
          while (1)
          {
            if (*v76 != v28)
            {
              objc_enumerationMutation(v25);
            }

            v30 = *(*(&v75 + 1) + 8 * v29);
            v31 = [v30 objectForKeyedSubscript:v14];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v32 = v31;
            }

            else
            {
              v32 = 0;
            }

            v33 = v32;

            if (!v33)
            {
              _HMFPreconditionFailure();
              goto LABEL_73;
            }

            if ([v33 isEqual:&unk_283EE7DD0])
            {
              break;
            }

            if (v27 == ++v29)
            {
              v27 = [v25 countByEnumeratingWithState:&v75 objects:v83 count:16];
              if (!v27)
              {
                v9 = v72;
                self = v66;
                goto LABEL_53;
              }

              goto LABEL_29;
            }
          }

          v34 = [v30 objectForKeyedSubscript:v73];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v35 = v34;
          }

          else
          {
            v35 = 0;
          }

          v36 = v35;

          if (!v36)
          {
            goto LABEL_73;
          }

          self = v66;
          v37 = [(HMMTRAccessoryServer *)v66 numberOfReadValue:v36];
          v38 = v37;
          if (v37)
          {
            v9 = v72;
            if (!v65 || (v39 = [v37 integerValue], v39 > objc_msgSend(v65, "integerValue")))
            {
              v40 = v38;

              v65 = v40;
            }
          }

          else
          {
            context = objc_autoreleasePoolPush();
            v41 = v66;
            v42 = HMFGetOSLogHandle();
            v9 = v72;
            if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
            {
              v43 = HMFGetLogIdentifier();
              *buf = 138543362;
              v86 = v43;
              v44 = v43;
              _os_log_impl(&dword_22AEAE000, v42, OS_LOG_TYPE_ERROR, "%{public}@ThreadNetworkDiagnostics NeighborTable AverageRssi entry is not a number", buf, 0xCu);

              self = v66;
            }

            objc_autoreleasePoolPop(context);
          }

          v17 = v34;
        }

        else
        {
          v17 = v19;
        }

LABEL_53:

        v15 = v74 + 1;
        if (v74 + 1 == v70)
        {
          v13 = obj;
          v70 = [obj countByEnumeratingWithState:&v79 objects:v84 count:16];
          if (!v70)
          {
LABEL_66:

            v58 = v65;
            v49 = v58;
            v6 = v61;
            v4 = v62;
            goto LABEL_67;
          }

          goto LABEL_12;
        }
      }

      v54 = objc_autoreleasePoolPush();
      v55 = self;
      v56 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
      {
        v57 = HMFGetLogIdentifier();
        *buf = 138543618;
        v86 = v57;
        v87 = 2112;
        v88 = v9;
        _os_log_impl(&dword_22AEAE000, v56, OS_LOG_TYPE_ERROR, "%{public}@ThreadNetworkDiagnostics NeighborTable entry is not a structure but a %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v54);
      v13 = obj;

      v49 = 0;
      v6 = v61;
      v4 = v62;
      v58 = v65;
LABEL_67:
    }

    else
    {
      v50 = objc_autoreleasePoolPush();
      v51 = self;
      v52 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
      {
        v53 = HMFGetLogIdentifier();
        *buf = 138543618;
        v86 = v53;
        v87 = 2112;
        v88 = v9;
        _os_log_impl(&dword_22AEAE000, v52, OS_LOG_TYPE_ERROR, "%{public}@ThreadNetworkDiagnostics NeighborTable attribute is not an array but a %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v50);
      v49 = 0;
    }
  }

  else
  {
    v45 = objc_autoreleasePoolPush();
    v46 = self;
    v47 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
    {
      v48 = HMFGetLogIdentifier();
      *buf = 138543362;
      v86 = v48;
      _os_log_impl(&dword_22AEAE000, v47, OS_LOG_TYPE_ERROR, "%{public}@NeighborTable missing from ThreadNetworkDiagnostics", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v45);
    v49 = 0;
  }

  v59 = *MEMORY[0x277D85DE8];

  return v49;
}

- (id)errorCountOfThreadNetworkDiagnostics:(id)a3
{
  v4 = a3;
  v5 = [v4 readAttributeTxDirectMaxRetryExpiryCountWithParams:0];
  v6 = [(HMMTRAccessoryServer *)self numberOfReadValue:v5];

  if (!v6)
  {
    goto LABEL_13;
  }

  v7 = [v6 unsignedLongValue];
  v8 = [v4 readAttributeTxIndirectMaxRetryExpiryCountWithParams:0];
  v9 = [(HMMTRAccessoryServer *)self numberOfReadValue:v8];

  if (!v9)
  {
    goto LABEL_13;
  }

  v10 = [v9 unsignedLongValue];
  v11 = [v4 readAttributeTxErrCcaCountWithParams:0];
  v12 = [(HMMTRAccessoryServer *)self numberOfReadValue:v11];

  if (!v12)
  {
    goto LABEL_13;
  }

  v13 = [v12 unsignedLongValue];
  v14 = [v4 readAttributeTxErrAbortCountWithParams:0];
  v15 = [(HMMTRAccessoryServer *)self numberOfReadValue:v14];

  if (!v15)
  {
    goto LABEL_13;
  }

  v16 = [v15 unsignedLongValue];
  v17 = [v4 readAttributeTxErrBusyChannelCountWithParams:0];
  v18 = [(HMMTRAccessoryServer *)self numberOfReadValue:v17];

  if (!v18)
  {
    goto LABEL_13;
  }

  v19 = [v18 unsignedLongValue];
  v20 = [v4 readAttributeRxErrNoFrameCountWithParams:0];
  v21 = [(HMMTRAccessoryServer *)self numberOfReadValue:v20];

  if (!v21)
  {
    goto LABEL_13;
  }

  v39 = [v21 unsignedLongValue];
  v22 = [v4 readAttributeRxErrUnknownNeighborCountWithParams:0];
  v23 = [(HMMTRAccessoryServer *)self numberOfReadValue:v22];

  if (!v23)
  {
    goto LABEL_13;
  }

  v38 = [v23 unsignedLongValue];
  v24 = [v4 readAttributeRxErrInvalidSrcAddrCountWithParams:0];
  v25 = [(HMMTRAccessoryServer *)self numberOfReadValue:v24];

  if (!v25)
  {
    goto LABEL_13;
  }

  v37 = [v25 unsignedLongValue];
  v26 = [v4 readAttributeRxErrSecCountWithParams:0];
  v27 = [(HMMTRAccessoryServer *)self numberOfReadValue:v26];

  if (!v27)
  {
    goto LABEL_13;
  }

  v36 = [v27 unsignedLongValue];
  v28 = [v4 readAttributeRxErrFcsCountWithParams:0];
  v29 = [(HMMTRAccessoryServer *)self numberOfReadValue:v28];

  if (!v29)
  {
    goto LABEL_13;
  }

  v30 = [v29 unsignedLongValue];
  v31 = [v4 readAttributeRxErrOtherCountWithParams:0];
  v32 = [(HMMTRAccessoryServer *)self numberOfReadValue:v31];

  if (v32)
  {
    v33 = [v32 unsignedLongValue];
    v34 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:(v10 + v7 + v13 + v16 + v19 + v39 + v38 + v37 + v36 + v30 + v33)];
  }

  else
  {
LABEL_13:
    v34 = 0;
  }

  return v34;
}

- (id)packetCountOfThreadNetworkDiagnostics:(id)a3
{
  v4 = a3;
  v5 = [v4 readAttributeTxTotalCountWithParams:0];
  v6 = [(HMMTRAccessoryServer *)self numberOfReadValue:v5];

  if (v6 && (v7 = [v6 unsignedLongValue], objc_msgSend(v4, "readAttributeRxTotalCountWithParams:", 0), v8 = objc_claimAutoreleasedReturnValue(), -[HMMTRAccessoryServer numberOfReadValue:](self, "numberOfReadValue:", v8), v9 = objc_claimAutoreleasedReturnValue(), v6, v8, v9))
  {
    v10 = [v9 unsignedLongValue];
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:(v10 + v7)];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)connectedNetworkIDFromReadValue:(id)a3
{
  v76 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = *MEMORY[0x277CD5188];
    v6 = [v3 objectForKeyedSubscript:*MEMORY[0x277CD5188]];
    v7 = 0x277CCA000uLL;
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

    v10 = 0;
    v11 = 0;
    if ([v9 isEqual:*MEMORY[0x277CD50B0]])
    {
      v57 = *MEMORY[0x277CD51A0];
      v12 = [v4 objectForKeyedSubscript:?];
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

      v72 = 0u;
      v73 = 0u;
      v70 = 0u;
      v71 = 0u;
      obj = v14;
      v11 = [obj countByEnumeratingWithState:&v70 objects:v75 count:16];
      if (v11)
      {
        v53 = v9;
        v54 = v4;
        LOBYTE(v15) = 0;
        v64 = 0;
        v16 = *v71;
        v17 = *MEMORY[0x277CD50D8];
        v62 = *MEMORY[0x277CD5180];
        v18 = *MEMORY[0x277CD50D0];
        v55 = *v71;
        v56 = v5;
        while (2)
        {
          v19 = 0;
          v58 = v11;
          do
          {
            if (*v71 != v16)
            {
              objc_enumerationMutation(obj);
            }

            if (v15)
            {
              v11 = v64;
              v10 = v64;
              goto LABEL_56;
            }

            v20 = [*(*(&v70 + 1) + 8 * v19) objectForKeyedSubscript:v17];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v21 = v20;
            }

            else
            {
              v21 = 0;
            }

            v22 = v21;

            v23 = [v22 objectForKeyedSubscript:v5];
            v24 = v7;
            v25 = *(v7 + 3240);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v26 = v23;
            }

            else
            {
              v26 = 0;
            }

            v27 = v5;
            v28 = v26;

            v29 = v28;
            v63 = v22;
            if ([v28 isEqual:v62])
            {
              v60 = v28;
              v61 = v19;
              v30 = [v22 objectForKeyedSubscript:v57];
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

              v68 = 0u;
              v69 = 0u;
              v66 = 0u;
              v67 = 0u;
              v33 = v32;
              v34 = [v33 countByEnumeratingWithState:&v66 objects:v74 count:16];
              if (v34)
              {
                v35 = v34;
                v15 = 0;
                v36 = *v67;
                do
                {
                  for (i = 0; i != v35; ++i)
                  {
                    if (*v67 != v36)
                    {
                      objc_enumerationMutation(v33);
                    }

                    v38 = *(*(&v66 + 1) + 8 * i);
                    v39 = [v38 objectForKeyedSubscript:v18];
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      v40 = v39;
                    }

                    else
                    {
                      v40 = 0;
                    }

                    v41 = v40;

                    if ([v41 isEqual:&unk_283EE7DA0])
                    {
                      v42 = [v38 objectForKeyedSubscript:v17];
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

                      v45 = [(HMMTRAccessoryServer *)self numberOfReadValue:v44];

                      v15 |= [v45 BOOLValue];
                    }

                    else if ([v41 isEqual:&unk_283EE7D88])
                    {
                      v46 = [v38 objectForKeyedSubscript:v17];
                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        v47 = v46;
                      }

                      else
                      {
                        v47 = 0;
                      }

                      v48 = v47;

                      v49 = [(HMMTRAccessoryServer *)self stringOfReadValue:v48];

                      v64 = v49;
                    }
                  }

                  v35 = [v33 countByEnumeratingWithState:&v66 objects:v74 count:16];
                }

                while (v35);
              }

              else
              {
                LOBYTE(v15) = 0;
              }

              v16 = v55;
              v5 = v56;
              v7 = 0x277CCA000;
              v11 = v58;
              v29 = v60;
              v19 = v61;
            }

            else
            {
              LOBYTE(v15) = 0;
              v5 = v27;
              v7 = v24;
            }

            v19 = v19 + 1;
          }

          while (v19 != v11);
          v11 = [obj countByEnumeratingWithState:&v70 objects:v75 count:16];
          if (v11)
          {
            continue;
          }

          break;
        }

        v11 = v64;
        if (v15)
        {
          v10 = v64;
        }

        else
        {
          v10 = 0;
        }

LABEL_56:
        v9 = v53;
        v4 = v54;
      }

      else
      {
        v10 = 0;
      }
    }

    v50 = v10;
  }

  else
  {
    v50 = 0;
  }

  v51 = *MEMORY[0x277D85DE8];

  return v50;
}

- (id)stringOfReadValue:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (!v3)
  {
    v16 = 0;
    goto LABEL_24;
  }

  v5 = [v3 objectForKeyedSubscript:*MEMORY[0x277CD5188]];
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

  if ([v7 isEqual:*MEMORY[0x277CD5168]])
  {
    v8 = [v4 objectForKeyedSubscript:*MEMORY[0x277CD51A0]];
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

    v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:objc_msgSend(v10 length:"bytes") encoding:{objc_msgSend(v10, "length"), 4}];
    if (!v11)
    {
      v12 = [v10 bytes];
      if ([v10 length])
      {
        v13 = 0;
        v14 = &stru_283ED2308;
        do
        {
          v15 = v14;
          v14 = [(__CFString *)v14 stringByAppendingFormat:@"%X", *(v12 + v13)];

          ++v13;
        }

        while ([v10 length] > v13);
      }

      else
      {
        v14 = &stru_283ED2308;
      }

      goto LABEL_21;
    }
  }

  else
  {
    if (![v7 isEqual:*MEMORY[0x277CD5190]])
    {
      v14 = 0;
      goto LABEL_23;
    }

    v10 = [v4 objectForKeyedSubscript:*MEMORY[0x277CD51A0]];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = v10;
    }

    else
    {
      v17 = 0;
    }

    v11 = v17;
  }

  v14 = v11;
LABEL_21:

LABEL_23:
  v16 = v14;

LABEL_24:

  return v16;
}

- (id)dataOfReadValue:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 objectForKeyedSubscript:*MEMORY[0x277CD5188]];
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

    v8 = [v7 isEqual:*MEMORY[0x277CD5168]];
    v9 = 0;
    if (v8)
    {
      v10 = [v4 objectForKeyedSubscript:*MEMORY[0x277CD51A0]];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = v10;
      }

      else
      {
        v11 = 0;
      }

      v9 = v11;
    }

    v12 = v9;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)numberOfReadValue:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 objectForKeyedSubscript:*MEMORY[0x277CD5188]];
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

    if (([v7 isEqual:*MEMORY[0x277CD5178]] & 1) != 0 || (objc_msgSend(v7, "isEqual:", *MEMORY[0x277CD5198]) & 1) != 0 || (objc_msgSend(v7, "isEqual:", *MEMORY[0x277CD50C0]) & 1) != 0 || (objc_msgSend(v7, "isEqual:", *MEMORY[0x277CD5150]) & 1) != 0 || objc_msgSend(v7, "isEqual:", *MEMORY[0x277CD5118]))
    {
      v8 = [v4 objectForKeyedSubscript:*MEMORY[0x277CD51A0]];
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
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)networkCommissioningClusterFromEndpoints:(id)a3 topology:(id)a4 device:(id)a5 definitelyUnsupported:(BOOL *)a6
{
  v10 = a5;
  v11 = [(HMMTRAccessoryServer *)self endpointForDiagnosticCluster:&unk_283EE7D10 clusterName:@"NetworkCommissioningCluster" amongEndpoints:a3 topology:a4 device:v10 definitelyUnsupported:a6];
  if (v11)
  {
    v12 = objc_alloc(MEMORY[0x277CD5278]);
    v13 = [v11 unsignedShortValue];
    v14 = [(HAPAccessoryServer *)self clientQueue];
    v15 = [v12 initWithDevice:v10 endpoint:v13 queue:v14];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)wifiNetworkDiagnosticsClusterFromEndpoints:(id)a3 topology:(id)a4 device:(id)a5 definitelyUnsupported:(BOOL *)a6
{
  v10 = a5;
  v11 = [(HMMTRAccessoryServer *)self endpointForDiagnosticCluster:&unk_283EE7D70 clusterName:@"WiFiNetworkDiagnostics" amongEndpoints:a3 topology:a4 device:v10 definitelyUnsupported:a6];
  if (v11)
  {
    v12 = objc_alloc(MEMORY[0x277CD52C0]);
    v13 = [(HAPAccessoryServer *)self clientQueue];
    v14 = [v12 initWithDevice:v10 endpointID:v11 queue:v13];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)threadNetworkDiagnosticsClusterFromEndpoints:(id)a3 topology:(id)a4 device:(id)a5 definitelyUnsupported:(BOOL *)a6
{
  v10 = a5;
  v11 = [(HMMTRAccessoryServer *)self endpointForDiagnosticCluster:&unk_283EE7D58 clusterName:@"ThreadNetworkDiagnostics" amongEndpoints:a3 topology:a4 device:v10 definitelyUnsupported:a6];
  if (v11)
  {
    v12 = objc_alloc(MEMORY[0x277CD52B8]);
    v13 = [(HAPAccessoryServer *)self clientQueue];
    v14 = [v12 initWithDevice:v10 endpointID:v11 queue:v13];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)endpointForDiagnosticCluster:(id)a3 clusterName:(id)a4 amongEndpoints:(id)a5 topology:(id)a6 device:(id)a7 definitelyUnsupported:(BOOL *)a8
{
  v104 = *MEMORY[0x277D85DE8];
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v92 = 0u;
  v93 = 0u;
  v94 = 0u;
  v95 = 0u;
  v18 = v15;
  v19 = [v18 countByEnumeratingWithState:&v92 objects:v103 count:16];
  if (!v19)
  {

LABEL_40:
    v60 = objc_autoreleasePoolPush();
    v61 = self;
    v62 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v62, OS_LOG_TYPE_DEBUG))
    {
      v63 = HMFGetLogIdentifier();
      *buf = 138543874;
      v98 = v63;
      v99 = 2112;
      v100 = v14;
      v101 = 2112;
      v102 = v18;
      _os_log_impl(&dword_22AEAE000, v62, OS_LOG_TYPE_DEBUG, "%{public}@No %@ cluster in any endpoints %@.", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v60);
    v54 = 0;
    *a8 = 1;
    goto LABEL_43;
  }

  v20 = v19;
  v83 = self;
  v85 = v17;
  v86 = v14;
  v21 = 0;
  v22 = *v93;
  while (2)
  {
    for (i = 0; i != v20; ++i)
    {
      if (*v93 != v22)
      {
        objc_enumerationMutation(v18);
      }

      v24 = *(*(&v92 + 1) + 8 * i);
      v25 = [v16 getClustersInUseAtEndpoint:v24];
      if ([v25 containsObject:v13])
      {
        v56 = objc_autoreleasePoolPush();
        v57 = v83;
        v58 = HMFGetOSLogHandle();
        v14 = v86;
        if (os_log_type_enabled(v58, OS_LOG_TYPE_DEBUG))
        {
          v59 = HMFGetLogIdentifier();
          *buf = 138543874;
          v98 = v59;
          v99 = 2112;
          v100 = v86;
          v101 = 2112;
          v102 = v24;
          _os_log_impl(&dword_22AEAE000, v58, OS_LOG_TYPE_DEBUG, "%{public}@%@ cluster found in endpoint %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v56);
        v54 = v24;

        v17 = v85;
        goto LABEL_43;
      }

      v21 |= [v24 isEqual:&unk_283EE7D88];
    }

    v20 = [v18 countByEnumeratingWithState:&v92 objects:v103 count:16];
    if (v20)
    {
      continue;
    }

    break;
  }

  v17 = v85;
  v14 = v86;
  self = v83;
  if ((v21 & 1) == 0)
  {
    goto LABEL_40;
  }

  v26 = objc_autoreleasePoolPush();
  v27 = v83;
  v28 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
  {
    v29 = HMFGetLogIdentifier();
    *buf = 138543618;
    v98 = v29;
    v99 = 2112;
    v100 = v86;
    _os_log_impl(&dword_22AEAE000, v28, OS_LOG_TYPE_DEBUG, "%{public}@Checking endpoint 0 for %@ cluster", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v26);
  v30 = objc_alloc(MEMORY[0x277CD5258]);
  v31 = [(HAPAccessoryServer *)v27 clientQueue];
  v32 = [v30 initWithDevice:v85 endpointID:&unk_283EE7D88 queue:v31];

  v33 = [v32 readAttributeServerListWithParams:0];
  v34 = v33;
  v81 = v32;
  if (v33)
  {
    v84 = v27;
    v35 = [v33 objectForKeyedSubscript:*MEMORY[0x277CD5188]];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v36 = v35;
    }

    else
    {
      v36 = 0;
    }

    v37 = v36;

    v80 = v37;
    if ([v37 isEqual:*MEMORY[0x277CD50B0]])
    {
      v79 = v34;
      v38 = [v34 objectForKeyedSubscript:*MEMORY[0x277CD51A0]];
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

      if (!v40)
      {
LABEL_59:
        _HMFPreconditionFailure();
      }

      v90 = 0u;
      v91 = 0u;
      v88 = 0u;
      v89 = 0u;
      obj = v40;
      v41 = [obj countByEnumeratingWithState:&v88 objects:v96 count:16];
      if (!v41)
      {
        goto LABEL_33;
      }

      v42 = v41;
      v43 = *v89;
      v44 = *MEMORY[0x277CD50D8];
LABEL_23:
      v45 = 0;
      while (1)
      {
        if (*v89 != v43)
        {
          objc_enumerationMutation(obj);
        }

        v46 = [*(*(&v88 + 1) + 8 * v45) objectForKeyedSubscript:v44];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v47 = v46;
        }

        else
        {
          v47 = 0;
        }

        v48 = v47;

        if (!v48)
        {
          _HMFPreconditionFailure();
          goto LABEL_59;
        }

        v49 = [(HMMTRAccessoryServer *)v84 numberOfReadValue:v48];
        if ([v49 isEqual:v13])
        {
          break;
        }

        if (v42 == ++v45)
        {
          v42 = [obj countByEnumeratingWithState:&v88 objects:v96 count:16];
          if (!v42)
          {
LABEL_33:

            v50 = objc_autoreleasePoolPush();
            v51 = v84;
            v52 = HMFGetOSLogHandle();
            v14 = v86;
            if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
            {
              v53 = HMFGetLogIdentifier();
              *buf = 138543618;
              v98 = v53;
              v99 = 2112;
              v100 = v86;
              _os_log_impl(&dword_22AEAE000, v52, OS_LOG_TYPE_DEBUG, "%{public}@Endpoint 0 does not have cluster %@", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v50);
            v54 = 0;
            *a8 = 1;
            v17 = v85;
            v55 = obj;
            goto LABEL_55;
          }

          goto LABEL_23;
        }
      }

      v75 = objc_autoreleasePoolPush();
      v76 = v84;
      v77 = HMFGetOSLogHandle();
      v14 = v86;
      if (os_log_type_enabled(v77, OS_LOG_TYPE_DEBUG))
      {
        v78 = HMFGetLogIdentifier();
        *buf = 138543618;
        v98 = v78;
        v99 = 2112;
        v100 = v86;
        _os_log_impl(&dword_22AEAE000, v77, OS_LOG_TYPE_DEBUG, "%{public}@Endpoint 0 has cluster %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v75);
      v55 = obj;

      v54 = &unk_283EE7D88;
      v17 = v85;
LABEL_55:

      v66 = v79;
    }

    else
    {
      v66 = v34;
      v71 = objc_autoreleasePoolPush();
      v72 = v84;
      v73 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
      {
        v74 = HMFGetLogIdentifier();
        *buf = 138543618;
        v98 = v74;
        v99 = 2112;
        v100 = v80;
        _os_log_impl(&dword_22AEAE000, v73, OS_LOG_TYPE_ERROR, "%{public}@Unexpected ServerList value type: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v71);
      v54 = 0;
      *a8 = 0;
    }
  }

  else
  {
    v66 = 0;
    v67 = objc_autoreleasePoolPush();
    v68 = v27;
    v69 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
    {
      v70 = HMFGetLogIdentifier();
      *buf = 138543362;
      v98 = v70;
      _os_log_impl(&dword_22AEAE000, v69, OS_LOG_TYPE_ERROR, "%{public}@ServerList couldn't be read from endpoint 0", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v67);
    v54 = 0;
    *a8 = 0;
  }

LABEL_43:
  v64 = *MEMORY[0x277D85DE8];

  return v54;
}

- (id)endpointsForHAPAccessory:(id)a3 topology:(id)a4
{
  v49 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v34 = a4;
  v6 = [MEMORY[0x277CBEB18] array];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v35 = v5;
  v7 = [v5 services];
  v8 = [v7 countByEnumeratingWithState:&v36 objects:v48 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v37;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v37 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v36 + 1) + 8 * i);
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

        v15 = [v14 type];
        v16 = [v15 isEqual:@"0000003E-0000-1000-8000-0026BB765291"];

        if (v16)
        {
          v23 = [v14 endpoint];
          [v6 addObject:v23];

          v24 = [v14 endpoint];
          v22 = v34;
          v25 = [v34 getPartsListAtEndpoint:v24];

          [v6 addObjectsFromArray:v25];
          v26 = objc_autoreleasePoolPush();
          v27 = self;
          v28 = HMFGetOSLogHandle();
          v20 = v35;
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
          {
            v29 = HMFGetLogIdentifier();
            *buf = 138544130;
            v41 = v29;
            v42 = 2112;
            v43 = v35;
            v44 = 2112;
            v45 = v14;
            v46 = 2112;
            v47 = v6;
            _os_log_impl(&dword_22AEAE000, v28, OS_LOG_TYPE_DEBUG, "%{public}@HAPAccessory %@ service: %@, endpoints: %@", buf, 0x2Au);
          }

          objc_autoreleasePoolPop(v26);
          v30 = v6;

          goto LABEL_18;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v36 objects:v48 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v17 = objc_autoreleasePoolPush();
  v18 = self;
  v19 = HMFGetOSLogHandle();
  v20 = v35;
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    v21 = HMFGetLogIdentifier();
    *buf = 138543618;
    v41 = v21;
    v42 = 2112;
    v43 = v35;
    _os_log_impl(&dword_22AEAE000, v19, OS_LOG_TYPE_ERROR, "%{public}@No endpoints available for diagnostic clusters for HAPAccessory: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v17);
  v22 = v34;
LABEL_18:

  v31 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)resetWiFiNetworkDiagnosticsCountForAccessory:(id)a3
{
  v4 = a3;
  v5 = [(HAPAccessoryServer *)self clientQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __82__HMMTRAccessoryServer_Diagnostics__resetWiFiNetworkDiagnosticsCountForAccessory___block_invoke;
  v7[3] = &unk_2786EF328;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __82__HMMTRAccessoryServer_Diagnostics__resetWiFiNetworkDiagnosticsCountForAccessory___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    *buf = 138543362;
    v17 = v5;
    _os_log_impl(&dword_22AEAE000, v4, OS_LOG_TYPE_INFO, "%{public}@Resetting WiFiNetworkDiagnostics counters", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  v6 = [*(a1 + 32) matterDevice];

  if (v6)
  {
    v7 = [HMMTRDeviceTopology alloc];
    v8 = [*(a1 + 32) nodeID];
    v9 = [(HMMTRDeviceTopology *)v7 initWithNodeId:v8 server:*(a1 + 32)];

    if (v9)
    {
      v10 = [*(a1 + 32) endpointsForHAPAccessory:*(a1 + 40) topology:v9];
      buf[0] = 0;
      v11 = *(a1 + 32);
      v12 = [v11 matterDevice];
      v13 = [v11 wifiNetworkDiagnosticsClusterFromEndpoints:v10 topology:v9 device:v12 definitelyUnsupported:buf];

      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __82__HMMTRAccessoryServer_Diagnostics__resetWiFiNetworkDiagnosticsCountForAccessory___block_invoke_217;
      v15[3] = &unk_2786EF290;
      v15[4] = *(a1 + 32);
      [v13 resetCountsWithExpectedValues:MEMORY[0x277CBEBF8] expectedValueInterval:&unk_283EE7D88 completion:v15];
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __82__HMMTRAccessoryServer_Diagnostics__resetWiFiNetworkDiagnosticsCountForAccessory___block_invoke_217(uint64_t a1, void *a2)
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
    _os_log_impl(&dword_22AEAE000, v6, OS_LOG_TYPE_INFO, "%{public}@Reset WiFiNetworkDiagnostics counters with error: %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)resetThreadNetworkDiagnosticsCountForAccessory:(id)a3
{
  v4 = a3;
  v5 = [(HAPAccessoryServer *)self clientQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __84__HMMTRAccessoryServer_Diagnostics__resetThreadNetworkDiagnosticsCountForAccessory___block_invoke;
  v7[3] = &unk_2786EF328;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __84__HMMTRAccessoryServer_Diagnostics__resetThreadNetworkDiagnosticsCountForAccessory___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    *buf = 138543362;
    v17 = v5;
    _os_log_impl(&dword_22AEAE000, v4, OS_LOG_TYPE_INFO, "%{public}@Resetting ThreadNetworkDiagnostics counters", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  v6 = [*(a1 + 32) matterDevice];

  if (v6)
  {
    v7 = [HMMTRDeviceTopology alloc];
    v8 = [*(a1 + 32) nodeID];
    v9 = [(HMMTRDeviceTopology *)v7 initWithNodeId:v8 server:*(a1 + 32)];

    if (v9)
    {
      v10 = [*(a1 + 32) endpointsForHAPAccessory:*(a1 + 40) topology:v9];
      buf[0] = 0;
      v11 = *(a1 + 32);
      v12 = [v11 matterDevice];
      v13 = [v11 threadNetworkDiagnosticsClusterFromEndpoints:v10 topology:v9 device:v12 definitelyUnsupported:buf];

      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __84__HMMTRAccessoryServer_Diagnostics__resetThreadNetworkDiagnosticsCountForAccessory___block_invoke_215;
      v15[3] = &unk_2786EF290;
      v15[4] = *(a1 + 32);
      [v13 resetCountsWithExpectedValues:MEMORY[0x277CBEBF8] expectedValueInterval:&unk_283EE7D88 completion:v15];
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __84__HMMTRAccessoryServer_Diagnostics__resetThreadNetworkDiagnosticsCountForAccessory___block_invoke_215(uint64_t a1, void *a2)
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
    _os_log_impl(&dword_22AEAE000, v6, OS_LOG_TYPE_INFO, "%{public}@Reset ThreadNetworkDiagnostics counters with error: %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  v8 = *MEMORY[0x277D85DE8];
}

- (id)getThreadNetworkLinkQualityForAccessory:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__1810;
  v16 = __Block_byref_object_dispose__1811;
  v17 = 0;
  v5 = [(HAPAccessoryServer *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __77__HMMTRAccessoryServer_Diagnostics__getThreadNetworkLinkQualityForAccessory___block_invoke;
  block[3] = &unk_2786F0468;
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_sync(v5, block);

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

void __77__HMMTRAccessoryServer_Diagnostics__getThreadNetworkLinkQualityForAccessory___block_invoke(uint64_t a1)
{
  v31 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) matterDevice];

  if (v2)
  {
    v3 = [HMMTRDeviceTopology alloc];
    v4 = [*(a1 + 32) nodeID];
    v5 = [(HMMTRDeviceTopology *)v3 initWithNodeId:v4 server:*(a1 + 32)];

    if (v5)
    {
      v6 = [MEMORY[0x277CBEB38] dictionary];
      v7 = *(*(a1 + 48) + 8);
      v8 = *(v7 + 40);
      *(v7 + 40) = v6;

      v9 = [*(a1 + 32) endpointsForHAPAccessory:*(a1 + 40) topology:v5];
      v26 = 0;
      v10 = *(a1 + 32);
      v11 = [v10 matterDevice];
      v12 = [v10 threadNetworkDiagnosticsClusterFromEndpoints:v9 topology:v5 device:v11 definitelyUnsupported:&v26];

      if (v12)
      {
        [*(*(*(a1 + 48) + 8) + 40) setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"threadNetwork_DiagnosticsSupported"];
        v13 = [*(a1 + 32) highestRSSIofThreadNetworkDiagnostics:v12];
        if (v13)
        {
          v14 = objc_autoreleasePoolPush();
          v15 = *(a1 + 32);
          v16 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
          {
            v17 = HMFGetLogIdentifier();
            *buf = 138543618;
            v28 = v17;
            v29 = 2112;
            v30 = v13;
            _os_log_impl(&dword_22AEAE000, v16, OS_LOG_TYPE_DEBUG, "%{public}@ThreadNetworkDiagnostics - RSSI: %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v14);
          [*(*(*(a1 + 48) + 8) + 40) setObject:v13 forKeyedSubscript:@"threadNetwork_RSSI"];
        }

        v18 = *(a1 + 32);
        v19 = [v12 readAttributeNetworkNameWithParams:0];
        v20 = [v18 stringOfReadValue:v19];

        if (v20)
        {
          v21 = objc_autoreleasePoolPush();
          v22 = *(a1 + 32);
          v23 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
          {
            v24 = HMFGetLogIdentifier();
            *buf = 138543618;
            v28 = v24;
            v29 = 2112;
            v30 = v20;
            _os_log_impl(&dword_22AEAE000, v23, OS_LOG_TYPE_DEBUG, "%{public}@ThreadNetworkDiagnostics - Network Name: %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v21);
          [*(*(*(a1 + 48) + 8) + 40) setObject:v20 forKeyedSubscript:@"threadNetwork_Name"];
        }
      }
    }
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (id)getWiFiNetworkLinkQualityForAccessory:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__1810;
  v16 = __Block_byref_object_dispose__1811;
  v17 = 0;
  v5 = [(HAPAccessoryServer *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __75__HMMTRAccessoryServer_Diagnostics__getWiFiNetworkLinkQualityForAccessory___block_invoke;
  block[3] = &unk_2786F0468;
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_sync(v5, block);

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

void __75__HMMTRAccessoryServer_Diagnostics__getWiFiNetworkLinkQualityForAccessory___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) matterDevice];

  if (v2)
  {
    v3 = [HMMTRDeviceTopology alloc];
    v4 = [*(a1 + 32) nodeID];
    v5 = [(HMMTRDeviceTopology *)v3 initWithNodeId:v4 server:*(a1 + 32)];

    if (v5)
    {
      v6 = [MEMORY[0x277CBEB38] dictionary];
      v7 = *(*(a1 + 48) + 8);
      v8 = *(v7 + 40);
      *(v7 + 40) = v6;

      v9 = [*(a1 + 32) endpointsForHAPAccessory:*(a1 + 40) topology:v5];
      v21 = 0;
      v10 = *(a1 + 32);
      v11 = [v10 matterDevice];
      v12 = [v10 wifiNetworkDiagnosticsClusterFromEndpoints:v9 topology:v5 device:v11 definitelyUnsupported:&v21];

      if (v12)
      {
        [*(*(*(a1 + 48) + 8) + 40) setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"wifiNetwork_DiagnosticsSupported"];
        v13 = *(a1 + 32);
        v14 = [v12 readAttributeRSSIWithParams:0];
        v15 = [v13 numberOfReadValue:v14];

        if (v15)
        {
          v16 = objc_autoreleasePoolPush();
          v17 = *(a1 + 32);
          v18 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
          {
            v19 = HMFGetLogIdentifier();
            *buf = 138543618;
            v23 = v19;
            v24 = 2112;
            v25 = v15;
            _os_log_impl(&dword_22AEAE000, v18, OS_LOG_TYPE_DEBUG, "%{public}@WiFiNetworkDiagnostics - RSSI: %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v16);
          [*(*(*(a1 + 48) + 8) + 40) setObject:v15 forKeyedSubscript:@"wifiNetwork_RSSI"];
        }
      }
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (id)getConnectNetworkIDForAccessory:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__1810;
  v16 = __Block_byref_object_dispose__1811;
  v17 = 0;
  v5 = [(HAPAccessoryServer *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__HMMTRAccessoryServer_Diagnostics__getConnectNetworkIDForAccessory___block_invoke;
  block[3] = &unk_2786F0468;
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_sync(v5, block);

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

void __69__HMMTRAccessoryServer_Diagnostics__getConnectNetworkIDForAccessory___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) matterDevice];

  if (v2)
  {
    v3 = [HMMTRDeviceTopology alloc];
    v4 = [*(a1 + 32) nodeID];
    v5 = [(HMMTRDeviceTopology *)v3 initWithNodeId:v4 server:*(a1 + 32)];

    if (v5)
    {
      v6 = [MEMORY[0x277CBEB38] dictionary];
      v7 = *(*(a1 + 48) + 8);
      v8 = *(v7 + 40);
      *(v7 + 40) = v6;

      v9 = [*(a1 + 32) endpointsForHAPAccessory:*(a1 + 40) topology:v5];
      v21 = 0;
      v10 = *(a1 + 32);
      v11 = [v10 matterDevice];
      v12 = [v10 networkCommissioningClusterFromEndpoints:v9 topology:v5 device:v11 definitelyUnsupported:&v21];

      if (v12)
      {
        v13 = *(a1 + 32);
        v14 = [v12 readAttributeNetworksWithParams:0];
        v15 = [v13 connectedNetworkIDFromReadValue:v14];

        v16 = objc_autoreleasePoolPush();
        v17 = *(a1 + 32);
        v18 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          v19 = HMFGetLogIdentifier();
          *buf = 138543618;
          v23 = v19;
          v24 = 2112;
          v25 = v15;
          _os_log_impl(&dword_22AEAE000, v18, OS_LOG_TYPE_DEBUG, "%{public}@Found connected network ID: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v16);
        [*(*(*(a1 + 48) + 8) + 40) setObject:v15 forKeyedSubscript:@"network_ID"];
      }
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (id)getOperationalNetworkAddressForAccessory:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__1810;
  v16 = __Block_byref_object_dispose__1811;
  v17 = 0;
  v5 = [(HAPAccessoryServer *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __78__HMMTRAccessoryServer_Diagnostics__getOperationalNetworkAddressForAccessory___block_invoke;
  block[3] = &unk_2786F0468;
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_sync(v5, block);

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

uint64_t __78__HMMTRAccessoryServer_Diagnostics__getOperationalNetworkAddressForAccessory___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _getOperationalNetworkAddressForAccessory:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (id)getSupportedLinkLayerTypesForAccessory:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__1810;
  v16 = __Block_byref_object_dispose__1811;
  v17 = 0;
  v5 = [(HAPAccessoryServer *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __76__HMMTRAccessoryServer_Diagnostics__getSupportedLinkLayerTypesForAccessory___block_invoke;
  block[3] = &unk_2786F0468;
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_sync(v5, block);

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

uint64_t __76__HMMTRAccessoryServer_Diagnostics__getSupportedLinkLayerTypesForAccessory___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _getSupportedLinkLayerTypesForAccessory:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (id)_getSupportedLinkLayerTypesForAccessory:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HAPAccessoryServer *)self clientQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(HMMTRAccessoryServer *)self matterDevice];

  if (v6)
  {
    v7 = [HMMTRDeviceTopology alloc];
    v8 = [(HMMTRAccessoryServer *)self nodeID];
    v9 = [(HMMTRDeviceTopology *)v7 initWithNodeId:v8 server:self];

    if (v9)
    {
      v10 = [(HMMTRAccessoryServer *)self endpointsForHAPAccessory:v4 topology:v9];
      v30 = 0;
      v11 = [(HMMTRAccessoryServer *)self matterDevice];
      v12 = [(HMMTRAccessoryServer *)self networkCommissioningClusterFromEndpoints:v10 topology:v9 device:v11 definitelyUnsupported:&v30];

      if (v12)
      {
        v13 = [v12 readAttributeFeatureMapWithParams:0];
        v14 = [(HMMTRAccessoryServer *)self numberOfReadValue:v13];

        v15 = [(HMMTRAccessoryServer *)self getSupportedLinkLayerTypesFromNetworkCommissioningClusterFeatureMap:v14];
      }

      else
      {
        v24 = objc_autoreleasePoolPush();
        v25 = self;
        v26 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          v27 = HMFGetLogIdentifier();
          *buf = 138543362;
          v32 = v27;
          _os_log_impl(&dword_22AEAE000, v26, OS_LOG_TYPE_ERROR, "%{public}@Error retrieving supported link layers - no network commissioning cluster", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v24);
        v15 = 0;
      }
    }

    else
    {
      v20 = objc_autoreleasePoolPush();
      v21 = self;
      v22 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v23 = HMFGetLogIdentifier();
        *buf = 138543362;
        v32 = v23;
        _os_log_impl(&dword_22AEAE000, v22, OS_LOG_TYPE_ERROR, "%{public}@Error retrieving supported link layers - no topology", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v20);
      v15 = 0;
    }
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
      v32 = v19;
      _os_log_impl(&dword_22AEAE000, v18, OS_LOG_TYPE_ERROR, "%{public}@Error retrieving supported link layers - matter device not available", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v16);
    v15 = 0;
  }

  v28 = *MEMORY[0x277D85DE8];

  return v15;
}

- (id)getSupportedLinkLayerTypesFromNetworkCommissioningClusterFeatureMap:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 unsignedIntegerValue];
    v7 = (8 * [v5 unsignedIntegerValue]) & 0x10 | (2 * (v6 & 1));
    v8 = (v7 | [v5 unsignedIntegerValue] & 4);
    v9 = objc_autoreleasePoolPush();
    v10 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v12 = HMFGetLogIdentifier();
      v15 = 138543874;
      v16 = v12;
      v17 = 2112;
      v18 = v5;
      v19 = 2048;
      v20 = v8;
      _os_log_impl(&dword_22AEAE000, v11, OS_LOG_TYPE_DEBUG, "%{public}@NetworkCommissioningCluster featureMap: %@, supportedLinkLayerTypes = %ld", &v15, 0x20u);
    }

    objc_autoreleasePoolPop(v9);
    if (v8)
    {
      v8 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v8];
    }
  }

  else
  {
    v8 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];

  return v8;
}

- (int64_t)getLinkLayerTypeForAccessory:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v5 = [(HAPAccessoryServer *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__HMMTRAccessoryServer_Diagnostics__getLinkLayerTypeForAccessory___block_invoke;
  block[3] = &unk_2786F0468;
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_sync(v5, block);

  v7 = v13[3];
  _Block_object_dispose(&v12, 8);
  return v7;
}

uint64_t __66__HMMTRAccessoryServer_Diagnostics__getLinkLayerTypeForAccessory___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _getLinkLayerTypeForAccessory:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

- (int64_t)_getLinkLayerTypeForAccessory:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMMTRAccessoryServer *)self matterDevice];

  if (v5)
  {
    v6 = [HMMTRDeviceTopology alloc];
    v7 = [(HMMTRAccessoryServer *)self nodeID];
    v8 = [(HMMTRDeviceTopology *)v6 initWithNodeId:v7 server:self];

    if (v8)
    {
      v9 = [(HMMTRAccessoryServer *)self endpointsForHAPAccessory:v4 topology:v8];
      v21 = 0;
      v10 = [(HMMTRAccessoryServer *)self matterDevice];
      v11 = [(HMMTRAccessoryServer *)self networkCommissioningClusterFromEndpoints:v9 topology:v8 device:v10 definitelyUnsupported:&v21];

      if (v11)
      {
        v12 = [v11 readAttributeFeatureMapWithParams:0];
        v13 = [(HMMTRAccessoryServer *)self numberOfReadValue:v12];

        if (v13)
        {
          v14 = objc_autoreleasePoolPush();
          v15 = self;
          v16 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
          {
            v17 = HMFGetLogIdentifier();
            *buf = 138543618;
            v23 = v17;
            v24 = 2112;
            v25 = v13;
            _os_log_impl(&dword_22AEAE000, v16, OS_LOG_TYPE_DEBUG, "%{public}@NetworkCommissioningCluster featureMap: %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v14);
          if ([v13 unsignedIntegerValue])
          {
            v18 = 1;
          }

          else if (([v13 unsignedIntegerValue] & 2) != 0)
          {
            v18 = 4;
          }

          else
          {
            v18 = ([v13 unsignedIntegerValue] >> 1) & 2;
          }
        }

        else
        {
          v18 = 0;
        }
      }

      else
      {
        v18 = 0;
      }
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v18 = 0;
  }

  v19 = *MEMORY[0x277D85DE8];
  return v18;
}

- (id)_processEvent:(id)a3
{
  v23[4] = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CD5140];
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:v3];
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

  v8 = [v4 objectForKeyedSubscript:*MEMORY[0x277CD5138]];
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

  v11 = [v4 objectForKeyedSubscript:*MEMORY[0x277CD5148]];

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
    v14 = v13;
  }

  else
  {
    v14 = &unk_283EE7D88;
  }

  v22[0] = @"UpTime";
  v22[1] = @"EventNumber";
  if (v10)
  {
    v15 = v10;
  }

  else
  {
    v15 = &unk_283EE7D88;
  }

  v23[0] = v14;
  v23[1] = v15;
  v22[2] = @"Cluster";
  v16 = [v7 cluster];
  v23[2] = v16;
  v22[3] = @"Event";
  v17 = [v7 event];

  if (v17)
  {
    v18 = v17;
  }

  else
  {
    v18 = &unk_283EE7D88;
  }

  v23[3] = v18;
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:4];

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

- (id)_readPastEventsFromAccessory:(id)a3 forClusters:(id)a4
{
  v56 = *MEMORY[0x277D85DE8];
  v34 = a3;
  v33 = a4;
  v47 = 0;
  v48 = &v47;
  v49 = 0x3032000000;
  v50 = __Block_byref_object_copy__1810;
  v51 = __Block_byref_object_dispose__1811;
  v52 = [MEMORY[0x277CBEB18] array];
  v6 = [(HMMTRAccessoryServer *)self matterDevice];
  LODWORD(a4) = v6 == 0;

  if (a4)
  {
    v23 = objc_autoreleasePoolPush();
    v24 = self;
    v25 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = HMFGetLogIdentifier();
      *buf = 138543362;
      v55 = v26;
      _os_log_impl(&dword_22AEAE000, v25, OS_LOG_TYPE_ERROR, "%{public}@Matter device is nil", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v23);
    v22 = 0;
  }

  else
  {
    v7 = [HMMTRDeviceTopology alloc];
    v8 = [(HMMTRAccessoryServer *)self nodeID];
    v37 = [(HMMTRDeviceTopology *)v7 initWithNodeId:v8 server:self];

    if (v37)
    {
      v9 = [(HMMTRAccessoryServer *)self endpointsForHAPAccessory:v34 topology:?];
      buf[0] = 0;
      if (![v9 count])
      {

        v9 = &unk_283EE91F8;
      }

      group = dispatch_group_create();
      v43 = 0u;
      v44 = 0u;
      v45 = 0u;
      v46 = 0u;
      obj = v33;
      v10 = [obj countByEnumeratingWithState:&v43 objects:v53 count:16];
      if (v10)
      {
        v11 = *v44;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v44 != v11)
            {
              objc_enumerationMutation(obj);
            }

            v13 = *(*(&v43 + 1) + 8 * i);
            v14 = [(HMMTRAccessoryServer *)self matterDevice];
            v15 = [(HMMTRAccessoryServer *)self endpointForDiagnosticCluster:v13 clusterName:&stru_283ED2308 amongEndpoints:v9 topology:v37 device:v14 definitelyUnsupported:buf];

            if ((buf[0] & 1) == 0)
            {
              v16 = MEMORY[0x277CD5220];
              v17 = [(HMMTRAccessoryServer *)self nodeID];
              v18 = [(HMMTRAccessoryServer *)self deviceController];
              v19 = [v16 deviceWithNodeID:v17 controller:v18];

              if (v19)
              {
                v20 = objc_alloc_init(MEMORY[0x277CD54D8]);
                [v20 setFilterByFabric:1];
                [v20 setMinEventNumber:0];
                dispatch_group_enter(group);
                v21 = [(HAPAccessoryServer *)self clientQueue];
                v38[0] = MEMORY[0x277D85DD0];
                v38[1] = 3221225472;
                v38[2] = __78__HMMTRAccessoryServer_Diagnostics___readPastEventsFromAccessory_forClusters___block_invoke;
                v38[3] = &unk_2786EDB30;
                v38[4] = self;
                v39 = v34;
                v40 = v13;
                v42 = &v47;
                v41 = group;
                [v19 readEventsWithEndpointID:v15 clusterID:v13 eventID:0 params:v20 queue:v21 completion:v38];
              }
            }
          }

          v10 = [obj countByEnumeratingWithState:&v43 objects:v53 count:16];
        }

        while (v10);
      }

      dispatch_group_wait(group, 0xFFFFFFFFFFFFFFFFLL);
      v22 = v48[5];
    }

    else
    {
      v27 = objc_autoreleasePoolPush();
      v28 = self;
      v29 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        v30 = HMFGetLogIdentifier();
        *buf = 138543362;
        v55 = v30;
        _os_log_impl(&dword_22AEAE000, v29, OS_LOG_TYPE_ERROR, "%{public}@Matter topology is nil", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v27);
      v22 = 0;
    }
  }

  _Block_object_dispose(&v47, 8);

  v31 = *MEMORY[0x277D85DE8];

  return v22;
}

void __78__HMMTRAccessoryServer_Diagnostics___readPastEventsFromAccessory_forClusters___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v41 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v11 = [*(a1 + 40) shortDescription];
    v12 = [*(a1 + 48) integerValue];
    *buf = 138544130;
    v34 = v10;
    v35 = 2112;
    v36 = v11;
    v37 = 2048;
    v38 = v12;
    v39 = 2112;
    v40 = v6;
    _os_log_impl(&dword_22AEAE000, v9, OS_LOG_TYPE_INFO, "%{public}@[%@] Read diagnostic events for cluster ID 0x%lX, error: %@", buf, 0x2Au);
  }

  v26 = v6;

  objc_autoreleasePoolPop(v7);
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = v5;
  v13 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v29;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v29 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v28 + 1) + 8 * i);
        v18 = objc_autoreleasePoolPush();
        v19 = *(a1 + 32);
        v20 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          v21 = HMFGetLogIdentifier();
          v22 = [*(a1 + 40) shortDescription];
          *buf = 138543874;
          v34 = v21;
          v35 = 2112;
          v36 = v22;
          v37 = 2112;
          v38 = v17;
          _os_log_impl(&dword_22AEAE000, v20, OS_LOG_TYPE_INFO, "%{public}@[%@] Received diagnostic event %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v18);
        v23 = *(*(*(a1 + 64) + 8) + 40);
        v24 = [*(a1 + 32) _processEvent:v17];
        [v23 addObject:v24];
      }

      v14 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v14);
  }

  dispatch_group_leave(*(a1 + 56));
  v25 = *MEMORY[0x277D85DE8];
}

- (id)readPastDiagnosticEventsFromAccessory:(id)a3 fromEventNumber:(id)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = &unk_283EE7CF8;
  v12 = &unk_283EE7D28;
  v13 = &unk_283EE7D40;
  v14 = &unk_283EE7D58;
  v15 = &unk_283EE7D70;
  v5 = MEMORY[0x277CBEA60];
  v6 = a3;
  v7 = [v5 arrayWithObjects:&v11 count:5];
  v8 = [(HMMTRAccessoryServer *)self _readPastEventsFromAccessory:v6 forClusters:v7, v11, v12, v13, v14, v15, v16];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)collectDiagnosticsForAccessory:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__1810;
  v21 = __Block_byref_object_dispose__1811;
  v22 = 0;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543618;
    v24 = v8;
    v25 = 2112;
    v26 = v4;
    _os_log_impl(&dword_22AEAE000, v7, OS_LOG_TYPE_INFO, "%{public}@Collecting accessory diagnostics for %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [(HAPAccessoryServer *)v6 clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__HMMTRAccessoryServer_Diagnostics__collectDiagnosticsForAccessory___block_invoke;
  block[3] = &unk_2786F0468;
  v15 = v4;
  v16 = &v17;
  block[4] = v6;
  v10 = v4;
  dispatch_sync(v9, block);

  v11 = v18[5];
  _Block_object_dispose(&v17, 8);

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

void __68__HMMTRAccessoryServer_Diagnostics__collectDiagnosticsForAccessory___block_invoke(uint64_t a1)
{
  v198 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) matterDevice];

  if (v2)
  {
    v3 = [HMMTRDeviceTopology alloc];
    v4 = [*(a1 + 32) nodeID];
    v5 = [(HMMTRDeviceTopology *)v3 initWithNodeId:v4 server:*(a1 + 32)];

    if (v5)
    {
      v6 = [MEMORY[0x277CBEB38] dictionary];
      v7 = *(*(a1 + 48) + 8);
      v8 = *(v7 + 40);
      *(v7 + 40) = v6;

      v9 = [*(a1 + 32) endpointsForHAPAccessory:*(a1 + 40) topology:v5];
      v193 = 0;
      v10 = *(a1 + 32);
      v11 = [v10 matterDevice];
      v12 = [v10 generalDiagnosticsClusterFromEndpoints:v9 topology:v5 device:v11 definitelyUnsupported:&v193];

      if (v12)
      {
        [*(*(*(a1 + 48) + 8) + 40) setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"general_DiagnosticsSupported"];
        v13 = *(a1 + 32);
        v14 = [v12 readAttributeRebootCountWithParams:0];
        v15 = [v13 numberOfReadValue:v14];

        if (v15)
        {
          v16 = objc_autoreleasePoolPush();
          v17 = *(a1 + 32);
          v18 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
          {
            v19 = HMFGetLogIdentifier();
            *buf = 138543618;
            v195 = v19;
            v196 = 2112;
            v197 = v15;
            _os_log_impl(&dword_22AEAE000, v18, OS_LOG_TYPE_DEBUG, "%{public}@GeneralDiagnostics - RebootCount: %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v16);
          [*(*(*(a1 + 48) + 8) + 40) setObject:v15 forKeyedSubscript:@"general_RebootCount"];
        }

        v20 = *(a1 + 32);
        v21 = [v12 readAttributeUpTimeWithParams:0];
        v22 = [v20 numberOfReadValue:v21];

        if (v22)
        {
          v23 = objc_autoreleasePoolPush();
          v24 = *(a1 + 32);
          v25 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
          {
            v26 = HMFGetLogIdentifier();
            *buf = 138543618;
            v195 = v26;
            v196 = 2112;
            v197 = v22;
            _os_log_impl(&dword_22AEAE000, v25, OS_LOG_TYPE_DEBUG, "%{public}@GeneralDiagnostics - UpTime: %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v23);
          [*(*(*(a1 + 48) + 8) + 40) setObject:v22 forKeyedSubscript:@"general_UpTime"];
          v27 = objc_alloc_init(MEMORY[0x277CCA968]);
          v28 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:@"en_US_POSIX"];
          [v27 setLocale:v28];

          [v27 setDateFormat:@"yyyy-MM-dd' 'HH:mm:ss-ZZZZZ"];
          v29 = [MEMORY[0x277CBEBB0] timeZoneForSecondsFromGMT:-28800];
          [v27 setTimeZone:v29];

          v30 = [MEMORY[0x277CBEAA8] date];
          [v22 doubleValue];
          v32 = [v30 addTimeInterval:-v31];

          v33 = [v27 stringFromDate:v32];
          [*(*(*(a1 + 48) + 8) + 40) setObject:v33 forKeyedSubscript:@"general_LastRebootTime"];
        }

        v34 = *(a1 + 32);
        v35 = [v12 readAttributeTotalOperationalHoursWithParams:0];
        v36 = [v34 numberOfReadValue:v35];

        if (v36)
        {
          v37 = objc_autoreleasePoolPush();
          v38 = *(a1 + 32);
          v39 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
          {
            v40 = HMFGetLogIdentifier();
            *buf = 138543618;
            v195 = v40;
            v196 = 2112;
            v197 = v36;
            _os_log_impl(&dword_22AEAE000, v39, OS_LOG_TYPE_DEBUG, "%{public}@GeneralDiagnostics - TotalOperationalHours: %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v37);
          [*(*(*(a1 + 48) + 8) + 40) setObject:v36 forKeyedSubscript:@"general_TotalOperationalHours"];
        }

        v41 = *(a1 + 32);
        v42 = [v12 readAttributeBootReasonWithParams:0];
        v43 = [v41 numberOfReadValue:v42];

        if (v43)
        {
          v44 = objc_autoreleasePoolPush();
          v45 = *(a1 + 32);
          v46 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
          {
            v47 = HMFGetLogIdentifier();
            *buf = 138543618;
            v195 = v47;
            v196 = 2112;
            v197 = v43;
            _os_log_impl(&dword_22AEAE000, v46, OS_LOG_TYPE_DEBUG, "%{public}@GeneralDiagnostics - BootReason: %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v44);
          [*(*(*(a1 + 48) + 8) + 40) setObject:v43 forKeyedSubscript:@"general_BootReason"];
        }
      }

      else if (v193 == 1)
      {
        [*(*(*(a1 + 48) + 8) + 40) setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"general_DiagnosticsSupported"];
      }

      v48 = *(a1 + 32);
      v49 = [v48 matterDevice];
      v50 = [v48 threadNetworkDiagnosticsClusterFromEndpoints:v9 topology:v5 device:v49 definitelyUnsupported:&v193];

      v192 = v12;
      if (v50)
      {
        [*(*(*(a1 + 48) + 8) + 40) setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"threadNetwork_DiagnosticsSupported"];
        v51 = *(a1 + 32);
        v52 = [v50 readAttributeFeatureMapWithParams:0];
        v53 = [v51 numberOfReadValue:v52];

        if (v53)
        {
          v54 = objc_autoreleasePoolPush();
          v55 = *(a1 + 32);
          v56 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
          {
            v57 = HMFGetLogIdentifier();
            *buf = 138543618;
            v195 = v57;
            v196 = 2112;
            v197 = v53;
            _os_log_impl(&dword_22AEAE000, v56, OS_LOG_TYPE_DEBUG, "%{public}@ThreadNetworkDiagnostics - FeatureMap: %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v54);
          [*(*(*(a1 + 48) + 8) + 40) setObject:v53 forKeyedSubscript:@"threadNetwork_DiagnosticsFeatureMap"];
        }

        if (([v53 unsignedIntegerValue] & 8) != 0)
        {
          v59 = [*(a1 + 32) packetCountOfThreadNetworkDiagnostics:v50];
          if (v59)
          {
            v60 = objc_autoreleasePoolPush();
            v61 = *(a1 + 32);
            v62 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v62, OS_LOG_TYPE_DEBUG))
            {
              v63 = HMFGetLogIdentifier();
              *buf = 138543618;
              v195 = v63;
              v196 = 2112;
              v197 = v59;
              _os_log_impl(&dword_22AEAE000, v62, OS_LOG_TYPE_DEBUG, "%{public}@ThreadNetworkDiagnostics - PacketCount: %@", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v60);
            [*(*(*(a1 + 48) + 8) + 40) setObject:v59 forKeyedSubscript:@"threadNetwork_PacketCount"];
          }

          v64 = *(a1 + 32);
          v65 = [v50 readAttributeTxUnicastCountWithParams:0];
          v66 = [v64 numberOfReadValue:v65];

          if (v66)
          {
            v67 = objc_autoreleasePoolPush();
            v68 = *(a1 + 32);
            v69 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v69, OS_LOG_TYPE_DEBUG))
            {
              v70 = HMFGetLogIdentifier();
              *buf = 138543618;
              v195 = v70;
              v196 = 2112;
              v197 = v66;
              _os_log_impl(&dword_22AEAE000, v69, OS_LOG_TYPE_DEBUG, "%{public}@ThreadNetworkDiagnostics - TxUnicastCount: %@", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v67);
            [*(*(*(a1 + 48) + 8) + 40) setObject:v66 forKeyedSubscript:@"threadNetwork_PacketTxUnicastCount"];
          }

          v71 = *(a1 + 32);
          v72 = [v50 readAttributeTxBroadcastCountWithParams:0];
          v73 = [v71 numberOfReadValue:v72];

          if (v73)
          {
            v74 = objc_autoreleasePoolPush();
            v75 = *(a1 + 32);
            v76 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v76, OS_LOG_TYPE_DEBUG))
            {
              v77 = HMFGetLogIdentifier();
              *buf = 138543618;
              v195 = v77;
              v196 = 2112;
              v197 = v73;
              _os_log_impl(&dword_22AEAE000, v76, OS_LOG_TYPE_DEBUG, "%{public}@ThreadNetworkDiagnostics - TxBroadcastCount: %@", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v74);
            [*(*(*(a1 + 48) + 8) + 40) setObject:v73 forKeyedSubscript:@"threadNetwork_PacketTxBroadcastCount"];
          }

          v78 = *(a1 + 32);
          v79 = [v50 readAttributeRxUnicastCountWithParams:0];
          v80 = [v78 numberOfReadValue:v79];

          if (v80)
          {
            v81 = objc_autoreleasePoolPush();
            v82 = *(a1 + 32);
            v83 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v83, OS_LOG_TYPE_DEBUG))
            {
              v84 = HMFGetLogIdentifier();
              *buf = 138543618;
              v195 = v84;
              v196 = 2112;
              v197 = v80;
              _os_log_impl(&dword_22AEAE000, v83, OS_LOG_TYPE_DEBUG, "%{public}@ThreadNetworkDiagnostics - RxUnicastCount: %@", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v81);
            [*(*(*(a1 + 48) + 8) + 40) setObject:v80 forKeyedSubscript:@"threadNetwork_PacketRxUnicastCount"];
          }

          v85 = *(a1 + 32);
          v86 = [v50 readAttributeRxBroadcastCountWithParams:0];
          v87 = [v85 numberOfReadValue:v86];

          if (v87)
          {
            v88 = objc_autoreleasePoolPush();
            v89 = *(a1 + 32);
            v90 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v90, OS_LOG_TYPE_DEBUG))
            {
              v91 = HMFGetLogIdentifier();
              *buf = 138543618;
              v195 = v91;
              v196 = 2112;
              v197 = v87;
              _os_log_impl(&dword_22AEAE000, v90, OS_LOG_TYPE_DEBUG, "%{public}@ThreadNetworkDiagnostics - RxBroadcastCount: %@", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v88);
            [*(*(*(a1 + 48) + 8) + 40) setObject:v87 forKeyedSubscript:@"threadNetwork_PacketRxBroadcastCount"];
          }

          v58 = [*(a1 + 32) errorCountOfThreadNetworkDiagnostics:v50];

          if (v58)
          {
            v92 = objc_autoreleasePoolPush();
            v93 = *(a1 + 32);
            v94 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v94, OS_LOG_TYPE_DEBUG))
            {
              v95 = HMFGetLogIdentifier();
              *buf = 138543618;
              v195 = v95;
              v196 = 2112;
              v197 = v58;
              _os_log_impl(&dword_22AEAE000, v94, OS_LOG_TYPE_DEBUG, "%{public}@ThreadNetworkDiagnostics - ErrorCount: %@", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v92);
            [*(*(*(a1 + 48) + 8) + 40) setObject:v58 forKeyedSubscript:@"threadNetwork_ErrorCount"];
          }
        }

        else
        {
          v58 = 0;
        }

        if (([v53 unsignedIntegerValue] & 2) != 0)
        {
          v97 = *(a1 + 32);
          v98 = [v50 readAttributeOverrunCountWithParams:0];
          v96 = [v97 numberOfReadValue:v98];

          if (v96)
          {
            v99 = objc_autoreleasePoolPush();
            v100 = *(a1 + 32);
            v101 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v101, OS_LOG_TYPE_DEBUG))
            {
              v102 = HMFGetLogIdentifier();
              *buf = 138543618;
              v195 = v102;
              v196 = 2112;
              v197 = v96;
              _os_log_impl(&dword_22AEAE000, v101, OS_LOG_TYPE_DEBUG, "%{public}@ThreadNetworkDiagnostics - OverrunCount: %@", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v99);
            [*(*(*(a1 + 48) + 8) + 40) setObject:v96 forKeyedSubscript:@"threadNetwork_OverrunCount"];
          }
        }

        else
        {
          v96 = v58;
        }

        v103 = *(a1 + 32);
        v104 = [v50 readAttributeChannelWithParams:0];
        v105 = [v103 numberOfReadValue:v104];

        if (v105)
        {
          v106 = objc_autoreleasePoolPush();
          v107 = *(a1 + 32);
          v108 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v108, OS_LOG_TYPE_DEBUG))
          {
            v109 = HMFGetLogIdentifier();
            *buf = 138543618;
            v195 = v109;
            v196 = 2112;
            v197 = v105;
            _os_log_impl(&dword_22AEAE000, v108, OS_LOG_TYPE_DEBUG, "%{public}@ThreadNetworkDiagnostics - ChannelNumber: %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v106);
          [*(*(*(a1 + 48) + 8) + 40) setObject:v105 forKeyedSubscript:@"threadNetwork_ChannelNumber"];
        }

        v110 = [*(a1 + 32) highestRSSIofThreadNetworkDiagnostics:v50];

        if (v110)
        {
          v111 = objc_autoreleasePoolPush();
          v112 = *(a1 + 32);
          v113 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v113, OS_LOG_TYPE_DEBUG))
          {
            v114 = HMFGetLogIdentifier();
            *buf = 138543618;
            v195 = v114;
            v196 = 2112;
            v197 = v110;
            _os_log_impl(&dword_22AEAE000, v113, OS_LOG_TYPE_DEBUG, "%{public}@ThreadNetworkDiagnostics - RSSI: %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v111);
          [*(*(*(a1 + 48) + 8) + 40) setObject:v110 forKeyedSubscript:@"threadNetwork_RSSI"];
        }

        v12 = v192;
      }

      else if (v193 == 1)
      {
        [*(*(*(a1 + 48) + 8) + 40) setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"threadNetwork_DiagnosticsSupported"];
      }

      v115 = *(a1 + 32);
      v116 = [v115 matterDevice];
      v117 = [v115 wifiNetworkDiagnosticsClusterFromEndpoints:v9 topology:v5 device:v116 definitelyUnsupported:&v193];

      if (v117)
      {
        [*(*(*(a1 + 48) + 8) + 40) setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"wifiNetwork_DiagnosticsSupported"];
        v118 = *(a1 + 32);
        v119 = [v117 readAttributeFeatureMapWithParams:0];
        v120 = [v118 numberOfReadValue:v119];

        if (v120)
        {
          v121 = objc_autoreleasePoolPush();
          v122 = *(a1 + 32);
          v123 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v123, OS_LOG_TYPE_DEBUG))
          {
            v124 = HMFGetLogIdentifier();
            *buf = 138543618;
            v195 = v124;
            v196 = 2112;
            v197 = v120;
            _os_log_impl(&dword_22AEAE000, v123, OS_LOG_TYPE_DEBUG, "%{public}@WiFiNetworkDiagnostics - FeatureMap: %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v121);
          [*(*(*(a1 + 48) + 8) + 40) setObject:v120 forKeyedSubscript:@"wifiNetwork_DiagnosticsFeatureMap"];
        }

        v191 = v9;
        if ([v120 unsignedIntegerValue])
        {
          v126 = [*(a1 + 32) packetCountOfWiFiNetworkDiagnostics:v117];
          if (v126)
          {
            v127 = objc_autoreleasePoolPush();
            v128 = *(a1 + 32);
            v129 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v129, OS_LOG_TYPE_DEBUG))
            {
              v130 = HMFGetLogIdentifier();
              *buf = 138543618;
              v195 = v130;
              v196 = 2112;
              v197 = v126;
              _os_log_impl(&dword_22AEAE000, v129, OS_LOG_TYPE_DEBUG, "%{public}@WiFiNetworkDiagnostics - PacketCount: %@", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v127);
            [*(*(*(a1 + 48) + 8) + 40) setObject:v126 forKeyedSubscript:@"wifiNetwork_PacketCount"];
          }

          v131 = *(a1 + 32);
          v132 = [v117 readAttributePacketUnicastTxCountWithParams:0];
          v133 = [v131 numberOfReadValue:v132];

          if (v133)
          {
            v134 = objc_autoreleasePoolPush();
            v135 = *(a1 + 32);
            v136 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v136, OS_LOG_TYPE_DEBUG))
            {
              v137 = HMFGetLogIdentifier();
              *buf = 138543618;
              v195 = v137;
              v196 = 2112;
              v197 = v133;
              _os_log_impl(&dword_22AEAE000, v136, OS_LOG_TYPE_DEBUG, "%{public}@WiFiNetworkDiagnostics - PacketTxUnicastCount: %@", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v134);
            [*(*(*(a1 + 48) + 8) + 40) setObject:v133 forKeyedSubscript:@"wifiNetwork_PacketTxUnicastCount"];
          }

          v138 = *(a1 + 32);
          v139 = [v117 readAttributePacketMulticastTxCountWithParams:0];
          v140 = [v138 numberOfReadValue:v139];

          if (v140)
          {
            v141 = objc_autoreleasePoolPush();
            v142 = *(a1 + 32);
            v143 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v143, OS_LOG_TYPE_DEBUG))
            {
              v144 = HMFGetLogIdentifier();
              *buf = 138543618;
              v195 = v144;
              v196 = 2112;
              v197 = v140;
              _os_log_impl(&dword_22AEAE000, v143, OS_LOG_TYPE_DEBUG, "%{public}@WiFiNetworkDiagnostics - PacketTxMulticastCount: %@", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v141);
            [*(*(*(a1 + 48) + 8) + 40) setObject:v140 forKeyedSubscript:@"wifiNetwork_PacketTxMulticastCount"];
          }

          v145 = *(a1 + 32);
          v146 = [v117 readAttributePacketUnicastRxCountWithParams:0];
          v147 = [v145 numberOfReadValue:v146];

          if (v147)
          {
            v148 = objc_autoreleasePoolPush();
            v149 = *(a1 + 32);
            v150 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v150, OS_LOG_TYPE_DEBUG))
            {
              v151 = HMFGetLogIdentifier();
              *buf = 138543618;
              v195 = v151;
              v196 = 2112;
              v197 = v147;
              _os_log_impl(&dword_22AEAE000, v150, OS_LOG_TYPE_DEBUG, "%{public}@WiFiNetworkDiagnostics - PacketRxUnicastCount: %@", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v148);
            [*(*(*(a1 + 48) + 8) + 40) setObject:v147 forKeyedSubscript:@"wifiNetwork_PacketRxUnicastCount"];
          }

          v152 = *(a1 + 32);
          v153 = [v117 readAttributePacketMulticastRxCountWithParams:0];
          v154 = [v152 numberOfReadValue:v153];

          if (v154)
          {
            v155 = objc_autoreleasePoolPush();
            v156 = *(a1 + 32);
            v157 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v157, OS_LOG_TYPE_DEBUG))
            {
              v158 = HMFGetLogIdentifier();
              *buf = 138543618;
              v195 = v158;
              v196 = 2112;
              v197 = v154;
              _os_log_impl(&dword_22AEAE000, v157, OS_LOG_TYPE_DEBUG, "%{public}@WiFiNetworkDiagnostics - PacketRxMulticastCount: %@", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v155);
            [*(*(*(a1 + 48) + 8) + 40) setObject:v154 forKeyedSubscript:@"wifiNetwork_PacketRxMulticastCount"];
          }

          v159 = *(a1 + 32);
          v160 = [v117 readAttributeBeaconRxCountWithParams:0];
          v125 = [v159 numberOfReadValue:v160];

          if (v125)
          {
            v161 = objc_autoreleasePoolPush();
            v162 = *(a1 + 32);
            v163 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v163, OS_LOG_TYPE_DEBUG))
            {
              v164 = HMFGetLogIdentifier();
              *buf = 138543618;
              v195 = v164;
              v196 = 2112;
              v197 = v125;
              _os_log_impl(&dword_22AEAE000, v163, OS_LOG_TYPE_DEBUG, "%{public}@WiFiNetworkDiagnostics - BeaconRxCount: %@", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v161);
            [*(*(*(a1 + 48) + 8) + 40) setObject:v125 forKeyedSubscript:@"wifiNetwork_BeaconRxCount"];
          }
        }

        else
        {
          v125 = 0;
        }

        if (([v120 unsignedIntegerValue] & 2) != 0)
        {
          v165 = [*(a1 + 32) errorCountOfWiFiNetworkDiagnostics:v117];

          if (v165)
          {
            v166 = objc_autoreleasePoolPush();
            v167 = *(a1 + 32);
            v168 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v168, OS_LOG_TYPE_DEBUG))
            {
              v169 = HMFGetLogIdentifier();
              *buf = 138543618;
              v195 = v169;
              v196 = 2112;
              v197 = v165;
              _os_log_impl(&dword_22AEAE000, v168, OS_LOG_TYPE_DEBUG, "%{public}@WiFiNetworkDiagnostics - ErrorCount: %@", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v166);
            [*(*(*(a1 + 48) + 8) + 40) setObject:v165 forKeyedSubscript:@"wifiNetwork_ErrorCount"];
          }

          v170 = *(a1 + 32);
          v171 = [v117 readAttributeBeaconLostCountWithParams:0];
          v125 = [v170 numberOfReadValue:v171];

          if (v125)
          {
            v172 = objc_autoreleasePoolPush();
            v173 = *(a1 + 32);
            v174 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v174, OS_LOG_TYPE_DEBUG))
            {
              v175 = HMFGetLogIdentifier();
              *buf = 138543618;
              v195 = v175;
              v196 = 2112;
              v197 = v125;
              _os_log_impl(&dword_22AEAE000, v174, OS_LOG_TYPE_DEBUG, "%{public}@WiFiNetworkDiagnostics - BeaconLostCount: %@", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v172);
            [*(*(*(a1 + 48) + 8) + 40) setObject:v125 forKeyedSubscript:@"wifiNetwork_BeaconLostCount"];
          }
        }

        v176 = *(a1 + 32);
        v177 = [v117 readAttributeChannelNumberWithParams:0];
        v178 = [v176 numberOfReadValue:v177];

        if (v178)
        {
          v179 = objc_autoreleasePoolPush();
          v180 = *(a1 + 32);
          v181 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v181, OS_LOG_TYPE_DEBUG))
          {
            v182 = HMFGetLogIdentifier();
            *buf = 138543618;
            v195 = v182;
            v196 = 2112;
            v197 = v178;
            _os_log_impl(&dword_22AEAE000, v181, OS_LOG_TYPE_DEBUG, "%{public}@WiFiNetworkDiagnostics - ChannelNumber: %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v179);
          [*(*(*(a1 + 48) + 8) + 40) setObject:v178 forKeyedSubscript:@"wifiNetwork_ChannelNumber"];
        }

        v183 = *(a1 + 32);
        v184 = [v117 readAttributeRSSIWithParams:0];
        v185 = [v183 numberOfReadValue:v184];

        v9 = v191;
        if (v185)
        {
          v186 = objc_autoreleasePoolPush();
          v187 = *(a1 + 32);
          v188 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v188, OS_LOG_TYPE_DEBUG))
          {
            v189 = HMFGetLogIdentifier();
            *buf = 138543618;
            v195 = v189;
            v196 = 2112;
            v197 = v185;
            _os_log_impl(&dword_22AEAE000, v188, OS_LOG_TYPE_DEBUG, "%{public}@WiFiNetworkDiagnostics - RSSI: %@", buf, 0x16u);

            v9 = v191;
          }

          objc_autoreleasePoolPop(v186);
          [*(*(*(a1 + 48) + 8) + 40) setObject:v185 forKeyedSubscript:@"wifiNetwork_RSSI"];
        }

        v12 = v192;
      }

      else if (v193 == 1)
      {
        [*(*(*(a1 + 48) + 8) + 40) setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"wifiNetwork_DiagnosticsSupported"];
      }
    }
  }

  v190 = *MEMORY[0x277D85DE8];
}

- (void)_handleAddNocCompletionDuringSystemCommissionerFabricCommissioningWithDispatchGroup:(id)a3 fabricID:(id)a4 rootCACert:(id)a5 ipk:(id)a6 controllerNodeID:(id)a7 commissioneeNodeID:(id)a8 error:(id)a9
{
  v52 = *MEMORY[0x277D85DE8];
  v15 = a3;
  v42 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = a9;
  v21 = objc_autoreleasePoolPush();
  v22 = self;
  v23 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
  {
    v24 = HMFGetLogIdentifier();
    *buf = 138543362;
    v49 = v24;
    _os_log_impl(&dword_22AEAE000, v23, OS_LOG_TYPE_INFO, "%{public}@Handling Add NOC response", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v21);
  if (v20)
  {
    v25 = objc_autoreleasePoolPush();
    v26 = v22;
    v27 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = HMFGetLogIdentifier();
      *buf = 138543618;
      v49 = v28;
      v50 = 2112;
      v51 = v20;
      _os_log_impl(&dword_22AEAE000, v27, OS_LOG_TYPE_ERROR, "%{public}@Failed to add noc with error: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v25);
    dispatch_group_leave(v15);
    v29 = [HMMTRAccessoryPairingEndContext mtrContextWithStep:19 error:v20];
    [(HMMTRAccessoryServer *)v26 _handlePairingFailureWithError:v20 context:v29];
  }

  else
  {
    [(HMMTRAccessoryServer *)v22 _notifyDelegateOfPairingStep:20];
    v30 = [(HMMTRAccessoryServer *)v22 browser];
    v31 = objc_autoreleasePoolPush();
    v32 = v22;
    v33 = HMFGetOSLogHandle();
    v34 = v33;
    if (v30)
    {
      v41 = v16;
      if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
      {
        v35 = HMFGetLogIdentifier();
        *buf = 138543362;
        v49 = v35;
        _os_log_impl(&dword_22AEAE000, v34, OS_LOG_TYPE_INFO, "%{public}@Switching to System Commissioner Fabric to complete commissioning...", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v31);
      v36 = [(HAPAccessoryServer *)v32 clientQueue];
      v43[0] = MEMORY[0x277D85DD0];
      v43[1] = 3221225472;
      v43[2] = __201__HMMTRAccessoryServer_SystemCommissionerPairing___handleAddNocCompletionDuringSystemCommissionerFabricCommissioningWithDispatchGroup_fabricID_rootCACert_ipk_controllerNodeID_commissioneeNodeID_error___block_invoke;
      v43[3] = &unk_2786EDD20;
      v43[4] = v32;
      v29 = v30;
      v44 = v29;
      v45 = v15;
      v46 = v42;
      v47 = v19;
      v16 = v41;
      [v29 finishSystemCommissionerFabricCommissioningWithFabricID:v46 rootCACert:v41 ipk:v17 controllerNodeID:v18 commissioneeNodeID:v47 queue:v36 completion:v43];
    }

    else
    {
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        v37 = HMFGetLogIdentifier();
        *buf = 138543362;
        v49 = v37;
        _os_log_impl(&dword_22AEAE000, v34, OS_LOG_TYPE_ERROR, "%{public}@Accessory Server Browser disappeared. Aborting pairing", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v31);
      dispatch_group_leave(v15);
      v38 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CFE770] code:1 userInfo:0];
      v39 = [HMMTRAccessoryPairingEndContext hmmtrContextWithStep:20 error:v38];
      [(HMMTRAccessoryServer *)v32 _handlePairingFailureWithError:v38 context:v39];

      v29 = 0;
    }
  }

  v40 = *MEMORY[0x277D85DE8];
}

void __201__HMMTRAccessoryServer_SystemCommissionerPairing___handleAddNocCompletionDuringSystemCommissionerFabricCommissioningWithDispatchGroup_fabricID_rootCACert_ipk_controllerNodeID_commissioneeNodeID_error___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v73 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v8)
  {
    v10 = objc_autoreleasePoolPush();
    v11 = *(a1 + 32);
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543618;
      v70 = v13;
      v71 = 2112;
      v72 = v8;
      _os_log_impl(&dword_22AEAE000, v12, OS_LOG_TYPE_ERROR, "%{public}@Failed to finish commissioning for System Commissioner with error: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    v14 = *(a1 + 40);
    v15 = [*(a1 + 32) fabricUUID];
    [v14 setUpBrowserTargetFabricUUID:v15];

    dispatch_group_leave(*(a1 + 48));
    [*(a1 + 32) _handlePairingFailureWithError:v8 context:v9];
    goto LABEL_34;
  }

  [*(a1 + 32) _notifyDelegateOfPairingStep:22];
  v16 = objc_autoreleasePoolPush();
  v17 = *(a1 + 32);
  v18 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    v19 = HMFGetLogIdentifier();
    v20 = *(a1 + 56);
    *buf = 138543618;
    v70 = v19;
    v71 = 2112;
    v72 = v20;
    _os_log_impl(&dword_22AEAE000, v18, OS_LOG_TYPE_INFO, "%{public}@Successfully commissioned accessory to System Commissioner Fabric (%@), updating storage", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v16);
  v21 = [*(a1 + 32) browser];
  v22 = [v21 storageForSystemCommissioner];

  [v22 addPairedNodeID:*(a1 + 64) toSystemCommissionerFabric:1];
  v23 = [HMMTRStorage formatKeyForNodeId:*(a1 + 64) key:@"HMD.MTRPlugin.VendorID."];
  v24 = [*(a1 + 32) vendorID];
  [v22 setValueForKey:v23 value:v24 systemCommissionerFabric:1];

  v25 = [HMMTRStorage formatKeyForNodeId:*(a1 + 64) key:@"HMD.MTRPlugin.FabricIndex."];
  [v22 setValueForKey:v25 value:*(a1 + 56) systemCommissionerFabric:1];

  v26 = [HMMTRStorage formatKeyForNodeId:*(a1 + 64) key:@"HMD.MTRPlugin.ProductID."];
  v27 = [*(a1 + 32) productID];
  [v22 setValueForKey:v26 value:v27 systemCommissionerFabric:1];

  v28 = [HMMTRStorage formatKeyForNodeId:*(a1 + 64) key:@"HMD.MTRPlugin.Category."];
  v29 = [*(a1 + 32) category];
  [v22 setValueForKey:v28 value:v29 systemCommissionerFabric:1];

  v30 = [HMMTRStorage formatKeyForNodeId:*(a1 + 64) key:@"HMD.MTRPlugin.ConfigNumber."];
  v31 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 32), "configNumber")}];
  [v22 setValueForKey:v30 value:v31 systemCommissionerFabric:1];

  v32 = [HMMTRStorage formatKeyForNodeId:*(a1 + 64) key:@"HMD.MTRPlugin.Staged."];
  [v22 setValueForKey:v32 value:MEMORY[0x277CBEC28] systemCommissionerFabric:1];

  v33 = [*(a1 + 32) topology];

  if (v33)
  {
    v34 = [HMMTRStorage formatKeyForNodeId:*(a1 + 64) key:@"HMD.MTRPlugin.Topology."];
    v35 = [*(a1 + 32) topology];
    v36 = [v35 base64EncodedStringWithOptions:0];
    [v22 setValueForKey:v34 value:v36 systemCommissionerFabric:1];
  }

  v37 = [*(a1 + 32) ensureCommissioningID];
  [v22 setSystemCommissionerFabricNodeID:*(a1 + 64) forUuid:v37];
  [v22 setUuid:v37 forSystemCommissionerFabricNode:*(a1 + 64)];
  if (v7)
  {
    [v22 setSerialNumber:v7 forSystemCommissionerFabricNode:*(a1 + 64)];
  }

  v38 = [*(a1 + 32) name];
  [v22 setDeviceName:v38 forSystemCommissionerFabricNode:*(a1 + 64)];

  v39 = [*(a1 + 32) setupPayloadString];
  if (v39 && (v40 = v39, [*(a1 + 32) setupPayloadString], v41 = objc_claimAutoreleasedReturnValue(), v42 = objc_msgSend(v41, "isEqual:", &stru_283ED2308), v41, v40, (v42 & 1) == 0))
  {
    v47 = [*(a1 + 32) setupPayloadString];
  }

  else
  {
    v43 = [*(a1 + 32) onboardingSetupPayloadString];
    if (!v43)
    {
      goto LABEL_18;
    }

    v44 = v43;
    v45 = [*(a1 + 32) onboardingSetupPayloadString];
    v46 = [v45 isEqual:&stru_283ED2308];

    if (v46)
    {
      goto LABEL_18;
    }

    v47 = [*(a1 + 32) onboardingSetupPayloadString];
  }

  v48 = v47;
  [v22 setSetupPayload:v47 forSystemCommissionerFabricNode:*(a1 + 64)];

LABEL_18:
  if (isFeatureMatterLocalFabricConfigEnabled())
  {
    [v22 setWEDSupported:objc_msgSend(*(a1 + 32) forSystemCommissionerFabricNode:{"isWEDDevice"), *(a1 + 64)}];
    if ([*(a1 + 32) isWEDDevice])
    {
      v49 = [*(a1 + 32) eMACAddress];
      [v22 setExtendedMACAddress:v49 forSystemCommissionerFabricNode:*(a1 + 64)];
    }
  }

  if (_os_feature_enabled_impl())
  {
    v50 = [*(a1 + 32) commissioneeInfo];

    if (!v50)
    {
      _HMFPreconditionFailure();
    }

    v51 = MEMORY[0x277CD55B0];
    v52 = [*(a1 + 32) commissioneeInfo];
    v53 = [v52 rootEndpoint];
    v54 = [v51 threadCredentialManagementEndpoint:v53];

    if (v54)
    {
      [v22 setThreadCredentialManagementEndpoint:v54 forSystemCommissionerFabricNode:*(a1 + 64)];
    }
  }

  v55 = v7;
  v56 = v9;
  v57 = *(a1 + 40);
  v58 = [*(a1 + 32) vendorID];
  v59 = [*(a1 + 32) productID];
  v60 = [*(a1 + 32) setupPayloadString];
  if ([v60 isEqual:&stru_283ED2308])
  {
    [v57 cleanUpStaleSystemCommissionerPairingsWithNewlyPairedUUID:v37 vendorID:v58 productID:v59 serialNumber:v55 setupPayload:0];
  }

  else
  {
    v61 = [*(a1 + 32) setupPayloadString];
    [v57 cleanUpStaleSystemCommissionerPairingsWithNewlyPairedUUID:v37 vendorID:v58 productID:v59 serialNumber:v55 setupPayload:v61];
  }

  v62 = objc_autoreleasePoolPush();
  v63 = *(a1 + 32);
  v64 = HMFGetOSLogHandle();
  v9 = v56;
  if (os_log_type_enabled(v64, OS_LOG_TYPE_INFO))
  {
    v65 = HMFGetLogIdentifier();
    *buf = 138543362;
    v70 = v65;
    _os_log_impl(&dword_22AEAE000, v64, OS_LOG_TYPE_INFO, "%{public}@Successfully paired accessory into System Commissioner", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v62);
  v66 = *(a1 + 40);
  v67 = [*(a1 + 32) fabricUUID];
  [v66 setUpBrowserTargetFabricUUID:v67];

  v7 = v55;
  if ((isFeatureMatteriPhoneOnlyPairingControlEnabled() & 1) == 0)
  {
    [*(a1 + 32) setOperationDisabled:1];
    [*(a1 + 32) setOperationDisabledReason:1];
  }

  [*(a1 + 32) _handlePairOnSystemCommissionerFabricSuccess];
  dispatch_group_leave(*(a1 + 48));
  v8 = 0;
LABEL_34:

  v68 = *MEMORY[0x277D85DE8];
}

- (void)_handleNewSystemCommissionerFabricNodeID:(id)a3 dispatchGroup:(id)a4 fabricID:(id)a5 rootCACert:(id)a6 operationalPublicKey:(id)a7 ipk:(id)a8 controllerNodeID:(id)a9 device:(id)a10
{
  v80[2] = *MEMORY[0x277D85DE8];
  v16 = a3;
  group = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v62 = a8;
  v61 = a9;
  v20 = a10;
  v21 = objc_alloc(MEMORY[0x277CD5208]);
  v22 = [(HAPAccessoryServer *)self clientQueue];
  v59 = v20;
  v58 = [v21 initWithDevice:v20 endpointID:&unk_283EE7F68 queue:v22];

  v23 = objc_alloc_init(MEMORY[0x277CD5458]);
  v24 = *MEMORY[0x277CDBFE0];
  v79[0] = *MEMORY[0x277CDC028];
  v79[1] = v24;
  v25 = *MEMORY[0x277CDC000];
  v80[0] = *MEMORY[0x277CDC040];
  v80[1] = v25;
  v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v80 forKeys:v79 count:2];
  error = 0;
  v60 = v19;
  v27 = SecKeyCreateWithData(v19, v26, &error);
  if (!v27)
  {
    v40 = objc_autoreleasePoolPush();
    v41 = self;
    v42 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      v43 = HMFGetLogIdentifier();
      *buf = 138543874;
      v74 = v43;
      v75 = 2112;
      v76 = v60;
      v77 = 2112;
      v78 = error;
      _os_log_impl(&dword_22AEAE000, v42, OS_LOG_TYPE_ERROR, "%{public}@Failed to create SecKey from %@: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v40);
    dispatch_group_leave(group);
    v30 = error;
    v31 = [HMMTRAccessoryPairingEndContext otherContextWithStep:18 error:v30];
    [(HMMTRAccessoryServer *)v41 _handlePairingFailureWithError:v30 context:v31];
    goto LABEL_16;
  }

  v28 = v27;
  v29 = [(HMMTRAccessoryServer *)self browser];
  v71 = 0;
  v30 = [v29 createSystemCommissionerFabricNOCWithSigningCertificate:v18 operationalPublicKey:v28 fabricID:v17 nodeID:v16 caseAuthenticatedTags:0 error:&v71];
  v31 = v71;

  CFRelease(v28);
  if (!v30)
  {
    v44 = objc_autoreleasePoolPush();
    v45 = self;
    v46 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      v47 = HMFGetLogIdentifier();
      *buf = 138543618;
      v74 = v47;
      v75 = 2112;
      v76 = v31;
      _os_log_impl(&dword_22AEAE000, v46, OS_LOG_TYPE_ERROR, "%{public}@Failed to create system fabric NOC: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v44);
    dispatch_group_leave(group);
    v48 = [HMMTRAccessoryPairingEndContext mtrContextWithStep:18 error:v31];
    [(HMMTRAccessoryServer *)v45 _handlePairingFailureWithError:v31 context:v48];

    v30 = 0;
    goto LABEL_16;
  }

  v32 = [MEMORY[0x277CD5230] convertX509Certificate:v30];
  [v23 setNocValue:v32];

  v33 = [v23 nocValue];

  if (!v33)
  {
    v49 = objc_autoreleasePoolPush();
    v50 = self;
    v51 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
    {
      HMFGetLogIdentifier();
      v52 = v57 = v49;
      *buf = 138543362;
      v74 = v52;
      _os_log_impl(&dword_22AEAE000, v51, OS_LOG_TYPE_ERROR, "%{public}@Failed to convert NOC to TLV format", buf, 0xCu);

      v49 = v57;
    }

    objc_autoreleasePoolPop(v49);
    dispatch_group_leave(group);
    v53 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CD5120] code:1 userInfo:0];
    v54 = [HMMTRAccessoryPairingEndContext hmmtrContextWithStep:18 error:v53];
    [(HMMTRAccessoryServer *)v50 _handlePairingFailureWithError:v53 context:v54];

LABEL_16:
    v39 = v58;
    goto LABEL_17;
  }

  [v23 setIpkValue:v62];
  [v23 setCaseAdminSubject:v61];
  [v23 setAdminVendorId:&unk_283EE7F98];
  [(HMMTRAccessoryServer *)self _notifyDelegateOfPairingStep:19];
  v34 = objc_autoreleasePoolPush();
  v35 = self;
  v36 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
  {
    HMFGetLogIdentifier();
    v56 = v18;
    v38 = v37 = v17;
    *buf = 138543618;
    v74 = v38;
    v75 = 2112;
    v76 = v16;
    _os_log_impl(&dword_22AEAE000, v36, OS_LOG_TYPE_INFO, "%{public}@Adding NOC for System Commissioner with node ID %@", buf, 0x16u);

    v17 = v37;
    v18 = v56;
  }

  objc_autoreleasePoolPop(v34);
  v64[0] = MEMORY[0x277D85DD0];
  v64[1] = 3221225472;
  v64[2] = __175__HMMTRAccessoryServer_SystemCommissionerPairing___handleNewSystemCommissionerFabricNodeID_dispatchGroup_fabricID_rootCACert_operationalPublicKey_ipk_controllerNodeID_device___block_invoke;
  v64[3] = &unk_2786EDCF8;
  v64[4] = v35;
  v65 = group;
  v66 = v17;
  v67 = v18;
  v68 = v62;
  v69 = v61;
  v70 = v16;
  v39 = v58;
  [v58 addNOCWithParams:v23 completion:v64];

LABEL_17:
  v55 = *MEMORY[0x277D85DE8];
}

- (void)_handleAddTrustedRootCertificateCompletionDuringSystemCommissionerFabricCommissioningWithDispatchGroup:(id)a3 fabricID:(id)a4 rootCACert:(id)a5 operationalPublicKey:(id)a6 ipk:(id)a7 controllerNodeID:(id)a8
{
  v54 = *MEMORY[0x277D85DE8];
  v14 = a3;
  v15 = a4;
  v43 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v19 = objc_autoreleasePoolPush();
  v20 = self;
  v21 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    v22 = HMFGetLogIdentifier();
    *buf = 138543362;
    v53 = v22;
    _os_log_impl(&dword_22AEAE000, v21, OS_LOG_TYPE_INFO, "%{public}@Handling AddTrustedRootCert response", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v19);
  v23 = [(HMMTRAccessoryServer *)v20 deviceController];
  v24 = v15;
  if (!v23)
  {
    v31 = objc_autoreleasePoolPush();
    v32 = v20;
    v33 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v34 = HMFGetLogIdentifier();
      *buf = 138543362;
      v53 = v34;
      _os_log_impl(&dword_22AEAE000, v33, OS_LOG_TYPE_ERROR, "%{public}@Accessory server disabled. Aborting system commissioner fabric commissioning.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v31);
    dispatch_group_leave(v14);
    v30 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CD5120] code:6 userInfo:0];
    v35 = [HMMTRAccessoryPairingEndContext hmmtrContextWithStep:17 error:v30];
    [(HMMTRAccessoryServer *)v32 _handlePairingFailureWithError:v30 context:v35];

    goto LABEL_12;
  }

  v25 = MEMORY[0x277CD5220];
  v26 = [(HMMTRAccessoryServer *)v20 nodeID];
  v27 = [v25 deviceWithNodeID:v26 controller:v23];

  if (!v27)
  {
    v36 = objc_autoreleasePoolPush();
    v37 = v20;
    v38 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      v39 = HMFGetLogIdentifier();
      *buf = 138543362;
      v53 = v39;
      _os_log_impl(&dword_22AEAE000, v38, OS_LOG_TYPE_ERROR, "%{public}@Could not commission system commissioner fabric because no device was paired", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v36);
    dispatch_group_leave(v14);
    v40 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CD5120] code:1 userInfo:0];
    v41 = [HMMTRAccessoryPairingEndContext hmmtrContextWithStep:17 error:v40];
    [(HMMTRAccessoryServer *)v37 _handlePairingFailureWithError:v40 context:v41];

    v30 = 0;
LABEL_12:
    v29 = v43;
    goto LABEL_13;
  }

  [(HMMTRAccessoryServer *)v20 _notifyDelegateOfPairingStep:18];
  v28 = [(HMMTRAccessoryServer *)v20 browser];
  v44[0] = MEMORY[0x277D85DD0];
  v44[1] = 3221225472;
  v44[2] = __216__HMMTRAccessoryServer_SystemCommissionerPairing___handleAddTrustedRootCertificateCompletionDuringSystemCommissionerFabricCommissioningWithDispatchGroup_fabricID_rootCACert_operationalPublicKey_ipk_controllerNodeID___block_invoke;
  v44[3] = &unk_2786EDCD0;
  v44[4] = v20;
  v45 = v14;
  v46 = v24;
  v29 = v43;
  v47 = v43;
  v48 = v16;
  v49 = v17;
  v50 = v18;
  v30 = v27;
  v51 = v30;
  [v28 createNewSystemCommissionerFabricNodeIDWithCompletion:v44];

LABEL_13:
  v42 = *MEMORY[0x277D85DE8];
}

void __216__HMMTRAccessoryServer_SystemCommissionerPairing___handleAddTrustedRootCertificateCompletionDuringSystemCommissionerFabricCommissioningWithDispatchGroup_fabricID_rootCACert_operationalPublicKey_ipk_controllerNodeID___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __216__HMMTRAccessoryServer_SystemCommissionerPairing___handleAddTrustedRootCertificateCompletionDuringSystemCommissionerFabricCommissioningWithDispatchGroup_fabricID_rootCACert_operationalPublicKey_ipk_controllerNodeID___block_invoke_2;
  block[3] = &unk_2786EDC58;
  v5 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v14 = v3;
  v6 = v5;
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  v9 = *(a1 + 64);
  *&v10 = v8;
  *(&v10 + 1) = v9;
  *&v11 = v6;
  *(&v11 + 1) = v7;
  v15 = v11;
  v16 = v10;
  v17 = *(a1 + 72);
  v18 = *(a1 + 80);
  v19 = *(a1 + 88);
  v12 = v3;
  dispatch_async(v4, block);
}

- (void)_handleSystemCommissionerRootCertificate:(id)a3 fabricID:(id)a4 ipk:(id)a5 controllerNodeID:(id)a6 dispatchGroup:(id)a7 csrResponseParams:(id)a8 device:(id)a9
{
  v58 = *MEMORY[0x277D85DE8];
  v15 = a3;
  v48 = a4;
  v47 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v19 = a9;
  v20 = objc_alloc(MEMORY[0x277CD5208]);
  v21 = [(HAPAccessoryServer *)self clientQueue];
  v22 = [v20 initWithDevice:v19 endpointID:&unk_283EE7F68 queue:v21];

  v23 = objc_alloc_init(MEMORY[0x277CD5460]);
  v24 = [MEMORY[0x277CD5230] convertX509Certificate:v15];
  [v23 setRootCertificate:v24];

  v25 = [v23 rootCertificate];

  if (v25)
  {
    [(HMMTRAccessoryServer *)self _notifyDelegateOfPairingStep:17];
    v26 = objc_autoreleasePoolPush();
    v27 = self;
    v28 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      HMFGetLogIdentifier();
      v45 = v15;
      v29 = v19;
      v30 = v17;
      v31 = v22;
      v32 = v18;
      v34 = v33 = v16;
      *buf = 138543362;
      v57 = v34;
      _os_log_impl(&dword_22AEAE000, v28, OS_LOG_TYPE_INFO, "%{public}@Adding trusted root certificate", buf, 0xCu);

      v16 = v33;
      v18 = v32;
      v22 = v31;
      v17 = v30;
      v19 = v29;
      v15 = v45;
    }

    objc_autoreleasePoolPop(v26);
    v49[0] = MEMORY[0x277D85DD0];
    v49[1] = 3221225472;
    v49[2] = __161__HMMTRAccessoryServer_SystemCommissionerPairing___handleSystemCommissionerRootCertificate_fabricID_ipk_controllerNodeID_dispatchGroup_csrResponseParams_device___block_invoke;
    v49[3] = &unk_2786EDCA8;
    v49[4] = v27;
    v50 = v17;
    v51 = v18;
    v35 = v48;
    v52 = v48;
    v53 = v15;
    v36 = v47;
    v54 = v47;
    v55 = v16;
    [v22 addTrustedRootCertificateWithParams:v23 completion:v49];
  }

  else
  {
    v37 = objc_autoreleasePoolPush();
    v38 = self;
    v39 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      HMFGetLogIdentifier();
      v46 = v18;
      v41 = v40 = v16;
      *buf = 138543362;
      v57 = v41;
      _os_log_impl(&dword_22AEAE000, v39, OS_LOG_TYPE_ERROR, "%{public}@Failed to convert root CA cert to Matter certificate", buf, 0xCu);

      v16 = v40;
      v18 = v46;
    }

    objc_autoreleasePoolPop(v37);
    dispatch_group_leave(v17);
    v42 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CD5120] code:1 userInfo:0];
    v43 = [HMMTRAccessoryPairingEndContext hmmtrContextWithStep:16 error:v42];
    [(HMMTRAccessoryServer *)v38 _handlePairingFailureWithError:v42 context:v43];

    v36 = v47;
    v35 = v48;
  }

  v44 = *MEMORY[0x277D85DE8];
}

void __161__HMMTRAccessoryServer_SystemCommissionerPairing___handleSystemCommissionerRootCertificate_fabricID_ipk_controllerNodeID_dispatchGroup_csrResponseParams_device___block_invoke(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = v3;
    v5 = objc_autoreleasePoolPush();
    v6 = *(a1 + 32);
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      *buf = 138543618;
      v26 = v8;
      v27 = 2112;
      v28 = v4;
      _os_log_impl(&dword_22AEAE000, v7, OS_LOG_TYPE_ERROR, "%{public}@Failed to add trusted root certificate with error: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    dispatch_group_leave(*(a1 + 40));
    v9 = [HMMTRAccessoryPairingEndContext mtrContextWithStep:16 error:v4];
    [*(a1 + 32) _handlePairingFailureWithError:v4 context:v9];
  }

  else
  {
    v10 = [*(a1 + 48) nocsrElements];
    v9 = [HMMTRTLVParser csrFromNOCSRElements:v10];

    if (v9)
    {
      v24 = 0;
      v11 = [MEMORY[0x277CD5230] publicKeyFromCSR:v9 error:&v24];
      v4 = v24;
      if (v11)
      {
        [*(a1 + 32) _handleAddTrustedRootCertificateCompletionDuringSystemCommissionerFabricCommissioningWithDispatchGroup:*(a1 + 40) fabricID:*(a1 + 56) rootCACert:*(a1 + 64) operationalPublicKey:v11 ipk:*(a1 + 72) controllerNodeID:*(a1 + 80)];
      }

      else
      {
        v18 = objc_autoreleasePoolPush();
        v19 = *(a1 + 32);
        v20 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          v21 = HMFGetLogIdentifier();
          *buf = 138543618;
          v26 = v21;
          v27 = 2112;
          v28 = v4;
          _os_log_impl(&dword_22AEAE000, v20, OS_LOG_TYPE_ERROR, "%{public}@Failed to extract public key from CSR: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v18);
        dispatch_group_leave(*(a1 + 40));
        v22 = [HMMTRAccessoryPairingEndContext mtrContextWithStep:16 error:v4];
        [*(a1 + 32) _handlePairingFailureWithError:v4 context:v22];

        v11 = 0;
      }
    }

    else
    {
      v12 = objc_autoreleasePoolPush();
      v13 = *(a1 + 32);
      v14 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = HMFGetLogIdentifier();
        v16 = [*(a1 + 48) nocsrElements];
        *buf = 138543618;
        v26 = v15;
        v27 = 2112;
        v28 = v16;
        _os_log_impl(&dword_22AEAE000, v14, OS_LOG_TYPE_ERROR, "%{public}@Failed to extract CSR from nocsr_elements: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v12);
      dispatch_group_leave(*(a1 + 40));
      v11 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CD5120] code:1 userInfo:0];
      v17 = [HMMTRAccessoryPairingEndContext hmmtrContextWithStep:16 error:v11];
      [*(a1 + 32) _handlePairingFailureWithError:v11 context:v17];

      v4 = 0;
    }
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)_handleCSRResponseDuringSystemCommissionerFabricCommissioningWithDispatchGroup:(id)a3 responseParams:(id)a4 error:(id)a5
{
  v43 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_autoreleasePoolPush();
  v12 = self;
  v13 = HMFGetOSLogHandle();
  v14 = v13;
  if (v10)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543618;
      v40 = v15;
      v41 = 2112;
      v42 = v10;
      _os_log_impl(&dword_22AEAE000, v14, OS_LOG_TYPE_ERROR, "%{public}@Failed CSR request with error: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    dispatch_group_leave(v8);
    v16 = [HMMTRAccessoryPairingEndContext mtrContextWithStep:15 error:v10];
    [(HMMTRAccessoryServer *)v12 _handlePairingFailureWithError:v10 context:v16];
  }

  else
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v17 = HMFGetLogIdentifier();
      *buf = 138543362;
      v40 = v17;
      _os_log_impl(&dword_22AEAE000, v14, OS_LOG_TYPE_INFO, "%{public}@Handling CSRResponse", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v11);
    v16 = [(HMMTRAccessoryServer *)v12 deviceController];
    if (v16)
    {
      v18 = MEMORY[0x277CD5220];
      v19 = [(HMMTRAccessoryServer *)v12 nodeID];
      v20 = [v18 deviceWithNodeID:v19 controller:v16];

      if (v20)
      {
        [(HMMTRAccessoryServer *)v12 _notifyDelegateOfPairingStep:16];
        v21 = [(HMMTRAccessoryServer *)v12 browser];
        v35[0] = MEMORY[0x277D85DD0];
        v35[1] = 3221225472;
        v35[2] = __151__HMMTRAccessoryServer_SystemCommissionerPairing___handleCSRResponseDuringSystemCommissionerFabricCommissioningWithDispatchGroup_responseParams_error___block_invoke;
        v35[3] = &unk_2786EDC80;
        v35[4] = v12;
        v36 = v8;
        v37 = v9;
        v22 = v20;
        v38 = v22;
        [v21 fetchSystemCommissionerRootCertificateWithCompletion:v35];
      }

      else
      {
        v28 = objc_autoreleasePoolPush();
        v29 = v12;
        v30 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          v31 = HMFGetLogIdentifier();
          *buf = 138543618;
          v40 = v31;
          v41 = 2112;
          v42 = 0;
          _os_log_impl(&dword_22AEAE000, v30, OS_LOG_TYPE_ERROR, "%{public}@Could not commission system commissioner fabric because no device was paired: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v28);
        dispatch_group_leave(v8);
        v32 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CD5120] code:1 userInfo:0];
        v33 = [HMMTRAccessoryPairingEndContext hmmtrContextWithStep:15 error:v32];
        [(HMMTRAccessoryServer *)v29 _handlePairingFailureWithError:v32 context:v33];

        v22 = 0;
      }
    }

    else
    {
      v23 = objc_autoreleasePoolPush();
      v24 = v12;
      v25 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v26 = HMFGetLogIdentifier();
        *buf = 138543362;
        v40 = v26;
        _os_log_impl(&dword_22AEAE000, v25, OS_LOG_TYPE_ERROR, "%{public}@Accessory server disabled. Aborting system commissioner fabric commissioning.", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v23);
      dispatch_group_leave(v8);
      v22 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CD5120] code:6 userInfo:0];
      v27 = [HMMTRAccessoryPairingEndContext hmmtrContextWithStep:15 error:v22];
      [(HMMTRAccessoryServer *)v24 _handlePairingFailureWithError:v22 context:v27];
    }
  }

  v34 = *MEMORY[0x277D85DE8];
}

void __151__HMMTRAccessoryServer_SystemCommissionerPairing___handleCSRResponseDuringSystemCommissionerFabricCommissioningWithDispatchGroup_responseParams_error___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = [*(a1 + 32) clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __151__HMMTRAccessoryServer_SystemCommissionerPairing___handleCSRResponseDuringSystemCommissionerFabricCommissioningWithDispatchGroup_responseParams_error___block_invoke_2;
  block[3] = &unk_2786EDC58;
  v24 = v11;
  v25 = v15;
  v17 = *(a1 + 40);
  v26 = *(a1 + 32);
  v27 = v17;
  v28 = v12;
  v29 = v13;
  v30 = v14;
  v31 = *(a1 + 48);
  v32 = *(a1 + 56);
  v18 = v14;
  v19 = v13;
  v20 = v12;
  v21 = v15;
  v22 = v11;
  dispatch_async(v16, block);
}

void __151__HMMTRAccessoryServer_SystemCommissionerPairing___handleCSRResponseDuringSystemCommissionerFabricCommissioningWithDispatchGroup_responseParams_error___block_invoke_2(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32) && !*(a1 + 40))
  {
    v8 = *(a1 + 64);
    v9 = *(a1 + 72);
    v10 = *(a1 + 56);
    v11 = *(a1 + 80);
    v12 = *(a1 + 88);
    [*(a1 + 48) _handleSystemCommissionerRootCertificate:*(a1 + 96) fabricID:? ipk:? controllerNodeID:? dispatchGroup:? csrResponseParams:? device:?];
  }

  else
  {
    v2 = objc_autoreleasePoolPush();
    v3 = *(a1 + 48);
    v4 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = HMFGetLogIdentifier();
      v6 = *(a1 + 40);
      *buf = 138543618;
      v15 = v5;
      v16 = 2112;
      v17 = v6;
      _os_log_impl(&dword_22AEAE000, v4, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch root certificate: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v2);
    dispatch_group_leave(*(a1 + 56));
    v7 = [HMMTRAccessoryPairingEndContext hmmtrContextWithStep:16 error:*(a1 + 40)];
    [*(a1 + 48) _handlePairingFailureWithError:*(a1 + 40) context:v7];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_handleArmFailSafeResponseDuringSystemCommissionerFabricCommissioningWithDispatchGroup:(id)a3 error:(id)a4
{
  v46 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543362;
    v43 = v11;
    _os_log_impl(&dword_22AEAE000, v10, OS_LOG_TYPE_INFO, "%{public}@Handling Arm fail safe response", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v8);
  if (v7)
  {
    v12 = objc_autoreleasePoolPush();
    v13 = v9;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543618;
      v43 = v15;
      v44 = 2112;
      v45 = v7;
      _os_log_impl(&dword_22AEAE000, v14, OS_LOG_TYPE_ERROR, "%{public}@Failed to arm fail safe with error: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
    dispatch_group_leave(v6);
    v16 = [HMMTRAccessoryPairingEndContext mtrContextWithStep:14 error:v7];
    [(HMMTRAccessoryServer *)v13 _handlePairingFailureWithError:v7 context:v16];
  }

  else
  {
    v16 = [(HMMTRAccessoryServer *)v9 deviceController];
    if (v16)
    {
      v17 = MEMORY[0x277CD5220];
      v18 = [(HMMTRAccessoryServer *)v9 nodeID];
      v19 = [v17 deviceWithNodeID:v18 controller:v16];

      if (v19)
      {
        [(HMMTRAccessoryServer *)v9 _notifyDelegateOfPairingStep:15];
        v20 = objc_alloc(MEMORY[0x277CD5208]);
        v21 = [(HAPAccessoryServer *)v9 clientQueue];
        v22 = [v20 initWithDevice:v19 endpointID:&unk_283EE7F68 queue:v21];

        v23 = objc_alloc_init(MEMORY[0x277CD5468]);
        v24 = [MEMORY[0x277CBEB28] dataWithCapacity:32];
        v25 = 8;
        do
        {
          *buf = arc4random();
          [v24 appendBytes:buf length:4];
          --v25;
        }

        while (v25);
        [v23 setCsrNonce:v24];
        v26 = objc_autoreleasePoolPush();
        v27 = v9;
        v28 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
        {
          HMFGetLogIdentifier();
          v29 = v39 = v26;
          *buf = 138543362;
          v43 = v29;
          _os_log_impl(&dword_22AEAE000, v28, OS_LOG_TYPE_INFO, "%{public}@Sending CSRRequest", buf, 0xCu);

          v26 = v39;
        }

        objc_autoreleasePoolPop(v26);
        v40[0] = MEMORY[0x277D85DD0];
        v40[1] = 3221225472;
        v40[2] = __144__HMMTRAccessoryServer_SystemCommissionerPairing___handleArmFailSafeResponseDuringSystemCommissionerFabricCommissioningWithDispatchGroup_error___block_invoke;
        v40[3] = &unk_2786EDC30;
        v40[4] = v27;
        v41 = v6;
        [v22 CSRRequestWithParams:v23 completion:v40];
      }

      else
      {
        v34 = objc_autoreleasePoolPush();
        v35 = v9;
        v36 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          v37 = HMFGetLogIdentifier();
          *buf = 138543362;
          v43 = v37;
          _os_log_impl(&dword_22AEAE000, v36, OS_LOG_TYPE_ERROR, "%{public}@Could not commission system commissioner fabric because no device was paired", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v34);
        dispatch_group_leave(v6);
        v22 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CD5120] code:1 userInfo:0];
        v23 = [HMMTRAccessoryPairingEndContext hmmtrContextWithStep:14 error:v22];
        [(HMMTRAccessoryServer *)v35 _handlePairingFailureWithError:v22 context:v23];
      }
    }

    else
    {
      v30 = objc_autoreleasePoolPush();
      v31 = v9;
      v32 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        v33 = HMFGetLogIdentifier();
        *buf = 138543362;
        v43 = v33;
        _os_log_impl(&dword_22AEAE000, v32, OS_LOG_TYPE_ERROR, "%{public}@Accessory server disabled. Aborting system commissioner fabric commissioning.", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v30);
      dispatch_group_leave(v6);
      v19 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CD5120] code:6 userInfo:0];
      v22 = [HMMTRAccessoryPairingEndContext hmmtrContextWithStep:14 error:v19];
      [(HMMTRAccessoryServer *)v31 _handlePairingFailureWithError:v19 context:v22];
    }
  }

  v38 = *MEMORY[0x277D85DE8];
}

- (void)_pairOnSystemCommissionerFabric
{
  v48 = *MEMORY[0x277D85DE8];
  [(HMMTRAccessoryServer *)self _handlePairOnSystemCommissionerFabricStart];
  [(HMMTRAccessoryServer *)self _notifyDelegateOfPairingStep:13];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    *buf = 138543362;
    v45 = v6;
    _os_log_impl(&dword_22AEAE000, v5, OS_LOG_TYPE_INFO, "%{public}@Pairing with system commissioner fabric after successful Apple Home pairing", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  [(HMMTRAccessoryServer *)v4 setBlockInvalidation:1];
  v7 = random();
  v8 = objc_autoreleasePoolPush();
  v9 = v4;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543618;
    v45 = v11;
    v46 = 2048;
    v47 = v7;
    _os_log_impl(&dword_22AEAE000, v10, OS_LOG_TYPE_INFO, "%{public}@Characteristics Operation Queue: Commissioning with system commissioner fabric job(%lu) queued.", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  v12 = objc_autoreleasePoolPush();
  v13 = v9;
  v14 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = HMFGetLogIdentifier();
    *buf = 138543618;
    v45 = v15;
    v46 = 2048;
    v47 = v7;
    _os_log_impl(&dword_22AEAE000, v14, OS_LOG_TYPE_INFO, "%{public}@Characteristics Operation Queue: Commissioning with system commissioner fabric job(%lu) started.", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v12);
  v16 = dispatch_group_create();
  dispatch_group_enter(v16);
  v17 = [(HMMTRAccessoryServer *)v13 deviceController];
  if (v17)
  {
    v18 = MEMORY[0x277CD5220];
    v19 = [(HMMTRAccessoryServer *)v13 nodeID];
    v20 = [v18 deviceWithNodeID:v19 controller:v17];

    if (v20)
    {
      v40 = v7;
      [(HMMTRAccessoryServer *)v13 _notifyDelegateOfPairingStep:14];
      v21 = objc_alloc(MEMORY[0x277CD51F8]);
      v22 = [(HAPAccessoryServer *)v13 clientQueue];
      v23 = [v21 initWithDevice:v20 endpointID:&unk_283EE7F68 queue:v22];

      v24 = objc_alloc_init(MEMORY[0x277CD5418]);
      [v24 setExpiryLengthSeconds:&unk_283EE7F80];
      [v24 setBreadcrumb:&unk_283EE7F68];
      v25 = objc_autoreleasePoolPush();
      v26 = v13;
      v27 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        v28 = HMFGetLogIdentifier();
        *buf = 138543362;
        v45 = v28;
        _os_log_impl(&dword_22AEAE000, v27, OS_LOG_TYPE_INFO, "%{public}@Arming fail safe", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v25);
      v42[0] = MEMORY[0x277D85DD0];
      v42[1] = 3221225472;
      v42[2] = __82__HMMTRAccessoryServer_SystemCommissionerPairing___pairOnSystemCommissionerFabric__block_invoke;
      v42[3] = &unk_2786EDC08;
      v42[4] = v26;
      v43 = v16;
      [v23 armFailSafeWithParams:v24 completion:v42];

      v7 = v40;
    }

    else
    {
      v34 = objc_autoreleasePoolPush();
      v35 = v13;
      v36 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        v37 = HMFGetLogIdentifier();
        *buf = 138543362;
        v45 = v37;
        _os_log_impl(&dword_22AEAE000, v36, OS_LOG_TYPE_ERROR, "%{public}@Could not commission system commissioner fabric because no device was paired", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v34);
      dispatch_group_leave(v16);
      v23 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CD5120] code:1 userInfo:0];
      v24 = [HMMTRAccessoryPairingEndContext hmmtrContextWithStep:13 error:v23];
      [(HMMTRAccessoryServer *)v35 _handlePairingFailureWithError:v23 context:v24];
    }

    v38 = [(HAPAccessoryServer *)v13 clientQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __82__HMMTRAccessoryServer_SystemCommissionerPairing___pairOnSystemCommissionerFabric__block_invoke_13;
    block[3] = &unk_2786EF620;
    block[4] = v13;
    block[5] = v7;
    dispatch_group_notify(v16, v38, block);
  }

  else
  {
    v29 = objc_autoreleasePoolPush();
    v30 = v13;
    v31 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v32 = HMFGetLogIdentifier();
      *buf = 138543362;
      v45 = v32;
      _os_log_impl(&dword_22AEAE000, v31, OS_LOG_TYPE_ERROR, "%{public}@No Matter device controller available to commission with system commissioner fabric", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v29);
    dispatch_group_leave(v16);
    v20 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CD5120] code:1 userInfo:0];
    v33 = [HMMTRAccessoryPairingEndContext hmmtrContextWithStep:13 error:v20];
    [(HMMTRAccessoryServer *)v30 _handlePairingFailureWithError:v20 context:v33];
  }

  v39 = *MEMORY[0x277D85DE8];
}

uint64_t __82__HMMTRAccessoryServer_SystemCommissionerPairing___pairOnSystemCommissionerFabric__block_invoke_13(uint64_t a1)
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
    v11 = 2048;
    v12 = v6;
    _os_log_impl(&dword_22AEAE000, v4, OS_LOG_TYPE_INFO, "%{public}@Characteristics Operation Queue: Commissioning with system commissioner fabric job(%lu) completed.", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  result = [*(a1 + 32) setBlockInvalidation:0];
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_pairOnSystemCommissionerFabricUnlessAlreadyPairedWithRootPublicKey:(id)a3
{
  v4 = a3;
  [(HMMTRAccessoryServer *)self _notifyDelegateOfPairingStep:10];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __119__HMMTRAccessoryServer_SystemCommissionerPairing___pairOnSystemCommissionerFabricUnlessAlreadyPairedWithRootPublicKey___block_invoke;
  v6[3] = &unk_2786EFCE0;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(HMMTRAccessoryServer *)self fetchPairingsWithCompletionHandler:v6];
}

void __119__HMMTRAccessoryServer_SystemCommissionerPairing___pairOnSystemCommissionerFabricUnlessAlreadyPairedWithRootPublicKey___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v43 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v7)
  {
    v33 = v9;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v11 = v7;
    v12 = [v11 countByEnumeratingWithState:&v34 objects:v38 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v35;
      while (2)
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v35 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v34 + 1) + 8 * i);
          v17 = [v16 rootPublicKey];
          v18 = [v17 isEqual:*(a1 + 40)];

          if (v18)
          {
            v19 = objc_autoreleasePoolPush();
            v20 = *(a1 + 32);
            v21 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
            {
              v22 = HMFGetLogIdentifier();
              v23 = [v16 nodeID];
              *buf = 138543618;
              v40 = v22;
              v41 = 2112;
              v42 = v23;
              _os_log_impl(&dword_22AEAE000, v21, OS_LOG_TYPE_INFO, "%{public}@Accessory is already paired to system commissioner fabric with node ID %@. Completing Apple Home pairing.", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v19);
            v24 = [*(a1 + 32) browser];
            v25 = [v24 storageForSystemCommissioner];

            v26 = [v16 nodeID];
            v27 = [v25 uuidForSystemCommissionerFabricNode:v26];
            [*(a1 + 32) setCommissioningID:v27];

            if ((isFeatureMatteriPhoneOnlyPairingControlEnabled() & 1) == 0)
            {
              [*(a1 + 32) setOperationDisabled:1];
              [*(a1 + 32) setOperationDisabledReason:1];
            }

            [*(a1 + 32) _handlePairOnSystemCommissionerFabricSuccess];

            goto LABEL_16;
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v34 objects:v38 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }
    }

    [*(a1 + 32) _pairOnSystemCommissionerFabric];
LABEL_16:
    v10 = v33;
  }

  else
  {
    v28 = objc_autoreleasePoolPush();
    v29 = *(a1 + 32);
    v30 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      v31 = HMFGetLogIdentifier();
      *buf = 138543618;
      v40 = v31;
      v41 = 2112;
      v42 = v8;
      _os_log_impl(&dword_22AEAE000, v30, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch pairings from newly paired accessory: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v28);
    [*(a1 + 32) _handlePairingFailureWithError:v8 context:v10];
  }

  v32 = *MEMORY[0x277D85DE8];
}

- (HMMTRAccessoryServerDiagnosticsEventDelegate)diagnosticsEventDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_diagnosticsEventDelegate);

  return WeakRetained;
}

- (HMMTRAccessoryServerBrowser)browser
{
  WeakRetained = objc_loadWeakRetained(&self->_browser);

  return WeakRetained;
}

- (HMMTRReportObserver)hmdHAPAccessoryDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_hmdHAPAccessoryDelegate);

  return WeakRetained;
}

- (HMMTRAccessoryServerDelegate)chipDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_chipDelegate);

  return WeakRetained;
}

- (unint64_t)hash
{
  v3 = [(HAPAccessoryServer *)self identifier];
  v4 = [v3 hash];

  v5 = [(HMMTRAccessoryServer *)self nodeID];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_6;
  }

  if (self == v4)
  {
    v12 = 1;
    goto LABEL_10;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
    v7 = [(HAPAccessoryServer *)v6 identifier];
    v8 = [(HAPAccessoryServer *)self identifier];
    v9 = [v7 isEqual:v8];

    if (v9)
    {
      v10 = [(HMMTRAccessoryServer *)v6 nodeID];
      v11 = [(HMMTRAccessoryServer *)self nodeID];
      v12 = [v10 isEqual:v11];
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
LABEL_6:
    v12 = 0;
  }

LABEL_10:

  return v12;
}

- (id)attributeDescriptions
{
  v44[12] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  v43 = [(HAPAccessoryServer *)self name];
  v42 = [v3 initWithName:@"Name" value:v43];
  v44[0] = v42;
  v4 = objc_alloc(MEMORY[0x277D0F778]);
  v41 = [(HAPAccessoryServer *)self identifier];
  v40 = [v4 initWithName:@"Identifier" value:v41];
  v44[1] = v40;
  v5 = objc_alloc(MEMORY[0x277D0F778]);
  v6 = MEMORY[0x277CCABB0];
  v39 = [(HMMTRAccessoryServer *)self rootPublicKey];
  v38 = [v6 numberWithUnsignedInteger:{objc_msgSend(v39, "hash")}];
  v37 = [v5 initWithName:@"Root Public Key Hash" value:v38];
  v44[2] = v37;
  v7 = objc_alloc(MEMORY[0x277D0F778]);
  v36 = [(HMMTRAccessoryServer *)self nodeID];
  v35 = [v7 initWithName:@"NodeID" value:v36];
  v44[3] = v35;
  v8 = objc_alloc(MEMORY[0x277D0F778]);
  v34 = [(HMMTRAccessoryServer *)self fabricID];
  v33 = [v8 initWithName:@"FabricID" value:v34];
  v44[4] = v33;
  v9 = objc_alloc(MEMORY[0x277D0F778]);
  v32 = [(HAPAccessoryServer *)self category];
  v31 = [v9 initWithName:@"Category" value:v32];
  v44[5] = v31;
  v10 = objc_alloc(MEMORY[0x277D0F778]);
  v30 = [(HMMTRAccessoryServer *)self vendorID];
  v29 = [v10 initWithName:@"VID" value:v30];
  v44[6] = v29;
  v11 = objc_alloc(MEMORY[0x277D0F778]);
  v12 = [(HMMTRAccessoryServer *)self productID];
  v13 = [v11 initWithName:@"PID" value:v12];
  v44[7] = v13;
  v14 = objc_alloc(MEMORY[0x277D0F778]);
  v15 = [(HMMTRAccessoryServer *)self objectID];
  v16 = [v14 initWithName:@"ObjID" value:v15];
  v44[8] = v16;
  v17 = objc_alloc(MEMORY[0x277D0F778]);
  v18 = [(HMMTRAccessoryServer *)self fabricUUID];
  v19 = [v17 initWithName:@"FabricUUID" value:v18];
  v44[9] = v19;
  v20 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMMTRAccessoryServer *)self knownToSystemCommissioner];
  v21 = HMFBooleanToString();
  v22 = [v20 initWithName:@"SystemCommissioner" value:v21];
  v44[10] = v22;
  v23 = objc_alloc(MEMORY[0x277D0F778]);
  v24 = [(HMMTRAccessoryServer *)self controllerWrapper];
  v25 = [v23 initWithName:@"Controller" value:v24];
  v44[11] = v25;
  v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v44 count:12];

  v26 = *MEMORY[0x277D85DE8];

  return v28;
}

- (id)privateDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [objc_opt_class() shortDescription];
  v5 = [(HAPAccessoryServer *)self identifier];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)logIdentifier
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(HMMTRAccessoryServer *)self nodeID];
  v5 = [(HMMTRAccessoryServer *)self fabricID];
  v6 = [(HMMTRAccessoryServer *)self objectID];
  v7 = [v3 stringWithFormat:@"%@/%@(%@)", v4, v5, v6];

  return v7;
}

- (void)dispatchAfter:(unint64_t)a3 block:(id)a4
{
  v6 = a4;
  v7 = [(HAPAccessoryServer *)self clientQueue];
  dispatch_after(a3, v7, v6);
}

- (void)notifyDelegateOfUnauthenticatedAccessoryPromptEnded
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v11 = 138543362;
    v12 = v6;
    _os_log_impl(&dword_22AEAE000, v5, OS_LOG_TYPE_INFO, "%{public}@Notifying delegate of unauthenticated accessory prompt end", &v11, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v7 = [(HAPAccessoryServer *)v4 delegate];
  if ([v7 conformsToProtocol:&unk_283F236B0])
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  [v9 notifyUnauthenticatedMatterAccessoryPromptEnded];
  v10 = *MEMORY[0x277D85DE8];
}

- (void)notifyDelegateOfUnauthenticatedAccessoryPromptStarted
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v11 = 138543362;
    v12 = v6;
    _os_log_impl(&dword_22AEAE000, v5, OS_LOG_TYPE_INFO, "%{public}@Notifying delegate of unauthenticated accessory prompt start", &v11, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v7 = [(HAPAccessoryServer *)v4 delegate];
  if ([v7 conformsToProtocol:&unk_283F236B0])
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  [v9 notifyUnauthenticatedMatterAccessoryPromptStarted];
  v10 = *MEMORY[0x277D85DE8];
}

- (void)_notifyDelegateOfMatterAccessoryIsWEDAccessory:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    [v4 BOOLValue];
    v9 = HMFBooleanToString();
    v14 = 138543618;
    v15 = v8;
    v16 = 2112;
    v17 = v9;
    _os_log_impl(&dword_22AEAE000, v7, OS_LOG_TYPE_INFO, "%{public}@Notifying delegate of isWEDAccessory %@", &v14, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v10 = [(HAPAccessoryServer *)v6 delegate];
  if ([v10 conformsToProtocol:&unk_283F236B0])
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  [v12 notifyMatterAccessoryIsWEDAccessory:v4];
  v13 = *MEMORY[0x277D85DE8];
}

- (void)_notifyDelegateOfMatterAccessoryThreadCapabilities:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v13 = 138543618;
    v14 = v8;
    v15 = 2112;
    v16 = v4;
    _os_log_impl(&dword_22AEAE000, v7, OS_LOG_TYPE_INFO, "%{public}@Notifying delegate of Thread capabilities %@", &v13, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [(HAPAccessoryServer *)v6 delegate];
  if ([v9 conformsToProtocol:&unk_283F236B0])
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  [v11 notifyMatterAccessoryThreadCapabilities:v4];
  v12 = *MEMORY[0x277D85DE8];
}

- (void)_notifyDelegateOfMatterAccessoryVendorID:(id)a3 productID:(id)a4 deviceType:(id)a5
{
  v27 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_autoreleasePoolPush();
  v12 = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    v19 = 138544130;
    v20 = v14;
    v21 = 2112;
    v22 = v8;
    v23 = 2112;
    v24 = v9;
    v25 = 2112;
    v26 = v10;
    _os_log_impl(&dword_22AEAE000, v13, OS_LOG_TYPE_INFO, "%{public}@Notifying delegate of accessory vendor ID %@, product ID %@, device type %@", &v19, 0x2Au);
  }

  objc_autoreleasePoolPop(v11);
  v15 = [(HAPAccessoryServer *)v12 delegate];
  if ([v15 conformsToProtocol:&unk_283F236B0])
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  v17 = v16;

  [v17 notifyMatterAccessoryVendorID:v8 productID:v9 deviceType:v10];
  v18 = *MEMORY[0x277D85DE8];
}

- (void)_notifyDelegateOfMTRMetrics:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v13 = 138543618;
    v14 = v8;
    v15 = 2048;
    v16 = v4;
    _os_log_impl(&dword_22AEAE000, v7, OS_LOG_TYPE_INFO, "%{public}@Notifying delegate of mtr metrics %p", &v13, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [(HAPAccessoryServer *)v6 delegate];
  if ([v9 conformsToProtocol:&unk_283F236B0])
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  [v11 notifyMTRMetrics:v4];
  v12 = *MEMORY[0x277D85DE8];
}

- (void)_notifyDelegateOfAccessoryMatchingCommissioningDiscriminatorDiscovered
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v11 = 138543362;
    v12 = v6;
    _os_log_impl(&dword_22AEAE000, v5, OS_LOG_TYPE_INFO, "%{public}@Notifying matter accessory matching commissioning discriminator discovered", &v11, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v7 = [(HAPAccessoryServer *)v4 delegate];
  if ([v7 conformsToProtocol:&unk_283F236B0])
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  [v9 notifyMatterAccessoryMatchingCommissioningDiscriminatorDiscovered];
  v10 = *MEMORY[0x277D85DE8];
}

- (void)_notifyDelegateOfSupportedLinkLayerTypes:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v13 = 138543618;
    v14 = v8;
    v15 = 2112;
    v16 = v4;
    _os_log_impl(&dword_22AEAE000, v7, OS_LOG_TYPE_INFO, "%{public}@Notifying supported link layer types: %@", &v13, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [(HAPAccessoryServer *)v6 delegate];
  if ([v9 conformsToProtocol:&unk_283F236B0])
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  [v11 notifySupportedLinkLayerTypes:v4];
  v12 = *MEMORY[0x277D85DE8];
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
    _os_log_impl(&dword_22AEAE000, v7, OS_LOG_TYPE_INFO, "%{public}@Notifying matter metric pairing step %@", &v14, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v10 = [(HAPAccessoryServer *)v6 delegate];
  if ([v10 conformsToProtocol:&unk_283F236B0])
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

- (void)deviceConfigurationChanged:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (![(HMMTRAccessoryServer *)self isDisabled])
  {
    v5 = objc_autoreleasePoolPush();
    v6 = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      *buf = 138543362;
      v26 = v8;
      _os_log_impl(&dword_22AEAE000, v7, OS_LOG_TYPE_INFO, "%{public}@MTRDevice configuration changed", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
    if (![(HMMTRAccessoryServer *)v6 isPaired]|| [(HMMTRAccessoryServer *)v6 isKnownToSystemCommissioner])
    {
      v9 = objc_autoreleasePoolPush();
      v10 = v6;
      v11 = HMFGetOSLogHandle();
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
LABEL_11:

        objc_autoreleasePoolPop(v9);
        goto LABEL_12;
      }

      v12 = HMFGetLogIdentifier();
      v13 = [(HMMTRAccessoryServer *)v10 isPaired];
      v14 = "is not paired yet";
      if (v13)
      {
        v14 = "is for system commissioner";
      }

      *buf = 138543618;
      v26 = v12;
      v27 = 2080;
      v28 = v14;
      _os_log_impl(&dword_22AEAE000, v11, OS_LOG_TYPE_INFO, "%{public}@No enumeration because server %s", buf, 0x16u);
LABEL_10:

      goto LABEL_11;
    }

    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __51__HMMTRAccessoryServer_deviceConfigurationChanged___block_invoke;
    v24[3] = &unk_2786EF290;
    v24[4] = v6;
    [(HMMTRAccessoryServer *)v6 enumerateHAPServices:v24];
    if (HAPIsInternalBuild())
    {
      v16 = [(HMMTRAccessoryServer *)v6 browser];
      if (([v16 isCurrentDevicePrimaryResident] & 1) == 0)
      {

        goto LABEL_12;
      }

      v17 = [(HMMTRAccessoryServer *)v6 stateCaptureConfigChangeTimer];

      if (!v17)
      {
        v18 = [objc_alloc(MEMORY[0x277D0F920]) initWithTimeInterval:0 options:600.0];
        [(HMMTRAccessoryServer *)v6 setStateCaptureConfigChangeTimer:v18];

        v19 = [(HAPAccessoryServer *)v6 clientQueue];
        v20 = [(HMMTRAccessoryServer *)v6 stateCaptureConfigChangeTimer];
        [v20 setDelegateQueue:v19];

        v21 = [(HMMTRAccessoryServer *)v6 stateCaptureConfigChangeTimer];
        [v21 setDelegate:v6];

        v22 = [(HMMTRAccessoryServer *)v6 stateCaptureConfigChangeTimer];
        [v22 resume];

        v9 = objc_autoreleasePoolPush();
        v10 = v6;
        v11 = HMFGetOSLogHandle();
        if (!os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          goto LABEL_11;
        }

        v12 = HMFGetLogIdentifier();
        v23 = [(HAPAccessoryServer *)v10 name];
        *buf = 138543874;
        v26 = v12;
        v27 = 2112;
        v28 = v23;
        v29 = 2112;
        v30 = &unk_283EE8CE8;
        _os_log_impl(&dword_22AEAE000, v11, OS_LOG_TYPE_INFO, "%{public}@Accessory Configuration: Setting timer to capture state information due to configuration change for accessory %@, timeout is %@", buf, 0x20u);

        goto LABEL_10;
      }
    }
  }

LABEL_12:

  v15 = *MEMORY[0x277D85DE8];
}

void __51__HMMTRAccessoryServer_deviceConfigurationChanged___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v9 = 138543362;
    v10 = v7;
    _os_log_impl(&dword_22AEAE000, v6, OS_LOG_TYPE_INFO, "%{public}@Enumeration per configuration change complete", &v9, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)deviceCachePrimed:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (![(HMMTRAccessoryServer *)self isDisabled])
  {
    v5 = objc_autoreleasePoolPush();
    v6 = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      v15 = 138543362;
      v16 = v8;
      _os_log_impl(&dword_22AEAE000, v7, OS_LOG_TYPE_INFO, "%{public}@MTRDevice cache primed", &v15, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
    v9 = [(HMMTRAccessoryServer *)v6 reportDistributor];
    [v9 allAttributesReady];

    if (![(HMMTRAccessoryServer *)v6 serviceEnumerationInProgress]&& [(HMMTRAccessoryServer *)v6 fullServiceEnumerationPendingCachePrimedEvent])
    {
      v10 = objc_autoreleasePoolPush();
      v11 = v6;
      v12 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = HMFGetLogIdentifier();
        v15 = 138543362;
        v16 = v13;
        _os_log_impl(&dword_22AEAE000, v12, OS_LOG_TYPE_INFO, "%{public}@Triggering service enumeration upon cache primed event", &v15, 0xCu);
      }

      objc_autoreleasePoolPop(v10);
      [(HMMTRAccessoryServer *)v11 setFullServiceEnumerationPendingCachePrimedEvent:0];
      [(HMMTRAccessoryServer *)v11 _rebuildHAPServicesFromCHIPWithCompletionHandler:0];
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (NSHashTable)reportObservers
{
  v3 = *MEMORY[0x277CFECD8];
  os_unfair_lock_lock_with_options();
  v4 = [(NSHashTable *)self->_reportObservers copy];
  os_unfair_lock_unlock((self + v3));

  return v4;
}

- (void)removeReportObserver:(id)a3
{
  v5 = a3;
  v4 = *MEMORY[0x277CFECD8];
  os_unfair_lock_lock_with_options();
  [(NSHashTable *)self->_reportObservers removeObject:v5];
  os_unfair_lock_unlock((self + v4));
}

- (void)addReportObserver:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v11 = 138543618;
    v12 = v8;
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&dword_22AEAE000, v7, OS_LOG_TYPE_INFO, "%{public}@Registering %@ to receive attribute and event reports", &v11, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = *MEMORY[0x277CFECD8];
  os_unfair_lock_lock_with_options();
  [(NSHashTable *)v6->_reportObservers addObject:v4];
  os_unfair_lock_unlock((v6 + v9));

  v10 = *MEMORY[0x277D85DE8];
}

- (BOOL)_legacyHMDHAPAccessoryDelegateShouldHandleEvent:(id)a3
{
  v3 = [a3 objectForKeyedSubscript:*MEMORY[0x277CD5130]];
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

  v6 = [v5 isEqual:MEMORY[0x277CBEC38]];
  return v6 ^ 1;
}

- (BOOL)_isAllowedForRawEventDictionaryHandling:(id)a3
{
  v4 = a3;
  v5 = [v4 cluster];
  v6 = [v5 unsignedIntValue];
  if (v6 == 513)
  {
    v3 = [v4 event];
    if ([v3 unsignedIntValue] == 323551232)
    {
      v7 = 1;
LABEL_8:

      goto LABEL_9;
    }
  }

  v8 = [v4 cluster];
  if ([v8 unsignedIntValue] == 323615749)
  {
    v9 = [v4 event];
    v7 = [v9 unsignedIntValue] == 1;
  }

  else
  {
    v7 = 0;
  }

  if (v6 == 513)
  {
    goto LABEL_8;
  }

LABEL_9:

  return v7;
}

- (void)_handleEventReport:(id)a3
{
  v69 = *MEMORY[0x277D85DE8];
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  obj = a3;
  v48 = [obj countByEnumeratingWithState:&v57 objects:v68 count:16];
  if (v48)
  {
    v47 = *v58;
    v46 = *MEMORY[0x277CD5140];
    *&v4 = 138543618;
    v43 = v4;
    v45 = self;
    do
    {
      for (i = 0; i != v48; ++i)
      {
        if (*v58 != v47)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v57 + 1) + 8 * i);
        v7 = objc_alloc(MEMORY[0x277CD5410]);
        v56 = 0;
        v8 = [v7 initWithResponseValue:v6 error:&v56];
        v9 = v56;
        v10 = [v6 objectForKeyedSubscript:v46];
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

        v13 = [v12 endpoint];
        v14 = [(HMMTRAccessoryServer *)self _hapAccessoryAtEndpoint:v13];

        if ([(HMMTRAccessoryServer *)self _isAllowedForRawEventDictionaryHandling:v12]&& [(HMMTRAccessoryServer *)self _legacyHMDHAPAccessoryDelegateShouldHandleEvent:v6])
        {
          v49 = v9;
          v15 = objc_autoreleasePoolPush();
          v16 = self;
          v17 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
          {
            v18 = HMFGetLogIdentifier();
            *buf = v43;
            v63 = v18;
            v64 = 2112;
            v65 = v6;
            _os_log_impl(&dword_22AEAE000, v17, OS_LOG_TYPE_INFO, "%{public}@Handling custom event: %@", buf, 0x16u);
          }

          v50 = v12;

          objc_autoreleasePoolPop(v15);
          v19 = [MEMORY[0x277D0F7B8] internalOnlyInitializer];
          v20 = objc_autoreleasePoolPush();
          v21 = v16;
          v22 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
          {
            v23 = HMFGetLogIdentifier();
            v24 = [v19 UUID];
            *buf = 138543874;
            v63 = v23;
            v64 = 2112;
            v65 = v24;
            v66 = 2112;
            v67 = v6;
            _os_log_impl(&dword_22AEAE000, v22, OS_LOG_TYPE_INFO, "%{public}@[NewFlow: %@ {Feature:Event Reports}] HMMTRAccessoryServer Handling custom event report=%@", buf, 0x20u);

            self = v45;
          }

          objc_autoreleasePoolPop(v20);
          v25 = [(HMMTRAccessoryServer *)v21 hmdHAPAccessoryDelegate];
          [v25 handleRawEventReportDictionary:v6 flow:v19 hapAccessory:v14];

LABEL_29:
          v9 = v49;
          v12 = v50;
          goto LABEL_33;
        }

        if (v8)
        {
          v49 = v9;
          v50 = v12;
          v26 = [MEMORY[0x277D0F7B8] internalOnlyInitializer];
          v27 = objc_autoreleasePoolPush();
          v28 = self;
          v29 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
          {
            v30 = HMFGetLogIdentifier();
            v31 = [v26 UUID];
            *buf = 138543874;
            v63 = v30;
            v64 = 2112;
            v65 = v31;
            v66 = 2112;
            v67 = v8;
            _os_log_impl(&dword_22AEAE000, v29, OS_LOG_TYPE_INFO, "%{public}@[NewFlow: %@ {Feature:Event Reports}] HMMTRAccessoryServer Handling parsed event report=%@", buf, 0x20u);
          }

          objc_autoreleasePoolPop(v27);
          v54 = 0u;
          v55 = 0u;
          v52 = 0u;
          v53 = 0u;
          v32 = [(HMMTRAccessoryServer *)v28 reportObservers];
          v33 = [v32 countByEnumeratingWithState:&v52 objects:v61 count:16];
          if (v33)
          {
            v34 = v33;
            v35 = *v53;
            do
            {
              for (j = 0; j != v34; ++j)
              {
                if (*v53 != v35)
                {
                  objc_enumerationMutation(v32);
                }

                [*(*(&v52 + 1) + 8 * j) handleEventReport:v8 dictionary:v6 flow:v26 hapAccessory:{v14, v43}];
              }

              v34 = [v32 countByEnumeratingWithState:&v52 objects:v61 count:16];
            }

            while (v34);
          }

          if ([(HMMTRAccessoryServer *)v28 _legacyHMDHAPAccessoryDelegateShouldHandleEvent:v6])
          {
            v37 = [(HMMTRAccessoryServer *)v28 hmdHAPAccessoryDelegate];
            [v37 handleEventReport:v8 dictionary:v6 flow:v26 hapAccessory:v14];
          }

          self = v45;
          goto LABEL_29;
        }

        v38 = objc_autoreleasePoolPush();
        v39 = self;
        v40 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
        {
          HMFGetLogIdentifier();
          v41 = v51 = v12;
          *buf = 138543874;
          v63 = v41;
          v64 = 2112;
          v65 = v6;
          v66 = 2112;
          v67 = v9;
          _os_log_impl(&dword_22AEAE000, v40, OS_LOG_TYPE_INFO, "%{public}@Received event %@ is not parsed: %@", buf, 0x20u);

          v12 = v51;
        }

        objc_autoreleasePoolPop(v38);
LABEL_33:
      }

      v48 = [obj countByEnumeratingWithState:&v57 objects:v68 count:16];
    }

    while (v48);
  }

  v42 = *MEMORY[0x277D85DE8];
}

- (void)device:(id)a3 receivedEventReport:(id)a4
{
  v57 = *MEMORY[0x277D85DE8];
  v23 = a3;
  v6 = a4;
  if (![(HMMTRAccessoryServer *)self isDisabled])
  {
    v29 = self;
    group = dispatch_group_create();
    v44[0] = 0;
    v44[1] = v44;
    v44[2] = 0x3032000000;
    v44[3] = __Block_byref_object_copy__10189;
    v44[4] = __Block_byref_object_dispose__10190;
    v45 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    obj = v6;
    v7 = [obj countByEnumeratingWithState:&v40 objects:v56 count:16];
    if (v7)
    {
      v28 = *v41;
      v27 = *MEMORY[0x277CD5140];
      v25 = *MEMORY[0x277CD50D8];
      v24 = v6;
      do
      {
        v30 = v7;
        for (i = 0; i != v30; ++i)
        {
          if (*v41 != v28)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v40 + 1) + 8 * i);
          v10 = [v9 objectForKeyedSubscript:v27];
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

          dispatch_group_enter(group);
          context = objc_autoreleasePoolPush();
          v13 = v29;
          v14 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
          {
            v15 = HMFGetLogIdentifier();
            v16 = [v12 endpoint];
            v17 = [v12 cluster];
            v18 = [v12 event];
            v19 = [v9 objectForKeyedSubscript:v25];
            *buf = 138544386;
            v47 = v15;
            v48 = 2112;
            v49 = v16;
            v50 = 2112;
            v51 = v17;
            v52 = 2112;
            v53 = v18;
            v54 = 2112;
            v55 = v19;
            _os_log_impl(&dword_22AEAE000, v14, OS_LOG_TYPE_INFO, "%{public}@Handling Event Report: endpoint:%@ cluster:%@ event:%@ value:%@", buf, 0x34u);

            v6 = v24;
          }

          objc_autoreleasePoolPop(context);
          v36[0] = MEMORY[0x277D85DD0];
          v36[1] = 3221225472;
          v36[2] = __51__HMMTRAccessoryServer_device_receivedEventReport___block_invoke;
          v36[3] = &unk_2786F0440;
          v36[4] = v13;
          v20 = v12;
          v37 = v20;
          v39 = v44;
          v38 = group;
          [(HMMTRAccessoryServer *)v13 _updatedCharacteristicsForEventReport:v9 completionHandler:v36];
          [(HMMTRAccessoryServer *)v13 _handleDiagnosticsEvent:v9];
        }

        v7 = [obj countByEnumeratingWithState:&v40 objects:v56 count:16];
      }

      while (v7);
    }

    v21 = [(HAPAccessoryServer *)v29 clientQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __51__HMMTRAccessoryServer_device_receivedEventReport___block_invoke_977;
    block[3] = &unk_2786F0468;
    block[4] = v29;
    v35 = v44;
    v34 = obj;
    dispatch_group_notify(group, v21, block);

    _Block_object_dispose(v44, 8);
  }

  v22 = *MEMORY[0x277D85DE8];
}

void __51__HMMTRAccessoryServer_device_receivedEventReport___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (![v3 count])
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 32);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v7 = HMFGetLogIdentifier();
      v8 = [*(a1 + 40) endpoint];
      v9 = [*(a1 + 40) cluster];
      v11 = 138543874;
      v12 = v7;
      v13 = 2112;
      v14 = v8;
      v15 = 2112;
      v16 = v9;
      _os_log_impl(&dword_22AEAE000, v6, OS_LOG_TYPE_DEBUG, "%{public}@No characteristic found for event report: endpoint:%@ cluster:%@", &v11, 0x20u);
    }

    objc_autoreleasePoolPop(v4);
  }

  [*(*(*(a1 + 56) + 8) + 40) addObjectsFromArray:v3];
  dispatch_group_leave(*(a1 + 48));

  v10 = *MEMORY[0x277D85DE8];
}

uint64_t __51__HMMTRAccessoryServer_device_receivedEventReport___block_invoke_977(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 40);
    v7 = *(*(*(a1 + 48) + 8) + 40);
    v11 = 138543874;
    v12 = v5;
    v13 = 2112;
    v14 = v7;
    v15 = 2112;
    v16 = v6;
    _os_log_impl(&dword_22AEAE000, v4, OS_LOG_TYPE_DEBUG, "%{public}@Calling didUpdateValuesForCharacteristics for %@ from handling reports %@", &v11, 0x20u);
  }

  objc_autoreleasePoolPop(v2);
  v8 = [*(a1 + 32) delegate];
  [v8 accessoryServer:*(a1 + 32) didUpdateValuesForCharacteristics:*(*(*(a1 + 48) + 8) + 40) stateNumber:0 broadcast:0];

  result = [*(a1 + 32) _handleEventReport:*(a1 + 40)];
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)processAttributeReport:(id)a3
{
  v60 = *MEMORY[0x277D85DE8];
  v4 = a3;
  group = dispatch_group_create();
  v50[0] = 0;
  v50[1] = v50;
  v50[2] = 0x3032000000;
  v50[3] = __Block_byref_object_copy__10189;
  v50[4] = __Block_byref_object_dispose__10190;
  v51 = objc_alloc_init(MEMORY[0x277CBEB18]);
  dispatch_group_enter(group);
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543618;
    v55 = v8;
    v56 = 2112;
    v57 = v4;
    _os_log_impl(&dword_22AEAE000, v7, OS_LOG_TYPE_DEBUG, "%{public}@Processing Attribute Report: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v49 = 0;
  v9 = [objc_alloc(MEMORY[0x277CD51C8]) initWithResponseValue:v4 error:&v49];
  v10 = v49;
  v11 = MEMORY[0x277CD50B8];
  if (!v9)
  {
    context = objc_autoreleasePoolPush();
    v12 = v6;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = v10;
      v15 = HMFGetLogIdentifier();
      v16 = [v4 objectForKeyedSubscript:*v11];
      *buf = 138543874;
      v55 = v15;
      v56 = 2112;
      v57 = v16;
      v58 = 2112;
      v59 = v14;
      _os_log_impl(&dword_22AEAE000, v13, OS_LOG_TYPE_INFO, "%{public}@Attribute report %@ is not parsed into a known struct: %@", buf, 0x20u);

      v10 = v14;
    }

    objc_autoreleasePoolPop(context);
  }

  v17 = [v4 objectForKeyedSubscript:*v11];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  v19 = v18;

  v20 = [v19 endpoint];
  v21 = [(HMMTRAccessoryServer *)v6 _hapAccessoryAtEndpoint:v20];

  v47 = 0u;
  v48 = 0u;
  v46 = 0u;
  v45 = 0u;
  v22 = [(HMMTRAccessoryServer *)v6 reportObservers];
  v23 = [v22 countByEnumeratingWithState:&v45 objects:v53 count:16];
  if (v23)
  {
    v24 = *v46;
    do
    {
      v25 = 0;
      do
      {
        if (*v46 != v24)
        {
          objc_enumerationMutation(v22);
        }

        [*(*(&v45 + 1) + 8 * v25++) handleAttributeReport:v9 dictionary:v4 hapAccessory:v21];
      }

      while (v23 != v25);
      v23 = [v22 countByEnumeratingWithState:&v45 objects:v53 count:16];
    }

    while (v23);
  }

  v26 = [(HMMTRAccessoryServer *)v6 hmdHAPAccessoryDelegate];
  [v26 handleAttributeReport:v9 dictionary:v4 hapAccessory:v21];

  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = __47__HMMTRAccessoryServer_processAttributeReport___block_invoke;
  v40[3] = &unk_2786F0440;
  v27 = v4;
  v41 = v27;
  v42 = v6;
  v44 = v50;
  v28 = group;
  v43 = v28;
  [(HMMTRAccessoryServer *)v6 _updatedCharacteristicsForAttributeReport:v27 completionHandler:v40];
  v29 = [(HAPAccessoryServer *)v6 clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__HMMTRAccessoryServer_processAttributeReport___block_invoke_976;
  block[3] = &unk_2786F0468;
  v39 = v50;
  block[4] = v6;
  v30 = v27;
  v38 = v30;
  dispatch_group_notify(v28, v29, block);

  v52 = v30;
  v31 = [MEMORY[0x277CBEA60] arrayWithObjects:&v52 count:1];
  v32 = [(HMMTRAccessoryServer *)v6 chipReportHandler];
  if (v32)
  {
    v33 = [v31 encodedCHIPReports];
    (v32)[2](v32, v33);
  }

  _Block_object_dispose(v50, 8);
  v34 = *MEMORY[0x277D85DE8];
}

void __47__HMMTRAccessoryServer_processAttributeReport___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (![v3 count])
  {
    v4 = [*(a1 + 32) objectForKeyedSubscript:*MEMORY[0x277CD50B8]];
    v5 = objc_autoreleasePoolPush();
    v6 = *(a1 + 40);
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v8 = HMFGetLogIdentifier();
      v9 = [v4 endpoint];
      v10 = [v4 cluster];
      v12 = 138543874;
      v13 = v8;
      v14 = 2112;
      v15 = v9;
      v16 = 2112;
      v17 = v10;
      _os_log_impl(&dword_22AEAE000, v7, OS_LOG_TYPE_DEBUG, "%{public}@No characteristic found for attribute report: endpoint:%@ cluster:%@", &v12, 0x20u);
    }

    objc_autoreleasePoolPop(v5);
  }

  [*(*(*(a1 + 56) + 8) + 40) addObjectsFromArray:v3];
  dispatch_group_leave(*(a1 + 48));

  v11 = *MEMORY[0x277D85DE8];
}

void __47__HMMTRAccessoryServer_processAttributeReport___block_invoke_976(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  if (([*(*(*(a1 + 48) + 8) + 40) hmf_isEmpty] & 1) == 0)
  {
    v2 = objc_autoreleasePoolPush();
    v3 = *(a1 + 32);
    v4 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v5 = HMFGetLogIdentifier();
      v6 = *(a1 + 40);
      v7 = *(*(*(a1 + 48) + 8) + 40);
      v10 = 138543874;
      v11 = v5;
      v12 = 2112;
      v13 = v7;
      v14 = 2112;
      v15 = v6;
      _os_log_impl(&dword_22AEAE000, v4, OS_LOG_TYPE_DEBUG, "%{public}@Calling didUpdateValuesForCharacteristics for %@ from processing report %@", &v10, 0x20u);
    }

    objc_autoreleasePoolPop(v2);
    v8 = [*(a1 + 32) delegate];
    [v8 accessoryServer:*(a1 + 32) didUpdateValuesForCharacteristics:*(*(*(a1 + 48) + 8) + 40) stateNumber:0 broadcast:0];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)device:(id)a3 receivedAttributeReport:(id)a4
{
  v91 = *MEMORY[0x277D85DE8];
  v57 = a3;
  v6 = a4;
  if ([(HMMTRAccessoryServer *)self isDisabled])
  {
    goto LABEL_48;
  }

  v61 = self;
  v56 = v6;
  group = dispatch_group_create();
  v81[0] = 0;
  v81[1] = v81;
  v81[2] = 0x3032000000;
  v81[3] = __Block_byref_object_copy__10189;
  v81[4] = __Block_byref_object_dispose__10190;
  v82 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  v80 = 0u;
  obj = v6;
  v7 = [obj countByEnumeratingWithState:&v77 objects:v90 count:16];
  if (!v7)
  {
    goto LABEL_45;
  }

  v60 = *v78;
  v63 = *MEMORY[0x277CD50B8];
  v59 = *MEMORY[0x277CD50D8];
  do
  {
    v62 = v7;
    for (i = 0; i != v62; ++i)
    {
      if (*v78 != v60)
      {
        objc_enumerationMutation(obj);
      }

      v9 = *(*(&v77 + 1) + 8 * i);
      dispatch_group_enter(group);
      v10 = objc_autoreleasePoolPush();
      v11 = v61;
      v12 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        v13 = HMFGetLogIdentifier();
        *buf = 138543618;
        v85 = v13;
        v86 = 2112;
        v87 = v9;
        _os_log_impl(&dword_22AEAE000, v12, OS_LOG_TYPE_DEBUG, "%{public}@Handling Attribute Report: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v10);
      v14 = [v9 objectForKeyedSubscript:v63];
      if (v14)
      {
        v15 = [v9 objectForKeyedSubscript:v59];
        v16 = v15 == 0;

        if (!v16)
        {
          v17 = [(HMMTRAccessoryServer *)v11 reportDistributor];
          [v17 distributeAttributeReport:v9];

          v18 = objc_alloc(MEMORY[0x277CD51C8]);
          v76 = 0;
          v19 = [v18 initWithResponseValue:v9 error:&v76];
          v20 = v76;
          if (!v19)
          {
            v21 = objc_autoreleasePoolPush();
            v22 = v11;
            v23 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
            {
              v24 = HMFGetLogIdentifier();
              v25 = [v9 objectForKeyedSubscript:v63];
              *buf = 138543874;
              v85 = v24;
              v86 = 2112;
              v87 = v25;
              v88 = 2112;
              v89 = v20;
              _os_log_impl(&dword_22AEAE000, v23, OS_LOG_TYPE_DEBUG, "%{public}@Attribute report %@ is not parsed into a known struct: %@", buf, 0x20u);
            }

            objc_autoreleasePoolPop(v21);
          }

          v26 = [v9 objectForKeyedSubscript:v63];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v27 = v26;
          }

          else
          {
            v27 = 0;
          }

          v64 = v27;

          v28 = [v64 cluster];
          if ([v28 isEqualToNumber:&unk_283EE8D48])
          {
            v29 = [v64 attribute];
            v30 = [v29 isEqualToNumber:&unk_283EE8D60];

            if (v30)
            {
              [(HMMTRAccessoryServer *)v11 _updateAttributeTimer:v64 report:v9 timeout:v11 server:1.5];
              v31 = objc_autoreleasePoolPush();
              v32 = v11;
              v33 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
              {
                v34 = HMFGetLogIdentifier();
                *buf = 138543618;
                v85 = v34;
                v86 = 2112;
                v87 = v9;
                _os_log_impl(&dword_22AEAE000, v33, OS_LOG_TYPE_DEBUG, "%{public}@Skip handling of report: %@", buf, 0x16u);
              }

              objc_autoreleasePoolPop(v31);
              dispatch_group_leave(group);
              goto LABEL_42;
            }
          }

          else
          {
          }

          v39 = [v64 endpoint];
          v40 = [(HMMTRAccessoryServer *)v11 _hapAccessoryAtEndpoint:v39];

          v74 = 0u;
          v75 = 0u;
          v73 = 0u;
          v72 = 0u;
          v41 = [(HMMTRAccessoryServer *)v11 reportObservers];
          v42 = [v41 countByEnumeratingWithState:&v72 objects:v83 count:16];
          v43 = v20;
          if (v42)
          {
            v44 = *v73;
            do
            {
              for (j = 0; j != v42; ++j)
              {
                if (*v73 != v44)
                {
                  objc_enumerationMutation(v41);
                }

                [*(*(&v72 + 1) + 8 * j) handleAttributeReport:v19 dictionary:v9 hapAccessory:v40];
              }

              v42 = [v41 countByEnumeratingWithState:&v72 objects:v83 count:16];
            }

            while (v42);
          }

          v20 = v43;
          v46 = [(HMMTRAccessoryServer *)v11 hmdHAPAccessoryDelegate];
          [v46 handleAttributeReport:v19 dictionary:v9 hapAccessory:v40];

          if ([(HMMTRAccessoryServer *)v11 _handleUnmappedAttributeReport:v9])
          {
LABEL_39:
            dispatch_group_leave(group);
          }

          else
          {
            if ([(HMMTRAccessoryServer *)v11 _ignoreAttributeReport:v9])
            {
              v47 = objc_autoreleasePoolPush();
              v48 = v11;
              v49 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
              {
                v50 = HMFGetLogIdentifier();
                *buf = 138543618;
                v85 = v50;
                v86 = 2112;
                v87 = v9;
                _os_log_impl(&dword_22AEAE000, v49, OS_LOG_TYPE_INFO, "%{public}@Ignoring report: %@", buf, 0x16u);
              }

              objc_autoreleasePoolPop(v47);
              goto LABEL_39;
            }

            v69[0] = MEMORY[0x277D85DD0];
            v69[1] = 3221225472;
            v69[2] = __55__HMMTRAccessoryServer_device_receivedAttributeReport___block_invoke;
            v69[3] = &unk_2786F0440;
            v69[4] = v9;
            v69[5] = v11;
            v71 = v81;
            v70 = group;
            [(HMMTRAccessoryServer *)v11 _updatedCharacteristicsForAttributeReport:v9 completionHandler:v69];
          }

LABEL_42:
          continue;
        }
      }

      v35 = objc_autoreleasePoolPush();
      v36 = v11;
      v37 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
      {
        v38 = HMFGetLogIdentifier();
        *buf = 138543618;
        v85 = v38;
        v86 = 2112;
        v87 = v9;
        _os_log_impl(&dword_22AEAE000, v37, OS_LOG_TYPE_DEBUG, "%{public}@Malformed attribute report. Ignoring report: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v35);
      dispatch_group_leave(group);
    }

    v7 = [obj countByEnumeratingWithState:&v77 objects:v90 count:16];
  }

  while (v7);
LABEL_45:

  v51 = [(HAPAccessoryServer *)v61 clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__HMMTRAccessoryServer_device_receivedAttributeReport___block_invoke_975;
  block[3] = &unk_2786F0468;
  v68 = v81;
  block[4] = v61;
  v52 = obj;
  v67 = v52;
  dispatch_group_notify(group, v51, block);

  v53 = [(HMMTRAccessoryServer *)v61 chipReportHandler];
  if (v53)
  {
    v54 = [v52 encodedCHIPReports];
    (v53)[2](v53, v54);
  }

  _Block_object_dispose(v81, 8);
  v6 = v56;
LABEL_48:

  v55 = *MEMORY[0x277D85DE8];
}

void __55__HMMTRAccessoryServer_device_receivedAttributeReport___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (![v3 count])
  {
    v4 = [*(a1 + 32) objectForKeyedSubscript:*MEMORY[0x277CD50B8]];
    v5 = objc_autoreleasePoolPush();
    v6 = *(a1 + 40);
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v8 = HMFGetLogIdentifier();
      v9 = [v4 endpoint];
      v10 = [v4 cluster];
      v11 = [v4 attribute];
      v13 = 138544130;
      v14 = v8;
      v15 = 2112;
      v16 = v9;
      v17 = 2112;
      v18 = v10;
      v19 = 2112;
      v20 = v11;
      _os_log_impl(&dword_22AEAE000, v7, OS_LOG_TYPE_DEBUG, "%{public}@No characteristic found for attribute report: endpoint:%@ cluster:%@ attribute:%@", &v13, 0x2Au);
    }

    objc_autoreleasePoolPop(v5);
  }

  [*(*(*(a1 + 56) + 8) + 40) addObjectsFromArray:v3];
  dispatch_group_leave(*(a1 + 48));

  v12 = *MEMORY[0x277D85DE8];
}

void __55__HMMTRAccessoryServer_device_receivedAttributeReport___block_invoke_975(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  if (([*(*(*(a1 + 48) + 8) + 40) hmf_isEmpty] & 1) == 0)
  {
    v2 = objc_autoreleasePoolPush();
    v3 = *(a1 + 32);
    v4 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v5 = HMFGetLogIdentifier();
      v6 = *(a1 + 40);
      v7 = *(*(*(a1 + 48) + 8) + 40);
      v10 = 138543874;
      v11 = v5;
      v12 = 2112;
      v13 = v7;
      v14 = 2112;
      v15 = v6;
      _os_log_impl(&dword_22AEAE000, v4, OS_LOG_TYPE_DEBUG, "%{public}@Calling didUpdateValuesForCharacteristics for %@ from handling reports %@", &v10, 0x20u);
    }

    objc_autoreleasePoolPop(v2);
    v8 = [*(a1 + 32) delegate];
    [v8 accessoryServer:*(a1 + 32) didUpdateValuesForCharacteristics:*(*(*(a1 + 48) + 8) + 40) stateNumber:0 broadcast:0];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (BOOL)_ignoreAttributeReport:(id)a3
{
  v3 = *MEMORY[0x277CD50B8];
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:v3];
  v6 = [HMMTRUtilities mtrBaseClusterValueFromMTRClusterReportValue:v4];

  v7 = [v5 cluster];
  if ([v7 isEqualToNumber:&unk_283EE8A78])
  {
    v8 = [v5 attribute];
    v9 = [v8 isEqualToNumber:&unk_283EE89B8];

    if (v9)
    {
      v10 = v6 == 0;
    }

    else
    {
      v10 = 0;
    }

    if (v10)
    {
      goto LABEL_21;
    }
  }

  else
  {
  }

  v11 = [v5 cluster];
  if ([v11 isEqualToNumber:&unk_283EE8D00])
  {
    v12 = [v5 attribute];
    v13 = [v12 isEqualToNumber:&unk_283EE89B8];

    if (v13)
    {
      v14 = v6 == 0;
    }

    else
    {
      v14 = 0;
    }

    if (v14)
    {
      goto LABEL_21;
    }
  }

  else
  {
  }

  v15 = [v5 cluster];
  if (([v15 isEqualToNumber:&unk_283EE8D18] & 1) == 0)
  {

LABEL_23:
    v18 = 0;
    goto LABEL_24;
  }

  v16 = [v5 attribute];
  v17 = [v16 isEqualToNumber:&unk_283EE8AD8];

  if (!v17 || !v6 || ([v6 isEqualToNumber:&unk_283EE8D30] & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_21:
  v18 = 1;
LABEL_24:

  return v18;
}

- (void)_updateDelegateOfConnectionStatus:(BOOL)a3 withError:(id)a4
{
  v6 = a4;
  if ([(HMMTRAccessoryServer *)self _delegateRespondsToSelector:sel_accessoryServer_didUpdateConnectionState_linkLayerType_withError_])
  {
    v7 = [(HAPAccessoryServer *)self delegateQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __68__HMMTRAccessoryServer__updateDelegateOfConnectionStatus_withError___block_invoke;
    block[3] = &unk_2786F0418;
    v10 = a3;
    block[4] = self;
    v9 = v6;
    dispatch_async(v7, block);
  }
}

void __68__HMMTRAccessoryServer__updateDelegateOfConnectionStatus_withError___block_invoke(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    v2 = [*(a1 + 32) linkLayerType];
    v3 = [*(a1 + 32) primaryAccessory];
    [v3 setLinkLayerType:v2];

    v4 = *(a1 + 32);
    v5 = [v4 primaryAccessory];
    v6 = [v4 getSupportedLinkLayerTypesForAccessory:v5];
    [v4 _setSupportedLinkLayerTypes:v6];
  }

  else
  {
    v2 = 0;
  }

  v7 = [*(a1 + 32) delegate];
  [v7 accessoryServer:*(a1 + 32) didUpdateConnectionState:*(a1 + 48) linkLayerType:v2 withError:*(a1 + 40)];
}

- (void)_deviceInternalStateChanged:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMMTRAccessoryServer *)self matterDevice];

  if (v5 == v4 && [(HMMTRAccessoryServer *)self isReadyToReadFromMTRDevice])
  {
    v6 = [(HMMTRAccessoryServer *)self pendingMTRDeviceReadReadyHandlers];
    v7 = [v6 allValues];

    v8 = [(HMMTRAccessoryServer *)self pendingMTRDeviceReadReadyHandlers];
    [v8 removeAllObjects];

    if (([v7 hmf_isEmpty] & 1) == 0)
    {
      v9 = objc_autoreleasePoolPush();
      v10 = self;
      v11 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = HMFGetLogIdentifier();
        *buf = 138543362;
        v25 = v12;
        _os_log_impl(&dword_22AEAE000, v11, OS_LOG_TYPE_INFO, "%{public}@MTRDevice is ready to read from. Triggering pending MTRDevice read-ready handlers", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v9);
    }

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v13 = v7;
    v14 = [v13 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v20;
      do
      {
        v17 = 0;
        do
        {
          if (*v20 != v16)
          {
            objc_enumerationMutation(v13);
          }

          (*(*(*(&v19 + 1) + 8 * v17) + 16))(*(*(&v19 + 1) + 8 * v17));
          ++v17;
        }

        while (v15 != v17);
        v15 = [v13 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v15);
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (BOOL)isReadyToReadFromMTRDevice
{
  if (!isFeatureMatteriPhoneOnlyPairingControlEnabled())
  {
    return 1;
  }

  v3 = [(HMMTRAccessoryServer *)self matterDevice];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 1;
  }

  v5 = [(HMMTRAccessoryServer *)self matterDevice];
  v6 = [v5 _deviceHasActiveSubscription];

  return v6;
}

- (void)device:(id)a3 stateChanged:(unint64_t)a4
{
  v44 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if ([(HMMTRAccessoryServer *)self isDisabled])
  {
    goto LABEL_30;
  }

  v7 = [(HMMTRAccessoryServer *)self matterDevice];

  if (v7 != v6)
  {
    goto LABEL_30;
  }

  [(HMMTRAccessoryServer *)self setMtrDeviceStateReported:1];
  if (!a4)
  {
    v21 = [MEMORY[0x277CCA9B8] hapErrorWithCode:19 description:@"MTRDevice state changed to MTRDeviceStateUnknown" reason:0 suggestion:0 underlyingError:0];
    v22 = objc_autoreleasePoolPush();
    v18 = self;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = HMFGetLogIdentifier();
      *buf = 138543362;
      v39 = v24;
      _os_log_impl(&dword_22AEAE000, v23, OS_LOG_TYPE_ERROR, "%{public}@Matter device state unknown", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v22);
    goto LABEL_19;
  }

  if (a4 == 2)
  {
    v17 = objc_autoreleasePoolPush();
    v18 = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543362;
      v39 = v20;
      _os_log_impl(&dword_22AEAE000, v19, OS_LOG_TYPE_ERROR, "%{public}@Matter device unreachable & disconnected", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v17);
    v21 = [MEMORY[0x277CCA9B8] hapErrorWithCode:19 description:@"MTRDevice state changed to MTRDeviceStateUnreachable" reason:0 suggestion:0 underlyingError:0];
LABEL_19:
    [(HMMTRAccessoryServer *)v18 _handleUnreachableStateWithError:v21];
    goto LABEL_20;
  }

  if (a4 != 1)
  {
    [(HMMTRAccessoryServer *)self setMtrDeviceStateReported:0];
    goto LABEL_30;
  }

  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543362;
    v39 = v11;
    _os_log_impl(&dword_22AEAE000, v10, OS_LOG_TYPE_INFO, "%{public}@Matter device reachable & connected", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v8);
  [(HMMTRAccessoryServer *)v9 didUpdateReachability:1];
  [(HMMTRAccessoryServer *)v9 setMtrDeviceConnected:1];
  if (![(HMMTRAccessoryServer *)v9 serviceEnumerationFailed])
  {
    [(HMMTRAccessoryServer *)v9 _updateDelegateOfConnectionStatus:1 withError:0];
  }

  [(HMMTRAccessoryServer *)v9 markAsSubscribed];
  v12 = [(HMMTRAccessoryServer *)v9 browser];
  v13 = [v12 isCurrentDevicePrimaryResident];

  if (v13)
  {
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __44__HMMTRAccessoryServer_device_stateChanged___block_invoke;
    v37[3] = &unk_2786EF290;
    v37[4] = v9;
    v14 = MEMORY[0x2318887D0](v37);
    if ([(HMMTRAccessoryServer *)v9 fullServiceEnumerationPendingCachePrimedEvent])
    {
      v15 = [(HMMTRAccessoryServer *)v9 serviceEnumerationFromDeviceCompletionHandlers];
      v16 = MEMORY[0x2318887D0](v14);
      [v15 addObject:v16];
    }

    else
    {
      [(HMMTRAccessoryServer *)v9 _rebuildHAPServicesFromCHIPWithCompletionHandler:v14];
    }
  }

  if (HAPIsInternalBuild())
  {
    v21 = [(HMMTRAccessoryServer *)v9 browser];
    if ([v21 isCurrentDevicePrimaryResident])
    {
      v25 = [(HMMTRAccessoryServer *)v9 stateCaptureDeviceConnectedTimer];

      if (!v25)
      {
        v26 = [objc_alloc(MEMORY[0x277D0F920]) initWithTimeInterval:0 options:600.0];
        [(HMMTRAccessoryServer *)v9 setStateCaptureDeviceConnectedTimer:v26];

        v27 = [(HAPAccessoryServer *)v9 clientQueue];
        v28 = [(HMMTRAccessoryServer *)v9 stateCaptureDeviceConnectedTimer];
        [v28 setDelegateQueue:v27];

        v29 = [(HMMTRAccessoryServer *)v9 stateCaptureDeviceConnectedTimer];
        [v29 setDelegate:v9];

        v30 = [(HMMTRAccessoryServer *)v9 stateCaptureDeviceConnectedTimer];
        [v30 resume];

        v31 = objc_autoreleasePoolPush();
        v32 = v9;
        v33 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
        {
          v34 = HMFGetLogIdentifier();
          v35 = [(HAPAccessoryServer *)v32 name];
          *buf = 138543874;
          v39 = v34;
          v40 = 2112;
          v41 = v35;
          v42 = 2112;
          v43 = &unk_283EE8CE8;
          _os_log_impl(&dword_22AEAE000, v33, OS_LOG_TYPE_INFO, "%{public}@Accessory Configuration: Setting timer to capture state information for %@ due to matter device reachable notification, timeout is %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v31);
      }

      goto LABEL_30;
    }

LABEL_20:
  }

LABEL_30:

  v36 = *MEMORY[0x277D85DE8];
}

void __44__HMMTRAccessoryServer_device_stateChanged___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v15 = 138543618;
    v16 = v7;
    v17 = 2112;
    v18 = v3;
    _os_log_impl(&dword_22AEAE000, v6, OS_LOG_TYPE_INFO, "%{public}@Enumeration per reachable device complete: %@", &v15, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  if (!v3)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = *(a1 + 32);
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v12 = [*(a1 + 32) clusterIDCharacteristicMap];
      v15 = 138543618;
      v16 = v11;
      v17 = 2112;
      v18 = v12;
      _os_log_impl(&dword_22AEAE000, v10, OS_LOG_TYPE_INFO, "%{public}@clusterIDCharacteristicMap : %@", &v15, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
  }

  v13 = [*(a1 + 32) browser];
  [v13 notifyDiscoveredAccessoryServer:*(a1 + 32)];

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_deregisterStateCaptureHandlers
{
  [(HMMTRAccessoryServer *)self _deregisterPartsListStateCaptureHandler];

  [(HMMTRAccessoryServer *)self _deregisterDeviceConnectedStateCaptureHandler];
}

- (void)_deregisterDeviceConnectedStateCaptureHandler
{
  if ([(HMMTRAccessoryServer *)self deviceConnectedStateHandle])
  {
    [(HMMTRAccessoryServer *)self _deregisterStateCaptureHandlerWithHandle:[(HMMTRAccessoryServer *)self deviceConnectedStateHandle]];

    [(HMMTRAccessoryServer *)self setDeviceConnectedStateHandle:0];
  }
}

- (void)_deregisterPartsListStateCaptureHandler
{
  if ([(HMMTRAccessoryServer *)self partsListStateCaptureHandle])
  {
    [(HMMTRAccessoryServer *)self _deregisterStateCaptureHandlerWithHandle:[(HMMTRAccessoryServer *)self partsListStateCaptureHandle]];

    [(HMMTRAccessoryServer *)self setPartsListStateCaptureHandle:0];
  }
}

- (unint64_t)_registerStateCaptureHandlerWithStateCaptureInformation:(id)a3
{
  v4 = a3;
  if (HAPIsInternalBuild())
  {
    objc_initWeak(&location, self);
    v5 = [(HAPAccessoryServer *)self clientQueue];
    objc_copyWeak(&v9, &location);
    v8 = v4;
    v6 = os_state_add_handler();

    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t __80__HMMTRAccessoryServer__registerStateCaptureHandlerWithStateCaptureInformation___block_invoke(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) != 3)
  {
    return 0;
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = [objc_alloc(MEMORY[0x277D0F880]) initWithName:@"os-state-HMMTRAccessoryServer"];
    v5 = [WeakRetained dumpState:*(a1 + 32)];
    v6 = MEMORY[0x277CCACA8];
    v7 = [WeakRetained nodeID];
    v8 = [WeakRetained fabricID];
    v9 = [WeakRetained objectID];
    v10 = [v6 stringWithFormat:@"Accessory Configuration for %@/%@(%@)", v7, v8, v9];

    v11 = [WeakRetained createStateData:v10 data:v5];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (os_state_data_s)createStateData:(id)a3 data:(id)a4
{
  v5 = a3;
  v6 = [MEMORY[0x277CCAC58] dataWithPropertyList:a4 format:200 options:0 error:0];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 length];
    v9 = malloc_type_calloc(1uLL, v8 + 200, 0x1000040BEF03554uLL);
    v9->var0 = 1;
    v9->var1.var1 = v8;
    [v5 UTF8String];
    __strlcpy_chk();
    memcpy(v9->var4, [v7 bytes], v8);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)dumpState:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:12];
  v5 = v4;
  if (v3)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0;
  }

  [v4 setObject:v6 forKeyedSubscript:*MEMORY[0x277D0F170]];

  return v5;
}

- (void)_fetchAdditionalThreadNetworkInformationFromDevice:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (isFeatureMatterLocalFabricConfigEnabled())
  {
    v8 = dispatch_group_create();
    dispatch_group_enter(v8);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __86__HMMTRAccessoryServer__fetchAdditionalThreadNetworkInformationFromDevice_completion___block_invoke;
    v16[3] = &unk_2786EFD08;
    v16[4] = self;
    v9 = v8;
    v17 = v9;
    [(HMMTRAccessoryServer *)self fetchWEDSupportInformationFromDevice:v6 completion:v16];
    dispatch_group_enter(v9);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __86__HMMTRAccessoryServer__fetchAdditionalThreadNetworkInformationFromDevice_completion___block_invoke_942;
    v14[3] = &unk_2786EFD08;
    v14[4] = self;
    v15 = v9;
    v10 = v9;
    [(HMMTRAccessoryServer *)self fetchExtendedMACAddressFromDevice:v6 completion:v14];
    v11 = [(HAPAccessoryServer *)self delegateQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __86__HMMTRAccessoryServer__fetchAdditionalThreadNetworkInformationFromDevice_completion___block_invoke_943;
    block[3] = &unk_2786EF878;
    v13 = v7;
    dispatch_group_notify(v10, v11, block);
  }

  else
  {
    (*(v7 + 2))(v7, 0);
  }
}

void __86__HMMTRAccessoryServer__fetchAdditionalThreadNetworkInformationFromDevice_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
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
      v12 = 138543618;
      v13 = v10;
      v14 = 2112;
      v15 = v6;
      _os_log_impl(&dword_22AEAE000, v9, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch software version string of CHIP Accessory with error %@", &v12, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
  }

  dispatch_group_leave(*(a1 + 40));

  v11 = *MEMORY[0x277D85DE8];
}

void __86__HMMTRAccessoryServer__fetchAdditionalThreadNetworkInformationFromDevice_completion___block_invoke_942(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
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
      v12 = 138543618;
      v13 = v10;
      v14 = 2112;
      v15 = v6;
      _os_log_impl(&dword_22AEAE000, v9, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch eMAC address of CHIP Accessory with error %@", &v12, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
  }

  dispatch_group_leave(*(a1 + 40));

  v11 = *MEMORY[0x277D85DE8];
}

- (void)handleWEDDisconnectedWhileNotPairing
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v10 = 138543362;
    v11 = v6;
    _os_log_impl(&dword_22AEAE000, v5, OS_LOG_TYPE_INFO, "%{public}@WED disconnected while not pairing", &v10, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  if (![(HMMTRAccessoryServer *)v4 servicesEnumerated]&& ![(HMMTRAccessoryServer *)v4 serviceEnumerationFailed])
  {
    [(HMMTRAccessoryServer *)v4 disable];
    v7 = [(HMMTRAccessoryServer *)v4 browser];
    v8 = [MEMORY[0x277CCA9B8] hmmtrErrorWithCode:15];
    [v7 invalidateAccessoryServer:v4 reason:v8];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)handleThreadNetworkStateChangedNotification:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HAPAccessoryServer *)self clientQueue];

  if (v5)
  {
    v6 = [(HAPAccessoryServer *)self clientQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __68__HMMTRAccessoryServer_handleThreadNetworkStateChangedNotification___block_invoke;
    block[3] = &unk_2786F0CA8;
    block[4] = self;
    dispatch_async(v6, block);
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    v8 = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543362;
      v14 = v10;
      _os_log_impl(&dword_22AEAE000, v9, OS_LOG_TYPE_ERROR, "%{public}@handleThreadNetworkStateChangedNotification - clientQueue not available", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_handleThreadRadioStateChanged
{
  v51 = *MEMORY[0x277D85DE8];
  v3 = [(HMMTRAccessoryServer *)self browser];
  v4 = [v3 threadRadioManager];
  v5 = [v4 isReadyToEstablishWEDConnection];

  v6 = [(HMMTRAccessoryServer *)self browser];
  v7 = [v6 connectionRequestSuspended];

  if ([(HMMTRAccessoryServer *)self pairedState]&& ![(HMMTRAccessoryServer *)self isDisabled])
  {
    v8 = ![(HMMTRAccessoryServer *)self removalInProgress];
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  v9 = [(HMMTRAccessoryServer *)self supportedLinkLayerTypes];
  v10 = [v9 unsignedIntValue];

  if (v7 & 1 | ((v8 & 1) == 0) || (v10 & 0x10) == 0)
  {
    v12 = objc_autoreleasePoolPush();
    v13 = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v15 = HMFGetLogIdentifier();
      v16 = HMFBooleanToString();
      v17 = HMFBooleanToString();
      v18 = HMFBooleanToString();
      *buf = 138544130;
      v44 = v15;
      v45 = 2112;
      v46 = v16;
      v47 = 2112;
      v48 = v17;
      v49 = 2112;
      v50 = v18;
      _os_log_impl(&dword_22AEAE000, v14, OS_LOG_TYPE_DEBUG, "%{public}@_handleThreadRadioStateChanged: ignoring thread radio state change - isBrowserInPairingState = %@, isAccessoryServerValid = %@, isAccessoryServerThreadCapable = %@ ", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v12);
  }

  else
  {
    v11 = v5 && ![(HMMTRAccessoryServer *)self isWEDDevice];
    [(HMMTRAccessoryServer *)self setRequiresThreadRouter:v11];
    v19 = objc_autoreleasePoolPush();
    v20 = self;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = HMFGetLogIdentifier();
      [(HMMTRAccessoryServer *)v20 requiresThreadRouter];
      v23 = HMFBooleanToString();
      [(HMMTRAccessoryServer *)v20 isWEDDevice];
      v24 = HMFBooleanToString();
      v25 = HMFBooleanToString();
      *buf = 138544130;
      v44 = v22;
      v45 = 2112;
      v46 = v23;
      v47 = 2112;
      v48 = v24;
      v49 = 2112;
      v50 = v25;
      _os_log_impl(&dword_22AEAE000, v21, OS_LOG_TYPE_INFO, "%{public}@_handleThreadRadioStateChanged - requiresThreadRouter = %@ (isWED = %@, isControllerInSleepyRouterState = %@)", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v19);
    v26 = [(HMMTRAccessoryServer *)v20 chipDelegate];
    if (v26 && (v27 = v26, [(HAPAccessoryServer *)v20 delegateQueue], v28 = objc_claimAutoreleasedReturnValue(), v28, v27, v28))
    {
      v29 = [(HAPAccessoryServer *)v20 delegateQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __54__HMMTRAccessoryServer__handleThreadRadioStateChanged__block_invoke;
      block[3] = &unk_2786F0CA8;
      block[4] = v20;
      dispatch_async(v29, block);
    }

    else
    {
      v30 = objc_autoreleasePoolPush();
      v31 = v20;
      v32 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        v33 = HMFGetLogIdentifier();
        *buf = 138543362;
        v44 = v33;
        _os_log_impl(&dword_22AEAE000, v32, OS_LOG_TYPE_ERROR, "%{public}@_handleThreadRadioStateChanged - chipDelegate not available", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v30);
    }

    v34 = [(HMMTRAccessoryServer *)v20 browser];
    v35 = [v34 threadRadioManager];
    v36 = [v35 isThreadNetworkConnected] | v5;

    if ((v36 & 1) == 0)
    {
      v37 = objc_autoreleasePoolPush();
      v38 = v20;
      v39 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
      {
        v40 = HMFGetLogIdentifier();
        *buf = 138543362;
        v44 = v40;
        _os_log_impl(&dword_22AEAE000, v39, OS_LOG_TYPE_INFO, "%{public}@_handleThreadRadioStateChanged - thread went offline - marking accessory for resubscription", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v37);
      [(HMMTRAccessoryServer *)v38 markForResubscription];
    }
  }

  v41 = *MEMORY[0x277D85DE8];
}

void __54__HMMTRAccessoryServer__handleThreadRadioStateChanged__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) chipDelegate];
  [v2 didUpdateRequiresThreadRouterForAccessoryServer:*(a1 + 32)];
}

- (void)handleThreadDirectConnectionSleepyTypeChange:(BOOL)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3 && ![(HMMTRAccessoryServer *)self isWEDDevice];
  [(HMMTRAccessoryServer *)self setRequiresThreadRouter:v4];
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    [(HMMTRAccessoryServer *)v6 requiresThreadRouter];
    v9 = HMFBooleanToString();
    v10 = [(HMMTRAccessoryServer *)v6 nodeID];
    [(HMMTRAccessoryServer *)v6 isWEDDevice];
    v11 = HMFBooleanToString();
    v12 = HMFBooleanToString();
    *buf = 138544386;
    v17 = v8;
    v18 = 2112;
    v19 = v9;
    v20 = 2112;
    v21 = v10;
    v22 = 2112;
    v23 = v11;
    v24 = 2112;
    v25 = v12;
    _os_log_impl(&dword_22AEAE000, v7, OS_LOG_TYPE_INFO, "%{public}@handleThreadDirectConnectionSleepyTypeChange - requiresThreadRouter = %@ for accessory with nodeID %@ (isWED = %@, isSleepyLink = %@)", buf, 0x34u);
  }

  objc_autoreleasePoolPop(v5);
  v13 = [(HAPAccessoryServer *)v6 delegateQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__HMMTRAccessoryServer_handleThreadDirectConnectionSleepyTypeChange___block_invoke;
  block[3] = &unk_2786F0CA8;
  block[4] = v6;
  dispatch_async(v13, block);

  v14 = *MEMORY[0x277D85DE8];
}

void __69__HMMTRAccessoryServer_handleThreadDirectConnectionSleepyTypeChange___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) chipDelegate];
  [v2 didUpdateRequiresThreadRouterForAccessoryServer:*(a1 + 32)];
}

- (void)_fetchAdditionalThreadNetworkInformationWithCompletion:(id)a3
{
  v4 = a3;
  if (isFeatureMatterLocalFabricConfigEnabled() && self->_linkLayerType == 4)
  {
    v5 = [(HMMTRAccessoryServer *)self deviceController];
    v6 = [(HMMTRAccessoryServer *)self nodeID];
    v8 = 0;
    v7 = [v5 getDeviceBeingCommissioned:objc_msgSend(v6 error:{"unsignedLongLongValue"), &v8}];

    if (v7)
    {
      [(HMMTRAccessoryServer *)self _fetchAdditionalThreadNetworkInformationFromDevice:v7 completion:v4];
    }

    else
    {
      v4[2](v4, 0);
    }
  }

  else
  {
    v4[2](v4, 0);
  }
}

- (void)refreshThreadCapabilitiesWithCompletion:(id)a3
{
  v42 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!isFeatureMatterLocalFabricConfigEnabled() || self->_linkLayerType != 4)
  {
    v4[2](v4, 0);
    goto LABEL_8;
  }

  if ([(HMMTRAccessoryServer *)self isWEDDevice])
  {
    v5 = objc_autoreleasePoolPush();
    v6 = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      v9 = [(HMMTRAccessoryServer *)v6 nodeID];
      *buf = 138543618;
      *&buf[4] = v8;
      *&buf[12] = 2112;
      *&buf[14] = v9;
      _os_log_impl(&dword_22AEAE000, v7, OS_LOG_TYPE_INFO, "%{public}@Accessory is already WED capable, will not try to refresh information for accessory with nodeID %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    v4[2](v4, 0);
    goto LABEL_8;
  }

  v11 = [(HMMTRAccessoryServer *)self browser];
  v12 = [v11 storage];
  v13 = [v12 dataSource];
  v14 = [(HMMTRAccessoryServer *)self fabricUUID];
  v15 = [v13 storageDataSourceForFabricUUID:v14];

  v16 = [(HMMTRAccessoryServer *)self nodeID];
  v17 = [v15 storageDataSourceForDeviceWithNodeID:v16];

  v32[0] = 0;
  v32[1] = v32;
  v32[2] = 0x2020000000;
  v33 = [(HMMTRAccessoryServer *)self isWEDDevice];
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v39 = __Block_byref_object_copy__10189;
  v40 = __Block_byref_object_dispose__10190;
  v41 = [(HMMTRAccessoryServer *)self eMACAddress];
  v18 = [(HMMTRAccessoryServer *)self deviceController];
  if (!v18)
  {
    v4[2](v4, 0);
    goto LABEL_13;
  }

  v19 = [(HMMTRAccessoryServer *)self nodeID];
  v20 = [(HMMTRAccessoryServer *)self mtrBaseDeviceWithNodeID:v19 controller:v18];

  if (v20)
  {
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __64__HMMTRAccessoryServer_refreshThreadCapabilitiesWithCompletion___block_invoke;
    v27[3] = &unk_2786F03C8;
    v27[4] = self;
    v29 = v4;
    v30 = v32;
    v28 = v17;
    v31 = buf;
    [(HMMTRAccessoryServer *)self _fetchAdditionalThreadNetworkInformationFromDevice:v20 completion:v27];

LABEL_13:
    _Block_object_dispose(buf, 8);

    _Block_object_dispose(v32, 8);
    goto LABEL_8;
  }

  v21 = objc_autoreleasePoolPush();
  v22 = self;
  v23 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    v24 = HMFGetLogIdentifier();
    v25 = [(HMMTRAccessoryServer *)v22 nodeID];
    *v34 = 138543618;
    v35 = v24;
    v36 = 2112;
    v37 = v25;
    _os_log_impl(&dword_22AEAE000, v23, OS_LOG_TYPE_ERROR, "%{public}@Unable to get additional thread information from accessory after firmware update for nodeID %@ because of no device", v34, 0x16u);
  }

  objc_autoreleasePoolPop(v21);
  v26 = [MEMORY[0x277CCA9B8] hapErrorWithCode:1];
  (v4)[2](v4, v26);

  _Block_object_dispose(buf, 8);
  _Block_object_dispose(v32, 8);

LABEL_8:
  v10 = *MEMORY[0x277D85DE8];
}

void __64__HMMTRAccessoryServer_refreshThreadCapabilitiesWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v43 = *MEMORY[0x277D85DE8];
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
      v9 = [*(a1 + 32) nodeID];
      *buf = 138543874;
      v34 = v8;
      v35 = 2112;
      v36 = v9;
      v37 = 2112;
      v38 = v3;
      _os_log_impl(&dword_22AEAE000, v7, OS_LOG_TYPE_ERROR, "%{public}@Failed to refresh thread capabilities from accessory nodeID %@, error: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v4);
    v10 = *(*(a1 + 48) + 16);
    goto LABEL_15;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v12 = [*(a1 + 32) nodeID];
    v13 = [*(a1 + 32) softwareVersionNumber];
    [*(a1 + 32) isWEDDevice];
    v14 = HMFBooleanToString();
    v15 = [*(a1 + 32) eMACAddress];
    *buf = 138544386;
    v34 = v11;
    v35 = 2112;
    v36 = v12;
    v37 = 2112;
    v38 = v13;
    v39 = 2112;
    v40 = v14;
    v41 = 2112;
    v42 = v15;
    _os_log_impl(&dword_22AEAE000, v7, OS_LOG_TYPE_INFO, "%{public}@Refreshed thread capabilities for accessory with nodeID: %@, firmwareVersion = %@ WED: %@ eMAC: %@", buf, 0x34u);
  }

  objc_autoreleasePoolPop(v4);
  if (![*(a1 + 32) isWEDDevice] || (objc_msgSend(*(a1 + 32), "eMACAddress"), v16 = objc_claimAutoreleasedReturnValue(), v16, !v16))
  {
    v10 = *(*(a1 + 48) + 16);
LABEL_15:
    v10();
    goto LABEL_16;
  }

  v17 = dispatch_group_create();
  v18 = *(*(*(a1 + 56) + 8) + 24);
  if (v18 != [*(a1 + 32) isWEDDevice])
  {
    dispatch_group_enter(v17);
    v19 = *(a1 + 40);
    v20 = [*(a1 + 32) isWEDDevice];
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __64__HMMTRAccessoryServer_refreshThreadCapabilitiesWithCompletion___block_invoke_939;
    v31[3] = &unk_2786EF9E0;
    v31[4] = *(a1 + 32);
    v32 = v17;
    [v19 updateWedSupport:v20 completion:v31];
  }

  v21 = *(*(*(a1 + 64) + 8) + 40);
  v22 = [*(a1 + 32) eMACAddress];
  LOBYTE(v21) = HMFEqualObjects();

  if ((v21 & 1) == 0)
  {
    dispatch_group_enter(v17);
    v23 = *(a1 + 40);
    v24 = [*(a1 + 32) eMACAddress];
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __64__HMMTRAccessoryServer_refreshThreadCapabilitiesWithCompletion___block_invoke_940;
    v29[3] = &unk_2786EF9E0;
    v29[4] = *(a1 + 32);
    v30 = v17;
    [v23 updateExtendedMACAddress:v24 completion:v29];
  }

  v25 = [*(a1 + 32) delegateQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__HMMTRAccessoryServer_refreshThreadCapabilitiesWithCompletion___block_invoke_941;
  block[3] = &unk_2786EF878;
  v28 = *(a1 + 48);
  dispatch_group_notify(v17, v25, block);

LABEL_16:
  v26 = *MEMORY[0x277D85DE8];
}

void __64__HMMTRAccessoryServer_refreshThreadCapabilitiesWithCompletion___block_invoke_939(uint64_t a1, void *a2)
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
      _os_log_impl(&dword_22AEAE000, v6, OS_LOG_TYPE_ERROR, "%{public}@Failed to WED support version after firmware update error: %@", &v9, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
  }

  dispatch_group_leave(*(a1 + 40));

  v8 = *MEMORY[0x277D85DE8];
}

void __64__HMMTRAccessoryServer_refreshThreadCapabilitiesWithCompletion___block_invoke_940(uint64_t a1, void *a2)
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
      _os_log_impl(&dword_22AEAE000, v6, OS_LOG_TYPE_ERROR, "%{public}@Failed to Wed support version after firmware update error: %@", &v9, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
  }

  dispatch_group_leave(*(a1 + 40));

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_continueNetworkProvisioning
{
  [(HMMTRAccessoryServer *)self _notifyDelegateOfPairingStep:3];
  [(HMMTRAccessoryServer *)self _startCurrentMetricTimeWithName:@"hmmtrAccessoryMetricNameNetworkScan"];
  [(HMMTRAccessoryServer *)self _notifyDelegateOfPairingProgress:17];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __52__HMMTRAccessoryServer__continueNetworkProvisioning__block_invoke;
  v3[3] = &unk_2786F03A0;
  v3[4] = self;
  [(HMMTRAccessoryServer *)self _requestAccessoryNetworkScanWithCompletionHandler:v3];
}

void __52__HMMTRAccessoryServer__continueNetworkProvisioning__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v22 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(a1 + 32);
  if (!v7 || v8)
  {
    [v10 _notifyDelegateOfPairingProgress:19 error:v8];
    [*(a1 + 32) _pairingComplete:v8 context:v9];
  }

  else
  {
    [v10 _notifyDelegateOfPairingProgress:18];
    v11 = objc_autoreleasePoolPush();
    v12 = *(a1 + 32);
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      v18 = 138543618;
      v19 = v14;
      v20 = 2112;
      v21 = v7;
      _os_log_impl(&dword_22AEAE000, v13, OS_LOG_TYPE_INFO, "%{public}@Scanned networks: %@", &v18, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    v15 = [*(a1 + 32) stageWiFiScanResultsHandler];
    if (v15)
    {
    }

    else
    {
      v16 = [*(a1 + 32) stageThreadScanResultsHandler];

      if (!v16)
      {
        [*(a1 + 32) _collectNetworkCredentials:v7];
        goto LABEL_10;
      }
    }

    [*(a1 + 32) _onNetworkScanResults:v7];
  }

LABEL_10:

  v17 = *MEMORY[0x277D85DE8];
}

- (void)_controller:(id)a3 commissioningAndPairedNodeRecoveryComplete:(id)a4 nodeID:(id)a5 abstractMetrics:(id)a6
{
  v30 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (!v11)
  {
    [(HMMTRAccessoryServer *)self _notifyDelegateOfPairingProgress:28];
    [(HMMTRAccessoryServer *)self _notifyDelegateOfPairingStep:7];
    [(HMMTRAccessoryServer *)self _notifyDelegateOfPairingProgress:33];
    v16 = [(HMMTRAccessoryServer *)self deviceController];
    if (v16)
    {
      [(HMMTRAccessoryServer *)self _notifyDelegateOfPairingProgress:34];
      [(HMMTRAccessoryServer *)self setCommissioningCompleted:1];
      [(HMMTRAccessoryServer *)self _pairingComplete:0 context:0];
      v11 = 0;
    }

    else
    {
      v22 = objc_autoreleasePoolPush();
      v23 = self;
      v24 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v25 = HMFGetLogIdentifier();
        v28 = 138543362;
        v29 = v25;
        _os_log_impl(&dword_22AEAE000, v24, OS_LOG_TYPE_ERROR, "%{public}@No Matter device controller available to handle commissioning completion", &v28, 0xCu);
      }

      objc_autoreleasePoolPop(v22);
      v11 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CD5120] code:6 userInfo:0];
      [(HMMTRAccessoryServer *)v23 _notifyDelegateOfPairingProgress:29 error:v11];
      v26 = [HMMTRAccessoryPairingEndContext hmmtrContextWithStep:7 error:v11];
      [(HMMTRAccessoryServer *)v23 _pairingComplete:v11 context:v26];
    }

    goto LABEL_15;
  }

  if ([(HMMTRAccessoryServer *)self commissioningSessionEstablished])
  {
    v14 = [(HMMTRAccessoryServer *)self commissioningFailureOverridingError];

    if (v14)
    {
      v15 = [(HMMTRAccessoryServer *)self commissioningFailureOverridingError];

      v11 = v15;
    }

    v16 = [HMMTRAccessoryPairingEndContext mtrContextWithStep:6 error:v11];
    [(HMMTRAccessoryServer *)self _notifyDelegateOfPairingProgress:29 error:v11];
    v17 = *MEMORY[0x277CFECD8];
    os_unfair_lock_lock_with_options();
    linkLayerType = self->_linkLayerType;
    os_unfair_lock_unlock((self + v17));
    if ([v11 code] == 9 && linkLayerType == 1)
    {
      v19 = MEMORY[0x277CCA9B8];
      v20 = [v11 localizedFailureReason];
      v21 = [v19 hapErrorWithCode:25 description:@"WiFi Commissioning failed with error" reason:v20 suggestion:0 underlyingError:v11];

      v11 = v21;
    }

    [(HMMTRAccessoryServer *)self _pairingComplete:v11 context:v16];
LABEL_15:

    goto LABEL_16;
  }

  [(HMMTRAccessoryServer *)self _retryPairing];
LABEL_16:

  v27 = *MEMORY[0x277D85DE8];
}

- (void)_controller:(id)a3 commissioningComplete:(id)a4 nodeID:(id)a5 abstractMetrics:(id)a6
{
  v61 = *MEMORY[0x277D85DE8];
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
    *buf = 138543618;
    *&buf[4] = v17;
    *&buf[12] = 2112;
    *&buf[14] = v11;
    _os_log_impl(&dword_22AEAE000, v16, OS_LOG_TYPE_INFO, "%{public}@Accessory commissioning complete. %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v14);
  v18 = objc_autoreleasePoolPush();
  v19 = v15;
  v20 = HMFGetOSLogHandle();
  v21 = os_log_type_enabled(v20, OS_LOG_TYPE_INFO);
  if (v13)
  {
    if (v21)
    {
      v22 = HMFGetLogIdentifier();
      *buf = 138543618;
      *&buf[4] = v22;
      *&buf[12] = 2112;
      *&buf[14] = @"com.apple.matter.pairing-event";
      _os_log_impl(&dword_22AEAE000, v20, OS_LOG_TYPE_INFO, "%{public}@Submitting Matter metric after commissioning complete: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v18);
    v23 = @"com.apple.matter.pairing-event";
    v24 = v13;
    if (submitMatterMetrics_onceToken != -1)
    {
      dispatch_once(&submitMatterMetrics_onceToken, &__block_literal_global_7541);
    }

    v25 = submitMatterMetrics_metricsQueue;
    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 3221225472;
    *&buf[16] = __submitMatterMetrics_block_invoke_2;
    v58 = &unk_2786EF328;
    v26 = v24;
    v59 = v26;
    v27 = @"com.apple.matter.pairing-event";
    v60 = @"com.apple.matter.pairing-event";
    dispatch_async(v25, buf);

    v28 = dictionaryFromMatterMetrics(v26);
  }

  else
  {
    if (v21)
    {
      v29 = HMFGetLogIdentifier();
      *buf = 138543362;
      *&buf[4] = v29;
      _os_log_impl(&dword_22AEAE000, v20, OS_LOG_TYPE_INFO, "%{public}@Notifying delegate with empty mtr metrics", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v18);
    v28 = [MEMORY[0x277CBEAC0] dictionary];
  }

  v30 = v28;
  [(HMMTRAccessoryServer *)v19 _notifyDelegateOfMTRMetrics:v28];

  [(HMMTRAccessoryServer *)v19 setCommissionCompletePending:0];
  v31 = [(HMMTRAccessoryServer *)v19 commissionMetricsReadyHandler];
  [(HMMTRAccessoryServer *)v19 setCommissionMetricsReadyHandler:0];
  if (v31)
  {
    v31[2](v31);
  }

  if ([(HMMTRAccessoryServer *)v19 isKnownToSystemCommissioner])
  {
    goto LABEL_21;
  }

  v32 = [v11 domain];
  if (([v32 isEqual:*MEMORY[0x277CD5120]] & 1) == 0)
  {

    goto LABEL_21;
  }

  v33 = [v11 code];

  if (v33 != 11)
  {
LABEL_21:
    [(HMMTRAccessoryServer *)v19 _controller:v10 commissioningAndPairedNodeRecoveryComplete:v11 nodeID:v12 abstractMetrics:v13];
    goto LABEL_22;
  }

  v34 = objc_autoreleasePoolPush();
  v35 = v19;
  v36 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
  {
    v37 = HMFGetLogIdentifier();
    *buf = 138543362;
    *&buf[4] = v37;
    _os_log_impl(&dword_22AEAE000, v36, OS_LOG_TYPE_INFO, "%{public}@Removing the conflicting fabric from the accessory", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v34);
  v38 = [HMMTRCommissioningSessionHandler alloc];
  v39 = [(HAPAccessoryServer *)v35 clientQueue];
  v51 = [(HMMTRCommissioningSessionHandler *)v38 initWithClientQueue:v39];

  v50 = [(HMMTRAccessoryServer *)v35 controllerWrapper];
  v40 = [v50 startupParams];
  v41 = [(HMMTRAccessoryServer *)v35 _setupPayloadForLastCommissioning];
  v47 = [(HMMTRAccessoryServer *)v35 nodeID];
  v49 = [(HMMTRAccessoryServer *)v35 browser];
  v48 = [v49 storage];
  v46 = [v48 dataSource];
  v45 = [(HMMTRAccessoryServer *)v35 fabricUUID];
  v42 = [v46 storageDataSourceForFabricUUID:v45];
  v43 = [v42 allNodeIDs];
  v52[0] = MEMORY[0x277D85DD0];
  v52[1] = 3221225472;
  v52[2] = __81__HMMTRAccessoryServer__controller_commissioningComplete_nodeID_abstractMetrics___block_invoke;
  v52[3] = &unk_2786F0378;
  v52[4] = v35;
  v53 = v10;
  v54 = v11;
  v55 = v12;
  v56 = v13;
  [(HMMTRCommissioningSessionHandler *)v51 establishSessionToRemoveFabricWithDeviceController:v53 forControllerParameters:v40 setupPayload:v41 nodeID:v47 allPairedNodeIDs:v43 completion:v52];

LABEL_22:
  v44 = *MEMORY[0x277D85DE8];
}

void __81__HMMTRAccessoryServer__controller_commissioningComplete_nodeID_abstractMetrics___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
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
      v17 = 138543362;
      v18 = v8;
      _os_log_impl(&dword_22AEAE000, v7, OS_LOG_TYPE_ERROR, "%{public}@Accessory conflicting fabric could not be removed. Failing the pairing", &v17, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    [*(a1 + 32) _controller:*(a1 + 40) commissioningAndPairedNodeRecoveryComplete:*(a1 + 48) nodeID:*(a1 + 56) abstractMetrics:*(a1 + 64)];
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v17 = 138543362;
      v18 = v9;
      _os_log_impl(&dword_22AEAE000, v7, OS_LOG_TYPE_INFO, "%{public}@Retrying commissioning after removing conflicting fabric", &v17, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    [*(a1 + 32) setHasPriorSuccessfulPairing:1];
    v10 = objc_alloc_init(MEMORY[0x277CD5300]);
    v11 = [*(a1 + 32) browser];
    v12 = [v11 attestationStatus];
    [v12 populateDelegate:v10];

    v14 = *(a1 + 32);
    v13 = *(a1 + 40);
    v15 = [v14 clientQueue];
    [v13 setDeviceControllerDelegate:v14 queue:v15];

    [*(a1 + 32) _commissionWithParams:v10];
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)controller:(id)a3 readCommissioneeInfo:(id)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ([(HMMTRAccessoryServer *)self isPairingInProgress])
  {
    v8 = objc_autoreleasePoolPush();
    v9 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543362;
      v29 = v11;
      _os_log_impl(&dword_22AEAE000, v10, OS_LOG_TYPE_INFO, "%{public}@Matter CommissioneeInfo has been read", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
    [(HMMTRAccessoryServer *)v9 setCommissioneeInfo:v7];
    v12 = [(HAPAccessoryServer *)v9 delegateQueue];
    if (v12)
    {
      v13 = v12;
      v14 = [(HAPAccessoryServer *)v9 delegate];
      v15 = objc_opt_respondsToSelector();

      if (v15)
      {
        v16 = [(HAPAccessoryServer *)v9 delegateQueue];
        v22 = MEMORY[0x277D85DD0];
        v23 = 3221225472;
        v24 = __56__HMMTRAccessoryServer_controller_readCommissioneeInfo___block_invoke;
        v25 = &unk_2786EF328;
        v26 = v9;
        v27 = v7;
        dispatch_async(v16, &v22);
      }
    }

    if ([(HMMTRAccessoryServer *)v9 isKnownToSystemCommissioner:v22])
    {
      v17 = [(HMMTRAccessoryServer *)v9 stageCompletion];
      if (v17)
      {
        v18 = v17;
        v19 = [(HMMTRAccessoryServer *)v9 stageCommissioneeInfoHandler];

        if (v19)
        {
          v20 = [(HMMTRAccessoryServer *)v9 stageCommissioneeInfoHandler];
          (v20)[2](v20, v7);
        }
      }
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

void __56__HMMTRAccessoryServer_controller_readCommissioneeInfo___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 accessoryServer:*(a1 + 32) didReadCommissioneeInfo:*(a1 + 40)];
}

- (void)controller:(id)a3 commissioningSessionEstablishmentDone:(id)a4
{
  v31 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ([(HMMTRAccessoryServer *)self pairingProgress]!= 1)
  {
    v14 = objc_autoreleasePoolPush();
    v15 = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = HMFGetLogIdentifier();
      v27 = 138543362;
      v28 = v17;
      _os_log_impl(&dword_22AEAE000, v16, OS_LOG_TYPE_INFO, "%{public}@Ignoring unexpected call to pairing complete", &v27, 0xCu);
    }

    v13 = v14;
    goto LABEL_9;
  }

  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  v11 = v10;
  if (v7)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      v27 = 138543618;
      v28 = v12;
      v29 = 2112;
      v30 = v7;
      _os_log_impl(&dword_22AEAE000, v11, OS_LOG_TYPE_ERROR, "%{public}@CHIP Accessory pairing failed before network provisioning: %@", &v27, 0x16u);
    }

    v13 = v8;
LABEL_9:
    objc_autoreleasePoolPop(v13);
    goto LABEL_10;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v19 = HMFGetLogIdentifier();
    v27 = 138543362;
    v28 = v19;
    _os_log_impl(&dword_22AEAE000, v11, OS_LOG_TYPE_INFO, "%{public}@CHIP Accessory ready for network provisioning", &v27, 0xCu);
  }

  objc_autoreleasePoolPop(v8);
  [(HMMTRAccessoryServer *)v9 setCommissioningSessionEstablished:1];
  if ([(HMMTRAccessoryServer *)v9 hasPriorSuccessfulPairing])
  {
    v20 = objc_autoreleasePoolPush();
    v21 = v9;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = HMFGetLogIdentifier();
      v27 = 138543362;
      v28 = v23;
      _os_log_impl(&dword_22AEAE000, v22, OS_LOG_TYPE_INFO, "%{public}@not reading thread network prerequisites", &v27, 0xCu);
    }

    objc_autoreleasePoolPop(v20);
    v24 = objc_alloc_init(MEMORY[0x277CD5300]);
    v25 = [(HMMTRAccessoryServer *)v21 browser];
    v26 = [v25 attestationStatus];
    [v26 populateDelegate:v24];

    [(HMMTRAccessoryServer *)v21 _commissionWithParams:v24];
  }

  else
  {
    [(HMMTRAccessoryServer *)v9 _continueNetworkProvisioning];
  }

LABEL_10:

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_queryBridgedAccessoryAndUnreachablePerCacheForCharacteristic:(id)a3 completion:(id)a4
{
  v66 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HAPAccessoryServer *)self category];
  if (([v8 isEqual:&unk_283EE8BF8] & 1) == 0)
  {

LABEL_17:
    v7[2](v7, 0);
    goto LABEL_18;
  }

  v9 = [v6 service];
  v10 = [v9 accessory];
  v11 = [v10 category];
  v12 = [v11 isEqual:&unk_283EE8BF8];

  if (v12)
  {
    goto LABEL_17;
  }

  v13 = [(HMMTRAccessoryServer *)self matterDevice];

  if (!v13)
  {
    goto LABEL_17;
  }

  v14 = [HMMTRHAPService chipPluginServiceForCharacteristic:v6];
  v15 = v14;
  if (v14 && ([v14 endpoint], v16 = objc_claimAutoreleasedReturnValue(), v16, v16))
  {
    v47 = self;
    v48 = v15;
    v46 = v6;
    v17 = [v6 service];
    v18 = [v17 accessory];

    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v49 = v18;
    v19 = [v18 services];
    v20 = [v19 countByEnumeratingWithState:&v53 objects:v65 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v54;
      v23 = *MEMORY[0x277CFE810];
LABEL_8:
      v24 = 0;
      while (1)
      {
        if (*v54 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v25 = *(*(&v53 + 1) + 8 * v24);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v26 = [v25 type];
          v27 = [v26 isEqualToString:v23];

          if (v27)
          {
            break;
          }
        }

        if (v21 == ++v24)
        {
          v21 = [v19 countByEnumeratingWithState:&v53 objects:v65 count:16];
          if (v21)
          {
            goto LABEL_8;
          }

          goto LABEL_15;
        }
      }

      v31 = v25;

      v32 = v31;
      v6 = v46;
      v28 = v47;
      v29 = v49;
      if (v31)
      {
        goto LABEL_24;
      }
    }

    else
    {
LABEL_15:

      v6 = v46;
      v28 = v47;
      v29 = v49;
    }

    v33 = objc_autoreleasePoolPush();
    v34 = v28;
    v35 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
    {
      v36 = HMFGetLogIdentifier();
      v37 = [v48 endpoint];
      *buf = 138544130;
      v58 = v36;
      v59 = 2112;
      v60 = v37;
      v61 = 2112;
      v62 = v6;
      v63 = 2112;
      v64 = v29;
      v28 = v47;
      _os_log_impl(&dword_22AEAE000, v35, OS_LOG_TYPE_INFO, "%{public}@Unable to locate Accessory Information Service on accessory %@, defaulting to service endpoint %@ for characteristic: %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v33);
    v32 = 0;
    v31 = v48;
LABEL_24:
    v38 = [v31 endpoint];
    v39 = [HMMTRDeviceReader alloc];
    v40 = [(HAPAccessoryServer *)v28 clientQueue];
    v41 = [(HMMTRAccessoryServer *)v28 reportDistributor];
    v42 = [(HMMTRAccessoryServer *)v28 matterDevice];
    v43 = [(HMMTRDeviceReader *)v39 initWithClientQueue:v40 distributor:v41 device:v42 endpointID:v38 clusterID:&unk_283EE8A60 attributeID:&unk_283EE8CD0];

    v44 = [(HMMTRAccessoryServer *)v28 bridgedAccessoryReachabilityReaderTimeoutNSecs];

    if (v44)
    {
      v45 = [(HMMTRAccessoryServer *)v28 bridgedAccessoryReachabilityReaderTimeoutNSecs];
      -[HMMTRDeviceReader setReportTimeoutNSecs:](v43, "setReportTimeoutNSecs:", [v45 longLongValue]);
    }

    v50[0] = MEMORY[0x277D85DD0];
    v50[1] = 3221225472;
    v50[2] = __97__HMMTRAccessoryServer__queryBridgedAccessoryAndUnreachablePerCacheForCharacteristic_completion___block_invoke;
    v50[3] = &unk_2786F0350;
    v52 = v7;
    v50[4] = v28;
    v15 = v48;
    v51 = v48;
    [(HMMTRDeviceReader *)v43 readAttributeWithCompletion:v50];
  }

  else
  {
    v7[2](v7, 0);
  }

LABEL_18:
  v30 = *MEMORY[0x277D85DE8];
}

void __97__HMMTRAccessoryServer__queryBridgedAccessoryAndUnreachablePerCacheForCharacteristic_completion___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (v3 && ([v3 objectForKeyedSubscript:*MEMORY[0x277CD5188]], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "isEqual:", *MEMORY[0x277CD50C0]), v5, (v6 & 1) != 0))
  {
    v7 = [v4 objectForKeyedSubscript:*MEMORY[0x277CD51A0]];
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

    if ([v9 isEqual:MEMORY[0x277CBEC28]])
    {
      v10 = objc_autoreleasePoolPush();
      v11 = *(a1 + 32);
      v12 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = HMFGetLogIdentifier();
        v14 = [*(a1 + 40) endpoint];
        v16 = 138543618;
        v17 = v13;
        v18 = 2112;
        v19 = v14;
        _os_log_impl(&dword_22AEAE000, v12, OS_LOG_TYPE_ERROR, "%{public}@Bridged accessory for endpoint %@ is unreachable", &v16, 0x16u);
      }

      objc_autoreleasePoolPop(v10);
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)fetchColorControlClusterForHapAccessory:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HAPAccessoryServer *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __82__HMMTRAccessoryServer_fetchColorControlClusterForHapAccessory_completionHandler___block_invoke;
  block[3] = &unk_2786F0EA8;
  v12 = v6;
  v13 = v7;
  block[4] = self;
  v9 = v6;
  v10 = v7;
  dispatch_async(v8, block);
}

void __82__HMMTRAccessoryServer_fetchColorControlClusterForHapAccessory_completionHandler___block_invoke(id *a1)
{
  v40 = *MEMORY[0x277D85DE8];
  v2 = [a1[4] matterDevice];
  if (v2)
  {
    v3 = v2;
    v4 = [a1[4] isReadyToReadFromMTRDevice];

    if (v4)
    {
      v5 = +[HMMTRDescriptorClusterManager sharedManager];
      v6 = [a1[4] matterDevice];
      v7 = [v5 endpointForClusterID:&unk_283EE8AC0 mtrDevice:v6];

      if (!v7)
      {
        v20 = objc_autoreleasePoolPush();
        v21 = a1[4];
        v22 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          v23 = HMFGetLogIdentifier();
          *buf = 138543362;
          v37 = v23;
          _os_log_impl(&dword_22AEAE000, v22, OS_LOG_TYPE_ERROR, "%{public}@No endpoint found to fetch color control cluster", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v20);
        v24 = a1[6];
        v14 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:8];
        v24[2](v24, 0, v14);
        goto LABEL_17;
      }

      if ([a1[5] isPrimary])
      {
        v8 = +[HMMTRDescriptorClusterManager sharedManager];
        v9 = [a1[4] matterDevice];
        v10 = [v8 endpointForClusterID:&unk_283EE8AC0 mtrDevice:v9];

        if (v10)
        {
LABEL_6:
          v11 = +[HMMTRDescriptorClusterManager sharedManager];
          v12 = [a1[4] matterDevice];
          v13 = [a1[4] clientQueue];
          v33[0] = MEMORY[0x277D85DD0];
          v33[1] = 3221225472;
          v33[2] = __82__HMMTRAccessoryServer_fetchColorControlClusterForHapAccessory_completionHandler___block_invoke_927;
          v33[3] = &unk_2786F0C38;
          v33[4] = a1[4];
          v14 = v10;
          v34 = v14;
          v35 = a1[6];
          [v11 isEndpointPresentForClusterID:&unk_283EE8AC0 endpoint:v14 mtrDevice:v12 callbackQueue:v13 completionHandler:v33];

LABEL_17:
          goto LABEL_18;
        }
      }

      else
      {
        v10 = [a1[4] endPointForHapAccessory:a1[5]];
        if (v10)
        {
          goto LABEL_6;
        }
      }

      v25 = objc_autoreleasePoolPush();
      v26 = a1[4];
      v27 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v28 = HMFGetLogIdentifier();
        v29 = a1[5];
        *buf = 138543618;
        v37 = v28;
        v38 = 2112;
        v39 = v29;
        _os_log_impl(&dword_22AEAE000, v27, OS_LOG_TYPE_ERROR, "%{public}@Nil endpoint to fetch color control cluster for hapAccessory: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v25);
      v30 = a1[6];
      v31 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CD5120] code:4 userInfo:0];
      v30[2](v30, 0, v31);

      v14 = 0;
      goto LABEL_17;
    }
  }

  v15 = objc_autoreleasePoolPush();
  v16 = a1[4];
  v17 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    v18 = HMFGetLogIdentifier();
    *buf = 138543362;
    v37 = v18;
    _os_log_impl(&dword_22AEAE000, v17, OS_LOG_TYPE_ERROR, "%{public}@No Matter device available to read specification version", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v15);
  v19 = a1[6];
  v7 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:8];
  v19[2](v19, 0, v7);
LABEL_18:

  v32 = *MEMORY[0x277D85DE8];
}

void __82__HMMTRAccessoryServer_fetchColorControlClusterForHapAccessory_completionHandler___block_invoke_927(uint64_t a1, int a2, void *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = objc_autoreleasePoolPush();
  v7 = *(a1 + 32);
  v8 = HMFGetOSLogHandle();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG);
  if (a2)
  {
    if (v9)
    {
      v10 = HMFGetLogIdentifier();
      v11 = *(a1 + 40);
      v22 = 138543618;
      v23 = v10;
      v24 = 2112;
      v25 = v11;
      _os_log_impl(&dword_22AEAE000, v8, OS_LOG_TYPE_DEBUG, "%{public}@Found color control cluster at endpoint: %@", &v22, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    v12 = [HMMTRSyncClusterColorControl alloc];
    v13 = [*(a1 + 32) matterDevice];
    v14 = [*(a1 + 40) unsignedShortValue];
    v15 = [*(a1 + 32) clientQueue];
    v16 = [(MTRClusterColorControl *)v12 initWithDevice:v13 endpoint:v14 queue:v15];

    v17 = *(*(a1 + 48) + 16);
  }

  else
  {
    if (v9)
    {
      v18 = HMFGetLogIdentifier();
      v19 = *(a1 + 40);
      v22 = 138543618;
      v23 = v18;
      v24 = 2112;
      v25 = v19;
      _os_log_impl(&dword_22AEAE000, v8, OS_LOG_TYPE_DEBUG, "%{public}@Did not find color control cluster at endpoint: %@ ", &v22, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    v20 = *(a1 + 48);
    v16 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CD5120] code:6 userInfo:0];
    v17 = *(v20 + 16);
  }

  v17();

  v21 = *MEMORY[0x277D85DE8];
}

- (BOOL)doesMatchDiscriminator:(id)a3
{
  v4 = a3;
  v5 = [(HMMTRAccessoryServer *)self discriminatorIsOriginatedFromShort];
  v6 = [(HMMTRAccessoryServer *)self discriminator];
  v7 = v6;
  if (v5)
  {
    v8 = [v6 unsignedShortValue];

    v9 = [v4 unsignedShortValue];
    return (v9 ^ v8) < 0x100;
  }

  else
  {
    v11 = [v6 isEqual:v4];

    return v11;
  }
}

- (id)createDoorLockClusterObjectWithFlow:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = [v4 UUID];
    *buf = 138543618;
    *&buf[4] = v8;
    v24 = 2112;
    v25 = v9;
    _os_log_impl(&dword_22AEAE000, v7, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Creating door lock cluster object", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  *buf = 0;
  v10 = [MEMORY[0x277D0F7C0] futureWithPromise:buf];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __60__HMMTRAccessoryServer_createDoorLockClusterObjectWithFlow___block_invoke;
  v19[3] = &unk_2786EF378;
  v19[4] = v6;
  v20 = v4;
  v21 = *buf;
  v11 = v10;
  v22 = v11;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __60__HMMTRAccessoryServer_createDoorLockClusterObjectWithFlow___block_invoke_926;
  v17[3] = &unk_2786EF290;
  v18 = v21;
  v12 = v4;
  [(HMMTRAccessoryServer *)v6 queueAccessoryOperation:v19 highPriority:1 completion:v17];
  v13 = v18;
  v14 = v11;

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

void __60__HMMTRAccessoryServer_createDoorLockClusterObjectWithFlow___block_invoke(uint64_t a1)
{
  v67 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = [*(a1 + 40) UUID];
    *buf = 138543618;
    v60 = v5;
    v61 = 2112;
    v62 = v6;
    _os_log_impl(&dword_22AEAE000, v4, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Getting door lock cluster object", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v7 = [*(a1 + 32) doorLockCluster];

  if (v7)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = *(a1 + 32);
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v12 = [*(a1 + 40) UUID];
      *buf = 138543618;
      v60 = v11;
      v61 = 2112;
      v62 = v12;
      _os_log_impl(&dword_22AEAE000, v10, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Found existing door lock cluster object", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    v13 = *(a1 + 48);
    v14 = [*(a1 + 32) doorLockCluster];
    [v13 fulfillWithValue:v14];
  }

  else
  {
    v15 = [*(a1 + 32) doorLockClusterFuture];

    if (v15)
    {
      v16 = objc_autoreleasePoolPush();
      v17 = *(a1 + 32);
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v19 = HMFGetLogIdentifier();
        v20 = [*(a1 + 40) UUID];
        *buf = 138543618;
        v60 = v19;
        v61 = 2112;
        v62 = v20;
        _os_log_impl(&dword_22AEAE000, v18, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Creation is already in progress", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v16);
      v21 = objc_alloc(MEMORY[0x277D0F7A8]);
      v22 = [*(a1 + 32) clientQueue];
      v14 = [v21 initWithQueue:v22];

      v23 = [*(a1 + 32) doorLockClusterFuture];
      v56[0] = MEMORY[0x277D85DD0];
      v56[1] = 3221225472;
      v56[2] = __60__HMMTRAccessoryServer_createDoorLockClusterObjectWithFlow___block_invoke_918;
      v56[3] = &unk_2786F02D8;
      v24 = *(a1 + 40);
      v56[4] = *(a1 + 32);
      v57 = v24;
      v58 = *(a1 + 48);
      v53[0] = MEMORY[0x277D85DD0];
      v53[1] = 3221225472;
      v53[2] = __60__HMMTRAccessoryServer_createDoorLockClusterObjectWithFlow___block_invoke_920;
      v53[3] = &unk_2786F0300;
      v25 = *(a1 + 40);
      v53[4] = *(a1 + 32);
      v54 = v25;
      v55 = *(a1 + 48);
      v26 = [v23 inContext:v14 then:v56 orRecover:v53];
    }

    else
    {
      [*(a1 + 32) setDoorLockClusterFuture:*(a1 + 56)];
      v14 = [*(a1 + 32) deviceController];
      if (v14)
      {
        v27 = [*(a1 + 32) matterDevice];
        if (!v27)
        {
          v28 = objc_autoreleasePoolPush();
          v29 = *(a1 + 32);
          v30 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            v31 = HMFGetLogIdentifier();
            v32 = [*(a1 + 40) UUID];
            *buf = 138543618;
            v60 = v31;
            v61 = 2112;
            v62 = v32;
            _os_log_impl(&dword_22AEAE000, v30, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] No matter device available", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v28);
          v33 = *(a1 + 48);
          v34 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CD5120] code:6 userInfo:0];
          [v33 rejectWithError:v34];
        }

        v35 = objc_autoreleasePoolPush();
        v36 = *(a1 + 32);
        v37 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
        {
          v38 = HMFGetLogIdentifier();
          v39 = [*(a1 + 40) UUID];
          *buf = 138544130;
          v60 = v38;
          v61 = 2112;
          v62 = v39;
          v63 = 2112;
          v64 = &unk_283EE8CB8;
          v65 = 2112;
          v66 = v27;
          _os_log_impl(&dword_22AEAE000, v37, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Looking up endpoint for clusterID: %@, device: %@, ", buf, 0x2Au);
        }

        objc_autoreleasePoolPop(v35);
        v40 = +[HMMTRDescriptorClusterManager sharedManager];
        v41 = [*(a1 + 32) clientQueue];
        v50[0] = MEMORY[0x277D85DD0];
        v50[1] = 3221225472;
        v50[2] = __60__HMMTRAccessoryServer_createDoorLockClusterObjectWithFlow___block_invoke_924;
        v50[3] = &unk_2786F0328;
        v42 = *(a1 + 40);
        v50[4] = *(a1 + 32);
        v51 = v42;
        v52 = *(a1 + 48);
        [v40 endpointForClusterID:&unk_283EE8CB8 mtrDevice:v27 callbackQueue:v41 completionHandler:v50];
      }

      else
      {
        v43 = objc_autoreleasePoolPush();
        v44 = *(a1 + 32);
        v45 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
        {
          v46 = HMFGetLogIdentifier();
          v47 = [*(a1 + 40) UUID];
          *buf = 138543618;
          v60 = v46;
          v61 = 2112;
          v62 = v47;
          _os_log_impl(&dword_22AEAE000, v45, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] No Matter device controller available", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v43);
        v48 = *(a1 + 48);
        v27 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CD5120] code:6 userInfo:0];
        [v48 rejectWithError:v27];
      }
    }
  }

  v49 = *MEMORY[0x277D85DE8];
}

uint64_t __60__HMMTRAccessoryServer_createDoorLockClusterObjectWithFlow___block_invoke_926(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return [*(result + 32) rejectWithError:a2];
  }

  return result;
}

uint64_t __60__HMMTRAccessoryServer_createDoorLockClusterObjectWithFlow___block_invoke_918(id *a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = a1[4];
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v8 = [a1[5] UUID];
    v11 = 138543874;
    v12 = v7;
    v13 = 2112;
    v14 = v8;
    v15 = 2112;
    v16 = v3;
    _os_log_impl(&dword_22AEAE000, v6, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Returning doorLockCluster: %@", &v11, 0x20u);
  }

  objc_autoreleasePoolPop(v4);
  [a1[6] fulfillWithValue:v3];

  v9 = *MEMORY[0x277D85DE8];
  return 1;
}

uint64_t __60__HMMTRAccessoryServer_createDoorLockClusterObjectWithFlow___block_invoke_920(id *a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = a1[4];
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = HMFGetLogIdentifier();
    v8 = [a1[5] UUID];
    v9 = a1[4];
    v12 = 138543874;
    v13 = v7;
    v14 = 2112;
    v15 = v8;
    v16 = 2048;
    v17 = v9;
    _os_log_impl(&dword_22AEAE000, v6, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to create door lock cluster object. Removing door lock cluster future from accessory server: %p", &v12, 0x20u);
  }

  objc_autoreleasePoolPop(v4);
  [a1[4] setDoorLockClusterFuture:0];
  [a1[6] rejectWithError:v3];

  v10 = *MEMORY[0x277D85DE8];
  return 1;
}

void __60__HMMTRAccessoryServer_createDoorLockClusterObjectWithFlow___block_invoke_924(id *a1, void *a2, void *a3)
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [a1[4] clientQueue];
  dispatch_assert_queue_V2(v7);

  if (v5)
  {
    v8 = [HMMTRSyncClusterDoorLock alloc];
    v9 = [a1[4] matterDevice];
    v10 = [v5 unsignedShortValue];
    v11 = [a1[4] clientQueue];
    v12 = [(HMMTRSyncClusterDoorLock *)v8 initWithDevice:v9 endpoint:v10 queue:v11 accessoryServer:a1[4]];

    [a1[4] setDoorLockCluster:v12];
    v13 = objc_autoreleasePoolPush();
    v14 = a1[4];
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      v17 = [a1[5] UUID];
      v25 = 138543874;
      v26 = v16;
      v27 = 2112;
      v28 = v17;
      v29 = 2112;
      v30 = v12;
      _os_log_impl(&dword_22AEAE000, v15, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Created door lock cluster object: %@", &v25, 0x20u);
    }

    objc_autoreleasePoolPop(v13);
    [a1[6] fulfillWithValue:v12];
  }

  else
  {
    v18 = objc_autoreleasePoolPush();
    v19 = a1[4];
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      v22 = [a1[5] UUID];
      v25 = 138543874;
      v26 = v21;
      v27 = 2112;
      v28 = v22;
      v29 = 2112;
      v30 = v6;
      _os_log_impl(&dword_22AEAE000, v20, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Did not find endpoint for door lock with error: %@", &v25, 0x20u);
    }

    objc_autoreleasePoolPop(v18);
    if (v6)
    {
      v23 = v6;
    }

    else
    {
      v23 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:2];
    }

    v12 = v23;
    [a1[6] rejectWithError:v23];
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (void)handleFirmwareUpdateStatusChange:(int64_t)a3
{
  v6 = [(HMMTRAccessoryServer *)self browser];
  v5 = [v6 threadSoftwareUpdateController];
  [v5 handleFirmwareUpdateStatusChangeForAccessoryServer:self state:a3];
}

- (id)accessoryProductID
{
  v2 = [(HMMTRAccessoryServer *)self productID];
  v3 = [v2 copy];

  return v3;
}

- (id)accessoryVendorID
{
  v2 = [(HMMTRAccessoryServer *)self vendorID];
  v3 = [v2 copy];

  return v3;
}

- (void)announceOtaProvider:(id)a3 providerEndpoint:(id)a4 immediateAnnouncement:(BOOL)a5 delayCounter:(int64_t)a6 completionHandler:(id)a7
{
  v9 = a5;
  v60 = *MEMORY[0x277D85DE8];
  v44 = a3;
  v12 = a4;
  v13 = a7;
  v14 = objc_autoreleasePoolPush();
  v15 = self;
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = HMFGetLogIdentifier();
    v18 = HMFBooleanToString();
    *buf = 138544130;
    v53 = v17;
    v54 = 2112;
    v55 = v15;
    v56 = 2112;
    v57 = v18;
    v58 = 2048;
    v59 = a6;
    _os_log_impl(&dword_22AEAE000, v16, OS_LOG_TYPE_INFO, "%{public}@announceOtaProvider for %@, immediateAnnouncement: %@, delayCounter: %lu", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v14);
  v19 = [HMMTRDeviceTopology alloc];
  v20 = [(HMMTRAccessoryServer *)v15 nodeID];
  v21 = [(HMMTRDeviceTopology *)v19 initWithNodeId:v20 server:v15];

  v22 = [(HMMTRDeviceTopology *)v21 getEnabledOTARequestorEndpoint];
  if (v22)
  {

LABEL_9:
    v30 = MEMORY[0x277CD5310];
    v31 = [(HMMTRAccessoryServer *)v15 nodeID];
    v32 = [v31 unsignedLongLongValue];
    v33 = [(HMMTRAccessoryServer *)v15 deviceController];
    v29 = [v30 deviceWithNodeID:v32 deviceController:v33];

    v34 = objc_alloc(MEMORY[0x277CD5288]);
    v35 = [(HAPAccessoryServer *)v15 clientQueue];
    v36 = [v34 initWithDevice:v29 endpoint:0 queue:v35];

    v37 = objc_alloc_init(MEMORY[0x277CD5480]);
    [v37 setProviderNodeId:v44];
    [v37 setEndpoint:v12];
    [v37 setVendorId:&unk_283EE8C88];
    [v37 setAnnouncementReason:&unk_283EE8C28];
    if (v36)
    {
      if (v9)
      {
        v50[0] = MEMORY[0x277D85DD0];
        v50[1] = 3221225472;
        v50[2] = __114__HMMTRAccessoryServer_announceOtaProvider_providerEndpoint_immediateAnnouncement_delayCounter_completionHandler___block_invoke;
        v50[3] = &unk_2786EF8A0;
        v50[4] = v15;
        v51 = v13;
        [v36 announceOtaProviderWithParams:v37 expectedValues:0 expectedValueInterval:0 completionHandler:v50];
      }

      v45[0] = MEMORY[0x277D85DD0];
      v45[1] = 3221225472;
      v45[2] = __114__HMMTRAccessoryServer_announceOtaProvider_providerEndpoint_immediateAnnouncement_delayCounter_completionHandler___block_invoke_913;
      v45[3] = &unk_2786F02B0;
      v45[4] = v15;
      v46 = v36;
      v49 = a6;
      v47 = v37;
      v48 = v13;
      [(HMMTRAccessoryServer *)v15 updateDefaultOtaProvider:v44 providerEndpoint:v12 completionHandler:v45];
    }

    else
    {
      v38 = objc_autoreleasePoolPush();
      v39 = v15;
      v40 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        v41 = HMFGetLogIdentifier();
        *buf = 138543362;
        v53 = v41;
        _os_log_impl(&dword_22AEAE000, v40, OS_LOG_TYPE_ERROR, "%{public}@No Matter device controller available to announce OTA provider", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v38);
      v42 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CD5120] code:6 userInfo:0];
      (*(v13 + 2))(v13, v42);
    }

    goto LABEL_17;
  }

  v23 = [(HMMTRDeviceTopology *)v21 getVersionForKey:@"EnumeratedProtocolMap"];
  v24 = [v23 intValue];

  if (v24 < 101)
  {
    goto LABEL_9;
  }

  v25 = objc_autoreleasePoolPush();
  v26 = v15;
  v27 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
  {
    v28 = HMFGetLogIdentifier();
    *buf = 138543362;
    v53 = v28;
    _os_log_impl(&dword_22AEAE000, v27, OS_LOG_TYPE_INFO, "%{public}@Ignoring OTA announcement, OTA requestor cluster not supported on this accessory", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v25);
  v29 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D0F1A0] code:5 userInfo:0];
  (*(v13 + 2))(v13, v29);
LABEL_17:

  v43 = *MEMORY[0x277D85DE8];
}

void __114__HMMTRAccessoryServer_announceOtaProvider_providerEndpoint_immediateAnnouncement_delayCounter_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
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
      v9 = *(a1 + 32);
      v18 = 138543874;
      v19 = v8;
      v20 = 2112;
      v21 = v9;
      v22 = 2112;
      v23 = v3;
      v10 = "%{public}@Failed to announce ota provider to %@ with error %@";
      v11 = v7;
      v12 = OS_LOG_TYPE_ERROR;
      v13 = 32;
LABEL_6:
      _os_log_impl(&dword_22AEAE000, v11, v12, v10, &v18, v13);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v14 = *(a1 + 32);
    v18 = 138543618;
    v19 = v8;
    v20 = 2112;
    v21 = v14;
    v10 = "%{public}@Successfully announced ota provider to %@";
    v11 = v7;
    v12 = OS_LOG_TYPE_INFO;
    v13 = 22;
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v4);
  (*(*(a1 + 40) + 16))(*(a1 + 40), v3, v15, v16);

  v17 = *MEMORY[0x277D85DE8];
}

void __114__HMMTRAccessoryServer_announceOtaProvider_providerEndpoint_immediateAnnouncement_delayCounter_completionHandler___block_invoke_913(uint64_t a1, void *a2)
{
  v47 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v8 = *(a1 + 32);
    *buf = 138543874;
    v42 = v7;
    v43 = 2112;
    v44 = v8;
    v45 = 2112;
    v46 = v3;
    _os_log_impl(&dword_22AEAE000, v6, OS_LOG_TYPE_INFO, "%{public}@Update default OTA provider completed for server:%@ with error: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v4);
  v9 = objc_alloc_init(MEMORY[0x277CD54D8]);
  v10 = [*(a1 + 40) readAttributeUpdateStateWithParams:v9];
  v11 = 0.0;
  if (!v10)
  {
    v12 = objc_autoreleasePoolPush();
    v13 = *(a1 + 32);
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543362;
      v42 = v15;
      _os_log_impl(&dword_22AEAE000, v14, OS_LOG_TYPE_ERROR, "%{public}@An error occurred while trying to read the OTA requestor update state", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v12);
    v11 = 120.0;
  }

  v16 = [v10 objectForKeyedSubscript:*MEMORY[0x277CD51A0]];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  v18 = COERCE_DOUBLE(v17);

  v19 = objc_autoreleasePoolPush();
  v20 = *(a1 + 32);
  v21 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    v22 = HMFGetLogIdentifier();
    *buf = 138543618;
    v42 = v22;
    v43 = 2112;
    v44 = v18;
    _os_log_impl(&dword_22AEAE000, v21, OS_LOG_TYPE_INFO, "%{public}@OTA Requestor update state:%@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v19);
  v23 = [*&v18 isEqualToNumber:&unk_283EE8CA0];
  v24 = 120.0;
  v25 = *(a1 + 64);
  if (v23)
  {
    v24 = v11;
  }

  if (v25)
  {
    v26 = v25 * 300.0;
  }

  else
  {
    v26 = v24;
  }

  v27 = objc_autoreleasePoolPush();
  v28 = *(a1 + 32);
  v29 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
  {
    v30 = HMFGetLogIdentifier();
    v31 = *(a1 + 32);
    *buf = 138543874;
    v42 = v30;
    v43 = 2048;
    v44 = v26;
    v45 = 2112;
    v46 = v31;
    _os_log_impl(&dword_22AEAE000, v29, OS_LOG_TYPE_INFO, "%{public}@Sending announcement after %f secs for %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v27);
  v32 = dispatch_time(0, (v26 * 1000000000.0));
  v33 = [*(a1 + 32) clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __114__HMMTRAccessoryServer_announceOtaProvider_providerEndpoint_immediateAnnouncement_delayCounter_completionHandler___block_invoke_916;
  block[3] = &unk_2786EF3C8;
  v38 = *(a1 + 40);
  v34 = *(a1 + 48);
  v35 = *(a1 + 32);
  v39 = v34;
  v40 = v35;
  dispatch_after(v32, v33, block);

  (*(*(a1 + 56) + 16))();
  v36 = *MEMORY[0x277D85DE8];
}

uint64_t __114__HMMTRAccessoryServer_announceOtaProvider_providerEndpoint_immediateAnnouncement_delayCounter_completionHandler___block_invoke_916(void *a1)
{
  v2 = a1[4];
  v1 = a1[5];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __114__HMMTRAccessoryServer_announceOtaProvider_providerEndpoint_immediateAnnouncement_delayCounter_completionHandler___block_invoke_2;
  v4[3] = &unk_2786EF290;
  v4[4] = a1[6];
  return [v2 announceOtaProviderWithParams:v1 expectedValues:0 expectedValueInterval:0 completionHandler:v4];
}

void __114__HMMTRAccessoryServer_announceOtaProvider_providerEndpoint_immediateAnnouncement_delayCounter_completionHandler___block_invoke_2(uint64_t a1, void *a2)
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
      v9 = *(a1 + 32);
      v16 = 138543874;
      v17 = v8;
      v18 = 2112;
      v19 = v9;
      v20 = 2112;
      v21 = v3;
      v10 = "%{public}@Failed to announce ota provider to %@ with error %@";
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
    v14 = *(a1 + 32);
    v16 = 138543618;
    v17 = v8;
    v18 = 2112;
    v19 = v14;
    v10 = "%{public}@Successfully announced ota provider to %@";
    v11 = v7;
    v12 = OS_LOG_TYPE_INFO;
    v13 = 22;
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v4);
  v15 = *MEMORY[0x277D85DE8];
}

- (void)updateDefaultOtaProvider:(id)a3 providerEndpoint:(id)a4 completionHandler:(id)a5
{
  v36 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([(HMMTRAccessoryServer *)self operationDisabled])
  {
    v11 = objc_autoreleasePoolPush();
    v12 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543362;
      v33 = v14;
      _os_log_impl(&dword_22AEAE000, v13, OS_LOG_TYPE_INFO, "%{public}@Accessory server operations disabled. Aborting updating default OTA provider.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v11);
    v15 = [(HAPAccessoryServer *)v12 clientQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __84__HMMTRAccessoryServer_updateDefaultOtaProvider_providerEndpoint_completionHandler___block_invoke;
    block[3] = &unk_2786EF878;
    v31 = v10;
    dispatch_async(v15, block);

    v16 = v31;
  }

  else
  {
    v17 = random();
    v18 = objc_autoreleasePoolPush();
    v19 = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = HMFGetLogIdentifier();
      *buf = 138543618;
      v33 = v21;
      v34 = 2048;
      v35 = v17;
      _os_log_impl(&dword_22AEAE000, v20, OS_LOG_TYPE_INFO, "%{public}@Characteristics Operation Queue: update default ota provider job(%lu) queued.", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v18);
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __84__HMMTRAccessoryServer_updateDefaultOtaProvider_providerEndpoint_completionHandler___block_invoke_901;
    v25[3] = &unk_2786F0288;
    v25[4] = v19;
    v29 = v17;
    v26 = v8;
    v28 = v10;
    v27 = v9;
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __84__HMMTRAccessoryServer_updateDefaultOtaProvider_providerEndpoint_completionHandler___block_invoke_909;
    v23[3] = &unk_2786F0BC0;
    v24 = v28;
    [(HMMTRAccessoryServer *)v19 queueAccessoryOperation:v25 highPriority:0 completion:v23];

    v16 = v26;
  }

  v22 = *MEMORY[0x277D85DE8];
}

void __84__HMMTRAccessoryServer_updateDefaultOtaProvider_providerEndpoint_completionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] hapErrorWithCode:1];
  (*(v1 + 16))(v1, v2);
}

void __84__HMMTRAccessoryServer_updateDefaultOtaProvider_providerEndpoint_completionHandler___block_invoke_901(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 64);
    *buf = 138543618;
    v21 = v5;
    v22 = 2048;
    v23 = v6;
    _os_log_impl(&dword_22AEAE000, v4, OS_LOG_TYPE_INFO, "%{public}@Characteristics Operation Queue: update default ota provider job(%lu) started.", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v7 = dispatch_group_create();
  dispatch_group_enter(v7);
  v8 = [*(a1 + 32) clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __84__HMMTRAccessoryServer_updateDefaultOtaProvider_providerEndpoint_completionHandler___block_invoke_902;
  block[3] = &unk_2786F0260;
  v9 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v16 = v9;
  v19 = *(a1 + 56);
  v17 = *(a1 + 48);
  v18 = v7;
  v10 = v7;
  dispatch_async(v8, block);

  v11 = [*(a1 + 32) clientQueue];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __84__HMMTRAccessoryServer_updateDefaultOtaProvider_providerEndpoint_completionHandler___block_invoke_908;
  v14[3] = &unk_2786EF620;
  v12 = *(a1 + 64);
  v14[4] = *(a1 + 32);
  v14[5] = v12;
  dispatch_group_notify(v10, v11, v14);

  v13 = *MEMORY[0x277D85DE8];
}

uint64_t __84__HMMTRAccessoryServer_updateDefaultOtaProvider_providerEndpoint_completionHandler___block_invoke_909(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

void __84__HMMTRAccessoryServer_updateDefaultOtaProvider_providerEndpoint_completionHandler___block_invoke_902(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 40);
    *buf = 138543618;
    v24 = v5;
    v25 = 2112;
    v26 = v6;
    _os_log_impl(&dword_22AEAE000, v4, OS_LOG_TYPE_INFO, "%{public}@Request to update default ota provider to %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __84__HMMTRAccessoryServer_updateDefaultOtaProvider_providerEndpoint_completionHandler___block_invoke_903;
  v21[3] = &unk_2786F0BC0;
  v22 = *(a1 + 64);
  v7 = MEMORY[0x2318887D0](v21);
  v8 = *(a1 + 32);
  v9 = [HMMTRDeviceTopology alloc];
  v10 = [*(a1 + 32) nodeID];
  v11 = [(HMMTRDeviceTopology *)v9 initWithNodeId:v10 server:*(a1 + 32)];
  v12 = [*(a1 + 32) matterDevice];
  v13 = [*(a1 + 32) clientQueue];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __84__HMMTRAccessoryServer_updateDefaultOtaProvider_providerEndpoint_completionHandler___block_invoke_2;
  v17[3] = &unk_2786F1010;
  v14 = *(a1 + 40);
  v17[4] = *(a1 + 32);
  v20 = v7;
  v18 = v14;
  v19 = *(a1 + 48);
  v15 = v7;
  [v8 _endpointForOTARequestorWithTopology:v11 mtrDevice:v12 callbackQueue:v13 completionHandler:v17];

  dispatch_group_leave(*(a1 + 56));
  v16 = *MEMORY[0x277D85DE8];
}

void __84__HMMTRAccessoryServer_updateDefaultOtaProvider_providerEndpoint_completionHandler___block_invoke_908(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 40);
    v8 = 138543618;
    v9 = v5;
    v10 = 2048;
    v11 = v6;
    _os_log_impl(&dword_22AEAE000, v4, OS_LOG_TYPE_INFO, "%{public}@Characteristics Operation Queue: update default ota provider job(%lu) complete.", &v8, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v7 = *MEMORY[0x277D85DE8];
}

void __84__HMMTRAccessoryServer_updateDefaultOtaProvider_providerEndpoint_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v65 = *MEMORY[0x277D85DE8];
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
      *buf = 138543618;
      v62 = v10;
      v63 = 2112;
      v64 = v6;
      _os_log_impl(&dword_22AEAE000, v9, OS_LOG_TYPE_ERROR, "%{public}@Failed to query endpoints for ota requestor cluster : %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    (*(*(a1 + 56) + 16))();
  }

  v11 = [*(a1 + 32) matterDevice];

  if (v11)
  {
    v12 = objc_alloc(MEMORY[0x277CD5288]);
    v13 = [*(a1 + 32) matterDevice];
    v14 = [*(a1 + 32) clientQueue];
    v40 = [v12 initWithDevice:v13 endpointID:v5 queue:v14];

    v15 = *MEMORY[0x277CD50D0];
    v59[0] = &unk_283EE89E8;
    v42 = v5;
    v16 = *MEMORY[0x277CD50D8];
    v58[0] = v15;
    v58[1] = v16;
    v41 = v6;
    v18 = *MEMORY[0x277CD5198];
    v19 = *MEMORY[0x277CD51A0];
    v56[0] = *MEMORY[0x277CD5188];
    v17 = v56[0];
    v56[1] = v19;
    v20 = *(a1 + 40);
    v57[0] = v18;
    v57[1] = v20;
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v57 forKeys:v56 count:2];
    v59[1] = v21;
    v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v59 forKeys:v58 count:2];
    v60[0] = v22;
    v54[1] = v16;
    v55[0] = &unk_283EE8C70;
    v52[0] = v17;
    v52[1] = v19;
    v23 = *(a1 + 48);
    v53[0] = v18;
    v53[1] = v23;
    v54[0] = v15;
    v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v53 forKeys:v52 count:2];
    v55[1] = v24;
    v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v55 forKeys:v54 count:2];
    v60[1] = v25;
    v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v60 count:2];

    v27 = *MEMORY[0x277CD50B0];
    v50[1] = v19;
    v51[0] = v27;
    v50[0] = v17;
    v47 = v16;
    v28 = *MEMORY[0x277CD5180];
    v45[0] = v17;
    v45[1] = v19;
    v6 = v41;
    v5 = v42;
    v29 = v40;
    v46[0] = v28;
    v46[1] = v26;
    v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v46 forKeys:v45 count:2];
    v48 = v30;
    v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v48 forKeys:&v47 count:1];
    v49 = v31;
    v32 = [MEMORY[0x277CBEA60] arrayWithObjects:&v49 count:1];
    v51[1] = v32;
    v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v51 forKeys:v50 count:2];

    [v40 writeAttributeDefaultOTAProvidersWithValue:v33 expectedValueInterval:&unk_283EE8BB0];
    (*(*(a1 + 56) + 16))();
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
      v62 = v37;
      _os_log_impl(&dword_22AEAE000, v36, OS_LOG_TYPE_ERROR, "%{public}@No Matter device available to update default OTA provider", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v34);
    v38 = [*(a1 + 32) clientQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __84__HMMTRAccessoryServer_updateDefaultOtaProvider_providerEndpoint_completionHandler___block_invoke_904;
    block[3] = &unk_2786EF878;
    v44 = *(a1 + 56);
    dispatch_async(v38, block);

    v29 = v44;
  }

  v39 = *MEMORY[0x277D85DE8];
}

void __84__HMMTRAccessoryServer_updateDefaultOtaProvider_providerEndpoint_completionHandler___block_invoke_904(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CD5120] code:6 userInfo:0];
  (*(v1 + 16))(v1, v2);
}

- (BOOL)accessoryWithSameDiscriminatorDiscovered
{
  v18 = *MEMORY[0x277D85DE8];
  if ([(HMMTRAccessoryServer *)self locallyDiscovered])
  {
    v3 = objc_autoreleasePoolPush();
    v4 = self;
    v5 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = HMFGetLogIdentifier();
      v16 = 138543362;
      v17 = v6;
      _os_log_impl(&dword_22AEAE000, v5, OS_LOG_TYPE_DEBUG, "%{public}@accessoryWithSameDiscriminatorDiscovered -> YES as server was locally discovered", &v16, 0xCu);
    }

    objc_autoreleasePoolPop(v3);
    v7 = 1;
  }

  else
  {
    v8 = [(HMMTRAccessoryServer *)self _pairingSetupPayload];
    if (v8)
    {
      v9 = [(HMMTRAccessoryServer *)self browser];
      v7 = [v9 locallyDiscoveredAccessoryServerMatchesDiscriminatorOfSetupPayload:v8];
    }

    else
    {
      v10 = objc_autoreleasePoolPush();
      v11 = self;
      v12 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        v13 = HMFGetLogIdentifier();
        v16 = 138543362;
        v17 = v13;
        _os_log_impl(&dword_22AEAE000, v12, OS_LOG_TYPE_DEBUG, "%{public}@accessoryWithSameDiscriminatorDiscovered -> NO as setupPayload is missing", &v16, 0xCu);
      }

      objc_autoreleasePoolPop(v10);
      v7 = 0;
    }
  }

  v14 = *MEMORY[0x277D85DE8];
  return v7;
}

- (BOOL)isLocallyDiscoveredAndMatchesDiscriminatorOfSetupPayload:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(HMMTRAccessoryServer *)self locallyDiscovered])
  {
    if ([v4 hasShortDiscriminator])
    {
      v5 = MEMORY[0x277CCABB0];
      v6 = [v4 discriminator];
      v7 = [v5 numberWithInt:{objc_msgSend(v6, "unsignedShortValue") << 8}];
    }

    else
    {
      v7 = [v4 discriminator];
    }

    if ([(HMMTRAccessoryServer *)self doesMatchDiscriminator:v7])
    {
      v9 = objc_autoreleasePoolPush();
      v10 = self;
      v11 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        v12 = HMFGetLogIdentifier();
        v27 = 138543618;
        v28 = v12;
        v29 = 2112;
        v30 = v7;
        _os_log_impl(&dword_22AEAE000, v11, OS_LOG_TYPE_DEBUG, "%{public}@isLocallyDiscoveredAndMatchesDiscriminatorOfSetupPayload matched discriminator %@ against server's own", &v27, 0x16u);
      }

      objc_autoreleasePoolPop(v9);
      v8 = 1;
    }

    else if ([v4 hasShortDiscriminator] && !-[HMMTRAccessoryServer discriminatorIsOriginatedFromShort](self, "discriminatorIsOriginatedFromShort"))
    {
      v18 = objc_autoreleasePoolPush();
      v19 = self;
      v20 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        v21 = HMFGetLogIdentifier();
        v22 = [(HMMTRAccessoryServer *)v19 discriminator];
        v27 = 138543874;
        v28 = v21;
        v29 = 2112;
        v30 = v7;
        v31 = 2112;
        v32 = v22;
        _os_log_impl(&dword_22AEAE000, v20, OS_LOG_TYPE_DEBUG, "%{public}@isLocallyDiscoveredAndMatchesDiscriminatorOfSetupPayload compares short discriminator %@ against its own %@", &v27, 0x20u);
      }

      objc_autoreleasePoolPop(v18);
      v23 = [(HMMTRAccessoryServer *)v19 discriminator];
      v24 = [v23 unsignedShortValue] & 0xF00;
      v8 = v24 == [v7 unsignedShortValue];
    }

    else
    {
      v13 = objc_autoreleasePoolPush();
      v14 = self;
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        v16 = HMFGetLogIdentifier();
        v17 = [(HMMTRAccessoryServer *)v14 discriminator];
        v27 = 138543874;
        v28 = v16;
        v29 = 2112;
        v30 = v7;
        v31 = 2112;
        v32 = v17;
        _os_log_impl(&dword_22AEAE000, v15, OS_LOG_TYPE_DEBUG, "%{public}@isLocallyDiscoveredAndMatchesDiscriminatorOfSetupPayload failed to match discriminator %@ against its own %@", &v27, 0x20u);
      }

      objc_autoreleasePoolPop(v13);
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  v25 = *MEMORY[0x277D85DE8];
  return v8;
}

- (void)_handleUnreachableStateWithError:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [(HMMTRAccessoryServer *)self setMtrDeviceConnected:0];
  if ([(HMMTRAccessoryServer *)self _shouldUpdateUnreachableState])
  {
    [(HMMTRAccessoryServer *)self didUpdateReachability:0];
    [(HMMTRAccessoryServer *)self _updateDelegateOfConnectionStatus:0 withError:v4];
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
      _os_log_impl(&dword_22AEAE000, v7, OS_LOG_TYPE_INFO, "%{public}@Ignored unreachable state for WED accessory", &v10, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
  }

  [(HMMTRAccessoryServer *)self markForResubscription];

  v9 = *MEMORY[0x277D85DE8];
}

- (BOOL)_shouldUpdateUnreachableState
{
  if (isFeatureMatteriPhoneOnlyPairingControlEnabled())
  {
    v3 = [(HMMTRAccessoryServer *)self browser];
    if (![v3 isCurrentDevicePrimaryResident])
    {
      v5 = [(HMMTRAccessoryServer *)self isWEDDevice];

      v4 = !v5;
      return v4 & 1;
    }
  }

  v4 = 1;
  return v4 & 1;
}

- (void)generateAccessoryConfigurationForReason:(id)a3 completionHandler:(id)a4
{
  v39 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v12 = [(HAPAccessoryServer *)v9 name];
    *buf = 138543874;
    v34 = v11;
    v35 = 2112;
    v36 = v12;
    v37 = 2112;
    v38 = v6;
    _os_log_impl(&dword_22AEAE000, v10, OS_LOG_TYPE_INFO, "%{public}@Accessory Configuration: Generate Accessory Configuration for '%@' by reason : %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  if ([(HMMTRAccessoryServer *)v9 operationDisabled])
  {
    v13 = objc_autoreleasePoolPush();
    v14 = v9;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      *buf = 138543362;
      v34 = v16;
      _os_log_impl(&dword_22AEAE000, v15, OS_LOG_TYPE_INFO, "%{public}@Accessory server operations disabled. Aborting generating accessory configuration information.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v13);
    v17 = [(HAPAccessoryServer *)v14 clientQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __82__HMMTRAccessoryServer_generateAccessoryConfigurationForReason_completionHandler___block_invoke;
    block[3] = &unk_2786EF878;
    v32 = v7;
    dispatch_async(v17, block);

    v18 = v32;
  }

  else
  {
    v19 = random();
    v20 = objc_autoreleasePoolPush();
    v21 = v9;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = HMFGetLogIdentifier();
      *buf = 138543618;
      v34 = v23;
      v35 = 2048;
      v36 = v19;
      _os_log_impl(&dword_22AEAE000, v22, OS_LOG_TYPE_INFO, "%{public}@Characteristics Operation Queue: generate accessory configuration information job(%lu) queued.", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v20);
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __82__HMMTRAccessoryServer_generateAccessoryConfigurationForReason_completionHandler___block_invoke_895;
    v27[3] = &unk_2786EF850;
    v27[4] = v21;
    v30 = v19;
    v29 = v7;
    v28 = v6;
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __82__HMMTRAccessoryServer_generateAccessoryConfigurationForReason_completionHandler___block_invoke_900;
    v25[3] = &unk_2786F0BC0;
    v26 = v29;
    [(HMMTRAccessoryServer *)v21 queueAccessoryOperation:v27 highPriority:0 completion:v25];

    v18 = v29;
  }

  v24 = *MEMORY[0x277D85DE8];
}

void __82__HMMTRAccessoryServer_generateAccessoryConfigurationForReason_completionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] hapErrorWithCode:1];
  (*(v1 + 16))(v1, 0, v2);
}

void __82__HMMTRAccessoryServer_generateAccessoryConfigurationForReason_completionHandler___block_invoke_895(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 56);
    *buf = 138543618;
    v23 = v5;
    v24 = 2048;
    v25 = v6;
    _os_log_impl(&dword_22AEAE000, v4, OS_LOG_TYPE_INFO, "%{public}@Characteristics Operation Queue: generate accessory configuration information job(%lu) started.", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v7 = dispatch_group_create();
  dispatch_group_enter(v7);
  v8 = [*(a1 + 32) clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __82__HMMTRAccessoryServer_generateAccessoryConfigurationForReason_completionHandler___block_invoke_896;
  block[3] = &unk_2786F0288;
  v9 = *(a1 + 48);
  v10 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v18 = v7;
  v11 = *(a1 + 56);
  v20 = v9;
  v21 = v11;
  v19 = v10;
  v12 = v7;
  dispatch_async(v8, block);

  v13 = [*(a1 + 32) clientQueue];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __82__HMMTRAccessoryServer_generateAccessoryConfigurationForReason_completionHandler___block_invoke_2_899;
  v16[3] = &unk_2786EF620;
  v14 = *(a1 + 56);
  v16[4] = *(a1 + 32);
  v16[5] = v14;
  dispatch_group_notify(v12, v13, v16);

  v15 = *MEMORY[0x277D85DE8];
}

uint64_t __82__HMMTRAccessoryServer_generateAccessoryConfigurationForReason_completionHandler___block_invoke_900(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

void __82__HMMTRAccessoryServer_generateAccessoryConfigurationForReason_completionHandler___block_invoke_896(uint64_t a1)
{
  v34 = *MEMORY[0x277D85DE8];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __82__HMMTRAccessoryServer_generateAccessoryConfigurationForReason_completionHandler___block_invoke_2;
  v28[3] = &unk_2786F0210;
  v29 = *(a1 + 56);
  v2 = MEMORY[0x2318887D0](v28);
  v3 = [*(a1 + 32) deviceController];
  v4 = v3;
  if (v3 && ([v3 isRunning] & 1) != 0)
  {
    v5 = MEMORY[0x277CD5310];
    v6 = [*(a1 + 32) nodeID];
    v7 = [v6 unsignedLongLongValue];
    v8 = [*(a1 + 32) deviceController];
    v9 = [v5 deviceWithNodeID:v7 deviceController:v8];

    v10 = +[HMMTRDescriptorClusterManager sharedManager];
    v11 = [*(a1 + 32) nodeID];
    v12 = *(a1 + 32);
    v13 = *(a1 + 48);
    v14 = [v12 clientQueue];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __82__HMMTRAccessoryServer_generateAccessoryConfigurationForReason_completionHandler___block_invoke_897;
    v26[3] = &unk_2786F0238;
    v27 = v2;
    [v10 fetchAccessoryConfigurationForDevice:v9 nodeId:v11 server:v12 reasonString:v13 callbackQueue:v14 completionHandler:v26];

    dispatch_group_leave(*(a1 + 40));
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    v16 = *(a1 + 32);
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      *buf = 138543362;
      v31 = v18;
      _os_log_impl(&dword_22AEAE000, v17, OS_LOG_TYPE_ERROR, "%{public}@No Matter device controller available to generate accessory configuration information", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v15);
    v19 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CD5120] code:6 userInfo:0];
    (v2)[2](v2, 0, v19);

    dispatch_group_leave(*(a1 + 40));
    v20 = objc_autoreleasePoolPush();
    v21 = *(a1 + 32);
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = HMFGetLogIdentifier();
      v24 = *(a1 + 64);
      *buf = 138543618;
      v31 = v23;
      v32 = 2048;
      v33 = v24;
      _os_log_impl(&dword_22AEAE000, v22, OS_LOG_TYPE_INFO, "%{public}@Characteristics Operation Queue: generate accessory configuration information job(%lu) complete.", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v20);
  }

  v25 = *MEMORY[0x277D85DE8];
}

void __82__HMMTRAccessoryServer_generateAccessoryConfigurationForReason_completionHandler___block_invoke_2_899(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 40);
    v8 = 138543618;
    v9 = v5;
    v10 = 2048;
    v11 = v6;
    _os_log_impl(&dword_22AEAE000, v4, OS_LOG_TYPE_INFO, "%{public}@Characteristics Operation Queue: generate accessory configuration information job(%lu) complete.", &v8, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v7 = *MEMORY[0x277D85DE8];
}

- (id)protocolMappingStateForCharacteristic:(id)a3
{
  v4 = a3;
  v5 = [(HMMTRAccessoryServer *)self characteristicProtocolMappingStates];
  v6 = [v4 instanceID];
  v7 = [v5 objectForKeyedSubscript:v6];

  if (!v7)
  {
    v7 = objc_alloc_init(HMMTRProtocolMappingState);
    v8 = [(HMMTRAccessoryServer *)self characteristicProtocolMappingStates];
    v9 = [v4 instanceID];
    [v8 setObject:v7 forKeyedSubscript:v9];
  }

  return v7;
}

- (void)_onThreadScanResults:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v21 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v3, "count")}];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = v3;
  v22 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v22)
  {
    v20 = *v25;
    do
    {
      v4 = 0;
      do
      {
        if (*v25 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v24 + 1) + 8 * v4);
        v6 = objc_alloc(MEMORY[0x277CD55D8]);
        v7 = [v5 networkName];
        v8 = [v5 panId];
        v9 = [v5 extendedPanId];
        v10 = [v5 channel];
        v11 = [v5 extendedAddress];
        v12 = [v5 rssi];
        v13 = [v5 version];
        v14 = [v5 lqi];
        v15 = [v6 initWithNetworkName:v7 panID:v8 extendedPANID:v9 channel:v10 extendedAddress:v11 rssi:v12 version:v13 lqi:v14];
        [v21 addObject:v15];

        ++v4;
      }

      while (v22 != v4);
      v22 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v22);
  }

  v16 = [(HMMTRAccessoryServer *)self stageThreadScanResultsHandler];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __45__HMMTRAccessoryServer__onThreadScanResults___block_invoke;
  v23[3] = &unk_2786F01E8;
  v23[4] = self;
  (v16)[2](v16, v21, v23);

  v17 = *MEMORY[0x277D85DE8];
}

void __45__HMMTRAccessoryServer__onThreadScanResults___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) clientQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __45__HMMTRAccessoryServer__onThreadScanResults___block_invoke_2;
  v7[3] = &unk_2786EF328;
  v5 = *(a1 + 32);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

void __45__HMMTRAccessoryServer__onThreadScanResults___block_invoke_2(uint64_t a1)
{
  v53 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v2 = dispatch_group_create();
    *&v48 = 0;
    *(&v48 + 1) = &v48;
    v49 = 0x3032000000;
    v50 = __Block_byref_object_copy__10189;
    v51 = __Block_byref_object_dispose__10190;
    v52 = 0;
    v42[0] = 0;
    v42[1] = v42;
    v42[2] = 0x3032000000;
    v42[3] = __Block_byref_object_copy__10189;
    v42[4] = __Block_byref_object_dispose__10190;
    v43 = 0;
    dispatch_group_enter(v2);
    v3 = *(a1 + 40);
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = __45__HMMTRAccessoryServer__onThreadScanResults___block_invoke_887;
    v39[3] = &unk_2786F0D68;
    v39[4] = v3;
    v41 = &v48;
    v4 = v2;
    v40 = v4;
    [v3 _fetchAdditionalThreadNetworkInformationWithCompletion:v39];
    v5 = objc_alloc_init(MEMORY[0x277CD5300]);
    v6 = [*(a1 + 40) browser];
    v7 = [v6 attestationStatus];
    [v7 populateDelegate:v5];

    if ([*(a1 + 40) _populateCommissioningParameterCountryCode:v5])
    {
      v8 = [objc_alloc(MEMORY[0x277CE1968]) initWithKeychainAccessGroup:@"com.apple.thread.network"];
      v9 = [*(a1 + 32) extendedPANID];
      v10 = [v9 unsignedLongLongValue];

      v38 = bswap64(v10);
      v24 = [MEMORY[0x277CBEA90] dataWithBytes:&v38 length:8];
      objc_initWeak(&location, *(a1 + 40));
      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 3221225472;
      v31[2] = __45__HMMTRAccessoryServer__onThreadScanResults___block_invoke_889;
      v31[3] = &unk_2786F0198;
      objc_copyWeak(&v36, &location);
      v11 = v4;
      v32 = v11;
      v34 = &v48;
      v35 = v42;
      v12 = v8;
      v33 = v12;
      v13 = MEMORY[0x2318887D0](v31);
      v14 = objc_autoreleasePoolPush();
      v15 = *(a1 + 40);
      v16 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v17 = HMFGetLogIdentifier();
        *buf = 138543618;
        v45 = v17;
        v46 = 2112;
        v47 = v24;
        _os_log_impl(&dword_22AEAE000, v16, OS_LOG_TYPE_INFO, "%{public}@Retrieving Thread credentials for extended PANID: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v14);
      dispatch_group_enter(v11);
      [v12 retrieveActiveDataSetRecordInternallyForExtendedPANID:v24 completion:v13];
      v18 = [*(a1 + 40) clientQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __45__HMMTRAccessoryServer__onThreadScanResults___block_invoke_892;
      block[3] = &unk_2786F01C0;
      objc_copyWeak(&v30, &location);
      v28 = &v48;
      v26 = v5;
      v29 = v42;
      v27 = *(a1 + 32);
      dispatch_group_notify(v11, v18, block);

      objc_destroyWeak(&v30);
      objc_destroyWeak(&v36);
      objc_destroyWeak(&location);
    }

    _Block_object_dispose(v42, 8);
    _Block_object_dispose(&v48, 8);
  }

  else
  {
    v19 = objc_autoreleasePoolPush();
    v20 = *(a1 + 40);
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = HMFGetLogIdentifier();
      LODWORD(v48) = 138543362;
      *(&v48 + 4) = v22;
      _os_log_impl(&dword_22AEAE000, v21, OS_LOG_TYPE_INFO, "%{public}@No network selection from Thread scan result. Falling back to default network credentials collection.", &v48, 0xCu);
    }

    objc_autoreleasePoolPop(v19);
    [*(a1 + 40) _collectNetworkCredentials:0];
  }

  v23 = *MEMORY[0x277D85DE8];
}

void __45__HMMTRAccessoryServer__onThreadScanResults___block_invoke_887(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __45__HMMTRAccessoryServer__onThreadScanResults___block_invoke_2_888;
  v8[3] = &unk_2786F0148;
  v9 = v3;
  v10 = v4;
  v7 = *(a1 + 40);
  v5 = v7;
  v11 = v7;
  v6 = v3;
  [v4 dispatchBlock:v8];
}

void __45__HMMTRAccessoryServer__onThreadScanResults___block_invoke_889(uint64_t a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v8 = objc_autoreleasePoolPush();
  v9 = WeakRetained;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543618;
    v25 = v11;
    v26 = 2112;
    v27 = v6;
    _os_log_impl(&dword_22AEAE000, v10, OS_LOG_TYPE_INFO, "%{public}@Thread credentials retrieved with error: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  if (!v9)
  {
    v12 = objc_autoreleasePoolPush();
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543362;
      v25 = v14;
      _os_log_impl(&dword_22AEAE000, v13, OS_LOG_TYPE_ERROR, "%{public}@HMMTRAccessoryServer deallocated before receiving Thread credentials", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v12);
    dispatch_group_leave(*(a1 + 32));
  }

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __45__HMMTRAccessoryServer__onThreadScanResults___block_invoke_890;
  v18[3] = &unk_2786F0170;
  v19 = v6;
  v20 = v5;
  v21 = v9;
  v23 = *(a1 + 48);
  v22 = *(a1 + 32);
  v15 = v5;
  v16 = v6;
  [v9 dispatchBlock:v18];

  v17 = *MEMORY[0x277D85DE8];
}

void __45__HMMTRAccessoryServer__onThreadScanResults___block_invoke_892(uint64_t a1)
{
  v44 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    v4 = objc_autoreleasePoolPush();
    v5 = WeakRetained;
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      *buf = 138543362;
      v39 = v7;
      _os_log_impl(&dword_22AEAE000, v6, OS_LOG_TYPE_INFO, "%{public}@Populating Thread credentials from extended PAN ID", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    v8 = [*(*(*(a1 + 56) + 8) + 40) activeOperationalDataSet];
    [*(a1 + 32) setThreadOperationalDataset:v8];

    v9 = objc_autoreleasePoolPush();
    v10 = v5;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v12 = HMFGetLogIdentifier();
      v13 = [*(a1 + 32) threadOperationalDataset];
      *buf = 138543618;
      v39 = v12;
      v40 = 2112;
      v41 = v13;
      _os_log_impl(&dword_22AEAE000, v11, OS_LOG_TYPE_DEBUG, "%{public}@Using activeOperationalDataset buffer %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
    v14 = objc_autoreleasePoolPush();
    v15 = v10;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = HMFGetLogIdentifier();
      v18 = [v15 nodeID];
      v19 = [*(a1 + 40) extendedPANID];
      *buf = 138543874;
      v39 = v17;
      v40 = 2112;
      v41 = v18;
      v42 = 2112;
      v43 = v19;
      _os_log_impl(&dword_22AEAE000, v16, OS_LOG_TYPE_INFO, "%{public}@Requesting to commission device(%@) with selected network:%@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v14);
    v20 = [v15 deviceController];
    if (v20)
    {
      v21 = [v15 nodeID];
      v22 = [v15 controllerWrapper];
      v23 = [v22 startupParams];
      v24 = [v23 operationalCertificateIssuer];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v25 = v24;
      }

      else
      {
        v25 = 0;
      }

      v26 = v25;

      [v26 setCommissioneeNodeID:v21];
      v27 = [v15 nodeID];
      v28 = [v27 unsignedLongLongValue];
      v29 = *(a1 + 32);
      v37 = 0;
      [v20 commissionDevice:v28 commissioningParams:v29 error:&v37];
      v30 = v37;

      v31 = [HMMTRAccessoryPairingEndContext mtrContextWithStep:6 error:v30];
      if (v30)
      {
        [v15 setCommissionCompletePending:0];
LABEL_16:
        v32 = objc_autoreleasePoolPush();
        v33 = v15;
        v34 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          v35 = HMFGetLogIdentifier();
          *buf = 138543618;
          v39 = v35;
          v40 = 2112;
          v41 = v30;
          _os_log_impl(&dword_22AEAE000, v34, OS_LOG_TYPE_ERROR, "%{public}@Commissioning failed: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v32);
        [v33 _pairingComplete:v30 context:v31];

        goto LABEL_20;
      }

      [v15 setCommissionCompletePending:1];
    }

    else
    {
      v30 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CD5120] code:6 userInfo:0];
      v31 = [HMMTRAccessoryPairingEndContext hmmtrContextWithStep:6 error:v30];
      if (v30)
      {
        goto LABEL_16;
      }
    }

LABEL_20:

    goto LABEL_21;
  }

  v3 = [HMMTRAccessoryPairingEndContext otherContextWithStep:4 error:?];
  [WeakRetained _pairingComplete:*(*(*(a1 + 48) + 8) + 40) context:v3];

LABEL_21:
  v36 = *MEMORY[0x277D85DE8];
}

void __45__HMMTRAccessoryServer__onThreadScanResults___block_invoke_890(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32) || (v8 = *(a1 + 40)) == 0)
  {
    v2 = objc_autoreleasePoolPush();
    v3 = *(a1 + 48);
    v4 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = HMFGetLogIdentifier();
      v6 = *(a1 + 32);
      v12 = 138543618;
      v13 = v5;
      v14 = 2112;
      v15 = v6;
      _os_log_impl(&dword_22AEAE000, v4, OS_LOG_TYPE_ERROR, "%{public}@CHIP Accessory Server failed to obtain Thread credentials for selected extended PAN ID... Error: %@", &v12, 0x16u);
    }

    objc_autoreleasePoolPop(v2);
    if (*(a1 + 32))
    {
      [MEMORY[0x277CCA9B8] hapErrorWithCode:30 description:0 reason:0 suggestion:0 underlyingError:?];
    }

    else
    {
      [MEMORY[0x277CCA9B8] hapErrorWithCode:30];
    }
    v7 = ;
    v9 = *(*(a1 + 64) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v7;
  }

  else
  {
    objc_storeStrong((*(*(a1 + 72) + 8) + 40), v8);
  }

  dispatch_group_leave(*(a1 + 56));
  v11 = *MEMORY[0x277D85DE8];
}

void __45__HMMTRAccessoryServer__onThreadScanResults___block_invoke_2_888(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v2 = objc_autoreleasePoolPush();
    v3 = *(a1 + 40);
    v4 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = HMFGetLogIdentifier();
      v6 = *(a1 + 32);
      v8 = 138543618;
      v9 = v5;
      v10 = 2112;
      v11 = v6;
      _os_log_impl(&dword_22AEAE000, v4, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch additional Thread network information - aborting pairing: %@", &v8, 0x16u);
    }

    objc_autoreleasePoolPop(v2);
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), *(a1 + 32));
  }

  dispatch_group_leave(*(a1 + 48));
  v7 = *MEMORY[0x277D85DE8];
}

- (void)_onWiFiScanResults:(id)a3
{
  v23 = self;
  v36 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v25 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v3, "count")}];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = v3;
  v4 = [obj countByEnumeratingWithState:&v27 objects:v35 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v28;
    do
    {
      v7 = 0;
      do
      {
        if (*v28 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v27 + 1) + 8 * v7);
        v9 = objc_alloc(MEMORY[0x277CD55E8]);
        v10 = [v8 ssid];
        v11 = [v8 rssi];
        v12 = [v8 security];
        v13 = [v12 unsignedCharValue];
        v14 = [v8 wiFiBand];
        v15 = [v9 initWithSSID:v10 rssi:v11 security:v13 band:{objc_msgSend(v14, "unsignedCharValue")}];
        [v25 addObject:v15];

        ++v7;
      }

      while (v5 != v7);
      v5 = [obj countByEnumeratingWithState:&v27 objects:v35 count:16];
    }

    while (v5);
  }

  v16 = objc_autoreleasePoolPush();
  v17 = v23;
  v18 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    v19 = HMFGetLogIdentifier();
    v20 = [v25 count];
    *buf = 138543618;
    v32 = v19;
    v33 = 2048;
    v34 = v20;
    _os_log_impl(&dword_22AEAE000, v18, OS_LOG_TYPE_INFO, "%{public}@Calling scan results handler with %lu scan results", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v16);
  v21 = [(HMMTRAccessoryServer *)v17 stageWiFiScanResultsHandler];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __43__HMMTRAccessoryServer__onWiFiScanResults___block_invoke;
  v26[3] = &unk_2786F0120;
  v26[4] = v17;
  (v21)[2](v21, v25, v26);

  v22 = *MEMORY[0x277D85DE8];
}

void __43__HMMTRAccessoryServer__onWiFiScanResults___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) clientQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __43__HMMTRAccessoryServer__onWiFiScanResults___block_invoke_2;
  v7[3] = &unk_2786EF328;
  v5 = *(a1 + 32);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

void __43__HMMTRAccessoryServer__onWiFiScanResults___block_invoke_2(uint64_t a1)
{
  v44 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v2 = objc_alloc_init(MEMORY[0x277CD5300]);
    v3 = [*(a1 + 40) browser];
    v4 = [v3 attestationStatus];
    [v4 populateDelegate:v2];

    if (![*(a1 + 40) _populateCommissioningParameterCountryCode:v2])
    {
LABEL_22:

      goto LABEL_23;
    }

    v5 = [*(a1 + 32) ssid];
    [v2 setWifiSSID:v5];

    v6 = [*(a1 + 32) credentials];
    [v2 setWifiCredentials:v6];

    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 40);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v11 = [*(a1 + 40) nodeID];
      v12 = [*(a1 + 32) ssid];
      *buf = 138543874;
      v39 = v10;
      v40 = 2112;
      v41 = v11;
      v42 = 2112;
      v43 = v12;
      _os_log_impl(&dword_22AEAE000, v9, OS_LOG_TYPE_INFO, "%{public}@Requesting to commission device(%@) with selected network:%@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
    v13 = [*(a1 + 40) deviceController];
    if (v13)
    {
      v14 = [*(a1 + 40) nodeID];
      v15 = [*(a1 + 40) controllerWrapper];
      v16 = [v15 startupParams];
      v17 = [v16 operationalCertificateIssuer];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v18 = v17;
      }

      else
      {
        v18 = 0;
      }

      v19 = v18;

      [v19 setCommissioneeNodeID:v14];
      v20 = [*(a1 + 40) nodeID];
      v37 = 0;
      [v13 commissionDevice:objc_msgSend(v20 commissioningParams:"unsignedLongLongValue") error:{v2, &v37}];
      v21 = v37;

      if (!v21)
      {
        [*(a1 + 40) setCommissionCompletePending:1];
        goto LABEL_21;
      }

      v22 = objc_autoreleasePoolPush();
      v23 = *(a1 + 40);
      v24 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v25 = HMFGetLogIdentifier();
        *buf = 138543618;
        v39 = v25;
        v40 = 2112;
        v41 = v21;
        _os_log_impl(&dword_22AEAE000, v24, OS_LOG_TYPE_ERROR, "%{public}@Commissioning failed: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v22);
      [*(a1 + 40) setCommissionCompletePending:0];
      v26 = [HMMTRAccessoryPairingEndContext mtrContextWithStep:6 error:v21];
    }

    else
    {
      v31 = objc_autoreleasePoolPush();
      v32 = *(a1 + 40);
      v33 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        v34 = HMFGetLogIdentifier();
        *buf = 138543362;
        v39 = v34;
        _os_log_impl(&dword_22AEAE000, v33, OS_LOG_TYPE_ERROR, "%{public}@No Matter device controller available to commission", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v31);
      v21 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CD5120] code:6 userInfo:0];
      v26 = [HMMTRAccessoryPairingEndContext hmmtrContextWithStep:5 error:v21];
    }

    v35 = v26;
    [*(a1 + 40) _pairingComplete:v21 context:v26];

LABEL_21:
    goto LABEL_22;
  }

  v27 = objc_autoreleasePoolPush();
  v28 = *(a1 + 40);
  v29 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
  {
    v30 = HMFGetLogIdentifier();
    *buf = 138543362;
    v39 = v30;
    _os_log_impl(&dword_22AEAE000, v29, OS_LOG_TYPE_INFO, "%{public}@No network selection from WiFi scan result. Falling back to default network credentials collection.", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v27);
  [*(a1 + 40) _collectNetworkCredentials:0];
LABEL_23:
  v36 = *MEMORY[0x277D85DE8];
}

- (void)_onNetworkScanResults:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 wiFiScanResults];
  if (v5)
  {

    goto LABEL_4;
  }

  v6 = [v4 threadScanResults];

  if (v6)
  {
LABEL_4:
    v7 = [v4 wiFiScanResults];

    if (v7)
    {
      v8 = [v4 wiFiScanResults];
      [(HMMTRAccessoryServer *)self _onWiFiScanResults:v8];
    }

    else
    {
      v9 = [v4 threadScanResults];

      if (!v9)
      {
        _HMFPreconditionFailure();
      }

      v8 = [v4 threadScanResults];
      [(HMMTRAccessoryServer *)self _onThreadScanResults:v8];
    }

    goto LABEL_11;
  }

  v10 = objc_autoreleasePoolPush();
  v11 = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    v13 = HMFGetLogIdentifier();
    v16 = 138543362;
    v17 = v13;
    _os_log_impl(&dword_22AEAE000, v12, OS_LOG_TYPE_ERROR, "%{public}@Neither WiFi nor Thread scan results present in scan response", &v16, 0xCu);
  }

  objc_autoreleasePoolPop(v10);
  v8 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D0F1A0] code:11 userInfo:0];
  v14 = [HMMTRAccessoryPairingEndContext hmmtrContextWithStep:3 error:v8];
  [(HMMTRAccessoryServer *)v11 _pairingComplete:v8 context:v14];

LABEL_11:
  v15 = *MEMORY[0x277D85DE8];
}

- (void)_requestAccessoryNetworkScanWithCompletionHandler:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMMTRAccessoryServer *)self deviceController];
  v6 = [(HMMTRAccessoryServer *)self nodeID];
  v18 = 0;
  v7 = [v5 getDeviceBeingCommissioned:objc_msgSend(v6 error:{"unsignedLongLongValue"), &v18}];
  v8 = v18;

  if (v7)
  {
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __74__HMMTRAccessoryServer__requestAccessoryNetworkScanWithCompletionHandler___block_invoke;
    v15[3] = &unk_2786F0F20;
    v15[4] = self;
    v17 = v4;
    v16 = v7;
    [(HMMTRAccessoryServer *)self _getCommissioneeNetworkCommissioningClusterEndpointWithDevice:v16 completion:v15];
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
      v20 = v12;
      v21 = 2112;
      v22 = v8;
      _os_log_impl(&dword_22AEAE000, v11, OS_LOG_TYPE_ERROR, "%{public}@Couldn't get device being commissioned for network scanning: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
    if (!v8)
    {
      v8 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CD5120] code:1 userInfo:0];
    }

    v13 = [HMMTRAccessoryPairingEndContext mtrContextWithStep:3 error:v8];
    (*(v4 + 2))(v4, 0, v8, v13);
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __74__HMMTRAccessoryServer__requestAccessoryNetworkScanWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = objc_alloc(MEMORY[0x277CD5200]);
    v8 = *(a1 + 40);
    v9 = [v5 unsignedShortValue];
    v10 = [*(a1 + 32) clientQueue];
    v11 = [v7 initWithDevice:v8 endpoint:v9 queue:v10];

    if (v11)
    {
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __74__HMMTRAccessoryServer__requestAccessoryNetworkScanWithCompletionHandler___block_invoke_871;
      v24[3] = &unk_2786F0F20;
      v24[4] = *(a1 + 32);
      v26 = *(a1 + 48);
      v12 = v11;
      v25 = v12;
      [v12 readAttributeFeatureMapWithCompletionHandler:v24];
    }

    else
    {
      v17 = objc_autoreleasePoolPush();
      v18 = *(a1 + 32);
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = HMFGetLogIdentifier();
        *buf = 138543362;
        v28 = v20;
        _os_log_impl(&dword_22AEAE000, v19, OS_LOG_TYPE_ERROR, "%{public}@Network commissioning cluster init failed for scanning", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v17);
      v21 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D0F1A0] code:11 userInfo:0];
      v22 = [HMMTRAccessoryPairingEndContext hmmtrContextWithStep:3 error:v21];
      (*(*(a1 + 48) + 16))();

      v12 = 0;
    }
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    v14 = *(a1 + 32);
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      *buf = 138543618;
      v28 = v16;
      v29 = 2112;
      v30 = v6;
      _os_log_impl(&dword_22AEAE000, v15, OS_LOG_TYPE_INFO, "%{public}@Network commissioning cluster not found for scanning: %@. Returning empty scan results.", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
    v12 = objc_alloc_init(MEMORY[0x277CD5438]);
    [v12 setWiFiScanResults:MEMORY[0x277CBEBF8]];
    (*(*(a1 + 48) + 16))();
  }

  v23 = *MEMORY[0x277D85DE8];
}

void __74__HMMTRAccessoryServer__requestAccessoryNetworkScanWithCompletionHandler___block_invoke_871(id *a1, void *a2, void *a3)
{
  v70 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (!v5)
  {
    v15 = objc_autoreleasePoolPush();
    v16 = a1[4];
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      *buf = 138543618;
      v67 = v18;
      v68 = 2112;
      v69 = v6;
      _os_log_impl(&dword_22AEAE000, v17, OS_LOG_TYPE_ERROR, "%{public}@Couldn't get network commissioning cluster features for scanning: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v15);
    v19 = [HMMTRAccessoryPairingEndContext mtrContextWithStep:3 error:v6];
    v20 = *(a1[6] + 2);
    goto LABEL_39;
  }

  v7 = [v5 unsignedIntegerValue];
  v8 = v7 & 1;
  v9 = [v5 unsignedIntegerValue];
  v10 = v9;
  if ((v7 & 1) == 0 || (v9 & 2) != 0)
  {
    if ((v9 & 2) != 0)
    {
      v21 = objc_autoreleasePoolPush();
      v22 = a1[4];
      v23 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        v24 = HMFGetLogIdentifier();
        *buf = 138543362;
        v67 = v24;
        _os_log_impl(&dword_22AEAE000, v23, OS_LOG_TYPE_INFO, "%{public}@Setting linkLayerType to Thread", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v21);
      [a1[4] setLinkLayerType:4];
      if (isFeatureMatteriPhoneOnlyPairingControlEnabled())
      {
        v25 = [a1[4] defaultThreadOperationalDataset];

        v26 = objc_autoreleasePoolPush();
        v27 = a1[4];
        v28 = HMFGetOSLogHandle();
        v29 = os_log_type_enabled(v28, OS_LOG_TYPE_INFO);
        if (!v25)
        {
          if (v29)
          {
            v57 = HMFGetLogIdentifier();
            *buf = 138543362;
            v67 = v57;
            _os_log_impl(&dword_22AEAE000, v28, OS_LOG_TYPE_INFO, "%{public}@Default thread operational dataset is not available. Will inform browser later to start thread if needed when operational dataset is available", buf, 0xCu);
          }

          objc_autoreleasePoolPop(v26);
          [a1[4] setDeferStartThreadForPairing:1];
          if (!v8)
          {
            goto LABEL_21;
          }

          goto LABEL_19;
        }

        if (v29)
        {
          v30 = HMFGetLogIdentifier();
          *buf = 138543362;
          v67 = v30;
          _os_log_impl(&dword_22AEAE000, v28, OS_LOG_TYPE_INFO, "%{public}@Default thread operational dataset is available. Proceed with informing browser to start thread if needed", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v26);
        v31 = [a1[4] browser];
        v32 = [a1[4] fabricUUID];
        v33 = [a1[4] nodeID];
        [v31 handlePairingForThreadAccessoryWithTargetFabricUUID:v32 nodeID:v33];
      }
    }

    if (!v8)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    v12 = a1[4];
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543362;
      v67 = v14;
      _os_log_impl(&dword_22AEAE000, v13, OS_LOG_TYPE_INFO, "%{public}@Setting linkLayerType to WiFi", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v11);
    [a1[4] setLinkLayerType:1];
  }

LABEL_19:
  v34 = [a1[4] stageWiFiScanResultsHandler];
  if (v34 || ![a1[4] _controllerIsOnWiFiNetworkWhichSupportsBothBands])
  {

    goto LABEL_27;
  }

LABEL_21:
  v35 = [a1[4] stageThreadScanResultsHandler];

  if (!v35 || (v10 & 2) == 0)
  {
    v36 = objc_autoreleasePoolPush();
    v37 = a1[4];
    v38 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
    {
      v39 = HMFGetLogIdentifier();
      *buf = 138543618;
      v67 = v39;
      v68 = 2112;
      v69 = v5;
      _os_log_impl(&dword_22AEAE000, v38, OS_LOG_TYPE_INFO, "%{public}@Network commissioning cluster feature (featureMap: %@) doesn't require scanning for current request. Returning empty scan results.", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v36);
    v40 = objc_alloc_init(MEMORY[0x277CD5438]);
    v19 = v40;
    v41 = MEMORY[0x277CBEBF8];
LABEL_37:
    [v40 setWiFiScanResults:v41];
    goto LABEL_38;
  }

LABEL_27:
  if ([a1[4] stageNetworkScanRequested])
  {
    v62[0] = MEMORY[0x277D85DD0];
    v62[1] = 3221225472;
    v62[2] = __74__HMMTRAccessoryServer__requestAccessoryNetworkScanWithCompletionHandler___block_invoke_872;
    v62[3] = &unk_2786F0EA8;
    v42 = a1[5];
    v43 = a1[4];
    v63 = v42;
    v64 = v43;
    v65 = a1[6];
    v44 = MEMORY[0x2318887D0](v62);
    v45 = [a1[4] stageWiFiScanResultsHandler];
    v46 = v45;
    if (v45 && v8)
    {
    }

    else
    {
      v53 = [a1[4] stageThreadScanResultsHandler];

      if (!v53 || (v10 & 2) == 0)
      {
        v54 = a1[4];
        v55 = a1[5];
        v58[0] = MEMORY[0x277D85DD0];
        v58[1] = 3221225472;
        v58[2] = __74__HMMTRAccessoryServer__requestAccessoryNetworkScanWithCompletionHandler___block_invoke_2_878;
        v58[3] = &unk_2786F00F8;
        v58[4] = v54;
        v61 = v8;
        v59 = a1[6];
        v60 = v44;
        [v54 _getCommissioneeHasActiveNetworkWithNetworkCommissioningCluster:v55 completion:v58];

        goto LABEL_44;
      }
    }

    v44[2](v44);
LABEL_44:

    v19 = v63;
    goto LABEL_45;
  }

  v47 = objc_autoreleasePoolPush();
  v48 = a1[4];
  v49 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
  {
    v50 = HMFGetLogIdentifier();
    v51 = v50;
    v52 = "WiFi";
    if (!v8)
    {
      v52 = "Thread";
    }

    *buf = 138543618;
    v67 = v50;
    v68 = 2080;
    v69 = v52;
    _os_log_impl(&dword_22AEAE000, v49, OS_LOG_TYPE_INFO, "%{public}@Network scanning was not requested by upper layer. Returning empty scan results for %s.", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v47);
  v40 = objc_alloc_init(MEMORY[0x277CD5438]);
  v19 = v40;
  v41 = MEMORY[0x277CBEBF8];
  if (v8)
  {
    goto LABEL_37;
  }

  [v40 setThreadScanResults:MEMORY[0x277CBEBF8]];
LABEL_38:
  v20 = *(a1[6] + 2);
LABEL_39:
  v20();
LABEL_45:

  v56 = *MEMORY[0x277D85DE8];
}

void __74__HMMTRAccessoryServer__requestAccessoryNetworkScanWithCompletionHandler___block_invoke_872(uint64_t a1)
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __74__HMMTRAccessoryServer__requestAccessoryNetworkScanWithCompletionHandler___block_invoke_2;
  v4[3] = &unk_2786F0F20;
  v3 = *(a1 + 32);
  v2 = v3.i64[0];
  v5 = vextq_s8(v3, v3, 8uLL);
  v6 = *(a1 + 48);
  [v2 readAttributeScanMaxTimeSecondsWithCompletionHandler:v4];
}

void __74__HMMTRAccessoryServer__requestAccessoryNetworkScanWithCompletionHandler___block_invoke_2_878(uint64_t a1, int a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (v5 || !a2)
  {
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
    v7 = *(a1 + 32);
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v13 = 138543362;
      v14 = v9;
      _os_log_impl(&dword_22AEAE000, v8, OS_LOG_TYPE_INFO, "%{public}@Commissionee already has a commissioned network. Skip network scanning.", &v13, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    v10 = objc_alloc_init(MEMORY[0x277CD5438]);
    v11 = v10;
    if (*(a1 + 56) == 1)
    {
      [v10 setWiFiScanResults:MEMORY[0x277CBEBF8]];
    }

    else
    {
      [v10 setThreadScanResults:MEMORY[0x277CBEBF8]];
    }

    (*(*(a1 + 40) + 16))();
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __74__HMMTRAccessoryServer__requestAccessoryNetworkScanWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v9 = *(a1 + 32);
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543618;
      v22 = v11;
      v23 = 2112;
      v24 = v6;
      _os_log_impl(&dword_22AEAE000, v10, OS_LOG_TYPE_ERROR, "%{public}@Couldn't get scan max time from device: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    v7 = &unk_283EE8C58;
  }

  v12 = objc_alloc_init(MEMORY[0x277CD5430]);
  [v12 setServerSideProcessingTimeout:v7];
  v13 = objc_autoreleasePoolPush();
  v14 = *(a1 + 32);
  v15 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    v16 = HMFGetLogIdentifier();
    *buf = 138543618;
    v22 = v16;
    v23 = 2112;
    v24 = v7;
    _os_log_impl(&dword_22AEAE000, v15, OS_LOG_TYPE_DEBUG, "%{public}@Sending scan network command with timeout: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v13);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __74__HMMTRAccessoryServer__requestAccessoryNetworkScanWithCompletionHandler___block_invoke_876;
  v19[3] = &unk_2786F00D0;
  v17 = *(a1 + 40);
  v20 = *(a1 + 48);
  [v17 scanNetworksWithParams:v12 completionHandler:v19];
  [*(a1 + 32) _notifyDelegateOfPairingProgress:17];

  v18 = *MEMORY[0x277D85DE8];
}

void __74__HMMTRAccessoryServer__requestAccessoryNetworkScanWithCompletionHandler___block_invoke_876(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = [HMMTRAccessoryPairingEndContext mtrContextWithStep:3 error:v5];
  (*(*(a1 + 32) + 16))();
}

- (id)_convertFetchedCredentials:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc(MEMORY[0x277CD5540]);
  v6 = [v4 name];
  v7 = [v4 extendedPANID];
  v8 = [v4 masterKey];
  v9 = [v4 PSKc];
  v10 = [v4 channel];
  v11 = [v4 PANID];
  v12 = [v5 initWithNetworkName:v6 extendedPANID:v7 masterKey:v8 PSKc:v9 channel:v10 panID:v11];

  v13 = objc_autoreleasePoolPush();
  v14 = self;
  v15 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = HMFGetLogIdentifier();
    v17 = [v12 networkName];
    v18 = [v12 panID];
    v21 = 138543874;
    v22 = v16;
    v23 = 2112;
    v24 = v17;
    v25 = 2112;
    v26 = v18;
    _os_log_impl(&dword_22AEAE000, v15, OS_LOG_TYPE_INFO, "%{public}@Converted HAPThreadNetworkMetadata to MTRThreadOperationalDataset. Got network with Name:%@ and PanID:%@", &v21, 0x20u);
  }

  objc_autoreleasePoolPop(v13);
  v19 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)_matterCredentialsFromTHCredentials:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc(MEMORY[0x277CD5540]);
  v6 = [v4 activeOperationalDataSet];
  v7 = [v5 initWithData:v6];

  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v12 = [v7 networkName];
    v13 = [v7 panID];
    v16 = 138543874;
    v17 = v11;
    v18 = 2112;
    v19 = v12;
    v20 = 2112;
    v21 = v13;
    _os_log_impl(&dword_22AEAE000, v10, OS_LOG_TYPE_INFO, "%{public}@Converted THCredentials to MTRThreadOperationalDataset. Got network with Name:%@ and PanID:%@", &v16, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  v14 = *MEMORY[0x277D85DE8];

  return v7;
}

- (void)_populateThreadCredentials:(id)a3 completion:(id)a4
{
  v33 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMMTRAccessoryServer *)self defaultThreadOperationalDatasetReceiveBlock];

  if (v8)
  {
    v9 = [(HMMTRAccessoryServer *)self defaultThreadOperationalDatasetReceiveBlock];
    v10 = [MEMORY[0x277CCA9B8] hapErrorWithCode:2];
    (v9)[2](v9, 0, v10);

    [(HMMTRAccessoryServer *)self setDefaultThreadOperationalDatasetReceiveBlock:0];
  }

  if ([(HMMTRAccessoryServer *)self defaultThreadOperationalDatasetRetrieved])
  {
    v11 = [(HMMTRAccessoryServer *)self defaultThreadOperationalDataset];

    v12 = v11 == 0;
    v13 = objc_autoreleasePoolPush();
    v14 = self;
    v15 = HMFGetOSLogHandle();
    v16 = v15;
    if (v12)
    {
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v21 = HMFGetLogIdentifier();
        *buf = 138543362;
        v30 = v21;
        _os_log_impl(&dword_22AEAE000, v16, OS_LOG_TYPE_ERROR, "%{public}@Populating Thread credential collection error", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v13);
      v22 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CFE770] code:30 userInfo:0];
      v23 = [HMMTRAccessoryPairingEndContext hmmtrContextWithStep:4 error:v22];
      v7[2](v7, 0, v22, v23);
    }

    else
    {
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v17 = HMFGetLogIdentifier();
        v18 = [(HMMTRAccessoryServer *)v14 defaultThreadOperationalDataset];
        v19 = [v18 hmf_hexadecimalRepresentation];
        *buf = 138543618;
        v30 = v17;
        v31 = 2112;
        v32 = v19;
        _os_log_impl(&dword_22AEAE000, v16, OS_LOG_TYPE_INFO, "%{public}@Populating Thread credentials - dataset: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v13);
      v20 = [(HMMTRAccessoryServer *)v14 defaultThreadOperationalDataset];
      [v6 setThreadOperationalDataset:v20];

      (v7)[2](v7, v6, 0, 0);
    }
  }

  else
  {
    objc_initWeak(buf, self);
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __62__HMMTRAccessoryServer__populateThreadCredentials_completion___block_invoke;
    v25[3] = &unk_2786F00A8;
    objc_copyWeak(&v28, buf);
    v26 = v6;
    v27 = v7;
    [(HMMTRAccessoryServer *)self setDefaultThreadOperationalDatasetReceiveBlock:v25];

    objc_destroyWeak(&v28);
    objc_destroyWeak(buf);
  }

  v24 = *MEMORY[0x277D85DE8];
}

void __62__HMMTRAccessoryServer__populateThreadCredentials_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v8 = objc_autoreleasePoolPush();
  v9 = WeakRetained;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v15 = 138543362;
    v16 = v11;
    _os_log_impl(&dword_22AEAE000, v10, OS_LOG_TYPE_INFO, "%{public}@Populating Thread credentials", &v15, 0xCu);
  }

  objc_autoreleasePoolPop(v8);
  if (v5)
  {
    [*(a1 + 32) setThreadOperationalDataset:v5];
  }

  if (v6)
  {
    v12 = [HMMTRAccessoryPairingEndContext hmmtrContextWithStep:4 error:v6];
  }

  else
  {
    v12 = 0;
  }

  if (v5)
  {
    v13 = *(a1 + 32);
  }

  else
  {
    v13 = 0;
  }

  (*(*(a1 + 40) + 16))(*(a1 + 40), v13, v6, v12);

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_prepareThreadCredentials
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    *buf = 138543362;
    v17 = v6;
    _os_log_impl(&dword_22AEAE000, v5, OS_LOG_TYPE_INFO, "%{public}@Collecting Thread Credentials...", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  [(HMMTRAccessoryServer *)v4 setDefaultThreadOperationalDataset:0];
  [(HMMTRAccessoryServer *)v4 setDefaultThreadOperationalDatasetRetrieved:0];
  [(HMMTRAccessoryServer *)v4 setDeferStartThreadForPairing:0];
  [(HMMTRAccessoryServer *)v4 _startCurrentMetricTimeWithName:@"hmmtrAccessoryMetricNameRetrieveThreadCredentials"];
  [(HMMTRAccessoryServer *)v4 _notifyDelegateOfPairingProgress:30];
  if ([(HMMTRAccessoryServer *)v4 pairedState]== 1)
  {
    v7 = [objc_alloc(MEMORY[0x277CE1968]) initWithKeychainAccessGroup:@"com.apple.thread.network"];
    objc_initWeak(buf, v4);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __49__HMMTRAccessoryServer__prepareThreadCredentials__block_invoke_864;
    v11[3] = &unk_2786F0080;
    objc_copyWeak(&v13, buf);
    v8 = v7;
    v12 = v8;
    [v8 retrievePreferredCredentialsInternally:v11];

    objc_destroyWeak(&v13);
    objc_destroyWeak(buf);
  }

  else
  {
    objc_initWeak(buf, v4);
    v9 = [(HMMTRAccessoryServer *)v4 browser];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __49__HMMTRAccessoryServer__prepareThreadCredentials__block_invoke;
    v14[3] = &unk_2786F0058;
    objc_copyWeak(&v15, buf);
    [v9 fetchPreferredThreadCredentialsForServer:v4 withCompletion:v14];

    objc_destroyWeak(&v15);
    objc_destroyWeak(buf);
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __49__HMMTRAccessoryServer__prepareThreadCredentials__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (v5 && !v6 && WeakRetained)
  {
    if (isFeatureMatteriPhoneOnlyPairingControlEnabled() && ([v5 activeOperationalDataSet], v9 = objc_claimAutoreleasedReturnValue(), v9, v9))
    {
      v10 = [v5 activeOperationalDataSet];
      v11 = objc_autoreleasePoolPush();
      v12 = v8;
      v13 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = HMFGetLogIdentifier();
        v15 = [v10 hmf_hexadecimalRepresentation];
        *buf = 138543618;
        v26 = v14;
        v27 = 2112;
        v28 = v15;
        v16 = "%{public}@Retrieved Thread operational dataset (unpaired,activeOperationalDataSet): %@";
LABEL_12:
        _os_log_impl(&dword_22AEAE000, v13, OS_LOG_TYPE_INFO, v16, buf, 0x16u);
      }
    }

    else
    {
      v18 = [v8 _convertFetchedCredentials:v5];
      v10 = [v18 data];

      v11 = objc_autoreleasePoolPush();
      v19 = v8;
      v13 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = HMFGetLogIdentifier();
        v15 = [v10 hmf_hexadecimalRepresentation];
        *buf = 138543618;
        v26 = v14;
        v27 = 2112;
        v28 = v15;
        v16 = "%{public}@Retrieved Thread operational dataset (unpaired,HAPThreadNetworkMetadata): %@";
        goto LABEL_12;
      }
    }

    objc_autoreleasePoolPop(v11);
    v20 = [v8 clientQueue];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __49__HMMTRAccessoryServer__prepareThreadCredentials__block_invoke_861;
    v22[3] = &unk_2786EF328;
    v22[4] = v8;
    v23 = v10;
    v17 = v10;
    dispatch_async(v20, v22);

    goto LABEL_14;
  }

  [WeakRetained _notifyDelegateOfPairingProgress:32 error:v6];
  if (v8)
  {
    v17 = [v8 clientQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __49__HMMTRAccessoryServer__prepareThreadCredentials__block_invoke_2;
    block[3] = &unk_2786F0CA8;
    block[4] = v8;
    dispatch_async(v17, block);
LABEL_14:
  }

  v21 = *MEMORY[0x277D85DE8];
}

void __49__HMMTRAccessoryServer__prepareThreadCredentials__block_invoke_864(uint64_t a1, void *a2, void *a3, void *a4)
{
  v29 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v11 = WeakRetained;
  if (v7 && !v9 && WeakRetained)
  {
    v12 = [WeakRetained _matterCredentialsFromTHCredentials:v7];
    v13 = [v12 data];

    v14 = objc_autoreleasePoolPush();
    v15 = v11;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = HMFGetLogIdentifier();
      v18 = [v13 hmf_hexadecimalRepresentation];
      *buf = 138543618;
      v26 = v17;
      v27 = 2112;
      v28 = v18;
      _os_log_impl(&dword_22AEAE000, v16, OS_LOG_TYPE_INFO, "%{public}@Retrieved Thread operational dataset (staging): %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v14);
    v19 = [v15 clientQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __49__HMMTRAccessoryServer__prepareThreadCredentials__block_invoke_866;
    block[3] = &unk_2786EF328;
    block[4] = v15;
    v23 = v13;
    v20 = v13;
    dispatch_async(v19, block);

    goto LABEL_9;
  }

  [WeakRetained _notifyDelegateOfPairingProgress:32 error:v9];
  if (v11)
  {
    v20 = [v11 clientQueue];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __49__HMMTRAccessoryServer__prepareThreadCredentials__block_invoke_2_865;
    v24[3] = &unk_2786F0CA8;
    v24[4] = v11;
    dispatch_async(v20, v24);
LABEL_9:
  }

  v21 = *MEMORY[0x277D85DE8];
}

void __49__HMMTRAccessoryServer__prepareThreadCredentials__block_invoke_2_865(uint64_t a1)
{
  [*(a1 + 32) setDefaultThreadOperationalDataset:0];
  [*(a1 + 32) setDefaultThreadOperationalDatasetRetrieved:1];
  v2 = [*(a1 + 32) defaultThreadOperationalDatasetReceiveBlock];

  if (v2)
  {
    v4 = [*(a1 + 32) defaultThreadOperationalDatasetReceiveBlock];
    [*(a1 + 32) setDefaultThreadOperationalDatasetReceiveBlock:0];
    v3 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CFE770] code:30 userInfo:0];
    v4[2](v4, 0, v3);
  }
}

void __49__HMMTRAccessoryServer__prepareThreadCredentials__block_invoke_866(uint64_t a1)
{
  [*(a1 + 32) _notifyDelegateOfPairingProgress:31];
  [*(a1 + 32) setDefaultThreadOperationalDataset:*(a1 + 40)];
  [*(a1 + 32) setDefaultThreadOperationalDatasetRetrieved:1];
  v2 = [*(a1 + 32) defaultThreadOperationalDatasetReceiveBlock];

  if (v2)
  {
    v3 = [*(a1 + 32) defaultThreadOperationalDatasetReceiveBlock];
    [*(a1 + 32) setDefaultThreadOperationalDatasetReceiveBlock:0];
    (*(v3 + 2))(v3, *(a1 + 40), 0);
  }
}

void __49__HMMTRAccessoryServer__prepareThreadCredentials__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setDefaultThreadOperationalDataset:0];
  [*(a1 + 32) setDefaultThreadOperationalDatasetRetrieved:1];
  v2 = [*(a1 + 32) defaultThreadOperationalDatasetReceiveBlock];

  if (v2)
  {
    v4 = [*(a1 + 32) defaultThreadOperationalDatasetReceiveBlock];
    [*(a1 + 32) setDefaultThreadOperationalDatasetReceiveBlock:0];
    v3 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CFE770] code:30 userInfo:0];
    v4[2](v4, 0, v3);
  }
}

uint64_t __49__HMMTRAccessoryServer__prepareThreadCredentials__block_invoke_861(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) _notifyDelegateOfPairingProgress:31];
  [*(a1 + 32) setDefaultThreadOperationalDataset:*(a1 + 40)];
  [*(a1 + 32) setDefaultThreadOperationalDatasetRetrieved:1];
  v2 = [*(a1 + 32) defaultThreadOperationalDatasetReceiveBlock];

  if (v2)
  {
    v3 = [*(a1 + 32) defaultThreadOperationalDatasetReceiveBlock];
    [*(a1 + 32) setDefaultThreadOperationalDatasetReceiveBlock:0];
    v3[2](v3, *(a1 + 40), 0);
  }

  result = isFeatureMatteriPhoneOnlyPairingControlEnabled();
  if (result)
  {
    result = [*(a1 + 32) deferStartThreadForPairing];
    if (result)
    {
      v5 = objc_autoreleasePoolPush();
      v6 = *(a1 + 32);
      v7 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = HMFGetLogIdentifier();
        v13 = 138543362;
        v14 = v8;
        _os_log_impl(&dword_22AEAE000, v7, OS_LOG_TYPE_INFO, "%{public}@Proceed to inform browser to start thread if needed since operational dataset is now available", &v13, 0xCu);
      }

      objc_autoreleasePoolPop(v5);
      v9 = [*(a1 + 32) browser];
      v10 = [*(a1 + 32) fabricUUID];
      v11 = [*(a1 + 32) nodeID];
      [v9 handlePairingForThreadAccessoryWithTargetFabricUUID:v10 nodeID:v11];

      result = [*(a1 + 32) setDeferStartThreadForPairing:0];
    }
  }

  v12 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)_endCurrentMetricTimeWithName:(id)a3
{
  v35 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = *MEMORY[0x277CFECD8];
  os_unfair_lock_lock_with_options();
  v6 = [(HMMTRAccessoryServer *)self pairingDurationDictionary];
  v7 = [v6 objectForKey:v4];

  if (v7)
  {
    v8 = [(HMMTRAccessoryServer *)self pairingDurationDictionary];
    [v8 removeObjectForKey:v4];

    v9 = MEMORY[0x277CCABB0];
    v10 = [MEMORY[0x277CBEAA8] date];
    [v7 durationWithDate:v10];
    v11 = [v9 numberWithDouble:?];

    [v11 doubleValue];
    v13 = v12;
    v14 = [(HMMTRAccessoryServer *)self maxMetricDuration];
    v15 = [v14 duration];
    [v15 doubleValue];
    v17 = v16;

    if (v13 > v17)
    {
      v18 = [HMMTRDuration alloc];
      v19 = [v7 name];
      v20 = [(HMMTRDuration *)v18 initWithName:v19 duration:v11];
      [(HMMTRAccessoryServer *)self setMaxMetricDuration:v20];

      v21 = [(HMMTRAccessoryServer *)self maxMetricDuration];
      v22 = [v21 name];
      [(HAPAccessoryServer *)self setPairingMetricWithKey:@"hmmtrAccessoryPairingEventMaxDurationName" value:v22];

      v23 = [(HMMTRAccessoryServer *)self maxMetricDuration];
      v24 = [v23 duration];
      [(HAPAccessoryServer *)self setPairingMetricWithKey:@"hmmtrAccessoryPairingEventMaxDurationTimeInSeconds" value:v24];
    }

    os_unfair_lock_unlock((self + v5));
  }

  else
  {
    v25 = objc_autoreleasePoolPush();
    v26 = self;
    v27 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = HMFGetLogIdentifier();
      v31 = 138543618;
      v32 = v28;
      v33 = 2112;
      v34 = v4;
      _os_log_impl(&dword_22AEAE000, v27, OS_LOG_TYPE_ERROR, "%{public}@failed to find metric %@ to complete", &v31, 0x16u);
    }

    objc_autoreleasePoolPop(v25);
    os_unfair_lock_unlock((self + v5));
    v11 = 0;
  }

  v29 = *MEMORY[0x277D85DE8];

  return v11;
}

- (void)_startCurrentMetricTimeWithName:(id)a3
{
  v9 = a3;
  v4 = [HMMTRMetricBundle alloc];
  v5 = [MEMORY[0x277CBEAA8] date];
  v6 = [(HMMTRMetricBundle *)v4 initWithTime:v5 name:v9];

  v7 = *MEMORY[0x277CFECD8];
  os_unfair_lock_lock_with_options();
  v8 = [(HMMTRAccessoryServer *)self pairingDurationDictionary];
  [v8 setObject:v6 forKeyedSubscript:v9];

  os_unfair_lock_unlock((self + v7));
}

- (void)_populateWifiCredentials:(id)a3 scanResults:(id)a4 completion:(id)a5
{
  v119 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v90 = a5;
  [(HMMTRAccessoryServer *)self _notifyDelegateOfPairingStep:5];
  v91 = [(HMMTRAccessoryServer *)self currentWiFiNetworkInfo];
  v10 = objc_autoreleasePoolPush();
  v11 = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = HMFGetLogIdentifier();
    *buf = 138543362;
    v113 = v13;
    _os_log_impl(&dword_22AEAE000, v12, OS_LOG_TYPE_INFO, "%{public}@Collecting WiFi credentials for the accessory", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v10);
  [(HMMTRAccessoryServer *)v11 _notifyDelegateOfPairingProgress:14];
  v14 = [v91 objectForKey:@"ssid"];

  if (v14)
  {
    v87 = v8;
    v15 = MEMORY[0x277CBEB18];
    v16 = [v9 wiFiScanResults];
    v17 = [v15 arrayWithCapacity:{objc_msgSend(v16, "count")}];

    v108 = 0u;
    v109 = 0u;
    v106 = 0u;
    v107 = 0u;
    v88 = v9;
    obj = [v9 wiFiScanResults];
    v18 = [obj countByEnumeratingWithState:&v106 objects:v118 count:16];
    v93 = v17;
    if (v18)
    {
      v19 = v18;
      v20 = *v107;
      v21 = 0x277CCA000uLL;
      do
      {
        v22 = 0;
        v94 = v19;
        do
        {
          if (*v107 != v20)
          {
            objc_enumerationMutation(obj);
          }

          v23 = *(*(&v106 + 1) + 8 * v22);
          v24 = objc_alloc(*(v21 + 3240));
          v25 = [v23 ssid];
          v26 = [v24 initWithData:v25 encoding:4];

          if (v26)
          {
            [v17 addObject:v26];
          }

          else
          {
            v27 = v21;
            v28 = objc_autoreleasePoolPush();
            v29 = v11;
            v30 = v11;
            v31 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
            {
              v32 = HMFGetLogIdentifier();
              v33 = [v23 ssid];
              *buf = 138543618;
              v113 = v32;
              v114 = 2112;
              v115 = v33;
              _os_log_impl(&dword_22AEAE000, v31, OS_LOG_TYPE_ERROR, "%{public}@Unexpected non-UTF8 SSID was skipped: %@", buf, 0x16u);

              v17 = v93;
            }

            objc_autoreleasePoolPop(v28);
            v11 = v29;
            v21 = v27;
            v19 = v94;
          }

          ++v22;
        }

        while (v19 != v22);
        v19 = [obj countByEnumeratingWithState:&v106 objects:v118 count:16];
      }

      while (v19);
    }

    v34 = [v91 objectForKeyedSubscript:@"ssid"];
    v35 = objc_autoreleasePoolPush();
    v36 = v11;
    v37 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
    {
      v38 = HMFGetLogIdentifier();
      *buf = 138543874;
      v113 = v38;
      v114 = 2112;
      v115 = v34;
      v116 = 2112;
      v117 = v17;
      _os_log_impl(&dword_22AEAE000, v37, OS_LOG_TYPE_INFO, "%{public}@Current network: %@, scanned networks: %@", buf, 0x20u);
    }

    v89 = v36;
    objc_autoreleasePoolPop(v35);
    if (([v17 containsObject:v34] & 1) != 0 || !objc_msgSend(v17, "count"))
    {
      v53 = v91;
      v8 = v87;
    }

    else
    {
      v39 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v17, "count")}];
      v102 = 0u;
      v103 = 0u;
      v104 = 0u;
      v105 = 0u;
      v40 = v17;
      v41 = [v40 countByEnumeratingWithState:&v102 objects:v111 count:16];
      if (v41)
      {
        v42 = v41;
        v43 = *v103;
        do
        {
          for (i = 0; i != v42; ++i)
          {
            if (*v103 != v43)
            {
              objc_enumerationMutation(v40);
            }

            v45 = *(*(&v102 + 1) + 8 * i);
            v46 = [v34 commonPrefixWithString:v45 options:10];
            if ([v46 length])
            {
              [v39 addObject:v45];
            }
          }

          v42 = [v40 countByEnumeratingWithState:&v102 objects:v111 count:16];
        }

        while (v42);
      }

      v47 = objc_autoreleasePoolPush();
      v48 = v89;
      v49 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
      {
        v50 = HMFGetLogIdentifier();
        *buf = 138543618;
        v113 = v50;
        v114 = 2112;
        v115 = v39;
        _os_log_impl(&dword_22AEAE000, v49, OS_LOG_TYPE_INFO, "%{public}@Possible compatible results: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v47);
      v100 = 0u;
      v101 = 0u;
      v98 = 0u;
      v99 = 0u;
      obja = v39;
      v51 = [obja countByEnumeratingWithState:&v98 objects:v110 count:16];
      if (v51)
      {
        v52 = v51;
        v53 = 0;
        v54 = *v99;
        v92 = *v99;
        while (2)
        {
          v55 = 0;
          v95 = v52;
          do
          {
            if (*v99 != v54)
            {
              objc_enumerationMutation(obja);
            }

            v56 = [(HMMTRAccessoryServer *)v48 wifiNetworkInfoForSSID:*(*(&v98 + 1) + 8 * v55)];
            if (v56)
            {
              v57 = objc_autoreleasePoolPush();
              v58 = v48;
              v59 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v59, OS_LOG_TYPE_INFO))
              {
                v60 = HMFGetLogIdentifier();
                [v56 objectForKeyedSubscript:@"ssid"];
                v61 = v48;
                v63 = v62 = v53;
                *buf = 138543618;
                v113 = v60;
                v114 = 2112;
                v115 = v63;
                _os_log_impl(&dword_22AEAE000, v59, OS_LOG_TYPE_INFO, "%{public}@Matched : %@", buf, 0x16u);

                v53 = v62;
                v48 = v61;
                v54 = v92;

                v52 = v95;
              }

              objc_autoreleasePoolPop(v57);
              if (v53)
              {

                goto LABEL_49;
              }

              v53 = v56;
            }

            ++v55;
          }

          while (v52 != v55);
          v52 = [obja countByEnumeratingWithState:&v98 objects:v110 count:16];
          if (v52)
          {
            continue;
          }

          break;
        }
      }

      else
      {
LABEL_49:
        v53 = 0;
      }

      v8 = v87;
      v17 = v93;
    }

    v9 = v88;
    if (v53)
    {
      goto LABEL_55;
    }

    v69 = objc_autoreleasePoolPush();
    v70 = v89;
    v71 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v71, OS_LOG_TYPE_INFO))
    {
      v72 = HMFGetLogIdentifier();
      *buf = 138543362;
      v113 = v72;
      _os_log_impl(&dword_22AEAE000, v71, OS_LOG_TYPE_INFO, "%{public}@No matching SSID among scan results", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v69);
    v53 = v91;
    v73 = *MEMORY[0x277CFE770];
    v74 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CFE770] code:20 userInfo:0];
    [(HMMTRAccessoryServer *)v70 setCommissioningFailureOverridingError:v74];

    if (v53)
    {
LABEL_55:
      v75 = objc_autoreleasePoolPush();
      v76 = v89;
      v77 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v77, OS_LOG_TYPE_INFO))
      {
        v78 = HMFGetLogIdentifier();
        v79 = [v53 objectForKeyedSubscript:@"ssid"];
        *buf = 138543618;
        v113 = v78;
        v114 = 2112;
        v115 = v79;
        _os_log_impl(&dword_22AEAE000, v77, OS_LOG_TYPE_INFO, "%{public}@Configuring with wifi ssid %@", buf, 0x16u);

        v9 = v88;
      }

      objc_autoreleasePoolPop(v75);
      v80 = [v53 objectForKeyedSubscript:@"ssid"];
      v81 = [v80 dataUsingEncoding:4];
      [v8 setWifiSSID:v81];

      v82 = [v53 objectForKeyedSubscript:@"password"];
      v83 = [v82 dataUsingEncoding:4];
      [v8 setWifiCredentials:v83];

      [(HMMTRAccessoryServer *)v76 _notifyDelegateOfPairingProgress:15];
      v68 = v90;
      (*(v90 + 2))(v90, v8, 0, 0);
    }

    else
    {
      v85 = [MEMORY[0x277CCA9B8] errorWithDomain:v73 code:20 userInfo:0];
      [(HMMTRAccessoryServer *)v70 _notifyDelegateOfPairingProgress:16 error:v85];
      v86 = [HMMTRAccessoryPairingEndContext hmmtrContextWithStep:5 error:v85];
      v68 = v90;
      (*(v90 + 2))(v90, 0, v85, v86);
    }
  }

  else
  {
    v64 = objc_autoreleasePoolPush();
    v65 = v11;
    v66 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
    {
      v67 = HMFGetLogIdentifier();
      *buf = 138543362;
      v113 = v67;
      _os_log_impl(&dword_22AEAE000, v66, OS_LOG_TYPE_ERROR, "%{public}@Unable to send WiFi Credentials. No SSID available. Is WiFi connected?", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v64);
    v17 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CFE770] code:21 userInfo:0];
    [(HMMTRAccessoryServer *)v65 _notifyDelegateOfPairingProgress:16 error:v17];
    v34 = [HMMTRAccessoryPairingEndContext hmmtrContextWithStep:5 error:v17];
    v68 = v90;
    (*(v90 + 2))(v90, 0, v17, v34);
    v53 = 0;
  }

  v84 = *MEMORY[0x277D85DE8];
}

- (id)wifiNetworkInfoForSSID:(id)a3
{
  v9[1] = *MEMORY[0x277D85DE8];
  v8 = @"ssid";
  v9[0] = a3;
  v3 = MEMORY[0x277CBEAC0];
  v4 = a3;
  [v3 dictionaryWithObjects:v9 forKeys:&v8 count:1];

  v5 = WiFiCopyNetworkInfo();
  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)currentWiFiNetworkInfo
{
  v2 = WiFiCopyCurrentNetworkInfoEx();

  return v2;
}

- (BOOL)_controllerIsOnWiFiNetworkWhichSupportsBothBands
{
  v25 = self;
  v41 = *MEMORY[0x277D85DE8];
  v31 = 0;
  v2 = WiFiCopyCurrentNetworkInfoEx();
  v26 = [v2 objectForKeyedSubscript:@"ssid"];
  v3 = [v2 objectForKeyedSubscript:@"rawRecord"];
  v4 = [v3 objectForKeyedSubscript:@"networkKnownBSSListKey"];

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v27 objects:v40 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = 0;
    v10 = *v28;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v28 != v10)
        {
          objc_enumerationMutation(v5);
        }

        v12 = [*(*(&v27 + 1) + 8 * i) objectForKeyedSubscript:{@"CHANNEL_FLAGS", v25}];
        v13 = [v12 unsignedIntegerValue];

        v9 |= (v13 >> 3) & 1;
        v8 |= (v13 >> 4) & 1;
        if (v9 & 1) != 0 && (v8)
        {
          LOBYTE(v8) = 1;
          LOBYTE(v9) = 1;
          goto LABEL_13;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v27 objects:v40 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    LOBYTE(v8) = 0;
    LOBYTE(v9) = 0;
  }

LABEL_13:

  v14 = objc_autoreleasePoolPush();
  v15 = v25;
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = HMFGetLogIdentifier();
    v18 = v17;
    v19 = &stru_283ED2308;
    v20 = @" 2.4GHz";
    if ((v9 & 1) == 0)
    {
      v20 = &stru_283ED2308;
    }

    *buf = 138544130;
    v33 = v17;
    if (v8)
    {
      v19 = @" 5GHz";
    }

    v34 = 2112;
    v35 = v26;
    v36 = 2112;
    v37 = v20;
    v38 = 2112;
    v39 = v19;
    _os_log_impl(&dword_22AEAE000, v16, OS_LOG_TYPE_INFO, "%{public}@Current WiFi network(%@) bands%@%@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v14);
  if (v31)
  {
    v21 = 1;
  }

  else
  {
    v21 = v26 == 0;
  }

  v22 = v21;

  v23 = *MEMORY[0x277D85DE8];
  return (v22 | v9 & v8) & 1;
}

- (id)removeNode:(id)a3 withPrivilge:(unsigned __int8)a4 fromExistingAclEntries:(id)a5
{
  v6 = a4;
  v42 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  if (!v8 || [v8 isEqualToNumber:&unk_283EE89B8])
  {
    goto LABEL_11;
  }

  if (v6 != 5)
  {
    v10 = objc_autoreleasePoolPush();
    v11 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543362;
      v41 = v13;
      v14 = "%{public}@Current implementation is restricted to removal of admin nodes only";
      goto LABEL_9;
    }

LABEL_10:

    objc_autoreleasePoolPop(v10);
LABEL_11:
    v15 = v9;
    goto LABEL_12;
  }

  if ([HMMTRUtilities isValidCATSubject:v8])
  {
    v10 = objc_autoreleasePoolPush();
    v11 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543362;
      v41 = v13;
      v14 = "%{public}@Current implementation doesn't support removal of CAT IDs";
LABEL_9:
      _os_log_impl(&dword_22AEAE000, v12, OS_LOG_TYPE_INFO, v14, buf, 0xCu);

      goto LABEL_10;
    }

    goto LABEL_10;
  }

  v34 = v8;
  v18 = [MEMORY[0x277CBEB18] array];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v33 = v9;
  v19 = v9;
  v20 = [v19 countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v36;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v36 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v35 + 1) + 8 * i);
        v25 = MEMORY[0x277CBEB58];
        v26 = [v24 subjects];
        v27 = [v25 setWithArray:v26];

        v28 = [v24 privilege];
        v29 = [v28 integerValue];

        if (v29 == 5)
        {
          [v27 removeObject:v34];
        }

        v30 = [v27 allObjects];
        [v24 setSubjects:v30];

        v31 = [v24 subjects];
        v32 = [v31 count];

        if (v32)
        {
          [v18 addObject:v24];
        }
      }

      v21 = [v19 countByEnumeratingWithState:&v35 objects:v39 count:16];
    }

    while (v21);
  }

  v15 = [v18 copy];
  v9 = v33;
  v8 = v34;
LABEL_12:

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

- (id)mergeExistingAclEntries:(id)a3 withNewNodes:(id)a4 withPrivilege:(unsigned __int8)a5
{
  v46 = a5;
  v79 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ([v7 count])
  {
    v8 = [MEMORY[0x277CBEB18] array];
    v71 = 0u;
    v72 = 0u;
    v73 = 0u;
    v74 = 0u;
    obj = v7;
    v52 = [obj countByEnumeratingWithState:&v71 objects:v78 count:16];
    if (!v52)
    {
      goto LABEL_47;
    }

    v9 = v46;
    v48 = v8;
    v49 = v7;
    v50 = *v72;
    while (1)
    {
      for (i = 0; i != v52; ++i)
      {
        if (*v72 != v50)
        {
          objc_enumerationMutation(obj);
        }

        v60 = *(*(&v71 + 1) + 8 * i);
        v59 = [HMMTRUtilities isValidCATSubject:?];
        v67 = 0u;
        v68 = 0u;
        v69 = 0u;
        v70 = 0u;
        v11 = v6;
        v12 = [v11 countByEnumeratingWithState:&v67 objects:v77 count:16];
        if (!v12)
        {

          [v8 addObjectsFromArray:v11];
LABEL_39:
          v34 = objc_alloc_init(MEMORY[0x277CD51A8]);
          v35 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v46];
          [v34 setPrivilege:v35];

          [v34 setAuthMode:&unk_283EE8C28];
          v75 = v60;
          v36 = [MEMORY[0x277CBEA60] arrayWithObjects:&v75 count:1];
          [v34 setSubjects:v36];

          [v8 addObject:v34];
          goto LABEL_45;
        }

        v13 = v12;
        v54 = i;
        v51 = 0;
        v55 = 0;
        v14 = 0;
        v15 = *v68;
        v57 = *v68;
        v58 = v11;
        v16 = v59;
        do
        {
          v17 = 0;
          v53 = v14 + v13;
          do
          {
            if (*v68 != v15)
            {
              objc_enumerationMutation(v11);
            }

            v18 = *(*(&v67 + 1) + 8 * v17);
            v19 = [v18 privilege];
            if ([v19 integerValue] != v9)
            {
              goto LABEL_16;
            }

            v20 = v13;
            v21 = [v18 targets];
            if ([v21 count])
            {

LABEL_15:
              v13 = v20;
LABEL_16:

              goto LABEL_17;
            }

            v22 = [v18 authMode];
            v23 = [v22 integerValue];

            v11 = v58;
            v24 = v23 == 2;
            v15 = v57;
            v13 = v20;
            if (v24)
            {
              v65 = 0u;
              v66 = 0u;
              v63 = 0u;
              v64 = 0u;
              v19 = [v18 subjects];
              v25 = [v19 countByEnumeratingWithState:&v63 objects:v76 count:16];
              if (v25)
              {
                v26 = v25;
                v27 = 0;
                v28 = *v64;
                while (2)
                {
                  v29 = 0;
                  v56 = v27 + v26;
                  do
                  {
                    if (*v64 != v28)
                    {
                      objc_enumerationMutation(v19);
                    }

                    v30 = *(*(&v63 + 1) + 8 * v29);
                    if ([v30 isEqualToNumber:v60])
                    {

                      v11 = v58;
                      v8 = v48;
                      [v48 addObjectsFromArray:v58];
                      v7 = v49;
                      v9 = v46;
                      i = v54;
                      goto LABEL_45;
                    }

                    if (v16)
                    {
                      if ([HMMTRUtilities isValidCATSubject:v30])
                      {
                        v62 = 0;
                        [HMMTRUtilities parseCaseAuthenticatedTag:v60 identifier:&v62 + 2 version:&v62];
                        v61 = 0;
                        v16 = v59;
                        [HMMTRUtilities parseCaseAuthenticatedTag:v30 identifier:&v61 + 2 version:&v61];
                        if (HIWORD(v62) == HIWORD(v61))
                        {

                          v32 = v58;
                          v8 = v48;
                          [v48 addObjectsFromArray:v58];
                          v33 = 1;
                          v7 = v49;
                          v9 = v46;
                          goto LABEL_41;
                        }
                      }
                    }

                    ++v27;
                    ++v29;
                  }

                  while (v26 != v29);
                  v26 = [v19 countByEnumeratingWithState:&v63 objects:v76 count:16];
                  v27 = v56;
                  if (v26)
                  {
                    continue;
                  }

                  break;
                }

                v55 = 1;
                v51 = v14;
                v9 = v46;
                v15 = v57;
                v11 = v58;
              }

              else
              {
                v55 = 1;
                v51 = v14;
              }

              goto LABEL_15;
            }

LABEL_17:
            ++v14;
            ++v17;
          }

          while (v17 != v13);
          v31 = [v11 countByEnumeratingWithState:&v67 objects:v77 count:16];
          v13 = v31;
          v14 = v53;
        }

        while (v31);

        v8 = v48;
        [v48 addObjectsFromArray:v11];
        v7 = v49;
        i = v54;
        if ((v55 & 1) == 0)
        {
          goto LABEL_39;
        }

        v27 = 0;
        v32 = v11;
        v33 = 0;
        v14 = v51;
LABEL_41:
        v37 = MEMORY[0x277CBEB18];
        v38 = [v32 objectAtIndexedSubscript:v14];
        v39 = [v38 subjects];
        v40 = [v37 arrayWithArray:v39];

        if ((v59 & v33) == 1)
        {
          [v40 setObject:v60 atIndexedSubscript:v27];
        }

        else
        {
          [v40 addObject:v60];
        }

        v41 = [v40 copy];
        v42 = [v8 objectAtIndexedSubscript:v14];
        [v42 setSubjects:v41];

        i = v54;
        v11 = v58;
LABEL_45:
        v6 = [v8 copy];

        [v8 removeAllObjects];
      }

      v52 = [obj countByEnumeratingWithState:&v71 objects:v78 count:16];
      if (!v52)
      {
LABEL_47:

        v43 = [v6 copy];
        goto LABEL_49;
      }
    }
  }

  v6 = v6;
  v43 = v6;
LABEL_49:

  v44 = *MEMORY[0x277D85DE8];

  return v43;
}

- (id)mergeExistingAclEntries:(id)a3 withAdminNodes:(id)a4 regularUserNodes:(id)a5
{
  v8 = a5;
  v9 = [(HMMTRAccessoryServer *)self mergeExistingAclEntries:a3 withNewNodes:a4 withPrivilege:5];
  v10 = [(HMMTRAccessoryServer *)self mergeExistingAclEntries:v9 withNewNodes:v8 withPrivilege:3];

  return v10;
}

- (void)updateAccessoryControlToRemoveAdministratorNode:(id)a3 completion:(id)a4
{
  v37 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543618;
    v34 = v11;
    v35 = 2112;
    v36 = v6;
    _os_log_impl(&dword_22AEAE000, v10, OS_LOG_TYPE_INFO, "%{public}@Updating accessory ACL to remove administrative access to %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  v12 = [(HAPAccessoryServer *)v9 pairingRequest];
  if (v12 && (v13 = v12, -[HAPAccessoryServer pairingRequest](v9, "pairingRequest"), v14 = objc_claimAutoreleasedReturnValue(), v15 = [v14 isOwnerPairing], v14, v13, !v15))
  {
    v16 = [(HMMTRAccessoryServer *)v9 nodeID];
    v17 = [(HMMTRAccessoryServer *)v9 deviceController];
    v18 = [(HMMTRAccessoryServer *)v9 mtrBaseDeviceWithNodeID:v16 controller:v17];

    if (v18)
    {
      v19 = objc_alloc(MEMORY[0x277CD51D8]);
      v20 = [(HAPAccessoryServer *)v9 clientQueue];
      v21 = [v19 initWithDevice:v18 endpointID:&unk_283EE89B8 queue:v20];

      v22 = objc_alloc_init(MEMORY[0x277CD54D8]);
      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = __83__HMMTRAccessoryServer_updateAccessoryControlToRemoveAdministratorNode_completion___block_invoke;
      v29[3] = &unk_2786F0030;
      v29[4] = v9;
      v32 = v7;
      v30 = v6;
      v31 = v21;
      v23 = v21;
      [v23 readAttributeACLWithParams:v22 completion:v29];
    }

    else
    {
      v24 = objc_autoreleasePoolPush();
      v25 = v9;
      v26 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v27 = HMFGetLogIdentifier();
        *buf = 138543362;
        v34 = v27;
        _os_log_impl(&dword_22AEAE000, v26, OS_LOG_TYPE_ERROR, "%{public}@Failed to read ACL. No device found", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v24);
      v22 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:2];
      (*(v7 + 2))(v7, v22);
    }
  }

  else
  {
    (*(v7 + 2))(v7, 0);
  }

  v28 = *MEMORY[0x277D85DE8];
}

void __83__HMMTRAccessoryServer_updateAccessoryControlToRemoveAdministratorNode_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v33 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  v10 = v9;
  if (v6)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543618;
      v30 = v11;
      v31 = 2112;
      v32 = v6;
      _os_log_impl(&dword_22AEAE000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to read ACL. Error: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543618;
      v30 = v12;
      v31 = 2112;
      v32 = v5;
      _os_log_impl(&dword_22AEAE000, v10, OS_LOG_TYPE_INFO, "%{public}@Successfully read ACL as %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    [HMMTRUtilities printAccessControlList:v5];
    v13 = v5;
    v14 = [*(a1 + 32) removeNode:*(a1 + 40) withPrivilge:5 fromExistingAclEntries:v13];
    v15 = objc_autoreleasePoolPush();
    v16 = *(a1 + 32);
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      *buf = 138543618;
      v30 = v18;
      v31 = 2112;
      v32 = v14;
      _os_log_impl(&dword_22AEAE000, v17, OS_LOG_TYPE_INFO, "%{public}@New ACL entries %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v15);
    if (![v14 count])
    {
      v19 = objc_autoreleasePoolPush();
      v20 = *(a1 + 32);
      v21 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        v22 = HMFGetLogIdentifier();
        *buf = 138543362;
        v30 = v22;
        _os_log_impl(&dword_22AEAE000, v21, OS_LOG_TYPE_INFO, "%{public}@Unexpected ACL remove operation", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v19);
      (*(*(a1 + 56) + 16))();
    }

    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __83__HMMTRAccessoryServer_updateAccessoryControlToRemoveAdministratorNode_completion___block_invoke_838;
    v26[3] = &unk_2786F0C10;
    v26[4] = *(a1 + 32);
    v27 = v14;
    v23 = *(a1 + 48);
    v28 = *(a1 + 56);
    v24 = v14;
    [v23 writeAttributeACLWithValue:v24 completion:v26];
  }

  v25 = *MEMORY[0x277D85DE8];
}

void __83__HMMTRAccessoryServer_updateAccessoryControlToRemoveAdministratorNode_completion___block_invoke_838(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
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
      v11 = 138543618;
      v12 = v8;
      v13 = 2112;
      v14 = v3;
      _os_log_impl(&dword_22AEAE000, v7, OS_LOG_TYPE_ERROR, "%{public}@Failed to update ACL. Error: %@", &v11, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v11 = 138543362;
      v12 = v9;
      _os_log_impl(&dword_22AEAE000, v7, OS_LOG_TYPE_INFO, "%{public}@Successfully updated ACL to", &v11, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    [HMMTRUtilities printAccessControlList:*(a1 + 40)];
  }

  (*(*(a1 + 48) + 16))();

  v10 = *MEMORY[0x277D85DE8];
}

- (void)updateAccessoryControlToIncludeAdministratorNodes:(id)a3 sharedUserNodes:(id)a4 completion:(id)a5
{
  v50 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(HMMTRAccessoryServer *)self isKnownToSystemCommissioner];
  v12 = objc_autoreleasePoolPush();
  v13 = self;
  v14 = HMFGetOSLogHandle();
  v15 = v14;
  if (v11)
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v16 = HMFGetLogIdentifier();
      *buf = 138543362;
      v45 = v16;
      _os_log_impl(&dword_22AEAE000, v15, OS_LOG_TYPE_DEBUG, "%{public}@Skipping ACL update for System Commissioner pairing", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v12);
LABEL_5:
    v10[2](v10, 0);
    goto LABEL_23;
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v17 = HMFGetLogIdentifier();
    *buf = 138543874;
    v45 = v17;
    v46 = 2112;
    v47 = v8;
    v48 = 2112;
    v49 = v9;
    _os_log_impl(&dword_22AEAE000, v15, OS_LOG_TYPE_INFO, "%{public}@Updating accessory ACL to include administrative access to %@ and view access to %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v12);
  v18 = [(HAPAccessoryServer *)v13 pairingRequest];
  if (!v18 || ([(HAPAccessoryServer *)v13 pairingRequest], v15 = objc_claimAutoreleasedReturnValue(), ([v15 isOwnerPairing]& 1) != 0))
  {
    v19 = [(HMMTRAccessoryServer *)v13 browser];
    v20 = [v19 isCurrentDevicePrimaryResident];

    if (v18)
    {
    }

    if ((v20 & 1) == 0 && (isFeatureMatteriPhoneOnlyPairingControlEnabled() & 1) == 0)
    {
      goto LABEL_5;
    }
  }

  else
  {
  }

  if ([v8 count] || objc_msgSend(v9, "count"))
  {
    v21 = [(HMMTRAccessoryServer *)v13 nodeID];
    v22 = [(HMMTRAccessoryServer *)v13 deviceController];
    v23 = [(HMMTRAccessoryServer *)v13 mtrBaseDeviceWithNodeID:v21 controller:v22];

    if (v23)
    {
      v24 = objc_alloc(MEMORY[0x277CD51D8]);
      v25 = [(HAPAccessoryServer *)v13 clientQueue];
      v26 = [v24 initWithDevice:v23 endpointID:&unk_283EE89B8 queue:v25];

      v27 = objc_alloc_init(MEMORY[0x277CD54D8]);
      v39[0] = MEMORY[0x277D85DD0];
      v39[1] = 3221225472;
      v39[2] = __101__HMMTRAccessoryServer_updateAccessoryControlToIncludeAdministratorNodes_sharedUserNodes_completion___block_invoke;
      v39[3] = &unk_2786F0ED0;
      v39[4] = v13;
      v43 = v10;
      v40 = v8;
      v41 = v9;
      v42 = v26;
      v28 = v26;
      [v28 readAttributeACLWithParams:v27 completion:v39];
    }

    else
    {
      v29 = objc_autoreleasePoolPush();
      v30 = v13;
      v31 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        v32 = HMFGetLogIdentifier();
        *buf = 138543362;
        v45 = v32;
        _os_log_impl(&dword_22AEAE000, v31, OS_LOG_TYPE_ERROR, "%{public}@Failed to read ACL. No device found", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v29);
      v27 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:2];
      (v10)[2](v10, v27);
    }
  }

  else
  {
    v34 = objc_autoreleasePoolPush();
    v35 = v13;
    v36 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      v37 = HMFGetLogIdentifier();
      *buf = 138543362;
      v45 = v37;
      _os_log_impl(&dword_22AEAE000, v36, OS_LOG_TYPE_ERROR, "%{public}@Invalid list of allowed nodes", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v34);
    v38 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:3];
    (v10)[2](v10, v38);
  }

LABEL_23:

  v33 = *MEMORY[0x277D85DE8];
}

void __101__HMMTRAccessoryServer_updateAccessoryControlToIncludeAdministratorNodes_sharedUserNodes_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  v10 = v9;
  if (v6)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543618;
      v26 = v11;
      v27 = 2112;
      v28 = v6;
      _os_log_impl(&dword_22AEAE000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to read ACL. Error: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    (*(*(a1 + 64) + 16))();
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543618;
      v26 = v12;
      v27 = 2112;
      v28 = v5;
      _os_log_impl(&dword_22AEAE000, v10, OS_LOG_TYPE_INFO, "%{public}@Successfully read ACL as %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    [HMMTRUtilities printAccessControlList:v5];
    v13 = v5;
    v14 = [*(a1 + 32) mergeExistingAclEntries:v13 withAdminNodes:*(a1 + 40) regularUserNodes:*(a1 + 48)];
    v15 = objc_autoreleasePoolPush();
    v16 = *(a1 + 32);
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      *buf = 138543618;
      v26 = v18;
      v27 = 2112;
      v28 = v14;
      _os_log_impl(&dword_22AEAE000, v17, OS_LOG_TYPE_INFO, "%{public}@New ACL entries %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v15);
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __101__HMMTRAccessoryServer_updateAccessoryControlToIncludeAdministratorNodes_sharedUserNodes_completion___block_invoke_837;
    v22[3] = &unk_2786F0C10;
    v22[4] = *(a1 + 32);
    v23 = v14;
    v19 = *(a1 + 56);
    v24 = *(a1 + 64);
    v20 = v14;
    [v19 writeAttributeACLWithValue:v20 completion:v22];
  }

  v21 = *MEMORY[0x277D85DE8];
}

void __101__HMMTRAccessoryServer_updateAccessoryControlToIncludeAdministratorNodes_sharedUserNodes_completion___block_invoke_837(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
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
      v11 = 138543618;
      v12 = v8;
      v13 = 2112;
      v14 = v3;
      _os_log_impl(&dword_22AEAE000, v7, OS_LOG_TYPE_ERROR, "%{public}@Failed to update ACL. Error: %@", &v11, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v11 = 138543362;
      v12 = v9;
      _os_log_impl(&dword_22AEAE000, v7, OS_LOG_TYPE_INFO, "%{public}@Successfully updated ACL to", &v11, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    [HMMTRUtilities printAccessControlList:*(a1 + 40)];
  }

  (*(*(a1 + 48) + 16))();

  v10 = *MEMORY[0x277D85DE8];
}

- (void)updateAccessoryControlToAdministratorNodes:(id)a3 sharedUserNodes:(id)a4 completion:(id)a5
{
  v42 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([(HMMTRAccessoryServer *)self isKnownToSystemCommissioner])
  {
    v11 = objc_autoreleasePoolPush();
    v12 = self;
    v13 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
LABEL_5:

      objc_autoreleasePoolPop(v11);
      v10[2](v10, 0);
      goto LABEL_20;
    }

    v14 = HMFGetLogIdentifier();
    *buf = 138543362;
    v41 = v14;
    v15 = "%{public}@Skipping ACL update for System Commissioner pairing";
    v16 = v13;
    v17 = OS_LOG_TYPE_DEBUG;
LABEL_4:
    _os_log_impl(&dword_22AEAE000, v16, v17, v15, buf, 0xCu);

    goto LABEL_5;
  }

  if (![v8 count] && !objc_msgSend(v9, "count"))
  {
    v11 = objc_autoreleasePoolPush();
    v12 = self;
    v13 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      goto LABEL_5;
    }

    v14 = HMFGetLogIdentifier();
    *buf = 138543362;
    v41 = v14;
    v15 = "%{public}@No ACL nodes to update on accessory";
    v16 = v13;
    v17 = OS_LOG_TYPE_INFO;
    goto LABEL_4;
  }

  v18 = [(HMMTRAccessoryServer *)self nodeID];
  v19 = [(HMMTRAccessoryServer *)self deviceController];
  v20 = [(HMMTRAccessoryServer *)self mtrBaseDeviceWithNodeID:v18 controller:v19];

  if (v20)
  {
    v21 = objc_alloc(MEMORY[0x277CD51D8]);
    v22 = [(HAPAccessoryServer *)self clientQueue];
    v23 = [v21 initWithDevice:v20 endpointID:&unk_283EE89B8 queue:v22];

    v24 = [MEMORY[0x277CBEB18] array];
    if ([v8 count])
    {
      v25 = objc_alloc_init(MEMORY[0x277CD51A8]);
      [v25 setPrivilege:&unk_283EE8C10];
      [v25 setAuthMode:&unk_283EE8C28];
      [v25 setSubjects:v8];
      [v24 addObject:v25];
    }

    if ([v9 count])
    {
      v26 = objc_alloc_init(MEMORY[0x277CD51A8]);
      [v26 setPrivilege:&unk_283EE8C40];
      [v26 setAuthMode:&unk_283EE8C28];
      [v26 setSubjects:v9];
      [v24 addObject:v26];
    }

    v27 = objc_autoreleasePoolPush();
    v28 = self;
    v29 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
    {
      v30 = HMFGetLogIdentifier();
      *buf = 138543362;
      v41 = v30;
      _os_log_impl(&dword_22AEAE000, v29, OS_LOG_TYPE_INFO, "%{public}@Updating accessory ACL to", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v27);
    [HMMTRUtilities printAccessControlList:v24];
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __94__HMMTRAccessoryServer_updateAccessoryControlToAdministratorNodes_sharedUserNodes_completion___block_invoke;
    v37[3] = &unk_2786F0C10;
    v37[4] = v28;
    v38 = v23;
    v39 = v10;
    v31 = v23;
    [v31 writeAttributeACLWithValue:v24 completion:v37];
  }

  else
  {
    v32 = objc_autoreleasePoolPush();
    v33 = self;
    v34 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      v35 = HMFGetLogIdentifier();
      *buf = 138543362;
      v41 = v35;
      _os_log_impl(&dword_22AEAE000, v34, OS_LOG_TYPE_ERROR, "%{public}@Failed to read ACL. No device found", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v32);
    v24 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:2];
    (v10)[2](v10, v24);
  }

LABEL_20:
  v36 = *MEMORY[0x277D85DE8];
}

void __94__HMMTRAccessoryServer_updateAccessoryControlToAdministratorNodes_sharedUserNodes_completion___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
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
    v18 = v8;
    v19 = 2112;
    v20 = v3;
    v9 = "%{public}@Failed to update ACL. Error: %@";
    v10 = v7;
    v11 = OS_LOG_TYPE_ERROR;
    v12 = 22;
  }

  else
  {
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      goto LABEL_7;
    }

    v8 = HMFGetLogIdentifier();
    *buf = 138543362;
    v18 = v8;
    v9 = "%{public}@Successfully updated ACL";
    v10 = v7;
    v11 = OS_LOG_TYPE_INFO;
    v12 = 12;
  }

  _os_log_impl(&dword_22AEAE000, v10, v11, v9, buf, v12);

LABEL_7:
  objc_autoreleasePoolPop(v4);
  if (HAPIsInternalBuild())
  {
    v13 = objc_alloc_init(MEMORY[0x277CD54D8]);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __94__HMMTRAccessoryServer_updateAccessoryControlToAdministratorNodes_sharedUserNodes_completion___block_invoke_836;
    v16[3] = &unk_2786F0008;
    v14 = *(a1 + 40);
    v16[4] = *(a1 + 32);
    [v14 readAttributeACLWithParams:v13 completion:v16];
  }

  (*(*(a1 + 48) + 16))();

  v15 = *MEMORY[0x277D85DE8];
}

void __94__HMMTRAccessoryServer_updateAccessoryControlToAdministratorNodes_sharedUserNodes_completion___block_invoke_836(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  v10 = v9;
  if (v6)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v14 = 138543618;
      v15 = v11;
      v16 = 2112;
      v17 = v6;
      _os_log_impl(&dword_22AEAE000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to read ACL. Error: %@", &v14, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v14 = 138543618;
      v15 = v12;
      v16 = 2112;
      v17 = v5;
      _os_log_impl(&dword_22AEAE000, v10, OS_LOG_TYPE_INFO, "%{public}@Successfully read ACL as %@", &v14, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    [HMMTRUtilities printAccessControlList:v5];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_getCommissioneeHasActiveNetworkWithNetworkCommissioningCluster:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HMMTRAccessoryServer *)self commissioneeNetworks];

  if (v8)
  {
    v7[2](v7, [(HMMTRAccessoryServer *)self commissioneeHasActiveNetwork], 0);
  }

  else
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __99__HMMTRAccessoryServer__getCommissioneeHasActiveNetworkWithNetworkCommissioningCluster_completion___block_invoke;
    v9[3] = &unk_2786EFA38;
    v9[4] = self;
    v10 = v7;
    [v6 readAttributeNetworksWithCompletion:v9];
  }
}

void __99__HMMTRAccessoryServer__getCommissioneeHasActiveNetworkWithNetworkCommissioningCluster_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v29 = *MEMORY[0x277D85DE8];
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
      *buf = 138543618;
      v26 = v10;
      v27 = 2112;
      v28 = v6;
      _os_log_impl(&dword_22AEAE000, v9, OS_LOG_TYPE_ERROR, "%{public}@Failed to read networks attribute from commissionee: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
  }

  [*(a1 + 32) setCommissioneeNetworks:v5];
  [*(a1 + 32) setCommissioneeHasActiveNetwork:0];
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v11 = v5;
  v12 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v21;
    v15 = MEMORY[0x277CBEC38];
    do
    {
      v16 = 0;
      do
      {
        if (*v21 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v17 = [*(*(&v20 + 1) + 8 * v16) connected];
        v18 = [v17 isEqual:v15];

        if (v18)
        {
          [*(a1 + 32) setCommissioneeHasActiveNetwork:1];
        }

        ++v16;
      }

      while (v13 != v16);
      v13 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v13);
  }

  (*(*(a1 + 40) + 16))(*(a1 + 40), [*(a1 + 32) commissioneeHasActiveNetwork], v6);
  v19 = *MEMORY[0x277D85DE8];
}

- (void)_getCommissioneeNetworkCommissioningClusterEndpointWithDevice:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HMMTRAccessoryServer *)self commissioneeNetworkCommissioningClusterEndpoint];

  if (v8)
  {
    v9 = [(HMMTRAccessoryServer *)self commissioneeNetworkCommissioningClusterEndpoint];
    v7[2](v7, v9, 0);
  }

  else
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __97__HMMTRAccessoryServer__getCommissioneeNetworkCommissioningClusterEndpointWithDevice_completion___block_invoke;
    v10[3] = &unk_2786F1038;
    v13 = v7;
    v11 = v6;
    v12 = self;
    [(HMMTRAccessoryServer *)self _retrieveRootEndpointPartsListWithDevice:v11 completion:v10];
  }
}

void __97__HMMTRAccessoryServer__getCommissioneeNetworkCommissioningClusterEndpointWithDevice_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = +[HMMTRDescriptorClusterManager sharedManager];
    v5 = *(a1 + 32);
    v6 = [*(a1 + 40) clientQueue];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __97__HMMTRAccessoryServer__getCommissioneeNetworkCommissioningClusterEndpointWithDevice_completion___block_invoke_2;
    v8[3] = &unk_2786F0F48;
    v7 = *(a1 + 48);
    v8[4] = *(a1 + 40);
    v9 = v7;
    [v4 endpointForClusterID:&unk_283EE8BC8 device:v5 partsList:v3 callbackQueue:v6 completionHandler:v8];
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

void __97__HMMTRAccessoryServer__getCommissioneeNetworkCommissioningClusterEndpointWithDevice_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  [v5 setCommissioneeNetworkCommissioningClusterEndpoint:v7];
  (*(*(a1 + 40) + 16))();
}

- (void)_retrieveRootEndpointPartsListWithDevice:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HMMTRAccessoryServer *)self rootEndpointPartsList];

  if (v8)
  {
    v9 = [(HMMTRAccessoryServer *)self rootEndpointPartsList];
    v7[2](v7, v9, 0);
  }

  else
  {
    v10 = objc_alloc(MEMORY[0x277CD51F0]);
    v11 = [(HAPAccessoryServer *)self clientQueue];
    v12 = [v10 initWithDevice:v6 endpoint:0 queue:v11];

    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __76__HMMTRAccessoryServer__retrieveRootEndpointPartsListWithDevice_completion___block_invoke;
    v13[3] = &unk_2786EFA38;
    v13[4] = self;
    v14 = v7;
    [v12 readAttributePartsListWithCompletionHandler:v13];
  }
}

void __76__HMMTRAccessoryServer__retrieveRootEndpointPartsListWithDevice_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (!v5)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 32);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v12 = 138543618;
      v13 = v10;
      v14 = 2112;
      v15 = v6;
      _os_log_impl(&dword_22AEAE000, v9, OS_LOG_TYPE_ERROR, "%{public}@Failed to read parts list for endpoint 0: %@", &v12, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
  }

  [*(a1 + 32) setRootEndpointPartsList:v5];
  (*(*(a1 + 40) + 16))();

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_collectNetworkCredentials:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543362;
    v31 = v8;
    _os_log_impl(&dword_22AEAE000, v7, OS_LOG_TYPE_INFO, "%{public}@Checking what network technology is supported for the accessory.", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  [(HMMTRAccessoryServer *)v6 setPairingProgress:2];
  v9 = [(HMMTRAccessoryServer *)v6 deviceController];
  v10 = [(HMMTRAccessoryServer *)v6 nodeID];
  v29 = 0;
  v11 = [v9 getDeviceBeingCommissioned:objc_msgSend(v10 error:{"unsignedLongLongValue"), &v29}];
  v12 = v29;

  if (v11)
  {
    v13 = [v11 sessionTransportType] == 2;
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __51__HMMTRAccessoryServer__collectNetworkCredentials___block_invoke;
    v27[3] = &unk_2786EFF68;
    v27[4] = v6;
    v28 = v9;
    v14 = MEMORY[0x2318887D0](v27);
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __51__HMMTRAccessoryServer__collectNetworkCredentials___block_invoke_2;
    v22[3] = &unk_2786EFFE0;
    v22[4] = v6;
    v25 = v14;
    v23 = v11;
    v26 = v13;
    v24 = v4;
    v15 = v14;
    [(HMMTRAccessoryServer *)v6 _getCommissioneeNetworkCommissioningClusterEndpointWithDevice:v23 completion:v22];
  }

  else
  {
    v16 = objc_autoreleasePoolPush();
    v17 = v6;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543618;
      v31 = v19;
      v32 = 2112;
      v33 = v12;
      _os_log_impl(&dword_22AEAE000, v18, OS_LOG_TYPE_INFO, "%{public}@Failed to check supported network technologies for server. Error: %@...", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v16);
    v20 = [HMMTRAccessoryPairingEndContext mtrContextWithStep:3 error:v12];
    [(HMMTRAccessoryServer *)v17 _pairingComplete:v12 context:v20];
  }

  v21 = *MEMORY[0x277D85DE8];
}

void __51__HMMTRAccessoryServer__collectNetworkCredentials___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v24 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v8)
  {
    v10 = objc_autoreleasePoolPush();
    v11 = *(a1 + 32);
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543618;
      v21 = v13;
      v22 = 2112;
      v23 = v8;
      _os_log_impl(&dword_22AEAE000, v12, OS_LOG_TYPE_ERROR, "%{public}@Failed to collect required credentials for accessory. Error: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    v14 = *(a1 + 40);
    v15 = [*(a1 + 32) nodeID];
    [v14 stopDevicePairing:objc_msgSend(v15 error:{"unsignedLongLongValue"), 0}];

    [*(a1 + 32) _pairingComplete:v8 context:v9];
  }

  else
  {
    v16 = *(a1 + 32);
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __51__HMMTRAccessoryServer__collectNetworkCredentials___block_invoke_819;
    v18[3] = &unk_2786EF9E0;
    v18[4] = v16;
    v19 = v7;
    [v16 _fetchAdditionalThreadNetworkInformationWithCompletion:v18];
  }

  v17 = *MEMORY[0x277D85DE8];
}

void __51__HMMTRAccessoryServer__collectNetworkCredentials___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v39 = *MEMORY[0x277D85DE8];
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
      *buf = 138543618;
      v36 = v10;
      v37 = 2112;
      v38 = v6;
      _os_log_impl(&dword_22AEAE000, v9, OS_LOG_TYPE_ERROR, "%{public}@Failed to query endpoints for network commissioning cluster : %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    v11 = [HMMTRAccessoryPairingEndContext mtrContextWithStep:3 error:v6];
    [*(a1 + 32) _pairingComplete:v6 context:v11];
  }

  else
  {
    v11 = objc_alloc_init(MEMORY[0x277CD5300]);
    v12 = [*(a1 + 32) browser];
    v13 = [v12 attestationStatus];
    [v13 populateDelegate:v11];

    if ([*(a1 + 32) _populateCommissioningParameterCountryCode:v11])
    {
      v14 = objc_autoreleasePoolPush();
      v15 = *(a1 + 32);
      v16 = HMFGetOSLogHandle();
      v17 = v16;
      if (v5)
      {
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          v18 = HMFGetLogIdentifier();
          *buf = 138543618;
          v36 = v18;
          v37 = 2112;
          v38 = v5;
          _os_log_impl(&dword_22AEAE000, v17, OS_LOG_TYPE_DEBUG, "%{public}@Found network commissioning cluster at endpoint: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v14);
        v19 = objc_alloc(MEMORY[0x277CD5200]);
        v20 = *(a1 + 40);
        v21 = [v5 unsignedIntValue];
        v22 = [*(a1 + 32) clientQueue];
        v23 = [v19 initWithDevice:v20 endpoint:v21 queue:v22];

        objc_initWeak(buf, *(a1 + 32));
        v24 = *(a1 + 32);
        v28[0] = MEMORY[0x277D85DD0];
        v28[1] = 3221225472;
        v28[2] = __51__HMMTRAccessoryServer__collectNetworkCredentials___block_invoke_823;
        v28[3] = &unk_2786EFFB8;
        v28[4] = v24;
        v34 = *(a1 + 64);
        v25 = v23;
        v29 = v25;
        objc_copyWeak(&v33, buf);
        v32 = *(a1 + 56);
        v11 = v11;
        v30 = v11;
        v31 = *(a1 + 48);
        [v24 _getCommissioneeHasActiveNetworkWithNetworkCommissioningCluster:v25 completion:v28];

        objc_destroyWeak(&v33);
        objc_destroyWeak(buf);
      }

      else
      {
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          v26 = HMFGetLogIdentifier();
          *buf = 138543362;
          v36 = v26;
          _os_log_impl(&dword_22AEAE000, v17, OS_LOG_TYPE_INFO, "%{public}@Network commissioning cluster not found. Proceeding with on-network commissioning", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v14);
        (*(*(a1 + 56) + 16))();
      }
    }
  }

  v27 = *MEMORY[0x277D85DE8];
}

void __51__HMMTRAccessoryServer__collectNetworkCredentials___block_invoke_823(uint64_t a1, int a2, void *a3)
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = objc_autoreleasePoolPush();
  v7 = *(a1 + 32);
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v10 = *(a1 + 80);
    v11 = HMFBooleanToString();
    v12 = HMFBooleanToString();
    *buf = 138543874;
    *&buf[4] = v9;
    *&buf[12] = 2112;
    *&buf[14] = v11;
    *&buf[22] = 2112;
    v28 = v12;
    _os_log_impl(&dword_22AEAE000, v8, OS_LOG_TYPE_INFO, "%{public}@Commissionee over BLE: %@, has active network: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v6);
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  LOBYTE(v28) = 0;
  if (!v5 && a2 && (*(a1 + 80) & 1) == 0)
  {
    v13 = objc_autoreleasePoolPush();
    v14 = *(a1 + 32);
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      *v25 = 138543362;
      v26 = v16;
      _os_log_impl(&dword_22AEAE000, v15, OS_LOG_TYPE_INFO, "%{public}@Commissionee was already network commissioned. Skip network commissioning parameters.", v25, 0xCu);
    }

    objc_autoreleasePoolPop(v13);
    *(*&buf[8] + 24) = 1;
  }

  v17 = *(a1 + 40);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __51__HMMTRAccessoryServer__collectNetworkCredentials___block_invoke_824;
  v19[3] = &unk_2786EFF90;
  objc_copyWeak(&v24, (a1 + 72));
  v23 = buf;
  v22 = *(a1 + 64);
  v20 = *(a1 + 48);
  v21 = *(a1 + 56);
  [v17 readAttributeFeatureMapWithCompletionHandler:v19];

  objc_destroyWeak(&v24);
  _Block_object_dispose(buf, 8);

  v18 = *MEMORY[0x277D85DE8];
}

void __51__HMMTRAccessoryServer__collectNetworkCredentials___block_invoke_824(uint64_t a1, void *a2, void *a3)
{
  v41 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v8 = WeakRetained;
  if (!v6)
  {
    v16 = [WeakRetained getSupportedLinkLayerTypesFromNetworkCommissioningClusterFeatureMap:v5];
    [v8 _setSupportedLinkLayerTypes:v16];
    if (v16)
    {
      [v8 _notifyDelegateOfSupportedLinkLayerTypes:v16];
    }

    if (*(*(*(a1 + 56) + 8) + 24) == 1)
    {
      goto LABEL_9;
    }

    v20 = [v5 integerValue];
    if ((v20 & 1) == 0)
    {
      if ((v20 & 2) != 0)
      {
        [v8 setLinkLayerType:4];
        if ((isFeatureMatteriPhoneOnlyPairingControlForThreadEnabled() & 1) != 0 || ![v8 shouldPairWithoutResident])
        {
          [v8 _populateThreadCredentials:*(a1 + 32) completion:*(a1 + 48)];
          goto LABEL_33;
        }

        v25 = [MEMORY[0x277CCA9B8] hapErrorWithCode:30];
        v26 = [HMMTRAccessoryPairingEndContext hmmtrContextWithStep:4 error:v25];
        (*(*(a1 + 48) + 16))();
      }

      else
      {
        if ((v20 & 4) != 0)
        {
          [v8 setLinkLayerType:2];
LABEL_9:
          v17 = *(a1 + 32);
          (*(*(a1 + 48) + 16))();
LABEL_33:

          goto LABEL_34;
        }

        v21 = objc_autoreleasePoolPush();
        v22 = v8;
        v23 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          v24 = HMFGetLogIdentifier();
          *buf = 138543618;
          v38 = v24;
          v39 = 2112;
          v40 = v5;
          _os_log_impl(&dword_22AEAE000, v23, OS_LOG_TYPE_ERROR, "%{public}@Accessory NetworkCommissioning cluster feature map has unsupported value: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v21);
        v25 = [MEMORY[0x277CCA9B8] hapErrorWithCode:15];
        v26 = [HMMTRAccessoryPairingEndContext hmmtrContextWithStep:3 error:v25];
        [v22 _pairingComplete:v25 context:v26];
      }

      goto LABEL_30;
    }

    [v8 setLinkLayerType:1];
    if (isFeatureMatterLocalFabricConfigEnabled() && ([v8 fabricUUID], (v27 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v28 = v27;
      v36 = [v8 browser];
      v29 = [v36 storage];
      v30 = [v29 dataSource];
      v31 = [v8 fabricUUID];
      v25 = [v30 appleHomeFabricWithTargetFabricUUID:v31];

      if (v25)
      {
        if ((isFeatureMatteriPhoneOnlyPairingControlForIPEnabled() & 1) == 0)
        {
          v32 = [v25 delegate];
          v33 = [v32 requiresRemoteFabricDataUpdate];

          if ((v33 & 1) == 0)
          {
            v26 = [MEMORY[0x277CCA9B8] hapErrorWithCode:35];
            v34 = [HMMTRAccessoryPairingEndContext hmmtrContextWithStep:5 error:v26];
            (*(*(a1 + 48) + 16))();

LABEL_30:
            goto LABEL_31;
          }
        }
      }
    }

    else
    {
      v25 = 0;
    }

    [v8 _populateWifiCredentials:*(a1 + 32) scanResults:*(a1 + 40) completion:*(a1 + 48)];
LABEL_31:

    goto LABEL_33;
  }

  v9 = *(*(*(a1 + 56) + 8) + 24);
  v10 = objc_autoreleasePoolPush();
  v11 = v8;
  v12 = HMFGetOSLogHandle();
  v13 = v12;
  if (v9 == 1)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543618;
      v38 = v14;
      v39 = 2112;
      v40 = v6;
      _os_log_impl(&dword_22AEAE000, v13, OS_LOG_TYPE_ERROR, "%{public}@Failed to check supported network technologies for server, but commissionee was already network commissioned. Ignoring error and continuing with pairing. Error: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    v15 = *(a1 + 32);
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      *buf = 138543618;
      v38 = v18;
      v39 = 2112;
      v40 = v6;
      _os_log_impl(&dword_22AEAE000, v13, OS_LOG_TYPE_INFO, "%{public}@Failed to check supported network technologies for server. Error: %@...", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    v19 = [HMMTRAccessoryPairingEndContext mtrContextWithStep:3 error:v6];
    [v11 _pairingComplete:v6 context:v19];
  }

LABEL_34:

  v35 = *MEMORY[0x277D85DE8];
}

uint64_t __51__HMMTRAccessoryServer__collectNetworkCredentials___block_invoke_819(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v2, "isWEDDevice")}];
  [v2 _notifyDelegateOfMatterAccessoryIsWEDAccessory:v3];

  v4 = *(a1 + 32);
  v5 = *(a1 + 40);

  return [v4 _commissionWithParams:v5];
}

- (void)_setSupportedLinkLayerTypes:(id)a3
{
  v39 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      v10 = [(HMMTRAccessoryServer *)v7 nodeID];
      *buf = 138543618;
      v30 = v9;
      v31 = 2112;
      v32 = v10;
      v11 = "%{public}@Nil supported link layer types - cannot determine supported link layer for accessory with nodeID %@";
      goto LABEL_7;
    }

LABEL_8:

    objc_autoreleasePoolPop(v6);
    goto LABEL_12;
  }

  if ([v4 isEqualToValue:&unk_283EE89B8])
  {
    v6 = objc_autoreleasePoolPush();
    v7 = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      v10 = [(HMMTRAccessoryServer *)v7 nodeID];
      *buf = 138543618;
      v30 = v9;
      v31 = 2112;
      v32 = v10;
      v11 = "%{public}@No supported link layer types - cannot determine supported link layer for accessory with nodeID %@";
LABEL_7:
      _os_log_impl(&dword_22AEAE000, v8, OS_LOG_TYPE_ERROR, v11, buf, 0x16u);

      goto LABEL_8;
    }

    goto LABEL_8;
  }

  [HMMTRUtilities supportedLinkLayerTypesContainsWiFi:v5];
  [HMMTRUtilities supportedLinkLayerTypesContainsEthernet:v5];
  [HMMTRUtilities supportedLinkLayerTypesContainsThread:v5];
  v12 = objc_autoreleasePoolPush();
  v13 = self;
  v14 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = HMFGetLogIdentifier();
    v16 = HMFBooleanToString();
    v17 = HMFBooleanToString();
    v18 = HMFBooleanToString();
    *buf = 138544386;
    v30 = v15;
    v31 = 2112;
    v32 = v5;
    v33 = 2112;
    v34 = v16;
    v35 = 2112;
    v36 = v17;
    v37 = 2112;
    v38 = v18;
    _os_log_impl(&dword_22AEAE000, v14, OS_LOG_TYPE_INFO, "%{public}@Accessory supported link layer types: %@ [WiFi:%@, Ethernet:%@, Thread:%@]", buf, 0x34u);
  }

  objc_autoreleasePoolPop(v12);
  [(HMMTRAccessoryServer *)v13 setSupportedLinkLayerTypes:v5];
  v19 = [(HMMTRAccessoryServer *)v13 browser];
  v20 = [v19 storage];
  v21 = [v20 dataSource];
  v22 = [(HMMTRAccessoryServer *)v13 fabricUUID];
  v23 = [v21 storageDataSourceForFabricUUID:v22];

  v24 = [(HMMTRAccessoryServer *)v13 nodeID];
  v25 = [v23 storageDataSourceForDeviceWithNodeID:v24];
  v26 = [(HMMTRAccessoryServer *)v13 supportedLinkLayerTypes];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __52__HMMTRAccessoryServer__setSupportedLinkLayerTypes___block_invoke;
  v28[3] = &unk_2786EF290;
  v28[4] = v13;
  [v25 updateSupportedLinkLayerTypes:v26 completion:v28];

LABEL_12:
  v27 = *MEMORY[0x277D85DE8];
}

void __52__HMMTRAccessoryServer__setSupportedLinkLayerTypes___block_invoke(uint64_t a1, void *a2)
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
      v8 = [*(a1 + 32) supportedLinkLayerTypes];
      v10 = 138543874;
      v11 = v7;
      v12 = 2112;
      v13 = v8;
      v14 = 2112;
      v15 = v3;
      _os_log_impl(&dword_22AEAE000, v6, OS_LOG_TYPE_ERROR, "%{public}@Failed to update supported link layer types in storage to %@ with error: %@", &v10, 0x20u);
    }

    objc_autoreleasePoolPop(v4);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)configureDefaultRequiresThreadRouter
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = [(HMMTRAccessoryServer *)self supportedLinkLayerTypes];
  v4 = [v3 unsignedIntValue] & 0x10;

  v5 = [(HMMTRAccessoryServer *)self isWEDDevice];
  v6 = [(HMMTRAccessoryServer *)self browser];
  v7 = [v6 threadRadioManager];
  v8 = [v7 deviceSupportsThreadService];

  [(HMMTRAccessoryServer *)self setRequiresThreadRouter:(v8 & v5 ^ 1) & (v4 >> 4)];
  v9 = objc_autoreleasePoolPush();
  v10 = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v12 = HMFGetLogIdentifier();
    [(HMMTRAccessoryServer *)v10 requiresThreadRouter];
    v13 = HMFBooleanToString();
    v14 = HMFBooleanToString();
    v15 = HMFBooleanToString();
    v16 = HMFBooleanToString();
    v18 = 138544386;
    v19 = v12;
    v20 = 2112;
    v21 = v13;
    v22 = 2112;
    v23 = v14;
    v24 = 2112;
    v25 = v15;
    v26 = 2112;
    v27 = v16;
    _os_log_impl(&dword_22AEAE000, v11, OS_LOG_TYPE_DEBUG, "%{public}@configureDefaultRequiresThreadRouter - accessory requires thread router = %@ (isAccessoryServerThreadCapable = %@, isDeviceThreadCapable = %@, isWEDDevice = %@", &v18, 0x34u);
  }

  objc_autoreleasePoolPop(v9);
  v17 = *MEMORY[0x277D85DE8];
}

- (void)setSupportedLinkLayerTypes:(id)a3
{
  v4 = a3;
  v5 = *MEMORY[0x277CFECD8];
  os_unfair_lock_lock_with_options();
  supportedLinkLayerTypes = self->_supportedLinkLayerTypes;
  self->_supportedLinkLayerTypes = v4;

  os_unfair_lock_unlock((self + v5));
}

- (NSNumber)supportedLinkLayerTypes
{
  v3 = *MEMORY[0x277CFECD8];
  os_unfair_lock_lock_with_options();
  v4 = self->_supportedLinkLayerTypes;
  os_unfair_lock_unlock((self + v3));

  return v4;
}

- (NSDictionary)endpointToDeviceTypesMap
{
  v3 = *MEMORY[0x277CFECD8];
  os_unfair_lock_lock_with_options();
  v4 = self->_endpointToDeviceTypesMap;
  os_unfair_lock_unlock((self + v3));

  return v4;
}

- (void)setEndpointToDeviceTypesMap:(id)a3
{
  v7 = a3;
  v4 = *MEMORY[0x277CFECD8];
  os_unfair_lock_lock_with_options();
  v5 = [v7 copy];
  endpointToDeviceTypesMap = self->_endpointToDeviceTypesMap;
  self->_endpointToDeviceTypesMap = v5;

  os_unfair_lock_unlock((self + v4));
}

- (BOOL)_populateCommissioningParameterCountryCode:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMMTRAccessoryServer *)self browser];
  v6 = [v5 regulatoryInfo];
  v7 = [v6 countryCode];
  [v4 setCountryCode:v7];

  v8 = [v4 countryCode];

  if (!v8)
  {
    v9 = objc_autoreleasePoolPush();
    v10 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      v15 = 138543362;
      v16 = v12;
      _os_log_impl(&dword_22AEAE000, v11, OS_LOG_TYPE_ERROR, "%{public}@Country code could not be estimated. Moving on with pairing without country code.", &v15, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
  }

  v13 = *MEMORY[0x277D85DE8];
  return 1;
}

- (void)_commissionWithParams:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = [(HMMTRAccessoryServer *)v6 nodeID];
    *buf = 138543618;
    v22 = v8;
    v23 = 2112;
    v24 = v9;
    _os_log_impl(&dword_22AEAE000, v7, OS_LOG_TYPE_INFO, "%{public}@Requesting to commission device(%@).", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  [v4 setReadEndpointInformation:1];
  [(HMMTRAccessoryServer *)v6 _startCurrentMetricTimeWithName:@"hmmtrAccessoryMetricNameCommissioningAccessory"];
  [(HMMTRAccessoryServer *)v6 _notifyDelegateOfPairingProgress:27];
  [(HMMTRAccessoryServer *)v6 _notifyDelegateOfPairingStep:6];
  v10 = [(HMMTRAccessoryServer *)v6 nodeID];
  v11 = [(HMMTRAccessoryServer *)v6 controllerWrapper];
  v12 = [v11 startupParams];
  v13 = [v12 operationalCertificateIssuer];

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

  [v15 setCommissioneeNodeID:v10];
  v16 = [(HMMTRAccessoryServer *)v6 deviceController];
  v17 = [(HMMTRAccessoryServer *)v6 nodeID];
  v20 = 0;
  [v16 commissionDevice:objc_msgSend(v17 commissioningParams:"unsignedLongLongValue") error:{v4, &v20}];
  v18 = v20;

  if (v18)
  {
    [(HMMTRAccessoryServer *)v6 setCommissionCompletePending:0];
    [(HMMTRAccessoryServer *)v6 _notifyDelegateOfPairingProgress:29 error:v18];
  }

  else
  {
    [(HMMTRAccessoryServer *)v6 setCommissionCompletePending:1];
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)_handlePairingFailureWithError:(id)a3 context:(id)a4
{
  v59 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543874;
    v54 = v11;
    v55 = 2112;
    v56 = v6;
    v57 = 2112;
    v58 = v7;
    _os_log_impl(&dword_22AEAE000, v10, OS_LOG_TYPE_ERROR, "%{public}@Cleaning up state due to pairing failure error %@ context %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  [(HMMTRAccessoryServer *)v9 _clearCommissioneeInfoAfterPairingCompletion];
  v12 = [HMMTRAccessoryServer _convertPairingFailureError:v6];

  [(HMMTRAccessoryServer *)v9 setPairingProgress:3];
  if ([(HMMTRAccessoryServer *)v9 pairedState]== 1)
  {
    v13 = [(HMMTRAccessoryServer *)v9 stageCompletion];

    if (v13)
    {
      v14 = [(HMMTRAccessoryServer *)v9 stageCompletion];
      (v14)[2](v14, 0, 0, v12);

      [(HMMTRAccessoryServer *)v9 setStageCompletion:0];
    }

    else
    {
      v15 = objc_autoreleasePoolPush();
      v16 = v9;
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = HMFGetLogIdentifier();
        *buf = 138543362;
        v54 = v18;
        _os_log_impl(&dword_22AEAE000, v17, OS_LOG_TYPE_ERROR, "%{public}@CHIP Accessory is staged but has no stage completion handler set!", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v15);
    }
  }

  [(HMMTRAccessoryServer *)v9 setRemoveReason:v12 pairingEndContextWhenRemove:v7];
  v19 = [(HAPAccessoryServer *)v9 clientQueue];
  [(HMMTRAccessoryServer *)v9 _unpair:v19 completion:0];

  v20 = [(HAPAccessoryServer *)v9 delegateQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__HMMTRAccessoryServer__handlePairingFailureWithError_context___block_invoke;
  block[3] = &unk_2786EF3C8;
  block[4] = v9;
  v21 = v12;
  v51 = v21;
  v22 = v7;
  v52 = v22;
  dispatch_async(v20, block);

  if (isFeatureMatteriPhoneOnlyPairingControlEnabled())
  {
    v23 = objc_autoreleasePoolPush();
    v24 = v9;
    v25 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      v26 = HMFGetLogIdentifier();
      *buf = 138543362;
      v54 = v26;
      _os_log_impl(&dword_22AEAE000, v25, OS_LOG_TYPE_DEBUG, "%{public}@Resetting storage state after pairing failure", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v23);
    v27 = [(HMMTRAccessoryServer *)v24 browser];
    [v27 setUpBrowserTargetFabricAndRediscoverAccessoriesForHomeFabricUUID:0];

    v28 = [(HMMTRAccessoryServer *)v24 browser];
    [v28 disableUnrestrictedOperationsForAccessoryServer:v24];

    v29 = [(HMMTRAccessoryServer *)v24 browser];
    [v29 resumeAllOperations];

    v30 = [(HMMTRAccessoryServer *)v24 fabricUUID];
    if (v30)
    {
      v31 = [(HMMTRAccessoryServer *)v24 browser];
      v32 = [v31 storage];
      v33 = [v32 dataSource];
      v34 = [(HMMTRAccessoryServer *)v24 fabricUUID];
      v35 = [v33 appleHomeFabricWithTargetFabricUUID:v34];
    }

    else
    {
      v35 = 0;
    }

    v36 = [(HMMTRAccessoryServer *)v24 browser];
    v37 = [v36 isCurrentDeviceAllowedAccessoryControlDespiteReachableResidentForFabric:v35];

    if (v37)
    {
      v38 = [(HMMTRAccessoryServer *)v24 browser];
      v39 = [v38 threadRadioManager];
      v49[0] = MEMORY[0x277D85DD0];
      v49[1] = 3221225472;
      v49[2] = __63__HMMTRAccessoryServer__handlePairingFailureWithError_context___block_invoke_817;
      v49[3] = &unk_2786EF290;
      v49[4] = v24;
      [v39 stopAccessoryPairingWithCompletion:v49];

      if ([(HMMTRAccessoryServer *)v24 isWEDDevice])
      {
        v40 = [(HMMTRAccessoryServer *)v24 eMACAddress];

        if (v40)
        {
          v41 = objc_autoreleasePoolPush();
          v42 = v24;
          v43 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
          {
            v44 = HMFGetLogIdentifier();
            *buf = 138543618;
            v54 = v44;
            v55 = 2112;
            v56 = v42;
            _os_log_impl(&dword_22AEAE000, v43, OS_LOG_TYPE_INFO, "%{public}@Disconnecting from WED accessory %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v41);
          v45 = [(HMMTRAccessoryServer *)v42 browser];
          v46 = [v45 threadRadioManager];
          v48[0] = MEMORY[0x277D85DD0];
          v48[1] = 3221225472;
          v48[2] = __63__HMMTRAccessoryServer__handlePairingFailureWithError_context___block_invoke_818;
          v48[3] = &unk_2786EF290;
          v48[4] = v42;
          [v46 disconnectFromWEDAccessory:v42 completion:v48];
        }
      }
    }
  }

  v47 = *MEMORY[0x277D85DE8];
}

void __63__HMMTRAccessoryServer__handlePairingFailureWithError_context___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) delegate];
  if ([v2 conformsToProtocol:&unk_283F236B0])
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
    [v4 accessoryServer:*(a1 + 32) didStopPairingWithError:*(a1 + 40) matterPairingEndContext:*(a1 + 48)];
  }

  else
  {
    v5 = objc_autoreleasePoolPush();
    v6 = *(a1 + 32);
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      v10 = 138543362;
      v11 = v8;
      _os_log_impl(&dword_22AEAE000, v7, OS_LOG_TYPE_ERROR, "%{public}@Unable to find delegate confirming to HAPAccessoryServerMTRDelegatePrivate", &v10, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __63__HMMTRAccessoryServer__handlePairingFailureWithError_context___block_invoke_817(uint64_t a1, void *a2)
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
    _os_log_impl(&dword_22AEAE000, v6, OS_LOG_TYPE_INFO, "%{public}@Thread StopAccessoryPairing completed, error: %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  v8 = *MEMORY[0x277D85DE8];
}

void __63__HMMTRAccessoryServer__handlePairingFailureWithError_context___block_invoke_818(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v8 = *(a1 + 32);
    v9 = [v8 eMACAddress];
    v11 = 138544130;
    v12 = v7;
    v13 = 2112;
    v14 = v8;
    v15 = 2112;
    v16 = v9;
    v17 = 2112;
    v18 = v3;
    _os_log_impl(&dword_22AEAE000, v6, OS_LOG_TYPE_INFO, "%{public}@Disconnect from WED accessory %@ with emac %@ completed, error %@", &v11, 0x2Au);
  }

  objc_autoreleasePoolPop(v4);
  v10 = *MEMORY[0x277D85DE8];
}

- (void)_buildHAPCategoriesFromCHIPWithCompletionHandler:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(HMMTRAccessoryServer *)self operationDisabled])
  {
    v5 = objc_autoreleasePoolPush();
    v6 = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      *buf = 138543362;
      v22 = v8;
      _os_log_impl(&dword_22AEAE000, v7, OS_LOG_TYPE_INFO, "%{public}@Accessory server operations disabled. Aborting building HAP categories.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
    v9 = [MEMORY[0x277CCA9B8] hapErrorWithCode:1];
    v4[2](v4, v9);
  }

  else
  {
    v10 = random();
    v11 = objc_autoreleasePoolPush();
    v12 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543618;
      v22 = v14;
      v23 = 2048;
      v24 = v10;
      _os_log_impl(&dword_22AEAE000, v13, OS_LOG_TYPE_INFO, "%{public}@Characteristics Operation Queue: Category build job(%lu) queued.", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __73__HMMTRAccessoryServer__buildHAPCategoriesFromCHIPWithCompletionHandler___block_invoke;
    v18[3] = &unk_2786EFF18;
    v18[4] = v12;
    v20 = v10;
    v19 = v4;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __73__HMMTRAccessoryServer__buildHAPCategoriesFromCHIPWithCompletionHandler___block_invoke_816;
    v16[3] = &unk_2786F0BC0;
    v17 = v19;
    [(HMMTRAccessoryServer *)v12 queueAccessoryOperation:v18 highPriority:0 completion:v16];
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __73__HMMTRAccessoryServer__buildHAPCategoriesFromCHIPWithCompletionHandler___block_invoke(uint64_t a1)
{
  v40 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 48);
    *buf = 138543618;
    v37 = v5;
    v38 = 2048;
    v39 = v6;
    _os_log_impl(&dword_22AEAE000, v4, OS_LOG_TYPE_INFO, "%{public}@Characteristics Operation Queue: Category build job(%lu) started.", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v7 = dispatch_group_create();
  dispatch_group_enter(v7);
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __73__HMMTRAccessoryServer__buildHAPCategoriesFromCHIPWithCompletionHandler___block_invoke_811;
  v33[3] = &unk_2786EF8A0;
  v35 = *(a1 + 40);
  v8 = v7;
  v34 = v8;
  v9 = MEMORY[0x2318887D0](v33);
  v10 = [*(a1 + 32) deviceController];
  v11 = [v10 isRunning];
  v12 = *(a1 + 32);
  if (v11)
  {
    v13 = [*(a1 + 32) nodeID];
    v14 = [v12 mtrBaseDeviceWithNodeID:v13 controller:v10];

    if (v14)
    {
      v15 = *(a1 + 32);
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __73__HMMTRAccessoryServer__buildHAPCategoriesFromCHIPWithCompletionHandler___block_invoke_812;
      v27[3] = &unk_2786F0EA8;
      v27[4] = v15;
      v28 = v14;
      v29 = v9;
      [v15 dispatchBlock:v27];
    }

    else
    {
      v18 = objc_autoreleasePoolPush();
      v19 = *(a1 + 32);
      v20 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v21 = HMFGetLogIdentifier();
        *buf = 138543362;
        v37 = v21;
        _os_log_impl(&dword_22AEAE000, v20, OS_LOG_TYPE_ERROR, "%{public}@Could not retrieve hap category because of no device", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v18);
      v22 = [MEMORY[0x277CCA9B8] errorWithDomain:@"HMMTRProtocolOperationErrorDomain" code:0 userInfo:0];
      (v9)[2](v9, v22);
    }

    v23 = [*(a1 + 32) clientQueue];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __73__HMMTRAccessoryServer__buildHAPCategoriesFromCHIPWithCompletionHandler___block_invoke_815;
    v26[3] = &unk_2786EF620;
    v24 = *(a1 + 48);
    v26[4] = *(a1 + 32);
    v26[5] = v24;
    dispatch_group_notify(v8, v23, v26);
  }

  else
  {
    v16 = [*(a1 + 32) clientQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __73__HMMTRAccessoryServer__buildHAPCategoriesFromCHIPWithCompletionHandler___block_invoke_2;
    block[3] = &unk_2786EFF18;
    v17 = v9;
    block[4] = *(a1 + 32);
    v31 = v17;
    v32 = *(a1 + 48);
    dispatch_async(v16, block);

    v14 = v31;
  }

  v25 = *MEMORY[0x277D85DE8];
}

uint64_t __73__HMMTRAccessoryServer__buildHAPCategoriesFromCHIPWithCompletionHandler___block_invoke_816(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

void __73__HMMTRAccessoryServer__buildHAPCategoriesFromCHIPWithCompletionHandler___block_invoke_811(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  dispatch_group_leave(v2);
}

void __73__HMMTRAccessoryServer__buildHAPCategoriesFromCHIPWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  v3 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CD5120] code:6 userInfo:0];
  (*(v2 + 16))(v2, v3);

  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v8 = *(a1 + 48);
    v10 = 138543618;
    v11 = v7;
    v12 = 2048;
    v13 = v8;
    _os_log_impl(&dword_22AEAE000, v6, OS_LOG_TYPE_INFO, "%{public}@Characteristics Operation Queue: Category build job(%lu) complete.", &v10, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  v9 = *MEMORY[0x277D85DE8];
}

void __73__HMMTRAccessoryServer__buildHAPCategoriesFromCHIPWithCompletionHandler___block_invoke_812(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __73__HMMTRAccessoryServer__buildHAPCategoriesFromCHIPWithCompletionHandler___block_invoke_2_813;
  v7[3] = &unk_2786F1038;
  v4 = *(a1 + 48);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v9 = v4;
  v7[4] = v5;
  v8 = v6;
  [v2 _retrieveRootEndpointPartsListWithDevice:v3 completion:v7];
}

void __73__HMMTRAccessoryServer__buildHAPCategoriesFromCHIPWithCompletionHandler___block_invoke_815(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 40);
    v8 = 138543618;
    v9 = v5;
    v10 = 2048;
    v11 = v6;
    _os_log_impl(&dword_22AEAE000, v4, OS_LOG_TYPE_INFO, "%{public}@Characteristics Operation Queue: Category build job(%lu) complete.", &v8, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v7 = *MEMORY[0x277D85DE8];
}

void __73__HMMTRAccessoryServer__buildHAPCategoriesFromCHIPWithCompletionHandler___block_invoke_2_813(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a3)
  {
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v6 = [*(a1 + 32) descriptorClusterManager];
    v7 = v6[2]();
    v8 = *(a1 + 40);
    v9 = [*(a1 + 32) nodeID];
    v10 = *(a1 + 32);
    v11 = [v10 clientQueue];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __73__HMMTRAccessoryServer__buildHAPCategoriesFromCHIPWithCompletionHandler___block_invoke_3;
    v12[3] = &unk_2786EFF40;
    v12[4] = *(a1 + 32);
    v13 = *(a1 + 48);
    [v7 fetchHAPCategoryForCHIPDevice:v8 nodeId:v9 server:v10 partsList:v5 callbackQueue:v11 completionHandler:v12];
  }
}

void __73__HMMTRAccessoryServer__buildHAPCategoriesFromCHIPWithCompletionHandler___block_invoke_3(uint64_t a1, void *a2, void *a3, void *a4)
{
  v9 = a2;
  v7 = a3;
  v8 = a4;
  if (v9)
  {
    [*(a1 + 32) _setCategoryForPrimaryAccessory:v9];
  }

  if (v7)
  {
    [*(a1 + 32) setEndpointToDeviceTypesMap:v7];
  }

  (*(*(a1 + 40) + 16))();
}

- (void)_rebuildHAPServicesFromCHIPWithCompletionHandler:(id)a3
{
  v37 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMMTRAccessoryServer *)self operationDisabled];
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
      v36 = v10;
      _os_log_impl(&dword_22AEAE000, v8, OS_LOG_TYPE_INFO, "%{public}@Accessory server operations disabled. Aborting rebuilding HAP services.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    if (v4)
    {
      v11 = [MEMORY[0x277CCA9B8] hapErrorWithCode:1];
      v4[2](v4, v11);
    }
  }

  else
  {
    if (v9)
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543362;
      v36 = v12;
      _os_log_impl(&dword_22AEAE000, v8, OS_LOG_TYPE_INFO, "%{public}@Rebuilding HAP Services from MTRDevice cache", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __73__HMMTRAccessoryServer__rebuildHAPServicesFromCHIPWithCompletionHandler___block_invoke;
    v33[3] = &unk_2786EF8A0;
    v33[4] = v7;
    v13 = v4;
    v34 = v13;
    v14 = MEMORY[0x2318887D0](v33);
    [(HMMTRAccessoryServer *)v7 _setupMatterDevice];
    v15 = [(HMMTRAccessoryServer *)v7 matterDevice];
    v16 = [v15 deviceCachePrimed];

    if (v16)
    {
      [(HMMTRAccessoryServer *)v7 setServiceEnumerationInProgress:1];
      v17 = [(HMMTRAccessoryServer *)v7 descriptorClusterManager];
      v18 = v17[2]();
      v19 = [(HMMTRAccessoryServer *)v7 matterDevice];
      v20 = [(HMMTRAccessoryServer *)v7 nodeID];
      v21 = [(HAPAccessoryServer *)v7 clientQueue];
      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 3221225472;
      v31[2] = __73__HMMTRAccessoryServer__rebuildHAPServicesFromCHIPWithCompletionHandler___block_invoke_789;
      v31[3] = &unk_2786EFEF0;
      v31[4] = v7;
      v32 = v14;
      [v18 fetchHAPServicesWithMTRDevice:v19 nodeId:v20 server:v7 callbackQueue:v21 completionHandler:v31];
    }

    else
    {
      v22 = objc_autoreleasePoolPush();
      v23 = v7;
      v24 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        v25 = HMFGetLogIdentifier();
        *buf = 138543362;
        v36 = v25;
        _os_log_impl(&dword_22AEAE000, v24, OS_LOG_TYPE_INFO, "%{public}@Could not retrieve hap services because MTRDevice cache is not ready", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v22);
      [(HMMTRAccessoryServer *)v23 setFullServiceEnumerationPendingCachePrimedEvent:1];
      if (v13)
      {
        v26 = [(HMMTRAccessoryServer *)v23 serviceEnumerationFromDeviceCompletionHandlers];
        v27 = MEMORY[0x2318887D0](v13);
        [v26 addObject:v27];
      }

      v29[4] = v23;
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __73__HMMTRAccessoryServer__rebuildHAPServicesFromCHIPWithCompletionHandler___block_invoke_809;
      v30[3] = &unk_2786F0CA8;
      v30[4] = v23;
      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = __73__HMMTRAccessoryServer__rebuildHAPServicesFromCHIPWithCompletionHandler___block_invoke_810;
      v29[3] = &unk_2786EF290;
      [(HMMTRAccessoryServer *)v23 queueAccessoryOperation:v30 highPriority:0 completion:v29];
    }
  }

  v28 = *MEMORY[0x277D85DE8];
}

void __73__HMMTRAccessoryServer__rebuildHAPServicesFromCHIPWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  if (!v3)
  {
    [v4 setServicesEnumerated:1];
    goto LABEL_5;
  }

  if (([v4 servicesEnumerated] & 1) == 0)
  {
LABEL_5:
    [*(a1 + 32) setServiceEnumerationFailed:v3 != 0];
  }

  [*(a1 + 32) setFullServiceEnumerationPendingCachePrimedEvent:0];
  v5 = objc_autoreleasePoolPush();
  v6 = *(a1 + 32);
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543618;
    v30 = v8;
    v31 = 2112;
    v32 = v3;
    _os_log_impl(&dword_22AEAE000, v7, OS_LOG_TYPE_INFO, "%{public}@Completed rebuilding HAP services from MTRDevice cache with error: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [*(a1 + 32) serviceEnumerationFromDeviceCompletionHandlers];
  v10 = [v9 copy];

  v11 = [*(a1 + 32) serviceEnumerationFromDeviceCompletionHandlers];
  [v11 removeAllObjects];

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v12 = v10;
  v13 = [v12 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v25;
    do
    {
      v16 = 0;
      do
      {
        if (*v25 != v15)
        {
          objc_enumerationMutation(v12);
        }

        (*(*(*(&v24 + 1) + 8 * v16++) + 16))();
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v14);
  }

  v17 = *(a1 + 32);
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __73__HMMTRAccessoryServer__rebuildHAPServicesFromCHIPWithCompletionHandler___block_invoke_788;
  v21[3] = &unk_2786F0C10;
  v21[4] = v17;
  v18 = *(a1 + 40);
  v22 = v3;
  v23 = v18;
  v19 = v3;
  [v17 updateAllCharacteristicValuesPostHAPServiceEnumeration:v21];

  v20 = *MEMORY[0x277D85DE8];
}

void __73__HMMTRAccessoryServer__rebuildHAPServicesFromCHIPWithCompletionHandler___block_invoke_789(uint64_t a1, void *a2, int a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v177 = *MEMORY[0x277D85DE8];
  v13 = a2;
  v133 = a4;
  v134 = a5;
  v135 = a6;
  v139 = a7;
  v132 = a8;
  v136 = [HMMTRHAPServiceDescription descriptionsDictionaryFromAccessoryInfo:v13];
  v142 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v143 = v13;
  v14 = MEMORY[0x277CBEB18];
  v15 = [v13 accessoryInfoDictionary];
  v16 = [v15 allKeys];
  v17 = [v14 arrayWithArray:v16];

  [v17 sortUsingComparator:&__block_literal_global_792];
  v163 = 0u;
  v164 = 0u;
  v161 = 0u;
  v162 = 0u;
  obj = v17;
  v18 = [obj countByEnumeratingWithState:&v161 objects:v176 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v162;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v162 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v22 = *(*(&v161 + 1) + 8 * i);
        v23 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v22, "integerValue")}];
        v24 = [v143 nameForEndpoint:v23];
        v25 = v24;
        if (v24 && ![v24 isEqual:&stru_283ED2308] || (objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"%@,%@", @"Matter Accessory", v22), v26 = objc_claimAutoreleasedReturnValue(), v25, (v25 = v26) != 0))
        {
          [v142 setObject:v25 forKey:v22];
        }
      }

      v19 = [obj countByEnumeratingWithState:&v161 objects:v176 count:16];
    }

    while (v19);
  }

  if (![v136 count] && !a3)
  {
    v27 = objc_autoreleasePoolPush();
    v28 = a1;
    v29 = *(a1 + 32);
    v30 = HMFGetOSLogHandle();
    v31 = v134;
    if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
    {
      v32 = HMFGetLogIdentifier();
      *buf = 138543362;
      v171 = v32;
      _os_log_impl(&dword_22AEAE000, v30, OS_LOG_TYPE_INFO, "%{public}@The accessory contains no valid HAP services in endpoint hierarchy", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v27);
    [*(a1 + 32) _setCategoryForPrimaryAccessory:&unk_283EE89E8];
    v33 = *(a1 + 32);
    v34 = [v33 matterDevice];
    v144[0] = MEMORY[0x277D85DD0];
    v144[1] = 3221225472;
    v144[2] = __73__HMMTRAccessoryServer__rebuildHAPServicesFromCHIPWithCompletionHandler___block_invoke_807;
    v144[3] = &unk_2786F0C10;
    v35 = *(a1 + 40);
    v144[4] = *(a1 + 32);
    v146 = v35;
    v36 = v132;
    v145 = v132;
    [v33 _createFirmwareUpdateServiceWithInstanceID:10 device:v34 completionHandler:v144];

    v37 = v133;
    goto LABEL_81;
  }

  v28 = a1;
  v38 = [*(a1 + 32) nodeID];
  v31 = v134;
  v39 = [v134 storeForNodeId:v38 server:*(a1 + 32)];

  v40 = objc_autoreleasePoolPush();
  v41 = *(a1 + 32);
  v42 = HMFGetOSLogHandle();
  v43 = v42;
  v131 = v39;
  if (v39)
  {
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      v44 = HMFGetLogIdentifier();
      v45 = [*(a1 + 32) nodeID];
      *buf = 138543618;
      v171 = v44;
      v172 = 2112;
      v173 = v45;
      v46 = "%{public}@Failed to store device(%@) topology";
      v47 = v43;
      v48 = OS_LOG_TYPE_ERROR;
      v49 = 22;
LABEL_22:
      _os_log_impl(&dword_22AEAE000, v47, v48, v46, buf, v49);
    }
  }

  else if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
  {
    v44 = HMFGetLogIdentifier();
    v45 = [*(a1 + 32) nodeID];
    *buf = 138543874;
    v171 = v44;
    v172 = 2112;
    v173 = v45;
    v174 = 2112;
    v175 = v134;
    v46 = "%{public}@Successfully stored device(%@) topology: %@";
    v47 = v43;
    v48 = OS_LOG_TYPE_INFO;
    v49 = 32;
    goto LABEL_22;
  }

  objc_autoreleasePoolPop(v40);
  v50 = objc_autoreleasePoolPush();
  v51 = *(a1 + 32);
  v52 = HMFGetOSLogHandle();
  v53 = os_log_type_enabled(v52, OS_LOG_TYPE_INFO);
  if (a3)
  {
    if (v53)
    {
      v54 = HMFGetLogIdentifier();
      *buf = 138543618;
      v171 = v54;
      v172 = 2112;
      v173 = v143;
      _os_log_impl(&dword_22AEAE000, v52, OS_LOG_TYPE_INFO, "%{public}@Bridge services dictionary: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v50);
    v55 = [v136 mutableCopy];
    v37 = v133;
    v56 = [v133 stringValue];
    [v55 removeObjectForKey:v56];

    v57 = [*(a1 + 32) hapEnumerator];
    v58 = [*(a1 + 32) primaryAccessory];
    v169 = v58;
    v59 = [MEMORY[0x277CBEA60] arrayWithObjects:&v169 count:1];
    v130 = v55;
    v60 = [v57 enumerateBridgedAccessoriesFromAccessories:v59 serviceDescriptionsDictionary:v55 namesDictionary:v142 topology:v134 server:*(a1 + 32) legacyInstanceIDAssignment:0];

    v138 = v60;
    [*(a1 + 32) setAccessories:v60];
    [*(a1 + 32) _distinctEndpointsHavingHapServicesForTopology:v134];
    v157 = 0u;
    v158 = 0u;
    v159 = 0u;
    v61 = v160 = 0u;
    v62 = [v61 countByEnumeratingWithState:&v157 objects:v168 count:16];
    if (v62)
    {
      v63 = v62;
      v64 = *v158;
      do
      {
        for (j = 0; j != v63; ++j)
        {
          if (*v158 != v64)
          {
            objc_enumerationMutation(v61);
          }

          [*(a1 + 32) _updateDefaultEntriesForBridgedClusterIDCharacteristicMap:*(*(&v157 + 1) + 8 * j)];
        }

        v63 = [v61 countByEnumeratingWithState:&v157 objects:v168 count:16];
      }

      while (v63);
    }

    if (v135)
    {
      v66 = [HMMTRHAPServiceDescription descriptionsDictionaryFromAccessoryInfo:?];
      if ([v66 count])
      {
        v67 = objc_autoreleasePoolPush();
        v68 = *(a1 + 32);
        v69 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v69, OS_LOG_TYPE_INFO))
        {
          v70 = HMFGetLogIdentifier();
          *buf = 138543618;
          v171 = v70;
          v172 = 2112;
          v173 = v66;
          _os_log_impl(&dword_22AEAE000, v69, OS_LOG_TYPE_INFO, "%{public}@Bridge node native services dictionary: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v67);
        v71 = objc_autoreleasePoolPush();
        v72 = *(a1 + 32);
        v73 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v73, OS_LOG_TYPE_INFO))
        {
          v74 = HMFGetLogIdentifier();
          *buf = 138543618;
          v171 = v74;
          v172 = 2112;
          v173 = v139;
          _os_log_impl(&dword_22AEAE000, v73, OS_LOG_TYPE_INFO, "%{public}@Bridge node native topology: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v71);
        v75 = [*(a1 + 32) hapEnumerator];
        v76 = [*(a1 + 32) primaryAccessory];
        v77 = [v76 services];
        v78 = [*(a1 + 32) nodeID];
        v79 = [*(a1 + 32) primaryAccessory];
        v80 = [v75 enumerateServicesFromServices:v77 serviceDescriptionsDictionary:v66 topology:v139 nodeID:v78 primaryAccessory:v79 legacyInstanceIDAssignment:0];

        v81 = objc_autoreleasePoolPush();
        v82 = *(a1 + 32);
        v83 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v83, OS_LOG_TYPE_INFO))
        {
          v84 = HMFGetLogIdentifier();
          *buf = 138543618;
          v171 = v84;
          v172 = 2112;
          v173 = v80;
          _os_log_impl(&dword_22AEAE000, v83, OS_LOG_TYPE_INFO, "%{public}@Bridge node services updated with native Matter functionalities: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v81);
        if (v80)
        {
          v85 = [*(a1 + 32) primaryAccessory];
          [v85 setServices:v80];
        }

        v128 = v80;
        v129 = v66;
        v86 = [v66 allValues];
        v87 = [v86 na_flatMap:&__block_literal_global_801];

        v127 = v87;
        v126 = [MEMORY[0x277CBEB98] setWithArray:v87];
        v88 = [v126 allObjects];
        v89 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"self" ascending:1];
        v167 = v89;
        v90 = [MEMORY[0x277CBEA60] arrayWithObjects:&v167 count:1];
        v91 = [v88 sortedArrayUsingDescriptors:v90];

        v155 = 0u;
        v156 = 0u;
        v153 = 0u;
        v154 = 0u;
        v92 = v91;
        v93 = [v92 countByEnumeratingWithState:&v153 objects:v166 count:16];
        if (v93)
        {
          v94 = v93;
          v95 = *v154;
          v96 = &unk_283EE8BF8;
          while (2)
          {
            for (k = 0; k != v94; ++k)
            {
              if (*v154 != v95)
              {
                objc_enumerationMutation(v92);
              }

              v98 = *(a1 + 32);
              v99 = [v139 getHAPCategoriesAtEndpoint:*(*(&v153 + 1) + 8 * k)];
              v100 = [v98 _getFirstNonOtherCategory:v99];

              if (v100)
              {
                v101 = v100;

                if (([v101 isEqual:&unk_283EE89E8] & 1) == 0)
                {

                  v96 = v101;
                  goto LABEL_77;
                }

                v96 = v101;
              }
            }

            v94 = [v92 countByEnumeratingWithState:&v153 objects:v166 count:16];
            if (v94)
            {
              continue;
            }

            break;
          }
        }

        else
        {
          v96 = &unk_283EE8BF8;
        }

LABEL_77:

        v37 = v133;
        v28 = a1;
        v66 = v129;
      }

      else
      {
        v96 = &unk_283EE8BF8;
      }
    }

    else
    {
      v96 = &unk_283EE8BF8;
    }

LABEL_79:
    v121 = v131;
    v36 = v132;
  }

  else
  {
    if (v53)
    {
      v102 = HMFGetLogIdentifier();
      *buf = 138543618;
      v171 = v102;
      v172 = 2112;
      v173 = v143;
      _os_log_impl(&dword_22AEAE000, v52, OS_LOG_TYPE_INFO, "%{public}@Accessory services dictionary: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v50);
    [*(a1 + 32) _initAccessoriesForServer];
    v103 = [*(a1 + 32) hapEnumerator];
    v104 = [*(a1 + 32) primaryAccessory];
    v105 = [v104 services];
    v106 = [*(a1 + 32) nodeID];
    v107 = [*(a1 + 32) primaryAccessory];
    v108 = [v103 enumerateServicesFromServices:v105 serviceDescriptionsDictionary:v136 topology:v134 nodeID:v106 primaryAccessory:v107 legacyInstanceIDAssignment:0];

    v109 = objc_autoreleasePoolPush();
    v110 = *(a1 + 32);
    v111 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v111, OS_LOG_TYPE_INFO))
    {
      v112 = HMFGetLogIdentifier();
      *buf = 138543618;
      v171 = v112;
      v172 = 2112;
      v173 = v108;
      _os_log_impl(&dword_22AEAE000, v111, OS_LOG_TYPE_INFO, "%{public}@Accessory services: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v109);
    if (v108)
    {
      v113 = [*(a1 + 32) primaryAccessory];
      [v113 setServices:v108];
    }

    v130 = v108;
    v151 = 0u;
    v152 = 0u;
    v149 = 0u;
    v150 = 0u;
    v138 = obj;
    v114 = [v138 countByEnumeratingWithState:&v149 objects:v165 count:16];
    if (v114)
    {
      v115 = v114;
      v96 = 0;
      v116 = *v150;
      while (2)
      {
        for (m = 0; m != v115; ++m)
        {
          if (*v150 != v116)
          {
            objc_enumerationMutation(v138);
          }

          v118 = *(a1 + 32);
          v119 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(*(&v149 + 1) + 8 * m), "integerValue")}];
          v120 = [v118 _categoryFromAccessoryInfo:v143 endpoint:v119];

          if (v120)
          {
            v61 = v120;

            v96 = v61;
            if (![v61 isEqual:&unk_283EE89E8])
            {
              v96 = v61;
              v37 = v133;
              v31 = v134;
              v28 = a1;
              goto LABEL_79;
            }
          }
        }

        v115 = [v138 countByEnumeratingWithState:&v149 objects:v165 count:16];
        if (v115)
        {
          continue;
        }

        break;
      }

      v37 = v133;
      v31 = v134;
      v28 = a1;
    }

    else
    {
      v96 = 0;
      v37 = v133;
    }

    v121 = v131;
    v36 = v132;
  }

  [*(v28 + 32) _setCategoryForPrimaryAccessory:v96];
  v122 = *(v28 + 32);
  v123 = [v122 matterDevice];
  v147[0] = MEMORY[0x277D85DD0];
  v147[1] = 3221225472;
  v147[2] = __73__HMMTRAccessoryServer__rebuildHAPServicesFromCHIPWithCompletionHandler___block_invoke_806;
  v147[3] = &unk_2786EF8A0;
  v124 = *(v28 + 40);
  v147[4] = *(v28 + 32);
  v148 = v124;
  [v122 _createFirmwareUpdateServiceWithInstanceID:10 device:v123 completionHandler:v147];

LABEL_81:
  [*(v28 + 32) setServiceEnumerationInProgress:0];

  v125 = *MEMORY[0x277D85DE8];
}

void __73__HMMTRAccessoryServer__rebuildHAPServicesFromCHIPWithCompletionHandler___block_invoke_809(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v7 = 138543362;
    v8 = v5;
    _os_log_impl(&dword_22AEAE000, v4, OS_LOG_TYPE_INFO, "%{public}@Queued accessory operation for MTRDevice caching for deferred full service enumeration is executed", &v7, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  v6 = *MEMORY[0x277D85DE8];
}

void __73__HMMTRAccessoryServer__rebuildHAPServicesFromCHIPWithCompletionHandler___block_invoke_810(uint64_t a1, void *a2)
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
    _os_log_impl(&dword_22AEAE000, v6, OS_LOG_TYPE_INFO, "%{public}@Accessory operation for MTRDevice caching for deferred full service enumeration completes with error: %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  v8 = *MEMORY[0x277D85DE8];
}

void __73__HMMTRAccessoryServer__rebuildHAPServicesFromCHIPWithCompletionHandler___block_invoke_806(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
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
      _os_log_impl(&dword_22AEAE000, v6, OS_LOG_TYPE_INFO, "%{public}@Firmware update service not created: %@", &v9, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
  }

  (*(*(a1 + 40) + 16))();

  v8 = *MEMORY[0x277D85DE8];
}

void __73__HMMTRAccessoryServer__rebuildHAPServicesFromCHIPWithCompletionHandler___block_invoke_807(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 32);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      v10 = 138543618;
      v11 = v7;
      v12 = 2112;
      v13 = v3;
      _os_log_impl(&dword_22AEAE000, v6, OS_LOG_TYPE_INFO, "%{public}@Firmware update service not created: %@", &v10, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
  }

  v8 = *(a1 + 40);
  (*(*(a1 + 48) + 16))();

  v9 = *MEMORY[0x277D85DE8];
}

uint64_t __73__HMMTRAccessoryServer__rebuildHAPServicesFromCHIPWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x277CCABB0];
  v5 = a3;
  v6 = [v4 numberWithInteger:{objc_msgSend(a2, "integerValue")}];
  v7 = MEMORY[0x277CCABB0];
  v8 = [v5 integerValue];

  v9 = [v7 numberWithInteger:v8];
  v10 = [v6 compare:v9];

  return v10;
}

void __73__HMMTRAccessoryServer__rebuildHAPServicesFromCHIPWithCompletionHandler___block_invoke_788(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v10 = 138543618;
    v11 = v7;
    v12 = 2112;
    v13 = v3;
    _os_log_impl(&dword_22AEAE000, v6, OS_LOG_TYPE_INFO, "%{public}@Characteristic values updated, error: %@", &v10, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  v8 = *(a1 + 48);
  if (v8)
  {
    (*(v8 + 16))(v8, *(a1 + 40));
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)updateAllCharacteristicValuesPostHAPServiceEnumerationForAccessory:(id)a3 completion:(id)a4
{
  v51 = *MEMORY[0x277D85DE8];
  v25 = a3;
  v24 = a4;
  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    *buf = 138543618;
    *&buf[4] = v9;
    *&buf[12] = 2112;
    *&buf[14] = v25;
    _os_log_impl(&dword_22AEAE000, v8, OS_LOG_TYPE_INFO, "%{public}@Updating all characteristic values from MTRDevice cache for accessory %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  v10 = dispatch_group_create();
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v48 = __Block_byref_object_copy__10189;
  v49 = __Block_byref_object_dispose__10190;
  v50 = 0;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v11 = [v25 services];
  v12 = [v11 countByEnumeratingWithState:&v41 objects:v46 count:16];
  obj = v11;
  if (v12)
  {
    v27 = *v42;
    do
    {
      v13 = 0;
      v28 = v12;
      do
      {
        if (*v42 != v27)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v41 + 1) + 8 * v13);
        v37 = 0u;
        v38 = 0u;
        v39 = 0u;
        v40 = 0u;
        v15 = [v14 characteristics];
        v16 = [v15 countByEnumeratingWithState:&v37 objects:v45 count:16];
        v29 = v13;
        if (v16)
        {
          v17 = *v38;
          do
          {
            v18 = 0;
            do
            {
              if (*v38 != v17)
              {
                objc_enumerationMutation(v15);
              }

              v19 = *(*(&v37 + 1) + 8 * v18);
              dispatch_group_enter(v10);
              v34[0] = MEMORY[0x277D85DD0];
              v34[1] = 3221225472;
              v34[2] = __102__HMMTRAccessoryServer_updateAllCharacteristicValuesPostHAPServiceEnumerationForAccessory_completion___block_invoke;
              v34[3] = &unk_2786EFE60;
              v34[4] = v7;
              v34[5] = v19;
              v36 = buf;
              v35 = v10;
              [(HMMTRAccessoryServer *)v7 _readCharacteristicValueFromCacheWithCharacteristic:v19 responseHandler:v34];

              ++v18;
            }

            while (v16 != v18);
            v16 = [v15 countByEnumeratingWithState:&v37 objects:v45 count:16];
          }

          while (v16);
        }

        v13 = v29 + 1;
      }

      while (v29 + 1 != v28);
      v12 = [obj countByEnumeratingWithState:&v41 objects:v46 count:16];
    }

    while (v12);
  }

  v20 = [(HAPAccessoryServer *)v7 clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __102__HMMTRAccessoryServer_updateAllCharacteristicValuesPostHAPServiceEnumerationForAccessory_completion___block_invoke_787;
  block[3] = &unk_2786EFE88;
  v31 = v25;
  v32 = v24;
  v33 = buf;
  v21 = v24;
  v22 = v25;
  dispatch_group_notify(v10, v20, block);

  _Block_object_dispose(buf, 8);
  v23 = *MEMORY[0x277D85DE8];
}

void __102__HMMTRAccessoryServer_updateAllCharacteristicValuesPostHAPServiceEnumerationForAccessory_completion___block_invoke(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 error];

    if (!v5)
    {
      v15 = objc_autoreleasePoolPush();
      v16 = *(a1 + 32);
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        v18 = HMFGetLogIdentifier();
        v19 = [*(a1 + 40) type];
        v20 = [v4 value];
        v22 = 138543874;
        v23 = v18;
        v24 = 2112;
        v25 = v19;
        v26 = 2112;
        v27 = v20;
        _os_log_impl(&dword_22AEAE000, v17, OS_LOG_TYPE_DEBUG, "%{public}@Updated value for characteristic type: %@, value: %@", &v22, 0x20u);
      }

      objc_autoreleasePoolPop(v15);
      v14 = [v4 value];
      [*(a1 + 40) setValue:v14];
      goto LABEL_11;
    }
  }

  v6 = objc_autoreleasePoolPush();
  v7 = *(a1 + 32);
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = HMFGetLogIdentifier();
    v10 = [*(a1 + 40) type];
    v22 = 138543618;
    v23 = v9;
    v24 = 2112;
    v25 = v10;
    _os_log_impl(&dword_22AEAE000, v8, OS_LOG_TYPE_DEBUG, "%{public}@Value update failed for characteristic type: %@", &v22, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  if (v4)
  {
    v11 = [v4 error];

    if (v11)
    {
      v12 = [v4 error];
      v13 = *(*(a1 + 56) + 8);
      v14 = *(v13 + 40);
      *(v13 + 40) = v12;
LABEL_11:
    }
  }

  dispatch_group_leave(*(a1 + 48));

  v21 = *MEMORY[0x277D85DE8];
}

uint64_t __102__HMMTRAccessoryServer_updateAllCharacteristicValuesPostHAPServiceEnumerationForAccessory_completion___block_invoke_787(void *a1)
{
  [HMMTRAccessoryServer propagateCharactersticValuesToAccessory:a1[4]];
  v2 = *(*(a1[6] + 8) + 40);
  v3 = *(a1[5] + 16);

  return v3();
}

- (void)updateAllCharacteristicValuesPostHAPServiceEnumeration:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v16 = a3;
  v4 = objc_autoreleasePoolPush();
  v17 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v6;
    _os_log_impl(&dword_22AEAE000, v5, OS_LOG_TYPE_INFO, "%{public}@Updating all characteristic values from MTRDevice cache", &buf, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  v7 = dispatch_group_create();
  *&buf = 0;
  *(&buf + 1) = &buf;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__10189;
  v32 = __Block_byref_object_dispose__10190;
  v33 = 0;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v8 = [(HAPAccessoryServer *)v17 accessories];
  v9 = [v8 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v9)
  {
    v10 = *v25;
    do
    {
      v11 = 0;
      do
      {
        if (*v25 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v24 + 1) + 8 * v11);
        dispatch_group_enter(v7);
        v21[0] = MEMORY[0x277D85DD0];
        v21[1] = 3221225472;
        v21[2] = __79__HMMTRAccessoryServer_updateAllCharacteristicValuesPostHAPServiceEnumeration___block_invoke;
        v21[3] = &unk_2786F0D18;
        p_buf = &buf;
        v22 = v7;
        [(HMMTRAccessoryServer *)v17 updateAllCharacteristicValuesPostHAPServiceEnumerationForAccessory:v12 completion:v21];

        ++v11;
      }

      while (v9 != v11);
      v9 = [v8 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v9);
  }

  v13 = [(HAPAccessoryServer *)v17 clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __79__HMMTRAccessoryServer_updateAllCharacteristicValuesPostHAPServiceEnumeration___block_invoke_2;
  block[3] = &unk_2786F0AF8;
  v19 = v16;
  v20 = &buf;
  v14 = v16;
  dispatch_group_notify(v7, v13, block);

  _Block_object_dispose(&buf, 8);
  v15 = *MEMORY[0x277D85DE8];
}

void __79__HMMTRAccessoryServer_updateAllCharacteristicValuesPostHAPServiceEnumeration___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  dispatch_group_leave(*(a1 + 32));
}

- (void)enumerateHAPServices:(id)a3
{
  v4 = a3;
  v5 = [(HAPAccessoryServer *)self clientQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __45__HMMTRAccessoryServer_enumerateHAPServices___block_invoke;
  v7[3] = &unk_2786EF5A8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __45__HMMTRAccessoryServer_enumerateHAPServices___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) fullServiceEnumerationPendingCachePrimedEvent];
  v3 = *(a1 + 32);
  if (v2)
  {
    v5 = [*(a1 + 32) serviceEnumerationFromDeviceCompletionHandlers];
    v4 = MEMORY[0x2318887D0](*(a1 + 40));
    [v5 addObject:v4];
  }

  else
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __45__HMMTRAccessoryServer_enumerateHAPServices___block_invoke_2;
    v6[3] = &unk_2786EF8A0;
    v6[4] = v3;
    v7 = *(a1 + 40);
    [v3 _rebuildHAPServicesFromCHIPWithCompletionHandler:v6];
  }
}

void __45__HMMTRAccessoryServer_enumerateHAPServices___block_invoke_2(uint64_t a1, void *a2)
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
      _os_log_impl(&dword_22AEAE000, v7, OS_LOG_TYPE_ERROR, "%{public}@Failed to rebuild HAP services of CHIP Accessory with error %@", &v16, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v16 = 138543362;
      v17 = v9;
      _os_log_impl(&dword_22AEAE000, v7, OS_LOG_TYPE_INFO, "%{public}@Triggering a discovery for Accessory server after enumerating...", &v16, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    v10 = objc_autoreleasePoolPush();
    v11 = *(a1 + 32);
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      v14 = [*(a1 + 32) clusterIDCharacteristicMap];
      v16 = 138543618;
      v17 = v13;
      v18 = 2112;
      v19 = v14;
      _os_log_impl(&dword_22AEAE000, v12, OS_LOG_TYPE_INFO, "%{public}@clusterIDCharacteristicMap : %@", &v16, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    [*(a1 + 32) discoverAccessories];
  }

  (*(*(a1 + 40) + 16))();

  v15 = *MEMORY[0x277D85DE8];
}

- (id)_distinctEndpointsHavingHapServicesForTopology:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = [a3 hapServiceTypes];
  v4 = MEMORY[0x277CBEB18];
  v5 = [v3 allKeys];
  v6 = [v4 arrayWithArray:v5];

  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  [v6 sortUsingComparator:&__block_literal_global_785];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(*(&v16 + 1) + 8 * i), "integerValue", v16)}];
        if (([v7 containsObject:v13] & 1) == 0)
        {
          [v7 addObject:v13];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  v14 = *MEMORY[0x277D85DE8];

  return v7;
}

uint64_t __71__HMMTRAccessoryServer__distinctEndpointsHavingHapServicesForTopology___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x277CCABB0];
  v5 = a3;
  v6 = [v4 numberWithInteger:{objc_msgSend(a2, "integerValue")}];
  v7 = MEMORY[0x277CCABB0];
  v8 = [v5 integerValue];

  v9 = [v7 numberWithInteger:v8];
  v10 = [v6 compare:v9];

  return v10;
}

- (void)_createFirmwareUpdateServiceWithInstanceID:(int64_t)a3 device:(id)a4 completionHandler:(id)a5
{
  v8 = a4;
  v9 = a5;
  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x2020000000;
  v19[3] = a3;
  v10 = [HMMTRDeviceTopology alloc];
  v11 = [(HMMTRAccessoryServer *)self nodeID];
  v12 = [(HMMTRDeviceTopology *)v10 initWithNodeId:v11 server:self];

  v13 = [(HAPAccessoryServer *)self clientQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __92__HMMTRAccessoryServer__createFirmwareUpdateServiceWithInstanceID_device_completionHandler___block_invoke;
  v15[3] = &unk_2786EFE18;
  v14 = v9;
  v15[4] = self;
  v16 = v14;
  v17 = v19;
  v18 = a3;
  [(HMMTRAccessoryServer *)self _endpointForOTARequestorWithTopology:v12 mtrDevice:v8 callbackQueue:v13 completionHandler:v15];

  _Block_object_dispose(v19, 8);
}

void __92__HMMTRAccessoryServer__createFirmwareUpdateServiceWithInstanceID_device_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v67 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    if (v5)
    {
      v7 = objc_autoreleasePoolPush();
      v8 = *(a1 + 32);
      v9 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = HMFGetLogIdentifier();
        v11 = *(a1 + 56);
        *buf = 138543874;
        v62 = v10;
        v63 = 2048;
        v64 = v11;
        v65 = 2112;
        v66 = v5;
        _os_log_impl(&dword_22AEAE000, v9, OS_LOG_TYPE_INFO, "%{public}@Create firmware update service using instanceID: %lu for endpoint: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v7);
      v12 = [MEMORY[0x277CFEBA0] getSharedInstance];
      v13 = [v12 getDefaultCharacteristicMetadata:@"00000234-0000-1000-8000-0026BB765291"];
      v14 = [v12 getDefaultCharacteristicProperties:@"00000234-0000-1000-8000-0026BB765291"];
      v15 = [v14 integerValue];

      v50 = *(a1 + 56);
      v55 = objc_alloc_init(MEMORY[0x277CFEB50]);
      v60 = 0;
      v53 = [v55 serializeWithError:&v60];
      v54 = v5;
      v16 = v60;
      v17 = objc_alloc(MEMORY[0x277CFEA68]);
      v18 = MEMORY[0x277CCABB0];
      ++*(*(*(a1 + 48) + 8) + 24);
      v19 = [v18 numberWithInteger:?];
      v56 = [v17 initWithType:@"00000234-0000-1000-8000-0026BB765291" instanceID:v19 value:v53 stateNumber:0 properties:v15 eventNotificationsEnabled:1 metadata:v13];

      v20 = [v12 getDefaultCharacteristicMetadata:@"00000235-0000-1000-8000-0026BB765291"];

      v21 = [v12 getDefaultCharacteristicProperties:@"00000235-0000-1000-8000-0026BB765291"];
      LOWORD(v19) = [v21 integerValue];

      v52 = objc_alloc_init(MEMORY[0x277CFEB58]);
      v59 = v16;
      v51 = [v52 serializeWithError:&v59];
      v22 = v59;

      v23 = objc_alloc(MEMORY[0x277CFEA68]);
      v24 = MEMORY[0x277CCABB0];
      ++*(*(*(a1 + 48) + 8) + 24);
      v25 = [v24 numberWithInteger:?];
      v45 = [v23 initWithType:@"00000235-0000-1000-8000-0026BB765291" instanceID:v25 value:v51 stateNumber:0 properties:v19 eventNotificationsEnabled:1 metadata:v20];

      v48 = [v12 getDefaultCharacteristicMetadata:@"0000026E-0000-1000-8000-0026BB765291"];

      v26 = [v12 getDefaultCharacteristicProperties:@"0000026E-0000-1000-8000-0026BB765291"];
      LOWORD(v23) = [v26 integerValue];

      v49 = objc_alloc_init(MEMORY[0x277CFEB98]);
      v58 = v22;
      v46 = [v49 serializeWithError:&v58];
      v47 = v58;

      v27 = objc_alloc(MEMORY[0x277CFEA68]);
      v28 = MEMORY[0x277CCABB0];
      ++*(*(*(a1 + 48) + 8) + 24);
      v29 = [v28 numberWithInteger:?];
      v30 = [v27 initWithType:@"0000026E-0000-1000-8000-0026BB765291" instanceID:v29 value:v46 stateNumber:0 properties:v23 eventNotificationsEnabled:1 metadata:v48];

      v31 = [MEMORY[0x277CBEA60] arrayWithObjects:{v56, v45, v30, 0}];
      v32 = [v12 getDefaultServiceProperties:@"00000236-0000-1000-8000-0026BB765291"];
      v33 = [v32 integerValue];

      v34 = objc_alloc(MEMORY[0x277CFEC40]);
      v35 = [MEMORY[0x277CCABB0] numberWithInteger:v50];
      v36 = [v34 initWithType:@"00000236-0000-1000-8000-0026BB765291" instanceID:v35 parsedCharacteristics:v31 serviceProperties:v33 linkedServices:0];

      v37 = [*(a1 + 32) primaryAccessory];
      [v36 setAccessory:v37];

      v38 = [*(a1 + 32) primaryAccessory];
      v39 = [v38 services];
      v57[0] = MEMORY[0x277D85DD0];
      v57[1] = 3221225472;
      v57[2] = __92__HMMTRAccessoryServer__createFirmwareUpdateServiceWithInstanceID_device_completionHandler___block_invoke_780;
      v57[3] = &__block_descriptor_40_e20_B16__0__HAPService_8l;
      v57[4] = v50;
      v40 = [v39 na_filter:v57];

      v41 = [MEMORY[0x277CBEB18] arrayWithObject:v36];
      [v41 addObjectsFromArray:v40];
      v42 = [*(a1 + 32) primaryAccessory];
      [v42 setServices:v41];

      (*(*(a1 + 40) + 16))();
      v5 = v54;
    }

    else
    {
      v43 = *(a1 + 40);
      v12 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:2];
      (*(v43 + 16))(v43, v12);
    }
  }

  v44 = *MEMORY[0x277D85DE8];
}

uint64_t __92__HMMTRAccessoryServer__createFirmwareUpdateServiceWithInstanceID_device_completionHandler___block_invoke_780(uint64_t a1, void *a2)
{
  v3 = [a2 instanceID];
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 32)];
  v5 = [v3 isEqual:v4];

  return v5 ^ 1u;
}

- (void)_endpointForOTARequestorWithTopology:(id)a3 mtrDevice:(id)a4 callbackQueue:(id)a5 completionHandler:(id)a6
{
  v29 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [v10 getOTARequestorEndpoints];
  if (v14)
  {
    v15 = [v10 getVersionForKey:@"EnumeratedProtocolMap"];
    v16 = [v15 intValue];

    if (v16 > 100)
    {
      v18 = [v10 getEnabledOTARequestorEndpoint];
      if (v18)
      {
        v13[2](v13, v18, 0);
      }

      else
      {
        v23 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:2];
        (v13)[2](v13, 0, v23);
      }

LABEL_11:

      goto LABEL_12;
    }
  }

  if (!v11)
  {
    v19 = objc_autoreleasePoolPush();
    v20 = self;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier();
      *buf = 138543362;
      v28 = v22;
      _os_log_impl(&dword_22AEAE000, v21, OS_LOG_TYPE_ERROR, "%{public}@No Matter device available to get the OTA requestor endpoint", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v19);
    v18 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:8];
    (v13)[2](v13, 0, v18);
    goto LABEL_11;
  }

  v17 = +[HMMTRDescriptorClusterManager sharedManager];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __103__HMMTRAccessoryServer__endpointForOTARequestorWithTopology_mtrDevice_callbackQueue_completionHandler___block_invoke;
  v25[3] = &unk_2786EFDD0;
  v26 = v13;
  [v17 endpointForClusterID:&unk_283EE8A48 mtrDevice:v11 callbackQueue:v12 completionHandler:v25];

LABEL_12:
  v24 = *MEMORY[0x277D85DE8];
}

- (id)_categoryFromTopology:(id)a3 endpoint:(id)a4
{
  v5 = [a3 getHAPCategoriesAtEndpoint:a4];
  v6 = [(HMMTRAccessoryServer *)self _getFirstNonOtherCategory:v5];

  return v6;
}

- (id)_categoryFromAccessoryInfo:(id)a3 endpoint:(id)a4
{
  v5 = [a3 categoriesForEndpoint:a4];
  v6 = [(HMMTRAccessoryServer *)self _getFirstNonOtherCategory:v5];

  return v6;
}

- (id)_getFirstNonOtherCategory:(id)a3
{
  v22[1] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    if ([v3 count] == 1)
    {
      v5 = [v4 objectAtIndexedSubscript:0];
    }

    else
    {
      v6 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"self" ascending:1];
      v22[0] = v6;
      v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:1];
      v8 = [v4 sortedArrayUsingDescriptors:v7];

      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      v9 = v8;
      v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v18;
        while (2)
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v18 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v17 + 1) + 8 * i);
            if ([v14 integerValue] > 1)
            {
              v5 = v14;

              goto LABEL_15;
            }
          }

          v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
          if (v11)
          {
            continue;
          }

          break;
        }
      }

      v5 = [MEMORY[0x277CCABB0] numberWithInt:1];
LABEL_15:
    }
  }

  else
  {
    v5 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];

  return v5;
}

- (void)_setCategoryForPrimaryAccessory:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    [(HAPAccessoryServer *)self setCategory:v4];
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
      _os_log_impl(&dword_22AEAE000, v7, OS_LOG_TYPE_INFO, "%{public}@Set category to %@ for primary accessory", &v10, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)disconnectWithError:(id)a3
{
  v4 = a3;
  v5 = [(HAPAccessoryServer *)self clientQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __44__HMMTRAccessoryServer_disconnectWithError___block_invoke;
  v7[3] = &unk_2786EF328;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)_disconnectWithError:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(HMMTRAccessoryServer *)self isPaired])
  {
    if (isFeatureMatteriPhoneOnlyPairingControlEnabled())
    {
      v5 = objc_autoreleasePoolPush();
      v6 = self;
      v7 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = HMFGetLogIdentifier();
        v17 = 138543618;
        v18 = v8;
        v19 = 2112;
        v20 = v6;
        _os_log_impl(&dword_22AEAE000, v7, OS_LOG_TYPE_INFO, "%{public}@Keeping CHIP link alive for accessory:%@ till invalidated", &v17, 0x16u);
      }

      objc_autoreleasePoolPop(v5);
    }

    else
    {
      v9 = [(HMMTRAccessoryServer *)self browser];
      v10 = [v9 isCurrentDevicePrimaryResident];

      if ((v10 & 1) == 0)
      {
        v11 = objc_autoreleasePoolPush();
        v12 = self;
        v13 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          v14 = HMFGetLogIdentifier();
          v17 = 138543618;
          v18 = v14;
          v19 = 2112;
          v20 = v12;
          _os_log_impl(&dword_22AEAE000, v13, OS_LOG_TYPE_INFO, "%{public}@Terminating CHIP link for accessory:%@. Only the Primary Resident may communicate with it now.", &v17, 0x16u);
        }

        objc_autoreleasePoolPop(v11);
        v15 = [(HMMTRAccessoryServer *)v12 controllerWrapper];
        [(HMMTRAccessoryServer *)v12 disable];
        [v15 suspendOrShutdown];
      }
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)finishPairing
{
  v3 = [(HAPAccessoryServer *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__HMMTRAccessoryServer_finishPairing__block_invoke;
  block[3] = &unk_2786F0CA8;
  block[4] = self;
  dispatch_async(v3, block);
}

void __37__HMMTRAccessoryServer_finishPairing__block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    *buf = 138543362;
    v19 = v5;
    _os_log_impl(&dword_22AEAE000, v4, OS_LOG_TYPE_INFO, "%{public}@Finishing pairing now", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  [*(a1 + 32) _persistAccessoryServerData];
  [*(a1 + 32) _disconnectWithError:0];
  [*(a1 + 32) _finishMaximumDurationCollection];
  if ([*(a1 + 32) shouldPairWithoutResident])
  {
    v6 = [*(a1 + 32) browser];
    v7 = [v6 storage];
    v8 = [v7 dataSource];
    v9 = [*(a1 + 32) fabricUUID];
    v10 = [v8 storageDataSourceForFabricUUID:v9];

    v11 = [*(a1 + 32) nodeID];
    v12 = [v10 storageDataSourceForDeviceWithNodeID:v11];
    v13 = [*(a1 + 32) vendorID];
    v14 = [*(a1 + 32) productID];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __37__HMMTRAccessoryServer_finishPairing__block_invoke_767;
    v17[3] = &unk_2786EF290;
    v17[4] = *(a1 + 32);
    [v12 updateVendorID:v13 productID:v14 completion:v17];
  }

  [*(a1 + 32) setDelayDiscovery:0];
  v15 = [*(a1 + 32) browser];
  [v15 didFinishPairingAccessoryServer:*(a1 + 32) operationDisabled:{objc_msgSend(*(a1 + 32), "operationDisabled")}];

  v16 = *MEMORY[0x277D85DE8];
}

void __37__HMMTRAccessoryServer_finishPairing__block_invoke_767(uint64_t a1, void *a2)
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
      v8 = [*(a1 + 32) vendorID];
      v9 = [*(a1 + 32) productID];
      v11 = 138544386;
      v12 = v7;
      v13 = 2080;
      v14 = "[HMMTRAccessoryServer finishPairing]_block_invoke";
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

- (void)_finishMaximumDurationCollection
{
  v35 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v7 = [(HMMTRAccessoryServer *)v4 maxMetricDuration];
    v8 = [v7 name];
    v9 = [(HMMTRAccessoryServer *)v4 maxMetricDuration];
    v10 = [v9 duration];
    *buf = 138544898;
    v22 = v6;
    v23 = 2114;
    v24 = @"hmmtrAccessoryServerPairingMaximumDuration";
    v25 = 2112;
    v26 = @"Maximum time segment of pairing";
    v27 = 2114;
    v28 = @"hmmtrAccessoryPairingEventMaxDurationName";
    v29 = 2112;
    v30 = v8;
    v31 = 2114;
    v32 = @"hmmtrAccessoryPairingEventMaxDurationTimeInSeconds";
    v33 = 2112;
    v34 = v10;
    _os_log_impl(&dword_22AEAE000, v5, OS_LOG_TYPE_INFO, "%{public}@tag=%{public}@ desc=%@ %{public}@=%@ %{public}@=%@", buf, 0x48u);
  }

  objc_autoreleasePoolPop(v3);
  v11 = [MEMORY[0x277D17DE8] sharedInstance];
  v12 = objc_alloc(MEMORY[0x277D17DF8]);
  v13 = [(HMMTRAccessoryServer *)v4 maxMetricDuration];
  v14 = [v13 name];
  v15 = [(HMMTRAccessoryServer *)v4 maxMetricDuration];
  v16 = [v15 duration];
  v17 = HMDTaggedLoggingCreateDictionary();
  v18 = [v12 initWithTag:@"hmmtrAccessoryServerPairingMaximumDuration" data:{v17, @"hmmtrAccessoryPairingEventMaxDurationName", v14, @"hmmtrAccessoryPairingEventMaxDurationTimeInSeconds", v16}];
  v19 = [(HMFActivity *)v4->_activity tagProcessorList];
  [v11 submitTaggedEvent:v18 processorList:v19];

  [(HMMTRAccessoryServer *)v4 setMaxMetricDuration:0];
  v20 = *MEMORY[0x277D85DE8];
}

- (void)_reportPairingComplete
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    *buf = 138543874;
    v21 = v6;
    v22 = 2080;
    v23 = "[HMMTRAccessoryServer _reportPairingComplete]";
    v24 = 1024;
    v25 = [(HMMTRAccessoryServer *)v4 operationDisabled];
    _os_log_impl(&dword_22AEAE000, v5, OS_LOG_TYPE_INFO, "%{public}@%s operationDisabled = %d", buf, 0x1Cu);
  }

  objc_autoreleasePoolPop(v3);
  if (![(HMMTRAccessoryServer *)v4 operationDisabled])
  {
    [(HMMTRAccessoryServer *)v4 setDelayDiscovery:1];
  }

  if (isFeatureMatteriPhoneOnlyPairingControlEnabled() && ![(HMMTRAccessoryServer *)v4 operationDisabled]&& ![(HMMTRAccessoryServer *)v4 knownToSystemCommissioner])
  {
    v7 = [objc_alloc(MEMORY[0x277D0F920]) initWithTimeInterval:0 options:60.0];
    [(HMMTRAccessoryServer *)v4 setResidentReachabilityUpdateWaitTimer:v7];

    v8 = [(HAPAccessoryServer *)v4 clientQueue];
    v9 = [(HMMTRAccessoryServer *)v4 residentReachabilityUpdateWaitTimer];
    [v9 setDelegateQueue:v8];

    v10 = [(HMMTRAccessoryServer *)v4 residentReachabilityUpdateWaitTimer];
    [v10 setDelegate:v4];

    v11 = [(HMMTRAccessoryServer *)v4 residentReachabilityUpdateWaitTimer];
    [v11 resume];

    v12 = objc_autoreleasePoolPush();
    v13 = v4;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543362;
      v21 = v15;
      _os_log_impl(&dword_22AEAE000, v14, OS_LOG_TYPE_INFO, "%{public}@Kicked off timer to stay active while resident updates reachability state", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v12);
  }

  [(HMMTRAccessoryServer *)v4 setPairingProgress:4];
  [(HMMTRAccessoryServer *)v4 _clearCommissioneeInfoAfterPairingCompletion];
  v16 = [(HAPAccessoryServer *)v4 delegateQueue];

  if (v16)
  {
    v17 = [(HAPAccessoryServer *)v4 delegateQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __46__HMMTRAccessoryServer__reportPairingComplete__block_invoke;
    block[3] = &unk_2786F0CA8;
    block[4] = v4;
    dispatch_async(v17, block);
  }

  v18 = *MEMORY[0x277D85DE8];
}

void __46__HMMTRAccessoryServer__reportPairingComplete__block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) delegate];
  if ([v2 conformsToProtocol:&unk_283F236B0])
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
    [v4 accessoryServer:*(a1 + 32) didStopPairingWithError:0 matterPairingEndContext:0];
  }

  else
  {
    v5 = objc_autoreleasePoolPush();
    v6 = *(a1 + 32);
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      v10 = 138543362;
      v11 = v8;
      _os_log_impl(&dword_22AEAE000, v7, OS_LOG_TYPE_ERROR, "%{public}@Unable to find delegate confirming to HMMTRHAPAccessoryServerPairingDelegate", &v10, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_finalizePairing
{
  v33 = *MEMORY[0x277D85DE8];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __40__HMMTRAccessoryServer__finalizePairing__block_invoke;
  v30[3] = &unk_2786F0CA8;
  v30[4] = self;
  v3 = MEMORY[0x2318887D0](v30, a2);
  v28[0] = 0;
  v28[1] = v28;
  v28[2] = 0x2020000000;
  v29 = 0;
  v26[0] = 0;
  v26[1] = v26;
  v26[2] = 0x3032000000;
  v26[3] = __Block_byref_object_copy__10189;
  v26[4] = __Block_byref_object_dispose__10190;
  v27 = 0;
  v4 = dispatch_group_create();
  [(HMMTRAccessoryServer *)self setBlockInvalidation:1];
  if ([(HMMTRAccessoryServer *)self isKnownToSystemCommissioner])
  {
    dispatch_group_enter(v4);
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __40__HMMTRAccessoryServer__finalizePairing__block_invoke_2;
    v24[3] = &unk_2786EF9E0;
    v24[4] = self;
    v25 = v4;
    [(HMMTRAccessoryServer *)self _fetchSerialNumberWithCompletionHandler:v24];
  }

  [(HMMTRAccessoryServer *)self _notifyDelegateOfPairingStep:9];
  dispatch_group_enter(v4);
  v5 = [(HMMTRAccessoryServer *)self populateACLEntriesForPairing];
  v6 = [v5 objectForKeyedSubscript:@"adminNodesForPairing"];
  v7 = [v5 objectForKeyedSubscript:@"regularNodesForPairing"];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __40__HMMTRAccessoryServer__finalizePairing__block_invoke_642;
  v20[3] = &unk_2786EFD80;
  v20[4] = self;
  v22 = v28;
  v23 = v26;
  v8 = v4;
  v21 = v8;
  [(HMMTRAccessoryServer *)self updateAccessoryControlToAdministratorNodes:v6 sharedUserNodes:v7 completion:v20];
  v9 = [(HAPAccessoryServer *)self delegateQueue];

  if (v9)
  {
    v10 = [(HAPAccessoryServer *)self delegateQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __40__HMMTRAccessoryServer__finalizePairing__block_invoke_653;
    block[3] = &unk_2786EFDA8;
    block[4] = self;
    v18 = v28;
    v19 = v26;
    v17 = v3;
    dispatch_group_notify(v8, v10, block);
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    v12 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543362;
      v32 = v14;
      _os_log_impl(&dword_22AEAE000, v13, OS_LOG_TYPE_ERROR, "%{public}@Browser died. Updating paired state but the accessory server must be removed soon.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v11);
    v3[2](v3);
  }

  _Block_object_dispose(v26, 8);
  _Block_object_dispose(v28, 8);

  v15 = *MEMORY[0x277D85DE8];
}

uint64_t __40__HMMTRAccessoryServer__finalizePairing__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setStorageUpdatePending:1];
  [*(a1 + 32) setPairedState:3];
  v2 = *(a1 + 32);

  return [v2 setSecuritySessionOpen:1];
}

void __40__HMMTRAccessoryServer__finalizePairing__block_invoke_2(uint64_t a1, void *a2)
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
      _os_log_impl(&dword_22AEAE000, v6, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch serial number of CHIP Accessory with error %@", &v9, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
  }

  dispatch_group_leave(*(a1 + 40));

  v8 = *MEMORY[0x277D85DE8];
}

void __40__HMMTRAccessoryServer__finalizePairing__block_invoke_642(uint64_t a1, void *a2)
{
  v41 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 32);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = HMFGetLogIdentifier();
      *buf = 138543618;
      *&buf[4] = v7;
      *&buf[12] = 2112;
      *&buf[14] = v3;
      _os_log_impl(&dword_22AEAE000, v6, OS_LOG_TYPE_ERROR, "%{public}@Failed to update Access control List on device %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    *(*(*(a1 + 48) + 8) + 24) = 1;
    if ([v3 hmmtr_isMatterError])
    {
      [HMMTRAccessoryPairingEndContext mtrContextWithStep:9 error:v3];
    }

    else
    {
      [HMMTRAccessoryPairingEndContext hmmtrContextWithStep:9 error:v3];
    }
    v8 = ;
    v9 = *(*(a1 + 56) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;
  }

  dispatch_group_enter(*(a1 + 40));
  v11 = *(a1 + 32);
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __40__HMMTRAccessoryServer__finalizePairing__block_invoke_643;
  v37[3] = &unk_2786EFCE0;
  v37[4] = v11;
  v38 = *(a1 + 40);
  [v11 _fetchCurrentPairingWithCompletionHandler:v37];
  v12 = [*(a1 + 32) knownToSystemCommissioner];
  v13 = *(a1 + 32);
  if (v12)
  {
    v14 = [v13 category];
    v15 = v14 == 0;

    if (v15)
    {
      [*(a1 + 32) _notifyDelegateOfPairingStep:11];
      dispatch_group_enter(*(a1 + 40));
      v26 = *(a1 + 32);
      v35[0] = MEMORY[0x277D85DD0];
      v35[1] = 3221225472;
      v35[2] = __40__HMMTRAccessoryServer__finalizePairing__block_invoke_644;
      v35[3] = &unk_2786EF9E0;
      v35[4] = v26;
      v36 = *(a1 + 40);
      [v26 _buildHAPCategoriesFromCHIPWithCompletionHandler:v35];
    }

    else
    {
      v16 = objc_autoreleasePoolPush();
      v17 = *(a1 + 32);
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v19 = HMFGetLogIdentifier();
        v20 = [*(a1 + 32) category];
        *buf = 138543618;
        *&buf[4] = v19;
        *&buf[12] = 2112;
        *&buf[14] = v20;
        _os_log_impl(&dword_22AEAE000, v18, OS_LOG_TYPE_INFO, "%{public}@Inherited accessory category: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v16);
    }
  }

  else
  {
    [v13 _notifyDelegateOfPairingStep:12];
    dispatch_group_enter(*(a1 + 40));
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v40 = 0;
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __40__HMMTRAccessoryServer__finalizePairing__block_invoke_645;
    v31[3] = &unk_2786EFD58;
    v21 = *(a1 + 32);
    v33 = buf;
    v31[4] = v21;
    v32 = *(a1 + 40);
    v34 = *(a1 + 48);
    v22 = MEMORY[0x2318887D0](v31);
    [*(a1 + 32) _rebuildHAPServicesFromCHIPWithCompletionHandler:v22];
    v23 = dispatch_time(0, 180000000000);
    v24 = [*(a1 + 32) clientQueue];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __40__HMMTRAccessoryServer__finalizePairing__block_invoke_652;
    v28[3] = &unk_2786EFE88;
    v29 = v22;
    v30 = buf;
    v28[4] = *(a1 + 32);
    v25 = v22;
    dispatch_after(v23, v24, v28);

    _Block_object_dispose(buf, 8);
  }

  dispatch_group_leave(*(a1 + 40));

  v27 = *MEMORY[0x277D85DE8];
}

void __40__HMMTRAccessoryServer__finalizePairing__block_invoke_653(uint64_t a1)
{
  v30 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) setBlockInvalidation:0];
  if (![*(a1 + 32) pairingProgress] || objc_msgSend(*(a1 + 32), "pairingProgress") == 3)
  {
    v2 = objc_autoreleasePoolPush();
    v3 = *(a1 + 32);
    v4 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = HMFGetLogIdentifier();
      *buf = 138543362;
      v29 = v5;
      _os_log_impl(&dword_22AEAE000, v4, OS_LOG_TYPE_INFO, "%{public}@Pairing already failed or stopped when accessory information collection completed", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v2);
    goto LABEL_6;
  }

  v7 = *(a1 + 32);
  if (*(*(*(a1 + 48) + 8) + 24) != 1)
  {
    v11 = [*(a1 + 32) knownToSystemCommissioner];
    v12 = *(a1 + 32);
    if (v11)
    {
      v13 = [v12 clientQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __40__HMMTRAccessoryServer__finalizePairing__block_invoke_654;
      block[3] = &unk_2786EF5A8;
      v14 = *(a1 + 40);
      block[4] = *(a1 + 32);
      v27 = v14;
      dispatch_async(v13, block);

LABEL_6:
      v6 = *MEMORY[0x277D85DE8];
      return;
    }

    v15 = [v12 browser];
    if ([v15 isSystemCommissionerFeatureEnabled])
    {
      v16 = [*(a1 + 32) browser];
      v17 = [v16 isCurrentDevicePrimaryResident];

      if (v17)
      {
        v18 = 0;
LABEL_19:
        v19 = [*(a1 + 32) clientQueue];
        v23[0] = MEMORY[0x277D85DD0];
        v23[1] = 3221225472;
        v23[2] = __40__HMMTRAccessoryServer__finalizePairing__block_invoke_2_655;
        v23[3] = &unk_2786F0EA8;
        v20 = *(a1 + 40);
        v24 = v18;
        v25 = v20;
        v23[4] = *(a1 + 32);
        v21 = v18;
        dispatch_async(v19, v23);

        goto LABEL_6;
      }

      v15 = [*(a1 + 32) browser];
      v18 = [v15 systemCommissionerFabricRootPublicKey];
    }

    else
    {
      v18 = 0;
    }

    goto LABEL_19;
  }

  v8 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:11];
  v9 = *(*(*(a1 + 56) + 8) + 40);
  v22 = v8;
  [v7 _handlePairingFailureWithError:? context:?];
  v10 = *MEMORY[0x277D85DE8];
}

uint64_t __40__HMMTRAccessoryServer__finalizePairing__block_invoke_654(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  [*(a1 + 32) setPairingProgress:4];
  [*(a1 + 32) _finishMaximumDurationCollection];
  [*(a1 + 32) _persistAccessoryServerData];
  v2 = [*(a1 + 32) stageCompletion];

  if (v2)
  {
    v3 = [*(a1 + 32) stageCompletion];
    v3[2](v3, 1, *(a1 + 32), 0);
  }

  v4 = *(a1 + 32);

  return [v4 _clearCommissioneeInfoAfterPairingCompletion];
}

uint64_t __40__HMMTRAccessoryServer__finalizePairing__block_invoke_2_655(uint64_t a1)
{
  (*(*(a1 + 48) + 16))();
  if ([*(a1 + 32) isKnownToSystemCommissioner])
  {
    v2 = *(a1 + 32);

    return [v2 _reportPairingComplete];
  }

  else
  {
    v4 = *(a1 + 32);
    if (*(a1 + 40))
    {

      return [v4 _pairOnSystemCommissionerFabricUnlessAlreadyPairedWithRootPublicKey:?];
    }

    else
    {

      return [v4 _pairOnSystemCommissionerFabric];
    }
  }
}

void __40__HMMTRAccessoryServer__finalizePairing__block_invoke_643(uint64_t a1, void *a2, void *a3, void *a4)
{
  v34 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v7 && !v8 && [v7 count])
  {
    v29 = v9;
    v10 = [v7 firstObject];
    v11 = [HMMTRPairing alloc];
    v12 = [v10 nodeID];
    v13 = [v10 fabricID];
    v14 = [v10 fabricLabel];
    v15 = [v10 rootPublicKey];
    v16 = [v10 vendorID];
    v17 = [v10 vendorName];
    v18 = [(HMMTRPairing *)v11 initWithNodeID:v12 fabricID:v13 fabricLabel:v14 rootPublicKey:v15 vendorID:v16 vendorName:v17];
    [*(a1 + 32) setCurrentPairingInfo:v18];

    v19 = objc_autoreleasePoolPush();
    v20 = *(a1 + 32);
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = HMFGetLogIdentifier();
      v23 = [*(a1 + 32) currentPairingInfo];
      *buf = 138543618;
      v31 = v22;
      v32 = 2112;
      v33 = v23;
      _os_log_impl(&dword_22AEAE000, v21, OS_LOG_TYPE_INFO, "%{public}@Obtained current pairing info %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v19);
    dispatch_group_leave(*(a1 + 40));

    v9 = v29;
    v8 = 0;
  }

  else
  {
    v24 = objc_autoreleasePoolPush();
    v25 = *(a1 + 32);
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = HMFGetLogIdentifier();
      *buf = 138543618;
      v31 = v27;
      v32 = 2112;
      v33 = v8;
      _os_log_impl(&dword_22AEAE000, v26, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch current pairing information %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v24);
    dispatch_group_leave(*(a1 + 40));
  }

  v28 = *MEMORY[0x277D85DE8];
}

void __40__HMMTRAccessoryServer__finalizePairing__block_invoke_644(uint64_t a1, void *a2)
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
      _os_log_impl(&dword_22AEAE000, v6, OS_LOG_TYPE_ERROR, "%{public}@Failed to build HAP categories of CHIP accessory with error %@", &v9, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    [*(a1 + 32) _setCategoryForPrimaryAccessory:&unk_283EE89E8];
  }

  dispatch_group_leave(*(a1 + 40));

  v8 = *MEMORY[0x277D85DE8];
}

void __40__HMMTRAccessoryServer__finalizePairing__block_invoke_645(uint64_t a1, void *a2)
{
  v34 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(*(a1 + 48) + 8);
  if (*(v4 + 24))
  {
    goto LABEL_15;
  }

  *(v4 + 24) = 1;
  v5 = [*(a1 + 32) browser];
  if ([v5 isCurrentDevicePrimaryResident])
  {
  }

  else
  {
    v6 = [*(a1 + 32) browser];
    v7 = [v6 isCurrentDeviceAllowedAccessoryControlDespiteReachableResident];

    if (!v7)
    {
      goto LABEL_6;
    }
  }

  dispatch_group_enter(*(a1 + 40));
  v8 = *(a1 + 32);
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __40__HMMTRAccessoryServer__finalizePairing__block_invoke_2_646;
  v28[3] = &unk_2786EFD08;
  v28[4] = v8;
  v29 = *(a1 + 40);
  [v8 fetchSoftwareVersion:1 completionHandler:v28];

LABEL_6:
  dispatch_group_enter(*(a1 + 40));
  v9 = *(a1 + 32);
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __40__HMMTRAccessoryServer__finalizePairing__block_invoke_647;
  v26[3] = &unk_2786EFD08;
  v26[4] = v9;
  v27 = *(a1 + 40);
  [v9 fetchSoftwareVersion:0 completionHandler:v26];

  if (v3)
  {
    v10 = objc_autoreleasePoolPush();
    v11 = *(a1 + 32);
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543618;
      v31 = v13;
      v32 = 2112;
      v33 = v3;
      _os_log_impl(&dword_22AEAE000, v12, OS_LOG_TYPE_ERROR, "%{public}@Failed to rebuild HAP services of CHIP Accessory with error %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    *(*(*(a1 + 56) + 8) + 24) = 1;
    v14 = [HMMTRAccessoryPairingEndContext hmmtrContextWithStep:12 error:v3];
    v15 = *(*(a1 + 64) + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = v14;

    dispatch_group_leave(*(a1 + 40));
  }

  else
  {
    dispatch_group_enter(*(a1 + 40));
    v17 = *(a1 + 32);
    v20 = MEMORY[0x277D85DD0];
    v21 = 3221225472;
    v22 = __40__HMMTRAccessoryServer__finalizePairing__block_invoke_651;
    v23 = &unk_2786EFD30;
    v24 = v17;
    v25 = *(a1 + 40);
    [v17 generateAccessoryConfigurationForReason:@"DevicePaired" completionHandler:&v20];

    if ([*(a1 + 32) pairedState] == 2)
    {
      [*(a1 + 32) setPairedState:3];
    }

    v18 = [*(a1 + 32) _fetchSupportedThreadFeatures];
    if (v18)
    {
      [*(a1 + 32) _notifyDelegateOfMatterAccessoryThreadCapabilities:v18];
    }

    dispatch_group_leave(*(a1 + 40));
  }

LABEL_15:

  v19 = *MEMORY[0x277D85DE8];
}

void __40__HMMTRAccessoryServer__finalizePairing__block_invoke_652(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
  {
    v2 = objc_autoreleasePoolPush();
    v3 = *(a1 + 32);
    v4 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = HMFGetLogIdentifier();
      v9 = 138543362;
      v10 = v5;
      _os_log_impl(&dword_22AEAE000, v4, OS_LOG_TYPE_ERROR, "%{public}@Enumerating HAPServices timed out", &v9, 0xCu);
    }

    objc_autoreleasePoolPop(v2);
  }

  v6 = *(a1 + 40);
  v7 = [MEMORY[0x277CCA9B8] hapErrorWithCode:24];
  (*(v6 + 16))(v6, v7);

  v8 = *MEMORY[0x277D85DE8];
}

void __40__HMMTRAccessoryServer__finalizePairing__block_invoke_2_646(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
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
      v15 = 138543618;
      v16 = v10;
      v17 = 2112;
      v18 = v6;
      _os_log_impl(&dword_22AEAE000, v9, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch software version number of CHIP Accessory with error %@", &v15, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
  }

  else if ([*(a1 + 32) pairingProgress] && objc_msgSend(*(a1 + 32), "pairingProgress") != 3)
  {
    v12 = v5;
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

    if (v14)
    {
      [*(a1 + 32) updateSoftwareVersion:v14];
    }
  }

  dispatch_group_leave(*(a1 + 40));

  v11 = *MEMORY[0x277D85DE8];
}

void __40__HMMTRAccessoryServer__finalizePairing__block_invoke_647(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
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
      v14 = 138543618;
      v15 = v10;
      v16 = 2112;
      v17 = v6;
      _os_log_impl(&dword_22AEAE000, v9, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch software version string of CHIP Accessory with error %@", &v14, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = v5;
    }

    else
    {
      v11 = 0;
    }

    v12 = v11;
    [*(a1 + 32) setSoftwareVersionString:v12];
  }

  dispatch_group_leave(*(a1 + 40));

  v13 = *MEMORY[0x277D85DE8];
}

void __40__HMMTRAccessoryServer__finalizePairing__block_invoke_651(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  v10 = v9;
  if (v6)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v12 = *(a1 + 32);
      v17 = 138543874;
      v18 = v11;
      v19 = 2112;
      v20 = v12;
      v21 = 2112;
      v22 = v6;
      _os_log_impl(&dword_22AEAE000, v10, OS_LOG_TYPE_ERROR, "%{public}@Accessory Configuration: completed for server:%@ with Error: %@.", &v17, 0x20u);
LABEL_6:
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v13 = [*(a1 + 32) nodeID];
    v14 = [*(a1 + 32) fabricID];
    v15 = [*(a1 + 32) objectID];
    v17 = 138544386;
    v18 = v11;
    v19 = 2112;
    v20 = v13;
    v21 = 2112;
    v22 = v14;
    v23 = 2112;
    v24 = v15;
    v25 = 2112;
    v26 = v5;
    _os_log_impl(&dword_22AEAE000, v10, OS_LOG_TYPE_INFO, "%{public}@Accessory Configuration for %@/%@(%@) %@", &v17, 0x34u);

    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v7);
  dispatch_group_leave(*(a1 + 40));

  v16 = *MEMORY[0x277D85DE8];
}

- (id)populateACLEntriesForPairing
{
  v110 = *MEMORY[0x277D85DE8];
  if ([(HMMTRAccessoryServer *)self isKnownToSystemCommissioner])
  {
    v3 = objc_autoreleasePoolPush();
    v4 = self;
    v5 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = HMFGetLogIdentifier();
      *buf = 138543362;
      v105 = v6;
      _os_log_impl(&dword_22AEAE000, v5, OS_LOG_TYPE_DEBUG, "%{public}@Not populating ACL entries for System Commissioner pairing", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v3);
    v7 = [MEMORY[0x277CBEAC0] dictionary];
  }

  else
  {
    v8 = [MEMORY[0x277CBEB18] array];
    v9 = [MEMORY[0x277CBEB18] array];
    if (isFeatureMatterLocalFabricConfigEnabled())
    {
      v100 = v9;
      v10 = MEMORY[0x277CD5230];
      v11 = [(HMMTRAccessoryServer *)self controllerWrapper];
      v12 = [v11 startupParams];
      v13 = [v12 operationalCertificate];
      v14 = [v10 convertX509Certificate:v13];

      v101 = [objc_alloc(MEMORY[0x277CD5228]) initWithTLVBytes:v14];
      v15 = [(HMMTRAccessoryServer *)self browser];
      v16 = [(HMMTRAccessoryServer *)self fabricUUID];
      v17 = [v15 appleHomeFabricWithTargetFabricUUID:v16];

      v18 = [v17 delegate];
      v19 = [v18 accessoryAdministerPrivilegeCATID:0];

      v99 = v19;
      if (v19)
      {
        v20 = [v19 integerValue];
        v21 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v20 | 0xFFFFFFFD00000000];
        [v8 addObject:v21];

        v22 = objc_autoreleasePoolPush();
        v23 = self;
        v24 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
        {
          v25 = HMFGetLogIdentifier();
          *buf = 138543874;
          v105 = v25;
          v106 = 2112;
          v107 = v99;
          v108 = 2048;
          v109 = [v99 integerValue];
          _os_log_impl(&dword_22AEAE000, v24, OS_LOG_TYPE_INFO, "%{public}@ACL: adding admin CAT %@ (0x%lX)", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v22);
      }

      v26 = [v17 delegate];
      v27 = [v26 accessoryOperatePrivilegeCATID:0];

      if (v27)
      {
        v28 = [v27 integerValue];
        v29 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v28 | 0xFFFFFFFD00000000];
        [v100 addObject:v29];

        v30 = objc_autoreleasePoolPush();
        v31 = self;
        v32 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
        {
          v33 = HMFGetLogIdentifier();
          v34 = [v27 integerValue];
          *buf = 138543874;
          v105 = v33;
          v106 = 2112;
          v107 = v27;
          v108 = 2048;
          v109 = v34;
          _os_log_impl(&dword_22AEAE000, v32, OS_LOG_TYPE_INFO, "%{public}@ACL: adding operate CAT %@ (0x%lX)", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v30);
      }

      v35 = [v17 delegate];
      v36 = [v35 isCurrentUserOwner];

      if (v36 && v101)
      {
        v37 = [v101 subject];
        v38 = [v37 caseAuthenticatedTags];
        v39 = [v38 allObjects];
        v103[0] = MEMORY[0x277D85DD0];
        v103[1] = 3221225472;
        v103[2] = __52__HMMTRAccessoryServer_populateACLEntriesForPairing__block_invoke;
        v103[3] = &unk_2786EFCB8;
        v103[4] = self;
        v40 = [v39 na_map:v103];
        [v8 addObjectsFromArray:v40];
      }

      v41 = [(HAPAccessoryServer *)self pairingRequest];
      v42 = [v41 isOwnerPairing];

      if ((v42 & 1) == 0)
      {
        if (v101)
        {
          v43 = [v101 subject];
          v44 = [v43 caseAuthenticatedTags];
          v45 = [v44 allObjects];
          v102[0] = MEMORY[0x277D85DD0];
          v102[1] = 3221225472;
          v102[2] = __52__HMMTRAccessoryServer_populateACLEntriesForPairing__block_invoke_640;
          v102[3] = &unk_2786EFCB8;
          v102[4] = self;
          v46 = [v45 na_map:v102];
          [v100 addObjectsFromArray:v46];
        }

        v47 = [(HMMTRAccessoryServer *)self deviceController];
        v48 = [v47 controllerNodeID];

        if (v48)
        {
          v49 = objc_autoreleasePoolPush();
          v50 = self;
          v51 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
          {
            v52 = HMFGetLogIdentifier();
            v53 = [v48 integerValue];
            *buf = 138543874;
            v105 = v52;
            v106 = 2112;
            v107 = v48;
            v108 = 2048;
            v109 = v53;
            _os_log_impl(&dword_22AEAE000, v51, OS_LOG_TYPE_INFO, "%{public}@ACL: adding current controller's NodeID %@ (0x%lX)", buf, 0x20u);
          }

          objc_autoreleasePoolPop(v49);
          [v8 addObject:v48];
        }
      }

      v54 = [(HMMTRAccessoryServer *)self fabricUUID];

      if (v54)
      {
        v55 = [(HMMTRAccessoryServer *)self browser];
        v56 = [(HMMTRAccessoryServer *)self fabricUUID];
        v57 = [v55 fabricDataForPairingTargetFabricUUID:v56];

        v58 = [v57 residentNodeID];

        if (v58)
        {
          v59 = objc_autoreleasePoolPush();
          v60 = self;
          v61 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v61, OS_LOG_TYPE_INFO))
          {
            v62 = HMFGetLogIdentifier();
            v63 = [v58 integerValue];
            *buf = 138543874;
            v105 = v62;
            v106 = 2112;
            v107 = v58;
            v108 = 2048;
            v109 = v63;
            _os_log_impl(&dword_22AEAE000, v61, OS_LOG_TYPE_INFO, "%{public}@ACL: adding resident's NodeID %@ (0x%lX)", buf, 0x20u);
          }

          objc_autoreleasePoolPop(v59);
          [v8 addObject:v58];
        }
      }

      else
      {
        v58 = 0;
      }

      v72 = [(HMMTRAccessoryServer *)self controllerWrapper];
      v73 = [v72 startupParams];
      v74 = [v73 operationalCertificate];
      v75 = [HMMTRAccessoryServer certificateSubjectHasCATs:v74];

      if (!v75)
      {
        v76 = [(HMMTRAccessoryServer *)self deviceController];
        v77 = [v76 controllerNodeID];

        if (v77 && ([v77 isEqual:v58] & 1) == 0)
        {
          v78 = objc_autoreleasePoolPush();
          v79 = self;
          v80 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v80, OS_LOG_TYPE_INFO))
          {
            v81 = HMFGetLogIdentifier();
            v82 = [v77 integerValue];
            *buf = 138543874;
            v105 = v81;
            v106 = 2112;
            v107 = v77;
            v108 = 2048;
            v109 = v82;
            _os_log_impl(&dword_22AEAE000, v80, OS_LOG_TYPE_INFO, "%{public}@ACL: adding current controller's NodeID %@ (0x%lX) because it couldn't find any CAT in NOC", buf, 0x20u);
          }

          objc_autoreleasePoolPop(v78);
          [v8 addObject:v77];
        }
      }

      v9 = v100;
    }

    else
    {
      v64 = [(HMMTRAccessoryServer *)self fabricUUID];

      if (v64)
      {
        v65 = [(HMMTRAccessoryServer *)self browser];
        v66 = [(HMMTRAccessoryServer *)self fabricUUID];
        v67 = [v65 fabricDataForPairingTargetFabricUUID:v66];

        v17 = [v67 residentNodeID];

        if (v17)
        {
          v68 = objc_autoreleasePoolPush();
          v69 = self;
          v70 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v70, OS_LOG_TYPE_INFO))
          {
            v71 = HMFGetLogIdentifier();
            *buf = 138543874;
            v105 = v71;
            v106 = 2112;
            v107 = v17;
            v108 = 2048;
            v109 = [v17 integerValue];
            _os_log_impl(&dword_22AEAE000, v70, OS_LOG_TYPE_INFO, "%{public}@ACL: adding resident's NodeID %@ (0x%lX)", buf, 0x20u);
          }

          objc_autoreleasePoolPop(v68);
          [v8 addObject:v17];
        }
      }

      else
      {
        v17 = 0;
      }

      v83 = [(HMMTRAccessoryServer *)self deviceController];
      v14 = [v83 controllerNodeID];

      if (v14 && ([v14 isEqual:v17] & 1) == 0)
      {
        v84 = objc_autoreleasePoolPush();
        v85 = self;
        v86 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v86, OS_LOG_TYPE_INFO))
        {
          v87 = HMFGetLogIdentifier();
          v88 = [v14 integerValue];
          *buf = 138543874;
          v105 = v87;
          v106 = 2112;
          v107 = v14;
          v108 = 2048;
          v109 = v88;
          _os_log_impl(&dword_22AEAE000, v86, OS_LOG_TYPE_INFO, "%{public}@ACL: adding current controller's NodeID %@ (0x%lX)", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v84);
        [v8 addObject:v14];
      }
    }

    v7 = [MEMORY[0x277CBEB38] dictionary];
    v89 = MEMORY[0x277CBEB98];
    v90 = [v8 copy];
    v91 = [v89 setWithArray:v90];
    v92 = [v91 allObjects];
    [v7 setObject:v92 forKeyedSubscript:@"adminNodesForPairing"];

    v93 = MEMORY[0x277CBEB98];
    v94 = [v9 copy];
    v95 = [v93 setWithArray:v94];
    v96 = [v95 allObjects];
    [v7 setObject:v96 forKeyedSubscript:@"regularNodesForPairing"];
  }

  v97 = *MEMORY[0x277D85DE8];

  return v7;
}

id __52__HMMTRAccessoryServer_populateACLEntriesForPairing__block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v11 = 138543874;
    v12 = v7;
    v13 = 2112;
    v14 = v3;
    v15 = 2048;
    v16 = [v3 integerValue];
    _os_log_impl(&dword_22AEAE000, v6, OS_LOG_TYPE_INFO, "%{public}@ACL: adding admin CAT %@ (0x%lX) from NOC", &v11, 0x20u);
  }

  objc_autoreleasePoolPop(v4);
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:{objc_msgSend(v3, "integerValue") | 0xFFFFFFFD00000000}];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

id __52__HMMTRAccessoryServer_populateACLEntriesForPairing__block_invoke_640(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v11 = 138543874;
    v12 = v7;
    v13 = 2112;
    v14 = v3;
    v15 = 2048;
    v16 = [v3 integerValue];
    _os_log_impl(&dword_22AEAE000, v6, OS_LOG_TYPE_INFO, "%{public}@ACL: adding operate CAT %@ (0x%lX) from NOC", &v11, 0x20u);
  }

  objc_autoreleasePoolPop(v4);
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:{objc_msgSend(v3, "integerValue") | 0xFFFFFFFD00000000}];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)populateACLEntriesAfterPairing
{
  v82 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = [MEMORY[0x277CBEB18] array];
  if (!isFeatureMatterLocalFabricConfigEnabled())
  {
    v38 = [(HMMTRAccessoryServer *)self deviceController];
    v39 = [v38 controllerNodeID];
    [v3 addObject:v39];

LABEL_19:
    v19 = 0;
    v10 = 0;
    goto LABEL_30;
  }

  v5 = [(HMMTRAccessoryServer *)self browser];
  v6 = [(HMMTRAccessoryServer *)self fabricUUID];
  v7 = [v5 appleHomeFabricWithTargetFabricUUID:v6];

  v8 = [v7 delegate];
  LODWORD(v6) = [v8 isCurrentUserOwner];

  if (!v6)
  {
    v40 = objc_autoreleasePoolPush();
    v41 = self;
    v42 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
    {
      v43 = HMFGetLogIdentifier();
      v44 = [(HMMTRAccessoryServer *)v41 fabricID];
      *buf = 138543618;
      v73 = v43;
      v74 = 2112;
      v75 = v44;
      _os_log_impl(&dword_22AEAE000, v42, OS_LOG_TYPE_DEBUG, "%{public}@Not owner for home with fabric %@ - Not updating ACLs and blocking invalidation", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v40);
    [(HMMTRAccessoryServer *)v41 setBlockInvalidation:1];

    goto LABEL_19;
  }

  v9 = [v7 delegate];
  v10 = [v9 accessoryAdministerPrivilegeCATID:0];

  if (v10)
  {
    v11 = [v10 integerValue];
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v11 | 0xFFFFFFFD00000000];
    [v3 addObject:v12];

    v13 = objc_autoreleasePoolPush();
    v14 = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      HMFGetLogIdentifier();
      v17 = v16 = v7;
      *buf = 138543874;
      v73 = v17;
      v74 = 2112;
      v75 = v10;
      v76 = 2048;
      v77 = [v10 integerValue];
      _os_log_impl(&dword_22AEAE000, v15, OS_LOG_TYPE_INFO, "%{public}@ACL: adding admin CAT %@ (0x%lX)", buf, 0x20u);

      v7 = v16;
    }

    objc_autoreleasePoolPop(v13);
  }

  v18 = [v7 delegate];
  v19 = [v18 accessoryOperatePrivilegeCATID:0];

  v71 = v4;
  if (v19)
  {
    v20 = v7;
    v21 = [v19 integerValue];
    v22 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v21 | 0xFFFFFFFD00000000];
    [v4 addObject:v22];

    v23 = objc_autoreleasePoolPush();
    v24 = self;
    v25 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      v26 = HMFGetLogIdentifier();
      v27 = [v19 integerValue];
      *buf = 138543874;
      v73 = v26;
      v74 = 2112;
      v75 = v19;
      v76 = 2048;
      v77 = v27;
      _os_log_impl(&dword_22AEAE000, v25, OS_LOG_TYPE_INFO, "%{public}@ACL: adding operate CAT %@ (0x%lX)", buf, 0x20u);

      v4 = v71;
    }

    objc_autoreleasePoolPop(v23);
    v7 = v20;
  }

  v70 = v7;
  v28 = [v7 targetFabricUUID];
  if (v28)
  {
    v29 = [(HMMTRAccessoryServer *)self browser];
    v30 = [v29 fabricDataForPairingTargetFabricUUID:v28];

    v31 = [v30 residentNodeID];

    if (v31)
    {
      v32 = objc_autoreleasePoolPush();
      v33 = self;
      v34 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
      {
        v35 = HMFGetLogIdentifier();
        v36 = [v31 integerValue];
        *buf = 138543874;
        v73 = v35;
        v74 = 2112;
        v75 = v31;
        v76 = 2048;
        v77 = v36;
        v37 = "%{public}@ACL: adding resident's NodeID %@ (0x%lX)";
LABEL_24:
        _os_log_impl(&dword_22AEAE000, v34, OS_LOG_TYPE_INFO, v37, buf, 0x20u);

        goto LABEL_25;
      }

      goto LABEL_25;
    }
  }

  v45 = [MEMORY[0x277D0F8E8] productInfo];
  v46 = [v45 productPlatform];

  if (v46 == 4)
  {
    v47 = [(HMMTRAccessoryServer *)self deviceController];
    v31 = [v47 controllerNodeID];

    if (!v31)
    {
LABEL_26:

      goto LABEL_27;
    }

    v32 = objc_autoreleasePoolPush();
    v48 = self;
    v34 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
    {
      v35 = HMFGetLogIdentifier();
      v49 = [v31 integerValue];
      *buf = 138543874;
      v73 = v35;
      v74 = 2112;
      v75 = v31;
      v76 = 2048;
      v77 = v49;
      v37 = "%{public}@ACL: adding current device's NodeID %@ (0x%lX)";
      goto LABEL_24;
    }

LABEL_25:

    objc_autoreleasePoolPop(v32);
    [v3 addObject:v31];
    v4 = v71;
    goto LABEL_26;
  }

LABEL_27:
  v50 = objc_autoreleasePoolPush();
  v51 = self;
  v52 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
  {
    v53 = HMFGetLogIdentifier();
    v54 = [(HMMTRAccessoryServer *)v51 browser];
    [v54 currentFabricUUID];
    v55 = v69 = v50;
    [(HMMTRAccessoryServer *)v51 fabricID];
    v57 = v56 = v28;
    *buf = 138544386;
    v73 = v53;
    v74 = 2112;
    v75 = v10;
    v76 = 2112;
    v77 = v19;
    v78 = 2112;
    v79 = v55;
    v80 = 2112;
    v81 = v57;
    _os_log_impl(&dword_22AEAE000, v52, OS_LOG_TYPE_DEBUG, "%{public}@Updating CATs (admin %@, user %@) for FabricID (browser's fabric %@, server's %@", buf, 0x34u);

    v28 = v56;
    v50 = v69;

    v4 = v71;
  }

  objc_autoreleasePoolPop(v50);
LABEL_30:
  v58 = [MEMORY[0x277CBEB38] dictionary];
  v59 = MEMORY[0x277CBEB98];
  v60 = [v3 copy];
  v61 = [v59 setWithArray:v60];
  v62 = [v61 allObjects];
  [v58 setObject:v62 forKeyedSubscript:@"adminNodesForPairing"];

  v63 = MEMORY[0x277CBEB98];
  v64 = [v4 copy];
  v65 = [v63 setWithArray:v64];
  v66 = [v65 allObjects];
  [v58 setObject:v66 forKeyedSubscript:@"regularNodesForPairing"];

  v67 = *MEMORY[0x277D85DE8];

  return v58;
}

- (void)_pairingComplete:(id)a3 context:(id)a4
{
  v77 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ([(HMMTRAccessoryServer *)self pairingProgress]== 3 || [(HMMTRAccessoryServer *)self pairingProgress]== 4)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543618;
      *&buf[4] = v11;
      *&buf[12] = 2112;
      *&buf[14] = v6;
      _os_log_impl(&dword_22AEAE000, v10, OS_LOG_TYPE_DEBUG, "%{public}@Pairing has already finished, ignoring pairing completion indication with error: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
  }

  else
  {
    v53 = v7;
    linkLayerType = self->_linkLayerType;
    v14 = [(HMMTRAccessoryServer *)self primaryAccessory];
    [v14 setLinkLayerType:linkLayerType];

    v15 = objc_autoreleasePoolPush();
    v16 = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      v19 = HAPLinkLayerTypeDescription();
      *buf = 138544386;
      *&buf[4] = v18;
      *&buf[12] = 2114;
      *&buf[14] = @"accessoryTransport";
      *&buf[22] = 2112;
      *&buf[24] = @"accessory transport";
      v73 = 2114;
      v74 = @"transport";
      v75 = 2112;
      v76 = v19;
      _os_log_impl(&dword_22AEAE000, v17, OS_LOG_TYPE_INFO, "%{public}@tag=%{public}@ desc=%@ %{public}@=%@", buf, 0x34u);
    }

    objc_autoreleasePoolPop(v15);
    v20 = [MEMORY[0x277D17DE8] sharedInstance];
    v21 = objc_alloc(MEMORY[0x277D17DF8]);
    v22 = HAPLinkLayerTypeDescription();
    if (v22)
    {
      v70 = @"transport";
      linkLayerType = HAPLinkLayerTypeDescription();
      v71 = linkLayerType;
      v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v71 forKeys:&v70 count:1];
    }

    else
    {
      v23 = MEMORY[0x277CBEC10];
    }

    v24 = [v21 initWithTag:@"accessoryTransport" data:v23];
    v25 = [(HMFActivity *)v16->_activity tagProcessorList];
    [v20 submitTaggedEvent:v24 processorList:v25];

    if (v22)
    {
    }

    v26 = objc_autoreleasePoolPush();
    v27 = v16;
    v28 = HMFGetOSLogHandle();
    v29 = v28;
    if (v6)
    {
      v7 = v53;
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v30 = HMFGetLogIdentifier();
        *buf = 138543874;
        *&buf[4] = v30;
        *&buf[12] = 2112;
        *&buf[14] = v6;
        *&buf[22] = 2112;
        *&buf[24] = v53;
        _os_log_impl(&dword_22AEAE000, v29, OS_LOG_TYPE_ERROR, "%{public}@CHIP Accessory pairing failed: %@, %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v26);
      [(HMMTRAccessoryServer *)v27 _handlePairingFailureWithError:v6 context:v53];
    }

    else
    {
      v7 = v53;
      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        v31 = HMFGetLogIdentifier();
        *buf = 138543362;
        *&buf[4] = v31;
        _os_log_impl(&dword_22AEAE000, v29, OS_LOG_TYPE_INFO, "%{public}@CHIP Accessory pairing succeeded", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v26);
      [(HMMTRAccessoryServer *)v27 _notifyDelegateOfPairingStep:8];
      memset(buf, 0, sizeof(buf));
      v68 = 0u;
      v69 = 0u;
      cced25519_make_key_pair_compat();
      v55 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:buf length:32];
      if ([(HMMTRAccessoryServer *)v27 pairedState]!= 1)
      {
        v59 = 0u;
        v60 = 0u;
        v57 = 0u;
        v58 = 0u;
        obj = [(HAPAccessoryServer *)v27 accessories];
        v32 = [obj countByEnumeratingWithState:&v57 objects:v67 count:16];
        if (v32)
        {
          v33 = v32;
          v34 = *v58;
          while (2)
          {
            for (i = 0; i != v33; ++i)
            {
              if (*v58 != v34)
              {
                objc_enumerationMutation(obj);
              }

              v36 = *(*(&v57 + 1) + 8 * i);
              v37 = [(HAPAccessoryServer *)v27 keyStore];
              v38 = [v36 identifier];
              v56 = 0;
              v39 = [v37 savePublicKey:v55 forAccessoryName:v38 error:&v56];
              v40 = v56;

              if ((v39 & 1) == 0)
              {
                v42 = objc_autoreleasePoolPush();
                v43 = v27;
                v44 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
                {
                  v45 = HMFGetLogIdentifier();
                  *v61 = 138543874;
                  v62 = v45;
                  v63 = 2112;
                  v64 = v36;
                  v65 = 2112;
                  v66 = v40;
                  _os_log_impl(&dword_22AEAE000, v44, OS_LOG_TYPE_ERROR, "%{public}@Failed to save public key for paired accessory %@: %@", v61, 0x20u);
                }

                objc_autoreleasePoolPop(v42);
                v46 = [HMMTRAccessoryPairingEndContext hapContextWithStep:8 error:v40];
                [(HMMTRAccessoryServer *)v43 _handlePairingFailureWithError:v40 context:v46];

                v7 = v53;
                goto LABEL_43;
              }
            }

            v33 = [obj countByEnumeratingWithState:&v57 objects:v67 count:16];
            if (v33)
            {
              continue;
            }

            break;
          }
        }

        v7 = v53;
      }

      if ([(HMMTRAccessoryServer *)v27 pairedState]== 1)
      {
        [(HMMTRAccessoryServer *)v27 setPairedState:2];
        [(HMMTRAccessoryServer *)v27 setPairingProgress:4];
        if ([(HMMTRAccessoryServer *)v27 knownToSystemCommissioner])
        {
          [(HMMTRAccessoryServer *)v27 _notifyDelegateOfPairingProgress:13];
          v41 = [(HMMTRAccessoryServer *)v27 browser];
          [v41 commitStagedAccessoryServer:v27];
        }

        else
        {
          v47 = [(HMMTRAccessoryServer *)v27 stageCompletion];

          if (v47)
          {
            v48 = [(HMMTRAccessoryServer *)v27 stageCompletion];
            (v48)[2](v48, 1, v27, 0);

            [(HMMTRAccessoryServer *)v27 setStageCompletion:0];
          }

          else
          {
            v49 = objc_autoreleasePoolPush();
            v50 = v27;
            v51 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
            {
              v52 = HMFGetLogIdentifier();
              *v61 = 138543362;
              v62 = v52;
              _os_log_impl(&dword_22AEAE000, v51, OS_LOG_TYPE_ERROR, "%{public}@CHIP Accessory is paired and staged but has no stage completion handler set!", v61, 0xCu);
            }

            objc_autoreleasePoolPop(v49);
          }

          [(HMMTRAccessoryServer *)v27 _clearCommissioneeInfoAfterPairingCompletion];
        }
      }

      else
      {
        [(HMMTRAccessoryServer *)v27 _finalizePairing];
      }

LABEL_43:
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (id)_setupPayloadForLastCommissioning
{
  if ([(HMMTRAccessoryServer *)self pairingUsingMatterSupport])
  {
    [(HMMTRAccessoryServer *)self setupPayloadForPairingUsingMatterSupport];
  }

  else
  {
    [(HMMTRAccessoryServer *)self _pairingSetupPayload];
  }
  v3 = ;

  return v3;
}

- (id)_pairingSetupPayload
{
  v43 = *MEMORY[0x277D85DE8];
  v3 = [(HMMTRAccessoryServer *)self setupPayloadString];
  if (v3 && (v4 = v3, -[HMMTRAccessoryServer setupPayloadString](self, "setupPayloadString"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 isEqual:&stru_283ED2308], v5, v4, (v6 & 1) == 0))
  {
    v18 = objc_autoreleasePoolPush();
    v19 = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = HMFGetLogIdentifier();
      nodeID = v19->_nodeID;
      v23 = [(HMMTRAccessoryServer *)v19 setupPayloadString];
      *buf = 138543874;
      v34 = v21;
      v35 = 2112;
      v36 = nodeID;
      v37 = 2112;
      v38 = v23;
      _os_log_impl(&dword_22AEAE000, v20, OS_LOG_TYPE_INFO, "%{public}@Pairing node ID: %@, onboarding payload: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v18);
    v24 = MEMORY[0x277CD5528];
    v25 = [(HMMTRAccessoryServer *)v19 setupPayloadString];
    v32 = 0;
    v16 = [v24 setupPayloadWithOnboardingPayload:v25 error:&v32];
    v17 = v32;

    if (!v16)
    {
      v26 = objc_autoreleasePoolPush();
      v27 = v19;
      v28 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v29 = HMFGetLogIdentifier();
        *buf = 138543618;
        v34 = v29;
        v35 = 2112;
        v36 = v17;
        _os_log_impl(&dword_22AEAE000, v28, OS_LOG_TYPE_ERROR, "%{public}@Failed to parse onboarding payload: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v26);
      v16 = 0;
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
      v11 = v10;
      v12 = v8->_nodeID;
      discriminator = v8->_discriminator;
      if (v8->_discriminatorIsOriginatedFromShort)
      {
        v14 = @"YES";
      }

      else
      {
        v14 = @"NO";
      }

      setUpPINCode = v8->_setUpPINCode;
      *buf = 138544386;
      v34 = v10;
      v35 = 2112;
      v36 = v12;
      v37 = 2112;
      v38 = discriminator;
      v39 = 2112;
      v40 = v14;
      v41 = 2112;
      v42 = setUpPINCode;
      _os_log_impl(&dword_22AEAE000, v9, OS_LOG_TYPE_INFO, "%{public}@Pairing node ID: %@, discriminator: %@, short: %@, setupPINCode: %@", buf, 0x34u);
    }

    objc_autoreleasePoolPop(v7);
    v16 = [objc_alloc(MEMORY[0x277CD5528]) initWithSetupPasscode:v8->_setUpPINCode discriminator:v8->_discriminator];
    [v16 setHasShortDiscriminator:v8->_discriminatorIsOriginatedFromShort];
    v17 = 0;
  }

  v30 = *MEMORY[0x277D85DE8];

  return v16;
}

- (void)_clearCommissioneeInfoAfterPairingCompletion
{
  [(HMMTRAccessoryServer *)self setCommissioneeInfo:0];
  v3 = [(HMMTRAccessoryServer *)self browser];
  [v3 setCommissioneeAccessoryServer:0];

  v4 = [(HMMTRAccessoryServer *)self controllerWrapper];
  v5 = [v4 startupParams];
  v6 = [v5 operationalCertificateIssuer];

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

  [v8 setCommissioneeNodeID:0];
}

- (void)_persistAccessoryServerData
{
  v89 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    [(HMMTRAccessoryServer *)v4 knownToSystemCommissioner];
    v7 = HMFBooleanToString();
    v83 = 138543874;
    v84 = v6;
    v85 = 2112;
    v86 = v4;
    v87 = 2112;
    v88 = v7;
    _os_log_impl(&dword_22AEAE000, v5, OS_LOG_TYPE_INFO, "%{public}@Persisting HomeKitMatter Data for Accessory: %@, system commissioner mode: %@", &v83, 0x20u);
  }

  objc_autoreleasePoolPop(v3);
  v8 = [(HAPAccessoryServer *)v4 pairingRequest];
  v9 = [v8 isOwnerPairing];

  if (!isFeatureMatterLocalFabricConfigEnabled())
  {
    goto LABEL_8;
  }

  v10 = [(HMMTRAccessoryServer *)v4 fabricUUID];
  if (!v10)
  {
    goto LABEL_8;
  }

  v11 = v10;
  v12 = [(HMMTRAccessoryServer *)v4 browser];
  v13 = [v12 storage];
  v14 = [v13 dataSource];
  v15 = [(HMMTRAccessoryServer *)v4 fabricUUID];
  v16 = [v14 appleHomeFabricWithTargetFabricUUID:v15];

  if (v16)
  {
    v17 = v9 ^ 1;
    v18 = [v16 delegate];
    v19 = [v18 requiresRemoteFabricDataUpdateThroughPairingCompletionMessage];

    if (((v19 | v17) & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else
  {
LABEL_8:
    if (v9)
    {
      goto LABEL_10;
    }
  }

  if (![(HMMTRAccessoryServer *)v4 knownToSystemCommissioner])
  {
    v23 = [(HMMTRAccessoryServer *)v4 browser];
    [v23 notifyPairingCompletionForAccessoryServer:v4];
    goto LABEL_44;
  }

LABEL_10:
  v20 = [(HMMTRAccessoryServer *)v4 knownToSystemCommissioner];
  v21 = [(HMMTRAccessoryServer *)v4 browser];
  v22 = v21;
  if (v20)
  {
    v23 = [v21 storageForSystemCommissioner];
  }

  else
  {
    v24 = [(HMMTRAccessoryServer *)v4 fabricUUID];
    v25 = [(HAPAccessoryServer *)v4 pairingRequest];
    if (v25)
    {
      v26 = [(HAPAccessoryServer *)v4 pairingRequest];
      v23 = [v22 storageForFabricUUID:v24 sharedAdmin:{objc_msgSend(v26, "isOwnerPairing") ^ 1}];
    }

    else
    {
      v23 = [v22 storageForFabricUUID:v24 sharedAdmin:0];
    }
  }

  [v23 clearStaleItems];
  [v23 startLocalStorageMode];
  v27 = [(HMMTRAccessoryServer *)v4 nodeID];
  [v23 addPairedNodeID:v27];

  v28 = [(HMMTRAccessoryServer *)v4 vendorID];
  v29 = [(HMMTRAccessoryServer *)v4 nodeID];
  [v23 setVendorID:v28 forNode:v29];

  v30 = [(HMMTRAccessoryServer *)v4 fabricID];
  v31 = [(HMMTRAccessoryServer *)v4 nodeID];
  [v23 setFabricID:v30 forNode:v31];

  v32 = [(HMMTRAccessoryServer *)v4 productID];
  v33 = [(HMMTRAccessoryServer *)v4 nodeID];
  [v23 setProductID:v32 forNode:v33];

  v34 = [(HAPAccessoryServer *)v4 category];
  v35 = [(HMMTRAccessoryServer *)v4 nodeID];
  [v23 setCategory:v34 forNode:v35];

  v36 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HAPAccessoryServer configNumber](v4, "configNumber")}];
  v37 = [(HMMTRAccessoryServer *)v4 nodeID];
  [v23 setConfigNumber:v36 forNode:v37];

  v38 = [(HMMTRAccessoryServer *)v4 isStaged];
  v39 = [(HMMTRAccessoryServer *)v4 nodeID];
  [v23 setStaged:v38 forNode:v39];

  v40 = [(HMMTRAccessoryServer *)v4 topology];

  if (v40)
  {
    v41 = [(HMMTRAccessoryServer *)v4 topology];
    v42 = [(HMMTRAccessoryServer *)v4 nodeID];
    [v23 setTopology:v41 forNode:v42];
  }

  else if (![(HMMTRAccessoryServer *)v4 isKnownToSystemCommissioner])
  {
    _HMFPreconditionFailure();
    goto LABEL_46;
  }

  if (![(HMMTRAccessoryServer *)v4 isKnownToSystemCommissioner])
  {
    goto LABEL_39;
  }

  v43 = [(HMMTRAccessoryServer *)v4 ensureCommissioningID];
  v44 = [(HMMTRAccessoryServer *)v4 nodeID];
  [v23 setSystemCommissionerFabricNodeID:v44 forUuid:v43];

  v45 = [(HMMTRAccessoryServer *)v4 nodeID];
  [v23 setUuid:v43 forSystemCommissionerFabricNode:v45];

  v46 = [(HMMTRAccessoryServer *)v4 primaryAccessory];
  v47 = [v46 serialNumber];

  if (v47)
  {
    v48 = [(HMMTRAccessoryServer *)v4 primaryAccessory];
    v49 = [v48 serialNumber];
    v50 = [(HMMTRAccessoryServer *)v4 nodeID];
    [v23 setSerialNumber:v49 forSystemCommissionerFabricNode:v50];
  }

  v51 = [(HAPAccessoryServer *)v4 name];
  v52 = [(HMMTRAccessoryServer *)v4 nodeID];
  [v23 setDeviceName:v51 forSystemCommissionerFabricNode:v52];

  v53 = [(HMMTRAccessoryServer *)v4 setupPayloadString];
  if (v53)
  {
    v54 = v53;
    v55 = [(HMMTRAccessoryServer *)v4 setupPayloadString];
    v56 = [v55 isEqual:&stru_283ED2308];

    if ((v56 & 1) == 0)
    {
      v61 = [(HMMTRAccessoryServer *)v4 setupPayloadString];
      goto LABEL_29;
    }
  }

  v57 = [(HMMTRAccessoryServer *)v4 onboardingSetupPayloadString];
  if (v57)
  {
    v58 = v57;
    v59 = [(HMMTRAccessoryServer *)v4 onboardingSetupPayloadString];
    v60 = [v59 isEqual:&stru_283ED2308];

    if ((v60 & 1) == 0)
    {
      v61 = [(HMMTRAccessoryServer *)v4 onboardingSetupPayloadString];
LABEL_29:
      v62 = v61;
      v63 = [(HMMTRAccessoryServer *)v4 nodeID];
      [v23 setSetupPayload:v62 forSystemCommissionerFabricNode:v63];
    }
  }

  if (isFeatureMatterLocalFabricConfigEnabled())
  {
    v64 = [(HMMTRAccessoryServer *)v4 isWEDDevice];
    v65 = [(HMMTRAccessoryServer *)v4 nodeID];
    [v23 setWEDSupported:v64 forSystemCommissionerFabricNode:v65];

    if ([(HMMTRAccessoryServer *)v4 isWEDDevice])
    {
      v66 = [(HMMTRAccessoryServer *)v4 eMACAddress];
      v67 = [(HMMTRAccessoryServer *)v4 nodeID];
      [v23 setExtendedMACAddress:v66 forSystemCommissionerFabricNode:v67];
    }
  }

  if (!_os_feature_enabled_impl())
  {
    goto LABEL_38;
  }

  v68 = [(HMMTRAccessoryServer *)v4 commissioneeInfo];

  if (!v68)
  {
LABEL_46:
    _HMFPreconditionFailure();
  }

  v69 = MEMORY[0x277CD55B0];
  v70 = [(HMMTRAccessoryServer *)v4 commissioneeInfo];
  v71 = [v70 rootEndpoint];
  v72 = [v69 threadCredentialManagementEndpoint:v71];

  if (v72)
  {
    v73 = [(HMMTRAccessoryServer *)v4 nodeID];
    [v23 setThreadCredentialManagementEndpoint:v72 forSystemCommissionerFabricNode:v73];
  }

LABEL_38:
LABEL_39:
  [v23 endLocalStorageModeBySyncingToRemote:1];
  if ([(HMMTRAccessoryServer *)v4 isKnownToSystemCommissioner])
  {
    v74 = [(HMMTRAccessoryServer *)v4 browser];
    v75 = [(HMMTRAccessoryServer *)v4 commissioningID];
    v76 = [(HMMTRAccessoryServer *)v4 vendorID];
    v77 = [(HMMTRAccessoryServer *)v4 productID];
    v78 = [(HMMTRAccessoryServer *)v4 primaryAccessory];
    v79 = [v78 serialNumber];
    v80 = [(HMMTRAccessoryServer *)v4 setupPayloadString];
    if ([v80 isEqual:&stru_283ED2308])
    {
      [v74 cleanUpStaleSystemCommissionerPairingsWithNewlyPairedUUID:v75 vendorID:v76 productID:v77 serialNumber:v79 setupPayload:0];
    }

    else
    {
      v81 = [(HMMTRAccessoryServer *)v4 setupPayloadString];
      [v74 cleanUpStaleSystemCommissionerPairingsWithNewlyPairedUUID:v75 vendorID:v76 productID:v77 serialNumber:v79 setupPayload:v81];
    }
  }

LABEL_44:

  [(HMMTRAccessoryServer *)v4 setStorageUpdatePending:0];
  v82 = *MEMORY[0x277D85DE8];
}

- (void)_deleteAccessoryServerData
{
  if (![(HMMTRAccessoryServer *)self isKnownToSystemCommissioner])
  {
    v3 = [(HMMTRAccessoryServer *)self browser];
    v4 = [(HMMTRAccessoryServer *)self fabricUUID];
    v6 = [v3 storageForFabricUUID:v4 sharedAdmin:0];

    v5 = [(HMMTRAccessoryServer *)self nodeID];
    [v6 removeRecordsForNode:v5 systemCommissionerFabric:0];
  }
}

- (void)_notifyDelegateOfPairingProgress:(int64_t)a3 error:(id)a4
{
  v6 = a4;
  v7 = [(HAPAccessoryServer *)self delegateQueue];
  if (v7)
  {
    v8 = v7;
    v9 = [(HMMTRAccessoryServer *)self _delegateRespondsToSelector:sel_accessoryServer_updatePairingProgress_];

    if (v9)
    {
      v10 = [(HAPAccessoryServer *)self delegateQueue];
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __63__HMMTRAccessoryServer__notifyDelegateOfPairingProgress_error___block_invoke;
      v15[3] = &unk_2786EF620;
      v15[4] = self;
      v15[5] = a3;
      dispatch_async(v10, v15);
    }
  }

  if ([(HMMTRAccessoryServer *)self isKnownToSystemCommissioner])
  {
    v11 = [(HMMTRAccessoryServer *)self stageCompletion];
    if (v11)
    {
      v12 = v11;
      v13 = [(HMMTRAccessoryServer *)self stageProgressUpdateHandler];

      if (v13)
      {
        v14 = [(HMMTRAccessoryServer *)self stageProgressUpdateHandler];
        v14[2](v14, a3);
      }
    }
  }

  [(HMMTRAccessoryServer *)self _updateMetricWithProgressState:a3 error:v6];
}

void __63__HMMTRAccessoryServer__notifyDelegateOfPairingProgress_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 accessoryServer:*(a1 + 32) updatePairingProgress:*(a1 + 40)];
}

- (void)_updateMetricWithProgressState:(int64_t)a3 error:(id)a4
{
  v64 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [(HMMTRAccessoryServer *)self _progressStateToString:a3];
  [(HAPAccessoryServer *)self setPairingMetricWithKey:@"hmmtrAccessoryPairingEventLastProgressState" value:v7];
  if (v6)
  {
    [(HMMTRAccessoryServer *)self _metricCollectionWithError:v6 description:@"Error in progress state" progressState:a3];
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v9 = self;
    v10 = HMFGetOSLogHandle();
    v11 = 0x277CCA000;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v13 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
      *buf = 138544898;
      v51 = v12;
      v52 = 2114;
      v53 = @"hmmtrAccessoryServerStateChange";
      v54 = 2112;
      v55 = @"Matter Progress Pairing State";
      v56 = 2114;
      v57 = @"state";
      v58 = 2112;
      v59 = v13;
      v60 = 2114;
      v61 = @"stateName";
      v62 = 2112;
      v63 = v7;
      _os_log_impl(&dword_22AEAE000, v10, OS_LOG_TYPE_INFO, "%{public}@tag=%{public}@ desc=%@ %{public}@=%@ %{public}@=%@", buf, 0x48u);

      v11 = 0x277CCA000uLL;
    }

    objc_autoreleasePoolPop(v8);
    v14 = [MEMORY[0x277D17DE8] sharedInstance];
    v15 = objc_alloc(MEMORY[0x277D17DF8]);
    v16 = [*(v11 + 2992) numberWithInteger:a3];
    v17 = HMDTaggedLoggingCreateDictionary();
    v18 = [v15 initWithTag:@"hmmtrAccessoryServerStateChange" data:{v17, @"state", v16, @"stateName", v7}];
    v19 = [(HMFActivity *)v9->_activity tagProcessorList];
    [v14 submitTaggedEvent:v18 processorList:v19];
  }

  switch(a3)
  {
    case 17:
    case 20:
    case 21:
    case 27:
    case 30:
    case 33:
      break;
    case 18:
      v20 = [(HMMTRAccessoryServer *)self _endCurrentMetricTimeWithName:@"hmmtrAccessoryMetricNameNetworkScan"];
      v21 = @"hmmtrAccessoryPairingEventNetworkScanDurationInSeconds";
      goto LABEL_22;
    case 19:
      v22 = @"hmmtrAccessoryMetricNameNetworkScan";
      goto LABEL_28;
    case 22:
      v20 = [(HMMTRAccessoryServer *)self _endCurrentMetricTimeWithName:@"hmmtrAccessoryMetricNamePairingWindow"];
      v21 = @"hmmtrAccessoryPairingEventWindowOpenedDurationInSeconds";
      goto LABEL_22;
    case 23:
      v22 = @"hmmtrAccessoryMetricNamePairingWindow";
      goto LABEL_28;
    case 25:
      v20 = [(HMMTRAccessoryServer *)self _endCurrentMetricTimeWithName:@"hmmtrAccessoryMetricNamePairingWindowWithPasscode"];
      v21 = @"hmmtrAccessoryPairingEventWindowOpenedWithPassCodeDurationInSeconds";
      goto LABEL_22;
    case 26:
      v22 = @"hmmtrAccessoryMetricNamePairingWindowWithPasscode";
      goto LABEL_28;
    case 28:
      v20 = [(HMMTRAccessoryServer *)self _endCurrentMetricTimeWithName:@"hmmtrAccessoryMetricNameCommissioningAccessory"];
      v21 = @"hmmtrAccessoryPairingEventCommissioningDurationInSeconds";
      goto LABEL_22;
    case 29:
      v22 = @"hmmtrAccessoryMetricNameCommissioningAccessory";
      goto LABEL_28;
    case 31:
      v20 = [(HMMTRAccessoryServer *)self _endCurrentMetricTimeWithName:@"hmmtrAccessoryMetricNameRetrieveThreadCredentials"];
      v21 = @"hmmtrAccessoryPairingEventThreadCredentialSetupDurationInSeconds";
LABEL_22:
      [(HMMTRAccessoryServer *)self addMetricsWithDuration:v20 metricsKey:v21];

      break;
    case 32:
      v22 = @"hmmtrAccessoryMetricNameRetrieveThreadCredentials";
LABEL_28:
      v44 = [(HMMTRAccessoryServer *)self _endCurrentMetricTimeWithName:v22];
      break;
    case 34:
      v37 = MEMORY[0x277CBEC38];
      [(HAPAccessoryServer *)self setPairingMetricWithKey:@"HMMTRAccessoryPairingEventCASESessionSanityCheckPassed" value:MEMORY[0x277CBEC38]];
      v38 = objc_autoreleasePoolPush();
      v29 = self;
      v39 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
      {
        v40 = HMFGetLogIdentifier();
        *buf = 138544386;
        v51 = v40;
        v52 = 2114;
        v53 = @"hmmtrAccessoryServerCaseSessionSanityCheck";
        v54 = 2112;
        v55 = @"Case Sanity Check";
        v56 = 2114;
        v57 = @"success";
        v58 = 2112;
        v59 = v37;
        _os_log_impl(&dword_22AEAE000, v39, OS_LOG_TYPE_INFO, "%{public}@tag=%{public}@ desc=%@ %{public}@=%@", buf, 0x34u);
      }

      objc_autoreleasePoolPop(v38);
      v32 = [MEMORY[0x277D17DE8] sharedInstance];
      v33 = objc_alloc(MEMORY[0x277D17DF8]);
      v46 = @"success";
      v47 = v37;
      v34 = MEMORY[0x277CBEAC0];
      v35 = &v47;
      v36 = &v46;
      goto LABEL_26;
    case 35:
      v27 = MEMORY[0x277CBEC28];
      [(HAPAccessoryServer *)self setPairingMetricWithKey:@"HMMTRAccessoryPairingEventCASESessionSanityCheckPassed" value:MEMORY[0x277CBEC28]];
      v28 = objc_autoreleasePoolPush();
      v29 = self;
      v30 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        v31 = HMFGetLogIdentifier();
        *buf = 138544386;
        v51 = v31;
        v52 = 2114;
        v53 = @"hmmtrAccessoryServerCaseSessionSanityCheck";
        v54 = 2112;
        v55 = @"Case Sanity Check";
        v56 = 2114;
        v57 = @"success";
        v58 = 2112;
        v59 = v27;
        _os_log_impl(&dword_22AEAE000, v30, OS_LOG_TYPE_INFO, "%{public}@tag=%{public}@ desc=%@ %{public}@=%@", buf, 0x34u);
      }

      objc_autoreleasePoolPop(v28);
      v32 = [MEMORY[0x277D17DE8] sharedInstance];
      v33 = objc_alloc(MEMORY[0x277D17DF8]);
      v48 = @"success";
      v49 = v27;
      v34 = MEMORY[0x277CBEAC0];
      v35 = &v49;
      v36 = &v48;
LABEL_26:
      v41 = [v34 dictionaryWithObjects:v35 forKeys:v36 count:1];
      v42 = [v33 initWithTag:@"hmmtrAccessoryServerCaseSessionSanityCheck" data:v41];
      v43 = [(HMFActivity *)v29->_activity tagProcessorList];
      [v32 submitTaggedEvent:v42 processorList:v43];

      break;
    default:
      v23 = objc_autoreleasePoolPush();
      v24 = self;
      v25 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        v26 = HMFGetLogIdentifier();
        *buf = 138543618;
        v51 = v26;
        v52 = 2048;
        v53 = a3;
        _os_log_impl(&dword_22AEAE000, v25, OS_LOG_TYPE_INFO, "%{public}@Unhandled progress state %ld", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v23);
      break;
  }

  v45 = *MEMORY[0x277D85DE8];
}

- (id)_progressStateToString:(int64_t)a3
{
  v4 = a3 - 13;
  if (a3 - 13) < 0x1A && ((0x3FFFE7Fu >> v4))
  {
    v5 = off_2786F0488[v4];
  }

  else
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown progressState %ld", a3];
  }

  return v5;
}

- (void)addMetricsWithDuration:(id)a3 metricsKey:(id)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138544386;
      v21 = v11;
      v22 = 2114;
      v23 = v7;
      v24 = 2112;
      v25 = v7;
      v26 = 2114;
      v27 = @"duration";
      v28 = 2112;
      v29 = v6;
      _os_log_impl(&dword_22AEAE000, v10, OS_LOG_TYPE_INFO, "%{public}@tag=%{public}@ desc=%@ %{public}@=%@", buf, 0x34u);
    }

    objc_autoreleasePoolPop(v8);
    v12 = [MEMORY[0x277D17DE8] sharedInstance];
    v13 = objc_alloc(MEMORY[0x277D17DF8]);
    v18 = @"duration";
    v19 = v6;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
    v15 = [v13 initWithTag:v7 data:v14];
    v16 = [(HMFActivity *)v9->_activity tagProcessorList];
    [v12 submitTaggedEvent:v15 processorList:v16];

    [(HAPAccessoryServer *)v9 setPairingMetricWithKey:v7 value:v6];
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (BOOL)_delegateRespondsToSelector:(SEL)a3
{
  v4 = [(HAPAccessoryServer *)self delegate];
  if (v4)
  {
    v5 = [(HAPAccessoryServer *)self delegateQueue];
    if (v5)
    {
      v6 = [(HAPAccessoryServer *)self delegate];
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

- (void)handleUpdatesForCharacteristics:(id)a3 stateNumber:(id)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v13 = 138543362;
    v14 = v11;
    _os_log_impl(&dword_22AEAE000, v10, OS_LOG_TYPE_INFO, "%{public}@UNIMPLEMENTED: CHIP Accessory doesn't implement handleUpdatesForCharacteristics", &v13, 0xCu);
  }

  objc_autoreleasePoolPop(v8);
  v12 = *MEMORY[0x277D85DE8];
}

- (void)identifyWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(HAPAccessoryServer *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__HMMTRAccessoryServer_identifyWithCompletion___block_invoke;
  block[3] = &unk_2786EF878;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, block);
}

void __47__HMMTRAccessoryServer_identifyWithCompletion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = [MEMORY[0x277CCA9B8] hapErrorWithCode:3 marker:242];
    (*(v1 + 16))(v1, v2);
  }
}

- (void)enableEvents:(BOOL)a3 forCharacteristics:(id)a4 withCompletionHandler:(id)a5 queue:(id)a6
{
  v7 = a5;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __84__HMMTRAccessoryServer_enableEvents_forCharacteristics_withCompletionHandler_queue___block_invoke;
  block[3] = &unk_2786EF878;
  v10 = v7;
  v8 = v7;
  dispatch_async(a6, block);
}

void __84__HMMTRAccessoryServer_enableEvents_forCharacteristics_withCompletionHandler_queue___block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x2318887D0](*(a1 + 32));
  if (v1)
  {
    v2 = v1;
    v1[2](v1, 0, 0);
    v1 = v2;
  }
}

- (void)_populateServiceForCharacteristic:(id)a3
{
  v55 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMMTRAccessoryServer *)self primaryAccessory];
  v6 = [v4 type];
  v7 = [v5 characteristicsOfType:v6];

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = v7;
  v8 = [obj countByEnumeratingWithState:&v44 objects:v54 count:16];
  if (v8)
  {
    v10 = v8;
    v11 = *v45;
    *&v9 = 138543874;
    v42 = v9;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v45 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v44 + 1) + 8 * i);
        v14 = [v4 service];

        if (!v14)
        {
          v15 = objc_autoreleasePoolPush();
          v16 = self;
          v17 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            v18 = HMFGetLogIdentifier();
            *buf = 138543618;
            v49 = v18;
            v50 = 2112;
            v51 = v4;
            _os_log_impl(&dword_22AEAE000, v17, OS_LOG_TYPE_ERROR, "%{public}@read/write is missing service for Characteristic %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v15);
          v19 = objc_autoreleasePoolPush();
          v20 = v16;
          v21 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            v22 = HMFGetLogIdentifier();
            *buf = 138543618;
            v49 = v22;
            v50 = 2112;
            v51 = v13;
            _os_log_impl(&dword_22AEAE000, v21, OS_LOG_TYPE_ERROR, "%{public}@current primary characteristic %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v19);
        }

        v23 = [v13 service];

        if (!v23)
        {
          v24 = objc_autoreleasePoolPush();
          v25 = self;
          v26 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            v27 = HMFGetLogIdentifier();
            *buf = 138543618;
            v49 = v27;
            v50 = 2112;
            v51 = v13;
            _os_log_impl(&dword_22AEAE000, v26, OS_LOG_TYPE_ERROR, "%{public}@No primary service for primary Characteristic %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v24);
        }

        v28 = [v13 instanceID];
        v29 = [v4 instanceID];
        v30 = [v28 isEqualToNumber:v29];

        if (v30)
        {
          v31 = [v4 service];
          if (!v31)
          {
            goto LABEL_19;
          }

          v32 = v31;
          v33 = [v13 service];
          v34 = [v4 service];
          v35 = [v33 isEqualToService:v34];

          if ((v35 & 1) == 0)
          {
LABEL_19:
            v36 = objc_autoreleasePoolPush();
            v37 = self;
            v38 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
            {
              v39 = HMFGetLogIdentifier();
              *buf = v42;
              v49 = v39;
              v50 = 2112;
              v51 = v4;
              v52 = 2112;
              v53 = v13;
              _os_log_impl(&dword_22AEAE000, v38, OS_LOG_TYPE_INFO, "%{public}@Updating service for Characteristic %@ using local characteristic %@", buf, 0x20u);
            }

            objc_autoreleasePoolPop(v36);
            v40 = [v13 service];
            [v4 setService:v40];
          }
        }
      }

      v10 = [obj countByEnumeratingWithState:&v44 objects:v54 count:16];
    }

    while (v10);
  }

  v41 = *MEMORY[0x277D85DE8];
}

- (id)_populateHandlingForCharacteristics:(id)a3
{
  v64 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v57 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v3, "count")}];
  if ([v3 count])
  {
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v49 = v3;
    obj = v3;
    v58 = [obj countByEnumeratingWithState:&v59 objects:v63 count:16];
    if (!v58)
    {
      v55 = 0;
      v4 = 0;
      v5 = 0;
      goto LABEL_42;
    }

    v53 = 0;
    v4 = 0;
    v5 = 0;
    v55 = 0;
    v56 = *v60;
    while (1)
    {
      for (i = 0; i != v58; ++i)
      {
        v7 = v5;
        if (*v60 != v56)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v59 + 1) + 8 * i);
        if (v5)
        {
          v9 = [*(*(&v59 + 1) + 8 * i) characteristic];
          v10 = [v9 service];
          v11 = [v10 accessory];
          v12 = [v11 uniqueIdentifier];
          v13 = [v7 isEqualToString:v12];

          if ((v13 & 1) == 0)
          {

            v53 = 0;
            v55 = 0;
            v4 = 0;
          }
        }

        v14 = [v8 characteristic];
        v15 = [v14 service];
        v16 = [v15 accessory];
        v5 = [v16 uniqueIdentifier];

        v17 = [[HMMTRCharacteristicWriteRequestTuple alloc] initWithRequestTuple:v8];
        [(HMMTRCharacteristicWriteRequestTuple *)v17 setSecondary:0];
        v18 = [v8 characteristic];
        v19 = [v18 type];
        if ([v19 isEqualToString:@"00000013-0000-1000-8000-0026BB765291"])
        {

LABEL_13:
          if (!v4)
          {
            v23 = v17;
            v4 = v23;
LABEL_15:
            [(HMMTRCharacteristicWriteRequestTuple *)v23 setCharacteristicHandlingType:0];
            goto LABEL_38;
          }

          [(HMMTRCharacteristicWriteRequestTuple *)v4 setCharacteristicHandlingType:1];
          [(HMMTRCharacteristicWriteRequestTuple *)v17 setCharacteristicHandlingType:2];
          v27 = [(HMMTRCharacteristicWriteRequestTuple *)v4 primary];
          [(HMMTRCharacteristicWriteRequestTuple *)v17 setSecondary:v27];

          v4 = 0;
          goto LABEL_38;
        }

        v20 = [v8 characteristic];
        v21 = [v20 type];
        v22 = [v21 isEqualToString:@"0000002F-0000-1000-8000-0026BB765291"];

        if (v22)
        {
          goto LABEL_13;
        }

        v24 = [v8 characteristic];
        v25 = [v24 type];
        v26 = [v25 isEqualToString:@"00000029-0000-1000-8000-0026BB765291"];

        if (v26)
        {
          [(HMMTRCharacteristicWriteRequestTuple *)v17 setCharacteristicHandlingType:0];
          if (v55)
          {
            [(HMMTRCharacteristicWriteRequestTuple *)v55 setCharacteristicHandlingType:3];
          }

          else
          {
            v55 = 0;
          }

          v53 = 1;
        }

        else
        {
          v28 = [v8 characteristic];
          v29 = [v28 type];
          v30 = [v29 isEqualToString:@"000000B0-0000-1000-8000-0026BB765291"];

          if (!v30)
          {
            v23 = v17;
            goto LABEL_15;
          }

          v31 = [v8 characteristic];
          v32 = [v31 service];

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v33 = v32;
          }

          else
          {
            v33 = 0;
          }

          v34 = v33;

          v35 = [v34 endpoint];

          v52 = v34;
          if (v35)
          {
            v36 = [v34 endpoint];
          }

          else
          {
            v36 = &unk_283EE89E8;
          }

          v37 = [(HMMTRAccessoryServer *)self clusterIDCharacteristicMap];
          v51 = v36;
          v38 = [v37 objectForKey:v36];

          v39 = [HMMTRUtilities hmmtr_shortTypeFromUUID:@"000000B0-0000-1000-8000-0026BB765291"];
          v40 = [v38 objectForKey:v39];

          v41 = v40;
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v42 = v41;
          }

          else
          {
            v42 = 0;
          }

          v43 = v42;

          [(HMMTRCharacteristicWriteRequestTuple *)v17 setCharacteristicHandlingType:0];
          v44 = [MEMORY[0x277CCACA8] stringWithFormat:@"%0X", 514];
          v45 = [v43 isEqualToString:v44];

          if (v45)
          {
            v46 = v17;

            if (v53)
            {
              [(HMMTRCharacteristicWriteRequestTuple *)v46 setCharacteristicHandlingType:3];
            }
          }

          else
          {
            v46 = v55;
          }

          v55 = v46;
        }

LABEL_38:
        [v57 addObject:v17];
      }

      v58 = [obj countByEnumeratingWithState:&v59 objects:v63 count:16];
      if (!v58)
      {
LABEL_42:

        v3 = v49;
        break;
      }
    }
  }

  v47 = *MEMORY[0x277D85DE8];

  return v57;
}

- (void)writeCharacteristicValues:(id)a3 timeout:(double)a4 expiry:(id)a5 completionQueue:(id)a6 completionHandler:(id)a7
{
  v42 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  if (!v14 || (v16 = v15) == 0)
  {
    _HMFPreconditionFailure();
  }

  if ([(HMMTRAccessoryServer *)self operationDisabled])
  {
    v17 = objc_autoreleasePoolPush();
    v18 = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543362;
      v37 = v20;
      _os_log_impl(&dword_22AEAE000, v19, OS_LOG_TYPE_INFO, "%{public}@Accessory server operations disabled. Aborting writing characteristic.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v17);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __99__HMMTRAccessoryServer_writeCharacteristicValues_timeout_expiry_completionQueue_completionHandler___block_invoke;
    block[3] = &unk_2786EF878;
    v35 = v16;
    dispatch_async(v14, block);
  }

  else
  {
    v21 = random();
    v22 = objc_autoreleasePoolPush();
    v23 = self;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v25 = HMFGetLogIdentifier();
      *buf = 138543874;
      v37 = v25;
      v38 = 2112;
      v39 = v12;
      v40 = 2048;
      v41 = v21;
      _os_log_impl(&dword_22AEAE000, v24, OS_LOG_TYPE_INFO, "%{public}@Characteristics Operation Queue: Write characteristics(%@) job(%lu) queued.", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v22);
    objc_initWeak(buf, v23);
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __99__HMMTRAccessoryServer_writeCharacteristicValues_timeout_expiry_completionQueue_completionHandler___block_invoke_515;
    v29[3] = &unk_2786EFC90;
    objc_copyWeak(v33, buf);
    v33[1] = v21;
    v33[2] = *&a4;
    v32 = v16;
    v30 = v14;
    v31 = v12;
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __99__HMMTRAccessoryServer_writeCharacteristicValues_timeout_expiry_completionQueue_completionHandler___block_invoke_524;
    v27[3] = &unk_2786F0BC0;
    v28 = v32;
    [(HMMTRAccessoryServer *)v23 queueAccessoryOperation:v29 highPriority:1 completion:v27];

    objc_destroyWeak(v33);
    objc_destroyWeak(buf);
  }

  v26 = *MEMORY[0x277D85DE8];
}

void __99__HMMTRAccessoryServer_writeCharacteristicValues_timeout_expiry_completionQueue_completionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] hapErrorWithCode:1];
  (*(v1 + 16))(v1, 0, v2);
}

void __99__HMMTRAccessoryServer_writeCharacteristicValues_timeout_expiry_completionQueue_completionHandler___block_invoke_515(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = objc_autoreleasePoolPush();
  v4 = WeakRetained;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v7 = *(a1 + 64);
    *buf = 138543618;
    v25 = v6;
    v26 = 2048;
    v27 = v7;
    _os_log_impl(&dword_22AEAE000, v5, OS_LOG_TYPE_INFO, "%{public}@Characteristics Operation Queue: Write characteristics job(%lu) started.", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v3);
  v8 = dispatch_group_create();
  dispatch_group_enter(v8);
  v9 = [v4 clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __99__HMMTRAccessoryServer_writeCharacteristicValues_timeout_expiry_completionQueue_completionHandler___block_invoke_516;
  block[3] = &unk_2786EFC68;
  block[4] = v4;
  v22 = *(a1 + 72);
  v21 = *(a1 + 48);
  v18 = v8;
  v19 = *(a1 + 32);
  v10 = *(a1 + 40);
  v11 = *(a1 + 64);
  v20 = v10;
  v23 = v11;
  v12 = v8;
  dispatch_async(v9, block);

  v13 = [v4 clientQueue];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __99__HMMTRAccessoryServer_writeCharacteristicValues_timeout_expiry_completionQueue_completionHandler___block_invoke_523;
  v16[3] = &unk_2786EF620;
  v14 = *(a1 + 64);
  v16[4] = v4;
  v16[5] = v14;
  dispatch_group_notify(v12, v13, v16);

  v15 = *MEMORY[0x277D85DE8];
}

uint64_t __99__HMMTRAccessoryServer_writeCharacteristicValues_timeout_expiry_completionQueue_completionHandler___block_invoke_524(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

void __99__HMMTRAccessoryServer_writeCharacteristicValues_timeout_expiry_completionQueue_completionHandler___block_invoke_516(uint64_t a1)
{
  v42 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 72)];
    *buf = 138543618;
    *&buf[4] = v5;
    *&buf[12] = 2112;
    *&buf[14] = v6;
    _os_log_impl(&dword_22AEAE000, v4, OS_LOG_TYPE_INFO, "%{public}@Request to send write requests with time out %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v7 = [*(a1 + 32) deviceController];
  if (v7)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v41 = 0;
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __99__HMMTRAccessoryServer_writeCharacteristicValues_timeout_expiry_completionQueue_completionHandler___block_invoke_2;
    v29[3] = &unk_2786EFC20;
    v8 = *(a1 + 32);
    v33 = buf;
    v29[4] = v8;
    v30 = *(a1 + 48);
    v32 = *(a1 + 64);
    v31 = *(a1 + 40);
    v9 = MEMORY[0x2318887D0](v29);
    v10 = [*(a1 + 56) sortedArrayUsingComparator:&__block_literal_global_522];
    v11 = [*(a1 + 32) _populateHandlingForCharacteristics:v10];
    v12 = [*(a1 + 32) matterDevice];

    if (v12)
    {
      [*(a1 + 32) _writeCharacteristicValues:v11 responseTuples:0 completionQueue:*(a1 + 48) completionHandler:v9];
      v13 = dispatch_time(0, 60000000000);
      v14 = [*(a1 + 32) clientQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __99__HMMTRAccessoryServer_writeCharacteristicValues_timeout_expiry_completionQueue_completionHandler___block_invoke_3;
      block[3] = &unk_2786EF878;
      v28 = v9;
      dispatch_after(v13, v14, block);

      v15 = v28;
    }

    else
    {
      v21 = objc_autoreleasePoolPush();
      v22 = *(a1 + 32);
      v23 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v24 = HMFGetLogIdentifier();
        v25 = *(a1 + 80);
        *v36 = 138543618;
        v37 = v24;
        v38 = 2048;
        v39 = v25;
        _os_log_impl(&dword_22AEAE000, v23, OS_LOG_TYPE_ERROR, "%{public}@Write characteristics job(%lu) started without an available MTRDevice", v36, 0x16u);
      }

      objc_autoreleasePoolPop(v21);
      v15 = [MEMORY[0x277CCA9B8] hapErrorWithCode:13 marker:2203];
      (v9)[2](v9, 0, v15);
    }

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v16 = objc_autoreleasePoolPush();
    v17 = *(a1 + 32);
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543362;
      *&buf[4] = v19;
      _os_log_impl(&dword_22AEAE000, v18, OS_LOG_TYPE_ERROR, "%{public}@No Matter device controller available to write characteristics", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v16);
    v20 = [*(a1 + 32) clientQueue];
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __99__HMMTRAccessoryServer_writeCharacteristicValues_timeout_expiry_completionQueue_completionHandler___block_invoke_517;
    v34[3] = &unk_2786EF878;
    v35 = *(a1 + 64);
    dispatch_async(v20, v34);

    dispatch_group_leave(*(a1 + 40));
  }

  v26 = *MEMORY[0x277D85DE8];
}

void __99__HMMTRAccessoryServer_writeCharacteristicValues_timeout_expiry_completionQueue_completionHandler___block_invoke_523(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 40);
    v8 = 138543618;
    v9 = v5;
    v10 = 2048;
    v11 = v6;
    _os_log_impl(&dword_22AEAE000, v4, OS_LOG_TYPE_INFO, "%{public}@Characteristics Operation Queue: Write characteristics job(%lu) complete.", &v8, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v7 = *MEMORY[0x277D85DE8];
}

void __99__HMMTRAccessoryServer_writeCharacteristicValues_timeout_expiry_completionQueue_completionHandler___block_invoke_517(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CD5120] code:6 userInfo:0];
  (*(v1 + 16))(v1, 0, v2);
}

void __99__HMMTRAccessoryServer_writeCharacteristicValues_timeout_expiry_completionQueue_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v54 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 64) + 8);
  if ((*(v7 + 24) & 1) == 0)
  {
    *(v7 + 24) = 1;
    v8 = objc_autoreleasePoolPush();
    v9 = *(a1 + 32);
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543618;
      v46 = v11;
      v47 = 2112;
      v48 = v6;
      _os_log_impl(&dword_22AEAE000, v10, OS_LOG_TYPE_INFO, "%{public}@Write completion error: %@", buf, 0x16u);
    }

    v32 = v6;

    objc_autoreleasePoolPop(v8);
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v33 = v5;
    obj = v5;
    v12 = [obj countByEnumeratingWithState:&v41 objects:v53 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v42;
      v35 = *v42;
      v34 = a1;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v42 != v14)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v41 + 1) + 8 * i);
          v17 = objc_autoreleasePoolPush();
          v18 = *(a1 + 32);
          v19 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
          {
            v20 = HMFGetLogIdentifier();
            v21 = [v16 characteristic];
            v22 = [v21 instanceID];
            v23 = [v16 value];
            v24 = [v16 error];
            *buf = 138544130;
            v46 = v20;
            v47 = 2112;
            v48 = v22;
            v49 = 2112;
            v50 = v23;
            v51 = 2112;
            v52 = v24;
            _os_log_impl(&dword_22AEAE000, v19, OS_LOG_TYPE_INFO, "%{public}@Write completion contains tuple for characteristic %@ with value:%@ Error: %@", buf, 0x2Au);

            a1 = v34;
            v14 = v35;
          }

          objc_autoreleasePoolPop(v17);
        }

        v13 = [obj countByEnumeratingWithState:&v41 objects:v53 count:16];
      }

      while (v13);
    }

    v25 = *(a1 + 40);
    v6 = v32;
    if (v25)
    {
      v26 = *(a1 + 56);
      if (v26)
      {
        if (v32)
        {
          v27 = MEMORY[0x277CCA9B8];
          v28 = [v32 domain];
          v29 = [v27 errorWithDomain:v28 code:objc_msgSend(v32 userInfo:{"code"), 0}];

          v25 = *(a1 + 40);
          v26 = *(a1 + 56);
        }

        else
        {
          v29 = 0;
        }

        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __99__HMMTRAccessoryServer_writeCharacteristicValues_timeout_expiry_completionQueue_completionHandler___block_invoke_518;
        block[3] = &unk_2786F0EA8;
        v40 = v26;
        v38 = obj;
        v39 = v29;
        v30 = v29;
        dispatch_async(v25, block);
      }
    }

    dispatch_group_leave(*(a1 + 48));
    v5 = v33;
  }

  v31 = *MEMORY[0x277D85DE8];
}

void __99__HMMTRAccessoryServer_writeCharacteristicValues_timeout_expiry_completionQueue_completionHandler___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] errorWithDomain:@"HMMTRProtocolOperationErrorDomain" code:3 userInfo:0];
  (*(v1 + 16))(v1, 0, v2);
}

uint64_t __99__HMMTRAccessoryServer_writeCharacteristicValues_timeout_expiry_completionQueue_completionHandler___block_invoke_2_519(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 characteristic];
  v6 = [v5 service];
  v7 = [v6 accessory];
  v8 = [v7 uniqueIdentifier];
  v9 = [v4 characteristic];

  v10 = [v9 service];
  v11 = [v10 accessory];
  v12 = [v11 uniqueIdentifier];
  v13 = [v8 compare:v12];

  return v13;
}

- (void)_writeCharacteristicValues:(id)a3 responseTuples:(id)a4 completionQueue:(id)a5 completionHandler:(id)a6
{
  v78 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = v11;
  v15 = v13;
  v16 = objc_autoreleasePoolPush();
  v17 = self;
  v18 = HMFGetOSLogHandle();
  v56 = v15;
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    v19 = HMFGetLogIdentifier();
    v20 = [v10 count];
    v21 = MEMORY[0x2318887D0](v15);
    v22 = v10;
    v23 = v21;
    *buf = 138544642;
    v67 = v19;
    v68 = 2048;
    v69 = v20;
    v70 = 2112;
    v71 = v22;
    v72 = 2112;
    v73 = v11;
    v74 = 2112;
    v75 = v12;
    v76 = 2112;
    v77 = v21;
    _os_log_impl(&dword_22AEAE000, v18, OS_LOG_TYPE_DEBUG, "%{public}@_writeCharacteristicValues count %lu, characteristicWriteRequests %@, responseTuples %@, completionQueue %@, completionHandler %@", buf, 0x3Eu);

    v10 = v22;
    v15 = v56;
  }

  objc_autoreleasePoolPop(v16);
  v24 = +[HMMTRProtocolOperationManager sharedInstance];
  if ([v10 count])
  {
    v54 = v10;
    v55 = v24;
    v52 = v12;
    v25 = [v10 popFirstObject];
    if (!v14)
    {
      v14 = [MEMORY[0x277CBEB18] array];
    }

    v53 = v14;
    v26 = [v25 primary];
    v27 = [v26 characteristic];
    [(HMMTRAccessoryServer *)v17 _populateServiceForCharacteristic:v27];

    v28 = [HMMTRProtocolOperation alloc];
    v29 = [v25 characteristicHandlingType];
    v30 = [v25 primary];
    v31 = [v30 characteristic];
    v32 = [v25 primary];
    v33 = [v32 value];
    v34 = [(HMMTRAccessoryServer *)v17 matterDevice];
    v35 = [(HMMTRAccessoryServer *)v17 clusterIDCharacteristicMap];
    v36 = [(HMMTRProtocolOperation *)v28 initWithOperationOfType:1 characteristicHandlingType:v29 targetCharacteristic:v31 targetValue:v33 matterDevice:v34 clusterIDCharacteristicMap:v35];

    v37 = [v25 primary];
    [(HMMTRProtocolOperation *)v36 setWritePrimaryRequestTuple:v37];

    v38 = [v25 secondary];
    [(HMMTRProtocolOperation *)v36 setWriteSecondaryRequestTuple:v38];

    v39 = [HMMTRDeviceTopology alloc];
    v40 = [(HMMTRAccessoryServer *)v17 nodeID];
    v41 = [(HMMTRDeviceTopology *)v39 initWithNodeId:v40 server:v17];
    [(HMMTRProtocolOperation *)v36 setTopology:v41];

    if (v36)
    {
      v57[0] = MEMORY[0x277D85DD0];
      v57[1] = 3221225472;
      v57[2] = __100__HMMTRAccessoryServer__writeCharacteristicValues_responseTuples_completionQueue_completionHandler___block_invoke;
      v57[3] = &unk_2786EFBF8;
      v42 = v25;
      v58 = v42;
      v14 = v53;
      v59 = v53;
      v60 = v17;
      v10 = v54;
      v61 = v54;
      v62 = v52;
      v65 = v56;
      v63 = v55;
      v64 = v36;
      v43 = MEMORY[0x2318887D0](v57);
      v44 = [v42 primary];
      v45 = [v44 characteristic];
      [(HMMTRAccessoryServer *)v17 _queryBridgedAccessoryAndUnreachablePerCacheForCharacteristic:v45 completion:v43];

      v12 = v52;
      v15 = v56;

      v46 = v58;
    }

    else
    {
      v46 = [MEMORY[0x277CCA9B8] hapErrorWithCode:3 marker:241];
      v47 = MEMORY[0x277CFEA90];
      v48 = [v25 primary];
      v49 = [v48 characteristic];
      v50 = [v47 responseTupleForCharacteristic:v49 error:v46];

      v14 = v53;
      [v53 addObject:v50];
      v10 = v54;
      v12 = v52;
      v15 = v56;
      [(HMMTRAccessoryServer *)v17 _writeCharacteristicValues:v54 responseTuples:v53 completionQueue:v52 completionHandler:v56];
    }

    v24 = v55;
  }

  else
  {
    (*(v15 + 2))(v15, v14, 0);
  }

  v51 = *MEMORY[0x277D85DE8];
}

void __100__HMMTRAccessoryServer__writeCharacteristicValues_responseTuples_completionQueue_completionHandler___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = MEMORY[0x277CFEA90];
    v4 = [*(a1 + 32) primary];
    v5 = [v4 characteristic];
    v6 = [MEMORY[0x277CCA9B8] hapIPErrorWithCode:-70402 marker:2402];
    v7 = [v3 responseTupleForCharacteristic:v5 error:v6];

    [*(a1 + 40) addObject:v7];
    v8 = [*(a1 + 48) clientQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __100__HMMTRAccessoryServer__writeCharacteristicValues_responseTuples_completionQueue_completionHandler___block_invoke_2;
    block[3] = &unk_2786F0260;
    v22 = *(a1 + 48);
    v9 = *(&v22 + 1);
    v10 = *(a1 + 40);
    v11 = *(a1 + 64);
    *&v12 = v10;
    *(&v12 + 1) = v11;
    v30 = v22;
    v31 = v12;
    v32 = *(a1 + 88);
    dispatch_async(v8, block);
  }

  else
  {
    v13 = *(a1 + 72);
    v14 = *(a1 + 80);
    v15 = *(a1 + 48);
    v16 = [v15 clientQueue];
    v17 = [*(a1 + 48) reportDistributor];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __100__HMMTRAccessoryServer__writeCharacteristicValues_responseTuples_completionQueue_completionHandler___block_invoke_3;
    v25[3] = &unk_2786EF710;
    *&v18 = *(a1 + 40);
    *(&v18 + 1) = *(a1 + 48);
    v23 = v18;
    v19 = *(a1 + 56);
    v20 = *(a1 + 64);
    *&v21 = v19;
    *(&v21 + 1) = v20;
    v26 = v23;
    v27 = v21;
    v28 = *(a1 + 88);
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __100__HMMTRAccessoryServer__writeCharacteristicValues_responseTuples_completionQueue_completionHandler___block_invoke_4;
    v24[3] = &unk_2786EFBD0;
    v24[4] = *(a1 + 48);
    [v13 registerOperation:v14 accessoryServer:v15 clientQueue:v16 reportDistributor:v17 operationResponseHandler:v25 updatedAttributesHandler:v24];

    v7 = v26;
  }
}

uint64_t __100__HMMTRAccessoryServer__writeCharacteristicValues_responseTuples_completionQueue_completionHandler___block_invoke_3(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) addObject:a2];
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7 = *(a1 + 64);

  return [v3 _writeCharacteristicValues:v5 responseTuples:v4 completionQueue:v6 completionHandler:v7];
}

void __100__HMMTRAccessoryServer__writeCharacteristicValues_responseTuples_completionQueue_completionHandler___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 matterDevice];
  [v2 device:v4 receivedAttributeReport:v3];
}

- (void)_readCharacteristicValues:(id)a3 timeout:(double)a4 skipCache:(BOOL)a5 sendNotification:(BOOL)a6 completionQueue:(id)a7 completionHandler:(id)a8
{
  v47 = *MEMORY[0x277D85DE8];
  v14 = a3;
  v15 = a7;
  v16 = a8;
  if (!v15 || (v17 = v16) == 0)
  {
    _HMFPreconditionFailure();
  }

  if ([(HMMTRAccessoryServer *)self operationDisabled])
  {
    v18 = objc_autoreleasePoolPush();
    v19 = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = HMFGetLogIdentifier();
      *buf = 138543362;
      v42 = v21;
      _os_log_impl(&dword_22AEAE000, v20, OS_LOG_TYPE_INFO, "%{public}@Accessory server operations disabled. Aborting reading characteristic.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v18);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __119__HMMTRAccessoryServer__readCharacteristicValues_timeout_skipCache_sendNotification_completionQueue_completionHandler___block_invoke;
    block[3] = &unk_2786EF878;
    v40 = v17;
    dispatch_async(v15, block);
    v22 = v40;
  }

  else
  {
    v23 = random();
    v24 = objc_autoreleasePoolPush();
    v25 = self;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      v27 = HMFGetLogIdentifier();
      *buf = 138543874;
      v42 = v27;
      v43 = 2112;
      v44 = v14;
      v45 = 2048;
      v46 = v23;
      _os_log_impl(&dword_22AEAE000, v26, OS_LOG_TYPE_INFO, "%{public}@Characteristics Operation Queue: Read characteristics(%@) job(%lu) queued.", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v24);
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __119__HMMTRAccessoryServer__readCharacteristicValues_timeout_skipCache_sendNotification_completionQueue_completionHandler___block_invoke_504;
    v31[3] = &unk_2786EFBA8;
    v31[4] = v25;
    v35 = v23;
    v36 = a4;
    v32 = v14;
    v37 = a5;
    v33 = v15;
    v34 = v17;
    v38 = a6;
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __119__HMMTRAccessoryServer__readCharacteristicValues_timeout_skipCache_sendNotification_completionQueue_completionHandler___block_invoke_514;
    v29[3] = &unk_2786F0BC0;
    v30 = v34;
    [(HMMTRAccessoryServer *)v25 queueAccessoryOperation:v31 highPriority:0 completion:v29];

    v22 = v32;
  }

  v28 = *MEMORY[0x277D85DE8];
}

void __119__HMMTRAccessoryServer__readCharacteristicValues_timeout_skipCache_sendNotification_completionQueue_completionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] hapErrorWithCode:1];
  (*(v1 + 16))(v1, 0, v2);
}

void __119__HMMTRAccessoryServer__readCharacteristicValues_timeout_skipCache_sendNotification_completionQueue_completionHandler___block_invoke_504(uint64_t a1)
{
  v31 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 64);
    *buf = 138543618;
    v28 = v5;
    v29 = 2048;
    v30 = v6;
    _os_log_impl(&dword_22AEAE000, v4, OS_LOG_TYPE_INFO, "%{public}@Characteristics Operation Queue: Read characteristics job(%lu) started.", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v7 = dispatch_group_create();
  dispatch_group_enter(v7);
  v8 = [*(a1 + 32) clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __119__HMMTRAccessoryServer__readCharacteristicValues_timeout_skipCache_sendNotification_completionQueue_completionHandler___block_invoke_505;
  block[3] = &unk_2786EFB80;
  v9 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v23 = *(a1 + 72);
  v10 = v9;
  v25 = *(a1 + 80);
  v11 = *(a1 + 64);
  v19 = v10;
  v24 = v11;
  v20 = *(a1 + 48);
  v12 = *(a1 + 56);
  v26 = *(a1 + 81);
  v21 = v7;
  v22 = v12;
  v13 = v7;
  dispatch_async(v8, block);

  v14 = [*(a1 + 32) clientQueue];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __119__HMMTRAccessoryServer__readCharacteristicValues_timeout_skipCache_sendNotification_completionQueue_completionHandler___block_invoke_3;
  v17[3] = &unk_2786EF620;
  v15 = *(a1 + 64);
  v17[4] = *(a1 + 32);
  v17[5] = v15;
  dispatch_group_notify(v13, v14, v17);

  v16 = *MEMORY[0x277D85DE8];
}

uint64_t __119__HMMTRAccessoryServer__readCharacteristicValues_timeout_skipCache_sendNotification_completionQueue_completionHandler___block_invoke_514(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

void __119__HMMTRAccessoryServer__readCharacteristicValues_timeout_skipCache_sendNotification_completionQueue_completionHandler___block_invoke_505(uint64_t a1)
{
  v59 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 72)];
    *buf = 138543618;
    *&buf[4] = v5;
    *&buf[12] = 2112;
    *&buf[14] = v6;
    _os_log_impl(&dword_22AEAE000, v4, OS_LOG_TYPE_INFO, "%{public}@Request to send read requests with time out %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v56 = __Block_byref_object_copy__10189;
  v57 = __Block_byref_object_dispose__10190;
  v58 = [MEMORY[0x277CBEB18] array];
  v7 = dispatch_group_create();
  v8 = dispatch_group_create();
  v49[0] = 0;
  v49[1] = v49;
  v49[2] = 0x2020000000;
  v50 = 0;
  v47[0] = 0;
  v47[1] = v47;
  v47[2] = 0x2020000000;
  v48 = 0;
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __119__HMMTRAccessoryServer__readCharacteristicValues_timeout_skipCache_sendNotification_completionQueue_completionHandler___block_invoke_506;
  v33[3] = &unk_2786EFB30;
  v41 = v47;
  v9 = *(a1 + 40);
  v10 = *(a1 + 32);
  v34 = v9;
  v35 = v10;
  v42 = buf;
  v45 = *(a1 + 88);
  v11 = v8;
  v12 = *(a1 + 80);
  v43 = v49;
  v44 = v12;
  v36 = v11;
  v13 = v7;
  v37 = v13;
  v38 = *(a1 + 48);
  v40 = *(a1 + 64);
  v46 = *(a1 + 89);
  v39 = *(a1 + 56);
  v14 = MEMORY[0x2318887D0](v33);
  if ([*(a1 + 32) isReadyToReadFromMTRDevice])
  {
    v14[2](v14);
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    v16 = *(a1 + 32);
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      v19 = *(a1 + 80);
      *v51 = 138543618;
      v52 = v18;
      v53 = 2048;
      v54 = v19;
      _os_log_impl(&dword_22AEAE000, v17, OS_LOG_TYPE_INFO, "%{public}@Read job(%lu) deferred till MTRDevice is ready to read from", v51, 0x16u);
    }

    objc_autoreleasePoolPop(v15);
    v20 = MEMORY[0x2318887D0](v14);
    v21 = [*(a1 + 32) pendingMTRDeviceReadReadyHandlers];
    v22 = [MEMORY[0x277CCABB0] numberWithLong:*(a1 + 80)];
    [v21 setObject:v20 forKeyedSubscript:v22];

    v23 = *(a1 + 32);
    v24 = dispatch_time(0, 60000000000);
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __119__HMMTRAccessoryServer__readCharacteristicValues_timeout_skipCache_sendNotification_completionQueue_completionHandler___block_invoke_512;
    v27[3] = &unk_2786EFB58;
    v25 = *(a1 + 32);
    v31 = v47;
    v27[4] = v25;
    v32 = *(a1 + 80);
    v28 = *(a1 + 48);
    v30 = *(a1 + 64);
    v29 = *(a1 + 56);
    [v23 dispatchAfter:v24 block:v27];
  }

  _Block_object_dispose(v47, 8);
  _Block_object_dispose(v49, 8);

  _Block_object_dispose(buf, 8);
  v26 = *MEMORY[0x277D85DE8];
}

void __119__HMMTRAccessoryServer__readCharacteristicValues_timeout_skipCache_sendNotification_completionQueue_completionHandler___block_invoke_3(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 40);
    v8 = 138543618;
    v9 = v5;
    v10 = 2048;
    v11 = v6;
    _os_log_impl(&dword_22AEAE000, v4, OS_LOG_TYPE_INFO, "%{public}@Characteristics Operation Queue: Read characteristics job(%lu) complete.", &v8, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v7 = *MEMORY[0x277D85DE8];
}

void __119__HMMTRAccessoryServer__readCharacteristicValues_timeout_skipCache_sendNotification_completionQueue_completionHandler___block_invoke_506(uint64_t a1)
{
  v63 = *MEMORY[0x277D85DE8];
  v1 = *(*(a1 + 88) + 8);
  if ((*(v1 + 24) & 1) == 0)
  {
    *(v1 + 24) = 1;
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v3 = *(a1 + 32);
    v4 = [v3 countByEnumeratingWithState:&v58 objects:v62 count:16];
    if (v4)
    {
      v5 = *v59;
      v30 = v54;
      do
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v59 != v5)
          {
            objc_enumerationMutation(v3);
          }

          v7 = *(*(&v58 + 1) + 8 * i);
          [*(a1 + 40) _populateServiceForCharacteristic:{v7, v30}];
          v8 = [*(a1 + 40) _readFixedCharacteristicValue:v7];
          if (v8)
          {
            v9 = [MEMORY[0x277CFEA90] responseTupleForCharacteristic:v7 error:0];
            [*(*(*(a1 + 96) + 8) + 40) addObject:v9];
          }

          else
          {
            v9 = [*(a1 + 40) _readLocallyMaintainedCharacteristicValue:v7];
            if (v9)
            {
              v10 = [MEMORY[0x277CFEA90] responseTupleForCharacteristic:v7 error:0];
              [*(*(*(a1 + 96) + 8) + 40) addObject:v10];
            }

            else
            {
              if (*(a1 + 120))
              {
                *(*(*(a1 + 104) + 8) + 24) = 1;
                v11 = *(*(*(a1 + 96) + 8) + 40);
                v12 = MEMORY[0x277CFEA90];
                v13 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:11];
                v14 = [v12 responseTupleForCharacteristic:v7 error:v13];
                [v11 addObject:v14];
              }

              else
              {
                dispatch_group_enter(*(a1 + 48));
                v15 = *(a1 + 40);
                v53[0] = MEMORY[0x277D85DD0];
                v53[1] = 3221225472;
                v54[0] = __119__HMMTRAccessoryServer__readCharacteristicValues_timeout_skipCache_sendNotification_completionQueue_completionHandler___block_invoke_2;
                v54[1] = &unk_2786EFAB0;
                v54[2] = v15;
                v57 = *(a1 + 112);
                v56 = vextq_s8(*(a1 + 96), *(a1 + 96), 8uLL);
                v55 = *(a1 + 48);
                [v15 _readCharacteristicValueFromCacheWithCharacteristic:v7 responseHandler:v53];
              }

              v9 = 0;
            }
          }
        }

        v4 = [v3 countByEnumeratingWithState:&v58 objects:v62 count:16];
      }

      while (v4);
    }

    v51[0] = 0;
    v51[1] = v51;
    v51[2] = 0x2020000000;
    v52 = 0;
    dispatch_group_enter(*(a1 + 56));
    v16 = *(a1 + 48);
    v17 = [*(a1 + 40) clientQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __119__HMMTRAccessoryServer__readCharacteristicValues_timeout_skipCache_sendNotification_completionQueue_completionHandler___block_invoke_507;
    block[3] = &unk_2786EFAD8;
    v18 = *(a1 + 40);
    v48 = *(a1 + 104);
    v49 = v51;
    block[4] = v18;
    v50 = *(a1 + 112);
    v47 = *(a1 + 56);
    dispatch_group_notify(v16, v17, block);

    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __119__HMMTRAccessoryServer__readCharacteristicValues_timeout_skipCache_sendNotification_completionQueue_completionHandler___block_invoke_508;
    v38[3] = &unk_2786EFB00;
    v43 = v51;
    v39 = *(a1 + 64);
    v42 = *(a1 + 80);
    v45 = *(a1 + 121);
    v31 = *(a1 + 32);
    v19 = v31.i64[0];
    v40 = vextq_s8(v31, v31, 8uLL);
    v44 = *(a1 + 112);
    v41 = *(a1 + 72);
    v20 = MEMORY[0x2318887D0](v38);
    v21 = dispatch_time(0, 60000000000);
    v22 = [*(a1 + 40) clientQueue];
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __119__HMMTRAccessoryServer__readCharacteristicValues_timeout_skipCache_sendNotification_completionQueue_completionHandler___block_invoke_510;
    v35[3] = &unk_2786EFF18;
    v23 = *(a1 + 112);
    v35[4] = *(a1 + 40);
    v37 = v23;
    v24 = v20;
    v36 = v24;
    dispatch_after(v21, v22, v35);

    v25 = *(a1 + 56);
    v26 = [*(a1 + 40) clientQueue];
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __119__HMMTRAccessoryServer__readCharacteristicValues_timeout_skipCache_sendNotification_completionQueue_completionHandler___block_invoke_2_511;
    v32[3] = &unk_2786F0AF8;
    v27 = *(a1 + 96);
    v33 = v24;
    v34 = v27;
    v28 = v24;
    dispatch_group_notify(v25, v26, v32);

    _Block_object_dispose(v51, 8);
  }

  v29 = *MEMORY[0x277D85DE8];
}

void __119__HMMTRAccessoryServer__readCharacteristicValues_timeout_skipCache_sendNotification_completionQueue_completionHandler___block_invoke_512(uint64_t a1)
{
  v1 = *(*(a1 + 64) + 8);
  if ((*(v1 + 24) & 1) == 0)
  {
    *(v1 + 24) = 1;
    v3 = [*(a1 + 32) pendingMTRDeviceReadReadyHandlers];
    v4 = [MEMORY[0x277CCABB0] numberWithLong:*(a1 + 72)];
    [v3 setObject:0 forKeyedSubscript:v4];

    v5 = *(a1 + 40);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __119__HMMTRAccessoryServer__readCharacteristicValues_timeout_skipCache_sendNotification_completionQueue_completionHandler___block_invoke_2_513;
    v6[3] = &unk_2786EF5A8;
    v8 = *(a1 + 56);
    v7 = *(a1 + 48);
    dispatch_async(v5, v6);
  }
}

void __119__HMMTRAccessoryServer__readCharacteristicValues_timeout_skipCache_sendNotification_completionQueue_completionHandler___block_invoke_2_513(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [MEMORY[0x277CCA9B8] errorWithDomain:@"HMMTRProtocolOperationErrorDomain" code:3 userInfo:0];
  (*(v2 + 16))(v2, 0, v3);

  v4 = *(a1 + 32);

  dispatch_group_leave(v4);
}

void __119__HMMTRAccessoryServer__readCharacteristicValues_timeout_skipCache_sendNotification_completionQueue_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = HMFGetLogIdentifier();
    v8 = *(a1 + 64);
    v11 = 138543874;
    v12 = v7;
    v13 = 2048;
    v14 = v8;
    v15 = 2112;
    v16 = v3;
    _os_log_impl(&dword_22AEAE000, v6, OS_LOG_TYPE_DEBUG, "%{public}@readCharacteristicValueFromCache(%lu) response: %@", &v11, 0x20u);
  }

  objc_autoreleasePoolPop(v4);
  v9 = [v3 error];

  if (v9)
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  [*(*(*(a1 + 56) + 8) + 40) addObject:v3];
  dispatch_group_leave(*(a1 + 40));

  v10 = *MEMORY[0x277D85DE8];
}

void __119__HMMTRAccessoryServer__readCharacteristicValues_timeout_skipCache_sendNotification_completionQueue_completionHandler___block_invoke_507(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  if (*(*(*(a1 + 48) + 8) + 24) == 1 && (*(*(*(a1 + 56) + 8) + 24) & 1) == 0)
  {
    v2 = objc_autoreleasePoolPush();
    v3 = *(a1 + 32);
    v4 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = HMFGetLogIdentifier();
      v6 = *(a1 + 64);
      v8 = 138543618;
      v9 = v5;
      v10 = 2048;
      v11 = v6;
      _os_log_impl(&dword_22AEAE000, v4, OS_LOG_TYPE_ERROR, "%{public}@Cache read didn't succeed for all requests (%lu)", &v8, 0x16u);
    }

    objc_autoreleasePoolPop(v2);
  }

  dispatch_group_leave(*(a1 + 40));
  v7 = *MEMORY[0x277D85DE8];
}

void __119__HMMTRAccessoryServer__readCharacteristicValues_timeout_skipCache_sendNotification_completionQueue_completionHandler___block_invoke_508(uint64_t a1, void *a2, void *a3)
{
  v48 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  v8 = *(*(a1 + 72) + 8);
  if ((*(v8 + 24) & 1) == 0)
  {
    *(v8 + 24) = 1;
    if (!*(a1 + 32) || !*(a1 + 64))
    {
      goto LABEL_24;
    }

    if (v6)
    {
      v9 = MEMORY[0x277CCA9B8];
      v10 = [v6 domain];
      v11 = [v9 errorWithDomain:v10 code:objc_msgSend(v7 userInfo:{"code"), 0}];

LABEL_23:
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __119__HMMTRAccessoryServer__readCharacteristicValues_timeout_skipCache_sendNotification_completionQueue_completionHandler___block_invoke_509;
      block[3] = &unk_2786F0288;
      v27 = *(a1 + 32);
      v28 = *(a1 + 80);
      block[4] = *(a1 + 40);
      v36 = v28;
      v33 = v5;
      v34 = v11;
      v35 = *(a1 + 64);
      v29 = v11;
      dispatch_async(v27, block);

LABEL_24:
      dispatch_group_leave(*(a1 + 56));
      goto LABEL_25;
    }

    if (*(a1 + 88) != 1)
    {
LABEL_22:
      v11 = 0;
      goto LABEL_23;
    }

    v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v13 = v5;
    v14 = [v13 countByEnumeratingWithState:&v37 objects:v47 count:16];
    if (v14)
    {
      v15 = v14;
      v31 = v5;
      v16 = 0;
      v17 = *v38;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v38 != v17)
          {
            objc_enumerationMutation(v13);
          }

          v19 = *(*(&v37 + 1) + 8 * i);
          v20 = [v19 error];

          if (!v20)
          {
            v21 = [v19 characteristic];
            [v12 addObject:v21];

            v16 = 1;
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v37 objects:v47 count:16];
      }

      while (v15);

      v5 = v31;
      if ((v16 & 1) == 0)
      {
        goto LABEL_21;
      }

      v22 = objc_autoreleasePoolPush();
      v23 = *(a1 + 40);
      v24 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        v25 = HMFGetLogIdentifier();
        v26 = *(a1 + 48);
        *buf = 138543874;
        v42 = v25;
        v43 = 2112;
        v44 = v12;
        v45 = 2112;
        v46 = v26;
        _os_log_impl(&dword_22AEAE000, v24, OS_LOG_TYPE_DEBUG, "%{public}@Calling didUpdateValuesForCharacteristics for %@ from read requests %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v22);
      v13 = [*(a1 + 40) delegate];
      [v13 accessoryServer:*(a1 + 40) didUpdateValuesForCharacteristics:v12 stateNumber:0 broadcast:0];
    }

LABEL_21:
    goto LABEL_22;
  }

LABEL_25:

  v30 = *MEMORY[0x277D85DE8];
}

void __119__HMMTRAccessoryServer__readCharacteristicValues_timeout_skipCache_sendNotification_completionQueue_completionHandler___block_invoke_510(uint64_t a1)
{
  v2 = [*(a1 + 32) pendingMTRDeviceReadReadyHandlers];
  v3 = [MEMORY[0x277CCABB0] numberWithLong:*(a1 + 48)];
  [v2 setObject:0 forKeyedSubscript:v3];

  v4 = *(a1 + 40);
  v5 = [MEMORY[0x277CCA9B8] errorWithDomain:@"HMMTRProtocolOperationErrorDomain" code:3 userInfo:0];
  (*(v4 + 16))(v4, 0, v5);
}

uint64_t __119__HMMTRAccessoryServer__readCharacteristicValues_timeout_skipCache_sendNotification_completionQueue_completionHandler___block_invoke_509(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 64);
    v7 = *(a1 + 40);
    v8 = *(a1 + 48);
    v13 = 138544130;
    v14 = v5;
    v15 = 2048;
    v16 = v6;
    v17 = 2112;
    v18 = v7;
    v19 = 2112;
    v20 = v8;
    _os_log_impl(&dword_22AEAE000, v4, OS_LOG_TYPE_DEBUG, "%{public}@readCharacteristicValues(%lu) response:%@, error:%@", &v13, 0x2Au);
  }

  objc_autoreleasePoolPop(v2);
  v9 = *(a1 + 48);
  v10 = *(a1 + 40);
  result = (*(*(a1 + 56) + 16))();
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)_readLocallyMaintainedCharacteristicValue:(id)a3
{
  v4 = a3;
  v5 = [v4 type];
  v6 = [v5 isEqual:@"0000026E-0000-1000-8000-0026BB765291"];

  if (v6)
  {
    v7 = [(HMMTRAccessoryServer *)self matterFirmwareUpdateStatus];
    v8 = [v7 readForMatterFirmwareUpdateStatusCharacteristic:v4];
LABEL_7:
    v13 = v8;

    goto LABEL_8;
  }

  v9 = [v4 type];
  v10 = [v9 isEqual:@"00000235-0000-1000-8000-0026BB765291"];

  if (v10)
  {
    v7 = [(HMMTRAccessoryServer *)self matterFirmwareUpdateStatus];
    v8 = [v7 readForHAPFirmwareUpdateStatusCharacteristic:v4];
    goto LABEL_7;
  }

  v11 = [v4 type];
  v12 = [v11 isEqual:@"00000234-0000-1000-8000-0026BB765291"];

  if (v12)
  {
    v7 = [(HMMTRAccessoryServer *)self matterFirmwareUpdateStatus];
    v8 = [v7 readForHAPFirmwareUpdateReadinessCharacteristic:v4];
    goto LABEL_7;
  }

  v13 = 0;
LABEL_8:

  return v13;
}

- (void)_readCharacteristicValueFromCacheAfterConfirmingBridgedAccessroyReachabilityWithCharacteristic:(id)a3 responseHandler:(id)a4
{
  v33 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMMTRAccessoryServer *)self matterDevice];

  v9 = objc_autoreleasePoolPush();
  v10 = self;
  v11 = HMFGetOSLogHandle();
  v12 = v11;
  if (v8)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v13 = HMFGetLogIdentifier();
      v29 = 138543618;
      v30 = v13;
      v31 = 2112;
      v32 = v6;
      _os_log_impl(&dword_22AEAE000, v12, OS_LOG_TYPE_DEBUG, "%{public}@Read cache operation starts for characteristic: %@", &v29, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
    v14 = [HMMTRProtocolOperation alloc];
    v15 = [(HMMTRAccessoryServer *)v10 matterDevice];
    v16 = [(HMMTRAccessoryServer *)v10 clusterIDCharacteristicMap];
    v17 = [(HMMTRProtocolOperation *)v14 initWithOperationOfType:4 characteristic:v6 matterDevice:v15 clusterIDCharacteristicMap:v16];

    if (v17)
    {
      v18 = +[HMMTRProtocolOperationManager sharedInstance];
      v19 = [(HAPAccessoryServer *)v10 clientQueue];
      v20 = [(HMMTRAccessoryServer *)v10 reportDistributor];
      [v18 registerOperation:v17 accessoryServer:v10 clientQueue:v19 reportDistributor:v20 operationResponseHandler:v7 updatedAttributesHandler:0];
    }

    else
    {
      v23 = objc_autoreleasePoolPush();
      v24 = v10;
      v25 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        v26 = HMFGetLogIdentifier();
        v29 = 138543618;
        v30 = v26;
        v31 = 2112;
        v32 = v6;
        _os_log_impl(&dword_22AEAE000, v25, OS_LOG_TYPE_DEBUG, "%{public}@Read cache operation failed to be created for characteristic: %@", &v29, 0x16u);
      }

      objc_autoreleasePoolPop(v23);
      v27 = MEMORY[0x277CFEA90];
      v18 = [MEMORY[0x277CCA9B8] hapErrorWithCode:14 marker:2304];
      v19 = [v27 responseTupleForCharacteristic:v6 error:v18];
      v7[2](v7, v19);
    }
  }

  else
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      v29 = 138543618;
      v30 = v21;
      v31 = 2112;
      v32 = v6;
      _os_log_impl(&dword_22AEAE000, v12, OS_LOG_TYPE_ERROR, "%{public}@MTRDevice unavailable to read characteristic value from cache for characteristic %@", &v29, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
    v22 = MEMORY[0x277CFEA90];
    v17 = [MEMORY[0x277CCA9B8] hapErrorWithCode:14 marker:2305];
    v18 = [v22 responseTupleForCharacteristic:v6 error:v17];
    v7[2](v7, v18);
  }

  v28 = *MEMORY[0x277D85DE8];
}

- (void)_readCharacteristicValueFromCacheWithCharacteristic:(id)a3 responseHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __92__HMMTRAccessoryServer__readCharacteristicValueFromCacheWithCharacteristic_responseHandler___block_invoke;
  v10[3] = &unk_2786EFA88;
  v10[4] = self;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  [(HMMTRAccessoryServer *)self _queryBridgedAccessoryAndUnreachablePerCacheForCharacteristic:v9 completion:v10];
}

void __92__HMMTRAccessoryServer__readCharacteristicValueFromCacheWithCharacteristic_responseHandler___block_invoke(uint64_t a1, int a2)
{
  v23 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v3 = objc_autoreleasePoolPush();
    v4 = *(a1 + 32);
    v5 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = HMFGetLogIdentifier();
      v7 = *(a1 + 40);
      v19 = 138543618;
      v20 = v6;
      v21 = 2112;
      v22 = v7;
      _os_log_impl(&dword_22AEAE000, v5, OS_LOG_TYPE_ERROR, "%{public}@Read cache operation aborted for characteristic since the bridged accessory is unreachable: %@", &v19, 0x16u);
    }

    objc_autoreleasePoolPop(v3);
    v8 = MEMORY[0x277CFEA90];
    v11 = a1 + 40;
    v9 = *(a1 + 40);
    v10 = *(v11 + 8);
    v12 = [MEMORY[0x277CCA9B8] hapIPErrorWithCode:-70402 marker:2401];
    v13 = [v8 responseTupleForCharacteristic:v9 error:v12];
    (*(v10 + 16))(v10, v13);

    v14 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v15 = *(a1 + 32);
    v16 = *(a1 + 40);
    v17 = *(a1 + 48);
    v18 = *MEMORY[0x277D85DE8];

    [v15 _readCharacteristicValueFromCacheAfterConfirmingBridgedAccessroyReachabilityWithCharacteristic:v16 responseHandler:v17];
  }
}

- (id)_readFixedCharacteristicValue:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 type];
  if ([v5 isEqual:@"000000CB-0000-1000-8000-0026BB765291"])
  {
  }

  else
  {
    v6 = [v4 type];
    v7 = [v6 isEqual:@"000000CD-0000-1000-8000-0026BB765291"];

    if (!v7)
    {
      v12 = 0;
      goto LABEL_8;
    }
  }

  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v11 = HMFGetLogIdentifier();
    v15 = 138543618;
    v16 = v11;
    v17 = 2112;
    v18 = v4;
    _os_log_impl(&dword_22AEAE000, v10, OS_LOG_TYPE_DEBUG, "%{public}@Read operation on fixed value characteristic: %@", &v15, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  v12 = [v4 value];
LABEL_8:

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (void)removeAllPairingsWithCompletionHandler:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(HMMTRAccessoryServer *)self operationDisabled])
  {
    v5 = objc_autoreleasePoolPush();
    v6 = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      *buf = 138543362;
      v25 = v8;
      _os_log_impl(&dword_22AEAE000, v7, OS_LOG_TYPE_INFO, "%{public}@Accessory server operations disabled. Aborting removing all pairings.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
    v9 = [(HAPAccessoryServer *)v6 clientQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __63__HMMTRAccessoryServer_removeAllPairingsWithCompletionHandler___block_invoke;
    block[3] = &unk_2786EF878;
    v23 = v4;
    dispatch_async(v9, block);

    v10 = v23;
  }

  else
  {
    v11 = random();
    v12 = objc_autoreleasePoolPush();
    v13 = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543618;
      v25 = v15;
      v26 = 2048;
      v27 = v11;
      _os_log_impl(&dword_22AEAE000, v14, OS_LOG_TYPE_INFO, "%{public}@Characteristics Operation Queue: remove all pairings job(%lu) queued.", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __63__HMMTRAccessoryServer_removeAllPairingsWithCompletionHandler___block_invoke_484;
    v19[3] = &unk_2786EFF18;
    v19[4] = v13;
    v21 = v11;
    v20 = v4;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __63__HMMTRAccessoryServer_removeAllPairingsWithCompletionHandler___block_invoke_489;
    v17[3] = &unk_2786F0BC0;
    v18 = v20;
    [(HMMTRAccessoryServer *)v13 queueAccessoryOperation:v19 highPriority:1 completion:v17];

    v10 = v20;
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __63__HMMTRAccessoryServer_removeAllPairingsWithCompletionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] hapErrorWithCode:1];
  (*(v1 + 16))(v1, v2);
}

void __63__HMMTRAccessoryServer_removeAllPairingsWithCompletionHandler___block_invoke_484(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 48);
    *buf = 138543618;
    v19 = v5;
    v20 = 2048;
    v21 = v6;
    _os_log_impl(&dword_22AEAE000, v4, OS_LOG_TYPE_INFO, "%{public}@Characteristics Operation Queue: remove all pairings job(%lu) started.", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v7 = dispatch_group_create();
  dispatch_group_enter(v7);
  v8 = [*(a1 + 32) clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__HMMTRAccessoryServer_removeAllPairingsWithCompletionHandler___block_invoke_485;
  block[3] = &unk_2786F0EA8;
  v9 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v16 = v7;
  v17 = v9;
  v10 = v7;
  dispatch_async(v8, block);

  v11 = [*(a1 + 32) clientQueue];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __63__HMMTRAccessoryServer_removeAllPairingsWithCompletionHandler___block_invoke_488;
  v14[3] = &unk_2786EF620;
  v12 = *(a1 + 48);
  v14[4] = *(a1 + 32);
  v14[5] = v12;
  dispatch_group_notify(v10, v11, v14);

  v13 = *MEMORY[0x277D85DE8];
}

uint64_t __63__HMMTRAccessoryServer_removeAllPairingsWithCompletionHandler___block_invoke_489(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

void __63__HMMTRAccessoryServer_removeAllPairingsWithCompletionHandler___block_invoke_485(id *a1)
{
  v35 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = a1[4];
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    *buf = 138543362;
    *&buf[4] = v5;
    _os_log_impl(&dword_22AEAE000, v4, OS_LOG_TYPE_INFO, "%{public}@Removing all pairings", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __63__HMMTRAccessoryServer_removeAllPairingsWithCompletionHandler___block_invoke_486;
  v31[3] = &unk_2786EF8A0;
  v33 = a1[6];
  v32 = a1[5];
  v6 = MEMORY[0x2318887D0](v31);
  v7 = [a1[4] deviceController];
  if (v7)
  {
    v8 = a1[4];
    v9 = [v8 nodeID];
    v10 = [v8 mtrBaseDeviceWithNodeID:v9 controller:v7];

    if (v10)
    {
      v11 = objc_alloc(MEMORY[0x277D0F7A8]);
      v12 = [a1[4] clientQueue];
      v13 = [v11 initWithQueue:v12];

      *buf = _HMFThreadLocalAsyncContextPush();
      v14 = [a1[4] clientQueue];
      v15 = [a1[4] browser];
      v16 = [v15 vendorMetadataStore];
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __63__HMMTRAccessoryServer_removeAllPairingsWithCompletionHandler___block_invoke_2;
      v27[3] = &unk_2786EF8A0;
      v27[4] = a1[4];
      v28 = v6;
      [v10 removeAllPairingsForCallbackQueue:v14 vendorMetadataStore:v16 completionHandler:v27];

      _HMFThreadLocalAsyncContextPop();
    }

    else
    {
      v22 = objc_autoreleasePoolPush();
      v23 = a1[4];
      v24 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v25 = HMFGetLogIdentifier();
        *buf = 138543362;
        *&buf[4] = v25;
        _os_log_impl(&dword_22AEAE000, v24, OS_LOG_TYPE_ERROR, "%{public}@Could not fetch pairings because of no device", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v22);
      v13 = [MEMORY[0x277CCA9B8] hapErrorWithCode:1];
      (v6)[2](v6, v13);
    }
  }

  else
  {
    v17 = objc_autoreleasePoolPush();
    v18 = a1[4];
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543362;
      *&buf[4] = v20;
      _os_log_impl(&dword_22AEAE000, v19, OS_LOG_TYPE_ERROR, "%{public}@No Matter device controller available to remove all pairings", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v17);
    v21 = [a1[4] clientQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __63__HMMTRAccessoryServer_removeAllPairingsWithCompletionHandler___block_invoke_487;
    block[3] = &unk_2786EF878;
    v30 = v6;
    dispatch_async(v21, block);

    v10 = v30;
  }

  v26 = *MEMORY[0x277D85DE8];
}

void __63__HMMTRAccessoryServer_removeAllPairingsWithCompletionHandler___block_invoke_488(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 40);
    v8 = 138543618;
    v9 = v5;
    v10 = 2048;
    v11 = v6;
    _os_log_impl(&dword_22AEAE000, v4, OS_LOG_TYPE_INFO, "%{public}@Characteristics Operation Queue: remove all pairings job(%lu) complete.", &v8, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v7 = *MEMORY[0x277D85DE8];
}

void __63__HMMTRAccessoryServer_removeAllPairingsWithCompletionHandler___block_invoke_486(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  dispatch_group_leave(v2);
}

void __63__HMMTRAccessoryServer_removeAllPairingsWithCompletionHandler___block_invoke_487(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CD5120] code:6 userInfo:0];
  (*(v1 + 16))(v1, v2);
}

void __63__HMMTRAccessoryServer_removeAllPairingsWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
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
      v11 = 138543618;
      v12 = v8;
      v13 = 2112;
      v14 = v3;
      _os_log_impl(&dword_22AEAE000, v7, OS_LOG_TYPE_ERROR, "%{public}@Failed to remove all pairings: %@", &v11, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v11 = 138543362;
      v12 = v9;
      _os_log_impl(&dword_22AEAE000, v7, OS_LOG_TYPE_INFO, "%{public}@Successfully removed all pairings.", &v11, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    [*(a1 + 32) setOperationDisabled:1];
    [*(a1 + 32) setOperationDisabledReason:2];
  }

  (*(*(a1 + 40) + 16))();

  v10 = *MEMORY[0x277D85DE8];
}

- (void)fetchExtendedMACAddressFromDevice:(id)a3 completion:(id)a4
{
  v32 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ([(HMMTRAccessoryServer *)self operationDisabled])
  {
    v8 = objc_autoreleasePoolPush();
    v9 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543362;
      v29 = v11;
      _os_log_impl(&dword_22AEAE000, v10, OS_LOG_TYPE_INFO, "%{public}@Accessory server operations disabled. Aborting fetching eMAC address.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
    v12 = [(HAPAccessoryServer *)v9 clientQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __69__HMMTRAccessoryServer_fetchExtendedMACAddressFromDevice_completion___block_invoke;
    block[3] = &unk_2786EF878;
    v27 = v7;
    dispatch_async(v12, block);

    v13 = v27;
  }

  else
  {
    v14 = random();
    v15 = objc_autoreleasePoolPush();
    v16 = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      *buf = 138543618;
      v29 = v18;
      v30 = 2048;
      v31 = v14;
      _os_log_impl(&dword_22AEAE000, v17, OS_LOG_TYPE_INFO, "%{public}@Characteristics Operation Queue: fetch eMAC address job(%lu) queued.", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v15);
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __69__HMMTRAccessoryServer_fetchExtendedMACAddressFromDevice_completion___block_invoke_473;
    v22[3] = &unk_2786EF850;
    v22[4] = v16;
    v25 = v14;
    v24 = v7;
    v23 = v6;
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __69__HMMTRAccessoryServer_fetchExtendedMACAddressFromDevice_completion___block_invoke_483;
    v20[3] = &unk_2786F0BC0;
    v21 = v24;
    [(HMMTRAccessoryServer *)v16 queueAccessoryOperation:v22 highPriority:0 completion:v20];

    v13 = v24;
  }

  v19 = *MEMORY[0x277D85DE8];
}

void __69__HMMTRAccessoryServer_fetchExtendedMACAddressFromDevice_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] hapErrorWithCode:1];
  (*(v1 + 16))(v1, 0, v2);
}

void __69__HMMTRAccessoryServer_fetchExtendedMACAddressFromDevice_completion___block_invoke_473(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 56);
    *buf = 138543618;
    v19 = v5;
    v20 = 2048;
    v21 = v6;
    _os_log_impl(&dword_22AEAE000, v4, OS_LOG_TYPE_INFO, "%{public}@Characteristics Operation Queue: fetch eMAC address job(%lu) started.", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v7 = dispatch_group_create();
  dispatch_group_enter(v7);
  v8 = [*(a1 + 32) clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__HMMTRAccessoryServer_fetchExtendedMACAddressFromDevice_completion___block_invoke_474;
  block[3] = &unk_2786EFA60;
  block[4] = *(a1 + 32);
  v17 = *(a1 + 48);
  v15 = v7;
  v16 = *(a1 + 40);
  v9 = v7;
  dispatch_async(v8, block);

  v10 = [*(a1 + 32) clientQueue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __69__HMMTRAccessoryServer_fetchExtendedMACAddressFromDevice_completion___block_invoke_482;
  v13[3] = &unk_2786EF620;
  v11 = *(a1 + 56);
  v13[4] = *(a1 + 32);
  v13[5] = v11;
  dispatch_group_notify(v9, v10, v13);

  v12 = *MEMORY[0x277D85DE8];
}

uint64_t __69__HMMTRAccessoryServer_fetchExtendedMACAddressFromDevice_completion___block_invoke_483(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

void __69__HMMTRAccessoryServer_fetchExtendedMACAddressFromDevice_completion___block_invoke_474(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    *buf = 138543362;
    v17 = v5;
    _os_log_impl(&dword_22AEAE000, v4, OS_LOG_TYPE_INFO, "%{public}@Fetching eMAC address", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __69__HMMTRAccessoryServer_fetchExtendedMACAddressFromDevice_completion___block_invoke_475;
  v13[3] = &unk_2786EFA08;
  v15 = *(a1 + 56);
  v14 = *(a1 + 40);
  v6 = MEMORY[0x2318887D0](v13);
  v7 = *(a1 + 48);
  v8 = [*(a1 + 32) clientQueue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __69__HMMTRAccessoryServer_fetchExtendedMACAddressFromDevice_completion___block_invoke_478;
  v11[3] = &unk_2786EFA38;
  v11[4] = *(a1 + 32);
  v12 = v6;
  v9 = v6;
  [v7 readAttributesWithEndpointID:&unk_283EE89B8 clusterID:&unk_283EE8BE0 attributeID:&unk_283EE89B8 params:0 queue:v8 completion:v11];

  v10 = *MEMORY[0x277D85DE8];
}

void __69__HMMTRAccessoryServer_fetchExtendedMACAddressFromDevice_completion___block_invoke_482(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 40);
    v8 = 138543618;
    v9 = v5;
    v10 = 2048;
    v11 = v6;
    _os_log_impl(&dword_22AEAE000, v4, OS_LOG_TYPE_INFO, "%{public}@Characteristics Operation Queue: fetch eMAC address job(%lu) complete.", &v8, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v7 = *MEMORY[0x277D85DE8];
}

void __69__HMMTRAccessoryServer_fetchExtendedMACAddressFromDevice_completion___block_invoke_475(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  dispatch_group_leave(v2);
}

void __69__HMMTRAccessoryServer_fetchExtendedMACAddressFromDevice_completion___block_invoke_478(uint64_t a1, void *a2, void *a3)
{
  v29 = *MEMORY[0x277D85DE8];
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
      v25 = 138543618;
      v26 = v11;
      v27 = 2112;
      v28 = v5;
      _os_log_impl(&dword_22AEAE000, v10, OS_LOG_TYPE_INFO, "%{public}@Accessory returned values as %@", &v25, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    v12 = *(a1 + 32);
    v13 = [v5 firstObject];
    v14 = [v13 objectForKeyedSubscript:*MEMORY[0x277CD50D8]];
    v15 = [v12 _getThreadHardwareAddressFromReadValue:v14];

    v16 = [v15 stringByReplacingOccurrencesOfString:@":" withString:&stru_283ED2308];
    [*(a1 + 32) setEMACAddress:v16];

    v17 = objc_autoreleasePoolPush();
    v18 = *(a1 + 32);
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = HMFGetLogIdentifier();
      v25 = 138543618;
      v26 = v20;
      v27 = 2112;
      v28 = v15;
      _os_log_impl(&dword_22AEAE000, v19, OS_LOG_TYPE_INFO, "%{public}@Accessory returned eMAC address as %@", &v25, 0x16u);
    }

    objc_autoreleasePoolPop(v17);
    v21 = *(*(a1 + 40) + 16);
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier();
      v25 = 138543618;
      v26 = v22;
      v27 = 2112;
      v28 = v6;
      _os_log_impl(&dword_22AEAE000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to retrieve eMAC address: %@", &v25, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    v23 = *(a1 + 40);
    v15 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:2];
    v21 = *(v23 + 16);
  }

  v21();

  v24 = *MEMORY[0x277D85DE8];
}

- (void)fetchWEDSupportInformationFromDevice:(id)a3 completion:(id)a4
{
  v32 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ([(HMMTRAccessoryServer *)self operationDisabled])
  {
    v8 = objc_autoreleasePoolPush();
    v9 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543362;
      v29 = v11;
      _os_log_impl(&dword_22AEAE000, v10, OS_LOG_TYPE_INFO, "%{public}@Accessory server operations disabled. Aborting fetching WED support information.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
    v12 = [(HAPAccessoryServer *)v9 clientQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __72__HMMTRAccessoryServer_fetchWEDSupportInformationFromDevice_completion___block_invoke;
    block[3] = &unk_2786EF878;
    v27 = v7;
    dispatch_async(v12, block);

    v13 = v27;
  }

  else
  {
    v14 = random();
    v15 = objc_autoreleasePoolPush();
    v16 = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      *buf = 138543618;
      v29 = v18;
      v30 = 2048;
      v31 = v14;
      _os_log_impl(&dword_22AEAE000, v17, OS_LOG_TYPE_INFO, "%{public}@Characteristics Operation Queue: fetch WED support information job(%lu) queued.", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v15);
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __72__HMMTRAccessoryServer_fetchWEDSupportInformationFromDevice_completion___block_invoke_467;
    v22[3] = &unk_2786EF850;
    v22[4] = v16;
    v25 = v14;
    v24 = v7;
    v23 = v6;
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __72__HMMTRAccessoryServer_fetchWEDSupportInformationFromDevice_completion___block_invoke_472;
    v20[3] = &unk_2786F0BC0;
    v21 = v24;
    [(HMMTRAccessoryServer *)v16 queueAccessoryOperation:v22 highPriority:0 completion:v20];

    v13 = v24;
  }

  v19 = *MEMORY[0x277D85DE8];
}

void __72__HMMTRAccessoryServer_fetchWEDSupportInformationFromDevice_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] hapErrorWithCode:1];
  (*(v1 + 16))(v1, 0, v2);
}

void __72__HMMTRAccessoryServer_fetchWEDSupportInformationFromDevice_completion___block_invoke_467(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 56);
    *buf = 138543618;
    v19 = v5;
    v20 = 2048;
    v21 = v6;
    _os_log_impl(&dword_22AEAE000, v4, OS_LOG_TYPE_INFO, "%{public}@Characteristics Operation Queue: fetch WED support information job(%lu) started.", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v7 = dispatch_group_create();
  dispatch_group_enter(v7);
  v8 = [*(a1 + 32) clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __72__HMMTRAccessoryServer_fetchWEDSupportInformationFromDevice_completion___block_invoke_468;
  block[3] = &unk_2786EFA60;
  block[4] = *(a1 + 32);
  v17 = *(a1 + 48);
  v15 = v7;
  v16 = *(a1 + 40);
  v9 = v7;
  dispatch_async(v8, block);

  v10 = [*(a1 + 32) clientQueue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __72__HMMTRAccessoryServer_fetchWEDSupportInformationFromDevice_completion___block_invoke_471;
  v13[3] = &unk_2786EF620;
  v11 = *(a1 + 56);
  v13[4] = *(a1 + 32);
  v13[5] = v11;
  dispatch_group_notify(v9, v10, v13);

  v12 = *MEMORY[0x277D85DE8];
}

uint64_t __72__HMMTRAccessoryServer_fetchWEDSupportInformationFromDevice_completion___block_invoke_472(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

void __72__HMMTRAccessoryServer_fetchWEDSupportInformationFromDevice_completion___block_invoke_468(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    *buf = 138543362;
    v17 = v5;
    _os_log_impl(&dword_22AEAE000, v4, OS_LOG_TYPE_INFO, "%{public}@Fetching WED support information", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __72__HMMTRAccessoryServer_fetchWEDSupportInformationFromDevice_completion___block_invoke_469;
  v13[3] = &unk_2786EFA08;
  v15 = *(a1 + 56);
  v14 = *(a1 + 40);
  v6 = MEMORY[0x2318887D0](v13);
  v7 = *(a1 + 48);
  v8 = [*(a1 + 32) clientQueue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __72__HMMTRAccessoryServer_fetchWEDSupportInformationFromDevice_completion___block_invoke_2;
  v11[3] = &unk_2786EFA38;
  v11[4] = *(a1 + 32);
  v12 = v6;
  v9 = v6;
  [v7 readAttributesWithEndpointID:&unk_283EE89B8 clusterID:&unk_283EE7AA0 attributeID:&unk_283EE89E8 params:0 queue:v8 completion:v11];

  v10 = *MEMORY[0x277D85DE8];
}

void __72__HMMTRAccessoryServer_fetchWEDSupportInformationFromDevice_completion___block_invoke_471(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 40);
    v8 = 138543618;
    v9 = v5;
    v10 = 2048;
    v11 = v6;
    _os_log_impl(&dword_22AEAE000, v4, OS_LOG_TYPE_INFO, "%{public}@Characteristics Operation Queue: fetch WED support information job(%lu) complete.", &v8, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v7 = *MEMORY[0x277D85DE8];
}

void __72__HMMTRAccessoryServer_fetchWEDSupportInformationFromDevice_completion___block_invoke_469(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  dispatch_group_leave(v2);
}

void __72__HMMTRAccessoryServer_fetchWEDSupportInformationFromDevice_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x277D85DE8];
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
      v23 = 138543618;
      v24 = v11;
      v25 = 2112;
      v26 = v5;
      _os_log_impl(&dword_22AEAE000, v10, OS_LOG_TYPE_INFO, "%{public}@Accessory returned WED support information as %@", &v23, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    if ([v5 count])
    {
      v12 = [v5 firstObject];
      v13 = [HMMTRUtilities mtrBaseClusterValueFromMTRClusterReportValue:v12];

      [*(a1 + 32) setWedDevice:v13 != 0];
    }

    else
    {
      [*(a1 + 32) setWedDevice:0];
    }

    v17 = objc_autoreleasePoolPush();
    v18 = *(a1 + 32);
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = HMFGetLogIdentifier();
      [*(a1 + 32) isWEDDevice];
      v21 = HMFBooleanToString();
      v23 = 138543618;
      v24 = v20;
      v25 = 2112;
      v26 = v21;
      _os_log_impl(&dword_22AEAE000, v19, OS_LOG_TYPE_INFO, "%{public}@Setting WED support to %@", &v23, 0x16u);
    }

    objc_autoreleasePoolPop(v17);
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v23 = 138543618;
      v24 = v14;
      v25 = 2112;
      v26 = v6;
      _os_log_impl(&dword_22AEAE000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to retrieve WED support information: %@", &v23, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    v15 = *(a1 + 40);
    v16 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:2];
    (*(v15 + 16))(v15, 0, v16);
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)handleCommissioneeHasReceivedNetworkCredentials
{
  v15 = *MEMORY[0x277D85DE8];
  if (isFeatureMatteriPhoneOnlyPairingControlEnabled())
  {
    if ([(HMMTRAccessoryServer *)self linkLayerType]== 4)
    {
      v3 = [(HMMTRAccessoryServer *)self browser];
      v4 = [v3 isCurrentDeviceAllowedAccessoryControlDespiteReachableResident];

      if (v4)
      {
        v5 = [(HMMTRAccessoryServer *)self commissioneeHasActiveNetwork];
        v6 = objc_autoreleasePoolPush();
        v7 = self;
        v8 = HMFGetOSLogHandle();
        v9 = v8;
        if (v5)
        {
          if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
          {
            v10 = HMFGetLogIdentifier();
            v13 = 138543362;
            v14 = v10;
            _os_log_impl(&dword_22AEAE000, v9, OS_LOG_TYPE_ERROR, "%{public}@setupThreadPairingAfterNetworkCredentials - Unexpected state - received commissioneeHasReceivedNetworkCredentials even though accessory was already on-network", &v13, 0xCu);
          }

          objc_autoreleasePoolPop(v6);
        }

        else
        {
          if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
          {
            v11 = HMFGetLogIdentifier();
            v13 = 138543362;
            v14 = v11;
            _os_log_impl(&dword_22AEAE000, v9, OS_LOG_TYPE_INFO, "%{public}@setupThreadPairingAfterNetworkCredentials - Network credentials sent to accessory", &v13, 0xCu);
          }

          objc_autoreleasePoolPop(v6);
          [(HMMTRAccessoryServer *)v7 _setupThreadPairing];
        }
      }
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)handleAttestationComplete
{
  v15 = *MEMORY[0x277D85DE8];
  if (isFeatureMatteriPhoneOnlyPairingControlEnabled())
  {
    if ([(HMMTRAccessoryServer *)self linkLayerType]== 4)
    {
      v3 = [(HMMTRAccessoryServer *)self browser];
      v4 = [v3 isCurrentDeviceAllowedAccessoryControlDespiteReachableResident];

      if (v4)
      {
        v5 = [(HMMTRAccessoryServer *)self commissioneeHasActiveNetwork];
        v6 = objc_autoreleasePoolPush();
        v7 = self;
        v8 = HMFGetOSLogHandle();
        v9 = os_log_type_enabled(v8, OS_LOG_TYPE_INFO);
        if (v5)
        {
          if (v9)
          {
            v10 = HMFGetLogIdentifier();
            v13 = 138543362;
            v14 = v10;
            _os_log_impl(&dword_22AEAE000, v8, OS_LOG_TYPE_INFO, "%{public}@setupThreadPairing - On network commissioning", &v13, 0xCu);
          }

          objc_autoreleasePoolPop(v6);
          [(HMMTRAccessoryServer *)v7 _setupThreadPairing];
        }

        else
        {
          if (v9)
          {
            v11 = HMFGetLogIdentifier();
            v13 = 138543362;
            v14 = v11;
            _os_log_impl(&dword_22AEAE000, v8, OS_LOG_TYPE_INFO, "%{public}@setupThreadPairing - Waiting for accessory to receive network credentials", &v13, 0xCu);
          }

          objc_autoreleasePoolPop(v6);
        }
      }
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_setupThreadPairing
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v7 = [(HMMTRAccessoryServer *)v4 eMACAddress];
    [(HMMTRAccessoryServer *)v4 isWEDDevice];
    v8 = HMFBooleanToString();
    *buf = 138543874;
    v19 = v6;
    v20 = 2112;
    v21 = v7;
    v22 = 2112;
    v23 = v8;
    _os_log_impl(&dword_22AEAE000, v5, OS_LOG_TYPE_INFO, "%{public}@_setupThreadPairing emac %@, isWED=%@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v3);
  v9 = [(HMMTRAccessoryServer *)v4 eMACAddress];
  v10 = [v9 dataUsingEncoding:4];

  v11 = [(HMMTRAccessoryServer *)v4 browser];
  v12 = [v11 threadRadioManager];
  v13 = [(HMMTRAccessoryServer *)v4 isWEDDevice];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __43__HMMTRAccessoryServer__setupThreadPairing__block_invoke;
  v16[3] = &unk_2786EF9E0;
  v16[4] = v4;
  v17 = v10;
  v14 = v10;
  [v12 startAccessoryPairingWithExtendedMACAddress:v14 isWedDevice:v13 accessoryServer:v4 completion:v16];

  v15 = *MEMORY[0x277D85DE8];
}

void __43__HMMTRAccessoryServer__setupThreadPairing__block_invoke(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (!v3 && [*(a1 + 32) isWEDDevice] && *(a1 + 40))
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 32);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      *buf = 138543362;
      v27 = v7;
      _os_log_impl(&dword_22AEAE000, v6, OS_LOG_TYPE_INFO, "%{public}@Aborting operations to flush the non-WED device state", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    v8 = [*(a1 + 32) browser];
    v9 = *(a1 + 32);
    v10 = [MEMORY[0x277CCA9B8] hmmtrErrorWithCode:9];
    [v8 abortOperationsForAccessoryServer:v9 reason:v10];

    v11 = objc_autoreleasePoolPush();
    v12 = *(a1 + 32);
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      v15 = *(a1 + 32);
      *buf = 138543618;
      v27 = v14;
      v28 = 2112;
      v29 = v15;
      _os_log_impl(&dword_22AEAE000, v13, OS_LOG_TYPE_INFO, "%{public}@Connecting to WED accessory: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    v16 = [*(a1 + 32) browser];
    v17 = [v16 threadRadioManager];
    v18 = *(a1 + 32);
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __43__HMMTRAccessoryServer__setupThreadPairing__block_invoke_466;
    v24[3] = &unk_2786EF9E0;
    v24[4] = v18;
    v25 = *(a1 + 40);
    [v17 connectToWEDAccessory:v18 completion:v24];
  }

  v19 = objc_autoreleasePoolPush();
  v20 = *(a1 + 32);
  v21 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    v22 = HMFGetLogIdentifier();
    *buf = 138543618;
    v27 = v22;
    v28 = 2112;
    v29 = v3;
    _os_log_impl(&dword_22AEAE000, v21, OS_LOG_TYPE_INFO, "%{public}@startAccessoryPairingWithExtendedMACAddress completed, error: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v19);
  v23 = *MEMORY[0x277D85DE8];
}

void __43__HMMTRAccessoryServer__setupThreadPairing__block_invoke_466(uint64_t a1, void *a2)
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
      v8 = *(a1 + 32);
      v9 = *(a1 + 40);
      v11 = 138544130;
      v12 = v7;
      v13 = 2112;
      v14 = v8;
      v15 = 2112;
      v16 = v9;
      v17 = 2112;
      v18 = v3;
      _os_log_impl(&dword_22AEAE000, v6, OS_LOG_TYPE_ERROR, "%{public}@Failed to establish WED connection to accessory %@ with emac %@, error %@", &v11, 0x2Au);
    }

    objc_autoreleasePoolPop(v4);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (id)_fetchSupportedThreadFeatures
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = [(HMMTRAccessoryServer *)self matterDevice];

  if (v3)
  {
    v4 = +[HMMTRDescriptorClusterManager sharedManager];
    v5 = [(HMMTRAccessoryServer *)self matterDevice];
    v6 = [v4 endpointForClusterID:&unk_283EE8BC8 mtrDevice:v5];

    if (v6)
    {
      v7 = objc_alloc(MEMORY[0x277CD5278]);
      v8 = [(HMMTRAccessoryServer *)self matterDevice];
      v9 = [(HAPAccessoryServer *)self clientQueue];
      v10 = [v7 initWithDevice:v8 endpointID:v6 queue:v9];

      v11 = objc_alloc_init(MEMORY[0x277CD54D8]);
      v12 = [v10 readAttributeSupportedThreadFeaturesWithParams:v11];

      v13 = [HMMTRUtilities mtrBaseClusterValueFromMTRClusterReadResultValue:v12 forIdentify:@"supportedThreadFeatures"];
      v14 = v13;
      if (v13)
      {
        v15 = v13;
      }

      else
      {
        v24 = objc_autoreleasePoolPush();
        v25 = self;
        v26 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
        {
          v27 = HMFGetLogIdentifier();
          v30 = 138543362;
          v31 = v27;
          _os_log_impl(&dword_22AEAE000, v26, OS_LOG_TYPE_INFO, "%{public}@SupportedThreadFeatures attribute was nil", &v30, 0xCu);
        }

        objc_autoreleasePoolPop(v24);
      }
    }

    else
    {
      v20 = objc_autoreleasePoolPush();
      v21 = self;
      v22 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v23 = HMFGetLogIdentifier();
        v30 = 138543362;
        v31 = v23;
        _os_log_impl(&dword_22AEAE000, v22, OS_LOG_TYPE_ERROR, "%{public}@No endpoint found to contain Network Commissioning Cluster to fetch SupportedThreadFeatures", &v30, 0xCu);
      }

      objc_autoreleasePoolPop(v20);
      v14 = 0;
    }
  }

  else
  {
    v16 = objc_autoreleasePoolPush();
    v17 = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      v30 = 138543362;
      v31 = v19;
      _os_log_impl(&dword_22AEAE000, v18, OS_LOG_TYPE_ERROR, "%{public}@No Matter device available to fetch SupportedThreadFeatures", &v30, 0xCu);
    }

    objc_autoreleasePoolPop(v16);
    v14 = 0;
  }

  v28 = *MEMORY[0x277D85DE8];

  return v14;
}

- (void)readSpecificationVersionWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(HAPAccessoryServer *)self clientQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __70__HMMTRAccessoryServer_readSpecificationVersionWithCompletionHandler___block_invoke;
  v7[3] = &unk_2786EF5A8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __70__HMMTRAccessoryServer_readSpecificationVersionWithCompletionHandler___block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) matterDevice];
  if (v2 && (v3 = v2, v4 = [*(a1 + 32) isReadyToReadFromMTRDevice], v3, (v4 & 1) != 0))
  {
    v5 = objc_alloc(MEMORY[0x277CD5248]);
    v6 = [*(a1 + 32) matterDevice];
    v7 = [*(a1 + 32) clientQueue];
    v8 = [v5 initWithDevice:v6 endpointID:&unk_283EE89B8 queue:v7];

    v9 = objc_alloc_init(MEMORY[0x277CD54D8]);
    v10 = [v8 readAttributeSpecificationVersionWithParams:v9];

    v11 = objc_autoreleasePoolPush();
    v12 = *(a1 + 32);
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      v23 = 138543618;
      v24 = v14;
      v25 = 2112;
      v26 = v10;
      _os_log_impl(&dword_22AEAE000, v13, OS_LOG_TYPE_INFO, "%{public}@Fetched specification number version data: %@", &v23, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    v15 = *(a1 + 40);
    if (v10)
    {
      v16 = [v10 objectForKeyedSubscript:*MEMORY[0x277CD51A0]];
      (*(v15 + 16))(v15, v16, 0);
    }

    else
    {
      v16 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:8];
      (*(v15 + 16))(v15, 0, v16);
    }
  }

  else
  {
    v17 = objc_autoreleasePoolPush();
    v18 = *(a1 + 32);
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      v23 = 138543362;
      v24 = v20;
      _os_log_impl(&dword_22AEAE000, v19, OS_LOG_TYPE_ERROR, "%{public}@No Matter device available to read specification version", &v23, 0xCu);
    }

    objc_autoreleasePoolPop(v17);
    v21 = *(a1 + 40);
    v8 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:8];
    (*(v21 + 16))(v21, 0, v8);
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (double)handleBusyImageResponseCounter
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = exp2([(HMMTRAccessoryServer *)self busyImageResponseCounter]) * 120.0;
  v4 = objc_autoreleasePoolPush();
  v5 = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v11 = 138543618;
    v12 = v7;
    v13 = 2048;
    v14 = v3;
    _os_log_impl(&dword_22AEAE000, v6, OS_LOG_TYPE_INFO, "%{public}@Updating delay with exponential backoff to %.0f seconds", &v11, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  [(HMMTRAccessoryServer *)v5 setBusyImageResponseCounter:[(HMMTRAccessoryServer *)v5 busyImageResponseCounter]+ 1];
  v8 = [(HMMTRAccessoryServer *)v5 notAvailableImageResponseCounter];
  [v8 resetTimeBasedCounter];

  v9 = *MEMORY[0x277D85DE8];
  return v3;
}

- (BOOL)handleNotAvailableImageResponseCounter
{
  [(HMMTRAccessoryServer *)self setBusyImageResponseCounter:0];
  v3 = [(HMMTRAccessoryServer *)self notAvailableImageResponseCounter];
  v4 = [v3 incrementOrReset];

  return v4;
}

- (void)resetNonAvailableCounters
{
  v3 = [(HMMTRAccessoryServer *)self notAvailableImageResponseCounter];
  [v3 resetTimeBasedCounter];

  [(HMMTRAccessoryServer *)self setBusyImageResponseCounter:0];
}

- (void)fetchSoftwareVersion:(BOOL)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = [(HAPAccessoryServer *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__HMMTRAccessoryServer_fetchSoftwareVersion_completionHandler___block_invoke;
  block[3] = &unk_2786EF9B8;
  block[4] = self;
  v10 = v6;
  v11 = a3;
  v8 = v6;
  dispatch_async(v7, block);
}

void __63__HMMTRAccessoryServer_fetchSoftwareVersion_completionHandler___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) matterDevice];

  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x277CD5248]);
    v4 = [*(a1 + 32) matterDevice];
    v5 = [*(a1 + 32) clientQueue];
    v6 = [v3 initWithDevice:v4 endpointID:&unk_283EE89B8 queue:v5];

    LODWORD(v4) = *(a1 + 48);
    v7 = objc_alloc_init(MEMORY[0x277CD54D8]);
    if (v4 == 1)
    {
      [v6 readAttributeSoftwareVersionWithParams:v7];
    }

    else
    {
      [v6 readAttributeSoftwareVersionStringWithParams:v7];
    }
    v13 = ;

    v14 = objc_autoreleasePoolPush();
    v15 = *(a1 + 32);
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = HMFGetLogIdentifier();
      v21 = 138543618;
      v22 = v17;
      v23 = 2112;
      v24 = v13;
      _os_log_impl(&dword_22AEAE000, v16, OS_LOG_TYPE_INFO, "%{public}@Fetched software version data: %@", &v21, 0x16u);
    }

    objc_autoreleasePoolPop(v14);
    v18 = *(a1 + 40);
    if (v13)
    {
      v19 = [v13 objectForKeyedSubscript:*MEMORY[0x277CD51A0]];
      (*(v18 + 16))(v18, v19, 0);
    }

    else
    {
      v19 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:8];
      (*(v18 + 16))(v18, 0, v19);
    }
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v9 = *(a1 + 32);
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v21 = 138543362;
      v22 = v11;
      _os_log_impl(&dword_22AEAE000, v10, OS_LOG_TYPE_ERROR, "%{public}@No Matter device available to fetch software version", &v21, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
    v12 = *(a1 + 40);
    v6 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:8];
    (*(v12 + 16))(v12, 0, v6);
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)_fetchSerialNumberWithCompletionHandler:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(HMMTRAccessoryServer *)self operationDisabled])
  {
    v5 = objc_autoreleasePoolPush();
    v6 = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      *buf = 138543362;
      v22 = v8;
      _os_log_impl(&dword_22AEAE000, v7, OS_LOG_TYPE_INFO, "%{public}@Accessory server operations disabled. Aborting fetching serial number.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
    v9 = [MEMORY[0x277CCA9B8] hapErrorWithCode:1];
    v4[2](v4, v9);
  }

  else
  {
    v10 = random();
    v11 = objc_autoreleasePoolPush();
    v12 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543618;
      v22 = v14;
      v23 = 2048;
      v24 = v10;
      _os_log_impl(&dword_22AEAE000, v13, OS_LOG_TYPE_INFO, "%{public}@Characteristics Operation Queue: fetch serial number job(%lu) queued.", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __64__HMMTRAccessoryServer__fetchSerialNumberWithCompletionHandler___block_invoke;
    v18[3] = &unk_2786EFF18;
    v18[4] = v12;
    v20 = v10;
    v19 = v4;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __64__HMMTRAccessoryServer__fetchSerialNumberWithCompletionHandler___block_invoke_458;
    v16[3] = &unk_2786F0BC0;
    v17 = v19;
    [(HMMTRAccessoryServer *)v12 queueAccessoryOperation:v18 highPriority:0 completion:v16];
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __64__HMMTRAccessoryServer__fetchSerialNumberWithCompletionHandler___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 48);
    *buf = 138543618;
    v19 = v5;
    v20 = 2048;
    v21 = v6;
    _os_log_impl(&dword_22AEAE000, v4, OS_LOG_TYPE_INFO, "%{public}@Characteristics Operation Queue: fetch serial number job(%lu) started.", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v7 = dispatch_group_create();
  dispatch_group_enter(v7);
  v8 = [*(a1 + 32) clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__HMMTRAccessoryServer__fetchSerialNumberWithCompletionHandler___block_invoke_454;
  block[3] = &unk_2786F0EA8;
  v9 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v16 = v7;
  v17 = v9;
  v10 = v7;
  dispatch_async(v8, block);

  v11 = [*(a1 + 32) clientQueue];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __64__HMMTRAccessoryServer__fetchSerialNumberWithCompletionHandler___block_invoke_457;
  v14[3] = &unk_2786EF620;
  v12 = *(a1 + 48);
  v14[4] = *(a1 + 32);
  v14[5] = v12;
  dispatch_group_notify(v10, v11, v14);

  v13 = *MEMORY[0x277D85DE8];
}

uint64_t __64__HMMTRAccessoryServer__fetchSerialNumberWithCompletionHandler___block_invoke_458(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

void __64__HMMTRAccessoryServer__fetchSerialNumberWithCompletionHandler___block_invoke_454(id *a1)
{
  v32 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = a1[4];
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    *buf = 138543362;
    v31 = v5;
    _os_log_impl(&dword_22AEAE000, v4, OS_LOG_TYPE_INFO, "%{public}@Fetching serial number", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __64__HMMTRAccessoryServer__fetchSerialNumberWithCompletionHandler___block_invoke_455;
  v27[3] = &unk_2786EF8A0;
  v29 = a1[6];
  v28 = a1[5];
  v6 = MEMORY[0x2318887D0](v27);
  v7 = [a1[4] deviceController];
  if (v7)
  {
    v8 = a1[4];
    v9 = [v8 nodeID];
    v10 = [v8 mtrBaseDeviceWithNodeID:v9 controller:v7];

    if (v10)
    {
      v11 = [a1[4] clientQueue];
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __64__HMMTRAccessoryServer__fetchSerialNumberWithCompletionHandler___block_invoke_2;
      v23[3] = &unk_2786EF990;
      v23[4] = a1[4];
      v24 = v6;
      [v10 fetchSerialNumberWithCallbackQueue:v11 completionHandler:v23];
    }

    else
    {
      v17 = objc_autoreleasePoolPush();
      v18 = a1[4];
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = HMFGetLogIdentifier();
        *buf = 138543362;
        v31 = v20;
        _os_log_impl(&dword_22AEAE000, v19, OS_LOG_TYPE_ERROR, "%{public}@Could not fetch serial number because of no device", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v17);
      v21 = [MEMORY[0x277CCA9B8] hapErrorWithCode:1];
      (v6)[2](v6, v21);

      v10 = 0;
    }
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    v13 = a1[4];
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543362;
      v31 = v15;
      _os_log_impl(&dword_22AEAE000, v14, OS_LOG_TYPE_ERROR, "%{public}@No Matter device controller available to fetch serial number", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v12);
    v16 = [a1[4] clientQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __64__HMMTRAccessoryServer__fetchSerialNumberWithCompletionHandler___block_invoke_456;
    block[3] = &unk_2786EF878;
    v26 = v6;
    dispatch_async(v16, block);

    v10 = v26;
  }

  v22 = *MEMORY[0x277D85DE8];
}

void __64__HMMTRAccessoryServer__fetchSerialNumberWithCompletionHandler___block_invoke_457(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 40);
    v8 = 138543618;
    v9 = v5;
    v10 = 2048;
    v11 = v6;
    _os_log_impl(&dword_22AEAE000, v4, OS_LOG_TYPE_INFO, "%{public}@Characteristics Operation Queue: fetch serial number job(%lu) complete.", &v8, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v7 = *MEMORY[0x277D85DE8];
}

void __64__HMMTRAccessoryServer__fetchSerialNumberWithCompletionHandler___block_invoke_455(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  dispatch_group_leave(v2);
}

void __64__HMMTRAccessoryServer__fetchSerialNumberWithCompletionHandler___block_invoke_456(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CD5120] code:6 userInfo:0];
  (*(v1 + 16))(v1, v2);
}

void __64__HMMTRAccessoryServer__fetchSerialNumberWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
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
      v17 = 138543618;
      v18 = v11;
      v19 = 2112;
      v20 = v5;
      _os_log_impl(&dword_22AEAE000, v10, OS_LOG_TYPE_INFO, "%{public}@Accessory returned Serial Number as %@", &v17, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    v12 = [*(a1 + 32) primaryAccessory];
    [v12 setSerialNumber:v5];

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      v17 = 138543618;
      v18 = v13;
      v19 = 2112;
      v20 = v6;
      _os_log_impl(&dword_22AEAE000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to retrieve serial number: %@", &v17, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    v14 = *(a1 + 40);
    if (v6)
    {
      (*(v14 + 16))(v14, v6);
    }

    else
    {
      v15 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:2];
      (*(v14 + 16))(v14, v15);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_fetchCurrentPairingWithCompletionHandler:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(HMMTRAccessoryServer *)self operationDisabled])
  {
    v5 = objc_autoreleasePoolPush();
    v6 = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      *buf = 138543362;
      v22 = v8;
      _os_log_impl(&dword_22AEAE000, v7, OS_LOG_TYPE_INFO, "%{public}@Accessory server operations disabled. Aborting fetching current pairing.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
    v9 = [MEMORY[0x277CCA9B8] hapErrorWithCode:1];
    (*(v4 + 2))(v4, 0, v9, 0);
  }

  else
  {
    v10 = random();
    v11 = objc_autoreleasePoolPush();
    v12 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543618;
      v22 = v14;
      v23 = 2048;
      v24 = v10;
      _os_log_impl(&dword_22AEAE000, v13, OS_LOG_TYPE_INFO, "%{public}@Characteristics Operation Queue: fetch current pairing job(%lu) queued.", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __66__HMMTRAccessoryServer__fetchCurrentPairingWithCompletionHandler___block_invoke;
    v18[3] = &unk_2786EFF18;
    v18[4] = v12;
    v20 = v10;
    v19 = v4;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __66__HMMTRAccessoryServer__fetchCurrentPairingWithCompletionHandler___block_invoke_453;
    v16[3] = &unk_2786F0BC0;
    v17 = v19;
    [(HMMTRAccessoryServer *)v12 queueAccessoryOperation:v18 highPriority:0 completion:v16];
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __66__HMMTRAccessoryServer__fetchCurrentPairingWithCompletionHandler___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 48);
    *buf = 138543618;
    v19 = v5;
    v20 = 2048;
    v21 = v6;
    _os_log_impl(&dword_22AEAE000, v4, OS_LOG_TYPE_INFO, "%{public}@Characteristics Operation Queue: fetch current pairing job(%lu) started.", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v7 = dispatch_group_create();
  dispatch_group_enter(v7);
  v8 = [*(a1 + 32) clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__HMMTRAccessoryServer__fetchCurrentPairingWithCompletionHandler___block_invoke_449;
  block[3] = &unk_2786F0EA8;
  v9 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v16 = v7;
  v17 = v9;
  v10 = v7;
  dispatch_async(v8, block);

  v11 = [*(a1 + 32) clientQueue];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __66__HMMTRAccessoryServer__fetchCurrentPairingWithCompletionHandler___block_invoke_452;
  v14[3] = &unk_2786EF620;
  v12 = *(a1 + 48);
  v14[4] = *(a1 + 32);
  v14[5] = v12;
  dispatch_group_notify(v10, v11, v14);

  v13 = *MEMORY[0x277D85DE8];
}

uint64_t __66__HMMTRAccessoryServer__fetchCurrentPairingWithCompletionHandler___block_invoke_453(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

void __66__HMMTRAccessoryServer__fetchCurrentPairingWithCompletionHandler___block_invoke_449(id *a1)
{
  v34 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = a1[4];
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    *buf = 138543362;
    v33 = v5;
    _os_log_impl(&dword_22AEAE000, v4, OS_LOG_TYPE_INFO, "%{public}@Fetching current pairing", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __66__HMMTRAccessoryServer__fetchCurrentPairingWithCompletionHandler___block_invoke_450;
  v29[3] = &unk_2786EF968;
  v31 = a1[6];
  v30 = a1[5];
  v6 = MEMORY[0x2318887D0](v29);
  v7 = [a1[4] deviceController];
  if (v7)
  {
    v8 = a1[4];
    v9 = [v8 nodeID];
    v10 = [v8 mtrBaseDeviceWithNodeID:v9 controller:v7];

    if (v10)
    {
      v11 = [a1[4] clientQueue];
      v12 = [a1[4] browser];
      v13 = [v12 vendorMetadataStore];
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __66__HMMTRAccessoryServer__fetchCurrentPairingWithCompletionHandler___block_invoke_2;
      v25[3] = &unk_2786EF968;
      v25[4] = a1[4];
      v26 = v6;
      [v10 fetchCurrentPairingWithCallbackQueue:v11 vendorMetadataStore:v13 completionHandler:v25];
    }

    else
    {
      v19 = objc_autoreleasePoolPush();
      v20 = a1[4];
      v21 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v22 = HMFGetLogIdentifier();
        *buf = 138543362;
        v33 = v22;
        _os_log_impl(&dword_22AEAE000, v21, OS_LOG_TYPE_ERROR, "%{public}@Could not fetch current pairing because of no device", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v19);
      v23 = [MEMORY[0x277CCA9B8] hapErrorWithCode:1];
      (v6)[2](v6, 0, v23, 0);

      v10 = 0;
    }
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    v15 = a1[4];
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      *buf = 138543362;
      v33 = v17;
      _os_log_impl(&dword_22AEAE000, v16, OS_LOG_TYPE_ERROR, "%{public}@No Matter device controller available to fetch current pairing", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v14);
    v18 = [a1[4] clientQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __66__HMMTRAccessoryServer__fetchCurrentPairingWithCompletionHandler___block_invoke_451;
    block[3] = &unk_2786EF878;
    v28 = v6;
    dispatch_async(v18, block);

    v10 = v28;
  }

  v24 = *MEMORY[0x277D85DE8];
}

void __66__HMMTRAccessoryServer__fetchCurrentPairingWithCompletionHandler___block_invoke_452(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 40);
    v8 = 138543618;
    v9 = v5;
    v10 = 2048;
    v11 = v6;
    _os_log_impl(&dword_22AEAE000, v4, OS_LOG_TYPE_INFO, "%{public}@Characteristics Operation Queue: fetch current pairing job(%lu) complete.", &v8, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v7 = *MEMORY[0x277D85DE8];
}

void __66__HMMTRAccessoryServer__fetchCurrentPairingWithCompletionHandler___block_invoke_450(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  dispatch_group_leave(v2);
}

void __66__HMMTRAccessoryServer__fetchCurrentPairingWithCompletionHandler___block_invoke_451(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CD5120] code:6 userInfo:0];
  (*(v1 + 16))(v1, 0, v2, 0);
}

void __66__HMMTRAccessoryServer__fetchCurrentPairingWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v23 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = objc_autoreleasePoolPush();
  v11 = *(a1 + 32);
  v12 = HMFGetOSLogHandle();
  v13 = v12;
  if (v7)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      v19 = 138543618;
      v20 = v14;
      v21 = 2112;
      v22 = v7;
      v15 = "%{public}@Successfully retrieved pairing: %@";
      v16 = v13;
      v17 = OS_LOG_TYPE_INFO;
LABEL_6:
      _os_log_impl(&dword_22AEAE000, v16, v17, v15, &v19, 0x16u);
    }
  }

  else if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    v14 = HMFGetLogIdentifier();
    v19 = 138543618;
    v20 = v14;
    v21 = 2112;
    v22 = v8;
    v15 = "%{public}@Failed to retrieve pairing: %@";
    v16 = v13;
    v17 = OS_LOG_TYPE_ERROR;
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v10);
  (*(*(a1 + 40) + 16))(*(a1 + 40), v7, v8, 0);

  v18 = *MEMORY[0x277D85DE8];
}

- (void)fetchLastKnownPairingsWithCompletionHandler:(id)a3
{
  v36 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(HMMTRAccessoryServer *)self operationDisabled])
  {
    v5 = objc_autoreleasePoolPush();
    v6 = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      *buf = 138543362;
      v33 = v8;
      _os_log_impl(&dword_22AEAE000, v7, OS_LOG_TYPE_INFO, "%{public}@Accessory server operations disabled. Aborting fetching pairings.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
    v9 = [(HAPAccessoryServer *)v6 clientQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __68__HMMTRAccessoryServer_fetchLastKnownPairingsWithCompletionHandler___block_invoke;
    block[3] = &unk_2786EF878;
    v31 = v4;
    v10 = v4;
    dispatch_async(v9, block);

    v11 = v31;
  }

  else
  {
    v12 = random();
    v13 = objc_autoreleasePoolPush();
    v14 = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      *buf = 138543618;
      v33 = v16;
      v34 = 2048;
      v35 = v12;
      _os_log_impl(&dword_22AEAE000, v15, OS_LOG_TYPE_INFO, "%{public}@Characteristics Operation Queue: fetch pairings without connection job(%lu) queued.", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
    v17 = objc_autoreleasePoolPush();
    v18 = v14;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543618;
      v33 = v20;
      v34 = 2048;
      v35 = v12;
      _os_log_impl(&dword_22AEAE000, v19, OS_LOG_TYPE_INFO, "%{public}@Characteristics Operation Queue: fetch pairings without connection job(%lu) started.", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v17);
    v21 = dispatch_group_create();
    dispatch_group_enter(v21);
    v22 = [(HAPAccessoryServer *)v18 clientQueue];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __68__HMMTRAccessoryServer_fetchLastKnownPairingsWithCompletionHandler___block_invoke_443;
    v27[3] = &unk_2786F0EA8;
    v28 = v21;
    v29 = v4;
    v27[4] = v18;
    v11 = v21;
    v23 = v4;
    dispatch_async(v22, v27);

    v24 = [(HAPAccessoryServer *)v18 clientQueue];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __68__HMMTRAccessoryServer_fetchLastKnownPairingsWithCompletionHandler___block_invoke_448;
    v26[3] = &unk_2786EF620;
    v26[4] = v18;
    v26[5] = v12;
    dispatch_group_notify(v11, v24, v26);
  }

  v25 = *MEMORY[0x277D85DE8];
}

void __68__HMMTRAccessoryServer_fetchLastKnownPairingsWithCompletionHandler___block_invoke(uint64_t a1)
{
  v3 = [MEMORY[0x277CCA9B8] hapErrorWithCode:1];
  v2 = [HMMTRAccessoryPairingEndContext hmmtrContextWithStep:10 error:v3];
  (*(*(a1 + 32) + 16))();
}

void __68__HMMTRAccessoryServer_fetchLastKnownPairingsWithCompletionHandler___block_invoke_443(id *a1)
{
  v43 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = a1[4];
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    *buf = 138543362;
    v40 = v5;
    _os_log_impl(&dword_22AEAE000, v4, OS_LOG_TYPE_INFO, "%{public}@Fetching pairings from MTRDevice", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __68__HMMTRAccessoryServer_fetchLastKnownPairingsWithCompletionHandler___block_invoke_444;
  v36[3] = &unk_2786EF968;
  v38 = a1[6];
  v37 = a1[5];
  v6 = MEMORY[0x2318887D0](v36);
  v7 = [a1[4] matterDevice];

  if (v7)
  {
    v8 = objc_alloc(MEMORY[0x277CD5280]);
    v9 = [a1[4] matterDevice];
    v10 = [a1[4] clientQueue];
    v11 = [v8 initWithDevice:v9 endpointID:&unk_283EE89B8 queue:v10];

    if (v11)
    {
      v12 = objc_alloc_init(MEMORY[0x277CD54D8]);
      v13 = [v11 readAttributeFabricsWithParams:v12];

      v14 = [a1[4] browser];
      v15 = [v14 vendorMetadataStore];
      v16 = [HMMTRUtilities hmmtrPairingsFromMTRClusterReadValue:v13 vendorMetadataStore:v15];

      v17 = objc_autoreleasePoolPush();
      v18 = a1[4];
      v19 = HMFGetOSLogHandle();
      v20 = v19;
      if (v16)
      {
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          v21 = HMFGetLogIdentifier();
          *buf = 138543618;
          v40 = v21;
          v41 = 2112;
          v42 = v16;
          v22 = "%{public}@Successfully retrieved pairings from MTRDevice: %@";
          v23 = v20;
          v24 = OS_LOG_TYPE_INFO;
          v25 = 22;
LABEL_13:
          _os_log_impl(&dword_22AEAE000, v23, v24, v22, buf, v25);
        }
      }

      else if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v21 = HMFGetLogIdentifier();
        *buf = 138543362;
        v40 = v21;
        v22 = "%{public}@Failed to retrieve pairings from MTRDevice";
        v23 = v20;
        v24 = OS_LOG_TYPE_ERROR;
        v25 = 12;
        goto LABEL_13;
      }

      objc_autoreleasePoolPop(v17);
      v31 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CD5120] code:6 userInfo:0];
      v32 = [HMMTRAccessoryPairingEndContext hmmtrContextWithStep:10 error:v31];
      (v6)[2](v6, v16, v31, v32);
    }
  }

  else
  {
    v26 = objc_autoreleasePoolPush();
    v27 = a1[4];
    v28 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v29 = HMFGetLogIdentifier();
      *buf = 138543362;
      v40 = v29;
      _os_log_impl(&dword_22AEAE000, v28, OS_LOG_TYPE_ERROR, "%{public}@No MTRDevice available to fetch pairings", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v26);
    v30 = [a1[4] clientQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __68__HMMTRAccessoryServer_fetchLastKnownPairingsWithCompletionHandler___block_invoke_445;
    block[3] = &unk_2786EF878;
    v35 = v6;
    dispatch_async(v30, block);

    v11 = v35;
  }

  v33 = *MEMORY[0x277D85DE8];
}

void __68__HMMTRAccessoryServer_fetchLastKnownPairingsWithCompletionHandler___block_invoke_448(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 40);
    v8 = 138543618;
    v9 = v5;
    v10 = 2048;
    v11 = v6;
    _os_log_impl(&dword_22AEAE000, v4, OS_LOG_TYPE_INFO, "%{public}@Characteristics Operation Queue: fetch pairings without connection job(%lu) complete.", &v8, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v7 = *MEMORY[0x277D85DE8];
}

void __68__HMMTRAccessoryServer_fetchLastKnownPairingsWithCompletionHandler___block_invoke_444(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  dispatch_group_leave(v2);
}

void __68__HMMTRAccessoryServer_fetchLastKnownPairingsWithCompletionHandler___block_invoke_445(uint64_t a1)
{
  v3 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CD5120] code:6 userInfo:0];
  v2 = [HMMTRAccessoryPairingEndContext hmmtrContextWithStep:10 error:v3];
  (*(*(a1 + 32) + 16))();
}

- (void)fetchPairingsWithCompletionHandler:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(HMMTRAccessoryServer *)self operationDisabled])
  {
    v5 = objc_autoreleasePoolPush();
    v6 = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      *buf = 138543362;
      v25 = v8;
      _os_log_impl(&dword_22AEAE000, v7, OS_LOG_TYPE_INFO, "%{public}@Accessory server operations disabled. Aborting fetching pairings.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
    v9 = [(HAPAccessoryServer *)v6 clientQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __59__HMMTRAccessoryServer_fetchPairingsWithCompletionHandler___block_invoke;
    block[3] = &unk_2786EF878;
    v23 = v4;
    dispatch_async(v9, block);

    v10 = v23;
  }

  else
  {
    v11 = random();
    v12 = objc_autoreleasePoolPush();
    v13 = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543618;
      v25 = v15;
      v26 = 2048;
      v27 = v11;
      _os_log_impl(&dword_22AEAE000, v14, OS_LOG_TYPE_INFO, "%{public}@Characteristics Operation Queue: fetch pairings job(%lu) queued.", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __59__HMMTRAccessoryServer_fetchPairingsWithCompletionHandler___block_invoke_436;
    v19[3] = &unk_2786EFF18;
    v19[4] = v13;
    v21 = v11;
    v20 = v4;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __59__HMMTRAccessoryServer_fetchPairingsWithCompletionHandler___block_invoke_442;
    v17[3] = &unk_2786F0BC0;
    v18 = v20;
    [(HMMTRAccessoryServer *)v13 queueAccessoryOperation:v19 highPriority:0 completion:v17];

    v10 = v20;
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __59__HMMTRAccessoryServer_fetchPairingsWithCompletionHandler___block_invoke(uint64_t a1)
{
  v3 = [MEMORY[0x277CCA9B8] hapErrorWithCode:1];
  v2 = [HMMTRAccessoryPairingEndContext hmmtrContextWithStep:10 error:v3];
  (*(*(a1 + 32) + 16))();
}

void __59__HMMTRAccessoryServer_fetchPairingsWithCompletionHandler___block_invoke_436(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 48);
    *buf = 138543618;
    v19 = v5;
    v20 = 2048;
    v21 = v6;
    _os_log_impl(&dword_22AEAE000, v4, OS_LOG_TYPE_INFO, "%{public}@Characteristics Operation Queue: fetch pairings job(%lu) started.", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v7 = dispatch_group_create();
  dispatch_group_enter(v7);
  v8 = [*(a1 + 32) clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__HMMTRAccessoryServer_fetchPairingsWithCompletionHandler___block_invoke_437;
  block[3] = &unk_2786F0EA8;
  v9 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v16 = v7;
  v17 = v9;
  v10 = v7;
  dispatch_async(v8, block);

  v11 = [*(a1 + 32) clientQueue];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __59__HMMTRAccessoryServer_fetchPairingsWithCompletionHandler___block_invoke_441;
  v14[3] = &unk_2786EF620;
  v12 = *(a1 + 48);
  v14[4] = *(a1 + 32);
  v14[5] = v12;
  dispatch_group_notify(v10, v11, v14);

  v13 = *MEMORY[0x277D85DE8];
}

void __59__HMMTRAccessoryServer_fetchPairingsWithCompletionHandler___block_invoke_442(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = a2;
    v4 = [HMMTRAccessoryPairingEndContext hmmtrContextWithStep:10 error:v3];
    (*(*(a1 + 32) + 16))();
  }
}

void __59__HMMTRAccessoryServer_fetchPairingsWithCompletionHandler___block_invoke_437(id *a1)
{
  v35 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = a1[4];
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    *buf = 138543362;
    v34 = v5;
    _os_log_impl(&dword_22AEAE000, v4, OS_LOG_TYPE_INFO, "%{public}@Fetching pairings", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __59__HMMTRAccessoryServer_fetchPairingsWithCompletionHandler___block_invoke_438;
  v30[3] = &unk_2786EF968;
  v32 = a1[6];
  v31 = a1[5];
  v6 = MEMORY[0x2318887D0](v30);
  v7 = [a1[4] deviceController];
  if (v7)
  {
    v8 = a1[4];
    v9 = [v8 nodeID];
    v10 = [v8 mtrBaseDeviceWithNodeID:v9 controller:v7];

    if (v10)
    {
      v11 = [a1[4] clientQueue];
      v12 = [a1[4] browser];
      v13 = [v12 vendorMetadataStore];
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __59__HMMTRAccessoryServer_fetchPairingsWithCompletionHandler___block_invoke_2;
      v26[3] = &unk_2786EF968;
      v26[4] = a1[4];
      v27 = v6;
      [v10 fetchPairingsWithCallbackQueue:v11 vendorMetadataStore:v13 completionHandler:v26];
    }

    else
    {
      v19 = objc_autoreleasePoolPush();
      v20 = a1[4];
      v21 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v22 = HMFGetLogIdentifier();
        *buf = 138543362;
        v34 = v22;
        _os_log_impl(&dword_22AEAE000, v21, OS_LOG_TYPE_ERROR, "%{public}@Could not fetch pairings because of no device", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v19);
      v23 = [MEMORY[0x277CCA9B8] hapErrorWithCode:1];
      v24 = [HMMTRAccessoryPairingEndContext mtrContextWithStep:10 error:v23];
      (v6)[2](v6, 0, v23, v24);

      v10 = 0;
    }
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    v15 = a1[4];
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      *buf = 138543362;
      v34 = v17;
      _os_log_impl(&dword_22AEAE000, v16, OS_LOG_TYPE_ERROR, "%{public}@No Matter device controller available to fetch pairings", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v14);
    v18 = [a1[4] clientQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __59__HMMTRAccessoryServer_fetchPairingsWithCompletionHandler___block_invoke_440;
    block[3] = &unk_2786EF878;
    v29 = v6;
    dispatch_async(v18, block);

    v10 = v29;
  }

  v25 = *MEMORY[0x277D85DE8];
}

void __59__HMMTRAccessoryServer_fetchPairingsWithCompletionHandler___block_invoke_441(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 40);
    v8 = 138543618;
    v9 = v5;
    v10 = 2048;
    v11 = v6;
    _os_log_impl(&dword_22AEAE000, v4, OS_LOG_TYPE_INFO, "%{public}@Characteristics Operation Queue: fetch pairings job(%lu) complete.", &v8, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v7 = *MEMORY[0x277D85DE8];
}

void __59__HMMTRAccessoryServer_fetchPairingsWithCompletionHandler___block_invoke_438(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  dispatch_group_leave(v2);
}

void __59__HMMTRAccessoryServer_fetchPairingsWithCompletionHandler___block_invoke_440(uint64_t a1)
{
  v3 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CD5120] code:6 userInfo:0];
  v2 = [HMMTRAccessoryPairingEndContext hmmtrContextWithStep:10 error:v3];
  (*(*(a1 + 32) + 16))();
}

void __59__HMMTRAccessoryServer_fetchPairingsWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v23 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = objc_autoreleasePoolPush();
  v11 = *(a1 + 32);
  v12 = HMFGetOSLogHandle();
  v13 = v12;
  if (v7)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      v19 = 138543618;
      v20 = v14;
      v21 = 2112;
      v22 = v7;
      v15 = "%{public}@Successfully retrieved pairings: %@";
      v16 = v13;
      v17 = OS_LOG_TYPE_INFO;
LABEL_6:
      _os_log_impl(&dword_22AEAE000, v16, v17, v15, &v19, 0x16u);
    }
  }

  else if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    v14 = HMFGetLogIdentifier();
    v19 = 138543618;
    v20 = v14;
    v21 = 2112;
    v22 = v8;
    v15 = "%{public}@Failed to retrieve pairings: %@";
    v16 = v13;
    v17 = OS_LOG_TYPE_ERROR;
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v10);
  (*(*(a1 + 40) + 16))(*(a1 + 40), v7, v8, v9);

  v18 = *MEMORY[0x277D85DE8];
}

- (void)updateAccessoryName:(id)a3
{
  v51 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543618;
    v48 = v8;
    v49 = 2112;
    v50 = v4;
    _os_log_impl(&dword_22AEAE000, v7, OS_LOG_TYPE_INFO, "%{public}@Updating accessory name to: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  [(HAPAccessoryServer *)v6 setName:v4];
  v9 = [(HMMTRAccessoryServer *)v6 primaryAccessory];
  [v9 setName:v4];

  v36 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v10 = [(HMMTRAccessoryServer *)v6 primaryAccessory];
  v11 = [v10 services];

  v12 = [v11 countByEnumeratingWithState:&v41 objects:v46 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v42;
    while (2)
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v42 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v41 + 1) + 8 * i);
        v17 = [v16 type];
        v18 = [v17 isEqualToString:@"0000003E-0000-1000-8000-0026BB765291"];

        if (v18)
        {
          v39 = 0u;
          v40 = 0u;
          v37 = 0u;
          v38 = 0u;
          v19 = [v16 characteristics];
          v20 = [v19 countByEnumeratingWithState:&v37 objects:v45 count:16];
          if (v20)
          {
            v21 = v20;
            v22 = *v38;
            v35 = v4;
            while (2)
            {
              for (j = 0; j != v21; ++j)
              {
                if (*v38 != v22)
                {
                  objc_enumerationMutation(v19);
                }

                v24 = *(*(&v37 + 1) + 8 * j);
                v25 = [v24 type];
                v26 = [v25 isEqualToString:@"00000023-0000-1000-8000-0026BB765291"];

                if (v26)
                {
                  v27 = [v24 copy];
                  v28 = [v24 service];
                  [v27 setService:v28];

                  v4 = v35;
                  [v27 setValue:v35];
                  v29 = objc_autoreleasePoolPush();
                  v30 = v6;
                  v31 = HMFGetOSLogHandle();
                  if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
                  {
                    v32 = HMFGetLogIdentifier();
                    *buf = 138543618;
                    v48 = v32;
                    v49 = 2112;
                    v50 = v27;
                    _os_log_impl(&dword_22AEAE000, v31, OS_LOG_TYPE_INFO, "%{public}@Notification: Updated characteristic: %@", buf, 0x16u);
                  }

                  objc_autoreleasePoolPop(v29);
                  [v36 addObject:v27];

                  goto LABEL_24;
                }
              }

              v21 = [v19 countByEnumeratingWithState:&v37 objects:v45 count:16];
              v4 = v35;
              if (v21)
              {
                continue;
              }

              break;
            }
          }

LABEL_24:

          goto LABEL_25;
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v41 objects:v46 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }
  }

LABEL_25:

  v33 = [(HAPAccessoryServer *)v6 delegate];
  [v33 accessoryServer:v6 didUpdateValuesForCharacteristics:v36 stateNumber:0 broadcast:0];

  v34 = *MEMORY[0x277D85DE8];
}

- (void)updateFabricLabel:(id)a3 completionHandler:(id)a4
{
  v39 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ([(HMMTRAccessoryServer *)self operationDisabled])
  {
    v8 = objc_autoreleasePoolPush();
    v9 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543362;
      v36 = v11;
      _os_log_impl(&dword_22AEAE000, v10, OS_LOG_TYPE_INFO, "%{public}@Accessory server operations disabled. Aborting fabric label update.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
    v12 = [(HAPAccessoryServer *)v9 clientQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __60__HMMTRAccessoryServer_updateFabricLabel_completionHandler___block_invoke;
    block[3] = &unk_2786EF878;
    v34 = v7;
    dispatch_async(v12, block);

    v13 = v34;
  }

  else
  {
    v14 = random();
    v15 = [MEMORY[0x277CBEB18] arrayWithCapacity:1];
    v16 = *MEMORY[0x277CFECD8];
    os_unfair_lock_lock_with_options();
    v17 = [(HMMTRAccessoryServer *)self lastPendingFabricLabel];
    v18 = [v17 firstObject];
    v19 = [v18 isEqual:v6];

    if ((v19 & 1) == 0)
    {
      [v15 addObject:v6];
      [(HMMTRAccessoryServer *)self setLastPendingFabricLabel:v15];
    }

    os_unfair_lock_unlock((self + v16));
    v20 = objc_autoreleasePoolPush();
    v21 = self;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = HMFGetLogIdentifier();
      *buf = 138543618;
      v36 = v23;
      v37 = 2048;
      v38 = v14;
      _os_log_impl(&dword_22AEAE000, v22, OS_LOG_TYPE_INFO, "%{public}@Characteristics Operation Queue: update fabric label job(%lu) queued.", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v20);
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __60__HMMTRAccessoryServer_updateFabricLabel_completionHandler___block_invoke_430;
    v27[3] = &unk_2786EF940;
    v27[4] = v21;
    v31 = v14;
    v28 = v6;
    v32 = v19;
    v29 = v15;
    v30 = v7;
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __60__HMMTRAccessoryServer_updateFabricLabel_completionHandler___block_invoke_435;
    v25[3] = &unk_2786F0BC0;
    v26 = v30;
    v13 = v15;
    [(HMMTRAccessoryServer *)v21 queueAccessoryOperation:v27 highPriority:0 completion:v25];
  }

  v24 = *MEMORY[0x277D85DE8];
}

void __60__HMMTRAccessoryServer_updateFabricLabel_completionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] hapErrorWithCode:1];
  (*(v1 + 16))(v1, v2);
}

void __60__HMMTRAccessoryServer_updateFabricLabel_completionHandler___block_invoke_430(uint64_t a1)
{
  v29 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 64);
    *buf = 138543618;
    v26 = v5;
    v27 = 2048;
    v28 = v6;
    _os_log_impl(&dword_22AEAE000, v4, OS_LOG_TYPE_INFO, "%{public}@Characteristics Operation Queue: update fabric label job(%lu) started.", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v7 = dispatch_group_create();
  dispatch_group_enter(v7);
  v8 = [*(a1 + 32) clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__HMMTRAccessoryServer_updateFabricLabel_completionHandler___block_invoke_431;
  block[3] = &unk_2786EF8F0;
  v9 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v21 = v9;
  v10 = *(a1 + 56);
  v22 = v7;
  v23 = v10;
  v24 = *(a1 + 72);
  v11 = v7;
  dispatch_async(v8, block);

  v12 = [*(a1 + 32) clientQueue];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __60__HMMTRAccessoryServer_updateFabricLabel_completionHandler___block_invoke_434;
  v16[3] = &unk_2786EF918;
  v13 = *(a1 + 48);
  v14 = *(a1 + 32);
  v17 = v13;
  v18 = v14;
  v19 = *(a1 + 64);
  dispatch_group_notify(v11, v12, v16);

  v15 = *MEMORY[0x277D85DE8];
}

uint64_t __60__HMMTRAccessoryServer_updateFabricLabel_completionHandler___block_invoke_435(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

void __60__HMMTRAccessoryServer_updateFabricLabel_completionHandler___block_invoke_431(uint64_t a1)
{
  v42 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 40);
    *buf = 138543618;
    v39 = v5;
    v40 = 2112;
    v41 = v6;
    _os_log_impl(&dword_22AEAE000, v4, OS_LOG_TYPE_INFO, "%{public}@Request to update fabric label to %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __60__HMMTRAccessoryServer_updateFabricLabel_completionHandler___block_invoke_432;
  v35[3] = &unk_2786EF8A0;
  v37 = *(a1 + 56);
  v36 = *(a1 + 48);
  v7 = MEMORY[0x2318887D0](v35);
  if (*(a1 + 64) == 1)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = *(a1 + 32);
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543362;
      v39 = v11;
      _os_log_impl(&dword_22AEAE000, v10, OS_LOG_TYPE_INFO, "%{public}@Update fabric label job is redundant - do nothing.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
    v12 = [*(a1 + 32) lastFabricLabelUpdateError];
    (v7)[2](v7, v12);
  }

  else
  {
    v12 = [*(a1 + 32) deviceController];
    if (v12)
    {
      v13 = *(a1 + 32);
      v14 = [v13 nodeID];
      v15 = [v13 mtrBaseDeviceWithNodeID:v14 controller:v12];

      v16 = [MEMORY[0x277CCA9B8] hapErrorWithCode:1];
      [*(a1 + 32) setLastFabricLabelUpdateError:v16];
      if (v15)
      {
        v17 = *(a1 + 40);
        v18 = [*(a1 + 32) clientQueue];
        v31[0] = MEMORY[0x277D85DD0];
        v31[1] = 3221225472;
        v31[2] = __60__HMMTRAccessoryServer_updateFabricLabel_completionHandler___block_invoke_433;
        v31[3] = &unk_2786EF8C8;
        v19 = *(a1 + 40);
        v31[4] = *(a1 + 32);
        v32 = v19;
        v34 = v7;
        v33 = v16;
        [v15 updateFabricLabel:v17 callbackQueue:v18 completionHandler:v31];
      }

      else
      {
        v25 = objc_autoreleasePoolPush();
        v26 = *(a1 + 32);
        v27 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          v28 = HMFGetLogIdentifier();
          v29 = *(a1 + 40);
          *buf = 138543618;
          v39 = v28;
          v40 = 2112;
          v41 = v29;
          _os_log_impl(&dword_22AEAE000, v27, OS_LOG_TYPE_ERROR, "%{public}@Could not update fabric label to %@ because of no device", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v25);
        (v7)[2](v7, v16);
      }
    }

    else
    {
      v20 = objc_autoreleasePoolPush();
      v21 = *(a1 + 32);
      v22 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v23 = HMFGetLogIdentifier();
        *buf = 138543362;
        v39 = v23;
        _os_log_impl(&dword_22AEAE000, v22, OS_LOG_TYPE_ERROR, "%{public}@No Matter device controller to update fabric label job", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v20);
      v24 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CD5120] code:6 userInfo:0];
      [*(a1 + 32) setLastFabricLabelUpdateError:v24];

      v15 = [*(a1 + 32) lastFabricLabelUpdateError];
      (v7)[2](v7, v15);
    }
  }

  v30 = *MEMORY[0x277D85DE8];
}

void __60__HMMTRAccessoryServer_updateFabricLabel_completionHandler___block_invoke_434(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) removeAllObjects];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 40);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 48);
    v8 = 138543618;
    v9 = v5;
    v10 = 2048;
    v11 = v6;
    _os_log_impl(&dword_22AEAE000, v4, OS_LOG_TYPE_INFO, "%{public}@Characteristics Operation Queue: update fabric label job(%lu) complete.", &v8, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v7 = *MEMORY[0x277D85DE8];
}

void __60__HMMTRAccessoryServer_updateFabricLabel_completionHandler___block_invoke_432(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  dispatch_group_leave(v2);
}

void __60__HMMTRAccessoryServer_updateFabricLabel_completionHandler___block_invoke_433(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
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
      v18 = 138543874;
      v19 = v8;
      v20 = 2112;
      v21 = v9;
      v22 = 2112;
      v23 = v3;
      v10 = "%{public}@Failed to update fabric label to %@ with error %@";
      v11 = v7;
      v12 = OS_LOG_TYPE_ERROR;
      v13 = 32;
LABEL_6:
      _os_log_impl(&dword_22AEAE000, v11, v12, v10, &v18, v13);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v14 = *(a1 + 40);
    v18 = 138543618;
    v19 = v8;
    v20 = 2112;
    v21 = v14;
    v10 = "%{public}@Successfully updated fabric label %@";
    v11 = v7;
    v12 = OS_LOG_TYPE_INFO;
    v13 = 22;
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v4);
  (*(*(a1 + 56) + 16))(*(a1 + 56), *(a1 + 48), v15, v16);

  v17 = *MEMORY[0x277D85DE8];
}

- (void)removePairing:(id)a3 completionHandler:(id)a4
{
  v32 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ([(HMMTRAccessoryServer *)self operationDisabled])
  {
    v8 = objc_autoreleasePoolPush();
    v9 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543362;
      v29 = v11;
      _os_log_impl(&dword_22AEAE000, v10, OS_LOG_TYPE_INFO, "%{public}@Accessory server operations disabled. Aborting remove-pairing.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
    v12 = [(HAPAccessoryServer *)v9 clientQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __56__HMMTRAccessoryServer_removePairing_completionHandler___block_invoke;
    block[3] = &unk_2786EF878;
    v27 = v7;
    dispatch_async(v12, block);

    v13 = v27;
  }

  else
  {
    v14 = random();
    v15 = objc_autoreleasePoolPush();
    v16 = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      *buf = 138543618;
      v29 = v18;
      v30 = 2048;
      v31 = v14;
      _os_log_impl(&dword_22AEAE000, v17, OS_LOG_TYPE_INFO, "%{public}@Characteristics Operation Queue: remove pairing job(%lu) queued.", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v15);
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __56__HMMTRAccessoryServer_removePairing_completionHandler___block_invoke_424;
    v22[3] = &unk_2786EF850;
    v22[4] = v16;
    v25 = v14;
    v23 = v6;
    v24 = v7;
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __56__HMMTRAccessoryServer_removePairing_completionHandler___block_invoke_429;
    v20[3] = &unk_2786F0BC0;
    v21 = v24;
    [(HMMTRAccessoryServer *)v16 queueAccessoryOperation:v22 highPriority:0 completion:v20];

    v13 = v23;
  }

  v19 = *MEMORY[0x277D85DE8];
}

void __56__HMMTRAccessoryServer_removePairing_completionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] hapErrorWithCode:1];
  (*(v1 + 16))(v1, v2);
}

void __56__HMMTRAccessoryServer_removePairing_completionHandler___block_invoke_424(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 56);
    *buf = 138543618;
    v21 = v5;
    v22 = 2048;
    v23 = v6;
    _os_log_impl(&dword_22AEAE000, v4, OS_LOG_TYPE_INFO, "%{public}@Characteristics Operation Queue: remove pairing job(%lu) started.", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v7 = dispatch_group_create();
  dispatch_group_enter(v7);
  v8 = [*(a1 + 32) clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__HMMTRAccessoryServer_removePairing_completionHandler___block_invoke_425;
  block[3] = &unk_2786EFA60;
  v9 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v17 = v9;
  v10 = *(a1 + 48);
  v18 = v7;
  v19 = v10;
  v11 = v7;
  dispatch_async(v8, block);

  v12 = [*(a1 + 32) clientQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __56__HMMTRAccessoryServer_removePairing_completionHandler___block_invoke_428;
  v15[3] = &unk_2786EF620;
  v13 = *(a1 + 56);
  v15[4] = *(a1 + 32);
  v15[5] = v13;
  dispatch_group_notify(v11, v12, v15);

  v14 = *MEMORY[0x277D85DE8];
}

uint64_t __56__HMMTRAccessoryServer_removePairing_completionHandler___block_invoke_429(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

void __56__HMMTRAccessoryServer_removePairing_completionHandler___block_invoke_425(uint64_t a1)
{
  v41 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 40);
    *buf = 138543618;
    v38 = v5;
    v39 = 2112;
    v40 = v6;
    _os_log_impl(&dword_22AEAE000, v4, OS_LOG_TYPE_INFO, "%{public}@Removing pairing: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __56__HMMTRAccessoryServer_removePairing_completionHandler___block_invoke_426;
  v34[3] = &unk_2786EF8A0;
  v36 = *(a1 + 56);
  v35 = *(a1 + 48);
  v7 = MEMORY[0x2318887D0](v34);
  v8 = [*(a1 + 32) deviceController];
  if (v8)
  {
    v9 = *(a1 + 32);
    v10 = [v9 nodeID];
    v11 = [v9 mtrBaseDeviceWithNodeID:v10 controller:v8];

    if (v11)
    {
      v12 = *(a1 + 40);
      v13 = [*(a1 + 32) clientQueue];
      v14 = [*(a1 + 32) browser];
      v15 = [v14 vendorMetadataStore];
      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = __56__HMMTRAccessoryServer_removePairing_completionHandler___block_invoke_2;
      v29[3] = &unk_2786F0C10;
      v16 = *(a1 + 40);
      v29[4] = *(a1 + 32);
      v30 = v16;
      v31 = v7;
      [v11 removePairing:v12 callbackQueue:v13 vendorMetadataStore:v15 completionHandler:v29];
    }

    else
    {
      v22 = objc_autoreleasePoolPush();
      v23 = *(a1 + 32);
      v24 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v25 = HMFGetLogIdentifier();
        v26 = *(a1 + 40);
        *buf = 138543618;
        v38 = v25;
        v39 = 2112;
        v40 = v26;
        _os_log_impl(&dword_22AEAE000, v24, OS_LOG_TYPE_ERROR, "%{public}@Could not remove pairing %@ because of no device", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v22);
      v27 = [MEMORY[0x277CCA9B8] hapErrorWithCode:1];
      (v7)[2](v7, v27);

      v11 = 0;
    }
  }

  else
  {
    v17 = objc_autoreleasePoolPush();
    v18 = *(a1 + 32);
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543362;
      v38 = v20;
      _os_log_impl(&dword_22AEAE000, v19, OS_LOG_TYPE_ERROR, "%{public}@No Matter device controller available to remove pairing", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v17);
    v21 = [*(a1 + 32) clientQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __56__HMMTRAccessoryServer_removePairing_completionHandler___block_invoke_427;
    block[3] = &unk_2786EF878;
    v33 = v7;
    dispatch_async(v21, block);

    v11 = v33;
  }

  v28 = *MEMORY[0x277D85DE8];
}

void __56__HMMTRAccessoryServer_removePairing_completionHandler___block_invoke_428(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 40);
    v8 = 138543618;
    v9 = v5;
    v10 = 2048;
    v11 = v6;
    _os_log_impl(&dword_22AEAE000, v4, OS_LOG_TYPE_INFO, "%{public}@Characteristics Operation Queue: remove pairing job(%lu) complete.", &v8, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v7 = *MEMORY[0x277D85DE8];
}

void __56__HMMTRAccessoryServer_removePairing_completionHandler___block_invoke_426(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  dispatch_group_leave(v2);
}

void __56__HMMTRAccessoryServer_removePairing_completionHandler___block_invoke_427(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CD5120] code:6 userInfo:0];
  (*(v1 + 16))(v1, v2);
}

void __56__HMMTRAccessoryServer_removePairing_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
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
      v18 = 138543874;
      v19 = v8;
      v20 = 2112;
      v21 = v9;
      v22 = 2112;
      v23 = v3;
      v10 = "%{public}@Failed to remove CHIP pairing %@: %@";
      v11 = v7;
      v12 = OS_LOG_TYPE_ERROR;
      v13 = 32;
LABEL_6:
      _os_log_impl(&dword_22AEAE000, v11, v12, v10, &v18, v13);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v14 = *(a1 + 40);
    v18 = 138543618;
    v19 = v8;
    v20 = 2112;
    v21 = v14;
    v10 = "%{public}@Successfully removed CHIP pairing: %@";
    v11 = v7;
    v12 = OS_LOG_TYPE_INFO;
    v13 = 22;
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v4);
  (*(*(a1 + 48) + 16))(*(a1 + 48), v3, v15, v16);

  v17 = *MEMORY[0x277D85DE8];
}

- (void)readPairingWindowStatusWithCompletionHandler:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(HMMTRAccessoryServer *)self operationDisabled])
  {
    v5 = objc_autoreleasePoolPush();
    v6 = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      *buf = 138543362;
      v22 = v8;
      _os_log_impl(&dword_22AEAE000, v7, OS_LOG_TYPE_INFO, "%{public}@Accessory server operations disabled. Aborting reading pairing window status.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
    v9 = [MEMORY[0x277CCA9B8] hapErrorWithCode:1];
    v4[2](v4, 0, v9);
  }

  else
  {
    v10 = random();
    v11 = objc_autoreleasePoolPush();
    v12 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543618;
      v22 = v14;
      v23 = 2048;
      v24 = v10;
      _os_log_impl(&dword_22AEAE000, v13, OS_LOG_TYPE_INFO, "%{public}@Characteristics Operation Queue: read pairing window status job(%lu) queued.", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __69__HMMTRAccessoryServer_readPairingWindowStatusWithCompletionHandler___block_invoke;
    v18[3] = &unk_2786EFF18;
    v18[4] = v12;
    v20 = v10;
    v19 = v4;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __69__HMMTRAccessoryServer_readPairingWindowStatusWithCompletionHandler___block_invoke_423;
    v16[3] = &unk_2786F0BC0;
    v17 = v19;
    [(HMMTRAccessoryServer *)v12 queueAccessoryOperation:v18 highPriority:0 completion:v16];
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __69__HMMTRAccessoryServer_readPairingWindowStatusWithCompletionHandler___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 48);
    *buf = 138543618;
    v20 = v5;
    v21 = 2048;
    v22 = v6;
    _os_log_impl(&dword_22AEAE000, v4, OS_LOG_TYPE_INFO, "%{public}@Characteristics Operation Queue: read pairing window status job(%lu) started.", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v7 = dispatch_group_create();
  dispatch_group_enter(v7);
  v8 = [*(a1 + 32) clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__HMMTRAccessoryServer_readPairingWindowStatusWithCompletionHandler___block_invoke_416;
  block[3] = &unk_2786EF850;
  v9 = *(a1 + 40);
  v18 = *(a1 + 48);
  block[4] = *(a1 + 32);
  v16 = v7;
  v17 = v9;
  v10 = v7;
  dispatch_async(v8, block);

  v11 = [*(a1 + 32) clientQueue];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __69__HMMTRAccessoryServer_readPairingWindowStatusWithCompletionHandler___block_invoke_422;
  v14[3] = &unk_2786EF620;
  v12 = *(a1 + 48);
  v14[4] = *(a1 + 32);
  v14[5] = v12;
  dispatch_group_notify(v10, v11, v14);

  v13 = *MEMORY[0x277D85DE8];
}

uint64_t __69__HMMTRAccessoryServer_readPairingWindowStatusWithCompletionHandler___block_invoke_423(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

void __69__HMMTRAccessoryServer_readPairingWindowStatusWithCompletionHandler___block_invoke_416(uint64_t a1)
{
  v30 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) controllerWrapper];
  v3 = [v2 controller];

  if (v3)
  {
    v4 = *(a1 + 32);
    v5 = [v4 nodeID];
    v6 = [v4 mtrBaseDeviceWithNodeID:v5 controller:v3];

    if (v6)
    {
      v7 = objc_alloc(MEMORY[0x277CD51E0]);
      v8 = [*(a1 + 32) clientQueue];
      v9 = [v7 initWithDevice:v6 endpointID:&unk_283EE89B8 queue:v8];

      if (!v9)
      {
        _HMFPreconditionFailure();
      }

      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __69__HMMTRAccessoryServer_readPairingWindowStatusWithCompletionHandler___block_invoke_421;
      v23[3] = &unk_2786F0F20;
      v23[4] = *(a1 + 32);
      v25 = *(a1 + 48);
      v24 = *(a1 + 40);
      [v9 readAttributeWindowStatusWithCompletion:v23];
    }

    else
    {
      v15 = objc_autoreleasePoolPush();
      v16 = *(a1 + 32);
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = HMFGetLogIdentifier();
        v19 = [*(a1 + 32) nodeID];
        *buf = 138543618;
        v27 = v18;
        v28 = 2112;
        v29 = v19;
        _os_log_impl(&dword_22AEAE000, v17, OS_LOG_TYPE_ERROR, "%{public}@Failed get a device to read pairing window status for node %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v15);
      v20 = *(a1 + 48);
      v21 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CD5120] code:1 userInfo:0];
      (*(v20 + 16))(v20, 0, v21);

      dispatch_group_leave(*(a1 + 40));
    }
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    v11 = *(a1 + 32);
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      v14 = *(a1 + 56);
      *buf = 138543618;
      v27 = v13;
      v28 = 2048;
      v29 = v14;
      _os_log_impl(&dword_22AEAE000, v12, OS_LOG_TYPE_ERROR, "%{public}@No device controller to execute read pairing window status job(%lu)", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    dispatch_group_leave(*(a1 + 40));
  }

  v22 = *MEMORY[0x277D85DE8];
}

void __69__HMMTRAccessoryServer_readPairingWindowStatusWithCompletionHandler___block_invoke_422(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 40);
    v8 = 138543618;
    v9 = v5;
    v10 = 2048;
    v11 = v6;
    _os_log_impl(&dword_22AEAE000, v4, OS_LOG_TYPE_INFO, "%{public}@Characteristics Operation Queue: read pairing window status job(%lu) complete.", &v8, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v7 = *MEMORY[0x277D85DE8];
}

void __69__HMMTRAccessoryServer_readPairingWindowStatusWithCompletionHandler___block_invoke_421(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
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
      v12 = 138543618;
      v13 = v10;
      v14 = 2112;
      v15 = v6;
      _os_log_impl(&dword_22AEAE000, v9, OS_LOG_TYPE_ERROR, "%{public}@Reading AdministratorCommissioning cluster window status attribute failed: %@", &v12, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
  }

  (*(*(a1 + 48) + 16))();
  dispatch_group_leave(*(a1 + 40));

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_queueOpenPairingWindowWithPINForDuration:(double)a3 completionHandler:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = random();
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543618;
    v21 = v11;
    v22 = 2048;
    v23 = v7;
    _os_log_impl(&dword_22AEAE000, v10, OS_LOG_TYPE_INFO, "%{public}@Characteristics Operation Queue: open pairing window with PIN job(%lu) queued.", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __84__HMMTRAccessoryServer__queueOpenPairingWindowWithPINForDuration_completionHandler___block_invoke;
  v16[3] = &unk_2786EF7D8;
  v16[4] = v9;
  v18 = v7;
  v19 = a3;
  v17 = v6;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __84__HMMTRAccessoryServer__queueOpenPairingWindowWithPINForDuration_completionHandler___block_invoke_415;
  v14[3] = &unk_2786F0BC0;
  v15 = v17;
  v12 = v17;
  [(HMMTRAccessoryServer *)v9 queueAccessoryOperation:v16 highPriority:1 completion:v14];

  v13 = *MEMORY[0x277D85DE8];
}

void __84__HMMTRAccessoryServer__queueOpenPairingWindowWithPINForDuration_completionHandler___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 48);
    *buf = 138543618;
    v20 = v5;
    v21 = 2048;
    v22 = v6;
    _os_log_impl(&dword_22AEAE000, v4, OS_LOG_TYPE_INFO, "%{public}@Characteristics Operation Queue: open pairing window with PIN job(%lu) started.", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  [*(a1 + 32) _startCurrentMetricTimeWithName:@"hmmtrAccessoryMetricNamePairingWindowWithPasscode"];
  [*(a1 + 32) _notifyDelegateOfPairingProgress:24];
  v7 = dispatch_group_create();
  dispatch_group_enter(v7);
  v8 = [*(a1 + 32) clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __84__HMMTRAccessoryServer__queueOpenPairingWindowWithPINForDuration_completionHandler___block_invoke_410;
  block[3] = &unk_2786EF850;
  v9 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v18 = *(a1 + 56);
  v16 = v7;
  v17 = v9;
  v10 = v7;
  dispatch_async(v8, block);

  v11 = [*(a1 + 32) clientQueue];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __84__HMMTRAccessoryServer__queueOpenPairingWindowWithPINForDuration_completionHandler___block_invoke_414;
  v14[3] = &unk_2786EF620;
  v12 = *(a1 + 48);
  v14[4] = *(a1 + 32);
  v14[5] = v12;
  dispatch_group_notify(v10, v11, v14);

  v13 = *MEMORY[0x277D85DE8];
}

uint64_t __84__HMMTRAccessoryServer__queueOpenPairingWindowWithPINForDuration_completionHandler___block_invoke_415(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

void __84__HMMTRAccessoryServer__queueOpenPairingWindowWithPINForDuration_completionHandler___block_invoke_410(uint64_t a1)
{
  v35 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 56)];
    *buf = 138543618;
    v32 = v5;
    v33 = 2112;
    v34 = v6;
    _os_log_impl(&dword_22AEAE000, v4, OS_LOG_TYPE_INFO, "%{public}@Request to open the pairing window with PIN for a duration of %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v7 = [MEMORY[0x277CD5528] generateRandomSetupPasscode];
  v8 = +[HMMTRUtilities randomDiscriminator];
  v9 = MEMORY[0x277CD5310];
  v10 = [*(a1 + 32) nodeID];
  v11 = [v10 unsignedLongLongValue];
  v12 = [*(a1 + 32) deviceController];
  v13 = [v9 deviceWithNodeID:v11 deviceController:v12];

  v14 = objc_alloc(MEMORY[0x277CD5238]);
  v15 = [*(a1 + 32) clientQueue];
  v16 = [v14 initWithDevice:v13 endpointID:&unk_283EE89B8 queue:v15];

  if (v16)
  {
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __84__HMMTRAccessoryServer__queueOpenPairingWindowWithPINForDuration_completionHandler___block_invoke_411;
    v24[3] = &unk_2786EF828;
    v24[4] = *(a1 + 32);
    v25 = v13;
    v26 = v7;
    v29 = v8;
    v30 = *(a1 + 56);
    v28 = *(a1 + 48);
    v27 = *(a1 + 40);
    [v16 revokeCommissioningWithExpectedValues:MEMORY[0x277CBEBF8] expectedValueInterval:&unk_283EE89B8 completion:v24];
  }

  else
  {
    v17 = objc_autoreleasePoolPush();
    v18 = *(a1 + 32);
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543362;
      v32 = v20;
      _os_log_impl(&dword_22AEAE000, v19, OS_LOG_TYPE_ERROR, "%{public}@No Matter device available to open pairing window", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v17);
    v21 = *(a1 + 48);
    v22 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CD5120] code:6 userInfo:0];
    (*(v21 + 16))(v21, 0, v22);

    dispatch_group_leave(*(a1 + 40));
  }

  v23 = *MEMORY[0x277D85DE8];
}

void __84__HMMTRAccessoryServer__queueOpenPairingWindowWithPINForDuration_completionHandler___block_invoke_414(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 40);
    v8 = 138543618;
    v9 = v5;
    v10 = 2048;
    v11 = v6;
    _os_log_impl(&dword_22AEAE000, v4, OS_LOG_TYPE_INFO, "%{public}@Characteristics Operation Queue: open pairing window with PIN job(%lu) complete.", &v8, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v7 = *MEMORY[0x277D85DE8];
}

void __84__HMMTRAccessoryServer__queueOpenPairingWindowWithPINForDuration_completionHandler___block_invoke_411(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    *buf = 138543618;
    v19 = v7;
    v20 = 2112;
    v21 = v3;
    _os_log_impl(&dword_22AEAE000, v6, OS_LOG_TYPE_INFO, "%{public}@Revoked commissioning with error (expected): %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a1 + 72)];
  v11 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 80)];
  v12 = [*(a1 + 32) clientQueue];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __84__HMMTRAccessoryServer__queueOpenPairingWindowWithPINForDuration_completionHandler___block_invoke_412;
  v14[3] = &unk_2786EF800;
  v14[4] = *(a1 + 32);
  v17 = *(a1 + 80);
  v16 = *(a1 + 64);
  v15 = *(a1 + 56);
  [v8 openCommissioningWindowWithSetupPasscode:v9 discriminator:v10 duration:v11 queue:v12 completion:v14];

  v13 = *MEMORY[0x277D85DE8];
}

void __84__HMMTRAccessoryServer__queueOpenPairingWindowWithPINForDuration_completionHandler___block_invoke_412(uint64_t a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 32);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543362;
      v25 = v10;
      _os_log_impl(&dword_22AEAE000, v9, OS_LOG_TYPE_INFO, "%{public}@Successfully opened pairing window", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
    [*(a1 + 32) _notifyDelegateOfPairingProgress:25];
    v11 = [*(a1 + 32) vendorID];
    [v5 setVendorID:v11];

    v12 = [*(a1 + 32) productID];
    [v5 setProductID:v12];

    v23 = 0;
    v13 = [v5 qrCodeString:&v23];
    v14 = v23;
    v15 = objc_autoreleasePoolPush();
    v16 = *(a1 + 32);
    v17 = HMFGetOSLogHandle();
    v18 = v17;
    if (v13)
    {
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v19 = HMFGetLogIdentifier();
        *buf = 138543618;
        v25 = v19;
        v26 = 2112;
        v27 = v13;
        _os_log_impl(&dword_22AEAE000, v18, OS_LOG_TYPE_INFO, "%{public}@Returning setup payload = %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v15);
      v20 = [*(a1 + 32) browser];
      [v20 registerPairingWindowWithSetupPayload:v13 duration:*(a1 + 32) accessoryServer:*(a1 + 56)];
    }

    else
    {
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v21 = HMFGetLogIdentifier();
        *buf = 138543618;
        v25 = v21;
        v26 = 2112;
        v27 = v14;
        _os_log_impl(&dword_22AEAE000, v18, OS_LOG_TYPE_ERROR, "%{public}@QR code retrieval from setup payload failed: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v15);
      v14 = v14;

      v13 = 0;
      v6 = v14;
    }
  }

  else
  {
    [*(a1 + 32) _notifyDelegateOfPairingProgress:26 error:v6];
    v13 = 0;
    v14 = 0;
  }

  (*(*(a1 + 48) + 16))();
  dispatch_group_leave(*(a1 + 40));

  v22 = *MEMORY[0x277D85DE8];
}

- (void)_openPairingWindowWithPINForDuration:(double)a3 completionHandler:(id)a4
{
  v31 = *MEMORY[0x277D85DE8];
  v6 = a4;
  if ([(HMMTRAccessoryServer *)self operationDisabled])
  {
    v7 = objc_autoreleasePoolPush();
    v8 = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543362;
      v30 = v10;
      _os_log_impl(&dword_22AEAE000, v9, OS_LOG_TYPE_INFO, "%{public}@Accessory server operations disabled. Aborting open pairing window.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
    v11 = [MEMORY[0x277CCA9B8] hapErrorWithCode:1];
    v6[2](v6, 0, v11);
  }

  else
  {
    v12 = [(HMMTRAccessoryServer *)self browser];
    if (v12)
    {
      v11 = v12;
      if (isFeatureMatteriPhoneOnlyPairingControlForThreadEnabled())
      {
        v13 = objc_autoreleasePoolPush();
        v14 = self;
        v15 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          v16 = HMFGetLogIdentifier();
          *buf = 138543362;
          v30 = v16;
          _os_log_impl(&dword_22AEAE000, v15, OS_LOG_TYPE_INFO, "%{public}@Aborting all thread connection requests due to external pairing request", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v13);
        v17 = [MEMORY[0x277CCA9B8] hmmtrErrorWithCode:6];
        [v11 abortAndSuspendAllOperationsWithReason:v17];

        [v11 enableUnrestrictedOperationsForAccessoryServer:v14];
        v18 = [v11 threadRadioManager];
        if ([(HMMTRAccessoryServer *)v14 knownToSystemCommissioner]&& v18)
        {
          v19 = [(HMMTRAccessoryServer *)v14 fabricUUID];
          v26[0] = MEMORY[0x277D85DD0];
          v26[1] = 3221225472;
          v26[2] = __79__HMMTRAccessoryServer__openPairingWindowWithPINForDuration_completionHandler___block_invoke;
          v26[3] = &unk_2786EFF18;
          v26[4] = v14;
          v28 = a3;
          v27 = v6;
          [v18 startThreadRadioForSystemCommissionerFabricUUID:v19 completion:v26];
        }

        else
        {
          [(HMMTRAccessoryServer *)v14 _queueOpenPairingWindowWithPINForDuration:v6 completionHandler:a3];
        }
      }

      else
      {
        [(HMMTRAccessoryServer *)self _queueOpenPairingWindowWithPINForDuration:v6 completionHandler:a3];
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
        v30 = v23;
        _os_log_impl(&dword_22AEAE000, v22, OS_LOG_TYPE_INFO, "%{public}@Browser is nil", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v20);
      v24 = [MEMORY[0x277CCA9B8] hapErrorWithCode:1];
      v6[2](v6, 0, v24);

      v11 = 0;
    }
  }

  v25 = *MEMORY[0x277D85DE8];
}

void __79__HMMTRAccessoryServer__openPairingWindowWithPINForDuration_completionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __79__HMMTRAccessoryServer__openPairingWindowWithPINForDuration_completionHandler___block_invoke_2;
  v2[3] = &unk_2786EFF18;
  v2[4] = v1;
  v4 = *(a1 + 48);
  v3 = *(a1 + 40);
  [v1 dispatchBlock:v2];
}

- (void)openPairingWindowWithPINForDuration:(double)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = [(HAPAccessoryServer *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __78__HMMTRAccessoryServer_openPairingWindowWithPINForDuration_completionHandler___block_invoke;
  block[3] = &unk_2786EFF18;
  v11 = a3;
  block[4] = self;
  v10 = v6;
  v8 = v6;
  dispatch_async(v7, block);
}

- (void)_openPairingWindowForDuration:(double)a3 completionHandler:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = a4;
  if ([(HMMTRAccessoryServer *)self operationDisabled])
  {
    v7 = objc_autoreleasePoolPush();
    v8 = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543362;
      v25 = v10;
      _os_log_impl(&dword_22AEAE000, v9, OS_LOG_TYPE_INFO, "%{public}@Accessory server operations disabled. Aborting open pairing window.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
    v11 = [MEMORY[0x277CCA9B8] hapErrorWithCode:1];
    v6[2](v6, v11);
  }

  else
  {
    v12 = random();
    v13 = objc_autoreleasePoolPush();
    v14 = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      *buf = 138543618;
      v25 = v16;
      v26 = 2048;
      v27 = v12;
      _os_log_impl(&dword_22AEAE000, v15, OS_LOG_TYPE_INFO, "%{public}@Characteristics Operation Queue: open pairing window job(%lu) queued.", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __72__HMMTRAccessoryServer__openPairingWindowForDuration_completionHandler___block_invoke;
    v20[3] = &unk_2786EF7D8;
    v20[4] = v14;
    v22 = v12;
    v23 = a3;
    v21 = v6;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __72__HMMTRAccessoryServer__openPairingWindowForDuration_completionHandler___block_invoke_409;
    v18[3] = &unk_2786F0BC0;
    v19 = v21;
    [(HMMTRAccessoryServer *)v14 queueAccessoryOperation:v20 highPriority:1 completion:v18];
  }

  v17 = *MEMORY[0x277D85DE8];
}

void __72__HMMTRAccessoryServer__openPairingWindowForDuration_completionHandler___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 48);
    *buf = 138543618;
    v20 = v5;
    v21 = 2048;
    v22 = v6;
    _os_log_impl(&dword_22AEAE000, v4, OS_LOG_TYPE_INFO, "%{public}@Characteristics Operation Queue: open pairing window job(%lu) started.", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  [*(a1 + 32) _notifyDelegateOfPairingProgress:21];
  [*(a1 + 32) _startCurrentMetricTimeWithName:@"hmmtrAccessoryMetricNamePairingWindow"];
  v7 = dispatch_group_create();
  dispatch_group_enter(v7);
  v8 = [*(a1 + 32) clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __72__HMMTRAccessoryServer__openPairingWindowForDuration_completionHandler___block_invoke_401;
  block[3] = &unk_2786EF850;
  v9 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v18 = *(a1 + 56);
  v16 = v7;
  v17 = v9;
  v10 = v7;
  dispatch_async(v8, block);

  v11 = [*(a1 + 32) clientQueue];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __72__HMMTRAccessoryServer__openPairingWindowForDuration_completionHandler___block_invoke_408;
  v14[3] = &unk_2786EF620;
  v12 = *(a1 + 48);
  v14[4] = *(a1 + 32);
  v14[5] = v12;
  dispatch_group_notify(v10, v11, v14);

  v13 = *MEMORY[0x277D85DE8];
}

uint64_t __72__HMMTRAccessoryServer__openPairingWindowForDuration_completionHandler___block_invoke_409(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

void __72__HMMTRAccessoryServer__openPairingWindowForDuration_completionHandler___block_invoke_401(uint64_t a1)
{
  v31 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 56)];
    *buf = 138543618;
    v28 = v5;
    v29 = 2112;
    v30 = v6;
    _os_log_impl(&dword_22AEAE000, v4, OS_LOG_TYPE_INFO, "%{public}@Request to open the pairing window for a duration of %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v7 = MEMORY[0x277CD5310];
  v8 = [*(a1 + 32) nodeID];
  v9 = [v8 unsignedLongLongValue];
  v10 = [*(a1 + 32) deviceController];
  v11 = [v7 deviceWithNodeID:v9 deviceController:v10];

  v12 = objc_alloc(MEMORY[0x277CD5238]);
  v13 = [*(a1 + 32) clientQueue];
  v14 = [v12 initWithDevice:v11 endpoint:0 queue:v13];

  v15 = objc_alloc_init(MEMORY[0x277CD51B8]);
  v16 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 56)];
  [v15 setCommissioningTimeout:v16];

  [v15 setTimedInvokeTimeoutMs:&unk_283EE8BB0];
  if (v14)
  {
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __72__HMMTRAccessoryServer__openPairingWindowForDuration_completionHandler___block_invoke_407;
    v24[3] = &unk_2786F0C10;
    v24[4] = *(a1 + 32);
    v26 = *(a1 + 48);
    v25 = *(a1 + 40);
    [v14 openBasicCommissioningWindowWithParams:v15 expectedValues:0 expectedValueInterval:0 completionHandler:v24];
  }

  else
  {
    v17 = objc_autoreleasePoolPush();
    v18 = *(a1 + 32);
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543362;
      v28 = v20;
      _os_log_impl(&dword_22AEAE000, v19, OS_LOG_TYPE_ERROR, "%{public}@No Matter device available to open pairing window", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v17);
    v21 = *(a1 + 48);
    v22 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CD5120] code:6 userInfo:0];
    (*(v21 + 16))(v21, v22);

    dispatch_group_leave(*(a1 + 40));
  }

  v23 = *MEMORY[0x277D85DE8];
}

void __72__HMMTRAccessoryServer__openPairingWindowForDuration_completionHandler___block_invoke_408(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 40);
    v8 = 138543618;
    v9 = v5;
    v10 = 2048;
    v11 = v6;
    _os_log_impl(&dword_22AEAE000, v4, OS_LOG_TYPE_INFO, "%{public}@Characteristics Operation Queue: open pairing window job(%lu) complete.", &v8, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v7 = *MEMORY[0x277D85DE8];
}

void __72__HMMTRAccessoryServer__openPairingWindowForDuration_completionHandler___block_invoke_407(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    [*(a1 + 32) _notifyDelegateOfPairingProgress:23 error:v3];
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
      _os_log_impl(&dword_22AEAE000, v6, OS_LOG_TYPE_INFO, "%{public}@Successfully opened pairing window", &v9, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    [*(a1 + 32) _notifyDelegateOfPairingProgress:22];
  }

  (*(*(a1 + 48) + 16))();
  dispatch_group_leave(*(a1 + 40));

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_metricCollectionWithError:(id)a3 description:(id)a4 progressState:(int64_t)a5
{
  v16 = a3;
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:a5];
  activity = self->_activity;
  HMMLogTagActivityWithErrorAndField();

  v9 = [v16 userInfo];
  v10 = v9;
  if (v9)
  {
    v11 = [v9 objectForKey:*MEMORY[0x277CCA7E8]];
  }

  else
  {
    v11 = 0;
  }

  v12 = [v16 domain];
  [(HAPAccessoryServer *)self setPairingMetricWithKey:@"hmmtrAccessoryPairingEventErrorDomainKey" value:v12];

  v13 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v16, "code")}];
  [(HAPAccessoryServer *)self setPairingMetricWithKey:@"hmmtrAccessoryPairingEventErrorCodeKey" value:v13];

  if (v11)
  {
    v14 = [v11 domain];
    [(HAPAccessoryServer *)self setPairingMetricWithKey:@"hmmtrAccessoryPairingEventUnderlyingErrorDomainKey" value:v14];

    v15 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v11, "code")}];
    [(HAPAccessoryServer *)self setPairingMetricWithKey:@"hmmtrAccessoryPairingEventUnderlyingErrorCodeKey" value:v15];
  }
}

- (void)openPairingWindowForDuration:(double)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = [(HAPAccessoryServer *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71__HMMTRAccessoryServer_openPairingWindowForDuration_completionHandler___block_invoke;
  block[3] = &unk_2786EFF18;
  v11 = a3;
  block[4] = self;
  v10 = v6;
  v8 = v6;
  dispatch_async(v7, block);
}

- (void)_updateAttributeTimer:(id)a3 report:(id)a4 timeout:(double)a5 server:(id)a6
{
  v34 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = [v10 description];
  v14 = [(HMMTRAccessoryServer *)self attributeTimers];
  v15 = [v14 objectForKeyedSubscript:v13];

  v16 = objc_autoreleasePoolPush();
  v17 = self;
  v18 = HMFGetOSLogHandle();
  v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG);
  if (v15)
  {
    if (v19)
    {
      v20 = HMFGetLogIdentifier();
      v28 = 138543874;
      v29 = v20;
      v30 = 2112;
      v31 = v13;
      v32 = 2112;
      v33 = v11;
      _os_log_impl(&dword_22AEAE000, v18, OS_LOG_TYPE_DEBUG, "%{public}@Attribute timer found for %@ - reset timer and update report with %@", &v28, 0x20u);
    }

    objc_autoreleasePoolPop(v16);
    v21 = [(HMMTRAccessoryServer *)v17 attributeTimers];
    v22 = [v21 objectForKey:v13];

    [(HMMTRAttributeTimer *)v22 updateReport:v11];
  }

  else
  {
    if (v19)
    {
      v23 = HMFGetLogIdentifier();
      v28 = 138543874;
      v29 = v23;
      v30 = 2112;
      v31 = v13;
      v32 = 2112;
      v33 = v11;
      _os_log_impl(&dword_22AEAE000, v18, OS_LOG_TYPE_DEBUG, "%{public}@Attribute timer NOT found for path %@ - Create timer with report %@", &v28, 0x20u);
    }

    objc_autoreleasePoolPop(v16);
    v24 = [HMMTRAttributeTimer alloc];
    v25 = [(HAPAccessoryServer *)v17 clientQueue];
    v22 = [(HMMTRAttributeTimer *)v24 initWithServer:v10 report:v11 timeout:v25 queue:v17 server:a5];

    v26 = [(HMMTRAccessoryServer *)v17 attributeTimers];
    [v26 setObject:v22 forKey:v13];

    [(HMMTRAttributeTimer *)v22 start];
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (void)_updatedCharacteristicsForEventReport:(id)a3 completionHandler:(id)a4
{
  v128 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v85 = a4;
  v94 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v95 = v6;
  v7 = [v6 objectForKeyedSubscript:*MEMORY[0x277CD5140]];
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

  v10 = [v9 cluster];
  v11 = [v10 isEqual:&unk_283EE8B80];

  if (!v11)
  {
    goto LABEL_12;
  }

  v12 = [v95 objectForKeyedSubscript:*MEMORY[0x277CD5130]];
  objc_opt_class();
  v13 = (objc_opt_isKindOfClass() & 1) != 0 ? v12 : 0;
  v14 = v13;

  v15 = [v14 isEqual:MEMORY[0x277CBEC38]];
  if (v15)
  {
    v16 = objc_autoreleasePoolPush();
    v17 = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543618;
      v116 = v19;
      v117 = 2112;
      v118 = v95;
      _os_log_impl(&dword_22AEAE000, v18, OS_LOG_TYPE_DEBUG, "%{public}@Ignored switch event %@ in initial reports", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v16);
    v20 = v85;
    (*(v85 + 2))(v85, MEMORY[0x277CBEBF8]);
    v21 = v94;
  }

  else
  {
LABEL_12:
    v113 = 0u;
    v114 = 0u;
    v111 = 0u;
    v112 = 0u;
    obj = [(HAPAccessoryServer *)self accessories];
    v88 = [obj countByEnumeratingWithState:&v111 objects:v127 count:16];
    if (v88)
    {
      v22 = 0x2786EB000uLL;
      v87 = *v112;
      v23 = 0x2786EB000uLL;
      v97 = v9;
      v98 = self;
      do
      {
        v24 = 0;
        do
        {
          if (*v112 != v87)
          {
            objc_enumerationMutation(obj);
          }

          v89 = v24;
          v25 = *(*(&v111 + 1) + 8 * v24);
          v107 = 0u;
          v108 = 0u;
          v109 = 0u;
          v110 = 0u;
          v26 = [v25 services];
          v27 = [v26 countByEnumeratingWithState:&v107 objects:v126 count:16];
          if (v27)
          {
            v28 = v27;
            v29 = *v108;
            v90 = *v108;
            v91 = v26;
            do
            {
              v30 = 0;
              v92 = v28;
              do
              {
                if (*v108 != v29)
                {
                  objc_enumerationMutation(v26);
                }

                v31 = *(*(&v107 + 1) + 8 * v30);
                v32 = *(v22 + 3520);
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  [v31 endpoint];
                  v33 = v93 = v30;
                  [v9 endpoint];
                  v34 = v96 = v31;
                  v35 = [v33 isEqualToNumber:v34];

                  v30 = v93;
                  if (v35)
                  {
                    v105 = 0u;
                    v106 = 0u;
                    v103 = 0u;
                    v104 = 0u;
                    v99 = [v96 characteristics];
                    v36 = [v99 countByEnumeratingWithState:&v103 objects:v125 count:16];
                    if (v36)
                    {
                      v37 = v36;
                      v100 = *v104;
                      do
                      {
                        for (i = 0; i != v37; ++i)
                        {
                          if (*v104 != v100)
                          {
                            objc_enumerationMutation(v99);
                          }

                          v39 = *(*(&v103 + 1) + 8 * i);
                          v40 = [*(v23 + 3640) protocolMap];
                          v41 = [v9 endpoint];
                          v42 = [(HMMTRAccessoryServer *)self clusterIDCharacteristicMap];
                          v43 = [v40 reportDescriptionForCharacteristic:v39 endpointID:v41 clusterIDCharacteristicMap:v42];

                          if (v43)
                          {
                            v44 = [v43 clusterId];
                            v45 = [v9 cluster];
                            if (([v44 isEqualToNumber:v45] & 1) != 0 && (objc_msgSend(v43, "eventIds"), (v46 = objc_claimAutoreleasedReturnValue()) != 0))
                            {
                              v47 = v46;
                              v48 = [v43 eventIds];
                              v101[0] = MEMORY[0x277D85DD0];
                              v101[1] = 3221225472;
                              v101[2] = __80__HMMTRAccessoryServer__updatedCharacteristicsForEventReport_completionHandler___block_invoke;
                              v101[3] = &unk_2786EF7B0;
                              v49 = v9;
                              v102 = v49;
                              v50 = [v48 indexOfObjectPassingTest:v101];

                              v23 = 0x2786EB000;
                              v51 = v50 == 0x7FFFFFFFFFFFFFFFLL;
                              self = v98;
                              if (!v51)
                              {
                                v52 = [v96 type];
                                v53 = [v52 isEqualToString:@"0000003E-0000-1000-8000-0026BB765291"];

                                if (!v53 || ([v49 cluster], v54 = objc_claimAutoreleasedReturnValue(), v55 = objc_msgSend(v54, "isEqual:", &unk_283EE8B98), v54, (v55 & 1) == 0))
                                {
                                  v56 = [v43 mapEvent];

                                  if (v56)
                                  {
                                    v57 = [v43 mapEvent];
                                    v58 = [v49 event];
                                    v59 = (v57)[2](v57, v58, v95);
                                  }

                                  else
                                  {
                                    v59 = [HMMTRUtilities mtrBaseClusterValueFromMTRClusterReportValue:v95];
                                  }

                                  v60 = objc_autoreleasePoolPush();
                                  v61 = v98;
                                  v62 = HMFGetOSLogHandle();
                                  v63 = v62;
                                  if (v59)
                                  {
                                    if (os_log_type_enabled(v62, OS_LOG_TYPE_INFO))
                                    {
                                      v64 = HMFGetLogIdentifier();
                                      *buf = 138543874;
                                      v116 = v64;
                                      v117 = 2112;
                                      v118 = v39;
                                      v119 = 2112;
                                      v120 = v59;
                                      _os_log_impl(&dword_22AEAE000, v63, OS_LOG_TYPE_INFO, "%{public}@Updating characteristic: %@ from report with value: %@", buf, 0x20u);
                                    }

                                    objc_autoreleasePoolPop(v60);
                                    v65 = objc_autoreleasePoolPush();
                                    v66 = v61;
                                    v67 = HMFGetOSLogHandle();
                                    if (os_log_type_enabled(v67, OS_LOG_TYPE_INFO))
                                    {
                                      v68 = HMFGetLogIdentifier();
                                      *buf = 138543618;
                                      v116 = v68;
                                      v117 = 2112;
                                      v118 = v39;
                                      _os_log_impl(&dword_22AEAE000, v67, OS_LOG_TYPE_INFO, "%{public}@Creating a copy for characteristic before modifying it %@", buf, 0x16u);
                                    }

                                    objc_autoreleasePoolPop(v65);
                                    v69 = [v39 copy];
                                    v70 = [v39 service];
                                    [v69 setService:v70];

                                    [v69 setValue:v59];
                                    [v94 addObject:v69];
                                    v71 = +[HMMTRProtocolMap protocolMap];
                                    v72 = [v49 endpoint];
                                    v73 = [(HMMTRAccessoryServer *)v66 clusterIDCharacteristicMap];
                                    v74 = [v71 getUpdatedLinkedCharacteristics:v69 endpointID:v72 clusterIDCharacteristicMap:v73];

                                    [v94 addObjectsFromArray:v74];
                                    self = v98;
                                  }

                                  else
                                  {
                                    if (os_log_type_enabled(v62, OS_LOG_TYPE_DEBUG))
                                    {
                                      v75 = HMFGetLogIdentifier();
                                      *buf = 138543618;
                                      v116 = v75;
                                      v117 = 2112;
                                      v118 = v95;
                                      _os_log_impl(&dword_22AEAE000, v63, OS_LOG_TYPE_DEBUG, "%{public}@Ignored event %@ which doesn't derive a value", buf, 0x16u);

                                      self = v98;
                                    }

                                    objc_autoreleasePoolPop(v60);
                                  }

                                  v23 = 0x2786EB000;
                                }
                              }

                              v44 = v102;
                              v9 = v97;
                            }

                            else
                            {
                            }
                          }
                        }

                        v37 = [v99 countByEnumeratingWithState:&v103 objects:v125 count:16];
                      }

                      while (v37);
                    }

                    v22 = 0x2786EB000;
                    v29 = v90;
                    v26 = v91;
                    v28 = v92;
                    v30 = v93;
                  }
                }

                ++v30;
              }

              while (v30 != v28);
              v28 = [v26 countByEnumeratingWithState:&v107 objects:v126 count:16];
            }

            while (v28);
          }

          v24 = v89 + 1;
        }

        while (v89 + 1 != v88);
        v88 = [obj countByEnumeratingWithState:&v111 objects:v127 count:16];
      }

      while (v88);
    }

    v76 = objc_autoreleasePoolPush();
    v77 = self;
    v78 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v78, OS_LOG_TYPE_DEBUG))
    {
      v79 = HMFGetLogIdentifier();
      v80 = [v9 endpoint];
      v81 = [v9 cluster];
      [v9 event];
      v83 = v82 = v9;
      *buf = 138544386;
      v116 = v79;
      v117 = 2112;
      v118 = v94;
      v119 = 2112;
      v120 = v80;
      v121 = 2112;
      v122 = v81;
      v123 = 2112;
      v124 = v83;
      _os_log_impl(&dword_22AEAE000, v78, OS_LOG_TYPE_DEBUG, "%{public}@Updated characteristics %@ for Report endpoint:%@ cluster:%@ event:%@", buf, 0x34u);

      v9 = v82;
    }

    objc_autoreleasePoolPop(v76);
    v20 = v85;
    v21 = v94;
    (*(v85 + 2))(v85, v94);
  }

  v84 = *MEMORY[0x277D85DE8];
}

uint64_t __80__HMMTRAccessoryServer__updatedCharacteristicsForEventReport_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 event];
  v5 = [v3 isEqualToNumber:v4];

  return v5;
}

- (void)_updatedCharacteristicsForAttributeReport:(id)a3 completionHandler:(id)a4
{
  v129 = *MEMORY[0x277D85DE8];
  v81 = a3;
  v71 = a4;
  group = dispatch_group_create();
  v114 = 0;
  v115 = &v114;
  v116 = 0x3032000000;
  v117 = __Block_byref_object_copy__10189;
  v118 = __Block_byref_object_dispose__10190;
  v119 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v5 = [v81 objectForKeyedSubscript:*MEMORY[0x277CD50B8]];
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
    v112 = 0u;
    v113 = 0u;
    v110 = 0u;
    v111 = 0u;
    obj = [(HAPAccessoryServer *)self accessories];
    v67 = [obj countByEnumeratingWithState:&v110 objects:v128 count:16];
    if (!v67)
    {
      goto LABEL_57;
    }

    v68 = *v111;
    while (1)
    {
      for (i = 0; i != v67; ++i)
      {
        if (*v111 != v68)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v110 + 1) + 8 * i);
        v106 = 0u;
        v107 = 0u;
        v108 = 0u;
        v109 = 0u;
        v72 = [v8 services];
        v74 = [v72 countByEnumeratingWithState:&v106 objects:v127 count:16];
        if (v74)
        {
          v73 = *v107;
          do
          {
            for (j = 0; j != v74; ++j)
            {
              if (*v107 != v73)
              {
                objc_enumerationMutation(v72);
              }

              v78 = *(*(&v106 + 1) + 8 * j);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v9 = [v78 endpoint];
                v10 = [v7 endpoint];
                v11 = [v9 isEqualToNumber:v10];

                if (v11)
                {
                  v104 = 0u;
                  v105 = 0u;
                  v102 = 0u;
                  v103 = 0u;
                  v12 = [v78 characteristics];
                  v13 = [v12 countByEnumeratingWithState:&v102 objects:v126 count:16];
                  if (!v13)
                  {
                    goto LABEL_52;
                  }

                  v83 = *v103;
                  v80 = v12;
                  while (1)
                  {
                    v84 = v13;
                    for (k = 0; k != v84; ++k)
                    {
                      if (*v103 != v83)
                      {
                        objc_enumerationMutation(v80);
                      }

                      v15 = *(*(&v102 + 1) + 8 * k);
                      v16 = +[HMMTRProtocolMap protocolMap];
                      v17 = [v7 endpoint];
                      v18 = [(HMMTRAccessoryServer *)self clusterIDCharacteristicMap];
                      v19 = [v16 reportDescriptionForCharacteristic:v15 endpointID:v17 clusterIDCharacteristicMap:v18];

                      if (v19)
                      {
                        v20 = [v19 clusterId];
                        v21 = [v7 cluster];
                        if (v20 == v21 || ([v19 clusterId], v85 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "cluster"), v86 = objc_claimAutoreleasedReturnValue(), -[HMMTRAccessoryServer _isBridgedBasicInformation:reportClusterID:](self, "_isBridgedBasicInformation:reportClusterID:", v85, v86)))
                        {
                          v22 = [v19 attributeIds];
                          v23 = [v7 attribute];
                          v24 = [v22 containsObject:v23];

                          if (v20 == v21)
                          {

                            if (!v24)
                            {
                              goto LABEL_46;
                            }

                            goto LABEL_30;
                          }
                        }

                        else
                        {
                          LOBYTE(v24) = 0;
                        }

                        if ((v24 & 1) == 0)
                        {
                          goto LABEL_46;
                        }

LABEL_30:
                        dispatch_group_enter(group);
                        v25 = [v19 clusterClass];
                        if (!v25 || ([v19 clusterSelector], v26 = objc_claimAutoreleasedReturnValue(), v27 = v26 == 0, v26, v25, v27))
                        {
                          v40 = objc_autoreleasePoolPush();
                          v41 = self;
                          v42 = HMFGetOSLogHandle();
                          if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
                          {
                            v43 = HMFGetLogIdentifier();
                            *buf = 138543874;
                            v121 = v43;
                            v122 = 2112;
                            v123 = v15;
                            v124 = 2112;
                            v125 = v81;
                            _os_log_impl(&dword_22AEAE000, v42, OS_LOG_TYPE_DEBUG, "%{public}@Updating characteristic: %@ from report: %@", buf, 0x20u);
                          }

                          objc_autoreleasePoolPop(v40);
                          v44 = [v15 copy];
                          v45 = [v15 service];
                          [v44 setService:v45];

                          v46 = [v19 mapValue];
                          if (v46)
                          {
                            v79 = [v19 mapValue];
                            v47 = (*(v79 + 16))(v79, v81);
                            v76 = v47;
                          }

                          else
                          {
                            v47 = [HMMTRUtilities mtrBaseClusterValueFromMTRClusterReportValue:v81];
                            v77 = v47;
                          }

                          [v44 setValue:v47];
                          v48 = v77;
                          if (v46)
                          {

                            v48 = v79;
                          }

                          v49 = objc_autoreleasePoolPush();
                          v50 = v41;
                          v51 = HMFGetOSLogHandle();
                          if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
                          {
                            v52 = HMFGetLogIdentifier();
                            *buf = 138543874;
                            v121 = v52;
                            v122 = 2112;
                            v123 = v44;
                            v124 = 2112;
                            v125 = v81;
                            _os_log_impl(&dword_22AEAE000, v51, OS_LOG_TYPE_INFO, "%{public}@Updated characteristic %@ from report: %@", buf, 0x20u);
                          }

                          objc_autoreleasePoolPop(v49);
                          [v115[5] addObject:v44];
                          v53 = +[HMMTRProtocolMap protocolMap];
                          v54 = [v7 endpoint];
                          v55 = [(HMMTRAccessoryServer *)v50 clusterIDCharacteristicMap];
                          v56 = [v53 getUpdatedLinkedCharacteristics:v44 endpointID:v54 clusterIDCharacteristicMap:v55];

                          [v115[5] addObjectsFromArray:v56];
                          v92[0] = MEMORY[0x277D85DD0];
                          v92[1] = 3221225472;
                          v92[2] = __84__HMMTRAccessoryServer__updatedCharacteristicsForAttributeReport_completionHandler___block_invoke_389;
                          v92[3] = &unk_2786EF738;
                          v94 = &v114;
                          v93 = group;
                          [(HMMTRAccessoryServer *)v50 _updateAdditionalCharacteristicsFromCharacteristicUpdate:v44 service:v78 path:v7 completionHandler:v92];
                        }

                        else
                        {
                          v28 = objc_autoreleasePoolPush();
                          v29 = self;
                          v30 = HMFGetOSLogHandle();
                          if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
                          {
                            v31 = HMFGetLogIdentifier();
                            *buf = 138543618;
                            v121 = v31;
                            v122 = 2112;
                            v123 = v15;
                            _os_log_impl(&dword_22AEAE000, v30, OS_LOG_TYPE_INFO, "%{public}@Attribute report needs custom handling for Characteristic %@", buf, 0x16u);
                          }

                          objc_autoreleasePoolPop(v28);
                          v32 = [(HMMTRAccessoryServer *)v29 matterDevice];

                          if (v32)
                          {
                            v33 = [HMMTRProtocolOperation alloc];
                            v34 = [(HMMTRAccessoryServer *)v29 matterDevice];
                            v35 = [(HMMTRAccessoryServer *)v29 clusterIDCharacteristicMap];
                            v36 = [(HMMTRProtocolOperation *)v33 initWithOperationOfType:2 characteristic:v15 matterDevice:v34 primaryArgument:v81 clusterIDCharacteristicMap:v35];

                            v37 = +[HMMTRProtocolOperationManager sharedInstance];
                            v38 = [(HAPAccessoryServer *)v29 clientQueue];
                            v39 = [(HMMTRAccessoryServer *)v29 reportDistributor];
                            v95[0] = MEMORY[0x277D85DD0];
                            v95[1] = 3221225472;
                            v95[2] = __84__HMMTRAccessoryServer__updatedCharacteristicsForAttributeReport_completionHandler___block_invoke;
                            v95[3] = &unk_2786EF760;
                            v95[4] = v29;
                            v96 = v81;
                            v97 = v15;
                            v101 = &v114;
                            v98 = v7;
                            v99 = v78;
                            v100 = group;
                            [v37 registerOperation:v36 accessoryServer:v29 clientQueue:v38 reportDistributor:v39 operationResponseHandler:v95 updatedAttributesHandler:0];
                          }

                          else
                          {
                            v57 = objc_autoreleasePoolPush();
                            v58 = v29;
                            v59 = HMFGetOSLogHandle();
                            if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
                            {
                              v60 = HMFGetLogIdentifier();
                              *buf = 138543618;
                              v121 = v60;
                              v122 = 2112;
                              v123 = v15;
                              _os_log_impl(&dword_22AEAE000, v59, OS_LOG_TYPE_ERROR, "%{public}@MTRDevice unavailable to custom-handle the Attribute Report for characteristic %@", buf, 0x16u);
                            }

                            objc_autoreleasePoolPop(v57);
                            dispatch_group_leave(group);
                          }
                        }
                      }

LABEL_46:
                    }

                    v12 = v80;
                    v13 = [v80 countByEnumeratingWithState:&v102 objects:v126 count:16];
                    if (!v13)
                    {
LABEL_52:

                      break;
                    }
                  }
                }
              }
            }

            v74 = [v72 countByEnumeratingWithState:&v106 objects:v127 count:16];
          }

          while (v74);
        }
      }

      v67 = [obj countByEnumeratingWithState:&v110 objects:v128 count:16];
      if (!v67)
      {
LABEL_57:

        v61 = [(HAPAccessoryServer *)self clientQueue];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __84__HMMTRAccessoryServer__updatedCharacteristicsForAttributeReport_completionHandler___block_invoke_2;
        block[3] = &unk_2786EF788;
        block[4] = self;
        v91 = &v114;
        v89 = v7;
        v90 = v71;
        dispatch_group_notify(group, v61, block);

        goto LABEL_61;
      }
    }
  }

  v62 = objc_autoreleasePoolPush();
  v63 = self;
  v64 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
  {
    v65 = HMFGetLogIdentifier();
    *buf = 138543362;
    v121 = v65;
    _os_log_impl(&dword_22AEAE000, v64, OS_LOG_TYPE_ERROR, "%{public}@Attribute path missing from report. Cannot handle this report.", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v62);
  (*(v71 + 2))(v71, v115[5]);
LABEL_61:

  _Block_object_dispose(&v114, 8);
  v66 = *MEMORY[0x277D85DE8];
}

void __84__HMMTRAccessoryServer__updatedCharacteristicsForAttributeReport_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v37 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 error];
  v5 = [v4 isEqual:&unk_283EE8B68];

  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = *(a1 + 32);
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v10 = *(a1 + 40);
      v11 = *(a1 + 48);
      *buf = 138543874;
      v32 = v9;
      v33 = 2112;
      v34 = v10;
      v35 = 2112;
      v36 = v11;
      _os_log_impl(&dword_22AEAE000, v8, OS_LOG_TYPE_INFO, "%{public}@Custom handler ignored report %@ for characteristic %@", buf, 0x20u);
LABEL_7:
    }
  }

  else
  {
    v12 = [v3 error];

    if (!v12)
    {
      v21 = *(*(*(a1 + 80) + 8) + 40);
      v22 = [v3 characteristic];
      [v21 addObject:v22];

      v23 = +[HMMTRProtocolMap protocolMap];
      v24 = [v3 characteristic];
      v25 = [*(a1 + 56) endpoint];
      v26 = [*(a1 + 32) clusterIDCharacteristicMap];
      v27 = [v23 getUpdatedLinkedCharacteristics:v24 endpointID:v25 clusterIDCharacteristicMap:v26];

      [*(*(*(a1 + 80) + 8) + 40) addObjectsFromArray:v27];
      goto LABEL_9;
    }

    v6 = objc_autoreleasePoolPush();
    v7 = *(a1 + 32);
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      v13 = [v3 error];
      v14 = *(a1 + 48);
      *buf = 138543874;
      v32 = v9;
      v33 = 2112;
      v34 = v13;
      v35 = 2112;
      v36 = v14;
      _os_log_impl(&dword_22AEAE000, v8, OS_LOG_TYPE_ERROR, "%{public}@Error: %@. Failed to handle a report for characteristic: %@", buf, 0x20u);

      goto LABEL_7;
    }
  }

  objc_autoreleasePoolPop(v6);
LABEL_9:
  v15 = *(a1 + 32);
  v16 = [v3 characteristic];
  v18 = *(a1 + 56);
  v17 = *(a1 + 64);
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __84__HMMTRAccessoryServer__updatedCharacteristicsForAttributeReport_completionHandler___block_invoke_387;
  v29[3] = &unk_2786EF738;
  v28 = *(a1 + 72);
  v19 = v28;
  v30 = v28;
  [v15 _updateAdditionalCharacteristicsFromCharacteristicUpdate:v16 service:v17 path:v18 completionHandler:v29];

  v20 = *MEMORY[0x277D85DE8];
}

void __84__HMMTRAccessoryServer__updatedCharacteristicsForAttributeReport_completionHandler___block_invoke_389(uint64_t a1, uint64_t a2)
{
  [*(*(*(a1 + 40) + 8) + 40) addObjectsFromArray:a2];
  v3 = *(a1 + 32);

  dispatch_group_leave(v3);
}

uint64_t __84__HMMTRAccessoryServer__updatedCharacteristicsForAttributeReport_completionHandler___block_invoke_2(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(*(*(a1 + 56) + 8) + 40);
    v7 = [*(a1 + 40) endpoint];
    v8 = [*(a1 + 40) cluster];
    v9 = [*(a1 + 40) attribute];
    v13 = 138544386;
    v14 = v5;
    v15 = 2112;
    v16 = v6;
    v17 = 2112;
    v18 = v7;
    v19 = 2112;
    v20 = v8;
    v21 = 2112;
    v22 = v9;
    _os_log_impl(&dword_22AEAE000, v4, OS_LOG_TYPE_DEBUG, "%{public}@Updated characteristics %@ for Report endpoint:%@ cluster:%@ attribute:%@", &v13, 0x34u);
  }

  objc_autoreleasePoolPop(v2);
  v10 = *(*(*(a1 + 56) + 8) + 40);
  result = (*(*(a1 + 48) + 16))();
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

void __84__HMMTRAccessoryServer__updatedCharacteristicsForAttributeReport_completionHandler___block_invoke_387(uint64_t a1, uint64_t a2)
{
  [*(*(*(a1 + 40) + 8) + 40) addObjectsFromArray:a2];
  v3 = *(a1 + 32);

  dispatch_group_leave(v3);
}

- (void)_updateAdditionalCharacteristicsFromCharacteristicUpdate:(id)a3 service:(id)a4 path:(id)a5 completionHandler:(id)a6
{
  v152 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v14 = [v11 cluster];
  if (![v14 isEqualToNumber:&unk_283EE8A78])
  {
    goto LABEL_12;
  }

  v120 = v10;
  v15 = [v11 attribute];
  if (([v15 isEqualToNumber:&unk_283EE8A90] & 1) == 0)
  {

    v10 = v120;
LABEL_12:

LABEL_13:
    v21 = [v11 cluster];
    v22 = [v21 isEqualToNumber:&unk_283EE8AC0];

    if (v22)
    {
      v23 = v10;
      v24 = [v11 attribute];
      v25 = [v24 isEqualToNumber:&unk_283EE8AD8];
      v117 = v13;
      if (v25)
      {
        v10 = [v9 type];
        if ([v10 isEqualToString:@"00000013-0000-1000-8000-0026BB765291"])
        {

LABEL_44:
          v115 = v12;
          v132 = 0u;
          v133 = 0u;
          v130 = 0u;
          v131 = 0u;
          v120 = v23;
          v48 = [v23 characteristics];
          v49 = [v48 countByEnumeratingWithState:&v130 objects:v150 count:16];
          if (v49)
          {
            v50 = v49;
            v51 = *v131;
LABEL_46:
            v52 = v9;
            v53 = 0;
            while (1)
            {
              if (*v131 != v51)
              {
                objc_enumerationMutation(v48);
              }

              v54 = *(*(&v130 + 1) + 8 * v53);
              v55 = [v54 type];
              v56 = [v55 isEqualToString:@"000000CE-0000-1000-8000-0026BB765291"];

              if (v56)
              {
                break;
              }

              if (v50 == ++v53)
              {
                v50 = [v48 countByEnumeratingWithState:&v130 objects:v150 count:16];
                v9 = v52;
                if (v50)
                {
                  goto LABEL_46;
                }

                goto LABEL_52;
              }
            }

            v57 = v54;

            v9 = v52;
            if (!v57)
            {
              goto LABEL_57;
            }

            v58 = objc_autoreleasePoolPush();
            v59 = self;
            v60 = HMFGetOSLogHandle();
            v12 = v115;
            v13 = v117;
            if (os_log_type_enabled(v60, OS_LOG_TYPE_INFO))
            {
              v61 = HMFGetLogIdentifier();
              *buf = 138543874;
              v145 = v61;
              v146 = 2112;
              v147 = v57;
              v148 = 2112;
              v149 = v9;
              _os_log_impl(&dword_22AEAE000, v60, OS_LOG_TYPE_INFO, "%{public}@Updated additional characteristic %@ \nbased on characteristic \n%@", buf, 0x20u);
            }

            objc_autoreleasePoolPop(v58);
            [v57 setValue:&unk_283EE8B08];
            [v117 addObject:v57];
            v115[2](v115, v117);
LABEL_65:

            goto LABEL_70;
          }

LABEL_52:

LABEL_57:
          v62 = objc_autoreleasePoolPush();
          v63 = self;
          v64 = HMFGetOSLogHandle();
          v12 = v115;
          v13 = v117;
          if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
          {
            v65 = HMFGetLogIdentifier();
            v66 = [v11 endpoint];
            *buf = 138543618;
            v145 = v65;
            v146 = 2112;
            v147 = v66;
            _os_log_impl(&dword_22AEAE000, v64, OS_LOG_TYPE_ERROR, "%{public}@Unexpected, color temperature characteristic not found on endpoint %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v62);
          goto LABEL_69;
        }
      }

      v32 = v12;
      v33 = [v11 attribute];
      if ([v33 isEqualToNumber:&unk_283EE8AF0])
      {
        v34 = [v9 type];
        v35 = [v34 isEqualToString:@"0000002F-0000-1000-8000-0026BB765291"];

        if (v25)
        {

          v12 = v32;
          if (v35)
          {
            goto LABEL_44;
          }
        }

        else
        {

          v12 = v32;
          if (v35)
          {
            goto LABEL_44;
          }
        }
      }

      else
      {

        if (v25)
        {
        }

        v12 = v32;
      }

      v13 = v117;
      v12[2](v12, v117);
LABEL_29:
      v10 = v23;
      goto LABEL_71;
    }

    v26 = [v11 cluster];
    v27 = [v26 isEqualToNumber:&unk_283EE8B20];

    if (v27)
    {
      v28 = [v11 attribute];
      if ([v28 isEqualToNumber:&unk_283EE8B38])
      {
        v29 = [v9 type];
        v30 = [v29 isEqualToString:@"0000007B-0000-1000-8000-0026BB765291"];

        if (v30)
        {
          v114 = v12;
          v118 = v13;
          v31 = @"0000007C-0000-1000-8000-0026BB765291";
LABEL_34:
          v128 = 0u;
          v129 = 0u;
          v126 = 0u;
          v127 = 0u;
          v120 = v10;
          v39 = [v10 characteristics];
          v40 = [v39 countByEnumeratingWithState:&v126 objects:v143 count:16];
          if (!v40)
          {
LABEL_42:

LABEL_66:
            v75 = objc_autoreleasePoolPush();
            v76 = self;
            v77 = HMFGetOSLogHandle();
            v13 = v118;
            if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
            {
              v78 = HMFGetLogIdentifier();
              v79 = [v11 endpoint];
              *buf = 138543618;
              v145 = v78;
              v146 = 2112;
              v147 = v79;
              _os_log_impl(&dword_22AEAE000, v77, OS_LOG_TYPE_ERROR, "%{public}@Unexpected, position characteristic not found on endpoint %@", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v75);
            v12 = v114;
LABEL_69:
            v12[2](v12, v13);
LABEL_70:
            v10 = v120;
            goto LABEL_71;
          }

          v41 = v40;
          v42 = *v127;
LABEL_36:
          v43 = v9;
          v44 = 0;
          while (1)
          {
            if (*v127 != v42)
            {
              objc_enumerationMutation(v39);
            }

            v45 = *(*(&v126 + 1) + 8 * v44);
            v46 = [v45 type];
            v47 = [v46 isEqualToString:v31];

            if (v47)
            {
              break;
            }

            if (v41 == ++v44)
            {
              v41 = [v39 countByEnumeratingWithState:&v126 objects:v143 count:16];
              v9 = v43;
              if (v41)
              {
                goto LABEL_36;
              }

              goto LABEL_42;
            }
          }

          v67 = v45;

          v9 = v43;
          if (!v67)
          {
            goto LABEL_66;
          }

          v68 = [(HMMTRAccessoryServer *)self matterDevice];

          v13 = v118;
          if (v68)
          {
            v69 = [HMMTRProtocolOperation alloc];
            v70 = [(HMMTRAccessoryServer *)self matterDevice];
            v71 = [(HMMTRAccessoryServer *)self clusterIDCharacteristicMap];
            v112 = [(HMMTRProtocolOperation *)v69 initWithOperationOfType:4 characteristic:v67 matterDevice:v70 clusterIDCharacteristicMap:v71];

            v72 = +[HMMTRProtocolOperationManager sharedInstance];
            v73 = [(HAPAccessoryServer *)self clientQueue];
            v74 = [(HMMTRAccessoryServer *)self reportDistributor];
            v121[0] = MEMORY[0x277D85DD0];
            v121[1] = 3221225472;
            v121[2] = __112__HMMTRAccessoryServer__updateAdditionalCharacteristicsFromCharacteristicUpdate_service_path_completionHandler___block_invoke_380;
            v121[3] = &unk_2786EF710;
            v121[4] = self;
            v122 = v67;
            v123 = v9;
            v124 = v118;
            v125 = v114;
            v57 = v67;
            [v72 registerOperation:v112 accessoryServer:self clientQueue:v73 reportDistributor:v74 operationResponseHandler:v121 updatedAttributesHandler:0];

            v12 = v114;
            goto LABEL_65;
          }

          v89 = objc_autoreleasePoolPush();
          v90 = self;
          v91 = HMFGetOSLogHandle();
          v23 = v120;
          if (os_log_type_enabled(v91, OS_LOG_TYPE_ERROR))
          {
            v92 = HMFGetLogIdentifier();
            *buf = 138543618;
            v145 = v92;
            v146 = 2112;
            v147 = v9;
            _os_log_impl(&dword_22AEAE000, v91, OS_LOG_TYPE_ERROR, "%{public}@MTRDevice unavailable to get Feature Map %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v89);
          v12 = v114;
          v114[2](v114, v118);

          goto LABEL_29;
        }
      }

      else
      {
      }

      v36 = [v11 attribute];
      if ([v36 isEqualToNumber:&unk_283EE8B50])
      {
        v37 = [v9 type];
        v38 = [v37 isEqualToString:@"0000006C-0000-1000-8000-0026BB765291"];

        if (v38)
        {
          v114 = v12;
          v118 = v13;
          v31 = @"0000006D-0000-1000-8000-0026BB765291";
          goto LABEL_34;
        }
      }

      else
      {
      }
    }

    v12[2](v12, v13);
    goto LABEL_71;
  }

  v16 = [v9 type];
  v17 = [v16 isEqualToString:@"00000033-0000-1000-8000-0026BB765291"];

  v10 = v120;
  if (!v17)
  {
    goto LABEL_13;
  }

  v18 = [v9 value];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  v20 = v19;

  if (v20 && ([v20 isEqualToNumber:&unk_283EE89B8] & 1) == 0 && !objc_msgSend(v20, "isEqualToNumber:", &unk_283EE8AA8))
  {
    v111 = v20;
    v113 = v9;
    v116 = v12;
    v141 = 0u;
    v142 = 0u;
    v139 = 0u;
    v140 = 0u;
    v81 = [v120 characteristics];
    v82 = [v81 countByEnumeratingWithState:&v139 objects:v151 count:16];
    if (v82)
    {
      v83 = v82;
      v84 = *v140;
LABEL_74:
      v85 = 0;
      while (1)
      {
        if (*v140 != v84)
        {
          objc_enumerationMutation(v81);
        }

        v86 = *(*(&v139 + 1) + 8 * v85);
        v87 = [v86 type];
        v88 = [v87 isEqualToString:@"00000035-0000-1000-8000-0026BB765291"];

        if (v88)
        {
          break;
        }

        if (v83 == ++v85)
        {
          v83 = [v81 countByEnumeratingWithState:&v139 objects:v151 count:16];
          if (v83)
          {
            goto LABEL_74;
          }

          goto LABEL_80;
        }
      }

      v93 = v86;

      if (!v93)
      {
        goto LABEL_87;
      }

      v94 = [(HMMTRAccessoryServer *)self matterDevice];

      v9 = v113;
      if (v94)
      {
        v95 = [HMMTRProtocolOperation alloc];
        v96 = [(HMMTRAccessoryServer *)self matterDevice];
        v97 = [(HMMTRAccessoryServer *)self clusterIDCharacteristicMap];
        v110 = [(HMMTRProtocolOperation *)v95 initWithOperationOfType:4 characteristic:v93 matterDevice:v96 clusterIDCharacteristicMap:v97];

        v98 = +[HMMTRProtocolOperationManager sharedInstance];
        v99 = [(HAPAccessoryServer *)self clientQueue];
        v100 = [(HMMTRAccessoryServer *)self reportDistributor];
        v134[0] = MEMORY[0x277D85DD0];
        v134[1] = 3221225472;
        v134[2] = __112__HMMTRAccessoryServer__updateAdditionalCharacteristicsFromCharacteristicUpdate_service_path_completionHandler___block_invoke;
        v134[3] = &unk_2786EF710;
        v134[4] = self;
        v135 = v93;
        v136 = v113;
        v137 = v13;
        v138 = v116;
        v93 = v93;
        [v98 registerOperation:v110 accessoryServer:self clientQueue:v99 reportDistributor:v100 operationResponseHandler:v134 updatedAttributesHandler:0];

        v12 = v116;
      }

      else
      {
        v106 = objc_autoreleasePoolPush();
        v107 = self;
        v108 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v108, OS_LOG_TYPE_ERROR))
        {
          v109 = HMFGetLogIdentifier();
          *buf = 138543618;
          v145 = v109;
          v146 = 2112;
          v147 = v113;
          _os_log_impl(&dword_22AEAE000, v108, OS_LOG_TYPE_ERROR, "%{public}@MTRDevice unavailable to update additional target temperature characteristics %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v106);
        v12 = v116;
        v116[2](v116, v13);
      }
    }

    else
    {
LABEL_80:

LABEL_87:
      v101 = objc_autoreleasePoolPush();
      v102 = self;
      v103 = HMFGetOSLogHandle();
      v9 = v113;
      v12 = v116;
      if (os_log_type_enabled(v103, OS_LOG_TYPE_ERROR))
      {
        v104 = HMFGetLogIdentifier();
        v105 = [v11 endpoint];
        *buf = 138543618;
        v145 = v104;
        v146 = 2112;
        v147 = v105;
        _os_log_impl(&dword_22AEAE000, v103, OS_LOG_TYPE_ERROR, "%{public}@Unexpected, target temperature characteristic not found on endpoint %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v101);
      v116[2](v116, v13);
    }

    goto LABEL_70;
  }

  v12[2](v12, v13);

LABEL_71:
  v80 = *MEMORY[0x277D85DE8];
}

void __112__HMMTRAccessoryServer__updateAdditionalCharacteristicsFromCharacteristicUpdate_service_path_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 error];

  v5 = objc_autoreleasePoolPush();
  v6 = *(a1 + 32);
  v7 = HMFGetOSLogHandle();
  v8 = v7;
  if (v4)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      v10 = [v3 error];
      v11 = *(a1 + 40);
      v19 = 138543874;
      v20 = v9;
      v21 = 2112;
      v22 = v10;
      v23 = 2112;
      v24 = v11;
      _os_log_impl(&dword_22AEAE000, v8, OS_LOG_TYPE_ERROR, "%{public}@Error: %@. Failed to handle a report for characteristic: %@", &v19, 0x20u);
    }

    objc_autoreleasePoolPop(v5);
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v13 = *(a1 + 40);
      v14 = *(a1 + 48);
      v19 = 138543874;
      v20 = v12;
      v21 = 2112;
      v22 = v13;
      v23 = 2112;
      v24 = v14;
      _os_log_impl(&dword_22AEAE000, v8, OS_LOG_TYPE_INFO, "%{public}@Updated additional characteristic %@ based on characteristic %@", &v19, 0x20u);
    }

    objc_autoreleasePoolPop(v5);
    v15 = *(a1 + 56);
    v16 = [v3 characteristic];
    [v15 addObject:v16];
  }

  v17 = *(a1 + 56);
  (*(*(a1 + 64) + 16))();

  v18 = *MEMORY[0x277D85DE8];
}

void __112__HMMTRAccessoryServer__updateAdditionalCharacteristicsFromCharacteristicUpdate_service_path_completionHandler___block_invoke_380(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 error];

  v5 = objc_autoreleasePoolPush();
  v6 = *(a1 + 32);
  v7 = HMFGetOSLogHandle();
  v8 = v7;
  if (v4)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      v10 = [v3 error];
      v11 = *(a1 + 40);
      v19 = 138543874;
      v20 = v9;
      v21 = 2112;
      v22 = v10;
      v23 = 2112;
      v24 = v11;
      _os_log_impl(&dword_22AEAE000, v8, OS_LOG_TYPE_ERROR, "%{public}@Error: %@. Failed to handle a report for characteristic: %@", &v19, 0x20u);
    }

    objc_autoreleasePoolPop(v5);
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v13 = *(a1 + 40);
      v14 = *(a1 + 48);
      v19 = 138543874;
      v20 = v12;
      v21 = 2112;
      v22 = v13;
      v23 = 2112;
      v24 = v14;
      _os_log_impl(&dword_22AEAE000, v8, OS_LOG_TYPE_INFO, "%{public}@Updated additional characteristic %@ based on characteristic %@", &v19, 0x20u);
    }

    objc_autoreleasePoolPop(v5);
    v15 = *(a1 + 56);
    v16 = [v3 characteristic];
    [v15 addObject:v16];
  }

  v17 = *(a1 + 56);
  (*(*(a1 + 64) + 16))();

  v18 = *MEMORY[0x277D85DE8];
}

- (BOOL)_isBridgedBasicInformation:(id)a3 reportClusterID:(id)a4
{
  v5 = a4;
  v6 = [a3 isEqualToNumber:&unk_283EE8A00] && (objc_msgSend(v5, "isEqualToNumber:", &unk_283EE8A60) & 1) != 0;

  return v6;
}

- (id)deviceTopology
{
  v3 = [HMMTRDeviceTopology alloc];
  v4 = [(HMMTRAccessoryServer *)self nodeID];
  v5 = [(HMMTRDeviceTopology *)v3 initWithNodeId:v4 server:self];

  return v5;
}

- (BOOL)_handleUnmappedAttributeReport:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:*MEMORY[0x277CD50B8]];
  v6 = [v5 cluster];
  if ([v6 isEqualToNumber:&unk_283EE89D0])
  {
    v7 = [v5 attribute];
    v8 = [v7 isEqualToNumber:&unk_283EE89E8];

    if (v8)
    {
      v9 = [(HMMTRAccessoryServer *)self chipDelegate];
      v10 = objc_opt_respondsToSelector();

      if (v10)
      {
        v11 = [(HAPAccessoryServer *)self delegateQueue];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __55__HMMTRAccessoryServer__handleUnmappedAttributeReport___block_invoke;
        block[3] = &unk_2786F0CA8;
        block[4] = self;
        dispatch_async(v11, block);
      }

      goto LABEL_22;
    }
  }

  else
  {
  }

  v12 = [v5 cluster];
  if ([v12 isEqualToNumber:&unk_283EE8A00])
  {
    v13 = [v5 attribute];
    v14 = [v13 isEqualToNumber:&unk_283EE8A18];

    if (v14)
    {
      v15 = [HMMTRUtilities mtrBaseClusterValueFromMTRClusterReportValue:v4];
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

      [(HMMTRAccessoryServer *)self updateSoftwareVersion:v17];
      goto LABEL_23;
    }
  }

  else
  {
  }

  v18 = [v5 cluster];
  if ([v18 isEqualToNumber:&unk_283EE8A00])
  {
    v19 = [v5 attribute];
    v20 = [v19 isEqualToNumber:&unk_283EE8A30];

    if (v20)
    {
      v21 = [HMMTRUtilities mtrBaseClusterValueFromMTRClusterReportValue:v4];
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

      softwareVersionString = self->_softwareVersionString;
      self->_softwareVersionString = v23;

      goto LABEL_23;
    }
  }

  else
  {
  }

  v25 = [v5 cluster];
  v26 = [v25 isEqualToNumber:&unk_283EE8A48];

  if (!v26)
  {
LABEL_23:
    v28 = 0;
    goto LABEL_24;
  }

  v27 = [(HMMTRAccessoryServer *)self matterFirmwareUpdateStatus];
  [v27 handleOTARequestorAttributeReport:v4];

LABEL_22:
  v28 = 1;
LABEL_24:

  return v28;
}

void __55__HMMTRAccessoryServer__handleUnmappedAttributeReport___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) chipDelegate];
  [v2 didUpdatePairingsForAccessoryServer:*(a1 + 32)];
}

- (void)isDiscoverableWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(HAPAccessoryServer *)self clientQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __53__HMMTRAccessoryServer_isDiscoverableWithCompletion___block_invoke;
  v7[3] = &unk_2786EF5A8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

uint64_t __53__HMMTRAccessoryServer_isDiscoverableWithCompletion___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) removalInProgress])
  {
    v2 = objc_autoreleasePoolPush();
    v3 = *(a1 + 32);
    v4 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
LABEL_5:

      objc_autoreleasePoolPop(v2);
      result = (*(*(a1 + 40) + 16))(*(a1 + 40), 0);
      v8 = *MEMORY[0x277D85DE8];
      return result;
    }

    v5 = HMFGetLogIdentifier();
    v11 = 138543362;
    v12 = v5;
    v6 = "%{public}@Do not discover server - Removal in progress";
LABEL_4:
    _os_log_impl(&dword_22AEAE000, v4, OS_LOG_TYPE_INFO, v6, &v11, 0xCu);

    goto LABEL_5;
  }

  if (([*(a1 + 32) mtrDeviceConnected] & 1) == 0 && objc_msgSend(*(a1 + 32), "_shouldUpdateUnreachableState"))
  {
    v2 = objc_autoreleasePoolPush();
    v3 = *(a1 + 32);
    v4 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      goto LABEL_5;
    }

    v5 = HMFGetLogIdentifier();
    v11 = 138543362;
    v12 = v5;
    v6 = "%{public}@Do not discover server - MTRDevice state is not reachable";
    goto LABEL_4;
  }

  v9 = *(*(a1 + 40) + 16);
  v10 = *MEMORY[0x277D85DE8];

  return v9();
}

- (void)triggerEstablishingMatterSubscription
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __61__HMMTRAccessoryServer_triggerEstablishingMatterSubscription__block_invoke;
  v2[3] = &unk_2786F0CA8;
  v2[4] = self;
  [(HMMTRAccessoryServer *)self dispatchBlock:v2];
}

void __61__HMMTRAccessoryServer_triggerEstablishingMatterSubscription__block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  if (isFeatureMatteriPhoneOnlyPairingControlEnabled())
  {
    v2 = [*(a1 + 32) matterDevice];
    v3 = objc_opt_respondsToSelector();

    if (v3)
    {
      v4 = [*(a1 + 32) shouldReestablishSubscription];
      v5 = objc_autoreleasePoolPush();
      v6 = *(a1 + 32);
      v7 = HMFGetOSLogHandle();
      v8 = os_log_type_enabled(v7, OS_LOG_TYPE_INFO);
      if (v4)
      {
        if (v8)
        {
          v9 = HMFGetLogIdentifier();
          v13 = 138543362;
          v14 = v9;
          _os_log_impl(&dword_22AEAE000, v7, OS_LOG_TYPE_INFO, "%{public}@Calling MTRDevice _deviceMayBeReachable", &v13, 0xCu);
        }

        objc_autoreleasePoolPop(v5);
        v10 = [*(a1 + 32) matterDevice];
        [v10 _deviceMayBeReachable];
      }

      else
      {
        if (v8)
        {
          v11 = HMFGetLogIdentifier();
          v13 = 138543362;
          v14 = v11;
          _os_log_impl(&dword_22AEAE000, v7, OS_LOG_TYPE_INFO, "%{public}@Skipping calling _deviceMayBeReachable, no change in networking state since last successful subscription", &v13, 0xCu);
        }

        objc_autoreleasePoolPop(v5);
      }
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)markAsSubscribed
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v8 = 138543362;
    v9 = v6;
    _os_log_impl(&dword_22AEAE000, v5, OS_LOG_TYPE_INFO, "%{public}@Accessory marked as subscribed", &v8, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  [(HMMTRAccessoryServer *)v4 setShouldReestablishSubscription:0];
  v7 = *MEMORY[0x277D85DE8];
}

- (void)markForResubscription
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v8 = 138543362;
    v9 = v6;
    _os_log_impl(&dword_22AEAE000, v5, OS_LOG_TYPE_INFO, "%{public}@Accessory marked for resubscription", &v8, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  [(HMMTRAccessoryServer *)v4 setShouldReestablishSubscription:1];
  v7 = *MEMORY[0x277D85DE8];
}

- (void)_setupMatterDevice
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = [(HAPAccessoryServer *)self clientQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(HMMTRAccessoryServer *)self isDisabled];
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_INFO);
  if (v4)
  {
    if (v8)
    {
      v9 = HMFGetLogIdentifier();
      *buf = 138543362;
      v29 = v9;
      _os_log_impl(&dword_22AEAE000, v7, OS_LOG_TYPE_INFO, "%{public}@Setup-reporting block called after server is disabled. Ignored.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
  }

  else
  {
    if (v8)
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543362;
      v29 = v10;
      _os_log_impl(&dword_22AEAE000, v7, OS_LOG_TYPE_INFO, "%{public}@Request to setup reporting", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
    v11 = [(HMMTRAccessoryServer *)v6 matterDevice];
    v12 = v11 == 0;

    if (v12)
    {
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __42__HMMTRAccessoryServer__setupMatterDevice__block_invoke;
      v27[3] = &unk_2786EF6C0;
      v27[4] = v6;
      v13 = MEMORY[0x2318887D0](v27);
      (v13)[2](v13, v6);
      v14 = [(HMMTRAccessoryServer *)v6 matterDevice];
      v15 = v14 == 0;

      if (!v15 && ![(HMMTRAccessoryServer *)v6 controllerRevokeHandlerRegistered])
      {
        [(HMMTRAccessoryServer *)v6 setControllerRevokeHandlerRegistered:1];
        objc_initWeak(&location, v6);
        v16 = [(HMMTRAccessoryServer *)v6 controllerWrapper];
        v17 = [(HAPAccessoryServer *)v6 clientQueue];
        v23[0] = MEMORY[0x277D85DD0];
        v23[1] = 3221225472;
        v23[2] = __42__HMMTRAccessoryServer__setupMatterDevice__block_invoke_308;
        v23[3] = &unk_2786EF6E8;
        objc_copyWeak(&v25, &location);
        v24 = v13;
        [v16 registerRevokeHandlerWithQueue:v17 handler:v23];

        v18 = objc_autoreleasePoolPush();
        v19 = v6;
        v20 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          v21 = HMFGetLogIdentifier();
          *buf = 138543362;
          v29 = v21;
          _os_log_impl(&dword_22AEAE000, v20, OS_LOG_TYPE_INFO, "%{public}@Registered controller revoke handler", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v18);
        objc_destroyWeak(&v25);
        objc_destroyWeak(&location);
      }
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

void __42__HMMTRAccessoryServer__setupMatterDevice__block_invoke(uint64_t a1, void *a2)
{
  v34 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 controllerWrapper];

  v5 = objc_autoreleasePoolPush();
  v6 = v3;
  v7 = HMFGetOSLogHandle();
  v8 = v7;
  if (v4)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v32 = 138543362;
      v33 = v9;
      _os_log_impl(&dword_22AEAE000, v8, OS_LOG_TYPE_INFO, "%{public}@Setting up MTRDevice", &v32, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
    [*(a1 + 32) markForResubscription];
    v10 = [v6 nodeID];
    v11 = [v6 deviceController];
    v12 = [v6 mtrDeviceWithNodeID:v10 controller:v11];
    [v6 setMatterDevice:v12];

    v13 = [v6 matterDevice];
    v14 = [v6 clientQueue];
    [v13 setDelegate:v6 queue:v14];

    v15 = [v6 matterDevice];
    LODWORD(v14) = [v15 deviceCachePrimed];

    v16 = [v6 reportDistributor];
    v17 = v16;
    if (v14)
    {
      [v16 allAttributesReady];
    }

    else
    {
      [v16 allAttributesNotReady];
    }

    v19 = [v6 matterDevice];
    v20 = [v19 state];
    v21 = v20 == 1;

    [v6 setMtrDeviceStateReported:v21];
    [v6 setMtrDeviceConnected:v21];
    if (v20 == 1)
    {
      v22 = [v6 browser];
      v23 = [v22 isCurrentDevicePrimaryResident];

      if (v23)
      {
        v24 = [v6 browser];
        [v24 notifyDiscoveredAccessoryServer:v6];
      }
    }

    else
    {
      v25 = [v6 matterDevice];
      v26 = [v25 deviceCachePrimed];

      if ((v26 & 1) == 0)
      {
        v27 = objc_autoreleasePoolPush();
        v28 = v6;
        v29 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
        {
          v30 = HMFGetLogIdentifier();
          v32 = 138543362;
          v33 = v30;
          _os_log_impl(&dword_22AEAE000, v29, OS_LOG_TYPE_INFO, "%{public}@Server starting as unreachable as MTRDevice is unreachable and its cache is not primed", &v32, 0xCu);
        }

        objc_autoreleasePoolPop(v27);
        [v28 setReachable:0];
      }
    }
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v18 = HMFGetLogIdentifier();
      v32 = 138543362;
      v33 = v18;
      _os_log_impl(&dword_22AEAE000, v8, OS_LOG_TYPE_DEBUG, "%{public}@Not setting up MTRDevice for a disabled accessory server", &v32, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
  }

  v31 = *MEMORY[0x277D85DE8];
}

uint64_t __42__HMMTRAccessoryServer__setupMatterDevice__block_invoke_308(uint64_t a1, void *a2, char a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = WeakRetained;
  if ((a3 & 1) == 0)
  {
    v13 = [WeakRetained reportDistributor];
    [v13 allAttributesNotReady];

    [v7 setMatterDevice:0];
    [v7 _flushMTRDeviceReadReadyHandlers];
    v14 = objc_autoreleasePoolPush();
    v15 = v7;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = HMFGetLogIdentifier();
      v20 = 138543362;
      v21 = v17;
      _os_log_impl(&dword_22AEAE000, v16, OS_LOG_TYPE_INFO, "%{public}@Device controller wrapper is disabled.", &v20, 0xCu);
    }

    objc_autoreleasePoolPop(v14);
    if (v7)
    {
      goto LABEL_5;
    }

LABEL_9:
    v12 = 0;
    goto LABEL_10;
  }

  v8 = objc_autoreleasePoolPush();
  v9 = v7;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v20 = 138543362;
    v21 = v11;
    _os_log_impl(&dword_22AEAE000, v10, OS_LOG_TYPE_INFO, "%{public}@Device controller wrapper is revoked and back online. Setting up MTRDevice again.", &v20, 0xCu);
  }

  objc_autoreleasePoolPop(v8);
  (*(*(a1 + 32) + 16))();
  if (!v7)
  {
    goto LABEL_9;
  }

LABEL_5:
  v12 = [v7 isDisabled] ^ 1;
LABEL_10:

  v18 = *MEMORY[0x277D85DE8];
  return v12;
}

- (void)setupReporting
{
  v3 = [(HAPAccessoryServer *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__HMMTRAccessoryServer_setupReporting__block_invoke;
  block[3] = &unk_2786F0CA8;
  block[4] = self;
  dispatch_async(v3, block);
}

- (BOOL)isDisabled
{
  if ([(HAPAccessoryServer *)self isReachable])
  {
    return 0;
  }

  v4 = [(HMMTRAccessoryServer *)self controllerWrapper];
  v3 = v4 == 0;

  return v3;
}

- (void)_flushMTRDeviceReadReadyHandlers
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = [(HMMTRAccessoryServer *)self pendingMTRDeviceReadReadyHandlers];
  v4 = [v3 allValues];

  v5 = [(HMMTRAccessoryServer *)self pendingMTRDeviceReadReadyHandlers];
  [v5 removeAllObjects];

  if (([v4 hmf_isEmpty] & 1) == 0)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      *buf = 138543362;
      v22 = v9;
      _os_log_impl(&dword_22AEAE000, v8, OS_LOG_TYPE_INFO, "%{public}@Flushing all pending MTRDevice read-ready handlers", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v10 = v4;
  v11 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v17;
    do
    {
      v14 = 0;
      do
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(v10);
        }

        (*(*(*(&v16 + 1) + 8 * v14) + 16))(*(*(&v16 + 1) + 8 * v14));
        ++v14;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v12);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)handleRemoveFromBrowser
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
    _os_log_impl(&dword_22AEAE000, v5, OS_LOG_TYPE_INFO, "%{public}@Handling remove from browser", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v7 = [(HAPAccessoryServer *)v4 clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__HMMTRAccessoryServer_handleRemoveFromBrowser__block_invoke;
  block[3] = &unk_2786F0CA8;
  block[4] = v4;
  dispatch_async(v7, block);

  v8 = *MEMORY[0x277D85DE8];
}

uint64_t __47__HMMTRAccessoryServer_handleRemoveFromBrowser__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) controllerWrapper];
  v3 = [*(a1 + 32) clientQueue];
  [v2 deregisterRevokeHandlersWithQueue:v3];

  v4 = [*(a1 + 32) serviceEnumerationFromDeviceCompletionHandlers];
  [v4 removeAllObjects];

  v5 = *(a1 + 32);

  return [v5 _flushMTRDeviceReadReadyHandlers];
}

- (void)disable
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    *buf = 138543362;
    v17 = v6;
    _os_log_impl(&dword_22AEAE000, v5, OS_LOG_TYPE_INFO, "%{public}@disabling", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v7 = [(HMMTRAccessoryServer *)v4 matterFirmwareUpdateStatus];
  v8 = [v7 otaProviderState];

  if (v8 == 4)
  {
    v9 = [(HMMTRAccessoryServer *)v4 matterFirmwareUpdateStatus];
    [v9 updateFirmwareUpdateStatus:0];
  }

  [(HAPAccessoryServer *)v4 setReachable:0];
  [(HAPAccessoryServer *)v4 setSecuritySessionOpen:0];
  v10 = [(HMMTRAccessoryServer *)v4 controllerWrapper];
  v11 = [(HAPAccessoryServer *)v4 clientQueue];
  [v10 deregisterRevokeHandlersWithQueue:v11];

  [(HMMTRAccessoryServer *)v4 setControllerWrapper:0];
  [(HMMTRAccessoryServer *)v4 setMatterDevice:0];
  [(HMMTRAccessoryServer *)v4 setDoorLockCluster:0];
  [(HMMTRAccessoryServer *)v4 setDoorLockClusterFuture:0];
  v12 = [(HMMTRAccessoryServer *)v4 reachabilityManager];
  [v12 stop];

  v13 = [(HAPAccessoryServer *)v4 clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __31__HMMTRAccessoryServer_disable__block_invoke;
  block[3] = &unk_2786F0CA8;
  block[4] = v4;
  dispatch_async(v13, block);

  v14 = *MEMORY[0x277D85DE8];
}

uint64_t __31__HMMTRAccessoryServer_disable__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) serviceEnumerationFromDeviceCompletionHandlers];
  [v2 removeAllObjects];

  v3 = *(a1 + 32);

  return [v3 _flushMTRDeviceReadReadyHandlers];
}

- (void)discoverAccessories
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
    _os_log_impl(&dword_22AEAE000, v5, OS_LOG_TYPE_INFO, "%{public}@discoverAccessories", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v7 = [(HAPAccessoryServer *)v4 clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__HMMTRAccessoryServer_discoverAccessories__block_invoke;
  block[3] = &unk_2786F0CA8;
  block[4] = v4;
  dispatch_async(v7, block);

  v8 = *MEMORY[0x277D85DE8];
}

void __43__HMMTRAccessoryServer_discoverAccessories__block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) servicesEnumerated];
  v3 = *(a1 + 32);
  if (v2)
  {
    if ([v3 _delegateRespondsToSelector:sel_accessoryServer_didDiscoverAccessories_transaction_error_])
    {
      v4 = objc_autoreleasePoolPush();
      v5 = *(a1 + 32);
      v6 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = HMFGetLogIdentifier();
        *buf = 138543362;
        v14 = v7;
        _os_log_impl(&dword_22AEAE000, v6, OS_LOG_TYPE_INFO, "%{public}@Did discover accessories", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v4);
      v8 = [*(a1 + 32) delegateQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __43__HMMTRAccessoryServer_discoverAccessories__block_invoke_303;
      block[3] = &unk_2786F0CA8;
      block[4] = *(a1 + 32);
      dispatch_async(v8, block);
    }

    if ([*(a1 + 32) mtrDeviceConnected])
    {
      [*(a1 + 32) _updateDelegateOfConnectionStatus:1 withError:0];
    }
  }

  else if ([v3 serviceEnumerationFailed] && objc_msgSend(*(a1 + 32), "_delegateRespondsToSelector:", sel_accessoryServer_didDiscoverAccessories_transaction_error_))
  {
    v9 = [*(a1 + 32) delegateQueue];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __43__HMMTRAccessoryServer_discoverAccessories__block_invoke_2;
    v11[3] = &unk_2786F0CA8;
    v11[4] = *(a1 + 32);
    dispatch_async(v9, v11);
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __43__HMMTRAccessoryServer_discoverAccessories__block_invoke_303(uint64_t a1)
{
  v5 = [*(a1 + 32) delegate];
  v2 = *(a1 + 32);
  v3 = [v2 accessories];
  v4 = [v3 copy];
  [v5 accessoryServer:v2 didDiscoverAccessories:v4 transaction:0 error:0];
}

void __43__HMMTRAccessoryServer_discoverAccessories__block_invoke_2(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v10 = 138543362;
    v11 = v5;
    _os_log_impl(&dword_22AEAE000, v4, OS_LOG_TYPE_INFO, "%{public}@Did fail discovering accessories", &v10, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  v6 = [*(a1 + 32) delegate];
  v7 = *(a1 + 32);
  v8 = [MEMORY[0x277CCA9B8] hapErrorWithCode:19 description:@"Accessory enumeration failed" reason:0 suggestion:0 underlyingError:0];
  [v6 accessoryServer:v7 didDiscoverAccessories:0 transaction:0 error:v8];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)listPairingsWithCompletionQueue:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __74__HMMTRAccessoryServer_listPairingsWithCompletionQueue_completionHandler___block_invoke;
  v8[3] = &unk_2786EF5A8;
  v8[4] = self;
  v9 = v6;
  v7 = v6;
  dispatch_async(a3, v8);
}

uint64_t __74__HMMTRAccessoryServer_listPairingsWithCompletionQueue_completionHandler___block_invoke(uint64_t a1)
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
    _os_log_impl(&dword_22AEAE000, v4, OS_LOG_TYPE_INFO, "%{public}@CHIP Accessory List Pairings a WIP", &v8, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  result = (*(*(a1 + 40) + 16))();
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)isPairedInStorage
{
  v3 = [(HMMTRAccessoryServer *)self nodeID];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = [(HMMTRAccessoryServer *)self fabricID];

  if (!v5)
  {
    return 0;
  }

  v6 = [(HMMTRAccessoryServer *)self knownToSystemCommissioner];
  v7 = [(HMMTRAccessoryServer *)self browser];
  v8 = v7;
  if (v6)
  {
    v9 = [v7 storageForSystemCommissioner];

    v10 = [v9 pairedNodeIDsOnSystemCommissionerFabric:1];
    v11 = [(HMMTRAccessoryServer *)self nodeID];
    v12 = [v10 containsObject:v11];
    v8 = v9;
  }

  else
  {
    v10 = [v7 storage];
    v11 = [v10 dataSource];
    v13 = [(HMMTRAccessoryServer *)self fabricUUID];
    v14 = [v11 storageDataSourceForFabricUUID:v13];
    v15 = [v14 allNodeIDs];
    v16 = [(HMMTRAccessoryServer *)self nodeID];
    v12 = [v15 containsObject:v16];
  }

  return v12;
}

- (void)commitStagedPairing
{
  v3 = [(HAPAccessoryServer *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__HMMTRAccessoryServer_commitStagedPairing__block_invoke;
  block[3] = &unk_2786F0CA8;
  block[4] = self;
  dispatch_async(v3, block);
}

void __43__HMMTRAccessoryServer_commitStagedPairing__block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) pairedState];
  v3 = objc_autoreleasePoolPush();
  v4 = *(a1 + 32);
  v5 = HMFGetOSLogHandle();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_INFO);
  if (v2 == 2)
  {
    if (v6)
    {
      v7 = HMFGetLogIdentifier();
      v10 = 138543362;
      v11 = v7;
      _os_log_impl(&dword_22AEAE000, v5, OS_LOG_TYPE_INFO, "%{public}@Committing staged server by marking as paired and notifying the delegate", &v10, 0xCu);
    }

    objc_autoreleasePoolPop(v3);
    [*(a1 + 32) _finalizePairing];
  }

  else
  {
    if (v6)
    {
      v8 = HMFGetLogIdentifier();
      v10 = 138543362;
      v11 = v8;
      _os_log_impl(&dword_22AEAE000, v5, OS_LOG_TYPE_INFO, "%{public}@Ignoring attempt to commit a server that is not staged", &v10, 0xCu);
    }

    objc_autoreleasePoolPop(v3);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_onUnpairFinishedWithError:(id)a3 queue:(id)a4 completion:(id)a5
{
  v45 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 domain];
  v12 = [v11 isEqualToString:*MEMORY[0x277CD5120]];

  if (v12)
  {
    v13 = [MEMORY[0x277CCA9B8] hapErrorWithCode:1];

    v8 = v13;
  }

  [(HMMTRAccessoryServer *)self setPairedState:0];
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v14 = [(HAPAccessoryServer *)self accessories];
  v15 = [v14 countByEnumeratingWithState:&v36 objects:v44 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v37;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v37 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v36 + 1) + 8 * i);
        v20 = [(HAPAccessoryServer *)self keyStore];
        v21 = [v19 identifier];
        [v20 removeAccessoryKeyForName:v21 error:0];
      }

      v16 = [v14 countByEnumeratingWithState:&v36 objects:v44 count:16];
    }

    while (v16);
  }

  [(HMMTRAccessoryServer *)self _deleteAccessoryServerData];
  v22 = [(HMMTRAccessoryServer *)self browser];
  v23 = [MEMORY[0x277CCA9B8] hmmtrErrorWithCode:12];
  [v22 abortOperationsForAccessoryServer:self reason:v23];

  [(HMMTRAccessoryServer *)self disable];
  [(HMMTRAccessoryServer *)self setRemovalInProgress:0];
  v24 = objc_autoreleasePoolPush();
  v25 = self;
  v26 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
  {
    v27 = HMFGetLogIdentifier();
    *buf = 138543618;
    v41 = v27;
    v42 = 2112;
    v43 = v8;
    _os_log_impl(&dword_22AEAE000, v26, OS_LOG_TYPE_INFO, "%{public}@CHIP Accessory unpair completed. Error: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v24);
  v28 = [(HMMTRAccessoryServer *)v25 browser];
  v29 = [MEMORY[0x277CCA9B8] hmmtrErrorWithCode:12];
  [v28 invalidateAccessoryServer:v25 reason:v29];

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__HMMTRAccessoryServer__onUnpairFinishedWithError_queue_completion___block_invoke;
  block[3] = &unk_2786EF5A8;
  v34 = v8;
  v35 = v10;
  v30 = v8;
  v31 = v10;
  dispatch_async(v9, block);

  v32 = *MEMORY[0x277D85DE8];
}

void __68__HMMTRAccessoryServer__onUnpairFinishedWithError_queue_completion___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x2318887D0](*(a1 + 40));
  if (v2)
  {
    v3 = v2;
    v2[2](v2, *(a1 + 32));
    v2 = v3;
  }
}

- (void)_unpair:(id)a3 completion:(id)a4
{
  v33 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  discriminator = self->_discriminator;
  self->_discriminator = 0;

  setUpPINCode = self->_setUpPINCode;
  self->_setUpPINCode = 0;

  v10 = [(HMMTRAccessoryServer *)self deviceController];
  if ([(HMMTRAccessoryServer *)self isPaired]|| [(HMMTRAccessoryServer *)self commissioningCompleted])
  {
    [(HMMTRAccessoryServer *)self setRemovalInProgress:1];
    if (v10)
    {
      v11 = [(HMMTRAccessoryServer *)self mtrBaseDeviceWithNodeID:self->_nodeID controller:v10];
      if (v11)
      {
        v12 = objc_alloc(MEMORY[0x277D0F7A8]);
        v13 = [(HAPAccessoryServer *)self clientQueue];
        v14 = [v12 initWithQueue:v13];

        *buf = _HMFThreadLocalAsyncContextPush();
        v15 = [(HAPAccessoryServer *)self clientQueue];
        v25[0] = MEMORY[0x277D85DD0];
        v25[1] = 3221225472;
        v25[2] = __43__HMMTRAccessoryServer__unpair_completion___block_invoke_300;
        v25[3] = &unk_2786F0C10;
        v25[4] = self;
        v26 = v6;
        v27 = v7;
        [v11 unpairDevice:v15 completionHandler:v25];

        _HMFThreadLocalAsyncContextPop();
      }

      else
      {
        v20 = objc_autoreleasePoolPush();
        v21 = self;
        v22 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          v23 = HMFGetLogIdentifier();
          *buf = 138543362;
          *&buf[4] = v23;
          _os_log_impl(&dword_22AEAE000, v22, OS_LOG_TYPE_ERROR, "%{public}@Failed to get device for unpairing. The device will not be notified of removal", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v20);
        v14 = [MEMORY[0x277CCA9B8] hapErrorWithCode:1];
        [(HMMTRAccessoryServer *)v21 _onUnpairFinishedWithError:v14 queue:v6 completion:v7];
      }
    }

    else
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __43__HMMTRAccessoryServer__unpair_completion___block_invoke_2;
      block[3] = &unk_2786EF5A8;
      block[4] = self;
      v29 = v7;
      dispatch_async(v6, block);
    }
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
      *&buf[4] = v19;
      _os_log_impl(&dword_22AEAE000, v18, OS_LOG_TYPE_ERROR, "%{public}@Ignoring unpair request as accessory is not paired", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v16);
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __43__HMMTRAccessoryServer__unpair_completion___block_invoke;
    v30[3] = &unk_2786EF5A8;
    v30[4] = v17;
    v31 = v7;
    dispatch_async(v6, v30);
  }

  v24 = *MEMORY[0x277D85DE8];
}

void __43__HMMTRAccessoryServer__unpair_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setRemoveReason:0 pairingEndContextWhenRemove:0];
  v2 = [*(a1 + 32) browser];
  v3 = *(a1 + 32);
  v4 = [MEMORY[0x277CCA9B8] hmmtrErrorWithCode:12];
  [v2 abortOperationsForAccessoryServer:v3 reason:v4];

  [*(a1 + 32) disable];
  v5 = [*(a1 + 32) browser];
  v6 = *(a1 + 32);
  v7 = [MEMORY[0x277CCA9B8] hmmtrErrorWithCode:12];
  [v5 invalidateAccessoryServer:v6 reason:v7];

  v8 = MEMORY[0x2318887D0](*(a1 + 40));
  if (v8)
  {
    v10 = v8;
    v9 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CD5120] code:6 userInfo:0];
    v10[2](v10, v9);

    v8 = v10;
  }
}

void __43__HMMTRAccessoryServer__unpair_completion___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setRemoveReason:0 pairingEndContextWhenRemove:0];
  v2 = [*(a1 + 32) browser];
  v3 = *(a1 + 32);
  v4 = [MEMORY[0x277CCA9B8] hmmtrErrorWithCode:12];
  [v2 abortOperationsForAccessoryServer:v3 reason:v4];

  [*(a1 + 32) setRemovalInProgress:0];
  [*(a1 + 32) disable];
  v5 = [*(a1 + 32) browser];
  v6 = *(a1 + 32);
  v7 = [MEMORY[0x277CCA9B8] hmmtrErrorWithCode:12];
  [v5 invalidateAccessoryServer:v6 reason:v7];

  v8 = MEMORY[0x2318887D0](*(a1 + 40));
  if (v8)
  {
    v10 = v8;
    v9 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CD5120] code:6 userInfo:0];
    v10[2](v10, v9);

    v8 = v10;
  }
}

void __43__HMMTRAccessoryServer__unpair_completion___block_invoke_300(uint64_t a1, void *a2)
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
    _os_log_impl(&dword_22AEAE000, v6, OS_LOG_TYPE_INFO, "%{public}@Unpair Status: %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  [*(a1 + 32) _onUnpairFinishedWithError:v3 queue:*(a1 + 40) completion:*(a1 + 48)];

  v8 = *MEMORY[0x277D85DE8];
}

- (BOOL)removePairingForCurrentControllerOnQueue:(id)a3 completion:(id)a4
{
  v57 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ([(HMMTRAccessoryServer *)self isDisabled])
  {
    v8 = objc_autoreleasePoolPush();
    v9 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543362;
      *&buf[4] = v11;
      _os_log_impl(&dword_22AEAE000, v10, OS_LOG_TYPE_INFO, "%{public}@Accessory server already disabled. Remove complete.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
    v12 = [(HMMTRAccessoryServer *)v9 browser];
    v13 = [MEMORY[0x277CCA9B8] hmmtrErrorWithCode:12];
    [v12 invalidateAccessoryServer:v9 reason:v13];

    v7[2](v7, 0);
  }

  else if ([(HMMTRAccessoryServer *)self operationDisabled]&& [(HMMTRAccessoryServer *)self operationDisabledReason]!= 1)
  {
    v23 = objc_autoreleasePoolPush();
    v24 = self;
    v25 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      v26 = HMFGetLogIdentifier();
      v27 = [(HMMTRAccessoryServer *)v24 operationDisabledReason];
      v28 = "";
      if (v27 == 2)
      {
        v28 = " because pairings are removed on accessory side";
      }

      *buf = 138543618;
      *&buf[4] = v26;
      *&buf[12] = 2080;
      *&buf[14] = v28;
      _os_log_impl(&dword_22AEAE000, v25, OS_LOG_TYPE_INFO, "%{public}@Operation disabled%s. Proceeding with removing accessory on the controller side.", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v23);
    v29 = [(HMMTRAccessoryServer *)v24 browser];
    v30 = v29;
    if (!v29 || ([v29 workQueue], v31 = objc_claimAutoreleasedReturnValue(), v32 = v31 == 0, v31, v32))
    {
      [(HMMTRAccessoryServer *)v24 _onUnpairFinishedWithError:0 queue:v6 completion:v7];
    }

    else
    {
      v33 = [v30 workQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __76__HMMTRAccessoryServer_removePairingForCurrentControllerOnQueue_completion___block_invoke;
      block[3] = &unk_2786EFA60;
      v51 = v30;
      v52 = v24;
      v53 = v6;
      v54 = v7;
      dispatch_async(v33, block);
    }
  }

  else
  {
    v14 = random();
    v15 = objc_autoreleasePoolPush();
    v16 = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      *buf = 138543618;
      *&buf[4] = v18;
      *&buf[12] = 2048;
      *&buf[14] = v14;
      _os_log_impl(&dword_22AEAE000, v17, OS_LOG_TYPE_INFO, "%{public}@Characteristics Operation Queue: unpair job(%lu) queued.", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v15);
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v56 = 0;
    [(HMMTRAccessoryServer *)v16 setRemovalInProgress:1];
    v19 = [(HMMTRAccessoryServer *)v16 browser];
    v20 = [MEMORY[0x277CCA9B8] hmmtrErrorWithCode:12];
    [v19 removeAccessoryServer:v16 fromDiscoveredAccessoryServerListWithReason:v20];

    v45[0] = MEMORY[0x277D85DD0];
    v45[1] = 3221225472;
    v45[2] = __76__HMMTRAccessoryServer_removePairingForCurrentControllerOnQueue_completion___block_invoke_292;
    v45[3] = &unk_2786EF648;
    v45[4] = v16;
    v49 = v14;
    v46 = v6;
    v48 = buf;
    v47 = v7;
    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = __76__HMMTRAccessoryServer_removePairingForCurrentControllerOnQueue_completion___block_invoke_296;
    v40[3] = &unk_2786EF670;
    v43 = buf;
    v44 = v14;
    v40[4] = v16;
    v41 = v46;
    v21 = v47;
    v42 = v21;
    [(HMMTRAccessoryServer *)v16 queueAccessoryOperation:v45 highPriority:1 completion:v40];
    v22 = dispatch_time(0, 5000000000);
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __76__HMMTRAccessoryServer_removePairingForCurrentControllerOnQueue_completion___block_invoke_2_298;
    v36[3] = &unk_2786EF698;
    v36[4] = v16;
    v38 = buf;
    v39 = v14;
    v37 = v21;
    [(HMMTRAccessoryServer *)v16 dispatchAfter:v22 block:v36];

    _Block_object_dispose(buf, 8);
  }

  v34 = *MEMORY[0x277D85DE8];
  return 1;
}

void __76__HMMTRAccessoryServer_removePairingForCurrentControllerOnQueue_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = [MEMORY[0x277CCA9B8] hmmtrErrorWithCode:12];
  [v2 invalidateAccessoryServer:v3 reason:v4];

  v5 = [*(a1 + 40) clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __76__HMMTRAccessoryServer_removePairingForCurrentControllerOnQueue_completion___block_invoke_2;
  block[3] = &unk_2786F0EA8;
  v6 = *(a1 + 48);
  block[4] = *(a1 + 40);
  v8 = v6;
  v9 = *(a1 + 56);
  dispatch_async(v5, block);
}

void __76__HMMTRAccessoryServer_removePairingForCurrentControllerOnQueue_completion___block_invoke_292(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 64);
    *buf = 138543618;
    v22 = v5;
    v23 = 2048;
    v24 = v6;
    _os_log_impl(&dword_22AEAE000, v4, OS_LOG_TYPE_INFO, "%{public}@Characteristics Operation Queue: unpair job(%lu) started.", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v7 = dispatch_group_create();
  dispatch_group_enter(v7);
  v8 = [*(a1 + 32) clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __76__HMMTRAccessoryServer_removePairingForCurrentControllerOnQueue_completion___block_invoke_293;
  block[3] = &unk_2786EF5F8;
  v9 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v18 = v9;
  v15 = *(a1 + 48);
  v10 = v15;
  v20 = v15;
  v19 = v7;
  v11 = v7;
  dispatch_async(v8, block);

  v12 = [*(a1 + 32) clientQueue];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __76__HMMTRAccessoryServer_removePairingForCurrentControllerOnQueue_completion___block_invoke_3;
  v16[3] = &unk_2786EF620;
  v13 = *(a1 + 64);
  v16[4] = *(a1 + 32);
  v16[5] = v13;
  dispatch_group_notify(v11, v12, v16);

  v14 = *MEMORY[0x277D85DE8];
}

void __76__HMMTRAccessoryServer_removePairingForCurrentControllerOnQueue_completion___block_invoke_296(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 32);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      v8 = *(a1 + 64);
      *buf = 138543618;
      v18 = v7;
      v19 = 2048;
      v20 = v8;
      _os_log_impl(&dword_22AEAE000, v6, OS_LOG_TYPE_INFO, "%{public}@Characteristics Operation Queue: unpair job(%lu) unscheduled.", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    v9 = *(a1 + 32);
    v10 = *MEMORY[0x277CFECD8];
    os_unfair_lock_lock_with_options();
    v11 = *(*(a1 + 56) + 8);
    if (*(v11 + 24))
    {
      os_unfair_lock_unlock((v9 + v10));
    }

    else
    {
      *(v11 + 24) = 1;
      os_unfair_lock_unlock((v9 + v10));
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __76__HMMTRAccessoryServer_removePairingForCurrentControllerOnQueue_completion___block_invoke_297;
      v14[3] = &unk_2786EF5A8;
      v12 = *(a1 + 40);
      v16 = *(a1 + 48);
      v15 = v3;
      dispatch_async(v12, v14);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __76__HMMTRAccessoryServer_removePairingForCurrentControllerOnQueue_completion___block_invoke_2_298(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = *MEMORY[0x277CFECD8];
  os_unfair_lock_lock_with_options();
  v4 = *(*(a1 + 48) + 8);
  if (*(v4 + 24))
  {
    v5 = *MEMORY[0x277D85DE8];

    os_unfair_lock_unlock((v2 + v3));
  }

  else
  {
    *(v4 + 24) = 1;
    os_unfair_lock_unlock((v2 + v3));
    v6 = objc_autoreleasePoolPush();
    v7 = *(a1 + 32);
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v10 = *(a1 + 56);
      v14 = 138543618;
      v15 = v9;
      v16 = 2048;
      v17 = v10;
      _os_log_impl(&dword_22AEAE000, v8, OS_LOG_TYPE_INFO, "%{public}@Characteristic Operation Queue: unpair job(%lu) timed out before completion", &v14, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    v11 = *(a1 + 40);
    v12 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:13];
    (*(v11 + 16))(v11, v12);

    v13 = *MEMORY[0x277D85DE8];
  }
}

void __76__HMMTRAccessoryServer_removePairingForCurrentControllerOnQueue_completion___block_invoke_293(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    *buf = 138543362;
    v16 = v5;
    _os_log_impl(&dword_22AEAE000, v4, OS_LOG_TYPE_INFO, "%{public}@Request to remove pairing for current controller", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __76__HMMTRAccessoryServer_removePairingForCurrentControllerOnQueue_completion___block_invoke_294;
  v11[3] = &unk_2786EF5D0;
  v14 = *(a1 + 64);
  v10 = *(a1 + 32);
  v6 = *(&v10 + 1);
  v7 = *(a1 + 56);
  *&v8 = *(a1 + 48);
  *(&v8 + 1) = v7;
  v12 = v10;
  v13 = v8;
  [v10 _unpair:v6 completion:v11];

  v9 = *MEMORY[0x277D85DE8];
}

void __76__HMMTRAccessoryServer_removePairingForCurrentControllerOnQueue_completion___block_invoke_3(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 40);
    v8 = 138543618;
    v9 = v5;
    v10 = 2048;
    v11 = v6;
    _os_log_impl(&dword_22AEAE000, v4, OS_LOG_TYPE_INFO, "%{public}@Characteristics Operation Queue: unpair job(%lu) complete.", &v8, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v7 = *MEMORY[0x277D85DE8];
}

void __76__HMMTRAccessoryServer_removePairingForCurrentControllerOnQueue_completion___block_invoke_294(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *MEMORY[0x277CFECD8];
  os_unfair_lock_lock_with_options();
  v6 = *(*(a1 + 64) + 8);
  if (*(v6 + 24))
  {
    os_unfair_lock_unlock((v4 + v5));
  }

  else
  {
    *(v6 + 24) = 1;
    os_unfair_lock_unlock((v4 + v5));
    v7 = *(a1 + 40);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __76__HMMTRAccessoryServer_removePairingForCurrentControllerOnQueue_completion___block_invoke_2_295;
    v8[3] = &unk_2786EF5A8;
    v10 = *(a1 + 56);
    v9 = v3;
    dispatch_async(v7, v8);
  }

  dispatch_group_leave(*(a1 + 48));
}

- (void)removePairing:(id)a3 completionQueue:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a5;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __72__HMMTRAccessoryServer_removePairing_completionQueue_completionHandler___block_invoke;
  block[3] = &unk_2786F0EA8;
  block[4] = self;
  v13 = v8;
  v14 = v9;
  v10 = v9;
  v11 = v8;
  dispatch_async(a4, block);
}

uint64_t __72__HMMTRAccessoryServer_removePairing_completionQueue_completionHandler___block_invoke(uint64_t a1)
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
    _os_log_impl(&dword_22AEAE000, v4, OS_LOG_TYPE_INFO, "%{public}@CHIP Accessory Remove Pairing is a WIP. Removal requested for pairing identity %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  result = (*(*(a1 + 48) + 16))();
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)addPairing:(id)a3 completionQueue:(id)a4 completionHandler:(id)a5
{
  v7 = a5;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __69__HMMTRAccessoryServer_addPairing_completionQueue_completionHandler___block_invoke;
  v9[3] = &unk_2786EF5A8;
  v9[4] = self;
  v10 = v7;
  v8 = v7;
  dispatch_async(a4, v9);
}

uint64_t __69__HMMTRAccessoryServer_addPairing_completionQueue_completionHandler___block_invoke(uint64_t a1)
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
    _os_log_impl(&dword_22AEAE000, v4, OS_LOG_TYPE_INFO, "%{public}@CHIP Accessory Add Pairing is a WIP", &v8, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  result = (*(*(a1 + 40) + 16))();
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)stopPairingWithError:(id *)a3 metricsReadyHandler:(id)a4
{
  v5 = a4;
  objc_initWeak(&location, self);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __65__HMMTRAccessoryServer_stopPairingWithError_metricsReadyHandler___block_invoke;
  v7[3] = &unk_2786EF580;
  objc_copyWeak(&v9, &location);
  v6 = v5;
  v8 = v6;
  [(HMMTRAccessoryServer *)self dispatchBlock:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __65__HMMTRAccessoryServer_stopPairingWithError_metricsReadyHandler___block_invoke(uint64_t a1)
{
  v37 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = objc_autoreleasePoolPush();
  v4 = WeakRetained;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    *buf = 138543362;
    v34 = v6;
    _os_log_impl(&dword_22AEAE000, v5, OS_LOG_TYPE_INFO, "%{public}@Attempting to stop pairing.", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  [v4 setPairingProgress:0];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __65__HMMTRAccessoryServer_stopPairingWithError_metricsReadyHandler___block_invoke_289;
  v30[3] = &unk_2786EF558;
  v7 = *(a1 + 32);
  v30[4] = v4;
  v31 = v7;
  objc_copyWeak(&v32, (a1 + 40));
  v8 = MEMORY[0x2318887D0](v30);
  v9 = [v4 deviceController];
  v10 = [v4[56] unsignedLongLongValue];
  v29 = 0;
  [v9 stopDevicePairing:v10 error:&v29];
  v11 = v29;

  if (![v4 commissionCompletePending])
  {
    v12 = objc_autoreleasePoolPush();
    v16 = v4;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v17 = HMFGetLogIdentifier();
      *buf = 138543362;
      v34 = v17;
      _os_log_impl(&dword_22AEAE000, v14, OS_LOG_TYPE_INFO, "%{public}@stopPairing will not wait for metrics submission because commissioning complete callback is not guaranteed", buf, 0xCu);
    }

    goto LABEL_9;
  }

  if (v11)
  {
    v12 = objc_autoreleasePoolPush();
    v13 = v4;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543618;
      v34 = v15;
      v35 = 2112;
      v36 = v11;
      _os_log_impl(&dword_22AEAE000, v14, OS_LOG_TYPE_ERROR, "%{public}@CHIP Accessory failed to stop Pairing with Error: %@", buf, 0x16u);
    }

LABEL_9:

    objc_autoreleasePoolPop(v12);
    v8[2](v8);
    goto LABEL_10;
  }

  v19 = [v4 commissionMetricsReadyHandler];
  if (v19)
  {

    v20 = *(a1 + 32) == 0;
    v12 = objc_autoreleasePoolPush();
    v21 = v4;
    if (!v20)
    {
      v14 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v22 = HMFGetLogIdentifier();
        *buf = 138543362;
        v34 = v22;
        _os_log_impl(&dword_22AEAE000, v14, OS_LOG_TYPE_ERROR, "%{public}@Commission metrics ready handler was already set when another handler was requested. The second handler is called regardless of metrics readiness.", buf, 0xCu);
      }

      goto LABEL_9;
    }

LABEL_19:
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v28 = HMFGetLogIdentifier();
      *buf = 138543362;
      v34 = v28;
      _os_log_impl(&dword_22AEAE000, v14, OS_LOG_TYPE_ERROR, "%{public}@stopPairing requested without metrics ready handler", buf, 0xCu);
    }

    goto LABEL_9;
  }

  v23 = *(a1 + 32) == 0;
  v12 = objc_autoreleasePoolPush();
  v24 = v4;
  if (v23)
  {
    goto LABEL_19;
  }

  v25 = v24;
  v26 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
  {
    v27 = HMFGetLogIdentifier();
    *buf = 138543362;
    v34 = v27;
    _os_log_impl(&dword_22AEAE000, v26, OS_LOG_TYPE_INFO, "%{public}@stopPairing will wait for controller:commissioningComplete: callback before removing pairing so that Matter metrics can be propagated", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v12);
  [v25 setCommissionMetricsReadyHandler:v8];
LABEL_10:

  objc_destroyWeak(&v32);
  v18 = *MEMORY[0x277D85DE8];
}

void __65__HMMTRAccessoryServer_stopPairingWithError_metricsReadyHandler___block_invoke_289(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(a1 + 32);
  v4 = [v3 clientQueue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __65__HMMTRAccessoryServer_stopPairingWithError_metricsReadyHandler___block_invoke_2;
  v5[3] = &unk_2786EF530;
  objc_copyWeak(&v6, (a1 + 48));
  [v3 removePairingForCurrentControllerOnQueue:v4 completion:v5];

  objc_destroyWeak(&v6);
}

void __65__HMMTRAccessoryServer_stopPairingWithError_metricsReadyHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = objc_autoreleasePoolPush();
  v6 = WeakRetained;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = HMFGetLogIdentifier();
    v15 = 138543618;
    v16 = v8;
    v17 = 2112;
    v18 = v3;
    _os_log_impl(&dword_22AEAE000, v7, OS_LOG_TYPE_DEBUG, "%{public}@Pairing stopped and accessory pairing removed with error: %@", &v15, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  if (isFeatureMatteriPhoneOnlyPairingControlEnabled())
  {
    v9 = objc_autoreleasePoolPush();
    v10 = v6;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v12 = HMFGetLogIdentifier();
      v15 = 138543362;
      v16 = v12;
      _os_log_impl(&dword_22AEAE000, v11, OS_LOG_TYPE_DEBUG, "%{public}@Resetting storage state after pairing error", &v15, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
    v13 = [v10 browser];
    [v13 setUpBrowserTargetFabricAndRediscoverAccessoriesForHomeFabricUUID:0];
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (BOOL)tryPairingPassword:(id)a3 onboardingSetupPayloadString:(id)a4 error:(id *)a5
{
  v22 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = [(HMMTRAccessoryServer *)self locallyDiscovered];
  if (v9)
  {
    v10 = [(HAPAccessoryServer *)self clientQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __78__HMMTRAccessoryServer_tryPairingPassword_onboardingSetupPayloadString_error___block_invoke;
    block[3] = &unk_2786EF3C8;
    block[4] = self;
    v18 = v7;
    v19 = v8;
    dispatch_async(v10, block);
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    v12 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543362;
      v21 = v14;
      _os_log_impl(&dword_22AEAE000, v13, OS_LOG_TYPE_INFO, "%{public}@CHIP Accessory in current state cannot try pairing password.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v11);
  }

  v15 = *MEMORY[0x277D85DE8];
  return v9;
}

void __78__HMMTRAccessoryServer_tryPairingPassword_onboardingSetupPayloadString_error___block_invoke(uint64_t a1)
{
  v30 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CCABB0];
  v3 = [*(a1 + 40) stringByReplacingOccurrencesOfString:@"-" withString:&stru_283ED2308];
  v4 = [v2 numberWithLongLong:{objc_msgSend(v3, "longLongValue")}];
  [*(a1 + 32) setSetUpPINCode:v4];

  [*(a1 + 32) setOnboardingSetupPayloadString:*(a1 + 48)];
  v5 = objc_autoreleasePoolPush();
  v6 = *(a1 + 32);
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = *(a1 + 40);
    v10 = [*(a1 + 32) setUpPINCode];
    v11 = *(a1 + 48);
    *buf = 138544130;
    v23 = v8;
    v24 = 2112;
    v25 = v9;
    v26 = 2112;
    v27 = v10;
    v28 = 2112;
    v29 = v11;
    _os_log_impl(&dword_22AEAE000, v7, OS_LOG_TYPE_INFO, "%{public}@Move forward with pairing a discovered accessory with password: %@, used PIN code: %@, onboarding setup payload: %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v5);
  v12 = *(a1 + 32);
  v20 = 0;
  v21 = 0;
  [v12 _startPairingWithError:&v21 pairingEndContext:&v20];
  v13 = v21;
  v14 = v20;
  if (v13)
  {
    v15 = objc_autoreleasePoolPush();
    v16 = *(a1 + 32);
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      *buf = 138543618;
      v23 = v18;
      v24 = 2112;
      v25 = v13;
      _os_log_impl(&dword_22AEAE000, v17, OS_LOG_TYPE_ERROR, "%{public}@CHIP Accessory pairing failed with error %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v15);
    [*(a1 + 32) setPairedState:0];
    [*(a1 + 32) _handlePairingFailureWithError:v13 context:v14];
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)setPrimaryAccessory:(id)a3
{
  v4 = a3;
  v5 = *MEMORY[0x277CFECD8];
  os_unfair_lock_lock_with_options();
  if (self->_primaryAccessory)
  {
    _HMFPreconditionFailure();
    __break(1u);
  }

  else
  {
    self->_primaryAccessory = v4;
    os_unfair_lock_unlock((self + v5));

    [(HMMTRAccessoryServer *)self _initAccessoriesForServer];
  }
}

- (void)_initAccessoriesForServer
{
  v6[1] = *MEMORY[0x277D85DE8];
  v3 = [(HMMTRAccessoryServer *)self primaryAccessory];
  v6[0] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];
  [(HAPAccessoryServer *)self setAccessories:v4];

  v5 = *MEMORY[0x277D85DE8];
}

- (HAPAccessory)primaryAccessory
{
  v3 = *MEMORY[0x277CFECD8];
  os_unfair_lock_lock_with_options();
  v4 = self->_primaryAccessory;
  os_unfair_lock_unlock((self + v3));

  return v4;
}

- (void)setPairingProgress:(unint64_t)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = HMFGetLogIdentifier();
    v11 = 138543874;
    v12 = v8;
    v13 = 2048;
    v14 = a3;
    v15 = 2112;
    v16 = v6;
    _os_log_impl(&dword_22AEAE000, v7, OS_LOG_TYPE_DEBUG, "%{public}@Pairing progress updated: %tu for server: %@", &v11, 0x20u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = *MEMORY[0x277CFECD8];
  os_unfair_lock_lock_with_options();
  v6->_pairingProgress = a3;
  os_unfair_lock_unlock((v6 + v9));
  v10 = *MEMORY[0x277D85DE8];
}

- (unint64_t)pairingProgress
{
  v3 = *MEMORY[0x277CFECD8];
  os_unfair_lock_lock_with_options();
  pairingProgress = self->_pairingProgress;
  os_unfair_lock_unlock((self + v3));
  return pairingProgress;
}

- (BOOL)matchesSetupID:(id)a3 serverIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (![(HMMTRAccessoryServer *)self isKnownToSystemCommissioner]&& v6 | v7 && [(HMMTRAccessoryServer *)self pairingProgress]!= 3)
  {
    if (v6)
    {
      v10 = [(HMMTRAccessoryServer *)self matchesSetupID:v6];
      if (v7)
      {
LABEL_8:
        v11 = [(HAPAccessoryServer *)self identifier];
        v12 = [v11 isEqualToString:v7];

LABEL_11:
        v8 = v10 & v12;
        goto LABEL_5;
      }
    }

    else
    {
      v10 = 1;
      if (v7)
      {
        goto LABEL_8;
      }
    }

    v12 = 1;
    goto LABEL_11;
  }

  v8 = 0;
LABEL_5:

  return v8;
}

- (BOOL)matchesSetupID:(id)a3
{
  v4 = a3;
  if (![(HMMTRAccessoryServer *)self isDisabled])
  {
    v5 = *MEMORY[0x277CFECD8];
    os_unfair_lock_lock_with_options();
    v6 = [(HMMTRAccessoryServer *)self discriminator];
    if (v6 && ([(HMMTRAccessoryServer *)self setUpPINCode], v7 = objc_claimAutoreleasedReturnValue(), v7, v6, v7))
    {
      v8 = [(HMMTRAccessoryServer *)self setUpPINCode];
      v9 = [(HMMTRAccessoryServer *)self discriminatorIsOriginatedFromShort];
      if (v9)
      {
        v10 = MEMORY[0x277CCABB0];
        v11 = [(HMMTRAccessoryServer *)self discriminator];
        v12 = [v10 numberWithUnsignedInteger:{objc_msgSend(v11, "unsignedIntegerValue") >> 8}];
      }

      else
      {
        v12 = [(HMMTRAccessoryServer *)self discriminator];
        v11 = v12;
      }

      v15 = [HMMTRUtilities setupIDFromSetupCode:v8 discriminator:v12];
      if (v9)
      {
      }

      os_unfair_lock_unlock((self + v5));
      if (v15)
      {
        v13 = [v15 isEqualToString:v4];

        goto LABEL_8;
      }
    }

    else
    {
      os_unfair_lock_unlock((self + v5));
    }
  }

  v13 = 0;
LABEL_8:

  return v13;
}

- (void)_startLocallyDiscoveredAccessoryServerPairingWithRequest:(id)a3 fabricID:(id)a4
{
  v61 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMMTRAccessoryServer *)self vendorID];
  if (v8)
  {
  }

  else
  {
    v9 = [(HMMTRAccessoryServer *)self productID];

    if (!v9)
    {
      goto LABEL_5;
    }
  }

  v10 = [(HMMTRAccessoryServer *)self currentDeviceTypeFromDCL];
  v11 = [(HMMTRAccessoryServer *)self vendorID];
  v12 = [(HMMTRAccessoryServer *)self productID];
  [(HMMTRAccessoryServer *)self _notifyDelegateOfMatterAccessoryVendorID:v11 productID:v12 deviceType:v10];

LABEL_5:
  v13 = [(HMMTRAccessoryServer *)self fabricUUID];

  v14 = objc_autoreleasePoolPush();
  v15 = self;
  v16 = HMFGetOSLogHandle();
  v17 = v16;
  if (v13)
  {
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      v19 = [(HMMTRAccessoryServer *)v15 fabricUUID];
      *buf = 138543618;
      v54 = v18;
      v55 = 2112;
      v56 = v19;
      _os_log_impl(&dword_22AEAE000, v17, OS_LOG_TYPE_INFO, "%{public}@Starting locally discovered accessory pairing for targetFabricUUID %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v14);
    v20 = [(HMMTRAccessoryServer *)v15 browser];
    v21 = [v20 homeFabricControllers];
    v22 = [(HMMTRAccessoryServer *)v15 fabricUUID];
    v23 = [v21 cachedWrapperWithTargetFabricUUID:v22];
    [(HMMTRAccessoryServer *)v15 setControllerWrapper:v23];

    v24 = [(HMMTRAccessoryServer *)v15 browser];
    [v24 setCommissioneeAccessoryServer:v15];

    v25 = [(HMMTRAccessoryServer *)v15 controllerWrapper];

    if (v25)
    {
      v26 = [(HMMTRAccessoryServer *)v15 controllerWrapper];
      v27 = [v26 startupParams];
      v28 = [v27 fabricID];

      if (v7 && ([v28 isEqual:v7] & 1) == 0)
      {
        v44 = objc_autoreleasePoolPush();
        v45 = v15;
        v46 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
        {
          v47 = HMFGetLogIdentifier();
          v48 = [(HMMTRAccessoryServer *)v45 fabricUUID];
          *buf = 138544130;
          v54 = v47;
          v55 = 2112;
          v56 = v48;
          v57 = 2112;
          v58 = v28;
          v59 = 2112;
          v60 = v7;
          _os_log_impl(&dword_22AEAE000, v46, OS_LOG_TYPE_ERROR, "%{public}@fabricUUID %@ retrieved fabricID %@ while pairingRequest had fabricID %@", buf, 0x2Au);
        }

        objc_autoreleasePoolPop(v44);
        v35 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:11];
        v49 = [v35 copy];
        v50 = [HMMTRAccessoryPairingEndContext hmmtrContextWithStep:1 error:v49];

        [(HMMTRAccessoryServer *)v45 _handlePairingFailureWithError:v35 context:v50];
      }

      else
      {
        [(HMMTRAccessoryServer *)v15 setFabricID:v28];
        v29 = [(HMMTRAccessoryServer *)v15 browser];
        v30 = [(HMMTRAccessoryServer *)v15 fabricUUID];
        [v29 addFabricWithActiveClientForTargetFabricUUID:v30];

        v31 = objc_autoreleasePoolPush();
        v32 = v15;
        v33 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
        {
          v34 = HMFGetLogIdentifier();
          *buf = 138543362;
          v54 = v34;
          _os_log_impl(&dword_22AEAE000, v33, OS_LOG_TYPE_INFO, "%{public}@Prompting for setup code for discovered accessory", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v31);
        v35 = [(HAPAccessoryServer *)v32 delegateQueue];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __90__HMMTRAccessoryServer__startLocallyDiscoveredAccessoryServerPairingWithRequest_fabricID___block_invoke;
        block[3] = &unk_2786F0CA8;
        block[4] = v32;
        dispatch_async(v35, block);
      }
    }

    else
    {
      v38 = objc_autoreleasePoolPush();
      v39 = v15;
      v40 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        v41 = HMFGetLogIdentifier();
        v42 = [(HMMTRAccessoryServer *)v39 fabricUUID];
        *buf = 138543618;
        v54 = v41;
        v55 = 2112;
        v56 = v42;
        _os_log_impl(&dword_22AEAE000, v40, OS_LOG_TYPE_ERROR, "%{public}@fabricUUID %@ didn't retrieve any fabric parameter", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v38);
      v28 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:11];
      v43 = [v28 copy];
      v35 = [HMMTRAccessoryPairingEndContext hmmtrContextWithStep:1 error:v43];

      [(HMMTRAccessoryServer *)v39 _handlePairingFailureWithError:v28 context:v35];
    }
  }

  else
  {
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v36 = HMFGetLogIdentifier();
      *buf = 138543362;
      v54 = v36;
      _os_log_impl(&dword_22AEAE000, v17, OS_LOG_TYPE_ERROR, "%{public}@fabricUUID was not set before starting pairing", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v14);
    v20 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:11];
    v37 = [v20 copy];
    v28 = [HMMTRAccessoryPairingEndContext hmmtrContextWithStep:1 error:v37];

    [(HMMTRAccessoryServer *)v15 _handlePairingFailureWithError:v20 context:v28];
  }

  v51 = *MEMORY[0x277D85DE8];
}

void __90__HMMTRAccessoryServer__startLocallyDiscoveredAccessoryServerPairingWithRequest_fabricID___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 accessoryServer:*(a1 + 32) promptUserForPasswordWithType:1];
}

- (void)startPairingWithRequest:(id)a3
{
  v4 = a3;
  v5 = [(HAPAccessoryServer *)self clientQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__HMMTRAccessoryServer_startPairingWithRequest___block_invoke;
  v7[3] = &unk_2786EF328;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __48__HMMTRAccessoryServer_startPairingWithRequest___block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 40);
    v7 = [*(a1 + 32) fabricUUID];
    *buf = 138543874;
    v24 = v5;
    v25 = 2112;
    v26 = v6;
    v27 = 2112;
    v28 = v7;
    _os_log_impl(&dword_22AEAE000, v4, OS_LOG_TYPE_INFO, "%{public}@Starting pairing with %@, server fabricUUID %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v2);
  [*(a1 + 32) setOnboardingSetupPayloadString:0];
  [*(a1 + 32) setPairingRequest:*(a1 + 40)];
  [*(a1 + 32) _setupPairingProperties];
  if ([*(a1 + 32) locallyDiscovered])
  {
    v8 = [*(a1 + 32) setupPayloadString];

    if (!v8)
    {
      if ([*(a1 + 32) _delegateRespondsToSelector:sel_accessoryServer_promptUserForPasswordWithType_])
      {
        v10 = [*(a1 + 40) chipFabricID];
        [*(a1 + 32) _startLocallyDiscoveredAccessoryServerPairingWithRequest:*(a1 + 40) fabricID:v10];
        goto LABEL_11;
      }

      v17 = objc_autoreleasePoolPush();
      v18 = *(a1 + 32);
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = HMFGetLogIdentifier();
        *buf = 138543362;
        v24 = v20;
        _os_log_impl(&dword_22AEAE000, v19, OS_LOG_TYPE_ERROR, "%{public}@Failed to dispatch setup code prompt request to delegate", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v17);
      v10 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D0F1A0] code:11 userInfo:0];
      v11 = [HMMTRAccessoryPairingEndContext hmmtrContextWithStep:1 error:v10];
      goto LABEL_9;
    }
  }

  [*(a1 + 32) setStageNetworkScanRequested:{objc_msgSend(*(a1 + 40), "doNetworkScan")}];
  v9 = *(a1 + 32);
  v21 = 0;
  v22 = 0;
  [v9 _startPairingWithError:&v22 pairingEndContext:&v21];
  v10 = v22;
  v11 = v21;
  if (v10)
  {
    v12 = objc_autoreleasePoolPush();
    v13 = *(a1 + 32);
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543618;
      v24 = v15;
      v25 = 2112;
      v26 = v10;
      _os_log_impl(&dword_22AEAE000, v14, OS_LOG_TYPE_ERROR, "%{public}@CHIP Accessory pairing failed with error %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
LABEL_9:
    [*(a1 + 32) _handlePairingFailureWithError:v10 context:v11];
  }

LABEL_11:
  v16 = *MEMORY[0x277D85DE8];
}

- (void)_setupPairingProperties
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    isFeatureMatteriPhoneOnlyPairingControlEnabled();
    v7 = HMFBooleanToString();
    v8 = [(HMMTRAccessoryServer *)v4 pairingTargetFabric];
    v9 = [(HMMTRAccessoryServer *)v4 pairingTargetFabric];
    v10 = [v9 delegate];
    [v10 requiresRemoteFabricDataUpdate];
    v11 = HMFBooleanToString();
    v16 = 138544130;
    v17 = v6;
    v18 = 2112;
    v19 = v7;
    v20 = 2112;
    v21 = v8;
    v22 = 2112;
    v23 = v11;
    _os_log_impl(&dword_22AEAE000, v5, OS_LOG_TYPE_INFO, "%{public}@_setupPairingProperties - iPhoneOnlyPairing: %@, pairingTargetFabric: %@, requiresRemoteFabricDataUpdate: %@", &v16, 0x2Au);
  }

  objc_autoreleasePoolPop(v3);
  if (isFeatureMatteriPhoneOnlyPairingControlEnabled())
  {
    v12 = [(HMMTRAccessoryServer *)v4 pairingTargetFabric];
    if (v12)
    {
      v13 = [(HMMTRAccessoryServer *)v4 pairingTargetFabric];
      v14 = [v13 delegate];
      -[HMMTRAccessoryServer setShouldPairWithoutResident:](v4, "setShouldPairWithoutResident:", [v14 requiresRemoteFabricDataUpdate] ^ 1);
    }

    else
    {
      [(HMMTRAccessoryServer *)v4 setShouldPairWithoutResident:0];
    }
  }

  else
  {
    [(HMMTRAccessoryServer *)v4 setShouldPairWithoutResident:0];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)abortStagingWithError:(id)a3 context:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HAPAccessoryServer *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__HMMTRAccessoryServer_abortStagingWithError_context___block_invoke;
  block[3] = &unk_2786EF3C8;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

uint64_t __54__HMMTRAccessoryServer_abortStagingWithError_context___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v10 = 138543362;
    v11 = v5;
    _os_log_impl(&dword_22AEAE000, v4, OS_LOG_TYPE_INFO, "%{public}@Aborting staging", &v10, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  v6 = [*(a1 + 32) deviceController];
  v7 = [*(a1 + 32) nodeID];
  [v6 stopDevicePairing:objc_msgSend(v7 error:{"unsignedLongLongValue"), 0}];

  result = [*(a1 + 32) _pairingComplete:*(a1 + 40) context:*(a1 + 48)];
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)currentDeviceTypeFromDCL
{
  v3 = [(HMMTRAccessoryServer *)self vendorID];

  if (v3)
  {
    v4 = [(HMMTRAccessoryServer *)self browser];
    v5 = [v4 vendorMetadataStore];
    v6 = [(HMMTRAccessoryServer *)self vendorID];
    v7 = [(HMMTRAccessoryServer *)self productID];
    v3 = [v5 retrieveVendorMetadataForVendorID:v6 productID:v7];
  }

  v8 = [(HMMTRAccessoryServer *)self productID];

  if (v8)
  {
    v9 = [(HMMTRAccessoryServer *)self productID];
    v10 = [v3 productWithID:v9];

    v8 = [v10 deviceTypeID];

    if (v8)
    {
      v8 = [v10 deviceTypeID];
    }
  }

  return v8;
}

- (BOOL)updateProductAttributes
{
  v98[1] = *MEMORY[0x277D85DE8];
  v4 = [(HMMTRAccessoryServer *)self vendorID];

  if (v4)
  {
    v5 = [(HMMTRAccessoryServer *)self browser];
    v6 = [v5 vendorMetadataStore];
    v7 = [(HMMTRAccessoryServer *)self vendorID];
    v8 = [(HMMTRAccessoryServer *)self productID];
    v9 = [v6 retrieveVendorMetadataForVendorID:v7 productID:v8];

    v10 = [v9 name];
    [(HMMTRAccessoryServer *)self setVendorNameFromDcl:v10];
  }

  else
  {
    v9 = 0;
  }

  v11 = [(HMMTRAccessoryServer *)self productID];

  if (v11)
  {
    v12 = [(HMMTRAccessoryServer *)self productID];
    v73 = v9;
    v13 = [v9 productWithID:v12];

    v14 = [v13 name];
    [(HMMTRAccessoryServer *)self setProductNameFromDcl:v14];

    v15 = [v13 categoryNumber];
    LOBYTE(v16) = v15 != 0;

    if (v15)
    {
      v17 = objc_autoreleasePoolPush();
      v18 = self;
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        v20 = HMFGetLogIdentifier();
        v2 = [(HAPAccessoryServer *)v18 category];
        v21 = [v13 categoryNumber];
        *buf = 138543874;
        v76 = v20;
        v77 = 2112;
        v78 = v2;
        v79 = 2112;
        v80 = v21;
        _os_log_impl(&dword_22AEAE000, v19, OS_LOG_TYPE_INFO, "%{public}@Updating product category from %@ to %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v17);
      v22 = [v13 categoryNumber];
      [(HAPAccessoryServer *)v18 setCategory:v22];

      v23 = objc_autoreleasePoolPush();
      v24 = v18;
      v25 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        v26 = HMFGetLogIdentifier();
        v2 = [v24 category];
        *buf = 138544386;
        v76 = v26;
        v77 = 2114;
        v78 = @"stagedPairingAccessoryInfo";
        v79 = 2112;
        v80 = @"Accessory Info";
        v81 = 2114;
        v82 = @"categoryNumber";
        v83 = 2112;
        v84 = v2;
        _os_log_impl(&dword_22AEAE000, v25, OS_LOG_TYPE_INFO, "%{public}@tag=%{public}@ desc=%@ %{public}@=%@", buf, 0x34u);
      }

      objc_autoreleasePoolPop(v23);
      v27 = [MEMORY[0x277D17DE8] sharedInstance];
      v28 = objc_alloc(MEMORY[0x277D17DF8]);
      v29 = [v24 category];
      if (v29)
      {
        v97 = @"categoryNumber";
        v2 = [v24 category];
        v98[0] = v2;
        v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v98 forKeys:&v97 count:1];
      }

      else
      {
        v30 = MEMORY[0x277CBEC10];
      }

      v31 = [v28 initWithTag:@"stagedPairingAccessoryInfo" data:v30];
      v32 = [v24[59] tagProcessorList];
      [v27 submitTaggedEvent:v31 processorList:v32];

      if (v29)
      {
      }
    }

    v33 = [v13 deviceTypeID];

    if (v33)
    {
      v34 = objc_autoreleasePoolPush();
      v16 = self;
      v35 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
      {
        v36 = HMFGetLogIdentifier();
        v37 = [(HMMTRAccessoryServer *)v16 deviceTypeIDFromDcl];
        v38 = [v13 deviceTypeID];
        *buf = 138543874;
        v76 = v36;
        v77 = 2112;
        v78 = v37;
        v79 = 2112;
        v80 = v38;
        _os_log_impl(&dword_22AEAE000, v35, OS_LOG_TYPE_INFO, "%{public}@Updating product device type from %@ to %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v34);
      v39 = [v13 deviceTypeID];
      [(HMMTRAccessoryServer *)v16 setDeviceTypeIDFromDcl:v39];

      LOBYTE(v16) = 1;
    }

    v40 = [v13 label];

    if (v40)
    {
      v41 = [v13 label];
      v42 = [HMMTRUtilities sanitizeHAPName:v41];

      v43 = objc_autoreleasePoolPush();
      v44 = self;
      v45 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
      {
        v46 = HMFGetLogIdentifier();
        v47 = [(HAPAccessoryServer *)v44 name];
        *buf = 138543874;
        v76 = v46;
        v77 = 2112;
        v78 = v47;
        v79 = 2112;
        v80 = v42;
        _os_log_impl(&dword_22AEAE000, v45, OS_LOG_TYPE_INFO, "%{public}@Updating product label from %@ to %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v43);
      if (v16)
      {
        LOBYTE(v16) = 1;
      }

      else
      {
        v48 = [(HAPAccessoryServer *)v44 name];
        LODWORD(v16) = [v48 isEqual:v42] ^ 1;
      }

      [(HAPAccessoryServer *)v44 setName:v42];
      v49 = [(HMMTRAccessoryServer *)v44 primaryAccessory];
      [v49 setName:v42];
    }

    v74 = v16;
    v72 = v13;
    v50 = objc_autoreleasePoolPush();
    v51 = self;
    v52 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
    {
      v53 = HMFGetLogIdentifier();
      v54 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMMTRAccessoryServer communicationProtocol](v51, "communicationProtocol")}];
      v55 = [(HMMTRAccessoryServer *)v51 vendorID];
      v56 = [(HMMTRAccessoryServer *)v51 productID];
      v57 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMMTRAccessoryServer knownToSystemCommissioner](v51, "knownToSystemCommissioner")}];
      *buf = 138545922;
      v76 = v53;
      v77 = 2114;
      v78 = @"stagedPairingAccessoryInfo";
      v79 = 2112;
      v80 = @"Accessory Info";
      v81 = 2114;
      v82 = @"communicationProtocol";
      v83 = 2112;
      v84 = v54;
      v85 = 2114;
      v86 = @"vendorNumber";
      v87 = 2112;
      v88 = v55;
      v89 = 2114;
      v90 = @"productID";
      v91 = 2112;
      v92 = v56;
      v93 = 2114;
      v94 = @"accessoryKnownToSystemCommissioner";
      v95 = 2112;
      v96 = v57;
      _os_log_impl(&dword_22AEAE000, v52, OS_LOG_TYPE_INFO, "%{public}@tag=%{public}@ desc=%@ %{public}@=%@ %{public}@=%@ %{public}@=%@ %{public}@=%@", buf, 0x70u);
    }

    objc_autoreleasePoolPop(v50);
    v58 = [MEMORY[0x277D17DE8] sharedInstance];
    v59 = objc_alloc(MEMORY[0x277D17DF8]);
    v60 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMMTRAccessoryServer communicationProtocol](v51, "communicationProtocol")}];
    v61 = [(HMMTRAccessoryServer *)v51 vendorID];
    v62 = [(HMMTRAccessoryServer *)v51 productID];
    v63 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMMTRAccessoryServer knownToSystemCommissioner](v51, "knownToSystemCommissioner")}];
    v64 = HMDTaggedLoggingCreateDictionary();
    v65 = [v59 initWithTag:@"stagedPairingAccessoryInfo" data:{v64, @"communicationProtocol", v60, @"vendorNumber", v61, @"productID", v62, @"accessoryKnownToSystemCommissioner", v63}];
    v66 = [(HMFActivity *)v51->_activity tagProcessorList];
    [v58 submitTaggedEvent:v65 processorList:v66];

    v9 = v73;
  }

  else
  {
    v74 = 0;
  }

  v67 = [(HMMTRAccessoryServer *)self vendorID];
  v68 = [(HMMTRAccessoryServer *)self productID];
  v69 = [(HMMTRAccessoryServer *)self deviceTypeIDFromDcl];
  [(HMMTRAccessoryServer *)self _notifyDelegateOfMatterAccessoryVendorID:v67 productID:v68 deviceType:v69];

  v70 = *MEMORY[0x277D85DE8];
  return v74;
}

- (void)validateAttestationDeviceInfo:(id)a3 error:(id)a4 completion:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = [(HAPAccessoryServer *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71__HMMTRAccessoryServer_validateAttestationDeviceInfo_error_completion___block_invoke;
  block[3] = &unk_2786F0EA8;
  block[4] = self;
  v13 = v7;
  v14 = v8;
  v10 = v8;
  v11 = v7;
  dispatch_async(v9, block);
}

void __71__HMMTRAccessoryServer_validateAttestationDeviceInfo_error_completion___block_invoke(id *a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = [a1[4] stageDeviceCredentialHandler];

  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x277CD5568]);
    v4 = [a1[5] certificateDeclaration];
    v5 = [a1[5] dacCertificate];
    v6 = [a1[5] dacPAICertificate];
    v7 = [v3 initWithCertificationDeclaration:v4 deviceAttestationCertificate:v5 productAttestationIntermediateCertificate:v6];

    v8 = objc_autoreleasePoolPush();
    v9 = a1[4];
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543362;
      v19 = v11;
      _os_log_impl(&dword_22AEAE000, v10, OS_LOG_TYPE_INFO, "%{public}@Calling custom device credential validation handler", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
    v12 = [a1[4] stageDeviceCredentialHandler];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __71__HMMTRAccessoryServer_validateAttestationDeviceInfo_error_completion___block_invoke_279;
    v16[3] = &unk_2786EF8A0;
    v16[4] = a1[4];
    v17 = a1[6];
    (v12)[2](v12, v7, v16);

    v13 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v14 = *(a1[6] + 2);
    v15 = *MEMORY[0x277D85DE8];

    v14();
  }
}

void __71__HMMTRAccessoryServer_validateAttestationDeviceInfo_error_completion___block_invoke_279(uint64_t a1, void *a2)
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
    _os_log_impl(&dword_22AEAE000, v6, OS_LOG_TYPE_INFO, "%{public}@Completed custom device credential validation with error: %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  (*(*(a1 + 40) + 16))();

  v8 = *MEMORY[0x277D85DE8];
}

- (void)updateVidPidWithAttestationDeviceInfo:(id)a3
{
  v38 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMMTRAccessoryServer *)self vendorID];
  if (v5 && (v6 = v5, [(HMMTRAccessoryServer *)self productID], v7 = objc_claimAutoreleasedReturnValue(), v7, v6, v7))
  {
    v8 = [(HMMTRAccessoryServer *)self vendorID];
    v9 = [v4 basicInformationVendorID];
    if ([v8 isEqualToNumber:v9])
    {
      v10 = [(HMMTRAccessoryServer *)self productID];
      v11 = [v4 basicInformationProductID];
      v12 = [v10 isEqualToNumber:v11];

      if (v12)
      {
        goto LABEL_13;
      }
    }

    else
    {
    }

    v13 = objc_autoreleasePoolPush();
    v22 = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      v17 = [(HMMTRAccessoryServer *)v22 vendorID];
      v18 = [(HMMTRAccessoryServer *)v22 productID];
      v19 = [v4 basicInformationVendorID];
      v20 = [v4 basicInformationProductID];
      v26 = 138544642;
      v27 = v16;
      v28 = 2112;
      v29 = v17;
      v30 = 2112;
      v31 = v18;
      v32 = 2112;
      v33 = v19;
      v34 = 2112;
      v35 = v20;
      v36 = 2112;
      v37 = v22;
      v21 = "%{public}@Accessory vid/pid (%@/%@) mismatch with deviceAttestation. Using vid/pid from deviceAttestation (%@/%@) for accessoryServer %@";
      goto LABEL_11;
    }
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    v14 = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      v17 = [(HMMTRAccessoryServer *)v14 vendorID];
      v18 = [(HMMTRAccessoryServer *)v14 productID];
      v19 = [v4 basicInformationVendorID];
      v20 = [v4 basicInformationProductID];
      v26 = 138544642;
      v27 = v16;
      v28 = 2112;
      v29 = v17;
      v30 = 2112;
      v31 = v18;
      v32 = 2112;
      v33 = v19;
      v34 = 2112;
      v35 = v20;
      v36 = 2112;
      v37 = v14;
      v21 = "%{public}@Accessory has nil vid/pid (%@/%@). Using vid/pid from deviceAttestation (%@/%@) for accessoryServer %@";
LABEL_11:
      _os_log_impl(&dword_22AEAE000, v15, OS_LOG_TYPE_INFO, v21, &v26, 0x3Eu);
    }
  }

  objc_autoreleasePoolPop(v13);
  v23 = [v4 basicInformationVendorID];
  [(HMMTRAccessoryServer *)self setVendorID:v23];

  v24 = [v4 basicInformationProductID];
  [(HMMTRAccessoryServer *)self setProductID:v24];

  [(HMMTRAccessoryServer *)self updateProductAttributes];
LABEL_13:

  v25 = *MEMORY[0x277D85DE8];
}

- (void)startStagedPairingWithDeviceCredentialHandler:(id)a3 wifiScanResultsHandler:(id)a4 threadScanResultsHandler:(id)a5 readyToCancelHandler:(id)a6 progressUpdateHandler:(id)a7 commissioneeInfoHandler:(id)a8 scanningNetworks:(BOOL)a9 completion:(id)a10
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  v22 = a10;
  v23 = [(HAPAccessoryServer *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __213__HMMTRAccessoryServer_startStagedPairingWithDeviceCredentialHandler_wifiScanResultsHandler_threadScanResultsHandler_readyToCancelHandler_progressUpdateHandler_commissioneeInfoHandler_scanningNetworks_completion___block_invoke;
  block[3] = &unk_2786EF508;
  block[4] = self;
  v32 = v16;
  v33 = v17;
  v34 = v18;
  v35 = v20;
  v36 = v21;
  v39 = a9;
  v37 = v22;
  v38 = v19;
  v24 = v19;
  v25 = v22;
  v26 = v21;
  v27 = v20;
  v28 = v18;
  v29 = v17;
  v30 = v16;
  dispatch_async(v23, block);
}

void __213__HMMTRAccessoryServer_startStagedPairingWithDeviceCredentialHandler_wifiScanResultsHandler_threadScanResultsHandler_readyToCancelHandler_progressUpdateHandler_commissioneeInfoHandler_scanningNetworks_completion___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) setPairedState:1];
  [*(a1 + 32) setStageDeviceCredentialHandler:*(a1 + 40)];
  [*(a1 + 32) setStageWiFiScanResultsHandler:*(a1 + 48)];
  [*(a1 + 32) setStageThreadScanResultsHandler:*(a1 + 56)];
  [*(a1 + 32) setStageProgressUpdateHandler:*(a1 + 64)];
  [*(a1 + 32) setStageCommissioneeInfoHandler:*(a1 + 72)];
  [*(a1 + 32) setStageNetworkScanRequested:*(a1 + 96)];
  [*(a1 + 32) setStageCompletion:*(a1 + 80)];
  v2 = *(a1 + 32);
  v3 = *(a1 + 88);
  v10 = 0;
  [v2 _startPairingWithReadyToCancelHandler:v3 error:&v10 pairingEndContext:0];
  v4 = v10;
  if (v4)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = *(a1 + 32);
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      *buf = 138543618;
      v12 = v8;
      v13 = 2112;
      v14 = v4;
      _os_log_impl(&dword_22AEAE000, v7, OS_LOG_TYPE_ERROR, "%{public}@CHIP Accessory pairing failed with error %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    (*(*(a1 + 80) + 16))();
    [*(a1 + 32) setPairedState:0];
    [*(a1 + 32) setStageWiFiScanResultsHandler:0];
    [*(a1 + 32) setStageThreadScanResultsHandler:0];
    [*(a1 + 32) setStageProgressUpdateHandler:0];
    [*(a1 + 32) setStageCommissioneeInfoHandler:0];
    [*(a1 + 32) setStageNetworkScanRequested:0];
    [*(a1 + 32) setStageCompletion:0];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)startStagedPairingWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(HAPAccessoryServer *)self clientQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __57__HMMTRAccessoryServer_startStagedPairingWithCompletion___block_invoke;
  v7[3] = &unk_2786EF5A8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __57__HMMTRAccessoryServer_startStagedPairingWithCompletion___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) setPairedState:1];
  v2 = *(a1 + 32);
  v13 = 0;
  [v2 _startPairingWithError:&v13 pairingEndContext:0];
  v3 = v13;
  if (v3)
  {
    v4 = v3;
    v5 = objc_autoreleasePoolPush();
    v6 = *(a1 + 32);
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      *buf = 138543618;
      v15 = v8;
      v16 = 2112;
      v17 = v4;
      _os_log_impl(&dword_22AEAE000, v7, OS_LOG_TYPE_ERROR, "%{public}@CHIP Accessory pairing failed with error %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    v9 = [v4 domain];
    v10 = [v9 isEqualToString:*MEMORY[0x277CD5120]];

    if (v10)
    {
      v11 = [MEMORY[0x277CCA9B8] hapErrorWithCode:15];

      v4 = v11;
    }

    (*(*(a1 + 40) + 16))();
    [*(a1 + 32) setPairedState:0];
  }

  else
  {
    [*(a1 + 32) setStageCompletion:*(a1 + 40)];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (BOOL)hasNetworkProvisioningFailed:(unsigned int)a3
{
  v3 = self->_networkProvisioningFailures | a3;
  if ((~v3 & 3) == 0)
  {
    v3 |= 4u;
  }

  self->_networkProvisioningFailures = v3;
  return (v3 >> 2) & 1;
}

- (void)timerDidFire:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMMTRAccessoryServer *)self residentReachabilityUpdateWaitTimer];

  if (v5 == v4)
  {
    v10 = objc_autoreleasePoolPush();
    v11 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543362;
      v26 = v13;
      _os_log_impl(&dword_22AEAE000, v12, OS_LOG_TYPE_INFO, "%{public}@Waited long enough for resident to update reachability", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v10);
    [(HMMTRAccessoryServer *)v11 setResidentReachabilityUpdateWaitTimer:0];
  }

  else
  {
    v6 = [(HMMTRAccessoryServer *)self stateCaptureConfigChangeTimer];

    if (v6 == v4)
    {
      [(HMMTRAccessoryServer *)self setStateCaptureConfigChangeTimer:0];
      v20 = MEMORY[0x277D85DD0];
      v21 = 3221225472;
      v22 = __37__HMMTRAccessoryServer_timerDidFire___block_invoke;
      v23 = &unk_2786EF4E0;
      v24 = self;
      v8 = @"ConfigurationChange";
      v9 = &v20;
      goto LABEL_9;
    }

    v7 = [(HMMTRAccessoryServer *)self stateCaptureDeviceConnectedTimer];

    if (v7 == v4)
    {
      [(HMMTRAccessoryServer *)self setStateCaptureDeviceConnectedTimer:0];
      v15 = MEMORY[0x277D85DD0];
      v16 = 3221225472;
      v17 = __37__HMMTRAccessoryServer_timerDidFire___block_invoke_277;
      v18 = &unk_2786EF4E0;
      v19 = self;
      v8 = @"DeviceConnected";
      v9 = &v15;
LABEL_9:
      [(HMMTRAccessoryServer *)self generateAccessoryConfigurationForReason:v8 completionHandler:v9, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24];
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __37__HMMTRAccessoryServer_timerDidFire___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  v10 = v9;
  if (v6)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v12 = *(a1 + 32);
      v21 = 138543874;
      v22 = v11;
      v23 = 2112;
      v24 = v12;
      v25 = 2112;
      v26 = v6;
      _os_log_impl(&dword_22AEAE000, v10, OS_LOG_TYPE_ERROR, "%{public}@Accessory Configuration: completed for server:%@ with Error: %@.", &v21, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      v14 = [*(a1 + 32) nodeID];
      v15 = [*(a1 + 32) fabricID];
      v16 = [*(a1 + 32) objectID];
      v21 = 138544386;
      v22 = v13;
      v23 = 2112;
      v24 = v14;
      v25 = 2112;
      v26 = v15;
      v27 = 2112;
      v28 = v16;
      v29 = 2112;
      v30 = v5;
      _os_log_impl(&dword_22AEAE000, v10, OS_LOG_TYPE_INFO, "%{public}@Accessory Configuration for %@/%@(%@) %@", &v21, 0x34u);
    }

    objc_autoreleasePoolPop(v7);
    v17 = [v5 copy];
    [*(a1 + 32) setPartsListStateCaptureInformation:v17];

    if ([*(a1 + 32) partsListStateCaptureHandle])
    {
      [*(a1 + 32) _deregisterPartsListStateCaptureHandler];
    }

    v18 = *(a1 + 32);
    v19 = [v18 partsListStateCaptureInformation];
    [*(a1 + 32) setPartsListStateCaptureHandle:{objc_msgSend(v18, "_registerStateCaptureHandlerWithStateCaptureInformation:", v19)}];
  }

  v20 = *MEMORY[0x277D85DE8];
}

void __37__HMMTRAccessoryServer_timerDidFire___block_invoke_277(uint64_t a1, void *a2, void *a3)
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  v10 = v9;
  if (v6)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v12 = *(a1 + 32);
      v21 = 138543874;
      v22 = v11;
      v23 = 2112;
      v24 = v12;
      v25 = 2112;
      v26 = v6;
      _os_log_impl(&dword_22AEAE000, v10, OS_LOG_TYPE_ERROR, "%{public}@Accessory Configuration: completed for server:%@ with Error: %@.", &v21, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      v14 = [*(a1 + 32) nodeID];
      v15 = [*(a1 + 32) fabricID];
      v16 = [*(a1 + 32) objectID];
      v21 = 138544386;
      v22 = v13;
      v23 = 2112;
      v24 = v14;
      v25 = 2112;
      v26 = v15;
      v27 = 2112;
      v28 = v16;
      v29 = 2112;
      v30 = v5;
      _os_log_impl(&dword_22AEAE000, v10, OS_LOG_TYPE_INFO, "%{public}@Accessory Configuration for %@/%@(%@) %@", &v21, 0x34u);
    }

    objc_autoreleasePoolPop(v7);
    v17 = [v5 copy];
    [*(a1 + 32) setDeviceConnectedStateCaptureInformation:v17];

    if ([*(a1 + 32) deviceConnectedStateHandle])
    {
      [*(a1 + 32) _deregisterDeviceConnectedStateCaptureHandler];
    }

    v18 = *(a1 + 32);
    v19 = [v18 deviceConnectedStateCaptureInformation];
    [*(a1 + 32) setDeviceConnectedStateHandle:{objc_msgSend(v18, "_registerStateCaptureHandlerWithStateCaptureInformation:", v19)}];
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)queueAccessoryOperation:(id)a3 highPriority:(BOOL)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  if (isFeatureMatteriPhoneOnlyPairingControlEnabled())
  {
    v10 = [(HAPAccessoryServer *)self clientQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __72__HMMTRAccessoryServer_queueAccessoryOperation_highPriority_completion___block_invoke;
    block[3] = &unk_2786EF490;
    block[4] = self;
    v21 = v9;
    v22 = v8;
    v23 = a4;
    v11 = v9;
    v12 = v8;
    dispatch_async(v10, block);

    v13 = v21;
  }

  else
  {
    v14 = [(HAPAccessoryServer *)self clientQueue];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __72__HMMTRAccessoryServer_queueAccessoryOperation_highPriority_completion___block_invoke_269;
    v17[3] = &unk_2786EF4B8;
    v18 = v8;
    v19 = v9;
    v15 = v9;
    v16 = v8;
    dispatch_async(v14, v17);

    v13 = v18;
  }
}

void __72__HMMTRAccessoryServer_queueAccessoryOperation_highPriority_completion___block_invoke(uint64_t a1)
{
  v35 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) isDisabled])
  {
    v2 = objc_autoreleasePoolPush();
    v3 = *(a1 + 32);
    v4 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = HMFGetLogIdentifier();
      *buf = 138543362;
      v34 = v5;
      _os_log_impl(&dword_22AEAE000, v4, OS_LOG_TYPE_ERROR, "%{public}@Accessory server disabled by the time operation is executed", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v2);
    v6 = *(a1 + 40);
    v7 = [MEMORY[0x277CCA9B8] hapErrorWithCode:1];
    (*(v6 + 16))(v6, v7);
  }

  else
  {
    v8 = [*(a1 + 32) browser];
    if (v8 && (v9 = v8, [*(a1 + 32) browser], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_opt_respondsToSelector(), v10, v9, (v11 & 1) != 0))
    {
      v12 = objc_autoreleasePoolPush();
      v13 = *(a1 + 32);
      v14 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = HMFGetLogIdentifier();
        *buf = 138543362;
        v34 = v15;
        _os_log_impl(&dword_22AEAE000, v14, OS_LOG_TYPE_INFO, "%{public}@Connecting to an accessory for an operation", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v12);
      v16 = [*(a1 + 32) browser];
      v17 = *(a1 + 32);
      v18 = *(a1 + 56);
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __72__HMMTRAccessoryServer_queueAccessoryOperation_highPriority_completion___block_invoke_267;
      v27[3] = &unk_2786EF468;
      v27[4] = v17;
      v28 = *(a1 + 40);
      v29 = *(a1 + 48);
      [v16 connectToAccessoryWhenAllowed:v17 highPriority:v18 completion:v27];

      v19 = v28;
    }

    else
    {
      v20 = objc_autoreleasePoolPush();
      v21 = *(a1 + 32);
      v22 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v23 = HMFGetLogIdentifier();
        *buf = 138543362;
        v34 = v23;
        _os_log_impl(&dword_22AEAE000, v22, OS_LOG_TYPE_INFO, "%{public}@Executing an operation without connecting to the accessory", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v20);
      v24 = [*(a1 + 32) clientQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __72__HMMTRAccessoryServer_queueAccessoryOperation_highPriority_completion___block_invoke_266;
      block[3] = &unk_2786EF418;
      v25 = *(a1 + 40);
      block[4] = *(a1 + 32);
      v31 = v25;
      v32 = *(a1 + 48);
      dispatch_async(v24, block);

      v19 = v31;
    }
  }

  v26 = *MEMORY[0x277D85DE8];
}

uint64_t __72__HMMTRAccessoryServer_queueAccessoryOperation_highPriority_completion___block_invoke_269(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

void __72__HMMTRAccessoryServer_queueAccessoryOperation_highPriority_completion___block_invoke_266(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) isDisabled])
  {
    v2 = objc_autoreleasePoolPush();
    v3 = *(a1 + 32);
    v4 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = HMFGetLogIdentifier();
      v11 = 138543362;
      v12 = v5;
      _os_log_impl(&dword_22AEAE000, v4, OS_LOG_TYPE_ERROR, "%{public}@Accessory server disabled by the time operation is executed", &v11, 0xCu);
    }

    objc_autoreleasePoolPop(v2);
    v6 = *(a1 + 40);
    v7 = [MEMORY[0x277CCA9B8] hapErrorWithCode:1];
    (*(v6 + 16))(v6, v7);

    v8 = *MEMORY[0x277D85DE8];
  }

  else
  {
    (*(*(a1 + 48) + 16))();
    v9 = *(*(a1 + 40) + 16);
    v10 = *MEMORY[0x277D85DE8];

    v9();
  }
}

void __72__HMMTRAccessoryServer_queueAccessoryOperation_highPriority_completion___block_invoke_267(id *a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = a1[4];
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    *buf = 138543618;
    v18 = v7;
    v19 = 2112;
    v20 = v3;
    _os_log_impl(&dword_22AEAE000, v6, OS_LOG_TYPE_INFO, "%{public}@Connected to an accessory for an operation with error: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  v8 = [a1[4] clientQueue];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __72__HMMTRAccessoryServer_queueAccessoryOperation_highPriority_completion___block_invoke_268;
  v12[3] = &unk_2786EF440;
  v13 = v3;
  v9 = a1[5];
  v14 = a1[4];
  v15 = v9;
  v16 = a1[6];
  v10 = v3;
  dispatch_async(v8, v12);

  v11 = *MEMORY[0x277D85DE8];
}

void __72__HMMTRAccessoryServer_queueAccessoryOperation_highPriority_completion___block_invoke_268(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v2 = *(a1 + 48);
    v3 = *(*(a1 + 48) + 16);
    v4 = *MEMORY[0x277D85DE8];
LABEL_8:

    v3();
    return;
  }

  if (![*(a1 + 40) isDisabled])
  {
    (*(*(a1 + 56) + 16))();
    v3 = *(*(a1 + 48) + 16);
    v12 = *MEMORY[0x277D85DE8];
    goto LABEL_8;
  }

  v5 = objc_autoreleasePoolPush();
  v6 = *(a1 + 40);
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v8 = HMFGetLogIdentifier();
    v13 = 138543362;
    v14 = v8;
    _os_log_impl(&dword_22AEAE000, v7, OS_LOG_TYPE_ERROR, "%{public}@Accessory server disabled by the time operation is executed", &v13, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  v9 = *(a1 + 48);
  v10 = [MEMORY[0x277CCA9B8] hapErrorWithCode:1];
  (*(v9 + 16))(v9, v10);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_findSystemCommissionerPairingMatchingSetupPayload:(id)a3 systemCommissionerPairings:(id)a4 pairingManager:(id)a5
{
  v40 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([(HMMTRAccessoryServer *)self _pairingInProgressForMatterSupportFallback])
  {
    if ([v9 hmf_isEmpty])
    {
      v11 = objc_autoreleasePoolPush();
      v12 = self;
      v13 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = HMFGetLogIdentifier();
        *buf = 138543362;
        v37 = v14;
        _os_log_impl(&dword_22AEAE000, v13, OS_LOG_TYPE_INFO, "%{public}@Exhausted all system commissioner pairings to match onboarding setup payload", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v11);
      [(HMMTRAccessoryServer *)v12 _retryPairing];
    }

    else
    {
      v15 = [v9 objectAtIndexedSubscript:0];
      v16 = [MEMORY[0x277CCAA78] indexSetWithIndexesInRange:{1, objc_msgSend(v9, "count") - 1}];
      v17 = [v9 objectsAtIndexes:v16];

      v18 = objc_autoreleasePoolPush();
      v19 = self;
      v20 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        v21 = HMFGetLogIdentifier();
        *buf = 138543618;
        v37 = v21;
        v38 = 2112;
        v39 = v15;
        _os_log_impl(&dword_22AEAE000, v20, OS_LOG_TYPE_DEBUG, "%{public}@Checking %@ for onboarding setup payload match", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v18);
      v22 = [v15 setupPayload];
      v23 = [v22 isEqualAsOnboarding:v8];

      if (v23)
      {
        v24 = objc_autoreleasePoolPush();
        v25 = v19;
        v26 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
        {
          v27 = HMFGetLogIdentifier();
          v28 = [v15 uuid];
          *buf = 138543618;
          v37 = v27;
          v38 = 2112;
          v39 = v28;
          _os_log_impl(&dword_22AEAE000, v26, OS_LOG_TYPE_INFO, "%{public}@System commissioner pairing %@ matched onboarding payload. Checking whether it is connected.", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v24);
        v29 = [v15 uuid];
        v31[0] = MEMORY[0x277D85DD0];
        v31[1] = 3221225472;
        v31[2] = __117__HMMTRAccessoryServer__findSystemCommissionerPairingMatchingSetupPayload_systemCommissionerPairings_pairingManager___block_invoke;
        v31[3] = &unk_2786F0668;
        v31[4] = v25;
        v32 = v8;
        v33 = v17;
        v34 = v10;
        v35 = v15;
        [v34 readCommissioningWindowStatusForSystemCommissionerPairingUUID:v29 completionHandler:v31];
      }

      else
      {
        [(HMMTRAccessoryServer *)v19 findSystemCommissionerPairingMatchingSetupPayload:v8 systemCommissionerPairings:v17 pairingManager:v10];
      }
    }
  }

  v30 = *MEMORY[0x277D85DE8];
}

void __117__HMMTRAccessoryServer__findSystemCommissionerPairingMatchingSetupPayload_systemCommissionerPairings_pairingManager___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if ([*(a1 + 32) _pairingInProgressForMatterSupportFallback])
  {
    if (v6)
    {
      v7 = objc_autoreleasePoolPush();
      v8 = *(a1 + 32);
      v9 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = HMFGetLogIdentifier();
        *buf = 138543618;
        v20 = v10;
        v21 = 2112;
        v22 = v6;
        _os_log_impl(&dword_22AEAE000, v9, OS_LOG_TYPE_ERROR, "%{public}@Failed to read commissioning window status: %@. Moving on to next.", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v7);
      [*(a1 + 32) findSystemCommissionerPairingMatchingSetupPayload:*(a1 + 40) systemCommissionerPairings:*(a1 + 48) pairingManager:*(a1 + 56)];
    }

    else if ([v5 isEqual:&unk_283EE89B8])
    {
      v11 = [*(a1 + 32) clientQueue];
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __117__HMMTRAccessoryServer__findSystemCommissionerPairingMatchingSetupPayload_systemCommissionerPairings_pairingManager___block_invoke_260;
      v17[3] = &unk_2786EF328;
      v17[4] = *(a1 + 32);
      v18 = *(a1 + 64);
      dispatch_async(v11, v17);
    }

    else
    {
      v12 = objc_autoreleasePoolPush();
      v13 = *(a1 + 32);
      v14 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = HMFGetLogIdentifier();
        *buf = 138543618;
        v20 = v15;
        v21 = 2112;
        v22 = v5;
        _os_log_impl(&dword_22AEAE000, v14, OS_LOG_TYPE_ERROR, "%{public}@System commissioner pairing commissioning window is open (%@). This must not be used as staged accessory for next pairing to avoid disrupting other on-going pairing attempt.", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v12);
      [*(a1 + 32) _retryPairing];
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __117__HMMTRAccessoryServer__findSystemCommissionerPairingMatchingSetupPayload_systemCommissionerPairings_pairingManager___block_invoke_260(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) _pairingInProgressForMatterSupportFallback])
  {
    v2 = [*(a1 + 32) browser];
    if (v2)
    {
      v3 = [*(a1 + 40) nodeID];
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __117__HMMTRAccessoryServer__findSystemCommissionerPairingMatchingSetupPayload_systemCommissionerPairings_pairingManager___block_invoke_261;
      v16[3] = &unk_2786EF3F0;
      v4 = *(a1 + 40);
      v16[4] = *(a1 + 32);
      v17 = v4;
      [v2 accessoryServerForSystemCommissionerDeviceWithNodeID:v3 completionHandler:v16];
    }

    else
    {
      v9 = objc_autoreleasePoolPush();
      v10 = *(a1 + 32);
      v11 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = HMFGetLogIdentifier();
        *buf = 138543362;
        v19 = v12;
        _os_log_impl(&dword_22AEAE000, v11, OS_LOG_TYPE_ERROR, "%{public}@No accessory server browser. Aborting attempt to return system commissioner accessory as staged accessory.", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v9);
      v13 = [MEMORY[0x277CCA9B8] hapErrorWithCode:15];
      v14 = [HMMTRAccessoryPairingEndContext hmmtrContextWithStep:2 error:v13];
      [*(a1 + 32) _handlePairingFailureWithError:v13 context:v14];
    }
  }

  else
  {
    v5 = objc_autoreleasePoolPush();
    v6 = *(a1 + 32);
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      *buf = 138543362;
      v19 = v8;
      _os_log_impl(&dword_22AEAE000, v7, OS_LOG_TYPE_INFO, "%{public}@Pairing timed out already when matching system commissioner pairing was verified to be connected.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __117__HMMTRAccessoryServer__findSystemCommissionerPairingMatchingSetupPayload_systemCommissionerPairings_pairingManager___block_invoke_261(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __117__HMMTRAccessoryServer__findSystemCommissionerPairingMatchingSetupPayload_systemCommissionerPairings_pairingManager___block_invoke_2;
  block[3] = &unk_2786EF3C8;
  v5 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, block);
}

void __117__HMMTRAccessoryServer__findSystemCommissionerPairingMatchingSetupPayload_systemCommissionerPairings_pairingManager___block_invoke_2(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) _pairingInProgressForMatterSupportFallback])
  {
    v2 = *(a1 + 40);
    v3 = objc_autoreleasePoolPush();
    v4 = *(a1 + 32);
    v5 = HMFGetOSLogHandle();
    v6 = v5;
    if (v2)
    {
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v7 = HMFGetLogIdentifier();
        v8 = *(a1 + 40);
        v17 = 138543618;
        v18 = v7;
        v19 = 2112;
        v20 = v8;
        _os_log_impl(&dword_22AEAE000, v6, OS_LOG_TYPE_INFO, "%{public}@Returning system commissioner device as staged accessory server: %@", &v17, 0x16u);
      }

      objc_autoreleasePoolPop(v3);
      [*(a1 + 32) setPairedState:3];
      v9 = [*(a1 + 32) stageCompletion];
      v9[2](v9, 1, *(a1 + 40), 0);

      [*(a1 + 32) setStageCompletion:0];
    }

    else
    {
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v14 = HMFGetLogIdentifier();
        v15 = [*(a1 + 48) uuid];
        v17 = 138543618;
        v18 = v14;
        v19 = 2112;
        v20 = v15;
        _os_log_impl(&dword_22AEAE000, v6, OS_LOG_TYPE_ERROR, "%{public}@Could not fetch accessory server for system commissioner pairing %@", &v17, 0x16u);
      }

      objc_autoreleasePoolPop(v3);
      [*(a1 + 32) _retryPairing];
    }
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    v11 = *(a1 + 32);
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      v17 = 138543362;
      v18 = v13;
      _os_log_impl(&dword_22AEAE000, v12, OS_LOG_TYPE_INFO, "%{public}@Pairing timed out already when connected staged server was retrieved", &v17, 0xCu);
    }

    objc_autoreleasePoolPop(v10);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)findSystemCommissionerPairingMatchingSetupPayload:(id)a3 systemCommissionerPairings:(id)a4 pairingManager:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(HAPAccessoryServer *)self clientQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __116__HMMTRAccessoryServer_findSystemCommissionerPairingMatchingSetupPayload_systemCommissionerPairings_pairingManager___block_invoke;
  v15[3] = &unk_2786EF378;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(v11, v15);
}

- (void)_returnMatterSupportPairingAsStagedPairing
{
  v39 = *MEMORY[0x277D85DE8];
  v3 = [(HMMTRAccessoryServer *)self setupPayloadString];
  if (v3 && (v4 = v3, -[HMMTRAccessoryServer setupPayloadString](self, "setupPayloadString"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 isEqual:&stru_283ED2308], v5, v4, !v6))
  {
    v13 = MEMORY[0x277CD5528];
    v14 = [(HMMTRAccessoryServer *)self setupPayloadString];
    v32 = 0;
    v12 = [v13 setupPayloadWithOnboardingPayload:v14 error:&v32];
    v11 = v32;

    if (v11)
    {
      v15 = objc_autoreleasePoolPush();
      v16 = self;
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = HMFGetLogIdentifier();
        v19 = [(HMMTRAccessoryServer *)v16 setupPayloadString];
        *buf = 138543874;
        v34 = v18;
        v35 = 2112;
        v36 = v19;
        v37 = 2112;
        v38 = v11;
        _os_log_impl(&dword_22AEAE000, v17, OS_LOG_TYPE_ERROR, "%{public}@Parsing setup payload %@ failed: %@. Failing pairing without looking for matching MatterSupport pairing", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v15);
      v20 = [MEMORY[0x277CCA9B8] hapErrorWithCode:9];
      v21 = [HMMTRAccessoryPairingEndContext hmmtrContextWithStep:2 error:v20];
      [(HMMTRAccessoryServer *)v16 _handlePairingFailureWithError:v20 context:v21];
    }

    else
    {
      v22 = [(HMMTRAccessoryServer *)self browser];
      v23 = [v22 systemCommissionerPairingManager];

      if (v23)
      {
        v29[0] = MEMORY[0x277D85DD0];
        v29[1] = 3221225472;
        v29[2] = __66__HMMTRAccessoryServer__returnMatterSupportPairingAsStagedPairing__block_invoke;
        v29[3] = &unk_2786EF350;
        v29[4] = self;
        v30 = v12;
        v20 = v23;
        v31 = v20;
        [v20 fetchSystemCommissionerPairingsWithCompletionHandler:v29];
      }

      else
      {
        v24 = objc_autoreleasePoolPush();
        v25 = self;
        v26 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          v27 = HMFGetLogIdentifier();
          *buf = 138543362;
          v34 = v27;
          _os_log_impl(&dword_22AEAE000, v26, OS_LOG_TYPE_ERROR, "%{public}@No system commissioner pairing manager is available. Retrying pairing directly.", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v24);
        [(HMMTRAccessoryServer *)v25 _retryPairing];
        v20 = 0;
      }
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
      *buf = 138543362;
      v34 = v10;
      _os_log_impl(&dword_22AEAE000, v9, OS_LOG_TYPE_INFO, "%{public}@Pairing without onboarding payload. Hence, failing pairing without looking for matching MatterSupport pairing", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
    v11 = [MEMORY[0x277CCA9B8] hapErrorWithCode:9];
    v12 = [HMMTRAccessoryPairingEndContext hmmtrContextWithStep:2 error:v11];
    [(HMMTRAccessoryServer *)v8 _handlePairingFailureWithError:v11 context:v12];
  }

  v28 = *MEMORY[0x277D85DE8];
}

void __66__HMMTRAccessoryServer__returnMatterSupportPairingAsStagedPairing__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    [*(a1 + 32) findSystemCommissionerPairingMatchingSetupPayload:*(a1 + 40) systemCommissionerPairings:v5 pairingManager:*(a1 + 48)];
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 32);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v12 = 138543618;
      v13 = v10;
      v14 = 2112;
      v15 = v6;
      _os_log_impl(&dword_22AEAE000, v9, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch system commissioner pairings as fallback for staged pairing: %@", &v12, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    [*(a1 + 32) _retryPairing];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_tryPairingWithOnboardingPayload:(id)a3 systemCommissionerPairings:(id)a4 pairingManager:(id)a5
{
  v39 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([(HMMTRAccessoryServer *)self _pairingInProgressForMatterSupportFallback])
  {
    if ([v9 hmf_isEmpty])
    {
      v11 = objc_autoreleasePoolPush();
      v12 = self;
      v13 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = HMFGetLogIdentifier();
        *buf = 138543362;
        v36 = v14;
        _os_log_impl(&dword_22AEAE000, v13, OS_LOG_TYPE_INFO, "%{public}@Exhausted all system commissioner pairings to pair for onboarding setup payload", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v11);
      [(HMMTRAccessoryServer *)v12 _retryPairing];
    }

    else
    {
      v15 = [v9 objectAtIndexedSubscript:0];
      v16 = [MEMORY[0x277CCAA78] indexSetWithIndexesInRange:{1, objc_msgSend(v9, "count") - 1}];
      v17 = [v9 objectsAtIndexes:v16];

      v18 = objc_autoreleasePoolPush();
      v19 = self;
      v20 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        v21 = HMFGetLogIdentifier();
        *buf = 138543618;
        v36 = v21;
        v37 = 2112;
        v38 = v15;
        _os_log_impl(&dword_22AEAE000, v20, OS_LOG_TYPE_DEBUG, "%{public}@Checking %@ for onboarding setup payload match", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v18);
      v22 = [v15 setupPayload];
      v23 = [v22 isEqualAsOnboarding:v8];

      if (v23)
      {
        v24 = objc_autoreleasePoolPush();
        v25 = v19;
        v26 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
        {
          v27 = HMFGetLogIdentifier();
          v28 = [v15 uuid];
          *buf = 138543618;
          v36 = v27;
          v37 = 2112;
          v38 = v28;
          _os_log_impl(&dword_22AEAE000, v26, OS_LOG_TYPE_INFO, "%{public}@System commissioner pairing %@ matched onboarding payload. Attempting to open commissioning window", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v24);
        v29 = [v15 uuid];
        v31[0] = MEMORY[0x277D85DD0];
        v31[1] = 3221225472;
        v31[2] = __99__HMMTRAccessoryServer__tryPairingWithOnboardingPayload_systemCommissionerPairings_pairingManager___block_invoke;
        v31[3] = &unk_2786EF3A0;
        v31[4] = v25;
        v32 = v8;
        v33 = v17;
        v34 = v10;
        [v34 openCommissioningWindowForSystemCommissionerPairingUUID:v29 duration:v31 completionHandler:180.0];
      }

      else
      {
        [(HMMTRAccessoryServer *)v19 tryPairingWithOnboardingPayload:v8 systemCommissionerPairings:v17 pairingManager:v10];
      }
    }
  }

  v30 = *MEMORY[0x277D85DE8];
}

void __99__HMMTRAccessoryServer__tryPairingWithOnboardingPayload_systemCommissionerPairings_pairingManager___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v31 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = objc_autoreleasePoolPush();
  v11 = *(a1 + 32);
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v13 = HMFGetLogIdentifier();
    *buf = 138543618;
    v28 = v13;
    v29 = 2112;
    v30 = v9;
    _os_log_impl(&dword_22AEAE000, v12, OS_LOG_TYPE_DEBUG, "%{public}@System commissioner open commissioning window completed with error: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v10);
  if ([*(a1 + 32) _pairingInProgressForMatterSupportFallback])
  {
    if (v9)
    {
      v14 = objc_autoreleasePoolPush();
      v15 = *(a1 + 32);
      v16 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = HMFGetLogIdentifier();
        *buf = 138543618;
        v28 = v17;
        v29 = 2112;
        v30 = v9;
        _os_log_impl(&dword_22AEAE000, v16, OS_LOG_TYPE_ERROR, "%{public}@Failed to open commissioning window using system commissioner pairing: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v14);
      [*(a1 + 32) tryPairingWithOnboardingPayload:*(a1 + 40) systemCommissionerPairings:*(a1 + 48) pairingManager:*(a1 + 56)];
    }

    else
    {
      v22 = [*(a1 + 32) browser];
      v23 = [*(a1 + 32) fabricUUID];
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __99__HMMTRAccessoryServer__tryPairingWithOnboardingPayload_systemCommissionerPairings_pairingManager___block_invoke_257;
      v25[3] = &unk_2786EF328;
      v25[4] = *(a1 + 32);
      v26 = v7;
      [v22 setUpBrowserTargetFabricUUID:v23 completion:v25];
    }
  }

  else
  {
    v18 = objc_autoreleasePoolPush();
    v19 = *(a1 + 32);
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = HMFGetLogIdentifier();
      *buf = 138543362;
      v28 = v21;
      _os_log_impl(&dword_22AEAE000, v20, OS_LOG_TYPE_INFO, "%{public}@Pairing timed out already. Discarding open commissioning window completion.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v18);
  }

  v24 = *MEMORY[0x277D85DE8];
}

void __99__HMMTRAccessoryServer__tryPairingWithOnboardingPayload_systemCommissionerPairings_pairingManager___block_invoke_257(uint64_t a1)
{
  v2 = [*(a1 + 32) clientQueue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __99__HMMTRAccessoryServer__tryPairingWithOnboardingPayload_systemCommissionerPairings_pairingManager___block_invoke_2;
  v5[3] = &unk_2786EF328;
  v3 = *(a1 + 40);
  v4 = *(a1 + 32);
  v6 = v3;
  v7 = v4;
  dispatch_async(v2, v5);
}

void __99__HMMTRAccessoryServer__tryPairingWithOnboardingPayload_systemCommissionerPairings_pairingManager___block_invoke_2(uint64_t a1)
{
  v31 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v26 = 0;
  v3 = [MEMORY[0x277CD5528] setupPayloadWithOnboardingPayload:v2 error:&v26];
  v4 = v26;
  [*(a1 + 40) setSetupPayloadForPairingUsingMatterSupport:v3];
  v5 = *(a1 + 40);
  v6 = [v5 browser];
  [v6 setCommissioneeAccessoryServer:v5];

  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 40);
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v11 = *(a1 + 32);
    *buf = 138543618;
    v28 = v10;
    v29 = 2112;
    v30 = v11;
    _os_log_impl(&dword_22AEAE000, v9, OS_LOG_TYPE_INFO, "%{public}@Attempting to pair using new setup code as fallback: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  v12 = [*(a1 + 40) deviceController];
  if (v12)
  {
    v13 = *(a1 + 40);
    v14 = [v13 clientQueue];
    [v12 setDeviceControllerDelegate:v13 queue:v14];

    v15 = *(*(a1 + 40) + 448);
    v25 = v4;
    [v12 setupCommissioningSessionWithPayload:v3 newNodeID:v15 error:&v25];
    v16 = v25;
  }

  else
  {
    v16 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CD5120] code:6 userInfo:0];
  }

  v17 = v16;

  if (v17)
  {
    v18 = objc_autoreleasePoolPush();
    v19 = *(a1 + 40);
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      *buf = 138543618;
      v28 = v21;
      v29 = 2112;
      v30 = v17;
      _os_log_impl(&dword_22AEAE000, v20, OS_LOG_TYPE_ERROR, "%{public}@Failed to setup commissioning session with MatterSupport ECM: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v18);
    v22 = [*(a1 + 40) clientQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __99__HMMTRAccessoryServer__tryPairingWithOnboardingPayload_systemCommissionerPairings_pairingManager___block_invoke_258;
    block[3] = &unk_2786F0CA8;
    block[4] = *(a1 + 40);
    dispatch_async(v22, block);
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)tryPairingWithOnboardingPayload:(id)a3 systemCommissionerPairings:(id)a4 pairingManager:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(HAPAccessoryServer *)self clientQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __98__HMMTRAccessoryServer_tryPairingWithOnboardingPayload_systemCommissionerPairings_pairingManager___block_invoke;
  v15[3] = &unk_2786EF378;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(v11, v15);
}

- (void)_tryPairingUsingMatterSupport
{
  v39 = *MEMORY[0x277D85DE8];
  v3 = [(HMMTRAccessoryServer *)self setupPayloadString];
  if (v3 && (v4 = v3, -[HMMTRAccessoryServer setupPayloadString](self, "setupPayloadString"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 isEqual:&stru_283ED2308], v5, v4, !v6))
  {
    v11 = MEMORY[0x277CD5528];
    v12 = [(HMMTRAccessoryServer *)self setupPayloadString];
    v32 = 0;
    v13 = [v11 setupPayloadWithOnboardingPayload:v12 error:&v32];
    v14 = v32;

    if (v14)
    {
      v15 = objc_autoreleasePoolPush();
      v16 = self;
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = HMFGetLogIdentifier();
        v19 = [(HMMTRAccessoryServer *)v16 setupPayloadString];
        *buf = 138543874;
        v34 = v18;
        v35 = 2112;
        v36 = v19;
        v37 = 2112;
        v38 = v14;
        _os_log_impl(&dword_22AEAE000, v17, OS_LOG_TYPE_ERROR, "%{public}@Parsing setup payload %@ failed: %@. Failing pairing without trying with MatterSupport", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v15);
      v20 = [HMMTRAccessoryPairingEndContext mtrContextWithStep:2 error:v14];
      v21 = [MEMORY[0x277CCA9B8] hapErrorWithCode:9];
      [(HMMTRAccessoryServer *)v16 _handlePairingFailureWithError:v21 context:v20];
    }

    else
    {
      v22 = [(HMMTRAccessoryServer *)self browser];
      v23 = [v22 systemCommissionerPairingManager];

      if (v23)
      {
        [(HMMTRAccessoryServer *)self setPairingUsingMatterSupport:1];
        v29[0] = MEMORY[0x277D85DD0];
        v29[1] = 3221225472;
        v29[2] = __53__HMMTRAccessoryServer__tryPairingUsingMatterSupport__block_invoke;
        v29[3] = &unk_2786EF350;
        v29[4] = self;
        v30 = v13;
        v20 = v23;
        v31 = v20;
        [v20 fetchSystemCommissionerPairingsWithCompletionHandler:v29];
      }

      else
      {
        v24 = objc_autoreleasePoolPush();
        v25 = self;
        v26 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          v27 = HMFGetLogIdentifier();
          *buf = 138543362;
          v34 = v27;
          _os_log_impl(&dword_22AEAE000, v26, OS_LOG_TYPE_ERROR, "%{public}@No system commissioner pairing manager is available. Retrying pairing directly.", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v24);
        [(HMMTRAccessoryServer *)v25 _retryPairing];
        v20 = 0;
      }
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
      *buf = 138543362;
      v34 = v10;
      _os_log_impl(&dword_22AEAE000, v9, OS_LOG_TYPE_INFO, "%{public}@Nearby accessory pairing flow. Hence, cannot try with MatterSupport. Retrying pairing directly.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
    [(HMMTRAccessoryServer *)v8 _retryPairing];
  }

  v28 = *MEMORY[0x277D85DE8];
}

void __53__HMMTRAccessoryServer__tryPairingUsingMatterSupport__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    [*(a1 + 32) tryPairingWithOnboardingPayload:*(a1 + 40) systemCommissionerPairings:v5 pairingManager:*(a1 + 48)];
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 32);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543618;
      v15 = v10;
      v16 = 2112;
      v17 = v6;
      _os_log_impl(&dword_22AEAE000, v9, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch system commissioner pairings to try matching setup payload: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    v11 = [*(a1 + 32) clientQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __53__HMMTRAccessoryServer__tryPairingUsingMatterSupport__block_invoke_254;
    block[3] = &unk_2786F0CA8;
    block[4] = *(a1 + 32);
    dispatch_async(v11, block);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_retryPairing
{
  v40 = *MEMORY[0x277D85DE8];
  if (![(HMMTRAccessoryServer *)self _pairingInProgressForMatterSupportFallback])
  {
    goto LABEL_26;
  }

  [(HMMTRAccessoryServer *)self _clearCommissioneeInfoAfterPairingCompletion];
  [(HMMTRAccessoryServer *)self setCommissioningFailureOverridingError:0];
  if ([(HMMTRAccessoryServer *)self pairingUsingMatterSupport])
  {
    goto LABEL_3;
  }

  [(HMMTRAccessoryServer *)self setPairingUsingMatterSupport:1];
  if ([(HMMTRAccessoryServer *)self isKnownToSystemCommissioner])
  {
    v14 = [(HMMTRAccessoryServer *)self stageCompletion];

    v15 = objc_autoreleasePoolPush();
    v16 = self;
    v17 = HMFGetOSLogHandle();
    v18 = v17;
    if (!v14)
    {
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v34 = HMFGetLogIdentifier();
        *buf = 138543362;
        v37 = v34;
        _os_log_impl(&dword_22AEAE000, v18, OS_LOG_TYPE_ERROR, "%{public}@No fallback for failed pairing system commissioner with no staging interface. Will keep retrying with original setup payload.", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v15);
LABEL_3:
      [(HMMTRAccessoryServer *)self setPairingUsingMatterSupport:0];
      [(HMMTRAccessoryServer *)self setSetupPayloadForPairingUsingMatterSupport:0];
      v3 = [(HMMTRAccessoryServer *)self browser];
      if (v3)
      {
        v4 = [(HMMTRAccessoryServer *)self _pairingSetupPayload];
        v5 = objc_autoreleasePoolPush();
        v6 = self;
        v7 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
        {
          v8 = HMFGetLogIdentifier();
          *buf = 138543618;
          v37 = v8;
          v38 = 2112;
          v39 = v4;
          _os_log_impl(&dword_22AEAE000, v7, OS_LOG_TYPE_INFO, "%{public}@Retrying pairing with setup payload: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v5);
        [v3 setCommissioneeAccessoryServer:v6];
        v9 = [(HMMTRAccessoryServer *)v6 deviceController];
        if (v9)
        {
          v10 = [(HAPAccessoryServer *)v6 clientQueue];
          [v9 setDeviceControllerDelegate:v6 queue:v10];

          nodeID = v6->_nodeID;
          v35 = 0;
          [v9 setupCommissioningSessionWithPayload:v4 newNodeID:nodeID error:&v35];
          v12 = v35;
          v13 = [HMMTRAccessoryPairingEndContext mtrContextWithStep:2 error:v12];
        }

        else
        {
          v12 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CD5120] code:6 userInfo:0];
          v13 = [HMMTRAccessoryPairingEndContext hmmtrContextWithStep:2 error:v12];
        }

        v28 = v13;
        if (v12)
        {
          v29 = objc_autoreleasePoolPush();
          v30 = v6;
          v31 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
          {
            v32 = HMFGetLogIdentifier();
            *buf = 138543618;
            v37 = v32;
            v38 = 2112;
            v39 = v12;
            _os_log_impl(&dword_22AEAE000, v31, OS_LOG_TYPE_ERROR, "%{public}@Failed to setup commissioning session: %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v29);
          [(HMMTRAccessoryServer *)v30 _pairingComplete:v12 context:v28];
        }
      }

      else
      {
        v24 = objc_autoreleasePoolPush();
        v25 = self;
        v26 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          v27 = HMFGetLogIdentifier();
          *buf = 138543362;
          v37 = v27;
          _os_log_impl(&dword_22AEAE000, v26, OS_LOG_TYPE_ERROR, "%{public}@Browser is gone. Stopping pairing attempt.", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v24);
        v4 = [MEMORY[0x277CCA9B8] hapErrorWithCode:15];
        v12 = [HMMTRAccessoryPairingEndContext hmmtrContextWithStep:2 error:v4];
        [(HMMTRAccessoryServer *)v25 _handlePairingFailureWithError:v4 context:v12];
      }

      goto LABEL_26;
    }

    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543362;
      v37 = v19;
      _os_log_impl(&dword_22AEAE000, v18, OS_LOG_TYPE_INFO, "%{public}@Trying to find an existing System Commissioner pairing as a fallback", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v15);
    [(HMMTRAccessoryServer *)v16 _returnMatterSupportPairingAsStagedPairing];
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
      v37 = v23;
      _os_log_impl(&dword_22AEAE000, v22, OS_LOG_TYPE_INFO, "%{public}@Trying to pair using MatterSupport", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v20);
    [(HMMTRAccessoryServer *)v21 _tryPairingUsingMatterSupport];
  }

LABEL_26:
  v33 = *MEMORY[0x277D85DE8];
}

- (void)startPairingMetricWithActivity:(id)a3
{
  v4 = a3;
  v5 = [(HAPAccessoryServer *)self clientQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55__HMMTRAccessoryServer_startPairingMetricWithActivity___block_invoke;
  v7[3] = &unk_2786EF328;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __55__HMMTRAccessoryServer_startPairingMetricWithActivity___block_invoke(uint64_t a1)
{
  v68 = *MEMORY[0x277D85DE8];
  objc_storeStrong((*(a1 + 32) + 472), *(a1 + 40));
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v34 = v2;
    v6 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 32), "communicationProtocol")}];
    v7 = [*(a1 + 32) category];
    v8 = [*(a1 + 32) vendorID];
    v9 = [*(a1 + 32) productID];
    v10 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(*(a1 + 32), "discoveredOverBLE")}];
    v11 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(*(a1 + 32), "knownToSystemCommissioner")}];
    *buf = 138546946;
    v39 = v5;
    v40 = 2114;
    v41 = @"stagedPairingAccessoryInfo";
    v42 = 2112;
    v43 = @"Accessory Info";
    v44 = 2114;
    v45 = @"communicationProtocol";
    v46 = 2112;
    v47 = v6;
    v48 = 2114;
    v49 = @"categoryNumber";
    v50 = 2112;
    v51 = v7;
    v52 = 2114;
    v53 = @"vendorNumber";
    v54 = 2112;
    v55 = v8;
    v56 = 2114;
    v57 = @"productID";
    v58 = 2112;
    v59 = v9;
    v60 = 2114;
    v61 = @"accessoryDiscoveredOverBLE";
    v62 = 2112;
    v63 = v10;
    v64 = 2114;
    v65 = @"accessoryKnownToSystemCommissioner";
    v66 = 2112;
    v67 = v11;
    _os_log_impl(&dword_22AEAE000, v4, OS_LOG_TYPE_INFO, "%{public}@tag=%{public}@ desc=%@ %{public}@=%@ %{public}@=%@ %{public}@=%@ %{public}@=%@ %{public}@=%@ %{public}@=%@", buf, 0x98u);

    v2 = v34;
  }

  objc_autoreleasePoolPop(v2);
  v35 = [MEMORY[0x277D17DE8] sharedInstance];
  v12 = objc_alloc(MEMORY[0x277D17DF8]);
  v33 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 32), "communicationProtocol")}];
  v13 = [*(a1 + 32) category];
  v14 = [*(a1 + 32) vendorID];
  v15 = [*(a1 + 32) productID];
  v16 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(*(a1 + 32), "discoveredOverBLE")}];
  v17 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(*(a1 + 32), "knownToSystemCommissioner")}];
  v18 = HMDTaggedLoggingCreateDictionary();
  v19 = [v12 initWithTag:@"stagedPairingAccessoryInfo" data:{v18, @"communicationProtocol", v33, @"categoryNumber", v13, @"vendorNumber", v14, @"productID", v15, @"accessoryDiscoveredOverBLE", v16, @"accessoryKnownToSystemCommissioner", v17}];
  v20 = [*(*(a1 + 32) + 472) tagProcessorList];
  [v35 submitTaggedEvent:v19 processorList:v20];

  v21 = objc_autoreleasePoolPush();
  v22 = *(a1 + 32);
  v23 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
  {
    v24 = HMFGetLogIdentifier();
    v25 = [*(a1 + 32) softwareVersionString];
    *buf = 138544386;
    v39 = v24;
    v40 = 2114;
    v41 = @"firmwareVersion";
    v42 = 2112;
    v43 = @"Firmware version";
    v44 = 2114;
    v45 = @"firmwareVersion";
    v46 = 2112;
    v47 = v25;
    _os_log_impl(&dword_22AEAE000, v23, OS_LOG_TYPE_INFO, "%{public}@tag=%{public}@ desc=%@ %{public}@=%@", buf, 0x34u);
  }

  objc_autoreleasePoolPop(v21);
  v26 = [MEMORY[0x277D17DE8] sharedInstance];
  v27 = objc_alloc(MEMORY[0x277D17DF8]);
  v28 = [*(a1 + 32) softwareVersionString];
  if (v28)
  {
    v36 = @"firmwareVersion";
    v23 = [*(a1 + 32) softwareVersionString];
    v37 = v23;
    v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v37 forKeys:&v36 count:1];
  }

  else
  {
    v29 = MEMORY[0x277CBEC10];
  }

  v30 = [v27 initWithTag:@"firmwareVersion" data:v29];
  v31 = [*(*(a1 + 32) + 472) tagProcessorList];
  [v26 submitTaggedEvent:v30 processorList:v31];

  if (v28)
  {
  }

  v32 = *MEMORY[0x277D85DE8];
}

- (void)_startPairingWithReadyToCancelHandler:(id)a3 error:(id *)a4 pairingEndContext:(id *)a5
{
  v66 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = [(HMMTRAccessoryServer *)self browser];
  v10 = [v9 attestationStatus];
  [v10 setAccessoryServer:self];

  v11 = [(HMMTRAccessoryServer *)self browser];
  [v11 setCommissioneeAccessoryServer:self];

  v12 = [(HMMTRAccessoryServer *)self vendorID];
  if (v12)
  {
  }

  else
  {
    v13 = [(HMMTRAccessoryServer *)self productID];

    if (!v13)
    {
      goto LABEL_5;
    }
  }

  v14 = [(HMMTRAccessoryServer *)self currentDeviceTypeFromDCL];
  v15 = [(HMMTRAccessoryServer *)self vendorID];
  v16 = [(HMMTRAccessoryServer *)self productID];
  [(HMMTRAccessoryServer *)self _notifyDelegateOfMatterAccessoryVendorID:v15 productID:v16 deviceType:v14];

LABEL_5:
  v17 = [(HMMTRAccessoryServer *)self controllerWrapper];
  [v17 resume];

  v18 = [(HMMTRAccessoryServer *)self deviceController];
  if ([v18 isRunning])
  {
    v19 = [objc_alloc(MEMORY[0x277D0F770]) initWithName:@"CHIP Accessory Pairing"];
    activity = self->_activity;
    self->_activity = v19;

    if (![(HMMTRAccessoryServer *)self hasPriorSuccessfulPairing])
    {
      [(HMMTRAccessoryServer *)self _prepareThreadCredentials];
    }

    v21 = [(HAPAccessoryServer *)self clientQueue];
    [v18 setDeviceControllerDelegate:self queue:v21];

    v22 = [(HMMTRAccessoryServer *)self _pairingSetupPayload];
    if (v22)
    {
      v23 = v22;
      [(HMMTRAccessoryServer *)self setCommissioningSessionEstablished:0];
      [(HMMTRAccessoryServer *)self setCommissioningCompleted:0];
      [(HMMTRAccessoryServer *)self setPairingUsingMatterSupport:0];
      [(HMMTRAccessoryServer *)self _notifyDelegateOfPairingStep:2];
      if ([(HMMTRAccessoryServer *)self accessoryWithSameDiscriminatorDiscovered])
      {
        [(HMMTRAccessoryServer *)self _notifyDelegateOfAccessoryMatchingCommissioningDiscriminatorDiscovered];
      }

      [v18 setupCommissioningSessionWithPayload:v23 newNodeID:self->_nodeID error:a4];
      v52 = v8;
      if (*a4)
      {
        if (a5)
        {
          *a5 = [HMMTRAccessoryPairingEndContext mtrContextWithStep:2 error:?];
        }

        v24 = objc_autoreleasePoolPush();
        v25 = self;
        v26 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          v27 = HMFGetLogIdentifier();
          v28 = v27;
          v29 = *a4;
          if (a5)
          {
            v30 = *a5;
          }

          else
          {
            v30 = 0;
          }

          *buf = 138543874;
          v57 = v27;
          v58 = 2112;
          v59 = v29;
          v60 = 2112;
          v61 = v30;
          _os_log_impl(&dword_22AEAE000, v26, OS_LOG_TYPE_ERROR, "%{public}@Error setup commissioning session %@, context %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v24);
      }

      v37 = objc_autoreleasePoolPush();
      v38 = self;
      v39 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
      {
        v40 = HMFGetLogIdentifier();
        *buf = 138543618;
        v57 = v40;
        v58 = 2112;
        v59 = v38;
        _os_log_impl(&dword_22AEAE000, v39, OS_LOG_TYPE_INFO, "%{public}@Starting pairing for accessory: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v37);
      if (isFeatureMatteriPhoneOnlyPairingControlForThreadEnabled())
      {
        v41 = [(HMMTRAccessoryServer *)v38 browser];
        [v41 enableUnrestrictedOperationsForAccessoryServer:v38];
      }

      v42 = objc_autoreleasePoolPush();
      v43 = v38;
      v44 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
      {
        v45 = HMFGetLogIdentifier();
        *buf = 138544386;
        v57 = v45;
        v58 = 2114;
        v59 = @"hmmtrAccessoryPairingStart";
        v60 = 2112;
        v61 = @"Pairing start";
        v62 = 2114;
        v63 = @"transport";
        v64 = 2112;
        v65 = @"unknown";
        _os_log_impl(&dword_22AEAE000, v44, OS_LOG_TYPE_INFO, "%{public}@tag=%{public}@ desc=%@ %{public}@=%@", buf, 0x34u);
      }

      objc_autoreleasePoolPop(v42);
      v46 = [MEMORY[0x277D17DE8] sharedInstance];
      v47 = objc_alloc(MEMORY[0x277D17DF8]);
      v54 = @"transport";
      v55 = @"unknown";
      v48 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v55 forKeys:&v54 count:1];
      v49 = [v47 initWithTag:@"hmmtrAccessoryPairingStart" data:v48];
      v50 = [(HMFActivity *)self->_activity tagProcessorList];
      [v46 submitTaggedEvent:v49 processorList:v50];

      [(HMMTRAccessoryServer *)v43 setCommissioningFailureOverridingError:0];
      [(HMMTRAccessoryServer *)v43 setPairingProgress:1];
      v8 = v52;
      if (v52)
      {
        v53[0] = MEMORY[0x277D85DD0];
        v53[1] = 3221225472;
        v53[2] = __86__HMMTRAccessoryServer__startPairingWithReadyToCancelHandler_error_pairingEndContext___block_invoke;
        v53[3] = &unk_2786F0CA8;
        v53[4] = v43;
        (*(v52 + 2))(v52, v53);
      }
    }

    else
    {
      v36 = [MEMORY[0x277CCA9B8] hapErrorWithCode:9];
      *a4 = v36;
      if (a5)
      {
        *a5 = [HMMTRAccessoryPairingEndContext hmmtrContextWithStep:1 error:v36];
      }

      v23 = 0;
    }

LABEL_36:

    goto LABEL_37;
  }

  v31 = objc_autoreleasePoolPush();
  v32 = self;
  v33 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
  {
    v34 = HMFGetLogIdentifier();
    v35 = [(HMMTRAccessoryServer *)v32 controllerWrapper];
    *buf = 138543618;
    v57 = v34;
    v58 = 2112;
    v59 = v35;
    _os_log_impl(&dword_22AEAE000, v33, OS_LOG_TYPE_ERROR, "%{public}@CHIP Stack is not running. Controller wrapper: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v31);
  if (a4)
  {
    v23 = [MEMORY[0x277CCA9B8] hapErrorWithCode:3 marker:240];
    *a4 = v23;
    if (a5)
    {
      *a5 = [HMMTRAccessoryPairingEndContext hmmtrContextWithStep:1 error:v23];
    }

    goto LABEL_36;
  }

LABEL_37:

  v51 = *MEMORY[0x277D85DE8];
}

uint64_t __86__HMMTRAccessoryServer__startPairingWithReadyToCancelHandler_error_pairingEndContext___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    *buf = 138543362;
    v11 = v5;
    _os_log_impl(&dword_22AEAE000, v4, OS_LOG_TYPE_INFO, "%{public}@Staging is cancelled", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  v6 = *(a1 + 32);
  v9 = 0;
  result = [v6 stopPairingWithError:&v9];
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

- (NSData)rootPublicKey
{
  if ([(HMMTRAccessoryServer *)self isKnownToSystemCommissioner])
  {
    v3 = [(HMMTRAccessoryServer *)self browser];
    v4 = [v3 systemCommissionerFabricRootPublicKey];
  }

  else
  {
    v3 = [(HMMTRAccessoryServer *)self controllerWrapper];
    v5 = [v3 startupParams];
    v4 = [v5 rootPublicKey];
  }

  return v4;
}

- (void)notifyMatterFirmwareRevisionNumberCharacteristicChanged
{
  if (self->_softwareVersionNumber)
  {
    objc_initWeak(&location, self);
    v3 = dispatch_time(0, 100000000);
    v4 = [(HAPAccessoryServer *)self clientQueue];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __79__HMMTRAccessoryServer_notifyMatterFirmwareRevisionNumberCharacteristicChanged__block_invoke;
    v5[3] = &unk_2786EF2B8;
    objc_copyWeak(&v6, &location);
    dispatch_after(v3, v4, v5);

    objc_destroyWeak(&v6);
    objc_destroyWeak(&location);
  }
}

void __79__HMMTRAccessoryServer_notifyMatterFirmwareRevisionNumberCharacteristicChanged__block_invoke(uint64_t a1)
{
  v44 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v3 = [WeakRetained primaryAccessory];
  v4 = [v3 services];

  v5 = [v4 countByEnumeratingWithState:&v34 objects:v43 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v35;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v35 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v34 + 1) + 8 * i);
        v10 = [v9 type];
        v11 = [v10 isEqualToString:@"0000003E-0000-1000-8000-0026BB765291"];

        if (v11)
        {
          v32 = 0u;
          v33 = 0u;
          v30 = 0u;
          v31 = 0u;
          v12 = [v9 characteristics];
          v13 = [v12 countByEnumeratingWithState:&v30 objects:v42 count:16];
          if (v13)
          {
            v14 = v13;
            v15 = *v31;
            v29 = v2;
            while (2)
            {
              for (j = 0; j != v14; ++j)
              {
                if (*v31 != v15)
                {
                  objc_enumerationMutation(v12);
                }

                v17 = *(*(&v30 + 1) + 8 * j);
                v18 = [v17 type];
                v19 = [v18 isEqualToString:@"0000026D-0000-1000-8000-0026BB765291"];

                if (v19)
                {
                  v20 = [v17 copy];
                  v21 = [v17 service];
                  [v20 setService:v21];

                  [v20 setValue:WeakRetained[71]];
                  v2 = v29;
                  [v29 addObject:v20];
                  v22 = objc_autoreleasePoolPush();
                  v23 = WeakRetained;
                  v24 = HMFGetOSLogHandle();
                  if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
                  {
                    v25 = HMFGetLogIdentifier();
                    v26 = WeakRetained[71];
                    *buf = 138543618;
                    v39 = v25;
                    v40 = 2112;
                    v41 = v26;
                    _os_log_impl(&dword_22AEAE000, v24, OS_LOG_TYPE_INFO, "%{public}@sending notification for software version = %@", buf, 0x16u);
                  }

                  objc_autoreleasePoolPop(v22);
                  v27 = [v23 delegate];
                  [v27 accessoryServer:v23 didUpdateValuesForCharacteristics:v29 stateNumber:0 broadcast:0];

                  goto LABEL_22;
                }
              }

              v14 = [v12 countByEnumeratingWithState:&v30 objects:v42 count:16];
              v2 = v29;
              if (v14)
              {
                continue;
              }

              break;
            }
          }

LABEL_22:

          goto LABEL_23;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v34 objects:v43 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_23:

  v28 = *MEMORY[0x277D85DE8];
}

- (void)updateSoftwareVersion:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = HMFGetLogIdentifier();
    v10 = [(HMMTRAccessoryServer *)v7 softwareVersionNumber];
    *buf = 138543874;
    v24 = v9;
    v25 = 2112;
    v26 = v10;
    v27 = 2112;
    v28 = v5;
    _os_log_impl(&dword_22AEAE000, v8, OS_LOG_TYPE_DEBUG, "%{public}@Updating software version number from %@ to %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v6);
  objc_storeStrong(&v7->_softwareVersionNumber, a3);
  v11 = [(HMMTRAccessoryServer *)v7 browser];
  v12 = [v11 storage];
  v13 = [v12 dataSource];
  v14 = [(HMMTRAccessoryServer *)v7 fabricUUID];
  v15 = [v13 storageDataSourceForFabricUUID:v14];

  v16 = [(HMMTRAccessoryServer *)v7 nodeID];
  v17 = [v15 storageDataSourceForDeviceWithNodeID:v16];
  v18 = [(HMMTRAccessoryServer *)v7 softwareVersionNumber];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __46__HMMTRAccessoryServer_updateSoftwareVersion___block_invoke;
  v22[3] = &unk_2786EF290;
  v22[4] = v7;
  [v17 updateSoftwareVersionNumber:v18 completion:v22];

  v19 = [(HMMTRAccessoryServer *)v7 matterFirmwareUpdateStatus];

  if (v19)
  {
    v20 = [(HMMTRAccessoryServer *)v7 matterFirmwareUpdateStatus];
    [v20 checkCurrentFirmwareVersionNumber:v5];
  }

  v21 = *MEMORY[0x277D85DE8];
}

void __46__HMMTRAccessoryServer_updateSoftwareVersion___block_invoke(uint64_t a1, void *a2)
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
      v8 = [*(a1 + 32) softwareVersionNumber];
      v10 = 138543874;
      v11 = v7;
      v12 = 2112;
      v13 = v8;
      v14 = 2112;
      v15 = v3;
      _os_log_impl(&dword_22AEAE000, v6, OS_LOG_TYPE_ERROR, "%{public}@Failed to update version number in storage to %@ with error: %@", &v10, 0x20u);
    }

    objc_autoreleasePoolPop(v4);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (BOOL)hasPreferredLocalLink
{
  v23 = *MEMORY[0x277D85DE8];
  if ([(HMMTRAccessoryServer *)self isDisabled])
  {
    v3 = 0;
  }

  else
  {
    v4 = [(HMMTRAccessoryServer *)self residentReachabilityUpdateWaitTimer];
    v3 = v4 != 0;
  }

  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = HMFGetLogIdentifier();
    [(HMMTRAccessoryServer *)v6 isDisabled];
    v9 = HMFBooleanToString();
    v10 = [(HMMTRAccessoryServer *)v6 residentReachabilityUpdateWaitTimer];
    v11 = HMFBooleanToString();
    v12 = HMFBooleanToString();
    v15 = 138544130;
    v16 = v8;
    v17 = 2112;
    v18 = v9;
    v19 = 2112;
    v20 = v11;
    v21 = 2112;
    v22 = v12;
    _os_log_impl(&dword_22AEAE000, v7, OS_LOG_TYPE_DEBUG, "%{public}@disabled %@, timer running %@ -> local link preferred: %@", &v15, 0x2Au);
  }

  objc_autoreleasePoolPop(v5);
  v13 = *MEMORY[0x277D85DE8];
  return v3;
}

- (void)setLinkLayerType:(int64_t)a3
{
  v5 = *MEMORY[0x277CFECD8];
  os_unfair_lock_lock_with_options();
  self->_linkLayerType = a3;

  os_unfair_lock_unlock((self + v5));
}

- (int64_t)linkLayerType
{
  v3 = *MEMORY[0x277CFECD8];
  os_unfair_lock_lock_with_options();
  linkLayerType = self->_linkLayerType;
  os_unfair_lock_unlock((self + v3));
  if (!linkLayerType)
  {
    if ([(HAPAccessoryServer *)self isReachable])
    {
      v5 = [(HMMTRAccessoryServer *)self primaryAccessory];
      linkLayerType = [(HMMTRAccessoryServer *)self getLinkLayerTypeForAccessory:v5];
      [(HMMTRAccessoryServer *)self setLinkLayerType:linkLayerType];
      [v5 setLinkLayerType:linkLayerType];
    }

    else
    {
      return 0;
    }
  }

  return linkLayerType;
}

- (void)setPairedState:(int64_t)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543874;
    v17 = v8;
    v18 = 2048;
    v19 = [(HMMTRAccessoryServer *)v6 pairedState];
    v20 = 2048;
    v21 = a3;
    _os_log_impl(&dword_22AEAE000, v7, OS_LOG_TYPE_INFO, "%{public}@Updating paired state from %ld to %ld", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [(HMMTRAccessoryServer *)v6 isStaged];
  v10 = *MEMORY[0x277CFECD8];
  os_unfair_lock_lock_with_options();
  v6->_pairedState = a3;
  os_unfair_lock_unlock((v6 + v10));
  if (a3 >= 3)
  {
    if (a3 == 3)
    {
      v11 = 1;
      goto LABEL_9;
    }
  }

  else if ([(HAPAccessoryServer *)v6 isSecuritySessionOpen]|| [(HMMTRAccessoryServer *)v6 locallyDiscovered])
  {
    v11 = 0;
LABEL_9:
    [(HAPAccessoryServer *)v6 setHasPairings:v11];
  }

  v12 = [(HAPAccessoryServer *)v6 clientQueue];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __39__HMMTRAccessoryServer_setPairedState___block_invoke;
  v14[3] = &unk_2786F0C80;
  v14[4] = v6;
  v15 = v9;
  dispatch_async(v12, v14);

  v13 = *MEMORY[0x277D85DE8];
}

void __39__HMMTRAccessoryServer_setPairedState___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) isStaged];
  if (*(a1 + 40) != v2)
  {
    v3 = v2;
    v4 = [*(a1 + 32) knownToSystemCommissioner];
    v5 = [*(a1 + 32) browser];
    v6 = v5;
    if (v4)
    {
      v7 = [v5 storageForSystemCommissioner];
    }

    else
    {
      v8 = [*(a1 + 32) fabricUUID];
      v9 = [*(a1 + 32) pairingRequest];
      if (v9)
      {
        v10 = [*(a1 + 32) pairingRequest];
        v7 = [v6 storageForFabricUUID:v8 sharedAdmin:{objc_msgSend(v10, "isOwnerPairing") ^ 1}];
      }

      else
      {
        v7 = [v6 storageForFabricUUID:v8 sharedAdmin:0];
      }
    }

    v11 = [*(a1 + 32) nodeID];
    [v7 setStaged:v3 forNode:v11];

    v12 = objc_autoreleasePoolPush();
    v13 = *(a1 + 32);
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v15 = HMFGetLogIdentifier();
      v16 = *(a1 + 32);
      v18 = 138543874;
      v19 = v15;
      v20 = 1024;
      v21 = v3;
      v22 = 2112;
      v23 = v16;
      _os_log_impl(&dword_22AEAE000, v14, OS_LOG_TYPE_DEBUG, "%{public}@Stored Staged State:%d for server:%@", &v18, 0x1Cu);
    }

    objc_autoreleasePoolPop(v12);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (int64_t)pairedState
{
  v3 = *MEMORY[0x277CFECD8];
  os_unfair_lock_lock_with_options();
  pairedState = self->_pairedState;
  os_unfair_lock_unlock((self + v3));
  return pairedState;
}

- (HMMTRPairing)currentPairing
{
  v51 = *MEMORY[0x277D85DE8];
  v3 = [(HMMTRAccessoryServer *)self currentPairingInfo];

  if (!v3)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = self;
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      *buf = 138543362;
      v48 = v7;
      _os_log_impl(&dword_22AEAE000, v6, OS_LOG_TYPE_INFO, "%{public}@CurrentPairingInfo is not cached, fetching info from storage", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    v8 = [(HMMTRAccessoryServer *)v5 browser];
    v9 = [v8 storage];
    v10 = [v9 dataSource];
    v11 = [(HMMTRAccessoryServer *)v5 fabricUUID];
    v12 = [v10 storageDataSourceForFabricUUID:v11];
    v13 = [(HMMTRAccessoryServer *)v5 nodeID];
    v14 = [v12 storageDataSourceForDeviceWithNodeID:v13];
    v15 = [v14 pairings];

    v16 = [v15 objectEnumerator];
    v17 = [v16 nextObject];
    if (v17)
    {
      v18 = v17;
      do
      {
        v19 = [v18 nodeID];
        v20 = [(HMMTRAccessoryServer *)v5 nodeID];
        if ([v19 isEqual:v20])
        {
          v21 = [v18 rootPublicKey];
          v22 = [(HMMTRAccessoryServer *)v5 rootPublicKey];
          v23 = [v21 isEqual:v22];

          if (v23)
          {
            v46 = v15;
            v44 = [HMMTRPairing alloc];
            v45 = [v18 nodeID];
            v25 = [v18 fabricID];
            v26 = [v18 fabricLabel];
            v27 = [v18 rootPublicKey];
            v28 = [v18 vendorID];
            v29 = [v18 vendorName];
            v30 = [(HMMTRPairing *)v44 initWithNodeID:v45 fabricID:v25 fabricLabel:v26 rootPublicKey:v27 vendorID:v28 vendorName:v29];
            [(HMMTRAccessoryServer *)v5 setCurrentPairingInfo:v30];

            v31 = objc_autoreleasePoolPush();
            v32 = v5;
            v33 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
            {
              v35 = HMFGetLogIdentifier();
              *buf = 138543618;
              v48 = v35;
              v49 = 2112;
              v50 = v18;
              _os_log_impl(&dword_22AEAE000, v33, OS_LOG_TYPE_INFO, "%{public}@Updated currentPairingInfo with pairing from storage: %@", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v31);
            v15 = v46;
            break;
          }
        }

        else
        {
        }

        v24 = [v16 nextObject];

        v18 = v24;
      }

      while (v24);
    }
  }

  v36 = objc_autoreleasePoolPush();
  v37 = self;
  v38 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
  {
    v39 = HMFGetLogIdentifier();
    v40 = [(HMMTRAccessoryServer *)v37 currentPairingInfo];
    *buf = 138543618;
    v48 = v39;
    v49 = 2112;
    v50 = v40;
    _os_log_impl(&dword_22AEAE000, v38, OS_LOG_TYPE_INFO, "%{public}@Returning current pairing info %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v36);
  v41 = [(HMMTRAccessoryServer *)v37 currentPairingInfo];
  v42 = *MEMORY[0x277D85DE8];

  return v41;
}

- (void)setRemoveReason:(id)a3 pairingEndContextWhenRemove:(id)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = *MEMORY[0x277CFECD8];
  os_unfair_lock_lock_with_options();
  v9 = objc_autoreleasePoolPush();
  v10 = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    removeReason = v10->_removeReason;
    pairingEndContextWhenRemove = v10->_pairingEndContextWhenRemove;
    v19 = 138544386;
    v20 = v12;
    v21 = 2112;
    v22 = removeReason;
    v23 = 2112;
    v24 = v6;
    v25 = 2112;
    v26 = pairingEndContextWhenRemove;
    v27 = 2112;
    v28 = v7;
    _os_log_impl(&dword_22AEAE000, v11, OS_LOG_TYPE_INFO, "%{public}@Setting removeReason %@ -> %@, context %@ -> %@", &v19, 0x34u);
  }

  objc_autoreleasePoolPop(v9);
  v15 = v10->_removeReason;
  v10->_removeReason = v6;
  v16 = v6;

  v17 = v10->_pairingEndContextWhenRemove;
  v10->_pairingEndContextWhenRemove = v7;

  os_unfair_lock_unlock((self + v8));
  v18 = *MEMORY[0x277D85DE8];
}

- (HMMTRAccessoryPairingEndContext)pairingEndContextWhenRemove
{
  v3 = *MEMORY[0x277CFECD8];
  os_unfair_lock_lock_with_options();
  v4 = self->_pairingEndContextWhenRemove;
  os_unfair_lock_unlock((self + v3));

  return v4;
}

- (NSError)removeReason
{
  v3 = *MEMORY[0x277CFECD8];
  os_unfair_lock_lock_with_options();
  v4 = self->_removeReason;
  os_unfair_lock_unlock((self + v3));

  return v4;
}

- (id)ensureCommissioningID
{
  v17 = *MEMORY[0x277D85DE8];
  commissioningID = self->_commissioningID;
  if (!commissioningID)
  {
    v4 = [MEMORY[0x277CCAD78] UUID];
    v5 = self->_commissioningID;
    self->_commissioningID = v4;

    v6 = objc_autoreleasePoolPush();
    v7 = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v9 = HMFGetLogIdentifier();
      v10 = self->_commissioningID;
      v13 = 138543618;
      v14 = v9;
      v15 = 2112;
      v16 = v10;
      _os_log_impl(&dword_22AEAE000, v8, OS_LOG_TYPE_DEBUG, "%{public}@Generated System Commissioner pairing UUID %@", &v13, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    commissioningID = self->_commissioningID;
  }

  v11 = *MEMORY[0x277D85DE8];

  return commissioningID;
}

- (void)setCommissioningID:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (self->_commissioningID)
  {
    _HMFPreconditionFailure();
  }

  v6 = v5;
  if (v5)
  {
    objc_storeStrong(&self->_commissioningID, a3);
    v7 = objc_autoreleasePoolPush();
    v8 = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v10 = HMFGetLogIdentifier();
      v12 = 138543618;
      v13 = v10;
      v14 = 2112;
      v15 = v6;
      _os_log_impl(&dword_22AEAE000, v9, OS_LOG_TYPE_DEBUG, "%{public}@Assigned System Commissioner pairing UUID %@", &v12, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)setClusterIDForCharacteristic:(id)a3 endpointID:(id)a4 clusterID:(id)a5
{
  v14 = a4;
  clusterIDCharacteristicMap = self->_clusterIDCharacteristicMap;
  v9 = a5;
  v10 = a3;
  v11 = [(NSMutableDictionary *)clusterIDCharacteristicMap objectForKeyedSubscript:v14];

  if (!v11)
  {
    v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [(NSMutableDictionary *)self->_clusterIDCharacteristicMap setObject:v12 forKeyedSubscript:v14];
  }

  v13 = [(NSMutableDictionary *)self->_clusterIDCharacteristicMap objectForKeyedSubscript:v14];
  [v13 setValue:v9 forKey:v10];
}

- (id)deviceID
{
  v3 = objc_alloc(MEMORY[0x277CFEB48]);
  v4 = [(HAPAccessoryServer *)self identifier];
  v5 = [v3 initWithDeviceIDString:v4];

  return v5;
}

- (void)_updateDefaultEntriesForBridgedClusterIDCharacteristicMap:(id)a3
{
  v4 = a3;
  v5 = [HMMTRUtilities hmmtr_shortTypeFromUUID:@"00000023-0000-1000-8000-0026BB765291"];
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%0X", 57];
  [(HMMTRAccessoryServer *)self setClusterIDForCharacteristic:v5 endpointID:v4 clusterID:v6];

  v7 = [HMMTRUtilities hmmtr_shortTypeFromUUID:@"00000021-0000-1000-8000-0026BB765291"];
  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%0X", 57];
  [(HMMTRAccessoryServer *)self setClusterIDForCharacteristic:v7 endpointID:v4 clusterID:v8];

  v9 = [HMMTRUtilities hmmtr_shortTypeFromUUID:@"00000020-0000-1000-8000-0026BB765291"];
  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%0X", 57];
  [(HMMTRAccessoryServer *)self setClusterIDForCharacteristic:v9 endpointID:v4 clusterID:v10];

  v12 = [HMMTRUtilities hmmtr_shortTypeFromUUID:@"00000030-0000-1000-8000-0026BB765291"];
  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%0X", 57];
  [(HMMTRAccessoryServer *)self setClusterIDForCharacteristic:v12 endpointID:v4 clusterID:v11];
}

- (void)_updateDefaultEntriesForClusterIDCharacteristicMap:(id)a3
{
  v4 = [HMMTRUtilities hmmtr_shortTypeFromUUID:@"00000023-0000-1000-8000-0026BB765291"];
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%0X", 40];
  [(HMMTRAccessoryServer *)self setClusterIDForCharacteristic:v4 endpointID:&unk_283EE89B8 clusterID:v5];

  v6 = [HMMTRUtilities hmmtr_shortTypeFromUUID:@"00000021-0000-1000-8000-0026BB765291"];
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%0X", 40];
  [(HMMTRAccessoryServer *)self setClusterIDForCharacteristic:v6 endpointID:&unk_283EE89B8 clusterID:v7];

  v8 = [HMMTRUtilities hmmtr_shortTypeFromUUID:@"00000020-0000-1000-8000-0026BB765291"];
  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%0X", 40];
  [(HMMTRAccessoryServer *)self setClusterIDForCharacteristic:v8 endpointID:&unk_283EE89B8 clusterID:v9];

  v10 = [HMMTRUtilities hmmtr_shortTypeFromUUID:@"00000014-0000-1000-8000-0026BB765291"];
  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%0X", 3];
  [(HMMTRAccessoryServer *)self setClusterIDForCharacteristic:v10 endpointID:&unk_283EE89B8 clusterID:v11];

  v12 = [HMMTRUtilities hmmtr_shortTypeFromUUID:@"00000030-0000-1000-8000-0026BB765291"];
  v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%0X", 40];
  [(HMMTRAccessoryServer *)self setClusterIDForCharacteristic:v12 endpointID:&unk_283EE89B8 clusterID:v13];

  v14 = [HMMTRUtilities hmmtr_shortTypeFromUUID:@"00000052-0000-1000-8000-0026BB765291"];
  v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"%0X", 40];
  [(HMMTRAccessoryServer *)self setClusterIDForCharacteristic:v14 endpointID:&unk_283EE89B8 clusterID:v15];

  v16 = [HMMTRUtilities hmmtr_shortTypeFromUUID:@"0000026D-0000-1000-8000-0026BB765291"];
  v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"%0X", 40];
  [(HMMTRAccessoryServer *)self setClusterIDForCharacteristic:v16 endpointID:&unk_283EE89B8 clusterID:v17];

  v18 = [HMMTRUtilities hmmtr_shortTypeFromUUID:@"00000234-0000-1000-8000-0026BB765291"];
  v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"%0X", 42];
  [(HMMTRAccessoryServer *)self setClusterIDForCharacteristic:v18 endpointID:&unk_283EE89B8 clusterID:v19];

  v21 = [HMMTRUtilities hmmtr_shortTypeFromUUID:@"00000235-0000-1000-8000-0026BB765291"];
  v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"%0X", 42];
  [(HMMTRAccessoryServer *)self setClusterIDForCharacteristic:v21 endpointID:&unk_283EE89B8 clusterID:v20];
}

- (MTRDeviceController)deviceController
{
  v2 = [(HMMTRAccessoryServer *)self controllerWrapper];
  v3 = [v2 controller];

  return v3;
}

- (void)dispatchBlock:(id)a3
{
  v4 = a3;
  v5 = [(HAPAccessoryServer *)self clientQueue];
  dispatch_async(v5, v4);
}

- (void)dealloc
{
  [(HMMTRAccessoryServer *)self _deregisterStateCaptureHandlers];
  v3.receiver = self;
  v3.super_class = HMMTRAccessoryServer;
  [(HMMTRAccessoryServer *)&v3 dealloc];
}

- (HMMTRAccessoryServer)initWithKeystore:(id)a3 browser:(id)a4
{
  v6 = a4;
  v44.receiver = self;
  v44.super_class = HMMTRAccessoryServer;
  v7 = [(HAPAccessoryServer *)&v44 initWithKeystore:a3];
  if (v7)
  {
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:arc4random()];
    objectID = v7->_objectID;
    v7->_objectID = v8;

    objc_storeWeak(&v7->_browser, v6);
    v10 = [[HMMTRTimeBasedCounter alloc] initTimeBasedCounter:10];
    notAvailableImageResponseCounter = v7->_notAvailableImageResponseCounter;
    v7->_notAvailableImageResponseCounter = v10;

    v7->_busyImageResponseCounter = 0;
    v7->_pairedState = 0;
    v7->_pairingProgress = 0;
    v7->_storageUpdatePending = 0;
    v7->_removalInProgress = 0;
    v7->_blockInvalidation = 0;
    v7->_locallyDiscovered = 0;
    v7->_discoveredOverBLE = 0;
    v7->_bleScanPending = 0;
    v7->_linkLayerType = 0;
    v7->_certified = 0;
    v7->_requiresThreadRouter = 0;
    v7->_delayDiscovery = 0;
    v7->_wedDevice = 0;
    supportedLinkLayerTypes = v7->_supportedLinkLayerTypes;
    v7->_supportedLinkLayerTypes = 0;

    v7->_operationDisabled = 0;
    v7->_operationDisabledReason = 0;
    v7->_hasPriorSuccessfulPairing = 0;
    maxMetricDuration = v7->_maxMetricDuration;
    v7->_maxMetricDuration = 0;

    softwareVersionNumber = v7->_softwareVersionNumber;
    v7->_softwareVersionNumber = 0;

    softwareVersionString = v7->_softwareVersionString;
    v7->_softwareVersionString = @"unknown";

    v16 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [(HMMTRAccessoryServer *)v7 setPairingDurationDictionary:v16];

    v17 = objc_alloc_init(MEMORY[0x277CBEB38]);
    clusterIDCharacteristicMap = v7->_clusterIDCharacteristicMap;
    v7->_clusterIDCharacteristicMap = v17;

    v19 = [[HMMTRHAPEnumerator alloc] initWithClusterIDCharacteristicMap:v7->_clusterIDCharacteristicMap];
    hapEnumerator = v7->_hapEnumerator;
    v7->_hapEnumerator = v19;

    v21 = objc_alloc_init(MEMORY[0x277CBEB38]);
    attributeTimers = v7->_attributeTimers;
    v7->_attributeTimers = v21;

    v23 = objc_alloc_init(HMMTRAttributeReportDistributor);
    reportDistributor = v7->_reportDistributor;
    v7->_reportDistributor = v23;

    commissioneeNetworkCommissioningClusterEndpoint = v7->_commissioneeNetworkCommissioningClusterEndpoint;
    v7->_commissioneeNetworkCommissioningClusterEndpoint = 0;

    commissioneeNetworks = v7->_commissioneeNetworks;
    v7->_commissioneeNetworks = 0;

    v7->_commissioneeHasActiveNetwork = 0;
    v27 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    reportObservers = v7->_reportObservers;
    v7->_reportObservers = v27;

    v29 = [objc_alloc(MEMORY[0x277CFEC10]) initWithValue:1];
    v30 = [objc_alloc(MEMORY[0x277CFEB98]) initWithOTAProviderState:v29 downloadedFirmwareVersionNumber:0 accessoryDownloadProgressPercent:0];
    v31 = [[HMMTRFirmwareUpdateStatus alloc] initWithFirmwareUpdateStatus:v30 accessoryServer:v7 browser:v6];
    matterFirmwareUpdateStatus = v7->_matterFirmwareUpdateStatus;
    v7->_matterFirmwareUpdateStatus = v31;

    v33 = [MEMORY[0x277CCAB98] defaultCenter];
    [v33 addObserver:v7 selector:sel_handleThreadNetworkStateChangedNotification_ name:@"HMMTRThreadRadioStateChangedNotification" object:0];

    v7->_deferStartThreadForPairing = 0;
    v34 = objc_alloc_init(MEMORY[0x277CBEB38]);
    characteristicProtocolMappingStates = v7->_characteristicProtocolMappingStates;
    v7->_characteristicProtocolMappingStates = v34;

    [(HMMTRAccessoryServer *)v7 _updateDefaultEntriesForClusterIDCharacteristicMap:v7->_clusterIDCharacteristicMap];
    deviceConnectedStateCaptureInformation = v7->_deviceConnectedStateCaptureInformation;
    v7->_deviceConnectedStateCaptureInformation = 0;

    partsListStateCaptureInformation = v7->_partsListStateCaptureInformation;
    v7->_partsListStateCaptureInformation = 0;

    descriptorClusterManager = v7->_descriptorClusterManager;
    v7->_descriptorClusterManager = &__block_literal_global_10655;

    v39 = [MEMORY[0x277CBEB18] array];
    serviceEnumerationFromDeviceCompletionHandlers = v7->_serviceEnumerationFromDeviceCompletionHandlers;
    v7->_serviceEnumerationFromDeviceCompletionHandlers = v39;

    v41 = [MEMORY[0x277CBEB38] dictionary];
    pendingMTRDeviceReadReadyHandlers = v7->_pendingMTRDeviceReadReadyHandlers;
    v7->_pendingMTRDeviceReadReadyHandlers = v41;
  }

  return v7;
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t688 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t688, &__block_literal_global_984);
  }

  v3 = logCategory__hmf_once_v689;

  return v3;
}

uint64_t __35__HMMTRAccessoryServer_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v689;
  logCategory__hmf_once_v689 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

+ (id)_convertPairingFailureError:(id)a3
{
  v3 = a3;
  v4 = [v3 domain];
  v5 = [v4 isEqualToString:*MEMORY[0x277CD5120]];

  if (v5)
  {
    v6 = [v3 code];
    v7 = MEMORY[0x277CCA9B8];
    if (v6 == 11)
    {
      v8 = 18;
LABEL_7:
      v11 = [v7 hapErrorWithCode:v8 description:0 reason:0 suggestion:0 underlyingError:v3];

      v3 = v11;
      goto LABEL_8;
    }

LABEL_6:
    v8 = 15;
    goto LABEL_7;
  }

  v9 = [v3 domain];
  v10 = [v9 isEqualToString:*MEMORY[0x277CD5158]];

  if (v10)
  {
    v7 = MEMORY[0x277CCA9B8];
    goto LABEL_6;
  }

LABEL_8:
  if ([v3 isHMFError] && objc_msgSend(v3, "code") == 11)
  {
    v12 = [MEMORY[0x277CCA9B8] hapErrorWithCode:15 description:0 reason:0 suggestion:0 underlyingError:v3];

    v3 = v12;
  }

  return v3;
}

+ (void)propagateCharactersticValuesToAccessory:(id)a3
{
  v50 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  obj = [v3 services];
  v4 = [obj countByEnumeratingWithState:&v44 objects:v49 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v45;
    v36 = *v45;
    do
    {
      v7 = 0;
      v37 = v5;
      do
      {
        if (*v45 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v44 + 1) + 8 * v7);
        v9 = [v8 type];
        v10 = [v9 isEqual:@"0000003E-0000-1000-8000-0026BB765291"];

        if (v10)
        {
          v39 = v7;
          v42 = 0u;
          v43 = 0u;
          v40 = 0u;
          v41 = 0u;
          v11 = [v8 characteristics];
          v12 = [v11 countByEnumeratingWithState:&v40 objects:v48 count:16];
          if (v12)
          {
            v13 = v12;
            v14 = *v41;
            do
            {
              for (i = 0; i != v13; ++i)
              {
                if (*v41 != v14)
                {
                  objc_enumerationMutation(v11);
                }

                v16 = *(*(&v40 + 1) + 8 * i);
                v17 = [v16 value];
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v18 = v17;
                }

                else
                {
                  v18 = 0;
                }

                v19 = v18;

                if (v19)
                {
                  v20 = [v16 type];
                  v21 = [v20 isEqual:@"00000023-0000-1000-8000-0026BB765291"];

                  if (v21)
                  {
                    [v3 setName:v19];
                  }

                  else
                  {
                    v22 = [v16 type];
                    v23 = [v22 isEqual:@"00000021-0000-1000-8000-0026BB765291"];

                    if (v23)
                    {
                      [v3 setModel:v19];
                    }

                    else
                    {
                      v24 = [v16 type];
                      v25 = [v24 isEqual:@"00000020-0000-1000-8000-0026BB765291"];

                      if (v25)
                      {
                        [v3 setManufacturer:v19];
                      }

                      else
                      {
                        v26 = [v16 type];
                        v27 = [v26 isEqual:@"0000026D-0000-1000-8000-0026BB765291"];

                        if (v27)
                        {
                          v28 = [v16 value];
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

                          if (v30)
                          {
                            v31 = [objc_alloc(MEMORY[0x277D0F8F8]) initWithMajorVersion:objc_msgSend(v30 minorVersion:"unsignedLongValue") updateVersion:{0, 0}];
                            v32 = [v31 versionString];
                            [v3 setFirmwareVersion:v32];
                          }
                        }

                        else
                        {
                          v33 = [v16 type];
                          v34 = [v33 isEqual:@"00000030-0000-1000-8000-0026BB765291"];

                          if (v34)
                          {
                            [v3 setSerialNumber:v19];
                          }
                        }
                      }
                    }
                  }
                }
              }

              v13 = [v11 countByEnumeratingWithState:&v40 objects:v48 count:16];
            }

            while (v13);
          }

          v6 = v36;
          v5 = v37;
          v7 = v39;
        }

        ++v7;
      }

      while (v7 != v5);
      v5 = [obj countByEnumeratingWithState:&v44 objects:v49 count:16];
    }

    while (v5);
  }

  v35 = *MEMORY[0x277D85DE8];
}

+ (BOOL)certificateSubjectHasCATs:(id)a3
{
  v3 = [MEMORY[0x277CD5230] convertX509Certificate:a3];
  v4 = [objc_alloc(MEMORY[0x277CD5228]) initWithTLVBytes:v3];
  v5 = [v4 subject];
  v6 = [v5 caseAuthenticatedTags];
  v7 = [v6 count] != 0;

  return v7;
}

@end