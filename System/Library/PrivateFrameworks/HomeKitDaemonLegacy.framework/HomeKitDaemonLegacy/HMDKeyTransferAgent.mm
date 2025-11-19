@interface HMDKeyTransferAgent
+ (id)logCategory;
- (HMDHomeManager)homeManager;
- (HMDKeyTransferAgent)initWithHomeManager:(id)a3;
- (HMFMessageDestination)messageDestination;
- (void)beginPairingWithCompletionHandler:(id)a3;
- (void)resetConfig;
@end

@implementation HMDKeyTransferAgent

- (HMDHomeManager)homeManager
{
  WeakRetained = objc_loadWeakRetained(&self->_homeManager);

  return WeakRetained;
}

- (HMFMessageDestination)messageDestination
{
  v3 = objc_alloc(MEMORY[0x277D0F820]);
  v4 = [(HMDKeyTransferAgent *)self messageTargetUUID];
  v5 = [v3 initWithTarget:v4];

  return v5;
}

- (void)resetConfig
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = HMFGetLogIdentifier();
    v8 = 138543362;
    v9 = v6;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_ERROR, "%{public}@- (void)resetConfig is only useful on a Client", &v8, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)beginPairingWithCompletionHandler:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v8 = HMFGetLogIdentifier();
    v11 = 138543362;
    v12 = v8;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_ERROR, "%{public}@- (void)beginPairingWithCompletionHandler: may only be called on an Server.", &v11, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCFD28] code:10 userInfo:0];
  v4[2](v4, v9);

  v10 = *MEMORY[0x277D85DE8];
}

- (HMDKeyTransferAgent)initWithHomeManager:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = HMDKeyTransferAgent;
  v5 = [(HMDKeyTransferAgent *)&v17 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_homeManager, v4);
    v7 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"234BC343-7465-4AEE-AE7B-F2DC3F80C9FF"];
    uuid = v6->_uuid;
    v6->_uuid = v7;

    v9 = [(NSUUID *)v6->_uuid UUIDString];
    v10 = [@"com.apple.hmd.kta." stringByAppendingString:v9];

    v11 = [v10 UTF8String];
    v12 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v13 = dispatch_queue_create(v11, v12);
    workQueue = v6->_workQueue;
    v6->_workQueue = v13;

    v6->_residentProvisioningStatus = 0;
    progressState = v6->_progressState;
    v6->_progressState = 0;
  }

  return v6;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t2_97484 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t2_97484, &__block_literal_global_97485);
  }

  v3 = logCategory__hmf_once_v3_97486;

  return v3;
}

uint64_t __34__HMDKeyTransferAgent_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v3_97486;
  logCategory__hmf_once_v3_97486 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end