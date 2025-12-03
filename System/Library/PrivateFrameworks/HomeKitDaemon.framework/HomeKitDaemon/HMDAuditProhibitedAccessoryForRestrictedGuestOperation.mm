@interface HMDAuditProhibitedAccessoryForRestrictedGuestOperation
+ (id)awaitForAllSettledFutures:(id)futures;
+ (id)getPairingsFromAccessory:(id)accessory flow:(id)flow;
+ (id)logCategory;
- (BOOL)_anyModificationsFailedExcludingDoesNotExistError:(id)error responseError:(id *)responseError;
- (BOOL)mainWithError:(id *)error;
- (HMDAuditProhibitedAccessoryForRestrictedGuestOperation)initWithAccessory:(id)accessory restrictedGuest:(id)guest;
- (NSUUID)guestUUID;
- (id)_auditHAPAccessory:(id)accessory forRestrictedGuest:(id)guest inHome:(id)home flow:(id)flow;
- (id)executeOperationWithHomeManager:(id)manager flow:(id)flow;
- (id)logIdentifier;
@end

@implementation HMDAuditProhibitedAccessoryForRestrictedGuestOperation

- (id)logIdentifier
{
  operationUUID = [(HMDBackgroundOperation *)self operationUUID];
  uUIDString = [operationUUID UUIDString];

  return uUIDString;
}

- (BOOL)_anyModificationsFailedExcludingDoesNotExistError:(id)error responseError:(id *)responseError
{
  errorCopy = error;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__155380;
  v14 = __Block_byref_object_dispose__155381;
  v15 = 0;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __122__HMDAuditProhibitedAccessoryForRestrictedGuestOperation__anyModificationsFailedExcludingDoesNotExistError_responseError___block_invoke;
  v9[3] = &unk_27867BB48;
  v9[4] = &v10;
  [errorCopy hmf_enumerateWithAutoreleasePoolUsingBlock:v9];
  v6 = v11[5];
  if (v6)
  {
    v6 = v6;
    *responseError = v6;
  }

  v7 = v6 != 0;
  _Block_object_dispose(&v10, 8);

  return v7;
}

void __122__HMDAuditProhibitedAccessoryForRestrictedGuestOperation__anyModificationsFailedExcludingDoesNotExistError_responseError___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v15 = a2;
  v6 = [v15 error];
  if (v6)
  {
    v7 = v6;
    v8 = [v15 error];
    v9 = [v8 domain];
    if ([v9 isEqualToString:*MEMORY[0x277CCFD28]])
    {
      v10 = [v15 error];
      v11 = [v10 code];

      if (v11 == 2606)
      {
        goto LABEL_7;
      }
    }

    else
    {
    }

    v12 = [v15 error];
    v13 = *(*(a1 + 32) + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = v12;

    *a4 = 1;
  }

LABEL_7:
}

- (id)_auditHAPAccessory:(id)accessory forRestrictedGuest:(id)guest inHome:(id)home flow:(id)flow
{
  v82 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  guestCopy = guest;
  homeCopy = home;
  flowCopy = flow;
  v14 = objc_autoreleasePoolPush();
  selfCopy = self;
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = HMFGetLogIdentifier();
    uUID = [flowCopy UUID];
    [guestCopy shortDescription];
    v66 = selfCopy;
    v19 = flowCopy;
    v20 = guestCopy;
    v22 = v21 = homeCopy;
    shortDescription = [accessoryCopy shortDescription];
    *buf = 138544130;
    *&buf[4] = v17;
    v76 = 2112;
    v77 = uUID;
    v78 = 2112;
    v79 = v22;
    v80 = 2112;
    v81 = shortDescription;
    _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Attempting to remove restricted guest [%@] from the HAP accessory [%@]", buf, 0x2Au);

    homeCopy = v21;
    guestCopy = v20;
    flowCopy = v19;
    selfCopy = v66;
  }

  objc_autoreleasePoolPop(v14);
  array = [MEMORY[0x277CBEB18] array];
  if (![accessoryCopy supportsAccessCode])
  {
    goto LABEL_9;
  }

  accessCode = [guestCopy accessCode];

  if (!accessCode)
  {
    goto LABEL_9;
  }

  v26 = objc_autoreleasePoolPush();
  v27 = selfCopy;
  v28 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
  {
    v29 = HMFGetLogIdentifier();
    [flowCopy UUID];
    v67 = selfCopy;
    v30 = accessoryCopy;
    v31 = flowCopy;
    v32 = guestCopy;
    v34 = v33 = homeCopy;
    *buf = 138543618;
    *&buf[4] = v29;
    v76 = 2112;
    v77 = v34;
    _os_log_impl(&dword_229538000, v28, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Starting audit access code removal", buf, 0x16u);

    homeCopy = v33;
    guestCopy = v32;
    flowCopy = v31;
    accessoryCopy = v30;
    selfCopy = v67;
  }

  objc_autoreleasePoolPop(v26);
  accessCodeManager = [homeCopy accessCodeManager];
  if (accessCodeManager)
  {
    v36 = accessCodeManager;
    accessCode2 = [guestCopy accessCode];
    v37 = [v36 removeAccessCode:accessCode2 fromHAPAccessory:accessoryCopy flow:flowCopy];
    v73[0] = MEMORY[0x277D85DD0];
    v73[1] = 3221225472;
    v73[2] = __108__HMDAuditProhibitedAccessoryForRestrictedGuestOperation__auditHAPAccessory_forRestrictedGuest_inHome_flow___block_invoke;
    v73[3] = &unk_278683980;
    v73[4] = v27;
    v74 = flowCopy;
    v38 = [v37 flatMap:v73];
    [v38 hmfFuture];
    v39 = selfCopy;
    v40 = accessoryCopy;
    v41 = flowCopy;
    v42 = guestCopy;
    v44 = v43 = homeCopy;
    [array addObject:v44];

    homeCopy = v43;
    guestCopy = v42;
    flowCopy = v41;
    accessoryCopy = v40;
    selfCopy = v39;

LABEL_9:
    if ([accessoryCopy supportsWalletKey])
    {
      v45 = objc_autoreleasePoolPush();
      v46 = selfCopy;
      v47 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
      {
        v48 = HMFGetLogIdentifier();
        [flowCopy UUID];
        v49 = accessoryCopy;
        v50 = flowCopy;
        v51 = guestCopy;
        v53 = v52 = homeCopy;
        *buf = 138543618;
        *&buf[4] = v48;
        v76 = 2112;
        v77 = v53;
        _os_log_impl(&dword_229538000, v47, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Starting audit removal of pairing key", buf, 0x16u);

        homeCopy = v52;
        guestCopy = v51;
        flowCopy = v50;
        accessoryCopy = v49;
      }

      objc_autoreleasePoolPop(v45);
      *buf = 0;
      v54 = [MEMORY[0x277D0F7C0] futureWithPromise:buf];
      [array addObject:v54];

      v55 = dispatch_get_global_queue(0, 0);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __108__HMDAuditProhibitedAccessoryForRestrictedGuestOperation__auditHAPAccessory_forRestrictedGuest_inHome_flow___block_invoke_43;
      block[3] = &unk_2786891E0;
      block[4] = v46;
      v70 = accessoryCopy;
      v71 = flowCopy;
      v72 = *buf;
      dispatch_async(v55, block);
    }

    v56 = [objc_opt_class() awaitForAllSettledFutures:array];
    goto LABEL_14;
  }

  v59 = objc_autoreleasePoolPush();
  v60 = v27;
  v61 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
  {
    v62 = HMFGetLogIdentifier();
    uUID2 = [flowCopy UUID];
    *buf = 138543618;
    *&buf[4] = v62;
    v76 = 2112;
    v77 = uUID2;
    _os_log_impl(&dword_229538000, v61, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Cannot attempt to remove access code because accessCodeManager is nil", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v59);
  v64 = MEMORY[0x277D0F7C0];
  v65 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
  v56 = [v64 futureWithError:v65];

LABEL_14:
  v57 = *MEMORY[0x277D85DE8];

  return v56;
}

id __108__HMDAuditProhibitedAccessoryForRestrictedGuestOperation__auditHAPAccessory_forRestrictedGuest_inHome_flow___block_invoke(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  v19 = 0;
  v5 = [v4 _anyModificationsFailedExcludingDoesNotExistError:v3 responseError:&v19];
  v6 = v19;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  v10 = v9;
  if (v5)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v12 = [*(a1 + 40) UUID];
      *buf = 138543874;
      v21 = v11;
      v22 = 2112;
      v23 = v12;
      v24 = 2112;
      v25 = v6;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] At least one modification response had an error [%@] that isn't HMErrorCodePrivateAccessCodeIdentifierDoesNotExist, so operation did not succeed.", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
    v13 = [MEMORY[0x277D2C900] futureWithError:v6];
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      v15 = [*(a1 + 40) UUID];
      *buf = 138543618;
      v21 = v14;
      v22 = 2112;
      v23 = v15;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Access code has been removed on accessory", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    v13 = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  v16 = v13;

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

void __108__HMDAuditProhibitedAccessoryForRestrictedGuestOperation__auditHAPAccessory_forRestrictedGuest_inHome_flow___block_invoke_43(id *a1)
{
  v39 = *MEMORY[0x277D85DE8];
  v2 = a1[4];
  v3 = [objc_opt_class() getPairingsFromAccessory:a1[5] flow:a1[6]];
  v4 = v3;
  if (!v3)
  {
    v25 = a1[7];
    v14 = [MEMORY[0x277CCA9B8] hmErrorWithCode:4];
    [v25 rejectWithError:v14];
LABEL_13:

    goto LABEL_17;
  }

  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __108__HMDAuditProhibitedAccessoryForRestrictedGuestOperation__auditHAPAccessory_forRestrictedGuest_inHome_flow___block_invoke_2;
  v32[3] = &unk_2786864C8;
  v32[4] = a1[4];
  v5 = [v3 na_any:v32];
  v6 = objc_autoreleasePoolPush();
  v7 = a1[4];
  v8 = HMFGetOSLogHandle();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_INFO);
  if (v5)
  {
    if (v9)
    {
      v10 = HMFGetLogIdentifier();
      v11 = [a1[6] UUID];
      v12 = a1[5];
      *buf = 138543874;
      v34 = v10;
      v35 = 2112;
      v36 = v11;
      v37 = 2112;
      v38 = v12;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Attempting to remove restricted guest pairing from the HAP accessory : %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v6);
    v30.receiver = a1[4];
    v30.super_class = HMDAuditProhibitedAccessoryForRestrictedGuestOperation;
    v31 = 0;
    v13 = objc_msgSendSuper2(&v30, sel_mainWithError_, &v31);
    v14 = v31;
    if ((v13 & 1) == 0)
    {
      v15 = objc_autoreleasePoolPush();
      v16 = a1[4];
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = HMFGetLogIdentifier();
        v19 = [a1[6] UUID];
        *buf = 138543874;
        v34 = v18;
        v35 = 2112;
        v36 = v19;
        v37 = 2112;
        v38 = v14;
        _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to remove pairing with error: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v15);
      [a1[7] rejectWithError:v14];
    }

    v20 = objc_autoreleasePoolPush();
    v21 = a1[4];
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = HMFGetLogIdentifier();
      v24 = [a1[6] UUID];
      *buf = 138543618;
      v34 = v23;
      v35 = 2112;
      v36 = v24;
      _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Successfully removed pairing", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v20);
    [a1[7] fulfillWithNoValue];
    goto LABEL_13;
  }

  if (v9)
  {
    v26 = HMFGetLogIdentifier();
    v27 = [a1[6] UUID];
    v28 = [a1[5] shortDescription];
    *buf = 138543874;
    v34 = v26;
    v35 = 2112;
    v36 = v27;
    v37 = 2112;
    v38 = v28;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Restricted guest's pairing is not on the Accessory: %@, nothing to remove.", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v6);
  [a1[7] fulfillWithNoValue];
LABEL_17:

  v29 = *MEMORY[0x277D85DE8];
}

uint64_t __108__HMDAuditProhibitedAccessoryForRestrictedGuestOperation__auditHAPAccessory_forRestrictedGuest_inHome_flow___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [*(a1 + 32) pairingIdentifierToRemove];
  v5 = [v3 isEqualToString:v4];

  return v5;
}

- (id)executeOperationWithHomeManager:(id)manager flow:(id)flow
{
  v121 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  flowCopy = flow;
  [(HMDBackgroundOperation *)self setHomeManager:managerCopy];
  v8 = objc_opt_new();
  userData = [(HMDBackgroundOperation *)self userData];
  v10 = [userData objectForKeyedSubscript:@"sharedUserUUIDKey"];

  v104 = v10;
  v11 = [objc_opt_class() findUserWithUUID:v10 fromHomeManager:managerCopy];
  v12 = objc_opt_class();
  accessoryUUID = [(HMDAccessoryBackgroundOperation *)self accessoryUUID];
  v14 = [v12 findAccessoryUsing:accessoryUUID homeManager:managerCopy];

  v15 = v14;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  v17 = v16;

  accessoryOperationStatus = [(HMDAccessoryBackgroundOperation *)self accessoryOperationStatus];
  if (v17)
  {
    v19 = v11 == 0;
  }

  else
  {
    v19 = 1;
  }

  if (v19 || accessoryOperationStatus == 0)
  {
    v21 = objc_autoreleasePoolPush();
    selfCopy = self;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = HMFGetLogIdentifier();
      [flowCopy UUID];
      v25 = v92 = flowCopy;
      [(HMDAccessoryBackgroundOperation *)selfCopy accessoryUUID];
      v97 = v17;
      v26 = v15;
      v27 = managerCopy;
      v28 = v8;
      v30 = v29 = v11;
      *buf = 138543874;
      v114 = v24;
      v115 = 2112;
      v116 = v25;
      v117 = 2112;
      v118 = v30;
      _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Required parameters does not exist to properly execute this operation : [%@]", buf, 0x20u);

      v11 = v29;
      v8 = v28;
      managerCopy = v27;
      v15 = v26;
      v17 = v97;

      flowCopy = v92;
    }

    objc_autoreleasePoolPop(v21);
    v31 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
    [v8 setError:v31];

    [v8 setShouldReschedule:1];
    goto LABEL_32;
  }

  if (accessoryOperationStatus == 1)
  {
    v32 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v34 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      v35 = HMFGetLogIdentifier();
      [v15 shortDescription];
      v36 = v93 = flowCopy;
      [v11 shortDescription];
      v98 = v17;
      v38 = v37 = v11;
      *buf = 138543874;
      v114 = v35;
      v115 = 2112;
      v116 = v36;
      v117 = 2112;
      v118 = v38;
      _os_log_impl(&dword_229538000, v34, OS_LOG_TYPE_DEFAULT, "%{public}@For the accessory [%@] with user [%@], this operation can never successfully run in the future. Hence marking this operation as finished.", buf, 0x20u);

      v11 = v37;
      v17 = v98;

      flowCopy = v93;
    }

    objc_autoreleasePoolPop(v32);
    v39 = MEMORY[0x277CCA9B8];
    v40 = 20;
LABEL_31:
    v71 = [v39 hmErrorWithCode:v40];
    [v8 setError:v71];

LABEL_32:
    v59 = [MEMORY[0x277D0F7C0] futureWithValue:v8];
    goto LABEL_33;
  }

  if (([v17 supportsAnyInPersonAccess] & 1) == 0)
  {
    v61 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v63 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v63, OS_LOG_TYPE_INFO))
    {
      v64 = HMFGetLogIdentifier();
      [flowCopy UUID];
      v65 = v95 = flowCopy;
      [v15 shortDescription];
      v101 = v17;
      v66 = v15;
      v67 = managerCopy;
      v68 = v8;
      v70 = v69 = v11;
      *buf = 138543874;
      v114 = v64;
      v115 = 2112;
      v116 = v65;
      v117 = 2112;
      v118 = v70;
      _os_log_impl(&dword_229538000, v63, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Accessory [%@] does not support features that enforce access directly. Hence marking this operation as finished.", buf, 0x20u);

      v11 = v69;
      v8 = v68;
      managerCopy = v67;
      v15 = v66;
      v17 = v101;

      flowCopy = v95;
    }

    objc_autoreleasePoolPop(v61);
    v39 = MEMORY[0x277CCA9B8];
    v40 = 48;
    goto LABEL_31;
  }

  home = [v17 home];
  if (home)
  {
    isRestrictedGuest = [v11 isRestrictedGuest];
    v42 = objc_autoreleasePoolPush();
    selfCopy4 = self;
    v44 = HMFGetOSLogHandle();
    v45 = os_log_type_enabled(v44, OS_LOG_TYPE_INFO);
    if (isRestrictedGuest)
    {
      if (v45)
      {
        v46 = HMFGetLogIdentifier();
        [flowCopy UUID];
        v47 = v90 = v42;
        [v17 shortDescription];
        v48 = v94 = flowCopy;
        [v11 shortDescription];
        v99 = v17;
        v50 = v49 = v11;
        *buf = 138544130;
        v114 = v46;
        v115 = 2112;
        v116 = v47;
        v117 = 2112;
        v118 = v48;
        v119 = 2112;
        v120 = v50;
        _os_log_impl(&dword_229538000, v44, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] All checks are completed, now attempting to audit prohibited accessory [%@] with restricted guest [%@]", buf, 0x2Au);

        v11 = v49;
        v17 = v99;

        flowCopy = v94;
        v42 = v90;
      }

      objc_autoreleasePoolPop(v42);
      if ([v17 supportsCHIP])
      {
        v51 = objc_autoreleasePoolPush();
        v52 = selfCopy4;
        v53 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
        {
          v54 = HMFGetLogIdentifier();
          [flowCopy UUID];
          v100 = v11;
          v56 = v55 = flowCopy;
          *buf = 138543874;
          v114 = v54;
          v115 = 2112;
          v116 = v56;
          v117 = 2112;
          v118 = v17;
          _os_log_impl(&dword_229538000, v53, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Going to remove restricted guest from the matter accessory : %@", buf, 0x20u);

          flowCopy = v55;
          v11 = v100;
        }

        objc_autoreleasePoolPop(v51);
        v57 = home;
        v58 = [home removeUser:v11 fromAccessory:v17];
        v107[0] = MEMORY[0x277D85DD0];
        v107[1] = 3221225472;
        v107[2] = __95__HMDAuditProhibitedAccessoryForRestrictedGuestOperation_executeOperationWithHomeManager_flow___block_invoke_38;
        v107[3] = &unk_278689CB0;
        v108 = v8;
        v105[0] = MEMORY[0x277D85DD0];
        v105[1] = 3221225472;
        v105[2] = __95__HMDAuditProhibitedAccessoryForRestrictedGuestOperation_executeOperationWithHomeManager_flow___block_invoke_2_39;
        v105[3] = &unk_278689CD8;
        v106 = v108;
        v59 = [v58 then:v107 orRecover:v105];

        v60 = v108;
      }

      else
      {
        v57 = home;
        v58 = [(HMDAuditProhibitedAccessoryForRestrictedGuestOperation *)selfCopy4 _auditHAPAccessory:v17 forRestrictedGuest:v11 inHome:home flow:flowCopy];
        v111[0] = MEMORY[0x277D85DD0];
        v111[1] = 3221225472;
        v111[2] = __95__HMDAuditProhibitedAccessoryForRestrictedGuestOperation_executeOperationWithHomeManager_flow___block_invoke;
        v111[3] = &unk_278689CB0;
        v112 = v8;
        v109[0] = MEMORY[0x277D85DD0];
        v109[1] = 3221225472;
        v109[2] = __95__HMDAuditProhibitedAccessoryForRestrictedGuestOperation_executeOperationWithHomeManager_flow___block_invoke_2;
        v109[3] = &unk_278689CD8;
        v110 = v112;
        v59 = [v58 then:v111 orRecover:v109];

        v60 = v112;
      }

      goto LABEL_45;
    }

    if (v45)
    {
      v85 = HMFGetLogIdentifier();
      [flowCopy UUID];
      v103 = v17;
      v86 = v11;
      v88 = v87 = flowCopy;
      *buf = 138543874;
      v114 = v85;
      v115 = 2112;
      v116 = v88;
      v117 = 2112;
      v118 = v86;
      _os_log_impl(&dword_229538000, v44, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Cannot proceed with removing the user as it is not restricted guest. : %@", buf, 0x20u);

      flowCopy = v87;
      v11 = v86;
      v17 = v103;
    }

    objc_autoreleasePoolPop(v42);
    v89 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
    [v8 setError:v89];
  }

  else
  {
    v74 = objc_autoreleasePoolPush();
    selfCopy5 = self;
    v76 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
    {
      v77 = HMFGetLogIdentifier();
      [flowCopy UUID];
      v78 = v96 = flowCopy;
      [v15 shortDescription];
      v102 = v17;
      v79 = v15;
      v80 = managerCopy;
      v81 = v8;
      v83 = v82 = v11;
      *buf = 138543874;
      v114 = v77;
      v115 = 2112;
      v116 = v78;
      v117 = 2112;
      v118 = v83;
      _os_log_impl(&dword_229538000, v76, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Accessory [%@] does not have a home", buf, 0x20u);

      v11 = v82;
      v8 = v81;
      managerCopy = v80;
      v15 = v79;
      v17 = v102;

      flowCopy = v96;
    }

    objc_autoreleasePoolPop(v74);
    v84 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    [v8 setError:v84];

    [v8 setShouldReschedule:1];
  }

  v59 = [MEMORY[0x277D0F7C0] futureWithValue:v8];
  v57 = home;
LABEL_45:

LABEL_33:
  v72 = *MEMORY[0x277D85DE8];

  return v59;
}

uint64_t __95__HMDAuditProhibitedAccessoryForRestrictedGuestOperation_executeOperationWithHomeManager_flow___block_invoke_2(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setError:a2];
  [*(a1 + 32) setShouldReschedule:1];

  return 1;
}

uint64_t __95__HMDAuditProhibitedAccessoryForRestrictedGuestOperation_executeOperationWithHomeManager_flow___block_invoke_2_39(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setError:a2];
  [*(a1 + 32) setShouldReschedule:1];

  return 1;
}

- (NSUUID)guestUUID
{
  userData = [(HMDBackgroundOperation *)self userData];
  v3 = [userData objectForKeyedSubscript:@"sharedUserUUIDKey"];

  if (v3)
  {

    return v3;
  }

  else
  {
    v5 = _HMFPreconditionFailure();
    return [(HMDAuditProhibitedAccessoryForRestrictedGuestOperation *)v5 mainWithError:v6, v7];
  }
}

- (BOOL)mainWithError:(id *)error
{
  v65 = *MEMORY[0x277D85DE8];
  internalOnlyInitializer = [MEMORY[0x277D0F7B8] internalOnlyInitializer];
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    uUID = [internalOnlyInitializer UUID];
    accessoryUUID = [(HMDAccessoryBackgroundOperation *)selfCopy accessoryUUID];
    userData = [(HMDBackgroundOperation *)selfCopy userData];
    v12 = [userData objectForKeyedSubscript:@"sharedUserUUIDKey"];
    *buf = 138544130;
    v56 = v8;
    v57 = 2112;
    v58 = uUID;
    v59 = 2112;
    v60 = accessoryUUID;
    v61 = 2112;
    v62 = v12;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@[NewFlow: %@ {Feature:Restricted Guest}] Performing audit for prohibited accessory [%@] for restricted guest [%@]", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v5);
  v13 = objc_alloc(MEMORY[0x277D0F7A8]);
  v14 = dispatch_get_global_queue(21, 0);
  v15 = [v13 initWithQueue:v14];

  v16 = MEMORY[0x277D0F7C0];
  v53[0] = MEMORY[0x277D85DD0];
  v53[1] = 3221225472;
  v53[2] = __72__HMDAuditProhibitedAccessoryForRestrictedGuestOperation_mainWithError___block_invoke;
  v53[3] = &unk_2786898D8;
  v53[4] = selfCopy;
  v17 = internalOnlyInitializer;
  v54 = v17;
  v18 = [v16 inContext:v15 perform:v53];
  v51 = 0;
  v52 = 0;
  v19 = [v18 waitForResult:&v52 orError:&v51 withTimeout:1.2e11];
  v20 = objc_autoreleasePoolPush();
  v21 = selfCopy;
  v22 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
  {
    HMFGetLogIdentifier();
    v49 = v18;
    v24 = v23 = v15;
    uUID2 = [v17 UUID];
    accessoryUUID2 = [(HMDAccessoryBackgroundOperation *)v21 accessoryUUID];
    v27 = HMFBooleanToString();
    *buf = 138544386;
    v56 = v24;
    v57 = 2112;
    v58 = uUID2;
    v59 = 2112;
    v60 = accessoryUUID2;
    v61 = 2112;
    v62 = v27;
    v63 = 2112;
    v64 = v51;
    _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Finished removing the restricted guest from [%@] resulted in outcome: [%@] with error: [%@]", buf, 0x34u);

    v15 = v23;
    v18 = v49;
  }

  objc_autoreleasePoolPop(v20);
  if ((v19 & 1) == 0)
  {
    v35 = objc_autoreleasePoolPush();
    v36 = v21;
    v37 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      v38 = HMFGetLogIdentifier();
      uUID3 = [v17 UUID];
      *buf = 138543618;
      v56 = v38;
      v57 = 2112;
      v58 = uUID3;
      _os_log_impl(&dword_229538000, v37, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Operation timed out", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v35);
    errorCopy2 = error;
    if (error)
    {
      v34 = [MEMORY[0x277CCA9B8] hmErrorWithCode:8];
      goto LABEL_15;
    }

LABEL_16:
    LOBYTE(v40) = 0;
    goto LABEL_24;
  }

  if (v51)
  {
    v28 = objc_autoreleasePoolPush();
    v29 = v21;
    v30 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      v31 = HMFGetLogIdentifier();
      uUID4 = [v17 UUID];
      *buf = 138543874;
      v56 = v31;
      v57 = 2112;
      v58 = uUID4;
      v59 = 2112;
      v60 = v51;
      _os_log_impl(&dword_229538000, v30, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Operation should not have resulted in a rejected promise. File a radar. Operation failed to succeed with error: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v28);
    errorCopy2 = error;
    if (error)
    {
      v34 = v51;
LABEL_15:
      LOBYTE(v40) = 0;
      *errorCopy2 = v34;
      goto LABEL_24;
    }

    goto LABEL_16;
  }

  error = [v52 error];

  if (error)
  {
    v42 = objc_autoreleasePoolPush();
    v43 = v21;
    v44 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      v45 = HMFGetLogIdentifier();
      uUID5 = [v17 UUID];
      *buf = 138543874;
      v56 = v45;
      v57 = 2112;
      v58 = uUID5;
      v59 = 2112;
      v60 = v51;
      _os_log_impl(&dword_229538000, v44, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Operation failed to succeed with error: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v42);
    if (error)
    {
      *error = v51;
    }

    v40 = [v52 shouldReschedule] ^ 1;
  }

  else
  {
    LOBYTE(v40) = 1;
  }

LABEL_24:

  v47 = *MEMORY[0x277D85DE8];
  return v40;
}

HMDAuditProhibitedAccessoryForRestrictedGuestOperation *__72__HMDAuditProhibitedAccessoryForRestrictedGuestOperation_mainWithError___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 homeManager];
  v4 = [v2 executeOperationWithHomeManager:v3 flow:*(a1 + 40)];
  if (v4)
  {
    v5 = v4;

    return 3;
  }

  else
  {
    v7 = _HMFPreconditionFailure();
    return [(HMDAuditProhibitedAccessoryForRestrictedGuestOperation *)v7 initWithAccessory:v8 restrictedGuest:v9, v10];
  }
}

- (HMDAuditProhibitedAccessoryForRestrictedGuestOperation)initWithAccessory:(id)accessory restrictedGuest:(id)guest
{
  v32 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  guestCopy = guest;
  uuid = [accessoryCopy uuid];
  identifier = [accessoryCopy identifier];
  home = [accessoryCopy home];

  if (home)
  {
    home2 = [accessoryCopy home];
    uuid2 = [home2 uuid];
    pairingIdentity = [guestCopy pairingIdentity];
    v24 = @"sharedUserUUIDKey";
    uuid3 = [guestCopy uuid];
    v25 = uuid3;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
    v23.receiver = self;
    v23.super_class = HMDAuditProhibitedAccessoryForRestrictedGuestOperation;
    selfCopy = [(HMDRemoveAccessoryPairingOperation *)&v23 initWithAccessory:uuid accessoryIdentifier:identifier homeUUIDWhereAccessoryWasPaired:uuid2 isOwnerIdentity:0 identityToRemove:pairingIdentity userData:v15];

    v17 = selfCopy;
  }

  else
  {
    v18 = objc_autoreleasePoolPush();
    selfCopy = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543874;
      v27 = v20;
      v28 = 2112;
      v29 = uuid;
      v30 = 2112;
      v31 = identifier;
      _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_ERROR, "%{public}@Accessory is not associated with a home, cannot create add accessory pairing operation for accessory: %@/%@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v18);
    v17 = 0;
  }

  v21 = *MEMORY[0x277D85DE8];
  return v17;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t32_155430 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t32_155430, &__block_literal_global_59_155431);
  }

  v3 = logCategory__hmf_once_v33_155432;

  return v3;
}

void __69__HMDAuditProhibitedAccessoryForRestrictedGuestOperation_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v33_155432;
  logCategory__hmf_once_v33_155432 = v1;
}

+ (id)awaitForAllSettledFutures:(id)futures
{
  v3 = [MEMORY[0x277D0F7C0] allSettled:futures];
  v4 = [v3 then:&__block_literal_global_155437];

  return v4;
}

uint64_t __84__HMDAuditProhibitedAccessoryForRestrictedGuestOperation_awaitForAllSettledFutures___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 na_firstObjectPassingTest:&__block_literal_global_57_155439];
  v3 = v2;
  if (v2)
  {
    v2;
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

uint64_t __84__HMDAuditProhibitedAccessoryForRestrictedGuestOperation_awaitForAllSettledFutures___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

+ (id)getPairingsFromAccessory:(id)accessory flow:(id)flow
{
  v54 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  flowCopy = flow;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    uUID = [flowCopy UUID];
    shortDescription = [accessoryCopy shortDescription];
    *buf = 138543874;
    *&buf[4] = v11;
    *&buf[12] = 2112;
    *&buf[14] = uUID;
    *&buf[22] = 2112;
    v51 = shortDescription;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Get pairings from accessory : %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  v14 = dispatch_group_create();
  dispatch_group_enter(v14);
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v51 = __Block_byref_object_copy__155380;
  v52 = __Block_byref_object_dispose__155381;
  array = [MEMORY[0x277CBEB18] array];
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __88__HMDAuditProhibitedAccessoryForRestrictedGuestOperation_getPairingsFromAccessory_flow___block_invoke;
  v38[3] = &unk_27867BB98;
  v43 = selfCopy;
  v39 = flowCopy;
  v40 = accessoryCopy;
  v41 = v14;
  v42 = buf;
  v29 = MEMORY[0x277D85DD0];
  v30 = 3221225472;
  v31 = __88__HMDAuditProhibitedAccessoryForRestrictedGuestOperation_getPairingsFromAccessory_flow___block_invoke_52;
  v32 = &unk_278685418;
  v37 = selfCopy;
  v15 = v39;
  v33 = v15;
  v16 = v40;
  v34 = v16;
  v36 = buf;
  v17 = v41;
  v35 = v17;
  [v16 performOperation:7 linkType:0 operationBlock:v38 errorBlock:&v29];
  v18 = dispatch_time(0, 120000000000);
  if (dispatch_group_wait(v17, v18))
  {
    v19 = objc_autoreleasePoolPush();
    v20 = selfCopy;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier();
      uUID2 = [v15 UUID];
      shortDescription2 = [v16 shortDescription];
      *v44 = 138543874;
      v45 = v22;
      v46 = 2112;
      v47 = uUID2;
      v48 = 2112;
      v49 = shortDescription2;
      _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Timed out while getting list of pairings from the accessory : %@", v44, 0x20u);
    }

    objc_autoreleasePoolPop(v19);
    v25 = *(*&buf[8] + 40);
    *(*&buf[8] + 40) = 0;
  }

  v26 = *(*&buf[8] + 40);

  _Block_object_dispose(buf, 8);
  v27 = *MEMORY[0x277D85DE8];

  return v26;
}

void __88__HMDAuditProhibitedAccessoryForRestrictedGuestOperation_getPairingsFromAccessory_flow___block_invoke(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 server];
  if (v4)
  {
    v5 = dispatch_get_global_queue(-32768, 0);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __88__HMDAuditProhibitedAccessoryForRestrictedGuestOperation_getPairingsFromAccessory_flow___block_invoke_49;
    v16[3] = &unk_27867BB70;
    v20 = *(a1 + 64);
    v17 = *(a1 + 32);
    v18 = *(a1 + 40);
    v15 = *(a1 + 48);
    v6 = v15;
    v19 = v15;
    [v4 listPairingsWithCompletionQueue:v5 completionHandler:v16];
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 64);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v11 = [*(a1 + 32) UUID];
      v12 = [*(a1 + 40) shortDescription];
      *buf = 138543874;
      v22 = v10;
      v23 = 2112;
      v24 = v11;
      v25 = 2112;
      v26 = v12;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Unable to list pairing as there is no accessory server for accessory : %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
    dispatch_group_leave(*(a1 + 48));
    v13 = *(*(a1 + 56) + 8);
    v5 = *(v13 + 40);
    *(v13 + 40) = 0;
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __88__HMDAuditProhibitedAccessoryForRestrictedGuestOperation_getPairingsFromAccessory_flow___block_invoke_52(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 64);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = HMFGetLogIdentifier();
    v8 = [*(a1 + 32) UUID];
    v9 = [*(a1 + 40) shortDescription];
    v13 = 138543874;
    v14 = v7;
    v15 = 2112;
    v16 = v8;
    v17 = 2112;
    v18 = v9;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Unable to list pairings for accessory : %@", &v13, 0x20u);
  }

  objc_autoreleasePoolPop(v4);
  v10 = *(*(a1 + 56) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = 0;

  dispatch_group_leave(*(a1 + 48));
  v12 = *MEMORY[0x277D85DE8];
}

void __88__HMDAuditProhibitedAccessoryForRestrictedGuestOperation_getPairingsFromAccessory_flow___block_invoke_49(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 64);
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v11 = [*(a1 + 32) UUID];
    v12 = [*(a1 + 40) shortDescription];
    v14 = 138544386;
    v15 = v10;
    v16 = 2112;
    v17 = v11;
    v18 = 2112;
    v19 = v5;
    v20 = 2112;
    v21 = v12;
    v22 = 2112;
    v23 = v6;
    _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] HAP list pairing operation finished with: %@ for accessory: %@, error: %@", &v14, 0x34u);
  }

  objc_autoreleasePoolPop(v7);
  [*(*(*(a1 + 56) + 8) + 40) addObjectsFromArray:v5];
  dispatch_group_leave(*(a1 + 48));

  v13 = *MEMORY[0x277D85DE8];
}

@end