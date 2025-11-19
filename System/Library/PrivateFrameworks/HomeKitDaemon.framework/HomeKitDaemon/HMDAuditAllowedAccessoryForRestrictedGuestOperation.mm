@interface HMDAuditAllowedAccessoryForRestrictedGuestOperation
+ (id)logCategory;
- (BOOL)_anyModificationsFailedExcludingAlreadyExistsError:(id)a3 responseError:(id *)a4;
- (BOOL)mainWithError:(id *)a3;
- (HMDAuditAllowedAccessoryForRestrictedGuestOperation)initWithAccessory:(id)a3 restrictedGuest:(id)a4;
- (NSUUID)guestUUID;
- (id)_auditHAPAccessory:(id)a3 forRestrictedGuest:(id)a4 inHome:(id)a5 flow:(id)a6;
- (id)_auditMatterAccessory:(id)a3 forRestrictedGuest:(id)a4 inHome:(id)a5 flow:(id)a6;
- (id)executeOperationWithHomeManager:(id)a3 flow:(id)a4;
- (id)loadConfiguredCredentialsOnMatterAccessory:(id)a3 forUser:(id)a4 inHome:(id)a5 flow:(id)a6;
- (id)logIdentifier;
@end

@implementation HMDAuditAllowedAccessoryForRestrictedGuestOperation

- (id)logIdentifier
{
  v2 = [(HMDBackgroundOperation *)self operationUUID];
  v3 = [v2 UUIDString];

  return v3;
}

- (BOOL)_anyModificationsFailedExcludingAlreadyExistsError:(id)a3 responseError:(id *)a4
{
  v5 = a3;
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
  [v5 hmf_enumerateWithAutoreleasePoolUsingBlock:v9];
  v6 = v11[5];
  if (v6)
  {
    v6 = v6;
    *a4 = v6;
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

- (id)_auditHAPAccessory:(id)a3 forRestrictedGuest:(id)a4 inHome:(id)a5 flow:(id)a6
{
  v101 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v79 = a5;
  v12 = a6;
  v13 = objc_autoreleasePoolPush();
  v14 = self;
  v15 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = HMFGetLogIdentifier();
    v17 = [v12 UUID];
    v18 = [v11 shortDescription];
    [v10 shortDescription];
    v19 = v11;
    v20 = v10;
    v22 = v21 = v12;
    *buf = 138544130;
    *&buf[4] = v16;
    v95 = 2112;
    v96 = v17;
    v97 = 2112;
    v98 = v18;
    v99 = 2112;
    v100 = v22;
    _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Attempting to add restricted guest [%@] from the HAP accessory [%@]", buf, 0x2Au);

    v12 = v21;
    v10 = v20;
    v11 = v19;
  }

  objc_autoreleasePoolPop(v13);
  v23 = objc_opt_new();
  v24 = [v11 restrictedGuestAccessSettings];
  v25 = [v24 schedule];

  v26 = objc_autoreleasePoolPush();
  v27 = v14;
  v28 = HMFGetOSLogHandle();
  v29 = os_log_type_enabled(v28, OS_LOG_TYPE_INFO);
  if (v25)
  {
    if (v29)
    {
      v30 = HMFGetLogIdentifier();
      v31 = [v12 UUID];
      [v11 description];
      v76 = v27;
      v32 = v23;
      v33 = v11;
      v35 = v34 = v12;
      v36 = [v10 shortDescription];
      *buf = 138544130;
      *&buf[4] = v30;
      v95 = 2112;
      v96 = v31;
      v97 = 2112;
      v98 = v35;
      v99 = 2112;
      v100 = v36;
      _os_log_impl(&dword_229538000, v28, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Restricted Guest [%@] schedule is restricted so no credentials should be on the HAP accessory [%@]. Attempting to remove.", buf, 0x2Au);

      v12 = v34;
      v11 = v33;
      v23 = v32;
      v27 = v76;
    }

    objc_autoreleasePoolPop(v26);
    [v23 setCredentialsRemoved:1];
    v37 = [[HMDAuditProhibitedAccessoryForRestrictedGuestOperation alloc] initWithAccessory:v10 restrictedGuest:v11];
    v38 = v79;
    v39 = [v79 homeManager];
    v40 = [(HMDAuditProhibitedAccessoryForRestrictedGuestOperation *)v37 executeOperationWithHomeManager:v39 flow:v12];
    v80[0] = MEMORY[0x277D85DD0];
    v80[1] = 3221225472;
    v80[2] = __105__HMDAuditAllowedAccessoryForRestrictedGuestOperation__auditHAPAccessory_forRestrictedGuest_inHome_flow___block_invoke_103;
    v80[3] = &unk_278678BC0;
    v81 = v23;
    v41 = [v40 then:v80];
  }

  else
  {
    v38 = v79;
    if (v29)
    {
      v42 = HMFGetLogIdentifier();
      v43 = [v12 UUID];
      *buf = 138543618;
      *&buf[4] = v42;
      v95 = 2112;
      v96 = v43;
      _os_log_impl(&dword_229538000, v28, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Schedule is unrestricted, attempt to add credentials", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v26);
    v37 = [MEMORY[0x277CBEB18] array];
    if ([v10 supportsAccessCode])
    {
      v44 = [v11 accessCode];

      if (v44)
      {
        v77 = v23;
        v45 = objc_autoreleasePoolPush();
        v46 = v27;
        v47 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
        {
          HMFGetLogIdentifier();
          v74 = v45;
          v49 = v48 = v12;
          v50 = [v48 UUID];
          *buf = 138543618;
          *&buf[4] = v49;
          v95 = 2112;
          v96 = v50;
          _os_log_impl(&dword_229538000, v47, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Adding access codes if not on the accessory already", buf, 0x16u);

          v12 = v48;
          v45 = v74;
        }

        v69 = v46;
        objc_autoreleasePoolPop(v45);
        v73 = [v79 accessCodeManager];
        v51 = objc_alloc(MEMORY[0x277CD1648]);
        v75 = [v11 accessCode];
        v71 = [v51 initWithStringValue:v75];
        v70 = [v11 uuid];
        v72 = [v10 uuid];
        v93 = v72;
        v52 = [MEMORY[0x277CBEA60] arrayWithObjects:&v93 count:1];
        v53 = [v73 addNewAccessCode:v71 forUserWithUUID:v70 toAccessoriesWithUUIDs:v52 withRetries:1 flow:v12];
        [v53 hmfFuture];
        v55 = v54 = v12;
        v91[0] = MEMORY[0x277D85DD0];
        v91[1] = 3221225472;
        v91[2] = __105__HMDAuditAllowedAccessoryForRestrictedGuestOperation__auditHAPAccessory_forRestrictedGuest_inHome_flow___block_invoke;
        v91[3] = &unk_278678B98;
        v91[4] = v69;
        v92 = v54;
        v56 = [v55 then:v91];
        [(HMDAuditProhibitedAccessoryForRestrictedGuestOperation *)v37 addObject:v56];

        v12 = v54;
        v23 = v77;
      }
    }

    if ([v10 supportsWalletKey])
    {
      v57 = objc_autoreleasePoolPush();
      v58 = v27;
      v59 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v59, OS_LOG_TYPE_INFO))
      {
        v60 = HMFGetLogIdentifier();
        [v12 UUID];
        v78 = v23;
        v61 = v11;
        v62 = v10;
        v64 = v63 = v12;
        *buf = 138543618;
        *&buf[4] = v60;
        v95 = 2112;
        v96 = v64;
        _os_log_impl(&dword_229538000, v59, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Starting add pairing key audit", buf, 0x16u);

        v12 = v63;
        v10 = v62;
        v11 = v61;
        v23 = v78;
      }

      objc_autoreleasePoolPop(v57);
      *buf = 0;
      v65 = [MEMORY[0x277D0F7C0] futureWithPromise:buf];
      [(HMDAuditProhibitedAccessoryForRestrictedGuestOperation *)v37 addObject:v65];

      v66 = dispatch_get_global_queue(0, 0);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __105__HMDAuditAllowedAccessoryForRestrictedGuestOperation__auditHAPAccessory_forRestrictedGuest_inHome_flow___block_invoke_95;
      block[3] = &unk_2786891E0;
      v87 = v10;
      v88 = v12;
      v89 = *buf;
      v90 = v58;
      dispatch_async(v66, block);
    }

    v39 = [HMDAuditProhibitedAccessoryForRestrictedGuestOperation awaitForAllSettledFutures:v37];
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
    v41 = [v39 then:v84 orRecover:v82];

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

- (id)loadConfiguredCredentialsOnMatterAccessory:(id)a3 forUser:(id)a4 inHome:(id)a5 flow:(id)a6
{
  v84 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = objc_autoreleasePoolPush();
  v15 = self;
  v16 = HMFGetOSLogHandle();
  v68 = v15;
  v70 = v10;
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = HMFGetLogIdentifier();
    v18 = [v13 UUID];
    v19 = [v10 shortDescription];
    [v11 shortDescription];
    v21 = v20 = v11;
    [v12 name];
    v22 = v13;
    v24 = v23 = v12;
    *buf = 138544386;
    v75 = v17;
    v76 = 2112;
    v77 = v18;
    v78 = 2112;
    v79 = v19;
    v80 = 2112;
    v81 = v21;
    v82 = 2112;
    v83 = v24;
    _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] loadConfiguredCredentialsOnMatterAccessory with accessory: %@, forUser: %@, inHome: %@", buf, 0x34u);

    v12 = v23;
    v13 = v22;

    v11 = v20;
    v10 = v70;

    v15 = v68;
  }

  objc_autoreleasePoolPop(v14);
  v25 = [v11 accessCode];
  v26 = [MEMORY[0x277CBEB18] array];
  v27 = [v10 supportsMatterAccessCode];

  if (v27 && v25)
  {
    v66 = v26;
    v28 = v11;
    v29 = objc_autoreleasePoolPush();
    v30 = v15;
    v31 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      v32 = HMFGetLogIdentifier();
      [v13 UUID];
      v33 = v60 = v29;
      [v11 shortDescription];
      v62 = v25;
      v35 = v34 = v12;
      v36 = [v10 shortDescription];
      *buf = 138544130;
      v75 = v32;
      v76 = 2112;
      v77 = v33;
      v78 = 2112;
      v79 = v35;
      v80 = 2112;
      v81 = v36;
      _os_log_impl(&dword_229538000, v31, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Attempting to add RG's [%@] access code to accessory [%@]", buf, 0x2Au);

      v12 = v34;
      v25 = v62;

      v29 = v60;
    }

    v65 = v12;

    objc_autoreleasePoolPop(v29);
    v63 = [v12 accessCodeManager];
    v37 = [objc_alloc(MEMORY[0x277CD1648]) initWithStringValue:v25];
    v61 = v28;
    v38 = [v28 uuid];
    v39 = [v70 uuid];
    v73 = v39;
    v40 = [MEMORY[0x277CBEA60] arrayWithObjects:&v73 count:1];
    v41 = [v63 addNewAccessCode:v37 forUserWithUUID:v38 toAccessoriesWithUUIDs:v40 withRetries:1 flow:v13];
    [v41 hmfFuture];
    v43 = v42 = v25;
    v71[0] = MEMORY[0x277D85DD0];
    v71[1] = 3221225472;
    v71[2] = __118__HMDAuditAllowedAccessoryForRestrictedGuestOperation_loadConfiguredCredentialsOnMatterAccessory_forUser_inHome_flow___block_invoke;
    v71[3] = &unk_278678B98;
    v71[4] = v30;
    v72 = v13;
    v44 = [v43 then:v71];
    v26 = v66;
    [v66 addObject:v44];

    v25 = v42;
    v12 = v65;

    v10 = v70;
    v11 = v61;

    v15 = v68;
  }

  if ([v10 supportsWalletKey])
  {
    v45 = objc_autoreleasePoolPush();
    v46 = v15;
    v47 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
    {
      v48 = HMFGetLogIdentifier();
      [v13 UUID];
      v49 = v69 = v45;
      [v11 shortDescription];
      v50 = v64 = v25;
      [v10 shortDescription];
      v67 = v26;
      v52 = v51 = v13;
      *buf = 138544130;
      v75 = v48;
      v76 = 2112;
      v77 = v49;
      v78 = 2112;
      v79 = v50;
      v80 = 2112;
      v81 = v52;
      _os_log_impl(&dword_229538000, v47, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Attempting to add or update RG's [%@] issuer key to accessory [%@]", buf, 0x2Au);

      v13 = v51;
      v26 = v67;

      v25 = v64;
      v45 = v69;
    }

    objc_autoreleasePoolPop(v45);
    v53 = [v12 nfcReaderKeyManager];
    v54 = [v53 accessoryManager];
    v55 = [v54 addOrUpdateIssuerKeyForUser:v11 toMatterAccessory:v10 flow:v13];
    v56 = [v55 hmfFuture];
    [v26 addObject:v56];
  }

  v57 = [HMDAuditProhibitedAccessoryForRestrictedGuestOperation awaitForAllSettledFutures:v26];

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

- (id)_auditMatterAccessory:(id)a3 forRestrictedGuest:(id)a4 inHome:(id)a5 flow:(id)a6
{
  v53 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = objc_autoreleasePoolPush();
  v15 = self;
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    HMFGetLogIdentifier();
    v17 = v33 = v12;
    v18 = [v13 UUID];
    v19 = [v11 shortDescription];
    v20 = [MEMORY[0x277CFE9F8] shortDescription];
    *buf = 138544130;
    v46 = v17;
    v47 = 2112;
    v48 = v18;
    v49 = 2112;
    v50 = v19;
    v51 = 2112;
    v52 = v20;
    _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Attempting to add restricted guest [%@] to matter accessory [%@]", buf, 0x2Au);

    v12 = v33;
  }

  objc_autoreleasePoolPop(v14);
  v21 = objc_opt_new();
  v22 = [v10 waitForDoorLockClusterObjectWithFlow:v13];
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __108__HMDAuditAllowedAccessoryForRestrictedGuestOperation__auditMatterAccessory_forRestrictedGuest_inHome_flow___block_invoke;
  v38[3] = &unk_278678B48;
  v39 = v10;
  v40 = v11;
  v41 = v12;
  v42 = v13;
  v43 = v15;
  v23 = v21;
  v44 = v23;
  v24 = v10;
  v25 = v11;
  v26 = v12;
  v27 = v13;
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

- (id)executeOperationWithHomeManager:(id)a3 flow:(id)a4
{
  v112 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  [(HMDBackgroundOperation *)self setHomeManager:v6];
  v8 = objc_opt_new();
  v9 = [(HMDBackgroundOperation *)self userData];
  v10 = [v9 objectForKeyedSubscript:@"sharedUserUUIDKey"];

  v11 = [objc_opt_class() findUserWithUUID:v10 fromHomeManager:v6];
  v12 = objc_opt_class();
  v13 = [(HMDAccessoryBackgroundOperation *)self accessoryUUID];
  v14 = [v12 findAccessoryUsing:v13 homeManager:v6];

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

  v19 = [(HMDAccessoryBackgroundOperation *)self accessoryOperationStatus];
  if (v18)
  {
    v20 = v11 == 0;
  }

  else
  {
    v20 = 1;
  }

  v21 = v20 || v19 == 0;
  v103 = v18;
  if (v21)
  {
    v22 = objc_autoreleasePoolPush();
    v23 = self;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = HMFGetLogIdentifier();
      [v7 UUID];
      v26 = v98 = v10;
      [(HMDAccessoryBackgroundOperation *)v23 accessoryUUID];
      contexta = v8;
      v93 = v6;
      v28 = v27 = v7;
      [(HMDAccessoryBackgroundOperation *)v23 accessoryIdentifier];
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

      v7 = v27;
      v8 = contexta;
      v6 = v93;

      v10 = v98;
    }

    objc_autoreleasePoolPop(v22);
    v32 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
    [v8 setError:v32];

    [v8 setShouldReschedule:1];
    goto LABEL_30;
  }

  if (v19 == 1)
  {
    v33 = objc_autoreleasePoolPush();
    v34 = self;
    v35 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      v36 = HMFGetLogIdentifier();
      [v7 UUID];
      v37 = v99 = v10;
      [v15 shortDescription];
      contextb = v8;
      v94 = v6;
      v39 = v38 = v7;
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

      v7 = v38;
      v8 = contextb;
      v6 = v94;

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
    v59 = self;
    v60 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v60, OS_LOG_TYPE_INFO))
    {
      v61 = HMFGetLogIdentifier();
      [v7 UUID];
      v96 = v16;
      v62 = v101 = v10;
      [v15 shortDescription];
      v63 = v15;
      v64 = v6;
      v65 = v8;
      v67 = v66 = v7;
      *buf = 138543874;
      v105 = v61;
      v106 = 2112;
      v107 = v62;
      v108 = 2112;
      v109 = v67;
      _os_log_impl(&dword_229538000, v60, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Accessory [%@] does not support features that enforce access directly. Hence marking this operation as finished.", buf, 0x20u);

      v7 = v66;
      v8 = v65;
      v6 = v64;
      v15 = v63;

      v16 = v96;
      v10 = v101;
    }

    objc_autoreleasePoolPop(v58);
    v43 = MEMORY[0x277CCA9B8];
    v44 = 48;
    goto LABEL_29;
  }

  v45 = [v18 home];
  if (v45)
  {
    v46 = [v16 isRestrictedGuest];
    context = objc_autoreleasePoolPush();
    v47 = self;
    v48 = HMFGetOSLogHandle();
    v49 = os_log_type_enabled(v48, OS_LOG_TYPE_INFO);
    if (v46)
    {
      v95 = v16;
      if (v49)
      {
        v50 = HMFGetLogIdentifier();
        v51 = [v7 UUID];
        [v103 shortDescription];
        v52 = v100 = v10;
        [v95 shortDescription];
        v87 = v15;
        v53 = v6;
        v54 = v8;
        v56 = v55 = v7;
        *buf = 138544130;
        v105 = v50;
        v106 = 2112;
        v107 = v51;
        v108 = 2112;
        v109 = v52;
        v110 = 2112;
        v111 = v56;
        _os_log_impl(&dword_229538000, v48, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] All checks are completed, now attempting to audit allowed accessory [%@] with restricted guest [%@]", buf, 0x2Au);

        v7 = v55;
        v8 = v54;
        v6 = v53;
        v15 = v87;

        v10 = v100;
      }

      objc_autoreleasePoolPop(context);
      v57 = v103;
      v16 = v95;
      if ([v103 supportsCHIP])
      {
        [(HMDAuditAllowedAccessoryForRestrictedGuestOperation *)v47 _auditMatterAccessory:v103 forRestrictedGuest:v95 inHome:v45 flow:v7];
      }

      else
      {
        [(HMDAuditAllowedAccessoryForRestrictedGuestOperation *)v47 _auditHAPAccessory:v103 forRestrictedGuest:v95 inHome:v45 flow:v7];
      }
      v69 = ;
      goto LABEL_43;
    }

    if (v49)
    {
      v83 = HMFGetLogIdentifier();
      [v7 UUID];
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
    v73 = self;
    v74 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
    {
      HMFGetLogIdentifier();
      v75 = contextc = v72;
      [v7 UUID];
      v97 = v16;
      v76 = v102 = v10;
      [v15 shortDescription];
      v77 = v15;
      v78 = v6;
      v79 = v8;
      v81 = v80 = v7;
      *buf = 138543874;
      v105 = v75;
      v106 = 2112;
      v107 = v76;
      v108 = 2112;
      v109 = v81;
      _os_log_impl(&dword_229538000, v74, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Accessory [%@] does not have a home", buf, 0x20u);

      v7 = v80;
      v8 = v79;
      v6 = v78;
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
  v2 = [(HMDBackgroundOperation *)self userData];
  v3 = [v2 objectForKeyedSubscript:@"sharedUserUUIDKey"];

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

- (BOOL)mainWithError:(id *)a3
{
  v66 = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277D0F7B8] internalOnlyInitializer];
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = [v4 UUID];
    v10 = [(HMDAccessoryBackgroundOperation *)v6 accessoryUUID];
    v11 = [(HMDBackgroundOperation *)v6 userData];
    v12 = [v11 objectForKeyedSubscript:@"sharedUserUUIDKey"];
    *buf = 138544130;
    v57 = v8;
    v58 = 2112;
    v59 = v9;
    v60 = 2112;
    v61 = v10;
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
  v54[4] = v6;
  v17 = v4;
  v55 = v17;
  v18 = [v16 inContext:v15 perform:v54];
  v52 = 0;
  v53 = 0;
  v19 = [v18 waitForResult:&v53 orError:&v52 withTimeout:1.2e11];
  v20 = objc_autoreleasePoolPush();
  v21 = v6;
  v22 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
  {
    HMFGetLogIdentifier();
    v50 = v18;
    v24 = v23 = v15;
    v25 = [v17 UUID];
    v26 = [(HMDAccessoryBackgroundOperation *)v21 accessoryUUID];
    v27 = HMFBooleanToString();
    *buf = 138544386;
    v57 = v24;
    v58 = 2112;
    v59 = v25;
    v60 = 2112;
    v61 = v26;
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
      v39 = [v17 UUID];
      *buf = 138543618;
      v57 = v38;
      v58 = 2112;
      v59 = v39;
      _os_log_impl(&dword_229538000, v37, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Operation timed out", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v35);
    v33 = a3;
    if (a3)
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
      v32 = [v17 UUID];
      *buf = 138543874;
      v57 = v31;
      v58 = 2112;
      v59 = v32;
      v60 = 2112;
      v61 = v52;
      _os_log_impl(&dword_229538000, v30, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Operation should not have resulted in a rejected promise. File a radar. Operation failed to succeed with error: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v28);
    v33 = a3;
    if (a3)
    {
      v34 = v52;
LABEL_15:
      LOBYTE(v40) = 0;
      *v33 = v34;
      goto LABEL_24;
    }

    goto LABEL_16;
  }

  v41 = [v53 error];

  if (v41)
  {
    v42 = objc_autoreleasePoolPush();
    v43 = v21;
    v44 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      v45 = HMFGetLogIdentifier();
      v46 = [v17 UUID];
      v47 = [v53 error];
      *buf = 138543874;
      v57 = v45;
      v58 = 2112;
      v59 = v46;
      v60 = 2112;
      v61 = v47;
      _os_log_impl(&dword_229538000, v44, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Operation failed to succeed with error: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v42);
    if (a3)
    {
      *a3 = [v53 error];
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

- (HMDAuditAllowedAccessoryForRestrictedGuestOperation)initWithAccessory:(id)a3 restrictedGuest:(id)a4
{
  v33 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 uuid];
  v9 = [v6 identifier];
  v10 = [v6 home];

  if (v10)
  {
    v11 = [v6 home];
    v12 = [v7 pairingIdentity];
    v13 = [v11 uuid];
    v25 = @"sharedUserUUIDKey";
    v14 = [v7 uuid];
    v26 = v14;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
    v24.receiver = self;
    v24.super_class = HMDAuditAllowedAccessoryForRestrictedGuestOperation;
    v23 = 0;
    v16 = [(HMDAddAccessoryPairingOperation *)&v24 initWithAccessoryUUID:v8 accessoryIdentifier:v9 newPairingIdentity:v12 homeUUIDWhereAccessoryWasPaired:v13 asOwner:0 asAdmin:0 shouldUpdateKeyChainEntry:v23 userData:v15];

    v17 = v16;
  }

  else
  {
    v18 = objc_autoreleasePoolPush();
    v16 = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543874;
      v28 = v20;
      v29 = 2112;
      v30 = v8;
      v31 = 2112;
      v32 = v9;
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