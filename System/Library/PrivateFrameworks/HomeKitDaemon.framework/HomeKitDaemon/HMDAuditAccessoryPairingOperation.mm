@interface HMDAuditAccessoryPairingOperation
+ (id)logCategory;
- (BOOL)mainWithError:(id *)a3;
- (HMDAuditAccessoryPairingOperation)initWithAccessoryUUID:(id)a3 accessoryIdentifier:(id)a4 homeUUIDWhereAccessoryWasPaired:(id)a5;
- (id)getPairingsFromAccessory:(id)a3;
- (id)getPairingsFromAirPlayAccessory:(id)a3;
- (id)logIdentifier;
- (id)usersOnHomeWhosePairingsNeedsToBeAddedOrRemoved:(id)a3;
- (void)auditPairings:(id)a3 forAccessory:(id)a4;
- (void)scheduleAuditOperations:(id)a3;
@end

@implementation HMDAuditAccessoryPairingOperation

- (id)logIdentifier
{
  v2 = [(HMDBackgroundOperation *)self operationUUID];
  v3 = [v2 UUIDString];

  return v3;
}

- (id)usersOnHomeWhosePairingsNeedsToBeAddedOrRemoved:(id)a3
{
  v3 = [a3 users];
  v4 = [v3 na_filter:&__block_literal_global_171242];

  v5 = [MEMORY[0x277CBEB58] setWithArray:v4];

  return v5;
}

uint64_t __85__HMDAuditAccessoryPairingOperation_usersOnHomeWhosePairingsNeedsToBeAddedOrRemoved___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 isOwner])
  {
    v3 = 1;
  }

  else
  {
    v3 = [v2 isAllowedToAddOrRemoveHAPPairingsOnAccessory];
  }

  return v3;
}

- (id)getPairingsFromAirPlayAccessory:(id)a3
{
  v37 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = [v4 shortDescription];
    *buf = 138543618;
    v34 = v8;
    v35 = 2112;
    v36 = v9;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Get pairings from accessory : %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v10 = dispatch_group_create();
  dispatch_group_enter(v10);
  v11 = [MEMORY[0x277CBEB18] array];
  v25 = MEMORY[0x277D85DD0];
  v26 = 3221225472;
  v27 = __69__HMDAuditAccessoryPairingOperation_getPairingsFromAirPlayAccessory___block_invoke;
  v28 = &unk_278684EF8;
  v29 = v6;
  v12 = v4;
  v30 = v12;
  v13 = v11;
  v31 = v13;
  v14 = v10;
  v32 = v14;
  [v12 pairingsWithCompletionHandler:&v25];
  v15 = dispatch_time(0, 120000000000);
  if (dispatch_group_wait(v14, v15))
  {
    v16 = objc_autoreleasePoolPush();
    v17 = v6;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      v20 = [v12 shortDescription];
      *buf = 138543618;
      v34 = v19;
      v35 = 2112;
      v36 = v20;
      _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_ERROR, "%{public}@Timed out while getting list of pairings from the accessory : %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v16);
  }

  v21 = v32;
  v22 = v13;

  v23 = *MEMORY[0x277D85DE8];
  return v13;
}

void __69__HMDAuditAccessoryPairingOperation_getPairingsFromAirPlayAccessory___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v11 = [*(a1 + 40) shortDescription];
    v14 = 138544130;
    v15 = v10;
    v16 = 2112;
    v17 = v5;
    v18 = 2112;
    v19 = v11;
    v20 = 2112;
    v21 = v6;
    _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@AirPlay list pairing operation finished with: %@ for accessory: %@, error: %@", &v14, 0x2Au);
  }

  objc_autoreleasePoolPop(v7);
  v12 = *(a1 + 48);
  if (v12)
  {
    [v12 addObjectsFromArray:v5];
  }

  dispatch_group_leave(*(a1 + 56));

  v13 = *MEMORY[0x277D85DE8];
}

- (id)getPairingsFromAccessory:(id)a3
{
  v36 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = [v4 shortDescription];
    *buf = 138543618;
    v33 = v8;
    v34 = 2112;
    v35 = v9;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Get pairings from accessory : %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v10 = dispatch_group_create();
  dispatch_group_enter(v10);
  v11 = [MEMORY[0x277CBEB18] array];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __62__HMDAuditAccessoryPairingOperation_getPairingsFromAccessory___block_invoke;
  v28[3] = &unk_27867CCF0;
  v28[4] = v6;
  v29 = v4;
  v30 = v10;
  v12 = v11;
  v31 = v12;
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __62__HMDAuditAccessoryPairingOperation_getPairingsFromAccessory___block_invoke_30;
  v25[3] = &unk_278688D58;
  v25[4] = v6;
  v13 = v29;
  v26 = v13;
  v14 = v30;
  v27 = v14;
  [v13 performOperation:7 linkType:0 operationBlock:v28 errorBlock:v25];
  v15 = dispatch_time(0, 120000000000);
  if (dispatch_group_wait(v14, v15))
  {
    v16 = objc_autoreleasePoolPush();
    v17 = v6;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      v20 = [v13 shortDescription];
      *buf = 138543618;
      v33 = v19;
      v34 = 2112;
      v35 = v20;
      _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_ERROR, "%{public}@Timed out while getting list of pairings from the accessory : %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v16);
  }

  v21 = v27;
  v22 = v12;

  v23 = *MEMORY[0x277D85DE8];
  return v12;
}

void __62__HMDAuditAccessoryPairingOperation_getPairingsFromAccessory___block_invoke(id *a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 server];
  if (v4)
  {
    v5 = dispatch_get_global_queue(-32768, 0);
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __62__HMDAuditAccessoryPairingOperation_getPairingsFromAccessory___block_invoke_27;
    v17[3] = &unk_278684EF8;
    v16 = *(a1 + 2);
    v6 = *(&v16 + 1);
    v7 = a1[7];
    v8 = a1[6];
    *&v9 = v7;
    *(&v9 + 1) = v8;
    v18 = v16;
    v19 = v9;
    [v4 listPairingsWithCompletionQueue:v5 completionHandler:v17];
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    v11 = a1[4];
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      v14 = [a1[5] shortDescription];
      *buf = 138543618;
      v21 = v13;
      v22 = 2112;
      v23 = v14;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@Unable to list pairing as there is no accessory server for accessory : %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    dispatch_group_leave(a1[6]);
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __62__HMDAuditAccessoryPairingOperation_getPairingsFromAccessory___block_invoke_30(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = HMFGetLogIdentifier();
    v8 = [*(a1 + 40) shortDescription];
    v10 = 138543618;
    v11 = v7;
    v12 = 2112;
    v13 = v8;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_ERROR, "%{public}@Unable to list pairings for accessory : %@", &v10, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  dispatch_group_leave(*(a1 + 48));

  v9 = *MEMORY[0x277D85DE8];
}

void __62__HMDAuditAccessoryPairingOperation_getPairingsFromAccessory___block_invoke_27(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v11 = [*(a1 + 40) shortDescription];
    v13 = 138544130;
    v14 = v10;
    v15 = 2112;
    v16 = v5;
    v17 = 2112;
    v18 = v11;
    v19 = 2112;
    v20 = v6;
    _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@HAP list pairing operation finished with: %@ for accessory: %@, error: %@", &v13, 0x2Au);
  }

  objc_autoreleasePoolPop(v7);
  [*(a1 + 48) addObjectsFromArray:v5];
  dispatch_group_leave(*(a1 + 56));

  v12 = *MEMORY[0x277D85DE8];
}

- (void)scheduleAuditOperations:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDBackgroundOperation *)self bgOpsManager];
  v6 = [v5 scheduleOperationsWithDependenciesOnEachOtherFromArray:v4];
  v7 = objc_autoreleasePoolPush();
  v8 = self;
  v9 = HMFGetOSLogHandle();
  v10 = v9;
  if (v6)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v12 = [(HMDAccessoryBackgroundOperation *)v8 accessoryUUID];
      v13 = [(HMDAccessoryBackgroundOperation *)v8 accessoryIdentifier];
      v18 = 138544130;
      v19 = v11;
      v20 = 2112;
      v21 = v4;
      v22 = 2112;
      v23 = v12;
      v24 = 2112;
      v25 = v13;
      v14 = "%{public}@Successfully added the operations to the BGOperationManager : %@ for accessory: %@/%@";
      v15 = v10;
      v16 = OS_LOG_TYPE_INFO;
LABEL_6:
      _os_log_impl(&dword_229538000, v15, v16, v14, &v18, 0x2Au);
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v11 = HMFGetLogIdentifier();
    v12 = [(HMDAccessoryBackgroundOperation *)v8 accessoryUUID];
    v13 = [(HMDAccessoryBackgroundOperation *)v8 accessoryIdentifier];
    v18 = 138544130;
    v19 = v11;
    v20 = 2112;
    v21 = v4;
    v22 = 2112;
    v23 = v12;
    v24 = 2112;
    v25 = v13;
    v14 = "%{public}@Unable to schedule all the audit operations : %@ for accessory: %@/%@. Removing them";
    v15 = v10;
    v16 = OS_LOG_TYPE_ERROR;
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v7);
  v17 = *MEMORY[0x277D85DE8];
}

- (void)auditPairings:(id)a3 forAccessory:(id)a4
{
  v84 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v7 home];
  v9 = objc_autoreleasePoolPush();
  v10 = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    v13 = [v7 shortDescription];
    *buf = 138544130;
    v77 = v12;
    v78 = 2112;
    v79 = v6;
    v80 = 2112;
    v81 = v13;
    v82 = 2112;
    v83 = v8;
    _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Going to audit HAP pairings: %@ on Accessory %@ for home: %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v9);
  if (v8)
  {
    v61 = [(HMDBackgroundOperation *)v10 bgOpsManager];
    v14 = [MEMORY[0x277CBEB58] setWithCapacity:{-[HMDPersistAuditAccessoryResultOperation count](v6, "count")}];
    v15 = [MEMORY[0x277CBEB58] set];
    v72[0] = MEMORY[0x277D85DD0];
    v72[1] = 3221225472;
    v72[2] = __64__HMDAuditAccessoryPairingOperation_auditPairings_forAccessory___block_invoke;
    v72[3] = &unk_278686590;
    v16 = v8;
    v73 = v16;
    v17 = v15;
    v74 = v17;
    v18 = v14;
    v75 = v18;
    [(HMDPersistAuditAccessoryResultOperation *)v6 hmf_enumerateWithAutoreleasePoolUsingBlock:v72];
    v19 = [(HMDAuditAccessoryPairingOperation *)v10 usersOnHomeWhosePairingsNeedsToBeAddedOrRemoved:v16];
    v60 = v18;
    [(HMDPersistAuditAccessoryResultOperation *)v19 minusSet:v18];
    v62 = v6;
    if (![(HMDPersistAuditAccessoryResultOperation *)v19 hmf_isEmpty]|| ![(HMDPersistAuditAccessoryResultOperation *)v17 hmf_isEmpty])
    {
      v30 = objc_autoreleasePoolPush();
      v31 = v10;
      v32 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
      {
        v33 = HMFGetLogIdentifier();
        v34 = [v7 shortDescription];
        *buf = 138543874;
        v77 = v33;
        v78 = 2112;
        v79 = v19;
        v80 = 2112;
        v81 = v34;
        _os_log_impl(&dword_229538000, v32, OS_LOG_TYPE_INFO, "%{public}@Going to add pairings [%@] on accessory [%@]", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v30);
      v35 = objc_autoreleasePoolPush();
      v36 = v31;
      v37 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
      {
        v38 = HMFGetLogIdentifier();
        v39 = [v7 shortDescription];
        *buf = 138543874;
        v77 = v38;
        v78 = 2112;
        v79 = v17;
        v80 = 2112;
        v81 = v39;
        _os_log_impl(&dword_229538000, v37, OS_LOG_TYPE_INFO, "%{public}@Going to remove pairings [%@] from accessory [%@]", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v35);
      v40 = [MEMORY[0x277CBEB18] arrayWithCapacity:{-[HMDPersistAuditAccessoryResultOperation count](v17, "count") + -[HMDPersistAuditAccessoryResultOperation count](v19, "count")}];
      v68[0] = MEMORY[0x277D85DD0];
      v68[1] = 3221225472;
      v68[2] = __64__HMDAuditAccessoryPairingOperation_auditPairings_forAccessory___block_invoke_20;
      v68[3] = &unk_27867CCA0;
      v41 = v7;
      v69 = v41;
      v70 = v36;
      v42 = v40;
      v71 = v42;
      [(HMDPersistAuditAccessoryResultOperation *)v19 hmf_enumerateWithAutoreleasePoolUsingBlock:v68];
      v63[0] = MEMORY[0x277D85DD0];
      v63[1] = 3221225472;
      v63[2] = __64__HMDAuditAccessoryPairingOperation_auditPairings_forAccessory___block_invoke_24;
      v63[3] = &unk_27867CCC8;
      v43 = v41;
      v64 = v43;
      v65 = v16;
      v66 = v36;
      v21 = v42;
      v67 = v21;
      [(HMDPersistAuditAccessoryResultOperation *)v17 hmf_enumerateWithAutoreleasePoolUsingBlock:v63];
      v44 = [HMDPersistAuditAccessoryResultOperation alloc];
      v45 = [(HMDAccessoryBackgroundOperation *)v44 initWithAccessory:v43 userData:MEMORY[0x277CBEC10]];
      if (v45)
      {
        [(HMDPersistAuditAccessoryResultOperation *)v21 addObject:v45];
        v46 = [(HMDPersistAuditAccessoryResultOperation *)v21 copy];
        [(HMDAuditAccessoryPairingOperation *)v36 scheduleAuditOperations:v46];
      }

      else
      {
        v52 = objc_autoreleasePoolPush();
        v53 = v36;
        v54 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
        {
          HMFGetLogIdentifier();
          v55 = v59 = v52;
          v56 = [v43 shortDescription];
          *buf = 138543618;
          v77 = v55;
          v78 = 2112;
          v79 = v56;
          _os_log_impl(&dword_229538000, v54, OS_LOG_TYPE_ERROR, "%{public}@Failed to create audit pairing operation for accessory: %@", buf, 0x16u);

          v52 = v59;
        }

        objc_autoreleasePoolPop(v52);
      }

      v22 = v61;
      goto LABEL_26;
    }

    v20 = [HMDPersistAuditAccessoryResultOperation alloc];
    v21 = [(HMDAccessoryBackgroundOperation *)v20 initWithAccessory:v7 userData:MEMORY[0x277CBEC10]];
    if (v21)
    {
      v22 = v61;
      [v61 addOperation:v21];
      v23 = objc_autoreleasePoolPush();
      v24 = v10;
      v25 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        v26 = HMFGetLogIdentifier();
        *buf = 138543618;
        v77 = v26;
        v78 = 2112;
        v79 = v21;
        v27 = "%{public}@Added audit finished operation for accessory : %@";
        v28 = v25;
        v29 = OS_LOG_TYPE_INFO;
LABEL_24:
        _os_log_impl(&dword_229538000, v28, v29, v27, buf, 0x16u);
      }
    }

    else
    {
      v23 = objc_autoreleasePoolPush();
      v57 = v10;
      v25 = HMFGetOSLogHandle();
      v22 = v61;
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v26 = HMFGetLogIdentifier();
        *buf = 138543618;
        v77 = v26;
        v78 = 2112;
        v79 = 0;
        v27 = "%{public}@Cannot create audit finished operation for accessory : %@";
        v28 = v25;
        v29 = OS_LOG_TYPE_ERROR;
        goto LABEL_24;
      }
    }

    objc_autoreleasePoolPop(v23);
LABEL_26:

    v6 = v62;
    goto LABEL_27;
  }

  v47 = objc_autoreleasePoolPush();
  v48 = v10;
  v49 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
  {
    v50 = HMFGetLogIdentifier();
    v51 = [v7 shortDescription];
    *buf = 138543618;
    v77 = v50;
    v78 = 2112;
    v79 = v51;
    _os_log_impl(&dword_229538000, v49, OS_LOG_TYPE_INFO, "%{public}@Cannot process audit HAP pairings operation as home is nil : %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v47);
LABEL_27:

  v58 = *MEMORY[0x277D85DE8];
}

void __64__HMDAuditAccessoryPairingOperation_auditPairings_forAccessory___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [*(a1 + 32) userWithPairingIdentity:?];
  if (v3)
  {
    v4 = *(a1 + 48);
    v5 = v3;
  }

  else
  {
    v4 = *(a1 + 40);
    v5 = v6;
  }

  [v4 addObject:v5];
}

void __64__HMDAuditAccessoryPairingOperation_auditPairings_forAccessory___block_invoke_20(id *a1, void *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (([v3 isPending] & 1) != 0 || (v4 = [HMDAddAccessoryPairingSharedUserOperation alloc], v5 = a1[4], objc_msgSend(v3, "pairingIdentity"), v6 = objc_claimAutoreleasedReturnValue(), v7 = -[HMDAddAccessoryPairingSharedUserOperation initWithAccessory:forSharedUser:sharedUserPairingIdentity:asOwner:asSharedAdmin:](v4, "initWithAccessory:forSharedUser:sharedUserPairingIdentity:asOwner:asSharedAdmin:", v5, v3, v6, objc_msgSend(v3, "isOwner"), objc_msgSend(v3, "isAdministrator")), v6, !v7))
  {
    v8 = objc_autoreleasePoolPush();
    v9 = a1[5];
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v12 = [v3 shortDescription];
      v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v3, "privilege")}];
      v14 = [v3 pairingIdentity];
      v15 = [a1[4] shortDescription];
      v17 = 138544386;
      v18 = v11;
      v19 = 2112;
      v20 = v12;
      v21 = 2112;
      v22 = v13;
      v23 = 2112;
      v24 = v14;
      v25 = 2112;
      v26 = v15;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to create add pairing operation for pairing identity : %@ (Pv: %@)/%@ of accessory: %@", &v17, 0x34u);
    }

    objc_autoreleasePoolPop(v8);
  }

  else
  {
    [a1[6] addObject:v7];
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __64__HMDAuditAccessoryPairingOperation_auditPairings_forAccessory___block_invoke_24(id *a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [HMDRemoveAccessoryPairingSharedUserOperation alloc];
  v5 = [a1[4] uuid];
  v6 = [a1[4] identifier];
  v7 = [a1[5] uuid];
  v8 = [(HMDRemoveAccessoryPairingSharedUserOperation *)v4 initWithAccessoryUUID:v5 accessoryIdentifier:v6 isOwnerIdentity:0 forSharedUser:0 sharedUserPairingIdentity:v3 homeUUIDWhereAccessoryWasPaired:v7];

  if (v8)
  {
    [a1[7] addObject:v8];
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    v10 = a1[6];
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      v13 = [a1[4] shortDescription];
      v15 = 138543874;
      v16 = v12;
      v17 = 2112;
      v18 = v3;
      v19 = 2112;
      v20 = v13;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_ERROR, "%{public}@Failed to create remove pairing operation for pairing identity : %@ of accessory: %@", &v15, 0x20u);
    }

    objc_autoreleasePoolPop(v9);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (BOOL)mainWithError:(id *)a3
{
  v40 = *MEMORY[0x277D85DE8];
  v5 = [(HMDBackgroundOperation *)self homeManager];
  v6 = [(HMDAccessoryBackgroundOperation *)self accessoryOperationStatus];
  v7 = objc_opt_class();
  v8 = [(HMDAccessoryBackgroundOperation *)self accessoryUUID];
  v9 = [v7 findAccessoryUsing:v8 homeManager:v5];

  v10 = v9;
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

  if (v12 | v15)
  {
    v16 = v6 == 0;
  }

  else
  {
    v16 = 1;
  }

  v17 = v16;
  if (v16)
  {
    v18 = objc_autoreleasePoolPush();
    v19 = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      HMFGetLogIdentifier();
      v21 = v29 = v17;
      v22 = [(HMDAccessoryBackgroundOperation *)v19 accessoryUUID];
      [(HMDAccessoryBackgroundOperation *)v19 accessoryIdentifier];
      v23 = v31 = a3;
      [(HMDAccessoryBackgroundOperation *)v19 homeUUID];
      v24 = v30 = v18;
      *buf = 138544130;
      v33 = v21;
      v34 = 2112;
      v35 = v22;
      v36 = 2112;
      v37 = v23;
      v38 = 2112;
      v39 = v24;
      _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_ERROR, "%{public}@Unable to run audit operation on accessory : %@/%@, for Home: %@", buf, 0x2Au);

      v18 = v30;
      a3 = v31;

      v17 = v29;
    }

    objc_autoreleasePoolPop(v18);
    if (a3)
    {
      *a3 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
    }
  }

  else if (v6 != 1)
  {
    if (v12)
    {
      v25 = [(HMDAuditAccessoryPairingOperation *)self getPairingsFromAccessory:v12];
    }

    else
    {
      if (!v15)
      {
        v26 = 0;
        goto LABEL_25;
      }

      v25 = [(HMDAuditAccessoryPairingOperation *)self getPairingsFromAirPlayAccessory:v15];
    }

    v26 = v25;
LABEL_25:
    [(HMDAuditAccessoryPairingOperation *)self auditPairings:v26 forAccessory:v13];
  }

  v27 = *MEMORY[0x277D85DE8];
  return v17 ^ 1;
}

- (HMDAuditAccessoryPairingOperation)initWithAccessoryUUID:(id)a3 accessoryIdentifier:(id)a4 homeUUIDWhereAccessoryWasPaired:(id)a5
{
  v26 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v8)
  {
    _HMFPreconditionFailure();
LABEL_10:
    _HMFPreconditionFailure();
  }

  if (!v9)
  {
    goto LABEL_10;
  }

  v11 = v10;
  if (v10)
  {
    v19.receiver = self;
    v19.super_class = HMDAuditAccessoryPairingOperation;
    v12 = [(HMDAccessoryBackgroundOperation *)&v19 initWithAccessoryUUID:v8 accessoryIdentifier:v9 homeUUIDWhereAccessoryWasPaired:v10 userData:MEMORY[0x277CBEC10]];
    v13 = v12;
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    v12 = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      *buf = 138543874;
      v21 = v16;
      v22 = 2112;
      v23 = v8;
      v24 = 2112;
      v25 = v9;
      _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_ERROR, "%{public}@Accessory is not associated with a home, cannot create audit accessory pairing operation for %@/%@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v14);
    v13 = 0;
  }

  v17 = *MEMORY[0x277D85DE8];
  return v13;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t24_171291 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t24_171291, &__block_literal_global_35_171292);
  }

  v3 = logCategory__hmf_once_v25_171293;

  return v3;
}

void __48__HMDAuditAccessoryPairingOperation_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v25_171293;
  logCategory__hmf_once_v25_171293 = v1;
}

@end