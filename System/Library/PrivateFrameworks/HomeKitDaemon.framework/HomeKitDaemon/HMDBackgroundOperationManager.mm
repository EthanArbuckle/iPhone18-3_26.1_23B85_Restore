@interface HMDBackgroundOperationManager
+ (id)findAccessoryUsing:(id)using fromHome:(id)home;
+ (id)findAccessoryUsing:(id)using homeManager:(id)manager;
+ (id)findHomeUsingIdentifier:(id)identifier homeManager:(id)manager;
+ (id)findHomeWhereThisDeviceIsConfirmedPrimaryResident:(id)resident;
+ (id)findUserWithUUID:(id)d fromHomeManager:(id)manager;
+ (id)getAllReachableAccessories:(id)accessories;
+ (id)logCategory;
- (BOOL)_scheduleKeyRollForAccessory:(id)accessory;
- (BOOL)addOperationDependency:(id)dependency dependsOn:(id)on;
- (BOOL)scheduleHH2KeyRollForAccessory:(id)accessory previousIdentity:(id)identity newIdentity:(id)newIdentity;
- (BOOL)scheduleHH2KeyRollForAirPlayAccessory:(id)accessory previousIdentity:(id)identity newIdentity:(id)newIdentity;
- (BOOL)scheduleOperationsWithDependenciesOnEachOtherFromArray:(id)array;
- (BOOL)shouldWeScheduleKeyRollOperationsOnThisDevice;
- (HMDBackgroundOperationManager)initWithHomeManager:(id)manager;
- (HMDBackgroundOperationManager)initWithHomeManager:(id)manager currentDeviceStateDataSource:(id)source notificationCenter:(id)center;
- (HMDHomeManager)homeManager;
- (HMFTimer)dataSourceCoalescingTimer;
- (HMFTimer)deferralTimer;
- (HMFTimer)expirationTimer;
- (NSMutableArray)operationList;
- (id)__getReadyToExecuteOperations;
- (id)dumpStateWithPrivacyLevel:(unint64_t)level;
- (id)getHH1ControllerKey;
- (id)getHH2ControllerKey;
- (void)__removeAllDataSourcesForUnitTesting;
- (void)__removeAllOperationsForUnitTesting;
- (void)__resetAndRebuildOperationGraphForUnitTesting;
- (void)_dataSourceHasUpdate:(id)update;
- (void)_runOperation:(id)operation withParameters:(id)parameters;
- (void)_runOperationsAfterEvaluatingPredicate:(id)predicate;
- (void)_scheduleHH2AirPlayKeyRollIfNecessary:(id)necessary;
- (void)_scheduleHH2KeyRollIfNecessary:(id)necessary;
- (void)addDataSource:(id)source;
- (void)addDefaultDataSources;
- (void)addOperation:(id)operation;
- (void)auditKeyChainEntriesAndScheduleKeyRollOperationsIfNecessaryForHome:(id)home isRunningOnResident:(BOOL)resident;
- (void)auditKeyChainEntryForAccessory:(id)accessory isRunningOnResident:(BOOL)resident;
- (void)auditOwnerPairingForAirPlayAccessory:(id)accessory isRunningOnResident:(BOOL)resident;
- (void)checkAndRemoveExpiredOperations;
- (void)completeProcessingForOperation:(id)operation;
- (void)dataSourceHasUpdate:(id)update;
- (void)makeSureToLoadPairingIdentities;
- (void)registerForNotifications;
- (void)removeAllOperationForAccessoryIdentifier:(id)identifier;
- (void)removeAllOperationsBeforeStartingHH2Migration;
- (void)removeOperation:(id)operation;
- (void)removeOperationsForAccessoryIdentifier:(id)identifier operationKind:(id)kind;
- (void)removeOperationsForAccessoryIdentifier:(id)identifier operationKind:(id)kind withBlock:(id)block;
- (void)scheduleHH2KeyRollForAccessory:(id)accessory;
- (void)scheduleHH2KeyRollForAirPlayAccessory:(id)accessory;
- (void)scheduleHH2KeyRollIfNecessaryDueToNotification:(id)notification;
- (void)scheduleTimerToCheckAndRemoveExpiredOperation;
- (void)scheduleTimerToRetryDeferredOperations;
- (void)timerDidFire:(id)fire;
@end

@implementation HMDBackgroundOperationManager

- (void)registerForNotifications
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __77__HMDBackgroundOperationManager_ScheduleHH2KeyRoll__registerForNotifications__block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  if (registerForNotifications_onceToken != -1)
  {
    dispatch_once(&registerForNotifications_onceToken, block);
  }
}

void __77__HMDBackgroundOperationManager_ScheduleHH2KeyRoll__registerForNotifications__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 addObserver:*(a1 + 32) selector:sel_scheduleHH2KeyRollIfNecessaryDueToNotification_ name:@"HMDFMFStatusUpdateNotification" object:0];
}

- (BOOL)shouldWeScheduleKeyRollOperationsOnThisDevice
{
  currentDeviceStateDataSource = [(HMDBackgroundOperationManager *)self currentDeviceStateDataSource];
  if ([currentDeviceStateDataSource isiOSDevice])
  {
    isHomePod = 1;
  }

  else
  {
    currentDeviceStateDataSource2 = [(HMDBackgroundOperationManager *)self currentDeviceStateDataSource];
    if ([currentDeviceStateDataSource2 isAppleTV])
    {
      isHomePod = 1;
    }

    else
    {
      currentDeviceStateDataSource3 = [(HMDBackgroundOperationManager *)self currentDeviceStateDataSource];
      isHomePod = [currentDeviceStateDataSource3 isHomePod];
    }
  }

  return isHomePod;
}

- (id)getHH2ControllerKey
{
  systemStore = [MEMORY[0x277CFEC78] systemStore];
  getPreferredHH2ControllerKey = [systemStore getPreferredHH2ControllerKey];

  return getPreferredHH2ControllerKey;
}

- (id)getHH1ControllerKey
{
  v21 = *MEMORY[0x277D85DE8];
  systemStore = [MEMORY[0x277CFEC78] systemStore];
  v15 = 0;
  v16 = 0;
  v14 = 0;
  v3 = [systemStore getControllerPublicKey:&v16 secretKey:0 username:&v15 allowCreation:0 error:&v14];
  v4 = v16;
  v5 = v15;
  v6 = v14;

  if (v3)
  {
    v7 = [objc_alloc(MEMORY[0x277D0F8B0]) initWithPairingKeyData:v4];
    v8 = [objc_alloc(MEMORY[0x277CFEC20]) initWithIdentifier:v5 publicKey:v7 privateKey:0 permissions:1];
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543618;
      v18 = v11;
      v19 = 2112;
      v20 = v6;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@[HMDUser] Failed to get current user from keychain with error: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
    v8 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];

  return v8;
}

- (BOOL)scheduleHH2KeyRollForAirPlayAccessory:(id)accessory previousIdentity:(id)identity newIdentity:(id)newIdentity
{
  v56 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  identityCopy = identity;
  newIdentityCopy = newIdentity;
  if (!accessoryCopy)
  {
    _HMFPreconditionFailure();
LABEL_27:
    _HMFPreconditionFailure();
  }

  v11 = newIdentityCopy;
  identifier = [accessoryCopy identifier];

  if (!identifier)
  {
    goto LABEL_27;
  }

  if (identityCopy && v11)
  {
    v47[0] = objc_opt_class();
    v47[1] = objc_opt_class();
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v47 count:2];
    v14 = objc_autoreleasePoolPush();
    selfCopy = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = HMFGetLogIdentifier();
      *buf = 138543874;
      v49 = v17;
      v50 = 2112;
      v51 = accessoryCopy;
      v52 = 2112;
      v53 = v11;
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@Going to schedule key roll for Accessory : %@, with new pairing : %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v14);
    uuid = [accessoryCopy uuid];
    [(HMDBackgroundOperationManager *)selfCopy removeOperationsForAccessoryIdentifier:uuid operationKind:v13];

    home = [accessoryCopy home];
    isOwnerUser = [home isOwnerUser];

    v21 = [[HMDAddAccessoryPairingOperation alloc] initWithAccessory:accessoryCopy newPairingIdentity:v11 asOwner:isOwnerUser asAdmin:1 shouldUpdateKeyChainEntry:0];
    if (v21)
    {
      v22 = [[HMDRemoveAccessoryPairingOperation alloc] initWithAccessory:accessoryCopy isOwnerIdentity:0 identityToRemove:identityCopy];
      if (v22)
      {
        uuid4 = v22;
        [(HMDBackgroundOperationManager *)selfCopy addOperation:v21];
        if ([(HMDBackgroundOperationManager *)selfCopy addOperationDependency:uuid4 dependsOn:v21])
        {
          [(HMDBackgroundOperationManager *)selfCopy evaluateOperations];
          v24 = 1;
LABEL_24:

          goto LABEL_25;
        }

        v40 = objc_autoreleasePoolPush();
        v41 = selfCopy;
        v42 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
        {
          v43 = HMFGetLogIdentifier();
          *buf = 138543362;
          v49 = v43;
          _os_log_impl(&dword_229538000, v42, OS_LOG_TYPE_ERROR, "%{public}@Could not establish dependency between removeOldPairing & addAccessoryPairingWithHH2Identity", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v40);
        uuid2 = [accessoryCopy uuid];
        [(HMDBackgroundOperationManager *)v41 removeOperationsForAccessoryIdentifier:uuid2 operationKind:v13];
      }

      else
      {
        v35 = objc_autoreleasePoolPush();
        v36 = selfCopy;
        v37 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          v38 = HMFGetLogIdentifier();
          *buf = 138543362;
          v49 = v38;
          _os_log_impl(&dword_229538000, v37, OS_LOG_TYPE_ERROR, "%{public}@Could not create removeOldPairing operation, not adding addAccessoryPairingWithHH2Identity", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v35);
        uuid3 = [accessoryCopy uuid];
        [(HMDBackgroundOperationManager *)v36 removeOperationsForAccessoryIdentifier:uuid3 operationKind:v13];

        uuid4 = 0;
      }
    }

    else
    {
      v31 = objc_autoreleasePoolPush();
      v32 = selfCopy;
      v33 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        v34 = HMFGetLogIdentifier();
        *buf = 138543362;
        v49 = v34;
        _os_log_impl(&dword_229538000, v33, OS_LOG_TYPE_ERROR, "%{public}@Could not create addAccessoryPairingWithHH2Identity operation", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v31);
      uuid4 = [accessoryCopy uuid];
      [(HMDBackgroundOperationManager *)v32 removeOperationsForAccessoryIdentifier:uuid4 operationKind:v13];
    }

    v24 = 0;
    goto LABEL_24;
  }

  v25 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v27 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
  {
    v28 = HMFGetLogIdentifier();
    hh1Key = [(HMDBackgroundOperationManager *)selfCopy2 hh1Key];
    hh2Key = [(HMDBackgroundOperationManager *)selfCopy2 hh2Key];
    *buf = 138544130;
    v49 = v28;
    v50 = 2112;
    v51 = accessoryCopy;
    v52 = 2112;
    v53 = hh1Key;
    v54 = 2112;
    v55 = hh2Key;
    _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_INFO, "%{public}@Not scheduling key roll operation for accessory [%@] as we don't have needed keys to work with: [hh1: %@] [hh2: %@]", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v25);
  v24 = 0;
LABEL_25:

  v45 = *MEMORY[0x277D85DE8];
  return v24;
}

- (BOOL)scheduleHH2KeyRollForAccessory:(id)accessory previousIdentity:(id)identity newIdentity:(id)newIdentity
{
  v66 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  identityCopy = identity;
  newIdentityCopy = newIdentity;
  if (!accessoryCopy)
  {
    _HMFPreconditionFailure();
LABEL_44:
    _HMFPreconditionFailure();
  }

  v11 = newIdentityCopy;
  identifier = [accessoryCopy identifier];

  if (!identifier)
  {
    goto LABEL_44;
  }

  if (identityCopy && v11)
  {
    if ([(HMDBackgroundOperationManager *)self _scheduleKeyRollForAccessory:accessoryCopy])
    {
      v57[0] = objc_opt_class();
      v57[1] = objc_opt_class();
      v57[2] = objc_opt_class();
      v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v57 count:3];
      v14 = objc_autoreleasePoolPush();
      selfCopy = self;
      v16 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v17 = HMFGetLogIdentifier();
        *buf = 138543874;
        v59 = v17;
        v60 = 2112;
        v61 = accessoryCopy;
        v62 = 2112;
        v63 = v11;
        _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@Going to schedule key roll for Accessory : %@, with new pairing : %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v14);
      uuid = [accessoryCopy uuid];
      [(HMDBackgroundOperationManager *)selfCopy removeOperationsForAccessoryIdentifier:uuid operationKind:v13];

      home = [accessoryCopy home];
      v20 = -[HMDAddAccessoryPairingOperation initWithAccessory:newPairingIdentity:asOwner:asAdmin:shouldUpdateKeyChainEntry:]([HMDAddAccessoryPairingOperation alloc], "initWithAccessory:newPairingIdentity:asOwner:asAdmin:shouldUpdateKeyChainEntry:", accessoryCopy, v11, [home isOwnerUser], 1, 1);
      if (!v20)
      {
        v39 = objc_autoreleasePoolPush();
        v40 = selfCopy;
        v41 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
        {
          v42 = HMFGetLogIdentifier();
          *buf = 138543362;
          v59 = v42;
          _os_log_impl(&dword_229538000, v41, OS_LOG_TYPE_ERROR, "%{public}@Could not create addAccessoryPairingWithHH2Identity operation", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v39);
        uuid2 = [accessoryCopy uuid];
        [(HMDBackgroundOperationManager *)v40 removeOperationsForAccessoryIdentifier:uuid2 operationKind:v13];
        v33 = 0;
        goto LABEL_41;
      }

      uuid2 = -[HMDRemoveAccessoryPairingOperation initWithAccessory:isOwnerIdentity:identityToRemove:]([HMDRemoveAccessoryPairingOperation alloc], "initWithAccessory:isOwnerIdentity:identityToRemove:", accessoryCopy, [home isOwnerUser], identityCopy);
      if (!uuid2)
      {
        v43 = objc_autoreleasePoolPush();
        v44 = selfCopy;
        v45 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
        {
          HMFGetLogIdentifier();
          v46 = loga = v43;
          *buf = 138543362;
          v59 = v46;
          _os_log_impl(&dword_229538000, v45, OS_LOG_TYPE_ERROR, "%{public}@Could not create removeOldPairing operation, not adding addAccessoryPairingWithHH2Identity", buf, 0xCu);

          v43 = loga;
        }

        objc_autoreleasePoolPop(v43);
        uuid3 = [accessoryCopy uuid];
        [(HMDBackgroundOperationManager *)v44 removeOperationsForAccessoryIdentifier:uuid3 operationKind:v13];
        goto LABEL_39;
      }

      if ([accessoryCopy hasIPLink])
      {
        v22 = [HMDForcePairVerifyAccessoryOperation alloc];
        uuid3 = [(HMDAccessoryBackgroundOperation *)v22 initWithAccessory:accessoryCopy userData:MEMORY[0x277CBEC10]];
        if (!uuid3)
        {
          v24 = objc_autoreleasePoolPush();
          v25 = selfCopy;
          log = HMFGetOSLogHandle();
          if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
          {
            v26 = HMFGetLogIdentifier();
            *buf = 138543362;
            v59 = v26;
            _os_log_impl(&dword_229538000, log, OS_LOG_TYPE_ERROR, "%{public}@Could not create forcePV operation, not adding addAccessoryPairingWithHH2Identity and removeOldPairing", buf, 0xCu);
          }

          uuid3 = 0;
          goto LABEL_38;
        }
      }

      else
      {
        uuid3 = 0;
      }

      [(HMDBackgroundOperationManager *)selfCopy addOperation:v20];
      if ([(HMDBackgroundOperationManager *)selfCopy addOperationDependency:uuid2 dependsOn:v20])
      {
        if (!uuid3 || [(HMDBackgroundOperationManager *)selfCopy addOperationDependency:uuid3 dependsOn:uuid2])
        {
          v33 = 1;
LABEL_40:

LABEL_41:
          goto LABEL_42;
        }

        v54 = objc_autoreleasePoolPush();
        v50 = selfCopy;
        log = HMFGetOSLogHandle();
        if (!os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_37;
        }

        v48 = HMFGetLogIdentifier();
        *buf = 138543362;
        v59 = v48;
        v49 = "%{public}@Could not establish dependency between forcePV & removeOldPairing operation";
      }

      else
      {
        v54 = objc_autoreleasePoolPush();
        v47 = selfCopy;
        log = HMFGetOSLogHandle();
        if (!os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
        {
LABEL_37:
          v24 = v54;
LABEL_38:

          objc_autoreleasePoolPop(v24);
          uuid4 = [accessoryCopy uuid];
          [(HMDBackgroundOperationManager *)selfCopy removeOperationsForAccessoryIdentifier:uuid4 operationKind:v13];

LABEL_39:
          v33 = 0;
          goto LABEL_40;
        }

        v48 = HMFGetLogIdentifier();
        *buf = 138543362;
        v59 = v48;
        v49 = "%{public}@Could not establish dependency between removeOldPairing & addAccessoryPairingWithHH2Identity";
      }

      _os_log_impl(&dword_229538000, log, OS_LOG_TYPE_ERROR, v49, buf, 0xCu);

      goto LABEL_37;
    }

    v34 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v36 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
    {
      v37 = HMFGetLogIdentifier();
      shortDescription = [accessoryCopy shortDescription];
      *buf = 138543618;
      v59 = v37;
      v60 = 2112;
      v61 = shortDescription;
      _os_log_impl(&dword_229538000, v36, OS_LOG_TYPE_INFO, "%{public}@Not scheduling HH2 key roll operations for accessory: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v34);
    v33 = 1;
  }

  else
  {
    v27 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v29 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
    {
      v30 = HMFGetLogIdentifier();
      hh1Key = [(HMDBackgroundOperationManager *)selfCopy3 hh1Key];
      hh2Key = [(HMDBackgroundOperationManager *)selfCopy3 hh2Key];
      *buf = 138544130;
      v59 = v30;
      v60 = 2112;
      v61 = accessoryCopy;
      v62 = 2112;
      v63 = hh1Key;
      v64 = 2112;
      v65 = hh2Key;
      _os_log_impl(&dword_229538000, v29, OS_LOG_TYPE_INFO, "%{public}@Not scheduling key roll operation for accessory [%@] as we don't have needed keys to work with: [hh1: %@] [hh2: %@]", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v27);
    v33 = 0;
  }

LABEL_42:

  v52 = *MEMORY[0x277D85DE8];
  return v33;
}

- (void)auditOwnerPairingForAirPlayAccessory:(id)accessory isRunningOnResident:(BOOL)resident
{
  residentCopy = resident;
  v22 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  home = [accessoryCopy home];
  v8 = home;
  if (residentCopy)
  {
    if (([home isCurrentDeviceConfirmedPrimaryResident] & 1) == 0)
    {
      v9 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v11 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = HMFGetLogIdentifier();
        *buf = 138543618;
        v19 = v12;
        v20 = 2112;
        v21 = accessoryCopy;
        v13 = "%{public}@Not scheduling the audit for the accessory [%@] as current device is not the primary resident";
LABEL_8:
        _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, v13, buf, 0x16u);

        goto LABEL_9;
      }

      goto LABEL_9;
    }
  }

  else if ([home hasAnyResident])
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543618;
      v19 = v12;
      v20 = 2112;
      v21 = accessoryCopy;
      v13 = "%{public}@Not scheduling the audit for the accessory [%@] as current device is not a resident and the home has residents.";
      goto LABEL_8;
    }

LABEL_9:

LABEL_12:
    objc_autoreleasePoolPop(v9);
    goto LABEL_13;
  }

  if ([v8 isOwnerUser])
  {
    v9 = objc_autoreleasePoolPush();
    queue = [(HMDBackgroundOperationManager *)self queue];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __110__HMDBackgroundOperationManager_ScheduleHH2KeyRoll__auditOwnerPairingForAirPlayAccessory_isRunningOnResident___block_invoke;
    v16[3] = &unk_27868A750;
    v16[4] = self;
    v17 = accessoryCopy;
    [queue addOperationWithBlock:v16];

    goto LABEL_12;
  }

LABEL_13:

  v15 = *MEMORY[0x277D85DE8];
}

void __110__HMDBackgroundOperationManager_ScheduleHH2KeyRoll__auditOwnerPairingForAirPlayAccessory_isRunningOnResident___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = [v2 hh1Key];
  v4 = [*(a1 + 32) hh2Key];
  [v2 scheduleHH2KeyRollForAirPlayAccessory:v3 previousIdentity:v5 newIdentity:v4];
}

- (void)auditKeyChainEntryForAccessory:(id)accessory isRunningOnResident:(BOOL)resident
{
  residentCopy = resident;
  v36 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  v7 = accessoryCopy;
  if (residentCopy)
  {
    home = [accessoryCopy home];
    isCurrentDeviceConfirmedPrimaryResident = [home isCurrentDeviceConfirmedPrimaryResident];

    if ((isCurrentDeviceConfirmedPrimaryResident & 1) == 0)
    {
      v24 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v26 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        v27 = HMFGetLogIdentifier();
        *buf = 0;
        *&buf[8] = 0;
        uuid = [v7 uuid];

        if (uuid)
        {
          uuid2 = [v7 uuid];
          [uuid2 getUUIDBytes:buf];
        }

        else
        {
          *buf = *MEMORY[0x277D0F960];
        }

        v35 = *buf;
        *buf = 138543874;
        *&buf[4] = v27;
        *&buf[12] = 1040;
        *&buf[14] = 16;
        *&buf[18] = 2096;
        *&buf[20] = &v35;
        _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_INFO, "%{public}@Not scheduling the audit for the accessory [%{uuid_t}.16P] as current device is not the primary resident", buf, 0x1Cu);
        goto LABEL_17;
      }

LABEL_18:

      objc_autoreleasePoolPop(v24);
      goto LABEL_19;
    }
  }

  if (![(HMDBackgroundOperationManager *)self _scheduleKeyRollForAccessory:v7])
  {
    v24 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      v27 = HMFGetLogIdentifier();
      shortDescription = [v7 shortDescription];
      *buf = 138543618;
      *&buf[4] = v27;
      *&buf[12] = 2112;
      *&buf[14] = shortDescription;
      _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_INFO, "%{public}@Not scheduling the audit for accessory [%@]", buf, 0x16u);

LABEL_17:
      goto LABEL_18;
    }

    goto LABEL_18;
  }

  systemStore = [MEMORY[0x277CFEC78] systemStore];
  identifier = [v7 identifier];
  v12 = [systemStore getAssociatedControllerKeyForAccessory:identifier];

  v13 = objc_autoreleasePoolPush();
  selfCopy3 = self;
  v15 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = HMFGetLogIdentifier();
    identifier2 = [v12 identifier];
    identifier3 = [v7 identifier];
    *buf = 138543874;
    *&buf[4] = v16;
    *&buf[12] = 2112;
    *&buf[14] = identifier2;
    *&buf[22] = 2112;
    *&buf[24] = identifier3;
    _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@Associated controller key : %@ for accessory : %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v13);
  if (!v12 || ([MEMORY[0x277CFEC78] systemStore], v19 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v12, "identifier"), v20 = objc_claimAutoreleasedReturnValue(), v21 = objc_msgSend(v19, "isHH2KeyType:", v20), v20, v19, (v21 & 1) == 0))
  {
    v22 = objc_autoreleasePoolPush();
    queue = [(HMDBackgroundOperationManager *)selfCopy3 queue];
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __104__HMDBackgroundOperationManager_ScheduleHH2KeyRoll__auditKeyChainEntryForAccessory_isRunningOnResident___block_invoke;
    v32[3] = &unk_27868A750;
    v32[4] = selfCopy3;
    v33 = v7;
    [queue addOperationWithBlock:v32];

    objc_autoreleasePoolPop(v22);
  }

LABEL_19:
  v31 = *MEMORY[0x277D85DE8];
}

void __104__HMDBackgroundOperationManager_ScheduleHH2KeyRoll__auditKeyChainEntryForAccessory_isRunningOnResident___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = [v2 hh1Key];
  v4 = [*(a1 + 32) hh2Key];
  [v2 scheduleHH2KeyRollForAccessory:v3 previousIdentity:v5 newIdentity:v4];
}

- (void)auditKeyChainEntriesAndScheduleKeyRollOperationsIfNecessaryForHome:(id)home isRunningOnResident:(BOOL)resident
{
  homeCopy = home;
  [(HMDBackgroundOperationManager *)self makeSureToLoadPairingIdentities];
  accessories = [homeCopy accessories];

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __140__HMDBackgroundOperationManager_ScheduleHH2KeyRoll__auditKeyChainEntriesAndScheduleKeyRollOperationsIfNecessaryForHome_isRunningOnResident___block_invoke;
  v8[3] = &unk_278679E60;
  v8[4] = self;
  residentCopy = resident;
  [accessories hmf_enumerateWithAutoreleasePoolUsingBlock:v8];
}

void __140__HMDBackgroundOperationManager_ScheduleHH2KeyRoll__auditKeyChainEntriesAndScheduleKeyRollOperationsIfNecessaryForHome_isRunningOnResident___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  v6 = v3;
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

  if (v5 | v8)
  {
    if (v5)
    {
      [*(a1 + 32) auditKeyChainEntryForAccessory:v5 isRunningOnResident:*(a1 + 40)];
    }

    else if (v8)
    {
      [*(a1 + 32) auditOwnerPairingForAirPlayAccessory:v8 isRunningOnResident:*(a1 + 40)];
    }
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    v10 = *(a1 + 32);
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v14 = 138543618;
      v15 = v12;
      v16 = 2112;
      v17 = v6;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Not scheduling key roll operation for non HAP and non AirPlay accessory : %@", &v14, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)makeSureToLoadPairingIdentities
{
  v24 = *MEMORY[0x277D85DE8];
  hh1Key = [(HMDBackgroundOperationManager *)self hh1Key];

  if (!hh1Key)
  {
    getHH1ControllerKey = [(HMDBackgroundOperationManager *)self getHH1ControllerKey];
    v5 = objc_autoreleasePoolPush();
    selfCopy = self;
    v7 = HMFGetOSLogHandle();
    v8 = v7;
    if (getHH1ControllerKey)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v9 = HMFGetLogIdentifier();
        v20 = 138543618;
        v21 = v9;
        v22 = 2112;
        v23 = getHH1ControllerKey;
        _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@HH1 pairing identity : %@", &v20, 0x16u);
      }

      objc_autoreleasePoolPop(v5);
      [(HMDBackgroundOperationManager *)selfCopy setHh1Key:getHH1ControllerKey];
    }

    else
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v10 = HMFGetLogIdentifier();
        v20 = 138543362;
        v21 = v10;
        _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_ERROR, "%{public}@Unable to get HH1 controller key. Cannot schedule key roll operations.", &v20, 0xCu);
      }

      objc_autoreleasePoolPop(v5);
    }
  }

  hh2Key = [(HMDBackgroundOperationManager *)self hh2Key];

  if (!hh2Key)
  {
    getHH2ControllerKey = [(HMDBackgroundOperationManager *)self getHH2ControllerKey];
    v13 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v15 = HMFGetOSLogHandle();
    v16 = v15;
    if (getHH2ControllerKey)
    {
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v17 = HMFGetLogIdentifier();
        v20 = 138543618;
        v21 = v17;
        v22 = 2112;
        v23 = getHH2ControllerKey;
        _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@HH2 pairing identity : %@", &v20, 0x16u);
      }

      objc_autoreleasePoolPop(v13);
      [(HMDBackgroundOperationManager *)selfCopy2 setHh2Key:getHH2ControllerKey];
    }

    else
    {
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v18 = HMFGetLogIdentifier();
        v20 = 138543362;
        v21 = v18;
        _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_ERROR, "%{public}@Unable to get HH2 controller key. Cannot schedule key roll operations", &v20, 0xCu);
      }

      objc_autoreleasePoolPop(v13);
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)scheduleHH2KeyRollIfNecessaryDueToNotification:(id)notification
{
  queue = [(HMDBackgroundOperationManager *)self queue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __100__HMDBackgroundOperationManager_ScheduleHH2KeyRoll__scheduleHH2KeyRollIfNecessaryDueToNotification___block_invoke;
  v5[3] = &unk_27868A728;
  v5[4] = self;
  [queue addOperationWithBlock:v5];
}

- (void)_scheduleHH2KeyRollIfNecessary:(id)necessary
{
  v28 = *MEMORY[0x277D85DE8];
  necessaryCopy = necessary;
  if (![(HMDBackgroundOperationManager *)self shouldWeScheduleKeyRollOperationsOnThisDevice])
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543362;
      v23 = v11;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Not scheduling HH2 key roll operations on this device", buf, 0xCu);
LABEL_11:
    }

LABEL_12:

    objc_autoreleasePoolPop(v8);
    goto LABEL_17;
  }

  if (![(HMDBackgroundOperationManager *)self _scheduleKeyRollForAccessory:necessaryCopy])
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      shortDescription = [necessaryCopy shortDescription];
      *buf = 138543618;
      v23 = v11;
      v24 = 2112;
      v25 = shortDescription;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Not scheduling HH2 key roll operations on this accessory: %@", buf, 0x16u);

      goto LABEL_11;
    }

    goto LABEL_12;
  }

  home = [necessaryCopy home];
  v6 = home;
  if (!home || [home isOwnerUser] && (objc_msgSend(v6, "isAdminUser") & 1) != 0)
  {
    [(HMDBackgroundOperationManager *)self registerForNotifications];
    queue = [(HMDBackgroundOperationManager *)self queue];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __84__HMDBackgroundOperationManager_ScheduleHH2KeyRoll___scheduleHH2KeyRollIfNecessary___block_invoke;
    v20[3] = &unk_27868A750;
    v20[4] = self;
    v21 = necessaryCopy;
    [queue addOperationWithBlock:v20];
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      shortDescription2 = [necessaryCopy shortDescription];
      shortDescription3 = [v6 shortDescription];
      *buf = 138543874;
      v23 = v16;
      v24 = 2112;
      v25 = shortDescription2;
      v26 = 2112;
      v27 = shortDescription3;
      _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@Not scheduling key roll operations for accessory: %@ as this user is not the admin owner of the home: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v13);
  }

LABEL_17:
  v19 = *MEMORY[0x277D85DE8];
}

void __84__HMDBackgroundOperationManager_ScheduleHH2KeyRoll___scheduleHH2KeyRollIfNecessary___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) currentDeviceStateDataSource];
  v3 = [v2 isiOSDevice];

  if (!v3)
  {
LABEL_9:
    v13 = *MEMORY[0x277D85DE8];
    return;
  }

  v4 = [*(a1 + 32) currentDeviceStateDataSource];
  v5 = [v4 isDesignatedFMFDevice];

  if ((v5 & 1) == 0)
  {
    v9 = objc_autoreleasePoolPush();
    v10 = *(a1 + 32);
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v14 = 138543362;
      v15 = v12;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Not scheduling key roll operations as this device is not designated FMF device", &v14, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
    goto LABEL_9;
  }

  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *MEMORY[0x277D85DE8];

  [v6 startSchedulingKeyRollOperations:0 forAccessory:v7];
}

- (void)_scheduleHH2AirPlayKeyRollIfNecessary:(id)necessary
{
  v27 = *MEMORY[0x277D85DE8];
  necessaryCopy = necessary;
  if ([(HMDBackgroundOperationManager *)self shouldWeScheduleKeyRollOperationsOnThisDevice])
  {
    home = [necessaryCopy home];
    v6 = home;
    if (!home || [home isOwnerUser] && (objc_msgSend(v6, "isAdminUser") & 1) != 0)
    {
      [(HMDBackgroundOperationManager *)self registerForNotifications];
      [(HMDBackgroundOperationManager *)self makeSureToLoadPairingIdentities];
      queue = [(HMDBackgroundOperationManager *)self queue];
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __91__HMDBackgroundOperationManager_ScheduleHH2KeyRoll___scheduleHH2AirPlayKeyRollIfNecessary___block_invoke;
      v19[3] = &unk_27868A750;
      v19[4] = self;
      v20 = necessaryCopy;
      [queue addOperationWithBlock:v19];
    }

    else
    {
      v12 = objc_autoreleasePoolPush();
      selfCopy = self;
      v14 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = HMFGetLogIdentifier();
        shortDescription = [necessaryCopy shortDescription];
        shortDescription2 = [v6 shortDescription];
        *buf = 138543874;
        v22 = v15;
        v23 = 2112;
        v24 = shortDescription;
        v25 = 2112;
        v26 = shortDescription2;
        _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, "%{public}@Not scheduling key roll operations for accessory: %@ as this user is not the admin owner of the home: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v12);
    }
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543362;
      v22 = v11;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Not scheduling HH2 key roll operations on this device", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
  }

  v18 = *MEMORY[0x277D85DE8];
}

void __91__HMDBackgroundOperationManager_ScheduleHH2KeyRoll___scheduleHH2AirPlayKeyRollIfNecessary___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) currentDeviceStateDataSource];
  if ([v2 isiOSDevice])
  {
    v3 = [*(a1 + 32) currentDeviceStateDataSource];
    v4 = [v3 isDesignatedFMFDevice];

    if (v4)
    {
      v5 = objc_autoreleasePoolPush();
      v6 = *(a1 + 32);
      v7 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = HMFGetLogIdentifier();
        v9 = *(a1 + 40);
        *buf = 138543618;
        v14 = v8;
        v15 = 2112;
        v16 = v9;
        _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Going to audit the AirPlay accessory's pairing identities : %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v5);
      [*(a1 + 32) auditOwnerPairingForAirPlayAccessory:*(a1 + 40) isRunningOnResident:0];
      v10 = *MEMORY[0x277D85DE8];
      return;
    }
  }

  else
  {
  }

  v12 = [*(a1 + 32) currentDeviceStateDataSource];
  [v12 isiOSDevice];
  v11 = *MEMORY[0x277D85DE8];
}

- (BOOL)_scheduleKeyRollForAccessory:(id)accessory
{
  accessoryCopy = accessory;
  bridge = [accessoryCopy bridge];

  if (bridge)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = [accessoryCopy isDemoAccessory] ^ 1;
  }

  return v5;
}

- (void)scheduleHH2KeyRollForAirPlayAccessory:(id)accessory
{
  accessoryCopy = accessory;
  if (accessoryCopy)
  {
    v8 = accessoryCopy;
    [(HMDBackgroundOperationManager *)self _scheduleHH2AirPlayKeyRollIfNecessary:accessoryCopy];
  }

  else
  {
    v5 = _HMFPreconditionFailure();
    [(HMDBackgroundOperationManager *)v5 scheduleHH2KeyRollForAccessory:v6, v7];
  }
}

- (void)scheduleHH2KeyRollForAccessory:(id)accessory
{
  accessoryCopy = accessory;
  if (accessoryCopy)
  {
    v7 = accessoryCopy;
    [(HMDBackgroundOperationManager *)self _scheduleHH2KeyRollIfNecessary:accessoryCopy];
  }

  else
  {
    v5 = _HMFPreconditionFailure();
    [(HMDBackgroundOperationManager *)v5 scheduleHH2KeyRollIfNecessary];
  }
}

- (HMDHomeManager)homeManager
{
  WeakRetained = objc_loadWeakRetained(&self->_homeManager);

  return WeakRetained;
}

- (id)dumpStateWithPrivacyLevel:(unint64_t)level
{
  v4 = MEMORY[0x277CBEB18];
  operationList = [(HMDBackgroundOperationManager *)self operationList];
  v6 = [v4 arrayWithCapacity:{objc_msgSend(operationList, "count")}];

  operationList2 = [(HMDBackgroundOperationManager *)self operationList];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __59__HMDBackgroundOperationManager_dumpStateWithPrivacyLevel___block_invoke;
  v11[3] = &unk_27867A8C0;
  v12 = v6;
  v8 = v6;
  [operationList2 hmf_enumerateWithAutoreleasePoolUsingBlock:v11];

  v9 = [v8 copy];

  return v9;
}

void __59__HMDBackgroundOperationManager_dumpStateWithPrivacyLevel___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 dumpState];
  [v2 addObject:v3];
}

- (BOOL)scheduleOperationsWithDependenciesOnEachOtherFromArray:(id)array
{
  arrayCopy = array;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 1;
  queue = [(HMDBackgroundOperationManager *)self queue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __88__HMDBackgroundOperationManager_scheduleOperationsWithDependenciesOnEachOtherFromArray___block_invoke;
  v8[3] = &unk_27868A4D8;
  v6 = arrayCopy;
  v9 = v6;
  selfCopy = self;
  v11 = &v12;
  [queue addOperationWithBlock:v8];

  LOBYTE(self) = *(v13 + 24);
  _Block_object_dispose(&v12, 8);

  return self;
}

void __88__HMDBackgroundOperationManager_scheduleOperationsWithDependenciesOnEachOtherFromArray___block_invoke(uint64_t a1)
{
  v7[0] = 0;
  v7[1] = v7;
  v7[2] = 0x3032000000;
  v7[3] = __Block_byref_object_copy__138955;
  v7[4] = __Block_byref_object_dispose__138956;
  v8 = 0;
  v2 = *(a1 + 32);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __88__HMDBackgroundOperationManager_scheduleOperationsWithDependenciesOnEachOtherFromArray___block_invoke_2;
  v6[3] = &unk_27867A988;
  v3 = *(a1 + 48);
  v6[4] = *(a1 + 40);
  v6[5] = v7;
  v6[6] = v3;
  [v2 hmf_enumerateWithAutoreleasePoolUsingBlock:v6];
  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    [*(a1 + 40) evaluateOperations];
  }

  else
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __88__HMDBackgroundOperationManager_scheduleOperationsWithDependenciesOnEachOtherFromArray___block_invoke_43;
    v5[3] = &unk_27867A8C0;
    v4 = *(a1 + 32);
    v5[4] = *(a1 + 40);
    [v4 hmf_enumerateWithAutoreleasePoolUsingBlock:v5];
  }

  _Block_object_dispose(v7, 8);
}

void __88__HMDBackgroundOperationManager_scheduleOperationsWithDependenciesOnEachOtherFromArray___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v21 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = *(a1 + 32);
  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    [v8 addOperation:v7];
    goto LABEL_7;
  }

  if ([v8 addOperationDependency:v7 dependsOn:?])
  {
LABEL_7:
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    goto LABEL_8;
  }

  v9 = objc_autoreleasePoolPush();
  v10 = *(a1 + 32);
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v12 = HMFGetLogIdentifier();
    v13 = *(*(*(a1 + 40) + 8) + 40);
    v15 = 138543874;
    v16 = v12;
    v17 = 2112;
    v18 = v7;
    v19 = 2112;
    v20 = v13;
    _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_ERROR, "%{public}@Unable to add operation %@ which depends on %@", &v15, 0x20u);
  }

  objc_autoreleasePoolPop(v9);
  *a4 = 1;
  *(*(*(a1 + 48) + 8) + 24) = 0;
LABEL_8:

  v14 = *MEMORY[0x277D85DE8];
}

- (void)__resetAndRebuildOperationGraphForUnitTesting
{
  os_unfair_lock_lock_with_options();
  v3 = [[HMDBackgroundOperationGraph alloc] initWithOperations:self->_operationList];
  opGraph = self->_opGraph;
  self->_opGraph = v3;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)__removeAllOperationsForUnitTesting
{
  os_unfair_lock_lock_with_options();
  [(NSMutableArray *)self->_operationList removeAllObjects];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)__removeAllDataSourcesForUnitTesting
{
  os_unfair_lock_lock_with_options();
  [(NSMutableArray *)self->_dataSourceList removeAllObjects];

  os_unfair_lock_unlock(&self->_lock);
}

- (id)__getReadyToExecuteOperations
{
  operationList = [(HMDBackgroundOperationManager *)self operationList];
  hmf_isEmpty = [operationList hmf_isEmpty];

  if (hmf_isEmpty)
  {
    v5 = MEMORY[0x277CBEBF8];
  }

  else
  {
    array = [MEMORY[0x277CBEB18] array];
    v7 = objc_autoreleasePoolPush();
    os_unfair_lock_lock_with_options();
    getIndependentVertices = [(HMDBackgroundOperationGraph *)self->_opGraph getIndependentVertices];
    operationList = self->_operationList;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __62__HMDBackgroundOperationManager___getReadyToExecuteOperations__block_invoke;
    v12[3] = &unk_27867A898;
    v10 = getIndependentVertices;
    v13 = v10;
    v5 = array;
    v14 = v5;
    [(NSMutableArray *)operationList hmf_enumerateWithAutoreleasePoolUsingBlock:v12];

    os_unfair_lock_unlock(&self->_lock);
    objc_autoreleasePoolPop(v7);
  }

  return v5;
}

void __62__HMDBackgroundOperationManager___getReadyToExecuteOperations__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6 = v3;
  v5 = [v3 operationUUID];
  LODWORD(v4) = [v4 containsObject:v5];

  if (v4)
  {
    [*(a1 + 40) addObject:v6];
  }
}

- (void)removeOperationsForAccessoryIdentifier:(id)identifier operationKind:(id)kind withBlock:(id)block
{
  v25 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  kindCopy = kind;
  blockCopy = block;
  if (kindCopy && (v11 = [kindCopy hmf_isEmpty], blockCopy) && !v11)
  {
    operationList = [(HMDBackgroundOperationManager *)self operationList];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __96__HMDBackgroundOperationManager_removeOperationsForAccessoryIdentifier_operationKind_withBlock___block_invoke;
    v18[3] = &unk_27867A960;
    v19 = kindCopy;
    v20 = identifierCopy;
    selfCopy = self;
    v22 = blockCopy;
    [operationList hmf_enumerateWithAutoreleasePoolUsingBlock:v18];
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      *buf = 138543362;
      v24 = v16;
      _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_ERROR, "%{public}@List of operation classes are needed.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v13);
  }

  v17 = *MEMORY[0x277D85DE8];
}

void __96__HMDBackgroundOperationManager_removeOperationsForAccessoryIdentifier_operationKind_withBlock___block_invoke(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __96__HMDBackgroundOperationManager_removeOperationsForAccessoryIdentifier_operationKind_withBlock___block_invoke_2;
  v19[3] = &unk_27867A910;
  v5 = v3;
  v20 = v5;
  if ([v4 na_any:v19])
  {
    v6 = v5;
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

    if (v8)
    {
      v9 = [v8 accessoryUUID];
      v10 = [v9 isEqual:*(a1 + 40)];

      if (v10)
      {
        if ((*(*(a1 + 56) + 16))())
        {
          [*(a1 + 48) removeOperation:v8];
        }

        v11 = objc_autoreleasePoolPush();
        v12 = *(a1 + 48);
        v13 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          v14 = HMFGetLogIdentifier();
          v15 = objc_opt_class();
          v16 = *(a1 + 40);
          v17 = HMFBooleanToString();
          *buf = 138544130;
          v22 = v14;
          v23 = 2112;
          v24 = v15;
          v25 = 2112;
          v26 = v16;
          v27 = 2112;
          v28 = v17;
          _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@[%@] operation for accessory : %@ was removed? %@", buf, 0x2Au);
        }

        objc_autoreleasePoolPop(v11);
      }
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)removeOperationsForAccessoryIdentifier:(id)identifier operationKind:(id)kind
{
  v21 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  kindCopy = kind;
  v8 = kindCopy;
  if (kindCopy && ![kindCopy hmf_isEmpty])
  {
    operationList = [(HMDBackgroundOperationManager *)self operationList];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __86__HMDBackgroundOperationManager_removeOperationsForAccessoryIdentifier_operationKind___block_invoke;
    v15[3] = &unk_27867A938;
    v16 = v8;
    v17 = identifierCopy;
    selfCopy = self;
    [operationList hmf_enumerateWithAutoreleasePoolUsingBlock:v15];
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543362;
      v20 = v12;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_ERROR, "%{public}@List of operation classes are needed.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __86__HMDBackgroundOperationManager_removeOperationsForAccessoryIdentifier_operationKind___block_invoke(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __86__HMDBackgroundOperationManager_removeOperationsForAccessoryIdentifier_operationKind___block_invoke_2;
  v18[3] = &unk_27867A910;
  v5 = v3;
  v19 = v5;
  if ([v4 na_any:v18])
  {
    v6 = v5;
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

    if (v8)
    {
      v9 = [v8 accessoryUUID];
      v10 = [v9 isEqual:*(a1 + 40)];

      if (v10)
      {
        [*(a1 + 48) removeOperation:v8];
        v11 = objc_autoreleasePoolPush();
        v12 = *(a1 + 48);
        v13 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          v14 = HMFGetLogIdentifier();
          v15 = objc_opt_class();
          v16 = *(a1 + 40);
          *buf = 138543874;
          v21 = v14;
          v22 = 2112;
          v23 = v15;
          v24 = 2112;
          v25 = v16;
          _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Removing [%@] operation for accessory : %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v11);
      }
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)removeAllOperationForAccessoryIdentifier:(id)identifier
{
  identifierCopy = identifier;
  operationList = [(HMDBackgroundOperationManager *)self operationList];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __74__HMDBackgroundOperationManager_removeAllOperationForAccessoryIdentifier___block_invoke;
  v7[3] = &unk_27867A898;
  v8 = identifierCopy;
  selfCopy = self;
  v6 = identifierCopy;
  [operationList hmf_enumerateWithAutoreleasePoolUsingBlock:v7];
}

void __74__HMDBackgroundOperationManager_removeAllOperationForAccessoryIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  if (v5)
  {
    v6 = [v5 accessoryUUID];
    v7 = [v6 isEqual:*(a1 + 32)];

    if (v7)
    {
      [*(a1 + 40) removeOperation:v5];
      v8 = objc_autoreleasePoolPush();
      v9 = *(a1 + 40);
      v10 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = HMFGetLogIdentifier();
        v12 = objc_opt_class();
        v13 = *(a1 + 32);
        v15 = 138543874;
        v16 = v11;
        v17 = 2112;
        v18 = v12;
        v19 = 2112;
        v20 = v13;
        _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Removing [%@] operation for accessory : %@", &v15, 0x20u);
      }

      objc_autoreleasePoolPop(v8);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)removeAllOperationsBeforeStartingHH2Migration
{
  v12 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock_with_options();
  if ([(NSMutableArray *)self->_operationList count])
  {
    v3 = objc_autoreleasePoolPush();
    selfCopy = self;
    v5 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = HMFGetLogIdentifier();
      v10 = 138543362;
      v11 = v6;
      _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Removing all operations before starting HH2 migration", &v10, 0xCu);
    }

    objc_autoreleasePoolPop(v3);
    array = [MEMORY[0x277CBEB18] array];
    operationList = self->_operationList;
    self->_operationList = array;
  }

  os_unfair_lock_unlock(&self->_lock);
  v9 = *MEMORY[0x277D85DE8];
}

- (void)completeProcessingForOperation:(id)operation
{
  v26 = *MEMORY[0x277D85DE8];
  operationCopy = operation;
  os_unfair_lock_lock_with_options();
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543618;
    v23 = v8;
    v24 = 2112;
    v25 = operationCopy;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@complete processing for : %@. Will remove it from the graph", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  opGraph = selfCopy->_opGraph;
  operationUUID = [operationCopy operationUUID];
  [(HMDBackgroundOperationGraph *)opGraph removeVertex:operationUUID];

  [(NSMutableArray *)selfCopy->_operationList removeObject:operationCopy];
  operationList = selfCopy->_operationList;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __64__HMDBackgroundOperationManager_completeProcessingForOperation___block_invoke;
  v20[3] = &unk_278685618;
  v12 = operationCopy;
  v21 = v12;
  if ([(NSMutableArray *)operationList na_any:v20])
  {
    v13 = selfCopy->_operationList;
    v15 = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = __64__HMDBackgroundOperationManager_completeProcessingForOperation___block_invoke_2;
    v18 = &unk_27867A8C0;
    v19 = v12;
    [(NSMutableArray *)v13 hmf_enumerateWithAutoreleasePoolUsingBlock:&v15];

    os_unfair_lock_unlock(&self->_lock);
    [(HMDBackgroundOperationManager *)selfCopy scheduleTimerToCheckAndRemoveExpiredOperation:v15];
    [(HMDBackgroundOperationManager *)selfCopy evaluateOperations];
  }

  else
  {

    os_unfair_lock_unlock(&self->_lock);
    [(HMDBackgroundOperationManager *)selfCopy scheduleTimerToCheckAndRemoveExpiredOperation];
  }

  v14 = *MEMORY[0x277D85DE8];
}

uint64_t __64__HMDBackgroundOperationManager_completeProcessingForOperation___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 operationUUID];
  v5 = [v3 hasDependency:v4];

  return v5;
}

void __64__HMDBackgroundOperationManager_completeProcessingForOperation___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 operationUUID];
  [v3 removeDependency:v4];
}

- (void)timerDidFire:(id)fire
{
  fireCopy = fire;
  expirationTimer = [(HMDBackgroundOperationManager *)self expirationTimer];

  if (expirationTimer == fireCopy)
  {
    [(HMDBackgroundOperationManager *)self checkAndRemoveExpiredOperations];
    [(HMDBackgroundOperationManager *)self scheduleTimerToCheckAndRemoveExpiredOperation];
  }

  else
  {
    deferralTimer = [(HMDBackgroundOperationManager *)self deferralTimer];

    if (deferralTimer == fireCopy)
    {
      [(HMDBackgroundOperationManager *)self dataSourceHasUpdate:0];
      [(HMDBackgroundOperationManager *)self scheduleTimerToRetryDeferredOperations];
    }

    else
    {
      dataSourceCoalescingTimer = [(HMDBackgroundOperationManager *)self dataSourceCoalescingTimer];

      if (dataSourceCoalescingTimer == fireCopy)
      {
        queue = self->_queue;
        v9[0] = MEMORY[0x277D85DD0];
        v9[1] = 3221225472;
        v9[2] = __46__HMDBackgroundOperationManager_timerDidFire___block_invoke;
        v9[3] = &unk_27868A728;
        v9[4] = self;
        [(NSOperationQueue *)queue addOperationWithBlock:v9];
      }
    }
  }
}

- (void)scheduleTimerToRetryDeferredOperations
{
  operationList = [(HMDBackgroundOperationManager *)self operationList];
  hmf_isEmpty = [operationList hmf_isEmpty];

  if ((hmf_isEmpty & 1) == 0)
  {
    v23 = 0;
    v24 = &v23;
    v25 = 0x3032000000;
    v26 = __Block_byref_object_copy__138955;
    v27 = __Block_byref_object_dispose__138956;
    v28 = 0;
    currentDeviceStateDataSource = [(HMDBackgroundOperationManager *)self currentDeviceStateDataSource];
    currentDate = [currentDeviceStateDataSource currentDate];

    operationList2 = [(HMDBackgroundOperationManager *)self operationList];
    v17 = MEMORY[0x277D85DD0];
    v18 = 3221225472;
    v19 = __71__HMDBackgroundOperationManager_scheduleTimerToRetryDeferredOperations__block_invoke;
    v20 = &unk_27867A8E8;
    v8 = currentDate;
    v21 = v8;
    v22 = &v23;
    [operationList2 hmf_enumerateWithAutoreleasePoolUsingBlock:&v17];

    v9 = v24[5];
    if (v9)
    {
      [v9 timeIntervalSinceDate:{v8, v17, v18, v19, v20}];
      v11 = v10;
      if (v10 > 0.0)
      {
        os_unfair_lock_lock_with_options();
        currentDeviceStateDataSource2 = [(HMDBackgroundOperationManager *)self currentDeviceStateDataSource];
        v13 = [currentDeviceStateDataSource2 timerWithTimeInterval:1 options:@"deferralTimer" label:v11];
        deferralTimer = self->_deferralTimer;
        self->_deferralTimer = v13;

        os_unfair_lock_unlock(&self->_lock);
        deferralTimer = [(HMDBackgroundOperationManager *)self deferralTimer];
        [deferralTimer setDelegate:self];

        deferralTimer2 = [(HMDBackgroundOperationManager *)self deferralTimer];
        [deferralTimer2 resume];
      }
    }

    _Block_object_dispose(&v23, 8);
  }
}

void __71__HMDBackgroundOperationManager_scheduleTimerToRetryDeferredOperations__block_invoke(uint64_t a1, void *a2)
{
  v15 = a2;
  v3 = [v15 deferralDate];

  if (v3)
  {
    v4 = *(a1 + 32);
    v5 = [v15 deferralDate];
    v6 = [v4 compare:v5];

    if (v6 == -1)
    {
      v7 = *(*(*(a1 + 40) + 8) + 40);
      v8 = [v15 deferralDate];
      v9 = v8;
      if (v7)
      {
        v10 = [v7 earlierDate:v8];
        v11 = *(*(a1 + 40) + 8);
        v12 = *(v11 + 40);
        *(v11 + 40) = v10;
      }

      else
      {
        v13 = *(*(a1 + 40) + 8);
        v14 = *(v13 + 40);
        *(v13 + 40) = v8;
        v9 = v14;
      }
    }
  }
}

- (void)scheduleTimerToCheckAndRemoveExpiredOperation
{
  operationList = [(HMDBackgroundOperationManager *)self operationList];
  hmf_isEmpty = [operationList hmf_isEmpty];

  if ((hmf_isEmpty & 1) == 0)
  {
    currentDeviceStateDataSource = [(HMDBackgroundOperationManager *)self currentDeviceStateDataSource];
    currentDate = [currentDeviceStateDataSource currentDate];

    v23 = 0;
    v24 = &v23;
    v25 = 0x3032000000;
    v26 = __Block_byref_object_copy__138955;
    v27 = __Block_byref_object_dispose__138956;
    v28 = 0;
    operationList2 = [(HMDBackgroundOperationManager *)self operationList];
    v17 = MEMORY[0x277D85DD0];
    v18 = 3221225472;
    v19 = __78__HMDBackgroundOperationManager_scheduleTimerToCheckAndRemoveExpiredOperation__block_invoke;
    v20 = &unk_27867A8E8;
    v8 = currentDate;
    v21 = v8;
    v22 = &v23;
    [operationList2 hmf_enumerateWithAutoreleasePoolUsingBlock:&v17];

    v9 = v24[5];
    if (v9)
    {
      [v9 timeIntervalSinceDate:{v8, v17, v18, v19, v20}];
      v11 = v10;
      if (v10 > 0.0)
      {
        os_unfair_lock_lock_with_options();
        currentDeviceStateDataSource2 = [(HMDBackgroundOperationManager *)self currentDeviceStateDataSource];
        v13 = [currentDeviceStateDataSource2 timerWithTimeInterval:1 options:@"expirationTimer" label:v11];
        expirationTimer = self->_expirationTimer;
        self->_expirationTimer = v13;

        os_unfair_lock_unlock(&self->_lock);
        expirationTimer = [(HMDBackgroundOperationManager *)self expirationTimer];
        [expirationTimer setDelegate:self];

        expirationTimer2 = [(HMDBackgroundOperationManager *)self expirationTimer];
        [expirationTimer2 resume];
      }
    }

    _Block_object_dispose(&v23, 8);
  }
}

void __78__HMDBackgroundOperationManager_scheduleTimerToCheckAndRemoveExpiredOperation__block_invoke(uint64_t a1, void *a2)
{
  v15 = a2;
  v3 = *(a1 + 32);
  v4 = [v15 expirationDate];
  v5 = [v3 compare:v4];

  v6 = v15;
  if (v5 == -1)
  {
    v7 = *(*(*(a1 + 40) + 8) + 40);
    v8 = [v15 expirationDate];
    v9 = v8;
    if (v7)
    {
      v10 = [v7 earlierDate:v8];
      v11 = *(*(a1 + 40) + 8);
      v12 = *(v11 + 40);
      *(v11 + 40) = v10;
    }

    else
    {
      v13 = *(*(a1 + 40) + 8);
      v14 = *(v13 + 40);
      *(v13 + 40) = v8;
      v9 = v14;
    }

    v6 = v15;
  }
}

- (void)checkAndRemoveExpiredOperations
{
  os_unfair_lock_lock_with_options();
  v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:{-[NSMutableArray count](self->_operationList, "count")}];
  operationList = self->_operationList;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __64__HMDBackgroundOperationManager_checkAndRemoveExpiredOperations__block_invoke;
  v7[3] = &unk_27867A8C0;
  v5 = v3;
  v8 = v5;
  [(NSMutableArray *)operationList hmf_enumerateWithAutoreleasePoolUsingBlock:v7];
  v6 = [(NSMutableArray *)self->_operationList count];
  if (v6 != [v5 count])
  {
    objc_storeStrong(&self->_operationList, v3);
  }

  os_unfair_lock_unlock(&self->_lock);
}

void __64__HMDBackgroundOperationManager_checkAndRemoveExpiredOperations__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([v3 isExpired] & 1) == 0)
  {
    [*(a1 + 32) addObject:v3];
  }
}

- (void)_runOperation:(id)operation withParameters:(id)parameters
{
  operationCopy = operation;
  parametersCopy = parameters;
  if ([operationCopy isReadyToRun])
  {
    predicate = [objc_opt_class() predicate];
    v9 = [predicate evaluateWithObject:parametersCopy];

    if (v9)
    {
      objc_initWeak(&location, operationCopy);
      v10 = MEMORY[0x277CCA8C8];
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __62__HMDBackgroundOperationManager__runOperation_withParameters___block_invoke;
      v13[3] = &unk_278686B48;
      objc_copyWeak(&v14, &location);
      v13[4] = self;
      v11 = [v10 blockOperationWithBlock:v13];
      [operationCopy setScheduled:1];
      [v11 setQualityOfService:{objc_msgSend(operationCopy, "qualityOfService")}];
      queue = [(HMDBackgroundOperationManager *)self queue];
      [queue addOperation:v11];

      objc_destroyWeak(&v14);
      objc_destroyWeak(&location);
    }
  }
}

void __62__HMDBackgroundOperationManager__runOperation_withParameters___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = objc_autoreleasePoolPush();
  v4 = *(a1 + 32);
  v5 = HMFGetOSLogHandle();
  v6 = v5;
  if (WeakRetained)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      v8 = objc_opt_class();
      v9 = [WeakRetained operationUUID];
      v10 = [WeakRetained userData];
      v16 = 138544130;
      v17 = v7;
      v18 = 2112;
      v19 = v8;
      v20 = 2112;
      v21 = v9;
      v22 = 2112;
      v23 = v10;
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Going to run : %@/%@/%@", &v16, 0x2Au);
    }

    objc_autoreleasePoolPop(v3);
    v11 = [*(a1 + 32) homeManager];
    v12 = [WeakRetained runOperation:v11];

    v13 = *(a1 + 32);
    if (v12)
    {
      [v13 completeProcessingForOperation:WeakRetained];
    }

    else
    {
      [v13 scheduleTimerToRetryDeferredOperations];
    }
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v14 = HMFGetLogIdentifier();
      v16 = 138543362;
      v17 = v14;
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_DEBUG, "%{public}@Operation which was supposed to run got deallocated.", &v16, 0xCu);
    }

    objc_autoreleasePoolPop(v3);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_runOperationsAfterEvaluatingPredicate:(id)predicate
{
  predicateCopy = predicate;
  __getReadyToExecuteOperations = [(HMDBackgroundOperationManager *)self __getReadyToExecuteOperations];
  v6 = [__getReadyToExecuteOperations sortedArrayUsingComparator:&__block_literal_global_138978];

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __72__HMDBackgroundOperationManager__runOperationsAfterEvaluatingPredicate___block_invoke_2;
  v8[3] = &unk_27867A898;
  v9 = predicateCopy;
  selfCopy = self;
  v7 = predicateCopy;
  [v6 hmf_enumerateWithAutoreleasePoolUsingBlock:v8];
}

void __72__HMDBackgroundOperationManager__runOperationsAfterEvaluatingPredicate___block_invoke_2(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 userData];
  [v4 setObject:v5 forKey:@"userData"];

  v6 = objc_autoreleasePoolPush();
  v7 = *(a1 + 40);
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = HMFGetLogIdentifier();
    v10 = objc_opt_class();
    v11 = [v3 operationUUID];
    v12 = *(a1 + 32);
    v13 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v3, "failureCount")}];
    v15 = 138544386;
    v16 = v9;
    v17 = 2112;
    v18 = v10;
    v19 = 2112;
    v20 = v11;
    v21 = 2112;
    v22 = v12;
    v23 = 2112;
    v24 = v13;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_DEBUG, "%{public}@Scheduling the operation [%@:%@:%@:%@]", &v15, 0x34u);
  }

  objc_autoreleasePoolPop(v6);
  [*(a1 + 40) _runOperation:v3 withParameters:*(a1 + 32)];

  v14 = *MEMORY[0x277D85DE8];
}

uint64_t __72__HMDBackgroundOperationManager__runOperationsAfterEvaluatingPredicate___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x277CCABB0];
  v5 = a3;
  v6 = [v4 numberWithLongLong:{objc_msgSend(a2, "failureCount")}];
  v7 = MEMORY[0x277CCABB0];
  v8 = [v5 failureCount];

  v9 = [v7 numberWithLongLong:v8];
  v10 = [v6 compare:v9];

  return v10;
}

- (void)_dataSourceHasUpdate:(id)update
{
  v20 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  operationList = [(HMDBackgroundOperationManager *)self operationList];
  hmf_isEmpty = [operationList hmf_isEmpty];

  v7 = objc_autoreleasePoolPush();
  if (hmf_isEmpty)
  {
    selfCopy = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543618;
      v17 = v10;
      v18 = 2112;
      v19 = updateCopy;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_DEBUG, "%{public}@No background operations to run. Not evaluating data source : [%@]", buf, 0x16u);
    }
  }

  else
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    dataSourceList = [(HMDBackgroundOperationManager *)self dataSourceList];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __54__HMDBackgroundOperationManager__dataSourceHasUpdate___block_invoke;
    v14[3] = &unk_27867A850;
    v15 = dictionary;
    selfCopy = dictionary;
    [dataSourceList hmf_enumerateWithAutoreleasePoolUsingBlock:v14];

    [(HMDBackgroundOperationManager *)self _runOperationsAfterEvaluatingPredicate:selfCopy];
    v9 = v15;
  }

  objc_autoreleasePoolPop(v7);
  v13 = *MEMORY[0x277D85DE8];
}

void __54__HMDBackgroundOperationManager__dataSourceHasUpdate___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v6 = [v3 values];
  v4 = objc_opt_class();

  v5 = [v4 name];
  [v2 setObject:v6 forKey:v5];
}

- (void)dataSourceHasUpdate:(id)update
{
  dataSourceCoalescingTimer = [(HMDBackgroundOperationManager *)self dataSourceCoalescingTimer];
  [dataSourceCoalescingTimer resume];
}

- (void)addDefaultDataSources
{
  dataSourceList = self->_dataSourceList;
  v4 = [HMDBackgroundOperationAccessoryManagerDataSource alloc];
  notificationCenter = [(HMDBackgroundOperationManager *)self notificationCenter];
  v5 = [(HMDBackgroundOperationAccessoryManagerDataSource *)v4 initWithOperationManager:self notificationCenter:notificationCenter];
  [(NSMutableArray *)dataSourceList addObject:v5];
}

- (void)addDataSource:(id)source
{
  v18 = *MEMORY[0x277D85DE8];
  sourceCopy = source;
  if (sourceCopy)
  {
    os_unfair_lock_lock_with_options();
    if ([(NSMutableArray *)self->_dataSourceList containsObject:sourceCopy])
    {
      v5 = objc_autoreleasePoolPush();
      selfCopy = self;
      v7 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v8 = HMFGetLogIdentifier();
        v14 = 138543618;
        v15 = v8;
        v16 = 2112;
        v17 = sourceCopy;
        _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_ERROR, "%{public}@Could not add the operation as it already exist : %@", &v14, 0x16u);
      }

      objc_autoreleasePoolPop(v5);
    }

    else
    {
      [(NSMutableArray *)self->_dataSourceList addObject:sourceCopy];
    }

    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      v14 = 138543362;
      v15 = v12;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_ERROR, "%{public}@Could not add the data source as it was nil.", &v14, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)removeOperation:(id)operation
{
  v20 = *MEMORY[0x277D85DE8];
  operationCopy = operation;
  if (!operationCopy)
  {
    v7 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v16 = 138543362;
      v17 = v10;
      v11 = "%{public}@Could not remove the operation as it was nil.";
      v12 = v9;
      v13 = OS_LOG_TYPE_ERROR;
      v14 = 12;
LABEL_8:
      _os_log_impl(&dword_229538000, v12, v13, v11, &v16, v14);
    }

LABEL_9:

    objc_autoreleasePoolPop(v7);
    goto LABEL_10;
  }

  [(HMDBackgroundOperationManager *)self checkAndRemoveExpiredOperations];
  operationList = [(HMDBackgroundOperationManager *)self operationList];
  v6 = [operationList containsObject:operationCopy];

  if ((v6 & 1) == 0)
  {
    v7 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v16 = 138543618;
      v17 = v10;
      v18 = 2112;
      v19 = operationCopy;
      v11 = "%{public}@Could not remove the operation as it was not found : %@";
      v12 = v9;
      v13 = OS_LOG_TYPE_INFO;
      v14 = 22;
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  [(HMDBackgroundOperationManager *)self completeProcessingForOperation:operationCopy];
LABEL_10:

  v15 = *MEMORY[0x277D85DE8];
}

- (BOOL)addOperationDependency:(id)dependency dependsOn:(id)on
{
  v49 = *MEMORY[0x277D85DE8];
  dependencyCopy = dependency;
  onCopy = on;
  v8 = onCopy;
  if (!dependencyCopy || !onCopy)
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      v39 = 138543362;
      v40 = v13;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_ERROR, "%{public}@The passed parameter is nil. Cannot add dependency.", &v39, 0xCu);
    }

    goto LABEL_9;
  }

  if (HMFEqualObjects())
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      v39 = 138543362;
      v40 = v12;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_ERROR, "%{public}@Cannot add operation as dependency to itself", &v39, 0xCu);
    }

LABEL_9:

    objc_autoreleasePoolPop(v9);
LABEL_10:
    v14 = 0;
    goto LABEL_11;
  }

  [(HMDBackgroundOperationManager *)self addOperation:dependencyCopy];
  os_unfair_lock_lock_with_options();
  opGraph = [(HMDBackgroundOperationManager *)self opGraph];
  v18 = v8;
  v19 = opGraph;
  operationUUID = [dependencyCopy operationUUID];
  operationUUID2 = [v18 operationUUID];

  v22 = [v19 canAddEdgeFrom:operationUUID to:operationUUID2];
  if (v22)
  {
    v23 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v25 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = HMFGetLogIdentifier();
      v39 = 138543874;
      v40 = v26;
      v41 = 2112;
      v42 = v18;
      v43 = 2112;
      v44 = dependencyCopy;
      _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_ERROR, "%{public}@Cycle detected while adding %@ to as dependency for %@", &v39, 0x20u);
    }

    objc_autoreleasePoolPop(v23);
    os_unfair_lock_unlock(&self->_lock);
    goto LABEL_10;
  }

  os_unfair_lock_unlock(&self->_lock);
  operationUUID3 = [v18 operationUUID];
  [dependencyCopy addDependency:operationUUID3];

  [(HMDBackgroundOperationManager *)self addOperation:v18];
  opGraph2 = [(HMDBackgroundOperationManager *)self opGraph];
  operationUUID4 = [dependencyCopy operationUUID];
  operationUUID5 = [v18 operationUUID];
  [opGraph2 addEdgeFrom:operationUUID4 to:operationUUID5];

  v31 = objc_autoreleasePoolPush();
  selfCopy4 = self;
  v33 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
  {
    v34 = HMFGetLogIdentifier();
    v35 = objc_opt_class();
    operationUUID6 = [dependencyCopy operationUUID];
    v37 = objc_opt_class();
    operationUUID7 = [v18 operationUUID];
    v39 = 138544386;
    v40 = v34;
    v41 = 2112;
    v42 = v35;
    v43 = 2112;
    v44 = operationUUID6;
    v45 = 2112;
    v46 = v37;
    v47 = 2112;
    v48 = operationUUID7;
    _os_log_impl(&dword_229538000, v33, OS_LOG_TYPE_INFO, "%{public}@%@/%@ depends on %@/%@", &v39, 0x34u);
  }

  objc_autoreleasePoolPop(v31);
  v14 = 1;
LABEL_11:

  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

- (void)addOperation:(id)operation
{
  v20 = *MEMORY[0x277D85DE8];
  operationCopy = operation;
  if (operationCopy)
  {
    [(HMDBackgroundOperationManager *)self checkAndRemoveExpiredOperations];
    os_unfair_lock_lock_with_options();
    if (([(NSMutableArray *)self->_operationList containsObject:operationCopy]& 1) != 0)
    {
      os_unfair_lock_unlock(&self->_lock);
    }

    else
    {
      [(NSMutableArray *)self->_operationList addObject:operationCopy];
      opGraph = self->_opGraph;
      operationUUID = [operationCopy operationUUID];
      [(HMDBackgroundOperationGraph *)opGraph addVertex:operationUUID];

      v11 = objc_autoreleasePoolPush();
      selfCopy = self;
      v13 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = HMFGetLogIdentifier();
        v16 = 138543618;
        v17 = v14;
        v18 = 2112;
        v19 = operationCopy;
        _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Enqueued operation: %@", &v16, 0x16u);
      }

      objc_autoreleasePoolPop(v11);
      os_unfair_lock_unlock(&self->_lock);
      [(HMDBackgroundOperationManager *)selfCopy scheduleTimerToCheckAndRemoveExpiredOperation];
    }
  }

  else
  {
    v5 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      v16 = 138543362;
      v17 = v8;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_ERROR, "%{public}@Could not add the operation as it was nil.", &v16, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (HMFTimer)deferralTimer
{
  os_unfair_lock_lock_with_options();
  v3 = self->_deferralTimer;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (HMFTimer)expirationTimer
{
  os_unfair_lock_lock_with_options();
  v3 = self->_expirationTimer;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (HMFTimer)dataSourceCoalescingTimer
{
  os_unfair_lock_lock_with_options();
  v3 = self->_dataSourceCoalescingTimer;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (NSMutableArray)operationList
{
  os_unfair_lock_lock_with_options();
  v3 = [(NSMutableArray *)self->_operationList copy];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (HMDBackgroundOperationManager)initWithHomeManager:(id)manager currentDeviceStateDataSource:(id)source notificationCenter:(id)center
{
  managerCopy = manager;
  sourceCopy = source;
  centerCopy = center;
  v26.receiver = self;
  v26.super_class = HMDBackgroundOperationManager;
  v11 = [(HMDBackgroundOperationManager *)&v26 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_homeManager, managerCopy);
    array = [MEMORY[0x277CBEB18] array];
    dataSourceList = v12->_dataSourceList;
    v12->_dataSourceList = array;

    v15 = objc_alloc_init(MEMORY[0x277CCABD8]);
    queue = v12->_queue;
    v12->_queue = v15;

    [(NSOperationQueue *)v12->_queue setMaxConcurrentOperationCount:1];
    v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:HMFDispatchQueueName()];
    [(NSOperationQueue *)v12->_queue setName:v17];

    [(NSOperationQueue *)v12->_queue setQualityOfService:9];
    objc_storeStrong(&v12->_currentDeviceStateDataSource, source);
    objc_storeStrong(&v12->_notificationCenter, center);
    v12->_lock._os_unfair_lock_opaque = 0;
    array2 = [MEMORY[0x277CBEB18] array];
    operationList = v12->_operationList;
    v12->_operationList = array2;

    v20 = [[HMDBackgroundOperationGraph alloc] initWithOperations:v12->_operationList];
    opGraph = v12->_opGraph;
    v12->_opGraph = v20;

    currentDeviceStateDataSource = [(HMDBackgroundOperationManager *)v12 currentDeviceStateDataSource];
    v23 = [currentDeviceStateDataSource timerWithTimeInterval:8 options:@"dataSourceCoalescingTimer" label:1.0];
    dataSourceCoalescingTimer = v12->_dataSourceCoalescingTimer;
    v12->_dataSourceCoalescingTimer = v23;

    [(HMFTimer *)v12->_dataSourceCoalescingTimer setDelegate:v12];
    [(HMDBackgroundOperationManager *)v12 addDefaultDataSources];
    [(HMDBackgroundOperationManager *)v12 checkAndRemoveExpiredOperations];
    [(HMDBackgroundOperationManager *)v12 scheduleTimerToCheckAndRemoveExpiredOperation];
  }

  return v12;
}

- (HMDBackgroundOperationManager)initWithHomeManager:(id)manager
{
  managerCopy = manager;
  v5 = objc_alloc_init(HMDBackgroundOperationManagerCurrentDeviceStateDataSource);
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v7 = [(HMDBackgroundOperationManager *)self initWithHomeManager:managerCopy currentDeviceStateDataSource:v5 notificationCenter:defaultCenter];

  return v7;
}

+ (id)findUserWithUUID:(id)d fromHomeManager:(id)manager
{
  dCopy = d;
  managerCopy = manager;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__138955;
  v18 = __Block_byref_object_dispose__138956;
  v19 = 0;
  homes = [managerCopy homes];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __66__HMDBackgroundOperationManager_findUserWithUUID_fromHomeManager___block_invoke;
  v11[3] = &unk_27867A9B0;
  v13 = &v14;
  v8 = dCopy;
  v12 = v8;
  [homes hmf_enumerateWithAutoreleasePoolUsingBlock:v11];

  v9 = v15[5];
  _Block_object_dispose(&v14, 8);

  return v9;
}

void __66__HMDBackgroundOperationManager_findUserWithUUID_fromHomeManager___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = [a2 userWithUUID:*(a1 + 32)];
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  if (*(*(*(a1 + 40) + 8) + 40))
  {
    *a4 = 1;
  }
}

+ (id)findHomeUsingIdentifier:(id)identifier homeManager:(id)manager
{
  identifierCopy = identifier;
  homes = [manager homes];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __69__HMDBackgroundOperationManager_findHomeUsingIdentifier_homeManager___block_invoke;
  v10[3] = &unk_278685BA0;
  v11 = identifierCopy;
  v7 = identifierCopy;
  v8 = [homes na_firstObjectPassingTest:v10];

  return v8;
}

uint64_t __69__HMDBackgroundOperationManager_findHomeUsingIdentifier_homeManager___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 uuid];
  v4 = HMFEqualObjects();

  return v4;
}

+ (id)findAccessoryUsing:(id)using fromHome:(id)home
{
  usingCopy = using;
  accessories = [home accessories];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __61__HMDBackgroundOperationManager_findAccessoryUsing_fromHome___block_invoke;
  v10[3] = &unk_278681708;
  v11 = usingCopy;
  v7 = usingCopy;
  v8 = [accessories na_firstObjectPassingTest:v10];

  return v8;
}

uint64_t __61__HMDBackgroundOperationManager_findAccessoryUsing_fromHome___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 uuid];
  v4 = *(a1 + 32);
  v5 = HMFEqualObjects();

  return v5;
}

+ (id)findAccessoryUsing:(id)using homeManager:(id)manager
{
  usingCopy = using;
  v7 = [self getAllPairedAccessoriesOfAllHomes:manager];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __64__HMDBackgroundOperationManager_findAccessoryUsing_homeManager___block_invoke;
  v11[3] = &unk_278681708;
  v12 = usingCopy;
  v8 = usingCopy;
  v9 = [v7 na_firstObjectPassingTest:v11];

  return v9;
}

uint64_t __64__HMDBackgroundOperationManager_findAccessoryUsing_homeManager___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 uuid];
  v4 = *(a1 + 32);
  v5 = HMFEqualObjects();

  return v5;
}

+ (id)findHomeWhereThisDeviceIsConfirmedPrimaryResident:(id)resident
{
  homes = [resident homes];
  v4 = [homes na_firstObjectPassingTest:&__block_literal_global_47_139019];

  return v4;
}

+ (id)getAllReachableAccessories:(id)accessories
{
  v3 = [self getAllPairedAccessoriesOfAllHomes:accessories];
  v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v3, "count")}];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __60__HMDBackgroundOperationManager_getAllReachableAccessories___block_invoke;
  v8[3] = &unk_27867B478;
  v9 = v4;
  v5 = v4;
  [v3 hmf_enumerateWithAutoreleasePoolUsingBlock:v8];
  v6 = [v5 copy];

  return v6;
}

void __60__HMDBackgroundOperationManager_getAllReachableAccessories___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isReachable])
  {
    [*(a1 + 32) addObject:v3];
  }
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t38_139021 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t38_139021, &__block_literal_global_39_139022);
  }

  v3 = logCategory__hmf_once_v39_139023;

  return v3;
}

void __44__HMDBackgroundOperationManager_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v39_139023;
  logCategory__hmf_once_v39_139023 = v1;
}

@end