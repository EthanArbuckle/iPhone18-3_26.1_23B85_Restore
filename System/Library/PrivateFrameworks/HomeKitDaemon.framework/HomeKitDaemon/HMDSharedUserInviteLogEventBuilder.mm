@interface HMDSharedUserInviteLogEventBuilder
+ (id)logCategory;
+ (unint64_t)_invitationAgeFromSeconds:(double)seconds;
- (BOOL)isIDSAvailable;
- (BOOL)isNetworkAvailable;
- (BOOL)isReady;
- (BOOL)isiCloudSignedIn;
- (HMDSharedUserInviteLogEventBuilder)initWithLogEvent:(id)event homeManager:(id)manager sessionIdentifier:(id)identifier invitationType:(unint64_t)type invitationAge:(double)age invitationSource:(unint64_t)source logEventSubmitter:(id)submitter wifiManager:(id)self0 currentUpTicksBlock:(id)self1 submissionTimerFactory:(id)self2;
- (id)logIdentifier;
- (int64_t)IDSAccountRegistrationError;
- (int64_t)IDSAccountRegistrationStatus;
- (void)cancel;
- (void)markAddUserBegin;
- (void)markAddUserEnd;
- (void)markError:(id)error;
- (void)markTransientError:(id)error;
- (void)requestRadarIfNeeded;
- (void)startSubmissionTimer;
- (void)submit;
- (void)submitIfReady;
- (void)timerDidFire:(id)fire;
@end

@implementation HMDSharedUserInviteLogEventBuilder

- (id)logIdentifier
{
  if (self)
  {
    self = objc_getProperty(self, a2, 40, 1);
  }

  sessionIdentifier = [(HMDSharedUserInviteLogEventBuilder *)self sessionIdentifier];
  uUIDString = [sessionIdentifier UUIDString];
  v4 = [uUIDString substringToIndex:8];

  return v4;
}

- (void)timerDidFire:(id)fire
{
  fireCopy = fire;
  os_unfair_lock_lock_with_options();
  if (self)
  {
    Property = objc_getProperty(self, v4, 40, 1);
  }

  else
  {
    Property = 0;
  }

  v6 = Property;
  error = [v6 error];

  if (!error)
  {
    v9 = [MEMORY[0x277CCA9B8] hmErrorWithCode:8];
    if (self)
    {
      v10 = objc_getProperty(self, v8, 40, 1);
    }

    else
    {
      v10 = 0;
    }

    v11 = v10;
    [v11 setError:v9];
  }

  [(HMDSharedUserInviteLogEventBuilder *)self submit];
  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)isiCloudSignedIn
{
  v2 = +[HMDAppleAccountManager sharedManager];
  isLoggedInToPrimaryAccount = [v2 isLoggedInToPrimaryAccount];

  return isLoggedInToPrimaryAccount;
}

- (BOOL)isNetworkAvailable
{
  if (self)
  {
    self = objc_getProperty(self, a2, 64, 1);
  }

  currentNetworkAssociation = [(HMDSharedUserInviteLogEventBuilder *)self currentNetworkAssociation];
  v3 = currentNetworkAssociation != 0;

  return v3;
}

- (BOOL)isIDSAvailable
{
  v2 = +[HMDAppleAccountManager sharedManager];
  isServiceActive = [v2 isServiceActive];

  return isServiceActive;
}

- (int64_t)IDSAccountRegistrationStatus
{
  v2 = +[HMDAppleAccountManager sharedManager];
  iDSAccountRegistrationStatus = [v2 IDSAccountRegistrationStatus];

  return iDSAccountRegistrationStatus;
}

- (int64_t)IDSAccountRegistrationError
{
  v2 = +[HMDAppleAccountManager sharedManager];
  iDSAccountRegistrationError = [v2 IDSAccountRegistrationError];

  return iDSAccountRegistrationError;
}

- (void)submit
{
  os_unfair_lock_assert_owner(&self->_lock);
  if (!self->cancelled && !self->submitted)
  {
    self->submitted = 1;
    [objc_getProperty(self v3];
    objc_setProperty_atomic(self, v4, 0, 72);
    WeakRetained = objc_loadWeakRetained(&self->_logEventSubmitter);
    [WeakRetained submitLogEvent:{objc_getProperty(self, v6, 40, 1)}];

    [(HMDSharedUserInviteLogEventBuilder *)self requestRadarIfNeeded];
  }
}

- (void)requestRadarIfNeeded
{
  selfCopy = self;
  v33 = *MEMORY[0x277D85DE8];
  if (self)
  {
    self = objc_getProperty(self, a2, 40, 1);
  }

  if (([(HMDSharedUserInviteLogEventBuilder *)self invitationSource]& 2) != 0)
  {
    v24 = objc_autoreleasePoolPush();
    v25 = selfCopy;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v27 = HMFGetLogIdentifier();
      *buf = 138543362;
      v30 = v27;
      _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_DEFAULT, "%{public}@Not requesting radar for a retry", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v24);
  }

  else
  {
    if (selfCopy)
    {
      Property = objc_getProperty(selfCopy, v3, 40, 1);
    }

    else
    {
      Property = 0;
    }

    error = [Property error];

    if (error)
    {
      if (selfCopy)
      {
        v7 = objc_getProperty(selfCopy, v6, 40, 1);
      }

      else
      {
        v7 = 0;
      }

      error2 = [v7 error];
      v9 = MEMORY[0x277CCACA8];
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      domain = [error2 domain];
      v13 = [v9 stringWithFormat:@"[%@]%@ %@ %ld", v11, @"Shared user invitation failed", domain, objc_msgSend(error2, "code")];

      underlyingErrors = [error2 underlyingErrors];
      firstObject = [underlyingErrors firstObject];

      if (firstObject)
      {
        v16 = MEMORY[0x277CCACA8];
        domain2 = [firstObject domain];
        v18 = [v16 stringWithFormat:@"%@ / %@ %ld", v13, domain2, objc_msgSend(firstObject, "code")];

        v13 = v18;
      }

      v19 = objc_autoreleasePoolPush();
      v20 = selfCopy;
      v21 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v22 = HMFGetLogIdentifier();
        *buf = 138543618;
        v30 = v22;
        v31 = 2112;
        v32 = v13;
        _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_ERROR, "%{public}@Requesting radar with title: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v19);
      v23 = +[HMDTTRManager sharedManager];
      [v23 requestRadarWithDisplayReason:@"shared user invitation failed" radarTitle:v13 componentName:@"HomeKit" componentVersion:@"Users+Invitations" componentID:938670];
    }
  }

  v28 = *MEMORY[0x277D85DE8];
}

- (void)submitIfReady
{
  os_unfair_lock_assert_owner(&self->_lock);
  if ([(HMDSharedUserInviteLogEventBuilder *)self isReady])
  {

    [(HMDSharedUserInviteLogEventBuilder *)self submit];
  }
}

- (BOOL)isReady
{
  os_unfair_lock_assert_owner(&self->_lock);
  cancelled = self->cancelled;
  if (!cancelled)
  {
    [objc_getProperty(self v3];
  }

  return !cancelled;
}

- (void)cancel
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = HMFGetLogIdentifier();
    v8 = 138543362;
    v9 = v6;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@cancel", &v8, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  os_unfair_lock_lock_with_options();
  if (!selfCopy->submitted)
  {
    selfCopy->cancelled = 1;
  }

  os_unfair_lock_unlock(&selfCopy->_lock);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)markTransientError:(id)error
{
  v16 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = HMFGetLogIdentifier();
    v12 = 138543618;
    v13 = v8;
    v14 = 2112;
    v15 = errorCopy;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@markTransientError %@", &v12, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  os_unfair_lock_lock_with_options();
  if (errorCopy && !selfCopy->submitted)
  {
    v10 = objc_getProperty(selfCopy, v9, 40, 1);
    [v10 setLastTransientError:errorCopy];
  }

  os_unfair_lock_unlock(&selfCopy->_lock);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)markError:(id)error
{
  v20 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = HMFGetLogIdentifier();
    v16 = 138543618;
    v17 = v8;
    v18 = 2112;
    v19 = errorCopy;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@markError %@", &v16, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  os_unfair_lock_lock_with_options();
  if (!selfCopy->submitted)
  {
    if (errorCopy)
    {
      v10 = objc_getProperty(selfCopy, v9, 40, 1);
      [v10 setError:errorCopy];
    }

    v11 = objc_autoreleasePoolPush();
    v12 = selfCopy;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v16 = 138543618;
      v17 = v14;
      v18 = 2112;
      v19 = errorCopy;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_ERROR, "%{public}@Shared user invite error occurred. Logging error metric %@", &v16, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    [(HMDSharedUserInviteLogEventBuilder *)v12 submit];
  }

  os_unfair_lock_unlock(&selfCopy->_lock);

  v15 = *MEMORY[0x277D85DE8];
}

- (void)markAddUserEnd
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"You must override %@ in a subclass", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

- (void)markAddUserBegin
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"You must override %@ in a subclass", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

- (void)startSubmissionTimer
{
  selfCopy = self;
  if (self)
  {
    self = objc_getProperty(self, a2, 56, 1);
  }

  v3 = (self->eventCreatedTime)(self, a2);
  v5 = v3;
  if (selfCopy)
  {
    objc_setProperty_atomic(selfCopy, v4, v3, 72);

    [objc_getProperty(selfCopy v6];
    Property = objc_getProperty(selfCopy, v7, 72, 1);
  }

  else
  {

    [0 setDelegate:0];
    Property = 0;
  }

  [Property resume];
}

- (HMDSharedUserInviteLogEventBuilder)initWithLogEvent:(id)event homeManager:(id)manager sessionIdentifier:(id)identifier invitationType:(unint64_t)type invitationAge:(double)age invitationSource:(unint64_t)source logEventSubmitter:(id)submitter wifiManager:(id)self0 currentUpTicksBlock:(id)self1 submissionTimerFactory:(id)self2
{
  v46 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  managerCopy = manager;
  identifierCopy = identifier;
  submitterCopy = submitter;
  wifiManagerCopy = wifiManager;
  v23 = managerCopy;
  blockCopy = block;
  factoryCopy = factory;
  v41.receiver = self;
  v41.super_class = HMDSharedUserInviteLogEventBuilder;
  v26 = [(HMDSharedUserInviteLogEventBuilder *)&v41 init];
  v27 = v26;
  if (v26)
  {
    objc_storeStrong(&v26->_logEvent, event);
    objc_storeWeak(&v27->_logEventSubmitter, submitterCopy);
    v28 = _Block_copy(blockCopy);
    currentUpTicksBlock = v27->_currentUpTicksBlock;
    v27->_currentUpTicksBlock = v28;

    v30 = _Block_copy(factoryCopy);
    submissionTimerFactory = v27->_submissionTimerFactory;
    v27->_submissionTimerFactory = v30;

    objc_storeStrong(&v27->_wifiManager, wifiManager);
    v27->eventCreatedTime = blockCopy[2](blockCopy);
    [eventCopy setSessionIdentifier:identifierCopy];
    [eventCopy setInvitationType:type];
    [eventCopy setInvitationAge:{+[HMDSharedUserInviteLogEventBuilder _invitationAgeFromSeconds:](HMDSharedUserInviteLogEventBuilder, "_invitationAgeFromSeconds:", age)}];
    [eventCopy setInvitationAgeSeconds:age];
    [eventCopy setInvitationSource:source];
    [eventCopy setICloudSignedIn:{-[HMDSharedUserInviteLogEventBuilder isiCloudSignedIn](v27, "isiCloudSignedIn")}];
    [eventCopy setManateeAvailable:{objc_msgSend(v23, "pcsEnabled")}];
    [eventCopy setNetworkAvailable:{-[HMDSharedUserInviteLogEventBuilder isNetworkAvailable](v27, "isNetworkAvailable")}];
    [eventCopy setIDSAvailable:{-[HMDSharedUserInviteLogEventBuilder isIDSAvailable](v27, "isIDSAvailable")}];
    [eventCopy setIDSRegistrationStatus:{-[HMDSharedUserInviteLogEventBuilder IDSAccountRegistrationStatus](v27, "IDSAccountRegistrationStatus")}];
    [eventCopy setIDSRegistrationError:{-[HMDSharedUserInviteLogEventBuilder IDSAccountRegistrationError](v27, "IDSAccountRegistrationError")}];
    [(HMDSharedUserInviteLogEventBuilder *)v27 startSubmissionTimer];
  }

  v32 = objc_autoreleasePoolPush();
  v33 = v27;
  v34 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
  {
    HMFGetLogIdentifier();
    v36 = v35 = v23;
    *buf = 138543618;
    v43 = v36;
    v44 = 2112;
    v45 = identifierCopy;
    _os_log_impl(&dword_229538000, v34, OS_LOG_TYPE_DEFAULT, "%{public}@Creating with sessionIdentifier %@", buf, 0x16u);

    v23 = v35;
  }

  objc_autoreleasePoolPop(v32);
  v37 = *MEMORY[0x277D85DE8];
  return v33;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t11_59839 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t11_59839, &__block_literal_global_59840);
  }

  v3 = logCategory__hmf_once_v12_59841;

  return v3;
}

void __49__HMDSharedUserInviteLogEventBuilder_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v12_59841;
  logCategory__hmf_once_v12_59841 = v1;
}

+ (unint64_t)_invitationAgeFromSeconds:(double)seconds
{
  if (seconds < 3600.0)
  {
    return 0;
  }

  if (seconds < 7200.0)
  {
    return 1;
  }

  if (seconds < 10800.0)
  {
    return 2;
  }

  if (seconds < 14400.0)
  {
    return 3;
  }

  if (seconds < 18000.0)
  {
    return 4;
  }

  if (seconds >= 36000.0)
  {
    return 6;
  }

  return 5;
}

@end