@interface HMDPersistentStore
+ (BOOL)archiveMetadata:(id)metadata;
+ (BOOL)hasControllerKeyWithUsername:(id)username error:(id *)error;
+ (BOOL)removeLegacyHomeArchive:(id *)archive;
+ (BOOL)writeDictionary:(id)dictionary toStorePath:(id)path;
+ (id)_writeData:(id)data toStorePath:(id)path dataLabel:(id)label createDirectoriesIfNeeded:(BOOL)needed;
+ (id)archiveCloudServerTokenData:(id)data;
+ (id)archiveHomeData:(id)data toLocation:(id)location;
+ (id)archiveHomeDataForTransaction:(id)transaction;
+ (id)archiveHomeDataLegacy:(id)legacy;
+ (id)archiveHomeDataLegacy:(id)legacy toLocation:(id)location;
+ (id)archiveIDSDataSyncJournal:(id)journal;
+ (id)controllerUsernameForPairingIdentity:(id)identity error:(id *)error;
+ (id)decryptData:(id)data withKey:(id)key error:(id *)error;
+ (id)decryptDataWithControllerKey:(id)key totalKeysFound:(unint64_t *)found deleteExtraKeys:(BOOL)keys allowControllerIdentifierToChange:(BOOL)change controllerIdentifierChanged:(BOOL *)changed successfulKeyUserName:(id *)name error:(id *)error;
+ (id)encryptData:(id)data withKey:(id)key error:(id *)error;
+ (id)encryptDataWithControllerKey:(id)key error:(id *)error;
+ (id)loadBuiltinPlainMetadataDictionary;
+ (id)loadPlainMetadataDictionary;
+ (id)logCategory;
+ (id)readDataFromPath:(id)path;
+ (id)serializeHomeData:(id)data localStorage:(BOOL)storage remoteDeviceOnSameAccount:(BOOL)account;
+ (id)unarchiveBulletinBoard;
+ (id)unarchiveHomeData:(id *)data decryptionFailed:(BOOL *)failed successfulKeyUserName:(id *)name;
+ (id)unarchiveIDSDataSyncJournal;
+ (id)unarchiveVendorStore;
+ (id)writeData:(id)data toStorePath:(id)path dataLabel:(id)label;
+ (void)archiveBulletinBoard:(id)board;
+ (void)archiveVendorStore:(id)store;
+ (void)cleanupKeysInStore;
+ (void)removeServerTokenDataFile;
+ (void)removeTransactionJournal;
+ (void)resetConfiguration:(unint64_t)configuration;
- (id)archiveDictionary:(id)dictionary withPath:(id)path forKey:(id)key;
- (id)unarchiveDictionaryFromData:(id)data allowedClasses:(id)classes forKey:(id)key;
- (id)unarchiveDictionaryWithPath:(id)path allowedClasses:(id)classes forKey:(id)key;
- (id)writeData:(id)data toStorePath:(id)path dataLabel:(id)label;
@end

@implementation HMDPersistentStore

+ (id)logCategory
{
  if (logCategory__hmf_once_t50 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t50, &__block_literal_global_97297);
  }

  v3 = logCategory__hmf_once_v51;

  return v3;
}

void __33__HMDPersistentStore_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v51;
  logCategory__hmf_once_v51 = v1;
}

+ (id)controllerUsernameForPairingIdentity:(id)identity error:(id *)error
{
  v33 = *MEMORY[0x277D85DE8];
  identityCopy = identity;
  systemStore = [MEMORY[0x277CFEC78] systemStore];
  v29 = 0;
  v30 = 0;
  v8 = [systemStore getAllAvailableControllerPublicKeys:&v30 secretKeys:0 userNames:&v29 error:error];
  v9 = v30;
  v10 = v29;

  if (v8)
  {
    v11 = v9 == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = v11 || v10 == 0;
  if (v12 || (v13 = [v10 count], v13 != objc_msgSend(v9, "count")))
  {
    v20 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v22 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
LABEL_16:

      objc_autoreleasePoolPop(v20);
      v19 = 0;
      goto LABEL_17;
    }

    v23 = HMFGetLogIdentifier();
    *buf = 138543362;
    v32 = v23;
    v24 = "%{public}@Unable to get controller public keys";
    v25 = v22;
    v26 = OS_LOG_TYPE_INFO;
LABEL_15:
    _os_log_impl(&dword_229538000, v25, v26, v24, buf, 0xCu);

    goto LABEL_16;
  }

  if ([v10 count] != 1)
  {
    v20 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v22 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_16;
    }

    v23 = HMFGetLogIdentifier();
    *buf = 138543362;
    v32 = v23;
    v24 = "%{public}@Found multiple controller keys.";
    v25 = v22;
    v26 = OS_LOG_TYPE_ERROR;
    goto LABEL_15;
  }

  v14 = objc_alloc(MEMORY[0x277D0F8B0]);
  v15 = [v9 objectAtIndexedSubscript:0];
  v16 = [v14 initWithPairingKeyData:v15];

  publicKey = [identityCopy publicKey];
  v18 = [v16 isEqual:publicKey];

  v19 = 0;
  if (v18)
  {
    v19 = [v10 objectAtIndexedSubscript:0];
  }

LABEL_17:
  v27 = *MEMORY[0x277D85DE8];

  return v19;
}

+ (BOOL)hasControllerKeyWithUsername:(id)username error:(id *)error
{
  v29 = *MEMORY[0x277D85DE8];
  usernameCopy = username;
  systemStore = [MEMORY[0x277CFEC78] systemStore];
  v25 = 0;
  v26 = 0;
  v8 = [systemStore getAllAvailableControllerPublicKeys:0 secretKeys:0 userNames:&v26 error:&v25];
  v9 = v26;
  v10 = v25;

  if (v8)
  {
    v11 = v10 == 0;
  }

  else
  {
    v11 = 0;
  }

  if (!v11 || v9 == 0)
  {
    if (v10)
    {
      if (error)
      {
        v13 = v10;
        v14 = 0;
        *error = v10;
        goto LABEL_21;
      }

LABEL_20:
      v14 = 0;
      goto LABEL_21;
    }

LABEL_16:
    v19 = objc_autoreleasePoolPush();
    selfCopy = self;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier();
      *buf = 138543362;
      v28 = v22;
      _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_ERROR, "%{public}@Did not find controller key for given username.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v19);
    if (error)
    {
      [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
      *error = v14 = 0;
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  if (![v9 containsObject:usernameCopy])
  {
    goto LABEL_16;
  }

  v15 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v17 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    v18 = HMFGetLogIdentifier();
    *buf = 138543362;
    v28 = v18;
    _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@Found controller key for username", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v15);
  v14 = 1;
LABEL_21:

  v23 = *MEMORY[0x277D85DE8];
  return v14;
}

+ (id)decryptDataWithControllerKey:(id)key totalKeysFound:(unint64_t *)found deleteExtraKeys:(BOOL)keys allowControllerIdentifierToChange:(BOOL)change controllerIdentifierChanged:(BOOL *)changed successfulKeyUserName:(id *)name error:(id *)error
{
  obj = change;
  keysCopy = keys;
  v145 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  array = [MEMORY[0x277CBEB18] array];
  systemStore = [MEMORY[0x277CFEC78] systemStore];
  v134 = 0;
  v135 = 0;
  v133 = 0;
  v14 = [systemStore getAllAvailableControllerPublicKeys:0 secretKeys:&v135 userNames:&v134 error:&v133];
  v15 = v135;
  v16 = v134;
  nameCopy2 = v133;

  if (v14)
  {
    v18 = v15 == 0;
  }

  else
  {
    v18 = 1;
  }

  v19 = v18 || v16 == 0;
  if (v19 || (v20 = [v16 count], v20 != objc_msgSend(v15, "count")))
  {
    v35 = objc_autoreleasePoolPush();
    selfCopy = self;
    v37 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
    {
      v38 = HMFGetLogIdentifier();
      *buf = 138543362;
      v138 = v38;
      _os_log_impl(&dword_229538000, v37, OS_LOG_TYPE_INFO, "%{public}@Unable to get controller public keys", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v35);
    errorCopy = error;
    if (error)
    {
      v39 = nameCopy2;
      v33 = 0;
      errorCopy = 0;
      *error = nameCopy2;
    }

    else
    {
      v33 = 0;
    }

    goto LABEL_82;
  }

  if (changed)
  {
    *changed = 0;
  }

  if (found)
  {
    *found = [v15 count];
  }

  if (!obj)
  {
    systemStore2 = [MEMORY[0x277CFEC78] systemStore];
    activeControllerPairingIdentifier = [systemStore2 activeControllerPairingIdentifier];
    v23 = [activeControllerPairingIdentifier copy];

    if (!v23)
    {
      v40 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v42 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
      {
        v43 = HMFGetLogIdentifier();
        *buf = 138543362;
        v138 = v43;
        _os_log_impl(&dword_229538000, v42, OS_LOG_TYPE_INFO, "%{public}@Cannot find controller key because active controller pairing identifier is not set", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v40);
      v44 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
      if (error)
      {
        v44 = v44;
        *error = v44;
      }

      v33 = 0;
      errorCopy = 0;
      goto LABEL_82;
    }

    v109 = keysCopy;
    v24 = [MEMORY[0x277CBEB18] arrayWithCapacity:1];
    v25 = [MEMORY[0x277CBEB18] arrayWithCapacity:1];
    v26 = [v16 indexOfObject:v23];
    if (v26 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v112 = v15;
      v116 = v16;
      v27 = keyCopy;
      v28 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v30 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        v31 = HMFGetLogIdentifier();
        *buf = 138543618;
        v138 = v31;
        v139 = 2112;
        v140 = v23;
        _os_log_impl(&dword_229538000, v30, OS_LOG_TYPE_INFO, "%{public}@Cannot find controller key for active controller pairing identifier, %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v28);
      v32 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
      if (error)
      {
        v32 = v32;
        *error = v32;
      }

      v33 = 0;
      errorCopy = 0;
      keyCopy = v27;
      v16 = v116;
      v15 = v112;
      goto LABEL_82;
    }

    v45 = v26;
    v46 = [v16 objectAtIndexedSubscript:v26];
    [v25 addObject:v46];

    v47 = [v15 objectAtIndexedSubscript:v45];
    [v24 addObject:v47];

    v48 = [v24 copy];
    v49 = [v25 copy];

    v16 = v49;
    v15 = v48;
    keysCopy = v109;
  }

  if (![v15 count])
  {
    v33 = 0;
    v50 = 0;
    if (![array count])
    {
      goto LABEL_75;
    }

LABEL_72:
    v98 = objc_autoreleasePoolPush();
    selfCopy4 = self;
    v100 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v100, OS_LOG_TYPE_INFO))
    {
      v101 = HMFGetLogIdentifier();
      *buf = 138543362;
      v138 = v101;
      _os_log_impl(&dword_229538000, v100, OS_LOG_TYPE_INFO, "%{public}@Data has not been decrypted, not deleting extra keys", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v98);
    v50 = 0;
LABEL_75:
    if (error && !v50)
    {
      v102 = nameCopy2;
      *error = nameCopy2;
    }

    goto LABEL_81;
  }

  v110 = keysCopy;
  v50 = 0;
  v33 = 0;
  v51 = 0;
  v114 = array;
  v118 = keyCopy;
  do
  {
    if (v50)
    {
      v120 = v50;
      v52 = objc_autoreleasePoolPush();
      selfCopy5 = self;
      v54 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
      {
        HMFGetLogIdentifier();
        v56 = v55 = v33;
        v57 = [v16 objectAtIndexedSubscript:v51];
        *buf = 138543618;
        v138 = v56;
        v139 = 2112;
        v140 = v57;
        _os_log_impl(&dword_229538000, v54, OS_LOG_TYPE_INFO, "%{public}@Data has already been decrypted, adding controller key: %@", buf, 0x16u);

        keyCopy = v118;
        v33 = v55;
        array = v114;
      }

      objc_autoreleasePoolPop(v52);
      v58 = [v16 objectAtIndexedSubscript:v51];
      [array addObject:v58];
      v50 = v120;
      goto LABEL_50;
    }

    v59 = [v15 objectAtIndexedSubscript:v51];
    v132 = 0;
    v60 = [self decryptData:keyCopy withKey:v59 error:&v132];
    nameCopy2 = v132;

    if (nameCopy2 || !v60)
    {
      v74 = objc_autoreleasePoolPush();
      selfCopy6 = self;
      v76 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v76, OS_LOG_TYPE_INFO))
      {
        v77 = HMFGetLogIdentifier();
        v78 = [v16 objectAtIndexedSubscript:v51];
        [v15 objectAtIndexedSubscript:v51];
        v121 = v74;
        v79 = v15;
        v81 = v80 = v16;
        *buf = 138544130;
        v138 = v77;
        v139 = 2114;
        v140 = v78;
        v141 = 2114;
        v142 = v81;
        v143 = 2114;
        v144 = nameCopy2;
        _os_log_impl(&dword_229538000, v76, OS_LOG_TYPE_INFO, "%{public}@Decryption failed with controller key: %{public}@, key:%{public}@ with error: %{public}@", buf, 0x2Au);

        v16 = v80;
        v15 = v79;
        v74 = v121;

        array = v114;
      }

      objc_autoreleasePoolPop(v74);
      v58 = [v16 objectAtIndexedSubscript:v51];
      [array addObject:v58];
      v50 = 0;
      v33 = v60;
      keyCopy = v118;
      goto LABEL_50;
    }

    v33 = v60;
    nameCopy2 = name;
    if (obj)
    {
      v61 = objc_autoreleasePoolPush();
      selfCopy7 = self;
      v63 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v63, OS_LOG_TYPE_INFO))
      {
        v64 = HMFGetLogIdentifier();
        [v16 objectAtIndexedSubscript:v51];
        v65 = v15;
        v66 = v16;
        v67 = array;
        v69 = v68 = v33;
        *buf = 138543618;
        v138 = v64;
        v139 = 2112;
        v140 = v69;
        _os_log_impl(&dword_229538000, v63, OS_LOG_TYPE_INFO, "%{public}@Updating active controller identifier to %@", buf, 0x16u);

        v33 = v68;
        array = v67;
        v16 = v66;
        v15 = v65;
        keyCopy = v118;

        nameCopy2 = name;
      }

      objc_autoreleasePoolPop(v61);
      systemStore3 = [MEMORY[0x277CFEC78] systemStore];
      v71 = [v16 objectAtIndexedSubscript:v51];
      v72 = [systemStore3 updateActiveControllerPairingIdentifier:v71];

      if (changed)
      {
        *changed = v72;
      }
    }

    if (nameCopy2)
    {
      v73 = nameCopy2;
      v58 = [v16 objectAtIndexedSubscript:v51];
      nameCopy2 = 0;
      *v73 = [v58 copy];
      v50 = v33;
LABEL_50:

      goto LABEL_51;
    }

    v50 = v33;
LABEL_51:
    ++v51;
  }

  while (v51 < [v15 count]);
  if (![array count])
  {
    goto LABEL_75;
  }

  if (!v50)
  {
    goto LABEL_72;
  }

  if (v110)
  {
    v122 = v50;
    v111 = v33;
    v113 = v15;
    v117 = v16;
    v130 = 0u;
    v131 = 0u;
    v128 = 0u;
    v129 = 0u;
    obja = array;
    v82 = [obja countByEnumeratingWithState:&v128 objects:v136 count:16];
    if (v82)
    {
      v83 = v82;
      v84 = *v129;
      do
      {
        v85 = 0;
        v86 = nameCopy2;
        do
        {
          if (*v129 != v84)
          {
            objc_enumerationMutation(obja);
          }

          v87 = *(*(&v128 + 1) + 8 * v85);
          v88 = objc_autoreleasePoolPush();
          selfCopy8 = self;
          v90 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v90, OS_LOG_TYPE_INFO))
          {
            v91 = HMFGetLogIdentifier();
            *buf = 138543618;
            v138 = v91;
            v139 = 2112;
            v140 = v87;
            _os_log_impl(&dword_229538000, v90, OS_LOG_TYPE_INFO, "%{public}@Deleting extra key corresponding to username: %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v88);
          systemStore4 = [MEMORY[0x277CFEC78] systemStore];
          v127 = v86;
          v93 = [systemStore4 removeControllerKeyPairForIdentifier:v87 leaveTombstone:1 error:&v127];
          nameCopy2 = v127;

          if ((v93 & 1) == 0)
          {
            v94 = objc_autoreleasePoolPush();
            v95 = selfCopy8;
            v96 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v96, OS_LOG_TYPE_INFO))
            {
              v97 = HMFGetLogIdentifier();
              *buf = 138543874;
              v138 = v97;
              v139 = 2112;
              v140 = v87;
              v141 = 2112;
              v142 = nameCopy2;
              _os_log_impl(&dword_229538000, v96, OS_LOG_TYPE_INFO, "%{public}@Failed to delete extra key for username: %@ due to error: %@", buf, 0x20u);
            }

            objc_autoreleasePoolPop(v94);
          }

          ++v85;
          v86 = nameCopy2;
        }

        while (v83 != v85);
        v83 = [obja countByEnumeratingWithState:&v128 objects:v136 count:16];
      }

      while (v83);
    }

    v16 = v117;
    keyCopy = v118;
    array = v114;
    v33 = v111;
    v15 = v113;
    v50 = v122;
    goto LABEL_75;
  }

  v103 = objc_autoreleasePoolPush();
  selfCopy9 = self;
  v105 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v105, OS_LOG_TYPE_INFO))
  {
    HMFGetLogIdentifier();
    v106 = v123 = v50;
    *buf = 138543362;
    v138 = v106;
    _os_log_impl(&dword_229538000, v105, OS_LOG_TYPE_INFO, "%{public}@Not deleting extra keys as it has not been requested", buf, 0xCu);

    v50 = v123;
  }

  objc_autoreleasePoolPop(v103);
LABEL_81:
  errorCopy = v50;
LABEL_82:

  v107 = *MEMORY[0x277D85DE8];

  return errorCopy;
}

+ (id)encryptDataWithControllerKey:(id)key error:(id *)error
{
  v26 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  systemStore = [MEMORY[0x277CFEC78] systemStore];
  v18 = 0;
  v19 = 0;
  v8 = [systemStore getControllerPublicKey:0 secretKey:&v19 username:&v18 allowCreation:0 error:error];
  v9 = v19;
  v10 = v18;

  if (v8)
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543874;
      v21 = v14;
      v22 = 2112;
      v23 = v10;
      v24 = 2112;
      v25 = v9;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Using key [%@] to encrypt the homedata and store it: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v11);
    v15 = [selfCopy encryptData:keyCopy withKey:v9 error:error];
  }

  else
  {
    v15 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

+ (id)decryptData:(id)data withKey:(id)key error:(id *)error
{
  v35 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  keyCopy = key;
  v9 = [dataCopy length];
  v10 = v9 - 28;
  if (v9 > 0x1C)
  {
    ccsha512_di();
    [keyCopy length];
    [keyCopy bytes];
    cchkdf();
    [dataCopy bytes];
    errorCopy = [MEMORY[0x277CBEB28] dataWithLength:v10];
    [errorCopy mutableBytes];
    v19 = chacha20_poly1305_decrypt_all_96x32();
    if (v19)
    {
      if (error)
      {
        v20 = MEMORY[0x277CCA9B8];
        v21 = *MEMORY[0x277CCA590];
        v22 = v19;
        v30 = *MEMORY[0x277CCA450];
        v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:DebugGetErrorString()];
        v24 = v23;
        v25 = @"?";
        if (v23)
        {
          v25 = v23;
        }

        v31 = v25;
        v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
        v27 = [v20 errorWithDomain:v21 code:v22 userInfo:v26];
        *error = v27;

        error = 0;
      }
    }

    else
    {
      error = errorCopy;
      errorCopy = error;
    }
  }

  else
  {
    if (error)
    {
      v11 = MEMORY[0x277CCA9B8];
      v12 = *MEMORY[0x277CCA590];
      v32 = *MEMORY[0x277CCA450];
      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:DebugGetErrorString()];
      v14 = v13;
      v15 = @"?";
      if (v13)
      {
        v15 = v13;
      }

      v33 = v15;
      v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
      v17 = [v11 errorWithDomain:v12 code:-6743 userInfo:v16];
      *error = v17;

      error = 0;
    }

    errorCopy = 0;
  }

  v28 = *MEMORY[0x277D85DE8];

  return error;
}

+ (id)encryptData:(id)data withKey:(id)key error:(id *)error
{
  v16 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  dataCopy = data;
  ccsha512_di();
  [keyCopy length];
  [keyCopy bytes];

  cchkdf();
  RandomBytes();
  ccsha512_di();
  cchkdf();
  v8 = [dataCopy length];
  v9 = [MEMORY[0x277CBEB28] dataWithLength:v8 + 28];
  mutableBytes = [v9 mutableBytes];
  v11 = v15;
  *mutableBytes = v14;
  *(mutableBytes + 8) = v11;
  [dataCopy bytes];

  chacha20_poly1305_encrypt_all_96x32();
  v12 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (id)unarchiveBulletinBoard
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = bulletinBoardDataStorePath;
  if (v4)
  {
    v5 = v4;
    v6 = [self readDataFromPath:v4];
    if (v6)
    {
      v7 = v6;
      v17 = 0;
      v8 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v6 error:&v17];
      v9 = v17;
      v10 = v9;
      if (v8)
      {

        objc_autoreleasePoolPop(v3);
        goto LABEL_10;
      }

      v11 = objc_autoreleasePoolPush();
      selfCopy = self;
      v13 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = HMFGetLogIdentifier();
        *buf = 138543618;
        v19 = v14;
        v20 = 2112;
        v21 = v10;
        _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_ERROR, "%{public}@Failed to unarchive bulletin board from data: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v11);
    }
  }

  objc_autoreleasePoolPop(v3);
  v8 = 0;
LABEL_10:
  v15 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (void)archiveBulletinBoard:(id)board
{
  boardCopy = board;
  v4 = objc_autoreleasePoolPush();
  v5 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:boardCopy requiringSecureCoding:1 error:0];
  v6 = bulletinBoardDataStorePath;
  v7 = [self _writeData:v5 toStorePath:v6 dataLabel:@"bulletin board"];

  objc_autoreleasePoolPop(v4);
}

+ (id)unarchiveIDSDataSyncJournal
{
  v57[4] = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v3 = objc_autoreleasePoolPush();
  v4 = idsDataSyncJournalDataStorePath;
  v5 = [self readDataFromPath:v4];

  if (!v5)
  {
    v24 = v3;
LABEL_24:
    objc_autoreleasePoolPop(v24);
    goto LABEL_31;
  }

  context = v3;
  v6 = MEMORY[0x277CBEB98];
  v57[0] = objc_opt_class();
  v57[1] = objc_opt_class();
  v57[2] = objc_opt_class();
  v57[3] = objc_opt_class();
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v57 count:4];
  v8 = [v6 setWithArray:v7];

  v49 = 0;
  v42 = v5;
  v9 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClasses:v8 fromData:v5 error:&v49];
  v41 = v49;
  if (!v9)
  {
    v25 = objc_autoreleasePoolPush();
    selfCopy = self;
    v27 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = HMFGetLogIdentifier();
      *buf = 138543618;
      v52 = v28;
      v53 = 2112;
      v54 = v41;
      _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_ERROR, "%{public}@Failed to unarchive info dictionary from data: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v25);
    v24 = v3;
    goto LABEL_24;
  }

  v10 = v9;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v12 = v10;
  }

  else
  {
    v12 = 0;
  }

  v40 = v12;

  if (isKindOfClass)
  {
    v13 = [v10 hmf_dictionaryForKey:@"kTransactionJournalKey"];

    if (v13)
    {
      v39 = isKindOfClass;
      v10 = v13;
      v45 = 0u;
      v46 = 0u;
      v47 = 0u;
      v48 = 0u;
      v14 = [v10 countByEnumeratingWithState:&v45 objects:v50 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v46;
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v46 != v16)
            {
              objc_enumerationMutation(v10);
            }

            v18 = *(*(&v45 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v19 = v18;
              v20 = [v10 objectForKeyedSubscript:v19];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v21 = [MEMORY[0x277CBEB58] setWithSet:v20];
                [dictionary setObject:v21 forKeyedSubscript:v19];
              }
            }
          }

          v15 = [v10 countByEnumeratingWithState:&v45 objects:v50 count:16];
        }

        while (v15);
      }

      v22 = v42;
      v3 = context;
      v23 = v41;
      isKindOfClass = v39;
    }

    else
    {
      v10 = 0;
      v22 = v42;
      v23 = v41;
    }
  }

  else
  {
    v29 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v31 = HMFGetOSLogHandle();
    v23 = v41;
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v32 = HMFGetLogIdentifier();
      v33 = objc_opt_class();
      *buf = 138543874;
      v52 = v32;
      v53 = 2112;
      v54 = v33;
      v55 = 2112;
      v56 = v10;
      v34 = isKindOfClass;
      v35 = v33;
      _os_log_impl(&dword_229538000, v31, OS_LOG_TYPE_ERROR, "%{public}@Object was not of expected class NSDictionary (class=%@): %@", buf, 0x20u);

      isKindOfClass = v34;
    }

    objc_autoreleasePoolPop(v29);
    v22 = v42;
    v3 = context;
  }

  objc_autoreleasePoolPop(v3);
  if (isKindOfClass)
  {
    v36 = dictionary;
    goto LABEL_32;
  }

LABEL_31:
  v36 = 0;
LABEL_32:

  v37 = *MEMORY[0x277D85DE8];

  return v36;
}

+ (id)archiveIDSDataSyncJournal:(id)journal
{
  journalCopy = journal;
  v5 = objc_autoreleasePoolPush();
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v7 = dictionary;
  if (journalCopy)
  {
    [dictionary setObject:journalCopy forKeyedSubscript:@"kTransactionJournalKey"];
  }

  else
  {
    null = [MEMORY[0x277CBEB68] null];
    [v7 setObject:null forKeyedSubscript:@"kTransactionJournalKey"];
  }

  v9 = idsDataSyncJournalDataStorePath;
  v10 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v7 requiringSecureCoding:1 error:0];
  v11 = [self _writeData:v10 toStorePath:v9 dataLabel:@"transactions journal"];

  objc_autoreleasePoolPop(v5);

  return v11;
}

+ (void)removeTransactionJournal
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = transactionJournalDataStorePath;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v5 = [defaultManager fileExistsAtPath:v3];

  if (v5)
  {
    defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
    v14 = 0;
    v7 = [defaultManager2 removeItemAtPath:v3 error:&v14];
    v8 = v14;

    if ((v7 & 1) == 0)
    {
      v9 = objc_autoreleasePoolPush();
      selfCopy = self;
      v11 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = HMFGetLogIdentifier();
        *buf = 138543874;
        v16 = v12;
        v17 = 2112;
        v18 = v3;
        v19 = 2112;
        v20 = v8;
        _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_ERROR, "%{public}@Failed to delete file %@ due to error: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v9);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

+ (id)archiveCloudServerTokenData:(id)data
{
  dataCopy = data;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v6 = dictionary;
  if (dataCopy)
  {
    [dictionary setObject:dataCopy forKeyedSubscript:@"kServerTokenDataBlobKey"];
  }

  else
  {
    null = [MEMORY[0x277CBEB68] null];
    [v6 setObject:null forKeyedSubscript:@"kServerTokenDataBlobKey"];
  }

  v8 = serverTokenDataStorePath;
  v9 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v6 requiringSecureCoding:1 error:0];
  v10 = [self _writeData:v9 toStorePath:v8 dataLabel:@"server token"];

  return v10;
}

+ (void)removeServerTokenDataFile
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = serverTokenDataStorePath;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v5 = [defaultManager fileExistsAtPath:v3];

  if (v5)
  {
    defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
    v14 = 0;
    v7 = [defaultManager2 removeItemAtPath:v3 error:&v14];
    v8 = v14;

    if ((v7 & 1) == 0)
    {
      v9 = objc_autoreleasePoolPush();
      selfCopy = self;
      v11 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = HMFGetLogIdentifier();
        *buf = 138543874;
        v16 = v12;
        v17 = 2112;
        v18 = v3;
        v19 = 2112;
        v20 = v8;
        _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_ERROR, "%{public}@Failed to delete file %@ due to error: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v9);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

+ (BOOL)archiveMetadata:(id)metadata
{
  v21 = *MEMORY[0x277D85DE8];
  metadataCopy = metadata;
  v5 = metadataCopy;
  if (metadataCopy && ([metadataCopy objectForKeyedSubscript:*MEMORY[0x277CFEDF0]], (v6 = objc_claimAutoreleasedReturnValue()) != 0) && (v7 = v6, objc_msgSend(v5, "objectForKeyedSubscript:", *MEMORY[0x277CFEDC0]), v8 = objc_claimAutoreleasedReturnValue(), v8, v7, v8))
  {
    v9 = configPlainMetadataPath;
    v10 = [self writeDictionary:v5 toStorePath:v9];
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v17 = 138543618;
      v18 = v14;
      v19 = 2112;
      v20 = v5;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_ERROR, "%{public}@Failed to archive metadata dictionary %@", &v17, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    v10 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];
  return v10;
}

+ (id)loadBuiltinPlainMetadataDictionary
{
  v2 = builtinConfigMetadataDictionaryPath;
  if (v2)
  {
    v3 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

+ (id)loadPlainMetadataDictionary
{
  v2 = configPlainMetadataPath;
  if (v2)
  {
    v3 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

+ (id)unarchiveVendorStore
{
  v41[3] = *MEMORY[0x277D85DE8];
  v3 = configVendorIDStorePath;
  if (v3)
  {
    v4 = [self readDataFromPath:v3];
    if (v4)
    {
      v5 = MEMORY[0x277CBEB98];
      v41[0] = objc_opt_class();
      v41[1] = objc_opt_class();
      v41[2] = objc_opt_class();
      v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v41 count:3];
      v7 = [v5 setWithArray:v6];

      v34 = 0;
      v8 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClasses:v7 fromData:v4 error:&v34];
      v9 = v34;
      if (v8)
      {
        v10 = v8;
        objc_opt_class();
        v11 = objc_opt_isKindOfClass() & 1;
        if (v11)
        {
          v12 = v10;
        }

        else
        {
          v12 = 0;
        }

        v13 = v12;

        if (v11)
        {
          v14 = [v10 objectForKeyedSubscript:@"kApplicationVendorIDStoreDataKey"];
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
        }

        else
        {
          v25 = objc_autoreleasePoolPush();
          selfCopy = self;
          v27 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            HMFGetLogIdentifier();
            v28 = v33 = v25;
            v29 = objc_opt_class();
            *buf = 138543874;
            v36 = v28;
            v37 = 2112;
            v38 = v29;
            v39 = 2112;
            v40 = v10;
            v30 = v29;
            _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_ERROR, "%{public}@Object was not of expected class NSDictionary (class=%@): %@", buf, 0x20u);

            v25 = v33;
          }

          objc_autoreleasePoolPop(v25);
          v16 = 0;
        }
      }

      else
      {
        v21 = objc_autoreleasePoolPush();
        selfCopy2 = self;
        v23 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          v24 = HMFGetLogIdentifier();
          *buf = 138543618;
          v36 = v24;
          v37 = 2112;
          v38 = v9;
          _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_ERROR, "%{public}@Failed to unarchive info dictionary from data: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v21);
        v16 = 0;
      }
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v17 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543362;
      v36 = v20;
      _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_INFO, "%{public}@Unable to determine vendor store path", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v17);
    v16 = 0;
  }

  v31 = *MEMORY[0x277D85DE8];

  return v16;
}

+ (void)archiveVendorStore:(id)store
{
  v23[1] = *MEMORY[0x277D85DE8];
  storeCopy = store;
  v5 = configVendorIDStorePath;
  v6 = objc_autoreleasePoolPush();
  if (v5)
  {
    v22 = @"kApplicationVendorIDStoreDataKey";
    v23[0] = storeCopy;
    selfCopy2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:&v22 count:1];
    v8 = encodeRootObject();
    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v16 = 138543874;
      v17 = v12;
      v18 = 2048;
      v19 = [v8 length];
      v20 = 2112;
      v21 = v5;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Saving data file of length %tu at path %@", &v16, 0x20u);
    }

    objc_autoreleasePoolPop(v9);
    v13 = [selfCopy _writeData:v8 toStorePath:v5 dataLabel:@"vendor id store"];
  }

  else
  {
    selfCopy2 = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      v16 = 138543362;
      v17 = v14;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Unable to determine vendor store path", &v16, 0xCu);
    }
  }

  objc_autoreleasePoolPop(v6);
  v15 = *MEMORY[0x277D85DE8];
}

+ (id)archiveHomeData:(id)data toLocation:(id)location
{
  dataCopy = data;
  locationCopy = location;
  v8 = locationCopy;
  v9 = 0;
  if (dataCopy && locationCopy)
  {
    v10 = objc_autoreleasePoolPush();
    v11 = [self serializeHomeData:dataCopy localStorage:1 remoteDeviceOnSameAccount:0];
    if (v11 && (v15 = 0, [self encryptDataWithControllerKey:v11 error:&v15], (v12 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v13 = v12;
      v9 = [self _writeData:v12 toStorePath:v8 dataLabel:@"home data"];
    }

    else
    {
      v9 = 0;
    }

    objc_autoreleasePoolPop(v10);
  }

  return v9;
}

+ (id)archiveHomeDataLegacy:(id)legacy toLocation:(id)location
{
  legacyCopy = legacy;
  v5 = objc_opt_class();
  v6 = configProtectedDataStorePath;
  v7 = [v5 archiveHomeData:legacyCopy toLocation:v6];

  return v7;
}

+ (id)archiveHomeDataLegacy:(id)legacy
{
  legacyCopy = legacy;
  v5 = configProtectedDataStorePath;
  v6 = [self archiveHomeDataLegacy:legacyCopy toLocation:v5];

  return v6;
}

+ (id)archiveHomeDataForTransaction:(id)transaction
{
  transactionCopy = transaction;
  if (transactionCopy)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = [self serializeHomeData:transactionCopy localStorage:1 remoteDeviceOnSameAccount:0];
    objc_autoreleasePoolPop(v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)serializeHomeData:(id)data localStorage:(BOOL)storage remoteDeviceOnSameAccount:(BOOL)account
{
  accountCopy = account;
  storageCopy = storage;
  v73 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  homes = [dataCopy homes];

  if (homes)
  {
    homes2 = [dataCopy homes];
    [dictionary setObject:homes2 forKeyedSubscript:@"kHomesDataBlobKey"];
  }

  primaryHomeUUID = [dataCopy primaryHomeUUID];

  if (primaryHomeUUID)
  {
    primaryHomeUUID2 = [dataCopy primaryHomeUUID];
    uUIDString = [primaryHomeUUID2 UUIDString];
    [dictionary setObject:uUIDString forKeyedSubscript:@"kPrimaryHomeUUIDKey"];
  }

  lastCurrentHomeUUID = [dataCopy lastCurrentHomeUUID];

  if (lastCurrentHomeUUID)
  {
    lastCurrentHomeUUID2 = [dataCopy lastCurrentHomeUUID];
    uUIDString2 = [lastCurrentHomeUUID2 UUIDString];
    [dictionary setObject:uUIDString2 forKeyedSubscript:@"kLastCurrentHomeUUIDKey"];
  }

  accessories = [dataCopy accessories];

  if (accessories)
  {
    v67 = storageCopy;
    v18 = MEMORY[0x277CBEB18];
    accessories2 = [dataCopy accessories];
    v20 = [v18 arrayWithCapacity:{objc_msgSend(accessories2, "count")}];

    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    accessories3 = [dataCopy accessories];
    v22 = [accessories3 countByEnumeratingWithState:&v68 objects:v72 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v69;
      do
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v69 != v24)
          {
            objc_enumerationMutation(accessories3);
          }

          v26 = *(*(&v68 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v27 = v26;
          }

          else
          {
            v27 = 0;
          }

          v28 = v27;

          if (v28)
          {
            [v20 addObject:v28];
          }
        }

        v23 = [accessories3 countByEnumeratingWithState:&v68 objects:v72 count:16];
      }

      while (v23);
    }

    v29 = [v20 copy];
    [dictionary setObject:v29 forKeyedSubscript:@"kAccessoriesDataBlobKey"];

    storageCopy = v67;
  }

  currentDevice = [dataCopy currentDevice];

  if (currentDevice)
  {
    currentDevice2 = [dataCopy currentDevice];
    [dictionary setObject:currentDevice2 forKeyedSubscript:@"HM.currentDevice"];
  }

  pendingReasonSaved = [dataCopy pendingReasonSaved];

  if (pendingReasonSaved)
  {
    pendingReasonSaved2 = [dataCopy pendingReasonSaved];
    [dictionary setObject:pendingReasonSaved2 forKeyedSubscript:@"HM.savedReasonsKey"];
  }

  v34 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(dataCopy, "dataVersion")}];
  [dictionary setObject:v34 forKeyedSubscript:@"kHomeDataVersionKey"];

  v35 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(dataCopy, "schemaVersion")}];
  [dictionary setObject:v35 forKeyedSubscript:@"kHomeSchemaVersionKey"];

  v36 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(dataCopy, "recoveryVersion")}];
  [dictionary setObject:v36 forKeyedSubscript:@"kHomeRecoveryVersionKey"];

  dataTag = [dataCopy dataTag];
  uUIDString3 = [dataTag UUIDString];
  [dictionary setObject:uUIDString3 forKeyedSubscript:@"kHomeDataTagKey"];

  if (storageCopy || accountCopy)
  {
    applicationData = [dataCopy applicationData];

    if (applicationData)
    {
      applicationData2 = [dataCopy applicationData];
      dictionary2 = [applicationData2 dictionary];
      [dictionary setObject:dictionary2 forKeyedSubscript:@"kApplicationDataKey"];
    }

    if (storageCopy)
    {
      cloudZones = [dataCopy cloudZones];

      if (cloudZones)
      {
        cloudZones2 = [dataCopy cloudZones];
        [dictionary setObject:cloudZones2 forKeyedSubscript:@"kCloudZonesInformationKey"];
      }

      uUIDsOfRemovedHomes = [dataCopy UUIDsOfRemovedHomes];
      v47 = [uUIDsOfRemovedHomes count];

      if (v47)
      {
        uUIDsOfRemovedHomes2 = [dataCopy UUIDsOfRemovedHomes];
        [dictionary setObject:uUIDsOfRemovedHomes2 forKeyedSubscript:@"kUuidsOfRemovedHomesKey"];
      }

      incomingInvitations = [dataCopy incomingInvitations];
      v50 = [incomingInvitations count];

      if (v50)
      {
        incomingInvitations2 = [dataCopy incomingInvitations];
        [dictionary setObject:incomingInvitations2 forKeyedSubscript:@"kIncomingHomeInvitationsKey"];
      }

      pendingUserManagementOperations = [dataCopy pendingUserManagementOperations];

      if (pendingUserManagementOperations)
      {
        pendingUserManagementOperations2 = [dataCopy pendingUserManagementOperations];
        [dictionary setObject:pendingUserManagementOperations2 forKeyedSubscript:@"HM.userManagementPendingOperationsKey"];
      }

      unprocessedOperationIdentifiers = [dataCopy unprocessedOperationIdentifiers];

      if (unprocessedOperationIdentifiers)
      {
        unprocessedOperationIdentifiers2 = [dataCopy unprocessedOperationIdentifiers];
        [dictionary setObject:unprocessedOperationIdentifiers2 forKeyedSubscript:@"kUserManagementUnprocessedOperationModelsKey"];
      }

      account = [dataCopy account];

      if (account)
      {
        account2 = [dataCopy account];
        [dictionary setObject:account2 forKeyedSubscript:@"HM.appleAccount"];

        primaryAccountHandle = [dataCopy primaryAccountHandle];
        [dictionary setObject:primaryAccountHandle forKeyedSubscript:@"HM.primaryAccountHandle"];
      }

      remoteAccounts = [dataCopy remoteAccounts];

      if (remoteAccounts)
      {
        remoteAccounts2 = [dataCopy remoteAccounts];
        [dictionary setObject:remoteAccounts2 forKeyedSubscript:@"HM.remoteAccounts"];
      }

      if ([dataCopy residentEnabledState])
      {
        v61 = [dataCopy residentEnabledState] == 2;
        v62 = [MEMORY[0x277CCABB0] numberWithBool:v61];
        [dictionary setObject:v62 forKeyedSubscript:@"kResidentEnabledKey"];
      }

      v63 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(dataCopy, "accessAllowedWhenLocked")}];
      [dictionary setObject:v63 forKeyedSubscript:@"HM.accessAllowedWhenLocked"];

      v39 = [dictionary copy];
      v40 = encodeRootObject();
    }

    else
    {
      v39 = [dictionary copy];
      v40 = encodeRootObjectForRemoteDeviceOnSameAccountMigrateToHH2(v39, 0, 0);
    }
  }

  else
  {
    v39 = [dictionary copy];
    v40 = encodeRootObjectForRemote(v39, 0, 0);
  }

  v64 = v40;

  v65 = *MEMORY[0x277D85DE8];

  return v64;
}

+ (void)resetConfiguration:(unint64_t)configuration
{
  [HMDResetConfigPostCleanup writePostCleanupRecordWithReason:configuration steps:-1];

  +[HMDHH2FrameworkSwitch removeHH2EnablementPreferenceKey];
}

+ (void)cleanupKeysInStore
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = objc_autoreleasePoolPush();
  selfCopy = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = NSStringFromSelector(a2);
    v12 = 138543874;
    v13 = v7;
    v14 = 2112;
    v15 = v9;
    v16 = 2112;
    v17 = v10;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@[%@ %@] no-op because cloud sync disabled", &v12, 0x20u);
  }

  objc_autoreleasePoolPop(v4);
  v11 = *MEMORY[0x277D85DE8];
}

+ (id)unarchiveHomeData:(id *)data decryptionFailed:(BOOL *)failed successfulKeyUserName:(id *)name
{
  v8 = objc_opt_class();

  return [v8 unarchiveHomeData:data decryptionFailed:failed fromLocation:0 successfulKeyUserName:name forHH2Migration:0];
}

+ (BOOL)removeLegacyHomeArchive:(id *)archive
{
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v5 = configProtectedDataStorePath;
  v6 = [defaultManager fileExistsAtPath:v5];

  if (!v6)
  {
    return 1;
  }

  defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
  v8 = configProtectedDataStorePath;
  v9 = [defaultManager2 removeItemAtPath:v8 error:archive];

  return v9;
}

+ (BOOL)writeDictionary:(id)dictionary toStorePath:(id)path
{
  v28 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  pathCopy = path;
  v8 = objc_autoreleasePoolPush();
  if (!dictionaryCopy || !pathCopy)
  {
    selfCopy = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543874;
      v21 = v12;
      v22 = 2112;
      v23 = dictionaryCopy;
      v24 = 2112;
      v25 = pathCopy;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_ERROR, "%{public}@### Failed to save dictionary %@ to path %@", buf, 0x20u);
    }

    goto LABEL_10;
  }

  v19 = 0;
  v9 = [MEMORY[0x277CCAC58] dataWithPropertyList:dictionaryCopy format:200 options:0 error:&v19];
  selfCopy = v19;
  if (!v9)
  {
    v13 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      *buf = 138544130;
      v21 = v16;
      v22 = 2112;
      v23 = dictionaryCopy;
      v24 = 2112;
      v25 = pathCopy;
      v26 = 2112;
      v27 = selfCopy;
      _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_ERROR, "%{public}@### Failed to save dictionary %@ to path %@ error %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v13);
    v9 = 0;
LABEL_10:
    v11 = 0;
    goto LABEL_11;
  }

  v11 = [v9 writeToFile:pathCopy atomically:1];
LABEL_11:

  objc_autoreleasePoolPop(v8);
  v17 = *MEMORY[0x277D85DE8];
  return v11;
}

+ (id)_writeData:(id)data toStorePath:(id)path dataLabel:(id)label createDirectoriesIfNeeded:(BOOL)needed
{
  neededCopy = needed;
  v55[1] = *MEMORY[0x277D85DE8];
  dataCopy = data;
  pathCopy = path;
  labelCopy = label;
  v54 = *MEMORY[0x277CCA180];
  v55[0] = &unk_283E72938;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v55 forKeys:&v54 count:1];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  if (([defaultManager createFileAtPath:pathCopy contents:0 attributes:v13] & 1) == 0)
  {
    [defaultManager setAttributes:v13 ofItemAtPath:pathCopy error:0];
  }

  v45 = 0;
  v15 = [dataCopy writeToFile:pathCopy options:1073741825 error:&v45];
  v16 = v45;
  v17 = v16;
  if (v15)
  {
    goto LABEL_14;
  }

  if (!neededCopy)
  {
LABEL_11:
    v29 = objc_autoreleasePoolPush();
    selfCopy = self;
    v31 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      v32 = HMFGetLogIdentifier();
      v41 = v29;
      code = [v17 code];
      [v17 localizedDescription];
      v34 = v43 = dataCopy;
      *buf = 138544130;
      v47 = v32;
      v48 = 2112;
      v49 = labelCopy;
      v50 = 2048;
      v51 = code;
      v29 = v41;
      v52 = 2112;
      v53 = v34;
      _os_log_impl(&dword_229538000, v31, OS_LOG_TYPE_DEFAULT, "%{public}@Failed to write %@: (%ld) %@", buf, 0x2Au);

      dataCopy = v43;
    }

    objc_autoreleasePoolPop(v29);
LABEL_14:
    v44 = 0;
    v35 = [defaultManager attributesOfItemAtPath:pathCopy error:&v44];
    v36 = v35;
    if (v35)
    {
      fileSize = [v35 fileSize];
      v35 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:fileSize];
    }

    v28 = v35;

    goto LABEL_17;
  }

  domain = [v16 domain];
  v19 = domain;
  if (domain != *MEMORY[0x277CCA050])
  {

    goto LABEL_11;
  }

  code2 = [v17 code];

  if (code2 != 4)
  {
    goto LABEL_11;
  }

  v21 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v23 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v40 = HMFGetLogIdentifier();
    v42 = v21;
    code3 = [v17 code];
    localizedDescription = [v17 localizedDescription];
    *buf = 138544130;
    v47 = v40;
    v48 = 2112;
    v49 = labelCopy;
    v50 = 2048;
    v51 = code3;
    v21 = v42;
    v52 = 2112;
    v53 = localizedDescription;
    v26 = localizedDescription;
    _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_DEFAULT, "%{public}@Creating parent directory and trying again due to error writing %@: (%ld) %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v21);
  stringByDeletingLastPathComponent = [pathCopy stringByDeletingLastPathComponent];
  createDirectory(stringByDeletingLastPathComponent);

  v28 = [selfCopy2 _writeData:dataCopy toStorePath:pathCopy dataLabel:labelCopy createDirectoriesIfNeeded:0];
LABEL_17:

  v38 = *MEMORY[0x277D85DE8];

  return v28;
}

+ (id)writeData:(id)data toStorePath:(id)path dataLabel:(id)label
{
  dataCopy = data;
  pathCopy = path;
  labelCopy = label;
  v12 = objc_alloc(MEMORY[0x277D0F770]);
  v13 = MEMORY[0x22AAD2510](self, a2);
  v16 = [v12 initWithName:v13];

  v14 = [self _writeData:dataCopy toStorePath:pathCopy dataLabel:labelCopy];
  __HMFActivityScopeLeave();

  return v14;
}

+ (id)readDataFromPath:(id)path
{
  v21 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  v14 = 0;
  v5 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:pathCopy options:2 error:&v14];
  v6 = v14;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543874;
      v16 = v11;
      v17 = 2112;
      v18 = pathCopy;
      v19 = 2112;
      v20 = v6;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to load data store from file path %@: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v8);
  }

  v12 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)unarchiveDictionaryFromData:(id)data allowedClasses:(id)classes forKey:(id)key
{
  v29[3] = *MEMORY[0x277D85DE8];
  dataCopy = data;
  keyCopy = key;
  classesCopy = classes;
  v29[0] = objc_opt_class();
  v29[1] = objc_opt_class();
  v29[2] = objc_opt_class();
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:3];
  v12 = [classesCopy setByAddingObjectsFromArray:v11];

  v24 = 0;
  v13 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClasses:v12 fromData:dataCopy error:&v24];
  v14 = v24;
  if (v13)
  {
    v15 = [v13 objectForKey:keyCopy];
    if (v15)
    {
      goto LABEL_9;
    }

    v16 = objc_autoreleasePoolPush();
    selfCopy = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543618;
      v26 = v19;
      v27 = 2112;
      v28 = keyCopy;
      v20 = "%{public}@Key %@ not found in unarchived data";
LABEL_7:
      _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_ERROR, v20, buf, 0x16u);
    }
  }

  else
  {
    v16 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543618;
      v26 = v19;
      v27 = 2112;
      v28 = v14;
      v20 = "%{public}@Failed to unarchive data: %@";
      goto LABEL_7;
    }
  }

  objc_autoreleasePoolPop(v16);
  v15 = 0;
LABEL_9:

  v22 = *MEMORY[0x277D85DE8];

  return v15;
}

- (id)unarchiveDictionaryWithPath:(id)path allowedClasses:(id)classes forKey:(id)key
{
  pathCopy = path;
  classesCopy = classes;
  keyCopy = key;
  v11 = objc_autoreleasePoolPush();
  v12 = [objc_opt_class() readDataFromPath:pathCopy];
  if (v12 || [0 length])
  {
    v13 = [(HMDPersistentStore *)self unarchiveDictionaryFromData:v12 allowedClasses:classesCopy forKey:keyCopy];
  }

  else
  {
    v13 = 0;
  }

  objc_autoreleasePoolPop(v11);

  return v13;
}

- (id)archiveDictionary:(id)dictionary withPath:(id)path forKey:(id)key
{
  v32 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  pathCopy = path;
  keyCopy = key;
  context = objc_autoreleasePoolPush();
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v12 = dictionary;
  if (dictionaryCopy)
  {
    [dictionary setObject:dictionaryCopy forKeyedSubscript:keyCopy];
  }

  else
  {
    null = [MEMORY[0x277CBEB68] null];
    [v12 setObject:null forKeyedSubscript:keyCopy];
  }

  v14 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v12 requiringSecureCoding:1 error:0];
  pathCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"archive data with path: %@", pathCopy];
  v16 = [objc_opt_class() _writeData:v14 toStorePath:pathCopy dataLabel:pathCopy];
  v17 = objc_autoreleasePoolPush();
  selfCopy = self;
  v19 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    HMFGetLogIdentifier();
    v24 = dictionaryCopy;
    v21 = v20 = keyCopy;
    *buf = 138543874;
    v27 = v21;
    v28 = 2112;
    v29 = pathCopy;
    v30 = 2112;
    v31 = v16;
    _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_INFO, "%{public}@HMDPersistentStore %@ with size: %@", buf, 0x20u);

    keyCopy = v20;
    dictionaryCopy = v24;
  }

  objc_autoreleasePoolPop(v17);
  objc_autoreleasePoolPop(context);

  v22 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)writeData:(id)data toStorePath:(id)path dataLabel:(id)label
{
  labelCopy = label;
  pathCopy = path;
  dataCopy = data;
  v10 = [objc_opt_class() writeData:dataCopy toStorePath:pathCopy dataLabel:labelCopy];

  return v10;
}

@end