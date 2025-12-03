@interface HMDHAPAccessoryTransaction
+ (id)cd_getMKFHAPAccessoryFromAccessory:(id)accessory;
+ (id)cd_getMKFHAPAccessoryFromAccessoryUUID:(id)d;
+ (id)cd_getMKFServiceFromAccessoryUUID:(id)d serviceInstanceId:(id)id;
+ (id)properties;
- (NSSet)chipPairings;
- (id)cd_generateValueForModelObjectFromManagedObject:(id)object modelObjectField:(id)field modelFieldInfo:(id)info;
- (id)cd_generateValueForProperty:(id)property managedObjectField:(id)field context:(id)context;
- (id)dependentUUIDs;
- (void)setChipPairings:(id)pairings;
@end

@implementation HMDHAPAccessoryTransaction

+ (id)properties
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__HMDHAPAccessoryTransaction_properties__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (properties_onceToken_162955 != -1)
  {
    dispatch_once(&properties_onceToken_162955, block);
  }

  v2 = properties__properties_162956;

  return v2;
}

void __40__HMDHAPAccessoryTransaction_properties__block_invoke(uint64_t a1)
{
  v102[89] = *MEMORY[0x277D85DE8];
  v1 = MEMORY[0x277CBEB38];
  v99.receiver = *(a1 + 32);
  v99.super_class = &OBJC_METACLASS___HMDHAPAccessoryTransaction;
  v2 = objc_msgSendSuper2(&v99, sel_properties);
  v3 = [v1 dictionaryWithDictionary:v2];
  v4 = properties__properties_162956;
  properties__properties_162956 = v3;

  v80 = properties__properties_162956;
  v101[0] = @"uniqueIdentifier";
  v98 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v102[0] = v98;
  v101[1] = @"bridgeUUID";
  v97 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v102[1] = v97;
  v101[2] = @"paired";
  v96 = +[HMDBackingStoreModelObjectStorageInfo deprecatedField];
  v102[2] = v96;
  v101[3] = @"accessoryFlags";
  v95 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v102[3] = v95;
  v101[4] = @"certificationStatus";
  v94 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v102[4] = v94;
  v101[5] = @"pairingUsername";
  v93 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v102[5] = v93;
  v101[6] = @"publicKey";
  v92 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v102[6] = v92;
  v101[7] = @"transportInformation";
  v91 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v102[7] = v91;
  v101[8] = @"communicationProtocol";
  v90 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v102[8] = v90;
  v101[9] = @"accessorySetupHash";
  v89 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v102[9] = v89;
  v101[10] = @"broadcastKey";
  v88 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v102[10] = v88;
  v101[11] = @"keyUpdatedStateNumber";
  v87 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v102[11] = v87;
  v101[12] = @"keyUpdatedTime";
  v86 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v102[12] = v86;
  v101[13] = @"targetUUIDs";
  v85 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v102[13] = v85;
  v101[14] = @"hardwareSupport";
  v84 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v102[14] = v84;
  v101[15] = @"connectivityInfo";
  v83 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v102[15] = v83;
  v101[16] = @"wiFiTransportCapabilities";
  v82 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v102[16] = v82;
  v101[17] = @"sleepInterval";
  v81 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v102[17] = v81;
  v101[18] = @"hasOnboardedForNaturalLighting";
  v79 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v102[18] = v79;
  v101[19] = @"initialServiceTypeUUIDs";
  v5 = objc_opt_class();
  v100 = objc_opt_class();
  v78 = [MEMORY[0x277CBEA60] arrayWithObjects:&v100 count:1];
  v77 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:v5 additionalDecodeClasses:v78];
  v102[19] = v77;
  v101[20] = @"needsOnboarding";
  v76 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v102[20] = v76;
  v101[21] = @"suspendedState";
  v75 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v102[21] = v75;
  v101[22] = @"preferredMediaUserUUID";
  v74 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v102[22] = v74;
  v101[23] = @"preferredUserSelectionType";
  v73 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v102[23] = v73;
  v101[24] = @"soundAlertEnabled";
  v72 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v102[24] = v72;
  v101[25] = @"lightWhenUsingSiriEnabled";
  v71 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v102[25] = v71;
  v101[26] = @"siriEnabled";
  v70 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v102[26] = v70;
  v101[27] = @"siriLanguageCode";
  v69 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v102[27] = v69;
  v101[28] = @"siriLanguageVoiceCode";
  v68 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v102[28] = v68;
  v101[29] = @"siriLanguageVoiceGenderCode";
  v67 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v102[29] = v67;
  v101[30] = @"siriLanguageVoiceName";
  v66 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v102[30] = v66;
  v101[31] = @"hasDismissedHomePodHasNonMemberMediaAccountWarning";
  v65 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v102[31] = v65;
  v101[32] = @"doorbellChimeEnabled";
  v64 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v102[32] = v64;
  v101[33] = @"announceEnabled";
  v63 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v102[33] = v63;
  v101[34] = @"visionDoubleTapSettingsTimeoutInterval";
  v62 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v102[34] = v62;
  v101[35] = @"visionVoiceOverEnabled";
  v61 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v102[35] = v61;
  v101[36] = @"visionVoiceOverAudioDuckingEnabled";
  v60 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v102[36] = v60;
  v101[37] = @"visionSpeakingRate";
  v59 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v102[37] = v59;
  v101[38] = @"interactionHoldDurationEnabled";
  v58 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v102[38] = v58;
  v101[39] = @"interactionHoldDurationSeconds";
  v57 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v102[39] = v57;
  v101[40] = @"interactionTouchAccommodationsEnabled";
  v56 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v102[40] = v56;
  v101[41] = @"interactionIgnoreRepeatEnabled";
  v55 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v102[41] = v55;
  v101[42] = @"interactionIgnoreRepeatSeconds";
  v54 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v102[42] = v54;
  v101[43] = @"shareSiriAnalytics";
  v53 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v102[43] = v53;
  v101[44] = @"shareSpeakerAnalytics";
  v52 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v102[44] = v52;
  v101[45] = @"airPlayEnabled";
  v51 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v102[45] = v51;
  v101[46] = @"siriEndpointEnabled";
  v50 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v102[46] = v50;
  v101[47] = @"cameraAccessModeAtHome";
  v49 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v102[47] = v49;
  v101[48] = @"cameraAccessModeNotAtHome";
  v48 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v102[48] = v48;
  v101[49] = @"cameraRecordingEventTriggers";
  v47 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v102[49] = v47;
  v101[50] = @"cameraActivityZones";
  v46 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v102[50] = v46;
  v101[51] = @"cameraActivityZonesIncludedForSignificantEventDetection";
  v45 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v102[51] = v45;
  v101[52] = @"supportsMatterAccessCode";
  v44 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v102[52] = v44;
  v101[53] = @"supportsMatterWalletKey";
  v43 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v102[53] = v43;
  v101[54] = @"supportsMatterWeekDaySchedule";
  v42 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v102[54] = v42;
  v101[55] = @"supportsMatterYearDaySchedule";
  v41 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v102[55] = v41;
  v101[56] = @"matterWeekDayScheduleCapacity";
  v40 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v102[56] = v40;
  v101[57] = @"matterYearDayScheduleCapacity";
  v39 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v102[57] = v39;
  v101[58] = @"cameraCurrentAccessMode";
  v38 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v102[58] = v38;
  v101[59] = @"cameraCurrentAccessModeChangeReason";
  v37 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v102[59] = v37;
  v101[60] = @"cameraCurrentAccessModeChangeDate";
  v36 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v102[60] = v36;
  v101[61] = @"enhancedAuthMethod";
  v35 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v102[61] = v35;
  v101[62] = @"enhancedAuthConfigNumber";
  v34 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v102[62] = v34;
  v101[63] = @"supportsNaturalLighting";
  v33 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v102[63] = v33;
  v101[64] = @"naturalLightingEnabled";
  v32 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v102[64] = v32;
  v101[65] = @"chipNodeID";
  v31 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v102[65] = v31;
  v101[66] = @"chipVendorID";
  v30 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v102[66] = v30;
  v101[67] = @"chipProductID";
  v29 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v102[67] = v29;
  v101[68] = @"chipAttributeDatabase";
  v28 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v102[68] = v28;
  v101[69] = @"chipPairingsData";
  v27 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v102[69] = v27;
  v101[70] = @"chipWEDSupport";
  v26 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v102[70] = v26;
  v101[71] = @"chipExtendedMACAddress";
  v25 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v102[71] = v25;
  v101[72] = @"matterSoftwareVersionNumber";
  v24 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v102[72] = v24;
  v101[73] = @"supportedLinkLayerTypes";
  v23 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v102[73] = v23;
  v101[74] = @"supportsMatCredACP";
  v22 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v102[74] = v22;
  v101[75] = @"supportsMatCredACB";
  v21 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v102[75] = v21;
  v101[76] = @"expeditedTransactionSupportedVersions";
  v20 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v102[76] = v20;
  v101[77] = @"bleUWBSupportedVersions";
  v19 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v102[77] = v19;
  v101[78] = @"bleAdvertisingVersion";
  v18 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v102[78] = v18;
  v101[79] = @"matCredRGSI";
  v17 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v102[79] = v17;
  v101[80] = @"preexistingMatCredRGI";
  v6 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v102[80] = v6;
  v101[81] = @"preexistingMatCredRPK";
  v7 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v102[81] = v7;
  v101[82] = @"preexistingMatCredGRK";
  v8 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v102[82] = v8;
  v101[83] = @"mfiCertifiedACWG";
  v9 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v102[83] = v9;
  v101[84] = @"supportsNativeMatter";
  v10 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v102[84] = v10;
  v101[85] = @"hasOnboardedForAdaptiveTemperatureAutomations";
  v11 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v102[85] = v11;
  v101[86] = @"hasOnboardedForCleanEnergyAutomation";
  v12 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v102[86] = v12;
  v101[87] = @"supportsAdaptiveTemperatureAutomations";
  v13 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v102[87] = v13;
  v101[88] = @"supportsCleanEnergyAutomation";
  v14 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v102[88] = v14;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v102 forKeys:v101 count:89];
  [v80 addEntriesFromDictionary:v15];

  v16 = *MEMORY[0x277D85DE8];
}

- (void)setChipPairings:(id)pairings
{
  v19 = *MEMORY[0x277D85DE8];
  pairingsCopy = pairings;
  if (pairingsCopy)
  {
    v12 = 0;
    v5 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:pairingsCopy requiringSecureCoding:1 error:&v12];
    v6 = v12;
    if (v5)
    {
      [(HMDHAPAccessoryTransaction *)self setChipPairingsData:v5];
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
        v16 = pairingsCopy;
        v17 = 2112;
        v18 = v6;
        _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_ERROR, "%{public}@Failed to serialize pairings %@: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v7);
    }
  }

  else
  {
    [(HMDHAPAccessoryTransaction *)self setChipPairingsData:0];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (NSSet)chipPairings
{
  v22[2] = *MEMORY[0x277D85DE8];
  chipPairingsData = [(HMDHAPAccessoryTransaction *)self chipPairingsData];
  if (chipPairingsData)
  {
    v4 = MEMORY[0x277CCAAC8];
    v5 = MEMORY[0x277CBEB98];
    v22[0] = objc_opt_class();
    v22[1] = objc_opt_class();
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:2];
    v7 = [v5 setWithArray:v6];
    v17 = 0;
    v8 = [v4 unarchivedObjectOfClasses:v7 fromData:chipPairingsData error:&v17];
    v9 = v17;

    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v11 = objc_autoreleasePoolPush();
      selfCopy = self;
      v13 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = HMFGetLogIdentifier();
        *buf = 138543618;
        v19 = v14;
        v20 = 2112;
        v21 = v9;
        _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_ERROR, "%{public}@Failed to deserialize pairings from data: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v11);
    }
  }

  else
  {
    v8 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)dependentUUIDs
{
  selfCopy = self;
  v40 = *MEMORY[0x277D85DE8];
  v34.receiver = self;
  v34.super_class = HMDHAPAccessoryTransaction;
  dependentUUIDs = [(HMDAccessoryTransaction *)&v34 dependentUUIDs];
  v4 = [dependentUUIDs mutableCopy];

  bridgeUUID = [(HMDHAPAccessoryTransaction *)selfCopy bridgeUUID];

  if (bridgeUUID)
  {
    v6 = objc_alloc(MEMORY[0x277CCAD78]);
    bridgeUUID2 = [(HMDHAPAccessoryTransaction *)selfCopy bridgeUUID];
    v8 = [v6 initWithUUIDString:bridgeUUID2];
    [v4 addObject:v8];
  }

  targetUUIDs = [(HMDHAPAccessoryTransaction *)selfCopy targetUUIDs];
  v10 = [targetUUIDs count];

  if (v10)
  {
    v27 = v4;
    v11 = MEMORY[0x277CBEB18];
    targetUUIDs2 = [(HMDHAPAccessoryTransaction *)selfCopy targetUUIDs];
    v29 = [v11 arrayWithCapacity:{objc_msgSend(targetUUIDs2, "count")}];

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    obj = [(HMDHAPAccessoryTransaction *)selfCopy targetUUIDs];
    v13 = [obj countByEnumeratingWithState:&v30 objects:v39 count:16];
    v14 = 0x277CCA000uLL;
    if (v13)
    {
      v15 = v13;
      v16 = *v31;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v31 != v16)
          {
            objc_enumerationMutation(obj);
          }

          v18 = *(*(&v30 + 1) + 8 * i);
          v19 = [objc_alloc(*(v14 + 3448)) initWithUUIDString:v18];
          if (v19)
          {
            [v29 addObject:v19];
          }

          else
          {
            v20 = objc_autoreleasePoolPush();
            v21 = selfCopy;
            v22 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
            {
              HMFGetLogIdentifier();
              v24 = v23 = selfCopy;
              *buf = 138543618;
              v36 = v24;
              v37 = 2112;
              v38 = v18;
              _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_INFO, "%{public}@UUID string not well-formed: %@", buf, 0x16u);

              selfCopy = v23;
              v14 = 0x277CCA000;
            }

            objc_autoreleasePoolPop(v20);
          }
        }

        v15 = [obj countByEnumeratingWithState:&v30 objects:v39 count:16];
      }

      while (v15);
    }

    v4 = v27;
    [v27 addObjectsFromArray:v29];
  }

  v25 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)cd_generateValueForProperty:(id)property managedObjectField:(id)field context:(id)context
{
  v36[2] = *MEMORY[0x277D85DE8];
  propertyCopy = property;
  fieldCopy = field;
  contextCopy = context;
  if ([fieldCopy isEqualToString:@"cameraActivityZones"])
  {
    if ([(HMDBackingStoreModelObject *)self propertyWasSet:@"cameraActivityZones"])
    {
      cameraActivityZones = [(HMDHAPAccessoryTransaction *)self cameraActivityZones];
      if (cameraActivityZones)
      {
        v12 = MEMORY[0x277CCAAC8];
        v13 = MEMORY[0x277CBEB98];
        v36[0] = objc_opt_class();
        v36[1] = objc_opt_class();
        v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:2];
        v15 = [v13 setWithArray:v14];
        v31 = 0;
        v16 = [v12 unarchivedObjectOfClasses:v15 fromData:cameraActivityZones error:&v31];
        v17 = v31;

        if (v16)
        {
          v18 = v16;
        }

        else
        {
          v22 = objc_autoreleasePoolPush();
          selfCopy = self;
          v24 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            v25 = HMFGetLogIdentifier();
            *buf = 138543618;
            v33 = v25;
            v34 = 2112;
            v35 = v17;
            _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_ERROR, "%{public}@Failed to decode activity zones: %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v22);
          v18 = [MEMORY[0x277CBEB98] set];
        }

        v26 = v18;

        goto LABEL_37;
      }

      goto LABEL_13;
    }

    goto LABEL_38;
  }

  if ([fieldCopy isEqualToString:@"initialServiceTypes"])
  {
    if ([(HMDBackingStoreModelObject *)self propertyWasSet:@"initialServiceTypeUUIDs"])
    {
      initialServiceTypeUUIDs = [(HMDHAPAccessoryTransaction *)self initialServiceTypeUUIDs];
      cameraActivityZones = initialServiceTypeUUIDs;
      if (initialServiceTypeUUIDs)
      {
        null = HMDSortedServiceTypeUUIDsFromStrings(initialServiceTypeUUIDs);
LABEL_36:
        v26 = null;
LABEL_37:

        goto LABEL_39;
      }

LABEL_13:
      null = [MEMORY[0x277CBEB68] null];
      goto LABEL_36;
    }

    goto LABEL_38;
  }

  if ([fieldCopy isEqualToString:@"matterNodeID"])
  {
    if ([(HMDBackingStoreModelObject *)self propertyWasSet:@"chipNodeID"])
    {
      chipNodeID = [(HMDHAPAccessoryTransaction *)self chipNodeID];
LABEL_33:
      cameraActivityZones = chipNodeID;
      v27 = *MEMORY[0x277CBEEE8];
      if (chipNodeID)
      {
        v27 = chipNodeID;
      }

      null = v27;
      goto LABEL_36;
    }

    goto LABEL_38;
  }

  if ([fieldCopy isEqualToString:@"matterVendorID"])
  {
    if ([(HMDBackingStoreModelObject *)self propertyWasSet:@"chipVendorID"])
    {
      chipNodeID = [(HMDHAPAccessoryTransaction *)self chipVendorID];
      goto LABEL_33;
    }

LABEL_38:
    v26 = 0;
    goto LABEL_39;
  }

  if ([fieldCopy isEqualToString:@"matterProductID"])
  {
    if ([(HMDBackingStoreModelObject *)self propertyWasSet:@"chipProductID"])
    {
      chipNodeID = [(HMDHAPAccessoryTransaction *)self chipProductID];
      goto LABEL_33;
    }

    goto LABEL_38;
  }

  if ([fieldCopy isEqualToString:@"matterPairings"])
  {
    if ([(HMDBackingStoreModelObject *)self propertyWasSet:@"chipPairingsData"])
    {
      chipNodeID = [(HMDHAPAccessoryTransaction *)self chipPairings];
      goto LABEL_33;
    }

    goto LABEL_38;
  }

  if ([fieldCopy isEqualToString:@"matterWEDSupport"])
  {
    if ([(HMDBackingStoreModelObject *)self propertyWasSet:@"chipWEDSupport"])
    {
      chipNodeID = [(HMDHAPAccessoryTransaction *)self chipWEDSupport];
      goto LABEL_33;
    }

    goto LABEL_38;
  }

  if ([fieldCopy isEqualToString:@"matterExtendedMACAddress"])
  {
    if ([(HMDBackingStoreModelObject *)self propertyWasSet:@"chipExtendedMACAddress"])
    {
      chipNodeID = [(HMDHAPAccessoryTransaction *)self chipExtendedMACAddress];
      goto LABEL_33;
    }

    goto LABEL_38;
  }

  v30.receiver = self;
  v30.super_class = HMDHAPAccessoryTransaction;
  v26 = [(HMDAccessoryTransaction *)&v30 cd_generateValueForProperty:propertyCopy managedObjectField:fieldCopy context:contextCopy];
LABEL_39:

  v28 = *MEMORY[0x277D85DE8];

  return v26;
}

- (id)cd_generateValueForModelObjectFromManagedObject:(id)object modelObjectField:(id)field modelFieldInfo:(id)info
{
  v51 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  fieldCopy = field;
  infoCopy = info;
  if ([fieldCopy isEqualToString:@"cameraActivityZones"])
  {
    cameraActivityZones = [objectCopy cameraActivityZones];
    if (cameraActivityZones)
    {
      v45 = 0;
      null2 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:cameraActivityZones requiringSecureCoding:1 error:&v45];
      v13 = v45;
      if (null2)
      {
LABEL_4:
        v14 = null2;
LABEL_24:

LABEL_41:
        goto LABEL_42;
      }

      v29 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v31 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        v32 = HMFGetLogIdentifier();
        *buf = 138543618;
        v48 = v32;
        v49 = 2112;
        v50 = v13;
        v33 = "%{public}@Failed to encode activity zones: %@";
LABEL_22:
        _os_log_impl(&dword_229538000, v31, OS_LOG_TYPE_ERROR, v33, buf, 0x16u);

        goto LABEL_23;
      }

      goto LABEL_23;
    }

    goto LABEL_40;
  }

  if ([fieldCopy isEqualToString:@"initialServiceTypeUUIDs"])
  {
    initialServiceTypes = [objectCopy initialServiceTypes];
    if (initialServiceTypes)
    {
      v38 = objectCopy;
      v16 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:{objc_msgSend(initialServiceTypes, "count")}];
      v41 = 0u;
      v42 = 0u;
      v43 = 0u;
      v44 = 0u;
      v17 = initialServiceTypes;
      v18 = [v17 countByEnumeratingWithState:&v41 objects:v46 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v42;
        do
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v42 != v20)
            {
              objc_enumerationMutation(v17);
            }

            v22 = MEMORY[0x277D0F888];
            uUIDString = [*(*(&v41 + 1) + 8 * i) UUIDString];
            v24 = [v22 hmf_cachedInstanceForString:uUIDString];
            [v16 addObject:v24];
          }

          v19 = [v17 countByEnumeratingWithState:&v41 objects:v46 count:16];
        }

        while (v19);
      }

      null2 = [v16 copy];
      objectCopy = v38;
      goto LABEL_34;
    }

    null = [MEMORY[0x277CBEB68] null];
    goto LABEL_33;
  }

  if ([fieldCopy isEqualToString:@"uniqueIdentifier"])
  {
    uniqueIdentifier = [objectCopy uniqueIdentifier];

    if (uniqueIdentifier)
    {
      initialServiceTypes = [objectCopy uniqueIdentifier];
      v26 = HAPInstanceIDFromUniqueIdentifier();
      v27 = HAPServerIDFromUniqueIdentifier();
      null2 = HAPUniqueIdentifier();

LABEL_34:
      goto LABEL_42;
    }
  }

  if ([fieldCopy isEqualToString:@"chipNodeID"])
  {
    matterNodeID = [objectCopy matterNodeID];
LABEL_30:
    initialServiceTypes = matterNodeID;
    v35 = *MEMORY[0x277CBEEE8];
    if (matterNodeID)
    {
      v35 = matterNodeID;
    }

    null = v35;
LABEL_33:
    null2 = null;
    goto LABEL_34;
  }

  if ([fieldCopy isEqualToString:@"chipVendorID"])
  {
    matterNodeID = [objectCopy matterVendorID];
    goto LABEL_30;
  }

  if ([fieldCopy isEqualToString:@"chipProductID"])
  {
    matterNodeID = [objectCopy matterProductID];
    goto LABEL_30;
  }

  if ([fieldCopy isEqualToString:@"chipPairingsData"])
  {
    cameraActivityZones = [objectCopy matterPairings];
    if (cameraActivityZones)
    {
      v40 = 0;
      null2 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:cameraActivityZones requiringSecureCoding:1 error:&v40];
      v13 = v40;
      if (null2)
      {
        goto LABEL_4;
      }

      v29 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v31 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        v32 = HMFGetLogIdentifier();
        *buf = 138543618;
        v48 = v32;
        v49 = 2112;
        v50 = v13;
        v33 = "%{public}@Failed to encode matter pairings: %@";
        goto LABEL_22;
      }

LABEL_23:

      objc_autoreleasePoolPop(v29);
      goto LABEL_24;
    }

LABEL_40:
    null2 = [MEMORY[0x277CBEB68] null];
    goto LABEL_41;
  }

  if ([fieldCopy isEqualToString:@"chipWEDSupport"])
  {
    matterNodeID = [objectCopy matterWEDSupport];
    goto LABEL_30;
  }

  if ([fieldCopy isEqualToString:@"chipExtendedMACAddress"])
  {
    matterNodeID = [objectCopy matterExtendedMACAddress];
    goto LABEL_30;
  }

  v39.receiver = self;
  v39.super_class = HMDHAPAccessoryTransaction;
  null2 = [(HMDAccessoryTransaction *)&v39 cd_generateValueForModelObjectFromManagedObject:objectCopy modelObjectField:fieldCopy modelFieldInfo:infoCopy];
LABEL_42:

  v36 = *MEMORY[0x277D85DE8];

  return null2;
}

+ (id)cd_getMKFHAPAccessoryFromAccessoryUUID:(id)d
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
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@Unable to find MKFHAPAccessory for HAP accessory with UUID %@: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v10);
    v14 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

+ (id)cd_getMKFHAPAccessoryFromAccessory:(id)accessory
{
  v17 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  v5 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:accessoryCopy];
  if (v5)
  {
    v6 = [self cd_getMKFHAPAccessoryFromAccessoryUUID:v5];
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    selfCopy = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v13 = 138543618;
      v14 = v10;
      v15 = 2112;
      v16 = accessoryCopy;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_ERROR, "%{public}@Invalid accessory UUID string '%@'", &v13, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    v6 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (id)cd_getMKFServiceFromAccessoryUUID:(id)d serviceInstanceId:(id)id
{
  v25 = *MEMORY[0x277D85DE8];
  dCopy = d;
  idCopy = id;
  if (!dCopy)
  {
    _HMFPreconditionFailure();
LABEL_20:
    _HMFPreconditionFailure();
  }

  v8 = idCopy;
  if (!idCopy)
  {
    goto LABEL_20;
  }

  v9 = [self cd_getMKFHAPAccessoryFromAccessory:dCopy];
  v10 = v9;
  if (v9)
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    services = [v9 services];
    v12 = [services countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v12)
    {
      v13 = *v21;
      while (2)
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v21 != v13)
          {
            objc_enumerationMutation(services);
          }

          v15 = *(*(&v20 + 1) + 8 * i);
          instanceID = [v15 instanceID];
          v17 = HAPEqualInstanceIDs();

          if (v17)
          {
            v12 = v15;
            goto LABEL_14;
          }
        }

        v12 = [services countByEnumeratingWithState:&v20 objects:v24 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

LABEL_14:
  }

  else
  {
    v12 = 0;
  }

  v18 = *MEMORY[0x277D85DE8];

  return v12;
}

@end