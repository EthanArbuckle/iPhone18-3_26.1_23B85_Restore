@interface HMDResidentSyncManager
+ (id)logCategory;
- (HMDResidentSyncManager)initWithHome:(id)a3 notificationCenter:(id)a4 persistence:(id)a5 logEventSubmitter:(id)a6;
- (HMDResidentSyncManager)initWithHome:(id)a3 notificationCenter:(id)a4 persistence:(id)a5 logEventSubmitter:(id)a6 isResidentCapable:(BOOL)a7 clientDataSource:(id)a8 serverDataSource:(id)a9;
- (id)logIdentifier;
- (id)start;
- (void)interceptRemoteResidentRequest:(id)a3 proceed:(id)a4;
- (void)performResidentRequest:(id)a3 options:(unint64_t)a4;
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

  v3 = [WeakRetained uuid];
  v4 = [v3 UUIDString];

  return v4;
}

- (void)interceptRemoteResidentRequest:(id)a3 proceed:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(HMDResidentSyncManager *)self server];
  [v8 interceptRemoteResidentRequest:v7 proceed:v6];
}

- (void)performSync
{
  v2 = [(HMDResidentSyncManager *)self client];
  [v2 performSync];
}

- (void)performResidentRequest:(id)a3 options:(unint64_t)a4
{
  v6 = a3;
  v7 = [(HMDResidentSyncManager *)self client];
  [v7 performResidentRequest:v6 options:a4];
}

- (void)stop
{
  v3 = [(HMDResidentSyncManager *)self client];
  [v3 stop];

  v4 = [(HMDResidentSyncManager *)self server];
  [v4 stop];
}

- (id)start
{
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = [(HMDResidentSyncManager *)self client];
  v5 = [v4 start];
  [v3 addObject:v5];

  v6 = [(HMDResidentSyncManager *)self server];

  if (v6)
  {
    v7 = [(HMDResidentSyncManager *)self server];
    v8 = [v7 start];
    [v3 addObject:v8];
  }

  v9 = [MEMORY[0x277D0F7C0] allSettled:v3];

  return v9;
}

- (HMDResidentSyncManager)initWithHome:(id)a3 notificationCenter:(id)a4 persistence:(id)a5 logEventSubmitter:(id)a6 isResidentCapable:(BOOL)a7 clientDataSource:(id)a8 serverDataSource:(id)a9
{
  v10 = a7;
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a8;
  v20 = a9;
  v41.receiver = self;
  v41.super_class = HMDResidentSyncManager;
  v21 = [(HMDResidentSyncManager *)&v41 init];
  v22 = v21;
  if (v21)
  {
    v40 = v19;
    v23 = v10;
    objc_storeWeak(&v21->_home, v15);
    v39 = v20;
    v24 = v16;
    if (HMDResidentSyncCodingModel__hmf_once_t0 != -1)
    {
      dispatch_once(&HMDResidentSyncCodingModel__hmf_once_t0, &__block_literal_global_172418);
    }

    v25 = HMDResidentSyncCodingModel__hmf_once_v1;
    v26 = [HMDResidentSyncClient alloc];
    v27 = [v15 msgDispatcher];
    v28 = [v15 residentDeviceManager];
    LOBYTE(v38) = v23;
    v29 = v26;
    v16 = v24;
    v30 = [(HMDResidentSyncClient *)v29 initWithHome:v15 codingModel:v25 dispatcher:v27 residentDeviceManager:v28 notificationCenter:v24 persistence:v17 isResidentCapable:v38 dataSource:v40 logEventSubmitter:v18];
    client = v22->_client;
    v22->_client = v30;

    if (v23)
    {
      v32 = [HMDResidentSyncServer alloc];
      v33 = [v15 msgDispatcher];
      v34 = [v15 residentDeviceManager];
      v35 = [(HMDResidentSyncServer *)v32 initWithHome:v15 codingModel:v25 dispatcher:v33 residentDeviceManager:v34 notificationCenter:v16 persistence:v17 dataSource:v39 logEventSubmitter:v18];
      server = v22->_server;
      v22->_server = v35;
    }

    v20 = v39;
    v19 = v40;
  }

  return v22;
}

- (HMDResidentSyncManager)initWithHome:(id)a3 notificationCenter:(id)a4 persistence:(id)a5 logEventSubmitter:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = +[HMDDeviceCapabilities deviceCapabilities];
  v15 = [v14 isResidentCapable];
  v16 = objc_alloc_init(HMDResidentSyncClientDefaultDataSource);
  v17 = objc_alloc_init(HMDResidentSyncServerDefaultDataSource);
  v18 = [(HMDResidentSyncManager *)self initWithHome:v13 notificationCenter:v12 persistence:v11 logEventSubmitter:v10 isResidentCapable:v15 clientDataSource:v16 serverDataSource:v17];

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