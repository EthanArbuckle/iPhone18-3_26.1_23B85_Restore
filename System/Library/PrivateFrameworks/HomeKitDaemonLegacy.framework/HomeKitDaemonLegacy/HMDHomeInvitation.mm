@interface HMDHomeInvitation
+ (id)noRetryDate;
- (HMDHome)home;
- (HMDHomeInvitation)initWithCoder:(id)coder invitationData:(id)data;
- (HMDHomeInvitation)initWithInvitationData:(id)data forHome:(id)home;
- (NSDate)endDate;
- (NSDate)startDate;
- (NSUUID)identifier;
- (double)age;
- (id)describeWithFormat;
- (int64_t)invitationState;
- (void)_clearTimer;
- (void)_configureTimer;
- (void)_resolve:(BOOL)_resolve;
- (void)encodeWithCoder:(id)coder;
- (void)expire;
- (void)setEndDate:(id)date;
- (void)updateInvitationState:(int64_t)state;
- (void)updateTimer:(unint64_t)timer clientQueue:(id)queue;
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
  identifier = [(HMDHomeInvitation *)self identifier];
  uUIDString = [identifier UUIDString];
  startDate = [(HMDHomeInvitation *)self startDate];
  endDate = [(HMDHomeInvitation *)self endDate];
  v8 = [MEMORY[0x277CD1A88] homeInvitationStateDescription:{-[HMDHomeInvitation invitationState](self, "invitationState")}];
  home = [(HMDHomeInvitation *)self home];
  name = [home name];
  v11 = [v3 stringWithFormat:@"(IV), identifier = %@, startDate = %@, endDate = %@, state = %@, home = %@  ", uUIDString, startDate, endDate, v8, name];

  return v11;
}

- (void)_resolve:(BOOL)_resolve
{
  _resolveCopy = _resolve;
  v19 = *MEMORY[0x277D85DE8];
  if ([(HMDHomeInvitation *)self isPending])
  {
    if (_resolveCopy)
    {
      v5 = 3;
    }

    else
    {
      v5 = 4;
    }

    [(HMDHomeInvitation *)self updateInvitationState:v5];
    clientQueue = [(HMDHomeInvitation *)self clientQueue];

    if (clientQueue)
    {
      objc_initWeak(location, self);
      clientQueue2 = [(HMDHomeInvitation *)self clientQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __30__HMDHomeInvitation__resolve___block_invoke;
      block[3] = &unk_27972F5B0;
      objc_copyWeak(&v14, location);
      v15 = _resolveCopy;
      block[4] = self;
      dispatch_async(clientQueue2, block);

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
        identifier = [(HMDHomeInvitation *)self identifier];
        *location = 138543618;
        *&location[4] = v10;
        v17 = 2112;
        v18 = identifier;
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
  timer = [(HMDHomeInvitation *)self timer];
  [timer cancel];

  [(HMDHomeInvitation *)self setTimer:0];
  [(HMDHomeInvitation *)self setClientQueue:0];
  [(HMDHomeInvitation *)self setResolutionHandler:0];

  [(HMDHomeInvitation *)self setExpirationHandler:0];
}

- (void)_configureTimer
{
  endDate = [(HMDHomeInvitation *)self endDate];
  date = [MEMORY[0x277CBEAA8] date];
  [endDate timeIntervalSinceDate:date];
  v6 = v5;

  if (v6 <= 3.0)
  {

    [(HMDHomeInvitation *)self expire];
  }

  else
  {
    v7 = [objc_alloc(MEMORY[0x277D0F920]) initWithTimeInterval:1 options:v6];
    [(HMDHomeInvitation *)self setTimer:v7];

    timer = [(HMDHomeInvitation *)self timer];
    [timer setDelegate:self];

    timer2 = [(HMDHomeInvitation *)self timer];
    [timer2 resume];
  }
}

- (void)expire
{
  v15 = *MEMORY[0x277D85DE8];
  if ([(HMDHomeInvitation *)self isPending])
  {
    [(HMDHomeInvitation *)self updateInvitationState:6];
    clientQueue = [(HMDHomeInvitation *)self clientQueue];

    if (clientQueue)
    {
      objc_initWeak(location, self);
      clientQueue2 = [(HMDHomeInvitation *)self clientQueue];
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __27__HMDHomeInvitation_expire__block_invoke;
      v10[3] = &unk_279732E78;
      objc_copyWeak(&v11, location);
      v10[4] = self;
      dispatch_async(clientQueue2, v10);

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
        identifier = [(HMDHomeInvitation *)self identifier];
        *location = 138543618;
        *&location[4] = v7;
        v13 = 2112;
        v14 = identifier;
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

- (void)updateTimer:(unint64_t)timer clientQueue:(id)queue
{
  queueCopy = queue;
  resolutionHandler = [(HMDHomeInvitation *)self resolutionHandler];
  expirationHandler = [(HMDHomeInvitation *)self expirationHandler];
  [(HMDHomeInvitation *)self _clearTimer];
  v8 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:timer];
  [(HMDHomeInvitation *)self setEndDate:v8];

  [(HMDHomeInvitation *)self _configureTimer];
  [(HMDHomeInvitation *)self setClientQueue:queueCopy];

  [(HMDHomeInvitation *)self setResolutionHandler:resolutionHandler];
  [(HMDHomeInvitation *)self setExpirationHandler:expirationHandler];
}

- (void)updateInvitationState:(int64_t)state
{
  invitationData = [(HMDHomeInvitation *)self invitationData];
  [invitationData setInvitationState:state];
}

- (double)age
{
  v3 = [MEMORY[0x277CBEAA8] now];
  startDate = [(HMDHomeInvitation *)self startDate];
  [v3 timeIntervalSinceDate:startDate];
  v6 = v5;

  return v6;
}

- (int64_t)invitationState
{
  invitationData = [(HMDHomeInvitation *)self invitationData];
  invitationState = [invitationData invitationState];

  return invitationState;
}

- (void)setEndDate:(id)date
{
  dateCopy = date;
  invitationData = [(HMDHomeInvitation *)self invitationData];
  [invitationData setEndDate:dateCopy];
}

- (NSDate)endDate
{
  invitationData = [(HMDHomeInvitation *)self invitationData];
  endDate = [invitationData endDate];

  return endDate;
}

- (NSDate)startDate
{
  invitationData = [(HMDHomeInvitation *)self invitationData];
  startDate = [invitationData startDate];

  return startDate;
}

- (NSUUID)identifier
{
  invitationData = [(HMDHomeInvitation *)self invitationData];
  identifier = [invitationData identifier];

  return identifier;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  home = [(HMDHomeInvitation *)self home];
  [coderCopy encodeConditionalObject:home forKey:@"home"];

  invitationData = [(HMDHomeInvitation *)self invitationData];
  [coderCopy encodeObject:invitationData forKey:@"HM.invitationData"];
}

- (HMDHomeInvitation)initWithCoder:(id)coder invitationData:(id)data
{
  dataCopy = data;
  coderCopy = coder;
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"home"];

  v9 = [(HMDHomeInvitation *)self initWithInvitationData:dataCopy forHome:v8];
  return v9;
}

- (HMDHomeInvitation)initWithInvitationData:(id)data forHome:(id)home
{
  dataCopy = data;
  homeCopy = home;
  v12.receiver = self;
  v12.super_class = HMDHomeInvitation;
  v9 = [(HMDHomeInvitation *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_invitationData, data);
    objc_storeWeak(&v10->_home, homeCopy);
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
    currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
    v5 = [currentCalendar dateFromComponents:v3];
    v6 = noRetryDate_noRetryDate;
    noRetryDate_noRetryDate = v5;

    v2 = noRetryDate_noRetryDate;
  }

  return v2;
}

@end