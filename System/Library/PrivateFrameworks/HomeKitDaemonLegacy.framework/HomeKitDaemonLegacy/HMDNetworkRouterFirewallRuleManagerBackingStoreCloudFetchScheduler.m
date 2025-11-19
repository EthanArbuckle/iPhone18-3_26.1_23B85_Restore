@interface HMDNetworkRouterFirewallRuleManagerBackingStoreCloudFetchScheduler
+ (id)logCategory;
+ (void)__unregisterActivity:(id)a3;
- (HMDNetworkRouterFirewallRuleManagerBackingStoreCloudFetchScheduler)initWithIdentifier:(id)a3 interval:(double)a4 retryInterval:(double)a5 delegate:(id)a6;
- (HMDNetworkRouterFirewallRuleManagerBackingStoreCloudFetchSchedulerDelegate)delegate;
- (NSString)description;
- (id)__initialCriteria;
- (void)__checkInActivity:(id)a3;
- (void)__registerActivity;
- (void)__runActivity:(id)a3;
- (void)__transitionActivity:(id)a3 state:(int64_t)a4;
- (void)__unregisterActivity;
- (void)dealloc;
- (void)start;
- (void)stop;
@end

@implementation HMDNetworkRouterFirewallRuleManagerBackingStoreCloudFetchScheduler

- (HMDNetworkRouterFirewallRuleManagerBackingStoreCloudFetchSchedulerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)stop
{
  if ([(HMDNetworkRouterFirewallRuleManagerBackingStoreCloudFetchScheduler *)self isRunning])
  {
    [(HMDNetworkRouterFirewallRuleManagerBackingStoreCloudFetchScheduler *)self setRunning:0];
    self->_currentInterval = 0.0;
    [(HMDNetworkRouterFirewallRuleManagerBackingStoreCloudFetchScheduler *)self __unregisterActivity];
    v3 = [(HMDNetworkRouterFirewallRuleManagerBackingStoreCloudFetchScheduler *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [v3 cloudFetchSchedulerStopped:self];
    }
  }
}

- (void)start
{
  if (![(HMDNetworkRouterFirewallRuleManagerBackingStoreCloudFetchScheduler *)self isRunning])
  {
    [(HMDNetworkRouterFirewallRuleManagerBackingStoreCloudFetchScheduler *)self setRunning:1];
    self->_currentInterval = 0.0;
    [(HMDNetworkRouterFirewallRuleManagerBackingStoreCloudFetchScheduler *)self __registerActivity];
    v3 = [(HMDNetworkRouterFirewallRuleManagerBackingStoreCloudFetchScheduler *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [v3 cloudFetchSchedulerStarted:self];
    }
  }
}

- (void)__transitionActivity:(id)a3 state:(int64_t)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = xpc_activity_set_state(v6, a4);
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  v11 = v10;
  if (v7)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v12 = HMFGetLogIdentifier();
      v13 = [(HMDNetworkRouterFirewallRuleManagerBackingStoreCloudFetchScheduler *)v9 identifier];
      v18 = 138543874;
      v19 = v12;
      v20 = 2112;
      v21 = v13;
      v22 = 2048;
      v23 = a4;
      v14 = "%{public}@Activity '%@' transitioned to state %ld";
      v15 = v11;
      v16 = OS_LOG_TYPE_DEBUG;
LABEL_6:
      _os_log_impl(&dword_2531F8000, v15, v16, v14, &v18, 0x20u);
    }
  }

  else if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v12 = HMFGetLogIdentifier();
    v13 = [(HMDNetworkRouterFirewallRuleManagerBackingStoreCloudFetchScheduler *)v9 identifier];
    v18 = 138543874;
    v19 = v12;
    v20 = 2112;
    v21 = v13;
    v22 = 2048;
    v23 = a4;
    v14 = "%{public}@Activity '%@' failed to transition to state %ld";
    v15 = v11;
    v16 = OS_LOG_TYPE_ERROR;
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v8);
  v17 = *MEMORY[0x277D85DE8];
}

- (void)__unregisterActivity
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v7 = [(HMDNetworkRouterFirewallRuleManagerBackingStoreCloudFetchScheduler *)v4 identifier];
    v9 = 138543618;
    v10 = v6;
    v11 = 2112;
    v12 = v7;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@Unregistering activity '%@'", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v3);
  [objc_opt_class() __unregisterActivity:v4->_identifier];
  v8 = *MEMORY[0x277D85DE8];
}

- (void)__runActivity:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDNetworkRouterFirewallRuleManagerBackingStoreCloudFetchScheduler *)self identifier];
  if (xpc_activity_should_defer(v4))
  {
    v6 = objc_autoreleasePoolPush();
    v7 = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      *buf = 138543618;
      v25 = v9;
      v26 = 2112;
      v27 = v5;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Activity '%@' was ready to run but it should be deferred", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    [(HMDNetworkRouterFirewallRuleManagerBackingStoreCloudFetchScheduler *)v7 __transitionActivity:v4 state:3];
  }

  else
  {
    v10 = [(HMDNetworkRouterFirewallRuleManagerBackingStoreCloudFetchScheduler *)self delegate];
    if (v10)
    {
      [(HMDNetworkRouterFirewallRuleManagerBackingStoreCloudFetchScheduler *)self __transitionActivity:v4 state:4];
      v11 = objc_autoreleasePoolPush();
      v12 = self;
      v13 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = HMFGetLogIdentifier();
        *buf = 138543618;
        v25 = v14;
        v26 = 2112;
        v27 = v5;
        _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@Activity '%@' running", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v11);
      [(HMDNetworkRouterFirewallRuleManagerBackingStoreCloudFetchScheduler *)v12 setRunningActivity:v4];
      objc_initWeak(buf, v12);
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __84__HMDNetworkRouterFirewallRuleManagerBackingStoreCloudFetchScheduler___runActivity___block_invoke;
      v20[3] = &unk_279731988;
      objc_copyWeak(&v23, buf);
      v21 = v5;
      v22 = v4;
      [v10 cloudFetchSchedulerFired:v12 completion:v20];

      objc_destroyWeak(&v23);
      objc_destroyWeak(buf);
    }

    else
    {
      v15 = objc_autoreleasePoolPush();
      v16 = self;
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = HMFGetLogIdentifier();
        *buf = 138543618;
        v25 = v18;
        v26 = 2112;
        v27 = v5;
        _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_ERROR, "%{public}@Activity '%@' was ready to run but delegate has died", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v15);
      [(HMDNetworkRouterFirewallRuleManagerBackingStoreCloudFetchScheduler *)v16 __transitionActivity:v4 state:5];
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

void __84__HMDNetworkRouterFirewallRuleManagerBackingStoreCloudFetchScheduler___runActivity___block_invoke(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = objc_autoreleasePoolPush();
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      v9 = *(a1 + 32);
      v23 = 138543874;
      v24 = v8;
      v25 = 2112;
      v26 = v9;
      v27 = 2112;
      v28 = v3;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Activity '%@' completion handler called with error: %@", &v23, 0x20u);
    }

    objc_autoreleasePoolPop(v5);
    [v6 setRunningActivity:0];
    v10 = xpc_activity_copy_criteria(*(a1 + 40));
    v11 = *MEMORY[0x277D86288];
    int64 = xpc_dictionary_get_int64(v10, *MEMORY[0x277D86288]);
    if (v3)
    {
      [v6 retryInterval];
    }

    else
    {
      [v6 interval];
    }

    v21 = v13;
    if (int64 != v13)
    {
      xpc_dictionary_set_int64(v10, v11, v13);
      xpc_activity_set_criteria(*(a1 + 40), v10);
      v6[8] = v21;
    }

    [v6 __transitionActivity:*(a1 + 40) state:5];
  }

  else
  {
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      v16 = *(a1 + 32);
      v23 = 138543874;
      v24 = v15;
      v25 = 2112;
      v26 = v16;
      v27 = 2112;
      v28 = v3;
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_ERROR, "%{public}@Activity '%@' completion handler called after scheduler has died with error: %@", &v23, 0x20u);
    }

    objc_autoreleasePoolPop(v5);
    if (!xpc_activity_set_state(*(a1 + 40), 5))
    {
      v17 = objc_autoreleasePoolPush();
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = HMFGetLogIdentifier();
        v20 = *(a1 + 32);
        v23 = 138543874;
        v24 = v19;
        v25 = 2112;
        v26 = v20;
        v27 = 2048;
        v28 = 5;
        _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_ERROR, "%{public}@Activity '%@' failed to transition to state %ld", &v23, 0x20u);
      }

      objc_autoreleasePoolPop(v17);
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)__checkInActivity:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = xpc_activity_copy_criteria(v4);
  if (v5)
  {
    v6 = v5;
    v7 = objc_autoreleasePoolPush();
    v8 = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v11 = [(HMDNetworkRouterFirewallRuleManagerBackingStoreCloudFetchScheduler *)v8 identifier];
      *buf = 138543874;
      v29 = v10;
      v30 = 2112;
      v31 = v11;
      v32 = 2112;
      v33 = v6;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Activity '%@' resurrected with criteria: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
  }

  else
  {
    v6 = [(HMDNetworkRouterFirewallRuleManagerBackingStoreCloudFetchScheduler *)self __initialCriteria];
    v12 = [(HMDNetworkRouterFirewallRuleManagerBackingStoreCloudFetchScheduler *)self overrideCriteria];

    if (v12)
    {
      v13 = objc_autoreleasePoolPush();
      v14 = self;
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = HMFGetLogIdentifier();
        v17 = [(HMDNetworkRouterFirewallRuleManagerBackingStoreCloudFetchScheduler *)v14 identifier];
        v18 = [(HMDNetworkRouterFirewallRuleManagerBackingStoreCloudFetchScheduler *)v14 overrideCriteria];
        *buf = 138543874;
        v29 = v16;
        v30 = 2112;
        v31 = v17;
        v32 = 2112;
        v33 = v18;
        _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@Activity '%@' applying override criteria: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v13);
      v19 = [(HMDNetworkRouterFirewallRuleManagerBackingStoreCloudFetchScheduler *)v14 overrideCriteria];
      applier[0] = MEMORY[0x277D85DD0];
      applier[1] = 3221225472;
      applier[2] = __88__HMDNetworkRouterFirewallRuleManagerBackingStoreCloudFetchScheduler___checkInActivity___block_invoke;
      applier[3] = &unk_27972B9B8;
      v27 = v6;
      xpc_dictionary_apply(v19, applier);
    }

    v20 = objc_autoreleasePoolPush();
    v21 = self;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = HMFGetLogIdentifier();
      v24 = [(HMDNetworkRouterFirewallRuleManagerBackingStoreCloudFetchScheduler *)v21 identifier];
      *buf = 138543874;
      v29 = v23;
      v30 = 2112;
      v31 = v24;
      v32 = 2112;
      v33 = v6;
      _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_INFO, "%{public}@Activity '%@' created for the first time with criteria: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v20);
    xpc_activity_set_criteria(v4, v6);
  }

  self->_currentInterval = xpc_dictionary_get_int64(v6, *MEMORY[0x277D86288]);

  v25 = *MEMORY[0x277D85DE8];
}

- (void)__registerActivity
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = [(HMDNetworkRouterFirewallRuleManagerBackingStoreCloudFetchScheduler *)self identifier];
  v4 = objc_autoreleasePoolPush();
  v5 = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    *buf = 138543618;
    v17 = v7;
    v18 = 2112;
    v19 = v3;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Registering activity '%@'", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  objc_initWeak(buf, v5);
  v8 = v3;
  v9 = [v3 UTF8String];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __88__HMDNetworkRouterFirewallRuleManagerBackingStoreCloudFetchScheduler___registerActivity__block_invoke;
  v13[3] = &unk_27972B990;
  objc_copyWeak(&v15, buf);
  v10 = *MEMORY[0x277D86238];
  v11 = v3;
  v14 = v11;
  xpc_activity_register(v9, v10, v13);

  objc_destroyWeak(&v15);
  objc_destroyWeak(buf);

  v12 = *MEMORY[0x277D85DE8];
}

void __88__HMDNetworkRouterFirewallRuleManagerBackingStoreCloudFetchScheduler___registerActivity__block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (!WeakRetained)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      v10 = *(a1 + 32);
      v15 = 138543618;
      v16 = v9;
      v17 = 2112;
      v18 = v10;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_ERROR, "%{public}@Activity '%@' handler ran after scheduler has died", &v15, 0x16u);
    }

    goto LABEL_11;
  }

  state = xpc_activity_get_state(v3);
  if (state == 2)
  {
    [WeakRetained __runActivity:v3];
    goto LABEL_12;
  }

  v6 = state;
  if (state)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = WeakRetained;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      v13 = *(a1 + 32);
      v15 = 138543874;
      v16 = v12;
      v17 = 2112;
      v18 = v13;
      v19 = 2048;
      v20 = v6;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_ERROR, "%{public}@Activity %@ callback with unhandled state: %ld", &v15, 0x20u);
    }

LABEL_11:
    objc_autoreleasePoolPop(v7);
    goto LABEL_12;
  }

  [WeakRetained __checkInActivity:v3];
LABEL_12:

  v14 = *MEMORY[0x277D85DE8];
}

- (id)__initialCriteria
{
  v3 = xpc_dictionary_create(0, 0, 0);
  v4 = *MEMORY[0x277D86288];
  [(HMDNetworkRouterFirewallRuleManagerBackingStoreCloudFetchScheduler *)self interval];
  xpc_dictionary_set_int64(v3, v4, llround(v5));
  xpc_dictionary_set_BOOL(v3, *MEMORY[0x277D86360], 1);
  xpc_dictionary_set_BOOL(v3, *MEMORY[0x277D86398], 1);
  xpc_dictionary_set_string(v3, *MEMORY[0x277D862F8], *MEMORY[0x277D86300]);
  xpc_dictionary_set_BOOL(v3, *MEMORY[0x277D86230], 1);
  xpc_dictionary_set_int64(v3, *MEMORY[0x277D86268], *MEMORY[0x277D862A8]);
  xpc_dictionary_set_string(v3, *MEMORY[0x277D86340], *MEMORY[0x277D86348]);
  xpc_dictionary_set_BOOL(v3, *MEMORY[0x277D86330], 1);

  return v3;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(HMDNetworkRouterFirewallRuleManagerBackingStoreCloudFetchScheduler *)self identifier];
  v6 = MEMORY[0x277CCABB0];
  [(HMDNetworkRouterFirewallRuleManagerBackingStoreCloudFetchScheduler *)self interval];
  v7 = [v6 numberWithDouble:?];
  v8 = MEMORY[0x277CCABB0];
  [(HMDNetworkRouterFirewallRuleManagerBackingStoreCloudFetchScheduler *)self retryInterval];
  v9 = [v8 numberWithDouble:?];
  v10 = [v3 stringWithFormat:@"<%@, Identifier = %@, Interval=%@, retryInterval=%@>", v4, v5, v7, v9];

  return v10;
}

- (void)dealloc
{
  v14 = *MEMORY[0x277D85DE8];
  if (self->_running)
  {
    v3 = objc_autoreleasePoolPush();
    v4 = self;
    v5 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = HMFGetLogIdentifier();
      identifier = v4->_identifier;
      *buf = 138543618;
      v11 = v6;
      v12 = 2112;
      v13 = identifier;
      _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_ERROR, "%{public}@Scheduler dying while activity '%@' was still active", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v3);
    [objc_opt_class() __unregisterActivity:v4->_identifier];
  }

  v9.receiver = self;
  v9.super_class = HMDNetworkRouterFirewallRuleManagerBackingStoreCloudFetchScheduler;
  [(HMDNetworkRouterFirewallRuleManagerBackingStoreCloudFetchScheduler *)&v9 dealloc];
  v8 = *MEMORY[0x277D85DE8];
}

- (HMDNetworkRouterFirewallRuleManagerBackingStoreCloudFetchScheduler)initWithIdentifier:(id)a3 interval:(double)a4 retryInterval:(double)a5 delegate:(id)a6
{
  v11 = a3;
  v12 = a6;
  v17.receiver = self;
  v17.super_class = HMDNetworkRouterFirewallRuleManagerBackingStoreCloudFetchScheduler;
  v13 = [(HMDNetworkRouterFirewallRuleManagerBackingStoreCloudFetchScheduler *)&v17 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_identifier, a3);
    v14->_interval = a4;
    v14->_retryInterval = a5;
    objc_storeWeak(&v14->_delegate, v12);
    v14->_running = 0;
    v15 = v14;
  }

  return v14;
}

+ (void)__unregisterActivity:(id)a3
{
  v3 = [a3 UTF8String];

  xpc_activity_unregister(v3);
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t0_116511 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t0_116511, &__block_literal_global_116512);
  }

  v3 = logCategory__hmf_once_v1_116513;

  return v3;
}

uint64_t __81__HMDNetworkRouterFirewallRuleManagerBackingStoreCloudFetchScheduler_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v1_116513;
  logCategory__hmf_once_v1_116513 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end