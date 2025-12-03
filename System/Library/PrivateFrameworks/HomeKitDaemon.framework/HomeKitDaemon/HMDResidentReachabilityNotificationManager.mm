@interface HMDResidentReachabilityNotificationManager
+ (id)logCategory;
- (BOOL)anyEnabledResidentSupportsReachabilityNotifications;
- (BOOL)hasMultipleResidents;
- (BOOL)hasReachableResidents;
- (BOOL)shouldPostReachableNotification;
- (BOOL)shouldPostUnreachableNotification;
- (BOOL)shouldPostUserPreferredReachableNotification;
- (BOOL)shouldPostUserPreferredUnreachableNotification;
- (HMDHome)home;
- (HMDIDSServerBag)idsServerBag;
- (HMDRemoteDeviceMonitor)deviceMonitor;
- (HMDResidentReachabilityNotificationManager)initWithResidentReachabilityContext:(id)context workQueue:(id)queue;
- (HMDResidentReachabilityNotificationManager)initWithResidentReachabilityContext:(id)context workQueue:(id)queue timerFactory:(id)factory bulletinBoard:(id)board;
- (id)_createTimer;
- (id)logIdentifier;
- (void)_evaluateReachabilityBulletinAndPostponeUnreachableBulletin:(BOOL)bulletin;
- (void)_handleNetworkReachabilityChange:(id)change;
- (void)_handleResidentAdded:(id)added;
- (void)_handleResidentRemoved:(id)removed;
- (void)_handleResidentUpdated:(id)updated;
- (void)_handleUserPreferredReachabilityBulletinDebounceTimer;
- (void)_handleUserPreferredResidentReachable:(id)reachable;
- (void)_startDebounceTimer;
- (void)_startUnreachableBulletinDebounceTimer;
- (void)_updatePrimaryResidentLostTime:(id)time;
- (void)configureWithHome:(id)home deviceMonitor:(id)monitor;
- (void)configureWithHome:(id)home deviceMonitor:(id)monitor notificationCenter:(id)center idsServerBag:(id)bag completionHandler:(id)handler;
- (void)timerDidFire:(id)fire;
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
  v24 = *MEMORY[0x277D85DE8];
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
      v22 = 138543362;
      v23 = v10;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@Debounce timer fired", &v22, 0xCu);
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
      v22 = 138543362;
      v23 = v15;
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@Unreachable Bulletin Timer fired", &v22, 0xCu);
    }

    objc_autoreleasePoolPop(v12);
    [(HMDResidentReachabilityNotificationManager *)selfCopy2 setUnreachableBulletinDebounceTimer:0];
    [(HMDResidentReachabilityNotificationManager *)selfCopy2 _evaluateReachabilityBulletinAndPostponeUnreachableBulletin:0];
  }

  userPreferredReachabilityBulletinDebounceTimer = [(HMDResidentReachabilityNotificationManager *)self userPreferredReachabilityBulletinDebounceTimer];

  if (userPreferredReachabilityBulletinDebounceTimer == fireCopy)
  {
    v17 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = HMFGetLogIdentifier();
      v22 = 138543362;
      v23 = v20;
      _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@User preferred resident Reachability Bulletin Timer fired", &v22, 0xCu);
    }

    objc_autoreleasePoolPop(v17);
    [(HMDResidentReachabilityNotificationManager *)selfCopy3 setUserPreferredReachabilityBulletinDebounceTimer:0];
    [(HMDResidentReachabilityNotificationManager *)selfCopy3 _handleUserPreferredReachabilityBulletinDebounceTimer];
  }

  v21 = *MEMORY[0x277D85DE8];
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
        _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@ResidentReachabilityNotificationAfterConnectivityDelay from IDS is 0.0 so disabling and not posting reachability notification", &v22, 0xCu);
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
    _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@Creating time for %f", &v22, 0x16u);
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
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Unreachable bulletin timer already active", buf, 0xCu);
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
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Debounce timer already active", buf, 0xCu);
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
  v4 = [enabledResidents count];

  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  accessories = [home accessories];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __97__HMDResidentReachabilityNotificationManager_anyEnabledResidentSupportsReachabilityNotifications__block_invoke;
  v7[3] = &unk_278684FE8;
  v7[4] = &v8;
  [accessories hmf_enumerateWithAutoreleasePoolUsingBlock:v7];

  if (v4)
  {
    LOBYTE(v4) = *(v9 + 24);
  }

  _Block_object_dispose(&v8, 8);

  return v4 & 1;
}

void __97__HMDResidentReachabilityNotificationManager_anyEnabledResidentSupportsReachabilityNotifications__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
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
  v14 = v6;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v14;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  if (v10)
  {
    v11 = [v10 hostAccessory];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    v13 = isKindOfClass ^ 1 | (v11 == 0);
    if (v8)
    {
      goto LABEL_12;
    }

LABEL_11:
    if ((v13 & 1) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v13 = 0;
  if (!v8)
  {
    goto LABEL_11;
  }

LABEL_12:
  *(*(*(a1 + 32) + 8) + 24) = 1;
  *a4 = 1;
LABEL_13:
}

- (BOOL)hasMultipleResidents
{
  home = [(HMDResidentReachabilityNotificationManager *)self home];
  enabledResidents = [home enabledResidents];
  v4 = [enabledResidents count] > 1;

  return v4;
}

- (BOOL)hasReachableResidents
{
  home = [(HMDResidentReachabilityNotificationManager *)self home];
  enabledResidents = [home enabledResidents];
  v4 = [enabledResidents na_any:&__block_literal_global_41_209082];

  return v4;
}

- (void)_evaluateReachabilityBulletinAndPostponeUnreachableBulletin:(BOOL)bulletin
{
  bulletinCopy = bulletin;
  v63 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDResidentReachabilityNotificationManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  deviceMonitor = [(HMDResidentReachabilityNotificationManager *)self deviceMonitor];
  isReachable = [deviceMonitor isReachable];

  if (isReachable)
  {
    evaluateDebounceTimer = [(HMDResidentReachabilityNotificationManager *)self evaluateDebounceTimer];

    if (evaluateDebounceTimer)
    {
      v9 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v11 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = HMFGetLogIdentifier();
        v61 = 138543362;
        v62 = v12;
        v13 = "%{public}@Debounce timer active, delaying check";
LABEL_15:
        _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_DEFAULT, v13, &v61, 0xCu);

        goto LABEL_16;
      }

      goto LABEL_16;
    }

    if (![(HMDResidentReachabilityNotificationManager *)self anyEnabledResidentSupportsReachabilityNotifications])
    {
      v9 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v11 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = HMFGetLogIdentifier();
        v61 = 138543362;
        v62 = v12;
        v13 = "%{public}@No enabled resident supports Reachability Notifications";
        goto LABEL_15;
      }

LABEL_16:

      objc_autoreleasePoolPop(v9);
      goto LABEL_17;
    }

    home = [(HMDResidentReachabilityNotificationManager *)self home];
    v19 = home;
    if (home)
    {
      currentUser = [home currentUser];
      isRestrictedGuest = [currentUser isRestrictedGuest];

      if (!isRestrictedGuest)
      {
        if ([(HMDResidentReachabilityNotificationManager *)self hasReachableResidents])
        {
          unreachableBulletinDebounceTimer = [(HMDResidentReachabilityNotificationManager *)self unreachableBulletinDebounceTimer];
          [unreachableBulletinDebounceTimer cancel];

          [(HMDResidentReachabilityNotificationManager *)self setUnreachableBulletinDebounceTimer:0];
          v30 = objc_autoreleasePoolPush();
          selfCopy3 = self;
          v32 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
          {
            v33 = HMFGetLogIdentifier();
            v61 = 138543362;
            v62 = v33;
            _os_log_impl(&dword_229538000, v32, OS_LOG_TYPE_DEFAULT, "%{public}@Home has reachable residents supporting notification", &v61, 0xCu);
          }

          objc_autoreleasePoolPop(v30);
          shouldPostReachableNotification = [(HMDResidentReachabilityNotificationManager *)selfCopy3 shouldPostReachableNotification];
          v35 = objc_autoreleasePoolPush();
          v36 = selfCopy3;
          v37 = HMFGetOSLogHandle();
          v38 = v37;
          if (!shouldPostReachableNotification)
          {
            if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
            {
              v53 = HMFGetLogIdentifier();
              v61 = 138543362;
              v62 = v53;
              _os_log_impl(&dword_229538000, v38, OS_LOG_TYPE_DEFAULT, "%{public}@Not posting reachable notification due to no previous unreachable notification posted or previously posting reachable notification", &v61, 0xCu);
            }

            v28 = v35;
            goto LABEL_22;
          }

          if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
          {
            v39 = HMFGetLogIdentifier();
            v61 = 138543362;
            v62 = v39;
            _os_log_impl(&dword_229538000, v38, OS_LOG_TYPE_INFO, "%{public}@Posting reachable notification", &v61, 0xCu);
          }

          objc_autoreleasePoolPop(v35);
          bulletinBoard = [(HMDResidentReachabilityNotificationManager *)v36 bulletinBoard];
          [bulletinBoard insertHomeHubReachabilityBulletinForHome:v19 reachable:1 hasMultipleResidents:{-[HMDResidentReachabilityNotificationManager hasMultipleResidents](v36, "hasMultipleResidents")}];

          v41 = [HMDResidentReachabilityContext alloc];
          v42 = [(HMDResidentReachabilityContext *)v41 initWithMostRecentReachability:MEMORY[0x277CBEC38]];
          [(HMDResidentReachabilityNotificationManager *)v36 setReachabilityContext:v42];

          v43 = @"Posted reachable resident notification";
        }

        else
        {
          v44 = objc_autoreleasePoolPush();
          selfCopy4 = self;
          v46 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
          {
            v47 = HMFGetLogIdentifier();
            v61 = 138543362;
            v62 = v47;
            _os_log_impl(&dword_229538000, v46, OS_LOG_TYPE_DEFAULT, "%{public}@Home does not have reachable residents supporting camera recording", &v61, 0xCu);
          }

          objc_autoreleasePoolPop(v44);
          if (![(HMDResidentReachabilityNotificationManager *)selfCopy4 shouldPostUnreachableNotification])
          {
            v22 = objc_autoreleasePoolPush();
            selfCopy6 = selfCopy4;
            v24 = HMFGetOSLogHandle();
            if (!os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_21;
            }

            v25 = HMFGetLogIdentifier();
            v61 = 138543362;
            v62 = v25;
            v26 = "%{public}@Not posting unreachable notification due to previously posting unreachable notification";
            goto LABEL_20;
          }

          if (bulletinCopy)
          {
            v48 = objc_autoreleasePoolPush();
            v49 = selfCopy4;
            v50 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
            {
              v51 = HMFGetLogIdentifier();
              v61 = 138543362;
              v62 = v51;
              _os_log_impl(&dword_229538000, v50, OS_LOG_TYPE_DEFAULT, "%{public}@Attempting resident discovery before posting unreachable notification", &v61, 0xCu);
            }

            objc_autoreleasePoolPop(v48);
            residentDeviceManager = [v19 residentDeviceManager];
            [residentDeviceManager discoverPrimaryResidentForRequester:0];

            [(HMDResidentReachabilityNotificationManager *)v49 _startUnreachableBulletinDebounceTimer];
            goto LABEL_23;
          }

          [(HMDResidentReachabilityNotificationManager *)selfCopy4 setUnreachableBulletinDebounceTimer:0];
          v54 = objc_autoreleasePoolPush();
          v55 = selfCopy4;
          v56 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
          {
            v57 = HMFGetLogIdentifier();
            v61 = 138543362;
            v62 = v57;
            _os_log_impl(&dword_229538000, v56, OS_LOG_TYPE_INFO, "%{public}@Posting unreachable notification", &v61, 0xCu);
          }

          objc_autoreleasePoolPop(v54);
          bulletinBoard2 = [(HMDResidentReachabilityNotificationManager *)v55 bulletinBoard];
          [bulletinBoard2 insertHomeHubReachabilityBulletinForHome:v19 reachable:0 hasMultipleResidents:{-[HMDResidentReachabilityNotificationManager hasMultipleResidents](v55, "hasMultipleResidents")}];

          v59 = [HMDResidentReachabilityContext alloc];
          v60 = [(HMDResidentReachabilityContext *)v59 initWithMostRecentReachability:MEMORY[0x277CBEC28]];
          [(HMDResidentReachabilityNotificationManager *)v55 setReachabilityContext:v60];

          v43 = @"Posted no reachable resident notification";
        }

        [v19 saveToCurrentAccountWithReason:v43];
        goto LABEL_23;
      }

      v22 = objc_autoreleasePoolPush();
      selfCopy6 = self;
      v24 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v25 = HMFGetLogIdentifier();
        v61 = 138543362;
        v62 = v25;
        v26 = "%{public}@Current user is a guest in this home, suppressing resident reachability update bulletin";
LABEL_20:
        _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_DEFAULT, v26, &v61, 0xCu);
      }
    }

    else
    {
      v22 = objc_autoreleasePoolPush();
      selfCopy6 = self;
      v24 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v25 = HMFGetLogIdentifier();
        v61 = 138543362;
        v62 = v25;
        v26 = "%{public}@Our home has been deallocated";
        goto LABEL_20;
      }
    }

LABEL_21:

    v28 = v22;
LABEL_22:
    objc_autoreleasePoolPop(v28);
LABEL_23:

    goto LABEL_17;
  }

  v14 = objc_autoreleasePoolPush();
  selfCopy7 = self;
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = HMFGetLogIdentifier();
    v61 = 138543362;
    v62 = v17;
    _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@Network unreachable, clearing debounce timer and delaying check until reachable", &v61, 0xCu);
  }

  objc_autoreleasePoolPop(v14);
  [(HMDResidentReachabilityNotificationManager *)selfCopy7 setEvaluateDebounceTimer:0];
LABEL_17:
  v27 = *MEMORY[0x277D85DE8];
}

- (BOOL)shouldPostUserPreferredUnreachableNotification
{
  if ([(HMDResidentReachabilityNotificationManager *)self isUserPreferredReachable])
  {
    return 0;
  }

  userPreferredReachabilityContext = [(HMDResidentReachabilityNotificationManager *)self userPreferredReachabilityContext];
  mostRecentReachability = [userPreferredReachabilityContext mostRecentReachability];

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

- (BOOL)shouldPostUserPreferredReachableNotification
{
  if ([(HMDResidentReachabilityNotificationManager *)self isUserPreferredReachable])
  {
    userPreferredReachabilityContext = [(HMDResidentReachabilityNotificationManager *)self userPreferredReachabilityContext];
    mostRecentReachability = [userPreferredReachabilityContext mostRecentReachability];

    if (mostRecentReachability)
    {
      v5 = [mostRecentReachability BOOLValue] ^ 1;
    }

    else
    {
      LOBYTE(v5) = 0;
    }
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (void)_handleUserPreferredReachabilityBulletinDebounceTimer
{
  v34 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDResidentReachabilityNotificationManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  home = [(HMDResidentReachabilityNotificationManager *)self home];
  userSelectedPreferredResident = [home userSelectedPreferredResident];

  if (!userSelectedPreferredResident)
  {
    v19 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = HMFGetLogIdentifier();
      v28 = 138543362;
      v29 = v22;
      v23 = "%{public}@Home is no longer in manual selection, ignore preferred reachability bulletin";
      v24 = v21;
      v25 = OS_LOG_TYPE_INFO;
      v26 = 12;
LABEL_11:
      _os_log_impl(&dword_229538000, v24, v25, v23, &v28, v26);
    }

LABEL_12:

    objc_autoreleasePoolPop(v19);
    goto LABEL_13;
  }

  if (![(HMDResidentReachabilityNotificationManager *)self shouldPostUserPreferredReachableNotification]&& ![(HMDResidentReachabilityNotificationManager *)self shouldPostUserPreferredUnreachableNotification])
  {
    v19 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = HMFGetLogIdentifier();
      v28 = 138543618;
      v29 = v22;
      v30 = 1024;
      LODWORD(v31) = [(HMDResidentReachabilityNotificationManager *)selfCopy2 isUserPreferredReachable];
      v23 = "%{public}@Not posting reachable: %{BOOL}d notification due to no previous situation";
      v24 = v21;
      v25 = OS_LOG_TYPE_DEFAULT;
      v26 = 18;
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  v6 = objc_autoreleasePoolPush();
  selfCopy3 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = HMFGetLogIdentifier();
    home2 = [(HMDResidentReachabilityNotificationManager *)selfCopy3 home];
    name = [home2 name];
    v28 = 138543874;
    v29 = v9;
    v30 = 2112;
    v31 = name;
    v32 = 1024;
    isUserPreferredReachable = [(HMDResidentReachabilityNotificationManager *)selfCopy3 isUserPreferredReachable];
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@Posting user perferred resident reachable notification for home: %@, reachable: %{BOOL}d", &v28, 0x1Cu);
  }

  objc_autoreleasePoolPop(v6);
  bulletinBoard = [(HMDResidentReachabilityNotificationManager *)selfCopy3 bulletinBoard];
  isUserPreferredReachable2 = [(HMDResidentReachabilityNotificationManager *)selfCopy3 isUserPreferredReachable];
  electedPrimary = [(HMDResidentReachabilityNotificationManager *)selfCopy3 electedPrimary];
  previousPrimary = [(HMDResidentReachabilityNotificationManager *)selfCopy3 previousPrimary];
  [bulletinBoard insertUserPreferredHomeHubReachabilityBulletinForHome:home reachable:isUserPreferredReachable2 electedPrimary:electedPrimary previousPrimary:previousPrimary];

  v16 = [HMDResidentReachabilityContext alloc];
  v17 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDResidentReachabilityNotificationManager isUserPreferredReachable](selfCopy3, "isUserPreferredReachable")}];
  v18 = [(HMDResidentReachabilityContext *)v16 initWithMostRecentReachability:v17];
  [(HMDResidentReachabilityNotificationManager *)selfCopy3 setUserPreferredReachabilityContext:v18];

LABEL_13:
  v27 = *MEMORY[0x277D85DE8];
}

- (void)_handleUserPreferredResidentReachable:(id)reachable
{
  reachableCopy = reachable;
  workQueue = [(HMDResidentReachabilityNotificationManager *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __84__HMDResidentReachabilityNotificationManager__handleUserPreferredResidentReachable___block_invoke;
  v7[3] = &unk_27868A750;
  v7[4] = self;
  v8 = reachableCopy;
  v6 = reachableCopy;
  dispatch_async(workQueue, v7);
}

void __84__HMDResidentReachabilityNotificationManager__handleUserPreferredResidentReachable___block_invoke(uint64_t a1)
{
  v38 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 40) userInfo];
  [*(a1 + 32) setIsUserPreferredReachable:{objc_msgSend(v2, "hmf_BOOLForKey:", @"HMDResidentDeviceManagerUserPreferredResidentReachabilityKey"}];

  v3 = [*(a1 + 40) userInfo];
  v4 = [v3 hmf_stringForKey:@"HMDResidentDeviceManagerUserPreferredResidentNameKey"];
  [*(a1 + 32) setPreviousPrimary:v4];

  v5 = [*(a1 + 40) userInfo];
  v6 = [v5 hmf_stringForKey:@"HMDResidentDeviceManagerBackupResidentNameKey"];
  [*(a1 + 32) setElectedPrimary:v6];

  v7 = [*(a1 + 32) userPreferredReachabilityBulletinDebounceTimer];

  v8 = objc_autoreleasePoolPush();
  v9 = *(a1 + 32);
  v10 = HMFGetOSLogHandle();
  v11 = v10;
  if (!v7)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v13 = HMFGetLogIdentifier();
      v34 = 138543362;
      v35 = v13;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@User preferred reachability changed, start a debounce timer", &v34, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
    v14 = [*(a1 + 32) idsServerBag];
    v15 = [v14 residentSelectionUserPreferredReachabilityNotificationDelay];

    if (v15)
    {
      [v15 doubleValue];
      if (fabs(v16) < 2.22044605e-16)
      {
        v17 = objc_autoreleasePoolPush();
        v18 = *(a1 + 32);
        v19 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          v20 = HMFGetLogIdentifier();
          v34 = 138543362;
          v35 = v20;
          _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_INFO, "%{public}@ResidentSelectionUserPreferredReachabilityNotificationDelay from IDS is 0.0 so disabling and not posting user preferred reachability notification", &v34, 0xCu);
        }

        objc_autoreleasePoolPop(v17);
LABEL_17:

        goto LABEL_18;
      }

      [v15 doubleValue];
      v21 = v22;
    }

    else
    {
      v21 = 600.0;
    }

    v23 = objc_autoreleasePoolPush();
    v24 = *(a1 + 32);
    v25 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v26 = HMFGetLogIdentifier();
      v34 = 138543618;
      v35 = v26;
      v36 = 2048;
      v37 = v21;
      _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_DEFAULT, "%{public}@User preferred reachability changed, start a debounce timer with delay %f", &v34, 0x16u);
    }

    objc_autoreleasePoolPop(v23);
    v27 = [*(a1 + 32) timerFactory];
    v28 = v27[2](v21);
    [*(a1 + 32) setUserPreferredReachabilityBulletinDebounceTimer:v28];

    v29 = [*(a1 + 32) userPreferredReachabilityBulletinDebounceTimer];
    [v29 setDelegate:*(a1 + 32)];

    v30 = [*(a1 + 32) userPreferredReachabilityBulletinDebounceTimer];
    v31 = [*(a1 + 32) workQueue];
    [v30 setDelegateQueue:v31];

    v32 = [*(a1 + 32) userPreferredReachabilityBulletinDebounceTimer];
    [v32 resume];

    goto LABEL_17;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    v34 = 138543362;
    v35 = v12;
    _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@User preferred reachability bulletin debounce timer is active", &v34, 0xCu);
  }

  objc_autoreleasePoolPop(v8);
LABEL_18:
  v33 = *MEMORY[0x277D85DE8];
}

- (void)_handleResidentUpdated:(id)updated
{
  updatedCopy = updated;
  workQueue = [(HMDResidentReachabilityNotificationManager *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __69__HMDResidentReachabilityNotificationManager__handleResidentUpdated___block_invoke;
  v7[3] = &unk_27868A750;
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
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Resident Reachability changed, checking home: %@", &v10, 0x16u);
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
    if ([primaryResidentDevice2 isReachable])
    {

      v15 = 0.0;
    }

    else
    {
      residentDeviceManager3 = [home residentDeviceManager];
      primaryResidentDevice3 = [residentDeviceManager3 primaryResidentDevice];
      isReachableByIDS = [primaryResidentDevice3 isReachableByIDS];

      v15 = 0.0;
      if ((isReachableByIDS & 1) == 0)
      {
        HMFUptime();
      }
    }

    [(HMDResidentReachabilityNotificationManager *)self setPrimaryResidentUnreachableTime:v15];
    v12 = home;
  }
}

- (void)_handleResidentRemoved:(id)removed
{
  workQueue = [(HMDResidentReachabilityNotificationManager *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__HMDResidentReachabilityNotificationManager__handleResidentRemoved___block_invoke;
  block[3] = &unk_27868A728;
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
      _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@A resident was removed, starting debounce timer", &v12, 0xCu);
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
      _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@Last resident was reomved", &v12, 0xCu);
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
  block[3] = &unk_27868A728;
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
    v8 = &stru_283CF9D50;
    if (v7)
    {
      v8 = @"re";
    }

    v11 = 138543618;
    v12 = v5;
    v13 = 2112;
    v14 = v8;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@A resident was added, %@starting debounce timer", &v11, 0x16u);
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
  block[3] = &unk_27868A728;
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
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@Network became reachable, starting debounce timer", &v12, 0xCu);
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
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@Network became unreachable, clearing debounce timer", &v12, 0xCu);
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
  block[3] = &unk_278688978;
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
  v22 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = HMFGetLogIdentifier();
    v20 = 138543362;
    v21 = v5;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@Starting debounce timer", &v20, 0xCu);
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
  v16 = *(a1 + 32);
  v15 = *(a1 + 40);
  v17 = [*(a1 + 48) residentDeviceManager];
  [v15 addObserver:v16 selector:sel__handleUserPreferredResidentReachable_ name:@"HMDResidentDeviceManagerUserPreferredResidentReachabilityNotification" object:v17];

  result = *(a1 + 64);
  if (result)
  {
    result = (*(result + 16))();
  }

  v19 = *MEMORY[0x277D85DE8];
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
  v22.receiver = self;
  v22.super_class = HMDResidentReachabilityNotificationManager;
  v15 = [(HMDResidentReachabilityNotificationManager *)&v22 init];
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
    v19 = objc_alloc_init(HMDResidentReachabilityContext);
    userPreferredReachabilityContext = v16->_userPreferredReachabilityContext;
    v16->_userPreferredReachabilityContext = v19;
  }

  return v16;
}

- (HMDResidentReachabilityNotificationManager)initWithResidentReachabilityContext:(id)context workQueue:(id)queue
{
  queueCopy = queue;
  contextCopy = context;
  v8 = +[HMDBulletinBoard sharedBulletinBoard];
  v9 = [(HMDResidentReachabilityNotificationManager *)self initWithResidentReachabilityContext:contextCopy workQueue:queueCopy timerFactory:&__block_literal_global_209138 bulletinBoard:v8];

  return v9;
}

id __92__HMDResidentReachabilityNotificationManager_initWithResidentReachabilityContext_workQueue___block_invoke(double a1)
{
  v1 = [objc_alloc(MEMORY[0x277D0F920]) initWithTimeInterval:0 options:a1];

  return v1;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t37 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t37, &__block_literal_global_47_209144);
  }

  v3 = logCategory__hmf_once_v38;

  return v3;
}

void __57__HMDResidentReachabilityNotificationManager_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v38;
  logCategory__hmf_once_v38 = v1;
}

@end