@interface HMDActiveXPCClientConnectionsPeriodicTimer
+ (id)logCategory;
- (HMDActiveXPCClientConnectionsPeriodicTimer)initWithTimeInterval:(double)interval logIdentifier:(id)identifier workQueue:(id)queue;
- (HMDActiveXPCClientConnectionsPeriodicTimer)initWithTimer:(id)timer clientConnectionsManager:(id)manager logIdentifier:(id)identifier workQueue:(id)queue;
- (HMDActiveXPCClientConnectionsPeriodicTimerDelegate)delegate;
- (NSSet)clientConnections;
- (void)_configure;
- (void)_updateTimer;
- (void)addClientConnection:(id)connection;
- (void)clientConnectionsManager:(id)manager didHandleActivationForClientConnection:(id)connection;
- (void)clientConnectionsManager:(id)manager didHandleDeactivationForClientConnection:(id)connection;
- (void)removeClientConnection:(id)connection;
- (void)timerDidFire:(id)fire;
@end

@implementation HMDActiveXPCClientConnectionsPeriodicTimer

- (HMDActiveXPCClientConnectionsPeriodicTimerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)timerDidFire:(id)fire
{
  v15 = *MEMORY[0x277D85DE8];
  fireCopy = fire;
  workQueue = [(HMDActiveXPCClientConnectionsPeriodicTimer *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  timer = [(HMDActiveXPCClientConnectionsPeriodicTimer *)self timer];

  if (timer == fireCopy)
  {
    v7 = objc_autoreleasePoolPush();
    selfCopy = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v13 = 138543362;
      v14 = v10;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Notifying delegate of timer firing", &v13, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
    delegate = [(HMDActiveXPCClientConnectionsPeriodicTimer *)selfCopy delegate];
    [delegate clientConnectionsTimerDidFire:selfCopy];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)clientConnectionsManager:(id)manager didHandleDeactivationForClientConnection:(id)connection
{
  v5 = [(HMDActiveXPCClientConnectionsPeriodicTimer *)self workQueue:manager];
  dispatch_assert_queue_V2(v5);

  [(HMDActiveXPCClientConnectionsPeriodicTimer *)self _updateTimer];
}

- (void)clientConnectionsManager:(id)manager didHandleActivationForClientConnection:(id)connection
{
  v5 = [(HMDActiveXPCClientConnectionsPeriodicTimer *)self workQueue:manager];
  dispatch_assert_queue_V2(v5);

  [(HMDActiveXPCClientConnectionsPeriodicTimer *)self _updateTimer];
}

- (void)_updateTimer
{
  v17 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDActiveXPCClientConnectionsPeriodicTimer *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  clientConnections = [(HMDActiveXPCClientConnectionsPeriodicTimer *)self clientConnections];
  v5 = [clientConnections na_any:&__block_literal_global_132808];

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
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
    timer = [(HMDActiveXPCClientConnectionsPeriodicTimer *)selfCopy timer];
    [timer resume];

    delegate = [(HMDActiveXPCClientConnectionsPeriodicTimer *)selfCopy delegate];
    [delegate clientConnectionsTimerDidFire:selfCopy];
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
    delegate = [(HMDActiveXPCClientConnectionsPeriodicTimer *)selfCopy timer];
    [delegate suspend];
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_configure
{
  workQueue = [(HMDActiveXPCClientConnectionsPeriodicTimer *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  clientConnectionsManager = [(HMDActiveXPCClientConnectionsPeriodicTimer *)self clientConnectionsManager];
  delegate = [clientConnectionsManager delegate];

  if (!delegate)
  {
    clientConnectionsManager2 = [(HMDActiveXPCClientConnectionsPeriodicTimer *)self clientConnectionsManager];
    [clientConnectionsManager2 setDelegate:self];

    clientConnectionsManager3 = [(HMDActiveXPCClientConnectionsPeriodicTimer *)self clientConnectionsManager];
    [clientConnectionsManager3 configure];

    timer = [(HMDActiveXPCClientConnectionsPeriodicTimer *)self timer];
    [timer setDelegate:self];

    workQueue2 = [(HMDActiveXPCClientConnectionsPeriodicTimer *)self workQueue];
    timer2 = [(HMDActiveXPCClientConnectionsPeriodicTimer *)self timer];
    [timer2 setDelegateQueue:workQueue2];
  }
}

- (void)removeClientConnection:(id)connection
{
  connectionCopy = connection;
  workQueue = [(HMDActiveXPCClientConnectionsPeriodicTimer *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  clientConnectionsManager = [(HMDActiveXPCClientConnectionsPeriodicTimer *)self clientConnectionsManager];
  [clientConnectionsManager removeClientConnection:connectionCopy];
}

- (void)addClientConnection:(id)connection
{
  connectionCopy = connection;
  workQueue = [(HMDActiveXPCClientConnectionsPeriodicTimer *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  [(HMDActiveXPCClientConnectionsPeriodicTimer *)self _configure];
  clientConnectionsManager = [(HMDActiveXPCClientConnectionsPeriodicTimer *)self clientConnectionsManager];
  [clientConnectionsManager addClientConnection:connectionCopy];
}

- (NSSet)clientConnections
{
  workQueue = [(HMDActiveXPCClientConnectionsPeriodicTimer *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  clientConnectionsManager = [(HMDActiveXPCClientConnectionsPeriodicTimer *)self clientConnectionsManager];
  clientConnections = [clientConnectionsManager clientConnections];

  return clientConnections;
}

- (HMDActiveXPCClientConnectionsPeriodicTimer)initWithTimer:(id)timer clientConnectionsManager:(id)manager logIdentifier:(id)identifier workQueue:(id)queue
{
  timerCopy = timer;
  managerCopy = manager;
  identifierCopy = identifier;
  queueCopy = queue;
  if (!timerCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_9;
  }

  if (!managerCopy)
  {
LABEL_9:
    _HMFPreconditionFailure();
    goto LABEL_10;
  }

  if (!identifierCopy)
  {
LABEL_10:
    _HMFPreconditionFailure();
    goto LABEL_11;
  }

  v15 = queueCopy;
  if (!queueCopy)
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
    objc_storeStrong(&v16->_timer, timer);
    v18 = [identifierCopy copy];
    logIdentifier = v17->_logIdentifier;
    v17->_logIdentifier = v18;

    objc_storeStrong(&v17->_workQueue, queue);
    objc_storeStrong(&v17->_clientConnectionsManager, manager);
  }

  return v17;
}

- (HMDActiveXPCClientConnectionsPeriodicTimer)initWithTimeInterval:(double)interval logIdentifier:(id)identifier workQueue:(id)queue
{
  v8 = MEMORY[0x277D0F920];
  queueCopy = queue;
  identifierCopy = identifier;
  v11 = [[v8 alloc] initWithTimeInterval:4 options:interval];
  v12 = [[HMDActiveXPCClientConnectionsManager alloc] initWithLogIdentifier:identifierCopy workQueue:queueCopy];
  v13 = [(HMDActiveXPCClientConnectionsPeriodicTimer *)self initWithTimer:v11 clientConnectionsManager:v12 logIdentifier:identifierCopy workQueue:queueCopy];

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