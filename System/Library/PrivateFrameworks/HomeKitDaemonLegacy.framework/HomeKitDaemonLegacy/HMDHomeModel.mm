@interface HMDHomeModel
+ (id)properties;
- (HMDNaturalLightingContext)naturalLightingContext;
- (void)setNaturalLightingContext:(id)context;
@end

@implementation HMDHomeModel

+ (id)properties
{
  if (properties_onceToken_81287 != -1)
  {
    dispatch_once(&properties_onceToken_81287, &__block_literal_global_81288);
  }

  v3 = properties__properties_81289;

  return v3;
}

void __26__HMDHomeModel_properties__block_invoke()
{
  v43[39] = *MEMORY[0x277D85DE8];
  v42[0] = @"name";
  v41 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v43[0] = v41;
  v42[1] = @"ownerName";
  v40 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v43[1] = v40;
  v42[2] = @"ownerUserID";
  v39 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v43[2] = v39;
  v42[3] = @"ownerUUID";
  v38 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v43[3] = v38;
  v42[4] = @"creationDate";
  v37 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v43[4] = v37;
  v42[5] = @"firstHAPAccessoryAddedDate";
  v36 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v43[5] = v36;
  v42[6] = @"defaultRoomUUID";
  v35 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v43[6] = v35;
  v42[7] = @"presenceAuthorizationStatus";
  v34 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v43[7] = v34;
  v42[8] = @"presenceComputeStatus";
  v33 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v43[8] = v33;
  v42[9] = @"ownerPublicKey";
  v32 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v43[9] = v32;
  v42[10] = @"homeLocationData";
  v31 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v43[10] = v31;
  v42[11] = @"primaryResidentUUID";
  v30 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v43[11] = v30;
  v42[12] = @"sharedHomeSourceVersion";
  v29 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v43[12] = v29;
  v42[13] = @"networkProtectionMode";
  v28 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v43[13] = v28;
  v42[14] = @"supportsNetworkProtection";
  v27 = +[HMDBackingStoreModelObjectStorageInfo deprecatedField];
  v43[14] = v27;
  v42[15] = @"activeNetworkRouterAccessoryUUID";
  v26 = +[HMDBackingStoreModelObjectStorageInfo deprecatedField];
  v43[15] = v26;
  v42[16] = @"primaryNetworkRouterManagingDeviceUUID";
  v25 = +[HMDBackingStoreModelObjectStorageInfo deprecatedField];
  v43[16] = v25;
  v42[17] = @"multiUserEnabled";
  v24 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v43[17] = v24;
  v42[18] = @"hasAnyUserAcknowledgedCameraRecordingOnboarding";
  v23 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v43[18] = v23;
  v42[19] = @"hasOnboardedForAccessCode";
  v22 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v43[19] = v22;
  v42[20] = @"hasOnboardedForWalletKey";
  v21 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v43[20] = v21;
  v42[21] = @"encodedNfcReaderKey";
  v20 = +[HMDBackingStoreModelObjectStorageInfo deprecatedField];
  v43[21] = v20;
  v42[22] = @"encodedNaturalLightingContext";
  v19 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v43[22] = v19;
  v42[23] = @"chipFabricID";
  v18 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v43[23] = v18;
  v42[24] = @"chipFabricIndex";
  v17 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v43[24] = v17;
  v42[25] = @"chipLastNodeID";
  v16 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v43[25] = v16;
  v42[26] = @"chipRootCertificate";
  v15 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v43[26] = v15;
  v42[27] = @"chipOperationalCertificate";
  v14 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v43[27] = v14;
  v42[28] = @"chipIntermediateCertificate";
  v13 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v43[28] = v13;
  v42[29] = @"chipKeyValueStore";
  v12 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v43[29] = v12;
  v42[30] = @"matterControllerNodeID";
  v0 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v43[30] = v0;
  v42[31] = @"matterFabricID";
  v1 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v43[31] = v1;
  v42[32] = @"threadOperationalDataset";
  v2 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v43[32] = v2;
  v42[33] = @"soundCheckEnabled";
  v3 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v43[33] = v3;
  v42[34] = @"analysisOptions";
  v4 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v43[34] = v4;
  v42[35] = @"didOnboardAnalysis";
  v5 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v43[35] = v5;
  v42[36] = @"siriPhraseOptions";
  v6 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v43[36] = v6;
  v42[37] = @"locationServicesEnabled";
  v7 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v43[37] = v7;
  v42[38] = @"didOnboardLocationServices";
  v8 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v43[38] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v43 forKeys:v42 count:39];
  v10 = properties__properties_81289;
  properties__properties_81289 = v9;

  v11 = *MEMORY[0x277D85DE8];
}

- (HMDNaturalLightingContext)naturalLightingContext
{
  v17 = *MEMORY[0x277D85DE8];
  encodedNaturalLightingContext = [(HMDHomeModel *)self encodedNaturalLightingContext];
  if (encodedNaturalLightingContext)
  {
    v10 = 0;
    v3 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:encodedNaturalLightingContext error:&v10];
    v4 = v10;
    if (!v3)
    {
      v5 = objc_autoreleasePoolPush();
      v6 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v7 = HMFGetLogIdentifier();
        *buf = 138543874;
        v12 = v7;
        v13 = 2112;
        v14 = encodedNaturalLightingContext;
        v15 = 2112;
        v16 = v4;
        _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_ERROR, "%{public}@Failed to decode natural lighting context set on home model %@:%@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v5);
    }
  }

  else
  {
    v3 = 0;
  }

  v8 = *MEMORY[0x277D85DE8];

  return v3;
}

- (void)setNaturalLightingContext:(id)context
{
  v18 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v11 = 0;
  v5 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:contextCopy requiringSecureCoding:1 error:&v11];
  v6 = v11;
  if (v5)
  {
    [(HMDHomeModel *)self setEncodedNaturalLightingContext:v5];
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      *buf = 138543874;
      v13 = v9;
      v14 = 2112;
      v15 = contextCopy;
      v16 = 2112;
      v17 = v6;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_ERROR, "%{public}@Failed to set encoded natural lighting context on the home model %@:%@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
  }

  v10 = *MEMORY[0x277D85DE8];
}

@end