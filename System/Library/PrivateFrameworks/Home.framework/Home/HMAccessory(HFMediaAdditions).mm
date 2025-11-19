@interface HMAccessory(HFMediaAdditions)
- (BOOL)hf_fakeShouldDisplayManualFixOption;
- (BOOL)hf_isSiriEndpoint;
- (id)hf_fakeDebugSymptoms;
- (id)hf_identifyHomePod;
- (uint64_t)hf_fake8021xNetworkSymptom;
- (uint64_t)hf_fakeCDPSymptom;
- (uint64_t)hf_fakeCaptiveLeaseRenewalSymptom;
- (uint64_t)hf_fakeGeneralFixSymptom;
- (uint64_t)hf_fakeHardwareFixSymptom;
- (uint64_t)hf_fakeHomeKitSymptom;
- (uint64_t)hf_fakeICloudSymptom;
- (uint64_t)hf_fakeITunesSymptom;
- (uint64_t)hf_fakeInternetFixSymptom;
- (uint64_t)hf_fakeNetworkNotShareableSymptom;
- (uint64_t)hf_fakeNetworkProfileFixSymptom;
- (uint64_t)hf_fakeNetworkProfileInstallSymptom;
- (uint64_t)hf_fakeNetworkStrengthError;
- (uint64_t)hf_fakeUnreachableError;
- (uint64_t)hf_fakeVPNProfileExpired;
- (uint64_t)hf_fakeWiFiMismatchSymptom;
- (uint64_t)hf_fakeWiFiPerformanceSymptom;
- (uint64_t)hf_fakeWiFiSymptom;
- (uint64_t)hf_isAirPortExpressSpeaker;
- (uint64_t)hf_isAppleTV;
- (uint64_t)hf_isAudioReceiver;
- (uint64_t)hf_isCategorizedAsMediaAccessory;
- (uint64_t)hf_isDumbSpeaker;
- (uint64_t)hf_isHomePod;
- (uint64_t)hf_isMediaAccessory;
- (uint64_t)hf_isSpeaker;
- (uint64_t)hf_mediaAccessControlCapabilities;
- (uint64_t)hf_needsSoftwareUpdateToSupportBeingAddedToMediaSystem;
- (uint64_t)hf_setFakeCaptiveLeaseRenewalSymptom:()HFMediaAdditions;
- (uint64_t)hf_setFakeWiFiMismatchSymptom:()HFMediaAdditions;
- (uint64_t)hf_shouldDisplayManualFixOptionForSymptom:()HFMediaAdditions;
- (uint64_t)hf_shouldShowSoftwareUpdateInfo;
- (uint64_t)hf_supportsMultiUserLanguage:()HFMediaAdditions;
- (void)_pushSymptomUpdate;
- (void)hf_toggleSymptomsToShowAfterWiFiPickerFix:()HFMediaAdditions;
@end

@implementation HMAccessory(HFMediaAdditions)

- (uint64_t)hf_isMediaAccessory
{
  v2 = [a1 hf_siriEndpointProfile];

  if (v2)
  {
    v3 = [a1 category];
    v4 = [v3 hf_isMediaAccessory];

    if (!v4)
    {
      return 0;
    }
  }

  v5 = [a1 mediaProfile];
  if (v5)
  {
    v6 = [a1 hf_isCategorizedAsMediaAccessory];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (uint64_t)hf_isCategorizedAsMediaAccessory
{
  if ([a1 hf_isHomePod] & 1) != 0 || (objc_msgSend(a1, "hf_isAppleTV") & 1) != 0 || (objc_msgSend(a1, "hf_isSpeaker") & 1) != 0 || (objc_msgSend(a1, "hf_isDumbSpeaker") & 1) != 0 || (objc_msgSend(a1, "hf_isAirPortExpressSpeaker"))
  {
    return 1;
  }

  return [a1 hf_isAudioReceiver];
}

- (uint64_t)hf_isHomePod
{
  v1 = [a1 category];
  v2 = [v1 categoryType];

  v3 = [v2 isEqualToString:*MEMORY[0x277CCE8B0]];
  return v3;
}

- (uint64_t)hf_isAppleTV
{
  v1 = [a1 category];
  v2 = [v1 categoryType];

  v3 = [v2 isEqualToString:*MEMORY[0x277CCE870]];
  return v3;
}

- (uint64_t)hf_isAirPortExpressSpeaker
{
  v1 = [a1 category];
  v2 = [v1 categoryType];

  v3 = [v2 isEqualToString:*MEMORY[0x277CCE860]];
  return v3;
}

- (uint64_t)hf_isDumbSpeaker
{
  v1 = [a1 category];
  v2 = [v1 categoryType];

  v3 = [v2 isEqualToString:*MEMORY[0x277CCE900]];
  return v3;
}

- (uint64_t)hf_isSpeaker
{
  if ([a1 hf_isDumbSpeaker])
  {
    return 1;
  }

  return [a1 hf_isAirPortExpressSpeaker];
}

- (uint64_t)hf_isAudioReceiver
{
  v1 = [a1 category];
  v2 = [v1 categoryType];

  v3 = [v2 isEqualToString:*MEMORY[0x277CCE878]];
  return v3;
}

- (BOOL)hf_isSiriEndpoint
{
  v1 = [a1 hf_siriEndpointProfile];
  v2 = v1 != 0;

  return v2;
}

- (uint64_t)hf_supportsMultiUserLanguage:()HFMediaAdditions
{
  v4 = a3;
  if (([a1 hf_isSiriEndpoint] & 1) != 0 || (+[HFHomeKitDispatcher sharedDispatcher](HFHomeKitDispatcher, "sharedDispatcher"), v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "homeManager"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "hasOptedToHH2"), v6, v5, v7))
  {
    v8 = [a1 mediaProfile];
    v9 = [v8 hf_siriLanguageOptionsManager];

    v10 = [v9 selectedLanguageOption];
  }

  else
  {
    v11 = [a1 mediaProfile];
    v9 = [v11 hf_settingsAdapterManager];

    v12 = [v9 adapterForIdentifier:@"SiriLanguageAdapter"];
    objc_opt_class();
    v13 = v12;
    if (objc_opt_isKindOfClass())
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    v15 = v14;

    v10 = [v15 selectedLanguageOption];
  }

  v16 = [v10 recognitionLanguage];
  v17 = [v4 containsObject:v16];

  return v17;
}

- (uint64_t)hf_mediaAccessControlCapabilities
{
  if ([MEMORY[0x277CD1A60] accessorySupportsMediaAccessControl:a1])
  {
    v2 = 5;
  }

  else
  {
    v2 = 0;
  }

  if (([a1 hf_isHomePod] & 1) != 0 || objc_msgSend(a1, "hf_isAppleTV"))
  {
    return v2 | 2;
  }

  return v2;
}

- (uint64_t)hf_needsSoftwareUpdateToSupportBeingAddedToMediaSystem
{
  result = [a1 hf_isHomePod];
  if (result)
  {
    result = [MEMORY[0x277CD1BF0] canSupportMediaSystem:a1];
    if (result)
    {
      return [MEMORY[0x277CD1BF0] supportsMediaSystem:a1] ^ 1;
    }
  }

  return result;
}

- (id)hf_identifyHomePod
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = [a1 mediaProfile];
  v3 = [v2 hf_settingsAdapterManager];
  v4 = [v3 adapterForIdentifier:@"DeviceOptions"];

  if (v4)
  {
    v5 = HFLogForCategory(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v14 = v2;
      _os_log_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_DEFAULT, "Preparing to send identify message to accessory: %@", buf, 0xCu);
    }

    v6 = [v4 identifyAccessory];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __51__HMAccessory_HFMediaAdditions__hf_identifyHomePod__block_invoke;
    v11[3] = &unk_277DF70B0;
    v12 = v2;
    v7 = [v6 addCompletionBlock:v11];
  }

  else
  {
    NSLog(&cfstr_DeviceOptionsA.isa, a1);
    v8 = MEMORY[0x277D2C900];
    v6 = [MEMORY[0x277CCA9B8] hf_errorWithCode:25];
    v7 = [v8 futureWithError:v6];
  }

  v9 = *MEMORY[0x277D85DE8];

  return v7;
}

- (uint64_t)hf_shouldShowSoftwareUpdateInfo
{
  result = [a1 isControllable];
  if (result)
  {

    return [a1 hf_softwareUpdatePossessesNecessaryDocumentation];
  }

  return result;
}

- (uint64_t)hf_shouldDisplayManualFixOptionForSymptom:()HFMediaAdditions
{
  if ([a1 hf_fakeShouldDisplayManualFixOption])
  {
    return 1;
  }

  if (+[HFUtilities isAMac])
  {
    return 0;
  }

  v6 = +[HFSymptomFixManager sharedManager];
  v7 = [objc_alloc(MEMORY[0x277CD1E80]) initWithType:a3];
  if (a3 <= 0x14 && ((1 << a3) & 0x100006) != 0)
  {
    v5 = 1;
  }

  else
  {
    v5 = 0;
    if (([v6 anySymptomIsBeingFixedForFixableObject:a1] & 1) == 0 && v7)
    {
      v9 = [a1 symptomsHandler];
      v10 = [v9 newFixSessionForSymptom:v7];
      v5 = v10 != 0;
    }
  }

  return v5;
}

- (uint64_t)hf_fakeUnreachableError
{
  v1 = [a1 uniqueIdentifier];
  v2 = [v1 UUIDString];
  v3 = HFPreferencesAccessoryValueForKey(v2, @"fakeUnreachableError");
  v4 = [v3 BOOLValue];

  return v4;
}

- (uint64_t)hf_fakeWiFiSymptom
{
  v1 = [a1 uniqueIdentifier];
  v2 = [v1 UUIDString];
  v3 = HFPreferencesAccessoryValueForKey(v2, @"fakeWiFiSymptom");
  v4 = [v3 BOOLValue];

  return v4;
}

- (uint64_t)hf_fakeWiFiPerformanceSymptom
{
  v1 = [a1 uniqueIdentifier];
  v2 = [v1 UUIDString];
  v3 = HFPreferencesAccessoryValueForKey(v2, @"fakeWiFiPerformanceSymptom");
  v4 = [v3 BOOLValue];

  return v4;
}

- (uint64_t)hf_fakeInternetFixSymptom
{
  v1 = [a1 uniqueIdentifier];
  v2 = [v1 UUIDString];
  v3 = HFPreferencesAccessoryValueForKey(v2, @"fakeInternetFixSymptom");
  v4 = [v3 BOOLValue];

  return v4;
}

- (uint64_t)hf_fakeHardwareFixSymptom
{
  v1 = [a1 uniqueIdentifier];
  v2 = [v1 UUIDString];
  v3 = HFPreferencesAccessoryValueForKey(v2, @"fakeHardwareFixSymptom");
  v4 = [v3 BOOLValue];

  return v4;
}

- (uint64_t)hf_fakeGeneralFixSymptom
{
  v1 = [a1 uniqueIdentifier];
  v2 = [v1 UUIDString];
  v3 = HFPreferencesAccessoryValueForKey(v2, @"fakeGeneralFixSymptom");
  v4 = [v3 BOOLValue];

  return v4;
}

- (uint64_t)hf_fakeHomeKitSymptom
{
  v1 = [a1 uniqueIdentifier];
  v2 = [v1 UUIDString];
  v3 = HFPreferencesAccessoryValueForKey(v2, @"fakeHomeKitSymptom");
  v4 = [v3 BOOLValue];

  return v4;
}

- (uint64_t)hf_fakeICloudSymptom
{
  v1 = [a1 uniqueIdentifier];
  v2 = [v1 UUIDString];
  v3 = HFPreferencesAccessoryValueForKey(v2, @"fakeICloudSymptom");
  v4 = [v3 BOOLValue];

  return v4;
}

- (uint64_t)hf_fakeITunesSymptom
{
  v1 = [a1 uniqueIdentifier];
  v2 = [v1 UUIDString];
  v3 = HFPreferencesAccessoryValueForKey(v2, @"fakeITunesSymptom");
  v4 = [v3 BOOLValue];

  return v4;
}

- (uint64_t)hf_fakeCDPSymptom
{
  v1 = [a1 uniqueIdentifier];
  v2 = [v1 UUIDString];
  v3 = HFPreferencesAccessoryValueForKey(v2, @"fakeCDPSymptom");
  v4 = [v3 BOOLValue];

  return v4;
}

- (BOOL)hf_fakeShouldDisplayManualFixOption
{
  v1 = [a1 hf_fakeDebugSymptoms];
  v2 = [v1 count] != 0;

  return v2;
}

- (uint64_t)hf_fakeWiFiMismatchSymptom
{
  v1 = [a1 uniqueIdentifier];
  v2 = [v1 UUIDString];
  v3 = HFPreferencesAccessoryValueForKey(v2, @"fakeWiFiNetworkMismatchSymptom");
  v4 = [v3 BOOLValue];

  return v4;
}

- (uint64_t)hf_setFakeWiFiMismatchSymptom:()HFMediaAdditions
{
  v5 = [a1 uniqueIdentifier];
  v6 = [v5 UUIDString];
  v7 = v6;
  if (a3)
  {
    v8 = @"YES";
  }

  else
  {
    v8 = 0;
  }

  HFPreferencesAccessorySetValueForKey(v6, @"fakeWiFiNetworkMismatchSymptom", v8);

  return [a1 _pushSymptomUpdate];
}

- (uint64_t)hf_fakeCaptiveLeaseRenewalSymptom
{
  v1 = [a1 uniqueIdentifier];
  v2 = [v1 UUIDString];
  v3 = HFPreferencesAccessoryValueForKey(v2, @"fakeCaptiveLeaseRenewalSymptom");
  v4 = [v3 BOOLValue];

  return v4;
}

- (uint64_t)hf_setFakeCaptiveLeaseRenewalSymptom:()HFMediaAdditions
{
  v5 = [a1 uniqueIdentifier];
  v6 = [v5 UUIDString];
  v7 = v6;
  if (a3)
  {
    v8 = @"YES";
  }

  else
  {
    v8 = 0;
  }

  HFPreferencesAccessorySetValueForKey(v6, @"fakeCaptiveLeaseRenewalSymptom", v8);

  return [a1 _pushSymptomUpdate];
}

- (uint64_t)hf_fakeVPNProfileExpired
{
  v1 = [a1 uniqueIdentifier];
  v2 = [v1 UUIDString];
  v3 = HFPreferencesAccessoryValueForKey(v2, @"fakeVPNProfileExpiredSymptom");
  v4 = [v3 BOOLValue];

  return v4;
}

- (uint64_t)hf_fake8021xNetworkSymptom
{
  v1 = [a1 uniqueIdentifier];
  v2 = [v1 UUIDString];
  v3 = HFPreferencesAccessoryValueForKey(v2, @"fake8021xNetworkSymptom");
  v4 = [v3 BOOLValue];

  return v4;
}

- (uint64_t)hf_fakeNetworkProfileFixSymptom
{
  v1 = [a1 uniqueIdentifier];
  v2 = [v1 UUIDString];
  v3 = HFPreferencesAccessoryValueForKey(v2, @"fakeNetworkProfileFixSymptom");
  v4 = [v3 BOOLValue];

  return v4;
}

- (uint64_t)hf_fakeNetworkProfileInstallSymptom
{
  v1 = [a1 uniqueIdentifier];
  v2 = [v1 UUIDString];
  v3 = HFPreferencesAccessoryValueForKey(v2, @"fakeNetworkProfileInstallSymptom");
  v4 = [v3 BOOLValue];

  return v4;
}

- (uint64_t)hf_fakeNetworkNotShareableSymptom
{
  v1 = [a1 uniqueIdentifier];
  v2 = [v1 UUIDString];
  v3 = HFPreferencesAccessoryValueForKey(v2, @"fakeNetworkNotShareableSymptom");
  v4 = [v3 BOOLValue];

  return v4;
}

- (uint64_t)hf_fakeNetworkStrengthError
{
  v1 = [a1 uniqueIdentifier];
  v2 = [v1 UUIDString];
  v3 = HFPreferencesAccessoryValueForKey(v2, @"fakeNetworkStrengthError");
  v4 = [v3 BOOLValue];

  return v4;
}

- (void)hf_toggleSymptomsToShowAfterWiFiPickerFix:()HFMediaAdditions
{
  if (_os_feature_enabled_impl())
  {
    v5 = +[HFSymptomFixManager sharedManager];
    v6 = v5;
    if (a3)
    {
      [v5 suppressNetworkDiagnosticsSymptomsForAccessory:a1];
    }

    else
    {
      [v5 unsuppressNetworkDiagnosticsSymptomsForAccessory:a1];
    }

    [a1 _pushSymptomUpdate];
  }
}

- (void)_pushSymptomUpdate
{
  v1 = [a1 symptomsHandler];
  v2 = +[HFHomeKitDispatcher sharedDispatcher];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __51__HMAccessory_HFMediaAdditions___pushSymptomUpdate__block_invoke;
  v4[3] = &unk_277DF70D8;
  v5 = v1;
  v3 = v1;
  [v2 dispatchSymptomsHandlerMessage:v4 sender:0];
}

- (id)hf_fakeDebugSymptoms
{
  v2 = objc_opt_new();
  if ([a1 hf_fakeWiFiSymptom])
  {
    v3 = [objc_alloc(MEMORY[0x277CD1E80]) initWithType:4];
    [v2 addObject:v3];
  }

  if ([a1 hf_fakeWiFiPerformanceSymptom])
  {
    v4 = [objc_alloc(MEMORY[0x277CD1E80]) initWithType:5];
    [v2 addObject:v4];
  }

  if ([a1 hf_fakeInternetFixSymptom])
  {
    v5 = [objc_alloc(MEMORY[0x277CD1E80]) initWithType:6];
    [v2 addObject:v5];
  }

  if ([a1 hf_fakeHardwareFixSymptom])
  {
    v6 = [objc_alloc(MEMORY[0x277CD1E80]) initWithType:7];
    [v2 addObject:v6];
  }

  if ([a1 hf_fakeGeneralFixSymptom])
  {
    v7 = [objc_alloc(MEMORY[0x277CD1E80]) initWithType:999];
    [v2 addObject:v7];
  }

  if ([a1 hf_fakeHomeKitSymptom])
  {
    v8 = [objc_alloc(MEMORY[0x277CD1E80]) initWithType:3];
    [v2 addObject:v8];
  }

  if ([a1 hf_fakeITunesSymptom])
  {
    v9 = [objc_alloc(MEMORY[0x277CD1E80]) initWithType:2];
    [v2 addObject:v9];
  }

  if ([a1 hf_fakeICloudSymptom])
  {
    v10 = [objc_alloc(MEMORY[0x277CD1E80]) initWithType:1];
    [v2 addObject:v10];
  }

  if ([a1 hf_fakeCDPSymptom])
  {
    v11 = [objc_alloc(MEMORY[0x277CD1E80]) initWithType:20];
    [v2 addObject:v11];
  }

  if ([a1 hf_fakeWiFiMismatchSymptom])
  {
    v12 = [objc_alloc(MEMORY[0x277CD1E80]) initWithType:11];
    [v2 addObject:v12];
  }

  if ([a1 hf_fakeCaptiveLeaseRenewalSymptom])
  {
    v13 = [objc_alloc(MEMORY[0x277CD1E80]) initWithType:19];
    [v2 addObject:v13];
  }

  if ([a1 hf_fakeVPNProfileExpired])
  {
    v14 = [objc_alloc(MEMORY[0x277CD1E80]) initWithType:13];
    [v2 addObject:v14];
  }

  if ([a1 hf_fake8021xNetworkSymptom])
  {
    v15 = [objc_alloc(MEMORY[0x277CD1E80]) initWithType:14];
    [v2 addObject:v15];
  }

  if ([a1 hf_fakeNetworkProfileFixSymptom])
  {
    v16 = [objc_alloc(MEMORY[0x277CD1E80]) initWithType:16];
    [v2 addObject:v16];
  }

  if ([a1 hf_fakeNetworkProfileInstallSymptom])
  {
    v17 = [objc_alloc(MEMORY[0x277CD1E80]) initWithType:17];
    [v2 addObject:v17];
  }

  if ([a1 hf_fakeNetworkNotShareableSymptom])
  {
    v18 = [objc_alloc(MEMORY[0x277CD1E80]) initWithType:18];
    [v2 addObject:v18];
  }

  [v2 na_each:&__block_literal_global_52];

  return v2;
}

@end