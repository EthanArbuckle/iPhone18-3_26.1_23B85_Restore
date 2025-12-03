@interface HMDHomeConfigurationLogEvent
- (HMDHomeConfigurationLogEvent)initWithDataSource:(id)source home:(id)home configuredWidgetsCount:(int64_t)count;
- (HMDHomeConfigurationLogEvent)initWithIsOwnerUser:(BOOL)user isResidentAvailable:(BOOL)available isCurrentDeviceResidentEnabled:(BOOL)enabled isPrimaryResident:(BOOL)resident isCurrentDeviceLocalToHome:(BOOL)home isNetworkProtectionEnabled:(BOOL)protectionEnabled isUserRoeProvisioned:(BOOL)provisioned isResidentFirstEnabled:(BOOL)self0 isResidentElectionV2Enabled:(BOOL)self1 isSmokeAlarmEnabled:(BOOL)self2;
- (NSDictionary)coreAnalyticsEventDictionary;
- (id)initForUnitTesting;
- (int64_t)daysSinceDate:(id)date trimAtMaximumValue:(unint64_t)value;
- (int64_t)weeksSinceDate:(id)date trimAtMaximumValue:(unint64_t)value;
- (unint64_t)currentUserPrivilegeBitMask;
- (unint64_t)numTelevisionServiceAccessories;
- (void)setHomeConfigurationBitMasks;
- (void)updateConfigWithAccessory:(id)accessory reportNetworkProtectionMetrics:(BOOL)metrics networkProtectionEnabled:(BOOL)enabled hapServiceTypes:(id)types primaryHAPServiceTypes:(id)serviceTypes;
@end

@implementation HMDHomeConfigurationLogEvent

- (HMDHomeConfigurationLogEvent)initWithIsOwnerUser:(BOOL)user isResidentAvailable:(BOOL)available isCurrentDeviceResidentEnabled:(BOOL)enabled isPrimaryResident:(BOOL)resident isCurrentDeviceLocalToHome:(BOOL)home isNetworkProtectionEnabled:(BOOL)protectionEnabled isUserRoeProvisioned:(BOOL)provisioned isResidentFirstEnabled:(BOOL)self0 isResidentElectionV2Enabled:(BOOL)self1 isSmokeAlarmEnabled:(BOOL)self2
{
  result = [(HMDHomeConfigurationLogEvent *)self initForUnitTesting];
  if (result)
  {
    result->_ownerUser = user;
    result->_isResidentAvailable = available;
    result->_isCurrentDeviceResidentEnabled = enabled;
    result->_isCurrentDevicePrimaryResident = resident;
    result->_isCurrentDeviceLocalToHome = home;
    result->_networkProtectionEnabled = protectionEnabled;
    result->_hasHomeKeyInWallet = provisioned;
    result->_isResidentFirstEnabled = firstEnabled;
    result->_isResidentElectionV2Enabled = v2Enabled;
    result->_isSmokeAlarmEnabled = alarmEnabled;
  }

  return result;
}

- (id)initForUnitTesting
{
  uUID = [MEMORY[0x277CCAD78] UUID];
  v6.receiver = self;
  v6.super_class = HMDHomeConfigurationLogEvent;
  v4 = [(HMMHomeLogEvent *)&v6 initWithHomeUUID:uUID];

  return v4;
}

- (NSDictionary)coreAnalyticsEventDictionary
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDHomeConfigurationLogEvent homeIndex](self, "homeIndex")}];
  [v3 setObject:v4 forKeyedSubscript:@"homeIndex"];

  homeUUIDString = [(HMMHomeLogEvent *)self homeUUIDString];
  [v3 setObject:homeUUIDString forKeyedSubscript:@"homeUUID"];

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

  numBSPs = [(HMDHomeConfigurationLogEvent *)self numBSPs];

  if (numBSPs)
  {
    numBSPs2 = [(HMDHomeConfigurationLogEvent *)self numBSPs];
    [v3 setObject:numBSPs2 forKeyedSubscript:@"numBSPs"];
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
  currentUserPrivilege = [(HMDHomeConfigurationLogEvent *)self currentUserPrivilege];
  if (currentUserPrivilege - 1 > 4)
  {
    return 1;
  }

  else
  {
    return qword_22A587740[currentUserPrivilege - 1];
  }
}

- (unint64_t)numTelevisionServiceAccessories
{
  numTelevisionAccessories = [(HMDHomeConfigurationLogEvent *)self numTelevisionAccessories];
  v4 = [(HMDHomeConfigurationLogEvent *)self numTelevisionSetTopBoxAccessories]+ numTelevisionAccessories;
  return v4 + [(HMDHomeConfigurationLogEvent *)self numTelevisionStreamingStickAccessories];
}

- (void)updateConfigWithAccessory:(id)accessory reportNetworkProtectionMetrics:(BOOL)metrics networkProtectionEnabled:(BOOL)enabled hapServiceTypes:(id)types primaryHAPServiceTypes:(id)serviceTypes
{
  enabledCopy = enabled;
  metricsCopy = metrics;
  v150 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  typesCopy = types;
  serviceTypesCopy = serviceTypes;
  v15 = accessoryCopy;
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
    hostAccessory = [v17 hostAccessory];
    objc_opt_class();
    v25 = (objc_opt_isKindOfClass() & 1) != 0 ? hostAccessory : 0;
    v26 = v25;

    if (v26)
    {
      goto LABEL_196;
    }
  }

  v126 = serviceTypesCopy;
  if (!metricsCopy)
  {
    goto LABEL_36;
  }

  if ([v130 wiFiCredentialType] == 3)
  {
    ++self->_numAccessoriesWiFiPPSKCredential;
  }

  if (!enabledCopy)
  {
    category = [v17 category];
    isWiFiRouterAccessoryCategory = [category isWiFiRouterAccessoryCategory];

    if (isWiFiRouterAccessoryCategory)
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
    certificationStatus = [v17 certificationStatus];
    if (certificationStatus == 2)
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
        metric_threadCapabilities = [v17 metric_threadCapabilities];
        metricLoggingTransportDetails = [v17 metricLoggingTransportDetails];
        isThreadAccessory = [metricLoggingTransportDetails isThreadAccessory];

        if ([v17 hasIPLink] && (objc_msgSend(v17, "isPrimary") & 1) != 0)
        {
          v71 = &OBJC_IVAR___HMDHomeConfigurationLogEvent__numIPAccessories;
        }

        else
        {
          if (![v17 hasBTLELink] || !objc_msgSend(v17, "isPrimary") || (++self->_numBTAccessories, (isThreadAccessory & 1) != 0))
          {
LABEL_94:
            if ([v17 custom1WoBLE])
            {
              ++self->_numWOBLEAccessories;
            }

            if ([v17 supportsWoL])
            {
              ++self->_numWOLANAccessories;
              connectivityInfo = [v17 connectivityInfo];
              woWLANVersion = [connectivityInfo woWLANVersion];

              connectivityInfo2 = [v17 connectivityInfo];
              woWLANWakeUpTypeSupport = [connectivityInfo2 woWLANWakeUpTypeSupport];

              if (woWLANVersion == 2)
              {
                if (woWLANWakeUpTypeSupport == 2)
                {
                  v76 = &OBJC_IVAR___HMDHomeConfigurationLogEvent__numWOLANV2DarkWakeAccessories;
                }

                else
                {
                  if (woWLANWakeUpTypeSupport != 1)
                  {
                    goto LABEL_123;
                  }

                  v76 = &OBJC_IVAR___HMDHomeConfigurationLogEvent__numWOLANV2SystemWakeAccessories;
                }
              }

              else
              {
                if (woWLANVersion != 1)
                {
                  goto LABEL_123;
                }

                if (woWLANWakeUpTypeSupport == 2)
                {
                  v76 = &OBJC_IVAR___HMDHomeConfigurationLogEvent__numWOLANV1DarkWakeAccessories;
                }

                else
                {
                  if (woWLANWakeUpTypeSupport != 1)
                  {
                    goto LABEL_123;
                  }

                  v76 = &OBJC_IVAR___HMDHomeConfigurationLogEvent__numWOLANV1SystemWakeAccessories;
                }
              }

              ++*(&self->super.super.super.isa + *v76);
            }

LABEL_123:
            if (isThreadAccessory)
            {
              ++self->_numThreadAccessories;
              if (metric_threadCapabilities)
              {
                self->_numThreadAccessoryMinCapable += metric_threadCapabilities & 1;
                self->_numThreadAccessorySleepCapable += (metric_threadCapabilities >> 1) & 1;
                self->_numThreadAccessoryFullCapable += (metric_threadCapabilities >> 2) & 1;
                self->_numThreadAccessoryRouterCapable += (metric_threadCapabilities >> 3) & 1;
                v87 = (metric_threadCapabilities >> 4) & 1;
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
            services = [v17 services];
            v90 = [services countByEnumeratingWithState:&v131 objects:v147 count:16];
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
                    objc_enumerationMutation(services);
                  }

                  type = [*(*(&v131 + 1) + 8 * i) type];
                  [typesCopy addObject:type];
                }

                v91 = [services countByEnumeratingWithState:&v131 objects:v147 count:16];
              }

              while (v91);
            }

            v95 = [HMDMetricsUtilities primaryServiceTypeForHAPAccessory:v17];
            serviceTypesCopy = v126;
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
              if (certificationStatus == 2)
              {
                ++self->_numCertifiedTargetControllers;
              }

              if (([v17 isPrimary] & 1) == 0)
              {
                ++self->_numBridgedTargetControllers;
                if (certificationStatus == 2)
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

              cameraProfileSettingsManager = [v17 cameraProfileSettingsManager];
              if ([cameraProfileSettingsManager isRecordingEnabled])
              {
                ++self->_numCameraAccessoriesRecordingEnabled;
              }

              currentSettings = [cameraProfileSettingsManager currentSettings];
              notificationSettings = [currentSettings notificationSettings];
              isReachabilityEventNotificationEnabled = [notificationSettings isReachabilityEventNotificationEnabled];

              if (isReachabilityEventNotificationEnabled)
              {
                ++self->_numCameraAccessoriesReachabilityNotificationEnabled;
              }

              currentSettings2 = [cameraProfileSettingsManager currentSettings];
              activityZones = [currentSettings2 activityZones];
              v103 = [activityZones count];

              if (v103)
              {
                ++self->_numCameraAccessoriesWithActivityZonesEnabled;
              }

              serviceTypesCopy = v126;
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
                siriEndpointProfile = [v17 siriEndpointProfile];
                v115 = siriEndpointProfile;
                if (siriEndpointProfile && ([siriEndpointProfile siriTouchToUse] == 1 || objc_msgSend(v115, "siriListening") == 1))
                {
                  ++self->_numEnabledSiriEndpointAccessories;
                }
              }

              category2 = [v17 category];
              categoryType = [category2 categoryType];
              v118 = [categoryType isEqualToString:*MEMORY[0x277CCE890]];

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

              services2 = [v17 services];
              self->_numServices += [services2 count];

              if (v81 == 3)
              {
                goto LABEL_192;
              }

              goto LABEL_194;
            }

            category3 = [v17 category];
            categoryType2 = [category3 categoryType];
            v106 = [categoryType2 isEqualToString:*MEMORY[0x277CCE920]];

            if (v106)
            {
              v107 = &OBJC_IVAR___HMDHomeConfigurationLogEvent__numTelevisionAccessories;
            }

            else
            {
              category4 = [v17 category];
              categoryType3 = [category4 categoryType];
              v110 = [categoryType3 isEqualToString:*MEMORY[0x277CCE930]];

              if (v110)
              {
                v107 = &OBJC_IVAR___HMDHomeConfigurationLogEvent__numTelevisionSetTopBoxAccessories;
              }

              else
              {
                category5 = [v17 category];
                categoryType4 = [category5 categoryType];
                v113 = [categoryType4 isEqualToString:*MEMORY[0x277CCE938]];

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
      firmwareUpdateProfile = [v17 firmwareUpdateProfile];

      if (firmwareUpdateProfile)
      {
        ++self->_numCHIPAccessoriesFirmwareUpdateEligible;
      }

      v137 = 0u;
      v138 = 0u;
      v135 = 0u;
      v136 = 0u;
      lightProfiles = [v17 lightProfiles];
      v46 = [lightProfiles countByEnumeratingWithState:&v135 objects:v148 count:16];
      if (v46)
      {
        v47 = v46;
        v123 = v17;
        v124 = typesCopy;
        v48 = *v136;
        do
        {
          for (j = 0; j != v47; ++j)
          {
            if (*v136 != v48)
            {
              objc_enumerationMutation(lightProfiles);
            }

            v50 = *(*(&v135 + 1) + 8 * j);
            if ([v50 isNaturalLightingSupported])
            {
              ++self->_numMatterLightProfilesWithNaturalLightingSupported;
            }

            date = [MEMORY[0x277CBEAA8] date];
            v52 = [date dateByAddingTimeInterval:-86400.0];

            if (([v50 isNaturalLightingEnabled] & 1) != 0 || (objc_msgSend(v50, "mostRecentNaturalLightingEnabledDate"), v53 = objc_claimAutoreleasedReturnValue(), v54 = objc_msgSend(v53, "compare:", v52), v53, v54 == 1))
            {
              ++self->_numMatterLightProfilesWithNaturalLightingEnabled;
            }

            mostRecentNaturalLightingUsedDate = [v50 mostRecentNaturalLightingUsedDate];
            v56 = [mostRecentNaturalLightingUsedDate compare:v52];

            if (v56 == 1)
            {
              ++self->_numMatterLightProfilesWithNaturalLightingUsed;
            }
          }

          v47 = [lightProfiles countByEnumeratingWithState:&v135 objects:v148 count:16];
        }

        while (v47);
        goto LABEL_84;
      }

LABEL_85:

      goto LABEL_86;
    }

    ++self->_numHAPAccessories;
    firmwareUpdateProfile2 = [v17 firmwareUpdateProfile];

    if (firmwareUpdateProfile2)
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
        lightProfiles = [v17 lightProfiles];
        v57 = [lightProfiles countByEnumeratingWithState:&v139 objects:v149 count:16];
        if (v57)
        {
          v58 = v57;
          v123 = v17;
          v124 = typesCopy;
          v59 = *v140;
          do
          {
            for (k = 0; k != v58; ++k)
            {
              if (*v140 != v59)
              {
                objc_enumerationMutation(lightProfiles);
              }

              v61 = *(*(&v139 + 1) + 8 * k);
              if ([v61 isNaturalLightingSupported])
              {
                ++self->_numLightProfilesWithNaturalLightingSupported;
              }

              date2 = [MEMORY[0x277CBEAA8] date];
              v63 = [date2 dateByAddingTimeInterval:-86400.0];

              if (([v61 isNaturalLightingEnabled] & 1) != 0 || (objc_msgSend(v61, "mostRecentNaturalLightingEnabledDate"), v64 = objc_claimAutoreleasedReturnValue(), v65 = objc_msgSend(v64, "compare:", v63), v64, v65 == 1))
              {
                ++self->_numLightProfilesWithNaturalLightingEnabled;
              }

              mostRecentNaturalLightingUsedDate2 = [v61 mostRecentNaturalLightingUsedDate];
              v67 = [mostRecentNaturalLightingUsedDate2 compare:v63];

              if (v67 == 1)
              {
                ++self->_numLightProfilesWithNaturalLightingUsed;
              }
            }

            v58 = [lightProfiles countByEnumeratingWithState:&v139 objects:v149 count:16];
          }

          while (v58);
LABEL_84:
          v17 = v123;
          typesCopy = v124;
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

    serviceTypesCopy = v126;
    goto LABEL_36;
  }

  networkClientIdentifier = [v27 networkClientIdentifier];

  if (!networkClientIdentifier)
  {
LABEL_203:

    v31 = 408;
    goto LABEL_204;
  }

  targetNetworkProtectionMode = [v27 targetNetworkProtectionMode];
  currentNetworkProtectionMode = [v27 currentNetworkProtectionMode];
  if (!targetNetworkProtectionMode && currentNetworkProtectionMode == 4)
  {

    v31 = 416;
    goto LABEL_204;
  }

  if (targetNetworkProtectionMode || currentNetworkProtectionMode != 2)
  {
    if (targetNetworkProtectionMode == 1 && currentNetworkProtectionMode == 1)
    {

      v31 = 448;
      goto LABEL_204;
    }

    if (targetNetworkProtectionMode == 3 && currentNetworkProtectionMode == 3)
    {

      v31 = 440;
      goto LABEL_204;
    }

    goto LABEL_203;
  }

  networkClientLAN = [v27 networkClientLAN];

  if (networkClientLAN == 3)
  {
    v31 = 432;
  }

  else
  {
    v31 = 424;
  }

LABEL_204:
  ++*(&self->super.super.super.isa + v31);
  serviceTypesCopy = v126;
  if (v17)
  {
    goto LABEL_37;
  }

LABEL_29:
  if (v129)
  {
    category6 = [v129 category];
    categoryType5 = [category6 categoryType];
    v36 = *MEMORY[0x277CCE870];
    v37 = HMFEqualObjects();

    if (v37)
    {
      ++self->_numAppleTVAccessories;
      capabilities = [v129 capabilities];
      supportsThreadBorderRouter = [capabilities supportsThreadBorderRouter];

      if ((supportsThreadBorderRouter & 1) == 0)
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
      fallbackMediaUserType = [v129 fallbackMediaUserType];
      if ((fallbackMediaUserType - 1) < 3)
      {
        self->_currentMediaAccessoryFallbackMediaUserType = fallbackMediaUserType;
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
    matterAdapter = [v127 matterAdapter];
    endpointToDeviceTypesMap = [matterAdapter endpointToDeviceTypesMap];
    v80 = [endpointToDeviceTypesMap na_filter:&__block_literal_global_249];
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
  selfCopy = self;
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
  serviceTypesCopy = v126;
LABEL_196:

  v122 = *MEMORY[0x277D85DE8];
}

- (HMDHomeConfigurationLogEvent)initWithDataSource:(id)source home:(id)home configuredWidgetsCount:(int64_t)count
{
  v230 = *MEMORY[0x277D85DE8];
  sourceCopy = source;
  homeCopy = home;
  uuid = [sourceCopy uuid];
  v207.receiver = self;
  v207.super_class = HMDHomeConfigurationLogEvent;
  v9 = [(HMMHomeLogEvent *)&v207 initWithHomeUUID:uuid];

  if (v9)
  {
    v9->_numConfiguredWidgets = count;
    v162 = [MEMORY[0x277CBEB58] set];
    v160 = [MEMORY[0x277CBEB58] set];
    v9->_isCurrentDeviceResidentEnabled = 0;
    enabledResidents = [sourceCopy enabledResidents];
    v9->_numResidentsEnabled = [enabledResidents count];
    v203 = 0u;
    v204 = 0u;
    v205 = 0u;
    v206 = 0u;
    obj = enabledResidents;
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

    v9->_isResidentAvailable = [homeCopy _residentDeviceAvailable];
    v9->_isResidentFirstEnabled = 1;
    residentDeviceManager = [homeCopy residentDeviceManager];
    if ([residentDeviceManager homeSupportsResidentSelection])
    {
      p_isResidentElectionV2Enabled = &v9->_isResidentElectionV2Enabled;
      v9->_isResidentElectionV2Enabled = 0;
    }

    else
    {
      residentDeviceManager2 = [homeCopy residentDeviceManager];
      p_isResidentElectionV2Enabled = &v9->_isResidentElectionV2Enabled;
      v9->_isResidentElectionV2Enabled = [residentDeviceManager2 isResidentElectionV2Enabled];
    }

    currentDevice = [sourceCopy currentDevice];
    capabilities = [currentDevice capabilities];
    v9->_isCurrentDeviceResidentCapable = [capabilities isResidentCapable];

    primaryResident = [homeCopy primaryResident];
    device = [primaryResident device];
    v9->_isCurrentDevicePrimaryResident = [device isEqual:currentDevice];

    v9->_isCurrentDeviceLocalToHome = [homeCopy homeLocation] == 1;
    v9->_isAutomaticThirdPartyAccessorySoftwareUpdateEnabled = [homeCopy isAutomaticThirdPartyAccessorySoftwareUpdateEnabled];
    availableBorderRouters = [homeCopy availableBorderRouters];
    v9->_numThreadBorderRouters = [availableBorderRouters unsignedIntegerValue];

    triggerOwnedActionSets = [sourceCopy triggerOwnedActionSets];
    v9->_numTriggerOwnedConfiguredScenes = [triggerOwnedActionSets count];

    actionSets = [sourceCopy actionSets];
    v9->_numScenes = [actionSets count];

    rooms = [homeCopy rooms];
    v9->_numRooms = [rooms count] + 1;

    zones = [homeCopy zones];
    v9->_numZones = [zones count];

    serviceGroups = [homeCopy serviceGroups];
    v9->_numAccessoryServiceGroups = [serviceGroups count];

    availableBSPsCount = [homeCopy availableBSPsCount];
    numBSPs = v9->_numBSPs;
    v9->_numBSPs = availableBSPsCount;

    isOwnerUser = [homeCopy isOwnerUser];
    if ([homeCopy networkRouterSupport])
    {
      protectionMode = [homeCopy protectionMode];
      v158 = protectionMode == 1;
      v29 = isOwnerUser;
      if (protectionMode != 1)
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
    users = [sourceCopy users];
    v31 = [users countByEnumeratingWithState:&v199 objects:v227 count:16];
    if (v31)
    {
      v32 = *v200;
      do
      {
        for (j = 0; j != v31; ++j)
        {
          if (*v200 != v32)
          {
            objc_enumerationMutation(users);
          }

          v34 = *(*(&v199 + 1) + 8 * j);
          if (([v34 isRemoteGateway] & 1) == 0)
          {
            privilege = [v34 privilege];
            if (privilege <= 2)
            {
              if (privilege == 1)
              {
                v37 = 2;
              }

              else
              {
                if (privilege != 2)
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
              switch(privilege)
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
            accessCode = [v34 accessCode];

            if (accessCode)
            {
              ++v9->_ownerPerspectiveNumUsersWithAccessCode;
            }

            continue;
          }
        }

        v31 = [users countByEnumeratingWithState:&v199 objects:v227 count:16];
      }

      while (v31);
    }

    users2 = [sourceCopy users];
    array = [MEMORY[0x277CBEB18] array];
    v217 = 0u;
    v218 = 0u;
    v215 = 0u;
    v216 = 0u;
    v150 = users2;
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
          array2 = [MEMORY[0x277CBEB18] array];
          [(HMDAnalyticsMultiUserSettings *)v46 setMultiUserSettingsValuesByKeyPaths:array2];

          privateSettingValuesByKeyPath = [v45 privateSettingValuesByKeyPath];
          v49 = [privateSettingValuesByKeyPath mutableCopy];

          sharedSettingValuesByKeyPath = [v45 sharedSettingValuesByKeyPath];
          [v49 addEntriesFromDictionary:sharedSettingValuesByKeyPath];

          if ([v49 count])
          {
            v209 = 0;
            v210 = &v209;
            v211 = 0x3032000000;
            v212 = __Block_byref_object_copy__102567;
            v213 = __Block_byref_object_dispose__102568;
            array3 = [MEMORY[0x277CBEB18] array];
            v208[0] = MEMORY[0x277D85DD0];
            v208[1] = 3221225472;
            v208[2] = ___legacyMultiUserSettings_block_invoke;
            v208[3] = &unk_278681758;
            v208[4] = &v209;
            [v49 enumerateKeysAndObjectsUsingBlock:v208];
            v51 = [v210[5] copy];
            [(HMDAnalyticsMultiUserSettings *)v46 setMultiUserSettingsValuesByKeyPaths:v51];

            [array addObject:v46];
            _Block_object_dispose(&v209, 8);
          }
        }

        v42 = [v150 countByEnumeratingWithState:&v215 objects:v229 count:16];
      }

      while (v42);
    }

    v52 = [array copy];
    multiUserSettings = v9->_multiUserSettings;
    v9->_multiUserSettings = v52;

    v9->_ownerUser = [sourceCopy isOwnerUser];
    currentUser = [sourceCopy currentUser];
    v9->_currentUserPrivilege = [currentUser privilege];

    v9->_accessToHomeAllowed = [sourceCopy isAccessToHomeAllowed];
    accessories = [sourceCopy accessories];
    v9->_numAccessories = [accessories count];
    v195 = 0u;
    v196 = 0u;
    v197 = 0u;
    v198 = 0u;
    v157 = accessories;
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

          [(HMDHomeConfigurationLogEvent *)v9 updateConfigWithAccessory:*(*(&v195 + 1) + 8 * m) reportNetworkProtectionMetrics:isOwnerUser networkProtectionEnabled:v158 hapServiceTypes:v162 primaryHAPServiceTypes:v160];
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

    accessories2 = [sourceCopy accessories];
    v71 = [accessories2 na_filter:&__block_literal_global_102571];
    v9->_numHomePodMinis = [v71 count];

    accessories3 = [sourceCopy accessories];
    v73 = [accessories3 na_filter:&__block_literal_global_22_102572];
    v9->_numHomePod2ndGen = [v73 count];

    accessories4 = [sourceCopy accessories];
    v75 = [accessories4 na_filter:&__block_literal_global_24_102573];
    v9->_numHomePods = [v75 count];

    mediaSystems = [homeCopy mediaSystems];
    v9->_numMediaSystems = [mediaSystems count];

    mediaSystems2 = [homeCopy mediaSystems];
    v78 = [mediaSystems2 na_filter:&__block_literal_global_27_102574];
    v9->_numHomePodMiniStereoPairs = [v78 count];

    mediaSystems3 = [homeCopy mediaSystems];
    v80 = [mediaSystems3 na_filter:&__block_literal_global_31_102575];
    v9->_numHomePod2ndGenStereoPairs = [v80 count];

    mediaSystems4 = [homeCopy mediaSystems];
    v82 = [mediaSystems4 na_filter:&__block_literal_global_35_102576];
    v9->_numHomePodStereoPairs = [v82 count];

    triggers = [sourceCopy triggers];
    v9->_numTriggers += [triggers count];
    v144 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(triggers, "count")}];
    v185 = 0u;
    v186 = 0u;
    v183 = 0u;
    v184 = 0u;
    v145 = triggers;
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

          actionSets2 = [v86 actionSets];
          v181 = 0u;
          v182 = 0u;
          v179 = 0u;
          v180 = 0u;
          v154 = actionSets2;
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
                actions = [v94 actions];
                v96 = [actions countByEnumeratingWithState:&v175 objects:v221 count:16];
                if (v96)
                {
                  v97 = *v176;
                  do
                  {
                    for (kk = 0; kk != v96; ++kk)
                    {
                      if (*v176 != v97)
                      {
                        objc_enumerationMutation(actions);
                      }

                      v99 = *(*(&v175 + 1) + 8 * kk);
                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        ++v9->_numShortcuts;
                      }
                    }

                    v96 = [actions countByEnumeratingWithState:&v175 objects:v221 count:16];
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

    [sourceCopy actionSets];
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

          actions2 = [*(*(&v171 + 1) + 8 * mm) actions];
          v106 = [actions2 count];

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
    creationDate = [homeCopy creationDate];
    v9->_homeCreationCohortWeek = [(HMDHomeConfigurationLogEvent *)v9 weeksSinceDate:creationDate trimAtMaximumValue:13];

    firstHAPAccessoryAddedDate = [homeCopy firstHAPAccessoryAddedDate];
    v9->_firstHAPAccessoryAddedCohortWeek = [(HMDHomeConfigurationLogEvent *)v9 weeksSinceDate:firstHAPAccessoryAddedDate trimAtMaximumValue:13];

    accessoriesWithWalletKeySupport = [homeCopy accessoriesWithWalletKeySupport];
    v9->_numAccessoriesWithWalletKeySupported = [accessoriesWithWalletKeySupport count];

    walletKeyManager = [homeCopy walletKeyManager];
    v9->_hasHomeKeyInWallet = [walletKeyManager hasHomeKeyInWallet];

    v9->_isSmokeAlarmEnabled = [sourceCopy isSmokeAlarmEnabled];
    v9->_isSiriPhraseOptionsHeySiriEnabled = [sourceCopy isSiriPhraseOptionsHeySiriEnabled];
    v9->_isSiriPhraseOptionsJustSiriEnabled = [sourceCopy isSiriPhraseOptionsJustSiriEnabled];
    if (*v142 == 1)
    {
      v9->_residentElectionBitMask |= 1uLL;
    }

    hapAccessories = [homeCopy hapAccessories];
    v112 = [hapAccessories na_filter:&__block_literal_global_43_102580];
    v9->_numACBAccessories = [v112 count];

    residentDeviceManager3 = [homeCopy residentDeviceManager];
    v9->_isResidentSelectionEnabled = [residentDeviceManager3 homeSupportsResidentSelection];

    residentDeviceManager4 = [homeCopy residentDeviceManager];
    v9->_residentSelectionMode = [residentDeviceManager4 residentSelectionMode];

    v115 = v9->_residentSelectionMode - 1;
    if (v115 <= 2)
    {
      v9->_residentElectionBitMask |= qword_22A587728[v115];
    }

    v169 = 0u;
    v170 = 0u;
    v167 = 0u;
    v168 = 0u;
    appleMediaAccessories = [sourceCopy appleMediaAccessories];
    v116 = 0;
    v117 = [appleMediaAccessories countByEnumeratingWithState:&v167 objects:v219 count:16];
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
            objc_enumerationMutation(appleMediaAccessories);
          }

          v120 = *(*(&v167 + 1) + 8 * nn);
          if (!v116 || ([*(*(&v167 + 1) + 8 * nn) softwareVersion], (v121 = objc_claimAutoreleasedReturnValue()) != 0) && (objc_msgSend(v120, "softwareVersion"), v122 = objc_claimAutoreleasedReturnValue(), v123 = objc_msgSend(v116, "isGreaterThanVersion:", v122), v122, v121, v123))
          {
            softwareVersion = [v120 softwareVersion];

            v116 = softwareVersion;
          }

          device2 = [v120 device];
          primaryResident2 = [homeCopy primaryResident];
          device3 = [primaryResident2 device];
          v128 = [device2 isEqual:device3];

          if (v128)
          {
            softwareVersion2 = [v120 softwareVersion];

            v164 = softwareVersion2;
          }
        }

        v117 = [appleMediaAccessories countByEnumeratingWithState:&v167 objects:v219 count:16];
      }

      while (v117);
    }

    else
    {
      v164 = 0;
    }

    shortVersionString = [v116 shortVersionString];
    oldestTVOSVersionInHome = v9->_oldestTVOSVersionInHome;
    v9->_oldestTVOSVersionInHome = shortVersionString;

    buildVersion = [v116 buildVersion];
    oldestTVOSBuildInHome = v9->_oldestTVOSBuildInHome;
    v9->_oldestTVOSBuildInHome = buildVersion;

    shortVersionString2 = [v164 shortVersionString];
    primaryResidentVersionInHome = v9->_primaryResidentVersionInHome;
    v9->_primaryResidentVersionInHome = shortVersionString2;

    buildVersion2 = [v164 buildVersion];
    primaryResidentBuildInHome = v9->_primaryResidentBuildInHome;
    v9->_primaryResidentBuildInHome = buildVersion2;

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

- (int64_t)weeksSinceDate:(id)date trimAtMaximumValue:(unint64_t)value
{
  v5 = [(HMDHomeConfigurationLogEvent *)self daysSinceDate:date trimAtMaximumValue:0];
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

  if (v6 >= value)
  {
    valueCopy = value;
  }

  else
  {
    valueCopy = v6;
  }

  if (value)
  {
    return valueCopy;
  }

  else
  {
    return v6;
  }
}

- (int64_t)daysSinceDate:(id)date trimAtMaximumValue:(unint64_t)value
{
  if (!date)
  {
    return -1;
  }

  v5 = MEMORY[0x277CBEAA8];
  dateCopy = date;
  v7 = [v5 now];
  [v7 timeIntervalSinceDate:dateCopy];
  v9 = v8;

  v10 = v9 / 0x15180uLL;
  if (v9 < 0)
  {
    v10 = -1;
  }

  if (v10 >= value)
  {
    valueCopy = value;
  }

  else
  {
    valueCopy = v10;
  }

  if (value)
  {
    return valueCopy;
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