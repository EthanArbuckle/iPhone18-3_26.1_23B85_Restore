@interface HMMTRResidentStateManager
+ (id)logCategory;
- (BOOL)isCurrentDevicePrimaryResident;
- (HMMTRResidentStateManager)init;
- (HMMTRResidentStateManagerDataSource)dataSource;
- (HMMTRResidentStateManagerDelegate)delegate;
- (void)handleResidentReachabilityChangeForFabric:(id)a3;
- (void)handleResidentStateUpdated;
- (void)setCurrentDevicePrimaryResident:(BOOL)a3;
- (void)setDataSource:(id)a3;
@end

@implementation HMMTRResidentStateManager

- (HMMTRResidentStateManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)setCurrentDevicePrimaryResident:(BOOL)a3
{
  v3 = a3;
  v19 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock_with_options();
  if (self->_currentDevicePrimaryResident != v3)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      currentDevicePrimaryResident = self->_currentDevicePrimaryResident;
      v10 = HMFBooleanToString();
      v11 = HMFBooleanToString();
      v13 = 138543874;
      v14 = v8;
      v15 = 2112;
      v16 = v10;
      v17 = 2112;
      v18 = v11;
      _os_log_impl(&dword_22AEAE000, v7, OS_LOG_TYPE_INFO, "%{public}@Updating isCurrentDevicePrimaryResident from %@ to %@", &v13, 0x20u);
    }

    objc_autoreleasePoolPop(v5);
    self->_currentDevicePrimaryResident = v3;
  }

  os_unfair_lock_unlock(&self->_lock);
  v12 = *MEMORY[0x277D85DE8];
}

- (BOOL)isCurrentDevicePrimaryResident
{
  os_unfair_lock_lock_with_options();
  currentDevicePrimaryResident = self->_currentDevicePrimaryResident;
  os_unfair_lock_unlock(&self->_lock);
  return currentDevicePrimaryResident;
}

- (void)handleResidentReachabilityChangeForFabric:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 fabricID];
  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v16 = 138543618;
    v17 = v9;
    v18 = 2112;
    v19 = v5;
    _os_log_impl(&dword_22AEAE000, v8, OS_LOG_TYPE_INFO, "%{public}@Resident state change for fabricID:%@", &v16, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  if (v5 && ![v5 isEqualToNumber:&unk_283EE7FC8])
  {
    v14 = [(HMMTRResidentStateManager *)v7 delegate];
    [v14 handleResidentReachabilityChangeForFabric:v4];
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    v11 = v7;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      v16 = 138543618;
      v17 = v13;
      v18 = 2112;
      v19 = v5;
      _os_log_impl(&dword_22AEAE000, v12, OS_LOG_TYPE_INFO, "%{public}@Received %@ as fabricID, ignoring ResidentReachabilityChange", &v16, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)handleResidentStateUpdated
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v9 = 138543362;
    v10 = v6;
    _os_log_impl(&dword_22AEAE000, v5, OS_LOG_TYPE_INFO, "%{public}@Handling updated resident state", &v9, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v7 = [(HMMTRResidentStateManager *)v4 dataSource];
  -[HMMTRResidentStateManager setCurrentDevicePrimaryResident:](v4, "setCurrentDevicePrimaryResident:", [v7 isCurrentDevicePrimaryResident]);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)setDataSource:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  os_unfair_lock_lock_with_options();
  objc_storeWeak(&self->_dataSource, v4);
  os_unfair_lock_unlock(&self->_lock);
  -[HMMTRResidentStateManager setCurrentDevicePrimaryResident:](self, "setCurrentDevicePrimaryResident:", [v4 isCurrentDevicePrimaryResident]);
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    [(HMMTRResidentStateManager *)v6 isCurrentDevicePrimaryResident];
    v9 = HMFBooleanToString();
    v11 = 138543618;
    v12 = v8;
    v13 = 2112;
    v14 = v9;
    _os_log_impl(&dword_22AEAE000, v7, OS_LOG_TYPE_INFO, "%{public}@Data source set with isCurrentDevicePrimaryResident: %@", &v11, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v10 = *MEMORY[0x277D85DE8];
}

- (HMMTRResidentStateManagerDataSource)dataSource
{
  os_unfair_lock_lock_with_options();
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  os_unfair_lock_unlock(&self->_lock);

  return WeakRetained;
}

- (HMMTRResidentStateManager)init
{
  v3.receiver = self;
  v3.super_class = HMMTRResidentStateManager;
  result = [(HMMTRResidentStateManager *)&v3 init];
  if (result)
  {
    result->_lock._os_unfair_lock_opaque = 0;
  }

  return result;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t11 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t11, &__block_literal_global_2930);
  }

  v3 = logCategory__hmf_once_v12;

  return v3;
}

uint64_t __40__HMMTRResidentStateManager_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  logCategory__hmf_once_v12 = HMFCreateOSLogHandle();

  return MEMORY[0x2821F96F8]();
}

@end