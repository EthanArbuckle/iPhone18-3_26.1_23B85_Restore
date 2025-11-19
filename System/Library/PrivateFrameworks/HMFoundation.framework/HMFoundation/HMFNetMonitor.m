@interface HMFNetMonitor
+ (id)logCategory;
- (BOOL)isReachable;
- (HMFNetMonitor)initWithNetAddress:(id)a3;
- (HMFNetMonitor)initWithNetService:(id)a3;
- (HMFNetMonitorDelegate)delegate;
- (void)setReachable:(BOOL)a3;
@end

@implementation HMFNetMonitor

- (HMFNetMonitor)initWithNetAddress:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if (v5 == objc_opt_class())
  {
    v6 = [[__HMFNetAddressMonitor alloc] initWithNetAddress:v4];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = HMFNetMonitor;
    v6 = [(HMFNetMonitor *)&v9 init];
    self = &v6->super;
  }

  p_super = &v6->super;

  return p_super;
}

- (HMFNetMonitor)initWithNetService:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if (v5 == objc_opt_class())
  {
    v6 = [[__HMFNetServiceMonitor alloc] initWithNetService:v4];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = HMFNetMonitor;
    v6 = [(HMFNetMonitor *)&v9 init];
    self = &v6->super;
  }

  p_super = &v6->super;

  return p_super;
}

- (BOOL)isReachable
{
  os_unfair_lock_lock_with_options();
  reachable = self->_reachable;
  os_unfair_lock_unlock(&self->_lock);
  return reachable;
}

- (void)setReachable:(BOOL)a3
{
  v3 = a3;
  v25 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock_with_options();
  if (self->_reachable == v3)
  {
    v5 = *MEMORY[0x277D85DE8];

    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    self->_reachable = v3;
    os_unfair_lock_unlock(&self->_lock);
    v6 = objc_autoreleasePoolPush();
    v7 = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier(v7);
      v10 = HMFBooleanToString(v3);
      v21 = 138543618;
      v22 = v9;
      v23 = 2112;
      v24 = v10;
      _os_log_impl(&dword_22ADEC000, v8, OS_LOG_TYPE_INFO, "%{public}@Reachability changed to: %@", &v21, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    v11 = [(HMFNetMonitor *)v7 delegate];
    if (v3)
    {
      if (objc_opt_respondsToSelector())
      {
        v12 = objc_autoreleasePoolPush();
        v13 = v7;
        v14 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          v15 = HMFGetLogIdentifier(v13);
          v21 = 138543362;
          v22 = v15;
          _os_log_impl(&dword_22ADEC000, v14, OS_LOG_TYPE_INFO, "%{public}@Notifying delegate address is reachable", &v21, 0xCu);
        }

        objc_autoreleasePoolPop(v12);
        [v11 networkMonitorIsReachable:v13];
      }
    }

    else if (objc_opt_respondsToSelector())
    {
      v16 = objc_autoreleasePoolPush();
      v17 = v7;
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v19 = HMFGetLogIdentifier(v17);
        v21 = 138543362;
        v22 = v19;
        _os_log_impl(&dword_22ADEC000, v18, OS_LOG_TYPE_INFO, "%{public}@Notifying delegate address is unreachable", &v21, 0xCu);
      }

      objc_autoreleasePoolPop(v16);
      [v11 networkMonitorIsUnreachable:v17];
    }

    v20 = *MEMORY[0x277D85DE8];
  }
}

+ (id)logCategory
{
  if (_MergedGlobals_3 != -1)
  {
    dispatch_once(&_MergedGlobals_3, &__block_literal_global_6);
  }

  v3 = qword_280AFC2B0;

  return v3;
}

uint64_t __28__HMFNetMonitor_logCategory__block_invoke()
{
  qword_280AFC2B0 = HMFCreateOSLogHandle(@"Networking.Monitor", @"com.apple.HMFoundation");

  return MEMORY[0x2821F96F8]();
}

- (HMFNetMonitorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end