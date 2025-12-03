@interface HMDLostModeManager
+ (id)logCategory;
+ (id)sharedManager;
- (BOOL)isLost;
- (BOOL)isLostOrNeedsExitAuth;
- (HMDLostModeManager)init;
- (id)attributeDescriptions;
@end

@implementation HMDLostModeManager

- (id)attributeDescriptions
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMDLostModeManager *)self isLost];
  v4 = HMFBooleanToString();
  v5 = [v3 initWithName:@"Lost" value:v4];
  v9[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t0_34420 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t0_34420, &__block_literal_global_34421);
  }

  v3 = logCategory__hmf_once_v1_34422;

  return v3;
}

void __41__HMDLostModeManager_Common__logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v1_34422;
  logCategory__hmf_once_v1_34422 = v1;
}

- (BOOL)isLostOrNeedsExitAuth
{
  mEMORY[0x277D08F78] = [MEMORY[0x277D08F78] sharedInstance];
  if ([mEMORY[0x277D08F78] lostModeIsActive])
  {
    needsLostModeExitAuth = 1;
  }

  else
  {
    mEMORY[0x277D08F78]2 = [MEMORY[0x277D08F78] sharedInstance];
    needsLostModeExitAuth = [mEMORY[0x277D08F78]2 needsLostModeExitAuth];
  }

  return needsLostModeExitAuth;
}

- (BOOL)isLost
{
  os_unfair_lock_lock_with_options();
  lost = self->_lost;
  os_unfair_lock_unlock(&self->_lock.lock);
  return lost;
}

- (HMDLostModeManager)init
{
  v8.receiver = self;
  v8.super_class = HMDLostModeManager;
  v2 = [(HMDLostModeManager *)&v8 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock.lock._os_unfair_lock_opaque = 0;
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v3, __HMDLostModeManagerLostModeChangeNotification, *MEMORY[0x277D08FB8], 0, CFNotificationSuspensionBehaviorCoalesce);
    v5 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(v5, v3, __HMDLostModeManagerExitLostModeWithAuthCompleteNotification, *MEMORY[0x277D08F60], 0, CFNotificationSuspensionBehaviorCoalesce);
    mEMORY[0x277D08F78] = [MEMORY[0x277D08F78] sharedInstance];
    v3->_lost = [mEMORY[0x277D08F78] lostModeIsActive];
  }

  return v3;
}

+ (id)sharedManager
{
  if (sharedManager_onceToken_186701 != -1)
  {
    dispatch_once(&sharedManager_onceToken_186701, &__block_literal_global_186702);
  }

  v3 = sharedManager_sharedManager_186703;

  return v3;
}

void __35__HMDLostModeManager_sharedManager__block_invoke()
{
  v0 = objc_alloc_init(HMDLostModeManager);
  v1 = sharedManager_sharedManager_186703;
  sharedManager_sharedManager_186703 = v0;
}

@end