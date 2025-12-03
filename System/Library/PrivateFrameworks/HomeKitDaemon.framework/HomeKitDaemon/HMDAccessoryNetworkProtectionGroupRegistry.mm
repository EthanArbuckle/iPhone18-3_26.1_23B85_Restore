@interface HMDAccessoryNetworkProtectionGroupRegistry
+ (id)logCategory;
- (BOOL)_evaluateActiveStatusForGroupWithUUID:(id)d;
- (BOOL)addActiveSurrogateGroup:(id)group;
- (BOOL)updateTargetProtectionModeForGroupWithUUID:(id)d protectionMode:(int64_t)mode error:(id *)error requestMessage:(id)message;
- (HMDAccessoryNetworkProtectionGroupRegistry)initWithHome:(id)home notificationCenter:(id)center;
- (HMDAccessoryNetworkProtectionGroupRegistry)initWithHome:(id)home notificationCenter:(id)center persistedGroups:(id)groups;
- (HMDHome)home;
- (NSSet)activeGroups;
- (NSSet)persistedGroups;
- (NSUUID)messageTargetUUID;
- (id)accessoriesForGroupWithUUID:(id)d;
- (id)groupRecordWithUUID:(id)d;
- (id)groupWithUUID:(id)d;
- (id)logIdentifier;
- (id)removeGroupWithUUID:(id)d;
- (int64_t)targetProtectionModeForGroupWithUUID:(id)d;
- (void)_registerForAccessoryChanges:(id)changes;
- (void)_registerForMessages;
- (void)_setupActiveGroupsForHome;
- (void)addActiveSurrogateGroupForAccessory:(id)accessory shouldNotifyChange:(BOOL)change;
- (void)configure;
- (void)handleAccessoryTransportAdded:(id)added;
- (void)handleAddOrUpdateAccessoryNetworkProtectionGroupModel:(id)model message:(id)message;
- (void)handleAddedAccessory:(id)accessory;
- (void)handleRemoveAccessoryNetworkProtectionGroupModel:(id)model message:(id)message;
- (void)handleRemovedAccessory:(id)accessory;
- (void)handleUpdateAccessoryNetworkProtectionGroupProtectionMode:(id)mode;
- (void)handleUpdatedAccessoryConfiguredNetworkProtectionGroup:(id)group;
- (void)handleUpdatedAccessoryInitialManufacturerOrCategory:(id)category;
- (void)notifyClientsOfAddedGroup:(id)group;
- (void)notifyClientsOfRemovedGroup:(id)group;
@end

@implementation HMDAccessoryNetworkProtectionGroupRegistry

- (HMDHome)home
{
  WeakRetained = objc_loadWeakRetained(&self->_home);

  return WeakRetained;
}

- (void)handleAccessoryTransportAdded:(id)added
{
  object = [added object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = object;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (v6)
  {
    workQueue = self->_workQueue;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __76__HMDAccessoryNetworkProtectionGroupRegistry_handleAccessoryTransportAdded___block_invoke;
    v8[3] = &unk_27868A750;
    v8[4] = self;
    v9 = v6;
    dispatch_async(workQueue, v8);
  }
}

void __76__HMDAccessoryNetworkProtectionGroupRegistry_handleAccessoryTransportAdded___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 40);
    v14 = 138543618;
    v15 = v5;
    v16 = 2112;
    v17 = v6;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Handling accessory transport added for accessory: %@", &v14, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v7 = [*(a1 + 32) notificationCenter];
  [v7 removeObserver:*(a1 + 32) name:@"HMDAccessoryTransportAddedNotification" object:*(a1 + 40)];

  if ([*(a1 + 40) supportsNetworkProtection])
  {
    [*(a1 + 32) _registerForAccessoryChanges:*(a1 + 40)];
    [*(a1 + 32) _setupProtectionGroupForAccessory:*(a1 + 40) shouldNotifyChange:1];
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v9 = *(a1 + 32);
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      [*(a1 + 40) supportsNetworkProtection];
      v12 = HMFBooleanToString();
      v14 = 138543618;
      v15 = v11;
      v16 = 2112;
      v17 = v12;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Not creating protection group for accessory, supportsNetworkProtection: %@", &v14, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (id)accessoriesForGroupWithUUID:(id)d
{
  dCopy = d;
  home = [(HMDAccessoryNetworkProtectionGroupRegistry *)self home];
  accessories = [home accessories];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __74__HMDAccessoryNetworkProtectionGroupRegistry_accessoriesForGroupWithUUID___block_invoke;
  v10[3] = &unk_278677308;
  v11 = dCopy;
  v7 = dCopy;
  v8 = [accessories hmf_objectsPassingTest:v10];

  return v8;
}

uint64_t __74__HMDAccessoryNetworkProtectionGroupRegistry_accessoriesForGroupWithUUID___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 networkProtectionGroupUUID];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

- (BOOL)updateTargetProtectionModeForGroupWithUUID:(id)d protectionMode:(int64_t)mode error:(id *)error requestMessage:(id)message
{
  v43 = *MEMORY[0x277D85DE8];
  dCopy = d;
  messageCopy = message;
  if (error)
  {
    *error = 0;
  }

  v12 = [(HMDAccessoryNetworkProtectionGroupRegistry *)self groupRecordWithUUID:dCopy];
  v13 = v12;
  if (v12)
  {
    isPersisted = [v12 isPersisted];
    group = [v13 group];
    v16 = group;
    if (isPersisted)
    {
      v17 = [group modelWithObjectChangeType:2];
      v18 = @"Update network protection group protection mode";
    }

    else
    {
      v17 = [group modelForVersion:4];
      v18 = @"Create network protection group";
    }

    v26 = objc_autoreleasePoolPush();
    selfCopy = self;
    v28 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      v29 = HMFGetLogIdentifier();
      v37 = 138543874;
      v38 = v29;
      v39 = 2048;
      modeCopy = mode;
      v41 = 2112;
      v42 = dCopy;
      _os_log_impl(&dword_229538000, v28, OS_LOG_TYPE_INFO, "%{public}@Updating target protection mode to: %ld, on group with UUID:%@", &v37, 0x20u);
    }

    objc_autoreleasePoolPop(v26);
    v30 = [MEMORY[0x277CCABB0] numberWithInteger:mode];
    [v17 setTargetProtectionMode:v30];

    v31 = [HMDBackingStoreTransactionOptions optionsWithSource:1 destination:2 mustReplay:0 mustPush:0];
    home = [(HMDAccessoryNetworkProtectionGroupRegistry *)selfCopy home];
    backingStore = [home backingStore];
    v34 = [backingStore transaction:v18 options:v31];

    [v34 add:v17 withMessage:messageCopy];
    [v34 run];
  }

  else
  {
    v19 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier();
      uUIDString = [dCopy UUIDString];
      v37 = 138543618;
      v38 = v22;
      v39 = 2112;
      modeCopy = uUIDString;
      _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_ERROR, "%{public}@Cannot find network protection group with UUID %@", &v37, 0x16u);
    }

    objc_autoreleasePoolPop(v19);
    v24 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    v17 = v24;
    if (error)
    {
      v25 = v24;
      *error = v17;
    }

    [messageCopy respondWithError:v17];
  }

  v35 = *MEMORY[0x277D85DE8];
  return v13 != 0;
}

- (int64_t)targetProtectionModeForGroupWithUUID:(id)d
{
  v3 = [(HMDAccessoryNetworkProtectionGroupRegistry *)self groupWithUUID:d];
  v4 = v3;
  if (v3)
  {
    targetProtectionMode = [v3 targetProtectionMode];
  }

  else
  {
    targetProtectionMode = 0;
  }

  return targetProtectionMode;
}

- (void)handleRemovedAccessory:(id)accessory
{
  accessoryCopy = accessory;
  workQueue = self->_workQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __69__HMDAccessoryNetworkProtectionGroupRegistry_handleRemovedAccessory___block_invoke;
  v7[3] = &unk_27868A750;
  v7[4] = self;
  v8 = accessoryCopy;
  v6 = accessoryCopy;
  dispatch_async(workQueue, v7);
}

void __69__HMDAccessoryNetworkProtectionGroupRegistry_handleRemovedAccessory___block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 40);
    v25 = 138543618;
    v26 = v5;
    v27 = 2112;
    v28 = v6;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_DEBUG, "%{public}@Handling removed accessory: %@", &v25, 0x16u);
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
    v10 = [*(a1 + 32) notificationCenter];
    [v10 removeObserver:*(a1 + 32) name:@"HMDAccessoryTransportAddedNotification" object:v9];

    if (([v9 supportsNetworkProtection] & 1) == 0)
    {
      v14 = objc_autoreleasePoolPush();
      v15 = *(a1 + 32);
      v16 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        v17 = HMFGetLogIdentifier();
        v25 = 138543362;
        v26 = v17;
        v18 = "%{public}@Accessory does not support network protection";
        v19 = v16;
        v20 = OS_LOG_TYPE_DEBUG;
        v21 = 12;
        goto LABEL_14;
      }

LABEL_17:

      objc_autoreleasePoolPop(v14);
      goto LABEL_18;
    }

    v11 = [v9 networkProtectionGroupUUID];

    if (!v11)
    {
      v14 = objc_autoreleasePoolPush();
      v15 = *(a1 + 32);
      v16 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v22 = HMFGetLogIdentifier();
        v23 = *(a1 + 40);
        v25 = 138543618;
        v26 = v22;
        v27 = 2112;
        v28 = v23;
        _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@No network protection group UUID for removed accessory %@", &v25, 0x16u);
      }

      goto LABEL_17;
    }

    v12 = *(a1 + 32);
    v13 = [v9 networkProtectionGroupUUID];
    LODWORD(v12) = [v12 _evaluateActiveStatusForGroupWithUUID:v13];

    if (v12)
    {
      v14 = objc_autoreleasePoolPush();
      v15 = *(a1 + 32);
      v16 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v17 = HMFGetLogIdentifier();
        v25 = 138543618;
        v26 = v17;
        v27 = 2112;
        v28 = v9;
        v18 = "%{public}@Removed accessory %@ is not the last in the network protection group";
        v19 = v16;
        v20 = OS_LOG_TYPE_INFO;
        v21 = 22;
LABEL_14:
        _os_log_impl(&dword_229538000, v19, v20, v18, &v25, v21);

        goto LABEL_17;
      }

      goto LABEL_17;
    }
  }

LABEL_18:

  v24 = *MEMORY[0x277D85DE8];
}

- (void)handleAddedAccessory:(id)accessory
{
  accessoryCopy = accessory;
  workQueue = self->_workQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __67__HMDAccessoryNetworkProtectionGroupRegistry_handleAddedAccessory___block_invoke;
  v7[3] = &unk_27868A750;
  v7[4] = self;
  v8 = accessoryCopy;
  v6 = accessoryCopy;
  dispatch_async(workQueue, v7);
}

void __67__HMDAccessoryNetworkProtectionGroupRegistry_handleAddedAccessory___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 40);
    v22 = 138543618;
    v23 = v5;
    v24 = 2112;
    v25 = v6;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_DEBUG, "%{public}@Handling added accessory: %@", &v22, 0x16u);
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
    v10 = [v9 transportInformationInstances];
    v11 = [v10 count];

    if (v11)
    {
      if ([v9 supportsNetworkProtection])
      {
        [*(a1 + 32) _registerForAccessoryChanges:v9];
        [*(a1 + 32) _setupProtectionGroupForAccessory:v9 shouldNotifyChange:1];
      }

      else
      {
        v17 = objc_autoreleasePoolPush();
        v18 = *(a1 + 32);
        v19 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          v20 = HMFGetLogIdentifier();
          v22 = 138543362;
          v23 = v20;
          _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_DEBUG, "%{public}@Accessory does not support network protection", &v22, 0xCu);
        }

        objc_autoreleasePoolPop(v17);
      }
    }

    else
    {
      v12 = objc_autoreleasePoolPush();
      v13 = *(a1 + 32);
      v14 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        v15 = HMFGetLogIdentifier();
        v22 = 138543362;
        v23 = v15;
        _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_DEBUG, "%{public}@There are no transportInformationInstances", &v22, 0xCu);
      }

      objc_autoreleasePoolPop(v12);
      v16 = [*(a1 + 32) notificationCenter];
      [v16 addObserver:*(a1 + 32) selector:sel_handleAccessoryTransportAdded_ name:@"HMDAccessoryTransportAddedNotification" object:v9];
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)handleRemoveAccessoryNetworkProtectionGroupModel:(id)model message:(id)message
{
  v30 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  messageCopy = message;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    uuid = [modelCopy uuid];
    uUIDString = [uuid UUIDString];
    v26 = 138543618;
    v27 = v11;
    v28 = 2112;
    v29 = uUIDString;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Handling remove of accessory network group model %@", &v26, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  uuid2 = [modelCopy uuid];
  v15 = [(HMDAccessoryNetworkProtectionGroupRegistry *)selfCopy removeGroupWithUUID:uuid2];

  if (v15)
  {
    if ([v15 isActive])
    {
      group = [v15 group];
      [(HMDAccessoryNetworkProtectionGroupRegistry *)selfCopy notifyClientsOfRemovedGroup:group];
    }

    transactionResult = [messageCopy transactionResult];
    [transactionResult markChanged];

    [messageCopy respondWithPayload:0];
  }

  else
  {
    v18 = objc_autoreleasePoolPush();
    v19 = selfCopy;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      uuid3 = [modelCopy uuid];
      uUIDString2 = [uuid3 UUIDString];
      v26 = 138543618;
      v27 = v21;
      v28 = 2112;
      v29 = uUIDString2;
      _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_ERROR, "%{public}@Accessory network protection group %@ doesn't exist to remove", &v26, 0x16u);
    }

    objc_autoreleasePoolPop(v18);
    v24 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    [messageCopy respondWithError:v24];
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)handleAddOrUpdateAccessoryNetworkProtectionGroupModel:(id)model message:(id)message
{
  v46 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  messageCopy = message;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543618;
    v43 = v11;
    v44 = 2112;
    v45 = modelCopy;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Handling add/update of accessory network protection group model: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  os_unfair_lock_lock_with_options();
  groupRecords = selfCopy->_groupRecords;
  uuid = [modelCopy uuid];
  v14 = [(NSMutableDictionary *)groupRecords objectForKeyedSubscript:uuid];

  if (v14)
  {
    [v14 setPersisted:1];
    group = [v14 group];
    [group transactionObjectUpdated:0 newValues:modelCopy message:messageCopy];

    os_unfair_lock_unlock(&selfCopy->_lock);
    v16 = objc_autoreleasePoolPush();
    v17 = selfCopy;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = HMFGetLogIdentifier();
      uuid2 = [modelCopy uuid];
      uUIDString = [uuid2 UUIDString];
      *buf = 138543618;
      v43 = v19;
      v44 = 2112;
      v45 = uUIDString;
      _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_INFO, "%{public}@Marked existing record for network protection group %@ as persisted", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v16);
  }

  else
  {
    v22 = [[HMDAccessoryNetworkProtectionGroup alloc] initWithModel:modelCopy];
    home = [(HMDAccessoryNetworkProtectionGroupRegistry *)selfCopy home];
    [(HMDAccessoryNetworkProtectionGroup *)v22 configureWithHome:home];

    v24 = [HMDAccessoryNetworkProtectionGroupRecord recordWithGroup:v22 active:0 persisted:1];
    v25 = selfCopy->_groupRecords;
    uuid3 = [modelCopy uuid];
    [(NSMutableDictionary *)v25 setObject:v24 forKeyedSubscript:uuid3];

    os_unfair_lock_unlock(&selfCopy->_lock);
    v27 = objc_autoreleasePoolPush();
    v28 = selfCopy;
    v29 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
    {
      v30 = HMFGetLogIdentifier();
      uuid4 = [modelCopy uuid];
      uUIDString2 = [uuid4 UUIDString];
      *buf = 138543618;
      v43 = v30;
      v44 = 2112;
      v45 = uUIDString2;
      _os_log_impl(&dword_229538000, v29, OS_LOG_TYPE_INFO, "%{public}@Added new inactive accessory network protection group model %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v27);
    workQueue = [(HMDAccessoryNetworkProtectionGroupRegistry *)v28 workQueue];
    v36 = MEMORY[0x277D85DD0];
    v37 = 3221225472;
    v38 = __108__HMDAccessoryNetworkProtectionGroupRegistry_handleAddOrUpdateAccessoryNetworkProtectionGroupModel_message___block_invoke;
    v39 = &unk_27868A750;
    v40 = v28;
    v41 = modelCopy;
    dispatch_async(workQueue, &v36);

    transactionResult = [messageCopy transactionResult];
    [transactionResult markChanged];

    [messageCopy respondWithPayload:0];
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

- (void)addActiveSurrogateGroupForAccessory:(id)accessory shouldNotifyChange:(BOOL)change
{
  changeCopy = change;
  v60 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  home = [(HMDAccessoryNetworkProtectionGroupRegistry *)self home];
  v8 = accessoryCopy;
  defaultNetworkProtectionGroupUUID = [v8 defaultNetworkProtectionGroupUUID];

  if (defaultNetworkProtectionGroupUUID)
  {
    v10 = [HMDAccessoryNetworkProtectionGroup alloc];
    defaultNetworkProtectionGroupUUID2 = [v8 defaultNetworkProtectionGroupUUID];
    initialManufacturer = [v8 initialManufacturer];
    initialCategoryIdentifier = [v8 initialCategoryIdentifier];
    defaultNetworkProtectionGroupUUID = [(HMDAccessoryNetworkProtectionGroup *)v10 initWithUUID:defaultNetworkProtectionGroupUUID2 manufacturer:initialManufacturer category:initialCategoryIdentifier targetProtectionMode:0];

    [(HMDAccessoryNetworkProtectionGroup *)defaultNetworkProtectionGroupUUID configureWithHome:home];
  }

  v14 = objc_autoreleasePoolPush();
  selfCopy = self;
  v16 = HMFGetOSLogHandle();
  v17 = os_log_type_enabled(v16, OS_LOG_TYPE_INFO);
  if (!defaultNetworkProtectionGroupUUID)
  {
    if (v17)
    {
      v39 = HMFGetLogIdentifier();
      name = [v8 name];
      uuid = [v8 uuid];
      uUIDString = [uuid UUIDString];
      initialManufacturer2 = [v8 initialManufacturer];
      initialCategoryIdentifier2 = [v8 initialCategoryIdentifier];
      *buf = 138544386;
      v51 = v39;
      v52 = 2112;
      v53 = name;
      v54 = 2112;
      v55 = uUIDString;
      v56 = 2112;
      v57 = initialManufacturer2;
      v58 = 2112;
      v59 = initialCategoryIdentifier2;
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@Unable to generate surrogate group due to missing information for accessory name: %@ UUID: %@ initialManufacturer: %@ initialCategory: %@ ", buf, 0x34u);
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
    v53 = defaultNetworkProtectionGroupUUID;
    _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@Attempting to add active surrogate network protection group: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v14);
  v19 = objc_autoreleasePoolPush();
  v20 = selfCopy;
  v21 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    v22 = HMFGetLogIdentifier();
    uuid2 = [(HMDAccessoryNetworkProtectionGroup *)defaultNetworkProtectionGroupUUID uuid];
    v24 = [(HMDAccessoryNetworkProtectionGroupRegistry *)v20 groupWithUUID:uuid2];
    *buf = 138543618;
    v51 = v22;
    v52 = 2112;
    v53 = v24;
    _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_INFO, "%{public}@Existing network protection group with matching UUID: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v19);
  v25 = [(HMDAccessoryNetworkProtectionGroupRegistry *)v20 addActiveSurrogateGroup:defaultNetworkProtectionGroupUUID];
  v26 = objc_autoreleasePoolPush();
  v27 = v20;
  v28 = HMFGetOSLogHandle();
  v29 = os_log_type_enabled(v28, OS_LOG_TYPE_INFO);
  if (!v25)
  {
    if (v29)
    {
      v45 = HMFGetLogIdentifier();
      uuid3 = [(HMDAccessoryNetworkProtectionGroup *)defaultNetworkProtectionGroupUUID uuid];
      uUIDString2 = [uuid3 UUIDString];
      *buf = 138543874;
      v51 = v45;
      v52 = 2112;
      v53 = uUIDString2;
      v54 = 2112;
      v55 = v8;
      _os_log_impl(&dword_229538000, v28, OS_LOG_TYPE_INFO, "%{public}@No change to status of network protection group %@ on behalf of %@", buf, 0x20u);
    }

    v44 = v26;
LABEL_21:
    objc_autoreleasePoolPop(v44);
    goto LABEL_22;
  }

  if (v29)
  {
    v30 = HMFGetLogIdentifier();
    uuid4 = [(HMDAccessoryNetworkProtectionGroup *)defaultNetworkProtectionGroupUUID uuid];
    v32 = [(HMDAccessoryNetworkProtectionGroupRegistry *)v27 groupWithUUID:uuid4];
    *buf = 138543618;
    v51 = v30;
    v52 = 2112;
    v53 = v32;
    _os_log_impl(&dword_229538000, v28, OS_LOG_TYPE_INFO, "%{public}@Added and marked active network protection group: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v26);
  if (changeCopy)
  {
    uuid5 = [(HMDAccessoryNetworkProtectionGroup *)defaultNetworkProtectionGroupUUID uuid];
    v34 = [(HMDAccessoryNetworkProtectionGroupRegistry *)v27 groupWithUUID:uuid5];

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
      _os_log_impl(&dword_229538000, v37, OS_LOG_TYPE_INFO, "%{public}@Notifying for added network protection group %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v35);
    [(HMDAccessoryNetworkProtectionGroupRegistry *)v36 notifyClientsOfAddedGroup:v34];
  }

LABEL_22:

  v48 = *MEMORY[0x277D85DE8];
}

- (void)notifyClientsOfRemovedGroup:(id)group
{
  v20[1] = *MEMORY[0x277D85DE8];
  groupCopy = group;
  notificationCenter = [(HMDAccessoryNetworkProtectionGroupRegistry *)self notificationCenter];
  v19 = *MEMORY[0x277CCEBE0];
  v20[0] = groupCopy;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];
  [notificationCenter postNotificationName:@"HMDAccessoryNetworkProtectionGroupProtectionModeDeactivated" object:self userInfo:v6];

  home = [(HMDAccessoryNetworkProtectionGroupRegistry *)self home];
  v8 = MEMORY[0x277D0F848];
  v9 = *MEMORY[0x277CCEC00];
  messageDestination = [home messageDestination];
  v17 = *MEMORY[0x277CCEC10];
  uuid = [groupCopy uuid];
  uUIDString = [uuid UUIDString];
  v18 = uUIDString;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
  v14 = [v8 messageWithName:v9 destination:messageDestination payload:v13];

  [v14 setRequiresSPIEntitlement:1];
  msgDispatcher = [home msgDispatcher];
  [msgDispatcher sendMessage:v14 completionHandler:0];

  v16 = *MEMORY[0x277D85DE8];
}

- (void)notifyClientsOfAddedGroup:(id)group
{
  v20[1] = *MEMORY[0x277D85DE8];
  groupCopy = group;
  notificationCenter = [(HMDAccessoryNetworkProtectionGroupRegistry *)self notificationCenter];
  v19 = *MEMORY[0x277CCEBE0];
  v6 = v19;
  v20[0] = groupCopy;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];
  [notificationCenter postNotificationName:@"HMDAccessoryNetworkProtectionGroupProtectionModeActivated" object:self userInfo:v7];

  home = [(HMDAccessoryNetworkProtectionGroupRegistry *)self home];
  v9 = MEMORY[0x277D0F848];
  v10 = *MEMORY[0x277CCEBC8];
  messageDestination = [home messageDestination];
  v17 = v6;
  v12 = encodeRootObjectForSPIClients(groupCopy);
  v18 = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
  v14 = [v9 messageWithName:v10 destination:messageDestination payload:v13];

  [v14 setRequiresSPIEntitlement:1];
  msgDispatcher = [home msgDispatcher];
  [msgDispatcher sendMessage:v14 completionHandler:0];

  v16 = *MEMORY[0x277D85DE8];
}

- (BOOL)_evaluateActiveStatusForGroupWithUUID:(id)d
{
  v31 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543618;
    v28 = v8;
    v29 = 2112;
    v30 = dCopy;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@evaluating active status for groupUUID: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  home = [(HMDAccessoryNetworkProtectionGroupRegistry *)selfCopy home];
  accessories = [home accessories];

  v11 = [accessories countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v11)
  {
    v12 = *v23;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v23 != v12)
        {
          objc_enumerationMutation(accessories);
        }

        v14 = *(*(&v22 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v15 = v14;
        }

        else
        {
          v15 = 0;
        }

        v16 = v15;

        networkProtectionGroupUUID = [v16 networkProtectionGroupUUID];
        v18 = [networkProtectionGroupUUID isEqual:dCopy];

        if (v18)
        {
          v11 = 1;
          goto LABEL_16;
        }
      }

      v11 = [accessories countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

LABEL_16:

  v19 = [(HMDAccessoryNetworkProtectionGroupRegistry *)selfCopy _updateGroupWithUUID:dCopy active:v11];
  v20 = *MEMORY[0x277D85DE8];
  return v19;
}

- (void)_setupActiveGroupsForHome
{
  v34 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v7 = MEMORY[0x277CCABB0];
    home = [(HMDAccessoryNetworkProtectionGroupRegistry *)selfCopy home];
    accessories = [home accessories];
    v10 = [v7 numberWithUnsignedInteger:{objc_msgSend(accessories, "count")}];
    home2 = [(HMDAccessoryNetworkProtectionGroupRegistry *)selfCopy home];
    name = [home2 name];
    *buf = 138543874;
    v29 = v6;
    v30 = 2112;
    v31 = v10;
    v32 = 2112;
    v33 = name;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Evaluating active network protection groups based on %@ existing accessories for home %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v3);
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  home3 = [(HMDAccessoryNetworkProtectionGroupRegistry *)selfCopy home];
  accessories2 = [home3 accessories];

  v15 = [accessories2 countByEnumeratingWithState:&v23 objects:v27 count:16];
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
          objc_enumerationMutation(accessories2);
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
          [(HMDAccessoryNetworkProtectionGroupRegistry *)selfCopy _registerForAccessoryChanges:v21];
          [(HMDAccessoryNetworkProtectionGroupRegistry *)selfCopy _setupProtectionGroupForAccessory:v21 shouldNotifyChange:0];
        }

        ++v18;
      }

      while (v16 != v18);
      v16 = [accessories2 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v16);
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)_registerForAccessoryChanges:(id)changes
{
  v19 = *MEMORY[0x277D85DE8];
  changesCopy = changes;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 0;
    *&buf[8] = 0;
    uuid = [changesCopy uuid];

    if (uuid)
    {
      uuid2 = [changesCopy uuid];
      [uuid2 getUUIDBytes:buf];
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
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Registering for manufacturer, category and configured group update for accessory: %{uuid_t}.16P", buf, 0x1Cu);
  }

  objc_autoreleasePoolPop(v5);
  notificationCenter = [(HMDAccessoryNetworkProtectionGroupRegistry *)selfCopy notificationCenter];
  [notificationCenter addObserver:selfCopy selector:sel_handleUpdatedAccessoryInitialManufacturerOrCategory_ name:@"HMDAccessoryManufacturerUpdatedNotification" object:changesCopy];

  notificationCenter2 = [(HMDAccessoryNetworkProtectionGroupRegistry *)selfCopy notificationCenter];
  [notificationCenter2 addObserver:selfCopy selector:sel_handleUpdatedAccessoryInitialManufacturerOrCategory_ name:@"HMDAccessoryCategoryUpdatedNotification" object:changesCopy];

  notificationCenter3 = [(HMDAccessoryNetworkProtectionGroupRegistry *)selfCopy notificationCenter];
  [notificationCenter3 addObserver:selfCopy selector:sel_handleUpdatedAccessoryConfiguredNetworkProtectionGroup_ name:@"HMDAccessoryConfiguredNetworkProtectionGroupUpdatedNotification" object:changesCopy];

  v14 = *MEMORY[0x277D85DE8];
}

- (void)handleUpdatedAccessoryConfiguredNetworkProtectionGroup:(id)group
{
  v17 = *MEMORY[0x277D85DE8];
  groupCopy = group;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543362;
    v16 = v8;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Handling UpdatedAccessoryConfiguredNetworkProtectionGroup", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  workQueue = [(HMDAccessoryNetworkProtectionGroupRegistry *)selfCopy workQueue];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __101__HMDAccessoryNetworkProtectionGroupRegistry_handleUpdatedAccessoryConfiguredNetworkProtectionGroup___block_invoke;
  v12[3] = &unk_27868A750;
  v13 = groupCopy;
  v14 = selfCopy;
  v10 = groupCopy;
  dispatch_async(workQueue, v12);

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
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Accessory %@/%@ is leaving group %@ and joining group %@", buf, 0x34u);

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

- (void)handleUpdatedAccessoryInitialManufacturerOrCategory:(id)category
{
  v17 = *MEMORY[0x277D85DE8];
  categoryCopy = category;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543362;
    v16 = v8;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Handling UpdatedAccessoryInitialManufacturerOrCategory", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  workQueue = [(HMDAccessoryNetworkProtectionGroupRegistry *)selfCopy workQueue];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __98__HMDAccessoryNetworkProtectionGroupRegistry_handleUpdatedAccessoryInitialManufacturerOrCategory___block_invoke;
  v12[3] = &unk_27868A750;
  v13 = categoryCopy;
  v14 = selfCopy;
  v10 = categoryCopy;
  dispatch_async(workQueue, v12);

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
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Accessory %@/%@ has updated initialManufacturer: %@, initialCategory: %@", buf, 0x34u);

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
        _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@Accessory %@/%@ is assigned to non-default group %@", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v14);
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)handleUpdateAccessoryNetworkProtectionGroupProtectionMode:(id)mode
{
  v34 = *MEMORY[0x277D85DE8];
  modeCopy = mode;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543362;
    v31 = v8;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Handling UpdateAccessoryNetworkProtectionGroupProtectionMode", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  home = [(HMDAccessoryNetworkProtectionGroupRegistry *)selfCopy home];
  networkRouterSupport = [home networkRouterSupport];

  if ((networkRouterSupport & 2) != 0)
  {
    v16 = [modeCopy uuidForKey:*MEMORY[0x277CCEC10]];
    if (v16)
    {
      v17 = [modeCopy numberForKey:*MEMORY[0x277CCEBF0]];
      if (v17)
      {
        v18 = v17;
        v29 = 0;
        -[HMDAccessoryNetworkProtectionGroupRegistry updateTargetProtectionModeForGroupWithUUID:protectionMode:error:requestMessage:](selfCopy, "updateTargetProtectionModeForGroupWithUUID:protectionMode:error:requestMessage:", v16, [v17 integerValue], &v29, modeCopy);
      }

      else
      {
        v23 = objc_autoreleasePoolPush();
        v24 = selfCopy;
        v25 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          v26 = HMFGetLogIdentifier();
          *buf = 138543362;
          v31 = v26;
          _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_ERROR, "%{public}@Received update group network protection mode with nil for protection mode", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v23);
        v27 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
        [modeCopy respondWithError:v27];

        v18 = 0;
      }
    }

    else
    {
      v19 = objc_autoreleasePoolPush();
      v20 = selfCopy;
      v21 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v22 = HMFGetLogIdentifier();
        *buf = 138543362;
        v31 = v22;
        _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_ERROR, "%{public}@Received update group network protection mode with nil for group UUID", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v19);
      v18 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
      [modeCopy respondWithError:v18];
    }
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    v12 = selfCopy;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v15 = +[HMDHomeKitVersion currentVersion];
      *buf = 138543618;
      v31 = v14;
      v32 = 2112;
      v33 = v15;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_ERROR, "%{public}@HomeKit version %@ does not meet the minimum version required to support network protection group update", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    v16 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
    [modeCopy respondWithError:v16];
  }

  v28 = *MEMORY[0x277D85DE8];
}

- (void)_registerForMessages
{
  v10[2] = *MEMORY[0x277D85DE8];
  home = [(HMDAccessoryNetworkProtectionGroupRegistry *)self home];
  administratorHandler = [home administratorHandler];
  v5 = *MEMORY[0x277CCEBF8];
  v6 = [HMDXPCMessagePolicy policyWithEntitlements:5];
  v10[0] = v6;
  v7 = [HMDConfigurationMessagePolicy policyWithOperationTypes:2];
  v10[1] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:2];
  [administratorHandler registerForMessage:v5 receiver:self policies:v8 selector:sel_handleUpdateAccessoryNetworkProtectionGroupProtectionMode_];

  v9 = *MEMORY[0x277D85DE8];
}

- (NSUUID)messageTargetUUID
{
  home = [(HMDAccessoryNetworkProtectionGroupRegistry *)self home];
  messageTargetUUID = [home messageTargetUUID];

  return messageTargetUUID;
}

- (id)logIdentifier
{
  home = [(HMDAccessoryNetworkProtectionGroupRegistry *)self home];
  uuid = [home uuid];
  uUIDString = [uuid UUIDString];

  return uUIDString;
}

- (id)removeGroupWithUUID:(id)d
{
  v16 = *MEMORY[0x277D85DE8];
  dCopy = d;
  os_unfair_lock_lock_with_options();
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v12 = 138543618;
    v13 = v8;
    v14 = 2112;
    v15 = dCopy;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Removing group with UUID: %@", &v12, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [(NSMutableDictionary *)selfCopy->_groupRecords objectForKeyedSubscript:dCopy];
  if (v9)
  {
    [(NSMutableDictionary *)selfCopy->_groupRecords removeObjectForKey:dCopy];
  }

  os_unfair_lock_unlock(&self->_lock);

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (BOOL)addActiveSurrogateGroup:(id)group
{
  v25 = *MEMORY[0x277D85DE8];
  groupCopy = group;
  os_unfair_lock_lock_with_options();
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v21 = 138543618;
    v22 = v8;
    v23 = 2112;
    v24 = groupCopy;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Adding active surrogate group: %@", &v21, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  groupRecords = selfCopy->_groupRecords;
  uuid = [groupCopy uuid];
  v11 = [(NSMutableDictionary *)groupRecords objectForKeyedSubscript:uuid];

  if (v11)
  {
    v12 = selfCopy->_groupRecords;
    uuid2 = [groupCopy uuid];
    v14 = [(NSMutableDictionary *)v12 objectForKeyedSubscript:uuid2];

    isActive = [v14 isActive];
    if ((isActive & 1) == 0)
    {
      [v14 setActive:1];
    }

    v16 = isActive ^ 1;
  }

  else
  {
    v14 = [HMDAccessoryNetworkProtectionGroupRecord recordWithGroup:groupCopy active:1 persisted:0];
    v17 = selfCopy->_groupRecords;
    uuid3 = [groupCopy uuid];
    [(NSMutableDictionary *)v17 setObject:v14 forKeyedSubscript:uuid3];

    v16 = 1;
  }

  os_unfair_lock_unlock(&self->_lock);
  v19 = *MEMORY[0x277D85DE8];
  return v16;
}

- (id)groupWithUUID:(id)d
{
  v3 = [(HMDAccessoryNetworkProtectionGroupRegistry *)self groupRecordWithUUID:d];
  group = [v3 group];

  return group;
}

- (id)groupRecordWithUUID:(id)d
{
  dCopy = d;
  os_unfair_lock_lock_with_options();
  v5 = [(NSMutableDictionary *)self->_groupRecords objectForKeyedSubscript:dCopy];
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
  allValues = [(NSMutableDictionary *)self->_groupRecords allValues];
  v5 = [allValues countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = *v14;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(allValues);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        if ([v8 isActive])
        {
          group = [v8 group];
          [v3 addObject:group];
        }
      }

      v5 = [allValues countByEnumeratingWithState:&v13 objects:v17 count:16];
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
  allValues = [(NSMutableDictionary *)self->_groupRecords allValues];
  v5 = [allValues countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = *v14;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(allValues);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        if ([v8 isPersisted])
        {
          group = [v8 group];
          [v3 addObject:group];
        }
      }

      v5 = [allValues countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  v10 = [v3 copy];
  os_unfair_lock_unlock(&self->_lock);
  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (HMDAccessoryNetworkProtectionGroupRegistry)initWithHome:(id)home notificationCenter:(id)center persistedGroups:(id)groups
{
  v57 = *MEMORY[0x277D85DE8];
  homeCopy = home;
  centerCopy = center;
  groupsCopy = groups;
  v11 = [(HMDAccessoryNetworkProtectionGroupRegistry *)self initWithHome:homeCopy notificationCenter:centerCopy];
  v12 = v11;
  if (groupsCopy && v11)
  {
    v37 = groupsCopy;
    v38 = centerCopy;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    obj = groupsCopy;
    v13 = [obj countByEnumeratingWithState:&v42 objects:v50 count:16];
    v39 = v12;
    v40 = homeCopy;
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
            uuid = [homeCopy uuid];
            uUIDString = [uuid UUIDString];
            *buf = 138543874;
            v52 = v21;
            v53 = 2112;
            v54 = uUIDString;
            v55 = 2112;
            v56 = v17;
            _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_DEBUG, "%{public}@[%@] Loading persisted group: %@", buf, 0x20u);

            homeCopy = v40;
            v12 = v39;
          }

          objc_autoreleasePoolPop(v18);
          [v17 configureWithHome:homeCopy];
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
          uuid2 = [v31 uuid];
          [(NSMutableDictionary *)v25 setObject:v32 forKeyedSubscript:uuid2];
        }

        v28 = [v26 countByEnumeratingWithState:&v46 objects:buf count:16];
      }

      while (v28);
    }

    v12 = v39;
    groupRecords = v39->_groupRecords;
    v39->_groupRecords = v25;

    homeCopy = v40;
    groupsCopy = v37;
    centerCopy = v38;
  }

  v35 = *MEMORY[0x277D85DE8];
  return v12;
}

- (HMDAccessoryNetworkProtectionGroupRegistry)initWithHome:(id)home notificationCenter:(id)center
{
  homeCopy = home;
  centerCopy = center;
  v14.receiver = self;
  v14.super_class = HMDAccessoryNetworkProtectionGroupRegistry;
  v8 = [(HMDAccessoryNetworkProtectionGroupRegistry *)&v14 init];
  if (v8)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    groupRecords = v8->_groupRecords;
    v8->_groupRecords = dictionary;

    objc_storeWeak(&v8->_home, homeCopy);
    objc_storeStrong(&v8->_notificationCenter, center);
    workQueue = [homeCopy workQueue];
    workQueue = v8->_workQueue;
    v8->_workQueue = workQueue;
  }

  return v8;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t10_92270 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t10_92270, &__block_literal_global_92271);
  }

  v3 = logCategory__hmf_once_v11_92272;

  return v3;
}

void __57__HMDAccessoryNetworkProtectionGroupRegistry_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v11_92272;
  logCategory__hmf_once_v11_92272 = v1;
}

@end