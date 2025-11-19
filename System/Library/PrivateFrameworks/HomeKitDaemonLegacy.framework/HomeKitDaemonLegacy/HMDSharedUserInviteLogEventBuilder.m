@interface HMDSharedUserInviteLogEventBuilder
+ (id)logCategory;
+ (unint64_t)_invitationAgeFromSeconds:(double)a3;
- (BOOL)isIDSAvailable;
- (BOOL)isNetworkAvailable;
- (BOOL)isReady;
- (BOOL)isiCloudSignedIn;
- (HMDSharedUserInviteLogEventBuilder)initWithLogEvent:(id)a3 homeManager:(id)a4 sessionIdentifier:(id)a5 invitationType:(unint64_t)a6 invitationAge:(double)a7 invitationSource:(unint64_t)a8 logEventSubmitter:(id)a9 wifiManager:(id)a10 currentUpTicksBlock:(id)a11 submissionTimerFactory:(id)a12;
- (id)logIdentifier;
- (int64_t)IDSAccountRegistrationError;
- (int64_t)IDSAccountRegistrationStatus;
- (void)cancel;
- (void)markAddUserBegin;
- (void)markAddUserEnd;
- (void)markError:(id)a3;
- (void)markTransientError:(id)a3;
- (void)requestRadarIfNeeded;
- (void)startSubmissionTimer;
- (void)submit;
- (void)submitIfReady;
- (void)timerDidFire:(id)a3;
@end

@implementation HMDSharedUserInviteLogEventBuilder

- (id)logIdentifier
{
  if (self)
  {
    self = objc_getProperty(self, a2, 40, 1);
  }

  v2 = [(HMDSharedUserInviteLogEventBuilder *)self sessionIdentifier];
  v3 = [v2 UUIDString];
  v4 = [v3 substringToIndex:8];

  return v4;
}

- (void)timerDidFire:(id)a3
{
  v12 = a3;
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
  v7 = [v6 error];

  if (!v7)
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
  v3 = [v2 isLoggedInToPrimaryAccount];

  return v3;
}

- (BOOL)isNetworkAvailable
{
  if (self)
  {
    self = objc_getProperty(self, a2, 64, 1);
  }

  v2 = [(HMDSharedUserInviteLogEventBuilder *)self currentNetworkAssociation];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)isIDSAvailable
{
  v2 = +[HMDAppleAccountManager sharedManager];
  v3 = [v2 isServiceActive];

  return v3;
}

- (int64_t)IDSAccountRegistrationStatus
{
  v2 = +[HMDAppleAccountManager sharedManager];
  v3 = [v2 IDSAccountRegistrationStatus];

  return v3;
}

- (int64_t)IDSAccountRegistrationError
{
  v2 = +[HMDAppleAccountManager sharedManager];
  v3 = [v2 IDSAccountRegistrationError];

  return v3;
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
  v2 = self;
  v33 = *MEMORY[0x277D85DE8];
  if (self)
  {
    self = objc_getProperty(self, a2, 40, 1);
  }

  if (([(HMDSharedUserInviteLogEventBuilder *)self invitationSource]& 2) != 0)
  {
    v24 = objc_autoreleasePoolPush();
    v25 = v2;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v27 = HMFGetLogIdentifier();
      *buf = 138543362;
      v30 = v27;
      _os_log_impl(&dword_2531F8000, v26, OS_LOG_TYPE_DEFAULT, "%{public}@Not requesting radar for a retry", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v24);
  }

  else
  {
    if (v2)
    {
      Property = objc_getProperty(v2, v3, 40, 1);
    }

    else
    {
      Property = 0;
    }

    v5 = [Property error];

    if (v5)
    {
      if (v2)
      {
        v7 = objc_getProperty(v2, v6, 40, 1);
      }

      else
      {
        v7 = 0;
      }

      v8 = [v7 error];
      v9 = MEMORY[0x277CCACA8];
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v12 = [v8 domain];
      v13 = [v9 stringWithFormat:@"[%@]%@ %@ %ld", v11, @"Shared user invitation failed", v12, objc_msgSend(v8, "code")];

      v14 = [v8 underlyingErrors];
      v15 = [v14 firstObject];

      if (v15)
      {
        v16 = MEMORY[0x277CCACA8];
        v17 = [v15 domain];
        v18 = [v16 stringWithFormat:@"%@ / %@ %ld", v13, v17, objc_msgSend(v15, "code")];

        v13 = v18;
      }

      v19 = objc_autoreleasePoolPush();
      v20 = v2;
      v21 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v22 = HMFGetLogIdentifier();
        *buf = 138543618;
        v30 = v22;
        v31 = 2112;
        v32 = v13;
        _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_ERROR, "%{public}@Requesting radar with title: %@", buf, 0x16u);
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
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = HMFGetLogIdentifier();
    v8 = 138543362;
    v9 = v6;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@cancel", &v8, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  os_unfair_lock_lock_with_options();
  if (!v4->submitted)
  {
    v4->cancelled = 1;
  }

  os_unfair_lock_unlock(&v4->_lock);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)markTransientError:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = HMFGetLogIdentifier();
    v12 = 138543618;
    v13 = v8;
    v14 = 2112;
    v15 = v4;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@markTransientError %@", &v12, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  os_unfair_lock_lock_with_options();
  if (v4 && !v6->submitted)
  {
    v10 = objc_getProperty(v6, v9, 40, 1);
    [v10 setLastTransientError:v4];
  }

  os_unfair_lock_unlock(&v6->_lock);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)markError:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = HMFGetLogIdentifier();
    v16 = 138543618;
    v17 = v8;
    v18 = 2112;
    v19 = v4;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@markError %@", &v16, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  os_unfair_lock_lock_with_options();
  if (!v6->submitted)
  {
    if (v4)
    {
      v10 = objc_getProperty(v6, v9, 40, 1);
      [v10 setError:v4];
    }

    v11 = objc_autoreleasePoolPush();
    v12 = v6;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v16 = 138543618;
      v17 = v14;
      v18 = 2112;
      v19 = v4;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_ERROR, "%{public}@Shared user invite error occurred. Logging error metric %@", &v16, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    [(HMDSharedUserInviteLogEventBuilder *)v12 submit];
  }

  os_unfair_lock_unlock(&v6->_lock);

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
  v2 = self;
  if (self)
  {
    self = objc_getProperty(self, a2, 56, 1);
  }

  v3 = (self->eventCreatedTime)(self, a2);
  v5 = v3;
  if (v2)
  {
    objc_setProperty_atomic(v2, v4, v3, 72);

    [objc_getProperty(v2 v6];
    Property = objc_getProperty(v2, v7, 72, 1);
  }

  else
  {

    [0 setDelegate:0];
    Property = 0;
  }

  [Property resume];
}

- (HMDSharedUserInviteLogEventBuilder)initWithLogEvent:(id)a3 homeManager:(id)a4 sessionIdentifier:(id)a5 invitationType:(unint64_t)a6 invitationAge:(double)a7 invitationSource:(unint64_t)a8 logEventSubmitter:(id)a9 wifiManager:(id)a10 currentUpTicksBlock:(id)a11 submissionTimerFactory:(id)a12
{
  v46 = *MEMORY[0x277D85DE8];
  v19 = a3;
  v20 = a4;
  v21 = a5;
  v22 = a9;
  v40 = a10;
  v23 = v20;
  v24 = a11;
  v25 = a12;
  v41.receiver = self;
  v41.super_class = HMDSharedUserInviteLogEventBuilder;
  v26 = [(HMDSharedUserInviteLogEventBuilder *)&v41 init];
  v27 = v26;
  if (v26)
  {
    objc_storeStrong(&v26->_logEvent, a3);
    objc_storeWeak(&v27->_logEventSubmitter, v22);
    v28 = _Block_copy(v24);
    currentUpTicksBlock = v27->_currentUpTicksBlock;
    v27->_currentUpTicksBlock = v28;

    v30 = _Block_copy(v25);
    submissionTimerFactory = v27->_submissionTimerFactory;
    v27->_submissionTimerFactory = v30;

    objc_storeStrong(&v27->_wifiManager, a10);
    v27->eventCreatedTime = v24[2](v24);
    [v19 setSessionIdentifier:v21];
    [v19 setInvitationType:a6];
    [v19 setInvitationAge:{+[HMDSharedUserInviteLogEventBuilder _invitationAgeFromSeconds:](HMDSharedUserInviteLogEventBuilder, "_invitationAgeFromSeconds:", a7)}];
    [v19 setInvitationAgeSeconds:a7];
    [v19 setInvitationSource:a8];
    [v19 setICloudSignedIn:{-[HMDSharedUserInviteLogEventBuilder isiCloudSignedIn](v27, "isiCloudSignedIn")}];
    [v19 setManateeAvailable:{objc_msgSend(v23, "pcsEnabled")}];
    [v19 setNetworkAvailable:{-[HMDSharedUserInviteLogEventBuilder isNetworkAvailable](v27, "isNetworkAvailable")}];
    [v19 setIDSAvailable:{-[HMDSharedUserInviteLogEventBuilder isIDSAvailable](v27, "isIDSAvailable")}];
    [v19 setIDSRegistrationStatus:{-[HMDSharedUserInviteLogEventBuilder IDSAccountRegistrationStatus](v27, "IDSAccountRegistrationStatus")}];
    [v19 setIDSRegistrationError:{-[HMDSharedUserInviteLogEventBuilder IDSAccountRegistrationError](v27, "IDSAccountRegistrationError")}];
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
    v45 = v21;
    _os_log_impl(&dword_2531F8000, v34, OS_LOG_TYPE_DEFAULT, "%{public}@Creating with sessionIdentifier %@", buf, 0x16u);

    v23 = v35;
  }

  objc_autoreleasePoolPop(v32);
  v37 = *MEMORY[0x277D85DE8];
  return v33;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t11_164040 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t11_164040, &__block_literal_global_164041);
  }

  v3 = logCategory__hmf_once_v12_164042;

  return v3;
}

uint64_t __49__HMDSharedUserInviteLogEventBuilder_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v12_164042;
  logCategory__hmf_once_v12_164042 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

+ (unint64_t)_invitationAgeFromSeconds:(double)a3
{
  if (a3 < 3600.0)
  {
    return 0;
  }

  if (a3 < 7200.0)
  {
    return 1;
  }

  if (a3 < 10800.0)
  {
    return 2;
  }

  if (a3 < 14400.0)
  {
    return 3;
  }

  if (a3 < 18000.0)
  {
    return 4;
  }

  if (a3 >= 36000.0)
  {
    return 6;
  }

  return 5;
}

@end