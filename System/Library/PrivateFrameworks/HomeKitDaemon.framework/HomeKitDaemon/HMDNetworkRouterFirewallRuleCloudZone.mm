@interface HMDNetworkRouterFirewallRuleCloudZone
+ (BOOL)__verifyDataFromRecord:(id)record signatureVerificationPublicKeys:(id)keys dataKey:(id)key dataAssetKey:(id)assetKey maxDataSize:(unint64_t)size signatureKey:(id)signatureKey signatureAssetKey:(id)signatureAssetKey maxSignatureSize:(unint64_t)self0 baseAccessoryIdentifier:(id *)self1 data:(id *)self2 error:(id *)self3;
+ (BOOL)__verifyDigestDataAgainstSignatureFromRecord:(id)record digestData:(id)data signatureData:(id)signatureData signatureVerificationPublicKeys:(id)keys error:(id *)error;
+ (BOOL)verifyNetworkDeclarationsFromRecord:(id)record signatureVerificationPublicKeys:(id)keys baseAccessoryIdentifier:(id *)identifier data:(id *)data error:(id *)error;
+ (BOOL)verifyNetworkDeclarationsFromRecord:(id)record signatureVerificationPublicKeys:(id)keys error:(id *)error;
+ (BOOL)verifyPairedMetadataFromRecord:(id)record signatureVerificationPublicKeys:(id)keys error:(id *)error;
+ (id)__calculateDigestDataFromRecord:(id)record dataKey:(id)key dataAssetKey:(id)assetKey maxDataSize:(unint64_t)size error:(id *)error;
+ (id)__createBaseAccessoryIdentifierFromRecord:(id)record error:(id *)error;
+ (id)__getDataFromRecord:(id)record dataKey:(id)key dataAssetKey:(id)assetKey maxDataSize:(unint64_t)size error:(id *)error;
+ (id)__getSignatureDataFromRecord:(id)record signatureKey:(id)key signatureAssetKey:(id)assetKey maxSignatureSize:(unint64_t)size error:(id *)error;
+ (unint64_t)__maxSizeFromPreferenceWithKey:(id)key defaultValue:(unint64_t)value;
- (BOOL)__canRecoverFromError:(id)error fetchInfo:(id)info;
- (BOOL)__commitLocalChanges:(id)changes error:(id *)error;
- (HMDNetworkRouterFirewallRuleCloudZone)initWithCloudDatabase:(id)database state:(id)state useAnonymousRequests:(BOOL)requests watchedRecordIDs:(id)ds signatureVerificationPublicKeys:(id)keys;
- (NSMutableSet)uncommittedModifiedRecordIDsFromLastPull;
- (NSSet)modifiedRecordIDsFromLastPull;
- (id)attributeDescriptions;
- (id)decodeModelFrom:(id)from recordSource:(unint64_t)source error:(id *)error;
- (id)fetchChangesWithToken:(id)token options:(id)options;
- (void)__fetchZoneChangesWithFetchInfo:(id)info;
- (void)__finalizeUpdatedRecordIDs;
- (void)__noteUpdatedRecordID:(id)d;
- (void)__recordChanged:(id)changed fetchInfo:(id)info;
- (void)__recordDeleted:(id)deleted recordType:(id)type fetchInfo:(id)info;
- (void)__retryFetchWithFetchInfo:(id)info;
- (void)__zoneChangeTokensUpdated:(id)updated fetchInfo:(id)info;
- (void)__zoneChangesCompleted:(id)completed fetchInfo:(id)info;
- (void)setModifiedRecordIDsFromLastPull:(id)pull;
- (void)setUncommittedModifiedRecordIDsFromLastPull:(id)pull;
- (void)startUpWithLocalZone:(id)zone;
@end

@implementation HMDNetworkRouterFirewallRuleCloudZone

- (id)decodeModelFrom:(id)from recordSource:(unint64_t)source error:(id *)error
{
  v92 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  v8 = objc_opt_class();
  signatureVerificationPublicKeys = [(HMDNetworkRouterFirewallRuleCloudZone *)self signatureVerificationPublicKeys];
  v82 = 0;
  v83 = 0;
  LODWORD(v8) = [v8 verifyNetworkDeclarationsFromRecord:fromCopy signatureVerificationPublicKeys:signatureVerificationPublicKeys baseAccessoryIdentifier:&v83 data:&v82 error:error];
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
      [fromCopy recordID];
      v72 = fromCopy;
      v17 = v76 = v11;
      zoneID = [v17 zoneID];
      [zoneID zoneName];
      v20 = v19 = error;
      [v72 recordID];
      v21 = v68 = v13;
      recordName = [v21 recordName];
      v23 = *v19;
      *buf = 138544130;
      v85 = v16;
      v86 = 2112;
      v87 = v20;
      v88 = 2112;
      v89 = recordName;
      v90 = 2112;
      v91 = v23;
      _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_ERROR, "%{public}@Signature verification of fetched network declarations failed for record %@/%@ with error %@", buf, 0x2Au);

      v13 = v68;
      error = v19;

      fromCopy = v72;
      v11 = v76;

      v10 = v65;
    }

    objc_autoreleasePoolPop(v13);
LABEL_7:
    v24 = objc_opt_class();
    signatureVerificationPublicKeys2 = [(HMDNetworkRouterFirewallRuleCloudZone *)self signatureVerificationPublicKeys];
    __maxSizeForCKRecordPairedMetadata = [objc_opt_class() __maxSizeForCKRecordPairedMetadata];
    v80 = 0;
    v81 = v10;
    LODWORD(v24) = [v24 __verifyDataFromRecord:fromCopy signatureVerificationPublicKeys:signatureVerificationPublicKeys2 dataKey:@"CD_pairedMetadata" dataAssetKey:@"CD_pairedMetadata_ckAsset" maxDataSize:__maxSizeForCKRecordPairedMetadata signatureKey:@"CD_pairedMetadataSignature" signatureAssetKey:@"CD_pairedMetadataSignature_ckAsset" maxSignatureSize:objc_msgSend(objc_opt_class() baseAccessoryIdentifier:"__maxSizeForCKRecordPairedMetadataSignature") data:&v81 error:{&v80, error}];
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
          [fromCopy recordID];
          v56 = v67 = v52;
          [v56 zoneID];
          v75 = v27;
          v58 = v57 = fromCopy;
          zoneName = [v58 zoneName];
          [v57 recordID];
          v60 = v71 = error;
          recordName2 = [v60 recordName];
          *buf = 138543874;
          v85 = v55;
          v86 = 2112;
          v87 = zoneName;
          v88 = 2112;
          v89 = recordName2;
          _os_log_impl(&dword_229538000, v54, OS_LOG_TYPE_ERROR, "%{public}@Fetched Paired metadata failed to parse for record %@/%@", buf, 0x20u);

          error = v71;
          fromCopy = v57;
          v27 = v75;

          v52 = v67;
          v11 = v79;
        }

        objc_autoreleasePoolPop(v52);
        if (error)
        {
          [MEMORY[0x277CCA9B8] hmErrorWithCode:43];
          *error = v41 = 0;
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
        recordID = [fromCopy recordID];
        zoneID2 = [recordID zoneID];
        [zoneID2 zoneName];
        v34 = v69 = v30;
        recordID2 = [fromCopy recordID];
        [recordID2 recordName];
        v36 = v73 = v27;
        v37 = *error;
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
      cloudZoneID = [(HMBCloudZone *)self cloudZoneID];
      recordID3 = [fromCopy recordID];
      v41 = [(HMDNetworkRouterFirewallRuleManagerBackingStoreCloudAccessoryModel *)v38 initWithCloudZoneID:cloudZoneID recordID:recordID3 networkDeclarationsData:v11 pairedMetadataData:v28];

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
    [fromCopy recordID];
    v46 = v74 = v42;
    [v46 zoneID];
    errorCopy = error;
    v47 = v78 = v11;
    [v47 zoneName];
    v49 = v48 = fromCopy;
    recordID4 = [v48 recordID];
    recordName3 = [recordID4 recordName];
    *buf = 138543874;
    v85 = v45;
    v86 = 2112;
    v87 = v49;
    v88 = 2112;
    v89 = recordName3;
    _os_log_impl(&dword_229538000, v44, OS_LOG_TYPE_ERROR, "%{public}@Fetched network declarations failed to parse for record %@/%@", buf, 0x20u);

    fromCopy = v48;
    v11 = v78;
    error = errorCopy;

    v42 = v74;
  }

  objc_autoreleasePoolPop(v42);
  if (error)
  {
    [MEMORY[0x277CCA9B8] hmErrorWithCode:43];
    *error = v41 = 0;
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

+ (BOOL)verifyPairedMetadataFromRecord:(id)record signatureVerificationPublicKeys:(id)keys error:(id *)error
{
  keysCopy = keys;
  recordCopy = record;
  v11 = 0;
  v12 = 0;
  LOBYTE(error) = [self __verifyDataFromRecord:recordCopy signatureVerificationPublicKeys:keysCopy dataKey:@"CD_pairedMetadata" dataAssetKey:@"CD_pairedMetadata_ckAsset" maxDataSize:objc_msgSend(self signatureKey:"__maxSizeForCKRecordPairedMetadata") signatureAssetKey:@"CD_pairedMetadataSignature" maxSignatureSize:@"CD_pairedMetadataSignature_ckAsset" baseAccessoryIdentifier:objc_msgSend(self data:"__maxSizeForCKRecordPairedMetadataSignature") error:{&v12, &v11, error}];

  return error;
}

+ (BOOL)verifyNetworkDeclarationsFromRecord:(id)record signatureVerificationPublicKeys:(id)keys error:(id *)error
{
  v7 = 0;
  v8 = 0;
  v5 = [self verifyNetworkDeclarationsFromRecord:record signatureVerificationPublicKeys:keys baseAccessoryIdentifier:&v8 data:&v7 error:error];

  return v5;
}

+ (BOOL)verifyNetworkDeclarationsFromRecord:(id)record signatureVerificationPublicKeys:(id)keys baseAccessoryIdentifier:(id *)identifier data:(id *)data error:(id *)error
{
  keysCopy = keys;
  recordCopy = record;
  LOBYTE(error) = [self __verifyDataFromRecord:recordCopy signatureVerificationPublicKeys:keysCopy dataKey:@"CD_networkDeclarations" dataAssetKey:@"CD_networkDeclarations_ckAsset" maxDataSize:objc_msgSend(self signatureKey:"__maxSizeForCKRecordNetworkDeclarations") signatureAssetKey:@"CD_networkDeclarationsSignature" maxSignatureSize:@"CD_networkDeclarationsSignature_ckAsset" baseAccessoryIdentifier:objc_msgSend(self data:"__maxSizeForCKRecordNetworkDeclarationsSignature") error:{identifier, data, error}];

  return error;
}

+ (BOOL)__verifyDataFromRecord:(id)record signatureVerificationPublicKeys:(id)keys dataKey:(id)key dataAssetKey:(id)assetKey maxDataSize:(unint64_t)size signatureKey:(id)signatureKey signatureAssetKey:(id)signatureAssetKey maxSignatureSize:(unint64_t)self0 baseAccessoryIdentifier:(id *)self1 data:(id *)self2 error:(id *)self3
{
  recordCopy = record;
  keysCopy = keys;
  keyCopy = key;
  assetKeyCopy = assetKey;
  signatureKeyCopy = signatureKey;
  signatureAssetKeyCopy = signatureAssetKey;
  v24 = [self __createBaseAccessoryIdentifierFromRecord:recordCopy error:error];
  if (v24)
  {
    v33 = signatureAssetKeyCopy;
    v25 = keyCopy;
    v26 = [self __calculateDigestDataFromRecord:recordCopy dataKey:keyCopy dataAssetKey:assetKeyCopy maxDataSize:size error:error];
    if (v26)
    {
      v32 = keysCopy;
      v27 = [self __getSignatureDataFromRecord:recordCopy signatureKey:signatureKeyCopy signatureAssetKey:v33 maxSignatureSize:signatureSize error:error];
      if (v27 && [self __verifyDigestDataAgainstSignatureFromRecord:recordCopy digestData:v26 signatureData:v27 signatureVerificationPublicKeys:v32 error:error] && (objc_msgSend(self, "__getDataFromRecord:dataKey:dataAssetKey:maxDataSize:error:", recordCopy, keyCopy, assetKeyCopy, size, error), v28 = objc_claimAutoreleasedReturnValue(), (*data = v28) != 0))
      {
        v29 = v24;
        *identifier = v24;
        v30 = 1;
      }

      else
      {
        v30 = 0;
      }

      keysCopy = v32;
    }

    else
    {
      v30 = 0;
    }

    signatureAssetKeyCopy = v33;
  }

  else
  {
    v30 = 0;
    v25 = keyCopy;
  }

  return v30;
}

+ (id)__getDataFromRecord:(id)record dataKey:(id)key dataAssetKey:(id)assetKey maxDataSize:(unint64_t)size error:(id *)error
{
  recordCopy = record;
  keyCopy = key;
  assetKeyCopy = assetKey;
  if (!assetKeyCopy || (readDataFromCKRecordOptionalAssetField(recordCopy), (v13 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v13 = dataFromCKRecordRequiredField(recordCopy, keyCopy, error);
  }

  return v13;
}

+ (BOOL)__verifyDigestDataAgainstSignatureFromRecord:(id)record digestData:(id)data signatureData:(id)signatureData signatureVerificationPublicKeys:(id)keys error:(id *)error
{
  v44 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  dataCopy = data;
  signatureDataCopy = signatureData;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  keysCopy = keys;
  v13 = [keysCopy countByEnumeratingWithState:&v34 objects:v43 count:16];
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
          objc_enumerationMutation(keysCopy);
        }

        v20 = *(*(&v34 + 1) + 8 * v18);
        *error = 0;
        v21 = SecKeyVerifySignature(v20, v17, dataCopy, signatureDataCopy, error);
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
      v14 = [keysCopy countByEnumeratingWithState:&v34 objects:v43 count:16];
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
  selfCopy = self;
  v25 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    v26 = HMFGetLogIdentifier();
    recordID = [recordCopy recordID];
    hmbDescription = [recordID hmbDescription];
    *error = 138543874;
    *&error[4] = v26;
    v39 = 2112;
    v40 = hmbDescription;
    v41 = 2112;
    v42 = v15;
    _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_ERROR, "%{public}@Digest does not match signature on record %@: %@", error, 0x20u);
  }

  objc_autoreleasePoolPop(v23);
  if (error)
  {
    [MEMORY[0x277CCA9B8] hmErrorWithCode:53];
    *error = v22 = 0;
  }

  else
  {
    v22 = 0;
  }

LABEL_17:

  v29 = *MEMORY[0x277D85DE8];
  return v22;
}

+ (id)__getSignatureDataFromRecord:(id)record signatureKey:(id)key signatureAssetKey:(id)assetKey maxSignatureSize:(unint64_t)size error:(id *)error
{
  v8 = stringFromCKRecord(record, key, assetKey, size, error);
  if (v8)
  {
    v9 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:v8 options:0];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else if (error)
    {
      *error = [MEMORY[0x277CCA9B8] hmErrorWithCode:53];
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)__calculateDigestDataFromRecord:(id)record dataKey:(id)key dataAssetKey:(id)assetKey maxDataSize:(unint64_t)size error:(id *)error
{
  v7 = MEMORY[0x28223BE20](self);
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
  recordID = [v21 recordID];
  zoneID = [recordID zoneID];
  zoneName = [zoneID zoneName];
  v98[0] = zoneName;
  v74 = recordID;
  recordName = [recordID recordName];
  v98[1] = recordName;
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
      recordID2 = [v21 recordID];
      hmbDescription = [recordID2 hmbDescription];
      [v27 streamError];
      v66 = v79 = v61;
      *v87 = 138543874;
      v88 = v64;
      v89 = 2112;
      v90 = hmbDescription;
      v91 = 2112;
      v92 = v66;
      _os_log_impl(&dword_229538000, v63, OS_LOG_TYPE_ERROR, "%{public}@Error reading data from record %@: %@", v87, 0x20u);

      v61 = v79;
    }

    objc_autoreleasePoolPop(v61);
    v59 = v81;
    if (v81)
    {
      streamError = [v27 streamError];
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
    recordID3 = [v21 recordID];
    hmbDescription2 = [recordID3 hmbDescription];
    *v87 = 138543874;
    v88 = v56;
    v89 = 2048;
    v90 = v11;
    v91 = 2112;
    v92 = hmbDescription2;
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

  streamError = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
LABEL_44:
  v52 = 0;
  *v59 = streamError;
LABEL_52:

LABEL_53:
  v71 = *MEMORY[0x277D85DE8];

  return v52;
}

+ (id)__createBaseAccessoryIdentifierFromRecord:(id)record error:(id *)error
{
  v44 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  v7 = stringFromCKRecord(recordCopy, @"CD_productGroup", @"CD_productGroup_ckAsset", [self __maxSizeForCKRecordString], error);
  if (!v7)
  {
    v19 = 0;
    goto LABEL_20;
  }

  v8 = stringFromCKRecord(recordCopy, @"CD_productNumber", @"CD_productNumber_ckAsset", [self __maxSizeForCKRecordString], error);
  if (v8)
  {
    errorCopy = error;
    v35 = v8;
    v9 = [[HMDNetworkRouterFirewallRuleAccessoryIdentifier alloc] initWithProductGroup:v7 productNumber:v8 firmwareVersion:0];
    cloudKitZoneName = [(HMDNetworkRouterFirewallRuleAccessoryIdentifier *)v9 cloudKitZoneName];
    recordID = [recordCopy recordID];
    zoneID = [recordID zoneID];
    zoneName = [zoneID zoneName];
    v14 = [cloudKitZoneName isEqualToString:zoneName];

    if (v14)
    {
      cloudKitRecordName = [(HMDNetworkRouterFirewallRuleAccessoryIdentifier *)v9 cloudKitRecordName];
      recordID2 = [recordCopy recordID];
      recordName = [recordID2 recordName];
      v18 = [cloudKitRecordName isEqualToString:recordName];

      if ((v18 & 1) == 0)
      {
        v26 = objc_autoreleasePoolPush();
        selfCopy = self;
        v28 = HMFGetOSLogHandle();
        v8 = v35;
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          v29 = HMFGetLogIdentifier();
          recordID3 = [recordCopy recordID];
          hmbDescription = [recordID3 hmbDescription];
          *buf = 138544130;
          v37 = v29;
          v38 = 2112;
          v39 = @"CD_productNumber";
          v40 = 2112;
          v41 = v35;
          v42 = 2112;
          v43 = hmbDescription;
          _os_log_impl(&dword_229538000, v28, OS_LOG_TYPE_ERROR, "%{public}@'%@' field value '%@' does not match record name on %@", buf, 0x2Au);
        }

        objc_autoreleasePoolPop(v26);
        if (errorCopy)
        {
          [MEMORY[0x277CCA9B8] hmErrorWithCode:53];
          *errorCopy = v19 = 0;
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
      selfCopy2 = self;
      v22 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v23 = HMFGetLogIdentifier();
        recordID4 = [recordCopy recordID];
        hmbDescription2 = [recordID4 hmbDescription];
        *buf = 138544130;
        v37 = v23;
        v38 = 2112;
        v39 = @"CD_productGroup";
        v40 = 2112;
        v41 = v7;
        v42 = 2112;
        v43 = hmbDescription2;
        _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_ERROR, "%{public}@'%@' field value '%@' does not match zone name on %@", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v20);
      if (errorCopy)
      {
        [MEMORY[0x277CCA9B8] hmErrorWithCode:53];
        *errorCopy = v19 = 0;
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

+ (unint64_t)__maxSizeFromPreferenceWithKey:(id)key defaultValue:(unint64_t)value
{
  keyCopy = key;
  if (isInternalBuild())
  {
    mEMORY[0x277D0F8D0] = [MEMORY[0x277D0F8D0] sharedPreferences];
    v7 = [mEMORY[0x277D0F8D0] preferenceForKey:keyCopy];

    numberValue = [v7 numberValue];

    if (numberValue)
    {
      numberValue2 = [v7 numberValue];
      value = [numberValue2 unsignedIntegerValue];
    }
  }

  return value;
}

- (void)__retryFetchWithFetchInfo:(id)info
{
  v30 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  [infoCopy retryIntervalSeconds];
  v6 = v5;
  [infoCopy retryIntervalSeconds];
  v8 = dispatch_time(0, (v7 * 1000000000.0));
  v9 = dispatch_get_global_queue(0, 0);
  activity = [infoCopy activity];
  if (v6 <= 0.0)
  {
    v11 = "fetch the next batch of records";
  }

  else
  {
    v11 = "retry the fetch";
  }

  [infoCopy retryIntervalSeconds];
  [activity markWithFormat:@"Will %s in %lu seconds", v11, v12];

  v13 = objc_autoreleasePoolPush();
  selfCopy = self;
  v15 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = HMFGetLogIdentifier();
    [infoCopy retryIntervalSeconds];
    *buf = 138543874;
    v25 = v16;
    v26 = 2080;
    v27 = v11;
    v28 = 2048;
    v29 = v17;
    _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@Will %s in %lu seconds", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v13);
  [infoCopy setShouldRetry:0];
  [infoCopy setRetryCount:{objc_msgSend(infoCopy, "retryCount") + 1}];
  objc_initWeak(buf, selfCopy);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__HMDNetworkRouterFirewallRuleCloudZone___retryFetchWithFetchInfo___block_invoke;
  block[3] = &unk_278681A08;
  v21 = infoCopy;
  v18 = infoCopy;
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

- (BOOL)__canRecoverFromError:(id)error fetchInfo:(id)info
{
  v38 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  infoCopy = info;
  if ([errorCopy hmbIsCKPartialFailureError])
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v35 = __Block_byref_object_copy__213133;
    v36 = __Block_byref_object_dispose__213134;
    v37 = 0;
    userInfo = [errorCopy userInfo];
    v9 = [userInfo objectForKeyedSubscript:*MEMORY[0x277CBBFB0]];
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

      errorCopy = v11;
    }

    _Block_object_dispose(buf, 8);

    if (!v10)
    {
      goto LABEL_7;
    }
  }

  if (![errorCopy hmd_isCKError] || (objc_msgSend(errorCopy, "hmd_isNonRecoverableCKError") & 1) != 0)
  {
    goto LABEL_7;
  }

  code = [errorCopy code];
  switch(code)
  {
    case 21:
      activity = [infoCopy activity];
      [activity markWithFormat:@"Change token has expired: %@", errorCopy];

      v27 = objc_autoreleasePoolPush();
      selfCopy = self;
      v29 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        v30 = HMFGetLogIdentifier();
        *buf = 138543618;
        *&buf[4] = v30;
        *&buf[12] = 2112;
        *&buf[14] = errorCopy;
        _os_log_impl(&dword_229538000, v29, OS_LOG_TYPE_DEFAULT, "%{public}@Change token has expired: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v27);
      [infoCopy setChangeToken:0];
      [infoCopy setShouldRetry:1];
      goto LABEL_25;
    case 28:
      activity2 = [infoCopy activity];
      [activity2 markWithFormat:@"Zone was deleted: %@", errorCopy];

      v22 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v24 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v25 = HMFGetLogIdentifier();
        *buf = 138543618;
        *&buf[4] = v25;
        *&buf[12] = 2112;
        *&buf[14] = errorCopy;
        _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_DEFAULT, "%{public}@Zone was deleted: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v22);
      [(HMBCloudZone *)selfCopy2 handleDeletion];
      goto LABEL_25;
    case 26:
      activity3 = [infoCopy activity];
      [activity3 markWithFormat:@"Zone does not exist: %@", errorCopy];

      v17 = objc_autoreleasePoolPush();
      selfCopy4 = self;
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = HMFGetLogIdentifier();
        *buf = 138543618;
        *&buf[4] = v20;
        *&buf[12] = 2112;
        *&buf[14] = errorCopy;
        _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@Zone does not exist: %@", buf, 0x16u);
      }

LABEL_24:

      objc_autoreleasePoolPop(v17);
LABEL_25:
      v12 = 1;
      goto LABEL_8;
  }

  [errorCopy hmbCloudKitRetryDelay];
  [infoCopy setRetryIntervalSeconds:?];
  if ([infoCopy shouldRetry])
  {
    activity4 = [infoCopy activity];
    [activity4 markWithFormat:@"Ignoring non-fatal error: %@", errorCopy];

    v17 = objc_autoreleasePoolPush();
    selfCopy4 = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v32 = HMFGetLogIdentifier();
      *buf = 138543618;
      *&buf[4] = v32;
      *&buf[12] = 2112;
      *&buf[14] = errorCopy;
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

- (BOOL)__commitLocalChanges:(id)changes error:(id *)error
{
  v63 = *MEMORY[0x277D85DE8];
  changesCopy = changes;
  activity = [changesCopy activity];
  [activity markWithFormat:@"Committing local changes"];

  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543362;
    v60 = v11;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Committing local changes", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v8);
  mirrorInput = [changesCopy mirrorInput];
  options = [changesCopy options];
  v14 = [mirrorInput frmSyncCommitWithOptions:options error:error];

  activity2 = [changesCopy activity];
  v16 = activity2;
  if ((v14 & 1) == 0)
  {
    [activity2 markWithFormat:@"Failed to commit: %@", *error];

    v37 = objc_autoreleasePoolPush();
    v38 = selfCopy;
    v39 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      v40 = HMFGetLogIdentifier();
      v41 = *error;
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

  [activity2 markWithFormat:@"Committed successfully"];

  v17 = objc_autoreleasePoolPush();
  v18 = selfCopy;
  v19 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = HMFGetLogIdentifier();
    *buf = 138543362;
    v60 = v20;
    _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@Committed successfully", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v17);
  originalChangeToken = [changesCopy originalChangeToken];
  changeToken = [changesCopy changeToken];
  v23 = HMFEqualObjects();

  activity3 = [changesCopy activity];
  changeToken2 = [changesCopy changeToken];
  hmbDescription = [changeToken2 hmbDescription];
  v27 = hmbDescription;
  if (!v23)
  {
    [activity3 markWithFormat:@"Updating change token: %@", hmbDescription];

    v43 = objc_autoreleasePoolPush();
    v44 = v18;
    v45 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
    {
      v46 = HMFGetLogIdentifier();
      changeToken3 = [changesCopy changeToken];
      hmbDescription2 = [changeToken3 hmbDescription];
      *buf = 138543618;
      v60 = v46;
      v61 = 2112;
      v62 = hmbDescription2;
      _os_log_impl(&dword_229538000, v45, OS_LOG_TYPE_INFO, "%{public}@Updating change token: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v43);
    cloudDatabase = [(HMBCloudZone *)v44 cloudDatabase];
    changeToken4 = [changesCopy changeToken];
    cloudZoneID = [(HMBCloudZone *)v44 cloudZoneID];
    [cloudDatabase updateServerChangeToken:changeToken4 forZoneWithID:cloudZoneID];

    activity4 = [changesCopy activity];
    changeToken5 = [changesCopy changeToken];
    hmbDescription3 = [changeToken5 hmbDescription];
    [activity4 markWithFormat:@"Updated change token successfully: %@", hmbDescription3];

    v28 = objc_autoreleasePoolPush();
    v55 = v44;
    v30 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
    {
      goto LABEL_17;
    }

    v31 = HMFGetLogIdentifier();
    changeToken6 = [changesCopy changeToken];
    hmbDescription4 = [changeToken6 hmbDescription];
    *buf = 138543618;
    v60 = v31;
    v61 = 2112;
    v62 = hmbDescription4;
    v34 = "%{public}@Updated change token successfully: %@";
    v35 = v30;
    v36 = OS_LOG_TYPE_INFO;
    goto LABEL_16;
  }

  [activity3 markWithFormat:@"Change token does not need to be updated: %@", hmbDescription];

  v28 = objc_autoreleasePoolPush();
  v29 = v18;
  v30 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    v31 = HMFGetLogIdentifier();
    changeToken6 = [changesCopy changeToken];
    hmbDescription4 = [changeToken6 hmbDescription];
    *buf = 138543618;
    v60 = v31;
    v61 = 2112;
    v62 = hmbDescription4;
    v34 = "%{public}@Change token does not need to be updated: %@";
    v35 = v30;
    v36 = OS_LOG_TYPE_DEFAULT;
LABEL_16:
    _os_log_impl(&dword_229538000, v35, v36, v34, buf, 0x16u);
  }

LABEL_17:

  objc_autoreleasePoolPop(v28);
  if (![changesCopy shouldRetry])
  {
LABEL_20:
    LOBYTE(v42) = 1;
    goto LABEL_21;
  }

  localZone = [(HMBCloudZone *)v18 localZone];
  v42 = [localZone createMirrorInputWithError:error];

  if (v42)
  {
    [changesCopy setMirrorInput:v42];

    goto LABEL_20;
  }

LABEL_21:

  v57 = *MEMORY[0x277D85DE8];
  return v42;
}

- (void)__zoneChangesCompleted:(id)completed fetchInfo:(id)info
{
  v29 = *MEMORY[0x277D85DE8];
  completedCopy = completed;
  infoCopy = info;
  activity = [infoCopy activity];
  v9 = activity;
  if (completedCopy)
  {
    [activity markWithFormat:@"Zone change operation completed unsuccessfully: %@", completedCopy];

    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543618;
      v26 = v13;
      v27 = 2112;
      v28 = completedCopy;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@Zone change operation completed unsuccessfully: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    v14 = completedCopy;
    [(HMDNetworkRouterFirewallRuleCloudZone *)selfCopy __finalizeUpdatedRecordIDs];
  }

  else
  {
    [activity markWithFormat:@"Zone change operation completed successfully"];

    v15 = objc_autoreleasePoolPush();
    selfCopy2 = self;
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
    v19 = [(HMDNetworkRouterFirewallRuleCloudZone *)selfCopy2 __commitLocalChanges:infoCopy error:&v24];
    v20 = v24;
    v21 = v20;
    v14 = 0;
    if (!v19)
    {
      v14 = v20;
    }

    [(HMDNetworkRouterFirewallRuleCloudZone *)selfCopy2 __finalizeUpdatedRecordIDs];
    if (!v14)
    {
      goto LABEL_11;
    }
  }

  if (![(HMDNetworkRouterFirewallRuleCloudZone *)self __canRecoverFromError:v14 fetchInfo:infoCopy])
  {
    [infoCopy finishWithError:v14];
    goto LABEL_15;
  }

LABEL_11:
  if ([infoCopy shouldRetry])
  {
    [(HMDNetworkRouterFirewallRuleCloudZone *)self __retryFetchWithFetchInfo:infoCopy];
  }

  else
  {
    null = [MEMORY[0x277CBEB68] null];
    [infoCopy finishWithResult:null];
  }

LABEL_15:

  v23 = *MEMORY[0x277D85DE8];
}

- (void)__zoneChangeTokensUpdated:(id)updated fetchInfo:(id)info
{
  v22 = *MEMORY[0x277D85DE8];
  updatedCopy = updated;
  infoCopy = info;
  activity = [infoCopy activity];
  changeToken = [infoCopy changeToken];
  hmbDescription = [changeToken hmbDescription];
  [activity markWithFormat:@"Change token updated: %@", hmbDescription];

  v11 = objc_autoreleasePoolPush();
  selfCopy = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = HMFGetLogIdentifier();
    changeToken2 = [infoCopy changeToken];
    hmbDescription2 = [changeToken2 hmbDescription];
    *buf = 138543618;
    v19 = v14;
    v20 = 2112;
    v21 = hmbDescription2;
    _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@Change token updated: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v11);
  [infoCopy setChangeToken:updatedCopy];

  v17 = *MEMORY[0x277D85DE8];
}

- (void)__recordDeleted:(id)deleted recordType:(id)type fetchInfo:(id)info
{
  v42 = *MEMORY[0x277D85DE8];
  deletedCopy = deleted;
  typeCopy = type;
  infoCopy = info;
  activity = [infoCopy activity];
  hmbDescription = [deletedCopy hmbDescription];
  [activity markWithFormat:@"Fetched deleted recordID: %@ (%@)", hmbDescription, typeCopy];

  v13 = objc_autoreleasePoolPush();
  selfCopy = self;
  v15 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = HMFGetLogIdentifier();
    hmbDescription2 = [deletedCopy hmbDescription];
    *buf = 138543874;
    v37 = v16;
    v38 = 2112;
    v39 = hmbDescription2;
    v40 = 2112;
    v41 = typeCopy;
    _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@Fetched deleted recordID: %@ (%@)", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v13);
  v35 = 0;
  v18 = [deletedCopy externalID:&v35];
  v19 = v35;
  if (v18)
  {
    mirrorInput = [infoCopy mirrorInput];
    v34 = v19;
    v21 = [mirrorInput stageRemovalForModelWithExternalID:v18 error:&v34];
    v22 = v34;

    if (v21)
    {
      [(HMDNetworkRouterFirewallRuleCloudZone *)selfCopy __noteUpdatedRecordID:deletedCopy];
    }

    else
    {
      activity2 = [infoCopy activity];
      [activity2 markWithFormat:@"Failed to remove model: %@", v22];

      v29 = objc_autoreleasePoolPush();
      v30 = selfCopy;
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
    activity3 = [infoCopy activity];
    [activity3 markWithFormat:@"Failed to determine externalID: %@", v19];

    v24 = objc_autoreleasePoolPush();
    v25 = selfCopy;
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

- (void)__recordChanged:(id)changed fetchInfo:(id)info
{
  v63 = *MEMORY[0x277D85DE8];
  changedCopy = changed;
  infoCopy = info;
  recordID = [changedCopy recordID];
  activity = [infoCopy activity];
  hmbDescription = [recordID hmbDescription];
  recordType = [changedCopy recordType];
  [activity markWithFormat:@"Fetched changed record %@ (%@)", hmbDescription, recordType];

  v12 = objc_autoreleasePoolPush();
  selfCopy = self;
  v14 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = HMFGetLogIdentifier();
    hmbDescription2 = [recordID hmbDescription];
    recordType2 = [changedCopy recordType];
    *buf = 138543874;
    v58 = v15;
    v59 = 2112;
    v60 = hmbDescription2;
    v61 = 2112;
    v62 = recordType2;
    _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@Fetched changed record %@ (%@)", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v12);
  v56 = 0;
  v18 = [(HMDNetworkRouterFirewallRuleCloudZone *)selfCopy decodeModelFrom:changedCopy recordSource:4 error:&v56];
  v19 = v56;
  v20 = v19;
  if (v18)
  {
    v55 = v19;
    v21 = [changedCopy externalID:&v55];
    v22 = v55;

    if (v21)
    {
      v54 = v22;
      v23 = [changedCopy externalData:&v54];
      v24 = v54;

      if (v23)
      {
        mirrorInput = [infoCopy mirrorInput];
        v53 = v24;
        v26 = [mirrorInput stageAdditionForModel:v18 externalID:v21 externalData:v23 error:&v53];
        v51 = v53;

        if (v26)
        {
          [(HMDNetworkRouterFirewallRuleCloudZone *)selfCopy __noteUpdatedRecordID:recordID];
        }

        else
        {
          activity2 = [infoCopy activity];
          hmbDescription3 = [recordID hmbDescription];
          [activity2 markWithFormat:@"Failed to update model for %@: %@", hmbDescription3, v51];

          v44 = objc_autoreleasePoolPush();
          v45 = selfCopy;
          v46 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
          {
            v47 = HMFGetLogIdentifier();
            [recordID hmbDescription];
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
        activity3 = [infoCopy activity];
        [activity3 markWithFormat:@"Failed to determine externalData: %@", v24];

        v38 = objc_autoreleasePoolPush();
        v39 = selfCopy;
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
      activity4 = [infoCopy activity];
      [activity4 markWithFormat:@"Failed to determine externalID: %@", v22];

      v33 = objc_autoreleasePoolPush();
      v34 = selfCopy;
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
    activity5 = [infoCopy activity];
    [activity5 markWithFormat:@"Failed to decode model: %@", v20];

    v28 = objc_autoreleasePoolPush();
    v29 = selfCopy;
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
    uncommittedModifiedRecordIDsFromLastPull = [(HMDNetworkRouterFirewallRuleCloudZone *)self uncommittedModifiedRecordIDsFromLastPull];

    if (uncommittedModifiedRecordIDsFromLastPull)
    {
      uncommittedModifiedRecordIDsFromLastPull2 = [(HMDNetworkRouterFirewallRuleCloudZone *)self uncommittedModifiedRecordIDsFromLastPull];
      [uncommittedModifiedRecordIDsFromLastPull2 unionSet:self->_modifiedRecordIDsFromLastPull];
    }
  }

  uncommittedModifiedRecordIDsFromLastPull3 = [(HMDNetworkRouterFirewallRuleCloudZone *)self uncommittedModifiedRecordIDsFromLastPull];
  v7 = [uncommittedModifiedRecordIDsFromLastPull3 copy];
  [(HMDNetworkRouterFirewallRuleCloudZone *)self setModifiedRecordIDsFromLastPull:v7];

  [(HMDNetworkRouterFirewallRuleCloudZone *)self setUncommittedModifiedRecordIDsFromLastPull:0];

  os_unfair_lock_unlock((self + v3));
}

- (void)__noteUpdatedRecordID:(id)d
{
  dCopy = d;
  v4 = *MEMORY[0x277D17140];
  os_unfair_lock_lock_with_options();
  uncommittedModifiedRecordIDsFromLastPull = [(HMDNetworkRouterFirewallRuleCloudZone *)self uncommittedModifiedRecordIDsFromLastPull];

  if (uncommittedModifiedRecordIDsFromLastPull)
  {
    uncommittedModifiedRecordIDsFromLastPull2 = [(HMDNetworkRouterFirewallRuleCloudZone *)self uncommittedModifiedRecordIDsFromLastPull];
    [uncommittedModifiedRecordIDsFromLastPull2 addObject:dCopy];
  }

  else
  {
    uncommittedModifiedRecordIDsFromLastPull2 = [MEMORY[0x277CBEB58] setWithObject:dCopy];
    [(HMDNetworkRouterFirewallRuleCloudZone *)self setUncommittedModifiedRecordIDsFromLastPull:uncommittedModifiedRecordIDsFromLastPull2];
  }

  os_unfair_lock_unlock((self + v4));
}

- (void)__fetchZoneChangesWithFetchInfo:(id)info
{
  v43[1] = *MEMORY[0x277D85DE8];
  infoCopy = info;
  v5 = objc_alloc_init(MEMORY[0x277CBC3A0]);
  changeToken = [infoCopy changeToken];
  [v5 setPreviousServerChangeToken:changeToken];

  cloudZoneID = [(HMBCloudZone *)self cloudZoneID];
  zoneID = [cloudZoneID zoneID];
  v42 = zoneID;
  v43[0] = v5;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v43 forKeys:&v42 count:1];

  v10 = objc_alloc(MEMORY[0x277CBC3B8]);
  cloudZoneID2 = [(HMBCloudZone *)self cloudZoneID];
  zoneID2 = [cloudZoneID2 zoneID];
  v41 = zoneID2;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v41 count:1];
  v14 = [v10 initWithRecordZoneIDs:v13 configurationsByRecordZoneID:v9];

  [v14 setFetchAllChanges:1];
  objc_initWeak(&location, self);
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __73__HMDNetworkRouterFirewallRuleCloudZone___fetchZoneChangesWithFetchInfo___block_invoke;
  v37[3] = &unk_278680920;
  v15 = infoCopy;
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
  selfCopy = self;
  objc_copyWeak(&v27, &location);
  [v14 setFetchRecordZoneChangesCompletionBlock:v24];
  database = [(HMBCloudZone *)self database];
  [database addOperation:v14];

  operationStartTime = [v19 operationStartTime];
  LODWORD(database) = operationStartTime == 0;

  if (database)
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

- (id)fetchChangesWithToken:(id)token options:(id)options
{
  tokenCopy = token;
  optionsCopy = options;
  objc_initWeak(&location, self);
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __71__HMDNetworkRouterFirewallRuleCloudZone_fetchChangesWithToken_options___block_invoke;
  v18 = &unk_2786808F8;
  objc_copyWeak(&v21, &location);
  v8 = optionsCopy;
  v19 = v8;
  v9 = tokenCopy;
  v20 = v9;
  v10 = _Block_copy(&v15);
  v11 = MEMORY[0x277D2C900];
  globalAsyncScheduler = [MEMORY[0x277D2C938] globalAsyncScheduler];
  v13 = [v11 lazyFutureWithBlock:v10 scheduler:globalAsyncScheduler];

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

- (void)startUpWithLocalZone:(id)zone
{
  [(HMBCloudZone *)self setLocalZone:zone];
  startUp = [(HMBCloudZone *)self startUp];
  [startUp finishWithNoResult];
}

- (void)setUncommittedModifiedRecordIDsFromLastPull:(id)pull
{
  pullCopy = pull;
  os_unfair_lock_assert_owner((self + *MEMORY[0x277D17140]));
  uncommittedModifiedRecordIDsFromLastPull = self->_uncommittedModifiedRecordIDsFromLastPull;
  self->_uncommittedModifiedRecordIDsFromLastPull = pullCopy;
}

- (NSMutableSet)uncommittedModifiedRecordIDsFromLastPull
{
  os_unfair_lock_assert_owner((self + *MEMORY[0x277D17140]));
  uncommittedModifiedRecordIDsFromLastPull = self->_uncommittedModifiedRecordIDsFromLastPull;

  return uncommittedModifiedRecordIDsFromLastPull;
}

- (void)setModifiedRecordIDsFromLastPull:(id)pull
{
  pullCopy = pull;
  os_unfair_lock_assert_owner((self + *MEMORY[0x277D17140]));
  modifiedRecordIDsFromLastPull = self->_modifiedRecordIDsFromLastPull;
  self->_modifiedRecordIDsFromLastPull = pullCopy;
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
  uncommittedModifiedRecordIDsFromLastPull = [(HMDNetworkRouterFirewallRuleCloudZone *)self uncommittedModifiedRecordIDsFromLastPull];
  v22 = [uncommittedModifiedRecordIDsFromLastPull copy];

  os_unfair_lock_unlock((self + v3));
  v24.receiver = self;
  v24.super_class = HMDNetworkRouterFirewallRuleCloudZone;
  attributeDescriptions = [(HMBCloudZone *)&v24 attributeDescriptions];
  v5 = objc_alloc(MEMORY[0x277D0F778]);
  v23 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDNetworkRouterFirewallRuleCloudZone useAnonymousRequests](self, "useAnonymousRequests")}];
  v6 = [v5 initWithName:@"UseAnonymousRequests" value:v23];
  v25[0] = v6;
  v7 = objc_alloc(MEMORY[0x277D0F778]);
  watchedRecordIDs = [(HMDNetworkRouterFirewallRuleCloudZone *)self watchedRecordIDs];
  v9 = [v7 initWithName:@"WatchedRecordIDs" value:watchedRecordIDs];
  v25[1] = v9;
  v10 = objc_alloc(MEMORY[0x277D0F778]);
  signatureVerificationPublicKeys = [(HMDNetworkRouterFirewallRuleCloudZone *)self signatureVerificationPublicKeys];
  v12 = [v10 initWithName:@"SignatureVerificationPublicKeys" value:signatureVerificationPublicKeys];
  v25[2] = v12;
  v13 = objc_alloc(MEMORY[0x277D0F778]);
  modifiedRecordIDsFromLastPull = [(HMDNetworkRouterFirewallRuleCloudZone *)self modifiedRecordIDsFromLastPull];
  v15 = [v13 initWithName:@"ModifiedRecordIDsFromLastPull" value:modifiedRecordIDsFromLastPull];
  v25[3] = v15;
  v16 = [objc_alloc(MEMORY[0x277D0F778]) initWithName:@"UncommittedModifiedRecordIDsFromLastPull" value:v22];
  v25[4] = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:5];
  v18 = [attributeDescriptions arrayByAddingObjectsFromArray:v17];

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

- (HMDNetworkRouterFirewallRuleCloudZone)initWithCloudDatabase:(id)database state:(id)state useAnonymousRequests:(BOOL)requests watchedRecordIDs:(id)ds signatureVerificationPublicKeys:(id)keys
{
  v30 = *MEMORY[0x277D85DE8];
  databaseCopy = database;
  stateCopy = state;
  dsCopy = ds;
  keysCopy = keys;
  if (![keysCopy count])
  {
    context = objc_autoreleasePoolPush();
    selfCopy = self;
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
  v17 = [(HMBCloudZone *)&v27 initWithCloudDatabase:databaseCopy configuration:v16 state:stateCopy];

  if (v17)
  {
    *(&v17->_useAnonymousRequests + 4) = requests;
    objc_storeStrong(&v17->_watchedRecordIDs, ds);
    objc_storeStrong(&v17->_signatureVerificationPublicKeys, keys);
    v18 = v17;
  }

  v19 = *MEMORY[0x277D85DE8];
  return v17;
}

@end