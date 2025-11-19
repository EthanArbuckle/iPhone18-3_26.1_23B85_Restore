@interface HMDHomeInvitation
+ (id)noRetryDate;
- (HMDHome)home;
- (HMDHomeInvitation)initWithCoder:(id)a3 invitationData:(id)a4;
- (HMDHomeInvitation)initWithInvitationData:(id)a3 forHome:(id)a4;
- (NSDate)endDate;
- (NSDate)startDate;
- (NSUUID)identifier;
- (double)age;
- (id)describeWithFormat;
- (int64_t)invitationState;
- (void)_clearTimer;
- (void)_configureTimer;
- (void)_resolve:(BOOL)a3;
- (void)encodeWithCoder:(id)a3;
- (void)expire;
- (void)setEndDate:(id)a3;
- (void)updateInvitationState:(int64_t)a3;
- (void)updateTimer:(unint64_t)a3 clientQueue:(id)a4;
@end

@implementation HMDHomeInvitation

- (HMDHome)home
{
  WeakRetained = objc_loadWeakRetained(&self->_home);

  return WeakRetained;
}

- (id)describeWithFormat
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(HMDHomeInvitation *)self identifier];
  v5 = [v4 UUIDString];
  v6 = [(HMDHomeInvitation *)self startDate];
  v7 = [(HMDHomeInvitation *)self endDate];
  v8 = [MEMORY[0x277CD1A88] homeInvitationStateDescription:{-[HMDHomeInvitation invitationState](self, "invitationState")}];
  v9 = [(HMDHomeInvitation *)self home];
  v10 = [v9 name];
  v11 = [v3 stringWithFormat:@"(IV), identifier = %@, startDate = %@, endDate = %@, state = %@, home = %@  ", v5, v6, v7, v8, v10];

  return v11;
}

- (void)_resolve:(BOOL)a3
{
  v3 = a3;
  v19 = *MEMORY[0x277D85DE8];
  if ([(HMDHomeInvitation *)self isPending])
  {
    if (v3)
    {
      v5 = 3;
    }

    else
    {
      v5 = 4;
    }

    [(HMDHomeInvitation *)self updateInvitationState:v5];
    v6 = [(HMDHomeInvitation *)self clientQueue];

    if (v6)
    {
      objc_initWeak(location, self);
      v7 = [(HMDHomeInvitation *)self clientQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __30__HMDHomeInvitation__resolve___block_invoke;
      block[3] = &unk_27972F5B0;
      objc_copyWeak(&v14, location);
      v15 = v3;
      block[4] = self;
      dispatch_async(v7, block);

      objc_destroyWeak(&v14);
      objc_destroyWeak(location);
    }

    else
    {
      v8 = objc_autoreleasePoolPush();
      v9 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = HMFGetLogIdentifier();
        v11 = [(HMDHomeInvitation *)self identifier];
        *location = 138543618;
        *&location[4] = v10;
        v17 = 2112;
        v18 = v11;
        _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@Not calling invitation (%@) resolution handler, no client queue set", location, 0x16u);
      }

      objc_autoreleasePoolPop(v8);
      [(HMDHomeInvitation *)self _clearTimer];
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __30__HMDHomeInvitation__resolve___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v3 = [WeakRetained resolutionHandler];

    WeakRetained = v5;
    if (v3)
    {
      v4 = [v5 resolutionHandler];
      v4[2](v4, *(a1 + 48));

      [*(a1 + 32) _clearTimer];
      WeakRetained = v5;
    }
  }
}

- (void)_clearTimer
{
  v3 = [(HMDHomeInvitation *)self timer];
  [v3 cancel];

  [(HMDHomeInvitation *)self setTimer:0];
  [(HMDHomeInvitation *)self setClientQueue:0];
  [(HMDHomeInvitation *)self setResolutionHandler:0];

  [(HMDHomeInvitation *)self setExpirationHandler:0];
}

- (void)_configureTimer
{
  v3 = [(HMDHomeInvitation *)self endDate];
  v4 = [MEMORY[0x277CBEAA8] date];
  [v3 timeIntervalSinceDate:v4];
  v6 = v5;

  if (v6 <= 3.0)
  {

    [(HMDHomeInvitation *)self expire];
  }

  else
  {
    v7 = [objc_alloc(MEMORY[0x277D0F920]) initWithTimeInterval:1 options:v6];
    [(HMDHomeInvitation *)self setTimer:v7];

    v8 = [(HMDHomeInvitation *)self timer];
    [v8 setDelegate:self];

    v9 = [(HMDHomeInvitation *)self timer];
    [v9 resume];
  }
}

- (void)expire
{
  v15 = *MEMORY[0x277D85DE8];
  if ([(HMDHomeInvitation *)self isPending])
  {
    [(HMDHomeInvitation *)self updateInvitationState:6];
    v3 = [(HMDHomeInvitation *)self clientQueue];

    if (v3)
    {
      objc_initWeak(location, self);
      v4 = [(HMDHomeInvitation *)self clientQueue];
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __27__HMDHomeInvitation_expire__block_invoke;
      v10[3] = &unk_279732E78;
      objc_copyWeak(&v11, location);
      v10[4] = self;
      dispatch_async(v4, v10);

      objc_destroyWeak(&v11);
      objc_destroyWeak(location);
    }

    else
    {
      v5 = objc_autoreleasePoolPush();
      v6 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = HMFGetLogIdentifier();
        v8 = [(HMDHomeInvitation *)self identifier];
        *location = 138543618;
        *&location[4] = v7;
        v13 = 2112;
        v14 = v8;
        _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@Not calling invitation (%@) expiration handler, no client queue set", location, 0x16u);
      }

      objc_autoreleasePoolPop(v5);
      [(HMDHomeInvitation *)self _clearTimer];
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __27__HMDHomeInvitation_expire__block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained && ([WeakRetained expirationHandler], v4 = objc_claimAutoreleasedReturnValue(), v4, v4))
  {
    v5 = objc_autoreleasePoolPush();
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = HMFGetLogIdentifier();
      v8 = [*(a1 + 32) identifier];
      v15 = 138543618;
      v16 = v7;
      v17 = 2112;
      v18 = v8;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@Calling invitation (%@) expiration handler", &v15, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    v9 = [v3 expirationHandler];
    v9[2]();
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = HMFGetLogIdentifier();
      v13 = [*(a1 + 32) identifier];
      v15 = 138543618;
      v16 = v12;
      v17 = 2112;
      v18 = v13;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@Not calling invitation (%@) expiration handler, not set", &v15, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
  }

  [*(a1 + 32) _clearTimer];

  v14 = *MEMORY[0x277D85DE8];
}

- (void)updateTimer:(unint64_t)a3 clientQueue:(id)a4
{
  v6 = a4;
  v9 = [(HMDHomeInvitation *)self resolutionHandler];
  v7 = [(HMDHomeInvitation *)self expirationHandler];
  [(HMDHomeInvitation *)self _clearTimer];
  v8 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:a3];
  [(HMDHomeInvitation *)self setEndDate:v8];

  [(HMDHomeInvitation *)self _configureTimer];
  [(HMDHomeInvitation *)self setClientQueue:v6];

  [(HMDHomeInvitation *)self setResolutionHandler:v9];
  [(HMDHomeInvitation *)self setExpirationHandler:v7];
}

- (void)updateInvitationState:(int64_t)a3
{
  v4 = [(HMDHomeInvitation *)self invitationData];
  [v4 setInvitationState:a3];
}

- (double)age
{
  v3 = [MEMORY[0x277CBEAA8] now];
  v4 = [(HMDHomeInvitation *)self startDate];
  [v3 timeIntervalSinceDate:v4];
  v6 = v5;

  return v6;
}

- (int64_t)invitationState
{
  v2 = [(HMDHomeInvitation *)self invitationData];
  v3 = [v2 invitationState];

  return v3;
}

- (void)setEndDate:(id)a3
{
  v4 = a3;
  v5 = [(HMDHomeInvitation *)self invitationData];
  [v5 setEndDate:v4];
}

- (NSDate)endDate
{
  v2 = [(HMDHomeInvitation *)self invitationData];
  v3 = [v2 endDate];

  return v3;
}

- (NSDate)startDate
{
  v2 = [(HMDHomeInvitation *)self invitationData];
  v3 = [v2 startDate];

  return v3;
}

- (NSUUID)identifier
{
  v2 = [(HMDHomeInvitation *)self invitationData];
  v3 = [v2 identifier];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(HMDHomeInvitation *)self home];
  [v4 encodeConditionalObject:v5 forKey:@"home"];

  v6 = [(HMDHomeInvitation *)self invitationData];
  [v4 encodeObject:v6 forKey:@"HM.invitationData"];
}

- (HMDHomeInvitation)initWithCoder:(id)a3 invitationData:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 decodeObjectOfClass:objc_opt_class() forKey:@"home"];

  v9 = [(HMDHomeInvitation *)self initWithInvitationData:v6 forHome:v8];
  return v9;
}

- (HMDHomeInvitation)initWithInvitationData:(id)a3 forHome:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = HMDHomeInvitation;
  v9 = [(HMDHomeInvitation *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_invitationData, a3);
    objc_storeWeak(&v10->_home, v8);
    [(HMDHomeInvitation *)v10 _configureTimer];
  }

  return v10;
}

+ (id)noRetryDate
{
  if (noRetryDate_noRetryDate)
  {
    v2 = noRetryDate_noRetryDate;
  }

  else
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEAB8]);
    [v3 setYear:4001];
    [v3 setMonth:1];
    [v3 setDay:1];
    v4 = [MEMORY[0x277CBEA80] currentCalendar];
    v5 = [v4 dateFromComponents:v3];
    v6 = noRetryDate_noRetryDate;
    noRetryDate_noRetryDate = v5;

    v2 = noRetryDate_noRetryDate;
  }

  return v2;
}

@end