@interface HMIVisionSession
+ (HMIVisionSession)sharedInstance;
- (HMIVisionSession)init;
- (VNSession)vnSession;
- (void)timerDidFire:(id)a3;
@end

@implementation HMIVisionSession

+ (HMIVisionSession)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__HMIVisionSession_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedInstance_onceToken_2 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_2, block);
  }

  v2 = sharedInstance_session;

  return v2;
}

void __34__HMIVisionSession_sharedInstance__block_invoke(uint64_t a1)
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
    _os_log_impl(&dword_22D12F000, v4, OS_LOG_TYPE_INFO, "%{public}@Initializing HMIVisionSession", &v8, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  v6 = objc_alloc_init(*(a1 + 32));
  v7 = sharedInstance_session;
  sharedInstance_session = v6;
}

- (HMIVisionSession)init
{
  v7.receiver = self;
  v7.super_class = HMIVisionSession;
  v2 = [(HMIVisionSession *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    v4 = [objc_alloc(MEMORY[0x277D0F920]) initWithTimeInterval:8 options:30.0];
    watchdogTimer = v3->_watchdogTimer;
    v3->_watchdogTimer = v4;

    [(HMFTimer *)v3->_watchdogTimer setDelegate:v3];
  }

  return v3;
}

- (VNSession)vnSession
{
  os_unfair_lock_lock_with_options();
  if (!self->_session)
  {
    v3 = [objc_alloc(MEMORY[0x277D0F880]) initWithName:@"HMIVisionSession"];
    transaction = self->_transaction;
    self->_transaction = v3;

    v5 = objc_alloc_init(MEMORY[0x277CE2E18]);
    session = self->_session;
    self->_session = v5;
  }

  v7 = [(HMIVisionSession *)self watchdogTimer];
  [v7 resume];

  v8 = self->_session;
  os_unfair_lock_unlock(&self->_lock);

  return v8;
}

- (void)timerDidFire:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  os_unfair_lock_lock_with_options();
  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v12 = 138543362;
    v13 = v9;
    _os_log_impl(&dword_22D12F000, v8, OS_LOG_TYPE_INFO, "%{public}@Releasing vision session and transaction after period of inactivity", &v12, 0xCu);
  }

  objc_autoreleasePoolPop(v6);
  session = v7->_session;
  v7->_session = 0;

  transaction = v7->_transaction;
  v7->_transaction = 0;

  os_unfair_lock_unlock(&self->_lock);
  objc_autoreleasePoolPop(v5);
}

@end