@interface HMDHomeModel
+ (id)cd_getHomeFromUUID:(id)a3;
+ (id)properties;
- (HMDHomeNFCReaderKey)nfcReaderKey;
- (HMDNaturalLightingContext)naturalLightingContext;
- (id)cd_generateValueForModelObjectFromManagedObject:(id)a3 modelObjectField:(id)a4 modelFieldInfo:(id)a5;
- (id)cd_generateValueForProperty:(id)a3 managedObjectField:(id)a4 context:(id)a5;
- (void)setNaturalLightingContext:(id)a3;
- (void)setNfcReaderKey:(id)a3;
@end

@implementation HMDHomeModel

+ (id)properties
{
  if (properties_onceToken_123915 != -1)
  {
    dispatch_once(&properties_onceToken_123915, &__block_literal_global_123916);
  }

  v3 = properties__properties_123917;

  return v3;
}

void __26__HMDHomeModel_properties__block_invoke()
{
  v58[54] = *MEMORY[0x277D85DE8];
  v57[0] = @"name";
  v56 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v58[0] = v56;
  v57[1] = @"ownerName";
  v55 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v58[1] = v55;
  v57[2] = @"ownerUserID";
  v54 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v58[2] = v54;
  v57[3] = @"ownerUUID";
  v53 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v58[3] = v53;
  v57[4] = @"creationDate";
  v52 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v58[4] = v52;
  v57[5] = @"firstHAPAccessoryAddedDate";
  v51 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v58[5] = v51;
  v57[6] = @"defaultRoomUUID";
  v50 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v58[6] = v50;
  v57[7] = @"presenceAuthorizationStatus";
  v49 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v58[7] = v49;
  v57[8] = @"presenceComputeStatus";
  v48 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v58[8] = v48;
  v57[9] = @"ownerPublicKey";
  v47 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v58[9] = v47;
  v57[10] = @"homeLocationData";
  v46 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v58[10] = v46;
  v57[11] = @"primaryResidentUUID";
  v45 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v58[11] = v45;
  v57[12] = @"sharedHomeSourceVersion";
  v44 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v58[12] = v44;
  v57[13] = @"networkProtectionMode";
  v43 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v58[13] = v43;
  v57[14] = @"supportsNetworkProtection";
  v42 = +[HMDBackingStoreModelObjectStorageInfo deprecatedField];
  v58[14] = v42;
  v57[15] = @"activeNetworkRouterAccessoryUUID";
  v41 = +[HMDBackingStoreModelObjectStorageInfo deprecatedField];
  v58[15] = v41;
  v57[16] = @"primaryNetworkRouterManagingDeviceUUID";
  v40 = +[HMDBackingStoreModelObjectStorageInfo deprecatedField];
  v58[16] = v40;
  v57[17] = @"multiUserEnabled";
  v39 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v58[17] = v39;
  v57[18] = @"matCredGRK";
  v38 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v58[18] = v38;
  v57[19] = @"hasAnyUserAcknowledgedCameraRecordingOnboarding";
  v37 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v58[19] = v37;
  v57[20] = @"hasOnboardedForAccessCode";
  v36 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v58[20] = v36;
  v57[21] = @"hasOnboardedForWalletKey";
  v35 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v58[21] = v35;
  v57[22] = @"encodedNfcReaderKey";
  v34 = +[HMDBackingStoreModelObjectStorageInfo deprecatedField];
  v58[22] = v34;
  v57[23] = @"encodedNaturalLightingContext";
  v33 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v58[23] = v33;
  v57[24] = @"chipFabricID";
  v32 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v58[24] = v32;
  v57[25] = @"chipFabricIndex";
  v31 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v58[25] = v31;
  v57[26] = @"chipLastNodeID";
  v30 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v58[26] = v30;
  v57[27] = @"chipRootCertificate";
  v29 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v58[27] = v29;
  v57[28] = @"chipOperationalCertificate";
  v28 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v58[28] = v28;
  v57[29] = @"chipIntermediateCertificate";
  v27 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v58[29] = v27;
  v57[30] = @"chipKeyValueStore";
  v26 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v58[30] = v26;
  v57[31] = @"matterControllerNodeID";
  v25 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v58[31] = v25;
  v57[32] = @"matterFabricID";
  v24 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v58[32] = v24;
  v57[33] = @"threadOperationalDataset";
  v23 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v58[33] = v23;
  v57[34] = @"soundCheckEnabled";
  v22 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v58[34] = v22;
  v57[35] = @"analysisOptions";
  v21 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v58[35] = v21;
  v57[36] = @"didOnboardAnalysis";
  v20 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v58[36] = v20;
  v57[37] = @"siriPhraseOptions";
  v19 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v58[37] = v19;
  v57[38] = @"locationServicesEnabled";
  v18 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v58[38] = v18;
  v57[39] = @"didOnboardLocationServices";
  v17 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v58[39] = v17;
  v57[40] = @"residentSyncClientDidSync";
  v16 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v58[40] = v16;
  v57[41] = @"owned";
  v15 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v58[41] = v15;
  v57[42] = @"hh2EncodedNfcReaderKey";
  v14 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v58[42] = v14;
  v57[43] = @"primaryIPv4NetworkSignature";
  v13 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v58[43] = v13;
  v57[44] = @"primaryIPv6NetworkSignature";
  v12 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v58[44] = v12;
  v57[45] = @"primaryWiFiSSID";
  v0 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v58[45] = v0;
  v57[46] = @"primaryWiFiRequiresPassword";
  v1 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v58[46] = v1;
  v57[47] = @"residentSelectionVersion";
  v2 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v58[47] = v2;
  v57[48] = @"didOnboardEventLog";
  v3 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v58[48] = v3;
  v57[49] = @"eventLogHomeSettingEnabled";
  v4 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v58[49] = v4;
  v57[50] = @"eventLogDuration";
  v5 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v58[50] = v5;
  v57[51] = @"timeZone";
  v6 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v58[51] = v6;
  v57[52] = @"numberOfCameras";
  v7 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v58[52] = v7;
  v57[53] = @"isAllowedToEnableAdaptiveTemperatureAutomations";
  v8 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v58[53] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v58 forKeys:v57 count:54];
  v10 = properties__properties_123917;
  properties__properties_123917 = v9;

  v11 = *MEMORY[0x277D85DE8];
}

- (HMDHomeNFCReaderKey)nfcReaderKey
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = [(HMDHomeModel *)self hh2EncodedNfcReaderKey];
  if (v2)
  {
    v12 = 0;
    v3 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v2 error:&v12];
    v4 = v12;
    v5 = v4;
    if (v3)
    {
      v6 = 1;
    }

    else
    {
      v6 = v4 == 0;
    }

    if (!v6)
    {
      v7 = objc_autoreleasePoolPush();
      v8 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = HMFGetLogIdentifier();
        *buf = 138543874;
        v14 = v9;
        v15 = 2112;
        v16 = v2;
        v17 = 2112;
        v18 = v5;
        _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_ERROR, "%{public}@Failed to decode nfc reader key set on model %@:%@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v7);
    }
  }

  else
  {
    v3 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];

  return v3;
}

- (void)setNfcReaderKey:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v12 = 0;
  v5 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v4 requiringSecureCoding:1 error:&v12];
  v6 = v12;
  if (v5)
  {
    [(HMDHomeModel *)self setHh2EncodedNfcReaderKey:v5];
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    v8 = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543874;
      v14 = v10;
      v15 = 2112;
      v16 = v4;
      v17 = 2112;
      v18 = v6;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_ERROR, "%{public}@Failed to set encoded nfc reader key on model %@:%@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (HMDNaturalLightingContext)naturalLightingContext
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = [(HMDHomeModel *)self encodedNaturalLightingContext];
  if (v2)
  {
    v10 = 0;
    v3 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v2 error:&v10];
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
        v14 = v2;
        v15 = 2112;
        v16 = v4;
        _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_ERROR, "%{public}@Failed to decode natural lighting context set on home model %@:%@", buf, 0x20u);
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

- (void)setNaturalLightingContext:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v11 = 0;
  v5 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v4 requiringSecureCoding:1 error:&v11];
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
      v15 = v4;
      v16 = 2112;
      v17 = v6;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_ERROR, "%{public}@Failed to set encoded natural lighting context on the home model %@:%@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (id)cd_generateValueForProperty:(id)a3 managedObjectField:(id)a4 context:(id)a5
{
  v63 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v9 isEqualToString:@"owner"])
  {
    if ([(HMDBackingStoreModelObject *)self propertyWasSet:@"ownerUUID"])
    {
      v11 = objc_alloc(MEMORY[0x277CCAD78]);
      v12 = [(HMDHomeModel *)self ownerUUID];
      v13 = [v11 initWithUUIDString:v12];

      if (v13)
      {
        v56 = 0;
        v14 = [HMDBackingStore cdlsFetchManagedObjectWithUUID:v13 ofModelType:objc_opt_class() error:&v56];
        v15 = v56;
        v16 = v15;
        if (v14 && !v15)
        {
          goto LABEL_23;
        }

        v17 = objc_autoreleasePoolPush();
        v18 = self;
        v19 = HMFGetOSLogHandle();
        if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
LABEL_17:

          objc_autoreleasePoolPop(v17);
LABEL_23:

LABEL_28:
          goto LABEL_46;
        }

        v20 = HMFGetLogIdentifier();
        *buf = 138543874;
        v58 = v20;
        v59 = 2112;
        v60 = v13;
        v61 = 2112;
        v62 = v16;
        v21 = "%{public}@Unable to find NSManagedObject for home owner with UUID %@: %@";
LABEL_16:
        _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_ERROR, v21, buf, 0x20u);

        goto LABEL_17;
      }

      goto LABEL_27;
    }

    goto LABEL_45;
  }

  if ([v9 isEqualToString:@"primaryResident"])
  {
    if ([(HMDBackingStoreModelObject *)self propertyWasSet:@"primaryResidentUUID"])
    {
      v22 = [(HMDHomeModel *)self primaryResidentUUID];

      if (v22)
      {
        v23 = objc_alloc(MEMORY[0x277CCAD78]);
        v24 = [(HMDHomeModel *)self primaryResidentUUID];
        v13 = [v23 initWithUUIDString:v24];

        if (v13)
        {
          v55 = 0;
          v14 = [HMDBackingStore cdlsFetchManagedObjectWithUUID:v13 ofModelType:objc_opt_class() error:&v55];
          v25 = v55;
          v16 = v25;
          if (v14 && !v25)
          {
            goto LABEL_23;
          }

          v17 = objc_autoreleasePoolPush();
          v18 = self;
          v19 = HMFGetOSLogHandle();
          if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_17;
          }

          v20 = HMFGetLogIdentifier();
          *buf = 138543874;
          v58 = v20;
          v59 = 2112;
          v60 = v13;
          v61 = 2112;
          v62 = v16;
          v21 = "%{public}@Unable to find NSManagedObject for resident device with UUID %@: %@";
          goto LABEL_16;
        }

LABEL_27:
        v14 = 0;
        goto LABEL_28;
      }

      v32 = [MEMORY[0x277CBEB68] null];
      goto LABEL_36;
    }

    goto LABEL_45;
  }

  if ([v9 isEqualToString:@"defaultRoom"])
  {
    if ([(HMDBackingStoreModelObject *)self propertyWasSet:@"defaultRoomUUID"])
    {
      v13 = v10;
      if (self)
      {
        v16 = [(HMDBackingStoreModelObject *)self managedObject];
        v14 = [v16 defaultRoom];
        if (!v14)
        {
          v26 = objc_alloc(MEMORY[0x277CCAD78]);
          v27 = [(HMDHomeModel *)self defaultRoomUUID];
          v28 = [v26 initWithUUIDString:v27];

          v14 = [[_MKFRoom alloc] initWithContext:v13];
          [(_MKFRoom *)v14 setModelID:v28];
          [(_MKFRoom *)v14 setHome:v16];
          [v16 addRooms_Object:v14];
          [v16 setDefaultRoom:v14];
        }

        goto LABEL_23;
      }

      goto LABEL_27;
    }

    goto LABEL_45;
  }

  if ([v9 isEqualToString:@"naturalLightingContext"])
  {
    if (![(HMDBackingStoreModelObject *)self propertyWasSet:@"encodedNaturalLightingContext"])
    {
      goto LABEL_45;
    }

    v29 = [(HMDHomeModel *)self naturalLightingContext];
    goto LABEL_32;
  }

  if (![v9 isEqualToString:@"nfcReaderKey"])
  {
    if (([v9 isEqualToString:@"location"] & 1) != 0 || (objc_msgSend(v9, "isEqualToString:", @"locationUpdateTimeStamp") & 1) != 0 || objc_msgSend(v9, "isEqualToString:", @"locationSource"))
    {
      if (![(HMDBackingStoreModelObject *)self propertyWasSet:@"homeLocationData"])
      {
        goto LABEL_45;
      }

      v33 = objc_autoreleasePoolPush();
      v34 = objc_alloc(MEMORY[0x277CCAAC8]);
      v35 = [(HMDHomeModel *)self homeLocationData];
      v54 = 0;
      v36 = [v34 initForReadingFromData:v35 error:&v54];
      v37 = v54;

      if (v37)
      {
        v38 = objc_autoreleasePoolPush();
        v39 = self;
        v40 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
        {
          v41 = HMFGetLogIdentifier();
          *buf = 138543618;
          v58 = v41;
          v59 = 2112;
          v60 = v37;
          _os_log_impl(&dword_229538000, v40, OS_LOG_TYPE_ERROR, "%{public}@Unable to initialize unarchiver for HomeLocationData: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v38);
        objc_autoreleasePoolPop(v33);
        goto LABEL_45;
      }

      v44 = [v36 decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277CCA308]];
      if (!v44)
      {
        v46 = objc_autoreleasePoolPush();
        v47 = self;
        v48 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
        {
          v49 = HMFGetLogIdentifier();
          *buf = 138543362;
          v58 = v49;
          _os_log_impl(&dword_229538000, v48, OS_LOG_TYPE_ERROR, "%{public}@Unable to unarchive HomeLocationData", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v46);
        v14 = 0;
        goto LABEL_60;
      }

      if ([v9 isEqualToString:@"location"])
      {
        v45 = [v44 location];
LABEL_59:
        v14 = v45;
LABEL_60:

        objc_autoreleasePoolPop(v33);
        goto LABEL_46;
      }

      if ([v9 isEqualToString:@"locationUpdateTimeStamp"])
      {
        v45 = [v44 locationUpdateTimestamp];
        goto LABEL_59;
      }

      if ([v9 isEqualToString:@"locationSource"])
      {
        v45 = [v44 locationSource];
        goto LABEL_59;
      }

      objc_autoreleasePoolPop(v33);
    }

    if ([v9 isEqualToString:@"matterKeyValueStore"])
    {
      if ([(HMDBackingStoreModelObject *)self propertyWasSet:@"chipFabricID"]|| [(HMDBackingStoreModelObject *)self propertyWasSet:@"chipFabricIndex"]|| [(HMDBackingStoreModelObject *)self propertyWasSet:@"chipKeyValueStore"])
      {
        v13 = [MEMORY[0x277CBEB38] dictionary];
        v50 = [(HMDHomeModel *)self chipFabricID];
        [v13 setObject:v50 forKeyedSubscript:@"HMDHMMKVS.fabricID"];

        v51 = [(HMDHomeModel *)self chipFabricIndex];
        [v13 setObject:v51 forKeyedSubscript:@"HMDHMMKVS.fabricIndex"];

        v52 = [(HMDHomeModel *)self chipKeyValueStore];
        [v13 addEntriesFromDictionary:v52];

        v14 = [v13 copy];
        goto LABEL_28;
      }

      goto LABEL_45;
    }

    if ([v9 isEqualToString:@"didOnboardMemory"])
    {
      if (![(HMDBackingStoreModelObject *)self propertyWasSet:@"didOnboardEventLog"])
      {
        goto LABEL_45;
      }

      v29 = [(HMDHomeModel *)self didOnboardEventLog];
    }

    else if ([v9 isEqualToString:@"memoryEnabled"])
    {
      if (![(HMDBackingStoreModelObject *)self propertyWasSet:@"eventLogHomeSettingEnabled"])
      {
        goto LABEL_45;
      }

      v29 = [(HMDHomeModel *)self eventLogHomeSettingEnabled];
    }

    else
    {
      if (![v9 isEqualToString:@"memoryDuration"])
      {
        v53.receiver = self;
        v53.super_class = HMDHomeModel;
        v32 = [(HMDBackingStoreModelObject *)&v53 cd_generateValueForProperty:v8 managedObjectField:v9 context:v10];
LABEL_36:
        v14 = v32;
        goto LABEL_46;
      }

      if (![(HMDBackingStoreModelObject *)self propertyWasSet:@"eventLogDuration"])
      {
LABEL_45:
        v14 = 0;
        goto LABEL_46;
      }

      v29 = [(HMDHomeModel *)self eventLogDuration];
    }

    goto LABEL_32;
  }

  if (![(HMDBackingStoreModelObject *)self propertyWasSet:@"hh2EncodedNfcReaderKey"])
  {
    goto LABEL_45;
  }

  v29 = [(HMDHomeModel *)self nfcReaderKey];
LABEL_32:
  v30 = v29;
  v31 = *MEMORY[0x277CBEEE8];
  if (v29)
  {
    v31 = v29;
  }

  v14 = v31;

LABEL_46:
  v42 = *MEMORY[0x277D85DE8];

  return v14;
}

- (id)cd_generateValueForModelObjectFromManagedObject:(id)a3 modelObjectField:(id)a4 modelFieldInfo:(id)a5
{
  v56 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v9 isEqualToString:@"residentSyncClientDidSync"])
  {
    v11 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v8, "residentSyncClientDidSync")}];
LABEL_3:
    v12 = v11;
    goto LABEL_22;
  }

  if ([v9 isEqualToString:@"ownerName"])
  {
    v13 = [v8 owner];
    v14 = [v13 pairingIdentity];
    v15 = [v14 identifier];
LABEL_16:
    v19 = v15;
    v20 = *MEMORY[0x277CBEEE8];
    if (v15)
    {
      v20 = v15;
    }

    v12 = v20;
LABEL_19:

LABEL_20:
LABEL_21:

    goto LABEL_22;
  }

  if ([v9 isEqualToString:@"ownerUserID"])
  {
    v13 = [v8 owner];
    v16 = [v13 userID];
LABEL_8:
    v14 = v16;
    v17 = *MEMORY[0x277CBEEE8];
    if (v16)
    {
      v17 = v16;
    }

    v12 = v17;
    goto LABEL_20;
  }

  if ([v9 isEqualToString:@"ownerUUID"])
  {
    v18 = [v8 owner];
LABEL_15:
    v13 = v18;
    v14 = [v18 modelID];
    v15 = [v14 UUIDString];
    goto LABEL_16;
  }

  if ([v9 isEqualToString:@"primaryResidentUUID"])
  {
    v18 = [v8 primaryResident];
    goto LABEL_15;
  }

  if ([v9 isEqualToString:@"encodedNaturalLightingContext"])
  {
    v13 = [v8 naturalLightingContext];
    if (v13)
    {
      v51 = 0;
      v23 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v13 requiringSecureCoding:1 error:&v51];
      v24 = v51;
      if (!v23)
      {
        v25 = objc_autoreleasePoolPush();
        v26 = self;
        v27 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          v28 = HMFGetLogIdentifier();
          *buf = 138543618;
          v53 = v28;
          v54 = 2112;
          v55 = v24;
          v29 = "%{public}@Failed to encode natural lighting context while MFK -> HMD conversion: %@";
LABEL_35:
          _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_ERROR, v29, buf, 0x16u);

          goto LABEL_36;
        }

        goto LABEL_36;
      }

      goto LABEL_37;
    }

LABEL_40:
    v31 = [MEMORY[0x277CBEB68] null];
LABEL_41:
    v12 = v31;
    goto LABEL_21;
  }

  if ([v9 isEqualToString:@"hh2EncodedNfcReaderKey"])
  {
    v13 = [v8 nfcReaderKey];
    if (v13)
    {
      v50 = 0;
      v23 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v13 requiringSecureCoding:1 error:&v50];
      v24 = v50;
      if (!v23)
      {
        v25 = objc_autoreleasePoolPush();
        v26 = self;
        v27 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          v28 = HMFGetLogIdentifier();
          *buf = 138543618;
          v53 = v28;
          v54 = 2112;
          v55 = v24;
          v29 = "%{public}@Failed to encode nfc reader key while MFK -> HMD conversion: %@";
          goto LABEL_35;
        }

LABEL_36:

        objc_autoreleasePoolPop(v25);
      }

LABEL_37:
      v30 = *MEMORY[0x277CBEEE8];
      if (v23)
      {
        v30 = v23;
      }

      v12 = v30;

      goto LABEL_21;
    }

    goto LABEL_40;
  }

  if ([v9 isEqualToString:@"defaultRoomUUID"])
  {
    v18 = [v8 defaultRoom];
    goto LABEL_15;
  }

  if ([v9 isEqualToString:@"ownerPublicKey"])
  {
    v13 = [v8 owner];
    v14 = [v13 pairingIdentity];
    v19 = [v14 publicKey];
    v32 = [v19 data];
    v33 = v32;
    v34 = *MEMORY[0x277CBEEE8];
    if (v32)
    {
      v34 = v32;
    }

    v12 = v34;

    goto LABEL_19;
  }

  if (![v9 isEqualToString:@"homeLocationData"])
  {
    if ([v9 isEqualToString:@"chipFabricID"])
    {
      v45 = [v8 matterKeyValueStore];
      v13 = v45;
      v46 = @"HMDHMMKVS.fabricID";
    }

    else
    {
      if (![v9 isEqualToString:@"chipFabricIndex"])
      {
        if ([v9 isEqualToString:@"chipKeyValueStore"])
        {
          v47 = [v8 matterKeyValueStore];
        }

        else if ([v9 isEqualToString:@"didOnboardEventLog"])
        {
          v47 = [v8 didOnboardEventLog];
        }

        else if ([v9 isEqualToString:@"eventLogHomeSettingEnabled"])
        {
          v47 = [v8 eventLogEnabled];
        }

        else
        {
          if (![v9 isEqualToString:@"eventLogDuration"])
          {
            v49.receiver = self;
            v49.super_class = HMDHomeModel;
            v11 = [(HMDBackingStoreModelObject *)&v49 cd_generateValueForModelObjectFromManagedObject:v8 modelObjectField:v9 modelFieldInfo:v10];
            goto LABEL_3;
          }

          v47 = [v8 eventLogDuration];
        }

        v13 = v47;
        v48 = *MEMORY[0x277CBEEE8];
        if (v47)
        {
          v48 = v47;
        }

        v31 = v48;
        goto LABEL_41;
      }

      v45 = [v8 matterKeyValueStore];
      v13 = v45;
      v46 = @"HMDHMMKVS.fabricIndex";
    }

    v16 = [v45 objectForKeyedSubscript:v46];
    goto LABEL_8;
  }

  v35 = [v8 location];
  if (!v35)
  {
    goto LABEL_61;
  }

  v36 = v35;
  v37 = [v8 locationUpdateTimeStamp];
  if (!v37)
  {

    goto LABEL_61;
  }

  v38 = v37;
  v39 = [v8 locationSource];

  if (!v39)
  {
LABEL_61:
    v11 = *MEMORY[0x277CBEEE8];
    goto LABEL_3;
  }

  v40 = [HMDHomeLocationData alloc];
  v41 = [v8 location];
  v42 = [v8 locationUpdateTimeStamp];
  v43 = [v8 locationSource];
  v44 = [(HMDHomeLocationData *)v40 initWithLocation:v41 locationUpdateTimestamp:v42 locationSource:v43];

  v12 = encodeRootObject();

LABEL_22:
  v21 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)cd_getHomeFromUUID:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!v4)
  {
    _HMFPreconditionFailure();
  }

  v5 = v4;
  v17 = 0;
  v6 = [HMDBackingStore cdlsFetchManagedObjectWithUUID:v4 ofManagedObjectType:objc_opt_class() error:&v17];
  v7 = v17;
  v8 = v7;
  if (v6)
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    v14 = v6;
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    v11 = a1;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543874;
      v19 = v13;
      v20 = 2112;
      v21 = v5;
      v22 = 2112;
      v23 = v8;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@Unable to find mkfHome with UUID %@: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v10);
    v14 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

@end