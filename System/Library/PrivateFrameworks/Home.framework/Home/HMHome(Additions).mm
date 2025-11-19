@interface HMHome(Additions)
+ (__CFString)_hf_appDataKeyForColorPaletteOfType:()Additions;
- (BOOL)hf_atleastOneMediaAccessoryHasSiriEnabled;
- (BOOL)hf_canAddAccessCode;
- (BOOL)hf_containsWalletKeyUWBAccessory;
- (BOOL)hf_hasAtleastOneAudioAnalysisSupportedAccessory;
- (BOOL)hf_hasAtleastOneSafetyAndSecuritySupportedAccessory;
- (BOOL)hf_hasReachableResidents;
- (BOOL)hf_hasResident;
- (BOOL)hf_hasSecureRecordingCameras;
- (BOOL)hf_isCurrentRestrictedGuestAwayFromHome;
- (BOOL)hf_isNetworkCredentialManagementEnabled;
- (BOOL)hf_isNetworkProtectionEnabled;
- (BOOL)hf_isPresenceAuthorizedForUser:()Additions;
- (BOOL)hf_userCanCreateTrigger;
- (HFAccessoryCategoryReorderableItemList)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;
- (HFCharacteristicValueManager)hf_characteristicValueManager;
- (HFColorPalette)hf_colorPaletteOfType:()Additions;
- (HFHomeDashboardReorderableItemList)hf_reorderableDashboardSectionList;
- (HFReorderableHomeKitItemList)hf_reorderableActionSetsList;
- (HFReorderableHomeKitItemList)hf_reorderableCamerasList;
- (HFReorderableHomeKitItemList)hf_reorderableRoomsList;
- (HFReorderableHomeKitItemList)hf_reorderableServicesList;
- (HFSuspendedStateOverrideValueProvider)hf_suspendedStateOverrideValueProvider;
- (_TtC4Home19HFHomeEnergyManager)hf_energyManager;
- (id)_hf_existingWalletKeyColorForCurrentDevice;
- (id)_hf_fetchWalletKeyColorFromAccessories;
- (id)accessoriesSupportingSoftwareUpdate;
- (id)hf_HMHomeAccessNotAllowedReasonCodeStringForCurrentUser;
- (id)hf_HMHomeAccessNotAllowedReasonCodeStringForUser:()Additions;
- (id)hf_accessControlDescriptor;
- (id)hf_accessoriesMatchingCategoryType:()Additions;
- (id)hf_accessoriesRequiringManualWiFiReconfiguration;
- (id)hf_accessoriesSupportingAccessCodes;
- (id)hf_accessoriesSupportingNaturalLighting;
- (id)hf_accessoriesSupportingUWBUnlock;
- (id)hf_accessoriesWithValidSoftwareOrFirmwareUpdates;
- (id)hf_accessoryCategoriesReorderableItemComparator;
- (id)hf_accessoryForSymptomsHandler:()Additions;
- (id)hf_accessoryProfilesWithClass:()Additions;
- (id)hf_accessoryRepresentableUsageCountsByRoomWithFilter:()Additions;
- (id)hf_accessoryWithDeviceIdentifier:()Additions;
- (id)hf_accessoryWithIdentifier:()Additions;
- (id)hf_accessoryWithMatterNodeID:()Additions;
- (id)hf_actionSetWithUUID:()Additions;
- (id)hf_activeRooms;
- (id)hf_addWalletKeyToPairedWatchesWithOptions:()Additions;
- (id)hf_addWalletKeyWithOptions:()Additions;
- (id)hf_allAccessoryProfiles;
- (id)hf_allBridgeAccessories;
- (id)hf_allCameraProfiles;
- (id)hf_allCameraProfilesSupportingRecording;
- (id)hf_allCameraProfilesWithDoorbellService;
- (id)hf_allCameraProfilesWithSmartMotionRecordingEnabled;
- (id)hf_allHomePodProfileContainers;
- (id)hf_allHomePodsOrStereoPairs;
- (id)hf_allHomePodsOrStereoPairsThatWillChime;
- (id)hf_allLightProfiles;
- (id)hf_allLightProfilesSupportingNaturalLighting;
- (id)hf_allMediaProfileContainers;
- (id)hf_allNetworkConfigurationProfiles;
- (id)hf_allNetworkRouterAccessories;
- (id)hf_allNonAdminUsers;
- (id)hf_allNonEmptyActionSets;
- (id)hf_allNonOwnerUsers;
- (id)hf_allPersonManagers;
- (id)hf_allPersons;
- (id)hf_allPhotosPersonManagers;
- (id)hf_allProgrammableSwitchAccessories;
- (id)hf_allResidentAccessories;
- (id)hf_allRooms;
- (id)hf_allServices;
- (id)hf_allSiriEndPointProfileContainers;
- (id)hf_allSiriEndPointProfileContainersThatWillChime;
- (id)hf_allTargetControlAccessories;
- (id)hf_allUniqueMediaProfileContainers;
- (id)hf_allUniqueMediaProfileContainersExcludingMediaGroups;
- (id)hf_allUsersIncludingCurrentUser;
- (id)hf_allVisibleServices;
- (id)hf_appleTVUsingAudioDestination:()Additions;
- (id)hf_appleTVs;
- (id)hf_appleTVsSupportingHomeTheater;
- (id)hf_audioAnalysisSupportedAccessories;
- (id)hf_autoClimateCapableThermostatsToOnboard;
- (id)hf_cameraProfileForSignificantEvent:()Additions;
- (id)hf_cameraProfileWithIdentifier:()Additions;
- (id)hf_dashboardSectionReorderableHomeKitObjectComparator;
- (id)hf_dashboardSectionReorderableItemComparator;
- (id)hf_dashboardSectionReorderableUUIDStringComparator;
- (id)hf_displayNameForActivityState:()Additions;
- (id)hf_ecosystemAccessoryUUIDMapFuture;
- (id)hf_enableExpressModeForWalletKeyWithAuthData:()Additions;
- (id)hf_enableUWBForWalletKeyWithAuthData:()Additions enableNFCExpress:;
- (id)hf_enabledResidentDevices;
- (id)hf_fetchAvailableWalletKeyEncodedPKPass;
- (id)hf_fetchExistingWalletKeyEncodedPKPass;
- (id)hf_fetchWalletKeyDeviceStateForCurrentDevice;
- (id)hf_fetchWalletKeyDeviceStateForCurrentDeviceIfNecessary;
- (id)hf_fetchWalletKeyDeviceStateForPairedWatches;
- (id)hf_formattedErrorForWalletKeyDeviceStateForCurrentDevice;
- (id)hf_hasWalletKey;
- (id)hf_hasWalletKeyCompatibleDevice;
- (id)hf_homeKitObjectsSupportingNaturalLighting;
- (id)hf_homePods;
- (id)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;
- (id)hf_localizedDescriptionForNetworkProtectionSupport;
- (id)hf_markTermsAndConditionsAsAcceptedForHomePodWithLicenseAgreementVersion:()Additions;
- (id)hf_mediaAccessories;
- (id)hf_mediaProfileContainerForSymptomsHandler:()Additions;
- (id)hf_mediaSystemForAccessory:()Additions;
- (id)hf_mediaSystemForSymptomsHandler:()Additions;
- (id)hf_mediaSystemWithIdentifier:()Additions;
- (id)hf_minimumDescription;
- (id)hf_notesApplicationData;
- (id)hf_orderedActionSets;
- (id)hf_orderedRooms;
- (id)hf_personManagerWithIdentifier:()Additions;
- (id)hf_personWithIdentifier:()Additions;
- (id)hf_personalRequestAccessories;
- (id)hf_primaryResidentDevice;
- (id)hf_relatedHomeTheaterMediaProfileContainerFor:()Additions;
- (id)hf_resetAllNetworkConfigurationProfiles;
- (id)hf_residentDevicesAddedToHome;
- (id)hf_restrictedGuestAllowedAccessories;
- (id)hf_roomWithIdentifier:()Additions;
- (id)hf_roomWithName:()Additions;
- (id)hf_selectedRoom;
- (id)hf_serviceGroupWithIdentifier:()Additions;
- (id)hf_serviceGroupsForService:()Additions;
- (id)hf_serviceWithIdentifier:()Additions;
- (id)hf_setFaceRecognitionEnabled:()Additions;
- (id)hf_setHasOnboardedForAccessCode;
- (id)hf_setHasOnboardedForWalletKey;
- (id)hf_setHomeHasMigratedForRedesign:()Additions;
- (id)hf_setHomeHasMigratedServicesToAccessories:()Additions;
- (id)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:()Additions;
- (id)hf_setNotesApplicationData:()Additions;
- (id)hf_setPhotosLibrarySettingsForUser:()Additions importPhotosLibraryEnabled:shareFacesEnabled:;
- (id)hf_setSharePhotosLibraryEnabled:()Additions forUser:;
- (id)hf_setShowPredictedScenesOnDashboard:()Additions;
- (id)hf_siriEndPointAccessories;
- (id)hf_siriEndpointCapableAccessoriesToOnboard;
- (id)hf_tvViewingProfilesAccessories;
- (id)hf_unitaryCameraProfile;
- (id)hf_updateAccessControlDescriptor:()Additions;
- (id)hf_updateAutomaticSoftwareUpdateEnabled:()Additions;
- (id)hf_updateAutomaticThirdPartyAccessorySoftwareUpdateEnabled:()Additions;
- (id)hf_updateColorPalette:()Additions type:;
- (id)hf_updateIncludeElectricityRates:()Additions;
- (id)hf_updateNetworkProtection:()Additions;
- (id)hf_visibleAccessories;
- (id)hf_walletKeyAccessories;
- (id)hf_walletKeyColorToDisplay;
- (id)hf_walletKeyDeviceStatesOfCompatiblePairedWatches;
- (id)hf_walletKeyInWalletAppURL;
- (id)hf_walletKeyUUID;
- (id)hf_zoneWithIdentifier:()Additions;
- (uint64_t)hf_allHomePodsSupportRemoteProfileInstallation;
- (uint64_t)hf_atLeastOneMediaAccessoryWithSupportingJustSiriLanguage;
- (uint64_t)hf_atleastOneHomePodSupportsAnnounce;
- (uint64_t)hf_atleastOneMediaAccessorySupportingJustSiri;
- (uint64_t)hf_atleastOneMediaAccessorySupportsAndHasAnnounceEnabled;
- (uint64_t)hf_blockCurrentUserFromHomeReason;
- (uint64_t)hf_cachedHasEnergySite;
- (uint64_t)hf_canAddHomeMember;
- (uint64_t)hf_canAddRestrictedGuest;
- (uint64_t)hf_canEnableAudioAnalysisAfterHH2Upgrade;
- (uint64_t)hf_canUpdateToHH2;
- (uint64_t)hf_containsActionableAccessories;
- (uint64_t)hf_currentUserIsAdministrator;
- (uint64_t)hf_currentUserIsOwner;
- (uint64_t)hf_currentUserIsRestrictedGuest;
- (uint64_t)hf_currentUserRoarUpdateRequiredForUnsupportedLegacyHomeHubVersion;
- (uint64_t)hf_enabledResidentsSupportsMediaActions;
- (uint64_t)hf_enabledResidentsSupportsNaturalLight;
- (uint64_t)hf_hasAcceptedTermsAndConditionsForHomePodVersion:()Additions;
- (uint64_t)hf_hasAccessoriesSupportingSoftwareUpdate;
- (uint64_t)hf_hasAnyVisibleTriggers;
- (uint64_t)hf_hasAppleTVs;
- (uint64_t)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;
- (uint64_t)hf_hasAtLeastOneCrossfadeEnabledDevice;
- (uint64_t)hf_hasAtLeastOneOasisEnabledDevice;
- (uint64_t)hf_hasAtLeastOneReachableHomeMediaAccessory;
- (uint64_t)hf_hasAtLeastOneRestrictedGuest;
- (uint64_t)hf_hasAutomatableProfiles;
- (uint64_t)hf_hasAutomatableServices;
- (uint64_t)hf_hasCameraRecordingResident;
- (uint64_t)hf_hasElectricityRatesEnabled;
- (uint64_t)hf_hasEnabledAndReachableResident;
- (uint64_t)hf_hasEnabledResident;
- (uint64_t)hf_hasEnabledResidentSupportingThirdPartySoftwareUpdate;
- (uint64_t)hf_hasFavorites;
- (uint64_t)hf_hasFirstPartyAccessoriesSupportingSoftwareUpdate;
- (uint64_t)hf_hasHomeHubSupportingAccessCodes;
- (uint64_t)hf_hasHomeHubSupportingWalletKey;
- (uint64_t)hf_hasHomePods;
- (uint64_t)hf_hasMediaAccessories;
- (uint64_t)hf_hasRMVCapableAppleTV;
- (uint64_t)hf_hasResidentCapableOfSupportingHomeActivityState;
- (uint64_t)hf_hasResidentDeviceCapableOfSupportingActivityZones;
- (uint64_t)hf_hasResidentDeviceCapableOfSupportingCHIP;
- (uint64_t)hf_hasResidentDeviceCapableOfSupportingEnhancedDetectionModes;
- (uint64_t)hf_hasResidentDeviceCapableOfSupportingMatterSharedAdmin;
- (uint64_t)hf_hasResidentDeviceCapableOfSupportingThreadBorderRouter;
- (uint64_t)hf_hasThirdPartyAccessoriesSupportingSoftwareUpdate;
- (uint64_t)hf_hasUtilitySubscription;
- (uint64_t)hf_hasVisibleAccessories;
- (uint64_t)hf_hasVisibleServies;
- (uint64_t)hf_homeHasMigratedForRedesign;
- (uint64_t)hf_homeHasMigratedIntoHomeApp;
- (uint64_t)hf_homeHasMigratedServicesToAccessories;
- (uint64_t)hf_isAbleToAddTrigger;
- (uint64_t)hf_isAutomatable;
- (uint64_t)hf_isAutomaticThirdPartyAccessorySoftwareUpdateEnabled;
- (uint64_t)hf_isCurrentLocationHome;
- (uint64_t)hf_isCurrentUserInRestrictedGuestAllowedPeriod;
- (uint64_t)hf_isEmpty;
- (uint64_t)hf_isFaceRecognitionAvailable;
- (uint64_t)hf_isGridForecastAvailableForNewFeaturesView;
- (uint64_t)hf_isGridForecastEnabled;
- (uint64_t)hf_isGridForecastSupported;
- (uint64_t)hf_isGridForecastVisible;
- (uint64_t)hf_isHomeElectricitySupported;
- (uint64_t)hf_isHomeEnergyHomeEmpty;
- (uint64_t)hf_isHomeEnergyVisible;
- (uint64_t)hf_isInRestrictedGuestAllowedPeriodForUser:()Additions;
- (uint64_t)hf_isMediaAccessoryProfileValid:()Additions;
- (uint64_t)hf_numberOfHomePods;
- (uint64_t)hf_remoteAccessState;
- (uint64_t)hf_shouldBlockCurrentRestrictedGuestFromHome;
- (uint64_t)hf_shouldBlockCurrentUserFromHome;
- (uint64_t)hf_shouldBlockCurrentUserFromHomeForRoarUpgrade;
- (uint64_t)hf_shouldHideResidentDeviceReachabilityIssues;
- (uint64_t)hf_shouldShowActivityLogSettingForTargetKind:()Additions;
- (uint64_t)hf_shouldShowAnnounceButtonForThisHome;
- (uint64_t)hf_shouldShowAnnounceFeatureForThisHome;
- (uint64_t)hf_shouldShowNoAccessOutsideOfScheduleForRestrictedGuest:()Additions;
- (uint64_t)hf_shouldShowSoftwareUpdateSettings;
- (uint64_t)hf_showPredictedScenesOnDashboard;
- (uint64_t)hf_supportsPerUserRemoteAccess;
- (uint64_t)hf_supportsReachabilityNotifications;
- (uint64_t)hf_supportsRemoteAccessRestrictions;
- (uint64_t)hf_supportsSharedEventAutomation;
- (uint64_t)hf_userIsAdministrator:()Additions;
- (uint64_t)hf_userIsOwner:()Additions;
- (uint64_t)hf_userIsRestrictedGuest:()Additions;
- (void)hf_clearCachedWalletKeyDeviceStateForCurrentDevice;
- (void)hf_setIsGridForecastEnabled:()Additions;
- (void)hf_setSelectedRoom:()Additions;
- (void)hf_setTemporaryEnergyLocation:()Additions;
- (void)hf_startReprovisioningAccessory:()Additions;
@end

@implementation HMHome(Additions)

- (id)hf_allRooms
{
  v2 = [MEMORY[0x277CBEB18] array];
  v3 = [a1 rooms];
  [v2 na_safeAddObjectsFromArray:v3];

  v4 = [a1 roomForEntireHome];
  [v2 na_safeAddObject:v4];

  return v2;
}

- (id)hf_activeRooms
{
  v2 = objc_alloc(MEMORY[0x277CBEB18]);
  v3 = [a1 rooms];
  v4 = [v2 initWithArray:v3];

  v5 = [a1 roomForEntireHome];
  v6 = [a1 rooms];
  if (![v6 count])
  {

    goto LABEL_5;
  }

  v7 = [v5 hf_hasVisibleAccessories];

  if (v7)
  {
LABEL_5:
    [v4 na_safeAddObject:v5];
  }

  return v4;
}

- (HFCharacteristicValueManager)hf_characteristicValueManager
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = objc_getAssociatedObject(a1, sel_hf_characteristicValueManager);
  if (!v2)
  {
    v2 = [[HFCharacteristicValueManager alloc] initWithValueReader:a1 valueWriter:a1];
    objc_setAssociatedObject(a1, sel_hf_characteristicValueManager, v2, 1);
    v3 = HFLogForCategory(0x3BuLL);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v6 = 136315906;
      v7 = "[HMHome(Additions) hf_characteristicValueManager]";
      v8 = 2048;
      v9 = 147;
      v10 = 2112;
      v11 = v2;
      v12 = 2112;
      v13 = a1;
      _os_log_impl(&dword_20D9BF000, v3, OS_LOG_TYPE_INFO, "%s (Line: %ld) HFCharacteristicValueManager is %@ for Home %@.", &v6, 0x2Au);
    }
  }

  v4 = *MEMORY[0x277D85DE8];

  return v2;
}

- (uint64_t)hf_hasResidentCapableOfSupportingHomeActivityState
{
  v1 = [a1 residentDevices];
  v2 = [v1 na_any:&__block_literal_global_66];

  return v2;
}

- (id)hf_autoClimateCapableThermostatsToOnboard
{
  v1 = [a1 accessories];
  v2 = [v1 na_filter:&__block_literal_global_48_0];

  return v2;
}

- (_TtC4Home19HFHomeEnergyManager)hf_energyManager
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = objc_getAssociatedObject(a1, sel_hf_energyManager);
  if (!v2)
  {
    v2 = [[_TtC4Home19HFHomeEnergyManager alloc] initWithHome:a1];
    objc_setAssociatedObject(a1, sel_hf_energyManager, v2, 1);
    [(HFHomeEnergyManager *)v2 updateHomeEnergyAvailableFeaturesWithCompletionHandler:&__block_literal_global_54_0];
    v3 = HFLogForCategory(0x24uLL);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v6 = 136315650;
      v7 = "[HMHome(Additions) hf_energyManager]";
      v8 = 2112;
      v9 = v2;
      v10 = 2112;
      v11 = a1;
      _os_log_debug_impl(&dword_20D9BF000, v3, OS_LOG_TYPE_DEBUG, "%s HFHomeEnergyManager is %@ for Home %@.", &v6, 0x20u);
    }
  }

  v4 = *MEMORY[0x277D85DE8];

  return v2;
}

- (uint64_t)hf_isGridForecastAvailableForNewFeaturesView
{
  v1 = [a1 hf_energyManager];
  v2 = [v1 isGridForecastAvailableForNewFeaturesView];

  return v2;
}

- (uint64_t)hf_isGridForecastSupported
{
  v1 = [a1 hf_energyManager];
  v2 = [v1 effectiveGridForecastSupported];

  return v2;
}

- (uint64_t)hf_isGridForecastEnabled
{
  v1 = [a1 hf_energyManager];
  v2 = [v1 isGridForecastEnabled];

  return v2;
}

- (void)hf_setIsGridForecastEnabled:()Additions
{
  v4 = [a1 hf_energyManager];
  [v4 setIsGridForecastEnabled:a3];
}

- (uint64_t)hf_isGridForecastVisible
{
  v1 = [a1 hf_energyManager];
  v2 = [v1 isGridForecastVisible];

  return v2;
}

- (uint64_t)hf_isHomeElectricitySupported
{
  v1 = [a1 hf_energyManager];
  v2 = [v1 isHomeElectricitySupported];

  return v2;
}

- (uint64_t)hf_cachedHasEnergySite
{
  v1 = [a1 hf_energyManager];
  v2 = [v1 cachedHasEnergySite];

  return v2;
}

- (uint64_t)hf_hasUtilitySubscription
{
  v1 = [a1 hf_energyManager];
  v2 = [v1 cachedHasUtilitySubscription];

  return v2;
}

- (uint64_t)hf_isHomeEnergyVisible
{
  v1 = [a1 hf_energyManager];
  v2 = [v1 isHomeEnergyVisible];

  return v2;
}

- (void)hf_setTemporaryEnergyLocation:()Additions
{
  v4 = a3;
  v5 = [a1 hf_energyManager];
  [v5 setTemporaryLocation:v4];
}

- (uint64_t)hf_isHomeEnergyHomeEmpty
{
  if (![a1 hf_hasVisibleAccessories])
  {
    return 1;
  }

  return [a1 hf_shouldBlockCurrentUserFromHome];
}

- (uint64_t)hf_hasElectricityRatesEnabled
{
  v1 = [a1 hf_energyManager];
  v2 = [v1 hasElectricityRatesEnabled];

  return v2;
}

- (id)hf_updateIncludeElectricityRates:()Additions
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __54__HMHome_Additions__hf_updateIncludeElectricityRates___block_invoke;
  v5[3] = &unk_277DF4EF0;
  v5[4] = a1;
  v6 = a3;
  v3 = [MEMORY[0x277D2C900] futureWithBlock:v5];

  return v3;
}

- (HFSuspendedStateOverrideValueProvider)hf_suspendedStateOverrideValueProvider
{
  v2 = objc_getAssociatedObject(a1, sel_hf_suspendedStateOverrideValueProvider);
  if (!v2)
  {
    v2 = objc_alloc_init(HFSuspendedStateOverrideValueProvider);
    objc_setAssociatedObject(a1, sel_hf_suspendedStateOverrideValueProvider, v2, 1);
  }

  return v2;
}

- (uint64_t)hf_remoteAccessState
{
  v16 = *MEMORY[0x277D85DE8];
  if ((HFForceRemoteAccessStateAvailable() & 1) != 0 || +[HFUtilities shouldSuppressAllErrorsForDemo])
  {
    v2 = 3;
  }

  else
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v3 = [a1 residentDevices];
    v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v12;
      v2 = 1;
      while (2)
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v12 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v11 + 1) + 8 * i);
          if ([v8 isEnabled])
          {
            if ([v8 status])
            {
              v2 = 3;
              goto LABEL_17;
            }

            v2 = 2;
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v2 = 1;
    }

LABEL_17:
  }

  v9 = *MEMORY[0x277D85DE8];
  return v2;
}

- (id)hf_displayNameForActivityState:()Additions
{
  if ((a3 - 1) > 6)
  {
    v4 = @"HFHomeActivityStateUnknown";
  }

  else
  {
    v4 = off_277DF86A0[a3 - 1];
  }

  v5 = _HFLocalizedStringWithDefaultValue(v4, v4, 1);

  return v5;
}

- (uint64_t)hf_isCurrentLocationHome
{
  v2 = +[HFHomeKitDispatcher sharedDispatcher];
  v3 = [v2 homeManager];

  if (!+[HFUtilities isInternalTest])
  {
    v4 = [v3 homes];
    v5 = [v4 containsObject:a1];

    if ((v5 & 1) == 0)
    {
      NSLog(&cfstr_HomeIsNotAPart.isa, a1, v3);
    }
  }

  v6 = [v3 currentHome];
  if (v6)
  {
    v7 = [v3 currentHome];
    v8 = [v7 uniqueIdentifier];
    v9 = [a1 uniqueIdentifier];
    v10 = [v8 isEqual:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (uint64_t)hf_isEmpty
{
  if ([a1 hf_hasVisibleAccessories])
  {

    return [a1 hf_shouldBlockCurrentUserFromHome];
  }

  else
  {
    v3 = [a1 rooms];
    if ([v3 count])
    {
      v4 = [a1 hf_shouldBlockCurrentUserFromHome];
    }

    else
    {
      v4 = 1;
    }

    return v4;
  }
}

- (BOOL)hf_hasResident
{
  v1 = [a1 residentDevices];
  v2 = [v1 count] != 0;

  return v2;
}

- (uint64_t)hf_currentUserIsAdministrator
{
  if ((HFForceNotAdministrator() & 1) != 0 || +[HFUtilities isRunningInStoreDemoMode])
  {
    return 0;
  }

  v3 = [a1 currentUser];
  v4 = [a1 homeAccessControlForUser:v3];
  v5 = [v4 isAdministrator];

  return v5;
}

- (uint64_t)hf_currentUserIsOwner
{
  if ((HFForceNotAdministrator() & 1) != 0 || +[HFUtilities isRunningInStoreDemoMode])
  {
    return 0;
  }

  v3 = [a1 currentUser];
  v4 = [a1 homeAccessControlForUser:v3];
  v5 = [v4 isOwner];

  return v5;
}

- (uint64_t)hf_canAddHomeMember
{
  v2 = +[HFHomeKitDispatcher sharedDispatcher];
  v3 = [v2 homeManager];
  v4 = [v3 hasOptedToHH2];

  if (!v4)
  {
    return 1;
  }

  v5 = [a1 residentDevices];
  v6 = [v5 na_any:&__block_literal_global_89];

  return v6;
}

- (uint64_t)hf_canAddRestrictedGuest
{
  v20 = *MEMORY[0x277D85DE8];
  if ([a1 hf_canAddHomeMember])
  {
    v2 = [a1 hf_primaryResidentDevice];
    v3 = [v2 capabilities];
    v4 = HFLogForCategory(0x4CuLL);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      if ((v3 & 0x40000000) != 0)
      {
        v5 = @"YES";
      }

      else
      {
        v5 = @"NO";
      }

      [v2 capabilities];
      v6 = HMResidentDeviceCapabilitiesDescription();
      v12 = 136315906;
      v13 = "[HMHome(Additions) hf_canAddRestrictedGuest]";
      v14 = 2112;
      v15 = v5;
      v16 = 2112;
      v17 = v2;
      v18 = 2112;
      v19 = v6;
      _os_log_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_DEFAULT, "(%s) Returning %@. primary resident %@ has capabilities %@.", &v12, 0x2Au);
    }

    v7 = [a1 hf_restrictedGuestAllowedAccessories];
    v8 = [v7 count] != 0;

    v9 = *&v8 & (v3 >> 30);
  }

  else
  {
    v2 = HFLogForCategory(0x4CuLL);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 136315138;
      v13 = "[HMHome(Additions) hf_canAddRestrictedGuest]";
      _os_log_impl(&dword_20D9BF000, v2, OS_LOG_TYPE_DEFAULT, "(%s) Returning NO because adding home is not available. Check if resident device opted into HH2 or not.", &v12, 0xCu);
    }

    v9 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

- (uint64_t)hf_userIsRestrictedGuest:()Additions
{
  v1 = [a1 homeAccessControlForUser:?];
  v2 = [v1 isRestrictedGuest];

  return v2;
}

- (uint64_t)hf_currentUserIsRestrictedGuest
{
  v2 = [a1 currentUser];
  v3 = [a1 hf_userIsRestrictedGuest:v2];

  return v3;
}

- (uint64_t)hf_isInRestrictedGuestAllowedPeriodForUser:()Additions
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([a1 hf_userIsRestrictedGuest:v4])
  {
    v5 = [a1 homeAccessControlForUser:v4];
    v6 = [v5 restrictedGuestAccessSettings];

    v7 = [v6 guestAccessSchedule];
    if (v7)
    {
      v8 = [a1 homeAccessControlForUser:v4];
      v9 = [v8 isRestrictedGuestInAllowedPeriod];

      v10 = HFLogForCategory(0x4CuLL);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = NSStringFromBOOL();
        v12 = [a1 name];
        v13 = [a1 uniqueIdentifier];
        v14 = [v4 hf_prettyDescription];
        v15 = [a1 timeZone];
        v22 = 136316418;
        v23 = "[HMHome(Additions) hf_isInRestrictedGuestAllowedPeriodForUser:]";
        v24 = 2112;
        v25 = v11;
        v26 = 2112;
        v27 = v12;
        v28 = 2112;
        v29 = v13;
        v30 = 2112;
        v31 = v14;
        v32 = 2112;
        v33 = v15;
        _os_log_impl(&dword_20D9BF000, v10, OS_LOG_TYPE_DEFAULT, "(%s) Returning %@. home: <Name: %@, uniqueIdentifier: %@>. User = %@. (timeZone = %@.)", &v22, 0x3Eu);
      }
    }

    else
    {
      v10 = HFLogForCategory(0x4CuLL);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v17 = [a1 name];
        v18 = [a1 uniqueIdentifier];
        v19 = [v4 hf_prettyDescription];
        v22 = 136315906;
        v23 = "[HMHome(Additions) hf_isInRestrictedGuestAllowedPeriodForUser:]";
        v24 = 2112;
        v25 = v17;
        v26 = 2112;
        v27 = v18;
        v28 = 2112;
        v29 = v19;
        _os_log_impl(&dword_20D9BF000, v10, OS_LOG_TYPE_DEFAULT, "(%s) Returning YES because schedule is 'nil' aka 'Always Allowed' for RG. home: <Name: %@, Id: %@> user:%@.", &v22, 0x2Au);
      }

      v9 = 1;
    }
  }

  else
  {
    v6 = HFLogForCategory(0x4CuLL);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [v4 hf_prettyDescription];
      v22 = 136315394;
      v23 = "[HMHome(Additions) hf_isInRestrictedGuestAllowedPeriodForUser:]";
      v24 = 2112;
      v25 = v16;
      _os_log_impl(&dword_20D9BF000, v6, OS_LOG_TYPE_DEFAULT, "(%s) Returning NO because user is NOT restricted guest. User = %@", &v22, 0x16u);
    }

    v9 = 0;
  }

  v20 = *MEMORY[0x277D85DE8];
  return v9;
}

- (uint64_t)hf_isCurrentUserInRestrictedGuestAllowedPeriod
{
  v2 = [a1 currentUser];
  v3 = [a1 hf_isInRestrictedGuestAllowedPeriodForUser:v2];

  return v3;
}

- (BOOL)hf_isCurrentRestrictedGuestAwayFromHome
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = [a1 currentUser];
  v3 = [a1 hf_userIsRestrictedGuest:v2];

  if (v3)
  {
    v4 = [a1 homeLocationStatus] == 2;
  }

  else
  {
    v4 = 0;
  }

  v5 = HFLogForCategory(0x4CuLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [a1 name];
    v7 = [a1 uniqueIdentifier];
    [a1 homeLocationStatus];
    v8 = HMStringFromHomeLocation();
    v9 = [a1 currentUser];
    v10 = [v9 hf_prettyDescription];
    v13 = 136316418;
    v14 = "[HMHome(Additions) hf_isCurrentRestrictedGuestAwayFromHome]";
    v15 = 1024;
    v16 = v4;
    v17 = 2112;
    v18 = v6;
    v19 = 2112;
    v20 = v7;
    v21 = 2112;
    v22 = v8;
    v23 = 2112;
    v24 = v10;
    _os_log_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_DEFAULT, "(%s) result = %{BOOL}d. home: <Name: %@, Id: %@>. HomeLocationStatus = %@. User:%@.", &v13, 0x3Au);
  }

  v11 = *MEMORY[0x277D85DE8];
  return v4;
}

- (uint64_t)hf_shouldBlockCurrentRestrictedGuestFromHome
{
  v2 = [a1 currentUser];
  if ([a1 hf_userIsRestrictedGuest:v2])
  {
    if ([a1 hf_isCurrentRestrictedGuestAwayFromHome])
    {
      v3 = 1;
    }

    else
    {
      v3 = [a1 hf_isCurrentUserInRestrictedGuestAllowedPeriod] ^ 1;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (uint64_t)hf_shouldShowNoAccessOutsideOfScheduleForRestrictedGuest:()Additions
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([a1 hf_userIsRestrictedGuest:v4])
  {
    v5 = [a1 hf_isInRestrictedGuestAllowedPeriodForUser:v4] ^ 1;
    v6 = HFLogForCategory(0x4CuLL);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = NSStringFromBOOL();
      v8 = [a1 name];
      v9 = [a1 uniqueIdentifier];
      v10 = [v4 hf_prettyDescription];
      v16 = 136316162;
      v17 = "[HMHome(Additions) hf_shouldShowNoAccessOutsideOfScheduleForRestrictedGuest:]";
      v18 = 2112;
      v19 = v7;
      v20 = 2112;
      v21 = v8;
      v22 = 2112;
      v23 = v9;
      v24 = 2112;
      v25 = v10;
      _os_log_impl(&dword_20D9BF000, v6, OS_LOG_TYPE_DEFAULT, "(%s) Returning %@. home: <Name: %@, Id: %@>. user = %@.", &v16, 0x34u);
    }
  }

  else
  {
    v6 = HFLogForCategory(0x4CuLL);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [a1 name];
      v12 = [a1 uniqueIdentifier];
      v13 = [v4 hf_prettyDescription];
      v16 = 136315906;
      v17 = "[HMHome(Additions) hf_shouldShowNoAccessOutsideOfScheduleForRestrictedGuest:]";
      v18 = 2112;
      v19 = v11;
      v20 = 2112;
      v21 = v12;
      v22 = 2112;
      v23 = v13;
      _os_log_impl(&dword_20D9BF000, v6, OS_LOG_TYPE_DEFAULT, "(%s) Returning NO because user is NOT a restricted guest. home: <Name: %@, Id: %@>. User:%@", &v16, 0x2Au);
    }

    v5 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v5;
}

- (uint64_t)hf_shouldHideResidentDeviceReachabilityIssues
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = [a1 currentUser];
  v5 = [a1 hf_userIsRestrictedGuest:v4];

  if (v5)
  {
    v6 = HFLogForCategory(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = NSStringFromSelector(a2);
      v10 = 138412546;
      v11 = a1;
      v12 = 2112;
      v13 = v7;
      _os_log_impl(&dword_20D9BF000, v6, OS_LOG_TYPE_DEFAULT, "%@:%@ Current user is a restricted guest, will hide resident reachability issues.", &v10, 0x16u);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
  return v5;
}

- (uint64_t)hf_userIsAdministrator:()Additions
{
  v1 = [a1 homeAccessControlForUser:?];
  v2 = [v1 isAdministrator];

  return v2;
}

- (uint64_t)hf_userIsOwner:()Additions
{
  v1 = [a1 homeAccessControlForUser:?];
  v2 = [v1 isOwner];

  return v2;
}

- (id)hf_roomWithIdentifier:()Additions
{
  v4 = a3;
  v5 = [a1 hf_allRooms];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __43__HMHome_Additions__hf_roomWithIdentifier___block_invoke;
  v9[3] = &unk_277DF7E60;
  v10 = v4;
  v6 = v4;
  v7 = [v5 na_firstObjectPassingTest:v9];

  return v7;
}

- (id)hf_roomWithName:()Additions
{
  v4 = a3;
  v5 = [a1 hf_allRooms];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __37__HMHome_Additions__hf_roomWithName___block_invoke;
  v9[3] = &unk_277DF7E60;
  v10 = v4;
  v6 = v4;
  v7 = [v5 na_firstObjectPassingTest:v9];

  return v7;
}

- (id)hf_selectedRoom
{
  v2 = +[HFStateRestorationSettings sharedInstance];
  v3 = [a1 uniqueIdentifier];
  v4 = [v2 selectedRoomIdentifierForHomeIdentifier:v3];

  v5 = [a1 hf_roomWithIdentifier:v4];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v8 = [a1 hf_orderedRooms];
    if ([v8 count])
    {
      [v8 objectAtIndexedSubscript:0];
    }

    else
    {
      [a1 roomForEntireHome];
    }
    v7 = ;
  }

  return v7;
}

- (id)hf_orderedRooms
{
  objc_initWeak(&location, val);
  v2 = +[HFHomePropertyCacheManager sharedManager];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __36__HMHome_Additions__hf_orderedRooms__block_invoke;
  v5[3] = &unk_277DF7E88;
  objc_copyWeak(&v6, &location);
  v3 = [v2 valueForObject:val home:val key:@"hf_orderedRooms" invalidationReasons:4 recalculationBlock:v5];
  objc_destroyWeak(&v6);

  objc_destroyWeak(&location);

  return v3;
}

- (void)hf_setSelectedRoom:()Additions
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = +[HFStateRestorationSettings sharedInstance];
  v6 = [v5 selectedRoomIdentifierForSelectedHome];

  v7 = [v4 uniqueIdentifier];
  v8 = [v7 isEqual:v6];

  if ((v8 & 1) == 0)
  {
    v9 = +[HFStateRestorationSettings sharedInstance];
    v10 = [v4 uniqueIdentifier];
    v11 = [a1 uniqueIdentifier];
    [v9 saveSelectedRoomIdentifier:v10 forHomeIdentifier:v11];

    v12 = HFLogForCategory(0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [v4 hf_prettyDescription];
      *buf = 138412546;
      v19 = a1;
      v20 = 2112;
      v21 = v13;
      _os_log_impl(&dword_20D9BF000, v12, OS_LOG_TYPE_DEFAULT, "home:%@ didSelectRoom:%@", buf, 0x16u);
    }

    v14 = +[HFHomeKitDispatcher sharedDispatcher];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __40__HMHome_Additions__hf_setSelectedRoom___block_invoke;
    v16[3] = &unk_277DF3810;
    v16[4] = a1;
    v17 = v4;
    [v14 dispatchHomeObserverMessage:v16 sender:0];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (id)hf_orderedActionSets
{
  v2 = [a1 hf_reorderableActionSetsList];
  v3 = [v2 sortedHomeKitObjectComparator];

  if (!v3)
  {
    NSLog(&cfstr_CouldNotCreate_0.isa, a1);
  }

  v4 = [a1 actionSets];
  v5 = [v4 sortedArrayUsingComparator:v3];

  return v5;
}

- (id)hf_zoneWithIdentifier:()Additions
{
  v4 = a3;
  v5 = [a1 zones];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __43__HMHome_Additions__hf_zoneWithIdentifier___block_invoke;
  v9[3] = &unk_277DF7EB0;
  v10 = v4;
  v6 = v4;
  v7 = [v5 na_firstObjectPassingTest:v9];

  return v7;
}

- (id)hf_localizedDescriptionForNetworkProtectionSupport
{
  if (([a1 networkRouterSupportDisableReason] & 2) != 0)
  {
    v2 = @"HFNetworkProtectionSupportIncompatibleVersion";
  }

  else if ([a1 networkRouterSupportDisableReason])
  {
    v2 = @"HFNetworkProtectionSupportIncompatibleHomeHub";
  }

  else
  {
    v2 = @"HFNetworkProtectionSupport";
  }

  v3 = _HFLocalizedStringWithDefaultValue(v2, v2, 1);

  return v3;
}

- (BOOL)hf_isNetworkProtectionEnabled
{
  v2 = [a1 hf_allNetworkRouterAccessories];
  if ([v2 count])
  {
    v3 = [a1 protectionMode] == 1;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)hf_isNetworkCredentialManagementEnabled
{
  v1 = [a1 hf_allNetworkRouterAccessories];
  v2 = [v1 count] != 0;

  return v2;
}

- (id)hf_updateNetworkProtection:()Additions
{
  objc_initWeak(&location, val);
  v4 = MEMORY[0x277D2C900];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__HMHome_Additions__hf_updateNetworkProtection___block_invoke;
  v7[3] = &unk_277DF7ED8;
  objc_copyWeak(v8, &location);
  v8[1] = a3;
  v5 = [v4 futureWithBlock:v7];
  objc_destroyWeak(v8);
  objc_destroyWeak(&location);

  return v5;
}

- (id)hf_allNonEmptyActionSets
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = [a1 actionSets];
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        v9 = [v8 actions];
        if ([v9 count])
        {
          v10 = [v8 hf_isAnonymous];

          if ((v10 & 1) == 0)
          {
            [v2 addObject:v8];
          }
        }

        else
        {
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  v11 = *MEMORY[0x277D85DE8];

  return v2;
}

- (id)hf_accessoryWithIdentifier:()Additions
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [a1 accessories];
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
        v10 = [v9 uniqueIdentifier];
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

- (id)hf_accessoryWithDeviceIdentifier:()Additions
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = [a1 accessories];
  v6 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v6)
  {
    v7 = *v20;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v19 + 1) + 8 * i);
        v10 = objc_alloc(MEMORY[0x277D0F808]);
        v11 = [v9 deviceIdentifier];
        v12 = [v10 initWithMACAddressString:v11];
        v13 = [v12 formattedString];
        v14 = v13;
        if (v13)
        {
          v15 = v13;
        }

        else
        {
          v15 = [v9 deviceIdentifier];
        }

        v16 = v15;

        if ([v16 isEqual:v4])
        {
          v6 = v9;

          goto LABEL_14;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_14:

  v17 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)hf_accessoryWithMatterNodeID:()Additions
{
  v4 = a3;
  v5 = [a1 accessories];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __50__HMHome_Additions__hf_accessoryWithMatterNodeID___block_invoke;
  v9[3] = &unk_277DF3888;
  v10 = v4;
  v6 = v4;
  v7 = [v5 na_firstObjectPassingTest:v9];

  return v7;
}

- (id)hf_accessoryForSymptomsHandler:()Additions
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [a1 accessories];
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
        v10 = [v9 symptomsHandler];
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

- (id)hf_mediaSystemForSymptomsHandler:()Additions
{
  v4 = a3;
  v5 = [a1 mediaSystems];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __54__HMHome_Additions__hf_mediaSystemForSymptomsHandler___block_invoke;
  v9[3] = &unk_277DF7250;
  v10 = v4;
  v6 = v4;
  v7 = [v5 na_firstObjectPassingTest:v9];

  return v7;
}

- (id)hf_visibleAccessories
{
  v1 = [a1 accessories];
  v2 = [v1 na_filter:&__block_literal_global_127_1];

  return v2;
}

- (uint64_t)hf_hasVisibleAccessories
{
  v1 = [a1 accessories];
  v2 = [v1 na_any:&__block_literal_global_129];

  return v2;
}

- (id)hf_mediaProfileContainerForSymptomsHandler:()Additions
{
  v4 = a3;
  v5 = [a1 hf_mediaSystemForSymptomsHandler:v4];
  if (!v5)
  {
    v6 = [a1 hf_accessoryForSymptomsHandler:v4];
    v5 = [v6 mediaProfile];
  }

  return v5;
}

- (id)hf_accessoriesMatchingCategoryType:()Additions
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_opt_new();
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = [a1 accessories];
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        v12 = [v11 category];
        v13 = [v12 categoryType];
        v14 = [v13 isEqualToString:v4];

        if (v14)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  v15 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)hf_allBridgeAccessories
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [a1 accessories];
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        if ([v8 hf_isBridge])
        {
          [v2 addObject:v8];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  v9 = *MEMORY[0x277D85DE8];

  return v2;
}

- (id)hf_allNetworkRouterAccessories
{
  v1 = [a1 accessories];
  v2 = [v1 na_filter:&__block_literal_global_132];

  return v2;
}

- (id)hf_allProgrammableSwitchAccessories
{
  v2 = [MEMORY[0x277CD1D90] hf_programmableSwitchServiceTypes];
  v3 = [a1 accessories];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __56__HMHome_Additions__hf_allProgrammableSwitchAccessories__block_invoke;
  v7[3] = &unk_277DF3888;
  v8 = v2;
  v4 = v2;
  v5 = [v3 na_filter:v7];

  return v5;
}

- (id)hf_allTargetControlAccessories
{
  v1 = [a1 accessories];
  v2 = [v1 na_filter:&__block_literal_global_136];

  return v2;
}

- (id)hf_primaryResidentDevice
{
  v1 = [a1 residentDevices];
  v2 = [v1 na_firstObjectPassingTest:&__block_literal_global_138];

  return v2;
}

- (id)hf_enabledResidentDevices
{
  v1 = [a1 residentDevices];
  v2 = [v1 na_filter:&__block_literal_global_140_0];

  return v2;
}

- (id)hf_actionSetWithUUID:()Additions
{
  v4 = a3;
  v5 = [a1 actionSets];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __42__HMHome_Additions__hf_actionSetWithUUID___block_invoke;
  v9[3] = &unk_277DF4280;
  v10 = v4;
  v6 = v4;
  v7 = [v5 na_firstObjectPassingTest:v9];

  return v7;
}

- (uint64_t)hf_hasResidentDeviceCapableOfSupportingThreadBorderRouter
{
  v1 = [a1 residentDevices];
  v2 = [v1 na_any:&__block_literal_global_143];

  return v2;
}

- (uint64_t)hf_hasResidentDeviceCapableOfSupportingMatterSharedAdmin
{
  v1 = [a1 residentDevices];
  v2 = [v1 na_any:&__block_literal_global_145_1];

  return v2;
}

- (uint64_t)hf_hasResidentDeviceCapableOfSupportingCHIP
{
  v1 = [a1 residentDevices];
  v2 = [v1 na_any:&__block_literal_global_147_1];

  return v2;
}

- (uint64_t)hf_hasResidentDeviceCapableOfSupportingActivityZones
{
  v1 = [a1 residentDevices];
  v2 = [v1 na_any:&__block_literal_global_149];

  return v2;
}

- (uint64_t)hf_hasResidentDeviceCapableOfSupportingEnhancedDetectionModes
{
  v1 = [a1 residentDevices];
  v2 = [v1 na_any:&__block_literal_global_151];

  return v2;
}

- (id)hf_residentDevicesAddedToHome
{
  v2 = [a1 hf_appleTVs];
  v3 = [v2 na_map:&__block_literal_global_154];

  v4 = MEMORY[0x277CBEB98];
  v5 = [a1 residentDevices];
  v6 = [v4 setWithArray:v5];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __50__HMHome_Additions__hf_residentDevicesAddedToHome__block_invoke_2;
  v10[3] = &unk_277DF7F00;
  v11 = v3;
  v7 = v3;
  v8 = [v6 na_filter:v10];

  return v8;
}

- (uint64_t)hf_shouldBlockCurrentUserFromHome
{
  if ([a1 hf_shouldBlockCurrentRestrictedGuestFromHome])
  {
    return 1;
  }

  return [a1 hf_shouldBlockCurrentUserFromHomeForRoarUpgrade];
}

- (uint64_t)hf_shouldBlockCurrentUserFromHomeForRoarUpgrade
{
  v30 = *MEMORY[0x277D85DE8];
  if (+[HFUtilities isInternalInstall]&& HFPreferencesBooleanValueForKey(@"HFEnableForceBlockUserForRoarUpgrade") == 2)
  {
    v2 = HFLogForCategory(0);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v20) = 0;
      _os_log_impl(&dword_20D9BF000, v2, OS_LOG_TYPE_DEFAULT, "<HMHome:hf_shouldBlockCurrentUserFromHomeForRoarUpgrade> Debug default enabled, override set to YES ", &v20, 2u);
    }

    v3 = 1;
  }

  else
  {
    v4 = [a1 currentUser];
    v2 = [a1 homeAccessControlForUser:v4];

    if (([v2 isAccessAllowed]& 1) != 0)
    {
      v3 = 0;
    }

    else
    {
      v5 = [v2 accessNotAllowedReasonCode];
      v6 = v5;
      v3 = v5 == 2 || v5 == 4 || v5 == 8;
      if (v5 == 8)
      {
        v8 = +[HFHomeKitDispatcher sharedDispatcher];
        v9 = [v8 homeManager];
        v10 = [v9 hasOptedToHH2];

        v3 = v10 ^ 1;
      }

      v11 = HFLogForCategory(0);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = [a1 currentUser];
        v13 = [v12 uniqueIdentifier];
        v14 = [a1 uniqueIdentifier];
        v15 = HF_HomeAccessNotAllowedReasonCodeString(v6);
        v16 = +[HFHomeKitDispatcher sharedDispatcher];
        v17 = [v16 homeManager];
        v20 = 138544386;
        v21 = v13;
        v22 = 2114;
        v23 = v14;
        v24 = 2048;
        v25 = v6;
        v26 = 2112;
        v27 = v15;
        v28 = 1024;
        v29 = [v17 hasOptedToHH2];
        _os_log_impl(&dword_20D9BF000, v11, OS_LOG_TYPE_DEFAULT, "<HMHome:hf_shouldBlockCurrentUserFromHomeForRoarUpgrade> User %{public}@ is blocked from home %{public}@. HMHomeAccessNotAllowedReasonCode %lu (%@) | hasOptedToHH2 = %{BOOL}d", &v20, 0x30u);
      }
    }
  }

  v18 = *MEMORY[0x277D85DE8];
  return v3 & 1;
}

- (uint64_t)hf_currentUserRoarUpdateRequiredForUnsupportedLegacyHomeHubVersion
{
  v37 = *MEMORY[0x277D85DE8];
  v2 = +[HFHomeKitDispatcher sharedDispatcher];
  v3 = [v2 homeManager];
  v4 = [v3 hasOptedToHH2];

  if (v4)
  {
    v5 = HFLogForCategory(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_DEFAULT, "<HMHome:hf_currentUserHomeHubMigrationRequired> ROAR Upgrade REQUIRED = NO because already opted into HH2", buf, 2u);
    }

    v6 = 0;
  }

  else
  {
    v7 = [a1 currentUser];
    v5 = [a1 homeAccessControlForUser:v7];

    v8 = [v5 accessNotAllowedReasonCode];
    v6 = (v8 == 8) & ~[v5 isAccessAllowed];
    v9 = HFLogForCategory(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v18 = [v5 isAccessAllowed];
      v20 = [a1 currentUser];
      v10 = [a1 hf_HMHomeAccessNotAllowedReasonCodeStringForUser:v20];
      v19 = [a1 currentUser];
      v11 = [v19 hf_prettyDescription];
      v12 = [a1 currentUser];
      v13 = [v12 uniqueIdentifier];
      v14 = [a1 hf_minimumDescription];
      v15 = [a1 uniqueIdentifier];
      *buf = 67110914;
      v22 = v6;
      v23 = 1024;
      v24 = v18;
      v25 = 2048;
      v26 = v8;
      v27 = 2114;
      v28 = v10;
      v29 = 2112;
      v30 = v11;
      v31 = 2114;
      v32 = v13;
      v33 = 2112;
      v34 = v14;
      v35 = 2114;
      v36 = v15;
      _os_log_impl(&dword_20D9BF000, v9, OS_LOG_TYPE_DEFAULT, "<HMHome:hf_currentUserHomeHubMigrationRequired> ROAR Upgrade required = %{BOOL}d | isAccessAllowed = %{BOOL}d | HMHomeAccessNotAllowedReasonCode %lu (%{public}@) | User = %@ (%{public}@) | home = %@ (%{public}@)", buf, 0x4Au);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
  return v6;
}

- (uint64_t)hf_blockCurrentUserFromHomeReason
{
  v2 = [a1 currentUser];
  v3 = [a1 homeAccessControlForUser:v2];

  v4 = [v3 accessNotAllowedReasonCode];
  return v4;
}

- (BOOL)hf_hasReachableResidents
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = [a1 residentDevices];
  v3 = [v2 na_filter:&__block_literal_global_157];
  v4 = HFLogForCategory(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v2 count];
    v6 = [a1 uniqueIdentifier];
    v10 = 134218754;
    v11 = v5;
    v12 = 2112;
    v13 = v3;
    v14 = 2112;
    v15 = a1;
    v16 = 2114;
    v17 = v6;
    _os_log_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_DEFAULT, "[hf_hasReachableResidents] Total residents: %lu - Reachable: %@ | home = %@ (%{public}@)", &v10, 0x2Au);
  }

  v7 = [v3 count] != 0;
  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

- (id)hf_serviceGroupsForService:()Additions
{
  v4 = a3;
  if (v4)
  {
    v5 = [a1 serviceGroups];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __48__HMHome_Additions__hf_serviceGroupsForService___block_invoke;
    v8[3] = &unk_277DF7F28;
    v9 = v4;
    v6 = [v5 na_filter:v8];
  }

  else
  {
    v6 = MEMORY[0x277CBEBF8];
  }

  return v6;
}

- (id)hf_serviceGroupWithIdentifier:()Additions
{
  v4 = a3;
  v5 = [a1 serviceGroups];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __51__HMHome_Additions__hf_serviceGroupWithIdentifier___block_invoke;
  v9[3] = &unk_277DF7F28;
  v10 = v4;
  v6 = v4;
  v7 = [v5 na_firstObjectPassingTest:v9];

  return v7;
}

- (id)hf_mediaSystemForAccessory:()Additions
{
  v4 = a3;
  v5 = [a1 mediaSystems];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __48__HMHome_Additions__hf_mediaSystemForAccessory___block_invoke;
  v9[3] = &unk_277DF7250;
  v10 = v4;
  v6 = v4;
  v7 = [v5 na_firstObjectPassingTest:v9];

  return v7;
}

- (id)hf_mediaSystemWithIdentifier:()Additions
{
  v4 = a3;
  v5 = [a1 mediaSystems];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __50__HMHome_Additions__hf_mediaSystemWithIdentifier___block_invoke;
  v9[3] = &unk_277DF7250;
  v10 = v4;
  v6 = v4;
  v7 = [v5 na_firstObjectPassingTest:v9];

  return v7;
}

- (id)hf_appleTVUsingAudioDestination:()Additions
{
  v4 = a3;
  v5 = [a1 hf_appleTVs];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __53__HMHome_Additions__hf_appleTVUsingAudioDestination___block_invoke;
  v9[3] = &unk_277DF3888;
  v10 = v4;
  v6 = v4;
  v7 = [v5 na_firstObjectPassingTest:v9];

  return v7;
}

- (id)hf_relatedHomeTheaterMediaProfileContainerFor:()Additions
{
  v4 = a3;
  if ([HFMediaHelper isHomePod:v4])
  {
    v5 = [v4 hf_backingAccessory];
    v6 = [v5 audioDestinationIdentifier];
    v7 = [a1 hf_appleTVUsingAudioDestination:v6];

    v8 = [v7 mediaProfile];

LABEL_11:
    goto LABEL_12;
  }

  if ([HFMediaHelper isHomePodMediaSystem:v4])
  {
    objc_opt_class();
    v9 = v4;
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v11 = v10;

    v12 = [v11 audioDestinationIdentifier];
    v13 = [a1 hf_appleTVUsingAudioDestination:v12];

    v8 = [v13 mediaProfile];

    goto LABEL_10;
  }

  if ([HFMediaHelper isAppleTV:v4])
  {
    v14 = [v4 hf_backingAccessory];
    v15 = [v14 audioDestinationController];
    v16 = [v15 destination];

    v17 = [a1 hf_allHomePodsOrStereoPairs];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __67__HMHome_Additions__hf_relatedHomeTheaterMediaProfileContainerFor___block_invoke;
    v20[3] = &unk_277DF60E8;
    v21 = v16;
    v11 = v16;
    v18 = [v17 na_firstObjectPassingTest:v20];

    v8 = v18;
LABEL_10:

    goto LABEL_11;
  }

  v8 = 0;
LABEL_12:

  return v8;
}

- (id)hf_appleTVsSupportingHomeTheater
{
  v1 = [a1 hf_appleTVs];
  v2 = [v1 na_filter:&__block_literal_global_164];

  return v2;
}

- (id)accessoriesSupportingSoftwareUpdate
{
  v1 = MEMORY[0x277CBEB98];
  v2 = [a1 accessories];
  v3 = [v2 na_filter:&__block_literal_global_166_1];
  v4 = [v1 setWithArray:v3];

  return v4;
}

- (uint64_t)hf_hasAccessoriesSupportingSoftwareUpdate
{
  v1 = [a1 accessories];
  v2 = [v1 na_any:&__block_literal_global_168];

  return v2;
}

- (uint64_t)hf_hasFirstPartyAccessoriesSupportingSoftwareUpdate
{
  v1 = [a1 accessories];
  v2 = [v1 na_any:&__block_literal_global_170];

  return v2;
}

- (uint64_t)hf_hasThirdPartyAccessoriesSupportingSoftwareUpdate
{
  v1 = [a1 accessories];
  v2 = [v1 na_any:&__block_literal_global_172_2];

  return v2;
}

- (uint64_t)hf_shouldShowSoftwareUpdateSettings
{
  if ([a1 hf_canUpdateToHH2] & 1) != 0 || (objc_msgSend(a1, "hf_hasFirstPartyAccessoriesSupportingSoftwareUpdate"))
  {
    return 1;
  }

  result = [a1 hf_hasThirdPartyAccessoriesSupportingSoftwareUpdate];
  if (result)
  {

    return [a1 hf_hasEnabledResidentSupportingThirdPartySoftwareUpdate];
  }

  return result;
}

- (uint64_t)hf_isAutomaticThirdPartyAccessorySoftwareUpdateEnabled
{
  result = [a1 hf_hasEnabledResidentSupportingThirdPartySoftwareUpdate];
  if (result)
  {

    return [a1 isAutomaticThirdPartyAccessorySoftwareUpdateEnabled];
  }

  return result;
}

- (id)hf_accessoriesWithValidSoftwareOrFirmwareUpdates
{
  v1 = MEMORY[0x277CBEB98];
  v2 = [a1 accessories];
  v3 = [v1 setWithArray:v2];
  v4 = [v3 na_filter:&__block_literal_global_174_1];

  return v4;
}

- (id)hf_accessoriesSupportingNaturalLighting
{
  v1 = [a1 hf_allLightProfilesSupportingNaturalLighting];
  v2 = [v1 na_flatMap:&__block_literal_global_177_0];

  return v2;
}

- (id)hf_homeKitObjectsSupportingNaturalLighting
{
  v1 = [a1 hf_allLightProfilesSupportingNaturalLighting];
  v2 = MEMORY[0x277CBEB98];
  v3 = [v1 na_flatMap:&__block_literal_global_182];
  v4 = [v2 setWithArray:v3];

  v5 = [v4 na_map:&__block_literal_global_185];

  return v5;
}

- (uint64_t)hf_containsActionableAccessories
{
  v2 = [a1 hf_allServices];
  v3 = [v2 na_any:&__block_literal_global_187];

  if (v3)
  {
    return 1;
  }

  return [a1 hf_hasMediaAccessories];
}

- (id)hf_serviceWithIdentifier:()Additions
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v5 = [a1 accessories];
  v21 = [v5 countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v21)
  {
    v6 = *v27;
    v20 = *v27;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v27 != v6)
        {
          objc_enumerationMutation(v5);
        }

        v8 = *(*(&v26 + 1) + 8 * i);
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v9 = [v8 services];
        v10 = [v9 countByEnumeratingWithState:&v22 objects:v30 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v23;
          while (2)
          {
            for (j = 0; j != v11; ++j)
            {
              if (*v23 != v12)
              {
                objc_enumerationMutation(v9);
              }

              v14 = *(*(&v22 + 1) + 8 * j);
              v15 = [v14 uniqueIdentifier];
              v16 = [v15 isEqual:v4];

              if (v16)
              {
                v17 = v14;

                goto LABEL_19;
              }
            }

            v11 = [v9 countByEnumeratingWithState:&v22 objects:v30 count:16];
            if (v11)
            {
              continue;
            }

            break;
          }
        }

        v6 = v20;
      }

      v17 = 0;
      v21 = [v5 countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v21);
  }

  else
  {
    v17 = 0;
  }

LABEL_19:

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

- (id)hf_allServices
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [a1 accessories];
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v11 + 1) + 8 * i) services];
        [v2 addObjectsFromArray:v8];
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  v9 = *MEMORY[0x277D85DE8];

  return v2;
}

- (uint64_t)hf_hasVisibleServies
{
  v1 = [a1 accessories];
  v2 = [v1 na_any:&__block_literal_global_191];

  return v2;
}

- (id)hf_allVisibleServices
{
  v1 = MEMORY[0x277CBEB98];
  v2 = [a1 accessories];
  v3 = [v1 setWithArray:v2];
  v4 = [v3 na_flatMap:&__block_literal_global_194];

  return v4;
}

- (id)hf_allAccessoryProfiles
{
  v1 = [a1 accessories];
  v2 = [v1 na_flatMap:&__block_literal_global_197];

  return v2;
}

- (id)hf_accessoryProfilesWithClass:()Additions
{
  v4 = [a1 hf_allAccessoryProfiles];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __51__HMHome_Additions__hf_accessoryProfilesWithClass___block_invoke;
  v7[3] = &__block_descriptor_40_e28_B16__0__HMAccessoryProfile_8lu32l8;
  v7[4] = a3;
  v5 = [v4 na_filter:v7];

  return v5;
}

- (id)hf_allNetworkConfigurationProfiles
{
  v1 = [a1 hf_allAccessoryProfiles];
  v2 = [v1 na_map:&__block_literal_global_201_0];

  return v2;
}

- (id)hf_allLightProfiles
{
  v1 = [a1 accessories];
  v2 = [v1 na_flatMap:&__block_literal_global_204];

  return v2;
}

- (id)hf_allLightProfilesSupportingNaturalLighting
{
  if ([a1 hf_enabledResidentsSupportsNaturalLight])
  {
    v2 = [a1 hf_allLightProfiles];
    v3 = [v2 na_filter:&__block_literal_global_207];
  }

  else
  {
    v3 = MEMORY[0x277CBEBF8];
  }

  return v3;
}

- (id)hf_cameraProfileWithIdentifier:()Additions
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = [a1 accessories];
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v17 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = [*(*(&v16 + 1) + 8 * v9) cameraProfiles];
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __52__HMHome_Additions__hf_cameraProfileWithIdentifier___block_invoke;
      v14[3] = &unk_277DF8038;
      v15 = v4;
      v11 = [v10 na_firstObjectPassingTest:v14];

      if (v11)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v11 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)hf_cameraProfileForSignificantEvent:()Additions
{
  v4 = a3;
  v5 = [a1 hf_allCameraProfiles];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __57__HMHome_Additions__hf_cameraProfileForSignificantEvent___block_invoke;
  v9[3] = &unk_277DF8038;
  v10 = v4;
  v6 = v4;
  v7 = [v5 na_firstObjectPassingTest:v9];

  return v7;
}

- (id)hf_allCameraProfiles
{
  v1 = [a1 accessories];
  v2 = [v1 na_flatMap:&__block_literal_global_210_0];

  return v2;
}

- (id)hf_allCameraProfilesSupportingRecording
{
  v1 = [a1 hf_allCameraProfiles];
  v2 = [v1 na_filter:&__block_literal_global_212];

  return v2;
}

- (id)hf_allCameraProfilesWithDoorbellService
{
  v1 = [a1 hf_allCameraProfiles];
  v2 = [v1 na_filter:&__block_literal_global_214];

  return v2;
}

- (id)hf_allCameraProfilesWithSmartMotionRecordingEnabled
{
  v2 = +[HFCameraSignificantEventConfiguration defaultSmartMotionConfiguration];
  v3 = [v2 eventTypes];

  v4 = [a1 hf_allCameraProfilesSupportingRecording];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __72__HMHome_Additions__hf_allCameraProfilesWithSmartMotionRecordingEnabled__block_invoke;
  v7[3] = &__block_descriptor_40_e25_B16__0__HMCameraProfile_8l;
  v7[4] = v3;
  v5 = [v4 na_filter:v7];

  return v5;
}

- (id)hf_unitaryCameraProfile
{
  v1 = [a1 hf_allCameraProfiles];
  if ([v1 count] == 1)
  {
    v2 = [v1 firstObject];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (BOOL)hf_hasSecureRecordingCameras
{
  v1 = [a1 accessories];
  v2 = [v1 na_filter:&__block_literal_global_218];

  v3 = [v2 na_filter:&__block_literal_global_220_0];
  v4 = [v3 count] != 0;

  return v4;
}

- (id)hf_allMediaProfileContainers
{
  v2 = [a1 accessories];
  v3 = [v2 na_map:&__block_literal_global_224_0];
  v4 = [v3 na_filter:&__block_literal_global_227_1];

  v5 = [a1 mediaSystems];
  v6 = [v4 arrayByAddingObjectsFromArray:v5];

  return v6;
}

- (id)hf_allUniqueMediaProfileContainersExcludingMediaGroups
{
  v1 = [a1 hf_allMediaProfileContainers];
  v2 = [v1 na_filter:&__block_literal_global_229];
  v3 = [v2 copy];

  return v3;
}

- (id)hf_allUniqueMediaProfileContainers
{
  v2 = [a1 accessories];
  v3 = [v2 na_map:&__block_literal_global_231_0];

  v4 = [a1 mediaSystems];
  v5 = [v3 arrayByAddingObjectsFromArray:v4];

  v6 = [v5 na_filter:&__block_literal_global_233];
  v7 = [v6 mutableCopy];

  return v7;
}

- (id)hf_allHomePodsOrStereoPairs
{
  v2 = [a1 accessories];
  v3 = [v2 na_map:&__block_literal_global_235_0];

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __48__HMHome_Additions__hf_allHomePodsOrStereoPairs__block_invoke_2;
  v8[3] = &unk_277DF60E8;
  v8[4] = a1;
  v4 = [v3 na_filter:v8];
  v5 = [a1 mediaSystems];
  v6 = [v4 arrayByAddingObjectsFromArray:v5];

  return v6;
}

- (id)hf_allHomePodProfileContainers
{
  v1 = [a1 accessories];
  v2 = [v1 na_map:&__block_literal_global_238];

  v3 = [v2 na_filter:&__block_literal_global_240_0];

  return v3;
}

- (id)hf_allHomePodsOrStereoPairsThatWillChime
{
  v1 = [a1 hf_allHomePodsOrStereoPairs];
  v2 = [v1 na_filter:&__block_literal_global_242];

  return v2;
}

- (uint64_t)hf_isFaceRecognitionAvailable
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = [a1 residentDevices];
  v3 = [v2 count];

  if (!v3)
  {
    v9 = HFLogForCategory(0x13uLL);
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_12;
    }

    v12 = 138412290;
    v13 = a1;
    v10 = "Home %@ does not have any resident device, which is required for Face Recognition feature";
LABEL_11:
    _os_log_impl(&dword_20D9BF000, v9, OS_LOG_TYPE_DEFAULT, v10, &v12, 0xCu);
    goto LABEL_12;
  }

  v4 = [a1 residentDevices];
  v5 = [v4 na_any:&__block_literal_global_244];

  if ((v5 & 1) == 0)
  {
    v9 = HFLogForCategory(0x13uLL);
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_12;
    }

    v12 = 138412290;
    v13 = a1;
    v10 = "No resident devices in home %@ support face classification";
    goto LABEL_11;
  }

  v6 = [a1 hf_allCameraProfilesSupportingRecording];
  v7 = [v6 count];

  if (!v7)
  {
    v9 = HFLogForCategory(0x13uLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = a1;
      v10 = "No cameras in home %@ support recording";
      goto LABEL_11;
    }

LABEL_12:

    result = 0;
    goto LABEL_13;
  }

  result = 1;
LABEL_13:
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)hf_setFaceRecognitionEnabled:()Additions
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = HFLogForCategory(0x13uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v20 = a1;
    v21 = 1024;
    v22 = a3;
    _os_log_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_DEFAULT, "%@: Setting face recognition enabled(%d)", buf, 0x12u);
  }

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __50__HMHome_Additions__hf_setFaceRecognitionEnabled___block_invoke;
  v16[3] = &unk_277DF4EF0;
  v17 = a3;
  v16[4] = a1;
  v6 = [MEMORY[0x277D2C900] futureWithBlock:v16];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __50__HMHome_Additions__hf_setFaceRecognitionEnabled___block_invoke_2_249;
  v14[3] = &unk_277DF4EF0;
  v14[4] = a1;
  v15 = a3;
  v7 = [MEMORY[0x277D2C900] futureWithBlock:v14];
  v8 = MEMORY[0x277D2C900];
  v18[0] = v6;
  v18[1] = v7;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:2];
  v10 = [MEMORY[0x277D2C938] mainThreadScheduler];
  v11 = [v8 combineAllFutures:v9 ignoringErrors:1 scheduler:v10];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)hf_allPersonManagers
{
  v2 = [MEMORY[0x277CBEB18] array];
  v3 = [a1 personManager];
  [v2 na_safeAddObject:v3];

  v4 = [a1 hf_allPhotosPersonManagers];
  [v2 na_safeAddObjectsFromArray:v4];

  return v2;
}

- (id)hf_allPhotosPersonManagers
{
  v1 = [a1 hf_allUsersIncludingCurrentUser];
  v2 = [v1 na_map:&__block_literal_global_259];

  return v2;
}

- (id)hf_personManagerWithIdentifier:()Additions
{
  v4 = a3;
  v5 = [a1 hf_allPersonManagers];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __52__HMHome_Additions__hf_personManagerWithIdentifier___block_invoke;
  v9[3] = &unk_277DF8138;
  v10 = v4;
  v6 = v4;
  v7 = [v5 na_firstObjectPassingTest:v9];

  return v7;
}

- (id)hf_allPersons
{
  v1 = [a1 hf_allPersonManagers];
  v2 = [v1 na_map:&__block_literal_global_263];

  v3 = MEMORY[0x277D2C900];
  v4 = [MEMORY[0x277D2C938] mainThreadScheduler];
  v5 = [v3 combineAllFutures:v2 ignoringErrors:1 scheduler:v4];
  v6 = [v5 flatMap:&__block_literal_global_267];

  return v6;
}

- (id)hf_personWithIdentifier:()Additions
{
  v4 = a3;
  v5 = [a1 hf_allPersonManagers];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __45__HMHome_Additions__hf_personWithIdentifier___block_invoke;
  v13[3] = &unk_277DF8180;
  v14 = v4;
  v6 = v4;
  v7 = [v5 na_map:v13];

  v8 = MEMORY[0x277D2C900];
  v9 = [MEMORY[0x277D2C938] mainThreadScheduler];
  v10 = [v8 combineAllFutures:v7 ignoringErrors:1 scheduler:v9];
  v11 = [v10 flatMap:&__block_literal_global_272];

  return v11;
}

- (id)hf_setSharePhotosLibraryEnabled:()Additions forUser:
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a4;
  if ([v6 hf_isImportingPhotosLibraryEnabledForFaceRecognition])
  {
    v7 = a1;
    v8 = v6;
    v9 = 1;
    v10 = a3;
  }

  else
  {
    v11 = HFLogForCategory(0x13uLL);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138412546;
      v16 = a1;
      v17 = 2080;
      v18 = "[HMHome(Additions) hf_setSharePhotosLibraryEnabled:forUser:]";
      _os_log_impl(&dword_20D9BF000, v11, OS_LOG_TYPE_DEFAULT, "%@ %s: importing photos library is disabled, so disabling sharing of photos library.", &v15, 0x16u);
    }

    v7 = a1;
    v8 = v6;
    v9 = 0;
    v10 = 0;
  }

  v12 = [v7 hf_setPhotosLibrarySettingsForUser:v8 importPhotosLibraryEnabled:v9 shareFacesEnabled:v10];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)hf_setPhotosLibrarySettingsForUser:()Additions importPhotosLibraryEnabled:shareFacesEnabled:
{
  v36 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = HFLogForCategory(0x13uLL);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413314;
    v27 = a1;
    v28 = 2080;
    v29 = "[HMHome(Additions) hf_setPhotosLibrarySettingsForUser:importPhotosLibraryEnabled:shareFacesEnabled:]";
    v30 = 2112;
    v31 = v8;
    v32 = 1024;
    v33 = a4;
    v34 = 1024;
    v35 = a5;
    _os_log_impl(&dword_20D9BF000, v9, OS_LOG_TYPE_DEFAULT, "%@ (%s): Setting Use Photos Library for user %@ enabled=%d and sharing=%d", buf, 0x2Cu);
  }

  v10 = [a1 hf_allUsersIncludingCurrentUser];
  v11 = [v10 containsObject:v8];

  if ((v11 & 1) == 0)
  {
    v12 = MEMORY[0x277CCA9B8];
    v19 = v8;
    v20 = a1;
    v13 = @"%@ is not a user of home %@";
    goto LABEL_8;
  }

  if (a5 && (a4 & 1) == 0)
  {
    v12 = MEMORY[0x277CCA9B8];
    v13 = @"Sharing photos library is only possible when using photos library for face recognition is enabled.";
LABEL_8:
    v14 = [v12 hf_errorWithCode:33 descriptionFormat:v13, v19, v20];
    v15 = [MEMORY[0x277D2C900] futureWithError:v14];
    goto LABEL_10;
  }

  v16 = MEMORY[0x277D2C900];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __101__HMHome_Additions__hf_setPhotosLibrarySettingsForUser_importPhotosLibraryEnabled_shareFacesEnabled___block_invoke;
  v21[3] = &unk_277DF81F0;
  v24 = a4;
  v25 = a5;
  v22 = v8;
  v23 = a1;
  v15 = [v16 futureWithBlock:v21];
  v14 = v22;
LABEL_10:

  v17 = *MEMORY[0x277D85DE8];

  return v15;
}

- (id)hf_resetAllNetworkConfigurationProfiles
{
  v1 = MEMORY[0x277CD1750];
  v2 = MEMORY[0x277CBEB98];
  v3 = [a1 accessoryProtectionGroups];
  v4 = [v2 setWithArray:v3];
  v5 = [v1 hf_updateProtectionMode:0 forGroups:v4];

  return v5;
}

- (id)hf_accessoriesRequiringManualWiFiReconfiguration
{
  v1 = [a1 accessories];
  v2 = [v1 na_filter:&__block_literal_global_287];

  return v2;
}

- (id)hf_updateAutomaticSoftwareUpdateEnabled:()Additions
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __61__HMHome_Additions__hf_updateAutomaticSoftwareUpdateEnabled___block_invoke;
  v5[3] = &unk_277DF8238;
  v5[4] = a1;
  v6 = a3;
  v3 = [MEMORY[0x277D2C900] futureWithErrorOnlyHandlerAdapterBlock:v5];

  return v3;
}

- (id)hf_updateAutomaticThirdPartyAccessorySoftwareUpdateEnabled:()Additions
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __80__HMHome_Additions__hf_updateAutomaticThirdPartyAccessorySoftwareUpdateEnabled___block_invoke;
  v5[3] = &unk_277DF8238;
  v5[4] = a1;
  v6 = a3;
  v3 = [MEMORY[0x277D2C900] futureWithErrorOnlyHandlerAdapterBlock:v5];

  return v3;
}

- (id)hf_mediaAccessories
{
  v1 = [a1 accessories];
  v2 = [v1 na_filter:&__block_literal_global_293];

  return v2;
}

- (id)hf_appleTVs
{
  v1 = [a1 accessories];
  v2 = [v1 na_filter:&__block_literal_global_295];

  return v2;
}

- (id)hf_homePods
{
  v1 = [a1 accessories];
  v2 = [v1 na_filter:&__block_literal_global_297];

  return v2;
}

- (id)hf_siriEndpointCapableAccessoriesToOnboard
{
  v1 = [a1 accessories];
  v2 = [v1 na_filter:&__block_literal_global_299];

  return v2;
}

- (id)hf_allResidentAccessories
{
  v1 = [a1 accessories];
  v2 = [v1 na_filter:&__block_literal_global_301];

  return v2;
}

- (id)hf_personalRequestAccessories
{
  v1 = [a1 accessories];
  v2 = [v1 na_filter:&__block_literal_global_303];

  return v2;
}

- (id)hf_tvViewingProfilesAccessories
{
  v1 = [a1 accessories];
  v2 = [v1 na_filter:&__block_literal_global_306];

  return v2;
}

- (id)hf_siriEndPointAccessories
{
  v1 = [a1 accessories];
  v2 = [v1 na_filter:&__block_literal_global_309];

  return v2;
}

- (id)hf_allSiriEndPointProfileContainers
{
  v1 = [a1 accessories];
  v2 = [v1 na_map:&__block_literal_global_311_0];

  v3 = [v2 na_filter:&__block_literal_global_313_0];

  return v3;
}

- (id)hf_allSiriEndPointProfileContainersThatWillChime
{
  v1 = [a1 hf_allSiriEndPointProfileContainers];
  v2 = [v1 na_filter:&__block_literal_global_315];

  return v2;
}

- (HFReorderableHomeKitItemList)hf_reorderableRoomsList
{
  v1 = [[HFReorderableHomeKitItemList alloc] initWithApplicationDataContainer:a1 category:@"homeRooms"];

  return v1;
}

- (HFReorderableHomeKitItemList)hf_reorderableServicesList
{
  v1 = [[HFReorderableHomeKitItemList alloc] initWithApplicationDataContainer:a1 category:@"homeServices"];

  return v1;
}

- (HFReorderableHomeKitItemList)hf_reorderableActionSetsList
{
  v1 = [[HFReorderableHomeKitItemList alloc] initWithApplicationDataContainer:a1 category:@"homeActionSets"];

  return v1;
}

- (HFReorderableHomeKitItemList)hf_reorderableCamerasList
{
  v1 = [[HFReorderableHomeKitItemList alloc] initWithApplicationDataContainer:a1 category:@"homeCameras"];

  return v1;
}

- (HFAccessoryCategoryReorderableItemList)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
{
  v1 = [[HFAccessoryCategoryReorderableItemList alloc] initWithApplicationDataContainer:a1 category:@"homeAccessoryCategories"];

  return v1;
}

- (id)hf_accessoryCategoriesReorderableItemComparator
{
  objc_initWeak(&location, val);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __68__HMHome_Additions__hf_accessoryCategoriesReorderableItemComparator__block_invoke;
  v3[3] = &unk_277DF8260;
  objc_copyWeak(&v4, &location);
  v1 = _Block_copy(v3);
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);

  return v1;
}

- (HFHomeDashboardReorderableItemList)hf_reorderableDashboardSectionList
{
  v1 = [[HFHomeDashboardReorderableItemList alloc] initWithApplicationDataContainer:a1 category:@"dashboardSections"];

  return v1;
}

- (id)hf_dashboardSectionReorderableUUIDStringComparator
{
  objc_initWeak(&location, val);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __71__HMHome_Additions__hf_dashboardSectionReorderableUUIDStringComparator__block_invoke;
  v3[3] = &unk_277DF8288;
  objc_copyWeak(&v4, &location);
  v1 = _Block_copy(v3);
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);

  return v1;
}

- (id)hf_dashboardSectionReorderableItemComparator
{
  objc_initWeak(&location, val);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __65__HMHome_Additions__hf_dashboardSectionReorderableItemComparator__block_invoke;
  v3[3] = &unk_277DF8260;
  objc_copyWeak(&v4, &location);
  v1 = _Block_copy(v3);
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);

  return v1;
}

- (id)hf_dashboardSectionReorderableHomeKitObjectComparator
{
  objc_initWeak(&location, val);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __74__HMHome_Additions__hf_dashboardSectionReorderableHomeKitObjectComparator__block_invoke;
  v3[3] = &unk_277DF82B0;
  objc_copyWeak(&v4, &location);
  v1 = _Block_copy(v3);
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);

  return v1;
}

- (id)hf_notesApplicationData
{
  v1 = [a1 applicationData];
  v2 = [v1 objectForKey:@"UserDetails"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 objectForKeyedSubscript:@"Notes"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_5;
    }
  }

  v3 = 0;
LABEL_5:

  return v3;
}

- (id)hf_setNotesApplicationData:()Additions
{
  v4 = a3;
  v5 = [a1 applicationData];
  v6 = [v5 objectForKey:@"UserDetails"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v6 mutableCopy];
  }

  else
  {
    v7 = [MEMORY[0x277CBEB38] dictionary];
  }

  v8 = v7;
  [v7 setObject:v4 forKeyedSubscript:@"Notes"];

  [v5 setObject:v8 forKey:@"UserDetails"];
  v9 = MEMORY[0x277D2C900];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __48__HMHome_Additions__hf_setNotesApplicationData___block_invoke;
  v13[3] = &unk_277DF4150;
  v13[4] = a1;
  v14 = v5;
  v10 = v5;
  v11 = [v9 futureWithErrorOnlyHandlerAdapterBlock:v13];

  return v11;
}

- (uint64_t)hf_homeHasMigratedIntoHomeApp
{
  v1 = [a1 applicationData];
  v2 = [v1 objectForKey:@"hasOnboarded"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 BOOLValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)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:()Additions
{
  v2 = [MEMORY[0x277CCABB0] numberWithBool:?];
  v3 = [a1 applicationData];
  [v3 setObject:v2 forKeyedSubscript:@"hasOnboarded"];

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __59__HMHome_Additions__hf_setHomeHasOnboardedApplicationData___block_invoke;
  v6[3] = &unk_277DF2C68;
  v6[4] = a1;
  v4 = [MEMORY[0x277D2C900] futureWithErrorOnlyHandlerAdapterBlock:v6];

  return v4;
}

- (uint64_t)hf_homeHasMigratedServicesToAccessories
{
  v1 = [a1 applicationData];
  v2 = [v1 objectForKey:@"hasMigratedAccessories"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 BOOLValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)hf_setHomeHasMigratedServicesToAccessories:()Additions
{
  v2 = [MEMORY[0x277CCABB0] numberWithBool:?];
  v3 = [a1 applicationData];
  [v3 setObject:v2 forKeyedSubscript:@"hasMigratedAccessories"];

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __64__HMHome_Additions__hf_setHomeHasMigratedServicesToAccessories___block_invoke;
  v6[3] = &unk_277DF2C68;
  v6[4] = a1;
  v4 = [MEMORY[0x277D2C900] futureWithErrorOnlyHandlerAdapterBlock:v6];

  return v4;
}

- (uint64_t)hf_homeHasMigratedForRedesign
{
  v1 = [a1 applicationData];
  v2 = [v1 objectForKey:@"hasMigratedForRedesign"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 BOOLValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)hf_setHomeHasMigratedForRedesign:()Additions
{
  v2 = [MEMORY[0x277CCABB0] numberWithBool:?];
  v3 = [a1 applicationData];
  [v3 setObject:v2 forKeyedSubscript:@"hasMigratedForRedesign"];

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __54__HMHome_Additions__hf_setHomeHasMigratedForRedesign___block_invoke;
  v6[3] = &unk_277DF2C68;
  v6[4] = a1;
  v4 = [MEMORY[0x277D2C900] futureWithErrorOnlyHandlerAdapterBlock:v6];

  return v4;
}

- (uint64_t)hf_hasAcceptedTermsAndConditionsForHomePodVersion:()Additions
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (+[HFUtilities isInternalInstall])
  {
    objc_initWeak(location, a1);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __71__HMHome_Additions__hf_hasAcceptedTermsAndConditionsForHomePodVersion___block_invoke;
    block[3] = &unk_277DF4460;
    objc_copyWeak(&v12, location);
    if (hf_hasAcceptedTermsAndConditionsForHomePodVersion__onceToken != -1)
    {
      dispatch_once(&hf_hasAcceptedTermsAndConditionsForHomePodVersion__onceToken, block);
    }

    objc_destroyWeak(&v12);
    objc_destroyWeak(location);
  }

  v5 = [a1 applicationData];
  v6 = [v5 objectForKeyedSubscript:@"HFApplicationHomePodTermsAndConditionsAcceptedKey"];

  v7 = HFLogForCategory(0x44uLL);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *location = 138412546;
    *&location[4] = v6;
    v14 = 2112;
    v15 = v4;
    _os_log_impl(&dword_20D9BF000, v7, OS_LOG_TYPE_DEFAULT, "[START UPDATE] Comparing previously accepted license agremenet versions to current version: %@ %@", location, 0x16u);
  }

  v8 = [v6 containsObject:v4];
  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

- (id)hf_markTermsAndConditionsAsAcceptedForHomePodWithLicenseAgreementVersion:()Additions
{
  v5 = a3;
  if (!v5)
  {
    v15 = [MEMORY[0x277CCA890] currentHandler];
    [v15 handleFailureInMethod:a2 object:a1 file:@"HMHome+HFAdditions.m" lineNumber:2090 description:{@"Invalid parameter not satisfying: %@", @"licenseAgreementVersion"}];
  }

  v6 = [a1 applicationData];
  v7 = [v6 objectForKeyedSubscript:@"HFApplicationHomePodTermsAndConditionsAcceptedKey"];
  v8 = v7;
  v9 = MEMORY[0x277CBEBF8];
  if (v7)
  {
    v9 = v7;
  }

  v10 = v9;

  if ([v10 containsObject:v5])
  {
    v11 = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  else
  {
    v12 = [v10 arrayByAddingObject:v5];

    v13 = [a1 applicationData];
    [v13 setObject:v12 forKey:@"HFApplicationHomePodTermsAndConditionsAcceptedKey"];

    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __94__HMHome_Additions__hf_markTermsAndConditionsAsAcceptedForHomePodWithLicenseAgreementVersion___block_invoke;
    v16[3] = &unk_277DF2C68;
    v16[4] = a1;
    v11 = [MEMORY[0x277D2C900] futureWithErrorOnlyHandlerAdapterBlock:v16];
    v10 = v12;
  }

  return v11;
}

- (uint64_t)hf_supportsPerUserRemoteAccess
{
  v1 = [a1 residentDevices];
  v2 = [v1 na_any:&__block_literal_global_356_0];

  return v2;
}

- (uint64_t)hf_supportsRemoteAccessRestrictions
{
  v1 = [a1 residentDevices];
  v2 = [v1 na_any:&__block_literal_global_358];

  return v2;
}

- (uint64_t)hf_enabledResidentsSupportsMediaActions
{
  v1 = [a1 hf_enabledResidentDevices];
  v2 = [v1 na_any:&__block_literal_global_360];

  return v2;
}

- (uint64_t)hf_enabledResidentsSupportsNaturalLight
{
  v1 = [a1 hf_enabledResidentDevices];
  v2 = [v1 na_any:&__block_literal_global_362];

  return v2;
}

- (uint64_t)hf_hasEnabledResidentSupportingThirdPartySoftwareUpdate
{
  v1 = [a1 residentDevices];
  v2 = [v1 na_any:&__block_literal_global_364];

  return v2;
}

- (id)hf_allUsersIncludingCurrentUser
{
  v2 = [MEMORY[0x277CBEB18] array];
  v3 = [a1 users];
  [v2 na_safeAddObjectsFromArray:v3];

  v4 = [a1 currentUser];
  [v2 na_safeAddObject:v4];

  return v2;
}

- (id)hf_allNonAdminUsers
{
  v2 = [a1 users];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __40__HMHome_Additions__hf_allNonAdminUsers__block_invoke;
  v5[3] = &unk_277DF55C0;
  v5[4] = a1;
  v3 = [v2 na_filter:v5];

  return v3;
}

- (id)hf_allNonOwnerUsers
{
  v2 = [a1 users];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __40__HMHome_Additions__hf_allNonOwnerUsers__block_invoke;
  v5[3] = &unk_277DF55C0;
  v5[4] = a1;
  v3 = [v2 na_filter:v5];

  return v3;
}

- (uint64_t)hf_hasAtLeastOneRestrictedGuest
{
  v2 = [a1 users];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __52__HMHome_Additions__hf_hasAtLeastOneRestrictedGuest__block_invoke;
  v5[3] = &unk_277DF55C0;
  v5[4] = a1;
  v3 = [v2 na_any:v5];

  return v3;
}

- (BOOL)hf_isPresenceAuthorizedForUser:()Additions
{
  v4 = a3;
  v5 = [a1 currentUser];
  v6 = [v5 isEqual:v4];

  if ((v6 & 1) != 0 || (v7 = HFPreferencesBooleanValueForKey(@"HFForceUserPresenceAuthorized"), v7 == 2))
  {
    v8 = 1;
  }

  else if (v7 == 1)
  {
    v8 = 0;
  }

  else
  {
    v10 = [a1 homeAccessControlForUser:v4];
    v8 = [v10 presenceAuthorizationStatus] == 1;
  }

  return v8;
}

- (uint64_t)hf_isMediaAccessoryProfileValid:()Additions
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = MEMORY[0x277CBEB98];
  v7 = [a1 mediaSystems];
  v8 = [v6 setWithArray:v7];
  [v5 unionSet:v8];

  v9 = MEMORY[0x277CBEB98];
  v10 = [a1 hf_allMediaProfileContainers];
  v11 = [v9 setWithArray:v10];
  [v5 unionSet:v11];

  v12 = [v5 containsObject:v4];
  return v12;
}

- (uint64_t)hf_supportsSharedEventAutomation
{
  v2 = HFPreferencesBooleanValueForKey(@"HFForcedResidentSupportsSharedEventTriggerActivationState");
  if (v2 == 2)
  {
    return 1;
  }

  if (v2 == 1)
  {
    return 0;
  }

  v4 = [a1 residentDevices];
  v5 = [v4 na_any:&__block_literal_global_367];

  return v5;
}

- (uint64_t)hf_hasMediaAccessories
{
  v1 = [a1 accessories];
  v2 = [v1 na_any:&__block_literal_global_369];

  return v2;
}

- (uint64_t)hf_hasHomePods
{
  v1 = [a1 accessories];
  v2 = [v1 na_any:&__block_literal_global_371];

  return v2;
}

- (uint64_t)hf_numberOfHomePods
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v1 = [a1 accessories];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __40__HMHome_Additions__hf_numberOfHomePods__block_invoke;
  v4[3] = &unk_277DF82D8;
  v4[4] = &v5;
  [v1 na_each:v4];

  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (uint64_t)hf_allHomePodsSupportRemoteProfileInstallation
{
  v1 = [a1 hf_homePods];
  v2 = [v1 na_all:&__block_literal_global_374_0];

  return v2;
}

- (uint64_t)hf_hasAppleTVs
{
  v1 = [a1 accessories];
  v2 = [v1 na_any:&__block_literal_global_376];

  return v2;
}

- (uint64_t)hf_hasRMVCapableAppleTV
{
  v1 = [a1 accessories];
  v2 = [v1 na_any:&__block_literal_global_378];

  return v2;
}

- (uint64_t)hf_hasCameraRecordingResident
{
  v1 = [a1 residentDevices];
  v2 = [v1 na_any:&__block_literal_global_380];

  return v2;
}

- (uint64_t)hf_supportsReachabilityNotifications
{
  v1 = [a1 residentDevices];
  v2 = [v1 na_any:&__block_literal_global_382];

  return v2;
}

- (void)hf_startReprovisioningAccessory:()Additions
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = HFLogForCategory(0x27uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v11 = v4;
    _os_log_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_DEFAULT, "Requesting reprovisioning for accessory: %@", buf, 0xCu);
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __53__HMHome_Additions__hf_startReprovisioningAccessory___block_invoke;
  v8[3] = &unk_277DF2D08;
  v9 = v4;
  v6 = v4;
  [a1 reprovisionAccessory:v6 completionHandler:v8];

  v7 = *MEMORY[0x277D85DE8];
}

- (uint64_t)hf_shouldShowAnnounceButtonForThisHome
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = [a1 currentUser];
  v3 = [a1 homeAccessControlForUser:v2];

  v4 = [v3 isAnnounceAccessAllowed];
  v5 = [a1 hf_atleastOneMediaAccessorySupportsAndHasAnnounceEnabled];
  v6 = HFLogForCategory(7uLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v10[0] = 67109634;
    v10[1] = v4;
    v11 = 1024;
    v12 = v5;
    v13 = 2112;
    v14 = a1;
    _os_log_impl(&dword_20D9BF000, v6, OS_LOG_TYPE_DEFAULT, "isAnnounceAccessAllowedForThisUser = %d, atleastOneHomePodSupportsAnnounce = [%d], for home = %@", v10, 0x18u);
  }

  if ((v4 & v5) == 1)
  {
    v7 = [a1 hf_shouldBlockCurrentUserFromHome] ^ 1;
  }

  else
  {
    v7 = 0;
  }

  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

- (uint64_t)hf_shouldShowAnnounceFeatureForThisHome
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = [a1 hf_atleastOneHomePodSupportsAnnounce];
  v3 = HFLogForCategory(7uLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109378;
    v6[1] = v2;
    v7 = 2112;
    v8 = a1;
    _os_log_impl(&dword_20D9BF000, v3, OS_LOG_TYPE_DEFAULT, "atleastOneHomePodSupportsAnnounce = [%d], for home = %@", v6, 0x12u);
  }

  v4 = *MEMORY[0x277D85DE8];
  return v2;
}

- (uint64_t)hf_atleastOneHomePodSupportsAnnounce
{
  v1 = [a1 accessories];
  v2 = [v1 na_any:&__block_literal_global_384];

  return v2;
}

- (uint64_t)hf_atleastOneMediaAccessorySupportsAndHasAnnounceEnabled
{
  v1 = [a1 accessories];
  v2 = [v1 na_any:&__block_literal_global_386_0];

  return v2;
}

- (uint64_t)hf_hasAtLeastOneReachableHomeMediaAccessory
{
  v1 = [a1 accessories];
  v2 = [v1 na_any:&__block_literal_global_388];

  return v2;
}

- (uint64_t)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
{
  v1 = [a1 hf_homePods];
  v2 = [v1 na_any:&__block_literal_global_390];

  return v2;
}

- (id)hf_audioAnalysisSupportedAccessories
{
  v1 = [a1 accessories];
  v2 = [v1 na_filter:&__block_literal_global_392];

  return v2;
}

- (BOOL)hf_hasAtleastOneAudioAnalysisSupportedAccessory
{
  v1 = [a1 hf_audioAnalysisSupportedAccessories];
  v2 = [v1 count] != 0;

  return v2;
}

- (BOOL)hf_hasAtleastOneSafetyAndSecuritySupportedAccessory
{
  v1 = [a1 hf_safetyAndSecuritySupportedAccessories];
  v2 = [v1 count] != 0;

  return v2;
}

- (uint64_t)hf_canEnableAudioAnalysisAfterHH2Upgrade
{
  v1 = [a1 hf_homePods];
  v2 = [v1 na_any:&__block_literal_global_394];

  v3 = +[HFHomeKitDispatcher sharedDispatcher];
  v4 = [v3 homeManager];
  v5 = [v4 homeSafetySecurityEnabled];

  return v5 & v2;
}

- (uint64_t)hf_shouldShowActivityLogSettingForTargetKind:()Additions
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = [a1 residentDevices];
  v6 = [v5 na_any:&__block_literal_global_396];

  if (!a3)
  {
    v9 = +[HFHomeKitDispatcher sharedDispatcher];
    v8 = [v9 securityActivityLogCoordinatorForHome:a1];

    if (!v6 || ![a1 hf_hasEnabledResident])
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (a3 == 1)
  {
    v7 = +[HFHomeKitDispatcher sharedDispatcher];
    v8 = [v7 climateActivityLogCoordinatorForHome:a1];

    if (!v6 || ![a1 hf_hasResidentCapableOfSupportingHomeActivityState] || (objc_msgSend(a1, "hf_hasEnabledResident") & 1) == 0)
    {
LABEL_10:
      v10 = 0;
      goto LABEL_12;
    }

LABEL_9:
    v10 = [a1 hf_hasCompatibleActivityLogAccessoriesForTargetKind:a3];
    goto LABEL_12;
  }

  v10 = 0;
  v8 = 0;
LABEL_12:
  v11 = [v8 eventsExist];
  v12 = HFLogForCategory(3uLL);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138413826;
    v17 = a1;
    v18 = 1024;
    v19 = v6;
    v20 = 1024;
    v21 = [a1 hf_hasEnabledResident];
    v22 = 1024;
    v23 = [a1 hf_hasCompatibleActivityLogAccessoriesForTargetKind:a3];
    v24 = 1024;
    v25 = v11;
    v26 = 1024;
    v27 = [a1 isEventLogEnabled];
    v28 = 1024;
    v29 = [a1 hf_hasActivityLogPrerequisites];
    _os_log_impl(&dword_20D9BF000, v12, OS_LOG_TYPE_DEFAULT, "Home:%@ hasActivityCapableHub:%{BOOL}d hasEnabledResident:%{BOOL}d hasCompatibleActivityLogAccessories:%{BOOL}d hasEvents:%{BOOL}d isEventLogEnabled:%{BOOL}d hasActivityLogPrerequisites:%{BOOL}d", &v16, 0x30u);
  }

  if ((v10 & 1) != 0 || ([a1 isEventLogEnabled] & v11) == 1)
  {
    v13 = [a1 hf_hasActivityLogPrerequisites];
  }

  else
  {
    v13 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

- (uint64_t)hf_hasAtLeastOneOasisEnabledDevice
{
  v1 = [a1 hf_homePods];
  v2 = [v1 na_any:&__block_literal_global_398];

  return v2;
}

- (uint64_t)hf_hasAtLeastOneCrossfadeEnabledDevice
{
  v1 = [a1 hf_homePods];
  v2 = [v1 na_any:&__block_literal_global_401];

  return v2;
}

- (uint64_t)hf_atleastOneMediaAccessorySupportingJustSiri
{
  v1 = [a1 accessories];
  v2 = [v1 na_any:&__block_literal_global_403];

  return v2;
}

- (uint64_t)hf_atLeastOneMediaAccessoryWithSupportingJustSiriLanguage
{
  v1 = [a1 accessories];
  v2 = [v1 na_filter:&__block_literal_global_405];
  v3 = [v2 na_any:&__block_literal_global_407];

  return v3;
}

- (uint64_t)hf_hasEnabledResident
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = HFForceRemoteAccessStateAvailable();
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [a1 residentDevices];
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        if ([*(*(&v10 + 1) + 8 * i) hf_isEnabled])
        {
          v2 = 1;
          goto LABEL_11;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v8 = *MEMORY[0x277D85DE8];
  return v2;
}

- (uint64_t)hf_hasEnabledAndReachableResident
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = HFForceRemoteAccessStateAvailable();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [a1 residentDevices];
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        if ([v8 hf_isEnabled] && (objc_msgSend(v8, "hf_isReachable") & 1) != 0)
        {
          v2 = 1;
          goto LABEL_12;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  v9 = *MEMORY[0x277D85DE8];
  return v2;
}

- (uint64_t)hf_hasAnyVisibleTriggers
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = [a1 triggers];
  v2 = [v1 na_any:&__block_literal_global_413];

  v3 = HFLogForCategory(0x4AuLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109120;
    v6[1] = v2;
    _os_log_impl(&dword_20D9BF000, v3, OS_LOG_TYPE_DEFAULT, "Checking if home has visible triggers hasVisibleTriggers:%d", v6, 8u);
  }

  v4 = *MEMORY[0x277D85DE8];
  return v2;
}

- (uint64_t)hf_isAbleToAddTrigger
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = [a1 hf_remoteAccessState];
  v3 = +[HFHomeKitDispatcher sharedDispatcher];
  v4 = [v3 homeManager];
  v5 = [v4 hf_hasDetectediCloudIssue];

  v6 = [a1 hf_hasEnabledResident];
  v7 = [a1 hf_isAutomatable];
  v8 = HFLogForCategory(0x4AuLL);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11[0] = 67109888;
    v11[1] = v2 == 1;
    v12 = 1024;
    v13 = v5;
    v14 = 1024;
    v15 = v6;
    v16 = 1024;
    v17 = v7;
    _os_log_impl(&dword_20D9BF000, v8, OS_LOG_TYPE_DEFAULT, "Checking if triggers can be added to this home hasRemoteAccessProblem:%d hasiCloudProblem:%d hasResident:%d isAutomatable:%d", v11, 0x1Au);
  }

  v9 = *MEMORY[0x277D85DE8];
  return (v2 != 1) & v6 & v7 & (v5 ^ 1u);
}

- (BOOL)hf_userCanCreateTrigger
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = [a1 hf_isAbleToAddTrigger];
  v3 = [a1 hf_userIsAllowedToCreateTrigger];
  v4 = HFLogForCategory(0x4AuLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 67109376;
    v10 = v2;
    v11 = 1024;
    v12 = v3;
    _os_log_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_DEFAULT, "Checking if user can create a trigger in this home isAbleToAddTrigger:%d userIsAllowedToCreateTrigger:%d", &v9, 0xEu);
  }

  v5 = (v2 & v3 & 1) != 0 || HFForceAllowAutomationCreation();
  v6 = HFLogForCategory(0x4AuLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 67109120;
    v10 = v5;
    _os_log_impl(&dword_20D9BF000, v6, OS_LOG_TYPE_DEFAULT, "Checking if user can create a trigger in this home userCanCreateTrigger:%d", &v9, 8u);
  }

  v7 = *MEMORY[0x277D85DE8];
  return v5;
}

- (uint64_t)hf_isAutomatable
{
  if ([a1 hf_hasAutomatableServices])
  {
    return 1;
  }

  return [a1 hf_hasAutomatableProfiles];
}

- (uint64_t)hf_hasAutomatableServices
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = [a1 hf_hasVisibleServies];
  v2 = HFLogForCategory(0x4AuLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 67109120;
    v5[1] = v1;
    _os_log_impl(&dword_20D9BF000, v2, OS_LOG_TYPE_DEFAULT, "Checking if home has automatable services hasAutomatableServices:%d", v5, 8u);
  }

  v3 = *MEMORY[0x277D85DE8];
  return v1;
}

- (uint64_t)hf_hasAutomatableProfiles
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = [a1 hf_allAccessoryProfiles];
  v2 = [v1 na_any:&__block_literal_global_415];

  v3 = HFLogForCategory(0x4AuLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109120;
    v6[1] = v2;
    _os_log_impl(&dword_20D9BF000, v3, OS_LOG_TYPE_DEFAULT, "Checking if home has automatable profiles hasAutomatableProfiles:%d", v6, 8u);
  }

  v4 = *MEMORY[0x277D85DE8];
  return v2;
}

+ (__CFString)_hf_appDataKeyForColorPaletteOfType:()Additions
{
  if (a3 > 3)
  {
    return 0;
  }

  else
  {
    return off_277DF86D8[a3];
  }
}

- (HFColorPalette)hf_colorPaletteOfType:()Additions
{
  v5 = [a1 applicationData];
  v6 = [v5 objectForKeyedSubscript:@"colorPickerFavorites"];

  if (!v6)
  {
LABEL_5:
    v9 = [objc_opt_class() _hf_appDataKeyForColorPaletteOfType:a3];
    v13 = [a1 applicationData];
    v11 = [v13 objectForKeyedSubscript:v9];

    if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v12 = [[HFColorPalette alloc] initWithSerializedRepresentation:v11 type:a3];
    }

    else
    {
      v12 = [HFColorPalette defaultColorPaletteOfType:a3];
    }

    goto LABEL_9;
  }

  v7 = [a1 currentUser];
  v8 = [v7 uniqueIdentifier];
  v9 = [v8 UUIDString];

  v10 = [v6 objectForKeyedSubscript:v9];
  if (!v10)
  {

    goto LABEL_5;
  }

  v11 = v10;
  v12 = [[HFColorPalette alloc] initWithDawnColorPickerFavorites:v10 type:a3];
LABEL_9:
  v14 = v12;

  return v14;
}

- (id)hf_updateColorPalette:()Additions type:
{
  v6 = a3;
  v7 = [objc_opt_class() _hf_appDataKeyForColorPaletteOfType:a4];
  v8 = [v6 serializedRepresentation];

  v9 = [a1 applicationData];
  [v9 setObject:v8 forKeyedSubscript:v7];

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __48__HMHome_Additions__hf_updateColorPalette_type___block_invoke;
  v12[3] = &unk_277DF2C68;
  v12[4] = a1;
  v10 = [MEMORY[0x277D2C900] futureWithErrorOnlyHandlerAdapterBlock:v12];

  return v10;
}

- (id)hf_accessControlDescriptor
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = [a1 mediaPassword];
  v3 = [a1 minimumMediaUserPrivilege];
  v4 = [a1 isMediaPeerToPeerEnabled];
  if ((v3 - 1) >= 3)
  {
    if (!v3)
    {
      v5 = v4 ^ 1u;
      goto LABEL_8;
    }

    v6 = HFLogForCategory(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v10 = 134217984;
      v11 = v3;
      _os_log_error_impl(&dword_20D9BF000, v6, OS_LOG_TYPE_ERROR, "Unknown HMUserPrivilege %lu", &v10, 0xCu);
    }
  }

  v5 = 2;
LABEL_8:
  v7 = [HFMediaAccessControlDescriptor descriptorWithAccess:v5 requiresPassword:v2 != 0 password:v2];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)hf_updateAccessControlDescriptor:()Additions
{
  v53 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [a1 hf_accessControlDescriptor];
  v7 = [(__CFString *)v6 isEqual:v5];
  v8 = HFLogForCategory(0);
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (v7)
  {
    if (v9)
    {
      *buf = 0;
      _os_log_impl(&dword_20D9BF000, v8, OS_LOG_TYPE_DEFAULT, "MediaAccessControl is same; returning.", buf, 2u);
    }

    v10 = [MEMORY[0x277D2C900] futureWithNoResult];
    goto LABEL_36;
  }

  if (v9)
  {
    *buf = 138412546;
    v50 = v6;
    v51 = 2112;
    v52 = v5;
    _os_log_impl(&dword_20D9BF000, v8, OS_LOG_TYPE_DEFAULT, "Transitioning from %@ -> %@", buf, 0x16u);
  }

  v11 = objc_opt_new();
  v12 = [v5 access];
  v13 = 1;
  if (v12 > 1)
  {
    if (v12 != 2)
    {
      if (v12 == 3)
      {
        v14 = [MEMORY[0x277CCA890] currentHandler];
        [v14 handleFailureInMethod:a2 object:a1 file:@"HMHome+HFAdditions.m" lineNumber:2761 description:@"Error: Cannot do a access control descirptor for 'count'; that doesn't even make any sense!"];

        v13 = 1;
      }

LABEL_13:
      if ([a1 isMediaPeerToPeerEnabled])
      {
        v15 = 0;
LABEL_18:
        v16 = HFLogForCategory(0);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          v32 = [a1 isMediaPeerToPeerEnabled];
          v33 = @"NO";
          if (v32)
          {
            v34 = @"YES";
          }

          else
          {
            v34 = @"NO";
          }

          if (v15)
          {
            v33 = @"YES";
          }

          *buf = 138412546;
          v50 = v34;
          v51 = 2112;
          v52 = v33;
          _os_log_debug_impl(&dword_20D9BF000, v16, OS_LOG_TYPE_DEBUG, "--> Updating mediaPeerToPeerEnabled from '%@' to '%@'", buf, 0x16u);
        }

        v47[0] = MEMORY[0x277D85DD0];
        v47[1] = 3221225472;
        v47[2] = __54__HMHome_Additions__hf_updateAccessControlDescriptor___block_invoke;
        v47[3] = &unk_277DF8238;
        v47[4] = a1;
        v48 = v15;
        v17 = [MEMORY[0x277D2C900] futureWithErrorOnlyHandlerAdapterBlock:v47];
        [v11 addObject:v17];

        goto LABEL_20;
      }

      goto LABEL_20;
    }
  }

  else
  {
    if (v12)
    {
      v13 = v12 != 1;
      goto LABEL_13;
    }

    v13 = 0;
  }

  if (([a1 isMediaPeerToPeerEnabled] & 1) == 0)
  {
    v15 = 1;
    goto LABEL_18;
  }

LABEL_20:
  if (v13 != [a1 minimumMediaUserPrivilege])
  {
    v18 = HFLogForCategory(0);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      [a1 minimumMediaUserPrivilege];
      v35 = HMUserPrivilegeToString();
      v36 = HMUserPrivilegeToString();
      *buf = 138412546;
      v50 = v35;
      v51 = 2112;
      v52 = v36;
      v37 = v36;
      _os_log_debug_impl(&dword_20D9BF000, v18, OS_LOG_TYPE_DEBUG, "--> Updating minimumMediaUserPrivilege from %@ to %@", buf, 0x16u);
    }

    v46[0] = MEMORY[0x277D85DD0];
    v46[1] = 3221225472;
    v46[2] = __54__HMHome_Additions__hf_updateAccessControlDescriptor___block_invoke_421;
    v46[3] = &unk_277DF46B0;
    v46[4] = a1;
    v46[5] = v13;
    v19 = [MEMORY[0x277D2C900] futureWithErrorOnlyHandlerAdapterBlock:v46];
    [v11 addObject:v19];
  }

  v20 = [v5 accessPassword];
  v21 = [v5 accessPassword];
  v43[0] = MEMORY[0x277D85DD0];
  v43[1] = 3221225472;
  v43[2] = __54__HMHome_Additions__hf_updateAccessControlDescriptor___block_invoke_2;
  v43[3] = &unk_277DF72E0;
  v22 = v5;
  v44 = v22;
  v23 = v6;
  v45 = v23;
  if (v20)
  {
    v24 = -1;
  }

  else
  {
    v24 = v21 != 0;
  }

  if (v20 && v21)
  {
    v24 = __54__HMHome_Additions__hf_updateAccessControlDescriptor___block_invoke_2(v43);
  }

  v25 = [v22 accessRequiresPassword];
  if (v25 != [(__CFString *)v23 accessRequiresPassword]|| v24)
  {
    v26 = HFLogForCategory(0);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_20D9BF000, v26, OS_LOG_TYPE_DEBUG, "--> Updating access password.", buf, 2u);
    }

    v27 = MEMORY[0x277D2C900];
    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = __54__HMHome_Additions__hf_updateAccessControlDescriptor___block_invoke_423;
    v40[3] = &unk_277DF4150;
    v41 = v22;
    v42 = a1;
    v28 = [v27 futureWithErrorOnlyHandlerAdapterBlock:v40];
    [v11 addObject:v28];
  }

  v29 = [MEMORY[0x277D2C900] combineAllFutures:v11];
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __54__HMHome_Additions__hf_updateAccessControlDescriptor___block_invoke_2_427;
  v38[3] = &unk_277DF2D30;
  v38[4] = a1;
  v39 = v23;
  v10 = [v29 recover:v38];

LABEL_36:
  v30 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)hf_restrictedGuestAllowedAccessories
{
  v1 = [a1 accessories];
  v2 = [v1 na_filter:&__block_literal_global_431];

  return v2;
}

- (id)hf_walletKeyAccessories
{
  v1 = [a1 accessories];
  v2 = [v1 na_filter:&__block_literal_global_433];

  return v2;
}

- (id)hf_fetchWalletKeyDeviceStateForCurrentDevice
{
  v2 = objc_getAssociatedObject(a1, "hf_fetchWalletKeyDeviceStateFuture");
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v4 = objc_alloc_init(MEMORY[0x277D2C900]);
    v5 = [a1 description];
    objc_setAssociatedObject(a1, "hf_fetchWalletKeyDeviceStateFuture", v4, 1);
    objc_initWeak(&location, a1);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __65__HMHome_Additions__hf_fetchWalletKeyDeviceStateForCurrentDevice__block_invoke;
    v9[3] = &unk_277DF8390;
    objc_copyWeak(&v12, &location);
    v6 = v5;
    v10 = v6;
    v7 = v4;
    v11 = v7;
    [a1 fetchWalletKeyDeviceStateWithCompletion:v9];
    v3 = v7;

    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }

  return v3;
}

- (id)hf_fetchWalletKeyDeviceStateForCurrentDeviceIfNecessary
{
  v2 = [a1 _hf_cachedWalletKeyDeviceStateForCurrentDevice];
  if (v2)
  {
    [MEMORY[0x277D2C900] futureWithResult:v2];
  }

  else
  {
    [a1 hf_fetchWalletKeyDeviceStateForCurrentDevice];
  }
  v3 = ;

  return v3;
}

- (id)hf_hasWalletKey
{
  v2 = [a1 _hf_cachedWalletKeyDeviceStateForCurrentDevice];
  v3 = v2;
  if (v2)
  {
    v4 = MEMORY[0x277D2C900];
    v5 = MEMORY[0x277CCABB0];
    v6 = [v2 walletKey];
    v7 = [v5 numberWithInt:v6 != 0];
    [v4 futureWithResult:v7];
  }

  else
  {
    v6 = [a1 hf_fetchWalletKeyDeviceStateForCurrentDevice];
    v7 = [v6 flatMap:&__block_literal_global_443];
    [v7 recover:&__block_literal_global_445];
  }
  v8 = ;

  return v8;
}

- (id)hf_walletKeyUUID
{
  v2 = [a1 _hf_cachedWalletKeyDeviceStateForCurrentDevice];
  v3 = v2;
  if (v2)
  {
    v4 = MEMORY[0x277D2C900];
    v5 = [v2 walletKey];
    v6 = [v5 UUID];
    [v4 futureWithResult:v6];
  }

  else
  {
    v5 = [a1 hf_fetchWalletKeyDeviceStateForCurrentDevice];
    v6 = [v5 flatMap:&__block_literal_global_447];
    [v6 recoverIgnoringError];
  }
  v7 = ;

  return v7;
}

- (id)hf_walletKeyInWalletAppURL
{
  v32 = *MEMORY[0x277D85DE8];
  v2 = [a1 _hf_cachedWalletKeyDeviceStateForCurrentDevice];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 walletKey];
    v5 = [v4 customURL];

    v6 = HFLogForCategory(0x49uLL);
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    if (v5)
    {
      if (v7)
      {
        v8 = [v3 walletKey];
        v9 = [v8 customURL];
        *buf = 138413058;
        v25 = a1;
        v26 = 2080;
        v27 = "[HMHome(Additions) hf_walletKeyInWalletAppURL]";
        v28 = 2112;
        v29 = v9;
        v30 = 2112;
        v31 = v3;
        _os_log_impl(&dword_20D9BF000, v6, OS_LOG_TYPE_DEFAULT, "(%@:%s) returning url %@ for cached wallet key device state %@", buf, 0x2Au);
      }

      v10 = MEMORY[0x277D2C900];
      v11 = [v3 walletKey];
      v12 = [v11 customURL];
      v13 = [v10 futureWithResult:v12];
    }

    else
    {
      if (v7)
      {
        *buf = 138412802;
        v25 = a1;
        v26 = 2080;
        v27 = "[HMHome(Additions) hf_walletKeyInWalletAppURL]";
        v28 = 2112;
        v29 = v3;
        _os_log_impl(&dword_20D9BF000, v6, OS_LOG_TYPE_DEFAULT, "(%@:%s) returning default wallet app url because customURL is nil for cached %@", buf, 0x20u);
      }

      v16 = MEMORY[0x277D2C900];
      v17 = +[HFWalletUtilities walletAppURL];
      v13 = [v16 futureWithResult:v17];
    }
  }

  else
  {
    objc_initWeak(buf, a1);
    v14 = [a1 hf_fetchWalletKeyDeviceStateForCurrentDevice];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __47__HMHome_Additions__hf_walletKeyInWalletAppURL__block_invoke;
    v22[3] = &unk_277DF83D8;
    objc_copyWeak(&v23, buf);
    v15 = [v14 flatMap:v22];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __47__HMHome_Additions__hf_walletKeyInWalletAppURL__block_invoke_449;
    v20[3] = &unk_277DF5330;
    objc_copyWeak(&v21, buf);
    v13 = [v15 recover:v20];
    objc_destroyWeak(&v21);

    objc_destroyWeak(&v23);
    objc_destroyWeak(buf);
  }

  v18 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)hf_enableExpressModeForWalletKeyWithAuthData:()Additions
{
  v4 = a3;
  objc_initWeak(&location, a1);
  v5 = MEMORY[0x277D2C900];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __66__HMHome_Additions__hf_enableExpressModeForWalletKeyWithAuthData___block_invoke;
  v9[3] = &unk_277DF8428;
  objc_copyWeak(&v11, &location);
  v6 = v4;
  v10 = v6;
  v7 = [v5 futureWithBlock:v9];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);

  return v7;
}

- (id)hf_enableUWBForWalletKeyWithAuthData:()Additions enableNFCExpress:
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (_os_feature_enabled_impl())
  {
    objc_initWeak(location, a1);
    v7 = MEMORY[0x277D2C900];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __75__HMHome_Additions__hf_enableUWBForWalletKeyWithAuthData_enableNFCExpress___block_invoke;
    v12[3] = &unk_277DF8450;
    objc_copyWeak(&v14, location);
    v13 = v6;
    v15 = a4;
    v8 = [v7 futureWithBlock:v12];

    objc_destroyWeak(&v14);
    objc_destroyWeak(location);
  }

  else
  {
    v9 = HFLogForCategory(0x49uLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *location = 138412546;
      *&location[4] = a1;
      v17 = 2080;
      v18 = "[HMHome(Additions) hf_enableUWBForWalletKeyWithAuthData:enableNFCExpress:]";
      _os_log_impl(&dword_20D9BF000, v9, OS_LOG_TYPE_DEFAULT, "(%@:%s) Returning early because uwb feature flag.", location, 0x16u);
    }

    v8 = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  v10 = *MEMORY[0x277D85DE8];

  return v8;
}

- (BOOL)hf_containsWalletKeyUWBAccessory
{
  v9 = *MEMORY[0x277D85DE8];
  if (_os_feature_enabled_impl())
  {
    v2 = [a1 hf_accessoriesSupportingUWBUnlock];
    v3 = [v2 count] != 0;
  }

  else
  {
    v4 = HFLogForCategory(0x49uLL);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315138;
      v8 = "[HMHome(Additions) hf_containsWalletKeyUWBAccessory]";
      _os_log_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_DEFAULT, "(%s) Returning false because feature flag is NOT enabled.", &v7, 0xCu);
    }

    v3 = 0;
  }

  v5 = *MEMORY[0x277D85DE8];
  return v3;
}

- (id)hf_accessoriesSupportingUWBUnlock
{
  v9 = *MEMORY[0x277D85DE8];
  if (_os_feature_enabled_impl())
  {
    v2 = [a1 accessories];
    v3 = [v2 na_filter:&__block_literal_global_455];
  }

  else
  {
    v4 = HFLogForCategory(0x49uLL);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315138;
      v8 = "[HMHome(Additions) hf_accessoriesSupportingUWBUnlock]";
      _os_log_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_DEFAULT, "(%s) Returning empty collection because feature flag is NOT enabled.", &v7, 0xCu);
    }

    v3 = MEMORY[0x277CBEBF8];
  }

  v5 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)hf_addWalletKeyWithOptions:()Additions
{
  objc_initWeak(&location, val);
  v4 = MEMORY[0x277D2C900];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__HMHome_Additions__hf_addWalletKeyWithOptions___block_invoke;
  v7[3] = &unk_277DF7ED8;
  objc_copyWeak(v8, &location);
  v8[1] = a3;
  v5 = [v4 futureWithBlock:v7];
  objc_destroyWeak(v8);
  objc_destroyWeak(&location);

  return v5;
}

- (id)hf_addWalletKeyToPairedWatchesWithOptions:()Additions
{
  objc_initWeak(&location, val);
  v4 = MEMORY[0x277D2C900];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __63__HMHome_Additions__hf_addWalletKeyToPairedWatchesWithOptions___block_invoke;
  v7[3] = &unk_277DF7ED8;
  objc_copyWeak(v8, &location);
  v8[1] = a3;
  v5 = [v4 futureWithBlock:v7];
  objc_destroyWeak(v8);
  objc_destroyWeak(&location);

  return v5;
}

- (id)hf_setHasOnboardedForWalletKey
{
  v18 = *MEMORY[0x277D85DE8];
  if ([a1 hf_currentUserIsAdministrator])
  {
    objc_initWeak(location, a1);
    v2 = MEMORY[0x277D2C900];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __51__HMHome_Additions__hf_setHasOnboardedForWalletKey__block_invoke;
    v13[3] = &unk_277DF4F68;
    objc_copyWeak(&v14, location);
    v3 = [v2 futureWithBlock:v13];
    objc_destroyWeak(&v14);
    objc_destroyWeak(location);
  }

  else
  {
    v4 = HFLogForCategory(0x49uLL);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [a1 currentUser];
      v6 = [v5 hf_prettyDescription];
      *location = 136315394;
      *&location[4] = "[HMHome(Additions) hf_setHasOnboardedForWalletKey]";
      v16 = 2112;
      v17 = v6;
      _os_log_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_DEFAULT, "(%s) Unable to update home level onboarding flag for wallet key because current user is NOT an admin. user = %@", location, 0x16u);
    }

    v7 = MEMORY[0x277CCA9B8];
    v8 = _HFLocalizedStringWithDefaultValue(@"HFError_HMErrorCodeAccessDenied_description", @"HFError_HMErrorCodeAccessDenied_description", 1);
    v9 = _HFLocalizedStringWithDefaultValue(@"HFError_HMErrorCodeAccessDenied_description", @"HFError_HMErrorCodeAccessDenied_description", 1);
    v10 = [v7 hf_errorWithCode:61 title:v8 description:v9];

    v3 = [MEMORY[0x277D2C900] futureWithError:v10];
  }

  v11 = *MEMORY[0x277D85DE8];

  return v3;
}

- (uint64_t)hf_hasHomeHubSupportingWalletKey
{
  v1 = [a1 residentDevices];
  v2 = [v1 na_any:&__block_literal_global_471];

  return v2;
}

- (id)hf_formattedErrorForWalletKeyDeviceStateForCurrentDevice
{
  v2 = [a1 hf_fetchWalletKeyDeviceStateForCurrentDevice];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __77__HMHome_Additions__hf_formattedErrorForWalletKeyDeviceStateForCurrentDevice__block_invoke;
  v6[3] = &unk_277DF84C8;
  v6[4] = a1;
  v3 = [v2 flatMap:v6];
  v4 = [v3 recover:&__block_literal_global_488];

  return v4;
}

- (id)hf_fetchWalletKeyDeviceStateForPairedWatches
{
  objc_initWeak(&location, val);
  v1 = MEMORY[0x277D2C900];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __65__HMHome_Additions__hf_fetchWalletKeyDeviceStateForPairedWatches__block_invoke;
  v4[3] = &unk_277DF4F68;
  objc_copyWeak(&v5, &location);
  v2 = [v1 futureWithBlock:v4];
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);

  return v2;
}

- (id)_hf_fetchWalletKeyColorFromAccessories
{
  objc_initWeak(&location, val);
  v1 = MEMORY[0x277D2C900];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __59__HMHome_Additions___hf_fetchWalletKeyColorFromAccessories__block_invoke;
  v4[3] = &unk_277DF4F68;
  objc_copyWeak(&v5, &location);
  v2 = [v1 futureWithBlock:v4];
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);

  return v2;
}

- (id)_hf_existingWalletKeyColorForCurrentDevice
{
  v2 = [a1 _hf_cachedWalletKeyDeviceStateForCurrentDevice];
  if (v2)
  {
    v3 = MEMORY[0x277D2C900];
    v4 = [HFWalletUtilities walletKeyColorOfDeviceState:v2];
    v5 = [v3 futureWithResult:v4];
  }

  else
  {
    v4 = [a1 hf_fetchWalletKeyDeviceStateForCurrentDevice];
    v6 = [v4 flatMap:&__block_literal_global_492];
    v5 = [v6 recover:&__block_literal_global_494];
  }

  return v5;
}

- (id)hf_walletKeyColorToDisplay
{
  v2 = [a1 _hf_existingWalletKeyColorForCurrentDevice];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __47__HMHome_Additions__hf_walletKeyColorToDisplay__block_invoke;
  v5[3] = &unk_277DF2CE0;
  v5[4] = a1;
  v3 = [v2 flatMap:v5];

  return v3;
}

- (id)hf_accessoriesSupportingAccessCodes
{
  v1 = [a1 accessories];
  v2 = [v1 na_filter:&__block_literal_global_497];

  return v2;
}

- (BOOL)hf_canAddAccessCode
{
  if (![a1 hasOnboardedForAccessCode])
  {
    return 0;
  }

  v2 = [a1 hf_accessoriesSupportingAccessCodes];
  v3 = [v2 count] != 0;

  return v3;
}

- (id)hf_setHasOnboardedForAccessCode
{
  v18 = *MEMORY[0x277D85DE8];
  if ([a1 hf_currentUserIsAdministrator])
  {
    objc_initWeak(location, a1);
    v2 = MEMORY[0x277D2C900];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __52__HMHome_Additions__hf_setHasOnboardedForAccessCode__block_invoke;
    v13[3] = &unk_277DF4F68;
    objc_copyWeak(&v14, location);
    v3 = [v2 futureWithBlock:v13];
    objc_destroyWeak(&v14);
    objc_destroyWeak(location);
  }

  else
  {
    v4 = HFLogForCategory(0x37uLL);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [a1 currentUser];
      v6 = [v5 hf_prettyDescription];
      *location = 136315394;
      *&location[4] = "[HMHome(Additions) hf_setHasOnboardedForAccessCode]";
      v16 = 2112;
      v17 = v6;
      _os_log_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_DEFAULT, "(%s) Unable to update home level onboarding flag for access code because current user is NOT an admin. user = %@", location, 0x16u);
    }

    v7 = MEMORY[0x277CCA9B8];
    v8 = _HFLocalizedStringWithDefaultValue(@"HFError_HMErrorCodeAccessDenied_description", @"HFError_HMErrorCodeAccessDenied_description", 1);
    v9 = _HFLocalizedStringWithDefaultValue(@"HFError_HMErrorCodeAccessDenied_description", @"HFError_HMErrorCodeAccessDenied_description", 1);
    v10 = [v7 hf_errorWithCode:61 title:v8 description:v9];

    v3 = [MEMORY[0x277D2C900] futureWithError:v10];
  }

  v11 = *MEMORY[0x277D85DE8];

  return v3;
}

- (uint64_t)hf_hasHomeHubSupportingAccessCodes
{
  v1 = [a1 residentDevices];
  v2 = [v1 na_any:&__block_literal_global_499];

  return v2;
}

- (id)hf_hasWalletKeyCompatibleDevice
{
  objc_initWeak(&location, val);
  v2 = [val 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];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __52__HMHome_Additions__hf_hasWalletKeyCompatibleDevice__block_invoke;
  v5[3] = &unk_277DF8540;
  objc_copyWeak(&v6, &location);
  v3 = [v2 flatMap:v5];
  objc_destroyWeak(&v6);

  objc_destroyWeak(&location);

  return v3;
}

- (id)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
{
  v2 = [a1 _hf_cachedWalletKeyDeviceStateForCurrentDevice];
  if (v2)
  {
    v3 = [HFWalletUtilities isWalletKeyDeviceStateCompatible:v2];
    v4 = MEMORY[0x277D2C900];
    v5 = [MEMORY[0x277CCABB0] numberWithBool:v3];
    v6 = [v4 futureWithResult:v5];
  }

  else
  {
    objc_initWeak(&location, a1);
    v7 = [a1 hf_fetchWalletKeyDeviceStateForCurrentDevice];
    v8 = [v7 flatMap:&__block_literal_global_502];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __58__HMHome_Additions__hf_isCurrentDeviceWalletKeyCompatible__block_invoke_2;
    v10[3] = &unk_277DF5330;
    objc_copyWeak(&v11, &location);
    v6 = [v8 recover:v10];
    objc_destroyWeak(&v11);

    objc_destroyWeak(&location);
  }

  return v6;
}

- (id)hf_walletKeyDeviceStatesOfCompatiblePairedWatches
{
  objc_initWeak(&location, val);
  v2 = [val hf_fetchWalletKeyDeviceStateForPairedWatches];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __70__HMHome_Additions__hf_walletKeyDeviceStatesOfCompatiblePairedWatches__block_invoke;
  v8[3] = &unk_277DF8568;
  objc_copyWeak(&v9, &location);
  v3 = [v2 flatMap:v8];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __70__HMHome_Additions__hf_walletKeyDeviceStatesOfCompatiblePairedWatches__block_invoke_504;
  v6[3] = &unk_277DF5330;
  objc_copyWeak(&v7, &location);
  v4 = [v3 recover:v6];
  objc_destroyWeak(&v7);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);

  return v4;
}

- (void)hf_clearCachedWalletKeyDeviceStateForCurrentDevice
{
  objc_setAssociatedObject(a1, "hf_cachedWalletKeyDeviceStateForCurrentDeviceKey", 0, 1);

  objc_setAssociatedObject(a1, "hf_fetchWalletKeyDeviceStateFuture", 0, 1);
}

- (id)hf_fetchAvailableWalletKeyEncodedPKPass
{
  objc_initWeak(&location, val);
  v1 = MEMORY[0x277D2C900];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __60__HMHome_Additions__hf_fetchAvailableWalletKeyEncodedPKPass__block_invoke;
  v4[3] = &unk_277DF4F68;
  objc_copyWeak(&v5, &location);
  v2 = [v1 futureWithBlock:v4];
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);

  return v2;
}

- (id)hf_fetchExistingWalletKeyEncodedPKPass
{
  objc_initWeak(&location, val);
  v1 = MEMORY[0x277D2C900];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __59__HMHome_Additions__hf_fetchExistingWalletKeyEncodedPKPass__block_invoke;
  v4[3] = &unk_277DF4F68;
  objc_copyWeak(&v5, &location);
  v2 = [v1 futureWithBlock:v4];
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);

  return v2;
}

- (id)hf_ecosystemAccessoryUUIDMapFuture
{
  v3 = [a1 accessories];
  v4 = [v3 na_filter:&__block_literal_global_509];

  v5 = MEMORY[0x277D2C900];
  v6 = [v4 na_map:&__block_literal_global_511];
  v7 = [v5 combineAllFutures:v6];

  v8 = [v7 flatMap:&__block_literal_global_514];
  v9 = [v8 flatMap:&__block_literal_global_516];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __55__HMHome_Additions__hf_ecosystemAccessoryUUIDMapFuture__block_invoke_8;
  v12[3] = &__block_descriptor_40_e27___NAFuture_16__0__NSError_8l;
  v12[4] = a2;
  v10 = [v9 recover:v12];

  return v10;
}

- (uint64_t)hf_showPredictedScenesOnDashboard
{
  v1 = [a1 applicationData];
  v2 = [v1 objectForKey:@"showPredictedScenesOnDashboard"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 BOOLValue];
  }

  else
  {
    v3 = 1;
  }

  return v3;
}

- (id)hf_setShowPredictedScenesOnDashboard:()Additions
{
  v2 = [MEMORY[0x277CCABB0] numberWithBool:?];
  v3 = [a1 applicationData];
  [v3 setObject:v2 forKeyedSubscript:@"showPredictedScenesOnDashboard"];

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __58__HMHome_Additions__hf_setShowPredictedScenesOnDashboard___block_invoke;
  v8[3] = &unk_277DF2C68;
  v8[4] = a1;
  v4 = [MEMORY[0x277D2C900] futureWithErrorOnlyHandlerAdapterBlock:v8];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58__HMHome_Additions__hf_setShowPredictedScenesOnDashboard___block_invoke_2;
  v7[3] = &unk_277DF2720;
  v7[4] = a1;
  v5 = [v4 addSuccessBlock:v7];

  return v5;
}

- (uint64_t)hf_hasFavorites
{
  v1 = [a1 hf_accessoryLikeObjects];
  v2 = [v1 na_any:&__block_literal_global_525];

  return v2;
}

- (uint64_t)hf_canUpdateToHH2
{
  v2 = +[HFHomeKitDispatcher sharedDispatcher];
  v3 = [v2 homeManager];

  if ([a1 hf_currentUserIsOwner] && objc_msgSend(v3, "isHH2MigrationAvailable"))
  {
    v4 = [v3 hasOptedToHH2] ^ 1;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)hf_accessoryRepresentableUsageCountsByRoomWithFilter:()Additions
{
  v4 = a3;
  v5 = [[HFBiomeUsageCountsByRoomFetchRequest alloc] initWithHome:a1];
  [(HFBiomeUsageCountsByRoomFetchRequest *)v5 setFilter:v4];

  v6 = [(HFBiomeAbstractFetchRequest *)v5 fetch];

  return v6;
}

- (BOOL)hf_atleastOneMediaAccessoryHasSiriEnabled
{
  v2 = [a1 hf_allMediaProfileContainers];
  v3 = [v2 na_firstObjectPassingTest:&__block_literal_global_529];
  if (v3)
  {
    v4 = 1;
  }

  else
  {
    v5 = [a1 hf_allSiriEndPointProfileContainers];
    v6 = [v5 na_firstObjectPassingTest:&__block_literal_global_531];

    v4 = v6 != 0;
  }

  return v4;
}

- (id)hf_minimumDescription
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [a1 name];
  v4 = [a1 uniqueIdentifier];
  v5 = [a1 uuid];
  v6 = [v2 stringWithFormat:@"<HMHome: name = %@ | uniqueIdentifier = %@ | uuid = %@>", v3, v4, v5];

  return v6;
}

- (id)hf_HMHomeAccessNotAllowedReasonCodeStringForCurrentUser
{
  v2 = [a1 currentUser];
  v3 = [a1 hf_HMHomeAccessNotAllowedReasonCodeStringForUser:v2];

  return v3;
}

- (id)hf_HMHomeAccessNotAllowedReasonCodeStringForUser:()Additions
{
  v1 = [a1 homeAccessControlForUser:?];
  v2 = HF_HomeAccessNotAllowedReasonCodeString([v1 accessNotAllowedReasonCode]);

  return v2;
}

@end