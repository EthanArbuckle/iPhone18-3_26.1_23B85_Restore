@interface HMDMultiUserStatusController
+ (id)logCategory;
- (HMDMultiUserStatusController)initWithQueue:(id)a3 delegate:(id)a4;
- (HMDMultiUserStatusControllerDelegate)delegate;
- (int64_t)multiUserState;
- (uint64_t)_recalculateState;
- (void)didChangeHasActiveAccountState:(BOOL)a3;
- (void)didUpdateDataSyncState:(unint64_t)a3;
- (void)setMultiUserState:(int64_t)a3;
@end

@implementation HMDMultiUserStatusController

- (HMDMultiUserStatusControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)didChangeHasActiveAccountState:(BOOL)a3
{
  v3 = a3;
  v19 = *MEMORY[0x277D85DE8];
  v5 = [(HMDMultiUserStatusController *)self queue];
  dispatch_assert_queue_V2(v5);

  if ([(HMDMultiUserStatusController *)self haveActiveSignedInAccount]!= v3)
  {
    v6 = v3;
    v7 = objc_autoreleasePoolPush();
    v8 = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = HMFGetLogIdentifier();
      v11 = HMFBooleanToString();
      v15 = 138543618;
      v16 = v10;
      v17 = 2112;
      v18 = v11;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@Changed account state to %@", &v15, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    [(HMDMultiUserStatusController *)v8 setHaveActiveSignedInAccount:v6];
    if (v8)
    {
      v12 = [(HMDMultiUserStatusController *)v8 queue];
      dispatch_assert_queue_V2(v12);

      if ([(HMDMultiUserStatusController *)v8 _recalculateState])
      {
        v13 = [(HMDMultiUserStatusController *)v8 delegate];
        [v13 multiUserStatusController:v8 statusDidChange:{-[HMDMultiUserStatusController multiUserState](v8, "multiUserState")}];
      }
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (uint64_t)_recalculateState
{
  v15 = *MEMORY[0x277D85DE8];
  if (result)
  {
    v1 = result;
    v2 = [result queue];
    dispatch_assert_queue_V2(v2);

    v3 = [v1 queue];
    dispatch_assert_queue_V2(v3);

    v4 = [v1 dataSyncState] == 1 && objc_msgSend(v1, "haveActiveSignedInAccount") != 0;
    if ([v1 multiUserState] == v4)
    {
      result = 0;
    }

    else
    {
      v5 = objc_autoreleasePoolPush();
      v6 = v1;
      v7 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = HMFGetLogIdentifier();
        v9 = [MEMORY[0x277CCABB0] numberWithInteger:v4];
        v11 = 138543618;
        v12 = v8;
        v13 = 2112;
        v14 = v9;
        _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@Multi-User state updated to %@", &v11, 0x16u);
      }

      objc_autoreleasePoolPop(v5);
      [v6 setMultiUserState:v4];
      result = 1;
    }
  }

  v10 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)didUpdateDataSyncState:(unint64_t)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = [(HMDMultiUserStatusController *)self queue];
  dispatch_assert_queue_V2(v5);

  if ([(HMDMultiUserStatusController *)self dataSyncState]!= a3)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = HMFGetLogIdentifier();
      v10 = HMHomeManagerDataSyncStateToString();
      v12 = 138543618;
      v13 = v9;
      v14 = 2112;
      v15 = v10;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@Changed data sync state to %@", &v12, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    [(HMDMultiUserStatusController *)v7 setDataSyncState:a3];
    [(HMDMultiUserStatusController *)v7 _recalculateState];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)setMultiUserState:(int64_t)a3
{
  os_unfair_lock_lock_with_options();
  self->_multiUserState = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (int64_t)multiUserState
{
  os_unfair_lock_lock_with_options();
  multiUserState = self->_multiUserState;
  os_unfair_lock_unlock(&self->_lock);
  return multiUserState;
}

- (HMDMultiUserStatusController)initWithQueue:(id)a3 delegate:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = HMDMultiUserStatusController;
  v9 = [(HMDMultiUserStatusController *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_queue, a3);
    v10->_multiUserState = 0;
    v10->_lock._os_unfair_lock_opaque = 0;
    objc_storeWeak(&v10->_delegate, v8);
  }

  return v10;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t0_174901 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t0_174901, &__block_literal_global_174902);
  }

  v3 = logCategory__hmf_once_v1_174903;

  return v3;
}

uint64_t __43__HMDMultiUserStatusController_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v1_174903;
  logCategory__hmf_once_v1_174903 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end