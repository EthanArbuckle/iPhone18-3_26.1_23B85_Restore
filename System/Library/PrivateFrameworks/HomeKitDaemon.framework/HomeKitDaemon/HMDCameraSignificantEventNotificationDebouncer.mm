@interface HMDCameraSignificantEventNotificationDebouncer
+ (id)logCategory;
- (HMDCameraSignificantEventNotificationDebouncer)initWithLogIdentifier:(id)identifier;
- (void)timerDidFire:(id)fire;
- (void)trackCameraSignificantEvent:(id)event shouldNotify:(BOOL *)notify;
@end

@implementation HMDCameraSignificantEventNotificationDebouncer

- (void)timerDidFire:(id)fire
{
  v21 = *MEMORY[0x277D85DE8];
  fireCopy = fire;
  cleanupTimer = [(HMDCameraSignificantEventNotificationDebouncer *)self cleanupTimer];

  if (cleanupTimer == fireCopy)
  {
    os_unfair_lock_lock_with_options();
    v10 = MEMORY[0x277CBEB38];
    lastDateNotifiedByPersonIdentifier = [(HMDCameraSignificantEventNotificationDebouncer *)self lastDateNotifiedByPersonIdentifier];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __63__HMDCameraSignificantEventNotificationDebouncer_timerDidFire___block_invoke;
    v16[3] = &unk_278680E00;
    v16[4] = self;
    v12 = [lastDateNotifiedByPersonIdentifier na_filter:v16];
    v13 = [v10 dictionaryWithDictionary:v12];
    lastDateNotifiedByPersonIdentifier = self->_lastDateNotifiedByPersonIdentifier;
    self->_lastDateNotifiedByPersonIdentifier = v13;

    os_unfair_lock_unlock(&self->_lock);
  }

  else
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
      v20 = fireCopy;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_ERROR, "%{public}@Unrecognized timer: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
  }

  v15 = *MEMORY[0x277D85DE8];
}

BOOL __63__HMDCameraSignificantEventNotificationDebouncer_timerDidFire___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  [a3 timeIntervalSinceNow];
  v5 = v4;
  [*(a1 + 32) distinctPersonDebounceTimeInterval];
  return v5 < v6 + v6;
}

- (void)trackCameraSignificantEvent:(id)event shouldNotify:(BOOL *)notify
{
  v59 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  if ([eventCopy reason] == 2)
  {
    faceClassification = [eventCopy faceClassification];
    person = [faceClassification person];
    uUID = [person UUID];

    if (!uUID)
    {
      v28 = objc_autoreleasePoolPush();
      selfCopy = self;
      v30 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        v31 = HMFGetLogIdentifier();
        *buf = 138543618;
        v48 = v31;
        v49 = 2112;
        v50 = eventCopy;
        _os_log_impl(&dword_229538000, v30, OS_LOG_TYPE_INFO, "%{public}@Significant Event: %@ did not have a recognized person, should notify", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v28);
      if (notify)
      {
        *notify = 1;
      }

      goto LABEL_25;
    }

    v45 = 8;
    os_unfair_lock_lock_with_options();
    lastDateNotifiedByPersonIdentifier = [(HMDCameraSignificantEventNotificationDebouncer *)self lastDateNotifiedByPersonIdentifier];
    v46 = [lastDateNotifiedByPersonIdentifier objectForKeyedSubscript:uUID];

    if (v46)
    {
      v11 = [MEMORY[0x277CBEAA8] now];
      [v11 timeIntervalSinceDate:v46];
      v13 = v12;

      [(HMDCameraSignificantEventNotificationDebouncer *)self distinctPersonDebounceTimeInterval];
      v15 = v14;
      v16 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v19 = HMFGetLogIdentifier();
        [(HMDCameraSignificantEventNotificationDebouncer *)selfCopy2 distinctPersonDebounceTimeInterval];
        v21 = v20;
        v22 = HMFBooleanToString();
        *buf = 138544642;
        v48 = v19;
        v49 = 2112;
        v50 = v46;
        v51 = 2112;
        v52 = uUID;
        v53 = 2048;
        v54 = v13;
        v55 = 2048;
        v56 = v21;
        v57 = 2112;
        v58 = v22;
        _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_INFO, "%{public}@Last notification date: %@ for personIdentifier: %@, time interval: %.2f seconds, debounce interval: %.2f seconds, shouldNotify: %@", buf, 0x3Eu);
      }

      objc_autoreleasePoolPop(v16);
      if (v13 <= v15)
      {
        v23 = 0;
        if (!notify)
        {
          goto LABEL_24;
        }

        goto LABEL_23;
      }
    }

    else
    {
      v32 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v34 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
      {
        v35 = HMFGetLogIdentifier();
        *buf = 138543618;
        v48 = v35;
        v49 = 2112;
        v50 = uUID;
        _os_log_impl(&dword_229538000, v34, OS_LOG_TYPE_INFO, "%{public}@Debouncer has no record of previous notification for personIdentifier: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v32);
    }

    v36 = [MEMORY[0x277CBEAA8] now];
    lastDateNotifiedByPersonIdentifier2 = [(HMDCameraSignificantEventNotificationDebouncer *)self lastDateNotifiedByPersonIdentifier];
    [lastDateNotifiedByPersonIdentifier2 setObject:v36 forKeyedSubscript:uUID];

    v38 = objc_autoreleasePoolPush();
    selfCopy4 = self;
    v40 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
    {
      v41 = HMFGetLogIdentifier();
      lastDateNotifiedByPersonIdentifier3 = [(HMDCameraSignificantEventNotificationDebouncer *)selfCopy4 lastDateNotifiedByPersonIdentifier];
      v43 = [lastDateNotifiedByPersonIdentifier3 objectForKeyedSubscript:uUID];
      *buf = 138543874;
      v48 = v41;
      v49 = 2112;
      v50 = v43;
      v51 = 2112;
      v52 = uUID;
      _os_log_impl(&dword_229538000, v40, OS_LOG_TYPE_INFO, "%{public}@shouldNotify, tracking last notification date: %@ for personIdentifier: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v38);
    v23 = 1;
    if (!notify)
    {
      goto LABEL_24;
    }

LABEL_23:
    *notify = v23;
LABEL_24:

    os_unfair_lock_unlock((self + v45));
LABEL_25:

    goto LABEL_26;
  }

  v24 = objc_autoreleasePoolPush();
  selfCopy5 = self;
  v26 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
  {
    v27 = HMFGetLogIdentifier();
    *buf = 138543618;
    v48 = v27;
    v49 = 2112;
    v50 = eventCopy;
    _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_INFO, "%{public}@Significant Event: %@ is not for a person, should notify", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v24);
  if (notify)
  {
    *notify = 1;
  }

LABEL_26:

  v44 = *MEMORY[0x277D85DE8];
}

- (HMDCameraSignificantEventNotificationDebouncer)initWithLogIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v17.receiver = self;
  v17.super_class = HMDCameraSignificantEventNotificationDebouncer;
  v6 = [(HMDCameraSignificantEventNotificationDebouncer *)&v17 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_logIdentifier, identifier);
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    lastDateNotifiedByPersonIdentifier = v7->_lastDateNotifiedByPersonIdentifier;
    v7->_lastDateNotifiedByPersonIdentifier = dictionary;

    v7->_lock._os_unfair_lock_opaque = 0;
    mEMORY[0x277D0F8D0] = [MEMORY[0x277D0F8D0] sharedPreferences];
    v11 = [mEMORY[0x277D0F8D0] preferenceForKey:@"DistinctPersonNotificationDebounceInterval_Seconds"];
    numberValue = [v11 numberValue];

    [numberValue doubleValue];
    v7->_distinctPersonDebounceTimeInterval = v13;
    v14 = [objc_alloc(MEMORY[0x277D0F920]) initWithTimeInterval:12 options:3600.0];
    cleanupTimer = v7->_cleanupTimer;
    v7->_cleanupTimer = v14;

    [(HMFTimer *)v7->_cleanupTimer setDelegate:v7];
    [(HMFTimer *)v7->_cleanupTimer resume];
  }

  return v7;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t8_217010 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t8_217010, &__block_literal_global_217011);
  }

  v3 = logCategory__hmf_once_v9_217012;

  return v3;
}

void __61__HMDCameraSignificantEventNotificationDebouncer_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v9_217012;
  logCategory__hmf_once_v9_217012 = v1;
}

@end