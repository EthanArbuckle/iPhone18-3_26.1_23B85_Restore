@interface HAPKeyBag
+ (id)logCategory;
- (BOOL)associateControllerIdentifier:(id)identifier error:(id *)error;
- (BOOL)isEmpty;
- (BOOL)isValidIndex:(int64_t)index;
- (BOOL)shouldRetryPVDueToAuthenticationError:(id)error;
- (HAPKeyBag)initWithAccessoryIdentifier:(id)identifier keyStore:(id)store;
- (HAPKeyBag)initWithAccessoryIdentifier:(id)identifier keyStore:(id)store controllerKeyList:(id)list;
- (HAPKeyStore)keyStore;
- (id)_populateBagWithPairingIdentitiesForAccessory:(id)accessory fromStore:(id)store;
- (id)currentIdentity;
- (id)logIdentifier;
- (id)nextIdentity;
- (int64_t)getCurrentIndexInBag;
- (unint64_t)totalIdentities;
- (void)refreshKeys;
- (void)setCurrentIndexInBag:(int64_t)bag;
@end

@implementation HAPKeyBag

- (HAPKeyStore)keyStore
{
  WeakRetained = objc_loadWeakRetained(&self->_keyStore);

  return WeakRetained;
}

- (id)logIdentifier
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  accessoryIdentifier = [(HAPKeyBag *)self accessoryIdentifier];
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HAPKeyBag getCurrentIndexInBag](self, "getCurrentIndexInBag")}];
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HAPKeyBag totalIdentities](self, "totalIdentities")}];
  v8 = [v3 stringWithFormat:@"%@ %@ (%@/%@)", v4, accessoryIdentifier, v6, v7];

  return v8;
}

- (unint64_t)totalIdentities
{
  availableKeysToTry = [(HAPKeyBag *)self availableKeysToTry];
  v3 = [availableKeysToTry count];

  return v3;
}

- (BOOL)isEmpty
{
  availableKeysToTry = [(HAPKeyBag *)self availableKeysToTry];
  hmf_isEmpty = [availableKeysToTry hmf_isEmpty];

  return hmf_isEmpty;
}

- (id)currentIdentity
{
  v15 = *MEMORY[0x277D85DE8];
  if ([(HAPKeyBag *)self currentIndexInBag]== -1)
  {
    [(HAPKeyBag *)self setCurrentIndexInBag:[(HAPKeyBag *)self currentIndexInBag]+ 1];
  }

  if ([(HAPKeyBag *)self isValidIndex:[(HAPKeyBag *)self currentIndexInBag]])
  {
    availableKeysToTry = [(HAPKeyBag *)self availableKeysToTry];
    v4 = [availableKeysToTry objectAtIndex:{-[HAPKeyBag currentIndexInBag](self, "currentIndexInBag")}];

    v5 = objc_autoreleasePoolPush();
    selfCopy = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      v11 = 138543618;
      v12 = v8;
      v13 = 2112;
      v14 = v4;
      _os_log_impl(&dword_22AADC000, v7, OS_LOG_TYPE_INFO, "%{public}@Current Identity [%@]", &v11, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
  }

  else
  {
    v4 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)nextIdentity
{
  v22 = *MEMORY[0x277D85DE8];
  if ([(HAPKeyBag *)self isEmpty])
  {
    currentIdentity = 0;
  }

  else
  {
    [(HAPKeyBag *)self setCurrentIndexInBag:[(HAPKeyBag *)self currentIndexInBag]+ 1];
    currentIdentity = [(HAPKeyBag *)self currentIdentity];
    v4 = objc_autoreleasePoolPush();
    selfCopy = self;
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      v8 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HAPKeyBag currentIndexInBag](selfCopy, "currentIndexInBag")}];
      v9 = MEMORY[0x277CCABB0];
      availableKeysToTry = [(HAPKeyBag *)selfCopy availableKeysToTry];
      v11 = [v9 numberWithUnsignedInteger:{objc_msgSend(availableKeysToTry, "count")}];
      v14 = 138544130;
      v15 = v7;
      v16 = 2112;
      v17 = currentIdentity;
      v18 = 2112;
      v19 = v8;
      v20 = 2112;
      v21 = v11;
      _os_log_impl(&dword_22AADC000, v6, OS_LOG_TYPE_INFO, "%{public}@Fetching Identity [%@] at index : %@, total keys: [%@]", &v14, 0x2Au);
    }

    objc_autoreleasePoolPop(v4);
  }

  v12 = *MEMORY[0x277D85DE8];

  return currentIdentity;
}

- (BOOL)isValidIndex:(int64_t)index
{
  if (index < 0)
  {
    return 0;
  }

  availableKeysToTry = [(HAPKeyBag *)self availableKeysToTry];
  v5 = [availableKeysToTry count] > index;

  return v5;
}

- (void)setCurrentIndexInBag:(int64_t)bag
{
  os_unfair_lock_lock_with_options();
  self->_currentIndexInBag = bag;

  os_unfair_lock_unlock(&self->_lock);
}

- (int64_t)getCurrentIndexInBag
{
  os_unfair_lock_lock_with_options();
  currentIndexInBag = self->_currentIndexInBag;
  os_unfair_lock_unlock(&self->_lock);
  return currentIndexInBag;
}

- (id)_populateBagWithPairingIdentitiesForAccessory:(id)accessory fromStore:(id)store
{
  v25 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  storeCopy = store;
  v8 = objc_autoreleasePoolPush();
  v9 = MEMORY[0x277CBEB18];
  allAccessoryPairingKeys = [storeCopy allAccessoryPairingKeys];
  v11 = allAccessoryPairingKeys;
  if (allAccessoryPairingKeys)
  {
    v12 = allAccessoryPairingKeys;
  }

  else
  {
    v12 = MEMORY[0x277CBEBF8];
  }

  v13 = [v9 arrayWithArray:v12];

  v14 = [storeCopy getAssociatedControllerKeyForAccessory:accessoryCopy];
  if (v14 || ([storeCopy readControllerPairingKeyForAccessory:accessoryCopy error:0], (v14 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v15 = v14;
    [v13 removeObject:v14];
    [v13 insertObject:v15 atIndex:0];
  }

  if ([v13 hmf_isEmpty])
  {
    v16 = objc_autoreleasePoolPush();
    selfCopy = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      v23 = 138543362;
      v24 = v19;
      _os_log_impl(&dword_22AADC000, v18, OS_LOG_TYPE_ERROR, "%{public}@This is strange. We do not have any controller keys in the key chain.", &v23, 0xCu);
    }

    objc_autoreleasePoolPop(v16);
  }

  v20 = [v13 copy];

  objc_autoreleasePoolPop(v8);
  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

- (void)refreshKeys
{
  v23 = *MEMORY[0x277D85DE8];
  accessoryIdentifier = [(HAPKeyBag *)self accessoryIdentifier];

  if (!accessoryIdentifier)
  {
    _HMFPreconditionFailure();
LABEL_10:
    _HMFPreconditionFailure();
  }

  keyStore = [(HAPKeyBag *)self keyStore];

  if (!keyStore)
  {
    goto LABEL_10;
  }

  accessoryIdentifier2 = [(HAPKeyBag *)self accessoryIdentifier];
  keyStore2 = [(HAPKeyBag *)self keyStore];
  v7 = [(HAPKeyBag *)self _populateBagWithPairingIdentitiesForAccessory:accessoryIdentifier2 fromStore:keyStore2];

  os_unfair_lock_lock_with_options();
  availableKeysToTry = self->_availableKeysToTry;
  if (HMFEqualObjects())
  {
    self->_currentIndexInBag = -1;
    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    v9 = [v7 copy];
    v10 = self->_availableKeysToTry;
    self->_availableKeysToTry = v9;

    self->_currentIndexInBag = -1;
    os_unfair_lock_unlock(&self->_lock);
    v11 = objc_autoreleasePoolPush();
    selfCopy = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      accessoryIdentifier3 = [(HAPKeyBag *)selfCopy accessoryIdentifier];
      v17 = 138543874;
      v18 = v14;
      v19 = 2112;
      v20 = accessoryIdentifier3;
      v21 = 2112;
      v22 = v7;
      _os_log_impl(&dword_22AADC000, v13, OS_LOG_TYPE_INFO, "%{public}@Refreshed key bag for accessory [%@] with identities: [%@]", &v17, 0x20u);
    }

    objc_autoreleasePoolPop(v11);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (HAPKeyBag)initWithAccessoryIdentifier:(id)identifier keyStore:(id)store controllerKeyList:(id)list
{
  v36 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  storeCopy = store;
  listCopy = list;
  if (!identifierCopy)
  {
    _HMFPreconditionFailure();
  }

  v12 = listCopy;
  v27.receiver = self;
  v27.super_class = HAPKeyBag;
  v13 = [(HAPKeyBag *)&v27 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_accessoryIdentifier, identifier);
    objc_storeWeak(&v14->_keyStore, storeCopy);
    v14->_currentIndexInBag = -1;
    v15 = [v12 copy];
    availableKeysToTry = v14->_availableKeysToTry;
    v14->_availableKeysToTry = v15;

    v17 = objc_autoreleasePoolPush();
    v18 = v14;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = HMFGetLogIdentifier();
      v26 = v17;
      accessoryIdentifier = v14->_accessoryIdentifier;
      v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[NSArray count](v14->_availableKeysToTry, "count")}];
      firstObject = [(NSArray *)v14->_availableKeysToTry firstObject];
      *buf = 138544130;
      v29 = v20;
      v30 = 2112;
      v31 = accessoryIdentifier;
      v17 = v26;
      v32 = 2112;
      v33 = v22;
      v34 = 2112;
      v35 = firstObject;
      _os_log_impl(&dword_22AADC000, v19, OS_LOG_TYPE_INFO, "%{public}@Initialized key bag for accessory [%@] with %@ keys and primary identity: [%@]", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v17);
  }

  v24 = *MEMORY[0x277D85DE8];
  return v14;
}

- (HAPKeyBag)initWithAccessoryIdentifier:(id)identifier keyStore:(id)store
{
  identifierCopy = identifier;
  storeCopy = store;
  if (identifierCopy)
  {
    v8 = storeCopy;
    v9 = [(HAPKeyBag *)self _populateBagWithPairingIdentitiesForAccessory:identifierCopy fromStore:storeCopy];
    v10 = [(HAPKeyBag *)self initWithAccessoryIdentifier:identifierCopy keyStore:v8 controllerKeyList:v9];

    return v10;
  }

  else
  {
    v12 = _HMFPreconditionFailure();
    return +[(HAPKeyBag *)v12];
  }
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t8 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t8, &__block_literal_global);
  }

  v3 = logCategory__hmf_once_v9;

  return v3;
}

uint64_t __24__HAPKeyBag_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  logCategory__hmf_once_v9 = HMFCreateOSLogHandle();

  return MEMORY[0x2821F96F8]();
}

- (BOOL)associateControllerIdentifier:(id)identifier error:(id *)error
{
  v48 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  keyStore = [(HAPKeyBag *)self keyStore];
  accessoryIdentifier = [(HAPKeyBag *)self accessoryIdentifier];
  v41 = 0;
  v9 = [keyStore readPublicKeyForAccessoryName:accessoryIdentifier registeredWithHomeKit:0 error:&v41];
  v10 = v41;

  if (v9 && !v10)
  {
    if (identifierCopy)
    {
      keyStore2 = [(HAPKeyBag *)self keyStore];
      accessoryIdentifier2 = [(HAPKeyBag *)self accessoryIdentifier];
      v40 = 0;
      v13 = [keyStore2 isAccessoryAssociatedWithControllerKey:accessoryIdentifier2 controllerID:&v40];
      v14 = v40;

      if (v13 && [identifierCopy isEqualToString:v14])
      {
        v15 = objc_autoreleasePoolPush();
        selfCopy = self;
        v17 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          v18 = HMFGetLogIdentifier();
          accessoryIdentifier3 = [(HAPKeyBag *)selfCopy accessoryIdentifier];
          *buf = 138543874;
          v43 = v18;
          v44 = 2112;
          v45 = identifierCopy;
          v46 = 2112;
          v47 = accessoryIdentifier3;
          _os_log_impl(&dword_22AADC000, v17, OS_LOG_TYPE_INFO, "%{public}@Controller key %@ is already associated for accessory %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v15);
        v10 = 0;
        v20 = 1;
LABEL_21:

        goto LABEL_22;
      }
    }

    else
    {
      v14 = 0;
    }

    v26 = [HAPPairingIdentity alloc];
    accessoryIdentifier4 = [(HAPKeyBag *)self accessoryIdentifier];
    v28 = [objc_alloc(MEMORY[0x277D0F8B0]) initWithPairingKeyData:v9];
    v29 = [(HAPPairingIdentity *)v26 initWithIdentifier:accessoryIdentifier4 controllerKeyIdentifier:identifierCopy publicKey:v28 privateKey:0 permissions:0];

    keyStore3 = [(HAPKeyBag *)self keyStore];
    v39 = 0;
    v20 = [keyStore3 establishRelationshipBetweenAccessoryAndControllerKey:v29 error:&v39];
    v10 = v39;

    if ((v20 & 1) == 0)
    {
      v31 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v33 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        HMFGetLogIdentifier();
        v34 = v38 = v14;
        *buf = 138543618;
        v43 = v34;
        v44 = 2112;
        v45 = v10;
        _os_log_impl(&dword_22AADC000, v33, OS_LOG_TYPE_ERROR, "%{public}@Unable to establish relationship between accessory and controller key: %@", buf, 0x16u);

        v14 = v38;
      }

      objc_autoreleasePoolPop(v31);
      if (error)
      {
        v35 = v10;
        *error = v10;
      }
    }

    goto LABEL_21;
  }

  v21 = objc_autoreleasePoolPush();
  selfCopy3 = self;
  v23 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    v24 = HMFGetLogIdentifier();
    *buf = 138543618;
    v43 = v24;
    v44 = 2112;
    v45 = v10;
    _os_log_impl(&dword_22AADC000, v23, OS_LOG_TYPE_ERROR, "%{public}@Unable to fetch accessory public key for accessory with error: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v21);
  if (error)
  {
    v25 = v10;
    v20 = 0;
    *error = v10;
  }

  else
  {
    v20 = 0;
  }

LABEL_22:

  v36 = *MEMORY[0x277D85DE8];
  return v20;
}

- (BOOL)shouldRetryPVDueToAuthenticationError:(id)error
{
  v33 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  if (errorCopy)
  {
    v5 = objc_autoreleasePoolPush();
    selfCopy = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      v27 = 138543618;
      v28 = v8;
      v29 = 2112;
      v30 = errorCopy;
      _os_log_impl(&dword_22AADC000, v7, OS_LOG_TYPE_ERROR, "%{public}@PV failed with error: %@", &v27, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    userInfo = [errorCopy userInfo];
    v10 = [userInfo objectForKeyedSubscript:*MEMORY[0x277CCA7E8]];

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

    if (v12 && ([v12 domain], v13 = objc_claimAutoreleasedReturnValue(), v14 = *MEMORY[0x277CCA590], v15 = HMFEqualObjects(), v13, v15) && objc_msgSend(v12, "code") == -6754)
    {
      [(HAPKeyBag *)selfCopy associateControllerIdentifier:0 error:0];
      nextIdentity = [(HAPKeyBag *)selfCopy nextIdentity];
      v17 = nextIdentity != 0;
      v18 = objc_autoreleasePoolPush();
      v19 = selfCopy;
      v20 = HMFGetOSLogHandle();
      v21 = os_log_type_enabled(v20, OS_LOG_TYPE_INFO);
      if (nextIdentity)
      {
        if (v21)
        {
          v22 = HMFGetLogIdentifier();
          v23 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HAPKeyBag getCurrentIndexInBag](v19, "getCurrentIndexInBag")}];
          v27 = 138543874;
          v28 = v22;
          v29 = 2112;
          v30 = v23;
          v31 = 2112;
          v32 = nextIdentity;
          _os_log_impl(&dword_22AADC000, v20, OS_LOG_TYPE_INFO, "%{public}@Going to retry PV with next pairing Identity [%@]: %@", &v27, 0x20u);
        }

        objc_autoreleasePoolPop(v18);
      }

      else
      {
        if (v21)
        {
          v26 = HMFGetLogIdentifier();
          v27 = 138543362;
          v28 = v26;
          _os_log_impl(&dword_22AADC000, v20, OS_LOG_TYPE_INFO, "%{public}@Not retrying PV as exhausted all the keys from the key bag.", &v27, 0xCu);
        }

        objc_autoreleasePoolPop(v18);
        [(HAPKeyBag *)v19 refreshKeys];
      }
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  v24 = *MEMORY[0x277D85DE8];
  return v17;
}

@end