@interface _CDContextQueries
+ (BOOL)isMDCSKeyPath:(id)a3;
+ (id)keyPathForActiveCall;
+ (id)keyPathForActiveComplications;
+ (id)keyPathForAirplaneModeStatus;
+ (id)keyPathForAppClipLaunch;
+ (id)keyPathForAppDataDictionary;
+ (id)keyPathForAppMediaUsageDataDictionaries;
+ (id)keyPathForAppRunningDataDictionaries;
+ (id)keyPathForAppUsageDataDictionaries;
+ (id)keyPathForAppWebUsageDataDictionaries;
+ (id)keyPathForAudioOutputDataDictionary;
+ (id)keyPathForBacklightOnStatus;
+ (id)keyPathForBatteryLevel;
+ (id)keyPathForBatteryStateDataDictionary;
+ (id)keyPathForBluetoothDataDictionary;
+ (id)keyPathForCPUUsageLevel;
+ (id)keyPathForCallInProgressStatus;
+ (id)keyPathForCarConnectedStatus;
+ (id)keyPathForCarplayConnectedStatus;
+ (id)keyPathForCellConnectionQuality;
+ (id)keyPathForCircularLocationRegions;
+ (id)keyPathForCurrentAlarms;
+ (id)keyPathForCurrentTimers;
+ (id)keyPathForDefaultPairedDeviceBatteryLevel;
+ (id)keyPathForDefaultPairedDeviceCellQuality;
+ (id)keyPathForDefaultPairedDeviceForegroundApp;
+ (id)keyPathForDefaultPairedDeviceNearbyStatus;
+ (id)keyPathForDefaultPairedDevicePluginStatus;
+ (id)keyPathForDefaultPairedDeviceThermalPressureLevel;
+ (id)keyPathForDefaultPairedDeviceWiFiWiredQuality;
+ (id)keyPathForDefaultPairedServicesAppearingForeground;
+ (id)keyPathForDeviceAssertionsHeldStatus;
+ (id)keyPathForDeviceID;
+ (id)keyPathForDeviceLockStatus;
+ (id)keyPathForDeviceName;
+ (id)keyPathForDisplayOnBeforeFirstUnlockOfTheDayStatus;
+ (id)keyPathForDoNotDisturbStatus;
+ (id)keyPathForDoNotDisturbStatusDataDictionary;
+ (id)keyPathForEnergyBudgetRemainingStatus;
+ (id)keyPathForFirstWakeupStatus;
+ (id)keyPathForForegroundApp;
+ (id)keyPathForHomeKitAccessoryDataDictionary;
+ (id)keyPathForHomeKitAppViewDataDictionary;
+ (id)keyPathForHomeKitSceneDataDictionary;
+ (id)keyPathForInUseStatus;
+ (id)keyPathForIntentsDataDictionary;
+ (id)keyPathForKeybagLockStatus;
+ (id)keyPathForLastUseDate;
+ (id)keyPathForLocationCoordinates;
+ (id)keyPathForLowBattery;
+ (id)keyPathForLowPowerModeStatus;
+ (id)keyPathForMDCSDeviceIDsWithProxySourceDeviceUUID:(id)a3;
+ (id)keyPathForMDCSDevicesWithProxySourceDeviceUUID:(id)a3;
+ (id)keyPathForMDCSProxies;
+ (id)keyPathForMDCSProxySourceDeviceUUIDWithUserID:(id)a3;
+ (id)keyPathForMDCSProxyTokenWithUserID:(id)a3;
+ (id)keyPathForMDCSUserIDWithProxySourceDeviceUUID:(id)a3;
+ (id)keyPathForMediaPlayingStatus;
+ (id)keyPathForMostRecentSafariSpotlightDonation;
+ (id)keyPathForMotionState;
+ (id)keyPathForNFCTagIdentifiers;
+ (id)keyPathForNavigationStatus;
+ (id)keyPathForNearbyLOIIdentifiers;
+ (id)keyPathForNetworkingBudgetRemainingStatus;
+ (id)keyPathForNextAlarm;
+ (id)keyPathForNextUserVisibleWakeDate;
+ (id)keyPathForNowPlayingDataDictionary;
+ (id)keyPathForPluginStatus;
+ (id)keyPathForPredictedLocationOfInterestTransitions;
+ (id)keyPathForRecentEmails;
+ (id)keyPathForRecentMessages;
+ (id)keyPathForServicesAppearingForeground;
+ (id)keyPathForSiriActiveStatus;
+ (id)keyPathForSiriServiceDataDictionary;
+ (id)keyPathForSleepStateDictionary;
+ (id)keyPathForSunriseSunsetDataDictionary;
+ (id)keyPathForSystemTime;
+ (id)keyPathForThermalPressureLevel;
+ (id)keyPathForUserActivityDataDictionary;
+ (id)keyPathForWatchActiveStatus;
+ (id)keyPathForWiFiConnectionQuality;
+ (id)keyPathForWiFiConnectionSSID;
+ (id)keyPathForWiredConnectionQuality;
+ (id)keyPathForWorkoutDataDictionary;
+ (id)keyPathForWorkoutStatus;
+ (id)predicateForBatteryLevel:(id)a3;
+ (id)predicateForCellConnectionAvailability:(BOOL)a3;
+ (id)predicateForCircularLocationRegion:(id)a3 state:(int64_t)a4;
+ (id)predicateForMDCSDevicesWithDeviceTypes:(unint64_t)a3;
+ (id)predicateForSystemTime:(id)a3;
+ (id)predicateForSystemTime:(id)a3 gracePeriod:(double)a4;
+ (id)predicateForSystemTimeInInterval:(id)a3;
+ (id)predicateForWiFiConnectionAvailability:(BOOL)a3;
+ (id)predicateForWiredConnectionAvailability:(BOOL)a3;
@end

@implementation _CDContextQueries

+ (id)keyPathForAppUsageDataDictionaries
{
  if (keyPathForAppUsageDataDictionaries_onceToken != -1)
  {
    +[_CDContextQueries(AppUsage) keyPathForAppUsageDataDictionaries];
  }

  v3 = keyPathForAppUsageDataDictionaries_appUsageKeyPath;

  return v3;
}

+ (id)keyPathForForegroundApp
{
  if (keyPathForForegroundApp_onceToken != -1)
  {
    +[_CDContextQueries keyPathForForegroundApp];
  }

  v3 = keyPathForForegroundApp_foregroundApp;

  return v3;
}

+ (id)keyPathForDeviceName
{
  if (keyPathForDeviceName_onceToken != -1)
  {
    +[_CDContextQueries keyPathForDeviceName];
  }

  v3 = keyPathForDeviceName_deviceName;

  return v3;
}

+ (id)keyPathForAppWebUsageDataDictionaries
{
  if (keyPathForAppWebUsageDataDictionaries_onceToken != -1)
  {
    +[_CDContextQueries(AppWebUsage) keyPathForAppWebUsageDataDictionaries];
  }

  v3 = keyPathForAppWebUsageDataDictionaries_appWebUsageKeyPath;

  return v3;
}

+ (id)keyPathForSystemTime
{
  if (keyPathForSystemTime_onceToken != -1)
  {
    +[_CDContextQueries keyPathForSystemTime];
  }

  v3 = keyPathForSystemTime_systemTime;

  return v3;
}

+ (id)keyPathForServicesAppearingForeground
{
  if (keyPathForServicesAppearingForeground_onceToken != -1)
  {
    +[_CDContextQueries(IDSTrafficPolicy) keyPathForServicesAppearingForeground];
  }

  v3 = keyPathForServicesAppearingForeground_servicesAppearingForeground;

  return v3;
}

+ (id)keyPathForAppDataDictionary
{
  if (keyPathForAppDataDictionary_onceToken != -1)
  {
    +[_CDContextQueries(Application) keyPathForAppDataDictionary];
  }

  v3 = keyPathForAppDataDictionary_appData;

  return v3;
}

+ (id)keyPathForDefaultPairedDeviceForegroundApp
{
  if (keyPathForDefaultPairedDeviceForegroundApp_onceToken != -1)
  {
    +[_CDContextQueries keyPathForDefaultPairedDeviceForegroundApp];
  }

  v3 = keyPathForDefaultPairedDeviceForegroundApp_defaultPairedForegroundApp;

  return v3;
}

+ (id)keyPathForDefaultPairedServicesAppearingForeground
{
  if (keyPathForDefaultPairedServicesAppearingForeground_onceToken != -1)
  {
    +[_CDContextQueries(IDSTrafficPolicy) keyPathForDefaultPairedServicesAppearingForeground];
  }

  v3 = keyPathForDefaultPairedServicesAppearingForeground_defaultPairedServicesAppearingForeground;

  return v3;
}

+ (id)keyPathForActiveComplications
{
  if (keyPathForActiveComplications_onceToken != -1)
  {
    +[_CDContextQueries keyPathForActiveComplications];
  }

  v3 = keyPathForActiveComplications_activeComplications;

  return v3;
}

+ (id)keyPathForPluginStatus
{
  if (keyPathForPluginStatus_onceToken != -1)
  {
    +[_CDContextQueries keyPathForPluginStatus];
  }

  v3 = keyPathForPluginStatus_pluginStatus;

  return v3;
}

+ (id)keyPathForKeybagLockStatus
{
  if (keyPathForKeybagLockStatus_onceToken != -1)
  {
    +[_CDContextQueries keyPathForKeybagLockStatus];
  }

  v3 = keyPathForKeybagLockStatus_keybagLockStatus;

  return v3;
}

+ (id)keyPathForDeviceLockStatus
{
  if (keyPathForDeviceLockStatus_onceToken != -1)
  {
    +[_CDContextQueries keyPathForDeviceLockStatus];
  }

  v3 = keyPathForDeviceLockStatus_deviceLockStatus;

  return v3;
}

+ (id)keyPathForBatteryLevel
{
  if (keyPathForBatteryLevel_onceToken != -1)
  {
    +[_CDContextQueries keyPathForBatteryLevel];
  }

  v3 = keyPathForBatteryLevel_batteryLevel;

  return v3;
}

+ (id)keyPathForLowPowerModeStatus
{
  if (keyPathForLowPowerModeStatus_onceToken != -1)
  {
    +[_CDContextQueries keyPathForLowPowerModeStatus];
  }

  v3 = keyPathForLowPowerModeStatus_lowPowerModeStatus;

  return v3;
}

+ (id)keyPathForBatteryStateDataDictionary
{
  if (keyPathForBatteryStateDataDictionary_onceToken != -1)
  {
    +[_CDContextQueries(BatteryState) keyPathForBatteryStateDataDictionary];
  }

  v3 = keyPathForBatteryStateDataDictionary_batteryData;

  return v3;
}

+ (id)keyPathForMotionState
{
  if (keyPathForMotionState_onceToken != -1)
  {
    +[_CDContextQueries keyPathForMotionState];
  }

  v3 = keyPathForMotionState_motionState;

  return v3;
}

+ (id)keyPathForCallInProgressStatus
{
  if (keyPathForCallInProgressStatus_onceToken != -1)
  {
    +[_CDContextQueries keyPathForCallInProgressStatus];
  }

  v3 = keyPathForCallInProgressStatus_callInProgressStatus;

  return v3;
}

+ (id)keyPathForCarplayConnectedStatus
{
  if (keyPathForCarplayConnectedStatus_onceToken != -1)
  {
    +[_CDContextQueries keyPathForCarplayConnectedStatus];
  }

  v3 = keyPathForCarplayConnectedStatus_carplayConnectedStatus;

  return v3;
}

+ (id)keyPathForThermalPressureLevel
{
  if (keyPathForThermalPressureLevel_onceToken != -1)
  {
    +[_CDContextQueries keyPathForThermalPressureLevel];
  }

  v3 = keyPathForThermalPressureLevel_thermalPressureLevel;

  return v3;
}

+ (id)keyPathForCPUUsageLevel
{
  if (keyPathForCPUUsageLevel_onceToken != -1)
  {
    +[_CDContextQueries keyPathForCPUUsageLevel];
  }

  v3 = keyPathForCPUUsageLevel_cpuUsageLevel;

  return v3;
}

+ (id)keyPathForInUseStatus
{
  if (keyPathForInUseStatus_onceToken != -1)
  {
    +[_CDContextQueries keyPathForInUseStatus];
  }

  v3 = keyPathForInUseStatus_inUseStatus;

  return v3;
}

+ (id)keyPathForNetworkingBudgetRemainingStatus
{
  if (keyPathForNetworkingBudgetRemainingStatus_onceToken != -1)
  {
    +[_CDContextQueries keyPathForNetworkingBudgetRemainingStatus];
  }

  v3 = keyPathForNetworkingBudgetRemainingStatus_networkingBudgetRemainingStatus;

  return v3;
}

+ (id)keyPathForEnergyBudgetRemainingStatus
{
  if (keyPathForEnergyBudgetRemainingStatus_onceToken != -1)
  {
    +[_CDContextQueries keyPathForEnergyBudgetRemainingStatus];
  }

  v3 = keyPathForEnergyBudgetRemainingStatus_energyBudgetRemainingStatus;

  return v3;
}

+ (id)keyPathForBacklightOnStatus
{
  if (keyPathForBacklightOnStatus_onceToken != -1)
  {
    +[_CDContextQueries keyPathForBacklightOnStatus];
  }

  v3 = keyPathForBacklightOnStatus_backlightOnStatus;

  return v3;
}

+ (id)keyPathForCircularLocationRegions
{
  if (keyPathForCircularLocationRegions_onceToken != -1)
  {
    +[_CDContextQueries(Location) keyPathForCircularLocationRegions];
  }

  v3 = keyPathForCircularLocationRegions_circularLocationRegionsKeyPath;

  return v3;
}

+ (id)keyPathForFirstWakeupStatus
{
  if (keyPathForFirstWakeupStatus_onceToken != -1)
  {
    +[_CDContextQueries keyPathForFirstWakeupStatus];
  }

  v3 = keyPathForFirstWakeupStatus_firstWakeup;

  return v3;
}

+ (id)keyPathForDeviceAssertionsHeldStatus
{
  if (keyPathForDeviceAssertionsHeldStatus_onceToken != -1)
  {
    +[_CDContextQueries keyPathForDeviceAssertionsHeldStatus];
  }

  v3 = keyPathForDeviceAssertionsHeldStatus_deviceAssertionsHeld;

  return v3;
}

+ (id)keyPathForSiriActiveStatus
{
  if (keyPathForSiriActiveStatus_onceToken != -1)
  {
    +[_CDContextQueries keyPathForSiriActiveStatus];
  }

  v3 = keyPathForSiriActiveStatus_siriActiveStatus;

  return v3;
}

+ (id)keyPathForMediaPlayingStatus
{
  if (keyPathForMediaPlayingStatus_onceToken != -1)
  {
    +[_CDContextQueries keyPathForMediaPlayingStatus];
  }

  v3 = keyPathForMediaPlayingStatus_mediaPlayingStatus;

  return v3;
}

+ (id)keyPathForNowPlayingDataDictionary
{
  if (keyPathForNowPlayingDataDictionary_onceToken != -1)
  {
    +[_CDContextQueries(NowPlaying) keyPathForNowPlayingDataDictionary];
  }

  v3 = keyPathForNowPlayingDataDictionary_nowPlayingData;

  return v3;
}

+ (id)keyPathForAudioOutputDataDictionary
{
  if (keyPathForAudioOutputDataDictionary_onceToken != -1)
  {
    +[_CDContextQueries(Audio) keyPathForAudioOutputDataDictionary];
  }

  v3 = keyPathForAudioOutputDataDictionary_audioData;

  return v3;
}

+ (id)keyPathForLastUseDate
{
  if (keyPathForLastUseDate_onceToken != -1)
  {
    +[_CDContextQueries keyPathForLastUseDate];
  }

  v3 = keyPathForLastUseDate_lastUseDate;

  return v3;
}

+ (id)keyPathForUserActivityDataDictionary
{
  if (keyPathForUserActivityDataDictionary_onceToken != -1)
  {
    +[_CDContextQueries(UserActivity) keyPathForUserActivityDataDictionary];
  }

  v3 = keyPathForUserActivityDataDictionary_intentsData;

  return v3;
}

+ (id)keyPathForIntentsDataDictionary
{
  if (keyPathForIntentsDataDictionary_onceToken != -1)
  {
    +[_CDContextQueries(Intents) keyPathForIntentsDataDictionary];
  }

  v3 = keyPathForIntentsDataDictionary_intentsData;

  return v3;
}

+ (id)keyPathForActiveCall
{
  if (keyPathForActiveCall_onceToken != -1)
  {
    +[_CDContextQueries(Calls) keyPathForActiveCall];
  }

  v3 = keyPathForActiveCall_keyPathForActiveCall;

  return v3;
}

+ (id)keyPathForDefaultPairedDeviceThermalPressureLevel
{
  if (keyPathForDefaultPairedDeviceThermalPressureLevel_onceToken != -1)
  {
    +[_CDContextQueries keyPathForDefaultPairedDeviceThermalPressureLevel];
  }

  v3 = keyPathForDefaultPairedDeviceThermalPressureLevel_defaultPairedThermalPressureLevel;

  return v3;
}

+ (id)keyPathForDefaultPairedDevicePluginStatus
{
  if (keyPathForDefaultPairedDevicePluginStatus_onceToken != -1)
  {
    +[_CDContextQueries keyPathForDefaultPairedDevicePluginStatus];
  }

  v3 = keyPathForDefaultPairedDevicePluginStatus_defaultPairedPluginStatus;

  return v3;
}

+ (id)keyPathForDefaultPairedDeviceBatteryLevel
{
  if (keyPathForDefaultPairedDeviceBatteryLevel_onceToken != -1)
  {
    +[_CDContextQueries keyPathForDefaultPairedDeviceBatteryLevel];
  }

  v3 = keyPathForDefaultPairedDeviceBatteryLevel_defaultPairedBatteryLevel;

  return v3;
}

+ (id)keyPathForHomeKitSceneDataDictionary
{
  if (keyPathForHomeKitSceneDataDictionary_onceToken != -1)
  {
    +[_CDContextQueries(HomeKitScene) keyPathForHomeKitSceneDataDictionary];
  }

  v3 = keyPathForHomeKitSceneDataDictionary_homeKitData;

  return v3;
}

+ (id)keyPathForRecentEmails
{
  if (keyPathForRecentEmails_onceToken != -1)
  {
    +[_CDContextQueries(Interactions) keyPathForRecentEmails];
  }

  v3 = keyPathForRecentEmails_incomingEmailsKeyPath;

  return v3;
}

+ (id)keyPathForRecentMessages
{
  if (keyPathForRecentMessages_onceToken != -1)
  {
    +[_CDContextQueries(Interactions) keyPathForRecentMessages];
  }

  v3 = keyPathForRecentMessages_messagesKeyPath;

  return v3;
}

+ (id)keyPathForLocationCoordinates
{
  if (keyPathForLocationCoordinates_onceToken != -1)
  {
    +[_CDContextQueries(LocationCoordinates) keyPathForLocationCoordinates];
  }

  v3 = keyPathForLocationCoordinates_locationCoordniateKeyPath;

  return v3;
}

+ (id)keyPathForAppRunningDataDictionaries
{
  if (keyPathForAppRunningDataDictionaries_onceToken != -1)
  {
    +[_CDContextQueries(AppUsage) keyPathForAppRunningDataDictionaries];
  }

  v3 = keyPathForAppRunningDataDictionaries_appActiveKeyPath;

  return v3;
}

+ (id)keyPathForAppMediaUsageDataDictionaries
{
  if (keyPathForAppMediaUsageDataDictionaries_onceToken != -1)
  {
    +[_CDContextQueries(AppMediaUsage) keyPathForAppMediaUsageDataDictionaries];
  }

  v3 = keyPathForAppMediaUsageDataDictionaries_usageKeyPath;

  return v3;
}

+ (id)keyPathForDisplayOnBeforeFirstUnlockOfTheDayStatus
{
  if (keyPathForDisplayOnBeforeFirstUnlockOfTheDayStatus_onceToken != -1)
  {
    +[_CDContextQueries keyPathForDisplayOnBeforeFirstUnlockOfTheDayStatus];
  }

  v3 = keyPathForDisplayOnBeforeFirstUnlockOfTheDayStatus_displayOnBeforeFirstUnlockOfTheDayStatus;

  return v3;
}

+ (id)keyPathForNextUserVisibleWakeDate
{
  if (keyPathForNextUserVisibleWakeDate_onceToken != -1)
  {
    +[_CDContextQueries keyPathForNextUserVisibleWakeDate];
  }

  v3 = keyPathForNextUserVisibleWakeDate_nextUserVisibleWakeDate;

  return v3;
}

+ (id)keyPathForNavigationStatus
{
  if (keyPathForNavigationStatus_onceToken != -1)
  {
    +[_CDContextQueries keyPathForNavigationStatus];
  }

  v3 = keyPathForNavigationStatus_navigationStatus;

  return v3;
}

+ (id)keyPathForCarConnectedStatus
{
  if (keyPathForCarConnectedStatus_onceToken != -1)
  {
    +[_CDContextQueries keyPathForCarConnectedStatus];
  }

  v3 = keyPathForCarConnectedStatus_carConnectedStatus;

  return v3;
}

+ (id)keyPathForDeviceID
{
  if (keyPathForDeviceID_onceToken != -1)
  {
    +[_CDContextQueries keyPathForDeviceID];
  }

  v3 = keyPathForDeviceID_deviceID;

  return v3;
}

+ (id)keyPathForDoNotDisturbStatus
{
  if (keyPathForDoNotDisturbStatus_onceToken != -1)
  {
    +[_CDContextQueries keyPathForDoNotDisturbStatus];
  }

  v3 = keyPathForDoNotDisturbStatus_doNotDisturbStatus;

  return v3;
}

+ (id)keyPathForAirplaneModeStatus
{
  if (keyPathForAirplaneModeStatus_onceToken != -1)
  {
    +[_CDContextQueries keyPathForAirplaneModeStatus];
  }

  v3 = keyPathForAirplaneModeStatus_airplaneModeStatus;

  return v3;
}

+ (id)keyPathForWiFiConnectionSSID
{
  if (keyPathForWiFiConnectionSSID_onceToken != -1)
  {
    +[_CDContextQueries keyPathForWiFiConnectionSSID];
  }

  v3 = keyPathForWiFiConnectionSSID_wifiConnectionSSIDKeyPath;

  return v3;
}

+ (id)keyPathForWiredConnectionQuality
{
  if (keyPathForWiredConnectionQuality_onceToken != -1)
  {
    +[_CDContextQueries keyPathForWiredConnectionQuality];
  }

  v3 = keyPathForWiredConnectionQuality_wiredConnectionQuality;

  return v3;
}

+ (id)predicateForWiredConnectionAvailability:(BOOL)a3
{
  v3 = a3;
  v4 = [a1 keyPathForWiredConnectionQuality];
  if (v3)
  {
    v5 = @"self.%@.value > 0";
  }

  else
  {
    v5 = @"self.%@.value == 0";
  }

  v6 = [_CDContextualPredicate predicateForKeyPath:v4 withFormat:v5, v4];

  return v6;
}

+ (id)keyPathForWiFiConnectionQuality
{
  if (keyPathForWiFiConnectionQuality_onceToken != -1)
  {
    +[_CDContextQueries keyPathForWiFiConnectionQuality];
  }

  v3 = keyPathForWiFiConnectionQuality_wifiConnectionQuality;

  return v3;
}

+ (id)predicateForWiFiConnectionAvailability:(BOOL)a3
{
  v3 = a3;
  v4 = [a1 keyPathForWiFiConnectionQuality];
  if (v3)
  {
    v5 = @"self.%@.value > 0";
  }

  else
  {
    v5 = @"self.%@.value == 0";
  }

  v6 = [_CDContextualPredicate predicateForKeyPath:v4 withFormat:v5, v4];

  return v6;
}

+ (id)keyPathForCellConnectionQuality
{
  if (keyPathForCellConnectionQuality_onceToken != -1)
  {
    +[_CDContextQueries keyPathForCellConnectionQuality];
  }

  v3 = keyPathForCellConnectionQuality_cellConnectionQuality;

  return v3;
}

+ (id)predicateForCellConnectionAvailability:(BOOL)a3
{
  v3 = a3;
  v4 = [a1 keyPathForCellConnectionQuality];
  if (v3)
  {
    v5 = @"self.%@.value > 0";
  }

  else
  {
    v5 = @"self.%@.value == 0";
  }

  v6 = [_CDContextualPredicate predicateForKeyPath:v4 withFormat:v5, v4];

  return v6;
}

+ (id)keyPathForWorkoutStatus
{
  if (keyPathForWorkoutStatus_onceToken != -1)
  {
    +[_CDContextQueries keyPathForWorkoutStatus];
  }

  v3 = keyPathForWorkoutStatus_workoutStatus;

  return v3;
}

+ (id)predicateForSystemTimeInInterval:(id)a3
{
  v4 = a3;
  v5 = [a1 keyPathForSystemTime];
  v6 = MEMORY[0x1E696AE18];
  v7 = [v4 startDate];
  v8 = [v4 endDate];
  v9 = [v6 predicateWithFormat:@"self.%@.value >= %@ AND self.%@.value <= %@", v5, v7, v5, v8];

  v10 = [_CDContextualPredicate predicateForKeyPath:v5 withPredicate:v9];
  v11 = [MEMORY[0x1E695DFB8] orderedSetWithObject:v4];

  [v10 setTimeBasedPredicateEvaluationIntervals:v11];

  return v10;
}

+ (id)predicateForSystemTime:(id)a3
{
  v4 = MEMORY[0x1E696AB80];
  v5 = a3;
  v6 = [v4 alloc];
  v7 = [MEMORY[0x1E695DF00] distantFuture];
  v8 = [v6 initWithStartDate:v5 endDate:v7];

  v9 = [a1 predicateForSystemTimeInInterval:v8];

  return v9;
}

+ (id)predicateForSystemTime:(id)a3 gracePeriod:(double)a4
{
  v6 = [a3 dateByAddingTimeInterval:-a4];
  v7 = [objc_alloc(MEMORY[0x1E696AB80]) initWithStartDate:v6 duration:a4 + a4];
  v8 = [a1 predicateForSystemTimeInInterval:v7];

  return v8;
}

+ (id)keyPathForLowBattery
{
  if (keyPathForLowBattery_onceToken != -1)
  {
    +[_CDContextQueries keyPathForLowBattery];
  }

  v3 = keyPathForLowBattery_lowBattery;

  return v3;
}

+ (id)predicateForBatteryLevel:(id)a3
{
  v4 = a3;
  v5 = [a1 keyPathForBatteryLevel];
  v6 = [_CDContextualPredicate predicateForKeyPath:v5 withFormat:@"self.%@.value == %@", v5, v4];

  return v6;
}

+ (id)keyPathForNearbyLOIIdentifiers
{
  if (keyPathForNearbyLOIIdentifiers_onceToken != -1)
  {
    +[_CDContextQueries keyPathForNearbyLOIIdentifiers];
  }

  v3 = keyPathForNearbyLOIIdentifiers_nearbyLoiIdentifiers;

  return v3;
}

+ (id)keyPathForDefaultPairedDeviceNearbyStatus
{
  if (keyPathForDefaultPairedDeviceNearbyStatus_onceToken != -1)
  {
    +[_CDContextQueries keyPathForDefaultPairedDeviceNearbyStatus];
  }

  v3 = keyPathForDefaultPairedDeviceNearbyStatus_defaultPairedNearbyStatus;

  return v3;
}

+ (id)keyPathForWatchActiveStatus
{
  if (keyPathForWatchActiveStatus_onceToken != -1)
  {
    +[_CDContextQueries keyPathForWatchActiveStatus];
  }

  v3 = keyPathForWatchActiveStatus_defaultPairedActiveStatus;

  return v3;
}

+ (id)keyPathForDefaultPairedDeviceWiFiWiredQuality
{
  if (keyPathForDefaultPairedDeviceWiFiWiredQuality_onceToken != -1)
  {
    +[_CDContextQueries keyPathForDefaultPairedDeviceWiFiWiredQuality];
  }

  v3 = keyPathForDefaultPairedDeviceWiFiWiredQuality_defaultPairedWiFiWiredQuality;

  return v3;
}

+ (id)keyPathForDefaultPairedDeviceCellQuality
{
  if (keyPathForDefaultPairedDeviceCellQuality_onceToken != -1)
  {
    +[_CDContextQueries keyPathForDefaultPairedDeviceCellQuality];
  }

  v3 = keyPathForDefaultPairedDeviceCellQuality_defaultPairedCellQuality;

  return v3;
}

+ (id)predicateForCircularLocationRegion:(id)a3 state:(int64_t)a4
{
  v6 = a3;
  if (v6)
  {
    v25 = [a1 keyPathForCircularLocationRegions];
    v7 = MEMORY[0x1E696AE18];
    v8 = v6;
    v9 = +[_CDContextQueries keyPathForCircularLocationRegions];
    v10 = +[_CDContextQueries regionIdentifierKey];
    v11 = [v8 identifier];

    v12 = +[_CDContextQueries regionStateKey];
    v13 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
    v14 = [v7 predicateWithFormat:@"SUBQUERY(self.%@.value, $regionInfo, $regionInfo.%K == %@ AND $regionInfo.%K == %@).@count > 0", v9, v10, v11, v12, v13];

    if ((a4 - 1) > 1)
    {
      v21 = 0;
    }

    else
    {
      if (a4 == 1)
      {
        v15 = 2;
      }

      else
      {
        v15 = 1;
      }

      v16 = MEMORY[0x1E696AE18];
      v17 = +[_CDContextQueries regionIdentifierKey];
      v18 = [v8 identifier];
      v19 = +[_CDContextQueries regionStateKey];
      v20 = [MEMORY[0x1E696AD98] numberWithInteger:v15];
      v21 = [v16 predicateWithFormat:@"SUBQUERY(SELF.value, $regionInfo, $regionInfo.%K == %@ AND $regionInfo.%K == %@).@count > 0", v17, v18, v19, v20];
    }

    v22 = [_CDContextualPredicate predicateForKeyPath:v25 withPredicate:v14 withPredicateForPreviousState:v21 withMinimumDurationInPreviousState:0.0];
    v23 = [MEMORY[0x1E695DFD8] setWithObject:v8];
    [v22 setCircularLocationRegions:v23];
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

+ (id)keyPathForHomeKitAccessoryDataDictionary
{
  if (keyPathForHomeKitAccessoryDataDictionary_onceToken != -1)
  {
    +[_CDContextQueries(HomeKitAccessory) keyPathForHomeKitAccessoryDataDictionary];
  }

  v3 = keyPathForHomeKitAccessoryDataDictionary_homeKitData;

  return v3;
}

+ (id)keyPathForAppClipLaunch
{
  if (keyPathForAppClipLaunch_onceToken != -1)
  {
    +[_CDContextQueries(Application) keyPathForAppClipLaunch];
  }

  v3 = keyPathForAppClipLaunch_appClipLaunchKeyPath;

  return v3;
}

+ (id)keyPathForPredictedLocationOfInterestTransitions
{
  if (keyPathForPredictedLocationOfInterestTransitions_onceToken != -1)
  {
    +[_CDContextQueries(Routine) keyPathForPredictedLocationOfInterestTransitions];
  }

  v3 = keyPathForPredictedLocationOfInterestTransitions_predictedLocationOfInterestTransitionsKeyPath;

  return v3;
}

+ (id)keyPathForWorkoutDataDictionary
{
  if (keyPathForWorkoutDataDictionary_onceToken != -1)
  {
    +[_CDContextQueries(Workout) keyPathForWorkoutDataDictionary];
  }

  v3 = keyPathForWorkoutDataDictionary_workoutData;

  return v3;
}

+ (id)keyPathForHomeKitAppViewDataDictionary
{
  if (keyPathForHomeKitAppViewDataDictionary_onceToken != -1)
  {
    +[_CDContextQueries(HomeKitAppView) keyPathForHomeKitAppViewDataDictionary];
  }

  v3 = keyPathForHomeKitAppViewDataDictionary_homeKitData;

  return v3;
}

+ (id)keyPathForSunriseSunsetDataDictionary
{
  if (keyPathForSunriseSunsetDataDictionary_onceToken != -1)
  {
    +[_CDContextQueries(SunriseSunset) keyPathForSunriseSunsetDataDictionary];
  }

  v3 = keyPathForSunriseSunsetDataDictionary_sunriseSunsetData;

  return v3;
}

+ (id)keyPathForBluetoothDataDictionary
{
  if (keyPathForBluetoothDataDictionary_onceToken != -1)
  {
    +[_CDContextQueries(Bluetooth) keyPathForBluetoothDataDictionary];
  }

  v3 = keyPathForBluetoothDataDictionary_bluetoothData;

  return v3;
}

+ (id)keyPathForNFCTagIdentifiers
{
  if (keyPathForNFCTagIdentifiers_onceToken != -1)
  {
    +[_CDContextQueries(NFC) keyPathForNFCTagIdentifiers];
  }

  v3 = keyPathForNFCTagIdentifiers_NFCTagIdentifiersKeyPath;

  return v3;
}

+ (id)keyPathForMDCSProxies
{
  if (keyPathForMDCSProxies_onceToken != -1)
  {
    +[_CDContextQueries(MDCS) keyPathForMDCSProxies];
  }

  v3 = keyPathForMDCSProxies_proxiesKeyPath;

  return v3;
}

+ (id)keyPathForMDCSProxyTokenWithUserID:(id)a3
{
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"/private/sync/proxy/%@/token", a3];
  v4 = [_CDContextualKeyPath ephemeralKeyPathWithKey:v3];

  return v4;
}

+ (id)keyPathForMDCSProxySourceDeviceUUIDWithUserID:(id)a3
{
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"/private/sync/proxy/%@/uuid", a3];
  v4 = [_CDContextualKeyPath keyPathWithKey:v3];

  return v4;
}

+ (id)keyPathForMDCSUserIDWithProxySourceDeviceUUID:(id)a3
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [a3 UUIDString];
  v5 = [v3 stringWithFormat:@"/private/sync/proxy/%@/uid", v4];

  v6 = [_CDContextualKeyPath keyPathWithKey:v5];

  return v6;
}

+ (id)keyPathForMDCSDevicesWithProxySourceDeviceUUID:(id)a3
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [a3 UUIDString];
  v5 = [v3 stringWithFormat:@"/private/sync/proxy/%@/no-longer-supported/devices", v4];

  v6 = [_CDContextualKeyPath keyPathWithKey:v5];

  return v6;
}

+ (id)keyPathForMDCSDeviceIDsWithProxySourceDeviceUUID:(id)a3
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [a3 UUIDString];
  v5 = [v3 stringWithFormat:@"/private/sync/proxy/%@/devices", v4];

  v6 = [_CDContextualKeyPath ephemeralKeyPathWithKey:v5];

  return v6;
}

+ (id)predicateForMDCSDevicesWithDeviceTypes:(unint64_t)a3
{
  v3 = a3;
  v5 = objc_alloc(MEMORY[0x1E696AFB0]);
  v6 = +[_CDDevice localDevice];
  v7 = [v6 deviceID];
  v8 = [v5 initWithUUIDString:v7];

  v9 = [a1 keyPathForMDCSDevicesWithProxySourceDeviceUUID:v8];
  v10 = [MEMORY[0x1E695DF70] array];
  v11 = v10;
  if (v3)
  {
    [v10 addObject:&unk_1F1D19140];
    if ((v3 & 2) == 0)
    {
LABEL_3:
      if ((v3 & 0x40) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((v3 & 2) == 0)
  {
    goto LABEL_3;
  }

  [v11 addObject:&unk_1F1D19158];
  if ((v3 & 0x40) == 0)
  {
LABEL_4:
    if ((v3 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  [v11 addObject:&unk_1F1D19170];
  if ((v3 & 8) == 0)
  {
LABEL_5:
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  [v11 addObject:&unk_1F1D19188];
  if ((v3 & 0x10) == 0)
  {
LABEL_6:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  [v11 addObject:&unk_1F1D191A0];
  if ((v3 & 0x20) == 0)
  {
LABEL_7:
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_17:
  [v11 addObject:&unk_1F1D191B8];
  if ((v3 & 0x80) != 0)
  {
LABEL_8:
    [v11 addObject:&unk_1F1D191D0];
  }

LABEL_9:
  v12 = [MEMORY[0x1E696AE18] predicateWithFormat:@"SUBQUERY(SELF.value, $device, $device.deviceClass IN %@ AND $device.companion == %@).@count > 0", v11, HIBYTE(v3) & 1];
  v13 = [_CDContextualPredicate predicateForKeyPath:v9 withPredicate:v12];

  return v13;
}

+ (BOOL)isMDCSKeyPath:(id)a3
{
  v3 = [a3 key];
  v4 = [v3 hasPrefix:@"/private/sync/"];

  return v4;
}

+ (id)keyPathForCurrentAlarms
{
  if (keyPathForCurrentAlarms_onceToken != -1)
  {
    +[_CDContextQueries(Alarm) keyPathForCurrentAlarms];
  }

  v3 = keyPathForCurrentAlarms_keyPathForCurrentAlarms;

  return v3;
}

+ (id)keyPathForNextAlarm
{
  if (keyPathForNextAlarm_onceToken != -1)
  {
    +[_CDContextQueries(Alarm) keyPathForNextAlarm];
  }

  v3 = keyPathForNextAlarm_keyPathForNextAlarm;

  return v3;
}

+ (id)keyPathForCurrentTimers
{
  if (keyPathForCurrentTimers_onceToken != -1)
  {
    +[_CDContextQueries(Alarm) keyPathForCurrentTimers];
  }

  v3 = keyPathForCurrentTimers_keyPathForCurrentTimers;

  return v3;
}

+ (id)keyPathForSiriServiceDataDictionary
{
  if (keyPathForSiriServiceDataDictionary_onceToken != -1)
  {
    +[_CDContextQueries(SiriService) keyPathForSiriServiceDataDictionary];
  }

  v3 = keyPathForSiriServiceDataDictionary_keyPathForSiriServiceDataDictionary;

  return v3;
}

+ (id)keyPathForMostRecentSafariSpotlightDonation
{
  if (keyPathForMostRecentSafariSpotlightDonation_onceToken != -1)
  {
    +[_CDContextQueries(SafariSpotlightDonation) keyPathForMostRecentSafariSpotlightDonation];
  }

  v3 = keyPathForMostRecentSafariSpotlightDonation_keyPathForMostRecentSafariSpotlightDonation;

  return v3;
}

+ (id)keyPathForSleepStateDictionary
{
  if (keyPathForSleepStateDictionary_onceToken != -1)
  {
    +[_CDContextQueries(Sleep) keyPathForSleepStateDictionary];
  }

  v3 = keyPathForSleepStateDictionary_keyPathForSleepState;

  return v3;
}

+ (id)keyPathForDoNotDisturbStatusDataDictionary
{
  if (keyPathForDoNotDisturbStatusDataDictionary_onceToken != -1)
  {
    +[_CDContextQueries(DoNotDisturb) keyPathForDoNotDisturbStatusDataDictionary];
  }

  v3 = keyPathForDoNotDisturbStatusDataDictionary_doNotDisturbData;

  return v3;
}

@end