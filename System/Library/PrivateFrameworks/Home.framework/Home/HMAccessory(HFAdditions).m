@interface HMAccessory(HFAdditions)
+ (id)hf_getUserFriendlyDescriptionKey:()HFAdditions;
+ (id)hf_getUserFriendlyMatterDescriptionKey:()HFAdditions;
+ (id)hf_userFriendlyLocalizedCapitalizedDescription:()HFAdditions;
+ (id)hf_userFriendlyLocalizedCapitalizedPluralDescription:()HFAdditions;
+ (id)hf_userFriendlyLocalizedLowercaseDescription:()HFAdditions;
+ (uint64_t)hf_isSuspendedStateSupported:()HFAdditions;
+ (uint64_t)hf_isSuspendedStateSuspended:()HFAdditions;
- (BOOL)hf_canShowAsIndividualServices;
- (BOOL)hf_isAudioAnalysisSupportedDevice;
- (BOOL)hf_isMultiSensorAccessory;
- (BOOL)hf_isMultiServiceAccessory;
- (BOOL)hf_isSingleSensorAccessory;
- (BOOL)hf_isSprinkler;
- (id)_hf_categoryType;
- (id)hf_allConnectedHomeToCHIPAccessoryPairingFuture;
- (id)hf_bridgedAccessories;
- (id)hf_categoryOrPrimaryServiceType;
- (id)hf_componentServices;
- (id)hf_displayNamesForVisibleTiles;
- (id)hf_enableAdaptiveTemperatureTo:()HFAdditions;
- (id)hf_enableGridForecastAutomationTo:()HFAdditions;
- (id)hf_errorForCurrentSessionState;
- (id)hf_groupableServices;
- (id)hf_irrigationSystemServices;
- (id)hf_linkedResidentDevice;
- (id)hf_minimumDescription;
- (id)hf_networkConfigurationProfiles;
- (id)hf_owningBridgeAccessory;
- (id)hf_primaryService;
- (id)hf_programmableSwitchNamespaceServices;
- (id)hf_programmableSwitchServices;
- (id)hf_serviceOfType:()HFAdditions;
- (id)hf_servicesBehindBridge;
- (id)hf_servicesWithBulletinBoardNotificationTurnedOff;
- (id)hf_setHasOnboardedForAdaptiveTemperature;
- (id)hf_setHasOnboardedForCleanEnergyAutomation;
- (id)hf_setShowAsIndividualServices:()HFAdditions;
- (id)hf_standardServices;
- (id)hf_userFriendlyLocalizedCapitalizedDescription;
- (id)hf_userFriendlyLocalizedLowercaseDescription;
- (id)hf_visibleServices;
- (uint64_t)hf_appPunchOutReason;
- (uint64_t)hf_areAllServicesInGroups;
- (uint64_t)hf_canSyncExternalSettings;
- (uint64_t)hf_hasInputSourceService;
- (uint64_t)hf_hasManagedNetworkCredential;
- (uint64_t)hf_isBridge;
- (uint64_t)hf_isCamera;
- (uint64_t)hf_isCategorizedAsBridge;
- (uint64_t)hf_isCeilingFanWithLight;
- (uint64_t)hf_isDoorbell;
- (uint64_t)hf_isFirstPartyAccessory;
- (uint64_t)hf_isIdentifiable;
- (uint64_t)hf_isMatterOnlyAccessory;
- (uint64_t)hf_isNetworkRouter;
- (uint64_t)hf_isNetworkRouterSatellite;
- (uint64_t)hf_isNonServiceBasedAccessory;
- (uint64_t)hf_isNotificationSupportedCamera;
- (uint64_t)hf_isPowerStrip;
- (uint64_t)hf_isProgrammableSwitch;
- (uint64_t)hf_isPureBridge;
- (uint64_t)hf_isPureProgrammableSwitch;
- (uint64_t)hf_isRemoteControl;
- (uint64_t)hf_isRestrictedGuestAllowedAccessory;
- (uint64_t)hf_isSensorAccessory;
- (uint64_t)hf_isSingleServiceAccessory;
- (uint64_t)hf_isSingleServiceLikeAccessory;
- (uint64_t)hf_isSupportedAccessory;
- (uint64_t)hf_isSuspended;
- (uint64_t)hf_isTelevision;
- (uint64_t)hf_isVisibleAccessory;
- (uint64_t)hf_isVisibleAsBridge;
- (uint64_t)hf_isVisibleAsBridgedAccessory;
- (uint64_t)hf_needsOnboarding;
- (uint64_t)hf_needsReprovisioningCheck;
- (uint64_t)hf_numberOfProgrammableSwitches;
- (uint64_t)hf_requiresFirmwareUpdate;
- (uint64_t)hf_shouldHideNearbyAccessoryService:()HFAdditions;
- (uint64_t)hf_shouldSeparateAccessoryName;
- (uint64_t)hf_shouldShowPresetConfiguration;
- (uint64_t)hf_showAsAccessoryTile;
- (uint64_t)hf_showAsIndividualServices;
- (uint64_t)hf_showsAsAccessoryInControlCentre;
- (uint64_t)hf_supportsSuspendedState;
- (void)hf_onboardSiriEndpointIfNeededWithSettingKeyPath:()HFAdditions settingValue:;
- (void)hf_siriEndpointProfile;
@end

@implementation HMAccessory(HFAdditions)

- (uint64_t)hf_requiresFirmwareUpdate
{
  v1 = [a1 services];
  v2 = [v1 na_any:&__block_literal_global_105];

  return v2;
}

- (uint64_t)hf_isIdentifiable
{
  if ([a1 hf_isTelevision])
  {
    return 0;
  }

  else
  {
    return [a1 hf_isMediaAccessory] ^ 1;
  }
}

- (uint64_t)hf_isSuspended
{
  v2 = objc_opt_class();
  v3 = [a1 suspendedState];

  return [v2 hf_isSuspendedStateSuspended:v3];
}

- (uint64_t)hf_supportsSuspendedState
{
  v2 = objc_opt_class();
  v3 = [a1 suspendedState];

  return [v2 hf_isSuspendedStateSupported:v3];
}

- (uint64_t)hf_canSyncExternalSettings
{
  if (![a1 hf_isTelevision])
  {
    return 1;
  }

  result = [a1 isReachable];
  if (result)
  {
    return [a1 hf_isSuspended] ^ 1;
  }

  return result;
}

- (uint64_t)hf_isBridge
{
  v2 = [a1 uniqueIdentifiersForBridgedAccessories];
  if ([v2 count])
  {
    v3 = 1;
  }

  else
  {
    v4 = [a1 category];
    v5 = [v4 categoryType];
    v3 = [v5 isEqualToString:*MEMORY[0x277CCE880]];
  }

  return v3;
}

- (uint64_t)hf_isCategorizedAsBridge
{
  v1 = [a1 category];
  v2 = [v1 categoryType];
  v3 = [v2 isEqualToString:*MEMORY[0x277CCE880]];

  return v3;
}

- (uint64_t)hf_isPureBridge
{
  if (![a1 hf_isBridge])
  {
    return 0;
  }

  v2 = [a1 hf_visibleServices];
  if ([v2 count])
  {
    v3 = 0;
  }

  else
  {
    v3 = [a1 hf_isNonServiceBasedAccessory] ^ 1;
  }

  return v3;
}

- (uint64_t)hf_isPureProgrammableSwitch
{
  result = [a1 hf_isProgrammableSwitch];
  if (result)
  {
    v3 = [a1 hf_visibleServices];
    v4 = [v3 na_all:&__block_literal_global_6_3];

    return v4;
  }

  return result;
}

- (uint64_t)hf_isVisibleAsBridge
{
  if ([a1 hf_isCategorizedAsBridge] && !objc_msgSend(a1, "hf_isSprinkler"))
  {
    return 1;
  }

  return [a1 hf_isPureBridge];
}

- (uint64_t)hf_isVisibleAsBridgedAccessory
{
  result = [a1 isBridged];
  if (result)
  {
    return [a1 hf_isNetworkRouterSatellite] ^ 1;
  }

  return result;
}

- (uint64_t)hf_isCeilingFanWithLight
{
  v2 = [a1 category];
  v3 = [v2 categoryType];

  if (([v3 isEqualToString:*MEMORY[0x277CCE898]] & 1) != 0 || objc_msgSend(v3, "isEqualToString:", *MEMORY[0x277CCE8C8]))
  {
    v4 = [a1 hf_visibleServices];
    v5 = [v4 na_any:&__block_literal_global_8_4];

    v6 = [a1 hf_visibleServices];
    v7 = [v6 na_any:&__block_literal_global_10_6];

    v8 = [a1 hf_visibleServices];
    LODWORD(v6) = [v8 na_all:&__block_literal_global_12_4];

    v9 = v5 & v7 & v6;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (uint64_t)hf_isCamera
{
  v2 = [a1 cameraProfiles];
  if ([v2 count])
  {
    v3 = 1;
  }

  else
  {
    v4 = [a1 category];
    v5 = [v4 categoryType];
    if ([v5 isEqualToString:*MEMORY[0x277CCE8B8]])
    {
      v3 = 1;
    }

    else
    {
      v6 = [a1 category];
      v7 = [v6 categoryType];
      v3 = [v7 isEqualToString:*MEMORY[0x277CCE948]];
    }
  }

  return v3;
}

- (uint64_t)hf_isDoorbell
{
  v2 = [a1 category];
  v3 = [v2 categoryType];
  if ([v3 isEqualToString:*MEMORY[0x277CCE948]])
  {
    v4 = 1;
  }

  else
  {
    v5 = [a1 services];
    v4 = [v5 na_any:&__block_literal_global_14_6];
  }

  return v4;
}

- (uint64_t)hf_isNetworkRouter
{
  v2 = [a1 category];
  v3 = [v2 categoryType];
  if ([v3 isEqualToString:*MEMORY[0x277CCE950]])
  {
    v4 = 1;
  }

  else
  {
    v5 = [a1 services];
    v4 = [v5 na_any:&__block_literal_global_16_3];
  }

  return v4;
}

- (uint64_t)hf_isNetworkRouterSatellite
{
  result = [a1 hf_isNetworkRouter];
  if (result)
  {
    v3 = [a1 services];
    v4 = [v3 na_any:&__block_literal_global_18_4];

    return v4;
  }

  return result;
}

- (uint64_t)hf_isNotificationSupportedCamera
{
  v1 = [a1 cameraProfiles];
  v2 = [v1 na_any:&__block_literal_global_21_3];

  return v2;
}

- (id)hf_servicesWithBulletinBoardNotificationTurnedOff
{
  v1 = [a1 services];
  v2 = [v1 na_filter:&__block_literal_global_23_3];

  return v2;
}

- (uint64_t)hf_isPowerStrip
{
  v2 = [a1 category];
  v3 = [v2 categoryType];
  if ([v3 isEqualToString:*MEMORY[0x277CCE8D0]])
  {
    v4 = 1;
  }

  else
  {
    v5 = [a1 category];
    v6 = [v5 categoryType];
    v4 = [v6 isEqualToString:*MEMORY[0x277CCE8C8]];
  }

  v7 = [a1 services];
  v8 = [v7 na_filter:&__block_literal_global_25_6];
  v9 = [v8 count];

  if (v9 > 2)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

- (uint64_t)hf_isProgrammableSwitch
{
  v1 = [a1 services];
  v2 = [v1 na_any:&__block_literal_global_27_6];

  return v2;
}

- (uint64_t)hf_isRemoteControl
{
  v1 = [a1 category];
  v2 = [v1 categoryType];

  v3 = [v2 isEqualToString:*MEMORY[0x277CCE918]];
  return v3;
}

- (BOOL)hf_isSprinkler
{
  v2 = [a1 category];
  v3 = [v2 categoryType];
  if ([v3 isEqualToString:*MEMORY[0x277CCE908]])
  {
    v4 = 1;
  }

  else
  {
    v5 = [a1 hf_irrigationSystemServices];
    v4 = [v5 count] != 0;
  }

  return v4;
}

- (uint64_t)hf_isTelevision
{
  v2 = [a1 televisionProfiles];
  if ([v2 count])
  {
    v3 = 1;
  }

  else
  {
    v4 = [a1 category];
    v5 = [v4 categoryType];
    if ([v5 isEqualToString:*MEMORY[0x277CCE920]])
    {
      v3 = 1;
    }

    else
    {
      v6 = [a1 category];
      v7 = [v6 categoryType];
      if ([v7 isEqualToString:*MEMORY[0x277CCE930]])
      {
        v3 = 1;
      }

      else
      {
        v8 = [a1 category];
        v9 = [v8 categoryType];
        v3 = [v9 isEqualToString:*MEMORY[0x277CCE938]];
      }
    }
  }

  return v3;
}

- (BOOL)hf_isAudioAnalysisSupportedDevice
{
  if (![a1 supportsAudioAnalysis])
  {
    return 0;
  }

  v2 = [a1 audioAnalysisEventBulletinBoardNotification];
  v3 = v2 != 0;

  return v3;
}

- (uint64_t)hf_areAllServicesInGroups
{
  v1 = [a1 hf_visibleServices];
  v2 = [v1 na_all:&__block_literal_global_29_1];

  return v2;
}

- (uint64_t)hf_isSingleServiceAccessory
{
  v2 = [a1 hf_visibleServices];
  if ([v2 count] == 1)
  {
    v3 = [a1 hf_isNonServiceBasedAccessory] ^ 1;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (uint64_t)hf_isSingleServiceLikeAccessory
{
  result = [a1 hf_isSingleServiceAccessory];
  if (result)
  {
    return [a1 hf_isCategorizedAsBridge] ^ 1;
  }

  return result;
}

- (BOOL)hf_isMultiServiceAccessory
{
  v1 = [a1 hf_visibleServices];
  v2 = [v1 count] > 1;

  return v2;
}

- (BOOL)hf_canShowAsIndividualServices
{
  if ([a1 hf_isSingleServiceAccessory])
  {
    return 0;
  }

  v2 = [a1 siriEndpointProfile];
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = v2;
  v4 = [a1 category];
  v5 = [v4 hf_isMediaAccessory];

  if (!v5)
  {
    return 0;
  }

LABEL_4:
  v6 = [a1 hf_visibleServices];
  v7 = [v6 na_filter:&__block_literal_global_31_3];

  if ([a1 hf_isNonServiceBasedAccessory] && objc_msgSend(v7, "count"))
  {
    v8 = 1;
  }

  else if ([a1 hf_isMultiServiceAccessory])
  {
    v8 = [v7 count] > 1;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (uint64_t)hf_isVisibleAccessory
{
  v2 = [a1 hf_visibleServices];
  if ([v2 count] || (objc_msgSend(a1, "hf_isCamera") & 1) != 0 || (objc_msgSend(a1, "hf_isMediaAccessory") & 1) != 0 || (objc_msgSend(a1, "hf_isRemoteControl") & 1) != 0)
  {
    v3 = 1;
  }

  else
  {
    v3 = [a1 hf_isVisibleMatterAccessory];
  }

  return v3;
}

- (uint64_t)hf_isNonServiceBasedAccessory
{
  if ([a1 hf_isCamera] & 1) != 0 || (objc_msgSend(a1, "hf_isMediaAccessory") & 1) != 0 || (objc_msgSend(a1, "hf_isRemoteControl"))
  {
    return 1;
  }

  return [a1 hf_isMatterOnlyAccessory];
}

- (uint64_t)hf_isRestrictedGuestAllowedAccessory
{
  v8[1] = *MEMORY[0x277D85DE8];
  v1 = [a1 hf_primaryService];
  v2 = [v1 serviceType];

  if (v2)
  {
    v3 = MEMORY[0x277CD1D80];
    v8[0] = v2;
    v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
    v5 = [v3 doesAccessoryHaveRestrictedGuestCapableServiceTypes:v4];
  }

  else
  {
    v5 = 0;
  }

  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

- (uint64_t)hf_isSensorAccessory
{
  v2 = [a1 hf_visibleServices];
  v3 = [a1 category];
  v4 = [v3 categoryType];

  if (([v4 isEqualToString:*MEMORY[0x277CCE8F0]] & 1) != 0 || objc_msgSend(v4, "isEqualToString:", *MEMORY[0x277CCE8C8]))
  {
    v5 = [v2 na_all:&__block_literal_global_35_0];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (uint64_t)hf_showsAsAccessoryInControlCentre
{
  if ([a1 hf_isCamera] & 1) != 0 || (objc_msgSend(a1, "hf_isPureProgrammableSwitch") & 1) != 0 || (objc_msgSend(a1, "hf_isRemoteControl") & 1) != 0 || (objc_msgSend(a1, "hf_isSensorAccessory") & 1) != 0 || (objc_msgSend(a1, "hf_isNetworkRouter"))
  {
    return 0;
  }

  else
  {
    return [a1 hf_isNetworkRouterSatellite] ^ 1;
  }
}

- (BOOL)hf_isSingleSensorAccessory
{
  if (![a1 hf_isSensorAccessory])
  {
    return 0;
  }

  v2 = [a1 hf_visibleServices];
  v3 = [v2 count] == 1;

  return v3;
}

- (BOOL)hf_isMultiSensorAccessory
{
  if (![a1 hf_isSensorAccessory])
  {
    return 0;
  }

  v2 = [a1 hf_visibleServices];
  v3 = [v2 count] > 1;

  return v3;
}

- (uint64_t)hf_shouldSeparateAccessoryName
{
  if ([a1 hf_isNonServiceBasedAccessory])
  {
    return 1;
  }

  return [a1 hf_isPowerStrip];
}

- (uint64_t)hf_showAsAccessoryTile
{
  if ([a1 hf_showAsIndividualServices])
  {
    return 0;
  }

  else
  {
    return [a1 hf_isSingleServiceAccessory] ^ 1;
  }
}

- (uint64_t)hf_showAsIndividualServices
{
  result = [a1 hf_canShowAsIndividualServices];
  if (result)
  {
    v3 = [a1 applicationData];
    v4 = [v3 objectForKeyedSubscript:@"HFAccessoryShowAsIndividualServicesKey"];
    v5 = [v4 BOOLValue];

    return v5;
  }

  return result;
}

- (uint64_t)hf_isMatterOnlyAccessory
{
  if (qword_280E02FE8 != -1)
  {
    dispatch_once(&qword_280E02FE8, &__block_literal_global_38_1);
  }

  v2 = [a1 matterNodeID];
  if (v2)
  {
    v3 = [a1 matterNodeID];
    if ([v3 intValue])
    {
      v4 = [a1 supportsNativeMatter];
      v5 = v4 | _MergedGlobals_256;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

- (uint64_t)hf_isSupportedAccessory
{
  v2 = [a1 hf_visibleServices];
  if ([v2 count])
  {
    v3 = 1;
  }

  else
  {
    v4 = [a1 hf_componentServices];
    if ([v4 count])
    {
      v3 = 1;
    }

    else
    {
      v5 = [a1 cameraProfiles];
      if ([v5 count] || (objc_msgSend(a1, "hf_isBridge") & 1) != 0 || (objc_msgSend(a1, "hf_isMediaAccessory") & 1) != 0)
      {
        v3 = 1;
      }

      else
      {
        v3 = [a1 hf_isRemoteControl];
      }
    }
  }

  return v3;
}

- (id)hf_setShowAsIndividualServices:()HFAdditions
{
  v2 = [MEMORY[0x277CCABB0] numberWithBool:?];
  v3 = [a1 applicationData];
  [v3 setObject:v2 forKeyedSubscript:@"HFAccessoryShowAsIndividualServicesKey"];

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __59__HMAccessory_HFAdditions__hf_setShowAsIndividualServices___block_invoke;
  v6[3] = &unk_277DF2C68;
  v6[4] = a1;
  v4 = [MEMORY[0x277D2C900] futureWithErrorOnlyHandlerAdapterBlock:v6];

  return v4;
}

- (id)hf_linkedResidentDevice
{
  v2 = [a1 device];

  if (v2)
  {
    v3 = [a1 home];
    v4 = [v3 residentDevices];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __51__HMAccessory_HFAdditions__hf_linkedResidentDevice__block_invoke;
    v7[3] = &unk_277DF7F00;
    v7[4] = a1;
    v5 = [v4 na_firstObjectPassingTest:v7];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)hf_standardServices
{
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __47__HMAccessory_HFAdditions__hf_standardServices__block_invoke;
  aBlock[3] = &unk_277DF75E8;
  aBlock[4] = a1;
  v4 = _Block_copy(aBlock);
  v5 = +[HFHomePropertyCacheManager sharedManager];
  v6 = NSStringFromSelector(a2);
  v7 = [v5 valueForObject:a1 key:v6 invalidationReasons:2 recalculationBlock:v4];

  return v7;
}

- (id)hf_visibleServices
{
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __46__HMAccessory_HFAdditions__hf_visibleServices__block_invoke;
  aBlock[3] = &unk_277DF75E8;
  aBlock[4] = a1;
  v4 = _Block_copy(aBlock);
  v5 = +[HFHomePropertyCacheManager sharedManager];
  v6 = NSStringFromSelector(a2);
  v7 = [v5 valueForObject:a1 key:v6 invalidationReasons:3 recalculationBlock:v4];

  return v7;
}

- (id)hf_groupableServices
{
  v1 = [a1 hf_visibleServices];
  v2 = [v1 na_filter:&__block_literal_global_48_2];

  return v2;
}

- (id)hf_irrigationSystemServices
{
  v1 = [a1 services];
  v2 = [v1 na_filter:&__block_literal_global_50];

  return v2;
}

- (id)hf_primaryService
{
  v2 = [a1 hf_standardServices];
  v3 = [v2 na_firstObjectPassingTest:&__block_literal_global_52_0];

  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v5 = [a1 category];
    v6 = [v5 hf_compatibleServiceTypes];

    v7 = [a1 services];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __45__HMAccessory_HFAdditions__hf_primaryService__block_invoke_2;
    v13[3] = &unk_277DF4020;
    v8 = v6;
    v14 = v8;
    v9 = [v7 na_filter:v13];

    if ([v9 count])
    {
      v4 = [v9 firstObject];
    }

    else
    {
      v10 = [a1 services];
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __45__HMAccessory_HFAdditions__hf_primaryService__block_invoke_3;
      v12[3] = &unk_277DF4020;
      v12[4] = a1;
      v4 = [v10 na_firstObjectPassingTest:v12];
    }
  }

  return v4;
}

- (uint64_t)hf_hasInputSourceService
{
  v1 = [a1 hf_standardServices];
  v2 = [v1 na_any:&__block_literal_global_54_2];

  return v2;
}

- (id)hf_componentServices
{
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __48__HMAccessory_HFAdditions__hf_componentServices__block_invoke;
  aBlock[3] = &unk_277DF75E8;
  aBlock[4] = a1;
  v4 = _Block_copy(aBlock);
  v5 = +[HFHomePropertyCacheManager sharedManager];
  v6 = NSStringFromSelector(a2);
  v7 = [v5 valueForObject:a1 key:v6 invalidationReasons:3 recalculationBlock:v4];

  return v7;
}

- (id)hf_displayNamesForVisibleTiles
{
  if ([a1 hf_isVisibleAccessory] && objc_msgSend(a1, "hf_showAsAccessoryTile"))
  {
    v2 = MEMORY[0x277CBEB98];
    v3 = [a1 hf_displayName];
    v4 = [v2 setWithObject:v3];
  }

  else
  {
    v4 = [MEMORY[0x277CBEB58] set];
    v3 = [a1 hf_visibleServices];
    if ([a1 hf_isVisibleAccessory] && !objc_msgSend(v3, "count") || (objc_msgSend(a1, "hf_isNonServiceBasedAccessory") & 1) != 0 || objc_msgSend(a1, "hf_isVisibleAsBridge"))
    {
      v5 = [a1 hf_displayName];
      [v4 addObject:v5];
    }

    v6 = [v3 na_map:&__block_literal_global_61_2];
    [v4 unionSet:v6];
  }

  return v4;
}

- (uint64_t)hf_appPunchOutReason
{
  if ([a1 isAdditionalSetupRequired])
  {
    return 1;
  }

  v3 = [a1 services];
  v4 = [v3 na_any:&__block_literal_global_63_1];

  if (v4)
  {
    return 2;
  }

  if (![a1 hf_isBridge])
  {
    return 0;
  }

  v5 = [a1 uniqueIdentifiersForBridgedAccessories];
  v6 = [v5 count];

  if (v6)
  {
    return 0;
  }

  else
  {
    return 3;
  }
}

- (uint64_t)hf_numberOfProgrammableSwitches
{
  v1 = [a1 services];
  v2 = [v1 na_filter:&__block_literal_global_65_1];
  v3 = [v2 count];

  return v3;
}

- (id)hf_serviceOfType:()HFAdditions
{
  v4 = a3;
  v5 = [a1 services];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __45__HMAccessory_HFAdditions__hf_serviceOfType___block_invoke;
  v9[3] = &unk_277DF4020;
  v10 = v4;
  v6 = v4;
  v7 = [v5 na_firstObjectPassingTest:v9];

  return v7;
}

- (id)hf_programmableSwitchServices
{
  v1 = MEMORY[0x277CBEB98];
  v2 = [a1 services];
  v3 = [v2 na_filter:&__block_literal_global_67_0];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = MEMORY[0x277CBEBF8];
  }

  v6 = [v1 setWithArray:v5];

  return v6;
}

- (id)hf_programmableSwitchNamespaceServices
{
  v2 = objc_opt_new();
  v3 = [a1 hf_programmableSwitchServices];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __66__HMAccessory_HFAdditions__hf_programmableSwitchNamespaceServices__block_invoke;
  v7[3] = &unk_277DFAEF8;
  v8 = v2;
  v4 = v2;
  [v3 na_each:v7];

  v5 = [v4 copy];

  return v5;
}

- (id)hf_servicesBehindBridge
{
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __51__HMAccessory_HFAdditions__hf_servicesBehindBridge__block_invoke;
  aBlock[3] = &unk_277DF75E8;
  aBlock[4] = a1;
  v4 = _Block_copy(aBlock);
  v5 = +[HFHomePropertyCacheManager sharedManager];
  v6 = NSStringFromSelector(a2);
  v7 = [v5 valueForObject:a1 key:v6 invalidationReasons:3 recalculationBlock:v4];

  return v7;
}

- (id)hf_bridgedAccessories
{
  v2 = MEMORY[0x277CBEB98];
  v3 = [a1 uniqueIdentifiersForBridgedAccessories];
  v4 = [v2 setWithArray:v3];

  v5 = [a1 home];
  v6 = [v5 accessories];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __49__HMAccessory_HFAdditions__hf_bridgedAccessories__block_invoke;
  v10[3] = &unk_277DF3888;
  v11 = v4;
  v7 = v4;
  v8 = [v6 na_filter:v10];

  return v8;
}

- (id)hf_owningBridgeAccessory
{
  if ([a1 isBridged])
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __52__HMAccessory_HFAdditions__hf_owningBridgeAccessory__block_invoke;
    aBlock[3] = &unk_277DF75E8;
    aBlock[4] = a1;
    v4 = _Block_copy(aBlock);
    v5 = +[HFHomePropertyCacheManager sharedManager];
    v6 = NSStringFromSelector(a2);
    v7 = [v5 valueForObject:a1 key:v6 invalidationReasons:3 recalculationBlock:v4];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)hf_networkConfigurationProfiles
{
  v1 = [a1 profiles];
  v2 = [v1 na_map:&__block_literal_global_75_0];

  return v2;
}

- (uint64_t)hf_hasManagedNetworkCredential
{
  v1 = [a1 hf_networkConfigurationProfiles];
  v2 = [v1 na_any:&__block_literal_global_79];

  return v2;
}

- (uint64_t)hf_needsReprovisioningCheck
{
  if ([a1 reachableTransports])
  {
    return 0;
  }

  v2 = [a1 home];
  if ([v2 hf_isUserAtHome])
  {
    v3 = [a1 transportTypes] & 1;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

+ (id)hf_getUserFriendlyDescriptionKey:()HFAdditions
{
  v3 = qword_280E02FF8;
  v4 = a3;
  if (v3 != -1)
  {
    dispatch_once(&qword_280E02FF8, &__block_literal_global_81);
  }

  v5 = [qword_280E02FF0 objectForKeyedSubscript:v4];

  return v5;
}

+ (id)hf_getUserFriendlyMatterDescriptionKey:()HFAdditions
{
  v3 = qword_280E03008;
  v4 = a3;
  if (v3 != -1)
  {
    dispatch_once(&qword_280E03008, &__block_literal_global_195);
  }

  v5 = [qword_280E03000 objectForKeyedSubscript:v4];

  return v5;
}

+ (id)hf_userFriendlyLocalizedCapitalizedPluralDescription:()HFAdditions
{
  v4 = a3;
  v5 = [a1 hf_getUserFriendlyDescriptionKey:v4];
  v6 = [v5 stringByAppendingString:@"_CategoryCapitalizedPlural"];

  if (v6 || ([MEMORY[0x277CD1D90] hf_userFriendlyLocalizedCapitalizedDescription:v4], (v10 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v7 = [a1 hf_getUserFriendlyDescriptionKey:*MEMORY[0x277CCE8C8]];
    v8 = [v7 stringByAppendingString:@"_CategoryCapitalizedPlural"];
    v9 = _HFLocalizedStringWithDefaultValue(v8, v8, 1);
    v10 = _HFLocalizedStringWithDefaultValue(v6, v9, 0);
  }

  return v10;
}

+ (id)hf_userFriendlyLocalizedCapitalizedDescription:()HFAdditions
{
  v4 = a3;
  v5 = [a1 hf_getUserFriendlyDescriptionKey:v4];
  v6 = [v5 stringByAppendingString:@"_CategoryCapitalized"];

  if (v6 || ([MEMORY[0x277CD1D90] hf_userFriendlyLocalizedCapitalizedDescription:v4], (v10 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v7 = [a1 hf_getUserFriendlyDescriptionKey:*MEMORY[0x277CCE8C8]];
    v8 = [v7 stringByAppendingString:@"_CategoryCapitalized"];
    v9 = _HFLocalizedStringWithDefaultValue(v8, v8, 1);
    v10 = _HFLocalizedStringWithDefaultValue(v6, v9, 0);
  }

  return v10;
}

+ (id)hf_userFriendlyLocalizedLowercaseDescription:()HFAdditions
{
  v4 = a3;
  v5 = [a1 hf_getUserFriendlyDescriptionKey:v4];
  v6 = [v5 stringByAppendingString:@"_CategoryLowercase"];

  if (v6 || ([MEMORY[0x277CD1D90] hf_userFriendlyLocalizedLowercaseDescription:v4], (v10 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v7 = [a1 hf_getUserFriendlyDescriptionKey:*MEMORY[0x277CCE8C8]];
    v8 = [v7 stringByAppendingString:@"_CategoryLowercase"];
    v9 = _HFLocalizedStringWithDefaultValue(v8, v8, 1);
    v10 = _HFLocalizedStringWithDefaultValue(v6, v9, 0);
  }

  return v10;
}

- (id)hf_categoryOrPrimaryServiceType
{
  v2 = [a1 _hf_categoryType];
  if (([v2 isEqualToString:*MEMORY[0x277CCE8C8]] & 1) != 0 || objc_msgSend(a1, "hf_isSingleSensorAccessory"))
  {
    v3 = [a1 hf_primaryService];
    v4 = v3;
    if (v3)
    {
      v5 = [v3 serviceType];

      v2 = v5;
    }
  }

  return v2;
}

- (id)_hf_categoryType
{
  v2 = [a1 category];
  v3 = [v2 categoryType];

  if ([a1 hf_isCeilingFanWithLight])
  {
    v4 = HMAccessoryCategoryTypeHFAdditionCeilingFanWithLight;
LABEL_11:
    v5 = *v4;

    v3 = v5;
    goto LABEL_12;
  }

  if ([a1 hf_isSensorAccessory])
  {
    v4 = MEMORY[0x277CCE8F0];
    goto LABEL_11;
  }

  if ([a1 hf_isPowerStrip])
  {
    v4 = HMAccessoryCategoryTypeHFAdditionPowerStrip;
    goto LABEL_11;
  }

  if ([a1 hf_isSprinkler])
  {
    v4 = MEMORY[0x277CCE908];
    goto LABEL_11;
  }

  if ([a1 hf_isVisibleAsBridge])
  {
    v4 = MEMORY[0x277CCE880];
    goto LABEL_11;
  }

  if ([v3 isEqualToString:*MEMORY[0x277CCE8C8]] && objc_msgSend(a1, "hf_isCamera"))
  {
    v7 = [a1 services];
    v8 = [v7 na_any:&__block_literal_global_212_0];

    v4 = MEMORY[0x277CCE8B8];
    if (v8)
    {
      v4 = MEMORY[0x277CCE948];
    }

    goto LABEL_11;
  }

LABEL_12:

  return v3;
}

- (id)hf_userFriendlyLocalizedCapitalizedDescription
{
  v1 = [a1 hf_categoryOrPrimaryServiceType];
  v2 = [objc_opt_class() hf_userFriendlyLocalizedCapitalizedDescription:v1];

  return v2;
}

- (id)hf_userFriendlyLocalizedLowercaseDescription
{
  v1 = [a1 hf_categoryOrPrimaryServiceType];
  v2 = [objc_opt_class() hf_userFriendlyLocalizedLowercaseDescription:v1];

  return v2;
}

+ (uint64_t)hf_isSuspendedStateSuspended:()HFAdditions
{
  v10 = *MEMORY[0x277D85DE8];
  if (a3 >= 4)
  {
    v5 = HFLogForCategory(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v8 = 134217984;
      v9 = a3;
      _os_log_error_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_ERROR, "Unknown HMAccessorySuspendedState %lu", &v8, 0xCu);
    }

    LOBYTE(v4) = 0;
  }

  else
  {
    v4 = 0xCu >> (a3 & 0xF);
  }

  v6 = *MEMORY[0x277D85DE8];
  return v4 & 1;
}

+ (uint64_t)hf_isSuspendedStateSupported:()HFAdditions
{
  v10 = *MEMORY[0x277D85DE8];
  if (a3 >= 4)
  {
    v5 = HFLogForCategory(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v8 = 134217984;
      v9 = a3;
      _os_log_error_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_ERROR, "Unknown HMAccessorySuspendedState %lu", &v8, 0xCu);
    }

    LOBYTE(v4) = 1;
  }

  else
  {
    v4 = 0xEu >> (a3 & 0xF);
  }

  v6 = *MEMORY[0x277D85DE8];
  return v4 & 1;
}

- (void)hf_siriEndpointProfile
{
  v1 = [a1 profiles];
  v2 = [v1 na_firstObjectPassingTest:&__block_literal_global_215];

  objc_opt_class();
  v3 = v2;
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

- (uint64_t)hf_needsOnboarding
{
  v1 = [a1 hf_siriEndpointProfile];
  v2 = [v1 isNeedsOnboarding];

  return v2;
}

- (id)hf_errorForCurrentSessionState
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = [a1 hf_needsOnboarding];
  if ((v2 & 1) != 0 || ([a1 hf_siriEndpointProfile], v3 = objc_claimAutoreleasedReturnValue(), v4 = objc_msgSend(v3, "supportsOnboarding"), v3, !v4))
  {
    v6 = -1;
  }

  else
  {
    v5 = [a1 hf_siriEndpointProfile];
    v6 = [v5 sessionState];
  }

  v7 = HFLogForCategory(0x41uLL);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v2 ^ 1;
    v9 = [a1 hf_siriEndpointProfile];
    v14[0] = 67109890;
    v14[1] = v8;
    v15 = 1024;
    v16 = [v9 supportsOnboarding];
    v17 = 2112;
    v18 = a1;
    v19 = 2048;
    v20 = v6;
    _os_log_impl(&dword_20D9BF000, v7, OS_LOG_TYPE_DEFAULT, "accessoryIsOnboarded %{BOOL}d supportsOnBoarding %{BOOL}d sessionState from accessory [%@] = %ld", v14, 0x22u);
  }

  switch(v6)
  {
    case 0:
      v10 = 70;
      goto LABEL_13;
    case 3:
      v10 = 72;
      goto LABEL_13;
    case 2:
      v10 = 71;
LABEL_13:
      v11 = [MEMORY[0x277CCA9B8] hf_errorWithCode:v10];
      goto LABEL_15;
  }

  v11 = 0;
LABEL_15:
  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (void)hf_onboardSiriEndpointIfNeededWithSettingKeyPath:()HFAdditions settingValue:
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [a1 hf_siriEndpointProfile];
  if (v8 && ([a1 hf_needsOnboarding] & 1) != 0)
  {
    v9 = [a1 hf_siriEndpointProfile];
    v10 = [v9 supportsOnboarding];

    if (v10)
    {
      v11 = objc_alloc_init(MEMORY[0x277CD1E20]);
      objc_opt_class();
      v12 = v7;
      if (objc_opt_isKindOfClass())
      {
        v13 = v12;
      }

      else
      {
        v13 = 0;
      }

      v14 = v13;

      objc_opt_class();
      v15 = v12;
      if (objc_opt_isKindOfClass())
      {
        v16 = v15;
      }

      else
      {
        v16 = 0;
      }

      v17 = v16;

      if ([v6 isEqualToString:HFAllowHeySiriSettingKeyPath] && v14)
      {
        -[NSObject setAllowHeySiri:](v11, "setAllowHeySiri:", [v14 BOOLValue]);
      }

      else if ([v6 isEqualToString:HFSiriLanguageSettingKeyPath] && v17)
      {
        [v11 setLanguageValue:v17];
      }

      else if ([v6 isEqualToString:HFLightWhenUsingSiriSettingKeyPath] && v14)
      {
        -[NSObject setLightWhenUsingSiriEnabled:](v11, "setLightWhenUsingSiriEnabled:", [v14 BOOLValue]);
      }

      else if ([v6 isEqualToString:HFAirPlayEnabledSettingKeyPath] && v14)
      {
        -[NSObject setAirPlayEnabled:](v11, "setAirPlayEnabled:", [v14 BOOLValue]);
      }

      else if ([v6 isEqualToString:HFAllowExplicitContentKeyPath] && v14)
      {
        -[NSObject setExplicitContentAllowed:](v11, "setExplicitContentAllowed:", [v14 BOOLValue]);
      }

      else if ([v6 isEqualToString:HFShareSiriAnalyticsKeyPath] && v14)
      {
        -[NSObject setShareSiriAnalyticsEnabled:](v11, "setShareSiriAnalyticsEnabled:", [v14 BOOLValue]);
      }

      else if ([v6 isEqualToString:HFDoorbellChimeEnabledKeyPath] && v14)
      {
        -[NSObject setDoorbellChimeEnabled:](v11, "setDoorbellChimeEnabled:", [v14 BOOLValue]);
      }

      else if ([v6 isEqualToString:HFAnnounceEnabledKeyPath] && v14)
      {
        -[NSObject setAnnounceEnabled:](v11, "setAnnounceEnabled:", [v14 BOOLValue]);
      }

      v20 = [a1 hf_siriEndpointProfile];
      [v20 applyOnboardingSelections:v11 completionHandler:&__block_literal_global_223_0];

      goto LABEL_38;
    }
  }

  else
  {
  }

  v11 = HFLogForCategory(0x41uLL);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v18 = [a1 hf_needsOnboarding];
    v19 = [a1 hf_siriEndpointProfile];
    v22 = 138412802;
    v23 = a1;
    v24 = 1024;
    v25 = v18;
    v26 = 1024;
    v27 = [v19 supportsOnboarding];
    _os_log_impl(&dword_20D9BF000, v11, OS_LOG_TYPE_DEFAULT, "NOT Implicitly Onboarding accessory:[%@], hf_needsOnboarding = %{BOOL}d, supportsOnboarding = %{BOOL}d", &v22, 0x18u);
  }

LABEL_38:

  v21 = *MEMORY[0x277D85DE8];
}

- (uint64_t)hf_shouldHideNearbyAccessoryService:()HFAdditions
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 accessory];
  if ([v5 hf_isFirstPartyAccessory])
  {
    goto LABEL_2;
  }

  if ([v5 isEqual:a1])
  {
    v7 = HFLogForCategory(0x33uLL);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v14 = 138412546;
      v15 = v5;
      v16 = 2112;
      v17 = v4;
      _os_log_debug_impl(&dword_20D9BF000, v7, OS_LOG_TYPE_DEBUG, "Camera-associated filtering for camera:%@ services:%@", &v14, 0x16u);
    }

    v6 = [v4 hf_isDisplayableSensor] ^ 1;
  }

  else
  {
    if ([v5 hf_isCamera] & 1) != 0 || (objc_msgSend(v4, "serviceType"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "isEqual:", *MEMORY[0x277CD0EC0]), v10, (v11))
    {
LABEL_2:
      v6 = 1;
      goto LABEL_7;
    }

    v12 = [v4 serviceType];
    v13 = [v12 isEqualToString:*MEMORY[0x277CD0ED8]];

    if (v13)
    {
      v6 = 0;
    }

    else
    {
      v6 = [v4 hf_isInGroup];
    }
  }

LABEL_7:

  v8 = *MEMORY[0x277D85DE8];
  return v6;
}

- (uint64_t)hf_isFirstPartyAccessory
{
  if ([a1 hf_isHomePod])
  {
    return 1;
  }

  return [a1 hf_isAppleTV];
}

- (id)hf_allConnectedHomeToCHIPAccessoryPairingFuture
{
  if ([a1 supportsCHIP])
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __75__HMAccessory_HFAdditions__hf_allConnectedHomeToCHIPAccessoryPairingFuture__block_invoke;
    v9[3] = &unk_277DF2C90;
    v9[4] = a1;
    v4 = [MEMORY[0x277D2C900] futureWithCompletionHandlerAdapterBlock:v9];
    v5 = [v4 flatMap:&__block_literal_global_227_2];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __75__HMAccessory_HFAdditions__hf_allConnectedHomeToCHIPAccessoryPairingFuture__block_invoke_4;
    v8[3] = &__block_descriptor_40_e27___NAFuture_16__0__NSError_8l;
    v8[4] = a2;
    v6 = [v5 recover:v8];
  }

  else
  {
    v6 = [MEMORY[0x277D2C900] futureWithResult:MEMORY[0x277CBEC10]];
  }

  return v6;
}

- (id)hf_minimumDescription
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [a1 name];
  v4 = [a1 uniqueIdentifier];
  v5 = [v2 stringWithFormat:@"<HMAccessory Name:'%@', id: %@>", v3, v4];

  return v5;
}

- (uint64_t)hf_shouldShowPresetConfiguration
{
  result = [a1 supportsAdaptiveTemperatureAutomations];
  if (result)
  {

    return [a1 shouldShowPresetConfiguration];
  }

  return result;
}

- (id)hf_enableAdaptiveTemperatureTo:()HFAdditions
{
  objc_initWeak(&location, val);
  v4 = MEMORY[0x277D2C900];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __59__HMAccessory_HFAdditions__hf_enableAdaptiveTemperatureTo___block_invoke;
  v7[3] = &unk_277DFAF80;
  objc_copyWeak(&v8, &location);
  v9 = a3;
  v5 = [v4 futureWithBlock:v7];
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);

  return v5;
}

- (id)hf_enableGridForecastAutomationTo:()HFAdditions
{
  objc_initWeak(&location, val);
  v4 = MEMORY[0x277D2C900];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __62__HMAccessory_HFAdditions__hf_enableGridForecastAutomationTo___block_invoke;
  v7[3] = &unk_277DFAF80;
  objc_copyWeak(&v8, &location);
  v9 = a3;
  v5 = [v4 futureWithBlock:v7];
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);

  return v5;
}

- (id)hf_setHasOnboardedForAdaptiveTemperature
{
  objc_initWeak(&location, val);
  v1 = MEMORY[0x277D2C900];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __68__HMAccessory_HFAdditions__hf_setHasOnboardedForAdaptiveTemperature__block_invoke;
  v4[3] = &unk_277DF4F68;
  objc_copyWeak(&v5, &location);
  v2 = [v1 futureWithBlock:v4];
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);

  return v2;
}

- (id)hf_setHasOnboardedForCleanEnergyAutomation
{
  objc_initWeak(&location, val);
  v1 = MEMORY[0x277D2C900];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __70__HMAccessory_HFAdditions__hf_setHasOnboardedForCleanEnergyAutomation__block_invoke;
  v4[3] = &unk_277DF4F68;
  objc_copyWeak(&v5, &location);
  v2 = [v1 futureWithBlock:v4];
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);

  return v2;
}

@end