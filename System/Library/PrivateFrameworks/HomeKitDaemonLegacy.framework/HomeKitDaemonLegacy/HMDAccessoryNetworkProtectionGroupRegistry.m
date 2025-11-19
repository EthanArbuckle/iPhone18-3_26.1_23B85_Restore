@interface HMDAccessoryNetworkProtectionGroupRegistry
+ (id)logCategory;
- (BOOL)_evaluateActiveStatusForGroupWithUUID:(id)a3;
- (BOOL)addActiveSurrogateGroup:(id)a3;
- (BOOL)updateTargetProtectionModeForGroupWithUUID:(id)a3 protectionMode:(int64_t)a4 error:(id *)a5 requestMessage:(id)a6;
- (HMDAccessoryNetworkProtectionGroupRegistry)initWithHome:(id)a3 notificationCenter:(id)a4;
- (HMDAccessoryNetworkProtectionGroupRegistry)initWithHome:(id)a3 notificationCenter:(id)a4 persistedGroups:(id)a5;
- (HMDHome)home;
- (NSSet)activeGroups;
- (NSSet)persistedGroups;
- (NSUUID)messageTargetUUID;
- (id)accessoriesForGroupWithUUID:(id)a3;
- (id)groupRecordWithUUID:(id)a3;
- (id)groupWithUUID:(id)a3;
- (id)logIdentifier;
- (id)removeGroupWithUUID:(id)a3;
- (int64_t)targetProtectionModeForGroupWithUUID:(id)a3;
- (void)_registerForAccessoryChanges:(id)a3;
- (void)_registerForMessages;
- (void)_setupActiveGroupsForHome;
- (void)addActiveSurrogateGroupForAccessory:(id)a3 shouldNotifyChange:(BOOL)a4;
- (void)configure;
- (void)handleAddOrUpdateAccessoryNetworkProtectionGroupModel:(id)a3 message:(id)a4;
- (void)handleAddedAccessory:(id)a3;
- (void)handleRemoveAccessoryNetworkProtectionGroupModel:(id)a3 message:(id)a4;
- (void)handleRemovedAccessory:(id)a3;
- (void)handleUpdateAccessoryNetworkProtectionGroupProtectionMode:(id)a3;
- (void)handleUpdatedAccessoryConfiguredNetworkProtectionGroup:(id)a3;
- (void)handleUpdatedAccessoryInitialManufacturerOrCategory:(id)a3;
- (void)notifyClientsOfAddedGroup:(id)a3;
- (void)notifyClientsOfRemovedGroup:(id)a3;
@end

@implementation HMDAccessoryNetworkProtectionGroupRegistry

- (HMDHome)home
{
  WeakRetained = objc_loadWeakRetained(&self->_home);

  return WeakRetained;
}

- (id)accessoriesForGroupWithUUID:(id)a3
{
  v4 = a3;
  v5 = [(HMDAccessoryNetworkProtectionGroupRegistry *)self home];
  v6 = [v5 accessories];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __74__HMDAccessoryNetworkProtectionGroupRegistry_accessoriesForGroupWithUUID___block_invoke;
  v10[3] = &unk_279727E00;
  v11 = v4;
  v7 = v4;
  v8 = [v6 hmf_objectsPassingTest:v10];

  return v8;
}

uint64_t __74__HMDAccessoryNetworkProtectionGroupRegistry_accessoriesForGroupWithUUID___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 networkProtectionGroupUUID];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

- (BOOL)updateTargetProtectionModeForGroupWithUUID:(id)a3 protectionMode:(int64_t)a4 error:(id *)a5 requestMessage:(id)a6
{
  v43 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a6;
  if (a5)
  {
    *a5 = 0;
  }

  v12 = [(HMDAccessoryNetworkProtectionGroupRegistry *)self groupRecordWithUUID:v10];
  v13 = v12;
  if (v12)
  {
    v14 = [v12 isPersisted];
    v15 = [v13 group];
    v16 = v15;
    if (v14)
    {
      v17 = [v15 modelWithObjectChangeType:2];
      v18 = @"Update network protection group protection mode";
    }

    else
    {
      v17 = [v15 modelForVersion:4];
      v18 = @"Create network protection group";
    }

    v26 = objc_autoreleasePoolPush();
    v27 = self;
    v28 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      v29 = HMFGetLogIdentifier();
      v37 = 138543874;
      v38 = v29;
      v39 = 2048;
      v40 = a4;
      v41 = 2112;
      v42 = v10;
      _os_log_impl(&dword_2531F8000, v28, OS_LOG_TYPE_INFO, "%{public}@Updating target protection mode to: %ld, on group with UUID:%@", &v37, 0x20u);
    }

    objc_autoreleasePoolPop(v26);
    v30 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
    [v17 setTargetProtectionMode:v30];

    v31 = [HMDBackingStoreTransactionOptions optionsWithSource:1 destination:2 mustReplay:0 mustPush:0];
    v32 = [(HMDAccessoryNetworkProtectionGroupRegistry *)v27 home];
    v33 = [v32 backingStore];
    v34 = [v33 transaction:v18 options:v31];

    [v34 add:v17 withMessage:v11];
    [v34 run];
  }

  else
  {
    v19 = objc_autoreleasePoolPush();
    v20 = self;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier();
      v23 = [v10 UUIDString];
      v37 = 138543618;
      v38 = v22;
      v39 = 2112;
      v40 = v23;
      _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_ERROR, "%{public}@Cannot find network protection group with UUID %@", &v37, 0x16u);
    }

    objc_autoreleasePoolPop(v19);
    v24 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    v17 = v24;
    if (a5)
    {
      v25 = v24;
      *a5 = v17;
    }

    [v11 respondWithError:v17];
  }

  v35 = *MEMORY[0x277D85DE8];
  return v13 != 0;
}

- (int64_t)targetProtectionModeForGroupWithUUID:(id)a3
{
  v3 = [(HMDAccessoryNetworkProtectionGroupRegistry *)self groupWithUUID:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 targetProtectionMode];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)handleRemovedAccessory:(id)a3
{
  v4 = a3;
  workQueue = self->_workQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __69__HMDAccessoryNetworkProtectionGroupRegistry_handleRemovedAccessory___block_invoke;
  v7[3] = &unk_2797359B0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(workQueue, v7);
}

void __69__HMDAccessoryNetworkProtectionGroupRegistry_handleRemovedAccessory___block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 40);
    v24 = 138543618;
    v25 = v5;
    v26 = 2112;
    v27 = v6;
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_DEBUG, "%{public}@Handling removed accessory: %@", &v24, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v7 = *(a1 + 40);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  if (v9)
  {
    if (([v9 supportsNetworkProtection] & 1) == 0)
    {
      v13 = objc_autoreleasePoolPush();
      v14 = *(a1 + 32);
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        v16 = HMFGetLogIdentifier();
        v24 = 138543362;
        v25 = v16;
        v17 = "%{public}@Accessory does not support network protection";
        v18 = v15;
        v19 = OS_LOG_TYPE_DEBUG;
        v20 = 12;
        goto LABEL_14;
      }

LABEL_17:

      objc_autoreleasePoolPop(v13);
      goto LABEL_18;
    }

    v10 = [v9 networkProtectionGroupUUID];

    if (!v10)
    {
      v13 = objc_autoreleasePoolPush();
      v14 = *(a1 + 32);
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v21 = HMFGetLogIdentifier();
        v22 = *(a1 + 40);
        v24 = 138543618;
        v25 = v21;
        v26 = 2112;
        v27 = v22;
        _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@No network protection group UUID for removed accessory %@", &v24, 0x16u);
      }

      goto LABEL_17;
    }

    v11 = *(a1 + 32);
    v12 = [v9 networkProtectionGroupUUID];
    LODWORD(v11) = [v11 _evaluateActiveStatusForGroupWithUUID:v12];

    if (v11)
    {
      v13 = objc_autoreleasePoolPush();
      v14 = *(a1 + 32);
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = HMFGetLogIdentifier();
        v24 = 138543618;
        v25 = v16;
        v26 = 2112;
        v27 = v9;
        v17 = "%{public}@Removed accessory %@ is not the last in the network protection group";
        v18 = v15;
        v19 = OS_LOG_TYPE_INFO;
        v20 = 22;
LABEL_14:
        _os_log_impl(&dword_2531F8000, v18, v19, v17, &v24, v20);

        goto LABEL_17;
      }

      goto LABEL_17;
    }
  }

LABEL_18:

  v23 = *MEMORY[0x277D85DE8];
}

- (void)handleAddedAccessory:(id)a3
{
  v4 = a3;
  workQueue = self->_workQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __67__HMDAccessoryNetworkProtectionGroupRegistry_handleAddedAccessory___block_invoke;
  v7[3] = &unk_2797359B0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(workQueue, v7);
}

void __67__HMDAccessoryNetworkProtectionGroupRegistry_handleAddedAccessory___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 40);
    v15 = 138543618;
    v16 = v5;
    v17 = 2112;
    v18 = v6;
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_DEBUG, "%{public}@Handling added accessory: %@", &v15, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v7 = *(a1 + 40);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  if (v9)
  {
    if ([v9 supportsNetworkProtection])
    {
      [*(a1 + 32) _registerForAccessoryChanges:v9];
      [*(a1 + 32) _setupProtectionGroupForAccessory:v9 shouldNotifyChange:1];
    }

    else
    {
      v10 = objc_autoreleasePoolPush();
      v11 = *(a1 + 32);
      v12 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        v13 = HMFGetLogIdentifier();
        v15 = 138543362;
        v16 = v13;
        _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_DEBUG, "%{public}@Accessory does not support network protection", &v15, 0xCu);
      }

      objc_autoreleasePoolPop(v10);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)handleRemoveAccessoryNetworkProtectionGroupModel:(id)a3 message:(id)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v12 = [v6 uuid];
    v13 = [v12 UUIDString];
    v26 = 138543618;
    v27 = v11;
    v28 = 2112;
    v29 = v13;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Handling remove of accessory network group model %@", &v26, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  v14 = [v6 uuid];
  v15 = [(HMDAccessoryNetworkProtectionGroupRegistry *)v9 removeGroupWithUUID:v14];

  if (v15)
  {
    if ([v15 isActive])
    {
      v16 = [v15 group];
      [(HMDAccessoryNetworkProtectionGroupRegistry *)v9 notifyClientsOfRemovedGroup:v16];
    }

    v17 = [v7 transactionResult];
    [v17 markChanged];

    [v7 respondWithPayload:0];
  }

  else
  {
    v18 = objc_autoreleasePoolPush();
    v19 = v9;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      v22 = [v6 uuid];
      v23 = [v22 UUIDString];
      v26 = 138543618;
      v27 = v21;
      v28 = 2112;
      v29 = v23;
      _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_ERROR, "%{public}@Accessory network protection group %@ doesn't exist to remove", &v26, 0x16u);
    }

    objc_autoreleasePoolPop(v18);
    v24 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    [v7 respondWithError:v24];
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)handleAddOrUpdateAccessoryNetworkProtectionGroupModel:(id)a3 message:(id)a4
{
  v46 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543618;
    v43 = v11;
    v44 = 2112;
    v45 = v6;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Handling add/update of accessory network protection group model: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  os_unfair_lock_lock_with_options();
  groupRecords = v9->_groupRecords;
  v13 = [v6 uuid];
  v14 = [(NSMutableDictionary *)groupRecords objectForKeyedSubscript:v13];

  if (v14)
  {
    [v14 setPersisted:1];
    v15 = [v14 group];
    [v15 transactionObjectUpdated:0 newValues:v6 message:v7];

    os_unfair_lock_unlock(&v9->_lock);
    v16 = objc_autoreleasePoolPush();
    v17 = v9;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = HMFGetLogIdentifier();
      v20 = [v6 uuid];
      v21 = [v20 UUIDString];
      *buf = 138543618;
      v43 = v19;
      v44 = 2112;
      v45 = v21;
      _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_INFO, "%{public}@Marked existing record for network protection group %@ as persisted", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v16);
  }

  else
  {
    v22 = [[HMDAccessoryNetworkProtectionGroup alloc] initWithModel:v6];
    v23 = [(HMDAccessoryNetworkProtectionGroupRegistry *)v9 home];
    [(HMDAccessoryNetworkProtectionGroup *)v22 configureWithHome:v23];

    v24 = [HMDAccessoryNetworkProtectionGroupRecord recordWithGroup:v22 active:0 persisted:1];
    v25 = v9->_groupRecords;
    v26 = [v6 uuid];
    [(NSMutableDictionary *)v25 setObject:v24 forKeyedSubscript:v26];

    os_unfair_lock_unlock(&v9->_lock);
    v27 = objc_autoreleasePoolPush();
    v28 = v9;
    v29 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
    {
      v30 = HMFGetLogIdentifier();
      v31 = [v6 uuid];
      v32 = [v31 UUIDString];
      *buf = 138543618;
      v43 = v30;
      v44 = 2112;
      v45 = v32;
      _os_log_impl(&dword_2531F8000, v29, OS_LOG_TYPE_INFO, "%{public}@Added new inactive accessory network protection group model %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v27);
    v33 = [(HMDAccessoryNetworkProtectionGroupRegistry *)v28 workQueue];
    v36 = MEMORY[0x277D85DD0];
    v37 = 3221225472;
    v38 = __108__HMDAccessoryNetworkProtectionGroupRegistry_handleAddOrUpdateAccessoryNetworkProtectionGroupModel_message___block_invoke;
    v39 = &unk_2797359B0;
    v40 = v28;
    v41 = v6;
    dispatch_async(v33, &v36);

    v34 = [v7 transactionResult];
    [v34 markChanged];

    [v7 respondWithPayload:0];
  }

  v35 = *MEMORY[0x277D85DE8];
}

void __108__HMDAccessoryNetworkProtectionGroupRegistry_handleAddOrUpdateAccessoryNetworkProtectionGroupModel_message___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) uuid];
  [v1 _evaluateActiveStatusForGroupWithUUID:v2];
}

- (void)configure
{
  [(HMDAccessoryNetworkProtectionGroupRegistry *)self _setupActiveGroupsForHome];

  [(HMDAccessoryNetworkProtectionGroupRegistry *)self _registerForMessages];
}

- (void)addActiveSurrogateGroupForAccessory:(id)a3 shouldNotifyChange:(BOOL)a4
{
  v4 = a4;
  v60 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(HMDAccessoryNetworkProtectionGroupRegistry *)self home];
  v8 = v6;
  v9 = [v8 defaultNetworkProtectionGroupUUID];

  if (v9)
  {
    v10 = [HMDAccessoryNetworkProtectionGroup alloc];
    v11 = [v8 defaultNetworkProtectionGroupUUID];
    v12 = [v8 initialManufacturer];
    v13 = [v8 initialCategoryIdentifier];
    v9 = [(HMDAccessoryNetworkProtectionGroup *)v10 initWithUUID:v11 manufacturer:v12 category:v13 targetProtectionMode:0];

    [(HMDAccessoryNetworkProtectionGroup *)v9 configureWithHome:v7];
  }

  v14 = objc_autoreleasePoolPush();
  v15 = self;
  v16 = HMFGetOSLogHandle();
  v17 = os_log_type_enabled(v16, OS_LOG_TYPE_INFO);
  if (!v9)
  {
    if (v17)
    {
      v39 = HMFGetLogIdentifier();
      v40 = [v8 name];
      v49 = [v8 uuid];
      v41 = [v49 UUIDString];
      v42 = [v8 initialManufacturer];
      v43 = [v8 initialCategoryIdentifier];
      *buf = 138544386;
      v51 = v39;
      v52 = 2112;
      v53 = v40;
      v54 = 2112;
      v55 = v41;
      v56 = 2112;
      v57 = v42;
      v58 = 2112;
      v59 = v43;
      _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_INFO, "%{public}@Unable to generate surrogate group due to missing information for accessory name: %@ UUID: %@ initialManufacturer: %@ initialCategory: %@ ", buf, 0x34u);
    }

    v44 = v14;
    goto LABEL_21;
  }

  if (v17)
  {
    v18 = HMFGetLogIdentifier();
    *buf = 138543618;
    v51 = v18;
    v52 = 2112;
    v53 = v9;
    _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_INFO, "%{public}@Attempting to add active surrogate network protection group: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v14);
  v19 = objc_autoreleasePoolPush();
  v20 = v15;
  v21 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    v22 = HMFGetLogIdentifier();
    v23 = [(HMDAccessoryNetworkProtectionGroup *)v9 uuid];
    v24 = [(HMDAccessoryNetworkProtectionGroupRegistry *)v20 groupWithUUID:v23];
    *buf = 138543618;
    v51 = v22;
    v52 = 2112;
    v53 = v24;
    _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_INFO, "%{public}@Existing network protection group with matching UUID: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v19);
  v25 = [(HMDAccessoryNetworkProtectionGroupRegistry *)v20 addActiveSurrogateGroup:v9];
  v26 = objc_autoreleasePoolPush();
  v27 = v20;
  v28 = HMFGetOSLogHandle();
  v29 = os_log_type_enabled(v28, OS_LOG_TYPE_INFO);
  if (!v25)
  {
    if (v29)
    {
      v45 = HMFGetLogIdentifier();
      v46 = [(HMDAccessoryNetworkProtectionGroup *)v9 uuid];
      v47 = [v46 UUIDString];
      *buf = 138543874;
      v51 = v45;
      v52 = 2112;
      v53 = v47;
      v54 = 2112;
      v55 = v8;
      _os_log_impl(&dword_2531F8000, v28, OS_LOG_TYPE_INFO, "%{public}@No change to status of network protection group %@ on behalf of %@", buf, 0x20u);
    }

    v44 = v26;
LABEL_21:
    objc_autoreleasePoolPop(v44);
    goto LABEL_22;
  }

  if (v29)
  {
    v30 = HMFGetLogIdentifier();
    v31 = [(HMDAccessoryNetworkProtectionGroup *)v9 uuid];
    v32 = [(HMDAccessoryNetworkProtectionGroupRegistry *)v27 groupWithUUID:v31];
    *buf = 138543618;
    v51 = v30;
    v52 = 2112;
    v53 = v32;
    _os_log_impl(&dword_2531F8000, v28, OS_LOG_TYPE_INFO, "%{public}@Added and marked active network protection group: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v26);
  if (v4)
  {
    v33 = [(HMDAccessoryNetworkProtectionGroup *)v9 uuid];
    v34 = [(HMDAccessoryNetworkProtectionGroupRegistry *)v27 groupWithUUID:v33];

    v35 = objc_autoreleasePoolPush();
    v36 = v27;
    v37 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
    {
      v38 = HMFGetLogIdentifier();
      *buf = 138543618;
      v51 = v38;
      v52 = 2112;
      v53 = v34;
      _os_log_impl(&dword_2531F8000, v37, OS_LOG_TYPE_INFO, "%{public}@Notifying for added network protection group %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v35);
    [(HMDAccessoryNetworkProtectionGroupRegistry *)v36 notifyClientsOfAddedGroup:v34];
  }

LABEL_22:

  v48 = *MEMORY[0x277D85DE8];
}

- (void)notifyClientsOfRemovedGroup:(id)a3
{
  v20[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDAccessoryNetworkProtectionGroupRegistry *)self notificationCenter];
  v19 = *MEMORY[0x277CCEBE0];
  v20[0] = v4;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];
  [v5 postNotificationName:@"HMDAccessoryNetworkProtectionGroupProtectionModeDeactivated" object:self userInfo:v6];

  v7 = [(HMDAccessoryNetworkProtectionGroupRegistry *)self home];
  v8 = MEMORY[0x277D0F848];
  v9 = *MEMORY[0x277CCEC00];
  v10 = [v7 messageDestination];
  v17 = *MEMORY[0x277CCEC10];
  v11 = [v4 uuid];
  v12 = [v11 UUIDString];
  v18 = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
  v14 = [v8 messageWithName:v9 destination:v10 payload:v13];

  [v14 setRequiresSPIEntitlement:1];
  v15 = [v7 msgDispatcher];
  [v15 sendMessage:v14 completionHandler:0];

  v16 = *MEMORY[0x277D85DE8];
}

- (void)notifyClientsOfAddedGroup:(id)a3
{
  v20[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDAccessoryNetworkProtectionGroupRegistry *)self notificationCenter];
  v19 = *MEMORY[0x277CCEBE0];
  v6 = v19;
  v20[0] = v4;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];
  [v5 postNotificationName:@"HMDAccessoryNetworkProtectionGroupProtectionModeActivated" object:self userInfo:v7];

  v8 = [(HMDAccessoryNetworkProtectionGroupRegistry *)self home];
  v9 = MEMORY[0x277D0F848];
  v10 = *MEMORY[0x277CCEBC8];
  v11 = [v8 messageDestination];
  v17 = v6;
  v12 = encodeRootObjectForSPIClients(v4);
  v18 = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
  v14 = [v9 messageWithName:v10 destination:v11 payload:v13];

  [v14 setRequiresSPIEntitlement:1];
  v15 = [v8 msgDispatcher];
  [v15 sendMessage:v14 completionHandler:0];

  v16 = *MEMORY[0x277D85DE8];
}

- (BOOL)_evaluateActiveStatusForGroupWithUUID:(id)a3
{
  v36 = *MEMORY[0x277D85DE8];
  v26 = a3;
  v4 = objc_autoreleasePoolPush();
  v5 = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    *buf = 138543618;
    v33 = v7;
    v34 = 2112;
    v35 = v26;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@evaluating active status for groupUUID: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v8 = [(HMDAccessoryNetworkProtectionGroupRegistry *)v5 home];
  v9 = [v8 accessories];

  v10 = [v9 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v10)
  {
    v11 = *v28;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v28 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v27 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v14 = v13;
        }

        else
        {
          v14 = 0;
        }

        v15 = v14;

        if ([v15 supportsNetworkProtection])
        {
          v16 = [v15 networkProtectionGroupUUID];
          v17 = [v16 isEqual:v26];

          if (v17)
          {

            v10 = 1;
            goto LABEL_19;
          }
        }

        else
        {
          v18 = objc_autoreleasePoolPush();
          v19 = v5;
          v20 = v5;
          v21 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
          {
            v22 = HMFGetLogIdentifier();
            *buf = 138543362;
            v33 = v22;
            _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_DEBUG, "%{public}@Accessory does not support network protection", buf, 0xCu);
          }

          objc_autoreleasePoolPop(v18);
          v5 = v19;
        }
      }

      v10 = [v9 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v10);
  }

LABEL_19:

  v23 = [(HMDAccessoryNetworkProtectionGroupRegistry *)v5 _updateGroupWithUUID:v26 active:v10];
  v24 = *MEMORY[0x277D85DE8];
  return v23;
}

- (void)_setupActiveGroupsForHome
{
  v34 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v7 = MEMORY[0x277CCABB0];
    v8 = [(HMDAccessoryNetworkProtectionGroupRegistry *)v4 home];
    v9 = [v8 accessories];
    v10 = [v7 numberWithUnsignedInteger:{objc_msgSend(v9, "count")}];
    v11 = [(HMDAccessoryNetworkProtectionGroupRegistry *)v4 home];
    v12 = [v11 name];
    *buf = 138543874;
    v29 = v6;
    v30 = 2112;
    v31 = v10;
    v32 = 2112;
    v33 = v12;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@Evaluating active network protection groups based on %@ existing accessories for home %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v3);
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v13 = [(HMDAccessoryNetworkProtectionGroupRegistry *)v4 home];
  v14 = [v13 accessories];

  v15 = [v14 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v24;
    do
    {
      v18 = 0;
      do
      {
        if (*v24 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v23 + 1) + 8 * v18);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v20 = v19;
        }

        else
        {
          v20 = 0;
        }

        v21 = v20;

        if ([v21 supportsNetworkProtection])
        {
          [(HMDAccessoryNetworkProtectionGroupRegistry *)v4 _registerForAccessoryChanges:v21];
          [(HMDAccessoryNetworkProtectionGroupRegistry *)v4 _setupProtectionGroupForAccessory:v21 shouldNotifyChange:0];
        }

        ++v18;
      }

      while (v16 != v18);
      v16 = [v14 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v16);
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)_registerForAccessoryChanges:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 0;
    *&buf[8] = 0;
    v9 = [v4 uuid];

    if (v9)
    {
      v10 = [v4 uuid];
      [v10 getUUIDBytes:buf];
    }

    else
    {
      *buf = *MEMORY[0x277D0F960];
    }

    v15 = *buf;
    *buf = 138543874;
    *&buf[4] = v8;
    *&buf[12] = 1040;
    *&buf[14] = 16;
    v17 = 2096;
    v18 = &v15;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Registering for manufacturer, category and configured group update for accessory: %{uuid_t}.16P", buf, 0x1Cu);
  }

  objc_autoreleasePoolPop(v5);
  v11 = [(HMDAccessoryNetworkProtectionGroupRegistry *)v6 notificationCenter];
  [v11 addObserver:v6 selector:sel_handleUpdatedAccessoryInitialManufacturerOrCategory_ name:@"HMDAccessoryManufacturerUpdatedNotification" object:v4];

  v12 = [(HMDAccessoryNetworkProtectionGroupRegistry *)v6 notificationCenter];
  [v12 addObserver:v6 selector:sel_handleUpdatedAccessoryInitialManufacturerOrCategory_ name:@"HMDAccessoryCategoryUpdatedNotification" object:v4];

  v13 = [(HMDAccessoryNetworkProtectionGroupRegistry *)v6 notificationCenter];
  [v13 addObserver:v6 selector:sel_handleUpdatedAccessoryConfiguredNetworkProtectionGroup_ name:@"HMDAccessoryConfiguredNetworkProtectionGroupUpdatedNotification" object:v4];

  v14 = *MEMORY[0x277D85DE8];
}

- (void)handleUpdatedAccessoryConfiguredNetworkProtectionGroup:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543362;
    v16 = v8;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Handling UpdatedAccessoryConfiguredNetworkProtectionGroup", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [(HMDAccessoryNetworkProtectionGroupRegistry *)v6 workQueue];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __101__HMDAccessoryNetworkProtectionGroupRegistry_handleUpdatedAccessoryConfiguredNetworkProtectionGroup___block_invoke;
  v12[3] = &unk_2797359B0;
  v13 = v4;
  v14 = v6;
  v10 = v4;
  dispatch_async(v9, v12);

  v11 = *MEMORY[0x277D85DE8];
}

void __101__HMDAccessoryNetworkProtectionGroupRegistry_handleUpdatedAccessoryConfiguredNetworkProtectionGroup___block_invoke(uint64_t a1)
{
  v31 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  if (v4)
  {
    v5 = [*(a1 + 32) userInfo];
    v6 = [v5 objectForKeyedSubscript:@"HMDAccessoryPreviousConfiguredNetworkProtectionGroupUUIDKey"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;

    v9 = objc_autoreleasePoolPush();
    v10 = *(a1 + 40);
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      v17 = [v4 name];
      v19 = [v4 uuid];
      v12 = [v19 UUIDString];
      [v8 UUIDString];
      v13 = v20 = v9;
      v14 = [v4 networkProtectionGroupUUID];
      v15 = [v14 UUIDString];
      *buf = 138544386;
      v22 = v18;
      v23 = 2112;
      v24 = v17;
      v25 = 2112;
      v26 = v12;
      v27 = 2112;
      v28 = v13;
      v29 = 2112;
      v30 = v15;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Accessory %@/%@ is leaving group %@ and joining group %@", buf, 0x34u);

      v9 = v20;
    }

    objc_autoreleasePoolPop(v9);
    if (v8)
    {
      [*(a1 + 40) _evaluateActiveStatusForGroupWithUUID:v8];
    }

    [*(a1 + 40) _setupProtectionGroupForAccessory:v4 shouldNotifyChange:1];
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)handleUpdatedAccessoryInitialManufacturerOrCategory:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543362;
    v16 = v8;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Handling UpdatedAccessoryInitialManufacturerOrCategory", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [(HMDAccessoryNetworkProtectionGroupRegistry *)v6 workQueue];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __98__HMDAccessoryNetworkProtectionGroupRegistry_handleUpdatedAccessoryInitialManufacturerOrCategory___block_invoke;
  v12[3] = &unk_2797359B0;
  v13 = v4;
  v14 = v6;
  v10 = v4;
  dispatch_async(v9, v12);

  v11 = *MEMORY[0x277D85DE8];
}

void __98__HMDAccessoryNetworkProtectionGroupRegistry_handleUpdatedAccessoryInitialManufacturerOrCategory___block_invoke(uint64_t a1)
{
  v34 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  if (v4)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = *(a1 + 40);
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      v9 = [v4 name];
      v10 = [v4 uuid];
      v11 = [v10 UUIDString];
      v12 = [v4 initialManufacturer];
      [v4 initialCategoryIdentifier];
      v13 = v23 = v5;
      *buf = 138544386;
      v25 = v8;
      v26 = 2112;
      v27 = v9;
      v28 = 2112;
      v29 = v11;
      v30 = 2112;
      v31 = v12;
      v32 = 2112;
      v33 = v13;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Accessory %@/%@ has updated initialManufacturer: %@, initialCategory: %@", buf, 0x34u);

      v5 = v23;
    }

    objc_autoreleasePoolPop(v5);
    if (isAccessoryInDefaultGroup(v4))
    {
      [*(a1 + 40) addActiveSurrogateGroupForAccessory:v4 shouldNotifyChange:1];
    }

    else
    {
      v14 = objc_autoreleasePoolPush();
      v15 = *(a1 + 40);
      v16 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v17 = HMFGetLogIdentifier();
        v18 = [v4 name];
        v19 = [v4 uuid];
        v20 = [v19 UUIDString];
        v21 = [v4 networkProtectionGroupUUID];
        *buf = 138544130;
        v25 = v17;
        v26 = 2112;
        v27 = v18;
        v28 = 2112;
        v29 = v20;
        v30 = 2112;
        v31 = v21;
        _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_INFO, "%{public}@Accessory %@/%@ is assigned to non-default group %@", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v14);
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)handleUpdateAccessoryNetworkProtectionGroupProtectionMode:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543362;
    v31 = v8;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Handling UpdateAccessoryNetworkProtectionGroupProtectionMode", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [(HMDAccessoryNetworkProtectionGroupRegistry *)v6 home];
  v10 = [v9 networkRouterSupport];

  if ((v10 & 2) != 0)
  {
    v16 = [v4 uuidForKey:*MEMORY[0x277CCEC10]];
    if (v16)
    {
      v17 = [v4 numberForKey:*MEMORY[0x277CCEBF0]];
      if (v17)
      {
        v18 = v17;
        v29 = 0;
        -[HMDAccessoryNetworkProtectionGroupRegistry updateTargetProtectionModeForGroupWithUUID:protectionMode:error:requestMessage:](v6, "updateTargetProtectionModeForGroupWithUUID:protectionMode:error:requestMessage:", v16, [v17 integerValue], &v29, v4);
      }

      else
      {
        v23 = objc_autoreleasePoolPush();
        v24 = v6;
        v25 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          v26 = HMFGetLogIdentifier();
          *buf = 138543362;
          v31 = v26;
          _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_ERROR, "%{public}@Received update group network protection mode with nil for protection mode", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v23);
        v27 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
        [v4 respondWithError:v27];

        v18 = 0;
      }
    }

    else
    {
      v19 = objc_autoreleasePoolPush();
      v20 = v6;
      v21 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v22 = HMFGetLogIdentifier();
        *buf = 138543362;
        v31 = v22;
        _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_ERROR, "%{public}@Received update group network protection mode with nil for group UUID", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v19);
      v18 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
      [v4 respondWithError:v18];
    }
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    v12 = v6;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v15 = +[HMDHomeKitVersion currentVersion];
      *buf = 138543618;
      v31 = v14;
      v32 = 2112;
      v33 = v15;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_ERROR, "%{public}@HomeKit version %@ does not meet the minimum version required to support network protection group update", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    v16 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
    [v4 respondWithError:v16];
  }

  v28 = *MEMORY[0x277D85DE8];
}

- (void)_registerForMessages
{
  v10[2] = *MEMORY[0x277D85DE8];
  v3 = [(HMDAccessoryNetworkProtectionGroupRegistry *)self home];
  v4 = [v3 administratorHandler];
  v5 = *MEMORY[0x277CCEBF8];
  v6 = [HMDXPCMessagePolicy policyWithEntitlements:5];
  v10[0] = v6;
  v7 = [HMDConfigurationMessagePolicy policyWithOperationTypes:2];
  v10[1] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:2];
  [v4 registerForMessage:v5 receiver:self policies:v8 selector:sel_handleUpdateAccessoryNetworkProtectionGroupProtectionMode_];

  v9 = *MEMORY[0x277D85DE8];
}

- (NSUUID)messageTargetUUID
{
  v2 = [(HMDAccessoryNetworkProtectionGroupRegistry *)self home];
  v3 = [v2 messageTargetUUID];

  return v3;
}

- (id)logIdentifier
{
  v2 = [(HMDAccessoryNetworkProtectionGroupRegistry *)self home];
  v3 = [v2 uuid];
  v4 = [v3 UUIDString];

  return v4;
}

- (id)removeGroupWithUUID:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  os_unfair_lock_lock_with_options();
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
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Removing group with UUID: %@", &v12, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [(NSMutableDictionary *)v6->_groupRecords objectForKeyedSubscript:v4];
  if (v9)
  {
    [(NSMutableDictionary *)v6->_groupRecords removeObjectForKey:v4];
  }

  os_unfair_lock_unlock(&self->_lock);

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (BOOL)addActiveSurrogateGroup:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  os_unfair_lock_lock_with_options();
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v21 = 138543618;
    v22 = v8;
    v23 = 2112;
    v24 = v4;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Adding active surrogate group: %@", &v21, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  groupRecords = v6->_groupRecords;
  v10 = [v4 uuid];
  v11 = [(NSMutableDictionary *)groupRecords objectForKeyedSubscript:v10];

  if (v11)
  {
    v12 = v6->_groupRecords;
    v13 = [v4 uuid];
    v14 = [(NSMutableDictionary *)v12 objectForKeyedSubscript:v13];

    v15 = [v14 isActive];
    if ((v15 & 1) == 0)
    {
      [v14 setActive:1];
    }

    v16 = v15 ^ 1;
  }

  else
  {
    v14 = [HMDAccessoryNetworkProtectionGroupRecord recordWithGroup:v4 active:1 persisted:0];
    v17 = v6->_groupRecords;
    v18 = [v4 uuid];
    [(NSMutableDictionary *)v17 setObject:v14 forKeyedSubscript:v18];

    v16 = 1;
  }

  os_unfair_lock_unlock(&self->_lock);
  v19 = *MEMORY[0x277D85DE8];
  return v16;
}

- (id)groupWithUUID:(id)a3
{
  v3 = [(HMDAccessoryNetworkProtectionGroupRegistry *)self groupRecordWithUUID:a3];
  v4 = [v3 group];

  return v4;
}

- (id)groupRecordWithUUID:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  v5 = [(NSMutableDictionary *)self->_groupRecords objectForKeyedSubscript:v4];
  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

- (NSSet)activeGroups
{
  v18 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock_with_options();
  v3 = [MEMORY[0x277CBEB58] set];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [(NSMutableDictionary *)self->_groupRecords allValues];
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = *v14;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        if ([v8 isActive])
        {
          v9 = [v8 group];
          [v3 addObject:v9];
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  v10 = [v3 copy];
  os_unfair_lock_unlock(&self->_lock);
  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (NSSet)persistedGroups
{
  v18 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock_with_options();
  v3 = [MEMORY[0x277CBEB58] set];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [(NSMutableDictionary *)self->_groupRecords allValues];
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = *v14;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        if ([v8 isPersisted])
        {
          v9 = [v8 group];
          [v3 addObject:v9];
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  v10 = [v3 copy];
  os_unfair_lock_unlock(&self->_lock);
  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (HMDAccessoryNetworkProtectionGroupRegistry)initWithHome:(id)a3 notificationCenter:(id)a4 persistedGroups:(id)a5
{
  v57 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(HMDAccessoryNetworkProtectionGroupRegistry *)self initWithHome:v8 notificationCenter:v9];
  v12 = v11;
  if (v10 && v11)
  {
    v37 = v10;
    v38 = v9;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    obj = v10;
    v13 = [obj countByEnumeratingWithState:&v42 objects:v50 count:16];
    v39 = v12;
    v40 = v8;
    if (v13)
    {
      v14 = v13;
      v15 = *v43;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v43 != v15)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(*(&v42 + 1) + 8 * i);
          v18 = objc_autoreleasePoolPush();
          v19 = v12;
          v20 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
          {
            v21 = HMFGetLogIdentifier();
            v22 = [v8 uuid];
            v23 = [v22 UUIDString];
            *buf = 138543874;
            v52 = v21;
            v53 = 2112;
            v54 = v23;
            v55 = 2112;
            v56 = v17;
            _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_DEBUG, "%{public}@[%@] Loading persisted group: %@", buf, 0x20u);

            v8 = v40;
            v12 = v39;
          }

          objc_autoreleasePoolPop(v18);
          [v17 configureWithHome:v8];
        }

        v14 = [obj countByEnumeratingWithState:&v42 objects:v50 count:16];
      }

      while (v14);
    }

    v24 = obj;
    v25 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v24, "count")}];
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v26 = v24;
    v27 = [v26 countByEnumeratingWithState:&v46 objects:buf count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v47;
      do
      {
        for (j = 0; j != v28; ++j)
        {
          if (*v47 != v29)
          {
            objc_enumerationMutation(v26);
          }

          v31 = *(*(&v46 + 1) + 8 * j);
          v32 = [HMDAccessoryNetworkProtectionGroupRecord recordWithGroup:v31 active:0 persisted:1, v37, v38];
          v33 = [v31 uuid];
          [(NSMutableDictionary *)v25 setObject:v32 forKeyedSubscript:v33];
        }

        v28 = [v26 countByEnumeratingWithState:&v46 objects:buf count:16];
      }

      while (v28);
    }

    v12 = v39;
    groupRecords = v39->_groupRecords;
    v39->_groupRecords = v25;

    v8 = v40;
    v10 = v37;
    v9 = v38;
  }

  v35 = *MEMORY[0x277D85DE8];
  return v12;
}

- (HMDAccessoryNetworkProtectionGroupRegistry)initWithHome:(id)a3 notificationCenter:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = HMDAccessoryNetworkProtectionGroupRegistry;
  v8 = [(HMDAccessoryNetworkProtectionGroupRegistry *)&v14 init];
  if (v8)
  {
    v9 = [MEMORY[0x277CBEB38] dictionary];
    groupRecords = v8->_groupRecords;
    v8->_groupRecords = v9;

    objc_storeWeak(&v8->_home, v6);
    objc_storeStrong(&v8->_notificationCenter, a4);
    v11 = [v6 workQueue];
    workQueue = v8->_workQueue;
    v8->_workQueue = v11;
  }

  return v8;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t10_58684 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t10_58684, &__block_literal_global_58685);
  }

  v3 = logCategory__hmf_once_v11_58686;

  return v3;
}

uint64_t __57__HMDAccessoryNetworkProtectionGroupRegistry_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v11_58686;
  logCategory__hmf_once_v11_58686 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end