@interface HMDRemoteLoginBase
+ (id)logCategory;
- (HMDAppleMediaAccessory)accessory;
- (HMDRemoteLoginBase)initWithUUID:(id)a3 accessory:(id)a4 remoteLoginHandler:(id)a5;
- (HMDRemoteLoginHandler)remoteLoginHandler;
- (NSString)description;
- (void)configureWithWorkQueue:(id)a3 messageDispatcher:(id)a4;
@end

@implementation HMDRemoteLoginBase

- (HMDRemoteLoginHandler)remoteLoginHandler
{
  WeakRetained = objc_loadWeakRetained(&self->_remoteLoginHandler);

  return WeakRetained;
}

- (HMDAppleMediaAccessory)accessory
{
  WeakRetained = objc_loadWeakRetained(&self->_accessory);

  return WeakRetained;
}

- (void)configureWithWorkQueue:(id)a3 messageDispatcher:(id)a4
{
  v6 = a4;
  [(HMDRemoteLoginBase *)self setWorkQueue:a3];
  [(HMDRemoteLoginBase *)self setMsgDispatcher:v6];
}

- (NSString)description
{
  v2 = [(HMDRemoteLoginBase *)self uuid];
  v3 = [v2 UUIDString];

  return v3;
}

- (HMDRemoteLoginBase)initWithUUID:(id)a3 accessory:(id)a4 remoteLoginHandler:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v22.receiver = self;
  v22.super_class = HMDRemoteLoginBase;
  v12 = [(HMDRemoteLoginBase *)&v22 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_uuid, a3);
    objc_storeWeak(&v13->_accessory, v10);
    objc_storeWeak(&v13->_remoteLoginHandler, v11);
    v14 = MEMORY[0x277CCACA8];
    v15 = [(HMDRemoteLoginBase *)v13 accessory];
    v16 = [v15 name];
    v17 = [(HMDRemoteLoginBase *)v13 uuid];
    v18 = [v17 UUIDString];
    v19 = [v14 stringWithFormat:@"%@/%@", v16, v18];
    logString = v13->_logString;
    v13->_logString = v19;
  }

  return v13;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t0_160905 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t0_160905, &__block_literal_global_160906);
  }

  v3 = logCategory__hmf_once_v1_160907;

  return v3;
}

void __33__HMDRemoteLoginBase_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v1_160907;
  logCategory__hmf_once_v1_160907 = v1;
}

@end