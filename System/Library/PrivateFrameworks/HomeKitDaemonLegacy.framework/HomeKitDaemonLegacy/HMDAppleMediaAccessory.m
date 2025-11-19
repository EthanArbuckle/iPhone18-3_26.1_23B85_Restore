@interface HMDAppleMediaAccessory
+ (BOOL)shouldAcceptMessage:(id)a3 home:(id)a4 privilege:(unint64_t)a5;
+ (id)logCategory;
+ (id)messageBindingForDispatcher:(id)a3 message:(id)a4 receiver:(id)a5;
- (BOOL)_shouldFilterAccessoryProfileForEntitledClients:(id)a3;
- (BOOL)_shouldFilterAccessoryProfileForUnentitledClients:(id)a3;
- (BOOL)accountHasSentinelZoneForAppleMediaAccessorySensorManager:(id)a3;
- (BOOL)hasValidHome:(id)a3 backingStore:(id)a4 messageDispatcher:(id)a5;
- (BOOL)isAppleTV;
- (BOOL)isCurrentAccessory;
- (BOOL)isCurrentDevicePrimaryResident;
- (BOOL)isDeviceReachable;
- (BOOL)isDoorbellChimeSettingEnabled;
- (BOOL)isHH1EOLEnabled;
- (BOOL)isHomePod;
- (BOOL)isMultiUserEnabledForAccessorySettingsController:(id)a3;
- (BOOL)isReadyForSensorPairing:(id)a3;
- (BOOL)isRemotelyReachable;
- (BOOL)isResidentConfirmedForAppleMediaAccessorySensorManager:(id)a3;
- (BOOL)legacyLocationServicesEnabled;
- (BOOL)shouldUpdateWithDevice:(id)a3 initialConfiguration:(BOOL)a4;
- (BOOL)supportsAnnounce;
- (BOOL)supportsAudioReturnChannel;
- (BOOL)supportsCompanionInitiatedObliterate;
- (BOOL)supportsCompanionInitiatedRestart;
- (BOOL)supportsCoordinationDoorbellChime;
- (BOOL)supportsCoordinationFreeDoorbellChime;
- (BOOL)supportsCrossfadeAsAirPlaySource;
- (BOOL)supportsDoorbellChime;
- (BOOL)supportsHomeHub;
- (BOOL)supportsHomeLevelLocationServiceSetting;
- (BOOL)supportsJustSiri;
- (BOOL)supportsManagedConfigurationProfile;
- (BOOL)supportsMediaActions;
- (BOOL)supportsMediaContentProfile;
- (BOOL)supportsMessagedHomePodSettings;
- (BOOL)supportsMultiUser;
- (BOOL)supportsMusicAlarm;
- (BOOL)supportsNetworkDiagnostics;
- (BOOL)supportsPreferredMediaUser;
- (BOOL)supportsRMVonAppleTV;
- (BOOL)supportsSoftwareUpdate;
- (BOOL)supportsStereoOdeonTTSUBypassingPrimary;
- (BOOL)supportsTVOSUpdateManualUpdateAvailableNotification;
- (BOOL)supportsTargetControl;
- (BOOL)supportsThirdPartyMusic;
- (BOOL)supportsUserMediaSettings;
- (BOOL)supportsWiFiRepairV2;
- (HMAccessoryCapabilities)capabilities;
- (HMAccessoryCapabilities)capabilitiesInternal;
- (HMDAccessorySetupMetricDispatcher)accessorySetupMetricDispatcher;
- (HMDAppleMediaAccessory)accessoryWithUUID:(id)a3 forAppleMediaAccessoryLocalMessageHandler:(id)a4;
- (HMDAppleMediaAccessory)accessoryWithUUID:(id)a3 forAppleMediaAccessorySensorManager:(id)a4;
- (HMDAppleMediaAccessory)init;
- (HMDAppleMediaAccessory)initWithCoder:(id)a3;
- (HMDAppleMediaAccessory)initWithDependencyFactory:(id)a3 deviceMediaRouteIdentifierFactory:(id)a4;
- (HMDAppleMediaAccessory)initWithDeviceController:(id)a3 deviceIdentifierFactory:(id)a4;
- (HMDAppleMediaAccessory)initWithTransaction:(id)a3 home:(id)a4;
- (HMDAppleMediaAccessory)initWithTransaction:(id)a3 home:(id)a4 dependencyFactory:(id)a5;
- (HMDAppleMediaAccessoryDataSource)dataSource;
- (HMDBackingStore)backingStore;
- (HMDCurrentAccessorySetupMetricDispatcher)currentAccessorySetupMetricDispatcher;
- (HMDDevice)device;
- (HMDDoorbellChimeProfile)doorbellChimeProfile;
- (HMDMediaDestinationControllerFactory)mediaDestinationControllerFactory;
- (HMDMediaDestinationManagerFactory)mediaDestinationManagerFactory;
- (HMDMessageRouter)messageRouter;
- (HMEEventForwarder)eventForwarder;
- (HMELastEventStoreReadHandle)eventStoreReadHandle;
- (HMFActivity)setupActivity;
- (HMFPairingIdentity)pairingIdentity;
- (HMFSoftwareVersion)softwareVersion;
- (HMFWiFiNetworkInfo)lastStagedWifiNetworkInfo;
- (HMFWiFiNetworkInfo)wifiNetworkInfo;
- (HMMLogEventSubmitting)logEventSubmitter;
- (HMMediaDestination)audioDestination;
- (HMMediaDestinationControllerData)audioDestinationControllerData;
- (NSData)rawCapabilities;
- (NSString)description;
- (NSUUID)idsIdentifier;
- (NSUUID)sensorAccessoryUUID;
- (double)setupStartTimestamp;
- (id)_createMediaProfile;
- (id)_dumpStateCachedSettingsForHome:(id)a3 accessory:(id)a4 eventStoreReadHandle:(id)a5;
- (id)_initWithCoder:(id)a3;
- (id)_scanForSoftwareUpdate;
- (id)_scanForSoftwareUpdateWithRetries;
- (id)_softwareUpdateV2FromDescriptor:(id)a3;
- (id)accessoriesWithHostUUID:(id)a3 forAppleMediaAccessorySensorManager:(id)a4;
- (id)accessoryBrowserForAppleMediaAccessorySensorManager:(id)a3;
- (id)accessoryInfoControllerSoftwareVersionTopicForController:(id)a3;
- (id)accessoryInfoControllerTopicForWifiInfo;
- (id)appleMediaProfileForAccessoryUUID:(id)a3;
- (id)assistantAccessControlModelWithRemovedAccessoriesForAccessorySettingsController:(id)a3;
- (id)assistantObject;
- (id)availableDestinationIdentifiersForMediaDestinationController:(id)a3;
- (id)backingStoreObjectForMediaDestination;
- (id)backingStoreObjectForMediaDestinationControllerData;
- (id)backingStoreObjects:(int64_t)a3;
- (id)committedAudioDestination;
- (id)committedAudioDestinationControllerData;
- (id)controller:(id)a3 topicForKeyPath:(id)a4;
- (id)createAppleMediaAccessoryMessengerWithIdentifier:(id)a3 messageDispatcher:(id)a4 router:(id)a5 localHandler:(id)a6;
- (id)currentAccessorySoftwareVersion;
- (id)currentDestinationTypeForMediaDestinationControllerMetricsEventDispatcher:(id)a3;
- (id)currentRoomForAppleMediaAccessoryMetricsDispatcher:(id)a3;
- (id)currentUserForMediaDestinationControllerMetricsEventDispatcher:(id)a3;
- (id)deviceMonitor;
- (id)dumpSimpleState;
- (id)dumpStateLocalSettings;
- (id)dumpStateWithPrivacyLevel:(unint64_t)a3;
- (id)eventSourceIdentifierNameForAccessoryInfoController:(id)a3;
- (id)eventSourceIdentifierNameForFetchedSettingsController:(id)a3;
- (id)fetchSentinelZoneDidFinishFutureForAppleMediaAccessorySensorManager:(id)a3;
- (id)homeUUID;
- (id)homeUUIDForAppleMediaAccessorySensorManager:(id)a3;
- (id)idsIdentifierInternal;
- (id)languageValueList;
- (id)legacyAudioDestination;
- (id)legacyAudioDestinationControllerData;
- (id)legacyCommittedAudioDestination;
- (id)legacyCommittedAudioDestinationControllerData;
- (id)logIdentifier;
- (id)mediaDestinationController:(id)a3 destinationManagerWithIdentifier:(id)a4;
- (id)mediaDestinationController:(id)a3 destinationWithParentIdentifier:(id)a4;
- (id)mediaDestinationController:(id)a3 rootDestinationWithDecendantIdentifier:(id)a4;
- (id)mediaDestinationControllerWithData:(id)a3 backingStore:(id)a4 messageDispatcher:(id)a5 notificationCenter:(id)a6 logEventSubmitter:(id)a7 dailyScheduler:(id)a8 targetDevice:(BOOL)a9 dataSource:(id)a10 delegate:(id)a11;
- (id)mediaDestinationManager:(id)a3 destinationControllerWithIdentifier:(id)a4;
- (id)mediaGroupLocalDataStorageForMediaDestinationController:(id)a3;
- (id)mediaGroupParticipantDataLocalStorage;
- (id)mediaGroupParticipantLocalDataStorageForMediaDestinationManager:(id)a3;
- (id)messageSendPolicy;
- (id)modelObjectWithChangeType:(unint64_t)a3;
- (id)modelsToMakeSettingsForController:(id)a3 parentUUID:(id)a4;
- (id)modelsToMigrateSettingsForController:(id)a3;
- (id)remoteMessageDestination;
- (id)remoteMessageDestinationForAccessorySettingsController:(id)a3 target:(id)a4;
- (id)residentNotificationObjectForAppleMediaAccessorySensorManager:(id)a3;
- (id)rootDestinationManagerForMediaDestinationManager:(id)a3;
- (id)runtimeState;
- (id)subscriptionProvider;
- (id)transactionWithObjectChangeType:(unint64_t)a3;
- (int64_t)mediaDestinationControllerMetricsEventDispatcher:(id)a3 destinationTypeForDestinationWithIdentifier:(id)a4;
- (int64_t)numberOfActionSetsWithCurrentAccessoryMediaActionForAppleMediaAccessoryMetricsDispatcher:(id)a3;
- (int64_t)numberOfCurrentAccessoryPairedSensorsForAppleMediaAccessoryMetricsDispatcher:(id)a3;
- (int64_t)numberOfTriggersWithCurrentAccessoryPairedSensorsForAppleMediaAccessoryMetricsDispatcher:(id)a3;
- (int64_t)productColor;
- (int64_t)reachableTransports;
- (unint64_t)expectedDestinationSupportOptions;
- (unint64_t)homePodVariant;
- (unint64_t)supportedStereoPairVersions;
- (void)_applySoftwareUpdateModel:(id)a3 completion:(id)a4;
- (void)_applySoftwareUpdateWithDescriptor:(id)a3;
- (void)_configureGroupParticipantLocalDataStorageWithHome:(id)a3;
- (void)_encodeMediaDestinationAndControllerDataWithCoder:(id)a3;
- (void)_encodeWithCoder:(id)a3;
- (void)_fetchAvailableUpdate:(id)a3;
- (void)_fetchMultiUserLanguages;
- (void)_fixCloudKeyIfNeeded;
- (void)_handleTriggerPairingIdentityUpdateNotification:(id)a3;
- (void)_handleUpdatedName:(id)a3;
- (void)_handleWiFiPickerMessage:(id)a3 withName:(id)a4;
- (void)_installManagedConfigurationProfileWithData:(id)a3 completion:(id)a4;
- (void)_legacyEncodeMediaDestinationAndControllerDataWithCoder:(id)a3;
- (void)_registerForMessages;
- (void)_registerForNotifications;
- (void)_relayRequestMessage:(id)a3 responseHandler:(id)a4;
- (void)_removeManagedConfigurationProfileWithIdentifier:(id)a3 completion:(id)a4;
- (void)_startUpdate:(id)a3;
- (void)_updateSoftwareVersion:(id)a3;
- (void)accessoryInfoController:(id)a3 didUpdateWifiInfo:(id)a4;
- (void)accessorySettingsController:(id)a3 saveWithReason:(id)a4;
- (void)accessorySettingsController:(id)a3 saveWithReason:(id)a4 model:(id)a5;
- (void)addAdvertisement:(id)a3;
- (void)addHostedAccessory:(id)a3;
- (void)addUser:(id)a3 completionHandler:(id)a4;
- (void)autoConfigureTargetControllers;
- (void)configureAppleMediaAccessoryMessengerWithFactory:(id)a3;
- (void)configureAudioDestinationController;
- (void)configureAudioDestinationManager;
- (void)configureWithHome:(id)a3 msgDispatcher:(id)a4 configurationTracker:(id)a5 initialConfiguration:(BOOL)a6;
- (void)createAudioDestination;
- (void)createAudioDestinationController;
- (void)createPairingIdentity;
- (void)dealloc;
- (void)deleteSiriHistoryForAccessoryWithUUID:(id)a3 completionHandler:(id)a4;
- (void)encodeFlagsFromHostedAccessories:(id)a3 coder:(id)a4;
- (void)encodeServicesFromHostedAccessories:(id)a3 coder:(id)a4;
- (void)encodeWithCoder:(id)a3;
- (void)handleCurrentDeviceIRKUpdated:(id)a3;
- (void)handleCurrentDeviceUpdated:(id)a3;
- (void)handleCurrentNetworkChangedNotification:(id)a3;
- (void)handleDeleteSiriHistoryRequest:(id)a3;
- (void)handleDeviceIsNotReachable:(id)a3;
- (void)handleDeviceIsPublishingChangedNotification:(id)a3;
- (void)handleDeviceIsReachable:(id)a3;
- (void)handleFetchManagedConfigurationProfiles:(id)a3;
- (void)handleHomeUserRemovedNotification:(id)a3;
- (void)handleInstallManagedConfigurationProfile:(id)a3;
- (void)handleRemoveManagedConfigurationProfile:(id)a3;
- (void)handleRemovedMediaDestinationControllerModel:(id)a3 message:(id)a4;
- (void)handleRemovedMediaDestinationModel:(id)a3 message:(id)a4;
- (void)handleRoomChanged:(id)a3;
- (void)handleRoomNameChanged:(id)a3;
- (void)handleSoftwareUpdateV2Scan:(id)a3;
- (void)handleTransactionUpdatedPublicPairingIdentity:(id)a3 result:(id)a4;
- (void)handleUpdatePreferredMediaUser:(id)a3;
- (void)handleUpdatedMediaDestinationControllerModel:(id)a3 message:(id)a4;
- (void)handleUpdatedMediaDestinationModel:(id)a3 message:(id)a4;
- (void)languagesChangedForAccessorySettingsController:(id)a3;
- (void)legacyCreateAudioDestinationControllerWithControllerIdentifier:(id)a3;
- (void)legacyCreateAudioDestinationWithIdentifier:(id)a3 supportedOptions:(unint64_t)a4;
- (void)mediaDestinationControllerDidUpdateStagedValues:(id)a3;
- (void)mediaDestinationManagerDidUpdateStagedValues:(id)a3;
- (void)mergeAudioDestination:(id)a3;
- (void)mergeAudioDestinationControllerData:(id)a3;
- (void)migrateAudioDestinationControllerWithCloudZone:(id)a3 migrationQueue:(id)a4 completion:(id)a5;
- (void)migrateAudioDestinationWithCloudZone:(id)a3 migrationQueue:(id)a4 completion:(id)a5;
- (void)migrateLocalParticipantData;
- (void)migrateWithCloudZone:(id)a3 migrationQueue:(id)a4 completion:(id)a5;
- (void)notifyClientsOfUpdatedAccessoryControllableValue:(BOOL)a3;
- (void)notifyFrameworkOfUpdatedPairingIdentity;
- (void)pairingsWithCompletionHandler:(id)a3;
- (void)performAfterDelay:(double)a3 block:(id)a4 queue:(id)a5;
- (void)performLocalAddAccessoryWithDescription:(id)a3 progressHandlerDelegate:(id)a4 completion:(id)a5;
- (void)populateModelObject:(id)a3 version:(int64_t)a4;
- (void)postDeviceIRKIfDifferent:(id)a3;
- (void)registerForPublishingNotifications;
- (void)removeAdvertisement:(id)a3;
- (void)removeAudioDestination;
- (void)removeHostedAccessory:(id)a3;
- (void)removeManagedConfigurationProfileWithProfileData:(id)a3 completion:(id)a4;
- (void)removeUser:(id)a3 completionHandler:(id)a4;
- (void)renameService:(id)a3 name:(id)a4;
- (void)runTransactionWithPreferredMediaUserUUID:(id)a3 selectionType:(unint64_t)a4 completion:(id)a5;
- (void)setCapabilitiesInternal:(id)a3;
- (void)setDeviceController:(id)a3;
- (void)setIdsIdentifier:(id)a3;
- (void)setLastStagedWifiNetworkInfo:(id)a3;
- (void)setPairingIdentity:(id)a3;
- (void)setProductColor:(int64_t)a3;
- (void)setRawCapabilities:(id)a3;
- (void)setRemotelyReachable:(BOOL)a3;
- (void)setSetupActivity:(id)a3;
- (void)setSetupStartTimestamp:(double)a3;
- (void)setSoftwareVersion:(id)a3;
- (void)setSupportedStereoPairVersions:(unint64_t)a3;
- (void)setWifiNetworkInfo:(id)a3;
- (void)startMonitoringReachability;
- (void)transactionObjectRemoved:(id)a3 message:(id)a4;
- (void)transactionObjectUpdated:(id)a3 newValues:(id)a4 message:(id)a5;
- (void)unconfigure;
- (void)unsetAudioDestination;
- (void)unsetAudioDestinationControllerData;
- (void)updatePreferredMediaUser:(id)a3 selectionType:(unint64_t)a4;
- (void)updatePreferredMediaUserWithUUID:(id)a3 selectionType:(unint64_t)a4 completion:(id)a5;
- (void)updateProductInformation;
- (void)updateReachabilityFromDevicePublishingState;
- (void)updateWiFiNetworkInfo;
- (void)updateWithDevice:(id)a3;
@end

@implementation HMDAppleMediaAccessory

- (void)deleteSiriHistoryForAccessoryWithUUID:(id)a3 completionHandler:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDAppleMediaAccessory *)self messenger];
  v9 = v8;
  if (v8)
  {
    [v8 sendDeleteSiriHistoryRequestForAccessoryWithUUID:v6 completionHandler:v7];
  }

  else
  {
    v10 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:4];
    v11 = objc_autoreleasePoolPush();
    v12 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v16 = 138543874;
      v17 = v14;
      v18 = 2112;
      v19 = v6;
      v20 = 2112;
      v21 = v10;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_ERROR, "%{public}@Failed to get messenger to delete siri history for accessory with uuid: %@ error: %@", &v16, 0x20u);
    }

    objc_autoreleasePoolPop(v11);
    v7[2](v7, v10);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (BOOL)supportsHomeHub
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = [(HMDAppleMediaAccessory *)self capabilities];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 supportsHomeHub];
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
    v7 = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      v10 = [(HMDAppleMediaAccessory *)v7 device];
      v13 = 138543874;
      v14 = v9;
      v15 = 2112;
      v16 = v10;
      v17 = 2112;
      v18 = 0;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_ERROR, "%{public}@Failed to get supports home hub due to no capabilities or device: %@, capabilities: %@", &v13, 0x20u);
    }

    objc_autoreleasePoolPop(v6);
    v5 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v5;
}

- (HMDAppleMediaAccessory)accessoryWithUUID:(id)a3 forAppleMediaAccessoryLocalMessageHandler:(id)a4
{
  v5 = a3;
  v6 = [(HMDAccessory *)self home];
  v7 = [v6 accessoryWithUUID:v5];

  return v7;
}

- (HMDAppleMediaAccessoryDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (HMDMediaDestinationManagerFactory)mediaDestinationManagerFactory
{
  WeakRetained = objc_loadWeakRetained(&self->_mediaDestinationManagerFactory);

  return WeakRetained;
}

- (HMDMediaDestinationControllerFactory)mediaDestinationControllerFactory
{
  WeakRetained = objc_loadWeakRetained(&self->_mediaDestinationControllerFactory);

  return WeakRetained;
}

- (BOOL)isHH1EOLEnabled
{
  v3 = [(HMDAccessory *)self home];
  v4 = [v3 homeManager];

  v5 = [(HMDAppleMediaAccessory *)self softwareVersion];
  LOBYTE(v3) = [v4 isHH1EOLForResidentDeviceRunningSoftwareVersion:v5];

  return v3;
}

- (void)performAfterDelay:(double)a3 block:(id)a4 queue:(id)a5
{
  v6 = (a3 * 1000000000.0);
  v7 = a5;
  block = a4;
  v8 = dispatch_time(0, v6);
  dispatch_after(v8, v7, block);
}

- (BOOL)accountHasSentinelZoneForAppleMediaAccessorySensorManager:(id)a3
{
  v3 = [(HMDAccessory *)self home];
  v4 = [v3 homeManager];
  v5 = [v4 hh2FrameworkSwitch];
  v6 = [v5 checkExistenceOfHH2SentinelZone];

  return v6;
}

- (id)fetchSentinelZoneDidFinishFutureForAppleMediaAccessorySensorManager:(id)a3
{
  v3 = [(HMDAccessory *)self home];
  v4 = [v3 homeManager];
  v5 = [v4 hh2FrameworkSwitch];
  v6 = [v5 fetchSentinelZoneDidFinishFuture];

  return v6;
}

- (BOOL)isReadyForSensorPairing:(id)a3
{
  v3 = [(HMDAccessory *)self home];
  v4 = [v3 homeManager];
  v5 = [v4 homes];

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __50__HMDAppleMediaAccessory_isReadyForSensorPairing___block_invoke;
  v8[3] = &unk_2797323C0;
  v9 = v3;
  v6 = v3;
  LOBYTE(v4) = [v5 na_any:v8];

  return v4;
}

uint64_t __50__HMDAppleMediaAccessory_isReadyForSensorPairing___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 uuid];
  v4 = [*(a1 + 32) uuid];
  v5 = [v3 hmf_isEqualToUUID:v4];

  return v5;
}

- (id)accessoriesWithHostUUID:(id)a3 forAppleMediaAccessorySensorManager:(id)a4
{
  v5 = a3;
  v6 = [(HMDAccessory *)self home];
  v7 = [v6 accessories];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __86__HMDAppleMediaAccessory_accessoriesWithHostUUID_forAppleMediaAccessorySensorManager___block_invoke;
  v11[3] = &unk_27972C828;
  v12 = v5;
  v8 = v5;
  v9 = [v7 na_filter:v11];

  return v9;
}

uint64_t __86__HMDAppleMediaAccessory_accessoriesWithHostUUID_forAppleMediaAccessorySensorManager___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 hostAccessory];
  v4 = [v3 uuid];
  v5 = [v4 hmf_isEqualToUUID:*(a1 + 32)];

  return v5;
}

- (id)residentNotificationObjectForAppleMediaAccessorySensorManager:(id)a3
{
  v3 = [(HMDAccessory *)self home];
  v4 = [v3 residentDeviceManager];

  return v4;
}

- (void)renameService:(id)a3 name:(id)a4
{
  v37 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 accessory];
  if (v8)
  {
    v9 = objc_alloc(MEMORY[0x277D0F820]);
    v10 = [v8 uuid];
    v11 = [v9 initWithTarget:v10];

    v30[0] = *MEMORY[0x277CD25F8];
    v12 = [v6 instanceID];
    v30[1] = *MEMORY[0x277CD2620];
    v31[0] = v12;
    v31[1] = v7;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:2];

    v14 = [MEMORY[0x277D0F848] messageWithName:*MEMORY[0x277CD2550] destination:v11 payload:v13];
    objc_initWeak(location, self);
    v22 = MEMORY[0x277D85DD0];
    v23 = 3221225472;
    v24 = __45__HMDAppleMediaAccessory_renameService_name___block_invoke;
    v25 = &unk_2797308C0;
    objc_copyWeak(&v29, location);
    v26 = v6;
    v15 = v8;
    v27 = v15;
    v28 = v7;
    [v14 setResponseHandler:&v22];
    v16 = [(HMDAccessory *)self home:v22];
    [v16 isCurrentDevicePrimaryResident];
    [v15 _handleRenameService:v14];

    objc_destroyWeak(&v29);
    objc_destroyWeak(location);
  }

  else
  {
    v17 = objc_autoreleasePoolPush();
    v18 = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      *location = 138543874;
      *&location[4] = v20;
      v33 = 2112;
      v34 = v6;
      v35 = 2112;
      v36 = v7;
      _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_ERROR, "%{public}@Unable to rename service %@ to %@ as it has no accessory", location, 0x20u);
    }

    objc_autoreleasePoolPop(v17);
  }

  v21 = *MEMORY[0x277D85DE8];
}

void __45__HMDAppleMediaAccessory_renameService_name___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v8 = objc_autoreleasePoolPush();
  v9 = WeakRetained;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v18 = *(a1 + 32);
    v12 = [*(a1 + 40) uuid];
    v13 = v8;
    v14 = v6;
    v15 = *(a1 + 48);
    v16 = HMFBooleanToString();
    *buf = 138544642;
    v20 = v11;
    v21 = 2112;
    v22 = v18;
    v23 = 2112;
    v24 = v12;
    v25 = 2112;
    v26 = v15;
    v6 = v14;
    v8 = v13;
    v27 = 2112;
    v28 = v16;
    v29 = 2112;
    v30 = v5;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Did complete renaming service %@ on accessory %@ to %@ after sensor pairing with success: %@/%@", buf, 0x3Eu);
  }

  objc_autoreleasePoolPop(v8);
  v17 = *MEMORY[0x277D85DE8];
}

- (void)performLocalAddAccessoryWithDescription:(id)a3 progressHandlerDelegate:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(HMDAccessory *)self home];
  if (v11)
  {
    objc_initWeak(&location, v11);
    v12 = [MEMORY[0x277D0F8F0] defaultScheduler];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __101__HMDAppleMediaAccessory_performLocalAddAccessoryWithDescription_progressHandlerDelegate_completion___block_invoke;
    v15[3] = &unk_279733CA8;
    objc_copyWeak(&v19, &location);
    v16 = v8;
    v17 = v9;
    v18 = v10;
    v13 = [v12 performWithQualityOfService:25 block:v15];

    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
  }

  else if (v10)
  {
    v14 = [MEMORY[0x277CCA9B8] hmErrorWithCode:21];
    (*(v10 + 2))(v10, v14);
  }
}

void __101__HMDAppleMediaAccessory_performLocalAddAccessoryWithDescription_progressHandlerDelegate_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained performLocalAddAccessoryWithDescription:*(a1 + 32) progressHandlerDelegate:*(a1 + 40) completion:*(a1 + 48)];
}

- (BOOL)isResidentConfirmedForAppleMediaAccessorySensorManager:(id)a3
{
  v3 = [(HMDAccessory *)self home];
  v4 = [v3 primaryResident];
  v5 = [v4 isConfirmed];

  return v5;
}

- (id)homeUUIDForAppleMediaAccessorySensorManager:(id)a3
{
  v3 = [(HMDAccessory *)self home];
  v4 = [v3 uuid];

  return v4;
}

- (HMDAppleMediaAccessory)accessoryWithUUID:(id)a3 forAppleMediaAccessorySensorManager:(id)a4
{
  v5 = a3;
  v6 = [(HMDAccessory *)self home];
  v7 = [v6 accessoryWithUUID:v5];

  return v7;
}

- (id)accessoryBrowserForAppleMediaAccessorySensorManager:(id)a3
{
  v3 = [(HMDAccessory *)self home];
  v4 = [v3 accessoryBrowser];

  return v4;
}

- (id)appleMediaProfileForAccessoryUUID:(id)a3
{
  v3 = [(HMDMediaAccessory *)self mediaProfile];
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

  return v4;
}

- (int64_t)numberOfActionSetsWithCurrentAccessoryMediaActionForAppleMediaAccessoryMetricsDispatcher:(id)a3
{
  v4 = [(HMDAccessory *)self home];
  v5 = [v4 actionSets];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __115__HMDAppleMediaAccessory_numberOfActionSetsWithCurrentAccessoryMediaActionForAppleMediaAccessoryMetricsDispatcher___block_invoke;
  v9[3] = &unk_27972F278;
  v9[4] = self;
  v6 = [v5 na_filter:v9];

  v7 = [v6 count];
  return v7;
}

uint64_t __115__HMDAppleMediaAccessory_numberOfActionSetsWithCurrentAccessoryMediaActionForAppleMediaAccessoryMetricsDispatcher___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 actions];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __115__HMDAppleMediaAccessory_numberOfActionSetsWithCurrentAccessoryMediaActionForAppleMediaAccessoryMetricsDispatcher___block_invoke_2;
  v6[3] = &unk_27972AF48;
  v6[4] = *(a1 + 32);
  v4 = [v3 na_any:v6];

  return v4;
}

uint64_t __115__HMDAppleMediaAccessory_numberOfActionSetsWithCurrentAccessoryMediaActionForAppleMediaAccessoryMetricsDispatcher___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
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
  v6 = v5;
  if (v5)
  {
    v7 = [v5 mediaProfiles];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __115__HMDAppleMediaAccessory_numberOfActionSetsWithCurrentAccessoryMediaActionForAppleMediaAccessoryMetricsDispatcher___block_invoke_3;
    v10[3] = &unk_27972A1E8;
    v10[4] = *(a1 + 32);
    v8 = [v7 na_any:v10];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t __115__HMDAppleMediaAccessory_numberOfActionSetsWithCurrentAccessoryMediaActionForAppleMediaAccessoryMetricsDispatcher___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 mediaProfile];
  v5 = [v4 uniqueIdentifier];
  v6 = [v3 uniqueIdentifier];

  v7 = [v5 hmf_isEqualToUUID:v6];
  return v7;
}

- (int64_t)numberOfTriggersWithCurrentAccessoryPairedSensorsForAppleMediaAccessoryMetricsDispatcher:(id)a3
{
  v4 = a3;
  os_unfair_recursive_lock_lock_with_options();
  v5 = [(HMDAppleMediaAccessory *)self hostedAccessories];
  v6 = [v5 allObjects];

  os_unfair_recursive_lock_unlock();
  v7 = [v6 na_map:&__block_literal_global_575];
  if (v7)
  {
    v8 = [(HMDAccessory *)self home];
    v9 = [v8 triggers];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __115__HMDAppleMediaAccessory_numberOfTriggersWithCurrentAccessoryPairedSensorsForAppleMediaAccessoryMetricsDispatcher___block_invoke_2;
    v13[3] = &unk_27972A1C0;
    v14 = v7;
    v10 = [v9 na_filter:v13];

    v11 = [v10 count];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

uint64_t __115__HMDAppleMediaAccessory_numberOfTriggersWithCurrentAccessoryPairedSensorsForAppleMediaAccessoryMetricsDispatcher___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
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
  v6 = v5;
  if (v5)
  {
    v7 = [v5 characteristicBaseEvents];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __115__HMDAppleMediaAccessory_numberOfTriggersWithCurrentAccessoryPairedSensorsForAppleMediaAccessoryMetricsDispatcher___block_invoke_3;
    v10[3] = &unk_27972A198;
    v11 = *(a1 + 32);
    v8 = [v7 na_any:v10];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t __115__HMDAppleMediaAccessory_numberOfTriggersWithCurrentAccessoryPairedSensorsForAppleMediaAccessoryMetricsDispatcher___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __115__HMDAppleMediaAccessory_numberOfTriggersWithCurrentAccessoryPairedSensorsForAppleMediaAccessoryMetricsDispatcher___block_invoke_4;
  v8[3] = &unk_2797304D0;
  v9 = v3;
  v5 = v3;
  v6 = [v4 na_any:v8];

  return v6;
}

uint64_t __115__HMDAppleMediaAccessory_numberOfTriggersWithCurrentAccessoryPairedSensorsForAppleMediaAccessoryMetricsDispatcher___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 characteristic];
  v5 = [v4 accessory];
  v6 = [v5 uuid];
  v7 = [v3 uuid];

  v8 = [v6 hmf_isEqualToUUID:v7];
  return v8;
}

void *__115__HMDAppleMediaAccessory_numberOfTriggersWithCurrentAccessoryPairedSensorsForAppleMediaAccessoryMetricsDispatcher___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
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

  return v3;
}

- (int64_t)numberOfCurrentAccessoryPairedSensorsForAppleMediaAccessoryMetricsDispatcher:(id)a3
{
  v4 = a3;
  os_unfair_recursive_lock_lock_with_options();
  v5 = [(HMDAppleMediaAccessory *)self hostedAccessories];
  v6 = [v5 count];

  os_unfair_recursive_lock_unlock();
  return v6;
}

- (id)currentRoomForAppleMediaAccessoryMetricsDispatcher:(id)a3
{
  v3 = [(HMDAccessory *)self room];
  v4 = [v3 name];
  v5 = [v4 copy];

  return v5;
}

- (id)logIdentifier
{
  v2 = [(HMDAccessory *)self uuid];
  v3 = [v2 UUIDString];

  return v3;
}

- (void)_handleWiFiPickerMessage:(id)a3 withName:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 mutableCopy];
  [v8 setName:v7];
  objc_initWeak(&location, self);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __60__HMDAppleMediaAccessory__handleWiFiPickerMessage_withName___block_invoke;
  v10[3] = &unk_279733AE8;
  objc_copyWeak(&v12, &location);
  v9 = v6;
  v11 = v9;
  [(HMDAppleMediaAccessory *)self _relayRequestMessage:v8 responseHandler:v10];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __60__HMDAppleMediaAccessory__handleWiFiPickerMessage_withName___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v7 = *(a1 + 32);
    if (v10)
    {
      [v7 respondWithError:v10];
      goto LABEL_7;
    }

    v9 = [v5 copy];
    [v7 respondWithPayload:v9];
  }

  else
  {
    v8 = *(a1 + 32);
    v9 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    [v8 respondWithError:v9];
  }

LABEL_7:
}

- (id)_dumpStateCachedSettingsForHome:(id)a3 accessory:(id)a4 eventStoreReadHandle:(id)a5
{
  v47 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v30 = [MEMORY[0x277CBEB38] dictionary];
  v27 = objc_alloc_init(HMDAccessorySettingsEventHelper);
  v28 = v8;
  v29 = v7;
  [(HMDAccessorySettingsEventHelper *)v27 allTopicsForHome:v7 accessory:v8];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = v39 = 0u;
  v10 = [obj countByEnumeratingWithState:&v36 objects:v46 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v37;
    v31 = v9;
    do
    {
      v13 = 0;
      v33 = v11;
      do
      {
        if (*v37 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v36 + 1) + 8 * v13);
        v15 = [v9 lastEventForTopic:v14];
        if (v15)
        {
          v35 = 0;
          v16 = [MEMORY[0x277CD1AD8] decodeSettingFromEvent:v15 error:&v35];
          v17 = v35;
          if (v17)
          {
            v18 = v17;
            v19 = v12;
            v20 = objc_autoreleasePoolPush();
            v21 = self;
            v22 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
            {
              v23 = HMFGetLogIdentifier();
              *buf = 138543874;
              v41 = v23;
              v42 = 2112;
              v43 = v14;
              v44 = 2112;
              v45 = v18;
              _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_INFO, "%{public}@Error decoding stored setting for topic %@, error: %@", buf, 0x20u);

              v9 = v31;
            }

            objc_autoreleasePoolPop(v20);
            v12 = v19;
            v11 = v33;
          }

          else
          {
            if (!v16)
            {
              goto LABEL_14;
            }

            v18 = [v16 description];
            v24 = [v16 keyPath];
            [v30 setObject:v18 forKeyedSubscript:v24];
          }
        }

LABEL_14:

        ++v13;
      }

      while (v11 != v13);
      v11 = [obj countByEnumeratingWithState:&v36 objects:v46 count:16];
    }

    while (v11);
  }

  v25 = *MEMORY[0x277D85DE8];

  return v30;
}

- (id)dumpStateLocalSettings
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = [(HMDAccessory *)self home];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 homeManager];
    if (v5)
    {
      v6 = [v4 uuid];
      v7 = [(HMDAccessory *)self uuid];
      v8 = [v5 eventStoreReadHandle];
      v9 = [(HMDAppleMediaAccessory *)self _dumpStateCachedSettingsForHome:v6 accessory:v7 eventStoreReadHandle:v8];
    }

    else
    {
      v14 = objc_autoreleasePoolPush();
      v15 = self;
      v16 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = HMFGetLogIdentifier();
        v20 = 138543362;
        v21 = v17;
        _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_ERROR, "%{public}@Media accessory that has a home but does not have home manager", &v20, 0xCu);
      }

      objc_autoreleasePoolPop(v14);
      v9 = MEMORY[0x277CBEC10];
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
      v20 = 138543362;
      v21 = v13;
      _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_ERROR, "%{public}@Media accessory does not have a home", &v20, 0xCu);
    }

    objc_autoreleasePoolPop(v10);
    v9 = MEMORY[0x277CBEC10];
  }

  v18 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)dumpSimpleState
{
  v12.receiver = self;
  v12.super_class = HMDAppleMediaAccessory;
  v3 = [(HMDMediaAccessory *)&v12 dumpSimpleState];
  v4 = [v3 mutableCopy];

  v5 = *MEMORY[0x277D0F170];
  v6 = [v4 hmf_stringForKey:*MEMORY[0x277D0F170]];
  v7 = [(HMDAppleMediaAccessory *)self device];
  v8 = [v7 identifier];
  v9 = [v8 UUIDString];
  v10 = [v6 stringByAppendingFormat:@", device: %@", v9];

  [v4 setObject:v10 forKeyedSubscript:v5];

  return v4;
}

- (id)dumpStateWithPrivacyLevel:(unint64_t)a3
{
  v16.receiver = self;
  v16.super_class = HMDAppleMediaAccessory;
  v4 = [(HMDMediaAccessory *)&v16 dumpStateWithPrivacyLevel:a3];
  v5 = [v4 mutableCopy];

  v6 = *MEMORY[0x277D0F170];
  v7 = [v5 hmf_stringForKey:*MEMORY[0x277D0F170]];
  v8 = [(HMDAppleMediaAccessory *)self device];
  v9 = [v8 description];
  v10 = [v7 stringByAppendingFormat:@", device: %@", v9];

  os_unfair_recursive_lock_lock_with_options();
  v11 = [(HMDAppleMediaAccessory *)self hostedAccessories];
  v12 = [v11 allObjects];
  v13 = [v12 na_map:&__block_literal_global_562];
  v14 = [v10 stringByAppendingFormat:@", hosted accessory uuids: %@", v13];

  os_unfair_recursive_lock_unlock();
  [v5 setObject:v14 forKeyedSubscript:v6];

  return v5;
}

id __52__HMDAppleMediaAccessory_dumpStateWithPrivacyLevel___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 uuid];
  v3 = [v2 UUIDString];

  return v3;
}

- (void)encodeFlagsFromHostedAccessories:(id)a3 coder:(id)a4
{
  v8 = a3;
  v5 = a4;
  if ([v5 hmd_isForXPCTransport])
  {
    v6 = [v8 na_reduceWithInitialValue:&unk_2866286D8 reducer:&__block_literal_global_551_94407];
    [v5 encodeObject:v6 forKey:@"accessoryFlagsCodingKey"];
  }

  else
  {
    v7 = _HMFPreconditionFailure();
    __65__HMDAppleMediaAccessory_encodeFlagsFromHostedAccessories_coder___block_invoke(v7);
  }
}

id __65__HMDAppleMediaAccessory_encodeFlagsFromHostedAccessories_coder___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = MEMORY[0x277CCABB0];
  v6 = [a3 unsignedIntegerValue];
  v7 = v4;
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

  v10 = [v9 accessoryFlags];

  v11 = [v5 numberWithUnsignedInteger:{objc_msgSend(v10, "unsignedIntegerValue") | v6}];

  return v11;
}

- (void)encodeServicesFromHostedAccessories:(id)a3 coder:(id)a4
{
  v11 = a3;
  v5 = a4;
  if ([v5 hmd_isForXPCTransport])
  {
    v6 = [v11 na_flatMap:&__block_literal_global_541_94410];
    v7 = [v11 na_firstObjectPassingTest:&__block_literal_global_545];
    v8 = [v7 dataSource];
    v9 = [v8 hapMetadata];

    [HMDHAPAccessory encodeServices:v6 forXPCCoder:v5 metadata:v9];
  }

  else
  {
    v10 = _HMFPreconditionFailure();
    __68__HMDAppleMediaAccessory_encodeServicesFromHostedAccessories_coder___block_invoke_2(v10);
  }
}

BOOL __68__HMDAppleMediaAccessory_encodeServicesFromHostedAccessories_coder___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
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
  v5 = [v4 dataSource];

  v6 = [v5 hapMetadata];
  v7 = v6 != 0;

  return v7;
}

id __68__HMDAppleMediaAccessory_encodeServicesFromHostedAccessories_coder___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
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
  v5 = [v4 services];

  return v5;
}

- (void)_encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 hmd_isForXPCTransport];
  v6 = [v4 hmd_isForLocalStore];
  v7 = [v4 hmd_homeManagerOptions];
  v46.receiver = self;
  v46.super_class = HMDAppleMediaAccessory;
  [(HMDMediaAccessory *)&v46 encodeWithCoder:v4];
  v8 = [(HMDAppleMediaAccessory *)self pairingIdentity];
  v9 = v8;
  if ((v5 & 1) == 0)
  {
    if (v6)
    {
      [v4 encodeObject:v8 forKey:*MEMORY[0x277CCEC20]];
      v10 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDAppleMediaAccessory fixedPairingIdentityInCloud](self, "fixedPairingIdentityInCloud")}];
      v11 = @"HM.FixedPairingIdentityInCloudCodingKey";
    }

    else
    {
      if (!v8)
      {
        goto LABEL_7;
      }

      v10 = [v8 publicPairingIdentity];
      v11 = *MEMORY[0x277CCEC20];
    }

    [v4 encodeObject:v10 forKey:v11];
  }

LABEL_7:
  if ((v7 & 0x20) != 0)
  {
    if (([v4 hmd_isForRemoteTransport] | v6))
    {
LABEL_9:
      v12 = [(HMDAppleMediaAccessory *)self settingsController];
      [v12 encodeWithCoder:v4];

LABEL_10:
      [(HMDAccessory *)self encodePreferredMediaUser:v4];
      goto LABEL_15;
    }

    if (v5 && [v4 hmd_isForXPCTransportEntitledForSPIAccess])
    {
      if ([(HMDAppleMediaAccessory *)self supportsMessagedHomePodSettings])
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

LABEL_15:
  if ((v7 & 0x841) != 0 || (v7 & 0x10) != 0 && [(HMDAppleMediaAccessory *)self isCurrentAccessory])
  {
    if ([v4 hmd_isForXPCTransport])
    {
      if (![v4 hmd_isForXPCTransportEntitledForSPIAccess])
      {
        goto LABEL_24;
      }

      v13 = [(HMDAppleMediaAccessory *)self deviceForDirectMessaging];
      v14 = [v13 idsIdentifier];
      [v4 encodeObject:v14 forKey:@"HM.accountIdentifier"];

      [v4 encodeObject:v13 forKey:*MEMORY[0x277CCEA18]];
      v15 = [(HMDAppleMediaAccessory *)self device];
      v16 = [v15 rpIdentity];
      v17 = [v16 deviceIRK];
      v18 = [v17 data];
      [v4 encodeObject:v18 forKey:*MEMORY[0x277CCEA20]];
    }

    else
    {
      v13 = [(HMDAppleMediaAccessory *)self device];
      [v4 encodeObject:v13 forKey:*MEMORY[0x277CCEA18]];
    }
  }

LABEL_24:
  v19 = [(HMDAppleMediaAccessory *)self isHH1EOLEnabled];
  [v4 encodeBool:v19 forKey:*MEMORY[0x277CCEAD8]];
  if ((v7 & 0x41) != 0 || [(HMDAppleMediaAccessory *)self isCurrentAccessory]&& (v7 & 0x10) != 0)
  {
    if ([v4 hmd_isForXPCTransport])
    {
      v20 = [(HMDAppleMediaAccessory *)self isDeviceReachable];
      [v4 encodeBool:v20 forKey:*MEMORY[0x277CCE9D8]];
      if ([v4 hmd_isForXPCTransportEntitledForSPIAccess])
      {
        v21 = [(HMDAppleMediaAccessory *)self supportsTargetControl];
        [v4 encodeBool:v21 forKey:*MEMORY[0x277CCF050]];
        v22 = [(HMDAppleMediaAccessory *)self supportsCompanionInitiatedRestart];
        [v4 encodeBool:v22 forKey:*MEMORY[0x277CCEF88]];
        v23 = [(HMDAppleMediaAccessory *)self supportsCompanionInitiatedObliterate];
        [v4 encodeBool:v23 forKey:*MEMORY[0x277CCEF80]];
        v24 = [(HMDAppleMediaAccessory *)self supportsThirdPartyMusic];
        [v4 encodeBool:v24 forKey:*MEMORY[0x277CCF028]];
        v25 = [(HMDAppleMediaAccessory *)self supportsPreferredMediaUser];
        [v4 encodeBool:v25 forKey:*MEMORY[0x277CCF000]];
        v26 = [(HMDAppleMediaAccessory *)self supportsCoordinationDoorbellChime];
        [v4 encodeBool:v26 forKey:*MEMORY[0x277CCEF90]];
        v27 = [(HMDAppleMediaAccessory *)self supportsMediaContentProfile];
        [v4 encodeBool:v27 forKey:*MEMORY[0x277CCEFD8]];
        [v4 encodeBool:1 forKey:*MEMORY[0x277CCEAF8]];
        if (_os_feature_enabled_impl())
        {
          v28 = [(HMDAppleMediaAccessory *)self supportsRMVonAppleTV];
          [v4 encodeBool:v28 forKey:*MEMORY[0x277CCF010]];
        }

        v29 = [(HMDAppleMediaAccessory *)self supportsJustSiri];
        [v4 encodeBool:v29 forKey:*MEMORY[0x277CCEFB8]];
        os_unfair_recursive_lock_lock_with_options();
        v30 = [(HMDAppleMediaAccessory *)self hostedAccessories];
        v31 = [v30 allObjects];

        os_unfair_recursive_lock_unlock();
        [(HMDAppleMediaAccessory *)self encodeServicesFromHostedAccessories:v31 coder:v4];
        [(HMDAppleMediaAccessory *)self encodeFlagsFromHostedAccessories:v31 coder:v4];
        v32 = [(HMDAccessory *)self home];
        v33 = [v32 isCurrentDeviceConfirmedPrimaryResident];
        [v4 encodeBool:v33 forKey:*MEMORY[0x277CCEB20]];
      }

      if ([(HMDAppleMediaAccessory *)self isHomePod])
      {
        v34 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDAppleMediaAccessory homePodVariant](self, "homePodVariant")}];
        [v4 encodeObject:v34 forKey:*MEMORY[0x277CD04D0]];
      }

      v35 = [(HMDAppleMediaAccessory *)self supportsStereoOdeonTTSUBypassingPrimary];
      [v4 encodeBool:v35 forKey:*MEMORY[0x277CCF020]];
      v36 = [(HMDAppleMediaAccessory *)self supportsNetworkDiagnostics];
      [v4 encodeBool:v36 forKey:*MEMORY[0x277CCEFF8]];
      v37 = [(HMDAppleMediaAccessory *)self supportsCrossfadeAsAirPlaySource];
      [v4 encodeBool:v37 forKey:*MEMORY[0x277CCEF98]];
      if ([(HMDAppleMediaAccessory *)self isHomePod])
      {
        v38 = [(HMDAppleMediaAccessory *)self supportsManagedConfigurationProfile];
        [v4 encodeBool:v38 forKey:*MEMORY[0x277CCEFC0]];
        v39 = [(HMDAppleMediaAccessory *)self supportsMessagedHomePodSettings];
        [v4 encodeBool:v39 forKey:*MEMORY[0x277CCEFE0]];
      }

      v40 = [(HMDAppleMediaAccessory *)self supportsSoftwareUpdateV2];
      [v4 encodeBool:v40 forKey:*MEMORY[0x277CCF018]];
    }

    if (![v4 hmd_isForXPCTransport] || objc_msgSend(v4, "hmd_isForXPCTransportEntitledForSPIAccess"))
    {
      v41 = [(HMDAppleMediaAccessory *)self softwareVersion];
      [v4 encodeObject:v41 forKey:*MEMORY[0x277CCEF18]];

      v42 = [(HMDAppleMediaAccessory *)self wifiNetworkInfo];
      [v4 encodeObject:v42 forKey:*MEMORY[0x277CCF108]];

      v43 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDAppleMediaAccessory supportedStereoPairVersions](self, "supportedStereoPairVersions")}];
      [v4 encodeObject:v43 forKey:*MEMORY[0x277CD11A8]];

      v44 = [(HMDAppleMediaAccessory *)self productColor];
      [v4 encodeInteger:v44 forKey:*MEMORY[0x277CD0C90]];
      [(HMDAppleMediaAccessory *)self _encodeMediaDestinationAndControllerDataWithCoder:v4];
    }

    if (([v4 hmd_isForLocalStore] & 1) != 0 || (objc_msgSend(v4, "hmd_isForRemoteTransportOnSameAccount") & 1) != 0 || (objc_msgSend(v4, "hmd_isForRemoteUserAdministrator") & 1) != 0 || objc_msgSend(v4, "hmd_isForXPCTransport") && objc_msgSend(v4, "hmd_isForXPCTransportEntitledForSPIAccess"))
    {
      v45 = [(HMDAppleMediaAccessory *)self remoteLoginHandler];
      [v4 encodeObject:v45 forKey:*MEMORY[0x277CCEC98]];
    }
  }
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  v4 = objc_autoreleasePoolPush();
  [(HMDAppleMediaAccessory *)self _encodeWithCoder:v5];
  objc_autoreleasePoolPop(v4);
}

- (void)removeHostedAccessory:(id)a3
{
  v5 = a3;
  os_unfair_recursive_lock_lock_with_options();
  v4 = [(HMDAppleMediaAccessory *)self hostedAccessories];
  [v4 removeObject:v5];

  os_unfair_recursive_lock_unlock();
}

- (void)addHostedAccessory:(id)a3
{
  v5 = a3;
  os_unfair_recursive_lock_lock_with_options();
  v4 = [(HMDAppleMediaAccessory *)self hostedAccessories];
  [v4 addObject:v5];

  os_unfair_recursive_lock_unlock();
}

- (void)_legacyEncodeMediaDestinationAndControllerDataWithCoder:(id)a3
{
  v4 = a3;
  if ([v4 hmd_isForLocalStore])
  {
    v6 = [(HMDAppleMediaAccessory *)self committedAudioDestinationControllerData];
    [(HMDAppleMediaAccessory *)self committedAudioDestination];
  }

  else
  {
    v6 = [(HMDAppleMediaAccessory *)self audioDestinationControllerData];
    [(HMDAppleMediaAccessory *)self audioDestination];
  }
  v5 = ;
  [v4 encodeObject:v6 forKey:*MEMORY[0x277CCE818]];
  [v4 encodeObject:v5 forKey:*MEMORY[0x277CCE808]];
}

- (void)_encodeMediaDestinationAndControllerDataWithCoder:(id)a3
{
  v4 = a3;
  v8 = v4;
  if (isFeatureHomeTheaterQFAEnabledForTests && (v5 = [isFeatureHomeTheaterQFAEnabledForTests BOOLValue], v4 = v8, v5))
  {
    v6 = [(HMDAppleMediaAccessory *)self audioDestinationControllerData];
    [v8 encodeObject:v6 forKey:*MEMORY[0x277CCE818]];

    v7 = [(HMDAppleMediaAccessory *)self audioDestination];
    [v8 encodeObject:v7 forKey:*MEMORY[0x277CCE808]];
  }

  else
  {
    [(HMDAppleMediaAccessory *)self _legacyEncodeMediaDestinationAndControllerDataWithCoder:v4];
  }
}

- (id)_initWithCoder:(id)a3
{
  v84 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v77.receiver = self;
  v77.super_class = HMDAppleMediaAccessory;
  v5 = [(HMDMediaAccessory *)&v77 initWithCoder:v4];
  if (v5)
  {
    v6 = objc_alloc_init(HMDAppleMediaAccessoryDependencyFactory);
    dependencyFactory = v5->_dependencyFactory;
    v5->_dependencyFactory = v6;

    deviceMediaRouteIdentifierFactory = v5->_deviceMediaRouteIdentifierFactory;
    v5->_deviceMediaRouteIdentifierFactory = &__block_literal_global_527;

    settingsConnectionFactory = v5->_settingsConnectionFactory;
    v5->_settingsConnectionFactory = &__block_literal_global_529_94418;

    v10 = objc_alloc_init(HMDAppleMediaAccessoryModelDataSource);
    modelDataSource = v5->_modelDataSource;
    v5->_modelDataSource = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277CCEA18]];
    device = v5->_device;
    v5->_device = v12;

    if (v5->_device)
    {
      v14 = [(HMDAppleMediaAccessoryDependencyFactory *)v5->_dependencyFactory deviceControllerWithDevice:?];
      deviceController = v5->_deviceController;
      v5->_deviceController = v14;
    }

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277CCEC20]];
    pairingIdentity = v5->_pairingIdentity;
    v5->_pairingIdentity = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277CCEF18]];
    softwareVersion = v5->_softwareVersion;
    v5->_softwareVersion = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277CCF108]];
    wifiNetworkInfo = v5->_wifiNetworkInfo;
    v5->_wifiNetworkInfo = v20;

    objc_storeStrong(&v5->_lastStagedWifiNetworkInfo, v5->_wifiNetworkInfo);
    v22 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v23 = [v22 BOOLForKey:@"mi.hh2"];

    v24 = objc_autoreleasePoolPush();
    v25 = v5;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      v27 = HMFGetLogIdentifier();
      v28 = HMFBooleanToString();
      settingsController = v25->_settingsController;
      *buf = 138543874;
      v79 = v27;
      v80 = 2112;
      v81 = v28;
      v82 = 2112;
      v83 = settingsController;
      _os_log_impl(&dword_2531F8000, v26, OS_LOG_TYPE_INFO, "%{public}@hh2SettingsMigrationEnabled: %@, _settingsController: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v24);
    if ((v23 & 1) == 0 && !v25->_settingsController)
    {
      v30 = [HMDAccessorySettingsController alloc];
      v31 = [(HMDAccessory *)v25 workQueue];
      v32 = [(HMDAccessory *)v25 uuid];
      v33 = *MEMORY[0x277CCECE8];
      v34 = +[HMDMetricsManager sharedLogEventSubmitter];
      v35 = [(HMDAccessorySettingsController *)v30 initWithQueue:v31 delegate:v25 dataSource:v25 parentUUID:v32 codingKey:v33 logEventSubmitter:v34];
      v36 = v25->_settingsController;
      v25->_settingsController = v35;
    }

    [(HMDAccessorySettingsController *)v25->_settingsController decodeWithCoder:v4];
    v37 = [v4 decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277CCEC98]];
    remoteLoginHandler = v25->_remoteLoginHandler;
    v25->_remoteLoginHandler = v37;

    if (!v25->_remoteLoginHandler)
    {
      v39 = [[HMDRemoteLoginHandler alloc] initWithAccessory:v25 loggedInAccountData:0];
      v40 = v25->_remoteLoginHandler;
      v25->_remoteLoginHandler = v39;
    }

    v41 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HM.FixedPairingIdentityInCloudCodingKey"];
    v42 = v41;
    if (v41)
    {
      LOBYTE(v41) = [v41 BOOLValue];
    }

    v25->_fixedPairingIdentityInCloud = v41;
    v43 = *MEMORY[0x277CCE810];
    if ([v4 containsValueForKey:*MEMORY[0x277CCE810]])
    {
      v44 = objc_autoreleasePoolPush();
      v45 = v25;
      v46 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
      {
        HMFGetLogIdentifier();
        v48 = v47 = v42;
        *buf = 138543362;
        v79 = v48;
        _os_log_impl(&dword_2531F8000, v46, OS_LOG_TYPE_INFO, "%{public}@Decoding destination controller data using legacy encoding", buf, 0xCu);

        v42 = v47;
      }

      objc_autoreleasePoolPop(v44);
      [MEMORY[0x277CCAAC8] setClass:objc_opt_class() forClassName:@"HMDMediaDestinationController"];
      v49 = [v4 decodeObjectOfClass:objc_opt_class() forKey:v43];
    }

    else
    {
      v49 = [v4 decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277CCE818]];
    }

    committedAudioDestinationControllerData = v25->_committedAudioDestinationControllerData;
    v25->_committedAudioDestinationControllerData = v49;

    v51 = [v4 decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277CCE808]];
    committedAudioDestination = v25->_committedAudioDestination;
    v25->_committedAudioDestination = v51;

    v53 = v25->_committedAudioDestination;
    if (v53)
    {
      v54 = [(HMMediaDestination *)v53 parentIdentifier];
      v55 = v54;
      if (!v54 || ([v54 UUIDString], v56 = objc_claimAutoreleasedReturnValue(), v57 = objc_msgSend(v56, "isEqualToString:", *MEMORY[0x277CD0860]), v56, v57))
      {
        v76 = v42;
        v58 = objc_autoreleasePoolPush();
        v59 = v25;
        v60 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
        {
          v61 = HMFGetLogIdentifier();
          *buf = 138543362;
          v79 = v61;
          _os_log_impl(&dword_2531F8000, v60, OS_LOG_TYPE_ERROR, "%{public}@No parent identifier given was given - fixing bad legacy encoding state", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v58);
        v62 = objc_alloc(MEMORY[0x277CD1B80]);
        v63 = [(HMMediaDestination *)v25->_committedAudioDestination uniqueIdentifier];
        v64 = [(HMDAccessory *)v59 uuid];
        v65 = [(HMMediaDestination *)v25->_committedAudioDestination supportedOptions];
        v66 = [(HMMediaDestination *)v25->_committedAudioDestination audioGroupIdentifier];
        v67 = [v62 initWithUniqueIdentifier:v63 parentIdentifier:v64 supportedOptions:v65 audioGroupIdentifier:v66];
        v68 = v25->_committedAudioDestination;
        v25->_committedAudioDestination = v67;

        v42 = v76;
      }
    }

    v69 = [v4 decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277CD11A8]];
    v25->_supportedStereoPairVersions = [v69 unsignedIntegerValue];

    __bootstrapSupportedStereoPairVersions(v25);
    [(HMDAccessory *)v25 decodePreferredMediaUser:v4];
    v70 = [HMDAppleMediaAccessorySleepWakeStateController alloc];
    v71 = [(HMDAccessory *)v25 uuid];
    v72 = [(HMDAppleMediaAccessorySleepWakeStateController *)v70 initWithAccessoryUUID:v71 dataSource:v25];
    sleepWakeStateController = v25->_sleepWakeStateController;
    v25->_sleepWakeStateController = v72;

    v25->_productColor = [v4 decodeIntegerForKey:*MEMORY[0x277CD0C90]];
  }

  v74 = *MEMORY[0x277D85DE8];
  return v5;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t294 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t294, &__block_literal_global_569);
  }

  v3 = logCategory__hmf_once_v295;

  return v3;
}

uint64_t __37__HMDAppleMediaAccessory_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v295;
  logCategory__hmf_once_v295 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

+ (id)messageBindingForDispatcher:(id)a3 message:(id)a4 receiver:(id)a5
{
  v77 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
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

  v13 = [v12 home];
  if (v13)
  {
    v14 = [HMDXPCMessagePolicy policyWithEntitlements:5];
    v70[0] = v14;
    v15 = +[HMDRemoteMessagePolicy defaultSecurePolicy];
    v70[1] = v15;
    v16 = [HMDUserMessagePolicy userMessagePolicyWithHome:v13 userPrivilege:3 remoteAccessRequired:0];
    v70[2] = v16;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v70 count:3];

    v18 = [v9 name];
    v19 = *MEMORY[0x277CCEAB8];
    LOBYTE(v15) = HMFEqualObjects();

    v20 = [v9 name];
    if (v15)
    {
      v21 = &selRef_handleFetchManagedConfigurationProfiles_;
LABEL_14:
      v32 = *v21;
      v27 = HMFCreateMessageBindingWithReceiver();

      goto LABEL_15;
    }

    v28 = *MEMORY[0x277CCECB8];
    v29 = HMFEqualObjects();

    v20 = [v9 name];
    if (v29)
    {
      v21 = &selRef_handleRemoveManagedConfigurationProfile_;
      goto LABEL_14;
    }

    v30 = *MEMORY[0x277CCEB18];
    v31 = HMFEqualObjects();

    if (v31)
    {
      v20 = [v9 name];
      v21 = &selRef_handleInstallManagedConfigurationProfile_;
      goto LABEL_14;
    }

    v35 = [HMDXPCMessagePolicy policyWithEntitlements:5];
    v69[0] = v35;
    v36 = +[HMDRemoteMessagePolicy defaultSecurePolicy];
    v69[1] = v36;
    v37 = [HMDUserMessagePolicy userMessagePolicyWithHome:v13 userPrivilege:4 remoteAccessRequired:0];
    v69[2] = v37;
    v38 = [MEMORY[0x277CBEA60] arrayWithObjects:v69 count:3];

    v39 = [v9 name];
    v40 = *MEMORY[0x277CD1080];
    LOBYTE(v36) = HMFEqualObjects();

    v41 = [v9 name];
    if (v36)
    {
      v42 = &selRef__startUpdate_;
    }

    else
    {
      v43 = *MEMORY[0x277CCEA08];
      v44 = HMFEqualObjects();

      v41 = [v9 name];
      if (v44)
      {
        v42 = &selRef_handleDeleteSiriHistoryRequest_;
      }

      else
      {
        v45 = *MEMORY[0x277CCF0D0];
        v46 = HMFEqualObjects();

        v41 = [v9 name];
        if (v46)
        {
          v42 = &selRef_handleUpdatePreferredMediaUser_;
        }

        else
        {
          v47 = *MEMORY[0x277CCEF08];
          v48 = HMFEqualObjects();

          v41 = [v9 name];
          if (v48)
          {
            v42 = &selRef_handleSoftwareUpdateV2Scan_;
          }

          else
          {
            v49 = *MEMORY[0x277CCECF0];
            v50 = HMFEqualObjects();

            v41 = [v9 name];
            if (v50)
            {
              v42 = &selRef__handleScanNetworksMessage_;
            }

            else
            {
              v51 = *MEMORY[0x277CCEB30];
              v52 = HMFEqualObjects();

              v41 = [v9 name];
              if (v52)
              {
                v42 = &selRef__handleAssociateToNetworkMessage_;
              }

              else
              {
                v53 = *MEMORY[0x277CCF118];
                v54 = HMFEqualObjects();

                if (!v54)
                {

                  if (isInternalBuild())
                  {
                    v38 = [HMDUserMessagePolicy userMessagePolicyWithHome:v13 userPrivilege:0 remoteAccessRequired:0];
                    v56 = [HMDXPCMessagePolicy policyWithEntitlements:13];
                    v68[0] = v56;
                    v68[1] = v38;
                    v41 = [MEMORY[0x277CBEA60] arrayWithObjects:v68 count:2];

                    v57 = [v9 name];
                    v58 = *MEMORY[0x277CCF0A8];
                    v59 = HMFEqualObjects();

                    if (v59)
                    {
                      v60 = [v9 name];
                      v27 = HMFCreateMessageBindingWithReceiver();

                      goto LABEL_33;
                    }
                  }

                  v66 = [v12 settingsController];
                  v61 = [v66 messageHandler];
                  v62 = objc_opt_class();
                  v63 = [v12 settingsController];
                  v64 = [v63 messageHandler];
                  v38 = [v62 messageBindingForDispatcher:v8 message:v9 receiver:v64];

                  if (v38)
                  {
                    v65 = v38;
                  }

                  else
                  {
                    v67.receiver = a1;
                    v67.super_class = &OBJC_METACLASS___HMDAppleMediaAccessory;
                    v65 = objc_msgSendSuper2(&v67, sel_messageBindingForDispatcher_message_receiver_, v8, v9, v10);
                  }

                  v27 = v65;
                  goto LABEL_34;
                }

                v41 = [v9 name];
                v42 = &selRef__handleQueryNetworkStatusMessage_;
              }
            }
          }
        }
      }
    }

    v55 = *v42;
    v27 = HMFCreateMessageBindingWithReceiver();
LABEL_33:

LABEL_34:
    goto LABEL_15;
  }

  v22 = objc_autoreleasePoolPush();
  v23 = a1;
  v24 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    v25 = HMFGetLogIdentifier();
    v26 = [v9 name];
    *buf = 138543874;
    v72 = v25;
    v73 = 2112;
    v74 = v26;
    v75 = 2112;
    v76 = v10;
    _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_ERROR, "%{public}@Unable to find binding for message %@, receiver does not have valid home: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v22);
  v27 = 0;
LABEL_15:

  v33 = *MEMORY[0x277D85DE8];

  return v27;
}

+ (BOOL)shouldAcceptMessage:(id)a3 home:(id)a4 privilege:(unint64_t)a5
{
  v37 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if ([v7 isRemote])
  {
    if ([v7 isSecureRemote])
    {
      v9 = [v7 matchingRemoteIdentityUserForHome:v8];
      goto LABEL_6;
    }

    v16 = objc_autoreleasePoolPush();
    v17 = v8;
    v18 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
LABEL_17:

      objc_autoreleasePoolPop(v16);
      v10 = [v7 responseHandler];

      if (v10)
      {
        v21 = [MEMORY[0x277CCA9B8] hmErrorWithCode:10];
        v22 = [v7 responseHandler];
        (v22)[2](v22, v21, 0);

        v10 = 0;
      }

      goto LABEL_30;
    }

    v19 = HMFGetLogIdentifier();
    v33 = 138543362;
    v34 = v19;
    v20 = "%{public}@Only secure clients may modify settings";
LABEL_16:
    _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_DEBUG, v20, &v33, 0xCu);

    goto LABEL_17;
  }

  if (([v7 isEntitledForSPIAccess] & 1) == 0)
  {
    v16 = objc_autoreleasePoolPush();
    v17 = v8;
    v18 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_17;
    }

    v19 = HMFGetLogIdentifier();
    v33 = 138543362;
    v34 = v19;
    v20 = "%{public}@Only entitled clients may modify settings";
    goto LABEL_16;
  }

  v9 = [v8 currentUser];
LABEL_6:
  v10 = v9;
  if (!v9)
  {
    v11 = objc_autoreleasePoolPush();
    v23 = v8;
    v13 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      goto LABEL_28;
    }

    v14 = HMFGetLogIdentifier();
    v33 = 138543618;
    v34 = v14;
    v35 = 2112;
    v36 = v7;
    v15 = "%{public}@Unable to determine originator of message: %@";
    goto LABEL_27;
  }

  if (a5 != 3)
  {
    if (a5 == 4 && ([v9 isAdministrator] & 1) == 0)
    {
      v11 = objc_autoreleasePoolPush();
      v12 = v8;
      v13 = HMFGetOSLogHandle();
      if (!os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        goto LABEL_28;
      }

      v14 = HMFGetLogIdentifier();
      v33 = 138543618;
      v34 = v14;
      v35 = 2112;
      v36 = v10;
      v15 = "%{public}@User does not have administrator privilege: %@";
      goto LABEL_27;
    }

LABEL_22:
    v24 = objc_autoreleasePoolPush();
    v25 = v8;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      v27 = HMFGetLogIdentifier();
      v33 = 138543618;
      v34 = v27;
      v35 = 2112;
      v36 = v7;
      _os_log_impl(&dword_2531F8000, v26, OS_LOG_TYPE_DEBUG, "%{public}@Accepting message: %@", &v33, 0x16u);
    }

    objc_autoreleasePoolPop(v24);
    LOBYTE(v24) = 1;
    goto LABEL_31;
  }

  if ([v9 isOwner])
  {
    goto LABEL_22;
  }

  v11 = objc_autoreleasePoolPush();
  v28 = v8;
  v13 = HMFGetOSLogHandle();
  if (!os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    goto LABEL_28;
  }

  v14 = HMFGetLogIdentifier();
  v33 = 138543618;
  v34 = v14;
  v35 = 2112;
  v36 = v10;
  v15 = "%{public}@User does not have owner privilege: %@";
LABEL_27:
  _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, v15, &v33, 0x16u);

LABEL_28:
  objc_autoreleasePoolPop(v11);
  v24 = [v7 responseHandler];

  if (v24)
  {
    v29 = [MEMORY[0x277CCA9B8] hmErrorWithCode:17 description:@"Insufficient privileges." reason:@"User has insufficient privileges for request." suggestion:0];
    v30 = [v7 responseHandler];
    (v30)[2](v30, v29, 0);

LABEL_30:
    LOBYTE(v24) = 0;
  }

LABEL_31:

  v31 = *MEMORY[0x277D85DE8];
  return v24;
}

id __41__HMDAppleMediaAccessory__initWithCoder___block_invoke_2()
{
  v0 = objc_alloc_init(MEMORY[0x277CEF3A8]);

  return v0;
}

- (HMDAppleMediaAccessory)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = [(HMDAppleMediaAccessory *)self _initWithCoder:v4];
  objc_autoreleasePoolPop(v5);

  return v6;
}

- (void)accessoryInfoController:(id)a3 didUpdateWifiInfo:(id)a4
{
  v5 = a4;
  os_unfair_recursive_lock_lock_with_options();
  wifiNetworkInfo = self->_wifiNetworkInfo;
  self->_wifiNetworkInfo = v5;

  os_unfair_recursive_lock_unlock();
}

- (id)currentAccessorySoftwareVersion
{
  v2 = [MEMORY[0x277D0F8E8] productInfo];
  v3 = [v2 softwareVersion];

  return v3;
}

- (id)accessoryInfoControllerSoftwareVersionTopicForController:(id)a3
{
  v4 = MEMORY[0x277CD16F0];
  v5 = *MEMORY[0x277CCEAA0];
  v6 = [(HMDAccessory *)self home];
  v7 = [v6 uuid];
  v8 = [(HMDAccessory *)self uuid];
  v9 = [v4 topicFromSuffixID:v5 homeUUID:v7 accessoryUUID:v8];

  return v9;
}

- (id)eventSourceIdentifierNameForAccessoryInfoController:(id)a3
{
  v3 = [(HMDAccessory *)self uuid];
  v4 = [v3 UUIDString];

  return v4;
}

- (id)accessoryInfoControllerTopicForWifiInfo
{
  v3 = MEMORY[0x277CD16F0];
  v4 = *MEMORY[0x277CCEAA8];
  v5 = [(HMDAccessory *)self home];
  v6 = [v5 uuid];
  v7 = [(HMDAccessory *)self uuid];
  v8 = [v3 topicFromSuffixID:v4 homeUUID:v6 accessoryUUID:v7];

  return v8;
}

- (HMDCurrentAccessorySetupMetricDispatcher)currentAccessorySetupMetricDispatcher
{
  v2 = [(HMDAccessory *)self home];
  v3 = [v2 homeManager];
  v4 = [v3 currentAccessorySetupMetricDispatcher];

  return v4;
}

- (id)eventSourceIdentifierNameForFetchedSettingsController:(id)a3
{
  v3 = [(HMDAccessory *)self uuid];
  v4 = [v3 UUIDString];

  return v4;
}

- (id)controller:(id)a3 topicForKeyPath:(id)a4
{
  v5 = a4;
  v6 = [(HMDAccessory *)self home];
  v7 = [v6 uuid];
  v8 = [(HMDAccessory *)self uuid];
  v9 = MEMORY[0x259C01CC0](v7, v8, v5);

  return v9;
}

- (HMELastEventStoreReadHandle)eventStoreReadHandle
{
  v2 = [(HMDAccessory *)self home];
  v3 = [v2 homeManager];
  v4 = [v3 eventStoreReadHandle];

  return v4;
}

- (id)subscriptionProvider
{
  v2 = [(HMDAccessory *)self home];
  v3 = [v2 homeManager];
  v4 = [v3 localAndRemoteSubscriptionProvider];

  return v4;
}

- (HMEEventForwarder)eventForwarder
{
  v2 = [(HMDAccessory *)self home];
  v3 = [v2 homeManager];
  v4 = [v3 eventForwarder];

  return v4;
}

- (HMMLogEventSubmitting)logEventSubmitter
{
  v2 = [(HMDAccessory *)self home];
  v3 = [v2 logEventSubmitter];

  return v3;
}

- (id)homeUUID
{
  v2 = [(HMDAccessory *)self home];
  v3 = [v2 uuid];

  return v3;
}

- (void)languagesChangedForAccessorySettingsController:(id)a3
{
  v9[1] = *MEMORY[0x277D85DE8];
  v4 = [(HMDAccessory *)self home];
  if (v4)
  {
    v5 = [(HMDMediaAccessory *)self notificationCenter];
    v8 = @"HMDHomeNotificationKey";
    v9[0] = v4;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];
    [v5 postNotificationName:@"HMDAppleMediaAccessoryLanguagesChangedNotification" object:self userInfo:v6];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (id)assistantAccessControlModelWithRemovedAccessoriesForAccessorySettingsController:(id)a3
{
  v11[1] = *MEMORY[0x277D85DE8];
  v4 = [(HMDAccessory *)self home];
  v5 = [v4 currentUser];
  v6 = [v5 assistantAccessControl];
  v11[0] = self;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
  v8 = [v6 assistantAccessControlModelWithRemovedAccessories:v7];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)remoteMessageDestinationForAccessorySettingsController:(id)a3 target:(id)a4
{
  v5 = a4;
  v6 = [(HMDAppleMediaAccessory *)self device];

  if (v6)
  {
    v7 = [HMDRemoteDeviceMessageDestination alloc];
    v8 = [(HMDAppleMediaAccessory *)self device];
    v9 = [(HMDRemoteDeviceMessageDestination *)v7 initWithTarget:v5 device:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)isMultiUserEnabledForAccessorySettingsController:(id)a3
{
  v3 = [(HMDAccessory *)self home];
  v4 = [v3 isMultiUserEnabled];

  return v4;
}

- (void)accessorySettingsController:(id)a3 saveWithReason:(id)a4
{
  v5 = a4;
  v6 = [(HMDAccessory *)self home];
  v9 = [v6 homeManager];

  v7 = [[HMDHomeSaveRequest alloc] initWithReason:v5 information:0 saveOptions:0];
  [v9 saveWithRequest:v7];
  v8 = [(HMDAccessory *)self uuid];
  [v9 updateGenerationCounterWithReason:v5 sourceUUID:v8 shouldNotifyClients:1];
}

- (void)accessorySettingsController:(id)a3 saveWithReason:(id)a4 model:(id)a5
{
  v7 = a4;
  v8 = [(HMDAccessory *)self home];
  [v8 saveWithReason:v7 postSyncNotification:0 objectChange:a5 != 0];
}

- (void)removeManagedConfigurationProfileWithProfileData:(id)a3 completion:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v20 = 0;
  v8 = [MEMORY[0x277D26290] profileWithData:v6 outError:&v20];
  v9 = v20;
  v10 = objc_autoreleasePoolPush();
  v11 = self;
  v12 = HMFGetOSLogHandle();
  v13 = v12;
  if (v8)
  {
    v14 = v9 == 0;
  }

  else
  {
    v14 = 0;
  }

  if (v14)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v17 = HMFGetLogIdentifier();
      v18 = [v8 identifier];
      *buf = 138543618;
      v22 = v17;
      v23 = 2112;
      v24 = v18;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@Remove managed configuration profile with identifier: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    v16 = [v8 identifier];
    [(HMDAppleMediaAccessory *)v11 _removeManagedConfigurationProfileWithIdentifier:v16 completion:v7];
  }

  else
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543874;
      v22 = v15;
      v23 = 2112;
      v24 = v8;
      v25 = 2112;
      v26 = v9;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_ERROR, "%{public}@Failed to get managed configuration profile: %@ with error: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v10);
    v16 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
    v7[2](v7, v16);
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (id)modelsToMigrateSettingsForController:(id)a3
{
  v4 = objc_alloc_init(HMDAccessorySettingsMetadata);
  if (v4 && ([(HMDAppleMediaAccessory *)self settingsController], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    v6 = [(HMDAppleMediaAccessory *)self settingsController];
    v7 = [v6 mergeWithSettingsMetadata:v4];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)modelsToMakeSettingsForController:(id)a3 parentUUID:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v18 = 138543362;
    v19 = v11;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Adding root settings", &v18, 0xCu);
  }

  objc_autoreleasePoolPop(v8);
  v12 = objc_alloc_init(HMDAccessorySettingsMetadata);
  v13 = v12;
  if (v12)
  {
    v14 = [(HMDAccessorySettingsMetadata *)v12 rootGroup];
    v15 = [v14 modelsWithParentIdentifier:v7];

    if ([v15 count])
    {
      goto LABEL_7;
    }
  }

  v15 = 0;
LABEL_7:

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

- (double)setupStartTimestamp
{
  v2 = [(HMDAccessory *)self home];
  v3 = [v2 homeManager];
  [v3 setupStartTimestamp];
  v5 = v4;

  return v5;
}

- (void)setSetupStartTimestamp:(double)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = HMFGetLogIdentifier();
    v12 = 138543618;
    v13 = v8;
    v14 = 2048;
    v15 = a3;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_DEBUG, "%{public}@Setup start timestamp %f", &v12, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [(HMDAccessory *)v6 home];
  v10 = [v9 homeManager];
  [v10 setSetupStartTimestamp:a3];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)setSetupActivity:(id)a3
{
  v4 = a3;
  v6 = [(HMDAccessory *)self home];
  v5 = [v6 homeManager];
  [v5 setSetupActivity:v4];
}

- (HMDAccessorySetupMetricDispatcher)accessorySetupMetricDispatcher
{
  v3 = [(HMDAccessory *)self home];
  v4 = [v3 homeManager];
  v5 = [(HMDAccessory *)self uuid];
  v6 = [v4 accessorySetupMetricDispatcherForAccessoryUUID:v5];

  return v6;
}

- (HMFActivity)setupActivity
{
  v2 = [(HMDAccessory *)self home];
  v3 = [v2 homeManager];
  v4 = [v3 setupActivity];

  return v4;
}

- (HMDBackingStore)backingStore
{
  v2 = [(HMDAccessory *)self home];
  v3 = [v2 backingStore];

  return v3;
}

- (void)mediaDestinationManagerDidUpdateStagedValues:(id)a3
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
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Handling media destination manager did update staged values", &v18, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [(HMDAccessory *)v6 home];
  v10 = [v9 homeManager];

  if (v10)
  {
    v11 = *MEMORY[0x277CD0880];
    v12 = [(HMDAccessory *)v6 uuid];
    [v10 updateGenerationCounterWithReason:v11 sourceUUID:v12 shouldNotifyClients:1];

    [v10 assistantSyncDataChanged:v11];
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    v14 = v6;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      v18 = 138543362;
      v19 = v16;
      _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@Failed to handle expired values due to no home manager", &v18, 0xCu);
    }

    objc_autoreleasePoolPop(v13);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (id)mediaGroupParticipantLocalDataStorageForMediaDestinationManager:(id)a3
{
  v3 = [(HMDAccessory *)self home];
  v4 = [v3 homeManager];
  v5 = [v4 mediaGroupParticipantDataLocalStorage];

  return v5;
}

- (id)rootDestinationManagerForMediaDestinationManager:(id)a3
{
  v4 = a3;
  v5 = [(HMDAccessory *)self home];
  v6 = [v4 identifier];

  v7 = [v5 rootDestinationManagerWithDescendantDestinationIdentifier:v6];

  return v7;
}

- (id)mediaDestinationManager:(id)a3 destinationControllerWithIdentifier:(id)a4
{
  v5 = a4;
  v6 = [(HMDAccessory *)self home];
  v7 = [v6 destinationControllerWithIdentifier:v5];

  return v7;
}

- (id)mediaDestinationControllerWithData:(id)a3 backingStore:(id)a4 messageDispatcher:(id)a5 notificationCenter:(id)a6 logEventSubmitter:(id)a7 dailyScheduler:(id)a8 targetDevice:(BOOL)a9 dataSource:(id)a10 delegate:(id)a11
{
  v17 = a11;
  v18 = a10;
  v19 = a8;
  v20 = a7;
  v21 = a6;
  v22 = a5;
  v23 = a4;
  v24 = a3;
  LOBYTE(v27) = a9;
  v25 = [[HMDMediaDestinationController alloc] initWithData:v24 backingStore:v23 messageDispatcher:v22 notificationCenter:v21 logEventSubmitter:v20 dailyScheduler:v19 targetDevice:v27 dataSource:v18 delegate:v17];

  return v25;
}

- (void)mediaDestinationControllerDidUpdateStagedValues:(id)a3
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
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Handling media destination controller did update staged values", &v18, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [(HMDAccessory *)v6 home];
  v10 = [v9 homeManager];

  if (v10)
  {
    v11 = *MEMORY[0x277CD0880];
    v12 = [(HMDAccessory *)v6 uuid];
    [v10 updateGenerationCounterWithReason:v11 sourceUUID:v12 shouldNotifyClients:1];

    [v10 assistantSyncDataChanged:v11];
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    v14 = v6;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      v18 = 138543362;
      v19 = v16;
      _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@Failed to handle expired values due to no home manager", &v18, 0xCu);
    }

    objc_autoreleasePoolPop(v13);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (id)currentDestinationTypeForMediaDestinationControllerMetricsEventDispatcher:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDAppleMediaAccessory *)self audioDestinationControllerData];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 destinationIdentifier];
    if (v7)
    {
      v8 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDAppleMediaAccessory mediaDestinationControllerMetricsEventDispatcher:destinationTypeForDestinationWithIdentifier:](self, "mediaDestinationControllerMetricsEventDispatcher:destinationTypeForDestinationWithIdentifier:", v4, v7)}];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    v10 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      v15 = 138543362;
      v16 = v12;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_ERROR, "%{public}@Failed to get controller data for media destination controller metrics", &v15, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
    v8 = &unk_2866286C0;
  }

  v13 = *MEMORY[0x277D85DE8];

  return v8;
}

- (int64_t)mediaDestinationControllerMetricsEventDispatcher:(id)a3 destinationTypeForDestinationWithIdentifier:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDAccessory *)self home];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 destinationTypeForDestinationWithIdentifier:v7];
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
      v20 = v7;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_ERROR, "%{public}@Could not get home to derive destination identifier from parent destination identifier: %@", &v17, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    v10 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];
  return v10;
}

- (id)currentUserForMediaDestinationControllerMetricsEventDispatcher:(id)a3
{
  v3 = [(HMDAccessory *)self home];
  v4 = [v3 currentUser];

  return v4;
}

- (id)mediaGroupLocalDataStorageForMediaDestinationController:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDAccessory *)self home];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 homeManager];
    v8 = v7;
    if (v7)
    {
      v9 = [v7 mediaGroupParticipantDataLocalStorage];
      v10 = v9;
      if (v9)
      {
        v11 = v9;
      }

      else
      {
        v20 = objc_autoreleasePoolPush();
        v21 = self;
        v22 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          v23 = HMFGetLogIdentifier();
          v26 = 138543618;
          v27 = v23;
          v28 = 2112;
          v29 = v8;
          _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_ERROR, "%{public}@Failed to get media group participant data local storage on home manager: %@", &v26, 0x16u);
        }

        objc_autoreleasePoolPop(v20);
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
        v26 = 138543618;
        v27 = v19;
        v28 = 2112;
        v29 = v6;
        _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_ERROR, "%{public}@Failed to get media group participant data local storage due to no home manager on home: %@", &v26, 0x16u);
      }

      objc_autoreleasePoolPop(v16);
      v10 = 0;
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
      v26 = 138543362;
      v27 = v15;
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_ERROR, "%{public}@Failed to get media group participant data local storage due to no home", &v26, 0xCu);
    }

    objc_autoreleasePoolPop(v12);
    v10 = 0;
  }

  v24 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)mediaDestinationController:(id)a3 rootDestinationWithDecendantIdentifier:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDAccessory *)self home];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 rootDestinationManagerWithDescendantDestinationIdentifier:v7];
    v11 = [v10 destination];
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    v13 = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      v18 = 138543618;
      v19 = v15;
      v20 = 2112;
      v21 = v7;
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_ERROR, "%{public}@Could not get home to derive root destination from destination identifier: %@", &v18, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
    v11 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)mediaDestinationController:(id)a3 destinationWithParentIdentifier:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDAccessory *)self home];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 destinationManagerWithParentIdentifier:v7];
    v11 = [v10 destination];
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    v13 = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      v18 = 138543618;
      v19 = v15;
      v20 = 2112;
      v21 = v7;
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_ERROR, "%{public}@Could not get home to derive destination from parent identifier: %@", &v18, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
    v11 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)mediaDestinationController:(id)a3 destinationManagerWithIdentifier:(id)a4
{
  v5 = a4;
  v6 = [(HMDAccessory *)self home];
  v7 = [v6 mediaDestinationManagersWithHomeTheaterSupportedOptions];

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __86__HMDAppleMediaAccessory_mediaDestinationController_destinationManagerWithIdentifier___block_invoke;
  v11[3] = &unk_27972A130;
  v12 = v5;
  v8 = v5;
  v9 = [v7 na_firstObjectPassingTest:v11];

  return v9;
}

uint64_t __86__HMDAppleMediaAccessory_mediaDestinationController_destinationManagerWithIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [v3 hmf_isEqualToUUID:*(a1 + 32)];

  return v4;
}

- (id)availableDestinationIdentifiersForMediaDestinationController:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = [(HMDAccessory *)self home];
  v5 = [(HMDAccessory *)self room];
  v6 = [v4 mediaDestinationsInRoom:v5];

  v7 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v6, "count")}];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = v6;
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

        v13 = *(*(&v18 + 1) + 8 * i);
        if ([v13 containsHomeTheaterSupportedOptions])
        {
          v14 = [v13 uniqueIdentifier];
          [v7 addObject:v14];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }

  v15 = [v7 copy];
  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

- (void)handleRemovedMediaDestinationControllerModel:(id)a3 message:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v23 = 138543618;
    v24 = v11;
    v25 = 2112;
    v26 = v6;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Handling transaction removed media destination controller model: %@", &v23, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  v12 = [(HMDAppleMediaAccessory *)v9 audioDestinationController];
  v13 = [v6 uuid];
  v14 = [v12 identifier];
  v15 = [v13 hmf_isEqualToUUID:v14];

  if (v15)
  {
    v16 = objc_autoreleasePoolPush();
    v17 = v9;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = HMFGetLogIdentifier();
      v23 = 138543618;
      v24 = v19;
      v25 = 2112;
      v26 = v12;
      _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_INFO, "%{public}@Removing audio destination controller: %@", &v23, 0x16u);
    }

    objc_autoreleasePoolPop(v16);
    [(HMDAppleMediaAccessory *)v17 setAudioDestinationController:0];
    [(HMDAppleMediaAccessory *)v17 unsetAudioDestinationControllerData];
    v20 = [v7 transactionResult];
    [v20 markChanged];

    v21 = [v7 transactionResult];
    [v21 markSaveToAssistant];
  }

  [v7 respondWithSuccess];

  v22 = *MEMORY[0x277D85DE8];
}

- (void)handleRemovedMediaDestinationModel:(id)a3 message:(id)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v25 = 138543618;
    v26 = v11;
    v27 = 2112;
    v28 = v6;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Handling transaction removed media destination model: %@", &v25, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  v12 = [v6 uuid];
  v13 = [(HMDAppleMediaAccessory *)v9 audioDestination];
  v14 = [v13 uniqueIdentifier];
  v15 = [v12 hmf_isEqualToUUID:v14];

  if (v15)
  {
    v16 = objc_autoreleasePoolPush();
    v17 = v9;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = HMFGetLogIdentifier();
      v25 = 138543362;
      v26 = v19;
      _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_INFO, "%{public}@Removing audio destination manager due to removed model transaction", &v25, 0xCu);
    }

    objc_autoreleasePoolPop(v16);
    v20 = [(HMDAppleMediaAccessory *)v17 audioDestinationManager];
    [(HMDAppleMediaAccessory *)v17 setAudioDestinationManager:0];
    [(HMDAppleMediaAccessory *)v17 unsetAudioDestination];
    v21 = [v20 messageHandler];
    [v21 handleUpdatedDestination:0];

    v22 = [v7 transactionResult];
    [v22 markChanged];

    v23 = [v7 transactionResult];
    [v23 markSaveToAssistant];
  }

  [v7 respondWithSuccess];

  v24 = *MEMORY[0x277D85DE8];
}

- (void)transactionObjectRemoved:(id)a3 message:(id)a4
{
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
    [(HMDAppleMediaAccessory *)self handleRemovedMediaDestinationModel:v9 message:v7];
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
      [(HMDAppleMediaAccessory *)self handleRemovedMediaDestinationControllerModel:v12 message:v7];
    }

    else
    {
      v13.receiver = self;
      v13.super_class = HMDAppleMediaAccessory;
      [(HMDAccessory *)&v13 transactionObjectRemoved:v10 message:v7];
    }
  }
}

- (void)handleUpdatedMediaDestinationModel:(id)a3 message:(id)a4
{
  v45 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (isFeatureHomeTheaterQFAEnabledForTests && [isFeatureHomeTheaterQFAEnabledForTests BOOLValue])
  {
    v8 = objc_autoreleasePoolPush();
    v9 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543618;
      v42 = v11;
      v43 = 2112;
      v44 = v6;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Skipping model: %@ due to home theater QFA", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
  }

  else
  {
    v12 = [(HMDAppleMediaAccessory *)self audioDestinationManager];
    v13 = v12;
    if (v12)
    {
      v14 = [v12 backingStoreHandler];
      [v14 transactionObjectUpdated:v6 newValues:v6 message:v7];
    }

    else
    {
      v15 = [(HMDAccessory *)self home];
      v16 = objc_autoreleasePoolPush();
      v17 = self;
      v18 = HMFGetOSLogHandle();
      v19 = os_log_type_enabled(v18, OS_LOG_TYPE_INFO);
      if (v15)
      {
        v40 = v15;
        if (v19)
        {
          v20 = HMFGetLogIdentifier();
          *buf = 138543618;
          v42 = v20;
          v43 = 2112;
          v44 = v6;
          _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_INFO, "%{public}@Creating new audio destination manager with model: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v16);
        v21 = [v6 supportedOptions];
        v22 = [v21 unsignedIntegerValue];

        v23 = [v6 audioGroupIdentifier];
        v24 = objc_alloc(MEMORY[0x277CD1B80]);
        v25 = [v6 uuid];
        v26 = [v6 parentUUID];
        v27 = [v24 initWithUniqueIdentifier:v25 parentIdentifier:v26 supportedOptions:v22 audioGroupIdentifier:v23];

        v28 = [HMDMediaDestinationManager alloc];
        v29 = [(HMDAccessory *)v17 msgDispatcher];
        v30 = [(HMDMediaAccessory *)v17 notificationCenter];
        v31 = [(HMDAppleMediaAccessory *)v17 backingStore];
        v32 = [(HMDMediaDestinationManager *)v28 initWithDestination:v27 messageDispatcher:v29 notificationCenter:v30 backingStore:v31 targetDevice:[(HMDAppleMediaAccessory *)v17 isCurrentAccessory] dataSource:v17 delegate:v17];
        [(HMDAppleMediaAccessory *)v17 setAudioDestinationManager:v32];

        v33 = [(HMDAppleMediaAccessory *)v17 audioDestinationManager];
        v15 = v40;
        [v33 configureWithHome:v40 currentAccessory:{-[HMDAppleMediaAccessory isCurrentAccessory](v17, "isCurrentAccessory")}];

        v34 = [(HMDAppleMediaAccessory *)v17 audioDestinationManager];
        v35 = [v34 messageHandler];
        [v35 handleUpdatedDestination:v27];

        v36 = [v7 transactionResult];
        [v36 markChanged];

        v37 = [v7 transactionResult];
        [v37 markSaveToAssistant];

        [v7 respondWithSuccess];
      }

      else
      {
        if (v19)
        {
          v38 = HMFGetLogIdentifier();
          *buf = 138543362;
          v42 = v38;
          _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_INFO, "%{public}@Failed to create audio destination manager due to no home", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v16);
        v23 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:4];
        [v7 respondWithError:v23];
      }
    }
  }

  v39 = *MEMORY[0x277D85DE8];
}

- (void)handleUpdatedMediaDestinationControllerModel:(id)a3 message:(id)a4
{
  v65 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (isFeatureHomeTheaterQFAEnabledForTests && [isFeatureHomeTheaterQFAEnabledForTests BOOLValue])
  {
    v8 = objc_autoreleasePoolPush();
    v9 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543618;
      v54 = v11;
      v55 = 2112;
      v56 = v6;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Skipping transaction update: %@ due to Home Theater QFA enabled", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
  }

  else
  {
    v12 = [(HMDAppleMediaAccessory *)self audioDestinationController];
    v13 = v12;
    if (v12)
    {
      v14 = [v12 backingStoreHandler];
      [v14 transactionObjectUpdated:v6 newValues:v6 message:v7];
    }

    else
    {
      v15 = objc_autoreleasePoolPush();
      v16 = self;
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v18 = HMFGetLogIdentifier();
        *buf = 138543618;
        v54 = v18;
        v55 = 2112;
        v56 = v6;
        _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_INFO, "%{public}@Creating new audio destination controller with model: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v15);
      v19 = [v6 availableDestinationModelIdentifiers];
      v20 = v19;
      v21 = MEMORY[0x277CBEBF8];
      if (v19)
      {
        v21 = v19;
      }

      v22 = v21;

      v23 = objc_alloc(MEMORY[0x277CD1B90]);
      v24 = [v6 uuid];
      v25 = [v6 parentUUID];
      v26 = [v6 destinationModelIdentifier];
      v27 = [v6 supportedOptions];
      v51 = v22;
      v52 = [v23 initWithIdentifier:v24 parentIdentifier:v25 destinationIdentifier:v26 supportedOptions:objc_msgSend(v27 availableDestinationIdentifiers:{"unsignedIntegerValue"), v22}];

      v28 = [(HMDAccessory *)v16 home];
      v29 = [(HMDAppleMediaAccessory *)v16 backingStore];
      v30 = [(HMDAccessory *)v16 msgDispatcher];
      v31 = [(HMDMediaAccessory *)v16 notificationCenter];
      v32 = [v28 logEventSubmitter];
      v50 = v28;
      v33 = [v28 dailyScheduler];
      v34 = v33;
      v49 = v7;
      if (v29 && v30 && v31 && v32 && v33)
      {
        v35 = [HMDMediaDestinationController alloc];
        LOBYTE(v47) = [(HMDAppleMediaAccessory *)v16 isCurrentAccessory];
        v36 = [(HMDMediaDestinationController *)v35 initWithData:v52 backingStore:v29 messageDispatcher:v30 notificationCenter:v31 logEventSubmitter:v32 dailyScheduler:v34 targetDevice:v47 dataSource:v16 delegate:v16];
        [(HMDAppleMediaAccessory *)v16 setAudioDestinationController:v36];

        v37 = [(HMDAppleMediaAccessory *)v16 audioDestinationController];
        v38 = v50;
        [v37 configureWithHome:v50];

        v39 = [v7 transactionResult];
        [v39 markChanged];

        v40 = [v7 transactionResult];
        [v40 markSaveToAssistant];

        v41 = v7;
        v42 = v52;
        [v41 respondWithSuccess];
      }

      else
      {
        v43 = objc_autoreleasePoolPush();
        v44 = v16;
        v45 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
        {
          v48 = HMFGetLogIdentifier();
          *buf = 138544642;
          v54 = v48;
          v55 = 2112;
          v56 = v29;
          v57 = 2112;
          v58 = v30;
          v59 = 2112;
          v60 = v31;
          v61 = 2112;
          v62 = v32;
          v63 = 2112;
          v64 = v34;
          _os_log_impl(&dword_2531F8000, v45, OS_LOG_TYPE_ERROR, "%{public}@Failed to create new audio destination controller due to missing dependencies backing store: %@ message dispatcher: %@ notification center: %@ log submitter: %@ daily scheduler: %@", buf, 0x3Eu);
        }

        objc_autoreleasePoolPop(v43);
        v42 = v52;
        v38 = v50;
      }

      v7 = v49;
    }
  }

  v46 = *MEMORY[0x277D85DE8];
}

- (void)handleTransactionUpdatedPublicPairingIdentity:(id)a3 result:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (![(HMDAppleMediaAccessory *)self isCurrentAccessory])
  {
    v8 = objc_autoreleasePoolPush();
    v9 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v19 = 138543618;
      v20 = v11;
      v21 = 2112;
      v22 = v6;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Handling transaction updated accessory public pairing identity: %@", &v19, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    v12 = [(HMDAppleMediaAccessory *)v9 pairingIdentity];
    v13 = [v12 isEqual:v6];

    if (v13)
    {
      v14 = objc_autoreleasePoolPush();
      v15 = v9;
      v16 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v17 = HMFGetLogIdentifier();
        v19 = 138543362;
        v20 = v17;
        _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_INFO, "%{public}@Skipping already saved pairing identity", &v19, 0xCu);
      }

      objc_autoreleasePoolPop(v14);
    }

    else
    {
      [(HMDAppleMediaAccessory *)v9 setPairingIdentity:v6];
      [(HMDAppleMediaAccessory *)v9 notifyFrameworkOfUpdatedPairingIdentity];
      [v7 markChanged];
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)transactionObjectUpdated:(id)a3 newValues:(id)a4 message:(id)a5
{
  v199 = *MEMORY[0x277D85DE8];
  v164 = a3;
  v8 = a4;
  v9 = a5;
  v10 = v8;
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
    v173 = 0;
    v174 = &v173;
    v175 = 0x3032000000;
    v176 = __Block_byref_object_copy__94518;
    v177 = __Block_byref_object_dispose__94519;
    v178 = 0;
    v168 = v9;
    v167 = [v9 responseHandler];
    if (v167)
    {
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __69__HMDAppleMediaAccessory_transactionObjectUpdated_newValues_message___block_invoke;
      aBlock[3] = &unk_27972A108;
      aBlock[4] = &v173;
      v13 = _Block_copy(aBlock);
      [v9 setResponseHandler:v13];
    }

    v171.receiver = self;
    v171.super_class = HMDAppleMediaAccessory;
    [(HMDMediaAccessory *)&v171 transactionObjectUpdated:0 newValues:v10 message:v9];
    v14 = self;
    v15 = v12;
    v165 = v9;
    v166 = [v165 transactionResult];
    v16 = __HMDAppleMediaAccessoryGetDeviceController(v14);
    v17 = [v15 deviceUUID];

    if (v17)
    {
      if ([(HMDAppleMediaAccessory *)v14 isCurrentAccessory])
      {
        if (!v16)
        {
          v18 = objc_autoreleasePoolPush();
          v19 = v14;
          v20 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
          {
            v21 = HMFGetLogIdentifier();
            *buf = 138543362;
            v196 = v21;
            _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_INFO, "%{public}@Setting up device controller for ourselves", buf, 0xCu);
          }

          objc_autoreleasePoolPop(v18);
          v22 = [(HMDAppleMediaAccessory *)v19 dependencyFactory];
          v16 = [v22 deviceController];

          [(HMDAppleMediaAccessory *)v19 setDeviceController:v16];
          [v16 setDelegate:v19];
          v23 = [v16 device];
          __HMDAppleMediaAccessoryHandleUpdatedDevice(v19, v23);

          [v166 markChanged];
        }
      }

      else
      {
        v28 = objc_alloc(MEMORY[0x277CCAD78]);
        v29 = [v15 deviceUUID];
        v30 = [v28 initWithUUIDString:v29];

        v31 = [v16 identifier];
        LOBYTE(v28) = [v30 hmf_isEqualToUUID:v31];

        if (v28)
        {
          v32 = v16;
        }

        else
        {
          v36 = objc_autoreleasePoolPush();
          v37 = v14;
          v38 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
          {
            v39 = HMFGetLogIdentifier();
            v40 = [v30 UUIDString];
            *buf = 138543618;
            v196 = v39;
            v197 = 2112;
            v198 = v40;
            _os_log_impl(&dword_2531F8000, v38, OS_LOG_TYPE_DEFAULT, "%{public}@Updating the underlying device with identifier: %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v36);
          v41 = [(HMDAppleMediaAccessory *)v37 dependencyFactory];
          v32 = [v41 deviceControllerWithDeviceIdentifier:v30];

          [(HMDAppleMediaAccessory *)v37 setDeviceController:v32];
          [v32 setDelegate:v37];
          v42 = [v32 device];
          __HMDAppleMediaAccessoryHandleUpdatedDevice(v37, v42);

          [v166 markChanged];
        }

        v16 = v32;
      }
    }

    v43 = [v15 device];

    if (v43)
    {
      v44 = [v15 device];
      v45 = [(HMDAppleMediaAccessory *)v14 device];
      v46 = v44 == v45;

      if (!v46)
      {
        v47 = [(HMDAppleMediaAccessory *)v14 device];

        if (v47)
        {
          v185 = 0u;
          v186 = 0u;
          v183 = 0u;
          v184 = 0u;
          v48 = [(HMDAppleMediaAccessory *)v14 device];
          v49 = [v48 backingStoreObjectsWithChangeType:0 version:4];

          v50 = [v49 countByEnumeratingWithState:&v183 objects:buf count:16];
          if (v50)
          {
            v51 = *v184;
            do
            {
              for (i = 0; i != v50; ++i)
              {
                if (*v184 != v51)
                {
                  objc_enumerationMutation(v49);
                }

                [*(*(&v183 + 1) + 8 * i) dumpDebug:@" LOCAL: "];
              }

              v50 = [v49 countByEnumeratingWithState:&v183 objects:buf count:16];
            }

            while (v50);
          }
        }

        v53 = [v15 device];

        if (v53)
        {
          v181 = 0u;
          v182 = 0u;
          v179 = 0u;
          v180 = 0u;
          v54 = [v15 device];
          v55 = [v54 backingStoreObjectsWithChangeType:0 version:4];

          v56 = [v55 countByEnumeratingWithState:&v179 objects:v194 count:16];
          if (v56)
          {
            v57 = *v180;
            do
            {
              for (j = 0; j != v56; ++j)
              {
                if (*v180 != v57)
                {
                  objc_enumerationMutation(v55);
                }

                [*(*(&v179 + 1) + 8 * j) dumpDebug:@"REMOTE: "];
              }

              v56 = [v55 countByEnumeratingWithState:&v179 objects:v194 count:16];
            }

            while (v56);
          }
        }
      }

      if (!v16)
      {
        v59 = [(HMDAppleMediaAccessory *)v14 dependencyFactory];
        v60 = [v15 device];
        v16 = [v59 deviceControllerWithDevice:v60];

        [(HMDAppleMediaAccessory *)v14 setDeviceController:v16];
        [v16 setDelegate:v14];
        v61 = [v16 device];
        __HMDAppleMediaAccessoryHandleUpdatedDevice(v14, v61);
      }

      v62 = [v15 device];
      v63 = [(HMDAppleMediaAccessory *)v14 device];
      v64 = v62 == v63;

      if (!v64)
      {
        v65 = [(HMDAppleMediaAccessory *)v14 device];
        v66 = [v15 device];
        v67 = [v65 isBackingStorageEqual:v66];

        if (v67)
        {
          goto LABEL_55;
        }

        v68 = [v15 device];
        [v16 updateWithDevice:v68 completionHandler:0];
      }

      [v166 markChanged];
    }

LABEL_55:

    v69 = [v15 pairingIdentity];

    if (!v69)
    {
      goto LABEL_91;
    }

    v70 = [(HMDAppleMediaAccessory *)v14 isCurrentAccessory];
    v71 = [v15 pairingIdentity];
    if (!v70)
    {
      v82 = [(HMDAppleMediaAccessory *)v14 pairingIdentity];
      if ([v71 isEqual:v82])
      {
        v83 = [v15 pairingIdentity];
        v84 = [v83 privateKey];
        if (v84)
        {

          goto LABEL_91;
        }

        v104 = [(HMDAppleMediaAccessory *)v14 pairingIdentity];
        v105 = [v104 privateKey];
        v106 = v105 == 0;

        if (v106)
        {
LABEL_91:
          v111 = [v15 softwareVersion];

          if (v111)
          {
            v112 = [v15 softwareVersion];
            v113 = [(HMDAppleMediaAccessory *)v14 softwareVersion];
            v114 = [v112 isEqual:v113];

            if ((v114 & 1) == 0)
            {
              v115 = objc_autoreleasePoolPush();
              v116 = v14;
              v117 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v117, OS_LOG_TYPE_DEFAULT))
              {
                v118 = HMFGetLogIdentifier();
                v119 = [v15 softwareVersion];
                *v191 = 138543618;
                *&v191[4] = v118;
                *&v191[12] = 2112;
                *&v191[14] = v119;
                _os_log_impl(&dword_2531F8000, v117, OS_LOG_TYPE_DEFAULT, "%{public}@Updated software version: %@", v191, 0x16u);
              }

              objc_autoreleasePoolPop(v115);
              v120 = [v15 softwareVersion];
              [(HMDAppleMediaAccessory *)v116 setSoftwareVersion:v120];

              [v166 markChanged];
              if ([(HMDAppleMediaAccessory *)v116 isCurrentAccessory])
              {
                v121 = [(HMDAppleMediaAccessory *)v116 softwareVersion];
                v122 = [MEMORY[0x277D0F8E8] productInfo];
                v123 = [v122 softwareVersion];
                v124 = HMFEqualObjects();

                if ((v124 & 1) == 0)
                {
                  v125 = objc_autoreleasePoolPush();
                  v126 = v116;
                  v127 = HMFGetOSLogHandle();
                  if (os_log_type_enabled(v127, OS_LOG_TYPE_DEFAULT))
                  {
                    v128 = HMFGetLogIdentifier();
                    v129 = [(HMDAppleMediaAccessory *)v126 softwareVersion];
                    v130 = [MEMORY[0x277D0F8E8] productInfo];
                    v131 = [v130 softwareVersion];
                    *v191 = 138543874;
                    *&v191[4] = v128;
                    *&v191[12] = 2112;
                    *&v191[14] = v129;
                    *&v191[22] = 2112;
                    v192 = v131;
                    _os_log_impl(&dword_2531F8000, v127, OS_LOG_TYPE_DEFAULT, "%{public}@Stored software version is incorrect (%@), updating to: (%@)", v191, 0x20u);
                  }

                  objc_autoreleasePoolPop(v125);
                  v132 = [MEMORY[0x277D0F8E8] productInfo];
                  v133 = [v132 softwareVersion];
                  [(HMDAppleMediaAccessory *)v126 _updateSoftwareVersion:v133];
                }
              }
            }
          }

          if ([v15 propertyWasSet:@"supportedStereoPairVersions"])
          {
            v134 = [v15 supportedStereoPairVersions];
            v135 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDAppleMediaAccessory supportedStereoPairVersions](v14, "supportedStereoPairVersions")}];
            v136 = [v134 isEqual:v135];

            if ((v136 & 1) == 0)
            {
              v137 = objc_autoreleasePoolPush();
              v138 = v14;
              v139 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v139, OS_LOG_TYPE_DEFAULT))
              {
                v140 = HMFGetLogIdentifier();
                v141 = [v15 supportedStereoPairVersions];
                *v191 = 138543618;
                *&v191[4] = v140;
                *&v191[12] = 2112;
                *&v191[14] = v141;
                _os_log_impl(&dword_2531F8000, v139, OS_LOG_TYPE_DEFAULT, "%{public}@Updated supported stereo pair versions: %@", v191, 0x16u);
              }

              objc_autoreleasePoolPop(v137);
              v142 = [v15 supportedStereoPairVersions];
              -[HMDAppleMediaAccessory setSupportedStereoPairVersions:](v138, "setSupportedStereoPairVersions:", [v142 unsignedIntegerValue]);

              [v166 markChanged];
            }
          }

          if ([v15 propertyWasSet:@"wifiNetworkInfo"] && (!-[HMDAppleMediaAccessory isCurrentAccessory](v14, "isCurrentAccessory") || objc_msgSend(v166, "source") != 2))
          {
            v143 = [v15 wifiNetworkInfo];
            v144 = [(HMDAppleMediaAccessory *)v14 wifiNetworkInfo];
            v145 = HMFEqualObjects();

            if ((v145 & 1) == 0)
            {
              v146 = objc_autoreleasePoolPush();
              v147 = v14;
              v148 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v148, OS_LOG_TYPE_DEFAULT))
              {
                v149 = HMFGetLogIdentifier();
                v150 = [v15 wifiNetworkInfo];
                *v191 = 138543618;
                *&v191[4] = v149;
                *&v191[12] = 2112;
                *&v191[14] = v150;
                _os_log_impl(&dword_2531F8000, v148, OS_LOG_TYPE_DEFAULT, "%{public}@Updated WiFi network info: %@", v191, 0x16u);
              }

              objc_autoreleasePoolPop(v146);
              v151 = [v15 wifiNetworkInfo];
              [(HMDAppleMediaAccessory *)v147 setWifiNetworkInfo:v151];

              [v166 markChanged];
            }
          }

          if ([v15 propertyWasSet:@"loggedInAccount"])
          {
            v152 = [(HMDAppleMediaAccessory *)v14 remoteLoginHandler];
            [v152 _handleRemoteLoginAccount:v15 message:v165];

            [v166 markChanged];
          }

          *v191 = MEMORY[0x277D85DD0];
          *&v191[8] = 3221225472;
          *&v191[16] = ____transactionAccessoryUpdated_block_invoke_94534;
          v192 = &unk_279734468;
          v153 = v166;
          v193 = v153;
          [(HMDAccessory *)v14 transactionAccessoryUpdatedForPreferredMediaUser:v15 completionHandler:v191];
          if ([v15 propertyWasSet:@"productColor"])
          {
            v154 = [v15 productColor];
            v155 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDAppleMediaAccessory productColor](v14, "productColor")}];
            v156 = [v154 isEqual:v155];

            if ((v156 & 1) == 0)
            {
              v157 = objc_autoreleasePoolPush();
              v158 = v14;
              v159 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v159, OS_LOG_TYPE_DEFAULT))
              {
                v160 = HMFGetLogIdentifier();
                v161 = [v15 productColor];
                *v187 = 138543618;
                v188 = v160;
                v189 = 2112;
                v190 = v161;
                _os_log_impl(&dword_2531F8000, v159, OS_LOG_TYPE_DEFAULT, "%{public}@Updated product color: %@", v187, 0x16u);
              }

              objc_autoreleasePoolPop(v157);
              v162 = [v15 productColor];
              -[HMDAppleMediaAccessory setProductColor:](v158, "setProductColor:", [v162 unsignedIntegerValue]);

              [v153 markChanged];
            }
          }

          [v165 respondWithPayload:0];

          if (v167)
          {
            v167[2](v167, v174[5], 0);
          }

          _Block_object_dispose(&v173, 8);
          v9 = v168;
          goto LABEL_122;
        }
      }

      else
      {
      }

      v96 = objc_autoreleasePoolPush();
      v97 = v14;
      v98 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v98, OS_LOG_TYPE_DEFAULT))
      {
        v99 = HMFGetLogIdentifier();
        v100 = [v15 pairingIdentity];
        *v191 = 138543618;
        *&v191[4] = v99;
        *&v191[12] = 2112;
        *&v191[14] = v100;
        _os_log_impl(&dword_2531F8000, v98, OS_LOG_TYPE_DEFAULT, "%{public}@Updated pairing identity: %@", v191, 0x16u);
      }

      objc_autoreleasePoolPop(v96);
      v101 = [v15 pairingIdentity];
      [(HMDAppleMediaAccessory *)v97 setPairingIdentity:v101];

      goto LABEL_76;
    }

    v72 = [(HMDAppleMediaAccessory *)v14 lastCreatedPairingIdentity];
    if ([v71 isEqual:v72])
    {
      v73 = [(HMDAppleMediaAccessory *)v14 lastCreatedPairingIdentity];
      v74 = [v73 privateKey];
      v75 = v74 == 0;

      if (!v75)
      {
        v76 = objc_autoreleasePoolPush();
        v77 = v14;
        v78 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
        {
          v79 = HMFGetLogIdentifier();
          v80 = [v15 pairingIdentity];
          *v191 = 138543618;
          *&v191[4] = v79;
          *&v191[12] = 2112;
          *&v191[14] = v80;
          _os_log_impl(&dword_2531F8000, v78, OS_LOG_TYPE_DEFAULT, "%{public}@Updated pairing identity with private info: %@", v191, 0x16u);
        }

        objc_autoreleasePoolPop(v76);
        v81 = [(HMDAppleMediaAccessory *)v77 lastCreatedPairingIdentity];
        [(HMDAppleMediaAccessory *)v77 setPairingIdentity:v81];

        [(HMDAppleMediaAccessory *)v77 setFixedPairingIdentityInCloud:1];
LABEL_76:
        [(HMDAppleMediaAccessory *)v14 notifyFrameworkOfUpdatedPairingIdentity];
LABEL_77:
        [v166 markChanged];
        goto LABEL_91;
      }
    }

    else
    {
    }

    v85 = [v15 pairingIdentity];
    v86 = [(HMDAppleMediaAccessory *)v14 pairingIdentity];
    if ([v85 isEqual:v86])
    {
      v87 = [(HMDAppleMediaAccessory *)v14 pairingIdentity];
      v88 = [v87 privateKey];
      if (v88)
      {
        v89 = [v15 pairingIdentity];
        v90 = [v89 privateKey];
        v91 = v90 == 0;

        if (v91)
        {
          v92 = objc_autoreleasePoolPush();
          v93 = v14;
          v94 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v94, OS_LOG_TYPE_DEFAULT))
          {
            v95 = HMFGetLogIdentifier();
            *v191 = 138543362;
            *&v191[4] = v95;
            _os_log_impl(&dword_2531F8000, v94, OS_LOG_TYPE_DEFAULT, "%{public}@Pushing a fix to cloud, mark changed", v191, 0xCu);
          }

          objc_autoreleasePoolPop(v92);
          [(HMDAppleMediaAccessory *)v93 setFixedPairingIdentityInCloud:1];
          goto LABEL_77;
        }

LABEL_88:
        v107 = objc_autoreleasePoolPush();
        v108 = v14;
        v109 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v109, OS_LOG_TYPE_ERROR))
        {
          v110 = HMFGetLogIdentifier();
          *v191 = 138543362;
          *&v191[4] = v110;
          _os_log_impl(&dword_2531F8000, v109, OS_LOG_TYPE_ERROR, "%{public}@Updated pairing identity does not match lastCreated", v191, 0xCu);
        }

        objc_autoreleasePoolPop(v107);
        goto LABEL_91;
      }
    }

    goto LABEL_88;
  }

  v24 = v10;
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

  if (v26)
  {
    v27 = [(HMDAppleMediaAccessory *)self settingsController];
    v170[0] = MEMORY[0x277D85DD0];
    v170[1] = 3221225472;
    v170[2] = __69__HMDAppleMediaAccessory_transactionObjectUpdated_newValues_message___block_invoke_2;
    v170[3] = &unk_2797359D8;
    v170[4] = self;
    [v27 handleUpdatedGroupModel:v26 completion:v170];
  }

  else
  {
    v33 = v24;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v34 = v33;
    }

    else
    {
      v34 = 0;
    }

    v35 = v34;

    if (v35)
    {
      [(HMDAppleMediaAccessory *)self handleUpdatedMediaDestinationControllerModel:v35 message:v9];
    }

    else
    {
      v33 = v33;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v102 = v33;
      }

      else
      {
        v102 = 0;
      }

      v103 = v102;

      if (!v103)
      {
        v169.receiver = self;
        v169.super_class = HMDAppleMediaAccessory;
        [(HMDMediaAccessory *)&v169 transactionObjectUpdated:v164 newValues:v33 message:v9];
        goto LABEL_122;
      }

      [(HMDAppleMediaAccessory *)self handleUpdatedMediaDestinationModel:v103 message:v9];
    }
  }

LABEL_122:

  v163 = *MEMORY[0x277D85DE8];
}

void __69__HMDAppleMediaAccessory_transactionObjectUpdated_newValues_message___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v5 = v4;
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    v4 = v5;
  }
}

void __69__HMDAppleMediaAccessory_transactionObjectUpdated_newValues_message___block_invoke_2(uint64_t a1, void *a2)
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
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_ERROR, "%{public}@Error adding group %@", &v9, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (id)backingStoreObjectForMediaDestinationControllerData
{
  if (isFeatureHomeTheaterQFAEnabledForTests && ([isFeatureHomeTheaterQFAEnabledForTests BOOLValue] & 1) != 0)
  {
    v3 = 0;
  }

  else
  {
    v4 = [(HMDAppleMediaAccessory *)self committedAudioDestinationControllerData];
    if (v4)
    {
      v3 = [HMDMediaDestinationControllerBackingStoreHandler backingStoreObjectForData:v4];
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

- (id)backingStoreObjectForMediaDestination
{
  if (isFeatureHomeTheaterQFAEnabledForTests && ([isFeatureHomeTheaterQFAEnabledForTests BOOLValue] & 1) != 0)
  {
    v3 = 0;
  }

  else
  {
    v4 = [(HMDAppleMediaAccessory *)self committedAudioDestination];
    if (v4)
    {
      v3 = [HMDMediaDestinationBackingStoreHandler backingStoreObjectForMediaDestination:v4];
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

- (id)backingStoreObjects:(int64_t)a3
{
  v5 = [(HMDAppleMediaAccessory *)self modelDataSource];
  v6 = [(HMDAccessory *)self uuid];
  v7 = [(HMDAccessory *)self home];
  v8 = [v7 uuid];
  v9 = [v5 modelforAccessory:self changeType:1 uuid:v6 parentUUID:v8];

  [(HMDAppleMediaAccessory *)self populateModelObject:v9 version:a3];
  v10 = [MEMORY[0x277CBEB18] arrayWithObject:v9];
  v11 = [(HMDAppleMediaAccessory *)self settingsController];

  if (v11)
  {
    v12 = [(HMDAppleMediaAccessory *)self settingsController];
    v13 = [v12 modelObjectsForSettings];

    if (v13)
    {
      [v10 addObjectsFromArray:v13];
    }
  }

  v14 = [(HMDAppleMediaAccessory *)self backingStoreObjectForMediaDestination];
  if (v14)
  {
    [v10 addObject:v14];
  }

  v15 = [(HMDAppleMediaAccessory *)self backingStoreObjectForMediaDestinationControllerData];
  if (v15)
  {
    [v10 addObject:v15];
  }

  v19.receiver = self;
  v19.super_class = HMDAppleMediaAccessory;
  v16 = [(HMDAccessory *)&v19 backingStoreObjects:a3];
  [v10 addObjectsFromArray:v16];

  v17 = [v10 copy];

  return v17;
}

- (void)populateModelObject:(id)a3 version:(int64_t)a4
{
  v6 = a3;
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
  v40.receiver = self;
  v40.super_class = HMDAppleMediaAccessory;
  [(HMDAccessory *)&v40 populateModelObject:v8 version:a4];
  v9 = [(HMDAppleMediaAccessory *)self device];
  v10 = [v9 version];
  v11 = +[HMDHomeKitVersion version4];
  v12 = [v10 isAtLeastVersion:v11];

  v13 = isWatch();
  if (v13 && (+[HMDDeviceCapabilities deviceCapabilities](HMDDeviceCapabilities, "deviceCapabilities"), v10 = objc_claimAutoreleasedReturnValue(), ![v10 supportsCloudDataSync]))
  {
    v15 = 1;
  }

  else
  {
    v14 = [(HMDAccessory *)self home];
    v15 = [v14 isOwnerUser] ^ 1;

    if (!v13)
    {
      if (!v12)
      {
        goto LABEL_15;
      }

      goto LABEL_11;
    }
  }

  if (!v12)
  {
LABEL_15:
    v18 = [v9 identifier];
    v19 = [v18 UUIDString];
    [v8 setDeviceUUID:v19];

    if (v15 && self->_device)
    {
      [v8 setDevice:?];
      device = self->_device;
      self->_device = 0;
    }

    else
    {
      [v8 setDevice:v9];
    }

    goto LABEL_19;
  }

LABEL_11:
  v16 = [v9 isCurrentDevice];
  if (a4 > 3)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  if ((v17 | v15))
  {
    goto LABEL_15;
  }

LABEL_19:
  v21 = [(HMDAppleMediaAccessory *)self remoteLoginHandler];

  if (v21)
  {
    v22 = [(HMDAppleMediaAccessory *)self remoteLoginHandler];
    v23 = [v22 loggedInAccount];
    v24 = encodeRootObject();
    [v8 setLoggedInAccount:v24];
  }

  v25 = [(HMDAppleMediaAccessory *)self softwareVersion];

  if (v25)
  {
    v26 = [(HMDAppleMediaAccessory *)self softwareVersion];
    [v8 setSoftwareVersion:v26];
  }

  v27 = [(HMDAppleMediaAccessory *)self wifiNetworkInfo];

  if (v27)
  {
    v28 = [(HMDAppleMediaAccessory *)self wifiNetworkInfo];
    [v8 setWifiNetworkInfo:v28];
  }

  v29 = [(HMDAppleMediaAccessory *)self pairingIdentity];
  v30 = [v29 publicPairingIdentity];

  if (v30)
  {
    v31 = [(HMDAppleMediaAccessory *)self pairingIdentity];
    v32 = [v31 publicPairingIdentity];
    [v8 setPairingIdentity:v32];
  }

  if ([(HMDAppleMediaAccessory *)self supportedStereoPairVersions])
  {
    v33 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDAppleMediaAccessory supportedStereoPairVersions](self, "supportedStereoPairVersions")}];
    [v8 setSupportedStereoPairVersions:v33];
  }

  if ([(HMDAppleMediaAccessory *)self supportsPreferredMediaUser])
  {
    v34 = [(HMDAccessory *)self preferredMediaUserUUID];
    [v8 setPreferredMediaUserUUID:v34];
  }

  v35 = [(HMDAccessory *)self preferredMediaUserSelectionTypeNumber];

  if (v35)
  {
    v36 = [(HMDAccessory *)self preferredMediaUserSelectionTypeNumber];
    [v8 setPreferredUserSelectionType:v36];
  }

  if ([(HMDAppleMediaAccessory *)self productColor])
  {
    v37 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDAppleMediaAccessory productColor](self, "productColor")}];
    [v8 setProductColor:v37];
  }

  v38 = [(HMDAppleMediaAccessory *)self idsIdentifier];

  if (v38)
  {
    v39 = [(HMDAppleMediaAccessory *)self idsIdentifier];
    [v8 setIdsIdentifier:v39];
  }
}

- (id)modelObjectWithChangeType:(unint64_t)a3
{
  v4 = [(HMDAppleMediaAccessory *)self transactionWithObjectChangeType:a3];
  [(HMDAppleMediaAccessory *)self populateModelObject:v4 version:4];

  return v4;
}

- (id)transactionWithObjectChangeType:(unint64_t)a3
{
  v5 = [(HMDAppleMediaAccessory *)self modelDataSource];
  v6 = [(HMDAccessory *)self uuid];
  v7 = [(HMDAccessory *)self home];
  v8 = [v7 uuid];
  v9 = [v5 modelforAccessory:self changeType:a3 uuid:v6 parentUUID:v8];

  return v9;
}

- (id)messageSendPolicy
{
  if ([(HMDAppleMediaAccessory *)self isCurrentAccessory])
  {
    v2 = 81;
  }

  else
  {
    v2 = 65;
  }

  v3 = [[HMDHomeManagerXPCMessageSendPolicy alloc] initWithEntitlements:5 options:v2];

  return v3;
}

- (void)migrateAudioDestinationWithCloudZone:(id)a3 migrationQueue:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (isFeatureHomeTheaterQFAEnabledForTests && [isFeatureHomeTheaterQFAEnabledForTests BOOLValue])
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __89__HMDAppleMediaAccessory_migrateAudioDestinationWithCloudZone_migrationQueue_completion___block_invoke;
    block[3] = &unk_2797348C0;
    v16 = v10;
    dispatch_async(v9, block);
    v11 = v16;
  }

  else
  {
    v11 = [(HMDAppleMediaAccessory *)self audioDestinationManager];
    if (v11)
    {
      v12 = [(HMDAccessory *)self home];
      [v11 migrateWithHome:v12 cloudZone:v8 migrationQueue:v9 completion:v10];
    }

    else
    {
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __89__HMDAppleMediaAccessory_migrateAudioDestinationWithCloudZone_migrationQueue_completion___block_invoke_2;
      v13[3] = &unk_2797348C0;
      v14 = v10;
      dispatch_async(v9, v13);
    }
  }
}

- (void)migrateAudioDestinationControllerWithCloudZone:(id)a3 migrationQueue:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (isFeatureHomeTheaterQFAEnabledForTests && [isFeatureHomeTheaterQFAEnabledForTests BOOLValue])
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __99__HMDAppleMediaAccessory_migrateAudioDestinationControllerWithCloudZone_migrationQueue_completion___block_invoke;
    block[3] = &unk_2797348C0;
    v16 = v10;
    dispatch_async(v9, block);
    v11 = v16;
  }

  else
  {
    v11 = [(HMDAppleMediaAccessory *)self audioDestinationController];
    if (v11)
    {
      v12 = [(HMDAccessory *)self home];
      [v11 migrateWithHome:v12 cloudZone:v8 migrationQueue:v9 completion:v10];
    }

    else
    {
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __99__HMDAppleMediaAccessory_migrateAudioDestinationControllerWithCloudZone_migrationQueue_completion___block_invoke_2;
      v13[3] = &unk_2797348C0;
      v14 = v10;
      dispatch_async(v9, v13);
    }
  }
}

- (void)migrateWithCloudZone:(id)a3 migrationQueue:(id)a4 completion:(id)a5
{
  v68 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v43 = a5;
  v10 = [MEMORY[0x277CBEB18] array];
  v11 = [MEMORY[0x277CBEB18] array];
  v12 = dispatch_group_create();
  objc_initWeak(&location, self);
  dispatch_group_enter(v12);
  v59[0] = MEMORY[0x277D85DD0];
  v59[1] = 3221225472;
  v59[2] = __73__HMDAppleMediaAccessory_migrateWithCloudZone_migrationQueue_completion___block_invoke;
  v59[3] = &unk_27972A0E0;
  objc_copyWeak(&v63, &location);
  v13 = v10;
  v60 = v13;
  v14 = v11;
  v61 = v14;
  v15 = v12;
  v62 = v15;
  [(HMDAppleMediaAccessory *)self migrateAudioDestinationControllerWithCloudZone:v8 migrationQueue:v9 completion:v59];
  dispatch_group_enter(v15);
  v54[0] = MEMORY[0x277D85DD0];
  v54[1] = 3221225472;
  v54[2] = __73__HMDAppleMediaAccessory_migrateWithCloudZone_migrationQueue_completion___block_invoke_2;
  v54[3] = &unk_27972A0E0;
  objc_copyWeak(&v58, &location);
  v16 = v13;
  v55 = v16;
  v17 = v14;
  v56 = v17;
  v18 = v15;
  v57 = v18;
  [(HMDAppleMediaAccessory *)self migrateAudioDestinationWithCloudZone:v8 migrationQueue:v9 completion:v54];
  dispatch_group_enter(v18);
  v49[0] = MEMORY[0x277D85DD0];
  v49[1] = 3221225472;
  v49[2] = __73__HMDAppleMediaAccessory_migrateWithCloudZone_migrationQueue_completion___block_invoke_3;
  v49[3] = &unk_27972A0E0;
  objc_copyWeak(&v53, &location);
  v19 = v16;
  v50 = v19;
  v20 = v17;
  v51 = v20;
  v21 = v18;
  v52 = v21;
  v44 = v8;
  v22 = v9;
  v23 = v49;
  if (self)
  {
    v24 = [(HMDAccessory *)self softwareUpdate];
    v25 = [(HMDAppleMediaAccessory *)self isCurrentAccessory];
    if (v24)
    {
      v26 = v25;
    }

    else
    {
      v26 = 0;
    }

    if (v26 && ![v24 downloadSize])
    {
      v32 = [(HMDAccessory *)self uuid];
      v33 = [v24 transactionWithObjectChangeType:1 forAccessoryUUID:v32];

      v27 = [v33 uuid];
      context = objc_autoreleasePoolPush();
      v34 = self;
      v35 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        v41 = HMFGetLogIdentifier();
        v36 = [v33 uuid];
        *block = 138544130;
        *&block[4] = v41;
        *&block[12] = 2112;
        *&block[14] = v36;
        *&block[22] = 2112;
        v66 = v33;
        LOWORD(v67) = 2112;
        *(&v67 + 2) = v34;
        v40 = v36;
        _os_log_impl(&dword_2531F8000, v35, OS_LOG_TYPE_DEFAULT, "%{public}@Fixing up bad software update model with uuid: %@ and 0 download size: %@ for accessory: %@", block, 0x2Au);
      }

      objc_autoreleasePoolPop(context);
      [v33 setSoftwareVersion:0];
      [v33 setState:0];
      [v33 setInstallDuration:0];
      [v33 setDownloadSize:0];
      [v33 setReleaseDate:0];
      v37 = [(HMDAccessory *)v34 home];
      [v37 dropAllChangesWithObjectID:v27];

      *block = MEMORY[0x277D85DD0];
      *&block[8] = 3221225472;
      *&block[16] = __87__HMDAppleMediaAccessory_migrateSoftwareUpdateWithCloudZone_migrationQueue_completion___block_invoke_503;
      v66 = &unk_279735738;
      v38 = v23;
      *&v67 = v33;
      *(&v67 + 1) = v38;
      v39 = v33;
      dispatch_async(v22, block);
    }

    else
    {
      *block = MEMORY[0x277D85DD0];
      *&block[8] = 3221225472;
      *&block[16] = __87__HMDAppleMediaAccessory_migrateSoftwareUpdateWithCloudZone_migrationQueue_completion___block_invoke;
      v66 = &unk_2797348C0;
      *&v67 = v23;
      dispatch_async(v22, block);
      v27 = v67;
    }
  }

  v45[0] = MEMORY[0x277D85DD0];
  v45[1] = 3221225472;
  v45[2] = __73__HMDAppleMediaAccessory_migrateWithCloudZone_migrationQueue_completion___block_invoke_4;
  v45[3] = &unk_2797355D0;
  v47 = v20;
  v48 = v43;
  v46 = v19;
  v28 = v20;
  v29 = v19;
  v30 = v43;
  dispatch_group_notify(v21, v22, v45);

  objc_destroyWeak(&v53);
  objc_destroyWeak(&v58);

  objc_destroyWeak(&v63);
  objc_destroyWeak(&location);

  v31 = *MEMORY[0x277D85DE8];
}

void __73__HMDAppleMediaAccessory_migrateWithCloudZone_migrationQueue_completion___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v10 = a2;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v9 = WeakRetained;
  if (!a4 && WeakRetained)
  {
    [*(a1 + 32) addObjectsFromArray:v10];
    [*(a1 + 40) addObjectsFromArray:v7];
  }

  dispatch_group_leave(*(a1 + 48));
}

void __73__HMDAppleMediaAccessory_migrateWithCloudZone_migrationQueue_completion___block_invoke_2(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v10 = a2;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v9 = WeakRetained;
  if (!a4 && WeakRetained)
  {
    [*(a1 + 32) addObjectsFromArray:v10];
    [*(a1 + 40) addObjectsFromArray:v7];
  }

  dispatch_group_leave(*(a1 + 48));
}

void __73__HMDAppleMediaAccessory_migrateWithCloudZone_migrationQueue_completion___block_invoke_3(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v10 = a2;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v9 = WeakRetained;
  if (!a4 && WeakRetained)
  {
    [*(a1 + 32) addObjectsFromArray:v10];
    [*(a1 + 40) addObjectsFromArray:v7];
  }

  dispatch_group_leave(*(a1 + 48));
}

void __87__HMDAppleMediaAccessory_migrateSoftwareUpdateWithCloudZone_migrationQueue_completion___block_invoke_503(uint64_t a1)
{
  v4[1] = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 40);
  v4[0] = *(a1 + 32);
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];
  (*(v1 + 16))(v1, MEMORY[0x277CBEBF8], v2, 0);

  v3 = *MEMORY[0x277D85DE8];
}

- (id)remoteMessageDestination
{
  v3 = [(HMDAppleMediaAccessory *)self device];

  if (v3)
  {
    v4 = [HMDRemoteDeviceMessageDestination alloc];
    v5 = [(HMDAccessory *)self messageTargetUUID];
    v6 = [(HMDAppleMediaAccessory *)self device];
    v7 = [(HMDRemoteDeviceMessageDestination *)v4 initWithTarget:v5 device:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_relayRequestMessage:(id)a3 responseHandler:(id)a4
{
  v37 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ([v6 isRemote])
  {
    v8 = objc_autoreleasePoolPush();
    v9 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543362;
      v36 = v11;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@Cannot relay a remote message", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
    v12 = [MEMORY[0x277CCA9B8] hmErrorWithCode:52];
    [v6 respondWithError:v12];
  }

  else
  {
    v13 = [(HMDAccessory *)self home];
    v14 = [v13 homeManager];
    v12 = [v14 messageDispatcher];

    if (v12)
    {
      v15 = [(HMDAppleMediaAccessory *)self remoteMessageDestination];
      if (v15)
      {
        v16 = [v6 name];
        v17 = [v6 qualityOfService];
        v18 = [v6 messagePayload];
        v19 = +[HMDRemoteMessage secureMessageWithName:qualityOfService:destination:messagePayload:restriction:](HMDRemoteMessage, "secureMessageWithName:qualityOfService:destination:messagePayload:restriction:", v16, v17, v15, v18, [v6 remoteRestriction]);

        [v19 setResponseRestriction:{objc_msgSend(v6, "remoteResponseRestriction")}];
        objc_initWeak(buf, self);
        v29 = MEMORY[0x277D85DD0];
        v30 = 3221225472;
        v31 = __63__HMDAppleMediaAccessory__relayRequestMessage_responseHandler___block_invoke;
        v32 = &unk_2797355F8;
        objc_copyWeak(&v34, buf);
        v33 = v7;
        [v19 setResponseHandler:&v29];
        [v12 sendMessage:{v19, v29, v30, v31, v32}];

        objc_destroyWeak(&v34);
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
          v36 = v27;
          _os_log_impl(&dword_2531F8000, v26, OS_LOG_TYPE_INFO, "%{public}@Cannot send message to unknown remote device", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v24);
        v19 = [MEMORY[0x277CCA9B8] hmErrorWithCode:54];
        [v6 respondWithError:v19];
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
        v36 = v23;
        _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_INFO, "%{public}@Not configured to relay messages", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v20);
      v15 = [MEMORY[0x277CCA9B8] hmErrorWithCode:54];
      [v6 respondWithError:v15];
    }
  }

  v28 = *MEMORY[0x277D85DE8];
}

void __63__HMDAppleMediaAccessory__relayRequestMessage_responseHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = WeakRetained;
  if (WeakRetained && *(a1 + 32))
  {
    v9 = [WeakRetained workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __63__HMDAppleMediaAccessory__relayRequestMessage_responseHandler___block_invoke_2;
    block[3] = &unk_2797355D0;
    v13 = *(a1 + 32);
    v11 = v5;
    v12 = v6;
    dispatch_async(v9, block);
  }
}

- (void)handleCurrentNetworkChangedNotification:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = HMFGetLogIdentifier();
    v10 = 138543618;
    v11 = v8;
    v12 = 2112;
    v13 = v4;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@Received current network changed notification: %@", &v10, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  [(HMDAppleMediaAccessory *)v6 updateWiFiNetworkInfo];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)updateWiFiNetworkInfo
{
  v3 = [(HMDAccessory *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__HMDAppleMediaAccessory_updateWiFiNetworkInfo__block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(v3, block);
}

void __47__HMDAppleMediaAccessory_updateWiFiNetworkInfo__block_invoke(uint64_t a1)
{
  v39 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) wifiManager];
  v3 = [v2 MACAddress];

  v4 = [*(a1 + 32) wifiManager];
  v5 = [v4 currentNetworkSSID];

  v6 = [objc_alloc(MEMORY[0x277D0F958]) initWithMACAddress:v3 SSID:v5];
  v7 = +[HMDBackingStoreTransactionOptions defaultLocalOptions];
  if (v5)
  {
    v8 = [*(a1 + 32) lastStagedWifiNetworkInfo];
    v9 = [v8 isEqualToNetworkInfo:v6];

    if ((v9 & 1) == 0)
    {
      v10 = objc_autoreleasePoolPush();
      v11 = *(a1 + 32);
      v12 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = HMFGetLogIdentifier();
        v14 = [*(a1 + 32) wifiNetworkInfo];
        [*(a1 + 32) lastStagedWifiNetworkInfo];
        v15 = v29 = v10;
        *buf = 138544130;
        v32 = v13;
        v33 = 2112;
        v34 = v6;
        v35 = 2112;
        v36 = v14;
        v37 = 2112;
        v38 = v15;
        _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@Updating WiFi network info to %@, lastCommitedWiFiInfo: %@, lastStagedWiFiInfo %@", buf, 0x2Au);

        v10 = v29;
      }

      objc_autoreleasePoolPop(v10);
      v16 = [*(a1 + 32) transactionWithObjectChangeType:2];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v17 = v16;
      }

      else
      {
        v17 = 0;
      }

      v18 = v17;

      [v18 setWifiNetworkInfo:v6];
      v19 = [*(a1 + 32) lastStagedWifiNetworkInfo];
      v20 = [v19 SSID];
      v21 = [v6 SSID];
      v22 = HMFEqualObjects();

      if (v22)
      {
        v23 = @"HMDAppleMediaAccessoryWiFiMACLocalOnlyUpdateLabel";
      }

      else
      {
        v24 = +[HMDBackingStoreTransactionOptions defaultPreferencesOptions];

        v23 = @"HMDAppleMediaAccessoryWiFiNetworkInfoUpdateLabel";
        v7 = v24;
      }

      [*(a1 + 32) setLastStagedWifiNetworkInfo:{v6, v29}];
      v25 = [*(a1 + 32) home];
      v26 = [v25 backingStore];
      v27 = [v26 transaction:v23 options:v7];

      [v27 add:v18];
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __47__HMDAppleMediaAccessory_updateWiFiNetworkInfo__block_invoke_499;
      v30[3] = &unk_2797359D8;
      v30[4] = *(a1 + 32);
      [v27 run:v30];
    }
  }

  v28 = *MEMORY[0x277D85DE8];
}

void __47__HMDAppleMediaAccessory_updateWiFiNetworkInfo__block_invoke_499(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    [*(a1 + 32) setLastStagedWifiNetworkInfo:0];
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
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_ERROR, "%{public}@Updating WiFi network info backing store transaction failed: %@", &v9, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (HMFWiFiNetworkInfo)lastStagedWifiNetworkInfo
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = self->_lastStagedWifiNetworkInfo;
  os_unfair_recursive_lock_unlock();

  return v3;
}

- (void)setLastStagedWifiNetworkInfo:(id)a3
{
  v4 = a3;
  os_unfair_recursive_lock_lock_with_options();
  lastStagedWifiNetworkInfo = self->_lastStagedWifiNetworkInfo;
  self->_lastStagedWifiNetworkInfo = v4;

  os_unfair_recursive_lock_unlock();
}

- (void)setWifiNetworkInfo:(id)a3
{
  v7 = a3;
  os_unfair_recursive_lock_lock_with_options();
  wifiNetworkInfo = self->_wifiNetworkInfo;
  if (HMFEqualObjects())
  {
    os_unfair_recursive_lock_unlock();
  }

  else
  {
    objc_storeStrong(&self->_wifiNetworkInfo, a3);
    os_unfair_recursive_lock_unlock();
    v6 = [(HMDMediaAccessory *)self notificationCenter];
    [v6 postNotificationName:@"HMDAppleMediaAccessoryWiFiNetworkInfoUpdatedNotification" object:self];
  }
}

- (HMFWiFiNetworkInfo)wifiNetworkInfo
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = self->_wifiNetworkInfo;
  os_unfair_recursive_lock_unlock();

  return v3;
}

- (void)handleSoftwareUpdateV2Scan:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543362;
    v17 = v8;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Handling SoftwareUpdateV2Scan", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  if (![(HMDAppleMediaAccessory *)v6 isCurrentAccessory])
  {
    v9 = objc_autoreleasePoolPush();
    v10 = v6;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543362;
      v17 = v12;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Relaying SoftwareUpdateV2Scan", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __53__HMDAppleMediaAccessory_handleSoftwareUpdateV2Scan___block_invoke;
    v14[3] = &unk_279733FB0;
    v14[4] = v10;
    v15 = v4;
    [(HMDAppleMediaAccessory *)v10 _relayRequestMessage:v15 responseHandler:v14];
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __53__HMDAppleMediaAccessory_handleSoftwareUpdateV2Scan___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  v10 = v9;
  if (v5)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v14 = 138543618;
      v15 = v11;
      v16 = 2112;
      v17 = v5;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_ERROR, "%{public}@SoftwareUpdateV2Scan responded with error: %@", &v14, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    [*(a1 + 40) respondWithError:v5];
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v14 = 138543362;
      v15 = v12;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@SoftwareUpdateV2Scan responded", &v14, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
    [*(a1 + 40) respondWithPayload:v6];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (id)_scanForSoftwareUpdate
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    *buf = 138543362;
    v26 = v6;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@SRAISU: Scanning for software update.", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v7 = objc_alloc(MEMORY[0x277D0F820]);
  v8 = [(HMDAccessory *)v4 uuid];
  v9 = [v7 initWithTarget:v8];

  v10 = MEMORY[0x277D0F848];
  v23 = *MEMORY[0x277CCEEF8];
  v24 = &unk_2866286A8;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
  v12 = [v10 messageWithName:*MEMORY[0x277CCEF08] destination:v9 payload:v11];

  v13 = objc_alloc_init(MEMORY[0x277D2C900]);
  objc_initWeak(buf, v4);
  v17 = MEMORY[0x277D85DD0];
  v18 = 3221225472;
  v19 = __48__HMDAppleMediaAccessory__scanForSoftwareUpdate__block_invoke;
  v20 = &unk_279733AE8;
  objc_copyWeak(&v22, buf);
  v14 = v13;
  v21 = v14;
  [v12 setResponseHandler:&v17];
  [(HMDAppleMediaAccessory *)v4 handleSoftwareUpdateV2Scan:v12, v17, v18, v19, v20];

  objc_destroyWeak(&v22);
  objc_destroyWeak(buf);

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

void __48__HMDAppleMediaAccessory__scanForSoftwareUpdate__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v38 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = objc_autoreleasePoolPush();
  if (WeakRetained)
  {
    v9 = WeakRetained;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v34 = 138543362;
      v35 = v11;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@SRAISU: Received response for HMAccessorySoftwareUpdateControllerV2ScanMessage", &v34, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
    if (v5)
    {
      v12 = objc_autoreleasePoolPush();
      v13 = v9;
      v14 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = HMFGetLogIdentifier();
        v34 = 138543618;
        v35 = v15;
        v36 = 2112;
        v37 = v5;
        _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_ERROR, "%{public}@SRAISU: Scan message failed with error: %@", &v34, 0x16u);
      }

      objc_autoreleasePoolPop(v12);
      v16 = *(a1 + 32);
      v17 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
      [v16 finishWithError:v17];
      goto LABEL_22;
    }

    v20 = [v6 hmf_numberForKey:*MEMORY[0x277CCEEF0]];
    v17 = v20;
    if (v20)
    {
      v21 = [v20 BOOLValue];
      v22 = objc_autoreleasePoolPush();
      v23 = v9;
      v24 = HMFGetOSLogHandle();
      v25 = os_log_type_enabled(v24, OS_LOG_TYPE_INFO);
      if (v21)
      {
        if (v25)
        {
          v26 = HMFGetLogIdentifier();
          v34 = 138543362;
          v35 = v26;
          _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_INFO, "%{public}@SRAISU: scanResultFuture successfully found update", &v34, 0xCu);
        }

        objc_autoreleasePoolPop(v22);
        [*(a1 + 32) finishWithNoResult];
        goto LABEL_22;
      }

      if (!v25)
      {
        goto LABEL_21;
      }

      v27 = HMFGetLogIdentifier();
      v34 = 138543362;
      v35 = v27;
      v28 = "%{public}@SRAISU: scanResultFuture failed to find update";
      v29 = v24;
      v30 = OS_LOG_TYPE_INFO;
    }

    else
    {
      v22 = objc_autoreleasePoolPush();
      v23 = v9;
      v24 = HMFGetOSLogHandle();
      if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
LABEL_21:

        objc_autoreleasePoolPop(v22);
        v31 = *(a1 + 32);
        v32 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
        [v31 finishWithError:v32];

LABEL_22:
        goto LABEL_23;
      }

      v27 = HMFGetLogIdentifier();
      v34 = 138543362;
      v35 = v27;
      v28 = "%{public}@SRAISU: Message did not contain required key in response: HMAccessorySoftwareUpdateControllerV2MessageKeyScanDidFindUpdate";
      v29 = v24;
      v30 = OS_LOG_TYPE_ERROR;
    }

    _os_log_impl(&dword_2531F8000, v29, v30, v28, &v34, 0xCu);

    goto LABEL_21;
  }

  v18 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    v19 = HMFGetLogIdentifier();
    v34 = 138543362;
    v35 = v19;
    _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_INFO, "%{public}@SRAISU: Completing scan future with success because the accessory was deallocated", &v34, 0xCu);
  }

  objc_autoreleasePoolPop(v8);
  [*(a1 + 32) finishWithNoResult];
LABEL_23:

  v33 = *MEMORY[0x277D85DE8];
}

- (id)_scanForSoftwareUpdateWithRetries
{
  v36[5] = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    *buf = 138543362;
    v33 = v6;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@SRAISU: Scanning for software update with retries.", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v7 = [MEMORY[0x277CCABB0] numberWithDouble:360.0];
  v36[0] = v7;
  v8 = [MEMORY[0x277CCABB0] numberWithDouble:900.0];
  v36[1] = v8;
  v9 = [MEMORY[0x277CCABB0] numberWithDouble:1800.0];
  v36[2] = v9;
  v10 = [MEMORY[0x277CCABB0] numberWithDouble:7200.0];
  v36[3] = v10;
  v11 = [MEMORY[0x277CCABB0] numberWithDouble:21600.0];
  v36[4] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:5];

  if (isInternalBuild() && ([MEMORY[0x277D0F8D0] sharedPreferences], v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v13, "preferenceForKey:", @"HMDAppleMediaAccessoryShouldOverrideRepeatScanningIntervals"), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "BOOLValue"), v14, v13, v15))
  {
    v16 = [MEMORY[0x277D0F8D0] sharedPreferences];
    v17 = [v16 preferenceForKey:@"HMDAppleMediaAccessoryRepeatScanningIntervalsOverride"];
    v18 = [v17 value];

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

    v21 = objc_autoreleasePoolPush();
    v22 = v4;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = HMFGetLogIdentifier();
      *buf = 138543618;
      v33 = v24;
      v34 = 2112;
      v35 = v20;
      _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_INFO, "%{public}@SRAISU: Overriding retries with new retries: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v21);
  }

  else
  {
    v20 = v12;
  }

  objc_initWeak(buf, v4);
  v25 = MEMORY[0x277D2C900];
  v26 = [(HMDAccessory *)v4 workQueue];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __59__HMDAppleMediaAccessory__scanForSoftwareUpdateWithRetries__block_invoke;
  v30[3] = &unk_27972A0B8;
  objc_copyWeak(&v31, buf);
  v27 = [v25 futureWithRetryIntervals:v20 workQueue:v26 block:v30];
  objc_destroyWeak(&v31);

  objc_destroyWeak(buf);
  v28 = *MEMORY[0x277D85DE8];

  return v27;
}

id __59__HMDAppleMediaAccessory__scanForSoftwareUpdateWithRetries__block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = objc_autoreleasePoolPush();
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      v15 = 138543618;
      v16 = v8;
      v17 = 2112;
      v18 = v3;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@SRAISU: Scanning for software update with retryIntervalsRemaining: %@", &v15, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    v9 = [v6 _scanForSoftwareUpdate];
  }

  else
  {
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v15 = 138543362;
      v16 = v11;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@SRAISU: Completing scan future with success because the accessory was deallocated", &v15, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
    v9 = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  v12 = v9;

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)_softwareUpdateV2FromDescriptor:(id)a3
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
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Creating HMSoftwareUpdateV2 for descriptor: %@", &v12, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [MEMORY[0x277CD1E68] softwareUpdateFromDescriptor:v4];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (void)_applySoftwareUpdateWithDescriptor:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543618;
    v31 = v8;
    v32 = 2112;
    v33 = v4;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@SRAISU: Applying software update with descriptor: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [(HMDAppleMediaAccessory *)v6 _softwareUpdateV2FromDescriptor:v4];
  v10 = [v9 version];

  if (v10)
  {
    v11 = [MEMORY[0x277CD17E8] softwareUpdateFromSoftwareUpdateV2:v9];
    v12 = objc_autoreleasePoolPush();
    v13 = v6;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543618;
      v31 = v15;
      v32 = 2112;
      v33 = v11;
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, "%{public}@SRAISU: Created HMSoftwareUpdate: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
    v28 = *MEMORY[0x277CD1090];
    v16 = encodeRootObject();
    v29 = v16;
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v29 forKeys:&v28 count:1];

    v18 = objc_alloc(MEMORY[0x277D0F820]);
    v19 = [(HMDAccessory *)v13 uuid];
    v20 = [v18 initWithTarget:v19];

    v21 = [MEMORY[0x277D0F848] messageWithName:*MEMORY[0x277CD1080] destination:v20 payload:v17];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __61__HMDAppleMediaAccessory__applySoftwareUpdateWithDescriptor___block_invoke;
    v27[3] = &unk_279734E00;
    v27[4] = v13;
    [v21 setResponseHandler:v27];
    [(HMDAppleMediaAccessory *)v13 _startUpdate:v21];
  }

  else
  {
    v22 = objc_autoreleasePoolPush();
    v23 = v6;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = HMFGetLogIdentifier();
      *buf = 138543618;
      v31 = v25;
      v32 = 2112;
      v33 = v9;
      _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_ERROR, "%{public}@SRAISU: Cannot apply software update with no version: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v22);
  }

  v26 = *MEMORY[0x277D85DE8];
}

void __61__HMDAppleMediaAccessory__applySoftwareUpdateWithDescriptor___block_invoke(uint64_t a1, void *a2, void *a3)
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
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v17 = 138543618;
      v18 = v11;
      v19 = 2112;
      v20 = v5;
      v12 = "%{public}@SRAISU: Failed to start software update with error: %@";
      v13 = v10;
      v14 = OS_LOG_TYPE_ERROR;
      v15 = 22;
LABEL_6:
      _os_log_impl(&dword_2531F8000, v13, v14, v12, &v17, v15);
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v17 = 138543362;
    v18 = v11;
    v12 = "%{public}@SRAISU: Successfully started software update";
    v13 = v10;
    v14 = OS_LOG_TYPE_INFO;
    v15 = 12;
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v7);
  v16 = *MEMORY[0x277D85DE8];
}

- (void)runTransactionWithPreferredMediaUserUUID:(id)a3 selectionType:(unint64_t)a4 completion:(id)a5
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
    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a4];
    *buf = 138543874;
    v23 = v13;
    v24 = 2112;
    v25 = v8;
    v26 = 2112;
    v27 = v14;
    _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@Run transaction and set preferred media user: %@, type: %@.", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v10);
  v15 = [(HMDAppleMediaAccessory *)v11 transactionWithObjectChangeType:2];
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

  [v17 setPreferredMediaUserUUID:v8];
  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a4];
  [v17 setPreferredUserSelectionType:v18];

  v21 = v17;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v21 count:1];

  [(HMDAccessory *)v11 runTransactionWithModels:v19 label:@"Update preferred media user" completion:v9];
  v20 = *MEMORY[0x277D85DE8];
}

- (void)updatePreferredMediaUser:(id)a3 selectionType:(unint64_t)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v6];
  [(HMDAccessory *)self setPreferredMediaUserUUID:v7];

  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a4];
  [(HMDAccessory *)self setPreferredMediaUserSelectionTypeNumber:v8];

  v9 = objc_autoreleasePoolPush();
  v10 = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    v13 = [(HMDAccessory *)v10 preferredMediaUserUUID];
    v14 = [(HMDAccessory *)v10 preferredMediaUserSelectionTypeNumber];
    v16 = 138543874;
    v17 = v12;
    v18 = 2112;
    v19 = v13;
    v20 = 2112;
    v21 = v14;
    _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Updated preferred media user UUID: %@, type: %@", &v16, 0x20u);
  }

  objc_autoreleasePoolPop(v9);
  v15 = *MEMORY[0x277D85DE8];
}

- (void)updatePreferredMediaUserWithUUID:(id)a3 selectionType:(unint64_t)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  objc_initWeak(&location, self);
  v10 = objc_alloc(MEMORY[0x277CD1708]);
  v11 = [v8 UUIDString];
  v12 = [v10 initWithUUIDString:v11 selectionType:a4];

  v13 = [(HMDAppleMediaAccessory *)self preferredMediaUserEventController];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __84__HMDAppleMediaAccessory_updatePreferredMediaUserWithUUID_selectionType_completion___block_invoke;
  v16[3] = &unk_27972A090;
  objc_copyWeak(v19, &location);
  v14 = v8;
  v17 = v14;
  v19[1] = a4;
  v15 = v9;
  v18 = v15;
  [v13 updatePreferredMediaUserWithPrimaryUserInfo:v12 completion:v16];

  objc_destroyWeak(v19);
  objc_destroyWeak(&location);
}

void __84__HMDAppleMediaAccessory_updatePreferredMediaUserWithUUID_selectionType_completion___block_invoke(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = WeakRetained;
  if (v3)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = v5;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      v10 = *(a1 + 32);
      v18 = 138543874;
      v19 = v9;
      v20 = 2112;
      v21 = v10;
      v22 = 2112;
      v23 = v3;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_ERROR, "%{public}@Updated preferred media user to %@ with error: %@", &v18, 0x20u);
    }
  }

  else
  {
    [WeakRetained setPreferredMediaUserUUID:*(a1 + 32)];
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a1 + 56)];
    [v5 setPreferredMediaUserSelectionTypeNumber:v11];

    v6 = objc_autoreleasePoolPush();
    v12 = v5;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      v14 = [v12 preferredMediaUserUUID];
      v15 = [v12 preferredMediaUserSelectionTypeNumber];
      v18 = 138543874;
      v19 = v13;
      v20 = 2112;
      v21 = v14;
      v22 = 2112;
      v23 = v15;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Updated preferred media user UUID: %@, type: %@", &v18, 0x20u);
    }
  }

  objc_autoreleasePoolPop(v6);
  v16 = *(a1 + 40);
  if (v16)
  {
    (*(v16 + 16))(v16, v3);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)handleUpdatePreferredMediaUser:(id)a3
{
  v62 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(HMDAppleMediaAccessory *)self isCurrentAccessory])
  {
    v5 = [MEMORY[0x277D0F8E8] productInfo];
    v6 = [v5 productClass];

    if (v6 == 6)
    {
      v7 = [v4 numberForKey:*MEMORY[0x277CCEC50]];
      if ([v7 unsignedIntegerValue] == 1)
      {
        v8 = [v4 uuidForKey:@"kUserUUIDKey"];
        v9 = [(HMDAccessory *)self home];
        v10 = [v9 userWithUUID:v8];

        if (v10)
        {
          v11 = 1;
LABEL_17:
          v25 = objc_autoreleasePoolPush();
          v26 = self;
          v27 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
          {
            v28 = HMFGetLogIdentifier();
            *buf = 138543362;
            v57 = v28;
            _os_log_impl(&dword_2531F8000, v27, OS_LOG_TYPE_INFO, "%{public}@Handling update preferred media user notification", buf, 0xCu);
          }

          objc_autoreleasePoolPop(v25);
          v29 = [(HMDAccessory *)v26 preferredMediaUserUUID];
          v30 = HMFEqualObjects();

          if (v30 && (-[HMDAccessory preferredMediaUserSelectionTypeNumber](v26, "preferredMediaUserSelectionTypeNumber"), (v31 = objc_claimAutoreleasedReturnValue()) != 0) && (-[HMDAccessory preferredMediaUserSelectionTypeNumber](v26, "preferredMediaUserSelectionTypeNumber"), v32 = objc_claimAutoreleasedReturnValue(), v33 = v11 == [v32 unsignedIntegerValue], v32, v31, v33))
          {
            v34 = objc_autoreleasePoolPush();
            v35 = v26;
            v36 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
            {
              v37 = HMFGetLogIdentifier();
              *buf = 138543362;
              v57 = v37;
              _os_log_impl(&dword_2531F8000, v36, OS_LOG_TYPE_INFO, "%{public}@User already matches.", buf, 0xCu);
            }

            objc_autoreleasePoolPop(v34);
            [v4 respondWithSuccess];
          }

          else if (_os_feature_enabled_impl())
          {
            v38 = objc_autoreleasePoolPush();
            v39 = v26;
            v40 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
            {
              v41 = HMFGetLogIdentifier();
              *buf = 138543362;
              v57 = v41;
              _os_log_impl(&dword_2531F8000, v40, OS_LOG_TYPE_INFO, "%{public}@Messaged HomePod Settings not supported", buf, 0xCu);
            }

            objc_autoreleasePoolPop(v38);
            v42 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
            [v4 respondWithError:v42];
          }

          else
          {
            objc_initWeak(buf, v26);
            v50[0] = MEMORY[0x277D85DD0];
            v50[1] = 3221225472;
            v50[2] = __57__HMDAppleMediaAccessory_handleUpdatePreferredMediaUser___block_invoke_485;
            v50[3] = &unk_279731988;
            objc_copyWeak(&v53, buf);
            v51 = v8;
            v52 = v4;
            [(HMDAccessory *)v26 setPreferredMediaUser:v51 selectionType:v11 completion:v50];

            objc_destroyWeak(&v53);
            objc_destroyWeak(buf);
          }

          goto LABEL_35;
        }

        v43 = objc_autoreleasePoolPush();
        v44 = self;
        v45 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
        {
          v46 = HMFGetLogIdentifier();
          v47 = [(HMDAccessory *)v44 home];
          *buf = 138543874;
          v57 = v46;
          v58 = 2112;
          v59 = v8;
          v60 = 2112;
          v61 = v47;
          _os_log_impl(&dword_2531F8000, v45, OS_LOG_TYPE_ERROR, "%{public}@Did not find user with uuid %@ in home %@.", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v43);
        v48 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:5];
        [v4 respondWithError:v48];
      }

      else
      {
        if (![v7 unsignedIntegerValue])
        {
          v11 = 0;
          v8 = 0;
          goto LABEL_17;
        }

        v21 = objc_autoreleasePoolPush();
        v22 = self;
        v23 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          v24 = HMFGetLogIdentifier();
          *buf = 138543618;
          v57 = v24;
          v58 = 2112;
          v59 = v7;
          _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_ERROR, "%{public}@Unexpected selection type %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v21);
        v8 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
        [v4 respondWithError:v8];
      }

      goto LABEL_35;
    }

    v16 = objc_autoreleasePoolPush();
    v17 = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543362;
      v57 = v19;
      _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_ERROR, "%{public}@Cannot set preferred user on device class.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v16);
    v20 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:5];
    [v4 respondWithError:v20];
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    v13 = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543362;
      v57 = v15;
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, "%{public}@Relaying preferred media user update.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v12);
    v54[0] = MEMORY[0x277D85DD0];
    v54[1] = 3221225472;
    v54[2] = __57__HMDAppleMediaAccessory_handleUpdatePreferredMediaUser___block_invoke;
    v54[3] = &unk_279733FB0;
    v54[4] = v13;
    v55 = v4;
    [(HMDAppleMediaAccessory *)v13 _relayRequestMessage:v55 responseHandler:v54];
  }

LABEL_35:

  v49 = *MEMORY[0x277D85DE8];
}

void __57__HMDAppleMediaAccessory_handleUpdatePreferredMediaUser___block_invoke(uint64_t a1, void *a2, void *a3)
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
    v13 = 138543618;
    v14 = v10;
    v15 = 2112;
    v16 = v5;
    _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Got preferred user update response %@", &v13, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  v11 = *(a1 + 40);
  if (v5)
  {
    [v11 respondWithError:v5];
  }

  else
  {
    [v11 respondWithSuccess];
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __57__HMDAppleMediaAccessory_handleUpdatePreferredMediaUser___block_invoke_485(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = objc_autoreleasePoolPush();
  v6 = WeakRetained;
  v7 = HMFGetOSLogHandle();
  v8 = v7;
  if (v3)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      v10 = *(a1 + 32);
      v14 = 138543874;
      v15 = v9;
      v16 = 2112;
      v17 = v10;
      v18 = 2112;
      v19 = v3;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_ERROR, "%{public}@Failed to update preferred media User to %@, error: %@", &v14, 0x20u);
    }

    objc_autoreleasePoolPop(v5);
    [*(a1 + 40) respondWithError:v3];
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v12 = *(a1 + 32);
      v14 = 138543618;
      v15 = v11;
      v16 = 2112;
      v17 = v12;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Updated preferred media User to %@", &v14, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    [*(a1 + 40) respondWithSuccess];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)handleDeleteSiriHistoryRequest:(id)a3
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
    v33 = v8;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Received delete siri history request", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  if ([(HMDAppleMediaAccessory *)v6 isCurrentAccessory])
  {
    v9 = [MEMORY[0x277D0F8E8] productInfo];
    v10 = [v9 productClass] == 6;

    if (v10)
    {
      v11 = [HMDAppleMediaAccessoryDeleteSiriHistoryOperation alloc];
      v12 = [(HMDAppleMediaAccessory *)v6 settingsConnectionFactory];
      v13 = v12[2]();
      v14 = [(HMDAppleMediaAccessoryDeleteSiriHistoryOperation *)v11 initWithSettingsConnection:v13];

      objc_initWeak(buf, v14);
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __57__HMDAppleMediaAccessory_handleDeleteSiriHistoryRequest___block_invoke_483;
      v27[3] = &unk_279732670;
      objc_copyWeak(&v29, buf);
      v27[4] = v6;
      v28 = v4;
      [(HMDAppleMediaAccessoryDeleteSiriHistoryOperation *)v14 setCompletionBlock:v27];
      v15 = [MEMORY[0x277D0F8F0] defaultScheduler];
      v16 = [v15 performOperation:v14];

      objc_destroyWeak(&v29);
      objc_destroyWeak(buf);
    }

    else
    {
      v21 = objc_autoreleasePoolPush();
      v22 = v6;
      v23 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v24 = HMFGetLogIdentifier();
        *buf = 138543362;
        v33 = v24;
        _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_ERROR, "%{public}@Attempted to delete siri history on unsupported device", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v21);
      v25 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:5];
      [v4 respondWithError:v25];
    }
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
      v33 = v20;
      _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_INFO, "%{public}@Relaying delete siri history request to current accessory", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v17);
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __57__HMDAppleMediaAccessory_handleDeleteSiriHistoryRequest___block_invoke;
    v30[3] = &unk_279733FB0;
    v30[4] = v18;
    v31 = v4;
    [(HMDAppleMediaAccessory *)v18 _relayRequestMessage:v31 responseHandler:v30];
  }

  v26 = *MEMORY[0x277D85DE8];
}

void __57__HMDAppleMediaAccessory_handleDeleteSiriHistoryRequest___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  v10 = v9;
  if (v5)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v14 = 138543618;
      v15 = v11;
      v16 = 2112;
      v17 = v5;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_ERROR, "%{public}@Delete siri history relay responded with error: %@", &v14, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    [*(a1 + 40) respondWithError:v5];
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v14 = 138543362;
      v15 = v12;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Delete siri history relay responded", &v14, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
    [*(a1 + 40) respondWithPayload:0];
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __57__HMDAppleMediaAccessory_handleDeleteSiriHistoryRequest___block_invoke_483(id *a1)
{
  v15 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v3 = [WeakRetained error];
  v4 = objc_autoreleasePoolPush();
  v5 = a1[4];
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
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_ERROR, "%{public}@Delete siri history operation completed with error: %@", &v11, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    [a1[5] respondWithError:v3];
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v11 = 138543362;
      v12 = v9;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Delete siri history operation completed", &v11, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    [a1[5] respondWithPayload:0];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_startUpdate:(id)a3
{
  v54 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543618;
    v51 = v8;
    v52 = 2112;
    v53 = v4;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Starting update for message: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [v4 dataForKey:*MEMORY[0x277CD1090]];
  if (v9)
  {
    v10 = [MEMORY[0x277CCAAC8] deserializeObjectWithData:v9 allowedClass:objc_opt_class() frameworkClasses:&unk_286627028];
    if (v10)
    {
      v11 = [(HMDAccessory *)v6 home];
      if ([v11 isAdminUser])
      {
        v12 = +[HMDSoftwareUpdateStartedEvent eventUpdateStartedWithAutomaticUpdateEnabled:](HMDSoftwareUpdateStartedEvent, "eventUpdateStartedWithAutomaticUpdateEnabled:", [v11 isAutomaticSoftwareUpdateEnabled]);
        if ([(HMDAppleMediaAccessory *)v6 isCurrentAccessory])
        {
          v13 = objc_autoreleasePoolPush();
          v14 = v6;
          v15 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
          {
            v16 = HMFGetLogIdentifier();
            *buf = 138543618;
            v51 = v16;
            v52 = 2112;
            v53 = v10;
            _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@Received request to start update: %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v13);
          v17 = [(HMDAppleMediaAccessory *)v14 softwareUpdateInstallProvider];
          if (v17)
          {
            objc_initWeak(buf, v14);
            v42[0] = MEMORY[0x277D85DD0];
            v42[1] = 3221225472;
            v42[2] = __39__HMDAppleMediaAccessory__startUpdate___block_invoke_481;
            v42[3] = &unk_27972F820;
            objc_copyWeak(&v46, buf);
            v43 = v10;
            v12 = v12;
            v44 = v12;
            v45 = v4;
            [v17 startUpdate:v43 completionHandler:v42];

            objc_destroyWeak(&v46);
            objc_destroyWeak(buf);
          }

          else
          {
            v35 = objc_autoreleasePoolPush();
            v36 = v14;
            v37 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
            {
              v38 = HMFGetLogIdentifier();
              *buf = 138543362;
              v51 = v38;
              _os_log_impl(&dword_2531F8000, v37, OS_LOG_TYPE_INFO, "%{public}@Software update install not supported", buf, 0xCu);
            }

            objc_autoreleasePoolPop(v35);
            v39 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
            v40 = +[HMDMetricsManager sharedLogEventSubmitter];
            [v40 submitLogEvent:v12 error:v39];

            [v4 respondWithError:v39];
            v17 = 0;
          }
        }

        else
        {
          v47[0] = MEMORY[0x277D85DD0];
          v47[1] = 3221225472;
          v47[2] = __39__HMDAppleMediaAccessory__startUpdate___block_invoke;
          v47[3] = &unk_279733FB0;
          v12 = v12;
          v48 = v12;
          v49 = v4;
          [(HMDAppleMediaAccessory *)v6 _relayRequestMessage:v49 responseHandler:v47];

          v17 = v48;
        }
      }

      else
      {
        v29 = objc_autoreleasePoolPush();
        v30 = v6;
        v31 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
        {
          v32 = HMFGetLogIdentifier();
          v33 = [v11 currentUser];
          *buf = 138543618;
          v51 = v32;
          v52 = 2112;
          v53 = v33;
          _os_log_impl(&dword_2531F8000, v31, OS_LOG_TYPE_INFO, "%{public}@Only administrators may start updates, current user: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v29);
        v34 = [v4 responseHandler];

        if (!v34)
        {
          goto LABEL_30;
        }

        v12 = [MEMORY[0x277CCA9B8] hmErrorWithCode:17 description:@"Insufficient privileges." reason:@"Current user is not an administrator." suggestion:0];
        v17 = [v4 responseHandler];
        (v17)[2](v17, v12, 0);
      }
    }

    else
    {
      v24 = objc_autoreleasePoolPush();
      v25 = v6;
      v26 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        v27 = HMFGetLogIdentifier();
        *buf = 138543362;
        v51 = v27;
        _os_log_impl(&dword_2531F8000, v26, OS_LOG_TYPE_INFO, "%{public}@Invalid software update in message payload", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v24);
      v28 = [v4 responseHandler];

      if (!v28)
      {
        v10 = 0;
LABEL_31:

        goto LABEL_32;
      }

      v11 = [MEMORY[0x277CCA9B8] hmErrorWithCode:22];
      v12 = [v4 responseHandler];
      (*(v12 + 2))(v12, v11, 0);
    }

LABEL_30:
    goto LABEL_31;
  }

  v18 = objc_autoreleasePoolPush();
  v19 = v6;
  v20 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    v21 = HMFGetLogIdentifier();
    v22 = [v4 messagePayload];
    *buf = 138543618;
    v51 = v21;
    v52 = 2112;
    v53 = v22;
    _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_ERROR, "%{public}@Missing serialized software update from message payload: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v18);
  v23 = [v4 responseHandler];

  if (v23)
  {
    v10 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
    v11 = [v4 responseHandler];
    (v11)[2](v11, v10, 0);
    goto LABEL_30;
  }

LABEL_32:

  v41 = *MEMORY[0x277D85DE8];
}

void __39__HMDAppleMediaAccessory__startUpdate___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = +[HMDMetricsManager sharedLogEventSubmitter];
  [v3 submitLogEvent:*(a1 + 32) error:v6];

  v4 = [*(a1 + 40) responseHandler];

  if (v4)
  {
    v5 = [*(a1 + 40) responseHandler];
    (v5)[2](v5, v6, 0);
  }
}

void __39__HMDAppleMediaAccessory__startUpdate___block_invoke_481(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v5 = objc_autoreleasePoolPush();
  v6 = WeakRetained;
  v7 = HMFGetOSLogHandle();
  v8 = v7;
  if (v3)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = HMFGetLogIdentifier();
      v10 = *(a1 + 32);
      v18 = 138543874;
      v19 = v9;
      v20 = 2112;
      v21 = v10;
      v22 = 2112;
      v23 = v3;
      v11 = "%{public}@Failed to start update, %@, with error: %@";
      v12 = v8;
      v13 = OS_LOG_TYPE_DEFAULT;
      v14 = 32;
LABEL_6:
      _os_log_impl(&dword_2531F8000, v12, v13, v11, &v18, v14);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v15 = *(a1 + 32);
    v18 = 138543618;
    v19 = v9;
    v20 = 2112;
    v21 = v15;
    v11 = "%{public}@Successfully started update: %@";
    v12 = v8;
    v13 = OS_LOG_TYPE_INFO;
    v14 = 22;
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v5);
  v16 = +[HMDMetricsManager sharedLogEventSubmitter];
  [v16 submitLogEvent:*(a1 + 40) error:v3];

  [*(a1 + 48) respondWithPayload:0 error:v3];
  v17 = *MEMORY[0x277D85DE8];
}

- (void)_fetchAvailableUpdate:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [HMDSoftwareUpdateFetchedEvent eventWasUserInitiated:1 wasNewUpdateFetched:0];
  v6 = [(HMDAppleMediaAccessory *)self isCurrentAccessory];
  v7 = objc_autoreleasePoolPush();
  v8 = self;
  v9 = HMFGetOSLogHandle();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_INFO);
  if (v6)
  {
    if (v10)
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543362;
      v32 = v11;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Received request to fetch available updates", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
    v12 = [(HMDAccessory *)v8 home];
    v13 = [v12 homeManager];
    v14 = [v13 softwareUpdateManager];

    if (v14)
    {
      objc_initWeak(buf, v8);
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __48__HMDAppleMediaAccessory__fetchAvailableUpdate___block_invoke_472;
      v24[3] = &unk_27972A068;
      objc_copyWeak(&v27, buf);
      v25 = v5;
      v26 = v4;
      [v14 fetchAvailableUpdateWithCompletionHandler:v24];

      objc_destroyWeak(&v27);
      objc_destroyWeak(buf);
    }

    else
    {
      v16 = objc_autoreleasePoolPush();
      v17 = v8;
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v19 = HMFGetLogIdentifier();
        *buf = 138543362;
        v32 = v19;
        _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_INFO, "%{public}@Software update not supported", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v16);
      v20 = [v4 responseHandler];

      if (v20)
      {
        v21 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
        v22 = [v4 responseHandler];
        (v22)[2](v22, v21, 0);
      }
    }
  }

  else
  {
    if (v10)
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543362;
      v32 = v15;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Requesting accessory to fetch available software updates", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __48__HMDAppleMediaAccessory__fetchAvailableUpdate___block_invoke;
    v28[3] = &unk_279730A88;
    v28[4] = v8;
    v29 = v5;
    v30 = v4;
    [(HMDAppleMediaAccessory *)v8 _relayRequestMessage:v30 responseHandler:v28];
  }

  v23 = *MEMORY[0x277D85DE8];
}

void __48__HMDAppleMediaAccessory__fetchAvailableUpdate___block_invoke(id *a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = *MEMORY[0x277CD1090];
  v8 = [v6 hmf_dataForKey:*MEMORY[0x277CD1090]];
  if (v8)
  {
    v21 = 0;
    v9 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v8 error:&v21];
    v10 = v21;
    if (v9)
    {
      [a1[5] setNewUpdateFetched:1];
      v22 = v7;
      v11 = encodeRootObjectForIncomingXPCMessage(v9, 0);
      v23 = v11;
      v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
    }

    else
    {
      v13 = objc_autoreleasePoolPush();
      v14 = a1[4];
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = HMFGetLogIdentifier();
        *buf = 138543618;
        v25 = v16;
        v26 = 2112;
        v27 = v10;
        _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@Failed to unarchive software updata from software update data: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v13);
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  v17 = +[HMDMetricsManager sharedLogEventSubmitter];
  [v17 submitLogEvent:a1[5] error:v5];

  v18 = [a1[6] responseHandler];

  if (v18)
  {
    v19 = [a1[6] responseHandler];
    (v19)[2](v19, v5, v12);
  }

  v20 = *MEMORY[0x277D85DE8];
}

void __48__HMDAppleMediaAccessory__fetchAvailableUpdate___block_invoke_472(id *a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v8 = objc_autoreleasePoolPush();
  v9 = WeakRetained;
  v10 = HMFGetOSLogHandle();
  v11 = v10;
  if (v6)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543618;
      v23 = v12;
      v24 = 2114;
      v25 = v6;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@Failed to start fetch with error: %{public}@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
LABEL_5:
    v13 = 0;
    goto LABEL_10;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    *buf = 138543618;
    v23 = v14;
    v24 = 2112;
    v25 = v5;
    _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Successfully fetched update: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  if (!v5)
  {
    goto LABEL_5;
  }

  [a1[4] setNewUpdateFetched:1];
  v20 = *MEMORY[0x277CD1090];
  v15 = encodeRootObject();
  v21 = v15;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v21 forKeys:&v20 count:1];

LABEL_10:
  v16 = +[HMDMetricsManager sharedLogEventSubmitter];
  [v16 submitLogEvent:a1[4] error:v6];

  v17 = [a1[5] responseHandler];

  if (v17)
  {
    v18 = [a1[5] responseHandler];
    (v18)[2](v18, v6, v13);
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)_applySoftwareUpdateModel:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(HMDAccessory *)self workQueue];
  dispatch_assert_queue_V2(v8);

  v9 = [(HMDAccessory *)self home];
  v10 = [v9 backingStore];
  v11 = +[HMDBackingStoreTransactionOptions defaultPreferencesOptions];
  v12 = [v10 transaction:@"HMDAppleMediaAccessorySoftwareUpdateLabel" options:v11];

  [v12 add:v7 withMessage:0];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __63__HMDAppleMediaAccessory__applySoftwareUpdateModel_completion___block_invoke;
  v14[3] = &unk_279735558;
  v15 = v6;
  v13 = v6;
  [v12 run:v14];
}

uint64_t __63__HMDAppleMediaAccessory__applySoftwareUpdateModel_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (BOOL)supportsSoftwareUpdate
{
  v3 = [(HMDAccessory *)self identifier];
  v4 = _mediaRouteIdentifier;
  if ([v3 isEqual:v4])
  {
    v5 = [MEMORY[0x277D0F8E8] productInfo];
    v6 = [v5 productClass];

    if (v6 == 6)
    {
      return 1;
    }
  }

  else
  {
  }

  return [(HMDAppleMediaAccessory *)self isHomePod];
}

- (void)_updateSoftwareVersion:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      v9 = [v4 versionString];
      v25 = 138543618;
      v26 = v8;
      v27 = 2112;
      v28 = v9;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Updating software version to: %@", &v25, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    v10 = [(HMDAppleMediaAccessory *)v6 transactionWithObjectChangeType:2];
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

    [v12 setSoftwareVersion:v4];
    v13 = [(HMDAccessory *)v6 home];
    v14 = [v13 backingStore];
    v15 = +[HMDBackingStoreTransactionOptions defaultPreferencesOptions];
    v16 = [v14 transaction:@"Update Software Version" options:v15];

    [v16 add:v12];
    v17 = [(HMDAccessory *)v6 softwareUpdate];
    if (v17)
    {
      v18 = v17;
      v19 = [(HMDAccessory *)v6 softwareUpdate];
      v20 = [v19 version];
      v21 = [v4 isAtLeastVersion:v20];

      if (v21)
      {
        v22 = [(HMDAccessory *)v6 softwareUpdate];
        v23 = [v22 transactionWithObjectChangeType:2];

        [v23 setSoftwareVersion:v4];
        [v23 setState:&unk_286628690];
        [v16 add:v23];
      }
    }

    [v16 run];
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (void)setSoftwareVersion:(id)a3
{
  v7 = a3;
  os_unfair_recursive_lock_lock_with_options();
  softwareVersion = self->_softwareVersion;
  if (HMFEqualObjects())
  {
    os_unfair_recursive_lock_unlock();
  }

  else
  {
    objc_storeStrong(&self->_softwareVersion, a3);
    os_unfair_recursive_lock_unlock();
    v6 = [(HMDMediaAccessory *)self notificationCenter];
    [v6 postNotificationName:@"HMDAppleMediaAccessorySoftwareVersionUpdatedNotification" object:self];
  }
}

- (HMFSoftwareVersion)softwareVersion
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = self->_softwareVersion;
  os_unfair_recursive_lock_unlock();

  return v3;
}

- (void)postDeviceIRKIfDifferent:(id)a3
{
  v58 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543618;
    v49 = v8;
    v50 = 2112;
    v51 = v4;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Posting device IRK: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [(HMDAccessory *)v6 home];
  v10 = [v9 uuid];

  v11 = [(HMDAppleMediaAccessory *)v6 eventForwarder];
  v12 = [(HMDAppleMediaAccessory *)v6 eventStoreReadHandle];
  v13 = v12;
  if (v4 && v11 && v12 && v10)
  {
    v14 = MEMORY[0x277CD16F0];
    v15 = *MEMORY[0x277CCEA60];
    v16 = [(HMDAccessory *)v6 uuid];
    v17 = [v14 topicFromSuffixID:v15 homeUUID:v10 accessoryUUID:v16];

    v46 = v17;
    v18 = [v13 lastEventForTopic:v17];
    if (!v18)
    {
      v19 = objc_autoreleasePoolPush();
      v20 = v6;
      v21 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        v22 = HMFGetLogIdentifier();
        *buf = 138543362;
        v49 = v22;
        _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_INFO, "%{public}@No previously cached IRK", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v19);
    }

    v23 = [v18 encodedData];
    v24 = v23;
    v45 = v10;
    if (!v18 || v23)
    {
      if (v23 && [v4 isEqualToData:v23])
      {
        v33 = objc_autoreleasePoolPush();
        v34 = v6;
        v35 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
        {
          v36 = HMFGetLogIdentifier();
          *buf = 138543618;
          v49 = v36;
          v50 = 2112;
          v51 = v4;
          _os_log_impl(&dword_2531F8000, v35, OS_LOG_TYPE_INFO, "%{public}@Skipping posting already cached device IRK: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v33);
        v37 = v46;
        goto LABEL_25;
      }
    }

    else
    {
      v25 = objc_autoreleasePoolPush();
      v26 = v6;
      v27 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v28 = HMFGetLogIdentifier();
        *buf = 138543618;
        v49 = v28;
        v50 = 2112;
        v51 = v18;
        _os_log_impl(&dword_2531F8000, v27, OS_LOG_TYPE_ERROR, "%{public}@Failed to decode cached device IRK from event: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v25);
    }

    v38 = objc_alloc(MEMORY[0x277D174B0]);
    v39 = [(HMDAccessory *)v6 uuid];
    [v39 UUIDString];
    v41 = v40 = v24;
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    v42 = [v38 initWithSource:v41 cachePolicy:2 combineType:2 timestamp:?];

    v24 = v40;
    v43 = [objc_alloc(MEMORY[0x277D174A0]) initWithEventData:v4 metadata:v42];
    v47[0] = MEMORY[0x277D85DD0];
    v47[1] = 3221225472;
    v47[2] = __51__HMDAppleMediaAccessory_postDeviceIRKIfDifferent___block_invoke;
    v47[3] = &unk_2797359D8;
    v47[4] = v6;
    v37 = v46;
    [v11 forwardEvent:v43 topic:v46 completion:v47];

LABEL_25:
    v10 = v45;

    goto LABEL_26;
  }

  v29 = objc_autoreleasePoolPush();
  v30 = v6;
  v31 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
  {
    v32 = HMFGetLogIdentifier();
    *buf = 138544386;
    v49 = v32;
    v50 = 2112;
    v51 = v4;
    v52 = 2112;
    v53 = v11;
    v54 = 2112;
    v55 = v13;
    v56 = 2112;
    v57 = v10;
    _os_log_impl(&dword_2531F8000, v31, OS_LOG_TYPE_ERROR, "%{public}@Failed to post deviceIRK: %@ due to missing dependencies eventforwarder: %@ event store read handle: %@ homeUUID: %@", buf, 0x34u);
  }

  objc_autoreleasePoolPop(v29);
LABEL_26:

  v44 = *MEMORY[0x277D85DE8];
}

void __51__HMDAppleMediaAccessory_postDeviceIRKIfDifferent___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = HMFGetLogIdentifier();
    v9 = 138543618;
    v10 = v7;
    v11 = 2112;
    v12 = v3;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@Forwarded current device IRK error: %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)handleCurrentDeviceIRKUpdated:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [v5 objectForKeyedSubscript:@"deviceIRK"];

  if (v6)
  {
    [(HMDAppleMediaAccessory *)self postDeviceIRKIfDifferent:v6];
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    v8 = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v12 = 138543362;
      v13 = v10;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_ERROR, "%{public}@No device IRK in notification", &v12, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)handleRoomChanged:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = HMDAppleMediaAccessory;
  [(HMDMediaAccessory *)&v14 handleRoomChanged:v4];
  v5 = [v4 object];
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
    v8 = [v7 uuid];
    v9 = [(HMDAccessory *)self uuid];
    if (![v8 hmf_isEqualToUUID:v9])
    {
LABEL_8:

      goto LABEL_9;
    }

    v10 = [(HMDAppleMediaAccessory *)self isCurrentAccessory];

    if (v10)
    {
      v11 = [v4 userInfo];
      v8 = [v11 hmf_stringForKey:@"kRoomOldNameKey"];

      v9 = [(HMDAppleMediaAccessory *)self metricsDispatcher];
      v12 = [(HMDAccessory *)self room];
      v13 = [v12 name];
      [v9 submitRoomChangeEvent:v13 previousRoom:v8];

      goto LABEL_8;
    }
  }

LABEL_9:
}

- (void)handleRoomNameChanged:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = HMDAppleMediaAccessory;
  [(HMDMediaAccessory *)&v14 handleRoomNameChanged:v4];
  v5 = [v4 object];
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
    v8 = [(HMDAccessory *)self room];
    v9 = HMFEqualObjects();

    if (v9)
    {
      if ([(HMDAppleMediaAccessory *)self isCurrentAccessory])
      {
        v10 = [v4 userInfo];
        v11 = [v10 hmf_stringForKey:@"kRoomOldNameKey"];

        v12 = [(HMDAppleMediaAccessory *)self metricsDispatcher];
        v13 = [v7 name];
        [v12 submitRoomChangeEvent:v13 previousRoom:v11];
      }
    }
  }
}

- (void)setSupportedStereoPairVersions:(unint64_t)a3
{
  os_unfair_recursive_lock_lock_with_options();
  if (self->_supportedStereoPairVersions != a3)
  {
    self->_supportedStereoPairVersions = a3;
  }

  os_unfair_recursive_lock_unlock();
}

- (unint64_t)supportedStereoPairVersions
{
  os_unfair_recursive_lock_lock_with_options();
  supportedStereoPairVersions = self->_supportedStereoPairVersions;
  os_unfair_recursive_lock_unlock();
  return supportedStereoPairVersions;
}

- (void)handleHomeUserRemovedNotification:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [v5 objectForKey:@"HMDUserNotificationKey"];

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

  v9 = objc_autoreleasePoolPush();
  v10 = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    *buf = 138543618;
    v17 = v12;
    v18 = 2112;
    v19 = v8;
    _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Handling removed user: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v9);
  if (v8 && (_os_feature_enabled_impl() & 1) == 0)
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __60__HMDAppleMediaAccessory_handleHomeUserRemovedNotification___block_invoke;
    v14[3] = &unk_2797359D8;
    v15 = v8;
    [(HMDAccessory *)v10 setDefaultPreferredMediaUserIfRemoved:v15 defaultUser:0 completion:v14];
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __60__HMDAppleMediaAccessory_handleHomeUserRemovedNotification___block_invoke(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = HMFGetOSLogHandle();
  v6 = v5;
  if (v3)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = HMFGetLogIdentifier();
      v8 = *(a1 + 32);
      v15 = 138544130;
      v16 = v7;
      v17 = 2112;
      v18 = v8;
      v19 = 2112;
      v20 = 0;
      v21 = 2112;
      v22 = v3;
      v9 = "%{public}@Updated preferred media user %@ to owner: %@ with error: %@";
      v10 = v6;
      v11 = OS_LOG_TYPE_ERROR;
      v12 = 42;
LABEL_6:
      _os_log_impl(&dword_2531F8000, v10, v11, v9, &v15, v12);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v13 = *(a1 + 32);
    v15 = 138543874;
    v16 = v7;
    v17 = 2112;
    v18 = v13;
    v19 = 2112;
    v20 = 0;
    v9 = "%{public}@Updated preferred media user %@ to owner: %@";
    v10 = v6;
    v11 = OS_LOG_TYPE_INFO;
    v12 = 32;
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v4);
  v14 = *MEMORY[0x277D85DE8];
}

- (void)pairingsWithCompletionHandler:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v11 = 138543362;
    v12 = v8;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Does not support user management", &v11, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  if (v4)
  {
    v9 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
    v4[2](v4, 0, v9);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)removeUser:(id)a3 completionHandler:(id)a4
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
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Does not support user management", &v14, 0xCu);
  }

  objc_autoreleasePoolPop(v8);
  if (v7)
  {
    v12 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
    v7[2](v7, v12);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)addUser:(id)a3 completionHandler:(id)a4
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
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Does not support user management", &v14, 0xCu);
  }

  objc_autoreleasePoolPop(v8);
  if (v7)
  {
    v12 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
    v7[2](v7, v12);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)createPairingIdentity
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = [(HMDAppleMediaAccessory *)self transactionWithObjectChangeType:2];
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
    v6 = objc_autoreleasePoolPush();
    v7 = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = HMFGetLogIdentifier();
      *buf = 138543362;
      v23 = v9;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@Creating pairing identity", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    v10 = [(HMDAppleMediaAccessory *)v7 currentAccessorySetupMetricDispatcher];
    [v10 markSetupBeginStage:6 error:0];

    v11 = [MEMORY[0x277D0F8A8] pairingIdentity];
    [(HMDAppleMediaAccessory *)v7 setLastCreatedPairingIdentity:v11];

    v12 = [(HMDAppleMediaAccessory *)v7 lastCreatedPairingIdentity];
    v13 = [v12 publicPairingIdentity];
    [v5 setPairingIdentity:v13];

    v14 = [(HMDAccessory *)v7 home];
    v15 = [v14 backingStore];
    v16 = +[HMDBackingStoreTransactionOptions defaultPreferencesOptions];
    v17 = [v15 transaction:@"Create Pairing Identity" options:v16];

    logger = v7->_logger;
    if (os_signpost_enabled(logger))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_2531F8000, logger, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "CreatePairingIdentity", "", buf, 2u);
    }

    [v17 add:v5];
    objc_initWeak(buf, v7);
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __47__HMDAppleMediaAccessory_createPairingIdentity__block_invoke;
    v20[3] = &unk_27972A040;
    objc_copyWeak(v21, buf);
    v21[1] = 0xEEEEB0B5B2B2EEEELL;
    [v17 run:v20];
    objc_destroyWeak(v21);
    objc_destroyWeak(buf);
  }

  v19 = *MEMORY[0x277D85DE8];
}

void __47__HMDAppleMediaAccessory_createPairingIdentity__block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained[66];
  v6 = v5;
  v7 = *(a1 + 40);
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    LOWORD(v14) = 0;
    _os_signpost_emit_with_name_impl(&dword_2531F8000, v6, OS_SIGNPOST_INTERVAL_END, v7, "CreatePairingIdentity", "", &v14, 2u);
  }

  v8 = objc_autoreleasePoolPush();
  v9 = WeakRetained;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v14 = 138543362;
    v15 = v11;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Saved pairing identity", &v14, 0xCu);
  }

  objc_autoreleasePoolPop(v8);
  v12 = [v9 currentAccessorySetupMetricDispatcher];
  [v12 markSetupEndStage:6 error:v3];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)setPairingIdentity:(id)a3
{
  v6 = a3;
  os_unfair_recursive_lock_lock_with_options();
  v4 = [v6 copy];
  pairingIdentity = self->_pairingIdentity;
  self->_pairingIdentity = v4;

  os_unfair_recursive_lock_unlock();
}

- (void)_handleTriggerPairingIdentityUpdateNotification:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [v4 respondWithSuccess];
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v10 = 138543618;
    v11 = v8;
    v12 = 2112;
    v13 = v6;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Will trigger notification for updated pairing identity for accessory: %@ with message HMAccessoryPairingIdentityUpdatedNotification", &v10, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  [(HMDAppleMediaAccessory *)v6 notifyFrameworkOfUpdatedPairingIdentity];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)notifyFrameworkOfUpdatedPairingIdentity
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D0F848];
  v4 = *MEMORY[0x277CCEC38];
  v5 = objc_alloc(MEMORY[0x277D0F820]);
  v6 = [(HMDAccessory *)self uuid];
  v7 = [v5 initWithTarget:v6];
  v8 = [v3 messageWithName:v4 destination:v7 payload:MEMORY[0x277CBEC10]];

  v9 = objc_autoreleasePoolPush();
  v10 = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    v15 = 138543362;
    v16 = v12;
    _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Notifying clients of updated accessory pairing identity", &v15, 0xCu);
  }

  objc_autoreleasePoolPop(v9);
  v13 = [(HMDAccessory *)v10 msgDispatcher];
  [v13 sendMessage:v8];

  v14 = *MEMORY[0x277D85DE8];
}

- (HMFPairingIdentity)pairingIdentity
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = self->_pairingIdentity;
  os_unfair_recursive_lock_unlock();

  return v3;
}

- (void)_handleUpdatedName:(id)a3
{
  v3.receiver = self;
  v3.super_class = HMDAppleMediaAccessory;
  [(HMDAccessory *)&v3 _handleUpdatedName:a3];
}

- (id)runtimeState
{
  v12[1] = *MEMORY[0x277D85DE8];
  v10.receiver = self;
  v10.super_class = HMDAppleMediaAccessory;
  v3 = [(HMDAccessory *)&v10 runtimeState];
  v4 = [v3 mutableCopy];

  v11 = *MEMORY[0x277CCE9E0];
  v5 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDAppleMediaAccessory isDeviceReachable](self, "isDeviceReachable")}];
  v12[0] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  [v4 addEntriesFromDictionary:v6];

  v7 = [v4 copy];
  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (int64_t)reachableTransports
{
  v5.receiver = self;
  v5.super_class = HMDAppleMediaAccessory;
  v3 = [(HMDMediaAccessory *)&v5 reachableTransports];
  if ([(HMDAccessory *)self isReachable])
  {
    v3 |= 0x10uLL;
  }

  if ([(HMDAppleMediaAccessory *)self isRemotelyReachable])
  {
    return v3 | 8;
  }

  else
  {
    return v3;
  }
}

- (void)setRemotelyReachable:(BOOL)a3
{
  v3 = a3;
  os_unfair_recursive_lock_lock_with_options();
  if (self->super.super._remotelyReachable != v3)
  {
    self->super.super._remotelyReachable = v3;
  }

  os_unfair_recursive_lock_unlock();
}

- (BOOL)isRemotelyReachable
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = self->_deviceReachable || self->super.super._remotelyReachable;
  os_unfair_recursive_lock_unlock();
  return v3;
}

- (void)removeAdvertisement:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = HMFGetLogIdentifier();
    v10 = 138543618;
    v11 = v8;
    v12 = 2112;
    v13 = v4;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@Ignoring removed advertisement: %@", &v10, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = *MEMORY[0x277D85DE8];
}

- (void)addAdvertisement:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = HMFGetLogIdentifier();
    v10 = 138543618;
    v11 = v8;
    v12 = 2112;
    v13 = v4;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@Ignoring added advertisement: %@", &v10, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = *MEMORY[0x277D85DE8];
}

- (void)handleDeviceIsNotReachable:(id)a3
{
  v4 = [a3 object];
  v5 = [(HMDAppleMediaAccessory *)self device];
  v6 = [v4 isEqual:v5];

  if (v6)
  {
    v7 = [(HMDAccessory *)self workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __53__HMDAppleMediaAccessory_handleDeviceIsNotReachable___block_invoke;
    block[3] = &unk_279735D00;
    block[4] = self;
    dispatch_async(v7, block);
  }
}

uint64_t __53__HMDAppleMediaAccessory_handleDeviceIsNotReachable___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = HMFGetLogIdentifier();
    v8 = 138543362;
    v9 = v5;
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@Received notification device is no longer reachable", &v8, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  result = [*(a1 + 32) setDeviceReachable:0];
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)handleDeviceIsReachable:(id)a3
{
  v4 = [a3 object];
  v5 = [(HMDAppleMediaAccessory *)self device];
  v6 = [v4 isEqual:v5];

  if (v6)
  {
    v7 = [(HMDAccessory *)self workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __50__HMDAppleMediaAccessory_handleDeviceIsReachable___block_invoke;
    block[3] = &unk_279735D00;
    block[4] = self;
    dispatch_async(v7, block);
  }
}

uint64_t __50__HMDAppleMediaAccessory_handleDeviceIsReachable___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = HMFGetLogIdentifier();
    v8 = 138543362;
    v9 = v5;
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@Received notification device is reachable", &v8, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  result = [*(a1 + 32) setDeviceReachable:1];
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)startMonitoringReachability
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = [(HMDMediaAccessory *)self notificationCenter];
  [v3 removeObserver:self name:@"HMDRemoteDeviceIsReachableNotification" object:0];

  v4 = [(HMDMediaAccessory *)self notificationCenter];
  [v4 removeObserver:self name:@"HMDRemoteDeviceIsNotReachableNotification" object:0];

  v5 = [(HMDAppleMediaAccessory *)self device];
  if (v5)
  {
    v6 = [(HMDMediaAccessory *)self notificationCenter];
    [v6 addObserver:self selector:sel_handleDeviceIsReachable_ name:@"HMDRemoteDeviceIsReachableNotification" object:0];

    v7 = [(HMDMediaAccessory *)self notificationCenter];
    [v7 addObserver:self selector:sel_handleDeviceIsNotReachable_ name:@"HMDRemoteDeviceIsNotReachableNotification" object:0];

    v8 = [(HMDAppleMediaAccessory *)self deviceMonitor];
    v9 = [v8 unreachableDevices];
    v10 = [v9 containsObject:v5];

    [(HMDAppleMediaAccessory *)self setDeviceReachable:v10 ^ 1u];
    v11 = [(HMDAppleMediaAccessory *)self deviceMonitor];
    [v11 startMonitoringDevice:v5 withInitialReachability:0 forClient:self];
  }

  v12 = [(HMDAppleMediaAccessory *)self device];
  v13 = v12;
  if (v12 && ([v12 isCurrentDevice] & 1) == 0)
  {
    v14 = objc_autoreleasePoolPush();
    v15 = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = HMFGetLogIdentifier();
      v20 = 138543362;
      v21 = v17;
      _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_INFO, "%{public}@Enabling notifications for media properties directly on the device", &v20, 0xCu);
    }

    objc_autoreleasePoolPop(v14);
    v18 = [(HMDAccessory *)v15 home];
    [v18 enableHomeNotificationsForMediaAccessory:v15];
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (id)deviceMonitor
{
  v2 = [(HMDAccessory *)self home];
  v3 = [v2 homeManager];
  v4 = [v3 messageDispatcher];
  v5 = [v4 secureRemoteTransport];
  v6 = [v5 deviceMonitor];

  return v6;
}

- (void)notifyClientsOfUpdatedAccessoryControllableValue:(BOOL)a3
{
  v3 = a3;
  v11[1] = *MEMORY[0x277D85DE8];
  v9.receiver = self;
  v9.super_class = HMDAppleMediaAccessory;
  [(HMDAccessory *)&v9 notifyClientsOfUpdatedAccessoryControllableValue:?];
  if (v3)
  {
    v5 = [(HMDMediaAccessory *)self notificationCenter];
    v6 = [(HMDAppleMediaAccessory *)self device];
    v10 = @"HMDAccessoryNotificationKey";
    v11[0] = self;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    [v5 postNotificationName:@"HMDAppleMediaAccessoryDeviceIsReachableNotification" object:v6 userInfo:v7];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (BOOL)isDeviceReachable
{
  os_unfair_recursive_lock_lock_with_options();
  deviceReachable = self->_deviceReachable;
  os_unfair_recursive_lock_unlock();
  return deviceReachable;
}

- (void)updateReachabilityFromDevicePublishingState
{
  v16 = *MEMORY[0x277D85DE8];
  if ([(HMDAppleMediaAccessory *)self isCurrentAccessory])
  {
    v3 = objc_autoreleasePoolPush();
    v4 = self;
    v5 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = HMFGetLogIdentifier();
      v14 = 138543362;
      v15 = v6;
      _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_DEBUG, "%{public}@Updating reachability to YES as this is the current device", &v14, 0xCu);
    }

    objc_autoreleasePoolPop(v3);
    [(HMDAccessory *)v4 setReachable:1];
  }

  else
  {
    v7 = [(HMDAppleMediaAccessory *)self device];
    v8 = v7;
    if (v7)
    {
      -[HMDAccessory setReachable:](self, "setReachable:", [v7 isPublishingOnObservedNetService]);
    }

    else
    {
      v9 = objc_autoreleasePoolPush();
      v10 = self;
      v11 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = HMFGetLogIdentifier();
        v14 = 138543362;
        v15 = v12;
        _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Not updating reachability from publishing state as device is nil", &v14, 0xCu);
      }

      objc_autoreleasePoolPop(v9);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)registerForPublishingNotifications
{
  v3 = [(HMDMediaAccessory *)self notificationCenter];
  [v3 removeObserver:self name:@"HMDDeviceIsPublishingChangedNotification" object:0];

  v4 = [(HMDAppleMediaAccessory *)self device];

  if (v4)
  {
    v5 = [(HMDMediaAccessory *)self notificationCenter];
    v6 = [(HMDAppleMediaAccessory *)self device];
    [v5 addObserver:self selector:sel_handleDeviceIsPublishingChangedNotification_ name:@"HMDDeviceIsPublishingChangedNotification" object:v6];
  }

  [(HMDAppleMediaAccessory *)self updateReachabilityFromDevicePublishingState];
}

- (void)handleDeviceIsPublishingChangedNotification:(id)a3
{
  v4 = a3;
  v5 = [(HMDAccessory *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __70__HMDAppleMediaAccessory_handleDeviceIsPublishingChangedNotification___block_invoke;
  v7[3] = &unk_2797359B0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

uint64_t __70__HMDAppleMediaAccessory_handleDeviceIsPublishingChangedNotification___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 40);
    v7 = [v6 userInfo];
    v10 = 138543874;
    v11 = v5;
    v12 = 2112;
    v13 = v6;
    v14 = 2112;
    v15 = v7;
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, "%{public}@Received device is publishing notification %@, user info: %@", &v10, 0x20u);
  }

  objc_autoreleasePoolPop(v2);
  result = [*(a1 + 32) updateReachabilityFromDevicePublishingState];
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_installManagedConfigurationProfileWithData:(id)a3 completion:(id)a4
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
    v21 = 138543362;
    v22 = v11;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Installing managed configuration profile", &v21, 0xCu);
  }

  objc_autoreleasePoolPop(v8);
  v12 = objc_autoreleasePoolPush();
  v13 = v9;
  v14 = HMFGetOSLogHandle();
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);
  if (v6)
  {
    if (v15)
    {
      v16 = HMFGetLogIdentifier();
      v21 = 138543362;
      v22 = v16;
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_ERROR, "%{public}@Managed Configuration Profile is not supported", &v21, 0xCu);
    }

    objc_autoreleasePoolPop(v12);
    if (v7)
    {
      v17 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
LABEL_12:
      v19 = v17;
      v7[2](v7, 0, v17);
    }
  }

  else
  {
    if (v15)
    {
      v18 = HMFGetLogIdentifier();
      v21 = 138543362;
      v22 = v18;
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_ERROR, "%{public}@Passed nil managed configuration profile data", &v21, 0xCu);
    }

    objc_autoreleasePoolPop(v12);
    if (v7)
    {
      v17 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:3];
      goto LABEL_12;
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)_removeManagedConfigurationProfileWithIdentifier:(id)a3 completion:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v21 = 138543618;
    v22 = v11;
    v23 = 2112;
    v24 = v6;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Removing managed configuration profile: %@", &v21, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  v12 = objc_autoreleasePoolPush();
  v13 = v9;
  v14 = HMFGetOSLogHandle();
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);
  if (v6)
  {
    if (v15)
    {
      v16 = HMFGetLogIdentifier();
      v21 = 138543362;
      v22 = v16;
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_ERROR, "%{public}@Managed Configuration Profile is not supported", &v21, 0xCu);
    }

    objc_autoreleasePoolPop(v12);
    if (v7)
    {
      v17 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
LABEL_12:
      v19 = v17;
      v7[2](v7, v17);
    }
  }

  else
  {
    if (v15)
    {
      v18 = HMFGetLogIdentifier();
      v21 = 138543362;
      v22 = v18;
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_ERROR, "%{public}@Nil managed configuration profile identifier", &v21, 0xCu);
    }

    objc_autoreleasePoolPop(v12);
    if (v7)
    {
      v17 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:3];
      goto LABEL_12;
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)handleInstallManagedConfigurationProfile:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543362;
    v25 = v8;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Received install managed configuration profile request", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  if ([(HMDAppleMediaAccessory *)v6 isCurrentAccessory])
  {
    v9 = [v4 dataForKey:*MEMORY[0x277CCEB58]];
    if (v9)
    {
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __67__HMDAppleMediaAccessory_handleInstallManagedConfigurationProfile___block_invoke_433;
      v20[3] = &unk_27972EEB0;
      v21 = v4;
      [(HMDAppleMediaAccessory *)v6 _installManagedConfigurationProfileWithData:v9 completion:v20];
      v10 = v21;
    }

    else
    {
      v15 = objc_autoreleasePoolPush();
      v16 = v6;
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = HMFGetLogIdentifier();
        *buf = 138543362;
        v25 = v18;
        _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_ERROR, "%{public}@No profile data", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v15);
      v10 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
      [v4 respondWithError:v10];
    }
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    v12 = v6;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543362;
      v25 = v14;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@Relaying remove managed configuration profile request", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v11);
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __67__HMDAppleMediaAccessory_handleInstallManagedConfigurationProfile___block_invoke;
    v22[3] = &unk_279733FB0;
    v22[4] = v12;
    v23 = v4;
    [(HMDAppleMediaAccessory *)v12 _relayRequestMessage:v23 responseHandler:v22];
  }

  v19 = *MEMORY[0x277D85DE8];
}

void __67__HMDAppleMediaAccessory_handleInstallManagedConfigurationProfile___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  v10 = v9;
  if (v5)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v14 = 138543618;
      v15 = v11;
      v16 = 2112;
      v17 = v5;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_ERROR, "%{public}@Remove managed configuration profile responded with error: %@", &v14, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    [*(a1 + 40) respondWithError:v5];
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v14 = 138543362;
      v15 = v12;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Remove managed configuration profile responded", &v14, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
    [*(a1 + 40) respondWithPayload:v6];
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __67__HMDAppleMediaAccessory_handleInstallManagedConfigurationProfile___block_invoke_433(uint64_t a1, void *a2, uint64_t a3)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  if (a3)
  {
    v5 = a2;
    [v3 respondWithError:a3];
  }

  else
  {
    v9 = *MEMORY[0x277CCEB50];
    v10[0] = a2;
    v6 = MEMORY[0x277CBEAC0];
    v7 = a2;
    v5 = [v6 dictionaryWithObjects:v10 forKeys:&v9 count:1];
    [v3 respondWithPayload:v5];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)handleRemoveManagedConfigurationProfile:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543362;
    v25 = v8;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Received remove managed configuration profile request", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  if ([(HMDAppleMediaAccessory *)v6 isCurrentAccessory])
  {
    v9 = [v4 stringForKey:*MEMORY[0x277CCEB50]];
    if (v9)
    {
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __66__HMDAppleMediaAccessory_handleRemoveManagedConfigurationProfile___block_invoke_432;
      v20[3] = &unk_2797359D8;
      v21 = v4;
      [(HMDAppleMediaAccessory *)v6 _removeManagedConfigurationProfileWithIdentifier:v9 completion:v20];
      v10 = v21;
    }

    else
    {
      v15 = objc_autoreleasePoolPush();
      v16 = v6;
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = HMFGetLogIdentifier();
        *buf = 138543362;
        v25 = v18;
        _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_ERROR, "%{public}@Nil identifier", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v15);
      v10 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
      [v4 respondWithError:v10];
    }
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    v12 = v6;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543362;
      v25 = v14;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@Relaying remove managed configuration profile request", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v11);
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __66__HMDAppleMediaAccessory_handleRemoveManagedConfigurationProfile___block_invoke;
    v22[3] = &unk_279733FB0;
    v22[4] = v12;
    v23 = v4;
    [(HMDAppleMediaAccessory *)v12 _relayRequestMessage:v23 responseHandler:v22];
  }

  v19 = *MEMORY[0x277D85DE8];
}

void __66__HMDAppleMediaAccessory_handleRemoveManagedConfigurationProfile___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  v10 = v9;
  if (v5)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v14 = 138543618;
      v15 = v11;
      v16 = 2112;
      v17 = v5;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_ERROR, "%{public}@Remove managed configuration profile responded with error: %@", &v14, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    [*(a1 + 40) respondWithError:v5];
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v14 = 138543362;
      v15 = v12;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Remove managed configuration profile responded", &v14, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
    [*(a1 + 40) respondWithPayload:v6];
  }

  v13 = *MEMORY[0x277D85DE8];
}

uint64_t __66__HMDAppleMediaAccessory_handleRemoveManagedConfigurationProfile___block_invoke_432(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    return [v2 respondWithError:a2];
  }

  else
  {
    return [v2 respondWithSuccess];
  }
}

- (void)handleFetchManagedConfigurationProfiles:(id)a3
{
  v64 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543362;
    v59 = v8;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Received fetch managed configuration profiles request", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [(HMDAppleMediaAccessory *)v6 isCurrentAccessory];
  v10 = objc_autoreleasePoolPush();
  v11 = v6;
  v12 = HMFGetOSLogHandle();
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_INFO);
  if (v9)
  {
    if (v13)
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543362;
      v59 = v14;
      _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@Handling fetch managed configuration profiles request", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v10);
    v15 = [getMCProfileConnectionClass() sharedConnection];
    if (v15)
    {
      v47 = v4;
      v16 = [getMCProfileConnectionClass() sharedConnection];
      v17 = [v16 installedProfileIdentifiers];

      v18 = objc_autoreleasePoolPush();
      v19 = v11;
      v20 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v21 = HMFGetLogIdentifier();
        v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v17, "count")}];
        *buf = 138543874;
        v59 = v21;
        v60 = 2112;
        v61 = v22;
        v62 = 2112;
        v63 = v17;
        _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_INFO, "%{public}@Fetched profile identifiers: %@, %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v18);
      v23 = [MEMORY[0x277CBEB18] array];
      v49 = 0u;
      v50 = 0u;
      v51 = 0u;
      v52 = 0u;
      v24 = v17;
      v25 = [v24 countByEnumeratingWithState:&v49 objects:v57 count:16];
      if (v25)
      {
        v26 = v25;
        v27 = *v50;
        do
        {
          for (i = 0; i != v26; ++i)
          {
            if (*v50 != v27)
            {
              objc_enumerationMutation(v24);
            }

            v29 = *(*(&v49 + 1) + 8 * i);
            v30 = [v15 installedProfileDataWithIdentifier:{v29, v47}];
            v31 = [objc_alloc(MEMORY[0x277CD1B60]) initWithIdentifier:v29 profileData:v30];
            [v23 addObject:v31];
          }

          v26 = [v24 countByEnumeratingWithState:&v49 objects:v57 count:16];
        }

        while (v26);
      }

      v32 = MEMORY[0x277CCAAB0];
      v33 = [v23 copy];
      v48 = 0;
      v34 = [v32 archivedDataWithRootObject:v33 requiringSecureCoding:1 error:&v48];
      v35 = v48;

      if (v34)
      {
        v55 = *MEMORY[0x277CCEB60];
        v56 = v34;
        v36 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v56 forKeys:&v55 count:1];
        v4 = v47;
        [v47 respondWithPayload:v36];
      }

      else
      {
        v42 = objc_autoreleasePoolPush();
        v43 = v19;
        v44 = HMFGetOSLogHandle();
        v4 = v47;
        if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
        {
          v45 = HMFGetLogIdentifier();
          *buf = 138543874;
          v59 = v45;
          v60 = 2112;
          v61 = v23;
          v62 = 2112;
          v63 = v35;
          _os_log_impl(&dword_2531F8000, v44, OS_LOG_TYPE_ERROR, "%{public}@Failed to encode profiles %@:%@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v42);
        v36 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
        [v47 respondWithError:v36];
      }
    }

    else
    {
      v38 = objc_autoreleasePoolPush();
      v39 = v11;
      v40 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        v41 = HMFGetLogIdentifier();
        *buf = 138543362;
        v59 = v41;
        _os_log_impl(&dword_2531F8000, v40, OS_LOG_TYPE_ERROR, "%{public}@Failed to link profile connection", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v38);
      v24 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:14];
      [v4 respondWithError:v24];
    }
  }

  else
  {
    if (v13)
    {
      v37 = HMFGetLogIdentifier();
      *buf = 138543362;
      v59 = v37;
      _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@Relaying fetch managed configuration profiles request", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v10);
    v53[0] = MEMORY[0x277D85DD0];
    v53[1] = 3221225472;
    v53[2] = __66__HMDAppleMediaAccessory_handleFetchManagedConfigurationProfiles___block_invoke;
    v53[3] = &unk_279733FB0;
    v53[4] = v11;
    v54 = v4;
    [(HMDAppleMediaAccessory *)v11 _relayRequestMessage:v54 responseHandler:v53];
  }

  v46 = *MEMORY[0x277D85DE8];
}

void __66__HMDAppleMediaAccessory_handleFetchManagedConfigurationProfiles___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  v10 = v9;
  if (v5)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v14 = 138543618;
      v15 = v11;
      v16 = 2112;
      v17 = v5;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_ERROR, "%{public}@Fetch managed configuration profiles responded with error: %@", &v14, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    [*(a1 + 40) respondWithError:v5];
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v14 = 138543362;
      v15 = v12;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Fetch managed configuration profiles responded", &v14, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
    [*(a1 + 40) respondWithPayload:v6];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)handleCurrentDeviceUpdated:(id)a3
{
  v4 = [a3 object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v9 = v5;

  v6 = v9;
  if (v9)
  {
    v7 = [(HMDAppleMediaAccessory *)self device];
    if (v9 == v7)
    {
    }

    else
    {
      v8 = [(HMDAppleMediaAccessory *)self shouldUpdateWithDevice:v9 initialConfiguration:0];

      v6 = v9;
      if (!v8)
      {
        goto LABEL_10;
      }
    }

    [(HMDAppleMediaAccessory *)self updateWithDevice:v9];
    v6 = v9;
  }

LABEL_10:
}

- (BOOL)shouldUpdateWithDevice:(id)a3 initialConfiguration:(BOOL)a4
{
  v4 = a4;
  v47 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(HMDAppleMediaAccessory *)self device];
  if (v7 == v6 && !v4 || !HMFEqualObjects())
  {
    goto LABEL_26;
  }

  v8 = [v6 productInfo];

  if (v8)
  {
    v9 = [v6 productInfo];
    v10 = [v7 productInfo];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
LABEL_26:
      v34 = 1;
      goto LABEL_27;
    }

    v12 = [(HMDAccessory *)self manufacturer];
    if (!v12)
    {
      goto LABEL_22;
    }

    v13 = v12;
    v14 = [(HMDAccessory *)self model];
    if (v14)
    {
      v15 = v14;
      v16 = [(HMDAccessory *)self serialNumber];
      if (v16)
      {
        v17 = v16;
        v18 = [(HMDAccessory *)self firmwareVersion];

        if (v18)
        {
          goto LABEL_10;
        }

LABEL_22:
        v35 = objc_autoreleasePoolPush();
        v41 = self;
        v37 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
        {
          v38 = HMFGetLogIdentifier();
          v45 = 138543362;
          v46 = v38;
          v39 = "%{public}@Force updating product information";
          goto LABEL_24;
        }

        goto LABEL_25;
      }
    }

    goto LABEL_22;
  }

LABEL_10:
  v19 = [(HMDAccessory *)self category];
  if (!v19)
  {
    goto LABEL_16;
  }

  v20 = v19;
  v21 = [(HMDAccessory *)self category];
  v22 = MEMORY[0x277CD1680];
  v23 = [v6 productInfo];
  v24 = [v22 categoryForProductInfo:v23];
  v25 = [v21 isEqual:v24];

  if ((v25 & 1) == 0)
  {
LABEL_16:
    v35 = objc_autoreleasePoolPush();
    v36 = self;
    v37 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
    {
      v38 = HMFGetLogIdentifier();
      v45 = 138543362;
      v46 = v38;
      v39 = "%{public}@Force updating category";
LABEL_24:
      _os_log_impl(&dword_2531F8000, v37, OS_LOG_TYPE_INFO, v39, &v45, 0xCu);
    }

LABEL_25:

    objc_autoreleasePoolPop(v35);
    goto LABEL_26;
  }

  v26 = [v6 capabilities];
  v27 = [v7 capabilities];
  v28 = [v26 isEqual:v27];

  if ((v28 & 1) == 0)
  {
    v35 = objc_autoreleasePoolPush();
    v40 = self;
    v37 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
    {
      v38 = HMFGetLogIdentifier();
      v45 = 138543362;
      v46 = v38;
      v39 = "%{public}@Force updating capabilities";
      goto LABEL_24;
    }

    goto LABEL_25;
  }

  v29 = [v6 rpIdentity];
  if (v29)
  {
    v30 = v29;
    v31 = [v6 rpIdentity];
    v32 = [v7 rpIdentity];
    v33 = [v31 isEqual:v32];

    if ((v33 & 1) == 0)
    {
      v35 = objc_autoreleasePoolPush();
      v44 = self;
      v37 = HMFGetOSLogHandle();
      if (!os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
      {
        goto LABEL_25;
      }

      v38 = HMFGetLogIdentifier();
      v45 = 138543362;
      v46 = v38;
      v39 = "%{public}@Force updating rapport identity";
      goto LABEL_24;
    }
  }

  v34 = 0;
LABEL_27:

  v42 = *MEMORY[0x277D85DE8];
  return v34;
}

- (void)updateWithDevice:(id)a3
{
  v48 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      v44 = 138543618;
      v45 = v8;
      v46 = 2112;
      v47 = v4;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Updating with device: %@", &v44, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    v9 = [(HMDAppleMediaAccessory *)v6 transactionWithObjectChangeType:2];
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

    if (v11)
    {
      v12 = [v4 identifier];
      v13 = [v12 UUIDString];
      [v11 setDeviceUUID:v13];

      [v11 setDevice:v4];
      v14 = MEMORY[0x277CD1680];
      v15 = [v4 productInfo];
      v16 = [v14 categoryForProductInfo:v15];

      if (v16)
      {
        v17 = [(HMDAccessory *)v6 category];
        v18 = HMFEqualObjects();

        if ((v18 & 1) == 0)
        {
          v19 = [MEMORY[0x277CD1680] categoryIdentifierForCategory:v16];
          [v11 setAccessoryCategory:v19];
        }
      }

      v20 = [(HMDAccessory *)v6 manufacturer];
      v21 = HMFEqualObjects();

      if ((v21 & 1) == 0)
      {
        [v11 setManufacturer:@"Apple Inc."];
      }

      v22 = [MEMORY[0x277D0F910] systemInfo];
      v23 = [v22 model];
      v24 = [v23 mutableCopy];

      if (v24)
      {
        v25 = [MEMORY[0x277D0F910] systemInfo];
        v26 = [v25 regionInfo];

        if (v26)
        {
          [v24 appendString:v26];
        }

        v27 = [(HMDAccessory *)v6 model];
        v28 = [v24 isEqual:v27];

        if ((v28 & 1) == 0)
        {
          [v11 setModel:v24];
        }
      }

      v29 = [MEMORY[0x277D0F910] systemInfo];
      v30 = [v29 serialNumber];

      if (v30)
      {
        v31 = [(HMDAccessory *)v6 serialNumber];
        v32 = [v30 isEqual:v31];

        if ((v32 & 1) == 0)
        {
          [v11 setSerialNumber:v30];
        }
      }

      v33 = [v4 productInfo];
      v34 = v33;
      if (v33)
      {
        v35 = [v33 softwareVersion];
        if (v35)
        {
          v36 = [(HMDAccessory *)v6 firmwareVersion];
          v37 = [v35 isEqual:v36];

          if ((v37 & 1) == 0)
          {
            v38 = [v35 versionString];
            [v11 setFirmwareVersion:v38];
          }
        }
      }

      v39 = [(HMDAccessory *)v6 home];
      v40 = [v39 backingStore];
      v41 = +[HMDBackingStoreTransactionOptions defaultPreferencesOptions];
      v42 = [v40 transaction:@"updateWithDevice" options:v41];

      [v42 add:v11 withMessage:0];
      [v42 run];
    }
  }

  v43 = *MEMORY[0x277D85DE8];
}

- (void)setDeviceController:(id)a3
{
  v4 = a3;
  os_unfair_recursive_lock_lock_with_options();
  deviceController = self->_deviceController;
  self->_deviceController = v4;

  os_unfair_recursive_lock_unlock();
}

- (HMDMessageRouter)messageRouter
{
  v2 = [(HMDAppleMediaAccessory *)self messenger];
  v3 = [v2 router];

  return v3;
}

- (HMDDevice)device
{
  v2 = __HMDAppleMediaAccessoryGetDeviceController(self);
  v3 = [v2 device];

  return v3;
}

- (BOOL)supportsCrossfadeAsAirPlaySource
{
  v2 = [(HMDAppleMediaAccessory *)self capabilities];
  v3 = [v2 supportsCrossfadeAsAirPlaySource];

  return v3;
}

- (BOOL)supportsNetworkDiagnostics
{
  v2 = [(HMDAppleMediaAccessory *)self capabilities];
  v3 = [v2 supportsNetworkDiagnostics];

  return v3;
}

- (BOOL)supportsStereoOdeonTTSUBypassingPrimary
{
  v2 = [(HMDAppleMediaAccessory *)self capabilities];
  v3 = [v2 supportsStereoOdeonTTSUBypassingPrimary];

  return v3;
}

- (BOOL)supportsWiFiRepairV2
{
  v2 = [(HMDAppleMediaAccessory *)self capabilities];
  v3 = [v2 supportsWiFiRepairV2];

  return v3;
}

- (BOOL)supportsJustSiri
{
  if ([(HMDAppleMediaAccessory *)self isCurrentAccessory])
  {
    +[HMDDeviceCapabilities deviceCapabilities];
  }

  else
  {
    [(HMDAppleMediaAccessory *)self capabilities];
  }
  v3 = ;
  v4 = [v3 supportsJustSiri];

  return v4;
}

- (BOOL)supportsRMVonAppleTV
{
  if ([(HMDAppleMediaAccessory *)self isCurrentAccessory])
  {
    v3 = +[HMDDeviceCapabilities deviceCapabilities];
    v4 = [v3 supportsRMVonAppleTV];

    if ((v4 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v6 = [(HMDAppleMediaAccessory *)self capabilities];
    v7 = [v6 supportsRMVonAppleTV];

    if (!v7)
    {
      return 0;
    }
  }

  return _os_feature_enabled_impl();
}

- (BOOL)supportsMessagedHomePodSettings
{
  v2 = [(HMDAppleMediaAccessory *)self capabilities];
  if ([v2 supportsMessagedHomePodSettings])
  {
    v3 = _os_feature_enabled_impl();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)supportsMediaContentProfile
{
  v3 = [(HMDAccessory *)self category];
  v4 = [v3 categoryType];
  v5 = *MEMORY[0x277CCE870];
  v6 = HMFEqualObjects();

  v7 = [(HMDAppleMediaAccessory *)self capabilities];
  LOBYTE(v3) = [v7 supportsLoreto];

  return (v3 ^ 1) & v6;
}

- (BOOL)supportsManagedConfigurationProfile
{
  v2 = [(HMDAppleMediaAccessory *)self capabilities];
  v3 = [v2 supportsManagedConfigurationProfile];

  return v3;
}

- (BOOL)supportsMediaActions
{
  if ([(HMDAppleMediaAccessory *)self isCurrentAccessory])
  {
    +[HMDDeviceCapabilities deviceCapabilities];
  }

  else
  {
    [(HMDAppleMediaAccessory *)self capabilities];
  }
  v3 = ;
  v4 = [v3 supportsMediaActions];

  return v4;
}

- (BOOL)supportsAnnounce
{
  if ([(HMDAppleMediaAccessory *)self isCurrentAccessory])
  {
    +[HMDDeviceCapabilities deviceCapabilities];
  }

  else
  {
    [(HMDAppleMediaAccessory *)self capabilities];
  }
  v3 = ;
  v4 = [v3 supportsAnnounce];

  return v4;
}

- (BOOL)supportsTVOSUpdateManualUpdateAvailableNotification
{
  v4 = [(HMDAppleMediaAccessory *)self isCurrentAccessory];
  if (v4)
  {
    v2 = +[HMDDeviceCapabilities deviceCapabilities];
    if ([v2 supportsTVOSUpdateManualUpdateAvailableNotification])
    {
      v5 = 1;
LABEL_5:

      return v5;
    }
  }

  v6 = [(HMDAppleMediaAccessory *)self capabilities];
  v5 = [v6 supportsTVOSUpdateManualUpdateAvailableNotification];

  if (v4)
  {
    goto LABEL_5;
  }

  return v5;
}

- (BOOL)supportsCoordinationFreeDoorbellChime
{
  v4 = [(HMDAppleMediaAccessory *)self isCurrentAccessory];
  if (v4)
  {
    v2 = +[HMDDeviceCapabilities deviceCapabilities];
    if ([v2 supportsCoordinationFreeDoorbellChime])
    {
      v5 = 1;
LABEL_5:

      return v5;
    }
  }

  v6 = [(HMDAppleMediaAccessory *)self capabilities];
  v5 = [v6 supportsCoordinationFreeDoorbellChime];

  if (v4)
  {
    goto LABEL_5;
  }

  return v5;
}

- (BOOL)supportsCoordinationDoorbellChime
{
  v4 = [(HMDAppleMediaAccessory *)self isCurrentAccessory];
  if (v4)
  {
    v2 = +[HMDDeviceCapabilities deviceCapabilities];
    if ([v2 supportsCoordinationDoorbellChime])
    {
      v5 = 1;
LABEL_5:

      return v5;
    }
  }

  v6 = [(HMDAppleMediaAccessory *)self capabilities];
  v5 = [v6 supportsCoordinationDoorbellChime];

  if (v4)
  {
    goto LABEL_5;
  }

  return v5;
}

- (BOOL)supportsUserMediaSettings
{
  v4 = [(HMDAppleMediaAccessory *)self isCurrentAccessory];
  if (v4)
  {
    v2 = +[HMDDeviceCapabilities deviceCapabilities];
    if ([v2 supportsUserMediaSettings])
    {
      v5 = 1;
LABEL_5:

      return v5;
    }
  }

  v6 = [(HMDAppleMediaAccessory *)self capabilities];
  v5 = [v6 supportsUserMediaSettings];

  if (v4)
  {
    goto LABEL_5;
  }

  return v5;
}

- (BOOL)supportsDoorbellChime
{
  v4 = [(HMDAppleMediaAccessory *)self isCurrentAccessory];
  if (v4)
  {
    v2 = +[HMDDeviceCapabilities deviceCapabilities];
    if ([v2 supportsDoorbellChime])
    {
      v5 = 1;
LABEL_5:

      return v5;
    }
  }

  v6 = [(HMDAppleMediaAccessory *)self capabilities];
  v5 = [v6 supportsDoorbellChime];

  if (v4)
  {
    goto LABEL_5;
  }

  return v5;
}

- (BOOL)supportsPreferredMediaUser
{
  if ([(HMDAppleMediaAccessory *)self isCurrentAccessory])
  {
    +[HMDDeviceCapabilities deviceCapabilities];
  }

  else
  {
    [(HMDAppleMediaAccessory *)self capabilities];
  }
  v3 = ;
  v4 = [v3 supportsPreferredMediaUser];

  return v4;
}

- (BOOL)supportsThirdPartyMusic
{
  v4 = [(HMDAppleMediaAccessory *)self isCurrentAccessory];
  if (v4)
  {
    v2 = +[HMDDeviceCapabilities deviceCapabilities];
    if ([v2 supportsThirdPartyMusic])
    {
      v5 = 1;
LABEL_5:

      return v5;
    }
  }

  v6 = [(HMDAppleMediaAccessory *)self capabilities];
  v5 = [v6 supportsThirdPartyMusic];

  if (v4)
  {
    goto LABEL_5;
  }

  return v5;
}

- (BOOL)supportsMusicAlarm
{
  if ([(HMDAppleMediaAccessory *)self isCurrentAccessory])
  {
    +[HMDDeviceCapabilities deviceCapabilities];
  }

  else
  {
    [(HMDAppleMediaAccessory *)self capabilities];
  }
  v3 = ;
  v4 = [v3 supportsMusicAlarm];

  return v4;
}

- (BOOL)supportsCompanionInitiatedObliterate
{
  if ([(HMDAppleMediaAccessory *)self isCurrentAccessory])
  {
    +[HMDDeviceCapabilities deviceCapabilities];
  }

  else
  {
    [(HMDAppleMediaAccessory *)self capabilities];
  }
  v3 = ;
  v4 = [v3 supportsCompanionInitiatedObliterate];

  return v4;
}

- (BOOL)supportsCompanionInitiatedRestart
{
  if ([(HMDAppleMediaAccessory *)self isCurrentAccessory])
  {
    +[HMDDeviceCapabilities deviceCapabilities];
  }

  else
  {
    [(HMDAppleMediaAccessory *)self capabilities];
  }
  v3 = ;
  v4 = [v3 supportsCompanionInitiatedRestart];

  return v4;
}

- (BOOL)supportsAudioReturnChannel
{
  if ([(HMDAppleMediaAccessory *)self isCurrentAccessory])
  {
    +[HMDDeviceCapabilities deviceCapabilities];
  }

  else
  {
    [(HMDAppleMediaAccessory *)self capabilities];
  }
  v3 = ;
  v4 = [v3 supportsAudioReturnChannel];

  return v4;
}

- (BOOL)legacyLocationServicesEnabled
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = [(HMDAppleMediaAccessory *)self settingsController];
  v4 = [v3 rootGroup];
  v5 = [v4 groups];
  v6 = [v5 na_firstObjectPassingTest:&__block_literal_global_411];
  v7 = [v6 settings];
  v8 = [v7 na_firstObjectPassingTest:&__block_literal_global_416_94715];

  if (v8)
  {
    v9 = [v8 value];
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

    if (v11)
    {
      v12 = [v11 BOOLValue];
    }

    else
    {
      v13 = objc_autoreleasePoolPush();
      v14 = self;
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = HMFGetLogIdentifier();
        v19 = 138543618;
        v20 = v16;
        v21 = 2112;
        v22 = v9;
        _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_ERROR, "%{public}@Failed to get location service enabled value due to unknown class for value: %@", &v19, 0x16u);
      }

      objc_autoreleasePoolPop(v13);
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  v17 = *MEMORY[0x277D85DE8];
  return v12;
}

uint64_t __55__HMDAppleMediaAccessory_legacyLocationServicesEnabled__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 name];
  v3 = [v2 isEqualToString:@"enabled"];

  return v3;
}

uint64_t __55__HMDAppleMediaAccessory_legacyLocationServicesEnabled__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 name];
  v3 = [v2 isEqualToString:@"locationServices"];

  return v3;
}

- (BOOL)supportsHomeLevelLocationServiceSetting
{
  if ([(HMDAppleMediaAccessory *)self isCurrentAccessory])
  {
    +[HMDDeviceCapabilities deviceCapabilities];
  }

  else
  {
    [(HMDAppleMediaAccessory *)self capabilities];
  }
  v3 = ;
  v4 = [v3 supportsHomeLevelLocationServiceSetting];

  return v4;
}

- (BOOL)supportsMultiUser
{
  if ([(HMDAppleMediaAccessory *)self isCurrentAccessory])
  {
    +[HMDDeviceCapabilities deviceCapabilities];
  }

  else
  {
    [(HMDAppleMediaAccessory *)self capabilities];
  }
  v3 = ;
  v4 = [v3 supportsMultiUser];

  return v4;
}

- (BOOL)supportsTargetControl
{
  if ([(HMDAppleMediaAccessory *)self isCurrentAccessory])
  {
    +[HMDDeviceCapabilities deviceCapabilities];
  }

  else
  {
    [(HMDAppleMediaAccessory *)self capabilities];
  }
  v3 = ;
  v4 = [v3 supportsTargetControl];

  return v4;
}

- (BOOL)isCurrentAccessory
{
  v3 = [(HMDAppleMediaAccessory *)self device];
  v4 = [(HMDAppleMediaAccessory *)self deviceMediaRouteIdentifierFactory];
  v5 = v4[2]();

  v6 = [(HMDAccessory *)self identifier];
  v7 = v6;
  if (v5)
  {
    v8 = v3 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    if (![v6 isEqualToString:v5])
    {
      v10 = 0;
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  if (!v5)
  {
LABEL_9:
    v9 = [v3 isCurrentDevice];
    goto LABEL_10;
  }

  v9 = [v6 isEqualToString:v5];
LABEL_10:
  v10 = v9;
LABEL_12:

  return v10;
}

- (void)setIdsIdentifier:(id)a3
{
  v4 = a3;
  os_unfair_recursive_lock_lock_with_options();
  idsIdentifier = self->_idsIdentifier;
  self->_idsIdentifier = v4;

  os_unfair_recursive_lock_unlock();
}

- (id)idsIdentifierInternal
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = self->_idsIdentifier;
  os_unfair_recursive_lock_unlock();

  return v3;
}

- (NSUUID)idsIdentifier
{
  v3 = [(HMDAppleMediaAccessory *)self deviceForDirectMessaging];
  v4 = [v3 idsIdentifier];

  if (!v4)
  {
    os_unfair_recursive_lock_lock_with_options();
    v4 = self->_idsIdentifier;
    os_unfair_recursive_lock_unlock();
  }

  return v4;
}

- (void)setProductColor:(int64_t)a3
{
  os_unfair_recursive_lock_lock_with_options();
  self->_productColor = a3;

  os_unfair_recursive_lock_unlock();
}

- (int64_t)productColor
{
  os_unfair_recursive_lock_lock_with_options();
  productColor = self->_productColor;
  os_unfair_recursive_lock_unlock();
  return productColor;
}

- (unint64_t)homePodVariant
{
  if ([(HMDAppleMediaAccessory *)self isHomePodMini])
  {
    return 2;
  }

  if ([(HMDAppleMediaAccessory *)self isHomePod2ndGen])
  {
    return 3;
  }

  return [(HMDAppleMediaAccessory *)self isHomePod];
}

- (void)setRawCapabilities:(id)a3
{
  v4 = a3;
  os_unfair_recursive_lock_lock_with_options();
  rawCapabilities = self->_rawCapabilities;
  self->_rawCapabilities = v4;

  os_unfair_recursive_lock_unlock();
}

- (NSData)rawCapabilities
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = self->_rawCapabilities;
  os_unfair_recursive_lock_unlock();

  return v3;
}

- (void)setCapabilitiesInternal:(id)a3
{
  v4 = a3;
  os_unfair_recursive_lock_lock_with_options();
  capabilitiesInternal = self->_capabilitiesInternal;
  self->_capabilitiesInternal = v4;

  os_unfair_recursive_lock_unlock();
}

- (HMAccessoryCapabilities)capabilitiesInternal
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = self->_capabilitiesInternal;
  os_unfair_recursive_lock_unlock();

  return v3;
}

- (HMAccessoryCapabilities)capabilities
{
  v2 = [(HMDAppleMediaAccessory *)self device];
  v3 = [v2 capabilities];

  return v3;
}

- (void)autoConfigureTargetControllers
{
  v51 = *MEMORY[0x277D85DE8];
  v3 = [(HMDAppleMediaAccessory *)self targetControlManager];

  v4 = objc_autoreleasePoolPush();
  v35 = self;
  v5 = HMFGetOSLogHandle();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_INFO);
  if (v3)
  {
    if (v6)
    {
      v7 = HMFGetLogIdentifier();
      *buf = 138543362;
      v41 = v7;
      _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@Accessory supports target control - adding to all target controllers", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    v34 = [MEMORY[0x277CBEB18] array];
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v8 = [(HMDAccessory *)v35 home];
    v9 = [v8 accessories];

    v10 = [v9 countByEnumeratingWithState:&v36 objects:v50 count:16];
    if (v10)
    {
      v12 = v10;
      v13 = *v37;
      *&v11 = 138544386;
      v28 = v11;
      v29 = *v37;
      v30 = v9;
      do
      {
        v14 = 0;
        v31 = v12;
        do
        {
          if (*v37 != v13)
          {
            objc_enumerationMutation(v9);
          }

          v15 = *(*(&v36 + 1) + 8 * v14);
          if ([v15 supportsTargetController])
          {
            v16 = objc_autoreleasePoolPush();
            v17 = v35;
            v18 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
            {
              v19 = HMFGetLogIdentifier();
              v20 = [(HMDMediaAccessory *)v17 name];
              v32 = [(HMDAccessory *)v17 uuid];
              v21 = [v32 UUIDString];
              v22 = [v15 name];
              v23 = [v15 uuid];
              [v23 UUIDString];
              v24 = v33 = v16;
              *buf = v28;
              v41 = v19;
              v42 = 2112;
              v43 = v20;
              v44 = 2112;
              v45 = v21;
              v46 = 2112;
              v47 = v22;
              v48 = 2112;
              v49 = v24;
              _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_INFO, "%{public}@Adding accessory %@/%@ as a target to the target controller %@/%@", buf, 0x34u);

              v12 = v31;
              v9 = v30;

              v16 = v33;
              v13 = v29;
            }

            objc_autoreleasePoolPop(v16);
            [v34 addObject:v15];
          }

          ++v14;
        }

        while (v12 != v14);
        v12 = [v9 countByEnumeratingWithState:&v36 objects:v50 count:16];
      }

      while (v12);
    }

    v25 = [(HMDAppleMediaAccessory *)v35 targetControlManager];
    [v25 addTargetControllers:v34];
  }

  else
  {
    if (v6)
    {
      v26 = HMFGetLogIdentifier();
      *buf = 138543362;
      v41 = v26;
      _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@Attempt to auto-configure target controllers to an accessory with no target control manager", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (void)_fixCloudKeyIfNeeded
{
  v30 = *MEMORY[0x277D85DE8];
  if (![(HMDAppleMediaAccessory *)self isCurrentAccessory])
  {
    goto LABEL_19;
  }

  v3 = [(HMDAppleMediaAccessory *)self pairingIdentity];

  if (!v3)
  {
    v21 = objc_autoreleasePoolPush();
    v22 = self;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = HMFGetLogIdentifier();
      *buf = 138543362;
      v29 = v24;
      v25 = "%{public}@No pairing identity yet to fix";
LABEL_17:
      _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_INFO, v25, buf, 0xCu);
    }

LABEL_18:

    objc_autoreleasePoolPop(v21);
    goto LABEL_19;
  }

  v4 = [(HMDAppleMediaAccessory *)self pairingIdentity];
  v5 = [v4 privateKey];

  if (!v5)
  {
    v21 = objc_autoreleasePoolPush();
    v22 = self;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = HMFGetLogIdentifier();
      *buf = 138543362;
      v29 = v24;
      v25 = "%{public}@Pairing identity can't be used.";
      goto LABEL_17;
    }

    goto LABEL_18;
  }

  if (![(HMDAppleMediaAccessory *)self fixedPairingIdentityInCloud])
  {
    v6 = [(HMDAppleMediaAccessory *)self transactionWithObjectChangeType:2];
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

    if (v8)
    {
      v9 = objc_autoreleasePoolPush();
      v10 = self;
      v11 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = HMFGetLogIdentifier();
        *buf = 138543362;
        v29 = v12;
        _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@Fixing pairing identity", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v9);
      v13 = [(HMDAppleMediaAccessory *)v10 pairingIdentity];
      v14 = [v13 publicPairingIdentity];
      [v8 setPairingIdentity:v14];

      v15 = [MEMORY[0x277CCAD78] UUID];
      v16 = [v15 UUIDString];
      [v8 setAppleMediaAccessoryChangeTag:v16];

      v17 = [(HMDAccessory *)v10 home];
      v18 = [v17 backingStore];
      v19 = +[HMDBackingStoreTransactionOptions defaultPreferencesOptions];
      v20 = [v18 transaction:@"Fix Pairing Identity" options:v19];

      [v20 add:v8];
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __46__HMDAppleMediaAccessory__fixCloudKeyIfNeeded__block_invoke;
      v27[3] = &unk_2797359D8;
      v27[4] = v10;
      [v20 run:v27];
    }
  }

LABEL_19:
  v26 = *MEMORY[0x277D85DE8];
}

void __46__HMDAppleMediaAccessory__fixCloudKeyIfNeeded__block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = HMFGetLogIdentifier();
    v9 = 138543362;
    v10 = v7;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@Fixed pairing identity", &v9, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_fetchMultiUserLanguages
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
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@Fetching multi-user languages.", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v7 = [(HMDAppleMediaAccessory *)v4 settingsConnectionFactory];
  v8 = v7[2]();

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __50__HMDAppleMediaAccessory__fetchMultiUserLanguages__block_invoke;
  v11[3] = &unk_279734D18;
  v12 = v8;
  v13 = v4;
  v9 = v8;
  [v9 fetchSupportedMultiUserLanguageCodes:v11];

  v10 = *MEMORY[0x277D85DE8];
}

void __50__HMDAppleMediaAccessory__fetchMultiUserLanguages__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 40);
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
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_ERROR, "%{public}@Could not obtain supported multi-user languages. Error: %@", &v14, 0x16u);
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
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Fetched multi-user languages %@", &v14, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    [*(a1 + 40) setSupportedMultiUserLanguageCodes:v5];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (id)_createMediaProfile
{
  v2 = [(HMDMediaProfile *)[HMDAppleMediaProfile alloc] initWithAccessory:self];

  return v2;
}

- (void)removeAudioDestination
{
  v19 = *MEMORY[0x277D85DE8];
  if ([(HMDAppleMediaAccessory *)self isCurrentAccessory])
  {
    v3 = [(HMDAppleMediaAccessory *)self audioDestination];
    v4 = objc_autoreleasePoolPush();
    v5 = self;
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      *buf = 138543618;
      v16 = v7;
      v17 = 2112;
      v18 = v3;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Removing audio destination: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    if (v3)
    {
      v8 = [[HMDMediaDestinationModel alloc] initWithDestination:v3 changeType:3];
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __48__HMDAppleMediaAccessory_removeAudioDestination__block_invoke;
      v14[3] = &unk_2797359D8;
      v14[4] = v5;
      [(HMDAccessory *)v5 runTransactionWithModel:v8 label:@"Remove audio destination" completion:v14];
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
      *buf = 138543362;
      v16 = v12;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Skipping removing audio destination due to non-current device", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __48__HMDAppleMediaAccessory_removeAudioDestination__block_invoke(uint64_t a1, void *a2)
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
      v9 = "%{public}@Audio destination removal transaction completed with error: %@";
      v10 = v7;
      v11 = OS_LOG_TYPE_ERROR;
      v12 = 22;
LABEL_6:
      _os_log_impl(&dword_2531F8000, v10, v11, v9, &v14, v12);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v14 = 138543362;
    v15 = v8;
    v9 = "%{public}@Audio destination removal transaction completed";
    v10 = v7;
    v11 = OS_LOG_TYPE_INFO;
    v12 = 12;
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v4);
  v13 = *MEMORY[0x277D85DE8];
}

- (id)mediaGroupParticipantDataLocalStorage
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = [(HMDAccessory *)self home];
  v4 = [v3 homeManager];
  v5 = [v4 mediaGroupParticipantDataLocalStorage];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v9 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v14 = 138543874;
      v15 = v11;
      v16 = 2112;
      v17 = v3;
      v18 = 2112;
      v19 = v4;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to get media groups participant data local storage due to dependencies home: %@ homeManager: %@", &v14, 0x20u);
    }

    objc_autoreleasePoolPop(v8);
  }

  v12 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)legacyCreateAudioDestinationWithIdentifier:(id)a3 supportedOptions:(unint64_t)a4
{
  v6 = a3;
  v7 = [HMDMediaDestinationModel alloc];
  v8 = [(HMDAccessory *)self uuid];
  v9 = [(HMDBackingStoreModelObject *)v7 initWithObjectChangeType:1 uuid:v6 parentUUID:v8];

  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a4];
  [(HMDMediaDestinationModel *)v9 setSupportedOptions:v10];

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __86__HMDAppleMediaAccessory_legacyCreateAudioDestinationWithIdentifier_supportedOptions___block_invoke;
  v11[3] = &unk_2797359D8;
  v11[4] = self;
  [(HMDAccessory *)self runTransactionWithModel:v9 label:@"Create audio destination" completion:v11];
}

void __86__HMDAppleMediaAccessory_legacyCreateAudioDestinationWithIdentifier_supportedOptions___block_invoke(uint64_t a1, void *a2)
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
      v9 = "%{public}@Audio destination transaction completed with error: %@";
      v10 = v7;
      v11 = OS_LOG_TYPE_ERROR;
      v12 = 22;
LABEL_6:
      _os_log_impl(&dword_2531F8000, v10, v11, v9, &v14, v12);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v14 = 138543362;
    v15 = v8;
    v9 = "%{public}@Audio destination transaction completed";
    v10 = v7;
    v11 = OS_LOG_TYPE_INFO;
    v12 = 12;
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v4);
  v13 = *MEMORY[0x277D85DE8];
}

- (void)createAudioDestination
{
  v41 = *MEMORY[0x277D85DE8];
  if ([(HMDAppleMediaAccessory *)self isCurrentAccessory])
  {
    if (+[HMDDeviceCapabilities supportsAudioDestinationCreation])
    {
      v3 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"5CC65005-CE51-4781-9F78-3429557B6FD4"];
      v4 = MEMORY[0x277CCAD78];
      v5 = [(HMDAccessory *)self uuid];
      v6 = [v5 UUIDString];
      v7 = [v6 dataUsingEncoding:4];
      v8 = [v4 hmf_UUIDWithNamespace:v3 data:v7];

      v9 = [(HMDAppleMediaAccessory *)self expectedDestinationSupportOptions];
      v10 = objc_autoreleasePoolPush();
      v11 = self;
      v12 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = HMFGetLogIdentifier();
        v14 = HMMediaDestinationSupportOptionsAsString();
        v35 = 138543874;
        v36 = v13;
        v37 = 2112;
        v38 = v8;
        v39 = 2112;
        v40 = v14;
        _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@Creating new audio destination with identifier: %@ supportedOptions: %@", &v35, 0x20u);
      }

      objc_autoreleasePoolPop(v10);
      if (isFeatureHomeTheaterQFAEnabledForTests && ([isFeatureHomeTheaterQFAEnabledForTests BOOLValue] & 1) != 0)
      {
        v15 = [(HMDAppleMediaAccessory *)v11 mediaGroupParticipantDataLocalStorage];
        v16 = [v15 participantData];
        v17 = [v16 destination];

        if (v17)
        {
          v18 = objc_autoreleasePoolPush();
          v19 = v11;
          v20 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
          {
            v21 = HMFGetLogIdentifier();
            v35 = 138543618;
            v36 = v21;
            v37 = 2112;
            v38 = v17;
            _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_INFO, "%{public}@Overwriting stale audio destination: %@", &v35, 0x16u);
          }

          objc_autoreleasePoolPop(v18);
        }

        v22 = objc_alloc(MEMORY[0x277CD1B80]);
        v23 = [(HMDAccessory *)v11 uuid];
        v24 = [(HMDAppleMediaAccessory *)v11 defaultAudioGroupIdentifier];
        v25 = [v22 initWithUniqueIdentifier:v8 parentIdentifier:v23 supportedOptions:v9 audioGroupIdentifier:v24];

        [v15 updateMediaDestination:v25];
        [(HMDAppleMediaAccessory *)v11 mergeAudioDestination:v25];
      }

      else
      {
        v30 = objc_autoreleasePoolPush();
        v31 = v11;
        v32 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
        {
          v33 = HMFGetLogIdentifier();
          v35 = 138543362;
          v36 = v33;
          _os_log_impl(&dword_2531F8000, v32, OS_LOG_TYPE_INFO, "%{public}@Home Theater QFA is not enabled", &v35, 0xCu);
        }

        objc_autoreleasePoolPop(v30);
        [(HMDAppleMediaAccessory *)v31 legacyCreateAudioDestinationWithIdentifier:v8 supportedOptions:v9];
      }
    }

    else
    {
      v26 = objc_autoreleasePoolPush();
      v27 = self;
      v28 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        v29 = HMFGetLogIdentifier();
        v35 = 138543362;
        v36 = v29;
        _os_log_impl(&dword_2531F8000, v28, OS_LOG_TYPE_INFO, "%{public}@Skipping creating audio destination manager for unsupported device", &v35, 0xCu);
      }

      objc_autoreleasePoolPop(v26);
    }
  }

  v34 = *MEMORY[0x277D85DE8];
}

- (unint64_t)expectedDestinationSupportOptions
{
  if ([(HMDAppleMediaAccessory *)self isHomePodMini])
  {
    return 36;
  }

  if ([(HMDAppleMediaAccessory *)self isHomePod2ndGen])
  {
    return 192;
  }

  return 17;
}

- (void)migrateLocalParticipantData
{
  if (isFeatureHomeTheaterQFAEnabledForTests && [isFeatureHomeTheaterQFAEnabledForTests BOOLValue] && -[HMDAppleMediaAccessory isCurrentAccessory](self, "isCurrentAccessory"))
  {
    v3 = [(HMDAppleMediaAccessory *)self audioDestinationController];

    if (v3)
    {
      v4 = [(HMDAppleMediaAccessory *)self mediaGroupParticipantDataLocalStorage];
      v5 = [(HMDAccessory *)self featuresDataSource];
      [v4 migrateWithExpectedDestinationControllerSupportOptions:{+[HMDMediaDestinationController expectedSupportOptionsWithFeaturesDataSource:](HMDMediaDestinationController, "expectedSupportOptionsWithFeaturesDataSource:", v5)}];
    }

    v6 = [(HMDAppleMediaAccessory *)self audioDestinationManager];

    if (v6)
    {
      v7 = [(HMDAppleMediaAccessory *)self mediaGroupParticipantDataLocalStorage];
      [v7 migrateWithExpectedDestinationSupportOptions:{-[HMDAppleMediaAccessory expectedDestinationSupportOptions](self, "expectedDestinationSupportOptions")}];
    }
  }
}

- (void)configureAudioDestinationManager
{
  v22 = *MEMORY[0x277D85DE8];
  if ([(HMDAppleMediaAccessory *)self isHomePod])
  {
    v3 = [(HMDAppleMediaAccessory *)self committedAudioDestination];
    v4 = v3;
    if (v3 && ([v3 parentIdentifier], v5 = objc_claimAutoreleasedReturnValue(), -[HMDAccessory uuid](self, "uuid"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v5, "hmf_isEqualToUUID:", v6), v6, v5, (v7 & 1) != 0))
    {
      v8 = [(HMDAccessory *)self home];
      v9 = [(HMDAccessory *)self msgDispatcher];
      v10 = [(HMDMediaAccessory *)self notificationCenter];
      v11 = [(HMDAppleMediaAccessory *)self backingStore];
      if ([(HMDAppleMediaAccessory *)self hasValidHome:v8 backingStore:v11 messageDispatcher:v9])
      {
        v12 = [(HMDAppleMediaAccessory *)self mediaDestinationManagerFactory];
        v13 = [v12 mediaDestinationManagerWithDestination:v4 messageDispatcher:v9 notificationCenter:v10 backingStore:v11 targetDevice:-[HMDAppleMediaAccessory isCurrentAccessory](self dataSource:"isCurrentAccessory") delegate:{self, self}];
        [(HMDAppleMediaAccessory *)self setAudioDestinationManager:v13];

        v14 = [(HMDAppleMediaAccessory *)self audioDestinationManager];
        [v14 configureWithHome:v8 currentAccessory:{-[HMDAppleMediaAccessory isCurrentAccessory](self, "isCurrentAccessory")}];

        [(HMDAppleMediaAccessory *)self migrateLocalParticipantData];
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
          v21 = v18;
          _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_ERROR, "%{public}@Failed to validate required home objects during destination manager configuration", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v15);
      }
    }

    else
    {
      [(HMDAppleMediaAccessory *)self createAudioDestination];
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)mergeAudioDestination:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDAppleMediaAccessory *)self audioDestinationManager];
  v6 = v5;
  if (v5)
  {
    [v5 mergeDestination:v4];
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    v8 = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543618;
      v26 = v10;
      v27 = 2112;
      v28 = v4;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Merging new audio destination: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    v11 = [(HMDAccessory *)v8 home];
    v12 = [(HMDAccessory *)v8 msgDispatcher];
    v13 = [(HMDMediaAccessory *)v8 notificationCenter];
    v14 = [(HMDAppleMediaAccessory *)v8 backingStore];
    if ([(HMDAppleMediaAccessory *)v8 hasValidHome:v11 backingStore:v14 messageDispatcher:v12])
    {
      v15 = [(HMDAppleMediaAccessory *)v8 mediaDestinationManagerFactory];
      v16 = [v15 mediaDestinationManagerWithDestination:v4 messageDispatcher:v12 notificationCenter:v13 backingStore:v14 targetDevice:-[HMDAppleMediaAccessory isCurrentAccessory](v8 dataSource:"isCurrentAccessory") delegate:{v8, v8}];
      [(HMDAppleMediaAccessory *)v8 setAudioDestinationManager:v16];

      v17 = [(HMDAppleMediaAccessory *)v8 audioDestinationManager];
      [v17 configureWithHome:v11 currentAccessory:{-[HMDAppleMediaAccessory isCurrentAccessory](v8, "isCurrentAccessory")}];

      v18 = [(HMDAppleMediaAccessory *)v8 audioDestinationManager];
      v19 = [v18 messageHandler];
      [v19 handleUpdatedDestination:v4];
    }

    else
    {
      v20 = objc_autoreleasePoolPush();
      v21 = v8;
      v22 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v23 = HMFGetLogIdentifier();
        *buf = 138543362;
        v26 = v23;
        _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_ERROR, "%{public}@Failed to validate required home objects during destination merge", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v20);
    }
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (void)unsetAudioDestination
{
  os_unfair_recursive_lock_lock_with_options();
  committedAudioDestination = self->_committedAudioDestination;
  self->_committedAudioDestination = 0;

  os_unfair_recursive_lock_unlock();
}

- (id)legacyAudioDestination
{
  v3 = [(HMDAppleMediaAccessory *)self audioDestinationManager];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 destination];
  }

  else
  {
    os_unfair_recursive_lock_lock_with_options();
    v5 = self->_committedAudioDestination;
    os_unfair_recursive_lock_unlock();
  }

  return v5;
}

- (HMMediaDestination)audioDestination
{
  v14 = *MEMORY[0x277D85DE8];
  if (isFeatureHomeTheaterQFAEnabledForTests && ([isFeatureHomeTheaterQFAEnabledForTests BOOLValue] & 1) != 0)
  {
    v3 = [(HMDAppleMediaAccessory *)self dataSource];
    v4 = v3;
    if (v3)
    {
      v5 = [v3 destinationForAppleMediaAccessory:self];
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
        _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_ERROR, "%{public}@Failed to get audio destination due to no data source", &v12, 0xCu);
      }

      objc_autoreleasePoolPop(v6);
      v5 = 0;
    }
  }

  else
  {
    v5 = [(HMDAppleMediaAccessory *)self legacyAudioDestination];
  }

  v10 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)legacyCommittedAudioDestination
{
  v3 = [(HMDAppleMediaAccessory *)self audioDestinationManager];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 committedDestination];
  }

  else
  {
    os_unfair_recursive_lock_lock_with_options();
    v5 = self->_committedAudioDestination;
    os_unfair_recursive_lock_unlock();
  }

  return v5;
}

- (id)committedAudioDestination
{
  if (isFeatureHomeTheaterQFAEnabledForTests && ([isFeatureHomeTheaterQFAEnabledForTests BOOLValue] & 1) != 0)
  {
    if ([(HMDAppleMediaAccessory *)self isCurrentAccessory])
    {
      v3 = [(HMDAppleMediaAccessory *)self mediaGroupParticipantDataLocalStorage];
      v4 = [v3 participantData];
      v5 = [v4 destination];

      goto LABEL_7;
    }

    v6 = [(HMDAppleMediaAccessory *)self audioDestination];
  }

  else
  {
    v6 = [(HMDAppleMediaAccessory *)self legacyCommittedAudioDestination];
  }

  v5 = v6;
LABEL_7:

  return v5;
}

- (void)legacyCreateAudioDestinationControllerWithControllerIdentifier:(id)a3
{
  v4 = a3;
  v5 = [HMDMediaDestinationControllerModel alloc];
  v6 = [(HMDAccessory *)self uuid];
  v7 = [(HMDBackingStoreModelObject *)v5 initWithObjectChangeType:1 uuid:v4 parentUUID:v6];

  [(HMDMediaDestinationControllerModel *)v7 setAvailableDestinationModelIdentifiers:MEMORY[0x277CBEBF8]];
  v8 = MEMORY[0x277CCABB0];
  v9 = [(HMDAccessory *)self featuresDataSource];
  v10 = [v8 numberWithUnsignedInteger:{+[HMDMediaDestinationController expectedSupportOptionsWithFeaturesDataSource:](HMDMediaDestinationController, "expectedSupportOptionsWithFeaturesDataSource:", v9)}];
  [(HMDMediaDestinationControllerModel *)v7 setSupportedOptions:v10];

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __89__HMDAppleMediaAccessory_legacyCreateAudioDestinationControllerWithControllerIdentifier___block_invoke;
  v11[3] = &unk_2797359D8;
  v11[4] = self;
  [(HMDAccessory *)self runTransactionWithModel:v7 label:@"Create audio destination controller" completion:v11];
}

void __89__HMDAppleMediaAccessory_legacyCreateAudioDestinationControllerWithControllerIdentifier___block_invoke(uint64_t a1, void *a2)
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
      v9 = "%{public}@Upload audio destination controller finished with error: %@";
      v10 = v7;
      v11 = OS_LOG_TYPE_ERROR;
      v12 = 22;
LABEL_6:
      _os_log_impl(&dword_2531F8000, v10, v11, v9, &v14, v12);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v14 = 138543362;
    v15 = v8;
    v9 = "%{public}@Upload audio destination controller completed";
    v10 = v7;
    v11 = OS_LOG_TYPE_INFO;
    v12 = 12;
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v4);
  v13 = *MEMORY[0x277D85DE8];
}

- (void)createAudioDestinationController
{
  v38 = *MEMORY[0x277D85DE8];
  if ([(HMDAppleMediaAccessory *)self isCurrentAccessory])
  {
    if (+[HMDDeviceCapabilities supportsAudioDestinationControllerCreation])
    {
      v3 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"EE041E8C-28B9-4250-B2E2-0C032BDDDF1A"];
      v4 = MEMORY[0x277CCAD78];
      v5 = [(HMDAccessory *)self uuid];
      v6 = [v5 UUIDString];
      v7 = [v6 dataUsingEncoding:4];
      v8 = [v4 hmf_UUIDWithNamespace:v3 data:v7];

      v9 = objc_autoreleasePoolPush();
      v10 = self;
      v11 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = HMFGetLogIdentifier();
        v34 = 138543618;
        v35 = v12;
        v36 = 2112;
        v37 = v8;
        _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Creating new audio destination controller with identifier: %@", &v34, 0x16u);
      }

      objc_autoreleasePoolPop(v9);
      if (isFeatureHomeTheaterQFAEnabledForTests && ([isFeatureHomeTheaterQFAEnabledForTests BOOLValue] & 1) != 0)
      {
        v13 = [(HMDAppleMediaAccessory *)v10 mediaGroupParticipantDataLocalStorage];
        v14 = [v13 participantData];
        v15 = [v14 destinationControllerData];

        if (v15)
        {
          v16 = objc_autoreleasePoolPush();
          v17 = v10;
          v18 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
          {
            v19 = HMFGetLogIdentifier();
            v34 = 138543618;
            v35 = v19;
            v36 = 2112;
            v37 = v15;
            _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_INFO, "%{public}@Overwriting stale audio destination controller data: %@", &v34, 0x16u);
          }

          objc_autoreleasePoolPop(v16);
        }

        v20 = objc_alloc(MEMORY[0x277CD1B90]);
        v21 = [(HMDAccessory *)v10 uuid];
        v22 = [(HMDAccessory *)v10 featuresDataSource];
        v23 = [HMDMediaDestinationController expectedSupportOptionsWithFeaturesDataSource:v22];
        v24 = [v20 initWithIdentifier:v8 parentIdentifier:v21 destinationIdentifier:0 supportedOptions:v23 availableDestinationIdentifiers:MEMORY[0x277CBEBF8]];

        [v13 updateDestinationControllerData:v24];
        [(HMDAppleMediaAccessory *)v10 mergeAudioDestinationControllerData:v24];
      }

      else
      {
        v29 = objc_autoreleasePoolPush();
        v30 = v10;
        v31 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
        {
          v32 = HMFGetLogIdentifier();
          v34 = 138543362;
          v35 = v32;
          _os_log_impl(&dword_2531F8000, v31, OS_LOG_TYPE_INFO, "%{public}@Home Theater QFA is not enabled", &v34, 0xCu);
        }

        objc_autoreleasePoolPop(v29);
        [(HMDAppleMediaAccessory *)v30 legacyCreateAudioDestinationControllerWithControllerIdentifier:v8];
      }
    }

    else
    {
      v25 = objc_autoreleasePoolPush();
      v26 = self;
      v27 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        v28 = HMFGetLogIdentifier();
        v34 = 138543362;
        v35 = v28;
        _os_log_impl(&dword_2531F8000, v27, OS_LOG_TYPE_INFO, "%{public}@Skipping audio destination controller creation due to device does not support home theater", &v34, 0xCu);
      }

      objc_autoreleasePoolPop(v25);
    }
  }

  v33 = *MEMORY[0x277D85DE8];
}

- (BOOL)hasValidHome:(id)a3 backingStore:(id)a4 messageDispatcher:(id)a5
{
  v29 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (v8)
  {
    v12 = v10 == 0;
  }

  else
  {
    v12 = 1;
  }

  v13 = v12 || v9 == 0;
  v14 = !v13;
  if (v13)
  {
    v15 = objc_autoreleasePoolPush();
    v16 = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      v21 = 138544130;
      v22 = v18;
      v23 = 2112;
      v24 = v8;
      v25 = 2112;
      v26 = v11;
      v27 = 2112;
      v28 = v9;
      _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_INFO, "%{public}@Found nil objects: home: %@ messageDispatcher: %@ backing store: %@", &v21, 0x2Au);
    }

    objc_autoreleasePoolPop(v15);
  }

  v19 = *MEMORY[0x277D85DE8];
  return v14;
}

- (void)configureAudioDestinationController
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = [(HMDAccessory *)self category];
  v4 = [v3 categoryType];
  v5 = [v4 isEqual:*MEMORY[0x277CCE870]];

  if (v5)
  {
    v6 = [(HMDAppleMediaAccessory *)self committedAudioDestinationControllerData];
    v7 = v6;
    if (v6 && ([v6 parentIdentifier], v8 = objc_claimAutoreleasedReturnValue(), -[HMDAccessory uuid](self, "uuid"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v8, "hmf_isEqualToUUID:", v9), v9, v8, (v10 & 1) != 0))
    {
      v11 = [(HMDAccessory *)self home];
      v12 = [(HMDAccessory *)self msgDispatcher];
      v13 = [(HMDMediaAccessory *)self notificationCenter];
      v14 = [(HMDAppleMediaAccessory *)self backingStore];
      v15 = [(HMDAppleMediaAccessory *)self hasValidHome:v11 backingStore:v14 messageDispatcher:v12];
      v16 = objc_autoreleasePoolPush();
      v17 = self;
      v18 = HMFGetOSLogHandle();
      v19 = v18;
      if (v15)
      {
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          v20 = HMFGetLogIdentifier();
          *buf = 138543618;
          v30 = v20;
          v31 = 2112;
          v32 = v7;
          _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_INFO, "%{public}@Configuring audio destination controller with data: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v16);
        v21 = [(HMDAppleMediaAccessory *)v17 mediaDestinationControllerFactory];
        v22 = [v11 logEventSubmitter];
        v23 = [v11 dailyScheduler];
        LOBYTE(v28) = [(HMDAppleMediaAccessory *)v17 isCurrentAccessory];
        v24 = [v21 mediaDestinationControllerWithData:v7 backingStore:v14 messageDispatcher:v12 notificationCenter:v13 logEventSubmitter:v22 dailyScheduler:v23 targetDevice:v28 dataSource:v17 delegate:v17];
        [(HMDAppleMediaAccessory *)v17 setAudioDestinationController:v24];

        v25 = [(HMDAppleMediaAccessory *)v17 audioDestinationController];
        [v25 configureWithHome:v11];

        [(HMDAppleMediaAccessory *)v17 migrateLocalParticipantData];
      }

      else
      {
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          v26 = HMFGetLogIdentifier();
          *buf = 138543362;
          v30 = v26;
          _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_ERROR, "%{public}@Failed to validate required home objects during destination controller configuration", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v16);
      }
    }

    else
    {
      [(HMDAppleMediaAccessory *)self createAudioDestinationController];
    }
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (void)mergeAudioDestinationControllerData:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDAppleMediaAccessory *)self audioDestinationController];
  v6 = v5;
  if (v5)
  {
    [v5 mergeData:v4];
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    v8 = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543618;
      v28 = v10;
      v29 = 2112;
      v30 = v4;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Merging new audio destination controller with data: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    v11 = [(HMDAccessory *)v8 home];
    v12 = [(HMDAccessory *)v8 msgDispatcher];
    v13 = [(HMDMediaAccessory *)v8 notificationCenter];
    v14 = [(HMDAppleMediaAccessory *)v8 backingStore];
    if ([(HMDAppleMediaAccessory *)v8 hasValidHome:v11 backingStore:v14 messageDispatcher:v12])
    {
      v15 = [(HMDAppleMediaAccessory *)v8 mediaDestinationControllerFactory];
      v16 = [v11 logEventSubmitter];
      v17 = [v11 dailyScheduler];
      LOBYTE(v25) = [(HMDAppleMediaAccessory *)v8 isCurrentAccessory];
      [v15 mediaDestinationControllerWithData:v4 backingStore:v14 messageDispatcher:v12 notificationCenter:v13 logEventSubmitter:v16 dailyScheduler:v17 targetDevice:v25 dataSource:v8 delegate:v8];
      v18 = v26 = v13;
      [(HMDAppleMediaAccessory *)v8 setAudioDestinationController:v18];

      v19 = [(HMDAppleMediaAccessory *)v8 audioDestinationController];
      [v19 configureWithHome:v11];

      v13 = v26;
    }

    else
    {
      v20 = objc_autoreleasePoolPush();
      v21 = v8;
      v22 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v23 = HMFGetLogIdentifier();
        *buf = 138543362;
        v28 = v23;
        _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_ERROR, "%{public}@Failed to validate required home objects during destination controller merge", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v20);
    }
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (void)unsetAudioDestinationControllerData
{
  os_unfair_recursive_lock_lock_with_options();
  committedAudioDestinationControllerData = self->_committedAudioDestinationControllerData;
  self->_committedAudioDestinationControllerData = 0;

  os_unfair_recursive_lock_unlock();
}

- (id)legacyCommittedAudioDestinationControllerData
{
  v3 = [(HMDAppleMediaAccessory *)self audioDestinationController];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 committedData];
  }

  else
  {
    os_unfair_recursive_lock_lock_with_options();
    v5 = self->_committedAudioDestinationControllerData;
    os_unfair_recursive_lock_unlock();
  }

  return v5;
}

- (id)committedAudioDestinationControllerData
{
  if (isFeatureHomeTheaterQFAEnabledForTests && ([isFeatureHomeTheaterQFAEnabledForTests BOOLValue] & 1) != 0)
  {
    if ([(HMDAppleMediaAccessory *)self isCurrentAccessory])
    {
      v3 = [(HMDAppleMediaAccessory *)self mediaGroupParticipantDataLocalStorage];
      v4 = [v3 participantData];
      v5 = [v4 destinationControllerData];

      goto LABEL_7;
    }

    v6 = [(HMDAppleMediaAccessory *)self audioDestinationControllerData];
  }

  else
  {
    v6 = [(HMDAppleMediaAccessory *)self legacyCommittedAudioDestinationControllerData];
  }

  v5 = v6;
LABEL_7:

  return v5;
}

- (id)legacyAudioDestinationControllerData
{
  v3 = [(HMDAppleMediaAccessory *)self audioDestinationController];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 data];
  }

  else
  {
    os_unfair_recursive_lock_lock_with_options();
    v5 = self->_committedAudioDestinationControllerData;
    os_unfair_recursive_lock_unlock();
  }

  return v5;
}

- (HMMediaDestinationControllerData)audioDestinationControllerData
{
  v14 = *MEMORY[0x277D85DE8];
  if (isFeatureHomeTheaterQFAEnabledForTests && ([isFeatureHomeTheaterQFAEnabledForTests BOOLValue] & 1) != 0)
  {
    v3 = [(HMDAppleMediaAccessory *)self dataSource];
    v4 = v3;
    if (v3)
    {
      v5 = [v3 destinationControllerDataForAppleMediaAccessory:self];
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
        _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_ERROR, "%{public}@Failed to get audio destination data due to no data source", &v12, 0xCu);
      }

      objc_autoreleasePoolPop(v6);
      v5 = 0;
    }
  }

  else
  {
    v5 = [(HMDAppleMediaAccessory *)self legacyAudioDestinationControllerData];
  }

  v10 = *MEMORY[0x277D85DE8];

  return v5;
}

- (NSUUID)sensorAccessoryUUID
{
  v2 = [(HMDAppleMediaAccessory *)self sensorManager];
  v3 = [v2 sensorAccessoryUUID];

  return v3;
}

- (void)unconfigure
{
  v2.receiver = self;
  v2.super_class = HMDAppleMediaAccessory;
  [(HMDMediaAccessory *)&v2 unconfigure];
}

- (BOOL)isDoorbellChimeSettingEnabled
{
  v2 = [(HMDAppleMediaAccessory *)self settingsController];
  v3 = [v2 rootGroup];
  v4 = [v3 groups];
  v5 = [v4 na_any:&__block_literal_global_384];

  return v5;
}

uint64_t __55__HMDAppleMediaAccessory_isDoorbellChimeSettingEnabled__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 name];
  v4 = [v3 isEqualToString:@"doorbellChime"];

  if (v4)
  {
    v5 = [v2 settings];
    v6 = [v5 na_any:&__block_literal_global_387];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t __55__HMDAppleMediaAccessory_isDoorbellChimeSettingEnabled__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 value];
  v4 = [v2 name];

  if ([v4 isEqualToString:@"enabled"])
  {
    v5 = [v3 BOOLValue];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isAppleTV
{
  v2 = [(HMDAccessory *)self category];
  v3 = [v2 categoryType];
  v4 = [v3 isEqualToString:*MEMORY[0x277CCE870]];

  return v4;
}

- (BOOL)isHomePod
{
  v2 = [(HMDAccessory *)self category];
  v3 = [v2 categoryType];
  v4 = [v3 isEqualToString:*MEMORY[0x277CCE8B0]];

  return v4;
}

- (void)updateProductInformation
{
  v37 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v33 = 138543362;
    v34 = v6;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@Updating Product Information", &v33, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v7 = [(HMDAppleMediaAccessory *)v4 transactionWithObjectChangeType:2];
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

  v10 = +[HMDDeviceCapabilities supportedStereoPairVersions];
  v11 = [(HMDAppleMediaAccessory *)v4 supportedStereoPairVersions];
  if (v11 != v10)
  {
    v12 = objc_autoreleasePoolPush();
    v13 = v4;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier();
      v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v10];
      v33 = 138543618;
      v34 = v15;
      v35 = 2112;
      v36 = v16;
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, "%{public}@Updating supported stereo pair versions to: %@", &v33, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
    v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v10];
    [v9 setSupportedStereoPairVersions:v17];
  }

  v18 = [MEMORY[0x277D0F8E8] productInfo];
  v19 = [v18 productClass];

  if (v19 == 6 && ([MEMORY[0x277D0F8E8] productInfo], v20 = objc_claimAutoreleasedReturnValue(), v21 = objc_msgSend(v20, "productColor"), v20, -[HMDAppleMediaAccessory productColor](v4, "productColor") != v21))
  {
    v22 = objc_autoreleasePoolPush();
    v23 = v4;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v25 = HMFGetLogIdentifier();
      v26 = HMFProductColorToString();
      v33 = 138543618;
      v34 = v25;
      v35 = 2112;
      v36 = v26;
      _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_INFO, "%{public}@Updating product color to: %@", &v33, 0x16u);
    }

    objc_autoreleasePoolPop(v22);
    v27 = [MEMORY[0x277CCABB0] numberWithInteger:v21];
    [v9 setProductColor:v27];
  }

  else if (v11 == v10)
  {
    goto LABEL_18;
  }

  v28 = [(HMDAccessory *)v4 home];
  v29 = [v28 backingStore];
  v30 = +[HMDBackingStoreTransactionOptions defaultPreferencesOptions];
  v31 = [v29 transaction:@"Update Product Information" options:v30];

  [v31 add:v9 withMessage:0];
  [v31 run];

LABEL_18:
  v32 = *MEMORY[0x277D85DE8];
}

- (void)configureWithHome:(id)a3 msgDispatcher:(id)a4 configurationTracker:(id)a5 initialConfiguration:(BOOL)a6
{
  v6 = a6;
  v160 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  HMFUptime();
  v14 = v13;
  v130 = v6;
  v128 = v12;
  if (v6)
  {
    v15 = objc_autoreleasePoolPush();
    v16 = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      v18 = HMFGetLogIdentifier();
      v19 = [v10 uuid];
      v20 = [(HMDAccessory *)v16 uuid];
      v21 = [MEMORY[0x277CCABB0] numberWithBool:1];
      *buf = 138545922;
      v139 = v18;
      v140 = 2114;
      v141 = @"accessoryConfigureStart";
      v142 = 2112;
      v143 = @"Configuring accessory";
      v144 = 2114;
      v145 = @"state";
      v146 = 2112;
      v147 = @"start";
      v148 = 2114;
      v149 = @"homeUUID";
      v150 = 2112;
      v151 = v19;
      v152 = 2114;
      v153 = @"accessoryUUID";
      v154 = 2112;
      v155 = v20;
      v156 = 2114;
      v157 = @"initialConfig";
      v158 = 2112;
      v159 = v21;
      _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_DEBUG, "%{public}@tag=%{public}@ desc=%@ %{public}@=%@ %{public}@=%@ %{public}@=%@ %{public}@=%@", buf, 0x70u);
    }

    objc_autoreleasePoolPop(v15);
    v22 = [MEMORY[0x277D17DE8] sharedInstance];
    v23 = objc_alloc(MEMORY[0x277D17DF8]);
    v24 = [v10 uuid];
    v25 = [(HMDAccessory *)v16 uuid];
    v26 = [MEMORY[0x277CCABB0] numberWithBool:1];
    v27 = HMDTaggedLoggingCreateDictionary();
    v28 = [v23 initWithTag:@"accessoryConfigureStart" data:{v27, @"state", @"start", @"homeUUID", v24, @"accessoryUUID", v25, @"initialConfig", v26}];
    v29 = [MEMORY[0x277D0F770] currentTagProcessorList];
    [v22 submitTaggedEvent:v28 processorList:v29];

    v12 = v128;
  }

  v129 = [v10 homeManager];
  if (v12)
  {
    dispatch_group_enter(v12);
  }

  if ([(HMDAppleMediaAccessory *)self isHomePod])
  {
    v30 = [[HMDDoorbellChimeProfile alloc] initWithAppleMediaAccessory:self];
    [(NSMutableSet *)self->super.super._accessoryProfiles addObject:v30];
  }

  v137.receiver = self;
  v137.super_class = HMDAppleMediaAccessory;
  [(HMDAccessory *)&v137 configureWithHome:v10 msgDispatcher:v11 configurationTracker:v12 initialConfiguration:v130];
  [(HMDAppleMediaAccessory *)self configureAppleMediaAccessoryMessengerWithFactory:self];
  v31 = [v10 wifiManager];
  [(HMDAppleMediaAccessory *)self setWifiManager:v31];

  v32 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [(HMDAppleMediaAccessory *)self setUserDefaults:v32];

  v33 = [(HMDAppleMediaAccessory *)self userDefaults];
  v34 = [v33 BOOLForKey:@"mi.hh2"];

  v35 = objc_autoreleasePoolPush();
  v36 = self;
  v37 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
  {
    v38 = HMFGetLogIdentifier();
    v39 = HMFBooleanToString();
    v40 = [(HMDAppleMediaAccessory *)v36 settingsController];
    *buf = 138543874;
    v139 = v38;
    v140 = 2112;
    v141 = v39;
    v142 = 2112;
    v143 = v40;
    _os_log_impl(&dword_2531F8000, v37, OS_LOG_TYPE_INFO, "%{public}@hh2SettingsMigrationEnabled: %@, self.settingsController: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v35);
  if ((v34 & 1) == 0)
  {
    v41 = [(HMDAppleMediaAccessory *)v36 settingsController];

    if (!v41)
    {
      v42 = [HMDAccessorySettingsController alloc];
      v43 = [(HMDAccessory *)v36 workQueue];
      v44 = [(HMDAccessory *)v36 uuid];
      v45 = *MEMORY[0x277CCECE8];
      v46 = +[HMDMetricsManager sharedLogEventSubmitter];
      v47 = [(HMDAccessorySettingsController *)v42 initWithQueue:v43 delegate:v36 dataSource:v36 parentUUID:v44 codingKey:v45 logEventSubmitter:v46];
      [(HMDAppleMediaAccessory *)v36 setSettingsController:v47];
    }
  }

  v48 = [(HMDAppleMediaAccessory *)v36 remoteLoginHandler];
  v49 = [(HMDAccessory *)v36 workQueue];
  v50 = [(HMDAppleMediaAccessory *)v36 eventStoreReadHandle];
  v51 = [(HMDAppleMediaAccessory *)v36 eventForwarder];
  [v48 configureWithWorkQueue:v49 messageDispatcher:v11 eventStoreReadHandle:v50 eventForwarder:v51];

  v52 = [(HMDAppleMediaAccessory *)v36 dependencyFactory];
  v53 = [v52 symptomsHandlerForAccessory:v36];
  [(HMDAppleMediaAccessory *)v36 setSymptomsHandler:v53];

  v54 = [(HMDAppleMediaAccessory *)v36 symptomsHandler];
  [v54 configure];

  [(HMDAppleMediaAccessory *)v36 configureAudioDestinationManager];
  device = v36->_device;
  v36->_device = 0;

  v56 = [(HMDAccessory *)v36 identifier];
  v57 = [(HMDAppleMediaAccessory *)v36 deviceMediaRouteIdentifierFactory];
  v58 = v57[2]();
  LODWORD(v51) = [v56 isEqual:v58];

  if (!v51)
  {
    [(HMDAppleMediaAccessory *)v36 startMonitoringReachability];
    __bootstrapSupportedStereoPairVersions(v36);
    goto LABEL_50;
  }

  logger = v36->_logger;
  if (os_signpost_enabled(logger))
  {
    v60 = logger;
    v61 = [(HMDAccessory *)v36 uuid];
    *buf = 138412290;
    v139 = v61;
    _os_signpost_emit_with_name_impl(&dword_2531F8000, v60, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "ConfigureCurrentAccessory", "accessoryUUID=%{signpost.description:attribute}@ ", buf, 0xCu);
  }

  v62 = [(HMDMediaAccessory *)v36 notificationCenter];
  [v62 postNotificationName:@"HMDAppleMediaAccessoryCurrentAccessoryAddedNotification" object:v36];

  deviceController = v36->_deviceController;
  if (!deviceController || ([(HMDDeviceController *)deviceController identifier], v64 = objc_claimAutoreleasedReturnValue(), v64, v64))
  {
    v65 = objc_autoreleasePoolPush();
    v66 = v36;
    v67 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v67, OS_LOG_TYPE_INFO))
    {
      v68 = HMFGetLogIdentifier();
      *buf = 138543362;
      v139 = v68;
      _os_log_impl(&dword_2531F8000, v67, OS_LOG_TYPE_INFO, "%{public}@Setting up device controller for ourselves", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v65);
    v69 = [(HMDAppleMediaAccessory *)v66 dependencyFactory];
    v70 = [v69 deviceController];
    v71 = v36->_deviceController;
    v36->_deviceController = v70;
  }

  v72 = [v129 softwareUpdateManager];
  [v72 setAccessory:v36];

  v73 = [(HMDAppleMediaAccessory *)v36 dependencyFactory];
  v74 = [v73 accountManagerForAccessory:v36];
  v75 = [v74 device];

  if (v75)
  {
    if ([(HMDAppleMediaAccessory *)v36 shouldUpdateWithDevice:v75 initialConfiguration:v130])
    {
      [(HMDAppleMediaAccessory *)v36 updateWithDevice:v75];
    }

    v76 = [(HMDMediaAccessory *)v36 notificationCenter];
    [v76 removeObserver:v36 name:@"HMDDeviceUpdatedNotification" object:0];

    v77 = [(HMDMediaAccessory *)v36 notificationCenter];
    [v77 addObserver:v36 selector:sel_handleCurrentDeviceUpdated_ name:@"HMDDeviceUpdatedNotification" object:v75];

    v78 = [(HMDAppleMediaAccessory *)v36 remoteLoginHandler];
    [v78 _registerForUsernameUpdates];

    v79 = [v75 rpIdentity];
    v80 = [v79 deviceIRK];
    v81 = [v80 data];

    if (v81)
    {
      [(HMDAppleMediaAccessory *)v36 postDeviceIRKIfDifferent:v81];
    }
  }

  v82 = [(HMDAppleMediaAccessory *)v36 pairingIdentity];

  v83 = v36;
  if (!v82)
  {
    goto LABEL_36;
  }

  if ([(HMDAppleMediaAccessory *)v36 isCurrentAccessory])
  {
    v84 = [(HMDAppleMediaAccessory *)v36 pairingIdentity];
    v85 = [v84 privateKey];

    if (!v85)
    {
      v86 = objc_autoreleasePoolPush();
      v87 = v36;
      v88 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v88, OS_LOG_TYPE_DEFAULT))
      {
        v89 = HMFGetLogIdentifier();
        *buf = 138543362;
        v139 = v89;
        _os_log_impl(&dword_2531F8000, v88, OS_LOG_TYPE_DEFAULT, "%{public}@Don't have private info recreate pairing identity", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v86);
      v83 = v87;
LABEL_36:
      [(HMDAppleMediaAccessory *)v83 createPairingIdentity];
      goto LABEL_37;
    }
  }

  [(HMDAppleMediaAccessory *)v36 _fixCloudKeyIfNeeded];
LABEL_37:
  [(HMDAppleMediaAccessory *)v36 updateProductInformation];
  v90 = [(HMDAppleMediaAccessory *)v36 softwareVersion];
  v91 = [MEMORY[0x277D0F8E8] productInfo];
  v92 = [v91 softwareVersion];
  v93 = HMFEqualObjects();

  if ((v93 & 1) == 0)
  {
    v94 = [(HMDAccessory *)v36 workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __100__HMDAppleMediaAccessory_configureWithHome_msgDispatcher_configurationTracker_initialConfiguration___block_invoke;
    block[3] = &unk_279735D00;
    block[4] = v36;
    dispatch_async(v94, block);
  }

  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    v95 = [MEMORY[0x277D0F8E8] productInfo];
    v96 = [v95 productClass];

    if (v96 == 6)
    {
      v97 = [(HMDMediaAccessory *)v36 notificationCenter];
      v98 = *MEMORY[0x277D0F768];
      [v97 removeObserver:v36 name:*MEMORY[0x277D0F768] object:0];

      v99 = [(HMDMediaAccessory *)v36 notificationCenter];
      [v99 addObserver:v36 selector:sel_handleCurrentNetworkChangedNotification_ name:v98 object:0];

      [(HMDAppleMediaAccessory *)v36 updateWiFiNetworkInfo];
    }
  }

  if ([(HMDAppleMediaAccessory *)v36 supportsTargetControl])
  {
    v100 = [(HMDAppleMediaAccessory *)v36 targetControlManager];

    if (!v100)
    {
      v101 = [[HMDTargetControlManager alloc] initWithTargetAccessory:v36 controllers:0];
      [(HMDAppleMediaAccessory *)v36 setTargetControlManager:v101];
    }
  }

  [(HMDAppleMediaAccessory *)v36 _fetchMultiUserLanguages];
  v102 = [(HMDMediaAccessory *)v36 notificationCenter];
  [v102 removeObserver:v36 name:@"HMDHomeUserRemovedNotification" object:0];

  v103 = [(HMDMediaAccessory *)v36 notificationCenter];
  [v103 addObserver:v36 selector:sel_handleHomeUserRemovedNotification_ name:@"HMDHomeUserRemovedNotification" object:v10];

  v104 = [HMDAppleMediaAccessoryMetricsDispatcher alloc];
  v105 = [v10 logEventSubmitter];
  v106 = [v10 dailyScheduler];
  v107 = [(HMDAppleMediaAccessoryMetricsDispatcher *)v104 initWithDataSource:v36 logEventSubmitter:v105 dailyScheduler:v106];
  [(HMDAppleMediaAccessory *)v36 setMetricsDispatcher:v107];

  v108 = [(HMDAppleMediaAccessory *)v36 metricsDispatcher];
  [v108 registerForDailySetRoomLogEvents];

  if (([v10 isMultiUserEnabled] & 1) == 0)
  {
    [v10 enableMultiUser];
  }

  v109 = [(HMDMediaAccessory *)v36 notificationCenter];
  [v109 addObserver:v36 selector:sel_handleCurrentDeviceIRKUpdated_ name:@"HMDAppleAccountManagerFetchedCurrentDeviceIRK" object:0];

  v110 = v36->_logger;
  if (os_signpost_enabled(v110))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_2531F8000, v110, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "ConfigureCurrentAccessory", "", buf, 2u);
  }

LABEL_50:
  if (_os_feature_enabled_impl() && [(HMDAppleMediaAccessory *)v36 isCurrentAccessory])
  {
    v111 = [HMDLegacyAccessorySettingsAdaptor alloc];
    v112 = [(HMDAccessory *)v36 workQueue];
    v113 = [v10 uuid];
    v114 = [(HMDAccessory *)v36 uuid];
    v115 = [(HMDAppleMediaAccessory *)v36 currentAccessorySettingsController];
    v116 = [v129 localOnlySubscriptionProvider];
    v117 = [(HMDLegacyAccessorySettingsAdaptor *)v111 initWithQueue:v112 homeUUID:v113 accessoryUUID:v114 settingsController:v115 subscriptionProvider:v116];

    [(HMDLegacyAccessorySettingsAdaptor *)v117 startup];
  }

  else
  {
    v117 = 0;
  }

  v118 = [(HMDAppleMediaAccessory *)v36 settingsController];
  [v118 configureIsSettingOwner:-[HMDAppleMediaAccessory isCurrentAccessory](v36 home:"isCurrentAccessory") legacySettingsAdaptor:{v10, v117}];

  v119 = [(HMDAppleMediaAccessory *)v36 settingsController];
  v120 = [v119 messageHandler];
  [v120 configureWithMessageDispatcher:v11];

  v121 = [(HMDAppleMediaAccessory *)v36 sleepWakeStateController];
  v122 = [(HMDAccessory *)v36 home];
  v123 = [(HMDAccessory *)v36 workQueue];
  [v121 configureWithHome:v122 messageDispatcher:v11 workQueue:v123];

  [(HMDAppleMediaAccessory *)v36 registerForPublishingNotifications];
  [(HMDAppleMediaAccessory *)v36 _configureGroupParticipantLocalDataStorageWithHome:v10];
  [(HMDAppleMediaAccessory *)v36 createOrUpdateSoftwareUpdateEventProviderIfNecessary];
  [(HMDAppleMediaAccessory *)v36 createSoftwareUpdateEventListenerIfNecessary];
  [(HMDDeviceController *)v36->_deviceController setDelegate:v36];
  v124 = [(HMDAccessory *)v36 workQueue];
  v131[0] = MEMORY[0x277D85DD0];
  v131[1] = 3221225472;
  v131[2] = __100__HMDAppleMediaAccessory_configureWithHome_msgDispatcher_configurationTracker_initialConfiguration___block_invoke_370;
  v131[3] = &unk_279729FD8;
  v135 = v130;
  v134 = v14;
  v131[4] = v36;
  v132 = v10;
  v133 = v128;
  v125 = v128;
  v126 = v10;
  dispatch_async(v124, v131);

  v127 = *MEMORY[0x277D85DE8];
}

void __100__HMDAppleMediaAccessory_configureWithHome_msgDispatcher_configurationTracker_initialConfiguration___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = [MEMORY[0x277D0F8E8] productInfo];
  v2 = [v3 softwareVersion];
  [v1 _updateSoftwareVersion:v2];
}

void __100__HMDAppleMediaAccessory_configureWithHome_msgDispatcher_configurationTracker_initialConfiguration___block_invoke_370(uint64_t a1)
{
  v55 = *MEMORY[0x277D85DE8];
  if (*(a1 + 64) == 1)
  {
    v2 = objc_autoreleasePoolPush();
    v3 = *(a1 + 32);
    v4 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = HMFGetLogIdentifier();
      v6 = MEMORY[0x277CCACA8];
      HMFUptime();
      v8 = [v6 stringWithFormat:@"%.3f", v7 - *(a1 + 56)];
      v9 = [*(a1 + 40) uuid];
      v10 = [*(a1 + 32) uuid];
      v11 = *(a1 + 32);
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      *buf = 138546434;
      v30 = v5;
      v31 = 2114;
      v32 = @"accessoryConfigureDone";
      v33 = 2112;
      v34 = @"Configured accessory";
      v35 = 2114;
      v36 = @"state";
      v37 = 2112;
      v38 = @"end";
      v39 = 2114;
      v40 = @"duration";
      v41 = 2112;
      v42 = v8;
      v43 = 2114;
      v44 = @"homeUUID";
      v45 = 2112;
      v46 = v9;
      v47 = 2114;
      v48 = @"accessoryUUID";
      v49 = 2112;
      v50 = v10;
      v51 = 2114;
      v52 = @"accessoryType";
      v53 = 2112;
      v54 = v13;
      _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, "%{public}@tag=%{public}@ desc=%@ %{public}@=%@ %{public}@=%@ %{public}@=%@ %{public}@=%@ %{public}@=%@", buf, 0x84u);
    }

    objc_autoreleasePoolPop(v2);
    v14 = [MEMORY[0x277D17DE8] sharedInstance];
    v15 = objc_alloc(MEMORY[0x277D17DF8]);
    v16 = MEMORY[0x277CCACA8];
    HMFUptime();
    v18 = [v16 stringWithFormat:@"%.3f", v17 - *(a1 + 56)];
    v19 = [*(a1 + 40) uuid];
    v20 = [*(a1 + 32) uuid];
    v21 = *(a1 + 32);
    v22 = objc_opt_class();
    v23 = NSStringFromClass(v22);
    v24 = HMDTaggedLoggingCreateDictionary();
    v25 = [v15 initWithTag:@"accessoryConfigureDone" data:{v24, @"state", @"end", @"duration", v18, @"homeUUID", v19, @"accessoryUUID", v20, @"accessoryType", v23}];
    v26 = [MEMORY[0x277D0F770] currentTagProcessorList];
    [v14 submitTaggedEvent:v25 processorList:v26];
  }

  v27 = *(a1 + 48);
  if (v27)
  {
    dispatch_group_leave(v27);
  }

  v28 = *MEMORY[0x277D85DE8];
}

- (void)_configureGroupParticipantLocalDataStorageWithHome:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(HMDAppleMediaAccessory *)self isCurrentAccessory])
  {
    if (isFeatureHomeTheaterQFAEnabledForTests && ([isFeatureHomeTheaterQFAEnabledForTests BOOLValue] & 1) != 0)
    {
      v5 = [v4 homeManager];
      v6 = [(HMDAccessory *)self msgDispatcher];
      v7 = [v5 mediaGroupParticipantDataLocalStorage];
      v8 = v7;
      if (v4 && v6 && v7)
      {
        [v7 configureWithHome:v4 messageDispatcher:v6];
      }

      else
      {
        v13 = objc_autoreleasePoolPush();
        v14 = self;
        v15 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          v16 = HMFGetLogIdentifier();
          v18 = 138544386;
          v19 = v16;
          v20 = 2112;
          v21 = v4;
          v22 = 2112;
          v23 = v6;
          v24 = 2112;
          v25 = v8;
          v26 = 2112;
          v27 = v5;
          _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@Failed to configure groups participant local data storage with dependencies home: %@ messageDispatcher: %@ dataStorage: %@ homeManager: %@", &v18, 0x34u);
        }

        objc_autoreleasePoolPop(v13);
      }
    }

    else
    {
      v9 = objc_autoreleasePoolPush();
      v10 = self;
      v11 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = HMFGetLogIdentifier();
        v18 = 138543362;
        v19 = v12;
        _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_ERROR, "%{public}@Home Theater QFA is not enabled", &v18, 0xCu);
      }

      objc_autoreleasePoolPop(v9);
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (HMDDoorbellChimeProfile)doorbellChimeProfile
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = [(HMDAccessory *)self accessoryProfiles];
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
LABEL_3:
    v6 = 0;
    while (1)
    {
      if (*v13 != v5)
      {
        objc_enumerationMutation(v2);
      }

      v7 = *(*(&v12 + 1) + 8 * v6);
      objc_opt_class();
      v8 = (objc_opt_isKindOfClass() & 1) != 0 ? v7 : 0;
      v9 = v8;

      if (v9)
      {
        break;
      }

      if (v4 == ++v6)
      {
        v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v4)
        {
          goto LABEL_3;
        }

        goto LABEL_12;
      }
    }
  }

  else
  {
LABEL_12:
    v7 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];

  return v7;
}

- (BOOL)_shouldFilterAccessoryProfileForEntitledClients:(id)a3
{
  v4 = a3;
  if ([(HMDAppleMediaAccessory *)self isCurrentAccessory]|| (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v7.receiver = self;
    v7.super_class = HMDAppleMediaAccessory;
    v5 = [(HMDAccessory *)&v7 _shouldFilterAccessoryProfileForEntitledClients:v4];
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (BOOL)_shouldFilterAccessoryProfileForUnentitledClients:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = HMDAppleMediaAccessory;
    v5 = [(HMDMediaAccessory *)&v7 _shouldFilterAccessoryProfileForUnentitledClients:v4];
  }

  return v5;
}

- (void)_registerForNotifications
{
  v2.receiver = self;
  v2.super_class = HMDAppleMediaAccessory;
  [(HMDMediaAccessory *)&v2 _registerForNotifications];
}

- (void)_registerForMessages
{
  v20[3] = *MEMORY[0x277D85DE8];
  v3 = [(HMDAccessory *)self home];
  v17.receiver = self;
  v17.super_class = HMDAppleMediaAccessory;
  [(HMDAccessory *)&v17 _registerForMessages];
  v4 = [(HMDAccessory *)self msgDispatcher];
  v5 = [HMDXPCMessagePolicy policyWithEntitlements:5];
  v20[0] = v5;
  v6 = +[HMDRemoteMessagePolicy defaultSecurePolicy];
  v20[1] = v6;
  v7 = [HMDUserMessagePolicy userMessagePolicyWithHome:v3 userPrivilege:3 remoteAccessRequired:0];
  v20[2] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:3];

  [v4 registerForMessage:*MEMORY[0x277CCEAB8] receiver:self policies:v8 selector:sel_handleFetchManagedConfigurationProfiles_];
  [v4 registerForMessage:*MEMORY[0x277CCECB8] receiver:self policies:v8 selector:sel_handleRemoveManagedConfigurationProfile_];
  [v4 registerForMessage:*MEMORY[0x277CCEB18] receiver:self policies:v8 selector:sel_handleInstallManagedConfigurationProfile_];

  v9 = [HMDXPCMessagePolicy policyWithEntitlements:5];
  v19[0] = v9;
  v10 = +[HMDRemoteMessagePolicy defaultSecurePolicy];
  v19[1] = v10;
  v11 = [HMDUserMessagePolicy userMessagePolicyWithHome:v3 userPrivilege:4 remoteAccessRequired:0];
  v19[2] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:3];

  [v4 registerForMessage:*MEMORY[0x277CD1070] receiver:self policies:v12 selector:sel__fetchAvailableUpdate_];
  [v4 registerForMessage:*MEMORY[0x277CD1080] receiver:self policies:v12 selector:sel__startUpdate_];
  [v4 registerForMessage:*MEMORY[0x277CCEA08] receiver:self policies:v12 selector:sel_handleDeleteSiriHistoryRequest_];
  [v4 registerForMessage:*MEMORY[0x277CCF0D0] receiver:self policies:v12 selector:sel_handleUpdatePreferredMediaUser_];
  [v4 registerForMessage:*MEMORY[0x277CCEF08] receiver:self policies:v12 selector:sel_handleSoftwareUpdateV2Scan_];
  [v4 registerForMessage:*MEMORY[0x277CCECF0] receiver:self policies:v12 selector:sel__handleScanNetworksMessage_];
  [v4 registerForMessage:*MEMORY[0x277CCEB30] receiver:self policies:v12 selector:sel__handleAssociateToNetworkMessage_];
  [v4 registerForMessage:*MEMORY[0x277CCF118] receiver:self policies:v12 selector:sel__handleQueryNetworkStatusMessage_];

  if (isInternalBuild())
  {
    v13 = [HMDUserMessagePolicy userMessagePolicyWithHome:v3 userPrivilege:0 remoteAccessRequired:0];
    v14 = [HMDXPCMessagePolicy policyWithEntitlements:13];
    v18[0] = v14;
    v18[1] = v13;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:2];

    [v4 registerForMessage:*MEMORY[0x277CCF0A8] receiver:self policies:v15 selector:sel__handleTriggerPairingIdentityUpdateNotification_];
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (NSString)description
{
  v16 = MEMORY[0x277CCACA8];
  v15 = objc_opt_class();
  v19 = [(HMDAccessory *)self uuid];
  v14 = [v19 UUIDString];
  v21 = [(HMDMediaAccessory *)self name];
  v20 = [(HMDAccessory *)self identifier];
  v18 = [(HMDAccessory *)self category];
  v13 = [v18 name];
  v3 = [(HMDAppleMediaAccessory *)self softwareVersion];
  v4 = [(HMDAccessory *)self softwareUpdate];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDAppleMediaAccessory supportedStereoPairVersions](self, "supportedStereoPairVersions")}];
  if ([(HMDAppleMediaAccessory *)self isCurrentAccessory])
  {
    v6 = @" isCurrent = YES,";
  }

  else
  {
    v6 = &stru_286509E58;
  }

  v7 = [(HMDAppleMediaAccessory *)self device];
  v8 = [(HMDAccessory *)self home];
  v9 = [v8 name];
  v10 = [(HMDAccessory *)self room];
  v11 = [v10 uuid];
  v17 = [v16 stringWithFormat:@"<%@, UUID = %@, Name = %@, Identifier = %@, Category = %@, Version = %@, Update = %@, Stereo Pair Versions = %@, %@ Device = %@, Home = %@, RoomUUID = %@>", v15, v14, v21, v20, v13, v3, v4, v5, v6, v7, v9, v11];

  return v17;
}

- (void)dealloc
{
  v3 = [(HMDMediaAccessory *)self notificationCenter];
  [v3 removeObserver:self];

  v4 = [(HMDAppleMediaAccessory *)self targetControlManager];
  [v4 invalidate];

  [(HMDAppleMediaAccessory *)self setTargetControlManager:0];
  v5.receiver = self;
  v5.super_class = HMDAppleMediaAccessory;
  [(HMDAccessory *)&v5 dealloc];
}

- (HMDAppleMediaAccessory)initWithDeviceController:(id)a3 deviceIdentifierFactory:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [(HMDAppleMediaAccessory *)self init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_deviceController, a3);
    v11 = _Block_copy(v8);
    deviceMediaRouteIdentifierFactory = v10->_deviceMediaRouteIdentifierFactory;
    v10->_deviceMediaRouteIdentifierFactory = v11;
  }

  return v10;
}

- (HMDAppleMediaAccessory)init
{
  v18.receiver = self;
  v18.super_class = HMDAppleMediaAccessory;
  v2 = [(HMDMediaAccessory *)&v18 init];
  if (v2)
  {
    v3 = HMFGetOSLogHandle();
    logger = v2->_logger;
    v2->_logger = v3;

    v5 = objc_alloc_init(HMDAppleMediaAccessoryModelDataSource);
    modelDataSource = v2->_modelDataSource;
    v2->_modelDataSource = v5;

    v2->_deviceReachable = 1;
    settingsConnectionFactory = v2->_settingsConnectionFactory;
    v2->_settingsConnectionFactory = &__block_literal_global_285;

    deviceMediaRouteIdentifierFactory = v2->_deviceMediaRouteIdentifierFactory;
    v2->_deviceMediaRouteIdentifierFactory = &__block_literal_global_287;

    v9 = [HMDAppleMediaAccessorySleepWakeStateController alloc];
    v10 = [(HMDAccessory *)v2 uuid];
    v11 = [(HMDAppleMediaAccessorySleepWakeStateController *)v9 initWithAccessoryUUID:v10 dataSource:v2];
    sleepWakeStateController = v2->_sleepWakeStateController;
    v2->_sleepWakeStateController = v11;

    v13 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    hostedAccessories = v2->_hostedAccessories;
    v2->_hostedAccessories = v13;

    v2->_productColor = 0;
    objc_storeWeak(&v2->_mediaDestinationControllerFactory, v2);
    objc_storeWeak(&v2->_mediaDestinationManagerFactory, v2);
    v15 = objc_alloc_init(HMDAppleMediaAccessoryDependencyFactory);
    dependencyFactory = v2->_dependencyFactory;
    v2->_dependencyFactory = v15;
  }

  return v2;
}

id __30__HMDAppleMediaAccessory_init__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CEF3A8]);

  return v0;
}

- (HMDAppleMediaAccessory)initWithDependencyFactory:(id)a3 deviceMediaRouteIdentifierFactory:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [(HMDAppleMediaAccessory *)self init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_dependencyFactory, a3);
    if (v8)
    {
      v11 = _Block_copy(v8);
      deviceMediaRouteIdentifierFactory = v10->_deviceMediaRouteIdentifierFactory;
      v10->_deviceMediaRouteIdentifierFactory = v11;
    }
  }

  return v10;
}

- (HMDAppleMediaAccessory)initWithTransaction:(id)a3 home:(id)a4 dependencyFactory:(id)a5
{
  v60 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = v9;
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
    v15 = [v14 deviceUUID];

    if (v15)
    {
      v16 = objc_alloc(MEMORY[0x277CCAD78]);
      v17 = [v14 deviceUUID];
      v5 = [v16 initWithUUIDString:v17];

      v15 = [v11 deviceControllerWithDeviceIdentifier:v5];
    }

    v18 = [v14 device];

    if (v18)
    {
      if (!v15)
      {
        v19 = [v14 device];
        v15 = [v11 deviceControllerWithDevice:v19];
      }

      v20 = [v14 device];
      [v15 updateWithDevice:v20 completionHandler:0];
    }

    if (!v15)
    {
      v21 = objc_autoreleasePoolPush();
      v5 = self;
      v22 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        HMFGetLogIdentifier();
        v55 = v10;
        v24 = v23 = v11;
        *buf = 138543362;
        v59 = v24;
        _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_INFO, "%{public}@Unable to determine device", buf, 0xCu);

        v11 = v23;
        v10 = v55;
      }

      objc_autoreleasePoolPop(v21);
    }

    v57.receiver = self;
    v57.super_class = HMDAppleMediaAccessory;
    v25 = [(HMDMediaAccessory *)&v57 initWithTransaction:v12 home:v10];
    if (v25)
    {
      v56 = v10;
      v26 = HMFGetOSLogHandle();
      logger = v25->_logger;
      v25->_logger = v26;

      v28 = objc_alloc_init(HMDAppleMediaAccessoryModelDataSource);
      modelDataSource = v25->_modelDataSource;
      v25->_modelDataSource = v28;

      objc_storeStrong(&v25->_deviceController, v15);
      v30 = [v14 softwareVersion];
      softwareVersion = v25->_softwareVersion;
      v25->_softwareVersion = v30;

      v32 = [v14 pairingIdentity];
      pairingIdentity = v25->_pairingIdentity;
      v25->_pairingIdentity = v32;

      settingsConnectionFactory = v25->_settingsConnectionFactory;
      v25->_settingsConnectionFactory = &__block_literal_global_94821;

      deviceMediaRouteIdentifierFactory = v25->_deviceMediaRouteIdentifierFactory;
      v25->_deviceMediaRouteIdentifierFactory = &__block_literal_global_279_94822;

      v36 = [v14 idsIdentifier];
      v37 = v36;
      if (!v36)
      {
        v5 = [v14 device];
        v37 = [(HMDAppleMediaAccessory *)v5 idsIdentifier];
      }

      v38 = v11;
      objc_storeStrong(&v25->_idsIdentifier, v37);
      if (!v36)
      {
      }

      v39 = [v14 loggedInAccount];
      v40 = [[HMDRemoteLoginHandler alloc] initWithAccessory:v25 loggedInAccountData:v39];
      remoteLoginHandler = v25->_remoteLoginHandler;
      v25->_remoteLoginHandler = v40;

      v42 = [v14 supportedStereoPairVersions];
      v25->_supportedStereoPairVersions = [v42 unsignedIntegerValue];

      v43 = [HMDAppleMediaAccessorySleepWakeStateController alloc];
      v44 = [(HMDAccessory *)v25 uuid];
      v45 = [(HMDAppleMediaAccessorySleepWakeStateController *)v43 initWithAccessoryUUID:v44 dataSource:v25];
      sleepWakeStateController = v25->_sleepWakeStateController;
      v25->_sleepWakeStateController = v45;

      __bootstrapSupportedStereoPairVersions(v25);
      v47 = [v14 productColor];
      v25->_productColor = [v47 unsignedIntegerValue];

      objc_storeStrong(&v25->_dependencyFactory, a5);
      v11 = v38;
      v10 = v56;
    }

    v48 = v25;

    v49 = v48;
  }

  else
  {
    v50 = objc_autoreleasePoolPush();
    v48 = self;
    v51 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
    {
      v52 = HMFGetLogIdentifier();
      *buf = 138543362;
      v59 = v52;
      _os_log_impl(&dword_2531F8000, v51, OS_LOG_TYPE_ERROR, "%{public}@Cannot initialize an AppleMedia accessory without an AppleMedia model.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v50);
    v49 = 0;
  }

  v53 = *MEMORY[0x277D85DE8];
  return v49;
}

id __69__HMDAppleMediaAccessory_initWithTransaction_home_dependencyFactory___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CEF3A8]);

  return v0;
}

- (HMDAppleMediaAccessory)initWithTransaction:(id)a3 home:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(HMDAppleMediaAccessoryDependencyFactory);
  v9 = [(HMDAppleMediaAccessory *)self initWithTransaction:v7 home:v6 dependencyFactory:v8];

  return v9;
}

- (id)assistantObject
{
  v88 = *MEMORY[0x277D85DE8];
  v77.receiver = self;
  v77.super_class = HMDAppleMediaAccessory;
  v3 = [(HMDMediaAccessory *)&v77 assistantObject];
  v4 = [v3 mutableCopy];

  v5 = [(HMDAccessory *)self category];
  v6 = [v5 categoryType];
  v7 = [v6 isEqual:*MEMORY[0x277CCE870]];

  if (v7)
  {
    v8 = MEMORY[0x277D481C0];
    v9 = MEMORY[0x277D48270];
    goto LABEL_5;
  }

  v10 = [v5 categoryType];
  v11 = [v10 isEqual:*MEMORY[0x277CCE8B0]];

  if (v11)
  {
    v8 = MEMORY[0x277D48200];
    v9 = MEMORY[0x277D48350];
LABEL_5:
    v12 = *v9;
    v13 = *v8;
    if (v12)
    {
      v14 = v13 == 0;
    }

    else
    {
      v14 = 1;
    }

    v62 = v13;
    if (!v14)
    {
      v82[0] = @"objectServiceType";
      v82[1] = @"objectServiceSubType";
      v83[0] = v12;
      v83[1] = v13;
      v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v83 forKeys:v82 count:2];
      [v4 addEntriesFromDictionary:v15];
    }

    goto LABEL_13;
  }

  v16 = objc_autoreleasePoolPush();
  v17 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    v18 = HMFGetLogIdentifier();
    *buf = 138543618;
    v85 = v18;
    v86 = 2112;
    v87 = v5;
    _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_INFO, "%{public}@Apple media accessory with invalid accessory category: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v16);
  v12 = 0;
  v62 = 0;
LABEL_13:
  v19 = [(HMDAccessory *)self home];
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  v20 = [v19 mediaSystems];
  v21 = [v20 copy];

  v22 = [v21 countByEnumeratingWithState:&v73 objects:v81 count:16];
  v64 = v19;
  v65 = v4;
  v63 = v5;
  if (v22)
  {
    v23 = v22;
    v24 = v12;
    v25 = *v74;
    while (2)
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v74 != v25)
        {
          objc_enumerationMutation(v21);
        }

        v27 = *(*(&v73 + 1) + 8 * i);
        v28 = [v27 accessories];
        v29 = [v28 containsObject:self];

        if (v29)
        {
          v31 = [v27 name];
          v30 = [v27 urlString];
          goto LABEL_23;
        }
      }

      v23 = [v21 countByEnumeratingWithState:&v73 objects:v81 count:16];
      if (v23)
      {
        continue;
      }

      break;
    }

    v30 = 0;
    v31 = 0;
LABEL_23:
    v12 = v24;
    v19 = v64;
    v4 = v65;
  }

  else
  {
    v30 = 0;
    v31 = 0;
  }

  v32 = [(HMDAppleMediaAccessory *)self audioDestinationController];
  v33 = [v32 data];
  v34 = [v33 destinationIdentifier];

  if (v34)
  {
    v35 = [(HMDMediaAccessory *)self name];

    v36 = [v32 urlString];

    v30 = v36;
    v31 = v35;
  }

  v37 = [(HMDAppleMediaAccessory *)self audioDestination];
  v38 = v37;
  if (!v31 && v37)
  {
    v67 = v37;
    v68 = v30;
    v59 = v33;
    v60 = v32;
    v61 = v12;
    v39 = [v19 accessories];
    v40 = [v39 na_map:&__block_literal_global_115782];

    v71 = 0u;
    v72 = 0u;
    v69 = 0u;
    v70 = 0u;
    obj = v40;
    v41 = [obj countByEnumeratingWithState:&v69 objects:v80 count:16];
    if (v41)
    {
      v42 = v41;
      v43 = 0;
      v44 = *v70;
      do
      {
        for (j = 0; j != v42; ++j)
        {
          if (*v70 != v44)
          {
            objc_enumerationMutation(obj);
          }

          v46 = *(*(&v69 + 1) + 8 * j);
          v47 = [v46 audioDestinationController];
          v48 = [v47 data];
          v49 = [v48 destinationIdentifier];
          v50 = [v67 uniqueIdentifier];
          v51 = [v49 hmf_isEqualToUUID:v50];

          if (v51)
          {
            v52 = [v46 name];

            v53 = [v47 urlString];

            v68 = v53;
            v43 = v52;
          }
        }

        v42 = [obj countByEnumeratingWithState:&v69 objects:v80 count:16];
      }

      while (v42);
    }

    else
    {
      v43 = 0;
    }

    v19 = v64;
    v4 = v65;
    v32 = v60;
    v12 = v61;
    v38 = v67;
    v30 = v68;
    v33 = v59;
    v31 = v43;
  }

  if (v31 && v30)
  {
    v79 = v31;
    v54 = [MEMORY[0x277CBEA60] arrayWithObjects:&v79 count:1];
    [v4 setObject:v54 forKey:@"objectGroups"];

    v78 = v30;
    v55 = [MEMORY[0x277CBEA60] arrayWithObjects:&v78 count:1];
    [v4 setObject:v55 forKey:@"objectGroupIdentifiers"];
  }

  v56 = [v4 copy];

  v57 = *MEMORY[0x277D85DE8];

  return v56;
}

void *__52__HMDAppleMediaAccessory_Assistant__assistantObject__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
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

  return v3;
}

- (id)languageValueList
{
  v2 = [(HMDAppleMediaAccessory *)self settingsController];
  v3 = [v2 languageValueList];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = MEMORY[0x277CBEBF8];
  }

  v6 = v5;

  return v5;
}

- (id)createAppleMediaAccessoryMessengerWithIdentifier:(id)a3 messageDispatcher:(id)a4 router:(id)a5 localHandler:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [[HMDAppleMediaAccessoryMessenger alloc] initWithIdentifier:v12 messageDispatcher:v11 router:v10 localHandler:v9];

  return v13;
}

- (void)configureAppleMediaAccessoryMessengerWithFactory:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDAccessory *)self uuid];
  v6 = [(HMDAccessory *)self msgDispatcher];
  v7 = [(HMDAccessory *)self home];
  if (!v5)
  {
    _HMFPreconditionFailure();
LABEL_10:
    _HMFPreconditionFailure();
  }

  if (!v6)
  {
    goto LABEL_10;
  }

  v8 = v7;
  if (v7)
  {
    v9 = [[HMDAppleMediaAccessoryMessageRouter alloc] initWithIdentifier:v5 messageDispatcher:v6];
    [(HMDAppleMediaAccessoryMessageRouter *)v9 setDataSource:self];
    v10 = [HMDAssistantSettingsConnection alloc];
    v11 = [MEMORY[0x277D0F8F0] defaultScheduler];
    v12 = [(HMDAssistantSettingsConnection *)v10 initWithScheduler:v11];

    [(HMDAssistantSettingsConnection *)v12 setDataSource:v12];
    v13 = [[HMDAppleMediaAccessoryLocalMessageHandler alloc] initWithIdentifier:v5 assistantSettingsConnection:v12];
    [(HMDAppleMediaAccessoryLocalMessageHandler *)v13 setDataSource:self];
    v14 = [v4 createAppleMediaAccessoryMessengerWithIdentifier:v5 messageDispatcher:v6 router:v9 localHandler:v13];
    [v14 registerForMessagesWithHome:v8];
    [(HMDAppleMediaAccessory *)self setMessenger:v14];
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    v16 = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      v20 = 138543362;
      v21 = v18;
      _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_ERROR, "%{public}@Failed to configure apple media accessory due to no home on accessory", &v20, 0xCu);
    }

    objc_autoreleasePoolPop(v15);
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (BOOL)isCurrentDevicePrimaryResident
{
  v2 = [(HMDAccessory *)self home];
  v3 = [v2 isCurrentDevicePrimaryResident];

  return v3;
}

@end