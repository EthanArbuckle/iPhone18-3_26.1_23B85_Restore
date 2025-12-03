@interface HMDAppleMediaAccessory
+ (BOOL)shouldAcceptMessage:(id)message home:(id)home privilege:(unint64_t)privilege;
+ (id)logCategory;
+ (id)messageBindingForDispatcher:(id)dispatcher message:(id)message receiver:(id)receiver;
- (BOOL)_shouldFilterAccessoryProfileForEntitledClients:(id)clients;
- (BOOL)_shouldFilterAccessoryProfileForUnentitledClients:(id)clients;
- (BOOL)accountHasSentinelZoneForAppleMediaAccessorySensorManager:(id)manager;
- (BOOL)hasValidHome:(id)home backingStore:(id)store messageDispatcher:(id)dispatcher;
- (BOOL)isAppleTV;
- (BOOL)isCurrentAccessory;
- (BOOL)isCurrentDevicePrimaryResident;
- (BOOL)isDeviceReachable;
- (BOOL)isDoorbellChimeSettingEnabled;
- (BOOL)isHH1EOLEnabled;
- (BOOL)isHomePod;
- (BOOL)isMultiUserEnabledForAccessorySettingsController:(id)controller;
- (BOOL)isReadyForSensorPairing:(id)pairing;
- (BOOL)isRemotelyReachable;
- (BOOL)isResidentConfirmedForAppleMediaAccessorySensorManager:(id)manager;
- (BOOL)legacyLocationServicesEnabled;
- (BOOL)shouldUpdateWithDevice:(id)device initialConfiguration:(BOOL)configuration;
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
- (HMDAppleMediaAccessory)accessoryWithUUID:(id)d forAppleMediaAccessoryLocalMessageHandler:(id)handler;
- (HMDAppleMediaAccessory)accessoryWithUUID:(id)d forAppleMediaAccessorySensorManager:(id)manager;
- (HMDAppleMediaAccessory)init;
- (HMDAppleMediaAccessory)initWithCoder:(id)coder;
- (HMDAppleMediaAccessory)initWithDependencyFactory:(id)factory deviceMediaRouteIdentifierFactory:(id)identifierFactory;
- (HMDAppleMediaAccessory)initWithDeviceController:(id)controller deviceIdentifierFactory:(id)factory;
- (HMDAppleMediaAccessory)initWithTransaction:(id)transaction home:(id)home;
- (HMDAppleMediaAccessory)initWithTransaction:(id)transaction home:(id)home dependencyFactory:(id)factory;
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
- (id)_dumpStateCachedSettingsForHome:(id)home accessory:(id)accessory eventStoreReadHandle:(id)handle;
- (id)_initWithCoder:(id)coder;
- (id)_scanForSoftwareUpdate;
- (id)_scanForSoftwareUpdateWithRetries;
- (id)_softwareUpdateV2FromDescriptor:(id)descriptor;
- (id)accessoriesWithHostUUID:(id)d forAppleMediaAccessorySensorManager:(id)manager;
- (id)accessoryBrowserForAppleMediaAccessorySensorManager:(id)manager;
- (id)accessoryInfoControllerSoftwareVersionTopicForController:(id)controller;
- (id)accessoryInfoControllerTopicForWifiInfo;
- (id)appleMediaProfileForAccessoryUUID:(id)d;
- (id)assistantAccessControlModelWithRemovedAccessoriesForAccessorySettingsController:(id)controller;
- (id)assistantObject;
- (id)availableDestinationIdentifiersForMediaDestinationController:(id)controller;
- (id)backingStoreObjectForMediaDestination;
- (id)backingStoreObjectForMediaDestinationControllerData;
- (id)backingStoreObjects:(int64_t)objects;
- (id)committedAudioDestination;
- (id)committedAudioDestinationControllerData;
- (id)controller:(id)controller topicForKeyPath:(id)path;
- (id)createAppleMediaAccessoryMessengerWithIdentifier:(id)identifier messageDispatcher:(id)dispatcher router:(id)router localHandler:(id)handler;
- (id)currentAccessorySoftwareVersion;
- (id)currentDestinationTypeForMediaDestinationControllerMetricsEventDispatcher:(id)dispatcher;
- (id)currentRoomForAppleMediaAccessoryMetricsDispatcher:(id)dispatcher;
- (id)currentUserForMediaDestinationControllerMetricsEventDispatcher:(id)dispatcher;
- (id)deviceMonitor;
- (id)dumpSimpleState;
- (id)dumpStateLocalSettings;
- (id)dumpStateWithPrivacyLevel:(unint64_t)level;
- (id)eventSourceIdentifierNameForAccessoryInfoController:(id)controller;
- (id)eventSourceIdentifierNameForFetchedSettingsController:(id)controller;
- (id)fetchSentinelZoneDidFinishFutureForAppleMediaAccessorySensorManager:(id)manager;
- (id)homeUUID;
- (id)homeUUIDForAppleMediaAccessorySensorManager:(id)manager;
- (id)idsIdentifierInternal;
- (id)languageValueList;
- (id)legacyAudioDestination;
- (id)legacyAudioDestinationControllerData;
- (id)legacyCommittedAudioDestination;
- (id)legacyCommittedAudioDestinationControllerData;
- (id)logIdentifier;
- (id)mediaDestinationController:(id)controller destinationManagerWithIdentifier:(id)identifier;
- (id)mediaDestinationController:(id)controller destinationWithParentIdentifier:(id)identifier;
- (id)mediaDestinationController:(id)controller rootDestinationWithDecendantIdentifier:(id)identifier;
- (id)mediaDestinationControllerWithData:(id)data backingStore:(id)store messageDispatcher:(id)dispatcher notificationCenter:(id)center logEventSubmitter:(id)submitter dailyScheduler:(id)scheduler targetDevice:(BOOL)device dataSource:(id)self0 delegate:(id)self1;
- (id)mediaDestinationManager:(id)manager destinationControllerWithIdentifier:(id)identifier;
- (id)mediaGroupLocalDataStorageForMediaDestinationController:(id)controller;
- (id)mediaGroupParticipantDataLocalStorage;
- (id)mediaGroupParticipantLocalDataStorageForMediaDestinationManager:(id)manager;
- (id)messageSendPolicy;
- (id)modelObjectWithChangeType:(unint64_t)type;
- (id)modelsToMakeSettingsForController:(id)controller parentUUID:(id)d;
- (id)modelsToMigrateSettingsForController:(id)controller;
- (id)remoteMessageDestination;
- (id)remoteMessageDestinationForAccessorySettingsController:(id)controller target:(id)target;
- (id)residentNotificationObjectForAppleMediaAccessorySensorManager:(id)manager;
- (id)rootDestinationManagerForMediaDestinationManager:(id)manager;
- (id)runtimeState;
- (id)subscriptionProvider;
- (id)transactionWithObjectChangeType:(unint64_t)type;
- (int64_t)mediaDestinationControllerMetricsEventDispatcher:(id)dispatcher destinationTypeForDestinationWithIdentifier:(id)identifier;
- (int64_t)numberOfActionSetsWithCurrentAccessoryMediaActionForAppleMediaAccessoryMetricsDispatcher:(id)dispatcher;
- (int64_t)numberOfCurrentAccessoryPairedSensorsForAppleMediaAccessoryMetricsDispatcher:(id)dispatcher;
- (int64_t)numberOfTriggersWithCurrentAccessoryPairedSensorsForAppleMediaAccessoryMetricsDispatcher:(id)dispatcher;
- (int64_t)productColor;
- (int64_t)reachableTransports;
- (unint64_t)expectedDestinationSupportOptions;
- (unint64_t)homePodVariant;
- (unint64_t)supportedStereoPairVersions;
- (void)_applySoftwareUpdateModel:(id)model completion:(id)completion;
- (void)_applySoftwareUpdateWithDescriptor:(id)descriptor;
- (void)_configureGroupParticipantLocalDataStorageWithHome:(id)home;
- (void)_encodeMediaDestinationAndControllerDataWithCoder:(id)coder;
- (void)_encodeWithCoder:(id)coder;
- (void)_fetchAvailableUpdate:(id)update;
- (void)_fetchMultiUserLanguages;
- (void)_fixCloudKeyIfNeeded;
- (void)_handleTriggerPairingIdentityUpdateNotification:(id)notification;
- (void)_handleUpdatedName:(id)name;
- (void)_handleWiFiPickerMessage:(id)message withName:(id)name;
- (void)_installManagedConfigurationProfileWithData:(id)data completion:(id)completion;
- (void)_legacyEncodeMediaDestinationAndControllerDataWithCoder:(id)coder;
- (void)_registerForMessages;
- (void)_registerForNotifications;
- (void)_relayRequestMessage:(id)message responseHandler:(id)handler;
- (void)_removeManagedConfigurationProfileWithIdentifier:(id)identifier completion:(id)completion;
- (void)_startUpdate:(id)update;
- (void)_updateSoftwareVersion:(id)version;
- (void)accessoryInfoController:(id)controller didUpdateWifiInfo:(id)info;
- (void)accessorySettingsController:(id)controller saveWithReason:(id)reason;
- (void)accessorySettingsController:(id)controller saveWithReason:(id)reason model:(id)model;
- (void)addAdvertisement:(id)advertisement;
- (void)addHostedAccessory:(id)accessory;
- (void)addUser:(id)user completionHandler:(id)handler;
- (void)autoConfigureTargetControllers;
- (void)configureAppleMediaAccessoryMessengerWithFactory:(id)factory;
- (void)configureAudioDestinationController;
- (void)configureAudioDestinationManager;
- (void)configureWithHome:(id)home msgDispatcher:(id)dispatcher configurationTracker:(id)tracker initialConfiguration:(BOOL)configuration;
- (void)createAudioDestination;
- (void)createAudioDestinationController;
- (void)createPairingIdentity;
- (void)dealloc;
- (void)deleteSiriHistoryForAccessoryWithUUID:(id)d completionHandler:(id)handler;
- (void)encodeFlagsFromHostedAccessories:(id)accessories coder:(id)coder;
- (void)encodeServicesFromHostedAccessories:(id)accessories coder:(id)coder;
- (void)encodeWithCoder:(id)coder;
- (void)handleCurrentDeviceIRKUpdated:(id)updated;
- (void)handleCurrentDeviceUpdated:(id)updated;
- (void)handleCurrentNetworkChangedNotification:(id)notification;
- (void)handleDeleteSiriHistoryRequest:(id)request;
- (void)handleDeviceIsNotReachable:(id)reachable;
- (void)handleDeviceIsPublishingChangedNotification:(id)notification;
- (void)handleDeviceIsReachable:(id)reachable;
- (void)handleFetchManagedConfigurationProfiles:(id)profiles;
- (void)handleHomeUserRemovedNotification:(id)notification;
- (void)handleInstallManagedConfigurationProfile:(id)profile;
- (void)handleRemoveManagedConfigurationProfile:(id)profile;
- (void)handleRemovedMediaDestinationControllerModel:(id)model message:(id)message;
- (void)handleRemovedMediaDestinationModel:(id)model message:(id)message;
- (void)handleRoomChanged:(id)changed;
- (void)handleRoomNameChanged:(id)changed;
- (void)handleSoftwareUpdateV2Scan:(id)scan;
- (void)handleTransactionUpdatedPublicPairingIdentity:(id)identity result:(id)result;
- (void)handleUpdatePreferredMediaUser:(id)user;
- (void)handleUpdatedMediaDestinationControllerModel:(id)model message:(id)message;
- (void)handleUpdatedMediaDestinationModel:(id)model message:(id)message;
- (void)languagesChangedForAccessorySettingsController:(id)controller;
- (void)legacyCreateAudioDestinationControllerWithControllerIdentifier:(id)identifier;
- (void)legacyCreateAudioDestinationWithIdentifier:(id)identifier supportedOptions:(unint64_t)options;
- (void)mediaDestinationControllerDidUpdateStagedValues:(id)values;
- (void)mediaDestinationManagerDidUpdateStagedValues:(id)values;
- (void)mergeAudioDestination:(id)destination;
- (void)mergeAudioDestinationControllerData:(id)data;
- (void)migrateAudioDestinationControllerWithCloudZone:(id)zone migrationQueue:(id)queue completion:(id)completion;
- (void)migrateAudioDestinationWithCloudZone:(id)zone migrationQueue:(id)queue completion:(id)completion;
- (void)migrateLocalParticipantData;
- (void)migrateWithCloudZone:(id)zone migrationQueue:(id)queue completion:(id)completion;
- (void)notifyClientsOfUpdatedAccessoryControllableValue:(BOOL)value;
- (void)notifyFrameworkOfUpdatedPairingIdentity;
- (void)pairingsWithCompletionHandler:(id)handler;
- (void)performAfterDelay:(double)delay block:(id)block queue:(id)queue;
- (void)performLocalAddAccessoryWithDescription:(id)description progressHandlerDelegate:(id)delegate completion:(id)completion;
- (void)populateModelObject:(id)object version:(int64_t)version;
- (void)postDeviceIRKIfDifferent:(id)different;
- (void)registerForPublishingNotifications;
- (void)removeAdvertisement:(id)advertisement;
- (void)removeAudioDestination;
- (void)removeHostedAccessory:(id)accessory;
- (void)removeManagedConfigurationProfileWithProfileData:(id)data completion:(id)completion;
- (void)removeUser:(id)user completionHandler:(id)handler;
- (void)renameService:(id)service name:(id)name;
- (void)runTransactionWithPreferredMediaUserUUID:(id)d selectionType:(unint64_t)type completion:(id)completion;
- (void)setCapabilitiesInternal:(id)internal;
- (void)setDeviceController:(id)controller;
- (void)setIdsIdentifier:(id)identifier;
- (void)setLastStagedWifiNetworkInfo:(id)info;
- (void)setPairingIdentity:(id)identity;
- (void)setProductColor:(int64_t)color;
- (void)setRawCapabilities:(id)capabilities;
- (void)setRemotelyReachable:(BOOL)reachable;
- (void)setSetupActivity:(id)activity;
- (void)setSetupStartTimestamp:(double)timestamp;
- (void)setSoftwareVersion:(id)version;
- (void)setSupportedStereoPairVersions:(unint64_t)versions;
- (void)setWifiNetworkInfo:(id)info;
- (void)startMonitoringReachability;
- (void)transactionObjectRemoved:(id)removed message:(id)message;
- (void)transactionObjectUpdated:(id)updated newValues:(id)values message:(id)message;
- (void)unconfigure;
- (void)unsetAudioDestination;
- (void)unsetAudioDestinationControllerData;
- (void)updatePreferredMediaUser:(id)user selectionType:(unint64_t)type;
- (void)updatePreferredMediaUserWithUUID:(id)d selectionType:(unint64_t)type completion:(id)completion;
- (void)updateProductInformation;
- (void)updateReachabilityFromDevicePublishingState;
- (void)updateWiFiNetworkInfo;
- (void)updateWithDevice:(id)device;
@end

@implementation HMDAppleMediaAccessory

- (void)deleteSiriHistoryForAccessoryWithUUID:(id)d completionHandler:(id)handler
{
  v22 = *MEMORY[0x277D85DE8];
  dCopy = d;
  handlerCopy = handler;
  messenger = [(HMDAppleMediaAccessory *)self messenger];
  v9 = messenger;
  if (messenger)
  {
    [messenger sendDeleteSiriHistoryRequestForAccessoryWithUUID:dCopy completionHandler:handlerCopy];
  }

  else
  {
    v10 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:4];
    v11 = objc_autoreleasePoolPush();
    selfCopy = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v16 = 138543874;
      v17 = v14;
      v18 = 2112;
      v19 = dCopy;
      v20 = 2112;
      v21 = v10;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_ERROR, "%{public}@Failed to get messenger to delete siri history for accessory with uuid: %@ error: %@", &v16, 0x20u);
    }

    objc_autoreleasePoolPop(v11);
    handlerCopy[2](handlerCopy, v10);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (BOOL)supportsHomeHub
{
  v19 = *MEMORY[0x277D85DE8];
  capabilities = [(HMDAppleMediaAccessory *)self capabilities];
  v4 = capabilities;
  if (capabilities)
  {
    supportsHomeHub = [capabilities supportsHomeHub];
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
    selfCopy = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      device = [(HMDAppleMediaAccessory *)selfCopy device];
      v13 = 138543874;
      v14 = v9;
      v15 = 2112;
      v16 = device;
      v17 = 2112;
      v18 = 0;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_ERROR, "%{public}@Failed to get supports home hub due to no capabilities or device: %@, capabilities: %@", &v13, 0x20u);
    }

    objc_autoreleasePoolPop(v6);
    supportsHomeHub = 0;
  }

  v11 = *MEMORY[0x277D85DE8];
  return supportsHomeHub;
}

- (HMDAppleMediaAccessory)accessoryWithUUID:(id)d forAppleMediaAccessoryLocalMessageHandler:(id)handler
{
  dCopy = d;
  home = [(HMDAccessory *)self home];
  v7 = [home accessoryWithUUID:dCopy];

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
  home = [(HMDAccessory *)self home];
  homeManager = [home homeManager];

  softwareVersion = [(HMDAppleMediaAccessory *)self softwareVersion];
  LOBYTE(home) = [homeManager isHH1EOLForResidentDeviceRunningSoftwareVersion:softwareVersion];

  return home;
}

- (void)performAfterDelay:(double)delay block:(id)block queue:(id)queue
{
  v6 = (delay * 1000000000.0);
  queueCopy = queue;
  block = block;
  v8 = dispatch_time(0, v6);
  dispatch_after(v8, queueCopy, block);
}

- (BOOL)accountHasSentinelZoneForAppleMediaAccessorySensorManager:(id)manager
{
  home = [(HMDAccessory *)self home];
  homeManager = [home homeManager];
  hh2FrameworkSwitch = [homeManager hh2FrameworkSwitch];
  checkExistenceOfHH2SentinelZone = [hh2FrameworkSwitch checkExistenceOfHH2SentinelZone];

  return checkExistenceOfHH2SentinelZone;
}

- (id)fetchSentinelZoneDidFinishFutureForAppleMediaAccessorySensorManager:(id)manager
{
  home = [(HMDAccessory *)self home];
  homeManager = [home homeManager];
  hh2FrameworkSwitch = [homeManager hh2FrameworkSwitch];
  fetchSentinelZoneDidFinishFuture = [hh2FrameworkSwitch fetchSentinelZoneDidFinishFuture];

  return fetchSentinelZoneDidFinishFuture;
}

- (BOOL)isReadyForSensorPairing:(id)pairing
{
  home = [(HMDAccessory *)self home];
  homeManager = [home homeManager];
  homes = [homeManager homes];

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __50__HMDAppleMediaAccessory_isReadyForSensorPairing___block_invoke;
  v8[3] = &unk_2797323C0;
  v9 = home;
  v6 = home;
  LOBYTE(homeManager) = [homes na_any:v8];

  return homeManager;
}

uint64_t __50__HMDAppleMediaAccessory_isReadyForSensorPairing___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 uuid];
  v4 = [*(a1 + 32) uuid];
  v5 = [v3 hmf_isEqualToUUID:v4];

  return v5;
}

- (id)accessoriesWithHostUUID:(id)d forAppleMediaAccessorySensorManager:(id)manager
{
  dCopy = d;
  home = [(HMDAccessory *)self home];
  accessories = [home accessories];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __86__HMDAppleMediaAccessory_accessoriesWithHostUUID_forAppleMediaAccessorySensorManager___block_invoke;
  v11[3] = &unk_27972C828;
  v12 = dCopy;
  v8 = dCopy;
  v9 = [accessories na_filter:v11];

  return v9;
}

uint64_t __86__HMDAppleMediaAccessory_accessoriesWithHostUUID_forAppleMediaAccessorySensorManager___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 hostAccessory];
  v4 = [v3 uuid];
  v5 = [v4 hmf_isEqualToUUID:*(a1 + 32)];

  return v5;
}

- (id)residentNotificationObjectForAppleMediaAccessorySensorManager:(id)manager
{
  home = [(HMDAccessory *)self home];
  residentDeviceManager = [home residentDeviceManager];

  return residentDeviceManager;
}

- (void)renameService:(id)service name:(id)name
{
  v37 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  nameCopy = name;
  accessory = [serviceCopy accessory];
  if (accessory)
  {
    v9 = objc_alloc(MEMORY[0x277D0F820]);
    uuid = [accessory uuid];
    v11 = [v9 initWithTarget:uuid];

    v30[0] = *MEMORY[0x277CD25F8];
    instanceID = [serviceCopy instanceID];
    v30[1] = *MEMORY[0x277CD2620];
    v31[0] = instanceID;
    v31[1] = nameCopy;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:2];

    v14 = [MEMORY[0x277D0F848] messageWithName:*MEMORY[0x277CD2550] destination:v11 payload:v13];
    objc_initWeak(location, self);
    v22 = MEMORY[0x277D85DD0];
    v23 = 3221225472;
    v24 = __45__HMDAppleMediaAccessory_renameService_name___block_invoke;
    v25 = &unk_2797308C0;
    objc_copyWeak(&v29, location);
    v26 = serviceCopy;
    v15 = accessory;
    v27 = v15;
    v28 = nameCopy;
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
    selfCopy = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      *location = 138543874;
      *&location[4] = v20;
      v33 = 2112;
      v34 = serviceCopy;
      v35 = 2112;
      v36 = nameCopy;
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

- (void)performLocalAddAccessoryWithDescription:(id)description progressHandlerDelegate:(id)delegate completion:(id)completion
{
  descriptionCopy = description;
  delegateCopy = delegate;
  completionCopy = completion;
  home = [(HMDAccessory *)self home];
  if (home)
  {
    objc_initWeak(&location, home);
    defaultScheduler = [MEMORY[0x277D0F8F0] defaultScheduler];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __101__HMDAppleMediaAccessory_performLocalAddAccessoryWithDescription_progressHandlerDelegate_completion___block_invoke;
    v15[3] = &unk_279733CA8;
    objc_copyWeak(&v19, &location);
    v16 = descriptionCopy;
    v17 = delegateCopy;
    v18 = completionCopy;
    v13 = [defaultScheduler performWithQualityOfService:25 block:v15];

    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
  }

  else if (completionCopy)
  {
    v14 = [MEMORY[0x277CCA9B8] hmErrorWithCode:21];
    (*(completionCopy + 2))(completionCopy, v14);
  }
}

void __101__HMDAppleMediaAccessory_performLocalAddAccessoryWithDescription_progressHandlerDelegate_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained performLocalAddAccessoryWithDescription:*(a1 + 32) progressHandlerDelegate:*(a1 + 40) completion:*(a1 + 48)];
}

- (BOOL)isResidentConfirmedForAppleMediaAccessorySensorManager:(id)manager
{
  home = [(HMDAccessory *)self home];
  primaryResident = [home primaryResident];
  isConfirmed = [primaryResident isConfirmed];

  return isConfirmed;
}

- (id)homeUUIDForAppleMediaAccessorySensorManager:(id)manager
{
  home = [(HMDAccessory *)self home];
  uuid = [home uuid];

  return uuid;
}

- (HMDAppleMediaAccessory)accessoryWithUUID:(id)d forAppleMediaAccessorySensorManager:(id)manager
{
  dCopy = d;
  home = [(HMDAccessory *)self home];
  v7 = [home accessoryWithUUID:dCopy];

  return v7;
}

- (id)accessoryBrowserForAppleMediaAccessorySensorManager:(id)manager
{
  home = [(HMDAccessory *)self home];
  accessoryBrowser = [home accessoryBrowser];

  return accessoryBrowser;
}

- (id)appleMediaProfileForAccessoryUUID:(id)d
{
  mediaProfile = [(HMDMediaAccessory *)self mediaProfile];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = mediaProfile;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

- (int64_t)numberOfActionSetsWithCurrentAccessoryMediaActionForAppleMediaAccessoryMetricsDispatcher:(id)dispatcher
{
  home = [(HMDAccessory *)self home];
  actionSets = [home actionSets];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __115__HMDAppleMediaAccessory_numberOfActionSetsWithCurrentAccessoryMediaActionForAppleMediaAccessoryMetricsDispatcher___block_invoke;
  v9[3] = &unk_27972F278;
  v9[4] = self;
  v6 = [actionSets na_filter:v9];

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

- (int64_t)numberOfTriggersWithCurrentAccessoryPairedSensorsForAppleMediaAccessoryMetricsDispatcher:(id)dispatcher
{
  dispatcherCopy = dispatcher;
  os_unfair_recursive_lock_lock_with_options();
  hostedAccessories = [(HMDAppleMediaAccessory *)self hostedAccessories];
  allObjects = [hostedAccessories allObjects];

  os_unfair_recursive_lock_unlock();
  v7 = [allObjects na_map:&__block_literal_global_575];
  if (v7)
  {
    home = [(HMDAccessory *)self home];
    triggers = [home triggers];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __115__HMDAppleMediaAccessory_numberOfTriggersWithCurrentAccessoryPairedSensorsForAppleMediaAccessoryMetricsDispatcher___block_invoke_2;
    v13[3] = &unk_27972A1C0;
    v14 = v7;
    v10 = [triggers na_filter:v13];

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

- (int64_t)numberOfCurrentAccessoryPairedSensorsForAppleMediaAccessoryMetricsDispatcher:(id)dispatcher
{
  dispatcherCopy = dispatcher;
  os_unfair_recursive_lock_lock_with_options();
  hostedAccessories = [(HMDAppleMediaAccessory *)self hostedAccessories];
  v6 = [hostedAccessories count];

  os_unfair_recursive_lock_unlock();
  return v6;
}

- (id)currentRoomForAppleMediaAccessoryMetricsDispatcher:(id)dispatcher
{
  room = [(HMDAccessory *)self room];
  name = [room name];
  v5 = [name copy];

  return v5;
}

- (id)logIdentifier
{
  uuid = [(HMDAccessory *)self uuid];
  uUIDString = [uuid UUIDString];

  return uUIDString;
}

- (void)_handleWiFiPickerMessage:(id)message withName:(id)name
{
  messageCopy = message;
  nameCopy = name;
  v8 = [messageCopy mutableCopy];
  [v8 setName:nameCopy];
  objc_initWeak(&location, self);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __60__HMDAppleMediaAccessory__handleWiFiPickerMessage_withName___block_invoke;
  v10[3] = &unk_279733AE8;
  objc_copyWeak(&v12, &location);
  v9 = messageCopy;
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

- (id)_dumpStateCachedSettingsForHome:(id)home accessory:(id)accessory eventStoreReadHandle:(id)handle
{
  v47 = *MEMORY[0x277D85DE8];
  homeCopy = home;
  accessoryCopy = accessory;
  handleCopy = handle;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v27 = objc_alloc_init(HMDAccessorySettingsEventHelper);
  v28 = accessoryCopy;
  v29 = homeCopy;
  [(HMDAccessorySettingsEventHelper *)v27 allTopicsForHome:homeCopy accessory:accessoryCopy];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = v39 = 0u;
  v10 = [obj countByEnumeratingWithState:&v36 objects:v46 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v37;
    v31 = handleCopy;
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
        v15 = [handleCopy lastEventForTopic:v14];
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
            selfCopy = self;
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

              handleCopy = v31;
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
            keyPath = [v16 keyPath];
            [dictionary setObject:v18 forKeyedSubscript:keyPath];
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

  return dictionary;
}

- (id)dumpStateLocalSettings
{
  v22 = *MEMORY[0x277D85DE8];
  home = [(HMDAccessory *)self home];
  v4 = home;
  if (home)
  {
    homeManager = [home homeManager];
    if (homeManager)
    {
      uuid = [v4 uuid];
      uuid2 = [(HMDAccessory *)self uuid];
      eventStoreReadHandle = [homeManager eventStoreReadHandle];
      v9 = [(HMDAppleMediaAccessory *)self _dumpStateCachedSettingsForHome:uuid accessory:uuid2 eventStoreReadHandle:eventStoreReadHandle];
    }

    else
    {
      v14 = objc_autoreleasePoolPush();
      selfCopy = self;
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
    selfCopy2 = self;
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
  dumpSimpleState = [(HMDMediaAccessory *)&v12 dumpSimpleState];
  v4 = [dumpSimpleState mutableCopy];

  v5 = *MEMORY[0x277D0F170];
  v6 = [v4 hmf_stringForKey:*MEMORY[0x277D0F170]];
  device = [(HMDAppleMediaAccessory *)self device];
  identifier = [device identifier];
  uUIDString = [identifier UUIDString];
  v10 = [v6 stringByAppendingFormat:@", device: %@", uUIDString];

  [v4 setObject:v10 forKeyedSubscript:v5];

  return v4;
}

- (id)dumpStateWithPrivacyLevel:(unint64_t)level
{
  v16.receiver = self;
  v16.super_class = HMDAppleMediaAccessory;
  v4 = [(HMDMediaAccessory *)&v16 dumpStateWithPrivacyLevel:level];
  v5 = [v4 mutableCopy];

  v6 = *MEMORY[0x277D0F170];
  v7 = [v5 hmf_stringForKey:*MEMORY[0x277D0F170]];
  device = [(HMDAppleMediaAccessory *)self device];
  v9 = [device description];
  v10 = [v7 stringByAppendingFormat:@", device: %@", v9];

  os_unfair_recursive_lock_lock_with_options();
  hostedAccessories = [(HMDAppleMediaAccessory *)self hostedAccessories];
  allObjects = [hostedAccessories allObjects];
  v13 = [allObjects na_map:&__block_literal_global_562];
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

- (void)encodeFlagsFromHostedAccessories:(id)accessories coder:(id)coder
{
  accessoriesCopy = accessories;
  coderCopy = coder;
  if ([coderCopy hmd_isForXPCTransport])
  {
    v6 = [accessoriesCopy na_reduceWithInitialValue:&unk_2866286D8 reducer:&__block_literal_global_551_94407];
    [coderCopy encodeObject:v6 forKey:@"accessoryFlagsCodingKey"];
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

- (void)encodeServicesFromHostedAccessories:(id)accessories coder:(id)coder
{
  accessoriesCopy = accessories;
  coderCopy = coder;
  if ([coderCopy hmd_isForXPCTransport])
  {
    v6 = [accessoriesCopy na_flatMap:&__block_literal_global_541_94410];
    v7 = [accessoriesCopy na_firstObjectPassingTest:&__block_literal_global_545];
    dataSource = [v7 dataSource];
    hapMetadata = [dataSource hapMetadata];

    [HMDHAPAccessory encodeServices:v6 forXPCCoder:coderCopy metadata:hapMetadata];
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

- (void)_encodeWithCoder:(id)coder
{
  coderCopy = coder;
  hmd_isForXPCTransport = [coderCopy hmd_isForXPCTransport];
  hmd_isForLocalStore = [coderCopy hmd_isForLocalStore];
  hmd_homeManagerOptions = [coderCopy hmd_homeManagerOptions];
  v46.receiver = self;
  v46.super_class = HMDAppleMediaAccessory;
  [(HMDMediaAccessory *)&v46 encodeWithCoder:coderCopy];
  pairingIdentity = [(HMDAppleMediaAccessory *)self pairingIdentity];
  v9 = pairingIdentity;
  if ((hmd_isForXPCTransport & 1) == 0)
  {
    if (hmd_isForLocalStore)
    {
      [coderCopy encodeObject:pairingIdentity forKey:*MEMORY[0x277CCEC20]];
      publicPairingIdentity = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDAppleMediaAccessory fixedPairingIdentityInCloud](self, "fixedPairingIdentityInCloud")}];
      v11 = @"HM.FixedPairingIdentityInCloudCodingKey";
    }

    else
    {
      if (!pairingIdentity)
      {
        goto LABEL_7;
      }

      publicPairingIdentity = [pairingIdentity publicPairingIdentity];
      v11 = *MEMORY[0x277CCEC20];
    }

    [coderCopy encodeObject:publicPairingIdentity forKey:v11];
  }

LABEL_7:
  if ((hmd_homeManagerOptions & 0x20) != 0)
  {
    if (([coderCopy hmd_isForRemoteTransport] | hmd_isForLocalStore))
    {
LABEL_9:
      settingsController = [(HMDAppleMediaAccessory *)self settingsController];
      [settingsController encodeWithCoder:coderCopy];

LABEL_10:
      [(HMDAccessory *)self encodePreferredMediaUser:coderCopy];
      goto LABEL_15;
    }

    if (hmd_isForXPCTransport && [coderCopy hmd_isForXPCTransportEntitledForSPIAccess])
    {
      if ([(HMDAppleMediaAccessory *)self supportsMessagedHomePodSettings])
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

LABEL_15:
  if ((hmd_homeManagerOptions & 0x841) != 0 || (hmd_homeManagerOptions & 0x10) != 0 && [(HMDAppleMediaAccessory *)self isCurrentAccessory])
  {
    if ([coderCopy hmd_isForXPCTransport])
    {
      if (![coderCopy hmd_isForXPCTransportEntitledForSPIAccess])
      {
        goto LABEL_24;
      }

      deviceForDirectMessaging = [(HMDAppleMediaAccessory *)self deviceForDirectMessaging];
      idsIdentifier = [deviceForDirectMessaging idsIdentifier];
      [coderCopy encodeObject:idsIdentifier forKey:@"HM.accountIdentifier"];

      [coderCopy encodeObject:deviceForDirectMessaging forKey:*MEMORY[0x277CCEA18]];
      device = [(HMDAppleMediaAccessory *)self device];
      rpIdentity = [device rpIdentity];
      deviceIRK = [rpIdentity deviceIRK];
      data = [deviceIRK data];
      [coderCopy encodeObject:data forKey:*MEMORY[0x277CCEA20]];
    }

    else
    {
      deviceForDirectMessaging = [(HMDAppleMediaAccessory *)self device];
      [coderCopy encodeObject:deviceForDirectMessaging forKey:*MEMORY[0x277CCEA18]];
    }
  }

LABEL_24:
  isHH1EOLEnabled = [(HMDAppleMediaAccessory *)self isHH1EOLEnabled];
  [coderCopy encodeBool:isHH1EOLEnabled forKey:*MEMORY[0x277CCEAD8]];
  if ((hmd_homeManagerOptions & 0x41) != 0 || [(HMDAppleMediaAccessory *)self isCurrentAccessory]&& (hmd_homeManagerOptions & 0x10) != 0)
  {
    if ([coderCopy hmd_isForXPCTransport])
    {
      isDeviceReachable = [(HMDAppleMediaAccessory *)self isDeviceReachable];
      [coderCopy encodeBool:isDeviceReachable forKey:*MEMORY[0x277CCE9D8]];
      if ([coderCopy hmd_isForXPCTransportEntitledForSPIAccess])
      {
        supportsTargetControl = [(HMDAppleMediaAccessory *)self supportsTargetControl];
        [coderCopy encodeBool:supportsTargetControl forKey:*MEMORY[0x277CCF050]];
        supportsCompanionInitiatedRestart = [(HMDAppleMediaAccessory *)self supportsCompanionInitiatedRestart];
        [coderCopy encodeBool:supportsCompanionInitiatedRestart forKey:*MEMORY[0x277CCEF88]];
        supportsCompanionInitiatedObliterate = [(HMDAppleMediaAccessory *)self supportsCompanionInitiatedObliterate];
        [coderCopy encodeBool:supportsCompanionInitiatedObliterate forKey:*MEMORY[0x277CCEF80]];
        supportsThirdPartyMusic = [(HMDAppleMediaAccessory *)self supportsThirdPartyMusic];
        [coderCopy encodeBool:supportsThirdPartyMusic forKey:*MEMORY[0x277CCF028]];
        supportsPreferredMediaUser = [(HMDAppleMediaAccessory *)self supportsPreferredMediaUser];
        [coderCopy encodeBool:supportsPreferredMediaUser forKey:*MEMORY[0x277CCF000]];
        supportsCoordinationDoorbellChime = [(HMDAppleMediaAccessory *)self supportsCoordinationDoorbellChime];
        [coderCopy encodeBool:supportsCoordinationDoorbellChime forKey:*MEMORY[0x277CCEF90]];
        supportsMediaContentProfile = [(HMDAppleMediaAccessory *)self supportsMediaContentProfile];
        [coderCopy encodeBool:supportsMediaContentProfile forKey:*MEMORY[0x277CCEFD8]];
        [coderCopy encodeBool:1 forKey:*MEMORY[0x277CCEAF8]];
        if (_os_feature_enabled_impl())
        {
          supportsRMVonAppleTV = [(HMDAppleMediaAccessory *)self supportsRMVonAppleTV];
          [coderCopy encodeBool:supportsRMVonAppleTV forKey:*MEMORY[0x277CCF010]];
        }

        supportsJustSiri = [(HMDAppleMediaAccessory *)self supportsJustSiri];
        [coderCopy encodeBool:supportsJustSiri forKey:*MEMORY[0x277CCEFB8]];
        os_unfair_recursive_lock_lock_with_options();
        hostedAccessories = [(HMDAppleMediaAccessory *)self hostedAccessories];
        allObjects = [hostedAccessories allObjects];

        os_unfair_recursive_lock_unlock();
        [(HMDAppleMediaAccessory *)self encodeServicesFromHostedAccessories:allObjects coder:coderCopy];
        [(HMDAppleMediaAccessory *)self encodeFlagsFromHostedAccessories:allObjects coder:coderCopy];
        home = [(HMDAccessory *)self home];
        isCurrentDeviceConfirmedPrimaryResident = [home isCurrentDeviceConfirmedPrimaryResident];
        [coderCopy encodeBool:isCurrentDeviceConfirmedPrimaryResident forKey:*MEMORY[0x277CCEB20]];
      }

      if ([(HMDAppleMediaAccessory *)self isHomePod])
      {
        v34 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDAppleMediaAccessory homePodVariant](self, "homePodVariant")}];
        [coderCopy encodeObject:v34 forKey:*MEMORY[0x277CD04D0]];
      }

      supportsStereoOdeonTTSUBypassingPrimary = [(HMDAppleMediaAccessory *)self supportsStereoOdeonTTSUBypassingPrimary];
      [coderCopy encodeBool:supportsStereoOdeonTTSUBypassingPrimary forKey:*MEMORY[0x277CCF020]];
      supportsNetworkDiagnostics = [(HMDAppleMediaAccessory *)self supportsNetworkDiagnostics];
      [coderCopy encodeBool:supportsNetworkDiagnostics forKey:*MEMORY[0x277CCEFF8]];
      supportsCrossfadeAsAirPlaySource = [(HMDAppleMediaAccessory *)self supportsCrossfadeAsAirPlaySource];
      [coderCopy encodeBool:supportsCrossfadeAsAirPlaySource forKey:*MEMORY[0x277CCEF98]];
      if ([(HMDAppleMediaAccessory *)self isHomePod])
      {
        supportsManagedConfigurationProfile = [(HMDAppleMediaAccessory *)self supportsManagedConfigurationProfile];
        [coderCopy encodeBool:supportsManagedConfigurationProfile forKey:*MEMORY[0x277CCEFC0]];
        supportsMessagedHomePodSettings = [(HMDAppleMediaAccessory *)self supportsMessagedHomePodSettings];
        [coderCopy encodeBool:supportsMessagedHomePodSettings forKey:*MEMORY[0x277CCEFE0]];
      }

      supportsSoftwareUpdateV2 = [(HMDAppleMediaAccessory *)self supportsSoftwareUpdateV2];
      [coderCopy encodeBool:supportsSoftwareUpdateV2 forKey:*MEMORY[0x277CCF018]];
    }

    if (![coderCopy hmd_isForXPCTransport] || objc_msgSend(coderCopy, "hmd_isForXPCTransportEntitledForSPIAccess"))
    {
      softwareVersion = [(HMDAppleMediaAccessory *)self softwareVersion];
      [coderCopy encodeObject:softwareVersion forKey:*MEMORY[0x277CCEF18]];

      wifiNetworkInfo = [(HMDAppleMediaAccessory *)self wifiNetworkInfo];
      [coderCopy encodeObject:wifiNetworkInfo forKey:*MEMORY[0x277CCF108]];

      v43 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDAppleMediaAccessory supportedStereoPairVersions](self, "supportedStereoPairVersions")}];
      [coderCopy encodeObject:v43 forKey:*MEMORY[0x277CD11A8]];

      productColor = [(HMDAppleMediaAccessory *)self productColor];
      [coderCopy encodeInteger:productColor forKey:*MEMORY[0x277CD0C90]];
      [(HMDAppleMediaAccessory *)self _encodeMediaDestinationAndControllerDataWithCoder:coderCopy];
    }

    if (([coderCopy hmd_isForLocalStore] & 1) != 0 || (objc_msgSend(coderCopy, "hmd_isForRemoteTransportOnSameAccount") & 1) != 0 || (objc_msgSend(coderCopy, "hmd_isForRemoteUserAdministrator") & 1) != 0 || objc_msgSend(coderCopy, "hmd_isForXPCTransport") && objc_msgSend(coderCopy, "hmd_isForXPCTransportEntitledForSPIAccess"))
    {
      remoteLoginHandler = [(HMDAppleMediaAccessory *)self remoteLoginHandler];
      [coderCopy encodeObject:remoteLoginHandler forKey:*MEMORY[0x277CCEC98]];
    }
  }
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = objc_autoreleasePoolPush();
  [(HMDAppleMediaAccessory *)self _encodeWithCoder:coderCopy];
  objc_autoreleasePoolPop(v4);
}

- (void)removeHostedAccessory:(id)accessory
{
  accessoryCopy = accessory;
  os_unfair_recursive_lock_lock_with_options();
  hostedAccessories = [(HMDAppleMediaAccessory *)self hostedAccessories];
  [hostedAccessories removeObject:accessoryCopy];

  os_unfair_recursive_lock_unlock();
}

- (void)addHostedAccessory:(id)accessory
{
  accessoryCopy = accessory;
  os_unfair_recursive_lock_lock_with_options();
  hostedAccessories = [(HMDAppleMediaAccessory *)self hostedAccessories];
  [hostedAccessories addObject:accessoryCopy];

  os_unfair_recursive_lock_unlock();
}

- (void)_legacyEncodeMediaDestinationAndControllerDataWithCoder:(id)coder
{
  coderCopy = coder;
  if ([coderCopy hmd_isForLocalStore])
  {
    committedAudioDestinationControllerData = [(HMDAppleMediaAccessory *)self committedAudioDestinationControllerData];
    [(HMDAppleMediaAccessory *)self committedAudioDestination];
  }

  else
  {
    committedAudioDestinationControllerData = [(HMDAppleMediaAccessory *)self audioDestinationControllerData];
    [(HMDAppleMediaAccessory *)self audioDestination];
  }
  v5 = ;
  [coderCopy encodeObject:committedAudioDestinationControllerData forKey:*MEMORY[0x277CCE818]];
  [coderCopy encodeObject:v5 forKey:*MEMORY[0x277CCE808]];
}

- (void)_encodeMediaDestinationAndControllerDataWithCoder:(id)coder
{
  coderCopy = coder;
  v8 = coderCopy;
  if (isFeatureHomeTheaterQFAEnabledForTests && (v5 = [isFeatureHomeTheaterQFAEnabledForTests BOOLValue], coderCopy = v8, v5))
  {
    audioDestinationControllerData = [(HMDAppleMediaAccessory *)self audioDestinationControllerData];
    [v8 encodeObject:audioDestinationControllerData forKey:*MEMORY[0x277CCE818]];

    audioDestination = [(HMDAppleMediaAccessory *)self audioDestination];
    [v8 encodeObject:audioDestination forKey:*MEMORY[0x277CCE808]];
  }

  else
  {
    [(HMDAppleMediaAccessory *)self _legacyEncodeMediaDestinationAndControllerDataWithCoder:coderCopy];
  }
}

- (id)_initWithCoder:(id)coder
{
  v84 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v77.receiver = self;
  v77.super_class = HMDAppleMediaAccessory;
  v5 = [(HMDMediaAccessory *)&v77 initWithCoder:coderCopy];
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

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277CCEA18]];
    device = v5->_device;
    v5->_device = v12;

    if (v5->_device)
    {
      v14 = [(HMDAppleMediaAccessoryDependencyFactory *)v5->_dependencyFactory deviceControllerWithDevice:?];
      deviceController = v5->_deviceController;
      v5->_deviceController = v14;
    }

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277CCEC20]];
    pairingIdentity = v5->_pairingIdentity;
    v5->_pairingIdentity = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277CCEF18]];
    softwareVersion = v5->_softwareVersion;
    v5->_softwareVersion = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277CCF108]];
    wifiNetworkInfo = v5->_wifiNetworkInfo;
    v5->_wifiNetworkInfo = v20;

    objc_storeStrong(&v5->_lastStagedWifiNetworkInfo, v5->_wifiNetworkInfo);
    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v23 = [standardUserDefaults BOOLForKey:@"mi.hh2"];

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
      workQueue = [(HMDAccessory *)v25 workQueue];
      uuid = [(HMDAccessory *)v25 uuid];
      v33 = *MEMORY[0x277CCECE8];
      v34 = +[HMDMetricsManager sharedLogEventSubmitter];
      v35 = [(HMDAccessorySettingsController *)v30 initWithQueue:workQueue delegate:v25 dataSource:v25 parentUUID:uuid codingKey:v33 logEventSubmitter:v34];
      v36 = v25->_settingsController;
      v25->_settingsController = v35;
    }

    [(HMDAccessorySettingsController *)v25->_settingsController decodeWithCoder:coderCopy];
    v37 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277CCEC98]];
    remoteLoginHandler = v25->_remoteLoginHandler;
    v25->_remoteLoginHandler = v37;

    if (!v25->_remoteLoginHandler)
    {
      v39 = [[HMDRemoteLoginHandler alloc] initWithAccessory:v25 loggedInAccountData:0];
      v40 = v25->_remoteLoginHandler;
      v25->_remoteLoginHandler = v39;
    }

    v41 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HM.FixedPairingIdentityInCloudCodingKey"];
    v42 = v41;
    if (v41)
    {
      LOBYTE(v41) = [v41 BOOLValue];
    }

    v25->_fixedPairingIdentityInCloud = v41;
    v43 = *MEMORY[0x277CCE810];
    if ([coderCopy containsValueForKey:*MEMORY[0x277CCE810]])
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
      v49 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:v43];
    }

    else
    {
      v49 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277CCE818]];
    }

    committedAudioDestinationControllerData = v25->_committedAudioDestinationControllerData;
    v25->_committedAudioDestinationControllerData = v49;

    v51 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277CCE808]];
    committedAudioDestination = v25->_committedAudioDestination;
    v25->_committedAudioDestination = v51;

    v53 = v25->_committedAudioDestination;
    if (v53)
    {
      parentIdentifier = [(HMMediaDestination *)v53 parentIdentifier];
      v55 = parentIdentifier;
      if (!parentIdentifier || ([parentIdentifier UUIDString], v56 = objc_claimAutoreleasedReturnValue(), v57 = objc_msgSend(v56, "isEqualToString:", *MEMORY[0x277CD0860]), v56, v57))
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
        uniqueIdentifier = [(HMMediaDestination *)v25->_committedAudioDestination uniqueIdentifier];
        uuid2 = [(HMDAccessory *)v59 uuid];
        supportedOptions = [(HMMediaDestination *)v25->_committedAudioDestination supportedOptions];
        audioGroupIdentifier = [(HMMediaDestination *)v25->_committedAudioDestination audioGroupIdentifier];
        v67 = [v62 initWithUniqueIdentifier:uniqueIdentifier parentIdentifier:uuid2 supportedOptions:supportedOptions audioGroupIdentifier:audioGroupIdentifier];
        v68 = v25->_committedAudioDestination;
        v25->_committedAudioDestination = v67;

        v42 = v76;
      }
    }

    v69 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277CD11A8]];
    v25->_supportedStereoPairVersions = [v69 unsignedIntegerValue];

    __bootstrapSupportedStereoPairVersions(v25);
    [(HMDAccessory *)v25 decodePreferredMediaUser:coderCopy];
    v70 = [HMDAppleMediaAccessorySleepWakeStateController alloc];
    uuid3 = [(HMDAccessory *)v25 uuid];
    v72 = [(HMDAppleMediaAccessorySleepWakeStateController *)v70 initWithAccessoryUUID:uuid3 dataSource:v25];
    sleepWakeStateController = v25->_sleepWakeStateController;
    v25->_sleepWakeStateController = v72;

    v25->_productColor = [coderCopy decodeIntegerForKey:*MEMORY[0x277CD0C90]];
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

+ (id)messageBindingForDispatcher:(id)dispatcher message:(id)message receiver:(id)receiver
{
  v77 = *MEMORY[0x277D85DE8];
  dispatcherCopy = dispatcher;
  messageCopy = message;
  receiverCopy = receiver;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = receiverCopy;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  home = [v12 home];
  if (home)
  {
    v14 = [HMDXPCMessagePolicy policyWithEntitlements:5];
    v70[0] = v14;
    v15 = +[HMDRemoteMessagePolicy defaultSecurePolicy];
    v70[1] = v15;
    v16 = [HMDUserMessagePolicy userMessagePolicyWithHome:home userPrivilege:3 remoteAccessRequired:0];
    v70[2] = v16;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v70 count:3];

    name = [messageCopy name];
    v19 = *MEMORY[0x277CCEAB8];
    LOBYTE(v15) = HMFEqualObjects();

    name2 = [messageCopy name];
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

    name2 = [messageCopy name];
    if (v29)
    {
      v21 = &selRef_handleRemoveManagedConfigurationProfile_;
      goto LABEL_14;
    }

    v30 = *MEMORY[0x277CCEB18];
    v31 = HMFEqualObjects();

    if (v31)
    {
      name2 = [messageCopy name];
      v21 = &selRef_handleInstallManagedConfigurationProfile_;
      goto LABEL_14;
    }

    v35 = [HMDXPCMessagePolicy policyWithEntitlements:5];
    v69[0] = v35;
    v36 = +[HMDRemoteMessagePolicy defaultSecurePolicy];
    v69[1] = v36;
    v37 = [HMDUserMessagePolicy userMessagePolicyWithHome:home userPrivilege:4 remoteAccessRequired:0];
    v69[2] = v37;
    v38 = [MEMORY[0x277CBEA60] arrayWithObjects:v69 count:3];

    name3 = [messageCopy name];
    v40 = *MEMORY[0x277CD1080];
    LOBYTE(v36) = HMFEqualObjects();

    name4 = [messageCopy name];
    if (v36)
    {
      v42 = &selRef__startUpdate_;
    }

    else
    {
      v43 = *MEMORY[0x277CCEA08];
      v44 = HMFEqualObjects();

      name4 = [messageCopy name];
      if (v44)
      {
        v42 = &selRef_handleDeleteSiriHistoryRequest_;
      }

      else
      {
        v45 = *MEMORY[0x277CCF0D0];
        v46 = HMFEqualObjects();

        name4 = [messageCopy name];
        if (v46)
        {
          v42 = &selRef_handleUpdatePreferredMediaUser_;
        }

        else
        {
          v47 = *MEMORY[0x277CCEF08];
          v48 = HMFEqualObjects();

          name4 = [messageCopy name];
          if (v48)
          {
            v42 = &selRef_handleSoftwareUpdateV2Scan_;
          }

          else
          {
            v49 = *MEMORY[0x277CCECF0];
            v50 = HMFEqualObjects();

            name4 = [messageCopy name];
            if (v50)
            {
              v42 = &selRef__handleScanNetworksMessage_;
            }

            else
            {
              v51 = *MEMORY[0x277CCEB30];
              v52 = HMFEqualObjects();

              name4 = [messageCopy name];
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
                    v38 = [HMDUserMessagePolicy userMessagePolicyWithHome:home userPrivilege:0 remoteAccessRequired:0];
                    v56 = [HMDXPCMessagePolicy policyWithEntitlements:13];
                    v68[0] = v56;
                    v68[1] = v38;
                    name4 = [MEMORY[0x277CBEA60] arrayWithObjects:v68 count:2];

                    name5 = [messageCopy name];
                    v58 = *MEMORY[0x277CCF0A8];
                    v59 = HMFEqualObjects();

                    if (v59)
                    {
                      name6 = [messageCopy name];
                      v27 = HMFCreateMessageBindingWithReceiver();

                      goto LABEL_33;
                    }
                  }

                  settingsController = [v12 settingsController];
                  messageHandler = [settingsController messageHandler];
                  v62 = objc_opt_class();
                  settingsController2 = [v12 settingsController];
                  messageHandler2 = [settingsController2 messageHandler];
                  v38 = [v62 messageBindingForDispatcher:dispatcherCopy message:messageCopy receiver:messageHandler2];

                  if (v38)
                  {
                    v65 = v38;
                  }

                  else
                  {
                    v67.receiver = self;
                    v67.super_class = &OBJC_METACLASS___HMDAppleMediaAccessory;
                    v65 = objc_msgSendSuper2(&v67, sel_messageBindingForDispatcher_message_receiver_, dispatcherCopy, messageCopy, receiverCopy);
                  }

                  v27 = v65;
                  goto LABEL_34;
                }

                name4 = [messageCopy name];
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
  selfCopy = self;
  v24 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    v25 = HMFGetLogIdentifier();
    name7 = [messageCopy name];
    *buf = 138543874;
    v72 = v25;
    v73 = 2112;
    v74 = name7;
    v75 = 2112;
    v76 = receiverCopy;
    _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_ERROR, "%{public}@Unable to find binding for message %@, receiver does not have valid home: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v22);
  v27 = 0;
LABEL_15:

  v33 = *MEMORY[0x277D85DE8];

  return v27;
}

+ (BOOL)shouldAcceptMessage:(id)message home:(id)home privilege:(unint64_t)privilege
{
  v37 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  homeCopy = home;
  if ([messageCopy isRemote])
  {
    if ([messageCopy isSecureRemote])
    {
      currentUser = [messageCopy matchingRemoteIdentityUserForHome:homeCopy];
      goto LABEL_6;
    }

    v16 = objc_autoreleasePoolPush();
    v17 = homeCopy;
    v18 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
LABEL_17:

      objc_autoreleasePoolPop(v16);
      responseHandler = [messageCopy responseHandler];

      if (responseHandler)
      {
        v21 = [MEMORY[0x277CCA9B8] hmErrorWithCode:10];
        responseHandler2 = [messageCopy responseHandler];
        (responseHandler2)[2](responseHandler2, v21, 0);

        responseHandler = 0;
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

  if (([messageCopy isEntitledForSPIAccess] & 1) == 0)
  {
    v16 = objc_autoreleasePoolPush();
    v17 = homeCopy;
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

  currentUser = [homeCopy currentUser];
LABEL_6:
  responseHandler = currentUser;
  if (!currentUser)
  {
    v11 = objc_autoreleasePoolPush();
    v23 = homeCopy;
    v13 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      goto LABEL_28;
    }

    v14 = HMFGetLogIdentifier();
    v33 = 138543618;
    v34 = v14;
    v35 = 2112;
    v36 = messageCopy;
    v15 = "%{public}@Unable to determine originator of message: %@";
    goto LABEL_27;
  }

  if (privilege != 3)
  {
    if (privilege == 4 && ([currentUser isAdministrator] & 1) == 0)
    {
      v11 = objc_autoreleasePoolPush();
      v12 = homeCopy;
      v13 = HMFGetOSLogHandle();
      if (!os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        goto LABEL_28;
      }

      v14 = HMFGetLogIdentifier();
      v33 = 138543618;
      v34 = v14;
      v35 = 2112;
      v36 = responseHandler;
      v15 = "%{public}@User does not have administrator privilege: %@";
      goto LABEL_27;
    }

LABEL_22:
    responseHandler3 = objc_autoreleasePoolPush();
    v25 = homeCopy;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      v27 = HMFGetLogIdentifier();
      v33 = 138543618;
      v34 = v27;
      v35 = 2112;
      v36 = messageCopy;
      _os_log_impl(&dword_2531F8000, v26, OS_LOG_TYPE_DEBUG, "%{public}@Accepting message: %@", &v33, 0x16u);
    }

    objc_autoreleasePoolPop(responseHandler3);
    LOBYTE(responseHandler3) = 1;
    goto LABEL_31;
  }

  if ([currentUser isOwner])
  {
    goto LABEL_22;
  }

  v11 = objc_autoreleasePoolPush();
  v28 = homeCopy;
  v13 = HMFGetOSLogHandle();
  if (!os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    goto LABEL_28;
  }

  v14 = HMFGetLogIdentifier();
  v33 = 138543618;
  v34 = v14;
  v35 = 2112;
  v36 = responseHandler;
  v15 = "%{public}@User does not have owner privilege: %@";
LABEL_27:
  _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, v15, &v33, 0x16u);

LABEL_28:
  objc_autoreleasePoolPop(v11);
  responseHandler3 = [messageCopy responseHandler];

  if (responseHandler3)
  {
    v29 = [MEMORY[0x277CCA9B8] hmErrorWithCode:17 description:@"Insufficient privileges." reason:@"User has insufficient privileges for request." suggestion:0];
    responseHandler4 = [messageCopy responseHandler];
    (responseHandler4)[2](responseHandler4, v29, 0);

LABEL_30:
    LOBYTE(responseHandler3) = 0;
  }

LABEL_31:

  v31 = *MEMORY[0x277D85DE8];
  return responseHandler3;
}

id __41__HMDAppleMediaAccessory__initWithCoder___block_invoke_2()
{
  v0 = objc_alloc_init(MEMORY[0x277CEF3A8]);

  return v0;
}

- (HMDAppleMediaAccessory)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_autoreleasePoolPush();
  v6 = [(HMDAppleMediaAccessory *)self _initWithCoder:coderCopy];
  objc_autoreleasePoolPop(v5);

  return v6;
}

- (void)accessoryInfoController:(id)controller didUpdateWifiInfo:(id)info
{
  infoCopy = info;
  os_unfair_recursive_lock_lock_with_options();
  wifiNetworkInfo = self->_wifiNetworkInfo;
  self->_wifiNetworkInfo = infoCopy;

  os_unfair_recursive_lock_unlock();
}

- (id)currentAccessorySoftwareVersion
{
  productInfo = [MEMORY[0x277D0F8E8] productInfo];
  softwareVersion = [productInfo softwareVersion];

  return softwareVersion;
}

- (id)accessoryInfoControllerSoftwareVersionTopicForController:(id)controller
{
  v4 = MEMORY[0x277CD16F0];
  v5 = *MEMORY[0x277CCEAA0];
  home = [(HMDAccessory *)self home];
  uuid = [home uuid];
  uuid2 = [(HMDAccessory *)self uuid];
  v9 = [v4 topicFromSuffixID:v5 homeUUID:uuid accessoryUUID:uuid2];

  return v9;
}

- (id)eventSourceIdentifierNameForAccessoryInfoController:(id)controller
{
  uuid = [(HMDAccessory *)self uuid];
  uUIDString = [uuid UUIDString];

  return uUIDString;
}

- (id)accessoryInfoControllerTopicForWifiInfo
{
  v3 = MEMORY[0x277CD16F0];
  v4 = *MEMORY[0x277CCEAA8];
  home = [(HMDAccessory *)self home];
  uuid = [home uuid];
  uuid2 = [(HMDAccessory *)self uuid];
  v8 = [v3 topicFromSuffixID:v4 homeUUID:uuid accessoryUUID:uuid2];

  return v8;
}

- (HMDCurrentAccessorySetupMetricDispatcher)currentAccessorySetupMetricDispatcher
{
  home = [(HMDAccessory *)self home];
  homeManager = [home homeManager];
  currentAccessorySetupMetricDispatcher = [homeManager currentAccessorySetupMetricDispatcher];

  return currentAccessorySetupMetricDispatcher;
}

- (id)eventSourceIdentifierNameForFetchedSettingsController:(id)controller
{
  uuid = [(HMDAccessory *)self uuid];
  uUIDString = [uuid UUIDString];

  return uUIDString;
}

- (id)controller:(id)controller topicForKeyPath:(id)path
{
  pathCopy = path;
  home = [(HMDAccessory *)self home];
  uuid = [home uuid];
  uuid2 = [(HMDAccessory *)self uuid];
  v9 = MEMORY[0x259C01CC0](uuid, uuid2, pathCopy);

  return v9;
}

- (HMELastEventStoreReadHandle)eventStoreReadHandle
{
  home = [(HMDAccessory *)self home];
  homeManager = [home homeManager];
  eventStoreReadHandle = [homeManager eventStoreReadHandle];

  return eventStoreReadHandle;
}

- (id)subscriptionProvider
{
  home = [(HMDAccessory *)self home];
  homeManager = [home homeManager];
  localAndRemoteSubscriptionProvider = [homeManager localAndRemoteSubscriptionProvider];

  return localAndRemoteSubscriptionProvider;
}

- (HMEEventForwarder)eventForwarder
{
  home = [(HMDAccessory *)self home];
  homeManager = [home homeManager];
  eventForwarder = [homeManager eventForwarder];

  return eventForwarder;
}

- (HMMLogEventSubmitting)logEventSubmitter
{
  home = [(HMDAccessory *)self home];
  logEventSubmitter = [home logEventSubmitter];

  return logEventSubmitter;
}

- (id)homeUUID
{
  home = [(HMDAccessory *)self home];
  uuid = [home uuid];

  return uuid;
}

- (void)languagesChangedForAccessorySettingsController:(id)controller
{
  v9[1] = *MEMORY[0x277D85DE8];
  home = [(HMDAccessory *)self home];
  if (home)
  {
    notificationCenter = [(HMDMediaAccessory *)self notificationCenter];
    v8 = @"HMDHomeNotificationKey";
    v9[0] = home;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];
    [notificationCenter postNotificationName:@"HMDAppleMediaAccessoryLanguagesChangedNotification" object:self userInfo:v6];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (id)assistantAccessControlModelWithRemovedAccessoriesForAccessorySettingsController:(id)controller
{
  v11[1] = *MEMORY[0x277D85DE8];
  home = [(HMDAccessory *)self home];
  currentUser = [home currentUser];
  assistantAccessControl = [currentUser assistantAccessControl];
  v11[0] = self;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
  v8 = [assistantAccessControl assistantAccessControlModelWithRemovedAccessories:v7];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)remoteMessageDestinationForAccessorySettingsController:(id)controller target:(id)target
{
  targetCopy = target;
  device = [(HMDAppleMediaAccessory *)self device];

  if (device)
  {
    v7 = [HMDRemoteDeviceMessageDestination alloc];
    device2 = [(HMDAppleMediaAccessory *)self device];
    v9 = [(HMDRemoteDeviceMessageDestination *)v7 initWithTarget:targetCopy device:device2];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)isMultiUserEnabledForAccessorySettingsController:(id)controller
{
  home = [(HMDAccessory *)self home];
  isMultiUserEnabled = [home isMultiUserEnabled];

  return isMultiUserEnabled;
}

- (void)accessorySettingsController:(id)controller saveWithReason:(id)reason
{
  reasonCopy = reason;
  home = [(HMDAccessory *)self home];
  homeManager = [home homeManager];

  v7 = [[HMDHomeSaveRequest alloc] initWithReason:reasonCopy information:0 saveOptions:0];
  [homeManager saveWithRequest:v7];
  uuid = [(HMDAccessory *)self uuid];
  [homeManager updateGenerationCounterWithReason:reasonCopy sourceUUID:uuid shouldNotifyClients:1];
}

- (void)accessorySettingsController:(id)controller saveWithReason:(id)reason model:(id)model
{
  reasonCopy = reason;
  home = [(HMDAccessory *)self home];
  [home saveWithReason:reasonCopy postSyncNotification:0 objectChange:model != 0];
}

- (void)removeManagedConfigurationProfileWithProfileData:(id)data completion:(id)completion
{
  v27 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  completionCopy = completion;
  v20 = 0;
  v8 = [MEMORY[0x277D26290] profileWithData:dataCopy outError:&v20];
  v9 = v20;
  v10 = objc_autoreleasePoolPush();
  selfCopy = self;
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
      identifier = [v8 identifier];
      *buf = 138543618;
      v22 = v17;
      v23 = 2112;
      v24 = identifier;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@Remove managed configuration profile with identifier: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    identifier2 = [v8 identifier];
    [(HMDAppleMediaAccessory *)selfCopy _removeManagedConfigurationProfileWithIdentifier:identifier2 completion:completionCopy];
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
    identifier2 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
    completionCopy[2](completionCopy, identifier2);
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (id)modelsToMigrateSettingsForController:(id)controller
{
  v4 = objc_alloc_init(HMDAccessorySettingsMetadata);
  if (v4 && ([(HMDAppleMediaAccessory *)self settingsController], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    settingsController = [(HMDAppleMediaAccessory *)self settingsController];
    v7 = [settingsController mergeWithSettingsMetadata:v4];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)modelsToMakeSettingsForController:(id)controller parentUUID:(id)d
{
  v20 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  dCopy = d;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
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
    rootGroup = [(HMDAccessorySettingsMetadata *)v12 rootGroup];
    v15 = [rootGroup modelsWithParentIdentifier:dCopy];

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
  home = [(HMDAccessory *)self home];
  homeManager = [home homeManager];
  [homeManager setupStartTimestamp];
  v5 = v4;

  return v5;
}

- (void)setSetupStartTimestamp:(double)timestamp
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = HMFGetLogIdentifier();
    v12 = 138543618;
    v13 = v8;
    v14 = 2048;
    timestampCopy = timestamp;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_DEBUG, "%{public}@Setup start timestamp %f", &v12, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  home = [(HMDAccessory *)selfCopy home];
  homeManager = [home homeManager];
  [homeManager setSetupStartTimestamp:timestamp];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)setSetupActivity:(id)activity
{
  activityCopy = activity;
  home = [(HMDAccessory *)self home];
  homeManager = [home homeManager];
  [homeManager setSetupActivity:activityCopy];
}

- (HMDAccessorySetupMetricDispatcher)accessorySetupMetricDispatcher
{
  home = [(HMDAccessory *)self home];
  homeManager = [home homeManager];
  uuid = [(HMDAccessory *)self uuid];
  v6 = [homeManager accessorySetupMetricDispatcherForAccessoryUUID:uuid];

  return v6;
}

- (HMFActivity)setupActivity
{
  home = [(HMDAccessory *)self home];
  homeManager = [home homeManager];
  setupActivity = [homeManager setupActivity];

  return setupActivity;
}

- (HMDBackingStore)backingStore
{
  home = [(HMDAccessory *)self home];
  backingStore = [home backingStore];

  return backingStore;
}

- (void)mediaDestinationManagerDidUpdateStagedValues:(id)values
{
  v20 = *MEMORY[0x277D85DE8];
  valuesCopy = values;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v18 = 138543362;
    v19 = v8;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Handling media destination manager did update staged values", &v18, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  home = [(HMDAccessory *)selfCopy home];
  homeManager = [home homeManager];

  if (homeManager)
  {
    v11 = *MEMORY[0x277CD0880];
    uuid = [(HMDAccessory *)selfCopy uuid];
    [homeManager updateGenerationCounterWithReason:v11 sourceUUID:uuid shouldNotifyClients:1];

    [homeManager assistantSyncDataChanged:v11];
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    v14 = selfCopy;
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

- (id)mediaGroupParticipantLocalDataStorageForMediaDestinationManager:(id)manager
{
  home = [(HMDAccessory *)self home];
  homeManager = [home homeManager];
  mediaGroupParticipantDataLocalStorage = [homeManager mediaGroupParticipantDataLocalStorage];

  return mediaGroupParticipantDataLocalStorage;
}

- (id)rootDestinationManagerForMediaDestinationManager:(id)manager
{
  managerCopy = manager;
  home = [(HMDAccessory *)self home];
  identifier = [managerCopy identifier];

  v7 = [home rootDestinationManagerWithDescendantDestinationIdentifier:identifier];

  return v7;
}

- (id)mediaDestinationManager:(id)manager destinationControllerWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  home = [(HMDAccessory *)self home];
  v7 = [home destinationControllerWithIdentifier:identifierCopy];

  return v7;
}

- (id)mediaDestinationControllerWithData:(id)data backingStore:(id)store messageDispatcher:(id)dispatcher notificationCenter:(id)center logEventSubmitter:(id)submitter dailyScheduler:(id)scheduler targetDevice:(BOOL)device dataSource:(id)self0 delegate:(id)self1
{
  delegateCopy = delegate;
  sourceCopy = source;
  schedulerCopy = scheduler;
  submitterCopy = submitter;
  centerCopy = center;
  dispatcherCopy = dispatcher;
  storeCopy = store;
  dataCopy = data;
  LOBYTE(v27) = device;
  v25 = [[HMDMediaDestinationController alloc] initWithData:dataCopy backingStore:storeCopy messageDispatcher:dispatcherCopy notificationCenter:centerCopy logEventSubmitter:submitterCopy dailyScheduler:schedulerCopy targetDevice:v27 dataSource:sourceCopy delegate:delegateCopy];

  return v25;
}

- (void)mediaDestinationControllerDidUpdateStagedValues:(id)values
{
  v20 = *MEMORY[0x277D85DE8];
  valuesCopy = values;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v18 = 138543362;
    v19 = v8;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Handling media destination controller did update staged values", &v18, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  home = [(HMDAccessory *)selfCopy home];
  homeManager = [home homeManager];

  if (homeManager)
  {
    v11 = *MEMORY[0x277CD0880];
    uuid = [(HMDAccessory *)selfCopy uuid];
    [homeManager updateGenerationCounterWithReason:v11 sourceUUID:uuid shouldNotifyClients:1];

    [homeManager assistantSyncDataChanged:v11];
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    v14 = selfCopy;
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

- (id)currentDestinationTypeForMediaDestinationControllerMetricsEventDispatcher:(id)dispatcher
{
  v17 = *MEMORY[0x277D85DE8];
  dispatcherCopy = dispatcher;
  audioDestinationControllerData = [(HMDAppleMediaAccessory *)self audioDestinationControllerData];
  v6 = audioDestinationControllerData;
  if (audioDestinationControllerData)
  {
    destinationIdentifier = [audioDestinationControllerData destinationIdentifier];
    if (destinationIdentifier)
    {
      v8 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDAppleMediaAccessory mediaDestinationControllerMetricsEventDispatcher:destinationTypeForDestinationWithIdentifier:](self, "mediaDestinationControllerMetricsEventDispatcher:destinationTypeForDestinationWithIdentifier:", dispatcherCopy, destinationIdentifier)}];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
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

- (int64_t)mediaDestinationControllerMetricsEventDispatcher:(id)dispatcher destinationTypeForDestinationWithIdentifier:(id)identifier
{
  v21 = *MEMORY[0x277D85DE8];
  dispatcherCopy = dispatcher;
  identifierCopy = identifier;
  home = [(HMDAccessory *)self home];
  v9 = home;
  if (home)
  {
    v10 = [home destinationTypeForDestinationWithIdentifier:identifierCopy];
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v17 = 138543618;
      v18 = v14;
      v19 = 2112;
      v20 = identifierCopy;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_ERROR, "%{public}@Could not get home to derive destination identifier from parent destination identifier: %@", &v17, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    v10 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];
  return v10;
}

- (id)currentUserForMediaDestinationControllerMetricsEventDispatcher:(id)dispatcher
{
  home = [(HMDAccessory *)self home];
  currentUser = [home currentUser];

  return currentUser;
}

- (id)mediaGroupLocalDataStorageForMediaDestinationController:(id)controller
{
  v30 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  home = [(HMDAccessory *)self home];
  v6 = home;
  if (home)
  {
    homeManager = [home homeManager];
    v8 = homeManager;
    if (homeManager)
    {
      mediaGroupParticipantDataLocalStorage = [homeManager mediaGroupParticipantDataLocalStorage];
      v10 = mediaGroupParticipantDataLocalStorage;
      if (mediaGroupParticipantDataLocalStorage)
      {
        v11 = mediaGroupParticipantDataLocalStorage;
      }

      else
      {
        v20 = objc_autoreleasePoolPush();
        selfCopy = self;
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
      selfCopy2 = self;
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
    selfCopy3 = self;
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

- (id)mediaDestinationController:(id)controller rootDestinationWithDecendantIdentifier:(id)identifier
{
  v22 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  identifierCopy = identifier;
  home = [(HMDAccessory *)self home];
  v9 = home;
  if (home)
  {
    v10 = [home rootDestinationManagerWithDescendantDestinationIdentifier:identifierCopy];
    destination = [v10 destination];
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    selfCopy = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      v18 = 138543618;
      v19 = v15;
      v20 = 2112;
      v21 = identifierCopy;
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_ERROR, "%{public}@Could not get home to derive root destination from destination identifier: %@", &v18, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
    destination = 0;
  }

  v16 = *MEMORY[0x277D85DE8];

  return destination;
}

- (id)mediaDestinationController:(id)controller destinationWithParentIdentifier:(id)identifier
{
  v22 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  identifierCopy = identifier;
  home = [(HMDAccessory *)self home];
  v9 = home;
  if (home)
  {
    v10 = [home destinationManagerWithParentIdentifier:identifierCopy];
    destination = [v10 destination];
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    selfCopy = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      v18 = 138543618;
      v19 = v15;
      v20 = 2112;
      v21 = identifierCopy;
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_ERROR, "%{public}@Could not get home to derive destination from parent identifier: %@", &v18, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
    destination = 0;
  }

  v16 = *MEMORY[0x277D85DE8];

  return destination;
}

- (id)mediaDestinationController:(id)controller destinationManagerWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  home = [(HMDAccessory *)self home];
  mediaDestinationManagersWithHomeTheaterSupportedOptions = [home mediaDestinationManagersWithHomeTheaterSupportedOptions];

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __86__HMDAppleMediaAccessory_mediaDestinationController_destinationManagerWithIdentifier___block_invoke;
  v11[3] = &unk_27972A130;
  v12 = identifierCopy;
  v8 = identifierCopy;
  v9 = [mediaDestinationManagersWithHomeTheaterSupportedOptions na_firstObjectPassingTest:v11];

  return v9;
}

uint64_t __86__HMDAppleMediaAccessory_mediaDestinationController_destinationManagerWithIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [v3 hmf_isEqualToUUID:*(a1 + 32)];

  return v4;
}

- (id)availableDestinationIdentifiersForMediaDestinationController:(id)controller
{
  v23 = *MEMORY[0x277D85DE8];
  home = [(HMDAccessory *)self home];
  room = [(HMDAccessory *)self room];
  v6 = [home mediaDestinationsInRoom:room];

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
          uniqueIdentifier = [v13 uniqueIdentifier];
          [v7 addObject:uniqueIdentifier];
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

- (void)handleRemovedMediaDestinationControllerModel:(id)model message:(id)message
{
  v27 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  messageCopy = message;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v23 = 138543618;
    v24 = v11;
    v25 = 2112;
    v26 = modelCopy;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Handling transaction removed media destination controller model: %@", &v23, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  audioDestinationController = [(HMDAppleMediaAccessory *)selfCopy audioDestinationController];
  uuid = [modelCopy uuid];
  identifier = [audioDestinationController identifier];
  v15 = [uuid hmf_isEqualToUUID:identifier];

  if (v15)
  {
    v16 = objc_autoreleasePoolPush();
    v17 = selfCopy;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = HMFGetLogIdentifier();
      v23 = 138543618;
      v24 = v19;
      v25 = 2112;
      v26 = audioDestinationController;
      _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_INFO, "%{public}@Removing audio destination controller: %@", &v23, 0x16u);
    }

    objc_autoreleasePoolPop(v16);
    [(HMDAppleMediaAccessory *)v17 setAudioDestinationController:0];
    [(HMDAppleMediaAccessory *)v17 unsetAudioDestinationControllerData];
    transactionResult = [messageCopy transactionResult];
    [transactionResult markChanged];

    transactionResult2 = [messageCopy transactionResult];
    [transactionResult2 markSaveToAssistant];
  }

  [messageCopy respondWithSuccess];

  v22 = *MEMORY[0x277D85DE8];
}

- (void)handleRemovedMediaDestinationModel:(id)model message:(id)message
{
  v29 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  messageCopy = message;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v25 = 138543618;
    v26 = v11;
    v27 = 2112;
    v28 = modelCopy;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Handling transaction removed media destination model: %@", &v25, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  uuid = [modelCopy uuid];
  audioDestination = [(HMDAppleMediaAccessory *)selfCopy audioDestination];
  uniqueIdentifier = [audioDestination uniqueIdentifier];
  v15 = [uuid hmf_isEqualToUUID:uniqueIdentifier];

  if (v15)
  {
    v16 = objc_autoreleasePoolPush();
    v17 = selfCopy;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = HMFGetLogIdentifier();
      v25 = 138543362;
      v26 = v19;
      _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_INFO, "%{public}@Removing audio destination manager due to removed model transaction", &v25, 0xCu);
    }

    objc_autoreleasePoolPop(v16);
    audioDestinationManager = [(HMDAppleMediaAccessory *)v17 audioDestinationManager];
    [(HMDAppleMediaAccessory *)v17 setAudioDestinationManager:0];
    [(HMDAppleMediaAccessory *)v17 unsetAudioDestination];
    messageHandler = [audioDestinationManager messageHandler];
    [messageHandler handleUpdatedDestination:0];

    transactionResult = [messageCopy transactionResult];
    [transactionResult markChanged];

    transactionResult2 = [messageCopy transactionResult];
    [transactionResult2 markSaveToAssistant];
  }

  [messageCopy respondWithSuccess];

  v24 = *MEMORY[0x277D85DE8];
}

- (void)transactionObjectRemoved:(id)removed message:(id)message
{
  removedCopy = removed;
  messageCopy = message;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = removedCopy;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  if (v9)
  {
    [(HMDAppleMediaAccessory *)self handleRemovedMediaDestinationModel:v9 message:messageCopy];
  }

  else
  {
    v10 = removedCopy;
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
      [(HMDAppleMediaAccessory *)self handleRemovedMediaDestinationControllerModel:v12 message:messageCopy];
    }

    else
    {
      v13.receiver = self;
      v13.super_class = HMDAppleMediaAccessory;
      [(HMDAccessory *)&v13 transactionObjectRemoved:v10 message:messageCopy];
    }
  }
}

- (void)handleUpdatedMediaDestinationModel:(id)model message:(id)message
{
  v45 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  messageCopy = message;
  if (isFeatureHomeTheaterQFAEnabledForTests && [isFeatureHomeTheaterQFAEnabledForTests BOOLValue])
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543618;
      v42 = v11;
      v43 = 2112;
      v44 = modelCopy;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Skipping model: %@ due to home theater QFA", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
  }

  else
  {
    audioDestinationManager = [(HMDAppleMediaAccessory *)self audioDestinationManager];
    v13 = audioDestinationManager;
    if (audioDestinationManager)
    {
      backingStoreHandler = [audioDestinationManager backingStoreHandler];
      [backingStoreHandler transactionObjectUpdated:modelCopy newValues:modelCopy message:messageCopy];
    }

    else
    {
      home = [(HMDAccessory *)self home];
      v16 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v18 = HMFGetOSLogHandle();
      v19 = os_log_type_enabled(v18, OS_LOG_TYPE_INFO);
      if (home)
      {
        v40 = home;
        if (v19)
        {
          v20 = HMFGetLogIdentifier();
          *buf = 138543618;
          v42 = v20;
          v43 = 2112;
          v44 = modelCopy;
          _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_INFO, "%{public}@Creating new audio destination manager with model: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v16);
        supportedOptions = [modelCopy supportedOptions];
        unsignedIntegerValue = [supportedOptions unsignedIntegerValue];

        audioGroupIdentifier = [modelCopy audioGroupIdentifier];
        v24 = objc_alloc(MEMORY[0x277CD1B80]);
        uuid = [modelCopy uuid];
        parentUUID = [modelCopy parentUUID];
        v27 = [v24 initWithUniqueIdentifier:uuid parentIdentifier:parentUUID supportedOptions:unsignedIntegerValue audioGroupIdentifier:audioGroupIdentifier];

        v28 = [HMDMediaDestinationManager alloc];
        msgDispatcher = [(HMDAccessory *)selfCopy2 msgDispatcher];
        notificationCenter = [(HMDMediaAccessory *)selfCopy2 notificationCenter];
        backingStore = [(HMDAppleMediaAccessory *)selfCopy2 backingStore];
        v32 = [(HMDMediaDestinationManager *)v28 initWithDestination:v27 messageDispatcher:msgDispatcher notificationCenter:notificationCenter backingStore:backingStore targetDevice:[(HMDAppleMediaAccessory *)selfCopy2 isCurrentAccessory] dataSource:selfCopy2 delegate:selfCopy2];
        [(HMDAppleMediaAccessory *)selfCopy2 setAudioDestinationManager:v32];

        audioDestinationManager2 = [(HMDAppleMediaAccessory *)selfCopy2 audioDestinationManager];
        home = v40;
        [audioDestinationManager2 configureWithHome:v40 currentAccessory:{-[HMDAppleMediaAccessory isCurrentAccessory](selfCopy2, "isCurrentAccessory")}];

        audioDestinationManager3 = [(HMDAppleMediaAccessory *)selfCopy2 audioDestinationManager];
        messageHandler = [audioDestinationManager3 messageHandler];
        [messageHandler handleUpdatedDestination:v27];

        transactionResult = [messageCopy transactionResult];
        [transactionResult markChanged];

        transactionResult2 = [messageCopy transactionResult];
        [transactionResult2 markSaveToAssistant];

        [messageCopy respondWithSuccess];
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
        audioGroupIdentifier = [MEMORY[0x277CCA9B8] hmfErrorWithCode:4];
        [messageCopy respondWithError:audioGroupIdentifier];
      }
    }
  }

  v39 = *MEMORY[0x277D85DE8];
}

- (void)handleUpdatedMediaDestinationControllerModel:(id)model message:(id)message
{
  v65 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  messageCopy = message;
  if (isFeatureHomeTheaterQFAEnabledForTests && [isFeatureHomeTheaterQFAEnabledForTests BOOLValue])
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543618;
      v54 = v11;
      v55 = 2112;
      v56 = modelCopy;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Skipping transaction update: %@ due to Home Theater QFA enabled", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
  }

  else
  {
    audioDestinationController = [(HMDAppleMediaAccessory *)self audioDestinationController];
    v13 = audioDestinationController;
    if (audioDestinationController)
    {
      backingStoreHandler = [audioDestinationController backingStoreHandler];
      [backingStoreHandler transactionObjectUpdated:modelCopy newValues:modelCopy message:messageCopy];
    }

    else
    {
      v15 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v18 = HMFGetLogIdentifier();
        *buf = 138543618;
        v54 = v18;
        v55 = 2112;
        v56 = modelCopy;
        _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_INFO, "%{public}@Creating new audio destination controller with model: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v15);
      availableDestinationModelIdentifiers = [modelCopy availableDestinationModelIdentifiers];
      v20 = availableDestinationModelIdentifiers;
      v21 = MEMORY[0x277CBEBF8];
      if (availableDestinationModelIdentifiers)
      {
        v21 = availableDestinationModelIdentifiers;
      }

      v22 = v21;

      v23 = objc_alloc(MEMORY[0x277CD1B90]);
      uuid = [modelCopy uuid];
      parentUUID = [modelCopy parentUUID];
      destinationModelIdentifier = [modelCopy destinationModelIdentifier];
      supportedOptions = [modelCopy supportedOptions];
      v51 = v22;
      v52 = [v23 initWithIdentifier:uuid parentIdentifier:parentUUID destinationIdentifier:destinationModelIdentifier supportedOptions:objc_msgSend(supportedOptions availableDestinationIdentifiers:{"unsignedIntegerValue"), v22}];

      home = [(HMDAccessory *)selfCopy2 home];
      backingStore = [(HMDAppleMediaAccessory *)selfCopy2 backingStore];
      msgDispatcher = [(HMDAccessory *)selfCopy2 msgDispatcher];
      notificationCenter = [(HMDMediaAccessory *)selfCopy2 notificationCenter];
      logEventSubmitter = [home logEventSubmitter];
      v50 = home;
      dailyScheduler = [home dailyScheduler];
      v34 = dailyScheduler;
      v49 = messageCopy;
      if (backingStore && msgDispatcher && notificationCenter && logEventSubmitter && dailyScheduler)
      {
        v35 = [HMDMediaDestinationController alloc];
        LOBYTE(v47) = [(HMDAppleMediaAccessory *)selfCopy2 isCurrentAccessory];
        v36 = [(HMDMediaDestinationController *)v35 initWithData:v52 backingStore:backingStore messageDispatcher:msgDispatcher notificationCenter:notificationCenter logEventSubmitter:logEventSubmitter dailyScheduler:v34 targetDevice:v47 dataSource:selfCopy2 delegate:selfCopy2];
        [(HMDAppleMediaAccessory *)selfCopy2 setAudioDestinationController:v36];

        audioDestinationController2 = [(HMDAppleMediaAccessory *)selfCopy2 audioDestinationController];
        v38 = v50;
        [audioDestinationController2 configureWithHome:v50];

        transactionResult = [messageCopy transactionResult];
        [transactionResult markChanged];

        transactionResult2 = [messageCopy transactionResult];
        [transactionResult2 markSaveToAssistant];

        v41 = messageCopy;
        v42 = v52;
        [v41 respondWithSuccess];
      }

      else
      {
        v43 = objc_autoreleasePoolPush();
        v44 = selfCopy2;
        v45 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
        {
          v48 = HMFGetLogIdentifier();
          *buf = 138544642;
          v54 = v48;
          v55 = 2112;
          v56 = backingStore;
          v57 = 2112;
          v58 = msgDispatcher;
          v59 = 2112;
          v60 = notificationCenter;
          v61 = 2112;
          v62 = logEventSubmitter;
          v63 = 2112;
          v64 = v34;
          _os_log_impl(&dword_2531F8000, v45, OS_LOG_TYPE_ERROR, "%{public}@Failed to create new audio destination controller due to missing dependencies backing store: %@ message dispatcher: %@ notification center: %@ log submitter: %@ daily scheduler: %@", buf, 0x3Eu);
        }

        objc_autoreleasePoolPop(v43);
        v42 = v52;
        v38 = v50;
      }

      messageCopy = v49;
    }
  }

  v46 = *MEMORY[0x277D85DE8];
}

- (void)handleTransactionUpdatedPublicPairingIdentity:(id)identity result:(id)result
{
  v23 = *MEMORY[0x277D85DE8];
  identityCopy = identity;
  resultCopy = result;
  if (![(HMDAppleMediaAccessory *)self isCurrentAccessory])
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v19 = 138543618;
      v20 = v11;
      v21 = 2112;
      v22 = identityCopy;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Handling transaction updated accessory public pairing identity: %@", &v19, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    pairingIdentity = [(HMDAppleMediaAccessory *)selfCopy pairingIdentity];
    v13 = [pairingIdentity isEqual:identityCopy];

    if (v13)
    {
      v14 = objc_autoreleasePoolPush();
      v15 = selfCopy;
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
      [(HMDAppleMediaAccessory *)selfCopy setPairingIdentity:identityCopy];
      [(HMDAppleMediaAccessory *)selfCopy notifyFrameworkOfUpdatedPairingIdentity];
      [resultCopy markChanged];
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)transactionObjectUpdated:(id)updated newValues:(id)values message:(id)message
{
  v199 = *MEMORY[0x277D85DE8];
  updatedCopy = updated;
  valuesCopy = values;
  messageCopy = message;
  v10 = valuesCopy;
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
    v168 = messageCopy;
    responseHandler = [messageCopy responseHandler];
    if (responseHandler)
    {
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __69__HMDAppleMediaAccessory_transactionObjectUpdated_newValues_message___block_invoke;
      aBlock[3] = &unk_27972A108;
      aBlock[4] = &v173;
      v13 = _Block_copy(aBlock);
      [messageCopy setResponseHandler:v13];
    }

    v171.receiver = self;
    v171.super_class = HMDAppleMediaAccessory;
    [(HMDMediaAccessory *)&v171 transactionObjectUpdated:0 newValues:v10 message:messageCopy];
    selfCopy = self;
    v15 = v12;
    v165 = messageCopy;
    transactionResult = [v165 transactionResult];
    deviceController = __HMDAppleMediaAccessoryGetDeviceController(selfCopy);
    deviceUUID = [v15 deviceUUID];

    if (deviceUUID)
    {
      if ([(HMDAppleMediaAccessory *)selfCopy isCurrentAccessory])
      {
        if (!deviceController)
        {
          v18 = objc_autoreleasePoolPush();
          v19 = selfCopy;
          v20 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
          {
            v21 = HMFGetLogIdentifier();
            *buf = 138543362;
            v196 = v21;
            _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_INFO, "%{public}@Setting up device controller for ourselves", buf, 0xCu);
          }

          objc_autoreleasePoolPop(v18);
          dependencyFactory = [(HMDAppleMediaAccessory *)v19 dependencyFactory];
          deviceController = [dependencyFactory deviceController];

          [(HMDAppleMediaAccessory *)v19 setDeviceController:deviceController];
          [deviceController setDelegate:v19];
          device = [deviceController device];
          __HMDAppleMediaAccessoryHandleUpdatedDevice(v19, device);

          [transactionResult markChanged];
        }
      }

      else
      {
        v28 = objc_alloc(MEMORY[0x277CCAD78]);
        deviceUUID2 = [v15 deviceUUID];
        v30 = [v28 initWithUUIDString:deviceUUID2];

        identifier = [deviceController identifier];
        LOBYTE(v28) = [v30 hmf_isEqualToUUID:identifier];

        if (v28)
        {
          v32 = deviceController;
        }

        else
        {
          v36 = objc_autoreleasePoolPush();
          v37 = selfCopy;
          v38 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
          {
            v39 = HMFGetLogIdentifier();
            uUIDString = [v30 UUIDString];
            *buf = 138543618;
            v196 = v39;
            v197 = 2112;
            v198 = uUIDString;
            _os_log_impl(&dword_2531F8000, v38, OS_LOG_TYPE_DEFAULT, "%{public}@Updating the underlying device with identifier: %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v36);
          dependencyFactory2 = [(HMDAppleMediaAccessory *)v37 dependencyFactory];
          v32 = [dependencyFactory2 deviceControllerWithDeviceIdentifier:v30];

          [(HMDAppleMediaAccessory *)v37 setDeviceController:v32];
          [v32 setDelegate:v37];
          device2 = [v32 device];
          __HMDAppleMediaAccessoryHandleUpdatedDevice(v37, device2);

          [transactionResult markChanged];
        }

        deviceController = v32;
      }
    }

    device3 = [v15 device];

    if (device3)
    {
      device4 = [v15 device];
      device5 = [(HMDAppleMediaAccessory *)selfCopy device];
      v46 = device4 == device5;

      if (!v46)
      {
        device6 = [(HMDAppleMediaAccessory *)selfCopy device];

        if (device6)
        {
          v185 = 0u;
          v186 = 0u;
          v183 = 0u;
          v184 = 0u;
          device7 = [(HMDAppleMediaAccessory *)selfCopy device];
          v49 = [device7 backingStoreObjectsWithChangeType:0 version:4];

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

        device8 = [v15 device];

        if (device8)
        {
          v181 = 0u;
          v182 = 0u;
          v179 = 0u;
          v180 = 0u;
          device9 = [v15 device];
          v55 = [device9 backingStoreObjectsWithChangeType:0 version:4];

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

      if (!deviceController)
      {
        dependencyFactory3 = [(HMDAppleMediaAccessory *)selfCopy dependencyFactory];
        device10 = [v15 device];
        deviceController = [dependencyFactory3 deviceControllerWithDevice:device10];

        [(HMDAppleMediaAccessory *)selfCopy setDeviceController:deviceController];
        [deviceController setDelegate:selfCopy];
        device11 = [deviceController device];
        __HMDAppleMediaAccessoryHandleUpdatedDevice(selfCopy, device11);
      }

      device12 = [v15 device];
      device13 = [(HMDAppleMediaAccessory *)selfCopy device];
      v64 = device12 == device13;

      if (!v64)
      {
        device14 = [(HMDAppleMediaAccessory *)selfCopy device];
        device15 = [v15 device];
        v67 = [device14 isBackingStorageEqual:device15];

        if (v67)
        {
          goto LABEL_55;
        }

        device16 = [v15 device];
        [deviceController updateWithDevice:device16 completionHandler:0];
      }

      [transactionResult markChanged];
    }

LABEL_55:

    pairingIdentity = [v15 pairingIdentity];

    if (!pairingIdentity)
    {
      goto LABEL_91;
    }

    isCurrentAccessory = [(HMDAppleMediaAccessory *)selfCopy isCurrentAccessory];
    pairingIdentity2 = [v15 pairingIdentity];
    if (!isCurrentAccessory)
    {
      pairingIdentity3 = [(HMDAppleMediaAccessory *)selfCopy pairingIdentity];
      if ([pairingIdentity2 isEqual:pairingIdentity3])
      {
        pairingIdentity4 = [v15 pairingIdentity];
        privateKey = [pairingIdentity4 privateKey];
        if (privateKey)
        {

          goto LABEL_91;
        }

        pairingIdentity5 = [(HMDAppleMediaAccessory *)selfCopy pairingIdentity];
        privateKey2 = [pairingIdentity5 privateKey];
        v106 = privateKey2 == 0;

        if (v106)
        {
LABEL_91:
          softwareVersion = [v15 softwareVersion];

          if (softwareVersion)
          {
            softwareVersion2 = [v15 softwareVersion];
            softwareVersion3 = [(HMDAppleMediaAccessory *)selfCopy softwareVersion];
            v114 = [softwareVersion2 isEqual:softwareVersion3];

            if ((v114 & 1) == 0)
            {
              v115 = objc_autoreleasePoolPush();
              v116 = selfCopy;
              v117 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v117, OS_LOG_TYPE_DEFAULT))
              {
                v118 = HMFGetLogIdentifier();
                softwareVersion4 = [v15 softwareVersion];
                *v191 = 138543618;
                *&v191[4] = v118;
                *&v191[12] = 2112;
                *&v191[14] = softwareVersion4;
                _os_log_impl(&dword_2531F8000, v117, OS_LOG_TYPE_DEFAULT, "%{public}@Updated software version: %@", v191, 0x16u);
              }

              objc_autoreleasePoolPop(v115);
              softwareVersion5 = [v15 softwareVersion];
              [(HMDAppleMediaAccessory *)v116 setSoftwareVersion:softwareVersion5];

              [transactionResult markChanged];
              if ([(HMDAppleMediaAccessory *)v116 isCurrentAccessory])
              {
                softwareVersion6 = [(HMDAppleMediaAccessory *)v116 softwareVersion];
                productInfo = [MEMORY[0x277D0F8E8] productInfo];
                softwareVersion7 = [productInfo softwareVersion];
                v124 = HMFEqualObjects();

                if ((v124 & 1) == 0)
                {
                  v125 = objc_autoreleasePoolPush();
                  v126 = v116;
                  v127 = HMFGetOSLogHandle();
                  if (os_log_type_enabled(v127, OS_LOG_TYPE_DEFAULT))
                  {
                    v128 = HMFGetLogIdentifier();
                    softwareVersion8 = [(HMDAppleMediaAccessory *)v126 softwareVersion];
                    productInfo2 = [MEMORY[0x277D0F8E8] productInfo];
                    softwareVersion9 = [productInfo2 softwareVersion];
                    *v191 = 138543874;
                    *&v191[4] = v128;
                    *&v191[12] = 2112;
                    *&v191[14] = softwareVersion8;
                    *&v191[22] = 2112;
                    v192 = softwareVersion9;
                    _os_log_impl(&dword_2531F8000, v127, OS_LOG_TYPE_DEFAULT, "%{public}@Stored software version is incorrect (%@), updating to: (%@)", v191, 0x20u);
                  }

                  objc_autoreleasePoolPop(v125);
                  productInfo3 = [MEMORY[0x277D0F8E8] productInfo];
                  softwareVersion10 = [productInfo3 softwareVersion];
                  [(HMDAppleMediaAccessory *)v126 _updateSoftwareVersion:softwareVersion10];
                }
              }
            }
          }

          if ([v15 propertyWasSet:@"supportedStereoPairVersions"])
          {
            supportedStereoPairVersions = [v15 supportedStereoPairVersions];
            v135 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDAppleMediaAccessory supportedStereoPairVersions](selfCopy, "supportedStereoPairVersions")}];
            v136 = [supportedStereoPairVersions isEqual:v135];

            if ((v136 & 1) == 0)
            {
              v137 = objc_autoreleasePoolPush();
              v138 = selfCopy;
              v139 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v139, OS_LOG_TYPE_DEFAULT))
              {
                v140 = HMFGetLogIdentifier();
                supportedStereoPairVersions2 = [v15 supportedStereoPairVersions];
                *v191 = 138543618;
                *&v191[4] = v140;
                *&v191[12] = 2112;
                *&v191[14] = supportedStereoPairVersions2;
                _os_log_impl(&dword_2531F8000, v139, OS_LOG_TYPE_DEFAULT, "%{public}@Updated supported stereo pair versions: %@", v191, 0x16u);
              }

              objc_autoreleasePoolPop(v137);
              supportedStereoPairVersions3 = [v15 supportedStereoPairVersions];
              -[HMDAppleMediaAccessory setSupportedStereoPairVersions:](v138, "setSupportedStereoPairVersions:", [supportedStereoPairVersions3 unsignedIntegerValue]);

              [transactionResult markChanged];
            }
          }

          if ([v15 propertyWasSet:@"wifiNetworkInfo"] && (!-[HMDAppleMediaAccessory isCurrentAccessory](selfCopy, "isCurrentAccessory") || objc_msgSend(transactionResult, "source") != 2))
          {
            wifiNetworkInfo = [v15 wifiNetworkInfo];
            wifiNetworkInfo2 = [(HMDAppleMediaAccessory *)selfCopy wifiNetworkInfo];
            v145 = HMFEqualObjects();

            if ((v145 & 1) == 0)
            {
              v146 = objc_autoreleasePoolPush();
              v147 = selfCopy;
              v148 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v148, OS_LOG_TYPE_DEFAULT))
              {
                v149 = HMFGetLogIdentifier();
                wifiNetworkInfo3 = [v15 wifiNetworkInfo];
                *v191 = 138543618;
                *&v191[4] = v149;
                *&v191[12] = 2112;
                *&v191[14] = wifiNetworkInfo3;
                _os_log_impl(&dword_2531F8000, v148, OS_LOG_TYPE_DEFAULT, "%{public}@Updated WiFi network info: %@", v191, 0x16u);
              }

              objc_autoreleasePoolPop(v146);
              wifiNetworkInfo4 = [v15 wifiNetworkInfo];
              [(HMDAppleMediaAccessory *)v147 setWifiNetworkInfo:wifiNetworkInfo4];

              [transactionResult markChanged];
            }
          }

          if ([v15 propertyWasSet:@"loggedInAccount"])
          {
            remoteLoginHandler = [(HMDAppleMediaAccessory *)selfCopy remoteLoginHandler];
            [remoteLoginHandler _handleRemoteLoginAccount:v15 message:v165];

            [transactionResult markChanged];
          }

          *v191 = MEMORY[0x277D85DD0];
          *&v191[8] = 3221225472;
          *&v191[16] = ____transactionAccessoryUpdated_block_invoke_94534;
          v192 = &unk_279734468;
          v153 = transactionResult;
          v193 = v153;
          [(HMDAccessory *)selfCopy transactionAccessoryUpdatedForPreferredMediaUser:v15 completionHandler:v191];
          if ([v15 propertyWasSet:@"productColor"])
          {
            productColor = [v15 productColor];
            v155 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDAppleMediaAccessory productColor](selfCopy, "productColor")}];
            v156 = [productColor isEqual:v155];

            if ((v156 & 1) == 0)
            {
              v157 = objc_autoreleasePoolPush();
              v158 = selfCopy;
              v159 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v159, OS_LOG_TYPE_DEFAULT))
              {
                v160 = HMFGetLogIdentifier();
                productColor2 = [v15 productColor];
                *v187 = 138543618;
                v188 = v160;
                v189 = 2112;
                v190 = productColor2;
                _os_log_impl(&dword_2531F8000, v159, OS_LOG_TYPE_DEFAULT, "%{public}@Updated product color: %@", v187, 0x16u);
              }

              objc_autoreleasePoolPop(v157);
              productColor3 = [v15 productColor];
              -[HMDAppleMediaAccessory setProductColor:](v158, "setProductColor:", [productColor3 unsignedIntegerValue]);

              [v153 markChanged];
            }
          }

          [v165 respondWithPayload:0];

          if (responseHandler)
          {
            responseHandler[2](responseHandler, v174[5], 0);
          }

          _Block_object_dispose(&v173, 8);
          messageCopy = v168;
          goto LABEL_122;
        }
      }

      else
      {
      }

      v96 = objc_autoreleasePoolPush();
      v97 = selfCopy;
      v98 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v98, OS_LOG_TYPE_DEFAULT))
      {
        v99 = HMFGetLogIdentifier();
        pairingIdentity6 = [v15 pairingIdentity];
        *v191 = 138543618;
        *&v191[4] = v99;
        *&v191[12] = 2112;
        *&v191[14] = pairingIdentity6;
        _os_log_impl(&dword_2531F8000, v98, OS_LOG_TYPE_DEFAULT, "%{public}@Updated pairing identity: %@", v191, 0x16u);
      }

      objc_autoreleasePoolPop(v96);
      pairingIdentity7 = [v15 pairingIdentity];
      [(HMDAppleMediaAccessory *)v97 setPairingIdentity:pairingIdentity7];

      goto LABEL_76;
    }

    lastCreatedPairingIdentity = [(HMDAppleMediaAccessory *)selfCopy lastCreatedPairingIdentity];
    if ([pairingIdentity2 isEqual:lastCreatedPairingIdentity])
    {
      lastCreatedPairingIdentity2 = [(HMDAppleMediaAccessory *)selfCopy lastCreatedPairingIdentity];
      privateKey3 = [lastCreatedPairingIdentity2 privateKey];
      v75 = privateKey3 == 0;

      if (!v75)
      {
        v76 = objc_autoreleasePoolPush();
        v77 = selfCopy;
        v78 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
        {
          v79 = HMFGetLogIdentifier();
          pairingIdentity8 = [v15 pairingIdentity];
          *v191 = 138543618;
          *&v191[4] = v79;
          *&v191[12] = 2112;
          *&v191[14] = pairingIdentity8;
          _os_log_impl(&dword_2531F8000, v78, OS_LOG_TYPE_DEFAULT, "%{public}@Updated pairing identity with private info: %@", v191, 0x16u);
        }

        objc_autoreleasePoolPop(v76);
        lastCreatedPairingIdentity3 = [(HMDAppleMediaAccessory *)v77 lastCreatedPairingIdentity];
        [(HMDAppleMediaAccessory *)v77 setPairingIdentity:lastCreatedPairingIdentity3];

        [(HMDAppleMediaAccessory *)v77 setFixedPairingIdentityInCloud:1];
LABEL_76:
        [(HMDAppleMediaAccessory *)selfCopy notifyFrameworkOfUpdatedPairingIdentity];
LABEL_77:
        [transactionResult markChanged];
        goto LABEL_91;
      }
    }

    else
    {
    }

    pairingIdentity9 = [v15 pairingIdentity];
    pairingIdentity10 = [(HMDAppleMediaAccessory *)selfCopy pairingIdentity];
    if ([pairingIdentity9 isEqual:pairingIdentity10])
    {
      pairingIdentity11 = [(HMDAppleMediaAccessory *)selfCopy pairingIdentity];
      privateKey4 = [pairingIdentity11 privateKey];
      if (privateKey4)
      {
        pairingIdentity12 = [v15 pairingIdentity];
        privateKey5 = [pairingIdentity12 privateKey];
        v91 = privateKey5 == 0;

        if (v91)
        {
          v92 = objc_autoreleasePoolPush();
          v93 = selfCopy;
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
        v108 = selfCopy;
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
    settingsController = [(HMDAppleMediaAccessory *)self settingsController];
    v170[0] = MEMORY[0x277D85DD0];
    v170[1] = 3221225472;
    v170[2] = __69__HMDAppleMediaAccessory_transactionObjectUpdated_newValues_message___block_invoke_2;
    v170[3] = &unk_2797359D8;
    v170[4] = self;
    [settingsController handleUpdatedGroupModel:v26 completion:v170];
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
      [(HMDAppleMediaAccessory *)self handleUpdatedMediaDestinationControllerModel:v35 message:messageCopy];
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
        [(HMDMediaAccessory *)&v169 transactionObjectUpdated:updatedCopy newValues:v33 message:messageCopy];
        goto LABEL_122;
      }

      [(HMDAppleMediaAccessory *)self handleUpdatedMediaDestinationModel:v103 message:messageCopy];
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
    committedAudioDestinationControllerData = [(HMDAppleMediaAccessory *)self committedAudioDestinationControllerData];
    if (committedAudioDestinationControllerData)
    {
      v3 = [HMDMediaDestinationControllerBackingStoreHandler backingStoreObjectForData:committedAudioDestinationControllerData];
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
    committedAudioDestination = [(HMDAppleMediaAccessory *)self committedAudioDestination];
    if (committedAudioDestination)
    {
      v3 = [HMDMediaDestinationBackingStoreHandler backingStoreObjectForMediaDestination:committedAudioDestination];
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

- (id)backingStoreObjects:(int64_t)objects
{
  modelDataSource = [(HMDAppleMediaAccessory *)self modelDataSource];
  uuid = [(HMDAccessory *)self uuid];
  home = [(HMDAccessory *)self home];
  uuid2 = [home uuid];
  v9 = [modelDataSource modelforAccessory:self changeType:1 uuid:uuid parentUUID:uuid2];

  [(HMDAppleMediaAccessory *)self populateModelObject:v9 version:objects];
  v10 = [MEMORY[0x277CBEB18] arrayWithObject:v9];
  settingsController = [(HMDAppleMediaAccessory *)self settingsController];

  if (settingsController)
  {
    settingsController2 = [(HMDAppleMediaAccessory *)self settingsController];
    modelObjectsForSettings = [settingsController2 modelObjectsForSettings];

    if (modelObjectsForSettings)
    {
      [v10 addObjectsFromArray:modelObjectsForSettings];
    }
  }

  backingStoreObjectForMediaDestination = [(HMDAppleMediaAccessory *)self backingStoreObjectForMediaDestination];
  if (backingStoreObjectForMediaDestination)
  {
    [v10 addObject:backingStoreObjectForMediaDestination];
  }

  backingStoreObjectForMediaDestinationControllerData = [(HMDAppleMediaAccessory *)self backingStoreObjectForMediaDestinationControllerData];
  if (backingStoreObjectForMediaDestinationControllerData)
  {
    [v10 addObject:backingStoreObjectForMediaDestinationControllerData];
  }

  v19.receiver = self;
  v19.super_class = HMDAppleMediaAccessory;
  v16 = [(HMDAccessory *)&v19 backingStoreObjects:objects];
  [v10 addObjectsFromArray:v16];

  v17 = [v10 copy];

  return v17;
}

- (void)populateModelObject:(id)object version:(int64_t)version
{
  objectCopy = object;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = objectCopy;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  v40.receiver = self;
  v40.super_class = HMDAppleMediaAccessory;
  [(HMDAccessory *)&v40 populateModelObject:v8 version:version];
  device = [(HMDAppleMediaAccessory *)self device];
  version = [device version];
  v11 = +[HMDHomeKitVersion version4];
  v12 = [version isAtLeastVersion:v11];

  v13 = isWatch();
  if (v13 && (+[HMDDeviceCapabilities deviceCapabilities](HMDDeviceCapabilities, "deviceCapabilities"), version = objc_claimAutoreleasedReturnValue(), ![version supportsCloudDataSync]))
  {
    v15 = 1;
  }

  else
  {
    home = [(HMDAccessory *)self home];
    v15 = [home isOwnerUser] ^ 1;

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
    identifier = [device identifier];
    uUIDString = [identifier UUIDString];
    [v8 setDeviceUUID:uUIDString];

    if (v15 && self->_device)
    {
      [v8 setDevice:?];
      device = self->_device;
      self->_device = 0;
    }

    else
    {
      [v8 setDevice:device];
    }

    goto LABEL_19;
  }

LABEL_11:
  isCurrentDevice = [device isCurrentDevice];
  if (version > 3)
  {
    v17 = isCurrentDevice;
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
  remoteLoginHandler = [(HMDAppleMediaAccessory *)self remoteLoginHandler];

  if (remoteLoginHandler)
  {
    remoteLoginHandler2 = [(HMDAppleMediaAccessory *)self remoteLoginHandler];
    loggedInAccount = [remoteLoginHandler2 loggedInAccount];
    v24 = encodeRootObject();
    [v8 setLoggedInAccount:v24];
  }

  softwareVersion = [(HMDAppleMediaAccessory *)self softwareVersion];

  if (softwareVersion)
  {
    softwareVersion2 = [(HMDAppleMediaAccessory *)self softwareVersion];
    [v8 setSoftwareVersion:softwareVersion2];
  }

  wifiNetworkInfo = [(HMDAppleMediaAccessory *)self wifiNetworkInfo];

  if (wifiNetworkInfo)
  {
    wifiNetworkInfo2 = [(HMDAppleMediaAccessory *)self wifiNetworkInfo];
    [v8 setWifiNetworkInfo:wifiNetworkInfo2];
  }

  pairingIdentity = [(HMDAppleMediaAccessory *)self pairingIdentity];
  publicPairingIdentity = [pairingIdentity publicPairingIdentity];

  if (publicPairingIdentity)
  {
    pairingIdentity2 = [(HMDAppleMediaAccessory *)self pairingIdentity];
    publicPairingIdentity2 = [pairingIdentity2 publicPairingIdentity];
    [v8 setPairingIdentity:publicPairingIdentity2];
  }

  if ([(HMDAppleMediaAccessory *)self supportedStereoPairVersions])
  {
    v33 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDAppleMediaAccessory supportedStereoPairVersions](self, "supportedStereoPairVersions")}];
    [v8 setSupportedStereoPairVersions:v33];
  }

  if ([(HMDAppleMediaAccessory *)self supportsPreferredMediaUser])
  {
    preferredMediaUserUUID = [(HMDAccessory *)self preferredMediaUserUUID];
    [v8 setPreferredMediaUserUUID:preferredMediaUserUUID];
  }

  preferredMediaUserSelectionTypeNumber = [(HMDAccessory *)self preferredMediaUserSelectionTypeNumber];

  if (preferredMediaUserSelectionTypeNumber)
  {
    preferredMediaUserSelectionTypeNumber2 = [(HMDAccessory *)self preferredMediaUserSelectionTypeNumber];
    [v8 setPreferredUserSelectionType:preferredMediaUserSelectionTypeNumber2];
  }

  if ([(HMDAppleMediaAccessory *)self productColor])
  {
    v37 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDAppleMediaAccessory productColor](self, "productColor")}];
    [v8 setProductColor:v37];
  }

  idsIdentifier = [(HMDAppleMediaAccessory *)self idsIdentifier];

  if (idsIdentifier)
  {
    idsIdentifier2 = [(HMDAppleMediaAccessory *)self idsIdentifier];
    [v8 setIdsIdentifier:idsIdentifier2];
  }
}

- (id)modelObjectWithChangeType:(unint64_t)type
{
  v4 = [(HMDAppleMediaAccessory *)self transactionWithObjectChangeType:type];
  [(HMDAppleMediaAccessory *)self populateModelObject:v4 version:4];

  return v4;
}

- (id)transactionWithObjectChangeType:(unint64_t)type
{
  modelDataSource = [(HMDAppleMediaAccessory *)self modelDataSource];
  uuid = [(HMDAccessory *)self uuid];
  home = [(HMDAccessory *)self home];
  uuid2 = [home uuid];
  v9 = [modelDataSource modelforAccessory:self changeType:type uuid:uuid parentUUID:uuid2];

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

- (void)migrateAudioDestinationWithCloudZone:(id)zone migrationQueue:(id)queue completion:(id)completion
{
  zoneCopy = zone;
  queueCopy = queue;
  completionCopy = completion;
  if (isFeatureHomeTheaterQFAEnabledForTests && [isFeatureHomeTheaterQFAEnabledForTests BOOLValue])
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __89__HMDAppleMediaAccessory_migrateAudioDestinationWithCloudZone_migrationQueue_completion___block_invoke;
    block[3] = &unk_2797348C0;
    v16 = completionCopy;
    dispatch_async(queueCopy, block);
    audioDestinationManager = v16;
  }

  else
  {
    audioDestinationManager = [(HMDAppleMediaAccessory *)self audioDestinationManager];
    if (audioDestinationManager)
    {
      home = [(HMDAccessory *)self home];
      [audioDestinationManager migrateWithHome:home cloudZone:zoneCopy migrationQueue:queueCopy completion:completionCopy];
    }

    else
    {
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __89__HMDAppleMediaAccessory_migrateAudioDestinationWithCloudZone_migrationQueue_completion___block_invoke_2;
      v13[3] = &unk_2797348C0;
      v14 = completionCopy;
      dispatch_async(queueCopy, v13);
    }
  }
}

- (void)migrateAudioDestinationControllerWithCloudZone:(id)zone migrationQueue:(id)queue completion:(id)completion
{
  zoneCopy = zone;
  queueCopy = queue;
  completionCopy = completion;
  if (isFeatureHomeTheaterQFAEnabledForTests && [isFeatureHomeTheaterQFAEnabledForTests BOOLValue])
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __99__HMDAppleMediaAccessory_migrateAudioDestinationControllerWithCloudZone_migrationQueue_completion___block_invoke;
    block[3] = &unk_2797348C0;
    v16 = completionCopy;
    dispatch_async(queueCopy, block);
    audioDestinationController = v16;
  }

  else
  {
    audioDestinationController = [(HMDAppleMediaAccessory *)self audioDestinationController];
    if (audioDestinationController)
    {
      home = [(HMDAccessory *)self home];
      [audioDestinationController migrateWithHome:home cloudZone:zoneCopy migrationQueue:queueCopy completion:completionCopy];
    }

    else
    {
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __99__HMDAppleMediaAccessory_migrateAudioDestinationControllerWithCloudZone_migrationQueue_completion___block_invoke_2;
      v13[3] = &unk_2797348C0;
      v14 = completionCopy;
      dispatch_async(queueCopy, v13);
    }
  }
}

- (void)migrateWithCloudZone:(id)zone migrationQueue:(id)queue completion:(id)completion
{
  v68 = *MEMORY[0x277D85DE8];
  zoneCopy = zone;
  queueCopy = queue;
  completionCopy = completion;
  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
  v12 = dispatch_group_create();
  objc_initWeak(&location, self);
  dispatch_group_enter(v12);
  v59[0] = MEMORY[0x277D85DD0];
  v59[1] = 3221225472;
  v59[2] = __73__HMDAppleMediaAccessory_migrateWithCloudZone_migrationQueue_completion___block_invoke;
  v59[3] = &unk_27972A0E0;
  objc_copyWeak(&v63, &location);
  v13 = array;
  v60 = v13;
  v14 = array2;
  v61 = v14;
  v15 = v12;
  v62 = v15;
  [(HMDAppleMediaAccessory *)self migrateAudioDestinationControllerWithCloudZone:zoneCopy migrationQueue:queueCopy completion:v59];
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
  [(HMDAppleMediaAccessory *)self migrateAudioDestinationWithCloudZone:zoneCopy migrationQueue:queueCopy completion:v54];
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
  v44 = zoneCopy;
  v22 = queueCopy;
  v23 = v49;
  if (self)
  {
    softwareUpdate = [(HMDAccessory *)self softwareUpdate];
    isCurrentAccessory = [(HMDAppleMediaAccessory *)self isCurrentAccessory];
    if (softwareUpdate)
    {
      v26 = isCurrentAccessory;
    }

    else
    {
      v26 = 0;
    }

    if (v26 && ![softwareUpdate downloadSize])
    {
      uuid = [(HMDAccessory *)self uuid];
      v33 = [softwareUpdate transactionWithObjectChangeType:1 forAccessoryUUID:uuid];

      uuid2 = [v33 uuid];
      context = objc_autoreleasePoolPush();
      selfCopy = self;
      v35 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        v41 = HMFGetLogIdentifier();
        uuid3 = [v33 uuid];
        *block = 138544130;
        *&block[4] = v41;
        *&block[12] = 2112;
        *&block[14] = uuid3;
        *&block[22] = 2112;
        v66 = v33;
        LOWORD(v67) = 2112;
        *(&v67 + 2) = selfCopy;
        v40 = uuid3;
        _os_log_impl(&dword_2531F8000, v35, OS_LOG_TYPE_DEFAULT, "%{public}@Fixing up bad software update model with uuid: %@ and 0 download size: %@ for accessory: %@", block, 0x2Au);
      }

      objc_autoreleasePoolPop(context);
      [v33 setSoftwareVersion:0];
      [v33 setState:0];
      [v33 setInstallDuration:0];
      [v33 setDownloadSize:0];
      [v33 setReleaseDate:0];
      home = [(HMDAccessory *)selfCopy home];
      [home dropAllChangesWithObjectID:uuid2];

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
      uuid2 = v67;
    }
  }

  v45[0] = MEMORY[0x277D85DD0];
  v45[1] = 3221225472;
  v45[2] = __73__HMDAppleMediaAccessory_migrateWithCloudZone_migrationQueue_completion___block_invoke_4;
  v45[3] = &unk_2797355D0;
  v47 = v20;
  v48 = completionCopy;
  v46 = v19;
  v28 = v20;
  v29 = v19;
  v30 = completionCopy;
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
  device = [(HMDAppleMediaAccessory *)self device];

  if (device)
  {
    v4 = [HMDRemoteDeviceMessageDestination alloc];
    messageTargetUUID = [(HMDAccessory *)self messageTargetUUID];
    device2 = [(HMDAppleMediaAccessory *)self device];
    v7 = [(HMDRemoteDeviceMessageDestination *)v4 initWithTarget:messageTargetUUID device:device2];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_relayRequestMessage:(id)message responseHandler:(id)handler
{
  v37 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  handlerCopy = handler;
  if ([messageCopy isRemote])
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543362;
      v36 = v11;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@Cannot relay a remote message", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
    messageDispatcher = [MEMORY[0x277CCA9B8] hmErrorWithCode:52];
    [messageCopy respondWithError:messageDispatcher];
  }

  else
  {
    home = [(HMDAccessory *)self home];
    homeManager = [home homeManager];
    messageDispatcher = [homeManager messageDispatcher];

    if (messageDispatcher)
    {
      remoteMessageDestination = [(HMDAppleMediaAccessory *)self remoteMessageDestination];
      if (remoteMessageDestination)
      {
        name = [messageCopy name];
        qualityOfService = [messageCopy qualityOfService];
        messagePayload = [messageCopy messagePayload];
        v19 = +[HMDRemoteMessage secureMessageWithName:qualityOfService:destination:messagePayload:restriction:](HMDRemoteMessage, "secureMessageWithName:qualityOfService:destination:messagePayload:restriction:", name, qualityOfService, remoteMessageDestination, messagePayload, [messageCopy remoteRestriction]);

        [v19 setResponseRestriction:{objc_msgSend(messageCopy, "remoteResponseRestriction")}];
        objc_initWeak(buf, self);
        v29 = MEMORY[0x277D85DD0];
        v30 = 3221225472;
        v31 = __63__HMDAppleMediaAccessory__relayRequestMessage_responseHandler___block_invoke;
        v32 = &unk_2797355F8;
        objc_copyWeak(&v34, buf);
        v33 = handlerCopy;
        [v19 setResponseHandler:&v29];
        [messageDispatcher sendMessage:{v19, v29, v30, v31, v32}];

        objc_destroyWeak(&v34);
        objc_destroyWeak(buf);
      }

      else
      {
        v24 = objc_autoreleasePoolPush();
        selfCopy2 = self;
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
        [messageCopy respondWithError:v19];
      }
    }

    else
    {
      v20 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v22 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v23 = HMFGetLogIdentifier();
        *buf = 138543362;
        v36 = v23;
        _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_INFO, "%{public}@Not configured to relay messages", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v20);
      remoteMessageDestination = [MEMORY[0x277CCA9B8] hmErrorWithCode:54];
      [messageCopy respondWithError:remoteMessageDestination];
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

- (void)handleCurrentNetworkChangedNotification:(id)notification
{
  v14 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = HMFGetLogIdentifier();
    v10 = 138543618;
    v11 = v8;
    v12 = 2112;
    v13 = notificationCopy;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@Received current network changed notification: %@", &v10, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  [(HMDAppleMediaAccessory *)selfCopy updateWiFiNetworkInfo];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)updateWiFiNetworkInfo
{
  workQueue = [(HMDAccessory *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__HMDAppleMediaAccessory_updateWiFiNetworkInfo__block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(workQueue, block);
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

- (void)setLastStagedWifiNetworkInfo:(id)info
{
  infoCopy = info;
  os_unfair_recursive_lock_lock_with_options();
  lastStagedWifiNetworkInfo = self->_lastStagedWifiNetworkInfo;
  self->_lastStagedWifiNetworkInfo = infoCopy;

  os_unfair_recursive_lock_unlock();
}

- (void)setWifiNetworkInfo:(id)info
{
  infoCopy = info;
  os_unfair_recursive_lock_lock_with_options();
  wifiNetworkInfo = self->_wifiNetworkInfo;
  if (HMFEqualObjects())
  {
    os_unfair_recursive_lock_unlock();
  }

  else
  {
    objc_storeStrong(&self->_wifiNetworkInfo, info);
    os_unfair_recursive_lock_unlock();
    notificationCenter = [(HMDMediaAccessory *)self notificationCenter];
    [notificationCenter postNotificationName:@"HMDAppleMediaAccessoryWiFiNetworkInfoUpdatedNotification" object:self];
  }
}

- (HMFWiFiNetworkInfo)wifiNetworkInfo
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = self->_wifiNetworkInfo;
  os_unfair_recursive_lock_unlock();

  return v3;
}

- (void)handleSoftwareUpdateV2Scan:(id)scan
{
  v18 = *MEMORY[0x277D85DE8];
  scanCopy = scan;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543362;
    v17 = v8;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Handling SoftwareUpdateV2Scan", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  if (![(HMDAppleMediaAccessory *)selfCopy isCurrentAccessory])
  {
    v9 = objc_autoreleasePoolPush();
    v10 = selfCopy;
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
    v15 = scanCopy;
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
  selfCopy = self;
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
  uuid = [(HMDAccessory *)selfCopy uuid];
  v9 = [v7 initWithTarget:uuid];

  v10 = MEMORY[0x277D0F848];
  v23 = *MEMORY[0x277CCEEF8];
  v24 = &unk_2866286A8;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
  v12 = [v10 messageWithName:*MEMORY[0x277CCEF08] destination:v9 payload:v11];

  v13 = objc_alloc_init(MEMORY[0x277D2C900]);
  objc_initWeak(buf, selfCopy);
  v17 = MEMORY[0x277D85DD0];
  v18 = 3221225472;
  v19 = __48__HMDAppleMediaAccessory__scanForSoftwareUpdate__block_invoke;
  v20 = &unk_279733AE8;
  objc_copyWeak(&v22, buf);
  v14 = v13;
  v21 = v14;
  [v12 setResponseHandler:&v17];
  [(HMDAppleMediaAccessory *)selfCopy handleSoftwareUpdateV2Scan:v12, v17, v18, v19, v20];

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
  selfCopy = self;
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
    mEMORY[0x277D0F8D0] = [MEMORY[0x277D0F8D0] sharedPreferences];
    v17 = [mEMORY[0x277D0F8D0] preferenceForKey:@"HMDAppleMediaAccessoryRepeatScanningIntervalsOverride"];
    value = [v17 value];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = value;
    }

    else
    {
      v19 = 0;
    }

    v20 = v19;

    v21 = objc_autoreleasePoolPush();
    v22 = selfCopy;
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

  objc_initWeak(buf, selfCopy);
  v25 = MEMORY[0x277D2C900];
  workQueue = [(HMDAccessory *)selfCopy workQueue];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __59__HMDAppleMediaAccessory__scanForSoftwareUpdateWithRetries__block_invoke;
  v30[3] = &unk_27972A0B8;
  objc_copyWeak(&v31, buf);
  v27 = [v25 futureWithRetryIntervals:v20 workQueue:workQueue block:v30];
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

- (id)_softwareUpdateV2FromDescriptor:(id)descriptor
{
  v16 = *MEMORY[0x277D85DE8];
  descriptorCopy = descriptor;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v12 = 138543618;
    v13 = v8;
    v14 = 2112;
    v15 = descriptorCopy;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Creating HMSoftwareUpdateV2 for descriptor: %@", &v12, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [MEMORY[0x277CD1E68] softwareUpdateFromDescriptor:descriptorCopy];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (void)_applySoftwareUpdateWithDescriptor:(id)descriptor
{
  v34 = *MEMORY[0x277D85DE8];
  descriptorCopy = descriptor;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543618;
    v31 = v8;
    v32 = 2112;
    v33 = descriptorCopy;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@SRAISU: Applying software update with descriptor: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [(HMDAppleMediaAccessory *)selfCopy _softwareUpdateV2FromDescriptor:descriptorCopy];
  version = [v9 version];

  if (version)
  {
    v11 = [MEMORY[0x277CD17E8] softwareUpdateFromSoftwareUpdateV2:v9];
    v12 = objc_autoreleasePoolPush();
    v13 = selfCopy;
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
    uuid = [(HMDAccessory *)v13 uuid];
    v20 = [v18 initWithTarget:uuid];

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
    v23 = selfCopy;
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

- (void)runTransactionWithPreferredMediaUserUUID:(id)d selectionType:(unint64_t)type completion:(id)completion
{
  v28 = *MEMORY[0x277D85DE8];
  dCopy = d;
  completionCopy = completion;
  v10 = objc_autoreleasePoolPush();
  selfCopy = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = HMFGetLogIdentifier();
    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:type];
    *buf = 138543874;
    v23 = v13;
    v24 = 2112;
    v25 = dCopy;
    v26 = 2112;
    v27 = v14;
    _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@Run transaction and set preferred media user: %@, type: %@.", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v10);
  v15 = [(HMDAppleMediaAccessory *)selfCopy transactionWithObjectChangeType:2];
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

  [v17 setPreferredMediaUserUUID:dCopy];
  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:type];
  [v17 setPreferredUserSelectionType:v18];

  v21 = v17;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v21 count:1];

  [(HMDAccessory *)selfCopy runTransactionWithModels:v19 label:@"Update preferred media user" completion:completionCopy];
  v20 = *MEMORY[0x277D85DE8];
}

- (void)updatePreferredMediaUser:(id)user selectionType:(unint64_t)type
{
  v22 = *MEMORY[0x277D85DE8];
  userCopy = user;
  v7 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:userCopy];
  [(HMDAccessory *)self setPreferredMediaUserUUID:v7];

  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:type];
  [(HMDAccessory *)self setPreferredMediaUserSelectionTypeNumber:v8];

  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    preferredMediaUserUUID = [(HMDAccessory *)selfCopy preferredMediaUserUUID];
    preferredMediaUserSelectionTypeNumber = [(HMDAccessory *)selfCopy preferredMediaUserSelectionTypeNumber];
    v16 = 138543874;
    v17 = v12;
    v18 = 2112;
    v19 = preferredMediaUserUUID;
    v20 = 2112;
    v21 = preferredMediaUserSelectionTypeNumber;
    _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Updated preferred media user UUID: %@, type: %@", &v16, 0x20u);
  }

  objc_autoreleasePoolPop(v9);
  v15 = *MEMORY[0x277D85DE8];
}

- (void)updatePreferredMediaUserWithUUID:(id)d selectionType:(unint64_t)type completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  objc_initWeak(&location, self);
  v10 = objc_alloc(MEMORY[0x277CD1708]);
  uUIDString = [dCopy UUIDString];
  v12 = [v10 initWithUUIDString:uUIDString selectionType:type];

  preferredMediaUserEventController = [(HMDAppleMediaAccessory *)self preferredMediaUserEventController];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __84__HMDAppleMediaAccessory_updatePreferredMediaUserWithUUID_selectionType_completion___block_invoke;
  v16[3] = &unk_27972A090;
  objc_copyWeak(v19, &location);
  v14 = dCopy;
  v17 = v14;
  v19[1] = type;
  v15 = completionCopy;
  v18 = v15;
  [preferredMediaUserEventController updatePreferredMediaUserWithPrimaryUserInfo:v12 completion:v16];

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

- (void)handleUpdatePreferredMediaUser:(id)user
{
  v62 = *MEMORY[0x277D85DE8];
  userCopy = user;
  if ([(HMDAppleMediaAccessory *)self isCurrentAccessory])
  {
    productInfo = [MEMORY[0x277D0F8E8] productInfo];
    productClass = [productInfo productClass];

    if (productClass == 6)
    {
      v7 = [userCopy numberForKey:*MEMORY[0x277CCEC50]];
      if ([v7 unsignedIntegerValue] == 1)
      {
        v8 = [userCopy uuidForKey:@"kUserUUIDKey"];
        home = [(HMDAccessory *)self home];
        v10 = [home userWithUUID:v8];

        if (v10)
        {
          v11 = 1;
LABEL_17:
          v25 = objc_autoreleasePoolPush();
          selfCopy = self;
          v27 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
          {
            v28 = HMFGetLogIdentifier();
            *buf = 138543362;
            v57 = v28;
            _os_log_impl(&dword_2531F8000, v27, OS_LOG_TYPE_INFO, "%{public}@Handling update preferred media user notification", buf, 0xCu);
          }

          objc_autoreleasePoolPop(v25);
          preferredMediaUserUUID = [(HMDAccessory *)selfCopy preferredMediaUserUUID];
          v30 = HMFEqualObjects();

          if (v30 && (-[HMDAccessory preferredMediaUserSelectionTypeNumber](selfCopy, "preferredMediaUserSelectionTypeNumber"), (v31 = objc_claimAutoreleasedReturnValue()) != 0) && (-[HMDAccessory preferredMediaUserSelectionTypeNumber](selfCopy, "preferredMediaUserSelectionTypeNumber"), v32 = objc_claimAutoreleasedReturnValue(), v33 = v11 == [v32 unsignedIntegerValue], v32, v31, v33))
          {
            v34 = objc_autoreleasePoolPush();
            v35 = selfCopy;
            v36 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
            {
              v37 = HMFGetLogIdentifier();
              *buf = 138543362;
              v57 = v37;
              _os_log_impl(&dword_2531F8000, v36, OS_LOG_TYPE_INFO, "%{public}@User already matches.", buf, 0xCu);
            }

            objc_autoreleasePoolPop(v34);
            [userCopy respondWithSuccess];
          }

          else if (_os_feature_enabled_impl())
          {
            v38 = objc_autoreleasePoolPush();
            v39 = selfCopy;
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
            [userCopy respondWithError:v42];
          }

          else
          {
            objc_initWeak(buf, selfCopy);
            v50[0] = MEMORY[0x277D85DD0];
            v50[1] = 3221225472;
            v50[2] = __57__HMDAppleMediaAccessory_handleUpdatePreferredMediaUser___block_invoke_485;
            v50[3] = &unk_279731988;
            objc_copyWeak(&v53, buf);
            v51 = v8;
            v52 = userCopy;
            [(HMDAccessory *)selfCopy setPreferredMediaUser:v51 selectionType:v11 completion:v50];

            objc_destroyWeak(&v53);
            objc_destroyWeak(buf);
          }

          goto LABEL_35;
        }

        v43 = objc_autoreleasePoolPush();
        selfCopy2 = self;
        v45 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
        {
          v46 = HMFGetLogIdentifier();
          home2 = [(HMDAccessory *)selfCopy2 home];
          *buf = 138543874;
          v57 = v46;
          v58 = 2112;
          v59 = v8;
          v60 = 2112;
          v61 = home2;
          _os_log_impl(&dword_2531F8000, v45, OS_LOG_TYPE_ERROR, "%{public}@Did not find user with uuid %@ in home %@.", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v43);
        v48 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:5];
        [userCopy respondWithError:v48];
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
        selfCopy3 = self;
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
        [userCopy respondWithError:v8];
      }

      goto LABEL_35;
    }

    v16 = objc_autoreleasePoolPush();
    selfCopy4 = self;
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
    [userCopy respondWithError:v20];
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    selfCopy5 = self;
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
    v54[4] = selfCopy5;
    v55 = userCopy;
    [(HMDAppleMediaAccessory *)selfCopy5 _relayRequestMessage:v55 responseHandler:v54];
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

- (void)handleDeleteSiriHistoryRequest:(id)request
{
  v34 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543362;
    v33 = v8;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Received delete siri history request", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  if ([(HMDAppleMediaAccessory *)selfCopy isCurrentAccessory])
  {
    productInfo = [MEMORY[0x277D0F8E8] productInfo];
    v10 = [productInfo productClass] == 6;

    if (v10)
    {
      v11 = [HMDAppleMediaAccessoryDeleteSiriHistoryOperation alloc];
      settingsConnectionFactory = [(HMDAppleMediaAccessory *)selfCopy settingsConnectionFactory];
      v13 = settingsConnectionFactory[2]();
      v14 = [(HMDAppleMediaAccessoryDeleteSiriHistoryOperation *)v11 initWithSettingsConnection:v13];

      objc_initWeak(buf, v14);
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __57__HMDAppleMediaAccessory_handleDeleteSiriHistoryRequest___block_invoke_483;
      v27[3] = &unk_279732670;
      objc_copyWeak(&v29, buf);
      v27[4] = selfCopy;
      v28 = requestCopy;
      [(HMDAppleMediaAccessoryDeleteSiriHistoryOperation *)v14 setCompletionBlock:v27];
      defaultScheduler = [MEMORY[0x277D0F8F0] defaultScheduler];
      v16 = [defaultScheduler performOperation:v14];

      objc_destroyWeak(&v29);
      objc_destroyWeak(buf);
    }

    else
    {
      v21 = objc_autoreleasePoolPush();
      v22 = selfCopy;
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
      [requestCopy respondWithError:v25];
    }
  }

  else
  {
    v17 = objc_autoreleasePoolPush();
    v18 = selfCopy;
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
    v31 = requestCopy;
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

- (void)_startUpdate:(id)update
{
  v54 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543618;
    v51 = v8;
    v52 = 2112;
    v53 = updateCopy;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Starting update for message: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [updateCopy dataForKey:*MEMORY[0x277CD1090]];
  if (v9)
  {
    v10 = [MEMORY[0x277CCAAC8] deserializeObjectWithData:v9 allowedClass:objc_opt_class() frameworkClasses:&unk_286627028];
    if (v10)
    {
      home = [(HMDAccessory *)selfCopy home];
      if ([home isAdminUser])
      {
        responseHandler3 = +[HMDSoftwareUpdateStartedEvent eventUpdateStartedWithAutomaticUpdateEnabled:](HMDSoftwareUpdateStartedEvent, "eventUpdateStartedWithAutomaticUpdateEnabled:", [home isAutomaticSoftwareUpdateEnabled]);
        if ([(HMDAppleMediaAccessory *)selfCopy isCurrentAccessory])
        {
          v13 = objc_autoreleasePoolPush();
          v14 = selfCopy;
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
          softwareUpdateInstallProvider = [(HMDAppleMediaAccessory *)v14 softwareUpdateInstallProvider];
          if (softwareUpdateInstallProvider)
          {
            objc_initWeak(buf, v14);
            v42[0] = MEMORY[0x277D85DD0];
            v42[1] = 3221225472;
            v42[2] = __39__HMDAppleMediaAccessory__startUpdate___block_invoke_481;
            v42[3] = &unk_27972F820;
            objc_copyWeak(&v46, buf);
            v43 = v10;
            responseHandler3 = responseHandler3;
            v44 = responseHandler3;
            v45 = updateCopy;
            [softwareUpdateInstallProvider startUpdate:v43 completionHandler:v42];

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
            [v40 submitLogEvent:responseHandler3 error:v39];

            [updateCopy respondWithError:v39];
            softwareUpdateInstallProvider = 0;
          }
        }

        else
        {
          v47[0] = MEMORY[0x277D85DD0];
          v47[1] = 3221225472;
          v47[2] = __39__HMDAppleMediaAccessory__startUpdate___block_invoke;
          v47[3] = &unk_279733FB0;
          responseHandler3 = responseHandler3;
          v48 = responseHandler3;
          v49 = updateCopy;
          [(HMDAppleMediaAccessory *)selfCopy _relayRequestMessage:v49 responseHandler:v47];

          softwareUpdateInstallProvider = v48;
        }
      }

      else
      {
        v29 = objc_autoreleasePoolPush();
        v30 = selfCopy;
        v31 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
        {
          v32 = HMFGetLogIdentifier();
          currentUser = [home currentUser];
          *buf = 138543618;
          v51 = v32;
          v52 = 2112;
          v53 = currentUser;
          _os_log_impl(&dword_2531F8000, v31, OS_LOG_TYPE_INFO, "%{public}@Only administrators may start updates, current user: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v29);
        responseHandler = [updateCopy responseHandler];

        if (!responseHandler)
        {
          goto LABEL_30;
        }

        responseHandler3 = [MEMORY[0x277CCA9B8] hmErrorWithCode:17 description:@"Insufficient privileges." reason:@"Current user is not an administrator." suggestion:0];
        softwareUpdateInstallProvider = [updateCopy responseHandler];
        (softwareUpdateInstallProvider)[2](softwareUpdateInstallProvider, responseHandler3, 0);
      }
    }

    else
    {
      v24 = objc_autoreleasePoolPush();
      v25 = selfCopy;
      v26 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        v27 = HMFGetLogIdentifier();
        *buf = 138543362;
        v51 = v27;
        _os_log_impl(&dword_2531F8000, v26, OS_LOG_TYPE_INFO, "%{public}@Invalid software update in message payload", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v24);
      responseHandler2 = [updateCopy responseHandler];

      if (!responseHandler2)
      {
        v10 = 0;
LABEL_31:

        goto LABEL_32;
      }

      home = [MEMORY[0x277CCA9B8] hmErrorWithCode:22];
      responseHandler3 = [updateCopy responseHandler];
      (*(responseHandler3 + 2))(responseHandler3, home, 0);
    }

LABEL_30:
    goto LABEL_31;
  }

  v18 = objc_autoreleasePoolPush();
  v19 = selfCopy;
  v20 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    v21 = HMFGetLogIdentifier();
    messagePayload = [updateCopy messagePayload];
    *buf = 138543618;
    v51 = v21;
    v52 = 2112;
    v53 = messagePayload;
    _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_ERROR, "%{public}@Missing serialized software update from message payload: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v18);
  responseHandler4 = [updateCopy responseHandler];

  if (responseHandler4)
  {
    v10 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
    home = [updateCopy responseHandler];
    (home)[2](home, v10, 0);
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

- (void)_fetchAvailableUpdate:(id)update
{
  v33 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  v5 = [HMDSoftwareUpdateFetchedEvent eventWasUserInitiated:1 wasNewUpdateFetched:0];
  isCurrentAccessory = [(HMDAppleMediaAccessory *)self isCurrentAccessory];
  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_INFO);
  if (isCurrentAccessory)
  {
    if (v10)
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543362;
      v32 = v11;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Received request to fetch available updates", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
    home = [(HMDAccessory *)selfCopy home];
    homeManager = [home homeManager];
    softwareUpdateManager = [homeManager softwareUpdateManager];

    if (softwareUpdateManager)
    {
      objc_initWeak(buf, selfCopy);
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __48__HMDAppleMediaAccessory__fetchAvailableUpdate___block_invoke_472;
      v24[3] = &unk_27972A068;
      objc_copyWeak(&v27, buf);
      v25 = v5;
      v26 = updateCopy;
      [softwareUpdateManager fetchAvailableUpdateWithCompletionHandler:v24];

      objc_destroyWeak(&v27);
      objc_destroyWeak(buf);
    }

    else
    {
      v16 = objc_autoreleasePoolPush();
      v17 = selfCopy;
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v19 = HMFGetLogIdentifier();
        *buf = 138543362;
        v32 = v19;
        _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_INFO, "%{public}@Software update not supported", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v16);
      responseHandler = [updateCopy responseHandler];

      if (responseHandler)
      {
        v21 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
        responseHandler2 = [updateCopy responseHandler];
        (responseHandler2)[2](responseHandler2, v21, 0);
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
    v28[4] = selfCopy;
    v29 = v5;
    v30 = updateCopy;
    [(HMDAppleMediaAccessory *)selfCopy _relayRequestMessage:v30 responseHandler:v28];
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

- (void)_applySoftwareUpdateModel:(id)model completion:(id)completion
{
  completionCopy = completion;
  modelCopy = model;
  workQueue = [(HMDAccessory *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  home = [(HMDAccessory *)self home];
  backingStore = [home backingStore];
  v11 = +[HMDBackingStoreTransactionOptions defaultPreferencesOptions];
  v12 = [backingStore transaction:@"HMDAppleMediaAccessorySoftwareUpdateLabel" options:v11];

  [v12 add:modelCopy withMessage:0];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __63__HMDAppleMediaAccessory__applySoftwareUpdateModel_completion___block_invoke;
  v14[3] = &unk_279735558;
  v15 = completionCopy;
  v13 = completionCopy;
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
  identifier = [(HMDAccessory *)self identifier];
  v4 = _mediaRouteIdentifier;
  if ([identifier isEqual:v4])
  {
    productInfo = [MEMORY[0x277D0F8E8] productInfo];
    productClass = [productInfo productClass];

    if (productClass == 6)
    {
      return 1;
    }
  }

  else
  {
  }

  return [(HMDAppleMediaAccessory *)self isHomePod];
}

- (void)_updateSoftwareVersion:(id)version
{
  v29 = *MEMORY[0x277D85DE8];
  versionCopy = version;
  if (versionCopy)
  {
    v5 = objc_autoreleasePoolPush();
    selfCopy = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      versionString = [versionCopy versionString];
      v25 = 138543618;
      v26 = v8;
      v27 = 2112;
      v28 = versionString;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Updating software version to: %@", &v25, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    v10 = [(HMDAppleMediaAccessory *)selfCopy transactionWithObjectChangeType:2];
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

    [v12 setSoftwareVersion:versionCopy];
    home = [(HMDAccessory *)selfCopy home];
    backingStore = [home backingStore];
    v15 = +[HMDBackingStoreTransactionOptions defaultPreferencesOptions];
    v16 = [backingStore transaction:@"Update Software Version" options:v15];

    [v16 add:v12];
    softwareUpdate = [(HMDAccessory *)selfCopy softwareUpdate];
    if (softwareUpdate)
    {
      v18 = softwareUpdate;
      softwareUpdate2 = [(HMDAccessory *)selfCopy softwareUpdate];
      version = [softwareUpdate2 version];
      v21 = [versionCopy isAtLeastVersion:version];

      if (v21)
      {
        softwareUpdate3 = [(HMDAccessory *)selfCopy softwareUpdate];
        v23 = [softwareUpdate3 transactionWithObjectChangeType:2];

        [v23 setSoftwareVersion:versionCopy];
        [v23 setState:&unk_286628690];
        [v16 add:v23];
      }
    }

    [v16 run];
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (void)setSoftwareVersion:(id)version
{
  versionCopy = version;
  os_unfair_recursive_lock_lock_with_options();
  softwareVersion = self->_softwareVersion;
  if (HMFEqualObjects())
  {
    os_unfair_recursive_lock_unlock();
  }

  else
  {
    objc_storeStrong(&self->_softwareVersion, version);
    os_unfair_recursive_lock_unlock();
    notificationCenter = [(HMDMediaAccessory *)self notificationCenter];
    [notificationCenter postNotificationName:@"HMDAppleMediaAccessorySoftwareVersionUpdatedNotification" object:self];
  }
}

- (HMFSoftwareVersion)softwareVersion
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = self->_softwareVersion;
  os_unfair_recursive_lock_unlock();

  return v3;
}

- (void)postDeviceIRKIfDifferent:(id)different
{
  v58 = *MEMORY[0x277D85DE8];
  differentCopy = different;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543618;
    v49 = v8;
    v50 = 2112;
    v51 = differentCopy;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Posting device IRK: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  home = [(HMDAccessory *)selfCopy home];
  uuid = [home uuid];

  eventForwarder = [(HMDAppleMediaAccessory *)selfCopy eventForwarder];
  eventStoreReadHandle = [(HMDAppleMediaAccessory *)selfCopy eventStoreReadHandle];
  v13 = eventStoreReadHandle;
  if (differentCopy && eventForwarder && eventStoreReadHandle && uuid)
  {
    v14 = MEMORY[0x277CD16F0];
    v15 = *MEMORY[0x277CCEA60];
    uuid2 = [(HMDAccessory *)selfCopy uuid];
    v17 = [v14 topicFromSuffixID:v15 homeUUID:uuid accessoryUUID:uuid2];

    v46 = v17;
    v18 = [v13 lastEventForTopic:v17];
    if (!v18)
    {
      v19 = objc_autoreleasePoolPush();
      v20 = selfCopy;
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

    encodedData = [v18 encodedData];
    v24 = encodedData;
    v45 = uuid;
    if (!v18 || encodedData)
    {
      if (encodedData && [differentCopy isEqualToData:encodedData])
      {
        v33 = objc_autoreleasePoolPush();
        v34 = selfCopy;
        v35 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
        {
          v36 = HMFGetLogIdentifier();
          *buf = 138543618;
          v49 = v36;
          v50 = 2112;
          v51 = differentCopy;
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
      v26 = selfCopy;
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
    uuid3 = [(HMDAccessory *)selfCopy uuid];
    [uuid3 UUIDString];
    v41 = v40 = v24;
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    v42 = [v38 initWithSource:v41 cachePolicy:2 combineType:2 timestamp:?];

    v24 = v40;
    v43 = [objc_alloc(MEMORY[0x277D174A0]) initWithEventData:differentCopy metadata:v42];
    v47[0] = MEMORY[0x277D85DD0];
    v47[1] = 3221225472;
    v47[2] = __51__HMDAppleMediaAccessory_postDeviceIRKIfDifferent___block_invoke;
    v47[3] = &unk_2797359D8;
    v47[4] = selfCopy;
    v37 = v46;
    [eventForwarder forwardEvent:v43 topic:v46 completion:v47];

LABEL_25:
    uuid = v45;

    goto LABEL_26;
  }

  v29 = objc_autoreleasePoolPush();
  v30 = selfCopy;
  v31 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
  {
    v32 = HMFGetLogIdentifier();
    *buf = 138544386;
    v49 = v32;
    v50 = 2112;
    v51 = differentCopy;
    v52 = 2112;
    v53 = eventForwarder;
    v54 = 2112;
    v55 = v13;
    v56 = 2112;
    v57 = uuid;
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

- (void)handleCurrentDeviceIRKUpdated:(id)updated
{
  v14 = *MEMORY[0x277D85DE8];
  updatedCopy = updated;
  userInfo = [updatedCopy userInfo];
  v6 = [userInfo objectForKeyedSubscript:@"deviceIRK"];

  if (v6)
  {
    [(HMDAppleMediaAccessory *)self postDeviceIRKIfDifferent:v6];
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    selfCopy = self;
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

- (void)handleRoomChanged:(id)changed
{
  changedCopy = changed;
  v14.receiver = self;
  v14.super_class = HMDAppleMediaAccessory;
  [(HMDMediaAccessory *)&v14 handleRoomChanged:changedCopy];
  object = [changedCopy object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = object;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7)
  {
    uuid = [v7 uuid];
    uuid2 = [(HMDAccessory *)self uuid];
    if (![uuid hmf_isEqualToUUID:uuid2])
    {
LABEL_8:

      goto LABEL_9;
    }

    isCurrentAccessory = [(HMDAppleMediaAccessory *)self isCurrentAccessory];

    if (isCurrentAccessory)
    {
      userInfo = [changedCopy userInfo];
      uuid = [userInfo hmf_stringForKey:@"kRoomOldNameKey"];

      uuid2 = [(HMDAppleMediaAccessory *)self metricsDispatcher];
      room = [(HMDAccessory *)self room];
      name = [room name];
      [uuid2 submitRoomChangeEvent:name previousRoom:uuid];

      goto LABEL_8;
    }
  }

LABEL_9:
}

- (void)handleRoomNameChanged:(id)changed
{
  changedCopy = changed;
  v14.receiver = self;
  v14.super_class = HMDAppleMediaAccessory;
  [(HMDMediaAccessory *)&v14 handleRoomNameChanged:changedCopy];
  object = [changedCopy object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = object;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7)
  {
    room = [(HMDAccessory *)self room];
    v9 = HMFEqualObjects();

    if (v9)
    {
      if ([(HMDAppleMediaAccessory *)self isCurrentAccessory])
      {
        userInfo = [changedCopy userInfo];
        v11 = [userInfo hmf_stringForKey:@"kRoomOldNameKey"];

        metricsDispatcher = [(HMDAppleMediaAccessory *)self metricsDispatcher];
        name = [v7 name];
        [metricsDispatcher submitRoomChangeEvent:name previousRoom:v11];
      }
    }
  }
}

- (void)setSupportedStereoPairVersions:(unint64_t)versions
{
  os_unfair_recursive_lock_lock_with_options();
  if (self->_supportedStereoPairVersions != versions)
  {
    self->_supportedStereoPairVersions = versions;
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

- (void)handleHomeUserRemovedNotification:(id)notification
{
  v20 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  userInfo = [notificationCopy userInfo];
  v6 = [userInfo objectForKey:@"HMDUserNotificationKey"];

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
  selfCopy = self;
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
    [(HMDAccessory *)selfCopy setDefaultPreferredMediaUserIfRemoved:v15 defaultUser:0 completion:v14];
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

- (void)pairingsWithCompletionHandler:(id)handler
{
  v13 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v11 = 138543362;
    v12 = v8;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Does not support user management", &v11, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  if (handlerCopy)
  {
    v9 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
    handlerCopy[2](handlerCopy, 0, v9);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)removeUser:(id)user completionHandler:(id)handler
{
  v16 = *MEMORY[0x277D85DE8];
  userCopy = user;
  handlerCopy = handler;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v14 = 138543362;
    v15 = v11;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Does not support user management", &v14, 0xCu);
  }

  objc_autoreleasePoolPop(v8);
  if (handlerCopy)
  {
    v12 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
    handlerCopy[2](handlerCopy, v12);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)addUser:(id)user completionHandler:(id)handler
{
  v16 = *MEMORY[0x277D85DE8];
  userCopy = user;
  handlerCopy = handler;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v14 = 138543362;
    v15 = v11;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Does not support user management", &v14, 0xCu);
  }

  objc_autoreleasePoolPop(v8);
  if (handlerCopy)
  {
    v12 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
    handlerCopy[2](handlerCopy, v12);
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
    selfCopy = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = HMFGetLogIdentifier();
      *buf = 138543362;
      v23 = v9;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@Creating pairing identity", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    currentAccessorySetupMetricDispatcher = [(HMDAppleMediaAccessory *)selfCopy currentAccessorySetupMetricDispatcher];
    [currentAccessorySetupMetricDispatcher markSetupBeginStage:6 error:0];

    pairingIdentity = [MEMORY[0x277D0F8A8] pairingIdentity];
    [(HMDAppleMediaAccessory *)selfCopy setLastCreatedPairingIdentity:pairingIdentity];

    lastCreatedPairingIdentity = [(HMDAppleMediaAccessory *)selfCopy lastCreatedPairingIdentity];
    publicPairingIdentity = [lastCreatedPairingIdentity publicPairingIdentity];
    [v5 setPairingIdentity:publicPairingIdentity];

    home = [(HMDAccessory *)selfCopy home];
    backingStore = [home backingStore];
    v16 = +[HMDBackingStoreTransactionOptions defaultPreferencesOptions];
    v17 = [backingStore transaction:@"Create Pairing Identity" options:v16];

    logger = selfCopy->_logger;
    if (os_signpost_enabled(logger))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_2531F8000, logger, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "CreatePairingIdentity", "", buf, 2u);
    }

    [v17 add:v5];
    objc_initWeak(buf, selfCopy);
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

- (void)setPairingIdentity:(id)identity
{
  identityCopy = identity;
  os_unfair_recursive_lock_lock_with_options();
  v4 = [identityCopy copy];
  pairingIdentity = self->_pairingIdentity;
  self->_pairingIdentity = v4;

  os_unfair_recursive_lock_unlock();
}

- (void)_handleTriggerPairingIdentityUpdateNotification:(id)notification
{
  v14 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  [notificationCopy respondWithSuccess];
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v10 = 138543618;
    v11 = v8;
    v12 = 2112;
    v13 = selfCopy;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Will trigger notification for updated pairing identity for accessory: %@ with message HMAccessoryPairingIdentityUpdatedNotification", &v10, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  [(HMDAppleMediaAccessory *)selfCopy notifyFrameworkOfUpdatedPairingIdentity];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)notifyFrameworkOfUpdatedPairingIdentity
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D0F848];
  v4 = *MEMORY[0x277CCEC38];
  v5 = objc_alloc(MEMORY[0x277D0F820]);
  uuid = [(HMDAccessory *)self uuid];
  v7 = [v5 initWithTarget:uuid];
  v8 = [v3 messageWithName:v4 destination:v7 payload:MEMORY[0x277CBEC10]];

  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    v15 = 138543362;
    v16 = v12;
    _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Notifying clients of updated accessory pairing identity", &v15, 0xCu);
  }

  objc_autoreleasePoolPop(v9);
  msgDispatcher = [(HMDAccessory *)selfCopy msgDispatcher];
  [msgDispatcher sendMessage:v8];

  v14 = *MEMORY[0x277D85DE8];
}

- (HMFPairingIdentity)pairingIdentity
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = self->_pairingIdentity;
  os_unfair_recursive_lock_unlock();

  return v3;
}

- (void)_handleUpdatedName:(id)name
{
  v3.receiver = self;
  v3.super_class = HMDAppleMediaAccessory;
  [(HMDAccessory *)&v3 _handleUpdatedName:name];
}

- (id)runtimeState
{
  v12[1] = *MEMORY[0x277D85DE8];
  v10.receiver = self;
  v10.super_class = HMDAppleMediaAccessory;
  runtimeState = [(HMDAccessory *)&v10 runtimeState];
  v4 = [runtimeState mutableCopy];

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
  reachableTransports = [(HMDMediaAccessory *)&v5 reachableTransports];
  if ([(HMDAccessory *)self isReachable])
  {
    reachableTransports |= 0x10uLL;
  }

  if ([(HMDAppleMediaAccessory *)self isRemotelyReachable])
  {
    return reachableTransports | 8;
  }

  else
  {
    return reachableTransports;
  }
}

- (void)setRemotelyReachable:(BOOL)reachable
{
  reachableCopy = reachable;
  os_unfair_recursive_lock_lock_with_options();
  if (self->super.super._remotelyReachable != reachableCopy)
  {
    self->super.super._remotelyReachable = reachableCopy;
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

- (void)removeAdvertisement:(id)advertisement
{
  v14 = *MEMORY[0x277D85DE8];
  advertisementCopy = advertisement;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = HMFGetLogIdentifier();
    v10 = 138543618;
    v11 = v8;
    v12 = 2112;
    v13 = advertisementCopy;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@Ignoring removed advertisement: %@", &v10, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = *MEMORY[0x277D85DE8];
}

- (void)addAdvertisement:(id)advertisement
{
  v14 = *MEMORY[0x277D85DE8];
  advertisementCopy = advertisement;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = HMFGetLogIdentifier();
    v10 = 138543618;
    v11 = v8;
    v12 = 2112;
    v13 = advertisementCopy;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@Ignoring added advertisement: %@", &v10, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = *MEMORY[0x277D85DE8];
}

- (void)handleDeviceIsNotReachable:(id)reachable
{
  object = [reachable object];
  device = [(HMDAppleMediaAccessory *)self device];
  v6 = [object isEqual:device];

  if (v6)
  {
    workQueue = [(HMDAccessory *)self workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __53__HMDAppleMediaAccessory_handleDeviceIsNotReachable___block_invoke;
    block[3] = &unk_279735D00;
    block[4] = self;
    dispatch_async(workQueue, block);
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

- (void)handleDeviceIsReachable:(id)reachable
{
  object = [reachable object];
  device = [(HMDAppleMediaAccessory *)self device];
  v6 = [object isEqual:device];

  if (v6)
  {
    workQueue = [(HMDAccessory *)self workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __50__HMDAppleMediaAccessory_handleDeviceIsReachable___block_invoke;
    block[3] = &unk_279735D00;
    block[4] = self;
    dispatch_async(workQueue, block);
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
  notificationCenter = [(HMDMediaAccessory *)self notificationCenter];
  [notificationCenter removeObserver:self name:@"HMDRemoteDeviceIsReachableNotification" object:0];

  notificationCenter2 = [(HMDMediaAccessory *)self notificationCenter];
  [notificationCenter2 removeObserver:self name:@"HMDRemoteDeviceIsNotReachableNotification" object:0];

  device = [(HMDAppleMediaAccessory *)self device];
  if (device)
  {
    notificationCenter3 = [(HMDMediaAccessory *)self notificationCenter];
    [notificationCenter3 addObserver:self selector:sel_handleDeviceIsReachable_ name:@"HMDRemoteDeviceIsReachableNotification" object:0];

    notificationCenter4 = [(HMDMediaAccessory *)self notificationCenter];
    [notificationCenter4 addObserver:self selector:sel_handleDeviceIsNotReachable_ name:@"HMDRemoteDeviceIsNotReachableNotification" object:0];

    deviceMonitor = [(HMDAppleMediaAccessory *)self deviceMonitor];
    unreachableDevices = [deviceMonitor unreachableDevices];
    v10 = [unreachableDevices containsObject:device];

    [(HMDAppleMediaAccessory *)self setDeviceReachable:v10 ^ 1u];
    deviceMonitor2 = [(HMDAppleMediaAccessory *)self deviceMonitor];
    [deviceMonitor2 startMonitoringDevice:device withInitialReachability:0 forClient:self];
  }

  device2 = [(HMDAppleMediaAccessory *)self device];
  v13 = device2;
  if (device2 && ([device2 isCurrentDevice] & 1) == 0)
  {
    v14 = objc_autoreleasePoolPush();
    selfCopy = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = HMFGetLogIdentifier();
      v20 = 138543362;
      v21 = v17;
      _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_INFO, "%{public}@Enabling notifications for media properties directly on the device", &v20, 0xCu);
    }

    objc_autoreleasePoolPop(v14);
    home = [(HMDAccessory *)selfCopy home];
    [home enableHomeNotificationsForMediaAccessory:selfCopy];
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (id)deviceMonitor
{
  home = [(HMDAccessory *)self home];
  homeManager = [home homeManager];
  messageDispatcher = [homeManager messageDispatcher];
  secureRemoteTransport = [messageDispatcher secureRemoteTransport];
  deviceMonitor = [secureRemoteTransport deviceMonitor];

  return deviceMonitor;
}

- (void)notifyClientsOfUpdatedAccessoryControllableValue:(BOOL)value
{
  valueCopy = value;
  v11[1] = *MEMORY[0x277D85DE8];
  v9.receiver = self;
  v9.super_class = HMDAppleMediaAccessory;
  [(HMDAccessory *)&v9 notifyClientsOfUpdatedAccessoryControllableValue:?];
  if (valueCopy)
  {
    notificationCenter = [(HMDMediaAccessory *)self notificationCenter];
    device = [(HMDAppleMediaAccessory *)self device];
    v10 = @"HMDAccessoryNotificationKey";
    v11[0] = self;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    [notificationCenter postNotificationName:@"HMDAppleMediaAccessoryDeviceIsReachableNotification" object:device userInfo:v7];
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
    selfCopy = self;
    v5 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = HMFGetLogIdentifier();
      v14 = 138543362;
      v15 = v6;
      _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_DEBUG, "%{public}@Updating reachability to YES as this is the current device", &v14, 0xCu);
    }

    objc_autoreleasePoolPop(v3);
    [(HMDAccessory *)selfCopy setReachable:1];
  }

  else
  {
    device = [(HMDAppleMediaAccessory *)self device];
    v8 = device;
    if (device)
    {
      -[HMDAccessory setReachable:](self, "setReachable:", [device isPublishingOnObservedNetService]);
    }

    else
    {
      v9 = objc_autoreleasePoolPush();
      selfCopy2 = self;
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
  notificationCenter = [(HMDMediaAccessory *)self notificationCenter];
  [notificationCenter removeObserver:self name:@"HMDDeviceIsPublishingChangedNotification" object:0];

  device = [(HMDAppleMediaAccessory *)self device];

  if (device)
  {
    notificationCenter2 = [(HMDMediaAccessory *)self notificationCenter];
    device2 = [(HMDAppleMediaAccessory *)self device];
    [notificationCenter2 addObserver:self selector:sel_handleDeviceIsPublishingChangedNotification_ name:@"HMDDeviceIsPublishingChangedNotification" object:device2];
  }

  [(HMDAppleMediaAccessory *)self updateReachabilityFromDevicePublishingState];
}

- (void)handleDeviceIsPublishingChangedNotification:(id)notification
{
  notificationCopy = notification;
  workQueue = [(HMDAccessory *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __70__HMDAppleMediaAccessory_handleDeviceIsPublishingChangedNotification___block_invoke;
  v7[3] = &unk_2797359B0;
  v7[4] = self;
  v8 = notificationCopy;
  v6 = notificationCopy;
  dispatch_async(workQueue, v7);
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

- (void)_installManagedConfigurationProfileWithData:(id)data completion:(id)completion
{
  v23 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  completionCopy = completion;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
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
  v13 = selfCopy;
  v14 = HMFGetOSLogHandle();
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);
  if (dataCopy)
  {
    if (v15)
    {
      v16 = HMFGetLogIdentifier();
      v21 = 138543362;
      v22 = v16;
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_ERROR, "%{public}@Managed Configuration Profile is not supported", &v21, 0xCu);
    }

    objc_autoreleasePoolPop(v12);
    if (completionCopy)
    {
      v17 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
LABEL_12:
      v19 = v17;
      completionCopy[2](completionCopy, 0, v17);
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
    if (completionCopy)
    {
      v17 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:3];
      goto LABEL_12;
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)_removeManagedConfigurationProfileWithIdentifier:(id)identifier completion:(id)completion
{
  v25 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  completionCopy = completion;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v21 = 138543618;
    v22 = v11;
    v23 = 2112;
    v24 = identifierCopy;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Removing managed configuration profile: %@", &v21, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  v12 = objc_autoreleasePoolPush();
  v13 = selfCopy;
  v14 = HMFGetOSLogHandle();
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);
  if (identifierCopy)
  {
    if (v15)
    {
      v16 = HMFGetLogIdentifier();
      v21 = 138543362;
      v22 = v16;
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_ERROR, "%{public}@Managed Configuration Profile is not supported", &v21, 0xCu);
    }

    objc_autoreleasePoolPop(v12);
    if (completionCopy)
    {
      v17 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
LABEL_12:
      v19 = v17;
      completionCopy[2](completionCopy, v17);
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
    if (completionCopy)
    {
      v17 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:3];
      goto LABEL_12;
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)handleInstallManagedConfigurationProfile:(id)profile
{
  v26 = *MEMORY[0x277D85DE8];
  profileCopy = profile;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543362;
    v25 = v8;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Received install managed configuration profile request", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  if ([(HMDAppleMediaAccessory *)selfCopy isCurrentAccessory])
  {
    v9 = [profileCopy dataForKey:*MEMORY[0x277CCEB58]];
    if (v9)
    {
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __67__HMDAppleMediaAccessory_handleInstallManagedConfigurationProfile___block_invoke_433;
      v20[3] = &unk_27972EEB0;
      v21 = profileCopy;
      [(HMDAppleMediaAccessory *)selfCopy _installManagedConfigurationProfileWithData:v9 completion:v20];
      v10 = v21;
    }

    else
    {
      v15 = objc_autoreleasePoolPush();
      v16 = selfCopy;
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
      [profileCopy respondWithError:v10];
    }
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    v12 = selfCopy;
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
    v23 = profileCopy;
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

- (void)handleRemoveManagedConfigurationProfile:(id)profile
{
  v26 = *MEMORY[0x277D85DE8];
  profileCopy = profile;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543362;
    v25 = v8;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Received remove managed configuration profile request", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  if ([(HMDAppleMediaAccessory *)selfCopy isCurrentAccessory])
  {
    v9 = [profileCopy stringForKey:*MEMORY[0x277CCEB50]];
    if (v9)
    {
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __66__HMDAppleMediaAccessory_handleRemoveManagedConfigurationProfile___block_invoke_432;
      v20[3] = &unk_2797359D8;
      v21 = profileCopy;
      [(HMDAppleMediaAccessory *)selfCopy _removeManagedConfigurationProfileWithIdentifier:v9 completion:v20];
      v10 = v21;
    }

    else
    {
      v15 = objc_autoreleasePoolPush();
      v16 = selfCopy;
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
      [profileCopy respondWithError:v10];
    }
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    v12 = selfCopy;
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
    v23 = profileCopy;
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

- (void)handleFetchManagedConfigurationProfiles:(id)profiles
{
  v64 = *MEMORY[0x277D85DE8];
  profilesCopy = profiles;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543362;
    v59 = v8;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Received fetch managed configuration profiles request", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  isCurrentAccessory = [(HMDAppleMediaAccessory *)selfCopy isCurrentAccessory];
  v10 = objc_autoreleasePoolPush();
  v11 = selfCopy;
  v12 = HMFGetOSLogHandle();
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_INFO);
  if (isCurrentAccessory)
  {
    if (v13)
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543362;
      v59 = v14;
      _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@Handling fetch managed configuration profiles request", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v10);
    sharedConnection = [getMCProfileConnectionClass() sharedConnection];
    if (sharedConnection)
    {
      v47 = profilesCopy;
      sharedConnection2 = [getMCProfileConnectionClass() sharedConnection];
      installedProfileIdentifiers = [sharedConnection2 installedProfileIdentifiers];

      v18 = objc_autoreleasePoolPush();
      v19 = v11;
      v20 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v21 = HMFGetLogIdentifier();
        v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(installedProfileIdentifiers, "count")}];
        *buf = 138543874;
        v59 = v21;
        v60 = 2112;
        v61 = v22;
        v62 = 2112;
        v63 = installedProfileIdentifiers;
        _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_INFO, "%{public}@Fetched profile identifiers: %@, %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v18);
      array = [MEMORY[0x277CBEB18] array];
      v49 = 0u;
      v50 = 0u;
      v51 = 0u;
      v52 = 0u;
      v24 = installedProfileIdentifiers;
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
            v30 = [sharedConnection installedProfileDataWithIdentifier:{v29, v47}];
            v31 = [objc_alloc(MEMORY[0x277CD1B60]) initWithIdentifier:v29 profileData:v30];
            [array addObject:v31];
          }

          v26 = [v24 countByEnumeratingWithState:&v49 objects:v57 count:16];
        }

        while (v26);
      }

      v32 = MEMORY[0x277CCAAB0];
      v33 = [array copy];
      v48 = 0;
      v34 = [v32 archivedDataWithRootObject:v33 requiringSecureCoding:1 error:&v48];
      v35 = v48;

      if (v34)
      {
        v55 = *MEMORY[0x277CCEB60];
        v56 = v34;
        v36 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v56 forKeys:&v55 count:1];
        profilesCopy = v47;
        [v47 respondWithPayload:v36];
      }

      else
      {
        v42 = objc_autoreleasePoolPush();
        v43 = v19;
        v44 = HMFGetOSLogHandle();
        profilesCopy = v47;
        if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
        {
          v45 = HMFGetLogIdentifier();
          *buf = 138543874;
          v59 = v45;
          v60 = 2112;
          v61 = array;
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
      [profilesCopy respondWithError:v24];
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
    v54 = profilesCopy;
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

- (void)handleCurrentDeviceUpdated:(id)updated
{
  object = [updated object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = object;
  }

  else
  {
    v5 = 0;
  }

  v9 = v5;

  v6 = v9;
  if (v9)
  {
    device = [(HMDAppleMediaAccessory *)self device];
    if (v9 == device)
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

- (BOOL)shouldUpdateWithDevice:(id)device initialConfiguration:(BOOL)configuration
{
  configurationCopy = configuration;
  v47 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  device = [(HMDAppleMediaAccessory *)self device];
  if (device == deviceCopy && !configurationCopy || !HMFEqualObjects())
  {
    goto LABEL_26;
  }

  productInfo = [deviceCopy productInfo];

  if (productInfo)
  {
    productInfo2 = [deviceCopy productInfo];
    productInfo3 = [device productInfo];
    v11 = [productInfo2 isEqual:productInfo3];

    if (!v11)
    {
LABEL_26:
      v34 = 1;
      goto LABEL_27;
    }

    manufacturer = [(HMDAccessory *)self manufacturer];
    if (!manufacturer)
    {
      goto LABEL_22;
    }

    v13 = manufacturer;
    model = [(HMDAccessory *)self model];
    if (model)
    {
      v15 = model;
      serialNumber = [(HMDAccessory *)self serialNumber];
      if (serialNumber)
      {
        v17 = serialNumber;
        firmwareVersion = [(HMDAccessory *)self firmwareVersion];

        if (firmwareVersion)
        {
          goto LABEL_10;
        }

LABEL_22:
        v35 = objc_autoreleasePoolPush();
        selfCopy = self;
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
  category = [(HMDAccessory *)self category];
  if (!category)
  {
    goto LABEL_16;
  }

  v20 = category;
  category2 = [(HMDAccessory *)self category];
  v22 = MEMORY[0x277CD1680];
  productInfo4 = [deviceCopy productInfo];
  v24 = [v22 categoryForProductInfo:productInfo4];
  v25 = [category2 isEqual:v24];

  if ((v25 & 1) == 0)
  {
LABEL_16:
    v35 = objc_autoreleasePoolPush();
    selfCopy2 = self;
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

  capabilities = [deviceCopy capabilities];
  capabilities2 = [device capabilities];
  v28 = [capabilities isEqual:capabilities2];

  if ((v28 & 1) == 0)
  {
    v35 = objc_autoreleasePoolPush();
    selfCopy3 = self;
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

  rpIdentity = [deviceCopy rpIdentity];
  if (rpIdentity)
  {
    v30 = rpIdentity;
    rpIdentity2 = [deviceCopy rpIdentity];
    rpIdentity3 = [device rpIdentity];
    v33 = [rpIdentity2 isEqual:rpIdentity3];

    if ((v33 & 1) == 0)
    {
      v35 = objc_autoreleasePoolPush();
      selfCopy4 = self;
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

- (void)updateWithDevice:(id)device
{
  v48 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  if (deviceCopy)
  {
    v5 = objc_autoreleasePoolPush();
    selfCopy = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      v44 = 138543618;
      v45 = v8;
      v46 = 2112;
      v47 = deviceCopy;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Updating with device: %@", &v44, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    v9 = [(HMDAppleMediaAccessory *)selfCopy transactionWithObjectChangeType:2];
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
      identifier = [deviceCopy identifier];
      uUIDString = [identifier UUIDString];
      [v11 setDeviceUUID:uUIDString];

      [v11 setDevice:deviceCopy];
      v14 = MEMORY[0x277CD1680];
      productInfo = [deviceCopy productInfo];
      v16 = [v14 categoryForProductInfo:productInfo];

      if (v16)
      {
        category = [(HMDAccessory *)selfCopy category];
        v18 = HMFEqualObjects();

        if ((v18 & 1) == 0)
        {
          v19 = [MEMORY[0x277CD1680] categoryIdentifierForCategory:v16];
          [v11 setAccessoryCategory:v19];
        }
      }

      manufacturer = [(HMDAccessory *)selfCopy manufacturer];
      v21 = HMFEqualObjects();

      if ((v21 & 1) == 0)
      {
        [v11 setManufacturer:@"Apple Inc."];
      }

      systemInfo = [MEMORY[0x277D0F910] systemInfo];
      model = [systemInfo model];
      v24 = [model mutableCopy];

      if (v24)
      {
        systemInfo2 = [MEMORY[0x277D0F910] systemInfo];
        regionInfo = [systemInfo2 regionInfo];

        if (regionInfo)
        {
          [v24 appendString:regionInfo];
        }

        model2 = [(HMDAccessory *)selfCopy model];
        v28 = [v24 isEqual:model2];

        if ((v28 & 1) == 0)
        {
          [v11 setModel:v24];
        }
      }

      systemInfo3 = [MEMORY[0x277D0F910] systemInfo];
      serialNumber = [systemInfo3 serialNumber];

      if (serialNumber)
      {
        serialNumber2 = [(HMDAccessory *)selfCopy serialNumber];
        v32 = [serialNumber isEqual:serialNumber2];

        if ((v32 & 1) == 0)
        {
          [v11 setSerialNumber:serialNumber];
        }
      }

      productInfo2 = [deviceCopy productInfo];
      v34 = productInfo2;
      if (productInfo2)
      {
        softwareVersion = [productInfo2 softwareVersion];
        if (softwareVersion)
        {
          firmwareVersion = [(HMDAccessory *)selfCopy firmwareVersion];
          v37 = [softwareVersion isEqual:firmwareVersion];

          if ((v37 & 1) == 0)
          {
            versionString = [softwareVersion versionString];
            [v11 setFirmwareVersion:versionString];
          }
        }
      }

      home = [(HMDAccessory *)selfCopy home];
      backingStore = [home backingStore];
      v41 = +[HMDBackingStoreTransactionOptions defaultPreferencesOptions];
      v42 = [backingStore transaction:@"updateWithDevice" options:v41];

      [v42 add:v11 withMessage:0];
      [v42 run];
    }
  }

  v43 = *MEMORY[0x277D85DE8];
}

- (void)setDeviceController:(id)controller
{
  controllerCopy = controller;
  os_unfair_recursive_lock_lock_with_options();
  deviceController = self->_deviceController;
  self->_deviceController = controllerCopy;

  os_unfair_recursive_lock_unlock();
}

- (HMDMessageRouter)messageRouter
{
  messenger = [(HMDAppleMediaAccessory *)self messenger];
  router = [messenger router];

  return router;
}

- (HMDDevice)device
{
  v2 = __HMDAppleMediaAccessoryGetDeviceController(self);
  device = [v2 device];

  return device;
}

- (BOOL)supportsCrossfadeAsAirPlaySource
{
  capabilities = [(HMDAppleMediaAccessory *)self capabilities];
  supportsCrossfadeAsAirPlaySource = [capabilities supportsCrossfadeAsAirPlaySource];

  return supportsCrossfadeAsAirPlaySource;
}

- (BOOL)supportsNetworkDiagnostics
{
  capabilities = [(HMDAppleMediaAccessory *)self capabilities];
  supportsNetworkDiagnostics = [capabilities supportsNetworkDiagnostics];

  return supportsNetworkDiagnostics;
}

- (BOOL)supportsStereoOdeonTTSUBypassingPrimary
{
  capabilities = [(HMDAppleMediaAccessory *)self capabilities];
  supportsStereoOdeonTTSUBypassingPrimary = [capabilities supportsStereoOdeonTTSUBypassingPrimary];

  return supportsStereoOdeonTTSUBypassingPrimary;
}

- (BOOL)supportsWiFiRepairV2
{
  capabilities = [(HMDAppleMediaAccessory *)self capabilities];
  supportsWiFiRepairV2 = [capabilities supportsWiFiRepairV2];

  return supportsWiFiRepairV2;
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
  supportsJustSiri = [v3 supportsJustSiri];

  return supportsJustSiri;
}

- (BOOL)supportsRMVonAppleTV
{
  if ([(HMDAppleMediaAccessory *)self isCurrentAccessory])
  {
    v3 = +[HMDDeviceCapabilities deviceCapabilities];
    supportsRMVonAppleTV = [v3 supportsRMVonAppleTV];

    if ((supportsRMVonAppleTV & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    capabilities = [(HMDAppleMediaAccessory *)self capabilities];
    supportsRMVonAppleTV2 = [capabilities supportsRMVonAppleTV];

    if (!supportsRMVonAppleTV2)
    {
      return 0;
    }
  }

  return _os_feature_enabled_impl();
}

- (BOOL)supportsMessagedHomePodSettings
{
  capabilities = [(HMDAppleMediaAccessory *)self capabilities];
  if ([capabilities supportsMessagedHomePodSettings])
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
  category = [(HMDAccessory *)self category];
  categoryType = [category categoryType];
  v5 = *MEMORY[0x277CCE870];
  v6 = HMFEqualObjects();

  capabilities = [(HMDAppleMediaAccessory *)self capabilities];
  LOBYTE(category) = [capabilities supportsLoreto];

  return (category ^ 1) & v6;
}

- (BOOL)supportsManagedConfigurationProfile
{
  capabilities = [(HMDAppleMediaAccessory *)self capabilities];
  supportsManagedConfigurationProfile = [capabilities supportsManagedConfigurationProfile];

  return supportsManagedConfigurationProfile;
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
  supportsMediaActions = [v3 supportsMediaActions];

  return supportsMediaActions;
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
  supportsAnnounce = [v3 supportsAnnounce];

  return supportsAnnounce;
}

- (BOOL)supportsTVOSUpdateManualUpdateAvailableNotification
{
  isCurrentAccessory = [(HMDAppleMediaAccessory *)self isCurrentAccessory];
  if (isCurrentAccessory)
  {
    v2 = +[HMDDeviceCapabilities deviceCapabilities];
    if ([v2 supportsTVOSUpdateManualUpdateAvailableNotification])
    {
      supportsTVOSUpdateManualUpdateAvailableNotification = 1;
LABEL_5:

      return supportsTVOSUpdateManualUpdateAvailableNotification;
    }
  }

  capabilities = [(HMDAppleMediaAccessory *)self capabilities];
  supportsTVOSUpdateManualUpdateAvailableNotification = [capabilities supportsTVOSUpdateManualUpdateAvailableNotification];

  if (isCurrentAccessory)
  {
    goto LABEL_5;
  }

  return supportsTVOSUpdateManualUpdateAvailableNotification;
}

- (BOOL)supportsCoordinationFreeDoorbellChime
{
  isCurrentAccessory = [(HMDAppleMediaAccessory *)self isCurrentAccessory];
  if (isCurrentAccessory)
  {
    v2 = +[HMDDeviceCapabilities deviceCapabilities];
    if ([v2 supportsCoordinationFreeDoorbellChime])
    {
      supportsCoordinationFreeDoorbellChime = 1;
LABEL_5:

      return supportsCoordinationFreeDoorbellChime;
    }
  }

  capabilities = [(HMDAppleMediaAccessory *)self capabilities];
  supportsCoordinationFreeDoorbellChime = [capabilities supportsCoordinationFreeDoorbellChime];

  if (isCurrentAccessory)
  {
    goto LABEL_5;
  }

  return supportsCoordinationFreeDoorbellChime;
}

- (BOOL)supportsCoordinationDoorbellChime
{
  isCurrentAccessory = [(HMDAppleMediaAccessory *)self isCurrentAccessory];
  if (isCurrentAccessory)
  {
    v2 = +[HMDDeviceCapabilities deviceCapabilities];
    if ([v2 supportsCoordinationDoorbellChime])
    {
      supportsCoordinationDoorbellChime = 1;
LABEL_5:

      return supportsCoordinationDoorbellChime;
    }
  }

  capabilities = [(HMDAppleMediaAccessory *)self capabilities];
  supportsCoordinationDoorbellChime = [capabilities supportsCoordinationDoorbellChime];

  if (isCurrentAccessory)
  {
    goto LABEL_5;
  }

  return supportsCoordinationDoorbellChime;
}

- (BOOL)supportsUserMediaSettings
{
  isCurrentAccessory = [(HMDAppleMediaAccessory *)self isCurrentAccessory];
  if (isCurrentAccessory)
  {
    v2 = +[HMDDeviceCapabilities deviceCapabilities];
    if ([v2 supportsUserMediaSettings])
    {
      supportsUserMediaSettings = 1;
LABEL_5:

      return supportsUserMediaSettings;
    }
  }

  capabilities = [(HMDAppleMediaAccessory *)self capabilities];
  supportsUserMediaSettings = [capabilities supportsUserMediaSettings];

  if (isCurrentAccessory)
  {
    goto LABEL_5;
  }

  return supportsUserMediaSettings;
}

- (BOOL)supportsDoorbellChime
{
  isCurrentAccessory = [(HMDAppleMediaAccessory *)self isCurrentAccessory];
  if (isCurrentAccessory)
  {
    v2 = +[HMDDeviceCapabilities deviceCapabilities];
    if ([v2 supportsDoorbellChime])
    {
      supportsDoorbellChime = 1;
LABEL_5:

      return supportsDoorbellChime;
    }
  }

  capabilities = [(HMDAppleMediaAccessory *)self capabilities];
  supportsDoorbellChime = [capabilities supportsDoorbellChime];

  if (isCurrentAccessory)
  {
    goto LABEL_5;
  }

  return supportsDoorbellChime;
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
  supportsPreferredMediaUser = [v3 supportsPreferredMediaUser];

  return supportsPreferredMediaUser;
}

- (BOOL)supportsThirdPartyMusic
{
  isCurrentAccessory = [(HMDAppleMediaAccessory *)self isCurrentAccessory];
  if (isCurrentAccessory)
  {
    v2 = +[HMDDeviceCapabilities deviceCapabilities];
    if ([v2 supportsThirdPartyMusic])
    {
      supportsThirdPartyMusic = 1;
LABEL_5:

      return supportsThirdPartyMusic;
    }
  }

  capabilities = [(HMDAppleMediaAccessory *)self capabilities];
  supportsThirdPartyMusic = [capabilities supportsThirdPartyMusic];

  if (isCurrentAccessory)
  {
    goto LABEL_5;
  }

  return supportsThirdPartyMusic;
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
  supportsMusicAlarm = [v3 supportsMusicAlarm];

  return supportsMusicAlarm;
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
  supportsCompanionInitiatedObliterate = [v3 supportsCompanionInitiatedObliterate];

  return supportsCompanionInitiatedObliterate;
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
  supportsCompanionInitiatedRestart = [v3 supportsCompanionInitiatedRestart];

  return supportsCompanionInitiatedRestart;
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
  supportsAudioReturnChannel = [v3 supportsAudioReturnChannel];

  return supportsAudioReturnChannel;
}

- (BOOL)legacyLocationServicesEnabled
{
  v23 = *MEMORY[0x277D85DE8];
  settingsController = [(HMDAppleMediaAccessory *)self settingsController];
  rootGroup = [settingsController rootGroup];
  groups = [rootGroup groups];
  v6 = [groups na_firstObjectPassingTest:&__block_literal_global_411];
  settings = [v6 settings];
  v8 = [settings na_firstObjectPassingTest:&__block_literal_global_416_94715];

  if (v8)
  {
    value = [v8 value];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = value;
    }

    else
    {
      v10 = 0;
    }

    v11 = v10;

    if (v11)
    {
      bOOLValue = [v11 BOOLValue];
    }

    else
    {
      v13 = objc_autoreleasePoolPush();
      selfCopy = self;
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = HMFGetLogIdentifier();
        v19 = 138543618;
        v20 = v16;
        v21 = 2112;
        v22 = value;
        _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_ERROR, "%{public}@Failed to get location service enabled value due to unknown class for value: %@", &v19, 0x16u);
      }

      objc_autoreleasePoolPop(v13);
      bOOLValue = 0;
    }
  }

  else
  {
    bOOLValue = 0;
  }

  v17 = *MEMORY[0x277D85DE8];
  return bOOLValue;
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
  supportsHomeLevelLocationServiceSetting = [v3 supportsHomeLevelLocationServiceSetting];

  return supportsHomeLevelLocationServiceSetting;
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
  supportsMultiUser = [v3 supportsMultiUser];

  return supportsMultiUser;
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
  supportsTargetControl = [v3 supportsTargetControl];

  return supportsTargetControl;
}

- (BOOL)isCurrentAccessory
{
  device = [(HMDAppleMediaAccessory *)self device];
  deviceMediaRouteIdentifierFactory = [(HMDAppleMediaAccessory *)self deviceMediaRouteIdentifierFactory];
  v5 = deviceMediaRouteIdentifierFactory[2]();

  identifier = [(HMDAccessory *)self identifier];
  v7 = identifier;
  if (v5)
  {
    v8 = device == 0;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    if (![identifier isEqualToString:v5])
    {
      v10 = 0;
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  if (!v5)
  {
LABEL_9:
    isCurrentDevice = [device isCurrentDevice];
    goto LABEL_10;
  }

  isCurrentDevice = [identifier isEqualToString:v5];
LABEL_10:
  v10 = isCurrentDevice;
LABEL_12:

  return v10;
}

- (void)setIdsIdentifier:(id)identifier
{
  identifierCopy = identifier;
  os_unfair_recursive_lock_lock_with_options();
  idsIdentifier = self->_idsIdentifier;
  self->_idsIdentifier = identifierCopy;

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
  deviceForDirectMessaging = [(HMDAppleMediaAccessory *)self deviceForDirectMessaging];
  idsIdentifier = [deviceForDirectMessaging idsIdentifier];

  if (!idsIdentifier)
  {
    os_unfair_recursive_lock_lock_with_options();
    idsIdentifier = self->_idsIdentifier;
    os_unfair_recursive_lock_unlock();
  }

  return idsIdentifier;
}

- (void)setProductColor:(int64_t)color
{
  os_unfair_recursive_lock_lock_with_options();
  self->_productColor = color;

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

- (void)setRawCapabilities:(id)capabilities
{
  capabilitiesCopy = capabilities;
  os_unfair_recursive_lock_lock_with_options();
  rawCapabilities = self->_rawCapabilities;
  self->_rawCapabilities = capabilitiesCopy;

  os_unfair_recursive_lock_unlock();
}

- (NSData)rawCapabilities
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = self->_rawCapabilities;
  os_unfair_recursive_lock_unlock();

  return v3;
}

- (void)setCapabilitiesInternal:(id)internal
{
  internalCopy = internal;
  os_unfair_recursive_lock_lock_with_options();
  capabilitiesInternal = self->_capabilitiesInternal;
  self->_capabilitiesInternal = internalCopy;

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
  device = [(HMDAppleMediaAccessory *)self device];
  capabilities = [device capabilities];

  return capabilities;
}

- (void)autoConfigureTargetControllers
{
  v51 = *MEMORY[0x277D85DE8];
  targetControlManager = [(HMDAppleMediaAccessory *)self targetControlManager];

  v4 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_INFO);
  if (targetControlManager)
  {
    if (v6)
    {
      v7 = HMFGetLogIdentifier();
      *buf = 138543362;
      v41 = v7;
      _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@Accessory supports target control - adding to all target controllers", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    array = [MEMORY[0x277CBEB18] array];
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    home = [(HMDAccessory *)selfCopy home];
    accessories = [home accessories];

    v10 = [accessories countByEnumeratingWithState:&v36 objects:v50 count:16];
    if (v10)
    {
      v12 = v10;
      v13 = *v37;
      *&v11 = 138544386;
      v28 = v11;
      v29 = *v37;
      v30 = accessories;
      do
      {
        v14 = 0;
        v31 = v12;
        do
        {
          if (*v37 != v13)
          {
            objc_enumerationMutation(accessories);
          }

          v15 = *(*(&v36 + 1) + 8 * v14);
          if ([v15 supportsTargetController])
          {
            v16 = objc_autoreleasePoolPush();
            v17 = selfCopy;
            v18 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
            {
              v19 = HMFGetLogIdentifier();
              name = [(HMDMediaAccessory *)v17 name];
              uuid = [(HMDAccessory *)v17 uuid];
              uUIDString = [uuid UUIDString];
              name2 = [v15 name];
              uuid2 = [v15 uuid];
              [uuid2 UUIDString];
              v24 = v33 = v16;
              *buf = v28;
              v41 = v19;
              v42 = 2112;
              v43 = name;
              v44 = 2112;
              v45 = uUIDString;
              v46 = 2112;
              v47 = name2;
              v48 = 2112;
              v49 = v24;
              _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_INFO, "%{public}@Adding accessory %@/%@ as a target to the target controller %@/%@", buf, 0x34u);

              v12 = v31;
              accessories = v30;

              v16 = v33;
              v13 = v29;
            }

            objc_autoreleasePoolPop(v16);
            [array addObject:v15];
          }

          ++v14;
        }

        while (v12 != v14);
        v12 = [accessories countByEnumeratingWithState:&v36 objects:v50 count:16];
      }

      while (v12);
    }

    targetControlManager2 = [(HMDAppleMediaAccessory *)selfCopy targetControlManager];
    [targetControlManager2 addTargetControllers:array];
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

  pairingIdentity = [(HMDAppleMediaAccessory *)self pairingIdentity];

  if (!pairingIdentity)
  {
    v21 = objc_autoreleasePoolPush();
    selfCopy2 = self;
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

  pairingIdentity2 = [(HMDAppleMediaAccessory *)self pairingIdentity];
  privateKey = [pairingIdentity2 privateKey];

  if (!privateKey)
  {
    v21 = objc_autoreleasePoolPush();
    selfCopy2 = self;
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
      selfCopy3 = self;
      v11 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = HMFGetLogIdentifier();
        *buf = 138543362;
        v29 = v12;
        _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@Fixing pairing identity", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v9);
      pairingIdentity3 = [(HMDAppleMediaAccessory *)selfCopy3 pairingIdentity];
      publicPairingIdentity = [pairingIdentity3 publicPairingIdentity];
      [v8 setPairingIdentity:publicPairingIdentity];

      uUID = [MEMORY[0x277CCAD78] UUID];
      uUIDString = [uUID UUIDString];
      [v8 setAppleMediaAccessoryChangeTag:uUIDString];

      home = [(HMDAccessory *)selfCopy3 home];
      backingStore = [home backingStore];
      v19 = +[HMDBackingStoreTransactionOptions defaultPreferencesOptions];
      v20 = [backingStore transaction:@"Fix Pairing Identity" options:v19];

      [v20 add:v8];
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __46__HMDAppleMediaAccessory__fixCloudKeyIfNeeded__block_invoke;
      v27[3] = &unk_2797359D8;
      v27[4] = selfCopy3;
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
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    *buf = 138543362;
    v15 = v6;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@Fetching multi-user languages.", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  settingsConnectionFactory = [(HMDAppleMediaAccessory *)selfCopy settingsConnectionFactory];
  v8 = settingsConnectionFactory[2]();

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __50__HMDAppleMediaAccessory__fetchMultiUserLanguages__block_invoke;
  v11[3] = &unk_279734D18;
  v12 = v8;
  v13 = selfCopy;
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
    audioDestination = [(HMDAppleMediaAccessory *)self audioDestination];
    v4 = objc_autoreleasePoolPush();
    selfCopy = self;
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      *buf = 138543618;
      v16 = v7;
      v17 = 2112;
      v18 = audioDestination;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Removing audio destination: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    if (audioDestination)
    {
      v8 = [[HMDMediaDestinationModel alloc] initWithDestination:audioDestination changeType:3];
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __48__HMDAppleMediaAccessory_removeAudioDestination__block_invoke;
      v14[3] = &unk_2797359D8;
      v14[4] = selfCopy;
      [(HMDAccessory *)selfCopy runTransactionWithModel:v8 label:@"Remove audio destination" completion:v14];
    }
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy2 = self;
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
  home = [(HMDAccessory *)self home];
  homeManager = [home homeManager];
  mediaGroupParticipantDataLocalStorage = [homeManager mediaGroupParticipantDataLocalStorage];
  v6 = mediaGroupParticipantDataLocalStorage;
  if (mediaGroupParticipantDataLocalStorage)
  {
    v7 = mediaGroupParticipantDataLocalStorage;
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v14 = 138543874;
      v15 = v11;
      v16 = 2112;
      v17 = home;
      v18 = 2112;
      v19 = homeManager;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to get media groups participant data local storage due to dependencies home: %@ homeManager: %@", &v14, 0x20u);
    }

    objc_autoreleasePoolPop(v8);
  }

  v12 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)legacyCreateAudioDestinationWithIdentifier:(id)identifier supportedOptions:(unint64_t)options
{
  identifierCopy = identifier;
  v7 = [HMDMediaDestinationModel alloc];
  uuid = [(HMDAccessory *)self uuid];
  v9 = [(HMDBackingStoreModelObject *)v7 initWithObjectChangeType:1 uuid:identifierCopy parentUUID:uuid];

  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:options];
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
      uuid = [(HMDAccessory *)self uuid];
      uUIDString = [uuid UUIDString];
      v7 = [uUIDString dataUsingEncoding:4];
      v8 = [v4 hmf_UUIDWithNamespace:v3 data:v7];

      expectedDestinationSupportOptions = [(HMDAppleMediaAccessory *)self expectedDestinationSupportOptions];
      v10 = objc_autoreleasePoolPush();
      selfCopy = self;
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
        mediaGroupParticipantDataLocalStorage = [(HMDAppleMediaAccessory *)selfCopy mediaGroupParticipantDataLocalStorage];
        participantData = [mediaGroupParticipantDataLocalStorage participantData];
        destination = [participantData destination];

        if (destination)
        {
          v18 = objc_autoreleasePoolPush();
          v19 = selfCopy;
          v20 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
          {
            v21 = HMFGetLogIdentifier();
            v35 = 138543618;
            v36 = v21;
            v37 = 2112;
            v38 = destination;
            _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_INFO, "%{public}@Overwriting stale audio destination: %@", &v35, 0x16u);
          }

          objc_autoreleasePoolPop(v18);
        }

        v22 = objc_alloc(MEMORY[0x277CD1B80]);
        uuid2 = [(HMDAccessory *)selfCopy uuid];
        defaultAudioGroupIdentifier = [(HMDAppleMediaAccessory *)selfCopy defaultAudioGroupIdentifier];
        v25 = [v22 initWithUniqueIdentifier:v8 parentIdentifier:uuid2 supportedOptions:expectedDestinationSupportOptions audioGroupIdentifier:defaultAudioGroupIdentifier];

        [mediaGroupParticipantDataLocalStorage updateMediaDestination:v25];
        [(HMDAppleMediaAccessory *)selfCopy mergeAudioDestination:v25];
      }

      else
      {
        v30 = objc_autoreleasePoolPush();
        v31 = selfCopy;
        v32 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
        {
          v33 = HMFGetLogIdentifier();
          v35 = 138543362;
          v36 = v33;
          _os_log_impl(&dword_2531F8000, v32, OS_LOG_TYPE_INFO, "%{public}@Home Theater QFA is not enabled", &v35, 0xCu);
        }

        objc_autoreleasePoolPop(v30);
        [(HMDAppleMediaAccessory *)v31 legacyCreateAudioDestinationWithIdentifier:v8 supportedOptions:expectedDestinationSupportOptions];
      }
    }

    else
    {
      v26 = objc_autoreleasePoolPush();
      selfCopy2 = self;
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
    audioDestinationController = [(HMDAppleMediaAccessory *)self audioDestinationController];

    if (audioDestinationController)
    {
      mediaGroupParticipantDataLocalStorage = [(HMDAppleMediaAccessory *)self mediaGroupParticipantDataLocalStorage];
      featuresDataSource = [(HMDAccessory *)self featuresDataSource];
      [mediaGroupParticipantDataLocalStorage migrateWithExpectedDestinationControllerSupportOptions:{+[HMDMediaDestinationController expectedSupportOptionsWithFeaturesDataSource:](HMDMediaDestinationController, "expectedSupportOptionsWithFeaturesDataSource:", featuresDataSource)}];
    }

    audioDestinationManager = [(HMDAppleMediaAccessory *)self audioDestinationManager];

    if (audioDestinationManager)
    {
      mediaGroupParticipantDataLocalStorage2 = [(HMDAppleMediaAccessory *)self mediaGroupParticipantDataLocalStorage];
      [mediaGroupParticipantDataLocalStorage2 migrateWithExpectedDestinationSupportOptions:{-[HMDAppleMediaAccessory expectedDestinationSupportOptions](self, "expectedDestinationSupportOptions")}];
    }
  }
}

- (void)configureAudioDestinationManager
{
  v22 = *MEMORY[0x277D85DE8];
  if ([(HMDAppleMediaAccessory *)self isHomePod])
  {
    committedAudioDestination = [(HMDAppleMediaAccessory *)self committedAudioDestination];
    v4 = committedAudioDestination;
    if (committedAudioDestination && ([committedAudioDestination parentIdentifier], v5 = objc_claimAutoreleasedReturnValue(), -[HMDAccessory uuid](self, "uuid"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v5, "hmf_isEqualToUUID:", v6), v6, v5, (v7 & 1) != 0))
    {
      home = [(HMDAccessory *)self home];
      msgDispatcher = [(HMDAccessory *)self msgDispatcher];
      notificationCenter = [(HMDMediaAccessory *)self notificationCenter];
      backingStore = [(HMDAppleMediaAccessory *)self backingStore];
      if ([(HMDAppleMediaAccessory *)self hasValidHome:home backingStore:backingStore messageDispatcher:msgDispatcher])
      {
        mediaDestinationManagerFactory = [(HMDAppleMediaAccessory *)self mediaDestinationManagerFactory];
        v13 = [mediaDestinationManagerFactory mediaDestinationManagerWithDestination:v4 messageDispatcher:msgDispatcher notificationCenter:notificationCenter backingStore:backingStore targetDevice:-[HMDAppleMediaAccessory isCurrentAccessory](self dataSource:"isCurrentAccessory") delegate:{self, self}];
        [(HMDAppleMediaAccessory *)self setAudioDestinationManager:v13];

        audioDestinationManager = [(HMDAppleMediaAccessory *)self audioDestinationManager];
        [audioDestinationManager configureWithHome:home currentAccessory:{-[HMDAppleMediaAccessory isCurrentAccessory](self, "isCurrentAccessory")}];

        [(HMDAppleMediaAccessory *)self migrateLocalParticipantData];
      }

      else
      {
        v15 = objc_autoreleasePoolPush();
        selfCopy = self;
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

- (void)mergeAudioDestination:(id)destination
{
  v29 = *MEMORY[0x277D85DE8];
  destinationCopy = destination;
  audioDestinationManager = [(HMDAppleMediaAccessory *)self audioDestinationManager];
  v6 = audioDestinationManager;
  if (audioDestinationManager)
  {
    [audioDestinationManager mergeDestination:destinationCopy];
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    selfCopy = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543618;
      v26 = v10;
      v27 = 2112;
      v28 = destinationCopy;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Merging new audio destination: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    home = [(HMDAccessory *)selfCopy home];
    msgDispatcher = [(HMDAccessory *)selfCopy msgDispatcher];
    notificationCenter = [(HMDMediaAccessory *)selfCopy notificationCenter];
    backingStore = [(HMDAppleMediaAccessory *)selfCopy backingStore];
    if ([(HMDAppleMediaAccessory *)selfCopy hasValidHome:home backingStore:backingStore messageDispatcher:msgDispatcher])
    {
      mediaDestinationManagerFactory = [(HMDAppleMediaAccessory *)selfCopy mediaDestinationManagerFactory];
      v16 = [mediaDestinationManagerFactory mediaDestinationManagerWithDestination:destinationCopy messageDispatcher:msgDispatcher notificationCenter:notificationCenter backingStore:backingStore targetDevice:-[HMDAppleMediaAccessory isCurrentAccessory](selfCopy dataSource:"isCurrentAccessory") delegate:{selfCopy, selfCopy}];
      [(HMDAppleMediaAccessory *)selfCopy setAudioDestinationManager:v16];

      audioDestinationManager2 = [(HMDAppleMediaAccessory *)selfCopy audioDestinationManager];
      [audioDestinationManager2 configureWithHome:home currentAccessory:{-[HMDAppleMediaAccessory isCurrentAccessory](selfCopy, "isCurrentAccessory")}];

      audioDestinationManager3 = [(HMDAppleMediaAccessory *)selfCopy audioDestinationManager];
      messageHandler = [audioDestinationManager3 messageHandler];
      [messageHandler handleUpdatedDestination:destinationCopy];
    }

    else
    {
      v20 = objc_autoreleasePoolPush();
      v21 = selfCopy;
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
  audioDestinationManager = [(HMDAppleMediaAccessory *)self audioDestinationManager];
  v4 = audioDestinationManager;
  if (audioDestinationManager)
  {
    destination = [audioDestinationManager destination];
  }

  else
  {
    os_unfair_recursive_lock_lock_with_options();
    destination = self->_committedAudioDestination;
    os_unfair_recursive_lock_unlock();
  }

  return destination;
}

- (HMMediaDestination)audioDestination
{
  v14 = *MEMORY[0x277D85DE8];
  if (isFeatureHomeTheaterQFAEnabledForTests && ([isFeatureHomeTheaterQFAEnabledForTests BOOLValue] & 1) != 0)
  {
    dataSource = [(HMDAppleMediaAccessory *)self dataSource];
    v4 = dataSource;
    if (dataSource)
    {
      legacyAudioDestination = [dataSource destinationForAppleMediaAccessory:self];
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
        _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_ERROR, "%{public}@Failed to get audio destination due to no data source", &v12, 0xCu);
      }

      objc_autoreleasePoolPop(v6);
      legacyAudioDestination = 0;
    }
  }

  else
  {
    legacyAudioDestination = [(HMDAppleMediaAccessory *)self legacyAudioDestination];
  }

  v10 = *MEMORY[0x277D85DE8];

  return legacyAudioDestination;
}

- (id)legacyCommittedAudioDestination
{
  audioDestinationManager = [(HMDAppleMediaAccessory *)self audioDestinationManager];
  v4 = audioDestinationManager;
  if (audioDestinationManager)
  {
    committedDestination = [audioDestinationManager committedDestination];
  }

  else
  {
    os_unfair_recursive_lock_lock_with_options();
    committedDestination = self->_committedAudioDestination;
    os_unfair_recursive_lock_unlock();
  }

  return committedDestination;
}

- (id)committedAudioDestination
{
  if (isFeatureHomeTheaterQFAEnabledForTests && ([isFeatureHomeTheaterQFAEnabledForTests BOOLValue] & 1) != 0)
  {
    if ([(HMDAppleMediaAccessory *)self isCurrentAccessory])
    {
      mediaGroupParticipantDataLocalStorage = [(HMDAppleMediaAccessory *)self mediaGroupParticipantDataLocalStorage];
      participantData = [mediaGroupParticipantDataLocalStorage participantData];
      destination = [participantData destination];

      goto LABEL_7;
    }

    audioDestination = [(HMDAppleMediaAccessory *)self audioDestination];
  }

  else
  {
    audioDestination = [(HMDAppleMediaAccessory *)self legacyCommittedAudioDestination];
  }

  destination = audioDestination;
LABEL_7:

  return destination;
}

- (void)legacyCreateAudioDestinationControllerWithControllerIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [HMDMediaDestinationControllerModel alloc];
  uuid = [(HMDAccessory *)self uuid];
  v7 = [(HMDBackingStoreModelObject *)v5 initWithObjectChangeType:1 uuid:identifierCopy parentUUID:uuid];

  [(HMDMediaDestinationControllerModel *)v7 setAvailableDestinationModelIdentifiers:MEMORY[0x277CBEBF8]];
  v8 = MEMORY[0x277CCABB0];
  featuresDataSource = [(HMDAccessory *)self featuresDataSource];
  v10 = [v8 numberWithUnsignedInteger:{+[HMDMediaDestinationController expectedSupportOptionsWithFeaturesDataSource:](HMDMediaDestinationController, "expectedSupportOptionsWithFeaturesDataSource:", featuresDataSource)}];
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
      uuid = [(HMDAccessory *)self uuid];
      uUIDString = [uuid UUIDString];
      v7 = [uUIDString dataUsingEncoding:4];
      v8 = [v4 hmf_UUIDWithNamespace:v3 data:v7];

      v9 = objc_autoreleasePoolPush();
      selfCopy = self;
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
        mediaGroupParticipantDataLocalStorage = [(HMDAppleMediaAccessory *)selfCopy mediaGroupParticipantDataLocalStorage];
        participantData = [mediaGroupParticipantDataLocalStorage participantData];
        destinationControllerData = [participantData destinationControllerData];

        if (destinationControllerData)
        {
          v16 = objc_autoreleasePoolPush();
          v17 = selfCopy;
          v18 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
          {
            v19 = HMFGetLogIdentifier();
            v34 = 138543618;
            v35 = v19;
            v36 = 2112;
            v37 = destinationControllerData;
            _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_INFO, "%{public}@Overwriting stale audio destination controller data: %@", &v34, 0x16u);
          }

          objc_autoreleasePoolPop(v16);
        }

        v20 = objc_alloc(MEMORY[0x277CD1B90]);
        uuid2 = [(HMDAccessory *)selfCopy uuid];
        featuresDataSource = [(HMDAccessory *)selfCopy featuresDataSource];
        v23 = [HMDMediaDestinationController expectedSupportOptionsWithFeaturesDataSource:featuresDataSource];
        v24 = [v20 initWithIdentifier:v8 parentIdentifier:uuid2 destinationIdentifier:0 supportedOptions:v23 availableDestinationIdentifiers:MEMORY[0x277CBEBF8]];

        [mediaGroupParticipantDataLocalStorage updateDestinationControllerData:v24];
        [(HMDAppleMediaAccessory *)selfCopy mergeAudioDestinationControllerData:v24];
      }

      else
      {
        v29 = objc_autoreleasePoolPush();
        v30 = selfCopy;
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
      selfCopy2 = self;
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

- (BOOL)hasValidHome:(id)home backingStore:(id)store messageDispatcher:(id)dispatcher
{
  v29 = *MEMORY[0x277D85DE8];
  homeCopy = home;
  storeCopy = store;
  dispatcherCopy = dispatcher;
  v11 = dispatcherCopy;
  if (homeCopy)
  {
    v12 = dispatcherCopy == 0;
  }

  else
  {
    v12 = 1;
  }

  v13 = v12 || storeCopy == 0;
  v14 = !v13;
  if (v13)
  {
    v15 = objc_autoreleasePoolPush();
    selfCopy = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      v21 = 138544130;
      v22 = v18;
      v23 = 2112;
      v24 = homeCopy;
      v25 = 2112;
      v26 = v11;
      v27 = 2112;
      v28 = storeCopy;
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
  category = [(HMDAccessory *)self category];
  categoryType = [category categoryType];
  v5 = [categoryType isEqual:*MEMORY[0x277CCE870]];

  if (v5)
  {
    committedAudioDestinationControllerData = [(HMDAppleMediaAccessory *)self committedAudioDestinationControllerData];
    v7 = committedAudioDestinationControllerData;
    if (committedAudioDestinationControllerData && ([committedAudioDestinationControllerData parentIdentifier], v8 = objc_claimAutoreleasedReturnValue(), -[HMDAccessory uuid](self, "uuid"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v8, "hmf_isEqualToUUID:", v9), v9, v8, (v10 & 1) != 0))
    {
      home = [(HMDAccessory *)self home];
      msgDispatcher = [(HMDAccessory *)self msgDispatcher];
      notificationCenter = [(HMDMediaAccessory *)self notificationCenter];
      backingStore = [(HMDAppleMediaAccessory *)self backingStore];
      v15 = [(HMDAppleMediaAccessory *)self hasValidHome:home backingStore:backingStore messageDispatcher:msgDispatcher];
      v16 = objc_autoreleasePoolPush();
      selfCopy = self;
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
        mediaDestinationControllerFactory = [(HMDAppleMediaAccessory *)selfCopy mediaDestinationControllerFactory];
        logEventSubmitter = [home logEventSubmitter];
        dailyScheduler = [home dailyScheduler];
        LOBYTE(v28) = [(HMDAppleMediaAccessory *)selfCopy isCurrentAccessory];
        v24 = [mediaDestinationControllerFactory mediaDestinationControllerWithData:v7 backingStore:backingStore messageDispatcher:msgDispatcher notificationCenter:notificationCenter logEventSubmitter:logEventSubmitter dailyScheduler:dailyScheduler targetDevice:v28 dataSource:selfCopy delegate:selfCopy];
        [(HMDAppleMediaAccessory *)selfCopy setAudioDestinationController:v24];

        audioDestinationController = [(HMDAppleMediaAccessory *)selfCopy audioDestinationController];
        [audioDestinationController configureWithHome:home];

        [(HMDAppleMediaAccessory *)selfCopy migrateLocalParticipantData];
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

- (void)mergeAudioDestinationControllerData:(id)data
{
  v31 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  audioDestinationController = [(HMDAppleMediaAccessory *)self audioDestinationController];
  v6 = audioDestinationController;
  if (audioDestinationController)
  {
    [audioDestinationController mergeData:dataCopy];
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    selfCopy = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543618;
      v28 = v10;
      v29 = 2112;
      v30 = dataCopy;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Merging new audio destination controller with data: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    home = [(HMDAccessory *)selfCopy home];
    msgDispatcher = [(HMDAccessory *)selfCopy msgDispatcher];
    notificationCenter = [(HMDMediaAccessory *)selfCopy notificationCenter];
    backingStore = [(HMDAppleMediaAccessory *)selfCopy backingStore];
    if ([(HMDAppleMediaAccessory *)selfCopy hasValidHome:home backingStore:backingStore messageDispatcher:msgDispatcher])
    {
      mediaDestinationControllerFactory = [(HMDAppleMediaAccessory *)selfCopy mediaDestinationControllerFactory];
      logEventSubmitter = [home logEventSubmitter];
      dailyScheduler = [home dailyScheduler];
      LOBYTE(v25) = [(HMDAppleMediaAccessory *)selfCopy isCurrentAccessory];
      [mediaDestinationControllerFactory mediaDestinationControllerWithData:dataCopy backingStore:backingStore messageDispatcher:msgDispatcher notificationCenter:notificationCenter logEventSubmitter:logEventSubmitter dailyScheduler:dailyScheduler targetDevice:v25 dataSource:selfCopy delegate:selfCopy];
      v18 = v26 = notificationCenter;
      [(HMDAppleMediaAccessory *)selfCopy setAudioDestinationController:v18];

      audioDestinationController2 = [(HMDAppleMediaAccessory *)selfCopy audioDestinationController];
      [audioDestinationController2 configureWithHome:home];

      notificationCenter = v26;
    }

    else
    {
      v20 = objc_autoreleasePoolPush();
      v21 = selfCopy;
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
  audioDestinationController = [(HMDAppleMediaAccessory *)self audioDestinationController];
  v4 = audioDestinationController;
  if (audioDestinationController)
  {
    committedData = [audioDestinationController committedData];
  }

  else
  {
    os_unfair_recursive_lock_lock_with_options();
    committedData = self->_committedAudioDestinationControllerData;
    os_unfair_recursive_lock_unlock();
  }

  return committedData;
}

- (id)committedAudioDestinationControllerData
{
  if (isFeatureHomeTheaterQFAEnabledForTests && ([isFeatureHomeTheaterQFAEnabledForTests BOOLValue] & 1) != 0)
  {
    if ([(HMDAppleMediaAccessory *)self isCurrentAccessory])
    {
      mediaGroupParticipantDataLocalStorage = [(HMDAppleMediaAccessory *)self mediaGroupParticipantDataLocalStorage];
      participantData = [mediaGroupParticipantDataLocalStorage participantData];
      destinationControllerData = [participantData destinationControllerData];

      goto LABEL_7;
    }

    audioDestinationControllerData = [(HMDAppleMediaAccessory *)self audioDestinationControllerData];
  }

  else
  {
    audioDestinationControllerData = [(HMDAppleMediaAccessory *)self legacyCommittedAudioDestinationControllerData];
  }

  destinationControllerData = audioDestinationControllerData;
LABEL_7:

  return destinationControllerData;
}

- (id)legacyAudioDestinationControllerData
{
  audioDestinationController = [(HMDAppleMediaAccessory *)self audioDestinationController];
  v4 = audioDestinationController;
  if (audioDestinationController)
  {
    data = [audioDestinationController data];
  }

  else
  {
    os_unfair_recursive_lock_lock_with_options();
    data = self->_committedAudioDestinationControllerData;
    os_unfair_recursive_lock_unlock();
  }

  return data;
}

- (HMMediaDestinationControllerData)audioDestinationControllerData
{
  v14 = *MEMORY[0x277D85DE8];
  if (isFeatureHomeTheaterQFAEnabledForTests && ([isFeatureHomeTheaterQFAEnabledForTests BOOLValue] & 1) != 0)
  {
    dataSource = [(HMDAppleMediaAccessory *)self dataSource];
    v4 = dataSource;
    if (dataSource)
    {
      legacyAudioDestinationControllerData = [dataSource destinationControllerDataForAppleMediaAccessory:self];
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
        _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_ERROR, "%{public}@Failed to get audio destination data due to no data source", &v12, 0xCu);
      }

      objc_autoreleasePoolPop(v6);
      legacyAudioDestinationControllerData = 0;
    }
  }

  else
  {
    legacyAudioDestinationControllerData = [(HMDAppleMediaAccessory *)self legacyAudioDestinationControllerData];
  }

  v10 = *MEMORY[0x277D85DE8];

  return legacyAudioDestinationControllerData;
}

- (NSUUID)sensorAccessoryUUID
{
  sensorManager = [(HMDAppleMediaAccessory *)self sensorManager];
  sensorAccessoryUUID = [sensorManager sensorAccessoryUUID];

  return sensorAccessoryUUID;
}

- (void)unconfigure
{
  v2.receiver = self;
  v2.super_class = HMDAppleMediaAccessory;
  [(HMDMediaAccessory *)&v2 unconfigure];
}

- (BOOL)isDoorbellChimeSettingEnabled
{
  settingsController = [(HMDAppleMediaAccessory *)self settingsController];
  rootGroup = [settingsController rootGroup];
  groups = [rootGroup groups];
  v5 = [groups na_any:&__block_literal_global_384];

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
  category = [(HMDAccessory *)self category];
  categoryType = [category categoryType];
  v4 = [categoryType isEqualToString:*MEMORY[0x277CCE870]];

  return v4;
}

- (BOOL)isHomePod
{
  category = [(HMDAccessory *)self category];
  categoryType = [category categoryType];
  v4 = [categoryType isEqualToString:*MEMORY[0x277CCE8B0]];

  return v4;
}

- (void)updateProductInformation
{
  v37 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v33 = 138543362;
    v34 = v6;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@Updating Product Information", &v33, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v7 = [(HMDAppleMediaAccessory *)selfCopy transactionWithObjectChangeType:2];
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
  supportedStereoPairVersions = [(HMDAppleMediaAccessory *)selfCopy supportedStereoPairVersions];
  if (supportedStereoPairVersions != v10)
  {
    v12 = objc_autoreleasePoolPush();
    v13 = selfCopy;
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

  productInfo = [MEMORY[0x277D0F8E8] productInfo];
  productClass = [productInfo productClass];

  if (productClass == 6 && ([MEMORY[0x277D0F8E8] productInfo], v20 = objc_claimAutoreleasedReturnValue(), v21 = objc_msgSend(v20, "productColor"), v20, -[HMDAppleMediaAccessory productColor](selfCopy, "productColor") != v21))
  {
    v22 = objc_autoreleasePoolPush();
    v23 = selfCopy;
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

  else if (supportedStereoPairVersions == v10)
  {
    goto LABEL_18;
  }

  home = [(HMDAccessory *)selfCopy home];
  backingStore = [home backingStore];
  v30 = +[HMDBackingStoreTransactionOptions defaultPreferencesOptions];
  v31 = [backingStore transaction:@"Update Product Information" options:v30];

  [v31 add:v9 withMessage:0];
  [v31 run];

LABEL_18:
  v32 = *MEMORY[0x277D85DE8];
}

- (void)configureWithHome:(id)home msgDispatcher:(id)dispatcher configurationTracker:(id)tracker initialConfiguration:(BOOL)configuration
{
  configurationCopy = configuration;
  v160 = *MEMORY[0x277D85DE8];
  homeCopy = home;
  dispatcherCopy = dispatcher;
  trackerCopy = tracker;
  HMFUptime();
  v14 = v13;
  v130 = configurationCopy;
  v128 = trackerCopy;
  if (configurationCopy)
  {
    v15 = objc_autoreleasePoolPush();
    selfCopy = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      v18 = HMFGetLogIdentifier();
      uuid = [homeCopy uuid];
      uuid2 = [(HMDAccessory *)selfCopy uuid];
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
      v151 = uuid;
      v152 = 2114;
      v153 = @"accessoryUUID";
      v154 = 2112;
      v155 = uuid2;
      v156 = 2114;
      v157 = @"initialConfig";
      v158 = 2112;
      v159 = v21;
      _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_DEBUG, "%{public}@tag=%{public}@ desc=%@ %{public}@=%@ %{public}@=%@ %{public}@=%@ %{public}@=%@", buf, 0x70u);
    }

    objc_autoreleasePoolPop(v15);
    mEMORY[0x277D17DE8] = [MEMORY[0x277D17DE8] sharedInstance];
    v23 = objc_alloc(MEMORY[0x277D17DF8]);
    uuid3 = [homeCopy uuid];
    uuid4 = [(HMDAccessory *)selfCopy uuid];
    v26 = [MEMORY[0x277CCABB0] numberWithBool:1];
    v27 = HMDTaggedLoggingCreateDictionary();
    v28 = [v23 initWithTag:@"accessoryConfigureStart" data:{v27, @"state", @"start", @"homeUUID", uuid3, @"accessoryUUID", uuid4, @"initialConfig", v26}];
    currentTagProcessorList = [MEMORY[0x277D0F770] currentTagProcessorList];
    [mEMORY[0x277D17DE8] submitTaggedEvent:v28 processorList:currentTagProcessorList];

    trackerCopy = v128;
  }

  homeManager = [homeCopy homeManager];
  if (trackerCopy)
  {
    dispatch_group_enter(trackerCopy);
  }

  if ([(HMDAppleMediaAccessory *)self isHomePod])
  {
    v30 = [[HMDDoorbellChimeProfile alloc] initWithAppleMediaAccessory:self];
    [(NSMutableSet *)self->super.super._accessoryProfiles addObject:v30];
  }

  v137.receiver = self;
  v137.super_class = HMDAppleMediaAccessory;
  [(HMDAccessory *)&v137 configureWithHome:homeCopy msgDispatcher:dispatcherCopy configurationTracker:trackerCopy initialConfiguration:v130];
  [(HMDAppleMediaAccessory *)self configureAppleMediaAccessoryMessengerWithFactory:self];
  wifiManager = [homeCopy wifiManager];
  [(HMDAppleMediaAccessory *)self setWifiManager:wifiManager];

  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [(HMDAppleMediaAccessory *)self setUserDefaults:standardUserDefaults];

  userDefaults = [(HMDAppleMediaAccessory *)self userDefaults];
  v34 = [userDefaults BOOLForKey:@"mi.hh2"];

  v35 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v37 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
  {
    v38 = HMFGetLogIdentifier();
    v39 = HMFBooleanToString();
    settingsController = [(HMDAppleMediaAccessory *)selfCopy2 settingsController];
    *buf = 138543874;
    v139 = v38;
    v140 = 2112;
    v141 = v39;
    v142 = 2112;
    v143 = settingsController;
    _os_log_impl(&dword_2531F8000, v37, OS_LOG_TYPE_INFO, "%{public}@hh2SettingsMigrationEnabled: %@, self.settingsController: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v35);
  if ((v34 & 1) == 0)
  {
    settingsController2 = [(HMDAppleMediaAccessory *)selfCopy2 settingsController];

    if (!settingsController2)
    {
      v42 = [HMDAccessorySettingsController alloc];
      workQueue = [(HMDAccessory *)selfCopy2 workQueue];
      uuid5 = [(HMDAccessory *)selfCopy2 uuid];
      v45 = *MEMORY[0x277CCECE8];
      v46 = +[HMDMetricsManager sharedLogEventSubmitter];
      v47 = [(HMDAccessorySettingsController *)v42 initWithQueue:workQueue delegate:selfCopy2 dataSource:selfCopy2 parentUUID:uuid5 codingKey:v45 logEventSubmitter:v46];
      [(HMDAppleMediaAccessory *)selfCopy2 setSettingsController:v47];
    }
  }

  remoteLoginHandler = [(HMDAppleMediaAccessory *)selfCopy2 remoteLoginHandler];
  workQueue2 = [(HMDAccessory *)selfCopy2 workQueue];
  eventStoreReadHandle = [(HMDAppleMediaAccessory *)selfCopy2 eventStoreReadHandle];
  eventForwarder = [(HMDAppleMediaAccessory *)selfCopy2 eventForwarder];
  [remoteLoginHandler configureWithWorkQueue:workQueue2 messageDispatcher:dispatcherCopy eventStoreReadHandle:eventStoreReadHandle eventForwarder:eventForwarder];

  dependencyFactory = [(HMDAppleMediaAccessory *)selfCopy2 dependencyFactory];
  v53 = [dependencyFactory symptomsHandlerForAccessory:selfCopy2];
  [(HMDAppleMediaAccessory *)selfCopy2 setSymptomsHandler:v53];

  symptomsHandler = [(HMDAppleMediaAccessory *)selfCopy2 symptomsHandler];
  [symptomsHandler configure];

  [(HMDAppleMediaAccessory *)selfCopy2 configureAudioDestinationManager];
  device = selfCopy2->_device;
  selfCopy2->_device = 0;

  identifier = [(HMDAccessory *)selfCopy2 identifier];
  deviceMediaRouteIdentifierFactory = [(HMDAppleMediaAccessory *)selfCopy2 deviceMediaRouteIdentifierFactory];
  v58 = deviceMediaRouteIdentifierFactory[2]();
  LODWORD(eventForwarder) = [identifier isEqual:v58];

  if (!eventForwarder)
  {
    [(HMDAppleMediaAccessory *)selfCopy2 startMonitoringReachability];
    __bootstrapSupportedStereoPairVersions(selfCopy2);
    goto LABEL_50;
  }

  logger = selfCopy2->_logger;
  if (os_signpost_enabled(logger))
  {
    v60 = logger;
    uuid6 = [(HMDAccessory *)selfCopy2 uuid];
    *buf = 138412290;
    v139 = uuid6;
    _os_signpost_emit_with_name_impl(&dword_2531F8000, v60, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "ConfigureCurrentAccessory", "accessoryUUID=%{signpost.description:attribute}@ ", buf, 0xCu);
  }

  notificationCenter = [(HMDMediaAccessory *)selfCopy2 notificationCenter];
  [notificationCenter postNotificationName:@"HMDAppleMediaAccessoryCurrentAccessoryAddedNotification" object:selfCopy2];

  deviceController = selfCopy2->_deviceController;
  if (!deviceController || ([(HMDDeviceController *)deviceController identifier], v64 = objc_claimAutoreleasedReturnValue(), v64, v64))
  {
    v65 = objc_autoreleasePoolPush();
    v66 = selfCopy2;
    v67 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v67, OS_LOG_TYPE_INFO))
    {
      v68 = HMFGetLogIdentifier();
      *buf = 138543362;
      v139 = v68;
      _os_log_impl(&dword_2531F8000, v67, OS_LOG_TYPE_INFO, "%{public}@Setting up device controller for ourselves", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v65);
    dependencyFactory2 = [(HMDAppleMediaAccessory *)v66 dependencyFactory];
    deviceController = [dependencyFactory2 deviceController];
    v71 = selfCopy2->_deviceController;
    selfCopy2->_deviceController = deviceController;
  }

  softwareUpdateManager = [homeManager softwareUpdateManager];
  [softwareUpdateManager setAccessory:selfCopy2];

  dependencyFactory3 = [(HMDAppleMediaAccessory *)selfCopy2 dependencyFactory];
  v74 = [dependencyFactory3 accountManagerForAccessory:selfCopy2];
  device = [v74 device];

  if (device)
  {
    if ([(HMDAppleMediaAccessory *)selfCopy2 shouldUpdateWithDevice:device initialConfiguration:v130])
    {
      [(HMDAppleMediaAccessory *)selfCopy2 updateWithDevice:device];
    }

    notificationCenter2 = [(HMDMediaAccessory *)selfCopy2 notificationCenter];
    [notificationCenter2 removeObserver:selfCopy2 name:@"HMDDeviceUpdatedNotification" object:0];

    notificationCenter3 = [(HMDMediaAccessory *)selfCopy2 notificationCenter];
    [notificationCenter3 addObserver:selfCopy2 selector:sel_handleCurrentDeviceUpdated_ name:@"HMDDeviceUpdatedNotification" object:device];

    remoteLoginHandler2 = [(HMDAppleMediaAccessory *)selfCopy2 remoteLoginHandler];
    [remoteLoginHandler2 _registerForUsernameUpdates];

    rpIdentity = [device rpIdentity];
    deviceIRK = [rpIdentity deviceIRK];
    data = [deviceIRK data];

    if (data)
    {
      [(HMDAppleMediaAccessory *)selfCopy2 postDeviceIRKIfDifferent:data];
    }
  }

  pairingIdentity = [(HMDAppleMediaAccessory *)selfCopy2 pairingIdentity];

  v83 = selfCopy2;
  if (!pairingIdentity)
  {
    goto LABEL_36;
  }

  if ([(HMDAppleMediaAccessory *)selfCopy2 isCurrentAccessory])
  {
    pairingIdentity2 = [(HMDAppleMediaAccessory *)selfCopy2 pairingIdentity];
    privateKey = [pairingIdentity2 privateKey];

    if (!privateKey)
    {
      v86 = objc_autoreleasePoolPush();
      v87 = selfCopy2;
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

  [(HMDAppleMediaAccessory *)selfCopy2 _fixCloudKeyIfNeeded];
LABEL_37:
  [(HMDAppleMediaAccessory *)selfCopy2 updateProductInformation];
  softwareVersion = [(HMDAppleMediaAccessory *)selfCopy2 softwareVersion];
  productInfo = [MEMORY[0x277D0F8E8] productInfo];
  softwareVersion2 = [productInfo softwareVersion];
  v93 = HMFEqualObjects();

  if ((v93 & 1) == 0)
  {
    workQueue3 = [(HMDAccessory *)selfCopy2 workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __100__HMDAppleMediaAccessory_configureWithHome_msgDispatcher_configurationTracker_initialConfiguration___block_invoke;
    block[3] = &unk_279735D00;
    block[4] = selfCopy2;
    dispatch_async(workQueue3, block);
  }

  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    productInfo2 = [MEMORY[0x277D0F8E8] productInfo];
    productClass = [productInfo2 productClass];

    if (productClass == 6)
    {
      notificationCenter4 = [(HMDMediaAccessory *)selfCopy2 notificationCenter];
      v98 = *MEMORY[0x277D0F768];
      [notificationCenter4 removeObserver:selfCopy2 name:*MEMORY[0x277D0F768] object:0];

      notificationCenter5 = [(HMDMediaAccessory *)selfCopy2 notificationCenter];
      [notificationCenter5 addObserver:selfCopy2 selector:sel_handleCurrentNetworkChangedNotification_ name:v98 object:0];

      [(HMDAppleMediaAccessory *)selfCopy2 updateWiFiNetworkInfo];
    }
  }

  if ([(HMDAppleMediaAccessory *)selfCopy2 supportsTargetControl])
  {
    targetControlManager = [(HMDAppleMediaAccessory *)selfCopy2 targetControlManager];

    if (!targetControlManager)
    {
      v101 = [[HMDTargetControlManager alloc] initWithTargetAccessory:selfCopy2 controllers:0];
      [(HMDAppleMediaAccessory *)selfCopy2 setTargetControlManager:v101];
    }
  }

  [(HMDAppleMediaAccessory *)selfCopy2 _fetchMultiUserLanguages];
  notificationCenter6 = [(HMDMediaAccessory *)selfCopy2 notificationCenter];
  [notificationCenter6 removeObserver:selfCopy2 name:@"HMDHomeUserRemovedNotification" object:0];

  notificationCenter7 = [(HMDMediaAccessory *)selfCopy2 notificationCenter];
  [notificationCenter7 addObserver:selfCopy2 selector:sel_handleHomeUserRemovedNotification_ name:@"HMDHomeUserRemovedNotification" object:homeCopy];

  v104 = [HMDAppleMediaAccessoryMetricsDispatcher alloc];
  logEventSubmitter = [homeCopy logEventSubmitter];
  dailyScheduler = [homeCopy dailyScheduler];
  v107 = [(HMDAppleMediaAccessoryMetricsDispatcher *)v104 initWithDataSource:selfCopy2 logEventSubmitter:logEventSubmitter dailyScheduler:dailyScheduler];
  [(HMDAppleMediaAccessory *)selfCopy2 setMetricsDispatcher:v107];

  metricsDispatcher = [(HMDAppleMediaAccessory *)selfCopy2 metricsDispatcher];
  [metricsDispatcher registerForDailySetRoomLogEvents];

  if (([homeCopy isMultiUserEnabled] & 1) == 0)
  {
    [homeCopy enableMultiUser];
  }

  notificationCenter8 = [(HMDMediaAccessory *)selfCopy2 notificationCenter];
  [notificationCenter8 addObserver:selfCopy2 selector:sel_handleCurrentDeviceIRKUpdated_ name:@"HMDAppleAccountManagerFetchedCurrentDeviceIRK" object:0];

  v110 = selfCopy2->_logger;
  if (os_signpost_enabled(v110))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_2531F8000, v110, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "ConfigureCurrentAccessory", "", buf, 2u);
  }

LABEL_50:
  if (_os_feature_enabled_impl() && [(HMDAppleMediaAccessory *)selfCopy2 isCurrentAccessory])
  {
    v111 = [HMDLegacyAccessorySettingsAdaptor alloc];
    workQueue4 = [(HMDAccessory *)selfCopy2 workQueue];
    uuid7 = [homeCopy uuid];
    uuid8 = [(HMDAccessory *)selfCopy2 uuid];
    currentAccessorySettingsController = [(HMDAppleMediaAccessory *)selfCopy2 currentAccessorySettingsController];
    localOnlySubscriptionProvider = [homeManager localOnlySubscriptionProvider];
    v117 = [(HMDLegacyAccessorySettingsAdaptor *)v111 initWithQueue:workQueue4 homeUUID:uuid7 accessoryUUID:uuid8 settingsController:currentAccessorySettingsController subscriptionProvider:localOnlySubscriptionProvider];

    [(HMDLegacyAccessorySettingsAdaptor *)v117 startup];
  }

  else
  {
    v117 = 0;
  }

  settingsController3 = [(HMDAppleMediaAccessory *)selfCopy2 settingsController];
  [settingsController3 configureIsSettingOwner:-[HMDAppleMediaAccessory isCurrentAccessory](selfCopy2 home:"isCurrentAccessory") legacySettingsAdaptor:{homeCopy, v117}];

  settingsController4 = [(HMDAppleMediaAccessory *)selfCopy2 settingsController];
  messageHandler = [settingsController4 messageHandler];
  [messageHandler configureWithMessageDispatcher:dispatcherCopy];

  sleepWakeStateController = [(HMDAppleMediaAccessory *)selfCopy2 sleepWakeStateController];
  home = [(HMDAccessory *)selfCopy2 home];
  workQueue5 = [(HMDAccessory *)selfCopy2 workQueue];
  [sleepWakeStateController configureWithHome:home messageDispatcher:dispatcherCopy workQueue:workQueue5];

  [(HMDAppleMediaAccessory *)selfCopy2 registerForPublishingNotifications];
  [(HMDAppleMediaAccessory *)selfCopy2 _configureGroupParticipantLocalDataStorageWithHome:homeCopy];
  [(HMDAppleMediaAccessory *)selfCopy2 createOrUpdateSoftwareUpdateEventProviderIfNecessary];
  [(HMDAppleMediaAccessory *)selfCopy2 createSoftwareUpdateEventListenerIfNecessary];
  [(HMDDeviceController *)selfCopy2->_deviceController setDelegate:selfCopy2];
  workQueue6 = [(HMDAccessory *)selfCopy2 workQueue];
  v131[0] = MEMORY[0x277D85DD0];
  v131[1] = 3221225472;
  v131[2] = __100__HMDAppleMediaAccessory_configureWithHome_msgDispatcher_configurationTracker_initialConfiguration___block_invoke_370;
  v131[3] = &unk_279729FD8;
  v135 = v130;
  v134 = v14;
  v131[4] = selfCopy2;
  v132 = homeCopy;
  v133 = v128;
  v125 = v128;
  v126 = homeCopy;
  dispatch_async(workQueue6, v131);

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

- (void)_configureGroupParticipantLocalDataStorageWithHome:(id)home
{
  v28 = *MEMORY[0x277D85DE8];
  homeCopy = home;
  if ([(HMDAppleMediaAccessory *)self isCurrentAccessory])
  {
    if (isFeatureHomeTheaterQFAEnabledForTests && ([isFeatureHomeTheaterQFAEnabledForTests BOOLValue] & 1) != 0)
    {
      homeManager = [homeCopy homeManager];
      msgDispatcher = [(HMDAccessory *)self msgDispatcher];
      mediaGroupParticipantDataLocalStorage = [homeManager mediaGroupParticipantDataLocalStorage];
      v8 = mediaGroupParticipantDataLocalStorage;
      if (homeCopy && msgDispatcher && mediaGroupParticipantDataLocalStorage)
      {
        [mediaGroupParticipantDataLocalStorage configureWithHome:homeCopy messageDispatcher:msgDispatcher];
      }

      else
      {
        v13 = objc_autoreleasePoolPush();
        selfCopy = self;
        v15 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          v16 = HMFGetLogIdentifier();
          v18 = 138544386;
          v19 = v16;
          v20 = 2112;
          v21 = homeCopy;
          v22 = 2112;
          v23 = msgDispatcher;
          v24 = 2112;
          v25 = v8;
          v26 = 2112;
          v27 = homeManager;
          _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@Failed to configure groups participant local data storage with dependencies home: %@ messageDispatcher: %@ dataStorage: %@ homeManager: %@", &v18, 0x34u);
        }

        objc_autoreleasePoolPop(v13);
      }
    }

    else
    {
      v9 = objc_autoreleasePoolPush();
      selfCopy2 = self;
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
  accessoryProfiles = [(HMDAccessory *)self accessoryProfiles];
  v3 = [accessoryProfiles countByEnumeratingWithState:&v12 objects:v16 count:16];
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
        objc_enumerationMutation(accessoryProfiles);
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
        v4 = [accessoryProfiles countByEnumeratingWithState:&v12 objects:v16 count:16];
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

- (BOOL)_shouldFilterAccessoryProfileForEntitledClients:(id)clients
{
  clientsCopy = clients;
  if ([(HMDAppleMediaAccessory *)self isCurrentAccessory]|| (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v7.receiver = self;
    v7.super_class = HMDAppleMediaAccessory;
    v5 = [(HMDAccessory *)&v7 _shouldFilterAccessoryProfileForEntitledClients:clientsCopy];
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (BOOL)_shouldFilterAccessoryProfileForUnentitledClients:(id)clients
{
  clientsCopy = clients;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = HMDAppleMediaAccessory;
    v5 = [(HMDMediaAccessory *)&v7 _shouldFilterAccessoryProfileForUnentitledClients:clientsCopy];
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
  home = [(HMDAccessory *)self home];
  v17.receiver = self;
  v17.super_class = HMDAppleMediaAccessory;
  [(HMDAccessory *)&v17 _registerForMessages];
  msgDispatcher = [(HMDAccessory *)self msgDispatcher];
  v5 = [HMDXPCMessagePolicy policyWithEntitlements:5];
  v20[0] = v5;
  v6 = +[HMDRemoteMessagePolicy defaultSecurePolicy];
  v20[1] = v6;
  v7 = [HMDUserMessagePolicy userMessagePolicyWithHome:home userPrivilege:3 remoteAccessRequired:0];
  v20[2] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:3];

  [msgDispatcher registerForMessage:*MEMORY[0x277CCEAB8] receiver:self policies:v8 selector:sel_handleFetchManagedConfigurationProfiles_];
  [msgDispatcher registerForMessage:*MEMORY[0x277CCECB8] receiver:self policies:v8 selector:sel_handleRemoveManagedConfigurationProfile_];
  [msgDispatcher registerForMessage:*MEMORY[0x277CCEB18] receiver:self policies:v8 selector:sel_handleInstallManagedConfigurationProfile_];

  v9 = [HMDXPCMessagePolicy policyWithEntitlements:5];
  v19[0] = v9;
  v10 = +[HMDRemoteMessagePolicy defaultSecurePolicy];
  v19[1] = v10;
  v11 = [HMDUserMessagePolicy userMessagePolicyWithHome:home userPrivilege:4 remoteAccessRequired:0];
  v19[2] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:3];

  [msgDispatcher registerForMessage:*MEMORY[0x277CD1070] receiver:self policies:v12 selector:sel__fetchAvailableUpdate_];
  [msgDispatcher registerForMessage:*MEMORY[0x277CD1080] receiver:self policies:v12 selector:sel__startUpdate_];
  [msgDispatcher registerForMessage:*MEMORY[0x277CCEA08] receiver:self policies:v12 selector:sel_handleDeleteSiriHistoryRequest_];
  [msgDispatcher registerForMessage:*MEMORY[0x277CCF0D0] receiver:self policies:v12 selector:sel_handleUpdatePreferredMediaUser_];
  [msgDispatcher registerForMessage:*MEMORY[0x277CCEF08] receiver:self policies:v12 selector:sel_handleSoftwareUpdateV2Scan_];
  [msgDispatcher registerForMessage:*MEMORY[0x277CCECF0] receiver:self policies:v12 selector:sel__handleScanNetworksMessage_];
  [msgDispatcher registerForMessage:*MEMORY[0x277CCEB30] receiver:self policies:v12 selector:sel__handleAssociateToNetworkMessage_];
  [msgDispatcher registerForMessage:*MEMORY[0x277CCF118] receiver:self policies:v12 selector:sel__handleQueryNetworkStatusMessage_];

  if (isInternalBuild())
  {
    v13 = [HMDUserMessagePolicy userMessagePolicyWithHome:home userPrivilege:0 remoteAccessRequired:0];
    v14 = [HMDXPCMessagePolicy policyWithEntitlements:13];
    v18[0] = v14;
    v18[1] = v13;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:2];

    [msgDispatcher registerForMessage:*MEMORY[0x277CCF0A8] receiver:self policies:v15 selector:sel__handleTriggerPairingIdentityUpdateNotification_];
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (NSString)description
{
  v16 = MEMORY[0x277CCACA8];
  v15 = objc_opt_class();
  uuid = [(HMDAccessory *)self uuid];
  uUIDString = [uuid UUIDString];
  name = [(HMDMediaAccessory *)self name];
  identifier = [(HMDAccessory *)self identifier];
  category = [(HMDAccessory *)self category];
  name2 = [category name];
  softwareVersion = [(HMDAppleMediaAccessory *)self softwareVersion];
  softwareUpdate = [(HMDAccessory *)self softwareUpdate];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDAppleMediaAccessory supportedStereoPairVersions](self, "supportedStereoPairVersions")}];
  if ([(HMDAppleMediaAccessory *)self isCurrentAccessory])
  {
    v6 = @" isCurrent = YES,";
  }

  else
  {
    v6 = &stru_286509E58;
  }

  device = [(HMDAppleMediaAccessory *)self device];
  home = [(HMDAccessory *)self home];
  name3 = [home name];
  room = [(HMDAccessory *)self room];
  uuid2 = [room uuid];
  v17 = [v16 stringWithFormat:@"<%@, UUID = %@, Name = %@, Identifier = %@, Category = %@, Version = %@, Update = %@, Stereo Pair Versions = %@, %@ Device = %@, Home = %@, RoomUUID = %@>", v15, uUIDString, name, identifier, name2, softwareVersion, softwareUpdate, v5, v6, device, name3, uuid2];

  return v17;
}

- (void)dealloc
{
  notificationCenter = [(HMDMediaAccessory *)self notificationCenter];
  [notificationCenter removeObserver:self];

  targetControlManager = [(HMDAppleMediaAccessory *)self targetControlManager];
  [targetControlManager invalidate];

  [(HMDAppleMediaAccessory *)self setTargetControlManager:0];
  v5.receiver = self;
  v5.super_class = HMDAppleMediaAccessory;
  [(HMDAccessory *)&v5 dealloc];
}

- (HMDAppleMediaAccessory)initWithDeviceController:(id)controller deviceIdentifierFactory:(id)factory
{
  controllerCopy = controller;
  factoryCopy = factory;
  v9 = [(HMDAppleMediaAccessory *)self init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_deviceController, controller);
    v11 = _Block_copy(factoryCopy);
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
    uuid = [(HMDAccessory *)v2 uuid];
    v11 = [(HMDAppleMediaAccessorySleepWakeStateController *)v9 initWithAccessoryUUID:uuid dataSource:v2];
    sleepWakeStateController = v2->_sleepWakeStateController;
    v2->_sleepWakeStateController = v11;

    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    hostedAccessories = v2->_hostedAccessories;
    v2->_hostedAccessories = weakObjectsHashTable;

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

- (HMDAppleMediaAccessory)initWithDependencyFactory:(id)factory deviceMediaRouteIdentifierFactory:(id)identifierFactory
{
  factoryCopy = factory;
  identifierFactoryCopy = identifierFactory;
  v9 = [(HMDAppleMediaAccessory *)self init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_dependencyFactory, factory);
    if (identifierFactoryCopy)
    {
      v11 = _Block_copy(identifierFactoryCopy);
      deviceMediaRouteIdentifierFactory = v10->_deviceMediaRouteIdentifierFactory;
      v10->_deviceMediaRouteIdentifierFactory = v11;
    }
  }

  return v10;
}

- (HMDAppleMediaAccessory)initWithTransaction:(id)transaction home:(id)home dependencyFactory:(id)factory
{
  v60 = *MEMORY[0x277D85DE8];
  transactionCopy = transaction;
  homeCopy = home;
  factoryCopy = factory;
  v12 = transactionCopy;
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
    deviceUUID = [v14 deviceUUID];

    if (deviceUUID)
    {
      v16 = objc_alloc(MEMORY[0x277CCAD78]);
      deviceUUID2 = [v14 deviceUUID];
      selfCopy = [v16 initWithUUIDString:deviceUUID2];

      deviceUUID = [factoryCopy deviceControllerWithDeviceIdentifier:selfCopy];
    }

    device = [v14 device];

    if (device)
    {
      if (!deviceUUID)
      {
        device2 = [v14 device];
        deviceUUID = [factoryCopy deviceControllerWithDevice:device2];
      }

      device3 = [v14 device];
      [deviceUUID updateWithDevice:device3 completionHandler:0];
    }

    if (!deviceUUID)
    {
      v21 = objc_autoreleasePoolPush();
      selfCopy = self;
      v22 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        HMFGetLogIdentifier();
        v55 = homeCopy;
        v24 = v23 = factoryCopy;
        *buf = 138543362;
        v59 = v24;
        _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_INFO, "%{public}@Unable to determine device", buf, 0xCu);

        factoryCopy = v23;
        homeCopy = v55;
      }

      objc_autoreleasePoolPop(v21);
    }

    v57.receiver = self;
    v57.super_class = HMDAppleMediaAccessory;
    v25 = [(HMDMediaAccessory *)&v57 initWithTransaction:v12 home:homeCopy];
    if (v25)
    {
      v56 = homeCopy;
      v26 = HMFGetOSLogHandle();
      logger = v25->_logger;
      v25->_logger = v26;

      v28 = objc_alloc_init(HMDAppleMediaAccessoryModelDataSource);
      modelDataSource = v25->_modelDataSource;
      v25->_modelDataSource = v28;

      objc_storeStrong(&v25->_deviceController, deviceUUID);
      softwareVersion = [v14 softwareVersion];
      softwareVersion = v25->_softwareVersion;
      v25->_softwareVersion = softwareVersion;

      pairingIdentity = [v14 pairingIdentity];
      pairingIdentity = v25->_pairingIdentity;
      v25->_pairingIdentity = pairingIdentity;

      settingsConnectionFactory = v25->_settingsConnectionFactory;
      v25->_settingsConnectionFactory = &__block_literal_global_94821;

      deviceMediaRouteIdentifierFactory = v25->_deviceMediaRouteIdentifierFactory;
      v25->_deviceMediaRouteIdentifierFactory = &__block_literal_global_279_94822;

      idsIdentifier = [v14 idsIdentifier];
      idsIdentifier2 = idsIdentifier;
      if (!idsIdentifier)
      {
        selfCopy = [v14 device];
        idsIdentifier2 = [(HMDAppleMediaAccessory *)selfCopy idsIdentifier];
      }

      v38 = factoryCopy;
      objc_storeStrong(&v25->_idsIdentifier, idsIdentifier2);
      if (!idsIdentifier)
      {
      }

      loggedInAccount = [v14 loggedInAccount];
      v40 = [[HMDRemoteLoginHandler alloc] initWithAccessory:v25 loggedInAccountData:loggedInAccount];
      remoteLoginHandler = v25->_remoteLoginHandler;
      v25->_remoteLoginHandler = v40;

      supportedStereoPairVersions = [v14 supportedStereoPairVersions];
      v25->_supportedStereoPairVersions = [supportedStereoPairVersions unsignedIntegerValue];

      v43 = [HMDAppleMediaAccessorySleepWakeStateController alloc];
      uuid = [(HMDAccessory *)v25 uuid];
      v45 = [(HMDAppleMediaAccessorySleepWakeStateController *)v43 initWithAccessoryUUID:uuid dataSource:v25];
      sleepWakeStateController = v25->_sleepWakeStateController;
      v25->_sleepWakeStateController = v45;

      __bootstrapSupportedStereoPairVersions(v25);
      productColor = [v14 productColor];
      v25->_productColor = [productColor unsignedIntegerValue];

      objc_storeStrong(&v25->_dependencyFactory, factory);
      factoryCopy = v38;
      homeCopy = v56;
    }

    selfCopy2 = v25;

    v49 = selfCopy2;
  }

  else
  {
    v50 = objc_autoreleasePoolPush();
    selfCopy2 = self;
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

- (HMDAppleMediaAccessory)initWithTransaction:(id)transaction home:(id)home
{
  homeCopy = home;
  transactionCopy = transaction;
  v8 = objc_alloc_init(HMDAppleMediaAccessoryDependencyFactory);
  v9 = [(HMDAppleMediaAccessory *)self initWithTransaction:transactionCopy home:homeCopy dependencyFactory:v8];

  return v9;
}

- (id)assistantObject
{
  v88 = *MEMORY[0x277D85DE8];
  v77.receiver = self;
  v77.super_class = HMDAppleMediaAccessory;
  assistantObject = [(HMDMediaAccessory *)&v77 assistantObject];
  v4 = [assistantObject mutableCopy];

  category = [(HMDAccessory *)self category];
  categoryType = [category categoryType];
  v7 = [categoryType isEqual:*MEMORY[0x277CCE870]];

  if (v7)
  {
    v8 = MEMORY[0x277D481C0];
    v9 = MEMORY[0x277D48270];
    goto LABEL_5;
  }

  categoryType2 = [category categoryType];
  v11 = [categoryType2 isEqual:*MEMORY[0x277CCE8B0]];

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
    v87 = category;
    _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_INFO, "%{public}@Apple media accessory with invalid accessory category: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v16);
  v12 = 0;
  v62 = 0;
LABEL_13:
  home = [(HMDAccessory *)self home];
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  mediaSystems = [home mediaSystems];
  v21 = [mediaSystems copy];

  v22 = [v21 countByEnumeratingWithState:&v73 objects:v81 count:16];
  v64 = home;
  v65 = v4;
  v63 = category;
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
        accessories = [v27 accessories];
        v29 = [accessories containsObject:self];

        if (v29)
        {
          name = [v27 name];
          urlString = [v27 urlString];
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

    urlString = 0;
    name = 0;
LABEL_23:
    v12 = v24;
    home = v64;
    v4 = v65;
  }

  else
  {
    urlString = 0;
    name = 0;
  }

  audioDestinationController = [(HMDAppleMediaAccessory *)self audioDestinationController];
  data = [audioDestinationController data];
  destinationIdentifier = [data destinationIdentifier];

  if (destinationIdentifier)
  {
    name2 = [(HMDMediaAccessory *)self name];

    urlString2 = [audioDestinationController urlString];

    urlString = urlString2;
    name = name2;
  }

  audioDestination = [(HMDAppleMediaAccessory *)self audioDestination];
  v38 = audioDestination;
  if (!name && audioDestination)
  {
    v67 = audioDestination;
    v68 = urlString;
    v59 = data;
    v60 = audioDestinationController;
    v61 = v12;
    accessories2 = [home accessories];
    v40 = [accessories2 na_map:&__block_literal_global_115782];

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
          audioDestinationController2 = [v46 audioDestinationController];
          data2 = [audioDestinationController2 data];
          destinationIdentifier2 = [data2 destinationIdentifier];
          uniqueIdentifier = [v67 uniqueIdentifier];
          v51 = [destinationIdentifier2 hmf_isEqualToUUID:uniqueIdentifier];

          if (v51)
          {
            name3 = [v46 name];

            urlString3 = [audioDestinationController2 urlString];

            v68 = urlString3;
            v43 = name3;
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

    home = v64;
    v4 = v65;
    audioDestinationController = v60;
    v12 = v61;
    v38 = v67;
    urlString = v68;
    data = v59;
    name = v43;
  }

  if (name && urlString)
  {
    v79 = name;
    v54 = [MEMORY[0x277CBEA60] arrayWithObjects:&v79 count:1];
    [v4 setObject:v54 forKey:@"objectGroups"];

    v78 = urlString;
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
  settingsController = [(HMDAppleMediaAccessory *)self settingsController];
  languageValueList = [settingsController languageValueList];
  v4 = languageValueList;
  if (languageValueList)
  {
    v5 = languageValueList;
  }

  else
  {
    v5 = MEMORY[0x277CBEBF8];
  }

  v6 = v5;

  return v5;
}

- (id)createAppleMediaAccessoryMessengerWithIdentifier:(id)identifier messageDispatcher:(id)dispatcher router:(id)router localHandler:(id)handler
{
  handlerCopy = handler;
  routerCopy = router;
  dispatcherCopy = dispatcher;
  identifierCopy = identifier;
  v13 = [[HMDAppleMediaAccessoryMessenger alloc] initWithIdentifier:identifierCopy messageDispatcher:dispatcherCopy router:routerCopy localHandler:handlerCopy];

  return v13;
}

- (void)configureAppleMediaAccessoryMessengerWithFactory:(id)factory
{
  v22 = *MEMORY[0x277D85DE8];
  factoryCopy = factory;
  uuid = [(HMDAccessory *)self uuid];
  msgDispatcher = [(HMDAccessory *)self msgDispatcher];
  home = [(HMDAccessory *)self home];
  if (!uuid)
  {
    _HMFPreconditionFailure();
LABEL_10:
    _HMFPreconditionFailure();
  }

  if (!msgDispatcher)
  {
    goto LABEL_10;
  }

  v8 = home;
  if (home)
  {
    v9 = [[HMDAppleMediaAccessoryMessageRouter alloc] initWithIdentifier:uuid messageDispatcher:msgDispatcher];
    [(HMDAppleMediaAccessoryMessageRouter *)v9 setDataSource:self];
    v10 = [HMDAssistantSettingsConnection alloc];
    defaultScheduler = [MEMORY[0x277D0F8F0] defaultScheduler];
    v12 = [(HMDAssistantSettingsConnection *)v10 initWithScheduler:defaultScheduler];

    [(HMDAssistantSettingsConnection *)v12 setDataSource:v12];
    v13 = [[HMDAppleMediaAccessoryLocalMessageHandler alloc] initWithIdentifier:uuid assistantSettingsConnection:v12];
    [(HMDAppleMediaAccessoryLocalMessageHandler *)v13 setDataSource:self];
    v14 = [factoryCopy createAppleMediaAccessoryMessengerWithIdentifier:uuid messageDispatcher:msgDispatcher router:v9 localHandler:v13];
    [v14 registerForMessagesWithHome:v8];
    [(HMDAppleMediaAccessory *)self setMessenger:v14];
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    selfCopy = self;
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
  home = [(HMDAccessory *)self home];
  isCurrentDevicePrimaryResident = [home isCurrentDevicePrimaryResident];

  return isCurrentDevicePrimaryResident;
}

@end