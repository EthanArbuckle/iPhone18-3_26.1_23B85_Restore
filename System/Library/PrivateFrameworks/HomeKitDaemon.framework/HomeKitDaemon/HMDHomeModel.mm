@interface HMDHomeModel
+ (id)cd_getHomeFromUUID:(id)d;
+ (id)properties;
- (HMDHomeNFCReaderKey)nfcReaderKey;
- (HMDNaturalLightingContext)naturalLightingContext;
- (id)cd_generateValueForModelObjectFromManagedObject:(id)object modelObjectField:(id)field modelFieldInfo:(id)info;
- (id)cd_generateValueForProperty:(id)property managedObjectField:(id)field context:(id)context;
- (void)setNaturalLightingContext:(id)context;
- (void)setNfcReaderKey:(id)key;
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
  hh2EncodedNfcReaderKey = [(HMDHomeModel *)self hh2EncodedNfcReaderKey];
  if (hh2EncodedNfcReaderKey)
  {
    v12 = 0;
    v3 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:hh2EncodedNfcReaderKey error:&v12];
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
        v16 = hh2EncodedNfcReaderKey;
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

- (void)setNfcReaderKey:(id)key
{
  v19 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  v12 = 0;
  v5 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:keyCopy requiringSecureCoding:1 error:&v12];
  v6 = v12;
  if (v5)
  {
    [(HMDHomeModel *)self setHh2EncodedNfcReaderKey:v5];
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    selfCopy = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543874;
      v14 = v10;
      v15 = 2112;
      v16 = keyCopy;
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
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_ERROR, "%{public}@Failed to set encoded natural lighting context on the home model %@:%@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (id)cd_generateValueForProperty:(id)property managedObjectField:(id)field context:(id)context
{
  v63 = *MEMORY[0x277D85DE8];
  propertyCopy = property;
  fieldCopy = field;
  contextCopy = context;
  if ([fieldCopy isEqualToString:@"owner"])
  {
    if ([(HMDBackingStoreModelObject *)self propertyWasSet:@"ownerUUID"])
    {
      v11 = objc_alloc(MEMORY[0x277CCAD78]);
      ownerUUID = [(HMDHomeModel *)self ownerUUID];
      dictionary = [v11 initWithUUIDString:ownerUUID];

      if (dictionary)
      {
        v56 = 0;
        defaultRoom = [HMDBackingStore cdlsFetchManagedObjectWithUUID:dictionary ofModelType:objc_opt_class() error:&v56];
        v15 = v56;
        managedObject = v15;
        if (defaultRoom && !v15)
        {
          goto LABEL_23;
        }

        v17 = objc_autoreleasePoolPush();
        selfCopy2 = self;
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
        v60 = dictionary;
        v61 = 2112;
        v62 = managedObject;
        v21 = "%{public}@Unable to find NSManagedObject for home owner with UUID %@: %@";
LABEL_16:
        _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_ERROR, v21, buf, 0x20u);

        goto LABEL_17;
      }

      goto LABEL_27;
    }

    goto LABEL_45;
  }

  if ([fieldCopy isEqualToString:@"primaryResident"])
  {
    if ([(HMDBackingStoreModelObject *)self propertyWasSet:@"primaryResidentUUID"])
    {
      primaryResidentUUID = [(HMDHomeModel *)self primaryResidentUUID];

      if (primaryResidentUUID)
      {
        v23 = objc_alloc(MEMORY[0x277CCAD78]);
        primaryResidentUUID2 = [(HMDHomeModel *)self primaryResidentUUID];
        dictionary = [v23 initWithUUIDString:primaryResidentUUID2];

        if (dictionary)
        {
          v55 = 0;
          defaultRoom = [HMDBackingStore cdlsFetchManagedObjectWithUUID:dictionary ofModelType:objc_opt_class() error:&v55];
          v25 = v55;
          managedObject = v25;
          if (defaultRoom && !v25)
          {
            goto LABEL_23;
          }

          v17 = objc_autoreleasePoolPush();
          selfCopy2 = self;
          v19 = HMFGetOSLogHandle();
          if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_17;
          }

          v20 = HMFGetLogIdentifier();
          *buf = 138543874;
          v58 = v20;
          v59 = 2112;
          v60 = dictionary;
          v61 = 2112;
          v62 = managedObject;
          v21 = "%{public}@Unable to find NSManagedObject for resident device with UUID %@: %@";
          goto LABEL_16;
        }

LABEL_27:
        defaultRoom = 0;
        goto LABEL_28;
      }

      null = [MEMORY[0x277CBEB68] null];
      goto LABEL_36;
    }

    goto LABEL_45;
  }

  if ([fieldCopy isEqualToString:@"defaultRoom"])
  {
    if ([(HMDBackingStoreModelObject *)self propertyWasSet:@"defaultRoomUUID"])
    {
      dictionary = contextCopy;
      if (self)
      {
        managedObject = [(HMDBackingStoreModelObject *)self managedObject];
        defaultRoom = [managedObject defaultRoom];
        if (!defaultRoom)
        {
          v26 = objc_alloc(MEMORY[0x277CCAD78]);
          defaultRoomUUID = [(HMDHomeModel *)self defaultRoomUUID];
          v28 = [v26 initWithUUIDString:defaultRoomUUID];

          defaultRoom = [[_MKFRoom alloc] initWithContext:dictionary];
          [(_MKFRoom *)defaultRoom setModelID:v28];
          [(_MKFRoom *)defaultRoom setHome:managedObject];
          [managedObject addRooms_Object:defaultRoom];
          [managedObject setDefaultRoom:defaultRoom];
        }

        goto LABEL_23;
      }

      goto LABEL_27;
    }

    goto LABEL_45;
  }

  if ([fieldCopy isEqualToString:@"naturalLightingContext"])
  {
    if (![(HMDBackingStoreModelObject *)self propertyWasSet:@"encodedNaturalLightingContext"])
    {
      goto LABEL_45;
    }

    naturalLightingContext = [(HMDHomeModel *)self naturalLightingContext];
    goto LABEL_32;
  }

  if (![fieldCopy isEqualToString:@"nfcReaderKey"])
  {
    if (([fieldCopy isEqualToString:@"location"] & 1) != 0 || (objc_msgSend(fieldCopy, "isEqualToString:", @"locationUpdateTimeStamp") & 1) != 0 || objc_msgSend(fieldCopy, "isEqualToString:", @"locationSource"))
    {
      if (![(HMDBackingStoreModelObject *)self propertyWasSet:@"homeLocationData"])
      {
        goto LABEL_45;
      }

      v33 = objc_autoreleasePoolPush();
      v34 = objc_alloc(MEMORY[0x277CCAAC8]);
      homeLocationData = [(HMDHomeModel *)self homeLocationData];
      v54 = 0;
      v36 = [v34 initForReadingFromData:homeLocationData error:&v54];
      v37 = v54;

      if (v37)
      {
        v38 = objc_autoreleasePoolPush();
        selfCopy3 = self;
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
        selfCopy4 = self;
        v48 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
        {
          v49 = HMFGetLogIdentifier();
          *buf = 138543362;
          v58 = v49;
          _os_log_impl(&dword_229538000, v48, OS_LOG_TYPE_ERROR, "%{public}@Unable to unarchive HomeLocationData", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v46);
        defaultRoom = 0;
        goto LABEL_60;
      }

      if ([fieldCopy isEqualToString:@"location"])
      {
        location = [v44 location];
LABEL_59:
        defaultRoom = location;
LABEL_60:

        objc_autoreleasePoolPop(v33);
        goto LABEL_46;
      }

      if ([fieldCopy isEqualToString:@"locationUpdateTimeStamp"])
      {
        location = [v44 locationUpdateTimestamp];
        goto LABEL_59;
      }

      if ([fieldCopy isEqualToString:@"locationSource"])
      {
        location = [v44 locationSource];
        goto LABEL_59;
      }

      objc_autoreleasePoolPop(v33);
    }

    if ([fieldCopy isEqualToString:@"matterKeyValueStore"])
    {
      if ([(HMDBackingStoreModelObject *)self propertyWasSet:@"chipFabricID"]|| [(HMDBackingStoreModelObject *)self propertyWasSet:@"chipFabricIndex"]|| [(HMDBackingStoreModelObject *)self propertyWasSet:@"chipKeyValueStore"])
      {
        dictionary = [MEMORY[0x277CBEB38] dictionary];
        chipFabricID = [(HMDHomeModel *)self chipFabricID];
        [dictionary setObject:chipFabricID forKeyedSubscript:@"HMDHMMKVS.fabricID"];

        chipFabricIndex = [(HMDHomeModel *)self chipFabricIndex];
        [dictionary setObject:chipFabricIndex forKeyedSubscript:@"HMDHMMKVS.fabricIndex"];

        chipKeyValueStore = [(HMDHomeModel *)self chipKeyValueStore];
        [dictionary addEntriesFromDictionary:chipKeyValueStore];

        defaultRoom = [dictionary copy];
        goto LABEL_28;
      }

      goto LABEL_45;
    }

    if ([fieldCopy isEqualToString:@"didOnboardMemory"])
    {
      if (![(HMDBackingStoreModelObject *)self propertyWasSet:@"didOnboardEventLog"])
      {
        goto LABEL_45;
      }

      naturalLightingContext = [(HMDHomeModel *)self didOnboardEventLog];
    }

    else if ([fieldCopy isEqualToString:@"memoryEnabled"])
    {
      if (![(HMDBackingStoreModelObject *)self propertyWasSet:@"eventLogHomeSettingEnabled"])
      {
        goto LABEL_45;
      }

      naturalLightingContext = [(HMDHomeModel *)self eventLogHomeSettingEnabled];
    }

    else
    {
      if (![fieldCopy isEqualToString:@"memoryDuration"])
      {
        v53.receiver = self;
        v53.super_class = HMDHomeModel;
        null = [(HMDBackingStoreModelObject *)&v53 cd_generateValueForProperty:propertyCopy managedObjectField:fieldCopy context:contextCopy];
LABEL_36:
        defaultRoom = null;
        goto LABEL_46;
      }

      if (![(HMDBackingStoreModelObject *)self propertyWasSet:@"eventLogDuration"])
      {
LABEL_45:
        defaultRoom = 0;
        goto LABEL_46;
      }

      naturalLightingContext = [(HMDHomeModel *)self eventLogDuration];
    }

    goto LABEL_32;
  }

  if (![(HMDBackingStoreModelObject *)self propertyWasSet:@"hh2EncodedNfcReaderKey"])
  {
    goto LABEL_45;
  }

  naturalLightingContext = [(HMDHomeModel *)self nfcReaderKey];
LABEL_32:
  v30 = naturalLightingContext;
  v31 = *MEMORY[0x277CBEEE8];
  if (naturalLightingContext)
  {
    v31 = naturalLightingContext;
  }

  defaultRoom = v31;

LABEL_46:
  v42 = *MEMORY[0x277D85DE8];

  return defaultRoom;
}

- (id)cd_generateValueForModelObjectFromManagedObject:(id)object modelObjectField:(id)field modelFieldInfo:(id)info
{
  v56 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  fieldCopy = field;
  infoCopy = info;
  if ([fieldCopy isEqualToString:@"residentSyncClientDidSync"])
  {
    v11 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(objectCopy, "residentSyncClientDidSync")}];
LABEL_3:
    v12 = v11;
    goto LABEL_22;
  }

  if ([fieldCopy isEqualToString:@"ownerName"])
  {
    owner = [objectCopy owner];
    pairingIdentity = [owner pairingIdentity];
    identifier = [pairingIdentity identifier];
LABEL_16:
    publicKey = identifier;
    v20 = *MEMORY[0x277CBEEE8];
    if (identifier)
    {
      v20 = identifier;
    }

    v12 = v20;
LABEL_19:

LABEL_20:
LABEL_21:

    goto LABEL_22;
  }

  if ([fieldCopy isEqualToString:@"ownerUserID"])
  {
    owner = [objectCopy owner];
    userID = [owner userID];
LABEL_8:
    pairingIdentity = userID;
    v17 = *MEMORY[0x277CBEEE8];
    if (userID)
    {
      v17 = userID;
    }

    v12 = v17;
    goto LABEL_20;
  }

  if ([fieldCopy isEqualToString:@"ownerUUID"])
  {
    owner2 = [objectCopy owner];
LABEL_15:
    owner = owner2;
    pairingIdentity = [owner2 modelID];
    identifier = [pairingIdentity UUIDString];
    goto LABEL_16;
  }

  if ([fieldCopy isEqualToString:@"primaryResidentUUID"])
  {
    owner2 = [objectCopy primaryResident];
    goto LABEL_15;
  }

  if ([fieldCopy isEqualToString:@"encodedNaturalLightingContext"])
  {
    owner = [objectCopy naturalLightingContext];
    if (owner)
    {
      v51 = 0;
      v23 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:owner requiringSecureCoding:1 error:&v51];
      v24 = v51;
      if (!v23)
      {
        v25 = objc_autoreleasePoolPush();
        selfCopy2 = self;
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
    null = [MEMORY[0x277CBEB68] null];
LABEL_41:
    v12 = null;
    goto LABEL_21;
  }

  if ([fieldCopy isEqualToString:@"hh2EncodedNfcReaderKey"])
  {
    owner = [objectCopy nfcReaderKey];
    if (owner)
    {
      v50 = 0;
      v23 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:owner requiringSecureCoding:1 error:&v50];
      v24 = v50;
      if (!v23)
      {
        v25 = objc_autoreleasePoolPush();
        selfCopy2 = self;
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

  if ([fieldCopy isEqualToString:@"defaultRoomUUID"])
  {
    owner2 = [objectCopy defaultRoom];
    goto LABEL_15;
  }

  if ([fieldCopy isEqualToString:@"ownerPublicKey"])
  {
    owner = [objectCopy owner];
    pairingIdentity = [owner pairingIdentity];
    publicKey = [pairingIdentity publicKey];
    data = [publicKey data];
    v33 = data;
    v34 = *MEMORY[0x277CBEEE8];
    if (data)
    {
      v34 = data;
    }

    v12 = v34;

    goto LABEL_19;
  }

  if (![fieldCopy isEqualToString:@"homeLocationData"])
  {
    if ([fieldCopy isEqualToString:@"chipFabricID"])
    {
      matterKeyValueStore = [objectCopy matterKeyValueStore];
      owner = matterKeyValueStore;
      v46 = @"HMDHMMKVS.fabricID";
    }

    else
    {
      if (![fieldCopy isEqualToString:@"chipFabricIndex"])
      {
        if ([fieldCopy isEqualToString:@"chipKeyValueStore"])
        {
          matterKeyValueStore2 = [objectCopy matterKeyValueStore];
        }

        else if ([fieldCopy isEqualToString:@"didOnboardEventLog"])
        {
          matterKeyValueStore2 = [objectCopy didOnboardEventLog];
        }

        else if ([fieldCopy isEqualToString:@"eventLogHomeSettingEnabled"])
        {
          matterKeyValueStore2 = [objectCopy eventLogEnabled];
        }

        else
        {
          if (![fieldCopy isEqualToString:@"eventLogDuration"])
          {
            v49.receiver = self;
            v49.super_class = HMDHomeModel;
            v11 = [(HMDBackingStoreModelObject *)&v49 cd_generateValueForModelObjectFromManagedObject:objectCopy modelObjectField:fieldCopy modelFieldInfo:infoCopy];
            goto LABEL_3;
          }

          matterKeyValueStore2 = [objectCopy eventLogDuration];
        }

        owner = matterKeyValueStore2;
        v48 = *MEMORY[0x277CBEEE8];
        if (matterKeyValueStore2)
        {
          v48 = matterKeyValueStore2;
        }

        null = v48;
        goto LABEL_41;
      }

      matterKeyValueStore = [objectCopy matterKeyValueStore];
      owner = matterKeyValueStore;
      v46 = @"HMDHMMKVS.fabricIndex";
    }

    userID = [matterKeyValueStore objectForKeyedSubscript:v46];
    goto LABEL_8;
  }

  location = [objectCopy location];
  if (!location)
  {
    goto LABEL_61;
  }

  v36 = location;
  locationUpdateTimeStamp = [objectCopy locationUpdateTimeStamp];
  if (!locationUpdateTimeStamp)
  {

    goto LABEL_61;
  }

  v38 = locationUpdateTimeStamp;
  locationSource = [objectCopy locationSource];

  if (!locationSource)
  {
LABEL_61:
    v11 = *MEMORY[0x277CBEEE8];
    goto LABEL_3;
  }

  v40 = [HMDHomeLocationData alloc];
  location2 = [objectCopy location];
  locationUpdateTimeStamp2 = [objectCopy locationUpdateTimeStamp];
  locationSource2 = [objectCopy locationSource];
  v44 = [(HMDHomeLocationData *)v40 initWithLocation:location2 locationUpdateTimestamp:locationUpdateTimeStamp2 locationSource:locationSource2];

  v12 = encodeRootObject();

LABEL_22:
  v21 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)cd_getHomeFromUUID:(id)d
{
  v24 = *MEMORY[0x277D85DE8];
  dCopy = d;
  if (!dCopy)
  {
    _HMFPreconditionFailure();
  }

  v5 = dCopy;
  v17 = 0;
  v6 = [HMDBackingStore cdlsFetchManagedObjectWithUUID:dCopy ofManagedObjectType:objc_opt_class() error:&v17];
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
    selfCopy = self;
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