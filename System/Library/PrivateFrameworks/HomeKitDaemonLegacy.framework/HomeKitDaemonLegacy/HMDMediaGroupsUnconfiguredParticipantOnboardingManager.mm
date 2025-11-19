@interface HMDMediaGroupsUnconfiguredParticipantOnboardingManager
+ (id)logCategory;
- (HMDMediaGroupsUnconfiguredParticipantOnboardingManager)initWithIdentifier:(id)a3;
- (HMDMediaGroupsUnconfiguredParticipantOnboardingManagerDataSource)dataSource;
- (id)dequeuedAssociatedGroupIdentifierForParticipantAccessoryUUID:(id)a3;
- (id)logIdentifier;
- (id)mediaDestinationManagerWithParticipantAccessoryUUID:(id)a3;
- (id)queuedParticipantAccessoryUUIDs;
- (void)attemptOnboardingForParticipantAccessoryUUID:(id)a3;
- (void)dequeueAvailableOnboadedParticipants;
- (void)queueOnboardingParticipantWithAccessoryUUID:(id)a3 withAssociatedGroupIdentifier:(id)a4;
- (void)setQueuedAssociatedGroupIdentifier:(id)a3 forParticipantAccessoryUUID:(id)a4;
@end

@implementation HMDMediaGroupsUnconfiguredParticipantOnboardingManager

- (HMDMediaGroupsUnconfiguredParticipantOnboardingManagerDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (id)logIdentifier
{
  v2 = [(HMDMediaGroupsUnconfiguredParticipantOnboardingManager *)self identifier];
  v3 = [v2 UUIDString];

  return v3;
}

- (id)mediaDestinationManagerWithParticipantAccessoryUUID:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDMediaGroupsUnconfiguredParticipantOnboardingManager *)self dataSource];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 mediaDestinationManagerWithParticipantAccessoryUUID:v4 forMediaGroupsUnconfiguredParticipantOnboardingManager:self];
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v9 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v14 = 138543618;
      v15 = v11;
      v16 = 2112;
      v17 = v4;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to get media destination manager with participant accessory uuid: %@ due to no data source", &v14, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    v7 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)dequeuedAssociatedGroupIdentifierForParticipantAccessoryUUID:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  v5 = [(NSMutableDictionary *)self->_queuedAssociatedGroupIdentifiers objectForKey:v4];
  if (v5)
  {
    [(NSMutableDictionary *)self->_queuedAssociatedGroupIdentifiers removeObjectForKey:v4];
  }

  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

- (id)queuedParticipantAccessoryUUIDs
{
  os_unfair_lock_lock_with_options();
  v3 = [(NSMutableDictionary *)self->_queuedAssociatedGroupIdentifiers allKeys];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setQueuedAssociatedGroupIdentifier:(id)a3 forParticipantAccessoryUUID:(id)a4
{
  v7 = a3;
  v6 = a4;
  os_unfair_lock_lock_with_options();
  [(NSMutableDictionary *)self->_queuedAssociatedGroupIdentifiers setObject:v7 forKey:v6];
  os_unfair_lock_unlock(&self->_lock);
}

- (void)attemptOnboardingForParticipantAccessoryUUID:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDMediaGroupsUnconfiguredParticipantOnboardingManager *)self mediaDestinationManagerWithParticipantAccessoryUUID:v4];
  if (v5)
  {
    v6 = [(HMDMediaGroupsUnconfiguredParticipantOnboardingManager *)self dequeuedAssociatedGroupIdentifierForParticipantAccessoryUUID:v4];
    if (v6)
    {
      v7 = objc_autoreleasePoolPush();
      v8 = self;
      v9 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = HMFGetLogIdentifier();
        v11 = [v5 identifier];
        *buf = 138544130;
        v16 = v10;
        v17 = 2112;
        v18 = v6;
        v19 = 2112;
        v20 = v4;
        v21 = 2112;
        v22 = v11;
        _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Sending request to update audio group identifier: %@ for participant accessory identifier: %@ destination: %@", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v7);
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __103__HMDMediaGroupsUnconfiguredParticipantOnboardingManager_attemptOnboardingForParticipantAccessoryUUID___block_invoke;
      v13[3] = &unk_2797358C8;
      v13[4] = v8;
      v14 = v4;
      [v5 requestToUpdateAudioGroupIdentifier:v6 completion:v13];
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __103__HMDMediaGroupsUnconfiguredParticipantOnboardingManager_attemptOnboardingForParticipantAccessoryUUID___block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  v7 = v6;
  if (v3)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      v9 = *(a1 + 40);
      v16 = 138543874;
      v17 = v8;
      v18 = 2112;
      v19 = v9;
      v20 = 2112;
      v21 = v3;
      v10 = "%{public}@Completed send request to update audio group identifier for participant accessory identifier: %@ with error: %@";
      v11 = v7;
      v12 = OS_LOG_TYPE_ERROR;
      v13 = 32;
LABEL_6:
      _os_log_impl(&dword_2531F8000, v11, v12, v10, &v16, v13);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v14 = *(a1 + 40);
    v16 = 138543618;
    v17 = v8;
    v18 = 2112;
    v19 = v14;
    v10 = "%{public}@Completed send request to update audio group identifier for participant accessory identifier: %@";
    v11 = v7;
    v12 = OS_LOG_TYPE_INFO;
    v13 = 22;
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v4);
  v15 = *MEMORY[0x277D85DE8];
}

- (void)dequeueAvailableOnboadedParticipants
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = [(HMDMediaGroupsUnconfiguredParticipantOnboardingManager *)self queuedParticipantAccessoryUUIDs];
  if ([v3 count])
  {
    v4 = objc_autoreleasePoolPush();
    v5 = self;
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      *buf = 138543618;
      v11 = v7;
      v12 = 2112;
      v13 = v3;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Attempting onboarding for participant accessory uuids: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __94__HMDMediaGroupsUnconfiguredParticipantOnboardingManager_dequeueAvailableOnboadedParticipants__block_invoke;
    v9[3] = &unk_27972ADE8;
    v9[4] = v5;
    [v3 na_each:v9];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)queueOnboardingParticipantWithAccessoryUUID:(id)a3 withAssociatedGroupIdentifier:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v13 = 138543874;
    v14 = v11;
    v15 = 2112;
    v16 = v6;
    v17 = 2112;
    v18 = v7;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Queueing onboarding for participant accessory uuid: %@ associated group identifier: %@", &v13, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  [(HMDMediaGroupsUnconfiguredParticipantOnboardingManager *)v9 setQueuedAssociatedGroupIdentifier:v7 forParticipantAccessoryUUID:v6];
  [(HMDMediaGroupsUnconfiguredParticipantOnboardingManager *)v9 dequeueAvailableOnboadedParticipants];

  v12 = *MEMORY[0x277D85DE8];
}

- (HMDMediaGroupsUnconfiguredParticipantOnboardingManager)initWithIdentifier:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v6 = v5;
    v14.receiver = self;
    v14.super_class = HMDMediaGroupsUnconfiguredParticipantOnboardingManager;
    v7 = [(HMDMediaGroupsUnconfiguredParticipantOnboardingManager *)&v14 init];
    v8 = v7;
    if (v7)
    {
      v7->_lock._os_unfair_lock_opaque = 0;
      objc_storeStrong(&v7->_identifier, a3);
      v9 = [MEMORY[0x277CBEB38] dictionary];
      queuedAssociatedGroupIdentifiers = v8->_queuedAssociatedGroupIdentifiers;
      v8->_queuedAssociatedGroupIdentifiers = v9;
    }

    return v8;
  }

  else
  {
    v12 = _HMFPreconditionFailure();
    return +[(HMDMediaGroupsUnconfiguredParticipantOnboardingManager *)v12];
  }
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t9_105264 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t9_105264, &__block_literal_global_105265);
  }

  v3 = logCategory__hmf_once_v10_105266;

  return v3;
}

uint64_t __69__HMDMediaGroupsUnconfiguredParticipantOnboardingManager_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v10_105266;
  logCategory__hmf_once_v10_105266 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end