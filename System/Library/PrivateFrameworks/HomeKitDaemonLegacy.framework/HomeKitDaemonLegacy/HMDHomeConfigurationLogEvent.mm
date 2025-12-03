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
    v9 = &unk_286628390;
  }

  else
  {
    v9 = &unk_2866283A8;
  }

  [v3 setObject:v9 forKeyedSubscript:@"isOwnerUser"];
  v10 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDHomeConfigurationLogEvent isOwnerUser](self, "isOwnerUser")}];
  [v3 setObject:v10 forKeyedSubscript:@"isOwnerUserBool"];

  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDHomeConfigurationLogEvent currentUserPrivilege](self, "currentUserPrivilege")}];
  [v3 setObject:v11 forKeyedSubscript:@"currentUserPrivilege"];

  if ([(HMDHomeConfigurationLogEvent *)self isAccessToHomeAllowed])
  {
    v12 = &unk_286628390;
  }

  else
  {
    v12 = &unk_2866283A8;
  }

  [v3 setObject:v12 forKeyedSubscript:@"isAccessToHomeAllowed"];
  v13 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDHomeConfigurationLogEvent isAccessToHomeAllowed](self, "isAccessToHomeAllowed")}];
  [v3 setObject:v13 forKeyedSubscript:@"isAccessToHomeAllowedBool"];

  v14 = [MEMORY[0x277CCABB0] numberWithInt:{-[HMDHomeConfigurationLogEvent networkProtectionStatus](self, "networkProtectionStatus")}];
  [v3 setObject:v14 forKeyedSubscript:@"networkProtectionStatus"];

  if ([(HMDHomeConfigurationLogEvent *)self isResidentAvailable])
  {
    v15 = &unk_286628390;
  }

  else
  {
    v15 = &unk_2866283A8;
  }

  [v3 setObject:v15 forKeyedSubscript:@"isResidentAvailable"];
  v16 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDHomeConfigurationLogEvent isResidentAvailable](self, "isResidentAvailable")}];
  [v3 setObject:v16 forKeyedSubscript:@"isResidentAvailableBool"];

  if ([(HMDHomeConfigurationLogEvent *)self isAutomaticThirdPartyAccessorySoftwareUpdateEnabled])
  {
    v17 = &unk_286628390;
  }

  else
  {
    v17 = &unk_2866283A8;
  }

  [v3 setObject:v17 forKeyedSubscript:@"isAutomaticThirdPartyAccessorySoftwareUpdateEnabled"];
  v18 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDHomeConfigurationLogEvent isAutomaticThirdPartyAccessorySoftwareUpdateEnabled](self, "isAutomaticThirdPartyAccessorySoftwareUpdateEnabled")}];
  [v3 setObject:v18 forKeyedSubscript:@"isAutomaticThirdPartyAccessorySoftwareUpdateEnabledBool"];

  if ([(HMDHomeConfigurationLogEvent *)self isCurrentDevicePrimaryResident])
  {
    v19 = &unk_286628390;
  }

  else
  {
    v19 = &unk_2866283A8;
  }

  [v3 setObject:v19 forKeyedSubscript:@"isPrimaryResident"];
  v20 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDHomeConfigurationLogEvent isCurrentDevicePrimaryResident](self, "isCurrentDevicePrimaryResident")}];
  [v3 setObject:v20 forKeyedSubscript:@"isPrimaryResidentBool"];

  if ([(HMDHomeConfigurationLogEvent *)self isCurrentDeviceResidentEnabled])
  {
    v21 = &unk_286628390;
  }

  else
  {
    v21 = &unk_2866283A8;
  }

  [v3 setObject:v21 forKeyedSubscript:@"isCurrentDeviceResidentEnabled"];
  v22 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDHomeConfigurationLogEvent isCurrentDeviceResidentEnabled](self, "isCurrentDeviceResidentEnabled")}];
  [v3 setObject:v22 forKeyedSubscript:@"isCurrentDeviceResidentEnabledBool"];

  if ([(HMDHomeConfigurationLogEvent *)self isCurrentDeviceLocalToHome])
  {
    v23 = &unk_286628390;
  }

  else
  {
    v23 = &unk_2866283A8;
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
    v29 = &unk_286628390;
  }

  else
  {
    v29 = &unk_2866283A8;
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

  v88 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDHomeConfigurationLogEvent numCameraAccessories](self, "numCameraAccessories")}];
  [v3 setObject:v88 forKeyedSubscript:@"numCameraAccessories"];

  v89 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDHomeConfigurationLogEvent numCameraAccessoriesSupportRecording](self, "numCameraAccessoriesSupportRecording")}];
  [v3 setObject:v89 forKeyedSubscript:@"numCameraAccessoriesSupportRecording"];

  v90 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDHomeConfigurationLogEvent numCameraAccessoriesRecordingEnabled](self, "numCameraAccessoriesRecordingEnabled")}];
  [v3 setObject:v90 forKeyedSubscript:@"numCameraAccessoriesRecordingEnabled"];

  v91 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDHomeConfigurationLogEvent numCameraAccessoriesReachabilityNotificationEnabled](self, "numCameraAccessoriesReachabilityNotificationEnabled")}];
  [v3 setObject:v91 forKeyedSubscript:@"numCameraAccessoriesReachabilityNotificationEnabled"];

  v92 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDHomeConfigurationLogEvent numCameraAccessoriesWithActivityZonesEnabled](self, "numCameraAccessoriesWithActivityZonesEnabled")}];
  [v3 setObject:v92 forKeyedSubscript:@"numCameraAccessoriesWithActivityZonesEnabled"];

  v93 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDHomeConfigurationLogEvent numLightProfilesWithNaturalLightingSupported](self, "numLightProfilesWithNaturalLightingSupported")}];
  [v3 setObject:v93 forKeyedSubscript:@"numLightProfilesWithNaturalLightingSupported"];

  v94 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDHomeConfigurationLogEvent numLightProfilesWithNaturalLightingEnabled](self, "numLightProfilesWithNaturalLightingEnabled")}];
  [v3 setObject:v94 forKeyedSubscript:@"numLightProfilesWithNaturalLightingEnabled"];

  v95 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDHomeConfigurationLogEvent numLightProfilesWithNaturalLightingUsed](self, "numLightProfilesWithNaturalLightingUsed")}];
  [v3 setObject:v95 forKeyedSubscript:@"numLightProfilesWithNaturalLightingUsed"];

  v96 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDHomeConfigurationLogEvent numResidentsEnabled](self, "numResidentsEnabled")}];
  [v3 setObject:v96 forKeyedSubscript:@"numResidentsEnabled"];

  v97 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDHomeConfigurationLogEvent enabledResidentsDeviceCapabilities](self, "enabledResidentsDeviceCapabilities")}];
  [v3 setObject:v97 forKeyedSubscript:@"enabledResidentsDeviceCapabilities"];

  v98 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDHomeConfigurationLogEvent numTriggers](self, "numTriggers")}];
  [v3 setObject:v98 forKeyedSubscript:@"numTriggers"];

  v99 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDHomeConfigurationLogEvent numActiveTriggers](self, "numActiveTriggers")}];
  [v3 setObject:v99 forKeyedSubscript:@"numActiveTriggers"];

  v100 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDHomeConfigurationLogEvent numEventTriggers](self, "numEventTriggers")}];
  [v3 setObject:v100 forKeyedSubscript:@"numEventTriggers"];

  v101 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDHomeConfigurationLogEvent numTimerTriggers](self, "numTimerTriggers")}];
  [v3 setObject:v101 forKeyedSubscript:@"numTimerTriggers"];

  v102 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDHomeConfigurationLogEvent numShortcuts](self, "numShortcuts")}];
  [v3 setObject:v102 forKeyedSubscript:@"numShortcuts"];

  v103 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDHomeConfigurationLogEvent numScenes](self, "numScenes")}];
  [v3 setObject:v103 forKeyedSubscript:@"numScenes"];

  v104 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDHomeConfigurationLogEvent numConfiguredScenes](self, "numConfiguredScenes")}];
  [v3 setObject:v104 forKeyedSubscript:@"numConfiguredScenes"];

  v105 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDHomeConfigurationLogEvent numTriggerOwnedConfiguredScenes](self, "numTriggerOwnedConfiguredScenes")}];
  [v3 setObject:v105 forKeyedSubscript:@"numTriggerOwnedConfiguredScenes"];

  v106 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDHomeConfigurationLogEvent numTargetControllers](self, "numTargetControllers")}];
  [v3 setObject:v106 forKeyedSubscript:@"numTargetControllers"];

  v107 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDHomeConfigurationLogEvent numCertifiedTargetControllers](self, "numCertifiedTargetControllers")}];
  [v3 setObject:v107 forKeyedSubscript:@"numCertifiedTargetControllers"];

  v108 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDHomeConfigurationLogEvent numBridgedTargetControllers](self, "numBridgedTargetControllers")}];
  [v3 setObject:v108 forKeyedSubscript:@"numBridgedTargetControllers"];

  v109 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDHomeConfigurationLogEvent numCertifiedBridgedTargetControllers](self, "numCertifiedBridgedTargetControllers")}];
  [v3 setObject:v109 forKeyedSubscript:@"numCertifiedBridgedTargetControllers"];

  v110 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDHomeConfigurationLogEvent numUsers](self, "numUsers")}];
  [v3 setObject:v110 forKeyedSubscript:@"numUsers"];

  v111 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDHomeConfigurationLogEvent numAdmins](self, "numAdmins")}];
  [v3 setObject:v111 forKeyedSubscript:@"numAdmins"];

  v112 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDHomeConfigurationLogEvent numRestrictedGuests](self, "numRestrictedGuests")}];
  [v3 setObject:v112 forKeyedSubscript:@"numRestrictedGuests"];

  v113 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDHomeConfigurationLogEvent userPrivilegeBitMask](self, "userPrivilegeBitMask")}];
  [v3 setObject:v113 forKeyedSubscript:@"userPrivilegeBitMask"];

  v114 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDHomeConfigurationLogEvent numRooms](self, "numRooms")}];
  [v3 setObject:v114 forKeyedSubscript:@"numRooms"];

  v115 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDHomeConfigurationLogEvent numZones](self, "numZones")}];
  [v3 setObject:v115 forKeyedSubscript:@"numZones"];

  v116 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDHomeConfigurationLogEvent numServices](self, "numServices")}];
  [v3 setObject:v116 forKeyedSubscript:@"numServices"];

  v117 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDHomeConfigurationLogEvent numAccessoryServiceGroups](self, "numAccessoryServiceGroups")}];
  [v3 setObject:v117 forKeyedSubscript:@"numAccessoryServiceGroups"];

  v118 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDHomeConfigurationLogEvent homeCreationCohortWeek](self, "homeCreationCohortWeek")}];
  [v3 setObject:v118 forKeyedSubscript:@"homeCreationCohortWeek"];

  v119 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDHomeConfigurationLogEvent firstHAPAccessoryAddedCohortWeek](self, "firstHAPAccessoryAddedCohortWeek")}];
  [v3 setObject:v119 forKeyedSubscript:@"firstHAPAccessoryAddedCohortWeek"];

  v120 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDHomeConfigurationLogEvent numConfiguredWidgets](self, "numConfiguredWidgets")}];
  [v3 setObject:v120 forKeyedSubscript:@"numHomeWidgetsEnabled"];

  numBSPs = [(HMDHomeConfigurationLogEvent *)self numBSPs];

  if (numBSPs)
  {
    numBSPs2 = [(HMDHomeConfigurationLogEvent *)self numBSPs];
    [v3 setObject:numBSPs2 forKeyedSubscript:@"numBSPs"];
  }

  v123 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDHomeConfigurationLogEvent numWoLAccessories](self, "numWoLAccessories")}];
  [v3 setObject:v123 forKeyedSubscript:@"numWoLAccessories"];

  v124 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[HMDHomeConfigurationLogEvent databaseSize](self, "databaseSize")}];
  [v3 setObject:v124 forKeyedSubscript:@"databaseSize"];

  v125 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[HMDHomeConfigurationLogEvent metadataVersion](self, "metadataVersion")}];
  [v3 setObject:v125 forKeyedSubscript:@"metadataVersion"];

  v126 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDHomeConfigurationLogEvent numHAPLocks](self, "numHAPLocks")}];
  [v3 setObject:v126 forKeyedSubscript:@"numHAPLocks"];

  v127 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDHomeConfigurationLogEvent numMatterLocks](self, "numMatterLocks")}];
  [v3 setObject:v127 forKeyedSubscript:@"numMatterLocks"];

  v128 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDHomeConfigurationLogEvent numLocksWithAccessCodeSupported](self, "numLocksWithAccessCodeSupported")}];
  [v3 setObject:v128 forKeyedSubscript:@"numLocksWithAccessCodeSupported"];

  v129 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDHomeConfigurationLogEvent numLocksWithWalletKeySupported](self, "numLocksWithWalletKeySupported")}];
  [v3 setObject:v129 forKeyedSubscript:@"numLocksWithWalletKeySupported"];

  if ([(HMDHomeConfigurationLogEvent *)self isOwnerUser])
  {
    v130 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDHomeConfigurationLogEvent ownerPerspectiveNumUsersWithAccessCode](self, "ownerPerspectiveNumUsersWithAccessCode")}];
    [v3 setObject:v130 forKeyedSubscript:@"ownerPerspectiveNumUsersWithAccessCode"];
  }

  else
  {
    [v3 setObject:0 forKeyedSubscript:@"ownerPerspectiveNumUsersWithAccessCode"];
  }

  if ([(HMDHomeConfigurationLogEvent *)self hasHomeKeyInWallet])
  {
    v131 = &unk_286628390;
  }

  else
  {
    v131 = &unk_2866283A8;
  }

  [v3 setObject:v131 forKeyedSubscript:@"isWalletKeyProvisioned"];
  v132 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDHomeConfigurationLogEvent hasHomeKeyInWallet](self, "hasHomeKeyInWallet")}];
  [v3 setObject:v132 forKeyedSubscript:@"isWalletKeyProvisionedBool"];

  v133 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDHomeConfigurationLogEvent numAccessoriesWithWalletKeySupported](self, "numAccessoriesWithWalletKeySupported")}];
  [v3 setObject:v133 forKeyedSubscript:@"numRoeAccessories"];

  if ([(HMDHomeConfigurationLogEvent *)self hasHomeKeyInWallet])
  {
    v134 = &unk_286628390;
  }

  else
  {
    v134 = &unk_2866283A8;
  }

  [v3 setObject:v134 forKeyedSubscript:@"isUserRoeProvisioned"];
  v135 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDHomeConfigurationLogEvent hasHomeKeyInWallet](self, "hasHomeKeyInWallet")}];
  [v3 setObject:v135 forKeyedSubscript:@"isUserRoeProvisionedBool"];

  if ([(HMDHomeConfigurationLogEvent *)self isSmokeAlarmEnabled])
  {
    v136 = &unk_286628390;
  }

  else
  {
    v136 = &unk_2866283A8;
  }

  [v3 setObject:v136 forKeyedSubscript:@"isXoeEnabled"];
  v137 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDHomeConfigurationLogEvent isSmokeAlarmEnabled](self, "isSmokeAlarmEnabled")}];
  [v3 setObject:v137 forKeyedSubscript:@"isXoeEnabledBool"];

  if ([(HMDHomeConfigurationLogEvent *)self isSiriPhraseOptionsHeySiriEnabled])
  {
    v138 = &unk_286628390;
  }

  else
  {
    v138 = &unk_2866283A8;
  }

  [v3 setObject:v138 forKeyedSubscript:@"isSiriPhraseOptionsHeySiriEnabled"];
  v139 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDHomeConfigurationLogEvent isSiriPhraseOptionsHeySiriEnabled](self, "isSiriPhraseOptionsHeySiriEnabled")}];
  [v3 setObject:v139 forKeyedSubscript:@"isSiriPhraseOptionsHeySiriEnabledBool"];

  if ([(HMDHomeConfigurationLogEvent *)self isSiriPhraseOptionsJustSiriEnabled])
  {
    v140 = &unk_286628390;
  }

  else
  {
    v140 = &unk_2866283A8;
  }

  [v3 setObject:v140 forKeyedSubscript:@"isSiriPhraseOptionsJustSiriEnabled"];
  v141 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDHomeConfigurationLogEvent isSiriPhraseOptionsJustSiriEnabled](self, "isSiriPhraseOptionsJustSiriEnabled")}];
  [v3 setObject:v141 forKeyedSubscript:@"isSiriPhraseOptionsJustSiriEnabledBool"];

  v142 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDHomeConfigurationLogEvent residentElectionBitMask](self, "residentElectionBitMask")}];
  [v3 setObject:v142 forKeyedSubscript:@"residentElectionBitMask"];

  v143 = [v3 copy];

  return v143;
}

- (unint64_t)currentUserPrivilegeBitMask
{
  currentUserPrivilege = [(HMDHomeConfigurationLogEvent *)self currentUserPrivilege];
  if (currentUserPrivilege - 1 > 3)
  {
    return 1;
  }

  else
  {
    return qword_253D4BAF0[currentUserPrivilege - 1];
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
  v145 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  typesCopy = types;
  serviceTypesCopy = serviceTypes;
  v14 = accessoryCopy;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  v16 = v15;

  v17 = v14;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  v124 = v18;

  v19 = v17;
  v20 = typesCopy;
  v21 = v19;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v22 = v21;
  }

  else
  {
    v22 = 0;
  }

  v122 = v22;
  v125 = v21;

  if (v16)
  {
    [v16 hostAccessory];
    v24 = v23 = enabledCopy;
    objc_opt_class();
    v25 = (objc_opt_isKindOfClass() & 1) != 0 ? v24 : 0;
    v26 = v25;

    enabledCopy = v23;
    if (v26)
    {
      goto LABEL_190;
    }
  }

  if (metricsCopy)
  {
    if ([v125 wiFiCredentialType] == 3)
    {
      ++self->_numAccessoriesWiFiPPSKCredential;
    }

    if (enabledCopy)
    {
      v27 = v125;
      if ([v27 supportsNetworkProtection])
      {
        networkClientIdentifier = [v27 networkClientIdentifier];

        if (networkClientIdentifier)
        {
          targetNetworkProtectionMode = [v27 targetNetworkProtectionMode];
          currentNetworkProtectionMode = [v27 currentNetworkProtectionMode];
          if (!targetNetworkProtectionMode && currentNetworkProtectionMode == 4)
          {

            v31 = 400;
            goto LABEL_174;
          }

          if (!targetNetworkProtectionMode && currentNetworkProtectionMode == 2)
          {
            networkClientLAN = [v27 networkClientLAN];

            if (networkClientLAN == 3)
            {
              v31 = 416;
            }

            else
            {
              v31 = 408;
            }

LABEL_174:
            ++*(&self->super.super.super.isa + v31);
            if (!v16)
            {
              goto LABEL_175;
            }

LABEL_29:
            certificationStatus = [v16 certificationStatus];
            if (certificationStatus == 2)
            {
              v34 = &OBJC_IVAR___HMDHomeConfigurationLogEvent__numCertifiedAccessories;
            }

            else
            {
              if ([v16 certificationStatus] != 1)
              {
                goto LABEL_34;
              }

              v34 = &OBJC_IVAR___HMDHomeConfigurationLogEvent__numNotCertifiedAccessories;
            }

            ++*(&self->super.super.super.isa + *v34);
LABEL_34:
            if (![v16 supportsHAP])
            {
              if (![v16 supportsCHIP])
              {
LABEL_79:
                metric_threadCapabilities = [v16 metric_threadCapabilities];
                metricLoggingTransportDetails = [v16 metricLoggingTransportDetails];
                isThreadAccessory = [metricLoggingTransportDetails isThreadAccessory];

                if ([v16 hasIPLink] && (objc_msgSend(v16, "isPrimary") & 1) != 0)
                {
                  v64 = &OBJC_IVAR___HMDHomeConfigurationLogEvent__numIPAccessories;
                }

                else
                {
                  if (![v16 hasBTLELink] || !objc_msgSend(v16, "isPrimary") || (++self->_numBTAccessories, (isThreadAccessory & 1) != 0))
                  {
LABEL_87:
                    if ([v16 custom1WoBLE])
                    {
                      ++self->_numWOBLEAccessories;
                    }

                    if ([v16 supportsWoL])
                    {
                      ++self->_numWOLANAccessories;
                      connectivityInfo = [v16 connectivityInfo];
                      woWLANInfo = [connectivityInfo woWLANInfo];
                      wakeType = [woWLANInfo wakeType];

                      if (wakeType == 2)
                      {
                        v68 = &OBJC_IVAR___HMDHomeConfigurationLogEvent__numWOLANV1DarkWakeAccessories;
                      }

                      else
                      {
                        if (wakeType != 1)
                        {
                          goto LABEL_95;
                        }

                        v68 = &OBJC_IVAR___HMDHomeConfigurationLogEvent__numWOLANV1SystemWakeAccessories;
                      }

                      ++*(&self->super.super.super.isa + *v68);
                    }

LABEL_95:
                    if (isThreadAccessory)
                    {
                      ++self->_numThreadAccessories;
                      if (metric_threadCapabilities)
                      {
                        self->_numThreadAccessoryMinCapable += metric_threadCapabilities & 1;
                        self->_numThreadAccessorySleepCapable += (metric_threadCapabilities >> 1) & 1;
                        self->_numThreadAccessoryFullCapable += (metric_threadCapabilities >> 2) & 1;
                        self->_numThreadAccessoryRouterCapable += (metric_threadCapabilities >> 3) & 1;
                        v69 = (metric_threadCapabilities >> 4) & 1;
                        v70 = &OBJC_IVAR___HMDHomeConfigurationLogEvent__numThreadAccessoryBorderRouterCapable;
                      }

                      else
                      {
                        v70 = &OBJC_IVAR___HMDHomeConfigurationLogEvent__numThreadAccessoriesUnknownCapabilities;
                        v69 = 1;
                      }

                      *(&self->super.super.super.isa + *v70) = (*(&self->super.super.super.isa + *v70) + v69);
                    }

                    if (([v16 isPrimary] & 1) == 0)
                    {
                      ++self->_numBridgedAccessories;
                    }

                    v128 = 0u;
                    v129 = 0u;
                    v126 = 0u;
                    v127 = 0u;
                    v71 = v16;
                    services = [v16 services];
                    v73 = [services countByEnumeratingWithState:&v126 objects:v142 count:16];
                    if (v73)
                    {
                      v74 = v73;
                      v75 = *v127;
                      do
                      {
                        for (i = 0; i != v74; ++i)
                        {
                          if (*v127 != v75)
                          {
                            objc_enumerationMutation(services);
                          }

                          type = [*(*(&v126 + 1) + 8 * i) type];
                          [v20 addObject:type];
                        }

                        v74 = [services countByEnumeratingWithState:&v126 objects:v142 count:16];
                      }

                      while (v74);
                    }

                    v16 = v71;
                    v78 = [HMDMetricsUtilities primaryServiceTypeForHAPAccessory:v71];
                    if (v78)
                    {
                      [serviceTypesCopy addObject:v78];
                    }

                    v79 = [v71 findServiceWithServiceType:*MEMORY[0x277CD0DE8]];

                    if (v79)
                    {
                      ++self->_numHAPBatteryServiceAccessories;
                    }

                    if ([v71 supportsWoL])
                    {
                      ++self->_numWoLAccessories;
                    }

                    if ([v71 supportsTargetController])
                    {
                      ++self->_numTargetControllers;
                      if (certificationStatus == 2)
                      {
                        ++self->_numCertifiedTargetControllers;
                      }

                      if (([v71 isPrimary] & 1) == 0)
                      {
                        ++self->_numBridgedTargetControllers;
                        if (certificationStatus == 2)
                        {
                          ++self->_numCertifiedBridgedTargetControllers;
                        }
                      }
                    }

                    if ([v71 hasCameraStreamService])
                    {
                      ++self->_numCameraAccessories;
                      if ([v71 isCameraRecordingFeatureSupported])
                      {
                        ++self->_numCameraAccessoriesSupportRecording;
                      }

                      cameraProfileSettingsManager = [v71 cameraProfileSettingsManager];
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
                      v86 = [activityZones count];

                      if (v86)
                      {
                        ++self->_numCameraAccessoriesWithActivityZonesEnabled;
                      }
                    }

                    if (![v16 hasTelevisionService])
                    {
                      v91 = 1;
LABEL_141:
                      if ([v16 hasSmartSpeakerService])
                      {
                        ++self->_numHAPSpeakerServiceAccessories;
                        if ([v78 isEqual:@"00000228-0000-1000-8000-0026BB765291"])
                        {
                          ++self->_numPrimaryHAPSpeakerServiceAccessories;
                          v91 = 3;
                        }
                      }

                      if ([v16 hasSiriEndpointService])
                      {
                        ++self->_numCapableSiriEndpointAccessories;
                      }

                      if (self->_isCurrentDevicePrimaryResident)
                      {
                        siriEndpointProfile = [v16 siriEndpointProfile];
                        v99 = siriEndpointProfile;
                        if (siriEndpointProfile && ([siriEndpointProfile siriTouchToUse] == 1 || objc_msgSend(v99, "siriListening") == 1))
                        {
                          ++self->_numEnabledSiriEndpointAccessories;
                        }
                      }

                      category = [v16 category];
                      categoryType = [category categoryType];
                      v102 = [categoryType isEqualToString:*MEMORY[0x277CCE890]];

                      if (v102)
                      {
                        if ([v16 supportsHAP])
                        {
                          ++self->_numHAPLocks;
                        }

                        if ([v16 supportsCHIP])
                        {
                          ++self->_numMatterLocks;
                        }

                        if ([v16 supportsAccessCode])
                        {
                          ++self->_numLocksWithAccessCodeSupported;
                        }

                        if ([v16 supportsWalletKey])
                        {
                          ++self->_numLocksWithWalletKeySupported;
                        }
                      }

                      services2 = [v16 services];
                      self->_numServices += [services2 count];

                      if (v91 != 3)
                      {
                        v104 = 152;
LABEL_189:
                        ++*(&self->super.super.super.isa + v104);
                        goto LABEL_190;
                      }

LABEL_181:
                      v104 = 160;
                      goto LABEL_189;
                    }

                    category2 = [v16 category];
                    categoryType2 = [category2 categoryType];
                    v89 = [categoryType2 isEqualToString:*MEMORY[0x277CCE920]];

                    if (v89)
                    {
                      v90 = &OBJC_IVAR___HMDHomeConfigurationLogEvent__numTelevisionAccessories;
                    }

                    else
                    {
                      category3 = [v16 category];
                      categoryType3 = [category3 categoryType];
                      v94 = [categoryType3 isEqualToString:*MEMORY[0x277CCE930]];

                      if (v94)
                      {
                        v90 = &OBJC_IVAR___HMDHomeConfigurationLogEvent__numTelevisionSetTopBoxAccessories;
                      }

                      else
                      {
                        category4 = [v16 category];
                        categoryType4 = [category4 categoryType];
                        v97 = [categoryType4 isEqualToString:*MEMORY[0x277CCE938]];

                        if (!v97)
                        {
LABEL_140:
                          v91 = 3;
                          goto LABEL_141;
                        }

                        v90 = &OBJC_IVAR___HMDHomeConfigurationLogEvent__numTelevisionStreamingStickAccessories;
                      }
                    }

                    ++*(&self->super.super.super.isa + *v90);
                    goto LABEL_140;
                  }

                  v64 = &OBJC_IVAR___HMDHomeConfigurationLogEvent__numBTOnlyAccessories;
                }

                ++*(&self->super.super.super.isa + *v64);
                goto LABEL_87;
              }

              ++self->_numCHIPAccessories;
              firmwareUpdateProfile = [v16 firmwareUpdateProfile];

              if (firmwareUpdateProfile)
              {
                ++self->_numCHIPAccessoriesFirmwareUpdateEligible;
              }

              v132 = 0u;
              v133 = 0u;
              v130 = 0u;
              v131 = 0u;
              lightProfiles = [v16 lightProfiles];
              v39 = [lightProfiles countByEnumeratingWithState:&v130 objects:v143 count:16];
              if (!v39)
              {
LABEL_78:

                goto LABEL_79;
              }

              v40 = v39;
              v119 = v16;
              v120 = typesCopy;
              v41 = *v131;
              do
              {
                for (j = 0; j != v40; ++j)
                {
                  if (*v131 != v41)
                  {
                    objc_enumerationMutation(lightProfiles);
                  }

                  v43 = *(*(&v130 + 1) + 8 * j);
                  if ([v43 isNaturalLightingSupported])
                  {
                    ++self->_numMatterLightProfilesWithNaturalLightingSupported;
                  }

                  date = [MEMORY[0x277CBEAA8] date];
                  v45 = [date dateByAddingTimeInterval:-86400.0];

                  if (([v43 isNaturalLightingEnabled] & 1) != 0 || (objc_msgSend(v43, "mostRecentNaturalLightingEnabledDate"), v46 = objc_claimAutoreleasedReturnValue(), v47 = objc_msgSend(v46, "compare:", v45), v46, v47 == 1))
                  {
                    ++self->_numMatterLightProfilesWithNaturalLightingEnabled;
                  }

                  mostRecentNaturalLightingUsedDate = [v43 mostRecentNaturalLightingUsedDate];
                  v49 = [mostRecentNaturalLightingUsedDate compare:v45];

                  if (v49 == 1)
                  {
                    ++self->_numMatterLightProfilesWithNaturalLightingUsed;
                  }
                }

                v40 = [lightProfiles countByEnumeratingWithState:&v130 objects:v143 count:16];
              }

              while (v40);
LABEL_76:
              v16 = v119;
              v20 = v120;
              goto LABEL_78;
            }

            ++self->_numHAPAccessories;
            firmwareUpdateProfile2 = [v16 firmwareUpdateProfile];

            if (firmwareUpdateProfile2)
            {
              ++self->_numHAPAccessoriesFirmwareUpdateEligible;
            }

            v120 = typesCopy;
            if ([v16 hasIPLink] && (objc_msgSend(v16, "isPrimary") & 1) != 0)
            {
              v36 = &OBJC_IVAR___HMDHomeConfigurationLogEvent__numHAPIPAccessories;
            }

            else
            {
              if (![v16 hasBTLELink] || !objc_msgSend(v16, "isPrimary"))
              {
                goto LABEL_62;
              }

              v36 = &OBJC_IVAR___HMDHomeConfigurationLogEvent__numHAPBTAccessories;
            }

            ++*(&self->super.super.super.isa + *v36);
LABEL_62:
            v136 = 0u;
            v137 = 0u;
            v134 = 0u;
            v135 = 0u;
            lightProfiles = [v16 lightProfiles];
            v50 = [lightProfiles countByEnumeratingWithState:&v134 objects:v144 count:16];
            if (!v50)
            {
              v20 = typesCopy;
              goto LABEL_78;
            }

            v51 = v50;
            v119 = v16;
            v52 = *v135;
            do
            {
              for (k = 0; k != v51; ++k)
              {
                if (*v135 != v52)
                {
                  objc_enumerationMutation(lightProfiles);
                }

                v54 = *(*(&v134 + 1) + 8 * k);
                if ([v54 isNaturalLightingSupported])
                {
                  ++self->_numLightProfilesWithNaturalLightingSupported;
                }

                date2 = [MEMORY[0x277CBEAA8] date];
                v56 = [date2 dateByAddingTimeInterval:-86400.0];

                if (([v54 isNaturalLightingEnabled] & 1) != 0 || (objc_msgSend(v54, "mostRecentNaturalLightingEnabledDate"), v57 = objc_claimAutoreleasedReturnValue(), v58 = objc_msgSend(v57, "compare:", v56), v57, v58 == 1))
                {
                  ++self->_numLightProfilesWithNaturalLightingEnabled;
                }

                mostRecentNaturalLightingUsedDate2 = [v54 mostRecentNaturalLightingUsedDate];
                v60 = [mostRecentNaturalLightingUsedDate2 compare:v56];

                if (v60 == 1)
                {
                  ++self->_numLightProfilesWithNaturalLightingUsed;
                }
              }

              v51 = [lightProfiles countByEnumeratingWithState:&v134 objects:v144 count:16];
            }

            while (v51);
            goto LABEL_76;
          }

          if (targetNetworkProtectionMode == 1 && currentNetworkProtectionMode == 1)
          {

            v31 = 432;
            goto LABEL_174;
          }

          if (targetNetworkProtectionMode == 3 && currentNetworkProtectionMode == 3)
          {

            v31 = 424;
            goto LABEL_174;
          }
        }

        v31 = 392;
        goto LABEL_174;
      }
    }

    else
    {
      category5 = [v16 category];
      isWiFiRouterAccessoryCategory = [category5 isWiFiRouterAccessoryCategory];

      if (isWiFiRouterAccessoryCategory)
      {
        self->_networkProtectionStatus = 1;
        if (!v16)
        {
          goto LABEL_175;
        }

        goto LABEL_29;
      }
    }
  }

  if (v16)
  {
    goto LABEL_29;
  }

LABEL_175:
  if (v124)
  {
    category6 = [v124 category];
    categoryType5 = [category6 categoryType];
    v108 = *MEMORY[0x277CCE870];
    v109 = HMFEqualObjects();

    if (v109)
    {
      ++self->_numAppleTVAccessories;
      capabilities = [v124 capabilities];
      supportsThreadBorderRouter = [capabilities supportsThreadBorderRouter];

      if ((supportsThreadBorderRouter & 1) == 0)
      {
        goto LABEL_185;
      }

      v112 = &OBJC_IVAR___HMDHomeConfigurationLogEvent__numAppleTV4K2ndGenAccessories;
    }

    else
    {
      if (![v124 isHomePod])
      {
        goto LABEL_185;
      }

      v112 = &OBJC_IVAR___HMDHomeConfigurationLogEvent__numAppleAudioAccessories;
    }

    ++*(&self->super.super.super.isa + *v112);
LABEL_185:
    if ([v124 isCurrentAccessory])
    {
      fallbackMediaUserType = [v124 fallbackMediaUserType];
      if ((fallbackMediaUserType - 1) < 3)
      {
        self->_currentMediaAccessoryFallbackMediaUserType = fallbackMediaUserType;
      }
    }

    v104 = 168;
    goto LABEL_189;
  }

  if (v122)
  {
    ++self->_numWholeHouseAudioAccessories;
    goto LABEL_181;
  }

  v115 = objc_autoreleasePoolPush();
  selfCopy = self;
  v117 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v117, OS_LOG_TYPE_ERROR))
  {
    v118 = HMFGetLogIdentifier();
    *buf = 138543618;
    v139 = v118;
    v140 = 2112;
    v141 = v125;
    _os_log_impl(&dword_2531F8000, v117, OS_LOG_TYPE_ERROR, "%{public}@Accessory was not matched to any type for configuration reporting: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v115);
LABEL_190:

  v114 = *MEMORY[0x277D85DE8];
}

- (HMDHomeConfigurationLogEvent)initWithDataSource:(id)source home:(id)home configuredWidgetsCount:(int64_t)count
{
  v219 = *MEMORY[0x277D85DE8];
  sourceCopy = source;
  homeCopy = home;
  uuid = [sourceCopy uuid];
  v196.receiver = self;
  v196.super_class = HMDHomeConfigurationLogEvent;
  v9 = [(HMMHomeLogEvent *)&v196 initWithHomeUUID:uuid];

  if (v9)
  {
    v9->_numConfiguredWidgets = count;
    v151 = [MEMORY[0x277CBEB58] set];
    v149 = [MEMORY[0x277CBEB58] set];
    v9->_isCurrentDeviceResidentEnabled = 0;
    enabledResidents = [sourceCopy enabledResidents];
    v9->_numResidentsEnabled = [enabledResidents count];
    v192 = 0u;
    v193 = 0u;
    v194 = 0u;
    v195 = 0u;
    obj = enabledResidents;
    v11 = [obj countByEnumeratingWithState:&v192 objects:v217 count:16];
    if (v11)
    {
      v12 = *v193;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v193 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v192 + 1) + 8 * i);
          v9->_enabledResidentsDeviceCapabilities |= [v14 legacyResidentCapabilities];
          if ([v14 isCurrentDevice])
          {
            v9->_isCurrentDeviceResidentEnabled = 1;
          }
        }

        v11 = [obj countByEnumeratingWithState:&v192 objects:v217 count:16];
      }

      while (v11);
    }

    v9->_isResidentAvailable = [homeCopy _residentDeviceAvailable];
    v9->_isResidentFirstEnabled = [sourceCopy isResidentFirstAccessoryCommunicationEnabled];
    residentDeviceManager = [homeCopy residentDeviceManager];
    v9->_isResidentElectionV2Enabled = [residentDeviceManager isResidentElectionV2Enabled];

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
      v147 = protectionMode == 1;
      v28 = isOwnerUser;
      if (protectionMode != 1)
      {
        v28 = 0;
      }

      if (v28 == 1)
      {
        v9->_networkProtectionStatus = 2;
        v147 = 1;
      }
    }

    else
    {
      v147 = 0;
    }

    v9->_userPrivilegeBitMask = 0;
    v188 = 0u;
    v189 = 0u;
    v190 = 0u;
    v191 = 0u;
    users = [sourceCopy users];
    v30 = [users countByEnumeratingWithState:&v188 objects:v216 count:16];
    if (v30)
    {
      v31 = *v189;
      do
      {
        for (j = 0; j != v30; ++j)
        {
          if (*v189 != v31)
          {
            objc_enumerationMutation(users);
          }

          v33 = *(*(&v188 + 1) + 8 * j);
          if (([v33 isRemoteGateway] & 1) == 0)
          {
            privilege = [v33 privilege];
            if (privilege > 2)
            {
              if (privilege == 3)
              {
                v36 = 8;
              }

              else
              {
                if (privilege != 4)
                {
                  goto LABEL_30;
                }

                v36 = 16;
              }

              v9->_userPrivilegeBitMask |= v36;
            }

            else
            {
              if (privilege == 1)
              {
                v35 = 2;
LABEL_33:
                v9->_userPrivilegeBitMask |= v35;
                goto LABEL_37;
              }

              if (privilege == 2)
              {
                v35 = 4;
                goto LABEL_33;
              }

LABEL_30:
              v9->_userPrivilegeBitMask |= 1uLL;
              if ((privilege - 3) > 1)
              {
LABEL_37:
                ++v9->_numUsers;
                accessCode = [v33 accessCode];

                if (accessCode)
                {
                  ++v9->_ownerPerspectiveNumUsersWithAccessCode;
                }

                continue;
              }
            }

            ++v9->_numAdmins;
            goto LABEL_37;
          }
        }

        v30 = [users countByEnumeratingWithState:&v188 objects:v216 count:16];
      }

      while (v30);
    }

    users2 = [sourceCopy users];
    array = [MEMORY[0x277CBEB18] array];
    v206 = 0u;
    v207 = 0u;
    v204 = 0u;
    v205 = 0u;
    v139 = users2;
    v39 = [v139 countByEnumeratingWithState:&v204 objects:v218 count:16];
    if (v39)
    {
      v40 = *v205;
      do
      {
        for (k = 0; k != v39; ++k)
        {
          if (*v205 != v40)
          {
            objc_enumerationMutation(v139);
          }

          v42 = *(*(&v204 + 1) + 8 * k);
          v43 = objc_alloc_init(HMDAnalyticsMultiUserSettings);
          -[HMDAnalyticsMultiUserSettings setIsOwner:](v43, "setIsOwner:", [v42 isCurrentUser]);
          array2 = [MEMORY[0x277CBEB18] array];
          [(HMDAnalyticsMultiUserSettings *)v43 setMultiUserSettingsValuesByKeyPaths:array2];

          privateSettingValuesByKeyPath = [v42 privateSettingValuesByKeyPath];
          v46 = [privateSettingValuesByKeyPath mutableCopy];

          sharedSettingValuesByKeyPath = [v42 sharedSettingValuesByKeyPath];
          [v46 addEntriesFromDictionary:sharedSettingValuesByKeyPath];

          if ([v46 count])
          {
            v198 = 0;
            v199 = &v198;
            v200 = 0x3032000000;
            v201 = __Block_byref_object_copy__66458;
            v202 = __Block_byref_object_dispose__66459;
            array3 = [MEMORY[0x277CBEB18] array];
            v197[0] = MEMORY[0x277D85DD0];
            v197[1] = 3221225472;
            v197[2] = ___legacyMultiUserSettings_block_invoke;
            v197[3] = &unk_279728330;
            v197[4] = &v198;
            [v46 enumerateKeysAndObjectsUsingBlock:v197];
            v48 = [v199[5] copy];
            [(HMDAnalyticsMultiUserSettings *)v43 setMultiUserSettingsValuesByKeyPaths:v48];

            [array addObject:v43];
            _Block_object_dispose(&v198, 8);
          }
        }

        v39 = [v139 countByEnumeratingWithState:&v204 objects:v218 count:16];
      }

      while (v39);
    }

    v49 = [array copy];
    multiUserSettings = v9->_multiUserSettings;
    v9->_multiUserSettings = v49;

    v9->_ownerUser = [sourceCopy isOwnerUser];
    currentUser = [sourceCopy currentUser];
    v9->_currentUserPrivilege = [currentUser privilege];

    v9->_accessToHomeAllowed = [sourceCopy isAccessToHomeAllowed];
    accessories = [sourceCopy accessories];
    v9->_numAccessories = [accessories count];
    v184 = 0u;
    v185 = 0u;
    v186 = 0u;
    v187 = 0u;
    v146 = accessories;
    v53 = [v146 countByEnumeratingWithState:&v184 objects:v215 count:16];
    if (v53)
    {
      v54 = *v185;
      do
      {
        for (m = 0; m != v53; ++m)
        {
          if (*v185 != v54)
          {
            objc_enumerationMutation(v146);
          }

          [(HMDHomeConfigurationLogEvent *)v9 updateConfigWithAccessory:*(*(&v184 + 1) + 8 * m) reportNetworkProtectionMetrics:isOwnerUser networkProtectionEnabled:v147 hapServiceTypes:v151 primaryHAPServiceTypes:v149];
        }

        v53 = [v146 countByEnumeratingWithState:&v184 objects:v215 count:16];
      }

      while (v53);
    }

    v155 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v151, "count") + 1}];
    if ([v151 count])
    {
      v56 = [[HMDAnalyticsHAPServiceData alloc] initWithServiceType:@"_HomeWithHAPServices_" isPrimary:0 ownerUser:v9->_ownerUser];
      [v155 addObject:v56];
    }

    v182 = 0u;
    v183 = 0u;
    v180 = 0u;
    v181 = 0u;
    v150 = v149;
    v57 = [v150 countByEnumeratingWithState:&v180 objects:v214 count:16];
    if (v57)
    {
      v58 = *v181;
      do
      {
        for (n = 0; n != v57; ++n)
        {
          if (*v181 != v58)
          {
            objc_enumerationMutation(v150);
          }

          v60 = [[HMDAnalyticsHAPServiceData alloc] initWithServiceType:*(*(&v180 + 1) + 8 * n) isPrimary:1 ownerUser:v9->_ownerUser];
          [v155 addObject:v60];
        }

        v57 = [v150 countByEnumeratingWithState:&v180 objects:v214 count:16];
      }

      while (v57);
    }

    [v151 minusSet:v150];
    v178 = 0u;
    v179 = 0u;
    v176 = 0u;
    v177 = 0u;
    v148 = v151;
    v61 = [v148 countByEnumeratingWithState:&v176 objects:v213 count:16];
    if (v61)
    {
      v62 = *v177;
      do
      {
        for (ii = 0; ii != v61; ++ii)
        {
          if (*v177 != v62)
          {
            objc_enumerationMutation(v148);
          }

          v64 = [[HMDAnalyticsHAPServiceData alloc] initWithServiceType:*(*(&v176 + 1) + 8 * ii) isPrimary:0 ownerUser:v9->_ownerUser];
          [v155 addObject:v64];
        }

        v61 = [v148 countByEnumeratingWithState:&v176 objects:v213 count:16];
      }

      while (v61);
    }

    v65 = [v155 copy];
    hapServices = v9->_hapServices;
    v9->_hapServices = v65;

    accessories2 = [sourceCopy accessories];
    v68 = [accessories2 na_filter:&__block_literal_global_66462];
    v9->_numHomePodMinis = [v68 count];

    accessories3 = [sourceCopy accessories];
    v70 = [accessories3 na_filter:&__block_literal_global_22_66463];
    v9->_numHomePod2ndGen = [v70 count];

    accessories4 = [sourceCopy accessories];
    v72 = [accessories4 na_filter:&__block_literal_global_24_66464];
    v9->_numHomePods = [v72 count];

    mediaSystems = [homeCopy mediaSystems];
    v9->_numMediaSystems = [mediaSystems count];

    mediaSystems2 = [homeCopy mediaSystems];
    v75 = [mediaSystems2 na_filter:&__block_literal_global_27_66465];
    v9->_numHomePodMiniStereoPairs = [v75 count];

    mediaSystems3 = [homeCopy mediaSystems];
    v77 = [mediaSystems3 na_filter:&__block_literal_global_31_66466];
    v9->_numHomePod2ndGenStereoPairs = [v77 count];

    mediaSystems4 = [homeCopy mediaSystems];
    v79 = [mediaSystems4 na_filter:&__block_literal_global_35_66467];
    v9->_numHomePodStereoPairs = [v79 count];

    triggers = [sourceCopy triggers];
    v9->_numTriggers += [triggers count];
    v133 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(triggers, "count")}];
    v174 = 0u;
    v175 = 0u;
    v172 = 0u;
    v173 = 0u;
    v134 = triggers;
    v140 = [v134 countByEnumeratingWithState:&v172 objects:v212 count:16];
    if (v140)
    {
      v132 = *v173;
      do
      {
        v81 = 0;
        do
        {
          if (*v173 != v132)
          {
            v82 = v81;
            objc_enumerationMutation(v134);
            v81 = v82;
          }

          v135 = v81;
          v83 = *(*(&v172 + 1) + 8 * v81);
          if ([v83 active])
          {
            ++v9->_numActiveTriggers;
          }

          if ([v83 triggerType] == 1)
          {
            ++v9->_numEventTriggers;
            v84 = v83;
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v85 = v84;
            }

            else
            {
              v85 = 0;
            }

            v86 = v85;

            v87 = [[HMDAnalyticsEventTriggerData alloc] initWithEventTrigger:v86 isAdding:0];
            if (v87)
            {
              [v133 addObject:v87];
            }
          }

          else if ([v83 triggerType] == 2)
          {
            ++v9->_numTimerTriggers;
          }

          actionSets2 = [v83 actionSets];
          v170 = 0u;
          v171 = 0u;
          v168 = 0u;
          v169 = 0u;
          v88 = [actionSets2 countByEnumeratingWithState:&v168 objects:v211 count:16];
          if (v88)
          {
            v152 = *v169;
            do
            {
              for (jj = 0; jj != v88; ++jj)
              {
                if (*v169 != v152)
                {
                  objc_enumerationMutation(actionSets2);
                }

                v90 = *(*(&v168 + 1) + 8 * jj);
                v164 = 0u;
                v165 = 0u;
                v166 = 0u;
                v167 = 0u;
                actions = [v90 actions];
                v92 = [actions countByEnumeratingWithState:&v164 objects:v210 count:16];
                if (v92)
                {
                  v93 = *v165;
                  do
                  {
                    for (kk = 0; kk != v92; ++kk)
                    {
                      if (*v165 != v93)
                      {
                        objc_enumerationMutation(actions);
                      }

                      v95 = *(*(&v164 + 1) + 8 * kk);
                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        ++v9->_numShortcuts;
                      }
                    }

                    v92 = [actions countByEnumeratingWithState:&v164 objects:v210 count:16];
                  }

                  while (v92);
                }
              }

              v88 = [actionSets2 countByEnumeratingWithState:&v168 objects:v211 count:16];
            }

            while (v88);
          }

          v81 = v135 + 1;
        }

        while ((v135 + 1) != v140);
        v140 = [v134 countByEnumeratingWithState:&v172 objects:v212 count:16];
      }

      while (v140);
    }

    v96 = [v133 copy];
    eventTriggers = v9->_eventTriggers;
    v9->_eventTriggers = v96;

    actionSets3 = [sourceCopy actionSets];
    v162 = 0u;
    v163 = 0u;
    v160 = 0u;
    v161 = 0u;
    v98 = [actionSets3 countByEnumeratingWithState:&v160 objects:v209 count:16];
    if (v98)
    {
      v99 = *v161;
      do
      {
        for (mm = 0; mm != v98; ++mm)
        {
          if (*v161 != v99)
          {
            objc_enumerationMutation(actionSets3);
          }

          actions2 = [*(*(&v160 + 1) + 8 * mm) actions];
          v102 = [actions2 count];

          if (v102)
          {
            ++v9->_numConfiguredScenes;
          }
        }

        v98 = [actionSets3 countByEnumeratingWithState:&v160 objects:v209 count:16];
      }

      while (v98);
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
    v156 = 0u;
    v157 = 0u;
    v158 = 0u;
    v159 = 0u;
    appleMediaAccessories = [sourceCopy appleMediaAccessories];
    v107 = 0;
    v108 = [appleMediaAccessories countByEnumeratingWithState:&v156 objects:v208 count:16];
    if (v108)
    {
      v153 = 0;
      v109 = *v157;
      do
      {
        for (nn = 0; nn != v108; ++nn)
        {
          if (*v157 != v109)
          {
            objc_enumerationMutation(appleMediaAccessories);
          }

          v111 = *(*(&v156 + 1) + 8 * nn);
          if (!v107 || ([*(*(&v156 + 1) + 8 * nn) softwareVersion], (v112 = objc_claimAutoreleasedReturnValue()) != 0) && (objc_msgSend(v111, "softwareVersion"), v113 = objc_claimAutoreleasedReturnValue(), v114 = objc_msgSend(v107, "isGreaterThanVersion:", v113), v113, v112, v114))
          {
            softwareVersion = [v111 softwareVersion];

            v107 = softwareVersion;
          }

          device2 = [v111 device];
          primaryResident2 = [homeCopy primaryResident];
          device3 = [primaryResident2 device];
          v119 = [device2 isEqual:device3];

          if (v119)
          {
            softwareVersion2 = [v111 softwareVersion];

            v153 = softwareVersion2;
          }
        }

        v108 = [appleMediaAccessories countByEnumeratingWithState:&v156 objects:v208 count:16];
      }

      while (v108);
    }

    else
    {
      v153 = 0;
    }

    shortVersionString = [v107 shortVersionString];
    oldestTVOSVersionInHome = v9->_oldestTVOSVersionInHome;
    v9->_oldestTVOSVersionInHome = shortVersionString;

    buildVersion = [v107 buildVersion];
    oldestTVOSBuildInHome = v9->_oldestTVOSBuildInHome;
    v9->_oldestTVOSBuildInHome = buildVersion;

    shortVersionString2 = [v153 shortVersionString];
    primaryResidentVersionInHome = v9->_primaryResidentVersionInHome;
    v9->_primaryResidentVersionInHome = shortVersionString2;

    buildVersion2 = [v153 buildVersion];
    primaryResidentBuildInHome = v9->_primaryResidentBuildInHome;
    v9->_primaryResidentBuildInHome = buildVersion2;

    v129 = v9;
  }

  v130 = *MEMORY[0x277D85DE8];
  return v9;
}

uint64_t __79__HMDHomeConfigurationLogEvent_initWithDataSource_home_configuredWidgetsCount___block_invoke_8(uint64_t a1, void *a2)
{
  v2 = [a2 accessories];
  v3 = [v2 na_all:&__block_literal_global_37_66472];

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
  v3 = [v2 na_all:&__block_literal_global_33_66475];

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
  v3 = [v2 na_all:&__block_literal_global_29_66478];

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