@interface HFMediaHelper
+ (BOOL)canMediaProfileContainer:(id)container supportHomeTheaterWithAppleTV:(id)v;
+ (BOOL)isAirPortExpress:(id)express;
+ (BOOL)isAppleTV:(id)v;
+ (BOOL)isAudioAnalysisSupportedDevice:(id)device;
+ (BOOL)isAudioReceiver:(id)receiver;
+ (BOOL)isContainedWithinMediaSystem:(id)system;
+ (BOOL)isDoorbellChimeEnabled:(id)enabled;
+ (BOOL)isHomePod:(id)pod;
+ (BOOL)isHomePodMediaSystem:(id)system;
+ (BOOL)isHomePodMini:(id)mini;
+ (BOOL)isHomePodMiniMediaSystem:(id)system;
+ (BOOL)isHomePodOriginal:(id)original;
+ (BOOL)isHomePodOriginalMediaSystem:(id)system;
+ (BOOL)isSiriDisabled:(id)disabled;
+ (BOOL)isSiriEndpoint:(id)endpoint;
+ (BOOL)supportsDoorbellChime:(id)chime;
+ (id)_findAccessorySettingSiriLanguageAdapterFor:(id)for;
+ (id)allAccessoriesContainedIn:(id)in;
+ (id)changeAllSiriLanguageOptionsFor:(id)for to:(id)to;
+ (id)changeSiriLanguageOptionFor:(id)for to:(id)to;
+ (id)mediaContainerSymbolConfiguration;
+ (id)mediaIconDescriptorForMediaContainer:(id)container;
+ (id)mediaProfileContainerForItem:(id)item forTopLevel:(BOOL)level;
+ (id)siriLanguageOptionFor:(id)for;
@end

@implementation HFMediaHelper

+ (BOOL)isHomePodMediaSystem:(id)system
{
  systemCopy = system;
  objc_opt_class();
  v4 = systemCopy;
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  return v6 != 0;
}

+ (BOOL)isHomePod:(id)pod
{
  hf_backingAccessory = [pod hf_backingAccessory];
  hf_isHomePod = [hf_backingAccessory hf_isHomePod];

  return hf_isHomePod;
}

+ (BOOL)isHomePodOriginalMediaSystem:(id)system
{
  systemCopy = system;
  if ([HFMediaHelper isHomePodMediaSystem:systemCopy])
  {
    accessories = [systemCopy accessories];
    anyObject = [accessories anyObject];
    v6 = [anyObject homePodVariant] == 1;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (BOOL)isHomePodOriginal:(id)original
{
  originalCopy = original;
  if ([HFMediaHelper isHomePod:originalCopy])
  {
    hf_backingAccessory = [originalCopy hf_backingAccessory];
    v5 = [hf_backingAccessory homePodVariant] == 1;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (BOOL)isContainedWithinMediaSystem:(id)system
{
  systemCopy = system;
  if ([HFMediaHelper isHomePodMediaSystem:systemCopy])
  {
    v4 = 0;
  }

  else
  {
    hf_home = [systemCopy hf_home];
    hf_backingAccessory = [systemCopy hf_backingAccessory];
    v7 = [hf_home hf_mediaSystemForAccessory:hf_backingAccessory];
    v4 = v7 != 0;
  }

  return v4;
}

+ (BOOL)isHomePodMiniMediaSystem:(id)system
{
  systemCopy = system;
  if ([HFMediaHelper isHomePodMediaSystem:systemCopy])
  {
    accessories = [systemCopy accessories];
    anyObject = [accessories anyObject];
    v6 = [anyObject homePodVariant] == 2;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (BOOL)isHomePodMini:(id)mini
{
  miniCopy = mini;
  if ([HFMediaHelper isHomePod:miniCopy])
  {
    hf_backingAccessory = [miniCopy hf_backingAccessory];
    v5 = [hf_backingAccessory homePodVariant] == 2;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (BOOL)isAppleTV:(id)v
{
  hf_backingAccessory = [v hf_backingAccessory];
  hf_isAppleTV = [hf_backingAccessory hf_isAppleTV];

  return hf_isAppleTV;
}

+ (BOOL)isAirPortExpress:(id)express
{
  hf_backingAccessory = [express hf_backingAccessory];
  hf_isAirPortExpressSpeaker = [hf_backingAccessory hf_isAirPortExpressSpeaker];

  return hf_isAirPortExpressSpeaker;
}

+ (BOOL)isAudioReceiver:(id)receiver
{
  hf_backingAccessory = [receiver hf_backingAccessory];
  hf_isAudioReceiver = [hf_backingAccessory hf_isAudioReceiver];

  return hf_isAudioReceiver;
}

+ (BOOL)isSiriDisabled:(id)disabled
{
  disabledCopy = disabled;
  hf_settingsValueManager = [disabledCopy hf_settingsValueManager];
  settings = [disabledCopy settings];

  v6 = [settings hf_accessorySettingAtKeyPath:@"root.siri.allowHeySiri"];

  objc_opt_class();
  v7 = [hf_settingsValueManager valueForSetting:v6];
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  if (v9)
  {
    v10 = [v9 BOOLValue] ^ 1;
  }

  else
  {
    LOBYTE(v10) = 0;
  }

  return v10;
}

+ (BOOL)isAudioAnalysisSupportedDevice:(id)device
{
  accessories = [device accessories];
  anyObject = [accessories anyObject];

  if ([anyObject hf_isAudioAnalysisSupportedDevice])
  {
    hf_isHomePod = [anyObject hf_isHomePod];
  }

  else
  {
    hf_isHomePod = 0;
  }

  return hf_isHomePod;
}

+ (BOOL)isSiriEndpoint:(id)endpoint
{
  hf_backingAccessory = [endpoint hf_backingAccessory];
  hf_isSiriEndpoint = [hf_backingAccessory hf_isSiriEndpoint];

  return hf_isSiriEndpoint;
}

+ (BOOL)canMediaProfileContainer:(id)container supportHomeTheaterWithAppleTV:(id)v
{
  v34 = *MEMORY[0x277D85DE8];
  containerCopy = container;
  vCopy = v;
  accessories = [containerCopy accessories];
  anyObject = [accessories anyObject];

  v11 = HFLogForCategory(0);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = NSStringFromSelector(a2);
    v26 = 138413058;
    selfCopy3 = self;
    v28 = 2112;
    v29 = v12;
    v30 = 2112;
    v31 = anyObject;
    v32 = 2112;
    v33 = containerCopy;
    _os_log_impl(&dword_20D9BF000, v11, OS_LOG_TYPE_DEFAULT, "%@:%@ Extracted homepod accessory for media profile container. HomePod: %@ mediaProfileContainer: %@", &v26, 0x2Au);
  }

  if (!vCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HFMediaHelper.m" lineNumber:214 description:@"Home Theater Accessory candidate should not be nil."];
  }

  if (([vCopy hf_isAppleTV] & 1) == 0)
  {
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"HFMediaHelper.m" lineNumber:215 description:@"Home Theater Accessory candidate can only be an apple TV."];
  }

  if ([anyObject homePodVariant] == 3 && (objc_msgSend(vCopy, "audioDestinationController"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "supportsSameRoomB620Destinations"), v13, (v14 & 1) == 0))
  {
    audioDestinationController2 = HFLogForCategory(0);
    if (os_log_type_enabled(audioDestinationController2, OS_LOG_TYPE_DEFAULT))
    {
      v21 = NSStringFromSelector(a2);
      v26 = 138413058;
      selfCopy3 = self;
      v28 = 2112;
      v29 = v21;
      v30 = 2112;
      v31 = anyObject;
      v32 = 2112;
      v33 = vCopy;
      _os_log_impl(&dword_20D9BF000, audioDestinationController2, OS_LOG_TYPE_DEFAULT, "%@:%@ Accessory does not support B620 as audio destination. HomePod: %@ Accessory: %@", &v26, 0x2Au);
    }

    v20 = 0;
  }

  else
  {
    v15 = HFLogForCategory(0);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = NSStringFromSelector(a2);
      audioDestinationController = [vCopy audioDestinationController];
      v26 = 138413058;
      selfCopy3 = self;
      v28 = 2112;
      v29 = v16;
      v30 = 2112;
      v31 = vCopy;
      v32 = 2112;
      v33 = audioDestinationController;
      _os_log_impl(&dword_20D9BF000, v15, OS_LOG_TYPE_DEFAULT, "%@:%@ Checking Accessory %@ with audio destination controller %@ for empty destination.", &v26, 0x2Au);
    }

    audioDestinationController2 = [vCopy audioDestinationController];
    destination = [audioDestinationController2 destination];
    v20 = destination == 0;
  }

  v22 = *MEMORY[0x277D85DE8];
  return v20;
}

+ (BOOL)supportsDoorbellChime:(id)chime
{
  v29 = *MEMORY[0x277D85DE8];
  chimeCopy = chime;
  settings = [chimeCopy settings];
  v7 = [settings hf_accessorySettingAtKeyPath:@"root.doorbellChime.enabled"];

  v8 = HFLogForCategory(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = NSStringFromSelector(a2);
    v19 = 138413058;
    selfCopy2 = self;
    v21 = 2112;
    v22 = v9;
    v23 = 2112;
    v24 = chimeCopy;
    v25 = 2112;
    v26 = v7;
    _os_log_impl(&dword_20D9BF000, v8, OS_LOG_TYPE_DEFAULT, "%@:%@ media profile container: %@ has doorbell setting: %@", &v19, 0x2Au);
  }

  if (v7 || ![self isSiriEndpoint:chimeCopy])
  {
    v16 = 0;
  }

  else
  {
    hf_backingAccessory = [chimeCopy hf_backingAccessory];
    mediaProfile = [hf_backingAccessory mediaProfile];
    hf_mediaAccessoryCommonSettingsManager = [mediaProfile hf_mediaAccessoryCommonSettingsManager];

    v13 = [hf_mediaAccessoryCommonSettingsManager settingForKeyPath:HFDoorbellChimeEnabledKeyPath];
    v14 = HFLogForCategory(0);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = NSStringFromSelector(a2);
      v19 = 138413314;
      selfCopy2 = self;
      v21 = 2112;
      v22 = v15;
      v23 = 2112;
      v24 = chimeCopy;
      v25 = 2112;
      v26 = v13;
      v27 = 2112;
      v28 = hf_mediaAccessoryCommonSettingsManager;
      _os_log_impl(&dword_20D9BF000, v14, OS_LOG_TYPE_DEFAULT, "%@:%@ Siri endpoint media profile container: %@ has doorbell setting: %@, for common settings manager: %@", &v19, 0x34u);
    }

    v16 = v13 != 0;
  }

  v17 = *MEMORY[0x277D85DE8];
  return v7 != 0 || v16;
}

+ (BOOL)isDoorbellChimeEnabled:(id)enabled
{
  enabledCopy = enabled;
  hf_settingsValueManager = [enabledCopy hf_settingsValueManager];
  settings = [enabledCopy settings];
  v7 = [settings hf_accessorySettingAtKeyPath:@"root.doorbellChime.enabled"];

  objc_opt_class();
  v8 = [hf_settingsValueManager valueForSetting:v7];
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  if (!v7 && [self isSiriEndpoint:enabledCopy])
  {
    hf_backingAccessory = [enabledCopy hf_backingAccessory];
    mediaProfile = [hf_backingAccessory mediaProfile];
    hf_mediaAccessoryCommonSettingsManager = [mediaProfile hf_mediaAccessoryCommonSettingsManager];

    v14 = [hf_mediaAccessoryCommonSettingsManager settingValueForKeyPath:HFDoorbellChimeEnabledKeyPath];

    v10 = v14;
  }

  if (v10)
  {
    bOOLValue = [v10 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

+ (id)mediaIconDescriptorForMediaContainer:(id)container
{
  containerCopy = container;
  mediaContainerSymbolConfiguration = [objc_opt_class() mediaContainerSymbolConfiguration];
  v5 = [[HFImageIconDescriptor alloc] initWithSystemImageNamed:@"hifispeaker.fill" configuration:mediaContainerSymbolConfiguration];
  if ([HFMediaHelper isHomePodMiniMediaSystem:containerCopy])
  {
    v6 = [HFImageIconDescriptor alloc];
    v7 = @"homepodmini.2.fill";
LABEL_13:
    v8 = [(HFImageIconDescriptor *)v6 initWithSystemImageNamed:v7 configuration:mediaContainerSymbolConfiguration];
LABEL_14:
    v9 = v8;

    v5 = v9;
    goto LABEL_15;
  }

  if ([HFMediaHelper isHomePodMini:containerCopy])
  {
    v6 = [HFImageIconDescriptor alloc];
    v7 = @"homepodmini.fill";
    goto LABEL_13;
  }

  if ([HFMediaHelper isHomePodMediaSystem:containerCopy])
  {
    v6 = [HFImageIconDescriptor alloc];
    v7 = @"homepod.2.fill";
    goto LABEL_13;
  }

  if ([HFMediaHelper isHomePod:containerCopy])
  {
    v6 = [HFImageIconDescriptor alloc];
    v7 = @"homepod.fill";
    goto LABEL_13;
  }

  if ([HFMediaHelper isAppleTV:containerCopy])
  {
    v6 = [HFImageIconDescriptor alloc];
    v7 = @"appletv.fill";
    goto LABEL_13;
  }

  if ([HFMediaHelper isAirPortExpress:containerCopy])
  {
    v6 = [HFImageIconDescriptor alloc];
    v7 = @"airport.extreme";
    goto LABEL_13;
  }

  if ([HFMediaHelper isAudioReceiver:containerCopy])
  {
    v8 = [[HFCAPackageIconDescriptor alloc] initWithPackageIdentifier:@"HFCAPackageIconIdentifierReceiver"];
    goto LABEL_14;
  }

LABEL_15:

  return v5;
}

+ (id)mediaContainerSymbolConfiguration
{
  v2 = MEMORY[0x277D755D0];
  systemGrayColor = [MEMORY[0x277D75348] systemGrayColor];
  v4 = [v2 configurationWithHierarchicalColor:systemGrayColor];

  v5 = [MEMORY[0x277D755D0] configurationWithTextStyle:*MEMORY[0x277D76A20] scale:3];
  v6 = [v5 configurationByApplyingConfiguration:v4];

  return v6;
}

+ (id)_findAccessorySettingSiriLanguageAdapterFor:(id)for
{
  hf_settingsAdapterManager = [for hf_settingsAdapterManager];
  v4 = [hf_settingsAdapterManager adapterForIdentifier:@"SiriLanguageAdapter"];
  objc_opt_class();
  v5 = v4;
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  return v6;
}

+ (id)siriLanguageOptionFor:(id)for
{
  v51 = *MEMORY[0x277D85DE8];
  forCopy = for;
  objc_opt_class();
  v5 = forCopy;
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7)
  {
    v8 = +[HFHomeKitDispatcher sharedDispatcher];
    homeManager = [v8 homeManager];
    hasOptedToHH2 = [homeManager hasOptedToHH2];

    if (hasOptedToHH2 || ([v7 accessory], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "hf_isSiriEndpoint"), v11, v12))
    {
      hf_siriLanguageOptionsManager = [v7 hf_siriLanguageOptionsManager];
    }

    else
    {
      hf_siriLanguageOptionsManager = [HFMediaHelper _findAccessorySettingSiriLanguageAdapterFor:v5];
    }

    v16 = hf_siriLanguageOptionsManager;
    selectedLanguageOption = [hf_siriLanguageOptionsManager selectedLanguageOption];
  }

  else
  {
    objc_opt_class();
    v14 = v5;
    if (objc_opt_isKindOfClass())
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    v16 = v15;

    if (v16)
    {
      v17 = +[HFHomeKitDispatcher sharedDispatcher];
      homeManager2 = [v17 homeManager];
      hasOptedToHH22 = [homeManager2 hasOptedToHH2];

      if (hasOptedToHH22)
      {
        [v16 hf_siriLanguageOptionsManager];
      }

      else
      {
        [HFMediaHelper _findAccessorySettingSiriLanguageAdapterFor:v14];
      }
      v35 = ;
      selectedLanguageOption = [v35 selectedLanguageOption];
    }

    else
    {
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      obj = [v14 mediaProfiles];
      v21 = [obj countByEnumeratingWithState:&v42 objects:v50 count:16];
      if (v21)
      {
        v22 = v21;
        aSelector = a2;
        v23 = 0;
        v24 = *v43;
        while (2)
        {
          for (i = 0; i != v22; ++i)
          {
            if (*v43 != v24)
            {
              objc_enumerationMutation(obj);
            }

            v26 = *(*(&v42 + 1) + 8 * i);
            v27 = +[HFHomeKitDispatcher sharedDispatcher];
            homeManager3 = [v27 homeManager];
            hasOptedToHH23 = [homeManager3 hasOptedToHH2];

            if (hasOptedToHH23 || ([v26 accessory], v30 = objc_claimAutoreleasedReturnValue(), v31 = objc_msgSend(v30, "hf_isSiriEndpoint"), v30, v31))
            {
              hf_siriLanguageOptionsManager2 = [v26 hf_siriLanguageOptionsManager];
            }

            else
            {
              hf_siriLanguageOptionsManager2 = [HFMediaHelper _findAccessorySettingSiriLanguageAdapterFor:v26];
            }

            v33 = hf_siriLanguageOptionsManager2;
            selectedLanguageOption2 = [hf_siriLanguageOptionsManager2 selectedLanguageOption];

            if (!selectedLanguageOption2)
            {
              v36 = HFLogForCategory(0);
              if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
              {
                v37 = NSStringFromSelector(aSelector);
                *buf = 138412546;
                v47 = v37;
                v48 = 2112;
                v49 = v26;
                _os_log_impl(&dword_20D9BF000, v36, OS_LOG_TYPE_DEFAULT, "%@ Media Profile %@ does not have a selected language option", buf, 0x16u);
              }

LABEL_38:
              selectedLanguageOption = 0;
              v16 = 0;
              goto LABEL_41;
            }

            if (v23)
            {
              if (![v23 isEqual:selectedLanguageOption2])
              {
                goto LABEL_38;
              }
            }

            else
            {
              v23 = selectedLanguageOption2;
            }
          }

          v22 = [obj countByEnumeratingWithState:&v42 objects:v50 count:16];
          v16 = 0;
          if (v22)
          {
            continue;
          }

          break;
        }
      }

      else
      {
        v23 = 0;
      }

      v23 = v23;
      selectedLanguageOption = v23;
LABEL_41:
    }
  }

  v38 = *MEMORY[0x277D85DE8];

  return selectedLanguageOption;
}

+ (id)changeAllSiriLanguageOptionsFor:(id)for to:(id)to
{
  v31 = *MEMORY[0x277D85DE8];
  forCopy = for;
  toCopy = to;
  hmf_isEmpty = [forCopy hmf_isEmpty];
  if (!toCopy || hmf_isEmpty)
  {
    v10 = HFLogForCategory(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v16 = NSStringFromSelector(a2);
      recognitionLanguage = [toCopy recognitionLanguage];
      *buf = 138412802;
      v26 = v16;
      v27 = 2112;
      v28 = recognitionLanguage;
      v29 = 2112;
      v30 = forCopy;
      _os_log_impl(&dword_20D9BF000, v10, OS_LOG_TYPE_DEFAULT, "%@ No speaker languages changed to %@ for %@", buf, 0x20u);
    }

    array = MEMORY[0x277CBEBF8];
  }

  else
  {
    array = [MEMORY[0x277CBEB18] array];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v10 = forCopy;
    v11 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v21;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v21 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = [HFMediaHelper changeSiriLanguageOptionFor:*(*(&v20 + 1) + 8 * i) to:toCopy, v20];
          [array na_safeAddObject:v15];
        }

        v12 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v12);
    }
  }

  v18 = *MEMORY[0x277D85DE8];

  return array;
}

+ (id)changeSiriLanguageOptionFor:(id)for to:(id)to
{
  v53 = *MEMORY[0x277D85DE8];
  forCopy = for;
  toCopy = to;
  v9 = HFLogForCategory(0);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = NSStringFromSelector(a2);
    recognitionLanguage = [toCopy recognitionLanguage];
    *buf = 138413058;
    selfCopy2 = self;
    v49 = 2112;
    *v50 = v10;
    *&v50[8] = 2112;
    *&v50[10] = recognitionLanguage;
    v51 = 2112;
    v52 = forCopy;
    _os_log_impl(&dword_20D9BF000, v9, OS_LOG_TYPE_DEFAULT, "%@:%@: Changing Siri language to [%@] for [%@]", buf, 0x2Au);
  }

  if (!toCopy)
  {
    v17 = HFLogForCategory(0);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v40 = NSStringFromSelector(a2);
      *buf = 138412546;
      selfCopy2 = self;
      v49 = 2112;
      *v50 = v40;
      _os_log_error_impl(&dword_20D9BF000, v17, OS_LOG_TYPE_ERROR, "%@:%@: Can't change to an nil Siri language", buf, 0x16u);
    }

    v18 = MEMORY[0x277D2C900];
    v19 = MEMORY[0x277CCA9B8];
    v20 = 33;
    goto LABEL_13;
  }

  if (([forCopy hf_isReachable] & 1) == 0)
  {
    v21 = HFLogForCategory(0);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v41 = NSStringFromSelector(a2);
      hf_isReachable = [forCopy hf_isReachable];
      hf_displayName = [forCopy hf_displayName];
      *buf = 138412802;
      selfCopy2 = v41;
      v49 = 1024;
      *v50 = hf_isReachable;
      *&v50[4] = 2112;
      *&v50[6] = hf_displayName;
      _os_log_error_impl(&dword_20D9BF000, v21, OS_LOG_TYPE_ERROR, "%@ Controller is reachable? %{BOOL}d. Language change failed for [%@]", buf, 0x1Cu);
    }

    v18 = MEMORY[0x277D2C900];
    v19 = MEMORY[0x277CCA9B8];
    v20 = 35;
LABEL_13:
    v22 = [v19 hf_errorWithCode:v20];
    v23 = [v18 futureWithError:v22];
LABEL_29:
    v35 = v23;
    goto LABEL_30;
  }

  v12 = +[HFHomeKitDispatcher sharedDispatcher];
  homeManager = [v12 homeManager];
  hasOptedToHH2 = [homeManager hasOptedToHH2];

  if (hasOptedToHH2)
  {
    v15 = [HFMediaHelper _findAccessorySettingSiriLanguageAdapterFor:forCopy];
    v16 = [v15 updateSelectedLanguageOption:toCopy];
  }

  else
  {
    objc_opt_class();
    v24 = forCopy;
    if (objc_opt_isKindOfClass())
    {
      v25 = v24;
    }

    else
    {
      v25 = 0;
    }

    v15 = v25;

    accessory = [v15 accessory];
    hf_isSiriEndpoint = [accessory hf_isSiriEndpoint];

    if ((hf_isSiriEndpoint & 1) != 0 || (+[HFMediaHelper _findAccessorySettingSiriLanguageAdapterFor:](HFMediaHelper, "_findAccessorySettingSiriLanguageAdapterFor:", v24), v28 = objc_claimAutoreleasedReturnValue(), [v28 updateSelectedLanguageOption:toCopy], v16 = objc_claimAutoreleasedReturnValue(), v28, !v16))
    {
      objc_opt_class();
      v29 = v24;
      if (objc_opt_isKindOfClass())
      {
        v30 = v29;
      }

      else
      {
        v30 = 0;
      }

      v31 = v30;

      if (v15)
      {
        v32 = v15;
      }

      else
      {
        v32 = v31;
      }

      hf_siriLanguageOptionsManager = [v32 hf_siriLanguageOptionsManager];
      v16 = [hf_siriLanguageOptionsManager updateSelectedLanguageOption:toCopy];
    }

    v44[0] = MEMORY[0x277D85DD0];
    v44[1] = 3221225472;
    v44[2] = __48__HFMediaHelper_changeSiriLanguageOptionFor_to___block_invoke;
    v44[3] = &unk_277DF6718;
    v46 = a2;
    v45 = v24;
    v34 = [v16 addFailureBlock:v44];
  }

  if (v16)
  {
    v23 = v16;
    v22 = v23;
    goto LABEL_29;
  }

  v38 = MEMORY[0x277D2C900];
  v39 = [MEMORY[0x277CCA9B8] hf_errorWithCode:33];
  v35 = [v38 futureWithError:v39];

  v22 = 0;
LABEL_30:

  v36 = *MEMORY[0x277D85DE8];

  return v35;
}

void __48__HFMediaHelper_changeSiriLanguageOptionFor_to___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = HFLogForCategory(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v4 = NSStringFromSelector(*(a1 + 40));
    v5 = [*(a1 + 32) hf_displayName];
    v6 = 138412546;
    v7 = v4;
    v8 = 2112;
    v9 = v5;
    _os_log_error_impl(&dword_20D9BF000, v2, OS_LOG_TYPE_ERROR, "%@ Language change failed for %@", &v6, 0x16u);
  }

  v3 = *MEMORY[0x277D85DE8];
}

+ (id)allAccessoriesContainedIn:(id)in
{
  inCopy = in;
  v4 = objc_opt_new();
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __43__HFMediaHelper_allAccessoriesContainedIn___block_invoke;
  v8[3] = &unk_277DF6130;
  v9 = v4;
  v5 = v4;
  [inCopy na_each:v8];

  v6 = [v5 copy];

  return v6;
}

void __43__HFMediaHelper_allAccessoriesContainedIn___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([HFMediaHelper isHomePodMediaSystem:v3])
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v4 = [v3 accessories];
    v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v13;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v13 != v7)
          {
            objc_enumerationMutation(v4);
          }

          [*(a1 + 32) addObject:*(*(&v12 + 1) + 8 * i)];
        }

        v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v6);
    }
  }

  else
  {
    v9 = *(a1 + 32);
    v4 = [v3 accessories];
    v10 = [v4 anyObject];
    [v9 addObject:v10];
  }

  v11 = *MEMORY[0x277D85DE8];
}

+ (id)mediaProfileContainerForItem:(id)item forTopLevel:(BOOL)level
{
  levelCopy = level;
  v47 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  objc_opt_class();
  v9 = itemCopy;
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  objc_opt_class();
  v12 = v9;
  if (objc_opt_isKindOfClass())
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;

  if (v11 | v14 && (!v14 || ([v14 service], v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v15, "accessory"), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "hf_isHomePod"), v16, v15, v17)))
  {
    v18 = a2;
    selfCopy = self;
    if (v11)
    {
      [v11 mediaProfileContainer];
    }

    else
    {
      service = [v14 service];
      accessory = [service accessory];
      [accessory mediaProfile];
    }
    v19 = ;
    v21 = v19;
    v22 = &unk_282584A38;
    if ([v21 conformsToProtocol:v22])
    {
      v23 = v21;
    }

    else
    {
      v23 = 0;
    }

    v20 = v23;

    if (!v11)
    {

      v19 = service;
    }

    if (levelCopy)
    {
      objc_opt_class();
      v20 = v20;
      v24 = (objc_opt_isKindOfClass() & 1) != 0 ? v20 : 0;
      v25 = v24;

      if (!v25)
      {
        hf_home = [v20 hf_home];
        hf_backingAccessory = [v20 hf_backingAccessory];
        v28 = [hf_home hf_mediaSystemForAccessory:hf_backingAccessory];

        if (v28)
        {
          v29 = v28;
        }

        else
        {
          v29 = v20;
        }

        v30 = v29;

        v20 = v30;
      }
    }

    v31 = HFLogForCategory(0);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      v32 = NSStringFromSelector(v18);
      *buf = 138413314;
      v38 = selfCopy;
      v39 = 2112;
      v40 = v32;
      v41 = 2112;
      v42 = v11;
      v43 = 2112;
      v44 = v14;
      v45 = 2112;
      v46 = v20;
      _os_log_impl(&dword_20D9BF000, v31, OS_LOG_TYPE_DEFAULT, "%@:%@ Found top level of media profile container for this accessory. accessoryItem: %@ serviceItem: %@ mediaProfileContainer: %@", buf, 0x34u);
    }
  }

  else
  {
    v20 = 0;
  }

  v33 = *MEMORY[0x277D85DE8];

  return v20;
}

@end