@interface HMDActiveXPCClientConnectionsPeriodicTimer
+ (id)logCategory;
- (HMDActiveXPCClientConnectionsPeriodicTimer)initWithTimeInterval:(double)a3 logIdentifier:(id)a4 workQueue:(id)a5;
- (HMDActiveXPCClientConnectionsPeriodicTimer)initWithTimer:(id)a3 clientConnectionsManager:(id)a4 logIdentifier:(id)a5 workQueue:(id)a6;
- (HMDActiveXPCClientConnectionsPeriodicTimerDelegate)delegate;
- (NSSet)clientConnections;
- (void)_configure;
- (void)_updateTimer;
- (void)addClientConnection:(id)a3;
- (void)clientConnectionsManager:(id)a3 didHandleActivationForClientConnection:(id)a4;
- (void)clientConnectionsManager:(id)a3 didHandleDeactivationForClientConnection:(id)a4;
- (void)removeClientConnection:(id)a3;
- (void)timerDidFire:(id)a3;
@end

@implementation HMDActiveXPCClientConnectionsPeriodicTimer

- (HMDActiveXPCClientConnectionsPeriodicTimerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)timerDidFire:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDActiveXPCClientConnectionsPeriodicTimer *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(HMDActiveXPCClientConnectionsPeriodicTimer *)self timer];

  if (v6 == v4)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v13 = 138543362;
      v14 = v10;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Notifying delegate of timer firing", &v13, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
    v11 = [(HMDActiveXPCClientConnectionsPeriodicTimer *)v8 delegate];
    [v11 clientConnectionsTimerDidFire:v8];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)clientConnectionsManager:(id)a3 didHandleDeactivationForClientConnection:(id)a4
{
  v5 = [(HMDActiveXPCClientConnectionsPeriodicTimer *)self workQueue:a3];
  dispatch_assert_queue_V2(v5);

  [(HMDActiveXPCClientConnectionsPeriodicTimer *)self _updateTimer];
}

- (void)clientConnectionsManager:(id)a3 didHandleActivationForClientConnection:(id)a4
{
  v5 = [(HMDActiveXPCClientConnectionsPeriodicTimer *)self workQueue:a3];
  dispatch_assert_queue_V2(v5);

  [(HMDActiveXPCClientConnectionsPeriodicTimer *)self _updateTimer];
}

- (void)_updateTimer
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [(HMDActiveXPCClientConnectionsPeriodicTimer *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(HMDActiveXPCClientConnectionsPeriodicTimer *)self clientConnections];
  v5 = [v4 na_any:&__block_literal_global_132808];

  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_INFO);
  if (v5)
  {
    if (v9)
    {
      v10 = HMFGetLogIdentifier();
      v15 = 138543362;
      v16 = v10;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Starting timer", &v15, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    v11 = [(HMDActiveXPCClientConnectionsPeriodicTimer *)v7 timer];
    [v11 resume];

    v12 = [(HMDActiveXPCClientConnectionsPeriodicTimer *)v7 delegate];
    [v12 clientConnectionsTimerDidFire:v7];
  }

  else
  {
    if (v9)
    {
      v13 = HMFGetLogIdentifier();
      v15 = 138543362;
      v16 = v13;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Suspending timer", &v15, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    v12 = [(HMDActiveXPCClientConnectionsPeriodicTimer *)v7 timer];
    [v12 suspend];
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_configure
{
  v3 = [(HMDActiveXPCClientConnectionsPeriodicTimer *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(HMDActiveXPCClientConnectionsPeriodicTimer *)self clientConnectionsManager];
  v5 = [v4 delegate];

  if (!v5)
  {
    v6 = [(HMDActiveXPCClientConnectionsPeriodicTimer *)self clientConnectionsManager];
    [v6 setDelegate:self];

    v7 = [(HMDActiveXPCClientConnectionsPeriodicTimer *)self clientConnectionsManager];
    [v7 configure];

    v8 = [(HMDActiveXPCClientConnectionsPeriodicTimer *)self timer];
    [v8 setDelegate:self];

    v10 = [(HMDActiveXPCClientConnectionsPeriodicTimer *)self workQueue];
    v9 = [(HMDActiveXPCClientConnectionsPeriodicTimer *)self timer];
    [v9 setDelegateQueue:v10];
  }
}

- (void)removeClientConnection:(id)a3
{
  v4 = a3;
  v5 = [(HMDActiveXPCClientConnectionsPeriodicTimer *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(HMDActiveXPCClientConnectionsPeriodicTimer *)self clientConnectionsManager];
  [v6 removeClientConnection:v4];
}

- (void)addClientConnection:(id)a3
{
  v4 = a3;
  v5 = [(HMDActiveXPCClientConnectionsPeriodicTimer *)self workQueue];
  dispatch_assert_queue_V2(v5);

  [(HMDActiveXPCClientConnectionsPeriodicTimer *)self _configure];
  v6 = [(HMDActiveXPCClientConnectionsPeriodicTimer *)self clientConnectionsManager];
  [v6 addClientConnection:v4];
}

- (NSSet)clientConnections
{
  v3 = [(HMDActiveXPCClientConnectionsPeriodicTimer *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(HMDActiveXPCClientConnectionsPeriodicTimer *)self clientConnectionsManager];
  v5 = [v4 clientConnections];

  return v5;
}

- (HMDActiveXPCClientConnectionsPeriodicTimer)initWithTimer:(id)a3 clientConnectionsManager:(id)a4 logIdentifier:(id)a5 workQueue:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if (!v11)
  {
    _HMFPreconditionFailure();
    goto LABEL_9;
  }

  if (!v12)
  {
LABEL_9:
    _HMFPreconditionFailure();
    goto LABEL_10;
  }

  if (!v13)
  {
LABEL_10:
    _HMFPreconditionFailure();
    goto LABEL_11;
  }

  v15 = v14;
  if (!v14)
  {
LABEL_11:
    v21 = _HMFPreconditionFailure();
    return [(HMDActiveXPCClientConnectionsPeriodicTimer *)v21 initWithTimeInterval:v22 logIdentifier:v25 workQueue:v23, v24];
  }

  v26.receiver = self;
  v26.super_class = HMDActiveXPCClientConnectionsPeriodicTimer;
  v16 = [(HMDActiveXPCClientConnectionsPeriodicTimer *)&v26 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_timer, a3);
    v18 = [v13 copy];
    logIdentifier = v17->_logIdentifier;
    v17->_logIdentifier = v18;

    objc_storeStrong(&v17->_workQueue, a6);
    objc_storeStrong(&v17->_clientConnectionsManager, a4);
  }

  return v17;
}

- (HMDActiveXPCClientConnectionsPeriodicTimer)initWithTimeInterval:(double)a3 logIdentifier:(id)a4 workQueue:(id)a5
{
  v8 = MEMORY[0x277D0F920];
  v9 = a5;
  v10 = a4;
  v11 = [[v8 alloc] initWithTimeInterval:4 options:a3];
  v12 = [[HMDActiveXPCClientConnectionsManager alloc] initWithLogIdentifier:v10 workQueue:v9];
  v13 = [(HMDActiveXPCClientConnectionsPeriodicTimer *)self initWithTimer:v11 clientConnectionsManager:v12 logIdentifier:v10 workQueue:v9];

  return v13;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t2_132833 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t2_132833, &__block_literal_global_14_132834);
  }

  v3 = logCategory__hmf_once_v3_132835;

  return v3;
}

void __57__HMDActiveXPCClientConnectionsPeriodicTimer_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v3_132835;
  logCategory__hmf_once_v3_132835 = v1;
}

@end