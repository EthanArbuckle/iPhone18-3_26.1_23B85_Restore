@interface HMMNullRTCSession
+ (id)logCategory;
- (HMMNullRTCSession)initWithUUID:(id)a3 serviceName:(id)a4;
- (HMMRTCSessionVoucher)voucher;
@end

@implementation HMMNullRTCSession

- (HMMRTCSessionVoucher)voucher
{
  v3 = [HMMRTCSessionVoucher alloc];
  v4 = [(HMMNullRTCSession *)self uuid];
  v5 = [(HMMNullRTCSession *)self serviceName];
  v6 = [(HMMRTCSessionVoucher *)v3 initWithUUID:v4 serviceName:v5];

  return v6;
}

- (HMMNullRTCSession)initWithUUID:(id)a3 serviceName:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = HMMNullRTCSession;
  v9 = [(HMMNullRTCSession *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_uuid, a3);
    objc_storeStrong(&v10->_serviceName, a4);
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