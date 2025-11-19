@interface HMDHomeConfigurationLogEvent
- (HMDHomeConfigurationLogEvent)initWithDataSource:(id)a3 home:(id)a4 configuredWidgetsCount:(int64_t)a5;
- (HMDHomeConfigurationLogEvent)initWithIsOwnerUser:(BOOL)a3 isResidentAvailable:(BOOL)a4 isCurrentDeviceResidentEnabled:(BOOL)a5 isPrimaryResident:(BOOL)a6 isCurrentDeviceLocalToHome:(BOOL)a7 isNetworkProtectionEnabled:(BOOL)a8 isUserRoeProvisioned:(BOOL)a9 isResidentFirstEnabled:(BOOL)a10 isResidentElectionV2Enabled:(BOOL)a11 isSmokeAlarmEnabled:(BOOL)a12;
- (NSDictionary)coreAnalyticsEventDictionary;
- (id)initForUnitTesting;
- (int64_t)daysSinceDate:(id)a3 trimAtMaximumValue:(unint64_t)a4;
- (int64_t)weeksSinceDate:(id)a3 trimAtMaximumValue:(unint64_t)a4;
- (unint64_t)currentUserPrivilegeBitMask;
- (unint64_t)numTelevisionServiceAccessories;
- (void)setHomeConfigurationBitMasks;
- (void)updateConfigWithAccessory:(id)a3 reportNetworkProtectionMetrics:(BOOL)a4 networkProtectionEnabled:(BOOL)a5 hapServiceTypes:(id)a6 primaryHAPServiceTypes:(id)a7;
@end

@implementation HMDHomeConfigurationLogEvent

- (HMDHomeConfigurationLogEvent)initWithIsOwnerUser:(BOOL)a3 isResidentAvailable:(BOOL)a4 isCurrentDeviceResidentEnabled:(BOOL)a5 isPrimaryResident:(BOOL)a6 isCurrentDeviceLocalToHome:(BOOL)a7 isNetworkProtectionEnabled:(BOOL)a8 isUserRoeProvisioned:(BOOL)a9 isResidentFirstEnabled:(BOOL)a10 isResidentElectionV2Enabled:(BOOL)a11 isSmokeAlarmEnabled:(BOOL)a12
{
  result = [(HMDHomeConfigurationLogEvent *)self initForUnitTesting];
  if (result)
  {
    result->_ownerUser = a3;
    result->_isResidentAvailable = a4;
    result->_isCurrentDeviceResidentEnabled = a5;
    result->_isCurrentDevicePrimaryResident = a6;
    result->_isCurrentDeviceLocalToHome = a7;
    result->_networkProtectionEnabled = a8;
    result->_hasHomeKeyInWallet = a9;
    result->_isResidentFirstEnabled = a10;
    result->_isResidentElectionV2Enabled = a11;
    result->_isSmokeAlarmEnabled = a12;
  }

  return result;
}

- (id)initForUnitTesting
{
  v3 = [MEMORY[0x277CCAD78] UUID];
  v6.receiver = self;
  v6.super_class = HMDHomeConfigurationLogEvent;
  v4 = [(HMMHomeLogEvent *)&v6 initWithHomeUUID:v3];

  return v4;
}

- (NSDictionary)coreAnalyticsEventDictionary
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDHomeConfigurationLogEvent homeIndex](self, "homeIndex")}];
  [v3 setObject:v4 forKeyedSubscript:@"homeIndex"];

  v5 = [(HMMHomeLogEvent *)self homeUUIDString];
  [v3 setObject:v5 forKeyedSubscript:@"homeUUID"];

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDHomeConfigurationLogEvent homeCategoryBitMask](self, "homeCategoryBitMask")}];
  [v3 setObject:v6 forKeyedSubscript:@"homeCategoryBitMask"];

  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDHomeConfigurationLogEvent appleMediaCategoryBitMask](self, "appleMediaCategoryBitMask")}];
  [v3 setObject:v7 forKeyedSubscript:@"appleMediaCategoryBitMask"];

  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDHomeConfigurationLogEvent thirdPartyMediaCategoryBitMask](self, "thirdPartyMediaCategoryBitMask")}];
  [v3 setObject:v8 forKeyedSubscript:@"thirdPartyMediaCategoryBitMask"];

  if ([(HMDHomeConfigurationLogEvent *)self isOwnerUser])
  {
    v9 = &unk_283E729C8;
  }

  else
  {
    v9 = &unk_283E729E0;
  }

  [v3 setObject:v9 forKeyedSubscript:@"isOwnerUser"];
  v10 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDHomeConfigurationLogEvent isOwnerUser](self, "isOwnerUser")}];
  [v3 setObject:v10 forKeyedSubscript:@"isOwnerUserBool"];

  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDHomeConfigurationLogEvent currentUserPrivilege](self, "currentUserPrivilege")}];
  [v3 setObject:v11 forKeyedSubscript:@"currentUserPrivilege"];

  if ([(HMDHomeConfigurationLogEvent *)self isAccessToHomeAllowed])
  {
    v12 = &unk_283E729C8;
  }

  else
  {
    v12 = &unk_283E729E0;
  }

  [v3 setObject:v12 forKeyedSubscript:@"isAccessToHomeAllowed"];
  v13 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDHomeConfigurationLogEvent isAccessToHomeAllowed](self, "isAccessToHomeAllowed")}];
  [v3 setObject:v13 forKeyedSubscript:@"isAccessToHomeAllowedBool"];

  v14 = [MEMORY[0x277CCABB0] numberWithInt:{-[HMDHomeConfigurationLogEvent networkProtectionStatus](self, "networkProtectionStatus")}];
  [v3 setObject:v14 forKeyedSubscript:@"networkProtectionStatus"];

  if ([(HMDHomeConfigurationLogEvent *)self isResidentAvailable])
  {
    v15 = &unk_283E729C8;
  }

  else
  {
    v15 = &unk_283E729E0;
  }

  [v3 setObject:v15 forKeyedSubscript:@"isResidentAvailable"];
  v16 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDHomeConfigurationLogEvent isResidentAvailable](self, "isResidentAvailable")}];
  [v3 setObject:v16 forKeyedSubscript:@"isResidentAvailableBool"];

  if ([(HMDHomeConfigurationLogEvent *)self isAutomaticThirdPartyAccessorySoftwareUpdateEnabled])
  {
    v17 = &unk_283E729C8;
  }

  else
  {
    v17 = &unk_283E729E0;
  }

  [v3 setObject:v17 forKeyedSubscript:@"isAutomaticThirdPartyAccessorySoftwareUpdateEnabled"];
  v18 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDHomeConfigurationLogEvent isAutomaticThirdPartyAccessorySoftwareUpdateEnabled](self, "isAutomaticThirdPartyAccessorySoftwareUpdateEnabled")}];
  [v3 setObject:v18 forKeyedSubscript:@"isAutomaticThirdPartyAccessorySoftwareUpdateEnabledBool"];

  if ([(HMDHomeConfigurationLogEvent *)self isCurrentDevicePrimaryResident])
  {
    v19 = &unk_283E729C8;
  }

  else
  {
    v19 = &unk_283E729E0;
  }

  [v3 setObject:v19 forKeyedSubscript:@"isPrimaryResident"];
  v20 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDHomeConfigurationLogEvent isCurrentDevicePrimaryResident](self, "isCurrentDevicePrimaryResident")}];
  [v3 setObject:v20 forKeyedSubscript:@"isPrimaryResidentBool"];

  if ([(HMDHomeConfigurationLogEvent *)self isCurrentDeviceResidentEnabled])
  {
    v21 = &unk_283E729C8;
  }

  else
  {
    v21 = &unk_283E729E0;
  }

  [v3 setObject:v21 forKeyedSubscript:@"isCurrentDeviceResidentEnabled"];
  v22 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDHomeConfigurationLogEvent isCurrentDeviceResidentEnabled](self, "isCurrentDeviceResidentEnabled")}];
  [v3 setObject:v22 forKeyedSubscript:@"isCurrentDeviceResidentEnabledBool"];

  if ([(HMDHomeConfigurationLogEvent *)self isCurrentDeviceLocalToHome])
  {
    v23 = &unk_283E729C8;
  }

  else
  {
    v23 = &unk_283E729E0;
  }

  [v3 setObject:v23 forKeyedSubscript:@"isCurrentDeviceLocalToHome"];
  v24 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDHomeConfigurationLogEvent isCurrentDeviceLocalToHome](self, "isCurrentDeviceLocalToHome")}];
  [v3 setObject:v24 forKeyedSubscript:@"isCurrentDeviceLocalToHomeBool"];

  v25 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDHomeConfigurationLogEvent isResidentFirstEnabled](self, "isResidentFirstEnabled")}];
  [v3 setObject:v25 forKeyedSubscript:@"isResidentFirstEnabled"];

  v26 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDHomeConfigurationLogEvent isResidentFirstEnabled](self, "isResidentFirstEnabled")}];
  [v3 setObject:v26 forKeyedSubscript:@"isResidentFirstEnabledBool"];

  v27 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDHomeConfigurationLogEvent isResidentElectionV2Enabled](self, "isResidentElectionV2Enabled")}];
  [v3 setObject:v27 forKeyedSubscript:@"isResidentElectionV2Enabled"];

  v28 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDHomeConfigurationLogEvent isResidentElectionV2Enabled](self, "isResidentElectionV2Enabled")}];
  [v3 setObject:v28 forKeyedSubscript:@"isResidentElectionV2EnabledBool"];

  if ([(HMDHomeConfigurationLogEvent *)self networkProtectionEnabled])
  {
    v29 = &unk_283E729C8;
  }

  else
  {
    v29 = &unk_283E729E0;
  }

  [v3 setObject:v29 forKeyedSubscript:@"networkProtectionEnabled"];
  v30 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDHomeConfigurationLogEvent networkProtectionEnabled](self, "networkProtectionEnabled")}];
  [v3 setObject:v30 forKeyedSubscript:@"networkProtectionEnabledBool"];

  v31 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDHomeConfigurationLogEvent numAccessories](self, "numAccessories")}];
  [v3 setObject:v31 forKeyedSubscript:@"numAccessories"];

  v32 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDHomeConfigurationLogEvent numCertifiedAccessories](self, "numCertifiedAccessories")}];
  [v3 setObject:v32 forKeyedSubscript:@"numCertifiedAccessories"];

  v33 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDHomeConfigurationLogEvent numBridgedAccessories](self, "numBridgedAccessories")}];
  [v3 setObject:v33 forKeyedSubscript:@"numBridgedAccessories"];

  v34 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDHomeConfigurationLogEvent numNotCertifiedAccessories](self, "numNotCertifiedAccessories")}];
  [v3 setObject:v34 forKeyedSubscript:@"numNotCertifiedAccessories"];

  v35 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDHomeConfigurationLogEvent numSmartHomeAccessories](self, "numSmartHomeAccessories")}];
  [v3 setObject:v35 forKeyedSubscript:@"numSmartHomeAccessories"];

  v36 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDHomeConfigurationLogEvent numThirdPartyMediaAccessories](self, "numThirdPartyMediaAccessories")}];
  [v3 setObject:v36 forKeyedSubscript:@"numThirdPartyMediaAccessories"];

  v37 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDHomeConfigurationLogEvent numAppleMediaAccessories](self, "numAppleMediaAccessories")}];
  [v3 setObject:v37 forKeyedSubscript:@"numAppleMediaAccessories"];

  v38 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDHomeConfigurationLogEvent numAppleAudioAccessories](self, "numAppleAudioAccessories")}];
  [v3 setObject:v38 forKeyedSubscript:@"numAppleAudioAccessories"];

  v39 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDHomeConfigurationLogEvent numHomePods](self, "numHomePods")}];
  [v3 setObject:v39 forKeyedSubscript:@"numHomePods"];

  v40 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDHomeConfigurationLogEvent numHomePodStereoPairs](self, "numHomePodStereoPairs")}];
  [v3 setObject:v40 forKeyedSubscript:@"numHomePodStereoPairs"];

  v41 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDHomeConfigurationLogEvent numHomePodMinis](self, "numHomePodMinis")}];
  [v3 setObject:v41 forKeyedSubscript:@"numHomePodMinis"];

  v42 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDHomeConfigurationLogEvent numHomePodMiniStereoPairs](self, "numHomePodMiniStereoPairs")}];
  [v3 setObject:v42 forKeyedSubscript:@"numHomePodMiniStereoPairs"];

  v43 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDHomeConfigurationLogEvent numHomePod2ndGen](self, "numHomePod2ndGen")}];
  [v3 setObject:v43 forKeyedSubscript:@"numVoeAccessories"];

  v44 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDHomeConfigurationLogEvent numHomePod2ndGenStereoPairs](self, "numHomePod2ndGenStereoPairs")}];
  [v3 setObject:v44 forKeyedSubscript:@"numVoe2Accessories"];

  v45 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDHomeConfigurationLogEvent numMediaSystems](self, "numMediaSystems")}];
  [v3 setObject:v45 forKeyedSubscript:@"numMediaSystems"];

  v46 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDHomeConfigurationLogEvent numAppleTVAccessories](self, "numAppleTVAccessories")}];
  [v3 setObject:v46 forKeyedSubscript:@"numAppleTVAccessories"];

  v47 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDHomeConfigurationLogEvent numAppleTV4K2ndGenAccessories](self, "numAppleTV4K2ndGenAccessories")}];
  [v3 setObject:v47 forKeyedSubscript:@"numAppleTV4K2ndGenAccessories"];

  v48 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDHomeConfigurationLogEvent currentMediaAccessoryFallbackMediaUserType](self, "currentMediaAccessoryFallbackMediaUserType")}];
  [v3 setObject:v48 forKeyedSubscript:@"currentMediaAccessoryFallbackMediaUserType"];

  v49 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDHomeConfigurationLogEvent numTelevisionServiceAccessories](self, "numTelevisionServiceAccessories")}];
  [v3 setObject:v49 forKeyedSubscript:@"numTelevisionServiceAccessories"];

  v50 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDHomeConfigurationLogEvent numTelevisionAccessories](self, "numTelevisionAccessories")}];
  [v3 setObject:v50 forKeyedSubscript:@"numTelevisionAccessories"];

  v51 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDHomeConfigurationLogEvent numTelevisionSetTopBoxAccessories](self, "numTelevisionSetTopBoxAccessories")}];
  [v3 setObject:v51 forKeyedSubscript:@"numTelevisionSetTopBoxAccessories"];

  v52 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDHomeConfigurationLogEvent numTelevisionStreamingStickAccessories](self, "numTelevisionStreamingStickAccessories")}];
  [v3 setObject:v52 forKeyedSubscript:@"numTelevisionStreamingStickAccessories"];

  v53 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDHomeConfigurationLogEvent numThirdPartyAudioAccessories](self, "numThirdPartyAudioAccessories")}];
  [v3 setObject:v53 forKeyedSubscript:@"numThirdPartyAudioAccessories"];

  v54 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDHomeConfigurationLogEvent numHAPSpeakerServiceAccessories](self, "numHAPSpeakerServiceAccessories")}];
  [v3 setObject:v54 forKeyedSubscript:@"numHAPSpeakerServiceAccessories"];

  v55 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDHomeConfigurationLogEvent numPrimaryHAPSpeakerServiceAccessories](self, "numPrimaryHAPSpeakerServiceAccessories")}];
  [v3 setObject:v55 forKeyedSubscript:@"numPrimaryHAPSpeakerServiceAccessories"];

  v56 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDHomeConfigurationLogEvent numWholeHouseAudioAccessories](self, "numWholeHouseAudioAccessories")}];
  [v3 setObject:v56 forKeyedSubscript:@"numWholeHouseAudioAccessories"];

  v57 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDHomeConfigurationLogEvent numCapableSiriEndpointAccessories](self, "numCapableSiriEndpointAccessories")}];
  [v3 setObject:v57 forKeyedSubscript:@"numCapableSiriEndpointAccessories"];

  v58 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDHomeConfigurationLogEvent numEnabledSiriEndpointAccessories](self, "numEnabledSiriEndpointAccessories")}];
  [v3 setObject:v58 forKeyedSubscript:@"numEnabledSiriEndpointAccessories"];

  v59 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDHomeConfigurationLogEvent numAccessoriesWiFiPPSKCredential](self, "numAccessoriesWiFiPPSKCredential")}];
  [v3 setObject:v59 forKeyedSubscript:@"numAccessoriesWiFiPPSKCredential"];

  v60 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDHomeConfigurationLogEvent numAccessoriesNetworkProtectionUnprotected](self, "numAccessoriesNetworkProtectionUnprotected")}];
  [v3 setObject:v60 forKeyedSubscript:@"numAccessoriesNetworkProtectionUnprotected"];

  v61 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDHomeConfigurationLogEvent numAccessoriesNetworkProtectionAutoFullAccess](self, "numAccessoriesNetworkProtectionAutoFullAccess")}];
  [v3 setObject:v61 forKeyedSubscript:@"numAccessoriesNetworkProtectionAutoFullAccess"];

  v62 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDHomeConfigurationLogEvent numAccessoriesNetworkProtectionAutoProtectedMainLAN](self, "numAccessoriesNetworkProtectionAutoProtectedMainLAN")}];
  [v3 setObject:v62 forKeyedSubscript:@"numAccessoriesNetworkProtectionAutoProtectedMainLAN"];

  v63 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDHomeConfigurationLogEvent numAccessoriesNetworkProtectionAutoProtectedHomeKitLAN](self, "numAccessoriesNetworkProtectionAutoProtectedHomeKitLAN")}];
  [v3 setObject:v63 forKeyedSubscript:@"numAccessoriesNetworkProtectionAutoProtectedHomeKitLAN"];

  v64 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDHomeConfigurationLogEvent numAccessoriesNetworkProtectionFullAccess](self, "numAccessoriesNetworkProtectionFullAccess")}];
  [v3 setObject:v64 forKeyedSubscript:@"numAccessoriesNetworkProtectionFullAccess"];

  v65 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDHomeConfigurationLogEvent numAccessoriesNetworkProtectionHomeKitOnly](self, "numAccessoriesNetworkProtectionHomeKitOnly")}];
  [v3 setObject:v65 forKeyedSubscript:@"numAccessoriesNetworkProtectionHomeKitOnly"];

  v66 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDHomeConfigurationLogEvent numHAPAccessories](self, "numHAPAccessories")}];
  [v3 setObject:v66 forKeyedSubscript:@"numHAPAccessories"];

  v67 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDHomeConfigurationLogEvent numCHIPAccessories](self, "numCHIPAccessories")}];
  [v3 setObject:v67 forKeyedSubscript:@"numMatterAccessories"];

  v68 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDHomeConfigurationLogEvent numHAPAccessoriesFirmwareUpdateEligible](self, "numHAPAccessoriesFirmwareUpdateEligible")}];
  [v3 setObject:v68 forKeyedSubscript:@"numHAPAccessoriesFirmwareUpdateEligible"];

  v69 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDHomeConfigurationLogEvent numCHIPAccessoriesFirmwareUpdateEligible](self, "numCHIPAccessoriesFirmwareUpdateEligible")}];
  [v3 setObject:v69 forKeyedSubscript:@"numMatterAccessoriesFirmwareUpdateEligible"];

  v70 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDHomeConfigurationLogEvent numIPAccessories](self, "numIPAccessories")}];
  [v3 setObject:v70 forKeyedSubscript:@"numIPAccessories"];

  v71 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDHomeConfigurationLogEvent numBTAccessories](self, "numBTAccessories")}];
  [v3 setObject:v71 forKeyedSubscript:@"numBTAccessories"];

  v72 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDHomeConfigurationLogEvent numBTOnlyAccessories](self, "numBTOnlyAccessories")}];
  [v3 setObject:v72 forKeyedSubscript:@"numBTOnlyAccessories"];

  v73 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDHomeConfigurationLogEvent numThreadAccessories](self, "numThreadAccessories")}];
  [v3 setObject:v73 forKeyedSubscript:@"numThreadAccessories"];

  v74 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDHomeConfigurationLogEvent numHAPIPAccessories](self, "numHAPIPAccessories")}];
  [v3 setObject:v74 forKeyedSubscript:@"numHAPIPAccessories"];

  v75 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDHomeConfigurationLogEvent numHAPBTAccessories](self, "numHAPBTAccessories")}];
  [v3 setObject:v75 forKeyedSubscript:@"numHAPBTAccessories"];

  v76 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDHomeConfigurationLogEvent numHAPBatteryServiceAccessories](self, "numHAPBatteryServiceAccessories")}];
  [v3 setObject:v76 forKeyedSubscript:@"numHAPBatteryServiceAccessories"];

  v77 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDHomeConfigurationLogEvent numThreadBorderRouters](self, "numThreadBorderRouters")}];
  [v3 setObject:v77 forKeyedSubscript:@"numThreadBorderRouters"];

  v78 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDHomeConfigurationLogEvent numThreadAccessoryMinCapable](self, "numThreadAccessoryMinCapable")}];
  [v3 setObject:v78 forKeyedSubscript:@"numThreadAccessoryMinCapable"];

  v79 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDHomeConfigurationLogEvent numThreadAccessorySleepCapable](self, "numThreadAccessorySleepCapable")}];
  [v3 setObject:v79 forKeyedSubscript:@"numThreadAccessorySleepCapable"];

  v80 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDHomeConfigurationLogEvent numThreadAccessoryFullCapable](self, "numThreadAccessoryFullCapable")}];
  [v3 setObject:v80 forKeyedSubscript:@"numThreadAccessoryFullCapable"];

  v81 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDHomeConfigurationLogEvent numThreadAccessoryRouterCapable](self, "numThreadAccessoryRouterCapable")}];
  [v3 setObject:v81 forKeyedSubscript:@"numThreadAccessoryRouterCapable"];

  v82 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDHomeConfigurationLogEvent numThreadAccessoryBorderRouterCapable](self, "numThreadAccessoryBorderRouterCapable")}];
  [v3 setObject:v82 forKeyedSubscript:@"numThreadAccessoryBorderRouterCapable"];

  v83 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDHomeConfigurationLogEvent numThreadAccessoriesUnknownCapabilities](self, "numThreadAccessoriesUnknownCapabilities")}];
  [v3 setObject:v83 forKeyedSubscript:@"numThreadAccessoriesUnknownCapabilities"];

  v84 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDHomeConfigurationLogEvent numWOBLEAccessories](self, "numWOBLEAccessories")}];
  [v3 setObject:v84 forKeyedSubscript:@"numWOBLEAccessories"];

  v85 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDHomeConfigurationLogEvent numWOLANAccessories](self, "numWOLANAccessories")}];
  [v3 setObject:v85 forKeyedSubscript:@"numWOLANAccessories"];

  v86 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDHomeConfigurationLogEvent numWOLANV1DarkWakeAccessories](self, "numWOLANV1DarkWakeAccessories")}];
  [v3 setObject:v86 forKeyedSubscript:@"numWOLANV1DarkWakeAccessories"];

  v87 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDHomeConfigurationLogEvent numWOLANV1SystemWakeAccessories](self, "numWOLANV1SystemWakeAccessories")}];
  [v3 setObject:v87 forKeyedSubscript:@"numWOLANV1SystemWakeAccessories"];

  v88 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDHomeConfigurationLogEvent numWOLANV2DarkWakeAccessories](self, "numWOLANV2DarkWakeAccessories")}];
  [v3 setObject:v88 forKeyedSubscript:@"numWOLANV2DarkWakeAccessories"];

  v89 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDHomeConfigurationLogEvent numWOLANV2SystemWakeAccessories](self, "numWOLANV2SystemWakeAccessories")}];
  [v3 setObject:v89 forKeyedSubscript:@"numWOLANV2SystemWakeAccessories"];

  v90 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDHomeConfigurationLogEvent numCameraAccessories](self, "numCameraAccessories")}];
  [v3 setObject:v90 forKeyedSubscript:@"numCameraAccessories"];

  v91 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDHomeConfigurationLogEvent numCameraAccessoriesSupportRecording](self, "numCameraAccessoriesSupportRecording")}];
  [v3 setObject:v91 forKeyedSubscript:@"numCameraAccessoriesSupportRecording"];

  v92 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDHomeConfigurationLogEvent numCameraAccessoriesRecordingEnabled](self, "numCameraAccessoriesRecordingEnabled")}];
  [v3 setObject:v92 forKeyedSubscript:@"numCameraAccessoriesRecordingEnabled"];

  v93 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDHomeConfigurationLogEvent numCameraAccessoriesReachabilityNotificationEnabled](self, "numCameraAccessoriesReachabilityNotificationEnabled")}];
  [v3 setObject:v93 forKeyedSubscript:@"numCameraAccessoriesReachabilityNotificationEnabled"];

  v94 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDHomeConfigurationLogEvent numCameraAccessoriesWithActivityZonesEnabled](self, "numCameraAccessoriesWithActivityZonesEnabled")}];
  [v3 setObject:v94 forKeyedSubscript:@"numCameraAccessoriesWithActivityZonesEnabled"];

  v95 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDHomeConfigurationLogEvent numLightProfilesWithNaturalLightingSupported](self, "numLightProfilesWithNaturalLightingSupported")}];
  [v3 setObject:v95 forKeyedSubscript:@"numLightProfilesWithNaturalLightingSupported"];

  v96 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDHomeConfigurationLogEvent numLightProfilesWithNaturalLightingEnabled](self, "numLightProfilesWithNaturalLightingEnabled")}];
  [v3 setObject:v96 forKeyedSubscript:@"numLightProfilesWithNaturalLightingEnabled"];

  v97 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDHomeConfigurationLogEvent numLightProfilesWithNaturalLightingUsed](self, "numLightProfilesWithNaturalLightingUsed")}];
  [v3 setObject:v97 forKeyedSubscript:@"numLightProfilesWithNaturalLightingUsed"];

  v98 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDHomeConfigurationLogEvent numResidentsEnabled](self, "numResidentsEnabled")}];
  [v3 setObject:v98 forKeyedSubscript:@"numResidentsEnabled"];

  v99 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDHomeConfigurationLogEvent enabledResidentsDeviceCapabilities](self, "enabledResidentsDeviceCapabilities")}];
  [v3 setObject:v99 forKeyedSubscript:@"enabledResidentsDeviceCapabilities"];

  v100 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDHomeConfigurationLogEvent numTriggers](self, "numTriggers")}];
  [v3 setObject:v100 forKeyedSubscript:@"numTriggers"];

  v101 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDHomeConfigurationLogEvent numActiveTriggers](self, "numActiveTriggers")}];
  [v3 setObject:v101 forKeyedSubscript:@"numActiveTriggers"];

  v102 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDHomeConfigurationLogEvent numEventTriggers](self, "numEventTriggers")}];
  [v3 setObject:v102 forKeyedSubscript:@"numEventTriggers"];

  v103 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDHomeConfigurationLogEvent numTimerTriggers](self, "numTimerTriggers")}];
  [v3 setObject:v103 forKeyedSubscript:@"numTimerTriggers"];

  v104 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDHomeConfigurationLogEvent numShortcuts](self, "numShortcuts")}];
  [v3 setObject:v104 forKeyedSubscript:@"numShortcuts"];

  v105 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDHomeConfigurationLogEvent numScenes](self, "numScenes")}];
  [v3 setObject:v105 forKeyedSubscript:@"numScenes"];

  v106 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDHomeConfigurationLogEvent numConfiguredScenes](self, "numConfiguredScenes")}];
  [v3 setObject:v106 forKeyedSubscript:@"numConfiguredScenes"];

  v107 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDHomeConfigurationLogEvent numTriggerOwnedConfiguredScenes](self, "numTriggerOwnedConfiguredScenes")}];
  [v3 setObject:v107 forKeyedSubscript:@"numTriggerOwnedConfiguredScenes"];

  v108 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDHomeConfigurationLogEvent numTargetControllers](self, "numTargetControllers")}];
  [v3 setObject:v108 forKeyedSubscript:@"numTargetControllers"];

  v109 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDHomeConfigurationLogEvent numCertifiedTargetControllers](self, "numCertifiedTargetControllers")}];
  [v3 setObject:v109 forKeyedSubscript:@"numCertifiedTargetControllers"];

  v110 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDHomeConfigurationLogEvent numBridgedTargetControllers](self, "numBridgedTargetControllers")}];
  [v3 setObject:v110 forKeyedSubscript:@"numBridgedTargetControllers"];

  v111 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDHomeConfigurationLogEvent numCertifiedBridgedTargetControllers](self, "numCertifiedBridgedTargetControllers")}];
  [v3 setObject:v111 forKeyedSubscript:@"numCertifiedBridgedTargetControllers"];

  v112 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDHomeConfigurationLogEvent numUsers](self, "numUsers")}];
  [v3 setObject:v112 forKeyedSubscript:@"numUsers"];

  v113 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDHomeConfigurationLogEvent numAdmins](self, "numAdmins")}];
  [v3 setObject:v113 forKeyedSubscript:@"numAdmins"];

  v114 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDHomeConfigurationLogEvent numRestrictedGuests](self, "numRestrictedGuests")}];
  [v3 setObject:v114 forKeyedSubscript:@"numRestrictedGuests"];

  v115 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDHomeConfigurationLogEvent userPrivilegeBitMask](self, "userPrivilegeBitMask")}];
  [v3 setObject:v115 forKeyedSubscript:@"userPrivilegeBitMask"];

  v116 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDHomeConfigurationLogEvent numRooms](self, "numRooms")}];
  [v3 setObject:v116 forKeyedSubscript:@"numRooms"];

  v117 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDHomeConfigurationLogEvent numZones](self, "numZones")}];
  [v3 setObject:v117 forKeyedSubscript:@"numZones"];

  v118 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDHomeConfigurationLogEvent numServices](self, "numServices")}];
  [v3 setObject:v118 forKeyedSubscript:@"numServices"];

  v119 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDHomeConfigurationLogEvent numAccessoryServiceGroups](self, "numAccessoryServiceGroups")}];
  [v3 setObject:v119 forKeyedSubscript:@"numAccessoryServiceGroups"];

  v120 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDHomeConfigurationLogEvent homeCreationCohortWeek](self, "homeCreationCohortWeek")}];
  [v3 setObject:v120 forKeyedSubscript:@"homeCreationCohortWeek"];

  v121 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDHomeConfigurationLogEvent firstHAPAccessoryAddedCohortWeek](self, "firstHAPAccessoryAddedCohortWeek")}];
  [v3 setObject:v121 forKeyedSubscript:@"firstHAPAccessoryAddedCohortWeek"];

  v122 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDHomeConfigurationLogEvent numConfiguredWidgets](self, "numConfiguredWidgets")}];
  [v3 setObject:v122 forKeyedSubscript:@"numHomeWidgetsEnabled"];

  v123 = [(HMDHomeConfigurationLogEvent *)self numBSPs];

  if (v123)
  {
    v124 = [(HMDHomeConfigurationLogEvent *)self numBSPs];
    [v3 setObject:v124 forKeyedSubscript:@"numBSPs"];
  }

  v125 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDHomeConfigurationLogEvent numWoLAccessories](self, "numWoLAccessories")}];
  [v3 setObject:v125 forKeyedSubscript:@"numWoLAccessories"];

  v126 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[HMDHomeConfigurationLogEvent databaseSize](self, "databaseSize")}];
  [v3 setObject:v126 forKeyedSubscript:@"databaseSize"];

  v127 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[HMDHomeConfigurationLogEvent metadataVersion](self, "metadataVersion")}];
  [v3 setObject:v127 forKeyedSubscript:@"metadataVersion"];

  v128 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDHomeConfigurationLogEvent numHAPLocks](self, "numHAPLocks")}];
  [v3 setObject:v128 forKeyedSubscript:@"numHAPLocks"];

  v129 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDHomeConfigurationLogEvent numMatterLocks](self, "numMatterLocks")}];
  [v3 setObject:v129 forKeyedSubscript:@"numMatterLocks"];

  v130 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDHomeConfigurationLogEvent numLocksWithAccessCodeSupported](self, "numLocksWithAccessCodeSupported")}];
  [v3 setObject:v130 forKeyedSubscript:@"numLocksWithAccessCodeSupported"];

  v131 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDHomeConfigurationLogEvent numLocksWithWalletKeySupported](self, "numLocksWithWalletKeySupported")}];
  [v3 setObject:v131 forKeyedSubscript:@"numLocksWithWalletKeySupported"];

  if ([(HMDHomeConfigurationLogEvent *)self isOwnerUser])
  {
    v132 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDHomeConfigurationLogEvent ownerPerspectiveNumUsersWithAccessCode](self, "ownerPerspectiveNumUsersWithAccessCode")}];
    [v3 setObject:v132 forKeyedSubscript:@"ownerPerspectiveNumUsersWithAccessCode"];
  }

  else
  {
    [v3 setObject:0 forKeyedSubscript:@"ownerPerspectiveNumUsersWithAccessCode"];
  }

  if ([(HMDHomeConfigurationLogEvent *)self hasHomeKeyInWallet])
  {
    v133 = &unk_283E729C8;
  }

  else
  {
    v133 = &unk_283E729E0;
  }

  [v3 setObject:v133 forKeyedSubscript:@"isWalletKeyProvisioned"];
  v134 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDHomeConfigurationLogEvent hasHomeKeyInWallet](self, "hasHomeKeyInWallet")}];
  [v3 setObject:v134 forKeyedSubscript:@"isWalletKeyProvisionedBool"];

  v135 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDHomeConfigurationLogEvent numAccessoriesWithWalletKeySupported](self, "numAccessoriesWithWalletKeySupported")}];
  [v3 setObject:v135 forKeyedSubscript:@"numRoeAccessories"];

  if ([(HMDHomeConfigurationLogEvent *)self hasHomeKeyInWallet])
  {
    v136 = &unk_283E729C8;
  }

  else
  {
    v136 = &unk_283E729E0;
  }

  [v3 setObject:v136 forKeyedSubscript:@"isUserRoeProvisioned"];
  v137 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDHomeConfigurationLogEvent hasHomeKeyInWallet](self, "hasHomeKeyInWallet")}];
  [v3 setObject:v137 forKeyedSubscript:@"isUserRoeProvisionedBool"];

  v138 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDHomeConfigurationLogEvent numRVCs](self, "numRVCs")}];
  [v3 setObject:v138 forKeyedSubscript:@"numRVCs"];

  if ([(HMDHomeConfigurationLogEvent *)self isSmokeAlarmEnabled])
  {
    v139 = &unk_283E729C8;
  }

  else
  {
    v139 = &unk_283E729E0;
  }

  [v3 setObject:v139 forKeyedSubscript:@"isXoeEnabled"];
  v140 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDHomeConfigurationLogEvent isSmokeAlarmEnabled](self, "isSmokeAlarmEnabled")}];
  [v3 setObject:v140 forKeyedSubscript:@"isXoeEnabledBool"];

  if ([(HMDHomeConfigurationLogEvent *)self isSiriPhraseOptionsHeySiriEnabled])
  {
    v141 = &unk_283E729C8;
  }

  else
  {
    v141 = &unk_283E729E0;
  }

  [v3 setObject:v141 forKeyedSubscript:@"isSiriPhraseOptionsHeySiriEnabled"];
  v142 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDHomeConfigurationLogEvent isSiriPhraseOptionsHeySiriEnabled](self, "isSiriPhraseOptionsHeySiriEnabled")}];
  [v3 setObject:v142 forKeyedSubscript:@"isSiriPhraseOptionsHeySiriEnabledBool"];

  if ([(HMDHomeConfigurationLogEvent *)self isSiriPhraseOptionsJustSiriEnabled])
  {
    v143 = &unk_283E729C8;
  }

  else
  {
    v143 = &unk_283E729E0;
  }

  [v3 setObject:v143 forKeyedSubscript:@"isSiriPhraseOptionsJustSiriEnabled"];
  v144 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDHomeConfigurationLogEvent isSiriPhraseOptionsJustSiriEnabled](self, "isSiriPhraseOptionsJustSiriEnabled")}];
  [v3 setObject:v144 forKeyedSubscript:@"isSiriPhraseOptionsJustSiriEnabledBool"];

  v145 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDHomeConfigurationLogEvent residentElectionBitMask](self, "residentElectionBitMask")}];
  [v3 setObject:v145 forKeyedSubscript:@"residentElectionBitMask"];

  v146 = [v3 copy];

  return v146;
}

- (unint64_t)currentUserPrivilegeBitMask
{
  v2 = [(HMDHomeConfigurationLogEvent *)self currentUserPrivilege];
  if (v2 - 1 > 4)
  {
    return 1;
  }

  else
  {
    return qword_22A587740[v2 - 1];
  }
}

- (unint64_t)numTelevisionServiceAccessories
{
  v3 = [(HMDHomeConfigurationLogEvent *)self numTelevisionAccessories];
  v4 = [(HMDHomeConfigurationLogEvent *)self numTelevisionSetTopBoxAccessories]+ v3;
  return v4 + [(HMDHomeConfigurationLogEvent *)self numTelevisionStreamingStickAccessories];
}

- (void)updateConfigWithAccessory:(id)a3 reportNetworkProtectionMetrics:(BOOL)a4 networkProtectionEnabled:(BOOL)a5 hapServiceTypes:(id)a6 primaryHAPServiceTypes:(id)a7
{
  v9 = a5;
  v10 = a4;
  v150 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a6;
  v14 = a7;
  v15 = v12;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  v17 = v16;

  v18 = v15;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  v129 = v19;

  v20 = v18;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  v128 = v21;

  v22 = v20;
  if ([v22 conformsToProtocol:&unk_283F010C8])
  {
    v23 = v22;
  }

  else
  {
    v23 = 0;
  }

  v127 = v23;
  v130 = v22;

  if (v17)
  {
    v24 = [v17 hostAccessory];
    objc_opt_class();
    v25 = (objc_opt_isKindOfClass() & 1) != 0 ? v24 : 0;
    v26 = v25;

    if (v26)
    {
      goto LABEL_196;
    }
  }

  v126 = v14;
  if (!v10)
  {
    goto LABEL_36;
  }

  if ([v130 wiFiCredentialType] == 3)
  {
    ++self->_numAccessoriesWiFiPPSKCredential;
  }

  if (!v9)
  {
    v32 = [v17 category];
    v33 = [v32 isWiFiRouterAccessoryCategory];

    if (v33)
    {
      self->_networkProtectionStatus = 1;
      if (!v17)
      {
        goto LABEL_29;
      }

      goto LABEL_37;
    }

LABEL_36:
    if (!v17)
    {
      goto LABEL_29;
    }

LABEL_37:
    v125 = [v17 certificationStatus];
    if (v125 == 2)
    {
      v41 = &OBJC_IVAR___HMDHomeConfigurationLogEvent__numCertifiedAccessories;
    }

    else
    {
      if ([v17 certificationStatus] != 1)
      {
        goto LABEL_42;
      }

      v41 = &OBJC_IVAR___HMDHomeConfigurationLogEvent__numNotCertifiedAccessories;
    }

    ++*(&self->super.super.super.isa + *v41);
LABEL_42:
    if (![v17 supportsHAP])
    {
      if (![v17 supportsCHIP])
      {
LABEL_86:
        v68 = [v17 metric_threadCapabilities];
        v69 = [v17 metricLoggingTransportDetails];
        v70 = [v69 isThreadAccessory];

        if ([v17 hasIPLink] && (objc_msgSend(v17, "isPrimary") & 1) != 0)
        {
          v71 = &OBJC_IVAR___HMDHomeConfigurationLogEvent__numIPAccessories;
        }

        else
        {
          if (![v17 hasBTLELink] || !objc_msgSend(v17, "isPrimary") || (++self->_numBTAccessories, (v70 & 1) != 0))
          {
LABEL_94:
            if ([v17 custom1WoBLE])
            {
              ++self->_numWOBLEAccessories;
            }

            if ([v17 supportsWoL])
            {
              ++self->_numWOLANAccessories;
              v72 = [v17 connectivityInfo];
              v73 = [v72 woWLANVersion];

              v74 = [v17 connectivityInfo];
              v75 = [v74 woWLANWakeUpTypeSupport];

              if (v73 == 2)
              {
                if (v75 == 2)
                {
                  v76 = &OBJC_IVAR___HMDHomeConfigurationLogEvent__numWOLANV2DarkWakeAccessories;
                }

                else
                {
                  if (v75 != 1)
                  {
                    goto LABEL_123;
                  }

                  v76 = &OBJC_IVAR___HMDHomeConfigurationLogEvent__numWOLANV2SystemWakeAccessories;
                }
              }

              else
              {
                if (v73 != 1)
                {
                  goto LABEL_123;
                }

                if (v75 == 2)
                {
                  v76 = &OBJC_IVAR___HMDHomeConfigurationLogEvent__numWOLANV1DarkWakeAccessories;
                }

                else
                {
                  if (v75 != 1)
                  {
                    goto LABEL_123;
                  }

                  v76 = &OBJC_IVAR___HMDHomeConfigurationLogEvent__numWOLANV1SystemWakeAccessories;
                }
              }

              ++*(&self->super.super.super.isa + *v76);
            }

LABEL_123:
            if (v70)
            {
              ++self->_numThreadAccessories;
              if (v68)
              {
                self->_numThreadAccessoryMinCapable += v68 & 1;
                self->_numThreadAccessorySleepCapable += (v68 >> 1) & 1;
                self->_numThreadAccessoryFullCapable += (v68 >> 2) & 1;
                self->_numThreadAccessoryRouterCapable += (v68 >> 3) & 1;
                v87 = (v68 >> 4) & 1;
                v88 = &OBJC_IVAR___HMDHomeConfigurationLogEvent__numThreadAccessoryBorderRouterCapable;
              }

              else
              {
                v88 = &OBJC_IVAR___HMDHomeConfigurationLogEvent__numThreadAccessoriesUnknownCapabilities;
                v87 = 1;
              }

              *(&self->super.super.super.isa + *v88) = (*(&self->super.super.super.isa + *v88) + v87);
            }

            if (([v17 isPrimary] & 1) == 0)
            {
              ++self->_numBridgedAccessories;
            }

            v133 = 0u;
            v134 = 0u;
            v131 = 0u;
            v132 = 0u;
            v89 = [v17 services];
            v90 = [v89 countByEnumeratingWithState:&v131 objects:v147 count:16];
            if (v90)
            {
              v91 = v90;
              v92 = *v132;
              do
              {
                for (i = 0; i != v91; ++i)
                {
                  if (*v132 != v92)
                  {
                    objc_enumerationMutation(v89);
                  }

                  v94 = [*(*(&v131 + 1) + 8 * i) type];
                  [v13 addObject:v94];
                }

                v91 = [v89 countByEnumeratingWithState:&v131 objects:v147 count:16];
              }

              while (v91);
            }

            v95 = [HMDMetricsUtilities primaryServiceTypeForHAPAccessory:v17];
            v14 = v126;
            if (v95)
            {
              [v126 addObject:v95];
            }

            v96 = [v17 findServiceWithServiceType:*MEMORY[0x277CD0DE8]];

            if (v96)
            {
              ++self->_numHAPBatteryServiceAccessories;
            }

            if ([v17 supportsWoL])
            {
              ++self->_numWoLAccessories;
            }

            if ([v17 supportsTargetController])
            {
              ++self->_numTargetControllers;
              if (v125 == 2)
              {
                ++self->_numCertifiedTargetControllers;
              }

              if (([v17 isPrimary] & 1) == 0)
              {
                ++self->_numBridgedTargetControllers;
                if (v125 == 2)
                {
                  ++self->_numCertifiedBridgedTargetControllers;
                }
              }
            }

            if ([v17 hasCameraStreamService])
            {
              ++self->_numCameraAccessories;
              if ([v17 isCameraRecordingFeatureSupported])
              {
                ++self->_numCameraAccessoriesSupportRecording;
              }

              v97 = [v17 cameraProfileSettingsManager];
              if ([v97 isRecordingEnabled])
              {
                ++self->_numCameraAccessoriesRecordingEnabled;
              }

              v98 = [v97 currentSettings];
              v99 = [v98 notificationSettings];
              v100 = [v99 isReachabilityEventNotificationEnabled];

              if (v100)
              {
                ++self->_numCameraAccessoriesReachabilityNotificationEnabled;
              }

              v101 = [v97 currentSettings];
              v102 = [v101 activityZones];
              v103 = [v102 count];

              if (v103)
              {
                ++self->_numCameraAccessoriesWithActivityZonesEnabled;
              }

              v14 = v126;
            }

            if (![v17 hasTelevisionService])
            {
              v81 = 1;
LABEL_169:
              if ([v17 hasSmartSpeakerService])
              {
                ++self->_numHAPSpeakerServiceAccessories;
                if ([v95 isEqual:@"00000228-0000-1000-8000-0026BB765291"])
                {
                  ++self->_numPrimaryHAPSpeakerServiceAccessories;
                  v81 = 3;
                }
              }

              if ([v17 hasSiriEndpointService])
              {
                ++self->_numCapableSiriEndpointAccessories;
              }

              if (self->_isCurrentDevicePrimaryResident)
              {
                v114 = [v17 siriEndpointProfile];
                v115 = v114;
                if (v114 && ([v114 siriTouchToUse] == 1 || objc_msgSend(v115, "siriListening") == 1))
                {
                  ++self->_numEnabledSiriEndpointAccessories;
                }
              }

              v116 = [v17 category];
              v117 = [v116 categoryType];
              v118 = [v117 isEqualToString:*MEMORY[0x277CCE890]];

              if (v118)
              {
                if ([v17 supportsHAP])
                {
                  ++self->_numHAPLocks;
                }

                if ([v17 supportsCHIP])
                {
                  ++self->_numMatterLocks;
                }

                if ([v17 supportsAccessCode])
                {
                  ++self->_numLocksWithAccessCodeSupported;
                }

                if ([v17 supportsWalletKey])
                {
                  ++self->_numLocksWithWalletKeySupported;
                }
              }

              v119 = [v17 services];
              self->_numServices += [v119 count];

              if (v81 == 3)
              {
                goto LABEL_192;
              }

              goto LABEL_194;
            }

            v104 = [v17 category];
            v105 = [v104 categoryType];
            v106 = [v105 isEqualToString:*MEMORY[0x277CCE920]];

            if (v106)
            {
              v107 = &OBJC_IVAR___HMDHomeConfigurationLogEvent__numTelevisionAccessories;
            }

            else
            {
              v108 = [v17 category];
              v109 = [v108 categoryType];
              v110 = [v109 isEqualToString:*MEMORY[0x277CCE930]];

              if (v110)
              {
                v107 = &OBJC_IVAR___HMDHomeConfigurationLogEvent__numTelevisionSetTopBoxAccessories;
              }

              else
              {
                v111 = [v17 category];
                v112 = [v111 categoryType];
                v113 = [v112 isEqualToString:*MEMORY[0x277CCE938]];

                if (!v113)
                {
LABEL_168:
                  v81 = 3;
                  goto LABEL_169;
                }

                v107 = &OBJC_IVAR___HMDHomeConfigurationLogEvent__numTelevisionStreamingStickAccessories;
              }
            }

            ++*(&self->super.super.super.isa + *v107);
            goto LABEL_168;
          }

          v71 = &OBJC_IVAR___HMDHomeConfigurationLogEvent__numBTOnlyAccessories;
        }

        ++*(&self->super.super.super.isa + *v71);
        goto LABEL_94;
      }

      ++self->_numCHIPAccessories;
      v44 = [v17 firmwareUpdateProfile];

      if (v44)
      {
        ++self->_numCHIPAccessoriesFirmwareUpdateEligible;
      }

      v137 = 0u;
      v138 = 0u;
      v135 = 0u;
      v136 = 0u;
      v45 = [v17 lightProfiles];
      v46 = [v45 countByEnumeratingWithState:&v135 objects:v148 count:16];
      if (v46)
      {
        v47 = v46;
        v123 = v17;
        v124 = v13;
        v48 = *v136;
        do
        {
          for (j = 0; j != v47; ++j)
          {
            if (*v136 != v48)
            {
              objc_enumerationMutation(v45);
            }

            v50 = *(*(&v135 + 1) + 8 * j);
            if ([v50 isNaturalLightingSupported])
            {
              ++self->_numMatterLightProfilesWithNaturalLightingSupported;
            }

            v51 = [MEMORY[0x277CBEAA8] date];
            v52 = [v51 dateByAddingTimeInterval:-86400.0];

            if (([v50 isNaturalLightingEnabled] & 1) != 0 || (objc_msgSend(v50, "mostRecentNaturalLightingEnabledDate"), v53 = objc_claimAutoreleasedReturnValue(), v54 = objc_msgSend(v53, "compare:", v52), v53, v54 == 1))
            {
              ++self->_numMatterLightProfilesWithNaturalLightingEnabled;
            }

            v55 = [v50 mostRecentNaturalLightingUsedDate];
            v56 = [v55 compare:v52];

            if (v56 == 1)
            {
              ++self->_numMatterLightProfilesWithNaturalLightingUsed;
            }
          }

          v47 = [v45 countByEnumeratingWithState:&v135 objects:v148 count:16];
        }

        while (v47);
        goto LABEL_84;
      }

LABEL_85:

      goto LABEL_86;
    }

    ++self->_numHAPAccessories;
    v42 = [v17 firmwareUpdateProfile];

    if (v42)
    {
      ++self->_numHAPAccessoriesFirmwareUpdateEligible;
    }

    if ([v17 hasIPLink] && (objc_msgSend(v17, "isPrimary") & 1) != 0)
    {
      v43 = &OBJC_IVAR___HMDHomeConfigurationLogEvent__numHAPIPAccessories;
    }

    else
    {
      if (![v17 hasBTLELink] || !objc_msgSend(v17, "isPrimary"))
      {
LABEL_70:
        v141 = 0u;
        v142 = 0u;
        v139 = 0u;
        v140 = 0u;
        v45 = [v17 lightProfiles];
        v57 = [v45 countByEnumeratingWithState:&v139 objects:v149 count:16];
        if (v57)
        {
          v58 = v57;
          v123 = v17;
          v124 = v13;
          v59 = *v140;
          do
          {
            for (k = 0; k != v58; ++k)
            {
              if (*v140 != v59)
              {
                objc_enumerationMutation(v45);
              }

              v61 = *(*(&v139 + 1) + 8 * k);
              if ([v61 isNaturalLightingSupported])
              {
                ++self->_numLightProfilesWithNaturalLightingSupported;
              }

              v62 = [MEMORY[0x277CBEAA8] date];
              v63 = [v62 dateByAddingTimeInterval:-86400.0];

              if (([v61 isNaturalLightingEnabled] & 1) != 0 || (objc_msgSend(v61, "mostRecentNaturalLightingEnabledDate"), v64 = objc_claimAutoreleasedReturnValue(), v65 = objc_msgSend(v64, "compare:", v63), v64, v65 == 1))
              {
                ++self->_numLightProfilesWithNaturalLightingEnabled;
              }

              v66 = [v61 mostRecentNaturalLightingUsedDate];
              v67 = [v66 compare:v63];

              if (v67 == 1)
              {
                ++self->_numLightProfilesWithNaturalLightingUsed;
              }
            }

            v58 = [v45 countByEnumeratingWithState:&v139 objects:v149 count:16];
          }

          while (v58);
LABEL_84:
          v17 = v123;
          v13 = v124;
          goto LABEL_85;
        }

        goto LABEL_85;
      }

      v43 = &OBJC_IVAR___HMDHomeConfigurationLogEvent__numHAPBTAccessories;
    }

    ++*(&self->super.super.super.isa + *v43);
    goto LABEL_70;
  }

  v27 = v130;
  if (([v27 supportsNetworkProtection] & 1) == 0)
  {

    v14 = v126;
    goto LABEL_36;
  }

  v28 = [v27 networkClientIdentifier];

  if (!v28)
  {
LABEL_203:

    v31 = 408;
    goto LABEL_204;
  }

  v29 = [v27 targetNetworkProtectionMode];
  v30 = [v27 currentNetworkProtectionMode];
  if (!v29 && v30 == 4)
  {

    v31 = 416;
    goto LABEL_204;
  }

  if (v29 || v30 != 2)
  {
    if (v29 == 1 && v30 == 1)
    {

      v31 = 448;
      goto LABEL_204;
    }

    if (v29 == 3 && v30 == 3)
    {

      v31 = 440;
      goto LABEL_204;
    }

    goto LABEL_203;
  }

  v86 = [v27 networkClientLAN];

  if (v86 == 3)
  {
    v31 = 432;
  }

  else
  {
    v31 = 424;
  }

LABEL_204:
  ++*(&self->super.super.super.isa + v31);
  v14 = v126;
  if (v17)
  {
    goto LABEL_37;
  }

LABEL_29:
  if (v129)
  {
    v34 = [v129 category];
    v35 = [v34 categoryType];
    v36 = *MEMORY[0x277CCE870];
    v37 = HMFEqualObjects();

    if (v37)
    {
      ++self->_numAppleTVAccessories;
      v38 = [v129 capabilities];
      v39 = [v38 supportsThreadBorderRouter];

      if ((v39 & 1) == 0)
      {
        goto LABEL_105;
      }

      v40 = &OBJC_IVAR___HMDHomeConfigurationLogEvent__numAppleTV4K2ndGenAccessories;
    }

    else
    {
      if (![v129 isHomePod])
      {
        goto LABEL_105;
      }

      v40 = &OBJC_IVAR___HMDHomeConfigurationLogEvent__numAppleAudioAccessories;
    }

    ++*(&self->super.super.super.isa + *v40);
LABEL_105:
    if ([v129 isCurrentAccessory])
    {
      v77 = [v129 fallbackMediaUserType];
      if ((v77 - 1) < 3)
      {
        self->_currentMediaAccessoryFallbackMediaUserType = v77;
      }
    }

    v120 = 168;
    goto LABEL_193;
  }

  if (v128)
  {
    ++self->_numWholeHouseAudioAccessories;
LABEL_192:
    v120 = 160;
LABEL_193:
    v121 = (*(&self->super.super.super.isa + v120) + 1);
LABEL_195:
    *(&self->super.super.super.isa + v120) = v121;
    goto LABEL_196;
  }

  if (v127)
  {
    v78 = [v127 matterAdapter];
    v79 = [v78 endpointToDeviceTypesMap];
    v80 = [v79 na_filter:&__block_literal_global_249];
    v81 = [v80 count];

    self->_numRVCs += v81;
    if (v81 > 0)
    {
LABEL_194:
      v120 = 152;
      v121 = (self->_numSmartHomeAccessories + v81);
      goto LABEL_195;
    }
  }

  v82 = objc_autoreleasePoolPush();
  v83 = self;
  v84 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v84, OS_LOG_TYPE_ERROR))
  {
    v85 = HMFGetLogIdentifier();
    *buf = 138543618;
    v144 = v85;
    v145 = 2112;
    v146 = v130;
    _os_log_impl(&dword_229538000, v84, OS_LOG_TYPE_ERROR, "%{public}@Accessory was not matched to any type for configuration reporting: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v82);
  v14 = v126;
LABEL_196:

  v122 = *MEMORY[0x277D85DE8];
}

- (HMDHomeConfigurationLogEvent)initWithDataSource:(id)a3 home:(id)a4 configuredWidgetsCount:(int64_t)a5
{
  v230 = *MEMORY[0x277D85DE8];
  v148 = a3;
  v149 = a4;
  v8 = [v148 uuid];
  v207.receiver = self;
  v207.super_class = HMDHomeConfigurationLogEvent;
  v9 = [(HMMHomeLogEvent *)&v207 initWithHomeUUID:v8];

  if (v9)
  {
    v9->_numConfiguredWidgets = a5;
    v162 = [MEMORY[0x277CBEB58] set];
    v160 = [MEMORY[0x277CBEB58] set];
    v9->_isCurrentDeviceResidentEnabled = 0;
    v10 = [v148 enabledResidents];
    v9->_numResidentsEnabled = [v10 count];
    v203 = 0u;
    v204 = 0u;
    v205 = 0u;
    v206 = 0u;
    obj = v10;
    v11 = [obj countByEnumeratingWithState:&v203 objects:v228 count:16];
    if (v11)
    {
      v12 = *v204;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v204 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v203 + 1) + 8 * i);
          v9->_enabledResidentsDeviceCapabilities |= [v14 legacyResidentCapabilities];
          if ([v14 isCurrentDevice])
          {
            v9->_isCurrentDeviceResidentEnabled = 1;
          }
        }

        v11 = [obj countByEnumeratingWithState:&v203 objects:v228 count:16];
      }

      while (v11);
    }

    v9->_isResidentAvailable = [v149 _residentDeviceAvailable];
    v9->_isResidentFirstEnabled = 1;
    v15 = [v149 residentDeviceManager];
    if ([v15 homeSupportsResidentSelection])
    {
      p_isResidentElectionV2Enabled = &v9->_isResidentElectionV2Enabled;
      v9->_isResidentElectionV2Enabled = 0;
    }

    else
    {
      v16 = [v149 residentDeviceManager];
      p_isResidentElectionV2Enabled = &v9->_isResidentElectionV2Enabled;
      v9->_isResidentElectionV2Enabled = [v16 isResidentElectionV2Enabled];
    }

    v147 = [v148 currentDevice];
    v17 = [v147 capabilities];
    v9->_isCurrentDeviceResidentCapable = [v17 isResidentCapable];

    v18 = [v149 primaryResident];
    v19 = [v18 device];
    v9->_isCurrentDevicePrimaryResident = [v19 isEqual:v147];

    v9->_isCurrentDeviceLocalToHome = [v149 homeLocation] == 1;
    v9->_isAutomaticThirdPartyAccessorySoftwareUpdateEnabled = [v149 isAutomaticThirdPartyAccessorySoftwareUpdateEnabled];
    v20 = [v149 availableBorderRouters];
    v9->_numThreadBorderRouters = [v20 unsignedIntegerValue];

    v21 = [v148 triggerOwnedActionSets];
    v9->_numTriggerOwnedConfiguredScenes = [v21 count];

    v22 = [v148 actionSets];
    v9->_numScenes = [v22 count];

    v23 = [v149 rooms];
    v9->_numRooms = [v23 count] + 1;

    v24 = [v149 zones];
    v9->_numZones = [v24 count];

    v25 = [v149 serviceGroups];
    v9->_numAccessoryServiceGroups = [v25 count];

    v26 = [v149 availableBSPsCount];
    numBSPs = v9->_numBSPs;
    v9->_numBSPs = v26;

    v165 = [v149 isOwnerUser];
    if ([v149 networkRouterSupport])
    {
      v28 = [v149 protectionMode];
      v158 = v28 == 1;
      v29 = v165;
      if (v28 != 1)
      {
        v29 = 0;
      }

      if (v29 == 1)
      {
        v9->_networkProtectionStatus = 2;
        v158 = 1;
      }
    }

    else
    {
      v158 = 0;
    }

    v9->_userPrivilegeBitMask = 0;
    v199 = 0u;
    v200 = 0u;
    v201 = 0u;
    v202 = 0u;
    v30 = [v148 users];
    v31 = [v30 countByEnumeratingWithState:&v199 objects:v227 count:16];
    if (v31)
    {
      v32 = *v200;
      do
      {
        for (j = 0; j != v31; ++j)
        {
          if (*v200 != v32)
          {
            objc_enumerationMutation(v30);
          }

          v34 = *(*(&v199 + 1) + 8 * j);
          if (([v34 isRemoteGateway] & 1) == 0)
          {
            v35 = [v34 privilege];
            if (v35 <= 2)
            {
              if (v35 == 1)
              {
                v37 = 2;
              }

              else
              {
                if (v35 != 2)
                {
                  goto LABEL_40;
                }

                v37 = 4;
              }

              v39 = v9->_userPrivilegeBitMask | v37;
LABEL_41:
              v9->_userPrivilegeBitMask = v39;
            }

            else
            {
              switch(v35)
              {
                case 3:
                  v38 = 8;
                  break;
                case 4:
                  v38 = 16;
                  break;
                case 5:
                  v9->_userPrivilegeBitMask |= 0x20uLL;
                  v36 = 656;
                  goto LABEL_37;
                default:
LABEL_40:
                  v39 = v9->_userPrivilegeBitMask | 1;
                  goto LABEL_41;
              }

              v9->_userPrivilegeBitMask |= v38;
              v36 = 648;
LABEL_37:
              ++*(&v9->super.super.super.isa + v36);
            }

            ++v9->_numUsers;
            v40 = [v34 accessCode];

            if (v40)
            {
              ++v9->_ownerPerspectiveNumUsersWithAccessCode;
            }

            continue;
          }
        }

        v31 = [v30 countByEnumeratingWithState:&v199 objects:v227 count:16];
      }

      while (v31);
    }

    v41 = [v148 users];
    v156 = [MEMORY[0x277CBEB18] array];
    v217 = 0u;
    v218 = 0u;
    v215 = 0u;
    v216 = 0u;
    v150 = v41;
    v42 = [v150 countByEnumeratingWithState:&v215 objects:v229 count:16];
    if (v42)
    {
      v43 = *v216;
      do
      {
        for (k = 0; k != v42; ++k)
        {
          if (*v216 != v43)
          {
            objc_enumerationMutation(v150);
          }

          v45 = *(*(&v215 + 1) + 8 * k);
          v46 = objc_alloc_init(HMDAnalyticsMultiUserSettings);
          -[HMDAnalyticsMultiUserSettings setIsOwner:](v46, "setIsOwner:", [v45 isCurrentUser]);
          v47 = [MEMORY[0x277CBEB18] array];
          [(HMDAnalyticsMultiUserSettings *)v46 setMultiUserSettingsValuesByKeyPaths:v47];

          v48 = [v45 privateSettingValuesByKeyPath];
          v49 = [v48 mutableCopy];

          v50 = [v45 sharedSettingValuesByKeyPath];
          [v49 addEntriesFromDictionary:v50];

          if ([v49 count])
          {
            v209 = 0;
            v210 = &v209;
            v211 = 0x3032000000;
            v212 = __Block_byref_object_copy__102567;
            v213 = __Block_byref_object_dispose__102568;
            v214 = [MEMORY[0x277CBEB18] array];
            v208[0] = MEMORY[0x277D85DD0];
            v208[1] = 3221225472;
            v208[2] = ___legacyMultiUserSettings_block_invoke;
            v208[3] = &unk_278681758;
            v208[4] = &v209;
            [v49 enumerateKeysAndObjectsUsingBlock:v208];
            v51 = [v210[5] copy];
            [(HMDAnalyticsMultiUserSettings *)v46 setMultiUserSettingsValuesByKeyPaths:v51];

            [v156 addObject:v46];
            _Block_object_dispose(&v209, 8);
          }
        }

        v42 = [v150 countByEnumeratingWithState:&v215 objects:v229 count:16];
      }

      while (v42);
    }

    v52 = [v156 copy];
    multiUserSettings = v9->_multiUserSettings;
    v9->_multiUserSettings = v52;

    v9->_ownerUser = [v148 isOwnerUser];
    v54 = [v148 currentUser];
    v9->_currentUserPrivilege = [v54 privilege];

    v9->_accessToHomeAllowed = [v148 isAccessToHomeAllowed];
    v55 = [v148 accessories];
    v9->_numAccessories = [v55 count];
    v195 = 0u;
    v196 = 0u;
    v197 = 0u;
    v198 = 0u;
    v157 = v55;
    v56 = [v157 countByEnumeratingWithState:&v195 objects:v226 count:16];
    if (v56)
    {
      v57 = *v196;
      do
      {
        for (m = 0; m != v56; ++m)
        {
          if (*v196 != v57)
          {
            objc_enumerationMutation(v157);
          }

          [(HMDHomeConfigurationLogEvent *)v9 updateConfigWithAccessory:*(*(&v195 + 1) + 8 * m) reportNetworkProtectionMetrics:v165 networkProtectionEnabled:v158 hapServiceTypes:v162 primaryHAPServiceTypes:v160];
        }

        v56 = [v157 countByEnumeratingWithState:&v195 objects:v226 count:16];
      }

      while (v56);
    }

    v166 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v162, "count") + 1}];
    if ([v162 count])
    {
      v59 = [[HMDAnalyticsHAPServiceData alloc] initWithServiceType:@"_HomeWithHAPServices_" isPrimary:0 ownerUser:v9->_ownerUser];
      [v166 addObject:v59];
    }

    v193 = 0u;
    v194 = 0u;
    v191 = 0u;
    v192 = 0u;
    v161 = v160;
    v60 = [v161 countByEnumeratingWithState:&v191 objects:v225 count:16];
    if (v60)
    {
      v61 = *v192;
      do
      {
        for (n = 0; n != v60; ++n)
        {
          if (*v192 != v61)
          {
            objc_enumerationMutation(v161);
          }

          v63 = [[HMDAnalyticsHAPServiceData alloc] initWithServiceType:*(*(&v191 + 1) + 8 * n) isPrimary:1 ownerUser:v9->_ownerUser];
          [v166 addObject:v63];
        }

        v60 = [v161 countByEnumeratingWithState:&v191 objects:v225 count:16];
      }

      while (v60);
    }

    [v162 minusSet:v161];
    v189 = 0u;
    v190 = 0u;
    v187 = 0u;
    v188 = 0u;
    v159 = v162;
    v64 = [v159 countByEnumeratingWithState:&v187 objects:v224 count:16];
    if (v64)
    {
      v65 = *v188;
      do
      {
        for (ii = 0; ii != v64; ++ii)
        {
          if (*v188 != v65)
          {
            objc_enumerationMutation(v159);
          }

          v67 = [[HMDAnalyticsHAPServiceData alloc] initWithServiceType:*(*(&v187 + 1) + 8 * ii) isPrimary:0 ownerUser:v9->_ownerUser];
          [v166 addObject:v67];
        }

        v64 = [v159 countByEnumeratingWithState:&v187 objects:v224 count:16];
      }

      while (v64);
    }

    v68 = [v166 copy];
    hapServices = v9->_hapServices;
    v9->_hapServices = v68;

    v70 = [v148 accessories];
    v71 = [v70 na_filter:&__block_literal_global_102571];
    v9->_numHomePodMinis = [v71 count];

    v72 = [v148 accessories];
    v73 = [v72 na_filter:&__block_literal_global_22_102572];
    v9->_numHomePod2ndGen = [v73 count];

    v74 = [v148 accessories];
    v75 = [v74 na_filter:&__block_literal_global_24_102573];
    v9->_numHomePods = [v75 count];

    v76 = [v149 mediaSystems];
    v9->_numMediaSystems = [v76 count];

    v77 = [v149 mediaSystems];
    v78 = [v77 na_filter:&__block_literal_global_27_102574];
    v9->_numHomePodMiniStereoPairs = [v78 count];

    v79 = [v149 mediaSystems];
    v80 = [v79 na_filter:&__block_literal_global_31_102575];
    v9->_numHomePod2ndGenStereoPairs = [v80 count];

    v81 = [v149 mediaSystems];
    v82 = [v81 na_filter:&__block_literal_global_35_102576];
    v9->_numHomePodStereoPairs = [v82 count];

    v83 = [v148 triggers];
    v9->_numTriggers += [v83 count];
    v144 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v83, "count")}];
    v185 = 0u;
    v186 = 0u;
    v183 = 0u;
    v184 = 0u;
    v145 = v83;
    v151 = [v145 countByEnumeratingWithState:&v183 objects:v223 count:16];
    if (v151)
    {
      v143 = *v184;
      do
      {
        v84 = 0;
        do
        {
          if (*v184 != v143)
          {
            v85 = v84;
            objc_enumerationMutation(v145);
            v84 = v85;
          }

          v146 = v84;
          v86 = *(*(&v183 + 1) + 8 * v84);
          if ([v86 active])
          {
            ++v9->_numActiveTriggers;
          }

          if ([v86 triggerType] == 1)
          {
            ++v9->_numEventTriggers;
            v87 = v86;
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v88 = v87;
            }

            else
            {
              v88 = 0;
            }

            v89 = v88;

            v90 = [[HMDAnalyticsEventTriggerData alloc] initWithEventTrigger:v89 isAdding:0];
            if (v90)
            {
              [v144 addObject:v90];
            }
          }

          else if ([v86 triggerType] == 2)
          {
            ++v9->_numTimerTriggers;
          }

          v91 = [v86 actionSets];
          v181 = 0u;
          v182 = 0u;
          v179 = 0u;
          v180 = 0u;
          v154 = v91;
          v92 = [v154 countByEnumeratingWithState:&v179 objects:v222 count:16];
          if (v92)
          {
            v163 = *v180;
            do
            {
              for (jj = 0; jj != v92; ++jj)
              {
                if (*v180 != v163)
                {
                  objc_enumerationMutation(v154);
                }

                v94 = *(*(&v179 + 1) + 8 * jj);
                v175 = 0u;
                v176 = 0u;
                v177 = 0u;
                v178 = 0u;
                v95 = [v94 actions];
                v96 = [v95 countByEnumeratingWithState:&v175 objects:v221 count:16];
                if (v96)
                {
                  v97 = *v176;
                  do
                  {
                    for (kk = 0; kk != v96; ++kk)
                    {
                      if (*v176 != v97)
                      {
                        objc_enumerationMutation(v95);
                      }

                      v99 = *(*(&v175 + 1) + 8 * kk);
                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        ++v9->_numShortcuts;
                      }
                    }

                    v96 = [v95 countByEnumeratingWithState:&v175 objects:v221 count:16];
                  }

                  while (v96);
                }
              }

              v92 = [v154 countByEnumeratingWithState:&v179 objects:v222 count:16];
            }

            while (v92);
          }

          v84 = v146 + 1;
        }

        while ((v146 + 1) != v151);
        v151 = [v145 countByEnumeratingWithState:&v183 objects:v223 count:16];
      }

      while (v151);
    }

    v100 = [v144 copy];
    eventTriggers = v9->_eventTriggers;
    v9->_eventTriggers = v100;

    [v148 actionSets];
    v173 = 0u;
    v174 = 0u;
    v171 = 0u;
    v155 = v172 = 0u;
    v102 = [v155 countByEnumeratingWithState:&v171 objects:v220 count:16];
    if (v102)
    {
      v103 = *v172;
      do
      {
        for (mm = 0; mm != v102; ++mm)
        {
          if (*v172 != v103)
          {
            objc_enumerationMutation(v155);
          }

          v105 = [*(*(&v171 + 1) + 8 * mm) actions];
          v106 = [v105 count];

          if (v106)
          {
            ++v9->_numConfiguredScenes;
          }
        }

        v102 = [v155 countByEnumeratingWithState:&v171 objects:v220 count:16];
      }

      while (v102);
    }

    [(HMDHomeConfigurationLogEvent *)v9 setHomeConfigurationBitMasks];
    v107 = [v149 creationDate];
    v9->_homeCreationCohortWeek = [(HMDHomeConfigurationLogEvent *)v9 weeksSinceDate:v107 trimAtMaximumValue:13];

    v108 = [v149 firstHAPAccessoryAddedDate];
    v9->_firstHAPAccessoryAddedCohortWeek = [(HMDHomeConfigurationLogEvent *)v9 weeksSinceDate:v108 trimAtMaximumValue:13];

    v109 = [v149 accessoriesWithWalletKeySupport];
    v9->_numAccessoriesWithWalletKeySupported = [v109 count];

    v110 = [v149 walletKeyManager];
    v9->_hasHomeKeyInWallet = [v110 hasHomeKeyInWallet];

    v9->_isSmokeAlarmEnabled = [v148 isSmokeAlarmEnabled];
    v9->_isSiriPhraseOptionsHeySiriEnabled = [v148 isSiriPhraseOptionsHeySiriEnabled];
    v9->_isSiriPhraseOptionsJustSiriEnabled = [v148 isSiriPhraseOptionsJustSiriEnabled];
    if (*v142 == 1)
    {
      v9->_residentElectionBitMask |= 1uLL;
    }

    v111 = [v149 hapAccessories];
    v112 = [v111 na_filter:&__block_literal_global_43_102580];
    v9->_numACBAccessories = [v112 count];

    v113 = [v149 residentDeviceManager];
    v9->_isResidentSelectionEnabled = [v113 homeSupportsResidentSelection];

    v114 = [v149 residentDeviceManager];
    v9->_residentSelectionMode = [v114 residentSelectionMode];

    v115 = v9->_residentSelectionMode - 1;
    if (v115 <= 2)
    {
      v9->_residentElectionBitMask |= qword_22A587728[v115];
    }

    v169 = 0u;
    v170 = 0u;
    v167 = 0u;
    v168 = 0u;
    v152 = [v148 appleMediaAccessories];
    v116 = 0;
    v117 = [v152 countByEnumeratingWithState:&v167 objects:v219 count:16];
    if (v117)
    {
      v164 = 0;
      v118 = *v168;
      do
      {
        for (nn = 0; nn != v117; ++nn)
        {
          if (*v168 != v118)
          {
            objc_enumerationMutation(v152);
          }

          v120 = *(*(&v167 + 1) + 8 * nn);
          if (!v116 || ([*(*(&v167 + 1) + 8 * nn) softwareVersion], (v121 = objc_claimAutoreleasedReturnValue()) != 0) && (objc_msgSend(v120, "softwareVersion"), v122 = objc_claimAutoreleasedReturnValue(), v123 = objc_msgSend(v116, "isGreaterThanVersion:", v122), v122, v121, v123))
          {
            v124 = [v120 softwareVersion];

            v116 = v124;
          }

          v125 = [v120 device];
          v126 = [v149 primaryResident];
          v127 = [v126 device];
          v128 = [v125 isEqual:v127];

          if (v128)
          {
            v129 = [v120 softwareVersion];

            v164 = v129;
          }
        }

        v117 = [v152 countByEnumeratingWithState:&v167 objects:v219 count:16];
      }

      while (v117);
    }

    else
    {
      v164 = 0;
    }

    v130 = [v116 shortVersionString];
    oldestTVOSVersionInHome = v9->_oldestTVOSVersionInHome;
    v9->_oldestTVOSVersionInHome = v130;

    v132 = [v116 buildVersion];
    oldestTVOSBuildInHome = v9->_oldestTVOSBuildInHome;
    v9->_oldestTVOSBuildInHome = v132;

    v134 = [v164 shortVersionString];
    primaryResidentVersionInHome = v9->_primaryResidentVersionInHome;
    v9->_primaryResidentVersionInHome = v134;

    v136 = [v164 buildVersion];
    primaryResidentBuildInHome = v9->_primaryResidentBuildInHome;
    v9->_primaryResidentBuildInHome = v136;

    v138 = v9;
  }

  v139 = *MEMORY[0x277D85DE8];
  return v9;
}

uint64_t __79__HMDHomeConfigurationLogEvent_initWithDataSource_home_configuredWidgetsCount___block_invoke_8(uint64_t a1, void *a2)
{
  v2 = [a2 accessories];
  v3 = [v2 na_all:&__block_literal_global_37_102583];

  return v3;
}

BOOL __79__HMDHomeConfigurationLogEvent_initWithDataSource_home_configuredWidgetsCount___block_invoke_9(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  v5 = [v4 homePodVariant];

  return v5 == 1;
}

uint64_t __79__HMDHomeConfigurationLogEvent_initWithDataSource_home_configuredWidgetsCount___block_invoke_6(uint64_t a1, void *a2)
{
  v2 = [a2 accessories];
  v3 = [v2 na_all:&__block_literal_global_33_102586];

  return v3;
}

BOOL __79__HMDHomeConfigurationLogEvent_initWithDataSource_home_configuredWidgetsCount___block_invoke_7(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  v5 = [v4 homePodVariant];

  return v5 == 3;
}

uint64_t __79__HMDHomeConfigurationLogEvent_initWithDataSource_home_configuredWidgetsCount___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = [a2 accessories];
  v3 = [v2 na_all:&__block_literal_global_29_102589];

  return v3;
}

BOOL __79__HMDHomeConfigurationLogEvent_initWithDataSource_home_configuredWidgetsCount___block_invoke_5(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  v5 = [v4 homePodVariant];

  return v5 == 2;
}

BOOL __79__HMDHomeConfigurationLogEvent_initWithDataSource_home_configuredWidgetsCount___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  v5 = [v4 homePodVariant];

  return v5 == 1;
}

BOOL __79__HMDHomeConfigurationLogEvent_initWithDataSource_home_configuredWidgetsCount___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  v5 = [v4 homePodVariant];

  return v5 == 3;
}

BOOL __79__HMDHomeConfigurationLogEvent_initWithDataSource_home_configuredWidgetsCount___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  v5 = [v4 homePodVariant];

  return v5 == 2;
}

- (int64_t)weeksSinceDate:(id)a3 trimAtMaximumValue:(unint64_t)a4
{
  v5 = [(HMDHomeConfigurationLogEvent *)self daysSinceDate:a3 trimAtMaximumValue:0];
  if ((v5 & 0x8000000000000000) != 0)
  {
    return -1;
  }

  if (v5)
  {
    v6 = (v5 / 7 + 1);
  }

  else
  {
    v6 = 0;
  }

  if (v6 >= a4)
  {
    v8 = a4;
  }

  else
  {
    v8 = v6;
  }

  if (a4)
  {
    return v8;
  }

  else
  {
    return v6;
  }
}

- (int64_t)daysSinceDate:(id)a3 trimAtMaximumValue:(unint64_t)a4
{
  if (!a3)
  {
    return -1;
  }

  v5 = MEMORY[0x277CBEAA8];
  v6 = a3;
  v7 = [v5 now];
  [v7 timeIntervalSinceDate:v6];
  v9 = v8;

  v10 = v9 / 0x15180uLL;
  if (v9 < 0)
  {
    v10 = -1;
  }

  if (v10 >= a4)
  {
    v11 = a4;
  }

  else
  {
    v11 = v10;
  }

  if (a4)
  {
    return v11;
  }

  else
  {
    return v10;
  }
}

- (void)setHomeConfigurationBitMasks
{
  self->_homeCategoryBitMask = 0;
  self->_appleMediaCategoryBitMask = 0;
  self->_thirdPartyMediaCategoryBitMask = 0;
  self->_homeCategoryBitMask |= 1uLL;
  if ([(HMDHomeConfigurationLogEvent *)self numSmartHomeAccessories])
  {
    self->_homeCategoryBitMask |= 8uLL;
  }

  if ([(HMDHomeConfigurationLogEvent *)self numThirdPartyMediaAccessories])
  {
    self->_homeCategoryBitMask |= 2uLL;
    if ([(HMDHomeConfigurationLogEvent *)self numTelevisionServiceAccessories])
    {
      self->_thirdPartyMediaCategoryBitMask |= 1uLL;
    }

    if ([(HMDHomeConfigurationLogEvent *)self numThirdPartyAudioAccessories])
    {
      self->_thirdPartyMediaCategoryBitMask |= 2uLL;
    }
  }

  if ([(HMDHomeConfigurationLogEvent *)self numAppleMediaAccessories])
  {
    self->_homeCategoryBitMask |= 4uLL;
    if ([(HMDHomeConfigurationLogEvent *)self numAppleTVAccessories])
    {
      self->_appleMediaCategoryBitMask |= 1uLL;
    }

    if ([(HMDHomeConfigurationLogEvent *)self numHomePods]|| [(HMDHomeConfigurationLogEvent *)self numHomePodMinis]|| [(HMDHomeConfigurationLogEvent *)self numHomePod2ndGen])
    {
      self->_appleMediaCategoryBitMask |= 2uLL;
    }
  }
}

@end