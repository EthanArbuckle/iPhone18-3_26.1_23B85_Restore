@interface HMDLogEventAnalyzer
+ (id)logCategory;
+ (id)managedEventCounterRequestGroups;
- (void)observeEvent:(id)a3;
@end

@implementation HMDLogEventAnalyzer

+ (id)logCategory
{
  if (logCategory__hmf_once_t0_86031 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t0_86031, &__block_literal_global_86032);
  }

  v3 = logCategory__hmf_once_v1_86033;

  return v3;
}

uint64_t __34__HMDLogEventAnalyzer_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v1_86033;
  logCategory__hmf_once_v1_86033 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

+ (id)managedEventCounterRequestGroups
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

- (void)observeEvent:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x277CBEAD8];
  v6 = *MEMORY[0x277CBE658];
  v7 = MEMORY[0x277CCACA8];
  v8 = NSStringFromSelector(a2);
  v9 = [v7 stringWithFormat:@"You must override %@ in a subclass", v8];
  v10 = [v5 exceptionWithName:v6 reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

@end