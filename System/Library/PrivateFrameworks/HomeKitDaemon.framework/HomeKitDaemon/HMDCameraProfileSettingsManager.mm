@interface HMDCameraProfileSettingsManager
+ (id)logCategory;
+ (id)zoneNameForHome:(id)a3;
- (BOOL)_evaluateHomePresence;
- (BOOL)_migrateNotificationSettings:(id)a3;
- (BOOL)_migrateSettingsModel:(id)a3;
- (BOOL)_setAnyUserAtHomeFromHomeActivityStateWithHome:(id)a3;
- (BOOL)_setAnyUserAtHomeFromPresenceMonitorWithHome:(id)a3;
- (BOOL)canModifyCameraSettings;
- (BOOL)canRevealCurrentAccessMode;
- (BOOL)isCameraManuallyDisabled;
- (BOOL)isCurrentDeviceConfirmedPrimaryResident;
- (BOOL)isRecordingEnabled;
- (HMDCameraBulletinNotificationManager)cameraBulletinNotificationManager;
- (HMDCameraProfileSettingsDerivedPropertiesModel)derivedPropertiesModel;
- (HMDCameraProfileSettingsManager)initWithHAPAccessory:(id)a3 home:(id)a4 workQueue:(id)a5;
- (HMDCameraProfileSettingsManager)initWithUniqueIdentifier:(id)a3 hapAccessory:(id)a4 workQueue:(id)a5 coreDataAdapter:(id)a6 notificationCenter:(id)a7 bulletinBoard:(id)a8 characteristicsAvailabilityListener:(id)a9 quotaCoordinator:(id)a10 featuresDataSource:(id)a11;
- (HMDCameraProfileSettingsModel)defaultSettingsModel;
- (HMDHAPAccessory)hapAccessory;
- (NSUUID)derivedPropertiesModelID;
- (_HMCameraUserSettings)currentSettings;
- (id)_coreDataUpdateCompletionForMessage:(id)a3;
- (id)_createNotificationSettingsUsingSettingsModel:(id)a3;
- (id)_isAnyUserAtHomeForPresence:(id)a3;
- (id)_payloadForSettings:(id)a3;
- (id)_settingsFromSettingsModel:(id)a3;
- (id)_settingsModelForUpdate;
- (id)currentNotificationSettings;
- (id)currentSettingsModel;
- (id)doorbellInputEventCharacteristic;
- (id)logIdentifier;
- (id)manuallyDisabledCharacteristic;
- (id)messageDestination;
- (unint64_t)supportedFeatures;
- (void)_addAccessModeCharacteristicWriteRequestsToArray:(id)a3 currentAccessMode:(unint64_t)a4;
- (void)_addHomeKitCameraActiveCharacteristicWriteRequestToArray:(id)a3 currentAccessMode:(unint64_t)a4;
- (void)_addWriteRequestToArray:(id)a3 forCharacteristicWithType:(id)a4 ofServiceWithType:(id)a5 value:(id)a6;
- (void)_coordinateDoorbellServiceBulletinNotification:(id)a3;
- (void)_coordinateNotificationSettingsWithServiceBulletinNotification:(id)a3;
- (void)_coordinateSmartBulletinNotificationWithServiceBulletinNotification:(id)a3;
- (void)_enablePackageNotificationsOnSettings:(id)a3;
- (void)_handleBulletinBoardNotificationCommitMessage:(id)a3;
- (void)_handleCameraSettingsDidChangeMessage:(id)a3;
- (void)_handleCharacteristicWriteRequests:(id)a3 completion:(id)a4;
- (void)_handleConnectedToAccessory;
- (void)_handleSynchronizeCloudStorageWithRecordingAccessModesMessage:(id)a3;
- (void)_handleUpdateAccessModeChangeNotificationEnabledMessage:(id)a3;
- (void)_handleUpdateAccessModeMessage:(id)a3;
- (void)_handleUpdateActivityZonesMessage:(id)a3;
- (void)_handleUpdateReachabilityEventNotificationEnabledMessage:(id)a3;
- (void)_handleUpdateRecordingTriggerEventsMessage:(id)a3;
- (void)_handleUpdatedDerivedProperties:(id)a3 previousProperties:(id)a4;
- (void)_handleUpdatedSettings:(id)a3 previousSettings:(id)a4;
- (void)_initializeNotificationSettingsUsingSettingsModel:(id)a3;
- (void)_notifyClientsOfCurrentSettings;
- (void)_notifySubscribersOfUpdatedSettings:(id)a3 previousSettings:(id)a4;
- (void)_populateCurrentAccessModeFieldForDerivedProperties:(id)a3 currentSettings:(id)a4 userInitiated:(BOOL)a5 didUpdateField:(BOOL *)a6;
- (void)_start;
- (void)_synchronizeCurrentAccessModeSettingToCameraWithCompletion:(id)a3;
- (void)_updateCameraBulletinNotificationManagerWithSettings:(id)a3 forMessage:(id)a4;
- (void)_updateDerivedPropertiesOnSettingsModel:(id)a3;
- (void)_updateNotificationSettings:(id)a3 forMessage:(id)a4;
- (void)_writeInitialSettingsCharacteristicsToCamera;
- (void)configureWithMessageDispatcher:(id)a3 adminMessageDispatcher:(id)a4 deviceIsResidentCapable:(BOOL)a5;
- (void)dealloc;
- (void)disableRecordingAccessModes;
- (void)handleAccessoryConfiguredNotification:(id)a3;
- (void)handleBulletinNotificationEnableStateDidChangeNotification:(id)a3;
- (void)handleCharacteristicsValueUpdatedNotification:(id)a3;
- (void)handleHomePresenceEvaluatedNotification:(id)a3;
- (void)handlePrimaryResidentUpdatedNotification:(id)a3;
- (void)handleRecordingManagementServiceDidUpdateNotification:(id)a3;
- (void)handleUpdatedDerivedPropertiesModel:(id)a3;
- (void)handleUpdatedSettingsModel:(id)a3;
- (void)handleUserRemoteAccessDidChangeNotification:(id)a3;
- (void)homeActivityStateManager:(id)a3 didMoveToState:(id)a4;
- (void)listener:(id)a3 didUpdateAvailableCharacteristics:(id)a4;
- (void)remove;
- (void)start;
- (void)synchronizeCloudStorageWithRecordingAccessModes;
- (void)synchronizeSettingsToCameraWithCompletion:(id)a3;
- (void)updateSettingsModelUsingBlock:(id)a3 completion:(id)a4;
@end

@implementation HMDCameraProfileSettingsManager

- (HMDHAPAccessory)hapAccessory
{
  WeakRetained = objc_loadWeakRetained(&self->_hapAccessory);

  return WeakRetained;
}

- (id)logIdentifier
{
  v2 = [(HMDCameraProfileSettingsManager *)self hapAccessory];
  if (isInternalBuild())
  {
    v3 = MEMORY[0x277CCACA8];
    v4 = [v2 home];
    v5 = [v4 name];
    v6 = [v2 name];
    v7 = [v2 uuid];
    v8 = [v3 stringWithFormat:@"%@/%@/%@", v5, v6, v7];
  }

  else
  {
    v4 = [v2 uuid];
    v8 = [v4 UUIDString];
  }

  return v8;
}

- (void)homeActivityStateManager:(id)a3 didMoveToState:(id)a4
{
  v5 = [(HMDCameraProfileSettingsManager *)self workQueue:a3];
  dispatch_assert_queue_V2(v5);

  if ([(HMDCameraProfileSettingsManager *)self isCurrentDeviceConfirmedPrimaryResident]&& [(HMDCameraProfileSettingsManager *)self _evaluateHomePresence])
  {
    v6 = [(HMDCameraProfileSettingsManager *)self currentSettingsModel];
    [(HMDCameraProfileSettingsManager *)self _updateDerivedPropertiesModelWithSettingsModel:v6 userInitiated:0 reason:@"Home Activity State Changed"];
  }
}

- (void)listener:(id)a3 didUpdateAvailableCharacteristics:(id)a4
{
  v41 = *MEMORY[0x277D85DE8];
  v30 = a3;
  v6 = a4;
  v7 = [(HMDCameraProfileSettingsManager *)self workQueue];
  dispatch_assert_queue_V2(v7);

  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543618;
    v38 = v11;
    v39 = 2112;
    v40 = v6;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Received updated available characteristics: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v12 = v6;
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
        v18 = [v17 service];
        v19 = [v18 bulletinBoardNotification];

        if (v19)
        {
          v20 = [(HMDCameraProfileSettingsManager *)v9 notificationCenter];
          [v20 removeObserver:v9 name:@"HMDBulletinBoardNotificationDidUpdateNotification" object:v19];

          v21 = [(HMDCameraProfileSettingsManager *)v9 notificationCenter];
          [v21 addObserver:v9 selector:sel_handleBulletinNotificationEnableStateDidChangeNotification_ name:@"HMDBulletinBoardNotificationDidUpdateNotification" object:v19];

          [(HMDCameraProfileSettingsManager *)v9 _coordinateNotificationSettingsWithServiceBulletinNotification:v19];
        }

        else
        {
          v22 = objc_autoreleasePoolPush();
          v23 = v9;
          v24 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            HMFGetLogIdentifier();
            v25 = v15;
            v27 = v26 = v12;
            v28 = [v17 service];
            *buf = 138543618;
            v38 = v27;
            v39 = 2112;
            v40 = v28;
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

- (void)updateSettingsModelUsingBlock:(id)a3 completion:(id)a4
{
  v12 = a4;
  v6 = a3;
  v7 = [(HMDCameraProfileSettingsManager *)self workQueue];
  dispatch_assert_queue_V2(v7);

  v8 = [(HMDCameraProfileSettingsManager *)self currentSettingsModel];
  v6[2](v6, v8);

  v9 = [v8 hmbSetProperties];
  v10 = [v9 count];

  if (v10)
  {
    v11 = [(HMDCameraProfileSettingsManager *)self coreDataAdapter];
    [v11 updateCameraProfileSettingsModel:v8 completion:v12];
  }

  else
  {
    v12[2](v12, 0);
  }
}

- (void)_handleUpdatedSettings:(id)a3 previousSettings:(id)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDCameraProfileSettingsManager *)self workQueue];
  dispatch_assert_queue_V2(v8);

  v21 = 0;
  [v6 hmbIsDifferentFromModel:v7 differingFields:&v21];
  v9 = v21;
  v10 = [v9 hmf_isEmpty];
  v11 = objc_autoreleasePoolPush();
  v12 = self;
  v13 = HMFGetOSLogHandle();
  v14 = v13;
  if (v10)
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
      v17 = [v6 debugDescription];
      v18 = [v7 debugDescription];
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
    [(HMDCameraProfileSettingsManager *)v12 _updateDerivedPropertiesOnSettingsModel:v6];
    [(HMDCameraProfileSettingsManager *)v12 _notifyClientsOfChangedSettingsModel:v6 isInitialSettingsUpdate:0];
    if (-[HMDCameraProfileSettingsManager isCurrentDeviceConfirmedPrimaryResident](v12, "isCurrentDeviceConfirmedPrimaryResident") && (([v9 containsObject:@"accessModeAtHomeField"] & 1) != 0 || objc_msgSend(v9, "containsObject:", @"accessModeNotAtHomeField")))
    {
      v19 = [(HMDCameraProfileSettingsManager *)v12 currentSettingsModel];
      [(HMDCameraProfileSettingsManager *)v12 _updateDerivedPropertiesModelWithSettingsModel:v19 userInitiated:1 reason:@"Settings model updated"];
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)_updateDerivedPropertiesOnSettingsModel:(id)a3
{
  v6 = a3;
  v4 = [(HMDCameraProfileSettingsManager *)self derivedPropertiesModel];
  [v6 setCurrentAccessMode:{objc_msgSend(v4, "currentAccessMode")}];
  if ([v4 currentAccessMode])
  {
    v5 = 0;
  }

  else
  {
    v5 = [v4 currentAccessModeChangeReason] == 5;
  }

  [v6 setCameraManuallyDisabled:v5];
}

- (void)_handleUpdatedDerivedProperties:(id)a3 previousProperties:(id)a4
{
  v80 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDCameraProfileSettingsManager *)self workQueue];
  dispatch_assert_queue_V2(v8);

  v67 = 0;
  [v6 hmbIsDifferentFromModel:v7 differingFields:&v67];
  v9 = v67;
  v10 = [(__CFString *)v9 hmf_isEmpty];
  v11 = objc_autoreleasePoolPush();
  v12 = self;
  v13 = HMFGetOSLogHandle();
  v14 = v13;
  if (v10)
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
      v17 = [v6 debugDescription];
      v18 = [v7 debugDescription];
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
    [(HMDCameraProfileSettingsManager *)v12 _notifyClientsOfCurrentSettings];
    v19 = [v6 currentAccessMode];
    if ([(HMDCameraProfileSettingsManager *)v12 isCurrentDeviceConfirmedPrimaryResident])
    {
      v20 = objc_autoreleasePoolPush();
      v21 = v12;
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
      v25 = [(HMDCameraProfileSettingsManager *)v12 hapAccessory];
      v26 = [v25 home];
      if ([(HMDCameraProfileSettingsManager *)v12 isCurrentDeviceConfirmedPrimaryResident])
      {
        [(HMDCameraProfileSettingsManager *)v12 _notifySubscribersOfUpdatedSettings:v6 previousSettings:v7];
      }

      if (-[HMDCameraProfileSettingsManager isCurrentDeviceConfirmedPrimaryResident](v12, "isCurrentDeviceConfirmedPrimaryResident") || ([v26 enabledResidents], v27 = objc_claimAutoreleasedReturnValue(), v28 = objc_msgSend(v27, "hmf_isEmpty"), v27, v28))
      {
        v29 = [(HMDCameraProfileSettingsManager *)v12 currentNotificationSettings];
        v30 = [v29 isAccessModeChangeNotificationEnabled];

        v31 = [v25 cameraProfiles];
        v32 = [v31 anyObject];

        v66 = v32;
        if (v7 && (v32 ? (v33 = v30) : (v33 = 0), v33 == 1 && v26 && [(HMDCameraProfileSettingsManager *)v12 canRevealCurrentAccessMode]))
        {
          v34 = objc_autoreleasePoolPush();
          v64 = v12;
          v35 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
          {
            v36 = HMFGetLogIdentifier();
            [v7 currentAccessMode];
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
          v40 = [v6 currentAccessModeChangeReason];
          v41 = [v6 currentAccessModeChangeDate];
          if (v41)
          {
            v42 = [(HMDCameraAccessModeChangedBulletin *)v39 initWithAccessMode:v19 camera:v66 home:v26 changeReason:v40 changeDate:v41];
          }

          else
          {
            v53 = [MEMORY[0x277CBEAA8] date];
            v42 = [(HMDCameraAccessModeChangedBulletin *)v39 initWithAccessMode:v19 camera:v66 home:v26 changeReason:v40 changeDate:v53];
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
            v58 = [(HMDCameraProfileSettingsManager *)v55 bulletinBoard];
            [v58 insertCameraAccessModeChangedBulletin:v42];
          }
        }

        else
        {
          v43 = objc_autoreleasePoolPush();
          v44 = v12;
          v45 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
          {
            v46 = HMFGetLogIdentifier();
            v63 = v25;
            v65 = v26;
            v47 = @"<nil>";
            if (v7)
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

            if (v26)
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
            v25 = v63;
            v78 = 2112;
            v79 = v51;
            _os_log_impl(&dword_229538000, v45, OS_LOG_TYPE_INFO, "%{public}@Not posting access mode change notification because previousProperties=%@ accessModeChangeNotificationEnabled=%@ cameraProfile=%@ home=%@ canRevealCurrentAccessMode=%@", buf, 0x3Eu);

            v26 = v65;
          }

          objc_autoreleasePoolPop(v43);
        }
      }
    }
  }

  v52 = *MEMORY[0x277D85DE8];
}

- (void)handleUpdatedDerivedPropertiesModel:(id)a3
{
  v4 = a3;
  v5 = [(HMDCameraProfileSettingsManager *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __71__HMDCameraProfileSettingsManager_handleUpdatedDerivedPropertiesModel___block_invoke;
  v7[3] = &unk_27868A750;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
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

- (void)handleUpdatedSettingsModel:(id)a3
{
  v4 = a3;
  v5 = [(HMDCameraProfileSettingsManager *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __62__HMDCameraProfileSettingsManager_handleUpdatedSettingsModel___block_invoke;
  v7[3] = &unk_27868A750;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
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
  v2 = [(HMDCameraProfileSettingsManager *)self hapAccessory];
  v3 = [v2 home];
  v4 = [v3 isCurrentDeviceConfirmedPrimaryResident];

  return v4;
}

- (id)messageDestination
{
  v3 = objc_alloc(MEMORY[0x277D0F820]);
  v4 = [(HMDCameraProfileSettingsManager *)self messageTargetUUID];
  v5 = [v3 initWithTarget:v4];

  return v5;
}

- (void)_start
{
  v50 = *MEMORY[0x277D85DE8];
  v3 = [(HMDCameraProfileSettingsManager *)self workQueue];
  dispatch_assert_queue_V2(v3);

  if ([(HMDCameraProfileSettingsManager *)self hasStarted])
  {
    v4 = objc_autoreleasePoolPush();
    v5 = self;
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
    v8 = [(HMDCameraProfileSettingsManager *)self coreDataAdapter];
    v45 = 0;
    v9 = [v8 fetchCameraProfileSettingsModelWithError:&v45];
    v10 = v45;

    [(HMDCameraProfileSettingsManager *)self _initializeNotificationSettingsUsingSettingsModel:v9];
    if (v9)
    {
      [(HMDCameraProfileSettingsManager *)self _updateDerivedPropertiesOnSettingsModel:v9];
      [(HMDCameraProfileSettingsManager *)self setPreviousSettingsModel:v9];
      v11 = [(HMDCameraProfileSettingsManager *)self coreDataAdapter];
      v12 = [v11 fetchDerivedPropertiesModelWithError:0];
      [(HMDCameraProfileSettingsManager *)self setPreviousDerivedPropertiesModel:v12];

      v13 = 0;
      v14 = v9;
    }

    else
    {
      if (v10)
      {
        v15 = objc_autoreleasePoolPush();
        v16 = self;
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
      v20 = self;
      v21 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        v22 = HMFGetLogIdentifier();
        *buf = 138543362;
        v47 = v22;
        _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_INFO, "%{public}@Initializing with default settings values", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v19);
      v14 = [(HMDCameraProfileSettingsManager *)v20 defaultSettingsModel];
      [(HMDCameraProfileSettingsManager *)v20 _updateDerivedPropertiesOnSettingsModel:v14];
      v13 = v14;
    }

    v23 = objc_autoreleasePoolPush();
    v24 = self;
    v25 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      v26 = HMFGetLogIdentifier();
      v27 = [(HMDCameraProfileSettingsManager *)v24 _settingsFromSettingsModel:v14];
      *buf = 138543618;
      v47 = v26;
      v48 = 2112;
      v49 = v27;
      _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_INFO, "%{public}@Initializing with current settings: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v23);
    v28 = objc_autoreleasePoolPush();
    v29 = v24;
    v30 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
    {
      v31 = HMFGetLogIdentifier();
      v32 = [(HMDCameraProfileSettingsManager *)v29 previousDerivedPropertiesModel];
      v33 = [v32 debugDescription];
      *buf = 138543618;
      v47 = v31;
      v48 = 2112;
      v49 = v33;
      _os_log_impl(&dword_229538000, v30, OS_LOG_TYPE_INFO, "%{public}@Initializing with current derived properties model: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v28);
    v34 = [(HMDCameraProfileSettingsManager *)v29 characteristicsAvailabilityListener];
    [v34 setDelegate:v29];

    v35 = [(HMDCameraProfileSettingsManager *)v29 characteristicsAvailabilityListener];
    [v35 start];

    v36 = [(HMDCameraProfileSettingsManager *)v29 quotaCoordinator];
    [v36 setDelegate:v29];

    if ([(HMDCameraProfileSettingsManager *)v29 canModifyCameraSettings])
    {
      if ([(HMDCameraProfileSettingsManager *)v29 _migrateSettingsModel:v14])
      {
        v37 = v14;

        v13 = v37;
      }

      v38 = [(HMDCameraProfileSettingsManager *)v29 _updatedDerivedPropertiesModelWithSettingsModel:v14 userInitiated:0 didCreateModel:0];
      if (v13 | v38)
      {
        v39 = v38;
        if (v13)
        {
          v40 = [(HMDCameraProfileSettingsManager *)v29 coreDataAdapter];
          v44[0] = MEMORY[0x277D85DD0];
          v44[1] = 3221225472;
          v44[2] = __41__HMDCameraProfileSettingsManager__start__block_invoke;
          v44[3] = &unk_27868A250;
          v44[4] = v29;
          [v40 updateCameraProfileSettingsModel:v13 completion:v44];
        }

        if (!v9)
        {
          [(HMDCameraProfileSettingsManager *)v29 _writeInitialSettingsCharacteristicsToCamera];
        }

        if (v39)
        {
          v41 = [(HMDCameraProfileSettingsManager *)v29 coreDataAdapter];
          v43[0] = MEMORY[0x277D85DD0];
          v43[1] = 3221225472;
          v43[2] = __41__HMDCameraProfileSettingsManager__start__block_invoke_153;
          v43[3] = &unk_27868A250;
          v43[4] = v29;
          [v41 updateDerivedPropertiesModel:v39 completion:v43];
        }
      }

      else
      {
        [(HMDCameraProfileSettingsManager *)v29 _notifyClientsOfChangedSettingsModel:v14 isInitialSettingsUpdate:1];
        v13 = 0;
      }
    }

    else
    {
      [(HMDCameraProfileSettingsManager *)v29 _notifyClientsOfChangedSettingsModel:v14 isInitialSettingsUpdate:1];
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

  v4 = [(HMDCameraProfileSettingsManager *)self hapAccessory];
  v5 = [v4 home];
  v6 = [v5 residentEnabledDevices];
  v3 = [v6 count] == 0;

  return v3;
}

- (BOOL)canRevealCurrentAccessMode
{
  v2 = [(HMDCameraProfileSettingsManager *)self hapAccessory];
  v3 = [v2 home];
  v4 = [v3 currentUser];
  v5 = [v4 isRemoteAccessAllowed];

  return v5;
}

- (void)_enablePackageNotificationsOnSettings:(id)a3
{
  v3 = MEMORY[0x277CD1C48];
  v4 = a3;
  v7 = objc_alloc_init(v3);
  v5 = [objc_alloc(MEMORY[0x277CD1938]) initWithSignificantEventTypes:16];
  [v7 setSignificantEventReasonCondition:v5];

  [v4 setSmartBulletinBoardNotificationEnabled:1];
  v6 = [v7 predicate];
  [v4 setSmartBulletinBoardNotificationCondition:v6];
}

- (void)_coordinateSmartBulletinNotificationWithServiceBulletinNotification:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDCameraProfileSettingsManager *)self workQueue];
  dispatch_assert_queue_V2(v5);

  if ([v4 isEnabled])
  {
    v6 = [(HMDCameraProfileSettingsManager *)self currentSettings];
    v7 = [v6 notificationSettings];
    v8 = [v7 isSmartBulletinBoardNotificationEnabled];

    if ((v8 & 1) == 0)
    {
      v9 = objc_autoreleasePoolPush();
      v10 = self;
      v11 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = HMFGetLogIdentifier();
        v13 = [v4 service];
        v18 = 138543618;
        v19 = v12;
        v20 = 2112;
        v21 = v13;
        _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Bulletin board notification is enabled for service %@, so enabling smart bulletin board notification with empty significant event types", &v18, 0x16u);
      }

      objc_autoreleasePoolPop(v9);
      v14 = [v6 notificationSettings];
      v15 = [v14 mutableCopy];

      [v15 setSmartBulletinBoardNotificationEnabled:1];
      v16 = [MEMORY[0x277CD18C0] predicateForSignificantEventTypes:0];
      [v15 setSmartBulletinBoardNotificationCondition:v16];

      [(HMDCameraProfileSettingsManager *)v10 _updateCameraBulletinNotificationManagerWithSettings:v15 forMessage:0];
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)_coordinateDoorbellServiceBulletinNotification:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDCameraProfileSettingsManager *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v10 = [v4 service];
    v14 = 138543874;
    v15 = v9;
    v16 = 2112;
    v17 = v4;
    v18 = 2112;
    v19 = v10;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Coordinating notification settings for: %@ service: %@", &v14, 0x20u);
  }

  objc_autoreleasePoolPop(v6);
  v11 = [(HMDCameraProfileSettingsManager *)v7 currentSettings];
  v12 = [v11 notificationSettings];
  [(HMDCameraProfileSettingsManager *)v7 _updateCameraBulletinNotificationManagerWithSettings:v12 forMessage:0];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_coordinateNotificationSettingsWithServiceBulletinNotification:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDCameraProfileSettingsManager *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [v4 service];
  v7 = [v6 type];
  v8 = [v7 isEqualToString:*MEMORY[0x277CD0EC0]];

  if (v8)
  {
    [(HMDCameraProfileSettingsManager *)self _coordinateSmartBulletinNotificationWithServiceBulletinNotification:v4];
  }

  else
  {
    v9 = [v6 type];
    v10 = [v9 isEqualToString:*MEMORY[0x277CD0E38]];

    if (v10)
    {
      [(HMDCameraProfileSettingsManager *)self _coordinateDoorbellServiceBulletinNotification:v4];
    }

    else
    {
      v11 = objc_autoreleasePoolPush();
      v12 = self;
      v13 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = HMFGetLogIdentifier();
        v15 = [v4 service];
        v17 = 138543874;
        v18 = v14;
        v19 = 2112;
        v20 = v4;
        v21 = 2112;
        v22 = v15;
        _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_ERROR, "%{public}@Unexpected bulletin board notification: %@ service: %@ when coordinating settings", &v17, 0x20u);
      }

      objc_autoreleasePoolPop(v11);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_addAccessModeCharacteristicWriteRequestsToArray:(id)a3 currentAccessMode:(unint64_t)a4
{
  v5 = a3;
  v6 = [(HMDCameraProfileSettingsManager *)self workQueue];
  dispatch_assert_queue_V2(v6);

  v7 = HMIsStreamingAllowedForCameraAccessMode();
  v8 = *MEMORY[0x277CCF748];
  v9 = *MEMORY[0x277CD0E00];
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v7];
  [(HMDCameraProfileSettingsManager *)self _addWriteRequestToArray:v5 forCharacteristicWithType:v8 ofServiceWithType:v9 value:v10];

  v11 = HMIsRecordingAllowedForCameraAccessMode();
  v12 = *MEMORY[0x277CD0E08];
  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v11];
  [(HMDCameraProfileSettingsManager *)self _addWriteRequestToArray:v5 forCharacteristicWithType:v8 ofServiceWithType:v12 value:v13];
}

- (void)_addHomeKitCameraActiveCharacteristicWriteRequestToArray:(id)a3 currentAccessMode:(unint64_t)a4
{
  v6 = a3;
  v7 = [(HMDCameraProfileSettingsManager *)self workQueue];
  dispatch_assert_queue_V2(v7);

  v8 = *MEMORY[0x277CD0DF8];
  v9 = [MEMORY[0x277CCABB0] numberWithInt:a4 != 0];
  [(HMDCameraProfileSettingsManager *)self _addWriteRequestToArray:v6 forCharacteristicWithType:@"0000021B-0000-1000-8000-0026BB765291" ofServiceWithType:v8 value:v9];
}

- (void)_addWriteRequestToArray:(id)a3 forCharacteristicWithType:(id)a4 ofServiceWithType:(id)a5 value:(id)a6
{
  v34 = *MEMORY[0x277D85DE8];
  v28 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [(HMDCameraProfileSettingsManager *)self workQueue];
  dispatch_assert_queue_V2(v13);

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v14 = [(HMDCameraProfileSettingsManager *)self hapAccessory];
  v15 = [v14 services];

  v16 = [v15 countByEnumeratingWithState:&v29 objects:v33 count:16];
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
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v29 + 1) + 8 * i);
        v21 = [v20 serviceType];
        v22 = [v21 isEqualToString:v11];

        if (v22)
        {
          v23 = [v20 findCharacteristicWithType:v10];
          v24 = v23;
          if (v23)
          {
            v25 = [v23 authorizationData];
            v26 = [HMDCharacteristicWriteRequest writeRequestWithCharacteristic:v24 value:v12 authorizationData:v25 type:1];

            [v28 addObject:v26];
          }
        }
      }

      v17 = [v15 countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v17);
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (void)_handleCharacteristicWriteRequests:(id)a3 completion:(id)a4
{
  v37 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDCameraProfileSettingsManager *)self workQueue];
  dispatch_assert_queue_V2(v8);

  if ([v6 count])
  {
    v9 = [(HMDCameraProfileSettingsManager *)self hapAccessory];
    v10 = [v9 home];

    if (v10)
    {
      v30 = [objc_alloc(MEMORY[0x277D0F770]) initWithName:@"Write settings characteristics"];
      v11 = objc_autoreleasePoolPush();
      v12 = self;
      v13 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = HMFGetLogIdentifier();
        v15 = [v30 identifier];
        v16 = [v15 shortDescription];
        *buf = 138543874;
        v32 = v14;
        v33 = 2114;
        v34 = v16;
        v35 = 2112;
        v36 = v6;
        _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Received request to write characteristics: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v11);
      v17 = [MEMORY[0x277CCAD78] UUID];
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __81__HMDCameraProfileSettingsManager__handleCharacteristicWriteRequests_completion___block_invoke;
      v26[3] = &unk_27868A370;
      v26[4] = v12;
      v27 = v30;
      v29 = v7;
      v28 = v6;
      [v10 writeCharacteristicValues:v28 source:1070 biomeSource:0 identifier:v17 transport:0 qualityOfService:-1 withCompletionHandler:v26];

      __HMFActivityScopeLeave();
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
        _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_DEFAULT, "%{public}@Cannot handle characteristic write requests because accessory/home reference is nil", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v20);
      v24 = [MEMORY[0x277CCA9B8] hmErrorWithCode:12];
      (*(v7 + 2))(v7, v24);
    }
  }

  else
  {
    v18 = _Block_copy(v7);
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
  v3 = [(HMDCameraProfileSettingsManager *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = objc_autoreleasePoolPush();
  v5 = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    *buf = 138543362;
    v12 = v7;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Writing initial settings characteristics to camera", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  [(HMDCameraProfileSettingsManager *)v5 setNeedsInitialSettingsCharacteristicSynchronization:1];
  v8 = [MEMORY[0x277CBEB18] array];
  [(HMDCameraProfileSettingsManager *)v5 _addOperatingModeIndicatorCharacteristicWriteRequestToArray:v8 accessModeIndicatorEnabled:1];
  [(HMDCameraProfileSettingsManager *)v5 _addNightVisionCharacteristicWriteRequestToArray:v8 nightVisionEnabled:1];
  [(HMDCameraProfileSettingsManager *)v5 _addSnapshotsActiveCharacteristicWriteRequestToArray:v8 snapshotsAllowed:1];
  [(HMDCameraProfileSettingsManager *)v5 _addPeriodicSnapshotsActiveCharacteristicWriteRequestToArray:v8 periodicSnapshotsAllowed:1];
  [(HMDCameraProfileSettingsManager *)v5 _addRecordingAudioEnabledWriteRequestToArray:v8 recordingAudioEnabled:1];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __79__HMDCameraProfileSettingsManager__writeInitialSettingsCharacteristicsToCamera__block_invoke;
  v10[3] = &unk_27868A250;
  v10[4] = v5;
  [(HMDCameraProfileSettingsManager *)v5 _handleCharacteristicWriteRequests:v8 completion:v10];

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

- (void)_updateNotificationSettings:(id)a3 forMessage:(id)a4
{
  v5 = a4;
  [(HMDCameraProfileSettingsManager *)self _notifyClientsOfCurrentSettings];
  [v5 respondWithSuccess];
}

- (void)_notifyClientsOfCurrentSettings
{
  v3 = [(HMDCameraProfileSettingsManager *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(HMDCameraProfileSettingsManager *)self currentSettings];
  [(HMDCameraProfileSettingsManager *)self _notifyClientsOfChangedSettings:v4 isInitialSettingsUpdate:0];
}

- (void)_notifySubscribersOfUpdatedSettings:(id)a3 previousSettings:(id)a4
{
  v47 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDCameraProfileSettingsManager *)self workQueue];
  dispatch_assert_queue_V2(v8);

  if (v7)
  {
    v9 = [(HMDCameraProfileSettingsManager *)self hapAccessory];
    v10 = v9;
    if (v9)
    {
      v11 = [v9 home];
      v12 = v11;
      if (v11)
      {
        v37 = v11;
        v43 = @"HMDCS.AccessModeChange";
        v41[0] = *MEMORY[0x277CCF0B0];
        v36 = [v10 uuid];
        v35 = [v36 UUIDString];
        v42[0] = v35;
        v41[1] = @"HMDCS.amu.value";
        v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v6, "currentAccessMode")}];
        v42[1] = v13;
        v41[2] = @"HMDCS.amu.changeReason";
        v14 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v6, "currentAccessModeChangeReason")}];
        v42[2] = v14;
        v41[3] = @"HMDCS.amu.changeDate";
        v15 = [v6 currentAccessModeChangeDate];
        v16 = v15;
        if (!v15)
        {
          v16 = [MEMORY[0x277CBEAA8] date];
        }

        v42[3] = v16;
        v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v42 forKeys:v41 count:4];
        v44 = v17;
        v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v44 forKeys:&v43 count:1];

        if (!v15)
        {
        }

        v12 = v37;
        v19 = [v37 cameraBulletinNotificationManager];
        v20 = [v19 devicesToNotifyForAccessModeChangeForAccessory:v10];

        v38[0] = MEMORY[0x277D85DD0];
        v38[1] = 3221225472;
        v38[2] = __88__HMDCameraProfileSettingsManager__notifySubscribersOfUpdatedSettings_previousSettings___block_invoke;
        v38[3] = &unk_278678910;
        v38[4] = self;
        v39 = v18;
        v40 = v6;
        v21 = v18;
        [v20 hmf_enumerateWithAutoreleasePoolUsingBlock:v38];
      }

      else
      {
        v30 = objc_autoreleasePoolPush();
        v31 = self;
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
      v27 = self;
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
    v23 = self;
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

- (id)_payloadForSettings:(id)a3
{
  v8[1] = *MEMORY[0x277D85DE8];
  v7 = *MEMORY[0x277CCF650];
  v3 = encodeRootObjectForSPIClients(a3);
  v8[0] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)_settingsFromSettingsModel:(id)a3
{
  v4 = MEMORY[0x277CD1F68];
  v5 = a3;
  v6 = [v4 alloc];
  v7 = [v5 hmbModelID];
  v8 = [v6 initWithUUID:v7];

  [v8 setSupportedFeatures:{-[HMDCameraProfileSettingsManager supportedFeatures](self, "supportedFeatures")}];
  [v8 setAccessModeAtHome:{objc_msgSend(v5, "accessModeAtHome")}];
  [v8 setAccessModeNotAtHome:{objc_msgSend(v5, "accessModeNotAtHome")}];
  [v8 setRecordingEventTriggers:{objc_msgSend(v5, "recordingEventTriggers")}];
  [v8 setCameraManuallyDisabled:{objc_msgSend(v5, "cameraManuallyDisabled")}];
  v9 = [(HMDCameraProfileSettingsManager *)self currentNotificationSettings];
  [v8 setNotificationSettings:v9];

  v10 = [v5 activityZones];
  [v8 setActivityZones:v10];

  [v8 setActivityZonesIncludedForSignificantEventDetection:{objc_msgSend(v5, "activityZonesIncludedForSignificantEventDetection")}];
  if ([(HMDCameraProfileSettingsManager *)self canRevealCurrentAccessMode])
  {
    v11 = [v5 currentAccessMode];
  }

  else
  {
    v11 = [v5 mostPrivateAccessMode];
  }

  v12 = v11;

  [v8 setCurrentAccessMode:v12];
  v13 = [v8 copy];

  return v13;
}

- (NSUUID)derivedPropertiesModelID
{
  v8[1] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CCAD78];
  v3 = [(HMDCameraProfileSettingsManager *)self uniqueIdentifier];
  v8[0] = @"2b32a3ee-3908-406e-890d-74f9c410ef2b";
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  v5 = [v2 hm_deriveUUIDFromBaseUUID:v3 withSalts:v4];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)_settingsModelForUpdate
{
  v3 = [HMDCameraProfileSettingsModel alloc];
  v4 = [(HMDCameraProfileSettingsManager *)self uniqueIdentifier];
  v5 = [(HMDCameraProfileSettingsManager *)self hapAccessory];
  v6 = [v5 uuid];
  v7 = [(HMBModel *)v3 initWithModelID:v4 parentModelID:v6];

  return v7;
}

- (void)_synchronizeCurrentAccessModeSettingToCameraWithCompletion:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDCameraProfileSettingsManager *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v13 = 138543362;
    v14 = v9;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Synchronizing current access mode settings to camera", &v13, 0xCu);
  }

  objc_autoreleasePoolPop(v6);
  v10 = [(HMDCameraProfileSettingsManager *)v7 currentSettingsModel];
  v11 = [MEMORY[0x277CBEB18] array];
  -[HMDCameraProfileSettingsManager _addAccessModeCharacteristicWriteRequestsToArray:currentAccessMode:](v7, "_addAccessModeCharacteristicWriteRequestsToArray:currentAccessMode:", v11, [v10 currentAccessMode]);
  -[HMDCameraProfileSettingsManager _addHomeKitCameraActiveCharacteristicWriteRequestToArray:currentAccessMode:](v7, "_addHomeKitCameraActiveCharacteristicWriteRequestToArray:currentAccessMode:", v11, [v10 currentAccessMode]);
  [(HMDCameraProfileSettingsManager *)v7 _handleCharacteristicWriteRequests:v11 completion:v4];

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_populateCurrentAccessModeFieldForDerivedProperties:(id)a3 currentSettings:(id)a4 userInitiated:(BOOL)a5 didUpdateField:(BOOL *)a6
{
  v7 = a5;
  v89 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = [(HMDCameraProfileSettingsManager *)self workQueue];
  dispatch_assert_queue_V2(v12);

  if (a6)
  {
    *a6 = 0;
  }

  if ([v11 hmbPropertyWasSet:@"accessModeAtHomeField"] && (objc_msgSend(v11, "hmbPropertyWasSet:", @"accessModeNotAtHomeField") & 1) != 0)
  {
    v13 = [v11 accessModeAtHome];
    v14 = [v11 accessModeNotAtHome];
    v15 = [(HMDCameraProfileSettingsManager *)self isAnyUserAtHome];
    v78 = v15;
    if ([(HMDCameraProfileSettingsManager *)self isCameraManuallyDisabled])
    {
      v16 = objc_autoreleasePoolPush();
      v17 = self;
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

    else if (v15)
    {
      v27 = [v15 BOOLValue];
      v28 = 1;
      if (!v27)
      {
        v28 = 2;
      }

      v73 = v28;
      if (v27)
      {
        v20 = v13;
      }

      else
      {
        v20 = v14;
      }

      context = objc_autoreleasePoolPush();
      v29 = self;
      v30 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        v70 = HMFGetLogIdentifier();
        v69 = HMCameraAccessModeAsString();
        [v78 BOOLValue];
        HMFBooleanToString();
        v31 = v68 = v29;
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

        v29 = v68;
      }

      objc_autoreleasePoolPop(context);
      if (v7)
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
      v35 = self;
      v36 = HMFGetOSLogHandle();
      v37 = os_log_type_enabled(v36, OS_LOG_TYPE_INFO);
      if (v13 != v14)
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
      v20 = v13;
    }

    if (([v10 hmbPropertyWasSet:{@"currentAccessModeField", v68}] & 1) == 0)
    {
      v41 = objc_autoreleasePoolPush();
      v42 = self;
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
      [v10 setCurrentAccessMode:v20];
      if (a6)
      {
        *a6 = 1;
      }
    }

    if (([v10 hmbPropertyWasSet:@"currentAccessModeChangeReasonField"] & 1) == 0)
    {
      v46 = objc_autoreleasePoolPush();
      v47 = self;
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
      [v10 setCurrentAccessModeChangeReason:v21];
      if (a6)
      {
        *a6 = 1;
      }
    }

    if ([v10 currentAccessMode] != v20)
    {
      v52 = objc_autoreleasePoolPush();
      v53 = self;
      v54 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
      {
        v55 = HMFGetLogIdentifier();
        [v10 currentAccessMode];
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
      [v10 setCurrentAccessMode:v20];
      if ([v10 currentAccessModeChangeReason] != v21)
      {
        v60 = objc_autoreleasePoolPush();
        v61 = v53;
        v62 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v62, OS_LOG_TYPE_INFO))
        {
          v63 = HMFGetLogIdentifier();
          v64 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v10, "currentAccessModeChangeReason")}];
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
        [v10 setCurrentAccessModeChangeReason:v21];
      }

      if (a6)
      {
        *a6 = 1;
      }
    }

LABEL_49:

    goto LABEL_50;
  }

  v22 = objc_autoreleasePoolPush();
  v23 = self;
  v24 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    v25 = HMFGetLogIdentifier();
    v26 = [v11 debugDescription];
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
  v3 = [(HMDCameraProfileSettingsManager *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(HMDCameraProfileSettingsManager *)self manuallyDisabledCharacteristic];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 value];
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
      v9 = [v8 BOOLValue];
    }

    else
    {
      v10 = objc_autoreleasePoolPush();
      v11 = self;
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
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v9;
}

- (id)doorbellInputEventCharacteristic
{
  v2 = [(HMDCameraProfileSettingsManager *)self hapAccessory];
  v3 = [v2 findCharacteristicType:*MEMORY[0x277CCF910] forServiceType:*MEMORY[0x277CD0E38]];

  return v3;
}

- (id)manuallyDisabledCharacteristic
{
  v2 = [(HMDCameraProfileSettingsManager *)self hapAccessory];
  v3 = [v2 findCharacteristicType:@"00000227-0000-1000-8000-0026BB765291" forServiceType:*MEMORY[0x277CD0DF8]];

  return v3;
}

- (BOOL)_migrateSettingsModel:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 version];
  if (v5 != 1)
  {
    if (v5)
    {
LABEL_12:
      v17 = 0;
      goto LABEL_16;
    }

    v6 = [(HMDCameraProfileSettingsManager *)self doorbellInputEventCharacteristic];

    if (v6)
    {
      v7 = objc_autoreleasePoolPush();
      v8 = self;
      v9 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = HMFGetLogIdentifier();
        [v4 recordingEventTriggers];
        v11 = HMCameraSignificantEventTypesAsString();
        v25 = 138543618;
        v26 = v10;
        v27 = 2112;
        v28 = v11;
        _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Settings are for doorbell camera; adding HMCameraSignificantEventTypePackages to existing recording event triggers: %@", &v25, 0x16u);
      }

      objc_autoreleasePoolPop(v7);
      [v4 setRecordingEventTriggers:{objc_msgSend(v4, "recordingEventTriggers") | 0x10}];
    }

    if ([v4 recordingEventTriggers])
    {
      v12 = objc_autoreleasePoolPush();
      v13 = self;
      v14 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = HMFGetLogIdentifier();
        [v4 recordingEventTriggers];
        v16 = HMCameraSignificantEventTypesAsString();
        v25 = 138543618;
        v26 = v15;
        v27 = 2112;
        v28 = v16;
        _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, "%{public}@Settings have Any Motion recording trigger; adding all significant event types to existing recording event triggers: %@", &v25, 0x16u);
      }

      objc_autoreleasePoolPop(v12);
      [v4 setRecordingEventTriggers:{objc_msgSend(v4, "recordingEventTriggers") | 0x1F}];
    }
  }

  if ([v4 version] == 1)
  {
    goto LABEL_12;
  }

  v18 = objc_autoreleasePoolPush();
  v19 = self;
  v20 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    v21 = HMFGetLogIdentifier();
    v22 = [v4 version];
    v25 = 138543874;
    v26 = v21;
    v27 = 2048;
    v28 = v22;
    v29 = 2048;
    v30 = 1;
    _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_INFO, "%{public}@Updating settings model version from %ld to %ld", &v25, 0x20u);
  }

  objc_autoreleasePoolPop(v18);
  v17 = 1;
  [v4 setVersion:1];
LABEL_16:

  v23 = *MEMORY[0x277D85DE8];
  return v17;
}

- (BOOL)_migrateNotificationSettings:(id)a3
{
  v59 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDCameraProfileSettingsManager *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [v4 version];
  v7 = 0;
  if (v6 == 1)
  {
    goto LABEL_22;
  }

  if (v6)
  {
    goto LABEL_38;
  }

  v8 = [(HMDCameraProfileSettingsManager *)self doorbellInputEventCharacteristic];

  if (v8)
  {
    v9 = [v4 smartBulletinBoardNotificationCondition];
    if (!v9)
    {
      if (isAppleTV())
      {
        v23 = objc_autoreleasePoolPush();
        v24 = self;
        v25 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
        {
          v26 = HMFGetLogIdentifier();
          v53 = 138543362;
          v54 = v26;
          _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_INFO, "%{public}@Settings are for doorbell camera but there is no notification condition; enabling significant event notifications for HMCameraSignificantEventTypePackages only", &v53, 0xCu);
        }

        objc_autoreleasePoolPop(v23);
        [(HMDCameraProfileSettingsManager *)v24 _enablePackageNotificationsOnSettings:v4];
        v7 = 1;
      }

      else
      {
        v7 = 0;
      }

      goto LABEL_21;
    }

    v10 = [objc_alloc(MEMORY[0x277CD18B8]) initWithPredicate:v9];
    v11 = [v10 significantEventReasonCondition];
    v12 = [v11 significantEventTypes];

    if (v12)
    {
      v13 = objc_autoreleasePoolPush();
      v14 = self;
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = HMFGetLogIdentifier();
        v17 = [v10 significantEventReasonCondition];
        v53 = 138543618;
        v54 = v16;
        v55 = 2112;
        v56 = v17;
        _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@Settings are for doorbell camera; adding HMCameraSignificantEventTypePackages to existing significant event notification condition: %@", &v53, 0x16u);
      }

      objc_autoreleasePoolPop(v13);
      v18 = [v10 significantEventReasonCondition];
      v19 = [v18 significantEventTypes];

      v20 = [v10 mutableCopy];
      v21 = [objc_alloc(MEMORY[0x277CD1938]) initWithSignificantEventTypes:v19 | 0x10];
      [v20 setSignificantEventReasonCondition:v21];

      v22 = [v20 predicate];
      [v4 setSmartBulletinBoardNotificationCondition:v22];
    }

    else
    {
      if (!isAppleTV())
      {
        v7 = 0;
        goto LABEL_19;
      }

      v27 = objc_autoreleasePoolPush();
      v28 = self;
      v29 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        v30 = HMFGetLogIdentifier();
        v53 = 138543362;
        v54 = v30;
        _os_log_impl(&dword_229538000, v29, OS_LOG_TYPE_INFO, "%{public}@Settings are for doorbell camera but there are no significantEventTypes in the condition; enabling significant event notifications for HMCameraSignificantEventTypePackages only", &v53, 0xCu);
      }

      objc_autoreleasePoolPop(v27);
      [(HMDCameraProfileSettingsManager *)v28 _enablePackageNotificationsOnSettings:v4];
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
    if ([v4 isAccessModeChangeNotificationEnabled])
    {
      v31 = objc_autoreleasePoolPush();
      v32 = self;
      v33 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
      {
        v34 = HMFGetLogIdentifier();
        v53 = 138543362;
        v54 = v34;
        _os_log_impl(&dword_229538000, v33, OS_LOG_TYPE_INFO, "%{public}@Forcing access mode notification to disabled during settings migration on Apple TV", &v53, 0xCu);
      }

      objc_autoreleasePoolPop(v31);
      [v4 setAccessModeChangeNotificationEnabled:0];
      v7 = 1;
    }

    if ([v4 isReachabilityEventNotificationEnabled])
    {
      v35 = objc_autoreleasePoolPush();
      v36 = self;
      v37 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
      {
        v38 = HMFGetLogIdentifier();
        v53 = 138543362;
        v54 = v38;
        _os_log_impl(&dword_229538000, v37, OS_LOG_TYPE_INFO, "%{public}@Forcing reachability notification to disabled during settings migration on Apple TV", &v53, 0xCu);
      }

      objc_autoreleasePoolPop(v35);
      [v4 setReachabilityEventNotificationEnabled:0];
      v7 = 1;
    }
  }

  if (isHomePod() || isWatch())
  {
    v39 = objc_alloc_init(MEMORY[0x277CD1958]);
    if (([v4 isEqual:v39] & 1) == 0)
    {
      v40 = objc_autoreleasePoolPush();
      v41 = self;
      v42 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
      {
        v43 = HMFGetLogIdentifier();
        v53 = 138543362;
        v54 = v43;
        _os_log_impl(&dword_229538000, v42, OS_LOG_TYPE_INFO, "%{public}@Forcing all notification settings to disabled during settings migration on HomePod / Watch", &v53, 0xCu);
      }

      objc_autoreleasePoolPop(v40);
      [v4 setAccessModeChangeNotificationEnabled:0];
      [v4 setReachabilityEventNotificationEnabled:0];
      [v4 setSmartBulletinBoardNotificationEnabled:0];
      [v4 setSmartBulletinBoardNotificationCondition:0];
      v7 = 1;
    }
  }

LABEL_38:
  v44 = [v4 version];
  v45 = *MEMORY[0x277CCF628];
  if (v44 != *MEMORY[0x277CCF628])
  {
    v46 = objc_autoreleasePoolPush();
    v47 = self;
    v48 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
    {
      v49 = HMFGetLogIdentifier();
      v50 = [v4 version];
      v53 = 138543874;
      v54 = v49;
      v55 = 2048;
      v56 = v50;
      v57 = 2048;
      v58 = 1;
      _os_log_impl(&dword_229538000, v48, OS_LOG_TYPE_INFO, "%{public}@Updating notification settings version from %ld to %ld", &v53, 0x20u);
    }

    objc_autoreleasePoolPop(v46);
    [v4 setVersion:v45];
    v7 = 1;
  }

  v51 = *MEMORY[0x277D85DE8];
  return v7;
}

- (id)_createNotificationSettingsUsingSettingsModel:(id)a3
{
  v41 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDCameraProfileSettingsManager *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = objc_alloc_init(MEMORY[0x277CD1C50]);
  v7 = [v4 hasAnyNotificationFieldsSet];
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_INFO);
  if (v7)
  {
    if (v11)
    {
      v12 = HMFGetLogIdentifier();
      v13 = [v4 debugDescription];
      v14 = [v4 smartBulletinBoardNotification];
      v35 = 138543874;
      v36 = v12;
      v37 = 2112;
      v38 = v13;
      v39 = 2112;
      v40 = v14;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Migrating notification settings from settings model: %@, smart bulletin board notification: %@", &v35, 0x20u);
    }

    objc_autoreleasePoolPop(v8);
    [v6 setVersion:*MEMORY[0x277CCF628]];
    [v6 setAccessModeChangeNotificationEnabled:{objc_msgSend(v4, "accessModeChangeNotificationEnabled")}];
    [v6 setReachabilityEventNotificationEnabled:{objc_msgSend(v4, "reachabilityEventNotificationEnabled")}];
    v15 = [v4 smartBulletinBoardNotification];
    [v6 setSmartBulletinBoardNotificationEnabled:{objc_msgSend(v15, "isEnabled")}];

    v16 = [v4 smartBulletinBoardNotification];
    v17 = [v16 condition];
    [v6 setSmartBulletinBoardNotificationCondition:v17];

    if (isHomePod() || isWatch())
    {
      v18 = objc_autoreleasePoolPush();
      v19 = v9;
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
      v32 = v9;
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
    v23 = v9;
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
    v27 = [(HMDCameraProfileSettingsManager *)v9 doorbellInputEventCharacteristic];

    if (v27 && isAppleTV())
    {
      [(HMDCameraProfileSettingsManager *)v9 _enablePackageNotificationsOnSettings:v6];
    }
  }

  v28 = [v6 copy];

  v29 = *MEMORY[0x277D85DE8];

  return v28;
}

- (void)_initializeNotificationSettingsUsingSettingsModel:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDCameraProfileSettingsManager *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(HMDCameraProfileSettingsManager *)self hapAccessory];
  if (v6)
  {
    v7 = [(HMDCameraProfileSettingsManager *)self cameraBulletinNotificationManager];
    v8 = [v7 cameraUserNotificationSettingsForAccessory:v6];
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
      v14 = [(HMDCameraProfileSettingsManager *)self _createNotificationSettingsUsingSettingsModel:v4];
      [(HMDCameraProfileSettingsManager *)self _updateCameraBulletinNotificationManagerWithSettings:v14 forMessage:0];
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
      v16 = 138543362;
      v17 = v13;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@Accessory reference is nil", &v16, 0xCu);
    }

    objc_autoreleasePoolPop(v10);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (id)_coreDataUpdateCompletionForMessage:(id)a3
{
  v4 = a3;
  v5 = [(HMDCameraProfileSettingsManager *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __71__HMDCameraProfileSettingsManager__coreDataUpdateCompletionForMessage___block_invoke;
  v9[3] = &unk_27868A1D8;
  v9[4] = self;
  v10 = v4;
  v6 = v4;
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
  v3 = [(HMDCameraProfileSettingsManager *)self coreDataAdapter];
  v15 = 0;
  v4 = [v3 fetchDerivedPropertiesModelWithError:&v15];
  v5 = v15;

  if (!v4)
  {
    if (v5)
    {
      v6 = objc_autoreleasePoolPush();
      v7 = self;
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
    v11 = [(HMDCameraProfileSettingsManager *)self derivedPropertiesModelID];
    v12 = [(HMDCameraProfileSettingsManager *)self uniqueIdentifier];
    v4 = [(HMBModel *)v10 initWithModelID:v11 parentModelID:v12];

    [(HMDCameraProfileSettingsDerivedPropertiesModel *)v4 setCurrentAccessModeChangeReason:0];
    [(HMDCameraProfileSettingsDerivedPropertiesModel *)v4 setCurrentAccessMode:1];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)_handleConnectedToAccessory
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = [(HMDCameraProfileSettingsManager *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = objc_autoreleasePoolPush();
  v5 = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v10 = 138543362;
    v11 = v7;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Connected to accessory", &v10, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  [(HMDCameraProfileSettingsManager *)v5 _setManuallyDisabledCharacteristicNotificationsEnabled:1];
  if ([(HMDCameraProfileSettingsManager *)v5 isCurrentDeviceConfirmedPrimaryResident])
  {
    v8 = [(HMDCameraProfileSettingsManager *)v5 currentSettingsModel];
    [(HMDCameraProfileSettingsManager *)v5 _updateDerivedPropertiesModelWithSettingsModel:v8 userInitiated:0 reason:@"Accessory became reachable"];

    [(HMDCameraProfileSettingsManager *)v5 _synchronizeCurrentAccessModeSettingToCameraWithCompletion:0];
    if ([(HMDCameraProfileSettingsManager *)v5 needsInitialSettingsCharacteristicSynchronization])
    {
      [(HMDCameraProfileSettingsManager *)v5 _writeInitialSettingsCharacteristicsToCamera];
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)handleBulletinNotificationEnableStateDidChangeNotification:(id)a3
{
  v4 = a3;
  v5 = [(HMDCameraProfileSettingsManager *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __94__HMDCameraProfileSettingsManager_handleBulletinNotificationEnableStateDidChangeNotification___block_invoke;
  v7[3] = &unk_27868A750;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
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

- (void)handleUserRemoteAccessDidChangeNotification:(id)a3
{
  v4 = [(HMDCameraProfileSettingsManager *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __79__HMDCameraProfileSettingsManager_handleUserRemoteAccessDidChangeNotification___block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(v4, block);
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

- (void)handleCharacteristicsValueUpdatedNotification:(id)a3
{
  v4 = a3;
  v5 = [(HMDCameraProfileSettingsManager *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __81__HMDCameraProfileSettingsManager_handleCharacteristicsValueUpdatedNotification___block_invoke;
  v7[3] = &unk_27868A750;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
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

- (void)handleRecordingManagementServiceDidUpdateNotification:(id)a3
{
  v4 = [(HMDCameraProfileSettingsManager *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __89__HMDCameraProfileSettingsManager_handleRecordingManagementServiceDidUpdateNotification___block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(v4, block);
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

- (void)handleAccessoryConfiguredNotification:(id)a3
{
  v4 = [(HMDCameraProfileSettingsManager *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __73__HMDCameraProfileSettingsManager_handleAccessoryConfiguredNotification___block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(v4, block);
}

- (BOOL)_setAnyUserAtHomeFromHomeActivityStateWithHome:(id)a3
{
  v41 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDCameraProfileSettingsManager *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [v4 homeActivityStateManager];
  v7 = [v6 currentHomeActivityStateDetails];

  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v31 = 138543618;
    v32 = v11;
    v33 = 2112;
    v34 = v7;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Evaluating with Home Activity State: %@", &v31, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  if ([v7 state])
  {
    v12 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v7, "isHomeOccupied")}];
    v13 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v7, "state") == 3}];
    v14 = [(HMDCameraProfileSettingsManager *)v9 isAnyUserAtHome];
    v15 = HMFEqualObjects();

    if (v15 && ([(HMDCameraProfileSettingsManager *)v9 isHomeSleeping], v16 = objc_claimAutoreleasedReturnValue(), v17 = HMFEqualObjects(), v16, (v17 & 1) != 0))
    {
      v18 = 0;
    }

    else
    {
      v19 = objc_autoreleasePoolPush();
      v20 = v9;
      v21 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = HMFGetLogIdentifier();
        v23 = [(HMDCameraProfileSettingsManager *)v20 isAnyUserAtHome];
        v24 = [(HMDCameraProfileSettingsManager *)v20 isHomeSleeping];
        v31 = 138544386;
        v32 = v22;
        v33 = 2112;
        v34 = v23;
        v35 = 2112;
        v36 = v12;
        v37 = 2112;
        v38 = v24;
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
    v26 = v9;
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

- (id)_isAnyUserAtHomeForPresence:(id)a3
{
  v3 = a3;
  if ([v3 hasPresenceRegionForAllUsers])
  {
    v4 = MEMORY[0x277CCABB0];
    v5 = [v3 isAnyUserAtHome];

    v6 = [v4 numberWithBool:v5];
  }

  else
  {
    v7 = [v3 isAnyUserAtHome];

    if (v7)
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

- (BOOL)_setAnyUserAtHomeFromPresenceMonitorWithHome:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDCameraProfileSettingsManager *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [v4 presenceMonitor];
  v7 = [v6 currentHomePresence];

  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v27 = 138543618;
    v28 = v11;
    v29 = 2112;
    v30 = v7;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Evaluating home presence: %@", &v27, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  if (v7)
  {
    v12 = [(HMDCameraProfileSettingsManager *)v9 _isAnyUserAtHomeForPresence:v7];
    v13 = [(HMDCameraProfileSettingsManager *)v9 isAnyUserAtHome];
    v14 = HMFEqualObjects();

    if ((v14 & 1) == 0)
    {
      v15 = objc_autoreleasePoolPush();
      v16 = v9;
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = HMFGetLogIdentifier();
        v19 = [(HMDCameraProfileSettingsManager *)v16 isAnyUserAtHome];
        v27 = 138543874;
        v28 = v18;
        v29 = 2112;
        v30 = v19;
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
    v22 = v9;
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
  v3 = [(HMDCameraProfileSettingsManager *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(HMDCameraProfileSettingsManager *)self hapAccessory];
  v5 = [v4 home];

  if (v5)
  {
    v6 = [(HMDCameraProfileSettingsManager *)self featuresDataSource];
    v7 = [v6 isHomeActivityStateReplacesPresenceMonitorFeatureEnabled];

    if (v7)
    {
      v8 = [(HMDCameraProfileSettingsManager *)self _setAnyUserAtHomeFromHomeActivityStateWithHome:v5];
    }

    else
    {
      v8 = [(HMDCameraProfileSettingsManager *)self _setAnyUserAtHomeFromPresenceMonitorWithHome:v5];
    }

    v13 = v8;
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    v10 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      v16 = 138543362;
      v17 = v12;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_ERROR, "%{public}@Home is nil; setting isAnyUserAtHome to nil", &v16, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
    [(HMDCameraProfileSettingsManager *)v10 setAnyUserAtHome:0];
    [(HMDCameraProfileSettingsManager *)v10 setHomeSleeping:0];
    v13 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

- (void)handleHomePresenceEvaluatedNotification:(id)a3
{
  if ([(HMDCameraProfileSettingsManager *)self isCurrentDeviceConfirmedPrimaryResident])
  {
    v4 = [(HMDCameraProfileSettingsManager *)self workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __75__HMDCameraProfileSettingsManager_handleHomePresenceEvaluatedNotification___block_invoke;
    block[3] = &unk_27868A728;
    block[4] = self;
    dispatch_async(v4, block);
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

- (void)handlePrimaryResidentUpdatedNotification:(id)a3
{
  v4 = [(HMDCameraProfileSettingsManager *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __76__HMDCameraProfileSettingsManager_handlePrimaryResidentUpdatedNotification___block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(v4, block);
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

- (void)_handleCameraSettingsDidChangeMessage:(id)a3
{
  v62 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDCameraProfileSettingsManager *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v10 = [v4 shortDescription];
    *buf = 138543618;
    v53 = v9;
    v54 = 2112;
    v55 = v10;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Received camera settings did change message: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  v11 = [v4 dictionaryForKey:@"HMDCS.AccessModeChange"];
  v12 = [v11 hmf_numberForKey:@"HMDCS.amu.value"];
  v51 = [v11 hmf_numberForKey:@"HMDCS.amu.changeReason"];
  v13 = [v11 hmf_dateForKey:@"HMDCS.amu.changeDate"];
  v14 = v13;
  if (v12 && v51 && v13)
  {
    v15 = [(HMDCameraProfileSettingsManager *)v7 hapAccessory];
    v16 = [v15 cameraProfiles];
    v17 = [v16 anyObject];

    v50 = [v15 home];
    v18 = [(HMDCameraProfileSettingsManager *)v7 currentNotificationSettings];
    v19 = [v18 isAccessModeChangeNotificationEnabled];

    if (v19 && v17 && v50 && [(HMDCameraProfileSettingsManager *)v7 canRevealCurrentAccessMode])
    {
      v20 = [HMDCameraAccessModeChangedBulletin alloc];
      v46 = v17;
      v21 = [v12 unsignedIntegerValue];
      v22 = [v51 integerValue];
      v23 = v21;
      v17 = v46;
      v24 = [(HMDCameraAccessModeChangedBulletin *)v20 initWithAccessMode:v23 camera:v46 home:v50 changeReason:v22 changeDate:v14];
      if (v24)
      {
        v25 = objc_autoreleasePoolPush();
        v26 = v7;
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
        v29 = [(HMDCameraProfileSettingsManager *)v26 bulletinBoard];
        [v29 insertCameraAccessModeChangedBulletin:v24];

        v17 = v46;
      }
    }

    else
    {
      context = objc_autoreleasePoolPush();
      v35 = v7;
      v36 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
      {
        v37 = HMFGetLogIdentifier();
        v38 = HMFBooleanToString();
        v47 = v17;
        if (v17)
        {
          v39 = @"<not nil>";
        }

        else
        {
          v39 = @"<nil>";
        }

        v43 = v12;
        if (v50)
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
        v17 = v47;
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

    [v4 respondWithSuccess];
  }

  else
  {
    v30 = objc_autoreleasePoolPush();
    v31 = v7;
    v32 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      v33 = HMFGetLogIdentifier();
      v34 = [v4 messagePayload];
      *buf = 138543618;
      v53 = v33;
      v54 = 2112;
      v55 = v34;
      _os_log_impl(&dword_229538000, v32, OS_LOG_TYPE_ERROR, "%{public}@Invalid access mode change payload %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v30);
    v15 = [MEMORY[0x277CCA9B8] hmErrorWithCode:27];
    [v4 respondWithError:v15];
  }

  v42 = *MEMORY[0x277D85DE8];
}

- (void)_handleUpdateReachabilityEventNotificationEnabledMessage:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDCameraProfileSettingsManager *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v27 = 138543362;
    v28 = v9;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Processing request to change reachability event notification enabled", &v27, 0xCu);
  }

  objc_autoreleasePoolPop(v6);
  v10 = [(HMDCameraProfileSettingsManager *)v7 hapAccessory];
  v11 = [v10 home];
  v12 = [v11 bulletinNotificationsSupported];

  if (v12)
  {
    v13 = [v4 messagePayload];
    v14 = [v13 hmf_BOOLForKey:*MEMORY[0x277CCF660]];

    v15 = objc_autoreleasePoolPush();
    v16 = v7;
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
    v20 = [(HMDCameraProfileSettingsManager *)v16 currentNotificationSettings];
    v21 = [v20 mutableCopy];

    [v21 setReachabilityEventNotificationEnabled:v14];
    [(HMDCameraProfileSettingsManager *)v16 _updateCameraBulletinNotificationManagerWithSettings:v21 forMessage:v4];
  }

  else
  {
    v22 = objc_autoreleasePoolPush();
    v23 = v7;
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
    [v4 respondWithError:v21];
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (void)_handleUpdateActivityZonesMessage:(id)a3
{
  v48[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDCameraProfileSettingsManager *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    *buf = 138543362;
    v43 = v9;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Processing request to update activity zones", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v6);
  if (([(HMDCameraProfileSettingsManager *)v7 supportedFeatures]& 2) != 0)
  {
    v15 = [v4 dataForKey:*MEMORY[0x277CCF688]];
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
        v22 = [v4 BOOLForKey:*MEMORY[0x277CCF640]];
        v23 = [(HMDCameraProfileSettingsManager *)v7 currentSettingsModel];
        [v23 setActivityZones:v20];
        [v23 setActivityZonesIncludedForSignificantEventDetection:v22];
        v24 = objc_autoreleasePoolPush();
        v25 = v7;
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
        v29 = [(HMDCameraProfileSettingsManager *)v25 coreDataAdapter];
        v30 = [(HMDCameraProfileSettingsManager *)v25 _coreDataUpdateCompletionForMessage:v4];
        [v29 updateCameraProfileSettingsModel:v23 completion:v30];
      }

      else
      {
        v36 = objc_autoreleasePoolPush();
        v37 = v7;
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
        v23 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
        [v4 respondWithError:v23];
      }
    }

    else
    {
      v31 = objc_autoreleasePoolPush();
      v32 = v7;
      v33 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        v34 = HMFGetLogIdentifier();
        v35 = [v4 messagePayload];
        *buf = 138543618;
        v43 = v34;
        v44 = 2112;
        v45 = v35;
        _os_log_impl(&dword_229538000, v33, OS_LOG_TYPE_ERROR, "%{public}@Could not find activity zones in message payload: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v31);
      v21 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
      [v4 respondWithError:v21];
    }
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    v11 = v7;
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
    [v4 respondWithError:v15];
  }

  v40 = *MEMORY[0x277D85DE8];
}

- (void)_updateCameraBulletinNotificationManagerWithSettings:(id)a3 forMessage:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HMDCameraProfileSettingsManager *)self doorbellInputEventCharacteristic];
  v9 = [v8 service];
  v10 = [v9 bulletinBoardNotification];

  v11 = [v10 isEnabled];
  objc_initWeak(&location, self);
  v12 = [(HMDCameraProfileSettingsManager *)self cameraBulletinNotificationManager];
  v13 = [(HMDCameraProfileSettingsManager *)self hapAccessory];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __99__HMDCameraProfileSettingsManager__updateCameraBulletinNotificationManagerWithSettings_forMessage___block_invoke;
  v16[3] = &unk_278685D08;
  objc_copyWeak(&v19, &location);
  v14 = v7;
  v17 = v14;
  v15 = v6;
  v18 = v15;
  [v12 updateNotificationRegistrationsWithSettings:v15 accessory:v13 doorbellPressNotificationEnabled:v11 completion:v16];

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

- (void)_handleBulletinBoardNotificationCommitMessage:(id)a3
{
  v44 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDCameraProfileSettingsManager *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v38 = 138543362;
    v39 = v9;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Processing request to change bulletin board", &v38, 0xCu);
  }

  objc_autoreleasePoolPop(v6);
  v10 = [(HMDCameraProfileSettingsManager *)v7 hapAccessory];
  v11 = [v10 home];
  v12 = [v11 bulletinNotificationsSupported];

  if ((v12 & 1) == 0)
  {
    v13 = objc_autoreleasePoolPush();
    v14 = v7;
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
    [v4 respondWithError:v18];
    goto LABEL_24;
  }

  if (([(HMDCameraProfileSettingsManager *)v7 supportedFeatures]& 2) == 0)
  {
    v13 = objc_autoreleasePoolPush();
    v14 = v7;
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
  v18 = [v4 numberForKey:*MEMORY[0x277CD20E0]];
  if (v18)
  {
    v20 = [v4 predicateForKey:*MEMORY[0x277CD20D8]];
    v21 = objc_autoreleasePoolPush();
    v22 = v7;
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
    v25 = [(HMDCameraProfileSettingsManager *)v22 currentNotificationSettings];
    v26 = [v25 mutableCopy];

    [v26 setSmartBulletinBoardNotificationEnabled:{objc_msgSend(v18, "BOOLValue")}];
    [v26 setSmartBulletinBoardNotificationCondition:v20];
    v27 = [(HMDCameraProfileSettingsManager *)v22 currentNotificationSettings];
    v28 = [v26 isEqual:v27];

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
      [v4 respondWithSuccess];
    }

    else
    {
      [(HMDCameraProfileSettingsManager *)v22 _updateCameraBulletinNotificationManagerWithSettings:v26 forMessage:v4];
    }
  }

  else
  {
    v33 = objc_autoreleasePoolPush();
    v34 = v7;
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
    [v4 respondWithError:v20];
  }

LABEL_24:
  v37 = *MEMORY[0x277D85DE8];
}

- (void)_handleUpdateAccessModeChangeNotificationEnabledMessage:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDCameraProfileSettingsManager *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v27 = 138543362;
    v28 = v9;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Processing request to change access mode change notification enabled", &v27, 0xCu);
  }

  objc_autoreleasePoolPop(v6);
  v10 = [(HMDCameraProfileSettingsManager *)v7 hapAccessory];
  v11 = [v10 home];
  v12 = [v11 bulletinNotificationsSupported];

  if ((v12 & 1) == 0)
  {
    v13 = objc_autoreleasePoolPush();
    v14 = v7;
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
    [v4 respondWithError:v18];
    goto LABEL_15;
  }

  if (([(HMDCameraProfileSettingsManager *)v7 supportedFeatures]& 1) == 0 && ([(HMDCameraProfileSettingsManager *)v7 supportedFeatures]& 4) == 0)
  {
    v13 = objc_autoreleasePoolPush();
    v14 = v7;
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

  v19 = [v4 BOOLForKey:*MEMORY[0x277CCF630]];
  v20 = objc_autoreleasePoolPush();
  v21 = v7;
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
  v25 = [(HMDCameraProfileSettingsManager *)v21 currentNotificationSettings];
  v18 = [v25 mutableCopy];

  [v18 setAccessModeChangeNotificationEnabled:v19];
  [(HMDCameraProfileSettingsManager *)v21 _updateCameraBulletinNotificationManagerWithSettings:v18 forMessage:v4];
LABEL_15:

  v26 = *MEMORY[0x277D85DE8];
}

- (void)_handleUpdateRecordingTriggerEventsMessage:(id)a3
{
  v35 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDCameraProfileSettingsManager *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v29 = 138543362;
    v30 = v9;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Processing request to change recording trigger events", &v29, 0xCu);
  }

  objc_autoreleasePoolPop(v6);
  if (([(HMDCameraProfileSettingsManager *)v7 supportedFeatures]& 2) != 0)
  {
    v15 = [v4 numberForKey:*MEMORY[0x277CCF668]];
    if (v15)
    {
      v16 = [(HMDCameraProfileSettingsManager *)v7 currentSettingsModel];
      [v16 setRecordingEventTriggers:{objc_msgSend(v16, "recordingEventTriggers") & 0xFFFFFFFFFFFFFFE0 | objc_msgSend(v15, "unsignedIntegerValue") & 0x1F}];
      v17 = objc_autoreleasePoolPush();
      v18 = v7;
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
      v22 = [(HMDCameraProfileSettingsManager *)v18 coreDataAdapter];
      v23 = [(HMDCameraProfileSettingsManager *)v18 _coreDataUpdateCompletionForMessage:v4];
      [v22 updateCameraProfileSettingsModel:v16 completion:v23];
    }

    else
    {
      v24 = objc_autoreleasePoolPush();
      v25 = v7;
      v26 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v27 = HMFGetLogIdentifier();
        v29 = 138543874;
        v30 = v27;
        v31 = 2112;
        v32 = 0;
        v33 = 2112;
        v34 = v4;
        _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_ERROR, "%{public}@Invalid parameter: %@ for message: %@", &v29, 0x20u);
      }

      objc_autoreleasePoolPop(v24);
      v16 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
      [v4 respondWithError:v16];
    }
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    v11 = v7;
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
    [v4 respondWithError:v15];
  }

  v28 = *MEMORY[0x277D85DE8];
}

- (void)_handleSynchronizeCloudStorageWithRecordingAccessModesMessage:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDCameraProfileSettingsManager *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v12 = 138543362;
    v13 = v9;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Processing remote request to synchronize cloud storage with recording access modes", &v12, 0xCu);
  }

  objc_autoreleasePoolPop(v6);
  v10 = [(HMDCameraProfileSettingsManager *)v7 quotaCoordinator];
  [v10 synchronizeCloudStorageWithRecordingAccessModes];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_handleUpdateAccessModeMessage:(id)a3
{
  v51 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDCameraProfileSettingsManager *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    *buf = 138543362;
    v46 = v9;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Processing request to change access mode", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v6);
  v10 = [v4 numberForKey:*MEMORY[0x277CCF638]];
  v11 = [v4 numberForKey:*MEMORY[0x277CCF658]];
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
    v15 = v7;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      v18 = [v4 messagePayload];
      *buf = 138543618;
      v46 = v17;
      v47 = 2112;
      v48 = v18;
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_ERROR, "%{public}@Cannot find required parameters in message payload: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v14);
    v19 = MEMORY[0x277CCA9B8];
    v20 = 20;
    goto LABEL_24;
  }

  v21 = [v10 unsignedIntegerValue];
  v22 = [v12 unsignedIntegerValue];
  v23 = v22;
  if ((v22 - 3) >= 2)
  {
    v31 = objc_autoreleasePoolPush();
    v32 = v7;
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
    if (v21 < 4)
    {
      if (!HMIsRecordingAllowedForCameraAccessMode() || ([(HMDCameraProfileSettingsManager *)v7 supportedFeatures]& 2) != 0)
      {
        if (!HMIsStreamingAllowedForCameraAccessMode() || ([(HMDCameraProfileSettingsManager *)v7 supportedFeatures]& 1) != 0)
        {
          v42 = [(HMDCameraProfileSettingsManager *)v7 quotaCoordinator];
          v43[0] = MEMORY[0x277D85DD0];
          v43[1] = 3221225472;
          v43[2] = __66__HMDCameraProfileSettingsManager__handleUpdateAccessModeMessage___block_invoke;
          v43[3] = &unk_27868A1D8;
          v43[4] = v7;
          v44 = v4;
          [v42 updateCloudStorageAndSettingsWithAccessMode:v21 forCameraHomePresence:v23 completion:v43];

          goto LABEL_25;
        }

        v24 = objc_autoreleasePoolPush();
        v25 = v7;
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
        v25 = v7;
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
    v37 = v7;
    v38 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      v39 = HMFGetLogIdentifier();
      *buf = 138543618;
      v46 = v39;
      v47 = 2048;
      v48 = v21;
      _os_log_impl(&dword_229538000, v38, OS_LOG_TYPE_ERROR, "%{public}@Invalid access mode enum value received: %ld", buf, 0x16u);
    }

    v35 = v36;
  }

  objc_autoreleasePoolPop(v35);
  v19 = MEMORY[0x277CCA9B8];
  v20 = 3;
LABEL_24:
  v40 = [v19 hmErrorWithCode:v20];
  [v4 respondWithError:v40];

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

- (void)synchronizeSettingsToCameraWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(HMDCameraProfileSettingsManager *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __77__HMDCameraProfileSettingsManager_synchronizeSettingsToCameraWithCompletion___block_invoke;
  v7[3] = &unk_27868A7A0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (HMDCameraBulletinNotificationManager)cameraBulletinNotificationManager
{
  v2 = [(HMDCameraProfileSettingsManager *)self hapAccessory];
  v3 = [v2 home];
  v4 = [v3 cameraBulletinNotificationManager];

  return v4;
}

- (BOOL)isRecordingEnabled
{
  v3 = [(HMDCameraProfileSettingsManager *)self currentSettingsModel];
  [v3 accessModeAtHome];
  if (HMIsRecordingAllowedForCameraAccessMode())
  {
    v4 = 1;
  }

  else
  {
    v5 = [(HMDCameraProfileSettingsManager *)self currentSettingsModel];
    [v5 accessModeNotAtHome];
    v4 = HMIsRecordingAllowedForCameraAccessMode();
  }

  return v4;
}

- (void)synchronizeCloudStorageWithRecordingAccessModes
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = [(HMDCameraProfileSettingsManager *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(HMDCameraProfileSettingsManager *)self hapAccessory];
  v5 = [v4 home];
  v6 = [v5 primaryResident];

  if (v6)
  {
    v7 = [v6 isCurrentDevice];
    v8 = objc_autoreleasePoolPush();
    v9 = self;
    v10 = HMFGetOSLogHandle();
    v11 = v10;
    if (v7)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v12 = HMFGetLogIdentifier();
        v27 = 138543362;
        v28 = v12;
        _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@Locally synchronizing cloud storage with recording access modes because we are the primary resident", &v27, 0xCu);
      }

      objc_autoreleasePoolPop(v8);
      v13 = [(HMDCameraProfileSettingsManager *)v9 quotaCoordinator];
      [v13 synchronizeCloudStorageWithRecordingAccessModes];
    }

    else
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v18 = HMFGetLogIdentifier();
        v19 = [v6 shortDescription];
        v27 = 138543618;
        v28 = v18;
        v29 = 2112;
        v30 = v19;
        _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Forwarding request to synchronize cloud storage with recording access modes to primary resident: %@", &v27, 0x16u);
      }

      objc_autoreleasePoolPop(v8);
      v20 = [HMDRemoteDeviceMessageDestination alloc];
      v21 = [(HMDCameraProfileSettingsManager *)v9 messageTargetUUID];
      v22 = [v6 device];
      v23 = [(HMDRemoteDeviceMessageDestination *)v20 initWithTarget:v21 device:v22];

      v24 = [[HMDRemoteMessage alloc] initWithName:@"HMDCameraProfileSettingsSynchronizeCloudStorageWithRecordingAccessModesMessage" destination:v23 payload:0 type:3 timeout:1 secure:0.0];
      v25 = [(HMDCameraProfileSettingsManager *)v9 msgDispatcher];
      [v25 sendMessage:v24];
    }
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    v15 = self;
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
  v3 = [(HMDCameraProfileSettingsManager *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(HMDCameraProfileSettingsManager *)self quotaCoordinator];
  [v4 disableRecordingAccessModes];
}

- (unint64_t)supportedFeatures
{
  v40 = *MEMORY[0x277D85DE8];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v2 = [(HMDCameraProfileSettingsManager *)self hapAccessory];
  v3 = [v2 services];

  obj = v3;
  v4 = [v3 countByEnumeratingWithState:&v35 objects:v39 count:16];
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
        v13 = [v12 serviceType];
        v14 = [v13 isEqualToString:v8];

        if (v14)
        {
          v15 = [v12 findCharacteristicWithType:v10];

          v6 |= v15 != 0;
          continue;
        }

        v16 = [v12 serviceType];
        v17 = [v16 isEqualToString:v9];

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
          v23 = [v12 serviceType];
          v24 = [v23 isEqualToString:v33];

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
  v3 = [(HMDCameraProfileSettingsManager *)self _settingsModelForUpdate];
  [v3 setVersion:1];
  [v3 setAccessModeAtHome:1];
  [v3 setAccessModeNotAtHome:1];
  [v3 setRecordingEventTriggers:14];
  v4 = [(HMDCameraProfileSettingsManager *)self doorbellInputEventCharacteristic];

  if (v4)
  {
    [v3 setRecordingEventTriggers:{objc_msgSend(v3, "recordingEventTriggers") | 0x10}];
  }

  return v3;
}

- (id)currentSettingsModel
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = [(HMDCameraProfileSettingsManager *)self coreDataAdapter];
  v16 = 0;
  v4 = [v3 fetchCameraProfileSettingsModelWithError:&v16];
  v5 = v16;

  if (!v4)
  {
    if (v5)
    {
      v6 = objc_autoreleasePoolPush();
      v7 = self;
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
    v11 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543362;
      v18 = v13;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@Setting unavailable, using default values", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v10);
    v4 = [(HMDCameraProfileSettingsManager *)v11 defaultSettingsModel];
  }

  [(HMDCameraProfileSettingsManager *)self _updateDerivedPropertiesOnSettingsModel:v4];

  v14 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)currentNotificationSettings
{
  v3 = [(HMDCameraProfileSettingsManager *)self cameraBulletinNotificationManager];
  v4 = [(HMDCameraProfileSettingsManager *)self hapAccessory];
  v5 = [v3 cameraUserNotificationSettingsForAccessory:v4];
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
  v3 = [(HMDCameraProfileSettingsManager *)self currentSettingsModel];
  v4 = [(HMDCameraProfileSettingsManager *)self _settingsFromSettingsModel:v3];

  return v4;
}

- (void)remove
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = [(HMDCameraProfileSettingsManager *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = objc_autoreleasePoolPush();
  v5 = self;
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
  v3 = [(HMDCameraProfileSettingsManager *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(HMDCameraProfileSettingsManager *)self hapAccessory];
  v5 = [v4 cameraProfiles];
  v6 = [v5 anyObject];

  v7 = objc_autoreleasePoolPush();
  v8 = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v11 = [v6 logIdentifier];
    v13 = 138543618;
    v14 = v10;
    v15 = 2112;
    v16 = v11;
    _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Starting settings manager for camera profile %@", &v13, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  [(HMDCameraProfileSettingsManager *)v8 _start];

  v12 = *MEMORY[0x277D85DE8];
}

- (void)configureWithMessageDispatcher:(id)a3 adminMessageDispatcher:(id)a4 deviceIsResidentCapable:(BOOL)a5
{
  v5 = a5;
  v76 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v65 = a4;
  v61 = v8;
  [(HMDCameraProfileSettingsManager *)self setMsgDispatcher:v8];
  v64 = [HMDXPCMessagePolicy policyWithEntitlements:5];
  v63 = [HMDConfigurationMessagePolicy policyWithOperationTypes:2];
  v62 = +[(HMDRemoteMessagePolicy *)HMDMutableRemoteMessagePolicy];
  [v62 setRoles:4];
  v9 = objc_autoreleasePoolPush();
  v10 = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    v13 = HMFBooleanToString();
    [(HMDCameraProfileSettingsManager *)v10 isCurrentDeviceConfirmedPrimaryResident];
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
  [(HMDCameraProfileSettingsManager *)v10 hapAccessory];
  v15 = v60 = v5;
  v16 = [v15 home];
  v17 = [HMDUserMessagePolicy userMessagePolicyWithHome:v16 userPrivilege:4 remoteAccessRequired:0];
  v69[0] = v64;
  v69[1] = v63;
  v69[2] = v17;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v69 count:3];
  [v65 registerForMessage:*MEMORY[0x277CCF678] receiver:v10 policies:v18 selector:sel__handleUpdateAccessModeMessage_];
  [v65 registerForMessage:*MEMORY[0x277CCF698] receiver:v10 policies:v18 selector:sel__handleUpdateRecordingTriggerEventsMessage_];
  [v65 registerForMessage:*MEMORY[0x277CCF680] receiver:v10 policies:v18 selector:sel__handleUpdateActivityZonesMessage_];

  v19 = [HMDUserMessagePolicy userMessagePolicyWithHome:v16 userPrivilege:0 remoteAccessRequired:1];
  v68[0] = v19;
  v20 = +[HMDRemoteMessagePolicy defaultSecurePolicy];
  v68[1] = v20;
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v68 count:2];
  [v61 registerForMessage:@"HMDCameraSettingsDidChangeMessage" receiver:v10 policies:v21 selector:sel__handleCameraSettingsDidChangeMessage_];

  v22 = [HMDUserMessagePolicy userMessagePolicyWithHome:v16 userPrivilege:3 remoteAccessRequired:0];
  v67[0] = v22;
  v67[1] = v62;
  v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v67 count:2];
  [v61 registerForMessage:@"HMDCameraProfileSettingsSynchronizeCloudStorageWithRecordingAccessModesMessage" receiver:v10 policies:v23 selector:sel__handleSynchronizeCloudStorageWithRecordingAccessModesMessage_];

  v66[0] = v64;
  v66[1] = v63;
  v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v66 count:2];
  [v61 registerForMessage:*MEMORY[0x277CD20D0] receiver:v10 policies:v24 selector:sel__handleBulletinBoardNotificationCommitMessage_];
  [v61 registerForMessage:*MEMORY[0x277CCF670] receiver:v10 policies:v24 selector:sel__handleUpdateAccessModeChangeNotificationEnabledMessage_];
  [v61 registerForMessage:*MEMORY[0x277CCF690] receiver:v10 policies:v24 selector:sel__handleUpdateReachabilityEventNotificationEnabledMessage_];

  v25 = [(HMDCameraProfileSettingsManager *)v10 notificationCenter];
  [v25 removeObserver:v10];

  v26 = [(HMDCameraProfileSettingsManager *)v10 notificationCenter];
  v27 = [v16 currentUser];
  [v26 addObserver:v10 selector:sel_handleUserRemoteAccessDidChangeNotification_ name:@"HMDUserRemoteAccessDidChangeNotification" object:v27];

  if (v60)
  {
    v28 = [(HMDCameraProfileSettingsManager *)v10 notificationCenter];
    v29 = [v16 residentDeviceManager];
    [v28 addObserver:v10 selector:sel_handlePrimaryResidentUpdatedNotification_ name:@"HMDResidentDeviceManagerUpdatePrimaryResidentNotification" object:v29];

    v30 = [(HMDCameraProfileSettingsManager *)v10 notificationCenter];
    [v30 addObserver:v10 selector:sel_handlePrimaryResidentUpdatedNotification_ name:@"HMDResidentDeviceConfirmedStateChangedNotification" object:0];

    v31 = [(HMDCameraProfileSettingsManager *)v10 featuresDataSource];
    v32 = [v31 isHomeActivityStateReplacesPresenceMonitorFeatureEnabled];

    if ((v32 & 1) == 0)
    {
      v33 = [(HMDCameraProfileSettingsManager *)v10 notificationCenter];
      v34 = [v16 presenceMonitor];
      [v33 addObserver:v10 selector:sel_handleHomePresenceEvaluatedNotification_ name:@"HMDHomePresenceEvaluatedNotification" object:v34];
    }

    v35 = [(HMDCameraProfileSettingsManager *)v10 notificationCenter];
    [v35 addObserver:v10 selector:sel_handleAccessoryConfiguredNotification_ name:@"HMDAccessoryConnectedNotification" object:v15];

    v36 = [(HMDCameraProfileSettingsManager *)v10 notificationCenter];
    [v36 addObserver:v10 selector:sel_handleRecordingManagementServiceDidUpdateNotification_ name:@"HMDRecordingManagementServiceDidUpdateNotification" object:v15];

    v37 = [(HMDCameraProfileSettingsManager *)v10 notificationCenter];
    [v37 addObserver:v10 selector:sel_handleCharacteristicsValueUpdatedNotification_ name:@"HMDNotificationCharacteristicValueUpdated" object:v15];

    if ([v15 isReachable])
    {
      [(HMDCameraProfileSettingsManager *)v10 _setManuallyDisabledCharacteristicNotificationsEnabled:1];
    }

    v38 = [(HMDCameraProfileSettingsManager *)v10 featuresDataSource];
    v39 = [v38 isHomeActivityStateReplacesPresenceMonitorFeatureEnabled];

    if (v39)
    {
      v40 = [v16 homeActivityStateManager];
      [v40 addObserver:v10];

      v41 = [v16 homeActivityStateManager];
      v42 = [v41 currentHomeActivityStateDetails];

      if (![v42 state])
      {
        v51 = objc_autoreleasePoolPush();
        v52 = v10;
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

      v43 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v42, "isHomeOccupied")}];
      [(HMDCameraProfileSettingsManager *)v10 setAnyUserAtHome:v43];

      v44 = objc_autoreleasePoolPush();
      v45 = v10;
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
      v47 = [v16 presenceMonitor];
      v42 = [v47 currentHomePresence];

      if (!v42)
      {
        v55 = objc_autoreleasePoolPush();
        v56 = v10;
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
        v42 = 0;
        goto LABEL_22;
      }

      v48 = [(HMDCameraProfileSettingsManager *)v10 _isAnyUserAtHomeForPresence:v42];
      [(HMDCameraProfileSettingsManager *)v10 setAnyUserAtHome:v48];

      v44 = objc_autoreleasePoolPush();
      v45 = v10;
      v46 = HMFGetOSLogHandle();
      if (!os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
      {
        goto LABEL_15;
      }
    }

    v49 = HMFGetLogIdentifier();
    v50 = [(HMDCameraProfileSettingsManager *)v45 isAnyUserAtHome];
    *buf = 138543618;
    v71 = v49;
    v72 = 2112;
    v73 = v50;
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
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    *buf = 138543362;
    v10 = v6;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Deallocating camera profile settings manager", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  [(HMDCameraProfileSettingsManager *)v4 _setManuallyDisabledCharacteristicNotificationsEnabled:0];
  v8.receiver = v4;
  v8.super_class = HMDCameraProfileSettingsManager;
  [(HMDCameraProfileSettingsManager *)&v8 dealloc];
  v7 = *MEMORY[0x277D85DE8];
}

- (HMDCameraProfileSettingsManager)initWithHAPAccessory:(id)a3 home:(id)a4 workQueue:(id)a5
{
  v37[1] = *MEMORY[0x277D85DE8];
  v7 = MEMORY[0x277CCAD78];
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [v10 uuid];
  v37[0] = @"HMDCameraProfileSettingsUUIDSalt";
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:1];
  v13 = [v7 hm_deriveUUIDFromBaseUUID:v11 withSalts:v12];

  v14 = MEMORY[0x277CCAD78];
  v36 = @"2b32a3ee-3908-406e-890d-74f9c410ef2b";
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v36 count:1];
  v30 = v13;
  v31 = [v14 hm_deriveUUIDFromBaseUUID:v13 withSalts:v15];

  v16 = [HMDCameraProfileSettingsCoreDataAdapter alloc];
  v17 = [v10 uuid];
  v18 = [v9 uuid];

  v29 = [(HMDCameraProfileSettingsCoreDataAdapter *)v16 initWithHAPAccessoryUUID:v17 homeUUID:v18 cameraProfileSettingsModelID:v13 derivedPropertiesModelID:v31];
  v19 = objc_alloc_init(HMDFeaturesDataSource);
  v20 = [[HMDCameraProfileSettingsQuotaCoordinator alloc] initWithWorkQueue:v8 accessory:v10];
  v34[0] = *MEMORY[0x277CD0EC0];
  v21 = [MEMORY[0x277CBEB98] setWithObject:*MEMORY[0x277CCF978]];
  v35[0] = v21;
  v34[1] = *MEMORY[0x277CD0E38];
  v22 = [MEMORY[0x277CBEB98] setWithObject:*MEMORY[0x277CCF910]];
  v35[1] = v22;
  v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:v34 count:2];

  v24 = [[HMDCharacteristicsAvailabilityListener alloc] initWithAccessory:v10 workQueue:v8 interestedCharacteristicTypesByServiceType:v23];
  v25 = [MEMORY[0x277CCAB98] defaultCenter];
  v26 = +[HMDBulletinBoard sharedBulletinBoard];
  v33 = [(HMDCameraProfileSettingsManager *)self initWithUniqueIdentifier:v30 hapAccessory:v10 workQueue:v8 coreDataAdapter:v29 notificationCenter:v25 bulletinBoard:v26 characteristicsAvailabilityListener:v24 quotaCoordinator:v20 featuresDataSource:v19];

  v27 = *MEMORY[0x277D85DE8];
  return v33;
}

- (HMDCameraProfileSettingsManager)initWithUniqueIdentifier:(id)a3 hapAccessory:(id)a4 workQueue:(id)a5 coreDataAdapter:(id)a6 notificationCenter:(id)a7 bulletinBoard:(id)a8 characteristicsAvailabilityListener:(id)a9 quotaCoordinator:(id)a10 featuresDataSource:(id)a11
{
  v33 = a3;
  obj = a4;
  v32 = a5;
  v31 = a6;
  v30 = a7;
  v29 = a8;
  v28 = a9;
  v27 = a10;
  v18 = a11;
  v35.receiver = self;
  v35.super_class = HMDCameraProfileSettingsManager;
  v19 = [(HMDCameraProfileSettingsManager *)&v35 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_uniqueIdentifier, a3);
    objc_storeWeak(&v20->_hapAccessory, obj);
    objc_storeStrong(&v20->_workQueue, a5);
    objc_storeStrong(&v20->_coreDataAdapter, a6);
    objc_storeStrong(&v20->_notificationCenter, a7);
    objc_storeStrong(&v20->_bulletinBoard, a8);
    objc_storeStrong(&v20->_quotaCoordinator, a10);
    objc_storeStrong(&v20->_characteristicsAvailabilityListener, a9);
    objc_storeStrong(&v20->_featuresDataSource, a11);
    v21 = MEMORY[0x277CCACA8];
    v22 = [MEMORY[0x277CCAD78] UUID];
    v23 = [v22 UUIDString];
    v24 = [v21 stringWithFormat:@"%@.HMDCameraProfileSettingsManager.%@", @"com.apple.HomeKitDaemon.Local", v23, v27, v28, v29, v30, v31, v32, v33];
    clientIdentifier = v20->_clientIdentifier;
    v20->_clientIdentifier = v24;
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

+ (id)zoneNameForHome:(id)a3
{
  v3 = [a3 uuid];
  v4 = [v3 UUIDString];
  v5 = [@"accessory-profile-data-" stringByAppendingString:v4];

  return v5;
}

@end