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
  hf_siriEndpointProfile = [self hf_siriEndpointProfile];

  if (hf_siriEndpointProfile)
  {
    category = [self category];
    hf_isMediaAccessory = [category hf_isMediaAccessory];

    if (!hf_isMediaAccessory)
    {
      return 0;
    }
  }

  mediaProfile = [self mediaProfile];
  if (mediaProfile)
  {
    hf_isCategorizedAsMediaAccessory = [self hf_isCategorizedAsMediaAccessory];
  }

  else
  {
    hf_isCategorizedAsMediaAccessory = 0;
  }

  return hf_isCategorizedAsMediaAccessory;
}

- (uint64_t)hf_isCategorizedAsMediaAccessory
{
  if ([self hf_isHomePod] & 1) != 0 || (objc_msgSend(self, "hf_isAppleTV") & 1) != 0 || (objc_msgSend(self, "hf_isSpeaker") & 1) != 0 || (objc_msgSend(self, "hf_isDumbSpeaker") & 1) != 0 || (objc_msgSend(self, "hf_isAirPortExpressSpeaker"))
  {
    return 1;
  }

  return [self hf_isAudioReceiver];
}

- (uint64_t)hf_isHomePod
{
  category = [self category];
  categoryType = [category categoryType];

  v3 = [categoryType isEqualToString:*MEMORY[0x277CCE8B0]];
  return v3;
}

- (uint64_t)hf_isAppleTV
{
  category = [self category];
  categoryType = [category categoryType];

  v3 = [categoryType isEqualToString:*MEMORY[0x277CCE870]];
  return v3;
}

- (uint64_t)hf_isAirPortExpressSpeaker
{
  category = [self category];
  categoryType = [category categoryType];

  v3 = [categoryType isEqualToString:*MEMORY[0x277CCE860]];
  return v3;
}

- (uint64_t)hf_isDumbSpeaker
{
  category = [self category];
  categoryType = [category categoryType];

  v3 = [categoryType isEqualToString:*MEMORY[0x277CCE900]];
  return v3;
}

- (uint64_t)hf_isSpeaker
{
  if ([self hf_isDumbSpeaker])
  {
    return 1;
  }

  return [self hf_isAirPortExpressSpeaker];
}

- (uint64_t)hf_isAudioReceiver
{
  category = [self category];
  categoryType = [category categoryType];

  v3 = [categoryType isEqualToString:*MEMORY[0x277CCE878]];
  return v3;
}

- (BOOL)hf_isSiriEndpoint
{
  hf_siriEndpointProfile = [self hf_siriEndpointProfile];
  v2 = hf_siriEndpointProfile != 0;

  return v2;
}

- (uint64_t)hf_supportsMultiUserLanguage:()HFMediaAdditions
{
  v4 = a3;
  if (([self hf_isSiriEndpoint] & 1) != 0 || (+[HFHomeKitDispatcher sharedDispatcher](HFHomeKitDispatcher, "sharedDispatcher"), v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "homeManager"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "hasOptedToHH2"), v6, v5, v7))
  {
    mediaProfile = [self mediaProfile];
    hf_siriLanguageOptionsManager = [mediaProfile hf_siriLanguageOptionsManager];

    selectedLanguageOption = [hf_siriLanguageOptionsManager selectedLanguageOption];
  }

  else
  {
    mediaProfile2 = [self mediaProfile];
    hf_siriLanguageOptionsManager = [mediaProfile2 hf_settingsAdapterManager];

    v12 = [hf_siriLanguageOptionsManager adapterForIdentifier:@"SiriLanguageAdapter"];
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

    selectedLanguageOption = [v15 selectedLanguageOption];
  }

  recognitionLanguage = [selectedLanguageOption recognitionLanguage];
  v17 = [v4 containsObject:recognitionLanguage];

  return v17;
}

- (uint64_t)hf_mediaAccessControlCapabilities
{
  if ([MEMORY[0x277CD1A60] accessorySupportsMediaAccessControl:self])
  {
    v2 = 5;
  }

  else
  {
    v2 = 0;
  }

  if (([self hf_isHomePod] & 1) != 0 || objc_msgSend(self, "hf_isAppleTV"))
  {
    return v2 | 2;
  }

  return v2;
}

- (uint64_t)hf_needsSoftwareUpdateToSupportBeingAddedToMediaSystem
{
  result = [self hf_isHomePod];
  if (result)
  {
    result = [MEMORY[0x277CD1BF0] canSupportMediaSystem:self];
    if (result)
    {
      return [MEMORY[0x277CD1BF0] supportsMediaSystem:self] ^ 1;
    }
  }

  return result;
}

- (id)hf_identifyHomePod
{
  v15 = *MEMORY[0x277D85DE8];
  mediaProfile = [self mediaProfile];
  hf_settingsAdapterManager = [mediaProfile hf_settingsAdapterManager];
  v4 = [hf_settingsAdapterManager adapterForIdentifier:@"DeviceOptions"];

  if (v4)
  {
    v5 = HFLogForCategory(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v14 = mediaProfile;
      _os_log_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_DEFAULT, "Preparing to send identify message to accessory: %@", buf, 0xCu);
    }

    identifyAccessory = [v4 identifyAccessory];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __51__HMAccessory_HFMediaAdditions__hf_identifyHomePod__block_invoke;
    v11[3] = &unk_277DF70B0;
    v12 = mediaProfile;
    v7 = [identifyAccessory addCompletionBlock:v11];
  }

  else
  {
    NSLog(&cfstr_DeviceOptionsA.isa, self);
    v8 = MEMORY[0x277D2C900];
    identifyAccessory = [MEMORY[0x277CCA9B8] hf_errorWithCode:25];
    v7 = [v8 futureWithError:identifyAccessory];
  }

  v9 = *MEMORY[0x277D85DE8];

  return v7;
}

- (uint64_t)hf_shouldShowSoftwareUpdateInfo
{
  result = [self isControllable];
  if (result)
  {

    return [self hf_softwareUpdatePossessesNecessaryDocumentation];
  }

  return result;
}

- (uint64_t)hf_shouldDisplayManualFixOptionForSymptom:()HFMediaAdditions
{
  if ([self hf_fakeShouldDisplayManualFixOption])
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
    if (([v6 anySymptomIsBeingFixedForFixableObject:self] & 1) == 0 && v7)
    {
      symptomsHandler = [self symptomsHandler];
      v10 = [symptomsHandler newFixSessionForSymptom:v7];
      v5 = v10 != 0;
    }
  }

  return v5;
}

- (uint64_t)hf_fakeUnreachableError
{
  uniqueIdentifier = [self uniqueIdentifier];
  uUIDString = [uniqueIdentifier UUIDString];
  v3 = HFPreferencesAccessoryValueForKey(uUIDString, @"fakeUnreachableError");
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (uint64_t)hf_fakeWiFiSymptom
{
  uniqueIdentifier = [self uniqueIdentifier];
  uUIDString = [uniqueIdentifier UUIDString];
  v3 = HFPreferencesAccessoryValueForKey(uUIDString, @"fakeWiFiSymptom");
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (uint64_t)hf_fakeWiFiPerformanceSymptom
{
  uniqueIdentifier = [self uniqueIdentifier];
  uUIDString = [uniqueIdentifier UUIDString];
  v3 = HFPreferencesAccessoryValueForKey(uUIDString, @"fakeWiFiPerformanceSymptom");
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (uint64_t)hf_fakeInternetFixSymptom
{
  uniqueIdentifier = [self uniqueIdentifier];
  uUIDString = [uniqueIdentifier UUIDString];
  v3 = HFPreferencesAccessoryValueForKey(uUIDString, @"fakeInternetFixSymptom");
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (uint64_t)hf_fakeHardwareFixSymptom
{
  uniqueIdentifier = [self uniqueIdentifier];
  uUIDString = [uniqueIdentifier UUIDString];
  v3 = HFPreferencesAccessoryValueForKey(uUIDString, @"fakeHardwareFixSymptom");
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (uint64_t)hf_fakeGeneralFixSymptom
{
  uniqueIdentifier = [self uniqueIdentifier];
  uUIDString = [uniqueIdentifier UUIDString];
  v3 = HFPreferencesAccessoryValueForKey(uUIDString, @"fakeGeneralFixSymptom");
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (uint64_t)hf_fakeHomeKitSymptom
{
  uniqueIdentifier = [self uniqueIdentifier];
  uUIDString = [uniqueIdentifier UUIDString];
  v3 = HFPreferencesAccessoryValueForKey(uUIDString, @"fakeHomeKitSymptom");
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (uint64_t)hf_fakeICloudSymptom
{
  uniqueIdentifier = [self uniqueIdentifier];
  uUIDString = [uniqueIdentifier UUIDString];
  v3 = HFPreferencesAccessoryValueForKey(uUIDString, @"fakeICloudSymptom");
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (uint64_t)hf_fakeITunesSymptom
{
  uniqueIdentifier = [self uniqueIdentifier];
  uUIDString = [uniqueIdentifier UUIDString];
  v3 = HFPreferencesAccessoryValueForKey(uUIDString, @"fakeITunesSymptom");
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (uint64_t)hf_fakeCDPSymptom
{
  uniqueIdentifier = [self uniqueIdentifier];
  uUIDString = [uniqueIdentifier UUIDString];
  v3 = HFPreferencesAccessoryValueForKey(uUIDString, @"fakeCDPSymptom");
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (BOOL)hf_fakeShouldDisplayManualFixOption
{
  hf_fakeDebugSymptoms = [self hf_fakeDebugSymptoms];
  v2 = [hf_fakeDebugSymptoms count] != 0;

  return v2;
}

- (uint64_t)hf_fakeWiFiMismatchSymptom
{
  uniqueIdentifier = [self uniqueIdentifier];
  uUIDString = [uniqueIdentifier UUIDString];
  v3 = HFPreferencesAccessoryValueForKey(uUIDString, @"fakeWiFiNetworkMismatchSymptom");
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (uint64_t)hf_setFakeWiFiMismatchSymptom:()HFMediaAdditions
{
  uniqueIdentifier = [self uniqueIdentifier];
  uUIDString = [uniqueIdentifier UUIDString];
  v7 = uUIDString;
  if (a3)
  {
    v8 = @"YES";
  }

  else
  {
    v8 = 0;
  }

  HFPreferencesAccessorySetValueForKey(uUIDString, @"fakeWiFiNetworkMismatchSymptom", v8);

  return [self _pushSymptomUpdate];
}

- (uint64_t)hf_fakeCaptiveLeaseRenewalSymptom
{
  uniqueIdentifier = [self uniqueIdentifier];
  uUIDString = [uniqueIdentifier UUIDString];
  v3 = HFPreferencesAccessoryValueForKey(uUIDString, @"fakeCaptiveLeaseRenewalSymptom");
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (uint64_t)hf_setFakeCaptiveLeaseRenewalSymptom:()HFMediaAdditions
{
  uniqueIdentifier = [self uniqueIdentifier];
  uUIDString = [uniqueIdentifier UUIDString];
  v7 = uUIDString;
  if (a3)
  {
    v8 = @"YES";
  }

  else
  {
    v8 = 0;
  }

  HFPreferencesAccessorySetValueForKey(uUIDString, @"fakeCaptiveLeaseRenewalSymptom", v8);

  return [self _pushSymptomUpdate];
}

- (uint64_t)hf_fakeVPNProfileExpired
{
  uniqueIdentifier = [self uniqueIdentifier];
  uUIDString = [uniqueIdentifier UUIDString];
  v3 = HFPreferencesAccessoryValueForKey(uUIDString, @"fakeVPNProfileExpiredSymptom");
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (uint64_t)hf_fake8021xNetworkSymptom
{
  uniqueIdentifier = [self uniqueIdentifier];
  uUIDString = [uniqueIdentifier UUIDString];
  v3 = HFPreferencesAccessoryValueForKey(uUIDString, @"fake8021xNetworkSymptom");
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (uint64_t)hf_fakeNetworkProfileFixSymptom
{
  uniqueIdentifier = [self uniqueIdentifier];
  uUIDString = [uniqueIdentifier UUIDString];
  v3 = HFPreferencesAccessoryValueForKey(uUIDString, @"fakeNetworkProfileFixSymptom");
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (uint64_t)hf_fakeNetworkProfileInstallSymptom
{
  uniqueIdentifier = [self uniqueIdentifier];
  uUIDString = [uniqueIdentifier UUIDString];
  v3 = HFPreferencesAccessoryValueForKey(uUIDString, @"fakeNetworkProfileInstallSymptom");
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (uint64_t)hf_fakeNetworkNotShareableSymptom
{
  uniqueIdentifier = [self uniqueIdentifier];
  uUIDString = [uniqueIdentifier UUIDString];
  v3 = HFPreferencesAccessoryValueForKey(uUIDString, @"fakeNetworkNotShareableSymptom");
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (uint64_t)hf_fakeNetworkStrengthError
{
  uniqueIdentifier = [self uniqueIdentifier];
  uUIDString = [uniqueIdentifier UUIDString];
  v3 = HFPreferencesAccessoryValueForKey(uUIDString, @"fakeNetworkStrengthError");
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (void)hf_toggleSymptomsToShowAfterWiFiPickerFix:()HFMediaAdditions
{
  if (_os_feature_enabled_impl())
  {
    v5 = +[HFSymptomFixManager sharedManager];
    v6 = v5;
    if (a3)
    {
      [v5 suppressNetworkDiagnosticsSymptomsForAccessory:self];
    }

    else
    {
      [v5 unsuppressNetworkDiagnosticsSymptomsForAccessory:self];
    }

    [self _pushSymptomUpdate];
  }
}

- (void)_pushSymptomUpdate
{
  symptomsHandler = [self symptomsHandler];
  v2 = +[HFHomeKitDispatcher sharedDispatcher];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __51__HMAccessory_HFMediaAdditions___pushSymptomUpdate__block_invoke;
  v4[3] = &unk_277DF70D8;
  v5 = symptomsHandler;
  v3 = symptomsHandler;
  [v2 dispatchSymptomsHandlerMessage:v4 sender:0];
}

- (id)hf_fakeDebugSymptoms
{
  v2 = objc_opt_new();
  if ([self hf_fakeWiFiSymptom])
  {
    v3 = [objc_alloc(MEMORY[0x277CD1E80]) initWithType:4];
    [v2 addObject:v3];
  }

  if ([self hf_fakeWiFiPerformanceSymptom])
  {
    v4 = [objc_alloc(MEMORY[0x277CD1E80]) initWithType:5];
    [v2 addObject:v4];
  }

  if ([self hf_fakeInternetFixSymptom])
  {
    v5 = [objc_alloc(MEMORY[0x277CD1E80]) initWithType:6];
    [v2 addObject:v5];
  }

  if ([self hf_fakeHardwareFixSymptom])
  {
    v6 = [objc_alloc(MEMORY[0x277CD1E80]) initWithType:7];
    [v2 addObject:v6];
  }

  if ([self hf_fakeGeneralFixSymptom])
  {
    v7 = [objc_alloc(MEMORY[0x277CD1E80]) initWithType:999];
    [v2 addObject:v7];
  }

  if ([self hf_fakeHomeKitSymptom])
  {
    v8 = [objc_alloc(MEMORY[0x277CD1E80]) initWithType:3];
    [v2 addObject:v8];
  }

  if ([self hf_fakeITunesSymptom])
  {
    v9 = [objc_alloc(MEMORY[0x277CD1E80]) initWithType:2];
    [v2 addObject:v9];
  }

  if ([self hf_fakeICloudSymptom])
  {
    v10 = [objc_alloc(MEMORY[0x277CD1E80]) initWithType:1];
    [v2 addObject:v10];
  }

  if ([self hf_fakeCDPSymptom])
  {
    v11 = [objc_alloc(MEMORY[0x277CD1E80]) initWithType:20];
    [v2 addObject:v11];
  }

  if ([self hf_fakeWiFiMismatchSymptom])
  {
    v12 = [objc_alloc(MEMORY[0x277CD1E80]) initWithType:11];
    [v2 addObject:v12];
  }

  if ([self hf_fakeCaptiveLeaseRenewalSymptom])
  {
    v13 = [objc_alloc(MEMORY[0x277CD1E80]) initWithType:19];
    [v2 addObject:v13];
  }

  if ([self hf_fakeVPNProfileExpired])
  {
    v14 = [objc_alloc(MEMORY[0x277CD1E80]) initWithType:13];
    [v2 addObject:v14];
  }

  if ([self hf_fake8021xNetworkSymptom])
  {
    v15 = [objc_alloc(MEMORY[0x277CD1E80]) initWithType:14];
    [v2 addObject:v15];
  }

  if ([self hf_fakeNetworkProfileFixSymptom])
  {
    v16 = [objc_alloc(MEMORY[0x277CD1E80]) initWithType:16];
    [v2 addObject:v16];
  }

  if ([self hf_fakeNetworkProfileInstallSymptom])
  {
    v17 = [objc_alloc(MEMORY[0x277CD1E80]) initWithType:17];
    [v2 addObject:v17];
  }

  if ([self hf_fakeNetworkNotShareableSymptom])
  {
    v18 = [objc_alloc(MEMORY[0x277CD1E80]) initWithType:18];
    [v2 addObject:v18];
  }

  [v2 na_each:&__block_literal_global_52];

  return v2;
}

@end