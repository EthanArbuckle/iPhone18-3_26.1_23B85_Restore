@interface HMDHAPMetadata
+ (BOOL)isAdminPrivilegeRequiredForWritingCharacteristicType:(id)type serviceType:(id)serviceType;
+ (BOOL)isHomedVersionSupported:(id)supported;
+ (BOOL)isOwnerPrivilegeRequiredForWritingCharacteristicType:(id)type serviceType:(id)serviceType;
+ (BOOL)isServiceType:(id)type compatibleWithAccessoryCategoryType:(id)categoryType;
+ (HMDHAPMetadata)metadataWithDictionary:(id)dictionary error:(id *)error;
+ (HMDHAPMetadata)metadataWithPath:(id)path error:(id *)error;
+ (id)dataFromMetadataDictionaryWithKey:(id)key;
+ (id)getBuiltinInstance;
+ (id)getSharedInstance;
+ (id)getSharedInstanceWithLockedCache:(id)cache;
+ (id)metadataCache;
+ (void)_logCurrentMetadata;
+ (void)prepareMetadata;
+ (void)updateLocalMetadataWithBuiltinMetadata;
+ (void)updateLocalMetadataWithMetadata:(id)metadata;
- (BOOL)allowsSecuringWriteFor:(id)for withValue:(id)value;
- (BOOL)checkTupleExistsInSet:(id)set forChrType:(id)type svcType:(id)svcType;
- (BOOL)disallowsAssistantServiceType:(id)type characteristicType:(id)characteristicType;
- (BOOL)generateNotificationOnConfigurationForCharacteristicType:(id)type serviceType:(id)serviceType;
- (BOOL)isSecondsDownCounterCharacteristicType:(id)type;
- (BOOL)isStandardCharacteristicType:(id)type;
- (BOOL)isStandardServiceType:(id)type;
- (BOOL)isTargetCharacteristic:(id)characteristic;
- (BOOL)parseAndSetAssistantCharacteristics:(id)characteristics;
- (BOOL)parseAndSetAssistantMetadataWithAssistantPlist:(id)plist;
- (BOOL)parseAndSetAssistantServices:(id)services;
- (BOOL)parseAndSetAssistantUnits:(id)units;
- (BOOL)parseAndSetHMMetadataWithHMPlist:(id)plist;
- (BOOL)requiresDeviceUnlock:(id)unlock forService:(id)service;
- (BOOL)requiresTimedWrite:(id)write forService:(id)service;
- (BOOL)shouldAllowToWakeSuspendedAccessoryForOperation:(int64_t)operation service:(id)service characteristicType:(id)type value:(id)value;
- (BOOL)shouldAutoEnableNotificationForCharacteristic:(id)characteristic ofService:(id)service;
- (BOOL)shouldCoalesceCharacteristicNotifications:(id)notifications forService:(id)service;
- (BOOL)shouldEnableHomeNotificationForCharacteristicType:(id)type serviceType:(id)serviceType;
- (BOOL)shouldFilterChangeNotificationsForCharacteristicType:(id)type serviceType:(id)serviceType;
- (BOOL)shouldFilterCharacteristicOfType:(id)type;
- (BOOL)shouldFilterCharacteristicOfTypeFromApp:(id)app;
- (BOOL)shouldFilterEnableNotificationsForCharacteristicType:(id)type serviceType:(id)serviceType;
- (BOOL)shouldFilterServiceOfType:(id)type;
- (BOOL)shouldFilterServiceOfTypeFromApp:(id)app;
- (BOOL)shouldHomeAppShowTileForServiceType:(id)type;
- (BOOL)shouldNotCacheCharacteristicOfType:(id)type;
- (BOOL)shouldRefreshValueForCharacteristicWithType:(id)type serviceType:(id)serviceType;
- (BOOL)supportsAuthorizationData:(id)data forService:(id)service;
- (BOOL)supportsLocalization:(id)localization;
- (HMDHAPMetadata)initWithDictionary:(id)dictionary hapMetadata:(id)metadata error:(id *)error;
- (HMDHAPMetadata)initWithFullPlist:(id)plist hapMetadata:(id)metadata;
- (HMDHAPMetadata)initWithFullPlist:(id)plist hapMetadata:(id)metadata error:(id *)error;
- (id)aliasedHAPCharacteristicTypes;
- (id)aliasedHAPServiceTypes;
- (id)audioAccessoryCategory;
- (id)autoApplyPolicyConfigurationForService:(id)service category:(id)category;
- (id)categoryForIdentifier:(id)identifier;
- (id)categoryForOther;
- (id)categoryForType:(id)type;
- (id)categoryTypeFromName:(id)name;
- (id)characteristicNameFromType:(id)type;
- (id)characteristicTypeFromName:(id)name;
- (id)characteristicValueUnit:(id)unit;
- (id)descriptionForCharacteristicType:(id)type;
- (id)descriptionForServiceType:(id)type;
- (id)disallowedAssistantCharacteristicTypesByServiceType;
- (id)getAliasedCharacteristicTypes:(id)types;
- (id)getAliasedServiceType:(id)type;
- (id)getCharacteristicTypeAlias:(id)alias;
- (id)getServiceTypeAlias:(id)alias;
- (id)getStatusCharacteristicTypes:(id)types forServiceType:(id)type;
- (id)mapCharacteristicValueType:(id)type;
- (id)mapFromAssistantCharacteristicValue:(id)value name:(id)name;
- (id)mapFromAssistantServiceName:(id)name;
- (id)mapFromAssistantUnitName:(id)name;
- (id)mapReadCharacteristicFromAssistantName:(id)name;
- (id)mapToAssistantCharacteristicName:(id)name;
- (id)mapToAssistantCharacteristicValue:(id)value name:(id)name getActionType:(BOOL)type;
- (id)mapToAssistantServiceName:(id)name;
- (id)mapToAssistantServiceSubtypeName:(id)name;
- (id)mapToAssistantServiceSubtypeName:(id)name accessoryCategory:(id)category;
- (id)mapToAssistantUnitName:(id)name;
- (id)mapWriteCharacteristicFromAssistantName:(id)name;
- (id)parseAndSetRawPlist:(id)plist;
- (id)parseCharacteristicArray:(id)array;
- (id)parseHMAccessoryFirmwareUpdatePolicyCharacteristics:(id)characteristics;
- (id)parseHMAccessoryFirmwareUpdatePolicyCriteria:(id)criteria;
- (id)parseHMAccessoryFirmwareUpdatePolicyServices:(id)services;
- (id)parseMetadataTupleSetFromPlist:(id)plist;
- (id)parseServiceArray:(id)array;
- (id)serviceNameFromType:(id)type;
- (id)serviceSubtypeForValue:(id)value forServiceType:(id)type;
- (id)serviceTypeFromName:(id)name;
- (id)stagingPolicyConfigurationForService:(id)service category:(id)category;
- (id)statusHAPCharacteristicTypesForServiceType;
- (id)validateAssociatedServiceType:(id)type forService:(id)service;
- (id)xpcData:(BOOL)data;
- (void)parseAndSetAllowableSecuringWrites:(id)writes;
- (void)parseAndSetHMAccessoryFirmwareUpdatePolicies:(id)policies;
- (void)parseAndSetHMCategories:(id)categories;
- (void)parseAndSetWakeOnOperationsFilter:(id)filter;
@end

@implementation HMDHAPMetadata

- (id)statusHAPCharacteristicTypesForServiceType
{
  if (statusHAPCharacteristicTypesForServiceType_onceToken != -1)
  {
    dispatch_once(&statusHAPCharacteristicTypesForServiceType_onceToken, &__block_literal_global_279);
  }

  v3 = statusHAPCharacteristicTypeMappingForServiceType;

  return v3;
}

void __60__HMDHAPMetadata_statusHAPCharacteristicTypesForServiceType__block_invoke()
{
  v40[5] = *MEMORY[0x277D85DE8];
  v39[0] = *MEMORY[0x277CFE8A0];
  v37[0] = *MEMORY[0x277CFE5B8];
  v36 = *MEMORY[0x277CFE5C0];
  v0 = v36;
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:&v36 count:1];
  v38[0] = v21;
  v37[1] = *MEMORY[0x277CFE6A0];
  v35 = v0;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:&v35 count:1];
  v38[1] = v20;
  v37[2] = *MEMORY[0x277CFE6A8];
  v34 = v0;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v34 count:1];
  v38[2] = v19;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:v37 count:3];
  v40[0] = v18;
  v39[1] = *MEMORY[0x277CFE860];
  v32 = *MEMORY[0x277CFE628];
  v1 = v32;
  v3 = *MEMORY[0x277CFE648];
  v31[0] = *MEMORY[0x277CFE5E0];
  v2 = v31[0];
  v31[1] = v3;
  v4 = *MEMORY[0x277CFE5B0];
  v31[2] = *MEMORY[0x277CFE5F0];
  v31[3] = v4;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:4];
  v33 = v17;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
  v40[1] = v5;
  v39[2] = *MEMORY[0x277CFE900];
  v29 = v1;
  v28[0] = v2;
  v28[1] = v3;
  v28[2] = *MEMORY[0x277CFE5F8];
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:3];
  v30 = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
  v40[2] = v7;
  v39[3] = *MEMORY[0x277CFE910];
  v26 = *MEMORY[0x277CFE658];
  v8 = v26;
  v9 = *MEMORY[0x277CFE6C8];
  v25[0] = v4;
  v25[1] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:2];
  v27 = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
  v40[3] = v11;
  v39[4] = *MEMORY[0x277CFE870];
  v23 = v8;
  v22[0] = v4;
  v22[1] = v9;
  v22[2] = *MEMORY[0x277CFE6C0];
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:3];
  v24 = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
  v40[4] = v13;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:v39 count:5];
  v15 = statusHAPCharacteristicTypeMappingForServiceType;
  statusHAPCharacteristicTypeMappingForServiceType = v14;

  v16 = *MEMORY[0x277D85DE8];
}

- (id)disallowedAssistantCharacteristicTypesByServiceType
{
  if (disallowedAssistantCharacteristicTypesByServiceType_onceToken != -1)
  {
    dispatch_once(&disallowedAssistantCharacteristicTypesByServiceType_onceToken, &__block_literal_global_277);
  }

  v3 = disallowedAssistantCharacteristicTypesByServiceType_disallowedAssistantCharacteristicTypesByServiceType;

  return v3;
}

void __69__HMDHAPMetadata_disallowedAssistantCharacteristicTypesByServiceType__block_invoke()
{
  v8[1] = *MEMORY[0x277D85DE8];
  v7 = *MEMORY[0x277CD0E08];
  v0 = MEMORY[0x277CBEB98];
  v6 = *MEMORY[0x277CCF748];
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:&v6 count:1];
  v2 = [v0 setWithArray:v1];
  v8[0] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  v4 = disallowedAssistantCharacteristicTypesByServiceType_disallowedAssistantCharacteristicTypesByServiceType;
  disallowedAssistantCharacteristicTypesByServiceType_disallowedAssistantCharacteristicTypesByServiceType = v3;

  v5 = *MEMORY[0x277D85DE8];
}

- (id)aliasedHAPServiceTypes
{
  if (aliasedHAPServiceTypes_onceToken != -1)
  {
    dispatch_once(&aliasedHAPServiceTypes_onceToken, &__block_literal_global_275);
  }

  v3 = aliasedHAPServiceTypes__aliasedHAPServiceTypeMapping;

  return v3;
}

void __40__HMDHAPMetadata_aliasedHAPServiceTypes__block_invoke()
{
  v4[1] = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CFE918];
  v4[0] = *MEMORY[0x277CFE848];
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:&v3 count:1];
  v1 = aliasedHAPServiceTypes__aliasedHAPServiceTypeMapping;
  aliasedHAPServiceTypes__aliasedHAPServiceTypeMapping = v0;

  v2 = *MEMORY[0x277D85DE8];
}

- (id)aliasedHAPCharacteristicTypes
{
  if (aliasedHAPCharacteristicTypes_onceToken != -1)
  {
    dispatch_once(&aliasedHAPCharacteristicTypes_onceToken, &__block_literal_global_273);
  }

  v3 = aliasedHAPCharacteristicTypes__aliasedHAPCharacteristicTypeMapping;

  return v3;
}

void __47__HMDHAPMetadata_aliasedHAPCharacteristicTypes__block_invoke()
{
  v11[7] = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277CFE698];
  v1 = *MEMORY[0x277CFE600];
  v10[0] = *MEMORY[0x277CFE5B0];
  v10[1] = v1;
  v2 = *MEMORY[0x277CFE630];
  v11[0] = v0;
  v11[1] = v2;
  v3 = *MEMORY[0x277CFE760];
  v10[2] = *MEMORY[0x277CFE638];
  v10[3] = v3;
  v4 = *MEMORY[0x277CFE758];
  v11[2] = v2;
  v11[3] = v4;
  v5 = *MEMORY[0x277CFE6A8];
  v10[4] = *MEMORY[0x277CFE728];
  v10[5] = v5;
  v6 = *MEMORY[0x277CFE5B8];
  v11[4] = v4;
  v11[5] = v6;
  v10[6] = *MEMORY[0x277CFE6A0];
  v11[6] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:7];
  v8 = aliasedHAPCharacteristicTypes__aliasedHAPCharacteristicTypeMapping;
  aliasedHAPCharacteristicTypes__aliasedHAPCharacteristicTypeMapping = v7;

  v9 = *MEMORY[0x277D85DE8];
}

- (BOOL)checkTupleExistsInSet:(id)set forChrType:(id)type svcType:(id)svcType
{
  v7 = MEMORY[0x277CFEBB0];
  svcTypeCopy = svcType;
  typeCopy = type;
  setCopy = set;
  v11 = [[v7 alloc] initWithCharacteristicType:typeCopy serviceType:svcTypeCopy];

  LOBYTE(typeCopy) = [setCopy containsObject:v11];
  return typeCopy;
}

- (BOOL)parseAndSetAssistantUnits:(id)units
{
  v31 = *MEMORY[0x277D85DE8];
  unitsCopy = units;
  v5 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(unitsCopy, "count")}];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v6 = unitsCopy;
  v7 = [v6 countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v23;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v23 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v22 + 1) + 8 * i);
        v12 = [v6 objectForKeyedSubscript:{v11, v22}];
        hapMetadata = [(HMDHAPMetadata *)self hapMetadata];
        v14 = [hapMetadata isStandardHAPUnitName:v12];

        if ((v14 & 1) == 0)
        {
          v17 = objc_autoreleasePoolPush();
          v18 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            v19 = HMFGetLogIdentifier();
            *buf = 138543618;
            v27 = v19;
            v28 = 2112;
            v29 = v11;
            _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_ERROR, "%{public}@Assistant unit %@ unknown", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v17);
          v16 = 0;
          v15 = v6;
          goto LABEL_13;
        }

        [v5 setObject:v12 forKeyedSubscript:v11];
        [v5 setObject:v11 forKeyedSubscript:v12];
      }

      v8 = [v6 countByEnumeratingWithState:&v22 objects:v30 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v15 = [v5 copy];
  [(HMDHAPMetadata *)self setAssistantUnits:v15];
  v16 = 1;
LABEL_13:

  v20 = *MEMORY[0x277D85DE8];
  return v16;
}

- (BOOL)parseAndSetAssistantCharacteristics:(id)characteristics
{
  v66 = *MEMORY[0x277D85DE8];
  characteristicsCopy = characteristics;
  v4 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(characteristicsCopy, "count")}];
  v5 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(characteristicsCopy, "count")}];
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v6 = characteristicsCopy;
  v50 = [v6 countByEnumeratingWithState:&v55 objects:v65 count:16];
  if (!v50)
  {
    goto LABEL_27;
  }

  v52 = *v56;
  v51 = *MEMORY[0x277CFEDB0];
  v43 = *MEMORY[0x277CFEDA8];
  v42 = *MEMORY[0x277CFEE08];
  v48 = *MEMORY[0x277CFED68];
  v46 = *MEMORY[0x277CFEDD0];
  v45 = *MEMORY[0x277CFEDE8];
  v44 = *MEMORY[0x277CFED98];
  *&v7 = 138543618;
  v41 = v7;
  v47 = v4;
  v49 = v6;
  do
  {
    v8 = 0;
    do
    {
      if (*v56 != v52)
      {
        objc_enumerationMutation(v6);
      }

      v9 = *(*(&v55 + 1) + 8 * v8);
      v10 = [v6 hmf_dictionaryForKey:{v9, v41}];
      v11 = [v10 hmf_stringForKey:v51];
      v12 = v11;
      v53 = v11;
      if (v11)
      {
        v13 = v11;
        v14 = v13;
LABEL_9:
        hapMetadata = [(HMDHAPMetadata *)self hapMetadata];
        v17 = [hapMetadata isStandardHAPCharacteristicName:v13];

        if (v17)
        {
          v18 = 0;
          if (!v14)
          {
            goto LABEL_12;
          }

LABEL_11:
          hapMetadata2 = [(HMDHAPMetadata *)self hapMetadata];
          v20 = [hapMetadata2 isStandardHAPCharacteristicName:v14];

          if (v20)
          {
            goto LABEL_12;
          }

          v22 = objc_autoreleasePoolPush();
          v36 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
          {
            v38 = HMFGetLogIdentifier();
            *buf = 138543874;
            v60 = v38;
            v61 = 2112;
            v62 = v9;
            v63 = 2112;
            v64 = v14;
            _os_log_impl(&dword_2531F8000, v36, OS_LOG_TYPE_ERROR, "%{public}@Assistant characteristic %@ writeHAP characteristic %@ unknown", buf, 0x20u);
          }

          v12 = v53;
        }

        else
        {
          v22 = objc_autoreleasePoolPush();
          v36 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
          {
            v37 = HMFGetLogIdentifier();
            *buf = 138543874;
            v60 = v37;
            v61 = 2112;
            v62 = v9;
            v63 = 2112;
            v64 = v13;
            _os_log_impl(&dword_2531F8000, v36, OS_LOG_TYPE_ERROR, "%{public}@Assistant characteristic %@ readHAP characteristic %@ unknown", buf, 0x20u);
          }
        }

        objc_autoreleasePoolPop(v22);
        LOBYTE(v22) = 0;
        goto LABEL_35;
      }

      v13 = [v10 hmf_stringForKey:v43];
      v15 = [v10 hmf_stringForKey:v42];
      v14 = v15;
      if (v13)
      {
        goto LABEL_9;
      }

      v18 = 1;
      if (v15)
      {
        goto LABEL_11;
      }

LABEL_12:
      v21 = v5;
      v22 = [v10 hmf_stringForKey:v48];
      if (v22)
      {
        v23 = [[HMDHAPMetadataAssistantCharacteristic alloc] initWithName:v9 readHAPCharacteristic:v13 writeHAPCharacteristic:v14 format:v22];
        buf[0] = 0;
        v24 = [v10 hmf_BOOLForKey:v46 isPresent:buf];
        [(HMDHAPMetadataAssistantCharacteristic *)v23 setSupportsLocalization:buf[0] & v24 & 1];
        v25 = [v10 hmf_dictionaryForKey:v45];
        [(HMDHAPMetadataAssistantCharacteristic *)v23 setValues:v25];

        v26 = [v10 hmf_dictionaryForKey:v44];
        [(HMDHAPMetadataAssistantCharacteristic *)v23 setOutValues:v26];

        [v47 setObject:v23 forKeyedSubscript:v9];
        if ((v18 & 1) == 0)
        {
          hapMetadata3 = [(HMDHAPMetadata *)self hapMetadata];
          v28 = [hapMetadata3 characteristicTypeFromUTI:v13];
          [v21 setObject:v9 forKey:v28];
        }

        if (v14)
        {
          hapMetadata4 = [(HMDHAPMetadata *)self hapMetadata];
          v30 = [hapMetadata4 characteristicTypeFromUTI:v14];
          [v21 setObject:v9 forKey:v30];
        }
      }

      else
      {
        v31 = objc_autoreleasePoolPush();
        v32 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          v33 = HMFGetLogIdentifier();
          *buf = v41;
          v60 = v33;
          v61 = 2112;
          v62 = v9;
          _os_log_impl(&dword_2531F8000, v32, OS_LOG_TYPE_ERROR, "%{public}@Assistant characteristic %@ format not specified unknown", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v31);
      }

      v5 = v21;
      if (!v22)
      {
        v6 = v49;
LABEL_35:
        v35 = v6;
        v4 = v47;
        goto LABEL_36;
      }

      ++v8;
      v6 = v49;
    }

    while (v50 != v8);
    v34 = [v49 countByEnumeratingWithState:&v55 objects:v65 count:16];
    v4 = v47;
    v50 = v34;
  }

  while (v34);
LABEL_27:

  v22 = [v4 copy];
  [(HMDHAPMetadata *)self setAssistantCharacteristics:v22];

  v35 = [v5 copy];
  [(HMDHAPMetadata *)self setAssistantChrHAPTypeNameMap:v35];
  LOBYTE(v22) = 1;
LABEL_36:

  v39 = *MEMORY[0x277D85DE8];
  return v22;
}

- (BOOL)parseAndSetAssistantServices:(id)services
{
  v36 = *MEMORY[0x277D85DE8];
  servicesCopy = services;
  v4 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(servicesCopy, "count")}];
  v5 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(servicesCopy, "count")}];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v6 = servicesCopy;
  v7 = [v6 countByEnumeratingWithState:&v25 objects:v35 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v26;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        v11 = v4;
        if (*v26 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v25 + 1) + 8 * i);
        v13 = [v6 objectForKeyedSubscript:v12];
        hapMetadata = [(HMDHAPMetadata *)self hapMetadata];
        v15 = [hapMetadata serviceTypeFromUTI:v13];

        if (!v15)
        {
          v19 = objc_autoreleasePoolPush();
          v20 = HMFGetOSLogHandle();
          v4 = v11;
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            v21 = HMFGetLogIdentifier();
            *buf = 138543874;
            v30 = v21;
            v31 = 2112;
            v32 = v12;
            v33 = 2112;
            v34 = v13;
            _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_ERROR, "%{public}@Assistant service %@ not mappable - no such HAP service %@", buf, 0x20u);
          }

          objc_autoreleasePoolPop(v19);
          v18 = 0;
          v17 = v6;
          goto LABEL_13;
        }

        v4 = v11;
        [v11 setObject:v15 forKeyedSubscript:v12];
        [v5 setObject:v12 forKeyedSubscript:v15];
      }

      v8 = [v6 countByEnumeratingWithState:&v25 objects:v35 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v16 = [v4 copy];
  [(HMDHAPMetadata *)self setAssistantServiceNameHAPTypeMap:v16];

  v17 = [v5 copy];
  [(HMDHAPMetadata *)self setAssistantServiceHAPTypeNameMap:v17];
  v18 = 1;
LABEL_13:

  v22 = *MEMORY[0x277D85DE8];
  return v18;
}

- (id)parseCharacteristicArray:(id)array
{
  v29 = *MEMORY[0x277D85DE8];
  arrayCopy = array;
  v5 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(arrayCopy, "count")}];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = arrayCopy;
  v7 = [v6 countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v21;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v20 + 1) + 8 * i);
        hapMetadata = [(HMDHAPMetadata *)self hapMetadata];
        v13 = [hapMetadata characteristicTypeFromUTI:v11];

        if (!v13)
        {
          v15 = objc_autoreleasePoolPush();
          v16 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            v17 = HMFGetLogIdentifier();
            *buf = 138543618;
            v25 = v17;
            v26 = 2112;
            v27 = v11;
            _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_ERROR, "%{public}@characteristicName %@ is not a standard HAP characteristicName", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v15);
          v14 = 0;
          goto LABEL_13;
        }

        [v5 addObject:v13];
      }

      v8 = [v6 countByEnumeratingWithState:&v20 objects:v28 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v14 = [v5 copy];
LABEL_13:

  v18 = *MEMORY[0x277D85DE8];

  return v14;
}

- (id)parseServiceArray:(id)array
{
  v29 = *MEMORY[0x277D85DE8];
  arrayCopy = array;
  v5 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(arrayCopy, "count")}];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = arrayCopy;
  v7 = [v6 countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v21;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v20 + 1) + 8 * i);
        hapMetadata = [(HMDHAPMetadata *)self hapMetadata];
        v13 = [hapMetadata serviceTypeFromUTI:v11];

        if (!v13)
        {
          v15 = objc_autoreleasePoolPush();
          v16 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            v17 = HMFGetLogIdentifier();
            *buf = 138543618;
            v25 = v17;
            v26 = 2112;
            v27 = v11;
            _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_ERROR, "%{public}@ServiceName %@ is not a standard HAP serviceName", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v15);
          v14 = 0;
          goto LABEL_13;
        }

        [v5 addObject:v13];
      }

      v8 = [v6 countByEnumeratingWithState:&v20 objects:v28 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v14 = [v5 copy];
LABEL_13:

  v18 = *MEMORY[0x277D85DE8];

  return v14;
}

- (id)parseHMAccessoryFirmwareUpdatePolicyCharacteristics:(id)characteristics
{
  v59 = *MEMORY[0x277D85DE8];
  characteristicsCopy = characteristics;
  v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(characteristicsCopy, "count")}];
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v6 = characteristicsCopy;
  v48 = [v6 countByEnumeratingWithState:&v50 objects:v58 count:16];
  if (v48)
  {
    v49 = *v51;
    v47 = *MEMORY[0x277CFE798];
    v45 = *MEMORY[0x277CFE790];
    v43 = v5;
    v46 = v6;
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*v51 != v49)
      {
        objc_enumerationMutation(v6);
      }

      v8 = *(*(&v50 + 1) + 8 * v7);
      v9 = [(HMDHAPMetadata *)self characteristicTypeFromName:v8];
      if (!v9)
      {
        v28 = objc_autoreleasePoolPush();
        selfCopy = self;
        v30 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          v31 = HMFGetLogIdentifier();
          *buf = 138543618;
          v55 = v31;
          v56 = 2112;
          v57 = v8;
          _os_log_impl(&dword_2531F8000, v30, OS_LOG_TYPE_ERROR, "%{public}@Type not found for characteristic name %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v28);
        goto LABEL_33;
      }

      v10 = v9;
      v11 = [v6 hmf_dictionaryForKey:v8];
      if (!v11)
      {
        break;
      }

      v12 = v11;
      v13 = [v11 hmf_arrayForKey:v47];
      v14 = v13;
      if (!v13 || ![v13 count])
      {
        v24 = objc_autoreleasePoolPush();
        selfCopy2 = self;
        v26 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
        {
          v27 = HMFGetLogIdentifier();
          *buf = 138543618;
          v55 = v27;
          v56 = 2112;
          v57 = v10;
          _os_log_impl(&dword_2531F8000, v26, OS_LOG_TYPE_DEBUG, "%{public}@Values not available for characteristic %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v24);
        goto LABEL_29;
      }

      v15 = [v12 hmf_numberForKey:v45];
      hapMetadata = [(HMDHAPMetadata *)self hapMetadata];
      v17 = [hapMetadata hapCharacteristicFromType:v10];
      format = [v17 format];

      if (!format)
      {
        v36 = objc_autoreleasePoolPush();
        selfCopy3 = self;
        v38 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
        {
          v39 = HMFGetLogIdentifier();
          *buf = 138543618;
          v55 = v39;
          v56 = 2112;
          v57 = v10;
          _os_log_impl(&dword_2531F8000, v38, OS_LOG_TYPE_DEBUG, "%{public}@Format not found for characteristic %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v36);
        v6 = v46;
        goto LABEL_33;
      }

      selfCopy4 = self;
      v20 = [[HMDAccessoryFirmwareUpdatePolicyCharacteristicConfiguration alloc] initWithType:v10 format:format values:v14 settlingTime:v15];
      if (v20)
      {
        [v5 addObject:v20];
      }

      else
      {
        context = objc_autoreleasePoolPush();
        v21 = selfCopy4;
        v22 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          v42 = HMFGetLogIdentifier();
          *buf = 138543618;
          v55 = v42;
          v56 = 2112;
          v57 = v10;
          _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_ERROR, "%{public}@Characteristic configuration failed for characteristic %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(context);
        v5 = v43;
      }

      v6 = v46;
      if (!v20)
      {
        goto LABEL_33;
      }

      ++v7;
      self = selfCopy4;
      if (v48 == v7)
      {
        v48 = [v46 countByEnumeratingWithState:&v50 objects:v58 count:16];
        if (v48)
        {
          goto LABEL_3;
        }

        goto LABEL_19;
      }
    }

    v32 = objc_autoreleasePoolPush();
    selfCopy5 = self;
    v34 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      v35 = HMFGetLogIdentifier();
      *buf = 138543618;
      v55 = v35;
      v56 = 2112;
      v57 = v10;
      _os_log_impl(&dword_2531F8000, v34, OS_LOG_TYPE_ERROR, "%{public}@Failed while parsing characteristic %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v32);
LABEL_29:

LABEL_33:
    v23 = 0;
    goto LABEL_34;
  }

LABEL_19:

  v23 = [v5 copy];
LABEL_34:

  v40 = *MEMORY[0x277D85DE8];

  return v23;
}

- (id)parseHMAccessoryFirmwareUpdatePolicyCriteria:(id)criteria
{
  v30 = *MEMORY[0x277D85DE8];
  criteriaCopy = criteria;
  v5 = objc_alloc_init(HMDAccessoryFirmwareUpdatePolicyCriteria);
  -[HMDAccessoryFirmwareUpdatePolicyCriteria setAnyUserAtHome:](v5, "setAnyUserAtHome:", [criteriaCopy hmf_BOOLForKey:*MEMORY[0x277CFE788]]);
  -[HMDAccessoryFirmwareUpdatePolicyCriteria setNoUserAtHome:](v5, "setNoUserAtHome:", [criteriaCopy hmf_BOOLForKey:*MEMORY[0x277CFE7B8]]);
  -[HMDAccessoryFirmwareUpdatePolicyCriteria setCheckForScheduledAutomation:](v5, "setCheckForScheduledAutomation:", [criteriaCopy hmf_BOOLForKey:*MEMORY[0x277CFE7A8]]);
  v6 = [criteriaCopy hmf_dictionaryForKey:*MEMORY[0x277CFE7A0]];
  v7 = [(HMDHAPMetadata *)self parseHMAccessoryFirmwareUpdatePolicyCharacteristics:v6];
  [(HMDAccessoryFirmwareUpdatePolicyCriteria *)v5 setCharacteristicConfigurations:v7];

  if (v6)
  {
    characteristicConfigurations = [(HMDAccessoryFirmwareUpdatePolicyCriteria *)v5 characteristicConfigurations];

    if (!characteristicConfigurations)
    {
      v22 = objc_autoreleasePoolPush();
      selfCopy = self;
      v24 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v25 = HMFGetLogIdentifier();
        v28 = 138543362;
        v29 = v25;
        _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_ERROR, "%{public}@Failed to parse characteristics", &v28, 0xCu);
      }

      objc_autoreleasePoolPop(v22);
      goto LABEL_18;
    }
  }

  v9 = [criteriaCopy hmf_dictionaryForKey:*MEMORY[0x277CFE7D0]];
  v10 = v9;
  if (!v9)
  {
LABEL_8:

    v16 = v5;
    goto LABEL_19;
  }

  v11 = [v9 hmf_stringForKey:*MEMORY[0x277CFE7D8]];
  v12 = [v10 hmf_stringForKey:*MEMORY[0x277CFE7C8]];
  v13 = v12;
  if (v11 && v12)
  {
    v14 = [[HMDAccessoryFirmwareUpdateTimeWindow alloc] initWithStartTime:v11 endTime:v12];
    if (v14)
    {
      v15 = v14;
      [(HMDAccessoryFirmwareUpdatePolicyCriteria *)v5 setUpdateTimeWindow:v14];

      goto LABEL_8;
    }

    v17 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v19 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    v20 = HMFGetLogIdentifier();
    v28 = 138543362;
    v29 = v20;
    v21 = "%{public}@Failed to initialize time window";
    goto LABEL_16;
  }

  v17 = objc_autoreleasePoolPush();
  selfCopy3 = self;
  v19 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    v20 = HMFGetLogIdentifier();
    v28 = 138543362;
    v29 = v20;
    v21 = "%{public}@Failed to parse time window";
LABEL_16:
    _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_ERROR, v21, &v28, 0xCu);
  }

LABEL_17:

  objc_autoreleasePoolPop(v17);
LABEL_18:
  v16 = 0;
LABEL_19:

  v26 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)parseHMAccessoryFirmwareUpdatePolicyServices:(id)services
{
  v95 = *MEMORY[0x277D85DE8];
  servicesCopy = services;
  v5 = servicesCopy;
  if (!servicesCopy)
  {
    dictionary = [MEMORY[0x277CBEAC0] dictionary];
    goto LABEL_48;
  }

  selfCopy = self;
  v6 = [servicesCopy hmf_dictionaryForKey:*MEMORY[0x277CFE7C0]];
  v7 = 0x277CBE000uLL;
  v8 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v5, "count")}];
  dictionary2 = [MEMORY[0x277CBEAC0] dictionary];
  v83 = 0u;
  v84 = 0u;
  v85 = 0u;
  v86 = 0u;
  v9 = v6;
  v66 = [v9 countByEnumeratingWithState:&v83 objects:v94 count:16];
  if (!v66)
  {
    goto LABEL_34;
  }

  v67 = *v84;
  v10 = *MEMORY[0x277CFE7B0];
  v68 = v9;
LABEL_4:
  v11 = 0;
  v12 = selfCopy;
LABEL_5:
  if (*v84 != v67)
  {
    objc_enumerationMutation(v9);
  }

  v13 = *(*(&v83 + 1) + 8 * v11);
  v14 = [(HMDHAPMetadata *)v12 serviceTypeFromName:v13];
  if (!v14)
  {
    v51 = objc_autoreleasePoolPush();
    v52 = v12;
    v53 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
    {
      v54 = HMFGetLogIdentifier();
      *buf = 138543618;
      v89 = v54;
      v90 = 2112;
      v91 = v13;
      _os_log_impl(&dword_2531F8000, v53, OS_LOG_TYPE_ERROR, "%{public}@Service type not found for service:%@.", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v51);
    dictionary = dictionary2;
    goto LABEL_46;
  }

  v15 = v14;
  v16 = [v9 hmf_dictionaryForKey:v13];
  if (v16)
  {
    v17 = v16;
    v69 = v11;
    v18 = [*(v7 + 2872) dictionaryWithCapacity:{objc_msgSend(v16, "count")}];
    v70 = v17;
    if (![v17 count])
    {
      v19 = [MEMORY[0x277CCACA8] stringWithString:v10];
      v34 = objc_alloc_init(HMDAccessoryFirmwareUpdatePolicyCriteria);
      v35 = [[HMDAccessoryFirmwareUpdatePolicyServiceConfiguration alloc] initWithType:v15 category:v19 criteria:v34];
      if (v35)
      {
        v36 = v35;
        [v18 setValue:v35 forKey:v19];

        v9 = v68;
        v12 = selfCopy;
        goto LABEL_32;
      }

      v59 = v19;
      v60 = objc_autoreleasePoolPush();
      v61 = selfCopy;
      v62 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
      {
        v63 = HMFGetLogIdentifier();
        *buf = 138543874;
        v89 = v63;
        v90 = 2112;
        v91 = v59;
        v92 = 2112;
        v93 = v15;
        _os_log_impl(&dword_2531F8000, v62, OS_LOG_TYPE_ERROR, "%{public}@Service configuration failed for category %@ in service:%@.", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v60);
      dictionary = dictionary2;

      v19 = v59;
      v48 = v70;
LABEL_44:

      goto LABEL_45;
    }

    v81 = 0u;
    v82 = 0u;
    v79 = 0u;
    v80 = 0u;
    v19 = v17;
    v77 = [v19 countByEnumeratingWithState:&v79 objects:v87 count:16];
    if (!v77)
    {
      goto LABEL_29;
    }

    v64 = v8;
    v65 = v5;
    v78 = *v80;
    v73 = v18;
    v74 = v19;
LABEL_12:
    v20 = 0;
    while (1)
    {
      if (*v80 != v78)
      {
        objc_enumerationMutation(v19);
      }

      v21 = *(*(&v79 + 1) + 8 * v20);
      if ([v21 isEqualToString:{v10, v64, v65}])
      {
        [MEMORY[0x277CCACA8] stringWithString:v10];
      }

      else
      {
        [(HMDHAPMetadata *)v12 categoryTypeFromName:v21];
      }
      v22 = ;
      if (!v22)
      {
        break;
      }

      v23 = v10;
      v24 = [v19 hmf_dictionaryForKey:v21];
      v25 = [(HMDHAPMetadata *)v12 parseHMAccessoryFirmwareUpdatePolicyCriteria:v24];
      if (!v25)
      {
        v42 = objc_autoreleasePoolPush();
        v43 = v12;
        v44 = v42;
        v45 = v43;
        v46 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
        {
          v47 = HMFGetLogIdentifier();
          *buf = 138543874;
          v89 = v47;
          v90 = 2112;
          v91 = v22;
          v92 = 2112;
          v93 = v15;
          _os_log_impl(&dword_2531F8000, v46, OS_LOG_TYPE_ERROR, "%{public}@Criteria configuration failed for category %@ in service:%@.", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v44);
        dictionary = dictionary2;

LABEL_42:
        v19 = v74;
        v48 = v74;
        v8 = v64;
        v5 = v65;
        goto LABEL_44;
      }

      v26 = v25;
      v27 = [[HMDAccessoryFirmwareUpdatePolicyServiceConfiguration alloc] initWithType:v15 category:v22 criteria:v25];
      if (v27)
      {
        [v18 setValue:v27 forKey:v22];
      }

      else
      {
        v28 = v12;
        v29 = v15;
        v30 = objc_autoreleasePoolPush();
        v31 = v28;
        v32 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          HMFGetLogIdentifier();
          v33 = v72 = v30;
          *buf = 138543874;
          v89 = v33;
          v90 = 2112;
          v91 = v22;
          v92 = 2112;
          v93 = v29;
          _os_log_impl(&dword_2531F8000, v32, OS_LOG_TYPE_ERROR, "%{public}@Service configuration failed for category %@ in service:%@.", buf, 0x20u);

          v30 = v72;
        }

        objc_autoreleasePoolPop(v30);
        v71 = dictionary2;
        v15 = v29;
        v18 = v73;
        v19 = v74;
        v12 = selfCopy;
      }

      if (!v27)
      {
        v48 = v19;
        v8 = v64;
        v5 = v65;
        dictionary = v71;
        goto LABEL_44;
      }

      ++v20;
      v10 = v23;
      if (v77 == v20)
      {
        v77 = [v19 countByEnumeratingWithState:&v79 objects:v87 count:16];
        if (v77)
        {
          goto LABEL_12;
        }

        v8 = v64;
        v5 = v65;
LABEL_29:
        v9 = v68;
LABEL_32:

        [v8 setValue:v18 forKey:v15];
        v11 = v69 + 1;
        v7 = 0x277CBE000;
        if (v69 + 1 == v66)
        {
          v66 = [v9 countByEnumeratingWithState:&v83 objects:v94 count:16];
          if (!v66)
          {
LABEL_34:

            dictionary = [v8 copy];
            goto LABEL_47;
          }

          goto LABEL_4;
        }

        goto LABEL_5;
      }
    }

    v38 = objc_autoreleasePoolPush();
    v39 = v12;
    v40 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      v41 = HMFGetLogIdentifier();
      *buf = 138543618;
      v89 = v41;
      v90 = 2112;
      v91 = v15;
      _os_log_impl(&dword_2531F8000, v40, OS_LOG_TYPE_ERROR, "%{public}@Category type not found for service:%@.", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v38);
    dictionary = dictionary2;
    goto LABEL_42;
  }

  v55 = objc_autoreleasePoolPush();
  v56 = v12;
  v57 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
  {
    v58 = HMFGetLogIdentifier();
    *buf = 138543618;
    v89 = v58;
    v90 = 2112;
    v91 = v15;
    _os_log_impl(&dword_2531F8000, v57, OS_LOG_TYPE_ERROR, "%{public}@Failed while parsing policy configuration for service:%@.", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v55);
  dictionary = dictionary2;
LABEL_45:

LABEL_46:
  v9 = v68;

LABEL_47:
LABEL_48:

  v49 = *MEMORY[0x277D85DE8];

  return dictionary;
}

- (void)parseAndSetHMAccessoryFirmwareUpdatePolicies:(id)policies
{
  v17 = *MEMORY[0x277D85DE8];
  policiesCopy = policies;
  v5 = policiesCopy;
  if (policiesCopy)
  {
    v6 = [policiesCopy hmf_dictionaryForKey:*MEMORY[0x277CFE7E0]];
    v7 = [(HMDHAPMetadata *)self parseHMAccessoryFirmwareUpdatePolicyServices:v6];
    [(HMDHAPMetadata *)self setFirmwareUpdateStagingPolicies:v7];

    v8 = [v5 hmf_dictionaryForKey:*MEMORY[0x277CFE778]];
    v9 = [(HMDHAPMetadata *)self parseHMAccessoryFirmwareUpdatePolicyServices:v8];
    [(HMDHAPMetadata *)self setFirmwareUpdateAutoApplyPolicies:v9];
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      v15 = 138543362;
      v16 = v13;
      _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_ERROR, "%{public}@Accessory firmware update policies not defined!", &v15, 0xCu);
    }

    objc_autoreleasePoolPop(v10);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)parseAndSetHMCategories:(id)categories
{
  selfCopy = self;
  v37 = *MEMORY[0x277D85DE8];
  categoriesCopy = categories;
  v27 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(categoriesCopy, "count")}];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v4 = categoriesCopy;
  v5 = [v4 countByEnumeratingWithState:&v30 objects:v36 count:16];
  if (v5)
  {
    v6 = v5;
    v29 = *v31;
    v28 = *MEMORY[0x277CFED70];
    v7 = *MEMORY[0x277CFEDD8];
    v8 = *MEMORY[0x277CFED50];
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v31 != v29)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v30 + 1) + 8 * i);
        v11 = v4;
        v12 = [v4 hmf_dictionaryForKey:{v10, selfCopy}];
        v13 = [v12 hmf_numberForKey:v28];
        v14 = [v12 hmf_stringForKey:v7];
        v15 = [v12 hmf_stringForKey:v8];
        v16 = v15;
        if (v13)
        {
          v17 = v14 == 0;
        }

        else
        {
          v17 = 1;
        }

        if (!v17 && v15 != 0)
        {
          v19 = [[HMDHAPMetadataCategory alloc] initWithIdentifier:v13 uuid:v14 name:v10 description:v15];
          if (v19)
          {
            [v27 setObject:v19 forKey:v13];
          }
        }

        v4 = v11;
      }

      v6 = [v11 countByEnumeratingWithState:&v30 objects:v36 count:16];
    }

    while (v6);
  }

  if (![v27 count])
  {
    v20 = objc_autoreleasePoolPush();
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = HMFGetLogIdentifier();
      *buf = 138543362;
      v35 = v22;
      _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@There are no accessory categories in the metadata", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v20);
  }

  v23 = [v27 copy];
  [v26 setHmAccessoryCategories:v23];

  v24 = *MEMORY[0x277D85DE8];
}

- (void)parseAndSetWakeOnOperationsFilter:(id)filter
{
  v34 = *MEMORY[0x277D85DE8];
  filterCopy = filter;
  if (filterCopy)
  {
    v21 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v19 = filterCopy;
    obj = filterCopy;
    v22 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
    if (v22)
    {
      v20 = *v29;
      do
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v29 != v20)
          {
            objc_enumerationMutation(obj);
          }

          v6 = *(*(&v28 + 1) + 8 * i);
          v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
          v8 = [obj hmf_dictionaryForKey:v6];
          v24 = 0u;
          v25 = 0u;
          v26 = 0u;
          v27 = 0u;
          v9 = [v8 countByEnumeratingWithState:&v24 objects:v32 count:16];
          if (v9)
          {
            v10 = v9;
            v11 = *v25;
            do
            {
              for (j = 0; j != v10; ++j)
              {
                if (*v25 != v11)
                {
                  objc_enumerationMutation(v8);
                }

                v13 = *(*(&v24 + 1) + 8 * j);
                v14 = [v8 hmf_dictionaryForKey:v13];
                v15 = [(HMDHAPMetadata *)self serviceTypeFromName:v13];
                [v7 setObject:v14 forKey:v15];
              }

              v10 = [v8 countByEnumeratingWithState:&v24 objects:v32 count:16];
            }

            while (v10);
          }

          v16 = [(HMDHAPMetadata *)self characteristicTypeFromName:v6];
          [v21 setObject:v7 forKey:v16];
        }

        v22 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
      }

      while (v22);
    }

    v17 = [v21 copy];
    [(HMDHAPMetadata *)self setHmWakeOnOperationsFilter:v17];

    filterCopy = v19;
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)parseAndSetAllowableSecuringWrites:(id)writes
{
  v40 = *MEMORY[0x277D85DE8];
  writesCopy = writes;
  v5 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(writesCopy, "count")}];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v6 = writesCopy;
  v7 = [v6 countByEnumeratingWithState:&v31 objects:v39 count:16];
  if (v7)
  {
    v9 = v7;
    v10 = *v32;
    *&v8 = 138543618;
    v29 = v8;
    do
    {
      v11 = 0;
      v30 = v9;
      do
      {
        if (*v32 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v31 + 1) + 8 * v11);
        hapMetadata = [(HMDHAPMetadata *)self hapMetadata];
        v14 = [hapMetadata characteristicTypeFromUTI:v12];

        if (v14)
        {
          v15 = [v6 hmf_arrayForKey:v12];
          if (v15)
          {
            v16 = [MEMORY[0x277CBEB98] setWithArray:v15];
            [v5 setObject:v16 forKey:v14];
          }
        }

        else
        {
          v17 = v10;
          v18 = v6;
          selfCopy = self;
          v20 = v5;
          v21 = objc_autoreleasePoolPush();
          v22 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            v23 = HMFGetLogIdentifier();
            *buf = v29;
            v36 = v23;
            v37 = 2112;
            v38 = v12;
            _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_ERROR, "%{public}@Unknown characteristic '%@' while parsing tuple", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v21);
          v5 = v20;
          self = selfCopy;
          v6 = v18;
          v10 = v17;
          v9 = v30;
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [v6 countByEnumeratingWithState:&v31 objects:v39 count:16];
    }

    while (v9);
  }

  if (![v5 count])
  {
    v24 = objc_autoreleasePoolPush();
    v25 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v26 = HMFGetLogIdentifier();
      *buf = 138543362;
      v36 = v26;
      _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_DEFAULT, "%{public}@There are no allowable securing writes in the metadata", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v24);
  }

  v27 = [v5 copy];
  [(HMDHAPMetadata *)self setHmAllowableSecuringWrites:v27];

  v28 = *MEMORY[0x277D85DE8];
}

- (id)parseMetadataTupleSetFromPlist:(id)plist
{
  v17 = *MEMORY[0x277D85DE8];
  plistCopy = plist;
  hapMetadata = [(HMDHAPMetadata *)self hapMetadata];
  v6 = [hapMetadata parseCharacteristicServiceTuples:plistCopy];

  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v13 = 138543618;
      v14 = v10;
      v15 = 2112;
      v16 = plistCopy;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_ERROR, "%{public}@Failed to parse characteristic/service tuples: %@", &v13, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
  }

  v11 = *MEMORY[0x277D85DE8];

  return v6;
}

- (BOOL)parseAndSetAssistantMetadataWithAssistantPlist:(id)plist
{
  v20 = *MEMORY[0x277D85DE8];
  plistCopy = plist;
  v5 = [plistCopy hmf_dictionaryForKey:*MEMORY[0x277CFEDC8]];
  v6 = [(HMDHAPMetadata *)self parseAndSetAssistantServices:v5];

  if (!v6)
  {
    v12 = objc_autoreleasePoolPush();
    v13 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    v14 = HMFGetLogIdentifier();
    v18 = 138543362;
    v19 = v14;
    v15 = "%{public}@Failed to parse assistant services metadata";
LABEL_11:
    _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_ERROR, v15, &v18, 0xCu);

    goto LABEL_12;
  }

  v7 = [plistCopy hmf_dictionaryForKey:*MEMORY[0x277CFED40]];
  v8 = [(HMDHAPMetadata *)self parseAndSetAssistantCharacteristics:v7];

  if (!v8)
  {
    v12 = objc_autoreleasePoolPush();
    v13 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    v14 = HMFGetLogIdentifier();
    v18 = 138543362;
    v19 = v14;
    v15 = "%{public}@Failed to parse assistant characteristics metadata";
    goto LABEL_11;
  }

  v9 = [plistCopy hmf_dictionaryForKey:*MEMORY[0x277CFEDE0]];
  v10 = [(HMDHAPMetadata *)self parseAndSetAssistantUnits:v9];

  if (!v10)
  {
    v12 = objc_autoreleasePoolPush();
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v18 = 138543362;
      v19 = v14;
      v15 = "%{public}@Failed to parse assistant units metadata";
      goto LABEL_11;
    }

LABEL_12:

    objc_autoreleasePoolPop(v12);
    v11 = 0;
    goto LABEL_13;
  }

  v11 = 1;
LABEL_13:

  v16 = *MEMORY[0x277D85DE8];
  return v11;
}

- (BOOL)parseAndSetHMMetadataWithHMPlist:(id)plist
{
  plistCopy = plist;
  v5 = [plistCopy hmf_dictionaryForKey:*MEMORY[0x277CFEDB8]];
  v6 = [(HMDHAPMetadata *)self parseMetadataTupleSetFromPlist:v5];
  [(HMDHAPMetadata *)self setHmRequiresDeviceUnlockTuples:v6];

  hmRequiresDeviceUnlockTuples = [(HMDHAPMetadata *)self hmRequiresDeviceUnlockTuples];

  if (hmRequiresDeviceUnlockTuples)
  {
    v8 = [plistCopy hmf_dictionaryForKey:*MEMORY[0x277CFED20]];
    [(HMDHAPMetadata *)self parseAndSetAllowableSecuringWrites:v8];

    v9 = [plistCopy hmf_dictionaryForKey:*MEMORY[0x277CFEDF8]];
    [(HMDHAPMetadata *)self parseAndSetWakeOnOperationsFilter:v9];

    v10 = [plistCopy hmf_dictionaryForKey:*MEMORY[0x277CFED38]];
    [(HMDHAPMetadata *)self parseAndSetHMCategories:v10];

    v11 = [plistCopy hmf_dictionaryForKey:*MEMORY[0x277CFED60]];
    v12 = *MEMORY[0x277CFEDC8];
    v13 = [v11 hmf_arrayForKey:*MEMORY[0x277CFEDC8]];
    v14 = [(HMDHAPMetadata *)self parseServiceArray:v13];
    [(HMDHAPMetadata *)self setHmBlacklistedServices:v14];

    v15 = *MEMORY[0x277CFED40];
    v16 = [v11 hmf_arrayForKey:*MEMORY[0x277CFED40]];
    v17 = [(HMDHAPMetadata *)self parseCharacteristicArray:v16];
    [(HMDHAPMetadata *)self setHmBlacklistedCharacteristics:v17];

    v18 = [plistCopy hmf_dictionaryForKey:*MEMORY[0x277CFED58]];

    v19 = [v18 hmf_arrayForKey:v12];
    v20 = [(HMDHAPMetadata *)self parseServiceArray:v19];
    [(HMDHAPMetadata *)self setHmBlacklistedServicesFromApp:v20];

    v21 = [v18 hmf_arrayForKey:v15];
    v22 = [(HMDHAPMetadata *)self parseCharacteristicArray:v21];
    [(HMDHAPMetadata *)self setHmBlacklistedCharacteristicsFromApp:v22];

    hmBlacklistedServices = [(HMDHAPMetadata *)self hmBlacklistedServices];
    if (!hmBlacklistedServices)
    {
      goto LABEL_11;
    }

    v24 = hmBlacklistedServices;
    hmBlacklistedCharacteristics = [(HMDHAPMetadata *)self hmBlacklistedCharacteristics];
    if (!hmBlacklistedCharacteristics)
    {
      v40 = 0;
LABEL_20:

      goto LABEL_21;
    }

    v26 = hmBlacklistedCharacteristics;
    hmBlacklistedServicesFromApp = [(HMDHAPMetadata *)self hmBlacklistedServicesFromApp];
    if (!hmBlacklistedServicesFromApp)
    {
      v40 = 0;
LABEL_19:

      goto LABEL_20;
    }

    v28 = hmBlacklistedServicesFromApp;
    hmBlacklistedCharacteristicsFromApp = [(HMDHAPMetadata *)self hmBlacklistedCharacteristicsFromApp];

    if (!hmBlacklistedCharacteristicsFromApp)
    {
LABEL_11:
      v40 = 0;
LABEL_21:

      goto LABEL_22;
    }

    v24 = [plistCopy hmf_dictionaryForKey:*MEMORY[0x277CFED90]];
    v26 = [v24 hmf_dictionaryForKey:*MEMORY[0x277CFED88]];
    v30 = [v24 hmf_dictionaryForKey:*MEMORY[0x277CFED30]];
    v31 = [v24 hmf_dictionaryForKey:*MEMORY[0x277CFED48]];
    v32 = [(HMDHAPMetadata *)self parseMetadataTupleSetFromPlist:v26];
    [(HMDHAPMetadata *)self setHmNotificationAutoEnabledTuples:v32];

    v33 = [(HMDHAPMetadata *)self parseMetadataTupleSetFromPlist:v30];
    [(HMDHAPMetadata *)self setHmBulletinBoardEnabledTuples:v33];

    v34 = [(HMDHAPMetadata *)self parseMetadataTupleSetFromPlist:v31];
    [(HMDHAPMetadata *)self setHmCoalesceNotificationsTuples:v34];

    hmNotificationAutoEnabledTuples = [(HMDHAPMetadata *)self hmNotificationAutoEnabledTuples];
    if (hmNotificationAutoEnabledTuples)
    {
      v36 = hmNotificationAutoEnabledTuples;
      hmBulletinBoardEnabledTuples = [(HMDHAPMetadata *)self hmBulletinBoardEnabledTuples];
      if (hmBulletinBoardEnabledTuples)
      {
        v38 = hmBulletinBoardEnabledTuples;
        v42 = v30;
        hmCoalesceNotificationsTuples = [(HMDHAPMetadata *)self hmCoalesceNotificationsTuples];

        if (!hmCoalesceNotificationsTuples)
        {
          v40 = 0;
          v30 = v42;
          goto LABEL_18;
        }

        v36 = [plistCopy hmf_dictionaryForKey:*MEMORY[0x277CFE780]];
        [(HMDHAPMetadata *)self parseAndSetHMAccessoryFirmwareUpdatePolicies:v36];
        v40 = 1;
        v30 = v42;
      }

      else
      {
        v40 = 0;
      }
    }

    else
    {
      v40 = 0;
    }

LABEL_18:

    goto LABEL_19;
  }

  v40 = 0;
LABEL_22:

  return v40;
}

- (id)parseAndSetRawPlist:(id)plist
{
  v24 = *MEMORY[0x277D85DE8];
  plistCopy = plist;
  v5 = plistCopy;
  if (plistCopy)
  {
    v6 = [plistCopy hmf_dictionaryForKey:*MEMORY[0x277CFED18]];
    if ([(HMDHAPMetadata *)self parseAndSetHMMetadataWithHMPlist:v6])
    {
      v7 = [v5 hmf_dictionaryForKey:*MEMORY[0x277CFED28]];
      if ([(HMDHAPMetadata *)self parseAndSetAssistantMetadataWithAssistantPlist:v7])
      {
        v8 = 0;
      }

      else
      {
        v15 = objc_autoreleasePoolPush();
        v16 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          v17 = HMFGetLogIdentifier();
          v20 = 138543618;
          v21 = v17;
          v22 = 2112;
          v23 = v7;
          _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_ERROR, "%{public}@Failed to parse assistant metadata from plist %@", &v20, 0x16u);
        }

        objc_autoreleasePoolPop(v15);
        v8 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:1001];
      }
    }

    else
    {
      v12 = objc_autoreleasePoolPush();
      v13 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = HMFGetLogIdentifier();
        v20 = 138543618;
        v21 = v14;
        v22 = 2112;
        v23 = v6;
        _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_ERROR, "%{public}@Failed to parse HM metadata from plist %@", &v20, 0x16u);
      }

      objc_autoreleasePoolPop(v12);
      v8 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:1001];
    }
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v20 = 138543362;
      v21 = v11;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to set HMDMetadata because rawPlist is nil.", &v20, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
    v8 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:1001];
  }

  v18 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)autoApplyPolicyConfigurationForService:(id)service category:(id)category
{
  if (service)
  {
    categoryCopy = category;
    serviceCopy = service;
    firmwareUpdateAutoApplyPolicies = [(HMDHAPMetadata *)self firmwareUpdateAutoApplyPolicies];
    v9 = [firmwareUpdateAutoApplyPolicies valueForKey:serviceCopy];

    v10 = *MEMORY[0x277CFE7B0];
    if (categoryCopy)
    {
      v11 = categoryCopy;
    }

    else
    {
      v11 = *MEMORY[0x277CFE7B0];
    }

    v12 = [v9 valueForKey:v11];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)stagingPolicyConfigurationForService:(id)service category:(id)category
{
  if (service)
  {
    categoryCopy = category;
    serviceCopy = service;
    firmwareUpdateStagingPolicies = [(HMDHAPMetadata *)self firmwareUpdateStagingPolicies];
    v9 = [firmwareUpdateStagingPolicies valueForKey:serviceCopy];

    v10 = *MEMORY[0x277CFE7B0];
    if (categoryCopy)
    {
      v11 = categoryCopy;
    }

    else
    {
      v11 = *MEMORY[0x277CFE7B0];
    }

    v12 = [v9 valueForKey:v11];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)disallowsAssistantServiceType:(id)type characteristicType:(id)characteristicType
{
  characteristicTypeCopy = characteristicType;
  typeCopy = type;
  disallowedAssistantCharacteristicTypesByServiceType = [(HMDHAPMetadata *)self disallowedAssistantCharacteristicTypesByServiceType];
  v9 = [disallowedAssistantCharacteristicTypesByServiceType objectForKeyedSubscript:typeCopy];

  LOBYTE(typeCopy) = [v9 containsObject:characteristicTypeCopy];
  return typeCopy;
}

- (id)mapToAssistantCharacteristicValue:(id)value name:(id)name getActionType:(BOOL)type
{
  typeCopy = type;
  valueCopy = value;
  nameCopy = name;
  assistantCharacteristics = [(HMDHAPMetadata *)self assistantCharacteristics];
  v11 = [assistantCharacteristics objectForKeyedSubscript:nameCopy];

  if (v11)
  {
    outValues = [v11 outValues];
    v13 = [outValues count];

    if (v13 && typeCopy)
    {
      valueCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", valueCopy];
      outValues2 = [v11 outValues];
      v16 = [outValues2 objectForKeyedSubscript:valueCopy];
      goto LABEL_16;
    }

    values = [v11 values];
    v18 = [values count];

    if (v18)
    {
      values2 = [v11 values];
      valueCopy = [values2 allKeysForObject:valueCopy];

      if (![valueCopy count])
      {
        v16 = 0;
        goto LABEL_17;
      }

      outValues2 = [valueCopy firstObject];
      v20 = [MEMORY[0x277CCAC80] scannerWithString:outValues2];
      v24 = 0;
      v25 = 0.0;
      v23 = 0;
      if ([v20 scanDouble:&v25])
      {
        v21 = [MEMORY[0x277CCABB0] numberWithDouble:v25];
      }

      else if ([v20 scanLongLong:&v24])
      {
        v21 = [MEMORY[0x277CCABB0] numberWithLongLong:v24];
      }

      else if ([v20 scanInt:&v23])
      {
        v21 = [MEMORY[0x277CCABB0] numberWithBool:v23 != 0];
      }

      else
      {
        v21 = outValues2;
      }

      v16 = v21;

LABEL_16:
LABEL_17:

      if (v16)
      {
        goto LABEL_19;
      }
    }
  }

  v16 = valueCopy;
LABEL_19:

  return v16;
}

- (id)mapFromAssistantCharacteristicValue:(id)value name:(id)name
{
  valueCopy = value;
  nameCopy = name;
  assistantCharacteristics = [(HMDHAPMetadata *)self assistantCharacteristics];
  v9 = [assistantCharacteristics objectForKeyedSubscript:nameCopy];

  if (!v9)
  {
    goto LABEL_4;
  }

  values = [v9 values];
  v11 = [values count];

  if (!v11)
  {
    goto LABEL_4;
  }

  valueCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", valueCopy];
  values2 = [v9 values];
  v14 = [values2 objectForKeyedSubscript:valueCopy];

  if (!v14)
  {
LABEL_4:
    v14 = valueCopy;
  }

  return v14;
}

- (id)mapFromAssistantUnitName:(id)name
{
  nameCopy = name;
  assistantUnits = [(HMDHAPMetadata *)self assistantUnits];
  v6 = [assistantUnits hmf_stringForKey:nameCopy];

  return v6;
}

- (id)mapToAssistantUnitName:(id)name
{
  nameCopy = name;
  assistantUnits = [(HMDHAPMetadata *)self assistantUnits];
  v6 = [assistantUnits objectForKeyedSubscript:nameCopy];

  return v6;
}

- (id)mapCharacteristicValueType:(id)type
{
  if (type)
  {
    typeCopy = type;
    assistantCharacteristics = [(HMDHAPMetadata *)self assistantCharacteristics];
    v6 = [assistantCharacteristics objectForKeyedSubscript:typeCopy];

    format = [v6 format];
  }

  else
  {
    format = 0;
  }

  return format;
}

- (id)characteristicValueUnit:(id)unit
{
  unitCopy = unit;
  hapMetadata = [(HMDHAPMetadata *)self hapMetadata];
  v6 = [hapMetadata characteristicValueUnitOfType:unitCopy];

  return v6;
}

- (id)getStatusCharacteristicTypes:(id)types forServiceType:(id)type
{
  typeCopy = type;
  typesCopy = types;
  statusHAPCharacteristicTypesForServiceType = [(HMDHAPMetadata *)self statusHAPCharacteristicTypesForServiceType];
  v9 = [statusHAPCharacteristicTypesForServiceType objectForKey:typeCopy];

  v10 = [v9 objectForKey:typesCopy];

  return v10;
}

- (id)getCharacteristicTypeAlias:(id)alias
{
  aliasCopy = alias;
  aliasedHAPCharacteristicTypes = [(HMDHAPMetadata *)self aliasedHAPCharacteristicTypes];
  v6 = [aliasedHAPCharacteristicTypes objectForKeyedSubscript:aliasCopy];

  return v6;
}

- (id)getAliasedCharacteristicTypes:(id)types
{
  v22 = *MEMORY[0x277D85DE8];
  typesCopy = types;
  aliasedHAPCharacteristicTypes = [(HMDHAPMetadata *)self aliasedHAPCharacteristicTypes];
  v6 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(aliasedHAPCharacteristicTypes, "count")}];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = aliasedHAPCharacteristicTypes;
  v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        v13 = [v7 objectForKeyedSubscript:{v12, v17}];
        v14 = [v13 isEqual:typesCopy];

        if (v14)
        {
          [v6 addObject:v12];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  v15 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)getServiceTypeAlias:(id)alias
{
  aliasCopy = alias;
  aliasedHAPServiceTypes = [(HMDHAPMetadata *)self aliasedHAPServiceTypes];
  v6 = [aliasedHAPServiceTypes objectForKeyedSubscript:aliasCopy];

  return v6;
}

- (id)getAliasedServiceType:(id)type
{
  v19 = *MEMORY[0x277D85DE8];
  typeCopy = type;
  [(HMDHAPMetadata *)self aliasedHAPServiceTypes];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v17 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [v5 objectForKeyedSubscript:{v9, v14}];
        v11 = [v10 isEqual:typeCopy];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v12 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)mapWriteCharacteristicFromAssistantName:(id)name
{
  nameCopy = name;
  assistantCharacteristics = [(HMDHAPMetadata *)self assistantCharacteristics];
  v6 = [assistantCharacteristics objectForKeyedSubscript:nameCopy];

  hapMetadata = [(HMDHAPMetadata *)self hapMetadata];
  writeHAPCharacteristicName = [v6 writeHAPCharacteristicName];
  v9 = [hapMetadata characteristicTypeFromUTI:writeHAPCharacteristicName];

  return v9;
}

- (id)mapReadCharacteristicFromAssistantName:(id)name
{
  nameCopy = name;
  assistantCharacteristics = [(HMDHAPMetadata *)self assistantCharacteristics];
  v6 = [assistantCharacteristics objectForKeyedSubscript:nameCopy];

  hapMetadata = [(HMDHAPMetadata *)self hapMetadata];
  readHAPCharacteristicName = [v6 readHAPCharacteristicName];
  v9 = [hapMetadata characteristicTypeFromUTI:readHAPCharacteristicName];

  return v9;
}

- (id)mapToAssistantCharacteristicName:(id)name
{
  nameCopy = name;
  if (nameCopy)
  {
    v5 = nameCopy;
    aliasedHAPCharacteristicTypes = [(HMDHAPMetadata *)self aliasedHAPCharacteristicTypes];
    if (([v5 isEqual:*MEMORY[0x277CFE6A8]] & 1) == 0 && (objc_msgSend(v5, "isEqual:", *MEMORY[0x277CFE6A0]) & 1) == 0)
    {
      v7 = [aliasedHAPCharacteristicTypes objectForKey:v5];

      if (v7)
      {
        v8 = [aliasedHAPCharacteristicTypes objectForKey:v5];

        v5 = v8;
      }
    }

    assistantChrHAPTypeNameMap = [(HMDHAPMetadata *)self assistantChrHAPTypeNameMap];
    v10 = [assistantChrHAPTypeNameMap objectForKeyedSubscript:v5];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)mapToAssistantServiceSubtypeName:(id)name accessoryCategory:(id)category
{
  nameCopy = name;
  categoryCopy = category;
  v7 = categoryCopy;
  if (mapToAssistantServiceSubtypeName_accessoryCategory__onceToken == -1)
  {
    if (categoryCopy)
    {
      goto LABEL_3;
    }

LABEL_8:
    v10 = 0;
    goto LABEL_9;
  }

  dispatch_once(&mapToAssistantServiceSubtypeName_accessoryCategory__onceToken, &__block_literal_global_258);
  if (!v7)
  {
    goto LABEL_8;
  }

LABEL_3:
  v8 = [mapToAssistantServiceSubtypeName_accessoryCategory__accessoryCategoryMap objectForKeyedSubscript:v7];
  v9 = v8;
  v10 = 0;
  if (nameCopy && v8)
  {
    v10 = [v8 objectForKeyedSubscript:nameCopy];
  }

LABEL_9:

  return v10;
}

void __69__HMDHAPMetadata_mapToAssistantServiceSubtypeName_accessoryCategory___block_invoke()
{
  v35[8] = *MEMORY[0x277D85DE8];
  v34[0] = *MEMORY[0x277CCE868];
  v32 = *MEMORY[0x277CD0E40];
  v0 = v32;
  v33 = *MEMORY[0x277D481D0];
  v1 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
  v35[0] = v1;
  v34[1] = *MEMORY[0x277CCE840];
  v2 = *MEMORY[0x277D481C8];
  v3 = *MEMORY[0x277CD0F30];
  v29[0] = v0;
  v29[1] = v3;
  v4 = *MEMORY[0x277D481E0];
  v31[0] = v2;
  v31[1] = v4;
  v30 = *MEMORY[0x277CD0E60];
  v5 = v30;
  v31[2] = v4;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v29 count:3];
  v35[1] = v6;
  v34[2] = *MEMORY[0x277CCE858];
  v27 = v0;
  v28 = *MEMORY[0x277D48210];
  v7 = v28;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
  v35[2] = v8;
  v34[3] = *MEMORY[0x277CCE848];
  v25 = v0;
  v26 = v7;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
  v35[3] = v9;
  v34[4] = *MEMORY[0x277CCE898];
  v23 = v0;
  v24 = *MEMORY[0x277D481D8];
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
  v35[4] = v10;
  v34[5] = *MEMORY[0x277CCE940];
  v21[0] = v3;
  v21[1] = v5;
  v22[0] = v4;
  v22[1] = v4;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:2];
  v35[5] = v11;
  v34[6] = *MEMORY[0x277CCE850];
  v19[0] = v3;
  v19[1] = v5;
  v20[0] = v4;
  v20[1] = v4;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:2];
  v35[6] = v12;
  v34[7] = *MEMORY[0x277CCE8A0];
  v17 = v5;
  v18 = *MEMORY[0x277D48240];
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
  v35[7] = v13;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:v34 count:8];
  v15 = mapToAssistantServiceSubtypeName_accessoryCategory__accessoryCategoryMap;
  mapToAssistantServiceSubtypeName_accessoryCategory__accessoryCategoryMap = v14;

  v16 = *MEMORY[0x277D85DE8];
}

- (id)mapToAssistantServiceSubtypeName:(id)name
{
  v3 = mapToAssistantServiceSubtypeName__onceToken;
  nameCopy = name;
  if (v3 != -1)
  {
    dispatch_once(&mapToAssistantServiceSubtypeName__onceToken, &__block_literal_global_256);
  }

  v5 = [mapToAssistantServiceSubtypeName__assistantServiceSubtypeNameMap objectForKey:nameCopy];

  return v5;
}

void __51__HMDHAPMetadata_mapToAssistantServiceSubtypeName___block_invoke()
{
  v18[10] = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277D481F8];
  v1 = *MEMORY[0x277CD0DA8];
  v17[0] = *MEMORY[0x277CD0DA0];
  v17[1] = v1;
  v2 = *MEMORY[0x277D48218];
  v18[0] = v0;
  v18[1] = v2;
  v3 = *MEMORY[0x277D48228];
  v4 = *MEMORY[0x277CD0DC0];
  v17[2] = *MEMORY[0x277CD0DB0];
  v17[3] = v4;
  v5 = *MEMORY[0x277D48238];
  v18[2] = v3;
  v18[3] = v5;
  v6 = *MEMORY[0x277D48230];
  v7 = *MEMORY[0x277CFE878];
  v17[4] = *MEMORY[0x277CFE848];
  v17[5] = v7;
  v8 = *MEMORY[0x277D48220];
  v18[4] = v6;
  v18[5] = v8;
  v9 = *MEMORY[0x277D481E8];
  v10 = *MEMORY[0x277CD0E58];
  v17[6] = *MEMORY[0x277CD0E30];
  v17[7] = v10;
  v11 = *MEMORY[0x277D481F0];
  v18[6] = v9;
  v18[7] = v11;
  v12 = *MEMORY[0x277CD0F60];
  v17[8] = *MEMORY[0x277CD0F58];
  v17[9] = v12;
  v13 = *MEMORY[0x277D48250];
  v18[8] = *MEMORY[0x277D48248];
  v18[9] = v13;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:10];
  v15 = mapToAssistantServiceSubtypeName__assistantServiceSubtypeNameMap;
  mapToAssistantServiceSubtypeName__assistantServiceSubtypeNameMap = v14;

  v16 = *MEMORY[0x277D85DE8];
}

- (id)mapFromAssistantServiceName:(id)name
{
  nameCopy = name;
  assistantServiceNameHAPTypeMap = [(HMDHAPMetadata *)self assistantServiceNameHAPTypeMap];
  v6 = [assistantServiceNameHAPTypeMap objectForKeyedSubscript:nameCopy];

  return v6;
}

- (id)mapToAssistantServiceName:(id)name
{
  nameCopy = name;
  aliasedHAPServiceTypes = [(HMDHAPMetadata *)self aliasedHAPServiceTypes];
  v6 = [aliasedHAPServiceTypes objectForKeyedSubscript:nameCopy];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = nameCopy;
  }

  v9 = v8;

  assistantServiceHAPTypeNameMap = [(HMDHAPMetadata *)self assistantServiceHAPTypeNameMap];
  v11 = [assistantServiceHAPTypeNameMap objectForKeyedSubscript:v9];

  return v11;
}

- (BOOL)supportsLocalization:(id)localization
{
  localizationCopy = localization;
  assistantCharacteristics = [(HMDHAPMetadata *)self assistantCharacteristics];
  v6 = [assistantCharacteristics objectForKeyedSubscript:localizationCopy];

  LOBYTE(assistantCharacteristics) = [v6 supportsLocalization];
  return assistantCharacteristics;
}

- (id)serviceSubtypeForValue:(id)value forServiceType:(id)type
{
  valueCopy = value;
  typeCopy = type;
  if (valueCopy)
  {
    if (serviceSubtypeForValue_forServiceType__onceToken != -1)
    {
      dispatch_once(&serviceSubtypeForValue_forServiceType__onceToken, &__block_literal_global_246);
    }

    v7 = [serviceSubtypeForValue_forServiceType__subServiceTypeMap objectForKey:typeCopy];
    v8 = [v7 objectForKey:valueCopy];

    if (!v8)
    {
      v9 = [typeCopy isEqualToString:*MEMORY[0x277CFE910]];
      v10 = MEMORY[0x277CD0DA0];
      if (!v9)
      {
        v10 = MEMORY[0x277CD0DB8];
      }

      v8 = *v10;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void __56__HMDHAPMetadata_serviceSubtypeForValue_forServiceType___block_invoke()
{
  v10[1] = *MEMORY[0x277D85DE8];
  v9 = *MEMORY[0x277CFE910];
  v0 = *MEMORY[0x277CD0DA0];
  v7[0] = &unk_286627A18;
  v7[1] = &unk_286627A30;
  v1 = *MEMORY[0x277CD0DA8];
  v8[0] = v0;
  v8[1] = v1;
  v7[2] = &unk_286627A48;
  v7[3] = &unk_286627A60;
  v2 = *MEMORY[0x277CD0DC0];
  v8[2] = *MEMORY[0x277CD0DB0];
  v8[3] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:4];
  v10[0] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v5 = serviceSubtypeForValue_forServiceType__subServiceTypeMap;
  serviceSubtypeForValue_forServiceType__subServiceTypeMap = v4;

  v6 = *MEMORY[0x277D85DE8];
}

- (id)categoryTypeFromName:(id)name
{
  v19 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  hmAccessoryCategories = [(HMDHAPMetadata *)self hmAccessoryCategories];
  uuidStr = [hmAccessoryCategories countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (uuidStr)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != uuidStr; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(hmAccessoryCategories);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        name = [v9 name];
        v11 = [name isEqualToString:nameCopy];

        if (v11)
        {
          uuidStr = [v9 uuidStr];
          goto LABEL_11;
        }
      }

      uuidStr = [hmAccessoryCategories countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (uuidStr)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v12 = *MEMORY[0x277D85DE8];

  return uuidStr;
}

- (id)categoryForType:(id)type
{
  typeCopy = type;
  hmAccessoryCategories = [(HMDHAPMetadata *)self hmAccessoryCategories];
  allValues = [hmAccessoryCategories allValues];
  v7 = [allValues hmf_firstObjectWithValue:typeCopy forKeyPath:@"uuidStr"];

  if (!v7)
  {
    audioAccessoryCategory = [(HMDHAPMetadata *)self audioAccessoryCategory];
    uuidStr = [audioAccessoryCategory uuidStr];
    v10 = [typeCopy isEqual:uuidStr];

    if (v10)
    {
      goto LABEL_5;
    }
  }

  audioAccessoryCategory = v7;
LABEL_5:

  return audioAccessoryCategory;
}

- (id)categoryForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  hmAccessoryCategories = [(HMDHAPMetadata *)self hmAccessoryCategories];
  v6 = [hmAccessoryCategories objectForKeyedSubscript:identifierCopy];

  if (!v6)
  {
    audioAccessoryCategory = [(HMDHAPMetadata *)self audioAccessoryCategory];
    identifier = [audioAccessoryCategory identifier];
    v9 = [identifierCopy isEqual:identifier];

    if (v9)
    {
      goto LABEL_5;
    }
  }

  audioAccessoryCategory = v6;
LABEL_5:

  return audioAccessoryCategory;
}

- (id)audioAccessoryCategory
{
  v2 = [HMDHAPMetadataCategory alloc];
  v3 = [(HMDHAPMetadataCategory *)v2 initWithIdentifier:&unk_286627A00 uuid:*MEMORY[0x277CCE8B0] name:@"homepod" description:@"HomePod"];

  return v3;
}

- (id)categoryForOther
{
  hmAccessoryCategories = [(HMDHAPMetadata *)self hmAccessoryCategories];
  v3 = [hmAccessoryCategories objectForKeyedSubscript:&unk_2866279E8];

  return v3;
}

- (BOOL)shouldRefreshValueForCharacteristicWithType:(id)type serviceType:(id)serviceType
{
  v5 = shouldRefreshValueForCharacteristicWithType_serviceType__onceToken;
  serviceTypeCopy = serviceType;
  typeCopy = type;
  if (v5 != -1)
  {
    dispatch_once(&shouldRefreshValueForCharacteristicWithType_serviceType__onceToken, &__block_literal_global_229);
  }

  v8 = [shouldRefreshValueForCharacteristicWithType_serviceType__refreshCharacteristicMapping hmf_arrayForKey:serviceTypeCopy];

  v9 = [v8 containsObject:typeCopy];
  return v9;
}

void __74__HMDHAPMetadata_shouldRefreshValueForCharacteristicWithType_serviceType___block_invoke()
{
  v14[3] = *MEMORY[0x277D85DE8];
  v13[0] = @"00000228-0000-1000-8000-0026BB765291";
  v0 = *MEMORY[0x277CCFBA8];
  v12[0] = *MEMORY[0x277CCF840];
  v12[1] = v0;
  v1 = *MEMORY[0x277CCF7E0];
  v12[2] = *MEMORY[0x277CCF980];
  v12[3] = v1;
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:4];
  v14[0] = v2;
  v13[1] = @"00000253-0000-1000-8000-0026BB765291";
  v3 = *MEMORY[0x277CCF750];
  v11[0] = @"00000254-0000-1000-8000-0026BB765291";
  v11[1] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:2];
  v14[1] = v4;
  v13[2] = @"0000026A-0000-1000-8000-0026BB765291";
  v5 = *MEMORY[0x277CCF988];
  v10[0] = *MEMORY[0x277CCF8E8];
  v10[1] = v5;
  v10[2] = *MEMORY[0x277CCF748];
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:3];
  v14[2] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:3];
  v8 = shouldRefreshValueForCharacteristicWithType_serviceType__refreshCharacteristicMapping;
  shouldRefreshValueForCharacteristicWithType_serviceType__refreshCharacteristicMapping = v7;

  v9 = *MEMORY[0x277D85DE8];
}

- (BOOL)shouldFilterEnableNotificationsForCharacteristicType:(id)type serviceType:(id)serviceType
{
  typeCopy = type;
  serviceTypeCopy = serviceType;
  if (shouldFilterEnableNotificationsForCharacteristicType_serviceType__onceToken != -1)
  {
    dispatch_once(&shouldFilterEnableNotificationsForCharacteristicType_serviceType__onceToken, &__block_literal_global_227);
  }

  if ([shouldFilterEnableNotificationsForCharacteristicType_serviceType__servicesToFilterEnableNotifications containsObject:serviceTypeCopy])
  {
    v8 = 1;
  }

  else
  {
    hmBlacklistedServices = [(HMDHAPMetadata *)self hmBlacklistedServices];
    if ([hmBlacklistedServices containsObject:serviceTypeCopy])
    {
      v8 = 1;
    }

    else
    {
      hmBlacklistedCharacteristics = [(HMDHAPMetadata *)self hmBlacklistedCharacteristics];
      if ([hmBlacklistedCharacteristics containsObject:typeCopy])
      {
        v8 = 1;
      }

      else
      {
        v8 = [shouldFilterEnableNotificationsForCharacteristicType_serviceType__characteristicsToFilterEnableNotifications containsObject:typeCopy];
      }
    }
  }

  return v8;
}

void __83__HMDHAPMetadata_shouldFilterEnableNotificationsForCharacteristicType_serviceType___block_invoke()
{
  v11[2] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB98];
  v1 = *MEMORY[0x277CD0F18];
  v11[0] = *MEMORY[0x277CD0F10];
  v11[1] = v1;
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:2];
  v3 = [v0 setWithArray:v2];
  v4 = shouldFilterEnableNotificationsForCharacteristicType_serviceType__servicesToFilterEnableNotifications;
  shouldFilterEnableNotificationsForCharacteristicType_serviceType__servicesToFilterEnableNotifications = v3;

  v5 = MEMORY[0x277CBEB98];
  v10 = *MEMORY[0x277CCF790];
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:&v10 count:1];
  v7 = [v5 setWithArray:v6];
  v8 = shouldFilterEnableNotificationsForCharacteristicType_serviceType__characteristicsToFilterEnableNotifications;
  shouldFilterEnableNotificationsForCharacteristicType_serviceType__characteristicsToFilterEnableNotifications = v7;

  v9 = *MEMORY[0x277D85DE8];
}

- (BOOL)shouldFilterChangeNotificationsForCharacteristicType:(id)type serviceType:(id)serviceType
{
  typeCopy = type;
  serviceTypeCopy = serviceType;
  if (shouldFilterChangeNotificationsForCharacteristicType_serviceType__onceToken != -1)
  {
    dispatch_once(&shouldFilterChangeNotificationsForCharacteristicType_serviceType__onceToken, &__block_literal_global_225);
  }

  if ([shouldFilterChangeNotificationsForCharacteristicType_serviceType__servicesToFilterChangeNotifications containsObject:serviceTypeCopy])
  {
    v8 = 1;
  }

  else
  {
    hmBlacklistedServices = [(HMDHAPMetadata *)self hmBlacklistedServices];
    if ([hmBlacklistedServices containsObject:serviceTypeCopy])
    {
      v8 = 1;
    }

    else
    {
      hmBlacklistedCharacteristics = [(HMDHAPMetadata *)self hmBlacklistedCharacteristics];
      if ([hmBlacklistedCharacteristics containsObject:typeCopy])
      {
        v8 = 1;
      }

      else
      {
        v8 = [shouldFilterChangeNotificationsForCharacteristicType_serviceType__characteristicsToFilterChangeNotifications containsObject:typeCopy];
      }
    }
  }

  return v8;
}

void __83__HMDHAPMetadata_shouldFilterChangeNotificationsForCharacteristicType_serviceType___block_invoke()
{
  v11[2] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB98];
  v1 = *MEMORY[0x277CD0F18];
  v11[0] = *MEMORY[0x277CD0F10];
  v11[1] = v1;
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:2];
  v3 = [v0 setWithArray:v2];
  v4 = shouldFilterChangeNotificationsForCharacteristicType_serviceType__servicesToFilterChangeNotifications;
  shouldFilterChangeNotificationsForCharacteristicType_serviceType__servicesToFilterChangeNotifications = v3;

  v5 = MEMORY[0x277CBEB98];
  v10 = *MEMORY[0x277CCF790];
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:&v10 count:1];
  v7 = [v5 setWithArray:v6];
  v8 = shouldFilterChangeNotificationsForCharacteristicType_serviceType__characteristicsToFilterChangeNotifications;
  shouldFilterChangeNotificationsForCharacteristicType_serviceType__characteristicsToFilterChangeNotifications = v7;

  v9 = *MEMORY[0x277D85DE8];
}

- (BOOL)shouldHomeAppShowTileForServiceType:(id)type
{
  v3 = shouldHomeAppShowTileForServiceType__onceToken;
  typeCopy = type;
  if (v3 != -1)
  {
    dispatch_once(&shouldHomeAppShowTileForServiceType__onceToken, &__block_literal_global_223);
  }

  v5 = [shouldHomeAppShowTileForServiceType__servicesShowTilesInHomeApp containsObject:typeCopy];

  return v5;
}

void __54__HMDHAPMetadata_shouldHomeAppShowTileForServiceType___block_invoke()
{
  v19[29] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB98];
  v1 = *MEMORY[0x277CFE8F8];
  v19[0] = *MEMORY[0x277CFE878];
  v19[1] = v1;
  v2 = *MEMORY[0x277CFE858];
  v19[2] = *MEMORY[0x277CFE900];
  v19[3] = v2;
  v3 = *MEMORY[0x277CFE918];
  v19[4] = *MEMORY[0x277CFE848];
  v19[5] = v3;
  v4 = *MEMORY[0x277CFE880];
  v19[6] = *MEMORY[0x277CFE888];
  v19[7] = v4;
  v5 = *MEMORY[0x277CFE920];
  v19[8] = *MEMORY[0x277CFE838];
  v19[9] = v5;
  v6 = *MEMORY[0x277CFE898];
  v19[10] = *MEMORY[0x277CFE928];
  v19[11] = v6;
  v7 = *MEMORY[0x277CFE8E8];
  v19[12] = *MEMORY[0x277CFE8A0];
  v19[13] = v7;
  v8 = *MEMORY[0x277CFE8B0];
  v19[14] = *MEMORY[0x277CFE8A8];
  v19[15] = v8;
  v9 = *MEMORY[0x277CFE8C8];
  v19[16] = *MEMORY[0x277CFE8B8];
  v19[17] = v9;
  v10 = *MEMORY[0x277CFE8E0];
  v19[18] = *MEMORY[0x277CFE8D8];
  v19[19] = v10;
  v11 = *MEMORY[0x277CFE8D0];
  v19[20] = *MEMORY[0x277CFE8C0];
  v19[21] = v11;
  v12 = *MEMORY[0x277CFE828];
  v19[22] = *MEMORY[0x277CFE8F0];
  v19[23] = v12;
  v13 = *MEMORY[0x277CFE868];
  v19[24] = *MEMORY[0x277CFE860];
  v19[25] = v13;
  v14 = *MEMORY[0x277CFE910];
  v19[26] = *MEMORY[0x277CFE870];
  v19[27] = v14;
  v19[28] = *MEMORY[0x277CFE850];
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:29];
  v16 = [v0 setWithArray:v15];
  v17 = shouldHomeAppShowTileForServiceType__servicesShowTilesInHomeApp;
  shouldHomeAppShowTileForServiceType__servicesShowTilesInHomeApp = v16;

  v18 = *MEMORY[0x277D85DE8];
}

- (BOOL)shouldEnableHomeNotificationForCharacteristicType:(id)type serviceType:(id)serviceType
{
  typeCopy = type;
  serviceTypeCopy = serviceType;
  if (shouldEnableHomeNotificationForCharacteristicType_serviceType__onceToken != -1)
  {
    dispatch_once(&shouldEnableHomeNotificationForCharacteristicType_serviceType__onceToken, &__block_literal_global_221);
  }

  v8 = [shouldEnableHomeNotificationForCharacteristicType_serviceType__homedInternalHomeNotifications hmf_arrayForKey:serviceTypeCopy];
  v9 = [v8 containsObject:typeCopy];

  if (v9)
  {
    LOBYTE(v10) = 1;
  }

  else
  {
    hapMetadata = [(HMDHAPMetadata *)self hapMetadata];
    if ([hapMetadata isStandardHAPService:serviceTypeCopy])
    {
      hapMetadata2 = [(HMDHAPMetadata *)self hapMetadata];
      if (![hapMetadata2 isStandardHAPCharacteristic:typeCopy] || (objc_msgSend(shouldEnableHomeNotificationForCharacteristicType_serviceType__serviceTypesNotAllowingHomeNotifications, "containsObject:", serviceTypeCopy) & 1) != 0 || (objc_msgSend(shouldEnableHomeNotificationForCharacteristicType_serviceType__characteristicTypesNotAllowingHomeNotifications, "containsObject:", typeCopy) & 1) != 0 || -[HMDHAPMetadata shouldFilterServiceOfTypeFromApp:](self, "shouldFilterServiceOfTypeFromApp:", serviceTypeCopy))
      {
        LOBYTE(v10) = 0;
      }

      else
      {
        v10 = ![(HMDHAPMetadata *)self shouldFilterCharacteristicOfTypeFromApp:typeCopy];
      }
    }

    else
    {
      LOBYTE(v10) = 0;
    }
  }

  return v10;
}

void __80__HMDHAPMetadata_shouldEnableHomeNotificationForCharacteristicType_serviceType___block_invoke()
{
  v19[3] = *MEMORY[0x277D85DE8];
  v18[0] = @"00000228-0000-1000-8000-0026BB765291";
  v0 = *MEMORY[0x277CCFBA8];
  v17[0] = *MEMORY[0x277CCF840];
  v17[1] = v0;
  v17[2] = *MEMORY[0x277CCF980];
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:3];
  v19[0] = v1;
  v18[1] = @"00000253-0000-1000-8000-0026BB765291";
  v2 = *MEMORY[0x277CCF750];
  v16[0] = @"00000254-0000-1000-8000-0026BB765291";
  v16[1] = v2;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:2];
  v19[1] = v3;
  v18[2] = @"0000026A-0000-1000-8000-0026BB765291";
  v4 = *MEMORY[0x277CCF748];
  v15[0] = *MEMORY[0x277CCF988];
  v15[1] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:2];
  v19[2] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:3];
  v7 = shouldEnableHomeNotificationForCharacteristicType_serviceType__homedInternalHomeNotifications;
  shouldEnableHomeNotificationForCharacteristicType_serviceType__homedInternalHomeNotifications = v6;

  v14 = *MEMORY[0x277CFE810];
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v14 count:1];
  v9 = shouldEnableHomeNotificationForCharacteristicType_serviceType__serviceTypesNotAllowingHomeNotifications;
  shouldEnableHomeNotificationForCharacteristicType_serviceType__serviceTypesNotAllowingHomeNotifications = v8;

  v13 = *MEMORY[0x277CFE680];
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v13 count:1];
  v11 = shouldEnableHomeNotificationForCharacteristicType_serviceType__characteristicTypesNotAllowingHomeNotifications;
  shouldEnableHomeNotificationForCharacteristicType_serviceType__characteristicTypesNotAllowingHomeNotifications = v10;

  v12 = *MEMORY[0x277D85DE8];
}

- (BOOL)shouldAutoEnableNotificationForCharacteristic:(id)characteristic ofService:(id)service
{
  characteristicCopy = characteristic;
  serviceCopy = service;
  if (shouldAutoEnableNotificationForCharacteristic_ofService__onceToken != -1)
  {
    dispatch_once(&shouldAutoEnableNotificationForCharacteristic_ofService__onceToken, &__block_literal_global_219);
  }

  hmNotificationAutoEnabledTuples = [(HMDHAPMetadata *)self hmNotificationAutoEnabledTuples];
  if ([(HMDHAPMetadata *)self checkTupleExistsInSet:hmNotificationAutoEnabledTuples forChrType:characteristicCopy svcType:serviceCopy])
  {
    v9 = 1;
  }

  else
  {
    v10 = [shouldAutoEnableNotificationForCharacteristic_ofService__autoEnableNotifications hmf_arrayForKey:serviceCopy];
    v9 = [v10 containsObject:characteristicCopy];
  }

  return v9;
}

void __74__HMDHAPMetadata_shouldAutoEnableNotificationForCharacteristic_ofService___block_invoke()
{
  v6[1] = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277CD0DE8];
  v4 = *MEMORY[0x277CCFAA8];
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:&v4 count:1];
  v6[0] = v0;
  v1 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  v2 = shouldAutoEnableNotificationForCharacteristic_ofService__autoEnableNotifications;
  shouldAutoEnableNotificationForCharacteristic_ofService__autoEnableNotifications = v1;

  v3 = *MEMORY[0x277D85DE8];
}

- (BOOL)isSecondsDownCounterCharacteristicType:(id)type
{
  v3 = isSecondsDownCounterCharacteristicType__onceToken;
  typeCopy = type;
  if (v3 != -1)
  {
    dispatch_once(&isSecondsDownCounterCharacteristicType__onceToken, &__block_literal_global_217);
  }

  v5 = [isSecondsDownCounterCharacteristicType__secondsDownCounterCharacteristicTypes containsObject:typeCopy];

  return v5;
}

void __57__HMDHAPMetadata_isSecondsDownCounterCharacteristicType___block_invoke()
{
  v5[1] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB98];
  v5[0] = *MEMORY[0x277CFE6C8];
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  v2 = [v0 setWithArray:v1];
  v3 = isSecondsDownCounterCharacteristicType__secondsDownCounterCharacteristicTypes;
  isSecondsDownCounterCharacteristicType__secondsDownCounterCharacteristicTypes = v2;

  v4 = *MEMORY[0x277D85DE8];
}

- (BOOL)generateNotificationOnConfigurationForCharacteristicType:(id)type serviceType:(id)serviceType
{
  v5 = generateNotificationOnConfigurationForCharacteristicType_serviceType__onceToken;
  serviceTypeCopy = serviceType;
  typeCopy = type;
  if (v5 != -1)
  {
    dispatch_once(&generateNotificationOnConfigurationForCharacteristicType_serviceType__onceToken, &__block_literal_global_215);
  }

  v8 = [generateNotificationOnConfigurationForCharacteristicType_serviceType__generateNotificationMapping hmf_arrayForKey:typeCopy];

  v9 = [v8 containsObject:serviceTypeCopy];
  return v9;
}

void __87__HMDHAPMetadata_generateNotificationOnConfigurationForCharacteristicType_serviceType___block_invoke()
{
  v6[1] = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277CCF748];
  v4 = *MEMORY[0x277CD0F20];
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:&v4 count:1];
  v6[0] = v0;
  v1 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  v2 = generateNotificationOnConfigurationForCharacteristicType_serviceType__generateNotificationMapping;
  generateNotificationOnConfigurationForCharacteristicType_serviceType__generateNotificationMapping = v1;

  v3 = *MEMORY[0x277D85DE8];
}

- (BOOL)shouldNotCacheCharacteristicOfType:(id)type
{
  v3 = shouldNotCacheCharacteristicOfType__onceToken;
  typeCopy = type;
  if (v3 != -1)
  {
    dispatch_once(&shouldNotCacheCharacteristicOfType__onceToken, &__block_literal_global_213);
  }

  v5 = [shouldNotCacheCharacteristicOfType__noCacheCharacteristicTypes containsObject:typeCopy];

  return v5;
}

void __53__HMDHAPMetadata_shouldNotCacheCharacteristicOfType___block_invoke()
{
  v5[1] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB98];
  v5[0] = *MEMORY[0x277CFE660];
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  v2 = [v0 setWithArray:v1];
  v3 = shouldNotCacheCharacteristicOfType__noCacheCharacteristicTypes;
  shouldNotCacheCharacteristicOfType__noCacheCharacteristicTypes = v2;

  v4 = *MEMORY[0x277D85DE8];
}

- (BOOL)shouldFilterCharacteristicOfTypeFromApp:(id)app
{
  appCopy = app;
  hmBlacklistedCharacteristicsFromApp = [(HMDHAPMetadata *)self hmBlacklistedCharacteristicsFromApp];
  v6 = [hmBlacklistedCharacteristicsFromApp containsObject:appCopy];

  return v6;
}

- (BOOL)shouldFilterServiceOfTypeFromApp:(id)app
{
  appCopy = app;
  hmBlacklistedServicesFromApp = [(HMDHAPMetadata *)self hmBlacklistedServicesFromApp];
  v6 = [hmBlacklistedServicesFromApp containsObject:appCopy];

  return v6;
}

- (BOOL)shouldFilterCharacteristicOfType:(id)type
{
  typeCopy = type;
  if (shouldFilterCharacteristicOfType__pred != -1)
  {
    dispatch_once(&shouldFilterCharacteristicOfType__pred, &__block_literal_global_211);
  }

  if ([shouldFilterCharacteristicOfType___allowedCharacteristics containsObject:typeCopy])
  {
    v5 = 0;
  }

  else
  {
    hmBlacklistedCharacteristics = [(HMDHAPMetadata *)self hmBlacklistedCharacteristics];
    v5 = [hmBlacklistedCharacteristics containsObject:typeCopy];
  }

  return v5;
}

void __51__HMDHAPMetadata_shouldFilterCharacteristicOfType___block_invoke()
{
  v5[1] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB98];
  v5[0] = *MEMORY[0x277CFE768];
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  v2 = [v0 setWithArray:v1];
  v3 = shouldFilterCharacteristicOfType___allowedCharacteristics;
  shouldFilterCharacteristicOfType___allowedCharacteristics = v2;

  v4 = *MEMORY[0x277D85DE8];
}

- (BOOL)shouldFilterServiceOfType:(id)type
{
  typeCopy = type;
  if (shouldFilterServiceOfType__pred != -1)
  {
    dispatch_once(&shouldFilterServiceOfType__pred, &__block_literal_global_209);
  }

  if ([shouldFilterServiceOfType___allowedServices containsObject:typeCopy])
  {
    v5 = 0;
  }

  else
  {
    hmBlacklistedServices = [(HMDHAPMetadata *)self hmBlacklistedServices];
    v5 = [hmBlacklistedServices containsObject:typeCopy];
  }

  return v5;
}

void __44__HMDHAPMetadata_shouldFilterServiceOfType___block_invoke()
{
  v5[1] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB98];
  v5[0] = *MEMORY[0x277CFE908];
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  v2 = [v0 setWithArray:v1];
  v3 = shouldFilterServiceOfType___allowedServices;
  shouldFilterServiceOfType___allowedServices = v2;

  v4 = *MEMORY[0x277D85DE8];
}

- (BOOL)shouldCoalesceCharacteristicNotifications:(id)notifications forService:(id)service
{
  serviceCopy = service;
  notificationsCopy = notifications;
  hmCoalesceNotificationsTuples = [(HMDHAPMetadata *)self hmCoalesceNotificationsTuples];
  LOBYTE(self) = [(HMDHAPMetadata *)self checkTupleExistsInSet:hmCoalesceNotificationsTuples forChrType:notificationsCopy svcType:serviceCopy];

  return self;
}

- (BOOL)isTargetCharacteristic:(id)characteristic
{
  v3 = isTargetCharacteristic__onceToken;
  characteristicCopy = characteristic;
  if (v3 != -1)
  {
    dispatch_once(&isTargetCharacteristic__onceToken, &__block_literal_global_168);
  }

  v5 = [isTargetCharacteristic__targetCharacteristic containsObject:characteristicCopy];

  return v5;
}

void __41__HMDHAPMetadata_isTargetCharacteristic___block_invoke()
{
  v0 = isTargetCharacteristic__targetCharacteristic;
  isTargetCharacteristic__targetCharacteristic = &unk_286626CC8;
}

- (BOOL)requiresTimedWrite:(id)write forService:(id)service
{
  writeCopy = write;
  serviceCopy = service;
  if (requiresTimedWrite_forService__onceToken != -1)
  {
    dispatch_once(&requiresTimedWrite_forService__onceToken, &__block_literal_global_165);
  }

  v8 = -[HMDHAPMetadata requiresDeviceUnlock:forService:](self, "requiresDeviceUnlock:forService:", writeCopy, serviceCopy) || writeCopy && ([requiresTimedWrite_forService__timedWriteRequiringCharacteristic containsObject:writeCopy] & 1) != 0;

  return v8;
}

void __48__HMDHAPMetadata_requiresTimedWrite_forService___block_invoke()
{
  v5[5] = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277CFE720];
  v5[0] = *MEMORY[0x277CFE750];
  v5[1] = v0;
  v1 = *MEMORY[0x277CFE5E0];
  v5[2] = *MEMORY[0x277CFE718];
  v5[3] = v1;
  v5[4] = *MEMORY[0x277CFE648];
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:5];
  v3 = requiresTimedWrite_forService__timedWriteRequiringCharacteristic;
  requiresTimedWrite_forService__timedWriteRequiringCharacteristic = v2;

  v4 = *MEMORY[0x277D85DE8];
}

- (BOOL)requiresDeviceUnlock:(id)unlock forService:(id)service
{
  serviceCopy = service;
  unlockCopy = unlock;
  hmRequiresDeviceUnlockTuples = [(HMDHAPMetadata *)self hmRequiresDeviceUnlockTuples];
  LOBYTE(self) = [(HMDHAPMetadata *)self checkTupleExistsInSet:hmRequiresDeviceUnlockTuples forChrType:unlockCopy svcType:serviceCopy];

  return self;
}

- (BOOL)shouldAllowToWakeSuspendedAccessoryForOperation:(int64_t)operation service:(id)service characteristicType:(id)type value:(id)value
{
  v71 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  typeCopy = type;
  valueCopy = value;
  v13 = objc_autoreleasePoolPush();
  selfCopy = self;
  v15 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    v16 = HMFGetLogIdentifier();
    if (operation > 0xA)
    {
      v17 = @"Undefined";
    }

    else
    {
      v17 = off_279727458[operation];
    }

    v18 = v17;
    *buf = 138544386;
    v62 = v16;
    v63 = 2112;
    v64 = v18;
    v65 = 2112;
    v66 = serviceCopy;
    v67 = 2112;
    v68 = typeCopy;
    v69 = 2112;
    v70 = valueCopy;
    _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_DEBUG, "%{public}@Checking if operation: '%@' is allowed to wake accessory for service: '%@' characteristic: '%@' with value '%@'", buf, 0x34u);
  }

  objc_autoreleasePoolPop(v13);
  hmWakeOnOperationsFilter = [(HMDHAPMetadata *)selfCopy hmWakeOnOperationsFilter];
  v20 = [hmWakeOnOperationsFilter hmf_dictionaryForKey:typeCopy];

  if (v20)
  {
    v21 = [v20 hmf_dictionaryForKey:serviceCopy];
    v22 = v21;
    if (v21)
    {
      v23 = [v21 hmf_arrayForKey:*MEMORY[0x277CFEE00]];
      if (operation > 0xA)
      {
        v24 = @"Undefined";
      }

      else
      {
        v24 = off_279727458[operation];
      }

      v26 = v24;
      v27 = [v23 containsObject:v26];

      if (v27)
      {
        if (operation == 3)
        {
          v28 = [v22 hmf_arrayForKey:*MEMORY[0x277CFEDE8]];
          v29 = v28;
          if (v28)
          {
            v53 = v23;
            v55 = v28;
            v58 = 0u;
            v59 = 0u;
            v56 = 0u;
            v57 = 0u;
            v30 = v28;
            v31 = [v30 countByEnumeratingWithState:&v56 objects:v60 count:16];
            if (v31)
            {
              v32 = v31;
              v33 = *v57;
              while (2)
              {
                for (i = 0; i != v32; ++i)
                {
                  if (*v57 != v33)
                  {
                    objc_enumerationMutation(v30);
                  }

                  if (valueCopy && [*(*(&v56 + 1) + 8 * i) isEqual:valueCopy])
                  {
                    v45 = objc_autoreleasePoolPush();
                    v46 = selfCopy;
                    v47 = HMFGetOSLogHandle();
                    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
                    {
                      HMFGetLogIdentifier();
                      v48 = v52 = v45;
                      v49 = @"Write";
                      *buf = 138544386;
                      v62 = v48;
                      v63 = 2112;
                      v64 = @"Write";
                      v65 = 2112;
                      v66 = serviceCopy;
                      v67 = 2112;
                      v68 = typeCopy;
                      v69 = 2112;
                      v70 = valueCopy;
                      _os_log_impl(&dword_2531F8000, v47, OS_LOG_TYPE_DEBUG, "%{public}@Operation: %@ on service '%@' and characteristic '%@' with value '%@' is allowed to wake accessory", buf, 0x34u);

                      v45 = v52;
                    }

                    objc_autoreleasePoolPop(v45);
                    v25 = 1;
                    goto LABEL_36;
                  }
                }

                v32 = [v30 countByEnumeratingWithState:&v56 objects:v60 count:16];
                if (v32)
                {
                  continue;
                }

                break;
              }
            }

            v35 = objc_autoreleasePoolPush();
            v36 = selfCopy;
            v37 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
            {
              v38 = HMFGetLogIdentifier();
              v39 = @"Write";
              *buf = 138544130;
              v62 = v38;
              v63 = 2112;
              v64 = @"Write";
              v65 = 2112;
              v66 = serviceCopy;
              v67 = 2112;
              v68 = typeCopy;
              _os_log_impl(&dword_2531F8000, v37, OS_LOG_TYPE_DEBUG, "%{public}@Operation: %@ on service '%@' and characteristic '%@' is not allowed to wake accessory", buf, 0x2Au);
            }

            objc_autoreleasePoolPop(v35);
            v25 = 0;
LABEL_36:
            v23 = v53;
            v29 = v55;
          }

          else
          {
            v40 = objc_autoreleasePoolPush();
            v41 = selfCopy;
            v42 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
            {
              HMFGetLogIdentifier();
              v43 = v54 = v40;
              v44 = @"Write";
              *buf = 138544130;
              v62 = v43;
              v63 = 2112;
              v64 = @"Write";
              v65 = 2112;
              v66 = serviceCopy;
              v67 = 2112;
              v68 = typeCopy;
              _os_log_impl(&dword_2531F8000, v42, OS_LOG_TYPE_DEBUG, "%{public}@Operation: %@ on service '%@' and characteristic '%@' is allowed to wake accessory", buf, 0x2Au);

              v40 = v54;
            }

            objc_autoreleasePoolPop(v40);
            v25 = 1;
          }
        }

        else
        {
          v25 = 1;
        }
      }

      else
      {
        v25 = 0;
      }
    }

    else
    {
      v25 = 0;
    }
  }

  else
  {
    v25 = 0;
  }

  v50 = *MEMORY[0x277D85DE8];
  return v25;
}

- (BOOL)allowsSecuringWriteFor:(id)for withValue:(id)value
{
  valueCopy = value;
  forCopy = for;
  hmAllowableSecuringWrites = [(HMDHAPMetadata *)self hmAllowableSecuringWrites];
  v9 = [hmAllowableSecuringWrites objectForKey:forCopy];

  if (v9)
  {
    v10 = [v9 containsObject:valueCopy];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)descriptionForCharacteristicType:(id)type
{
  typeCopy = type;
  hapMetadata = [(HMDHAPMetadata *)self hapMetadata];
  v6 = [hapMetadata descriptionFromCharacteristicType:typeCopy];

  return v6;
}

- (id)descriptionForServiceType:(id)type
{
  typeCopy = type;
  hapMetadata = [(HMDHAPMetadata *)self hapMetadata];
  v6 = [hapMetadata descriptionFromServiceType:typeCopy];

  return v6;
}

- (id)validateAssociatedServiceType:(id)type forService:(id)service
{
  v44 = *MEMORY[0x277D85DE8];
  typeCopy = type;
  serviceCopy = service;
  if (![typeCopy length])
  {
    v19 = 0;
    goto LABEL_14;
  }

  hapMetadata = [(HMDHAPMetadata *)self hapMetadata];
  if (([hapMetadata isStandardHAPService:serviceCopy] & 1) == 0)
  {

LABEL_10:
    v15 = objc_autoreleasePoolPush();
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      v38 = 138543874;
      v39 = v17;
      v40 = 2112;
      v41 = serviceCopy;
      v42 = 2112;
      v43 = typeCopy;
      v18 = "%{public}@Unknown service types %@ %@";
      v20 = v16;
      v21 = 32;
LABEL_12:
      _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_ERROR, v18, &v38, v21);

      goto LABEL_13;
    }

    goto LABEL_13;
  }

  hapMetadata2 = [(HMDHAPMetadata *)self hapMetadata];
  v10 = [hapMetadata2 isStandardHAPService:typeCopy];

  if ((v10 & 1) == 0)
  {
    goto LABEL_10;
  }

  hapMetadata3 = [(HMDHAPMetadata *)self hapMetadata];
  v12 = [hapMetadata3 allowAssociatedService:serviceCopy];

  if ((v12 & 1) == 0)
  {
    v15 = objc_autoreleasePoolPush();
    v16 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    v17 = HMFGetLogIdentifier();
    v38 = 138543618;
    v39 = v17;
    v40 = 2112;
    v41 = serviceCopy;
    v18 = "%{public}@Service %@ does not other services to be associated";
    goto LABEL_19;
  }

  hapMetadata4 = [(HMDHAPMetadata *)self hapMetadata];
  v14 = [hapMetadata4 allowAssociatedService:typeCopy];

  if (v14)
  {
    v15 = objc_autoreleasePoolPush();
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      v38 = 138543618;
      v39 = v17;
      v40 = 2112;
      v41 = typeCopy;
      v18 = "%{public}@Service being associated %@ itself allows other services to be associated";
LABEL_19:
      v20 = v16;
      v21 = 22;
      goto LABEL_12;
    }

LABEL_13:

    objc_autoreleasePoolPop(v15);
    v19 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCFD28] code:3 userInfo:0];
    goto LABEL_14;
  }

  v24 = *MEMORY[0x277CFE698];
  hapMetadata5 = [(HMDHAPMetadata *)self hapMetadata];
  if (([hapMetadata5 isMandatoryCharacteristic:v24 forService:serviceCopy] & 1) == 0)
  {

LABEL_24:
    v28 = *MEMORY[0x277CFE5D8];
    v29 = *MEMORY[0x277CFE5E8];
    v30 = *MEMORY[0x277CFE610];
    hapMetadata6 = [(HMDHAPMetadata *)self hapMetadata];
    if ([hapMetadata6 isMandatoryCharacteristic:v28 forService:serviceCopy])
    {
      hapMetadata7 = [(HMDHAPMetadata *)self hapMetadata];
      if ([hapMetadata7 isMandatoryCharacteristic:v29 forService:typeCopy])
      {

LABEL_32:
        v19 = 0;
LABEL_33:

        goto LABEL_34;
      }

      hapMetadata8 = [(HMDHAPMetadata *)self hapMetadata];
      v37 = [hapMetadata8 isMandatoryCharacteristic:v30 forService:typeCopy];

      if (v37)
      {
        goto LABEL_32;
      }
    }

    else
    {
    }

    v33 = objc_autoreleasePoolPush();
    v34 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      v35 = HMFGetLogIdentifier();
      v38 = 138543874;
      v39 = v35;
      v40 = 2112;
      v41 = serviceCopy;
      v42 = 2112;
      v43 = typeCopy;
      _os_log_impl(&dword_2531F8000, v34, OS_LOG_TYPE_ERROR, "%{public}@Service %@ or service being associated %@ are not compatible", &v38, 0x20u);
    }

    objc_autoreleasePoolPop(v33);
    v19 = [MEMORY[0x277CCA9B8] hmErrorWithCode:62];
    goto LABEL_33;
  }

  hapMetadata9 = [(HMDHAPMetadata *)self hapMetadata];
  v27 = [hapMetadata9 isMandatoryCharacteristic:v24 forService:typeCopy];

  if ((v27 & 1) == 0)
  {
    goto LABEL_24;
  }

  v19 = 0;
LABEL_34:

LABEL_14:
  v22 = *MEMORY[0x277D85DE8];

  return v19;
}

- (BOOL)supportsAuthorizationData:(id)data forService:(id)service
{
  serviceCopy = service;
  dataCopy = data;
  hapMetadata = [(HMDHAPMetadata *)self hapMetadata];
  v9 = [hapMetadata supportsAdditionalAuthorizationData:dataCopy forService:serviceCopy];

  return v9;
}

- (BOOL)isStandardServiceType:(id)type
{
  typeCopy = type;
  hapMetadata = [(HMDHAPMetadata *)self hapMetadata];
  v6 = [hapMetadata isStandardHAPService:typeCopy];

  return v6;
}

- (BOOL)isStandardCharacteristicType:(id)type
{
  typeCopy = type;
  hapMetadata = [(HMDHAPMetadata *)self hapMetadata];
  v6 = [hapMetadata isStandardHAPCharacteristic:typeCopy];

  return v6;
}

- (id)serviceTypeFromName:(id)name
{
  nameCopy = name;
  hapMetadata = [(HMDHAPMetadata *)self hapMetadata];
  v6 = [hapMetadata serviceTypeFromUTI:nameCopy];

  return v6;
}

- (id)serviceNameFromType:(id)type
{
  typeCopy = type;
  hapMetadata = [(HMDHAPMetadata *)self hapMetadata];
  v6 = [hapMetadata serviceUTIFromType:typeCopy];

  return v6;
}

- (id)characteristicTypeFromName:(id)name
{
  nameCopy = name;
  hapMetadata = [(HMDHAPMetadata *)self hapMetadata];
  v6 = [hapMetadata characteristicTypeFromUTI:nameCopy];

  return v6;
}

- (id)characteristicNameFromType:(id)type
{
  typeCopy = type;
  hapMetadata = [(HMDHAPMetadata *)self hapMetadata];
  v6 = [hapMetadata characteristicUTIFromType:typeCopy];

  return v6;
}

- (id)xpcData:(BOOL)data
{
  if (data)
  {
    hmAccessoryCategories = [(HMDHAPMetadata *)self hmAccessoryCategories];
    allValues = [hmAccessoryCategories allValues];
  }

  else
  {
    allValues = 0;
  }

  v6 = MEMORY[0x277CD1A50];
  version = [(HMDHAPMetadata *)self version];
  hapMetadata = [(HMDHAPMetadata *)self hapMetadata];
  hapCharacteristics = [hapMetadata hapCharacteristics];
  hapMetadata2 = [(HMDHAPMetadata *)self hapMetadata];
  hapServices = [hapMetadata2 hapServices];
  v12 = [v6 encodeProtobufWithVersion:version characteristics:hapCharacteristics services:hapServices categories:allValues];

  return v12;
}

- (HMDHAPMetadata)initWithFullPlist:(id)plist hapMetadata:(id)metadata
{
  plistCopy = plist;
  metadataCopy = metadata;
  if (plistCopy)
  {
    v8 = metadataCopy;
    if (metadataCopy)
    {
      v9 = [(HMDHAPMetadata *)self initWithFullPlist:plistCopy hapMetadata:metadataCopy error:0];

      return v9;
    }
  }

  else
  {
    _HMFPreconditionFailure();
  }

  v11 = _HMFPreconditionFailure();
  return [(HMDHAPMetadata *)v11 initWithDictionary:v12 hapMetadata:v13 error:v14, v15];
}

- (HMDHAPMetadata)initWithDictionary:(id)dictionary hapMetadata:(id)metadata error:(id *)error
{
  selfCopy = 0;
  if (dictionary && metadata)
  {
    v9 = MEMORY[0x277CBEB38];
    metadataCopy = metadata;
    v11 = [v9 dictionaryWithDictionary:dictionary];
    rawPlist = [metadataCopy rawPlist];
    [v11 setObject:rawPlist forKeyedSubscript:*MEMORY[0x277CFED08]];

    v13 = [(HMDHAPMetadata *)self initWithFullPlist:v11 hapMetadata:metadataCopy error:error];
    self = v13;

    selfCopy = self;
  }

  return selfCopy;
}

- (HMDHAPMetadata)initWithFullPlist:(id)plist hapMetadata:(id)metadata error:(id *)error
{
  plistCopy = plist;
  metadataCopy = metadata;
  v21.receiver = self;
  v21.super_class = HMDHAPMetadata;
  v10 = [(HMDHAPMetadata *)&v21 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_hapMetadata, metadata);
    version = [metadataCopy version];
    version = v11->_version;
    v11->_version = version;

    schemaVersion = [metadataCopy schemaVersion];
    schemaVersion = v11->_schemaVersion;
    v11->_schemaVersion = schemaVersion;

    v16 = [plistCopy copy];
    rawPlist = v11->_rawPlist;
    v11->_rawPlist = v16;

    v18 = v11->_rawPlist;
    if (error)
    {
      *error = [(HMDHAPMetadata *)v11 parseAndSetRawPlist:v18];
    }

    else
    {
      v19 = [(HMDHAPMetadata *)v11 parseAndSetRawPlist:v18];
    }
  }

  return v11;
}

+ (BOOL)isHomedVersionSupported:(id)supported
{
  v3 = MEMORY[0x277D0F940];
  supportedCopy = supported;
  v5 = [v3 alloc];
  stringValue = [supportedCopy stringValue];

  v7 = [v5 initWithString:stringValue];
  v8 = +[HMDHomeKitVersion version4];
  LOBYTE(stringValue) = [v7 isAtLeastVersion:v8];

  return stringValue;
}

+ (void)prepareMetadata
{
  v58 = *MEMORY[0x277D85DE8];
  [MEMORY[0x277CFEBA0] setCurrentMetadataHook:&__block_literal_global_159];
  v3 = +[HMDHAPMetadata getBuiltinInstance];
  version = [v3 version];
  unsignedIntegerValue = [version unsignedIntegerValue];

  if (unsignedIntegerValue - 881 <= 2)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      *buf = 138543618;
      v51 = v8;
      v52 = 2048;
      v53 = unsignedIntegerValue;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_ERROR, "%{public}@Invalid builtin metadata version %lu", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
  }

  v9 = +[HMDPersistentStore loadPlainMetadataDictionary];
  v10 = *MEMORY[0x277CFEDF0];
  v11 = [v9 objectForKeyedSubscript:*MEMORY[0x277CFEDF0]];
  unsignedIntegerValue2 = [v11 unsignedIntegerValue];

  v13 = [v9 objectForKeyedSubscript:v10];
  if (!v13)
  {
    goto LABEL_20;
  }

  v14 = v13;
  v15 = *MEMORY[0x277CFEDC0];
  v16 = [v9 objectForKeyedSubscript:*MEMORY[0x277CFEDC0]];
  if (!v16)
  {
    goto LABEL_19;
  }

  v17 = v16;
  v48 = unsignedIntegerValue2;
  selfCopy = self;
  v18 = *MEMORY[0x277CFEDA0];
  v19 = [v9 objectForKeyedSubscript:*MEMORY[0x277CFEDA0]];
  if (!v19)
  {
LABEL_18:

    self = selfCopy;
LABEL_19:

    goto LABEL_20;
  }

  v20 = v19;
  v21 = [v9 objectForKeyedSubscript:v10];
  if ([v21 unsignedIntegerValue] <= unsignedIntegerValue)
  {

    goto LABEL_18;
  }

  v47 = v18;
  v22 = [v9 objectForKeyedSubscript:v15];
  unsignedIntegerValue3 = [v22 unsignedIntegerValue];

  self = selfCopy;
  if (unsignedIntegerValue3 == 1)
  {
    v24 = v47;
    if (isInternalBuild() && unsignedIntegerValue == 880 && (v48 - 881) <= 1)
    {
      v25 = +[HMDPersistentStore loadBuiltinPlainMetadataDictionary];
      v26 = [v25 mutableCopy];

      _shouldUploadToCloudAfterHomedReady = 1;
      v27 = objc_autoreleasePoolPush();
      v28 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        v29 = HMFGetLogIdentifier();
        v30 = [v26 objectForKeyedSubscript:v10];
        unsignedIntegerValue4 = [v30 unsignedIntegerValue];
        v32 = [v26 objectForKeyedSubscript:v47];
        v33 = [v32 objectForKeyedSubscript:v10];
        unsignedIntegerValue5 = [v33 unsignedIntegerValue];
        *buf = 138544130;
        v51 = v29;
        v52 = 2048;
        v53 = unsignedIntegerValue4;
        v54 = 2048;
        v55 = unsignedIntegerValue5;
        v56 = 2048;
        v57 = v48;
        _os_log_impl(&dword_2531F8000, v28, OS_LOG_TYPE_INFO, "%{public}@Metadata fix - Constructing version 883 metadata from current builtin version %lu, current builtin plist version %lu, archived version %lu", buf, 0x2Au);

        self = selfCopy;
        v24 = v47;
      }

      objc_autoreleasePoolPop(v27);
      [v26 setObject:&unk_2866279D0 forKeyedSubscript:v10];
      v35 = [v26 objectForKeyedSubscript:v24];
      [v35 setObject:&unk_2866279D0 forKeyedSubscript:v10];

      [self updateLocalMetadataWithMetadata:v26];
    }

    [self _logCurrentMetadata];
    goto LABEL_27;
  }

LABEL_20:
  v36 = objc_autoreleasePoolPush();
  v37 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
  {
    v38 = HMFGetLogIdentifier();
    *buf = 138543362;
    v51 = v38;
    _os_log_impl(&dword_2531F8000, v37, OS_LOG_TYPE_INFO, "%{public}@Cached metadata is not newer than the built-in one, prefer built-in metadata.", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v36);
  v39 = [v9 objectForKeyedSubscript:v10];
  unsignedIntegerValue6 = [v39 unsignedIntegerValue];
  version2 = [0 version];
  unsignedIntegerValue7 = [version2 unsignedIntegerValue];

  if (unsignedIntegerValue6 < unsignedIntegerValue7)
  {
    v43 = objc_autoreleasePoolPush();
    v44 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
    {
      v45 = HMFGetLogIdentifier();
      *buf = 138543362;
      v51 = v45;
      _os_log_impl(&dword_2531F8000, v44, OS_LOG_TYPE_INFO, "%{public}@Built-in metadata is newer than the cached one, uploading to the cloud when homed is ready with at least one home or the first home being added.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v43);
    _shouldUploadToCloudAfterHomedReady = 1;
  }

  [self updateLocalMetadataWithBuiltinMetadata];
LABEL_27:

  v46 = *MEMORY[0x277D85DE8];
}

id __33__HMDHAPMetadata_prepareMetadata__block_invoke()
{
  v0 = +[HMDHAPMetadata getSharedInstance];
  v1 = [v0 hapMetadata];

  return v1;
}

+ (BOOL)isAdminPrivilegeRequiredForWritingCharacteristicType:(id)type serviceType:(id)serviceType
{
  serviceTypeCopy = serviceType;
  if ([serviceTypeCopy isEqualToString:*MEMORY[0x277CD0DF8]])
  {
    v5 = 1;
  }

  else
  {
    v5 = [serviceTypeCopy isEqualToString:*MEMORY[0x277CD0E08]];
  }

  return v5;
}

+ (BOOL)isOwnerPrivilegeRequiredForWritingCharacteristicType:(id)type serviceType:(id)serviceType
{
  typeCopy = type;
  serviceTypeCopy = serviceType;
  v7 = ([typeCopy isEqualToString:@"00000264-0000-1000-8000-0026BB765291"] & 1) != 0 || (objc_msgSend(typeCopy, "isEqualToString:", @"00000262-0000-1000-8000-0026BB765291") & 1) != 0 || objc_msgSend(serviceTypeCopy, "isEqualToString:", *MEMORY[0x277CD0E08]) && !objc_msgSend(typeCopy, "isEqualToString:", *MEMORY[0x277CCFA00]);

  return v7;
}

+ (id)dataFromMetadataDictionaryWithKey:(id)key
{
  keyCopy = key;
  v4 = +[HMDPersistentStore loadPlainMetadataDictionary];
  v5 = [v4 hmf_dataForKey:keyCopy];
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v7 = +[HMDPersistentStore loadBuiltinPlainMetadataDictionary];

    v6 = [v7 hmf_dataForKey:keyCopy];
    v4 = v7;
  }

  return v6;
}

+ (BOOL)isServiceType:(id)type compatibleWithAccessoryCategoryType:(id)categoryType
{
  v5 = isServiceType_compatibleWithAccessoryCategoryType__onceToken;
  categoryTypeCopy = categoryType;
  typeCopy = type;
  if (v5 != -1)
  {
    dispatch_once(&isServiceType_compatibleWithAccessoryCategoryType__onceToken, &__block_literal_global_147);
  }

  v8 = [isServiceType_compatibleWithAccessoryCategoryType__accessoryCategoryToServiceTypesMap objectForKeyedSubscript:categoryTypeCopy];

  v9 = [v8 containsObject:typeCopy];
  return v9;
}

void __68__HMDHAPMetadata_isServiceType_compatibleWithAccessoryCategoryType___block_invoke()
{
  v35[25] = *MEMORY[0x277D85DE8];
  v34[0] = *MEMORY[0x277CCE8E8];
  v33 = [MEMORY[0x277CBEB98] setWithObjects:{*MEMORY[0x277CD0ED8], 0}];
  v35[0] = v33;
  v34[1] = *MEMORY[0x277CCE888];
  v32 = [MEMORY[0x277CBEB98] setWithObjects:{*MEMORY[0x277CD0E30], 0}];
  v35[1] = v32;
  v34[2] = *MEMORY[0x277CCE890];
  v31 = [MEMORY[0x277CBEB98] setWithObjects:{*MEMORY[0x277CD0EB0], 0}];
  v35[2] = v31;
  v34[3] = *MEMORY[0x277CCE898];
  v30 = [MEMORY[0x277CBEB98] setWithObjects:{*MEMORY[0x277CD0E40], *MEMORY[0x277CD0F40], 0}];
  v35[3] = v30;
  v34[4] = *MEMORY[0x277CCE8A8];
  v29 = [MEMORY[0x277CBEB98] setWithObjects:{*MEMORY[0x277CD0E58], 0}];
  v35[4] = v29;
  v34[5] = *MEMORY[0x277CCE8B8];
  v0 = *MEMORY[0x277CD0E00];
  v28 = [MEMORY[0x277CBEB98] setWithObjects:{*MEMORY[0x277CD0E00], 0}];
  v35[5] = v28;
  v34[6] = *MEMORY[0x277CCE948];
  v27 = [MEMORY[0x277CBEB98] setWithObjects:{v0, 0}];
  v35[6] = v27;
  v34[7] = *MEMORY[0x277CCE8C0];
  v26 = [MEMORY[0x277CBEB98] setWithObjects:{*MEMORY[0x277CD0EA0], 0}];
  v35[7] = v26;
  v34[8] = *MEMORY[0x277CCE8D0];
  v25 = [MEMORY[0x277CBEB98] setWithObjects:{*MEMORY[0x277CD0ED0], 0}];
  v35[8] = v25;
  v34[9] = *MEMORY[0x277CCE8D8];
  v24 = [MEMORY[0x277CBEB98] setWithObjects:{*MEMORY[0x277CD0F00], 0}];
  v35[9] = v24;
  v34[10] = *MEMORY[0x277CCE8F0];
  v23 = [MEMORY[0x277CBEB98] setWithObjects:{*MEMORY[0x277CD0EE8], *MEMORY[0x277CD0F28], *MEMORY[0x277CD0DE0], *MEMORY[0x277CD0E10], *MEMORY[0x277CD0E18], *MEMORY[0x277CD0E20], *MEMORY[0x277CD0E70], *MEMORY[0x277CD0E90], *MEMORY[0x277CD0E98], *MEMORY[0x277CD0EC0], *MEMORY[0x277CD0EC8], 0}];
  v35[10] = v23;
  v34[11] = *MEMORY[0x277CCE910];
  v22 = [MEMORY[0x277CBEB98] setWithObjects:{*MEMORY[0x277CD0F08], 0}];
  v35[11] = v22;
  v34[12] = *MEMORY[0x277CCE940];
  v1 = *MEMORY[0x277CD0F30];
  v2 = *MEMORY[0x277CD0E60];
  v21 = [MEMORY[0x277CBEB98] setWithObjects:{*MEMORY[0x277CD0F30], *MEMORY[0x277CD0E60], 0}];
  v35[12] = v21;
  v34[13] = *MEMORY[0x277CCE958];
  v20 = [MEMORY[0x277CBEB98] setWithObjects:{*MEMORY[0x277CD0F58], 0}];
  v35[13] = v20;
  v34[14] = *MEMORY[0x277CCE960];
  v19 = [MEMORY[0x277CBEB98] setWithObjects:{*MEMORY[0x277CD0F60], 0}];
  v35[14] = v19;
  v34[15] = *MEMORY[0x277CCE868];
  v18 = [MEMORY[0x277CBEB98] setWithObjects:{*MEMORY[0x277CD0DD8], 0}];
  v35[15] = v18;
  v34[16] = *MEMORY[0x277CCE850];
  v3 = [MEMORY[0x277CBEB98] setWithObjects:{v1, v2, 0}];
  v35[16] = v3;
  v34[17] = *MEMORY[0x277CCE858];
  v4 = *MEMORY[0x277CD0E68];
  v5 = [MEMORY[0x277CBEB98] setWithObjects:{*MEMORY[0x277CD0E68], 0}];
  v35[17] = v5;
  v34[18] = *MEMORY[0x277CCE848];
  v6 = [MEMORY[0x277CBEB98] setWithObjects:{v4, 0}];
  v35[18] = v6;
  v34[19] = *MEMORY[0x277CCE908];
  v7 = [MEMORY[0x277CBEB98] setWithObjects:{*MEMORY[0x277CD0E80], 0}];
  v35[19] = v7;
  v34[20] = *MEMORY[0x277CCE8A0];
  v8 = *MEMORY[0x277CD0E48];
  v9 = [MEMORY[0x277CBEB98] setWithObjects:{*MEMORY[0x277CD0E48], 0}];
  v35[20] = v9;
  v34[21] = *MEMORY[0x277CCE8F8];
  v10 = [MEMORY[0x277CBEB98] setWithObjects:{v8, 0}];
  v35[21] = v10;
  v34[22] = *MEMORY[0x277CCE920];
  v11 = *MEMORY[0x277CD0F20];
  v12 = [MEMORY[0x277CBEB98] setWithObjects:{*MEMORY[0x277CD0F20], 0}];
  v35[22] = v12;
  v34[23] = *MEMORY[0x277CCE930];
  v13 = [MEMORY[0x277CBEB98] setWithObjects:{v11, 0}];
  v35[23] = v13;
  v34[24] = *MEMORY[0x277CCE938];
  v14 = [MEMORY[0x277CBEB98] setWithObjects:{v11, 0}];
  v35[24] = v14;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:v34 count:25];
  v16 = isServiceType_compatibleWithAccessoryCategoryType__accessoryCategoryToServiceTypesMap;
  isServiceType_compatibleWithAccessoryCategoryType__accessoryCategoryToServiceTypesMap = v15;

  v17 = *MEMORY[0x277D85DE8];
}

+ (void)updateLocalMetadataWithMetadata:(id)metadata
{
  metadataCopy = metadata;
  if ([HMDPersistentStore archiveMetadata:?])
  {
    os_unfair_lock_lock_with_options();
    metadataCache = [self metadataCache];
    [metadataCache setObject:0 forKeyedSubscript:@"current"];

    os_unfair_lock_unlock(&_lock);
  }

  [self _logCurrentMetadata];
}

+ (void)updateLocalMetadataWithBuiltinMetadata
{
  v3 = +[HMDPersistentStore loadBuiltinPlainMetadataDictionary];
  v4 = [HMDPersistentStore archiveMetadata:v3];

  if (v4)
  {
    os_unfair_lock_lock_with_options();
    metadataCache = [self metadataCache];
    [metadataCache setObject:0 forKeyedSubscript:@"builtin"];

    metadataCache2 = [self metadataCache];
    [metadataCache2 setObject:0 forKeyedSubscript:@"current"];

    os_unfair_lock_unlock(&_lock);
  }

  [self _logCurrentMetadata];
}

+ (void)_logCurrentMetadata
{
  v15 = *MEMORY[0x277D85DE8];
  getSharedInstance = [self getSharedInstance];
  v3 = objc_autoreleasePoolPush();
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    version = [getSharedInstance version];
    schemaVersion = [getSharedInstance schemaVersion];
    v9 = 138543874;
    v10 = v5;
    v11 = 2112;
    v12 = version;
    v13 = 2112;
    v14 = schemaVersion;
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, "%{public}@Switching to HMDHAPMetadata version %@ schemaVersion %@", &v9, 0x20u);
  }

  objc_autoreleasePoolPop(v3);
  v8 = *MEMORY[0x277D85DE8];
}

+ (id)getSharedInstance
{
  os_unfair_lock_lock_with_options();
  metadataCache = [self metadataCache];
  v4 = [self getSharedInstanceWithLockedCache:metadataCache];

  os_unfair_lock_unlock(&_lock);

  return v4;
}

+ (id)getSharedInstanceWithLockedCache:(id)cache
{
  v31 = *MEMORY[0x277D85DE8];
  cacheCopy = cache;
  if (os_unfair_lock_trylock(&_lock))
  {
    v4 = objc_autoreleasePoolPush();
    v5 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = HMFGetLogIdentifier();
      *buf = 138543362;
      v26 = v6;
      _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_ERROR, "%{public}@HMDHAPMetadata::getSharedInstanceWithLockedCache called without holding the lock!", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    v7 = 0;
  }

  else
  {
    v8 = [cacheCopy objectForKeyedSubscript:@"current"];
    if (v8)
    {
      v9 = v8;
      v7 = v9;
    }

    else
    {
      v10 = configPlainMetadataPath;
      if (v10)
      {
        v24 = 0;
        v9 = [HMDHAPMetadata metadataWithPath:v10 error:&v24];
        v11 = v24;
        v12 = objc_autoreleasePoolPush();
        v13 = HMFGetOSLogHandle();
        v14 = v13;
        if (v11 || !v9)
        {
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            v21 = HMFGetLogIdentifier();
            *buf = 138543618;
            v26 = v21;
            v27 = 2112;
            v28 = v11;
            _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_ERROR, "%{public}@Failed to instantiate the current metadata %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v12);
          v7 = 0;
        }

        else
        {
          if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
          {
            v15 = HMFGetLogIdentifier();
            version = [v9 version];
            schemaVersion = [v9 schemaVersion];
            *buf = 138543874;
            v26 = v15;
            v27 = 2112;
            v28 = version;
            v29 = 2112;
            v30 = schemaVersion;
            _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, "%{public}@Current HMDHAPMetadata version %@ schemaVersion %@", buf, 0x20u);
          }

          objc_autoreleasePoolPop(v12);
          [cacheCopy setObject:v9 forKeyedSubscript:@"current"];
          v7 = v9;
        }
      }

      else
      {
        v18 = objc_autoreleasePoolPush();
        v19 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          v20 = HMFGetLogIdentifier();
          *buf = 138543362;
          v26 = v20;
          _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_ERROR, "%{public}@Failed to get plain metadata path", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v18);
        v9 = 0;
        v7 = 0;
      }
    }
  }

  v22 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)getBuiltinInstance
{
  v44 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock_with_options();
  metadataCache = [self metadataCache];
  v4 = [metadataCache objectForKeyedSubscript:@"builtin"];
  if (v4)
  {
    v5 = v4;
    v6 = v5;
    goto LABEL_26;
  }

  v7 = +[HMDPersistentStore loadBuiltinPlainMetadataDictionary];
  v8 = [v7 hmf_dictionaryForKey:*MEMORY[0x277CFEDA0]];

  v37 = 0;
  v9 = [objc_alloc(MEMORY[0x277CFEBA0]) initWithDictionary:v8 error:&v37];
  v10 = v37;
  if (v10 || !v9)
  {
    v15 = objc_autoreleasePoolPush();
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      *buf = 138543618;
      v39 = v17;
      v40 = 2112;
      v41 = v10;
      _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_ERROR, "%{public}@Failed to instantiate builtin HAP metadata %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v15);
    v5 = 0;
  }

  else
  {
    v36 = 0;
    v5 = [[HMDHAPMetadata alloc] initWithDictionary:v8 hapMetadata:v9 error:&v36];
    v10 = v36;
    if (!v10 && v5)
    {
      v11 = [self getSharedInstanceWithLockedCache:metadataCache];
      if (([v11 incomplete] & 1) != 0 || -[HMDHAPMetadata incomplete](v5, "incomplete"))
      {
        goto LABEL_20;
      }

      version = [v11 version];
      version2 = [(HMDHAPMetadata *)v5 version];
      v14 = version2;
      if (version == version2)
      {
        schemaVersion = [v11 schemaVersion];
        schemaVersion2 = [(HMDHAPMetadata *)v5 schemaVersion];
        v23 = schemaVersion == schemaVersion2;

        if (!v23)
        {
          goto LABEL_20;
        }

        version = v5;
        v5 = v11;
      }

      else
      {
      }

LABEL_20:
      [metadataCache setObject:v5 forKeyedSubscript:@"builtin"];
      v24 = objc_autoreleasePoolPush();
      v25 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        v26 = HMFGetLogIdentifier();
        version3 = [v9 version];
        schemaVersion3 = [v9 schemaVersion];
        *buf = 138543874;
        v39 = v26;
        v40 = 2112;
        v41 = version3;
        v42 = 2112;
        v43 = schemaVersion3;
        _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_INFO, "%{public}@Builtin HAPMetadata version %@ schemaVersion %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v24);
      v29 = objc_autoreleasePoolPush();
      v30 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        v31 = HMFGetLogIdentifier();
        version4 = [(HMDHAPMetadata *)v5 version];
        schemaVersion4 = [(HMDHAPMetadata *)v5 schemaVersion];
        *buf = 138543874;
        v39 = v31;
        v40 = 2112;
        v41 = version4;
        v42 = 2112;
        v43 = schemaVersion4;
        _os_log_impl(&dword_2531F8000, v30, OS_LOG_TYPE_INFO, "%{public}@Builtin HMDHAPMetadata version %@ schemaVersion %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v29);
      v5 = v5;

      v10 = 0;
      v6 = v5;
      goto LABEL_25;
    }

    v18 = objc_autoreleasePoolPush();
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543618;
      v39 = v20;
      v40 = 2112;
      v41 = v10;
      _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_ERROR, "%{public}@Failed to instantiate builtin metadata %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v18);
  }

  v6 = 0;
LABEL_25:

LABEL_26:
  os_unfair_lock_unlock(&_lock);
  v34 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (id)metadataCache
{
  if (metadataCache_onceToken != -1)
  {
    dispatch_once(&metadataCache_onceToken, &__block_literal_global_19145);
  }

  v3 = metadataCache_cache;

  return v3;
}

uint64_t __31__HMDHAPMetadata_metadataCache__block_invoke()
{
  v0 = [MEMORY[0x277CBEB38] dictionary];
  v1 = metadataCache_cache;
  metadataCache_cache = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

+ (HMDHAPMetadata)metadataWithDictionary:(id)dictionary error:(id *)error
{
  v23 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v16 = 0;
  v6 = [objc_alloc(MEMORY[0x277CFEBA0]) initWithDictionary:dictionaryCopy error:&v16];
  v7 = v16;
  v8 = v7;
  if (error)
  {
    v9 = v7;
    *error = v8;
  }

  if (v6)
  {
    v10 = [[HMDHAPMetadata alloc] initWithDictionary:dictionaryCopy hapMetadata:v6 error:error];
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543874;
      v18 = v13;
      v19 = 2112;
      v20 = dictionaryCopy;
      v21 = 2112;
      v22 = v8;
      _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@Failed to parse HAP metadata from %@ - error %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v11);
    v10 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];

  return v10;
}

+ (HMDHAPMetadata)metadataWithPath:(id)path error:(id *)error
{
  v23 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  v7 = [MEMORY[0x277CBEBC0] fileURLWithPath:pathCopy];
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfURL:v7 error:error];
  v9 = v8;
  if (v8)
  {
    v10 = *MEMORY[0x277CFEDA0];
    v11 = [v8 hmf_dictionaryForKey:*MEMORY[0x277CFEDA0]];
    if (v11)
    {
      v12 = [HMDHAPMetadata metadataWithDictionary:v11 error:error];
    }

    else
    {
      v13 = objc_autoreleasePoolPush();
      selfCopy = self;
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = HMFGetLogIdentifier();
        v19 = 138543618;
        v20 = v16;
        v21 = 2112;
        v22 = v10;
        _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_ERROR, "%{public}@Could not find metadata for key: %@", &v19, 0x16u);
      }

      objc_autoreleasePoolPop(v13);
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  v17 = *MEMORY[0x277D85DE8];

  return v12;
}

@end