@interface HMDCameraSnapshotMonitorEvents
+ (id)logCategory;
- (HMDCameraSnapshotMonitorEvents)initWithSnapshotManager:(id)a3 accessory:(id)a4 workQueue:(id)a5 msgDispatcher:(id)a6;
- (HMDCameraSnapshotMonitorEvents)initWithSnapshotManager:(id)a3 accessory:(id)a4 workQueue:(id)a5 msgDispatcher:(id)a6 bulletinBoard:(id)a7 notificationCenter:(id)a8;
- (OS_dispatch_queue)messageReceiveQueue;
- (id)currentCameraSettings;
- (uint64_t)_canEnableNotificationForCharacteristic:(void *)a3 cameraSettings:;
- (void)_enableNotificationsForCharacteristics:(void *)a3 cameraSettings:;
- (void)_handleUpdatedBulletinSnapshotCharacteristics:(id *)a1;
- (void)_insertUpdateOrRemoveBulletins:(void *)a3 forChangedCharacteristics:(void *)a4 snapshotData:;
- (void)_removeBulletins:(void *)a3 sessionID:;
- (void)_updateHomedRelaunchRegistration;
- (void)dealloc;
- (void)handleBulletinBoardNotificationDidUpdateNotification:(id)a3;
- (void)handleCameraSettingsDidUpdateNotification:(id)a3;
- (void)handleCharacteristicsChangedNotification:(id)a3;
- (void)listener:(id)a3 didUpdateAvailableCharacteristics:(id)a4;
- (void)registerForMessages;
- (void)timerDidFire:(id)a3;
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

- (void)timerDidFire:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (self)
  {
    Property = objc_getProperty(self, v4, 8, 1);
  }

  else
  {
    Property = 0;
  }

  dispatch_assert_queue_V2(Property);
  v7 = v5;
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
    v11 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      v14 = [v9 sessionID];
      *buf = 138543618;
      v31 = v13;
      v32 = 2112;
      v33 = v14;
      _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@Timer did fire for %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    if (self)
    {
      v16 = objc_getProperty(v11, v15, 32, 1);
    }

    else
    {
      v16 = 0;
    }

    if ([v16 containsObject:v9])
    {
      v17 = objc_autoreleasePoolPush();
      v18 = v11;
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        v20 = HMFGetLogIdentifier();
        v21 = [v9 sessionID];
        *buf = 138543618;
        v31 = v20;
        v32 = 2112;
        v33 = v21;
        _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_INFO, "%{public}@Posting notification as timer has expired for snapshot session %@", buf, 0x16u);
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
      v25 = [v9 changedCharacteristics];
      v26 = [v25 allObjects];
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __47__HMDCameraSnapshotMonitorEvents_timerDidFire___block_invoke;
      v28[3] = &unk_279733A70;
      v28[4] = v18;
      v29 = v9;
      [v24 insertImageBulletinsForChangedCharacteristics:v26 snapshotData:0 completion:v28];
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
  block[3] = &unk_279734960;
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
          _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Updating the posted bulletin for %@", &v24, 0x16u);
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
          _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Timer has been already removed for %@, removing the posted bulletin", &v24, 0x16u);
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
        _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_INFO, "%{public}@No bulletins were posted for snapshot %@", &v24, 0x16u);
      }

      objc_autoreleasePoolPop(v15);
    }
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)_removeBulletins:(void *)a3 sessionID:
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v19 = a3;
  Property = objc_getProperty(a1, v6, 8, 1);
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
        v14 = a1;
        v15 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          v16 = HMFGetLogIdentifier();
          *buf = 138543874;
          v26 = v16;
          v27 = 2112;
          v28 = v12;
          v29 = 2112;
          v30 = v19;
          _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@A bulletin with recordID %@ has already been posted for snapshot session %@, removing it", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v13);
        [objc_getProperty(v14 v17];
      }

      v9 = [obj countByEnumeratingWithState:&v21 objects:v31 count:16];
    }

    while (v9);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)handleCameraSettingsDidUpdateNotification:(id)a3
{
  v5 = a3;
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
  v8[3] = &unk_2797359B0;
  v9 = v5;
  v10 = self;
  v7 = v5;
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
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Camera user settings changed.", &v13, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
    [(HMDCameraSnapshotMonitorEvents *)*(a1 + 40) _enableNotificationsForCharacteristics:v7 cameraSettings:v5];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_enableNotificationsForCharacteristics:(void *)a3 cameraSettings:
{
  v43 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v7 = a3;
  if (a1)
  {
    Property = objc_getProperty(a1, v6, 8, 1);
    dispatch_assert_queue_V2(Property);
    v9 = [MEMORY[0x277CBEB58] set];
    v10 = &OBJC_IVAR___HMDSoftwareUpdate__identifier;
    [objc_getProperty(a1 v11];
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
      v30 = v7;
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
          v16 = [v15 service];
          v17 = [v16 bulletinBoardNotification];

          [objc_getProperty(a1 v18];
          if ([v17 isEnabled] && -[HMDCameraSnapshotMonitorEvents _canEnableNotificationForCharacteristic:cameraSettings:](a1, v15, v7))
          {
            v19 = objc_autoreleasePoolPush();
            v20 = a1;
            v21 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
            {
              v22 = HMFGetLogIdentifier();
              *buf = 138543618;
              v39 = v22;
              v40 = 2112;
              v41 = v15;
              _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_INFO, "%{public}@Adding bulletin snapshot characteristic: %@", buf, 0x16u);

              v7 = v30;
            }

            objc_autoreleasePoolPop(v19);
            v9 = v31;
            [v31 addObject:v15];
            v10 = &OBJC_IVAR___HMDSoftwareUpdate__identifier;
          }
        }

        v13 = [obj countByEnumeratingWithState:&v34 objects:v42 count:16];
      }

      while (v13);
    }

    v23 = [a1 bulletinSnapshotCharacteristics];
    v24 = [v23 count];
    if (v24 == [v9 count])
    {

      [(HMDCameraSnapshotMonitorEvents *)a1 _handleUpdatedBulletinSnapshotCharacteristics:v9];
      v5 = v29;
LABEL_21:

      goto LABEL_22;
    }

    v25 = [a1 bulletinSnapshotCharacteristics];
    if ([v25 count])
    {
      v26 = [v9 count];

      [(HMDCameraSnapshotMonitorEvents *)a1 _handleUpdatedBulletinSnapshotCharacteristics:v9];
      v5 = v29;
      if (v26)
      {
        goto LABEL_21;
      }
    }

    else
    {

      [(HMDCameraSnapshotMonitorEvents *)a1 _handleUpdatedBulletinSnapshotCharacteristics:v9];
      v5 = v29;
    }

    [(HMDCameraSnapshotMonitorEvents *)a1 _updateHomedRelaunchRegistration];
    goto LABEL_21;
  }

LABEL_22:

  v28 = *MEMORY[0x277D85DE8];
}

- (uint64_t)_canEnableNotificationForCharacteristic:(void *)a3 cameraSettings:
{
  v61 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  Property = objc_getProperty(a1, v7, 8, 1);
  dispatch_assert_queue_V2(Property);
  v9 = objc_autoreleasePoolPush();
  v10 = a1;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    v55 = 138543618;
    v56 = v12;
    v57 = 2112;
    v58 = v5;
    _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Checking if bulletin notification can be enabled for characteristic: %@", &v55, 0x16u);
  }

  objc_autoreleasePoolPop(v9);
  v13 = v5;
  objc_opt_self();
  v14 = [v13 type];
  if ([v14 isEqualToString:*MEMORY[0x277CCF910]])
  {
    v15 = [v13 service];
    v16 = [v15 type];
    v17 = [v16 isEqualToString:*MEMORY[0x277CD0E38]];

    if (v17)
    {
      v18 = objc_autoreleasePoolPush();
      v19 = v10;
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
        _os_log_impl(&dword_2531F8000, v23, v24, v22, &v55, 0xCu);

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
  v26 = [v25 type];
  if (([v26 isEqualToString:*MEMORY[0x277CCF978]] & 1) == 0)
  {

LABEL_21:
    v44 = objc_autoreleasePoolPush();
    v45 = v10;
    v46 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
    {
      v47 = HMFGetLogIdentifier();
      v55 = 138543362;
      v56 = v47;
      _os_log_impl(&dword_2531F8000, v46, OS_LOG_TYPE_DEBUG, "%{public}@Disallowing notifications to be enabled for non-doorbell, non-motion characteristic", &v55, 0xCu);
    }

    goto LABEL_23;
  }

  v27 = [v25 service];
  v28 = [v27 type];
  v29 = [v28 isEqualToString:*MEMORY[0x277CD0EC0]];

  if ((v29 & 1) == 0)
  {
    goto LABEL_21;
  }

  if (v10)
  {
    WeakRetained = objc_loadWeakRetained(v10 + 5);
  }

  else
  {
    WeakRetained = 0;
  }

  v31 = [WeakRetained isCameraRecordingFeatureSupported];

  if ((v31 & 1) == 0)
  {
    v18 = objc_autoreleasePoolPush();
    v19 = v10;
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

  [v6 currentAccessMode];
  if ((HMIsMotionDetectionAllowedForCameraAccessMode() & 1) == 0)
  {
    v44 = objc_autoreleasePoolPush();
    v45 = v10;
    v46 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
    {
      v51 = HMFGetLogIdentifier();
      v52 = HMCameraAccessModeAsString();
      v55 = 138543618;
      v56 = v51;
      v57 = 2112;
      v58 = v52;
      _os_log_impl(&dword_2531F8000, v46, OS_LOG_TYPE_INFO, "%{public}@Disallowing notifications to be enabled because the camera's current access mode disallows motion detection: %@", &v55, 0x16u);
    }

LABEL_23:

    objc_autoreleasePoolPop(v44);
    v48 = 0;
    goto LABEL_28;
  }

  v32 = [v6 notificationSettings];
  v33 = MEMORY[0x277CD18C0];
  v34 = [v32 smartBulletinBoardNotificationCondition];
  v35 = [v33 significantEventTypesInPredicate:v34];
  v36 = [v35 integerValue];

  v37 = [v32 isSmartBulletinBoardNotificationEnabled];
  if (v36)
  {
    v38 = v37;
  }

  else
  {
    v38 = 0;
  }

  v39 = objc_autoreleasePoolPush();
  v40 = v10;
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
      v58 = v32;
      _os_log_impl(&dword_2531F8000, v41, OS_LOG_TYPE_INFO, "%{public}@Disallowing notifications to be enabled because smart notifications are enabled: %@", &v55, 0x16u);
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
    v60 = v32;
    _os_log_impl(&dword_2531F8000, v41, OS_LOG_TYPE_INFO, "%{public}@Allowing notifications to be enabled for current access mode: %@, notification settings: %@", &v55, 0x20u);
  }

  objc_autoreleasePoolPop(v39);
  v48 = v38 ^ 1u;

LABEL_28:
  v49 = *MEMORY[0x277D85DE8];
  return v48;
}

- (void)_handleUpdatedBulletinSnapshotCharacteristics:(id *)a1
{
  v63 = *MEMORY[0x277D85DE8];
  v3 = a2;
  Property = objc_getProperty(a1, v4, 8, 1);
  dispatch_assert_queue_V2(Property);
  WeakRetained = objc_loadWeakRetained(a1 + 5);
  v7 = [a1 characteristicsAvailabilityListener];
  v8 = [v7 availableCharacteristics];

  v43 = v8;
  v44 = v3;
  [v8 na_setByRemovingObjectsFromSet:v3];
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  obj = v54 = 0u;
  v9 = [obj countByEnumeratingWithState:&v51 objects:v62 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v52;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v52 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v51 + 1) + 8 * i);
        v14 = objc_autoreleasePoolPush();
        v15 = a1;
        v16 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          v17 = HMFGetLogIdentifier();
          *buf = 138543618;
          v59 = v17;
          v60 = 2112;
          v61 = v13;
          _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_INFO, "%{public}@Disabling notifications for characteristic: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v14);
        v57 = v13;
        v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v57 count:1];
        v19 = [v15 clientIdentifier];
        [WeakRetained setNotificationsEnabled:0 forCharacteristics:v18 clientIdentifier:v19];
      }

      v10 = [obj countByEnumeratingWithState:&v51 objects:v62 count:16];
    }

    while (v10);
  }

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v20 = v44;
  v21 = [v20 countByEnumeratingWithState:&v47 objects:v56 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v48;
    do
    {
      v24 = 0;
      v45 = v22;
      do
      {
        if (*v48 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = *(*(&v47 + 1) + 8 * v24);
        v26 = [a1 bulletinSnapshotCharacteristics];
        v27 = [v26 containsObject:v25];

        if ((v27 & 1) == 0)
        {
          v28 = objc_autoreleasePoolPush();
          v29 = a1;
          v30 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
          {
            HMFGetLogIdentifier();
            v31 = a1;
            v32 = v23;
            v33 = WeakRetained;
            v35 = v34 = v20;
            *buf = 138543618;
            v59 = v35;
            v60 = 2112;
            v61 = v25;
            _os_log_impl(&dword_2531F8000, v30, OS_LOG_TYPE_INFO, "%{public}@Enabling notifications for characteristic: %@", buf, 0x16u);

            v20 = v34;
            WeakRetained = v33;
            v23 = v32;
            a1 = v31;
            v22 = v45;
          }

          objc_autoreleasePoolPop(v28);
          v55 = v25;
          v36 = [MEMORY[0x277CBEA60] arrayWithObjects:&v55 count:1];
          v37 = [v29 clientIdentifier];
          [WeakRetained setNotificationsEnabled:1 forCharacteristics:v36 clientIdentifier:v37];
        }

        ++v24;
      }

      while (v22 != v24);
      v22 = [v20 countByEnumeratingWithState:&v47 objects:v56 count:16];
    }

    while (v22);
  }

  v38 = objc_autoreleasePoolPush();
  v39 = a1;
  v40 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
  {
    v41 = HMFGetLogIdentifier();
    *buf = 138543618;
    v59 = v41;
    v60 = 2112;
    v61 = v20;
    _os_log_impl(&dword_2531F8000, v40, OS_LOG_TYPE_INFO, "%{public}@Setting the bulletin snapshot characteristics to %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v38);
  [v39 setBulletinSnapshotCharacteristics:v20];

  v42 = *MEMORY[0x277D85DE8];
}

- (void)_updateHomedRelaunchRegistration
{
  v17 = *MEMORY[0x277D85DE8];
  Property = objc_getProperty(a1, a2, 8, 1);
  dispatch_assert_queue_V2(Property);
  v4 = [a1 bulletinSnapshotCharacteristics];
  v5 = [v4 count];

  v6 = objc_autoreleasePoolPush();
  v7 = a1;
  v8 = HMFGetOSLogHandle();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_INFO);
  if (v5)
  {
    if (v9)
    {
      v10 = HMFGetLogIdentifier();
      v15 = 138543362;
      v16 = v10;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Registering homed for relaunch", &v15, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    v11 = +[HMDLaunchHandler sharedHandler];
    v12 = [v7 uniqueIdentifier];
    [v11 registerRelaunchClientWithUUID:v12];
  }

  else
  {
    if (v9)
    {
      v13 = HMFGetLogIdentifier();
      v15 = 138543362;
      v16 = v13;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Deregistering homed for relaunch", &v15, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    v11 = +[HMDLaunchHandler sharedHandler];
    v12 = [v7 uniqueIdentifier];
    [v11 deregisterRelaunchClientWithUUID:v12];
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)handleCharacteristicsChangedNotification:(id)a3
{
  v5 = a3;
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
  v8[3] = &unk_2797359B0;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(Property, v8);
}

void __75__HMDCameraSnapshotMonitorEvents_handleCharacteristicsChangedNotification___block_invoke(uint64_t a1)
{
  v37 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) userInfo];
  v29 = v2;
  if (v1)
  {
    Property = objc_getProperty(v1, v3, 8, 1);
    dispatch_assert_queue_V2(Property);
    v28 = [v29 objectForKeyedSubscript:@"kModifiedCharacteristicsMapKey"];
    v5 = [v29 hmf_arrayForKey:@"kModifiedCharacteristicsKey"];
    v6 = [MEMORY[0x277CBEB58] set];
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v33;
      v11 = *MEMORY[0x277CCF978];
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v33 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v13 = *(*(&v32 + 1) + 8 * i);
          v14 = [v1 bulletinSnapshotCharacteristics];
          v15 = [v14 containsObject:v13];

          if (v15)
          {
            v16 = [v13 type];
            v17 = [v16 isEqualToString:v11];

            if (!v17 || ([v13 value], v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v18, "BOOLValue"), v18, v19))
            {
              [v6 addObject:v13];
            }
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v32 objects:v36 count:16];
      }

      while (v9);
    }

    if (![v6 count])
    {
      goto LABEL_20;
    }

    v20 = [v29 hmf_dictionaryForKey:@"kPresenceDictionaryForNotificationKey"];
    v21 = [v29 hmf_dictionaryForKey:@"kPresencePairingIdentifierDictionaryForNotificationKey"];
    if (v21)
    {
      v22 = [[HMDHomePresenceRemote alloc] initWithPresenceByPairingIdentity:v21];
    }

    else
    {
      if (!v20)
      {
        v23 = 0;
        goto LABEL_19;
      }

      v22 = [[HMDHomePresenceRemote alloc] initWithPresenceByUserId:v20];
    }

    v23 = v22;
LABEL_19:
    WeakRetained = objc_loadWeakRetained(v1 + 5);
    v25 = [WeakRetained home];
    v26 = [v6 allObjects];
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __71__HMDCameraSnapshotMonitorEvents__handleCharacteristicsChangedPayload___block_invoke;
    v30[3] = &unk_279730EC8;
    v30[4] = v1;
    v31 = v28;
    [v25 evaluateNotificationConditionForCharacteristics:v26 homePresence:v23 completion:v30];

LABEL_20:
    v2 = v29;
  }

  v27 = *MEMORY[0x277D85DE8];
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
  block[3] = &unk_279734960;
  block[4] = v8;
  v11 = v5;
  v12 = *(a1 + 40);
  v9 = v5;
  dispatch_async(Property, block);
}

void __71__HMDCameraSnapshotMonitorEvents__handleCharacteristicsChangedPayload___block_invoke_2(uint64_t a1)
{
  v63 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = *(a1 + 48);
  v46 = *(a1 + 40);
  v4 = v2;
  if (v1)
  {
    Property = objc_getProperty(v1, v3, 8, 1);
    dispatch_assert_queue_V2(Property);
    v45 = [MEMORY[0x277CBEB98] setWithArray:v46];
    v6 = v45;
    if ([v45 count])
    {
      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      v7 = v45;
      v8 = [v7 countByEnumeratingWithState:&v48 objects:v62 count:16];
      if (v8)
      {
        v9 = *v49;
LABEL_5:
        v10 = 0;
        while (1)
        {
          if (*v49 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = [v4 objectForKey:*(*(&v48 + 1) + 8 * v10)];
          v12 = [v11 updateIdentifier];
          if (v12)
          {
            v13 = [v11 remoteDevice];
            v14 = v13 == 0;

            if (!v14)
            {
              break;
            }
          }

          if (v8 == ++v10)
          {
            v8 = [v7 countByEnumeratingWithState:&v48 objects:v62 count:16];
            if (v8)
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
        v11 = 0;
      }

      v15 = objc_autoreleasePoolPush();
      v16 = v1;
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v18 = HMFGetLogIdentifier();
        *buf = 138543618;
        *&buf[4] = v18;
        *&buf[12] = 2112;
        *&buf[14] = v7;
        _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_INFO, "%{public}@Taking a snapshot as the update characteristic %@ is being monitored", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v15);
      WeakRetained = objc_loadWeakRetained(v16 + 3);
      v19 = objc_loadWeakRetained(v16 + 5);
      if ([v19 isReachable])
      {
        v20 = 7.0;
      }

      else
      {
        v20 = 15.0;
      }

      v21 = [MEMORY[0x277CCAD78] UUID];
      v22 = [v21 UUIDString];

      v23 = [[HMDCameraSnapshotNotificationTimer alloc] initWithCameraSessionID:v22 changedCharacteristics:v7 timeInterval:v20];
      [(HMFTimer *)v23 setDelegate:v16];
      [(HMFTimer *)v23 setDelegateQueue:objc_getProperty(v16, v24, 8, 1)];
      [objc_getProperty(v16 v25];
      v26 = [MEMORY[0x277CBEB38] dictionary];
      [v26 setObject:v22 forKeyedSubscript:@"kCameraSessionID"];
      if (v11)
      {
        v27 = [v11 updateIdentifier];
        [v26 setObject:v27 forKeyedSubscript:@"kCameraProactiveSessionID"];

        v28 = [v11 remoteDevice];
        [v26 setObject:v28 forKeyedSubscript:@"kIDSMessageSourceIDKey"];
      }

      [v26 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277CCF5B8]];
      v29 = objc_autoreleasePoolPush();
      v30 = v16;
      v31 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
      {
        v32 = HMFGetLogIdentifier();
        *buf = 138543618;
        *&buf[4] = v32;
        *&buf[12] = 2112;
        *&buf[14] = v26;
        _os_log_impl(&dword_2531F8000, v31, OS_LOG_TYPE_INFO, "%{public}@Notification payload is: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v29);
      objc_initWeak(&location, v30);
      v33 = MEMORY[0x277D0F818];
      *buf = MEMORY[0x277D85DD0];
      *&buf[8] = 3221225472;
      *&buf[16] = __82__HMDCameraSnapshotMonitorEvents__characteristicsUpdated_modifiedCharacteristics___block_invoke;
      v57 = &unk_2797308C0;
      objc_copyWeak(&v61, &location);
      v34 = *MEMORY[0x277CCF5D0];
      v43 = v22;
      v58 = v43;
      v59 = v7;
      v35 = v23;
      v60 = v35;
      v36 = [v33 messageWithName:v34 messagePayload:v26 responseHandler:buf];
      [WeakRetained takeSnapshot:v36];
      v37 = objc_autoreleasePoolPush();
      v38 = v30;
      v39 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
      {
        v40 = HMFGetLogIdentifier();
        v41 = [(HMDCameraSnapshotNotificationTimer *)v35 sessionID];
        *v52 = 138543618;
        v53 = v40;
        v54 = 2112;
        v55 = v41;
        _os_log_impl(&dword_2531F8000, v39, OS_LOG_TYPE_INFO, "%{public}@Starting the notification timer for identifier %@", v52, 0x16u);
      }

      objc_autoreleasePoolPop(v37);
      [(HMFTimer *)v35 resume];

      objc_destroyWeak(&v61);
      objc_destroyWeak(&location);

      v6 = v45;
    }
  }

  v42 = *MEMORY[0x277D85DE8];
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
          _os_log_impl(&dword_2531F8000, v33, OS_LOG_TYPE_ERROR, "%{public}@Failed to create hard link: %@ to file at path %@ with error %@", buf, 0x2Au);
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
        _os_log_impl(&dword_2531F8000, v43, OS_LOG_TYPE_INFO, "%{public}@Took snapshot with response %@", buf, 0x16u);
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
        _os_log_impl(&dword_2531F8000, v50, OS_LOG_TYPE_INFO, "%{public}@Releasing snapshot with slot identifier: %@", buf, 0x16u);

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
        _os_log_impl(&dword_2531F8000, v59, OS_LOG_TYPE_ERROR, "%{public}@Failed to take a snapshot for session ID %@: %@", buf, 0x20u);
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

- (void)_insertUpdateOrRemoveBulletins:(void *)a3 forChangedCharacteristics:(void *)a4 snapshotData:
{
  v28 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  Property = objc_getProperty(a1, v10, 8, 1);
  dispatch_assert_queue_V2(Property);
  v13 = objc_getProperty(a1, v12, 64, 1);
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
            v21 = objc_getProperty(a1, v16, 64, 1);
            [v21 updateBulletinWithRecordID:v20 forChangedCharacteristics:v8 snapshotData:{v9, v23}];
          }

          v17 = [v14 countByEnumeratingWithState:&v23 objects:v27 count:16];
        }

        while (v17);
      }
    }

    else
    {
      v14 = [v9 objectForKeyedSubscript:@"kCameraSessionID"];
      [(HMDCameraSnapshotMonitorEvents *)a1 _removeBulletins:v7 sessionID:v14];
    }
  }

  else
  {
    [v13 insertImageBulletinsForChangedCharacteristics:v8 snapshotData:v9 completion:0];
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)handleBulletinBoardNotificationDidUpdateNotification:(id)a3
{
  v5 = a3;
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
  v8[3] = &unk_2797359B0;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
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
        _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_ERROR, "%{public}@Unexpected notifier for HMDBulletinBoardNotificationDidUpdateNotification: %@", buf, 0x16u);
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
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Handling updated bulletin board notification: %@", buf, 0x16u);
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
                _os_log_impl(&dword_2531F8000, v30, OS_LOG_TYPE_INFO, "%{public}@Adding bulletin snapshot characteristic: %@", v48, 0x16u);

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
  v2 = self;
  if (self)
  {
    Property = objc_getProperty(self, a2, 8, 1);
    dispatch_assert_queue_V2(Property);
    WeakRetained = objc_loadWeakRetained(v2 + 5);
    v5 = [WeakRetained cameraProfiles];
    v6 = [v5 anyObject];
    v2 = [v6 currentSettings];
  }

  return v2;
}

- (void)listener:(id)a3 didUpdateAvailableCharacteristics:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v8 = a4;
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
  v11 = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = HMFGetLogIdentifier();
    v17 = 138543362;
    v18 = v13;
    _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@Available characteristics changed", &v17, 0xCu);
  }

  objc_autoreleasePoolPop(v10);
  v15 = [(HMDCameraSnapshotMonitorEvents *)&v11->super.super.isa currentCameraSettings];
  [(HMDCameraSnapshotMonitorEvents *)v11 _enableNotificationsForCharacteristics:v8 cameraSettings:v15];

  v16 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    *buf = 138543618;
    v15 = v6;
    v16 = 2112;
    v17 = v4;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@Deallocating %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v3);
  if (v4)
  {
    Property = objc_getProperty(v4, v7, 56, 1);
  }

  else
  {
    Property = 0;
  }

  [Property removeObserver:v4];
  WeakRetained = objc_loadWeakRetained(&v4->_accessory);
  v10 = [(NSSet *)v4->_bulletinSnapshotCharacteristics allObjects];
  [WeakRetained setNotificationsEnabled:0 forCharacteristics:v10 clientIdentifier:v4->_clientIdentifier];

  [objc_getProperty(v4 v11];
  v13.receiver = v4;
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

  v5 = [(HMDCameraSnapshotMonitorEvents *)self characteristicsAvailabilityListener];
  [v5 setDelegate:self];

  v6 = [(HMDCameraSnapshotMonitorEvents *)self characteristicsAvailabilityListener];
  [v6 start];

  if (self && objc_getProperty(self, v7, 64, 1))
  {
    [objc_getProperty(self v8];
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    v11 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      v16 = 138543362;
      v17 = v13;
      _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@No bulletin board, not subscribing for notifications for doorbell or motion sensor", &v16, 0xCu);
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

- (HMDCameraSnapshotMonitorEvents)initWithSnapshotManager:(id)a3 accessory:(id)a4 workQueue:(id)a5 msgDispatcher:(id)a6 bulletinBoard:(id)a7 notificationCenter:(id)a8
{
  v58[1] = *MEMORY[0x277D85DE8];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v54 = a8;
  v55.receiver = self;
  v55.super_class = HMDCameraSnapshotMonitorEvents;
  v19 = [(HMDCameraSnapshotMonitorEvents *)&v55 init];
  v20 = v19;
  if (v19)
  {
    objc_storeWeak(&v19->_snapshotManager, v14);
    objc_storeWeak(&v20->_accessory, v15);
    objc_storeStrong(&v20->_workQueue, a5);
    objc_storeStrong(&v20->_msgDispatcher, a6);
    objc_storeStrong(&v20->_notificationCenter, a8);
    v21 = [MEMORY[0x277CBEB58] set];
    snapShotNotificationResponseTimers = v20->_snapShotNotificationResponseTimers;
    v20->_snapShotNotificationResponseTimers = v21;

    v23 = MEMORY[0x277CCAD78];
    v24 = [v14 uniqueIdentifier];
    v58[0] = @"HMDCameraSnapshotMonitorEvents";
    v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v58 count:1];
    v26 = [v23 hm_deriveUUIDFromBaseUUID:v24 identifierSalt:0 withSalts:v25];
    uniqueIdentifier = v20->_uniqueIdentifier;
    v20->_uniqueIdentifier = v26;

    v28 = MEMORY[0x277CCACA8];
    v29 = [v15 name];
    v30 = [(NSUUID *)v20->_uniqueIdentifier UUIDString];
    v31 = [v28 stringWithFormat:@"%@/%@", v29, v30];
    logIdentifier = v20->_logIdentifier;
    v20->_logIdentifier = v31;

    if (v18)
    {
      objc_storeStrong(&v20->_bulletinBoard, a7);
      v33 = getBulletinImagesPath();
      v34 = [v15 uuid];
      v35 = [v34 UUIDString];
      v36 = [v33 stringByAppendingPathComponent:v35];
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

    v45 = [[HMDCharacteristicsAvailabilityListener alloc] initWithAccessory:v15 workQueue:v16 interestedCharacteristicTypesByServiceType:v44];
    characteristicsAvailabilityListener = v20->_characteristicsAvailabilityListener;
    v20->_characteristicsAvailabilityListener = v45;

    v47 = MEMORY[0x277CCACA8];
    v48 = [MEMORY[0x277CCAD78] UUID];
    v49 = [v48 UUIDString];
    v50 = [v47 stringWithFormat:@"%@.%@", @"com.apple.HomeKitDaemon.serviceGroupAssociation", v49];
    clientIdentifier = v20->_clientIdentifier;
    v20->_clientIdentifier = v50;
  }

  v52 = *MEMORY[0x277D85DE8];
  return v20;
}

- (HMDCameraSnapshotMonitorEvents)initWithSnapshotManager:(id)a3 accessory:(id)a4 workQueue:(id)a5 msgDispatcher:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = +[HMDCameraProfile bulletinBoard];
  v15 = [MEMORY[0x277CCAB98] defaultCenter];
  v16 = [(HMDCameraSnapshotMonitorEvents *)self initWithSnapshotManager:v13 accessory:v12 workQueue:v11 msgDispatcher:v10 bulletinBoard:v14 notificationCenter:v15];

  return v16;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t36 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t36, &__block_literal_global_102874);
  }

  v3 = logCategory__hmf_once_v37;

  return v3;
}

uint64_t __45__HMDCameraSnapshotMonitorEvents_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v37;
  logCategory__hmf_once_v37 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end