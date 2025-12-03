@interface HMDResidentSyncManager
+ (id)logCategory;
- (HMDResidentSyncManager)initWithHome:(id)home notificationCenter:(id)center persistence:(id)persistence logEventSubmitter:(id)submitter;
- (HMDResidentSyncManager)initWithHome:(id)home notificationCenter:(id)center persistence:(id)persistence logEventSubmitter:(id)submitter isResidentCapable:(BOOL)capable clientDataSource:(id)source serverDataSource:(id)dataSource;
- (id)logIdentifier;
- (id)start;
- (void)interceptRemoteResidentRequest:(id)request proceed:(id)proceed;
- (void)performResidentRequest:(id)request options:(unint64_t)options;
- (void)performSync;
- (void)stop;
@end

@implementation HMDResidentSyncManager

- (id)logIdentifier
{
  if (self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_home);
  }

  else
  {
    WeakRetained = 0;
  }

  uuid = [WeakRetained uuid];
  uUIDString = [uuid UUIDString];

  return uUIDString;
}

- (void)interceptRemoteResidentRequest:(id)request proceed:(id)proceed
{
  proceedCopy = proceed;
  requestCopy = request;
  server = [(HMDResidentSyncManager *)self server];
  [server interceptRemoteResidentRequest:requestCopy proceed:proceedCopy];
}

- (void)performSync
{
  client = [(HMDResidentSyncManager *)self client];
  [client performSync];
}

- (void)performResidentRequest:(id)request options:(unint64_t)options
{
  requestCopy = request;
  client = [(HMDResidentSyncManager *)self client];
  [client performResidentRequest:requestCopy options:options];
}

- (void)stop
{
  client = [(HMDResidentSyncManager *)self client];
  [client stop];

  server = [(HMDResidentSyncManager *)self server];
  [server stop];
}

- (id)start
{
  array = [MEMORY[0x277CBEB18] array];
  client = [(HMDResidentSyncManager *)self client];
  start = [client start];
  [array addObject:start];

  server = [(HMDResidentSyncManager *)self server];

  if (server)
  {
    server2 = [(HMDResidentSyncManager *)self server];
    start2 = [server2 start];
    [array addObject:start2];
  }

  v9 = [MEMORY[0x277D0F7C0] allSettled:array];

  return v9;
}

- (HMDResidentSyncManager)initWithHome:(id)home notificationCenter:(id)center persistence:(id)persistence logEventSubmitter:(id)submitter isResidentCapable:(BOOL)capable clientDataSource:(id)source serverDataSource:(id)dataSource
{
  capableCopy = capable;
  homeCopy = home;
  centerCopy = center;
  persistenceCopy = persistence;
  submitterCopy = submitter;
  sourceCopy = source;
  dataSourceCopy = dataSource;
  v41.receiver = self;
  v41.super_class = HMDResidentSyncManager;
  v21 = [(HMDResidentSyncManager *)&v41 init];
  v22 = v21;
  if (v21)
  {
    v40 = sourceCopy;
    v23 = capableCopy;
    objc_storeWeak(&v21->_home, homeCopy);
    v39 = dataSourceCopy;
    v24 = centerCopy;
    if (HMDResidentSyncCodingModel__hmf_once_t0 != -1)
    {
      dispatch_once(&HMDResidentSyncCodingModel__hmf_once_t0, &__block_literal_global_172418);
    }

    v25 = HMDResidentSyncCodingModel__hmf_once_v1;
    v26 = [HMDResidentSyncClient alloc];
    msgDispatcher = [homeCopy msgDispatcher];
    residentDeviceManager = [homeCopy residentDeviceManager];
    LOBYTE(v38) = v23;
    v29 = v26;
    centerCopy = v24;
    v30 = [(HMDResidentSyncClient *)v29 initWithHome:homeCopy codingModel:v25 dispatcher:msgDispatcher residentDeviceManager:residentDeviceManager notificationCenter:v24 persistence:persistenceCopy isResidentCapable:v38 dataSource:v40 logEventSubmitter:submitterCopy];
    client = v22->_client;
    v22->_client = v30;

    if (v23)
    {
      v32 = [HMDResidentSyncServer alloc];
      msgDispatcher2 = [homeCopy msgDispatcher];
      residentDeviceManager2 = [homeCopy residentDeviceManager];
      v35 = [(HMDResidentSyncServer *)v32 initWithHome:homeCopy codingModel:v25 dispatcher:msgDispatcher2 residentDeviceManager:residentDeviceManager2 notificationCenter:centerCopy persistence:persistenceCopy dataSource:v39 logEventSubmitter:submitterCopy];
      server = v22->_server;
      v22->_server = v35;
    }

    dataSourceCopy = v39;
    sourceCopy = v40;
  }

  return v22;
}

- (HMDResidentSyncManager)initWithHome:(id)home notificationCenter:(id)center persistence:(id)persistence logEventSubmitter:(id)submitter
{
  submitterCopy = submitter;
  persistenceCopy = persistence;
  centerCopy = center;
  homeCopy = home;
  v14 = +[HMDDeviceCapabilities deviceCapabilities];
  isResidentCapable = [v14 isResidentCapable];
  v16 = objc_alloc_init(HMDResidentSyncClientDefaultDataSource);
  v17 = objc_alloc_init(HMDResidentSyncServerDefaultDataSource);
  v18 = [(HMDResidentSyncManager *)self initWithHome:homeCopy notificationCenter:centerCopy persistence:persistenceCopy logEventSubmitter:submitterCopy isResidentCapable:isResidentCapable clientDataSource:v16 serverDataSource:v17];

  return v18;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t0_175365 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t0_175365, &__block_literal_global_175366);
  }

  v3 = logCategory__hmf_once_v1_175367;

  return v3;
}

void __37__HMDResidentSyncManager_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v1_175367;
  logCategory__hmf_once_v1_175367 = v1;
}

@end