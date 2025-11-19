@interface HMDRemoteLoginAuthentication
+ (id)logCategory;
- (HMDRemoteLoginAuthentication)initWithSessionID:(id)a3 remoteDevice:(id)a4 workQueue:(id)a5 remoteMessageSender:(id)a6;
- (void)authenticate;
@end

@implementation HMDRemoteLoginAuthentication

- (void)authenticate
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"You must override %@ in a subclass", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

- (HMDRemoteLoginAuthentication)initWithSessionID:(id)a3 remoteDevice:(id)a4 workQueue:(id)a5 remoteMessageSender:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = HMDRemoteLoginAuthentication;
  v15 = [(HMDRemoteLoginAuthentication *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_sessionID, a3);
    objc_storeStrong(&v16->_remoteDevice, a4);
    objc_storeStrong(&v16->_workQueue, a5);
    objc_storeStrong(&v16->_remoteMessageSender, a6);
  }

  return v16;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t0_82279 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t0_82279, &__block_literal_global_82280);
  }

  v3 = logCategory__hmf_once_v1_82281;

  return v3;
}

uint64_t __43__HMDRemoteLoginAuthentication_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v1_82281;
  logCategory__hmf_once_v1_82281 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end