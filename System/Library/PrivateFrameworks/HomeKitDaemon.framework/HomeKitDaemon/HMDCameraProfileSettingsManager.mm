@interface HMDCameraProfileSettingsManager
+ (id)logCategory;
+ (id)zoneNameForHome:(id)home;
- (BOOL)_evaluateHomePresence;
- (BOOL)_migrateNotificationSettings:(id)settings;
- (BOOL)_migrateSettingsModel:(id)model;
- (BOOL)_setAnyUserAtHomeFromHomeActivityStateWithHome:(id)home;
- (BOOL)_setAnyUserAtHomeFromPresenceMonitorWithHome:(id)home;
- (BOOL)canModifyCameraSettings;
- (BOOL)canRevealCurrentAccessMode;
- (BOOL)isCameraManuallyDisabled;
- (BOOL)isCurrentDeviceConfirmedPrimaryResident;
- (BOOL)isRecordingEnabled;
- (HMDCameraBulletinNotificationManager)cameraBulletinNotificationManager;
- (HMDCameraProfileSettingsDerivedPropertiesModel)derivedPropertiesModel;
- (HMDCameraProfileSettingsManager)initWithHAPAccessory:(id)accessory home:(id)home workQueue:(id)queue;
- (HMDCameraProfileSettingsManager)initWithUniqueIdentifier:(id)identifier hapAccessory:(id)accessory workQueue:(id)queue coreDataAdapter:(id)adapter notificationCenter:(id)center bulletinBoard:(id)board characteristicsAvailabilityListener:(id)listener quotaCoordinator:(id)self0 featuresDataSource:(id)self1;
- (HMDCameraProfileSettingsModel)defaultSettingsModel;
- (HMDHAPAccessory)hapAccessory;
- (NSUUID)derivedPropertiesModelID;
- (_HMCameraUserSettings)currentSettings;
- (id)_coreDataUpdateCompletionForMessage:(id)message;
- (id)_createNotificationSettingsUsingSettingsModel:(id)model;
- (id)_isAnyUserAtHomeForPresence:(id)presence;
- (id)_payloadForSettings:(id)settings;
- (id)_settingsFromSettingsModel:(id)model;
- (id)_settingsModelForUpdate;
- (id)currentNotificationSettings;
- (id)currentSettingsModel;
- (id)doorbellInputEventCharacteristic;
- (id)logIdentifier;
- (id)manuallyDisabledCharacteristic;
- (id)messageDestination;
- (unint64_t)supportedFeatures;
- (void)_addAccessModeCharacteristicWriteRequestsToArray:(id)array currentAccessMode:(unint64_t)mode;
- (void)_addHomeKitCameraActiveCharacteristicWriteRequestToArray:(id)array currentAccessMode:(unint64_t)mode;
- (void)_addWriteRequestToArray:(id)array forCharacteristicWithType:(id)type ofServiceWithType:(id)withType value:(id)value;
- (void)_coordinateDoorbellServiceBulletinNotification:(id)notification;
- (void)_coordinateNotificationSettingsWithServiceBulletinNotification:(id)notification;
- (void)_coordinateSmartBulletinNotificationWithServiceBulletinNotification:(id)notification;
- (void)_enablePackageNotificationsOnSettings:(id)settings;
- (void)_handleBulletinBoardNotificationCommitMessage:(id)message;
- (void)_handleCameraSettingsDidChangeMessage:(id)message;
- (void)_handleCharacteristicWriteRequests:(id)requests completion:(id)completion;
- (void)_handleConnectedToAccessory;
- (void)_handleSynchronizeCloudStorageWithRecordingAccessModesMessage:(id)message;
- (void)_handleUpdateAccessModeChangeNotificationEnabledMessage:(id)message;
- (void)_handleUpdateAccessModeMessage:(id)message;
- (void)_handleUpdateActivityZonesMessage:(id)message;
- (void)_handleUpdateReachabilityEventNotificationEnabledMessage:(id)message;
- (void)_handleUpdateRecordingTriggerEventsMessage:(id)message;
- (void)_handleUpdatedDerivedProperties:(id)properties previousProperties:(id)previousProperties;
- (void)_handleUpdatedSettings:(id)settings previousSettings:(id)previousSettings;
- (void)_initializeNotificationSettingsUsingSettingsModel:(id)model;
- (void)_notifyClientsOfCurrentSettings;
- (void)_notifySubscribersOfUpdatedSettings:(id)settings previousSettings:(id)previousSettings;
- (void)_populateCurrentAccessModeFieldForDerivedProperties:(id)properties currentSettings:(id)settings userInitiated:(BOOL)initiated didUpdateField:(BOOL *)field;
- (void)_start;
- (void)_synchronizeCurrentAccessModeSettingToCameraWithCompletion:(id)completion;
- (void)_updateCameraBulletinNotificationManagerWithSettings:(id)settings forMessage:(id)message;
- (void)_updateDerivedPropertiesOnSettingsModel:(id)model;
- (void)_updateNotificationSettings:(id)settings forMessage:(id)message;
- (void)_writeInitialSettingsCharacteristicsToCamera;
- (void)configureWithMessageDispatcher:(id)dispatcher adminMessageDispatcher:(id)messageDispatcher deviceIsResidentCapable:(BOOL)capable;
- (void)dealloc;
- (void)disableRecordingAccessModes;
- (void)handleAccessoryConfiguredNotification:(id)notification;
- (void)handleBulletinNotificationEnableStateDidChangeNotification:(id)notification;
- (void)handleCharacteristicsValueUpdatedNotification:(id)notification;
- (void)handleHomePresenceEvaluatedNotification:(id)notification;
- (void)handlePrimaryResidentUpdatedNotification:(id)notification;
- (void)handleRecordingManagementServiceDidUpdateNotification:(id)notification;
- (void)handleUpdatedDerivedPropertiesModel:(id)model;
- (void)handleUpdatedSettingsModel:(id)model;
- (void)handleUserRemoteAccessDidChangeNotification:(id)notification;
- (void)homeActivityStateManager:(id)manager didMoveToState:(id)state;
- (void)listener:(id)listener didUpdateAvailableCharacteristics:(id)characteristics;
- (void)remove;
- (void)start;
- (void)synchronizeCloudStorageWithRecordingAccessModes;
- (void)synchronizeSettingsToCameraWithCompletion:(id)completion;
- (void)updateSettingsModelUsingBlock:(id)block completion:(id)completion;
@end

@implementation HMDCameraProfileSettingsManager

- (HMDHAPAccessory)hapAccessory
{
  WeakRetained = objc_loadWeakRetained(&self->_hapAccessory);

  return WeakRetained;
}

- (id)logIdentifier
{
  hapAccessory = [(HMDCameraProfileSettingsManager *)self hapAccessory];
  if (isInternalBuild())
  {
    v3 = MEMORY[0x277CCACA8];
    home = [hapAccessory home];
    name = [home name];
    name2 = [hapAccessory name];
    uuid = [hapAccessory uuid];
    uUIDString = [v3 stringWithFormat:@"%@/%@/%@", name, name2, uuid];
  }

  else
  {
    home = [hapAccessory uuid];
    uUIDString = [home UUIDString];
  }

  return uUIDString;
}

- (void)homeActivityStateManager:(id)manager didMoveToState:(id)state
{
  v5 = [(HMDCameraProfileSettingsManager *)self workQueue:manager];
  dispatch_assert_queue_V2(v5);

  if ([(HMDCameraProfileSettingsManager *)self isCurrentDeviceConfirmedPrimaryResident]&& [(HMDCameraProfileSettingsManager *)self _evaluateHomePresence])
  {
    currentSettingsModel = [(HMDCameraProfileSettingsManager *)self currentSettingsModel];
    [(HMDCameraProfileSettingsManager *)self _updateDerivedPropertiesModelWithSettingsModel:currentSettingsModel userInitiated:0 reason:@"Home Activity State Changed"];
  }
}

- (void)listener:(id)listener didUpdateAvailableCharacteristics:(id)characteristics
{
  v41 = *MEMORY[0x277D85DE8];
  listenerCopy = listener;
  characteristicsCopy = characteristics;
  workQueue = [(HMDCameraProfileSettingsManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543618;
    v38 = v11;
    v39 = 2112;
    v40 = characteristicsCopy;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Received updated available characteristics: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v12 = characteristicsCopy;
  v13 = [v12 countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v33;
    do
    {
      v16 = 0;
      v31 = v14;
      do
      {
        if (*v33 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v32 + 1) + 8 * v16);
        service = [v17 service];
        bulletinBoardNotification = [service bulletinBoardNotification];

        if (bulletinBoardNotification)
        {
          notificationCenter = [(HMDCameraProfileSettingsManager *)selfCopy notificationCenter];
          [notificationCenter removeObserver:selfCopy name:@"HMDBulletinBoardNotificationDidUpdateNotification" object:bulletinBoardNotification];

          notificationCenter2 = [(HMDCameraProfileSettingsManager *)selfCopy notificationCenter];
          [notificationCenter2 addObserver:selfCopy selector:sel_handleBulletinNotificationEnableStateDidChangeNotification_ name:@"HMDBulletinBoardNotificationDidUpdateNotification" object:bulletinBoardNotification];

          [(HMDCameraProfileSettingsManager *)selfCopy _coordinateNotificationSettingsWithServiceBulletinNotification:bulletinBoardNotification];
        }

        else
        {
          v22 = objc_autoreleasePoolPush();
          v23 = selfCopy;
          v24 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            HMFGetLogIdentifier();
            v25 = v15;
            v27 = v26 = v12;
            service2 = [v17 service];
            *buf = 138543618;
            v38 = v27;
            v39 = 2112;
            v40 = service2;
            _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_ERROR, "%{public}@Service unexpectedly does not have a bulletin board notification: %@", buf, 0x16u);

            v12 = v26;
            v15 = v25;
            v14 = v31;
          }

          objc_autoreleasePoolPop(v22);
        }

        ++v16;
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v14);
  }

  v29 = *MEMORY[0x277D85DE8];
}

- (void)updateSettingsModelUsingBlock:(id)block completion:(id)completion
{
  completionCopy = completion;
  blockCopy = block;
  workQueue = [(HMDCameraProfileSettingsManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  currentSettingsModel = [(HMDCameraProfileSettingsManager *)self currentSettingsModel];
  blockCopy[2](blockCopy, currentSettingsModel);

  hmbSetProperties = [currentSettingsModel hmbSetProperties];
  v10 = [hmbSetProperties count];

  if (v10)
  {
    coreDataAdapter = [(HMDCameraProfileSettingsManager *)self coreDataAdapter];
    [coreDataAdapter updateCameraProfileSettingsModel:currentSettingsModel completion:completionCopy];
  }

  else
  {
    completionCopy[2](completionCopy, 0);
  }
}

- (void)_handleUpdatedSettings:(id)settings previousSettings:(id)previousSettings
{
  v30 = *MEMORY[0x277D85DE8];
  settingsCopy = settings;
  previousSettingsCopy = previousSettings;
  workQueue = [(HMDCameraProfileSettingsManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v21 = 0;
  [settingsCopy hmbIsDifferentFromModel:previousSettingsCopy differingFields:&v21];
  v9 = v21;
  hmf_isEmpty = [v9 hmf_isEmpty];
  v11 = objc_autoreleasePoolPush();
  selfCopy = self;
  v13 = HMFGetOSLogHandle();
  v14 = v13;
  if (hmf_isEmpty)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543362;
      v23 = v15;
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_DEBUG, "%{public}@No changed fields for updated settings model", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v11);
  }

  else
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      v17 = [settingsCopy debugDescription];
      v18 = [previousSettingsCopy debugDescription];
      *buf = 138544130;
      v23 = v16;
      v24 = 2112;
      v25 = v17;
      v26 = 2112;
      v27 = v18;
      v28 = 2112;
      v29 = v9;
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, "%{public}@Handling updated settings model: %@, previous settings model: %@, changed fields: %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v11);
    [(HMDCameraProfileSettingsManager *)selfCopy _updateDerivedPropertiesOnSettingsModel:settingsCopy];
    [(HMDCameraProfileSettingsManager *)selfCopy _notifyClientsOfChangedSettingsModel:settingsCopy isInitialSettingsUpdate:0];
    if (-[HMDCameraProfileSettingsManager isCurrentDeviceConfirmedPrimaryResident](selfCopy, "isCurrentDeviceConfirmedPrimaryResident") && (([v9 containsObject:@"accessModeAtHomeField"] & 1) != 0 || objc_msgSend(v9, "containsObject:", @"accessModeNotAtHomeField")))
    {
      currentSettingsModel = [(HMDCameraProfileSettingsManager *)selfCopy currentSettingsModel];
      [(HMDCameraProfileSettingsManager *)selfCopy _updateDerivedPropertiesModelWithSettingsModel:currentSettingsModel userInitiated:1 reason:@"Settings model updated"];
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)_updateDerivedPropertiesOnSettingsModel:(id)model
{
  modelCopy = model;
  derivedPropertiesModel = [(HMDCameraProfileSettingsManager *)self derivedPropertiesModel];
  [modelCopy setCurrentAccessMode:{objc_msgSend(derivedPropertiesModel, "currentAccessMode")}];
  if ([derivedPropertiesModel currentAccessMode])
  {
    v5 = 0;
  }

  else
  {
    v5 = [derivedPropertiesModel currentAccessModeChangeReason] == 5;
  }

  [modelCopy setCameraManuallyDisabled:v5];
}

- (void)_handleUpdatedDerivedProperties:(id)properties previousProperties:(id)previousProperties
{
  v80 = *MEMORY[0x277D85DE8];
  propertiesCopy = properties;
  previousPropertiesCopy = previousProperties;
  workQueue = [(HMDCameraProfileSettingsManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v67 = 0;
  [propertiesCopy hmbIsDifferentFromModel:previousPropertiesCopy differingFields:&v67];
  v9 = v67;
  hmf_isEmpty = [(__CFString *)v9 hmf_isEmpty];
  v11 = objc_autoreleasePoolPush();
  selfCopy = self;
  v13 = HMFGetOSLogHandle();
  v14 = v13;
  if (hmf_isEmpty)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543362;
      v69 = v15;
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_DEBUG, "%{public}@No changed fields for updated derived properties model", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v11);
  }

  else
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      v17 = [propertiesCopy debugDescription];
      v18 = [previousPropertiesCopy debugDescription];
      *buf = 138544130;
      v69 = v16;
      v70 = 2112;
      v71 = v17;
      v72 = 2112;
      v73 = v18;
      v74 = 2112;
      v75 = v9;
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, "%{public}@Handling updated derived properties model: %@\nprevious derived properties model: %@\nchanged fields: %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v11);
    [(HMDCameraProfileSettingsManager *)selfCopy _notifyClientsOfCurrentSettings];
    currentAccessMode = [propertiesCopy currentAccessMode];
    if ([(HMDCameraProfileSettingsManager *)selfCopy isCurrentDeviceConfirmedPrimaryResident])
    {
      v20 = objc_autoreleasePoolPush();
      v21 = selfCopy;
      v22 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = HMFGetLogIdentifier();
        v24 = HMCameraAccessModeAsString();
        *buf = 138543618;
        v69 = v23;
        v70 = 2112;
        v71 = v24;
        _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_DEFAULT, "%{public}@Handling currentAccessMode of %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v20);
      [(HMDCameraProfileSettingsManager *)v21 _synchronizeCurrentAccessModeSettingToCameraWithCompletion:0];
    }

    if ([(__CFString *)v9 containsObject:@"currentAccessModeField"])
    {
      hapAccessory = [(HMDCameraProfileSettingsManager *)selfCopy hapAccessory];
      home = [hapAccessory home];
      if ([(HMDCameraProfileSettingsManager *)selfCopy isCurrentDeviceConfirmedPrimaryResident])
      {
        [(HMDCameraProfileSettingsManager *)selfCopy _notifySubscribersOfUpdatedSettings:propertiesCopy previousSettings:previousPropertiesCopy];
      }

      if (-[HMDCameraProfileSettingsManager isCurrentDeviceConfirmedPrimaryResident](selfCopy, "isCurrentDeviceConfirmedPrimaryResident") || ([home enabledResidents], v27 = objc_claimAutoreleasedReturnValue(), v28 = objc_msgSend(v27, "hmf_isEmpty"), v27, v28))
      {
        currentNotificationSettings = [(HMDCameraProfileSettingsManager *)selfCopy currentNotificationSettings];
        isAccessModeChangeNotificationEnabled = [currentNotificationSettings isAccessModeChangeNotificationEnabled];

        cameraProfiles = [hapAccessory cameraProfiles];
        anyObject = [cameraProfiles anyObject];

        v66 = anyObject;
        if (previousPropertiesCopy && (anyObject ? (v33 = isAccessModeChangeNotificationEnabled) : (v33 = 0), v33 == 1 && home && [(HMDCameraProfileSettingsManager *)selfCopy canRevealCurrentAccessMode]))
        {
          v34 = objc_autoreleasePoolPush();
          v64 = selfCopy;
          v35 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
          {
            v36 = HMFGetLogIdentifier();
            [previousPropertiesCopy currentAccessMode];
            v37 = HMCameraAccessModeAsString();
            HMCameraAccessModeAsString();
            v38 = v62 = v34;
            *buf = 138543874;
            v69 = v36;
            v70 = 2112;
            v71 = v37;
            v72 = 2112;
            v73 = v38;
            _os_log_impl(&dword_229538000, v35, OS_LOG_TYPE_INFO, "%{public}@Current access mode changed from %@ to %@", buf, 0x20u);

            v34 = v62;
          }

          objc_autoreleasePoolPop(v34);
          v39 = [HMDCameraAccessModeChangedBulletin alloc];
          currentAccessModeChangeReason = [propertiesCopy currentAccessModeChangeReason];
          currentAccessModeChangeDate = [propertiesCopy currentAccessModeChangeDate];
          if (currentAccessModeChangeDate)
          {
            v42 = [(HMDCameraAccessModeChangedBulletin *)v39 initWithAccessMode:currentAccessMode camera:v66 home:home changeReason:currentAccessModeChangeReason changeDate:currentAccessModeChangeDate];
          }

          else
          {
            date = [MEMORY[0x277CBEAA8] date];
            v42 = [(HMDCameraAccessModeChangedBulletin *)v39 initWithAccessMode:currentAccessMode camera:v66 home:home changeReason:currentAccessModeChangeReason changeDate:date];
          }

          if (v42)
          {
            v54 = objc_autoreleasePoolPush();
            v55 = v64;
            v56 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
            {
              v57 = HMFGetLogIdentifier();
              *buf = 138543618;
              v69 = v57;
              v70 = 2112;
              v71 = v42;
              _os_log_impl(&dword_229538000, v56, OS_LOG_TYPE_INFO, "%{public}@Inserting camera access mode changed bulletin: %@", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v54);
            bulletinBoard = [(HMDCameraProfileSettingsManager *)v55 bulletinBoard];
            [bulletinBoard insertCameraAccessModeChangedBulletin:v42];
          }
        }

        else
        {
          v43 = objc_autoreleasePoolPush();
          v44 = selfCopy;
          v45 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
          {
            v46 = HMFGetLogIdentifier();
            v63 = hapAccessory;
            v65 = home;
            v47 = @"<nil>";
            if (previousPropertiesCopy)
            {
              v48 = @"<not nil>";
            }

            else
            {
              v48 = @"<nil>";
            }

            v59 = v48;
            v49 = HMFBooleanToString();
            v61 = v43;
            if (v66)
            {
              v50 = @"<not nil>";
            }

            else
            {
              v50 = @"<nil>";
            }

            if (home)
            {
              v47 = @"<not nil>";
            }

            [(HMDCameraProfileSettingsManager *)v44 canRevealCurrentAccessMode];
            v51 = HMFBooleanToString();
            *buf = 138544642;
            v69 = v46;
            v70 = 2112;
            v71 = v60;
            v72 = 2112;
            v73 = v49;
            v74 = 2112;
            v75 = v50;
            v76 = 2112;
            v77 = v47;
            v43 = v61;
            hapAccessory = v63;
            v78 = 2112;
            v79 = v51;
            _os_log_impl(&dword_229538000, v45, OS_LOG_TYPE_INFO, "%{public}@Not posting access mode change notification because previousProperties=%@ accessModeChangeNotificationEnabled=%@ cameraProfile=%@ home=%@ canRevealCurrentAccessMode=%@", buf, 0x3Eu);

            home = v65;
          }

          objc_autoreleasePoolPop(v43);
        }
      }
    }
  }

  v52 = *MEMORY[0x277D85DE8];
}

- (void)handleUpdatedDerivedPropertiesModel:(id)model
{
  modelCopy = model;
  workQueue = [(HMDCameraProfileSettingsManager *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __71__HMDCameraProfileSettingsManager_handleUpdatedDerivedPropertiesModel___block_invoke;
  v7[3] = &unk_27868A750;
  v7[4] = self;
  v8 = modelCopy;
  v6 = modelCopy;
  dispatch_async(workQueue, v7);
}

void __71__HMDCameraProfileSettingsManager_handleUpdatedDerivedPropertiesModel___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  if (([*(a1 + 32) hasStarted] & 1) == 0)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 32);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543362;
      v16 = v10;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Ignoring derived properties model update because we haven't started yet", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
    goto LABEL_8;
  }

  v2 = [*(a1 + 40) hmbSetProperties];
  v3 = [v2 hmf_isEmpty];

  if (v3)
  {
LABEL_8:
    v11 = *MEMORY[0x277D85DE8];
    return;
  }

  v4 = [*(a1 + 32) previousDerivedPropertiesModel];
  v5 = *(a1 + 40);
  v14 = v4;
  if (v4)
  {
    v6 = [v4 hmbModelByMergingSetPropertiesFromModel:v5];
  }

  else
  {
    v6 = v5;
  }

  v12 = v6;
  [*(a1 + 32) setPreviousDerivedPropertiesModel:v6];
  [*(a1 + 32) _handleUpdatedDerivedProperties:v12 previousProperties:v14];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)handleUpdatedSettingsModel:(id)model
{
  modelCopy = model;
  workQueue = [(HMDCameraProfileSettingsManager *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __62__HMDCameraProfileSettingsManager_handleUpdatedSettingsModel___block_invoke;
  v7[3] = &unk_27868A750;
  v7[4] = self;
  v8 = modelCopy;
  v6 = modelCopy;
  dispatch_async(workQueue, v7);
}

void __62__HMDCameraProfileSettingsManager_handleUpdatedSettingsModel___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  if (([*(a1 + 32) hasStarted] & 1) == 0)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 32);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543362;
      v16 = v10;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Ignoring settings model update because we haven't started yet", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
    goto LABEL_8;
  }

  v2 = [*(a1 + 40) hmbSetProperties];
  v3 = [v2 hmf_isEmpty];

  if (v3)
  {
LABEL_8:
    v11 = *MEMORY[0x277D85DE8];
    return;
  }

  v4 = [*(a1 + 32) previousSettingsModel];
  v5 = *(a1 + 40);
  v14 = v4;
  if (v4)
  {
    v6 = [v4 hmbModelByMergingSetPropertiesFromModel:v5];
  }

  else
  {
    v6 = v5;
  }

  v12 = v6;
  [*(a1 + 32) setPreviousSettingsModel:v6];
  [*(a1 + 32) _handleUpdatedSettings:v12 previousSettings:v14];

  v13 = *MEMORY[0x277D85DE8];
}

- (BOOL)isCurrentDeviceConfirmedPrimaryResident
{
  hapAccessory = [(HMDCameraProfileSettingsManager *)self hapAccessory];
  home = [hapAccessory home];
  isCurrentDeviceConfirmedPrimaryResident = [home isCurrentDeviceConfirmedPrimaryResident];

  return isCurrentDeviceConfirmedPrimaryResident;
}

- (id)messageDestination
{
  v3 = objc_alloc(MEMORY[0x277D0F820]);
  messageTargetUUID = [(HMDCameraProfileSettingsManager *)self messageTargetUUID];
  v5 = [v3 initWithTarget:messageTargetUUID];

  return v5;
}

- (void)_start
{
  v50 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDCameraProfileSettingsManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  if ([(HMDCameraProfileSettingsManager *)self hasStarted])
  {
    v4 = objc_autoreleasePoolPush();
    selfCopy = self;
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v7 = HMFGetLogIdentifier();
      *buf = 138543362;
      v47 = v7;
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_DEBUG, "%{public}@Ignoring request to start because we've already started", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
  }

  else
  {
    [(HMDCameraProfileSettingsManager *)self setHasStarted:1];
    coreDataAdapter = [(HMDCameraProfileSettingsManager *)self coreDataAdapter];
    v45 = 0;
    v9 = [coreDataAdapter fetchCameraProfileSettingsModelWithError:&v45];
    v10 = v45;

    [(HMDCameraProfileSettingsManager *)self _initializeNotificationSettingsUsingSettingsModel:v9];
    if (v9)
    {
      [(HMDCameraProfileSettingsManager *)self _updateDerivedPropertiesOnSettingsModel:v9];
      [(HMDCameraProfileSettingsManager *)self setPreviousSettingsModel:v9];
      coreDataAdapter2 = [(HMDCameraProfileSettingsManager *)self coreDataAdapter];
      v12 = [coreDataAdapter2 fetchDerivedPropertiesModelWithError:0];
      [(HMDCameraProfileSettingsManager *)self setPreviousDerivedPropertiesModel:v12];

      v13 = 0;
      defaultSettingsModel = v9;
    }

    else
    {
      if (v10)
      {
        v15 = objc_autoreleasePoolPush();
        selfCopy2 = self;
        v17 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          v18 = HMFGetLogIdentifier();
          *buf = 138543618;
          v47 = v18;
          v48 = 2112;
          v49 = v10;
          _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_ERROR, "%{public}@Error fetching currentSettings: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v15);
      }

      v19 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v21 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        v22 = HMFGetLogIdentifier();
        *buf = 138543362;
        v47 = v22;
        _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_INFO, "%{public}@Initializing with default settings values", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v19);
      defaultSettingsModel = [(HMDCameraProfileSettingsManager *)selfCopy3 defaultSettingsModel];
      [(HMDCameraProfileSettingsManager *)selfCopy3 _updateDerivedPropertiesOnSettingsModel:defaultSettingsModel];
      v13 = defaultSettingsModel;
    }

    v23 = objc_autoreleasePoolPush();
    selfCopy4 = self;
    v25 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      v26 = HMFGetLogIdentifier();
      v27 = [(HMDCameraProfileSettingsManager *)selfCopy4 _settingsFromSettingsModel:defaultSettingsModel];
      *buf = 138543618;
      v47 = v26;
      v48 = 2112;
      v49 = v27;
      _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_INFO, "%{public}@Initializing with current settings: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v23);
    v28 = objc_autoreleasePoolPush();
    v29 = selfCopy4;
    v30 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
    {
      v31 = HMFGetLogIdentifier();
      previousDerivedPropertiesModel = [(HMDCameraProfileSettingsManager *)v29 previousDerivedPropertiesModel];
      v33 = [previousDerivedPropertiesModel debugDescription];
      *buf = 138543618;
      v47 = v31;
      v48 = 2112;
      v49 = v33;
      _os_log_impl(&dword_229538000, v30, OS_LOG_TYPE_INFO, "%{public}@Initializing with current derived properties model: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v28);
    characteristicsAvailabilityListener = [(HMDCameraProfileSettingsManager *)v29 characteristicsAvailabilityListener];
    [characteristicsAvailabilityListener setDelegate:v29];

    characteristicsAvailabilityListener2 = [(HMDCameraProfileSettingsManager *)v29 characteristicsAvailabilityListener];
    [characteristicsAvailabilityListener2 start];

    quotaCoordinator = [(HMDCameraProfileSettingsManager *)v29 quotaCoordinator];
    [quotaCoordinator setDelegate:v29];

    if ([(HMDCameraProfileSettingsManager *)v29 canModifyCameraSettings])
    {
      if ([(HMDCameraProfileSettingsManager *)v29 _migrateSettingsModel:defaultSettingsModel])
      {
        v37 = defaultSettingsModel;

        v13 = v37;
      }

      v38 = [(HMDCameraProfileSettingsManager *)v29 _updatedDerivedPropertiesModelWithSettingsModel:defaultSettingsModel userInitiated:0 didCreateModel:0];
      if (v13 | v38)
      {
        v39 = v38;
        if (v13)
        {
          coreDataAdapter3 = [(HMDCameraProfileSettingsManager *)v29 coreDataAdapter];
          v44[0] = MEMORY[0x277D85DD0];
          v44[1] = 3221225472;
          v44[2] = __41__HMDCameraProfileSettingsManager__start__block_invoke;
          v44[3] = &unk_27868A250;
          v44[4] = v29;
          [coreDataAdapter3 updateCameraProfileSettingsModel:v13 completion:v44];
        }

        if (!v9)
        {
          [(HMDCameraProfileSettingsManager *)v29 _writeInitialSettingsCharacteristicsToCamera];
        }

        if (v39)
        {
          coreDataAdapter4 = [(HMDCameraProfileSettingsManager *)v29 coreDataAdapter];
          v43[0] = MEMORY[0x277D85DD0];
          v43[1] = 3221225472;
          v43[2] = __41__HMDCameraProfileSettingsManager__start__block_invoke_153;
          v43[3] = &unk_27868A250;
          v43[4] = v29;
          [coreDataAdapter4 updateDerivedPropertiesModel:v39 completion:v43];
        }
      }

      else
      {
        [(HMDCameraProfileSettingsManager *)v29 _notifyClientsOfChangedSettingsModel:defaultSettingsModel isInitialSettingsUpdate:1];
        v13 = 0;
      }
    }

    else
    {
      [(HMDCameraProfileSettingsManager *)v29 _notifyClientsOfChangedSettingsModel:defaultSettingsModel isInitialSettingsUpdate:1];
    }
  }

  v42 = *MEMORY[0x277D85DE8];
}

void __41__HMDCameraProfileSettingsManager__start__block_invoke(uint64_t a1, void *a2)
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
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_ERROR, "%{public}@Failed to update Core Data with initial settings model: %@", &v9, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __41__HMDCameraProfileSettingsManager__start__block_invoke_153(uint64_t a1, void *a2)
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
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_ERROR, "%{public}@Failed to update Core Data with initial derived properties: %@", &v9, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (BOOL)canModifyCameraSettings
{
  if ([(HMDCameraProfileSettingsManager *)self isCurrentDeviceConfirmedPrimaryResident])
  {
    return 1;
  }

  hapAccessory = [(HMDCameraProfileSettingsManager *)self hapAccessory];
  home = [hapAccessory home];
  residentEnabledDevices = [home residentEnabledDevices];
  v3 = [residentEnabledDevices count] == 0;

  return v3;
}

- (BOOL)canRevealCurrentAccessMode
{
  hapAccessory = [(HMDCameraProfileSettingsManager *)self hapAccessory];
  home = [hapAccessory home];
  currentUser = [home currentUser];
  isRemoteAccessAllowed = [currentUser isRemoteAccessAllowed];

  return isRemoteAccessAllowed;
}

- (void)_enablePackageNotificationsOnSettings:(id)settings
{
  v3 = MEMORY[0x277CD1C48];
  settingsCopy = settings;
  v7 = objc_alloc_init(v3);
  v5 = [objc_alloc(MEMORY[0x277CD1938]) initWithSignificantEventTypes:16];
  [v7 setSignificantEventReasonCondition:v5];

  [settingsCopy setSmartBulletinBoardNotificationEnabled:1];
  predicate = [v7 predicate];
  [settingsCopy setSmartBulletinBoardNotificationCondition:predicate];
}

- (void)_coordinateSmartBulletinNotificationWithServiceBulletinNotification:(id)notification
{
  v22 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  workQueue = [(HMDCameraProfileSettingsManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  if ([notificationCopy isEnabled])
  {
    currentSettings = [(HMDCameraProfileSettingsManager *)self currentSettings];
    notificationSettings = [currentSettings notificationSettings];
    isSmartBulletinBoardNotificationEnabled = [notificationSettings isSmartBulletinBoardNotificationEnabled];

    if ((isSmartBulletinBoardNotificationEnabled & 1) == 0)
    {
      v9 = objc_autoreleasePoolPush();
      selfCopy = self;
      v11 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = HMFGetLogIdentifier();
        service = [notificationCopy service];
        v18 = 138543618;
        v19 = v12;
        v20 = 2112;
        v21 = service;
        _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Bulletin board notification is enabled for service %@, so enabling smart bulletin board notification with empty significant event types", &v18, 0x16u);
      }

      objc_autoreleasePoolPop(v9);
      notificationSettings2 = [currentSettings notificationSettings];
      v15 = [notificationSettings2 mutableCopy];

      [v15 setSmartBulletinBoardNotificationEnabled:1];
      v16 = [MEMORY[0x277CD18C0] predicateForSignificantEventTypes:0];
      [v15 setSmartBulletinBoardNotificationCondition:v16];

      [(HMDCameraProfileSettingsManager *)selfCopy _updateCameraBulletinNotificationManagerWithSettings:v15 forMessage:0];
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)_coordinateDoorbellServiceBulletinNotification:(id)notification
{
  v20 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  workQueue = [(HMDCameraProfileSettingsManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    service = [notificationCopy service];
    v14 = 138543874;
    v15 = v9;
    v16 = 2112;
    v17 = notificationCopy;
    v18 = 2112;
    v19 = service;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Coordinating notification settings for: %@ service: %@", &v14, 0x20u);
  }

  objc_autoreleasePoolPop(v6);
  currentSettings = [(HMDCameraProfileSettingsManager *)selfCopy currentSettings];
  notificationSettings = [currentSettings notificationSettings];
  [(HMDCameraProfileSettingsManager *)selfCopy _updateCameraBulletinNotificationManagerWithSettings:notificationSettings forMessage:0];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_coordinateNotificationSettingsWithServiceBulletinNotification:(id)notification
{
  v23 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  workQueue = [(HMDCameraProfileSettingsManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  service = [notificationCopy service];
  type = [service type];
  v8 = [type isEqualToString:*MEMORY[0x277CD0EC0]];

  if (v8)
  {
    [(HMDCameraProfileSettingsManager *)self _coordinateSmartBulletinNotificationWithServiceBulletinNotification:notificationCopy];
  }

  else
  {
    type2 = [service type];
    v10 = [type2 isEqualToString:*MEMORY[0x277CD0E38]];

    if (v10)
    {
      [(HMDCameraProfileSettingsManager *)self _coordinateDoorbellServiceBulletinNotification:notificationCopy];
    }

    else
    {
      v11 = objc_autoreleasePoolPush();
      selfCopy = self;
      v13 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = HMFGetLogIdentifier();
        service2 = [notificationCopy service];
        v17 = 138543874;
        v18 = v14;
        v19 = 2112;
        v20 = notificationCopy;
        v21 = 2112;
        v22 = service2;
        _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_ERROR, "%{public}@Unexpected bulletin board notification: %@ service: %@ when coordinating settings", &v17, 0x20u);
      }

      objc_autoreleasePoolPop(v11);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_addAccessModeCharacteristicWriteRequestsToArray:(id)array currentAccessMode:(unint64_t)mode
{
  arrayCopy = array;
  workQueue = [(HMDCameraProfileSettingsManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v7 = HMIsStreamingAllowedForCameraAccessMode();
  v8 = *MEMORY[0x277CCF748];
  v9 = *MEMORY[0x277CD0E00];
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v7];
  [(HMDCameraProfileSettingsManager *)self _addWriteRequestToArray:arrayCopy forCharacteristicWithType:v8 ofServiceWithType:v9 value:v10];

  v11 = HMIsRecordingAllowedForCameraAccessMode();
  v12 = *MEMORY[0x277CD0E08];
  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v11];
  [(HMDCameraProfileSettingsManager *)self _addWriteRequestToArray:arrayCopy forCharacteristicWithType:v8 ofServiceWithType:v12 value:v13];
}

- (void)_addHomeKitCameraActiveCharacteristicWriteRequestToArray:(id)array currentAccessMode:(unint64_t)mode
{
  arrayCopy = array;
  workQueue = [(HMDCameraProfileSettingsManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v8 = *MEMORY[0x277CD0DF8];
  v9 = [MEMORY[0x277CCABB0] numberWithInt:mode != 0];
  [(HMDCameraProfileSettingsManager *)self _addWriteRequestToArray:arrayCopy forCharacteristicWithType:@"0000021B-0000-1000-8000-0026BB765291" ofServiceWithType:v8 value:v9];
}

- (void)_addWriteRequestToArray:(id)array forCharacteristicWithType:(id)type ofServiceWithType:(id)withType value:(id)value
{
  v34 = *MEMORY[0x277D85DE8];
  arrayCopy = array;
  typeCopy = type;
  withTypeCopy = withType;
  valueCopy = value;
  workQueue = [(HMDCameraProfileSettingsManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  hapAccessory = [(HMDCameraProfileSettingsManager *)self hapAccessory];
  services = [hapAccessory services];

  v16 = [services countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v30;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v30 != v18)
        {
          objc_enumerationMutation(services);
        }

        v20 = *(*(&v29 + 1) + 8 * i);
        serviceType = [v20 serviceType];
        v22 = [serviceType isEqualToString:withTypeCopy];

        if (v22)
        {
          v23 = [v20 findCharacteristicWithType:typeCopy];
          v24 = v23;
          if (v23)
          {
            authorizationData = [v23 authorizationData];
            v26 = [HMDCharacteristicWriteRequest writeRequestWithCharacteristic:v24 value:valueCopy authorizationData:authorizationData type:1];

            [arrayCopy addObject:v26];
          }
        }
      }

      v17 = [services countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v17);
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (void)_handleCharacteristicWriteRequests:(id)requests completion:(id)completion
{
  v37 = *MEMORY[0x277D85DE8];
  requestsCopy = requests;
  completionCopy = completion;
  workQueue = [(HMDCameraProfileSettingsManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  if ([requestsCopy count])
  {
    hapAccessory = [(HMDCameraProfileSettingsManager *)self hapAccessory];
    home = [hapAccessory home];

    if (home)
    {
      v30 = [objc_alloc(MEMORY[0x277D0F770]) initWithName:@"Write settings characteristics"];
      v11 = objc_autoreleasePoolPush();
      selfCopy = self;
      v13 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = HMFGetLogIdentifier();
        identifier = [v30 identifier];
        shortDescription = [identifier shortDescription];
        *buf = 138543874;
        v32 = v14;
        v33 = 2114;
        v34 = shortDescription;
        v35 = 2112;
        v36 = requestsCopy;
        _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Received request to write characteristics: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v11);
      uUID = [MEMORY[0x277CCAD78] UUID];
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __81__HMDCameraProfileSettingsManager__handleCharacteristicWriteRequests_completion___block_invoke;
      v26[3] = &unk_27868A370;
      v26[4] = selfCopy;
      v27 = v30;
      v29 = completionCopy;
      v28 = requestsCopy;
      [home writeCharacteristicValues:v28 source:1070 biomeSource:0 identifier:uUID transport:0 qualityOfService:-1 withCompletionHandler:v26];

      __HMFActivityScopeLeave();
    }

    else
    {
      v20 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v22 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = HMFGetLogIdentifier();
        *buf = 138543362;
        v32 = v23;
        _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_DEFAULT, "%{public}@Cannot handle characteristic write requests because accessory/home reference is nil", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v20);
      v24 = [MEMORY[0x277CCA9B8] hmErrorWithCode:12];
      (*(completionCopy + 2))(completionCopy, v24);
    }
  }

  else
  {
    v18 = _Block_copy(completionCopy);
    v19 = v18;
    if (v18)
    {
      (*(v18 + 2))(v18, 0);
    }
  }

  v25 = *MEMORY[0x277D85DE8];
}

void __81__HMDCameraProfileSettingsManager__handleCharacteristicWriteRequests_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) workQueue];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __81__HMDCameraProfileSettingsManager__handleCharacteristicWriteRequests_completion___block_invoke_2;
  v12[3] = &unk_278688B58;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v13 = v5;
  v14 = v8;
  v15 = v9;
  v18 = *(a1 + 56);
  v16 = *(a1 + 48);
  v17 = v6;
  v10 = v6;
  v11 = v5;
  dispatch_async(v7, v12);
}

void __81__HMDCameraProfileSettingsManager__handleCharacteristicWriteRequests_completion___block_invoke_2(uint64_t a1)
{
  v49 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v2 = objc_autoreleasePoolPush();
    v3 = *(a1 + 40);
    v4 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = HMFGetLogIdentifier();
      v6 = [*(a1 + 48) identifier];
      v7 = [v6 shortDescription];
      v8 = *(a1 + 32);
      *buf = 138543874;
      v44 = v5;
      v45 = 2114;
      v46 = v7;
      v47 = 2112;
      v48 = v8;
      _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] Failed to write any settings to accessory: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v2);
    v9 = _Block_copy(*(a1 + 72));
    v10 = v9;
    if (v9)
    {
      v11 = *(a1 + 32);
      v12 = v9[2];
LABEL_6:
      v12();
    }
  }

  else
  {
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v10 = *(a1 + 56);
    v13 = [v10 countByEnumeratingWithState:&v38 objects:v42 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v39;
      while (2)
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v39 != v15)
          {
            objc_enumerationMutation(v10);
          }

          v17 = *(a1 + 64);
          v18 = [*(*(&v38 + 1) + 8 * i) characteristic];
          v37 = 0;
          v19 = [v17 hmd_valueOfCharacteristic:v18 error:&v37];
          v20 = v37;

          if (!v19)
          {
            v28 = objc_autoreleasePoolPush();
            v29 = *(a1 + 40);
            v30 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
            {
              v31 = HMFGetLogIdentifier();
              v32 = [*(a1 + 48) identifier];
              v33 = [v32 shortDescription];
              *buf = 138543874;
              v44 = v31;
              v45 = 2114;
              v46 = v33;
              v47 = 2112;
              v48 = v20;
              _os_log_impl(&dword_229538000, v30, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] Failed to write settings to accessory: %@", buf, 0x20u);
            }

            objc_autoreleasePoolPop(v28);
            v34 = _Block_copy(*(a1 + 72));
            v35 = v34;
            if (v34)
            {
              (*(v34 + 2))(v34, v20);
            }

            goto LABEL_24;
          }
        }

        v14 = [v10 countByEnumeratingWithState:&v38 objects:v42 count:16];
        if (v14)
        {
          continue;
        }

        break;
      }
    }

    v21 = objc_autoreleasePoolPush();
    v22 = *(a1 + 40);
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = HMFGetLogIdentifier();
      v25 = [*(a1 + 48) identifier];
      v26 = [v25 shortDescription];
      *buf = 138543618;
      v44 = v24;
      v45 = 2114;
      v46 = v26;
      _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Successfully wrote settings to accessory", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v21);
    v27 = _Block_copy(*(a1 + 72));
    v10 = v27;
    if (v27)
    {
      v12 = v27[2];
      goto LABEL_6;
    }
  }

LABEL_24:

  v36 = *MEMORY[0x277D85DE8];
}

- (void)_writeInitialSettingsCharacteristicsToCamera
{
  v13 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDCameraProfileSettingsManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v4 = objc_autoreleasePoolPush();
  selfCopy = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    *buf = 138543362;
    v12 = v7;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Writing initial settings characteristics to camera", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  [(HMDCameraProfileSettingsManager *)selfCopy setNeedsInitialSettingsCharacteristicSynchronization:1];
  array = [MEMORY[0x277CBEB18] array];
  [(HMDCameraProfileSettingsManager *)selfCopy _addOperatingModeIndicatorCharacteristicWriteRequestToArray:array accessModeIndicatorEnabled:1];
  [(HMDCameraProfileSettingsManager *)selfCopy _addNightVisionCharacteristicWriteRequestToArray:array nightVisionEnabled:1];
  [(HMDCameraProfileSettingsManager *)selfCopy _addSnapshotsActiveCharacteristicWriteRequestToArray:array snapshotsAllowed:1];
  [(HMDCameraProfileSettingsManager *)selfCopy _addPeriodicSnapshotsActiveCharacteristicWriteRequestToArray:array periodicSnapshotsAllowed:1];
  [(HMDCameraProfileSettingsManager *)selfCopy _addRecordingAudioEnabledWriteRequestToArray:array recordingAudioEnabled:1];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __79__HMDCameraProfileSettingsManager__writeInitialSettingsCharacteristicsToCamera__block_invoke;
  v10[3] = &unk_27868A250;
  v10[4] = selfCopy;
  [(HMDCameraProfileSettingsManager *)selfCopy _handleCharacteristicWriteRequests:array completion:v10];

  v9 = *MEMORY[0x277D85DE8];
}

void __79__HMDCameraProfileSettingsManager__writeInitialSettingsCharacteristicsToCamera__block_invoke(uint64_t a1, void *a2)
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
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_ERROR, "%{public}@Failed to write initial settings characteristics: %@", &v11, 0x16u);
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
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Successfully wrote initial settings characteristics", &v11, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    [*(a1 + 32) setNeedsInitialSettingsCharacteristicSynchronization:0];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_updateNotificationSettings:(id)settings forMessage:(id)message
{
  messageCopy = message;
  [(HMDCameraProfileSettingsManager *)self _notifyClientsOfCurrentSettings];
  [messageCopy respondWithSuccess];
}

- (void)_notifyClientsOfCurrentSettings
{
  workQueue = [(HMDCameraProfileSettingsManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  currentSettings = [(HMDCameraProfileSettingsManager *)self currentSettings];
  [(HMDCameraProfileSettingsManager *)self _notifyClientsOfChangedSettings:currentSettings isInitialSettingsUpdate:0];
}

- (void)_notifySubscribersOfUpdatedSettings:(id)settings previousSettings:(id)previousSettings
{
  v47 = *MEMORY[0x277D85DE8];
  settingsCopy = settings;
  previousSettingsCopy = previousSettings;
  workQueue = [(HMDCameraProfileSettingsManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  if (previousSettingsCopy)
  {
    hapAccessory = [(HMDCameraProfileSettingsManager *)self hapAccessory];
    v10 = hapAccessory;
    if (hapAccessory)
    {
      home = [hapAccessory home];
      v12 = home;
      if (home)
      {
        v37 = home;
        v43 = @"HMDCS.AccessModeChange";
        v41[0] = *MEMORY[0x277CCF0B0];
        uuid = [v10 uuid];
        uUIDString = [uuid UUIDString];
        v42[0] = uUIDString;
        v41[1] = @"HMDCS.amu.value";
        v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(settingsCopy, "currentAccessMode")}];
        v42[1] = v13;
        v41[2] = @"HMDCS.amu.changeReason";
        v14 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(settingsCopy, "currentAccessModeChangeReason")}];
        v42[2] = v14;
        v41[3] = @"HMDCS.amu.changeDate";
        currentAccessModeChangeDate = [settingsCopy currentAccessModeChangeDate];
        date = currentAccessModeChangeDate;
        if (!currentAccessModeChangeDate)
        {
          date = [MEMORY[0x277CBEAA8] date];
        }

        v42[3] = date;
        v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v42 forKeys:v41 count:4];
        v44 = v17;
        v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v44 forKeys:&v43 count:1];

        if (!currentAccessModeChangeDate)
        {
        }

        v12 = v37;
        cameraBulletinNotificationManager = [v37 cameraBulletinNotificationManager];
        v20 = [cameraBulletinNotificationManager devicesToNotifyForAccessModeChangeForAccessory:v10];

        v38[0] = MEMORY[0x277D85DD0];
        v38[1] = 3221225472;
        v38[2] = __88__HMDCameraProfileSettingsManager__notifySubscribersOfUpdatedSettings_previousSettings___block_invoke;
        v38[3] = &unk_278678910;
        v38[4] = self;
        v39 = v18;
        v40 = settingsCopy;
        v21 = v18;
        [v20 hmf_enumerateWithAutoreleasePoolUsingBlock:v38];
      }

      else
      {
        v30 = objc_autoreleasePoolPush();
        selfCopy = self;
        v32 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          v33 = HMFGetLogIdentifier();
          *buf = 138543362;
          v46 = v33;
          _os_log_impl(&dword_229538000, v32, OS_LOG_TYPE_ERROR, "%{public}@Home is nil when attempting to notify subscribers of updated camera settings", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v30);
      }
    }

    else
    {
      v26 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v28 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v29 = HMFGetLogIdentifier();
        *buf = 138543362;
        v46 = v29;
        _os_log_impl(&dword_229538000, v28, OS_LOG_TYPE_ERROR, "%{public}@Accessory is nil when attempting to notify subscribers of updated camera settings", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v26);
    }
  }

  else
  {
    v22 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      v25 = HMFGetLogIdentifier();
      *buf = 138543362;
      v46 = v25;
      _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_DEBUG, "%{public}@Skip since this is the first time setting is created", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v22);
  }

  v34 = *MEMORY[0x277D85DE8];
}

void __88__HMDCameraProfileSettingsManager__notifySubscribersOfUpdatedSettings_previousSettings___block_invoke(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [HMDRemoteDeviceMessageDestination alloc];
  v5 = [*(a1 + 32) uniqueIdentifier];
  v6 = [(HMDRemoteDeviceMessageDestination *)v4 initWithTarget:v5 device:v3];

  v7 = [HMDRemoteMessage secureMessageWithName:@"HMDCameraSettingsDidChangeMessage" destination:v6 messagePayload:*(a1 + 40)];
  v8 = objc_autoreleasePoolPush();
  v9 = *(a1 + 32);
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    HMFGetLogIdentifier();
    v11 = v17 = v6;
    v12 = [v3 shortDescription];
    [*(a1 + 48) currentAccessMode];
    v13 = HMCameraAccessModeAsString();
    v14 = [v7 shortDescription];
    *buf = 138544130;
    v19 = v11;
    v20 = 2112;
    v21 = v12;
    v22 = 2112;
    v23 = v13;
    v24 = 2112;
    v25 = v14;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Notifying device %@ for camera access mode change to %@ using message: %@", buf, 0x2Au);

    v6 = v17;
  }

  objc_autoreleasePoolPop(v8);
  v15 = [*(a1 + 32) msgDispatcher];
  [v15 sendMessage:v7];

  v16 = *MEMORY[0x277D85DE8];
}

- (id)_payloadForSettings:(id)settings
{
  v8[1] = *MEMORY[0x277D85DE8];
  v7 = *MEMORY[0x277CCF650];
  v3 = encodeRootObjectForSPIClients(settings);
  v8[0] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)_settingsFromSettingsModel:(id)model
{
  v4 = MEMORY[0x277CD1F68];
  modelCopy = model;
  v6 = [v4 alloc];
  hmbModelID = [modelCopy hmbModelID];
  v8 = [v6 initWithUUID:hmbModelID];

  [v8 setSupportedFeatures:{-[HMDCameraProfileSettingsManager supportedFeatures](self, "supportedFeatures")}];
  [v8 setAccessModeAtHome:{objc_msgSend(modelCopy, "accessModeAtHome")}];
  [v8 setAccessModeNotAtHome:{objc_msgSend(modelCopy, "accessModeNotAtHome")}];
  [v8 setRecordingEventTriggers:{objc_msgSend(modelCopy, "recordingEventTriggers")}];
  [v8 setCameraManuallyDisabled:{objc_msgSend(modelCopy, "cameraManuallyDisabled")}];
  currentNotificationSettings = [(HMDCameraProfileSettingsManager *)self currentNotificationSettings];
  [v8 setNotificationSettings:currentNotificationSettings];

  activityZones = [modelCopy activityZones];
  [v8 setActivityZones:activityZones];

  [v8 setActivityZonesIncludedForSignificantEventDetection:{objc_msgSend(modelCopy, "activityZonesIncludedForSignificantEventDetection")}];
  if ([(HMDCameraProfileSettingsManager *)self canRevealCurrentAccessMode])
  {
    currentAccessMode = [modelCopy currentAccessMode];
  }

  else
  {
    currentAccessMode = [modelCopy mostPrivateAccessMode];
  }

  v12 = currentAccessMode;

  [v8 setCurrentAccessMode:v12];
  v13 = [v8 copy];

  return v13;
}

- (NSUUID)derivedPropertiesModelID
{
  v8[1] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CCAD78];
  uniqueIdentifier = [(HMDCameraProfileSettingsManager *)self uniqueIdentifier];
  v8[0] = @"2b32a3ee-3908-406e-890d-74f9c410ef2b";
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  v5 = [v2 hm_deriveUUIDFromBaseUUID:uniqueIdentifier withSalts:v4];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)_settingsModelForUpdate
{
  v3 = [HMDCameraProfileSettingsModel alloc];
  uniqueIdentifier = [(HMDCameraProfileSettingsManager *)self uniqueIdentifier];
  hapAccessory = [(HMDCameraProfileSettingsManager *)self hapAccessory];
  uuid = [hapAccessory uuid];
  v7 = [(HMBModel *)v3 initWithModelID:uniqueIdentifier parentModelID:uuid];

  return v7;
}

- (void)_synchronizeCurrentAccessModeSettingToCameraWithCompletion:(id)completion
{
  v15 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  workQueue = [(HMDCameraProfileSettingsManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v13 = 138543362;
    v14 = v9;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Synchronizing current access mode settings to camera", &v13, 0xCu);
  }

  objc_autoreleasePoolPop(v6);
  currentSettingsModel = [(HMDCameraProfileSettingsManager *)selfCopy currentSettingsModel];
  array = [MEMORY[0x277CBEB18] array];
  -[HMDCameraProfileSettingsManager _addAccessModeCharacteristicWriteRequestsToArray:currentAccessMode:](selfCopy, "_addAccessModeCharacteristicWriteRequestsToArray:currentAccessMode:", array, [currentSettingsModel currentAccessMode]);
  -[HMDCameraProfileSettingsManager _addHomeKitCameraActiveCharacteristicWriteRequestToArray:currentAccessMode:](selfCopy, "_addHomeKitCameraActiveCharacteristicWriteRequestToArray:currentAccessMode:", array, [currentSettingsModel currentAccessMode]);
  [(HMDCameraProfileSettingsManager *)selfCopy _handleCharacteristicWriteRequests:array completion:completionCopy];

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_populateCurrentAccessModeFieldForDerivedProperties:(id)properties currentSettings:(id)settings userInitiated:(BOOL)initiated didUpdateField:(BOOL *)field
{
  initiatedCopy = initiated;
  v89 = *MEMORY[0x277D85DE8];
  propertiesCopy = properties;
  settingsCopy = settings;
  workQueue = [(HMDCameraProfileSettingsManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  if (field)
  {
    *field = 0;
  }

  if ([settingsCopy hmbPropertyWasSet:@"accessModeAtHomeField"] && (objc_msgSend(settingsCopy, "hmbPropertyWasSet:", @"accessModeNotAtHomeField") & 1) != 0)
  {
    accessModeAtHome = [settingsCopy accessModeAtHome];
    accessModeNotAtHome = [settingsCopy accessModeNotAtHome];
    isAnyUserAtHome = [(HMDCameraProfileSettingsManager *)self isAnyUserAtHome];
    v78 = isAnyUserAtHome;
    if ([(HMDCameraProfileSettingsManager *)self isCameraManuallyDisabled])
    {
      v16 = objc_autoreleasePoolPush();
      selfCopy = self;
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v19 = HMFGetLogIdentifier();
        *buf = 138543362;
        v80 = v19;
        _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_INFO, "%{public}@Camera is manually disabled, setting current access mode to off", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v16);
      v20 = 0;
      v21 = 5;
    }

    else if (isAnyUserAtHome)
    {
      bOOLValue = [isAnyUserAtHome BOOLValue];
      v28 = 1;
      if (!bOOLValue)
      {
        v28 = 2;
      }

      v73 = v28;
      if (bOOLValue)
      {
        v20 = accessModeAtHome;
      }

      else
      {
        v20 = accessModeNotAtHome;
      }

      context = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v30 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        v70 = HMFGetLogIdentifier();
        v69 = HMCameraAccessModeAsString();
        [v78 BOOLValue];
        HMFBooleanToString();
        v31 = v68 = selfCopy2;
        v32 = HMCameraAccessModeAsString();
        v33 = HMCameraAccessModeAsString();
        *buf = 138544386;
        v80 = v70;
        v81 = 2112;
        v82 = v69;
        v83 = 2112;
        v84 = v31;
        v85 = 2112;
        v86 = v32;
        v87 = 2112;
        v88 = v33;
        _os_log_impl(&dword_229538000, v30, OS_LOG_TYPE_INFO, "%{public}@Determined expected access mode of %@ based on isAnyUserAtHome = %@, accessModeAtHome = %@, accessModeNotAtHome = %@", buf, 0x34u);

        selfCopy2 = v68;
      }

      objc_autoreleasePoolPop(context);
      if (initiatedCopy)
      {
        v21 = 4;
      }

      else
      {
        v21 = v73;
      }
    }

    else
    {
      v34 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v36 = HMFGetOSLogHandle();
      v37 = os_log_type_enabled(v36, OS_LOG_TYPE_INFO);
      if (accessModeAtHome != accessModeNotAtHome)
      {
        if (v37)
        {
          v66 = HMFGetLogIdentifier();
          *buf = 138543362;
          v80 = v66;
          _os_log_impl(&dword_229538000, v36, OS_LOG_TYPE_INFO, "%{public}@Presence is unavailable; not updating current access mode", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v34);
        goto LABEL_49;
      }

      if (v37)
      {
        contexta = HMFGetLogIdentifier();
        v74 = v34;
        v38 = HMCameraAccessModeAsString();
        v39 = HMCameraAccessModeAsString();
        HMCameraAccessModeAsString();
        *buf = 138544130;
        v80 = contexta;
        v81 = 2112;
        v82 = v38;
        v83 = 2112;
        v84 = v39;
        v86 = v85 = 2112;
        v40 = v86;
        _os_log_impl(&dword_229538000, v36, OS_LOG_TYPE_INFO, "%{public}@Determined expected access mode of %@ because accessModeAtHome (%@) and accessModeNotAtHome (%@) are the same", buf, 0x2Au);

        v34 = v74;
      }

      objc_autoreleasePoolPop(v34);
      v21 = 4;
      v20 = accessModeAtHome;
    }

    if (([propertiesCopy hmbPropertyWasSet:{@"currentAccessModeField", v68}] & 1) == 0)
    {
      v41 = objc_autoreleasePoolPush();
      selfCopy4 = self;
      v43 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
      {
        HMFGetLogIdentifier();
        v44 = v75 = v21;
        v45 = HMCameraAccessModeAsString();
        *buf = 138543618;
        v80 = v44;
        v81 = 2112;
        v82 = v45;
        _os_log_impl(&dword_229538000, v43, OS_LOG_TYPE_INFO, "%{public}@Setting initial currentAccessMode to %@", buf, 0x16u);

        v21 = v75;
      }

      objc_autoreleasePoolPop(v41);
      [propertiesCopy setCurrentAccessMode:v20];
      if (field)
      {
        *field = 1;
      }
    }

    if (([propertiesCopy hmbPropertyWasSet:@"currentAccessModeChangeReasonField"] & 1) == 0)
    {
      v46 = objc_autoreleasePoolPush();
      selfCopy5 = self;
      v48 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
      {
        v49 = HMFGetLogIdentifier();
        [MEMORY[0x277CCABB0] numberWithInteger:v21];
        v76 = v20;
        v51 = v50 = v21;
        *buf = 138543618;
        v80 = v49;
        v81 = 2112;
        v82 = v51;
        _os_log_impl(&dword_229538000, v48, OS_LOG_TYPE_INFO, "%{public}@Setting initial currentAccessModeChangeReason to %@", buf, 0x16u);

        v21 = v50;
        v20 = v76;
      }

      objc_autoreleasePoolPop(v46);
      [propertiesCopy setCurrentAccessModeChangeReason:v21];
      if (field)
      {
        *field = 1;
      }
    }

    if ([propertiesCopy currentAccessMode] != v20)
    {
      v52 = objc_autoreleasePoolPush();
      selfCopy6 = self;
      v54 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
      {
        v55 = HMFGetLogIdentifier();
        [propertiesCopy currentAccessMode];
        v56 = HMCameraAccessModeAsString();
        HMCameraAccessModeAsString();
        v77 = v52;
        v57 = v20;
        v59 = v58 = v21;
        *buf = 138543874;
        v80 = v55;
        v81 = 2112;
        v82 = v56;
        v83 = 2112;
        v84 = v59;
        _os_log_impl(&dword_229538000, v54, OS_LOG_TYPE_INFO, "%{public}@Changing currentAccessMode field from %@ to %@", buf, 0x20u);

        v21 = v58;
        v20 = v57;
        v52 = v77;
      }

      objc_autoreleasePoolPop(v52);
      [propertiesCopy setCurrentAccessMode:v20];
      if ([propertiesCopy currentAccessModeChangeReason] != v21)
      {
        v60 = objc_autoreleasePoolPush();
        v61 = selfCopy6;
        v62 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v62, OS_LOG_TYPE_INFO))
        {
          v63 = HMFGetLogIdentifier();
          v64 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(propertiesCopy, "currentAccessModeChangeReason")}];
          v65 = [MEMORY[0x277CCABB0] numberWithInteger:v21];
          *buf = 138543874;
          v80 = v63;
          v81 = 2112;
          v82 = v64;
          v83 = 2112;
          v84 = v65;
          _os_log_impl(&dword_229538000, v62, OS_LOG_TYPE_INFO, "%{public}@Changing currentAccessModeChangeReason from %@ to %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v60);
        [propertiesCopy setCurrentAccessModeChangeReason:v21];
      }

      if (field)
      {
        *field = 1;
      }
    }

LABEL_49:

    goto LABEL_50;
  }

  v22 = objc_autoreleasePoolPush();
  selfCopy7 = self;
  v24 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    v25 = HMFGetLogIdentifier();
    v26 = [settingsCopy debugDescription];
    *buf = 138543618;
    v80 = v25;
    v81 = 2112;
    v82 = v26;
    _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_ERROR, "%{public}@Cannot update currentAccessMode, settings model does not include accessMode values: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v22);
LABEL_50:

  v67 = *MEMORY[0x277D85DE8];
}

void __103__HMDCameraProfileSettingsManager__updateDerivedPropertiesModelWithSettingsModel_userInitiated_reason___block_invoke(uint64_t a1, void *a2)
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
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Updating derived properties model failed: %@", &v9, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (BOOL)isCameraManuallyDisabled
{
  v22 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDCameraProfileSettingsManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  manuallyDisabledCharacteristic = [(HMDCameraProfileSettingsManager *)self manuallyDisabledCharacteristic];
  v5 = manuallyDisabledCharacteristic;
  if (manuallyDisabledCharacteristic)
  {
    value = [manuallyDisabledCharacteristic value];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = value;
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;

    if (v8)
    {
      bOOLValue = [v8 BOOLValue];
    }

    else
    {
      v10 = objc_autoreleasePoolPush();
      selfCopy = self;
      v12 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = HMFGetLogIdentifier();
        v16 = 138543874;
        v17 = v13;
        v18 = 2112;
        v19 = v5;
        v20 = 2112;
        v21 = 0;
        _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@Characteristic %@ has unhandled value type: %@", &v16, 0x20u);
      }

      objc_autoreleasePoolPop(v10);
      bOOLValue = 0;
    }
  }

  else
  {
    bOOLValue = 0;
  }

  v14 = *MEMORY[0x277D85DE8];
  return bOOLValue;
}

- (id)doorbellInputEventCharacteristic
{
  hapAccessory = [(HMDCameraProfileSettingsManager *)self hapAccessory];
  v3 = [hapAccessory findCharacteristicType:*MEMORY[0x277CCF910] forServiceType:*MEMORY[0x277CD0E38]];

  return v3;
}

- (id)manuallyDisabledCharacteristic
{
  hapAccessory = [(HMDCameraProfileSettingsManager *)self hapAccessory];
  v3 = [hapAccessory findCharacteristicType:@"00000227-0000-1000-8000-0026BB765291" forServiceType:*MEMORY[0x277CD0DF8]];

  return v3;
}

- (BOOL)_migrateSettingsModel:(id)model
{
  v31 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  version = [modelCopy version];
  if (version != 1)
  {
    if (version)
    {
LABEL_12:
      v17 = 0;
      goto LABEL_16;
    }

    doorbellInputEventCharacteristic = [(HMDCameraProfileSettingsManager *)self doorbellInputEventCharacteristic];

    if (doorbellInputEventCharacteristic)
    {
      v7 = objc_autoreleasePoolPush();
      selfCopy = self;
      v9 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = HMFGetLogIdentifier();
        [modelCopy recordingEventTriggers];
        v11 = HMCameraSignificantEventTypesAsString();
        v25 = 138543618;
        v26 = v10;
        v27 = 2112;
        v28 = v11;
        _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Settings are for doorbell camera; adding HMCameraSignificantEventTypePackages to existing recording event triggers: %@", &v25, 0x16u);
      }

      objc_autoreleasePoolPop(v7);
      [modelCopy setRecordingEventTriggers:{objc_msgSend(modelCopy, "recordingEventTriggers") | 0x10}];
    }

    if ([modelCopy recordingEventTriggers])
    {
      v12 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v14 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = HMFGetLogIdentifier();
        [modelCopy recordingEventTriggers];
        v16 = HMCameraSignificantEventTypesAsString();
        v25 = 138543618;
        v26 = v15;
        v27 = 2112;
        v28 = v16;
        _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, "%{public}@Settings have Any Motion recording trigger; adding all significant event types to existing recording event triggers: %@", &v25, 0x16u);
      }

      objc_autoreleasePoolPop(v12);
      [modelCopy setRecordingEventTriggers:{objc_msgSend(modelCopy, "recordingEventTriggers") | 0x1F}];
    }
  }

  if ([modelCopy version] == 1)
  {
    goto LABEL_12;
  }

  v18 = objc_autoreleasePoolPush();
  selfCopy3 = self;
  v20 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    v21 = HMFGetLogIdentifier();
    version2 = [modelCopy version];
    v25 = 138543874;
    v26 = v21;
    v27 = 2048;
    v28 = version2;
    v29 = 2048;
    v30 = 1;
    _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_INFO, "%{public}@Updating settings model version from %ld to %ld", &v25, 0x20u);
  }

  objc_autoreleasePoolPop(v18);
  v17 = 1;
  [modelCopy setVersion:1];
LABEL_16:

  v23 = *MEMORY[0x277D85DE8];
  return v17;
}

- (BOOL)_migrateNotificationSettings:(id)settings
{
  v59 = *MEMORY[0x277D85DE8];
  settingsCopy = settings;
  workQueue = [(HMDCameraProfileSettingsManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  version = [settingsCopy version];
  v7 = 0;
  if (version == 1)
  {
    goto LABEL_22;
  }

  if (version)
  {
    goto LABEL_38;
  }

  doorbellInputEventCharacteristic = [(HMDCameraProfileSettingsManager *)self doorbellInputEventCharacteristic];

  if (doorbellInputEventCharacteristic)
  {
    smartBulletinBoardNotificationCondition = [settingsCopy smartBulletinBoardNotificationCondition];
    if (!smartBulletinBoardNotificationCondition)
    {
      if (isAppleTV())
      {
        v23 = objc_autoreleasePoolPush();
        selfCopy = self;
        v25 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
        {
          v26 = HMFGetLogIdentifier();
          v53 = 138543362;
          v54 = v26;
          _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_INFO, "%{public}@Settings are for doorbell camera but there is no notification condition; enabling significant event notifications for HMCameraSignificantEventTypePackages only", &v53, 0xCu);
        }

        objc_autoreleasePoolPop(v23);
        [(HMDCameraProfileSettingsManager *)selfCopy _enablePackageNotificationsOnSettings:settingsCopy];
        v7 = 1;
      }

      else
      {
        v7 = 0;
      }

      goto LABEL_21;
    }

    v10 = [objc_alloc(MEMORY[0x277CD18B8]) initWithPredicate:smartBulletinBoardNotificationCondition];
    significantEventReasonCondition = [v10 significantEventReasonCondition];
    significantEventTypes = [significantEventReasonCondition significantEventTypes];

    if (significantEventTypes)
    {
      v13 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = HMFGetLogIdentifier();
        significantEventReasonCondition2 = [v10 significantEventReasonCondition];
        v53 = 138543618;
        v54 = v16;
        v55 = 2112;
        v56 = significantEventReasonCondition2;
        _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@Settings are for doorbell camera; adding HMCameraSignificantEventTypePackages to existing significant event notification condition: %@", &v53, 0x16u);
      }

      objc_autoreleasePoolPop(v13);
      significantEventReasonCondition3 = [v10 significantEventReasonCondition];
      significantEventTypes2 = [significantEventReasonCondition3 significantEventTypes];

      v20 = [v10 mutableCopy];
      0x10 = [objc_alloc(MEMORY[0x277CD1938]) initWithSignificantEventTypes:significantEventTypes2 | 0x10];
      [v20 setSignificantEventReasonCondition:0x10];

      predicate = [v20 predicate];
      [settingsCopy setSmartBulletinBoardNotificationCondition:predicate];
    }

    else
    {
      if (!isAppleTV())
      {
        v7 = 0;
        goto LABEL_19;
      }

      v27 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v29 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        v30 = HMFGetLogIdentifier();
        v53 = 138543362;
        v54 = v30;
        _os_log_impl(&dword_229538000, v29, OS_LOG_TYPE_INFO, "%{public}@Settings are for doorbell camera but there are no significantEventTypes in the condition; enabling significant event notifications for HMCameraSignificantEventTypePackages only", &v53, 0xCu);
      }

      objc_autoreleasePoolPop(v27);
      [(HMDCameraProfileSettingsManager *)selfCopy3 _enablePackageNotificationsOnSettings:settingsCopy];
    }

    v7 = 1;
LABEL_19:

LABEL_21:
    goto LABEL_22;
  }

  v7 = 0;
LABEL_22:
  if (isAppleTV())
  {
    if ([settingsCopy isAccessModeChangeNotificationEnabled])
    {
      v31 = objc_autoreleasePoolPush();
      selfCopy4 = self;
      v33 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
      {
        v34 = HMFGetLogIdentifier();
        v53 = 138543362;
        v54 = v34;
        _os_log_impl(&dword_229538000, v33, OS_LOG_TYPE_INFO, "%{public}@Forcing access mode notification to disabled during settings migration on Apple TV", &v53, 0xCu);
      }

      objc_autoreleasePoolPop(v31);
      [settingsCopy setAccessModeChangeNotificationEnabled:0];
      v7 = 1;
    }

    if ([settingsCopy isReachabilityEventNotificationEnabled])
    {
      v35 = objc_autoreleasePoolPush();
      selfCopy5 = self;
      v37 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
      {
        v38 = HMFGetLogIdentifier();
        v53 = 138543362;
        v54 = v38;
        _os_log_impl(&dword_229538000, v37, OS_LOG_TYPE_INFO, "%{public}@Forcing reachability notification to disabled during settings migration on Apple TV", &v53, 0xCu);
      }

      objc_autoreleasePoolPop(v35);
      [settingsCopy setReachabilityEventNotificationEnabled:0];
      v7 = 1;
    }
  }

  if (isHomePod() || isWatch())
  {
    v39 = objc_alloc_init(MEMORY[0x277CD1958]);
    if (([settingsCopy isEqual:v39] & 1) == 0)
    {
      v40 = objc_autoreleasePoolPush();
      selfCopy6 = self;
      v42 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
      {
        v43 = HMFGetLogIdentifier();
        v53 = 138543362;
        v54 = v43;
        _os_log_impl(&dword_229538000, v42, OS_LOG_TYPE_INFO, "%{public}@Forcing all notification settings to disabled during settings migration on HomePod / Watch", &v53, 0xCu);
      }

      objc_autoreleasePoolPop(v40);
      [settingsCopy setAccessModeChangeNotificationEnabled:0];
      [settingsCopy setReachabilityEventNotificationEnabled:0];
      [settingsCopy setSmartBulletinBoardNotificationEnabled:0];
      [settingsCopy setSmartBulletinBoardNotificationCondition:0];
      v7 = 1;
    }
  }

LABEL_38:
  version2 = [settingsCopy version];
  v45 = *MEMORY[0x277CCF628];
  if (version2 != *MEMORY[0x277CCF628])
  {
    v46 = objc_autoreleasePoolPush();
    selfCopy7 = self;
    v48 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
    {
      v49 = HMFGetLogIdentifier();
      version3 = [settingsCopy version];
      v53 = 138543874;
      v54 = v49;
      v55 = 2048;
      v56 = version3;
      v57 = 2048;
      v58 = 1;
      _os_log_impl(&dword_229538000, v48, OS_LOG_TYPE_INFO, "%{public}@Updating notification settings version from %ld to %ld", &v53, 0x20u);
    }

    objc_autoreleasePoolPop(v46);
    [settingsCopy setVersion:v45];
    v7 = 1;
  }

  v51 = *MEMORY[0x277D85DE8];
  return v7;
}

- (id)_createNotificationSettingsUsingSettingsModel:(id)model
{
  v41 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  workQueue = [(HMDCameraProfileSettingsManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_alloc_init(MEMORY[0x277CD1C50]);
  hasAnyNotificationFieldsSet = [modelCopy hasAnyNotificationFieldsSet];
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_INFO);
  if (hasAnyNotificationFieldsSet)
  {
    if (v11)
    {
      v12 = HMFGetLogIdentifier();
      v13 = [modelCopy debugDescription];
      smartBulletinBoardNotification = [modelCopy smartBulletinBoardNotification];
      v35 = 138543874;
      v36 = v12;
      v37 = 2112;
      v38 = v13;
      v39 = 2112;
      v40 = smartBulletinBoardNotification;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Migrating notification settings from settings model: %@, smart bulletin board notification: %@", &v35, 0x20u);
    }

    objc_autoreleasePoolPop(v8);
    [v6 setVersion:*MEMORY[0x277CCF628]];
    [v6 setAccessModeChangeNotificationEnabled:{objc_msgSend(modelCopy, "accessModeChangeNotificationEnabled")}];
    [v6 setReachabilityEventNotificationEnabled:{objc_msgSend(modelCopy, "reachabilityEventNotificationEnabled")}];
    smartBulletinBoardNotification2 = [modelCopy smartBulletinBoardNotification];
    [v6 setSmartBulletinBoardNotificationEnabled:{objc_msgSend(smartBulletinBoardNotification2, "isEnabled")}];

    smartBulletinBoardNotification3 = [modelCopy smartBulletinBoardNotification];
    condition = [smartBulletinBoardNotification3 condition];
    [v6 setSmartBulletinBoardNotificationCondition:condition];

    if (isHomePod() || isWatch())
    {
      v18 = objc_autoreleasePoolPush();
      v19 = selfCopy;
      v20 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = HMFGetLogIdentifier();
        v35 = 138543362;
        v36 = v21;
        _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@Forcing all notification settings to disabled on HomePod / Watch", &v35, 0xCu);
      }

      objc_autoreleasePoolPop(v18);
      [v6 setAccessModeChangeNotificationEnabled:0];
      [v6 setReachabilityEventNotificationEnabled:0];
      [v6 setSmartBulletinBoardNotificationEnabled:0];
      [v6 setSmartBulletinBoardNotificationCondition:0];
    }

    else if (isAppleTV())
    {
      v31 = objc_autoreleasePoolPush();
      v32 = selfCopy;
      v33 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        v34 = HMFGetLogIdentifier();
        v35 = 138543362;
        v36 = v34;
        _os_log_impl(&dword_229538000, v33, OS_LOG_TYPE_DEFAULT, "%{public}@Forcing access mode and reachability notification settings to disabled on AppleTV", &v35, 0xCu);
      }

      objc_autoreleasePoolPop(v31);
      [v6 setAccessModeChangeNotificationEnabled:0];
      [v6 setReachabilityEventNotificationEnabled:0];
    }

    v22 = objc_autoreleasePoolPush();
    v23 = selfCopy;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v25 = HMFGetLogIdentifier();
      v35 = 138543618;
      v36 = v25;
      v37 = 2112;
      v38 = v6;
      _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_INFO, "%{public}@Migrated to new notification settings: %@", &v35, 0x16u);
    }

    objc_autoreleasePoolPop(v22);
  }

  else
  {
    if (v11)
    {
      v26 = HMFGetLogIdentifier();
      v35 = 138543362;
      v36 = v26;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Creating new notification settings using default values", &v35, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
    [v6 setVersion:*MEMORY[0x277CCF628]];
    [v6 setAccessModeChangeNotificationEnabled:1];
    [v6 setReachabilityEventNotificationEnabled:1];
    doorbellInputEventCharacteristic = [(HMDCameraProfileSettingsManager *)selfCopy doorbellInputEventCharacteristic];

    if (doorbellInputEventCharacteristic && isAppleTV())
    {
      [(HMDCameraProfileSettingsManager *)selfCopy _enablePackageNotificationsOnSettings:v6];
    }
  }

  v28 = [v6 copy];

  v29 = *MEMORY[0x277D85DE8];

  return v28;
}

- (void)_initializeNotificationSettingsUsingSettingsModel:(id)model
{
  v18 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  workQueue = [(HMDCameraProfileSettingsManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  hapAccessory = [(HMDCameraProfileSettingsManager *)self hapAccessory];
  if (hapAccessory)
  {
    cameraBulletinNotificationManager = [(HMDCameraProfileSettingsManager *)self cameraBulletinNotificationManager];
    v8 = [cameraBulletinNotificationManager cameraUserNotificationSettingsForAccessory:hapAccessory];
    v9 = [v8 mutableCopy];

    if (v9)
    {
      if ([(HMDCameraProfileSettingsManager *)self _migrateNotificationSettings:v9])
      {
        [(HMDCameraProfileSettingsManager *)self _updateCameraBulletinNotificationManagerWithSettings:v9 forMessage:0];
      }
    }

    else
    {
      v14 = [(HMDCameraProfileSettingsManager *)self _createNotificationSettingsUsingSettingsModel:modelCopy];
      [(HMDCameraProfileSettingsManager *)self _updateCameraBulletinNotificationManagerWithSettings:v14 forMessage:0];
    }
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      v16 = 138543362;
      v17 = v13;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@Accessory reference is nil", &v16, 0xCu);
    }

    objc_autoreleasePoolPop(v10);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (id)_coreDataUpdateCompletionForMessage:(id)message
{
  messageCopy = message;
  workQueue = [(HMDCameraProfileSettingsManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __71__HMDCameraProfileSettingsManager__coreDataUpdateCompletionForMessage___block_invoke;
  v9[3] = &unk_27868A1D8;
  v9[4] = self;
  v10 = messageCopy;
  v6 = messageCopy;
  v7 = _Block_copy(v9);

  return v7;
}

void __71__HMDCameraProfileSettingsManager__coreDataUpdateCompletionForMessage___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71__HMDCameraProfileSettingsManager__coreDataUpdateCompletionForMessage___block_invoke_2;
  block[3] = &unk_27868A010;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v9 = v3;
  v10 = v5;
  v11 = v6;
  v7 = v3;
  dispatch_async(v4, block);
}

void __71__HMDCameraProfileSettingsManager__coreDataUpdateCompletionForMessage___block_invoke_2(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = objc_autoreleasePoolPush();
  v4 = *(a1 + 40);
  v5 = HMFGetOSLogHandle();
  v6 = v5;
  if (v2)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = HMFGetLogIdentifier();
      v8 = [*(a1 + 48) name];
      v9 = *(a1 + 32);
      v15 = 138543874;
      v16 = v7;
      v17 = 2112;
      v18 = v8;
      v19 = 2112;
      v20 = v9;
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_ERROR, "%{public}@Failed to update settings for message %@: %@", &v15, 0x20u);
    }

    objc_autoreleasePoolPop(v3);
    v10 = *(a1 + 48);
    v11 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
    [v10 respondWithError:v11];
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v13 = [*(a1 + 48) name];
      v15 = 138543618;
      v16 = v12;
      v17 = 2112;
      v18 = v13;
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Updated settings for message %@", &v15, 0x16u);
    }

    objc_autoreleasePoolPop(v3);
    [*(a1 + 48) respondWithSuccess];
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (HMDCameraProfileSettingsDerivedPropertiesModel)derivedPropertiesModel
{
  v20 = *MEMORY[0x277D85DE8];
  coreDataAdapter = [(HMDCameraProfileSettingsManager *)self coreDataAdapter];
  v15 = 0;
  v4 = [coreDataAdapter fetchDerivedPropertiesModelWithError:&v15];
  v5 = v15;

  if (!v4)
  {
    if (v5)
    {
      v6 = objc_autoreleasePoolPush();
      selfCopy = self;
      v8 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = HMFGetLogIdentifier();
        *buf = 138543618;
        v17 = v9;
        v18 = 2112;
        v19 = v5;
        _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_ERROR, "%{public}@Error fetching derived properties: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v6);
    }

    v10 = [HMDCameraProfileSettingsDerivedPropertiesModel alloc];
    derivedPropertiesModelID = [(HMDCameraProfileSettingsManager *)self derivedPropertiesModelID];
    uniqueIdentifier = [(HMDCameraProfileSettingsManager *)self uniqueIdentifier];
    v4 = [(HMBModel *)v10 initWithModelID:derivedPropertiesModelID parentModelID:uniqueIdentifier];

    [(HMDCameraProfileSettingsDerivedPropertiesModel *)v4 setCurrentAccessModeChangeReason:0];
    [(HMDCameraProfileSettingsDerivedPropertiesModel *)v4 setCurrentAccessMode:1];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)_handleConnectedToAccessory
{
  v12 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDCameraProfileSettingsManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v4 = objc_autoreleasePoolPush();
  selfCopy = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v10 = 138543362;
    v11 = v7;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Connected to accessory", &v10, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  [(HMDCameraProfileSettingsManager *)selfCopy _setManuallyDisabledCharacteristicNotificationsEnabled:1];
  if ([(HMDCameraProfileSettingsManager *)selfCopy isCurrentDeviceConfirmedPrimaryResident])
  {
    currentSettingsModel = [(HMDCameraProfileSettingsManager *)selfCopy currentSettingsModel];
    [(HMDCameraProfileSettingsManager *)selfCopy _updateDerivedPropertiesModelWithSettingsModel:currentSettingsModel userInitiated:0 reason:@"Accessory became reachable"];

    [(HMDCameraProfileSettingsManager *)selfCopy _synchronizeCurrentAccessModeSettingToCameraWithCompletion:0];
    if ([(HMDCameraProfileSettingsManager *)selfCopy needsInitialSettingsCharacteristicSynchronization])
    {
      [(HMDCameraProfileSettingsManager *)selfCopy _writeInitialSettingsCharacteristicsToCamera];
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)handleBulletinNotificationEnableStateDidChangeNotification:(id)notification
{
  notificationCopy = notification;
  workQueue = [(HMDCameraProfileSettingsManager *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __94__HMDCameraProfileSettingsManager_handleBulletinNotificationEnableStateDidChangeNotification___block_invoke;
  v7[3] = &unk_27868A750;
  v8 = notificationCopy;
  selfCopy = self;
  v6 = notificationCopy;
  dispatch_async(workQueue, v7);
}

void __94__HMDCameraProfileSettingsManager_handleBulletinNotificationEnableStateDidChangeNotification___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) object];
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
    [*(a1 + 40) _coordinateNotificationSettingsWithServiceBulletinNotification:v4];
  }

  else
  {
    v5 = objc_autoreleasePoolPush();
    v6 = *(a1 + 40);
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      v9 = [*(a1 + 32) name];
      v10 = [*(a1 + 32) object];
      v12 = 138543874;
      v13 = v8;
      v14 = 2112;
      v15 = v9;
      v16 = 2112;
      v17 = v10;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_ERROR, "%{public}@Unexpected notification object for %@: %@", &v12, 0x20u);
    }

    objc_autoreleasePoolPop(v5);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)handleUserRemoteAccessDidChangeNotification:(id)notification
{
  workQueue = [(HMDCameraProfileSettingsManager *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __79__HMDCameraProfileSettingsManager_handleUserRemoteAccessDidChangeNotification___block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(workQueue, block);
}

uint64_t __79__HMDCameraProfileSettingsManager_handleUserRemoteAccessDidChangeNotification___block_invoke(uint64_t a1)
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
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Current user's remote access changed, so notifying clients of current settings", &v8, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  result = [*(a1 + 32) _notifyClientsOfCurrentSettings];
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)handleCharacteristicsValueUpdatedNotification:(id)notification
{
  notificationCopy = notification;
  workQueue = [(HMDCameraProfileSettingsManager *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __81__HMDCameraProfileSettingsManager_handleCharacteristicsValueUpdatedNotification___block_invoke;
  v7[3] = &unk_27868A750;
  v7[4] = self;
  v8 = notificationCopy;
  v6 = notificationCopy;
  dispatch_async(workQueue, v7);
}

void __81__HMDCameraProfileSettingsManager_handleCharacteristicsValueUpdatedNotification___block_invoke(uint64_t a1)
{
  v32 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) isCurrentDeviceConfirmedPrimaryResident])
  {
    v2 = [*(a1 + 40) userInfo];
    v3 = [v2 objectForKeyedSubscript:@"HMDNotificationCharacteristicValueUpdatedChangedCharacteristicsKey"];

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

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    obj = v5;
    v6 = [obj countByEnumeratingWithState:&v23 objects:v31 count:16];
    if (v6)
    {
      v8 = v6;
      v9 = *v24;
      *&v7 = 138543618;
      v21 = v7;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v24 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v23 + 1) + 8 * i);
          v12 = [v11 type];
          v13 = [v12 isEqual:@"00000227-0000-1000-8000-0026BB765291"];

          if (v13)
          {
            v14 = objc_autoreleasePoolPush();
            v15 = *(a1 + 32);
            v16 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
            {
              v17 = HMFGetLogIdentifier();
              *buf = v21;
              v28 = v17;
              v29 = 2112;
              v30 = v11;
              _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@Handling Manually Disabled characteristic change: %@", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v14);
            v18 = *(a1 + 32);
            v19 = [v18 currentSettingsModel];
            [v18 _updateDerivedPropertiesModelWithSettingsModel:v19 userInitiated:1 reason:@"Manually disabled characteristic"];
          }
        }

        v8 = [obj countByEnumeratingWithState:&v23 objects:v31 count:16];
      }

      while (v8);
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)handleRecordingManagementServiceDidUpdateNotification:(id)notification
{
  workQueue = [(HMDCameraProfileSettingsManager *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __89__HMDCameraProfileSettingsManager_handleRecordingManagementServiceDidUpdateNotification___block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(workQueue, block);
}

void __89__HMDCameraProfileSettingsManager_handleRecordingManagementServiceDidUpdateNotification___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) hapAccessory];
  v3 = [v2 isReachable];

  if (v3)
  {
    v4 = *(a1 + 32);

    [v4 _handleConnectedToAccessory];
  }
}

- (void)handleAccessoryConfiguredNotification:(id)notification
{
  workQueue = [(HMDCameraProfileSettingsManager *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __73__HMDCameraProfileSettingsManager_handleAccessoryConfiguredNotification___block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(workQueue, block);
}

- (BOOL)_setAnyUserAtHomeFromHomeActivityStateWithHome:(id)home
{
  v41 = *MEMORY[0x277D85DE8];
  homeCopy = home;
  workQueue = [(HMDCameraProfileSettingsManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  homeActivityStateManager = [homeCopy homeActivityStateManager];
  currentHomeActivityStateDetails = [homeActivityStateManager currentHomeActivityStateDetails];

  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v31 = 138543618;
    v32 = v11;
    v33 = 2112;
    v34 = currentHomeActivityStateDetails;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Evaluating with Home Activity State: %@", &v31, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  if ([currentHomeActivityStateDetails state])
  {
    v12 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(currentHomeActivityStateDetails, "isHomeOccupied")}];
    v13 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(currentHomeActivityStateDetails, "state") == 3}];
    isAnyUserAtHome = [(HMDCameraProfileSettingsManager *)selfCopy isAnyUserAtHome];
    v15 = HMFEqualObjects();

    if (v15 && ([(HMDCameraProfileSettingsManager *)selfCopy isHomeSleeping], v16 = objc_claimAutoreleasedReturnValue(), v17 = HMFEqualObjects(), v16, (v17 & 1) != 0))
    {
      v18 = 0;
    }

    else
    {
      v19 = objc_autoreleasePoolPush();
      v20 = selfCopy;
      v21 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = HMFGetLogIdentifier();
        isAnyUserAtHome2 = [(HMDCameraProfileSettingsManager *)v20 isAnyUserAtHome];
        isHomeSleeping = [(HMDCameraProfileSettingsManager *)v20 isHomeSleeping];
        v31 = 138544386;
        v32 = v22;
        v33 = 2112;
        v34 = isAnyUserAtHome2;
        v35 = 2112;
        v36 = v12;
        v37 = 2112;
        v38 = isHomeSleeping;
        v39 = 2112;
        v40 = v13;
        _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@Updating isAnyUserAtHome/isHomeSleeping using Home Activity State from %@ to %@ / %@ to %@", &v31, 0x34u);
      }

      objc_autoreleasePoolPop(v19);
      [(HMDCameraProfileSettingsManager *)v20 setAnyUserAtHome:v12];
      [(HMDCameraProfileSettingsManager *)v20 setHomeSleeping:v13];
      v18 = 1;
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
      v31 = 138543362;
      v32 = v28;
      _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_ERROR, "%{public}@Home Activity State is unknown; setting isAnyUserAtHome to nil", &v31, 0xCu);
    }

    objc_autoreleasePoolPop(v25);
    [(HMDCameraProfileSettingsManager *)v26 setAnyUserAtHome:0];
    [(HMDCameraProfileSettingsManager *)v26 setHomeSleeping:0];
    v18 = 0;
  }

  v29 = *MEMORY[0x277D85DE8];
  return v18;
}

- (id)_isAnyUserAtHomeForPresence:(id)presence
{
  presenceCopy = presence;
  if ([presenceCopy hasPresenceRegionForAllUsers])
  {
    v4 = MEMORY[0x277CCABB0];
    isAnyUserAtHome = [presenceCopy isAnyUserAtHome];

    v6 = [v4 numberWithBool:isAnyUserAtHome];
  }

  else
  {
    isAnyUserAtHome2 = [presenceCopy isAnyUserAtHome];

    if (isAnyUserAtHome2)
    {
      v6 = MEMORY[0x277CBEC38];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (BOOL)_setAnyUserAtHomeFromPresenceMonitorWithHome:(id)home
{
  v33 = *MEMORY[0x277D85DE8];
  homeCopy = home;
  workQueue = [(HMDCameraProfileSettingsManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  presenceMonitor = [homeCopy presenceMonitor];
  currentHomePresence = [presenceMonitor currentHomePresence];

  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v27 = 138543618;
    v28 = v11;
    v29 = 2112;
    v30 = currentHomePresence;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Evaluating home presence: %@", &v27, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  if (currentHomePresence)
  {
    v12 = [(HMDCameraProfileSettingsManager *)selfCopy _isAnyUserAtHomeForPresence:currentHomePresence];
    isAnyUserAtHome = [(HMDCameraProfileSettingsManager *)selfCopy isAnyUserAtHome];
    v14 = HMFEqualObjects();

    if ((v14 & 1) == 0)
    {
      v15 = objc_autoreleasePoolPush();
      v16 = selfCopy;
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = HMFGetLogIdentifier();
        isAnyUserAtHome2 = [(HMDCameraProfileSettingsManager *)v16 isAnyUserAtHome];
        v27 = 138543874;
        v28 = v18;
        v29 = 2112;
        v30 = isAnyUserAtHome2;
        v31 = 2112;
        v32 = v12;
        _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@Updating isAnyUserAtHome from %@ to %@", &v27, 0x20u);
      }

      objc_autoreleasePoolPop(v15);
      [(HMDCameraProfileSettingsManager *)v16 setAnyUserAtHome:v12];
    }

    v20 = v14 ^ 1;
  }

  else
  {
    v21 = objc_autoreleasePoolPush();
    v22 = selfCopy;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = HMFGetLogIdentifier();
      v27 = 138543362;
      v28 = v24;
      _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_ERROR, "%{public}@Presence is unavailable; setting isAnyUserAtHome to nil", &v27, 0xCu);
    }

    objc_autoreleasePoolPop(v21);
    [(HMDCameraProfileSettingsManager *)v22 setAnyUserAtHome:0];
    v20 = 0;
  }

  v25 = *MEMORY[0x277D85DE8];
  return v20;
}

- (BOOL)_evaluateHomePresence
{
  v18 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDCameraProfileSettingsManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  hapAccessory = [(HMDCameraProfileSettingsManager *)self hapAccessory];
  home = [hapAccessory home];

  if (home)
  {
    featuresDataSource = [(HMDCameraProfileSettingsManager *)self featuresDataSource];
    isHomeActivityStateReplacesPresenceMonitorFeatureEnabled = [featuresDataSource isHomeActivityStateReplacesPresenceMonitorFeatureEnabled];

    if (isHomeActivityStateReplacesPresenceMonitorFeatureEnabled)
    {
      v8 = [(HMDCameraProfileSettingsManager *)self _setAnyUserAtHomeFromHomeActivityStateWithHome:home];
    }

    else
    {
      v8 = [(HMDCameraProfileSettingsManager *)self _setAnyUserAtHomeFromPresenceMonitorWithHome:home];
    }

    v13 = v8;
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      v16 = 138543362;
      v17 = v12;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_ERROR, "%{public}@Home is nil; setting isAnyUserAtHome to nil", &v16, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
    [(HMDCameraProfileSettingsManager *)selfCopy setAnyUserAtHome:0];
    [(HMDCameraProfileSettingsManager *)selfCopy setHomeSleeping:0];
    v13 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

- (void)handleHomePresenceEvaluatedNotification:(id)notification
{
  if ([(HMDCameraProfileSettingsManager *)self isCurrentDeviceConfirmedPrimaryResident])
  {
    workQueue = [(HMDCameraProfileSettingsManager *)self workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __75__HMDCameraProfileSettingsManager_handleHomePresenceEvaluatedNotification___block_invoke;
    block[3] = &unk_27868A728;
    block[4] = self;
    dispatch_async(workQueue, block);
  }
}

void __75__HMDCameraProfileSettingsManager_handleHomePresenceEvaluatedNotification___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = HMFGetLogIdentifier();
    v9 = 138543362;
    v10 = v5;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@Received Home Presence Evaluated", &v9, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  if ([*(a1 + 32) _evaluateHomePresence])
  {
    v6 = *(a1 + 32);
    v7 = [v6 currentSettingsModel];
    [v6 _updateDerivedPropertiesModelWithSettingsModel:v7 userInitiated:0 reason:@"Presence changed"];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)handlePrimaryResidentUpdatedNotification:(id)notification
{
  workQueue = [(HMDCameraProfileSettingsManager *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __76__HMDCameraProfileSettingsManager_handlePrimaryResidentUpdatedNotification___block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(workQueue, block);
}

uint64_t __76__HMDCameraProfileSettingsManager_handlePrimaryResidentUpdatedNotification___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) isCurrentDeviceConfirmedPrimaryResident];
  v3 = objc_autoreleasePoolPush();
  v4 = *(a1 + 32);
  v5 = HMFGetOSLogHandle();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v6)
    {
      v7 = HMFGetLogIdentifier();
      v13 = 138543362;
      v14 = v7;
      _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@We are now the primary resident", &v13, 0xCu);
    }

    objc_autoreleasePoolPop(v3);
    [*(a1 + 32) _evaluateHomePresence];
    v8 = *(a1 + 32);
    v9 = [v8 currentSettingsModel];
    [v8 _updateDerivedPropertiesModelWithSettingsModel:v9 userInitiated:0 reason:@"Current device became primary resident"];

    result = [*(a1 + 32) _synchronizeCurrentAccessModeSettingToCameraWithCompletion:0];
  }

  else
  {
    if (v6)
    {
      v11 = HMFGetLogIdentifier();
      v13 = 138543362;
      v14 = v11;
      _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@Another device is primary resident, clearing anyUserAtHome", &v13, 0xCu);
    }

    objc_autoreleasePoolPop(v3);
    [*(a1 + 32) setAnyUserAtHome:0];
    result = [*(a1 + 32) setHomeSleeping:0];
  }

  v12 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_handleCameraSettingsDidChangeMessage:(id)message
{
  v62 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  workQueue = [(HMDCameraProfileSettingsManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    shortDescription = [messageCopy shortDescription];
    *buf = 138543618;
    v53 = v9;
    v54 = 2112;
    v55 = shortDescription;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Received camera settings did change message: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  v11 = [messageCopy dictionaryForKey:@"HMDCS.AccessModeChange"];
  v12 = [v11 hmf_numberForKey:@"HMDCS.amu.value"];
  v51 = [v11 hmf_numberForKey:@"HMDCS.amu.changeReason"];
  v13 = [v11 hmf_dateForKey:@"HMDCS.amu.changeDate"];
  v14 = v13;
  if (v12 && v51 && v13)
  {
    hapAccessory = [(HMDCameraProfileSettingsManager *)selfCopy hapAccessory];
    cameraProfiles = [hapAccessory cameraProfiles];
    anyObject = [cameraProfiles anyObject];

    home = [hapAccessory home];
    currentNotificationSettings = [(HMDCameraProfileSettingsManager *)selfCopy currentNotificationSettings];
    isAccessModeChangeNotificationEnabled = [currentNotificationSettings isAccessModeChangeNotificationEnabled];

    if (isAccessModeChangeNotificationEnabled && anyObject && home && [(HMDCameraProfileSettingsManager *)selfCopy canRevealCurrentAccessMode])
    {
      v20 = [HMDCameraAccessModeChangedBulletin alloc];
      v46 = anyObject;
      unsignedIntegerValue = [v12 unsignedIntegerValue];
      integerValue = [v51 integerValue];
      v23 = unsignedIntegerValue;
      anyObject = v46;
      v24 = [(HMDCameraAccessModeChangedBulletin *)v20 initWithAccessMode:v23 camera:v46 home:home changeReason:integerValue changeDate:v14];
      if (v24)
      {
        v25 = objc_autoreleasePoolPush();
        v26 = selfCopy;
        v27 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
        {
          HMFGetLogIdentifier();
          v28 = contexta = v25;
          *buf = 138543618;
          v53 = v28;
          v54 = 2112;
          v55 = v24;
          _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_INFO, "%{public}@Posting camera access mode changed bulletin based upon notification: %@", buf, 0x16u);

          v25 = contexta;
        }

        objc_autoreleasePoolPop(v25);
        bulletinBoard = [(HMDCameraProfileSettingsManager *)v26 bulletinBoard];
        [bulletinBoard insertCameraAccessModeChangedBulletin:v24];

        anyObject = v46;
      }
    }

    else
    {
      context = objc_autoreleasePoolPush();
      v35 = selfCopy;
      v36 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
      {
        v37 = HMFGetLogIdentifier();
        v38 = HMFBooleanToString();
        v47 = anyObject;
        if (anyObject)
        {
          v39 = @"<not nil>";
        }

        else
        {
          v39 = @"<nil>";
        }

        v43 = v12;
        if (home)
        {
          v40 = @"<not nil>";
        }

        else
        {
          v40 = @"<nil>";
        }

        [(HMDCameraProfileSettingsManager *)v35 canRevealCurrentAccessMode];
        HMFBooleanToString();
        v41 = v45 = v14;
        *buf = 138544386;
        v53 = v37;
        v54 = 2112;
        v55 = v38;
        v56 = 2112;
        v57 = v39;
        anyObject = v47;
        v58 = 2112;
        v59 = v40;
        v12 = v44;
        v60 = 2112;
        v61 = v41;
        _os_log_impl(&dword_229538000, v36, OS_LOG_TYPE_INFO, "%{public}@Not posting access mode change bulletin due to settings change message because accessModeChangeNotificationEnabled=%@ cameraProfile=%@ home=%@ canRevealCurrentAccessMode=%@", buf, 0x34u);

        v14 = v45;
      }

      objc_autoreleasePoolPop(context);
    }

    [messageCopy respondWithSuccess];
  }

  else
  {
    v30 = objc_autoreleasePoolPush();
    v31 = selfCopy;
    v32 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      v33 = HMFGetLogIdentifier();
      messagePayload = [messageCopy messagePayload];
      *buf = 138543618;
      v53 = v33;
      v54 = 2112;
      v55 = messagePayload;
      _os_log_impl(&dword_229538000, v32, OS_LOG_TYPE_ERROR, "%{public}@Invalid access mode change payload %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v30);
    hapAccessory = [MEMORY[0x277CCA9B8] hmErrorWithCode:27];
    [messageCopy respondWithError:hapAccessory];
  }

  v42 = *MEMORY[0x277D85DE8];
}

- (void)_handleUpdateReachabilityEventNotificationEnabledMessage:(id)message
{
  v31 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  workQueue = [(HMDCameraProfileSettingsManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v27 = 138543362;
    v28 = v9;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Processing request to change reachability event notification enabled", &v27, 0xCu);
  }

  objc_autoreleasePoolPop(v6);
  hapAccessory = [(HMDCameraProfileSettingsManager *)selfCopy hapAccessory];
  home = [hapAccessory home];
  bulletinNotificationsSupported = [home bulletinNotificationsSupported];

  if (bulletinNotificationsSupported)
  {
    messagePayload = [messageCopy messagePayload];
    v14 = [messagePayload hmf_BOOLForKey:*MEMORY[0x277CCF660]];

    v15 = objc_autoreleasePoolPush();
    v16 = selfCopy;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      v19 = HMFEnabledStatusToString();
      v27 = 138543618;
      v28 = v18;
      v29 = 2112;
      v30 = v19;
      _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@Registering reachability event notifications as %@", &v27, 0x16u);
    }

    objc_autoreleasePoolPop(v15);
    currentNotificationSettings = [(HMDCameraProfileSettingsManager *)v16 currentNotificationSettings];
    v21 = [currentNotificationSettings mutableCopy];

    [v21 setReachabilityEventNotificationEnabled:v14];
    [(HMDCameraProfileSettingsManager *)v16 _updateCameraBulletinNotificationManagerWithSettings:v21 forMessage:messageCopy];
  }

  else
  {
    v22 = objc_autoreleasePoolPush();
    v23 = selfCopy;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = HMFGetLogIdentifier();
      v27 = 138543362;
      v28 = v25;
      _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_ERROR, "%{public}@Camera reachability notification cannot be modified when bulletin notifications are not supported.", &v27, 0xCu);
    }

    objc_autoreleasePoolPop(v22);
    v21 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
    [messageCopy respondWithError:v21];
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (void)_handleUpdateActivityZonesMessage:(id)message
{
  v48[2] = *MEMORY[0x277D85DE8];
  messageCopy = message;
  workQueue = [(HMDCameraProfileSettingsManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    *buf = 138543362;
    v43 = v9;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Processing request to update activity zones", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v6);
  if (([(HMDCameraProfileSettingsManager *)selfCopy supportedFeatures]& 2) != 0)
  {
    v15 = [messageCopy dataForKey:*MEMORY[0x277CCF688]];
    if (v15)
    {
      v16 = MEMORY[0x277CCAAC8];
      v17 = MEMORY[0x277CBEB98];
      v48[0] = objc_opt_class();
      v48[1] = objc_opt_class();
      v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v48 count:2];
      v19 = [v17 setWithArray:v18];
      v41 = 0;
      v20 = [v16 unarchivedObjectOfClasses:v19 fromData:v15 error:&v41];
      v21 = v41;

      if (v20)
      {
        v22 = [messageCopy BOOLForKey:*MEMORY[0x277CCF640]];
        currentSettingsModel = [(HMDCameraProfileSettingsManager *)selfCopy currentSettingsModel];
        [currentSettingsModel setActivityZones:v20];
        [currentSettingsModel setActivityZonesIncludedForSignificantEventDetection:v22];
        v24 = objc_autoreleasePoolPush();
        v25 = selfCopy;
        v26 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
        {
          v27 = HMFGetLogIdentifier();
          v28 = HMFBooleanToString();
          *buf = 138543874;
          v43 = v27;
          v44 = 2112;
          v45 = v20;
          v46 = 2112;
          v47 = v28;
          _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_INFO, "%{public}@Updating activity zones: %@ activityZonesIncludedForSignificantEventDetection: %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v24);
        coreDataAdapter = [(HMDCameraProfileSettingsManager *)v25 coreDataAdapter];
        v30 = [(HMDCameraProfileSettingsManager *)v25 _coreDataUpdateCompletionForMessage:messageCopy];
        [coreDataAdapter updateCameraProfileSettingsModel:currentSettingsModel completion:v30];
      }

      else
      {
        v36 = objc_autoreleasePoolPush();
        v37 = selfCopy;
        v38 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          v39 = HMFGetLogIdentifier();
          *buf = 138543618;
          v43 = v39;
          v44 = 2112;
          v45 = v21;
          _os_log_impl(&dword_229538000, v38, OS_LOG_TYPE_ERROR, "%{public}@Failed to deserialize activity zones: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v36);
        currentSettingsModel = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
        [messageCopy respondWithError:currentSettingsModel];
      }
    }

    else
    {
      v31 = objc_autoreleasePoolPush();
      v32 = selfCopy;
      v33 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        v34 = HMFGetLogIdentifier();
        messagePayload = [messageCopy messagePayload];
        *buf = 138543618;
        v43 = v34;
        v44 = 2112;
        v45 = messagePayload;
        _os_log_impl(&dword_229538000, v33, OS_LOG_TYPE_ERROR, "%{public}@Could not find activity zones in message payload: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v31);
      v21 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
      [messageCopy respondWithError:v21];
    }
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    v11 = selfCopy;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      [(HMDCameraProfileSettingsManager *)v11 supportedFeatures];
      v14 = HMCameraSupportedFeaturesAsString();
      *buf = 138543618;
      v43 = v13;
      v44 = 2112;
      v45 = v14;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@Accessory with supported features: %@ does not support recording", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    v15 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
    [messageCopy respondWithError:v15];
  }

  v40 = *MEMORY[0x277D85DE8];
}

- (void)_updateCameraBulletinNotificationManagerWithSettings:(id)settings forMessage:(id)message
{
  settingsCopy = settings;
  messageCopy = message;
  doorbellInputEventCharacteristic = [(HMDCameraProfileSettingsManager *)self doorbellInputEventCharacteristic];
  service = [doorbellInputEventCharacteristic service];
  bulletinBoardNotification = [service bulletinBoardNotification];

  isEnabled = [bulletinBoardNotification isEnabled];
  objc_initWeak(&location, self);
  cameraBulletinNotificationManager = [(HMDCameraProfileSettingsManager *)self cameraBulletinNotificationManager];
  hapAccessory = [(HMDCameraProfileSettingsManager *)self hapAccessory];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __99__HMDCameraProfileSettingsManager__updateCameraBulletinNotificationManagerWithSettings_forMessage___block_invoke;
  v16[3] = &unk_278685D08;
  objc_copyWeak(&v19, &location);
  v14 = messageCopy;
  v17 = v14;
  v15 = settingsCopy;
  v18 = v15;
  [cameraBulletinNotificationManager updateNotificationRegistrationsWithSettings:v15 accessory:hapAccessory doorbellPressNotificationEnabled:isEnabled completion:v16];

  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);
}

void __99__HMDCameraProfileSettingsManager__updateCameraBulletinNotificationManagerWithSettings_forMessage___block_invoke(id *a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v5 = [WeakRetained workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __99__HMDCameraProfileSettingsManager__updateCameraBulletinNotificationManagerWithSettings_forMessage___block_invoke_2;
  v7[3] = &unk_2786891E0;
  v8 = v3;
  v9 = a1[4];
  v10 = WeakRetained;
  v11 = a1[5];
  v6 = v3;
  dispatch_async(v5, v7);
}

void __99__HMDCameraProfileSettingsManager__updateCameraBulletinNotificationManagerWithSettings_forMessage___block_invoke_2(void *a1)
{
  if (a1[4])
  {
    v2 = a1[5];
    v6 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
    [v2 respondWithError:v6];
  }

  else
  {
    v3 = a1[7];
    v4 = a1[5];
    v5 = a1[6];

    [v5 _updateNotificationSettings:v3 forMessage:v4];
  }
}

- (void)_handleBulletinBoardNotificationCommitMessage:(id)message
{
  v44 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  workQueue = [(HMDCameraProfileSettingsManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v38 = 138543362;
    v39 = v9;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Processing request to change bulletin board", &v38, 0xCu);
  }

  objc_autoreleasePoolPop(v6);
  hapAccessory = [(HMDCameraProfileSettingsManager *)selfCopy hapAccessory];
  home = [hapAccessory home];
  bulletinNotificationsSupported = [home bulletinNotificationsSupported];

  if ((bulletinNotificationsSupported & 1) == 0)
  {
    v13 = objc_autoreleasePoolPush();
    v14 = selfCopy;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      v38 = 138543362;
      v39 = v16;
      _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_ERROR, "%{public}@Bulletin board notification cannot be modified when bulletin notifications are not supported.", &v38, 0xCu);
      goto LABEL_9;
    }

LABEL_10:

    objc_autoreleasePoolPop(v13);
    v18 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
    [messageCopy respondWithError:v18];
    goto LABEL_24;
  }

  if (([(HMDCameraProfileSettingsManager *)selfCopy supportedFeatures]& 2) == 0)
  {
    v13 = objc_autoreleasePoolPush();
    v14 = selfCopy;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      [(HMDCameraProfileSettingsManager *)v14 supportedFeatures];
      v17 = HMCameraSupportedFeaturesAsString();
      v38 = 138543618;
      v39 = v16;
      v40 = 2112;
      v41 = v17;
      _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_ERROR, "%{public}@Accessory with supported features: %@ does not support recording", &v38, 0x16u);

LABEL_9:
      goto LABEL_10;
    }

    goto LABEL_10;
  }

  v19 = *MEMORY[0x277CD20E0];
  v18 = [messageCopy numberForKey:*MEMORY[0x277CD20E0]];
  if (v18)
  {
    v20 = [messageCopy predicateForKey:*MEMORY[0x277CD20D8]];
    v21 = objc_autoreleasePoolPush();
    v22 = selfCopy;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = HMFGetLogIdentifier();
      v38 = 138543874;
      v39 = v24;
      v40 = 2112;
      v41 = v18;
      v42 = 2112;
      v43 = v20;
      _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_INFO, "%{public}@Updating smart bulletin board notification to enabled: %@, condition: %@", &v38, 0x20u);
    }

    objc_autoreleasePoolPop(v21);
    currentNotificationSettings = [(HMDCameraProfileSettingsManager *)v22 currentNotificationSettings];
    v26 = [currentNotificationSettings mutableCopy];

    [v26 setSmartBulletinBoardNotificationEnabled:{objc_msgSend(v18, "BOOLValue")}];
    [v26 setSmartBulletinBoardNotificationCondition:v20];
    currentNotificationSettings2 = [(HMDCameraProfileSettingsManager *)v22 currentNotificationSettings];
    v28 = [v26 isEqual:currentNotificationSettings2];

    if (v28)
    {
      v29 = objc_autoreleasePoolPush();
      v30 = v22;
      v31 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
      {
        v32 = HMFGetLogIdentifier();
        v38 = 138543618;
        v39 = v32;
        v40 = 2112;
        v41 = v26;
        _os_log_impl(&dword_229538000, v31, OS_LOG_TYPE_INFO, "%{public}@Requested changes match existing notification settings: %@", &v38, 0x16u);
      }

      objc_autoreleasePoolPop(v29);
      [messageCopy respondWithSuccess];
    }

    else
    {
      [(HMDCameraProfileSettingsManager *)v22 _updateCameraBulletinNotificationManagerWithSettings:v26 forMessage:messageCopy];
    }
  }

  else
  {
    v33 = objc_autoreleasePoolPush();
    v34 = selfCopy;
    v35 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      v36 = HMFGetLogIdentifier();
      v38 = 138543618;
      v39 = v36;
      v40 = 2112;
      v41 = v19;
      _os_log_impl(&dword_229538000, v35, OS_LOG_TYPE_ERROR, "%{public}@Bulletin board commit message missing key: %@", &v38, 0x16u);
    }

    objc_autoreleasePoolPop(v33);
    v20 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
    [messageCopy respondWithError:v20];
  }

LABEL_24:
  v37 = *MEMORY[0x277D85DE8];
}

- (void)_handleUpdateAccessModeChangeNotificationEnabledMessage:(id)message
{
  v31 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  workQueue = [(HMDCameraProfileSettingsManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v27 = 138543362;
    v28 = v9;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Processing request to change access mode change notification enabled", &v27, 0xCu);
  }

  objc_autoreleasePoolPop(v6);
  hapAccessory = [(HMDCameraProfileSettingsManager *)selfCopy hapAccessory];
  home = [hapAccessory home];
  bulletinNotificationsSupported = [home bulletinNotificationsSupported];

  if ((bulletinNotificationsSupported & 1) == 0)
  {
    v13 = objc_autoreleasePoolPush();
    v14 = selfCopy;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      v27 = 138543362;
      v28 = v16;
      _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_ERROR, "%{public}@Access mode change notification cannot be modified when bulletin notifications are not supported.", &v27, 0xCu);
      goto LABEL_10;
    }

LABEL_11:

    objc_autoreleasePoolPop(v13);
    v18 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
    [messageCopy respondWithError:v18];
    goto LABEL_15;
  }

  if (([(HMDCameraProfileSettingsManager *)selfCopy supportedFeatures]& 1) == 0 && ([(HMDCameraProfileSettingsManager *)selfCopy supportedFeatures]& 4) == 0)
  {
    v13 = objc_autoreleasePoolPush();
    v14 = selfCopy;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      [(HMDCameraProfileSettingsManager *)v14 supportedFeatures];
      v17 = HMCameraSupportedFeaturesAsString();
      v27 = 138543618;
      v28 = v16;
      v29 = 2112;
      v30 = v17;
      _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_ERROR, "%{public}@Accessory with supported features: %@ support neither streaming nor recording access control.", &v27, 0x16u);

LABEL_10:
      goto LABEL_11;
    }

    goto LABEL_11;
  }

  v19 = [messageCopy BOOLForKey:*MEMORY[0x277CCF630]];
  v20 = objc_autoreleasePoolPush();
  v21 = selfCopy;
  v22 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
  {
    v23 = HMFGetLogIdentifier();
    v24 = HMFBooleanToString();
    v27 = 138543618;
    v28 = v23;
    v29 = 2112;
    v30 = v24;
    _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_INFO, "%{public}@Updating access mode change notification enabled to %@", &v27, 0x16u);
  }

  objc_autoreleasePoolPop(v20);
  currentNotificationSettings = [(HMDCameraProfileSettingsManager *)v21 currentNotificationSettings];
  v18 = [currentNotificationSettings mutableCopy];

  [v18 setAccessModeChangeNotificationEnabled:v19];
  [(HMDCameraProfileSettingsManager *)v21 _updateCameraBulletinNotificationManagerWithSettings:v18 forMessage:messageCopy];
LABEL_15:

  v26 = *MEMORY[0x277D85DE8];
}

- (void)_handleUpdateRecordingTriggerEventsMessage:(id)message
{
  v35 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  workQueue = [(HMDCameraProfileSettingsManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v29 = 138543362;
    v30 = v9;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Processing request to change recording trigger events", &v29, 0xCu);
  }

  objc_autoreleasePoolPop(v6);
  if (([(HMDCameraProfileSettingsManager *)selfCopy supportedFeatures]& 2) != 0)
  {
    v15 = [messageCopy numberForKey:*MEMORY[0x277CCF668]];
    if (v15)
    {
      currentSettingsModel = [(HMDCameraProfileSettingsManager *)selfCopy currentSettingsModel];
      [currentSettingsModel setRecordingEventTriggers:{objc_msgSend(currentSettingsModel, "recordingEventTriggers") & 0xFFFFFFFFFFFFFFE0 | objc_msgSend(v15, "unsignedIntegerValue") & 0x1F}];
      v17 = objc_autoreleasePoolPush();
      v18 = selfCopy;
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        v20 = HMFGetLogIdentifier();
        v21 = HMCameraSignificantEventTypesAsString();
        v29 = 138543618;
        v30 = v20;
        v31 = 2112;
        v32 = v21;
        _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_INFO, "%{public}@Updating recordingTriggerEvents to %@", &v29, 0x16u);
      }

      objc_autoreleasePoolPop(v17);
      coreDataAdapter = [(HMDCameraProfileSettingsManager *)v18 coreDataAdapter];
      v23 = [(HMDCameraProfileSettingsManager *)v18 _coreDataUpdateCompletionForMessage:messageCopy];
      [coreDataAdapter updateCameraProfileSettingsModel:currentSettingsModel completion:v23];
    }

    else
    {
      v24 = objc_autoreleasePoolPush();
      v25 = selfCopy;
      v26 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v27 = HMFGetLogIdentifier();
        v29 = 138543874;
        v30 = v27;
        v31 = 2112;
        v32 = 0;
        v33 = 2112;
        v34 = messageCopy;
        _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_ERROR, "%{public}@Invalid parameter: %@ for message: %@", &v29, 0x20u);
      }

      objc_autoreleasePoolPop(v24);
      currentSettingsModel = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
      [messageCopy respondWithError:currentSettingsModel];
    }
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    v11 = selfCopy;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      [(HMDCameraProfileSettingsManager *)v11 supportedFeatures];
      v14 = HMCameraSupportedFeaturesAsString();
      v29 = 138543618;
      v30 = v13;
      v31 = 2112;
      v32 = v14;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@Accessory with supported features: %@ does not support recording", &v29, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    v15 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
    [messageCopy respondWithError:v15];
  }

  v28 = *MEMORY[0x277D85DE8];
}

- (void)_handleSynchronizeCloudStorageWithRecordingAccessModesMessage:(id)message
{
  v14 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  workQueue = [(HMDCameraProfileSettingsManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v12 = 138543362;
    v13 = v9;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Processing remote request to synchronize cloud storage with recording access modes", &v12, 0xCu);
  }

  objc_autoreleasePoolPop(v6);
  quotaCoordinator = [(HMDCameraProfileSettingsManager *)selfCopy quotaCoordinator];
  [quotaCoordinator synchronizeCloudStorageWithRecordingAccessModes];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_handleUpdateAccessModeMessage:(id)message
{
  v51 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  workQueue = [(HMDCameraProfileSettingsManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    *buf = 138543362;
    v46 = v9;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Processing request to change access mode", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v6);
  v10 = [messageCopy numberForKey:*MEMORY[0x277CCF638]];
  v11 = [messageCopy numberForKey:*MEMORY[0x277CCF658]];
  v12 = v11;
  if (v10)
  {
    v13 = v11 == 0;
  }

  else
  {
    v13 = 1;
  }

  if (v13)
  {
    v14 = objc_autoreleasePoolPush();
    v15 = selfCopy;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      messagePayload = [messageCopy messagePayload];
      *buf = 138543618;
      v46 = v17;
      v47 = 2112;
      v48 = messagePayload;
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_ERROR, "%{public}@Cannot find required parameters in message payload: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v14);
    v19 = MEMORY[0x277CCA9B8];
    v20 = 20;
    goto LABEL_24;
  }

  unsignedIntegerValue = [v10 unsignedIntegerValue];
  unsignedIntegerValue2 = [v12 unsignedIntegerValue];
  v23 = unsignedIntegerValue2;
  if ((unsignedIntegerValue2 - 3) >= 2)
  {
    v31 = objc_autoreleasePoolPush();
    v32 = selfCopy;
    v33 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v34 = HMFGetLogIdentifier();
      *buf = 138543618;
      v46 = v34;
      v47 = 2048;
      v48 = v23;
      _os_log_impl(&dword_229538000, v33, OS_LOG_TYPE_ERROR, "%{public}@Invalid presence type enum value received: %ld", buf, 0x16u);
    }

    v35 = v31;
  }

  else
  {
    if (unsignedIntegerValue < 4)
    {
      if (!HMIsRecordingAllowedForCameraAccessMode() || ([(HMDCameraProfileSettingsManager *)selfCopy supportedFeatures]& 2) != 0)
      {
        if (!HMIsStreamingAllowedForCameraAccessMode() || ([(HMDCameraProfileSettingsManager *)selfCopy supportedFeatures]& 1) != 0)
        {
          quotaCoordinator = [(HMDCameraProfileSettingsManager *)selfCopy quotaCoordinator];
          v43[0] = MEMORY[0x277D85DD0];
          v43[1] = 3221225472;
          v43[2] = __66__HMDCameraProfileSettingsManager__handleUpdateAccessModeMessage___block_invoke;
          v43[3] = &unk_27868A1D8;
          v43[4] = selfCopy;
          v44 = messageCopy;
          [quotaCoordinator updateCloudStorageAndSettingsWithAccessMode:unsignedIntegerValue forCameraHomePresence:v23 completion:v43];

          goto LABEL_25;
        }

        v24 = objc_autoreleasePoolPush();
        v25 = selfCopy;
        v26 = HMFGetOSLogHandle();
        if (!os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_31;
        }

        v27 = HMFGetLogIdentifier();
        v28 = HMCameraAccessModeAsString();
        [(HMDCameraProfileSettingsManager *)v25 supportedFeatures];
        v29 = HMCameraSupportedFeaturesAsString();
        *buf = 138543874;
        v46 = v27;
        v47 = 2112;
        v48 = v28;
        v49 = 2112;
        v50 = v29;
        v30 = "%{public}@Requested access mode %@ enables streaming but supported features do not include streaming: %@";
      }

      else
      {
        v24 = objc_autoreleasePoolPush();
        v25 = selfCopy;
        v26 = HMFGetOSLogHandle();
        if (!os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
LABEL_31:

          objc_autoreleasePoolPop(v24);
          v19 = MEMORY[0x277CCA9B8];
          v20 = 48;
          goto LABEL_24;
        }

        v27 = HMFGetLogIdentifier();
        v28 = HMCameraAccessModeAsString();
        [(HMDCameraProfileSettingsManager *)v25 supportedFeatures];
        v29 = HMCameraSupportedFeaturesAsString();
        *buf = 138543874;
        v46 = v27;
        v47 = 2112;
        v48 = v28;
        v49 = 2112;
        v50 = v29;
        v30 = "%{public}@Requested access mode %@ enables recording but supported features do not include recording: %@";
      }

      _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_ERROR, v30, buf, 0x20u);

      goto LABEL_31;
    }

    v36 = objc_autoreleasePoolPush();
    v37 = selfCopy;
    v38 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      v39 = HMFGetLogIdentifier();
      *buf = 138543618;
      v46 = v39;
      v47 = 2048;
      v48 = unsignedIntegerValue;
      _os_log_impl(&dword_229538000, v38, OS_LOG_TYPE_ERROR, "%{public}@Invalid access mode enum value received: %ld", buf, 0x16u);
    }

    v35 = v36;
  }

  objc_autoreleasePoolPop(v35);
  v19 = MEMORY[0x277CCA9B8];
  v20 = 3;
LABEL_24:
  v40 = [v19 hmErrorWithCode:v20];
  [messageCopy respondWithError:v40];

LABEL_25:
  v41 = *MEMORY[0x277D85DE8];
}

void __66__HMDCameraProfileSettingsManager__handleUpdateAccessModeMessage___block_invoke(uint64_t a1, void *a2)
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
      v9 = [*(a1 + 40) shortDescription];
      v13 = 138543874;
      v14 = v8;
      v15 = 2112;
      v16 = v9;
      v17 = 2112;
      v18 = v3;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_ERROR, "%{public}@Failed to update settings for message %@: %@", &v13, 0x20u);
    }

    objc_autoreleasePoolPop(v4);
    [*(a1 + 40) respondWithError:v3];
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v10 = HMFGetLogIdentifier();
      v11 = [*(a1 + 40) shortDescription];
      v13 = 138543618;
      v14 = v10;
      v15 = 2112;
      v16 = v11;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_DEBUG, "%{public}@Updated settings for message: %@", &v13, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    [*(a1 + 40) respondWithSuccess];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)synchronizeSettingsToCameraWithCompletion:(id)completion
{
  completionCopy = completion;
  workQueue = [(HMDCameraProfileSettingsManager *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __77__HMDCameraProfileSettingsManager_synchronizeSettingsToCameraWithCompletion___block_invoke;
  v7[3] = &unk_27868A7A0;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(workQueue, v7);
}

- (HMDCameraBulletinNotificationManager)cameraBulletinNotificationManager
{
  hapAccessory = [(HMDCameraProfileSettingsManager *)self hapAccessory];
  home = [hapAccessory home];
  cameraBulletinNotificationManager = [home cameraBulletinNotificationManager];

  return cameraBulletinNotificationManager;
}

- (BOOL)isRecordingEnabled
{
  currentSettingsModel = [(HMDCameraProfileSettingsManager *)self currentSettingsModel];
  [currentSettingsModel accessModeAtHome];
  if (HMIsRecordingAllowedForCameraAccessMode())
  {
    v4 = 1;
  }

  else
  {
    currentSettingsModel2 = [(HMDCameraProfileSettingsManager *)self currentSettingsModel];
    [currentSettingsModel2 accessModeNotAtHome];
    v4 = HMIsRecordingAllowedForCameraAccessMode();
  }

  return v4;
}

- (void)synchronizeCloudStorageWithRecordingAccessModes
{
  v31 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDCameraProfileSettingsManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  hapAccessory = [(HMDCameraProfileSettingsManager *)self hapAccessory];
  home = [hapAccessory home];
  primaryResident = [home primaryResident];

  if (primaryResident)
  {
    isCurrentDevice = [primaryResident isCurrentDevice];
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    v11 = v10;
    if (isCurrentDevice)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v12 = HMFGetLogIdentifier();
        v27 = 138543362;
        v28 = v12;
        _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@Locally synchronizing cloud storage with recording access modes because we are the primary resident", &v27, 0xCu);
      }

      objc_autoreleasePoolPop(v8);
      quotaCoordinator = [(HMDCameraProfileSettingsManager *)selfCopy quotaCoordinator];
      [quotaCoordinator synchronizeCloudStorageWithRecordingAccessModes];
    }

    else
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v18 = HMFGetLogIdentifier();
        shortDescription = [primaryResident shortDescription];
        v27 = 138543618;
        v28 = v18;
        v29 = 2112;
        v30 = shortDescription;
        _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Forwarding request to synchronize cloud storage with recording access modes to primary resident: %@", &v27, 0x16u);
      }

      objc_autoreleasePoolPop(v8);
      v20 = [HMDRemoteDeviceMessageDestination alloc];
      messageTargetUUID = [(HMDCameraProfileSettingsManager *)selfCopy messageTargetUUID];
      device = [primaryResident device];
      v23 = [(HMDRemoteDeviceMessageDestination *)v20 initWithTarget:messageTargetUUID device:device];

      v24 = [[HMDRemoteMessage alloc] initWithName:@"HMDCameraProfileSettingsSynchronizeCloudStorageWithRecordingAccessModesMessage" destination:v23 payload:0 type:3 timeout:1 secure:0.0];
      msgDispatcher = [(HMDCameraProfileSettingsManager *)selfCopy msgDispatcher];
      [msgDispatcher sendMessage:v24];
    }
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      v27 = 138543362;
      v28 = v17;
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_ERROR, "%{public}@Cannot find primary resident to synchronize cloud storage with recording access modes", &v27, 0xCu);
    }

    objc_autoreleasePoolPop(v14);
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (void)disableRecordingAccessModes
{
  workQueue = [(HMDCameraProfileSettingsManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  quotaCoordinator = [(HMDCameraProfileSettingsManager *)self quotaCoordinator];
  [quotaCoordinator disableRecordingAccessModes];
}

- (unint64_t)supportedFeatures
{
  v40 = *MEMORY[0x277D85DE8];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  hapAccessory = [(HMDCameraProfileSettingsManager *)self hapAccessory];
  services = [hapAccessory services];

  obj = services;
  v4 = [services countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v36;
    v8 = *MEMORY[0x277CD0E00];
    v9 = *MEMORY[0x277CD0E08];
    v33 = *MEMORY[0x277CD0DF8];
    v31 = *MEMORY[0x277CCF798];
    v30 = *MEMORY[0x277CCF990];
    v29 = *MEMORY[0x277CCF898];
    v10 = *MEMORY[0x277CCF748];
    v32 = *MEMORY[0x277CCFA00];
    while (1)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v36 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v35 + 1) + 8 * i);
        serviceType = [v12 serviceType];
        v14 = [serviceType isEqualToString:v8];

        if (v14)
        {
          v15 = [v12 findCharacteristicWithType:v10];

          v6 |= v15 != 0;
          continue;
        }

        serviceType2 = [v12 serviceType];
        v17 = [serviceType2 isEqualToString:v9];

        if (v17)
        {
          v18 = [v12 findCharacteristicWithType:v10];

          v19 = 6;
          if (!v18)
          {
            v19 = 2;
          }

          v20 = v19 | v6;
          v21 = [v12 findCharacteristicWithType:v32];

          v22 = v20 | 0x40;
        }

        else
        {
          serviceType3 = [v12 serviceType];
          v24 = [serviceType3 isEqualToString:v33];

          if (!v24)
          {
            continue;
          }

          v25 = [v12 findCharacteristicWithType:v31];

          if (v25)
          {
            v20 = v6 | 0x10;
          }

          else
          {
            v20 = v6;
          }

          v26 = [v12 findCharacteristicWithType:v30];

          if (v26)
          {
            v20 |= 8uLL;
          }

          v21 = [v12 findCharacteristicWithType:v29];

          v22 = v20 | 0x20;
        }

        if (v21)
        {
          v6 = v22;
        }

        else
        {
          v6 = v20;
        }
      }

      v5 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
      if (!v5)
      {
        goto LABEL_26;
      }
    }
  }

  v6 = 0;
LABEL_26:

  v27 = *MEMORY[0x277D85DE8];
  return v6;
}

- (HMDCameraProfileSettingsModel)defaultSettingsModel
{
  _settingsModelForUpdate = [(HMDCameraProfileSettingsManager *)self _settingsModelForUpdate];
  [_settingsModelForUpdate setVersion:1];
  [_settingsModelForUpdate setAccessModeAtHome:1];
  [_settingsModelForUpdate setAccessModeNotAtHome:1];
  [_settingsModelForUpdate setRecordingEventTriggers:14];
  doorbellInputEventCharacteristic = [(HMDCameraProfileSettingsManager *)self doorbellInputEventCharacteristic];

  if (doorbellInputEventCharacteristic)
  {
    [_settingsModelForUpdate setRecordingEventTriggers:{objc_msgSend(_settingsModelForUpdate, "recordingEventTriggers") | 0x10}];
  }

  return _settingsModelForUpdate;
}

- (id)currentSettingsModel
{
  v21 = *MEMORY[0x277D85DE8];
  coreDataAdapter = [(HMDCameraProfileSettingsManager *)self coreDataAdapter];
  v16 = 0;
  defaultSettingsModel = [coreDataAdapter fetchCameraProfileSettingsModelWithError:&v16];
  v5 = v16;

  if (!defaultSettingsModel)
  {
    if (v5)
    {
      v6 = objc_autoreleasePoolPush();
      selfCopy = self;
      v8 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = HMFGetLogIdentifier();
        *buf = 138543618;
        v18 = v9;
        v19 = 2112;
        v20 = v5;
        _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_ERROR, "%{public}@Error fetching currentSettings: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v6);
    }

    v10 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543362;
      v18 = v13;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@Setting unavailable, using default values", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v10);
    defaultSettingsModel = [(HMDCameraProfileSettingsManager *)selfCopy2 defaultSettingsModel];
  }

  [(HMDCameraProfileSettingsManager *)self _updateDerivedPropertiesOnSettingsModel:defaultSettingsModel];

  v14 = *MEMORY[0x277D85DE8];

  return defaultSettingsModel;
}

- (id)currentNotificationSettings
{
  cameraBulletinNotificationManager = [(HMDCameraProfileSettingsManager *)self cameraBulletinNotificationManager];
  hapAccessory = [(HMDCameraProfileSettingsManager *)self hapAccessory];
  v5 = [cameraBulletinNotificationManager cameraUserNotificationSettingsForAccessory:hapAccessory];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = objc_alloc_init(MEMORY[0x277CD1958]);
  }

  v8 = v7;

  return v8;
}

- (_HMCameraUserSettings)currentSettings
{
  currentSettingsModel = [(HMDCameraProfileSettingsManager *)self currentSettingsModel];
  v4 = [(HMDCameraProfileSettingsManager *)self _settingsFromSettingsModel:currentSettingsModel];

  return v4;
}

- (void)remove
{
  v11 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDCameraProfileSettingsManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v4 = objc_autoreleasePoolPush();
  selfCopy = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v9 = 138543362;
    v10 = v7;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Deleting camera settings", &v9, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)start
{
  v17 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDCameraProfileSettingsManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  hapAccessory = [(HMDCameraProfileSettingsManager *)self hapAccessory];
  cameraProfiles = [hapAccessory cameraProfiles];
  anyObject = [cameraProfiles anyObject];

  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    logIdentifier = [anyObject logIdentifier];
    v13 = 138543618;
    v14 = v10;
    v15 = 2112;
    v16 = logIdentifier;
    _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Starting settings manager for camera profile %@", &v13, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  [(HMDCameraProfileSettingsManager *)selfCopy _start];

  v12 = *MEMORY[0x277D85DE8];
}

- (void)configureWithMessageDispatcher:(id)dispatcher adminMessageDispatcher:(id)messageDispatcher deviceIsResidentCapable:(BOOL)capable
{
  capableCopy = capable;
  v76 = *MEMORY[0x277D85DE8];
  dispatcherCopy = dispatcher;
  messageDispatcherCopy = messageDispatcher;
  v61 = dispatcherCopy;
  [(HMDCameraProfileSettingsManager *)self setMsgDispatcher:dispatcherCopy];
  v64 = [HMDXPCMessagePolicy policyWithEntitlements:5];
  v63 = [HMDConfigurationMessagePolicy policyWithOperationTypes:2];
  v62 = +[(HMDRemoteMessagePolicy *)HMDMutableRemoteMessagePolicy];
  [v62 setRoles:4];
  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    v13 = HMFBooleanToString();
    [(HMDCameraProfileSettingsManager *)selfCopy isCurrentDeviceConfirmedPrimaryResident];
    v14 = HMFBooleanToString();
    *buf = 138543874;
    v71 = v12;
    v72 = 2112;
    v73 = v13;
    v74 = 2112;
    v75 = v14;
    _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Configured with deviceIsResidentCapable=%@ and isCurrentDevicePrimaryResident=%@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v9);
  [(HMDCameraProfileSettingsManager *)selfCopy hapAccessory];
  v15 = v60 = capableCopy;
  home = [v15 home];
  v17 = [HMDUserMessagePolicy userMessagePolicyWithHome:home userPrivilege:4 remoteAccessRequired:0];
  v69[0] = v64;
  v69[1] = v63;
  v69[2] = v17;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v69 count:3];
  [messageDispatcherCopy registerForMessage:*MEMORY[0x277CCF678] receiver:selfCopy policies:v18 selector:sel__handleUpdateAccessModeMessage_];
  [messageDispatcherCopy registerForMessage:*MEMORY[0x277CCF698] receiver:selfCopy policies:v18 selector:sel__handleUpdateRecordingTriggerEventsMessage_];
  [messageDispatcherCopy registerForMessage:*MEMORY[0x277CCF680] receiver:selfCopy policies:v18 selector:sel__handleUpdateActivityZonesMessage_];

  v19 = [HMDUserMessagePolicy userMessagePolicyWithHome:home userPrivilege:0 remoteAccessRequired:1];
  v68[0] = v19;
  v20 = +[HMDRemoteMessagePolicy defaultSecurePolicy];
  v68[1] = v20;
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v68 count:2];
  [v61 registerForMessage:@"HMDCameraSettingsDidChangeMessage" receiver:selfCopy policies:v21 selector:sel__handleCameraSettingsDidChangeMessage_];

  v22 = [HMDUserMessagePolicy userMessagePolicyWithHome:home userPrivilege:3 remoteAccessRequired:0];
  v67[0] = v22;
  v67[1] = v62;
  v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v67 count:2];
  [v61 registerForMessage:@"HMDCameraProfileSettingsSynchronizeCloudStorageWithRecordingAccessModesMessage" receiver:selfCopy policies:v23 selector:sel__handleSynchronizeCloudStorageWithRecordingAccessModesMessage_];

  v66[0] = v64;
  v66[1] = v63;
  v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v66 count:2];
  [v61 registerForMessage:*MEMORY[0x277CD20D0] receiver:selfCopy policies:v24 selector:sel__handleBulletinBoardNotificationCommitMessage_];
  [v61 registerForMessage:*MEMORY[0x277CCF670] receiver:selfCopy policies:v24 selector:sel__handleUpdateAccessModeChangeNotificationEnabledMessage_];
  [v61 registerForMessage:*MEMORY[0x277CCF690] receiver:selfCopy policies:v24 selector:sel__handleUpdateReachabilityEventNotificationEnabledMessage_];

  notificationCenter = [(HMDCameraProfileSettingsManager *)selfCopy notificationCenter];
  [notificationCenter removeObserver:selfCopy];

  notificationCenter2 = [(HMDCameraProfileSettingsManager *)selfCopy notificationCenter];
  currentUser = [home currentUser];
  [notificationCenter2 addObserver:selfCopy selector:sel_handleUserRemoteAccessDidChangeNotification_ name:@"HMDUserRemoteAccessDidChangeNotification" object:currentUser];

  if (v60)
  {
    notificationCenter3 = [(HMDCameraProfileSettingsManager *)selfCopy notificationCenter];
    residentDeviceManager = [home residentDeviceManager];
    [notificationCenter3 addObserver:selfCopy selector:sel_handlePrimaryResidentUpdatedNotification_ name:@"HMDResidentDeviceManagerUpdatePrimaryResidentNotification" object:residentDeviceManager];

    notificationCenter4 = [(HMDCameraProfileSettingsManager *)selfCopy notificationCenter];
    [notificationCenter4 addObserver:selfCopy selector:sel_handlePrimaryResidentUpdatedNotification_ name:@"HMDResidentDeviceConfirmedStateChangedNotification" object:0];

    featuresDataSource = [(HMDCameraProfileSettingsManager *)selfCopy featuresDataSource];
    isHomeActivityStateReplacesPresenceMonitorFeatureEnabled = [featuresDataSource isHomeActivityStateReplacesPresenceMonitorFeatureEnabled];

    if ((isHomeActivityStateReplacesPresenceMonitorFeatureEnabled & 1) == 0)
    {
      notificationCenter5 = [(HMDCameraProfileSettingsManager *)selfCopy notificationCenter];
      presenceMonitor = [home presenceMonitor];
      [notificationCenter5 addObserver:selfCopy selector:sel_handleHomePresenceEvaluatedNotification_ name:@"HMDHomePresenceEvaluatedNotification" object:presenceMonitor];
    }

    notificationCenter6 = [(HMDCameraProfileSettingsManager *)selfCopy notificationCenter];
    [notificationCenter6 addObserver:selfCopy selector:sel_handleAccessoryConfiguredNotification_ name:@"HMDAccessoryConnectedNotification" object:v15];

    notificationCenter7 = [(HMDCameraProfileSettingsManager *)selfCopy notificationCenter];
    [notificationCenter7 addObserver:selfCopy selector:sel_handleRecordingManagementServiceDidUpdateNotification_ name:@"HMDRecordingManagementServiceDidUpdateNotification" object:v15];

    notificationCenter8 = [(HMDCameraProfileSettingsManager *)selfCopy notificationCenter];
    [notificationCenter8 addObserver:selfCopy selector:sel_handleCharacteristicsValueUpdatedNotification_ name:@"HMDNotificationCharacteristicValueUpdated" object:v15];

    if ([v15 isReachable])
    {
      [(HMDCameraProfileSettingsManager *)selfCopy _setManuallyDisabledCharacteristicNotificationsEnabled:1];
    }

    featuresDataSource2 = [(HMDCameraProfileSettingsManager *)selfCopy featuresDataSource];
    isHomeActivityStateReplacesPresenceMonitorFeatureEnabled2 = [featuresDataSource2 isHomeActivityStateReplacesPresenceMonitorFeatureEnabled];

    if (isHomeActivityStateReplacesPresenceMonitorFeatureEnabled2)
    {
      homeActivityStateManager = [home homeActivityStateManager];
      [homeActivityStateManager addObserver:selfCopy];

      homeActivityStateManager2 = [home homeActivityStateManager];
      currentHomeActivityStateDetails = [homeActivityStateManager2 currentHomeActivityStateDetails];

      if (![currentHomeActivityStateDetails state])
      {
        v51 = objc_autoreleasePoolPush();
        v52 = selfCopy;
        v53 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
        {
          v54 = HMFGetLogIdentifier();
          *buf = 138543362;
          v71 = v54;
          _os_log_impl(&dword_229538000, v53, OS_LOG_TYPE_INFO, "%{public}@Current Home Activity State is Unknown", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v51);
        [(HMDCameraProfileSettingsManager *)v52 setAnyUserAtHome:0];
        goto LABEL_22;
      }

      v43 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(currentHomeActivityStateDetails, "isHomeOccupied")}];
      [(HMDCameraProfileSettingsManager *)selfCopy setAnyUserAtHome:v43];

      v44 = objc_autoreleasePoolPush();
      v45 = selfCopy;
      v46 = HMFGetOSLogHandle();
      if (!os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
      {
LABEL_15:

        objc_autoreleasePoolPop(v44);
LABEL_22:

        goto LABEL_23;
      }
    }

    else
    {
      presenceMonitor2 = [home presenceMonitor];
      currentHomeActivityStateDetails = [presenceMonitor2 currentHomePresence];

      if (!currentHomeActivityStateDetails)
      {
        v55 = objc_autoreleasePoolPush();
        v56 = selfCopy;
        v57 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v57, OS_LOG_TYPE_INFO))
        {
          v58 = HMFGetLogIdentifier();
          *buf = 138543362;
          v71 = v58;
          _os_log_impl(&dword_229538000, v57, OS_LOG_TYPE_INFO, "%{public}@Current home presence is unavailable", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v55);
        [(HMDCameraProfileSettingsManager *)v56 setAnyUserAtHome:0];
        currentHomeActivityStateDetails = 0;
        goto LABEL_22;
      }

      v48 = [(HMDCameraProfileSettingsManager *)selfCopy _isAnyUserAtHomeForPresence:currentHomeActivityStateDetails];
      [(HMDCameraProfileSettingsManager *)selfCopy setAnyUserAtHome:v48];

      v44 = objc_autoreleasePoolPush();
      v45 = selfCopy;
      v46 = HMFGetOSLogHandle();
      if (!os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
      {
        goto LABEL_15;
      }
    }

    v49 = HMFGetLogIdentifier();
    isAnyUserAtHome = [(HMDCameraProfileSettingsManager *)v45 isAnyUserAtHome];
    *buf = 138543618;
    v71 = v49;
    v72 = 2112;
    v73 = isAnyUserAtHome;
    _os_log_impl(&dword_229538000, v46, OS_LOG_TYPE_INFO, "%{public}@Initial isAnyUserAtHome is %@", buf, 0x16u);

    goto LABEL_15;
  }

LABEL_23:

  v59 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    *buf = 138543362;
    v10 = v6;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Deallocating camera profile settings manager", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  [(HMDCameraProfileSettingsManager *)selfCopy _setManuallyDisabledCharacteristicNotificationsEnabled:0];
  v8.receiver = selfCopy;
  v8.super_class = HMDCameraProfileSettingsManager;
  [(HMDCameraProfileSettingsManager *)&v8 dealloc];
  v7 = *MEMORY[0x277D85DE8];
}

- (HMDCameraProfileSettingsManager)initWithHAPAccessory:(id)accessory home:(id)home workQueue:(id)queue
{
  v37[1] = *MEMORY[0x277D85DE8];
  v7 = MEMORY[0x277CCAD78];
  queueCopy = queue;
  homeCopy = home;
  accessoryCopy = accessory;
  uuid = [accessoryCopy uuid];
  v37[0] = @"HMDCameraProfileSettingsUUIDSalt";
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:1];
  v13 = [v7 hm_deriveUUIDFromBaseUUID:uuid withSalts:v12];

  v14 = MEMORY[0x277CCAD78];
  v36 = @"2b32a3ee-3908-406e-890d-74f9c410ef2b";
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v36 count:1];
  v30 = v13;
  v31 = [v14 hm_deriveUUIDFromBaseUUID:v13 withSalts:v15];

  v16 = [HMDCameraProfileSettingsCoreDataAdapter alloc];
  uuid2 = [accessoryCopy uuid];
  uuid3 = [homeCopy uuid];

  v29 = [(HMDCameraProfileSettingsCoreDataAdapter *)v16 initWithHAPAccessoryUUID:uuid2 homeUUID:uuid3 cameraProfileSettingsModelID:v13 derivedPropertiesModelID:v31];
  v19 = objc_alloc_init(HMDFeaturesDataSource);
  v20 = [[HMDCameraProfileSettingsQuotaCoordinator alloc] initWithWorkQueue:queueCopy accessory:accessoryCopy];
  v34[0] = *MEMORY[0x277CD0EC0];
  v21 = [MEMORY[0x277CBEB98] setWithObject:*MEMORY[0x277CCF978]];
  v35[0] = v21;
  v34[1] = *MEMORY[0x277CD0E38];
  v22 = [MEMORY[0x277CBEB98] setWithObject:*MEMORY[0x277CCF910]];
  v35[1] = v22;
  v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:v34 count:2];

  v24 = [[HMDCharacteristicsAvailabilityListener alloc] initWithAccessory:accessoryCopy workQueue:queueCopy interestedCharacteristicTypesByServiceType:v23];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v26 = +[HMDBulletinBoard sharedBulletinBoard];
  v33 = [(HMDCameraProfileSettingsManager *)self initWithUniqueIdentifier:v30 hapAccessory:accessoryCopy workQueue:queueCopy coreDataAdapter:v29 notificationCenter:defaultCenter bulletinBoard:v26 characteristicsAvailabilityListener:v24 quotaCoordinator:v20 featuresDataSource:v19];

  v27 = *MEMORY[0x277D85DE8];
  return v33;
}

- (HMDCameraProfileSettingsManager)initWithUniqueIdentifier:(id)identifier hapAccessory:(id)accessory workQueue:(id)queue coreDataAdapter:(id)adapter notificationCenter:(id)center bulletinBoard:(id)board characteristicsAvailabilityListener:(id)listener quotaCoordinator:(id)self0 featuresDataSource:(id)self1
{
  identifierCopy = identifier;
  obj = accessory;
  queueCopy = queue;
  adapterCopy = adapter;
  centerCopy = center;
  boardCopy = board;
  listenerCopy = listener;
  coordinatorCopy = coordinator;
  sourceCopy = source;
  v35.receiver = self;
  v35.super_class = HMDCameraProfileSettingsManager;
  v19 = [(HMDCameraProfileSettingsManager *)&v35 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_uniqueIdentifier, identifier);
    objc_storeWeak(&v20->_hapAccessory, obj);
    objc_storeStrong(&v20->_workQueue, queue);
    objc_storeStrong(&v20->_coreDataAdapter, adapter);
    objc_storeStrong(&v20->_notificationCenter, center);
    objc_storeStrong(&v20->_bulletinBoard, board);
    objc_storeStrong(&v20->_quotaCoordinator, coordinator);
    objc_storeStrong(&v20->_characteristicsAvailabilityListener, listener);
    objc_storeStrong(&v20->_featuresDataSource, source);
    v21 = MEMORY[0x277CCACA8];
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    identifierCopy = [v21 stringWithFormat:@"%@.HMDCameraProfileSettingsManager.%@", @"com.apple.HomeKitDaemon.Local", uUIDString, coordinatorCopy, listenerCopy, boardCopy, centerCopy, adapterCopy, queueCopy, identifierCopy];
    clientIdentifier = v20->_clientIdentifier;
    v20->_clientIdentifier = identifierCopy;
  }

  return v20;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t138 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t138, &__block_literal_global_116562);
  }

  v3 = logCategory__hmf_once_v139;

  return v3;
}

void __46__HMDCameraProfileSettingsManager_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v139;
  logCategory__hmf_once_v139 = v1;
}

+ (id)zoneNameForHome:(id)home
{
  uuid = [home uuid];
  uUIDString = [uuid UUIDString];
  v5 = [@"accessory-profile-data-" stringByAppendingString:uUIDString];

  return v5;
}

@end