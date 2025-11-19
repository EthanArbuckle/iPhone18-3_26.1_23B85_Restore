@interface HMDACWGUtilities
+ (id)createGroupResolvingKey;
+ (id)createIssuerKeyV2KeychainItemWithKeyPairExternalRepresentation:(id)a3 generationCounter:(unint64_t)a4 homeUUID:(id)a5 dateProvider:(id)a6 accountIdentifier:(id)a7 idsIdentifier:(id)a8;
+ (id)createLabelFromDate:(id)a3 idsIdentifier:(id)a4;
+ (id)findWinningIssuerKeyForHomeUUID:(id)a3 withKeys:(id)a4 accountIdentifier:(id)a5;
+ (id)keyPairExternalRepresentationFromKeychainItem:(id)a3;
+ (id)keychainIdentifierForPublicKeyExternalRepresentation:(id)a3;
@end

@implementation HMDACWGUtilities

+ (id)createLabelFromDate:(id)a3 idsIdentifier:(id)a4
{
  v5 = MEMORY[0x277CCA968];
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(v5);
  [v8 setDateFormat:@"yyyyMMddHHmmss"];
  v9 = [v8 stringFromDate:v7];

  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%@_Home ACWG Issuer Key", v6, v9];

  return v10;
}

+ (id)keyPairExternalRepresentationFromKeychainItem:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 accessGroup];
  v6 = [v5 isEqualToString:@"com.apple.hap.pairing"];

  if (v6)
  {
    v7 = [v4 type];
    v8 = [v7 isEqualToNumber:&unk_283E72EA8];

    if (v8)
    {
      v9 = [v4 valueData];
      goto LABEL_10;
    }

    v10 = objc_autoreleasePoolPush();
    v11 = a1;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      v17 = 138543874;
      v18 = v13;
      v19 = 2112;
      v20 = v4;
      v21 = 2112;
      v22 = &unk_283E72EA8;
      v14 = "%{public}@Failed to create ACWG Issuer key from keychain item: %@ is not equal to: %@";
      goto LABEL_8;
    }
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    v11 = a1;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      v17 = 138543874;
      v18 = v13;
      v19 = 2112;
      v20 = v4;
      v21 = 2112;
      v22 = @"com.apple.hap.pairing";
      v14 = "%{public}@Failed to create ACWG Issuer key from keychain item: %@ access group is not equal to: %@";
LABEL_8:
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, v14, &v17, 0x20u);
    }
  }

  objc_autoreleasePoolPop(v10);
  v9 = 0;
LABEL_10:

  v15 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (id)findWinningIssuerKeyForHomeUUID:(id)a3 withKeys:(id)a4 accountIdentifier:(id)a5
{
  v51 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [MEMORY[0x277D0F7B8] internalOnlyInitializer];
  v12 = objc_autoreleasePoolPush();
  v13 = a1;
  v14 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = HMFGetLogIdentifier();
    v16 = [v11 UUID];
    *buf = 138544130;
    *&buf[4] = v15;
    *&buf[12] = 2112;
    *&buf[14] = v16;
    *&buf[22] = 2112;
    v49 = v8;
    LOWORD(v50) = 2112;
    *(&v50 + 2) = v9;
    _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, "%{public}@[NewFlow: %@ {Feature:Home Key}] Finding winning issuer key for HomeUUID: %@ for keys: %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v12);
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v49 = __Block_byref_object_copy__128851;
  *&v50 = __Block_byref_object_dispose__128852;
  *(&v50 + 1) = 0;
  v38 = 0;
  v39 = &v38;
  v40 = 0x2020000000;
  v41 = 0;
  v37[0] = 0;
  v37[1] = v37;
  v37[2] = 0x2020000000;
  v37[3] = 0;
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __79__HMDACWGUtilities_findWinningIssuerKeyForHomeUUID_withKeys_accountIdentifier___block_invoke;
  v29[3] = &unk_278679DE8;
  v36 = v13;
  v17 = v11;
  v30 = v17;
  v18 = v8;
  v31 = v18;
  v19 = v10;
  v32 = v19;
  v33 = v37;
  v34 = &v38;
  v35 = buf;
  [v9 na_each:v29];
  v20 = objc_autoreleasePoolPush();
  v21 = v13;
  v22 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
  {
    v23 = HMFGetLogIdentifier();
    v24 = [v17 UUID];
    v25 = *(*&buf[8] + 40);
    *v42 = 138543874;
    v43 = v23;
    v44 = 2112;
    v45 = v24;
    v46 = 2112;
    v47 = v25;
    _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Winning key found: %@", v42, 0x20u);
  }

  objc_autoreleasePoolPop(v20);
  v26 = objc_alloc_init(HMDWinningIssuerKeyResults);
  [(HMDWinningIssuerKeyResults *)v26 setKeychainItem:*(*&buf[8] + 40)];
  [(HMDWinningIssuerKeyResults *)v26 setHighestGeneration:v39[3]];

  _Block_object_dispose(v37, 8);
  _Block_object_dispose(&v38, 8);
  _Block_object_dispose(buf, 8);

  v27 = *MEMORY[0x277D85DE8];

  return v26;
}

void __79__HMDACWGUtilities_findWinningIssuerKeyForHomeUUID_withKeys_accountIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v73 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = MEMORY[0x277CFEC78];
  v6 = [v4 genericData];
  v7 = [v5 getDictionaryFromGenericData:v6];

  v8 = objc_alloc(MEMORY[0x277CCAD78]);
  v9 = [v7 hmf_stringForKey:@"HUUID"];
  v10 = [v8 initWithUUIDString:v9];

  v11 = [v7 hmf_stringForKey:@"AcID"];
  v12 = [v7 hmf_numberForKey:@"KV"];
  v13 = [v7 hmf_numberForKey:@"GC"];
  v14 = v13;
  if (v7 && v13 && v10 && v12 && v11)
  {
    if ([v10 isEqual:*(a1 + 40)])
    {
      v59 = v4;
      v15 = [v11 isEqual:*(a1 + 48)];
      context = objc_autoreleasePoolPush();
      v16 = *(a1 + 80);
      v17 = HMFGetOSLogHandle();
      v18 = os_log_type_enabled(v17, OS_LOG_TYPE_INFO);
      if ((v15 & 1) == 0)
      {
        if (v18)
        {
          v33 = HMFGetLogIdentifier();
          v34 = [*(a1 + 32) UUID];
          *buf = 138543874;
          v62 = v33;
          v63 = 2112;
          v64 = v34;
          v65 = 2112;
          v66 = v11;
          _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Keychain item does not belong to account requested, with key item account ID: %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(context);
        goto LABEL_19;
      }

      if (v18)
      {
        v52 = HMFGetLogIdentifier();
        v19 = [*(a1 + 32) UUID];
        v20 = *(a1 + 40);
        *buf = 138544130;
        v62 = v52;
        v63 = 2112;
        v64 = v19;
        v21 = v19;
        v65 = 2112;
        v66 = v20;
        v67 = 2112;
        v68 = v11;
        _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Keychain item belongs to home: %@ and account requested accountIdentifier: %@", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(context);
      v22 = [v12 integerValue];
      v23 = *(*(*(a1 + 56) + 8) + 24);
      v24 = [v12 integerValue];
      v25 = *(*(a1 + 56) + 8);
      if (v22 > v23)
      {
        *(v25 + 24) = v24;
        v26 = [v14 integerValue];
        v27 = *(*(a1 + 64) + 8);
LABEL_12:
        *(v27 + 24) = v26;
        objc_storeStrong((*(*(a1 + 72) + 8) + 40), a2);
LABEL_19:
        v4 = v59;
        goto LABEL_20;
      }

      v4 = v59;
      if (v24 != *(v25 + 24))
      {
        goto LABEL_20;
      }

      v36 = [v14 integerValue];
      v37 = *(*(*(a1 + 64) + 8) + 24);
      v26 = [v14 integerValue];
      v27 = *(*(a1 + 64) + 8);
      if (v36 > v37)
      {
        goto LABEL_12;
      }

      v4 = v59;
      if (v26 == *(v27 + 24))
      {
        v38 = [v59 creationDate];
        v39 = [*(*(*(a1 + 72) + 8) + 40) creationDate];
        contexta = [v38 compare:v39];

        v40 = objc_autoreleasePoolPush();
        v41 = *(a1 + 80);
        v42 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
        {
          HMFGetLogIdentifier();
          v43 = v51 = v41;
          [*(a1 + 32) UUID];
          v44 = v53 = v40;
          *buf = 138543618;
          v62 = v43;
          v63 = 2112;
          v64 = v44;
          _os_log_impl(&dword_229538000, v42, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Tie needs to be broken between creation date of two keys", buf, 0x16u);

          v40 = v53;
          v41 = v51;
        }

        objc_autoreleasePoolPop(v40);
        if (contexta)
        {
          v4 = v59;
          if (contexta != -1)
          {
            goto LABEL_20;
          }
        }

        else
        {
          v45 = [v59 account];
          v46 = [*(*(*(a1 + 72) + 8) + 40) account];
          contextc = [v45 compare:v46];

          v4 = v59;
          if (contextc != 1)
          {
            goto LABEL_20;
          }

          contextb = objc_autoreleasePoolPush();
          v47 = *(a1 + 80);
          v48 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
          {
            v54 = HMFGetLogIdentifier();
            v49 = [*(a1 + 32) UUID];
            *buf = 138543618;
            v62 = v54;
            v63 = 2112;
            v64 = v49;
            v50 = v49;
            _os_log_impl(&dword_229538000, v48, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Two keys had same date creation, breaking ties with UUID", buf, 0x16u);

            v4 = v59;
          }

          objc_autoreleasePoolPop(contextb);
        }

        objc_storeStrong((*(*(a1 + 72) + 8) + 40), a2);
      }
    }
  }

  else
  {
    v28 = objc_autoreleasePoolPush();
    v29 = *(a1 + 80);
    v30 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
    {
      HMFGetLogIdentifier();
      v31 = v60 = v4;
      v32 = [*(a1 + 32) UUID];
      *buf = 138544642;
      v62 = v31;
      v63 = 2112;
      v64 = v32;
      v65 = 2112;
      v66 = v14;
      v67 = 2112;
      v68 = v10;
      v69 = 2112;
      v70 = v12;
      v71 = 2112;
      v72 = v11;
      _os_log_impl(&dword_229538000, v30, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Keychain item missing metafield data, [gc: %@] [home UUID: %@] [key version: %@] [account ID: %@]", buf, 0x3Eu);

      v4 = v60;
    }

    objc_autoreleasePoolPop(v28);
  }

LABEL_20:

  v35 = *MEMORY[0x277D85DE8];
}

+ (id)createIssuerKeyV2KeychainItemWithKeyPairExternalRepresentation:(id)a3 generationCounter:(unint64_t)a4 homeUUID:(id)a5 dateProvider:(id)a6 accountIdentifier:(id)a7 idsIdentifier:(id)a8
{
  v49[4] = *MEMORY[0x277D85DE8];
  v14 = a3;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v48[0] = @"GC";
  v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a4];
  v49[0] = v19;
  v48[1] = @"HUUID";
  v40 = v15;
  v20 = [v15 UUIDString];
  v49[1] = v20;
  v49[2] = &unk_283E72E90;
  v48[2] = @"KV";
  v48[3] = @"AcID";
  v41 = v17;
  v49[3] = v17;
  v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v49 forKeys:v48 count:4];

  v39 = v21;
  v22 = [MEMORY[0x277CFEC78] serializeImmutableDictionary:v21];
  v23 = [HMDNIST256Utilities publicKeyExternalRepresentationFromKeyPairExternalRepresentation:v14];
  v24 = objc_alloc_init(MEMORY[0x277CFEBC8]);
  v42 = v16;
  v25 = [v16 now];
  [v24 setItemDescription:@"Per User ACWG Issuer Key synced to HomeKit locks to grant users access."];
  [v24 setAccessGroup:@"com.apple.hap.pairing"];
  [v24 setSyncable:1];
  [v24 setType:&unk_283E72EA8];
  v26 = MEMORY[0x277CFEC78];
  v27 = [v24 type];
  v28 = [v26 viewHintForType:v27];
  [v24 setViewHint:v28];

  v43 = v14;
  [v24 setValueData:v14];
  [v24 setCreationDate:v25];
  v29 = [a1 keychainIdentifierForPublicKeyExternalRepresentation:v23];
  [v24 setAccount:v29];

  v30 = v18;
  v31 = [a1 createLabelFromDate:v25 idsIdentifier:v18];
  [v24 setLabel:v31];

  [v24 setGenericData:v22];
  v32 = objc_autoreleasePoolPush();
  v33 = a1;
  v34 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
  {
    v35 = HMFGetLogIdentifier();
    v36 = [v24 account];
    *buf = 138543618;
    v45 = v35;
    v46 = 2112;
    v47 = v36;
    _os_log_impl(&dword_229538000, v34, OS_LOG_TYPE_INFO, "%{public}@Created new aliro issuer key with account identifier: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v32);
  v37 = *MEMORY[0x277D85DE8];

  return v24;
}

+ (id)keychainIdentifierForPublicKeyExternalRepresentation:(id)a3
{
  v3 = MEMORY[0x277CCAD78];
  v4 = a3;
  v5 = [[v3 alloc] initWithUUIDString:@"B52DD235-5F79-4A54-91F1-07076C605ED8"];
  v6 = [MEMORY[0x277CCAD78] hmf_UUIDWithNamespace:v5 data:v4];

  v7 = [v6 UUIDString];

  return v7;
}

+ (id)createGroupResolvingKey
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB28] dataWithLength:16];
  if (SecRandomCopyBytes(*MEMORY[0x277CDC540], [v3 length], objc_msgSend(v3, "mutableBytes")))
  {
    v4 = objc_autoreleasePoolPush();
    v5 = a1;
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = HMFGetLogIdentifier();
      v11 = 138543362;
      v12 = v7;
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_ERROR, "%{public}@Failed to generate random bytes for group resolving key", &v11, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    v8 = 0;
  }

  else
  {
    v8 = [v3 copy];
  }

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

@end