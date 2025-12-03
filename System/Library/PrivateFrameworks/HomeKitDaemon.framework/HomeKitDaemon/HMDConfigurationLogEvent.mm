@interface HMDConfigurationLogEvent
- (BOOL)isMediaOnlyConfiguration;
- (BOOL)isTelevisionOnlyConfiguration;
- (HMDConfigurationLogEvent)initWithHomeConfigurations:(id)configurations widgetDataSource:(id)source isFMFDevice:(BOOL)device isStandaloneWatch:(BOOL)watch;
@end

@implementation HMDConfigurationLogEvent

- (BOOL)isMediaOnlyConfiguration
{
  totalAccessories = [(HMDConfigurationLogEvent *)self totalAccessories];
  if (totalAccessories)
  {
    totalAccessories2 = [(HMDConfigurationLogEvent *)self totalAccessories];
    totalTelevisionServiceAccessories = [(HMDConfigurationLogEvent *)self totalTelevisionServiceAccessories];
    v6 = [(HMDConfigurationLogEvent *)self totalHAPSpeakerAccessories]+ totalTelevisionServiceAccessories;
    totalWholeHouseAudioAccessories = [(HMDConfigurationLogEvent *)self totalWholeHouseAudioAccessories];
    LOBYTE(totalAccessories) = totalAccessories2 == v6 + totalWholeHouseAudioAccessories + [(HMDConfigurationLogEvent *)self totalAppleMediaAccessories];
  }

  return totalAccessories;
}

- (BOOL)isTelevisionOnlyConfiguration
{
  totalAccessories = [(HMDConfigurationLogEvent *)self totalAccessories];
  if (totalAccessories)
  {
    totalAccessories2 = [(HMDConfigurationLogEvent *)self totalAccessories];
    LOBYTE(totalAccessories) = totalAccessories2 == [(HMDConfigurationLogEvent *)self totalTelevisionServiceAccessories];
  }

  return totalAccessories;
}

- (HMDConfigurationLogEvent)initWithHomeConfigurations:(id)configurations widgetDataSource:(id)source isFMFDevice:(BOOL)device isStandaloneWatch:(BOOL)watch
{
  v30 = *MEMORY[0x277D85DE8];
  configurationsCopy = configurations;
  sourceCopy = source;
  v28.receiver = self;
  v28.super_class = HMDConfigurationLogEvent;
  v13 = [(HMMLogEvent *)&v28 init];
  if (v13)
  {
    v23 = configurationsCopy;
    os_unfair_lock_lock_with_options();
    v13->_instanceId = ++_currentInstanceId;
    os_unfair_lock_unlock(&_lock_35559);
    v22 = sourceCopy;
    v13->_totalWidgets = [sourceCopy configuredWidgetsCount];
    objc_storeStrong(&v13->_homeConfigurations, configurations);
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    homeConfigurations = [(HMDConfigurationLogEvent *)v13 homeConfigurations];
    v15 = [homeConfigurations countByEnumeratingWithState:&v24 objects:v29 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v25;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v25 != v17)
          {
            objc_enumerationMutation(homeConfigurations);
          }

          v19 = *(*(&v24 + 1) + 8 * i);
          ++v13->_totalHomes;
          v13->_totalHomeCategoryBitMask |= [v19 homeCategoryBitMask];
          v13->_totalAppleMediaCategoryBitMask |= [v19 appleMediaCategoryBitMask];
          v13->_totalThirdPartyMediaCategoryBitMask |= [v19 thirdPartyMediaCategoryBitMask];
          if ([v19 numAccessories])
          {
            ++v13->_totalNonEmptyHomes;
            if ([v19 isOwnerUser])
            {
              ++v13->_totalOwnedHomes;
            }

            if ([v19 numResidentsEnabled])
            {
              ++v13->_totalResidentEnabledHomes;
            }

            v13->_isResidentCapable |= [v19 isCurrentDeviceResidentCapable];
            v13->_isResidentEnabled |= [v19 isCurrentDeviceResidentEnabled];
            v13->_isPrimaryResidentForSomeHome |= [v19 isCurrentDevicePrimaryResident];
            v13->_isResidentFirstEnabledAnyHome |= [v19 isResidentFirstEnabled];
            v13->_isResidentElectionV2EnabledAnyHome |= [v19 isResidentElectionV2Enabled];
            v13->_totalResidentElectionBitMask |= [v19 residentElectionBitMask];
            v13->_totalUsers += [v19 numUsers];
            v13->_totalAdminUsers += [v19 numAdmins];
            v13->_totalRestrictedGuests += [v19 numRestrictedGuests];
            v13->_currentUserPrivilegeBitMask |= [v19 currentUserPrivilegeBitMask];
            v13->_totalUserPrivilegeBitMask |= [v19 userPrivilegeBitMask];
            v13->_totalAccessories += [v19 numAccessories];
            v13->_totalCertifiedAccessories += [v19 numCertifiedAccessories];
            v13->_totalSmartHomeAccessories += [v19 numSmartHomeAccessories];
            v13->_totalHAPAccessories += [v19 numHAPAccessories];
            v13->_totalHAPIPAccessories += [v19 numHAPIPAccessories];
            v13->_totalHAPBTAccessories += [v19 numHAPBTAccessories];
            v13->_totalCHIPAccessories += [v19 numCHIPAccessories];
            v13->_totalThreadAccessories += [v19 numThreadAccessories];
            v13->_totalBridgedAccessories += [v19 numBridgedAccessories];
            v13->_totalTelevisionServiceAccessories += [v19 numTelevisionServiceAccessories];
            v13->_totalCameraAccessories += [v19 numCameraAccessories];
            v13->_totalCameraAccessoriesRecordingEnabled += [v19 numCameraAccessoriesRecordingEnabled];
            v13->_totalAppleMediaAccessories += [v19 numAppleMediaAccessories];
            v13->_totalAppleAudioAccessories += [v19 numAppleAudioAccessories];
            v13->_totalAppleTVAccessories += [v19 numAppleTVAccessories];
            v13->_totalThirdPartyMediaAccessories += [v19 numThirdPartyMediaAccessories];
            v13->_totalHAPSpeakerAccessories += [v19 numPrimaryHAPSpeakerServiceAccessories];
            v13->_totalWholeHouseAudioAccessories += [v19 numWholeHouseAudioAccessories];
            v13->_totalEnabledResidents += [v19 numResidentsEnabled];
            v13->_totalScenes += [v19 numConfiguredScenes];
            v13->_totalTriggers += [v19 numTriggers];
            v13->_totalActiveTriggers += [v19 numActiveTriggers];
            v13->_totalWOBLEAccessories += [v19 numWOBLEAccessories];
            v13->_totalWOLANAccessories += [v19 numWOLANAccessories];
            v13->_databaseSize = [v19 databaseSize];
            v13->_metadataVersion = [v19 metadataVersion];
            v13->_isResidentSelectionEnabledAnyHome |= [v19 isResidentSelectionEnabled];
            v13->_isResidentSelectionModeAutoAnyHome |= [v19 residentSelectionMode] == 3;
            v13->_isResidentSelectionModeCoordinationAnyHome |= [v19 residentSelectionMode] == 1;
            v13->_isResidentSelectionModeManualAnyHome |= [v19 residentSelectionMode] == 2;
          }
        }

        v16 = [homeConfigurations countByEnumeratingWithState:&v24 objects:v29 count:16];
      }

      while (v16);
    }

    v13->_isFMFDevice = device;
    v13->_isStandaloneWatch = watch;
    configurationsCopy = v23;
    sourceCopy = v22;
  }

  v20 = *MEMORY[0x277D85DE8];
  return v13;
}

@end