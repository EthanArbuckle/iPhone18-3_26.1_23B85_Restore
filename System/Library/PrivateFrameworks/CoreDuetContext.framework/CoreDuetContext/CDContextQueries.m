@interface CDContextQueries
@end

@implementation CDContextQueries

uint64_t __71___CDContextQueries_UserActivity__keyPathForUserActivityDataDictionary__block_invoke()
{
  keyPathForUserActivityDataDictionary_intentsData = [_CDContextualKeyPath ephemeralKeyPathWithKey:@"/app/activity/dataDictionary"];

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __71___CDContextQueries_HomeKitScene__keyPathForHomeKitSceneDataDictionary__block_invoke()
{
  keyPathForHomeKitSceneDataDictionary_homeKitData = [_CDContextualKeyPath keyPathWithKey:@"/homeKitScene/dataDictionary"];

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __57___CDContextQueries_Interactions__keyPathForRecentEmails__block_invoke()
{
  v0 = [_CDContextualKeyPath ephemeralKeyPathWithKey:@"/interactions/emails"];
  v1 = keyPathForRecentEmails_incomingEmailsKeyPath;
  keyPathForRecentEmails_incomingEmailsKeyPath = v0;

  v2 = keyPathForRecentEmails_incomingEmailsKeyPath;

  return [v2 setSensitiveContents:1];
}

uint64_t __59___CDContextQueries_Interactions__keyPathForRecentMessages__block_invoke()
{
  v0 = [_CDContextualKeyPath ephemeralKeyPathWithKey:@"/interactions/messages"];
  v1 = keyPathForRecentMessages_messagesKeyPath;
  keyPathForRecentMessages_messagesKeyPath = v0;

  v2 = keyPathForRecentMessages_messagesKeyPath;

  return [v2 setSensitiveContents:1];
}

uint64_t __71___CDContextQueries_LocationCoordinates__keyPathForLocationCoordinates__block_invoke()
{
  keyPathForLocationCoordinates_locationCoordniateKeyPath = [_CDContextualKeyPath keyPathWithKey:@"/location/coordinates"];

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __65___CDContextQueries_AppUsage__keyPathForAppUsageDataDictionaries__block_invoke()
{
  keyPathForAppUsageDataDictionaries_appUsageKeyPath = [_CDContextualKeyPath ephemeralKeyPathWithKey:@"/app/usage"];

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __67___CDContextQueries_AppUsage__keyPathForAppRunningDataDictionaries__block_invoke()
{
  keyPathForAppRunningDataDictionaries_appActiveKeyPath = [_CDContextualKeyPath ephemeralKeyPathWithKey:@"/app/running"];

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __71___CDContextQueries_AppWebUsage__keyPathForAppWebUsageDataDictionaries__block_invoke()
{
  v0 = [_CDContextualKeyPath ephemeralKeyPathWithKey:@"/app/webUsage"];
  v1 = keyPathForAppWebUsageDataDictionaries_appWebUsageKeyPath;
  keyPathForAppWebUsageDataDictionaries_appWebUsageKeyPath = v0;

  v2 = keyPathForAppWebUsageDataDictionaries_appWebUsageKeyPath;

  return [v2 setSensitiveContents:1];
}

uint64_t __75___CDContextQueries_AppMediaUsage__keyPathForAppMediaUsageDataDictionaries__block_invoke()
{
  keyPathForAppMediaUsageDataDictionaries_usageKeyPath = [_CDContextualKeyPath ephemeralKeyPathWithKey:@"/app/mediaUsage"];

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __71___CDContextQueries_BatteryState__keyPathForBatteryStateDataDictionary__block_invoke()
{
  keyPathForBatteryStateDataDictionary_batteryData = [_CDContextualKeyPath keyPathWithKey:@"/system/battery/dataDictionary"];

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __42___CDContextQueries_keyPathForInUseStatus__block_invoke()
{
  keyPathForInUseStatus_inUseStatus = [_CDContextualKeyPath keyPathWithKey:@"/system/inUse"];

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __42___CDContextQueries_keyPathForLastUseDate__block_invoke()
{
  keyPathForLastUseDate_lastUseDate = [_CDContextualKeyPath keyPathWithKey:@"/system/inUse/date"];

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __44___CDContextQueries_keyPathForForegroundApp__block_invoke()
{
  keyPathForForegroundApp_foregroundApp = [_CDContextualKeyPath keyPathWithKey:@"/app/inFocus"];

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __51___CDContextQueries_keyPathForCallInProgressStatus__block_invoke()
{
  keyPathForCallInProgressStatus_callInProgressStatus = [_CDContextualKeyPath keyPathWithKey:@"/call/inProgress"];

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __48___CDContextQueries_keyPathForBacklightOnStatus__block_invoke()
{
  keyPathForBacklightOnStatus_backlightOnStatus = [_CDContextualKeyPath keyPathWithKey:@"/system/isBacklit"];

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __71___CDContextQueries_keyPathForDisplayOnBeforeFirstUnlockOfTheDayStatus__block_invoke()
{
  keyPathForDisplayOnBeforeFirstUnlockOfTheDayStatus_displayOnBeforeFirstUnlockOfTheDayStatus = [_CDContextualKeyPath keyPathWithKey:@"/system/displayOnBeforeFirstUnlockOfTheDay"];

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __57___CDContextQueries_keyPathForDeviceAssertionsHeldStatus__block_invoke()
{
  keyPathForDeviceAssertionsHeldStatus_deviceAssertionsHeld = [_CDContextualKeyPath keyPathWithKey:@"/system/deviceAssertionsHeld"];

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __54___CDContextQueries_keyPathForNextUserVisibleWakeDate__block_invoke()
{
  keyPathForNextUserVisibleWakeDate_nextUserVisibleWakeDate = [_CDContextualKeyPath keyPathWithKey:@"/system/nextUserVisibleWake"];

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __48___CDContextQueries_keyPathForFirstWakeupStatus__block_invoke()
{
  keyPathForFirstWakeupStatus_firstWakeup = [_CDContextualKeyPath keyPathWithKey:@"/system/firstBacklightAfterWakeup"];

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __47___CDContextQueries_keyPathForDeviceLockStatus__block_invoke()
{
  keyPathForDeviceLockStatus_deviceLockStatus = [_CDContextualKeyPath keyPathWithKey:@"/system/isLocked"];

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __47___CDContextQueries_keyPathForKeybagLockStatus__block_invoke()
{
  keyPathForKeybagLockStatus_keybagLockStatus = [_CDContextualKeyPath keyPathWithKey:@"/keybag/isLocked"];

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __49___CDContextQueries_keyPathForMediaPlayingStatus__block_invoke()
{
  keyPathForMediaPlayingStatus_mediaPlayingStatus = [_CDContextualKeyPath keyPathWithKey:@"/media/nowPlaying"];

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __47___CDContextQueries_keyPathForNavigationStatus__block_invoke()
{
  keyPathForNavigationStatus_navigationStatus = [_CDContextualKeyPath keyPathWithKey:@"/maps/navigationInProgress"];

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __49___CDContextQueries_keyPathForCarConnectedStatus__block_invoke()
{
  keyPathForCarConnectedStatus_carConnectedStatus = [_CDContextualKeyPath keyPathWithKey:@"/car/isConnected"];

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __47___CDContextQueries_keyPathForSiriActiveStatus__block_invoke()
{
  keyPathForSiriActiveStatus_siriActiveStatus = [_CDContextualKeyPath keyPathWithKey:@"/siri/isActive"];

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __41___CDContextQueries_keyPathForDeviceName__block_invoke()
{
  keyPathForDeviceName_deviceName = [_CDContextualKeyPath keyPathWithKey:@"/system/deviceName"];

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __39___CDContextQueries_keyPathForDeviceID__block_invoke()
{
  keyPathForDeviceID_deviceID = [_CDContextualKeyPath keyPathWithKey:@"/system/deviceID"];

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __49___CDContextQueries_keyPathForLowPowerModeStatus__block_invoke()
{
  keyPathForLowPowerModeStatus_lowPowerModeStatus = [_CDContextualKeyPath keyPathWithKey:@"/system/batterySaver"];

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __49___CDContextQueries_keyPathForDoNotDisturbStatus__block_invoke()
{
  keyPathForDoNotDisturbStatus_doNotDisturbStatus = [_CDContextualKeyPath keyPathWithKey:@"/system/doNotDisturb"];

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __49___CDContextQueries_keyPathForAirplaneModeStatus__block_invoke()
{
  keyPathForAirplaneModeStatus_airplaneModeStatus = [_CDContextualKeyPath keyPathWithKey:@"/system/airplaneMode"];

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __49___CDContextQueries_keyPathForWiFiConnectionSSID__block_invoke()
{
  keyPathForWiFiConnectionSSID_wifiConnectionSSIDKeyPath = [_CDContextualKeyPath keyPathWithKey:@"/system/wifi/ssid"];

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __53___CDContextQueries_keyPathForWiredConnectionQuality__block_invoke()
{
  keyPathForWiredConnectionQuality_wiredConnectionQuality = [_CDContextualKeyPath keyPathWithKey:@"/system/wired/quality"];

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __52___CDContextQueries_keyPathForWiFiConnectionQuality__block_invoke()
{
  keyPathForWiFiConnectionQuality_wifiConnectionQuality = [_CDContextualKeyPath keyPathWithKey:@"/system/wifi/quality"];

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __52___CDContextQueries_keyPathForCellConnectionQuality__block_invoke()
{
  keyPathForCellConnectionQuality_cellConnectionQuality = [_CDContextualKeyPath keyPathWithKey:@"/system/cell/quality"];

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __53___CDContextQueries_keyPathForCarplayConnectedStatus__block_invoke()
{
  keyPathForCarplayConnectedStatus_carplayConnectedStatus = [_CDContextualKeyPath keyPathWithKey:@"/carplay/isConnected"];

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __44___CDContextQueries_keyPathForWorkoutStatus__block_invoke()
{
  keyPathForWorkoutStatus_workoutStatus = [_CDContextualKeyPath keyPathWithKey:@"/workout/inProgress"];

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __42___CDContextQueries_keyPathForMotionState__block_invoke()
{
  keyPathForMotionState_motionState = [_CDContextualKeyPath keyPathWithKey:@"/system/motionState"];

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __41___CDContextQueries_keyPathForSystemTime__block_invoke()
{
  keyPathForSystemTime_systemTime = [_CDContextualKeyPath keyPathWithKey:@"/system/time"];

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __41___CDContextQueries_keyPathForLowBattery__block_invoke()
{
  keyPathForLowBattery_lowBattery = [_CDContextualKeyPath keyPathWithKey:@"/system/lowBattery"];

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __43___CDContextQueries_keyPathForBatteryLevel__block_invoke()
{
  keyPathForBatteryLevel_batteryLevel = [_CDContextualKeyPath keyPathWithKey:@"/system/batteryPercentage"];

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __43___CDContextQueries_keyPathForPluginStatus__block_invoke()
{
  keyPathForPluginStatus_pluginStatus = [_CDContextualKeyPath keyPathWithKey:@"/system/isPluggedIn"];

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __51___CDContextQueries_keyPathForThermalPressureLevel__block_invoke()
{
  keyPathForThermalPressureLevel_thermalPressureLevel = [_CDContextualKeyPath keyPathWithKey:@"/system/thermalpressure"];

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __44___CDContextQueries_keyPathForCPUUsageLevel__block_invoke()
{
  keyPathForCPUUsageLevel_cpuUsageLevel = [_CDContextualKeyPath keyPathWithKey:@"/system/cpuusage"];

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __51___CDContextQueries_keyPathForNearbyLOIIdentifiers__block_invoke()
{
  keyPathForNearbyLOIIdentifiers_nearbyLoiIdentifiers = [_CDContextualKeyPath keyPathWithKey:@"/inferred/locationVisit"];

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __58___CDContextQueries_keyPathForEnergyBudgetRemainingStatus__block_invoke()
{
  keyPathForEnergyBudgetRemainingStatus_energyBudgetRemainingStatus = [_CDContextualKeyPath keyPathWithKey:@"/system/budgets/energy"];

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __62___CDContextQueries_keyPathForNetworkingBudgetRemainingStatus__block_invoke()
{
  keyPathForNetworkingBudgetRemainingStatus_networkingBudgetRemainingStatus = [_CDContextualKeyPath keyPathWithKey:@"/system/budgets/networking"];

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __62___CDContextQueries_keyPathForDefaultPairedDeviceNearbyStatus__block_invoke()
{
  keyPathForDefaultPairedDeviceNearbyStatus_defaultPairedNearbyStatus = [_CDContextualKeyPath keyPathWithKey:@"/defaultPaired/nearby"];

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __48___CDContextQueries_keyPathForWatchActiveStatus__block_invoke()
{
  keyPathForWatchActiveStatus_defaultPairedActiveStatus = [_CDContextualKeyPath keyPathWithKey:@"/watch/active"];

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __62___CDContextQueries_keyPathForDefaultPairedDeviceBatteryLevel__block_invoke()
{
  keyPathForDefaultPairedDeviceBatteryLevel_defaultPairedBatteryLevel = [_CDContextualKeyPath ephemeralKeyPathWithKey:@"/defaultPaired/batteryPercentage"];

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __62___CDContextQueries_keyPathForDefaultPairedDevicePluginStatus__block_invoke()
{
  keyPathForDefaultPairedDevicePluginStatus_defaultPairedPluginStatus = [_CDContextualKeyPath ephemeralKeyPathWithKey:@"/defaultPaired/isPluggedIn"];

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __70___CDContextQueries_keyPathForDefaultPairedDeviceThermalPressureLevel__block_invoke()
{
  keyPathForDefaultPairedDeviceThermalPressureLevel_defaultPairedThermalPressureLevel = [_CDContextualKeyPath ephemeralKeyPathWithKey:@"/defaultPaired/thermalpressure"];

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __63___CDContextQueries_keyPathForDefaultPairedDeviceForegroundApp__block_invoke()
{
  keyPathForDefaultPairedDeviceForegroundApp_defaultPairedForegroundApp = [_CDContextualKeyPath ephemeralKeyPathWithKey:@"/defaultPaired/foregroundApp"];

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __50___CDContextQueries_keyPathForActiveComplications__block_invoke()
{
  keyPathForActiveComplications_activeComplications = [_CDContextualKeyPath ephemeralKeyPathWithKey:@"/watch/activeComplications"];

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __66___CDContextQueries_keyPathForDefaultPairedDeviceWiFiWiredQuality__block_invoke()
{
  keyPathForDefaultPairedDeviceWiFiWiredQuality_defaultPairedWiFiWiredQuality = [_CDContextualKeyPath ephemeralKeyPathWithKey:@"/defaultPaired/wifiQuality"];

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __61___CDContextQueries_keyPathForDefaultPairedDeviceCellQuality__block_invoke()
{
  keyPathForDefaultPairedDeviceCellQuality_defaultPairedCellQuality = [_CDContextualKeyPath ephemeralKeyPathWithKey:@"/defaultPaired/cellQuality"];

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __61___CDContextQueries_Intents__keyPathForIntentsDataDictionary__block_invoke()
{
  keyPathForIntentsDataDictionary_intentsData = [_CDContextualKeyPath ephemeralKeyPathWithKey:@"/intents/dataDictionary"];

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __64___CDContextQueries_Location__keyPathForCircularLocationRegions__block_invoke()
{
  keyPathForCircularLocationRegions_circularLocationRegionsKeyPath = [_CDContextualKeyPath keyPathWithKey:@"/location/circularRegions"];

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __79___CDContextQueries_HomeKitAccessory__keyPathForHomeKitAccessoryDataDictionary__block_invoke()
{
  keyPathForHomeKitAccessoryDataDictionary_homeKitData = [_CDContextualKeyPath keyPathWithKey:@"/homeKitAccessory/dataDictionary"];

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __61___CDContextQueries_Application__keyPathForAppDataDictionary__block_invoke()
{
  keyPathForAppDataDictionary_appData = [_CDContextualKeyPath ephemeralKeyPathWithKey:@"/app/dataDictionary"];

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __57___CDContextQueries_Application__keyPathForAppClipLaunch__block_invoke()
{
  keyPathForAppClipLaunch_appClipLaunchKeyPath = [_CDContextualKeyPath ephemeralKeyPathWithKey:@"/appClip/launch"];

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __78___CDContextQueries_Routine__keyPathForPredictedLocationOfInterestTransitions__block_invoke()
{
  keyPathForPredictedLocationOfInterestTransitions_predictedLocationOfInterestTransitionsKeyPath = [_CDContextualKeyPath keyPathWithKey:@"/routine/predictedLocationOfInterestTransitions"];

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __48___CDContextQueries_Calls__keyPathForActiveCall__block_invoke()
{
  keyPathForActiveCall_keyPathForActiveCall = [_CDContextualKeyPath keyPathWithKey:@"/interactions/activeCall"];

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __67___CDContextQueries_NowPlaying__keyPathForNowPlayingDataDictionary__block_invoke()
{
  keyPathForNowPlayingDataDictionary_nowPlayingData = [_CDContextualKeyPath ephemeralKeyPathWithKey:@"/nowPlaying/dataDictionary"];

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __63___CDContextQueries_Audio__keyPathForAudioOutputDataDictionary__block_invoke()
{
  keyPathForAudioOutputDataDictionary_audioData = [_CDContextualKeyPath keyPathWithKey:@"/audioOutput/dataDictionary"];

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __76___CDContextQueries_IDSTrafficPolicy__keyPathForServicesAppearingForeground__block_invoke()
{
  keyPathForServicesAppearingForeground_servicesAppearingForeground = [_CDContextualKeyPath keyPathWithKey:@"/ids/app/foregroundServices"];

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __89___CDContextQueries_IDSTrafficPolicy__keyPathForDefaultPairedServicesAppearingForeground__block_invoke()
{
  keyPathForDefaultPairedServicesAppearingForeground_defaultPairedServicesAppearingForeground = [_CDContextualKeyPath keyPathWithKey:@"/ids/remote/app/foregroundServices"];

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __61___CDContextQueries_Workout__keyPathForWorkoutDataDictionary__block_invoke()
{
  keyPathForWorkoutDataDictionary_workoutData = [_CDContextualKeyPath keyPathWithKey:@"/workout/dataDictionary"];

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __75___CDContextQueries_HomeKitAppView__keyPathForHomeKitAppViewDataDictionary__block_invoke()
{
  keyPathForHomeKitAppViewDataDictionary_homeKitData = [_CDContextualKeyPath keyPathWithKey:@"/homeKitAppView/dataDictionary"];

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __73___CDContextQueries_SunriseSunset__keyPathForSunriseSunsetDataDictionary__block_invoke()
{
  keyPathForSunriseSunsetDataDictionary_sunriseSunsetData = [_CDContextualKeyPath ephemeralKeyPathWithKey:@"/sunriseSunset/dataDictionary"];

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __65___CDContextQueries_Bluetooth__keyPathForBluetoothDataDictionary__block_invoke()
{
  keyPathForBluetoothDataDictionary_bluetoothData = [_CDContextualKeyPath keyPathWithKey:@"/bluetooth/dataDictionary"];

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __53___CDContextQueries_NFC__keyPathForNFCTagIdentifiers__block_invoke()
{
  keyPathForNFCTagIdentifiers_NFCTagIdentifiersKeyPath = [_CDContextualKeyPath ephemeralKeyPathWithKey:@"/system/nfcTags"];

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __48___CDContextQueries_MDCS__keyPathForMDCSProxies__block_invoke()
{
  keyPathForMDCSProxies_proxiesKeyPath = [_CDContextualKeyPath keyPathWithKey:@"/private/sync/proxies"];

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __51___CDContextQueries_Alarm__keyPathForCurrentAlarms__block_invoke()
{
  keyPathForCurrentAlarms_keyPathForCurrentAlarms = [_CDContextualKeyPath ephemeralKeyPathWithKey:@"/system/currentAlarms"];

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __47___CDContextQueries_Alarm__keyPathForNextAlarm__block_invoke()
{
  keyPathForNextAlarm_keyPathForNextAlarm = [_CDContextualKeyPath keyPathWithKey:@"/system/nextAlarm"];

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __51___CDContextQueries_Alarm__keyPathForCurrentTimers__block_invoke()
{
  keyPathForCurrentTimers_keyPathForCurrentTimers = [_CDContextualKeyPath ephemeralKeyPathWithKey:@"/system/currentTimers"];

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __69___CDContextQueries_SiriService__keyPathForSiriServiceDataDictionary__block_invoke()
{
  keyPathForSiriServiceDataDictionary_keyPathForSiriServiceDataDictionary = [_CDContextualKeyPath ephemeralKeyPathWithKey:@"/siri/service/dataDictionary"];

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __89___CDContextQueries_SafariSpotlightDonation__keyPathForMostRecentSafariSpotlightDonation__block_invoke()
{
  keyPathForMostRecentSafariSpotlightDonation_keyPathForMostRecentSafariSpotlightDonation = [_CDContextualKeyPath ephemeralKeyPathWithKey:@"/safari/mostRecentCSSI"];

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __58___CDContextQueries_Sleep__keyPathForSleepStateDictionary__block_invoke()
{
  keyPathForSleepStateDictionary_keyPathForSleepState = [_CDContextualKeyPath keyPathWithKey:@"/system/currentSleepState"];

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __77___CDContextQueries_DoNotDisturb__keyPathForDoNotDisturbStatusDataDictionary__block_invoke()
{
  keyPathForDoNotDisturbStatusDataDictionary_doNotDisturbData = [_CDContextualKeyPath keyPathWithKey:@"/system/doNotDisturb/dataDictionary"];

  return MEMORY[0x1EEE66BB8]();
}

@end