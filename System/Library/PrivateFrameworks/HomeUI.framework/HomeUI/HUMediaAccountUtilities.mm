@interface HUMediaAccountUtilities
+ (id)defaultCurrentVolumeForMediaProfiles:(id)profiles;
+ (id)determineMediaPickerAvailabilityForHomePodProfiles:(id)profiles inHome:(id)home;
+ (id)musicAppURL;
+ (id)reasonForMediaPickerNotAvailable:(int64_t)available;
@end

@implementation HUMediaAccountUtilities

void __60__HUMediaAccountUtilities_isAppleMusicSubscriptionAvailable__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_alloc_init(MEMORY[0x277CDD348]);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __60__HUMediaAccountUtilities_isAppleMusicSubscriptionAvailable__block_invoke_2;
  v5[3] = &unk_277DB7C28;
  v6 = v2;
  v4 = v2;
  [v3 requestCapabilitiesWithCompletionHandler:v5];
}

void __60__HUMediaAccountUtilities_isAppleMusicSubscriptionAvailable__block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v9 = a3;
  v5 = [MEMORY[0x277CBEB38] dictionary];
  if (v9)
  {
    [v5 setObject:&unk_282490BC0 forKeyedSubscript:@"HOMediaPickerUnavailableReasonKey"];
    v6 = @"HUMediaPickerUnavailableReasonStoreKitErrorObjectKey";
    v7 = v5;
    v8 = v9;
  }

  else
  {
    if (a2)
    {
      goto LABEL_6;
    }

    v8 = &unk_282490BD8;
    v6 = @"HOMediaPickerUnavailableReasonKey";
    v7 = v5;
  }

  [v7 setObject:v8 forKeyedSubscript:v6];
LABEL_6:
  [*(a1 + 32) finishWithResult:v5];
}

+ (id)reasonForMediaPickerNotAvailable:(int64_t)available
{
  v3 = @"HUTriggerMediaPickerUnavailableMusicCatalogPlaybackDisabledPromptMessage";
  if (available != 1)
  {
    v3 = 0;
  }

  if (available)
  {
    return v3;
  }

  else
  {
    return @"HUTriggerMediaPickerUnavailableMusicAppUninstalledPromptMessage";
  }
}

+ (id)musicAppURL
{
  v2 = ICBundleIdentifierForSystemApplicationType();
  v3 = [MEMORY[0x277CBEBC0] hf_appStoreURLForBundleIdentifier:v2];

  return v3;
}

+ (id)defaultCurrentVolumeForMediaProfiles:(id)profiles
{
  profilesCopy = profiles;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __64__HUMediaAccountUtilities_defaultCurrentVolumeForMediaProfiles___block_invoke;
  v8[3] = &unk_277DB7C50;
  v8[4] = &v9;
  [profilesCopy na_each:v8];
  v4 = v10;
  v5 = v10[6];
  if (fabsf(v5) < 0.00000011921)
  {
    v10[6] = 0.5;
    v5 = 0.5;
  }

  v4[6] = fminf(fmaxf(v5 * 100.0, 0.0), 100.0);
  v6 = [MEMORY[0x277CCABB0] numberWithFloat:?];
  _Block_object_dispose(&v9, 8);

  return v6;
}

float __64__HUMediaAccountUtilities_defaultCurrentVolumeForMediaProfiles___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 mediaSession];
  v4 = [v3 audioControl];
  [v4 volume];
  v6 = v5;

  v7 = *(*(a1 + 32) + 8);
  result = fmaxf(*(v7 + 24), v6);
  *(v7 + 24) = result;
  return result;
}

+ (id)determineMediaPickerAvailabilityForHomePodProfiles:(id)profiles inHome:(id)home
{
  v48[1] = *MEMORY[0x277D85DE8];
  profilesCopy = profiles;
  homeCopy = home;
  if (profilesCopy && (v9 = [profilesCopy count], homeCopy) && v9)
  {
    v10 = HFLogForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      selfCopy = "+[HUMediaAccountUtilities determineMediaPickerAvailabilityForHomePodProfiles:inHome:]";
      v43 = 2112;
      v44 = profilesCopy;
      v45 = 2112;
      v46 = homeCopy;
      _os_log_impl(&dword_20CEB6000, v10, OS_LOG_TYPE_DEFAULT, "%s HomePodMediaProfiles %@ Home %@", buf, 0x20u);
    }

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v12 = _HULocalizedStringWithDefaultValue(@"HUMediaSelectionPickerButton", @"HUMediaSelectionPickerButton", 1);
    [dictionary setObject:v12 forKeyedSubscript:*MEMORY[0x277D13F60]];

    if (+[HUMediaAccountUtilities isMusicAppInstalled])
    {
      v13 = +[HUMediaAccountUtilities isAppleMusicSubscriptionAvailable];
      v14 = MEMORY[0x277D2C900];
      v39 = @"HOMediaSelectionPickingForExternalPlayerKey";
      v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(profilesCopy, "count")}];
      v40 = v15;
      v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v40 forKeys:&v39 count:1];
      v17 = [v14 futureWithResult:v16];

      v18 = HFLogForCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = NSStringFromSelector(a2);
        *buf = 138412802;
        selfCopy = self;
        v43 = 2112;
        v44 = v19;
        v45 = 2112;
        v46 = profilesCopy;
        _os_log_impl(&dword_20CEB6000, v18, OS_LOG_TYPE_DEFAULT, "%@:%@ homePodMediaProfiles [%@]", buf, 0x20u);
      }

      v20 = MEMORY[0x277D2C900];
      v33[0] = MEMORY[0x277D85DD0];
      v33[1] = 3221225472;
      v33[2] = __85__HUMediaAccountUtilities_determineMediaPickerAvailabilityForHomePodProfiles_inHome___block_invoke;
      v33[3] = &unk_277DB7CE8;
      v34 = profilesCopy;
      selfCopy2 = self;
      v37 = a2;
      v35 = homeCopy;
      v21 = [v20 futureWithBlock:v33];
      v22 = MEMORY[0x277D2C900];
      v38[0] = v13;
      v38[1] = v17;
      v38[2] = v21;
      v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:3];
      v24 = [v22 combineAllFutures:v23];
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __85__HUMediaAccountUtilities_determineMediaPickerAvailabilityForHomePodProfiles_inHome___block_invoke_5;
      v30[3] = &unk_277DB7D10;
      dictionary = dictionary;
      v31 = dictionary;
      v32 = a2;
      v25 = [v24 flatMap:v30];
    }

    else
    {
      [dictionary setObject:&unk_282490BF0 forKeyedSubscript:@"HOMediaPickerUnavailableReasonKey"];
      v25 = [MEMORY[0x277D2C900] futureWithResult:dictionary];
    }
  }

  else
  {
    v26 = HFLogForCategory();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      selfCopy = "+[HUMediaAccountUtilities determineMediaPickerAvailabilityForHomePodProfiles:inHome:]";
      _os_log_error_impl(&dword_20CEB6000, v26, OS_LOG_TYPE_ERROR, "%s Either the parameter mediaprofile or Home is nil", buf, 0xCu);
    }

    v27 = MEMORY[0x277D2C900];
    v47 = @"Error";
    dictionary = [MEMORY[0x277CCA9B8] hf_errorWithCode:33];
    v48[0] = dictionary;
    v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v48 forKeys:&v47 count:1];
    v25 = [v27 futureWithResult:v28];
  }

  return v25;
}

void __85__HUMediaAccountUtilities_determineMediaPickerAvailabilityForHomePodProfiles_inHome___block_invoke(uint64_t a1, void *a2)
{
  v60[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [MEMORY[0x277CB8F48] ams_sharedAccountStore];
  v5 = [v4 ams_activeiTunesAccount];

  v35 = v5;
  if (v5 && [*(a1 + 32) count])
  {
    v6 = HFLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 48);
      v8 = NSStringFromSelector(*(a1 + 56));
      *buf = 138412802;
      v50 = v7;
      v51 = 2112;
      v52 = v8;
      v53 = 2112;
      v54 = v35;
      _os_log_impl(&dword_20CEB6000, v6, OS_LOG_TYPE_DEFAULT, "%@:%@ iTunes Account [%@]", buf, 0x20u);
    }

    v9 = [*(a1 + 40) isMultiUserEnabled];
    v10 = HFLogForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 48);
      v12 = NSStringFromSelector(*(a1 + 56));
      *buf = 138412802;
      v50 = v11;
      v51 = 2112;
      v52 = v12;
      v53 = 1024;
      LODWORD(v54) = v9;
      _os_log_impl(&dword_20CEB6000, v10, OS_LOG_TYPE_DEFAULT, "%@:%@ isMultiUserEnabled [%d]", buf, 0x1Cu);
    }

    if (v9)
    {
      v13 = objc_alloc(MEMORY[0x277D14C98]);
      v14 = *(a1 + 40);
      v15 = [v14 currentUser];
      v16 = [v13 initWithHome:v14 user:v15 nameStyle:0];
      v34 = [v16 isIdentifyVoiceEnabled];
    }

    else
    {
      v34 = 0;
    }

    v18 = HFLogForCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = *(a1 + 48);
      v20 = NSStringFromSelector(*(a1 + 56));
      v21 = [*(a1 + 40) hf_displayName];
      v22 = [*(a1 + 40) currentUser];
      v23 = [v22 name];
      *buf = 138413314;
      v50 = v19;
      v51 = 2112;
      v52 = v20;
      v53 = 2112;
      v54 = v21;
      v55 = 2112;
      v56 = v23;
      v57 = 1024;
      v58 = v34;
      _os_log_impl(&dword_20CEB6000, v18, OS_LOG_TYPE_DEFAULT, "%@:%@ home [%@] currentUser [%@] vrEnabled [%d]", buf, 0x30u);
    }

    v17 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(*(a1 + 32), "count")}];
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    obj = *(a1 + 32);
    v24 = [obj countByEnumeratingWithState:&v44 objects:v48 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v45;
      do
      {
        for (i = 0; i != v25; ++i)
        {
          if (*v45 != v26)
          {
            objc_enumerationMutation(obj);
          }

          v28 = *(*(&v44 + 1) + 8 * i);
          v29 = MEMORY[0x277D2C900];
          v38[0] = MEMORY[0x277D85DD0];
          v38[1] = 3221225472;
          v38[2] = __85__HUMediaAccountUtilities_determineMediaPickerAvailabilityForHomePodProfiles_inHome___block_invoke_44;
          v38[3] = &unk_277DB7CA0;
          v42 = v9;
          v43 = v34;
          v39 = *(a1 + 40);
          v40 = v35;
          v41 = v28;
          v30 = [v29 futureWithBlock:v38];
          [v17 addObject:v30];
        }

        v25 = [obj countByEnumeratingWithState:&v44 objects:v48 count:16];
      }

      while (v25);
    }

    v31 = [MEMORY[0x277D2C900] combineAllFutures:v17];
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __85__HUMediaAccountUtilities_determineMediaPickerAvailabilityForHomePodProfiles_inHome___block_invoke_3;
    v36[3] = &unk_277DB7628;
    v37 = v3;
    v32 = [v31 addCompletionBlock:v36];
  }

  else
  {
    v59 = @"HOMediaSelectionShowLibraryContentKey";
    v60[0] = MEMORY[0x277CBEC28];
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v60 forKeys:&v59 count:1];
    [v3 finishWithResult:v17];
  }
}

void __85__HUMediaAccountUtilities_determineMediaPickerAvailabilityForHomePodProfiles_inHome___block_invoke_44(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 56) == 1 && *(a1 + 57) == 1)
  {
    v4 = [MEMORY[0x277D14400] sharedInstance];
    v5 = *(a1 + 32);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __85__HUMediaAccountUtilities_determineMediaPickerAvailabilityForHomePodProfiles_inHome___block_invoke_2;
    v10[3] = &unk_277DB7C78;
    v11 = v3;
    v12 = *(a1 + 40);
    [v4 getHomeMediaAccountForHome:v5 withCompletion:v10];
  }

  else
  {
    v6 = MEMORY[0x277CCABB0];
    v7 = *(a1 + 40);
    v8 = [*(a1 + 48) hf_appleMusicCurrentLoggedInAccount];
    v9 = [v6 numberWithBool:{objc_msgSend(v7, "hasSameAppleMusicServiceAltDSID:", v8)}];
    [v3 finishWithResult:v9];
  }
}

void __85__HUMediaAccountUtilities_determineMediaPickerAvailabilityForHomePodProfiles_inHome___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(*(a1 + 40), "hasSameAppleMusicServiceAltDSID:", a2)}];
  [v2 finishWithResult:v3];
}

void __85__HUMediaAccountUtilities_determineMediaPickerAvailabilityForHomePodProfiles_inHome___block_invoke_3(uint64_t a1, void *a2)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v3 = [a2 na_all:&__block_literal_global_49];
  v4 = *(a1 + 32);
  v7 = @"HOMediaSelectionShowLibraryContentKey";
  v5 = [MEMORY[0x277CCABB0] numberWithBool:v3];
  v8[0] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  [v4 finishWithResult:v6];
}

uint64_t __85__HUMediaAccountUtilities_determineMediaPickerAvailabilityForHomePodProfiles_inHome___block_invoke_4(uint64_t a1, void *a2)
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

  v6 = [v5 BOOLValue];
  return v6;
}

id __85__HUMediaAccountUtilities_determineMediaPickerAvailabilityForHomePodProfiles_inHome___block_invoke_5(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v18;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v18 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v17 + 1) + 8 * i);
        objc_opt_class();
        v9 = v8;
        if (objc_opt_isKindOfClass())
        {
          v10 = v9;
        }

        else
        {
          v10 = 0;
        }

        v11 = v10;

        if (v11)
        {
          [*(a1 + 32) addEntriesFromDictionary:v11];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v5);
  }

  v12 = HFLogForCategory();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = NSStringFromSelector(*(a1 + 40));
    v14 = *(a1 + 32);
    *buf = 138412546;
    v22 = v13;
    v23 = 2112;
    v24 = v14;
    _os_log_impl(&dword_20CEB6000, v12, OS_LOG_TYPE_DEFAULT, "%@ mediaPicker result [%@]", buf, 0x16u);
  }

  v15 = [MEMORY[0x277D2C900] futureWithResult:*(a1 + 32)];

  return v15;
}

@end