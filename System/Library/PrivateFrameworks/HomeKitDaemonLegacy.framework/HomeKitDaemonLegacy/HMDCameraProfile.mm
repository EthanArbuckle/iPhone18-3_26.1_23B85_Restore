@interface HMDCameraProfile
+ (HMDCameraBulletinBoard)bulletinBoard;
+ (id)logCategory;
+ (id)messageBindingForDispatcher:(id)dispatcher message:(id)message receiver:(id)receiver;
- (BOOL)_areFaceClassificationNotificationsSuppressedForSignificantEvent:(id)event;
- (BOOL)_shouldNotifyForSignificantEvent:(id)event homePresence:(id)presence;
- (BOOL)isCameraRecordingFeatureSupported;
- (BOOL)isEqual:(id)equal;
- (HMDCameraProfile)initWithAccessory:(id)accessory services:(id)services msgDispatcher:(id)dispatcher workQueue:(id)queue home:(id)home settingsManager:(id)manager;
- (HMDCameraProfile)initWithAccessory:(id)accessory services:(id)services recordingManagementService:(id)service msgDispatcher:(id)dispatcher workQueue:(id)queue home:(id)home settingsManager:(id)manager uniqueIdentifier:(id)self0 clipManager:(id)self1 clipUserNotificationCenter:(id)self2 reachabilityEventManager:(id)self3 networkMonitor:(id)self4 streamSnapshotHandler:(id)self5 snapshotManager:(id)self6 cameraStreamManagers:(id)self7 notificationCenter:(id)self8;
- (HMDHAPAccessory)hapAccessory;
- (NSDictionary)assistantObject;
- (NSString)description;
- (NSString)urlString;
- (_HMCameraUserSettings)currentSettings;
- (id)dumpStateWithPrivacyLevel:(unint64_t)level;
- (unint64_t)hash;
- (void)_createCameraRecordingManager;
- (void)_handleNegotiateStreamRequest:(id)request;
- (void)_handleStreamControlRequest:(id)request;
- (void)_postNotificationForUpdatedSignificantEvent:(id)event allClipSignificantEvents:(id)events homePresence:(id)presence;
- (void)_postNotificationForUpdatedSignificantEvent:(id)event homePresence:(id)presence;
- (void)_setControlSupport;
- (void)_setUpBulletinNotificationManagerObserver;
- (void)cameraSettingProactiveReaderDidCompleteRead:(id)read;
- (void)clipManager:(id)manager didDeleteClipWithUUID:(id)d;
- (void)clipManager:(id)manager didUpdateSignificantEvent:(id)event withHomePresence:(id)presence;
- (void)clipManagerDidDisableCloudStorage:(id)storage;
- (void)clipManagerDidEncounterDisabledCloudStorage:(id)storage;
- (void)clipManagerDidStart:(id)start;
- (void)clipManagerDidStartUpCloudZone:(id)zone;
- (void)clipManagerDidStop:(id)stop;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)handleCameraProfileSettingsDidChangeNotification:(id)notification;
- (void)handleResidentsChangedNotification:(id)notification;
- (void)networkMonitorIsReachable:(id)reachable;
- (void)networkMonitorIsUnreachable:(id)unreachable;
- (void)registerForMessages;
- (void)removeCloudData;
- (void)setUp;
- (void)tearDownWithReplacementCameraProfile:(id)profile;
- (void)timerDidFire:(id)fire;
- (void)unconfigure;
@end

@implementation HMDCameraProfile

- (NSDictionary)assistantObject
{
  v39 = *MEMORY[0x277D85DE8];
  accessory = [(HMDAccessoryProfile *)self accessory];
  name = [accessory name];
  home = [accessory home];
  v6 = home;
  if (home && ([home name], v7 = objc_claimAutoreleasedReturnValue(), v7, v7) && name)
  {
    v8 = objc_alloc(MEMORY[0x277CBEB38]);
    v30[0] = *MEMORY[0x277D48170];
    v9 = [(HMDCameraProfile *)self urlString:@"objectType"];
    v10 = *MEMORY[0x277D482E0];
    v30[1] = v9;
    v30[2] = v10;
    v29[2] = @"objectServiceType";
    v29[3] = @"objectHome";
    name2 = [v6 name];
    v30[3] = name2;
    v29[4] = @"objectHomeIdentifier";
    urlString = [v6 urlString];
    v30[4] = urlString;
    v30[5] = self;
    v29[5] = @"objectReference";
    v29[6] = @"objectName";
    v30[6] = name;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:7];
    v14 = [v8 initWithDictionary:v13];

    name3 = [accessory name];
    [v14 setObject:name3 forKey:@"objectAccessory"];

    urlString2 = [accessory urlString];
    [v14 setObject:urlString2 forKey:@"objectAccessoryIdentifier"];

    room = [accessory room];
    name4 = [room name];
    if (name4)
    {
      name5 = [v6 name];
      v20 = [name4 isEqualToString:name5];

      if ((v20 & 1) == 0)
      {
        [v14 setObject:name4 forKey:@"objectRoom"];
        urlString3 = [room urlString];
        [v14 setObject:urlString3 forKey:@"objectRoomIdentifier"];
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
        name6 = [v6 name];
      }

      else
      {
        name6 = 0;
      }

      *buf = 138544130;
      v32 = v25;
      v33 = 2112;
      v34 = v6;
      v35 = 2112;
      v36 = name6;
      v37 = 2112;
      v38 = name;
      _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_DEFAULT, "%{public}@Skipping because one of the properties of service is nil: service.accessory.home %@  service.accessory.home.name %@  service.name %@", buf, 0x2Au);
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
  services = [(HMDAccessoryProfile *)self services];
  v5 = [v3 arrayWithCapacity:{objc_msgSend(services, "count")}];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  services2 = [(HMDAccessoryProfile *)self services];
  v7 = [services2 countByEnumeratingWithState:&v19 objects:v23 count:16];
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
          objc_enumerationMutation(services2);
        }

        v11 = MEMORY[0x277CCACA8];
        instanceID = [*(*(&v19 + 1) + 8 * i) instanceID];
        v13 = [v11 stringWithFormat:@"%@", instanceID];
        [v5 addObject:v13];
      }

      v8 = [services2 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v8);
  }

  v14 = *MEMORY[0x277CCF2A8];
  uniqueIdentifier = [(HMDAccessoryProfile *)self uniqueIdentifier];
  v16 = hm_assistantIdentifierWithSalts();

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

- (HMDHAPAccessory)hapAccessory
{
  WeakRetained = objc_loadWeakRetained(&self->_hapAccessory);

  return WeakRetained;
}

- (void)timerDidFire:(id)fire
{
  v16 = *MEMORY[0x277D85DE8];
  fireCopy = fire;
  workQueue = [(HMDAccessoryProfile *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  recordingEventsCleanupTimer = [(HMDCameraProfile *)self recordingEventsCleanupTimer];

  if (recordingEventsCleanupTimer == fireCopy)
  {
    v7 = objc_autoreleasePoolPush();
    selfCopy = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v14 = 138543362;
      v15 = v10;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Performing recording events cleanup due to timer firing", &v14, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
    clipManager = [(HMDCameraProfile *)selfCopy clipManager];
    [clipManager cleanUpClips];

    reachabilityEventManager = [(HMDCameraProfile *)selfCopy reachabilityEventManager];
    [reachabilityEventManager cleanUpEvents];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)networkMonitorIsUnreachable:(id)unreachable
{
  unreachableCopy = unreachable;
  workQueue = [(HMDAccessoryProfile *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__HMDCameraProfile_networkMonitorIsUnreachable___block_invoke;
  v7[3] = &unk_2797359B0;
  v7[4] = self;
  v8 = unreachableCopy;
  v6 = unreachableCopy;
  dispatch_async(workQueue, v7);
}

void __48__HMDCameraProfile_networkMonitorIsUnreachable___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) reachabilityEventManager];
  [v2 networkMonitorIsUnreachable:*(a1 + 40)];
}

- (void)networkMonitorIsReachable:(id)reachable
{
  reachableCopy = reachable;
  workQueue = [(HMDAccessoryProfile *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __46__HMDCameraProfile_networkMonitorIsReachable___block_invoke;
  v7[3] = &unk_2797359B0;
  v7[4] = self;
  v8 = reachableCopy;
  v6 = reachableCopy;
  dispatch_async(workQueue, v7);
}

void __46__HMDCameraProfile_networkMonitorIsReachable___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) reachabilityEventManager];
  [v2 networkMonitorIsReachable:*(a1 + 40)];
}

- (void)clipManagerDidEncounterDisabledCloudStorage:(id)storage
{
  workQueue = [(HMDAccessoryProfile *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  cameraSettingsManager = [(HMDCameraProfile *)self cameraSettingsManager];
  [cameraSettingsManager synchronizeCloudStorageWithRecordingAccessModes];
}

- (void)clipManagerDidDisableCloudStorage:(id)storage
{
  workQueue = [(HMDAccessoryProfile *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  cameraSettingsManager = [(HMDCameraProfile *)self cameraSettingsManager];
  [cameraSettingsManager disableRecordingAccessModes];
}

- (void)clipManagerDidStop:(id)stop
{
  stopCopy = stop;
  workQueue = [(HMDAccessoryProfile *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  cameraRecordingManager = [(HMDCameraProfile *)self cameraRecordingManager];
  [cameraRecordingManager clipManagerDidStop:stopCopy];

  reachabilityEventManager = [(HMDCameraProfile *)self reachabilityEventManager];
  [reachabilityEventManager clipManagerDidStop:stopCopy];

  [(HMDCameraProfile *)self setRecordingEventsCleanupTimer:0];
  clipUserNotificationCenter = [(HMDCameraProfile *)self clipUserNotificationCenter];
  [clipUserNotificationCenter removeEventNotificationsForCameraProfile:self];
}

- (void)clipManagerDidStartUpCloudZone:(id)zone
{
  zoneCopy = zone;
  workQueue = [(HMDAccessoryProfile *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  cameraRecordingManager = [(HMDCameraProfile *)self cameraRecordingManager];
  [cameraRecordingManager clipManagerDidStartUpCloudZone:zoneCopy];
}

- (void)clipManagerDidStart:(id)start
{
  startCopy = start;
  workQueue = [(HMDAccessoryProfile *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  reachabilityEventManager = [(HMDCameraProfile *)self reachabilityEventManager];
  [reachabilityEventManager clipManagerDidStart:startCopy];

  recordingEventsCleanupTimerFactory = [(HMDCameraProfile *)self recordingEventsCleanupTimerFactory];
  v8 = recordingEventsCleanupTimerFactory[2](recordingEventsCleanupTimerFactory, 4, 86400.0);
  [(HMDCameraProfile *)self setRecordingEventsCleanupTimer:v8];

  recordingEventsCleanupTimer = [(HMDCameraProfile *)self recordingEventsCleanupTimer];
  [recordingEventsCleanupTimer setDelegate:self];

  workQueue2 = [(HMDAccessoryProfile *)self workQueue];
  recordingEventsCleanupTimer2 = [(HMDCameraProfile *)self recordingEventsCleanupTimer];
  [recordingEventsCleanupTimer2 setDelegateQueue:workQueue2];

  recordingEventsCleanupTimer3 = [(HMDCameraProfile *)self recordingEventsCleanupTimer];
  [recordingEventsCleanupTimer3 resume];
}

- (void)clipManager:(id)manager didDeleteClipWithUUID:(id)d
{
  dCopy = d;
  workQueue = [(HMDAccessoryProfile *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  clipUserNotificationCenter = [(HMDCameraProfile *)self clipUserNotificationCenter];
  [clipUserNotificationCenter removeEventNotificationForClipWithUUID:dCopy];
}

- (void)clipManager:(id)manager didUpdateSignificantEvent:(id)event withHomePresence:(id)presence
{
  presenceCopy = presence;
  eventCopy = event;
  workQueue = [(HMDAccessoryProfile *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  hapAccessory = [(HMDCameraProfile *)self hapAccessory];
  doorbellChimeController = [hapAccessory doorbellChimeController];
  [doorbellChimeController handleUpdatedPersonIdentificationInformation];

  [(HMDCameraProfile *)self _postNotificationForUpdatedSignificantEvent:eventCopy homePresence:presenceCopy];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = HMDCameraProfile;
  [(HMDAccessoryProfile *)&v9 encodeWithCoder:coderCopy];
  snapshotManager = [(HMDCameraProfile *)self snapshotManager];
  encodedMostRecentSnapshot = [snapshotManager encodedMostRecentSnapshot];

  if (encodedMostRecentSnapshot)
  {
    [coderCopy encodeObject:encodedMostRecentSnapshot forKey:*MEMORY[0x277CCF508]];
  }

  cameraSettingsManager = [(HMDCameraProfile *)self cameraSettingsManager];
  currentSettings = [cameraSettingsManager currentSettings];
  [coderCopy encodeObject:currentSettings forKey:*MEMORY[0x277CCF510]];
}

- (void)handleResidentsChangedNotification:(id)notification
{
  workQueue = [(HMDAccessoryProfile *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__HMDCameraProfile_handleResidentsChangedNotification___block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(workQueue, block);
}

- (void)handleCameraProfileSettingsDidChangeNotification:(id)notification
{
  notificationCopy = notification;
  workQueue = [(HMDAccessoryProfile *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  userInfo = [notificationCopy userInfo];

  v7 = [userInfo objectForKeyedSubscript:@"HMDCameraProfileSettingsNotificationKey"];

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
  cameraSettingsManager = [(HMDCameraProfile *)self cameraSettingsManager];
  currentSettings = [cameraSettingsManager currentSettings];

  return currentSettings;
}

- (unint64_t)hash
{
  uniqueIdentifier = [(HMDAccessoryProfile *)self uniqueIdentifier];
  v3 = [uniqueIdentifier hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  if (v6)
  {
    uniqueIdentifier = [(HMDAccessoryProfile *)self uniqueIdentifier];
    uniqueIdentifier2 = [v6 uniqueIdentifier];
    if ([uniqueIdentifier isEqual:uniqueIdentifier2])
    {
      cameraStreamManagers = [(HMDCameraProfile *)self cameraStreamManagers];
      cameraStreamManagers2 = [v6 cameraStreamManagers];
      if ([cameraStreamManagers isEqualToSet:cameraStreamManagers2])
      {
        recordingManagementService = [(HMDCameraProfile *)self recordingManagementService];
        recordingManagementService2 = [v6 recordingManagementService];
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

- (void)cameraSettingProactiveReaderDidCompleteRead:(id)read
{
  readCopy = read;
  workQueue = [(HMDAccessoryProfile *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  settingProactiveReaders = [(HMDCameraProfile *)self settingProactiveReaders];
  [settingProactiveReaders removeObject:readCopy];
}

- (void)_handleStreamControlRequest:(id)request
{
  v63 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  workQueue = [(HMDAccessoryProfile *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    name = [requestCopy name];
    messagePayload = [requestCopy messagePayload];
    *buf = 138543874;
    v58 = v9;
    v59 = 2112;
    v60 = name;
    v61 = 2112;
    v62 = messagePayload;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Handling %@ message with payload: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v6);
  v12 = [requestCopy stringForKey:@"kCameraSessionID"];
  if (v12)
  {
    settingProactiveReaders = [(HMDCameraProfile *)selfCopy settingProactiveReaders];
    v14 = [settingProactiveReaders copy];

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
            [v20 handleMessage:requestCopy];
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
    v44 = requestCopy;

    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v46 = selfCopy;
    obj = [(HMDCameraProfile *)selfCopy cameraStreamManagers];
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
            streamSessionID = [v25 streamSessionID];
            *buf = 138543874;
            v58 = v29;
            v59 = 2112;
            v60 = streamSessionID;
            v61 = 2112;
            v62 = v12;
            _os_log_impl(&dword_2531F8000, v28, OS_LOG_TYPE_INFO, "%{public}@Checking if stream message handler's session ID %@ matches with given %@", buf, 0x20u);
          }

          objc_autoreleasePoolPop(v26);
          streamSessionID2 = [v25 streamSessionID];
          v32 = [streamSessionID2 isEqual:v12];

          if (v32)
          {
            requestCopy = v44;
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
      _os_log_impl(&dword_2531F8000, v35, OS_LOG_TYPE_ERROR, "%{public}@Did not find the stream with Session ID %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v33);
    v37 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
    requestCopy = v44;
    [v44 respondWithError:v37];
    v15 = v43;
LABEL_30:
  }

  else
  {
    v38 = objc_autoreleasePoolPush();
    v39 = selfCopy;
    v40 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      v41 = HMFGetLogIdentifier();
      *buf = 138543362;
      v58 = v41;
      _os_log_impl(&dword_2531F8000, v40, OS_LOG_TYPE_ERROR, "%{public}@Stream session ID is not present in start request", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v38);
    v15 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
    [requestCopy respondWithError:v15];
  }

  v42 = *MEMORY[0x277D85DE8];
}

- (void)_handleNegotiateStreamRequest:(id)request
{
  v75 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  workQueue = [(HMDAccessoryProfile *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = [[HMDCameraMetricsMilestone alloc] initWithKey:@"ReceivedNegotiationRequest" timestamp:+[(HMDCameraSessionID *)HMDCameraStreamSessionID]];
  v7 = [requestCopy stringForKey:@"kCameraSessionID"];
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  v11 = v10;
  if (v7)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      shortDescription = [requestCopy shortDescription];
      *buf = 138543874;
      v70 = v12;
      v71 = 2112;
      v72 = v7;
      v73 = 2114;
      v74 = shortDescription;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@[%@] Handling negotiate stream request message: %{public}@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v8);
    v68 = objc_opt_class();
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v68 count:1];
    v15 = [requestCopy unarchivedObjectForKey:@"kCameraSessionPreference" ofClasses:v14];
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

    if ([requestCopy isEntitledForSPIAccess] && objc_msgSend(v19, "shouldTakeOwnershipOfExistingStream"))
    {
      v63 = 0u;
      v64 = 0u;
      v61 = 0u;
      v62 = 0u;
      cameraStreamManagers = [(HMDCameraProfile *)selfCopy cameraStreamManagers];
      v21 = [cameraStreamManagers countByEnumeratingWithState:&v61 objects:v67 count:16];
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
              objc_enumerationMutation(cameraStreamManagers);
            }

            v25 = *(*(&v61 + 1) + 8 * i);
            if ([v25 hasStreamSessionShowingOnCurrentDevice])
            {
              [v25 takeOwnershipOfStreamUsingMessage:requestCopy];
              goto LABEL_45;
            }
          }

          v22 = [cameraStreamManagers countByEnumeratingWithState:&v61 objects:v67 count:16];
          if (v22)
          {
            continue;
          }

          break;
        }
      }
    }

    v52 = v7;
    cameraStreamManagers = [(HMDCameraProfile *)selfCopy hapAccessory];
    if ([cameraStreamManagers isReachable])
    {
      v55 = 0uLL;
      v56 = 0uLL;
      v53 = 0uLL;
      v54 = 0uLL;
      cameraStreamManagers2 = [(HMDCameraProfile *)selfCopy cameraStreamManagers];
      v27 = [cameraStreamManagers2 countByEnumeratingWithState:&v53 objects:v65 count:16];
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
              objc_enumerationMutation(cameraStreamManagers2);
            }

            [*(*(&v53 + 1) + 8 * j) setNegotiationMilestone:v6];
          }

          v28 = [cameraStreamManagers2 countByEnumeratingWithState:&v53 objects:v65 count:16];
        }

        while (v28);
      }

      v31 = [HMDCameraSettingProactiveReader alloc];
      workQueue2 = [(HMDAccessoryProfile *)selfCopy workQueue];
      cameraStreamManagers3 = [(HMDCameraProfile *)selfCopy cameraStreamManagers];
      logIdentifier = [(HMDAccessoryProfile *)selfCopy logIdentifier];
      v7 = v52;
      cameraStreamManagers4 = [(HMDCameraSettingProactiveReader *)v31 initWithWorkQueue:workQueue2 sessionID:v52 accessory:cameraStreamManagers message:requestCopy streamControlMessageHandlers:cameraStreamManagers3 streamPreferences:v19 logIdentifier:logIdentifier];

      settingProactiveReaders = [(HMDCameraProfile *)selfCopy settingProactiveReaders];
      [settingProactiveReaders addObject:cameraStreamManagers4];

      [(HMDCameraSettingProactiveReader *)cameraStreamManagers4 setDelegate:selfCopy];
      [(HMDCameraSettingProactiveReader *)cameraStreamManagers4 readSetting];
    }

    else
    {
      v59 = 0uLL;
      v60 = 0uLL;
      v57 = 0uLL;
      v58 = 0uLL;
      cameraStreamManagers4 = [(HMDCameraProfile *)selfCopy cameraStreamManagers];
      v37 = [(HMDCameraSettingProactiveReader *)cameraStreamManagers4 countByEnumeratingWithState:&v57 objects:v66 count:16];
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
              objc_enumerationMutation(cameraStreamManagers4);
            }

            v41 = *(*(&v57 + 1) + 8 * k);
            if (([v41 hasStreamSession] & 1) == 0)
            {
              v46 = objc_autoreleasePoolPush();
              v47 = selfCopy;
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
                _os_log_impl(&dword_2531F8000, v48, OS_LOG_TYPE_INFO, "%{public}@[%@] Accessory is not reachable, routing request to camera streaming service: %@", buf, 0x20u);

                v46 = v51;
              }

              objc_autoreleasePoolPop(v46);
              [v41 setNegotiationMilestone:v6];
              [v41 handleMessage:requestCopy];
              goto LABEL_44;
            }
          }

          v38 = [(HMDCameraSettingProactiveReader *)cameraStreamManagers4 countByEnumeratingWithState:&v57 objects:v66 count:16];
          if (v38)
          {
            continue;
          }

          break;
        }
      }

      v42 = objc_autoreleasePoolPush();
      v43 = selfCopy;
      v44 = HMFGetOSLogHandle();
      v7 = v52;
      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        v45 = HMFGetLogIdentifier();
        *buf = 138543618;
        v70 = v45;
        v71 = 2112;
        v72 = v52;
        _os_log_impl(&dword_2531F8000, v44, OS_LOG_TYPE_ERROR, "%{public}@[%@] Accessory is not reachable and cannot route request to a camera streaming service", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v42);
      cameraStreamManagers4 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:1019];
      [requestCopy respondWithError:cameraStreamManagers4];
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
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_ERROR, "%{public}@Stream session ID is not present in negotiate request", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
    v19 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
    [requestCopy respondWithError:v19];
  }

  v50 = *MEMORY[0x277D85DE8];
}

- (void)_postNotificationForUpdatedSignificantEvent:(id)event allClipSignificantEvents:(id)events homePresence:(id)presence
{
  eventCopy = event;
  presenceCopy = presence;
  eventsCopy = events;
  workQueue = [(HMDAccessoryProfile *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  clipUserNotificationCenter = [(HMDCameraProfile *)self clipUserNotificationCenter];
  v12 = [clipUserNotificationCenter createBulletinForSignificantEvents:eventsCopy cameraProfile:self];

  if (v12)
  {
    bulletinBoard = [objc_opt_class() bulletinBoard];
    v14 = [bulletinBoard hasDoorbellPressNotificationToUpdateWithSignificantEventBulletin:v12];

    if (!v14)
    {
      goto LABEL_11;
    }

    bulletinBoard2 = [objc_opt_class() bulletinBoard];
    [bulletinBoard2 updateDoorbellPressNotificationsWithSignificantEventBulletin:v12];

    significantEvents = [v12 significantEvents];
    v17 = [significantEvents na_any:&__block_literal_global_110_156650];

    if (v17)
    {
LABEL_11:
      if ([(HMDCameraProfile *)self _shouldNotifyForSignificantEvent:eventCopy homePresence:presenceCopy])
      {
        clipUserNotificationCenter2 = [(HMDCameraProfile *)self clipUserNotificationCenter];
        [clipUserNotificationCenter2 postNotificationForBulletin:v12 significantEvent:eventCopy];
      }
    }
  }
}

BOOL __102__HMDCameraProfile__postNotificationForUpdatedSignificantEvent_allClipSignificantEvents_homePresence___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 reason] != 1 && objc_msgSend(v2, "reason") != 2;

  return v3;
}

- (void)_postNotificationForUpdatedSignificantEvent:(id)event homePresence:(id)presence
{
  v22 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  presenceCopy = presence;
  clipManager = [(HMDCameraProfile *)self clipManager];
  clipUUID = [eventCopy clipUUID];
  v10 = [clipManager significantEventsForClipWithUUID:clipUUID];

  if (![v10 count])
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      clipUUID2 = [eventCopy clipUUID];
      v18 = 138543618;
      v19 = v14;
      v20 = 2112;
      v21 = clipUUID2;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_ERROR, "%{public}@Could not find any significant events for clip with UUID %@", &v18, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    v16 = [MEMORY[0x277CBEB98] setWithObject:eventCopy];

    v10 = v16;
  }

  [(HMDCameraProfile *)self _postNotificationForUpdatedSignificantEvent:eventCopy allClipSignificantEvents:v10 homePresence:presenceCopy];

  v17 = *MEMORY[0x277D85DE8];
}

- (BOOL)_shouldNotifyForSignificantEvent:(id)event homePresence:(id)presence
{
  v73[1] = *MEMORY[0x277D85DE8];
  eventCopy = event;
  presenceCopy = presence;
  workQueue = [(HMDAccessoryProfile *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  clipUserNotificationCenter = [(HMDCameraProfile *)self clipUserNotificationCenter];

  if (!clipUserNotificationCenter)
  {
LABEL_9:
    LOBYTE(v28) = 0;
    goto LABEL_27;
  }

  currentSettings = [(HMDCameraProfile *)self currentSettings];
  notificationSettings = [currentSettings notificationSettings];
  isSmartBulletinBoardNotificationEnabled = [notificationSettings isSmartBulletinBoardNotificationEnabled];

  if ((isSmartBulletinBoardNotificationEnabled & 1) == 0)
  {
    v23 = objc_autoreleasePoolPush();
    selfCopy = self;
    v25 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      v26 = HMFGetLogIdentifier();
      uniqueIdentifier = [eventCopy uniqueIdentifier];
      *buf = 138543618;
      v67 = v26;
      v68 = 2112;
      v69 = uniqueIdentifier;
      _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_DEBUG, "%{public}@Not notifying for significant event %@ because smart notification bulletin is disabled", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v23);
    goto LABEL_9;
  }

  currentSettings2 = [(HMDCameraProfile *)self currentSettings];
  notificationSettings2 = [currentSettings2 notificationSettings];
  smartBulletinBoardNotificationCondition = [notificationSettings2 smartBulletinBoardNotificationCondition];

  if (smartBulletinBoardNotificationCondition)
  {
    hapAccessory = [(HMDCameraProfile *)self hapAccessory];
    home = [hapAccessory home];

    v63 = home;
    currentUser = [home currentUser];
    predicateUtilities = [(HMDCameraProfile *)self predicateUtilities];
    v20 = eventCopy;
    v21 = smartBulletinBoardNotificationCondition;
    v65 = presenceCopy;
    v62 = currentUser;
    v22 = predicateUtilities;
    if ([v20 reason] == 6)
    {
      [v22 setCameraSignificantEvent:31];
    }

    else
    {
      v34 = MEMORY[0x277CBEB98];
      v35 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v20, "reason")}];
      v36 = [v34 setWithObject:v35];
      [v22 setCameraSignificantEvent:HMCameraSignificantEventTypesFromReasons()];
    }

    if ([v20 reason] == 2)
    {
      faceClassification = [v20 faceClassification];
      person = [faceClassification person];
      name = [person name];

      if (name)
      {
        v40 = 4;
      }

      else
      {
        faceClassification2 = [v20 faceClassification];

        if (faceClassification2)
        {
          v40 = 2;
        }

        else
        {
          v40 = 1;
        }
      }
    }

    else
    {
      v40 = 7;
    }

    [v22 setPersonFamiliarityOptions:v40];
    v61 = v21;
    v42 = [v22 rewritePredicate:v21 currentCharacteristicInPredicate:0 characteristicsToRead:0 homePresence:v65];
    [v42 allowEvaluation];
    v72 = @"THIS_OBJECT";
    v73[0] = v22;
    v43 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v73 forKeys:&v72 count:1];
    v64 = [v42 evaluateWithObject:v22 substitutionVariables:v43];

    v44 = objc_autoreleasePoolPush();
    v45 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
    {
      HMFGetLogIdentifier();
      v46 = v60 = smartBulletinBoardNotificationCondition;
      HMFBooleanToString();
      v47 = eventCopy;
      v49 = v48 = presenceCopy;
      *buf = 138543874;
      v67 = v46;
      v68 = 2112;
      v69 = v42;
      v70 = 2112;
      v71 = v49;
      _os_log_impl(&dword_2531F8000, v45, OS_LOG_TYPE_INFO, "%{public}@Evaluated predicate: %@ with result: %@", buf, 0x20u);

      presenceCopy = v48;
      eventCopy = v47;

      smartBulletinBoardNotificationCondition = v60;
    }

    objc_autoreleasePoolPop(v44);
    v28 = ![(HMDCameraProfile *)self _areFaceClassificationNotificationsSuppressedForSignificantEvent:v20]& v64;
    v50 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v52 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
    {
      HMFGetLogIdentifier();
      v54 = v53 = presenceCopy;
      [v20 uniqueIdentifier];
      v56 = v55 = smartBulletinBoardNotificationCondition;
      v57 = HMFBooleanToString();
      *buf = 138543874;
      v67 = v54;
      v68 = 2112;
      v69 = v56;
      v70 = 2112;
      v71 = v57;
      _os_log_impl(&dword_2531F8000, v52, OS_LOG_TYPE_INFO, "%{public}@Determined should add notification for significant event %@: %@", buf, 0x20u);

      smartBulletinBoardNotificationCondition = v55;
      presenceCopy = v53;
    }

    objc_autoreleasePoolPop(v50);
  }

  else
  {
    v29 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v31 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      v32 = HMFGetLogIdentifier();
      uniqueIdentifier2 = [eventCopy uniqueIdentifier];
      *buf = 138543618;
      v67 = v32;
      v68 = 2112;
      v69 = uniqueIdentifier2;
      _os_log_impl(&dword_2531F8000, v31, OS_LOG_TYPE_INFO, "%{public}@Notifying for significant event %@ because smart notification bulletin condition is nil", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v29);
    LOBYTE(v28) = 1;
  }

LABEL_27:
  v58 = *MEMORY[0x277D85DE8];
  return v28;
}

- (BOOL)_areFaceClassificationNotificationsSuppressedForSignificantEvent:(id)event
{
  v27 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  faceClassification = [eventCopy faceClassification];
  person = [faceClassification person];

  accessory = [(HMDAccessoryProfile *)self accessory];
  home = [accessory home];
  currentUser = [home currentUser];
  personSettingsManager = [currentUser personSettingsManager];

  if (!person || !personSettingsManager)
  {
    goto LABEL_6;
  }

  uUID = [person UUID];
  v12 = [personSettingsManager areClassificationNotificationsEnabledForPersonUUID:uUID];

  v13 = objc_autoreleasePoolPush();
  selfCopy = self;
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
    v26 = person;
    _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@Classification notifications enabled is %@ for person: %@", &v21, 0x20u);
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
  workQueue = [(HMDAccessoryProfile *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v4 = objc_autoreleasePoolPush();
  selfCopy = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    *buf = 138543362;
    v75 = v7;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Registering for messages", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  hapAccessory = [(HMDCameraProfile *)selfCopy hapAccessory];
  v9 = hapAccessory;
  if (hapAccessory)
  {
    home = [hapAccessory home];
    if (!home)
    {
      v45 = objc_autoreleasePoolPush();
      v46 = selfCopy;
      v47 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
      {
        v48 = HMFGetLogIdentifier();
        *buf = 138543362;
        v75 = v48;
        _os_log_impl(&dword_2531F8000, v47, OS_LOG_TYPE_DEFAULT, "%{public}@Not registering for messages because home reference is nil", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v45);
      goto LABEL_23;
    }

    snapshotManager = [(HMDCameraProfile *)selfCopy snapshotManager];
    [snapshotManager registerForMessages];

    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    cameraStreamManagers = [(HMDCameraProfile *)selfCopy cameraStreamManagers];
    v13 = [cameraStreamManagers countByEnumeratingWithState:&v65 objects:v73 count:16];
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
            objc_enumerationMutation(cameraStreamManagers);
          }

          v17 = *(*(&v65 + 1) + 8 * i);
          msgDispatcher = [(HMDAccessoryProfile *)selfCopy msgDispatcher];
          [v17 configureWithMessageDispatcher:msgDispatcher];
        }

        v14 = [cameraStreamManagers countByEnumeratingWithState:&v65 objects:v73 count:16];
      }

      while (v14);
    }

    notificationCenter = [(HMDCameraProfile *)selfCopy notificationCenter];
    [notificationCenter addObserver:selfCopy selector:sel_handleCameraProfileSettingsDidChangeNotification_ name:@"HMDCameraProfileSettingsDidChangeNotification" object:v9];

    notificationCenter2 = [(HMDCameraProfile *)selfCopy notificationCenter];
    residentDeviceManager = [home residentDeviceManager];
    [notificationCenter2 addObserver:selfCopy selector:sel_handleResidentsChangedNotification_ name:@"HMDResidentDeviceManagerAddResidentNotification" object:residentDeviceManager];

    notificationCenter3 = [(HMDCameraProfile *)selfCopy notificationCenter];
    residentDeviceManager2 = [home residentDeviceManager];
    [notificationCenter3 addObserver:selfCopy selector:sel_handleResidentsChangedNotification_ name:@"HMDResidentDeviceManagerUpdateResidentNotification" object:residentDeviceManager2];

    notificationCenter4 = [(HMDCameraProfile *)selfCopy notificationCenter];
    residentDeviceManager3 = [home residentDeviceManager];
    [notificationCenter4 addObserver:selfCopy selector:sel_handleResidentsChangedNotification_ name:@"HMDResidentDeviceManagerRemoveResidentNotification" object:residentDeviceManager3];

    cameraSettingsManager = [(HMDCameraProfile *)selfCopy cameraSettingsManager];
    [cameraSettingsManager start];

    [(HMDCameraProfile *)selfCopy _createCameraRecordingManager];
    [(HMDCameraProfile *)selfCopy _setUpBulletinNotificationManagerObserver];
    currentSettings = [(HMDCameraProfile *)selfCopy currentSettings];
    __updateClipManagerWriteAccess(selfCopy, currentSettings);

    [v9 configureBulletinNotification];
    accessory = [(HMDAccessoryProfile *)selfCopy accessory];
    home2 = [accessory home];
    v30 = [HMDUserMessagePolicy userMessagePolicyWithHome:home2 userPrivilege:0 remoteAccessRequired:1 requiresCameraStreamingAccess:1];

    v31 = [HMDXPCMessagePolicy policyWithEntitlements:1];
    v32 = [HMDXPCMessagePolicy policyWithEntitlements:5];
    v72[0] = v30;
    v72[1] = v31;
    v33 = [MEMORY[0x277CBEA60] arrayWithObjects:v72 count:2];
    msgDispatcher2 = [(HMDAccessoryProfile *)selfCopy msgDispatcher];
    [msgDispatcher2 registerForMessage:*MEMORY[0x277CCF5F0] receiver:selfCopy policies:v33 selector:?];

    msgDispatcher3 = [(HMDAccessoryProfile *)selfCopy msgDispatcher];
    [msgDispatcher3 registerForMessage:*MEMORY[0x277CCF608] receiver:selfCopy policies:v33 selector:sel__handleStreamControlRequest_];

    msgDispatcher4 = [(HMDAccessoryProfile *)selfCopy msgDispatcher];
    [msgDispatcher4 registerForMessage:*MEMORY[0x277CCF5F8] receiver:selfCopy policies:v33 selector:sel__handleStreamControlRequest_];

    v71[0] = v30;
    v71[1] = v32;
    v37 = [MEMORY[0x277CBEA60] arrayWithObjects:v71 count:2];
    msgDispatcher5 = [(HMDAccessoryProfile *)selfCopy msgDispatcher];
    [msgDispatcher5 registerForMessage:*MEMORY[0x277CCF600] receiver:selfCopy policies:v37 selector:sel__handleStreamControlRequest_];

    msgDispatcher6 = [(HMDAccessoryProfile *)selfCopy msgDispatcher];
    [msgDispatcher6 registerForMessage:*MEMORY[0x277CCF618] receiver:selfCopy policies:v37 selector:sel__handleStreamControlRequest_];

    v40 = +[HMDDeviceCapabilities deviceCapabilities];
    v64 = v32;
    if ([v40 isResidentCapable])
    {
    }

    else
    {
      v49 = isiOSDevice();

      if (!v49)
      {
LABEL_22:
        v58 = +[HMDRemoteMessagePolicy defaultSecurePolicy];
        v69[0] = v30;
        v69[1] = v58;
        v59 = [MEMORY[0x277CBEA60] arrayWithObjects:v69 count:2];
        msgDispatcher7 = [(HMDAccessoryProfile *)selfCopy msgDispatcher];
        [msgDispatcher7 registerForMessage:@"kStreamRemoteConnectionSetupNotificationKey" receiver:selfCopy policies:v59 selector:sel__handleStreamControlRequest_];

        msgDispatcher8 = [(HMDAccessoryProfile *)selfCopy msgDispatcher];
        [msgDispatcher8 registerForMessage:@"kStreamStoppedRemoteNotificationKey" receiver:selfCopy policies:v59 selector:sel__handleStreamControlRequest_];

LABEL_23:
        goto LABEL_24;
      }
    }

    v50 = +[(HMDRemoteMessagePolicy *)HMDMutableRemoteMessagePolicy];
    [v50 setRoles:{objc_msgSend(v50, "roles") | 6}];
    v63 = home;
    v51 = v31;
    v52 = [v50 copy];
    v70[0] = v30;
    v70[1] = v52;
    v53 = [MEMORY[0x277CBEA60] arrayWithObjects:v70 count:2];
    msgDispatcher9 = [(HMDAccessoryProfile *)selfCopy msgDispatcher];
    [msgDispatcher9 registerForMessage:@"kNegotitateRemoteStreamRequestKey" receiver:selfCopy policies:v53 selector:sel__handleNegotiateStreamRequest_];

    msgDispatcher10 = [(HMDAccessoryProfile *)selfCopy msgDispatcher];
    [msgDispatcher10 registerForMessage:@"kStartRemoteStreamRequestKey" receiver:selfCopy policies:v53 selector:sel__handleStreamControlRequest_];

    msgDispatcher11 = [(HMDAccessoryProfile *)selfCopy msgDispatcher];
    [msgDispatcher11 registerForMessage:@"kStopRemoteStreamRequestKey" receiver:selfCopy policies:v53 selector:sel__handleStreamControlRequest_];

    msgDispatcher12 = [(HMDAccessoryProfile *)selfCopy msgDispatcher];
    [msgDispatcher12 registerForMessage:@"kReconfigureRemoteStreamRequestKey" receiver:selfCopy policies:v53 selector:sel__handleStreamControlRequest_];

    v31 = v51;
    home = v63;

    goto LABEL_22;
  }

  v41 = objc_autoreleasePoolPush();
  v42 = selfCopy;
  v43 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
  {
    v44 = HMFGetLogIdentifier();
    *buf = 138543362;
    v75 = v44;
    _os_log_impl(&dword_2531F8000, v43, OS_LOG_TYPE_DEFAULT, "%{public}@Not registering for messages because accessory reference is nil", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v41);
LABEL_24:

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
        serviceType = [v9 serviceType];
        v11 = [serviceType isEqualToString:v6];

        v12 = &OBJC_IVAR___HMDCameraProfile__microphonePresent;
        if ((v11 & 1) == 0)
        {
          serviceType2 = [v9 serviceType];
          v14 = [serviceType2 isEqualToString:v7];

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

- (id)dumpStateWithPrivacyLevel:(unint64_t)level
{
  v16.receiver = self;
  v16.super_class = HMDCameraProfile;
  v4 = [(HMDAccessoryProfile *)&v16 dumpStateWithPrivacyLevel:level];
  v5 = [v4 mutableCopy];

  workQueue = [(HMDAccessoryProfile *)self workQueue];
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __46__HMDCameraProfile_dumpStateWithPrivacyLevel___block_invoke;
  v13 = &unk_2797359B0;
  v14 = v5;
  selfCopy = self;
  v7 = v5;
  dispatch_sync(workQueue, &v10);

  v8 = [v7 copy];

  return v8;
}

void __46__HMDCameraProfile_dumpStateWithPrivacyLevel___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) clipManager];
  v3 = [v2 stateDump];
  [*(a1 + 32) setObject:v3 forKeyedSubscript:@"Clip Manager"];

  v4 = [*(a1 + 40) cameraStreamManagers];
  v5 = [v4 na_map:&__block_literal_global_89];
  v6 = [v5 allObjects];
  [*(a1 + 32) setObject:v6 forKeyedSubscript:@"Stream Managers"];

  v8 = [*(a1 + 40) cameraRecordingManager];
  v7 = [v8 stateDump];
  [*(a1 + 32) setObject:v7 forKeyedSubscript:@"Recording Manager"];
}

- (void)dealloc
{
  msgDispatcher = [(HMDAccessoryProfile *)self msgDispatcher];
  [msgDispatcher deregisterReceiver:self];

  v4.receiver = self;
  v4.super_class = HMDCameraProfile;
  [(HMDCameraProfile *)&v4 dealloc];
}

- (void)unconfigure
{
  v11[1] = *MEMORY[0x277D85DE8];
  hapAccessory = [(HMDCameraProfile *)self hapAccessory];
  home = [hapAccessory home];
  v5 = home;
  if (hapAccessory && [home isCurrentDeviceAvailableResident])
  {
    notificationRegistry = [v5 notificationRegistry];
    uuid = [hapAccessory uuid];
    v11[0] = uuid;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
    [notificationRegistry disableReachabilityEventNotificationForAccessoryUUIDs:v8 forUserID:0];
  }

  notificationCenter = [(HMDCameraProfile *)self notificationCenter];
  [notificationCenter postNotificationName:@"HMDCameraProfileUnconfiguredNotification" object:self];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)removeCloudData
{
  v5.receiver = self;
  v5.super_class = HMDCameraProfile;
  [(HMDAccessoryProfile *)&v5 removeCloudData];
  workQueue = [(HMDAccessoryProfile *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__HMDCameraProfile_removeCloudData__block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(workQueue, block);
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
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, "%{public}@Removing all cloud data", &v10, 0xCu);
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
  accessory = [(HMDAccessoryProfile *)self accessory];
  name = [accessory name];
  uniqueIdentifier = [(HMDAccessoryProfile *)self uniqueIdentifier];
  v7 = [v3 stringWithFormat:@"Camera Profile %@, %@", name, uniqueIdentifier];

  return v7;
}

- (void)_setUpBulletinNotificationManagerObserver
{
  workQueue = [(HMDAccessoryProfile *)self workQueue];
  dispatch_assert_queue_V2(workQueue);
}

- (void)_createCameraRecordingManager
{
  v32 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDAccessoryProfile *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  recordingManagementService = [(HMDCameraProfile *)self recordingManagementService];

  if (recordingManagementService)
  {
    accessory = [(HMDAccessoryProfile *)self accessory];
    home = [accessory home];
    isOwnerUser = [home isOwnerUser];

    hapAccessory = [(HMDCameraProfile *)self hapAccessory];
    home2 = [hapAccessory home];
    isCurrentDeviceAvailableResident = [home2 isCurrentDeviceAvailableResident];

    cameraRecordingManager = [(HMDCameraProfile *)self cameraRecordingManager];

    if (isCurrentDeviceAvailableResident && (isOwnerUser & 1) != 0)
    {
      if (!cameraRecordingManager)
      {
        v12 = objc_autoreleasePoolPush();
        selfCopy = self;
        v14 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          v15 = HMFGetLogIdentifier();
          v30 = 138543362;
          v31 = v15;
          _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, "%{public}@Creating camera recording manager", &v30, 0xCu);
        }

        objc_autoreleasePoolPop(v12);
        recordingManagerFactory = [(HMDCameraProfile *)selfCopy recordingManagerFactory];
        recordingManagementService2 = [(HMDCameraProfile *)selfCopy recordingManagementService];
        v18 = (recordingManagerFactory)[2](recordingManagerFactory, selfCopy, recordingManagementService2);
        [(HMDCameraProfile *)selfCopy setCameraRecordingManager:v18];

        cameraRecordingManager2 = [(HMDCameraProfile *)selfCopy cameraRecordingManager];
        [cameraRecordingManager2 start];
      }
    }

    else if (cameraRecordingManager)
    {
      v24 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v26 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        v27 = HMFGetLogIdentifier();
        v30 = 138543362;
        v31 = v27;
        _os_log_impl(&dword_2531F8000, v26, OS_LOG_TYPE_INFO, "%{public}@Destroying camera recording manager", &v30, 0xCu);
      }

      objc_autoreleasePoolPop(v24);
      cameraRecordingManager3 = [(HMDCameraProfile *)selfCopy2 cameraRecordingManager];
      [cameraRecordingManager3 shutDown];

      [(HMDCameraProfile *)selfCopy2 setCameraRecordingManager:0];
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
      v30 = 138543362;
      v31 = v23;
      _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_INFO, "%{public}@Not configuring for recording because there is no recording service", &v30, 0xCu);
    }

    objc_autoreleasePoolPop(v20);
  }

  v29 = *MEMORY[0x277D85DE8];
}

- (void)tearDownWithReplacementCameraProfile:(id)profile
{
  v18 = *MEMORY[0x277D85DE8];
  profileCopy = profile;
  workQueue = [(HMDAccessoryProfile *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  if (-[HMDCameraProfile isCameraRecordingFeatureSupported](self, "isCameraRecordingFeatureSupported") && ([profileCopy isCameraRecordingFeatureSupported] & 1) == 0)
  {
    v6 = objc_autoreleasePoolPush();
    selfCopy = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      recordingManagementService = [(HMDCameraProfile *)selfCopy recordingManagementService];
      v14 = 138543618;
      v15 = v9;
      v16 = 2112;
      v17 = recordingManagementService;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Removing clip data because we have a recording management service %@ and we are transitioning to a replacement camera profile that does not", &v14, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    clipManager = [(HMDCameraProfile *)selfCopy clipManager];
    remove = [clipManager remove];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)setUp
{
  v39 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDAccessoryProfile *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  accessory = [(HMDAccessoryProfile *)self accessory];
  v5 = accessory;
  if (accessory)
  {
    home = [accessory home];
    if (home)
    {
      networkMonitor = [(HMDCameraProfile *)self networkMonitor];
      [networkMonitor setDelegate:self];

      clipManager = [(HMDCameraProfile *)self clipManager];
      [clipManager setDelegate:self];

      clipManager2 = [(HMDCameraProfile *)self clipManager];
      [clipManager2 configure];

      clipUserNotificationCenter = [(HMDCameraProfile *)self clipUserNotificationCenter];
      [clipUserNotificationCenter removeCachedHeroFrameImages];

      v11 = objc_autoreleasePoolPush();
      selfCopy = self;
      v13 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = HMFGetLogIdentifier();
        cameraSettingsManager = [(HMDCameraProfile *)selfCopy cameraSettingsManager];
        zoneName = [cameraSettingsManager zoneName];
        v35 = 138543618;
        v36 = v14;
        v37 = 2112;
        v38 = zoneName;
        _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@Using zone %@ for camera settings", &v35, 0x16u);
      }

      objc_autoreleasePoolPop(v11);
      cameraSettingsManager2 = [(HMDCameraProfile *)selfCopy cameraSettingsManager];
      msgDispatcher = [v5 msgDispatcher];
      administratorHandler = [home administratorHandler];
      v20 = +[HMDDeviceCapabilities deviceCapabilities];
      [cameraSettingsManager2 configureWithMessageDispatcher:msgDispatcher adminMessageDispatcher:administratorHandler deviceIsResidentCapable:{objc_msgSend(v20, "isResidentCapable")}];

      reachabilityEventManager = [(HMDCameraProfile *)selfCopy reachabilityEventManager];
      msgDispatcher2 = [(HMDAccessoryProfile *)selfCopy msgDispatcher];
      currentSettings = [(HMDCameraProfile *)selfCopy currentSettings];
      isCurrentDeviceConfirmedPrimaryResident = [home isCurrentDeviceConfirmedPrimaryResident];
      networkMonitor2 = [(HMDCameraProfile *)selfCopy networkMonitor];
      [reachabilityEventManager configureWithMessageDispatcher:msgDispatcher2 currentSettings:currentSettings isCurrentDeviceConfirmedPrimaryResident:isCurrentDeviceConfirmedPrimaryResident isCurrentDeviceConnectedToNetwork:{objc_msgSend(networkMonitor2, "isReachable")}];
    }

    else
    {
      v30 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v32 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        v33 = HMFGetLogIdentifier();
        v35 = 138543362;
        v36 = v33;
        _os_log_impl(&dword_2531F8000, v32, OS_LOG_TYPE_ERROR, "%{public}@Skipping camera profile setup because home reference is nil", &v35, 0xCu);
      }

      objc_autoreleasePoolPop(v30);
    }
  }

  else
  {
    v26 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v28 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v29 = HMFGetLogIdentifier();
      v35 = 138543362;
      v36 = v29;
      _os_log_impl(&dword_2531F8000, v28, OS_LOG_TYPE_ERROR, "%{public}@Skipping camera profile setup because accessory reference is nil", &v35, 0xCu);
    }

    objc_autoreleasePoolPop(v26);
  }

  v34 = *MEMORY[0x277D85DE8];
}

- (BOOL)isCameraRecordingFeatureSupported
{
  recordingManagementService = [(HMDCameraProfile *)self recordingManagementService];
  v3 = recordingManagementService != 0;

  return v3;
}

- (HMDCameraProfile)initWithAccessory:(id)accessory services:(id)services recordingManagementService:(id)service msgDispatcher:(id)dispatcher workQueue:(id)queue home:(id)home settingsManager:(id)manager uniqueIdentifier:(id)self0 clipManager:(id)self1 clipUserNotificationCenter:(id)self2 reachabilityEventManager:(id)self3 networkMonitor:(id)self4 streamSnapshotHandler:(id)self5 snapshotManager:(id)self6 cameraStreamManagers:(id)self7 notificationCenter:(id)self8
{
  accessoryCopy = accessory;
  servicesCopy = services;
  serviceCopy = service;
  serviceCopy2 = service;
  obj = dispatcher;
  dispatcherCopy = dispatcher;
  queueCopy = queue;
  homeCopy = home;
  managerCopy = manager;
  identifierCopy = identifier;
  clipManagerCopy = clipManager;
  centerCopy = center;
  eventManagerCopy = eventManager;
  monitorCopy = monitor;
  handlerCopy = handler;
  snapshotManagerCopy = snapshotManager;
  managersCopy = managers;
  notificationCenterCopy = notificationCenter;
  if (!accessoryCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_16;
  }

  if (!servicesCopy)
  {
LABEL_16:
    _HMFPreconditionFailure();
    goto LABEL_17;
  }

  if (!dispatcherCopy)
  {
LABEL_17:
    _HMFPreconditionFailure();
    goto LABEL_18;
  }

  if (!queueCopy)
  {
LABEL_18:
    _HMFPreconditionFailure();
    goto LABEL_19;
  }

  v48 = clipManagerCopy;
  if (!homeCopy)
  {
LABEL_19:
    _HMFPreconditionFailure();
    goto LABEL_20;
  }

  if (!identifierCopy)
  {
LABEL_20:
    _HMFPreconditionFailure();
    goto LABEL_21;
  }

  if (!monitorCopy)
  {
LABEL_21:
    _HMFPreconditionFailure();
    goto LABEL_22;
  }

  if (!handlerCopy)
  {
LABEL_22:
    _HMFPreconditionFailure();
    goto LABEL_23;
  }

  if (!snapshotManagerCopy)
  {
LABEL_23:
    _HMFPreconditionFailure();
    goto LABEL_24;
  }

  if (!managersCopy)
  {
LABEL_24:
    _HMFPreconditionFailure();
    goto LABEL_25;
  }

  v30 = notificationCenterCopy;
  if (!notificationCenterCopy)
  {
LABEL_25:
    v44 = _HMFPreconditionFailure();
    return __293__HMDCameraProfile_initWithAccessory_services_recordingManagementService_msgDispatcher_workQueue_home_settingsManager_uniqueIdentifier_clipManager_clipUserNotificationCenter_reachabilityEventManager_networkMonitor_streamSnapshotHandler_snapshotManager_cameraStreamManagers_notificationCenter___block_invoke_2(v44);
  }

  v31 = homeCopy;
  v47 = eventManagerCopy;
  v32 = monitorCopy;
  allObjects = [servicesCopy allObjects];
  v59.receiver = self;
  v59.super_class = HMDCameraProfile;
  v34 = [(HMDAccessoryProfile *)&v59 initWithAccessory:accessoryCopy uniqueIdentifier:identifierCopy services:allObjects workQueue:queueCopy];

  if (v34)
  {
    objc_storeWeak(&v34->_hapAccessory, accessoryCopy);
    v35 = [HMDPredicateUtilities alloc];
    logIdentifier = [(HMDAccessoryProfile *)v34 logIdentifier];
    v37 = [(HMDPredicateUtilities *)v35 initWithHome:homeCopy logIdentifier:logIdentifier];
    predicateUtilities = v34->_predicateUtilities;
    v34->_predicateUtilities = v37;

    v31 = homeCopy;
    objc_storeStrong(&v34->super._msgDispatcher, obj);
    objc_storeStrong(&v34->_recordingManagementService, serviceCopy);
    objc_storeStrong(&v34->_networkMonitor, monitor);
    objc_storeStrong(&v34->_streamSnapshotHandler, handler);
    objc_storeStrong(&v34->_snapshotManager, snapshotManager);
    objc_storeStrong(&v34->_cameraStreamManagers, managers);
    array = [MEMORY[0x277CBEB18] array];
    settingProactiveReaders = v34->_settingProactiveReaders;
    v34->_settingProactiveReaders = array;

    objc_storeStrong(&v34->_cameraSettingsManager, manager);
    objc_storeStrong(&v34->_clipManager, clipManager);
    objc_storeStrong(&v34->_clipUserNotificationCenter, center);
    objc_storeStrong(&v34->_reachabilityEventManager, eventManager);
    objc_storeStrong(&v34->_notificationCenter, notificationCenter);
    [(HMDCameraProfile *)v34 _setControlSupport];
    recordingEventsCleanupTimerFactory = v34->_recordingEventsCleanupTimerFactory;
    v34->_recordingEventsCleanupTimerFactory = &__block_literal_global_156712;

    recordingManagerFactory = v34->_recordingManagerFactory;
    v34->_recordingManagerFactory = &__block_literal_global_64_156713;
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

- (HMDCameraProfile)initWithAccessory:(id)accessory services:(id)services msgDispatcher:(id)dispatcher workQueue:(id)queue home:(id)home settingsManager:(id)manager
{
  v117 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  servicesCopy = services;
  dispatcherCopy = dispatcher;
  queueCopy = queue;
  homeCopy = home;
  managerCopy = manager;
  v89 = accessoryCopy;
  if (!accessoryCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_42;
  }

  if (!servicesCopy)
  {
LABEL_42:
    _HMFPreconditionFailure();
    goto LABEL_43;
  }

  if (!dispatcherCopy)
  {
LABEL_43:
    _HMFPreconditionFailure();
    goto LABEL_44;
  }

  if (!queueCopy)
  {
LABEL_44:
    _HMFPreconditionFailure();
LABEL_45:
    _HMFPreconditionFailure();
  }

  if (!homeCopy)
  {
    goto LABEL_45;
  }

  v83 = queueCopy;
  selfCopy = self;
  v88 = managerCopy;
  v92 = homeCopy;
  v20 = [MEMORY[0x277CBEB58] set];
  v21 = [MEMORY[0x277CBEB58] set];
  v110 = 0u;
  v111 = 0u;
  v112 = 0u;
  v113 = 0u;
  obj = servicesCopy;
  v22 = [obj countByEnumeratingWithState:&v110 objects:v116 count:16];
  v93 = dispatcherCopy;
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
      serviceType = [v28 serviceType];
      v30 = [serviceType isEqualToString:v25];

      if (v30)
      {
        v31 = v20;
      }

      else
      {
        serviceType2 = [v28 serviceType];
        v33 = [serviceType2 isEqualToString:v26];

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

  array = [MEMORY[0x277CBEB18] array];
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
        instanceID = [*(*(&v106 + 1) + 8 * j) instanceID];
        v43 = [v41 stringWithFormat:@"%@", instanceID];
        [array addObject:v43];
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
        instanceID2 = [*(*(&v102 + 1) + 8 * k) instanceID];
        v51 = [v49 stringWithFormat:@"%@", instanceID2];
        [array addObject:v51];
      }

      v46 = [v44 countByEnumeratingWithState:&v102 objects:v114 count:16];
    }

    while (v46);
  }

  v52 = [array sortedArrayUsingSelector:sel_compare_];
  v53 = MEMORY[0x277CCAD78];
  uuid = [v89 uuid];
  v82 = v52;
  v55 = [v53 hm_deriveUUIDFromBaseUUID:uuid withSalts:v52];

  v56 = MEMORY[0x277CCACA8];
  name = [v92 name];
  name2 = [v89 name];
  v91 = [v56 stringWithFormat:@"%@/%@/%@", name, name2, v55];

  v80 = v55;
  if (v94)
  {
    v59 = MEMORY[0x277CD18F0];
    uuid2 = [v94 uuid];
    v61 = [v59 zoneNameForRecordingManagementServiceUUID:uuid2];

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
  allObjects = [v36 allObjects];
  v70 = [(HMDCameraStreamSnapshotHandler *)v68 initWithWorkQueue:v63 services:allObjects logIdentifier:v91];

  v90 = [[HMDCameraSnapshotManager alloc] initWithAccessory:v66 workQueue:v63 streamSnapshotHandler:v70 uniqueIdentifier:v80 msgDispatcher:v62 networkMonitor:v67];
  v96[0] = MEMORY[0x277D85DD0];
  v96[1] = 3221225472;
  v96[2] = __92__HMDCameraProfile_initWithAccessory_services_msgDispatcher_workQueue_home_settingsManager___block_invoke;
  v96[3] = &unk_27972FE00;
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
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v76 = [(HMDCameraProfile *)selfCopy initWithAccessory:v72 services:v44 recordingManagementService:v94 msgDispatcher:v93 workQueue:v73 home:v92 settingsManager:v88 uniqueIdentifier:v71 clipManager:v87 clipUserNotificationCenter:v86 reachabilityEventManager:v81 networkMonitor:v79 streamSnapshotHandler:v84 snapshotManager:v90 cameraStreamManagers:v74 notificationCenter:defaultCenter];

  v77 = *MEMORY[0x277D85DE8];
  return v76;
}

HMDCameraStreamControlMessageHandler *__92__HMDCameraProfile_initWithAccessory_services_msgDispatcher_workQueue_home_settingsManager___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = [[HMDCameraStreamControlMessageHandler alloc] initWithWorkQueue:a1[4] streamSnapshotHandler:a1[5] accessory:a1[6] streamManagementService:v3 profileUniqueIdentifier:a1[7] networkMonitor:a1[8]];

  return v4;
}

+ (id)messageBindingForDispatcher:(id)dispatcher message:(id)message receiver:(id)receiver
{
  v60[2] = *MEMORY[0x277D85DE8];
  dispatcherCopy = dispatcher;
  messageCopy = message;
  receiverCopy = receiver;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = receiverCopy;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;
  accessory = [v10 accessory];
  home = [accessory home];

  v13 = [HMDUserMessagePolicy userMessagePolicyWithHome:home userPrivilege:0 remoteAccessRequired:1 requiresCameraStreamingAccess:1];
  v14 = [HMDXPCMessagePolicy policyWithEntitlements:1];
  v56 = [HMDXPCMessagePolicy policyWithEntitlements:5];
  v60[0] = v13;
  v60[1] = v14;
  snapshotManager = [MEMORY[0x277CBEA60] arrayWithObjects:v60 count:2];
  name = [messageCopy name];
  v17 = [name isEqualToString:*MEMORY[0x277CCF5F0]];

  name2 = [messageCopy name];
  name4 = name2;
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

  v21 = [name2 isEqualToString:*MEMORY[0x277CCF608]];

  name3 = [messageCopy name];
  name4 = name3;
  if (v21)
  {
LABEL_9:
    v20 = &selRef__handleStreamControlRequest_;
    goto LABEL_10;
  }

  v23 = [name3 isEqualToString:*MEMORY[0x277CCF5F8]];

  if (v23)
  {
    name4 = [messageCopy name];
    goto LABEL_9;
  }

  v59[0] = v13;
  v59[1] = v56;
  snapshotManager = [MEMORY[0x277CBEA60] arrayWithObjects:v59 count:2];
  name5 = [messageCopy name];
  v30 = [name5 isEqualToString:*MEMORY[0x277CCF600]];

  name6 = [messageCopy name];
  name4 = name6;
  if (v30)
  {
    goto LABEL_11;
  }

  v32 = [name6 isEqualToString:*MEMORY[0x277CCF618]];

  if (v32)
  {
    name4 = [messageCopy name];
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

  snapshotManager = +[(HMDRemoteMessagePolicy *)HMDMutableRemoteMessagePolicy];
  [snapshotManager setRoles:{objc_msgSend(snapshotManager, "roles") | 6}];
  name4 = [snapshotManager copy];
  v58[0] = v13;
  v58[1] = name4;
  v54 = [MEMORY[0x277CBEA60] arrayWithObjects:v58 count:2];
  name7 = [messageCopy name];
  v36 = [name7 isEqualToString:@"kNegotitateRemoteStreamRequestKey"];

  name8 = [messageCopy name];
  if (v36)
  {
    v38 = &selRef__handleNegotiateStreamRequest_;
LABEL_30:
    v45 = *v38;
    v46 = name8;
    v26 = HMFCreateMessageBinding();

    goto LABEL_13;
  }

  v39 = name8;
  v40 = [name8 isEqualToString:@"kStartRemoteStreamRequestKey"];

  name8 = [messageCopy name];
  if (v40 & 1) != 0 || (v41 = name8, v42 = [name8 isEqualToString:@"kStopRemoteStreamRequestKey"], v41, objc_msgSend(messageCopy, "name"), name8 = objc_claimAutoreleasedReturnValue(), (v42))
  {
LABEL_29:
    v38 = &selRef__handleStreamControlRequest_;
    goto LABEL_30;
  }

  v43 = name8;
  v44 = [name8 isEqualToString:@"kReconfigureRemoteStreamRequestKey"];

  if (v44)
  {
    name8 = [messageCopy name];
    goto LABEL_29;
  }

LABEL_32:
  snapshotManager = +[HMDRemoteMessagePolicy defaultSecurePolicy];
  v57[0] = v13;
  v57[1] = snapshotManager;
  name4 = [MEMORY[0x277CBEA60] arrayWithObjects:v57 count:2];
  name9 = [messageCopy name];
  v48 = [name9 isEqualToString:@"kStreamRemoteConnectionSetupNotificationKey"];

  name10 = [messageCopy name];
  if ((v48 & 1) == 0)
  {
    v50 = name10;
    v51 = [name10 isEqualToString:@"kStreamStoppedRemoteNotificationKey"];

    if (!v51)
    {

      snapshotManager = [v10 snapshotManager];
      v53 = objc_opt_class();
      name4 = [v10 snapshotManager];
      v25 = [v53 messageBindingForDispatcher:dispatcherCopy message:messageCopy receiver:name4];
      goto LABEL_12;
    }

    name10 = [messageCopy name];
  }

  v52 = name10;
  v26 = HMFCreateMessageBinding();

LABEL_13:
  v27 = *MEMORY[0x277D85DE8];

  return v26;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t8_156775 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t8_156775, &__block_literal_global_70_156776);
  }

  v3 = logCategory__hmf_once_v9_156777;

  return v3;
}

uint64_t __31__HMDCameraProfile_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v9_156777;
  logCategory__hmf_once_v9_156777 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
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