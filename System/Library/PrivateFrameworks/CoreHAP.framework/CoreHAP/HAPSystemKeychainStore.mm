@interface HAPSystemKeychainStore
+ (id)getDictionaryFromGenericData:(id)a3;
+ (id)logCategory;
+ (id)serializeDictionary:(id)a3 options:(unint64_t)a4;
+ (id)systemStore;
+ (id)updateAccessoryPairingGenericData:(id)a3 updatedControllerKeyIdentifier:(id)a4;
- (BOOL)_getFirstAvailableControllerKeyChainItemForAccount:(id)a3 publicKey:(id *)a4 secretKey:(id *)a5 userName:(id *)a6 keyPair:(id *)a7 error:(id *)a8;
- (BOOL)_savePairingIdentityToBackUpTableWithIdentifier:(id)a3 serializedKeyPair:(id)a4;
- (BOOL)_updateKeychainItemWithPlatformIdentifier:(void *)a3 keychainItem:(id)a4 error:(id *)a5;
- (BOOL)addKeychainItem:(id)a3 error:(id *)a4;
- (BOOL)createAccessoryPairingKey:(id)a3 error:(id *)a4;
- (BOOL)deleteAllPeripheralIdentifiers:(id *)a3;
- (BOOL)deleteKeychainItem:(id)a3 error:(id *)a4;
- (BOOL)deletePairingKeysForAccessory:(id)a3 error:(id *)a4;
- (BOOL)deletePeripheralIdentifierForAccessoryIdentifier:(id)a3 error:(id *)a4;
- (BOOL)deserializeKeyPair:(id)a3 publicKey:(id *)a4 secretKey:(id *)a5 error:(id *)a6;
- (BOOL)establishRelationshipBetweenAccessoryAndControllerKey:(id)a3 error:(id *)a4;
- (BOOL)getAllAvailableControllerPublicKeys:(id *)a3 secretKeys:(id *)a4 userNames:(id *)a5 error:(id *)a6;
- (BOOL)getControllerPublicKey:(id *)a3 secretKey:(id *)a4 keyPair:(id *)a5 username:(id *)a6 allowCreation:(BOOL)a7 error:(id *)a8;
- (BOOL)getCurrentiCloudIdentifier:(id *)a3 controllerPairingIdentifier:(id *)a4 error:(id *)a5;
- (BOOL)getOrCreateHH2ControllerKey:(id *)a3 secretKey:(id *)a4 keyPair:(id *)a5 username:(id *)a6;
- (BOOL)isAccessoryAssociatedWithControllerKey:(id)a3 controllerID:(id *)a4;
- (BOOL)isHH2Enabled;
- (BOOL)isHH2KeyType:(id)a3;
- (BOOL)registerAccessoryWithHomeKit:(id)a3 error:(id *)a4;
- (BOOL)removeAccessoryKeyForName:(id)a3 error:(id *)a4;
- (BOOL)removeAllAccessoryKeys:(id *)a3;
- (BOOL)removeControllerKeyPairForIdentifier:(id)a3 leaveTombstone:(BOOL)a4 error:(id *)a5;
- (BOOL)removeControllerKeyPairLeaveTombstone:(BOOL)a3 error:(id *)a4;
- (BOOL)saveAppleMediaAccessoryPairingIdentity:(id)a3;
- (BOOL)saveAppleMediaAccessorySensorPairingIdentity:(id)a3;
- (BOOL)saveKeyPair:(id)a3 username:(id)a4 syncable:(BOOL)a5 error:(id *)a6;
- (BOOL)savePairingIdentityToBackUpTable:(id)a3;
- (BOOL)savePeripheralIdentifier:(id)a3 forAccessoryIdentifier:(id)a4 protocolVersion:(unint64_t)a5 resumeSessionID:(unint64_t)a6 error:(id *)a7;
- (BOOL)savePublicKey:(id)a3 forAccessoryName:(id)a4 error:(id *)a5;
- (BOOL)triggerPreferredHH2ControllerKeyRoll;
- (BOOL)updateAccessoryPairingKey:(id)a3 error:(id *)a4;
- (BOOL)updateActiveControllerPairingIdentifier:(id)a3;
- (BOOL)updateCurrentiCloudIdentifier:(id)a3 controllerPairingIdentifier:(id)a4 error:(id *)a5;
- (BOOL)updateKeychainItem:(id)a3 createIfNeeded:(BOOL)a4 error:(id *)a5;
- (BOOL)updatePeripheralIdentifier:(id)a3 forAccessoryIdentifier:(id)a4 protocolVersion:(unint64_t)a5 previousVersion:(unint64_t *)a6 resumeSessionID:(unint64_t)a7 error:(id *)a8;
- (HAPSystemKeychainStore)init;
- (NSString)activeControllerPairingIdentifier;
- (id)_allAccessoryPairingKeysIncludingHH2Key:(BOOL)a3;
- (id)_auditKeychainItems:(id)a3 managedAccessories:(id)a4;
- (id)_chooseHH2KeyFromMultipleHH2Keys:(id)a3;
- (id)_getControllerKeychainItemError:(int *)a3;
- (id)_getControllerKeychainItemForKeyType:(id)a3 error:(int *)a4;
- (id)_lookupPairingIdentityFromBackUpTableWithIdentifier:(id)a3;
- (id)allAccessoryPairingKeys;
- (id)allKeychainItemsForType:(id)a3 identifier:(id)a4 syncable:(id)a5 error:(id *)a6;
- (id)allKeysForType:(id)a3 error:(id *)a4;
- (id)auditKeysOfManagedAccessories:(id)a3;
- (id)countAccessoryPairingKeysForMetrics;
- (id)dumpState;
- (id)getAssociatedControllerKeyForAccessory:(id)a3;
- (id)getHH2ControllerKeyWithIdentifier:(id)a3;
- (id)getPeripheralIdentifiersAndAccessoryNames;
- (id)getPreferredHH2ControllerKey;
- (id)pairingIdentityForAppleMediaAccessorySensorWithUUID:(id)a3;
- (id)pairingIdentityForAppleMediaAccessoryWithUUID:(id)a3;
- (id)pairingIdentityFromKeychainItem:(id)a3;
- (id)readAccessoryPairingKeyForAccessory:(id)a3 error:(id *)a4;
- (id)readControllerPairingKeyForAccessory:(id)a3 error:(id *)a4;
- (id)readPeripheralIdentifierForAccessoryIdentifier:(id)a3 protocolVersion:(unint64_t *)a4 resumeSessionID:(unint64_t *)a5 error:(id *)a6;
- (id)readPublicKeyForAccessoryName:(id)a3 registeredWithHomeKit:(BOOL *)a4 error:(id *)a5;
- (int)_addKeychainItem:(id)a3 logDuplicateItemError:(BOOL)a4;
- (int)_createControllerPublicKey:(id *)a3 secretKey:(id *)a4 keyPair:(id *)a5 username:(id *)a6;
- (int)_deleteAllPeripheralIdentifiers;
- (int)_deletePeripheralIdentifierForAccessoryIdentifier:(id)a3;
- (int)_getAllAvailableControllerPublicKeys:(id *)a3 secretKeys:(id *)a4 userNames:(id *)a5;
- (int)_getControllerPublicKey:(id *)a3 secretKey:(id *)a4 keyPair:(id *)a5 username:(id *)a6;
- (int)_getPeripheralIdentifier:(id *)a3 forAccessoryIdentifier:(id)a4 protocolVersion:(unint64_t *)a5 resumeSessionID:(unint64_t *)a6;
- (int)_getPublicKey:(id *)a3 registeredWithHomeKit:(BOOL *)a4 forAccessoryName:(id)a5;
- (int)_removeAccessoryKeyForName:(id)a3;
- (int)_removeKeychainItem:(id)a3 leaveTombstone:(BOOL)a4;
- (int)_savePeripheralIdentifier:(id)a3 forAccessoryIdentifier:(id)a4 protocolVersion:(unint64_t)a5 resumeSessionID:(unint64_t)a6;
- (int)_savePublicKey:(id)a3 forAccessoryName:(id)a4;
- (int)_updateCurrentiCloudIdentifier:(id)a3 controllerPairingIdentifier:(id)a4;
- (int)createHH2ControllerKey:(id *)a3 secretKey:(id *)a4 keyPair:(id *)a5 username:(id *)a6;
- (int)createHH2ControllerKeyWithUsername:(id)a3 publicKey:(id *)a4 secretKey:(id *)a5 keyPair:(id *)a6 username:(id *)a7;
- (void)_updateKeychainItemToInvisible:(id)a3;
- (void)configure;
- (void)dealloc;
- (void)ensureControllerKeyExistsForAllViews;
@end

@implementation HAPSystemKeychainStore

- (id)_chooseHH2KeyFromMultipleHH2Keys:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!v4)
  {
    _HMFPreconditionFailure();
  }

  v5 = v4;
  v6 = [v4 firstObject];
  if ([v5 count] < 2)
  {
    v8 = v6;
  }

  else
  {
    v7 = [v5 sortedArrayUsingComparator:&__block_literal_global_386];
    v8 = [v7 firstObject];

    v9 = objc_autoreleasePoolPush();
    v10 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v13 = [v8 account];
      v16 = 138543618;
      v17 = v12;
      v18 = 2112;
      v19 = v13;
      _os_log_impl(&dword_22AADC000, v11, OS_LOG_TYPE_INFO, "%{public}@Chosen HH2 Key : %@", &v16, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
  }

  v14 = *MEMORY[0x277D85DE8];

  return v8;
}

uint64_t __59__HAPSystemKeychainStore__chooseHH2KeyFromMultipleHH2Keys___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 account];
  v6 = [v4 account];

  v7 = [v5 compare:v6];
  return v7;
}

- (id)pairingIdentityForAppleMediaAccessorySensorWithUUID:(id)a3
{
  v47 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v39 = 0;
  v5 = [(HAPSystemKeychainStore *)self allKeychainItemsForType:&unk_283EA9740 identifier:0 syncable:MEMORY[0x277CBEC28] error:&v39];
  v6 = v39;
  v7 = v6;
  if (v5)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
    if ([v5 count] >= 2)
    {
      v14 = objc_autoreleasePoolPush();
      v15 = self;
      v16 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v17 = HMFGetLogIdentifier();
        *buf = 138543618;
        v44 = v17;
        v45 = 2112;
        v46 = v5;
        _os_log_impl(&dword_22AADC000, v16, OS_LOG_TYPE_INFO, "%{public}@Found multiple Identities for AMAS. Returning the first one: [%@]", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v14);
    }

    v18 = [v5 firstObject];
    v19 = [v18 valueData];
    v20 = _deserializeDataToKeyPair(v19, buf, __s);

    if (v20)
    {
      v21 = objc_autoreleasePoolPush();
      v22 = self;
      v23 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v24 = HMFGetLogIdentifier();
        *v40 = 138543362;
        v41 = v24;
        _os_log_impl(&dword_22AADC000, v23, OS_LOG_TYPE_ERROR, "%{public}@Unable to deserialize AMAS key-pair", v40, 0xCu);
      }

      objc_autoreleasePoolPop(v21);
      v13 = 0;
    }

    else
    {
      v25 = objc_alloc(MEMORY[0x277D0F8B0]);
      v26 = [MEMORY[0x277CBEA90] dataWithBytes:buf length:32];
      v27 = [v25 initWithPairingKeyData:v26];

      v28 = objc_alloc(MEMORY[0x277D0F8B0]);
      v29 = [MEMORY[0x277CBEA90] dataWithBytes:__s length:32];
      v30 = [v28 initWithPairingKeyData:v29];

      memset_s(__s, 0x20uLL, 0, 0x20uLL);
      if (v27 && v30)
      {
        v31 = objc_alloc(MEMORY[0x277D0F8A8]);
        v32 = [v18 account];
        v13 = [v31 initWithIdentifier:v32 publicKey:v27 privateKey:v30];
      }

      else
      {
        v33 = objc_autoreleasePoolPush();
        v34 = self;
        v35 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          v36 = HMFGetLogIdentifier();
          *v40 = 138543362;
          v41 = v36;
          _os_log_impl(&dword_22AADC000, v35, OS_LOG_TYPE_ERROR, "%{public}@Unable to initialize public or private key out of deserialized amas key pair", v40, 0xCu);
        }

        objc_autoreleasePoolPop(v33);
        v13 = 0;
      }
    }
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    v10 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543618;
      v44 = v12;
      v45 = 2112;
      v46 = v4;
      _os_log_impl(&dword_22AADC000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@Did not find the pairing identity for AMAS : %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
    v13 = 0;
  }

  v37 = *MEMORY[0x277D85DE8];

  return v13;
}

- (BOOL)saveAppleMediaAccessorySensorPairingIdentity:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!v4)
  {
    _HMFPreconditionFailure();
  }

  v5 = v4;
  v6 = [v4 publicKey];
  v7 = [v6 data];

  v8 = [v5 privateKey];
  v9 = [v8 data];

  v27 = 0;
  v10 = _serializeKeyPairToData([v7 bytes], objc_msgSend(v9, "bytes"), &v27);
  v11 = v27;
  if (v10)
  {
    v12 = objc_autoreleasePoolPush();
    v13 = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      v16 = HMErrorFromOSStatus(v10);
      *buf = 138543618;
      v29 = v15;
      v30 = 2112;
      v31 = v16;
      _os_log_impl(&dword_22AADC000, v14, OS_LOG_TYPE_ERROR, "%{public}@Unable to serialize apple media sensor pairing key pair to data: %@", buf, 0x16u);
LABEL_8:

      goto LABEL_9;
    }

    goto LABEL_9;
  }

  v17 = [v5 identifier];
  v18 = [(HAPSystemKeychainStore *)self _saveKeyPair:v11 username:v17 syncable:0 keyType:&unk_283EA9740];

  v12 = objc_autoreleasePoolPush();
  v19 = self;
  v20 = HMFGetOSLogHandle();
  v14 = v20;
  if (v18)
  {
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      v21 = [v5 identifier];
      v16 = HMErrorFromOSStatus(v18);
      *buf = 138543874;
      v29 = v15;
      v30 = 2112;
      v31 = v21;
      v32 = 2112;
      v33 = v16;
      _os_log_impl(&dword_22AADC000, v14, OS_LOG_TYPE_ERROR, "%{public}@Unable to save apple media sensor accessory pairing identity %@ : %@", buf, 0x20u);

      goto LABEL_8;
    }

LABEL_9:
    v22 = 0;
    goto LABEL_10;
  }

  v22 = 1;
  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    v25 = HMFGetLogIdentifier();
    v26 = [v5 identifier];
    *buf = 138543618;
    v29 = v25;
    v30 = 2112;
    v31 = v26;
    _os_log_impl(&dword_22AADC000, v14, OS_LOG_TYPE_INFO, "%{public}@Successfully saved pairing identity for apple media sensor accessory %@ to keychain", buf, 0x16u);
  }

LABEL_10:

  objc_autoreleasePoolPop(v12);
  v23 = *MEMORY[0x277D85DE8];
  return v22;
}

- (id)pairingIdentityForAppleMediaAccessoryWithUUID:(id)a3
{
  v47 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v39 = 0;
  v5 = [(HAPSystemKeychainStore *)self allKeychainItemsForType:&unk_283EA9728 identifier:0 syncable:MEMORY[0x277CBEC28] error:&v39];
  v6 = v39;
  v7 = v6;
  if (v5)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
    if ([v5 count] >= 2)
    {
      v14 = objc_autoreleasePoolPush();
      v15 = self;
      v16 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v17 = HMFGetLogIdentifier();
        *buf = 138543618;
        v44 = v17;
        v45 = 2112;
        v46 = v5;
        _os_log_impl(&dword_22AADC000, v16, OS_LOG_TYPE_INFO, "%{public}@Found multiple Identities for AMA. Returning the first one: [%@]", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v14);
    }

    v18 = [v5 firstObject];
    v19 = [v18 valueData];
    v20 = _deserializeDataToKeyPair(v19, buf, __s);

    if (v20)
    {
      v21 = objc_autoreleasePoolPush();
      v22 = self;
      v23 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v24 = HMFGetLogIdentifier();
        *v40 = 138543362;
        v41 = v24;
        _os_log_impl(&dword_22AADC000, v23, OS_LOG_TYPE_ERROR, "%{public}@Unable to deserialize AMA key-pair", v40, 0xCu);
      }

      objc_autoreleasePoolPop(v21);
      v13 = 0;
    }

    else
    {
      v25 = objc_alloc(MEMORY[0x277D0F8B0]);
      v26 = [MEMORY[0x277CBEA90] dataWithBytes:buf length:32];
      v27 = [v25 initWithPairingKeyData:v26];

      v28 = objc_alloc(MEMORY[0x277D0F8B0]);
      v29 = [MEMORY[0x277CBEA90] dataWithBytes:__s length:32];
      v30 = [v28 initWithPairingKeyData:v29];

      memset_s(__s, 0x20uLL, 0, 0x20uLL);
      if (v27 && v30)
      {
        v31 = objc_alloc(MEMORY[0x277D0F8A8]);
        v32 = [v18 account];
        v13 = [v31 initWithIdentifier:v32 publicKey:v27 privateKey:v30];
      }

      else
      {
        v33 = objc_autoreleasePoolPush();
        v34 = self;
        v35 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          v36 = HMFGetLogIdentifier();
          *v40 = 138543362;
          v41 = v36;
          _os_log_impl(&dword_22AADC000, v35, OS_LOG_TYPE_ERROR, "%{public}@Unable to initialize public or private key out of deserialized key pair", v40, 0xCu);
        }

        objc_autoreleasePoolPop(v33);
        v13 = 0;
      }
    }
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    v10 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543618;
      v44 = v12;
      v45 = 2112;
      v46 = v4;
      _os_log_impl(&dword_22AADC000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@Did not find the pairing identity for AMA : %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
    v13 = 0;
  }

  v37 = *MEMORY[0x277D85DE8];

  return v13;
}

- (BOOL)saveAppleMediaAccessoryPairingIdentity:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!v4)
  {
    _HMFPreconditionFailure();
  }

  v5 = v4;
  v6 = [v4 publicKey];
  v7 = [v6 data];

  v8 = [v5 privateKey];
  v9 = [v8 data];

  v27 = 0;
  v10 = _serializeKeyPairToData([v7 bytes], objc_msgSend(v9, "bytes"), &v27);
  v11 = v27;
  if (v10)
  {
    v12 = objc_autoreleasePoolPush();
    v13 = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      v16 = HMErrorFromOSStatus(v10);
      *buf = 138543618;
      v29 = v15;
      v30 = 2112;
      v31 = v16;
      _os_log_impl(&dword_22AADC000, v14, OS_LOG_TYPE_ERROR, "%{public}@Unable to serialize apple media pairing key pair to data: %@", buf, 0x16u);
LABEL_8:

      goto LABEL_9;
    }

    goto LABEL_9;
  }

  v17 = [v5 identifier];
  v18 = [(HAPSystemKeychainStore *)self _saveKeyPair:v11 username:v17 syncable:0 keyType:&unk_283EA9728];

  v12 = objc_autoreleasePoolPush();
  v19 = self;
  v20 = HMFGetOSLogHandle();
  v14 = v20;
  if (v18)
  {
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      v21 = [v5 identifier];
      v16 = HMErrorFromOSStatus(v18);
      *buf = 138543874;
      v29 = v15;
      v30 = 2112;
      v31 = v21;
      v32 = 2112;
      v33 = v16;
      _os_log_impl(&dword_22AADC000, v14, OS_LOG_TYPE_ERROR, "%{public}@Unable to save apple media accessory pairing identity %@ : %@", buf, 0x20u);

      goto LABEL_8;
    }

LABEL_9:
    v22 = 0;
    goto LABEL_10;
  }

  v22 = 1;
  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    v25 = HMFGetLogIdentifier();
    v26 = [v5 identifier];
    *buf = 138543618;
    v29 = v25;
    v30 = 2112;
    v31 = v26;
    _os_log_impl(&dword_22AADC000, v14, OS_LOG_TYPE_INFO, "%{public}@Successfully saved pairing identity for apple media accessory %@ to keychain", buf, 0x16u);
  }

LABEL_10:

  objc_autoreleasePoolPop(v12);
  v23 = *MEMORY[0x277D85DE8];
  return v22;
}

- (id)getAssociatedControllerKeyForAccessory:(id)a3
{
  v70 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!v4)
  {
    _HMFPreconditionFailure();
  }

  v5 = v4;
  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    *buf = 138543618;
    v63 = v9;
    v64 = 2112;
    v65 = v5;
    _os_log_impl(&dword_22AADC000, v8, OS_LOG_TYPE_INFO, "%{public}@Looking for associated controller key for accessory : [%@]", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:1751216193];
  v61 = 0;
  v11 = [(HAPSystemKeychainStore *)v7 _getKeychainItemsForAccessGroup:@"com.apple.hap.pairing" type:v10 account:v5 shouldReturnData:1 error:&v61];
  v12 = v11;
  if (v11 && ![v11 hmf_isEmpty])
  {
    if ([v12 count] >= 2)
    {
      v19 = objc_autoreleasePoolPush();
      v20 = v7;
      v21 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        v22 = HMFGetLogIdentifier();
        *buf = 138543618;
        v63 = v22;
        v64 = 2112;
        v65 = v12;
        _os_log_impl(&dword_22AADC000, v21, OS_LOG_TYPE_INFO, "%{public}@Warning: Multiple associated key exist : %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v19);
    }

    v23 = [v12 firstObject];
    v24 = objc_opt_class();
    v25 = [v23 genericData];
    v26 = [v24 getDictionaryFromGenericData:v25];

    if (v26)
    {
      v27 = [v26 hmf_stringForKey:@"ctrlKeyId"];
      if (v27)
      {
        v59 = 0;
        v60 = 0;
        v57 = 0;
        v58 = 0;
        v28 = [(HAPSystemKeychainStore *)v7 _getFirstAvailableControllerKeyChainItemForAccount:v27 publicKey:&v60 secretKey:&v59 userName:&v58 keyPair:0 error:&v57];
        v29 = v60;
        v30 = v59;
        v55 = v58;
        v31 = v57;
        v54 = v30;
        v56 = v31;
        if (!v28 || v31)
        {
          v44 = objc_autoreleasePoolPush();
          v45 = v7;
          v46 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
          {
            HMFGetLogIdentifier();
            v47 = v53 = v44;
            *buf = 138544130;
            v63 = v47;
            v64 = 2112;
            v65 = v27;
            v66 = 2112;
            v67 = v5;
            v68 = 2112;
            v69 = v56;
            _os_log_impl(&dword_22AADC000, v46, OS_LOG_TYPE_ERROR, "%{public}@No controller key exist for accessory : [Looking for controller key : %@] [accessory : %@] : [error : %@]", buf, 0x2Au);

            v44 = v53;
          }

          objc_autoreleasePoolPop(v44);
          v18 = 0;
        }

        else
        {
          v52 = [objc_alloc(MEMORY[0x277D0F8B0]) initWithPairingKeyData:v29];
          v32 = [objc_alloc(MEMORY[0x277D0F8B0]) initWithPairingKeyData:v30];
          context = objc_autoreleasePoolPush();
          v33 = v7;
          v34 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
          {
            HMFGetLogIdentifier();
            v35 = v50 = v29;
            *buf = 138543874;
            v63 = v35;
            v64 = 2112;
            v65 = v55;
            v66 = 2112;
            v67 = v5;
            _os_log_impl(&dword_22AADC000, v34, OS_LOG_TYPE_INFO, "%{public}@Found [%@] for accessory : [%@]", buf, 0x20u);

            v29 = v50;
          }

          objc_autoreleasePoolPop(context);
          v18 = [[HAPPairingIdentity alloc] initWithIdentifier:v27 publicKey:v52 privateKey:v32];
        }
      }

      else
      {
        v40 = objc_autoreleasePoolPush();
        v41 = v7;
        v42 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
        {
          v43 = HMFGetLogIdentifier();
          *buf = 138543618;
          v63 = v43;
          v64 = 2112;
          v65 = v5;
          _os_log_impl(&dword_22AADC000, v42, OS_LOG_TYPE_INFO, "%{public}@Generic dictionary does not contain the association key for accessory identifier [%@]", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v40);
        v18 = 0;
      }
    }

    else
    {
      v36 = objc_autoreleasePoolPush();
      v37 = v7;
      v38 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
      {
        v39 = HMFGetLogIdentifier();
        *buf = 138543618;
        v63 = v39;
        v64 = 2112;
        v65 = v5;
        _os_log_impl(&dword_22AADC000, v38, OS_LOG_TYPE_INFO, "%{public}@Generic data for the accessory does not exist for accessory identifier [%@]", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v36);
      v18 = 0;
    }
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    v14 = v7;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      v17 = HMErrorFromOSStatus(v61);
      *buf = 138543874;
      v63 = v16;
      v64 = 2112;
      v65 = v5;
      v66 = 2112;
      v67 = v17;
      _os_log_impl(&dword_22AADC000, v15, OS_LOG_TYPE_INFO, "%{public}@Could not locate the accessory keychain item for : %@, error: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v13);
    v18 = 0;
  }

  v48 = *MEMORY[0x277D85DE8];

  return v18;
}

- (BOOL)isHH2KeyType:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!v4)
  {
    _HMFPreconditionFailure();
  }

  v5 = v4;
  if ([(HAPSystemKeychainStore *)self isHH2Enabled])
  {
    v6 = objc_autoreleasePoolPush();
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:1752001330];
    v19 = 0;
    v8 = [(HAPSystemKeychainStore *)self _getKeychainItemsForAccessGroup:@"com.apple.hap.pairing" type:v7 account:v5 shouldReturnData:0 error:&v19];
    v9 = v8;
    if (v8 && ![v8 hmf_isEmpty])
    {
      v10 = objc_autoreleasePoolPush();
      v17 = self;
      v12 = HMFGetOSLogHandle();
      v14 = 1;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v18 = HMFGetLogIdentifier();
        *buf = 138543618;
        v21 = v18;
        v22 = 2112;
        v23 = v5;
        _os_log_impl(&dword_22AADC000, v12, OS_LOG_TYPE_INFO, "%{public}@[%@] is HH2 key type", buf, 0x16u);
      }
    }

    else
    {
      v10 = objc_autoreleasePoolPush();
      v11 = self;
      v12 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = HMFGetLogIdentifier();
        *buf = 138543618;
        v21 = v13;
        v22 = 2112;
        v23 = v5;
        _os_log_impl(&dword_22AADC000, v12, OS_LOG_TYPE_INFO, "%{public}@[%@] is not HH2 key type", buf, 0x16u);
      }

      v14 = 0;
    }

    objc_autoreleasePoolPop(v10);
    objc_autoreleasePoolPop(v6);
  }

  else
  {
    v14 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

- (id)pairingIdentityFromKeychainItem:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 valueData];
  v6 = _deserializeDataToKeyPair(v5, v29, __s);

  if (v6)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v26 = 138543362;
      v27 = v10;
      _os_log_impl(&dword_22AADC000, v9, OS_LOG_TYPE_INFO, "%{public}@Failed to get pairing identity from keychain item due to unable to deserialize data", &v26, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
    v11 = 0;
  }

  else
  {
    v12 = objc_alloc(MEMORY[0x277D0F8B0]);
    v13 = [MEMORY[0x277CBEA90] dataWithBytes:v29 length:32];
    v14 = [v12 initWithPairingKeyData:v13];

    v15 = objc_alloc(MEMORY[0x277D0F8B0]);
    v16 = [MEMORY[0x277CBEA90] dataWithBytes:__s length:32];
    v17 = [v15 initWithPairingKeyData:v16];

    memset_s(__s, 0x20uLL, 0, 0x20uLL);
    if (v14 && v17)
    {
      v18 = [HAPPairingIdentity alloc];
      v19 = [v4 account];
      v11 = [(HAPPairingIdentity *)v18 initWithIdentifier:v19 publicKey:v14 privateKey:v17 permissions:0];
    }

    else
    {
      v20 = objc_autoreleasePoolPush();
      v21 = self;
      v22 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v23 = HMFGetLogIdentifier();
        v26 = 138543362;
        v27 = v23;
        _os_log_impl(&dword_22AADC000, v22, OS_LOG_TYPE_ERROR, "%{public}@Failed to get pairing identity from keychain item due to unable to initialize public or private key out of deserialized key pair", &v26, 0xCu);
      }

      objc_autoreleasePoolPop(v20);
      v11 = 0;
    }
  }

  v24 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)_lookupPairingIdentityFromBackUpTableWithIdentifier:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HAPSystemKeychainStore *)self allKeysForType:&unk_283EA9710 error:0];
  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    *buf = 138543874;
    v17 = v9;
    v18 = 2112;
    v19 = v4;
    v20 = 2112;
    v21 = v5;
    _os_log_impl(&dword_22AADC000, v8, OS_LOG_TYPE_INFO, "%{public}@Was asked to look pairing key with identifier [%@] from the back up list: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v6);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __78__HAPSystemKeychainStore__lookupPairingIdentityFromBackUpTableWithIdentifier___block_invoke;
  v14[3] = &unk_2786D38A8;
  v15 = v4;
  v10 = v4;
  v11 = [v5 na_firstObjectPassingTest:v14];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

uint64_t __78__HAPSystemKeychainStore__lookupPairingIdentityFromBackUpTableWithIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = *(a1 + 32);
  v5 = HMFEqualObjects();

  return v5;
}

- (BOOL)savePairingIdentityToBackUpTable:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 publicKey];
    v7 = [v6 data];

    v8 = [v5 privateKey];
    v9 = [v8 data];

    v25 = 0;
    v10 = _serializeKeyPairToData([v7 bytes], objc_msgSend(v9, "bytes"), &v25);
    v11 = v25;
    if (v10)
    {
      v12 = objc_autoreleasePoolPush();
      v13 = self;
      v14 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = HMFGetLogIdentifier();
        v16 = HMErrorFromOSStatus(v10);
        *buf = 138543618;
        v27 = v15;
        v28 = 2112;
        v29 = v16;
        _os_log_impl(&dword_22AADC000, v14, OS_LOG_TYPE_ERROR, "%{public}@Unable to serialize pairing identity key pair to data: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v12);
      v17 = 0;
    }

    else
    {
      v22 = [v5 identifier];
      v17 = [(HAPSystemKeychainStore *)self _savePairingIdentityToBackUpTableWithIdentifier:v22 serializedKeyPair:v11];
    }
  }

  else
  {
    v18 = objc_autoreleasePoolPush();
    v19 = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      *buf = 138543362;
      v27 = v21;
    }

    objc_autoreleasePoolPop(v18);
    v17 = 0;
  }

  v23 = *MEMORY[0x277D85DE8];
  return v17;
}

- (BOOL)_savePairingIdentityToBackUpTableWithIdentifier:(id)a3 serializedKeyPair:(id)a4
{
  v33 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  v11 = v10;
  if (v6 && v7)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v12 = HMFGetLogIdentifier();
      v27 = 138543618;
      v28 = v12;
      v29 = 2112;
      v30 = v6;
    }

    objc_autoreleasePoolPop(v8);
    v13 = objc_alloc_init(HAPKeychainItem);
    [(HAPKeychainItem *)v13 setAccessGroup:@"com.apple.hap.pairing"];
    [(HAPKeychainItem *)v13 setLabel:@"HomeKit Pairing Identity Backup"];
    [(HAPKeychainItem *)v13 setItemDescription:@"Backup of identity used to pair with HomeKit accessories."];
    [(HAPKeychainItem *)v13 setAccount:v6];
    [(HAPKeychainItem *)v13 setValueData:v7];
    [(HAPKeychainItem *)v13 setSyncable:0];
    [(HAPKeychainItem *)v13 setType:&unk_283EA9710];
    v14 = [(HAPKeychainItem *)v13 type];
    v15 = __viewHintForKeyType(v14);
    [(HAPKeychainItem *)v13 setViewHint:v15];

    v16 = [(HAPSystemKeychainStore *)v9 _addKeychainItem:v13 logDuplicateItemError:1];
    v17 = v16 == 0;
    if (v16)
    {
      v18 = v16;
      v19 = objc_autoreleasePoolPush();
      v20 = v9;
      v21 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v22 = HMFGetLogIdentifier();
        v23 = HMErrorFromOSStatus(v18);
        v27 = 138543874;
        v28 = v22;
        v29 = 2112;
        v30 = v6;
        v31 = 2112;
        v32 = v23;
      }

      objc_autoreleasePoolPop(v19);
    }
  }

  else
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v24 = HMFGetLogIdentifier();
      v27 = 138543874;
      v28 = v24;
      v29 = 2112;
      v30 = v6;
      v31 = 2112;
      v32 = v7;
    }

    objc_autoreleasePoolPop(v8);
    v17 = 0;
  }

  v25 = *MEMORY[0x277D85DE8];
  return v17;
}

- (id)getPreferredHH2ControllerKey
{
  v17 = *MEMORY[0x277D85DE8];
  if ([(HAPSystemKeychainStore *)self isHH2Enabled])
  {
    v14 = 0;
    v3 = [(HAPSystemKeychainStore *)self allKeychainItemsForType:&unk_283EA9698 identifier:0 syncable:MEMORY[0x277CBEC38] error:&v14];
    v4 = v14;
    if (v3 && ([v3 count] ? (v5 = v4 == 0) : (v5 = 0), v5))
    {
      v11 = [(HAPSystemKeychainStore *)self _chooseHH2KeyFromMultipleHH2Keys:v3];
      v10 = [(HAPSystemKeychainStore *)self pairingIdentityFromKeychainItem:v11];
    }

    else
    {
      v6 = objc_autoreleasePoolPush();
      v7 = self;
      v8 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = HMFGetLogIdentifier();
        *buf = 138543362;
        v16 = v9;
        _os_log_impl(&dword_22AADC000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@Did not find the HH2 pairing key.", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v6);
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)getHH2ControllerKeyWithIdentifier:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(HAPSystemKeychainStore *)self isHH2Enabled])
  {
    v25 = 0;
    v5 = [(HAPSystemKeychainStore *)self allKeychainItemsForType:&unk_283EA9698 identifier:0 syncable:MEMORY[0x277CBEC38] error:&v25];
    v6 = v25;
    v20 = MEMORY[0x277D85DD0];
    v21 = 3221225472;
    v22 = __60__HAPSystemKeychainStore_getHH2ControllerKeyWithIdentifier___block_invoke;
    v23 = &unk_2786D37E0;
    v7 = v4;
    v24 = v7;
    v8 = [v5 na_firstObjectPassingTest:&v20];
    if (v8)
    {
      v9 = [(HAPSystemKeychainStore *)self pairingIdentityFromKeychainItem:v8, v20, v21, v22, v23];
    }

    else
    {
      v10 = objc_autoreleasePoolPush();
      v11 = self;
      v12 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = HMFGetLogIdentifier();
        *buf = 138543874;
        v27 = v13;
        v28 = 2112;
        v29 = v7;
        v30 = 2112;
        v31 = v6;
        _os_log_impl(&dword_22AADC000, v12, OS_LOG_TYPE_ERROR, "%{public}@Failed to find HH2 controller key with identifier: %@ with error: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v10);
      v9 = [(HAPSystemKeychainStore *)v11 _lookupPairingIdentityFromBackUpTableWithIdentifier:v7, v20, v21, v22, v23];
      if (v9)
      {
        v14 = objc_autoreleasePoolPush();
        v15 = v11;
        v16 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v17 = HMFGetLogIdentifier();
          *buf = 138543618;
          v27 = v17;
          v28 = 2112;
          v29 = v9;
          _os_log_impl(&dword_22AADC000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@Detected HH2 key loss. Looks like we found the key from our back up list. Going to restore it by saving it as hmk2 type : %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v14);
        [(HAPSystemKeychainStore *)v15 saveHH2PairingIdentity:v9 syncable:1];
      }
    }
  }

  else
  {
    v9 = 0;
  }

  v18 = *MEMORY[0x277D85DE8];

  return v9;
}

uint64_t __60__HAPSystemKeychainStore_getHH2ControllerKeyWithIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 account];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (BOOL)getOrCreateHH2ControllerKey:(id *)a3 secretKey:(id *)a4 keyPair:(id *)a5 username:(id *)a6
{
  v37 = *MEMORY[0x277D85DE8];
  if ([(HAPSystemKeychainStore *)self isHH2Enabled])
  {
    v33 = 0;
    v11 = [(HAPSystemKeychainStore *)self allKeychainItemsForType:&unk_283EA9698 identifier:0 syncable:MEMORY[0x277CBEC38] error:&v33];
    v12 = v33;
    v13 = v12;
    if (v11)
    {
      v14 = v12 == 0;
    }

    else
    {
      v14 = 0;
    }

    if (!v14)
    {
      v15 = objc_autoreleasePoolPush();
      v16 = self;
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = HMFGetLogIdentifier();
        *buf = 138543362;
        v36 = v18;
        _os_log_impl(&dword_22AADC000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@Did not find the HH2 pairing key. Creating a new HH2 pairing key.", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v15);
      if ([(HAPSystemKeychainStore *)v16 createHH2ControllerKey:a3 secretKey:a4 keyPair:a5 username:a6])
      {
        v19 = objc_autoreleasePoolPush();
        v20 = v16;
        v21 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          v22 = HMFGetLogIdentifier();
          *buf = 138543362;
          v36 = v22;
          _os_log_impl(&dword_22AADC000, v21, OS_LOG_TYPE_ERROR, "%{public}@Unable to get or create HH2 pairing key.", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v19);
        v23 = 0;
        goto LABEL_31;
      }

LABEL_30:
      v23 = 1;
LABEL_31:

      goto LABEL_32;
    }

    v24 = [(HAPSystemKeychainStore *)self _chooseHH2KeyFromMultipleHH2Keys:v11];
    v25 = [v24 valueData];
    v26 = _deserializeDataToKeyPair(v25, buf, __s);

    if (a3)
    {
      if (!v26)
      {
        v27 = [MEMORY[0x277CBEA90] dataWithBytes:buf length:32];
        *a3 = v27;

        if (!a4)
        {
          goto LABEL_21;
        }

        goto LABEL_20;
      }

      *a3 = 0;
    }

    if (!a4)
    {
      goto LABEL_21;
    }

    if (v26)
    {
      *a4 = 0;
      goto LABEL_21;
    }

LABEL_20:
    v28 = [MEMORY[0x277CBEA90] dataWithBytes:__s length:32];
    *a4 = v28;

LABEL_21:
    if (a5)
    {
      if (!v26)
      {
        v29 = [v24 valueData];
        *a5 = v29;

        if (!a6)
        {
          goto LABEL_29;
        }

        goto LABEL_28;
      }

      *a5 = 0;
    }

    if (!a6)
    {
LABEL_29:
      memset_s(__s, 0x20uLL, 0, 0x20uLL);

      goto LABEL_30;
    }

    if (v26)
    {
      *a6 = 0;
      goto LABEL_29;
    }

LABEL_28:
    v30 = [v24 account];
    *a6 = v30;

    goto LABEL_29;
  }

  v23 = 0;
LABEL_32:
  v31 = *MEMORY[0x277D85DE8];
  return v23;
}

- (int)createHH2ControllerKeyWithUsername:(id)a3 publicKey:(id *)a4 secretKey:(id *)a5 keyPair:(id *)a6 username:(id *)a7
{
  v55 = *MEMORY[0x277D85DE8];
  v12 = a3;
  if ([(HAPSystemKeychainStore *)self isHH2Enabled])
  {
    cced25519_make_key_pair_compat();
    v46 = 0;
    _serializeKeyPairToData(v54, __s, &v46);
    v13 = v46;
    v14 = objc_alloc_init(HAPKeychainItem);
    [(HAPKeychainItem *)v14 setAccessGroup:@"com.apple.hap.pairing"];
    [(HAPKeychainItem *)v14 setLabel:@"HomeKit Pairing Identity"];
    [(HAPKeychainItem *)v14 setItemDescription:@"Identity used to pair with HomeKit accessories."];
    [(HAPKeychainItem *)v14 setAccount:v12];
    [(HAPKeychainItem *)v14 setValueData:v13];
    [(HAPKeychainItem *)v14 setSyncable:1];
    [(HAPKeychainItem *)v14 setType:&unk_283EA9698];
    v15 = [(HAPKeychainItem *)v14 type];
    v16 = __viewHintForKeyType(v15);
    [(HAPKeychainItem *)v14 setViewHint:v16];

    v17 = [(HAPSystemKeychainStore *)self _addKeychainItem:v14 logDuplicateItemError:1];
    if (v17)
    {
      v45 = a7;
      context = objc_autoreleasePoolPush();
      v18 = self;
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        HMFGetLogIdentifier();
        v20 = v43 = v13;
        HMErrorFromOSStatus(v17);
        v21 = v42 = a6;
        *buf = 138543874;
        v48 = v20;
        v49 = 2112;
        v50 = v12;
        v51 = 2112;
        v52 = v21;
        _os_log_impl(&dword_22AADC000, v19, OS_LOG_TYPE_ERROR, "%{public}@Failed to create HH2 controller key for username %@ with error: %@", buf, 0x20u);

        a6 = v42;
        v13 = v43;
      }

      objc_autoreleasePoolPop(context);
      a7 = v45;
      if (a4)
      {
        *a4 = 0;
      }
    }

    else if (a4)
    {
      v22 = [MEMORY[0x277CBEA90] dataWithBytes:v54 length:32];
      *a4 = v22;
    }

    if (a5)
    {
      if (!v17)
      {
        v30 = [MEMORY[0x277CBEA90] dataWithBytes:__s length:32];
        *a5 = v30;

        if (!a7)
        {
          goto LABEL_18;
        }

        goto LABEL_14;
      }

      *a5 = 0;
    }

    if (!a7)
    {
      goto LABEL_18;
    }

LABEL_14:
    if (v17)
    {
      v23 = 0;
    }

    else
    {
      v23 = v12;
    }

    *a7 = v23;
LABEL_18:
    if (a6)
    {
      if (v17)
      {
        *a6 = 0;
LABEL_22:
        v24 = objc_autoreleasePoolPush();
        v25 = self;
        v26 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          HMFGetLogIdentifier();
          v28 = v27 = v13;
          v29 = HMErrorFromOSStatus(v17);
          *buf = 138543618;
          v48 = v28;
          v49 = 2112;
          v50 = v29;
          _os_log_impl(&dword_22AADC000, v26, OS_LOG_TYPE_ERROR, "%{public}@Could not create HH2 controller key : %@", buf, 0x16u);

          v13 = v27;
        }

        objc_autoreleasePoolPop(v24);
LABEL_31:
        memset_s(__s, 0x20uLL, 0, 0x20uLL);

        goto LABEL_32;
      }

      v31 = [(HAPKeychainItem *)v14 valueData];
      *a6 = v31;
    }

    else if (v17)
    {
      goto LABEL_22;
    }

    v32 = v13;
    [(HAPSystemKeychainStore *)self _savePairingIdentityToBackUpTableWithIdentifier:v12 serializedKeyPair:v13];
    v33 = objc_autoreleasePoolPush();
    v34 = self;
    v35 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
    {
      v36 = HMFGetLogIdentifier();
      v37 = HMFBooleanToString();
      *buf = 138543618;
      v48 = v36;
      v49 = 2112;
      v50 = v37;
      _os_log_impl(&dword_22AADC000, v35, OS_LOG_TYPE_INFO, "%{public}@Saving the HH2 key as back up key : %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v33);
    v38 = objc_opt_new();
    v39 = [v38 backupWithInfo:0];

    v13 = v32;
    goto LABEL_31;
  }

  LODWORD(v17) = -6705;
LABEL_32:

  v40 = *MEMORY[0x277D85DE8];
  return v17;
}

- (int)createHH2ControllerKey:(id *)a3 secretKey:(id *)a4 keyPair:(id *)a5 username:(id *)a6
{
  v11 = [MEMORY[0x277CCAD78] UUID];
  v12 = [v11 UUIDString];
  LODWORD(a6) = [(HAPSystemKeychainStore *)self createHH2ControllerKeyWithUsername:v12 publicKey:a3 secretKey:a4 keyPair:a5 username:a6];

  return a6;
}

- (BOOL)triggerPreferredHH2ControllerKeyRoll
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = [(HAPSystemKeychainStore *)self getPreferredHH2ControllerKey];
  if (v3)
  {
    v4 = 0;
    do
    {
      v5 = v4;
      v6 = [MEMORY[0x277CCAD78] UUID];
      v4 = [v6 UUIDString];

      v7 = [v3 identifier];
      v8 = [v4 compare:v7];
    }

    while (v8 == 1);
    v9 = [(HAPSystemKeychainStore *)self createHH2ControllerKeyWithUsername:v4 publicKey:0 secretKey:0 keyPair:0 username:0]== 0;
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    v11 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      v16 = 138543362;
      v17 = v13;
      _os_log_impl(&dword_22AADC000, v12, OS_LOG_TYPE_ERROR, "%{public}@Failed to trigger preferred hh2 controller key roll due to no existing HH2 controller key", &v16, 0xCu);
    }

    objc_autoreleasePoolPop(v10);
    v9 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v9;
}

- (id)allAccessoryPairingKeys
{
  v3 = [(HAPSystemKeychainStore *)self isHH2Enabled];

  return [(HAPSystemKeychainStore *)self _allAccessoryPairingKeysIncludingHH2Key:v3];
}

- (id)countAccessoryPairingKeysForMetrics
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = objc_autoreleasePoolPush();
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __61__HAPSystemKeychainStore_countAccessoryPairingKeysForMetrics__block_invoke;
  v11 = &unk_2786D3880;
  v12 = self;
  v5 = v3;
  v13 = v5;
  [&unk_283EA9BA8 hmf_enumerateWithAutoreleasePoolUsingBlock:&v8];

  objc_autoreleasePoolPop(v4);
  v6 = [v5 copy];

  return v6;
}

void __61__HAPSystemKeychainStore_countAccessoryPairingKeysForMetrics__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v9 = 0;
  v4 = a2;
  v5 = [v3 allKeysForType:v4 error:&v9];
  v6 = v9;
  v7 = *(a1 + 40);
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v5, "count")}];
  [v7 setObject:v8 forKey:v4];
}

- (id)_allAccessoryPairingKeysIncludingHH2Key:(BOOL)a3
{
  v3 = a3;
  v5 = [MEMORY[0x277CBEB18] array];
  v6 = objc_autoreleasePoolPush();
  if (v3)
  {
    v7 = [&unk_283EA9B90 arrayByAddingObjectsFromArray:&unk_283EA9B78];
  }

  else
  {
    v7 = &unk_283EA9B78;
  }

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __66__HAPSystemKeychainStore__allAccessoryPairingKeysIncludingHH2Key___block_invoke;
  v10[3] = &unk_2786D3880;
  v10[4] = self;
  v8 = v5;
  v11 = v8;
  [v7 hmf_enumerateWithAutoreleasePoolUsingBlock:v10];

  objc_autoreleasePoolPop(v6);

  return v8;
}

void __66__HAPSystemKeychainStore__allAccessoryPairingKeysIncludingHH2Key___block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  v15 = 0;
  v5 = [v4 allKeysForType:v3 error:&v15];
  v6 = v15;
  if ([v5 count])
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __66__HAPSystemKeychainStore__allAccessoryPairingKeysIncludingHH2Key___block_invoke_356;
    v13[3] = &unk_2786D3858;
    v14 = *(a1 + 40);
    [v5 hmf_enumerateWithAutoreleasePoolUsingBlock:v13];
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 32);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v10 = HMFGetLogIdentifier();
      v11 = KeyTypeDescription(v3);
      *buf = 138543874;
      v17 = v10;
      v18 = 2080;
      v19 = v11;
      v20 = 2112;
      v21 = v6;
      _os_log_impl(&dword_22AADC000, v9, OS_LOG_TYPE_DEBUG, "%{public}@Error while retrieving all identifies for keyType : %s, error: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __66__HAPSystemKeychainStore__allAccessoryPairingKeysIncludingHH2Key___block_invoke_356(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([*(a1 + 32) containsObject:?] & 1) == 0)
  {
    [*(a1 + 32) addObject:v3];
  }
}

- (id)allKeysForType:(id)a3 error:(id *)a4
{
  v6 = MEMORY[0x277CBEB18];
  v7 = a3;
  v8 = [v6 array];
  v22 = 0;
  v9 = [(HAPSystemKeychainStore *)self allKeychainItemsForType:v7 identifier:0 syncable:MEMORY[0x277CBEC38] error:&v22];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __47__HAPSystemKeychainStore_allKeysForType_error___block_invoke;
  v20[3] = &unk_2786D3830;
  v10 = v8;
  v21 = v10;
  [v9 hmf_enumerateWithAutoreleasePoolUsingBlock:v20];
  v19 = 0;
  v11 = [(HAPSystemKeychainStore *)self allKeychainItemsForType:v7 identifier:0 syncable:MEMORY[0x277CBEC28] error:&v19];

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __47__HAPSystemKeychainStore_allKeysForType_error___block_invoke_2;
  v17[3] = &unk_2786D3830;
  v12 = v10;
  v18 = v12;
  [v11 hmf_enumerateWithAutoreleasePoolUsingBlock:v17];
  if (a4)
  {
    if (v22)
    {
      v13 = v22;
    }

    else
    {
      v13 = v19;
    }

    *a4 = v13;
  }

  v14 = v18;
  v15 = v12;

  return v15;
}

uint64_t __47__HAPSystemKeychainStore_allKeysForType_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = [[HAPPairingIdentity alloc] initWithKeychainItem:v3];

  if (v5 && ([*(a1 + 32) containsObject:v5] & 1) == 0)
  {
    [*(a1 + 32) addObject:v5];
  }

  return MEMORY[0x2821F96F8]();
}

uint64_t __47__HAPSystemKeychainStore_allKeysForType_error___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = [[HAPPairingIdentity alloc] initWithKeychainItem:v3];

  if (v5 && ([*(a1 + 32) containsObject:v5] & 1) == 0)
  {
    [*(a1 + 32) addObject:v5];
  }

  return MEMORY[0x2821F96F8]();
}

- (BOOL)isAccessoryAssociatedWithControllerKey:(id)a3 controllerID:(id *)a4
{
  v31 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (!v6)
  {
    _HMFPreconditionFailure();
  }

  v7 = v6;
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:1751216193];
  v9 = [(HAPSystemKeychainStore *)self allKeychainItemsForType:v8 identifier:v7 syncable:0 error:0];

  if (v9 && ![v9 hmf_isEmpty])
  {
    if ([v9 count] >= 2)
    {
      v15 = objc_autoreleasePoolPush();
      v16 = self;
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = HMFGetLogIdentifier();
        *buf = 138543618;
        v28 = v18;
        v29 = 2112;
        v30 = v7;
        _os_log_impl(&dword_22AADC000, v17, OS_LOG_TYPE_ERROR, "%{public}@Unexpected error : Multiple entries found for accessory : %@. Using the first one", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v15);
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __78__HAPSystemKeychainStore_isAccessoryAssociatedWithControllerKey_controllerID___block_invoke;
      v26[3] = &unk_2786D3830;
      v26[4] = v16;
      [v9 hmf_enumerateWithAutoreleasePoolUsingBlock:v26];
    }

    v19 = [v9 firstObject];
    v20 = objc_opt_class();
    v21 = [v19 genericData];
    v22 = [v20 getDictionaryFromGenericData:v21];

    if (v22)
    {
      v23 = [v22 objectForKeyedSubscript:@"ctrlKeyId"];
      v14 = v23 != 0;
      if (a4 && v23)
      {
        v23 = v23;
        *a4 = v23;
      }
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    v11 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543618;
      v28 = v13;
      v29 = 2112;
      v30 = v7;
      _os_log_impl(&dword_22AADC000, v12, OS_LOG_TYPE_INFO, "%{public}@No keychain entries found for accessory : %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    v14 = 0;
  }

  v24 = *MEMORY[0x277D85DE8];
  return v14;
}

void __78__HAPSystemKeychainStore_isAccessoryAssociatedWithControllerKey_controllerID___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = HMFGetLogIdentifier();
    v9 = 138543618;
    v10 = v7;
    v11 = 2112;
    v12 = v3;
    _os_log_impl(&dword_22AADC000, v6, OS_LOG_TYPE_ERROR, "%{public}@%@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  v8 = *MEMORY[0x277D85DE8];
}

- (BOOL)deletePairingKeysForAccessory:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = objc_alloc_init(HAPMutableKeychainItem);
  [(HAPKeychainItem *)v7 setAccessGroup:@"com.apple.hap.pairing"];
  [(HAPKeychainItem *)v7 setType:&unk_283EA9638];
  v8 = [(HAPKeychainItem *)v7 type];
  v9 = [HAPSystemKeychainStore viewHintForType:v8];
  [(HAPKeychainItem *)v7 setViewHint:v9];

  [(HAPKeychainItem *)v7 setAccount:v6];
  LOBYTE(a4) = [(HAPSystemKeychainStore *)self deleteKeychainItem:v7 error:a4];

  return a4;
}

- (BOOL)createAccessoryPairingKey:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [[HAPMutableKeychainItem alloc] initWithPairingIdentity:v6];

  [(HAPKeychainItem *)v7 setAccessGroup:@"com.apple.hap.pairing"];
  [(HAPKeychainItem *)v7 setType:&unk_283EA9638];
  v8 = [(HAPKeychainItem *)v7 type];
  v9 = [HAPSystemKeychainStore viewHintForType:v8];
  [(HAPKeychainItem *)v7 setViewHint:v9];

  [(HAPKeychainItem *)v7 setItemDescription:@"HomeKit accessory that has been paired with this account."];
  [(HAPKeychainItem *)v7 setLabel:@"Paired HomeKit Accessory"];
  LOBYTE(a4) = [(HAPSystemKeychainStore *)self updateKeychainItem:v7 createIfNeeded:0 error:a4];

  return a4;
}

- (BOOL)updateAccessoryPairingKey:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [[HAPMutableKeychainItem alloc] initWithPairingIdentity:v6];

  [(HAPKeychainItem *)v7 setAccessGroup:@"com.apple.hap.pairing"];
  [(HAPKeychainItem *)v7 setType:&unk_283EA9638];
  v8 = [(HAPKeychainItem *)v7 type];
  v9 = [HAPSystemKeychainStore viewHintForType:v8];
  [(HAPKeychainItem *)v7 setViewHint:v9];

  LOBYTE(a4) = [(HAPSystemKeychainStore *)self updateKeychainItem:v7 createIfNeeded:0 error:a4];
  return a4;
}

- (id)readAccessoryPairingKeyForAccessory:(id)a3 error:(id *)a4
{
  v13 = 0;
  if (a4)
  {
    v4 = a4;
  }

  else
  {
    v4 = &v13;
  }

  v5 = [(HAPSystemKeychainStore *)self allKeychainItemsForType:&unk_283EA9638 identifier:a3 syncable:MEMORY[0x277CBEC28] error:v4];
  v6 = v5;
  if (v5)
  {
    if ([v5 count])
    {
      if ([v6 count] == 1)
      {
        v7 = [HAPPairingIdentity alloc];
        v8 = [v6 firstObject];
        v9 = [(HAPPairingIdentity *)v7 initWithKeychainItem:v8];

        goto LABEL_12;
      }

      v10 = MEMORY[0x277CCA9B8];
      v11 = 15;
    }

    else
    {
      v10 = MEMORY[0x277CCA9B8];
      v11 = 2;
    }

    [v10 hmfErrorWithCode:v11];
    *v4 = v9 = 0;
  }

  else
  {
    v9 = 0;
  }

LABEL_12:

  return v9;
}

- (BOOL)addKeychainItem:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [v6 viewHint];

  if (!v7)
  {
    _HMFPreconditionFailure();
    goto LABEL_11;
  }

  v8 = [v6 accessGroup];

  if (!v8)
  {
LABEL_11:
    _HMFPreconditionFailure();
    goto LABEL_12;
  }

  v9 = [v6 type];

  if (!v9)
  {
LABEL_12:
    _HMFPreconditionFailure();
    goto LABEL_13;
  }

  v10 = [v6 account];

  if (!v10)
  {
LABEL_13:
    _HMFPreconditionFailure();
    goto LABEL_14;
  }

  v11 = [v6 creationDate];

  if (!v11)
  {
LABEL_14:
    _HMFPreconditionFailure();
LABEL_15:
    v18 = _HMFPreconditionFailure();
    _Block_object_dispose(&v23, 8);
    _Block_object_dispose(&v29, 8);
    _Unwind_Resume(v18);
  }

  v12 = [v6 accessGroup];
  v13 = [v12 isEqual:@"com.apple.hap.pairing"];

  if ((v13 & 1) == 0)
  {
    goto LABEL_15;
  }

  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__5207;
  v27 = __Block_byref_object_dispose__5208;
  v28 = 0;
  v14 = [(HAPSystemKeychainStore *)self queue];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __48__HAPSystemKeychainStore_addKeychainItem_error___block_invoke;
  v19[3] = &unk_2786D4598;
  v19[4] = self;
  v15 = v6;
  v20 = v15;
  v21 = &v23;
  v22 = &v29;
  dispatch_sync(v14, v19);

  if (a4)
  {
    *a4 = v24[5];
  }

  v16 = *(v30 + 24);

  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(&v29, 8);

  return v16;
}

uint64_t __48__HAPSystemKeychainStore_addKeychainItem_error___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _addKeychainItem:*(a1 + 40) logDuplicateItemError:0];
  if (result)
  {
    v3 = HMErrorFromOSStatus(result);
    v4 = *(*(a1 + 48) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    return MEMORY[0x2821F96F8]();
  }

  else
  {
    *(*(*(a1 + 56) + 8) + 24) = 1;
  }

  return result;
}

- (BOOL)updateKeychainItem:(id)a3 createIfNeeded:(BOOL)a4 error:(id *)a5
{
  v8 = a3;
  v9 = [v8 mutableCopy];
  v10 = [v9 creationDate];

  if (!v10)
  {
    v11 = [MEMORY[0x277CBEAA8] date];
    [v9 setCreationDate:v11];

    v12 = [v9 viewHint];

    if (!v12)
    {
      v13 = [v8 type];
      v14 = __viewHintForKeyType(v13);
      [v9 setViewHint:v14];
    }
  }

  v15 = [v9 accessGroup];

  if (!v15)
  {
    _HMFPreconditionFailure();
    goto LABEL_13;
  }

  v16 = [v9 type];

  if (!v16)
  {
LABEL_13:
    _HMFPreconditionFailure();
    goto LABEL_14;
  }

  v17 = [v9 account];

  if (!v17)
  {
LABEL_14:
    _HMFPreconditionFailure();
    goto LABEL_15;
  }

  v18 = [v9 creationDate];

  if (!v18)
  {
LABEL_15:
    _HMFPreconditionFailure();
LABEL_16:
    v25 = _HMFPreconditionFailure();
    _Block_object_dispose(&v31, 8);
    _Block_object_dispose(&v37, 8);
    _Unwind_Resume(v25);
  }

  v19 = [v9 accessGroup];
  v20 = [v19 isEqual:@"com.apple.hap.pairing"];

  if ((v20 & 1) == 0)
  {
    goto LABEL_16;
  }

  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  v40 = 0;
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__5207;
  v35 = __Block_byref_object_dispose__5208;
  v36 = 0;
  v21 = [(HAPSystemKeychainStore *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__HAPSystemKeychainStore_updateKeychainItem_createIfNeeded_error___block_invoke;
  block[3] = &unk_2786D3740;
  block[4] = self;
  v22 = v9;
  v30 = a4;
  v27 = v22;
  v28 = &v31;
  v29 = &v37;
  dispatch_sync(v21, block);

  if (a5)
  {
    *a5 = v32[5];
  }

  v23 = *(v38 + 24);

  _Block_object_dispose(&v31, 8);
  _Block_object_dispose(&v37, 8);

  return v23;
}

void __66__HAPSystemKeychainStore_updateKeychainItem_createIfNeeded_error___block_invoke(uint64_t a1)
{
  v38 = *MEMORY[0x277D85DE8];
  v34 = 0;
  v2 = (a1 + 40);
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) accessGroup];
  v5 = [*v2 type];
  v6 = [*v2 account];
  v7 = [v3 _getKeychainItemsForAccessGroup:v4 type:v5 account:v6 shouldReturnData:1 error:&v34];

  if (v34 == -25300)
  {
    if (*(a1 + 64))
    {
      v8 = [*(a1 + 32) _addKeychainItem:*(a1 + 40) logDuplicateItemError:0];
      v34 = v8;
      if (v8)
      {
        v9 = HMErrorFromOSStatus(v8);
        v10 = *(*(a1 + 48) + 8);
        v11 = *(v10 + 40);
        *(v10 + 40) = v9;

        *(*(*(a1 + 56) + 8) + 24) = 0;
      }

      else
      {
        *(*(*(a1 + 56) + 8) + 24) = 1;
      }
    }

    else
    {
      v34 = 0;
    }
  }

  else if ([v7 count])
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v36 = __Block_byref_object_copy__5207;
    *v37 = __Block_byref_object_dispose__5208;
    *&v37[8] = 0;
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __66__HAPSystemKeychainStore_updateKeychainItem_createIfNeeded_error___block_invoke_2;
    v30[3] = &unk_2786D3808;
    v31 = *(a1 + 40);
    v32 = buf;
    v33 = *(a1 + 48);
    [v7 hmf_enumerateWithAutoreleasePoolUsingBlock:v30];
    if (*(*(*(a1 + 48) + 8) + 40))
    {

      _Block_object_dispose(buf, 8);
    }

    else
    {
      v23 = *(*&buf[8] + 40);
      if (v23)
      {
        v24 = *(a1 + 32);
        v25 = [v23 platformReference];
        v26 = *(a1 + 40);
        v27 = *(*(a1 + 48) + 8);
        obj = *(v27 + 40);
        LOBYTE(v24) = [v24 _updateKeychainItemWithPlatformIdentifier:v25 keychainItem:v26 error:&obj];
        objc_storeStrong((v27 + 40), obj);
        *(*(*(a1 + 56) + 8) + 24) = v24;
      }

      _Block_object_dispose(buf, 8);
    }
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    v13 = *(a1 + 32);
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      v16 = [*(a1 + 40) accessGroup];
      v17 = [*(a1 + 40) type];
      v18 = [*(a1 + 40) account];
      v19 = HMErrorFromOSStatus(v34);
      *buf = 138544386;
      *&buf[4] = v15;
      *&buf[12] = 2112;
      *&buf[14] = v16;
      *&buf[22] = 2112;
      v36 = v17;
      *v37 = 2112;
      *&v37[2] = v18;
      *&v37[10] = 2112;
      *&v37[12] = v19;
      _os_log_impl(&dword_22AADC000, v14, OS_LOG_TYPE_ERROR, "%{public}@Unable to get keychain items for access group %@, type %@, and account %@ due to error %@", buf, 0x34u);
    }

    objc_autoreleasePoolPop(v12);
    v20 = HMErrorFromOSStatus(v34);
    v21 = *(*(a1 + 48) + 8);
    v22 = *(v21 + 40);
    *(v21 + 40) = v20;
  }

  v28 = *MEMORY[0x277D85DE8];
}

void __66__HAPSystemKeychainStore_updateKeychainItem_createIfNeeded_error___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v13 = a2;
  if ([*(a1 + 32) isSyncable] && objc_msgSend(v13, "isSyncable"))
  {
    v7 = *(*(a1 + 40) + 8);
    v9 = *(v7 + 40);
    v8 = (v7 + 40);
    if (v9)
    {
      v10 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:15];
      v11 = *(*(a1 + 48) + 8);
      v12 = *(v11 + 40);
      *(v11 + 40) = v10;

      *(*(*(a1 + 56) + 8) + 24) = 0;
      *a4 = 1;
    }

    else
    {
      objc_storeStrong(v8, a2);
    }
  }
}

- (BOOL)deleteKeychainItem:(id)a3 error:(id *)a4
{
  v32 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__5207;
  v24 = __Block_byref_object_dispose__5208;
  v25 = 0;
  v7 = [(HAPSystemKeychainStore *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__HAPSystemKeychainStore_deleteKeychainItem_error___block_invoke;
  block[3] = &unk_2786D4F60;
  block[4] = self;
  v8 = v6;
  v18 = v8;
  v19 = &v20;
  dispatch_sync(v7, block);

  if (a4)
  {
    *a4 = v21[5];
  }

  if (v21[5])
  {
    v9 = objc_autoreleasePoolPush();
    v10 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      v13 = v21[5];
      *buf = 138543874;
      v27 = v12;
      v28 = 2112;
      v29 = v8;
      v30 = 2112;
      v31 = v13;
      _os_log_impl(&dword_22AADC000, v11, OS_LOG_TYPE_ERROR, "%{public}@Unable to remove keychain item %@: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v9);
    v14 = v21[5] == 0;
  }

  else
  {
    v14 = 1;
  }

  _Block_object_dispose(&v20, 8);
  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

uint64_t __51__HAPSystemKeychainStore_deleteKeychainItem_error___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _removeKeychainItem:*(a1 + 40) leaveTombstone:1];
  if (result)
  {
    v3 = HMErrorFromOSStatus(result);
    v4 = *(*(a1 + 48) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    return MEMORY[0x2821F96F8]();
  }

  return result;
}

- (id)allKeychainItemsForType:(id)a3 identifier:(id)a4 syncable:(id)a5 error:(id *)a6
{
  v51 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v39 = 0;
  v40 = &v39;
  v41 = 0x3032000000;
  v42 = __Block_byref_object_copy__5207;
  v43 = __Block_byref_object_dispose__5208;
  v44 = 0;
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__5207;
  v37 = __Block_byref_object_dispose__5208;
  v38 = 0;
  v13 = [(HAPSystemKeychainStore *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __76__HAPSystemKeychainStore_allKeychainItemsForType_identifier_syncable_error___block_invoke;
  block[3] = &unk_2786D50A0;
  v31 = &v39;
  block[4] = self;
  v14 = v10;
  v29 = v14;
  v15 = v11;
  v30 = v15;
  v32 = &v33;
  dispatch_sync(v13, block);

  if (a6)
  {
    *a6 = v34[5];
  }

  if (v34[5])
  {
    v16 = objc_autoreleasePoolPush();
    v17 = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      v20 = [v14 unsignedIntegerValue];
      v21 = v34[5];
      *buf = 138543874;
      v46 = v19;
      v47 = 2048;
      v48 = v20;
      v49 = 2112;
      v50 = v21;
      _os_log_impl(&dword_22AADC000, v18, OS_LOG_TYPE_ERROR, "%{public}@Unable to query keychain items for group %lu: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v16);
    v22 = 0;
  }

  else
  {
    v23 = v40[5];
    if (v12)
    {
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __76__HAPSystemKeychainStore_allKeychainItemsForType_identifier_syncable_error___block_invoke_310;
      v26[3] = &unk_2786D37E0;
      v27 = v12;
      v22 = [v23 na_filter:v26];
    }

    else
    {
      v22 = v23;
    }
  }

  _Block_object_dispose(&v33, 8);
  _Block_object_dispose(&v39, 8);

  v24 = *MEMORY[0x277D85DE8];

  return v22;
}

void __76__HAPSystemKeychainStore_allKeychainItemsForType_identifier_syncable_error___block_invoke(uint64_t a1)
{
  v8 = 0;
  v2 = [*(a1 + 32) _getKeychainItemsForAccessGroup:@"com.apple.hap.pairing" type:*(a1 + 40) account:*(a1 + 48) shouldReturnData:1 error:&v8];
  v3 = *(*(a1 + 56) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  if (v8)
  {
    v5 = HMErrorFromOSStatus(v8);
    v6 = *(*(a1 + 64) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;
  }
}

- (BOOL)_getFirstAvailableControllerKeyChainItemForAccount:(id)a3 publicKey:(id *)a4 secretKey:(id *)a5 userName:(id *)a6 keyPair:(id *)a7 error:(id *)a8
{
  v64 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v43 = a5;
  if ([(HAPSystemKeychainStore *)self isHH2Enabled])
  {
    v13 = [&unk_283EA9B60 arrayByAddingObjectsFromArray:&unk_283EA9B48];
  }

  else
  {
    v13 = &unk_283EA9B48;
  }

  v46 = a8;
  v47 = [MEMORY[0x277CBEB18] array];
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v14 = v13;
  v15 = [v14 countByEnumeratingWithState:&v48 objects:v63 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v49;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v49 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v48 + 1) + 8 * i);
        v20 = objc_autoreleasePoolPush();
        *buf = 0;
        v21 = [(HAPSystemKeychainStore *)self _getKeychainItemsForAccessGroup:@"com.apple.hap.pairing" type:v19 account:v12 shouldReturnData:1 error:buf];
        v22 = v21;
        if (*buf)
        {
          v23 = 1;
        }

        else
        {
          v23 = v21 == 0;
        }

        if (!v23)
        {
          [v47 addObjectsFromArray:v21];

          objc_autoreleasePoolPop(v20);
          goto LABEL_16;
        }

        objc_autoreleasePoolPop(v20);
      }

      v16 = [v14 countByEnumeratingWithState:&v48 objects:v63 count:16];
    }

    while (v16);
  }

LABEL_16:

  v24 = [v47 firstObject];
  if (!v24)
  {
    v25 = [0 account];
    v26 = [v25 isEqualToString:v12];

    if (v26)
    {
      v27 = objc_autoreleasePoolPush();
      v28 = self;
      v29 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        v30 = HMFGetLogIdentifier();
        *buf = 138543618;
        v60 = v30;
        v61 = 2112;
        v62 = v12;
        _os_log_impl(&dword_22AADC000, v29, OS_LOG_TYPE_ERROR, "%{public}@Couldn't find the controller key for given account identifier : %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v27);
      v31 = v46;
      if (!v46)
      {
        v33 = 0;
        goto LABEL_37;
      }

      v32 = HMErrorFromOSStatus(4294960569);
      v33 = 0;
      goto LABEL_27;
    }
  }

  v34 = [v24 valueData];
  v35 = _deserializeDataToKeyPair(v34, buf, __s);

  v33 = v35 == 0;
  if (v35)
  {
    v36 = objc_autoreleasePoolPush();
    v37 = self;
    v38 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      v39 = HMFGetLogIdentifier();
      v40 = HMErrorFromOSStatus(v35);
      *v52 = 138543874;
      v53 = v39;
      v54 = 2112;
      v55 = v12;
      v56 = 2112;
      v57 = v40;
      _os_log_impl(&dword_22AADC000, v38, OS_LOG_TYPE_ERROR, "%{public}@Unable to deserialize the key for account : %@, Encountered error: %@", v52, 0x20u);
    }

    objc_autoreleasePoolPop(v36);
    v31 = v46;
    if (v46)
    {
      v32 = HMErrorFromOSStatus(v35);
LABEL_27:
      *v31 = v32;
    }
  }

  else
  {
    if (a4)
    {
      *a4 = [MEMORY[0x277CBEA90] dataWithBytes:buf length:32];
    }

    if (v43)
    {
      *v43 = [MEMORY[0x277CBEA90] dataWithBytes:__s length:32];
    }

    if (a6)
    {
      *a6 = [v24 account];
    }

    if (a7)
    {
      *a7 = [v24 valueData];
    }

    memset_s(__s, 0x20uLL, 0, 0x20uLL);
  }

LABEL_37:

  v41 = *MEMORY[0x277D85DE8];
  return v33;
}

- (id)readControllerPairingKeyForAccessory:(id)a3 error:(id *)a4
{
  v38 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v30 = 0;
  v31 = 0;
  v28 = 0;
  v29 = 0;
  v6 = [(HAPSystemKeychainStore *)self _getControllerPublicKey:&v31 secretKey:&v30 keyPair:0 username:&v29 allowCreation:0 forAccessory:v5 error:&v28];
  v7 = v31;
  v8 = v30;
  v9 = v29;
  v10 = v28;
  if (v6)
  {
    v11 = [objc_alloc(MEMORY[0x277D0F8B0]) initWithPairingKeyData:v7];
    v12 = [objc_alloc(MEMORY[0x277D0F8B0]) initWithPairingKeyData:v8];
    v13 = [[HAPPairingIdentity alloc] initWithIdentifier:v9 publicKey:v11 privateKey:v12 permissions:0];
    if (!v13)
    {
      context = objc_autoreleasePoolPush();
      v14 = self;
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v25 = HMFGetLogIdentifier();
        *buf = 138543618;
        v33 = v25;
        v34 = 2112;
        v35 = v9;
        _os_log_impl(&dword_22AADC000, v15, OS_LOG_TYPE_ERROR, "%{public}@Failed to get pairing identity with username, %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(context);
      if (a4)
      {
        v16 = MEMORY[0x277CCA9B8];
        v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to retrieve pairing identity for accessory : %@", v5];
        *a4 = [v16 hapErrorWithCode:1 description:v17 reason:@"did not find pairing identity in keychain" suggestion:0 underlyingError:0];
      }
    }
  }

  else
  {
    v18 = objc_autoreleasePoolPush();
    v19 = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      *buf = 138543874;
      v33 = v21;
      v34 = 2112;
      v35 = v5;
      v36 = 2112;
      v37 = v10;
      _os_log_impl(&dword_22AADC000, v20, OS_LOG_TYPE_ERROR, "%{public}@Failed to get the accessory pairing key for accessory : %@ : %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v18);
    if (a4)
    {
      v22 = v10;
      v13 = 0;
      *a4 = v10;
    }

    else
    {
      v13 = 0;
    }
  }

  v23 = *MEMORY[0x277D85DE8];

  return v13;
}

- (int)_deleteAllPeripheralIdentifiers
{
  v19 = *MEMORY[0x277D85DE8];
  v17 = 0;
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:1751216194];
  v4 = [(HAPSystemKeychainStore *)self _getKeychainItemsForAccessGroup:@"com.apple.hap.pairing" type:v3 account:0 shouldReturnData:1 error:&v17];

  v5 = v17;
  if (!v17)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v13 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [(HAPSystemKeychainStore *)self _removeKeychainItem:*(*(&v13 + 1) + 8 * i) leaveTombstone:1, v13];
        }

        v8 = [v6 countByEnumeratingWithState:&v13 objects:v18 count:16];
      }

      while (v8);
    }

    v5 = v17;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)deleteAllPeripheralIdentifiers:(id *)a3
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__5207;
  v13 = __Block_byref_object_dispose__5208;
  v14 = 0;
  v5 = [(HAPSystemKeychainStore *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__HAPSystemKeychainStore_deleteAllPeripheralIdentifiers___block_invoke;
  block[3] = &unk_2786D4688;
  block[4] = self;
  block[5] = &v15;
  block[6] = &v9;
  dispatch_sync(v5, block);

  if (a3)
  {
    *a3 = v10[5];
  }

  v6 = *(v16 + 24);
  _Block_object_dispose(&v9, 8);

  _Block_object_dispose(&v15, 8);
  return v6;
}

void __57__HAPSystemKeychainStore_deleteAllPeripheralIdentifiers___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _deleteAllPeripheralIdentifiers];
  if (v2)
  {
    v3 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:v2 userInfo:0];
  }

  else
  {
    v3 = 0;
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  v4 = v3;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), v3);
  if (v2)
  {
  }
}

- (id)getPeripheralIdentifiersAndAccessoryNames
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__5207;
  v14 = __Block_byref_object_dispose__5208;
  v15 = 0;
  v3 = [(HAPSystemKeychainStore *)self queue];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __67__HAPSystemKeychainStore_getPeripheralIdentifiersAndAccessoryNames__block_invoke;
  v9[3] = &unk_2786D6E60;
  v9[4] = self;
  v9[5] = &v10;
  dispatch_sync(v3, v9);

  v4 = v11[5];
  if (!v4)
  {
    v5 = [MEMORY[0x277CBEB38] dictionary];
    v6 = v11[5];
    v11[5] = v5;

    v4 = v11[5];
  }

  v7 = v4;
  _Block_object_dispose(&v10, 8);

  return v7;
}

void __67__HAPSystemKeychainStore_getPeripheralIdentifiersAndAccessoryNames__block_invoke(uint64_t a1)
{
  v35 = *MEMORY[0x277D85DE8];
  v31 = 0;
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:1751216194];
  v4 = [v2 _getKeychainItemsForAccessGroup:@"com.apple.hap.pairing" type:v3 account:0 shouldReturnData:1 error:&v31];

  if (!v31)
  {
    v5 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(v4, "count")}];
    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v8 = v4;
    v9 = [v8 countByEnumeratingWithState:&v27 objects:v34 count:16];
    if (v9)
    {
      v10 = v9;
      v25 = v4;
      v11 = 0;
      v12 = *v28;
      do
      {
        v13 = 0;
        v14 = v11;
        do
        {
          if (*v28 != v12)
          {
            objc_enumerationMutation(v8);
          }

          v15 = *(*(&v27 + 1) + 8 * v13);
          v16 = [v15 valueData];
          v26 = v14;
          v17 = _deserializeUUID(v16, &v26);
          v11 = v26;

          v31 = v17;
          if (v31)
          {
            v18 = objc_autoreleasePoolPush();
            v19 = *(a1 + 32);
            v20 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
            {
              v21 = HMFGetLogIdentifier();
              *buf = 138543362;
              v33 = v21;
              _os_log_impl(&dword_22AADC000, v20, OS_LOG_TYPE_INFO, "%{public}@### Unable to deserialize UUID from keychain item", buf, 0xCu);
            }

            objc_autoreleasePoolPop(v18);
          }

          else
          {
            v22 = *(*(*(a1 + 40) + 8) + 40);
            v23 = [v15 account];
            [v22 setObject:v11 forKeyedSubscript:v23];
          }

          ++v13;
          v14 = v11;
        }

        while (v10 != v13);
        v10 = [v8 countByEnumeratingWithState:&v27 objects:v34 count:16];
      }

      while (v10);

      v4 = v25;
    }
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (int)_getPeripheralIdentifier:(id *)a3 forAccessoryIdentifier:(id)a4 protocolVersion:(unint64_t *)a5 resumeSessionID:(unint64_t *)a6
{
  v27 = 0;
  v10 = MEMORY[0x277CCABB0];
  v11 = a4;
  v12 = [v10 numberWithUnsignedInt:1751216194];
  v13 = [(HAPSystemKeychainStore *)self _getKeychainItemsForAccessGroup:@"com.apple.hap.pairing" type:v12 account:v11 shouldReturnData:1 error:&v27];

  if (v27)
  {
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v14 = 0;
    goto LABEL_17;
  }

  if ([v13 count] != 1)
  {
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v14 = 0;
    v27 = -6764;
    goto LABEL_17;
  }

  v14 = [v13 objectAtIndexedSubscript:0];
  v15 = [v14 valueData];
  v26 = 0;
  v16 = _deserializeUUID(v15, &v26);
  v17 = v26;
  v27 = v16;

  if (v27)
  {
    v18 = 0;
    v19 = 0;
    goto LABEL_17;
  }

  v18 = [v14 genericData];

  if (v18)
  {
    v20 = MEMORY[0x277CCAC58];
    v21 = [v14 genericData];
    v18 = [v20 propertyListWithData:v21 options:0 format:0 error:0];

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {

      v18 = 0;
    }
  }

  if (!a5)
  {
    v19 = 0;
    if (!a6)
    {
      goto LABEL_17;
    }

    goto LABEL_14;
  }

  v19 = [v18 objectForKeyedSubscript:@"BLE HomeKit Accessory Protocol Version"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    v19 = 0;
  }

  *a5 = [v19 integerValue];
  if (a6)
  {
LABEL_14:
    v22 = [v18 objectForKeyedSubscript:@"BLE Pair Resume Session ID"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {

      v22 = 0;
    }

    *a6 = [v22 longLongValue];
  }

LABEL_17:
  v23 = v27;
  if (a3)
  {
    if (v27)
    {
      v24 = 0;
    }

    else
    {
      v24 = v17;
    }

    *a3 = v24;
    v23 = v27;
  }

  return v23;
}

- (id)readPeripheralIdentifierForAccessoryIdentifier:(id)a3 protocolVersion:(unint64_t *)a4 resumeSessionID:(unint64_t *)a5 error:(id *)a6
{
  v10 = a3;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__5207;
  v31 = __Block_byref_object_dispose__5208;
  v32 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__5207;
  v25 = __Block_byref_object_dispose__5208;
  v26 = 0;
  v11 = [(HAPSystemKeychainStore *)self queue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __111__HAPSystemKeychainStore_readPeripheralIdentifierForAccessoryIdentifier_protocolVersion_resumeSessionID_error___block_invoke;
  v15[3] = &unk_2786D37B8;
  v15[4] = self;
  v17 = &v27;
  v12 = v10;
  v19 = a4;
  v20 = a5;
  v16 = v12;
  v18 = &v21;
  dispatch_sync(v11, v15);

  if (a6)
  {
    *a6 = v22[5];
  }

  v13 = v28[5];

  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v27, 8);

  return v13;
}

void __111__HAPSystemKeychainStore_readPeripheralIdentifierForAccessoryIdentifier_protocolVersion_resumeSessionID_error___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 48) + 8);
  obj = *(v2 + 40);
  v3 = [*(a1 + 32) _getPeripheralIdentifier:&obj forAccessoryIdentifier:*(a1 + 40) protocolVersion:*(a1 + 64) resumeSessionID:*(a1 + 72)];
  objc_storeStrong((v2 + 40), obj);
  v4 = HMErrorFromOSStatus(v3);
  v5 = *(*(a1 + 56) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

- (int)_deletePeripheralIdentifierForAccessoryIdentifier:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v19 = 0;
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:1751216194];
  v6 = [(HAPSystemKeychainStore *)self _getKeychainItemsForAccessGroup:@"com.apple.hap.pairing" type:v5 account:v4 shouldReturnData:1 error:&v19];

  v7 = v19;
  if (!v19)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v15 objects:v20 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v16;
LABEL_4:
      v12 = 0;
      while (1)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v19 = [(HAPSystemKeychainStore *)self _removeKeychainItem:*(*(&v15 + 1) + 8 * v12) leaveTombstone:1, v15];
        if (v19)
        {
          break;
        }

        if (v10 == ++v12)
        {
          v10 = [v8 countByEnumeratingWithState:&v15 objects:v20 count:16];
          if (v10)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }

    v7 = v19;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v7;
}

- (BOOL)deletePeripheralIdentifierForAccessoryIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__5207;
  v20 = __Block_byref_object_dispose__5208;
  v21 = 0;
  v7 = [(HAPSystemKeychainStore *)self queue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __81__HAPSystemKeychainStore_deletePeripheralIdentifierForAccessoryIdentifier_error___block_invoke;
  v11[3] = &unk_2786D4598;
  v8 = v6;
  v12 = v8;
  v13 = self;
  v14 = &v16;
  v15 = &v22;
  dispatch_sync(v7, v11);

  if (a4)
  {
    *a4 = v17[5];
  }

  v9 = *(v23 + 24);

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v22, 8);

  return v9;
}

uint64_t __81__HAPSystemKeychainStore_deletePeripheralIdentifierForAccessoryIdentifier_error___block_invoke(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = [*(a1 + 40) _deletePeripheralIdentifierForAccessoryIdentifier:?];
    if (!v2)
    {
      *(*(*(a1 + 56) + 8) + 24) = 1;
    }
  }

  else
  {
    v2 = 4294960591;
  }

  v3 = HMErrorFromOSStatus(v2);
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x2821F96F8]();
}

- (BOOL)updatePeripheralIdentifier:(id)a3 forAccessoryIdentifier:(id)a4 protocolVersion:(unint64_t)a5 previousVersion:(unint64_t *)a6 resumeSessionID:(unint64_t)a7 error:(id *)a8
{
  v12 = a3;
  v13 = a4;
  v43 = 0;
  v44 = &v43;
  v45 = 0x2020000000;
  v46 = 0;
  v37 = 0;
  v38 = &v37;
  v39 = 0x3032000000;
  v40 = __Block_byref_object_copy__5207;
  v41 = __Block_byref_object_dispose__5208;
  v42 = 0;
  v35[0] = 0;
  v35[1] = v35;
  v35[2] = 0x3032000000;
  v35[3] = __Block_byref_object_copy__5207;
  v35[4] = __Block_byref_object_dispose__5208;
  v36 = 0;
  v34[0] = 0;
  v34[1] = v34;
  v34[2] = 0x2020000000;
  v34[3] = 0;
  v33[0] = 0;
  v33[1] = v33;
  v33[2] = 0x2020000000;
  v33[3] = 0;
  v14 = [(HAPSystemKeychainStore *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __130__HAPSystemKeychainStore_updatePeripheralIdentifier_forAccessoryIdentifier_protocolVersion_previousVersion_resumeSessionID_error___block_invoke;
  block[3] = &unk_2786D3790;
  v15 = v13;
  v22 = v15;
  v23 = self;
  v25 = &v37;
  v26 = v35;
  v27 = v34;
  v28 = v33;
  v30 = a6;
  v31 = a5;
  v16 = v12;
  v32 = a7;
  v24 = v16;
  v29 = &v43;
  dispatch_sync(v14, block);

  if (a8)
  {
    *a8 = v38[5];
  }

  v17 = *(v44 + 24);

  _Block_object_dispose(v33, 8);
  _Block_object_dispose(v34, 8);
  _Block_object_dispose(v35, 8);

  _Block_object_dispose(&v37, 8);
  _Block_object_dispose(&v43, 8);

  return v17;
}

void __130__HAPSystemKeychainStore_updatePeripheralIdentifier_forAccessoryIdentifier_protocolVersion_previousVersion_resumeSessionID_error___block_invoke(uint64_t a1)
{
  v45 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(a1 + 40);
    v4 = *(a1 + 72);
    v5 = *(*(a1 + 64) + 8);
    obj = *(v5 + 40);
    [v3 _getPeripheralIdentifier:&obj forAccessoryIdentifier:v2 protocolVersion:*(v4 + 8) + 24 resumeSessionID:*(*(a1 + 80) + 8) + 24];
    objc_storeStrong((v5 + 40), obj);
    v6 = *(a1 + 96);
    if (v6)
    {
      v7 = *(*(*(a1 + 72) + 8) + 24);
      if (!v7)
      {
        v7 = *(a1 + 104);
      }

      *v6 = v7;
    }

    if (![*(*(*(a1 + 64) + 8) + 40) hmf_isEqualToUUID:*(a1 + 48)] || *(*(*(a1 + 72) + 8) + 24) != *(a1 + 104) || *(*(*(a1 + 80) + 8) + 24) != *(a1 + 112))
    {
      [*(a1 + 40) _deletePeripheralIdentifierForAccessoryIdentifier:*(a1 + 32)];
      v8 = objc_autoreleasePoolPush();
      v9 = *(a1 + 40);
      v10 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = HMFGetLogIdentifier();
        v12 = *(a1 + 32);
        v13 = *(*(*(a1 + 64) + 8) + 40);
        v14 = *(a1 + 48);
        v15 = *(*(*(a1 + 72) + 8) + 24);
        v16 = *(*(*(a1 + 80) + 8) + 24);
        v17 = *(a1 + 104);
        v18 = *(a1 + 112);
        *buf = 138545154;
        v30 = v11;
        v31 = 2112;
        v32 = v12;
        v33 = 2114;
        v34 = v13;
        v35 = 2114;
        v36 = v14;
        v37 = 2048;
        v38 = v15;
        v39 = 2048;
        v40 = v17;
        v41 = 2048;
        v42 = v16;
        v43 = 2048;
        v44 = v18;
        _os_log_impl(&dword_22AADC000, v10, OS_LOG_TYPE_INFO, "%{public}@Updating peripheral [%@] keychain:\n peripheralIdentifier from %{public}@ to %{public}@,\n protocolVersion from %lu to %lu,\n resumeSessionID from %llu to %llu.", buf, 0x52u);
      }

      objc_autoreleasePoolPop(v8);
      v19 = [*(a1 + 40) _savePeripheralIdentifier:*(a1 + 48) forAccessoryIdentifier:*(a1 + 32) protocolVersion:*(a1 + 104) resumeSessionID:*(a1 + 112)];
      if (v19)
      {
        v20 = HMErrorFromOSStatus(v19);
      }

      else
      {
        v20 = 0;
        *(*(*(a1 + 88) + 8) + 24) = 1;
      }

      v25 = *(*(a1 + 56) + 8);
      v26 = *(v25 + 40);
      *(v25 + 40) = v20;
    }

    v27 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v21 = HMErrorFromOSStatus(4294960591);
    v22 = *(*(a1 + 56) + 8);
    v23 = *(v22 + 40);
    *(v22 + 40) = v21;
    v24 = *MEMORY[0x277D85DE8];

    MEMORY[0x2821F96F8]();
  }
}

- (int)_savePeripheralIdentifier:(id)a3 forAccessoryIdentifier:(id)a4 protocolVersion:(unint64_t)a5 resumeSessionID:(unint64_t)a6
{
  v25[2] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v23[0] = @"BLE HomeKit Accessory Protocol Version";
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a5];
  v23[1] = @"BLE Pair Resume Session ID";
  v24[0] = v12;
  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a6];
  v24[1] = v13;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:2];

  v25[0] = 0;
  v25[1] = 0;
  if (v10)
  {
    [v10 getUUIDBytes:v25];
    v15 = [MEMORY[0x277CBEA90] dataWithBytes:v25 length:16];
    v16 = objc_alloc_init(HAPKeychainItem);
    [(HAPKeychainItem *)v16 setAccessGroup:@"com.apple.hap.pairing"];
    v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:1751216194];
    [(HAPKeychainItem *)v16 setType:v17];

    v18 = [@"BTLE HomeKit Accessory Identifier" stringByAppendingFormat:@": %@", v11];
    [(HAPKeychainItem *)v16 setLabel:v18];

    [(HAPKeychainItem *)v16 setItemDescription:@"Per-device persistent identifier for BTLE accessories that support HomeKit."];
    [(HAPKeychainItem *)v16 setSyncable:0];
    [(HAPKeychainItem *)v16 setAccount:v11];
    [(HAPKeychainItem *)v16 setValueData:v15];
    v19 = [MEMORY[0x277CCAC58] dataWithPropertyList:v14 format:200 options:0 error:0];
    [(HAPKeychainItem *)v16 setGenericData:v19];

    v20 = [(HAPSystemKeychainStore *)self _addKeychainItem:v16 logDuplicateItemError:0];
  }

  else
  {
    v20 = -6705;
  }

  v21 = *MEMORY[0x277D85DE8];
  return v20;
}

- (BOOL)savePeripheralIdentifier:(id)a3 forAccessoryIdentifier:(id)a4 protocolVersion:(unint64_t)a5 resumeSessionID:(unint64_t)a6 error:(id *)a7
{
  v12 = a3;
  v13 = a4;
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = 0;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__5207;
  v30 = __Block_byref_object_dispose__5208;
  v31 = 0;
  v14 = [(HAPSystemKeychainStore *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __112__HAPSystemKeychainStore_savePeripheralIdentifier_forAccessoryIdentifier_protocolVersion_resumeSessionID_error___block_invoke;
  block[3] = &unk_2786D3768;
  block[4] = self;
  v15 = v12;
  v20 = v15;
  v16 = v13;
  v24 = a5;
  v25 = a6;
  v21 = v16;
  v22 = &v32;
  v23 = &v26;
  dispatch_sync(v14, block);

  if (a7)
  {
    *a7 = v27[5];
  }

  v17 = *(v33 + 24);

  _Block_object_dispose(&v26, 8);
  _Block_object_dispose(&v32, 8);

  return v17;
}

uint64_t __112__HAPSystemKeychainStore_savePeripheralIdentifier_forAccessoryIdentifier_protocolVersion_resumeSessionID_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _savePeripheralIdentifier:*(a1 + 40) forAccessoryIdentifier:*(a1 + 48) protocolVersion:*(a1 + 72) resumeSessionID:*(a1 + 80)];
  if (v2)
  {
    v3 = HMErrorFromOSStatus(v2);
  }

  else
  {
    v3 = 0;
    *(*(*(a1 + 56) + 8) + 24) = 1;
  }

  v4 = *(*(a1 + 64) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x2821F96F8]();
}

- (int)_removeKeychainItem:(id)a3 leaveTombstone:(BOOL)a4
{
  v39 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = v6;
  if (!v6 || ![v6 platformReference])
  {
    v22 = 4294960591;
LABEL_11:
    v23 = objc_autoreleasePoolPush();
    v24 = self;
    v25 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = HMFGetLogIdentifier();
      v27 = [MEMORY[0x277CCABB0] numberWithInt:v22];
      *buf = 138543618;
      v32 = v26;
      v33 = 2112;
      v34 = v27;
      _os_log_impl(&dword_22AADC000, v25, OS_LOG_TYPE_ERROR, "%{public}@Failed to delete keychain item with error %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v23);
    goto LABEL_14;
  }

  v8 = [v7 platformReference];
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC5F0], v8);
  v10 = objc_autoreleasePoolPush();
  v11 = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    HMFGetLogIdentifier();
    v13 = v30 = self;
    v14 = [v7 account];
    v15 = [v7 label];
    v16 = [v7 type];
    *buf = 138544130;
    v32 = v13;
    v33 = 2112;
    v34 = v14;
    v35 = 2112;
    v36 = v15;
    v37 = 2080;
    v38 = KeyTypeDescription(v16);
    _os_log_impl(&dword_22AADC000, v12, OS_LOG_TYPE_INFO, "%{public}@Removing keychain item with account  %@(%@) keyType: %s", buf, 0x2Au);

    self = v30;
  }

  objc_autoreleasePoolPop(v10);
  if ([v7 isSyncable] && !a4)
  {
    v17 = objc_autoreleasePoolPush();
    v18 = v11;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = HMFGetLogIdentifier();
      v21 = [v7 account];
      *buf = 138543618;
      v32 = v20;
      v33 = 2112;
      v34 = v21;
      _os_log_impl(&dword_22AADC000, v19, OS_LOG_TYPE_INFO, "%{public}@Removing syncable keychain item with account %@ and not setting tombstone", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v17);
    CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC5E0], *MEMORY[0x277CBED10]);
  }

  v22 = SecItemDelete(Mutable);
  CFRelease(Mutable);
  if (v22)
  {
    goto LABEL_11;
  }

LABEL_14:

  v28 = *MEMORY[0x277D85DE8];
  return v22;
}

- (int)_addKeychainItem:(id)a3 logDuplicateItemError:(BOOL)a4
{
  v56 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [v6 accessGroup];

  if (!v7)
  {
    goto LABEL_23;
  }

  v8 = [v6 type];

  if (!v8)
  {
    goto LABEL_23;
  }

  v9 = [v6 label];

  if (!v9)
  {
    goto LABEL_23;
  }

  v10 = [v6 itemDescription];

  if (!v10)
  {
    goto LABEL_23;
  }

  v11 = [v6 account];

  if (v11 && ([v6 valueData], v12 = objc_claimAutoreleasedReturnValue(), v12, v12))
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (Mutable)
    {
      v14 = Mutable;
      CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC228], *MEMORY[0x277CDC238]);
      v15 = *MEMORY[0x277CDBEC8];
      v16 = [v6 accessGroup];
      CFDictionaryAddValue(v14, v15, v16);

      CFDictionaryAddValue(v14, *MEMORY[0x277CDBED8], *MEMORY[0x277CDBEF0]);
      v17 = *MEMORY[0x277CDC188];
      v18 = [v6 type];
      CFDictionaryAddValue(v14, v17, v18);

      v19 = *MEMORY[0x277CDC080];
      v20 = [v6 label];
      CFDictionaryAddValue(v14, v19, v20);

      v21 = *MEMORY[0x277CDBFA0];
      v22 = [v6 itemDescription];
      CFDictionaryAddValue(v14, v21, v22);

      v23 = *MEMORY[0x277CDBF20];
      v24 = [v6 account];
      CFDictionaryAddValue(v14, v23, v24);

      v25 = *MEMORY[0x277CDC120];
      v26 = [v6 label];
      CFDictionaryAddValue(v14, v25, v26);

      v27 = [v6 genericData];

      if (v27)
      {
        v28 = *MEMORY[0x277CDBFB8];
        v29 = [v6 genericData];
        CFDictionaryAddValue(v14, v28, v29);
      }

      v30 = *MEMORY[0x277CDC5E8];
      v31 = [v6 valueData];
      CFDictionaryAddValue(v14, v30, v31);

      v32 = [v6 isSyncable];
      v33 = *MEMORY[0x277CBED28];
      if (v32)
      {
        v34 = *MEMORY[0x277CBED28];
      }

      else
      {
        v34 = *MEMORY[0x277CBED10];
      }

      CFDictionaryAddValue(v14, *MEMORY[0x277CDC140], v34);
      if ([v6 isSyncable])
      {
        CFDictionaryAddValue(v14, *MEMORY[0x277CDBFC0], v33);
      }

      v35 = [v6 viewHint];

      if (v35)
      {
        v36 = *MEMORY[0x277CDC138];
        v37 = [v6 viewHint];
        CFDictionaryAddValue(v14, v36, v37);
      }

      v38 = SecItemAdd(v14, 0);
      CFRelease(v14);
      if (a4 || (v39 = -25299, v38 != -25299))
      {
        v40 = objc_autoreleasePoolPush();
        v41 = self;
        v42 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
        {
          v43 = HMFGetLogIdentifier();
          v44 = [v6 account];
          v45 = [v6 viewHint];
          v48 = 138544130;
          v49 = v43;
          v50 = 2112;
          v51 = v44;
          v52 = 2112;
          v53 = v45;
          v54 = 2048;
          v55 = v38;
          _os_log_impl(&dword_22AADC000, v42, OS_LOG_TYPE_INFO, "%{public}@Adding keychain item for username %@ with viewHint %@ - error %ld", &v48, 0x2Au);
        }

        objc_autoreleasePoolPop(v40);
        v39 = v38;
      }
    }

    else
    {
      v39 = -6728;
    }
  }

  else
  {
LABEL_23:
    v39 = -6705;
  }

  v46 = *MEMORY[0x277D85DE8];
  return v39;
}

- (BOOL)_updateKeychainItemWithPlatformIdentifier:(void *)a3 keychainItem:(id)a4 error:(id *)a5
{
  v27 = *MEMORY[0x277D85DE8];
  v9 = a4;
  if (!a3)
  {
    _HMFPreconditionFailure();
    goto LABEL_14;
  }

  v5 = v9;
  v6 = [v9 valueData];

  if (!v6)
  {
LABEL_14:
    _HMFPreconditionFailure();
    goto LABEL_15;
  }

  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    goto LABEL_16;
  }

  v6 = Mutable;
  CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC5F0], a3);
  v11 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!v11)
  {
LABEL_15:
    CFRelease(v6);
LABEL_16:
    v16 = 0;
    if (!a5)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v12 = v11;
  v13 = *MEMORY[0x277CDC5E8];
  v14 = [v5 valueData];
  CFDictionaryAddValue(v12, v13, v14);

  v15 = SecItemUpdate(v6, v12);
  if (v15)
  {
    v16 = HMErrorFromOSStatus(v15);
    v17 = objc_autoreleasePoolPush();
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      v23 = 138543618;
      v24 = v19;
      v25 = 2112;
      v26 = v16;
      _os_log_impl(&dword_22AADC000, v18, OS_LOG_TYPE_ERROR, "%{public}@Failed to updated keychain item to set invisible with error: %@", &v23, 0x16u);
    }

    objc_autoreleasePoolPop(v17);
  }

  else
  {
    v16 = 0;
  }

  CFRelease(v6);
  CFRelease(v12);
  if (a5)
  {
LABEL_11:
    v20 = v16;
    *a5 = v16;
  }

LABEL_12:

  v21 = *MEMORY[0x277D85DE8];
  return v16 == 0;
}

- (void)_updateKeychainItemToInvisible:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 isSyncable])
  {
    if (([v4 isInvisible] & 1) == 0)
    {
      if ([v4 platformReference])
      {
        Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        if (Mutable)
        {
          v6 = Mutable;
          v7 = [v4 platformReference];
          CFDictionaryAddValue(v6, *MEMORY[0x277CDC5F0], v7);
          v8 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
          if (v8)
          {
            v9 = v8;
            CFDictionaryAddValue(v8, *MEMORY[0x277CDBFC0], *MEMORY[0x277CBED28]);
            v10 = SecItemUpdate(v6, v9);
            if (v10)
            {
              v11 = v10;
              v12 = objc_autoreleasePoolPush();
              v13 = self;
              v14 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
              {
                v15 = HMFGetLogIdentifier();
                v18 = 138543618;
                v19 = v15;
                v20 = 1024;
                v21 = v11;
                _os_log_impl(&dword_22AADC000, v14, OS_LOG_TYPE_ERROR, "%{public}@Failed to updated keychain item to set invisible with error: %d", &v18, 0x12u);
              }

              objc_autoreleasePoolPop(v12);
            }

            CFRelease(v6);
            v16 = v9;
          }

          else
          {
            v16 = v6;
          }

          CFRelease(v16);
        }
      }
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (id)_auditKeychainItems:(id)a3 managedAccessories:(id)a4
{
  v74 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277CBEB18] array];
  v59 = [v7 allKeys];
  v53 = v7;
  v56 = [v7 mutableCopy];
  v9 = objc_autoreleasePoolPush();
  v10 = self;
  v11 = HMFGetOSLogHandle();
  v12 = &OBJC_INSTANCE_METHODS_HAPSystemKeyCountProvider;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v13 = HMFGetLogIdentifier();
    *buf = 138543618;
    v71 = v13;
    v72 = 2112;
    v73 = v59;
    _os_log_impl(&dword_22AADC000, v11, OS_LOG_TYPE_INFO, "%{public}@Auditing keychain entries for accessories: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v9);
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  obj = v6;
  v14 = [obj countByEnumeratingWithState:&v64 objects:v69 count:16];
  v55 = v8;
  if (v14)
  {
    v16 = v14;
    v17 = 0;
    v57 = *v65;
    *&v15 = 138543618;
    v52 = v15;
    while (1)
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v65 != v57)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v64 + 1) + 8 * i);
        v20 = [v19 account];
        if ([v59 containsObject:v20])
        {
          v21 = [v53 hmf_dataForKey:v20];
          if ([v19 matchesPublicKeyData:v21])
          {
            [v56 removeObjectForKey:v20];
            goto LABEL_20;
          }

          v27 = objc_autoreleasePoolPush();
          v28 = v10;
          v29 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
          {
            v30 = HMFGetLogIdentifier();
            *buf = v52;
            v71 = v30;
            v72 = 2112;
            v73 = v20;
            _os_log_impl(&dword_22AADC000, v29, OS_LOG_TYPE_INFO, "%{public}@Auditing keychain entries - will remove keychain item for accessory %@ due to data mismatch", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v27);
        }

        else
        {
          v22 = objc_autoreleasePoolPush();
          v23 = v10;
          v24 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
          {
            v25 = HMFGetLogIdentifier();
            v26 = [v19 account];
            *buf = v52;
            v71 = v25;
            v72 = 2112;
            v73 = v26;
            _os_log_impl(&dword_22AADC000, v24, OS_LOG_TYPE_INFO, "%{public}@Auditing keychain entries - will remove spurious keychain item - %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v22);
        }

        v31 = [HAPKeychainStoreRemovedAccessory alloc];
        v32 = [v19 account];
        v33 = [v19 creationDate];
        v21 = [(HAPKeychainStoreRemovedAccessory *)v31 initWithName:v32 creationDate:v33];

        v34 = [(HAPSystemKeychainStore *)v10 _removeKeychainItem:v19 leaveTombstone:1];
        v17 = v34;
        if (v34)
        {
          v35 = HMErrorFromOSStatus(v34);
          [(HAPKeychainStoreRemovedAccessory *)v21 setRemoveError:v35];
        }

        v8 = v55;
        [v55 addObject:v21];
LABEL_20:
      }

      v16 = [obj countByEnumeratingWithState:&v64 objects:v69 count:16];
      if (!v16)
      {
        v36 = v17 == 0;
        v12 = &OBJC_INSTANCE_METHODS_HAPSystemKeyCountProvider;
        goto LABEL_24;
      }
    }
  }

  v36 = 1;
LABEL_24:

  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v37 = [v56 allKeys];
  v38 = [v37 countByEnumeratingWithState:&v60 objects:v68 count:16];
  if (v38)
  {
    v39 = v38;
    v40 = *v61;
    v58 = v12[293];
    while (2)
    {
      for (j = 0; j != v39; ++j)
      {
        if (*v61 != v40)
        {
          objc_enumerationMutation(v37);
        }

        v42 = *(*(&v60 + 1) + 8 * j);
        v43 = objc_autoreleasePoolPush();
        v44 = v10;
        v45 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
        {
          v46 = HMFGetLogIdentifier();
          *buf = v58;
          v71 = v46;
          v72 = 2112;
          v73 = v42;
          _os_log_impl(&dword_22AADC000, v45, OS_LOG_TYPE_INFO, "%{public}@Auditing keychain entries - adding keychain item for accessory %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v43);
        v47 = [v56 hmf_dataForKey:v42];
        v48 = [(HAPSystemKeychainStore *)v44 _savePublicKey:v47 forAccessoryName:v42];

        if (v48)
        {

          v49 = 0;
          v8 = v55;
          goto LABEL_39;
        }
      }

      v39 = [v37 countByEnumeratingWithState:&v60 objects:v68 count:16];
      if (v39)
      {
        continue;
      }

      break;
    }

    v8 = v55;
    goto LABEL_36;
  }

  if (v36)
  {
LABEL_36:
    v49 = v8;
    goto LABEL_39;
  }

  v49 = 0;
LABEL_39:

  v50 = *MEMORY[0x277D85DE8];

  return v49;
}

- (id)auditKeysOfManagedAccessories:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__5207;
  v16 = __Block_byref_object_dispose__5208;
  v17 = 0;
  v5 = [(HAPSystemKeychainStore *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__HAPSystemKeychainStore_auditKeysOfManagedAccessories___block_invoke;
  block[3] = &unk_2786D4F60;
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_sync(v5, block);

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

void __56__HAPSystemKeychainStore_auditKeysOfManagedAccessories___block_invoke(uint64_t a1)
{
  v9 = 0;
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:1751216193];
  v4 = [v2 _getKeychainItemsForAccessGroup:@"com.apple.hap.pairing" type:v3 account:0 shouldReturnData:1 error:&v9];

  if (v9)
  {
    v5 = v9 == -25300;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v6 = [*(a1 + 32) _auditKeychainItems:v4 managedAccessories:*(a1 + 40)];
    v7 = *(*(a1 + 48) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }
}

- (int)_removeAccessoryKeyForName:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v20 = 0;
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:1751216193];
  v6 = [(HAPSystemKeychainStore *)self _getKeychainItemsForAccessGroup:@"com.apple.hap.pairing" type:v5 account:v4 shouldReturnData:1 error:&v20];

  v7 = v20;
  if (!v20)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v16 objects:v21 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v17;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [(HAPSystemKeychainStore *)self _removeKeychainItem:*(*(&v16 + 1) + 8 * i) leaveTombstone:1, v16];
          if (v13)
          {
            v20 = v13;
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v16 objects:v21 count:16];
      }

      while (v10);
    }

    v7 = v20;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v7;
}

- (BOOL)removeAllAccessoryKeys:(id *)a3
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__5207;
  v13 = __Block_byref_object_dispose__5208;
  v14 = 0;
  v5 = [(HAPSystemKeychainStore *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__HAPSystemKeychainStore_removeAllAccessoryKeys___block_invoke;
  block[3] = &unk_2786D4688;
  block[4] = self;
  block[5] = &v15;
  block[6] = &v9;
  dispatch_sync(v5, block);

  if (a3)
  {
    *a3 = v10[5];
  }

  v6 = *(v16 + 24);
  _Block_object_dispose(&v9, 8);

  _Block_object_dispose(&v15, 8);
  return v6;
}

void __49__HAPSystemKeychainStore_removeAllAccessoryKeys___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _removeAccessoryKeyForName:0];
  if (v2 == -25300 || (v3 = v2, HMErrorFromOSStatus(v2), v4 = objc_claimAutoreleasedReturnValue(), v5 = *(*(a1 + 48) + 8), v6 = *(v5 + 40), *(v5 + 40) = v4, v6, !v3))
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }
}

- (BOOL)removeAccessoryKeyForName:(id)a3 error:(id *)a4
{
  v6 = a3;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__5207;
  v20 = __Block_byref_object_dispose__5208;
  v21 = 0;
  v7 = [(HAPSystemKeychainStore *)self queue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __58__HAPSystemKeychainStore_removeAccessoryKeyForName_error___block_invoke;
  v11[3] = &unk_2786D4598;
  v8 = v6;
  v12 = v8;
  v13 = self;
  v14 = &v16;
  v15 = &v22;
  dispatch_sync(v7, v11);

  if (a4)
  {
    *a4 = v17[5];
  }

  v9 = *(v23 + 24);

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v22, 8);

  return v9;
}

void __58__HAPSystemKeychainStore_removeAccessoryKeyForName_error___block_invoke(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = [*(a1 + 40) _removeAccessoryKeyForName:?];
    v3 = v2;
    v4 = HMErrorFromOSStatus(v2);
    v5 = *(*(a1 + 48) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;

    if (!v3)
    {
      *(*(*(a1 + 56) + 8) + 24) = 1;
    }
  }

  else
  {
    v7 = HMErrorFromOSStatus(4294960591);
    v8 = *(*(a1 + 48) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    MEMORY[0x2821F96F8]();
  }
}

- (BOOL)registerAccessoryWithHomeKit:(id)a3 error:(id *)a4
{
  v6 = a3;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__5207;
  v20 = __Block_byref_object_dispose__5208;
  v21 = 0;
  v7 = [(HAPSystemKeychainStore *)self queue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __61__HAPSystemKeychainStore_registerAccessoryWithHomeKit_error___block_invoke;
  v11[3] = &unk_2786D4598;
  v8 = v6;
  v12 = v8;
  v13 = self;
  v14 = &v16;
  v15 = &v22;
  dispatch_sync(v7, v11);

  if (a4)
  {
    *a4 = v17[5];
  }

  v9 = *(v23 + 24);

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v22, 8);

  return v9;
}

void __61__HAPSystemKeychainStore_registerAccessoryWithHomeKit_error___block_invoke(uint64_t a1)
{
  v33 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v24 = 0;
    v2 = *(a1 + 40);
    v23 = 0;
    v3 = [v2 _getPublicKey:&v23 registeredWithHomeKit:&v24 forAccessoryName:?];
    v4 = v23;
    if (v3)
    {
      v5 = HMErrorFromOSStatus(v3);
      v6 = *(*(a1 + 48) + 8);
      v7 = *(v6 + 40);
      *(v6 + 40) = v5;
    }

    else if ((v24 & 1) == 0)
    {
      [*(a1 + 40) _removeAccessoryKeyForName:*(a1 + 32)];
      v12 = [*(a1 + 40) _savePublicKey:v4 forAccessoryName:*(a1 + 32)];
      v13 = v12;
      v14 = HMErrorFromOSStatus(v12);
      v15 = *(*(a1 + 48) + 8);
      v16 = *(v15 + 40);
      *(v15 + 40) = v14;

      if (v13 != -25299)
      {
        if (v13)
        {
          v17 = objc_autoreleasePoolPush();
          v18 = *(a1 + 40);
          v19 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
          {
            v20 = HMFGetLogIdentifier();
            v21 = *(a1 + 32);
            *buf = 138544130;
            v26 = v20;
            v27 = 2112;
            v28 = v4;
            v29 = 2112;
            v30 = v21;
            v31 = 2048;
            v32 = v13;
            _os_log_impl(&dword_22AADC000, v19, OS_LOG_TYPE_INFO, "%{public}@Failed to serialize public key '%@' for accessory %@ - error %ld", buf, 0x2Au);
          }

          objc_autoreleasePoolPop(v17);
        }

        else
        {
          *(*(*(a1 + 56) + 8) + 24) = 1;
        }
      }
    }

    v22 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v8 = HMErrorFromOSStatus(4294960591);
    v9 = *(*(a1 + 48) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;
    v11 = *MEMORY[0x277D85DE8];

    MEMORY[0x2821F96F8]();
  }
}

- (BOOL)establishRelationshipBetweenAccessoryAndControllerKey:(id)a3 error:(id *)a4
{
  v58 = *MEMORY[0x277D85DE8];
  v11 = a3;
  if (!v11)
  {
    _HMFPreconditionFailure();
    goto LABEL_30;
  }

  v4 = v11;
  v5 = [v11 identifier];

  if (!v5)
  {
LABEL_30:
    _HMFPreconditionFailure();
    goto LABEL_31;
  }

  v12 = [v4 identifier];

  if (v12)
  {
    v13 = objc_autoreleasePoolPush();
    v14 = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      v17 = [v4 identifier];
      v18 = [v4 controllerKeyIdentifier];
      *buf = 138543874;
      v53 = v16;
      v54 = 2112;
      v55 = v17;
      v56 = 2112;
      v57 = v18;
      _os_log_impl(&dword_22AADC000, v15, OS_LOG_TYPE_INFO, "%{public}@Establish relationship between Accessory : [%@] & controller key : [%@]", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v13);
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:1751216193];
    v47 = 0;
    v19 = [v4 identifier];
    self = [(HAPSystemKeychainStore *)v14 _getKeychainItemsForAccessGroup:@"com.apple.hap.pairing" type:v5 account:v19 shouldReturnData:1 error:&v47];

    if (!self || [(HAPSystemKeychainStore *)self hmf_isEmpty])
    {
      v20 = objc_autoreleasePoolPush();
      v21 = v14;
      v22 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v23 = HMFGetLogIdentifier();
        v24 = [v4 identifier];
        *buf = 138543618;
        v53 = v23;
        v54 = 2112;
        v55 = v24;
        _os_log_impl(&dword_22AADC000, v22, OS_LOG_TYPE_ERROR, "%{public}@Could not locate the accessory keychain item for : %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v20);
      v25 = 0;
      goto LABEL_26;
    }

    v8 = [(HAPSystemKeychainStore *)self firstObject];
    v26 = objc_opt_class();
    v27 = [v8 genericData];
    v28 = [v4 controllerKeyIdentifier];
    v29 = [v26 updateAccessoryPairingGenericData:v27 updatedControllerKeyIdentifier:v28];

    v6 = [v4 publicKey];
    v7 = [v6 data];
    v46 = v29;
    if ([v7 bytes])
    {
      DataToHexCStringEx();

      v30 = [MEMORY[0x277CBEA90] dataWithBytes:buf length:64];
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (!Mutable)
      {
        v25 = 1;
        goto LABEL_24;
      }

      v32 = Mutable;
      v45 = v8;
      if ([v8 platformReference])
      {
        v33 = [v8 platformReference];
        CFDictionaryAddValue(v32, *MEMORY[0x277CDC5F0], v33);
        v34 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        if (v34)
        {
          v35 = v34;
          CFDictionaryAddValue(v34, *MEMORY[0x277CDC5E8], v30);
          CFDictionaryAddValue(v35, *MEMORY[0x277CDBFB8], v29);
          v36 = SecItemUpdate(v32, v35);
          v25 = v36 == 0;
          if (v36)
          {
            v37 = v36;
            v44 = v30;
            context = objc_autoreleasePoolPush();
            v38 = v14;
            v39 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
            {
              v42 = HMFGetLogIdentifier();
              *v48 = 138543618;
              v49 = v42;
              v50 = 1024;
              v51 = v37;
              _os_log_impl(&dword_22AADC000, v39, OS_LOG_TYPE_ERROR, "%{public}@Failed to update accessory keychain item : %d", v48, 0x12u);
            }

            objc_autoreleasePoolPop(context);
            v30 = v44;
            if (a4)
            {
              *a4 = HMErrorFromOSStatus(v37);
            }
          }

          CFRelease(v32);
          goto LABEL_23;
        }
      }

      else
      {
        v47 = -6705;
      }

      v25 = 1;
      v35 = v32;
LABEL_23:
      CFRelease(v35);
      v8 = v45;
LABEL_24:

LABEL_25:
LABEL_26:

      goto LABEL_27;
    }

LABEL_31:

    if (a4)
    {
      HMErrorFromOSStatus(4294960591);
      *a4 = v25 = 0;
    }

    else
    {
      v25 = 0;
    }

    goto LABEL_25;
  }

  if (a4)
  {
    HMErrorFromOSStatus(4294960591);
    *a4 = v25 = 0;
  }

  else
  {
    v25 = 0;
  }

LABEL_27:

  v40 = *MEMORY[0x277D85DE8];
  return v25;
}

- (int)_savePublicKey:(id)a3 forAccessoryName:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a4;
  if ([a3 bytes])
  {
    DataToHexCStringEx();
    v7 = objc_alloc_init(HAPKeychainItem);
    [(HAPKeychainItem *)v7 setAccessGroup:@"com.apple.hap.pairing"];
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:1751216193];
    [(HAPKeychainItem *)v7 setType:v8];

    v9 = [@"Paired HomeKit Accessory" stringByAppendingFormat:@": %@", v6];
    [(HAPKeychainItem *)v7 setLabel:v9];

    [(HAPKeychainItem *)v7 setItemDescription:@"HomeKit accessory that has been paired with this account."];
    [(HAPKeychainItem *)v7 setSyncable:0];
    [(HAPKeychainItem *)v7 setAccount:v6];
    v10 = [MEMORY[0x277CBEA90] dataWithBytes:v18 length:64];
    [(HAPKeychainItem *)v7 setValueData:v10];

    v16 = @"homeKitRegistered";
    v17 = MEMORY[0x277CBEC38];
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    v12 = [MEMORY[0x277CCAC58] dataWithPropertyList:v11 format:200 options:0 error:0];
    [(HAPKeychainItem *)v7 setGenericData:v12];

    v13 = [(HAPSystemKeychainStore *)self _addKeychainItem:v7 logDuplicateItemError:0];
  }

  else
  {
    v13 = -6705;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

- (BOOL)savePublicKey:(id)a3 forAccessoryName:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__5207;
  v24 = __Block_byref_object_dispose__5208;
  v25 = 0;
  v10 = [(HAPSystemKeychainStore *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__HAPSystemKeychainStore_savePublicKey_forAccessoryName_error___block_invoke;
  block[3] = &unk_2786D50A0;
  block[4] = self;
  v11 = v8;
  v16 = v11;
  v12 = v9;
  v17 = v12;
  v18 = &v20;
  v19 = &v26;
  dispatch_sync(v10, block);

  if (a5)
  {
    *a5 = v21[5];
  }

  v13 = *(v27 + 24);

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v26, 8);

  return v13;
}

void __63__HAPSystemKeychainStore_savePublicKey_forAccessoryName_error___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _savePublicKey:*(a1 + 40) forAccessoryName:*(a1 + 48)];
  v3 = v2;
  v4 = HMErrorFromOSStatus(v2);
  v5 = *(*(a1 + 56) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  if (v3 != -25299)
  {
    if (v3)
    {
      v7 = objc_autoreleasePoolPush();
      v8 = *(a1 + 32);
      v9 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = HMFGetLogIdentifier();
        v11 = *(a1 + 40);
        v12 = *(a1 + 48);
        v14 = 138544130;
        v15 = v10;
        v16 = 2112;
        v17 = v11;
        v18 = 2112;
        v19 = v12;
        v20 = 2048;
        v21 = v3;
        _os_log_impl(&dword_22AADC000, v9, OS_LOG_TYPE_INFO, "%{public}@Failed to serialize public key '%@' for accessory %@ - error %ld", &v14, 0x2Au);
      }

      objc_autoreleasePoolPop(v7);
    }

    else
    {
      *(*(*(a1 + 64) + 8) + 24) = 1;
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (int)_getPublicKey:(id *)a3 registeredWithHomeKit:(BOOL *)a4 forAccessoryName:(id)a5
{
  v56 = *MEMORY[0x277D85DE8];
  v8 = a5;
  v47 = 0;
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:1751216193];
  v10 = [(HAPSystemKeychainStore *)self _getKeychainItemsForAccessGroup:@"com.apple.hap.pairing" type:v9 account:v8 shouldReturnData:1 error:&v47];

  v11 = v47;
  if (v47)
  {
    v27 = 0;
    if (!a3)
    {
      goto LABEL_28;
    }

LABEL_25:
    if (!v11)
    {
      v36 = [MEMORY[0x277CBEA90] dataWithBytes:v48 length:32];
      *a3 = v36;

      v11 = v47;
      goto LABEL_28;
    }

    goto LABEL_26;
  }

  if ([v10 count] != 1)
  {
    v39 = a4;
    v41 = a3;
    v12 = objc_autoreleasePoolPush();
    v13 = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier();
      v16 = [v10 count];
      *buf = 138543874;
      v51 = v15;
      v52 = 2048;
      v53 = v16;
      v54 = 2112;
      v55 = v8;
      _os_log_impl(&dword_22AADC000, v14, OS_LOG_TYPE_INFO, "%{public}@Invalid number of keychain items(%tu) for accessory '%@'", buf, 0x20u);
    }

    v42 = v8;

    objc_autoreleasePoolPop(v12);
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v40 = v10;
    v17 = v10;
    v18 = [v17 countByEnumeratingWithState:&v43 objects:v49 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v44;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v44 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = *(*(&v43 + 1) + 8 * i);
          v23 = objc_autoreleasePoolPush();
          v24 = v13;
          v25 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
          {
            v26 = HMFGetLogIdentifier();
            *buf = 138543618;
            v51 = v26;
            v52 = 2112;
            v53 = v22;
            _os_log_impl(&dword_22AADC000, v25, OS_LOG_TYPE_INFO, "%{public}@Keychain item %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v23);
        }

        v19 = [v17 countByEnumeratingWithState:&v43 objects:v49 count:16];
      }

      while (v19);
    }

    a3 = v41;
    v8 = v42;
    a4 = v39;
    v10 = v40;
  }

  if ([v10 count] != 1)
  {
    v27 = 0;
    v11 = -6764;
    v47 = -6764;
    if (!a3)
    {
      goto LABEL_28;
    }

LABEL_26:
    *a3 = 0;
    goto LABEL_28;
  }

  v27 = [v10 firstObject];
  v28 = [v27 valueData];
  v29 = [v28 bytes];
  v30 = [v27 valueData];
  v47 = _deserializePublicKey(v29, [v30 length]);

  if (a4)
  {
    v31 = [v27 genericData];

    if (v31)
    {
      v32 = MEMORY[0x277CCAC58];
      v33 = [v27 genericData];
      v34 = [v32 propertyListWithData:v33 options:0 format:0 error:0];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
LABEL_21:
        v35 = [v34 objectForKeyedSubscript:@"homeKitRegistered"];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {

          v35 = 0;
        }

        *a4 = [v35 BOOLValue];

        goto LABEL_24;
      }
    }

    v34 = 0;
    goto LABEL_21;
  }

LABEL_24:
  v11 = v47;
  if (a3)
  {
    goto LABEL_25;
  }

LABEL_28:

  v37 = *MEMORY[0x277D85DE8];
  return v11;
}

- (id)readPublicKeyForAccessoryName:(id)a3 registeredWithHomeKit:(BOOL *)a4 error:(id *)a5
{
  v8 = a3;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__5207;
  v28 = __Block_byref_object_dispose__5208;
  v29 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__5207;
  v22 = __Block_byref_object_dispose__5208;
  v23 = 0;
  v9 = [(HAPSystemKeychainStore *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __84__HAPSystemKeychainStore_readPublicKeyForAccessoryName_registeredWithHomeKit_error___block_invoke;
  block[3] = &unk_2786D56D8;
  block[4] = self;
  v15 = &v24;
  v17 = a4;
  v10 = v8;
  v14 = v10;
  v16 = &v18;
  dispatch_sync(v9, block);

  if (a5)
  {
    *a5 = v19[5];
  }

  v11 = v25[5];

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v24, 8);

  return v11;
}

void __84__HAPSystemKeychainStore_readPublicKeyForAccessoryName_registeredWithHomeKit_error___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 48) + 8);
  obj = *(v2 + 40);
  v3 = [*(a1 + 32) _getPublicKey:&obj registeredWithHomeKit:*(a1 + 64) forAccessoryName:*(a1 + 40)];
  objc_storeStrong((v2 + 40), obj);
  v4 = HMErrorFromOSStatus(v3);
  v5 = *(*(a1 + 56) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

- (BOOL)removeControllerKeyPairForIdentifier:(id)a3 leaveTombstone:(BOOL)a4 error:(id *)a5
{
  v31 = *MEMORY[0x277D85DE8];
  v8 = a3;
  if (v8)
  {
    v22 = 0;
    v23 = &v22;
    v24 = 0x2020000000;
    v25 = 0;
    *&buf = 0;
    *(&buf + 1) = &buf;
    v27 = 0x3032000000;
    v28 = __Block_byref_object_copy__5207;
    v29 = __Block_byref_object_dispose__5208;
    v30 = 0;
    v9 = [(HAPSystemKeychainStore *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __84__HAPSystemKeychainStore_removeControllerKeyPairForIdentifier_leaveTombstone_error___block_invoke;
    block[3] = &unk_2786D3740;
    block[4] = self;
    v21 = a4;
    v18 = v8;
    p_buf = &buf;
    v20 = &v22;
    dispatch_sync(v9, block);

    if (a5)
    {
      *a5 = *(*(&buf + 1) + 40);
    }

    v10 = *(v23 + 24);

    _Block_object_dispose(&buf, 8);
    _Block_object_dispose(&v22, 8);
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    v12 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v14;
      _os_log_impl(&dword_22AADC000, v13, OS_LOG_TYPE_ERROR, "%{public}@inIdentifier must be specified", &buf, 0xCu);
    }

    objc_autoreleasePoolPop(v11);
    if (a5)
    {
      HMErrorFromOSStatus(4294960569);
      *a5 = v10 = 0;
    }

    else
    {
      v10 = 0;
    }
  }

  v15 = *MEMORY[0x277D85DE8];
  return v10 & 1;
}

void __84__HAPSystemKeychainStore_removeControllerKeyPairForIdentifier_leaveTombstone_error___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _removeControllerKeyPairForIdentifier:*(a1 + 40) leaveTombstone:*(a1 + 64)];
  v3 = v2;
  v4 = HMErrorFromOSStatus(v2);
  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  if (!v3)
  {
    v7 = [*(a1 + 32) activeControllerIdentifier];
    v8 = [v7 isEqualToString:*(a1 + 40)];

    if (v8)
    {
      [*(a1 + 32) setActiveControllerIdentifier:0];
      v9 = objc_autoreleasePoolPush();
      v10 = *(a1 + 32);
      v11 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = HMFGetLogIdentifier();
        v13 = *(a1 + 40);
        v15 = 138543618;
        v16 = v12;
        v17 = 2112;
        v18 = v13;
        _os_log_impl(&dword_22AADC000, v11, OS_LOG_TYPE_INFO, "%{public}@Removed controller key %@ and set active controller identifier to nil", &v15, 0x16u);
      }

      objc_autoreleasePoolPop(v9);
    }

    *(*(*(a1 + 56) + 8) + 24) = 1;
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (BOOL)removeControllerKeyPairLeaveTombstone:(BOOL)a3 error:(id *)a4
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__5207;
  v16 = __Block_byref_object_dispose__5208;
  v17 = 0;
  v7 = [(HAPSystemKeychainStore *)self queue];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __70__HAPSystemKeychainStore_removeControllerKeyPairLeaveTombstone_error___block_invoke;
  v10[3] = &unk_2786D3718;
  v11 = a3;
  v10[4] = self;
  v10[5] = &v18;
  v10[6] = &v12;
  dispatch_sync(v7, v10);

  if (a4)
  {
    *a4 = v13[5];
  }

  v8 = *(v19 + 24);
  _Block_object_dispose(&v12, 8);

  _Block_object_dispose(&v18, 8);
  return v8;
}

void __70__HAPSystemKeychainStore_removeControllerKeyPairLeaveTombstone_error___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _removeControllerKeyPairForIdentifier:0 leaveTombstone:*(a1 + 56)];
  if (v2 == -25300)
  {
    [*(a1 + 32) setActiveControllerIdentifier:0];
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  else
  {
    v3 = v2;
    v4 = HMErrorFromOSStatus(v2);
    v5 = *(*(a1 + 48) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;

    if (!v3)
    {
      [*(a1 + 32) setActiveControllerIdentifier:0];
      *(*(*(a1 + 40) + 8) + 24) = 1;
      v7 = objc_autoreleasePoolPush();
      v8 = *(a1 + 32);
      v9 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = HMFGetLogIdentifier();
        v12 = 138543362;
        v13 = v10;
        _os_log_impl(&dword_22AADC000, v9, OS_LOG_TYPE_INFO, "%{public}@Removed controller keys and set active controller identifier to nil", &v12, 0xCu);
      }

      objc_autoreleasePoolPop(v7);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (BOOL)getCurrentiCloudIdentifier:(id *)a3 controllerPairingIdentifier:(id *)a4 error:(id *)a5
{
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__5207;
  v29 = __Block_byref_object_dispose__5208;
  v30 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__5207;
  v23 = __Block_byref_object_dispose__5208;
  v24 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__5207;
  v17 = __Block_byref_object_dispose__5208;
  v18 = 0;
  v9 = [(HAPSystemKeychainStore *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __87__HAPSystemKeychainStore_getCurrentiCloudIdentifier_controllerPairingIdentifier_error___block_invoke;
  block[3] = &unk_2786D36F0;
  block[4] = self;
  block[5] = &v25;
  block[6] = &v19;
  block[7] = &v13;
  block[8] = &v31;
  dispatch_sync(v9, block);

  if (a3)
  {
    *a3 = v26[5];
  }

  if (a4)
  {
    *a4 = v20[5];
  }

  if (a5)
  {
    *a5 = v14[5];
  }

  v10 = *(v32 + 24);
  _Block_object_dispose(&v13, 8);

  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v25, 8);

  _Block_object_dispose(&v31, 8);
  return v10;
}

void __87__HAPSystemKeychainStore_getCurrentiCloudIdentifier_controllerPairingIdentifier_error___block_invoke(void *a1)
{
  v18 = 0;
  v2 = a1[4];
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:1751216211];
  v4 = [v2 _getKeychainItemsForAccessGroup:@"com.apple.hap.pairing" type:v3 account:0 shouldReturnData:1 error:&v18];

  v5 = v18;
  if (!v18)
  {
    if ([v4 count] == 1)
    {
      v6 = [v4 firstObject];
      v7 = [v6 account];
      v8 = *(a1[5] + 8);
      v9 = *(v8 + 40);
      *(v8 + 40) = v7;

      v10 = objc_alloc(MEMORY[0x277CCACA8]);
      v11 = [v6 valueData];
      v12 = [v10 initWithData:v11 encoding:4];
      v13 = *(a1[6] + 8);
      v14 = *(v13 + 40);
      *(v13 + 40) = v12;

      v5 = v18;
    }

    else
    {
      v5 = 4294960532;
      v18 = -6764;
    }
  }

  v15 = HMErrorFromOSStatus(v5);
  v16 = *(a1[7] + 8);
  v17 = *(v16 + 40);
  *(v16 + 40) = v15;

  if (!v18)
  {
    *(*(a1[8] + 8) + 24) = 1;
  }
}

- (int)_updateCurrentiCloudIdentifier:(id)a3 controllerPairingIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16 = 0;
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:1751216211];
  v9 = [(HAPSystemKeychainStore *)self _getKeychainItemsForAccessGroup:@"com.apple.hap.pairing" type:v8 account:0 shouldReturnData:1 error:&v16];

  if (![v9 count] || (objc_msgSend(v9, "firstObject"), v10 = objc_claimAutoreleasedReturnValue(), v16 = -[HAPSystemKeychainStore _removeKeychainItem:leaveTombstone:](self, "_removeKeychainItem:leaveTombstone:", v10, 1), v10, (v11 = v16) == 0))
  {
    v11 = 0;
    if (v6 && v7)
    {
      v12 = objc_alloc_init(HAPKeychainItem);
      [(HAPKeychainItem *)v12 setAccessGroup:@"com.apple.hap.pairing"];
      v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:1751216211];
      [(HAPKeychainItem *)v12 setType:v13];

      [(HAPKeychainItem *)v12 setLabel:@"iCloud HomeKit Identifier"];
      [(HAPKeychainItem *)v12 setItemDescription:@"Per-device mapping between the current iCloud account and the HomeKit Pairing Identity."];
      [(HAPKeychainItem *)v12 setSyncable:0];
      [(HAPKeychainItem *)v12 setAccount:v6];
      v14 = [v7 dataUsingEncoding:4];
      [(HAPKeychainItem *)v12 setValueData:v14];

      v11 = [(HAPSystemKeychainStore *)self _addKeychainItem:v12 logDuplicateItemError:1];
      v16 = v11;
    }
  }

  return v11;
}

- (BOOL)updateCurrentiCloudIdentifier:(id)a3 controllerPairingIdentifier:(id)a4 error:(id *)a5
{
  v35 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  if ([(HAPSystemKeychainStore *)self isHH2Enabled])
  {
    v11 = objc_autoreleasePoolPush();
    v12 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      v17 = NSStringFromSelector(a2);
      *buf = 138543874;
      *&buf[4] = v14;
      *&buf[12] = 2112;
      *&buf[14] = v16;
      *&buf[22] = 2112;
      v32 = v17;
      _os_log_impl(&dword_22AADC000, v13, OS_LOG_TYPE_ERROR, "%{public}@[%@ %@] no-op in ROAR", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v11);
    v18 = 1;
  }

  else
  {
    v27 = 0;
    v28 = &v27;
    v29 = 0x2020000000;
    v30 = 0;
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v32 = __Block_byref_object_copy__5207;
    v33 = __Block_byref_object_dispose__5208;
    v34 = 0;
    v19 = [(HAPSystemKeychainStore *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __90__HAPSystemKeychainStore_updateCurrentiCloudIdentifier_controllerPairingIdentifier_error___block_invoke;
    block[3] = &unk_2786D50A0;
    block[4] = self;
    v23 = v9;
    v24 = v10;
    v25 = &v27;
    v26 = buf;
    dispatch_sync(v19, block);

    if (a5)
    {
      *a5 = *(*&buf[8] + 40);
    }

    v18 = *(v28 + 24);

    _Block_object_dispose(buf, 8);
    _Block_object_dispose(&v27, 8);
  }

  v20 = *MEMORY[0x277D85DE8];
  return v18 & 1;
}

uint64_t __90__HAPSystemKeychainStore_updateCurrentiCloudIdentifier_controllerPairingIdentifier_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _updateCurrentiCloudIdentifier:*(a1 + 40) controllerPairingIdentifier:*(a1 + 48)];
  if (v2)
  {
    v3 = HMErrorFromOSStatus(v2);
  }

  else
  {
    v3 = 0;
    *(*(*(a1 + 56) + 8) + 24) = 1;
  }

  v4 = *(*(a1 + 64) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x2821F96F8]();
}

- (NSString)activeControllerPairingIdentifier
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__5207;
  v11 = __Block_byref_object_dispose__5208;
  v12 = 0;
  v3 = [(HAPSystemKeychainStore *)self queue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __59__HAPSystemKeychainStore_activeControllerPairingIdentifier__block_invoke;
  v6[3] = &unk_2786D6E60;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

uint64_t __59__HAPSystemKeychainStore_activeControllerPairingIdentifier__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) activeControllerIdentifier];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (BOOL)updateActiveControllerPairingIdentifier:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v5 = [(HAPSystemKeychainStore *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__HAPSystemKeychainStore_updateActiveControllerPairingIdentifier___block_invoke;
  block[3] = &unk_2786D4F60;
  block[4] = self;
  v9 = v4;
  v10 = &v11;
  v6 = v4;
  dispatch_sync(v5, block);

  LOBYTE(v4) = *(v12 + 24);
  _Block_object_dispose(&v11, 8);
  return v4;
}

void __66__HAPSystemKeychainStore_updateActiveControllerPairingIdentifier___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) activeControllerIdentifier];
  v3 = [v2 isEqualToString:*(a1 + 40)];

  if (v3)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 32);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      v8 = *(a1 + 40);
      v18 = 138543618;
      v19 = v7;
      v20 = 2112;
      v21 = v8;
      _os_log_impl(&dword_22AADC000, v6, OS_LOG_TYPE_INFO, "%{public}@Controller pairing identifier is already set to: %@", &v18, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
  }

  else
  {
    v9 = [*(a1 + 32) activeControllerIdentifier];

    if (v9)
    {
      *(*(*(a1 + 48) + 8) + 24) = 1;
    }

    v10 = objc_autoreleasePoolPush();
    v11 = *(a1 + 32);
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      v14 = [*(a1 + 32) activeControllerIdentifier];
      v15 = *(a1 + 40);
      v16 = *(*(*(a1 + 48) + 8) + 24);
      v18 = 138544130;
      v19 = v13;
      v20 = 2112;
      v21 = v14;
      v22 = 2112;
      v23 = v15;
      v24 = 1024;
      v25 = v16;
      _os_log_impl(&dword_22AADC000, v12, OS_LOG_TYPE_INFO, "%{public}@Active controller identifier is changing from %@ to %@, marking it as change: %d", &v18, 0x26u);
    }

    objc_autoreleasePoolPop(v10);
    [*(a1 + 32) setActiveControllerIdentifier:*(a1 + 40)];
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (int)_getAllAvailableControllerPublicKeys:(id *)a3 secretKeys:(id *)a4 userNames:(id *)a5
{
  v56 = *MEMORY[0x277D85DE8];
  v7 = [MEMORY[0x277CBEB18] array];
  v52 = 0;
  v8 = deviceSupportsKeychainSync();
  if (v8)
  {
    v9 = &unk_283EA9638;
  }

  else
  {
    v9 = &unk_283EA9680;
  }

  v10 = [(HAPSystemKeychainStore *)self _getKeychainItemsForAccessGroup:@"com.apple.hap.pairing" type:v9 account:0 shouldReturnData:1 error:&v52];
  [v7 addObjectsFromArray:v10];
  v51 = 0;
  v43 = [(HAPSystemKeychainStore *)self _getKeychainItemsForAccessGroup:@"com.apple.hap.pairing" type:&unk_283EA9650 account:0 shouldReturnData:1 error:&v51];
  [v7 addObjectsFromArray:?];
  v50 = 0;
  v42 = [(HAPSystemKeychainStore *)self _getKeychainItemsForAccessGroup:@"com.apple.hap.pairing" type:&unk_283EA9668 account:0 shouldReturnData:1 error:&v50];
  [v7 addObjectsFromArray:?];
  if (v8)
  {
    v55[0] = 0;
    v11 = [(HAPSystemKeychainStore *)self _getKeychainItemsForAccessGroup:@"com.apple.hap.pairing" type:&unk_283EA9680 account:0 shouldReturnData:1 error:v55];
    [v7 addObjectsFromArray:v11];
    v13 = v51;
    v12 = v52;
    v14 = v50;
    v15 = v55[0];

    if (!v12 || !v13 || !v14 || !v15)
    {
      goto LABEL_14;
    }

LABEL_13:
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v21 = v42;
    v20 = v43;
    goto LABEL_37;
  }

  v12 = v52;
  if (v52 && v51 && v50)
  {
    goto LABEL_13;
  }

LABEL_14:
  if ([v7 count])
  {
    v45 = [MEMORY[0x277CBEB18] array];
    v44 = [MEMORY[0x277CBEB18] array];
    v16 = [MEMORY[0x277CBEB18] array];
  }

  else
  {
    v16 = 0;
    v44 = 0;
    v45 = 0;
  }

  v38 = a5;
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v39 = v7;
  v22 = v7;
  v23 = [v22 countByEnumeratingWithState:&v46 objects:v53 count:16];
  if (v23)
  {
    v24 = v23;
    v19 = 0;
    v25 = *v47;
    while (2)
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v47 != v25)
        {
          objc_enumerationMutation(v22);
        }

        v27 = *(*(&v46 + 1) + 8 * i);
        v28 = [v27 account];
        v29 = [v16 containsObject:v28];

        if ((v29 & 1) == 0)
        {
          v30 = [v27 valueData];
          v12 = _deserializeDataToKeyPair(v30, v55, __s);

          if (v12)
          {

            v7 = v39;
            v21 = v42;
            v20 = v43;
            v17 = v44;
            v18 = v45;
            goto LABEL_37;
          }

          v31 = [MEMORY[0x277CBEA90] dataWithBytes:v55 length:32];

          [v45 addObject:v31];
          v19 = [MEMORY[0x277CBEA90] dataWithBytes:__s length:32];

          [v44 addObject:v19];
          v32 = [v27 account];
          [v16 addObject:v32];
        }
      }

      v24 = [v22 countByEnumeratingWithState:&v46 objects:v53 count:16];
      if (v24)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v19 = 0;
  }

  memset_s(__s, 0x20uLL, 0, 0x20uLL);
  v18 = v45;
  if (a3)
  {
    v33 = v45;
    *a3 = v45;
  }

  v7 = v39;
  v21 = v42;
  v20 = v43;
  v17 = v44;
  if (a4)
  {
    v34 = v44;
    *a4 = v44;
  }

  if (v38)
  {
    v35 = v16;
    v12 = 0;
    *v38 = v16;
  }

  else
  {
    v12 = 0;
  }

LABEL_37:

  v36 = *MEMORY[0x277D85DE8];
  return v12;
}

- (BOOL)getAllAvailableControllerPublicKeys:(id *)a3 secretKeys:(id *)a4 userNames:(id *)a5 error:(id *)a6
{
  v39 = 0;
  v40 = &v39;
  v41 = 0x2020000000;
  v42 = 0;
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__5207;
  v37 = __Block_byref_object_dispose__5208;
  v38 = 0;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__5207;
  v31 = __Block_byref_object_dispose__5208;
  v32 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__5207;
  v25 = __Block_byref_object_dispose__5208;
  v26 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__5207;
  v19 = __Block_byref_object_dispose__5208;
  v20 = 0;
  v11 = [(HAPSystemKeychainStore *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __89__HAPSystemKeychainStore_getAllAvailableControllerPublicKeys_secretKeys_userNames_error___block_invoke;
  block[3] = &unk_2786D36C8;
  block[4] = self;
  block[5] = &v33;
  block[6] = &v27;
  block[7] = &v21;
  block[8] = &v15;
  block[9] = &v39;
  dispatch_sync(v11, block);

  if (a3)
  {
    *a3 = v34[5];
  }

  if (a4)
  {
    *a4 = v28[5];
  }

  if (a5)
  {
    *a5 = v22[5];
  }

  if (a6)
  {
    *a6 = v16[5];
  }

  v12 = *(v40 + 24);
  _Block_object_dispose(&v15, 8);

  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v27, 8);

  _Block_object_dispose(&v33, 8);
  _Block_object_dispose(&v39, 8);
  return v12;
}

void __89__HAPSystemKeychainStore_getAllAvailableControllerPublicKeys_secretKeys_userNames_error___block_invoke(void *a1)
{
  v3 = a1 + 4;
  v2 = a1[4];
  v4 = *(v3[1] + 8);
  v5 = *(v4 + 40);
  v6 = a1[7];
  v7 = *(a1[6] + 8);
  v14 = *(v7 + 40);
  obj = v5;
  v8 = *(v6 + 8);
  v13 = *(v8 + 40);
  v9 = [v2 _getAllAvailableControllerPublicKeys:&obj secretKeys:&v14 userNames:&v13];
  objc_storeStrong((v4 + 40), obj);
  objc_storeStrong((v7 + 40), v14);
  objc_storeStrong((v8 + 40), v13);
  v10 = HMErrorFromOSStatus(v9);
  v11 = *(a1[8] + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;

  if (!v9)
  {
    *(*(a1[9] + 8) + 24) = 1;
  }
}

- (BOOL)deserializeKeyPair:(id)a3 publicKey:(id *)a4 secretKey:(id *)a5 error:(id *)a6
{
  v17 = *MEMORY[0x277D85DE8];
  v9 = _deserializeDataToKeyPair(a3, v16, __s);
  v10 = v9;
  if (a4)
  {
    if (!v9)
    {
      v11 = [MEMORY[0x277CBEA90] dataWithBytes:v16 length:32];
      *a4 = v11;

      if (!a5)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }

    *a4 = 0;
  }

  if (!a5)
  {
    goto LABEL_9;
  }

  if (v9)
  {
    *a5 = 0;
    goto LABEL_9;
  }

LABEL_8:
  v12 = [MEMORY[0x277CBEA90] dataWithBytes:__s length:32];
  *a5 = v12;

LABEL_9:
  memset_s(__s, 0x20uLL, 0, 0x20uLL);
  if (a6)
  {
    *a6 = HMErrorFromOSStatus(v10);
  }

  result = v10 == 0;
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)saveKeyPair:(id)a3 username:(id)a4 syncable:(BOOL)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__5207;
  v27 = __Block_byref_object_dispose__5208;
  v28 = 0;
  v12 = [(HAPSystemKeychainStore *)self queue];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __62__HAPSystemKeychainStore_saveKeyPair_username_syncable_error___block_invoke;
  v17[3] = &unk_2786D4638;
  v22 = a5;
  v17[4] = self;
  v13 = v10;
  v18 = v13;
  v14 = v11;
  v19 = v14;
  v20 = &v23;
  v21 = &v29;
  dispatch_sync(v12, v17);

  if (a6)
  {
    *a6 = v24[5];
  }

  v15 = *(v30 + 24);

  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(&v29, 8);

  return v15;
}

void __62__HAPSystemKeychainStore_saveKeyPair_username_syncable_error___block_invoke(uint64_t a1)
{
  if (!deviceSupportsKeychainSync())
  {
    v2 = *(a1 + 32);
    v3 = *(a1 + 40);
    v4 = *(a1 + 48);
    goto LABEL_7;
  }

  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  if (*(a1 + 72) != 1)
  {
LABEL_7:
    v7 = &unk_283EA9680;
    v6 = 0;
    goto LABEL_8;
  }

  v5 = [v2 _saveKeyPair:v3 username:v4 syncable:1 keyType:&unk_283EA9638];
  if (v5)
  {
    goto LABEL_9;
  }

  v5 = [*(a1 + 32) _saveKeyPair:*(a1 + 40) username:*(a1 + 48) syncable:*(a1 + 72) keyType:&unk_283EA9650];
  if (v5)
  {
    goto LABEL_9;
  }

  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v6 = *(a1 + 72);
  v7 = &unk_283EA9668;
LABEL_8:
  v5 = [v2 _saveKeyPair:v3 username:v4 syncable:v6 keyType:v7];
LABEL_9:
  v8 = v5;
  v9 = HMErrorFromOSStatus(v5);
  v10 = *(*(a1 + 56) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;

  if (!v8)
  {
    *(*(*(a1 + 64) + 8) + 24) = 1;
  }
}

- (int)_createControllerPublicKey:(id *)a3 secretKey:(id *)a4 keyPair:(id *)a5 username:(id *)a6
{
  v68 = *MEMORY[0x277D85DE8];
  cced25519_make_key_pair_compat();
  v59 = 0;
  _serializeKeyPairToData(v67, __s, &v59);
  v11 = v59;
  v12 = [MEMORY[0x277CCAD78] UUID];
  v13 = [v12 UUIDString];

  v14 = objc_alloc_init(HAPKeychainItem);
  [(HAPKeychainItem *)v14 setAccessGroup:@"com.apple.hap.pairing"];
  [(HAPKeychainItem *)v14 setLabel:@"HomeKit Pairing Identity"];
  [(HAPKeychainItem *)v14 setItemDescription:@"Identity used to pair with HomeKit accessories."];
  [(HAPKeychainItem *)v14 setAccount:v13];
  [(HAPKeychainItem *)v14 setValueData:v11];
  if (deviceSupportsKeychainSync())
  {
    [(HAPKeychainItem *)v14 setSyncable:1];
    [(HAPKeychainItem *)v14 setType:&unk_283EA9638];
    v15 = [(HAPKeychainItem *)v14 type];
    v16 = __viewHintForKeyType(v15);
    [(HAPKeychainItem *)v14 setViewHint:v16];

    v17 = [(HAPSystemKeychainStore *)self _addKeychainItem:v14 logDuplicateItemError:1];
    if (v17)
    {
      v18 = v17;
      v19 = objc_autoreleasePoolPush();
      v20 = self;
      v21 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v22 = HMFGetLogIdentifier();
        v23 = HMErrorFromOSStatus(v18);
        *buf = 138543874;
        v61 = v22;
        v62 = 2112;
        v63 = v13;
        v64 = 2112;
        v65 = v23;
        v24 = "%{public}@Failed to create v3 controller key for username %@ with error: %@";
LABEL_8:
        _os_log_impl(&dword_22AADC000, v21, OS_LOG_TYPE_ERROR, v24, buf, 0x20u);

        goto LABEL_28;
      }

      goto LABEL_28;
    }

    [(HAPKeychainItem *)v14 setSyncable:1];
    [(HAPKeychainItem *)v14 setType:&unk_283EA9650];
    v29 = [(HAPKeychainItem *)v14 type];
    v30 = __viewHintForKeyType(v29);
    [(HAPKeychainItem *)v14 setViewHint:v30];

    v31 = [(HAPSystemKeychainStore *)self _addKeychainItem:v14 logDuplicateItemError:1];
    v58 = a5;
    if (v31)
    {
      v32 = v31;
      context = objc_autoreleasePoolPush();
      v33 = self;
      v34 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        HMFGetLogIdentifier();
        v35 = v55 = a6;
        v36 = HMErrorFromOSStatus(v32);
        *buf = 138543874;
        v61 = v35;
        v62 = 2112;
        v63 = v13;
        v64 = 2112;
        v65 = v36;
        _os_log_impl(&dword_22AADC000, v34, OS_LOG_TYPE_ERROR, "%{public}@Failed to create v2 controller key for username %@ with error: %@", buf, 0x20u);

        a6 = v55;
      }

      objc_autoreleasePoolPop(context);
      a5 = v58;
    }

    [(HAPKeychainItem *)v14 setSyncable:1, v55];
    [(HAPKeychainItem *)v14 setType:&unk_283EA9668];
    v37 = [(HAPKeychainItem *)v14 type];
    v38 = __viewHintForKeyType(v37);
    [(HAPKeychainItem *)v14 setViewHint:v38];

    v39 = [(HAPSystemKeychainStore *)self _addKeychainItem:v14 logDuplicateItemError:1];
    if (v39)
    {
      v40 = v39;
      contexta = objc_autoreleasePoolPush();
      v41 = self;
      v42 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        HMFGetLogIdentifier();
        v43 = v55 = a4;
        v44 = HMErrorFromOSStatus(v40);
        *buf = 138543874;
        v61 = v43;
        v62 = 2112;
        v63 = v13;
        v64 = 2112;
        v65 = v44;
        _os_log_impl(&dword_22AADC000, v42, OS_LOG_TYPE_ERROR, "%{public}@Failed to create v0 controller key for username %@ with error: %@", buf, 0x20u);

        a4 = v55;
      }

      objc_autoreleasePoolPop(contexta);
      a5 = v58;
    }

LABEL_17:
    if (a3)
    {
      v45 = [MEMORY[0x277CBEA90] dataWithBytes:v67 length:32];
      *a3 = v45;
    }

    if (a4)
    {
      v46 = [MEMORY[0x277CBEA90] dataWithBytes:__s length:32];
      *a4 = v46;
    }

    if (a6)
    {
      v47 = v13;
      *a6 = v13;
    }

    if (a5)
    {
      *a5 = [(HAPKeychainItem *)v14 valueData];
    }

    [(HAPSystemKeychainStore *)self setActiveControllerIdentifier:v13, v55];
    v48 = objc_opt_new();
    v49 = [v48 backupWithInfo:0];

    memset_s(__s, 0x20uLL, 0, 0x20uLL);
    v50 = [MEMORY[0x277CCAB98] defaultCenter];
    [v50 postNotificationName:@"kControllerKeyPairGeneratedNotification" object:self];

    v19 = objc_autoreleasePoolPush();
    v51 = self;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v52 = HMFGetLogIdentifier();
      *buf = 138543362;
      v61 = v52;
      _os_log_impl(&dword_22AADC000, v21, OS_LOG_TYPE_INFO, "%{public}@Posting controller key creation notification", buf, 0xCu);
    }

    LODWORD(v18) = 0;
    goto LABEL_28;
  }

  [(HAPKeychainItem *)v14 setSyncable:0];
  [(HAPKeychainItem *)v14 setType:&unk_283EA9680];
  v25 = [(HAPKeychainItem *)v14 type];
  v26 = __viewHintForKeyType(v25);
  [(HAPKeychainItem *)v14 setViewHint:v26];

  v27 = [(HAPSystemKeychainStore *)self _addKeychainItem:v14 logDuplicateItemError:1];
  if (!v27)
  {
    goto LABEL_17;
  }

  v18 = v27;
  v19 = objc_autoreleasePoolPush();
  v28 = self;
  v21 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    v22 = HMFGetLogIdentifier();
    v23 = HMErrorFromOSStatus(v18);
    *buf = 138543874;
    v61 = v22;
    v62 = 2112;
    v63 = v13;
    v64 = 2112;
    v65 = v23;
    v24 = "%{public}@Failed to create syncable controller key for username %@ with error: %@";
    goto LABEL_8;
  }

LABEL_28:

  objc_autoreleasePoolPop(v19);
  v53 = *MEMORY[0x277D85DE8];
  return v18;
}

- (id)_getControllerKeychainItemForKeyType:(id)a3 error:(int *)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v27 = 0;
  v6 = [(HAPSystemKeychainStore *)self _getKeychainItemsForAccessGroup:@"com.apple.hap.pairing" type:a3 account:0 shouldReturnData:1 error:&v27];
  v7 = v6;
  if (v27)
  {
    v18 = 0;
    if (!a4)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  if ([v6 count] < 2 || (-[HAPSystemKeychainStore activeControllerIdentifier](self, "activeControllerIdentifier"), v8 = objc_claimAutoreleasedReturnValue(), v8, !v8))
  {
    if ([v7 count] != 1)
    {
      v18 = 0;
      v19 = -6764;
      goto LABEL_14;
    }

    v18 = [v7 objectAtIndexedSubscript:0];
    if (!a4)
    {
      goto LABEL_22;
    }

LABEL_21:
    *a4 = v27;
    goto LABEL_22;
  }

  v22 = a4;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (!v10)
  {
LABEL_12:

    a4 = v22;
LABEL_13:
    v18 = 0;
    v19 = -6727;
LABEL_14:
    v27 = v19;
    if (!a4)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  v11 = v10;
  v12 = *v24;
LABEL_6:
  v13 = 0;
  while (1)
  {
    if (*v24 != v12)
    {
      objc_enumerationMutation(v9);
    }

    v14 = *(*(&v23 + 1) + 8 * v13);
    v15 = [v14 account];
    v16 = [(HAPSystemKeychainStore *)self activeControllerIdentifier];
    v17 = [v15 isEqualToString:v16];

    if (v17)
    {
      break;
    }

    if (v11 == ++v13)
    {
      v11 = [v9 countByEnumeratingWithState:&v23 objects:v28 count:16];
      if (v11)
      {
        goto LABEL_6;
      }

      goto LABEL_12;
    }
  }

  v18 = v14;

  a4 = v22;
  if (!v18)
  {
    goto LABEL_13;
  }

  if (v22)
  {
    goto LABEL_21;
  }

LABEL_22:

  v20 = *MEMORY[0x277D85DE8];

  return v18;
}

- (id)_getControllerKeychainItemError:(int *)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v19 = 0;
  v5 = deviceSupportsKeychainSync();
  if (v5)
  {
    v6 = &unk_283EA9638;
  }

  else
  {
    v6 = &unk_283EA9680;
  }

  v7 = [(HAPSystemKeychainStore *)self _getControllerKeychainItemForKeyType:v6 error:&v19];
  if (v19 != -25293 && v19 != 0)
  {
    v9 = [(HAPSystemKeychainStore *)self _getControllerKeychainItemForKeyType:&unk_283EA9650 error:&v19];

    if (v19 == -25293 || !v19)
    {
      v7 = v9;
      goto LABEL_11;
    }

    v7 = [(HAPSystemKeychainStore *)self _getControllerKeychainItemForKeyType:&unk_283EA9668 error:&v19];

    if (v19 != -25293)
    {
      if (v19)
      {
        if (v5)
        {
          v12 = [(HAPSystemKeychainStore *)self _getControllerKeychainItemForKeyType:&unk_283EA9680 error:&v19];

          if (v19 == -25293 || !v19)
          {
            goto LABEL_27;
          }

          v13 = objc_autoreleasePoolPush();
          v14 = self;
          v15 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
          {
            v16 = HMFGetLogIdentifier();
            *buf = 138543362;
            v21 = v16;
            _os_log_impl(&dword_22AADC000, v15, OS_LOG_TYPE_DEBUG, "%{public}@No controller key", buf, 0xCu);
          }
        }

        else
        {
          v13 = objc_autoreleasePoolPush();
          v17 = self;
          v15 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
          {
            v18 = HMFGetLogIdentifier();
            *buf = 138543362;
            v21 = v18;
            _os_log_impl(&dword_22AADC000, v15, OS_LOG_TYPE_DEBUG, "%{public}@No controller key", buf, 0xCu);
          }

          v12 = v7;
        }

        objc_autoreleasePoolPop(v13);
LABEL_27:
        v7 = v12;
      }
    }
  }

LABEL_11:
  if (a3)
  {
    *a3 = v19;
  }

  v10 = *MEMORY[0x277D85DE8];

  return v7;
}

- (int)_getControllerPublicKey:(id *)a3 secretKey:(id *)a4 keyPair:(id *)a5 username:(id *)a6
{
  v22 = *MEMORY[0x277D85DE8];
  v19 = 0;
  v10 = [(HAPSystemKeychainStore *)self _getControllerKeychainItemError:&v19];
  v11 = v10;
  if (!v19)
  {
    v12 = [v10 valueData];
    v19 = _deserializeDataToKeyPair(v12, v21, __s);
  }

  if (a3)
  {
    if (!v19)
    {
      v13 = [MEMORY[0x277CBEA90] dataWithBytes:v21 length:32];
      *a3 = v13;

      if (!a4)
      {
        goto LABEL_12;
      }

      goto LABEL_7;
    }

    *a3 = 0;
  }

  if (!a4)
  {
    goto LABEL_12;
  }

LABEL_7:
  if (v19)
  {
    *a4 = 0;
  }

  else
  {
    v14 = [MEMORY[0x277CBEA90] dataWithBytes:__s length:32];
    *a4 = v14;
  }

LABEL_12:
  if (a5)
  {
    *a5 = [v11 valueData];
  }

  if (a6)
  {
    if (v19)
    {
      *a6 = 0;
    }

    else
    {
      v15 = [v11 account];
      *a6 = v15;
    }
  }

  memset_s(__s, 0x20uLL, 0, 0x20uLL);
  v16 = v19;

  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

- (BOOL)getControllerPublicKey:(id *)a3 secretKey:(id *)a4 keyPair:(id *)a5 username:(id *)a6 allowCreation:(BOOL)a7 error:(id *)a8
{
  v50 = 0;
  v51 = &v50;
  v52 = 0x2020000000;
  v53 = 0;
  v44 = 0;
  v45 = &v44;
  v46 = 0x3032000000;
  v47 = __Block_byref_object_copy__5207;
  v48 = __Block_byref_object_dispose__5208;
  v49 = 0;
  v38 = 0;
  v39 = &v38;
  v40 = 0x3032000000;
  v41 = __Block_byref_object_copy__5207;
  v42 = __Block_byref_object_dispose__5208;
  v43 = 0;
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy__5207;
  v36 = __Block_byref_object_dispose__5208;
  v37 = 0;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__5207;
  v30 = __Block_byref_object_dispose__5208;
  v31 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__5207;
  v24 = __Block_byref_object_dispose__5208;
  v25 = 0;
  v12 = [(HAPSystemKeychainStore *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __96__HAPSystemKeychainStore_getControllerPublicKey_secretKey_keyPair_username_allowCreation_error___block_invoke;
  block[3] = &unk_2786D36A0;
  block[4] = self;
  block[5] = &v44;
  block[6] = &v38;
  block[7] = &v32;
  v19 = a7;
  block[8] = &v26;
  block[9] = &v20;
  block[10] = &v50;
  dispatch_sync(v12, block);

  if (a3)
  {
    *a3 = v45[5];
  }

  if (a4)
  {
    *a4 = v39[5];
  }

  if (a5)
  {
    *a5 = v33[5];
  }

  if (a6)
  {
    *a6 = v27[5];
  }

  if (a8)
  {
    *a8 = v21[5];
  }

  v13 = *(v51 + 24);
  _Block_object_dispose(&v20, 8);

  _Block_object_dispose(&v26, 8);
  _Block_object_dispose(&v32, 8);

  _Block_object_dispose(&v38, 8);
  _Block_object_dispose(&v44, 8);

  _Block_object_dispose(&v50, 8);
  return v13;
}

void __96__HAPSystemKeychainStore_getControllerPublicKey_secretKey_keyPair_username_allowCreation_error___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  v5 = *(a1 + 56);
  v6 = *(*(a1 + 48) + 8);
  v28 = *(v6 + 40);
  obj = v4;
  v7 = *(v5 + 8);
  v8 = *(v7 + 40);
  v9 = *(*(a1 + 64) + 8);
  v26 = *(v9 + 40);
  v27 = v8;
  v10 = [v2 _getControllerPublicKey:&obj secretKey:&v28 keyPair:&v27 username:&v26];
  objc_storeStrong((v3 + 40), obj);
  objc_storeStrong((v6 + 40), v28);
  objc_storeStrong((v7 + 40), v27);
  objc_storeStrong((v9 + 40), v26);
  if (v10 != -25293 && v10 && *(a1 + 88) == 1)
  {
    v11 = *(a1 + 32);
    v12 = *(*(a1 + 40) + 8);
    v13 = *(v12 + 40);
    v14 = *(a1 + 56);
    v15 = *(*(a1 + 48) + 8);
    v24 = *(v15 + 40);
    v25 = v13;
    v16 = *(v14 + 8);
    v17 = *(v16 + 40);
    v18 = *(*(a1 + 64) + 8);
    v22 = *(v18 + 40);
    v23 = v17;
    v10 = [v11 _createControllerPublicKey:&v25 secretKey:&v24 keyPair:&v23 username:&v22];
    objc_storeStrong((v12 + 40), v25);
    objc_storeStrong((v15 + 40), v24);
    objc_storeStrong((v16 + 40), v23);
    objc_storeStrong((v18 + 40), v22);
  }

  v19 = HMErrorFromOSStatus(v10);
  v20 = *(*(a1 + 72) + 8);
  v21 = *(v20 + 40);
  *(v20 + 40) = v19;

  if (!v10)
  {
    *(*(*(a1 + 80) + 8) + 24) = 1;
  }
}

- (void)ensureControllerKeyExistsForAllViews
{
  v20 = *MEMORY[0x277D85DE8];
  if ([(HAPSystemKeychainStore *)self isHH2Enabled])
  {
    v4 = objc_autoreleasePoolPush();
    v5 = self;
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      v10 = NSStringFromSelector(a2);
      *buf = 138543874;
      v15 = v7;
      v16 = 2112;
      v17 = v9;
      v18 = 2112;
      v19 = v10;
      _os_log_impl(&dword_22AADC000, v6, OS_LOG_TYPE_INFO, "%{public}@[%@ %@] no-op in ROAR", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v4);
  }

  else
  {
    v11 = [(HAPSystemKeychainStore *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __62__HAPSystemKeychainStore_ensureControllerKeyExistsForAllViews__block_invoke;
    block[3] = &unk_2786D6CA0;
    block[4] = self;
    dispatch_async(v11, block);
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __62__HAPSystemKeychainStore_ensureControllerKeyExistsForAllViews__block_invoke(uint64_t a1)
{
  v50 = *MEMORY[0x277D85DE8];
  v47 = 0;
  v2 = [*(a1 + 32) _getControllerKeychainItemError:&v47];
  v3 = v2;
  if (v47)
  {
    v4 = 1;
  }

  else
  {
    v4 = v2 == 0;
  }

  if (!v4)
  {
    v5 = deviceSupportsKeychainSync();
    v6 = [v3 type];
    v7 = [v6 unsignedIntegerValue];

    if (!v5)
    {
      if (v7 != 1752001641)
      {
        v23 = [v3 valueData];
        v24 = [v3 account];
        [*(a1 + 32) _removeControllerKeyPairForKeyType:&unk_283EA9650 identifier:v24 leaveTombstone:1];
        [*(a1 + 32) _removeControllerKeyPairForKeyType:&unk_283EA9668 identifier:v24 leaveTombstone:1];
        v25 = objc_autoreleasePoolPush();
        v26 = *(a1 + 32);
        v27 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
        {
          v28 = HMFGetLogIdentifier();
          *buf = 138543362;
          v49 = v28;
          _os_log_impl(&dword_22AADC000, v27, OS_LOG_TYPE_INFO, "%{public}@No unsyncable controller key, copying current controller key to unsyncable controller key", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v25);
        v47 = [*(a1 + 32) _saveKeyPair:v23 username:v24 syncable:0 keyType:&unk_283EA9680];
        if (v47)
        {
          v29 = objc_autoreleasePoolPush();
          v30 = *(a1 + 32);
          v31 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
          {
            v32 = HMFGetLogIdentifier();
            *buf = 138543362;
            v49 = v32;
            _os_log_impl(&dword_22AADC000, v31, OS_LOG_TYPE_ERROR, "%{public}@Failed to create unsyncable controller key", buf, 0xCu);
          }

          objc_autoreleasePoolPop(v29);
          goto LABEL_40;
        }

        v10 = 0;
        v8 = 0;
        goto LABEL_38;
      }

      v9 = 0;
      v10 = 0;
      v8 = 0;
      goto LABEL_39;
    }

    if (v7 == 1751999337)
    {
      v8 = v3;
      v9 = 0;
    }

    else
    {
      v11 = [v3 type];
      v12 = [v11 unsignedIntegerValue];

      v13 = v3;
      v14 = v13;
      if (v12 == 1751216227)
      {
        v9 = 0;
      }

      else
      {
        v9 = v13;
      }

      if (v12 == 1751216227)
      {
        v10 = v13;
      }

      else
      {
        v10 = 0;
      }

      v15 = objc_autoreleasePoolPush();
      v16 = *(a1 + 32);
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v18 = HMFGetLogIdentifier();
        *buf = 138543362;
        v49 = v18;
        _os_log_impl(&dword_22AADC000, v17, OS_LOG_TYPE_INFO, "%{public}@No v3 controller key, copying current controller key to v3 controller key", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v15);
      v19 = *(a1 + 32);
      v20 = [v14 valueData];
      v21 = [v14 account];
      [v19 _saveKeyPair:v20 username:v21 syncable:1 keyType:&unk_283EA9638];

      v8 = 0;
      if (v10)
      {
LABEL_21:
        if (!v9)
        {
LABEL_32:
          v40 = [*(a1 + 32) _getControllerKeychainItemForKeyType:&unk_283EA9668 error:&v47];
          if (v40)
          {
            v9 = v40;
            goto LABEL_39;
          }

          v41 = objc_autoreleasePoolPush();
          v42 = *(a1 + 32);
          v43 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
          {
            v44 = HMFGetLogIdentifier();
            *buf = 138543362;
            v49 = v44;
            _os_log_impl(&dword_22AADC000, v43, OS_LOG_TYPE_INFO, "%{public}@No v0 controller key, copying current controller key to v0 controller key", buf, 0xCu);
          }

          objc_autoreleasePoolPop(v41);
          v45 = *(a1 + 32);
          v23 = [v3 valueData];
          v24 = [v3 account];
          [v45 _saveKeyPair:v23 username:v24 syncable:1 keyType:&unk_283EA9668];
LABEL_38:

          v9 = 0;
        }

LABEL_39:

        v24 = v10;
        v23 = v8;
LABEL_40:

        goto LABEL_41;
      }
    }

    v22 = [*(a1 + 32) _getControllerKeychainItemForKeyType:&unk_283EA9650 error:&v47];
    if (!v22)
    {
      v33 = objc_autoreleasePoolPush();
      v34 = *(a1 + 32);
      v35 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
      {
        v36 = HMFGetLogIdentifier();
        *buf = 138543362;
        v49 = v36;
        _os_log_impl(&dword_22AADC000, v35, OS_LOG_TYPE_INFO, "%{public}@No v2 controller key, copying current controller key to v2 controller key", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v33);
      v37 = *(a1 + 32);
      v38 = [v3 valueData];
      v39 = [v3 account];
      [v37 _saveKeyPair:v38 username:v39 syncable:1 keyType:&unk_283EA9650];

      v10 = 0;
      if (v9)
      {
        goto LABEL_39;
      }

      goto LABEL_32;
    }

    v10 = v22;
    goto LABEL_21;
  }

LABEL_41:

  v46 = *MEMORY[0x277D85DE8];
}

- (BOOL)isHH2Enabled
{
  if ([(HAPSystemKeychainStore *)self unitTest_enable_hh2])
  {
    return 1;
  }

  if (HAPIsHH2Enabled_onceToken != -1)
  {
    dispatch_once(&HAPIsHH2Enabled_onceToken, &__block_literal_global_12209);
  }

  return HAPIsHH2Enabled_hh2Enabled;
}

- (id)dumpState
{
  v23 = *MEMORY[0x277D85DE8];
  v21 = 0;
  v3 = [MEMORY[0x277CBEB18] array];
  for (i = 0; i != 18; ++i)
  {
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:dumpState_keyTypes[i]];
    v6 = [(HAPSystemKeychainStore *)self _getKeychainItemsForAccessGroup:@"com.apple.hap.pairing" type:v5 account:0 shouldReturnData:1 error:&v21];

    if ([v6 count])
    {
      [v3 addObjectsFromArray:v6];
    }
  }

  if ([v3 count])
  {
    v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v3, "count")}];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v8 = v3;
    v9 = [v8 countByEnumeratingWithState:&v17 objects:v22 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v18;
      do
      {
        for (j = 0; j != v10; ++j)
        {
          if (*v18 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [*(*(&v17 + 1) + 8 * j) description];
          [v7 addObject:v13];
        }

        v10 = [v8 countByEnumeratingWithState:&v17 objects:v22 count:16];
      }

      while (v10);
    }

    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObject:v7 forKey:*MEMORY[0x277D0F0E8]];
  }

  else
  {
    v14 = MEMORY[0x277CBEC10];
  }

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (void)dealloc
{
  keychainStoreUpdatedNotificationToken = self->_keychainStoreUpdatedNotificationToken;
  if (keychainStoreUpdatedNotificationToken != -1)
  {
    notify_cancel(keychainStoreUpdatedNotificationToken);
  }

  v4.receiver = self;
  v4.super_class = HAPSystemKeychainStore;
  [(HAPSystemKeychainStore *)&v4 dealloc];
}

- (void)configure
{
  v18 = *MEMORY[0x277D85DE8];
  out_token = -1;
  objc_initWeak(&location, self);
  v3 = [(HAPSystemKeychainStore *)self queue];
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __35__HAPSystemKeychainStore_configure__block_invoke;
  handler[3] = &unk_2786D39E0;
  objc_copyWeak(&v11, &location);
  v4 = notify_register_dispatch("com.apple.security.view-change.Home", &out_token, v3, handler);

  if (v4)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      *buf = 138543618;
      v15 = v8;
      v16 = 1024;
      v17 = v4;
      _os_log_impl(&dword_22AADC000, v7, OS_LOG_TYPE_ERROR, "%{public}@Failed to register for keychain update notification: %u", buf, 0x12u);
    }

    objc_autoreleasePoolPop(v5);
  }

  else
  {
    [(HAPSystemKeychainStore *)self setKeychainStoreUpdatedNotificationToken:out_token];
  }

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
  v9 = *MEMORY[0x277D85DE8];
}

void __35__HAPSystemKeychainStore_configure__block_invoke(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v4 = [WeakRetained keychainStoreUpdatedNotificationToken] == a2;
    WeakRetained = v6;
    if (v4)
    {
      v5 = [MEMORY[0x277CCAB98] defaultCenter];
      [v5 postNotificationName:@"HAPSystemKeychainStoreUpdatedNotification" object:v6];

      WeakRetained = v6;
    }
  }
}

- (HAPSystemKeychainStore)init
{
  v8.receiver = self;
  v8.super_class = HAPSystemKeychainStore;
  v2 = [(HAPSystemKeychainStore *)&v8 init];
  v3 = v2;
  if (v2)
  {
    v2->_keychainStoreUpdatedNotificationToken = -1;
    v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v5 = dispatch_queue_create("com.apple.HAPSystemKeychainStore", v4);
    queue = v3->_queue;
    v3->_queue = v5;
  }

  return v3;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t93 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t93, &__block_literal_global_306);
  }

  v3 = logCategory__hmf_once_v94;

  return v3;
}

uint64_t __37__HAPSystemKeychainStore_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  logCategory__hmf_once_v94 = HMFCreateOSLogHandle();

  return MEMORY[0x2821F96F8]();
}

+ (id)serializeDictionary:(id)a3 options:(unint64_t)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (v6)
  {
    v17 = 0;
    v7 = [MEMORY[0x277CCAC58] dataWithPropertyList:v6 format:200 options:a4 error:&v17];
    v8 = v17;
    if (v8)
    {
      v9 = 1;
    }

    else
    {
      v9 = v7 == 0;
    }

    if (v9)
    {
      v10 = objc_autoreleasePoolPush();
      v11 = a1;
      v12 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = HMFGetLogIdentifier();
        *buf = 138543618;
        v19 = v13;
        v20 = 2112;
        v21 = v8;
        _os_log_impl(&dword_22AADC000, v12, OS_LOG_TYPE_ERROR, "%{public}@Error occurred while serializing generic dictionary : %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v10);
      v14 = 0;
    }

    else
    {
      v14 = v7;
    }
  }

  else
  {
    v14 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

+ (id)updateAccessoryPairingGenericData:(id)a3 updatedControllerKeyIdentifier:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [objc_opt_class() getDictionaryFromGenericData:v6];

  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = MEMORY[0x277CBEC10];
  }

  v9 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:v8];
  [v9 setObject:v5 forKeyedSubscript:@"ctrlKeyId"];

  if (!v7)
  {
    [v9 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"homeKitRegistered"];
  }

  v10 = [objc_opt_class() serializeDictionary:v9 options:0];

  return v10;
}

+ (id)getDictionaryFromGenericData:(id)a3
{
  if (a3)
  {
    v3 = [MEMORY[0x277CCAC58] propertyListWithData:a3 options:0 format:0 error:0];
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
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)systemStore
{
  if (systemStore_systemStoreAllocated != -1)
  {
    dispatch_once(&systemStore_systemStoreAllocated, &__block_literal_global_233);
  }

  v3 = systemStore_systemStore;

  return v3;
}

uint64_t __37__HAPSystemKeychainStore_systemStore__block_invoke()
{
  v0 = objc_alloc_init(HAPSystemKeychainStore);
  v1 = systemStore_systemStore;
  systemStore_systemStore = v0;

  v2 = systemStore_systemStore;

  return [v2 configure];
}

@end