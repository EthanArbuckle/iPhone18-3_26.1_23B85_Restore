@interface HMDPersistentStore
+ (BOOL)archiveMetadata:(id)a3;
+ (BOOL)deserializeHomeData:(id *)a3 usingLocalStorage:(BOOL)a4 fromData:(id)a5 forHH2Migration:(BOOL)a6;
+ (BOOL)hasControllerKeyWithUsername:(id)a3 error:(id *)a4;
+ (BOOL)removeLegacyHomeArchive:(id *)a3;
+ (BOOL)writeDictionary:(id)a3 toStorePath:(id)a4;
+ (id)_writeData:(id)a3 toStorePath:(id)a4 dataLabel:(id)a5 createDirectoriesIfNeeded:(BOOL)a6;
+ (id)archiveCloudServerTokenData:(id)a3;
+ (id)archiveHomeData:(id)a3 toLocation:(id)a4;
+ (id)archiveHomeDataForTransaction:(id)a3;
+ (id)archiveHomeDataLegacy:(id)a3;
+ (id)archiveHomeDataLegacy:(id)a3 toLocation:(id)a4;
+ (id)archiveIDSDataSyncJournal:(id)a3;
+ (id)controllerUsernameForPairingIdentity:(id)a3 error:(id *)a4;
+ (id)decryptData:(id)a3 withKey:(id)a4 error:(id *)a5;
+ (id)decryptDataWithControllerKey:(id)a3 totalKeysFound:(unint64_t *)a4 deleteExtraKeys:(BOOL)a5 allowControllerIdentifierToChange:(BOOL)a6 controllerIdentifierChanged:(BOOL *)a7 successfulKeyUserName:(id *)a8 error:(id *)a9;
+ (id)encryptData:(id)a3 withKey:(id)a4 error:(id *)a5;
+ (id)encryptDataWithControllerKey:(id)a3 error:(id *)a4;
+ (id)loadBuiltinPlainMetadataDictionary;
+ (id)loadPlainMetadataDictionary;
+ (id)logCategory;
+ (id)readDataFromPath:(id)a3;
+ (id)serializeHomeData:(id)a3 localStorage:(BOOL)a4 remoteDeviceOnSameAccount:(BOOL)a5;
+ (id)unarchiveBulletinBoard;
+ (id)unarchiveHomeData:(id *)a3 decryptionFailed:(BOOL *)a4 successfulKeyUserName:(id *)a5;
+ (id)unarchiveIDSDataSyncJournal;
+ (id)unarchiveVendorStore;
+ (id)writeData:(id)a3 toStorePath:(id)a4 dataLabel:(id)a5;
+ (void)archiveBulletinBoard:(id)a3;
+ (void)archiveVendorStore:(id)a3;
+ (void)cleanupKeysInStore;
+ (void)removeServerTokenDataFile;
+ (void)removeTransactionJournal;
+ (void)resetConfiguration:(unint64_t)a3;
- (id)archiveDictionary:(id)a3 withPath:(id)a4 forKey:(id)a5;
- (id)unarchiveDictionaryFromData:(id)a3 allowedClasses:(id)a4 forKey:(id)a5;
- (id)unarchiveDictionaryWithPath:(id)a3 allowedClasses:(id)a4 forKey:(id)a5;
- (id)writeData:(id)a3 toStorePath:(id)a4 dataLabel:(id)a5;
@end

@implementation HMDPersistentStore

+ (id)logCategory
{
  if (logCategory__hmf_once_t50_61929 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t50_61929, &__block_literal_global_61930);
  }

  v3 = logCategory__hmf_once_v51_61931;

  return v3;
}

uint64_t __33__HMDPersistentStore_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v51_61931;
  logCategory__hmf_once_v51_61931 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

+ (id)controllerUsernameForPairingIdentity:(id)a3 error:(id *)a4
{
  v33 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [MEMORY[0x277CFEC78] systemStore];
  v29 = 0;
  v30 = 0;
  v8 = [v7 getAllAvailableControllerPublicKeys:&v30 secretKeys:0 userNames:&v29 error:a4];
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
    v21 = a1;
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
    _os_log_impl(&dword_2531F8000, v25, v26, v24, buf, 0xCu);

    goto LABEL_16;
  }

  if ([v10 count] != 1)
  {
    v20 = objc_autoreleasePoolPush();
    v21 = a1;
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

  v17 = [v6 publicKey];
  v18 = [v16 isEqual:v17];

  v19 = 0;
  if (v18)
  {
    v19 = [v10 objectAtIndexedSubscript:0];
  }

LABEL_17:
  v27 = *MEMORY[0x277D85DE8];

  return v19;
}

+ (BOOL)hasControllerKeyWithUsername:(id)a3 error:(id *)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [MEMORY[0x277CFEC78] systemStore];
  v25 = 0;
  v26 = 0;
  v8 = [v7 getAllAvailableControllerPublicKeys:0 secretKeys:0 userNames:&v26 error:&v25];
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
      if (a4)
      {
        v13 = v10;
        v14 = 0;
        *a4 = v10;
        goto LABEL_21;
      }

LABEL_20:
      v14 = 0;
      goto LABEL_21;
    }

LABEL_16:
    v19 = objc_autoreleasePoolPush();
    v20 = a1;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier();
      *buf = 138543362;
      v28 = v22;
      _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_ERROR, "%{public}@Did not find controller key for given username.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v19);
    if (a4)
    {
      [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
      *a4 = v14 = 0;
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  if (![v9 containsObject:v6])
  {
    goto LABEL_16;
  }

  v15 = objc_autoreleasePoolPush();
  v16 = a1;
  v17 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    v18 = HMFGetLogIdentifier();
    *buf = 138543362;
    v28 = v18;
    _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_INFO, "%{public}@Found controller key for username", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v15);
  v14 = 1;
LABEL_21:

  v23 = *MEMORY[0x277D85DE8];
  return v14;
}

+ (id)decryptDataWithControllerKey:(id)a3 totalKeysFound:(unint64_t *)a4 deleteExtraKeys:(BOOL)a5 allowControllerIdentifierToChange:(BOOL)a6 controllerIdentifierChanged:(BOOL *)a7 successfulKeyUserName:(id *)a8 error:(id *)a9
{
  obj = a6;
  v9 = a5;
  v145 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = [MEMORY[0x277CBEB18] array];
  v13 = [MEMORY[0x277CFEC78] systemStore];
  v134 = 0;
  v135 = 0;
  v133 = 0;
  v14 = [v13 getAllAvailableControllerPublicKeys:0 secretKeys:&v135 userNames:&v134 error:&v133];
  v15 = v135;
  v16 = v134;
  v17 = v133;

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
    v36 = a1;
    v37 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
    {
      v38 = HMFGetLogIdentifier();
      *buf = 138543362;
      v138 = v38;
      _os_log_impl(&dword_2531F8000, v37, OS_LOG_TYPE_INFO, "%{public}@Unable to get controller public keys", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v35);
    v34 = a9;
    if (a9)
    {
      v39 = v17;
      v33 = 0;
      v34 = 0;
      *a9 = v17;
    }

    else
    {
      v33 = 0;
    }

    goto LABEL_82;
  }

  if (a7)
  {
    *a7 = 0;
  }

  if (a4)
  {
    *a4 = [v15 count];
  }

  if (!obj)
  {
    v21 = [MEMORY[0x277CFEC78] systemStore];
    v22 = [v21 activeControllerPairingIdentifier];
    v23 = [v22 copy];

    if (!v23)
    {
      v40 = objc_autoreleasePoolPush();
      v41 = a1;
      v42 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
      {
        v43 = HMFGetLogIdentifier();
        *buf = 138543362;
        v138 = v43;
        _os_log_impl(&dword_2531F8000, v42, OS_LOG_TYPE_INFO, "%{public}@Cannot find controller key because active controller pairing identifier is not set", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v40);
      v44 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
      if (a9)
      {
        v44 = v44;
        *a9 = v44;
      }

      v33 = 0;
      v34 = 0;
      goto LABEL_82;
    }

    v109 = v9;
    v24 = [MEMORY[0x277CBEB18] arrayWithCapacity:1];
    v25 = [MEMORY[0x277CBEB18] arrayWithCapacity:1];
    v26 = [v16 indexOfObject:v23];
    if (v26 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v112 = v15;
      v116 = v16;
      v27 = v11;
      v28 = objc_autoreleasePoolPush();
      v29 = a1;
      v30 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        v31 = HMFGetLogIdentifier();
        *buf = 138543618;
        v138 = v31;
        v139 = 2112;
        v140 = v23;
        _os_log_impl(&dword_2531F8000, v30, OS_LOG_TYPE_INFO, "%{public}@Cannot find controller key for active controller pairing identifier, %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v28);
      v32 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
      if (a9)
      {
        v32 = v32;
        *a9 = v32;
      }

      v33 = 0;
      v34 = 0;
      v11 = v27;
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
    v9 = v109;
  }

  if (![v15 count])
  {
    v33 = 0;
    v50 = 0;
    if (![v12 count])
    {
      goto LABEL_75;
    }

LABEL_72:
    v98 = objc_autoreleasePoolPush();
    v99 = a1;
    v100 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v100, OS_LOG_TYPE_INFO))
    {
      v101 = HMFGetLogIdentifier();
      *buf = 138543362;
      v138 = v101;
      _os_log_impl(&dword_2531F8000, v100, OS_LOG_TYPE_INFO, "%{public}@Data has not been decrypted, not deleting extra keys", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v98);
    v50 = 0;
LABEL_75:
    if (a9 && !v50)
    {
      v102 = v17;
      *a9 = v17;
    }

    goto LABEL_81;
  }

  v110 = v9;
  v50 = 0;
  v33 = 0;
  v51 = 0;
  v114 = v12;
  v118 = v11;
  do
  {
    if (v50)
    {
      v120 = v50;
      v52 = objc_autoreleasePoolPush();
      v53 = a1;
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
        _os_log_impl(&dword_2531F8000, v54, OS_LOG_TYPE_INFO, "%{public}@Data has already been decrypted, adding controller key: %@", buf, 0x16u);

        v11 = v118;
        v33 = v55;
        v12 = v114;
      }

      objc_autoreleasePoolPop(v52);
      v58 = [v16 objectAtIndexedSubscript:v51];
      [v12 addObject:v58];
      v50 = v120;
      goto LABEL_50;
    }

    v59 = [v15 objectAtIndexedSubscript:v51];
    v132 = 0;
    v60 = [a1 decryptData:v11 withKey:v59 error:&v132];
    v17 = v132;

    if (v17 || !v60)
    {
      v74 = objc_autoreleasePoolPush();
      v75 = a1;
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
        v144 = v17;
        _os_log_impl(&dword_2531F8000, v76, OS_LOG_TYPE_INFO, "%{public}@Decryption failed with controller key: %{public}@, key:%{public}@ with error: %{public}@", buf, 0x2Au);

        v16 = v80;
        v15 = v79;
        v74 = v121;

        v12 = v114;
      }

      objc_autoreleasePoolPop(v74);
      v58 = [v16 objectAtIndexedSubscript:v51];
      [v12 addObject:v58];
      v50 = 0;
      v33 = v60;
      v11 = v118;
      goto LABEL_50;
    }

    v33 = v60;
    v17 = a8;
    if (obj)
    {
      v61 = objc_autoreleasePoolPush();
      v62 = a1;
      v63 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v63, OS_LOG_TYPE_INFO))
      {
        v64 = HMFGetLogIdentifier();
        [v16 objectAtIndexedSubscript:v51];
        v65 = v15;
        v66 = v16;
        v67 = v12;
        v69 = v68 = v33;
        *buf = 138543618;
        v138 = v64;
        v139 = 2112;
        v140 = v69;
        _os_log_impl(&dword_2531F8000, v63, OS_LOG_TYPE_INFO, "%{public}@Updating active controller identifier to %@", buf, 0x16u);

        v33 = v68;
        v12 = v67;
        v16 = v66;
        v15 = v65;
        v11 = v118;

        v17 = a8;
      }

      objc_autoreleasePoolPop(v61);
      v70 = [MEMORY[0x277CFEC78] systemStore];
      v71 = [v16 objectAtIndexedSubscript:v51];
      v72 = [v70 updateActiveControllerPairingIdentifier:v71];

      if (a7)
      {
        *a7 = v72;
      }
    }

    if (v17)
    {
      v73 = v17;
      v58 = [v16 objectAtIndexedSubscript:v51];
      v17 = 0;
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
  if (![v12 count])
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
    obja = v12;
    v82 = [obja countByEnumeratingWithState:&v128 objects:v136 count:16];
    if (v82)
    {
      v83 = v82;
      v84 = *v129;
      do
      {
        v85 = 0;
        v86 = v17;
        do
        {
          if (*v129 != v84)
          {
            objc_enumerationMutation(obja);
          }

          v87 = *(*(&v128 + 1) + 8 * v85);
          v88 = objc_autoreleasePoolPush();
          v89 = a1;
          v90 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v90, OS_LOG_TYPE_INFO))
          {
            v91 = HMFGetLogIdentifier();
            *buf = 138543618;
            v138 = v91;
            v139 = 2112;
            v140 = v87;
            _os_log_impl(&dword_2531F8000, v90, OS_LOG_TYPE_INFO, "%{public}@Deleting extra key corresponding to username: %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v88);
          v92 = [MEMORY[0x277CFEC78] systemStore];
          v127 = v86;
          v93 = [v92 removeControllerKeyPairForIdentifier:v87 leaveTombstone:1 error:&v127];
          v17 = v127;

          if ((v93 & 1) == 0)
          {
            v94 = objc_autoreleasePoolPush();
            v95 = v89;
            v96 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v96, OS_LOG_TYPE_INFO))
            {
              v97 = HMFGetLogIdentifier();
              *buf = 138543874;
              v138 = v97;
              v139 = 2112;
              v140 = v87;
              v141 = 2112;
              v142 = v17;
              _os_log_impl(&dword_2531F8000, v96, OS_LOG_TYPE_INFO, "%{public}@Failed to delete extra key for username: %@ due to error: %@", buf, 0x20u);
            }

            objc_autoreleasePoolPop(v94);
          }

          ++v85;
          v86 = v17;
        }

        while (v83 != v85);
        v83 = [obja countByEnumeratingWithState:&v128 objects:v136 count:16];
      }

      while (v83);
    }

    v16 = v117;
    v11 = v118;
    v12 = v114;
    v33 = v111;
    v15 = v113;
    v50 = v122;
    goto LABEL_75;
  }

  v103 = objc_autoreleasePoolPush();
  v104 = a1;
  v105 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v105, OS_LOG_TYPE_INFO))
  {
    HMFGetLogIdentifier();
    v106 = v123 = v50;
    *buf = 138543362;
    v138 = v106;
    _os_log_impl(&dword_2531F8000, v105, OS_LOG_TYPE_INFO, "%{public}@Not deleting extra keys as it has not been requested", buf, 0xCu);

    v50 = v123;
  }

  objc_autoreleasePoolPop(v103);
LABEL_81:
  v34 = v50;
LABEL_82:

  v107 = *MEMORY[0x277D85DE8];

  return v34;
}

+ (id)encryptDataWithControllerKey:(id)a3 error:(id *)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [MEMORY[0x277CFEC78] systemStore];
  v18 = 0;
  v19 = 0;
  v8 = [v7 getControllerPublicKey:0 secretKey:&v19 username:&v18 allowCreation:0 error:a4];
  v9 = v19;
  v10 = v18;

  if (v8)
  {
    v11 = objc_autoreleasePoolPush();
    v12 = a1;
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
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@Using key [%@] to encrypt the homedata and store it: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v11);
    v15 = [v12 encryptData:v6 withKey:v9 error:a4];
  }

  else
  {
    v15 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

+ (id)decryptData:(id)a3 withKey:(id)a4 error:(id *)a5
{
  v35 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = [v7 length];
  v10 = v9 - 28;
  if (v9 > 0x1C)
  {
    ccsha512_di();
    [v8 length];
    [v8 bytes];
    cchkdf();
    [v7 bytes];
    v18 = [MEMORY[0x277CBEB28] dataWithLength:v10];
    [v18 mutableBytes];
    v19 = chacha20_poly1305_decrypt_all_96x32();
    if (v19)
    {
      if (a5)
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
        *a5 = v27;

        a5 = 0;
      }
    }

    else
    {
      a5 = v18;
      v18 = a5;
    }
  }

  else
  {
    if (a5)
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
      *a5 = v17;

      a5 = 0;
    }

    v18 = 0;
  }

  v28 = *MEMORY[0x277D85DE8];

  return a5;
}

+ (id)encryptData:(id)a3 withKey:(id)a4 error:(id *)a5
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
  ccsha512_di();
  [v6 length];
  [v6 bytes];

  cchkdf();
  RandomBytes();
  ccsha512_di();
  cchkdf();
  v8 = [v7 length];
  v9 = [MEMORY[0x277CBEB28] dataWithLength:v8 + 28];
  v10 = [v9 mutableBytes];
  v11 = v15;
  *v10 = v14;
  *(v10 + 8) = v11;
  [v7 bytes];

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
    v6 = [a1 readDataFromPath:v4];
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
      v12 = a1;
      v13 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = HMFGetLogIdentifier();
        *buf = 138543618;
        v19 = v14;
        v20 = 2112;
        v21 = v10;
        _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_ERROR, "%{public}@Failed to unarchive bulletin board from data: %@", buf, 0x16u);
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

+ (void)archiveBulletinBoard:(id)a3
{
  v8 = a3;
  v4 = objc_autoreleasePoolPush();
  v5 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v8 requiringSecureCoding:1 error:0];
  v6 = bulletinBoardDataStorePath;
  v7 = [a1 _writeData:v5 toStorePath:v6 dataLabel:@"bulletin board"];

  objc_autoreleasePoolPop(v4);
}

+ (id)unarchiveIDSDataSyncJournal
{
  v57[4] = *MEMORY[0x277D85DE8];
  v44 = [MEMORY[0x277CBEB38] dictionary];
  v3 = objc_autoreleasePoolPush();
  v4 = idsDataSyncJournalDataStorePath;
  v5 = [a1 readDataFromPath:v4];

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
    v26 = a1;
    v27 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = HMFGetLogIdentifier();
      *buf = 138543618;
      v52 = v28;
      v53 = 2112;
      v54 = v41;
      _os_log_impl(&dword_2531F8000, v27, OS_LOG_TYPE_ERROR, "%{public}@Failed to unarchive info dictionary from data: %@", buf, 0x16u);
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
                [v44 setObject:v21 forKeyedSubscript:v19];
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
    v30 = a1;
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
      _os_log_impl(&dword_2531F8000, v31, OS_LOG_TYPE_ERROR, "%{public}@Object was not of expected class NSDictionary (class=%@): %@", buf, 0x20u);

      isKindOfClass = v34;
    }

    objc_autoreleasePoolPop(v29);
    v22 = v42;
    v3 = context;
  }

  objc_autoreleasePoolPop(v3);
  if (isKindOfClass)
  {
    v36 = v44;
    goto LABEL_32;
  }

LABEL_31:
  v36 = 0;
LABEL_32:

  v37 = *MEMORY[0x277D85DE8];

  return v36;
}

+ (id)archiveIDSDataSyncJournal:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = [MEMORY[0x277CBEB38] dictionary];
  v7 = v6;
  if (v4)
  {
    [v6 setObject:v4 forKeyedSubscript:@"kTransactionJournalKey"];
  }

  else
  {
    v8 = [MEMORY[0x277CBEB68] null];
    [v7 setObject:v8 forKeyedSubscript:@"kTransactionJournalKey"];
  }

  v9 = idsDataSyncJournalDataStorePath;
  v10 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v7 requiringSecureCoding:1 error:0];
  v11 = [a1 _writeData:v10 toStorePath:v9 dataLabel:@"transactions journal"];

  objc_autoreleasePoolPop(v5);

  return v11;
}

+ (void)removeTransactionJournal
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = transactionJournalDataStorePath;
  v4 = [MEMORY[0x277CCAA00] defaultManager];
  v5 = [v4 fileExistsAtPath:v3];

  if (v5)
  {
    v6 = [MEMORY[0x277CCAA00] defaultManager];
    v14 = 0;
    v7 = [v6 removeItemAtPath:v3 error:&v14];
    v8 = v14;

    if ((v7 & 1) == 0)
    {
      v9 = objc_autoreleasePoolPush();
      v10 = a1;
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
        _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_ERROR, "%{public}@Failed to delete file %@ due to error: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v9);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

+ (id)archiveCloudServerTokenData:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CBEB38] dictionary];
  v6 = v5;
  if (v4)
  {
    [v5 setObject:v4 forKeyedSubscript:@"kServerTokenDataBlobKey"];
  }

  else
  {
    v7 = [MEMORY[0x277CBEB68] null];
    [v6 setObject:v7 forKeyedSubscript:@"kServerTokenDataBlobKey"];
  }

  v8 = serverTokenDataStorePath;
  v9 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v6 requiringSecureCoding:1 error:0];
  v10 = [a1 _writeData:v9 toStorePath:v8 dataLabel:@"server token"];

  return v10;
}

+ (void)removeServerTokenDataFile
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = serverTokenDataStorePath;
  v4 = [MEMORY[0x277CCAA00] defaultManager];
  v5 = [v4 fileExistsAtPath:v3];

  if (v5)
  {
    v6 = [MEMORY[0x277CCAA00] defaultManager];
    v14 = 0;
    v7 = [v6 removeItemAtPath:v3 error:&v14];
    v8 = v14;

    if ((v7 & 1) == 0)
    {
      v9 = objc_autoreleasePoolPush();
      v10 = a1;
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
        _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_ERROR, "%{public}@Failed to delete file %@ due to error: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v9);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

+ (BOOL)archiveMetadata:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (v4 && ([v4 objectForKeyedSubscript:*MEMORY[0x277CFEDF0]], (v6 = objc_claimAutoreleasedReturnValue()) != 0) && (v7 = v6, objc_msgSend(v5, "objectForKeyedSubscript:", *MEMORY[0x277CFEDC0]), v8 = objc_claimAutoreleasedReturnValue(), v8, v7, v8))
  {
    v9 = configPlainMetadataPath;
    v10 = [a1 writeDictionary:v5 toStorePath:v9];
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    v12 = a1;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v17 = 138543618;
      v18 = v14;
      v19 = 2112;
      v20 = v5;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_ERROR, "%{public}@Failed to archive metadata dictionary %@", &v17, 0x16u);
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
    v4 = [a1 readDataFromPath:v3];
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
          v26 = a1;
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
            _os_log_impl(&dword_2531F8000, v27, OS_LOG_TYPE_ERROR, "%{public}@Object was not of expected class NSDictionary (class=%@): %@", buf, 0x20u);

            v25 = v33;
          }

          objc_autoreleasePoolPop(v25);
          v16 = 0;
        }
      }

      else
      {
        v21 = objc_autoreleasePoolPush();
        v22 = a1;
        v23 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          v24 = HMFGetLogIdentifier();
          *buf = 138543618;
          v36 = v24;
          v37 = 2112;
          v38 = v9;
          _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_ERROR, "%{public}@Failed to unarchive info dictionary from data: %@", buf, 0x16u);
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
    v18 = a1;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543362;
      v36 = v20;
      _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_INFO, "%{public}@Unable to determine vendor store path", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v17);
    v16 = 0;
  }

  v31 = *MEMORY[0x277D85DE8];

  return v16;
}

+ (void)archiveVendorStore:(id)a3
{
  v23[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = configVendorIDStorePath;
  v6 = objc_autoreleasePoolPush();
  if (v5)
  {
    v22 = @"kApplicationVendorIDStoreDataKey";
    v23[0] = v4;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:&v22 count:1];
    v8 = encodeRootObject();
    v9 = objc_autoreleasePoolPush();
    v10 = a1;
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
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Saving data file of length %tu at path %@", &v16, 0x20u);
    }

    objc_autoreleasePoolPop(v9);
    v13 = [v10 _writeData:v8 toStorePath:v5 dataLabel:@"vendor id store"];
  }

  else
  {
    v7 = a1;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      v16 = 138543362;
      v17 = v14;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Unable to determine vendor store path", &v16, 0xCu);
    }
  }

  objc_autoreleasePoolPop(v6);
  v15 = *MEMORY[0x277D85DE8];
}

+ (id)archiveHomeData:(id)a3 toLocation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  v9 = 0;
  if (v6 && v7)
  {
    v10 = objc_autoreleasePoolPush();
    v11 = [a1 serializeHomeData:v6 localStorage:1 remoteDeviceOnSameAccount:0];
    if (v11 && (v15 = 0, [a1 encryptDataWithControllerKey:v11 error:&v15], (v12 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v13 = v12;
      v9 = [a1 _writeData:v12 toStorePath:v8 dataLabel:@"home data"];
    }

    else
    {
      v9 = 0;
    }

    objc_autoreleasePoolPop(v10);
  }

  return v9;
}

+ (id)archiveHomeDataLegacy:(id)a3 toLocation:(id)a4
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = configProtectedDataStorePath;
  v7 = [v5 archiveHomeData:v4 toLocation:v6];

  return v7;
}

+ (id)archiveHomeDataLegacy:(id)a3
{
  v4 = a3;
  v5 = configProtectedDataStorePath;
  v6 = [a1 archiveHomeDataLegacy:v4 toLocation:v5];

  return v6;
}

+ (id)archiveHomeDataForTransaction:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = [a1 serializeHomeData:v4 localStorage:1 remoteDeviceOnSameAccount:0];
    objc_autoreleasePoolPop(v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)serializeHomeData:(id)a3 localStorage:(BOOL)a4 remoteDeviceOnSameAccount:(BOOL)a5
{
  v5 = a5;
  v74 = a4;
  v80 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [MEMORY[0x277CBEB38] dictionary];
  v8 = [v6 homes];

  if (v8)
  {
    v9 = [v6 homes];
    [v7 setObject:v9 forKeyedSubscript:@"kHomesDataBlobKey"];
  }

  v10 = [v6 primaryHomeUUID];

  if (v10)
  {
    v11 = [v6 primaryHomeUUID];
    v12 = [v11 UUIDString];
    [v7 setObject:v12 forKeyedSubscript:@"kPrimaryHomeUUIDKey"];
  }

  v13 = [v6 lastCurrentHomeUUID];

  if (v13)
  {
    v14 = [v6 lastCurrentHomeUUID];
    v15 = [v14 UUIDString];
    [v7 setObject:v15 forKeyedSubscript:@"kLastCurrentHomeUUIDKey"];
  }

  v16 = [v6 accessories];

  if (v16)
  {
    v72 = v7;
    v17 = MEMORY[0x277CBEB18];
    v18 = [v6 accessories];
    v73 = [v17 arrayWithCapacity:{objc_msgSend(v18, "count")}];

    v77 = 0u;
    v78 = 0u;
    v75 = 0u;
    v76 = 0u;
    v19 = [v6 accessories];
    v20 = [v19 countByEnumeratingWithState:&v75 objects:v79 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v76;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v76 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = *(*(&v75 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v25 = v24;
          }

          else
          {
            v25 = 0;
          }

          v26 = v25;

          v27 = v24;
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v28 = v27;
          }

          else
          {
            v28 = 0;
          }

          v29 = v28;

          v30 = !v74;
          if (!v29)
          {
            v30 = 0;
          }

          if (!v30 && v26)
          {
            [v73 addObject:v26];
          }
        }

        v21 = [v19 countByEnumeratingWithState:&v75 objects:v79 count:16];
      }

      while (v21);
    }

    v31 = [v73 copy];
    v7 = v72;
    [v72 setObject:v31 forKeyedSubscript:@"kAccessoriesDataBlobKey"];
  }

  v32 = [v6 currentDevice];

  if (v32)
  {
    v33 = [v6 currentDevice];
    [v7 setObject:v33 forKeyedSubscript:@"HM.currentDevice"];
  }

  v34 = [v6 pendingReasonSaved];

  if (v34)
  {
    v35 = [v6 pendingReasonSaved];
    [v7 setObject:v35 forKeyedSubscript:@"HM.savedReasonsKey"];
  }

  v36 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v6, "dataVersion")}];
  [v7 setObject:v36 forKeyedSubscript:@"kHomeDataVersionKey"];

  v37 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v6, "schemaVersion")}];
  [v7 setObject:v37 forKeyedSubscript:@"kHomeSchemaVersionKey"];

  v38 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v6, "recoveryVersion")}];
  [v7 setObject:v38 forKeyedSubscript:@"kHomeRecoveryVersionKey"];

  v39 = [v6 dataTag];
  v40 = [v39 UUIDString];
  [v7 setObject:v40 forKeyedSubscript:@"kHomeDataTagKey"];

  if (v74 || v5)
  {
    v43 = [v6 applicationData];

    if (v43)
    {
      v44 = [v6 applicationData];
      v45 = [v44 dictionary];
      [v7 setObject:v45 forKeyedSubscript:@"kApplicationDataKey"];
    }

    if (v74)
    {
      v46 = [v6 cloudZones];

      if (v46)
      {
        v47 = [v6 cloudZones];
        [v7 setObject:v47 forKeyedSubscript:@"kCloudZonesInformationKey"];
      }

      v48 = [v6 UUIDsOfRemovedHomes];
      v49 = [v48 count];

      if (v49)
      {
        v50 = [v6 UUIDsOfRemovedHomes];
        [v7 setObject:v50 forKeyedSubscript:@"kUuidsOfRemovedHomesKey"];
      }

      v51 = [v6 incomingInvitations];
      v52 = [v51 count];

      if (v52)
      {
        v53 = [v6 incomingInvitations];
        [v7 setObject:v53 forKeyedSubscript:@"kIncomingHomeInvitationsKey"];
      }

      v54 = [v6 pendingUserManagementOperations];

      if (v54)
      {
        v55 = [v6 pendingUserManagementOperations];
        [v7 setObject:v55 forKeyedSubscript:@"HM.userManagementPendingOperationsKey"];
      }

      v56 = [v6 unprocessedOperationIdentifiers];

      if (v56)
      {
        v57 = [v6 unprocessedOperationIdentifiers];
        [v7 setObject:v57 forKeyedSubscript:@"kUserManagementUnprocessedOperationModelsKey"];
      }

      v58 = [v6 account];

      if (v58)
      {
        v59 = [v6 account];
        [v7 setObject:v59 forKeyedSubscript:@"HM.appleAccount"];

        v60 = [v6 primaryAccountHandle];
        [v7 setObject:v60 forKeyedSubscript:@"HM.primaryAccountHandle"];
      }

      v61 = [v6 remoteAccounts];

      if (v61)
      {
        v62 = [v6 remoteAccounts];
        [v7 setObject:v62 forKeyedSubscript:@"HM.remoteAccounts"];
      }

      if ([v6 residentEnabledState])
      {
        v63 = [v6 residentEnabledState] == 2;
        v64 = [MEMORY[0x277CCABB0] numberWithBool:v63];
        [v7 setObject:v64 forKeyedSubscript:@"kResidentEnabledKey"];
      }

      v65 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v6, "accessAllowedWhenLocked")}];
      [v7 setObject:v65 forKeyedSubscript:@"HM.accessAllowedWhenLocked"];

      v66 = [v6 demoAccessories];

      if (v66)
      {
        v67 = [v6 demoAccessories];
        [v7 setObject:v67 forKeyedSubscript:@"HM.demoAccessories"];
      }

      if ([v6 demoFinalized])
      {
        v68 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v6, "demoFinalized")}];
        [v7 setObject:v68 forKeyedSubscript:@"HM.demoFinalized"];
      }

      v41 = [v7 copy];
      v42 = encodeRootObject();
    }

    else
    {
      v41 = [v7 copy];
      v42 = encodeRootObjectForRemoteDeviceOnSameAccountMigrateToHH2(v41, 0, 0);
    }
  }

  else
  {
    v41 = [v7 copy];
    v42 = encodeRootObjectForRemote(v41, 0, 0);
  }

  v69 = v42;

  v70 = *MEMORY[0x277D85DE8];

  return v69;
}

+ (void)resetConfiguration:(unint64_t)a3
{
  v4 = +[HMDBackingStore flushBackingStore];
  if (a3 == 4)
  {
    v5 = 128;
  }

  else
  {
    v5 = -1;
  }

  [HMDResetConfigPostCleanup writePostCleanupRecordWithReason:a3 steps:v5];

  +[HMDHH2FrameworkSwitch removeHH2EnablementPreferenceKey];
}

+ (void)cleanupKeysInStore
{
  v73 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = a1;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    *buf = 138543362;
    v65 = v6;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@Cleaning up keys in keychain store", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v7 = configProtectedDataStorePath;
  if (v7)
  {
    v63 = 0;
    v8 = [v4 readDataFromPath:v7];
    if (v8)
    {
      v9 = v8;
      v61 = 0;
      v62 = 0;
      v10 = [v4 decryptDataWithControllerKey:v8 totalKeysFound:&v63 deleteExtraKeys:0 allowControllerIdentifierToChange:1 controllerIdentifierChanged:0 successfulKeyUserName:&v62 error:&v61];
      v11 = v62;
      v12 = v61;
      v51 = v11;
      if (v10)
      {

        if (v63 > 1)
        {
          v52 = v4;
          v28 = [MEMORY[0x277CFEC78] systemStore];
          v59 = v12;
          v60 = 0;
          v29 = [v28 getAllAvailableControllerPublicKeys:0 secretKeys:0 userNames:&v60 error:&v59];
          v30 = v60;
          v31 = v59;

          if (v29)
          {
            v49 = v30;
            v50 = v7;
            v57 = 0u;
            v58 = 0u;
            v55 = 0u;
            v56 = 0u;
            obj = v30;
            v32 = [obj countByEnumeratingWithState:&v55 objects:v72 count:16];
            if (v32)
            {
              v33 = v32;
              v34 = *v56;
              do
              {
                for (i = 0; i != v33; ++i)
                {
                  if (*v56 != v34)
                  {
                    objc_enumerationMutation(obj);
                  }

                  v36 = *(*(&v55 + 1) + 8 * i);
                  if (([v36 isEqualToString:v11] & 1) == 0)
                  {
                    v37 = [MEMORY[0x277CFEC78] systemStore];
                    v54 = v31;
                    [v37 removeControllerKeyPairForIdentifier:v36 leaveTombstone:1 error:&v54];
                    v38 = v54;

                    v39 = objc_autoreleasePoolPush();
                    v40 = v52;
                    v41 = HMFGetOSLogHandle();
                    if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
                    {
                      v42 = HMFGetLogIdentifier();
                      v43 = HMFBooleanToString();
                      *buf = 138544130;
                      v65 = v42;
                      v66 = 2112;
                      v67 = v36;
                      v68 = 2112;
                      v69 = v43;
                      v70 = 2112;
                      v71 = v38;
                      _os_log_impl(&dword_2531F8000, v41, OS_LOG_TYPE_INFO, "%{public}@Removal of controller key-pair for identifier: %@ result in %@, error %@", buf, 0x2Au);

                      v11 = v51;
                    }

                    objc_autoreleasePoolPop(v39);
                    v31 = v38;
                  }
                }

                v33 = [obj countByEnumeratingWithState:&v55 objects:v72 count:16];
              }

              while (v33);
            }

            v30 = v49;
            v7 = v50;
          }

          else
          {
            v44 = objc_autoreleasePoolPush();
            v45 = v52;
            v46 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
            {
              v47 = HMFGetLogIdentifier();
              *buf = 138543618;
              v65 = v47;
              v66 = 2112;
              v67 = v31;
              _os_log_impl(&dword_2531F8000, v46, OS_LOG_TYPE_INFO, "%{public}@Could not get all the controller public keys: %@", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v44);
            v11 = v51;
          }

          v12 = v31;
          goto LABEL_34;
        }

        v13 = objc_autoreleasePoolPush();
        v14 = v4;
        v15 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          v16 = HMFGetLogIdentifier();
          *buf = 138543618;
          v65 = v16;
          v66 = 2048;
          v67 = v63;
          _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@There are only %tu keys in the store", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v13);
      }

      else
      {
        v21 = objc_autoreleasePoolPush();
        v22 = v4;
        v23 = v21;
        v24 = v22;
        v25 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
        {
          HMFGetLogIdentifier();
          v27 = v26 = v7;
          *buf = 138543618;
          v65 = v27;
          v66 = 2112;
          v67 = v12;
          _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_INFO, "%{public}@Failed to decrypt data: %@", buf, 0x16u);

          v7 = v26;
        }

        objc_autoreleasePoolPop(v23);
      }

      v11 = v51;
LABEL_34:
    }
  }

  else
  {
    v17 = objc_autoreleasePoolPush();
    v18 = v4;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543362;
      v65 = v20;
      _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_INFO, "%{public}@Failed to get the protected store path", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v17);
  }

  v48 = *MEMORY[0x277D85DE8];
}

+ (id)unarchiveHomeData:(id *)a3 decryptionFailed:(BOOL *)a4 successfulKeyUserName:(id *)a5
{
  v8 = objc_opt_class();

  return [v8 unarchiveHomeData:a3 decryptionFailed:a4 fromLocation:0 successfulKeyUserName:a5 forHH2Migration:0];
}

+ (BOOL)removeLegacyHomeArchive:(id *)a3
{
  v4 = [MEMORY[0x277CCAA00] defaultManager];
  v5 = configProtectedDataStorePath;
  v6 = [v4 fileExistsAtPath:v5];

  if (!v6)
  {
    return 1;
  }

  v7 = [MEMORY[0x277CCAA00] defaultManager];
  v8 = configProtectedDataStorePath;
  v9 = [v7 removeItemAtPath:v8 error:a3];

  return v9;
}

+ (BOOL)deserializeHomeData:(id *)a3 usingLocalStorage:(BOOL)a4 fromData:(id)a5 forHH2Migration:(BOOL)a6
{
  v6 = a4;
  v97[18] = *MEMORY[0x277D85DE8];
  v9 = a5;
  v10 = v9;
  isKindOfClass = 0;
  if (a3 && v9)
  {
    v82 = v6;
    *a3 = 0;
    v12 = MEMORY[0x277CBEB98];
    v97[0] = objc_opt_class();
    v97[1] = objc_opt_class();
    v97[2] = objc_opt_class();
    v97[3] = objc_opt_class();
    v97[4] = objc_opt_class();
    v97[5] = objc_opt_class();
    v97[6] = objc_opt_class();
    v97[7] = objc_opt_class();
    v97[8] = objc_opt_class();
    v97[9] = objc_opt_class();
    v97[10] = objc_opt_class();
    v97[11] = objc_opt_class();
    v97[12] = objc_opt_class();
    v97[13] = objc_opt_class();
    v97[14] = objc_opt_class();
    v97[15] = objc_opt_class();
    v97[16] = objc_opt_class();
    v97[17] = objc_opt_class();
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v97 count:18];
    v14 = [v12 setWithArray:v13];

    v89 = 0;
    v15 = [objc_alloc(MEMORY[0x277CCAAC8]) initForReadingFromData:v10 error:&v89];
    v16 = v89;
    [v15 _allowDecodingCyclesInSecureMode];
    v17 = *MEMORY[0x277CCA308];
    v88 = v16;
    v18 = [v15 decodeTopLevelObjectOfClasses:v14 forKey:v17 error:&v88];
    v19 = v88;

    if (v18)
    {
      v81 = v19;
      v20 = v18;
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if (isKindOfClass)
      {
        v21 = v20;
      }

      else
      {
        v21 = 0;
      }

      v22 = v21;

      if (isKindOfClass)
      {
        v78 = v18;
        v80 = v14;
        v23 = objc_alloc_init(HMDMutableHomeData);
        v24 = [v20 hmf_arrayForKey:@"kAccessoriesDataBlobKey"];
        [(HMDHomeData *)v23 setAccessories:v24];

        v25 = [v20 hmf_arrayForKey:@"kHomesDataBlobKey"];
        v84 = 0u;
        v85 = 0u;
        v86 = 0u;
        v87 = 0u;
        v26 = [v25 countByEnumeratingWithState:&v84 objects:v90 count:16];
        if (v26)
        {
          v27 = v26;
          v28 = *v85;
          do
          {
            for (i = 0; i != v27; ++i)
            {
              if (*v85 != v28)
              {
                objc_enumerationMutation(v25);
              }

              [*(*(&v84 + 1) + 8 * i) _removeCorruptAccessories];
            }

            v27 = [v25 countByEnumeratingWithState:&v84 objects:v90 count:16];
          }

          while (v27);
        }

        [(HMDHomeData *)v23 setHomes:v25, v78];
        v30 = [v22 hmf_UUIDForKey:@"kPrimaryHomeUUIDKey"];
        [(HMDHomeData *)v23 setPrimaryHomeUUID:v30];

        v31 = [v22 hmf_UUIDForKey:@"kLastCurrentHomeUUIDKey"];
        [(HMDHomeData *)v23 setLastCurrentHomeUUID:v31];

        if (v82)
        {
          v32 = [v22 hmf_arrayForKey:@"kUuidsOfRemovedHomesKey"];
          [(HMDHomeData *)v23 setUUIDsOfRemovedHomes:v32];

          v33 = [v22 hmf_arrayForKey:@"kIncomingHomeInvitationsKey"];
          [(HMDHomeData *)v23 setIncomingInvitations:v33];
        }

        v34 = [v22 hmf_dictionaryForKey:@"kZonesInformationKey"];
        if (v34)
        {
          [HMDCloudZoneInformation cloudZonesWithDictionary:v34];
        }

        else
        {
          [v22 hmf_arrayForKey:@"kCloudZonesInformationKey"];
        }
        v49 = ;
        [(HMDHomeData *)v23 setCloudZones:v49];

        v50 = [v22 hmf_numberForKey:@"kHomeSchemaVersionKey"];
        v51 = v50;
        if (v50)
        {
          -[HMDHomeData setSchemaVersion:](v23, "setSchemaVersion:", [v50 integerValue]);
        }

        v52 = [v22 hmf_numberForKey:@"kHomeDataVersionKey"];
        v53 = v52;
        if (v52)
        {
          -[HMDHomeData setDataVersion:](v23, "setDataVersion:", [v52 integerValue]);
        }

        v54 = [v22 hmf_numberForKey:@"kHomeRecoveryVersionKey"];
        v55 = v54;
        if (v54)
        {
          -[HMDHomeData setRecoveryVersion:](v23, "setRecoveryVersion:", [v54 integerValue]);
        }

        v56 = [v22 hmf_UUIDForKey:@"kHomeDataTagKey"];
        if (v56)
        {
          [(HMDHomeData *)v23 setDataTag:v56];
        }

        else
        {
          v57 = [MEMORY[0x277CCAD78] UUID];
          [(HMDHomeData *)v23 setDataTag:v57];
        }

        if (v82)
        {
          v58 = [v22 hmf_arrayForKey:@"HM.userManagementPendingOperationsKey"];
          if (v58)
          {
            [(HMDHomeData *)v23 setPendingUserManagementOperations:v58];
          }

          else
          {
            v59 = [v22 hmf_arrayForKey:@"kUserManagementOperationsKey"];
            [(HMDHomeData *)v23 setPendingUserManagementOperations:v59];
          }
        }

        v60 = [v22 hmf_arrayForKey:@"kUserManagementUnprocessedOperationModelsKey"];
        [(HMDHomeData *)v23 setUnprocessedOperationIdentifiers:v60];

        v61 = [v22 hmf_dictionaryForKey:@"kApplicationDataKey"];
        v62 = [HMDApplicationData alloc];
        v63 = objc_alloc(MEMORY[0x277CCAD78]);
        v64 = [v63 initWithUUIDString:*MEMORY[0x277CD23C8]];
        v65 = [(HMDApplicationData *)v62 initWithDictionary:v61 parentUUID:v64];

        [(HMDHomeData *)v23 setApplicationData:v65];
        buf[0] = 0;
        v66 = [v22 hmf_BOOLForKey:@"kResidentEnabledKey" isPresent:buf];
        v67 = 1;
        if (v66)
        {
          v67 = 2;
        }

        if (buf[0])
        {
          v68 = v67;
        }

        else
        {
          v68 = 0;
        }

        [(HMDHomeData *)v23 setResidentEnabledState:v68];
        if (v82)
        {
          v69 = [v22 objectForKey:@"HM.appleAccount"];
          [(HMDHomeData *)v23 setAccount:v69];

          v70 = [v22 hmf_arrayForKey:@"HM.remoteAccounts"];
          [(HMDHomeData *)v23 setRemoteAccounts:v70];

          v71 = [v22 objectForKey:@"HM.primaryAccountHandle"];
          [(HMDHomeData *)v23 setPrimaryAccountHandle:v71];
        }

        v72 = [v22 objectForKey:@"HM.currentDevice"];
        [(HMDHomeData *)v23 setCurrentDevice:v72];

        v73 = [v22 objectForKey:@"HM.savedReasonsKey"];
        [(HMDHomeData *)v23 setPendingReasonSaved:v73];

        buf[0] = 0;
        v74 = [v22 hmf_BOOLForKey:@"HM.accessAllowedWhenLocked" isPresent:buf];
        v18 = v79;
        v19 = v81;
        if ((buf[0] & 1) == 0)
        {
          v74 = isiOSDevice();
        }

        [(HMDHomeData *)v23 setAccessAllowedWhenLocked:v74];
        v75 = [v22 objectForKey:@"HM.demoAccessories"];
        [(HMDHomeData *)v23 setDemoAccessories:v75];

        -[HMDHomeData setDemoFinalized:](v23, "setDemoFinalized:", [v22 hmf_BOOLForKey:@"HM.demoFinalized"]);
        *a3 = [(HMDMutableHomeData *)v23 copy];

        v14 = v80;
      }

      else
      {
        v41 = objc_autoreleasePoolPush();
        v42 = a1;
        v43 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
        {
          HMFGetLogIdentifier();
          v83 = v15;
          v44 = v18;
          v46 = v45 = v14;
          v47 = objc_opt_class();
          *buf = 138543874;
          v92 = v46;
          v93 = 2112;
          v94 = v47;
          v95 = 2112;
          v96 = v20;
          v48 = v47;
          _os_log_impl(&dword_2531F8000, v43, OS_LOG_TYPE_ERROR, "%{public}@Object was not of expected class NSDictionary (class=%@): %@", buf, 0x20u);

          v14 = v45;
          v18 = v44;
          v15 = v83;
        }

        objc_autoreleasePoolPop(v41);
        v19 = v81;
      }
    }

    else
    {
      v35 = objc_autoreleasePoolPush();
      v36 = a1;
      v37 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        v38 = HMFGetLogIdentifier();
        HMFBooleanToString();
        v40 = v39 = v19;
        *buf = 138543874;
        v92 = v38;
        v93 = 2112;
        v94 = v40;
        v95 = 2112;
        v96 = v39;
        _os_log_impl(&dword_2531F8000, v37, OS_LOG_TYPE_ERROR, "%{public}@Failed to unarchive home data from keyed archive: HH2 Migration: %@ / error: %@", buf, 0x20u);

        v19 = v39;
      }

      objc_autoreleasePoolPop(v35);
      isKindOfClass = 0;
    }
  }

  v76 = *MEMORY[0x277D85DE8];
  return isKindOfClass & 1;
}

+ (BOOL)writeDictionary:(id)a3 toStorePath:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  if (!v6 || !v7)
  {
    v10 = a1;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543874;
      v21 = v12;
      v22 = 2112;
      v23 = v6;
      v24 = 2112;
      v25 = v7;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_ERROR, "%{public}@### Failed to save dictionary %@ to path %@", buf, 0x20u);
    }

    goto LABEL_10;
  }

  v19 = 0;
  v9 = [MEMORY[0x277CCAC58] dataWithPropertyList:v6 format:200 options:0 error:&v19];
  v10 = v19;
  if (!v9)
  {
    v13 = objc_autoreleasePoolPush();
    v14 = a1;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      *buf = 138544130;
      v21 = v16;
      v22 = 2112;
      v23 = v6;
      v24 = 2112;
      v25 = v7;
      v26 = 2112;
      v27 = v10;
      _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_ERROR, "%{public}@### Failed to save dictionary %@ to path %@ error %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v13);
    v9 = 0;
LABEL_10:
    v11 = 0;
    goto LABEL_11;
  }

  v11 = [v9 writeToFile:v7 atomically:1];
LABEL_11:

  objc_autoreleasePoolPop(v8);
  v17 = *MEMORY[0x277D85DE8];
  return v11;
}

+ (id)_writeData:(id)a3 toStorePath:(id)a4 dataLabel:(id)a5 createDirectoriesIfNeeded:(BOOL)a6
{
  v6 = a6;
  v55[1] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v54 = *MEMORY[0x277CCA180];
  v55[0] = &unk_286628300;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v55 forKeys:&v54 count:1];
  v14 = [MEMORY[0x277CCAA00] defaultManager];
  if (([v14 createFileAtPath:v11 contents:0 attributes:v13] & 1) == 0)
  {
    [v14 setAttributes:v13 ofItemAtPath:v11 error:0];
  }

  v45 = 0;
  v15 = [v10 writeToFile:v11 options:1073741825 error:&v45];
  v16 = v45;
  v17 = v16;
  if (v15)
  {
    goto LABEL_14;
  }

  if (!v6)
  {
LABEL_11:
    v29 = objc_autoreleasePoolPush();
    v30 = a1;
    v31 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      v32 = HMFGetLogIdentifier();
      v41 = v29;
      v33 = [v17 code];
      [v17 localizedDescription];
      v34 = v43 = v10;
      *buf = 138544130;
      v47 = v32;
      v48 = 2112;
      v49 = v12;
      v50 = 2048;
      v51 = v33;
      v29 = v41;
      v52 = 2112;
      v53 = v34;
      _os_log_impl(&dword_2531F8000, v31, OS_LOG_TYPE_DEFAULT, "%{public}@Failed to write %@: (%ld) %@", buf, 0x2Au);

      v10 = v43;
    }

    objc_autoreleasePoolPop(v29);
LABEL_14:
    v44 = 0;
    v35 = [v14 attributesOfItemAtPath:v11 error:&v44];
    v36 = v35;
    if (v35)
    {
      v37 = [v35 fileSize];
      v35 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v37];
    }

    v28 = v35;

    goto LABEL_17;
  }

  v18 = [v16 domain];
  v19 = v18;
  if (v18 != *MEMORY[0x277CCA050])
  {

    goto LABEL_11;
  }

  v20 = [v17 code];

  if (v20 != 4)
  {
    goto LABEL_11;
  }

  v21 = objc_autoreleasePoolPush();
  v22 = a1;
  v23 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v40 = HMFGetLogIdentifier();
    v42 = v21;
    v24 = [v17 code];
    v25 = [v17 localizedDescription];
    *buf = 138544130;
    v47 = v40;
    v48 = 2112;
    v49 = v12;
    v50 = 2048;
    v51 = v24;
    v21 = v42;
    v52 = 2112;
    v53 = v25;
    v26 = v25;
    _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_DEFAULT, "%{public}@Creating parent directory and trying again due to error writing %@: (%ld) %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v21);
  v27 = [v11 stringByDeletingLastPathComponent];
  createDirectory(v27);

  v28 = [v22 _writeData:v10 toStorePath:v11 dataLabel:v12 createDirectoriesIfNeeded:0];
LABEL_17:

  v38 = *MEMORY[0x277D85DE8];

  return v28;
}

+ (id)writeData:(id)a3 toStorePath:(id)a4 dataLabel:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = objc_alloc(MEMORY[0x277D0F770]);
  v13 = MEMORY[0x259C01AE0](a1, a2);
  v16 = [v12 initWithName:v13];

  v14 = [a1 _writeData:v9 toStorePath:v10 dataLabel:v11];
  __HMFActivityScopeLeave();

  return v14;
}

+ (id)readDataFromPath:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v14 = 0;
  v5 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v4 options:2 error:&v14];
  v6 = v14;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v9 = a1;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543874;
      v16 = v11;
      v17 = 2112;
      v18 = v4;
      v19 = 2112;
      v20 = v6;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to load data store from file path %@: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v8);
  }

  v12 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)unarchiveDictionaryFromData:(id)a3 allowedClasses:(id)a4 forKey:(id)a5
{
  v29[3] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = a4;
  v29[0] = objc_opt_class();
  v29[1] = objc_opt_class();
  v29[2] = objc_opt_class();
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:3];
  v12 = [v10 setByAddingObjectsFromArray:v11];

  v24 = 0;
  v13 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClasses:v12 fromData:v8 error:&v24];
  v14 = v24;
  if (v13)
  {
    v15 = [v13 objectForKey:v9];
    if (v15)
    {
      goto LABEL_9;
    }

    v16 = objc_autoreleasePoolPush();
    v17 = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543618;
      v26 = v19;
      v27 = 2112;
      v28 = v9;
      v20 = "%{public}@Key %@ not found in unarchived data";
LABEL_7:
      _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_ERROR, v20, buf, 0x16u);
    }
  }

  else
  {
    v16 = objc_autoreleasePoolPush();
    v21 = self;
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

- (id)unarchiveDictionaryWithPath:(id)a3 allowedClasses:(id)a4 forKey:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_autoreleasePoolPush();
  v12 = [objc_opt_class() readDataFromPath:v8];
  if (v12 || [0 length])
  {
    v13 = [(HMDPersistentStore *)self unarchiveDictionaryFromData:v12 allowedClasses:v9 forKey:v10];
  }

  else
  {
    v13 = 0;
  }

  objc_autoreleasePoolPop(v11);

  return v13;
}

- (id)archiveDictionary:(id)a3 withPath:(id)a4 forKey:(id)a5
{
  v32 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  context = objc_autoreleasePoolPush();
  v11 = [MEMORY[0x277CBEB38] dictionary];
  v12 = v11;
  if (v8)
  {
    [v11 setObject:v8 forKeyedSubscript:v10];
  }

  else
  {
    v13 = [MEMORY[0x277CBEB68] null];
    [v12 setObject:v13 forKeyedSubscript:v10];
  }

  v14 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v12 requiringSecureCoding:1 error:0];
  v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"archive data with path: %@", v9];
  v16 = [objc_opt_class() _writeData:v14 toStorePath:v9 dataLabel:v15];
  v17 = objc_autoreleasePoolPush();
  v18 = self;
  v19 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    HMFGetLogIdentifier();
    v24 = v8;
    v21 = v20 = v10;
    *buf = 138543874;
    v27 = v21;
    v28 = 2112;
    v29 = v15;
    v30 = 2112;
    v31 = v16;
    _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_INFO, "%{public}@HMDPersistentStore %@ with size: %@", buf, 0x20u);

    v10 = v20;
    v8 = v24;
  }

  objc_autoreleasePoolPop(v17);
  objc_autoreleasePoolPop(context);

  v22 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)writeData:(id)a3 toStorePath:(id)a4 dataLabel:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [objc_opt_class() writeData:v9 toStorePath:v8 dataLabel:v7];

  return v10;
}

@end