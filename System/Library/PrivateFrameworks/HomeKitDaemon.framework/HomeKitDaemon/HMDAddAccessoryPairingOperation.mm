@interface HMDAddAccessoryPairingOperation
+ (id)logCategory;
- (BOOL)addPairingToHAPAccessory:(id)accessory newPairingIdentity:(id)identity permissions:(unint64_t)permissions error:(id *)error;
- (BOOL)mainWithError:(id *)error;
- (id)logIdentifier;
- (void)associateNewControllerKeyWithAccessory:(id)accessory controllerKeyIdentifierToAssociate:(id)associate permissions:(unint64_t)permissions withCompletion:(id)completion;
@end

@implementation HMDAddAccessoryPairingOperation

- (id)logIdentifier
{
  operationUUID = [(HMDBackgroundOperation *)self operationUUID];
  uUIDString = [operationUUID UUIDString];

  return uUIDString;
}

void __97__HMDAddAccessoryPairingOperation_addPairingToAirPlayAccessory_newPairingIdentity_isOwner_error___block_invoke(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v5 = objc_autoreleasePoolPush();
  v6 = *(a1 + 32);
  v7 = HMFGetOSLogHandle();
  v8 = v7;
  if (v3)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      v10 = [*(a1 + 40) identifier];
      v11 = [WeakRetained shortDescription];
      v20 = 138544130;
      v21 = v9;
      v22 = 2112;
      v23 = v10;
      v24 = 2112;
      v25 = v11;
      v26 = 2112;
      v27 = v3;
      v12 = "%{public}@Unable to add new pairing %@ to accessory %@ with error: %@";
      v13 = v8;
      v14 = OS_LOG_TYPE_ERROR;
      v15 = 42;
LABEL_6:
      _os_log_impl(&dword_229538000, v13, v14, v12, &v20, v15);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v10 = [*(a1 + 40) identifier];
    v11 = [WeakRetained shortDescription];
    v20 = 138543874;
    v21 = v9;
    v22 = 2112;
    v23 = v10;
    v24 = 2112;
    v25 = v11;
    v12 = "%{public}@Successfully added new pairing %@ to accessory %@.";
    v13 = v8;
    v14 = OS_LOG_TYPE_INFO;
    v15 = 32;
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v5);
  v16 = *(*(a1 + 56) + 8);
  v17 = *(v16 + 40);
  *(v16 + 40) = v3;
  v18 = v3;

  dispatch_group_leave(*(a1 + 48));
  v19 = *MEMORY[0x277D85DE8];
}

- (BOOL)addPairingToHAPAccessory:(id)accessory newPairingIdentity:(id)identity permissions:(unint64_t)permissions error:(id *)error
{
  v56 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  identityCopy = identity;
  v12 = dispatch_get_global_queue(-32768, 0);
  v13 = dispatch_group_create();
  dispatch_group_enter(v13);
  v44 = 0;
  v45 = &v44;
  v46 = 0x3032000000;
  v47 = __Block_byref_object_copy__144420;
  v48 = __Block_byref_object_dispose__144421;
  v49 = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __97__HMDAddAccessoryPairingOperation_addPairingToHAPAccessory_newPairingIdentity_permissions_error___block_invoke;
  aBlock[3] = &unk_27867B120;
  aBlock[4] = self;
  v14 = identityCopy;
  v39 = v14;
  v15 = accessoryCopy;
  v40 = v15;
  v16 = v13;
  v42 = &v44;
  permissionsCopy = permissions;
  v41 = v16;
  v17 = _Block_copy(aBlock);
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __97__HMDAddAccessoryPairingOperation_addPairingToHAPAccessory_newPairingIdentity_permissions_error___block_invoke_55;
  v34[3] = &unk_27867B148;
  v18 = v14;
  v35 = v18;
  v19 = v12;
  v36 = v19;
  v20 = v17;
  v37 = v20;
  [v15 performOperation:5 linkType:0 operationBlock:v34 errorBlock:v20];
  v21 = dispatch_time(0, 120000000000);
  if (!dispatch_group_wait(v16, v21))
  {
    v28 = v45[5];
    if (!v28)
    {
      v29 = 1;
      goto LABEL_12;
    }

    if (error)
    {
      v27 = v28;
      goto LABEL_9;
    }

LABEL_10:
    v29 = 0;
    goto LABEL_12;
  }

  context = objc_autoreleasePoolPush();
  selfCopy = self;
  v23 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    errorCopy = error;
    v24 = HMFGetLogIdentifier();
    identifier = [v18 identifier];
    shortDescription = [v15 shortDescription];
    *buf = 138543874;
    v51 = v24;
    v52 = 2112;
    v53 = identifier;
    v54 = 2112;
    v55 = shortDescription;
    _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_ERROR, "%{public}@Could not add new pairing %@ to accessory %@", buf, 0x20u);

    error = errorCopy;
  }

  objc_autoreleasePoolPop(context);
  if (!error)
  {
    goto LABEL_10;
  }

  v27 = [MEMORY[0x277CCA9B8] hmErrorWithCode:100];
LABEL_9:
  v29 = 0;
  *error = v27;
LABEL_12:

  _Block_object_dispose(&v44, 8);
  v30 = *MEMORY[0x277D85DE8];
  return v29;
}

void __97__HMDAddAccessoryPairingOperation_addPairingToHAPAccessory_newPairingIdentity_permissions_error___block_invoke(uint64_t a1, void *a2)
{
  v43 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 32);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = HMFGetLogIdentifier();
      v8 = [*(a1 + 40) identifier];
      v9 = [*(a1 + 48) shortDescription];
      *buf = 138544130;
      v36 = v7;
      v37 = 2112;
      v38 = v8;
      v39 = 2112;
      v40 = v9;
      v41 = 2112;
      v42 = v3;
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_ERROR, "%{public}@Unable to add new pairing %@ to accessory %@ with error: %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v4);
  }

  else
  {
    v10 = [*(a1 + 32) userData];
    v11 = [v10 hmf_BOOLForKey:@"shouldUpdateKeyChainEntry"];

    v12 = objc_autoreleasePoolPush();
    v13 = *(a1 + 32);
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier();
      v16 = [*(a1 + 40) identifier];
      v17 = [*(a1 + 48) shortDescription];
      v18 = v17;
      v19 = @"Will not";
      *buf = 138544130;
      v36 = v15;
      if (v11)
      {
        v19 = @"Will";
      }

      v37 = 2112;
      v38 = v16;
      v39 = 2112;
      v40 = v17;
      v41 = 2112;
      v42 = v19;
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, "%{public}@Successfully added new pairing %@ to accessory %@. %@ update the keychain entry", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v12);
    if (v11)
    {
      dispatch_group_enter(*(a1 + 56));
      v20 = *(a1 + 48);
      v21 = *(a1 + 32);
      v22 = [*(a1 + 40) identifier];
      v23 = *(a1 + 72);
      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 3221225472;
      v31[2] = __97__HMDAddAccessoryPairingOperation_addPairingToHAPAccessory_newPairingIdentity_permissions_error___block_invoke_53;
      v31[3] = &unk_27867B0F8;
      v24 = *(a1 + 40);
      v31[4] = *(a1 + 32);
      v32 = v24;
      v33 = *(a1 + 48);
      v30 = *(a1 + 56);
      v25 = v30;
      v34 = v30;
      [v21 associateNewControllerKeyWithAccessory:v20 controllerKeyIdentifierToAssociate:v22 permissions:v23 withCompletion:v31];
    }
  }

  v26 = *(*(a1 + 64) + 8);
  v27 = *(v26 + 40);
  *(v26 + 40) = v3;
  v28 = v3;

  dispatch_group_leave(*(a1 + 56));
  v29 = *MEMORY[0x277D85DE8];
}

void __97__HMDAddAccessoryPairingOperation_addPairingToHAPAccessory_newPairingIdentity_permissions_error___block_invoke_55(void *a1, void *a2)
{
  v3 = [a2 server];
  [v3 addPairing:a1[4] completionQueue:a1[5] completionHandler:a1[6]];
}

void __97__HMDAddAccessoryPairingOperation_addPairingToHAPAccessory_newPairingIdentity_permissions_error___block_invoke_53(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 32);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = HMFGetLogIdentifier();
      v8 = [*(a1 + 40) identifier];
      v9 = [*(a1 + 48) identifier];
      v14 = 138544130;
      v15 = v7;
      v16 = 2112;
      v17 = v8;
      v18 = 2112;
      v19 = v9;
      v20 = 2112;
      v21 = v3;
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_ERROR, "%{public}@Could not store new pairing identity [%@] for accessory [%@] to keychain. [%@]", &v14, 0x2Au);
    }

    objc_autoreleasePoolPop(v4);
  }

  v10 = *(*(a1 + 64) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v3;
  v12 = v3;

  dispatch_group_leave(*(a1 + 56));
  v13 = *MEMORY[0x277D85DE8];
}

- (void)associateNewControllerKeyWithAccessory:(id)accessory controllerKeyIdentifierToAssociate:(id)associate permissions:(unint64_t)permissions withCompletion:(id)completion
{
  v33 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  associateCopy = associate;
  completionCopy = completion;
  v13 = objc_alloc(MEMORY[0x277CFEC20]);
  identifier = [accessoryCopy identifier];
  v15 = objc_alloc(MEMORY[0x277D0F8B0]);
  publicKey = [accessoryCopy publicKey];
  v17 = [v15 initWithPairingKeyData:publicKey];
  v18 = [v13 initWithIdentifier:identifier controllerKeyIdentifier:associateCopy publicKey:v17 privateKey:0 permissions:permissions];

  v26 = 0;
  [accessoryCopy associateControllerKeyWithAccessory:v18 error:&v26];
  v19 = v26;
  v20 = objc_autoreleasePoolPush();
  selfCopy = self;
  v22 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
  {
    v23 = HMFGetLogIdentifier();
    shortDescription = [accessoryCopy shortDescription];
    *buf = 138543874;
    v28 = v23;
    v29 = 2112;
    v30 = shortDescription;
    v31 = 2112;
    v32 = v19;
    _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_INFO, "%{public}@Updating new pairing identity to key chain finished for accessory: %@ with error : %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v20);
  completionCopy[2](completionCopy, v19);

  v25 = *MEMORY[0x277D85DE8];
}

- (BOOL)mainWithError:(id *)error
{
  v51 = *MEMORY[0x277D85DE8];
  accessoryIdentifier = [(HMDAccessoryBackgroundOperation *)self accessoryIdentifier];
  userData = [(HMDBackgroundOperation *)self userData];
  v5 = [userData objectForKeyedSubscript:@"newPairingIdentifier"];

  userData2 = [(HMDBackgroundOperation *)self userData];
  v7 = [userData2 objectForKeyedSubscript:@"newPairingPublicKey"];

  userData3 = [(HMDBackgroundOperation *)self userData];
  v9 = [userData3 hmf_numberForKey:@"IsOwnerUser"];
  bOOLValue = [v9 BOOLValue];

  accessoryOperationStatus = [(HMDAccessoryBackgroundOperation *)self accessoryOperationStatus];
  v12 = objc_opt_class();
  accessoryUUID = [(HMDAccessoryBackgroundOperation *)self accessoryUUID];
  homeManager = [(HMDBackgroundOperation *)self homeManager];
  v15 = [v12 findAccessoryUsing:accessoryUUID homeManager:homeManager];

  v16 = v15;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  v18 = v17;

  v19 = v16;
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

  if (v18 | v21 && v5 && v7 && accessoryOperationStatus)
  {
    if (accessoryOperationStatus == 1)
    {
      contexta = objc_autoreleasePoolPush();
      selfCopy = self;
      v23 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v41 = HMFGetLogIdentifier();
        shortDescription = [v19 shortDescription];
        home = [v19 home];
        uuid = [home uuid];
        *buf = 138543874;
        *&buf[4] = v41;
        v47 = 2112;
        v48 = shortDescription;
        v49 = 2112;
        v50 = uuid;
        _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_DEFAULT, "%{public}@Since the accessory [%@] is already added back to this home [%@], there is no way this operation can successfully run in the future as the required parameters will never be true. Hence marking this operation as finished.", buf, 0x20u);
      }

      objc_autoreleasePoolPop(contexta);
      v27 = 1;
    }

    else
    {
      userData4 = [(HMDBackgroundOperation *)self userData];
      v34 = [userData4 objectForKeyedSubscript:@"newPairingPermission"];
      v42 = bOOLValue;
      unsignedIntValue = [v34 unsignedIntValue];

      v36 = [objc_alloc(MEMORY[0x277D0F8B0]) initWithPairingKeyData:v7];
      v37 = [objc_alloc(MEMORY[0x277CFEC20]) initWithIdentifier:v5 publicKey:v36 privateKey:0 permissions:unsignedIntValue];
      *buf = [objc_alloc(MEMORY[0x277D0F770]) initWithName:@"Add accessory pairing operation"];
      if (v18)
      {
        v38 = [(HMDAddAccessoryPairingOperation *)self addPairingToHAPAccessory:v18 newPairingIdentity:v37 permissions:unsignedIntValue error:error];
      }

      else
      {
        v38 = [(HMDAddAccessoryPairingOperation *)self addPairingToAirPlayAccessory:v21 newPairingIdentity:v37 isOwner:v42 error:error];
      }

      v27 = v38;
      __HMFActivityScopeLeave();
    }
  }

  else
  {
    v28 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v30 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      v31 = HMFGetLogIdentifier();
      accessoryUUID2 = [(HMDAccessoryBackgroundOperation *)selfCopy2 accessoryUUID];
      *buf = 138543874;
      *&buf[4] = v31;
      v47 = 2112;
      v48 = accessoryUUID2;
      v49 = 2112;
      v50 = accessoryIdentifier;
      _os_log_impl(&dword_229538000, v30, OS_LOG_TYPE_ERROR, "%{public}@Required parameters does not exist to properly execute this operation : [%@/%@]", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v28);
    if (error)
    {
      [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
      *error = v27 = 0;
    }

    else
    {
      v27 = 0;
    }
  }

  v39 = *MEMORY[0x277D85DE8];
  return v27;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t16_144487 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t16_144487, &__block_literal_global_144488);
  }

  v3 = logCategory__hmf_once_v17_144489;

  return v3;
}

void __46__HMDAddAccessoryPairingOperation_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v17_144489;
  logCategory__hmf_once_v17_144489 = v1;
}

@end