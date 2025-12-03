@interface HMMNullRTCSession
+ (id)logCategory;
- (HMMNullRTCSession)initWithUUID:(id)d serviceName:(id)name;
- (HMMRTCSessionVoucher)voucher;
@end

@implementation HMMNullRTCSession

- (HMMRTCSessionVoucher)voucher
{
  v3 = [HMMRTCSessionVoucher alloc];
  uuid = [(HMMNullRTCSession *)self uuid];
  serviceName = [(HMMNullRTCSession *)self serviceName];
  v6 = [(HMMRTCSessionVoucher *)v3 initWithUUID:uuid serviceName:serviceName];

  return v6;
}

- (HMMNullRTCSession)initWithUUID:(id)d serviceName:(id)name
{
  dCopy = d;
  nameCopy = name;
  v12.receiver = self;
  v12.super_class = HMMNullRTCSession;
  v9 = [(HMMNullRTCSession *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_uuid, d);
    objc_storeStrong(&v10->_serviceName, name);
  }

  return v10;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t0 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t0, &__block_literal_global_1218);
  }

  v3 = logCategory__hmf_once_v1;

  return v3;
}

uint64_t __32__HMMNullRTCSession_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1C0];
  logCategory__hmf_once_v1 = HMFCreateOSLogHandle();

  return MEMORY[0x2821F96F8]();
}

@end