@interface HMDHAPMetadata
+ (BOOL)isAdminPrivilegeRequiredForWritingCharacteristicType:(id)a3 serviceType:(id)a4;
+ (BOOL)isHomedVersionSupported:(id)a3;
+ (BOOL)isOwnerPrivilegeRequiredForWritingCharacteristicType:(id)a3 serviceType:(id)a4;
+ (BOOL)isServiceType:(id)a3 compatibleWithAccessoryCategoryType:(id)a4;
+ (HMDHAPMetadata)metadataWithDictionary:(id)a3 error:(id *)a4;
+ (HMDHAPMetadata)metadataWithPath:(id)a3 error:(id *)a4;
+ (id)dataFromMetadataDictionaryWithKey:(id)a3;
+ (id)getBuiltinInstance;
+ (id)getSharedInstance;
+ (id)getSharedInstanceWithLockedCache:(id)a3;
+ (id)metadataCache;
+ (void)_logCurrentMetadata;
+ (void)prepareMetadata;
+ (void)updateLocalMetadataWithBuiltinMetadata;
+ (void)updateLocalMetadataWithMetadata:(id)a3;
- (BOOL)allowsSecuringWriteFor:(id)a3 withValue:(id)a4;
- (BOOL)checkTupleExistsInSet:(id)a3 forChrType:(id)a4 svcType:(id)a5;
- (BOOL)disallowsAssistantServiceType:(id)a3 characteristicType:(id)a4;
- (BOOL)generateNotificationOnConfigurationForCharacteristicType:(id)a3 serviceType:(id)a4;
- (BOOL)isSecondsDownCounterCharacteristicType:(id)a3;
- (BOOL)isStandardCharacteristicType:(id)a3;
- (BOOL)isStandardServiceType:(id)a3;
- (BOOL)isTargetCharacteristic:(id)a3;
- (BOOL)parseAndSetAssistantCharacteristics:(id)a3;
- (BOOL)parseAndSetAssistantMetadataWithAssistantPlist:(id)a3;
- (BOOL)parseAndSetAssistantServices:(id)a3;
- (BOOL)parseAndSetAssistantUnits:(id)a3;
- (BOOL)parseAndSetHMMetadataWithHMPlist:(id)a3;
- (BOOL)requiresDeviceUnlock:(id)a3 forService:(id)a4;
- (BOOL)requiresTimedWrite:(id)a3 forService:(id)a4;
- (BOOL)shouldAllowToWakeSuspendedAccessoryForOperation:(int64_t)a3 service:(id)a4 characteristicType:(id)a5 value:(id)a6;
- (BOOL)shouldAutoEnableNotificationForCharacteristic:(id)a3 ofService:(id)a4;
- (BOOL)shouldCoalesceCharacteristicNotifications:(id)a3 forService:(id)a4;
- (BOOL)shouldEnableHomeNotificationForCharacteristicType:(id)a3 serviceType:(id)a4;
- (BOOL)shouldFilterChangeNotificationsForCharacteristicType:(id)a3 serviceType:(id)a4;
- (BOOL)shouldFilterCharacteristicOfType:(id)a3;
- (BOOL)shouldFilterCharacteristicOfTypeFromApp:(id)a3;
- (BOOL)shouldFilterEnableNotificationsForCharacteristicType:(id)a3 serviceType:(id)a4;
- (BOOL)shouldFilterServiceOfType:(id)a3;
- (BOOL)shouldFilterServiceOfTypeFromApp:(id)a3;
- (BOOL)shouldHomeAppShowTileForServiceType:(id)a3;
- (BOOL)shouldNotCacheCharacteristicOfType:(id)a3;
- (BOOL)shouldRefreshValueForCharacteristicWithType:(id)a3 serviceType:(id)a4;
- (BOOL)supportsAuthorizationData:(id)a3 forService:(id)a4;
- (BOOL)supportsLocalization:(id)a3;
- (HMDHAPMetadata)initWithDictionary:(id)a3 hapMetadata:(id)a4 error:(id *)a5;
- (HMDHAPMetadata)initWithFullPlist:(id)a3 hapMetadata:(id)a4;
- (HMDHAPMetadata)initWithFullPlist:(id)a3 hapMetadata:(id)a4 error:(id *)a5;
- (id)aliasedHAPCharacteristicTypes;
- (id)aliasedHAPServiceTypes;
- (id)audioAccessoryCategory;
- (id)autoApplyPolicyConfigurationForService:(id)a3 category:(id)a4;
- (id)categoryForIdentifier:(id)a3;
- (id)categoryForOther;
- (id)categoryForType:(id)a3;
- (id)categoryTypeFromName:(id)a3;
- (id)characteristicNameFromType:(id)a3;
- (id)characteristicTypeFromName:(id)a3;
- (id)characteristicValueUnit:(id)a3;
- (id)descriptionForCharacteristicType:(id)a3;
- (id)descriptionForServiceType:(id)a3;
- (id)disallowedAssistantCharacteristicTypesByServiceType;
- (id)getAliasedCharacteristicTypes:(id)a3;
- (id)getAliasedServiceType:(id)a3;
- (id)getCharacteristicTypeAlias:(id)a3;
- (id)getServiceTypeAlias:(id)a3;
- (id)getStatusCharacteristicTypes:(id)a3 forServiceType:(id)a4;
- (id)mapCharacteristicValueType:(id)a3;
- (id)mapFromAssistantCharacteristicValue:(id)a3 name:(id)a4;
- (id)mapFromAssistantServiceName:(id)a3;
- (id)mapFromAssistantUnitName:(id)a3;
- (id)mapReadCharacteristicFromAssistantName:(id)a3;
- (id)mapToAssistantCharacteristicName:(id)a3;
- (id)mapToAssistantCharacteristicValue:(id)a3 name:(id)a4 getActionType:(BOOL)a5;
- (id)mapToAssistantServiceName:(id)a3;
- (id)mapToAssistantServiceSubtypeName:(id)a3;
- (id)mapToAssistantServiceSubtypeName:(id)a3 accessoryCategory:(id)a4;
- (id)mapToAssistantUnitName:(id)a3;
- (id)mapWriteCharacteristicFromAssistantName:(id)a3;
- (id)parseAndSetRawPlist:(id)a3;
- (id)parseCharacteristicArray:(id)a3;
- (id)parseHMAccessoryFirmwareUpdatePolicyCharacteristics:(id)a3;
- (id)parseHMAccessoryFirmwareUpdatePolicyCriteria:(id)a3;
- (id)parseHMAccessoryFirmwareUpdatePolicyServices:(id)a3;
- (id)parseMetadataTupleSetFromPlist:(id)a3;
- (id)parseServiceArray:(id)a3;
- (id)serviceNameFromType:(id)a3;
- (id)serviceSubtypeForValue:(id)a3 forServiceType:(id)a4;
- (id)serviceTypeFromName:(id)a3;
- (id)stagingPolicyConfigurationForService:(id)a3 category:(id)a4;
- (id)statusHAPCharacteristicTypesForServiceType;
- (id)validateAssociatedServiceType:(id)a3 forService:(id)a4;
- (id)xpcData:(BOOL)a3;
- (void)parseAndSetAllowableSecuringWrites:(id)a3;
- (void)parseAndSetHMAccessoryFirmwareUpdatePolicies:(id)a3;
- (void)parseAndSetHMCategories:(id)a3;
- (void)parseAndSetWakeOnOperationsFilter:(id)a3;
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

- (BOOL)checkTupleExistsInSet:(id)a3 forChrType:(id)a4 svcType:(id)a5
{
  v7 = MEMORY[0x277CFEBB0];
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[v7 alloc] initWithCharacteristicType:v9 serviceType:v8];

  LOBYTE(v9) = [v10 containsObject:v11];
  return v9;
}

- (BOOL)parseAndSetAssistantUnits:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v4, "count")}];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v6 = v4;
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
        v13 = [(HMDHAPMetadata *)self hapMetadata];
        v14 = [v13 isStandardHAPUnitName:v12];

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
            _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_ERROR, "%{public}@Assistant unit %@ unknown", buf, 0x16u);
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

- (BOOL)parseAndSetAssistantCharacteristics:(id)a3
{
  v66 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v3, "count")}];
  v5 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v3, "count")}];
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v6 = v3;
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
        v16 = [(HMDHAPMetadata *)self hapMetadata];
        v17 = [v16 isStandardHAPCharacteristicName:v13];

        if (v17)
        {
          v18 = 0;
          if (!v14)
          {
            goto LABEL_12;
          }

LABEL_11:
          v19 = [(HMDHAPMetadata *)self hapMetadata];
          v20 = [v19 isStandardHAPCharacteristicName:v14];

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
            _os_log_impl(&dword_229538000, v36, OS_LOG_TYPE_ERROR, "%{public}@Assistant characteristic %@ writeHAP characteristic %@ unknown", buf, 0x20u);
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
            _os_log_impl(&dword_229538000, v36, OS_LOG_TYPE_ERROR, "%{public}@Assistant characteristic %@ readHAP characteristic %@ unknown", buf, 0x20u);
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
          v27 = [(HMDHAPMetadata *)self hapMetadata];
          v28 = [v27 characteristicTypeFromUTI:v13];
          [v21 setObject:v9 forKey:v28];
        }

        if (v14)
        {
          v29 = [(HMDHAPMetadata *)self hapMetadata];
          v30 = [v29 characteristicTypeFromUTI:v14];
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
          _os_log_impl(&dword_229538000, v32, OS_LOG_TYPE_ERROR, "%{public}@Assistant characteristic %@ format not specified unknown", buf, 0x16u);
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

- (BOOL)parseAndSetAssistantServices:(id)a3
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v3, "count")}];
  v5 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v3, "count")}];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v6 = v3;
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
        v14 = [(HMDHAPMetadata *)self hapMetadata];
        v15 = [v14 serviceTypeFromUTI:v13];

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
            _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_ERROR, "%{public}@Assistant service %@ not mappable - no such HAP service %@", buf, 0x20u);
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

- (id)parseCharacteristicArray:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(v4, "count")}];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = v4;
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
        v12 = [(HMDHAPMetadata *)self hapMetadata];
        v13 = [v12 characteristicTypeFromUTI:v11];

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
            _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_ERROR, "%{public}@characteristicName %@ is not a standard HAP characteristicName", buf, 0x16u);
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

- (id)parseServiceArray:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(v4, "count")}];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = v4;
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
        v12 = [(HMDHAPMetadata *)self hapMetadata];
        v13 = [v12 serviceTypeFromUTI:v11];

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
            _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_ERROR, "%{public}@ServiceName %@ is not a standard HAP serviceName", buf, 0x16u);
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

- (id)parseHMAccessoryFirmwareUpdatePolicyCharacteristics:(id)a3
{
  v59 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v4, "count")}];
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v6 = v4;
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
        v29 = self;
        v30 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          v31 = HMFGetLogIdentifier();
          *buf = 138543618;
          v55 = v31;
          v56 = 2112;
          v57 = v8;
          _os_log_impl(&dword_229538000, v30, OS_LOG_TYPE_ERROR, "%{public}@Type not found for characteristic name %@", buf, 0x16u);
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
        v25 = self;
        v26 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
        {
          v27 = HMFGetLogIdentifier();
          *buf = 138543618;
          v55 = v27;
          v56 = 2112;
          v57 = v10;
          _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_DEBUG, "%{public}@Values not available for characteristic %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v24);
        goto LABEL_29;
      }

      v15 = [v12 hmf_numberForKey:v45];
      v16 = [(HMDHAPMetadata *)self hapMetadata];
      v17 = [v16 hapCharacteristicFromType:v10];
      v18 = [v17 format];

      if (!v18)
      {
        v36 = objc_autoreleasePoolPush();
        v37 = self;
        v38 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
        {
          v39 = HMFGetLogIdentifier();
          *buf = 138543618;
          v55 = v39;
          v56 = 2112;
          v57 = v10;
          _os_log_impl(&dword_229538000, v38, OS_LOG_TYPE_DEBUG, "%{public}@Format not found for characteristic %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v36);
        v6 = v46;
        goto LABEL_33;
      }

      v19 = self;
      v20 = [[HMDAccessoryFirmwareUpdatePolicyCharacteristicConfiguration alloc] initWithType:v10 format:v18 values:v14 settlingTime:v15];
      if (v20)
      {
        [v5 addObject:v20];
      }

      else
      {
        context = objc_autoreleasePoolPush();
        v21 = v19;
        v22 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          v42 = HMFGetLogIdentifier();
          *buf = 138543618;
          v55 = v42;
          v56 = 2112;
          v57 = v10;
          _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_ERROR, "%{public}@Characteristic configuration failed for characteristic %@", buf, 0x16u);
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
      self = v19;
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
    v33 = self;
    v34 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      v35 = HMFGetLogIdentifier();
      *buf = 138543618;
      v55 = v35;
      v56 = 2112;
      v57 = v10;
      _os_log_impl(&dword_229538000, v34, OS_LOG_TYPE_ERROR, "%{public}@Failed while parsing characteristic %@", buf, 0x16u);
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

- (id)parseHMAccessoryFirmwareUpdatePolicyCriteria:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc_init(HMDAccessoryFirmwareUpdatePolicyCriteria);
  -[HMDAccessoryFirmwareUpdatePolicyCriteria setAnyUserAtHome:](v5, "setAnyUserAtHome:", [v4 hmf_BOOLForKey:*MEMORY[0x277CFE788]]);
  -[HMDAccessoryFirmwareUpdatePolicyCriteria setNoUserAtHome:](v5, "setNoUserAtHome:", [v4 hmf_BOOLForKey:*MEMORY[0x277CFE7B8]]);
  -[HMDAccessoryFirmwareUpdatePolicyCriteria setCheckForScheduledAutomation:](v5, "setCheckForScheduledAutomation:", [v4 hmf_BOOLForKey:*MEMORY[0x277CFE7A8]]);
  v6 = [v4 hmf_dictionaryForKey:*MEMORY[0x277CFE7A0]];
  v7 = [(HMDHAPMetadata *)self parseHMAccessoryFirmwareUpdatePolicyCharacteristics:v6];
  [(HMDAccessoryFirmwareUpdatePolicyCriteria *)v5 setCharacteristicConfigurations:v7];

  if (v6)
  {
    v8 = [(HMDAccessoryFirmwareUpdatePolicyCriteria *)v5 characteristicConfigurations];

    if (!v8)
    {
      v22 = objc_autoreleasePoolPush();
      v23 = self;
      v24 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v25 = HMFGetLogIdentifier();
        v28 = 138543362;
        v29 = v25;
        _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_ERROR, "%{public}@Failed to parse characteristics", &v28, 0xCu);
      }

      objc_autoreleasePoolPop(v22);
      goto LABEL_18;
    }
  }

  v9 = [v4 hmf_dictionaryForKey:*MEMORY[0x277CFE7D0]];
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
    v18 = self;
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
  v18 = self;
  v19 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    v20 = HMFGetLogIdentifier();
    v28 = 138543362;
    v29 = v20;
    v21 = "%{public}@Failed to parse time window";
LABEL_16:
    _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_ERROR, v21, &v28, 0xCu);
  }

LABEL_17:

  objc_autoreleasePoolPop(v17);
LABEL_18:
  v16 = 0;
LABEL_19:

  v26 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)parseHMAccessoryFirmwareUpdatePolicyServices:(id)a3
{
  v95 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    v37 = [MEMORY[0x277CBEAC0] dictionary];
    goto LABEL_48;
  }

  v75 = self;
  v6 = [v4 hmf_dictionaryForKey:*MEMORY[0x277CFE7C0]];
  v7 = 0x277CBE000uLL;
  v8 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v5, "count")}];
  v76 = [MEMORY[0x277CBEAC0] dictionary];
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
  v12 = v75;
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
      _os_log_impl(&dword_229538000, v53, OS_LOG_TYPE_ERROR, "%{public}@Service type not found for service:%@.", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v51);
    v37 = v76;
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
        v12 = v75;
        goto LABEL_32;
      }

      v59 = v19;
      v60 = objc_autoreleasePoolPush();
      v61 = v75;
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
        _os_log_impl(&dword_229538000, v62, OS_LOG_TYPE_ERROR, "%{public}@Service configuration failed for category %@ in service:%@.", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v60);
      v37 = v76;

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
          _os_log_impl(&dword_229538000, v46, OS_LOG_TYPE_ERROR, "%{public}@Criteria configuration failed for category %@ in service:%@.", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v44);
        v37 = v76;

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
          _os_log_impl(&dword_229538000, v32, OS_LOG_TYPE_ERROR, "%{public}@Service configuration failed for category %@ in service:%@.", buf, 0x20u);

          v30 = v72;
        }

        objc_autoreleasePoolPop(v30);
        v71 = v76;
        v15 = v29;
        v18 = v73;
        v19 = v74;
        v12 = v75;
      }

      if (!v27)
      {
        v48 = v19;
        v8 = v64;
        v5 = v65;
        v37 = v71;
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

            v37 = [v8 copy];
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
      _os_log_impl(&dword_229538000, v40, OS_LOG_TYPE_ERROR, "%{public}@Category type not found for service:%@.", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v38);
    v37 = v76;
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
    _os_log_impl(&dword_229538000, v57, OS_LOG_TYPE_ERROR, "%{public}@Failed while parsing policy configuration for service:%@.", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v55);
  v37 = v76;
LABEL_45:

LABEL_46:
  v9 = v68;

LABEL_47:
LABEL_48:

  v49 = *MEMORY[0x277D85DE8];

  return v37;
}

- (void)parseAndSetHMAccessoryFirmwareUpdatePolicies:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 hmf_dictionaryForKey:*MEMORY[0x277CFE7E0]];
    v7 = [(HMDHAPMetadata *)self parseHMAccessoryFirmwareUpdatePolicyServices:v6];
    [(HMDHAPMetadata *)self setFirmwareUpdateStagingPolicies:v7];

    v8 = [v5 hmf_dictionaryForKey:*MEMORY[0x277CFE778]];
    v9 = [(HMDHAPMetadata *)self parseHMAccessoryFirmwareUpdatePolicyServices:v8];
    [(HMDHAPMetadata *)self setFirmwareUpdateAutoApplyPolicies:v9];
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    v11 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      v15 = 138543362;
      v16 = v13;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@Accessory firmware update policies not defined!", &v15, 0xCu);
    }

    objc_autoreleasePoolPop(v10);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)parseAndSetHMCategories:(id)a3
{
  v25 = self;
  v37 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v27 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v3, "count")}];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v4 = v3;
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
        v12 = [v4 hmf_dictionaryForKey:{v10, v25}];
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
      _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@There are no accessory categories in the metadata", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v20);
  }

  v23 = [v27 copy];
  [v26 setHmAccessoryCategories:v23];

  v24 = *MEMORY[0x277D85DE8];
}

- (void)parseAndSetWakeOnOperationsFilter:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v21 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v19 = v4;
    obj = v4;
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

    v4 = v19;
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)parseAndSetAllowableSecuringWrites:(id)a3
{
  v40 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v4, "count")}];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v6 = v4;
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
        v13 = [(HMDHAPMetadata *)self hapMetadata];
        v14 = [v13 characteristicTypeFromUTI:v12];

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
          v19 = self;
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
            _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_ERROR, "%{public}@Unknown characteristic '%@' while parsing tuple", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v21);
          v5 = v20;
          self = v19;
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
      _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_DEFAULT, "%{public}@There are no allowable securing writes in the metadata", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v24);
  }

  v27 = [v5 copy];
  [(HMDHAPMetadata *)self setHmAllowableSecuringWrites:v27];

  v28 = *MEMORY[0x277D85DE8];
}

- (id)parseMetadataTupleSetFromPlist:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDHAPMetadata *)self hapMetadata];
  v6 = [v5 parseCharacteristicServiceTuples:v4];

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
      v16 = v4;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_ERROR, "%{public}@Failed to parse characteristic/service tuples: %@", &v13, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
  }

  v11 = *MEMORY[0x277D85DE8];

  return v6;
}

- (BOOL)parseAndSetAssistantMetadataWithAssistantPlist:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 hmf_dictionaryForKey:*MEMORY[0x277CFEDC8]];
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
    _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_ERROR, v15, &v18, 0xCu);

    goto LABEL_12;
  }

  v7 = [v4 hmf_dictionaryForKey:*MEMORY[0x277CFED40]];
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

  v9 = [v4 hmf_dictionaryForKey:*MEMORY[0x277CFEDE0]];
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

- (BOOL)parseAndSetHMMetadataWithHMPlist:(id)a3
{
  v4 = a3;
  v5 = [v4 hmf_dictionaryForKey:*MEMORY[0x277CFEDB8]];
  v6 = [(HMDHAPMetadata *)self parseMetadataTupleSetFromPlist:v5];
  [(HMDHAPMetadata *)self setHmRequiresDeviceUnlockTuples:v6];

  v7 = [(HMDHAPMetadata *)self hmRequiresDeviceUnlockTuples];

  if (v7)
  {
    v8 = [v4 hmf_dictionaryForKey:*MEMORY[0x277CFED20]];
    [(HMDHAPMetadata *)self parseAndSetAllowableSecuringWrites:v8];

    v9 = [v4 hmf_dictionaryForKey:*MEMORY[0x277CFEDF8]];
    [(HMDHAPMetadata *)self parseAndSetWakeOnOperationsFilter:v9];

    v10 = [v4 hmf_dictionaryForKey:*MEMORY[0x277CFED38]];
    [(HMDHAPMetadata *)self parseAndSetHMCategories:v10];

    v11 = [v4 hmf_dictionaryForKey:*MEMORY[0x277CFED60]];
    v12 = *MEMORY[0x277CFEDC8];
    v13 = [v11 hmf_arrayForKey:*MEMORY[0x277CFEDC8]];
    v14 = [(HMDHAPMetadata *)self parseServiceArray:v13];
    [(HMDHAPMetadata *)self setHmBlacklistedServices:v14];

    v15 = *MEMORY[0x277CFED40];
    v16 = [v11 hmf_arrayForKey:*MEMORY[0x277CFED40]];
    v17 = [(HMDHAPMetadata *)self parseCharacteristicArray:v16];
    [(HMDHAPMetadata *)self setHmBlacklistedCharacteristics:v17];

    v18 = [v4 hmf_dictionaryForKey:*MEMORY[0x277CFED58]];

    v19 = [v18 hmf_arrayForKey:v12];
    v20 = [(HMDHAPMetadata *)self parseServiceArray:v19];
    [(HMDHAPMetadata *)self setHmBlacklistedServicesFromApp:v20];

    v21 = [v18 hmf_arrayForKey:v15];
    v22 = [(HMDHAPMetadata *)self parseCharacteristicArray:v21];
    [(HMDHAPMetadata *)self setHmBlacklistedCharacteristicsFromApp:v22];

    v23 = [(HMDHAPMetadata *)self hmBlacklistedServices];
    if (!v23)
    {
      goto LABEL_11;
    }

    v24 = v23;
    v25 = [(HMDHAPMetadata *)self hmBlacklistedCharacteristics];
    if (!v25)
    {
      v40 = 0;
LABEL_20:

      goto LABEL_21;
    }

    v26 = v25;
    v27 = [(HMDHAPMetadata *)self hmBlacklistedServicesFromApp];
    if (!v27)
    {
      v40 = 0;
LABEL_19:

      goto LABEL_20;
    }

    v28 = v27;
    v29 = [(HMDHAPMetadata *)self hmBlacklistedCharacteristicsFromApp];

    if (!v29)
    {
LABEL_11:
      v40 = 0;
LABEL_21:

      goto LABEL_22;
    }

    v24 = [v4 hmf_dictionaryForKey:*MEMORY[0x277CFED90]];
    v26 = [v24 hmf_dictionaryForKey:*MEMORY[0x277CFED88]];
    v30 = [v24 hmf_dictionaryForKey:*MEMORY[0x277CFED30]];
    v31 = [v24 hmf_dictionaryForKey:*MEMORY[0x277CFED48]];
    v32 = [(HMDHAPMetadata *)self parseMetadataTupleSetFromPlist:v26];
    [(HMDHAPMetadata *)self setHmNotificationAutoEnabledTuples:v32];

    v33 = [(HMDHAPMetadata *)self parseMetadataTupleSetFromPlist:v30];
    [(HMDHAPMetadata *)self setHmBulletinBoardEnabledTuples:v33];

    v34 = [(HMDHAPMetadata *)self parseMetadataTupleSetFromPlist:v31];
    [(HMDHAPMetadata *)self setHmCoalesceNotificationsTuples:v34];

    v35 = [(HMDHAPMetadata *)self hmNotificationAutoEnabledTuples];
    if (v35)
    {
      v36 = v35;
      v37 = [(HMDHAPMetadata *)self hmBulletinBoardEnabledTuples];
      if (v37)
      {
        v38 = v37;
        v42 = v30;
        v39 = [(HMDHAPMetadata *)self hmCoalesceNotificationsTuples];

        if (!v39)
        {
          v40 = 0;
          v30 = v42;
          goto LABEL_18;
        }

        v36 = [v4 hmf_dictionaryForKey:*MEMORY[0x277CFE780]];
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

- (id)parseAndSetRawPlist:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 hmf_dictionaryForKey:*MEMORY[0x277CFED18]];
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
          _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_ERROR, "%{public}@Failed to parse assistant metadata from plist %@", &v20, 0x16u);
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
        _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_ERROR, "%{public}@Failed to parse HM metadata from plist %@", &v20, 0x16u);
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
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to set HMDMetadata because rawPlist is nil.", &v20, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
    v8 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:1001];
  }

  v18 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)autoApplyPolicyConfigurationForService:(id)a3 category:(id)a4
{
  if (a3)
  {
    v6 = a4;
    v7 = a3;
    v8 = [(HMDHAPMetadata *)self firmwareUpdateAutoApplyPolicies];
    v9 = [v8 valueForKey:v7];

    v10 = *MEMORY[0x277CFE7B0];
    if (v6)
    {
      v11 = v6;
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

- (id)stagingPolicyConfigurationForService:(id)a3 category:(id)a4
{
  if (a3)
  {
    v6 = a4;
    v7 = a3;
    v8 = [(HMDHAPMetadata *)self firmwareUpdateStagingPolicies];
    v9 = [v8 valueForKey:v7];

    v10 = *MEMORY[0x277CFE7B0];
    if (v6)
    {
      v11 = v6;
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

- (BOOL)disallowsAssistantServiceType:(id)a3 characteristicType:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(HMDHAPMetadata *)self disallowedAssistantCharacteristicTypesByServiceType];
  v9 = [v8 objectForKeyedSubscript:v7];

  LOBYTE(v7) = [v9 containsObject:v6];
  return v7;
}

- (id)mapToAssistantCharacteristicValue:(id)a3 name:(id)a4 getActionType:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v10 = [(HMDHAPMetadata *)self assistantCharacteristics];
  v11 = [v10 objectForKeyedSubscript:v9];

  if (v11)
  {
    v12 = [v11 outValues];
    v13 = [v12 count];

    if (v13 && v5)
    {
      v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", v8];
      v15 = [v11 outValues];
      v16 = [v15 objectForKeyedSubscript:v14];
      goto LABEL_16;
    }

    v17 = [v11 values];
    v18 = [v17 count];

    if (v18)
    {
      v19 = [v11 values];
      v14 = [v19 allKeysForObject:v8];

      if (![v14 count])
      {
        v16 = 0;
        goto LABEL_17;
      }

      v15 = [v14 firstObject];
      v20 = [MEMORY[0x277CCAC80] scannerWithString:v15];
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
        v21 = v15;
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

  v16 = v8;
LABEL_19:

  return v16;
}

- (id)mapFromAssistantCharacteristicValue:(id)a3 name:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HMDHAPMetadata *)self assistantCharacteristics];
  v9 = [v8 objectForKeyedSubscript:v7];

  if (!v9)
  {
    goto LABEL_4;
  }

  v10 = [v9 values];
  v11 = [v10 count];

  if (!v11)
  {
    goto LABEL_4;
  }

  v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", v6];
  v13 = [v9 values];
  v14 = [v13 objectForKeyedSubscript:v12];

  if (!v14)
  {
LABEL_4:
    v14 = v6;
  }

  return v14;
}

- (id)mapFromAssistantUnitName:(id)a3
{
  v4 = a3;
  v5 = [(HMDHAPMetadata *)self assistantUnits];
  v6 = [v5 hmf_stringForKey:v4];

  return v6;
}

- (id)mapToAssistantUnitName:(id)a3
{
  v4 = a3;
  v5 = [(HMDHAPMetadata *)self assistantUnits];
  v6 = [v5 objectForKeyedSubscript:v4];

  return v6;
}

- (id)mapCharacteristicValueType:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(HMDHAPMetadata *)self assistantCharacteristics];
    v6 = [v5 objectForKeyedSubscript:v4];

    v7 = [v6 format];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)characteristicValueUnit:(id)a3
{
  v4 = a3;
  v5 = [(HMDHAPMetadata *)self hapMetadata];
  v6 = [v5 characteristicValueUnitOfType:v4];

  return v6;
}

- (id)getStatusCharacteristicTypes:(id)a3 forServiceType:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(HMDHAPMetadata *)self statusHAPCharacteristicTypesForServiceType];
  v9 = [v8 objectForKey:v6];

  v10 = [v9 objectForKey:v7];

  return v10;
}

- (id)getCharacteristicTypeAlias:(id)a3
{
  v4 = a3;
  v5 = [(HMDHAPMetadata *)self aliasedHAPCharacteristicTypes];
  v6 = [v5 objectForKeyedSubscript:v4];

  return v6;
}

- (id)getAliasedCharacteristicTypes:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDHAPMetadata *)self aliasedHAPCharacteristicTypes];
  v6 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v5, "count")}];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = v5;
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
        v14 = [v13 isEqual:v4];

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

- (id)getServiceTypeAlias:(id)a3
{
  v4 = a3;
  v5 = [(HMDHAPMetadata *)self aliasedHAPServiceTypes];
  v6 = [v5 objectForKeyedSubscript:v4];

  return v6;
}

- (id)getAliasedServiceType:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
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
        v11 = [v10 isEqual:v4];

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

- (id)mapWriteCharacteristicFromAssistantName:(id)a3
{
  v4 = a3;
  v5 = [(HMDHAPMetadata *)self assistantCharacteristics];
  v6 = [v5 objectForKeyedSubscript:v4];

  v7 = [(HMDHAPMetadata *)self hapMetadata];
  v8 = [v6 writeHAPCharacteristicName];
  v9 = [v7 characteristicTypeFromUTI:v8];

  return v9;
}

- (id)mapReadCharacteristicFromAssistantName:(id)a3
{
  v4 = a3;
  v5 = [(HMDHAPMetadata *)self assistantCharacteristics];
  v6 = [v5 objectForKeyedSubscript:v4];

  v7 = [(HMDHAPMetadata *)self hapMetadata];
  v8 = [v6 readHAPCharacteristicName];
  v9 = [v7 characteristicTypeFromUTI:v8];

  return v9;
}

- (id)mapToAssistantCharacteristicName:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = v4;
    v6 = [(HMDHAPMetadata *)self aliasedHAPCharacteristicTypes];
    if (([v5 isEqual:*MEMORY[0x277CFE6A8]] & 1) == 0 && (objc_msgSend(v5, "isEqual:", *MEMORY[0x277CFE6A0]) & 1) == 0)
    {
      v7 = [v6 objectForKey:v5];

      if (v7)
      {
        v8 = [v6 objectForKey:v5];

        v5 = v8;
      }
    }

    v9 = [(HMDHAPMetadata *)self assistantChrHAPTypeNameMap];
    v10 = [v9 objectForKeyedSubscript:v5];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)mapToAssistantServiceSubtypeName:(id)a3 accessoryCategory:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (mapToAssistantServiceSubtypeName_accessoryCategory__onceToken == -1)
  {
    if (v6)
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
  if (v5 && v8)
  {
    v10 = [v8 objectForKeyedSubscript:v5];
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

- (id)mapToAssistantServiceSubtypeName:(id)a3
{
  v3 = mapToAssistantServiceSubtypeName__onceToken;
  v4 = a3;
  if (v3 != -1)
  {
    dispatch_once(&mapToAssistantServiceSubtypeName__onceToken, &__block_literal_global_256);
  }

  v5 = [mapToAssistantServiceSubtypeName__assistantServiceSubtypeNameMap objectForKey:v4];

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

- (id)mapFromAssistantServiceName:(id)a3
{
  v4 = a3;
  v5 = [(HMDHAPMetadata *)self assistantServiceNameHAPTypeMap];
  v6 = [v5 objectForKeyedSubscript:v4];

  return v6;
}

- (id)mapToAssistantServiceName:(id)a3
{
  v4 = a3;
  v5 = [(HMDHAPMetadata *)self aliasedHAPServiceTypes];
  v6 = [v5 objectForKeyedSubscript:v4];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = v4;
  }

  v9 = v8;

  v10 = [(HMDHAPMetadata *)self assistantServiceHAPTypeNameMap];
  v11 = [v10 objectForKeyedSubscript:v9];

  return v11;
}

- (BOOL)supportsLocalization:(id)a3
{
  v4 = a3;
  v5 = [(HMDHAPMetadata *)self assistantCharacteristics];
  v6 = [v5 objectForKeyedSubscript:v4];

  LOBYTE(v5) = [v6 supportsLocalization];
  return v5;
}

- (id)serviceSubtypeForValue:(id)a3 forServiceType:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (v5)
  {
    if (serviceSubtypeForValue_forServiceType__onceToken != -1)
    {
      dispatch_once(&serviceSubtypeForValue_forServiceType__onceToken, &__block_literal_global_246);
    }

    v7 = [serviceSubtypeForValue_forServiceType__subServiceTypeMap objectForKey:v6];
    v8 = [v7 objectForKey:v5];

    if (!v8)
    {
      v9 = [v6 isEqualToString:*MEMORY[0x277CFE910]];
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
  v7[0] = &unk_283E71C60;
  v7[1] = &unk_283E71C78;
  v1 = *MEMORY[0x277CD0DA8];
  v8[0] = v0;
  v8[1] = v1;
  v7[2] = &unk_283E71C90;
  v7[3] = &unk_283E71CA8;
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

- (id)categoryTypeFromName:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [(HMDHAPMetadata *)self hmAccessoryCategories];
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
        v10 = [v9 name];
        v11 = [v10 isEqualToString:v4];

        if (v11)
        {
          v6 = [v9 uuidStr];
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

- (id)categoryForType:(id)a3
{
  v4 = a3;
  v5 = [(HMDHAPMetadata *)self hmAccessoryCategories];
  v6 = [v5 allValues];
  v7 = [v6 hmf_firstObjectWithValue:v4 forKeyPath:@"uuidStr"];

  if (!v7)
  {
    v8 = [(HMDHAPMetadata *)self audioAccessoryCategory];
    v9 = [v8 uuidStr];
    v10 = [v4 isEqual:v9];

    if (v10)
    {
      goto LABEL_5;
    }
  }

  v8 = v7;
LABEL_5:

  return v8;
}

- (id)categoryForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(HMDHAPMetadata *)self hmAccessoryCategories];
  v6 = [v5 objectForKeyedSubscript:v4];

  if (!v6)
  {
    v7 = [(HMDHAPMetadata *)self audioAccessoryCategory];
    v8 = [v7 identifier];
    v9 = [v4 isEqual:v8];

    if (v9)
    {
      goto LABEL_5;
    }
  }

  v7 = v6;
LABEL_5:

  return v7;
}

- (id)audioAccessoryCategory
{
  v2 = [HMDHAPMetadataCategory alloc];
  v3 = [(HMDHAPMetadataCategory *)v2 initWithIdentifier:&unk_283E71C48 uuid:*MEMORY[0x277CCE8B0] name:@"homepod" description:@"HomePod"];

  return v3;
}

- (id)categoryForOther
{
  v2 = [(HMDHAPMetadata *)self hmAccessoryCategories];
  v3 = [v2 objectForKeyedSubscript:&unk_283E71C30];

  return v3;
}

- (BOOL)shouldRefreshValueForCharacteristicWithType:(id)a3 serviceType:(id)a4
{
  v5 = shouldRefreshValueForCharacteristicWithType_serviceType__onceToken;
  v6 = a4;
  v7 = a3;
  if (v5 != -1)
  {
    dispatch_once(&shouldRefreshValueForCharacteristicWithType_serviceType__onceToken, &__block_literal_global_229_26357);
  }

  v8 = [shouldRefreshValueForCharacteristicWithType_serviceType__refreshCharacteristicMapping hmf_arrayForKey:v6];

  v9 = [v8 containsObject:v7];
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

- (BOOL)shouldFilterEnableNotificationsForCharacteristicType:(id)a3 serviceType:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (shouldFilterEnableNotificationsForCharacteristicType_serviceType__onceToken != -1)
  {
    dispatch_once(&shouldFilterEnableNotificationsForCharacteristicType_serviceType__onceToken, &__block_literal_global_227);
  }

  if ([shouldFilterEnableNotificationsForCharacteristicType_serviceType__servicesToFilterEnableNotifications containsObject:v7])
  {
    v8 = 1;
  }

  else
  {
    v9 = [(HMDHAPMetadata *)self hmBlacklistedServices];
    if ([v9 containsObject:v7])
    {
      v8 = 1;
    }

    else
    {
      v10 = [(HMDHAPMetadata *)self hmBlacklistedCharacteristics];
      if ([v10 containsObject:v6])
      {
        v8 = 1;
      }

      else
      {
        v8 = [shouldFilterEnableNotificationsForCharacteristicType_serviceType__characteristicsToFilterEnableNotifications containsObject:v6];
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

- (BOOL)shouldFilterChangeNotificationsForCharacteristicType:(id)a3 serviceType:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (shouldFilterChangeNotificationsForCharacteristicType_serviceType__onceToken != -1)
  {
    dispatch_once(&shouldFilterChangeNotificationsForCharacteristicType_serviceType__onceToken, &__block_literal_global_225);
  }

  if ([shouldFilterChangeNotificationsForCharacteristicType_serviceType__servicesToFilterChangeNotifications containsObject:v7])
  {
    v8 = 1;
  }

  else
  {
    v9 = [(HMDHAPMetadata *)self hmBlacklistedServices];
    if ([v9 containsObject:v7])
    {
      v8 = 1;
    }

    else
    {
      v10 = [(HMDHAPMetadata *)self hmBlacklistedCharacteristics];
      if ([v10 containsObject:v6])
      {
        v8 = 1;
      }

      else
      {
        v8 = [shouldFilterChangeNotificationsForCharacteristicType_serviceType__characteristicsToFilterChangeNotifications containsObject:v6];
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

- (BOOL)shouldHomeAppShowTileForServiceType:(id)a3
{
  v3 = shouldHomeAppShowTileForServiceType__onceToken;
  v4 = a3;
  if (v3 != -1)
  {
    dispatch_once(&shouldHomeAppShowTileForServiceType__onceToken, &__block_literal_global_223);
  }

  v5 = [shouldHomeAppShowTileForServiceType__servicesShowTilesInHomeApp containsObject:v4];

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

- (BOOL)shouldEnableHomeNotificationForCharacteristicType:(id)a3 serviceType:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (shouldEnableHomeNotificationForCharacteristicType_serviceType__onceToken != -1)
  {
    dispatch_once(&shouldEnableHomeNotificationForCharacteristicType_serviceType__onceToken, &__block_literal_global_221);
  }

  v8 = [shouldEnableHomeNotificationForCharacteristicType_serviceType__homedInternalHomeNotifications hmf_arrayForKey:v7];
  v9 = [v8 containsObject:v6];

  if (v9)
  {
    LOBYTE(v10) = 1;
  }

  else
  {
    v11 = [(HMDHAPMetadata *)self hapMetadata];
    if ([v11 isStandardHAPService:v7])
    {
      v12 = [(HMDHAPMetadata *)self hapMetadata];
      if (![v12 isStandardHAPCharacteristic:v6] || (objc_msgSend(shouldEnableHomeNotificationForCharacteristicType_serviceType__serviceTypesNotAllowingHomeNotifications, "containsObject:", v7) & 1) != 0 || (objc_msgSend(shouldEnableHomeNotificationForCharacteristicType_serviceType__characteristicTypesNotAllowingHomeNotifications, "containsObject:", v6) & 1) != 0 || -[HMDHAPMetadata shouldFilterServiceOfTypeFromApp:](self, "shouldFilterServiceOfTypeFromApp:", v7))
      {
        LOBYTE(v10) = 0;
      }

      else
      {
        v10 = ![(HMDHAPMetadata *)self shouldFilterCharacteristicOfTypeFromApp:v6];
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

- (BOOL)shouldAutoEnableNotificationForCharacteristic:(id)a3 ofService:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (shouldAutoEnableNotificationForCharacteristic_ofService__onceToken != -1)
  {
    dispatch_once(&shouldAutoEnableNotificationForCharacteristic_ofService__onceToken, &__block_literal_global_219);
  }

  if (isCharacteristicHeartBeat(v7, v6) && (isiOSDevice() || isWatch() || isMac() || ([MEMORY[0x277D0F8E8] productInfo], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "productPlatform"), v8, v9 == 5)))
  {
    v10 = objc_autoreleasePoolPush();
    v11 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v13 = HMFGetLogIdentifier();
      v19 = 138543362;
      v20 = v13;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_DEBUG, "%{public}@Forcing shouldAutoEnableNotification to NO for Heart Beat characteristic", &v19, 0xCu);
    }

    objc_autoreleasePoolPop(v10);
    v14 = 0;
  }

  else
  {
    v15 = [(HMDHAPMetadata *)self hmNotificationAutoEnabledTuples];
    if ([(HMDHAPMetadata *)self checkTupleExistsInSet:v15 forChrType:v6 svcType:v7])
    {
      v14 = 1;
    }

    else
    {
      v16 = [shouldAutoEnableNotificationForCharacteristic_ofService__autoEnableNotifications hmf_arrayForKey:v7];
      v14 = [v16 containsObject:v6];
    }
  }

  v17 = *MEMORY[0x277D85DE8];
  return v14;
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

- (BOOL)isSecondsDownCounterCharacteristicType:(id)a3
{
  v3 = isSecondsDownCounterCharacteristicType__onceToken;
  v4 = a3;
  if (v3 != -1)
  {
    dispatch_once(&isSecondsDownCounterCharacteristicType__onceToken, &__block_literal_global_217);
  }

  v5 = [isSecondsDownCounterCharacteristicType__secondsDownCounterCharacteristicTypes containsObject:v4];

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

- (BOOL)generateNotificationOnConfigurationForCharacteristicType:(id)a3 serviceType:(id)a4
{
  v5 = generateNotificationOnConfigurationForCharacteristicType_serviceType__onceToken;
  v6 = a4;
  v7 = a3;
  if (v5 != -1)
  {
    dispatch_once(&generateNotificationOnConfigurationForCharacteristicType_serviceType__onceToken, &__block_literal_global_215);
  }

  v8 = [generateNotificationOnConfigurationForCharacteristicType_serviceType__generateNotificationMapping hmf_arrayForKey:v7];

  v9 = [v8 containsObject:v6];
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

- (BOOL)shouldNotCacheCharacteristicOfType:(id)a3
{
  v3 = shouldNotCacheCharacteristicOfType__onceToken;
  v4 = a3;
  if (v3 != -1)
  {
    dispatch_once(&shouldNotCacheCharacteristicOfType__onceToken, &__block_literal_global_213);
  }

  v5 = [shouldNotCacheCharacteristicOfType__noCacheCharacteristicTypes containsObject:v4];

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

- (BOOL)shouldFilterCharacteristicOfTypeFromApp:(id)a3
{
  v4 = a3;
  v5 = [(HMDHAPMetadata *)self hmBlacklistedCharacteristicsFromApp];
  v6 = [v5 containsObject:v4];

  return v6;
}

- (BOOL)shouldFilterServiceOfTypeFromApp:(id)a3
{
  v4 = a3;
  v5 = [(HMDHAPMetadata *)self hmBlacklistedServicesFromApp];
  v6 = [v5 containsObject:v4];

  return v6;
}

- (BOOL)shouldFilterCharacteristicOfType:(id)a3
{
  v4 = a3;
  if (shouldFilterCharacteristicOfType__pred != -1)
  {
    dispatch_once(&shouldFilterCharacteristicOfType__pred, &__block_literal_global_211);
  }

  if ([shouldFilterCharacteristicOfType___allowedCharacteristics containsObject:v4])
  {
    v5 = 0;
  }

  else
  {
    v6 = [(HMDHAPMetadata *)self hmBlacklistedCharacteristics];
    v5 = [v6 containsObject:v4];
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

- (BOOL)shouldFilterServiceOfType:(id)a3
{
  v4 = a3;
  if (shouldFilterServiceOfType__pred != -1)
  {
    dispatch_once(&shouldFilterServiceOfType__pred, &__block_literal_global_209);
  }

  if ([shouldFilterServiceOfType___allowedServices containsObject:v4])
  {
    v5 = 0;
  }

  else
  {
    v6 = [(HMDHAPMetadata *)self hmBlacklistedServices];
    v5 = [v6 containsObject:v4];
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

- (BOOL)shouldCoalesceCharacteristicNotifications:(id)a3 forService:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(HMDHAPMetadata *)self hmCoalesceNotificationsTuples];
  LOBYTE(self) = [(HMDHAPMetadata *)self checkTupleExistsInSet:v8 forChrType:v7 svcType:v6];

  return self;
}

- (BOOL)isTargetCharacteristic:(id)a3
{
  v3 = isTargetCharacteristic__onceToken;
  v4 = a3;
  if (v3 != -1)
  {
    dispatch_once(&isTargetCharacteristic__onceToken, &__block_literal_global_168_26360);
  }

  v5 = [isTargetCharacteristic__targetCharacteristic containsObject:v4];

  return v5;
}

void __41__HMDHAPMetadata_isTargetCharacteristic___block_invoke()
{
  v0 = isTargetCharacteristic__targetCharacteristic;
  isTargetCharacteristic__targetCharacteristic = &unk_283E755F0;
}

- (BOOL)requiresTimedWrite:(id)a3 forService:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (requiresTimedWrite_forService__onceToken != -1)
  {
    dispatch_once(&requiresTimedWrite_forService__onceToken, &__block_literal_global_165_26404);
  }

  v8 = -[HMDHAPMetadata requiresDeviceUnlock:forService:](self, "requiresDeviceUnlock:forService:", v6, v7) || v6 && ([requiresTimedWrite_forService__timedWriteRequiringCharacteristic containsObject:v6] & 1) != 0;

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

- (BOOL)requiresDeviceUnlock:(id)a3 forService:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(HMDHAPMetadata *)self hmRequiresDeviceUnlockTuples];
  LOBYTE(self) = [(HMDHAPMetadata *)self checkTupleExistsInSet:v8 forChrType:v7 svcType:v6];

  return self;
}

- (BOOL)shouldAllowToWakeSuspendedAccessoryForOperation:(int64_t)a3 service:(id)a4 characteristicType:(id)a5 value:(id)a6
{
  v71 = *MEMORY[0x277D85DE8];
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = objc_autoreleasePoolPush();
  v14 = self;
  v15 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    v16 = HMFGetLogIdentifier();
    if (a3 > 0xA)
    {
      v17 = @"Undefined";
    }

    else
    {
      v17 = off_278676908[a3];
    }

    v18 = v17;
    *buf = 138544386;
    v62 = v16;
    v63 = 2112;
    v64 = v18;
    v65 = 2112;
    v66 = v10;
    v67 = 2112;
    v68 = v11;
    v69 = 2112;
    v70 = v12;
    _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_DEBUG, "%{public}@Checking if operation: '%@' is allowed to wake accessory for service: '%@' characteristic: '%@' with value '%@'", buf, 0x34u);
  }

  objc_autoreleasePoolPop(v13);
  v19 = [(HMDHAPMetadata *)v14 hmWakeOnOperationsFilter];
  v20 = [v19 hmf_dictionaryForKey:v11];

  if (v20)
  {
    v21 = [v20 hmf_dictionaryForKey:v10];
    v22 = v21;
    if (v21)
    {
      v23 = [v21 hmf_arrayForKey:*MEMORY[0x277CFEE00]];
      if (a3 > 0xA)
      {
        v24 = @"Undefined";
      }

      else
      {
        v24 = off_278676908[a3];
      }

      v26 = v24;
      v27 = [v23 containsObject:v26];

      if (v27)
      {
        if (a3 == 3)
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

                  if (v12 && [*(*(&v56 + 1) + 8 * i) isEqual:v12])
                  {
                    v45 = objc_autoreleasePoolPush();
                    v46 = v14;
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
                      v66 = v10;
                      v67 = 2112;
                      v68 = v11;
                      v69 = 2112;
                      v70 = v12;
                      _os_log_impl(&dword_229538000, v47, OS_LOG_TYPE_DEBUG, "%{public}@Operation: %@ on service '%@' and characteristic '%@' with value '%@' is allowed to wake accessory", buf, 0x34u);

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
            v36 = v14;
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
              v66 = v10;
              v67 = 2112;
              v68 = v11;
              _os_log_impl(&dword_229538000, v37, OS_LOG_TYPE_DEBUG, "%{public}@Operation: %@ on service '%@' and characteristic '%@' is not allowed to wake accessory", buf, 0x2Au);
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
            v41 = v14;
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
              v66 = v10;
              v67 = 2112;
              v68 = v11;
              _os_log_impl(&dword_229538000, v42, OS_LOG_TYPE_DEBUG, "%{public}@Operation: %@ on service '%@' and characteristic '%@' is allowed to wake accessory", buf, 0x2Au);

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

- (BOOL)allowsSecuringWriteFor:(id)a3 withValue:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(HMDHAPMetadata *)self hmAllowableSecuringWrites];
  v9 = [v8 objectForKey:v7];

  if (v9)
  {
    v10 = [v9 containsObject:v6];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)descriptionForCharacteristicType:(id)a3
{
  v4 = a3;
  v5 = [(HMDHAPMetadata *)self hapMetadata];
  v6 = [v5 descriptionFromCharacteristicType:v4];

  return v6;
}

- (id)descriptionForServiceType:(id)a3
{
  v4 = a3;
  v5 = [(HMDHAPMetadata *)self hapMetadata];
  v6 = [v5 descriptionFromServiceType:v4];

  return v6;
}

- (id)validateAssociatedServiceType:(id)a3 forService:(id)a4
{
  v44 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (![v6 length])
  {
    v19 = 0;
    goto LABEL_14;
  }

  v8 = [(HMDHAPMetadata *)self hapMetadata];
  if (([v8 isStandardHAPService:v7] & 1) == 0)
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
      v41 = v7;
      v42 = 2112;
      v43 = v6;
      v18 = "%{public}@Unknown service types %@ %@";
      v20 = v16;
      v21 = 32;
LABEL_12:
      _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_ERROR, v18, &v38, v21);

      goto LABEL_13;
    }

    goto LABEL_13;
  }

  v9 = [(HMDHAPMetadata *)self hapMetadata];
  v10 = [v9 isStandardHAPService:v6];

  if ((v10 & 1) == 0)
  {
    goto LABEL_10;
  }

  v11 = [(HMDHAPMetadata *)self hapMetadata];
  v12 = [v11 allowAssociatedService:v7];

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
    v41 = v7;
    v18 = "%{public}@Service %@ does not other services to be associated";
    goto LABEL_19;
  }

  v13 = [(HMDHAPMetadata *)self hapMetadata];
  v14 = [v13 allowAssociatedService:v6];

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
      v41 = v6;
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
  v25 = [(HMDHAPMetadata *)self hapMetadata];
  if (([v25 isMandatoryCharacteristic:v24 forService:v7] & 1) == 0)
  {

LABEL_24:
    v28 = *MEMORY[0x277CFE5D8];
    v29 = *MEMORY[0x277CFE5E8];
    v30 = *MEMORY[0x277CFE610];
    v31 = [(HMDHAPMetadata *)self hapMetadata];
    if ([v31 isMandatoryCharacteristic:v28 forService:v7])
    {
      v32 = [(HMDHAPMetadata *)self hapMetadata];
      if ([v32 isMandatoryCharacteristic:v29 forService:v6])
      {

LABEL_32:
        v19 = 0;
LABEL_33:

        goto LABEL_34;
      }

      v36 = [(HMDHAPMetadata *)self hapMetadata];
      v37 = [v36 isMandatoryCharacteristic:v30 forService:v6];

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
      v41 = v7;
      v42 = 2112;
      v43 = v6;
      _os_log_impl(&dword_229538000, v34, OS_LOG_TYPE_ERROR, "%{public}@Service %@ or service being associated %@ are not compatible", &v38, 0x20u);
    }

    objc_autoreleasePoolPop(v33);
    v19 = [MEMORY[0x277CCA9B8] hmErrorWithCode:62];
    goto LABEL_33;
  }

  v26 = [(HMDHAPMetadata *)self hapMetadata];
  v27 = [v26 isMandatoryCharacteristic:v24 forService:v6];

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

- (BOOL)supportsAuthorizationData:(id)a3 forService:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(HMDHAPMetadata *)self hapMetadata];
  v9 = [v8 supportsAdditionalAuthorizationData:v7 forService:v6];

  return v9;
}

- (BOOL)isStandardServiceType:(id)a3
{
  v4 = a3;
  v5 = [(HMDHAPMetadata *)self hapMetadata];
  v6 = [v5 isStandardHAPService:v4];

  return v6;
}

- (BOOL)isStandardCharacteristicType:(id)a3
{
  v4 = a3;
  v5 = [(HMDHAPMetadata *)self hapMetadata];
  v6 = [v5 isStandardHAPCharacteristic:v4];

  return v6;
}

- (id)serviceTypeFromName:(id)a3
{
  v4 = a3;
  v5 = [(HMDHAPMetadata *)self hapMetadata];
  v6 = [v5 serviceTypeFromUTI:v4];

  return v6;
}

- (id)serviceNameFromType:(id)a3
{
  v4 = a3;
  v5 = [(HMDHAPMetadata *)self hapMetadata];
  v6 = [v5 serviceUTIFromType:v4];

  return v6;
}

- (id)characteristicTypeFromName:(id)a3
{
  v4 = a3;
  v5 = [(HMDHAPMetadata *)self hapMetadata];
  v6 = [v5 characteristicTypeFromUTI:v4];

  return v6;
}

- (id)characteristicNameFromType:(id)a3
{
  v4 = a3;
  v5 = [(HMDHAPMetadata *)self hapMetadata];
  v6 = [v5 characteristicUTIFromType:v4];

  return v6;
}

- (id)xpcData:(BOOL)a3
{
  if (a3)
  {
    v4 = [(HMDHAPMetadata *)self hmAccessoryCategories];
    v5 = [v4 allValues];
  }

  else
  {
    v5 = 0;
  }

  v6 = MEMORY[0x277CD1A50];
  v7 = [(HMDHAPMetadata *)self version];
  v8 = [(HMDHAPMetadata *)self hapMetadata];
  v9 = [v8 hapCharacteristics];
  v10 = [(HMDHAPMetadata *)self hapMetadata];
  v11 = [v10 hapServices];
  v12 = [v6 encodeProtobufWithVersion:v7 characteristics:v9 services:v11 categories:v5];

  return v12;
}

- (HMDHAPMetadata)initWithFullPlist:(id)a3 hapMetadata:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = v7;
    if (v7)
    {
      v9 = [(HMDHAPMetadata *)self initWithFullPlist:v6 hapMetadata:v7 error:0];

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

- (HMDHAPMetadata)initWithDictionary:(id)a3 hapMetadata:(id)a4 error:(id *)a5
{
  v6 = 0;
  if (a3 && a4)
  {
    v9 = MEMORY[0x277CBEB38];
    v10 = a4;
    v11 = [v9 dictionaryWithDictionary:a3];
    v12 = [v10 rawPlist];
    [v11 setObject:v12 forKeyedSubscript:*MEMORY[0x277CFED08]];

    v13 = [(HMDHAPMetadata *)self initWithFullPlist:v11 hapMetadata:v10 error:a5];
    self = v13;

    v6 = self;
  }

  return v6;
}

- (HMDHAPMetadata)initWithFullPlist:(id)a3 hapMetadata:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v21.receiver = self;
  v21.super_class = HMDHAPMetadata;
  v10 = [(HMDHAPMetadata *)&v21 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_hapMetadata, a4);
    v12 = [v9 version];
    version = v11->_version;
    v11->_version = v12;

    v14 = [v9 schemaVersion];
    schemaVersion = v11->_schemaVersion;
    v11->_schemaVersion = v14;

    v16 = [v8 copy];
    rawPlist = v11->_rawPlist;
    v11->_rawPlist = v16;

    v18 = v11->_rawPlist;
    if (a5)
    {
      *a5 = [(HMDHAPMetadata *)v11 parseAndSetRawPlist:v18];
    }

    else
    {
      v19 = [(HMDHAPMetadata *)v11 parseAndSetRawPlist:v18];
    }
  }

  return v11;
}

+ (BOOL)isHomedVersionSupported:(id)a3
{
  v3 = MEMORY[0x277D0F940];
  v4 = a3;
  v5 = [v3 alloc];
  v6 = [v4 stringValue];

  v7 = [v5 initWithString:v6];
  v8 = +[HMDHomeKitVersion version4];
  LOBYTE(v6) = [v7 isAtLeastVersion:v8];

  return v6;
}

+ (void)prepareMetadata
{
  v58 = *MEMORY[0x277D85DE8];
  [MEMORY[0x277CFEBA0] setCurrentMetadataHook:&__block_literal_global_159];
  v3 = +[HMDHAPMetadata getBuiltinInstance];
  v4 = [v3 version];
  v5 = [v4 unsignedIntegerValue];

  if (v5 - 881 <= 2)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      *buf = 138543618;
      v51 = v8;
      v52 = 2048;
      v53 = v5;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_ERROR, "%{public}@Invalid builtin metadata version %lu", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
  }

  v9 = +[HMDPersistentStore loadPlainMetadataDictionary];
  v10 = *MEMORY[0x277CFEDF0];
  v11 = [v9 objectForKeyedSubscript:*MEMORY[0x277CFEDF0]];
  v12 = [v11 unsignedIntegerValue];

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
  v48 = v12;
  v49 = a1;
  v18 = *MEMORY[0x277CFEDA0];
  v19 = [v9 objectForKeyedSubscript:*MEMORY[0x277CFEDA0]];
  if (!v19)
  {
LABEL_18:

    a1 = v49;
LABEL_19:

    goto LABEL_20;
  }

  v20 = v19;
  v21 = [v9 objectForKeyedSubscript:v10];
  if ([v21 unsignedIntegerValue] <= v5)
  {

    goto LABEL_18;
  }

  v47 = v18;
  v22 = [v9 objectForKeyedSubscript:v15];
  v23 = [v22 unsignedIntegerValue];

  a1 = v49;
  if (v23 == 1)
  {
    v24 = v47;
    if (isInternalBuild() && v5 == 880 && (v48 - 881) <= 1)
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
        v31 = [v30 unsignedIntegerValue];
        v32 = [v26 objectForKeyedSubscript:v47];
        v33 = [v32 objectForKeyedSubscript:v10];
        v34 = [v33 unsignedIntegerValue];
        *buf = 138544130;
        v51 = v29;
        v52 = 2048;
        v53 = v31;
        v54 = 2048;
        v55 = v34;
        v56 = 2048;
        v57 = v48;
        _os_log_impl(&dword_229538000, v28, OS_LOG_TYPE_INFO, "%{public}@Metadata fix - Constructing version 883 metadata from current builtin version %lu, current builtin plist version %lu, archived version %lu", buf, 0x2Au);

        a1 = v49;
        v24 = v47;
      }

      objc_autoreleasePoolPop(v27);
      [v26 setObject:&unk_283E71C18 forKeyedSubscript:v10];
      v35 = [v26 objectForKeyedSubscript:v24];
      [v35 setObject:&unk_283E71C18 forKeyedSubscript:v10];

      [a1 updateLocalMetadataWithMetadata:v26];
    }

    [a1 _logCurrentMetadata];
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
    _os_log_impl(&dword_229538000, v37, OS_LOG_TYPE_INFO, "%{public}@Cached metadata is not newer than the built-in one, prefer built-in metadata.", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v36);
  v39 = [v9 objectForKeyedSubscript:v10];
  v40 = [v39 unsignedIntegerValue];
  v41 = [0 version];
  v42 = [v41 unsignedIntegerValue];

  if (v40 < v42)
  {
    v43 = objc_autoreleasePoolPush();
    v44 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
    {
      v45 = HMFGetLogIdentifier();
      *buf = 138543362;
      v51 = v45;
      _os_log_impl(&dword_229538000, v44, OS_LOG_TYPE_INFO, "%{public}@Built-in metadata is newer than the cached one, uploading to the cloud when homed is ready with at least one home or the first home being added.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v43);
    _shouldUploadToCloudAfterHomedReady = 1;
  }

  [a1 updateLocalMetadataWithBuiltinMetadata];
LABEL_27:

  v46 = *MEMORY[0x277D85DE8];
}

id __33__HMDHAPMetadata_prepareMetadata__block_invoke()
{
  v0 = +[HMDHAPMetadata getSharedInstance];
  v1 = [v0 hapMetadata];

  return v1;
}

+ (BOOL)isAdminPrivilegeRequiredForWritingCharacteristicType:(id)a3 serviceType:(id)a4
{
  v4 = a4;
  if ([v4 isEqualToString:*MEMORY[0x277CD0DF8]])
  {
    v5 = 1;
  }

  else
  {
    v5 = [v4 isEqualToString:*MEMORY[0x277CD0E08]];
  }

  return v5;
}

+ (BOOL)isOwnerPrivilegeRequiredForWritingCharacteristicType:(id)a3 serviceType:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = ([v5 isEqualToString:@"00000264-0000-1000-8000-0026BB765291"] & 1) != 0 || (objc_msgSend(v5, "isEqualToString:", @"00000262-0000-1000-8000-0026BB765291") & 1) != 0 || objc_msgSend(v6, "isEqualToString:", *MEMORY[0x277CD0E08]) && !objc_msgSend(v5, "isEqualToString:", *MEMORY[0x277CCFA00]);

  return v7;
}

+ (id)dataFromMetadataDictionaryWithKey:(id)a3
{
  v3 = a3;
  v4 = +[HMDPersistentStore loadPlainMetadataDictionary];
  v5 = [v4 hmf_dataForKey:v3];
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v7 = +[HMDPersistentStore loadBuiltinPlainMetadataDictionary];

    v6 = [v7 hmf_dataForKey:v3];
    v4 = v7;
  }

  return v6;
}

+ (BOOL)isServiceType:(id)a3 compatibleWithAccessoryCategoryType:(id)a4
{
  v5 = isServiceType_compatibleWithAccessoryCategoryType__onceToken;
  v6 = a4;
  v7 = a3;
  if (v5 != -1)
  {
    dispatch_once(&isServiceType_compatibleWithAccessoryCategoryType__onceToken, &__block_literal_global_147_26443);
  }

  v8 = [isServiceType_compatibleWithAccessoryCategoryType__accessoryCategoryToServiceTypesMap objectForKeyedSubscript:v6];

  v9 = [v8 containsObject:v7];
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

+ (void)updateLocalMetadataWithMetadata:(id)a3
{
  v5 = a3;
  if ([HMDPersistentStore archiveMetadata:?])
  {
    os_unfair_lock_lock_with_options();
    v4 = [a1 metadataCache];
    [v4 setObject:0 forKeyedSubscript:@"current"];

    os_unfair_lock_unlock(&_lock);
  }

  [a1 _logCurrentMetadata];
}

+ (void)updateLocalMetadataWithBuiltinMetadata
{
  v3 = +[HMDPersistentStore loadBuiltinPlainMetadataDictionary];
  v4 = [HMDPersistentStore archiveMetadata:v3];

  if (v4)
  {
    os_unfair_lock_lock_with_options();
    v5 = [a1 metadataCache];
    [v5 setObject:0 forKeyedSubscript:@"builtin"];

    v6 = [a1 metadataCache];
    [v6 setObject:0 forKeyedSubscript:@"current"];

    os_unfair_lock_unlock(&_lock);
  }

  [a1 _logCurrentMetadata];
}

+ (void)_logCurrentMetadata
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = [a1 getSharedInstance];
  v3 = objc_autoreleasePoolPush();
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = [v2 version];
    v7 = [v2 schemaVersion];
    v9 = 138543874;
    v10 = v5;
    v11 = 2112;
    v12 = v6;
    v13 = 2112;
    v14 = v7;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Switching to HMDHAPMetadata version %@ schemaVersion %@", &v9, 0x20u);
  }

  objc_autoreleasePoolPop(v3);
  v8 = *MEMORY[0x277D85DE8];
}

+ (id)getSharedInstance
{
  os_unfair_lock_lock_with_options();
  v3 = [a1 metadataCache];
  v4 = [a1 getSharedInstanceWithLockedCache:v3];

  os_unfair_lock_unlock(&_lock);

  return v4;
}

+ (id)getSharedInstanceWithLockedCache:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (os_unfair_lock_trylock(&_lock))
  {
    v4 = objc_autoreleasePoolPush();
    v5 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = HMFGetLogIdentifier();
      *buf = 138543362;
      v26 = v6;
      _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_ERROR, "%{public}@HMDHAPMetadata::getSharedInstanceWithLockedCache called without holding the lock!", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    v7 = 0;
  }

  else
  {
    v8 = [v3 objectForKeyedSubscript:@"current"];
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
            _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_ERROR, "%{public}@Failed to instantiate the current metadata %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v12);
          v7 = 0;
        }

        else
        {
          if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
          {
            v15 = HMFGetLogIdentifier();
            v16 = [v9 version];
            v17 = [v9 schemaVersion];
            *buf = 138543874;
            v26 = v15;
            v27 = 2112;
            v28 = v16;
            v29 = 2112;
            v30 = v17;
            _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, "%{public}@Current HMDHAPMetadata version %@ schemaVersion %@", buf, 0x20u);
          }

          objc_autoreleasePoolPop(v12);
          [v3 setObject:v9 forKeyedSubscript:@"current"];
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
          _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_ERROR, "%{public}@Failed to get plain metadata path", buf, 0xCu);
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
  v3 = [a1 metadataCache];
  v4 = [v3 objectForKeyedSubscript:@"builtin"];
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
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_ERROR, "%{public}@Failed to instantiate builtin HAP metadata %@", buf, 0x16u);
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
      v11 = [a1 getSharedInstanceWithLockedCache:v3];
      if (([v11 incomplete] & 1) != 0 || -[HMDHAPMetadata incomplete](v5, "incomplete"))
      {
        goto LABEL_20;
      }

      v12 = [v11 version];
      v13 = [(HMDHAPMetadata *)v5 version];
      v14 = v13;
      if (v12 == v13)
      {
        v21 = [v11 schemaVersion];
        v22 = [(HMDHAPMetadata *)v5 schemaVersion];
        v23 = v21 == v22;

        if (!v23)
        {
          goto LABEL_20;
        }

        v12 = v5;
        v5 = v11;
      }

      else
      {
      }

LABEL_20:
      [v3 setObject:v5 forKeyedSubscript:@"builtin"];
      v24 = objc_autoreleasePoolPush();
      v25 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        v26 = HMFGetLogIdentifier();
        v27 = [v9 version];
        v28 = [v9 schemaVersion];
        *buf = 138543874;
        v39 = v26;
        v40 = 2112;
        v41 = v27;
        v42 = 2112;
        v43 = v28;
        _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_INFO, "%{public}@Builtin HAPMetadata version %@ schemaVersion %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v24);
      v29 = objc_autoreleasePoolPush();
      v30 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        v31 = HMFGetLogIdentifier();
        v32 = [(HMDHAPMetadata *)v5 version];
        v33 = [(HMDHAPMetadata *)v5 schemaVersion];
        *buf = 138543874;
        v39 = v31;
        v40 = 2112;
        v41 = v32;
        v42 = 2112;
        v43 = v33;
        _os_log_impl(&dword_229538000, v30, OS_LOG_TYPE_INFO, "%{public}@Builtin HMDHAPMetadata version %@ schemaVersion %@", buf, 0x20u);
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
      _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_ERROR, "%{public}@Failed to instantiate builtin metadata %@", buf, 0x16u);
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
    dispatch_once(&metadataCache_onceToken, &__block_literal_global_26460);
  }

  v3 = metadataCache_cache;

  return v3;
}

void __31__HMDHAPMetadata_metadataCache__block_invoke()
{
  v0 = [MEMORY[0x277CBEB38] dictionary];
  v1 = metadataCache_cache;
  metadataCache_cache = v0;
}

+ (HMDHAPMetadata)metadataWithDictionary:(id)a3 error:(id *)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v16 = 0;
  v6 = [objc_alloc(MEMORY[0x277CFEBA0]) initWithDictionary:v5 error:&v16];
  v7 = v16;
  v8 = v7;
  if (a4)
  {
    v9 = v7;
    *a4 = v8;
  }

  if (v6)
  {
    v10 = [[HMDHAPMetadata alloc] initWithDictionary:v5 hapMetadata:v6 error:a4];
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
      v20 = v5;
      v21 = 2112;
      v22 = v8;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@Failed to parse HAP metadata from %@ - error %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v11);
    v10 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];

  return v10;
}

+ (HMDHAPMetadata)metadataWithPath:(id)a3 error:(id *)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [MEMORY[0x277CBEBC0] fileURLWithPath:v6];
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfURL:v7 error:a4];
  v9 = v8;
  if (v8)
  {
    v10 = *MEMORY[0x277CFEDA0];
    v11 = [v8 hmf_dictionaryForKey:*MEMORY[0x277CFEDA0]];
    if (v11)
    {
      v12 = [HMDHAPMetadata metadataWithDictionary:v11 error:a4];
    }

    else
    {
      v13 = objc_autoreleasePoolPush();
      v14 = a1;
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = HMFGetLogIdentifier();
        v19 = 138543618;
        v20 = v16;
        v21 = 2112;
        v22 = v10;
        _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_ERROR, "%{public}@Could not find metadata for key: %@", &v19, 0x16u);
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