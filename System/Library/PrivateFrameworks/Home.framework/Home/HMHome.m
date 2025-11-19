@interface HMHome
@end

@implementation HMHome

uint64_t __50__HMHome_HFUserHandleAdditions__hf_userForHandle___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 userID];
  v4 = [*(a1 + 32) userID];
  v5 = [v3 isEqualToString:v4];

  return v5;
}

id __54__HMHome_HFDebugging__hf_stateDumpBuilderWithContext___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCACA8];
  v3 = a2;
  v4 = [v3 hf_displayName];
  v5 = [v3 uuid];

  v6 = [v2 stringWithFormat:@"%@ : UUID %@", v4, v5];

  return v6;
}

id __54__HMHome_HFDebugging__hf_stateDumpBuilderWithContext___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCACA8];
  v3 = a2;
  v4 = [v3 hf_displayName];
  v5 = [v3 uuid];

  v6 = [v2 stringWithFormat:@"%@ : UUID %@", v4, v5];

  return v6;
}

uint64_t __79__HMHome_HFFavoritingAdditions__hf_favoriteCameraCountExcludingHomeKitObjects___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 hf_effectiveShowInHomeDashboard];
  if ([*(a1 + 32) containsObject:v3])
  {
    v5 = 0;
  }

  else
  {
    v5 = [v3 hf_isCamera] & v4;
  }

  return v5;
}

uint64_t __62__HMHome_Additions__hf_autoClimateCapableThermostatsToOnboard__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 supportsAdaptiveTemperatureAutomations])
  {
    v3 = [v2 hasOnboardedForAdaptiveTemperatureAutomations] ^ 1;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void __54__HMHome_Additions__hf_updateIncludeElectricityRates___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) hf_energyManager];
  v5 = *(a1 + 40);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __54__HMHome_Additions__hf_updateIncludeElectricityRates___block_invoke_2;
  v7[3] = &unk_277DF7E38;
  v8 = v3;
  v6 = v3;
  [v4 updateIncludeElectricityRates:v5 completionHandler:v7];
}

void __54__HMHome_Additions__hf_updateIncludeElectricityRates___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277CCABB0] numberWithBool:a2];
  [v2 finishWithResult:v3];
}

uint64_t __43__HMHome_Additions__hf_roomWithIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 uniqueIdentifier];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

uint64_t __37__HMHome_Additions__hf_roomWithName___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 name];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

id __36__HMHome_Additions__hf_orderedRooms__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained hf_dashboardSectionReorderableHomeKitObjectComparator];
  if (!v2)
  {
    NSLog(&cfstr_CouldNotCreate.isa, WeakRetained);
  }

  v3 = [WeakRetained hf_activeRooms];
  v4 = [v3 sortedArrayUsingComparator:v2];

  return v4;
}

void __40__HMHome_Additions__hf_setSelectedRoom___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 home:*(a1 + 32) didSelectRoom:*(a1 + 40)];
  }
}

uint64_t __43__HMHome_Additions__hf_zoneWithIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 uniqueIdentifier];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

void __48__HMHome_Additions__hf_updateNetworkProtection___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = HFLogForCategory(0x3EuLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 40);
    *buf = 134218242;
    v13 = v6;
    v14 = 2112;
    v15 = WeakRetained;
    _os_log_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_DEFAULT, "Updating network protection mode to %li for home %@", buf, 0x16u);
  }

  v7 = *(a1 + 40);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __48__HMHome_Additions__hf_updateNetworkProtection___block_invoke_122;
  v10[3] = &unk_277DF2748;
  v10[4] = WeakRetained;
  v11 = v3;
  v8 = v3;
  [WeakRetained updateNetworkProtection:v7 completionHandler:v10];

  v9 = *MEMORY[0x277D85DE8];
}

void __48__HMHome_Additions__hf_updateNetworkProtection___block_invoke_122(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = +[HFHomeKitDispatcher sharedDispatcher];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__HMHome_Additions__hf_updateNetworkProtection___block_invoke_2;
  v7[3] = &unk_277DF2CB8;
  v7[4] = *(a1 + 32);
  [v4 dispatchHomeObserverMessage:v7 sender:0];

  if (v3)
  {
    v5 = HFLogForCategory(0x3EuLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v9 = v3;
      _os_log_error_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_ERROR, "Failed to update network protection mode with error %@", buf, 0xCu);
    }

    [*(a1 + 40) finishWithError:v3];
  }

  else
  {
    [*(a1 + 40) finishWithNoResult];
  }

  v6 = *MEMORY[0x277D85DE8];
}

uint64_t __50__HMHome_Additions__hf_accessoryWithMatterNodeID___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 matterNodeID];
  v4 = [v3 isEqualToNumber:*(a1 + 32)];

  return v4;
}

uint64_t __54__HMHome_Additions__hf_mediaSystemForSymptomsHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 accessories];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __54__HMHome_Additions__hf_mediaSystemForSymptomsHandler___block_invoke_2;
  v6[3] = &unk_277DF3888;
  v7 = *(a1 + 32);
  v4 = [v3 na_any:v6];

  return v4;
}

uint64_t __54__HMHome_Additions__hf_mediaSystemForSymptomsHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 symptomsHandler];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

uint64_t __56__HMHome_Additions__hf_allProgrammableSwitchAccessories__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 services];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __56__HMHome_Additions__hf_allProgrammableSwitchAccessories__block_invoke_2;
  v6[3] = &unk_277DF4020;
  v7 = *(a1 + 32);
  v4 = [v3 na_any:v6];

  return v4;
}

uint64_t __56__HMHome_Additions__hf_allProgrammableSwitchAccessories__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 serviceType];
  v4 = [v2 containsObject:v3];

  return v4;
}

uint64_t __46__HMHome_Additions__hf_enabledResidentDevices__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 isEnabled])
  {
    v3 = [v2 capabilities] & 1;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t __42__HMHome_Additions__hf_actionSetWithUUID___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 uniqueIdentifier];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

id __50__HMHome_Additions__hf_residentDevicesAddedToHome__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 device];
  v3 = [v2 uniqueIdentifier];

  return v3;
}

uint64_t __50__HMHome_Additions__hf_residentDevicesAddedToHome__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 hf_isResidentAppleTV])
  {
    v4 = *(a1 + 32);
    v5 = [v3 device];
    v6 = [v5 uniqueIdentifier];
    v7 = [v4 containsObject:v6];
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

uint64_t __48__HMHome_Additions__hf_serviceGroupsForService___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 hf_isSupported])
  {
    v4 = [v3 services];
    v5 = [v4 containsObject:*(a1 + 32)];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t __51__HMHome_Additions__hf_serviceGroupWithIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 uniqueIdentifier];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

uint64_t __48__HMHome_Additions__hf_mediaSystemForAccessory___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 components];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __48__HMHome_Additions__hf_mediaSystemForAccessory___block_invoke_2;
  v6[3] = &unk_277DF7F50;
  v7 = *(a1 + 32);
  v4 = [v3 na_any:v6];

  return v4;
}

uint64_t __48__HMHome_Additions__hf_mediaSystemForAccessory___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 mediaProfile];
  v4 = [v3 accessory];
  v5 = [v4 isEqual:*(a1 + 32)];

  return v5;
}

uint64_t __50__HMHome_Additions__hf_mediaSystemWithIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 uniqueIdentifier];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

uint64_t __53__HMHome_Additions__hf_appleTVUsingAudioDestination___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 audioDestinationController];
  v4 = [v3 destination];
  v5 = [v4 audioDestinationIdentifier];
  v6 = [v5 isEqualToString:*(a1 + 32)];

  return v6;
}

uint64_t __67__HMHome_Additions__hf_relatedHomeTheaterMediaProfileContainerFor___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 hf_backingAccessory];

  if (v4)
  {
    v5 = [v3 hf_backingAccessory];
  }

  else
  {
    objc_opt_class();
    v6 = v3;
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    v5 = v7;
  }

  v8 = [v5 audioDestinationIdentifier];
  v9 = [*(a1 + 32) audioDestinationIdentifier];
  v10 = [v8 isEqualToString:v9];

  return v10;
}

BOOL __53__HMHome_Additions__hf_appleTVsSupportingHomeTheater__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 audioDestinationController];
  v3 = [v2 availableDestinations];
  v4 = [v3 count] != 0;

  return v4;
}

uint64_t __72__HMHome_Additions__hf_hasFirstPartyAccessoriesSupportingSoftwareUpdate__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 hf_isHomePod])
  {
    v3 = 1;
  }

  else
  {
    v3 = [v2 supportsSoftwareUpdateV2];
  }

  return v3;
}

uint64_t __72__HMHome_Additions__hf_hasThirdPartyAccessoriesSupportingSoftwareUpdate__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 hf_supportsSoftwareUpdate])
  {
    v3 = [v2 hf_isHomePod] ^ 1;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id __60__HMHome_Additions__hf_accessoriesSupportingNaturalLighting__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 services];
  v3 = [v2 na_map:&__block_literal_global_180_0];

  return v3;
}

id __63__HMHome_Additions__hf_homeKitObjectsSupportingNaturalLighting__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 accessory];
  if ([v3 hf_isMultiServiceAccessory])
  {
    v4 = [v2 accessory];
    v5 = [v4 hf_showAsIndividualServices];

    if ((v5 & 1) == 0)
    {
      v6 = [v2 accessory];
      goto LABEL_6;
    }
  }

  else
  {
  }

  v6 = v2;
LABEL_6:
  v7 = v6;

  return v7;
}

uint64_t __53__HMHome_Additions__hf_containsActionableAccessories__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_alloc_init(HFNullValueSource);
  v4 = [HFServiceItem serviceItemForService:v2 valueSource:v3];

  v5 = [v4 containsActions];
  return v5;
}

BOOL __41__HMHome_Additions__hf_hasVisibleServies__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 hf_visibleServices];
  v3 = [v2 count] != 0;

  return v3;
}

void *__55__HMHome_Additions__hf_allNetworkConfigurationProfiles__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
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

id __40__HMHome_Additions__hf_allLightProfiles__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 lightProfiles];
  v3 = [v2 allObjects];

  return v3;
}

uint64_t __65__HMHome_Additions__hf_allLightProfilesSupportingNaturalLighting__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 settings];
  v3 = [v2 supportedFeatures];

  return v3 & 1;
}

uint64_t __52__HMHome_Additions__hf_cameraProfileWithIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 uniqueIdentifier];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

uint64_t __57__HMHome_Additions__hf_cameraProfileForSignificantEvent___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 uuid];
  v4 = [*(a1 + 32) cameraProfileUUID];
  v5 = [v3 isEqual:v4];

  return v5;
}

uint64_t __60__HMHome_Additions__hf_allCameraProfilesSupportingRecording__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 userSettings];
  v3 = [v2 supportedFeatures];

  return (v3 >> 1) & 1;
}

BOOL __60__HMHome_Additions__hf_allCameraProfilesWithDoorbellService__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 accessory];
  v3 = [v2 hf_serviceOfType:*MEMORY[0x277CD0E38]];
  v4 = v3 != 0;

  return v4;
}

BOOL __72__HMHome_Additions__hf_allCameraProfilesWithSmartMotionRecordingEnabled__block_invoke(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 userSettings];
  v5 = [v4 accessModeForPresenceType:3];

  v6 = [v3 userSettings];
  v7 = [v6 accessModeForPresenceType:4];

  v8 = [v3 userSettings];
  v9 = [v8 recordingEventTriggers];

  v11 = v5 == 2 || v7 == 2;
  v12 = *(a1 + 32) & v9;
  v13 = HFLogForCategory(0x13uLL);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138412802;
    v18 = v3;
    v19 = 1024;
    v20 = v11;
    v21 = 1024;
    v22 = v12 != 0;
    _os_log_impl(&dword_20D9BF000, v13, OS_LOG_TYPE_DEFAULT, "Camera %@ streamAndRecord %d recordingEvents %d", &v17, 0x18u);
  }

  if (v12)
  {
    v14 = v11;
  }

  else
  {
    v14 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

uint64_t __49__HMHome_Additions__hf_hasSecureRecordingCameras__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 cameraProfiles];
  v3 = [v2 na_any:&__block_literal_global_222];

  return v3;
}

BOOL __49__HMHome_Additions__hf_hasSecureRecordingCameras__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 userSettings];
  v3 = [v2 supportedFeatures];

  return (v3 & 6) != 0;
}

uint64_t __49__HMHome_Additions__hf_allMediaProfileContainers__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 accessory];
  v3 = [v2 hf_isMediaAccessory];

  return v3;
}

BOOL __75__HMHome_Additions__hf_allUniqueMediaProfileContainersExcludingMediaGroups__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 hf_backingAccessory];
  v4 = [v3 home];
  v5 = [v2 hf_backingAccessory];

  v6 = [v4 hf_mediaSystemForAccessory:v5];

  return v6 == 0;
}

id __55__HMHome_Additions__hf_allUniqueMediaProfileContainers__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 hf_isMediaAccessory])
  {
    v3 = [v2 mediaProfile];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

BOOL __55__HMHome_Additions__hf_allUniqueMediaProfileContainers__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 hf_backingAccessory];
  v4 = [v3 home];
  v5 = [v2 hf_backingAccessory];

  v6 = [v4 hf_mediaSystemForAccessory:v5];

  return v6 == 0;
}

BOOL __48__HMHome_Additions__hf_allHomePodsOrStereoPairs__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v4 = v3;
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  v7 = [v6 accessory];
  v8 = [v7 hf_isHomePod];

  if (v8)
  {
    v9 = *(a1 + 32);
    v10 = [v6 accessory];
    v11 = [v9 hf_mediaSystemForAccessory:v10];
    v12 = v11 == 0;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

uint64_t __51__HMHome_Additions__hf_allHomePodProfileContainers__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
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

  v6 = [v5 accessory];
  v7 = [v6 hf_isHomePod];

  return v7;
}

void __50__HMHome_Additions__hf_setFaceRecognitionEnabled___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(MEMORY[0x277CD1C68]);
  [v4 setFaceClassificationEnabled:*(a1 + 40)];
  v5 = *(a1 + 32);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __50__HMHome_Additions__hf_setFaceRecognitionEnabled___block_invoke_2;
  v8[3] = &unk_277DF80A0;
  v11 = *(a1 + 40);
  v8[4] = v5;
  v9 = v3;
  v10 = v4;
  v6 = v4;
  v7 = v3;
  [v5 updatePersonManagerSettings:v6 completion:v8];
}

void __50__HMHome_Additions__hf_setFaceRecognitionEnabled___block_invoke_2(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = HFLogForCategory(0x13uLL);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      v8 = *(a1 + 56);
      v9 = [v7 personManager];
      *buf = 138413058;
      v17 = v7;
      v18 = 1024;
      v19 = v8;
      v20 = 2112;
      v21 = v9;
      v22 = 2112;
      v23 = v3;
      _os_log_error_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_ERROR, "%@: Failed to update face recognition enabled(%d) for person manager %@ with error %@", buf, 0x26u);
    }

    [*(a1 + 40) finishWithError:v3];
  }

  else
  {
    v5 = +[HFHomeKitDispatcher sharedDispatcher];
    v10 = MEMORY[0x277D85DD0];
    v11 = 3221225472;
    v12 = __50__HMHome_Additions__hf_setFaceRecognitionEnabled___block_invoke_246;
    v13 = &unk_277DF3810;
    v14 = *(a1 + 32);
    v15 = *(a1 + 48);
    [v5 dispatchHomeObserverMessage:&v10 sender:0];

    [*(a1 + 40) finishWithNoResult];
  }

  v6 = *MEMORY[0x277D85DE8];
}

void __50__HMHome_Additions__hf_setFaceRecognitionEnabled___block_invoke_246(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 home:*(a1 + 32) didUpdatePersonManagerSettings:*(a1 + 40)];
  }
}

void __50__HMHome_Additions__hf_setFaceRecognitionEnabled___block_invoke_2_249(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) currentUser];
  v5 = objc_alloc_init(MEMORY[0x277CD1C80]);
  [v5 setImportingFromPhotoLibraryEnabled:0];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __50__HMHome_Additions__hf_setFaceRecognitionEnabled___block_invoke_3;
  v10[3] = &unk_277DF80F0;
  v6 = *(a1 + 32);
  v14 = *(a1 + 40);
  v10[4] = v6;
  v11 = v4;
  v12 = v3;
  v13 = v5;
  v7 = v5;
  v8 = v3;
  v9 = v4;
  [v9 updatePhotosPersonManagerSettings:v7 completion:v10];
}

void __50__HMHome_Additions__hf_setFaceRecognitionEnabled___block_invoke_3(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = HFLogForCategory(0x13uLL);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 64);
      v9 = *(a1 + 32);
      v8 = *(a1 + 40);
      v10 = [v8 name];
      *buf = 138413314;
      v18 = v9;
      v19 = 1024;
      v20 = v7;
      v21 = 2112;
      v22 = v8;
      v23 = 2112;
      v24 = v10;
      v25 = 2112;
      v26 = v3;
      _os_log_error_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_ERROR, "%@: Failed to update face recognition enabled(%d) for user %@ (%@) with error %@", buf, 0x30u);
    }

    [*(a1 + 48) finishWithError:v3];
  }

  else
  {
    v5 = +[HFHomeKitDispatcher sharedDispatcher];
    v11 = MEMORY[0x277D85DD0];
    v12 = 3221225472;
    v13 = __50__HMHome_Additions__hf_setFaceRecognitionEnabled___block_invoke_251;
    v14 = &unk_277DF80C8;
    v15 = *(a1 + 40);
    v16 = *(a1 + 56);
    [v5 dispatchUserObserverMessage:&v11 sender:0];

    [*(a1 + 48) finishWithNoResult];
  }

  v6 = *MEMORY[0x277D85DE8];
}

void __50__HMHome_Additions__hf_setFaceRecognitionEnabled___block_invoke_251(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 user:*(a1 + 32) didUpdatePhotosPersonManagerSettings:*(a1 + 40)];
  }
}

uint64_t __52__HMHome_Additions__hf_personManagerWithIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 UUID];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

id __34__HMHome_Additions__hf_allPersons__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = MEMORY[0x277D2C900];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __34__HMHome_Additions__hf_allPersons__block_invoke_2;
  v7[3] = &unk_277DF2C90;
  v8 = v2;
  v4 = v2;
  v5 = [v3 futureWithCompletionHandlerAdapterBlock:v7];

  return v5;
}

id __34__HMHome_Additions__hf_allPersons__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D2C900];
  v3 = [a2 na_flatMap:&__block_literal_global_270];
  v4 = [v2 futureWithResult:v3];

  return v4;
}

id __45__HMHome_Additions__hf_personWithIdentifier___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 na_map:&__block_literal_global_275];
  v3 = [v2 firstObject];

  v4 = MEMORY[0x277D2C900];
  if (v3)
  {
    v5 = [MEMORY[0x277D2C900] futureWithResult:v3];
  }

  else
  {
    v6 = [MEMORY[0x277CCA9B8] hf_errorWithCode:30];
    v5 = [v4 futureWithError:v6];
  }

  return v5;
}

void *__45__HMHome_Additions__hf_personWithIdentifier___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
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

void __101__HMHome_Additions__hf_setPhotosLibrarySettingsForUser_importPhotosLibraryEnabled_shareFacesEnabled___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(MEMORY[0x277CD1C80]);
  [v4 setImportingFromPhotoLibraryEnabled:*(a1 + 48)];
  [v4 setSharingFaceClassificationsEnabled:*(a1 + 49)];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __101__HMHome_Additions__hf_setPhotosLibrarySettingsForUser_importPhotosLibraryEnabled_shareFacesEnabled___block_invoke_2;
  v8[3] = &unk_277DF81C8;
  v5 = *(a1 + 32);
  v8[4] = *(a1 + 40);
  v9 = v4;
  v10 = v5;
  v11 = v3;
  v6 = v3;
  v7 = v4;
  [v10 updatePhotosPersonManagerSettings:v7 completion:v8];
}

void __101__HMHome_Additions__hf_setPhotosLibrarySettingsForUser_importPhotosLibraryEnabled_shareFacesEnabled___block_invoke_2(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = HFLogForCategory(0x13uLL);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      v8 = *(a1 + 40);
      v9 = *(a1 + 48);
      *buf = 138413058;
      v17 = v7;
      v18 = 2080;
      v19 = "[HMHome(Additions) hf_setPhotosLibrarySettingsForUser:importPhotosLibraryEnabled:shareFacesEnabled:]_block_invoke_2";
      v20 = 2112;
      v21 = v8;
      v22 = 2112;
      v23 = v9;
      _os_log_error_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_ERROR, "%@ %s: Failed to update external person manager settings %@ for user %@", buf, 0x2Au);
    }

    [*(a1 + 56) finishWithError:v3];
  }

  else
  {
    v5 = +[HFHomeKitDispatcher sharedDispatcher];
    v10 = MEMORY[0x277D85DD0];
    v11 = 3221225472;
    v12 = __101__HMHome_Additions__hf_setPhotosLibrarySettingsForUser_importPhotosLibraryEnabled_shareFacesEnabled___block_invoke_284;
    v13 = &unk_277DF80C8;
    v14 = *(a1 + 48);
    v15 = *(a1 + 40);
    [v5 dispatchUserObserverMessage:&v10 sender:0];

    [*(a1 + 56) finishWithNoResult];
  }

  v6 = *MEMORY[0x277D85DE8];
}

void __101__HMHome_Additions__hf_setPhotosLibrarySettingsForUser_importPhotosLibraryEnabled_shareFacesEnabled___block_invoke_284(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 user:*(a1 + 32) didUpdatePhotosPersonManagerSettings:*(a1 + 40)];
  }
}

uint64_t __69__HMHome_Additions__hf_accessoriesRequiringManualWiFiReconfiguration__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 hf_networkConfigurationProfiles];
  v3 = [v2 na_any:&__block_literal_global_290_0];

  return v3;
}

uint64_t __63__HMHome_Additions__hf_siriEndpointCapableAccessoriesToOnboard__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 hf_siriEndpointProfile];
  if ([v2 supportsOnboarding])
  {
    v3 = [v2 isNeedsOnboarding];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

BOOL __46__HMHome_Additions__hf_allResidentAccessories__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 hf_linkedResidentDevice];
  v3 = v2 != 0;

  return v3;
}

BOOL __47__HMHome_Additions__hf_siriEndPointAccessories__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 hf_siriEndpointProfile];
  v3 = v2 != 0;

  return v3;
}

uint64_t __56__HMHome_Additions__hf_allSiriEndPointProfileContainers__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
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

  v6 = [v5 accessory];
  v7 = [v6 hf_isSiriEndpoint];

  return v7;
}

uint64_t __69__HMHome_Additions__hf_allSiriEndPointProfileContainersThatWillChime__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
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

  v6 = [v5 hf_mediaAccessoryCommonSettingsManager];
  v7 = [v6 settingValueForKeyPath:HFDoorbellChimeEnabledKeyPath];

  v8 = [v7 BOOLValue];
  return v8;
}

uint64_t __68__HMHome_Additions__hf_accessoryCategoriesReorderableItemComparator__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = [WeakRetained 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];
  v9 = [v8 sortedItemsWithItem1:v6 item2:v5];

  if (v9)
  {
    v10 = -1;
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

uint64_t __71__HMHome_Additions__hf_dashboardSectionReorderableUUIDStringComparator__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = [WeakRetained hf_reorderableDashboardSectionList];
  v9 = [v8 sortedIdentifiersWithIdentifier1:v6 identifier2:v5];

  if (v9)
  {
    v10 = -1;
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

uint64_t __65__HMHome_Additions__hf_dashboardSectionReorderableItemComparator__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = [WeakRetained hf_reorderableDashboardSectionList];
  v9 = [v8 sortedItemsWithItem1:v6 item2:v5];

  if (v9)
  {
    v10 = -1;
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

uint64_t __74__HMHome_Additions__hf_dashboardSectionReorderableHomeKitObjectComparator__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = [WeakRetained hf_reorderableDashboardSectionList];
  v9 = [v6 uniqueIdentifier];

  v10 = [v9 UUIDString];
  v11 = [v5 uniqueIdentifier];

  v12 = [v11 UUIDString];
  if ([v8 sortedIdentifiersWithIdentifier1:v10 identifier2:v12])
  {
    v13 = -1;
  }

  else
  {
    v13 = 1;
  }

  return v13;
}

void __59__HMHome_Additions__hf_setHomeHasOnboardedApplicationData___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 applicationData];
  [v2 hf_updateApplicationData:v4 handleError:0 completionHandler:v3];
}

void __64__HMHome_Additions__hf_setHomeHasMigratedServicesToAccessories___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 applicationData];
  [v2 hf_updateApplicationData:v4 handleError:0 completionHandler:v3];
}

void __54__HMHome_Additions__hf_setHomeHasMigratedForRedesign___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 applicationData];
  [v2 hf_updateApplicationData:v4 handleError:0 completionHandler:v3];
}

void __71__HMHome_Additions__hf_hasAcceptedTermsAndConditionsForHomePodVersion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (HFPreferencesBooleanValueForKey(@"HFPreferencesRemoveAllSoftwareUpdateLicenseVersionsFromHomeKey") == 2)
  {
    v1 = [WeakRetained applicationData];
    [v1 setObject:MEMORY[0x277CBEBF8] forKeyedSubscript:@"HFApplicationHomePodTermsAndConditionsAcceptedKey"];

    v2 = [WeakRetained applicationData];
    [WeakRetained hf_updateApplicationData:v2 handleError:1 completionHandler:&__block_literal_global_343];

    HFPreferencesRemoveValueForKey(@"HFPreferencesRemoveAllSoftwareUpdateLicenseVersionsFromHomeKey");
  }
}

void __71__HMHome_Additions__hf_hasAcceptedTermsAndConditionsForHomePodVersion___block_invoke_2(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = HFLogForCategory(0);
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v6 = 138412290;
      v7 = v2;
      _os_log_error_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_ERROR, "[START UPDATE] Unable to remove software update license versions & update application data: %@", &v6, 0xCu);
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v6) = 0;
    _os_log_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_DEFAULT, "[START UPDATE] Successfully removed all software update license agreement versions", &v6, 2u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void __94__HMHome_Additions__hf_markTermsAndConditionsAsAcceptedForHomePodWithLicenseAgreementVersion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 applicationData];
  [v2 hf_updateApplicationData:v4 handleError:1 completionHandler:v3];
}

unint64_t __76__HMHome_Additions__hf_hasEnabledResidentSupportingThirdPartySoftwareUpdate__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 isEnabled])
  {
    v3 = ([v2 capabilities] >> 23) & 1;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t __40__HMHome_Additions__hf_allNonAdminUsers__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) homeAccessControlForUser:v3];
  if ([v4 isAdministrator])
  {
    v5 = 0;
  }

  else
  {
    v6 = [*(a1 + 32) homeAccessControlForUser:v3];
    v5 = [v6 isOwner] ^ 1;
  }

  return v5;
}

uint64_t __40__HMHome_Additions__hf_allNonOwnerUsers__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) homeAccessControlForUser:a2];
  v3 = [v2 isOwner];

  return v3 ^ 1u;
}

uint64_t __52__HMHome_Additions__hf_hasAtLeastOneRestrictedGuest__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) homeAccessControlForUser:a2];
  v3 = [v2 isRestrictedGuest];

  return v3;
}

uint64_t __40__HMHome_Additions__hf_numberOfHomePods__block_invoke(uint64_t a1, void *a2)
{
  result = [a2 hf_isHomePod];
  if (result)
  {
    ++*(*(*(a1 + 32) + 8) + 24);
  }

  return result;
}

BOOL __67__HMHome_Additions__hf_allHomePodsSupportRemoteProfileInstallation__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 softwareVersion];
  if ([v3 majorVersion] > 0x11)
  {
    v6 = 1;
  }

  else
  {
    v4 = [v2 softwareVersion];
    if ([v4 majorVersion] == 17)
    {
      v5 = [v2 softwareVersion];
      v6 = [v5 minorVersion] > 1;
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

uint64_t __44__HMHome_Additions__hf_hasRMVCapableAppleTV__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 hf_isAppleTV])
  {
    v3 = [v2 hf_supportsRMVOnAppleTV];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void __53__HMHome_Additions__hf_startReprovisioningAccessory___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HFLogForCategory(0x27uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v7 = 138412546;
    v8 = v5;
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_DEFAULT, "Reprovision status - accessory: %@ error:%@", &v7, 0x16u);
  }

  v6 = *MEMORY[0x277D85DE8];
}

uint64_t __57__HMHome_Additions__hf_atleastOneHomePodSupportsAnnounce__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 hf_isHomePod])
  {
    v3 = [v2 supportsAnnounce];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t __77__HMHome_Additions__hf_atleastOneMediaAccessorySupportsAndHasAnnounceEnabled__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 hf_isHomePod])
  {
    v3 = [v2 mediaProfile];
    v4 = [v3 hf_settingsValueManager];

    v5 = [v2 settings];
    v6 = [v5 hf_accessorySettingAtKeyPath:@"root.announce.enabled"];

    objc_opt_class();
    v7 = [v4 valueForSetting:v6];
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;

    if (!v9)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v7 = [v2 hf_siriEndpointProfile];

    if (!v7)
    {
LABEL_17:
      v14 = 0;
      goto LABEL_18;
    }

    v10 = [v2 mediaProfile];
    v11 = [v10 hf_mediaAccessoryCommonSettingsManager];

    objc_opt_class();
    v7 = [v11 settingValueForKeyPath:HFAnnounceEnabledKeyPath];
    if (objc_opt_isKindOfClass())
    {
      v12 = v7;
    }

    else
    {
      v12 = 0;
    }

    v13 = v12;

    if (!v13)
    {

LABEL_16:
      v7 = 0;
      goto LABEL_17;
    }

    [v13 BOOLValue];
  }

  if (([v7 BOOLValue] & 1) == 0)
  {
    goto LABEL_17;
  }

  v14 = [v2 supportsAnnounce];
LABEL_18:

  return v14;
}

uint64_t __64__HMHome_Additions__hf_hasAtLeastOneReachableHomeMediaAccessory__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 hf_isHomePod])
  {
    v3 = [v2 isControllable];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t __58__HMHome_Additions__hf_hasAtLeastOneAccessoryWithSettings__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 settings];
  v3 = [v2 isControllable];

  return v3;
}

BOOL __61__HMHome_Additions__hf_canEnableAudioAnalysisAfterHH2Upgrade__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 softwareVersion];
  if ([v3 majorVersion] > 0x10)
  {
    v6 = 1;
  }

  else
  {
    v4 = [v2 softwareVersion];
    if ([v4 majorVersion] == 16)
    {
      v5 = [v2 softwareVersion];
      v6 = [v5 minorVersion] > 3;
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

uint64_t __55__HMHome_Additions__hf_hasAtLeastOneOasisEnabledDevice__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 softwareVersion];
  v6 = *MEMORY[0x277D0F620];
  v7 = *(MEMORY[0x277D0F620] + 16);
  v3 = [MEMORY[0x277D0F8F8] versionFromOperatingSystemVersion:&v6];
  v4 = [v2 isAtLeastVersion:v3];

  return v4;
}

uint64_t __59__HMHome_Additions__hf_hasAtLeastOneCrossfadeEnabledDevice__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 softwareVersion];
  v6 = *MEMORY[0x277D0F298];
  v7 = *(MEMORY[0x277D0F298] + 16);
  v3 = [MEMORY[0x277D0F8F8] versionFromOperatingSystemVersion:&v6];
  v4 = [v2 isAtLeastVersion:v3];

  return v4;
}

uint64_t __78__HMHome_Additions__hf_atLeastOneMediaAccessoryWithSupportingJustSiriLanguage__block_invoke_2(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = [a2 mediaProfile];
  v3 = [HFMediaHelper siriLanguageOptionFor:v2];

  v4 = [v3 recognitionLanguage];
  v5 = [MEMORY[0x277D7A8D0] sharedPreferences];
  v6 = [v5 isCompactVoiceTriggerAvailableForLanguageCode:v4];

  v7 = HFLogForCategory(0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412546;
    v11 = v4;
    v12 = 1024;
    v13 = v6;
    _os_log_impl(&dword_20D9BF000, v7, OS_LOG_TYPE_DEFAULT, "siriLanguageCode: %@, isSupportedJSLanguage: %{BOOL}d", &v10, 0x12u);
  }

  v8 = *MEMORY[0x277D85DE8];
  return v6;
}

void __58__HMHome_Additions__hf_setCameraRecordingHasBeenOnboarded__block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2;
  if (v2)
  {
    v3 = HFLogForCategory(9uLL);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v5 = 138412290;
      v6 = v2;
      _os_log_error_impl(&dword_20D9BF000, v3, OS_LOG_TYPE_ERROR, "Failed to set user has acknowledged camera recording onboarding. Error: %@", &v5, 0xCu);
    }
  }

  v4 = *MEMORY[0x277D85DE8];
}

void __48__HMHome_Additions__hf_updateColorPalette_type___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 applicationData];
  [v2 hf_updateApplicationData:v4 handleError:1 completionHandler:v3];
}

uint64_t __54__HMHome_Additions__hf_updateAccessControlDescriptor___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) accessPassword];
  v3 = [*(a1 + 40) accessPassword];
  v4 = [v2 compare:v3];

  return v4;
}

void __54__HMHome_Additions__hf_updateAccessControlDescriptor___block_invoke_423(uint64_t a1, void *a2)
{
  v7 = a2;
  if ([*(a1 + 32) accessRequiresPassword])
  {
    v3 = [*(a1 + 32) accessPassword];
    v4 = v3;
    v5 = &stru_2824B1A78;
    if (v3)
    {
      v5 = v3;
    }

    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  [*(a1 + 40) updateMediaPassword:v6 completionHandler:v7];
}

id __54__HMHome_Additions__hf_updateAccessControlDescriptor___block_invoke_2_427(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) hf_updateAccessControlDescriptor:*(a1 + 40)];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __54__HMHome_Additions__hf_updateAccessControlDescriptor___block_invoke_3;
  v8[3] = &unk_277DF8340;
  v9 = v3;
  v5 = v3;
  v6 = [v4 flatMap:v8];

  return v6;
}

void __65__HMHome_Additions__hf_fetchWalletKeyDeviceStateForCurrentDevice__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v8 = HFLogForCategory(0x49uLL);
  v9 = v8;
  if (v5)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 32);
      *buf = 138412546;
      v18 = v10;
      v19 = 2112;
      v20 = v5;
      _os_log_impl(&dword_20D9BF000, v9, OS_LOG_TYPE_DEFAULT, "(%@) Fetched Wallet Key Device State for current device: %@. Updating cache.", buf, 0x16u);
    }

    [*(a1 + 40) finishWithResult:v5];
    objc_setAssociatedObject(WeakRetained, "hf_cachedWalletKeyDeviceStateForCurrentDeviceKey", v5, 1);
    v11 = +[HFHomeKitDispatcher sharedDispatcher];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __65__HMHome_Additions__hf_fetchWalletKeyDeviceStateForCurrentDevice__block_invoke_436;
    v14[3] = &unk_277DF8368;
    v15 = v5;
    v16 = WeakRetained;
    [v11 dispatchWalletKeyDeviceStateObserverMessage:v14 sender:0];
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v13 = *(a1 + 32);
      *buf = 138412546;
      v18 = v13;
      v19 = 2112;
      v20 = v6;
      _os_log_error_impl(&dword_20D9BF000, v9, OS_LOG_TYPE_ERROR, "(%@) Could not fetch Wallet Key Device State for current device: %@", buf, 0x16u);
    }

    if (!v6)
    {
      v6 = [MEMORY[0x277CCA9B8] hf_errorWithCode:-1];
    }

    [*(a1 + 40) finishWithError:v6];
  }

  objc_setAssociatedObject(WeakRetained, "hf_fetchWalletKeyDeviceStateFuture", 0, 1);

  v12 = *MEMORY[0x277D85DE8];
}

void __65__HMHome_Additions__hf_fetchWalletKeyDeviceStateForCurrentDevice__block_invoke_436(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 walletKeyDeviceStateUpdated:*(a1 + 32) inHome:*(a1 + 40)];
  }
}

id __36__HMHome_Additions__hf_hasWalletKey__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D2C900];
  v3 = MEMORY[0x277CCABB0];
  v4 = [a2 walletKey];
  v5 = [v3 numberWithInt:v4 != 0];
  v6 = [v2 futureWithResult:v5];

  return v6;
}

id __37__HMHome_Additions__hf_walletKeyUUID__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D2C900];
  v3 = [a2 walletKey];
  v4 = [v3 UUID];
  v5 = [v2 futureWithResult:v4];

  return v5;
}

id __47__HMHome_Additions__hf_walletKeyInWalletAppURL__block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = HFLogForCategory(0x49uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v3 walletKey];
    v7 = [v6 customURL];
    v14 = 138413058;
    v15 = WeakRetained;
    v16 = 2080;
    v17 = "[HMHome(Additions) hf_walletKeyInWalletAppURL]_block_invoke";
    v18 = 2112;
    v19 = v7;
    v20 = 2112;
    v21 = v3;
    _os_log_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_DEFAULT, "(%@:%s) returning url %@ for newly fetched %@.", &v14, 0x2Au);
  }

  v8 = MEMORY[0x277D2C900];
  v9 = [v3 walletKey];
  v10 = [v9 customURL];
  v11 = [v8 futureWithResult:v10];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

id __47__HMHome_Additions__hf_walletKeyInWalletAppURL__block_invoke_449(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = HFLogForCategory(0x49uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = +[HFWalletUtilities walletAppURL];
    v12 = 138413058;
    v13 = WeakRetained;
    v14 = 2080;
    v15 = "[HMHome(Additions) hf_walletKeyInWalletAppURL]_block_invoke";
    v16 = 2112;
    v17 = v6;
    v18 = 2112;
    v19 = v3;
    _os_log_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_DEFAULT, "(%@:%s) returning default wallet app url %@ because of error: %@", &v12, 0x2Au);
  }

  v7 = MEMORY[0x277D2C900];
  v8 = +[HFWalletUtilities walletAppURL];
  v9 = [v7 futureWithResult:v8];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

void __66__HMHome_Additions__hf_enableExpressModeForWalletKeyWithAuthData___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = *(a1 + 32);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __66__HMHome_Additions__hf_enableExpressModeForWalletKeyWithAuthData___block_invoke_2;
  v7[3] = &unk_277DF8400;
  objc_copyWeak(&v9, (a1 + 40));
  v6 = v3;
  v8 = v6;
  [WeakRetained enableExpressForWalletKeyWithAuthData:v5 completion:v7];

  objc_destroyWeak(&v9);
}

void __66__HMHome_Additions__hf_enableExpressModeForWalletKeyWithAuthData___block_invoke_2(uint64_t a1, void *a2)
{
  v22[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (v3)
  {
    v21 = @"HFErrorHandlerOptionFailedItemName";
    v6 = [WeakRetained name];
    v22[0] = v6;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:&v21 count:1];

    v19[0] = @"HFErrorUserInfoOptionsKey";
    v19[1] = @"HFErrorUserInfoOperationKey";
    v20[0] = v7;
    v20[1] = @"HFOperationAddWalletKey";
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:2];
    v9 = [v3 hf_errorWithAddedUserInfo:v8];
    v10 = HFLogForCategory(0x49uLL);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v13 = 138412802;
      v14 = v5;
      v15 = 2080;
      v16 = "[HMHome(Additions) hf_enableExpressModeForWalletKeyWithAuthData:]_block_invoke_2";
      v17 = 2112;
      v18 = v9;
      _os_log_error_impl(&dword_20D9BF000, v10, OS_LOG_TYPE_ERROR, "(%@:%s) When trying to enable Express Mode for Wallet Key, error occurred %@", &v13, 0x20u);
    }

    [*(a1 + 32) finishWithError:v9];
  }

  else
  {
    v11 = HFLogForCategory(0x49uLL);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412546;
      v14 = v5;
      v15 = 2080;
      v16 = "[HMHome(Additions) hf_enableExpressModeForWalletKeyWithAuthData:]_block_invoke";
      _os_log_impl(&dword_20D9BF000, v11, OS_LOG_TYPE_DEFAULT, "(%@:%s) completed enabling express mode for wallet key with auth data", &v13, 0x16u);
    }

    [*(a1 + 32) finishWithNoResult];
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __75__HMHome_Additions__hf_enableUWBForWalletKeyWithAuthData_enableNFCExpress___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = *(a1 + 32);
  v6 = *(a1 + 48);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __75__HMHome_Additions__hf_enableUWBForWalletKeyWithAuthData_enableNFCExpress___block_invoke_2;
  v8[3] = &unk_277DF8400;
  objc_copyWeak(&v10, (a1 + 40));
  v7 = v3;
  v9 = v7;
  [WeakRetained setExpressSettingsAuthData:v5 enableUWB:v6 enableNFCExpress:v6 completion:v8];

  objc_destroyWeak(&v10);
}

void __75__HMHome_Additions__hf_enableUWBForWalletKeyWithAuthData_enableNFCExpress___block_invoke_2(uint64_t a1, void *a2)
{
  v22[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (v3)
  {
    v21 = @"HFErrorHandlerOptionFailedItemName";
    v6 = [WeakRetained name];
    v22[0] = v6;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:&v21 count:1];

    v19[0] = @"HFErrorUserInfoOptionsKey";
    v19[1] = @"HFErrorUserInfoOperationKey";
    v20[0] = v7;
    v20[1] = @"HFOperationAddWalletKey";
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:2];
    v9 = [v3 hf_errorWithAddedUserInfo:v8];
    v10 = HFLogForCategory(0x49uLL);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v13 = 138412802;
      v14 = v5;
      v15 = 2080;
      v16 = "[HMHome(Additions) hf_enableUWBForWalletKeyWithAuthData:enableNFCExpress:]_block_invoke_2";
      v17 = 2112;
      v18 = v9;
      _os_log_error_impl(&dword_20D9BF000, v10, OS_LOG_TYPE_ERROR, "(%@:%s) When trying to enable UWB for wallet key, error occurred %@", &v13, 0x20u);
    }

    [*(a1 + 32) finishWithError:v9];
  }

  else
  {
    v11 = HFLogForCategory(0x49uLL);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412546;
      v14 = v5;
      v15 = 2080;
      v16 = "[HMHome(Additions) hf_enableUWBForWalletKeyWithAuthData:enableNFCExpress:]_block_invoke";
      _os_log_impl(&dword_20D9BF000, v11, OS_LOG_TYPE_DEFAULT, "(%@:%s) completed enabling UWB for wallet key with auth data", &v13, 0x16u);
    }

    [*(a1 + 32) finishWithNoResult];
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __48__HMHome_Additions__hf_addWalletKeyWithOptions___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = *(a1 + 40);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__HMHome_Additions__hf_addWalletKeyWithOptions___block_invoke_2;
  v7[3] = &unk_277DF8478;
  objc_copyWeak(v9, (a1 + 32));
  v9[1] = *(a1 + 40);
  v6 = v3;
  v8 = v6;
  [WeakRetained addWalletKeyWithOptions:v5 completionHandler:v7];

  objc_destroyWeak(v9);
}

void __48__HMHome_Additions__hf_addWalletKeyWithOptions___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v42 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = *(a1 + 48);
  if (_os_feature_enabled_impl())
  {
    v9 = *(a1 + 48);
    v10 = HFLogForCategory(0x49uLL);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = @"with";
      *buf = 138413826;
      v29 = WeakRetained;
      v30 = 2080;
      v31 = "[HMHome(Additions) hf_addWalletKeyWithOptions:]_block_invoke_2";
      if (v8)
      {
        v12 = @"with";
      }

      else
      {
        v12 = @"without";
      }

      v33 = v12;
      if ((v8 & 2) != 0)
      {
        v13 = @"with";
      }

      else
      {
        v13 = @"without";
      }

      v32 = 2112;
      if ((v9 & 4) == 0)
      {
        v11 = @"without";
      }

      v34 = 2112;
      v35 = v13;
      v36 = 2112;
      v37 = v11;
      v38 = 2112;
      v39 = v5;
      v40 = 2112;
      v41 = v6;
      _os_log_impl(&dword_20D9BF000, v10, OS_LOG_TYPE_DEFAULT, "(%@:%s) When adding wallet key %@ notification, %@ enabling express mode, and %@ UWB unlock, uuid is %@. error is %@", buf, 0x48u);
    }
  }

  v14 = HFLogForCategory(0x49uLL);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = @"with";
    *buf = 138413570;
    v29 = WeakRetained;
    v30 = 2080;
    v31 = "[HMHome(Additions) hf_addWalletKeyWithOptions:]_block_invoke";
    if (v8)
    {
      v16 = @"with";
    }

    else
    {
      v16 = @"without";
    }

    v32 = 2112;
    if ((v8 & 2) == 0)
    {
      v15 = @"without";
    }

    v33 = v16;
    v34 = 2112;
    v35 = v15;
    v36 = 2112;
    v37 = v5;
    v38 = 2112;
    v39 = v6;
    _os_log_impl(&dword_20D9BF000, v14, OS_LOG_TYPE_DEFAULT, "(%@:%s) When adding wallet key %@ notification and %@ enabling express mode, uuid is %@. error is %@", buf, 0x3Eu);
  }

  if (v6)
  {
    v26 = @"HFErrorHandlerOptionFailedItemName";
    v17 = [WeakRetained name];
    v27 = v17;
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v27 forKeys:&v26 count:1];

    v24[0] = @"HFErrorUserInfoOptionsKey";
    v24[1] = @"HFErrorUserInfoOperationKey";
    v25[0] = v18;
    v25[1] = @"HFOperationAddWalletKey";
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:2];
    v20 = [(__CFString *)v6 hf_errorWithAddedUserInfo:v19];
    [*(a1 + 32) finishWithError:v20];
  }

  else
  {
    v21 = +[HFHomeKitDispatcher sharedDispatcher];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __48__HMHome_Additions__hf_addWalletKeyWithOptions___block_invoke_463;
    v23[3] = &unk_277DF2CB8;
    v23[4] = WeakRetained;
    [v21 dispatchHomeObserverMessage:v23 sender:0];

    [*(a1 + 32) finishWithResult:v5];
  }

  v22 = *MEMORY[0x277D85DE8];
}

void __48__HMHome_Additions__hf_addWalletKeyWithOptions___block_invoke_463(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 homeDidAddWalletKey:*(a1 + 32)];
  }
}

void __63__HMHome_Additions__hf_addWalletKeyToPairedWatchesWithOptions___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = *(a1 + 40);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __63__HMHome_Additions__hf_addWalletKeyToPairedWatchesWithOptions___block_invoke_2;
  v7[3] = &unk_277DF84A0;
  objc_copyWeak(v9, (a1 + 32));
  v9[1] = *(a1 + 40);
  v6 = v3;
  v8 = v6;
  [WeakRetained addWalletKeyToPairedWatchesWithOptions:v5 completion:v7];

  objc_destroyWeak(v9);
}

void __63__HMHome_Additions__hf_addWalletKeyToPairedWatchesWithOptions___block_invoke_2(uint64_t a1, void *a2)
{
  v40 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = *(a1 + 48);
  if (_os_feature_enabled_impl())
  {
    v6 = *(a1 + 48);
    v7 = HFLogForCategory(0x49uLL);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = @"with";
      *buf = 138413826;
      v27 = WeakRetained;
      v28 = 2080;
      v29 = "[HMHome(Additions) hf_addWalletKeyToPairedWatchesWithOptions:]_block_invoke_2";
      if (v5)
      {
        v9 = @"with";
      }

      else
      {
        v9 = @"without";
      }

      if ((v5 & 2) != 0)
      {
        v10 = @"with";
      }

      else
      {
        v10 = @"without";
      }

      v30 = 2112;
      v31 = WeakRetained;
      if ((v6 & 4) == 0)
      {
        v8 = @"without";
      }

      v32 = 2112;
      v33 = v9;
      v34 = 2112;
      v35 = v10;
      v36 = 2112;
      v37 = v8;
      v38 = 2112;
      v39 = v3;
      _os_log_impl(&dword_20D9BF000, v7, OS_LOG_TYPE_DEFAULT, "(%@:%s) When adding wallet key to paired Apple watches for home %@ %@ notification, %@ enabling express mode, and %@ UWB unlock, error is %@", buf, 0x48u);
    }
  }

  v11 = HFLogForCategory(0x49uLL);
  v12 = v11;
  if (v3)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v20 = @"with";
      *buf = 138413058;
      v27 = WeakRetained;
      if (v5)
      {
        v21 = @"with";
      }

      else
      {
        v21 = @"without";
      }

      v28 = 2112;
      v29 = v21;
      if ((v5 & 2) == 0)
      {
        v20 = @"without";
      }

      v30 = 2112;
      v31 = v20;
      v32 = 2112;
      v33 = v3;
      _os_log_error_impl(&dword_20D9BF000, v12, OS_LOG_TYPE_ERROR, "When adding wallet key to paried Apple Watches for home %@ %@ notification and %@ enabling express mode, error occurred: %@", buf, 0x2Au);
    }

    v24 = @"HFErrorHandlerOptionFailedItemName";
    v13 = [(__CFString *)WeakRetained name];
    v25 = v13;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v25 forKeys:&v24 count:1];

    v22[0] = @"HFErrorUserInfoOptionsKey";
    v22[1] = @"HFErrorUserInfoOperationKey";
    v23[0] = v14;
    v23[1] = @"HFOperationAddWalletKey";
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:2];
    v16 = [(__CFString *)v3 hf_errorWithAddedUserInfo:v15];
    [*(a1 + 32) finishWithError:v16];
  }

  else
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v17 = @"with";
      if (v5)
      {
        v18 = @"with";
      }

      else
      {
        v18 = @"without";
      }

      *buf = 138412802;
      v27 = WeakRetained;
      v28 = 2112;
      v29 = v18;
      if ((v5 & 2) == 0)
      {
        v17 = @"without";
      }

      v30 = 2112;
      v31 = v17;
      _os_log_impl(&dword_20D9BF000, v12, OS_LOG_TYPE_DEFAULT, "Successfully added wallet key to paired Apple Watches for home %@ %@ notification and %@ enabling express mode", buf, 0x20u);
    }

    [*(a1 + 32) finishWithNoResult];
  }

  v19 = *MEMORY[0x277D85DE8];
}

void __51__HMHome_Additions__hf_setHasOnboardedForWalletKey__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __51__HMHome_Additions__hf_setHasOnboardedForWalletKey__block_invoke_2;
  v6[3] = &unk_277DF8400;
  objc_copyWeak(&v8, (a1 + 32));
  v5 = v3;
  v7 = v5;
  [WeakRetained setHasOnboardedForWalletKeyWithCompletion:v6];

  objc_destroyWeak(&v8);
}

void __51__HMHome_Additions__hf_setHasOnboardedForWalletKey__block_invoke_2(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = HFLogForCategory(0x49uLL);
  v6 = v5;
  if (v3)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v8 = 138412546;
      v9 = WeakRetained;
      v10 = 2112;
      v11 = v3;
      _os_log_error_impl(&dword_20D9BF000, v6, OS_LOG_TYPE_ERROR, "When turning on has onboarded for wallet key flag for home %@, error occurred: %@", &v8, 0x16u);
    }

    [*(a1 + 32) finishWithError:v3];
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = WeakRetained;
      _os_log_impl(&dword_20D9BF000, v6, OS_LOG_TYPE_DEFAULT, "Successfully turned on has onboarded for wallet key flag for home %@", &v8, 0xCu);
    }

    [*(a1 + 32) finishWithNoResult];
  }

  v7 = *MEMORY[0x277D85DE8];
}

id __77__HMHome_Additions__hf_formattedErrorForWalletKeyDeviceStateForCurrentDevice__block_invoke(uint64_t a1, void *a2)
{
  v25[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([v3 canAddWalletKey] || (objc_msgSend(v3, "walletKey"), v4 = objc_claimAutoreleasedReturnValue(), v4, v4))
  {
    v5 = [MEMORY[0x277D2C900] futureWithNoResult];
    goto LABEL_4;
  }

  v24 = @"HFErrorHandlerOptionFailedItemName";
  v8 = [*(a1 + 32) name];
  v25[0] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:&v24 count:1];
  v10 = [v9 mutableCopy];

  v11 = [v3 canAddWalletKeyErrorCode];
  v12 = v11;
  switch(v11)
  {
    case 2:
      v13 = @"HFErrorButtonTitleNotNow";
      v14 = @"HFErrorButtonTitleiCloudSettings";
      break;
    case 8:
      v13 = @"HFErrorButtonTitleCancel";
      v14 = @"HFErrorButtonTitleShowInAppStore";
      break;
    case 5:
      v13 = @"HFErrorButtonTitleNotNow";
      v14 = @"HFErrorButtonTitleOpenWallet";
      break;
    default:
      v15 = 0;
      v16 = 0;
      goto LABEL_15;
  }

  v15 = _HFLocalizedStringWithDefaultValue(v14, v14, 1);
  v16 = _HFLocalizedStringWithDefaultValue(v13, v13, 1);
LABEL_15:
  [v10 na_safeSetObject:v15 forKey:@"HFErrorHandlerOptionRetryButtonText"];
  [v10 na_safeSetObject:v16 forKey:@"HFErrorHandlerOptionCancelButtonTextKey"];
  v22[0] = @"HFErrorUserInfoOptionsKey";
  v17 = [v10 copy];
  v22[1] = @"HFErrorUserInfoOperationKey";
  v23[0] = v17;
  v23[1] = @"HFOperationAddWalletKey";
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:2];
  v19 = [v18 mutableCopy];

  v20 = objc_alloc(MEMORY[0x277CCA9B8]);
  v21 = [v20 initWithDomain:*MEMORY[0x277CD06D8] code:v12 userInfo:v19];
  v5 = [MEMORY[0x277D2C900] futureWithResult:v21];

LABEL_4:
  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

void __65__HMHome_Additions__hf_fetchWalletKeyDeviceStateForPairedWatches__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __65__HMHome_Additions__hf_fetchWalletKeyDeviceStateForPairedWatches__block_invoke_2;
  v6[3] = &unk_277DF84F0;
  objc_copyWeak(&v8, (a1 + 32));
  v5 = v3;
  v7 = v5;
  [WeakRetained fetchWalletKeyDeviceStateForPairedWatchesWithCompletion:v6];

  objc_destroyWeak(&v8);
}

void __65__HMHome_Additions__hf_fetchWalletKeyDeviceStateForPairedWatches__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = HFLogForCategory(0x49uLL);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = &stru_2824B1A78;
    v12 = 138413058;
    if (v6)
    {
      v9 = v6;
    }

    v13 = WeakRetained;
    v14 = 2080;
    v15 = "[HMHome(Additions) hf_fetchWalletKeyDeviceStateForPairedWatches]_block_invoke_2";
    v16 = 2112;
    v17 = v5;
    v18 = 2112;
    v19 = v9;
    _os_log_impl(&dword_20D9BF000, v8, OS_LOG_TYPE_DEFAULT, "(%@:%s) Completed wallet key device state for all paired watch devices %@. %@", &v12, 0x2Au);
  }

  if ([v5 count])
  {
    [*(a1 + 32) finishWithResult:v5];
  }

  else
  {
    v10 = *(a1 + 32);
    if (v6)
    {
      [v10 finishWithError:v6];
    }

    else
    {
      [v10 finishWithNoResult];
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __59__HMHome_Additions___hf_fetchWalletKeyColorFromAccessories__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __59__HMHome_Additions___hf_fetchWalletKeyColorFromAccessories__block_invoke_2;
  v6[3] = &unk_277DF8518;
  v6[4] = WeakRetained;
  v7 = v3;
  v5 = v3;
  [WeakRetained fetchWalletKeyColorWithCompletion:v6];
}

void __59__HMHome_Additions___hf_fetchWalletKeyColorFromAccessories__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = HFLogForCategory(0x49uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = HMHomeWalletKeyColorAsString();
    v10 = 138412802;
    v11 = v5;
    v12 = 2080;
    v13 = "[HMHome(Additions) _hf_fetchWalletKeyColorFromAccessories]_block_invoke_2";
    v14 = 2112;
    v15 = v6;
    _os_log_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_DEFAULT, "(%@:%s) Fetched wallet key color %@", &v10, 0x20u);
  }

  v7 = *(a1 + 40);
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:a2];
  [v7 finishWithResult:v8];

  v9 = *MEMORY[0x277D85DE8];
}

id __63__HMHome_Additions___hf_existingWalletKeyColorForCurrentDevice__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 walletKey];

  v4 = MEMORY[0x277D2C900];
  if (v3)
  {
    v5 = [HFWalletUtilities walletKeyColorOfDeviceState:v2];
    v6 = [v4 futureWithResult:v5];
  }

  else
  {
    v6 = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  return v6;
}

id __47__HMHome_Additions__hf_walletKeyColorToDisplay__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v4 = v3;
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (v6)
  {
    [MEMORY[0x277D2C900] futureWithResult:v6];
  }

  else
  {
    [*(a1 + 32) _hf_fetchWalletKeyColorFromAccessories];
  }
  v7 = ;

  return v7;
}

void __52__HMHome_Additions__hf_setHasOnboardedForAccessCode__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __52__HMHome_Additions__hf_setHasOnboardedForAccessCode__block_invoke_2;
  v6[3] = &unk_277DF8400;
  objc_copyWeak(&v8, (a1 + 32));
  v5 = v3;
  v7 = v5;
  [WeakRetained setHasOnboardedForAccessCodeWithCompletion:v6];

  objc_destroyWeak(&v8);
}

void __52__HMHome_Additions__hf_setHasOnboardedForAccessCode__block_invoke_2(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = HFLogForCategory(0x37uLL);
  v6 = v5;
  if (v3)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v9 = [WeakRetained uniqueIdentifier];
      v10 = 138412802;
      v11 = WeakRetained;
      v12 = 2114;
      v13 = v9;
      v14 = 2112;
      v15 = v3;
      _os_log_error_impl(&dword_20D9BF000, v6, OS_LOG_TYPE_ERROR, "When turning on has onboarded for access code flag for home %@ (%{public}@), error occurred: %@", &v10, 0x20u);
    }

    [*(a1 + 32) finishWithError:v3];
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [WeakRetained uniqueIdentifier];
      v10 = 138412546;
      v11 = WeakRetained;
      v12 = 2114;
      v13 = v7;
      _os_log_impl(&dword_20D9BF000, v6, OS_LOG_TYPE_DEFAULT, "Successfully turned on has onboarded for access code flag for home %@ (%{public}@)", &v10, 0x16u);
    }

    [*(a1 + 32) finishWithNoResult];
  }

  v8 = *MEMORY[0x277D85DE8];
}

id __52__HMHome_Additions__hf_hasWalletKeyCompatibleDevice__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ([v3 BOOLValue])
  {
    v5 = [MEMORY[0x277D2C900] futureWithResult:MEMORY[0x277CBEC38]];
  }

  else
  {
    v6 = [WeakRetained hf_walletKeyDeviceStatesOfCompatiblePairedWatches];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __52__HMHome_Additions__hf_hasWalletKeyCompatibleDevice__block_invoke_2;
    v8[3] = &unk_277DF52E0;
    objc_copyWeak(&v9, (a1 + 32));
    v5 = [v6 flatMap:v8];
    objc_destroyWeak(&v9);
  }

  return v5;
}

id __52__HMHome_Additions__hf_hasWalletKeyCompatibleDevice__block_invoke_2(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [v3 count];

  v6 = HFLogForCategory(0x49uLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [WeakRetained uniqueIdentifier];
    v13 = 136315650;
    v14 = "[HMHome(Additions) hf_hasWalletKeyCompatibleDevice]_block_invoke_2";
    v15 = 1024;
    v16 = v5 != 0;
    v17 = 2114;
    v18 = v7;
    _os_log_impl(&dword_20D9BF000, v6, OS_LOG_TYPE_DEFAULT, "(%s) Returning %{BOOL}d because current device and paired watches are not wallet key compatible | uniqueIdentifier = %{public}@", &v13, 0x1Cu);
  }

  v8 = MEMORY[0x277D2C900];
  v9 = [MEMORY[0x277CCABB0] numberWithBool:v5 != 0];
  v10 = [v8 futureWithResult:v9];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

id __58__HMHome_Additions__hf_isCurrentDeviceWalletKeyCompatible__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [HFWalletUtilities isWalletKeyDeviceStateCompatible:a2];
  v3 = MEMORY[0x277D2C900];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:v2];
  v5 = [v3 futureWithResult:v4];

  return v5;
}

id __58__HMHome_Additions__hf_isCurrentDeviceWalletKeyCompatible__block_invoke_2(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = HFLogForCategory(0x49uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [WeakRetained uniqueIdentifier];
    v10 = 136315650;
    v11 = "[HMHome(Additions) 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]_block_invoke_2";
    v12 = 2112;
    v13 = v3;
    v14 = 2114;
    v15 = v6;
    _os_log_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_DEFAULT, "(%s) Returning NO for wallet key compatibility for current device because of %@ | uniqueIdentifier = %{public}@", &v10, 0x20u);
  }

  v7 = [MEMORY[0x277D2C900] futureWithResult:MEMORY[0x277CBEC28]];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

id __70__HMHome_Additions__hf_walletKeyDeviceStatesOfCompatiblePairedWatches__block_invoke(uint64_t a1, void *a2)
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = objc_opt_new();
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = v3;
  v7 = [v6 countByEnumeratingWithState:&v19 objects:v31 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v20;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [v6 objectForKey:{*(*(&v19 + 1) + 8 * i), v19}];
        if ([HFWalletUtilities isWalletKeyDeviceStateCompatible:v11])
        {
          [v5 na_safeAddObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v19 objects:v31 count:16];
    }

    while (v8);
  }

  v12 = HFLogForCategory(0x49uLL);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [WeakRetained uniqueIdentifier];
    *buf = 136315906;
    v24 = "[HMHome(Additions) hf_walletKeyDeviceStatesOfCompatiblePairedWatches]_block_invoke";
    v25 = 2112;
    v26 = v6;
    v27 = 2112;
    v28 = v5;
    v29 = 2114;
    v30 = v13;
    _os_log_impl(&dword_20D9BF000, v12, OS_LOG_TYPE_DEFAULT, "(%s) Among %@, wallet key device states of compatible paired watches are %@ | uniqueIdentifier = %{public}@", buf, 0x2Au);
  }

  v14 = MEMORY[0x277D2C900];
  v15 = [v5 copy];
  v16 = [v14 futureWithResult:v15];

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

id __70__HMHome_Additions__hf_walletKeyDeviceStatesOfCompatiblePairedWatches__block_invoke_504(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = HFLogForCategory(0x49uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412802;
    v10 = WeakRetained;
    v11 = 2080;
    v12 = "[HMHome(Additions) hf_walletKeyDeviceStatesOfCompatiblePairedWatches]_block_invoke";
    v13 = 2112;
    v14 = v3;
    _os_log_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_DEFAULT, "(%@:%s) Returning empty array for wallet key device states of compatible paired watches because of %@", &v9, 0x20u);
  }

  v6 = [MEMORY[0x277D2C900] futureWithResult:MEMORY[0x277CBEBF8]];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

void __60__HMHome_Additions__hf_fetchAvailableWalletKeyEncodedPKPass__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __60__HMHome_Additions__hf_fetchAvailableWalletKeyEncodedPKPass__block_invoke_2;
  v6[3] = &unk_277DF8590;
  objc_copyWeak(&v8, (a1 + 32));
  v5 = v3;
  v7 = v5;
  [WeakRetained fetchAvailableWalletKeyEncodedPKPass:v6];

  objc_destroyWeak(&v8);
}

void __60__HMHome_Additions__hf_fetchAvailableWalletKeyEncodedPKPass__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = HFLogForCategory(0x49uLL);
  v9 = v8;
  if (v6)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v11 = 136315650;
      v12 = "[HMHome(Additions) hf_fetchAvailableWalletKeyEncodedPKPass]_block_invoke_2";
      v13 = 2112;
      v14 = WeakRetained;
      v15 = 2112;
      v16 = v6;
      _os_log_error_impl(&dword_20D9BF000, v9, OS_LOG_TYPE_ERROR, "(%s) When fetching available wallet key encoded pass for home %@, error occurred: %@", &v11, 0x20u);
    }

    [*(a1 + 32) finishWithError:v6];
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136315394;
      v12 = "[HMHome(Additions) hf_fetchAvailableWalletKeyEncodedPKPass]_block_invoke";
      v13 = 2112;
      v14 = WeakRetained;
      _os_log_impl(&dword_20D9BF000, v9, OS_LOG_TYPE_DEFAULT, "(%s) Successfully fetched available wallet key's encoded pass for home %@", &v11, 0x16u);
    }

    [*(a1 + 32) finishWithResult:v5];
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __59__HMHome_Additions__hf_fetchExistingWalletKeyEncodedPKPass__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __59__HMHome_Additions__hf_fetchExistingWalletKeyEncodedPKPass__block_invoke_2;
  v6[3] = &unk_277DF8590;
  objc_copyWeak(&v8, (a1 + 32));
  v5 = v3;
  v7 = v5;
  [WeakRetained fetchWalletKeyEncodedPKPass:v6];

  objc_destroyWeak(&v8);
}

void __59__HMHome_Additions__hf_fetchExistingWalletKeyEncodedPKPass__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = HFLogForCategory(0x49uLL);
  v9 = v8;
  if (v6)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v11 = 136315650;
      v12 = "[HMHome(Additions) hf_fetchExistingWalletKeyEncodedPKPass]_block_invoke_2";
      v13 = 2112;
      v14 = WeakRetained;
      v15 = 2112;
      v16 = v6;
      _os_log_error_impl(&dword_20D9BF000, v9, OS_LOG_TYPE_ERROR, "(%s) When fetching existing wallet key encoded pass for home %@, error occurred: %@", &v11, 0x20u);
    }

    [*(a1 + 32) finishWithError:v6];
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136315394;
      v12 = "[HMHome(Additions) hf_fetchExistingWalletKeyEncodedPKPass]_block_invoke";
      v13 = 2112;
      v14 = WeakRetained;
      _os_log_impl(&dword_20D9BF000, v9, OS_LOG_TYPE_DEFAULT, "(%s) Successfully fetched existing encoded pass for home %@", &v11, 0x16u);
    }

    [*(a1 + 32) finishWithResult:v5];
  }

  v10 = *MEMORY[0x277D85DE8];
}

id __55__HMHome_Additions__hf_ecosystemAccessoryUUIDMapFuture__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 hf_allConnectedHomeToCHIPAccessoryPairingFuture];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55__HMHome_Additions__hf_ecosystemAccessoryUUIDMapFuture__block_invoke_3;
  v7[3] = &unk_277DF3FD0;
  v8 = v2;
  v4 = v2;
  v5 = [v3 flatMap:v7];

  return v5;
}

id __55__HMHome_Additions__hf_ecosystemAccessoryUUIDMapFuture__block_invoke_3(uint64_t a1, void *a2)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D2C900];
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 uniqueIdentifier];
  v11 = v5;
  v6 = [v4 allKeys];

  v12[0] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  v8 = [v2 futureWithResult:v7];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

id __55__HMHome_Additions__hf_ecosystemAccessoryUUIDMapFuture__block_invoke_4(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [v3 addEntriesFromDictionary:{*(*(&v14 + 1) + 8 * i), v14}];
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v9 = MEMORY[0x277D2C900];
  v10 = [v3 copy];
  v11 = [v9 futureWithResult:v10];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

id __55__HMHome_Additions__hf_ecosystemAccessoryUUIDMapFuture__block_invoke_5(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_opt_new();
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __55__HMHome_Additions__hf_ecosystemAccessoryUUIDMapFuture__block_invoke_6;
  v9[3] = &unk_277DF85E0;
  v10 = v3;
  v4 = v3;
  [v2 na_each:v9];

  v5 = MEMORY[0x277D2C900];
  v6 = [v4 copy];
  v7 = [v5 futureWithResult:v6];

  return v7;
}

void __55__HMHome_Additions__hf_ecosystemAccessoryUUIDMapFuture__block_invoke_6(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55__HMHome_Additions__hf_ecosystemAccessoryUUIDMapFuture__block_invoke_7;
  v7[3] = &unk_277DF85B8;
  v8 = *(a1 + 32);
  v9 = v5;
  v6 = v5;
  [a3 na_each:v7];
}

void __55__HMHome_Additions__hf_ecosystemAccessoryUUIDMapFuture__block_invoke_7(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v13 = v3;
  v5 = [v3 ecosystem];
  v6 = [v4 objectForKeyedSubscript:v5];

  if (!v6)
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v8 = *(a1 + 32);
    v9 = [v13 ecosystem];
    [v8 setObject:v7 forKeyedSubscript:v9];
  }

  v10 = *(a1 + 32);
  v11 = [v13 ecosystem];
  v12 = [v10 objectForKeyedSubscript:v11];
  [v12 addObject:*(a1 + 40)];
}

id __55__HMHome_Additions__hf_ecosystemAccessoryUUIDMapFuture__block_invoke_8(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = HFLogForCategory(0x30uLL);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = NSStringFromSelector(*(a1 + 32));
      v9 = 138412546;
      v10 = v5;
      v11 = 2112;
      v12 = v3;
      _os_log_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_DEFAULT, "%@ failed due to %@", &v9, 0x16u);
    }
  }

  v6 = [MEMORY[0x277D2C900] futureWithResult:MEMORY[0x277CBEC10]];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

void __58__HMHome_Additions__hf_setShowPredictedScenesOnDashboard___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 applicationData];
  [v2 hf_updateApplicationData:v4 handleError:1 completionHandler:v3];
}

void __58__HMHome_Additions__hf_setShowPredictedScenesOnDashboard___block_invoke_2(uint64_t a1)
{
  v2 = +[HFHomeKitDispatcher sharedDispatcher];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __58__HMHome_Additions__hf_setShowPredictedScenesOnDashboard___block_invoke_3;
  v3[3] = &unk_277DF2CB8;
  v3[4] = *(a1 + 32);
  [v2 dispatchHomeObserverMessage:v3 sender:0];
}

void __58__HMHome_Additions__hf_setShowPredictedScenesOnDashboard___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 homeDidUpdateApplicationData:*(a1 + 32)];
  }
}

uint64_t __62__HMHome_Additions__hf_atleastOneMediaAccessoryHasSiriEnabled__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 hf_settingsValueManager];
  v3 = [v2 valueForSettingAtKeyPath:@"root.siri.allowHeySiri"];
  v4 = [v3 BOOLValue];

  return v4;
}

uint64_t __62__HMHome_Additions__hf_atleastOneMediaAccessoryHasSiriEnabled__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 accessories];
  v3 = [v2 anyObject];
  v4 = [v3 mediaProfile];
  v5 = [v4 hf_mediaAccessoryCommonSettingsManager];

  v6 = [v5 settingValueForKeyPath:HFAllowHeySiriSettingKeyPath];
  v7 = [v6 BOOLValue];

  return v7;
}

void __64__HMHome_HFUserNotificationTopics___hf_groupedServiceTypeTopics__block_invoke_2()
{
  v28[4] = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277D755D0] configurationWithPointSize:26.0];
  if (qword_280E03420 != -1)
  {
    dispatch_once(&qword_280E03420, &__block_literal_global_229_0);
  }

  v1 = qword_280E03428;
  v2 = [HFAccessoryType serviceType:*MEMORY[0x277CD0F58]];
  v3 = [HFUserNotificationServiceTopic alloc];
  v4 = [MEMORY[0x277CBEB98] set];
  v25 = v2;
  v26 = v1;
  v24 = [(HFUserNotificationServiceTopic *)v3 initWithServiceTypes:v1 accessoryCategoryTypes:v4 topicNameLocalizationKey:@"HFUserNotificationServiceTopicName_AllBlindsAndWindowsGroup" accessoryType:v2];

  if (qword_280E03430 != -1)
  {
    dispatch_once(&qword_280E03430, &__block_literal_global_236);
  }

  v5 = qword_280E03438;
  v6 = [[HFImageIconDescriptor alloc] initWithSystemImageNamed:@"door.right.hand.open" configuration:v0];
  v7 = [HFUserNotificationServiceTopic alloc];
  v8 = [MEMORY[0x277CBEB98] set];
  v23 = v6;
  v9 = [(HFUserNotificationServiceTopic *)v7 initWithServiceTypes:v5 accessoryCategoryTypes:v8 topicNameLocalizationKey:@"HFUserNotificationServiceTopicName_AllDoorsGroup" iconDescriptor:v6];

  if (qword_280E03440 != -1)
  {
    dispatch_once(&qword_280E03440, &__block_literal_global_246);
  }

  v10 = qword_280E03448;
  v27 = v0;
  v11 = [[HFImageIconDescriptor alloc] initWithSystemImageNamed:@"lock.fill" configuration:v0];
  v12 = [HFUserNotificationServiceTopic alloc];
  v13 = [MEMORY[0x277CBEB98] set];
  v14 = [(HFUserNotificationServiceTopic *)v12 initWithServiceTypes:v10 accessoryCategoryTypes:v13 topicNameLocalizationKey:@"HFUserNotificationServiceTopicName_AllLocksGroup" iconDescriptor:v11];

  if (qword_280E03450 != -1)
  {
    dispatch_once(&qword_280E03450, &__block_literal_global_256_0);
  }

  v15 = qword_280E03458;
  v16 = [HFServiceIconFactory iconDescriptorForAccessoryCategoryOrServiceType:*MEMORY[0x277CCE8F0]];
  v17 = [HFUserNotificationServiceTopic alloc];
  v18 = [MEMORY[0x277CBEB98] set];
  v19 = [(HFUserNotificationServiceTopic *)v17 initWithServiceTypes:v15 accessoryCategoryTypes:v18 topicNameLocalizationKey:@"HFUserNotificationServiceTopicName_AllSensorsGroup" iconDescriptor:v16];

  v28[0] = v24;
  v28[1] = v9;
  v28[2] = v19;
  v28[3] = v14;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:4];

  v21 = qword_280E03418;
  qword_280E03418 = v20;
  v22 = *MEMORY[0x277D85DE8];
}

void __64__HMHome_HFUserNotificationTopics___hf_groupedServiceTypeTopics__block_invoke_5()
{
  v6[2] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB98];
  v1 = *MEMORY[0x277CD0F60];
  v6[0] = *MEMORY[0x277CD0F58];
  v6[1] = v1;
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:2];
  v3 = [v0 setWithArray:v2];
  v4 = qword_280E03428;
  qword_280E03428 = v3;

  v5 = *MEMORY[0x277D85DE8];
}

void __64__HMHome_HFUserNotificationTopics___hf_groupedServiceTypeTopics__block_invoke_7()
{
  v6[2] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB98];
  v1 = *MEMORY[0x277CD0E58];
  v6[0] = *MEMORY[0x277CD0E30];
  v6[1] = v1;
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:2];
  v3 = [v0 setWithArray:v2];
  v4 = qword_280E03438;
  qword_280E03438 = v3;

  v5 = *MEMORY[0x277D85DE8];
}

void __64__HMHome_HFUserNotificationTopics___hf_groupedServiceTypeTopics__block_invoke_9()
{
  v6[2] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB98];
  v1 = *MEMORY[0x277CD0EB0];
  v6[0] = *MEMORY[0x277CD0EA8];
  v6[1] = v1;
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:2];
  v3 = [v0 setWithArray:v2];
  v4 = qword_280E03448;
  qword_280E03448 = v3;

  v5 = *MEMORY[0x277D85DE8];
}

void __64__HMHome_HFUserNotificationTopics___hf_groupedServiceTypeTopics__block_invoke_11()
{
  v9[8] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB98];
  v1 = *MEMORY[0x277CD0E10];
  v9[0] = *MEMORY[0x277CD0E18];
  v9[1] = v1;
  v2 = *MEMORY[0x277CD0E90];
  v9[2] = *MEMORY[0x277CD0E20];
  v9[3] = v2;
  v3 = *MEMORY[0x277CD0EC8];
  v9[4] = *MEMORY[0x277CD0EC0];
  v9[5] = v3;
  v4 = *MEMORY[0x277CD0ED8];
  v9[6] = *MEMORY[0x277CD0EE8];
  v9[7] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:8];
  v6 = [v0 setWithArray:v5];
  v7 = qword_280E03458;
  qword_280E03458 = v6;

  v8 = *MEMORY[0x277D85DE8];
}

void __96__HMHome_HFUserNotificationTopics___hf_standaloneTopicNameLocalizationKeyForPrimaryServiceType___block_invoke_2()
{
  v0 = qword_280E03468;
  qword_280E03468 = MEMORY[0x277CBEC10];
}

uint64_t __56__HMHome_HFUserNotificationTopics___hf_accessoryTopics___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 hf_isCamera])
  {
    v3 = [v2 hf_isNotificationSupportedCamera];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id __68__HMHome_HFUserNotificationTopics__hf_userNotificationServiceTopics__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 hf_visibleServices];
  v3 = [v2 allObjects];
  v4 = [v3 na_filter:&__block_literal_global_282_0];

  return v4;
}

BOOL __68__HMHome_HFUserNotificationTopics__hf_userNotificationServiceTopics__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 hf_isCameraContainedMotionSensor])
  {
    v3 = 0;
  }

  else
  {
    v4 = [v2 hf_userNotificationSettings];
    v3 = v4 != 0;
  }

  return v3;
}

HFUserNotificationServiceTopic *__68__HMHome_HFUserNotificationTopics__hf_userNotificationServiceTopics__block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __68__HMHome_HFUserNotificationTopics__hf_userNotificationServiceTopics__block_invoke_5;
  v17 = &unk_277DFDAC0;
  v5 = v3;
  v18 = v5;
  v6 = [v4 na_firstObjectPassingTest:&v14];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v9 = *(a1 + 40);
    v10 = [objc_opt_class() _hf_standaloneTopicNameLocalizationKeyForPrimaryServiceType:v5];
    if (!v10)
    {
      v11 = MEMORY[0x277CCACA8];
      v12 = [MEMORY[0x277CD1D90] localizedDescriptionForServiceType:v5];
      v10 = [v11 stringWithFormat:@"Unknown (%@)", v12, v14, v15, v16, v17];
    }

    v8 = [[HFUserNotificationServiceTopic alloc] initWithServiceType:v5 topicNameLocalizationKey:v10];
  }

  return v8;
}

uint64_t __68__HMHome_HFUserNotificationTopics__hf_userNotificationServiceTopics__block_invoke_5(uint64_t a1, void *a2)
{
  v3 = [a2 serviceTypes];
  v4 = [v3 containsObject:*(a1 + 32)];

  return v4;
}

uint64_t __71__HMHome_HFUserNotificationTopics__hf_userNotificationTopicForService___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 serviceTypes];
  v4 = [*(a1 + 32) hf_effectiveServiceType];
  v5 = [v3 containsObject:v4];

  return v5;
}

uint64_t __77__HMHome_HFUserNotificationTopics__hf_userNotificationTopicForCameraProfile___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 accessoryCategoryTypes];
  v4 = [v3 containsObject:*(a1 + 32)];

  return v4;
}

id __70__HMHome_HFUserNotificationTopics__hf_servicesAffectedByServiceTopic___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 services];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __70__HMHome_HFUserNotificationTopics__hf_servicesAffectedByServiceTopic___block_invoke_2;
  v6[3] = &unk_277DF4020;
  v7 = *(a1 + 32);
  v4 = [v3 na_filter:v6];

  return v4;
}

uint64_t __70__HMHome_HFUserNotificationTopics__hf_servicesAffectedByServiceTopic___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 hf_userNotificationSettings];
  if (v4)
  {
    v5 = [*(a1 + 32) serviceTypes];
    v6 = [v3 hf_effectiveServiceType];
    if ([v5 containsObject:v6])
    {
      v7 = [v3 hf_isCameraContainedMotionSensor] ^ 1;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id __76__HMHome_HFUserNotificationTopics__hf_cameraProfilesAffectedByServiceTopic___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 cameraProfiles];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __76__HMHome_HFUserNotificationTopics__hf_cameraProfilesAffectedByServiceTopic___block_invoke_2;
  v6[3] = &unk_277DF8038;
  v7 = *(a1 + 32);
  v4 = [v3 na_filter:v6];

  return v4;
}

uint64_t __76__HMHome_HFUserNotificationTopics__hf_cameraProfilesAffectedByServiceTopic___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 hf_userNotificationSettings];
  if (v4)
  {
    v5 = [*(a1 + 32) accessoryCategoryTypes];
    v6 = [v3 accessory];
    v7 = [v6 category];
    v8 = [v7 categoryType];
    v9 = [v5 containsObject:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

uint64_t __90__HMHome_HFUserNotificationTopics__hf_safetyAndSecurityAccessoriesAffectedByServiceTopic___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 hf_isAudioAnalysisSupportedDevice])
  {
    v4 = [*(a1 + 32) accessoryCategoryTypes];
    v5 = [v3 category];
    v6 = [v5 categoryType];
    v7 = [v4 containsObject:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

BOOL __59__HMHome_HFUserNotificationTopics__hf_applianceAccessories__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 hf_isMatterOnlyAccessory])
  {
    v3 = [[HFMatterAccessoryRepresentable alloc] initWithAccessory:v2];
    objc_opt_class();
    v4 = [(HFMatterAccessoryRepresentable *)v3 hf_accessoryType];
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;

    v7 = [v6 deviceType];

    if (v7)
    {
      v8 = [v7 unsignedIntegerValue] == 116;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void __55__HMHome_HFApplicationData___hf_updateApplicationData___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 homeDidUpdateApplicationData:*(a1 + 32)];
  }
}

void __84__HMHome_HFApplicationData__hf_updateApplicationData_handleError_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v14 = a2;
  v3 = +[HFHomeKitDispatcher sharedDispatcher];
  v4 = [v3 homeManager];
  if ([v4 hasOptedToHH2])
  {
    v5 = [*(a1 + 32) residentDevices];
    v6 = [v5 count];

    v7 = HFOperationUpdateApplicationDataResidentSync;
    if (!v6)
    {
      v7 = HFOperationUpdateApplicationDataCloudSync;
    }
  }

  else
  {

    v7 = HFOperationUpdateApplicationDataCloudSync;
  }

  v8 = *(a1 + 56);
  v9 = *v7;
  v10 = +[HFErrorHandler sharedHandler];
  v11 = v10;
  if (v8 == 1)
  {
    [v10 handleError:v14 operationType:v9 options:0 retryBlock:0 cancelBlock:0];
  }

  else
  {
    [v10 logError:v14 operationDescription:v9];
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v13 = [WeakRetained applicationData];
  [WeakRetained _hf_updateApplicationData:v13];

  (*(*(a1 + 40) + 16))();
}

@end