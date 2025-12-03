@interface HMDResidentReachabilityNotificationManager
+ (id)logCategory;
- (BOOL)anyEnabledResidentSupportsReachabilityNotifications;
- (BOOL)hasMultipleResidents;
- (BOOL)hasReachableResidents;
- (BOOL)isReachabilityEventNotificationEnabledForAnyCamera;
- (BOOL)shouldPostReachableNotification;
- (BOOL)shouldPostUnreachableNotification;
- (HMDHome)home;
- (HMDIDSServerBag)idsServerBag;
- (HMDRemoteDeviceMonitor)deviceMonitor;
- (HMDResidentReachabilityNotificationManager)initWithResidentReachabilityContext:(id)context workQueue:(id)queue;
- (HMDResidentReachabilityNotificationManager)initWithResidentReachabilityContext:(id)context workQueue:(id)queue timerFactory:(id)factory bulletinBoard:(id)board;
- (id)_createTimer;
- (id)logIdentifier;
- (void)_handleCameraProfileSettingsDidChange:(id)change;
- (void)_handleCameraProfileUnconfigured:(id)unconfigured;
- (void)_handleNetworkReachabilityChange:(id)change;
- (void)_handleResidentAdded:(id)added;
- (void)_handleResidentRemoved:(id)removed;
- (void)_handleResidentUpdated:(id)updated;
- (void)_startDebounceTimer;
- (void)_startUnreachableBulletinDebounceTimer;
- (void)_updatePrimaryResidentLostTime:(id)time;
- (void)configureWithHome:(id)home deviceMonitor:(id)monitor;
- (void)configureWithHome:(id)home deviceMonitor:(id)monitor notificationCenter:(id)center idsServerBag:(id)bag completionHandler:(id)handler;
- (void)timerDidFire:(id)fire;
- (void)updateNotificationEnabled;
@end

@implementation HMDResidentReachabilityNotificationManager

- (HMDIDSServerBag)idsServerBag
{
  WeakRetained = objc_loadWeakRetained(&self->_idsServerBag);

  return WeakRetained;
}

- (HMDRemoteDeviceMonitor)deviceMonitor
{
  WeakRetained = objc_loadWeakRetained(&self->_deviceMonitor);

  return WeakRetained;
}

- (HMDHome)home
{
  WeakRetained = objc_loadWeakRetained(&self->_home);

  return WeakRetained;
}

- (id)logIdentifier
{
  home = [(HMDResidentReachabilityNotificationManager *)self home];
  uuid = [home uuid];
  uUIDString = [uuid UUIDString];

  return uUIDString;
}

- (void)timerDidFire:(id)fire
{
  v19 = *MEMORY[0x277D85DE8];
  fireCopy = fire;
  workQueue = [(HMDResidentReachabilityNotificationManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  evaluateDebounceTimer = [(HMDResidentReachabilityNotificationManager *)self evaluateDebounceTimer];

  if (evaluateDebounceTimer == fireCopy)
  {
    v7 = objc_autoreleasePoolPush();
    selfCopy = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = HMFGetLogIdentifier();
      v17 = 138543362;
      v18 = v10;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@Debounce timer fired", &v17, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
    [(HMDResidentReachabilityNotificationManager *)selfCopy setEvaluateDebounceTimer:0];
    [(HMDResidentReachabilityNotificationManager *)selfCopy _evaluateReachabilityBulletinAndPostponeUnreachableBulletin:1];
  }

  unreachableBulletinDebounceTimer = [(HMDResidentReachabilityNotificationManager *)self unreachableBulletinDebounceTimer];

  if (unreachableBulletinDebounceTimer == fireCopy)
  {
    v12 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = HMFGetLogIdentifier();
      v17 = 138543362;
      v18 = v15;
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@Unreachable Bulletin Timer fired", &v17, 0xCu);
    }

    objc_autoreleasePoolPop(v12);
    [(HMDResidentReachabilityNotificationManager *)selfCopy2 setUnreachableBulletinDebounceTimer:0];
    [(HMDResidentReachabilityNotificationManager *)selfCopy2 _evaluateReachabilityBulletinAndPostponeUnreachableBulletin:0];
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (id)_createTimer
{
  v26 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDResidentReachabilityNotificationManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  idsServerBag = [(HMDResidentReachabilityNotificationManager *)self idsServerBag];
  residentSelectionReachabilityNotificationAfterConnectivityDelay = [idsServerBag residentSelectionReachabilityNotificationAfterConnectivityDelay];

  if (residentSelectionReachabilityNotificationAfterConnectivityDelay)
  {
    [residentSelectionReachabilityNotificationAfterConnectivityDelay doubleValue];
    if (fabs(v6) < 2.22044605e-16)
    {
      v7 = objc_autoreleasePoolPush();
      selfCopy = self;
      v9 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = HMFGetLogIdentifier();
        v22 = 138543362;
        v23 = v10;
        _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@ResidentReachabilityNotificationAfterConnectivityDelay from IDS is 0.0 so disabling and not posting reachability notification", &v22, 0xCu);
      }

      objc_autoreleasePoolPop(v7);
      v11 = 0;
      goto LABEL_11;
    }

    [residentSelectionReachabilityNotificationAfterConnectivityDelay doubleValue];
    v12 = v13;
  }

  else
  {
    v12 = 600.0;
  }

  v14 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = HMFGetLogIdentifier();
    v22 = 138543618;
    v23 = v17;
    v24 = 2048;
    v25 = v12;
    _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@Creating time for %f", &v22, 0x16u);
  }

  objc_autoreleasePoolPop(v14);
  timerFactory = [(HMDResidentReachabilityNotificationManager *)selfCopy2 timerFactory];
  v11 = timerFactory[2](v12);

  [v11 setDelegate:selfCopy2];
  workQueue2 = [(HMDResidentReachabilityNotificationManager *)selfCopy2 workQueue];
  [v11 setDelegateQueue:workQueue2];

  [v11 resume];
LABEL_11:

  v20 = *MEMORY[0x277D85DE8];

  return v11;
}

- (void)_startUnreachableBulletinDebounceTimer
{
  v13 = *MEMORY[0x277D85DE8];
  unreachableBulletinDebounceTimer = [(HMDResidentReachabilityNotificationManager *)self unreachableBulletinDebounceTimer];

  if (unreachableBulletinDebounceTimer)
  {
    v4 = objc_autoreleasePoolPush();
    selfCopy = self;
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      *buf = 138543362;
      v12 = v7;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Unreachable bulletin timer already active", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    v8 = *MEMORY[0x277D85DE8];
  }

  else
  {
    _createTimer = [(HMDResidentReachabilityNotificationManager *)self _createTimer];
    [(HMDResidentReachabilityNotificationManager *)self setUnreachableBulletinDebounceTimer:?];
    v9 = *MEMORY[0x277D85DE8];
  }
}

- (void)_startDebounceTimer
{
  v13 = *MEMORY[0x277D85DE8];
  evaluateDebounceTimer = [(HMDResidentReachabilityNotificationManager *)self evaluateDebounceTimer];

  if (evaluateDebounceTimer)
  {
    v4 = objc_autoreleasePoolPush();
    selfCopy = self;
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      *buf = 138543362;
      v12 = v7;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Debounce timer already active", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    v8 = *MEMORY[0x277D85DE8];
  }

  else
  {
    _createTimer = [(HMDResidentReachabilityNotificationManager *)self _createTimer];
    [(HMDResidentReachabilityNotificationManager *)self setEvaluateDebounceTimer:?];
    v9 = *MEMORY[0x277D85DE8];
  }
}

- (BOOL)shouldPostUnreachableNotification
{
  reachabilityContext = [(HMDResidentReachabilityNotificationManager *)self reachabilityContext];
  mostRecentReachability = [reachabilityContext mostRecentReachability];

  if (mostRecentReachability)
  {
    bOOLValue = [mostRecentReachability BOOLValue];
  }

  else
  {
    bOOLValue = 1;
  }

  return bOOLValue;
}

- (BOOL)shouldPostReachableNotification
{
  reachabilityContext = [(HMDResidentReachabilityNotificationManager *)self reachabilityContext];
  mostRecentReachability = [reachabilityContext mostRecentReachability];

  if (mostRecentReachability)
  {
    v4 = [mostRecentReachability BOOLValue] ^ 1;
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (BOOL)anyEnabledResidentSupportsReachabilityNotifications
{
  home = [(HMDResidentReachabilityNotificationManager *)self home];
  enabledResidents = [home enabledResidents];
  v4 = [enabledResidents na_any:&__block_literal_global_50_138470];

  return v4;
}

uint64_t __97__HMDResidentReachabilityNotificationManager_anyEnabledResidentSupportsReachabilityNotifications__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 capabilities];
  v3 = [v2 supportsCameraRecordingReachabilityNotifications];

  return v3;
}

- (BOOL)isReachabilityEventNotificationEnabledForAnyCamera
{
  v32 = *MEMORY[0x277D85DE8];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  home = [(HMDResidentReachabilityNotificationManager *)self home];
  accessories = [home accessories];

  v21 = [accessories countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v21)
  {
    v4 = *v27;
    v20 = *v27;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v27 != v4)
        {
          objc_enumerationMutation(accessories);
        }

        v6 = *(*(&v26 + 1) + 8 * i);
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

        v24 = 0u;
        v25 = 0u;
        v22 = 0u;
        v23 = 0u;
        cameraProfiles = [v8 cameraProfiles];
        v10 = [cameraProfiles countByEnumeratingWithState:&v22 objects:v30 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v23;
          while (2)
          {
            for (j = 0; j != v11; ++j)
            {
              if (*v23 != v12)
              {
                objc_enumerationMutation(cameraProfiles);
              }

              currentSettings = [*(*(&v22 + 1) + 8 * j) currentSettings];
              if (([currentSettings supportedFeatures] & 2) != 0)
              {
                notificationSettings = [currentSettings notificationSettings];
                isReachabilityEventNotificationEnabled = [notificationSettings isReachabilityEventNotificationEnabled];

                if (isReachabilityEventNotificationEnabled)
                {

                  v17 = 1;
                  goto LABEL_24;
                }
              }

              else
              {
              }
            }

            v11 = [cameraProfiles countByEnumeratingWithState:&v22 objects:v30 count:16];
            if (v11)
            {
              continue;
            }

            break;
          }
        }

        v4 = v20;
      }

      v17 = 0;
      v21 = [accessories countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v21);
  }

  else
  {
    v17 = 0;
  }

LABEL_24:

  v18 = *MEMORY[0x277D85DE8];
  return v17;
}

- (BOOL)hasMultipleResidents
{
  home = [(HMDResidentReachabilityNotificationManager *)self home];
  enabledResidents = [home enabledResidents];
  v4 = [enabledResidents na_filter:&__block_literal_global_47_138473];

  LOBYTE(home) = [v4 count] > 1;
  return home;
}

uint64_t __66__HMDResidentReachabilityNotificationManager_hasMultipleResidents__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 capabilities];
  v3 = [v2 supportsCameraRecording];

  return v3;
}

- (BOOL)hasReachableResidents
{
  home = [(HMDResidentReachabilityNotificationManager *)self home];
  enabledResidents = [home enabledResidents];
  v4 = [enabledResidents na_any:&__block_literal_global_45_138475];

  return v4;
}

uint64_t __67__HMDResidentReachabilityNotificationManager_hasReachableResidents__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 capabilities];
  if ([v3 supportsCameraRecording])
  {
    v4 = [v2 isReachable];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)updateNotificationEnabled
{
  v24 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDResidentReachabilityNotificationManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  isReachabilityEventNotificationEnabledForAnyCamera = [(HMDResidentReachabilityNotificationManager *)self isReachabilityEventNotificationEnabledForAnyCamera];
  notificationEnabled = [(HMDResidentReachabilityNotificationManager *)self notificationEnabled];
  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (isReachabilityEventNotificationEnabledForAnyCamera == notificationEnabled)
  {
    if (v9)
    {
      v15 = HMFGetLogIdentifier();
      [(HMDResidentReachabilityNotificationManager *)selfCopy notificationEnabled];
      v16 = HMFEnabledStatusToString();
      v18 = 138543618;
      v19 = v15;
      v20 = 2112;
      v21 = v16;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@Resident reachability notifications not changing from %@", &v18, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
  }

  else
  {
    if (v9)
    {
      v10 = HMFGetLogIdentifier();
      [(HMDResidentReachabilityNotificationManager *)selfCopy notificationEnabled];
      v11 = HMFEnabledStatusToString();
      v12 = HMFEnabledStatusToString();
      v18 = 138543874;
      v19 = v10;
      v20 = 2112;
      v21 = v11;
      v22 = 2112;
      v23 = v12;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@Updating resident reachability notifications from %@ -> %@", &v18, 0x20u);
    }

    objc_autoreleasePoolPop(v6);
    [(HMDResidentReachabilityNotificationManager *)selfCopy setNotificationEnabled:isReachabilityEventNotificationEnabledForAnyCamera];
    if (![(HMDResidentReachabilityNotificationManager *)selfCopy notificationEnabled])
    {
      v13 = [[HMDResidentReachabilityContext alloc] initWithMostRecentReachability:0];
      [(HMDResidentReachabilityNotificationManager *)selfCopy setReachabilityContext:v13];

      home = [(HMDResidentReachabilityNotificationManager *)selfCopy home];
      [home saveToCurrentAccountWithReason:@"Camera reachability notification disabled"];
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)_handleCameraProfileUnconfigured:(id)unconfigured
{
  workQueue = [(HMDResidentReachabilityNotificationManager *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __79__HMDResidentReachabilityNotificationManager__handleCameraProfileUnconfigured___block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(workQueue, block);
}

uint64_t __79__HMDResidentReachabilityNotificationManager__handleCameraProfileUnconfigured___block_invoke(uint64_t a1)
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
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, "%{public}@Received a camera profile is unconfigured, updating notification enabled if needed", &v8, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  result = [*(a1 + 32) updateNotificationEnabled];
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_handleCameraProfileSettingsDidChange:(id)change
{
  changeCopy = change;
  workQueue = [(HMDResidentReachabilityNotificationManager *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __84__HMDResidentReachabilityNotificationManager__handleCameraProfileSettingsDidChange___block_invoke;
  v7[3] = &unk_2797359B0;
  v7[4] = self;
  v8 = changeCopy;
  v6 = changeCopy;
  dispatch_async(workQueue, v7);
}

uint64_t __84__HMDResidentReachabilityNotificationManager__handleCameraProfileSettingsDidChange___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v14 = 138543362;
    v15 = v5;
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, "%{public}@Received camera profile settings did change notification, updating notification enabled if needed", &v14, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  v6 = [*(a1 + 40) userInfo];
  v7 = [v6 hmf_BOOLForKey:@"HMDCameraProfileSettingsIsInitialSettingsUpdateNotificationKey"];

  if (v7)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = *(a1 + 32);
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = HMFGetLogIdentifier();
      v14 = 138543362;
      v15 = v11;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@Initial settings update", &v14, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
    result = [*(a1 + 32) setNotificationEnabled:{objc_msgSend(*(a1 + 32), "isReachabilityEventNotificationEnabledForAnyCamera")}];
  }

  else
  {
    result = [*(a1 + 32) updateNotificationEnabled];
  }

  v13 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_handleResidentUpdated:(id)updated
{
  updatedCopy = updated;
  workQueue = [(HMDResidentReachabilityNotificationManager *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __69__HMDResidentReachabilityNotificationManager__handleResidentUpdated___block_invoke;
  v7[3] = &unk_2797359B0;
  v7[4] = self;
  v8 = updatedCopy;
  v6 = updatedCopy;
  dispatch_async(workQueue, v7);
}

uint64_t __69__HMDResidentReachabilityNotificationManager__handleResidentUpdated___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = [*(a1 + 32) home];
    v7 = [v6 name];
    v10 = 138543618;
    v11 = v5;
    v12 = 2112;
    v13 = v7;
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, "%{public}@Resident Reachability changed, checking home: %@", &v10, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  [*(a1 + 32) _updatePrimaryResidentLostTime:*(a1 + 40)];
  result = [*(a1 + 32) _evaluateReachabilityBulletinAndPostponeUnreachableBulletin:1];
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_updatePrimaryResidentLostTime:(id)time
{
  timeCopy = time;
  home = [(HMDResidentReachabilityNotificationManager *)self home];
  userInfo = [timeCopy userInfo];

  v6 = [userInfo objectForKeyedSubscript:@"HMDResidentDeviceManagerResidentDeviceNotificationKey"];

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

  residentDeviceManager = [home residentDeviceManager];
  primaryResidentDevice = [residentDeviceManager primaryResidentDevice];
  v11 = [v8 isEqual:primaryResidentDevice];

  v12 = home;
  if (v11)
  {
    residentDeviceManager2 = [home residentDeviceManager];
    primaryResidentDevice2 = [residentDeviceManager2 primaryResidentDevice];
    isReachable = [primaryResidentDevice2 isReachable];

    v16 = 0.0;
    if ((isReachable & 1) == 0)
    {
      HMFUptime();
    }

    [(HMDResidentReachabilityNotificationManager *)self setPrimaryResidentUnreachableTime:v16];
    v12 = home;
  }
}

- (void)_handleResidentRemoved:(id)removed
{
  workQueue = [(HMDResidentReachabilityNotificationManager *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__HMDResidentReachabilityNotificationManager__handleResidentRemoved___block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(workQueue, block);
}

void __69__HMDResidentReachabilityNotificationManager__handleResidentRemoved___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) setEvaluateDebounceTimer:0];
  v2 = [*(a1 + 32) anyEnabledResidentSupportsReachabilityNotifications];
  v3 = objc_autoreleasePoolPush();
  v4 = *(a1 + 32);
  v5 = HMFGetOSLogHandle();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v6)
    {
      v7 = HMFGetLogIdentifier();
      v12 = 138543362;
      v13 = v7;
      _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@A resident was removed, starting debounce timer", &v12, 0xCu);
    }

    objc_autoreleasePoolPop(v3);
    [*(a1 + 32) _startDebounceTimer];
  }

  else
  {
    if (v6)
    {
      v8 = HMFGetLogIdentifier();
      v12 = 138543362;
      v13 = v8;
      _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@Last resident was reomved", &v12, 0xCu);
    }

    objc_autoreleasePoolPop(v3);
    v9 = [[HMDResidentReachabilityContext alloc] initWithMostRecentReachability:0];
    [*(a1 + 32) setReachabilityContext:v9];

    v10 = [*(a1 + 32) home];
    [v10 saveToCurrentAccountWithReason:@"All residents were removed"];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_handleResidentAdded:(id)added
{
  workQueue = [(HMDResidentReachabilityNotificationManager *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__HMDResidentReachabilityNotificationManager__handleResidentAdded___block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(workQueue, block);
}

uint64_t __67__HMDResidentReachabilityNotificationManager__handleResidentAdded___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = HMFGetLogIdentifier();
    v6 = [*(a1 + 32) evaluateDebounceTimer];
    v7 = [v6 isRunning];
    v8 = &stru_286509E58;
    if (v7)
    {
      v8 = @"re";
    }

    v11 = 138543618;
    v12 = v5;
    v13 = 2112;
    v14 = v8;
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@A resident was added, %@starting debounce timer", &v11, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  [*(a1 + 32) setEvaluateDebounceTimer:0];
  result = [*(a1 + 32) _startDebounceTimer];
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_handleNetworkReachabilityChange:(id)change
{
  workQueue = [(HMDResidentReachabilityNotificationManager *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __79__HMDResidentReachabilityNotificationManager__handleNetworkReachabilityChange___block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(workQueue, block);
}

uint64_t __79__HMDResidentReachabilityNotificationManager__handleNetworkReachabilityChange___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) deviceMonitor];
  v3 = [v2 isReachable];

  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v7)
    {
      v8 = HMFGetLogIdentifier();
      v12 = 138543362;
      v13 = v8;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@Network became reachable, starting debounce timer", &v12, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    result = [*(a1 + 32) _startDebounceTimer];
  }

  else
  {
    if (v7)
    {
      v10 = HMFGetLogIdentifier();
      v12 = 138543362;
      v13 = v10;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@Network became unreachable, clearing debounce timer", &v12, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    result = [*(a1 + 32) setEvaluateDebounceTimer:0];
  }

  v11 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)configureWithHome:(id)home deviceMonitor:(id)monitor notificationCenter:(id)center idsServerBag:(id)bag completionHandler:(id)handler
{
  homeCopy = home;
  monitorCopy = monitor;
  centerCopy = center;
  handlerCopy = handler;
  bagCopy = bag;
  objc_storeWeak(&self->_deviceMonitor, monitorCopy);
  objc_storeWeak(&self->_home, homeCopy);
  objc_storeWeak(&self->_idsServerBag, bagCopy);

  workQueue = [(HMDResidentReachabilityNotificationManager *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __128__HMDResidentReachabilityNotificationManager_configureWithHome_deviceMonitor_notificationCenter_idsServerBag_completionHandler___block_invoke;
  block[3] = &unk_279734668;
  block[4] = self;
  v23 = centerCopy;
  v24 = homeCopy;
  v25 = monitorCopy;
  v26 = handlerCopy;
  v18 = handlerCopy;
  v19 = monitorCopy;
  v20 = homeCopy;
  v21 = centerCopy;
  dispatch_async(workQueue, block);
}

uint64_t __128__HMDResidentReachabilityNotificationManager_configureWithHome_deviceMonitor_notificationCenter_idsServerBag_completionHandler___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = HMFGetLogIdentifier();
    v17 = 138543362;
    v18 = v5;
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@Starting debounce timer", &v17, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  [*(a1 + 32) _startDebounceTimer];
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = [*(a1 + 48) residentDeviceManager];
  [v6 addObserver:v7 selector:sel__handleResidentUpdated_ name:@"HMDResidentDeviceManagerUpdateResidentNotification" object:v8];

  v10 = *(a1 + 32);
  v9 = *(a1 + 40);
  v11 = [*(a1 + 48) residentDeviceManager];
  [v9 addObserver:v10 selector:sel__handleResidentAdded_ name:@"HMDResidentDeviceManagerAddResidentNotification" object:v11];

  v13 = *(a1 + 32);
  v12 = *(a1 + 40);
  v14 = [*(a1 + 48) residentDeviceManager];
  [v12 addObserver:v13 selector:sel__handleResidentRemoved_ name:@"HMDResidentDeviceManagerRemoveResidentNotification" object:v14];

  [*(a1 + 40) addObserver:*(a1 + 32) selector:sel__handleNetworkReachabilityChange_ name:@"HMDRemoteDeviceMonitorReachableNotification" object:*(a1 + 56)];
  [*(a1 + 40) addObserver:*(a1 + 32) selector:sel__handleCameraProfileSettingsDidChange_ name:@"HMDCameraProfileSettingsDidChangeNotification" object:0];
  [*(a1 + 40) addObserver:*(a1 + 32) selector:sel__handleCameraProfileUnconfigured_ name:@"HMDCameraProfileUnconfiguredNotification" object:0];
  [*(a1 + 32) setNotificationEnabled:{objc_msgSend(*(a1 + 32), "isReachabilityEventNotificationEnabledForAnyCamera")}];
  result = *(a1 + 64);
  if (result)
  {
    result = (*(result + 16))();
  }

  v16 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)configureWithHome:(id)home deviceMonitor:(id)monitor
{
  v6 = MEMORY[0x277CCAB98];
  monitorCopy = monitor;
  homeCopy = home;
  defaultCenter = [v6 defaultCenter];
  homeManager = [homeCopy homeManager];
  idsServerBag = [homeManager idsServerBag];
  [(HMDResidentReachabilityNotificationManager *)self configureWithHome:homeCopy deviceMonitor:monitorCopy notificationCenter:defaultCenter idsServerBag:idsServerBag completionHandler:0];
}

- (HMDResidentReachabilityNotificationManager)initWithResidentReachabilityContext:(id)context workQueue:(id)queue timerFactory:(id)factory bulletinBoard:(id)board
{
  contextCopy = context;
  queueCopy = queue;
  factoryCopy = factory;
  boardCopy = board;
  v20.receiver = self;
  v20.super_class = HMDResidentReachabilityNotificationManager;
  v15 = [(HMDResidentReachabilityNotificationManager *)&v20 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_reachabilityContext, context);
    objc_storeStrong(&v16->_workQueue, queue);
    v17 = _Block_copy(factoryCopy);
    timerFactory = v16->_timerFactory;
    v16->_timerFactory = v17;

    objc_storeStrong(&v16->_bulletinBoard, board);
    v16->_notificationEnabled = 0;
  }

  return v16;
}

- (HMDResidentReachabilityNotificationManager)initWithResidentReachabilityContext:(id)context workQueue:(id)queue
{
  queueCopy = queue;
  contextCopy = context;
  v8 = +[HMDBulletinBoard sharedBulletinBoard];
  v9 = [(HMDResidentReachabilityNotificationManager *)self initWithResidentReachabilityContext:contextCopy workQueue:queueCopy timerFactory:&__block_literal_global_138531 bulletinBoard:v8];

  return v9;
}

id __92__HMDResidentReachabilityNotificationManager_initWithResidentReachabilityContext_workQueue___block_invoke(double a1)
{
  v1 = [objc_alloc(MEMORY[0x277D0F920]) initWithTimeInterval:0 options:a1];

  return v1;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t31_138537 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t31_138537, &__block_literal_global_52_138538);
  }

  v3 = logCategory__hmf_once_v32_138539;

  return v3;
}

uint64_t __57__HMDResidentReachabilityNotificationManager_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v32_138539;
  logCategory__hmf_once_v32_138539 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end