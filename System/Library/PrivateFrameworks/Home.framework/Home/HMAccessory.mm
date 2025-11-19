@interface HMAccessory
@end

@implementation HMAccessory

id __60__HMAccessory_AbstractionAdditions__hf_accessoryLikeObjects__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 hf_rootAccessoryLikeHomeKitObject];
  if (v3 == *(a1 + 32))
  {
    v4 = MEMORY[0x277CBEB98];
    v5 = [HFAccessoryLikeObject _accessoryLikeObjectForObject:?];
    goto LABEL_5;
  }

  if (objc_opt_respondsToSelector())
  {
    v4 = MEMORY[0x277CBEB98];
    v5 = [v3 hf_accessoryLikeObject];
LABEL_5:
    v6 = v5;
    v7 = [v4 setWithObject:v5];

    goto LABEL_6;
  }

  if (objc_opt_respondsToSelector())
  {
    v7 = [v3 hf_accessoryLikeObjects];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v10 = [MEMORY[0x277CCA890] currentHandler];
    v11 = *(a1 + 48);
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    v14 = NSStringFromSelector(*(a1 + 48));
    [v10 handleFailureInMethod:v11 object:WeakRetained file:@"HomeKit+Abstraction.m" lineNumber:100 description:{@"%@-%@: root HomeKit object (%@) does not confirm to HFAccessoryLikeObjectVendor or HFAccessoryLikeObjectContainer", v13, v14, v3}];

    v7 = 0;
  }

LABEL_6:

  return v7;
}

uint64_t __53__HMAccessory_AbstractionAdditions__hf_accessoryType__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 associatedServiceType];
  v4 = [*(a1 + 32) associatedServiceType];
  v5 = [v3 isEqualToString:v4];

  return v5;
}

void __51__HMAccessory_AbstractionAdditions__hf_moveToRoom___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 home];
  [v5 assignAccessory:*(a1 + 32) toRoom:*(a1 + 40) completionHandler:v4];
}

void *__59__HMAccessory_HFDebugging__hf_stateDumpBuilderWithContext___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 home];
  v5 = [v4 hf_accessoryWithIdentifier:v3];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v3;
  }

  v8 = v7;

  return v7;
}

void __51__HMAccessory_HFMediaAdditions__hf_identifyHomePod__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = +[HFErrorHandler sharedHandler];
    [v5 logError:v4 operationDescription:@"Identify for HomePod"];
  }

  else
  {
    v5 = HFLogForCategory(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      v8 = 138412290;
      v9 = v6;
      _os_log_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_DEFAULT, "Successfully sent identify message to accessory: %@", &v8, 0xCu);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __51__HMAccessory_HFMediaAdditions___pushSymptomUpdate__block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = *(a1 + 32);
    v4 = [v3 symptoms];
    [v5 symptomsHandler:v3 didUpdateSymptoms:v4];
  }
}

uint64_t __53__HMAccessory_HFAdditions__hf_requiresFirmwareUpdate__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 hf_isLegacyService])
  {
    v3 = 1;
  }

  else
  {
    v4 = [v2 serviceType];
    v5 = [v4 isEqualToString:*MEMORY[0x277CD0DD0]];

    if (v5)
    {
      v3 = 0;
    }

    else
    {
      v6 = [v2 characteristics];
      v3 = [v6 na_any:&__block_literal_global_4_5];
    }
  }

  return v3;
}

uint64_t __53__HMAccessory_HFAdditions__hf_requiresFirmwareUpdate__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [MEMORY[0x277CD1D90] hf_allRequiredCharacteristicTypesForStandardServices];
  v4 = [v2 characteristicType];
  v5 = [v3 containsObject:v4];

  if (v5)
  {
    v6 = [v2 properties];
    v7 = [v6 containsObject:*MEMORY[0x277CCF738]] ^ 1;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t __52__HMAccessory_HFAdditions__hf_isCeilingFanWithLight__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 serviceType];
  v3 = [v2 isEqualToString:*MEMORY[0x277CD0EA0]];

  return v3;
}

uint64_t __52__HMAccessory_HFAdditions__hf_isCeilingFanWithLight__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 serviceType];
  if ([v3 isEqualToString:*MEMORY[0x277CD0EA0]])
  {
    v4 = 1;
  }

  else
  {
    v4 = [v2 hf_isFan];
  }

  return v4;
}

uint64_t __41__HMAccessory_HFAdditions__hf_isDoorbell__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 serviceType];
  v3 = [v2 isEqualToString:*MEMORY[0x277CD0E38]];

  return v3;
}

uint64_t __60__HMAccessory_HFAdditions__hf_isNotificationSupportedCamera__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 accessory];
  v4 = [v3 hf_serviceOfType:*MEMORY[0x277CD0E38]];

  v5 = [v2 accessory];
  v6 = [v5 hf_serviceOfType:*MEMORY[0x277CD0EC0]];

  v7 = [v2 hf_supportsRecordingEvents];
  if (v4)
  {
    v8 = 1;
  }

  else
  {
    v8 = v7;
  }

  if (v6)
  {
    return 1;
  }

  else
  {
    return v8;
  }
}

uint64_t __77__HMAccessory_HFAdditions__hf_servicesWithBulletinBoardNotificationTurnedOff__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 bulletinBoardNotification];
  if (v3)
  {
    v4 = [v2 bulletinBoardNotification];
    v5 = [v4 isEnabled] ^ 1;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t __43__HMAccessory_HFAdditions__hf_isPowerStrip__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 serviceType];
  v3 = [v2 isEqualToString:*MEMORY[0x277CD0ED0]];

  return v3;
}

void __52__HMAccessory_HFAdditions__hf_isMatterOnlyAccessory__block_invoke()
{
  v0 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  _MergedGlobals_256 = [v0 BOOLForKey:@"forceNativeMatter"];
}

void __59__HMAccessory_HFAdditions__hf_setShowAsIndividualServices___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 applicationData];
  [v2 hf_updateApplicationData:v4 handleError:1 completionHandler:v3];
}

uint64_t __51__HMAccessory_HFAdditions__hf_linkedResidentDevice__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 device];
  v4 = [v3 uniqueIdentifier];
  v5 = [*(a1 + 32) device];
  v6 = [v5 uniqueIdentifier];
  v7 = [v4 isEqual:v6];

  return v7;
}

id __47__HMAccessory_HFAdditions__hf_standardServices__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CD1D90] hf_standardServiceTypes];
  v3 = MEMORY[0x277CBEB98];
  v4 = [*(a1 + 32) services];
  v5 = [v3 setWithArray:v4];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __47__HMAccessory_HFAdditions__hf_standardServices__block_invoke_2;
  v9[3] = &unk_277DF4020;
  v10 = v2;
  v6 = v2;
  v7 = [v5 na_filter:v9];

  return v7;
}

uint64_t __47__HMAccessory_HFAdditions__hf_standardServices__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 serviceType];
  v4 = [v2 containsObject:v3];

  return v4;
}

id __46__HMAccessory_HFAdditions__hf_visibleServices__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) hf_standardServices];
  v3 = [*(a1 + 32) hf_componentServices];
  v4 = [v2 na_setByRemovingObjectsFromSet:v3];

  return v4;
}

uint64_t __55__HMAccessory_HFAdditions__hf_irrigationSystemServices__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 serviceType];
  v3 = [v2 isEqualToString:*MEMORY[0x277CD0E80]];

  return v3;
}

uint64_t __45__HMAccessory_HFAdditions__hf_primaryService__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 serviceType];
  v4 = [v2 containsObject:v3];

  return v4;
}

uint64_t __45__HMAccessory_HFAdditions__hf_primaryService__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 hf_standardServices];
  v5 = [v4 containsObject:v3];

  return v5;
}

uint64_t __52__HMAccessory_HFAdditions__hf_hasInputSourceService__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 serviceType];
  v3 = [v2 isEqualToString:*MEMORY[0x277CD0E78]];

  return v3;
}

id __48__HMAccessory_HFAdditions__hf_componentServices__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) hf_standardServices];
  v3 = [*(a1 + 32) hf_owningBridgeAccessory];
  v4 = [v3 hf_standardServices];
  v5 = [v2 setByAddingObjectsFromSet:v4];

  v6 = [v5 na_flatMap:&__block_literal_global_57_1];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __48__HMAccessory_HFAdditions__hf_componentServices__block_invoke_3;
  v9[3] = &unk_277DF4020;
  v9[4] = *(a1 + 32);
  v7 = [v6 na_filter:v9];

  return v7;
}

BOOL __48__HMAccessory_HFAdditions__hf_componentServices__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 accessory];
  v4 = v3 == *(a1 + 32);

  return v4;
}

uint64_t __45__HMAccessory_HFAdditions__hf_serviceOfType___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 serviceType];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

void __66__HMAccessory_HFAdditions__hf_programmableSwitchNamespaceServices__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 hf_labelNamespaceCharacteristic];
  v6 = [v3 service];

  v4 = [v6 serviceType];
  v5 = [v4 isEqualToString:*MEMORY[0x277CD0E88]];

  if (v5)
  {
    [*(a1 + 32) addObject:v6];
  }
}

id __51__HMAccessory_HFAdditions__hf_servicesBehindBridge__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) hf_bridgedAccessories];
  v2 = MEMORY[0x277CBEB98];
  v3 = [v1 na_flatMap:&__block_literal_global_71_1];
  v4 = [v2 setWithArray:v3];

  return v4;
}

uint64_t __49__HMAccessory_HFAdditions__hf_bridgedAccessories__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 uniqueIdentifier];
  v4 = [v2 containsObject:v3];

  return v4;
}

id __52__HMAccessory_HFAdditions__hf_owningBridgeAccessory__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) home];
  v3 = [v2 hf_allBridgeAccessories];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __52__HMAccessory_HFAdditions__hf_owningBridgeAccessory__block_invoke_2;
  v6[3] = &unk_277DF3888;
  v6[4] = *(a1 + 32);
  v4 = [v3 na_firstObjectPassingTest:v6];

  return v4;
}

uint64_t __52__HMAccessory_HFAdditions__hf_owningBridgeAccessory__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 uniqueIdentifiersForBridgedAccessories];
  v4 = [*(a1 + 32) uniqueIdentifier];
  v5 = [v3 containsObject:v4];

  return v5;
}

void *__59__HMAccessory_HFAdditions__hf_networkConfigurationProfiles__block_invoke(uint64_t a1, void *a2)
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

void __61__HMAccessory_HFAdditions__hf_getUserFriendlyDescriptionKey___block_invoke()
{
  v31[38] = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277CCE848];
  v30[0] = *MEMORY[0x277CCE840];
  v30[1] = v0;
  v31[0] = @"AirConditioner";
  v31[1] = @"AirDehumidifier";
  v1 = *MEMORY[0x277CCE858];
  v30[2] = *MEMORY[0x277CCE850];
  v30[3] = v1;
  v31[2] = @"AirHeater";
  v31[3] = @"AirHumidifier";
  v2 = *MEMORY[0x277CCE860];
  v30[4] = *MEMORY[0x277CCE868];
  v30[5] = v2;
  v31[4] = @"AirPurifier";
  v31[5] = @"AirPort";
  v3 = *MEMORY[0x277CCE878];
  v30[6] = *MEMORY[0x277CCE870];
  v30[7] = v3;
  v31[6] = @"AppleTV";
  v31[7] = @"AudioReceiver";
  v4 = *MEMORY[0x277CCE888];
  v30[8] = *MEMORY[0x277CCE880];
  v30[9] = v4;
  v31[8] = @"Bridge";
  v31[9] = @"Door";
  v5 = *MEMORY[0x277CCE898];
  v30[10] = *MEMORY[0x277CCE890];
  v30[11] = v5;
  v31[10] = @"DoorLock";
  v31[11] = @"Fan";
  v6 = *MEMORY[0x277CCE8A8];
  v30[12] = *MEMORY[0x277CCE8A0];
  v30[13] = v6;
  v31[12] = @"Faucet";
  v31[13] = @"GarageDoorOpener";
  v7 = *MEMORY[0x277CCE8B8];
  v30[14] = *MEMORY[0x277CCE8B0];
  v30[15] = v7;
  v31[14] = @"HomePod";
  v31[15] = @"IPCamera";
  v8 = *MEMORY[0x277CCE8C8];
  v30[16] = *MEMORY[0x277CCE8C0];
  v30[17] = v8;
  v31[16] = @"Lightbulb";
  v31[17] = @"Other";
  v9 = *MEMORY[0x277CCE8D8];
  v30[18] = *MEMORY[0x277CCE8D0];
  v30[19] = v9;
  v31[18] = @"Outlet";
  v31[19] = @"ProgrammableSwitch";
  v10 = *MEMORY[0x277CCE8E0];
  v31[20] = @"RangeExtender";
  v11 = *MEMORY[0x277CCE950];
  v30[20] = v10;
  v30[21] = v11;
  v12 = HFLocalizedWiFiStringKeyForKey(@"Router");
  v13 = *MEMORY[0x277CCE8E8];
  v31[21] = v12;
  v31[22] = @"SecuritySystem";
  v14 = *MEMORY[0x277CCE8F0];
  v30[22] = v13;
  v30[23] = v14;
  v15 = *MEMORY[0x277CCE8F8];
  v31[23] = @"Sensor";
  v31[24] = @"ShowerHead";
  v16 = *MEMORY[0x277CCE900];
  v30[24] = v15;
  v30[25] = v16;
  v17 = *MEMORY[0x277CCE908];
  v31[25] = @"Speaker";
  v31[26] = @"Sprinkler";
  v18 = *MEMORY[0x277CCE910];
  v30[26] = v17;
  v30[27] = v18;
  v19 = *MEMORY[0x277CCE918];
  v31[27] = @"Switch";
  v31[28] = @"TargetController";
  v20 = *MEMORY[0x277CCE920];
  v30[28] = v19;
  v30[29] = v20;
  v21 = *MEMORY[0x277CCE930];
  v31[29] = @"Television";
  v31[30] = @"TelevisionSetTopBox";
  v22 = *MEMORY[0x277CCE938];
  v30[30] = v21;
  v30[31] = v22;
  v23 = *MEMORY[0x277CCE940];
  v31[31] = @"TelevisionStreamingStick";
  v31[32] = @"Thermostat";
  v24 = *MEMORY[0x277CCE948];
  v30[32] = v23;
  v30[33] = v24;
  v25 = *MEMORY[0x277CCE958];
  v31[33] = @"VideoDoorbell";
  v31[34] = @"Window";
  v26 = *MEMORY[0x277CCE960];
  v30[34] = v25;
  v30[35] = v26;
  v31[35] = @"WindowCovering";
  v31[36] = @"PowerStrip";
  v30[36] = @"3047A1A5-8BFC-4112-9888-21314F438FF3";
  v30[37] = @"9D302CDA-1467-4E19-ABC9-9ED36BE34508";
  v31[37] = @"Fan";
  v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:38];
  v28 = qword_280E02FF0;
  qword_280E02FF0 = v27;

  v29 = *MEMORY[0x277D85DE8];
}

void __67__HMAccessory_HFAdditions__hf_getUserFriendlyMatterDescriptionKey___block_invoke()
{
  v6[2] = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CCABB0] numberWithInt:116];
  v5[0] = v0;
  v6[0] = @"RobotVacuum";
  v1 = [MEMORY[0x277CCABB0] numberWithInt:144];
  v5[1] = v1;
  v6[1] = @"NetworkInfraManager";
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5 count:2];
  v3 = qword_280E03000;
  qword_280E03000 = v2;

  v4 = *MEMORY[0x277D85DE8];
}

uint64_t __44__HMAccessory_HFAdditions___hf_categoryType__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 serviceType];
  v3 = [v2 isEqualToString:*MEMORY[0x277CD0E38]];

  return v3;
}

uint64_t __50__HMAccessory_HFAdditions__hf_siriEndpointProfile__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

void __90__HMAccessory_HFAdditions__hf_onboardSiriEndpointIfNeededWithSettingKeyPath_settingValue___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = a2;
  if (v2)
  {
    v3 = HFLogForCategory(0x41uLL);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v7 = 138412290;
      v8 = v2;
      _os_log_error_impl(&dword_20D9BF000, v3, OS_LOG_TYPE_ERROR, "Implicit Onboarding failed to apply onboarding selections with error: [%@]", &v7, 0xCu);
    }
  }

  v4 = HFLogForCategory(0x41uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = HMSiriEndpointOnboardingResultAsString();
    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_DEFAULT, "Implicit Onboarding succeeded with result: [%@]", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

id __75__HMAccessory_HFAdditions__hf_allConnectedHomeToCHIPAccessoryPairingFuture__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 na_dictionaryWithKeyGenerator:&__block_literal_global_230];
  v3 = [MEMORY[0x277D2C900] futureWithResult:v2];

  return v3;
}

id __75__HMAccessory_HFAdditions__hf_allConnectedHomeToCHIPAccessoryPairingFuture__block_invoke_4(uint64_t a1, void *a2)
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

void __59__HMAccessory_HFAdditions__hf_enableAdaptiveTemperatureTo___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = *(a1 + 40);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __59__HMAccessory_HFAdditions__hf_enableAdaptiveTemperatureTo___block_invoke_2;
  v7[3] = &unk_277DF8400;
  objc_copyWeak(&v9, (a1 + 32));
  v6 = v3;
  v8 = v6;
  [WeakRetained enableAdaptiveTemperatureTo:v5 completionHandler:v7];

  objc_destroyWeak(&v9);
}

void __59__HMAccessory_HFAdditions__hf_enableAdaptiveTemperatureTo___block_invoke_2(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = HFLogForCategory(0x26uLL);
  v6 = v5;
  if (v3)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v8 = 136315650;
      v9 = "[HMAccessory(HFAdditions) hf_enableAdaptiveTemperatureTo:]_block_invoke_2";
      v10 = 2112;
      v11 = WeakRetained;
      v12 = 2112;
      v13 = v3;
    }

    [*(a1 + 32) finishWithError:v3];
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315394;
      v9 = "[HMAccessory(HFAdditions) hf_enableAdaptiveTemperatureTo:]_block_invoke";
      v10 = 2112;
      v11 = WeakRetained;
    }

    [*(a1 + 32) finishWithNoResult];
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __62__HMAccessory_HFAdditions__hf_enableGridForecastAutomationTo___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = *(a1 + 40);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __62__HMAccessory_HFAdditions__hf_enableGridForecastAutomationTo___block_invoke_2;
  v7[3] = &unk_277DF8400;
  objc_copyWeak(&v9, (a1 + 32));
  v6 = v3;
  v8 = v6;
  [WeakRetained enableGridForecastAutomationTo:v5 completionHandler:v7];

  objc_destroyWeak(&v9);
}

void __62__HMAccessory_HFAdditions__hf_enableGridForecastAutomationTo___block_invoke_2(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = HFLogForCategory(0x26uLL);
  v6 = v5;
  if (v3)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v8 = 136315650;
      v9 = "[HMAccessory(HFAdditions) hf_enableGridForecastAutomationTo:]_block_invoke_2";
      v10 = 2112;
      v11 = WeakRetained;
      v12 = 2112;
      v13 = v3;
    }

    [*(a1 + 32) finishWithError:v3];
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315394;
      v9 = "[HMAccessory(HFAdditions) hf_enableGridForecastAutomationTo:]_block_invoke";
      v10 = 2112;
      v11 = WeakRetained;
    }

    [*(a1 + 32) finishWithNoResult];
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __68__HMAccessory_HFAdditions__hf_setHasOnboardedForAdaptiveTemperature__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __68__HMAccessory_HFAdditions__hf_setHasOnboardedForAdaptiveTemperature__block_invoke_2;
  v6[3] = &unk_277DF8400;
  objc_copyWeak(&v8, (a1 + 32));
  v5 = v3;
  v7 = v5;
  [WeakRetained setHasOnboardedForAdaptiveTemperatureAutomationsWithCompletion:v6];

  objc_destroyWeak(&v8);
}

void __68__HMAccessory_HFAdditions__hf_setHasOnboardedForAdaptiveTemperature__block_invoke_2(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = HFLogForCategory(0x26uLL);
  v6 = v5;
  if (v3)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v8 = 136315650;
      v9 = "[HMAccessory(HFAdditions) hf_setHasOnboardedForAdaptiveTemperature]_block_invoke_2";
      v10 = 2112;
      v11 = WeakRetained;
      v12 = 2112;
      v13 = v3;
    }

    [*(a1 + 32) finishWithError:v3];
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315394;
      v9 = "[HMAccessory(HFAdditions) hf_setHasOnboardedForAdaptiveTemperature]_block_invoke";
      v10 = 2112;
      v11 = WeakRetained;
    }

    [*(a1 + 32) finishWithNoResult];
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __70__HMAccessory_HFAdditions__hf_setHasOnboardedForCleanEnergyAutomation__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __70__HMAccessory_HFAdditions__hf_setHasOnboardedForCleanEnergyAutomation__block_invoke_2;
  v6[3] = &unk_277DF8400;
  objc_copyWeak(&v8, (a1 + 32));
  v5 = v3;
  v7 = v5;
  [WeakRetained setHasOnboardedForCleanEnergyAutomationWithCompletion:v6];

  objc_destroyWeak(&v8);
}

void __70__HMAccessory_HFAdditions__hf_setHasOnboardedForCleanEnergyAutomation__block_invoke_2(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = HFLogForCategory(0x26uLL);
  v6 = v5;
  if (v3)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v8 = 136315650;
      v9 = "[HMAccessory(HFAdditions) hf_setHasOnboardedForCleanEnergyAutomation]_block_invoke_2";
      v10 = 2112;
      v11 = WeakRetained;
      v12 = 2112;
      v13 = v3;
    }

    [*(a1 + 32) finishWithError:v3];
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315394;
      v9 = "[HMAccessory(HFAdditions) hf_setHasOnboardedForCleanEnergyAutomation]_block_invoke";
      v10 = 2112;
      v11 = WeakRetained;
    }

    [*(a1 + 32) finishWithNoResult];
  }

  v7 = *MEMORY[0x277D85DE8];
}

uint64_t __70__HMAccessory_HFIncludedContextProtocol__hf_shouldHideForContextType___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained home];
  v3 = [v2 hf_currentUserIsRestrictedGuest];

  if (v3)
  {
    goto LABEL_11;
  }

  if ([WeakRetained hf_showAsIndividualServices])
  {
    goto LABEL_11;
  }

  if ([WeakRetained hf_isPureBridge])
  {
    goto LABEL_11;
  }

  if ([WeakRetained hf_isNetworkRouter])
  {
    goto LABEL_11;
  }

  v4 = [WeakRetained hf_visibleServices];
  v5 = [v4 na_all:&__block_literal_global_125];

  if (v5)
  {
    if (![WeakRetained hf_isNonServiceBasedAccessory])
    {
      goto LABEL_11;
    }
  }

  v6 = [WeakRetained mediaProfile];

  if (!v6)
  {
    goto LABEL_13;
  }

  v7 = [WeakRetained home];
  v8 = [v7 hf_mediaSystemForAccessory:WeakRetained];
  if (!v8)
  {
    v9 = [WeakRetained mediaProfile];
    v10 = [v9 isContainedWithinItemGroup];

    if (v10)
    {
      goto LABEL_11;
    }

LABEL_13:
    v11 = 0;
    goto LABEL_12;
  }

LABEL_11:
  v11 = 1;
LABEL_12:

  return v11;
}

void __92__HMAccessory_HFIncludedContextProtocol__hf_updateValueForCurrentObjectOnly_forContextType___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 applicationData];
  [v2 hf_updateApplicationData:v4 handleError:1 completionHandler:v3];
}

uint64_t __83__HMAccessory_HFIncludedContextProtocol__hf_anyNonSensorServiceIsOnForContextType___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 hf_isSensorService])
  {
    v4 = 0;
  }

  else
  {
    v4 = [v3 hf_shouldBeOnForContextType:*(a1 + 32)];
  }

  return v4;
}

uint64_t __65__HMAccessory_HFHomeContainedObjectConformance__hf_isValidObject__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 uniqueIdentifier];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

uint64_t __69__HMAccessory_HFSoftwareUpdateAdditions__hf_softwareUpdateComparator__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 hf_softwareUpdateVersion];
  v6 = [v5 buildVersion];
  v7 = [v4 hf_softwareUpdateVersion];

  v8 = [v7 buildVersion];
  v9 = [v6 compare:v8];

  return v9;
}

void __63__HMAccessory_HFApplicationData___hf_didUpdateApplicationData___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 accessoryDidUpdateApplicationData:*(a1 + 32)];
  }
}

void __89__HMAccessory_HFApplicationData__hf_updateApplicationData_handleError_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v15 = a2;
  v3 = +[HFHomeKitDispatcher sharedDispatcher];
  v4 = [v3 homeManager];
  if ([v4 hasOptedToHH2])
  {
    v5 = [*(a1 + 32) home];
    v6 = [v5 residentDevices];
    v7 = [v6 count];

    v8 = HFOperationUpdateApplicationDataResidentSync;
    if (!v7)
    {
      v8 = HFOperationUpdateApplicationDataCloudSync;
    }
  }

  else
  {

    v8 = HFOperationUpdateApplicationDataCloudSync;
  }

  v9 = *(a1 + 56);
  v10 = *v8;
  v11 = +[HFErrorHandler sharedHandler];
  v12 = v11;
  if (v9 == 1)
  {
    [v11 handleError:v15 operationType:v10 options:0 retryBlock:0 cancelBlock:0];
  }

  else
  {
    [v11 logError:v15 operationDescription:v10];
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v14 = [WeakRetained applicationData];
  [WeakRetained _hf_didUpdateApplicationData:v14];

  (*(*(a1 + 40) + 16))();
}

@end