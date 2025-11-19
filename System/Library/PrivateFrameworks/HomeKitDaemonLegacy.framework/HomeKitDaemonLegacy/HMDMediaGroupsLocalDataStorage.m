@interface HMDMediaGroupsLocalDataStorage
+ (id)logCategory;
- (HMDMediaGroupsLocalDataStorage)initWithIdentifier:(id)a3 backupSender:(id)a4;
- (HMDMediaGroupsLocalDataStorageDataSource)dataSource;
- (NSArray)groups;
- (id)allParticipantAccessoryUUIDs;
- (id)associatedGroupIdentifierForParticipantAccessoryUUID:(id)a3;
- (id)associatedGroupsWithGroupIdentifier:(id)a3;
- (id)backupGroupsForParticipantAccessoryUUID:(id)a3;
- (id)groupWithIdentifier:(id)a3;
- (id)logIdentifier;
- (id)nullSentinelUUID;
- (id)receiverForParticipantAccessoryUUID:(id)a3;
- (id)routerForParticipantAccessoryUUID:(id)a3;
- (void)addBackedUpGroup:(id)a3;
- (void)addBackedUpGroups:(id)a3;
- (void)backupData;
- (void)clearCachedData;
- (void)clearCachedDataForParticipantAccessoryUUID:(id)a3;
- (void)removeAssociatedGroupIdentifierForParticipantAccessoryUUID:(id)a3;
- (void)removeGroupWithIdentifier:(id)a3;
- (void)setParticipantAccessoryUUID:(id)a3 associatedGroupIdentifier:(id)a4;
- (void)unsetParticipantAccessoryUUIDsWithAssociatedGroupIdentifier:(id)a3;
- (void)updateGroup:(id)a3;
- (void)updateGroup:(id)a3 participantAccessoryUUIDs:(id)a4;
- (void)updateUsingParticipantAccessoryUUID:(id)a3 associatedGroupIdentifier:(id)a4 backedUpGroupData:(id)a5;
@end

@implementation HMDMediaGroupsLocalDataStorage

- (HMDMediaGroupsLocalDataStorageDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (id)logIdentifier
{
  v2 = [(HMDMediaGroupsLocalDataStorage *)self identifier];
  v3 = [v2 UUIDString];

  return v3;
}

- (id)receiverForParticipantAccessoryUUID:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDMediaGroupsLocalDataStorage *)self dataSource];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 receiverForParticipantAccessoryUUID:v4 mediaGroupsLocalDataStorage:self];
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v9 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v14 = 138543618;
      v15 = v11;
      v16 = 2112;
      v17 = v4;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Failed to get receiver for participant accessory UUID: %@ due to no data source", &v14, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    v7 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)routerForParticipantAccessoryUUID:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDMediaGroupsLocalDataStorage *)self dataSource];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 routerForParticipantAccessoryUUID:v4 mediaGroupsLocalDataStorage:self];
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v9 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v14 = 138543618;
      v15 = v11;
      v16 = 2112;
      v17 = v4;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Failed to get router for participant accessory UUID: %@ due to no data source", &v14, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    v7 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];

  return v7;
}

- (void)removeGroupWithIdentifier:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v10 = 138543618;
    v11 = v8;
    v12 = 2112;
    v13 = v4;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Remove group with identifier: %@", &v10, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  [(HMDMediaGroupsLocalDataStorage *)v6 unsetParticipantAccessoryUUIDsWithAssociatedGroupIdentifier:v4];
  os_unfair_lock_lock_with_options();
  [(NSMutableDictionary *)v6->_groups removeObjectForKey:v4];
  os_unfair_lock_unlock(&v6->_lock);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)updateGroup:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v12 = 138543618;
    v13 = v8;
    v14 = 2112;
    v15 = v4;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Update group: %@", &v12, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  os_unfair_lock_lock_with_options();
  groups = v6->_groups;
  v10 = [v4 identifier];
  [(NSMutableDictionary *)groups setObject:v4 forKey:v10];

  os_unfair_lock_unlock(&v6->_lock);
  v11 = *MEMORY[0x277D85DE8];
}

- (void)addBackedUpGroup:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  os_unfair_lock_lock_with_options();
  groups = self->_groups;
  v6 = [v4 identifier];
  v7 = [(NSMutableDictionary *)groups objectForKey:v6];

  if (v7)
  {
    os_unfair_lock_unlock(&self->_lock);
    v8 = [v7 isEqual:v4];
    v9 = objc_autoreleasePoolPush();
    v10 = self;
    v11 = HMFGetOSLogHandle();
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_INFO);
    if (v8)
    {
      if (v12)
      {
        v13 = HMFGetLogIdentifier();
        v20 = 138543618;
        v21 = v13;
        v22 = 2112;
        v23 = v4;
        _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Already added backed up group: %@", &v20, 0x16u);
      }
    }

    else if (v12)
    {
      v18 = HMFGetLogIdentifier();
      v20 = 138543874;
      v21 = v18;
      v22 = 2112;
      v23 = v4;
      v24 = 2112;
      v25 = v7;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Dropping backed up group: %@ existing group: %@", &v20, 0x20u);
    }
  }

  else
  {
    v14 = self->_groups;
    v15 = [v4 identifier];
    [(NSMutableDictionary *)v14 setObject:v4 forKey:v15];

    os_unfair_lock_unlock(&self->_lock);
    v9 = objc_autoreleasePoolPush();
    v16 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v17 = HMFGetLogIdentifier();
      v20 = 138543618;
      v21 = v17;
      v22 = 2112;
      v23 = v4;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Added backed up group: %@", &v20, 0x16u);
    }
  }

  objc_autoreleasePoolPop(v9);
  v19 = *MEMORY[0x277D85DE8];
}

- (void)addBackedUpGroups:(id)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __52__HMDMediaGroupsLocalDataStorage_addBackedUpGroups___block_invoke;
  v3[3] = &unk_279729370;
  v3[4] = self;
  [a3 na_each:v3];
}

- (id)groupWithIdentifier:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  v5 = [(NSMutableDictionary *)self->_groups objectForKey:v4];
  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

- (NSArray)groups
{
  os_unfair_lock_lock_with_options();
  v3 = [(NSMutableDictionary *)self->_groups allValues];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setParticipantAccessoryUUID:(id)a3 associatedGroupIdentifier:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v15 = 138543874;
    v16 = v11;
    v17 = 2112;
    v18 = v6;
    v19 = 2112;
    v20 = v7;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Setting participant accessory uuid: %@ associated group identifier: %@", &v15, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  os_unfair_lock_lock_with_options();
  participantAccessoryUUIDToAssociatedGroupIdentifier = v9->_participantAccessoryUUIDToAssociatedGroupIdentifier;
  v13 = v7;
  if (!v7)
  {
    v13 = [(HMDMediaGroupsLocalDataStorage *)v9 nullSentinelUUID];
  }

  [(NSMutableDictionary *)participantAccessoryUUIDToAssociatedGroupIdentifier setObject:v13 forKey:v6];
  if (!v7)
  {
  }

  os_unfair_lock_unlock(&v9->_lock);

  v14 = *MEMORY[0x277D85DE8];
}

- (id)nullSentinelUUID
{
  v2 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"00000000-0000-0000-0000-000000000000"];

  return v2;
}

- (void)unsetParticipantAccessoryUUIDsWithAssociatedGroupIdentifier:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543618;
    v15 = v8;
    v16 = 2112;
    v17 = v4;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Unsetting participant accessory uuids with associated group identifier: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  os_unfair_lock_lock_with_options();
  v9 = [(NSMutableDictionary *)v6->_participantAccessoryUUIDToAssociatedGroupIdentifier allKeys];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __94__HMDMediaGroupsLocalDataStorage_unsetParticipantAccessoryUUIDsWithAssociatedGroupIdentifier___block_invoke;
  v12[3] = &unk_279729328;
  v12[4] = v6;
  v10 = v4;
  v13 = v10;
  [v9 na_each:v12];

  os_unfair_lock_unlock(&v6->_lock);
  v11 = *MEMORY[0x277D85DE8];
}

void __94__HMDMediaGroupsLocalDataStorage_unsetParticipantAccessoryUUIDsWithAssociatedGroupIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [*(*(a1 + 32) + 24) objectForKey:?];
  if ([v3 hmf_isEqualToUUID:*(a1 + 40)])
  {
    v4 = *(a1 + 32);
    v5 = v4[3];
    v6 = [v4 nullSentinelUUID];
    [v5 setObject:v6 forKey:v7];
  }
}

- (id)associatedGroupIdentifierForParticipantAccessoryUUID:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  v5 = [(NSMutableDictionary *)self->_participantAccessoryUUIDToAssociatedGroupIdentifier objectForKey:v4];
  v6 = [(HMDMediaGroupsLocalDataStorage *)self nullSentinelUUID];
  if ([v5 hmf_isEqualToUUID:v6])
  {
    v7 = 0;
  }

  else
  {
    v7 = v5;
  }

  v8 = v7;

  os_unfair_lock_unlock(&self->_lock);

  return v8;
}

- (void)removeAssociatedGroupIdentifierForParticipantAccessoryUUID:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  [(NSMutableDictionary *)self->_participantAccessoryUUIDToAssociatedGroupIdentifier removeObjectForKey:v4];
  os_unfair_lock_unlock(&self->_lock);
}

- (id)allParticipantAccessoryUUIDs
{
  os_unfair_lock_lock_with_options();
  v3 = [(NSMutableDictionary *)self->_participantAccessoryUUIDToAssociatedGroupIdentifier allKeys];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)clearCachedDataForParticipantAccessoryUUID:(id)a3
{
  v4 = a3;
  [(HMDMediaGroupsLocalDataStorage *)self removeAssociatedGroupIdentifierForParticipantAccessoryUUID:v4];
  v5 = [(HMDMediaGroupsLocalDataStorage *)self backupDataSender];
  [v5 clearCachedDataForParticipantAccessoryUUID:v4];
}

- (void)clearCachedData
{
  os_unfair_lock_lock_with_options();
  v3 = [MEMORY[0x277CBEB38] dictionary];
  groups = self->_groups;
  self->_groups = v3;

  v5 = [MEMORY[0x277CBEB38] dictionary];
  participantAccessoryUUIDToAssociatedGroupIdentifier = self->_participantAccessoryUUIDToAssociatedGroupIdentifier;
  self->_participantAccessoryUUIDToAssociatedGroupIdentifier = v5;

  os_unfair_lock_unlock(&self->_lock);
  v7 = [(HMDMediaGroupsLocalDataStorage *)self backupDataSender];
  [v7 clearCachedData];
}

- (id)associatedGroupsWithGroupIdentifier:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDMediaGroupsLocalDataStorage *)self groups];
  v6 = [v5 mutableCopy];

  v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v6, "count")}];
  if (v4)
  {
    v8 = MEMORY[0x277D85DD0];
    while (1)
    {
      v18[0] = v8;
      v18[1] = 3221225472;
      v18[2] = __70__HMDMediaGroupsLocalDataStorage_associatedGroupsWithGroupIdentifier___block_invoke;
      v18[3] = &unk_27972E038;
      v9 = v4;
      v19 = v9;
      v10 = [v6 na_firstObjectPassingTest:v18];
      if (!v10)
      {
        break;
      }

      v11 = v10;
      [v6 removeObject:v10];
      [v7 addObject:v11];
      v4 = [v11 associatedGroupIdentifier];

      if (!v4)
      {
        goto LABEL_9;
      }
    }

    v12 = objc_autoreleasePoolPush();
    v13 = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543618;
      v21 = v15;
      v22 = 2112;
      v23 = v9;
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_ERROR, "%{public}@Failed to find associated group with identifier: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
  }

LABEL_9:

  v16 = *MEMORY[0x277D85DE8];

  return v7;
}

uint64_t __70__HMDMediaGroupsLocalDataStorage_associatedGroupsWithGroupIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 identifier];
  v4 = [v2 hmf_isEqualToUUID:v3];

  return v4;
}

- (id)backupGroupsForParticipantAccessoryUUID:(id)a3
{
  v4 = [(HMDMediaGroupsLocalDataStorage *)self associatedGroupIdentifierForParticipantAccessoryUUID:a3];
  if (v4)
  {
    v5 = [(HMDMediaGroupsLocalDataStorage *)self associatedGroupsWithGroupIdentifier:v4];
  }

  else
  {
    v5 = MEMORY[0x277CBEBF8];
  }

  v6 = [v5 na_map:&__block_literal_global_83489];

  return v6;
}

- (void)backupData
{
  v3 = [(HMDMediaGroupsLocalDataStorage *)self allParticipantAccessoryUUIDs];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __44__HMDMediaGroupsLocalDataStorage_backupData__block_invoke;
  v4[3] = &unk_27972ADE8;
  v4[4] = self;
  [v3 na_each:v4];
}

void __44__HMDMediaGroupsLocalDataStorage_backupData__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 backupDataSender];
  [v4 sendBackupToParticipantAccessoryUUID:v3];
}

- (void)updateGroup:(id)a3 participantAccessoryUUIDs:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543874;
    v22 = v11;
    v23 = 2112;
    v24 = v6;
    v25 = 2112;
    v26 = v7;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Updating using group: %@ participant accessory uuids: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  v12 = [v6 identifier];
  [(HMDMediaGroupsLocalDataStorage *)v9 unsetParticipantAccessoryUUIDsWithAssociatedGroupIdentifier:v12];

  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __72__HMDMediaGroupsLocalDataStorage_updateGroup_participantAccessoryUUIDs___block_invoke;
  v18 = &unk_279729328;
  v19 = v9;
  v20 = v6;
  v13 = v6;
  [v7 na_each:&v15];
  [(HMDMediaGroupsLocalDataStorage *)v9 updateGroup:v13, v15, v16, v17, v18, v19];

  v14 = *MEMORY[0x277D85DE8];
}

void __72__HMDMediaGroupsLocalDataStorage_updateGroup_participantAccessoryUUIDs___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  v5 = [v3 identifier];
  [v2 setParticipantAccessoryUUID:v4 associatedGroupIdentifier:v5];
}

- (void)updateUsingParticipantAccessoryUUID:(id)a3 associatedGroupIdentifier:(id)a4 backedUpGroupData:(id)a5
{
  v32 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_autoreleasePoolPush();
  v12 = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v10, "count")}];
    v24 = 138544130;
    v25 = v14;
    v26 = 2112;
    v27 = v8;
    v28 = 2112;
    v29 = v9;
    v30 = 2112;
    v31 = v15;
    _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@Updating using participant accessory uuid: %@ associated group identifier: %@ backup data count: %@", &v24, 0x2Au);
  }

  objc_autoreleasePoolPop(v11);
  v16 = [MEMORY[0x277CD1BA0] groupsWithProtoBufferData:v10];
  v17 = [v16 count];
  if (v17 == [v10 count])
  {
    [(HMDMediaGroupsLocalDataStorage *)v12 setParticipantAccessoryUUID:v8 associatedGroupIdentifier:v9];
    [(HMDMediaGroupsLocalDataStorage *)v12 addBackedUpGroups:v16];
  }

  else
  {
    v18 = objc_autoreleasePoolPush();
    v19 = v12;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = HMFGetLogIdentifier();
      v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v10, "count")}];
      v24 = 138543874;
      v25 = v21;
      v26 = 2112;
      v27 = v22;
      v28 = 2112;
      v29 = v16;
      _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_INFO, "%{public}@Failed to decode all encoded groups of count: %@ decoded groups: %@", &v24, 0x20u);
    }

    objc_autoreleasePoolPop(v18);
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (HMDMediaGroupsLocalDataStorage)initWithIdentifier:(id)a3 backupSender:(id)a4
{
  v7 = a3;
  v8 = a4;
  v16.receiver = self;
  v16.super_class = HMDMediaGroupsLocalDataStorage;
  v9 = [(HMDMediaGroupsLocalDataStorage *)&v16 init];
  v10 = v9;
  if (v9)
  {
    v9->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v9->_identifier, a3);
    objc_storeStrong(&v10->_backupDataSender, a4);
    v11 = [MEMORY[0x277CBEB38] dictionary];
    groups = v10->_groups;
    v10->_groups = v11;

    v13 = [MEMORY[0x277CBEB38] dictionary];
    participantAccessoryUUIDToAssociatedGroupIdentifier = v10->_participantAccessoryUUIDToAssociatedGroupIdentifier;
    v10->_participantAccessoryUUIDToAssociatedGroupIdentifier = v13;
  }

  return v10;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t24_83504 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t24_83504, &__block_literal_global_11_83505);
  }

  v3 = logCategory__hmf_once_v25_83506;

  return v3;
}

uint64_t __45__HMDMediaGroupsLocalDataStorage_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v25_83506;
  logCategory__hmf_once_v25_83506 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end