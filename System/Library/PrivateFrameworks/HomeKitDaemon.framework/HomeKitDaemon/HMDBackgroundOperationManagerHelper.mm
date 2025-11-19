@interface HMDBackgroundOperationManagerHelper
+ (BOOL)checkAndRaiseFaultIfHH2KeyIsMissing;
+ (BOOL)didAuditTimeExpiredOnThisAccessory:(id)a3;
+ (BOOL)didAuditTimeExpiredOnThisAirPlayAccessory:(id)a3;
+ (BOOL)shouldWeAuditFromLastAudit:(id)a3;
+ (id)auditAllowedAccessToRestrictedGuest:(id)a3 forAccessories:(id)a4 shouldRemoveScheduledOperations:(BOOL)a5 parentFlow:(id)a6;
+ (id)auditProhibitedAccessToRestrictedGuest:(id)a3 forAccessories:(id)a4 shouldRemoveScheduledOperations:(BOOL)a5 parentFlow:(id)a6;
+ (id)homeManager;
+ (id)logCategory;
+ (void)_scheduleRemovePairingForAccessory:(id)a3 usingPairingIdentity:(id)a4;
+ (void)addPairingOnAllAccessoriesOfHome:(id)a3 forSharedUser:(id)a4;
+ (void)auditAllRestrictedGuestAccessoriesForHome:(id)a3;
+ (void)auditSharedUserEntriesInDatabase:(id)a3;
+ (void)auditSharedUserEntriesInDatabaseForAccessory:(id)a3;
+ (void)auditSharedUserEntriesInDatabaseForHome:(id)a3 withCompletionHandler:(id)a4;
+ (void)dumpUsers:(id)a3 usingTag:(id)a4;
+ (void)makeSureToCreateBackUpOfHH2KeysIfNecessary:(id)a3;
+ (void)removeAllScheduledOperationsForGuest:(id)a3 forAccessoryUUID:(id)a4;
+ (void)removeAllUsersFromAccessory:(id)a3 withCompletionHandler:(id)a4;
+ (void)removeAllUsersFromAirPlayAccessory:(id)a3 withCompletionHandler:(id)a4;
+ (void)removeAllUsersFromHAPAccessory:(id)a3 withCompletionHandler:(id)a4;
+ (void)removeAllUsersFromMatterAccessory:(id)a3 withCompletionHandler:(id)a4;
+ (void)removePairingOnAllAccessoriesOfHome:(id)a3 forSharedUser:(id)a4;
+ (void)scheduleAddPairingForAccessory:(id)a3 forSharedUser:(id)a4;
+ (void)scheduleAddPairingForAccessory:(id)a3 sharedUser:(id)a4;
+ (void)scheduleFullAuditForAccessory:(id)a3;
+ (void)scheduleRemovePairingForAccessory:(id)a3 forSharedUser:(id)a4;
+ (void)scheduleRemovePairingForAccessory:(id)a3 sharedUser:(id)a4;
@end

@implementation HMDBackgroundOperationManagerHelper

+ (id)logCategory
{
  if (logCategory__hmf_once_t128 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t128, &__block_literal_global_98_250753);
  }

  v3 = logCategory__hmf_once_v129;

  return v3;
}

void __50__HMDBackgroundOperationManagerHelper_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v129;
  logCategory__hmf_once_v129 = v1;
}

+ (void)removeAllScheduledOperationsForGuest:(id)a3 forAccessoryUUID:(id)a4
{
  v14[2] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ([v6 isRestrictedGuest])
  {
    v14[0] = objc_opt_class();
    v14[1] = objc_opt_class();
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:2];
    v9 = [a1 homeManager];
    v10 = [v9 bgOpsManager];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __93__HMDBackgroundOperationManagerHelper_removeAllScheduledOperationsForGuest_forAccessoryUUID___block_invoke;
    v12[3] = &unk_278685618;
    v13 = v6;
    [v10 removeOperationsForAccessoryIdentifier:v7 operationKind:v8 withBlock:v12];
  }

  v11 = *MEMORY[0x277D85DE8];
}

uint64_t __93__HMDBackgroundOperationManagerHelper_removeAllScheduledOperationsForGuest_forAccessoryUUID___block_invoke(uint64_t a1, void *a2)
{
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

  v9 = v5;
  if ((v5 || (v9 = v8) != 0) && ([v9 guestUUID], (v10 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v11 = v10;
    v12 = [*(a1 + 32) uuid];
    v13 = HMFEqualObjects();
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

+ (id)auditProhibitedAccessToRestrictedGuest:(id)a3 forAccessories:(id)a4 shouldRemoveScheduledOperations:(BOOL)a5 parentFlow:(id)a6
{
  v7 = a5;
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = [v10 home];
  if (v7)
  {
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __136__HMDBackgroundOperationManagerHelper_auditProhibitedAccessToRestrictedGuest_forAccessories_shouldRemoveScheduledOperations_parentFlow___block_invoke;
    v30[3] = &unk_278685550;
    v31 = v10;
    [v11 hmf_enumerateWithAutoreleasePoolUsingBlock:v30];
  }

  v14 = MEMORY[0x277D0F7C0];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __136__HMDBackgroundOperationManagerHelper_auditProhibitedAccessToRestrictedGuest_forAccessories_shouldRemoveScheduledOperations_parentFlow___block_invoke_2;
  v25[3] = &unk_2786855A0;
  v26 = v13;
  v27 = v12;
  v28 = v10;
  v29 = a1;
  v15 = v10;
  v16 = v12;
  v17 = v13;
  v18 = [v11 na_map:v25];
  v19 = [v14 allSettled:v18];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __136__HMDBackgroundOperationManagerHelper_auditProhibitedAccessToRestrictedGuest_forAccessories_shouldRemoveScheduledOperations_parentFlow___block_invoke_94;
  v23[3] = &unk_2786868A0;
  v24 = v11;
  v20 = v11;
  v21 = [v19 then:v23];

  return v21;
}

id __136__HMDBackgroundOperationManagerHelper_auditProhibitedAccessToRestrictedGuest_forAccessories_shouldRemoveScheduledOperations_parentFlow___block_invoke_2(uint64_t a1, void *a2)
{
  v56 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [objc_opt_class() findAccessoryUsing:v3 fromHome:*(a1 + 32)];
  v5 = v4;
  if (!v4)
  {
    v21 = objc_autoreleasePoolPush();
    v22 = *(a1 + 56);
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = HMFGetLogIdentifier();
      v25 = *(a1 + 32);
      *buf = 138543874;
      v47 = v24;
      v48 = 2112;
      v49 = v3;
      v50 = 2112;
      v51 = v25;
      _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_ERROR, "%{public}@Did not find the accessory with UUID : %@ in home: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v21);
    v26 = MEMORY[0x277D0F7C0];
    v9 = [MEMORY[0x277CCA9B8] hmPrivateErrorWithCode:2020];
    v20 = [v26 futureWithError:v9];
    goto LABEL_15;
  }

  v6 = v4;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  if ((isKindOfClass & 1) == 0 || ([v6 supportsAnyInPersonAccess] & 1) == 0)
  {
    v20 = [MEMORY[0x277D0F7C0] futureWithNoValue];
LABEL_15:
    v19 = v20;
    goto LABEL_16;
  }

  v39 = [MEMORY[0x277D0F7B8] internalOnlyInitializer];
  v10 = objc_autoreleasePoolPush();
  v11 = *(a1 + 56);
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v37 = HMFGetLogIdentifier();
    v36 = [v39 UUID];
    v13 = [*(a1 + 40) UUID];
    v14 = [v6 shortDescription];
    [*(a1 + 48) shortDescription];
    v15 = v38 = v10;
    *buf = 138544386;
    v47 = v37;
    v48 = 2112;
    v49 = v36;
    v50 = 2112;
    v51 = v13;
    v52 = 2112;
    v53 = v14;
    v54 = 2112;
    v55 = v15;
    _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@[ChildFlow: %@ Parent: %@] auditProhibitedAccessToRestrictedGuest with accessory: %@ and restricted guest:%@", buf, 0x34u);

    v10 = v38;
  }

  objc_autoreleasePoolPop(v10);
  v16 = [[HMDAuditProhibitedAccessoryForRestrictedGuestOperation alloc] initWithAccessory:v6 restrictedGuest:*(a1 + 48)];
  if (v16)
  {
    v17 = [*(a1 + 56) homeManager];
    v18 = [(HMDAuditProhibitedAccessoryForRestrictedGuestOperation *)v16 executeOperationWithHomeManager:v17 flow:v39];
    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = __136__HMDBackgroundOperationManagerHelper_auditProhibitedAccessToRestrictedGuest_forAccessories_shouldRemoveScheduledOperations_parentFlow___block_invoke_92;
    v40[3] = &unk_2786855F0;
    v45 = *(a1 + 56);
    v41 = v39;
    v42 = v3;
    v43 = *(a1 + 48);
    v44 = v16;
    v19 = [v18 then:v40];
  }

  else
  {
    v29 = objc_autoreleasePoolPush();
    v30 = *(a1 + 56);
    v31 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v32 = HMFGetLogIdentifier();
      v33 = [v39 UUID];
      v34 = [*(a1 + 48) uuid];
      *buf = 138544130;
      v47 = v32;
      v48 = 2112;
      v49 = v33;
      v50 = 2112;
      v51 = v3;
      v52 = 2112;
      v53 = v34;
      _os_log_impl(&dword_229538000, v31, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to create audit prohibited accessory restricted guest operation for accessory: %@ and restricted guest: %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v29);
    v35 = MEMORY[0x277D0F7C0];
    v17 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
    v19 = [v35 futureWithError:v17];
  }

LABEL_16:
  v27 = *MEMORY[0x277D85DE8];

  return v19;
}

uint64_t __136__HMDBackgroundOperationManagerHelper_auditProhibitedAccessToRestrictedGuest_forAccessories_shouldRemoveScheduledOperations_parentFlow___block_invoke_94(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CBEB38];
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [v3 dictionaryWithCapacity:{objc_msgSend(v4, "count")}];
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __136__HMDBackgroundOperationManagerHelper_auditProhibitedAccessToRestrictedGuest_forAccessories_shouldRemoveScheduledOperations_parentFlow___block_invoke_2_95;
  v12 = &unk_2786855C8;
  v13 = v6;
  v14 = *(a1 + 32);
  [v5 hmf_enumerateWithAutoreleasePoolUsingBlock:&v9];

  v7 = [v6 copy];
  return 1;
}

void __136__HMDBackgroundOperationManagerHelper_auditProhibitedAccessToRestrictedGuest_forAccessories_shouldRemoveScheduledOperations_parentFlow___block_invoke_2_95(uint64_t a1, void *a2, uint64_t a3)
{
  v8 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (v8 && (isKindOfClass & 1) != 0)
  {
    v6 = *(a1 + 32);
    v7 = [*(a1 + 40) objectAtIndexedSubscript:a3];
    [v6 setObject:v8 forKeyedSubscript:v7];
  }
}

uint64_t __136__HMDBackgroundOperationManagerHelper_auditProhibitedAccessToRestrictedGuest_forAccessories_shouldRemoveScheduledOperations_parentFlow___block_invoke_92(uint64_t a1, void *a2)
{
  v35 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 error];

  if (v4)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = *(a1 + 64);
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      v9 = [*(a1 + 32) UUID];
      v10 = *(a1 + 40);
      v11 = [*(a1 + 48) uuid];
      v27 = 138544130;
      v28 = v8;
      v29 = 2112;
      v30 = v9;
      v31 = 2112;
      v32 = v10;
      v33 = 2112;
      v34 = v11;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Audit Prohibited restricted guest operation for accessory: %@ and restricted guest: %@ failed.", &v27, 0x2Au);
    }

    objc_autoreleasePoolPop(v5);
    if ([v3 shouldReschedule])
    {
      v12 = objc_autoreleasePoolPush();
      v13 = *(a1 + 64);
      v14 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = HMFGetLogIdentifier();
        v16 = [*(a1 + 32) UUID];
        v17 = *(a1 + 40);
        v18 = [*(a1 + 48) uuid];
        v27 = 138544130;
        v28 = v15;
        v29 = 2112;
        v30 = v16;
        v31 = 2112;
        v32 = v17;
        v33 = 2112;
        v34 = v18;
        _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Resulted in an unexpected failure, will schedule work for accessory: %@ and guest %@.", &v27, 0x2Au);
      }

      objc_autoreleasePoolPop(v12);
      v19 = [*(a1 + 64) homeManager];
      v20 = [v19 bgOpsManager];
      [v20 addOperation:*(a1 + 56)];
    }

    v21 = [v3 error];
    v22 = v21;
    if (v21)
    {
      v23 = v21;
    }

    else
    {
      [MEMORY[0x277CCA9B8] hmfUnspecifiedError];
      objc_claimAutoreleasedReturnValue();
    }

    v24 = 2;
  }

  else
  {
    v24 = 1;
  }

  v25 = *MEMORY[0x277D85DE8];
  return v24;
}

+ (id)auditAllowedAccessToRestrictedGuest:(id)a3 forAccessories:(id)a4 shouldRemoveScheduledOperations:(BOOL)a5 parentFlow:(id)a6
{
  v7 = a5;
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = [v10 home];
  if (v7)
  {
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __133__HMDBackgroundOperationManagerHelper_auditAllowedAccessToRestrictedGuest_forAccessories_shouldRemoveScheduledOperations_parentFlow___block_invoke;
    v30[3] = &unk_278685550;
    v31 = v10;
    [v11 hmf_enumerateWithAutoreleasePoolUsingBlock:v30];
  }

  v14 = MEMORY[0x277D0F7C0];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __133__HMDBackgroundOperationManagerHelper_auditAllowedAccessToRestrictedGuest_forAccessories_shouldRemoveScheduledOperations_parentFlow___block_invoke_2;
  v25[3] = &unk_2786855A0;
  v26 = v13;
  v27 = v12;
  v28 = v10;
  v29 = a1;
  v15 = v10;
  v16 = v12;
  v17 = v13;
  v18 = [v11 na_map:v25];
  v19 = [v14 allSettled:v18];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __133__HMDBackgroundOperationManagerHelper_auditAllowedAccessToRestrictedGuest_forAccessories_shouldRemoveScheduledOperations_parentFlow___block_invoke_87;
  v23[3] = &unk_2786868A0;
  v24 = v11;
  v20 = v11;
  v21 = [v19 then:v23];

  return v21;
}

id __133__HMDBackgroundOperationManagerHelper_auditAllowedAccessToRestrictedGuest_forAccessories_shouldRemoveScheduledOperations_parentFlow___block_invoke_2(uint64_t a1, void *a2)
{
  v56 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [objc_opt_class() findAccessoryUsing:v3 fromHome:*(a1 + 32)];
  v5 = v4;
  if (!v4)
  {
    v21 = objc_autoreleasePoolPush();
    v22 = *(a1 + 56);
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = HMFGetLogIdentifier();
      v25 = *(a1 + 32);
      *buf = 138543874;
      v47 = v24;
      v48 = 2112;
      v49 = v3;
      v50 = 2112;
      v51 = v25;
      _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_ERROR, "%{public}@Did not find the accessory with UUID : %@ in home: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v21);
    v26 = MEMORY[0x277D0F7C0];
    v9 = [MEMORY[0x277CCA9B8] hmPrivateErrorWithCode:2020];
    v20 = [v26 futureWithError:v9];
    goto LABEL_15;
  }

  v6 = v4;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  if ((isKindOfClass & 1) == 0 || ([v6 supportsAnyInPersonAccess] & 1) == 0)
  {
    v20 = [MEMORY[0x277D0F7C0] futureWithNoValue];
LABEL_15:
    v19 = v20;
    goto LABEL_16;
  }

  v39 = [MEMORY[0x277D0F7B8] internalOnlyInitializer];
  v10 = objc_autoreleasePoolPush();
  v11 = *(a1 + 56);
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v37 = HMFGetLogIdentifier();
    v36 = [v39 UUID];
    v13 = [*(a1 + 40) UUID];
    v14 = [v6 shortDescription];
    [*(a1 + 48) shortDescription];
    v15 = v38 = v10;
    *buf = 138544386;
    v47 = v37;
    v48 = 2112;
    v49 = v36;
    v50 = 2112;
    v51 = v13;
    v52 = 2112;
    v53 = v14;
    v54 = 2112;
    v55 = v15;
    _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@[ChildFlow: %@ Parent: %@] auditAllowedAccessToRestrictedGuest with accessory: %@ and restricted guest:%@", buf, 0x34u);

    v10 = v38;
  }

  objc_autoreleasePoolPop(v10);
  v16 = [[HMDAuditAllowedAccessoryForRestrictedGuestOperation alloc] initWithAccessory:v6 restrictedGuest:*(a1 + 48)];
  if (v16)
  {
    v17 = [*(a1 + 56) homeManager];
    v18 = [(HMDAuditAllowedAccessoryForRestrictedGuestOperation *)v16 executeOperationWithHomeManager:v17 flow:v39];
    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = __133__HMDBackgroundOperationManagerHelper_auditAllowedAccessToRestrictedGuest_forAccessories_shouldRemoveScheduledOperations_parentFlow___block_invoke_84;
    v40[3] = &unk_278685578;
    v45 = *(a1 + 56);
    v41 = v39;
    v42 = v3;
    v43 = *(a1 + 48);
    v44 = v16;
    v19 = [v18 then:v40];
  }

  else
  {
    v29 = objc_autoreleasePoolPush();
    v30 = *(a1 + 56);
    v31 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v32 = HMFGetLogIdentifier();
      v33 = [v39 UUID];
      v34 = [*(a1 + 48) uuid];
      *buf = 138544130;
      v47 = v32;
      v48 = 2112;
      v49 = v33;
      v50 = 2112;
      v51 = v3;
      v52 = 2112;
      v53 = v34;
      _os_log_impl(&dword_229538000, v31, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to create audit allowed accessory restricted guest operation for accessory: %@ and restricted guest: %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v29);
    v35 = MEMORY[0x277D0F7C0];
    v17 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
    v19 = [v35 futureWithError:v17];
  }

LABEL_16:
  v27 = *MEMORY[0x277D85DE8];

  return v19;
}

uint64_t __133__HMDBackgroundOperationManagerHelper_auditAllowedAccessToRestrictedGuest_forAccessories_shouldRemoveScheduledOperations_parentFlow___block_invoke_87(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CBEB38];
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [v3 dictionaryWithCapacity:{objc_msgSend(v4, "count")}];
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __133__HMDBackgroundOperationManagerHelper_auditAllowedAccessToRestrictedGuest_forAccessories_shouldRemoveScheduledOperations_parentFlow___block_invoke_2_89;
  v12 = &unk_2786855C8;
  v13 = v6;
  v14 = *(a1 + 32);
  [v5 hmf_enumerateWithAutoreleasePoolUsingBlock:&v9];

  v7 = [v6 copy];
  return 1;
}

void __133__HMDBackgroundOperationManagerHelper_auditAllowedAccessToRestrictedGuest_forAccessories_shouldRemoveScheduledOperations_parentFlow___block_invoke_2_89(uint64_t a1, void *a2, uint64_t a3)
{
  v8 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (v8 && (isKindOfClass & 1) != 0)
  {
    v6 = *(a1 + 32);
    v7 = [*(a1 + 40) objectAtIndexedSubscript:a3];
    [v6 setObject:v8 forKeyedSubscript:v7];
  }
}

uint64_t __133__HMDBackgroundOperationManagerHelper_auditAllowedAccessToRestrictedGuest_forAccessories_shouldRemoveScheduledOperations_parentFlow___block_invoke_84(uint64_t a1, void *a2)
{
  v42 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 64);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v8 = [*(a1 + 32) UUID];
    [v3 credentialsRemoved];
    v9 = HMFBooleanToString();
    v10 = *(a1 + 40);
    v34 = 138544130;
    v35 = v7;
    v36 = 2112;
    v37 = v8;
    v38 = 2112;
    v39 = v9;
    v40 = 2112;
    v41 = v10;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Audit allowed accessory operation had an end state for credentials to be removed as %@ for accessory: %@", &v34, 0x2Au);
  }

  objc_autoreleasePoolPop(v4);
  v11 = [v3 error];

  if (v11)
  {
    v12 = objc_autoreleasePoolPush();
    v13 = *(a1 + 64);
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier();
      v16 = [*(a1 + 32) UUID];
      v17 = *(a1 + 40);
      v18 = [*(a1 + 48) uuid];
      v34 = 138544130;
      v35 = v15;
      v36 = 2112;
      v37 = v16;
      v38 = 2112;
      v39 = v17;
      v40 = 2112;
      v41 = v18;
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Audit Allowed restricted guest operation for accessory: %@ and restricted guest: %@ failed.", &v34, 0x2Au);
    }

    objc_autoreleasePoolPop(v12);
    if ([v3 shouldReschedule])
    {
      v19 = objc_autoreleasePoolPush();
      v20 = *(a1 + 64);
      v21 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        v22 = HMFGetLogIdentifier();
        v23 = [*(a1 + 32) UUID];
        v24 = *(a1 + 40);
        v25 = [*(a1 + 48) uuid];
        v34 = 138544130;
        v35 = v22;
        v36 = 2112;
        v37 = v23;
        v38 = 2112;
        v39 = v24;
        v40 = 2112;
        v41 = v25;
        _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Resulted in an unexpected failure, will schedule work for accessory: %@ and guest %@.", &v34, 0x2Au);
      }

      objc_autoreleasePoolPop(v19);
      v26 = [*(a1 + 64) homeManager];
      v27 = [v26 bgOpsManager];
      [v27 addOperation:*(a1 + 56)];
    }

    v28 = [v3 error];
    v29 = v28;
    if (v28)
    {
      v30 = v28;
    }

    else
    {
      [MEMORY[0x277CCA9B8] hmfUnspecifiedError];
      objc_claimAutoreleasedReturnValue();
    }

    v31 = 2;
  }

  else
  {
    v31 = 1;
  }

  v32 = *MEMORY[0x277D85DE8];
  return v31;
}

+ (void)auditAllRestrictedGuestAccessoriesForHome:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 restrictedGuests];
  v6 = [v5 hmf_isEmpty];

  v7 = objc_autoreleasePoolPush();
  v8 = a1;
  v9 = HMFGetOSLogHandle();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_INFO);
  if (v6)
  {
    if (v10)
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543362;
      *&buf[4] = v11;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@The home does not have any restricted guests", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
  }

  else
  {
    if (v10)
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543618;
      *&buf[4] = v12;
      *&buf[12] = 2112;
      *&buf[14] = v4;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Starting the full audit for accessories which are restricted for the home: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v21 = 0;
    v13 = [v4 backingStore];
    v14 = [v13 context];

    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __81__HMDBackgroundOperationManagerHelper_auditAllRestrictedGuestAccessoriesForHome___block_invoke;
    v16[3] = &unk_2786852B8;
    v17 = v4;
    v18 = buf;
    v19 = v8;
    [v14 performBlockWithPinnedQueryGeneration:v16];

    _Block_object_dispose(buf, 8);
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __81__HMDBackgroundOperationManagerHelper_auditAllRestrictedGuestAccessoriesForHome___block_invoke(uint64_t a1)
{
  v1 = a1;
  v124[2] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) uuid];
  v3 = [HMCContext findHomeWithModelID:v2];

  if (v3)
  {
    v124[0] = objc_opt_class();
    v124[1] = objc_opt_class();
    v88 = [MEMORY[0x277CBEA60] arrayWithObjects:v124 count:2];
    v4 = [*(v1 + 32) homeManager];
    v92 = [v4 bgOpsManager];

    v111 = 0u;
    v112 = 0u;
    v109 = 0u;
    v110 = 0u;
    obj = [v3 accessories];
    v5 = [obj countByEnumeratingWithState:&v109 objects:v123 count:16];
    if (!v5)
    {
      goto LABEL_57;
    }

    v7 = v5;
    v8 = *v110;
    *&v6 = 138544130;
    v86 = v6;
    v96 = v1;
    v91 = v3;
    v87 = *v110;
    while (1)
    {
      v9 = 0;
      v89 = v7;
      do
      {
        if (*v110 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v109 + 1) + 8 * v9);
        context = objc_autoreleasePoolPush();
        if ([v10 hasRGCapableService])
        {
          v11 = [v10 lastPairingAuditTimeForRG];
          if (!v11)
          {
            goto LABEL_10;
          }

          v12 = v11;
          [v10 lastPairingAuditTimeForRG];
          v13 = v10;
          v15 = v14 = v9;
          v16 = [HMDBackgroundOperationManagerHelper shouldWeAuditFromLastAudit:v15];

          v9 = v14;
          v10 = v13;

          if (v16)
          {
LABEL_10:
            v94 = v9;
            v17 = [v10 modelID];
            [v92 removeOperationsForAccessoryIdentifier:v17 operationKind:v88];

            v97 = [MEMORY[0x277CBEB18] array];
            v18 = [v10 modelID];
            v19 = [HMDBackgroundOperationManager findAccessoryUsing:v18 fromHome:*(v1 + 32)];

            v100 = v19;
            if (v19)
            {
              v107 = 0u;
              v108 = 0u;
              v105 = 0u;
              v106 = 0u;
              v90 = v10;
              v20 = [v10 allowedGuests];
              v21 = [v20 countByEnumeratingWithState:&v105 objects:v122 count:16];
              if (v21)
              {
                v22 = v21;
                v23 = *v106;
                v98 = *v106;
                do
                {
                  for (i = 0; i != v22; ++i)
                  {
                    if (*v106 != v23)
                    {
                      objc_enumerationMutation(v20);
                    }

                    v25 = *(v1 + 32);
                    v26 = [*(*(&v105 + 1) + 8 * i) modelID];
                    v27 = [v25 userWithUUID:v26];

                    if (v27 && [v27 isRestrictedGuest])
                    {
                      v28 = objc_autoreleasePoolPush();
                      v29 = *(v1 + 48);
                      v30 = HMFGetOSLogHandle();
                      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
                      {
                        v31 = HMFGetLogIdentifier();
                        [v27 uuid];
                        v33 = v32 = v20;
                        v34 = [v100 uuid];
                        *buf = 138543874;
                        v114 = v31;
                        v115 = 2112;
                        v116 = v33;
                        v117 = 2112;
                        v118 = v34;
                        _os_log_impl(&dword_229538000, v30, OS_LOG_TYPE_INFO, "%{public}@Making sure guest's %@ credentials is on accessory %@", buf, 0x20u);

                        v20 = v32;
                        v23 = v98;

                        v1 = v96;
                      }

                      objc_autoreleasePoolPop(v28);
                      v35 = [[HMDAuditAllowedAccessoryForRestrictedGuestOperation alloc] initWithAccessory:v100 restrictedGuest:v27];
                      if (v35)
                      {
                        [v97 addObject:v35];
                      }
                    }
                  }

                  v22 = [v20 countByEnumeratingWithState:&v105 objects:v122 count:16];
                }

                while (v22);
              }

              v36 = [v91 guests];
              v37 = [v36 asSet];
              v38 = [v90 allowedGuests];
              v39 = [v38 asSet];
              v40 = [v37 na_setByRemovingObjectsFromSet:v39];

              v103 = 0u;
              v104 = 0u;
              v101 = 0u;
              v102 = 0u;
              v99 = v40;
              v41 = [v99 countByEnumeratingWithState:&v101 objects:v121 count:16];
              if (v41)
              {
                v42 = v41;
                v43 = *v102;
                do
                {
                  for (j = 0; j != v42; ++j)
                  {
                    if (*v102 != v43)
                    {
                      objc_enumerationMutation(v99);
                    }

                    v45 = *(v1 + 32);
                    v46 = [*(*(&v101 + 1) + 8 * j) modelID];
                    v47 = [v45 userWithUUID:v46];

                    if (v47 && [v47 isRestrictedGuest])
                    {
                      v48 = objc_autoreleasePoolPush();
                      v49 = *(v1 + 48);
                      v50 = HMFGetOSLogHandle();
                      if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
                      {
                        v51 = HMFGetLogIdentifier();
                        v52 = [v47 uuid];
                        v53 = [v100 uuid];
                        *buf = 138543874;
                        v114 = v51;
                        v115 = 2112;
                        v116 = v52;
                        v117 = 2112;
                        v118 = v53;
                        _os_log_impl(&dword_229538000, v50, OS_LOG_TYPE_INFO, "%{public}@Making sure guest's %@ credentials isn't on accessory %@", buf, 0x20u);

                        v1 = v96;
                      }

                      objc_autoreleasePoolPop(v48);
                      v54 = [[HMDAuditProhibitedAccessoryForRestrictedGuestOperation alloc] initWithAccessory:v100 restrictedGuest:v47];
                      if (v54)
                      {
                        [v97 addObject:v54];
                      }
                    }
                  }

                  v42 = [v99 countByEnumeratingWithState:&v101 objects:v121 count:16];
                }

                while (v42);
              }

              v55 = [[HMDPersistAuditAccessoryResultOperation alloc] initForRestrictedGuestWithAccessory:v100];
              if (v55)
              {
                [v97 addObject:v55];
                v56 = [v97 copy];
                v57 = [v92 scheduleOperationsWithDependenciesOnEachOtherFromArray:v56];

                v58 = objc_autoreleasePoolPush();
                v59 = *(v1 + 48);
                v60 = HMFGetOSLogHandle();
                v61 = v60;
                v9 = v94;
                if (v57)
                {
                  if (os_log_type_enabled(v60, OS_LOG_TYPE_INFO))
                  {
                    v62 = HMFGetLogIdentifier();
                    v63 = [v100 uuid];
                    v64 = [v100 identifier];
                    *buf = v86;
                    v114 = v62;
                    v115 = 2112;
                    v116 = v97;
                    v117 = 2112;
                    v118 = v63;
                    v119 = 2112;
                    v120 = v64;
                    v65 = v61;
                    v66 = OS_LOG_TYPE_INFO;
                    v67 = "%{public}@[RG] Successfully added the operations to the BGOperationManager : %@ for accessory: %@/%@";
                    goto LABEL_51;
                  }
                }

                else if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
                {
                  v62 = HMFGetLogIdentifier();
                  v63 = [v100 uuid];
                  v64 = [v100 identifier];
                  *buf = v86;
                  v114 = v62;
                  v115 = 2112;
                  v116 = v97;
                  v117 = 2112;
                  v118 = v63;
                  v119 = 2112;
                  v120 = v64;
                  v65 = v61;
                  v66 = OS_LOG_TYPE_ERROR;
                  v67 = "%{public}@[RG] Unable to schedule all the audit operations : %@ for accessory: %@/%@. Removing them";
LABEL_51:
                  _os_log_impl(&dword_229538000, v65, v66, v67, buf, 0x2Au);

                  v1 = v96;
                }

                objc_autoreleasePoolPop(v58);
                *(*(*(v1 + 40) + 8) + 24) = 1;
              }

              else
              {
                v75 = objc_autoreleasePoolPush();
                v76 = *(v1 + 48);
                v77 = HMFGetOSLogHandle();
                v9 = v94;
                if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
                {
                  v78 = HMFGetLogIdentifier();
                  v79 = [v100 shortDescription];
                  *buf = 138543618;
                  v114 = v78;
                  v115 = 2112;
                  v116 = v79;
                  _os_log_impl(&dword_229538000, v77, OS_LOG_TYPE_ERROR, "%{public}@Failed to create audit pairing operation for accessory: %@", buf, 0x16u);
                }

                objc_autoreleasePoolPop(v75);
              }

              v3 = v91;

              v7 = v89;
            }

            else
            {
              v68 = objc_autoreleasePoolPush();
              v69 = *(v1 + 48);
              v70 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
              {
                v71 = HMFGetLogIdentifier();
                v72 = v10;
                v73 = v71;
                v74 = [v72 debugDescription];
                *buf = 138543618;
                v114 = v73;
                v115 = 2112;
                v116 = v74;
                _os_log_impl(&dword_229538000, v70, OS_LOG_TYPE_ERROR, "%{public}@Strange: Couldn't find the accessory in the memory but exist in working store : %@", buf, 0x16u);
              }

              objc_autoreleasePoolPop(v68);
              v7 = v89;
              v9 = v94;
            }

            v8 = v87;
          }
        }

        objc_autoreleasePoolPop(context);
        ++v9;
      }

      while (v9 != v7);
      v7 = [obj countByEnumeratingWithState:&v109 objects:v123 count:16];
      if (!v7)
      {
LABEL_57:

        if (*(*(*(v1 + 40) + 8) + 24) == 1)
        {
          [v92 evaluateOperations];
        }

        goto LABEL_63;
      }
    }
  }

  v80 = objc_autoreleasePoolPush();
  v81 = *(v1 + 48);
  v82 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v82, OS_LOG_TYPE_ERROR))
  {
    v83 = HMFGetLogIdentifier();
    v84 = [*(v1 + 32) uuid];
    *buf = 138543618;
    v114 = v83;
    v115 = 2112;
    v116 = v84;
    _os_log_impl(&dword_229538000, v82, OS_LOG_TYPE_ERROR, "%{public}@Could not start audit for home as it was not found inside working store: %@", buf, 0x16u);

    v3 = 0;
  }

  objc_autoreleasePoolPop(v80);
LABEL_63:

  v85 = *MEMORY[0x277D85DE8];
}

+ (void)makeSureToCreateBackUpOfHH2KeysIfNecessary:(id)a3
{
  v5 = a3;
  if (+[HMDAuditHH2KeysForBackupOperation shouldWeScheduleHH2KeyBackupOperation])
  {
    v3 = [HMDAuditHH2KeysForBackupOperation alloc];
    v4 = [(HMDBackgroundOperation *)v3 initWithUserData:MEMORY[0x277CBEC10]];
    [v5 addOperation:v4];
    [v5 evaluateOperations];
  }
}

+ (BOOL)checkAndRaiseFaultIfHH2KeyIsMissing
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = [a1 homeManager];
  v4 = [v3 bgOpsManager];
  v5 = [v4 getHH2ControllerKey];

  if (!v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = a1;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      v12 = 138543362;
      v13 = v9;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_ERROR, "%{public}@Missing HH2 Controller Key. Please Debug!!!", &v12, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
  }

  result = v5 == 0;
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

+ (BOOL)shouldWeAuditFromLastAudit:(id)a3
{
  v3 = MEMORY[0x277CBEAA8];
  v4 = a3;
  v5 = [v3 date];
  [v5 timeIntervalSinceDate:v4];
  v7 = v6;

  return v7 >= 604800.0;
}

+ (void)removeAllUsersFromAirPlayAccessory:(id)a3 withCompletionHandler:(id)a4
{
  v55 = *MEMORY[0x277D85DE8];
  v6 = a3;
  aBlock = a4;
  v7 = v6;
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

  v10 = [v9 home];
  v11 = v10;
  if (v9)
  {
    v12 = v10 == 0;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
    v13 = objc_autoreleasePoolPush();
    v14 = a1;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      v17 = [v9 shortDescription];
      *buf = 138543874;
      *&buf[4] = v16;
      *&buf[12] = 2112;
      *&buf[14] = v17;
      *&buf[22] = 2112;
      v52 = v11;
      _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_ERROR, "%{public}@Invalid instance of airplay accessory: %@ or Home: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v13);
    v18 = _Block_copy(aBlock);
    v20 = v18;
    if (v18)
    {
      (*(v18 + 2))(v18);
    }
  }

  else
  {
    v19 = [v10 users];
    v20 = [v19 na_filter:&__block_literal_global_68_250799];

    v21 = [v20 count];
    if (v21)
    {
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v52 = __Block_byref_object_copy__250801;
      v53 = __Block_byref_object_dispose__250802;
      v54 = 0;
      v50[0] = 0;
      v50[1] = v50;
      v50[2] = 0x2020000000;
      v50[3] = 0;
      v42[0] = MEMORY[0x277D85DD0];
      v42[1] = 3221225472;
      v42[2] = __96__HMDBackgroundOperationManagerHelper_removeAllUsersFromAirPlayAccessory_withCompletionHandler___block_invoke_69;
      v42[3] = &unk_278685490;
      v46 = v50;
      v47 = buf;
      v48 = a1;
      v49 = v21;
      v22 = v7;
      v43 = v22;
      v44 = v11;
      v45 = aBlock;
      v23 = _Block_copy(v42);
      v24 = [v20 sortedArrayUsingComparator:&__block_literal_global_74_250803];
      v25 = [v24 reverseObjectEnumerator];
      v26 = [v25 allObjects];

      v37[0] = MEMORY[0x277D85DD0];
      v37[1] = 3221225472;
      v37[2] = __96__HMDBackgroundOperationManagerHelper_removeAllUsersFromAirPlayAccessory_withCompletionHandler___block_invoke_70;
      v37[3] = &unk_278685508;
      v41 = a1;
      v38 = v22;
      v39 = v9;
      v27 = v23;
      v40 = v27;
      [v26 hmf_enumerateWithAutoreleasePoolUsingBlock:v37];

      _Block_object_dispose(v50, 8);
      _Block_object_dispose(buf, 8);
    }

    else
    {
      v28 = objc_autoreleasePoolPush();
      v29 = a1;
      v30 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        v31 = HMFGetLogIdentifier();
        v32 = [v9 shortDescription];
        *buf = 138543618;
        *&buf[4] = v31;
        *&buf[12] = 2112;
        *&buf[14] = v32;
        _os_log_impl(&dword_229538000, v30, OS_LOG_TYPE_INFO, "%{public}@No admin users exist on this home. Not scheduling any remove pairing operation for accessory: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v28);
      v33 = _Block_copy(aBlock);
      v34 = v33;
      if (v33)
      {
        (*(v33 + 2))(v33);
      }
    }
  }

  v35 = *MEMORY[0x277D85DE8];
}

void __96__HMDBackgroundOperationManagerHelper_removeAllUsersFromAirPlayAccessory_withCompletionHandler___block_invoke_69(uint64_t a1, void *a2)
{
  v45 = *MEMORY[0x277D85DE8];
  v4 = a2;
  ++*(*(*(a1 + 56) + 8) + 24);
  if (v4)
  {
    v5 = *(*(a1 + 64) + 8);
    v7 = *(v5 + 40);
    v6 = (v5 + 40);
    if (!v7)
    {
      objc_storeStrong(v6, a2);
    }
  }

  v8 = objc_autoreleasePoolPush();
  v9 = *(a1 + 72);
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(*(*(a1 + 56) + 8) + 24)];
    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a1 + 80)];
    v14 = [*(a1 + 32) shortDescription];
    v35 = 138544386;
    v36 = v11;
    v37 = 2112;
    v38 = v4;
    v39 = 2112;
    v40 = v12;
    v41 = 2112;
    v42 = v13;
    v43 = 2112;
    v44 = v14;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Removed accessory pairing finished with error: %@, pairingsRemoved: (%@/%@), accessory: %@", &v35, 0x34u);
  }

  objc_autoreleasePoolPop(v8);
  if (*(*(*(a1 + 56) + 8) + 24) == *(a1 + 80))
  {
    v15 = objc_autoreleasePoolPush();
    v16 = *(a1 + 72);
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(*(*(a1 + 56) + 8) + 24)];
      v20 = MEMORY[0x277CCABB0];
      v21 = [*(a1 + 40) users];
      v22 = [v20 numberWithUnsignedInteger:{objc_msgSend(v21, "count")}];
      v23 = [*(a1 + 32) shortDescription];
      v35 = 138544130;
      v36 = v18;
      v37 = 2112;
      v38 = v19;
      v39 = 2112;
      v40 = v22;
      v41 = 2112;
      v42 = v23;
      _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@Removed all pairings (%@/%@) from accessory %@", &v35, 0x2Au);
    }

    objc_autoreleasePoolPop(v15);
    v24 = _Block_copy(*(a1 + 48));
    v25 = v24;
    if (v24)
    {
      (*(v24 + 2))(v24);
    }

    if (*(*(*(a1 + 64) + 8) + 40))
    {
      v26 = objc_autoreleasePoolPush();
      v27 = *(a1 + 72);
      v28 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        v29 = HMFGetLogIdentifier();
        v30 = [*(a1 + 32) shortDescription];
        v31 = *(*(*(a1 + 64) + 8) + 40);
        v35 = 138543874;
        v36 = v29;
        v37 = 2112;
        v38 = v30;
        v39 = 2112;
        v40 = v31;
        _os_log_impl(&dword_229538000, v28, OS_LOG_TYPE_INFO, "%{public}@Since we could not remove all the pairings from the accessory: %@, let's schedule database audit on the database: %@", &v35, 0x20u);
      }

      objc_autoreleasePoolPop(v26);
      v32 = *(a1 + 72);
      v33 = [*(a1 + 40) homeManager];
      [v32 auditSharedUserEntriesInDatabase:v33];
    }
  }

  v34 = *MEMORY[0x277D85DE8];
}

void __96__HMDBackgroundOperationManagerHelper_removeAllUsersFromAirPlayAccessory_withCompletionHandler___block_invoke_70(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 56);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v8 = [*(a1 + 32) shortDescription];
    v9 = [v3 pairingIdentity];
    v10 = [v9 identifier];
    v12 = 138544130;
    v13 = v7;
    v14 = 2112;
    v15 = v8;
    v16 = 2112;
    v17 = v10;
    v18 = 2112;
    v19 = v3;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Going to perform remove pairing operation of accessory: %@ for user:  %@ / %@", &v12, 0x2Au);
  }

  objc_autoreleasePoolPop(v4);
  [*(a1 + 40) removeUser:v3 completionHandler:*(a1 + 48)];

  v11 = *MEMORY[0x277D85DE8];
}

+ (BOOL)didAuditTimeExpiredOnThisAirPlayAccessory:(id)a3
{
  v3 = a3;
  v4 = [v3 lastPairingAuditTime];

  if (v4)
  {
    v5 = [v3 lastPairingAuditTime];
    v6 = [HMDBackgroundOperationManagerHelper shouldWeAuditFromLastAudit:v5];
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

+ (void)removeAllUsersFromHAPAccessory:(id)a3 withCompletionHandler:(id)a4
{
  v64 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = v6;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  v11 = [v10 bridge];

  if (v11)
  {
    v12 = objc_autoreleasePoolPush();
    v13 = a1;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier();
      v16 = [v10 shortDescription];
      *buf = 138543618;
      *&buf[4] = v15;
      *&buf[12] = 2112;
      *&buf[14] = v16;
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, "%{public}@Not scheduling any remove pairing operation for accessory: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
    v17 = _Block_copy(v7);
    v18 = v17;
    if (v17)
    {
      (*(v17 + 2))(v17);
    }
  }

  else
  {
    v19 = [v10 home];
    v18 = v19;
    if (v10)
    {
      v20 = v19 == 0;
    }

    else
    {
      v20 = 1;
    }

    if (v20)
    {
      v21 = objc_autoreleasePoolPush();
      v22 = a1;
      v23 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v24 = HMFGetLogIdentifier();
        v25 = [v10 shortDescription];
        *buf = 138543874;
        *&buf[4] = v24;
        *&buf[12] = 2112;
        *&buf[14] = v25;
        *&buf[22] = 2112;
        v61 = v18;
        _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_ERROR, "%{public}@Invalid instance of accessory: %@ or Home: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v21);
      v26 = _Block_copy(v7);
      v28 = v26;
      if (v26)
      {
        (*(v26 + 2))(v26);
      }
    }

    else
    {
      v27 = [v19 users];
      v28 = [v27 na_filter:&__block_literal_global_61_250816];

      v29 = [v28 count];
      if (v29)
      {
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x3032000000;
        v61 = __Block_byref_object_copy__250801;
        v62 = __Block_byref_object_dispose__250802;
        v63 = 0;
        v59[0] = 0;
        v59[1] = v59;
        v59[2] = 0x2020000000;
        v59[3] = 0;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 3221225472;
        aBlock[2] = __92__HMDBackgroundOperationManagerHelper_removeAllUsersFromHAPAccessory_withCompletionHandler___block_invoke_62;
        aBlock[3] = &unk_278685490;
        v55 = v59;
        v56 = buf;
        v57 = a1;
        v58 = v29;
        v30 = v8;
        v52 = v30;
        v31 = v18;
        v53 = v31;
        v54 = v7;
        v42 = _Block_copy(aBlock);
        v32 = [v28 sortedArrayUsingComparator:&__block_literal_global_74_250803];
        v33 = [v32 reverseObjectEnumerator];
        contexta = [v33 allObjects];

        v45[0] = MEMORY[0x277D85DD0];
        v45[1] = 3221225472;
        v45[2] = __92__HMDBackgroundOperationManagerHelper_removeAllUsersFromHAPAccessory_withCompletionHandler___block_invoke_64;
        v45[3] = &unk_2786854E0;
        v50 = a1;
        v46 = v30;
        v47 = v10;
        v48 = v31;
        v34 = v42;
        v49 = v34;
        [contexta hmf_enumerateWithAutoreleasePoolUsingBlock:v45];

        _Block_object_dispose(v59, 8);
        _Block_object_dispose(buf, 8);
      }

      else
      {
        context = objc_autoreleasePoolPush();
        v35 = a1;
        v36 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
        {
          v37 = HMFGetLogIdentifier();
          v38 = [v10 shortDescription];
          *buf = 138543618;
          *&buf[4] = v37;
          *&buf[12] = 2112;
          *&buf[14] = v38;
          _os_log_impl(&dword_229538000, v36, OS_LOG_TYPE_INFO, "%{public}@No admin users exist on this home. Not scheduling any remove pairing operation for accessory: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(context);
        v39 = _Block_copy(v7);
        v40 = v39;
        if (v39)
        {
          (*(v39 + 2))(v39);
        }
      }
    }
  }

  v41 = *MEMORY[0x277D85DE8];
}

void __92__HMDBackgroundOperationManagerHelper_removeAllUsersFromHAPAccessory_withCompletionHandler___block_invoke_62(uint64_t a1, void *a2)
{
  v45 = *MEMORY[0x277D85DE8];
  v4 = a2;
  ++*(*(*(a1 + 56) + 8) + 24);
  if (v4)
  {
    v5 = *(*(a1 + 64) + 8);
    v7 = *(v5 + 40);
    v6 = (v5 + 40);
    if (!v7)
    {
      objc_storeStrong(v6, a2);
    }
  }

  v8 = objc_autoreleasePoolPush();
  v9 = *(a1 + 72);
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(*(*(a1 + 56) + 8) + 24)];
    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a1 + 80)];
    v14 = [*(a1 + 32) shortDescription];
    v35 = 138544386;
    v36 = v11;
    v37 = 2112;
    v38 = v4;
    v39 = 2112;
    v40 = v12;
    v41 = 2112;
    v42 = v13;
    v43 = 2112;
    v44 = v14;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Remove accessory pairing finished with error: %@, pairingsRemoved: (%@/%@), accessory: %@", &v35, 0x34u);
  }

  objc_autoreleasePoolPop(v8);
  if (*(*(*(a1 + 56) + 8) + 24) == *(a1 + 80))
  {
    v15 = objc_autoreleasePoolPush();
    v16 = *(a1 + 72);
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(*(*(a1 + 56) + 8) + 24)];
      v20 = MEMORY[0x277CCABB0];
      v21 = [*(a1 + 40) users];
      v22 = [v20 numberWithUnsignedInteger:{objc_msgSend(v21, "count")}];
      v23 = [*(a1 + 32) shortDescription];
      v35 = 138544130;
      v36 = v18;
      v37 = 2112;
      v38 = v19;
      v39 = 2112;
      v40 = v22;
      v41 = 2112;
      v42 = v23;
      _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@Removed all pairings (%@/%@) from accessory %@", &v35, 0x2Au);
    }

    objc_autoreleasePoolPop(v15);
    v24 = _Block_copy(*(a1 + 48));
    v25 = v24;
    if (v24)
    {
      (*(v24 + 2))(v24);
    }

    if (*(*(*(a1 + 64) + 8) + 40))
    {
      v26 = objc_autoreleasePoolPush();
      v27 = *(a1 + 72);
      v28 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        v29 = HMFGetLogIdentifier();
        v30 = [*(a1 + 32) shortDescription];
        v31 = *(*(*(a1 + 64) + 8) + 40);
        v35 = 138543874;
        v36 = v29;
        v37 = 2112;
        v38 = v30;
        v39 = 2112;
        v40 = v31;
        _os_log_impl(&dword_229538000, v28, OS_LOG_TYPE_INFO, "%{public}@Since we could not remove all the pairings from the accessory: %@, let's schedule database audit on the database: %@", &v35, 0x20u);
      }

      objc_autoreleasePoolPop(v26);
      v32 = *(a1 + 72);
      v33 = [*(a1 + 40) homeManager];
      [v32 auditSharedUserEntriesInDatabase:v33];
    }
  }

  v34 = *MEMORY[0x277D85DE8];
}

void __92__HMDBackgroundOperationManagerHelper_removeAllUsersFromHAPAccessory_withCompletionHandler___block_invoke_64(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 64);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v8 = [*(a1 + 32) shortDescription];
    v9 = [v3 pairingIdentity];
    v10 = [v9 identifier];
    *buf = 138544130;
    v22 = v7;
    v23 = 2112;
    v24 = v8;
    v25 = 2112;
    v26 = v10;
    v27 = 2112;
    v28 = v3;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Going to perform remove pairing operation of accessory: %@ for user:  %@ / %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v4);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __92__HMDBackgroundOperationManagerHelper_removeAllUsersFromHAPAccessory_withCompletionHandler___block_invoke_65;
  v15[3] = &unk_2786854B8;
  v20 = *(a1 + 64);
  v16 = v3;
  v11 = *(a1 + 40);
  v17 = *(a1 + 32);
  v18 = *(a1 + 48);
  v19 = *(a1 + 56);
  v12 = *(a1 + 56);
  v13 = v3;
  [v11 performOperation:6 linkType:0 operationBlock:v15 errorBlock:v12];

  v14 = *MEMORY[0x277D85DE8];
}

void __92__HMDBackgroundOperationManagerHelper_removeAllUsersFromHAPAccessory_withCompletionHandler___block_invoke_65(uint64_t a1, void *a2)
{
  v35 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 64);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v8 = [*(a1 + 32) pairingIdentity];
    v9 = [v8 identifier];
    v10 = *(a1 + 32);
    v11 = [*(a1 + 40) shortDescription];
    v27 = 138544130;
    v28 = v7;
    v29 = 2112;
    v30 = v9;
    v31 = 2112;
    v32 = v10;
    v33 = 2112;
    v34 = v11;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Going to remove pairing %@ for user : %@ from accessory: %@", &v27, 0x2Au);
  }

  objc_autoreleasePoolPop(v4);
  v12 = [v3 server];
  if ([*(a1 + 32) isCurrentUser])
  {
    v13 = objc_autoreleasePoolPush();
    v14 = *(a1 + 64);
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      v17 = [*(a1 + 32) pairingIdentity];
      v18 = [v17 identifier];
      v19 = [*(a1 + 40) shortDescription];
      v27 = 138543874;
      v28 = v16;
      v29 = 2112;
      v30 = v18;
      v31 = 2112;
      v32 = v19;
      _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@Going to remove pairing for current user: %@ from accessory: %@", &v27, 0x20u);
    }

    objc_autoreleasePoolPop(v13);
    v20 = [*(a1 + 48) workQueue];
    [v12 removePairingForCurrentControllerOnQueue:v20 completion:*(a1 + 56)];
  }

  else
  {
    v20 = [*(a1 + 32) pairingIdentity];
    v21 = [v20 identifier];
    v22 = [*(a1 + 32) pairingIdentity];
    v23 = [v22 publicKey];
    v24 = [v23 data];
    v25 = [*(a1 + 48) workQueue];
    [v12 removePairingIdentifier:v21 pairingPublicKey:v24 completionQueue:v25 completionHandler:*(a1 + 56)];
  }

  v26 = *MEMORY[0x277D85DE8];
}

+ (void)removeAllUsersFromMatterAccessory:(id)a3 withCompletionHandler:(id)a4
{
  v63 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 home];
  v9 = [v8 featuresDataSource];
  v10 = [v9 isRVCEnabled];

  if (v10)
  {
    v11 = v6;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (v8 && v11 && (isKindOfClass & 1) != 0)
    {
      v47 = [v11 accessoryServer];
      if (v47)
      {
        v13 = [v8 users];
        v14 = [v13 na_filter:&__block_literal_global_250829];

        if ([v14 count])
        {
          *buf = 0;
          *&buf[8] = buf;
          *&buf[16] = 0x2020000000;
          LOBYTE(v62) = 0;
          v15 = dispatch_group_create();
          v16 = [v14 sortedArrayUsingComparator:&__block_literal_global_74_250803];
          v17 = [v16 reverseObjectEnumerator];
          v46 = [v17 allObjects];

          v54[0] = MEMORY[0x277D85DD0];
          v54[1] = 3221225472;
          v54[2] = __95__HMDBackgroundOperationManagerHelper_removeAllUsersFromMatterAccessory_withCompletionHandler___block_invoke_54;
          v54[3] = &unk_278685440;
          v18 = v15;
          v55 = v18;
          v60 = a1;
          v19 = v11;
          v56 = v19;
          v57 = v47;
          v20 = v8;
          v58 = v20;
          v59 = buf;
          [v46 hmf_enumerateWithAutoreleasePoolUsingBlock:v54];
          v21 = [v20 workQueue];
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __95__HMDBackgroundOperationManagerHelper_removeAllUsersFromMatterAccessory_withCompletionHandler___block_invoke_59;
          block[3] = &unk_278685468;
          v52 = buf;
          v53 = a1;
          v49 = v19;
          v50 = v20;
          v51 = v7;
          dispatch_group_notify(v18, v21, block);

          _Block_object_dispose(buf, 8);
        }

        else
        {
          v38 = objc_autoreleasePoolPush();
          v39 = a1;
          v40 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
          {
            v41 = HMFGetLogIdentifier();
            v42 = [v11 shortDescription];
            *buf = 138543618;
            *&buf[4] = v41;
            *&buf[12] = 2112;
            *&buf[14] = v42;
            _os_log_impl(&dword_229538000, v40, OS_LOG_TYPE_INFO, "%{public}@No admin users exist on this home. Not scheduling any remove pairing operation for accessory: %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v38);
          v43 = _Block_copy(v7);
          v44 = v43;
          if (v43)
          {
            (*(v43 + 2))(v43);
          }
        }
      }

      else
      {
        v31 = objc_autoreleasePoolPush();
        v32 = a1;
        v33 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
        {
          v34 = HMFGetLogIdentifier();
          v35 = [v11 shortDescription];
          *buf = 138543618;
          *&buf[4] = v34;
          *&buf[12] = 2112;
          *&buf[14] = v35;
          _os_log_impl(&dword_229538000, v33, OS_LOG_TYPE_INFO, "%{public}@No accessory server found for accessory: %@. Scheduling database audit", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v31);
        v36 = [v8 homeManager];
        [v32 auditSharedUserEntriesInDatabase:v36];

        v37 = _Block_copy(v7);
        v14 = v37;
        if (v37)
        {
          (*(v37 + 2))(v37);
        }
      }
    }

    else
    {
      v24 = objc_autoreleasePoolPush();
      v25 = a1;
      v26 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v27 = HMFGetLogIdentifier();
        v28 = [v11 shortDescription];
        *buf = 138543874;
        *&buf[4] = v27;
        *&buf[12] = 2112;
        *&buf[14] = v28;
        *&buf[22] = 2112;
        v62 = v8;
        _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_ERROR, "%{public}@Invalid instance of accessory: %@ or Home: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v24);
      v29 = _Block_copy(v7);
      v30 = v29;
      if (v29)
      {
        (*(v29 + 2))(v29);
      }
    }
  }

  else
  {
    v22 = _Block_copy(v7);
    v23 = v22;
    if (v22)
    {
      (*(v22 + 2))(v22);
    }
  }

  v45 = *MEMORY[0x277D85DE8];
}

void __95__HMDBackgroundOperationManagerHelper_removeAllUsersFromMatterAccessory_withCompletionHandler___block_invoke_54(uint64_t a1, void *a2)
{
  v39 = *MEMORY[0x277D85DE8];
  v3 = a2;
  dispatch_group_enter(*(a1 + 32));
  if ([v3 isCurrentUser])
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 72);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      v8 = [v3 pairingIdentity];
      v9 = [v8 identifier];
      v10 = [*(a1 + 40) shortDescription];
      *buf = 138543874;
      v34 = v7;
      v35 = 2112;
      v36 = v9;
      v37 = 2112;
      v38 = v10;
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Going to remove pairing for current user: %@ from accessory: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v4);
    v11 = *(a1 + 48);
    v12 = [*(a1 + 56) workQueue];
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __95__HMDBackgroundOperationManagerHelper_removeAllUsersFromMatterAccessory_withCompletionHandler___block_invoke_55;
    v29[3] = &unk_278685418;
    v32[2] = *(a1 + 72);
    v13 = &v30;
    v14 = &v31;
    v30 = *(a1 + 40);
    v31 = v3;
    v32[1] = *(a1 + 64);
    v15 = v32;
    v32[0] = *(a1 + 32);
    v16 = v3;
    [v11 removePairingForCurrentControllerOnQueue:v12 completion:v29];
  }

  else
  {
    v24 = *(a1 + 48);
    v12 = [v3 pairingIdentity];
    v23 = [v12 identifier];
    v17 = [v3 pairingIdentity];
    v18 = [v17 publicKey];
    v19 = [v18 data];
    v20 = [*(a1 + 56) workQueue];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __95__HMDBackgroundOperationManagerHelper_removeAllUsersFromMatterAccessory_withCompletionHandler___block_invoke_57;
    v25[3] = &unk_278685418;
    v28[2] = *(a1 + 72);
    v13 = &v26;
    v14 = &v27;
    v26 = *(a1 + 40);
    v27 = v3;
    v28[1] = *(a1 + 64);
    v15 = v28;
    v28[0] = *(a1 + 32);
    v21 = v3;
    [v24 removePairingIdentifier:v23 pairingPublicKey:v19 completionQueue:v20 completionHandler:v25];
  }

  v22 = *MEMORY[0x277D85DE8];
}

void __95__HMDBackgroundOperationManagerHelper_removeAllUsersFromMatterAccessory_withCompletionHandler___block_invoke_59(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  if (*(*(*(a1 + 56) + 8) + 24) == 1)
  {
    v2 = objc_autoreleasePoolPush();
    v3 = *(a1 + 64);
    v4 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = HMFGetLogIdentifier();
      v6 = [*(a1 + 32) shortDescription];
      v12 = 138543618;
      v13 = v5;
      v14 = 2112;
      v15 = v6;
      _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Since we could not remove all the pairings from the accessory: %@, let's schedule database audit on the database", &v12, 0x16u);
    }

    objc_autoreleasePoolPop(v2);
    v7 = *(a1 + 64);
    v8 = [*(a1 + 40) homeManager];
    [v7 auditSharedUserEntriesInDatabase:v8];
  }

  v9 = _Block_copy(*(a1 + 48));
  v10 = v9;
  if (v9)
  {
    (*(v9 + 2))(v9);
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __95__HMDBackgroundOperationManagerHelper_removeAllUsersFromMatterAccessory_withCompletionHandler___block_invoke_55(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 64);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = HMFGetLogIdentifier();
      v8 = [*(a1 + 32) shortDescription];
      v9 = [*(a1 + 40) shortDescription];
      v11 = 138544130;
      v12 = v7;
      v13 = 2112;
      v14 = v8;
      v15 = 2112;
      v16 = v9;
      v17 = 2112;
      v18 = v3;
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_ERROR, "%{public}@Failed to remove pairing from accessory: %@ for user %@ with error: %@", &v11, 0x2Au);
    }

    objc_autoreleasePoolPop(v4);
    *(*(*(a1 + 56) + 8) + 24) = 1;
  }

  dispatch_group_leave(*(a1 + 48));

  v10 = *MEMORY[0x277D85DE8];
}

void __95__HMDBackgroundOperationManagerHelper_removeAllUsersFromMatterAccessory_withCompletionHandler___block_invoke_57(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 64);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = HMFGetLogIdentifier();
      v8 = [*(a1 + 32) shortDescription];
      v9 = [*(a1 + 40) shortDescription];
      v11 = 138544130;
      v12 = v7;
      v13 = 2112;
      v14 = v8;
      v15 = 2112;
      v16 = v9;
      v17 = 2112;
      v18 = v3;
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_ERROR, "%{public}@Failed to remove pairing from accessory: %@ for user %@ with error: %@", &v11, 0x2Au);
    }

    objc_autoreleasePoolPop(v4);
    *(*(*(a1 + 56) + 8) + 24) = 1;
  }

  dispatch_group_leave(*(a1 + 48));

  v10 = *MEMORY[0x277D85DE8];
}

+ (void)removeAllUsersFromAccessory:(id)a3 withCompletionHandler:(id)a4
{
  v40 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v6;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  v10 = v6;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  v13 = v10;
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

  if (v15)
  {
    [HMDBackgroundOperationManagerHelper removeAllUsersFromMatterAccessory:v15 withCompletionHandler:v7];
  }

  else if (v9)
  {
    if ([v9 supportsAccessCode] & 1) != 0 || (objc_msgSend(v9, "supportsWalletKey"))
    {
      v16 = [v9 home];
      v30 = dispatch_get_global_queue(25, 0);
      v29 = [objc_alloc(MEMORY[0x277D0F7A8]) initWithQueue:v30];
      v17 = objc_autoreleasePoolPush();
      v18 = a1;
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        v20 = HMFGetLogIdentifier();
        [v13 uuid];
        v21 = v28 = v16;
        *buf = 138543618;
        v37 = v20;
        v38 = 2112;
        v39 = v21;
        _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_INFO, "%{public}@Removing Matter users from accessory: %@", buf, 0x16u);

        v16 = v28;
      }

      objc_autoreleasePoolPop(v17);
      v22 = [v16 removeUsersFromAccessory:v9];
      v23 = [v22 ignoreOutcome];
      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 3221225472;
      v31[2] = __89__HMDBackgroundOperationManagerHelper_removeAllUsersFromAccessory_withCompletionHandler___block_invoke;
      v31[3] = &unk_2786853D0;
      v35 = v18;
      v32 = v13;
      v33 = v9;
      v34 = v7;
      v24 = [v23 inContext:v29 then:v31];
    }

    else
    {
      [HMDBackgroundOperationManagerHelper removeAllUsersFromHAPAccessory:v9 withCompletionHandler:v7];
    }
  }

  else if (v12)
  {
    [HMDBackgroundOperationManagerHelper removeAllUsersFromAirPlayAccessory:v12 withCompletionHandler:v7];
  }

  else
  {
    v25 = _Block_copy(v7);
    v26 = v25;
    if (v25)
    {
      (*(v25 + 2))(v25);
    }
  }

  v27 = *MEMORY[0x277D85DE8];
}

uint64_t __89__HMDBackgroundOperationManagerHelper_removeAllUsersFromAccessory_withCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 56);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v8 = [*(a1 + 32) uuid];
    v11 = 138543618;
    v12 = v7;
    v13 = 2112;
    v14 = v8;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Finished removing Matter users from accessory: %@", &v11, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  [HMDBackgroundOperationManagerHelper removeAllUsersFromHAPAccessory:*(a1 + 40) withCompletionHandler:*(a1 + 48)];

  v9 = *MEMORY[0x277D85DE8];
  return 1;
}

+ (BOOL)didAuditTimeExpiredOnThisAccessory:(id)a3
{
  v3 = a3;
  v4 = [v3 lastPairingAuditTime];

  if (v4)
  {
    v5 = [v3 lastPairingAuditTime];
    v6 = [HMDBackgroundOperationManagerHelper shouldWeAuditFromLastAudit:v5];
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

+ (void)_scheduleRemovePairingForAccessory:(id)a3 usingPairingIdentity:(id)a4
{
  v41 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 castIfHAPAccessory];
  v9 = v8;
  if (v8 && isBridgedAccessory(v8))
  {
    v10 = objc_autoreleasePoolPush();
    v11 = a1;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      v14 = [v9 uniqueIdentifier];
      v33 = 138543618;
      v34 = v13;
      v35 = 2112;
      v36 = v14;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@(c) Not scheduling remove pairing operation for accessory: %@", &v33, 0x16u);
LABEL_11:

      goto LABEL_12;
    }

    goto LABEL_12;
  }

  v15 = [v6 identifier];

  if (v15)
  {
    v16 = [HMDRemoveAccessoryPairingSharedUserOperation alloc];
    v17 = [v6 modelID];
    v18 = [v6 identifier];
    v19 = [v6 home];
    v20 = [v19 modelID];
    v21 = [(HMDRemoveAccessoryPairingSharedUserOperation *)v16 initWithAccessoryUUID:v17 accessoryIdentifier:v18 isOwnerIdentity:0 forSharedUser:0 sharedUserPairingIdentity:v7 homeUUIDWhereAccessoryWasPaired:v20];

    if (v21)
    {
      v22 = [a1 homeManager];
      v23 = [v22 bgOpsManager];
      [v23 addOperation:v21];

      v24 = objc_autoreleasePoolPush();
      v25 = a1;
      v26 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        v27 = HMFGetLogIdentifier();
        v33 = 138543618;
        v34 = v27;
        v35 = 2112;
        v36 = v21;
        _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_INFO, "%{public}@(c) Scheduled remove pairing operation for pairing identity : %@", &v33, 0x16u);
LABEL_15:
      }
    }

    else
    {
      v24 = objc_autoreleasePoolPush();
      v29 = a1;
      v26 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v27 = HMFGetLogIdentifier();
        v30 = [v6 modelID];
        v31 = [v6 identifier];
        v33 = 138544130;
        v34 = v27;
        v35 = 2112;
        v36 = v7;
        v37 = 2112;
        v38 = v30;
        v39 = 2112;
        v40 = v31;
        _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_ERROR, "%{public}@(c) Failed to create remove pairing operation for pairing identity : %@, %@/%@", &v33, 0x2Au);

        goto LABEL_15;
      }
    }

    objc_autoreleasePoolPop(v24);
    goto LABEL_17;
  }

  v10 = objc_autoreleasePoolPush();
  v11 = a1;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    v13 = HMFGetLogIdentifier();
    v14 = [v6 modelID];
    v28 = [v6 identifier];
    v33 = 138543874;
    v34 = v13;
    v35 = 2112;
    v36 = v14;
    v37 = 2112;
    v38 = v28;
    _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@(c) Cannot remove pairing for mkfAccessory without critical data, modelID: %@ ... identifier: %@", &v33, 0x20u);

    goto LABEL_11;
  }

LABEL_12:

  objc_autoreleasePoolPop(v10);
LABEL_17:

  v32 = *MEMORY[0x277D85DE8];
}

+ (void)scheduleRemovePairingForAccessory:(id)a3 sharedUser:(id)a4
{
  v46 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 castIfHAPAccessory];
  v9 = v8;
  if (v8 && isBridgedAccessory(v8))
  {
    v10 = objc_autoreleasePoolPush();
    v11 = a1;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      v14 = [v9 uniqueIdentifier];
      *buf = 138543874;
      v41 = v13;
      v42 = 2112;
      v43 = v14;
      v44 = 2112;
      v45 = v7;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@(b) Not scheduling remove pairing operation for accessory: %@ and shared user: %@", buf, 0x20u);
LABEL_12:

LABEL_15:
      goto LABEL_16;
    }

    goto LABEL_16;
  }

  v15 = [v6 identifier];

  if (v15)
  {
    if (([(HMDRemoveAccessoryPairingSharedUserOperation *)v7 isAllowedToAddOrRemoveHAPPairingsOnAccessory]& 1) == 0)
    {
      v10 = objc_autoreleasePoolPush();
      v11 = a1;
      v12 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = HMFGetLogIdentifier();
        *buf = 138543618;
        v41 = v13;
        v42 = 2112;
        v43 = v7;
        _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@(b) Cannot remove pairing for user as not allowed by policy: %@", buf, 0x16u);
        goto LABEL_15;
      }

      goto LABEL_16;
    }

    v38 = v9;
    v16 = [HMDRemoveAccessoryPairingSharedUserOperation alloc];
    v17 = [v6 modelID];
    v18 = [v6 identifier];
    v19 = [(HMDRemoveAccessoryPairingSharedUserOperation *)v7 isOwner];
    v20 = [(HMDRemoveAccessoryPairingSharedUserOperation *)v7 uuid];
    v39 = v7;
    v21 = [(HMDRemoveAccessoryPairingSharedUserOperation *)v7 pairingIdentity];
    v22 = [v6 home];
    v23 = [v22 modelID];
    v24 = [(HMDRemoveAccessoryPairingSharedUserOperation *)v16 initWithAccessoryUUID:v17 accessoryIdentifier:v18 isOwnerIdentity:v19 forSharedUser:v20 sharedUserPairingIdentity:v21 homeUUIDWhereAccessoryWasPaired:v23];

    if (v24)
    {
      v25 = [a1 homeManager];
      v26 = [v25 bgOpsManager];
      [v26 addOperation:v24];

      v27 = objc_autoreleasePoolPush();
      v28 = a1;
      v29 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        v30 = HMFGetLogIdentifier();
        *buf = 138543874;
        v41 = v30;
        v42 = 2112;
        v7 = v39;
        v43 = v39;
        v44 = 2112;
        v45 = v24;
        v31 = "%{public}@(b) Scheduled remove pairing operation for shared user : %@, %@";
        v32 = v29;
        v33 = OS_LOG_TYPE_INFO;
        v34 = 32;
LABEL_19:
        _os_log_impl(&dword_229538000, v32, v33, v31, buf, v34);

LABEL_21:
        v9 = v38;

        objc_autoreleasePoolPop(v27);
        goto LABEL_22;
      }
    }

    else
    {
      v27 = objc_autoreleasePoolPush();
      v36 = a1;
      v29 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        v30 = HMFGetLogIdentifier();
        *buf = 138543618;
        v41 = v30;
        v42 = 2112;
        v7 = v39;
        v43 = v39;
        v31 = "%{public}@(b) Failed to create remove pairing operation for shared user : %@";
        v32 = v29;
        v33 = OS_LOG_TYPE_ERROR;
        v34 = 22;
        goto LABEL_19;
      }
    }

    v7 = v39;
    goto LABEL_21;
  }

  v10 = objc_autoreleasePoolPush();
  v11 = a1;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    v13 = HMFGetLogIdentifier();
    v14 = [v6 modelID];
    v35 = [v6 identifier];
    *buf = 138543874;
    v41 = v13;
    v42 = 2112;
    v43 = v14;
    v44 = 2112;
    v45 = v35;
    _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@(b) Cannot remove pairing for mkfAccessory without critical data, modelID: %@ ... identifier: %@", buf, 0x20u);

    goto LABEL_12;
  }

LABEL_16:

  objc_autoreleasePoolPop(v10);
LABEL_22:

  v37 = *MEMORY[0x277D85DE8];
}

+ (void)scheduleRemovePairingForAccessory:(id)a3 forSharedUser:(id)a4
{
  v49 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 castIfHAPAccessory];
  v9 = v8;
  if (!v8 || !isBridgedAccessory(v8))
  {
    v15 = [v6 identifier];

    if (v15)
    {
      if ([HMDUser isAllowedToAddOrRemoveHAPPairingsOnAccessoryFor:v7])
      {
        v39 = v9;
        v16 = [(HMDRemoveAccessoryPairingSharedUserOperation *)v7 pairingIdentity];
        v17 = [HMDRemoveAccessoryPairingSharedUserOperation alloc];
        v18 = [v6 modelID];
        v19 = [v6 identifier];
        v20 = [(HMDRemoveAccessoryPairingSharedUserOperation *)v7 isOwner];
        v40 = v7;
        v21 = [(HMDRemoveAccessoryPairingSharedUserOperation *)v7 modelID];
        v22 = [v6 home];
        v23 = [v22 modelID];
        v24 = [(HMDRemoveAccessoryPairingSharedUserOperation *)v17 initWithAccessoryUUID:v18 accessoryIdentifier:v19 isOwnerIdentity:v20 forSharedUser:v21 sharedUserPairingIdentity:v16 homeUUIDWhereAccessoryWasPaired:v23];

        if (v24)
        {
          v25 = [a1 homeManager];
          v26 = [v25 bgOpsManager];
          [v26 addOperation:v24];

          v27 = objc_autoreleasePoolPush();
          v28 = a1;
          v29 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
          {
            v30 = HMFGetLogIdentifier();
            *buf = 138543874;
            v42 = v30;
            v43 = 2112;
            v7 = v40;
            v44 = v40;
            v45 = 2112;
            v46 = v24;
            _os_log_impl(&dword_229538000, v29, OS_LOG_TYPE_INFO, "%{public}@(a) Scheduled remove pairing operation for shared user : %@, %@", buf, 0x20u);
LABEL_19:

LABEL_21:
            v9 = v39;

            objc_autoreleasePoolPop(v27);
            goto LABEL_22;
          }
        }

        else
        {
          v27 = objc_autoreleasePoolPush();
          v35 = a1;
          v29 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            v30 = HMFGetLogIdentifier();
            v36 = [v6 modelID];
            v37 = [v6 identifier];
            *buf = 138544130;
            v42 = v30;
            v43 = 2112;
            v7 = v40;
            v44 = v40;
            v45 = 2112;
            v46 = v36;
            v47 = 2112;
            v48 = v37;
            _os_log_impl(&dword_229538000, v29, OS_LOG_TYPE_ERROR, "%{public}@(a) Failed to create remove pairing operation for shared user : %@, %@/%@", buf, 0x2Au);

            goto LABEL_19;
          }
        }

        v7 = v40;
        goto LABEL_21;
      }

      v10 = objc_autoreleasePoolPush();
      v11 = a1;
      v12 = HMFGetOSLogHandle();
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        goto LABEL_16;
      }

      v13 = HMFGetLogIdentifier();
      v14 = [v6 debugDescription];
      v31 = [(HMFObject *)v7 debugDescription];
      *buf = 138543874;
      v42 = v13;
      v43 = 2112;
      v44 = v14;
      v45 = 2112;
      v46 = v31;
      v32 = "%{public}@(a) Not allowed to remove pairing for mkfAccessory: %@, shared user: %@";
      v33 = v12;
      v34 = OS_LOG_TYPE_INFO;
    }

    else
    {
      v10 = objc_autoreleasePoolPush();
      v11 = a1;
      v12 = HMFGetOSLogHandle();
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_16;
      }

      v13 = HMFGetLogIdentifier();
      v14 = [v6 modelID];
      v31 = [v6 identifier];
      *buf = 138543874;
      v42 = v13;
      v43 = 2112;
      v44 = v14;
      v45 = 2112;
      v46 = v31;
      v32 = "%{public}@(a) Cannot remove pairing for mkfAccessory without critical data, modelID: %@ ... identifier: %@";
      v33 = v12;
      v34 = OS_LOG_TYPE_ERROR;
    }

    _os_log_impl(&dword_229538000, v33, v34, v32, buf, 0x20u);

    goto LABEL_15;
  }

  v10 = objc_autoreleasePoolPush();
  v11 = a1;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = HMFGetLogIdentifier();
    v14 = [v9 uniqueIdentifier];
    *buf = 138543874;
    v42 = v13;
    v43 = 2112;
    v44 = v14;
    v45 = 2112;
    v46 = v7;
    _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@(a) Not scheduling remove pairing operation for accessory: %@ and shared user: %@", buf, 0x20u);
LABEL_15:
  }

LABEL_16:

  objc_autoreleasePoolPop(v10);
LABEL_22:

  v38 = *MEMORY[0x277D85DE8];
}

+ (void)scheduleAddPairingForAccessory:(id)a3 sharedUser:(id)a4
{
  v55 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = v6;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  if (!v10 || ([v10 bridge], v11 = objc_claimAutoreleasedReturnValue(), v11, !v11))
  {
    if (([v7 isOwner] & 1) != 0 || objc_msgSend(v7, "isPending"))
    {
      v12 = objc_autoreleasePoolPush();
      v13 = a1;
      v14 = HMFGetOSLogHandle();
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_14;
      }

      v15 = HMFGetLogIdentifier();
      *buf = 138543618;
      v46 = v15;
      v47 = 2112;
      v48 = v7;
      v18 = "%{public}@(b) Failed to create add pairing operation for user: %@";
      v19 = v14;
      v20 = OS_LOG_TYPE_ERROR;
LABEL_12:
      _os_log_impl(&dword_229538000, v19, v20, v18, buf, 0x16u);
      goto LABEL_13;
    }

    if (([v7 isAllowedToAddOrRemoveHAPPairingsOnAccessory] & 1) == 0)
    {
      v12 = objc_autoreleasePoolPush();
      v13 = a1;
      v14 = HMFGetOSLogHandle();
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        goto LABEL_14;
      }

      v15 = HMFGetLogIdentifier();
      *buf = 138543618;
      v46 = v15;
      v47 = 2112;
      v48 = v7;
      v18 = "%{public}@(b) Not allowed to add pairing for this user : %@";
      v19 = v14;
      v20 = OS_LOG_TYPE_INFO;
      goto LABEL_12;
    }

    v44 = [HMDAddAccessoryPairingSharedUserOperation alloc];
    v43 = [v8 uuid];
    v22 = [v8 identifier];
    v23 = [v7 uuid];
    v24 = [v7 pairingIdentity];
    v42 = [v7 isAdministrator];
    v25 = [v7 home];
    v26 = [v25 uuid];
    v27 = v23;
    v28 = [(HMDAddAccessoryPairingSharedUserOperation *)v44 initWithAccessoryUUID:v43 accessoryIdentifier:v22 forSharedUser:v23 sharedUserPairingIdentity:v24 asOwner:0 asSharedAdmin:v42 homeUUIDWhereAccessoryWasPaired:v26];

    if (v28)
    {
      v29 = [a1 homeManager];
      v30 = [v29 bgOpsManager];
      [v30 addOperation:v28];

      v31 = objc_autoreleasePoolPush();
      v32 = a1;
      v33 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
      {
        v34 = HMFGetLogIdentifier();
        [v7 isAdministrator];
        v35 = HMFBooleanToString();
        v36 = [v8 shortDescription];
        *buf = 138544386;
        v46 = v34;
        v47 = 2112;
        v48 = v7;
        v49 = 2112;
        v50 = v28;
        v51 = 2112;
        v52 = v35;
        v53 = 2112;
        v54 = v36;
        v37 = "%{public}@(b) Scheduled add pairing operation for shared user : %@, %@, asSharedAdmin: %@, accessory: %@";
        v38 = v33;
        v39 = OS_LOG_TYPE_INFO;
        v40 = 52;
LABEL_24:
        _os_log_impl(&dword_229538000, v38, v39, v37, buf, v40);
      }
    }

    else
    {
      v31 = objc_autoreleasePoolPush();
      v41 = a1;
      v33 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        v34 = HMFGetLogIdentifier();
        [v7 isAdministrator];
        v35 = HMFBooleanToString();
        v36 = [v8 shortDescription];
        *buf = 138544130;
        v46 = v34;
        v47 = 2112;
        v48 = v7;
        v49 = 2112;
        v50 = v35;
        v51 = 2112;
        v52 = v36;
        v37 = "%{public}@(b) Failed to create add pairing operation for shared user : %@, asSharedAdmin: %@, accessory: %@";
        v38 = v33;
        v39 = OS_LOG_TYPE_ERROR;
        v40 = 42;
        goto LABEL_24;
      }
    }

    objc_autoreleasePoolPop(v31);
    goto LABEL_15;
  }

  v12 = objc_autoreleasePoolPush();
  v13 = a1;
  v14 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = HMFGetLogIdentifier();
    [v7 isAdministrator];
    v16 = HMFBooleanToString();
    v17 = [v10 shortDescription];
    *buf = 138544130;
    v46 = v15;
    v47 = 2112;
    v48 = v7;
    v49 = 2112;
    v50 = v16;
    v51 = 2112;
    v52 = v17;
    _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, "%{public}@(b) Not scheduling add pairing operation for shared user: %@, asSharedAdmin: %@, accessory: %@", buf, 0x2Au);

LABEL_13:
  }

LABEL_14:

  objc_autoreleasePoolPop(v12);
LABEL_15:

  v21 = *MEMORY[0x277D85DE8];
}

+ (void)scheduleAddPairingForAccessory:(id)a3 forSharedUser:(id)a4
{
  v62 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 castIfHAPAccessory];
  v9 = v8;
  if (v8 && isBridgedAccessory(v8))
  {
    v10 = objc_autoreleasePoolPush();
    v11 = a1;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      v14 = [v9 uniqueIdentifier];
      *buf = 138543874;
      v55 = v13;
      v56 = 2112;
      v57 = v14;
      v58 = 2112;
      v59 = v7;
      v15 = "%{public}@(a) Not scheduling add pairing operation for accessory: %@ and user: %@";
LABEL_17:
      v41 = v12;
      v42 = OS_LOG_TYPE_ERROR;
      v43 = 32;
LABEL_18:
      _os_log_impl(&dword_229538000, v41, v42, v15, buf, v43);
LABEL_19:

      goto LABEL_20;
    }

    goto LABEL_20;
  }

  v16 = [(HMDAddAccessoryPairingSharedUserOperation *)v7 privilege];
  v17 = [v16 unsignedIntegerValue];

  v18 = [(HMDAddAccessoryPairingSharedUserOperation *)v7 privilege];
  if (!v18 || v17 == 2)
  {
  }

  else
  {

    if (v17 != 3)
    {
      v19 = [v6 identifier];

      if (!v19)
      {
        v10 = objc_autoreleasePoolPush();
        v11 = a1;
        v12 = HMFGetOSLogHandle();
        if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_20;
        }

        v13 = HMFGetLogIdentifier();
        v14 = [v6 modelID];
        v45 = [v6 identifier];
        *buf = 138543874;
        v55 = v13;
        v56 = 2112;
        v57 = v14;
        v58 = 2112;
        v59 = v45;
        _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@(a) Cannot add pairing for mkfAccessory without critical data, modelID: %@ ... identifier: %@", buf, 0x20u);

        goto LABEL_19;
      }

      if (![HMDUser isAllowedToAddOrRemoveHAPPairingsOnAccessoryFor:v7])
      {
        v10 = objc_autoreleasePoolPush();
        v11 = a1;
        v12 = HMFGetOSLogHandle();
        if (!os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          goto LABEL_20;
        }

        v13 = HMFGetLogIdentifier();
        v14 = [(HMDAddAccessoryPairingSharedUserOperation *)v7 modelID];
        *buf = 138543618;
        v55 = v13;
        v56 = 2112;
        v57 = v14;
        v15 = "%{public}@(a) Cannot create add pairing operation for user:%@ as not allowed by policy";
        v41 = v12;
        v42 = OS_LOG_TYPE_INFO;
        v43 = 22;
        goto LABEL_18;
      }

      v20 = [(HMDAddAccessoryPairingSharedUserOperation *)v7 pairingIdentity];
      if (!v20)
      {
        v46 = objc_autoreleasePoolPush();
        v47 = a1;
        v48 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v48, OS_LOG_TYPE_FAULT))
        {
          v49 = HMFGetLogIdentifier();
          *buf = 138543618;
          v55 = v49;
          v56 = 2114;
          v57 = v7;
          _os_log_impl(&dword_229538000, v48, OS_LOG_TYPE_FAULT, "%{public}@(a) Cannot create add pairing operation for user %{public}@ with no pairingIdentity", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v46);
        goto LABEL_33;
      }

      v52 = [HMDAddAccessoryPairingSharedUserOperation alloc];
      v21 = [v6 modelID];
      v22 = [v6 identifier];
      v23 = [(HMDAddAccessoryPairingSharedUserOperation *)v7 modelID];
      v24 = [v6 home];
      v25 = [v24 modelID];
      v26 = v20;
      v27 = v25;
      v51 = v25;
      v28 = v52;
      v53 = v26;
      v29 = [HMDAddAccessoryPairingSharedUserOperation initWithAccessoryUUID:v28 accessoryIdentifier:"initWithAccessoryUUID:accessoryIdentifier:forSharedUser:sharedUserPairingIdentity:asOwner:asSharedAdmin:homeUUIDWhereAccessoryWasPaired:" forSharedUser:v21 sharedUserPairingIdentity:v22 asOwner:v23 asSharedAdmin:v51 homeUUIDWhereAccessoryWasPaired:?];

      if (v29)
      {
        v30 = [a1 homeManager];
        v31 = [v30 bgOpsManager];
        [v31 addOperation:v29];

        v32 = objc_autoreleasePoolPush();
        v33 = a1;
        v34 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
        {
          v35 = HMFGetLogIdentifier();
          v36 = HMFBooleanToString();
          *buf = 138544130;
          v55 = v35;
          v56 = 2112;
          v57 = v7;
          v58 = 2112;
          v59 = v29;
          v60 = 2112;
          v61 = v36;
          v37 = "%{public}@(a) Scheduled add pairing operation for shared user : %@, %@, asSharedAdmin: %@";
          v38 = v34;
          v39 = OS_LOG_TYPE_INFO;
          v40 = 42;
LABEL_31:
          _os_log_impl(&dword_229538000, v38, v39, v37, buf, v40);
        }
      }

      else
      {
        v32 = objc_autoreleasePoolPush();
        v50 = a1;
        v34 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          v35 = HMFGetLogIdentifier();
          v36 = HMFBooleanToString();
          *buf = 138543874;
          v55 = v35;
          v56 = 2112;
          v57 = v7;
          v58 = 2112;
          v59 = v36;
          v37 = "%{public}@(a) Failed to create add pairing operation for shared user : %@, asSharedAdmin: %@";
          v38 = v34;
          v39 = OS_LOG_TYPE_ERROR;
          v40 = 32;
          goto LABEL_31;
        }
      }

      v20 = v53;

      objc_autoreleasePoolPop(v32);
LABEL_33:

      goto LABEL_21;
    }
  }

  v10 = objc_autoreleasePoolPush();
  v11 = a1;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    v13 = HMFGetLogIdentifier();
    v14 = [(HMDAddAccessoryPairingSharedUserOperation *)v7 privilege];
    *buf = 138543874;
    v55 = v13;
    v56 = 2112;
    v57 = v7;
    v58 = 2112;
    v59 = v14;
    v15 = "%{public}@(a) Cannot create add pairing operation for user: %@ with privilege: %@";
    goto LABEL_17;
  }

LABEL_20:

  objc_autoreleasePoolPop(v10);
LABEL_21:

  v44 = *MEMORY[0x277D85DE8];
}

+ (void)scheduleFullAuditForAccessory:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([a1 checkAndRaiseFaultIfHH2KeyIsMissing])
  {
    v5 = objc_autoreleasePoolPush();
    v6 = a1;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      v9 = [v4 modelID];
      v26 = 138543618;
      v27 = v8;
      v28 = 2112;
      v29 = v9;
      v10 = "%{public}@Cannot audit shared user entries in Database for accessory : %@ due to missing HH2 key";
LABEL_9:
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_ERROR, v10, &v26, 0x16u);

      goto LABEL_10;
    }

    goto LABEL_10;
  }

  v11 = [v4 identifier];

  if (!v11)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = a1;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      v9 = [v4 debugDescription];
      v26 = 138543618;
      v27 = v8;
      v28 = 2112;
      v29 = v9;
      v10 = "%{public}@Cannot audit the accessory with nil identifier. Ignoring audit for : %@";
      goto LABEL_9;
    }

LABEL_10:

    objc_autoreleasePoolPop(v5);
    goto LABEL_15;
  }

  v12 = [HMDAuditAccessoryPairingOperation alloc];
  v13 = [v4 modelID];
  v14 = [v4 identifier];
  v15 = [v4 home];
  v16 = [v15 modelID];
  v17 = [(HMDAuditAccessoryPairingOperation *)v12 initWithAccessoryUUID:v13 accessoryIdentifier:v14 homeUUIDWhereAccessoryWasPaired:v16];

  if (v17)
  {
    v18 = [a1 homeManager];
    v19 = [v18 bgOpsManager];
    [v19 addOperation:v17];
  }

  else
  {
    v20 = objc_autoreleasePoolPush();
    v21 = a1;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = HMFGetLogIdentifier();
      v24 = [v4 modelID];
      v26 = 138543618;
      v27 = v23;
      v28 = 2112;
      v29 = v24;
      _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_ERROR, "%{public}@Failed to create audit pairing operation for : %@", &v26, 0x16u);
    }

    objc_autoreleasePoolPop(v20);
  }

LABEL_15:
  v25 = *MEMORY[0x277D85DE8];
}

+ (void)dumpUsers:(id)a3 usingTag:(id)a4
{
  v6 = a4;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __58__HMDBackgroundOperationManagerHelper_dumpUsers_usingTag___block_invoke;
  v8[3] = &unk_2786853A8;
  v9 = v6;
  v10 = a1;
  v7 = v6;
  [a3 hmf_enumerateWithAutoreleasePoolUsingBlock:v8];
}

void __58__HMDBackgroundOperationManagerHelper_dumpUsers_usingTag___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 40);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v8 = *(a1 + 32);
    v9 = [v3 userID];
    v10 = [v3 privilege];
    v12 = 138544130;
    v13 = v7;
    v14 = 2112;
    v15 = v8;
    v16 = 2112;
    v17 = v9;
    v18 = 2112;
    v19 = v10;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@%@ : %@ (%@)", &v12, 0x2Au);
  }

  objc_autoreleasePoolPop(v4);
  v11 = *MEMORY[0x277D85DE8];
}

+ (void)auditSharedUserEntriesInDatabaseForHome:(id)a3 withCompletionHandler:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [a1 checkAndRaiseFaultIfHH2KeyIsMissing];
  v9 = objc_autoreleasePoolPush();
  v10 = a1;
  v11 = HMFGetOSLogHandle();
  v12 = v11;
  if (!v8)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      *buf = 138543618;
      v25 = v16;
      v26 = 2112;
      v27 = v6;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@Going to audit shared user entries in database for home : %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
    v17 = +[HMDCoreData sharedInstance];
    v18 = [v6 uuid];
    v14 = [v17 contextWithHomeUUID:v18];

    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __101__HMDBackgroundOperationManagerHelper_auditSharedUserEntriesInDatabaseForHome_withCompletionHandler___block_invoke;
    v20[3] = &unk_278687360;
    v21 = v6;
    v23 = v10;
    v22 = v7;
    [v14 performBlockWithPinnedQueryGeneration:v20];

    v15 = v21;
    goto LABEL_9;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v13 = HMFGetLogIdentifier();
    *buf = 138543618;
    v25 = v13;
    v26 = 2112;
    v27 = v6;
    _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@Cannot trigger audit for shared users for %@ due to missing HH2 controller key", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v9);
  v14 = _Block_copy(v7);
  if (v14)
  {
    v15 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    (v14)[2](v14, v15);
LABEL_9:
  }

  v19 = *MEMORY[0x277D85DE8];
}

void __101__HMDBackgroundOperationManagerHelper_auditSharedUserEntriesInDatabaseForHome_withCompletionHandler___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) uuid];
  v3 = [HMCContext findHomeWithModelID:v2];

  if (v3)
  {
    v4 = [v3 accessories];
    v16 = MEMORY[0x277D85DD0];
    v17 = 3221225472;
    v18 = __101__HMDBackgroundOperationManagerHelper_auditSharedUserEntriesInDatabaseForHome_withCompletionHandler___block_invoke_28;
    v19 = &unk_278685308;
    v21 = *(a1 + 48);
    v20 = v3;
    [v4 hmf_enumerateWithAutoreleasePoolUsingBlock:&v16];

    v5 = [*(a1 + 32) homeManager];
    v6 = [v5 bgOpsManager];
    [v6 evaluateOperations];

    v7 = *(a1 + 40);
    if (v7)
    {
      (*(v7 + 16))(v7, 0);
    }

    v8 = v20;
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    v10 = *(a1 + 48);
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      v13 = [*(a1 + 32) uuid];
      *buf = 138543618;
      v23 = v12;
      v24 = 2112;
      v25 = v13;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_ERROR, "%{public}@Did not find the home with model id : %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
    v14 = *(a1 + 40);
    v8 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    if (v14)
    {
      (*(v14 + 16))(v14, v8);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __101__HMDBackgroundOperationManagerHelper_auditSharedUserEntriesInDatabaseForHome_withCompletionHandler___block_invoke_28(uint64_t a1, void *a2)
{
  v75 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 castIfHAPAccessory];
  v5 = [v3 castIfAirPlayAccessory];
  if (v5 | v4 && (!v4 || (isBridgedAccessory(v4) & 1) == 0))
  {
    v6 = [v4 communicationProtocol];
    v7 = [v6 unsignedIntValue];

    if (v7 != 3)
    {
      v8 = [v4 needsPairingAudit];
      if ([v8 BOOLValue])
      {

LABEL_9:
        v10 = objc_autoreleasePoolPush();
        v11 = *(a1 + 40);
        v12 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          v13 = HMFGetLogIdentifier();
          v14 = [v4 needsPairingAudit];
          [v14 BOOLValue];
          v15 = HMFBooleanToString();
          *buf = 138543874;
          v70 = v13;
          v71 = 2112;
          v72 = v4;
          v73 = 2112;
          v74 = v15;
          _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@Accessory needs full audit: [%@] [needsAudit: %@]", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v10);
        v16 = *(a1 + 40);
        v17 = v4;
LABEL_20:
        [v16 scheduleFullAuditForAccessory:v17];
        goto LABEL_21;
      }

      if (v4)
      {
        v9 = [*(a1 + 40) didAuditTimeExpiredOnThisAccessory:v4];

        if (v9)
        {
          goto LABEL_9;
        }
      }

      else
      {
      }

      v18 = [v5 needsPairingAudit];
      if ([v18 BOOLValue])
      {

LABEL_17:
        v20 = objc_autoreleasePoolPush();
        v21 = *(a1 + 40);
        v22 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          v23 = HMFGetLogIdentifier();
          v24 = [v5 needsPairingAudit];
          [v24 BOOLValue];
          v25 = HMFBooleanToString();
          *buf = 138543874;
          v70 = v23;
          v71 = 2112;
          v72 = v5;
          v73 = 2112;
          v74 = v25;
          _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_INFO, "%{public}@Accessory needs full audit: [%@] [needsAudit: %@]", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v20);
        v16 = *(a1 + 40);
        v17 = v5;
        goto LABEL_20;
      }

      if (v5)
      {
        v19 = [*(a1 + 40) didAuditTimeExpiredOnThisAirPlayAccessory:v5];

        if (v19)
        {
          goto LABEL_17;
        }
      }

      else
      {
      }

      v27 = objc_autoreleasePoolPush();
      v28 = MEMORY[0x277CBEB58];
      v29 = [*(a1 + 32) users];
      v56 = [v28 setWithArray:v29];

      if (v4 | v5)
      {
        if (v4)
        {
          v30 = v4;
        }

        else
        {
          v30 = v5;
        }

        v31 = MEMORY[0x277CBEB58];
        v32 = [v30 pairedUsers];
        v33 = [v31 setWithArray:v32];
      }

      else
      {
        v33 = 0;
      }

      [*(a1 + 40) dumpUsers:v56 usingTag:@"Home users list"];
      [*(a1 + 40) dumpUsers:v33 usingTag:@"paired users list"];
      v34 = [v56 mutableCopy];
      [v34 minusSet:v33];
      [*(a1 + 40) dumpUsers:v34 usingTag:@"Users to add"];
      v35 = [v33 mutableCopy];
      [v35 minusSet:v56];
      [*(a1 + 40) dumpUsers:v35 usingTag:@"Users to remove"];
      if ([v34 count] || objc_msgSend(v35, "count"))
      {
        if (![v34 isEqualToSet:v35])
        {
          v65[0] = MEMORY[0x277D85DD0];
          v65[1] = 3221225472;
          v65[2] = __101__HMDBackgroundOperationManagerHelper_auditSharedUserEntriesInDatabaseForHome_withCompletionHandler___block_invoke_42;
          v65[3] = &unk_278685358;
          v44 = v4;
          v45 = *(a1 + 40);
          v66 = v44;
          v68 = v45;
          v55 = v27;
          v46 = v5;
          v67 = v46;
          [v34 hmf_enumerateWithAutoreleasePoolUsingBlock:v65];
          v61[0] = MEMORY[0x277D85DD0];
          v61[1] = 3221225472;
          v61[2] = __101__HMDBackgroundOperationManagerHelper_auditSharedUserEntriesInDatabaseForHome_withCompletionHandler___block_invoke_2;
          v61[3] = &unk_278685358;
          v47 = v44;
          v48 = *(a1 + 40);
          v62 = v47;
          v64 = v48;
          v49 = v46;
          v63 = v49;
          [v35 hmf_enumerateWithAutoreleasePoolUsingBlock:v61];
          v50 = [v47 pairingsToRemove];
          v57[0] = MEMORY[0x277D85DD0];
          v57[1] = 3221225472;
          v57[2] = __101__HMDBackgroundOperationManagerHelper_auditSharedUserEntriesInDatabaseForHome_withCompletionHandler___block_invoke_3;
          v57[3] = &unk_278685380;
          v51 = v47;
          v52 = *(a1 + 40);
          v58 = v51;
          v60 = v52;
          v53 = v49;
          v27 = v55;
          v59 = v53;
          [v50 hmf_enumerateWithAutoreleasePoolUsingBlock:v57];

LABEL_39:
          objc_autoreleasePoolPop(v27);
          goto LABEL_21;
        }

        v36 = objc_autoreleasePoolPush();
        v37 = *(a1 + 40);
        v38 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          HMFGetLogIdentifier();
          v54 = v36;
          v40 = v39 = v27;
          *buf = 138543874;
          v70 = v40;
          v71 = 2112;
          v72 = v34;
          v73 = 2112;
          v74 = v35;
          v41 = "%{public}@Users to add & remove cannot be same : [Add: %@] [Remove: %@]";
          v42 = v38;
          v43 = OS_LOG_TYPE_ERROR;
LABEL_37:
          _os_log_impl(&dword_229538000, v42, v43, v41, buf, 0x20u);

          v27 = v39;
          v36 = v54;
        }
      }

      else
      {
        v36 = objc_autoreleasePoolPush();
        v37 = *(a1 + 40);
        v38 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
        {
          HMFGetLogIdentifier();
          v54 = v36;
          v40 = v39 = v27;
          *buf = 138543874;
          v70 = v40;
          v71 = 2112;
          v72 = v34;
          v73 = 2112;
          v74 = v35;
          v41 = "%{public}@No users to add & remove : [Add: %@] [Remove: %@]";
          v42 = v38;
          v43 = OS_LOG_TYPE_INFO;
          goto LABEL_37;
        }
      }

      objc_autoreleasePoolPop(v36);
      goto LABEL_39;
    }
  }

LABEL_21:

  v26 = *MEMORY[0x277D85DE8];
}

void __101__HMDBackgroundOperationManagerHelper_auditSharedUserEntriesInDatabaseForHome_withCompletionHandler___block_invoke_42(uint64_t a1, void *a2)
{
  v4 = a2;
  if ([HMDUser isAllowedToAddOrRemoveHAPPairingsOnAccessoryFor:?])
  {
    v3 = *(a1 + 32);
    if (v3 || (v3 = *(a1 + 40)) != 0)
    {
      [*(a1 + 48) scheduleAddPairingForAccessory:v3 forSharedUser:v4];
    }
  }
}

void __101__HMDBackgroundOperationManagerHelper_auditSharedUserEntriesInDatabaseForHome_withCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  if ([HMDUser isAllowedToAddOrRemoveHAPPairingsOnAccessoryFor:?])
  {
    v3 = *(a1 + 32);
    if (v3 || (v3 = *(a1 + 40)) != 0)
    {
      [*(a1 + 48) scheduleRemovePairingForAccessory:v3 forSharedUser:v4];
    }
  }
}

void __101__HMDBackgroundOperationManagerHelper_auditSharedUserEntriesInDatabaseForHome_withCompletionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4 || (v4 = *(a1 + 40)) != 0)
  {
    v5 = v3;
    [*(a1 + 48) _scheduleRemovePairingForAccessory:v4 usingPairingIdentity:v3];
    v3 = v5;
  }
}

+ (void)removePairingOnAllAccessoriesOfHome:(id)a3 forSharedUser:(id)a4
{
  v38 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ([v7 isAllowedToAddOrRemoveHAPPairingsOnAccessory])
  {
    if ([v7 isOwner])
    {
      _HMFPreconditionFailure();
    }

    v8 = objc_autoreleasePoolPush();
    v9 = a1;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543874;
      v33 = v11;
      v34 = 2112;
      v35 = v7;
      v36 = 2112;
      v37 = v6;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Scheduling remove accessory pairing operation for shared user : %@ / %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v8);
    v12 = +[HMDCoreData sharedInstance];
    v13 = [v6 uuid];
    v14 = [v12 contextWithHomeUUID:v13];

    v24 = MEMORY[0x277D85DD0];
    v25 = 3221225472;
    v26 = __89__HMDBackgroundOperationManagerHelper_removePairingOnAllAccessoriesOfHome_forSharedUser___block_invoke;
    v27 = &unk_278685330;
    v15 = v6;
    v28 = v15;
    v31 = v9;
    v29 = v7;
    v30 = v14;
    v16 = v14;
    [v16 performBlockWithPinnedQueryGeneration:&v24];
    v17 = [v15 homeManager];
    v18 = [v17 bgOpsManager];
    [v18 evaluateOperations];
  }

  else
  {
    v19 = objc_autoreleasePoolPush();
    v20 = a1;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = HMFGetLogIdentifier();
      *buf = 138543874;
      v33 = v22;
      v34 = 2112;
      v35 = v6;
      v36 = 2112;
      v37 = v7;
      _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_INFO, "%{public}@Not allowed to remove pairings for all the accessories of the home: %@, sharedUser: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v19);
  }

  v23 = *MEMORY[0x277D85DE8];
}

void __89__HMDBackgroundOperationManagerHelper_removePairingOnAllAccessoriesOfHome_forSharedUser___block_invoke(uint64_t a1)
{
  v35 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) uuid];
  v3 = [HMCContext findHomeWithModelID:v2];

  if (v3)
  {
    v4 = [v3 accessories];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __89__HMDBackgroundOperationManagerHelper_removePairingOnAllAccessoriesOfHome_forSharedUser___block_invoke_25;
    v26[3] = &unk_278685308;
    v5 = *(a1 + 40);
    v6 = *(a1 + 56);
    v27 = v5;
    v28 = v6;
    [v4 hmf_enumerateWithAutoreleasePoolUsingBlock:v26];

    v7 = *(a1 + 48);
    v25 = 0;
    v8 = [v7 save:&v25];
    v9 = v25;
    v10 = objc_autoreleasePoolPush();
    v11 = *(a1 + 56);
    v12 = HMFGetOSLogHandle();
    v13 = v12;
    if (!v8 || v9)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v14 = HMFGetLogIdentifier();
        v23 = *(a1 + 32);
        *buf = 138543618;
        v30 = v14;
        v31 = 2112;
        v32 = v23;
        _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_ERROR, "%{public}@Unable to save the pairingsToRemove on accessories for home : %@", buf, 0x16u);
        goto LABEL_11;
      }
    }

    else if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      v15 = [*(a1 + 40) pairingIdentity];
      v16 = [v15 identifier];
      v17 = *(a1 + 32);
      *buf = 138543874;
      v30 = v14;
      v31 = 2112;
      v32 = v16;
      v33 = 2112;
      v34 = v17;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Successfully added [%@] to pairingsToRemove on all accessories of the home : %@", buf, 0x20u);

LABEL_11:
    }

    objc_autoreleasePoolPop(v10);
    goto LABEL_13;
  }

  v18 = objc_autoreleasePoolPush();
  v19 = *(a1 + 56);
  v20 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    v21 = HMFGetLogIdentifier();
    v22 = [*(a1 + 32) uuid];
    *buf = 138543618;
    v30 = v21;
    v31 = 2112;
    v32 = v22;
    _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_ERROR, "%{public}@Did not find the home with model id : %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v18);
LABEL_13:

  v24 = *MEMORY[0x277D85DE8];
}

void __89__HMDBackgroundOperationManagerHelper_removePairingOnAllAccessoriesOfHome_forSharedUser___block_invoke_25(uint64_t a1, void *a2)
{
  v11 = a2;
  v3 = [v11 castIfHAPAccessory];
  v4 = [v11 castIfAirPlayAccessory];
  v5 = v4;
  if (v3 | v4)
  {
    if (v3)
    {
      v6 = isBridgedAccessory(v3);
      v4 = v3;
      if (v6)
      {
        goto LABEL_12;
      }
    }

    else if (!v4)
    {
      v8 = 0;
      goto LABEL_8;
    }

    v7 = [v4 pairingsToRemove];
    v8 = [v7 mutableCopy];

LABEL_8:
    v9 = [*(a1 + 32) pairingIdentity];
    [v8 addObject:v9];

    if (v3)
    {
      v10 = v3;
    }

    else
    {
      v10 = v5;
    }

    [v10 setPairingsToRemove:v8];
    [*(a1 + 40) scheduleRemovePairingForAccessory:v11 sharedUser:*(a1 + 32)];
  }

LABEL_12:
}

+ (void)addPairingOnAllAccessoriesOfHome:(id)a3 forSharedUser:(id)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ([v7 isOwner])
  {
    _HMFPreconditionFailure();
  }

  v8 = objc_autoreleasePoolPush();
  v9 = a1;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543874;
    v24 = v11;
    v25 = 2112;
    v26 = v7;
    v27 = 2112;
    v28 = v6;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Scheduling add accessory pairing operation for shared user: %@ / %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  v12 = [v6 accessories];
  v17 = MEMORY[0x277D85DD0];
  v18 = 3221225472;
  v19 = __86__HMDBackgroundOperationManagerHelper_addPairingOnAllAccessoriesOfHome_forSharedUser___block_invoke;
  v20 = &unk_2786852E0;
  v21 = v7;
  v22 = v9;
  v13 = v7;
  [v12 hmf_enumerateWithAutoreleasePoolUsingBlock:&v17];

  v14 = [v6 homeManager];
  v15 = [v14 bgOpsManager];
  [v15 evaluateOperations];

  v16 = *MEMORY[0x277D85DE8];
}

void __86__HMDBackgroundOperationManagerHelper_addPairingOnAllAccessoriesOfHome_forSharedUser___block_invoke(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
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

  if (!v5)
  {
    if (!v8)
    {
      goto LABEL_16;
    }

    v16 = *(a1 + 32);
    v15 = *(a1 + 40);
    v17 = v8;
LABEL_15:
    [v15 scheduleAddPairingForAccessory:v17 sharedUser:v16];
    goto LABEL_16;
  }

  v9 = [v5 bridge];

  if (!v9)
  {
    v16 = *(a1 + 32);
    v15 = *(a1 + 40);
    v17 = v5;
    goto LABEL_15;
  }

  v10 = objc_autoreleasePoolPush();
  v11 = *(a1 + 40);
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v13 = HMFGetLogIdentifier();
    v14 = [v5 shortDescription];
    v19 = 138543618;
    v20 = v13;
    v21 = 2112;
    v22 = v14;
    _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_DEBUG, "%{public}@Not scheduling add pairing operation for accessory: %@", &v19, 0x16u);
  }

  objc_autoreleasePoolPop(v10);
LABEL_16:

  v18 = *MEMORY[0x277D85DE8];
}

+ (void)auditSharedUserEntriesInDatabaseForAccessory:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([a1 checkAndRaiseFaultIfHH2KeyIsMissing])
  {
    v5 = objc_autoreleasePoolPush();
    v6 = a1;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
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

      v17 = *buf;
      *buf = 138543874;
      *&buf[4] = v8;
      *&buf[12] = 1040;
      *&buf[14] = 16;
      v19 = 2096;
      v20 = &v17;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_ERROR, "%{public}@Cannot audit shared user entries in Database for accessory : %{uuid_t}.16P due to missing HH2 key", buf, 0x1Cu);
    }

    objc_autoreleasePoolPop(v5);
  }

  else
  {
    v11 = [MEMORY[0x277D0F8F0] defaultScheduler];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __84__HMDBackgroundOperationManagerHelper_auditSharedUserEntriesInDatabaseForAccessory___block_invoke;
    v14[3] = &unk_27868A0D0;
    v15 = v4;
    v16 = a1;
    v12 = [v11 performWithQualityOfService:9 block:v14];
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __84__HMDBackgroundOperationManagerHelper_auditSharedUserEntriesInDatabaseForAccessory___block_invoke(uint64_t a1)
{
  v43 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) home];
  if (([v2 isCurrentDeviceConfirmedPrimaryResident] & 1) == 0)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 40);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v13 = [v2 shortDescription];
      v14 = [*(a1 + 32) shortDescription];
      *buf = 138543874;
      *&buf[4] = v12;
      *&buf[12] = 2112;
      *&buf[14] = v13;
      *&buf[22] = 2112;
      v42 = v14;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Invalid home or this device is not a resident for home: %@. Not auditing the shared users for accessory: %@", buf, 0x20u);
    }

    goto LABEL_8;
  }

  v3 = *(a1 + 32);
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

  v6 = [v5 bridge];

  if (v6)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 40);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v11 = [*(a1 + 32) shortDescription];
      *buf = 138543618;
      *&buf[4] = v10;
      *&buf[12] = 2112;
      *&buf[14] = v11;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Not scheduling any audit pairing operation for accessory: %@", buf, 0x16u);
    }

LABEL_8:

    objc_autoreleasePoolPop(v7);
    goto LABEL_19;
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  LOBYTE(v42) = 0;
  v15 = +[HMDCoreData sharedInstance];
  v16 = [v2 uuid];
  v17 = [v15 contextWithHomeUUID:v16];

  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __84__HMDBackgroundOperationManagerHelper_auditSharedUserEntriesInDatabaseForAccessory___block_invoke_12;
  v31[3] = &unk_2786852B8;
  v18 = *(a1 + 32);
  v19 = *(a1 + 40);
  v32 = v18;
  v33 = buf;
  v34 = v19;
  [v17 performBlockWithPinnedQueryGeneration:v31];
  v20 = objc_autoreleasePoolPush();
  v21 = *(a1 + 40);
  v22 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
  {
    v23 = HMFGetLogIdentifier();
    v24 = *(*&buf[8] + 24);
    v25 = [*(a1 + 32) shortDescription];
    v26 = v25;
    v27 = @"NOT ";
    *v35 = 138543874;
    v36 = v23;
    v37 = 2112;
    if (v24)
    {
      v27 = &stru_283CF9D50;
    }

    v38 = v27;
    v39 = 2112;
    v40 = v25;
    _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_INFO, "%{public}@%@Going to audit pairings for accessory: %@", v35, 0x20u);
  }

  objc_autoreleasePoolPop(v20);
  if (*(*&buf[8] + 24) == 1)
  {
    v28 = [v2 homeManager];
    v29 = [v28 bgOpsManager];
    [v29 evaluateOperations];
  }

  _Block_object_dispose(buf, 8);
LABEL_19:

  v30 = *MEMORY[0x277D85DE8];
}

void __84__HMDBackgroundOperationManagerHelper_auditSharedUserEntriesInDatabaseForAccessory___block_invoke_12(uint64_t a1)
{
  v42 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) uuid];
  v3 = [HMCContext findHAPAccessoryWithModelID:v2];

  v4 = [*(a1 + 32) uuid];
  v5 = [HMCContext findAirPlayAccessoryWithModelID:v4];

  if (v3 | v5)
  {
    if (v3)
    {
      v6 = v3;
      v7 = [v6 needsPairingAudit];
      if ([v7 BOOLValue])
      {
        v8 = 1;
      }

      else
      {
        v8 = [*(a1 + 48) didAuditTimeExpiredOnThisAccessory:v6];
      }

      *(*(*(a1 + 40) + 8) + 24) = v8;

      v16 = objc_autoreleasePoolPush();
      v17 = *(a1 + 48);
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v19 = HMFGetLogIdentifier();
        [*(a1 + 32) shortDescription];
        v20 = v30 = v17;
        v21 = [v6 needsPairingAudit];
        [v21 BOOLValue];
        HMFBooleanToString();
        v22 = v32 = v16;
        v23 = [v6 lastPairingAuditTime];
        *buf = 138544130;
        v35 = v19;
        v36 = 2112;
        v37 = v20;
        v38 = 2112;
        v39 = v22;
        v40 = 2112;
        v41 = v23;
        _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_INFO, "%{public}@Checking shared user entries audit for accessory: %@ [needsAudit: %@ - lastPairingAuditTime: %@]", buf, 0x2Au);

        v17 = v30;
        v16 = v32;
      }
    }

    else
    {
      if (!v5)
      {
        v6 = 0;
LABEL_19:
        if (*(*(*(a1 + 40) + 8) + 24) == 1)
        {
          [*(a1 + 48) scheduleFullAuditForAccessory:v6];
        }

        goto LABEL_22;
      }

      v6 = v5;
      v14 = [v6 needsPairingAudit];
      if ([v14 BOOLValue])
      {
        v15 = 1;
      }

      else
      {
        v15 = [*(a1 + 48) didAuditTimeExpiredOnThisAirPlayAccessory:v6];
      }

      *(*(*(a1 + 40) + 8) + 24) = v15;

      v16 = objc_autoreleasePoolPush();
      v17 = *(a1 + 48);
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v29 = HMFGetLogIdentifier();
        v24 = [*(a1 + 32) shortDescription];
        v31 = [v6 needsPairingAudit];
        v33 = v16;
        [v31 BOOLValue];
        v25 = HMFBooleanToString();
        v26 = [v6 lastPairingAuditTime];
        *buf = 138544130;
        v35 = v29;
        v36 = 2112;
        v37 = v24;
        v38 = 2112;
        v39 = v25;
        v27 = v25;
        v40 = 2112;
        v41 = v26;
        _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_INFO, "%{public}@Checking shared user entries audit for airplay accessory: %@ [needsAudit: %@ - lastPairingAuditTime: %@]", buf, 0x2Au);

        v16 = v33;
      }
    }

    objc_autoreleasePoolPop(v16);
    goto LABEL_19;
  }

  v9 = objc_autoreleasePoolPush();
  v10 = *(a1 + 48);
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v12 = HMFGetLogIdentifier();
    v13 = [*(a1 + 32) shortDescription];
    *buf = 138543618;
    v35 = v12;
    v36 = 2112;
    v37 = v13;
    _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_ERROR, "%{public}@Did not find the accessory model for %@ to audit", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v9);
LABEL_22:

  v28 = *MEMORY[0x277D85DE8];
}

+ (void)auditSharedUserEntriesInDatabase:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277D0F8F0] defaultScheduler];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __72__HMDBackgroundOperationManagerHelper_auditSharedUserEntriesInDatabase___block_invoke;
  v8[3] = &unk_27868A0D0;
  v9 = v4;
  v10 = a1;
  v6 = v4;
  v7 = [v5 performWithQualityOfService:9 block:v8];
}

void __72__HMDBackgroundOperationManagerHelper_auditSharedUserEntriesInDatabase___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = [HMDBackgroundOperationManager findHomeWhereThisDeviceIsConfirmedPrimaryResident:*(a1 + 32)];
  v3 = objc_autoreleasePoolPush();
  v4 = *(a1 + 40);
  v5 = HMFGetOSLogHandle();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_INFO);
  if (v2)
  {
    if (v6)
    {
      v7 = HMFGetLogIdentifier();
      v10 = 138543618;
      v11 = v7;
      v12 = 2112;
      v13 = v2;
      _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@This device is primary resident on home: %@", &v10, 0x16u);
    }

    objc_autoreleasePoolPop(v3);
    [*(a1 + 40) auditSharedUserEntriesInDatabaseForHome:v2 withCompletionHandler:0];
  }

  else
  {
    if (v6)
    {
      v8 = HMFGetLogIdentifier();
      v10 = 138543362;
      v11 = v8;
      _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@This device is not a resident on any home. Not auditing the shared users in database", &v10, 0xCu);
    }

    objc_autoreleasePoolPop(v3);
  }

  v9 = *MEMORY[0x277D85DE8];
}

+ (id)homeManager
{
  v2 = +[HMDMainDriver driver];
  v3 = [v2 homeManager];

  return v3;
}

@end