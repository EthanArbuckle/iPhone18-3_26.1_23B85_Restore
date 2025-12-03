@interface HMDMediaGroupsUnconfiguredParticipantOnboardingManager
+ (id)logCategory;
- (HMDMediaGroupsUnconfiguredParticipantOnboardingManager)initWithIdentifier:(id)identifier;
- (HMDMediaGroupsUnconfiguredParticipantOnboardingManagerDataSource)dataSource;
- (id)dequeuedAssociatedGroupIdentifierForParticipantAccessoryUUID:(id)d;
- (id)logIdentifier;
- (id)mediaDestinationManagerWithParticipantAccessoryUUID:(id)d;
- (id)queuedParticipantAccessoryUUIDs;
- (void)attemptOnboardingForParticipantAccessoryUUID:(id)d;
- (void)dequeueAvailableOnboadedParticipants;
- (void)queueOnboardingParticipantWithAccessoryUUID:(id)d withAssociatedGroupIdentifier:(id)identifier;
- (void)setQueuedAssociatedGroupIdentifier:(id)identifier forParticipantAccessoryUUID:(id)d;
@end

@implementation HMDMediaGroupsUnconfiguredParticipantOnboardingManager

- (HMDMediaGroupsUnconfiguredParticipantOnboardingManagerDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (id)logIdentifier
{
  identifier = [(HMDMediaGroupsUnconfiguredParticipantOnboardingManager *)self identifier];
  uUIDString = [identifier UUIDString];

  return uUIDString;
}

- (id)mediaDestinationManagerWithParticipantAccessoryUUID:(id)d
{
  v18 = *MEMORY[0x277D85DE8];
  dCopy = d;
  dataSource = [(HMDMediaGroupsUnconfiguredParticipantOnboardingManager *)self dataSource];
  v6 = dataSource;
  if (dataSource)
  {
    v7 = [dataSource mediaDestinationManagerWithParticipantAccessoryUUID:dCopy forMediaGroupsUnconfiguredParticipantOnboardingManager:self];
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v14 = 138543618;
      v15 = v11;
      v16 = 2112;
      v17 = dCopy;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to get media destination manager with participant accessory uuid: %@ due to no data source", &v14, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    v7 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)dequeuedAssociatedGroupIdentifierForParticipantAccessoryUUID:(id)d
{
  dCopy = d;
  os_unfair_lock_lock_with_options();
  v5 = [(NSMutableDictionary *)self->_queuedAssociatedGroupIdentifiers objectForKey:dCopy];
  if (v5)
  {
    [(NSMutableDictionary *)self->_queuedAssociatedGroupIdentifiers removeObjectForKey:dCopy];
  }

  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

- (id)queuedParticipantAccessoryUUIDs
{
  os_unfair_lock_lock_with_options();
  allKeys = [(NSMutableDictionary *)self->_queuedAssociatedGroupIdentifiers allKeys];
  os_unfair_lock_unlock(&self->_lock);

  return allKeys;
}

- (void)setQueuedAssociatedGroupIdentifier:(id)identifier forParticipantAccessoryUUID:(id)d
{
  identifierCopy = identifier;
  dCopy = d;
  os_unfair_lock_lock_with_options();
  [(NSMutableDictionary *)self->_queuedAssociatedGroupIdentifiers setObject:identifierCopy forKey:dCopy];
  os_unfair_lock_unlock(&self->_lock);
}

- (void)attemptOnboardingForParticipantAccessoryUUID:(id)d
{
  v23 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v5 = [(HMDMediaGroupsUnconfiguredParticipantOnboardingManager *)self mediaDestinationManagerWithParticipantAccessoryUUID:dCopy];
  if (v5)
  {
    v6 = [(HMDMediaGroupsUnconfiguredParticipantOnboardingManager *)self dequeuedAssociatedGroupIdentifierForParticipantAccessoryUUID:dCopy];
    if (v6)
    {
      v7 = objc_autoreleasePoolPush();
      selfCopy = self;
      v9 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = HMFGetLogIdentifier();
        identifier = [v5 identifier];
        *buf = 138544130;
        v16 = v10;
        v17 = 2112;
        v18 = v6;
        v19 = 2112;
        v20 = dCopy;
        v21 = 2112;
        v22 = identifier;
        _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Sending request to update audio group identifier: %@ for participant accessory identifier: %@ destination: %@", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v7);
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __103__HMDMediaGroupsUnconfiguredParticipantOnboardingManager_attemptOnboardingForParticipantAccessoryUUID___block_invoke;
      v13[3] = &unk_27868A1D8;
      v13[4] = selfCopy;
      v14 = dCopy;
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
      _os_log_impl(&dword_229538000, v11, v12, v10, &v16, v13);
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
  queuedParticipantAccessoryUUIDs = [(HMDMediaGroupsUnconfiguredParticipantOnboardingManager *)self queuedParticipantAccessoryUUIDs];
  if ([queuedParticipantAccessoryUUIDs count])
  {
    v4 = objc_autoreleasePoolPush();
    selfCopy = self;
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      *buf = 138543618;
      v11 = v7;
      v12 = 2112;
      v13 = queuedParticipantAccessoryUUIDs;
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Attempting onboarding for participant accessory uuids: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __94__HMDMediaGroupsUnconfiguredParticipantOnboardingManager_dequeueAvailableOnboadedParticipants__block_invoke;
    v9[3] = &unk_278682498;
    v9[4] = selfCopy;
    [queuedParticipantAccessoryUUIDs na_each:v9];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)queueOnboardingParticipantWithAccessoryUUID:(id)d withAssociatedGroupIdentifier:(id)identifier
{
  v19 = *MEMORY[0x277D85DE8];
  dCopy = d;
  identifierCopy = identifier;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v13 = 138543874;
    v14 = v11;
    v15 = 2112;
    v16 = dCopy;
    v17 = 2112;
    v18 = identifierCopy;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Queueing onboarding for participant accessory uuid: %@ associated group identifier: %@", &v13, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  [(HMDMediaGroupsUnconfiguredParticipantOnboardingManager *)selfCopy setQueuedAssociatedGroupIdentifier:identifierCopy forParticipantAccessoryUUID:dCopy];
  [(HMDMediaGroupsUnconfiguredParticipantOnboardingManager *)selfCopy dequeueAvailableOnboadedParticipants];

  v12 = *MEMORY[0x277D85DE8];
}

- (HMDMediaGroupsUnconfiguredParticipantOnboardingManager)initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (identifierCopy)
  {
    v6 = identifierCopy;
    v14.receiver = self;
    v14.super_class = HMDMediaGroupsUnconfiguredParticipantOnboardingManager;
    v7 = [(HMDMediaGroupsUnconfiguredParticipantOnboardingManager *)&v14 init];
    v8 = v7;
    if (v7)
    {
      v7->_lock._os_unfair_lock_opaque = 0;
      objc_storeStrong(&v7->_identifier, identifier);
      dictionary = [MEMORY[0x277CBEB38] dictionary];
      queuedAssociatedGroupIdentifiers = v8->_queuedAssociatedGroupIdentifiers;
      v8->_queuedAssociatedGroupIdentifiers = dictionary;
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
  if (logCategory__hmf_once_t9_229561 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t9_229561, &__block_literal_global_229562);
  }

  v3 = logCategory__hmf_once_v10_229563;

  return v3;
}

void __69__HMDMediaGroupsUnconfiguredParticipantOnboardingManager_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v10_229563;
  logCategory__hmf_once_v10_229563 = v1;
}

@end