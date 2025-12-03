@interface HMDMediaGroupsLocalDataStorage
+ (id)logCategory;
- (HMDMediaGroupsLocalDataStorage)initWithIdentifier:(id)identifier backupSender:(id)sender;
- (HMDMediaGroupsLocalDataStorageDataSource)dataSource;
- (NSArray)groups;
- (id)allParticipantAccessoryUUIDs;
- (id)associatedGroupIdentifierForParticipantAccessoryUUID:(id)d;
- (id)associatedGroupsWithGroupIdentifier:(id)identifier;
- (id)backupGroupsForParticipantAccessoryUUID:(id)d;
- (id)groupWithIdentifier:(id)identifier;
- (id)logIdentifier;
- (id)nullSentinelUUID;
- (id)receiverForParticipantAccessoryUUID:(id)d;
- (id)routerForParticipantAccessoryUUID:(id)d;
- (void)addBackedUpGroup:(id)group;
- (void)addBackedUpGroups:(id)groups;
- (void)backupData;
- (void)clearCachedData;
- (void)clearCachedDataForParticipantAccessoryUUID:(id)d;
- (void)removeAssociatedGroupIdentifierForParticipantAccessoryUUID:(id)d;
- (void)removeGroupWithIdentifier:(id)identifier;
- (void)setParticipantAccessoryUUID:(id)d associatedGroupIdentifier:(id)identifier;
- (void)unsetParticipantAccessoryUUIDsWithAssociatedGroupIdentifier:(id)identifier;
- (void)updateGroup:(id)group;
- (void)updateGroup:(id)group participantAccessoryUUIDs:(id)ds;
- (void)updateUsingParticipantAccessoryUUID:(id)d associatedGroupIdentifier:(id)identifier backedUpGroupData:(id)data;
@end

@implementation HMDMediaGroupsLocalDataStorage

- (HMDMediaGroupsLocalDataStorageDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (id)logIdentifier
{
  identifier = [(HMDMediaGroupsLocalDataStorage *)self identifier];
  uUIDString = [identifier UUIDString];

  return uUIDString;
}

- (id)receiverForParticipantAccessoryUUID:(id)d
{
  v18 = *MEMORY[0x277D85DE8];
  dCopy = d;
  dataSource = [(HMDMediaGroupsLocalDataStorage *)self dataSource];
  v6 = dataSource;
  if (dataSource)
  {
    v7 = [dataSource receiverForParticipantAccessoryUUID:dCopy mediaGroupsLocalDataStorage:self];
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v14 = 138543618;
      v15 = v11;
      v16 = 2112;
      v17 = dCopy;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Failed to get receiver for participant accessory UUID: %@ due to no data source", &v14, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    v7 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)routerForParticipantAccessoryUUID:(id)d
{
  v18 = *MEMORY[0x277D85DE8];
  dCopy = d;
  dataSource = [(HMDMediaGroupsLocalDataStorage *)self dataSource];
  v6 = dataSource;
  if (dataSource)
  {
    v7 = [dataSource routerForParticipantAccessoryUUID:dCopy mediaGroupsLocalDataStorage:self];
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v14 = 138543618;
      v15 = v11;
      v16 = 2112;
      v17 = dCopy;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Failed to get router for participant accessory UUID: %@ due to no data source", &v14, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    v7 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];

  return v7;
}

- (void)removeGroupWithIdentifier:(id)identifier
{
  v14 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v10 = 138543618;
    v11 = v8;
    v12 = 2112;
    v13 = identifierCopy;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Remove group with identifier: %@", &v10, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  [(HMDMediaGroupsLocalDataStorage *)selfCopy unsetParticipantAccessoryUUIDsWithAssociatedGroupIdentifier:identifierCopy];
  os_unfair_lock_lock_with_options();
  [(NSMutableDictionary *)selfCopy->_groups removeObjectForKey:identifierCopy];
  os_unfair_lock_unlock(&selfCopy->_lock);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)updateGroup:(id)group
{
  v16 = *MEMORY[0x277D85DE8];
  groupCopy = group;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v12 = 138543618;
    v13 = v8;
    v14 = 2112;
    v15 = groupCopy;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Update group: %@", &v12, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  os_unfair_lock_lock_with_options();
  groups = selfCopy->_groups;
  identifier = [groupCopy identifier];
  [(NSMutableDictionary *)groups setObject:groupCopy forKey:identifier];

  os_unfair_lock_unlock(&selfCopy->_lock);
  v11 = *MEMORY[0x277D85DE8];
}

- (void)addBackedUpGroup:(id)group
{
  v26 = *MEMORY[0x277D85DE8];
  groupCopy = group;
  os_unfair_lock_lock_with_options();
  groups = self->_groups;
  identifier = [groupCopy identifier];
  v7 = [(NSMutableDictionary *)groups objectForKey:identifier];

  if (v7)
  {
    os_unfair_lock_unlock(&self->_lock);
    v8 = [v7 isEqual:groupCopy];
    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
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
        v23 = groupCopy;
        _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Already added backed up group: %@", &v20, 0x16u);
      }
    }

    else if (v12)
    {
      v18 = HMFGetLogIdentifier();
      v20 = 138543874;
      v21 = v18;
      v22 = 2112;
      v23 = groupCopy;
      v24 = 2112;
      v25 = v7;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Dropping backed up group: %@ existing group: %@", &v20, 0x20u);
    }
  }

  else
  {
    v14 = self->_groups;
    identifier2 = [groupCopy identifier];
    [(NSMutableDictionary *)v14 setObject:groupCopy forKey:identifier2];

    os_unfair_lock_unlock(&self->_lock);
    v9 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v17 = HMFGetLogIdentifier();
      v20 = 138543618;
      v21 = v17;
      v22 = 2112;
      v23 = groupCopy;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Added backed up group: %@", &v20, 0x16u);
    }
  }

  objc_autoreleasePoolPop(v9);
  v19 = *MEMORY[0x277D85DE8];
}

- (void)addBackedUpGroups:(id)groups
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __52__HMDMediaGroupsLocalDataStorage_addBackedUpGroups___block_invoke;
  v3[3] = &unk_278677FE8;
  v3[4] = self;
  [groups na_each:v3];
}

- (id)groupWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  os_unfair_lock_lock_with_options();
  v5 = [(NSMutableDictionary *)self->_groups objectForKey:identifierCopy];
  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

- (NSArray)groups
{
  os_unfair_lock_lock_with_options();
  allValues = [(NSMutableDictionary *)self->_groups allValues];
  os_unfair_lock_unlock(&self->_lock);

  return allValues;
}

- (void)setParticipantAccessoryUUID:(id)d associatedGroupIdentifier:(id)identifier
{
  v21 = *MEMORY[0x277D85DE8];
  dCopy = d;
  identifierCopy = identifier;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v15 = 138543874;
    v16 = v11;
    v17 = 2112;
    v18 = dCopy;
    v19 = 2112;
    v20 = identifierCopy;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Setting participant accessory uuid: %@ associated group identifier: %@", &v15, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  os_unfair_lock_lock_with_options();
  participantAccessoryUUIDToAssociatedGroupIdentifier = selfCopy->_participantAccessoryUUIDToAssociatedGroupIdentifier;
  nullSentinelUUID = identifierCopy;
  if (!identifierCopy)
  {
    nullSentinelUUID = [(HMDMediaGroupsLocalDataStorage *)selfCopy nullSentinelUUID];
  }

  [(NSMutableDictionary *)participantAccessoryUUIDToAssociatedGroupIdentifier setObject:nullSentinelUUID forKey:dCopy];
  if (!identifierCopy)
  {
  }

  os_unfair_lock_unlock(&selfCopy->_lock);

  v14 = *MEMORY[0x277D85DE8];
}

- (id)nullSentinelUUID
{
  v2 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"00000000-0000-0000-0000-000000000000"];

  return v2;
}

- (void)unsetParticipantAccessoryUUIDsWithAssociatedGroupIdentifier:(id)identifier
{
  v18 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543618;
    v15 = v8;
    v16 = 2112;
    v17 = identifierCopy;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Unsetting participant accessory uuids with associated group identifier: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  os_unfair_lock_lock_with_options();
  allKeys = [(NSMutableDictionary *)selfCopy->_participantAccessoryUUIDToAssociatedGroupIdentifier allKeys];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __94__HMDMediaGroupsLocalDataStorage_unsetParticipantAccessoryUUIDsWithAssociatedGroupIdentifier___block_invoke;
  v12[3] = &unk_278677FA0;
  v12[4] = selfCopy;
  v10 = identifierCopy;
  v13 = v10;
  [allKeys na_each:v12];

  os_unfair_lock_unlock(&selfCopy->_lock);
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

- (id)associatedGroupIdentifierForParticipantAccessoryUUID:(id)d
{
  dCopy = d;
  os_unfair_lock_lock_with_options();
  v5 = [(NSMutableDictionary *)self->_participantAccessoryUUIDToAssociatedGroupIdentifier objectForKey:dCopy];
  nullSentinelUUID = [(HMDMediaGroupsLocalDataStorage *)self nullSentinelUUID];
  if ([v5 hmf_isEqualToUUID:nullSentinelUUID])
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

- (void)removeAssociatedGroupIdentifierForParticipantAccessoryUUID:(id)d
{
  dCopy = d;
  os_unfair_lock_lock_with_options();
  [(NSMutableDictionary *)self->_participantAccessoryUUIDToAssociatedGroupIdentifier removeObjectForKey:dCopy];
  os_unfair_lock_unlock(&self->_lock);
}

- (id)allParticipantAccessoryUUIDs
{
  os_unfair_lock_lock_with_options();
  allKeys = [(NSMutableDictionary *)self->_participantAccessoryUUIDToAssociatedGroupIdentifier allKeys];
  os_unfair_lock_unlock(&self->_lock);

  return allKeys;
}

- (void)clearCachedDataForParticipantAccessoryUUID:(id)d
{
  dCopy = d;
  [(HMDMediaGroupsLocalDataStorage *)self removeAssociatedGroupIdentifierForParticipantAccessoryUUID:dCopy];
  backupDataSender = [(HMDMediaGroupsLocalDataStorage *)self backupDataSender];
  [backupDataSender clearCachedDataForParticipantAccessoryUUID:dCopy];
}

- (void)clearCachedData
{
  os_unfair_lock_lock_with_options();
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  groups = self->_groups;
  self->_groups = dictionary;

  dictionary2 = [MEMORY[0x277CBEB38] dictionary];
  participantAccessoryUUIDToAssociatedGroupIdentifier = self->_participantAccessoryUUIDToAssociatedGroupIdentifier;
  self->_participantAccessoryUUIDToAssociatedGroupIdentifier = dictionary2;

  os_unfair_lock_unlock(&self->_lock);
  backupDataSender = [(HMDMediaGroupsLocalDataStorage *)self backupDataSender];
  [backupDataSender clearCachedData];
}

- (id)associatedGroupsWithGroupIdentifier:(id)identifier
{
  v24 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  groups = [(HMDMediaGroupsLocalDataStorage *)self groups];
  v6 = [groups mutableCopy];

  v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v6, "count")}];
  if (identifierCopy)
  {
    v8 = MEMORY[0x277D85DD0];
    while (1)
    {
      v18[0] = v8;
      v18[1] = 3221225472;
      v18[2] = __70__HMDMediaGroupsLocalDataStorage_associatedGroupsWithGroupIdentifier___block_invoke;
      v18[3] = &unk_278689080;
      v9 = identifierCopy;
      v19 = v9;
      v10 = [v6 na_firstObjectPassingTest:v18];
      if (!v10)
      {
        break;
      }

      v11 = v10;
      [v6 removeObject:v10];
      [v7 addObject:v11];
      identifierCopy = [v11 associatedGroupIdentifier];

      if (!identifierCopy)
      {
        goto LABEL_9;
      }
    }

    v12 = objc_autoreleasePoolPush();
    selfCopy = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543618;
      v21 = v15;
      v22 = 2112;
      v23 = v9;
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_ERROR, "%{public}@Failed to find associated group with identifier: %@", buf, 0x16u);
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

- (id)backupGroupsForParticipantAccessoryUUID:(id)d
{
  v4 = [(HMDMediaGroupsLocalDataStorage *)self associatedGroupIdentifierForParticipantAccessoryUUID:d];
  if (v4)
  {
    v5 = [(HMDMediaGroupsLocalDataStorage *)self associatedGroupsWithGroupIdentifier:v4];
  }

  else
  {
    v5 = MEMORY[0x277CBEBF8];
  }

  v6 = [v5 na_map:&__block_literal_global_103985];

  return v6;
}

- (void)backupData
{
  allParticipantAccessoryUUIDs = [(HMDMediaGroupsLocalDataStorage *)self allParticipantAccessoryUUIDs];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __44__HMDMediaGroupsLocalDataStorage_backupData__block_invoke;
  v4[3] = &unk_278682498;
  v4[4] = self;
  [allParticipantAccessoryUUIDs na_each:v4];
}

void __44__HMDMediaGroupsLocalDataStorage_backupData__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 backupDataSender];
  [v4 sendBackupToParticipantAccessoryUUID:v3];
}

- (void)updateGroup:(id)group participantAccessoryUUIDs:(id)ds
{
  v27 = *MEMORY[0x277D85DE8];
  groupCopy = group;
  dsCopy = ds;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543874;
    v22 = v11;
    v23 = 2112;
    v24 = groupCopy;
    v25 = 2112;
    v26 = dsCopy;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Updating using group: %@ participant accessory uuids: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  identifier = [groupCopy identifier];
  [(HMDMediaGroupsLocalDataStorage *)selfCopy unsetParticipantAccessoryUUIDsWithAssociatedGroupIdentifier:identifier];

  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __72__HMDMediaGroupsLocalDataStorage_updateGroup_participantAccessoryUUIDs___block_invoke;
  v18 = &unk_278677FA0;
  v19 = selfCopy;
  v20 = groupCopy;
  v13 = groupCopy;
  [dsCopy na_each:&v15];
  [(HMDMediaGroupsLocalDataStorage *)selfCopy updateGroup:v13, v15, v16, v17, v18, v19];

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

- (void)updateUsingParticipantAccessoryUUID:(id)d associatedGroupIdentifier:(id)identifier backedUpGroupData:(id)data
{
  v32 = *MEMORY[0x277D85DE8];
  dCopy = d;
  identifierCopy = identifier;
  dataCopy = data;
  v11 = objc_autoreleasePoolPush();
  selfCopy = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(dataCopy, "count")}];
    v24 = 138544130;
    v25 = v14;
    v26 = 2112;
    v27 = dCopy;
    v28 = 2112;
    v29 = identifierCopy;
    v30 = 2112;
    v31 = v15;
    _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Updating using participant accessory uuid: %@ associated group identifier: %@ backup data count: %@", &v24, 0x2Au);
  }

  objc_autoreleasePoolPop(v11);
  v16 = [MEMORY[0x277CD1BA0] groupsWithProtoBufferData:dataCopy];
  v17 = [v16 count];
  if (v17 == [dataCopy count])
  {
    [(HMDMediaGroupsLocalDataStorage *)selfCopy setParticipantAccessoryUUID:dCopy associatedGroupIdentifier:identifierCopy];
    [(HMDMediaGroupsLocalDataStorage *)selfCopy addBackedUpGroups:v16];
  }

  else
  {
    v18 = objc_autoreleasePoolPush();
    v19 = selfCopy;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = HMFGetLogIdentifier();
      v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(dataCopy, "count")}];
      v24 = 138543874;
      v25 = v21;
      v26 = 2112;
      v27 = v22;
      v28 = 2112;
      v29 = v16;
      _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_INFO, "%{public}@Failed to decode all encoded groups of count: %@ decoded groups: %@", &v24, 0x20u);
    }

    objc_autoreleasePoolPop(v18);
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (HMDMediaGroupsLocalDataStorage)initWithIdentifier:(id)identifier backupSender:(id)sender
{
  identifierCopy = identifier;
  senderCopy = sender;
  v16.receiver = self;
  v16.super_class = HMDMediaGroupsLocalDataStorage;
  v9 = [(HMDMediaGroupsLocalDataStorage *)&v16 init];
  v10 = v9;
  if (v9)
  {
    v9->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v9->_identifier, identifier);
    objc_storeStrong(&v10->_backupDataSender, sender);
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    groups = v10->_groups;
    v10->_groups = dictionary;

    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    participantAccessoryUUIDToAssociatedGroupIdentifier = v10->_participantAccessoryUUIDToAssociatedGroupIdentifier;
    v10->_participantAccessoryUUIDToAssociatedGroupIdentifier = dictionary2;
  }

  return v10;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t24_104000 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t24_104000, &__block_literal_global_11_104001);
  }

  v3 = logCategory__hmf_once_v25_104002;

  return v3;
}

void __45__HMDMediaGroupsLocalDataStorage_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v25_104002;
  logCategory__hmf_once_v25_104002 = v1;
}

@end