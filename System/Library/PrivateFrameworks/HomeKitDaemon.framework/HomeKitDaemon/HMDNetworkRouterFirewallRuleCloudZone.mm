@interface HMDNetworkRouterFirewallRuleCloudZone
+ (BOOL)__verifyDataFromRecord:(id)a3 signatureVerificationPublicKeys:(id)a4 dataKey:(id)a5 dataAssetKey:(id)a6 maxDataSize:(unint64_t)a7 signatureKey:(id)a8 signatureAssetKey:(id)a9 maxSignatureSize:(unint64_t)a10 baseAccessoryIdentifier:(id *)a11 data:(id *)a12 error:(id *)a13;
+ (BOOL)__verifyDigestDataAgainstSignatureFromRecord:(id)a3 digestData:(id)a4 signatureData:(id)a5 signatureVerificationPublicKeys:(id)a6 error:(id *)a7;
+ (BOOL)verifyNetworkDeclarationsFromRecord:(id)a3 signatureVerificationPublicKeys:(id)a4 baseAccessoryIdentifier:(id *)a5 data:(id *)a6 error:(id *)a7;
+ (BOOL)verifyNetworkDeclarationsFromRecord:(id)a3 signatureVerificationPublicKeys:(id)a4 error:(id *)a5;
+ (BOOL)verifyPairedMetadataFromRecord:(id)a3 signatureVerificationPublicKeys:(id)a4 error:(id *)a5;
+ (id)__calculateDigestDataFromRecord:(id)a3 dataKey:(id)a4 dataAssetKey:(id)a5 maxDataSize:(unint64_t)a6 error:(id *)a7;
+ (id)__createBaseAccessoryIdentifierFromRecord:(id)a3 error:(id *)a4;
+ (id)__getDataFromRecord:(id)a3 dataKey:(id)a4 dataAssetKey:(id)a5 maxDataSize:(unint64_t)a6 error:(id *)a7;
+ (id)__getSignatureDataFromRecord:(id)a3 signatureKey:(id)a4 signatureAssetKey:(id)a5 maxSignatureSize:(unint64_t)a6 error:(id *)a7;
+ (unint64_t)__maxSizeFromPreferenceWithKey:(id)a3 defaultValue:(unint64_t)a4;
- (BOOL)__canRecoverFromError:(id)a3 fetchInfo:(id)a4;
- (BOOL)__commitLocalChanges:(id)a3 error:(id *)a4;
- (HMDNetworkRouterFirewallRuleCloudZone)initWithCloudDatabase:(id)a3 state:(id)a4 useAnonymousRequests:(BOOL)a5 watchedRecordIDs:(id)a6 signatureVerificationPublicKeys:(id)a7;
- (NSMutableSet)uncommittedModifiedRecordIDsFromLastPull;
- (NSSet)modifiedRecordIDsFromLastPull;
- (id)attributeDescriptions;
- (id)decodeModelFrom:(id)a3 recordSource:(unint64_t)a4 error:(id *)a5;
- (id)fetchChangesWithToken:(id)a3 options:(id)a4;
- (void)__fetchZoneChangesWithFetchInfo:(id)a3;
- (void)__finalizeUpdatedRecordIDs;
- (void)__noteUpdatedRecordID:(id)a3;
- (void)__recordChanged:(id)a3 fetchInfo:(id)a4;
- (void)__recordDeleted:(id)a3 recordType:(id)a4 fetchInfo:(id)a5;
- (void)__retryFetchWithFetchInfo:(id)a3;
- (void)__zoneChangeTokensUpdated:(id)a3 fetchInfo:(id)a4;
- (void)__zoneChangesCompleted:(id)a3 fetchInfo:(id)a4;
- (void)setModifiedRecordIDsFromLastPull:(id)a3;
- (void)setUncommittedModifiedRecordIDsFromLastPull:(id)a3;
- (void)startUpWithLocalZone:(id)a3;
@end

@implementation HMDNetworkRouterFirewallRuleCloudZone

- (id)decodeModelFrom:(id)a3 recordSource:(unint64_t)a4 error:(id *)a5
{
  v92 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = objc_opt_class();
  v9 = [(HMDNetworkRouterFirewallRuleCloudZone *)self signatureVerificationPublicKeys];
  v82 = 0;
  v83 = 0;
  LODWORD(v8) = [v8 verifyNetworkDeclarationsFromRecord:v7 signatureVerificationPublicKeys:v9 baseAccessoryIdentifier:&v83 data:&v82 error:a5];
  v10 = v83;
  v11 = v82;

  if (!v8)
  {
    v13 = objc_autoreleasePoolPush();
    v14 = objc_opt_class();
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      HMFGetLogIdentifier();
      v16 = v65 = v10;
      [v7 recordID];
      v72 = v7;
      v17 = v76 = v11;
      v18 = [v17 zoneID];
      [v18 zoneName];
      v20 = v19 = a5;
      [v72 recordID];
      v21 = v68 = v13;
      v22 = [v21 recordName];
      v23 = *v19;
      *buf = 138544130;
      v85 = v16;
      v86 = 2112;
      v87 = v20;
      v88 = 2112;
      v89 = v22;
      v90 = 2112;
      v91 = v23;
      _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_ERROR, "%{public}@Signature verification of fetched network declarations failed for record %@/%@ with error %@", buf, 0x2Au);

      v13 = v68;
      a5 = v19;

      v7 = v72;
      v11 = v76;

      v10 = v65;
    }

    objc_autoreleasePoolPop(v13);
LABEL_7:
    v24 = objc_opt_class();
    v25 = [(HMDNetworkRouterFirewallRuleCloudZone *)self signatureVerificationPublicKeys];
    v26 = [objc_opt_class() __maxSizeForCKRecordPairedMetadata];
    v80 = 0;
    v81 = v10;
    LODWORD(v24) = [v24 __verifyDataFromRecord:v7 signatureVerificationPublicKeys:v25 dataKey:@"CD_pairedMetadata" dataAssetKey:@"CD_pairedMetadata_ckAsset" maxDataSize:v26 signatureKey:@"CD_pairedMetadataSignature" signatureAssetKey:@"CD_pairedMetadataSignature_ckAsset" maxSignatureSize:objc_msgSend(objc_opt_class() baseAccessoryIdentifier:"__maxSizeForCKRecordPairedMetadataSignature") data:&v81 error:{&v80, a5}];
    v27 = v81;

    v28 = v80;
    if (v24)
    {
      v29 = [[HMDCloudPairedMetadata alloc] initWithBaseAccessoryIdentifier:v27 data:v28];
      if (!v29)
      {
        v52 = objc_autoreleasePoolPush();
        v53 = objc_opt_class();
        v54 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
        {
          HMFGetLogIdentifier();
          v55 = v79 = v11;
          [v7 recordID];
          v56 = v67 = v52;
          [v56 zoneID];
          v75 = v27;
          v58 = v57 = v7;
          v59 = [v58 zoneName];
          [v57 recordID];
          v60 = v71 = a5;
          v61 = [v60 recordName];
          *buf = 138543874;
          v85 = v55;
          v86 = 2112;
          v87 = v59;
          v88 = 2112;
          v89 = v61;
          _os_log_impl(&dword_229538000, v54, OS_LOG_TYPE_ERROR, "%{public}@Fetched Paired metadata failed to parse for record %@/%@", buf, 0x20u);

          a5 = v71;
          v7 = v57;
          v27 = v75;

          v52 = v67;
          v11 = v79;
        }

        objc_autoreleasePoolPop(v52);
        if (a5)
        {
          [MEMORY[0x277CCA9B8] hmErrorWithCode:43];
          *a5 = v41 = 0;
          goto LABEL_24;
        }

LABEL_23:
        v41 = 0;
        goto LABEL_24;
      }
    }

    else
    {
      v77 = v11;
      v30 = objc_autoreleasePoolPush();
      v31 = objc_opt_class();
      v32 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        v33 = HMFGetLogIdentifier();
        v66 = [v7 recordID];
        v64 = [v66 zoneID];
        [v64 zoneName];
        v34 = v69 = v30;
        v35 = [v7 recordID];
        [v35 recordName];
        v36 = v73 = v27;
        v37 = *a5;
        *buf = 138544130;
        v85 = v33;
        v86 = 2112;
        v87 = v34;
        v88 = 2112;
        v89 = v36;
        v90 = 2112;
        v91 = v37;
        _os_log_impl(&dword_229538000, v32, OS_LOG_TYPE_ERROR, "%{public}@Signature verification of fetched Paired metadata failed for record %@/%@ with error %@", buf, 0x2Au);

        v27 = v73;
        v30 = v69;
      }

      objc_autoreleasePoolPop(v30);
      v11 = v77;
    }

    if (v11 | v28)
    {
      v38 = [HMDNetworkRouterFirewallRuleManagerBackingStoreCloudAccessoryModel alloc];
      v39 = [(HMBCloudZone *)self cloudZoneID];
      v40 = [v7 recordID];
      v41 = [(HMDNetworkRouterFirewallRuleManagerBackingStoreCloudAccessoryModel *)v38 initWithCloudZoneID:v39 recordID:v40 networkDeclarationsData:v11 pairedMetadataData:v28];

LABEL_24:
      goto LABEL_25;
    }

    goto LABEL_23;
  }

  v12 = [[HMDNetworkRouterFirewallRuleCloudNetworkDeclarations alloc] initWithBaseAccessoryIdentifier:v10 data:v11];
  if (v12)
  {

    goto LABEL_7;
  }

  v42 = objc_autoreleasePoolPush();
  v43 = objc_opt_class();
  v44 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
  {
    v45 = HMFGetLogIdentifier();
    [v7 recordID];
    v46 = v74 = v42;
    [v46 zoneID];
    v70 = a5;
    v47 = v78 = v11;
    [v47 zoneName];
    v49 = v48 = v7;
    v50 = [v48 recordID];
    v51 = [v50 recordName];
    *buf = 138543874;
    v85 = v45;
    v86 = 2112;
    v87 = v49;
    v88 = 2112;
    v89 = v51;
    _os_log_impl(&dword_229538000, v44, OS_LOG_TYPE_ERROR, "%{public}@Fetched network declarations failed to parse for record %@/%@", buf, 0x20u);

    v7 = v48;
    v11 = v78;
    a5 = v70;

    v42 = v74;
  }

  objc_autoreleasePoolPop(v42);
  if (a5)
  {
    [MEMORY[0x277CCA9B8] hmErrorWithCode:43];
    *a5 = v41 = 0;
  }

  else
  {
    v41 = 0;
  }

  v27 = v10;
LABEL_25:

  v62 = *MEMORY[0x277D85DE8];

  return v41;
}

+ (BOOL)verifyPairedMetadataFromRecord:(id)a3 signatureVerificationPublicKeys:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = a3;
  v11 = 0;
  v12 = 0;
  LOBYTE(a5) = [a1 __verifyDataFromRecord:v9 signatureVerificationPublicKeys:v8 dataKey:@"CD_pairedMetadata" dataAssetKey:@"CD_pairedMetadata_ckAsset" maxDataSize:objc_msgSend(a1 signatureKey:"__maxSizeForCKRecordPairedMetadata") signatureAssetKey:@"CD_pairedMetadataSignature" maxSignatureSize:@"CD_pairedMetadataSignature_ckAsset" baseAccessoryIdentifier:objc_msgSend(a1 data:"__maxSizeForCKRecordPairedMetadataSignature") error:{&v12, &v11, a5}];

  return a5;
}

+ (BOOL)verifyNetworkDeclarationsFromRecord:(id)a3 signatureVerificationPublicKeys:(id)a4 error:(id *)a5
{
  v7 = 0;
  v8 = 0;
  v5 = [a1 verifyNetworkDeclarationsFromRecord:a3 signatureVerificationPublicKeys:a4 baseAccessoryIdentifier:&v8 data:&v7 error:a5];

  return v5;
}

+ (BOOL)verifyNetworkDeclarationsFromRecord:(id)a3 signatureVerificationPublicKeys:(id)a4 baseAccessoryIdentifier:(id *)a5 data:(id *)a6 error:(id *)a7
{
  v12 = a4;
  v13 = a3;
  LOBYTE(a7) = [a1 __verifyDataFromRecord:v13 signatureVerificationPublicKeys:v12 dataKey:@"CD_networkDeclarations" dataAssetKey:@"CD_networkDeclarations_ckAsset" maxDataSize:objc_msgSend(a1 signatureKey:"__maxSizeForCKRecordNetworkDeclarations") signatureAssetKey:@"CD_networkDeclarationsSignature" maxSignatureSize:@"CD_networkDeclarationsSignature_ckAsset" baseAccessoryIdentifier:objc_msgSend(a1 data:"__maxSizeForCKRecordNetworkDeclarationsSignature") error:{a5, a6, a7}];

  return a7;
}

+ (BOOL)__verifyDataFromRecord:(id)a3 signatureVerificationPublicKeys:(id)a4 dataKey:(id)a5 dataAssetKey:(id)a6 maxDataSize:(unint64_t)a7 signatureKey:(id)a8 signatureAssetKey:(id)a9 maxSignatureSize:(unint64_t)a10 baseAccessoryIdentifier:(id *)a11 data:(id *)a12 error:(id *)a13
{
  v18 = a3;
  v19 = a4;
  v20 = a5;
  v21 = a6;
  v22 = a8;
  v23 = a9;
  v24 = [a1 __createBaseAccessoryIdentifierFromRecord:v18 error:a13];
  if (v24)
  {
    v33 = v23;
    v25 = v20;
    v26 = [a1 __calculateDigestDataFromRecord:v18 dataKey:v20 dataAssetKey:v21 maxDataSize:a7 error:a13];
    if (v26)
    {
      v32 = v19;
      v27 = [a1 __getSignatureDataFromRecord:v18 signatureKey:v22 signatureAssetKey:v33 maxSignatureSize:a10 error:a13];
      if (v27 && [a1 __verifyDigestDataAgainstSignatureFromRecord:v18 digestData:v26 signatureData:v27 signatureVerificationPublicKeys:v32 error:a13] && (objc_msgSend(a1, "__getDataFromRecord:dataKey:dataAssetKey:maxDataSize:error:", v18, v20, v21, a7, a13), v28 = objc_claimAutoreleasedReturnValue(), (*a12 = v28) != 0))
      {
        v29 = v24;
        *a11 = v24;
        v30 = 1;
      }

      else
      {
        v30 = 0;
      }

      v19 = v32;
    }

    else
    {
      v30 = 0;
    }

    v23 = v33;
  }

  else
  {
    v30 = 0;
    v25 = v20;
  }

  return v30;
}

+ (id)__getDataFromRecord:(id)a3 dataKey:(id)a4 dataAssetKey:(id)a5 maxDataSize:(unint64_t)a6 error:(id *)a7
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (!v12 || (readDataFromCKRecordOptionalAssetField(v10), (v13 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v13 = dataFromCKRecordRequiredField(v10, v11, a7);
  }

  return v13;
}

+ (BOOL)__verifyDigestDataAgainstSignatureFromRecord:(id)a3 digestData:(id)a4 signatureData:(id)a5 signatureVerificationPublicKeys:(id)a6 error:(id *)a7
{
  v44 = *MEMORY[0x277D85DE8];
  v33 = a3;
  v10 = a4;
  v11 = a5;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v12 = a6;
  v13 = [v12 countByEnumeratingWithState:&v34 objects:v43 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = 0;
    v16 = *v35;
    v17 = *MEMORY[0x277CDC2B8];
    while (2)
    {
      v18 = 0;
      v19 = v15;
      do
      {
        if (*v35 != v16)
        {
          objc_enumerationMutation(v12);
        }

        v20 = *(*(&v34 + 1) + 8 * v18);
        *error = 0;
        v21 = SecKeyVerifySignature(v20, v17, v10, v11, error);
        v15 = *error;

        if (v21)
        {

          v22 = 1;
          goto LABEL_17;
        }

        ++v18;
        v19 = v15;
      }

      while (v14 != v18);
      v14 = [v12 countByEnumeratingWithState:&v34 objects:v43 count:16];
      if (v14)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v15 = 0;
  }

  v23 = objc_autoreleasePoolPush();
  v24 = a1;
  v25 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    v26 = HMFGetLogIdentifier();
    v27 = [v33 recordID];
    v28 = [v27 hmbDescription];
    *error = 138543874;
    *&error[4] = v26;
    v39 = 2112;
    v40 = v28;
    v41 = 2112;
    v42 = v15;
    _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_ERROR, "%{public}@Digest does not match signature on record %@: %@", error, 0x20u);
  }

  objc_autoreleasePoolPop(v23);
  if (a7)
  {
    [MEMORY[0x277CCA9B8] hmErrorWithCode:53];
    *a7 = v22 = 0;
  }

  else
  {
    v22 = 0;
  }

LABEL_17:

  v29 = *MEMORY[0x277D85DE8];
  return v22;
}

+ (id)__getSignatureDataFromRecord:(id)a3 signatureKey:(id)a4 signatureAssetKey:(id)a5 maxSignatureSize:(unint64_t)a6 error:(id *)a7
{
  v8 = stringFromCKRecord(a3, a4, a5, a6, a7);
  if (v8)
  {
    v9 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:v8 options:0];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else if (a7)
    {
      *a7 = [MEMORY[0x277CCA9B8] hmErrorWithCode:53];
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)__calculateDigestDataFromRecord:(id)a3 dataKey:(id)a4 dataAssetKey:(id)a5 maxDataSize:(unint64_t)a6 error:(id *)a7
{
  v7 = MEMORY[0x28223BE20](a1);
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = v7;
  v98[2] = *MEMORY[0x277D85DE8];
  v18 = v17;
  v19 = v15;
  v20 = v13;
  v21 = v18;
  v22 = v19;
  v23 = v20;
  if (v23)
  {
    v24 = filePathFromCKRecordOptionalAssetField(v21, v23);
    v25 = v24;
    if (v24)
    {
      v26 = createInputStreamWithFilePath(v24, v9);
      if (v26)
      {
        v27 = v26;
        goto LABEL_15;
      }
    }
  }

  v25 = dataFromCKRecordRequiredField(v21, v22, v9);
  if (v25)
  {
    v28 = [MEMORY[0x277CBEAE0] inputStreamWithData:v25];
    v27 = v28;
    if (v28)
    {
      v29 = v28;
    }

    else
    {
      v76 = v16;
      v80 = v9;
      v30 = objc_autoreleasePoolPush();
      v31 = objc_opt_class();
      v32 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        v33 = HMFGetLogIdentifier();
        *buf = 138543618;
        v94 = v33;
        v95 = 2112;
        v96 = v25;
        _os_log_impl(&dword_229538000, v32, OS_LOG_TYPE_ERROR, "%{public}@Failed to create input stream with data: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v30);
      v16 = v76;
      v9 = v80;
      if (v80)
      {
        *v80 = [MEMORY[0x277CCA9B8] hmErrorWithCode:52];
      }
    }
  }

  else
  {
    v27 = 0;
  }

LABEL_15:

  if (!v27)
  {
    v52 = 0;
    goto LABEL_53;
  }

  v77 = v16;
  v81 = v9;
  v75 = v22;
  v34 = [v21 recordID];
  v35 = [v34 zoneID];
  v36 = [v35 zoneName];
  v98[0] = v36;
  v74 = v34;
  v37 = [v34 recordName];
  v98[1] = v37;
  v38 = [MEMORY[0x277CBEA60] arrayWithObjects:v98 count:2];

  memset(&c, 0, sizeof(c));
  CC_SHA256_Init(&c);
  v82 = 0u;
  v83 = 0u;
  v84 = 0u;
  v85 = 0u;
  v39 = v38;
  v40 = [v39 countByEnumeratingWithState:&v82 objects:v97 count:16];
  if (v40)
  {
    v41 = v40;
    v42 = *v83;
    do
    {
      for (i = 0; i != v41; ++i)
      {
        if (*v83 != v42)
        {
          objc_enumerationMutation(v39);
        }

        v44 = [*(*(&v82 + 1) + 8 * i) dataUsingEncoding:4];
        CC_SHA256_Update(&c, [v44 bytes], objc_msgSend(v44, "length"));
      }

      v41 = [v39 countByEnumeratingWithState:&v82 objects:v97 count:16];
    }

    while (v41);
  }

  [v27 open];
  v45 = [v27 read:buf maxLength:4096];
  if (v45 < 1)
  {
LABEL_32:
    [v27 close];
    if ((v45 & 0x8000000000000000) == 0)
    {
      v50 = [MEMORY[0x277CBEB28] dataWithLength:32];
      v51 = v50;
      v22 = v75;
      if (v50)
      {
        CC_SHA256_Final([v50 mutableBytes], &c);
        v52 = [v51 copy];
      }

      else
      {
        v67 = objc_autoreleasePoolPush();
        v68 = v77;
        v69 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
        {
          v70 = HMFGetLogIdentifier();
          *v87 = 138543618;
          v88 = v70;
          v89 = 2048;
          v90 = 32;
          _os_log_impl(&dword_229538000, v69, OS_LOG_TYPE_ERROR, "%{public}@Failed to allocate %lu bytes to hold digest", v87, 0x16u);
        }

        objc_autoreleasePoolPop(v67);
        if (v81)
        {
          [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
          *v81 = v52 = 0;
        }

        else
        {
          v52 = 0;
        }
      }

      goto LABEL_52;
    }

    v61 = objc_autoreleasePoolPush();
    v62 = v77;
    v63 = HMFGetOSLogHandle();
    v22 = v75;
    if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
    {
      v64 = HMFGetLogIdentifier();
      v73 = [v21 recordID];
      v65 = [v73 hmbDescription];
      [v27 streamError];
      v66 = v79 = v61;
      *v87 = 138543874;
      v88 = v64;
      v89 = 2112;
      v90 = v65;
      v91 = 2112;
      v92 = v66;
      _os_log_impl(&dword_229538000, v63, OS_LOG_TYPE_ERROR, "%{public}@Error reading data from record %@: %@", v87, 0x20u);

      v61 = v79;
    }

    objc_autoreleasePoolPop(v61);
    v59 = v81;
    if (v81)
    {
      v60 = [v27 streamError];
      goto LABEL_44;
    }

LABEL_45:
    v52 = 0;
    goto LABEL_52;
  }

  v46 = 0;
  while (1)
  {
    v47 = __CFADD__(v45, v46);
    v46 += v45;
    v48 = v47;
    v49 = v48 << 63 >> 63;
    if (v49 != v48 || v49 < 0 || v46 > v11)
    {
      break;
    }

    CC_SHA256_Update(&c, buf, v45);
    v45 = [v27 read:buf maxLength:4096];
    if (v45 <= 0)
    {
      goto LABEL_32;
    }
  }

  [v27 close];
  v53 = objc_autoreleasePoolPush();
  v54 = v77;
  v55 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
  {
    HMFGetLogIdentifier();
    v56 = v78 = v53;
    v57 = [v21 recordID];
    v58 = [v57 hmbDescription];
    *v87 = 138543874;
    v88 = v56;
    v89 = 2048;
    v90 = v11;
    v91 = 2112;
    v92 = v58;
    _os_log_impl(&dword_229538000, v55, OS_LOG_TYPE_ERROR, "%{public}@Data size is bigger than maximum %ld bytes on record %@", v87, 0x20u);

    v53 = v78;
  }

  objc_autoreleasePoolPop(v53);
  v22 = v75;
  v59 = v81;
  if (!v81)
  {
    goto LABEL_45;
  }

  v60 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
LABEL_44:
  v52 = 0;
  *v59 = v60;
LABEL_52:

LABEL_53:
  v71 = *MEMORY[0x277D85DE8];

  return v52;
}

+ (id)__createBaseAccessoryIdentifierFromRecord:(id)a3 error:(id *)a4
{
  v44 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = stringFromCKRecord(v6, @"CD_productGroup", @"CD_productGroup_ckAsset", [a1 __maxSizeForCKRecordString], a4);
  if (!v7)
  {
    v19 = 0;
    goto LABEL_20;
  }

  v8 = stringFromCKRecord(v6, @"CD_productNumber", @"CD_productNumber_ckAsset", [a1 __maxSizeForCKRecordString], a4);
  if (v8)
  {
    v34 = a4;
    v35 = v8;
    v9 = [[HMDNetworkRouterFirewallRuleAccessoryIdentifier alloc] initWithProductGroup:v7 productNumber:v8 firmwareVersion:0];
    v10 = [(HMDNetworkRouterFirewallRuleAccessoryIdentifier *)v9 cloudKitZoneName];
    v11 = [v6 recordID];
    v12 = [v11 zoneID];
    v13 = [v12 zoneName];
    v14 = [v10 isEqualToString:v13];

    if (v14)
    {
      v15 = [(HMDNetworkRouterFirewallRuleAccessoryIdentifier *)v9 cloudKitRecordName];
      v16 = [v6 recordID];
      v17 = [v16 recordName];
      v18 = [v15 isEqualToString:v17];

      if ((v18 & 1) == 0)
      {
        v26 = objc_autoreleasePoolPush();
        v27 = a1;
        v28 = HMFGetOSLogHandle();
        v8 = v35;
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          v29 = HMFGetLogIdentifier();
          v30 = [v6 recordID];
          v31 = [v30 hmbDescription];
          *buf = 138544130;
          v37 = v29;
          v38 = 2112;
          v39 = @"CD_productNumber";
          v40 = 2112;
          v41 = v35;
          v42 = 2112;
          v43 = v31;
          _os_log_impl(&dword_229538000, v28, OS_LOG_TYPE_ERROR, "%{public}@'%@' field value '%@' does not match record name on %@", buf, 0x2Au);
        }

        objc_autoreleasePoolPop(v26);
        if (v34)
        {
          [MEMORY[0x277CCA9B8] hmErrorWithCode:53];
          *v34 = v19 = 0;
        }

        else
        {
          v19 = 0;
        }

        goto LABEL_18;
      }

      v19 = v9;
    }

    else
    {
      v20 = objc_autoreleasePoolPush();
      v21 = a1;
      v22 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v23 = HMFGetLogIdentifier();
        v24 = [v6 recordID];
        v25 = [v24 hmbDescription];
        *buf = 138544130;
        v37 = v23;
        v38 = 2112;
        v39 = @"CD_productGroup";
        v40 = 2112;
        v41 = v7;
        v42 = 2112;
        v43 = v25;
        _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_ERROR, "%{public}@'%@' field value '%@' does not match zone name on %@", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v20);
      if (v34)
      {
        [MEMORY[0x277CCA9B8] hmErrorWithCode:53];
        *v34 = v19 = 0;
      }

      else
      {
        v19 = 0;
      }
    }

    v8 = v35;
LABEL_18:

    goto LABEL_19;
  }

  v19 = 0;
LABEL_19:

LABEL_20:
  v32 = *MEMORY[0x277D85DE8];

  return v19;
}

+ (unint64_t)__maxSizeFromPreferenceWithKey:(id)a3 defaultValue:(unint64_t)a4
{
  v5 = a3;
  if (isInternalBuild())
  {
    v6 = [MEMORY[0x277D0F8D0] sharedPreferences];
    v7 = [v6 preferenceForKey:v5];

    v8 = [v7 numberValue];

    if (v8)
    {
      v9 = [v7 numberValue];
      a4 = [v9 unsignedIntegerValue];
    }
  }

  return a4;
}

- (void)__retryFetchWithFetchInfo:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [v4 retryIntervalSeconds];
  v6 = v5;
  [v4 retryIntervalSeconds];
  v8 = dispatch_time(0, (v7 * 1000000000.0));
  v9 = dispatch_get_global_queue(0, 0);
  v10 = [v4 activity];
  if (v6 <= 0.0)
  {
    v11 = "fetch the next batch of records";
  }

  else
  {
    v11 = "retry the fetch";
  }

  [v4 retryIntervalSeconds];
  [v10 markWithFormat:@"Will %s in %lu seconds", v11, v12];

  v13 = objc_autoreleasePoolPush();
  v14 = self;
  v15 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = HMFGetLogIdentifier();
    [v4 retryIntervalSeconds];
    *buf = 138543874;
    v25 = v16;
    v26 = 2080;
    v27 = v11;
    v28 = 2048;
    v29 = v17;
    _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@Will %s in %lu seconds", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v13);
  [v4 setShouldRetry:0];
  [v4 setRetryCount:{objc_msgSend(v4, "retryCount") + 1}];
  objc_initWeak(buf, v14);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__HMDNetworkRouterFirewallRuleCloudZone___retryFetchWithFetchInfo___block_invoke;
  block[3] = &unk_278681A08;
  v21 = v4;
  v18 = v4;
  objc_copyWeak(&v22, buf);
  v23 = v6 > 0.0;
  dispatch_after(v8, v9, block);
  objc_destroyWeak(&v22);

  objc_destroyWeak(buf);
  v19 = *MEMORY[0x277D85DE8];
}

void __67__HMDNetworkRouterFirewallRuleCloudZone___retryFetchWithFetchInfo___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) activity];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __67__HMDNetworkRouterFirewallRuleCloudZone___retryFetchWithFetchInfo___block_invoke_2;
  v3[3] = &unk_278681A08;
  objc_copyWeak(&v5, (a1 + 40));
  v4 = *(a1 + 32);
  v6 = *(a1 + 48);
  [v2 performBlock:v3];

  objc_destroyWeak(&v5);
}

void __67__HMDNetworkRouterFirewallRuleCloudZone___retryFetchWithFetchInfo___block_invoke_2(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = [*(a1 + 32) activity];
    if (*(a1 + 48))
    {
      v4 = "Retrying";
    }

    else
    {
      v4 = "Fetching the next batch of records";
    }

    v5 = [*(a1 + 32) changeToken];
    v6 = [v5 hmbDescription];
    [v3 markWithFormat:@"%s, token: %@", v4, v6];

    v7 = objc_autoreleasePoolPush();
    v8 = WeakRetained;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = HMFGetLogIdentifier();
      if (*(a1 + 48))
      {
        v11 = "Retrying";
      }

      else
      {
        v11 = "Fetching the next batch of records";
      }

      v12 = [*(a1 + 32) changeToken];
      v13 = [v12 hmbDescription];
      *buf = 138543874;
      v17 = v10;
      v18 = 2080;
      v19 = v11;
      v20 = 2112;
      v21 = v13;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@%s, token: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
    [v8 __fetchZoneChangesWithFetchInfo:*(a1 + 32)];
  }

  else
  {
    v14 = [MEMORY[0x277CCA9B8] hmErrorWithCode:23];
    [*(a1 + 32) finishWithError:v14];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (BOOL)__canRecoverFromError:(id)a3 fetchInfo:(id)a4
{
  v38 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ([v6 hmbIsCKPartialFailureError])
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v35 = __Block_byref_object_copy__213133;
    v36 = __Block_byref_object_dispose__213134;
    v37 = 0;
    v8 = [v6 userInfo];
    v9 = [v8 objectForKeyedSubscript:*MEMORY[0x277CBBFB0]];
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __73__HMDNetworkRouterFirewallRuleCloudZone___canRecoverFromError_fetchInfo___block_invoke;
    v33[3] = &unk_2786809E8;
    v33[4] = self;
    v33[5] = buf;
    [v9 enumerateKeysAndObjectsUsingBlock:v33];

    v10 = *(*&buf[8] + 40);
    if (v10)
    {
      v11 = v10;

      v6 = v11;
    }

    _Block_object_dispose(buf, 8);

    if (!v10)
    {
      goto LABEL_7;
    }
  }

  if (![v6 hmd_isCKError] || (objc_msgSend(v6, "hmd_isNonRecoverableCKError") & 1) != 0)
  {
    goto LABEL_7;
  }

  v15 = [v6 code];
  switch(v15)
  {
    case 21:
      v26 = [v7 activity];
      [v26 markWithFormat:@"Change token has expired: %@", v6];

      v27 = objc_autoreleasePoolPush();
      v28 = self;
      v29 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        v30 = HMFGetLogIdentifier();
        *buf = 138543618;
        *&buf[4] = v30;
        *&buf[12] = 2112;
        *&buf[14] = v6;
        _os_log_impl(&dword_229538000, v29, OS_LOG_TYPE_DEFAULT, "%{public}@Change token has expired: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v27);
      [v7 setChangeToken:0];
      [v7 setShouldRetry:1];
      goto LABEL_25;
    case 28:
      v21 = [v7 activity];
      [v21 markWithFormat:@"Zone was deleted: %@", v6];

      v22 = objc_autoreleasePoolPush();
      v23 = self;
      v24 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v25 = HMFGetLogIdentifier();
        *buf = 138543618;
        *&buf[4] = v25;
        *&buf[12] = 2112;
        *&buf[14] = v6;
        _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_DEFAULT, "%{public}@Zone was deleted: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v22);
      [(HMBCloudZone *)v23 handleDeletion];
      goto LABEL_25;
    case 26:
      v16 = [v7 activity];
      [v16 markWithFormat:@"Zone does not exist: %@", v6];

      v17 = objc_autoreleasePoolPush();
      v18 = self;
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = HMFGetLogIdentifier();
        *buf = 138543618;
        *&buf[4] = v20;
        *&buf[12] = 2112;
        *&buf[14] = v6;
        _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@Zone does not exist: %@", buf, 0x16u);
      }

LABEL_24:

      objc_autoreleasePoolPop(v17);
LABEL_25:
      v12 = 1;
      goto LABEL_8;
  }

  [v6 hmbCloudKitRetryDelay];
  [v7 setRetryIntervalSeconds:?];
  if ([v7 shouldRetry])
  {
    v31 = [v7 activity];
    [v31 markWithFormat:@"Ignoring non-fatal error: %@", v6];

    v17 = objc_autoreleasePoolPush();
    v18 = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v32 = HMFGetLogIdentifier();
      *buf = 138543618;
      *&buf[4] = v32;
      *&buf[12] = 2112;
      *&buf[14] = v6;
      _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_INFO, "%{public}@Ignoring non-fatal error: %@", buf, 0x16u);
    }

    goto LABEL_24;
  }

LABEL_7:
  v12 = 0;
LABEL_8:

  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

void __73__HMDNetworkRouterFirewallRuleCloudZone___canRecoverFromError_fetchInfo___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v19 = a2;
  v7 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v19;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  v10 = v7;
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

  if (v9)
  {
    v13 = v12 == 0;
  }

  else
  {
    v13 = 1;
  }

  if (v13 || ([*(a1 + 32) cloudZoneID], v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v14, "zoneID"), v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v9, "isEqual:", v15), v15, v14, (v16 & 1) == 0))
  {
    v17 = *(*(a1 + 40) + 8);
    v18 = *(v17 + 40);
    *(v17 + 40) = 0;

    *a4 = 1;
  }

  else
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), v11);
  }
}

- (BOOL)__commitLocalChanges:(id)a3 error:(id *)a4
{
  v63 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [v6 activity];
  [v7 markWithFormat:@"Committing local changes"];

  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543362;
    v60 = v11;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Committing local changes", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v8);
  v12 = [v6 mirrorInput];
  v13 = [v6 options];
  v14 = [v12 frmSyncCommitWithOptions:v13 error:a4];

  v15 = [v6 activity];
  v16 = v15;
  if ((v14 & 1) == 0)
  {
    [v15 markWithFormat:@"Failed to commit: %@", *a4];

    v37 = objc_autoreleasePoolPush();
    v38 = v9;
    v39 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      v40 = HMFGetLogIdentifier();
      v41 = *a4;
      *buf = 138543618;
      v60 = v40;
      v61 = 2112;
      v62 = v41;
      _os_log_impl(&dword_229538000, v39, OS_LOG_TYPE_ERROR, "%{public}@Failed to commit: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v37);
    LOBYTE(v42) = 0;
    goto LABEL_21;
  }

  [v15 markWithFormat:@"Committed successfully"];

  v17 = objc_autoreleasePoolPush();
  v18 = v9;
  v19 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = HMFGetLogIdentifier();
    *buf = 138543362;
    v60 = v20;
    _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@Committed successfully", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v17);
  v21 = [v6 originalChangeToken];
  v22 = [v6 changeToken];
  v23 = HMFEqualObjects();

  v24 = [v6 activity];
  v25 = [v6 changeToken];
  v26 = [v25 hmbDescription];
  v27 = v26;
  if (!v23)
  {
    [v24 markWithFormat:@"Updating change token: %@", v26];

    v43 = objc_autoreleasePoolPush();
    v44 = v18;
    v45 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
    {
      v46 = HMFGetLogIdentifier();
      v47 = [v6 changeToken];
      v48 = [v47 hmbDescription];
      *buf = 138543618;
      v60 = v46;
      v61 = 2112;
      v62 = v48;
      _os_log_impl(&dword_229538000, v45, OS_LOG_TYPE_INFO, "%{public}@Updating change token: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v43);
    v49 = [(HMBCloudZone *)v44 cloudDatabase];
    v50 = [v6 changeToken];
    v51 = [(HMBCloudZone *)v44 cloudZoneID];
    [v49 updateServerChangeToken:v50 forZoneWithID:v51];

    v52 = [v6 activity];
    v53 = [v6 changeToken];
    v54 = [v53 hmbDescription];
    [v52 markWithFormat:@"Updated change token successfully: %@", v54];

    v28 = objc_autoreleasePoolPush();
    v55 = v44;
    v30 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
    {
      goto LABEL_17;
    }

    v31 = HMFGetLogIdentifier();
    v32 = [v6 changeToken];
    v33 = [v32 hmbDescription];
    *buf = 138543618;
    v60 = v31;
    v61 = 2112;
    v62 = v33;
    v34 = "%{public}@Updated change token successfully: %@";
    v35 = v30;
    v36 = OS_LOG_TYPE_INFO;
    goto LABEL_16;
  }

  [v24 markWithFormat:@"Change token does not need to be updated: %@", v26];

  v28 = objc_autoreleasePoolPush();
  v29 = v18;
  v30 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    v31 = HMFGetLogIdentifier();
    v32 = [v6 changeToken];
    v33 = [v32 hmbDescription];
    *buf = 138543618;
    v60 = v31;
    v61 = 2112;
    v62 = v33;
    v34 = "%{public}@Change token does not need to be updated: %@";
    v35 = v30;
    v36 = OS_LOG_TYPE_DEFAULT;
LABEL_16:
    _os_log_impl(&dword_229538000, v35, v36, v34, buf, 0x16u);
  }

LABEL_17:

  objc_autoreleasePoolPop(v28);
  if (![v6 shouldRetry])
  {
LABEL_20:
    LOBYTE(v42) = 1;
    goto LABEL_21;
  }

  v56 = [(HMBCloudZone *)v18 localZone];
  v42 = [v56 createMirrorInputWithError:a4];

  if (v42)
  {
    [v6 setMirrorInput:v42];

    goto LABEL_20;
  }

LABEL_21:

  v57 = *MEMORY[0x277D85DE8];
  return v42;
}

- (void)__zoneChangesCompleted:(id)a3 fetchInfo:(id)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v7 activity];
  v9 = v8;
  if (v6)
  {
    [v8 markWithFormat:@"Zone change operation completed unsuccessfully: %@", v6];

    v10 = objc_autoreleasePoolPush();
    v11 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543618;
      v26 = v13;
      v27 = 2112;
      v28 = v6;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@Zone change operation completed unsuccessfully: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    v14 = v6;
    [(HMDNetworkRouterFirewallRuleCloudZone *)v11 __finalizeUpdatedRecordIDs];
  }

  else
  {
    [v8 markWithFormat:@"Zone change operation completed successfully"];

    v15 = objc_autoreleasePoolPush();
    v16 = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = HMFGetLogIdentifier();
      *buf = 138543362;
      v26 = v18;
      _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@Zone change operation completed successfully", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v15);
    v24 = 0;
    v19 = [(HMDNetworkRouterFirewallRuleCloudZone *)v16 __commitLocalChanges:v7 error:&v24];
    v20 = v24;
    v21 = v20;
    v14 = 0;
    if (!v19)
    {
      v14 = v20;
    }

    [(HMDNetworkRouterFirewallRuleCloudZone *)v16 __finalizeUpdatedRecordIDs];
    if (!v14)
    {
      goto LABEL_11;
    }
  }

  if (![(HMDNetworkRouterFirewallRuleCloudZone *)self __canRecoverFromError:v14 fetchInfo:v7])
  {
    [v7 finishWithError:v14];
    goto LABEL_15;
  }

LABEL_11:
  if ([v7 shouldRetry])
  {
    [(HMDNetworkRouterFirewallRuleCloudZone *)self __retryFetchWithFetchInfo:v7];
  }

  else
  {
    v22 = [MEMORY[0x277CBEB68] null];
    [v7 finishWithResult:v22];
  }

LABEL_15:

  v23 = *MEMORY[0x277D85DE8];
}

- (void)__zoneChangeTokensUpdated:(id)a3 fetchInfo:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v7 activity];
  v9 = [v7 changeToken];
  v10 = [v9 hmbDescription];
  [v8 markWithFormat:@"Change token updated: %@", v10];

  v11 = objc_autoreleasePoolPush();
  v12 = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = HMFGetLogIdentifier();
    v15 = [v7 changeToken];
    v16 = [v15 hmbDescription];
    *buf = 138543618;
    v19 = v14;
    v20 = 2112;
    v21 = v16;
    _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@Change token updated: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v11);
  [v7 setChangeToken:v6];

  v17 = *MEMORY[0x277D85DE8];
}

- (void)__recordDeleted:(id)a3 recordType:(id)a4 fetchInfo:(id)a5
{
  v42 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v10 activity];
  v12 = [v8 hmbDescription];
  [v11 markWithFormat:@"Fetched deleted recordID: %@ (%@)", v12, v9];

  v13 = objc_autoreleasePoolPush();
  v14 = self;
  v15 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = HMFGetLogIdentifier();
    v17 = [v8 hmbDescription];
    *buf = 138543874;
    v37 = v16;
    v38 = 2112;
    v39 = v17;
    v40 = 2112;
    v41 = v9;
    _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@Fetched deleted recordID: %@ (%@)", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v13);
  v35 = 0;
  v18 = [v8 externalID:&v35];
  v19 = v35;
  if (v18)
  {
    v20 = [v10 mirrorInput];
    v34 = v19;
    v21 = [v20 stageRemovalForModelWithExternalID:v18 error:&v34];
    v22 = v34;

    if (v21)
    {
      [(HMDNetworkRouterFirewallRuleCloudZone *)v14 __noteUpdatedRecordID:v8];
    }

    else
    {
      v28 = [v10 activity];
      [v28 markWithFormat:@"Failed to remove model: %@", v22];

      v29 = objc_autoreleasePoolPush();
      v30 = v14;
      v31 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        v32 = HMFGetLogIdentifier();
        *buf = 138543618;
        v37 = v32;
        v38 = 2112;
        v39 = v22;
        _os_log_impl(&dword_229538000, v31, OS_LOG_TYPE_ERROR, "%{public}@Failed to remove model: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v29);
    }

    v19 = v22;
  }

  else
  {
    v23 = [v10 activity];
    [v23 markWithFormat:@"Failed to determine externalID: %@", v19];

    v24 = objc_autoreleasePoolPush();
    v25 = v14;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = HMFGetLogIdentifier();
      *buf = 138543618;
      v37 = v27;
      v38 = 2112;
      v39 = v19;
      _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_ERROR, "%{public}@Failed to determine externalID: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v24);
  }

  v33 = *MEMORY[0x277D85DE8];
}

- (void)__recordChanged:(id)a3 fetchInfo:(id)a4
{
  v63 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 recordID];
  v9 = [v7 activity];
  v10 = [v8 hmbDescription];
  v11 = [v6 recordType];
  [v9 markWithFormat:@"Fetched changed record %@ (%@)", v10, v11];

  v12 = objc_autoreleasePoolPush();
  v13 = self;
  v14 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = HMFGetLogIdentifier();
    v16 = [v8 hmbDescription];
    v17 = [v6 recordType];
    *buf = 138543874;
    v58 = v15;
    v59 = 2112;
    v60 = v16;
    v61 = 2112;
    v62 = v17;
    _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@Fetched changed record %@ (%@)", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v12);
  v56 = 0;
  v18 = [(HMDNetworkRouterFirewallRuleCloudZone *)v13 decodeModelFrom:v6 recordSource:4 error:&v56];
  v19 = v56;
  v20 = v19;
  if (v18)
  {
    v55 = v19;
    v21 = [v6 externalID:&v55];
    v22 = v55;

    if (v21)
    {
      v54 = v22;
      v23 = [v6 externalData:&v54];
      v24 = v54;

      if (v23)
      {
        v25 = [v7 mirrorInput];
        v53 = v24;
        v26 = [v25 stageAdditionForModel:v18 externalID:v21 externalData:v23 error:&v53];
        v51 = v53;

        if (v26)
        {
          [(HMDNetworkRouterFirewallRuleCloudZone *)v13 __noteUpdatedRecordID:v8];
        }

        else
        {
          v42 = [v7 activity];
          v43 = [v8 hmbDescription];
          [v42 markWithFormat:@"Failed to update model for %@: %@", v43, v51];

          v44 = objc_autoreleasePoolPush();
          v45 = v13;
          v46 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
          {
            v47 = HMFGetLogIdentifier();
            [v8 hmbDescription];
            v48 = v50 = v44;
            *buf = 138543874;
            v58 = v47;
            v59 = 2112;
            v60 = v48;
            v61 = 2112;
            v62 = v51;
            _os_log_impl(&dword_229538000, v46, OS_LOG_TYPE_ERROR, "%{public}@Failed to update model for %@: %@", buf, 0x20u);

            v44 = v50;
          }

          objc_autoreleasePoolPop(v44);
        }

        v24 = v51;
      }

      else
      {
        v37 = [v7 activity];
        [v37 markWithFormat:@"Failed to determine externalData: %@", v24];

        v38 = objc_autoreleasePoolPush();
        v39 = v13;
        v40 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
        {
          HMFGetLogIdentifier();
          v41 = v52 = v38;
          *buf = 138543618;
          v58 = v41;
          v59 = 2112;
          v60 = v24;
          _os_log_impl(&dword_229538000, v40, OS_LOG_TYPE_ERROR, "%{public}@Failed to determine externalData: %@", buf, 0x16u);

          v38 = v52;
        }

        objc_autoreleasePoolPop(v38);
      }

      v22 = v24;
    }

    else
    {
      v32 = [v7 activity];
      [v32 markWithFormat:@"Failed to determine externalID: %@", v22];

      v33 = objc_autoreleasePoolPush();
      v34 = v13;
      v35 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        v36 = HMFGetLogIdentifier();
        *buf = 138543618;
        v58 = v36;
        v59 = 2112;
        v60 = v22;
        _os_log_impl(&dword_229538000, v35, OS_LOG_TYPE_ERROR, "%{public}@Failed to determine externalID: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v33);
    }

    v20 = v22;
  }

  else
  {
    v27 = [v7 activity];
    [v27 markWithFormat:@"Failed to decode model: %@", v20];

    v28 = objc_autoreleasePoolPush();
    v29 = v13;
    v30 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      v31 = HMFGetLogIdentifier();
      *buf = 138543618;
      v58 = v31;
      v59 = 2112;
      v60 = v20;
      _os_log_impl(&dword_229538000, v30, OS_LOG_TYPE_ERROR, "%{public}@Failed to decode model: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v28);
  }

  v49 = *MEMORY[0x277D85DE8];
}

- (void)__finalizeUpdatedRecordIDs
{
  v3 = *MEMORY[0x277D17140];
  os_unfair_lock_lock_with_options();
  if (self->_modifiedRecordIDsFromLastPull)
  {
    v4 = [(HMDNetworkRouterFirewallRuleCloudZone *)self uncommittedModifiedRecordIDsFromLastPull];

    if (v4)
    {
      v5 = [(HMDNetworkRouterFirewallRuleCloudZone *)self uncommittedModifiedRecordIDsFromLastPull];
      [v5 unionSet:self->_modifiedRecordIDsFromLastPull];
    }
  }

  v6 = [(HMDNetworkRouterFirewallRuleCloudZone *)self uncommittedModifiedRecordIDsFromLastPull];
  v7 = [v6 copy];
  [(HMDNetworkRouterFirewallRuleCloudZone *)self setModifiedRecordIDsFromLastPull:v7];

  [(HMDNetworkRouterFirewallRuleCloudZone *)self setUncommittedModifiedRecordIDsFromLastPull:0];

  os_unfair_lock_unlock((self + v3));
}

- (void)__noteUpdatedRecordID:(id)a3
{
  v7 = a3;
  v4 = *MEMORY[0x277D17140];
  os_unfair_lock_lock_with_options();
  v5 = [(HMDNetworkRouterFirewallRuleCloudZone *)self uncommittedModifiedRecordIDsFromLastPull];

  if (v5)
  {
    v6 = [(HMDNetworkRouterFirewallRuleCloudZone *)self uncommittedModifiedRecordIDsFromLastPull];
    [v6 addObject:v7];
  }

  else
  {
    v6 = [MEMORY[0x277CBEB58] setWithObject:v7];
    [(HMDNetworkRouterFirewallRuleCloudZone *)self setUncommittedModifiedRecordIDsFromLastPull:v6];
  }

  os_unfair_lock_unlock((self + v4));
}

- (void)__fetchZoneChangesWithFetchInfo:(id)a3
{
  v43[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CBC3A0]);
  v6 = [v4 changeToken];
  [v5 setPreviousServerChangeToken:v6];

  v7 = [(HMBCloudZone *)self cloudZoneID];
  v8 = [v7 zoneID];
  v42 = v8;
  v43[0] = v5;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v43 forKeys:&v42 count:1];

  v10 = objc_alloc(MEMORY[0x277CBC3B8]);
  v11 = [(HMBCloudZone *)self cloudZoneID];
  v12 = [v11 zoneID];
  v41 = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v41 count:1];
  v14 = [v10 initWithRecordZoneIDs:v13 configurationsByRecordZoneID:v9];

  [v14 setFetchAllChanges:1];
  objc_initWeak(&location, self);
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __73__HMDNetworkRouterFirewallRuleCloudZone___fetchZoneChangesWithFetchInfo___block_invoke;
  v37[3] = &unk_278680920;
  v15 = v4;
  v38 = v15;
  objc_copyWeak(&v39, &location);
  [v14 setRecordChangedBlock:v37];
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __73__HMDNetworkRouterFirewallRuleCloudZone___fetchZoneChangesWithFetchInfo___block_invoke_3;
  v34[3] = &unk_278680948;
  v16 = v15;
  v35 = v16;
  objc_copyWeak(&v36, &location);
  [v14 setRecordWithIDWasDeletedBlock:v34];
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __73__HMDNetworkRouterFirewallRuleCloudZone___fetchZoneChangesWithFetchInfo___block_invoke_5;
  v31[3] = &unk_278680970;
  v17 = v16;
  v32 = v17;
  objc_copyWeak(&v33, &location);
  [v14 setRecordZoneChangeTokensUpdatedBlock:v31];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __73__HMDNetworkRouterFirewallRuleCloudZone___fetchZoneChangesWithFetchInfo___block_invoke_161;
  v28[3] = &unk_2786809C0;
  v18 = v17;
  v29 = v18;
  objc_copyWeak(&v30, &location);
  [v14 setRecordZoneFetchCompletionBlock:v28];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __73__HMDNetworkRouterFirewallRuleCloudZone___fetchZoneChangesWithFetchInfo___block_invoke_167;
  v24[3] = &unk_278685D08;
  v19 = v18;
  v25 = v19;
  v26 = self;
  objc_copyWeak(&v27, &location);
  [v14 setFetchRecordZoneChangesCompletionBlock:v24];
  v20 = [(HMBCloudZone *)self database];
  [v20 addOperation:v14];

  v21 = [v19 operationStartTime];
  LODWORD(v20) = v21 == 0;

  if (v20)
  {
    v22 = [MEMORY[0x277CBEAA8] now];
    [v19 setOperationStartTime:v22];
  }

  objc_destroyWeak(&v27);

  objc_destroyWeak(&v30);
  objc_destroyWeak(&v33);

  objc_destroyWeak(&v36);
  objc_destroyWeak(&v39);

  objc_destroyWeak(&location);
  v23 = *MEMORY[0x277D85DE8];
}

void __73__HMDNetworkRouterFirewallRuleCloudZone___fetchZoneChangesWithFetchInfo___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) activity];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __73__HMDNetworkRouterFirewallRuleCloudZone___fetchZoneChangesWithFetchInfo___block_invoke_2;
  v6[3] = &unk_278685F38;
  objc_copyWeak(&v9, (a1 + 40));
  v7 = *(a1 + 32);
  v5 = v3;
  v8 = v5;
  [v4 performBlock:v6];

  objc_destroyWeak(&v9);
}

void __73__HMDNetworkRouterFirewallRuleCloudZone___fetchZoneChangesWithFetchInfo___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) activity];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __73__HMDNetworkRouterFirewallRuleCloudZone___fetchZoneChangesWithFetchInfo___block_invoke_4;
  v10[3] = &unk_278687568;
  objc_copyWeak(&v14, (a1 + 40));
  v11 = *(a1 + 32);
  v8 = v5;
  v12 = v8;
  v9 = v6;
  v13 = v9;
  [v7 performBlock:v10];

  objc_destroyWeak(&v14);
}

void __73__HMDNetworkRouterFirewallRuleCloudZone___fetchZoneChangesWithFetchInfo___block_invoke_5(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = [*(a1 + 32) activity];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __73__HMDNetworkRouterFirewallRuleCloudZone___fetchZoneChangesWithFetchInfo___block_invoke_6;
  v13[3] = &unk_278687568;
  objc_copyWeak(&v17, (a1 + 40));
  v11 = v7;
  v14 = v11;
  v12 = v8;
  v15 = v12;
  v16 = *(a1 + 32);
  [v10 performBlock:v13];

  objc_destroyWeak(&v17);
}

void __73__HMDNetworkRouterFirewallRuleCloudZone___fetchZoneChangesWithFetchInfo___block_invoke_161(uint64_t a1, void *a2, void *a3, void *a4, char a5, void *a6)
{
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = [*(a1 + 32) activity];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __73__HMDNetworkRouterFirewallRuleCloudZone___fetchZoneChangesWithFetchInfo___block_invoke_2_162;
  v19[3] = &unk_278680998;
  objc_copyWeak(&v24, (a1 + 40));
  v16 = v11;
  v20 = v16;
  v17 = v12;
  v21 = v17;
  v18 = v14;
  v22 = v18;
  v25 = a5;
  v23 = *(a1 + 32);
  [v15 performBlock:v19];

  objc_destroyWeak(&v24);
}

void __73__HMDNetworkRouterFirewallRuleCloudZone___fetchZoneChangesWithFetchInfo___block_invoke_167(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) activity];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __73__HMDNetworkRouterFirewallRuleCloudZone___fetchZoneChangesWithFetchInfo___block_invoke_2_168;
  v8[3] = &unk_278687568;
  v5 = v3;
  v9 = v5;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v10 = v6;
  v11 = v7;
  objc_copyWeak(&v12, (a1 + 48));
  [v4 performBlock:v8];

  objc_destroyWeak(&v12);
}

void __73__HMDNetworkRouterFirewallRuleCloudZone___fetchZoneChangesWithFetchInfo___block_invoke_2_168(uint64_t a1)
{
  v29 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) activity];
  v4 = v3;
  if (v2)
  {
    [v3 markWithFormat:@"Fetch zone changes operation completed with error: %@", *(a1 + 32)];

    v5 = objc_autoreleasePoolPush();
    v6 = *(a1 + 48);
    v7 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    v8 = HMFGetLogIdentifier();
    v9 = *(a1 + 32);
    *buf = 138543618;
    v26 = v8;
    v27 = 2112;
    v28 = v9;
    v10 = "%{public}@Fetch zone changes operation completed with error: %@";
    v11 = v7;
    v12 = OS_LOG_TYPE_ERROR;
    v13 = 22;
  }

  else
  {
    [v3 markWithFormat:@"Fetch zone changes operation completed successfully"];

    v5 = objc_autoreleasePoolPush();
    v6 = *(a1 + 48);
    v7 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    v8 = HMFGetLogIdentifier();
    *buf = 138543362;
    v26 = v8;
    v10 = "%{public}@Fetch zone changes operation completed successfully";
    v11 = v7;
    v12 = OS_LOG_TYPE_DEFAULT;
    v13 = 12;
  }

  _os_log_impl(&dword_229538000, v11, v12, v10, buf, v13);

LABEL_7:
  objc_autoreleasePoolPop(v5);
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v15 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained __zoneChangesCompleted:*(a1 + 32) fetchInfo:*(a1 + 40)];
  }

  else
  {
    v16 = [*(a1 + 40) activity];
    [v16 markWithFormat:@"CloudZone has been deallocated"];

    v17 = objc_autoreleasePoolPush();
    v18 = objc_opt_class();
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543362;
      v26 = v20;
      _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_INFO, "%{public}@CloudZone has been deallocated", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v17);
    v21 = *(a1 + 32);
    if (v21)
    {
      v22 = v21;
    }

    else
    {
      v22 = [MEMORY[0x277CCA9B8] hmErrorWithCode:23];
    }

    v23 = v22;
    [*(a1 + 40) finishWithError:v22];
  }

  v24 = *MEMORY[0x277D85DE8];
}

void __73__HMDNetworkRouterFirewallRuleCloudZone___fetchZoneChangesWithFetchInfo___block_invoke_2_162(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = *(a1 + 32);
    v5 = [WeakRetained cloudZoneID];
    v6 = [v5 zoneID];
    LOBYTE(v4) = HMFEqualObjects();

    if ((v4 & 1) == 0)
    {
      v8 = objc_autoreleasePoolPush();
      v9 = v3;
      v10 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        v11 = HMFGetLogIdentifier();
        v12 = [*(a1 + 32) hmbDescription];
        *buf = 138543618;
        v18 = v11;
        v19 = 2112;
        v20 = v12;
        _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_FAULT, "%{public}@Submitting ABC event for failure: recordZoneFetchCompletionBlock called with unknown zone: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v8);
      v13 = [HMDAssertionLogEvent alloc];
      v14 = [*(a1 + 32) hmbDescription];
      v15 = [(HMDAssertionLogEvent *)v13 initWithReason:@"recordZoneFetchCompletionBlock called with unknown zone: %@", v14];

      v16 = +[HMDMetricsManager sharedLogEventSubmitter];
      [v16 submitLogEvent:v15];
    }

    [v3 __zoneFetchCompletedWithChangeToken:*(a1 + 40) error:*(a1 + 48) moreComing:*(a1 + 72) fetchInfo:*(a1 + 56)];
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __73__HMDNetworkRouterFirewallRuleCloudZone___fetchZoneChangesWithFetchInfo___block_invoke_6(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = *(a1 + 32);
    v5 = [WeakRetained cloudZoneID];
    v6 = [v5 zoneID];
    LOBYTE(v4) = HMFEqualObjects();

    if ((v4 & 1) == 0)
    {
      v8 = objc_autoreleasePoolPush();
      v9 = v3;
      v10 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        v11 = HMFGetLogIdentifier();
        v12 = [*(a1 + 32) hmbDescription];
        *buf = 138543618;
        v18 = v11;
        v19 = 2112;
        v20 = v12;
        _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_FAULT, "%{public}@Submitting ABC event for failure: recordZoneChangeTokensUpdatedBlock called with unknown zone: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v8);
      v13 = [HMDAssertionLogEvent alloc];
      v14 = [*(a1 + 32) hmbDescription];
      v15 = [(HMDAssertionLogEvent *)v13 initWithReason:@"recordZoneChangeTokensUpdatedBlock called with unknown zone: %@", v14];

      v16 = +[HMDMetricsManager sharedLogEventSubmitter];
      [v16 submitLogEvent:v15];
    }

    [v3 __zoneChangeTokensUpdated:*(a1 + 40) fetchInfo:*(a1 + 48)];
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __73__HMDNetworkRouterFirewallRuleCloudZone___fetchZoneChangesWithFetchInfo___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v3 = [*(a1 + 32) interestedRecordIDs];
    v4 = [v3 containsObject:*(a1 + 40)];

    WeakRetained = v5;
    if (v4)
    {
      [v5 __recordDeleted:*(a1 + 40) recordType:*(a1 + 48) fetchInfo:*(a1 + 32)];
      WeakRetained = v5;
    }
  }
}

void __73__HMDNetworkRouterFirewallRuleCloudZone___fetchZoneChangesWithFetchInfo___block_invoke_2(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v3 = [a1[4] interestedRecordIDs];
    v4 = [a1[5] recordID];
    v5 = [v3 containsObject:v4];

    WeakRetained = v6;
    if (v5)
    {
      [v6 __recordChanged:a1[5] fetchInfo:a1[4]];
      WeakRetained = v6;
    }
  }
}

- (id)fetchChangesWithToken:(id)a3 options:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __71__HMDNetworkRouterFirewallRuleCloudZone_fetchChangesWithToken_options___block_invoke;
  v18 = &unk_2786808F8;
  objc_copyWeak(&v21, &location);
  v8 = v7;
  v19 = v8;
  v9 = v6;
  v20 = v9;
  v10 = _Block_copy(&v15);
  v11 = MEMORY[0x277D2C900];
  v12 = [MEMORY[0x277D2C938] globalAsyncScheduler];
  v13 = [v11 lazyFutureWithBlock:v10 scheduler:v12];

  objc_destroyWeak(&v21);
  objc_destroyWeak(&location);

  return v13;
}

void __71__HMDNetworkRouterFirewallRuleCloudZone_fetchChangesWithToken_options___block_invoke(uint64_t a1, void *a2)
{
  v48 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v5 = *MEMORY[0x277D17140];
    os_unfair_lock_lock_with_options();
    [WeakRetained setModifiedRecordIDsFromLastPull:0];
    [WeakRetained setUncommittedModifiedRecordIDsFromLastPull:0];
    os_unfair_lock_unlock(&WeakRetained[v5]);
    v6 = [WeakRetained watchedRecordIDs];
    v7 = [v6 count];

    if (v7)
    {
      v8 = [WeakRetained localZone];
      v41 = 0;
      v40 = [v8 createMirrorInputWithError:&v41];
      v39 = v41;

      if (v40)
      {
        v9 = [HMDNetworkRouterFirewallRuleCloudZoneFetchInfo alloc];
        v11 = *(a1 + 32);
        v10 = *(a1 + 40);
        v12 = [WeakRetained database];
        v13 = [WeakRetained useAnonymousRequests];
        v14 = [WeakRetained watchedRecordIDs];
        v15 = [(HMDNetworkRouterFirewallRuleCloudZoneFetchInfo *)v9 initWithOptions:v11 changeToken:v10 promise:v3 database:v12 useAnonymousRequests:v13 interestedRecordIDs:v14 mirrorInput:v40];

        v16 = [(HMDNetworkRouterFirewallRuleManagerBackingStoreFetchHelper *)v15 activity];
        v17 = [WeakRetained zoneID];
        v18 = [v17 name];
        v19 = [(HMDNetworkRouterFirewallRuleCloudZoneFetchInfo *)v15 changeToken];
        v20 = [v19 hmbDescription];
        [v16 markWithFormat:@"Fetching all changes for zone: %@, token: %@", v18, v20];

        context = objc_autoreleasePoolPush();
        v21 = WeakRetained;
        v22 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          v23 = HMFGetLogIdentifier();
          v24 = [v21 zoneID];
          v25 = [v24 name];
          v26 = [(HMDNetworkRouterFirewallRuleCloudZoneFetchInfo *)v15 changeToken];
          v27 = [v26 hmbDescription];
          *buf = 138543874;
          v43 = v23;
          v44 = 2112;
          v45 = v25;
          v46 = 2112;
          v47 = v27;
          _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_DEFAULT, "%{public}@Fetching all changes for zone: %@, token: %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(context);
        [v21 __fetchZoneChangesWithFetchInfo:v15];
      }

      else
      {
        v33 = objc_autoreleasePoolPush();
        v34 = WeakRetained;
        v35 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          v36 = HMFGetLogIdentifier();
          *buf = 138543618;
          v43 = v36;
          v44 = 2112;
          v45 = v39;
          _os_log_impl(&dword_229538000, v35, OS_LOG_TYPE_ERROR, "%{public}@Failed to create mirror input: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v33);
        [v3 finishWithError:v39];
      }
    }

    else
    {
      v29 = objc_autoreleasePoolPush();
      v30 = WeakRetained;
      v31 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
      {
        v32 = HMFGetLogIdentifier();
        *buf = 138543362;
        v43 = v32;
        _os_log_impl(&dword_229538000, v31, OS_LOG_TYPE_DEBUG, "%{public}@Not watching any records", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v29);
      [v3 finishWithNoResult];
    }
  }

  else
  {
    v28 = [MEMORY[0x277CCA9B8] hmErrorWithCode:23];
    [v3 finishWithError:v28];
  }

  v37 = *MEMORY[0x277D85DE8];
}

- (void)startUpWithLocalZone:(id)a3
{
  [(HMBCloudZone *)self setLocalZone:a3];
  v4 = [(HMBCloudZone *)self startUp];
  [v4 finishWithNoResult];
}

- (void)setUncommittedModifiedRecordIDsFromLastPull:(id)a3
{
  v4 = a3;
  os_unfair_lock_assert_owner((self + *MEMORY[0x277D17140]));
  uncommittedModifiedRecordIDsFromLastPull = self->_uncommittedModifiedRecordIDsFromLastPull;
  self->_uncommittedModifiedRecordIDsFromLastPull = v4;
}

- (NSMutableSet)uncommittedModifiedRecordIDsFromLastPull
{
  os_unfair_lock_assert_owner((self + *MEMORY[0x277D17140]));
  uncommittedModifiedRecordIDsFromLastPull = self->_uncommittedModifiedRecordIDsFromLastPull;

  return uncommittedModifiedRecordIDsFromLastPull;
}

- (void)setModifiedRecordIDsFromLastPull:(id)a3
{
  v4 = a3;
  os_unfair_lock_assert_owner((self + *MEMORY[0x277D17140]));
  modifiedRecordIDsFromLastPull = self->_modifiedRecordIDsFromLastPull;
  self->_modifiedRecordIDsFromLastPull = v4;
}

- (NSSet)modifiedRecordIDsFromLastPull
{
  v3 = *MEMORY[0x277D17140];
  os_unfair_lock_lock_with_options();
  v4 = self->_modifiedRecordIDsFromLastPull;
  os_unfair_lock_unlock((self + v3));

  return v4;
}

- (id)attributeDescriptions
{
  v25[5] = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D17140];
  os_unfair_lock_lock_with_options();
  v4 = [(HMDNetworkRouterFirewallRuleCloudZone *)self uncommittedModifiedRecordIDsFromLastPull];
  v22 = [v4 copy];

  os_unfair_lock_unlock((self + v3));
  v24.receiver = self;
  v24.super_class = HMDNetworkRouterFirewallRuleCloudZone;
  v21 = [(HMBCloudZone *)&v24 attributeDescriptions];
  v5 = objc_alloc(MEMORY[0x277D0F778]);
  v23 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDNetworkRouterFirewallRuleCloudZone useAnonymousRequests](self, "useAnonymousRequests")}];
  v6 = [v5 initWithName:@"UseAnonymousRequests" value:v23];
  v25[0] = v6;
  v7 = objc_alloc(MEMORY[0x277D0F778]);
  v8 = [(HMDNetworkRouterFirewallRuleCloudZone *)self watchedRecordIDs];
  v9 = [v7 initWithName:@"WatchedRecordIDs" value:v8];
  v25[1] = v9;
  v10 = objc_alloc(MEMORY[0x277D0F778]);
  v11 = [(HMDNetworkRouterFirewallRuleCloudZone *)self signatureVerificationPublicKeys];
  v12 = [v10 initWithName:@"SignatureVerificationPublicKeys" value:v11];
  v25[2] = v12;
  v13 = objc_alloc(MEMORY[0x277D0F778]);
  v14 = [(HMDNetworkRouterFirewallRuleCloudZone *)self modifiedRecordIDsFromLastPull];
  v15 = [v13 initWithName:@"ModifiedRecordIDsFromLastPull" value:v14];
  v25[3] = v15;
  v16 = [objc_alloc(MEMORY[0x277D0F778]) initWithName:@"UncommittedModifiedRecordIDsFromLastPull" value:v22];
  v25[4] = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:5];
  v18 = [v21 arrayByAddingObjectsFromArray:v17];

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

- (HMDNetworkRouterFirewallRuleCloudZone)initWithCloudDatabase:(id)a3 state:(id)a4 useAnonymousRequests:(BOOL)a5 watchedRecordIDs:(id)a6 signatureVerificationPublicKeys:(id)a7
{
  v30 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a7;
  if (![v15 count])
  {
    context = objc_autoreleasePoolPush();
    v21 = self;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
    {
      v25 = HMFGetLogIdentifier();
      *buf = 138543362;
      v29 = v25;
      _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_FAULT, "%{public}@Submitting ABC event for failure: Must have verification keys", buf, 0xCu);
    }

    objc_autoreleasePoolPop(context);
    v23 = [[HMDAssertionLogEvent alloc] initWithReason:@"Must have verification keys"];
    v24 = +[HMDMetricsManager sharedLogEventSubmitter];
    [v24 submitLogEvent:v23];
  }

  v16 = objc_alloc_init(MEMORY[0x277D17068]);
  v27.receiver = self;
  v27.super_class = HMDNetworkRouterFirewallRuleCloudZone;
  v17 = [(HMBCloudZone *)&v27 initWithCloudDatabase:v12 configuration:v16 state:v13];

  if (v17)
  {
    *(&v17->_useAnonymousRequests + 4) = a5;
    objc_storeStrong(&v17->_watchedRecordIDs, a6);
    objc_storeStrong(&v17->_signatureVerificationPublicKeys, a7);
    v18 = v17;
  }

  v19 = *MEMORY[0x277D85DE8];
  return v17;
}

@end