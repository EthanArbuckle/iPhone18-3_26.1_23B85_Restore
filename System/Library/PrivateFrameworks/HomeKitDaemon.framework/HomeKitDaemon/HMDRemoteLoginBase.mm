@interface HMDRemoteLoginBase
+ (id)logCategory;
- (HMDAppleMediaAccessory)accessory;
- (HMDRemoteLoginBase)initWithUUID:(id)d accessory:(id)accessory remoteLoginHandler:(id)handler;
- (HMDRemoteLoginHandler)remoteLoginHandler;
- (NSString)description;
- (void)configureWithWorkQueue:(id)queue messageDispatcher:(id)dispatcher;
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

- (void)configureWithWorkQueue:(id)queue messageDispatcher:(id)dispatcher
{
  dispatcherCopy = dispatcher;
  [(HMDRemoteLoginBase *)self setWorkQueue:queue];
  [(HMDRemoteLoginBase *)self setMsgDispatcher:dispatcherCopy];
}

- (NSString)description
{
  uuid = [(HMDRemoteLoginBase *)self uuid];
  uUIDString = [uuid UUIDString];

  return uUIDString;
}

- (HMDRemoteLoginBase)initWithUUID:(id)d accessory:(id)accessory remoteLoginHandler:(id)handler
{
  dCopy = d;
  accessoryCopy = accessory;
  handlerCopy = handler;
  v22.receiver = self;
  v22.super_class = HMDRemoteLoginBase;
  v12 = [(HMDRemoteLoginBase *)&v22 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_uuid, d);
    objc_storeWeak(&v13->_accessory, accessoryCopy);
    objc_storeWeak(&v13->_remoteLoginHandler, handlerCopy);
    v14 = MEMORY[0x277CCACA8];
    accessory = [(HMDRemoteLoginBase *)v13 accessory];
    name = [accessory name];
    uuid = [(HMDRemoteLoginBase *)v13 uuid];
    uUIDString = [uuid UUIDString];
    v19 = [v14 stringWithFormat:@"%@/%@", name, uUIDString];
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