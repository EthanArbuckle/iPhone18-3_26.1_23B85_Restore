@interface HMDAuditAllowedAccessoryForRestrictedGuestOperation
+ (id)logCategory;
- (BOOL)_anyModificationsFailedExcludingAlreadyExistsError:(id)error responseError:(id *)responseError;
- (BOOL)mainWithError:(id *)error;
- (HMDAuditAllowedAccessoryForRestrictedGuestOperation)initWithAccessory:(id)accessory restrictedGuest:(id)guest;
- (NSUUID)guestUUID;
- (id)_auditHAPAccessory:(id)accessory forRestrictedGuest:(id)guest inHome:(id)home flow:(id)flow;
- (id)_auditMatterAccessory:(id)accessory forRestrictedGuest:(id)guest inHome:(id)home flow:(id)flow;
- (id)executeOperationWithHomeManager:(id)manager flow:(id)flow;
- (id)loadConfiguredCredentialsOnMatterAccessory:(id)accessory forUser:(id)user inHome:(id)home flow:(id)flow;
- (id)logIdentifier;
@end

@implementation HMDAuditAllowedAccessoryForRestrictedGuestOperation

- (id)logIdentifier
{
  operationUUID = [(HMDBackgroundOperation *)self operationUUID];
  uUIDString = [operationUUID UUIDString];

  return uUIDString;
}

- (BOOL)_anyModificationsFailedExcludingAlreadyExistsError:(id)error responseError:(id *)responseError
{
  errorCopy = error;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__119069;
  v14 = __Block_byref_object_dispose__119070;
  v15 = 0;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __120__HMDAuditAllowedAccessoryForRestrictedGuestOperation__anyModificationsFailedExcludingAlreadyExistsError_responseError___block_invoke;
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

void __120__HMDAuditAllowedAccessoryForRestrictedGuestOperation__anyModificationsFailedExcludingAlreadyExistsError_responseError___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v15 = a2;
  v6 = [v15 error];
  if (v6)
  {
    v7 = v6;
    v8 = [v15 error];
    if ([v8 code] == 2602)
    {
      v9 = [v15 error];
      v10 = [v9 domain];
      v11 = [v10 isEqualToString:*MEMORY[0x277CCFD28]];

      if (v11)
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
  v101 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  guestCopy = guest;
  homeCopy = home;
  flowCopy = flow;
  v13 = objc_autoreleasePoolPush();
  selfCopy = self;
  v15 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = HMFGetLogIdentifier();
    uUID = [flowCopy UUID];
    shortDescription = [guestCopy shortDescription];
    [accessoryCopy shortDescription];
    v19 = guestCopy;
    v20 = accessoryCopy;
    v22 = v21 = flowCopy;
    *buf = 138544130;
    *&buf[4] = v16;
    v95 = 2112;
    v96 = uUID;
    v97 = 2112;
    v98 = shortDescription;
    v99 = 2112;
    v100 = v22;
    _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Attempting to add restricted guest [%@] from the HAP accessory [%@]", buf, 0x2Au);

    flowCopy = v21;
    accessoryCopy = v20;
    guestCopy = v19;
  }

  objc_autoreleasePoolPop(v13);
  v23 = objc_opt_new();
  restrictedGuestAccessSettings = [guestCopy restrictedGuestAccessSettings];
  schedule = [restrictedGuestAccessSettings schedule];

  v26 = objc_autoreleasePoolPush();
  v27 = selfCopy;
  v28 = HMFGetOSLogHandle();
  v29 = os_log_type_enabled(v28, OS_LOG_TYPE_INFO);
  if (schedule)
  {
    if (v29)
    {
      v30 = HMFGetLogIdentifier();
      uUID2 = [flowCopy UUID];
      [guestCopy description];
      v76 = v27;
      v32 = v23;
      v33 = guestCopy;
      v35 = v34 = flowCopy;
      shortDescription2 = [accessoryCopy shortDescription];
      *buf = 138544130;
      *&buf[4] = v30;
      v95 = 2112;
      v96 = uUID2;
      v97 = 2112;
      v98 = v35;
      v99 = 2112;
      v100 = shortDescription2;
      _os_log_impl(&dword_229538000, v28, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Restricted Guest [%@] schedule is restricted so no credentials should be on the HAP accessory [%@]. Attempting to remove.", buf, 0x2Au);

      flowCopy = v34;
      guestCopy = v33;
      v23 = v32;
      v27 = v76;
    }

    objc_autoreleasePoolPop(v26);
    [v23 setCredentialsRemoved:1];
    array = [[HMDAuditProhibitedAccessoryForRestrictedGuestOperation alloc] initWithAccessory:accessoryCopy restrictedGuest:guestCopy];
    v38 = homeCopy;
    homeManager = [homeCopy homeManager];
    v40 = [(HMDAuditProhibitedAccessoryForRestrictedGuestOperation *)array executeOperationWithHomeManager:homeManager flow:flowCopy];
    v80[0] = MEMORY[0x277D85DD0];
    v80[1] = 3221225472;
    v80[2] = __105__HMDAuditAllowedAccessoryForRestrictedGuestOperation__auditHAPAccessory_forRestrictedGuest_inHome_flow___block_invoke_103;
    v80[3] = &unk_278678BC0;
    v81 = v23;
    v41 = [v40 then:v80];
  }

  else
  {
    v38 = homeCopy;
    if (v29)
    {
      v42 = HMFGetLogIdentifier();
      uUID3 = [flowCopy UUID];
      *buf = 138543618;
      *&buf[4] = v42;
      v95 = 2112;
      v96 = uUID3;
      _os_log_impl(&dword_229538000, v28, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Schedule is unrestricted, attempt to add credentials", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v26);
    array = [MEMORY[0x277CBEB18] array];
    if ([accessoryCopy supportsAccessCode])
    {
      accessCode = [guestCopy accessCode];

      if (accessCode)
      {
        v77 = v23;
        v45 = objc_autoreleasePoolPush();
        v46 = v27;
        v47 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
        {
          HMFGetLogIdentifier();
          v74 = v45;
          v49 = v48 = flowCopy;
          uUID4 = [v48 UUID];
          *buf = 138543618;
          *&buf[4] = v49;
          v95 = 2112;
          v96 = uUID4;
          _os_log_impl(&dword_229538000, v47, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Adding access codes if not on the accessory already", buf, 0x16u);

          flowCopy = v48;
          v45 = v74;
        }

        v69 = v46;
        objc_autoreleasePoolPop(v45);
        accessCodeManager = [homeCopy accessCodeManager];
        v51 = objc_alloc(MEMORY[0x277CD1648]);
        accessCode2 = [guestCopy accessCode];
        v71 = [v51 initWithStringValue:accessCode2];
        uuid = [guestCopy uuid];
        uuid2 = [accessoryCopy uuid];
        v93 = uuid2;
        v52 = [MEMORY[0x277CBEA60] arrayWithObjects:&v93 count:1];
        v53 = [accessCodeManager addNewAccessCode:v71 forUserWithUUID:uuid toAccessoriesWithUUIDs:v52 withRetries:1 flow:flowCopy];
        [v53 hmfFuture];
        v55 = v54 = flowCopy;
        v91[0] = MEMORY[0x277D85DD0];
        v91[1] = 3221225472;
        v91[2] = __105__HMDAuditAllowedAccessoryForRestrictedGuestOperation__auditHAPAccessory_forRestrictedGuest_inHome_flow___block_invoke;
        v91[3] = &unk_278678B98;
        v91[4] = v69;
        v92 = v54;
        v56 = [v55 then:v91];
        [(HMDAuditProhibitedAccessoryForRestrictedGuestOperation *)array addObject:v56];

        flowCopy = v54;
        v23 = v77;
      }
    }

    if ([accessoryCopy supportsWalletKey])
    {
      v57 = objc_autoreleasePoolPush();
      v58 = v27;
      v59 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v59, OS_LOG_TYPE_INFO))
      {
        v60 = HMFGetLogIdentifier();
        [flowCopy UUID];
        v78 = v23;
        v61 = guestCopy;
        v62 = accessoryCopy;
        v64 = v63 = flowCopy;
        *buf = 138543618;
        *&buf[4] = v60;
        v95 = 2112;
        v96 = v64;
        _os_log_impl(&dword_229538000, v59, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Starting add pairing key audit", buf, 0x16u);

        flowCopy = v63;
        accessoryCopy = v62;
        guestCopy = v61;
        v23 = v78;
      }

      objc_autoreleasePoolPop(v57);
      *buf = 0;
      v65 = [MEMORY[0x277D0F7C0] futureWithPromise:buf];
      [(HMDAuditProhibitedAccessoryForRestrictedGuestOperation *)array addObject:v65];

      v66 = dispatch_get_global_queue(0, 0);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __105__HMDAuditAllowedAccessoryForRestrictedGuestOperation__auditHAPAccessory_forRestrictedGuest_inHome_flow___block_invoke_95;
      block[3] = &unk_2786891E0;
      v87 = accessoryCopy;
      v88 = flowCopy;
      v89 = *buf;
      v90 = v58;
      dispatch_async(v66, block);
    }

    homeManager = [HMDAuditProhibitedAccessoryForRestrictedGuestOperation awaitForAllSettledFutures:array];
    v84[0] = MEMORY[0x277D85DD0];
    v84[1] = 3221225472;
    v84[2] = __105__HMDAuditAllowedAccessoryForRestrictedGuestOperation__auditHAPAccessory_forRestrictedGuest_inHome_flow___block_invoke_100;
    v84[3] = &unk_278689CB0;
    v85 = v23;
    v82[0] = MEMORY[0x277D85DD0];
    v82[1] = 3221225472;
    v82[2] = __105__HMDAuditAllowedAccessoryForRestrictedGuestOperation__auditHAPAccessory_forRestrictedGuest_inHome_flow___block_invoke_2_102;
    v82[3] = &unk_278689CD8;
    v83 = v85;
    v41 = [homeManager then:v84 orRecover:v82];

    v40 = v85;
  }

  v67 = *MEMORY[0x277D85DE8];

  return v41;
}

uint64_t __105__HMDAuditAllowedAccessoryForRestrictedGuestOperation__auditHAPAccessory_forRestrictedGuest_inHome_flow___block_invoke(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  v21 = 0;
  v5 = [v4 _anyModificationsFailedExcludingAlreadyExistsError:v3 responseError:&v21];
  v6 = v21;
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
      v23 = v11;
      v24 = 2112;
      v25 = v12;
      v26 = 2112;
      v27 = v6;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] At least one modification response had an error [%@] that isn't HMErrorCodePrivateAccessCodeDuplicate, so operation did not succeed.", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
    v13 = v6;
    v14 = v13;
    if (v13)
    {
      v15 = v13;
    }

    else
    {
      [MEMORY[0x277CCA9B8] hmfUnspecifiedError];
      objc_claimAutoreleasedReturnValue();
    }

    v18 = 2;
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      v17 = [*(a1 + 40) UUID];
      *buf = 138543618;
      v23 = v16;
      v24 = 2112;
      v25 = v17;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Access code has been added to the accessory", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    v18 = 1;
  }

  v19 = *MEMORY[0x277D85DE8];
  return v18;
}

void __105__HMDAuditAllowedAccessoryForRestrictedGuestOperation__auditHAPAccessory_forRestrictedGuest_inHome_flow___block_invoke_95(id *a1)
{
  v36 = *MEMORY[0x277D85DE8];
  v2 = [HMDAuditProhibitedAccessoryForRestrictedGuestOperation getPairingsFromAccessory:a1[4] flow:a1[5]];
  v3 = v2;
  if (!v2)
  {
    v11 = a1[6];
    v12 = [MEMORY[0x277CCA9B8] hmErrorWithCode:4];
    [v11 rejectWithError:v12];
LABEL_16:

    goto LABEL_17;
  }

  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __105__HMDAuditAllowedAccessoryForRestrictedGuestOperation__auditHAPAccessory_forRestrictedGuest_inHome_flow___block_invoke_2;
  v29[3] = &unk_2786864C8;
  v29[4] = a1[7];
  v4 = [v2 na_any:v29];
  v5 = objc_autoreleasePoolPush();
  v6 = a1[7];
  v7 = HMFGetOSLogHandle();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_INFO);
  if (!v4)
  {
    if (v8)
    {
      v13 = HMFGetLogIdentifier();
      v14 = a1[4];
      *buf = 138543618;
      v31 = v13;
      v32 = 2112;
      v33 = v14;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Going to add user pairing to the HAP accessory : %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    v27.receiver = a1[7];
    v27.super_class = HMDAuditAllowedAccessoryForRestrictedGuestOperation;
    v28 = 0;
    v15 = objc_msgSendSuper2(&v27, sel_mainWithError_, &v28);
    v12 = v28;
    if ((v15 & 1) == 0)
    {
      v16 = objc_autoreleasePoolPush();
      v17 = a1[7];
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = HMFGetLogIdentifier();
        v20 = [a1[5] UUID];
        *buf = 138543874;
        v31 = v19;
        v32 = 2112;
        v33 = v20;
        v34 = 2112;
        v35 = v12;
        _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to add pairing with error: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v16);
      [a1[6] rejectWithError:v12];
    }

    v21 = objc_autoreleasePoolPush();
    v22 = a1[7];
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = HMFGetLogIdentifier();
      v25 = [a1[5] UUID];
      *buf = 138543618;
      v31 = v24;
      v32 = 2112;
      v33 = v25;
      _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Successfully added pairing", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v21);
    [a1[6] fulfillWithNoValue];
    goto LABEL_16;
  }

  if (v8)
  {
    v9 = HMFGetLogIdentifier();
    v10 = [a1[4] shortDescription];
    *buf = 138543618;
    v31 = v9;
    v32 = 2112;
    v33 = v10;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@User's pairing is already on the Accessory: %@, nothing to add.", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  [a1[6] fulfillWithNoValue];
LABEL_17:

  v26 = *MEMORY[0x277D85DE8];
}

uint64_t __105__HMDAuditAllowedAccessoryForRestrictedGuestOperation__auditHAPAccessory_forRestrictedGuest_inHome_flow___block_invoke_2_102(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 setShouldReschedule:1];
  [*(a1 + 32) setError:v4];

  return 1;
}

uint64_t __105__HMDAuditAllowedAccessoryForRestrictedGuestOperation__auditHAPAccessory_forRestrictedGuest_inHome_flow___block_invoke_103(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) setShouldReschedule:{objc_msgSend(v3, "shouldReschedule")}];
  v4 = [v3 error];

  [*(a1 + 32) setError:v4];
  return 1;
}

uint64_t __105__HMDAuditAllowedAccessoryForRestrictedGuestOperation__auditHAPAccessory_forRestrictedGuest_inHome_flow___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [*(a1 + 32) userData];
  v5 = [v4 objectForKeyedSubscript:@"newPairingIdentifier"];
  v6 = [v3 isEqualToString:v5];

  return v6;
}

- (id)loadConfiguredCredentialsOnMatterAccessory:(id)accessory forUser:(id)user inHome:(id)home flow:(id)flow
{
  v84 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  userCopy = user;
  homeCopy = home;
  flowCopy = flow;
  v14 = objc_autoreleasePoolPush();
  selfCopy = self;
  v16 = HMFGetOSLogHandle();
  v68 = selfCopy;
  v70 = accessoryCopy;
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = HMFGetLogIdentifier();
    uUID = [flowCopy UUID];
    shortDescription = [accessoryCopy shortDescription];
    [userCopy shortDescription];
    v21 = v20 = userCopy;
    [homeCopy name];
    v22 = flowCopy;
    v24 = v23 = homeCopy;
    *buf = 138544386;
    v75 = v17;
    v76 = 2112;
    v77 = uUID;
    v78 = 2112;
    v79 = shortDescription;
    v80 = 2112;
    v81 = v21;
    v82 = 2112;
    v83 = v24;
    _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] loadConfiguredCredentialsOnMatterAccessory with accessory: %@, forUser: %@, inHome: %@", buf, 0x34u);

    homeCopy = v23;
    flowCopy = v22;

    userCopy = v20;
    accessoryCopy = v70;

    selfCopy = v68;
  }

  objc_autoreleasePoolPop(v14);
  accessCode = [userCopy accessCode];
  array = [MEMORY[0x277CBEB18] array];
  supportsMatterAccessCode = [accessoryCopy supportsMatterAccessCode];

  if (supportsMatterAccessCode && accessCode)
  {
    v66 = array;
    v28 = userCopy;
    v29 = objc_autoreleasePoolPush();
    v30 = selfCopy;
    v31 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      v32 = HMFGetLogIdentifier();
      [flowCopy UUID];
      v33 = v60 = v29;
      [userCopy shortDescription];
      v62 = accessCode;
      v35 = v34 = homeCopy;
      shortDescription2 = [accessoryCopy shortDescription];
      *buf = 138544130;
      v75 = v32;
      v76 = 2112;
      v77 = v33;
      v78 = 2112;
      v79 = v35;
      v80 = 2112;
      v81 = shortDescription2;
      _os_log_impl(&dword_229538000, v31, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Attempting to add RG's [%@] access code to accessory [%@]", buf, 0x2Au);

      homeCopy = v34;
      accessCode = v62;

      v29 = v60;
    }

    v65 = homeCopy;

    objc_autoreleasePoolPop(v29);
    accessCodeManager = [homeCopy accessCodeManager];
    v37 = [objc_alloc(MEMORY[0x277CD1648]) initWithStringValue:accessCode];
    v61 = v28;
    uuid = [v28 uuid];
    uuid2 = [v70 uuid];
    v73 = uuid2;
    v40 = [MEMORY[0x277CBEA60] arrayWithObjects:&v73 count:1];
    v41 = [accessCodeManager addNewAccessCode:v37 forUserWithUUID:uuid toAccessoriesWithUUIDs:v40 withRetries:1 flow:flowCopy];
    [v41 hmfFuture];
    v43 = v42 = accessCode;
    v71[0] = MEMORY[0x277D85DD0];
    v71[1] = 3221225472;
    v71[2] = __118__HMDAuditAllowedAccessoryForRestrictedGuestOperation_loadConfiguredCredentialsOnMatterAccessory_forUser_inHome_flow___block_invoke;
    v71[3] = &unk_278678B98;
    v71[4] = v30;
    v72 = flowCopy;
    v44 = [v43 then:v71];
    array = v66;
    [v66 addObject:v44];

    accessCode = v42;
    homeCopy = v65;

    accessoryCopy = v70;
    userCopy = v61;

    selfCopy = v68;
  }

  if ([accessoryCopy supportsWalletKey])
  {
    v45 = objc_autoreleasePoolPush();
    v46 = selfCopy;
    v47 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
    {
      v48 = HMFGetLogIdentifier();
      [flowCopy UUID];
      v49 = v69 = v45;
      [userCopy shortDescription];
      v50 = v64 = accessCode;
      [accessoryCopy shortDescription];
      v67 = array;
      v52 = v51 = flowCopy;
      *buf = 138544130;
      v75 = v48;
      v76 = 2112;
      v77 = v49;
      v78 = 2112;
      v79 = v50;
      v80 = 2112;
      v81 = v52;
      _os_log_impl(&dword_229538000, v47, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Attempting to add or update RG's [%@] issuer key to accessory [%@]", buf, 0x2Au);

      flowCopy = v51;
      array = v67;

      accessCode = v64;
      v45 = v69;
    }

    objc_autoreleasePoolPop(v45);
    nfcReaderKeyManager = [homeCopy nfcReaderKeyManager];
    accessoryManager = [nfcReaderKeyManager accessoryManager];
    v55 = [accessoryManager addOrUpdateIssuerKeyForUser:userCopy toMatterAccessory:accessoryCopy flow:flowCopy];
    hmfFuture = [v55 hmfFuture];
    [array addObject:hmfFuture];
  }

  v57 = [HMDAuditProhibitedAccessoryForRestrictedGuestOperation awaitForAllSettledFutures:array];

  v58 = *MEMORY[0x277D85DE8];

  return v57;
}

uint64_t __118__HMDAuditAllowedAccessoryForRestrictedGuestOperation_loadConfiguredCredentialsOnMatterAccessory_forUser_inHome_flow___block_invoke(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  v21 = 0;
  v5 = [v4 _anyModificationsFailedExcludingAlreadyExistsError:v3 responseError:&v21];
  v6 = v21;
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
      v23 = v11;
      v24 = 2112;
      v25 = v12;
      v26 = 2112;
      v27 = v6;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] At least one modification response had an error [%@] that isn't HMErrorCodePrivateAccessCodeDuplicate, so operation did not succeed.", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
    v13 = v6;
    v14 = v13;
    if (v13)
    {
      v15 = v13;
    }

    else
    {
      [MEMORY[0x277CCA9B8] hmfUnspecifiedError];
      objc_claimAutoreleasedReturnValue();
    }

    v18 = 2;
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      v17 = [*(a1 + 40) UUID];
      *buf = 138543618;
      v23 = v16;
      v24 = 2112;
      v25 = v17;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Access code has been added to the accessory", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    v18 = 1;
  }

  v19 = *MEMORY[0x277D85DE8];
  return v18;
}

- (id)_auditMatterAccessory:(id)accessory forRestrictedGuest:(id)guest inHome:(id)home flow:(id)flow
{
  v53 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  guestCopy = guest;
  homeCopy = home;
  flowCopy = flow;
  v14 = objc_autoreleasePoolPush();
  selfCopy = self;
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    HMFGetLogIdentifier();
    v17 = v33 = homeCopy;
    uUID = [flowCopy UUID];
    shortDescription = [guestCopy shortDescription];
    shortDescription2 = [MEMORY[0x277CFE9F8] shortDescription];
    *buf = 138544130;
    v46 = v17;
    v47 = 2112;
    v48 = uUID;
    v49 = 2112;
    v50 = shortDescription;
    v51 = 2112;
    v52 = shortDescription2;
    _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Attempting to add restricted guest [%@] to matter accessory [%@]", buf, 0x2Au);

    homeCopy = v33;
  }

  objc_autoreleasePoolPop(v14);
  v21 = objc_opt_new();
  v22 = [accessoryCopy waitForDoorLockClusterObjectWithFlow:flowCopy];
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __108__HMDAuditAllowedAccessoryForRestrictedGuestOperation__auditMatterAccessory_forRestrictedGuest_inHome_flow___block_invoke;
  v38[3] = &unk_278678B48;
  v39 = accessoryCopy;
  v40 = guestCopy;
  v41 = homeCopy;
  v42 = flowCopy;
  v43 = selfCopy;
  v23 = v21;
  v44 = v23;
  v24 = accessoryCopy;
  v25 = guestCopy;
  v26 = homeCopy;
  v27 = flowCopy;
  v28 = [v22 then:v38];
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __108__HMDAuditAllowedAccessoryForRestrictedGuestOperation__auditMatterAccessory_forRestrictedGuest_inHome_flow___block_invoke_86;
  v36[3] = &unk_278678B70;
  v37 = v23;
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __108__HMDAuditAllowedAccessoryForRestrictedGuestOperation__auditMatterAccessory_forRestrictedGuest_inHome_flow___block_invoke_2_88;
  v34[3] = &unk_278689CD8;
  v35 = v37;
  v29 = v37;
  v30 = [v28 then:v36 orRecover:v34];

  v31 = *MEMORY[0x277D85DE8];

  return v30;
}

uint64_t __108__HMDAuditAllowedAccessoryForRestrictedGuestOperation__auditMatterAccessory_forRestrictedGuest_inHome_flow___block_invoke(id *a1, void *a2)
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = a1[4];
  v5 = [a1[5] restrictedGuestAccessSettings];
  v6 = [v5 schedule];
  LODWORD(v4) = [v4 supportsConfiguredSchedule:v6];

  if (!v4)
  {
    v10 = objc_autoreleasePoolPush();
    v11 = a1[8];
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      v14 = [a1[7] UUID];
      v15 = a1[4];
      *buf = 138543874;
      v25 = v13;
      v26 = 2112;
      v27 = v14;
      v28 = 2112;
      v29 = v15;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Attempting to remove user from the matter accessory : %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v10);
    [a1[9] setCredentialsRemoved:1];
    v16 = [a1[6] removeUser:a1[5] fromAccessory:a1[4]];
    if (v16)
    {
      v7 = v16;

      goto LABEL_8;
    }

LABEL_9:
    _HMFPreconditionFailure();
  }

  v7 = [a1[6] auditOrAddRestrictedGuest:a1[5] onAccessory:a1[4] flow:a1[7]];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __108__HMDAuditAllowedAccessoryForRestrictedGuestOperation__auditMatterAccessory_forRestrictedGuest_inHome_flow___block_invoke_2;
  v19[3] = &unk_278678B20;
  v19[4] = a1[8];
  v20 = a1[4];
  v21 = a1[5];
  v22 = a1[6];
  v23 = a1[7];
  v8 = [v7 then:v19];
  if (!v8)
  {
    goto LABEL_9;
  }

  v9 = v8;

LABEL_8:
  v17 = *MEMORY[0x277D85DE8];
  return 3;
}

uint64_t __108__HMDAuditAllowedAccessoryForRestrictedGuestOperation__auditMatterAccessory_forRestrictedGuest_inHome_flow___block_invoke_2_88(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setError:a2];
  [*(a1 + 32) setShouldReschedule:1];

  return 1;
}

uint64_t __108__HMDAuditAllowedAccessoryForRestrictedGuestOperation__auditMatterAccessory_forRestrictedGuest_inHome_flow___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) loadConfiguredCredentialsOnMatterAccessory:*(a1 + 40) forUser:*(a1 + 48) inHome:*(a1 + 56) flow:*(a1 + 64)];
  if (v4)
  {
    v5 = v4;

    return 3;
  }

  else
  {
    v7 = _HMFPreconditionFailure();
    return [(HMDAuditAllowedAccessoryForRestrictedGuestOperation *)v7 executeOperationWithHomeManager:v8 flow:v9, v10];
  }
}

- (id)executeOperationWithHomeManager:(id)manager flow:(id)flow
{
  v112 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  flowCopy = flow;
  [(HMDBackgroundOperation *)self setHomeManager:managerCopy];
  v8 = objc_opt_new();
  userData = [(HMDBackgroundOperation *)self userData];
  v10 = [userData objectForKeyedSubscript:@"sharedUserUUIDKey"];

  v11 = [objc_opt_class() findUserWithUUID:v10 fromHomeManager:managerCopy];
  v12 = objc_opt_class();
  accessoryUUID = [(HMDAccessoryBackgroundOperation *)self accessoryUUID];
  v14 = [v12 findAccessoryUsing:accessoryUUID homeManager:managerCopy];

  v15 = v14;
  v16 = v11;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v17 = v15;
  }

  else
  {
    v17 = 0;
  }

  v18 = v17;

  accessoryOperationStatus = [(HMDAccessoryBackgroundOperation *)self accessoryOperationStatus];
  if (v18)
  {
    v20 = v11 == 0;
  }

  else
  {
    v20 = 1;
  }

  v21 = v20 || accessoryOperationStatus == 0;
  v103 = v18;
  if (v21)
  {
    v22 = objc_autoreleasePoolPush();
    selfCopy = self;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = HMFGetLogIdentifier();
      [flowCopy UUID];
      v26 = v98 = v10;
      [(HMDAccessoryBackgroundOperation *)selfCopy accessoryUUID];
      contexta = v8;
      v93 = managerCopy;
      v28 = v27 = flowCopy;
      [(HMDAccessoryBackgroundOperation *)selfCopy accessoryIdentifier];
      v29 = v15;
      v31 = v30 = v16;
      *buf = 138544130;
      v105 = v25;
      v106 = 2112;
      v107 = v26;
      v108 = 2112;
      v109 = v28;
      v110 = 2112;
      v111 = v31;
      _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Required parameters does not exist to properly execute this operation : [%@/%@]", buf, 0x2Au);

      v16 = v30;
      v15 = v29;

      flowCopy = v27;
      v8 = contexta;
      managerCopy = v93;

      v10 = v98;
    }

    objc_autoreleasePoolPop(v22);
    v32 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
    [v8 setError:v32];

    [v8 setShouldReschedule:1];
    goto LABEL_30;
  }

  if (accessoryOperationStatus == 1)
  {
    v33 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v35 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      v36 = HMFGetLogIdentifier();
      [flowCopy UUID];
      v37 = v99 = v10;
      [v15 shortDescription];
      contextb = v8;
      v94 = managerCopy;
      v39 = v38 = flowCopy;
      [v16 shortDescription];
      v40 = v15;
      v42 = v41 = v16;
      *buf = 138544130;
      v105 = v36;
      v106 = 2112;
      v107 = v37;
      v108 = 2112;
      v109 = v39;
      v110 = 2112;
      v111 = v42;
      _os_log_impl(&dword_229538000, v35, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] For the accessory [%@] with user [%@], this operation can never successfully run in the future. Hence marking this operation as finished.", buf, 0x2Au);

      v16 = v41;
      v15 = v40;

      flowCopy = v38;
      v8 = contextb;
      managerCopy = v94;

      v10 = v99;
    }

    objc_autoreleasePoolPop(v33);
    v43 = MEMORY[0x277CCA9B8];
    v44 = 23;
LABEL_29:
    v68 = [v43 hmErrorWithCode:v44];
    [v8 setError:v68];

LABEL_30:
    v69 = [MEMORY[0x277D0F7C0] futureWithValue:v8];
    v57 = v103;
    goto LABEL_31;
  }

  if (([v18 supportsAnyInPersonAccess] & 1) == 0)
  {
    v58 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v60 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v60, OS_LOG_TYPE_INFO))
    {
      v61 = HMFGetLogIdentifier();
      [flowCopy UUID];
      v96 = v16;
      v62 = v101 = v10;
      [v15 shortDescription];
      v63 = v15;
      v64 = managerCopy;
      v65 = v8;
      v67 = v66 = flowCopy;
      *buf = 138543874;
      v105 = v61;
      v106 = 2112;
      v107 = v62;
      v108 = 2112;
      v109 = v67;
      _os_log_impl(&dword_229538000, v60, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Accessory [%@] does not support features that enforce access directly. Hence marking this operation as finished.", buf, 0x20u);

      flowCopy = v66;
      v8 = v65;
      managerCopy = v64;
      v15 = v63;

      v16 = v96;
      v10 = v101;
    }

    objc_autoreleasePoolPop(v58);
    v43 = MEMORY[0x277CCA9B8];
    v44 = 48;
    goto LABEL_29;
  }

  home = [v18 home];
  if (home)
  {
    isRestrictedGuest = [v16 isRestrictedGuest];
    context = objc_autoreleasePoolPush();
    selfCopy4 = self;
    v48 = HMFGetOSLogHandle();
    v49 = os_log_type_enabled(v48, OS_LOG_TYPE_INFO);
    if (isRestrictedGuest)
    {
      v95 = v16;
      if (v49)
      {
        v50 = HMFGetLogIdentifier();
        uUID = [flowCopy UUID];
        [v103 shortDescription];
        v52 = v100 = v10;
        [v95 shortDescription];
        v87 = v15;
        v53 = managerCopy;
        v54 = v8;
        v56 = v55 = flowCopy;
        *buf = 138544130;
        v105 = v50;
        v106 = 2112;
        v107 = uUID;
        v108 = 2112;
        v109 = v52;
        v110 = 2112;
        v111 = v56;
        _os_log_impl(&dword_229538000, v48, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] All checks are completed, now attempting to audit allowed accessory [%@] with restricted guest [%@]", buf, 0x2Au);

        flowCopy = v55;
        v8 = v54;
        managerCopy = v53;
        v15 = v87;

        v10 = v100;
      }

      objc_autoreleasePoolPop(context);
      v57 = v103;
      v16 = v95;
      if ([v103 supportsCHIP])
      {
        [(HMDAuditAllowedAccessoryForRestrictedGuestOperation *)selfCopy4 _auditMatterAccessory:v103 forRestrictedGuest:v95 inHome:home flow:flowCopy];
      }

      else
      {
        [(HMDAuditAllowedAccessoryForRestrictedGuestOperation *)selfCopy4 _auditHAPAccessory:v103 forRestrictedGuest:v95 inHome:home flow:flowCopy];
      }
      v69 = ;
      goto LABEL_43;
    }

    if (v49)
    {
      v83 = HMFGetLogIdentifier();
      [flowCopy UUID];
      v88 = v15;
      v85 = v84 = v10;
      *buf = 138543874;
      v105 = v83;
      v106 = 2112;
      v107 = v85;
      v108 = 2112;
      v109 = v16;
      _os_log_impl(&dword_229538000, v48, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Cannot proceed with removing the user as it is not restricted guest. : %@", buf, 0x20u);

      v10 = v84;
      v15 = v88;
    }

    objc_autoreleasePoolPop(context);
    v86 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
    [v8 setError:v86];
  }

  else
  {
    v72 = objc_autoreleasePoolPush();
    selfCopy5 = self;
    v74 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
    {
      HMFGetLogIdentifier();
      v75 = contextc = v72;
      [flowCopy UUID];
      v97 = v16;
      v76 = v102 = v10;
      [v15 shortDescription];
      v77 = v15;
      v78 = managerCopy;
      v79 = v8;
      v81 = v80 = flowCopy;
      *buf = 138543874;
      v105 = v75;
      v106 = 2112;
      v107 = v76;
      v108 = 2112;
      v109 = v81;
      _os_log_impl(&dword_229538000, v74, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Accessory [%@] does not have a home", buf, 0x20u);

      flowCopy = v80;
      v8 = v79;
      managerCopy = v78;
      v15 = v77;

      v16 = v97;
      v10 = v102;

      v72 = contextc;
    }

    objc_autoreleasePoolPop(v72);
    v82 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    [v8 setError:v82];

    [v8 setShouldReschedule:1];
  }

  v69 = [MEMORY[0x277D0F7C0] futureWithValue:v8];
  v57 = v103;
LABEL_43:

LABEL_31:
  v70 = *MEMORY[0x277D85DE8];

  return v69;
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
    return [(HMDAuditAllowedAccessoryForRestrictedGuestOperation *)v5 mainWithError:v6, v7];
  }
}

- (BOOL)mainWithError:(id *)error
{
  v66 = *MEMORY[0x277D85DE8];
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
    v57 = v8;
    v58 = 2112;
    v59 = uUID;
    v60 = 2112;
    v61 = accessoryUUID;
    v62 = 2112;
    v63 = v12;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@[NewFlow: %@ {Feature:Restricted Guest}] Performing audit for allowed accessory [%@] for restricted guest [%@]", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v5);
  v13 = objc_alloc(MEMORY[0x277D0F7A8]);
  v14 = dispatch_get_global_queue(21, 0);
  v15 = [v13 initWithQueue:v14];

  v16 = MEMORY[0x277D0F7C0];
  v54[0] = MEMORY[0x277D85DD0];
  v54[1] = 3221225472;
  v54[2] = __69__HMDAuditAllowedAccessoryForRestrictedGuestOperation_mainWithError___block_invoke;
  v54[3] = &unk_2786898D8;
  v54[4] = selfCopy;
  v17 = internalOnlyInitializer;
  v55 = v17;
  v18 = [v16 inContext:v15 perform:v54];
  v52 = 0;
  v53 = 0;
  v19 = [v18 waitForResult:&v53 orError:&v52 withTimeout:1.2e11];
  v20 = objc_autoreleasePoolPush();
  v21 = selfCopy;
  v22 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
  {
    HMFGetLogIdentifier();
    v50 = v18;
    v24 = v23 = v15;
    uUID2 = [v17 UUID];
    accessoryUUID2 = [(HMDAccessoryBackgroundOperation *)v21 accessoryUUID];
    v27 = HMFBooleanToString();
    *buf = 138544386;
    v57 = v24;
    v58 = 2112;
    v59 = uUID2;
    v60 = 2112;
    v61 = accessoryUUID2;
    v62 = 2112;
    v63 = v27;
    v64 = 2112;
    v65 = v52;
    _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Finished adding the user from [%@] resulted in outcome: [%@] with error: [%@]", buf, 0x34u);

    v15 = v23;
    v18 = v50;
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
      v57 = v38;
      v58 = 2112;
      v59 = uUID3;
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

  if (v52)
  {
    v28 = objc_autoreleasePoolPush();
    v29 = v21;
    v30 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      v31 = HMFGetLogIdentifier();
      uUID4 = [v17 UUID];
      *buf = 138543874;
      v57 = v31;
      v58 = 2112;
      v59 = uUID4;
      v60 = 2112;
      v61 = v52;
      _os_log_impl(&dword_229538000, v30, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Operation should not have resulted in a rejected promise. File a radar. Operation failed to succeed with error: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v28);
    errorCopy2 = error;
    if (error)
    {
      v34 = v52;
LABEL_15:
      LOBYTE(v40) = 0;
      *errorCopy2 = v34;
      goto LABEL_24;
    }

    goto LABEL_16;
  }

  error = [v53 error];

  if (error)
  {
    v42 = objc_autoreleasePoolPush();
    v43 = v21;
    v44 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      v45 = HMFGetLogIdentifier();
      uUID5 = [v17 UUID];
      error2 = [v53 error];
      *buf = 138543874;
      v57 = v45;
      v58 = 2112;
      v59 = uUID5;
      v60 = 2112;
      v61 = error2;
      _os_log_impl(&dword_229538000, v44, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Operation failed to succeed with error: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v42);
    if (error)
    {
      *error = [v53 error];
    }

    v40 = [v53 shouldReschedule] ^ 1;
  }

  else
  {
    LOBYTE(v40) = 1;
  }

LABEL_24:

  v48 = *MEMORY[0x277D85DE8];
  return v40;
}

HMDAuditAllowedAccessoryForRestrictedGuestOperation *__69__HMDAuditAllowedAccessoryForRestrictedGuestOperation_mainWithError___block_invoke(uint64_t a1)
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
    return [(HMDAuditAllowedAccessoryForRestrictedGuestOperation *)v7 initWithAccessory:v8 restrictedGuest:v9, v10];
  }
}

- (HMDAuditAllowedAccessoryForRestrictedGuestOperation)initWithAccessory:(id)accessory restrictedGuest:(id)guest
{
  v33 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  guestCopy = guest;
  uuid = [accessoryCopy uuid];
  identifier = [accessoryCopy identifier];
  home = [accessoryCopy home];

  if (home)
  {
    home2 = [accessoryCopy home];
    pairingIdentity = [guestCopy pairingIdentity];
    uuid2 = [home2 uuid];
    v25 = @"sharedUserUUIDKey";
    uuid3 = [guestCopy uuid];
    v26 = uuid3;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
    v24.receiver = self;
    v24.super_class = HMDAuditAllowedAccessoryForRestrictedGuestOperation;
    v23 = 0;
    selfCopy = [(HMDAddAccessoryPairingOperation *)&v24 initWithAccessoryUUID:uuid accessoryIdentifier:identifier newPairingIdentity:pairingIdentity homeUUIDWhereAccessoryWasPaired:uuid2 asOwner:0 asAdmin:0 shouldUpdateKeyChainEntry:v23 userData:v15];

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
      v28 = v20;
      v29 = 2112;
      v30 = uuid;
      v31 = 2112;
      v32 = identifier;
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
  if (logCategory__hmf_once_t35_119131 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t35_119131, &__block_literal_global_119132);
  }

  v3 = logCategory__hmf_once_v36_119133;

  return v3;
}

void __66__HMDAuditAllowedAccessoryForRestrictedGuestOperation_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v36_119133;
  logCategory__hmf_once_v36_119133 = v1;
}

@end