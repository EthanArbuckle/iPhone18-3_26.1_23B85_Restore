@interface HMDCameraSnapshotMonitorEvents
+ (id)logCategory;
- (HMDCameraSnapshotMonitorEvents)initWithSnapshotManager:(id)manager accessory:(id)accessory workQueue:(id)queue msgDispatcher:(id)dispatcher;
- (HMDCameraSnapshotMonitorEvents)initWithSnapshotManager:(id)manager accessory:(id)accessory workQueue:(id)queue msgDispatcher:(id)dispatcher bulletinBoard:(id)board notificationCenter:(id)center;
- (OS_dispatch_queue)messageReceiveQueue;
- (id)currentCameraSettings;
- (uint64_t)_canEnableNotificationForCharacteristic:(void *)characteristic cameraSettings:;
- (void)_characteristicsUpdated:(void *)updated modifiedCharacteristics:;
- (void)_enableNotificationsForCharacteristics:(void *)characteristics cameraSettings:;
- (void)_handleUpdatedBulletinSnapshotCharacteristics:(id *)characteristics;
- (void)_insertUpdateOrRemoveBulletins:(void *)bulletins forChangedCharacteristics:(void *)characteristics snapshotData:;
- (void)_removeBulletins:(void *)bulletins sessionID:;
- (void)_updateHomedRelaunchRegistration;
- (void)dealloc;
- (void)handleBulletinBoardNotificationDidUpdateNotification:(id)notification;
- (void)handleCameraSettingsDidUpdateNotification:(id)notification;
- (void)handleCharacteristicsChangedNotification:(id)notification;
- (void)listener:(id)listener didUpdateAvailableCharacteristics:(id)characteristics;
- (void)registerForMessages;
- (void)timerDidFire:(id)fire;
@end

@implementation HMDCameraSnapshotMonitorEvents

- (OS_dispatch_queue)messageReceiveQueue
{
  if (self)
  {
    self = objc_getProperty(self, a2, 8, 1);
    v2 = vars8;
  }

  return self;
}

- (void)timerDidFire:(id)fire
{
  v34 = *MEMORY[0x277D85DE8];
  fireCopy = fire;
  if (self)
  {
    Property = objc_getProperty(self, v4, 8, 1);
  }

  else
  {
    Property = 0;
  }

  dispatch_assert_queue_V2(Property);
  v7 = fireCopy;
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

  if (v9)
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      sessionID = [v9 sessionID];
      *buf = 138543618;
      v31 = v13;
      v32 = 2112;
      v33 = sessionID;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@Timer did fire for %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    if (self)
    {
      v16 = objc_getProperty(selfCopy, v15, 32, 1);
    }

    else
    {
      v16 = 0;
    }

    if ([v16 containsObject:v9])
    {
      v17 = objc_autoreleasePoolPush();
      v18 = selfCopy;
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        v20 = HMFGetLogIdentifier();
        sessionID2 = [v9 sessionID];
        *buf = 138543618;
        v31 = v20;
        v32 = 2112;
        v33 = sessionID2;
        _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_INFO, "%{public}@Posting notification as timer has expired for snapshot session %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v17);
      if (self)
      {
        v23 = objc_getProperty(v18, v22, 64, 1);
      }

      else
      {
        v23 = 0;
      }

      v24 = v23;
      changedCharacteristics = [v9 changedCharacteristics];
      allObjects = [changedCharacteristics allObjects];
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __47__HMDCameraSnapshotMonitorEvents_timerDidFire___block_invoke;
      v28[3] = &unk_278687998;
      v28[4] = v18;
      v29 = v9;
      [v24 insertImageBulletinsForChangedCharacteristics:allObjects snapshotData:0 completion:v28];
    }
  }

  v27 = *MEMORY[0x277D85DE8];
}

void __47__HMDCameraSnapshotMonitorEvents_timerDidFire___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (v5)
  {
    Property = objc_getProperty(v5, v3, 8, 1);
    v7 = *(a1 + 32);
  }

  else
  {
    v7 = 0;
    Property = 0;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__HMDCameraSnapshotMonitorEvents_timerDidFire___block_invoke_2;
  block[3] = &unk_27868A010;
  block[4] = v7;
  v10 = v4;
  v11 = *(a1 + 40);
  v8 = v4;
  dispatch_async(Property, block);
}

void __47__HMDCameraSnapshotMonitorEvents_timerDidFire___block_invoke_2(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = *(a1 + 48);
  v3 = *(a1 + 40);
  v5 = v2;
  if (v1)
  {
    Property = objc_getProperty(v1, v4, 8, 1);
    dispatch_assert_queue_V2(Property);
    if ([v3 count])
    {
      v8 = [objc_getProperty(v1 v7];
      v9 = objc_autoreleasePoolPush();
      v10 = v1;
      v11 = HMFGetOSLogHandle();
      v12 = os_log_type_enabled(v11, OS_LOG_TYPE_INFO);
      if (v8)
      {
        if (v12)
        {
          v13 = HMFGetLogIdentifier();
          v14 = [v5 sessionID];
          v24 = 138543618;
          v25 = v13;
          v26 = 2112;
          v27 = v14;
          _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Updating the posted bulletin for %@", &v24, 0x16u);
        }

        objc_autoreleasePoolPop(v9);
        [v5 setPostedBulletins:v3];
      }

      else
      {
        if (v12)
        {
          v20 = HMFGetLogIdentifier();
          v21 = [v5 sessionID];
          v24 = 138543618;
          v25 = v20;
          v26 = 2112;
          v27 = v21;
          _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Timer has been already removed for %@, removing the posted bulletin", &v24, 0x16u);
        }

        objc_autoreleasePoolPop(v9);
        v22 = [v5 sessionID];
        [(HMDCameraSnapshotMonitorEvents *)v10 _removeBulletins:v3 sessionID:v22];
      }
    }

    else
    {
      v15 = objc_autoreleasePoolPush();
      v16 = v1;
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v18 = HMFGetLogIdentifier();
        v19 = [v5 sessionID];
        v24 = 138543618;
        v25 = v18;
        v26 = 2112;
        v27 = v19;
        _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@No bulletins were posted for snapshot %@", &v24, 0x16u);
      }

      objc_autoreleasePoolPop(v15);
    }
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)_removeBulletins:(void *)bulletins sessionID:
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = a2;
  bulletinsCopy = bulletins;
  Property = objc_getProperty(self, v6, 8, 1);
  dispatch_assert_queue_V2(Property);
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = v5;
  v8 = [obj countByEnumeratingWithState:&v21 objects:v31 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v22;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v21 + 1) + 8 * i);
        v13 = objc_autoreleasePoolPush();
        selfCopy = self;
        v15 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          v16 = HMFGetLogIdentifier();
          *buf = 138543874;
          v26 = v16;
          v27 = 2112;
          v28 = v12;
          v29 = 2112;
          v30 = bulletinsCopy;
          _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@A bulletin with recordID %@ has already been posted for snapshot session %@, removing it", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v13);
        [objc_getProperty(selfCopy v17];
      }

      v9 = [obj countByEnumeratingWithState:&v21 objects:v31 count:16];
    }

    while (v9);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)handleCameraSettingsDidUpdateNotification:(id)notification
{
  notificationCopy = notification;
  if (self)
  {
    Property = objc_getProperty(self, v4, 8, 1);
  }

  else
  {
    Property = 0;
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __76__HMDCameraSnapshotMonitorEvents_handleCameraSettingsDidUpdateNotification___block_invoke;
  v8[3] = &unk_27868A750;
  v9 = notificationCopy;
  selfCopy = self;
  v7 = notificationCopy;
  dispatch_async(Property, v8);
}

void __76__HMDCameraSnapshotMonitorEvents_handleCameraSettingsDidUpdateNotification___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 objectForKeyedSubscript:@"HMDCameraProfileSettingsNotificationKey"];

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
    v6 = [*(a1 + 40) characteristicsAvailabilityListener];
    v7 = [v6 availableCharacteristics];

    v8 = objc_autoreleasePoolPush();
    v9 = *(a1 + 40);
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v13 = 138543362;
      v14 = v11;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Camera user settings changed.", &v13, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
    [(HMDCameraSnapshotMonitorEvents *)*(a1 + 40) _enableNotificationsForCharacteristics:v7 cameraSettings:v5];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_enableNotificationsForCharacteristics:(void *)characteristics cameraSettings:
{
  v43 = *MEMORY[0x277D85DE8];
  v5 = a2;
  characteristicsCopy = characteristics;
  if (self)
  {
    Property = objc_getProperty(self, v6, 8, 1);
    dispatch_assert_queue_V2(Property);
    v9 = [MEMORY[0x277CBEB58] set];
    v10 = &OBJC_IVAR___HMDApplicationVendorIDStoreValue__spiClient;
    [objc_getProperty(self v11];
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v29 = v5;
    obj = v5;
    v12 = [obj countByEnumeratingWithState:&v34 objects:v42 count:16];
    if (v12)
    {
      v13 = v12;
      v33 = *v35;
      v30 = characteristicsCopy;
      v31 = v9;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v35 != v33)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v34 + 1) + 8 * i);
          service = [v15 service];
          bulletinBoardNotification = [service bulletinBoardNotification];

          [objc_getProperty(self v18];
          if ([bulletinBoardNotification isEnabled] && -[HMDCameraSnapshotMonitorEvents _canEnableNotificationForCharacteristic:cameraSettings:](self, v15, characteristicsCopy))
          {
            v19 = objc_autoreleasePoolPush();
            selfCopy = self;
            v21 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
            {
              v22 = HMFGetLogIdentifier();
              *buf = 138543618;
              v39 = v22;
              v40 = 2112;
              v41 = v15;
              _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_INFO, "%{public}@Adding bulletin snapshot characteristic: %@", buf, 0x16u);

              characteristicsCopy = v30;
            }

            objc_autoreleasePoolPop(v19);
            v9 = v31;
            [v31 addObject:v15];
            v10 = &OBJC_IVAR___HMDApplicationVendorIDStoreValue__spiClient;
          }
        }

        v13 = [obj countByEnumeratingWithState:&v34 objects:v42 count:16];
      }

      while (v13);
    }

    bulletinSnapshotCharacteristics = [self bulletinSnapshotCharacteristics];
    v24 = [bulletinSnapshotCharacteristics count];
    if (v24 == [v9 count])
    {

      [(HMDCameraSnapshotMonitorEvents *)self _handleUpdatedBulletinSnapshotCharacteristics:v9];
      v5 = v29;
LABEL_21:

      goto LABEL_22;
    }

    bulletinSnapshotCharacteristics2 = [self bulletinSnapshotCharacteristics];
    if ([bulletinSnapshotCharacteristics2 count])
    {
      v26 = [v9 count];

      [(HMDCameraSnapshotMonitorEvents *)self _handleUpdatedBulletinSnapshotCharacteristics:v9];
      v5 = v29;
      if (v26)
      {
        goto LABEL_21;
      }
    }

    else
    {

      [(HMDCameraSnapshotMonitorEvents *)self _handleUpdatedBulletinSnapshotCharacteristics:v9];
      v5 = v29;
    }

    [(HMDCameraSnapshotMonitorEvents *)self _updateHomedRelaunchRegistration];
    goto LABEL_21;
  }

LABEL_22:

  v28 = *MEMORY[0x277D85DE8];
}

- (uint64_t)_canEnableNotificationForCharacteristic:(void *)characteristic cameraSettings:
{
  v61 = *MEMORY[0x277D85DE8];
  v5 = a2;
  characteristicCopy = characteristic;
  Property = objc_getProperty(self, v7, 8, 1);
  dispatch_assert_queue_V2(Property);
  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    v55 = 138543618;
    v56 = v12;
    v57 = 2112;
    v58 = v5;
    _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Checking if bulletin notification can be enabled for characteristic: %@", &v55, 0x16u);
  }

  objc_autoreleasePoolPop(v9);
  v13 = v5;
  objc_opt_self();
  type = [v13 type];
  if ([type isEqualToString:*MEMORY[0x277CCF910]])
  {
    service = [v13 service];
    type2 = [service type];
    v17 = [type2 isEqualToString:*MEMORY[0x277CD0E38]];

    if (v17)
    {
      v18 = objc_autoreleasePoolPush();
      v19 = selfCopy;
      v20 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        v21 = HMFGetLogIdentifier();
        v55 = 138543362;
        v56 = v21;
        v22 = "%{public}@Allowing notifications to be enabled for doorbell characteristic";
        v23 = v20;
        v24 = OS_LOG_TYPE_DEBUG;
LABEL_26:
        _os_log_impl(&dword_229538000, v23, v24, v22, &v55, 0xCu);

        goto LABEL_27;
      }

      goto LABEL_27;
    }
  }

  else
  {
  }

  v25 = v13;
  objc_opt_self();
  type3 = [v25 type];
  if (([type3 isEqualToString:*MEMORY[0x277CCF978]] & 1) == 0)
  {

LABEL_21:
    v44 = objc_autoreleasePoolPush();
    v45 = selfCopy;
    v46 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
    {
      v47 = HMFGetLogIdentifier();
      v55 = 138543362;
      v56 = v47;
      _os_log_impl(&dword_229538000, v46, OS_LOG_TYPE_DEBUG, "%{public}@Disallowing notifications to be enabled for non-doorbell, non-motion characteristic", &v55, 0xCu);
    }

    goto LABEL_23;
  }

  service2 = [v25 service];
  type4 = [service2 type];
  v29 = [type4 isEqualToString:*MEMORY[0x277CD0EC0]];

  if ((v29 & 1) == 0)
  {
    goto LABEL_21;
  }

  if (selfCopy)
  {
    WeakRetained = objc_loadWeakRetained(selfCopy + 5);
  }

  else
  {
    WeakRetained = 0;
  }

  isCameraRecordingFeatureSupported = [WeakRetained isCameraRecordingFeatureSupported];

  if ((isCameraRecordingFeatureSupported & 1) == 0)
  {
    v18 = objc_autoreleasePoolPush();
    v19 = selfCopy;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = HMFGetLogIdentifier();
      v55 = 138543362;
      v56 = v21;
      v22 = "%{public}@Allowing notifications to be enabled because recording is not supported for this camera";
      v23 = v20;
      v24 = OS_LOG_TYPE_INFO;
      goto LABEL_26;
    }

LABEL_27:

    objc_autoreleasePoolPop(v18);
    v48 = 1;
    goto LABEL_28;
  }

  [characteristicCopy currentAccessMode];
  if ((HMIsMotionDetectionAllowedForCameraAccessMode() & 1) == 0)
  {
    v44 = objc_autoreleasePoolPush();
    v45 = selfCopy;
    v46 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
    {
      v51 = HMFGetLogIdentifier();
      v52 = HMCameraAccessModeAsString();
      v55 = 138543618;
      v56 = v51;
      v57 = 2112;
      v58 = v52;
      _os_log_impl(&dword_229538000, v46, OS_LOG_TYPE_INFO, "%{public}@Disallowing notifications to be enabled because the camera's current access mode disallows motion detection: %@", &v55, 0x16u);
    }

LABEL_23:

    objc_autoreleasePoolPop(v44);
    v48 = 0;
    goto LABEL_28;
  }

  notificationSettings = [characteristicCopy notificationSettings];
  v33 = MEMORY[0x277CD18C0];
  smartBulletinBoardNotificationCondition = [notificationSettings smartBulletinBoardNotificationCondition];
  v35 = [v33 significantEventTypesInPredicate:smartBulletinBoardNotificationCondition];
  integerValue = [v35 integerValue];

  isSmartBulletinBoardNotificationEnabled = [notificationSettings isSmartBulletinBoardNotificationEnabled];
  if (integerValue)
  {
    v38 = isSmartBulletinBoardNotificationEnabled;
  }

  else
  {
    v38 = 0;
  }

  v39 = objc_autoreleasePoolPush();
  v40 = selfCopy;
  v41 = HMFGetOSLogHandle();
  v42 = os_log_type_enabled(v41, OS_LOG_TYPE_INFO);
  if (v38 == 1)
  {
    if (v42)
    {
      v43 = HMFGetLogIdentifier();
      v55 = 138543618;
      v56 = v43;
      v57 = 2112;
      v58 = notificationSettings;
      _os_log_impl(&dword_229538000, v41, OS_LOG_TYPE_INFO, "%{public}@Disallowing notifications to be enabled because smart notifications are enabled: %@", &v55, 0x16u);
    }
  }

  else if (v42)
  {
    v53 = HMFGetLogIdentifier();
    v54 = HMCameraAccessModeAsString();
    v55 = 138543874;
    v56 = v53;
    v57 = 2112;
    v58 = v54;
    v59 = 2112;
    v60 = notificationSettings;
    _os_log_impl(&dword_229538000, v41, OS_LOG_TYPE_INFO, "%{public}@Allowing notifications to be enabled for current access mode: %@, notification settings: %@", &v55, 0x20u);
  }

  objc_autoreleasePoolPop(v39);
  v48 = v38 ^ 1u;

LABEL_28:
  v49 = *MEMORY[0x277D85DE8];
  return v48;
}

- (void)_handleUpdatedBulletinSnapshotCharacteristics:(id *)characteristics
{
  v75 = *MEMORY[0x277D85DE8];
  v3 = a2;
  Property = objc_getProperty(characteristics, v4, 8, 1);
  dispatch_assert_queue_V2(Property);
  if (characteristics)
  {
    WeakRetained = objc_loadWeakRetained(characteristics + 5);
  }

  else
  {
    WeakRetained = 0;
  }

  v53 = WeakRetained;
  home = [WeakRetained home];
  characteristicsAvailabilityListener = [characteristics characteristicsAvailabilityListener];
  availableCharacteristics = [characteristicsAvailabilityListener availableCharacteristics];

  v52 = availableCharacteristics;
  v54 = v3;
  [availableCharacteristics na_setByRemovingObjectsFromSet:v3];
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v9 = v68 = 0u;
  v10 = [v9 countByEnumeratingWithState:&v65 objects:v74 count:16];
  obj = v9;
  characteristicsCopy = characteristics;
  if (v10)
  {
    v11 = v10;
    v12 = *v66;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v66 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v65 + 1) + 8 * i);
        accessoryBulletinNotificationManager = [home accessoryBulletinNotificationManager];
        v16 = objc_autoreleasePoolPush();
        characteristicsCopy2 = characteristics;
        v18 = HMFGetOSLogHandle();
        v19 = v18;
        if (!accessoryBulletinNotificationManager)
        {
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            v45 = HMFGetLogIdentifier();
            *buf = 138543362;
            v71 = v45;
            _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_ERROR, "%{public}@Accessory Bulletin Notification Manager is nil", buf, 0xCu);
          }

          objc_autoreleasePoolPop(v16);
          v46 = obj;

          v47 = v53;
          v48 = v54;
          v49 = v52;
          goto LABEL_33;
        }

        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          v20 = HMFGetLogIdentifier();
          *buf = 138543618;
          v71 = v20;
          v72 = 2112;
          v73 = v14;
          _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_INFO, "%{public}@Unregistering for notifications for characteristic: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v16);
        v21 = [MEMORY[0x277CBEB98] set];
        v22 = [MEMORY[0x277CBEB98] setWithObject:v14];
        v23 = [MEMORY[0x277CBEB98] set];
        v64[0] = MEMORY[0x277D85DD0];
        v64[1] = 3221225472;
        v64[2] = __80__HMDCameraSnapshotMonitorEvents__handleUpdatedBulletinSnapshotCharacteristics___block_invoke;
        v64[3] = &unk_27868A1D8;
        v64[4] = characteristicsCopy2;
        v64[5] = v14;
        [accessoryBulletinNotificationManager updateRegistrationsWithEnabledCharacteristics:v21 disabledCharacteristics:v22 conditions:v23 completion:v64];

        characteristics = characteristicsCopy;
      }

      v9 = obj;
      v11 = [obj countByEnumeratingWithState:&v65 objects:v74 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v24 = v54;
  v25 = [v24 countByEnumeratingWithState:&v60 objects:v69 count:16];
  if (v25)
  {
    v26 = v25;
    v56 = *v61;
    while (2)
    {
      for (j = 0; j != v26; ++j)
      {
        if (*v61 != v56)
        {
          objc_enumerationMutation(v24);
        }

        v28 = *(*(&v60 + 1) + 8 * j);
        accessoryBulletinNotificationManager2 = [home accessoryBulletinNotificationManager];
        v30 = objc_autoreleasePoolPush();
        characteristicsCopy3 = characteristics;
        v32 = HMFGetOSLogHandle();
        v33 = v32;
        if (!accessoryBulletinNotificationManager2)
        {
          if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
          {
            v50 = HMFGetLogIdentifier();
            *buf = 138543362;
            v71 = v50;
            _os_log_impl(&dword_229538000, v33, OS_LOG_TYPE_ERROR, "%{public}@Accessory Bulletin Notification Manager is nil", buf, 0xCu);
          }

          objc_autoreleasePoolPop(v30);
          goto LABEL_32;
        }

        if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
        {
          v34 = HMFGetLogIdentifier();
          *buf = 138543618;
          v71 = v34;
          v72 = 2112;
          v73 = v28;
          _os_log_impl(&dword_229538000, v33, OS_LOG_TYPE_INFO, "%{public}@Registering for notifications for characteristic: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v30);
        service = [v28 service];
        bulletinBoardNotification = [service bulletinBoardNotification];
        condition = [bulletinBoardNotification condition];

        v38 = [accessoryBulletinNotificationManager2 conditionsFromPredicate:condition];
        v39 = [MEMORY[0x277CBEB98] setWithObject:v28];
        v40 = [MEMORY[0x277CBEB98] set];
        v59[0] = MEMORY[0x277D85DD0];
        v59[1] = 3221225472;
        v59[2] = __80__HMDCameraSnapshotMonitorEvents__handleUpdatedBulletinSnapshotCharacteristics___block_invoke_41;
        v59[3] = &unk_27868A1D8;
        v59[4] = characteristicsCopy3;
        v59[5] = v28;
        [accessoryBulletinNotificationManager2 updateRegistrationsWithEnabledCharacteristics:v39 disabledCharacteristics:v40 conditions:v38 completion:v59];

        characteristics = characteristicsCopy;
      }

      v26 = [v24 countByEnumeratingWithState:&v60 objects:v69 count:16];
      if (v26)
      {
        continue;
      }

      break;
    }
  }

  v41 = objc_autoreleasePoolPush();
  characteristicsCopy4 = characteristics;
  v43 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
  {
    v44 = HMFGetLogIdentifier();
    *buf = 138543618;
    v71 = v44;
    v72 = 2112;
    v73 = v24;
    _os_log_impl(&dword_229538000, v43, OS_LOG_TYPE_INFO, "%{public}@Setting the bulletin snapshot characteristics to %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v41);
  [characteristicsCopy4 setBulletinSnapshotCharacteristics:v24];
LABEL_32:
  v49 = v52;
  v47 = v53;
  v46 = obj;
  v48 = v54;
LABEL_33:

  v51 = *MEMORY[0x277D85DE8];
}

- (void)_updateHomedRelaunchRegistration
{
  v17 = *MEMORY[0x277D85DE8];
  Property = objc_getProperty(self, a2, 8, 1);
  dispatch_assert_queue_V2(Property);
  bulletinSnapshotCharacteristics = [self bulletinSnapshotCharacteristics];
  v5 = [bulletinSnapshotCharacteristics count];

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_INFO);
  if (v5)
  {
    if (v9)
    {
      v10 = HMFGetLogIdentifier();
      v15 = 138543362;
      v16 = v10;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Registering homed for relaunch", &v15, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    v11 = +[HMDLaunchHandler sharedHandler];
    uniqueIdentifier = [selfCopy uniqueIdentifier];
    [v11 registerRelaunchClientWithUUID:uniqueIdentifier];
  }

  else
  {
    if (v9)
    {
      v13 = HMFGetLogIdentifier();
      v15 = 138543362;
      v16 = v13;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Deregistering homed for relaunch", &v15, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    v11 = +[HMDLaunchHandler sharedHandler];
    uniqueIdentifier = [selfCopy uniqueIdentifier];
    [v11 deregisterRelaunchClientWithUUID:uniqueIdentifier];
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __80__HMDCameraSnapshotMonitorEvents__handleUpdatedBulletinSnapshotCharacteristics___block_invoke(uint64_t a1, void *a2)
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
      v10 = "%{public}@Error unregistering for notifications from characteristic %@ : %@";
      v11 = v7;
      v12 = OS_LOG_TYPE_ERROR;
      v13 = 32;
LABEL_6:
      _os_log_impl(&dword_229538000, v11, v12, v10, &v16, v13);
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
    v10 = "%{public}@Unregistered for notifications from characteristic %@";
    v11 = v7;
    v12 = OS_LOG_TYPE_INFO;
    v13 = 22;
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v4);
  v15 = *MEMORY[0x277D85DE8];
}

void __80__HMDCameraSnapshotMonitorEvents__handleUpdatedBulletinSnapshotCharacteristics___block_invoke_41(uint64_t a1, void *a2)
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
      v10 = "%{public}@Error registering for notifications from characteristic %@ : %@";
      v11 = v7;
      v12 = OS_LOG_TYPE_ERROR;
      v13 = 32;
LABEL_6:
      _os_log_impl(&dword_229538000, v11, v12, v10, &v16, v13);
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
    v10 = "%{public}@Registered for notifications from characteristic %@";
    v11 = v7;
    v12 = OS_LOG_TYPE_INFO;
    v13 = 22;
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v4);
  v15 = *MEMORY[0x277D85DE8];
}

- (void)handleCharacteristicsChangedNotification:(id)notification
{
  notificationCopy = notification;
  if (self)
  {
    Property = objc_getProperty(self, v4, 8, 1);
  }

  else
  {
    Property = 0;
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __75__HMDCameraSnapshotMonitorEvents_handleCharacteristicsChangedNotification___block_invoke;
  v8[3] = &unk_27868A750;
  v8[4] = self;
  v9 = notificationCopy;
  v7 = notificationCopy;
  dispatch_async(Property, v8);
}

void __75__HMDCameraSnapshotMonitorEvents_handleCharacteristicsChangedNotification___block_invoke(uint64_t a1)
{
  v42 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) userInfo];
  v34 = v2;
  if (v1)
  {
    Property = objc_getProperty(v1, v3, 8, 1);
    dispatch_assert_queue_V2(Property);
    v5 = [v34 objectForKeyedSubscript:@"kModifiedCharacteristicsMapKey"];
    v6 = [v34 hmf_arrayForKey:@"kCharacteristicsToShowBulletinsKey"];
    v32 = v6;
    v33 = v5;
    if (v6)
    {
      v7 = v6;
    }

    else
    {
      v7 = [v34 hmf_arrayForKey:@"kModifiedCharacteristicsKey"];
    }

    v8 = v7;
    v9 = [MEMORY[0x277CBEB58] set];
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v10 = v8;
    v11 = [v10 countByEnumeratingWithState:&v37 objects:v41 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v38;
      v14 = *MEMORY[0x277CCF978];
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v38 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v16 = *(*(&v37 + 1) + 8 * i);
          v17 = [v1 bulletinSnapshotCharacteristics];
          v18 = [v17 containsObject:v16];

          if (v18)
          {
            v19 = [v16 type];
            v20 = [v19 isEqualToString:v14];

            if (!v20 || ([v16 value], v21 = objc_claimAutoreleasedReturnValue(), v22 = objc_msgSend(v21, "BOOLValue"), v21, v22))
            {
              [v9 addObject:v16];
            }
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v37 objects:v41 count:16];
      }

      while (v12);
    }

    if (![v9 count])
    {
      goto LABEL_26;
    }

    if (v32)
    {
      v23 = [v9 allObjects];
      [(HMDCameraSnapshotMonitorEvents *)v1 _characteristicsUpdated:v23 modifiedCharacteristics:v33];
LABEL_25:

LABEL_26:
      v2 = v34;
      goto LABEL_27;
    }

    v23 = [v34 hmf_dictionaryForKey:@"kPresenceDictionaryForNotificationKey"];
    v24 = [v34 hmf_dictionaryForKey:@"kPresencePairingIdentifierDictionaryForNotificationKey"];
    v31 = v24;
    if (v24)
    {
      v25 = [[HMDHomePresenceRemote alloc] initWithPresenceByPairingIdentity:v24, v24];
    }

    else
    {
      if (!v23)
      {
        v26 = 0;
        goto LABEL_24;
      }

      v25 = [[HMDHomePresenceRemote alloc] initWithPresenceByUserId:v23, 0];
    }

    v26 = v25;
LABEL_24:
    WeakRetained = objc_loadWeakRetained(v1 + 5);
    v28 = [WeakRetained home];
    v29 = [v9 allObjects];
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __71__HMDCameraSnapshotMonitorEvents__handleCharacteristicsChangedPayload___block_invoke;
    v35[3] = &unk_278684218;
    v35[4] = v1;
    v36 = v33;
    [v28 evaluateNotificationConditionForCharacteristics:v29 homePresence:v26 completion:v35];

    goto LABEL_25;
  }

LABEL_27:

  v30 = *MEMORY[0x277D85DE8];
}

- (void)_characteristicsUpdated:(void *)updated modifiedCharacteristics:
{
  v64 = *MEMORY[0x277D85DE8];
  v48 = a2;
  updatedCopy = updated;
  if (self)
  {
    Property = objc_getProperty(self, v5, 8, 1);
    dispatch_assert_queue_V2(Property);
    v47 = [MEMORY[0x277CBEB98] setWithArray:v48];
    v8 = v47;
    if ([v47 count])
    {
      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      v9 = v47;
      v10 = [v9 countByEnumeratingWithState:&v55 objects:v63 count:16];
      if (v10)
      {
        v11 = *v56;
LABEL_5:
        v12 = 0;
        while (1)
        {
          if (*v56 != v11)
          {
            objc_enumerationMutation(v9);
          }

          v13 = [updatedCopy objectForKey:*(*(&v55 + 1) + 8 * v12)];
          updateIdentifier = [v13 updateIdentifier];
          if (updateIdentifier)
          {
            remoteDevice = [v13 remoteDevice];
            v16 = remoteDevice == 0;

            if (!v16)
            {
              break;
            }
          }

          if (v10 == ++v12)
          {
            v10 = [v9 countByEnumeratingWithState:&v55 objects:v63 count:16];
            if (v10)
            {
              goto LABEL_5;
            }

            goto LABEL_12;
          }
        }
      }

      else
      {
LABEL_12:
        v13 = 0;
      }

      v17 = objc_autoreleasePoolPush();
      selfCopy = self;
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        v20 = HMFGetLogIdentifier();
        *buf = 138543618;
        v60 = v20;
        v61 = 2112;
        v62 = v9;
        _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_INFO, "%{public}@Taking a snapshot as the update characteristic %@ is being monitored", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v17);
      WeakRetained = objc_loadWeakRetained(selfCopy + 3);
      v21 = objc_loadWeakRetained(selfCopy + 5);
      if ([v21 isReachable])
      {
        v22 = 7.0;
      }

      else
      {
        v22 = 15.0;
      }

      uUID = [MEMORY[0x277CCAD78] UUID];
      uUIDString = [uUID UUIDString];

      v25 = [[HMDCameraSnapshotNotificationTimer alloc] initWithCameraSessionID:uUIDString changedCharacteristics:v9 timeInterval:v22];
      [(HMFTimer *)v25 setDelegate:selfCopy];
      [(HMFTimer *)v25 setDelegateQueue:objc_getProperty(selfCopy, v26, 8, 1)];
      [objc_getProperty(selfCopy v27];
      dictionary = [MEMORY[0x277CBEB38] dictionary];
      [dictionary setObject:uUIDString forKeyedSubscript:@"kCameraSessionID"];
      if (v13)
      {
        updateIdentifier2 = [v13 updateIdentifier];
        [dictionary setObject:updateIdentifier2 forKeyedSubscript:@"kCameraProactiveSessionID"];

        remoteDevice2 = [v13 remoteDevice];
        [dictionary setObject:remoteDevice2 forKeyedSubscript:@"kIDSMessageSourceIDKey"];
      }

      [dictionary setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277CCF5B8]];
      v31 = objc_autoreleasePoolPush();
      v32 = selfCopy;
      v33 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
      {
        v34 = HMFGetLogIdentifier();
        *buf = 138543618;
        v60 = v34;
        v61 = 2112;
        v62 = dictionary;
        _os_log_impl(&dword_229538000, v33, OS_LOG_TYPE_INFO, "%{public}@Notification payload is: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v31);
      objc_initWeak(&location, v32);
      v35 = MEMORY[0x277D0F818];
      v49[0] = MEMORY[0x277D85DD0];
      v49[1] = 3221225472;
      v49[2] = __82__HMDCameraSnapshotMonitorEvents__characteristicsUpdated_modifiedCharacteristics___block_invoke;
      v49[3] = &unk_2786839D0;
      objc_copyWeak(&v53, &location);
      v36 = *MEMORY[0x277CCF5D0];
      v45 = uUIDString;
      v50 = v45;
      v51 = v9;
      v37 = v25;
      v52 = v37;
      v38 = [v35 messageWithName:v36 messagePayload:dictionary responseHandler:v49];
      [WeakRetained takeSnapshot:v38];
      v39 = objc_autoreleasePoolPush();
      v40 = v32;
      v41 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
      {
        v42 = HMFGetLogIdentifier();
        sessionID = [(HMDCameraSnapshotNotificationTimer *)v37 sessionID];
        *buf = 138543618;
        v60 = v42;
        v61 = 2112;
        v62 = sessionID;
        _os_log_impl(&dword_229538000, v41, OS_LOG_TYPE_INFO, "%{public}@Starting the notification timer for identifier %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v39);
      [(HMFTimer *)v37 resume];

      objc_destroyWeak(&v53);
      objc_destroyWeak(&location);

      v8 = v47;
    }
  }

  v44 = *MEMORY[0x277D85DE8];
}

void __71__HMDCameraSnapshotMonitorEvents__handleCharacteristicsChangedPayload___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  if (v6)
  {
    Property = objc_getProperty(v6, v4, 8, 1);
    v8 = *(a1 + 32);
  }

  else
  {
    v8 = 0;
    Property = 0;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71__HMDCameraSnapshotMonitorEvents__handleCharacteristicsChangedPayload___block_invoke_2;
  block[3] = &unk_27868A010;
  block[4] = v8;
  v11 = v5;
  v12 = *(a1 + 40);
  v9 = v5;
  dispatch_async(Property, block);
}

void __82__HMDCameraSnapshotMonitorEvents__characteristicsUpdated_modifiedCharacteristics___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v78 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a2;
  self = objc_loadWeakRetained((a1 + 56));
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v10 = v5;
  v11 = v6;
  v12 = v7;
  v13 = v8;
  v15 = v9;
  if (self)
  {
    Property = objc_getProperty(self, v14, 8, 1);
    dispatch_assert_queue_V2(Property);
    [objc_getProperty(self v17];
    if (v10)
    {
      v67 = v15;
      v64 = v11;
      WeakRetained = objc_loadWeakRetained(self + 3);
      v19 = *MEMORY[0x277CD26B8];
      v20 = [v10 objectForKeyedSubscript:*MEMORY[0x277CD26B8]];
      v21 = [v20 lastPathComponent];
      v23 = objc_getProperty(self, v22, 48, 1);
      v24 = MEMORY[0x277CCACA8];
      v25 = v23;
      v62 = v21;
      v26 = [v24 stringWithFormat:@"%@_%@.%@", v21, v12, @"jpg"];
      v27 = [v25 stringByAppendingPathComponent:v26];

      v28 = [MEMORY[0x277CCAA00] defaultManager];
      v69 = 0;
      v66 = v20;
      v29 = v20;
      v30 = v27;
      LOBYTE(v25) = [v28 linkItemAtPath:v29 toPath:v27 error:&v69];
      v65 = v69;

      if ((v25 & 1) == 0)
      {
        v31 = objc_autoreleasePoolPush();
        v32 = self;
        v33 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          v34 = HMFGetLogIdentifier();
          *buf = 138544130;
          v71 = v34;
          v72 = 2112;
          v73 = v30;
          v74 = 2112;
          v75 = v66;
          v76 = 2112;
          v77 = v65;
          _os_log_impl(&dword_229538000, v33, OS_LOG_TYPE_ERROR, "%{public}@Failed to create hard link: %@ to file at path %@ with error %@", buf, 0x2Au);
        }

        objc_autoreleasePoolPop(v31);
        v30 = 0;
      }

      v35 = [MEMORY[0x277CBEB38] dictionary];
      v36 = *MEMORY[0x277CD1198];
      v37 = [v10 objectForKeyedSubscript:*MEMORY[0x277CD1198]];
      [v35 setObject:v37 forKeyedSubscript:v36];

      v63 = v30;
      [v35 setObject:v30 forKeyedSubscript:v19];
      [v35 setObject:v12 forKeyedSubscript:@"kCameraSessionID"];
      v38 = *MEMORY[0x277CD26B0];
      v39 = [v10 objectForKeyedSubscript:*MEMORY[0x277CD26B0]];
      [v35 setObject:v39 forKeyedSubscript:v38];

      v40 = [WeakRetained uniqueIdentifier];
      [v35 setObject:v40 forKeyedSubscript:@"HM.accessoryProfileUUID"];

      v41 = objc_autoreleasePoolPush();
      v42 = self;
      v43 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
      {
        v44 = HMFGetLogIdentifier();
        *buf = 138543618;
        v71 = v44;
        v72 = 2112;
        v73 = v10;
        _os_log_impl(&dword_229538000, v43, OS_LOG_TYPE_INFO, "%{public}@Took snapshot with response %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v41);
      v45 = [v67 postedBulletins];
      v46 = [v13 allObjects];
      [(HMDCameraSnapshotMonitorEvents *)v42 _insertUpdateOrRemoveBulletins:v45 forChangedCharacteristics:v46 snapshotData:v35];

      v47 = [v10 objectForKeyedSubscript:*MEMORY[0x277CD1060]];
      v48 = objc_autoreleasePoolPush();
      v49 = v42;
      v50 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
      {
        HMFGetLogIdentifier();
        v51 = WeakRetained;
        v52 = v13;
        v54 = v53 = v12;
        *buf = 138543618;
        v71 = v54;
        v72 = 2112;
        v73 = v47;
        _os_log_impl(&dword_229538000, v50, OS_LOG_TYPE_INFO, "%{public}@Releasing snapshot with slot identifier: %@", buf, 0x16u);

        v12 = v53;
        v13 = v52;
        WeakRetained = v51;
      }

      objc_autoreleasePoolPop(v48);
      [WeakRetained releaseSnapshotWithSlotIdentifier:v47];

      v11 = v64;
      v55 = v66;
      v15 = v67;
    }

    else
    {
      v56 = v13;
      v57 = objc_autoreleasePoolPush();
      v58 = self;
      v59 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
      {
        v60 = HMFGetLogIdentifier();
        *buf = 138543874;
        v71 = v60;
        v72 = 2112;
        v73 = v12;
        v74 = 2112;
        v75 = v11;
        _os_log_impl(&dword_229538000, v59, OS_LOG_TYPE_ERROR, "%{public}@Failed to take a snapshot for session ID %@: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v57);
      [v15 postedBulletins];
      WeakRetained = v13 = v56;
      v55 = [v13 allObjects];
      [(HMDCameraSnapshotMonitorEvents *)v58 _insertUpdateOrRemoveBulletins:v55 forChangedCharacteristics:0 snapshotData:?];
    }
  }

  v61 = *MEMORY[0x277D85DE8];
}

- (void)_insertUpdateOrRemoveBulletins:(void *)bulletins forChangedCharacteristics:(void *)characteristics snapshotData:
{
  v28 = *MEMORY[0x277D85DE8];
  v7 = a2;
  bulletinsCopy = bulletins;
  characteristicsCopy = characteristics;
  Property = objc_getProperty(self, v10, 8, 1);
  dispatch_assert_queue_V2(Property);
  v13 = objc_getProperty(self, v12, 64, 1);
  if (v7)
  {
    if (objc_opt_respondsToSelector())
    {
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v14 = v7;
      v15 = [v14 countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v15)
      {
        v17 = v15;
        v18 = *v24;
        do
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v24 != v18)
            {
              objc_enumerationMutation(v14);
            }

            v20 = *(*(&v23 + 1) + 8 * i);
            v21 = objc_getProperty(self, v16, 64, 1);
            [v21 updateBulletinWithRecordID:v20 forChangedCharacteristics:bulletinsCopy snapshotData:{characteristicsCopy, v23}];
          }

          v17 = [v14 countByEnumeratingWithState:&v23 objects:v27 count:16];
        }

        while (v17);
      }
    }

    else
    {
      v14 = [characteristicsCopy objectForKeyedSubscript:@"kCameraSessionID"];
      [(HMDCameraSnapshotMonitorEvents *)self _removeBulletins:v7 sessionID:v14];
    }
  }

  else
  {
    [v13 insertImageBulletinsForChangedCharacteristics:bulletinsCopy snapshotData:characteristicsCopy completion:0];
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)handleBulletinBoardNotificationDidUpdateNotification:(id)notification
{
  notificationCopy = notification;
  if (self)
  {
    Property = objc_getProperty(self, v4, 8, 1);
  }

  else
  {
    Property = 0;
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __87__HMDCameraSnapshotMonitorEvents_handleBulletinBoardNotificationDidUpdateNotification___block_invoke;
  v8[3] = &unk_27868A750;
  v8[4] = self;
  v9 = notificationCopy;
  v7 = notificationCopy;
  dispatch_async(Property, v8);
}

void __87__HMDCameraSnapshotMonitorEvents_handleBulletinBoardNotificationDidUpdateNotification___block_invoke(uint64_t a1)
{
  v56 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v1)
  {
    Property = objc_getProperty(v1, v2, 8, 1);
    dispatch_assert_queue_V2(Property);
    v5 = [v3 object];
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

    v8 = objc_autoreleasePoolPush();
    v42 = v1;
    v9 = HMFGetOSLogHandle();
    v10 = v9;
    if (!v7)
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v34 = HMFGetLogIdentifier();
        v35 = [v3 object];
        *buf = 138543618;
        v53 = v34;
        v54 = 2112;
        v55 = v35;
        _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Unexpected notifier for HMDBulletinBoardNotificationDidUpdateNotification: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v8);
      goto LABEL_33;
    }

    v41 = v3;
    v11 = v42;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543618;
      v53 = v12;
      v54 = 2112;
      v55 = v7;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Handling updated bulletin board notification: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    v13 = [v42 characteristicsAvailabilityListener];
    v14 = [v13 availableCharacteristics];

    v15 = [v42 bulletinSnapshotCharacteristics];
    v16 = [v15 mutableCopy];

    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    obj = v14;
    v17 = [obj countByEnumeratingWithState:&v44 objects:buf count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v45;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v45 != v19)
          {
            objc_enumerationMutation(obj);
          }

          v21 = *(*(&v44 + 1) + 8 * i);
          v22 = [v7 service];
          v23 = [v22 characteristics];
          v24 = [v23 containsObject:v21];

          if (v24)
          {
            if ([v7 isEnabled] && (-[HMDCameraSnapshotMonitorEvents currentCameraSettings](v11, v25), v26 = objc_claimAutoreleasedReturnValue(), v27 = -[HMDCameraSnapshotMonitorEvents _canEnableNotificationForCharacteristic:cameraSettings:](v11, v21, v26), v26, v27))
            {
              v28 = objc_autoreleasePoolPush();
              v29 = v11;
              v30 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
              {
                v31 = HMFGetLogIdentifier();
                *v48 = 138543618;
                v49 = v31;
                v50 = 2112;
                v51 = v21;
                _os_log_impl(&dword_229538000, v30, OS_LOG_TYPE_INFO, "%{public}@Adding bulletin snapshot characteristic: %@", v48, 0x16u);

                v11 = v42;
              }

              objc_autoreleasePoolPop(v28);
              [v16 addObject:v21];
            }

            else
            {
              [v16 removeObject:v21];
            }
          }
        }

        v18 = [obj countByEnumeratingWithState:&v44 objects:buf count:16];
      }

      while (v18);
    }

    v32 = [v11 bulletinSnapshotCharacteristics];
    v33 = [v32 count];
    if (v33 == [v16 count])
    {

      [(HMDCameraSnapshotMonitorEvents *)v11 _handleUpdatedBulletinSnapshotCharacteristics:v16];
      v3 = v41;
LABEL_32:

LABEL_33:
      goto LABEL_34;
    }

    v36 = [v11 bulletinSnapshotCharacteristics];
    v37 = v11;
    v3 = v41;
    if ([v36 count])
    {
      v38 = [v16 count];

      [(HMDCameraSnapshotMonitorEvents *)v37 _handleUpdatedBulletinSnapshotCharacteristics:v16];
      if (v38)
      {
        goto LABEL_32;
      }
    }

    else
    {

      [(HMDCameraSnapshotMonitorEvents *)v37 _handleUpdatedBulletinSnapshotCharacteristics:v16];
    }

    [(HMDCameraSnapshotMonitorEvents *)v37 _updateHomedRelaunchRegistration];
    goto LABEL_32;
  }

LABEL_34:

  v40 = *MEMORY[0x277D85DE8];
}

- (id)currentCameraSettings
{
  selfCopy = self;
  if (self)
  {
    Property = objc_getProperty(self, a2, 8, 1);
    dispatch_assert_queue_V2(Property);
    WeakRetained = objc_loadWeakRetained(selfCopy + 5);
    cameraProfiles = [WeakRetained cameraProfiles];
    anyObject = [cameraProfiles anyObject];
    selfCopy = [anyObject currentSettings];
  }

  return selfCopy;
}

- (void)listener:(id)listener didUpdateAvailableCharacteristics:(id)characteristics
{
  v19 = *MEMORY[0x277D85DE8];
  listenerCopy = listener;
  characteristicsCopy = characteristics;
  if (self)
  {
    Property = objc_getProperty(self, v7, 8, 1);
  }

  else
  {
    Property = 0;
  }

  dispatch_assert_queue_V2(Property);
  v10 = objc_autoreleasePoolPush();
  selfCopy = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = HMFGetLogIdentifier();
    v17 = 138543362;
    v18 = v13;
    _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@Available characteristics changed", &v17, 0xCu);
  }

  objc_autoreleasePoolPop(v10);
  currentCameraSettings = [(HMDCameraSnapshotMonitorEvents *)&selfCopy->super.super.isa currentCameraSettings];
  [(HMDCameraSnapshotMonitorEvents *)selfCopy _enableNotificationsForCharacteristics:characteristicsCopy cameraSettings:currentCameraSettings];

  v16 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    *buf = 138543618;
    v15 = v6;
    v16 = 2112;
    v17 = selfCopy;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Deallocating %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v3);
  if (selfCopy)
  {
    Property = objc_getProperty(selfCopy, v7, 56, 1);
  }

  else
  {
    Property = 0;
  }

  [Property removeObserver:selfCopy];
  WeakRetained = objc_loadWeakRetained(&selfCopy->_accessory);
  allObjects = [(NSSet *)selfCopy->_bulletinSnapshotCharacteristics allObjects];
  [WeakRetained setNotificationsEnabled:0 forCharacteristics:allObjects clientIdentifier:selfCopy->_clientIdentifier];

  [objc_getProperty(selfCopy v11];
  v13.receiver = selfCopy;
  v13.super_class = HMDCameraSnapshotMonitorEvents;
  [(HMDCameraSnapshotMonitorEvents *)&v13 dealloc];
  v12 = *MEMORY[0x277D85DE8];
}

- (void)registerForMessages
{
  v18 = *MEMORY[0x277D85DE8];
  if (self)
  {
    Property = objc_getProperty(self, a2, 8, 1);
    dispatch_assert_queue_V2(Property);
    WeakRetained = objc_loadWeakRetained(&self->_accessory);
  }

  else
  {
    dispatch_assert_queue_V2(0);
    WeakRetained = 0;
  }

  characteristicsAvailabilityListener = [(HMDCameraSnapshotMonitorEvents *)self characteristicsAvailabilityListener];
  [characteristicsAvailabilityListener setDelegate:self];

  characteristicsAvailabilityListener2 = [(HMDCameraSnapshotMonitorEvents *)self characteristicsAvailabilityListener];
  [characteristicsAvailabilityListener2 start];

  if (self && objc_getProperty(self, v7, 64, 1))
  {
    [objc_getProperty(self v8];
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      v16 = 138543362;
      v17 = v13;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@No bulletin board, not subscribing for notifications for doorbell or motion sensor", &v16, 0xCu);
    }

    objc_autoreleasePoolPop(v10);
    if (!self)
    {
      v14 = 0;
      goto LABEL_10;
    }
  }

  v14 = objc_getProperty(self, v9, 72, 1);
LABEL_10:
  [v14 addObserver:sel_handleCameraSettingsDidUpdateNotification_ name:@"HMDCameraProfileSettingsDidChangeNotification" object:WeakRetained];

  v15 = *MEMORY[0x277D85DE8];
}

- (HMDCameraSnapshotMonitorEvents)initWithSnapshotManager:(id)manager accessory:(id)accessory workQueue:(id)queue msgDispatcher:(id)dispatcher bulletinBoard:(id)board notificationCenter:(id)center
{
  v58[1] = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  accessoryCopy = accessory;
  queueCopy = queue;
  dispatcherCopy = dispatcher;
  boardCopy = board;
  centerCopy = center;
  v55.receiver = self;
  v55.super_class = HMDCameraSnapshotMonitorEvents;
  v19 = [(HMDCameraSnapshotMonitorEvents *)&v55 init];
  v20 = v19;
  if (v19)
  {
    objc_storeWeak(&v19->_snapshotManager, managerCopy);
    objc_storeWeak(&v20->_accessory, accessoryCopy);
    objc_storeStrong(&v20->_workQueue, queue);
    objc_storeStrong(&v20->_msgDispatcher, dispatcher);
    objc_storeStrong(&v20->_notificationCenter, center);
    v21 = [MEMORY[0x277CBEB58] set];
    snapShotNotificationResponseTimers = v20->_snapShotNotificationResponseTimers;
    v20->_snapShotNotificationResponseTimers = v21;

    v23 = MEMORY[0x277CCAD78];
    uniqueIdentifier = [managerCopy uniqueIdentifier];
    v58[0] = @"HMDCameraSnapshotMonitorEvents";
    v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v58 count:1];
    v26 = [v23 hm_deriveUUIDFromBaseUUID:uniqueIdentifier identifierSalt:0 withSalts:v25];
    uniqueIdentifier = v20->_uniqueIdentifier;
    v20->_uniqueIdentifier = v26;

    v28 = MEMORY[0x277CCACA8];
    name = [accessoryCopy name];
    uUIDString = [(NSUUID *)v20->_uniqueIdentifier UUIDString];
    v31 = [v28 stringWithFormat:@"%@/%@", name, uUIDString];
    logIdentifier = v20->_logIdentifier;
    v20->_logIdentifier = v31;

    if (boardCopy)
    {
      objc_storeStrong(&v20->_bulletinBoard, board);
      v33 = getBulletinImagesPath();
      uuid = [accessoryCopy uuid];
      uUIDString2 = [uuid UUIDString];
      v36 = [v33 stringByAppendingPathComponent:uUIDString2];
      bulletinImagesDirectory = v20->_bulletinImagesDirectory;
      v20->_bulletinImagesDirectory = v36;

      createDirectory(v20->_bulletinImagesDirectory);
    }

    v38 = [MEMORY[0x277CBEB98] set];
    bulletinSnapshotCharacteristics = v20->_bulletinSnapshotCharacteristics;
    v20->_bulletinSnapshotCharacteristics = v38;

    v40 = [[HMDNotificationRegistration alloc] initWithRegisterer:v20];
    notificationRegistration = v20->_notificationRegistration;
    v20->_notificationRegistration = v40;

    v56[0] = *MEMORY[0x277CD0EC0];
    v42 = [MEMORY[0x277CBEB98] setWithObject:*MEMORY[0x277CCF978]];
    v57[0] = v42;
    v56[1] = *MEMORY[0x277CD0E38];
    v43 = [MEMORY[0x277CBEB98] setWithObject:*MEMORY[0x277CCF910]];
    v57[1] = v43;
    v44 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v57 forKeys:v56 count:2];

    v45 = [[HMDCharacteristicsAvailabilityListener alloc] initWithAccessory:accessoryCopy workQueue:queueCopy interestedCharacteristicTypesByServiceType:v44];
    characteristicsAvailabilityListener = v20->_characteristicsAvailabilityListener;
    v20->_characteristicsAvailabilityListener = v45;

    v47 = MEMORY[0x277CCACA8];
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString3 = [uUID UUIDString];
    v50 = [v47 stringWithFormat:@"%@.%@", @"com.apple.HomeKitDaemon.serviceGroupAssociation", uUIDString3];
    clientIdentifier = v20->_clientIdentifier;
    v20->_clientIdentifier = v50;
  }

  v52 = *MEMORY[0x277D85DE8];
  return v20;
}

- (HMDCameraSnapshotMonitorEvents)initWithSnapshotManager:(id)manager accessory:(id)accessory workQueue:(id)queue msgDispatcher:(id)dispatcher
{
  dispatcherCopy = dispatcher;
  queueCopy = queue;
  accessoryCopy = accessory;
  managerCopy = manager;
  v14 = +[HMDCameraProfile bulletinBoard];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v16 = [(HMDCameraSnapshotMonitorEvents *)self initWithSnapshotManager:managerCopy accessory:accessoryCopy workQueue:queueCopy msgDispatcher:dispatcherCopy bulletinBoard:v14 notificationCenter:defaultCenter];

  return v16;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t42_154744 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t42_154744, &__block_literal_global_154745);
  }

  v3 = logCategory__hmf_once_v43_154746;

  return v3;
}

void __45__HMDCameraSnapshotMonitorEvents_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v43_154746;
  logCategory__hmf_once_v43_154746 = v1;
}

@end