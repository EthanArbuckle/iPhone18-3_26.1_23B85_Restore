@interface HMDCameraProfile
+ (HMDCameraBulletinBoard)bulletinBoard;
+ (id)logCategory;
+ (id)messageBindingForDispatcher:(id)a3 message:(id)a4 receiver:(id)a5;
- (BOOL)_areFaceClassificationNotificationsSuppressedForSignificantEvent:(id)a3;
- (BOOL)_shouldNotifyForSignificantEvent:(id)a3 notificationReasons:(unint64_t)a4;
- (BOOL)isCameraRecordingFeatureSupported;
- (BOOL)isEqual:(id)a3;
- (HMDCameraProfile)initWithAccessory:(id)a3 services:(id)a4 msgDispatcher:(id)a5 workQueue:(id)a6 home:(id)a7 settingsManager:(id)a8;
- (HMDCameraProfile)initWithAccessory:(id)a3 services:(id)a4 recordingManagementService:(id)a5 msgDispatcher:(id)a6 workQueue:(id)a7 home:(id)a8 settingsManager:(id)a9 uniqueIdentifier:(id)a10 clipManager:(id)a11 clipUserNotificationCenter:(id)a12 reachabilityEventManager:(id)a13 networkMonitor:(id)a14 streamSnapshotHandler:(id)a15 snapshotManager:(id)a16 cameraStreamManagers:(id)a17 notificationCenter:(id)a18;
- (HMDHAPAccessory)hapAccessory;
- (NSDictionary)assistantObject;
- (NSString)description;
- (NSString)urlString;
- (_HMCameraUserSettings)currentSettings;
- (id)dumpStateWithPrivacyLevel:(unint64_t)a3;
- (unint64_t)hash;
- (void)_createCameraRecordingManager;
- (void)_handleNegotiateStreamRequest:(id)a3;
- (void)_handleStreamControlRequest:(id)a3;
- (void)_postNotificationForUpdatedSignificantEvent:(id)a3 allClipSignificantEvents:(id)a4 notificationReasons:(unint64_t)a5;
- (void)_setControlSupport;
- (void)_setUpBulletinNotificationManagerObserver;
- (void)cameraSettingProactiveReaderDidCompleteRead:(id)a3;
- (void)clipManager:(id)a3 didDeleteClipWithUUID:(id)a4;
- (void)clipManager:(id)a3 didUpdateSignificantEvent:(id)a4;
- (void)clipManagerDidDisableCloudStorage:(id)a3;
- (void)clipManagerDidEncounterDisabledCloudStorage:(id)a3;
- (void)clipManagerDidStart:(id)a3;
- (void)clipManagerDidStartUpCloudZone:(id)a3;
- (void)clipManagerDidStop:(id)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)handleCameraProfileSettingsDidChangeNotification:(id)a3;
- (void)handleResidentsChangedNotification:(id)a3;
- (void)networkMonitorIsReachable:(id)a3;
- (void)networkMonitorIsUnreachable:(id)a3;
- (void)notificationManager:(id)a3 didReceiveNotificationForCameraSignificantEventIdentifier:(id)a4 notificationReasons:(unint64_t)a5;
- (void)registerForMessages;
- (void)removeCloudData;
- (void)setUp;
- (void)tearDownWithReplacementCameraProfile:(id)a3;
- (void)timerDidFire:(id)a3;
- (void)unconfigure;
@end

@implementation HMDCameraProfile

- (NSDictionary)assistantObject
{
  v39 = *MEMORY[0x277D85DE8];
  v3 = [(HMDAccessoryProfile *)self accessory];
  v4 = [v3 name];
  v5 = [v3 home];
  v6 = v5;
  if (v5 && ([v5 name], v7 = objc_claimAutoreleasedReturnValue(), v7, v7) && v4)
  {
    v8 = objc_alloc(MEMORY[0x277CBEB38]);
    v30[0] = *MEMORY[0x277D48170];
    v9 = [(HMDCameraProfile *)self urlString:@"objectType"];
    v10 = *MEMORY[0x277D482E0];
    v30[1] = v9;
    v30[2] = v10;
    v29[2] = @"objectServiceType";
    v29[3] = @"objectHome";
    v11 = [v6 name];
    v30[3] = v11;
    v29[4] = @"objectHomeIdentifier";
    v12 = [v6 urlString];
    v30[4] = v12;
    v30[5] = self;
    v29[5] = @"objectReference";
    v29[6] = @"objectName";
    v30[6] = v4;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:7];
    v14 = [v8 initWithDictionary:v13];

    v15 = [v3 name];
    [v14 setObject:v15 forKey:@"objectAccessory"];

    v16 = [v3 urlString];
    [v14 setObject:v16 forKey:@"objectAccessoryIdentifier"];

    v17 = [v3 room];
    v18 = [v17 name];
    if (v18)
    {
      v19 = [v6 name];
      v20 = [v18 isEqualToString:v19];

      if ((v20 & 1) == 0)
      {
        [v14 setObject:v18 forKey:@"objectRoom"];
        v21 = [v17 urlString];
        [v14 setObject:v21 forKey:@"objectRoomIdentifier"];
      }
    }

    v22 = [v14 copy];
  }

  else
  {
    v23 = objc_autoreleasePoolPush();
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = HMFGetLogIdentifier();
      if (v6)
      {
        v26 = [v6 name];
      }

      else
      {
        v26 = 0;
      }

      *buf = 138544130;
      v32 = v25;
      v33 = 2112;
      v34 = v6;
      v35 = 2112;
      v36 = v26;
      v37 = 2112;
      v38 = v4;
      _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_DEFAULT, "%{public}@Skipping because one of the properties of service is nil: service.accessory.home %@  service.accessory.home.name %@  service.name %@", buf, 0x2Au);
      if (v6)
      {
      }
    }

    objc_autoreleasePoolPop(v23);
    v22 = 0;
  }

  v27 = *MEMORY[0x277D85DE8];

  return v22;
}

- (NSString)urlString
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBEB18];
  v4 = [(HMDAccessoryProfile *)self services];
  v5 = [v3 arrayWithCapacity:{objc_msgSend(v4, "count")}];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = [(HMDAccessoryProfile *)self services];
  v7 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v20;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = MEMORY[0x277CCACA8];
        v12 = [*(*(&v19 + 1) + 8 * i) instanceID];
        v13 = [v11 stringWithFormat:@"%@", v12];
        [v5 addObject:v13];
      }

      v8 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v8);
  }

  v14 = *MEMORY[0x277CCF2A8];
  v15 = [(HMDAccessoryProfile *)self uniqueIdentifier];
  v16 = hm_assistantIdentifierWithSalts();

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

- (HMDHAPAccessory)hapAccessory
{
  WeakRetained = objc_loadWeakRetained(&self->_hapAccessory);

  return WeakRetained;
}

- (void)timerDidFire:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDAccessoryProfile *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(HMDCameraProfile *)self recordingEventsCleanupTimer];

  if (v6 == v4)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v14 = 138543362;
      v15 = v10;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Performing recording events cleanup due to timer firing", &v14, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
    v11 = [(HMDCameraProfile *)v8 clipManager];
    [v11 cleanUpClips];

    v12 = [(HMDCameraProfile *)v8 reachabilityEventManager];
    [v12 cleanUpEvents];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)networkMonitorIsUnreachable:(id)a3
{
  v4 = a3;
  v5 = [(HMDAccessoryProfile *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__HMDCameraProfile_networkMonitorIsUnreachable___block_invoke;
  v7[3] = &unk_27868A750;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __48__HMDCameraProfile_networkMonitorIsUnreachable___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) reachabilityEventManager];
  [v2 networkMonitorIsUnreachable:*(a1 + 40)];
}

- (void)networkMonitorIsReachable:(id)a3
{
  v4 = a3;
  v5 = [(HMDAccessoryProfile *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __46__HMDCameraProfile_networkMonitorIsReachable___block_invoke;
  v7[3] = &unk_27868A750;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __46__HMDCameraProfile_networkMonitorIsReachable___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) reachabilityEventManager];
  [v2 networkMonitorIsReachable:*(a1 + 40)];
}

- (void)notificationManager:(id)a3 didReceiveNotificationForCameraSignificantEventIdentifier:(id)a4 notificationReasons:(unint64_t)a5
{
  v7 = a4;
  v8 = [(HMDAccessoryProfile *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __118__HMDCameraProfile_notificationManager_didReceiveNotificationForCameraSignificantEventIdentifier_notificationReasons___block_invoke;
  block[3] = &unk_278685DF8;
  block[4] = self;
  v11 = v7;
  v12 = a5;
  v9 = v7;
  dispatch_async(v8, block);
}

void __118__HMDCameraProfile_notificationManager_didReceiveNotificationForCameraSignificantEventIdentifier_notificationReasons___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 40);
    v14 = *(a1 + 48);
    v7 = NSPrintF();
    *buf = 138543874;
    v20 = v5;
    v21 = 2112;
    v22 = v6;
    v23 = 2112;
    v24 = v7;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Received notification for significant event with UUID: %@ notificationReasons: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v2);
  v8 = [*(a1 + 32) clipManager];
  v9 = [v8 fetchSignificantEventsForClipWithSignificantEventWithUUID:*(a1 + 40)];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __118__HMDCameraProfile_notificationManager_didReceiveNotificationForCameraSignificantEventIdentifier_notificationReasons___block_invoke_128;
  v15[3] = &unk_278682DA0;
  v10 = *(a1 + 40);
  v11 = *(a1 + 32);
  v16 = v10;
  v17 = v11;
  v18 = *(a1 + 48);
  v12 = [v9 addSuccessBlock:v15];

  v13 = *MEMORY[0x277D85DE8];
}

void __118__HMDCameraProfile_notificationManager_didReceiveNotificationForCameraSignificantEventIdentifier_notificationReasons___block_invoke_128(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __118__HMDCameraProfile_notificationManager_didReceiveNotificationForCameraSignificantEventIdentifier_notificationReasons___block_invoke_2;
  v11[3] = &unk_278682D78;
  v12 = *(a1 + 32);
  v4 = [v3 na_firstObjectPassingTest:v11];
  if (v4)
  {
    [*(a1 + 40) _postNotificationForUpdatedSignificantEvent:v4 allClipSignificantEvents:v3 notificationReasons:*(a1 + 48)];
  }

  else
  {
    v5 = objc_autoreleasePoolPush();
    v6 = *(a1 + 40);
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      v9 = *(a1 + 32);
      *buf = 138543874;
      v14 = v8;
      v15 = 2112;
      v16 = v9;
      v17 = 2112;
      v18 = v3;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_ERROR, "%{public}@Fetched significant events did not contain significant event with UUID %@: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v5);
  }

  v10 = *MEMORY[0x277D85DE8];
}

uint64_t __118__HMDCameraProfile_notificationManager_didReceiveNotificationForCameraSignificantEventIdentifier_notificationReasons___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 uniqueIdentifier];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

- (void)clipManagerDidEncounterDisabledCloudStorage:(id)a3
{
  v4 = [(HMDAccessoryProfile *)self workQueue];
  dispatch_assert_queue_V2(v4);

  v5 = [(HMDCameraProfile *)self cameraSettingsManager];
  [v5 synchronizeCloudStorageWithRecordingAccessModes];
}

- (void)clipManagerDidDisableCloudStorage:(id)a3
{
  v4 = [(HMDAccessoryProfile *)self workQueue];
  dispatch_assert_queue_V2(v4);

  v5 = [(HMDCameraProfile *)self cameraSettingsManager];
  [v5 disableRecordingAccessModes];
}

- (void)clipManagerDidStop:(id)a3
{
  v4 = a3;
  v5 = [(HMDAccessoryProfile *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(HMDCameraProfile *)self cameraRecordingManager];
  [v6 clipManagerDidStop:v4];

  v7 = [(HMDCameraProfile *)self reachabilityEventManager];
  [v7 clipManagerDidStop:v4];

  [(HMDCameraProfile *)self setRecordingEventsCleanupTimer:0];
  v8 = [(HMDCameraProfile *)self clipUserNotificationCenter];
  [v8 removeEventNotificationsForCameraProfile:self];
}

- (void)clipManagerDidStartUpCloudZone:(id)a3
{
  v4 = a3;
  v5 = [(HMDAccessoryProfile *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(HMDCameraProfile *)self cameraRecordingManager];
  [v6 clipManagerDidStartUpCloudZone:v4];
}

- (void)clipManagerDidStart:(id)a3
{
  v4 = a3;
  v5 = [(HMDAccessoryProfile *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(HMDCameraProfile *)self reachabilityEventManager];
  [v6 clipManagerDidStart:v4];

  v7 = [(HMDCameraProfile *)self recordingEventsCleanupTimerFactory];
  v8 = v7[2](v7, 4, 86400.0);
  [(HMDCameraProfile *)self setRecordingEventsCleanupTimer:v8];

  v9 = [(HMDCameraProfile *)self recordingEventsCleanupTimer];
  [v9 setDelegate:self];

  v10 = [(HMDAccessoryProfile *)self workQueue];
  v11 = [(HMDCameraProfile *)self recordingEventsCleanupTimer];
  [v11 setDelegateQueue:v10];

  v12 = [(HMDCameraProfile *)self recordingEventsCleanupTimer];
  [v12 resume];
}

- (void)clipManager:(id)a3 didDeleteClipWithUUID:(id)a4
{
  v5 = a4;
  v6 = [(HMDAccessoryProfile *)self workQueue];
  dispatch_assert_queue_V2(v6);

  v7 = [(HMDCameraProfile *)self clipUserNotificationCenter];
  [v7 removeEventNotificationForClipWithUUID:v5];
}

- (void)clipManager:(id)a3 didUpdateSignificantEvent:(id)a4
{
  v4 = [(HMDAccessoryProfile *)self workQueue:a3];
  dispatch_assert_queue_V2(v4);
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = HMDCameraProfile;
  [(HMDAccessoryProfile *)&v9 encodeWithCoder:v4];
  v5 = [(HMDCameraProfile *)self snapshotManager];
  v6 = [v5 encodedMostRecentSnapshot];

  if (v6)
  {
    [v4 encodeObject:v6 forKey:*MEMORY[0x277CCF508]];
  }

  v7 = [(HMDCameraProfile *)self cameraSettingsManager];
  v8 = [v7 currentSettings];
  [v4 encodeObject:v8 forKey:*MEMORY[0x277CCF510]];
}

- (void)handleResidentsChangedNotification:(id)a3
{
  v4 = [(HMDAccessoryProfile *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__HMDCameraProfile_handleResidentsChangedNotification___block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(v4, block);
}

- (void)handleCameraProfileSettingsDidChangeNotification:(id)a3
{
  v4 = a3;
  v5 = [(HMDAccessoryProfile *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [v4 userInfo];

  v7 = [v6 objectForKeyedSubscript:@"HMDCameraProfileSettingsNotificationKey"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v10 = v8;

  v9 = v10;
  if (v10)
  {
    __updateClipManagerWriteAccess(self, v10);
    v9 = v10;
  }
}

- (_HMCameraUserSettings)currentSettings
{
  v2 = [(HMDCameraProfile *)self cameraSettingsManager];
  v3 = [v2 currentSettings];

  return v3;
}

- (unint64_t)hash
{
  v2 = [(HMDAccessoryProfile *)self uniqueIdentifier];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
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
  if (v6)
  {
    v7 = [(HMDAccessoryProfile *)self uniqueIdentifier];
    v8 = [v6 uniqueIdentifier];
    if ([v7 isEqual:v8])
    {
      v9 = [(HMDCameraProfile *)self cameraStreamManagers];
      v10 = [v6 cameraStreamManagers];
      if ([v9 isEqualToSet:v10])
      {
        v11 = [(HMDCameraProfile *)self recordingManagementService];
        v12 = [v6 recordingManagementService];
        v13 = HMFEqualObjects();
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)cameraSettingProactiveReaderDidCompleteRead:(id)a3
{
  v4 = a3;
  v5 = [(HMDAccessoryProfile *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(HMDCameraProfile *)self settingProactiveReaders];
  [v6 removeObject:v4];
}

- (void)_handleStreamControlRequest:(id)a3
{
  v63 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDAccessoryProfile *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v10 = [v4 name];
    v11 = [v4 messagePayload];
    *buf = 138543874;
    v58 = v9;
    v59 = 2112;
    v60 = v10;
    v61 = 2112;
    v62 = v11;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Handling %@ message with payload: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v6);
  v12 = [v4 stringForKey:@"kCameraSessionID"];
  if (v12)
  {
    v13 = [(HMDCameraProfile *)v7 settingProactiveReaders];
    v14 = [v13 copy];

    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v15 = v14;
    v16 = [v15 countByEnumeratingWithState:&v51 objects:v56 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v52;
      while (2)
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v52 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v51 + 1) + 8 * i);
          if ([v20 hasPendingNegotiateMessageForSessionWithIdentifier:v12])
          {
            [v20 handleMessage:v4];
            v37 = v15;
            goto LABEL_30;
          }
        }

        v17 = [v15 countByEnumeratingWithState:&v51 objects:v56 count:16];
        if (v17)
        {
          continue;
        }

        break;
      }
    }

    v43 = v15;
    v44 = v4;

    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v46 = v7;
    obj = [(HMDCameraProfile *)v7 cameraStreamManagers];
    v21 = [obj countByEnumeratingWithState:&v47 objects:v55 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v48;
      while (2)
      {
        for (j = 0; j != v22; ++j)
        {
          if (*v48 != v23)
          {
            objc_enumerationMutation(obj);
          }

          v25 = *(*(&v47 + 1) + 8 * j);
          v26 = objc_autoreleasePoolPush();
          v27 = v46;
          v28 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
          {
            v29 = HMFGetLogIdentifier();
            v30 = [v25 streamSessionID];
            *buf = 138543874;
            v58 = v29;
            v59 = 2112;
            v60 = v30;
            v61 = 2112;
            v62 = v12;
            _os_log_impl(&dword_229538000, v28, OS_LOG_TYPE_INFO, "%{public}@Checking if stream message handler's session ID %@ matches with given %@", buf, 0x20u);
          }

          objc_autoreleasePoolPop(v26);
          v31 = [v25 streamSessionID];
          v32 = [v31 isEqual:v12];

          if (v32)
          {
            v4 = v44;
            [v25 handleMessage:v44];
            v15 = v43;
            v37 = obj;
            goto LABEL_30;
          }
        }

        v22 = [obj countByEnumeratingWithState:&v47 objects:v55 count:16];
        if (v22)
        {
          continue;
        }

        break;
      }
    }

    v33 = objc_autoreleasePoolPush();
    v34 = v46;
    v35 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      v36 = HMFGetLogIdentifier();
      *buf = 138543618;
      v58 = v36;
      v59 = 2112;
      v60 = v12;
      _os_log_impl(&dword_229538000, v35, OS_LOG_TYPE_ERROR, "%{public}@Did not find the stream with Session ID %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v33);
    v37 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
    v4 = v44;
    [v44 respondWithError:v37];
    v15 = v43;
LABEL_30:
  }

  else
  {
    v38 = objc_autoreleasePoolPush();
    v39 = v7;
    v40 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      v41 = HMFGetLogIdentifier();
      *buf = 138543362;
      v58 = v41;
      _os_log_impl(&dword_229538000, v40, OS_LOG_TYPE_ERROR, "%{public}@Stream session ID is not present in start request", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v38);
    v15 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
    [v4 respondWithError:v15];
  }

  v42 = *MEMORY[0x277D85DE8];
}

- (void)_handleNegotiateStreamRequest:(id)a3
{
  v75 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDAccessoryProfile *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [[HMDCameraMetricsMilestone alloc] initWithKey:@"ReceivedNegotiationRequest" timestamp:+[(HMDCameraSessionID *)HMDCameraStreamSessionID]];
  v7 = [v4 stringForKey:@"kCameraSessionID"];
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  v11 = v10;
  if (v7)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v13 = [v4 shortDescription];
      *buf = 138543874;
      v70 = v12;
      v71 = 2112;
      v72 = v7;
      v73 = 2114;
      v74 = v13;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@[%@] Handling negotiate stream request message: %{public}@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v8);
    v68 = objc_opt_class();
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v68 count:1];
    v15 = [v4 unarchivedObjectForKey:@"kCameraSessionPreference" ofClasses:v14];
    v16 = v15;
    if (v15)
    {
      v17 = v15;
    }

    else
    {
      v17 = objc_alloc_init(MEMORY[0x277CD1950]);
    }

    v19 = v17;

    if ([v4 isEntitledForSPIAccess] && objc_msgSend(v19, "shouldTakeOwnershipOfExistingStream"))
    {
      v63 = 0u;
      v64 = 0u;
      v61 = 0u;
      v62 = 0u;
      v20 = [(HMDCameraProfile *)v9 cameraStreamManagers];
      v21 = [v20 countByEnumeratingWithState:&v61 objects:v67 count:16];
      if (v21)
      {
        v22 = v21;
        v23 = *v62;
        while (2)
        {
          for (i = 0; i != v22; ++i)
          {
            if (*v62 != v23)
            {
              objc_enumerationMutation(v20);
            }

            v25 = *(*(&v61 + 1) + 8 * i);
            if ([v25 hasStreamSessionShowingOnCurrentDevice])
            {
              [v25 takeOwnershipOfStreamUsingMessage:v4];
              goto LABEL_45;
            }
          }

          v22 = [v20 countByEnumeratingWithState:&v61 objects:v67 count:16];
          if (v22)
          {
            continue;
          }

          break;
        }
      }
    }

    v52 = v7;
    v20 = [(HMDCameraProfile *)v9 hapAccessory];
    if ([v20 isReachable])
    {
      v55 = 0uLL;
      v56 = 0uLL;
      v53 = 0uLL;
      v54 = 0uLL;
      v26 = [(HMDCameraProfile *)v9 cameraStreamManagers];
      v27 = [v26 countByEnumeratingWithState:&v53 objects:v65 count:16];
      if (v27)
      {
        v28 = v27;
        v29 = *v54;
        do
        {
          for (j = 0; j != v28; ++j)
          {
            if (*v54 != v29)
            {
              objc_enumerationMutation(v26);
            }

            [*(*(&v53 + 1) + 8 * j) setNegotiationMilestone:v6];
          }

          v28 = [v26 countByEnumeratingWithState:&v53 objects:v65 count:16];
        }

        while (v28);
      }

      v31 = [HMDCameraSettingProactiveReader alloc];
      v32 = [(HMDAccessoryProfile *)v9 workQueue];
      v33 = [(HMDCameraProfile *)v9 cameraStreamManagers];
      v34 = [(HMDAccessoryProfile *)v9 logIdentifier];
      v7 = v52;
      v35 = [(HMDCameraSettingProactiveReader *)v31 initWithWorkQueue:v32 sessionID:v52 accessory:v20 message:v4 streamControlMessageHandlers:v33 streamPreferences:v19 logIdentifier:v34];

      v36 = [(HMDCameraProfile *)v9 settingProactiveReaders];
      [v36 addObject:v35];

      [(HMDCameraSettingProactiveReader *)v35 setDelegate:v9];
      [(HMDCameraSettingProactiveReader *)v35 readSetting];
    }

    else
    {
      v59 = 0uLL;
      v60 = 0uLL;
      v57 = 0uLL;
      v58 = 0uLL;
      v35 = [(HMDCameraProfile *)v9 cameraStreamManagers];
      v37 = [(HMDCameraSettingProactiveReader *)v35 countByEnumeratingWithState:&v57 objects:v66 count:16];
      if (v37)
      {
        v38 = v37;
        v39 = *v58;
        while (2)
        {
          for (k = 0; k != v38; ++k)
          {
            if (*v58 != v39)
            {
              objc_enumerationMutation(v35);
            }

            v41 = *(*(&v57 + 1) + 8 * k);
            if (([v41 hasStreamSession] & 1) == 0)
            {
              v46 = objc_autoreleasePoolPush();
              v47 = v9;
              v48 = HMFGetOSLogHandle();
              v7 = v52;
              if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
              {
                HMFGetLogIdentifier();
                v49 = v51 = v46;
                *buf = 138543874;
                v70 = v49;
                v71 = 2112;
                v72 = v52;
                v73 = 2112;
                v74 = v41;
                _os_log_impl(&dword_229538000, v48, OS_LOG_TYPE_INFO, "%{public}@[%@] Accessory is not reachable, routing request to camera streaming service: %@", buf, 0x20u);

                v46 = v51;
              }

              objc_autoreleasePoolPop(v46);
              [v41 setNegotiationMilestone:v6];
              [v41 handleMessage:v4];
              goto LABEL_44;
            }
          }

          v38 = [(HMDCameraSettingProactiveReader *)v35 countByEnumeratingWithState:&v57 objects:v66 count:16];
          if (v38)
          {
            continue;
          }

          break;
        }
      }

      v42 = objc_autoreleasePoolPush();
      v43 = v9;
      v44 = HMFGetOSLogHandle();
      v7 = v52;
      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        v45 = HMFGetLogIdentifier();
        *buf = 138543618;
        v70 = v45;
        v71 = 2112;
        v72 = v52;
        _os_log_impl(&dword_229538000, v44, OS_LOG_TYPE_ERROR, "%{public}@[%@] Accessory is not reachable and cannot route request to a camera streaming service", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v42);
      v35 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:1019];
      [v4 respondWithError:v35];
    }

LABEL_44:

LABEL_45:
  }

  else
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      *buf = 138543362;
      v70 = v18;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_ERROR, "%{public}@Stream session ID is not present in negotiate request", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
    v19 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
    [v4 respondWithError:v19];
  }

  v50 = *MEMORY[0x277D85DE8];
}

- (void)_postNotificationForUpdatedSignificantEvent:(id)a3 allClipSignificantEvents:(id)a4 notificationReasons:(unint64_t)a5
{
  v18 = a3;
  v8 = a4;
  v9 = [(HMDAccessoryProfile *)self workQueue];
  dispatch_assert_queue_V2(v9);

  v10 = [(HMDCameraProfile *)self clipUserNotificationCenter];
  v11 = [v10 createBulletinForSignificantEvents:v8 cameraProfile:self];

  if (v11)
  {
    v12 = [objc_opt_class() bulletinBoard];
    v13 = [v12 hasDoorbellPressNotificationToUpdateWithSignificantEventBulletin:v11];

    if (!v13)
    {
      goto LABEL_11;
    }

    v14 = [objc_opt_class() bulletinBoard];
    [v14 updateDoorbellPressNotificationsWithSignificantEventBulletin:v11];

    v15 = [v11 significantEvents];
    v16 = [v15 na_any:&__block_literal_global_119_233650];

    if (v16)
    {
LABEL_11:
      if ([(HMDCameraProfile *)self _shouldNotifyForSignificantEvent:v18 notificationReasons:a5])
      {
        v17 = [(HMDCameraProfile *)self clipUserNotificationCenter];
        [v17 postNotificationForBulletin:v11 significantEvent:v18];
      }
    }
  }
}

BOOL __109__HMDCameraProfile__postNotificationForUpdatedSignificantEvent_allClipSignificantEvents_notificationReasons___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 reason] != 1 && objc_msgSend(v2, "reason") != 2;

  return v3;
}

- (BOOL)_shouldNotifyForSignificantEvent:(id)a3 notificationReasons:(unint64_t)a4
{
  v4 = a4;
  v30 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(HMDAccessoryProfile *)self workQueue];
  dispatch_assert_queue_V2(v7);

  v8 = [(HMDCameraProfile *)self clipUserNotificationCenter];

  if (v8)
  {
    v9 = [(HMDCameraProfile *)self currentSettings];
    v10 = [v9 notificationSettings];
    v11 = [v10 isSmartBulletinBoardNotificationEnabled];

    if (v11)
    {
      v12 = v4 & ![(HMDCameraProfile *)self _areFaceClassificationNotificationsSuppressedForSignificantEvent:v6];
      v13 = objc_autoreleasePoolPush();
      v14 = self;
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = HMFGetLogIdentifier();
        v17 = [v6 uniqueIdentifier];
        v18 = HMFBooleanToString();
        v24 = 138543874;
        v25 = v16;
        v26 = 2112;
        v27 = v17;
        v28 = 2112;
        v29 = v18;
        _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@Determined should add notification for significant event %@: %@", &v24, 0x20u);
      }
    }

    else
    {
      v13 = objc_autoreleasePoolPush();
      v19 = self;
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        v20 = HMFGetLogIdentifier();
        v21 = [v6 uniqueIdentifier];
        v24 = 138543618;
        v25 = v20;
        v26 = 2112;
        v27 = v21;
        _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_DEBUG, "%{public}@Not notifying for significant event %@ because smart notification bulletin is disabled", &v24, 0x16u);
      }

      LOBYTE(v12) = 0;
    }

    objc_autoreleasePoolPop(v13);
  }

  else
  {
    LOBYTE(v12) = 0;
  }

  v22 = *MEMORY[0x277D85DE8];
  return v12;
}

- (BOOL)_areFaceClassificationNotificationsSuppressedForSignificantEvent:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 faceClassification];
  v6 = [v5 person];

  v7 = [(HMDAccessoryProfile *)self accessory];
  v8 = [v7 home];
  v9 = [v8 currentUser];
  v10 = [v9 personSettingsManager];

  if (!v6 || !v10)
  {
    goto LABEL_6;
  }

  v11 = [v6 UUID];
  v12 = [v10 areClassificationNotificationsEnabledForPersonUUID:v11];

  v13 = objc_autoreleasePoolPush();
  v14 = self;
  v15 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = HMFGetLogIdentifier();
    v17 = HMFBooleanToString();
    v21 = 138543874;
    v22 = v16;
    v23 = 2112;
    v24 = v17;
    v25 = 2112;
    v26 = v6;
    _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@Classification notifications enabled is %@ for person: %@", &v21, 0x20u);
  }

  objc_autoreleasePoolPop(v13);
  if (!v12)
  {
    v18 = 1;
  }

  else
  {
LABEL_6:
    v18 = 0;
  }

  v19 = *MEMORY[0x277D85DE8];
  return v18;
}

- (void)registerForMessages
{
  v76 = *MEMORY[0x277D85DE8];
  v3 = [(HMDAccessoryProfile *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = objc_autoreleasePoolPush();
  v5 = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    *buf = 138543362;
    v75 = v7;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Registering for messages", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  v8 = [(HMDCameraProfile *)v5 hapAccessory];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 home];
    if (!v10)
    {
      v46 = objc_autoreleasePoolPush();
      v47 = v5;
      v48 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
      {
        v49 = HMFGetLogIdentifier();
        *buf = 138543362;
        v75 = v49;
        _os_log_impl(&dword_229538000, v48, OS_LOG_TYPE_DEFAULT, "%{public}@Not registering for messages because home reference is nil", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v46);
      goto LABEL_24;
    }

    v11 = [(HMDCameraProfile *)v5 snapshotManager];
    [v11 registerForMessages];

    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    v12 = [(HMDCameraProfile *)v5 cameraStreamManagers];
    v13 = [v12 countByEnumeratingWithState:&v65 objects:v73 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v66;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v66 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v65 + 1) + 8 * i);
          v18 = [(HMDAccessoryProfile *)v5 msgDispatcher];
          [v17 configureWithMessageDispatcher:v18];
        }

        v14 = [v12 countByEnumeratingWithState:&v65 objects:v73 count:16];
      }

      while (v14);
    }

    v19 = [(HMDCameraProfile *)v5 notificationCenter];
    [v19 addObserver:v5 selector:sel_handleCameraProfileSettingsDidChangeNotification_ name:@"HMDCameraProfileSettingsDidChangeNotification" object:v9];

    v20 = [(HMDCameraProfile *)v5 notificationCenter];
    v21 = [v10 residentDeviceManager];
    [v20 addObserver:v5 selector:sel_handleResidentsChangedNotification_ name:@"HMDResidentDeviceManagerAddResidentNotification" object:v21];

    v22 = [(HMDCameraProfile *)v5 notificationCenter];
    v23 = [v10 residentDeviceManager];
    [v22 addObserver:v5 selector:sel_handleResidentsChangedNotification_ name:@"HMDResidentDeviceManagerUpdateResidentNotification" object:v23];

    v24 = [(HMDCameraProfile *)v5 notificationCenter];
    v25 = [v10 residentDeviceManager];
    [v24 addObserver:v5 selector:sel_handleResidentsChangedNotification_ name:@"HMDResidentDeviceManagerRemoveResidentNotification" object:v25];

    v26 = [(HMDCameraProfile *)v5 cameraSettingsManager];
    [v26 start];

    [(HMDCameraProfile *)v5 _createCameraRecordingManager];
    [(HMDCameraProfile *)v5 _setUpBulletinNotificationManagerObserver];
    v27 = [(HMDCameraProfile *)v5 currentSettings];
    __updateClipManagerWriteAccess(v5, v27);

    [v9 configureBulletinNotification];
    v28 = [v10 featuresDataSource];
    LOBYTE(v24) = [v28 isMessageBindingsEnabled];

    if (v24)
    {
LABEL_24:

      goto LABEL_25;
    }

    v29 = [(HMDAccessoryProfile *)v5 accessory];
    v30 = [v29 home];
    v31 = [HMDUserMessagePolicy userMessagePolicyWithHome:v30 userPrivilege:0 remoteAccessRequired:1 requiresCameraStreamingAccess:1];

    v32 = [HMDXPCMessagePolicy policyWithEntitlements:1];
    v33 = [HMDXPCMessagePolicy policyWithEntitlements:5];
    v72[0] = v31;
    v72[1] = v32;
    v34 = [MEMORY[0x277CBEA60] arrayWithObjects:v72 count:2];
    v35 = [(HMDAccessoryProfile *)v5 msgDispatcher];
    [v35 registerForMessage:*MEMORY[0x277CCF5F0] receiver:v5 policies:v34 selector:?];

    v36 = [(HMDAccessoryProfile *)v5 msgDispatcher];
    [v36 registerForMessage:*MEMORY[0x277CCF608] receiver:v5 policies:v34 selector:sel__handleStreamControlRequest_];

    v37 = [(HMDAccessoryProfile *)v5 msgDispatcher];
    [v37 registerForMessage:*MEMORY[0x277CCF5F8] receiver:v5 policies:v34 selector:sel__handleStreamControlRequest_];

    v71[0] = v31;
    v71[1] = v33;
    v64 = v33;
    v38 = [MEMORY[0x277CBEA60] arrayWithObjects:v71 count:2];
    v39 = [(HMDAccessoryProfile *)v5 msgDispatcher];
    [v39 registerForMessage:*MEMORY[0x277CCF600] receiver:v5 policies:v38 selector:sel__handleStreamControlRequest_];

    v40 = [(HMDAccessoryProfile *)v5 msgDispatcher];
    [v40 registerForMessage:*MEMORY[0x277CCF618] receiver:v5 policies:v38 selector:sel__handleStreamControlRequest_];

    v41 = +[HMDDeviceCapabilities deviceCapabilities];
    if ([v41 isResidentCapable])
    {
    }

    else
    {
      v50 = isiOSDevice();

      if (!v50)
      {
LABEL_23:
        v58 = +[HMDRemoteMessagePolicy defaultSecurePolicy];
        v69[0] = v31;
        v69[1] = v58;
        v59 = [MEMORY[0x277CBEA60] arrayWithObjects:v69 count:2];
        v60 = [(HMDAccessoryProfile *)v5 msgDispatcher];
        [v60 registerForMessage:@"kStreamRemoteConnectionSetupNotificationKey" receiver:v5 policies:v59 selector:sel__handleStreamControlRequest_];

        v61 = [(HMDAccessoryProfile *)v5 msgDispatcher];
        [v61 registerForMessage:@"kStreamStoppedRemoteNotificationKey" receiver:v5 policies:v59 selector:sel__handleStreamControlRequest_];

        goto LABEL_24;
      }
    }

    v51 = +[(HMDRemoteMessagePolicy *)HMDMutableRemoteMessagePolicy];
    [v51 setRoles:{objc_msgSend(v51, "roles") | 6}];
    v63 = v32;
    v52 = [v51 copy];
    v70[0] = v31;
    v70[1] = v52;
    v53 = [MEMORY[0x277CBEA60] arrayWithObjects:v70 count:2];
    v54 = [(HMDAccessoryProfile *)v5 msgDispatcher];
    [v54 registerForMessage:@"kNegotitateRemoteStreamRequestKey" receiver:v5 policies:v53 selector:sel__handleNegotiateStreamRequest_];

    v55 = [(HMDAccessoryProfile *)v5 msgDispatcher];
    [v55 registerForMessage:@"kStartRemoteStreamRequestKey" receiver:v5 policies:v53 selector:sel__handleStreamControlRequest_];

    v56 = [(HMDAccessoryProfile *)v5 msgDispatcher];
    [v56 registerForMessage:@"kStopRemoteStreamRequestKey" receiver:v5 policies:v53 selector:sel__handleStreamControlRequest_];

    v57 = [(HMDAccessoryProfile *)v5 msgDispatcher];
    [v57 registerForMessage:@"kReconfigureRemoteStreamRequestKey" receiver:v5 policies:v53 selector:sel__handleStreamControlRequest_];

    v32 = v63;
    goto LABEL_23;
  }

  v42 = objc_autoreleasePoolPush();
  v43 = v5;
  v44 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
  {
    v45 = HMFGetLogIdentifier();
    *buf = 138543362;
    v75 = v45;
    _os_log_impl(&dword_229538000, v44, OS_LOG_TYPE_DEFAULT, "%{public}@Not registering for messages because accessory reference is nil", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v42);
LABEL_25:

  v62 = *MEMORY[0x277D85DE8];
}

- (void)_setControlSupport
{
  v22 = *MEMORY[0x277D85DE8];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = [(HMDAccessoryProfile *)self services];
  v3 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v18;
    v6 = *MEMORY[0x277CD0EB8];
    v7 = *MEMORY[0x277CD0EF0];
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v18 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v17 + 1) + 8 * i);
        v10 = [v9 serviceType];
        v11 = [v10 isEqualToString:v6];

        v12 = &OBJC_IVAR___HMDCameraProfile__microphonePresent;
        if ((v11 & 1) == 0)
        {
          v13 = [v9 serviceType];
          v14 = [v13 isEqualToString:v7];

          v12 = &OBJC_IVAR___HMDCameraProfile__speakerPresent;
          if (!v14)
          {
            continue;
          }
        }

        *(&self->super.super.super.isa + *v12) = 1;
      }

      v4 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v4);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (id)dumpStateWithPrivacyLevel:(unint64_t)a3
{
  v16.receiver = self;
  v16.super_class = HMDCameraProfile;
  v4 = [(HMDAccessoryProfile *)&v16 dumpStateWithPrivacyLevel:a3];
  v5 = [v4 mutableCopy];

  v6 = [(HMDAccessoryProfile *)self workQueue];
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __46__HMDCameraProfile_dumpStateWithPrivacyLevel___block_invoke;
  v13 = &unk_27868A750;
  v14 = v5;
  v15 = self;
  v7 = v5;
  dispatch_sync(v6, &v10);

  v8 = [v7 copy];

  return v8;
}

void __46__HMDCameraProfile_dumpStateWithPrivacyLevel___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) clipManager];
  v3 = [v2 stateDump];
  [*(a1 + 32) setObject:v3 forKeyedSubscript:@"Clip Manager"];

  v4 = [*(a1 + 40) cameraStreamManagers];
  v5 = [v4 na_map:&__block_literal_global_97_233667];
  v6 = [v5 allObjects];
  [*(a1 + 32) setObject:v6 forKeyedSubscript:@"Stream Managers"];

  v8 = [*(a1 + 40) cameraRecordingManager];
  v7 = [v8 stateDump];
  [*(a1 + 32) setObject:v7 forKeyedSubscript:@"Recording Manager"];
}

- (void)dealloc
{
  v3 = [(HMDAccessoryProfile *)self msgDispatcher];
  [v3 deregisterReceiver:self];

  v4.receiver = self;
  v4.super_class = HMDCameraProfile;
  [(HMDCameraProfile *)&v4 dealloc];
}

- (void)unconfigure
{
  v5 = [(HMDCameraProfile *)self hapAccessory];
  v3 = [v5 home];
  if (v5)
  {
    [v3 isCurrentDeviceAvailableResident];
  }

  v4 = [(HMDCameraProfile *)self notificationCenter];
  [v4 postNotificationName:@"HMDCameraProfileUnconfiguredNotification" object:self];
}

- (void)removeCloudData
{
  v5.receiver = self;
  v5.super_class = HMDCameraProfile;
  [(HMDAccessoryProfile *)&v5 removeCloudData];
  v3 = [(HMDAccessoryProfile *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__HMDCameraProfile_removeCloudData__block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(v3, block);
}

void __35__HMDCameraProfile_removeCloudData__block_invoke(uint64_t a1)
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
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Removing all cloud data", &v10, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  v6 = [*(a1 + 32) clipManager];
  v7 = [v6 remove];

  v8 = [*(a1 + 32) cameraSettingsManager];
  [v8 remove];

  v9 = *MEMORY[0x277D85DE8];
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(HMDAccessoryProfile *)self accessory];
  v5 = [v4 name];
  v6 = [(HMDAccessoryProfile *)self uniqueIdentifier];
  v7 = [v3 stringWithFormat:@"Camera Profile %@, %@", v5, v6];

  return v7;
}

- (void)_setUpBulletinNotificationManagerObserver
{
  v3 = [(HMDAccessoryProfile *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v7 = [(HMDAccessoryProfile *)self accessory];
  v4 = [v7 home];
  v5 = [v4 cameraBulletinNotificationManager];
  v6 = [(HMDAccessoryProfile *)self uniqueIdentifier];
  [v5 addCameraSignificantEventNotificationObserver:self cameraIdentifier:v6];
}

- (void)_createCameraRecordingManager
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = [(HMDAccessoryProfile *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(HMDCameraProfile *)self recordingManagementService];

  if (v4)
  {
    v5 = [(HMDAccessoryProfile *)self accessory];
    v6 = [v5 home];
    v7 = [v6 isOwnerUser];

    v8 = [(HMDCameraProfile *)self hapAccessory];
    v9 = [v8 home];
    v10 = [v9 isCurrentDeviceAvailableResident];

    v11 = [(HMDCameraProfile *)self cameraRecordingManager];

    if (v10 && (v7 & 1) != 0)
    {
      if (!v11)
      {
        v12 = objc_autoreleasePoolPush();
        v13 = self;
        v14 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          v15 = HMFGetLogIdentifier();
          v30 = 138543362;
          v31 = v15;
          _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, "%{public}@Creating camera recording manager", &v30, 0xCu);
        }

        objc_autoreleasePoolPop(v12);
        v16 = [(HMDCameraProfile *)v13 recordingManagerFactory];
        v17 = [(HMDCameraProfile *)v13 recordingManagementService];
        v18 = (v16)[2](v16, v13, v17);
        [(HMDCameraProfile *)v13 setCameraRecordingManager:v18];

        v19 = [(HMDCameraProfile *)v13 cameraRecordingManager];
        [v19 start];
      }
    }

    else if (v11)
    {
      v24 = objc_autoreleasePoolPush();
      v25 = self;
      v26 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        v27 = HMFGetLogIdentifier();
        v30 = 138543362;
        v31 = v27;
        _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_INFO, "%{public}@Destroying camera recording manager", &v30, 0xCu);
      }

      objc_autoreleasePoolPop(v24);
      v28 = [(HMDCameraProfile *)v25 cameraRecordingManager];
      [v28 shutDown];

      [(HMDCameraProfile *)v25 setCameraRecordingManager:0];
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
      v30 = 138543362;
      v31 = v23;
      _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_INFO, "%{public}@Not configuring for recording because there is no recording service", &v30, 0xCu);
    }

    objc_autoreleasePoolPop(v20);
  }

  v29 = *MEMORY[0x277D85DE8];
}

- (void)tearDownWithReplacementCameraProfile:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDAccessoryProfile *)self workQueue];
  dispatch_assert_queue_V2(v5);

  if (-[HMDCameraProfile isCameraRecordingFeatureSupported](self, "isCameraRecordingFeatureSupported") && ([v4 isCameraRecordingFeatureSupported] & 1) == 0)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v10 = [(HMDCameraProfile *)v7 recordingManagementService];
      v14 = 138543618;
      v15 = v9;
      v16 = 2112;
      v17 = v10;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Removing clip data because we have a recording management service %@ and we are transitioning to a replacement camera profile that does not", &v14, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    v11 = [(HMDCameraProfile *)v7 clipManager];
    v12 = [v11 remove];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)setUp
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = [(HMDAccessoryProfile *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(HMDAccessoryProfile *)self accessory];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 home];
    if (v6)
    {
      v7 = [(HMDCameraProfile *)self networkMonitor];
      [v7 setDelegate:self];

      v8 = [(HMDCameraProfile *)self clipManager];
      [v8 setDelegate:self];

      v9 = [(HMDCameraProfile *)self clipManager];
      [v9 configure];

      v10 = [(HMDCameraProfile *)self clipUserNotificationCenter];
      [v10 removeCachedHeroFrameImages];

      v11 = [(HMDCameraProfile *)self cameraSettingsManager];
      v12 = [v5 msgDispatcher];
      v13 = [v6 administratorHandler];
      v14 = +[HMDDeviceCapabilities deviceCapabilities];
      [v11 configureWithMessageDispatcher:v12 adminMessageDispatcher:v13 deviceIsResidentCapable:{objc_msgSend(v14, "isResidentCapable")}];

      v15 = [(HMDCameraProfile *)self reachabilityEventManager];
      v16 = [(HMDAccessoryProfile *)self msgDispatcher];
      v17 = [(HMDCameraProfile *)self currentSettings];
      v18 = [v6 isCurrentDeviceConfirmedPrimaryResident];
      v19 = [(HMDCameraProfile *)self networkMonitor];
      [v15 configureWithMessageDispatcher:v16 currentSettings:v17 isCurrentDeviceConfirmedPrimaryResident:v18 isCurrentDeviceConnectedToNetwork:{objc_msgSend(v19, "isReachable")}];
    }

    else
    {
      v24 = objc_autoreleasePoolPush();
      v25 = self;
      v26 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v27 = HMFGetLogIdentifier();
        v29 = 138543362;
        v30 = v27;
        _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_ERROR, "%{public}@Skipping camera profile setup because home reference is nil", &v29, 0xCu);
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
      v29 = 138543362;
      v30 = v23;
      _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_ERROR, "%{public}@Skipping camera profile setup because accessory reference is nil", &v29, 0xCu);
    }

    objc_autoreleasePoolPop(v20);
  }

  v28 = *MEMORY[0x277D85DE8];
}

- (BOOL)isCameraRecordingFeatureSupported
{
  v2 = [(HMDCameraProfile *)self recordingManagementService];
  v3 = v2 != 0;

  return v3;
}

- (HMDCameraProfile)initWithAccessory:(id)a3 services:(id)a4 recordingManagementService:(id)a5 msgDispatcher:(id)a6 workQueue:(id)a7 home:(id)a8 settingsManager:(id)a9 uniqueIdentifier:(id)a10 clipManager:(id)a11 clipUserNotificationCenter:(id)a12 reachabilityEventManager:(id)a13 networkMonitor:(id)a14 streamSnapshotHandler:(id)a15 snapshotManager:(id)a16 cameraStreamManagers:(id)a17 notificationCenter:(id)a18
{
  v53 = a3;
  v22 = a4;
  v46 = a5;
  v52 = a5;
  obj = a6;
  v57 = a6;
  v58 = a7;
  v23 = a8;
  v51 = a9;
  v24 = a10;
  v25 = a11;
  v50 = a12;
  v26 = a13;
  v27 = a14;
  v56 = a15;
  v54 = a16;
  v28 = a17;
  v29 = a18;
  if (!v53)
  {
    _HMFPreconditionFailure();
    goto LABEL_16;
  }

  if (!v22)
  {
LABEL_16:
    _HMFPreconditionFailure();
    goto LABEL_17;
  }

  if (!v57)
  {
LABEL_17:
    _HMFPreconditionFailure();
    goto LABEL_18;
  }

  if (!v58)
  {
LABEL_18:
    _HMFPreconditionFailure();
    goto LABEL_19;
  }

  v48 = v25;
  if (!v23)
  {
LABEL_19:
    _HMFPreconditionFailure();
    goto LABEL_20;
  }

  if (!v24)
  {
LABEL_20:
    _HMFPreconditionFailure();
    goto LABEL_21;
  }

  if (!v27)
  {
LABEL_21:
    _HMFPreconditionFailure();
    goto LABEL_22;
  }

  if (!v56)
  {
LABEL_22:
    _HMFPreconditionFailure();
    goto LABEL_23;
  }

  if (!v54)
  {
LABEL_23:
    _HMFPreconditionFailure();
    goto LABEL_24;
  }

  if (!v28)
  {
LABEL_24:
    _HMFPreconditionFailure();
    goto LABEL_25;
  }

  v30 = v29;
  if (!v29)
  {
LABEL_25:
    v44 = _HMFPreconditionFailure();
    return __293__HMDCameraProfile_initWithAccessory_services_recordingManagementService_msgDispatcher_workQueue_home_settingsManager_uniqueIdentifier_clipManager_clipUserNotificationCenter_reachabilityEventManager_networkMonitor_streamSnapshotHandler_snapshotManager_cameraStreamManagers_notificationCenter___block_invoke_2(v44);
  }

  v31 = v23;
  v47 = v26;
  v32 = v27;
  v33 = [v22 allObjects];
  v59.receiver = self;
  v59.super_class = HMDCameraProfile;
  v34 = [(HMDAccessoryProfile *)&v59 initWithAccessory:v53 uniqueIdentifier:v24 services:v33 workQueue:v58];

  if (v34)
  {
    objc_storeWeak(&v34->_hapAccessory, v53);
    v35 = [HMDPredicateUtilities alloc];
    v36 = [(HMDAccessoryProfile *)v34 logIdentifier];
    v37 = [(HMDPredicateUtilities *)v35 initWithHome:v23 logIdentifier:v36];
    predicateUtilities = v34->_predicateUtilities;
    v34->_predicateUtilities = v37;

    v31 = v23;
    objc_storeStrong(&v34->super._msgDispatcher, obj);
    objc_storeStrong(&v34->_recordingManagementService, v46);
    objc_storeStrong(&v34->_networkMonitor, a14);
    objc_storeStrong(&v34->_streamSnapshotHandler, a15);
    objc_storeStrong(&v34->_snapshotManager, a16);
    objc_storeStrong(&v34->_cameraStreamManagers, a17);
    v39 = [MEMORY[0x277CBEB18] array];
    settingProactiveReaders = v34->_settingProactiveReaders;
    v34->_settingProactiveReaders = v39;

    objc_storeStrong(&v34->_cameraSettingsManager, a9);
    objc_storeStrong(&v34->_clipManager, a11);
    objc_storeStrong(&v34->_clipUserNotificationCenter, a12);
    objc_storeStrong(&v34->_reachabilityEventManager, a13);
    objc_storeStrong(&v34->_notificationCenter, a18);
    [(HMDCameraProfile *)v34 _setControlSupport];
    recordingEventsCleanupTimerFactory = v34->_recordingEventsCleanupTimerFactory;
    v34->_recordingEventsCleanupTimerFactory = &__block_literal_global_233705;

    recordingManagerFactory = v34->_recordingManagerFactory;
    v34->_recordingManagerFactory = &__block_literal_global_73_233706;
  }

  return v34;
}

HMDCameraRecordingManager *__293__HMDCameraProfile_initWithAccessory_services_recordingManagementService_msgDispatcher_workQueue_home_settingsManager_uniqueIdentifier_clipManager_clipUserNotificationCenter_reachabilityEventManager_networkMonitor_streamSnapshotHandler_snapshotManager_cameraStreamManagers_notificationCenter___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = [[HMDCameraRecordingManager alloc] initWithCamera:v5 recordingManagementService:v4];

  return v6;
}

id __293__HMDCameraProfile_initWithAccessory_services_recordingManagementService_msgDispatcher_workQueue_home_settingsManager_uniqueIdentifier_clipManager_clipUserNotificationCenter_reachabilityEventManager_networkMonitor_streamSnapshotHandler_snapshotManager_cameraStreamManagers_notificationCenter___block_invoke(double a1, uint64_t a2, uint64_t a3)
{
  v3 = [objc_alloc(MEMORY[0x277D0F920]) initWithTimeInterval:a3 options:a1];

  return v3;
}

- (HMDCameraProfile)initWithAccessory:(id)a3 services:(id)a4 msgDispatcher:(id)a5 workQueue:(id)a6 home:(id)a7 settingsManager:(id)a8
{
  v117 = *MEMORY[0x277D85DE8];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v89 = v14;
  if (!v14)
  {
    _HMFPreconditionFailure();
    goto LABEL_42;
  }

  if (!v15)
  {
LABEL_42:
    _HMFPreconditionFailure();
    goto LABEL_43;
  }

  if (!v16)
  {
LABEL_43:
    _HMFPreconditionFailure();
    goto LABEL_44;
  }

  if (!v17)
  {
LABEL_44:
    _HMFPreconditionFailure();
LABEL_45:
    _HMFPreconditionFailure();
  }

  if (!v18)
  {
    goto LABEL_45;
  }

  v83 = v17;
  v85 = self;
  v88 = v19;
  v92 = v18;
  v20 = [MEMORY[0x277CBEB58] set];
  v21 = [MEMORY[0x277CBEB58] set];
  v110 = 0u;
  v111 = 0u;
  v112 = 0u;
  v113 = 0u;
  obj = v15;
  v22 = [obj countByEnumeratingWithState:&v110 objects:v116 count:16];
  v93 = v16;
  if (!v22)
  {
    v94 = 0;
    goto LABEL_21;
  }

  v23 = v22;
  v94 = 0;
  v24 = *v111;
  v25 = *MEMORY[0x277CD0E00];
  v26 = *MEMORY[0x277CD0E08];
  do
  {
    for (i = 0; i != v23; ++i)
    {
      if (*v111 != v24)
      {
        objc_enumerationMutation(obj);
      }

      v28 = *(*(&v110 + 1) + 8 * i);
      v29 = [v28 serviceType];
      v30 = [v29 isEqualToString:v25];

      if (v30)
      {
        v31 = v20;
      }

      else
      {
        v32 = [v28 serviceType];
        v33 = [v32 isEqualToString:v26];

        if (v33)
        {
          v34 = v28;

          v94 = v34;
          continue;
        }

        v31 = v21;
      }

      [v31 addObject:v28];
    }

    v23 = [obj countByEnumeratingWithState:&v110 objects:v116 count:16];
  }

  while (v23);
LABEL_21:

  v35 = [MEMORY[0x277CBEB18] array];
  v106 = 0u;
  v107 = 0u;
  v108 = 0u;
  v109 = 0u;
  v36 = v20;
  v37 = [v36 countByEnumeratingWithState:&v106 objects:v115 count:16];
  if (v37)
  {
    v38 = v37;
    v39 = *v107;
    do
    {
      for (j = 0; j != v38; ++j)
      {
        if (*v107 != v39)
        {
          objc_enumerationMutation(v36);
        }

        v41 = MEMORY[0x277CCACA8];
        v42 = [*(*(&v106 + 1) + 8 * j) instanceID];
        v43 = [v41 stringWithFormat:@"%@", v42];
        [v35 addObject:v43];
      }

      v38 = [v36 countByEnumeratingWithState:&v106 objects:v115 count:16];
    }

    while (v38);
  }

  v104 = 0u;
  v105 = 0u;
  v102 = 0u;
  v103 = 0u;
  v44 = v21;
  v45 = [v44 countByEnumeratingWithState:&v102 objects:v114 count:16];
  if (v45)
  {
    v46 = v45;
    v47 = *v103;
    do
    {
      for (k = 0; k != v46; ++k)
      {
        if (*v103 != v47)
        {
          objc_enumerationMutation(v44);
        }

        v49 = MEMORY[0x277CCACA8];
        v50 = [*(*(&v102 + 1) + 8 * k) instanceID];
        v51 = [v49 stringWithFormat:@"%@", v50];
        [v35 addObject:v51];
      }

      v46 = [v44 countByEnumeratingWithState:&v102 objects:v114 count:16];
    }

    while (v46);
  }

  v52 = [v35 sortedArrayUsingSelector:sel_compare_];
  v53 = MEMORY[0x277CCAD78];
  v54 = [v89 uuid];
  v82 = v52;
  v55 = [v53 hm_deriveUUIDFromBaseUUID:v54 withSalts:v52];

  v56 = MEMORY[0x277CCACA8];
  v57 = [v92 name];
  v58 = [v89 name];
  v91 = [v56 stringWithFormat:@"%@/%@/%@", v57, v58, v55];

  v80 = v55;
  if (v94)
  {
    v59 = MEMORY[0x277CD18F0];
    v60 = [v94 uuid];
    v61 = [v59 zoneNameForRecordingManagementServiceUUID:v60];

    v62 = v93;
    v63 = v83;
    v87 = [[HMDCameraClipManager alloc] initWithHome:v92 zoneName:v61 messageDispatcher:v93 workQueue:v83 cameraProfileUUID:v55];
    v64 = +[HMDCameraProfile bulletinBoard];
    v65 = v64;
    if (v64)
    {
      v64 = [[HMDCameraClipUserNotificationCenter alloc] initWithBulletinBoard:v64 workQueue:v83 logIdentifier:v91];
    }

    v66 = v89;
    v86 = v64;
    v81 = [[HMDCameraRecordingReachabilityEventManager alloc] initWithHAPAccessory:v89 zoneName:v61 workQueue:v83];
  }

  else
  {
    v81 = 0;
    v86 = 0;
    v87 = 0;
    v62 = v93;
    v66 = v89;
    v63 = v83;
  }

  v67 = objc_alloc_init(MEMORY[0x277D0F868]);
  v68 = [HMDCameraStreamSnapshotHandler alloc];
  v69 = [v36 allObjects];
  v70 = [(HMDCameraStreamSnapshotHandler *)v68 initWithWorkQueue:v63 services:v69 logIdentifier:v91];

  v90 = [[HMDCameraSnapshotManager alloc] initWithAccessory:v66 workQueue:v63 streamSnapshotHandler:v70 uniqueIdentifier:v80 msgDispatcher:v62 networkMonitor:v67];
  v96[0] = MEMORY[0x277D85DD0];
  v96[1] = 3221225472;
  v96[2] = __92__HMDCameraProfile_initWithAccessory_services_msgDispatcher_workQueue_home_settingsManager___block_invoke;
  v96[3] = &unk_278682D10;
  v97 = v63;
  v98 = v70;
  v99 = v66;
  v100 = v80;
  v101 = v67;
  v79 = v67;
  v71 = v80;
  v72 = v66;
  v84 = v70;
  v73 = v63;
  v74 = [v36 na_map:v96];
  v75 = [MEMORY[0x277CCAB98] defaultCenter];
  v76 = [(HMDCameraProfile *)v85 initWithAccessory:v72 services:v44 recordingManagementService:v94 msgDispatcher:v93 workQueue:v73 home:v92 settingsManager:v88 uniqueIdentifier:v71 clipManager:v87 clipUserNotificationCenter:v86 reachabilityEventManager:v81 networkMonitor:v79 streamSnapshotHandler:v84 snapshotManager:v90 cameraStreamManagers:v74 notificationCenter:v75];

  v77 = *MEMORY[0x277D85DE8];
  return v76;
}

HMDCameraStreamControlMessageHandler *__92__HMDCameraProfile_initWithAccessory_services_msgDispatcher_workQueue_home_settingsManager___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = [[HMDCameraStreamControlMessageHandler alloc] initWithWorkQueue:a1[4] streamSnapshotHandler:a1[5] accessory:a1[6] streamManagementService:v3 profileUniqueIdentifier:a1[7] networkMonitor:a1[8]];

  return v4;
}

+ (id)messageBindingForDispatcher:(id)a3 message:(id)a4 receiver:(id)a5
{
  v60[2] = *MEMORY[0x277D85DE8];
  v55 = a3;
  v7 = a4;
  v8 = a5;
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
  v11 = [v10 accessory];
  v12 = [v11 home];

  v13 = [HMDUserMessagePolicy userMessagePolicyWithHome:v12 userPrivilege:0 remoteAccessRequired:1 requiresCameraStreamingAccess:1];
  v14 = [HMDXPCMessagePolicy policyWithEntitlements:1];
  v56 = [HMDXPCMessagePolicy policyWithEntitlements:5];
  v60[0] = v13;
  v60[1] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v60 count:2];
  v16 = [v7 name];
  v17 = [v16 isEqualToString:*MEMORY[0x277CCF5F0]];

  v18 = [v7 name];
  v19 = v18;
  if (v17)
  {
    v20 = &selRef__handleNegotiateStreamRequest_;
LABEL_10:
    v24 = *v20;
LABEL_11:
    v25 = HMFCreateMessageBinding();
LABEL_12:
    v26 = v25;
    goto LABEL_13;
  }

  v21 = [v18 isEqualToString:*MEMORY[0x277CCF608]];

  v22 = [v7 name];
  v19 = v22;
  if (v21)
  {
LABEL_9:
    v20 = &selRef__handleStreamControlRequest_;
    goto LABEL_10;
  }

  v23 = [v22 isEqualToString:*MEMORY[0x277CCF5F8]];

  if (v23)
  {
    v19 = [v7 name];
    goto LABEL_9;
  }

  v59[0] = v13;
  v59[1] = v56;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v59 count:2];
  v29 = [v7 name];
  v30 = [v29 isEqualToString:*MEMORY[0x277CCF600]];

  v31 = [v7 name];
  v19 = v31;
  if (v30)
  {
    goto LABEL_11;
  }

  v32 = [v31 isEqualToString:*MEMORY[0x277CCF618]];

  if (v32)
  {
    v19 = [v7 name];
    goto LABEL_11;
  }

  v33 = +[HMDDeviceCapabilities deviceCapabilities];
  if ([v33 isResidentCapable])
  {
  }

  else
  {
    v34 = isiOSDevice();

    if (!v34)
    {
      goto LABEL_32;
    }
  }

  v15 = +[(HMDRemoteMessagePolicy *)HMDMutableRemoteMessagePolicy];
  [v15 setRoles:{objc_msgSend(v15, "roles") | 6}];
  v19 = [v15 copy];
  v58[0] = v13;
  v58[1] = v19;
  v54 = [MEMORY[0x277CBEA60] arrayWithObjects:v58 count:2];
  v35 = [v7 name];
  v36 = [v35 isEqualToString:@"kNegotitateRemoteStreamRequestKey"];

  v37 = [v7 name];
  if (v36)
  {
    v38 = &selRef__handleNegotiateStreamRequest_;
LABEL_30:
    v45 = *v38;
    v46 = v37;
    v26 = HMFCreateMessageBinding();

    goto LABEL_13;
  }

  v39 = v37;
  v40 = [v37 isEqualToString:@"kStartRemoteStreamRequestKey"];

  v37 = [v7 name];
  if (v40 & 1) != 0 || (v41 = v37, v42 = [v37 isEqualToString:@"kStopRemoteStreamRequestKey"], v41, objc_msgSend(v7, "name"), v37 = objc_claimAutoreleasedReturnValue(), (v42))
  {
LABEL_29:
    v38 = &selRef__handleStreamControlRequest_;
    goto LABEL_30;
  }

  v43 = v37;
  v44 = [v37 isEqualToString:@"kReconfigureRemoteStreamRequestKey"];

  if (v44)
  {
    v37 = [v7 name];
    goto LABEL_29;
  }

LABEL_32:
  v15 = +[HMDRemoteMessagePolicy defaultSecurePolicy];
  v57[0] = v13;
  v57[1] = v15;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v57 count:2];
  v47 = [v7 name];
  v48 = [v47 isEqualToString:@"kStreamRemoteConnectionSetupNotificationKey"];

  v49 = [v7 name];
  if ((v48 & 1) == 0)
  {
    v50 = v49;
    v51 = [v49 isEqualToString:@"kStreamStoppedRemoteNotificationKey"];

    if (!v51)
    {

      v15 = [v10 snapshotManager];
      v53 = objc_opt_class();
      v19 = [v10 snapshotManager];
      v25 = [v53 messageBindingForDispatcher:v55 message:v7 receiver:v19];
      goto LABEL_12;
    }

    v49 = [v7 name];
  }

  v52 = v49;
  v26 = HMFCreateMessageBinding();

LABEL_13:
  v27 = *MEMORY[0x277D85DE8];

  return v26;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t7_233768 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t7_233768, &__block_literal_global_79_233769);
  }

  v3 = logCategory__hmf_once_v8_233770;

  return v3;
}

void __31__HMDCameraProfile_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v8_233770;
  logCategory__hmf_once_v8_233770 = v1;
}

+ (HMDCameraBulletinBoard)bulletinBoard
{
  if (bulletinBoardOverride)
  {
    v2 = bulletinBoardOverride;
  }

  else
  {
    v2 = +[HMDBulletinBoard sharedBulletinBoard];
  }

  return v2;
}

@end