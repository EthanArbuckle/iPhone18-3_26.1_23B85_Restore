@interface HMDAudioStreamInterfaceDataSource
+ (id)logCategory;
- (BOOL)isMuted;
- (void)createPHASEEngineAndControllerForStreamToken:(int64_t)token completion:(id)completion;
@end

@implementation HMDAudioStreamInterfaceDataSource

+ (id)logCategory
{
  if (logCategory__hmf_once_t5 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t5, &__block_literal_global_3010);
  }

  v3 = logCategory__hmf_once_v6;

  return v3;
}

uint64_t __48__HMDAudioStreamInterfaceDataSource_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  logCategory__hmf_once_v6 = HMFCreateOSLogHandle();

  return MEMORY[0x2821F96F8]();
}

- (void)createPHASEEngineAndControllerForStreamToken:(int64_t)token completion:(id)completion
{
  v14 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v9 = HMFGetLogIdentifier();
    v12 = 138543362;
    v13 = v9;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_ERROR, "%{public}@Cannot create PHASE engine and controller on unsupported platform", &v12, 0xCu);
  }

  objc_autoreleasePoolPop(v6);
  v10 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
  (*(completionCopy + 2))(completionCopy, 0, 0, v10);

  v11 = *MEMORY[0x277D85DE8];
}

- (BOOL)isMuted
{
  if (_os_feature_enabled_impl() && _os_feature_enabled_impl())
  {
    v2 = MEMORY[0x277CE56E0];

    return [v2 isMicrophoneMuted];
  }

  else
  {
    mEMORY[0x277D26E58] = [MEMORY[0x277D26E58] sharedAVSystemController];
    v5 = [mEMORY[0x277D26E58] attributeForKey:*MEMORY[0x277D26DF0]];
    bOOLValue = [v5 BOOLValue];

    return bOOLValue;
  }
}

@end