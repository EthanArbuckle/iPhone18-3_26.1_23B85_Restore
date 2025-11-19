@interface HMDRemoveAccessoryPairingOperation
+ (id)logCategory;
- (BOOL)mainWithError:(id *)a3;
- (NSString)pairingIdentifierToRemove;
- (id)logIdentifier;
@end

@implementation HMDRemoveAccessoryPairingOperation

- (id)logIdentifier
{
  v2 = [(HMDBackgroundOperation *)self operationUUID];
  v3 = [v2 UUIDString];

  return v3;
}

- (NSString)pairingIdentifierToRemove
{
  v2 = [(HMDBackgroundOperation *)self userData];
  v3 = [v2 objectForKeyedSubscript:@"PairingIdentifierToRemove"];

  if (v3)
  {

    return v3;
  }

  else
  {
    v5 = _HMFPreconditionFailure();
    return [(HMDRemoveAccessoryPairingOperation *)v5 mainWithError:v6, v7];
  }
}

- (BOOL)mainWithError:(id *)a3
{
  v140 = *MEMORY[0x277D85DE8];
  v102 = [(HMDAccessoryBackgroundOperation *)self accessoryIdentifier];
  v4 = [(HMDBackgroundOperation *)self userData];
  v104 = [v4 objectForKeyedSubscript:@"PairingIdentifierToRemove"];

  v5 = [(HMDBackgroundOperation *)self userData];
  v103 = [v5 objectForKeyedSubscript:@"PairingPublicKeyToRemove"];

  v6 = [(HMDBackgroundOperation *)self userData];
  v7 = [v6 hmf_numberForKey:@"IsOwnerUser"];
  v8 = [v7 BOOLValue];

  v9 = [(HMDAccessoryBackgroundOperation *)self accessoryOperationStatus];
  v10 = objc_opt_class();
  v11 = [(HMDAccessoryBackgroundOperation *)self accessoryUUID];
  v12 = [(HMDBackgroundOperation *)self homeManager];
  v13 = [v10 findAccessoryUsing:v11 homeManager:v12];

  v14 = v13;
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

  v17 = v14;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  v19 = v18;

  v20 = v17;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  v22 = v21;

  v99 = v22;
  v100 = v19;
  if (v22 | v16 | v19 && v104 && v103 && v9)
  {
    if (v9 == 1)
    {
      v23 = objc_autoreleasePoolPush();
      v24 = self;
      v25 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v26 = HMFGetLogIdentifier();
        v27 = [v20 shortDescription];
        v28 = [v20 home];
        v29 = [v28 uuid];
        *buf = 138543874;
        v129 = v26;
        v130 = 2112;
        v131 = v27;
        v132 = 2112;
        v133 = v29;
        _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_DEFAULT, "%{public}@Since the accessory [%@] is already added back to this home [%@], there is no way this operation can successfully run in the future as the required parameters will never be true. Hence marking this operation as finished.", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v23);
      v30 = 1;
      goto LABEL_58;
    }

    v36 = [MEMORY[0x277D0F7B8] internalOnlyInitializer];
    v37 = objc_autoreleasePoolPush();
    v98 = self;
    v38 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
    {
      v39 = HMFGetLogIdentifier();
      v40 = [v36 UUID];
      v41 = [v20 name];
      v42 = [v20 uuid];
      *buf = 138544130;
      v129 = v39;
      v130 = 2112;
      v131 = v40;
      v132 = 2112;
      v133 = v41;
      v134 = 2112;
      v135 = v42;
      _os_log_impl(&dword_229538000, v38, OS_LOG_TYPE_INFO, "%{public}@[NewFlow: %@ {Feature:Background Operations}] Remove Accessory Pairing Operation for: %@, %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v37);
    v127 = [objc_alloc(MEMORY[0x277D0F770]) initWithName:@"Remove accessory pairing operation"];
    v43 = dispatch_get_global_queue(-32768, 0);
    v44 = dispatch_group_create();
    dispatch_group_enter(v44);
    v121 = 0;
    v122 = &v121;
    v123 = 0x3032000000;
    v124 = __Block_byref_object_copy__285624;
    v125 = __Block_byref_object_dispose__285625;
    v126 = 0;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __52__HMDRemoveAccessoryPairingOperation_mainWithError___block_invoke;
    aBlock[3] = &unk_27868A5F8;
    aBlock[4] = v98;
    v97 = v36;
    v116 = v97;
    v95 = v104;
    v117 = v95;
    v93 = v20;
    v118 = v93;
    v120 = &v121;
    v45 = v44;
    v119 = v45;
    v96 = _Block_copy(aBlock);
    if (v16)
    {
      v110[0] = MEMORY[0x277D85DD0];
      v110[1] = 3221225472;
      v110[2] = __52__HMDRemoveAccessoryPairingOperation_mainWithError___block_invoke_84;
      v110[3] = &unk_27868A620;
      v111 = v95;
      v112 = v103;
      v113 = v43;
      v114 = v96;
      [v16 performOperation:6 linkType:0 operationBlock:v110 errorBlock:v114];

      v46 = v111;
LABEL_26:

LABEL_27:
      v94 = [objc_alloc(MEMORY[0x277D0F7A8]) initWithQueue:v43];
      if ((v16 == 0) | v8 & 1 || ![v16 supportsCHIP])
      {
        goto LABEL_36;
      }

      v47 = [v16 supportsMatterWalletKey];
      if (([v47 BOOLValue] & 1) == 0)
      {
        v48 = [v16 supportsMatterAccessCode];
        if (![v48 BOOLValue])
        {
          v85 = [v16 supportsACWGProvisioning];

          if ((v85 & 1) == 0)
          {
            goto LABEL_36;
          }

          goto LABEL_33;
        }
      }

LABEL_33:
      dispatch_group_enter(v45);
      v49 = objc_autoreleasePoolPush();
      v50 = v98;
      v51 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
      {
        v52 = HMFGetLogIdentifier();
        v53 = [v97 UUID];
        *buf = 138543618;
        v129 = v52;
        v130 = 2112;
        v131 = v53;
        _os_log_impl(&dword_229538000, v51, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Removing matter users with deleted creator fabric index", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v49);
      v54 = [v16 waitForDoorLockClusterObjectWithFlow:v97];
      v107[0] = MEMORY[0x277D85DD0];
      v107[1] = 3221225472;
      v107[2] = __52__HMDRemoveAccessoryPairingOperation_mainWithError___block_invoke_89;
      v107[3] = &unk_27868A6D8;
      v108 = v97;
      v109 = v50;
      v55 = [v54 inContext:v94 then:v107];
      v105[0] = MEMORY[0x277D85DD0];
      v105[1] = 3221225472;
      v105[2] = __52__HMDRemoveAccessoryPairingOperation_mainWithError___block_invoke_6;
      v105[3] = &unk_27868A700;
      v106 = v45;
      v56 = [v55 inContext:v94 finally:v105];

LABEL_36:
      v57 = dispatch_time(0, 120000000000);
      if (dispatch_group_wait(v45, v57))
      {
        v58 = objc_autoreleasePoolPush();
        v59 = v98;
        v60 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
        {
          v61 = v45;
          v62 = HMFGetLogIdentifier();
          v63 = [v97 UUID];
          v64 = [v93 shortDescription];
          *buf = 138544130;
          v129 = v62;
          v130 = 2112;
          v131 = v63;
          v132 = 2112;
          v133 = v95;
          v134 = 2112;
          v135 = v64;
          _os_log_impl(&dword_229538000, v60, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Could not remove accessory pairing %@ from accessory %@ as the operation timed out", buf, 0x2Au);

          v45 = v61;
        }

        objc_autoreleasePoolPop(v58);
        if (a3)
        {
          v65 = [MEMORY[0x277CCA9B8] hmErrorWithCode:100];
LABEL_48:
          v30 = 0;
          *a3 = v65;
LABEL_56:

LABEL_57:
          _Block_object_dispose(&v121, 8);

          __HMFActivityScopeLeave();
          goto LABEL_58;
        }
      }

      else
      {
        v68 = v122[5];
        if (!v68)
        {
          v30 = 1;
          goto LABEL_56;
        }

        if (a3)
        {
          v65 = v68;
          goto LABEL_48;
        }
      }

      v30 = 0;
      goto LABEL_56;
    }

    if (v100)
    {
      v66 = objc_alloc(MEMORY[0x277CFEC20]);
      v67 = [objc_alloc(MEMORY[0x277D0F8B0]) initWithPairingKeyData:v103];
      v46 = [v66 initWithIdentifier:v95 publicKey:v67 privateKey:0];

      if (v46)
      {
        [v100 removeUserPairingIdentity:v46 isOwner:v8 completionHandler:v96];
        goto LABEL_26;
      }

      v77 = objc_autoreleasePoolPush();
      v78 = v98;
      v79 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v79, OS_LOG_TYPE_INFO))
      {
        v80 = v45;
        v81 = HMFGetLogIdentifier();
        v82 = [v97 UUID];
        v83 = [(HMDAccessoryBackgroundOperation *)v78 accessoryUUID];
        *buf = 138544642;
        v129 = v81;
        v130 = 2112;
        v131 = v82;
        v132 = 2112;
        v133 = v95;
        v134 = 2112;
        v135 = v103;
        v136 = 2112;
        v137 = v83;
        v138 = 2112;
        v139 = v102;
        _os_log_impl(&dword_229538000, v79, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Unable to create pairing identity from %@/%@ for operation : [%@/%@]", buf, 0x3Eu);

        v45 = v80;
      }

      objc_autoreleasePoolPop(v77);
      if (a3)
      {
        v84 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
LABEL_69:
        v30 = 0;
        *a3 = v84;
        goto LABEL_57;
      }
    }

    else
    {
      if (!v99)
      {
        goto LABEL_27;
      }

      v69 = objc_autoreleasePoolPush();
      v70 = v98;
      v71 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v71, OS_LOG_TYPE_INFO))
      {
        v72 = HMFGetLogIdentifier();
        v73 = [v97 UUID];
        *buf = 138543618;
        v129 = v72;
        v130 = 2112;
        v131 = v73;
        _os_log_impl(&dword_229538000, v71, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Removing pairing from Matter accessory", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v69);
      v74 = [v99 accessoryServer];
      v46 = v74;
      if (v74)
      {
        [v74 removePairingIdentifier:v95 pairingPublicKey:v103 completionQueue:v43 completionHandler:v96];
        goto LABEL_26;
      }

      v86 = objc_autoreleasePoolPush();
      v87 = v70;
      v88 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v88, OS_LOG_TYPE_ERROR))
      {
        v89 = v45;
        v90 = HMFGetLogIdentifier();
        v91 = [v97 UUID];
        v92 = [(HMDAccessoryBackgroundOperation *)v87 accessoryUUID];
        *buf = 138544642;
        v129 = v90;
        v130 = 2112;
        v131 = v91;
        v132 = 2112;
        v133 = v95;
        v134 = 2112;
        v135 = v103;
        v136 = 2112;
        v137 = v92;
        v138 = 2112;
        v139 = v102;
        _os_log_impl(&dword_229538000, v88, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] No accessory server from to remove %@/%@ for operation : [%@/%@]", buf, 0x3Eu);

        v45 = v89;
      }

      objc_autoreleasePoolPop(v86);
      if (a3)
      {
        v84 = [MEMORY[0x277CCA9B8] hmErrorWithCode:4];
        goto LABEL_69;
      }
    }

    v30 = 0;
    goto LABEL_57;
  }

  v31 = objc_autoreleasePoolPush();
  v32 = self;
  v33 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
  {
    v34 = HMFGetLogIdentifier();
    v35 = [(HMDAccessoryBackgroundOperation *)v32 accessoryUUID];
    *buf = 138543874;
    v129 = v34;
    v130 = 2112;
    v131 = v35;
    v132 = 2112;
    v133 = v102;
    _os_log_impl(&dword_229538000, v33, OS_LOG_TYPE_INFO, "%{public}@Required parameters does not exist to properly execute this operation : [%@/%@]", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v31);
  if (a3)
  {
    [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
    *a3 = v30 = 0;
  }

  else
  {
    v30 = 0;
  }

LABEL_58:

  v75 = *MEMORY[0x277D85DE8];
  return v30;
}

void __52__HMDRemoveAccessoryPairingOperation_mainWithError___block_invoke(uint64_t a1, void *a2)
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  v7 = v6;
  if (v3)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      v9 = [*(a1 + 40) UUID];
      v10 = *(a1 + 48);
      v11 = [*(a1 + 56) shortDescription];
      v21 = 138544386;
      v22 = v8;
      v23 = 2112;
      v24 = v9;
      v25 = 2112;
      v26 = v10;
      v27 = 2112;
      v28 = v11;
      v29 = 2112;
      v30 = v3;
      v12 = "%{public}@[Flow: %@] Unable to remove pairing %@ from accessory %@ with error: %@";
      v13 = v7;
      v14 = OS_LOG_TYPE_ERROR;
      v15 = 52;
LABEL_6:
      _os_log_impl(&dword_229538000, v13, v14, v12, &v21, v15);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = [*(a1 + 40) UUID];
    v16 = *(a1 + 48);
    v11 = [*(a1 + 56) shortDescription];
    v21 = 138544130;
    v22 = v8;
    v23 = 2112;
    v24 = v9;
    v25 = 2112;
    v26 = v16;
    v27 = 2112;
    v28 = v11;
    v12 = "%{public}@[Flow: %@] Successfully removed pairing %@ from accessory %@";
    v13 = v7;
    v14 = OS_LOG_TYPE_INFO;
    v15 = 42;
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v4);
  v17 = *(*(a1 + 72) + 8);
  v18 = *(v17 + 40);
  *(v17 + 40) = v3;
  v19 = v3;

  dispatch_group_leave(*(a1 + 64));
  v20 = *MEMORY[0x277D85DE8];
}

void __52__HMDRemoveAccessoryPairingOperation_mainWithError___block_invoke_84(void *a1, void *a2)
{
  v3 = [a2 server];
  [v3 removePairingIdentifier:a1[4] pairingPublicKey:a1[5] completionQueue:a1[6] completionHandler:a1[7]];
}

uint64_t __52__HMDRemoveAccessoryPairingOperation_mainWithError___block_invoke_89(uint64_t a1, void *a2)
{
  v3 = a2;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __52__HMDRemoveAccessoryPairingOperation_mainWithError___block_invoke_2;
  v9[3] = &unk_27868A6B0;
  v4 = *(a1 + 32);
  v9[4] = *(a1 + 40);
  v5 = [v3 removeUsersCreatedByOurFabricWithFlow:v4 notInUserUniqueIDs:v9];
  if (v5)
  {
    v6 = v5;

    return 3;
  }

  else
  {
    v8 = _HMFPreconditionFailure();
    return __52__HMDRemoveAccessoryPairingOperation_mainWithError___block_invoke_6(v8);
  }
}

id __52__HMDRemoveAccessoryPairingOperation_mainWithError___block_invoke_2(uint64_t a1)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__285624;
  v12 = __Block_byref_object_dispose__285625;
  v13 = [MEMORY[0x277CBEB98] set];
  v2 = +[HMDCoreData sharedInstance];
  v3 = [*(a1 + 32) homeUUID];
  v4 = [v2 contextWithHomeUUID:v3];

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __52__HMDRemoveAccessoryPairingOperation_mainWithError___block_invoke_3;
  v7[3] = &unk_27868A688;
  v7[4] = *(a1 + 32);
  v7[5] = &v8;
  [v4 unsafeSynchronousBlock:v7];
  v5 = v9[5];

  _Block_object_dispose(&v8, 8);

  return v5;
}

void __52__HMDRemoveAccessoryPairingOperation_mainWithError___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) homeUUID];
  v11 = [HMCContext findHomeWithModelID:v2];

  v3 = [v11 homeMembers];
  v4 = [v3 na_map:&__block_literal_global_285641];

  v5 = [v11 guestAccessCodes];
  v6 = [v5 na_map:&__block_literal_global_96_285642];

  v7 = [MEMORY[0x277CBEB58] set];
  [v7 addObjectsFromArray:v4];
  [v7 addObjectsFromArray:v6];
  v8 = [v7 copy];
  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t18_285682 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t18_285682, &__block_literal_global_106_285683);
  }

  v3 = logCategory__hmf_once_v19_285684;

  return v3;
}

void __49__HMDRemoveAccessoryPairingOperation_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v19_285684;
  logCategory__hmf_once_v19_285684 = v1;
}

@end