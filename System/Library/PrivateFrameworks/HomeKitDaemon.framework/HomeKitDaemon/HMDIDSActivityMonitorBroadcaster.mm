@interface HMDIDSActivityMonitorBroadcaster
+ (id)criteria;
+ (id)logCategory;
- (HMDIDSActivityMonitorBroadcaster)initWithActivityMonitor:(id)a3;
- (HMDIDSActivityMonitorBroadcaster)initWithActivityMonitor:(id)a3 timer:(id)a4 xpcActivityInterface:(id)a5;
- (id)logIdentifier;
- (void)_refreshBroadcastSubscription;
- (void)_registerForXPCPoll;
- (void)configureWithDataSource:(id)a3;
- (void)configureWithQueue:(id)a3;
- (void)dataSourceDidUpdate:(id)a3;
- (void)timerDidFire:(id)a3;
@end

@implementation HMDIDSActivityMonitorBroadcaster

- (id)logIdentifier
{
  v2 = [(HMDIDSActivityMonitorBroadcaster *)self activityMonitor];
  v3 = [v2 logIdentifier];

  return v3;
}

- (void)dataSourceDidUpdate:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDIDSActivityMonitorBroadcaster *)self dataSource];
  if (v5)
  {
    v6 = v5;
    v7 = [(HMDIDSActivityMonitorBroadcaster *)self queue];

    if (v7)
    {
      v8 = objc_autoreleasePoolPush();
      v9 = self;
      v10 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = HMFGetLogIdentifier();
        v13 = 138543362;
        v14 = v11;
        _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Data source updated, resuming debounce timer", &v13, 0xCu);
      }

      objc_autoreleasePoolPop(v8);
      [(HMFTimer *)v9->_debounceTimer resume];
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)timerDidFire:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDIDSActivityMonitorBroadcaster *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = HMFGetLogIdentifier();
    v11 = 138543362;
    v12 = v9;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@Debounce timer fired, rebuilding observer list", &v11, 0xCu);
  }

  objc_autoreleasePoolPop(v6);
  [(HMDIDSActivityMonitorBroadcaster *)v7 _refreshBroadcastSubscription];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_refreshBroadcastSubscription
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = +[HMDAppleAccountManager sharedManager];
  v4 = [v3 account];
  v5 = [v4 currentDevice];

  if (v5)
  {
    v6 = [(HMDIDSActivityMonitorBroadcaster *)self dataSource];
    v7 = *MEMORY[0x277D18518];
    v8 = [(HMDIDSActivityMonitorBroadcaster *)self queue];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __65__HMDIDSActivityMonitorBroadcaster__refreshBroadcastSubscription__block_invoke;
    v14[3] = &unk_278682F48;
    v14[4] = self;
    [v6 pushTokensForDevicesObservingSubjectDevice:v5 subActivity:v7 queue:v8 completionHandler:v14];
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    v10 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543362;
      v16 = v12;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@Current Device not yet determined, deferring IDS Activty broadcast", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __65__HMDIDSActivityMonitorBroadcaster__refreshBroadcastSubscription__block_invoke(uint64_t a1, void *a2)
{
  v11 = a2;
  v3 = [*(a1 + 32) queue];
  dispatch_assert_queue_V2(v3);

  v4 = [v11 count];
  v5 = [*(a1 + 32) activityMonitor];
  v6 = v5;
  v7 = *MEMORY[0x277D18518];
  if (v4)
  {
    v8 = [MEMORY[0x277CBEB98] setWithArray:v11];
    [v6 broadcastSubActivity:v7 toPushTokens:v8];

    v9 = *(a1 + 32);
    if ((*(v9 + 16) & 1) == 0)
    {
      *(v9 + 16) = 1;
      [*(a1 + 32) _registerForXPCPoll];
    }
  }

  else
  {
    [v5 stopBroadcastingSubActivity:*MEMORY[0x277D18518]];

    *(*(a1 + 32) + 16) = 0;
    v10 = [*(a1 + 32) xpcActivityInterface];
    [v10 unregisterXPCActivityWithActivityIdentifier:@"com.apple.homed.idsBroadcaster"];
  }
}

- (void)_registerForXPCPoll
{
  objc_initWeak(&location, self);
  v3 = [(HMDIDSActivityMonitorBroadcaster *)self xpcActivityInterface];
  v4 = +[HMDIDSActivityMonitorBroadcaster criteria];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __55__HMDIDSActivityMonitorBroadcaster__registerForXPCPoll__block_invoke;
  v5[3] = &unk_278680088;
  objc_copyWeak(&v6, &location);
  [v3 registerXPCActivityWithActivityIdentifier:@"com.apple.homed.idsBroadcaster" criteria:v4 activityBlock:v5];

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __55__HMDIDSActivityMonitorBroadcaster__registerForXPCPoll__block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __55__HMDIDSActivityMonitorBroadcaster__registerForXPCPoll__block_invoke_89;
    block[3] = &unk_27868A728;
    block[4] = v5;
    dispatch_async(v6, block);
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      *buf = 138543362;
      v13 = v9;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@XPCActivity handler was invoked after monitor was deallocated", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)configureWithDataSource:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!v4)
  {
    _HMFPreconditionFailure();
LABEL_9:
    _HMFPreconditionFailure();
  }

  v5 = v4;
  v6 = [(HMDIDSActivityMonitorBroadcaster *)self dataSource];

  if (v6)
  {
    goto LABEL_9;
  }

  [(HMDIDSActivityMonitorBroadcaster *)self setDataSource:v5];
  [v5 setDelegate:self];
  v7 = [(HMDIDSActivityMonitorBroadcaster *)self queue];

  if (v7)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = HMFGetLogIdentifier();
      v13 = 138543362;
      v14 = v11;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@Queue and data source set, starting debounce timer", &v13, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
    [(HMFTimer *)v9->_debounceTimer resume];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)configureWithQueue:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!v4)
  {
    _HMFPreconditionFailure();
LABEL_9:
    _HMFPreconditionFailure();
  }

  v5 = v4;
  v6 = [(HMDIDSActivityMonitorBroadcaster *)self queue];

  if (v6)
  {
    goto LABEL_9;
  }

  [(HMFTimer *)self->_debounceTimer setDelegateQueue:v5];
  [(HMDIDSActivityMonitorBroadcaster *)self setQueue:v5];
  v7 = [(HMDIDSActivityMonitorBroadcaster *)self dataSource];

  if (v7)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = HMFGetLogIdentifier();
      v13 = 138543362;
      v14 = v11;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@Queue and data source set, starting debounce timer", &v13, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
    [(HMFTimer *)self->_debounceTimer resume];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (HMDIDSActivityMonitorBroadcaster)initWithActivityMonitor:(id)a3
{
  v4 = MEMORY[0x277D0F8D0];
  v5 = a3;
  v6 = [v4 sharedPreferences];
  v7 = [v6 preferenceForKey:@"activityMonitorBroadcastDebounceDelay"];
  v8 = [v7 numberValue];
  [v8 doubleValue];
  v10 = v9;

  v11 = [objc_alloc(MEMORY[0x277D0F920]) initWithTimeInterval:0 options:v10];
  v12 = objc_alloc_init(MEMORY[0x277D17E08]);
  v13 = [(HMDIDSActivityMonitorBroadcaster *)self initWithActivityMonitor:v5 timer:v11 xpcActivityInterface:v12];

  return v13;
}

- (HMDIDSActivityMonitorBroadcaster)initWithActivityMonitor:(id)a3 timer:(id)a4 xpcActivityInterface:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = HMDIDSActivityMonitorBroadcaster;
  v12 = [(HMDIDSActivityMonitorBroadcaster *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_activityMonitor, a3);
    objc_storeStrong(&v13->_debounceTimer, a4);
    [(HMFTimer *)v13->_debounceTimer setDelegate:v13];
    objc_storeStrong(&v13->_xpcActivityInterface, a5);
    v13->_isBroadcasting = 0;
  }

  return v13;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t9_206225 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t9_206225, &__block_literal_global_95_206226);
  }

  v3 = logCategory__hmf_once_v10_206227;

  return v3;
}

void __47__HMDIDSActivityMonitorBroadcaster_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v10_206227;
  logCategory__hmf_once_v10_206227 = v1;
}

+ (id)criteria
{
  empty = xpc_dictionary_create_empty();
  xpc_dictionary_set_int64(empty, *MEMORY[0x277D86288], *MEMORY[0x277D862C8]);
  xpc_dictionary_set_BOOL(empty, *MEMORY[0x277D86330], 1);
  xpc_dictionary_set_string(empty, *MEMORY[0x277D86340], *MEMORY[0x277D86348]);
  xpc_dictionary_set_BOOL(empty, *MEMORY[0x277D86360], 1);

  return empty;
}

@end