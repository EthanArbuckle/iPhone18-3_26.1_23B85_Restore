@interface MOSuggestionSheetSettingsController
+ (BOOL)fetchSiginificantLocationEnablementStatus;
+ (id)onboardingSettingsBundle;
+ (int)runCommand:(id)command;
- (BOOL)_isAnySettingEnabled;
- (MOSuggestionSheetSettingsController)init;
- (id)_getLocalizedSpecifier:(id)specifier;
- (id)_getStreamToggle:(id)toggle;
- (id)specifiers;
- (void)_clearHistory:(id)history;
- (void)_clearHistoryWarmup:(id)warmup;
- (void)_processDevicesJSON:(id)n;
- (void)_setStreamToggle:(id)toggle withSpecifier:(id)specifier;
- (void)_setStreamToggleWarmup:(id)warmup withSpecifier:(id)specifier;
- (void)didTapSuggestionNotificationSettings:(id)settings;
- (void)didTapTurnOffAll:(id)all;
- (void)didTapTurnOffAllWarmup:(id)warmup;
- (void)didTapTurnOnAll:(id)all;
- (void)didTapTurnOnJournalingSuggestion:(id)suggestion;
- (void)didTransitionTo:(id)to;
- (void)dismissDataAccessExplanationSheet:(id)sheet;
- (void)fillSupportedApplicationsArray:(id)array andSupportedApplicationsWithDataAccess:(id)access;
- (void)navigateToiCloudTCC:(id)c;
- (void)shouldDismissOnboarding;
- (void)showDataAccessExplanationSheet:(id)sheet;
- (void)showPrivacyExplanationSheet:(id)sheet;
- (void)syncFromPhone:(id)phone;
@end

@implementation MOSuggestionSheetSettingsController

+ (id)onboardingSettingsBundle
{
  v2 = MEMORY[0x277CCA8D8];
  v3 = objc_opt_class();

  return [v2 bundleForClass:v3];
}

+ (BOOL)fetchSiginificantLocationEnablementStatus
{
  v2 = dispatch_group_create();
  dispatch_group_enter(v2);
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  defaultManager = [MEMORY[0x277D01280] defaultManager];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __80__MOSuggestionSheetSettingsController_fetchSiginificantLocationEnablementStatus__block_invoke;
  v7[3] = &unk_27991F050;
  v9 = &v10;
  v4 = v2;
  v8 = v4;
  [defaultManager fetchRoutineStateWithHandler:v7];

  v5 = dispatch_time(0, 3000000000);
  dispatch_group_wait(v4, v5);
  LOBYTE(defaultManager) = *(v11 + 24);

  _Block_object_dispose(&v10, 8);
  return defaultManager;
}

void __80__MOSuggestionSheetSettingsController_fetchSiginificantLocationEnablementStatus__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2 && !a3)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  dispatch_group_leave(*(a1 + 32));
}

+ (int)runCommand:(id)command
{
  v15 = *MEMORY[0x277D85DE8];
  commandCopy = command;
  v4 = [commandCopy count];
  v5 = v4;
  v6 = (&v13 - ((8 * v4 + 23) & 0xFFFFFFFFFFFFFFF0));
  if ((8 * v4 + 8) >= 0x200)
  {
    v7 = 512;
  }

  else
  {
    v7 = 8 * v4 + 8;
  }

  bzero(&v13 - ((8 * v4 + 23) & 0xFFFFFFFFFFFFFFF0), v7);
  v6[v5] = 0;
  if ([commandCopy count])
  {
    v8 = 0;
    do
    {
      v9 = [commandCopy objectAtIndexedSubscript:v8];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        +[MOSuggestionSheetSettingsController runCommand:];
      }

      v6[v8] = [v9 cStringUsingEncoding:4];

      ++v8;
    }

    while (v8 < [commandCopy count]);
  }

  v14 = 0;
  v10 = posix_spawn(&v14, *v6, 0, 0, v6, 0);
  v13 = v10;
  if (!v10)
  {
    waitpid(v14, &v13, 0);
    v10 = v13;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

- (MOSuggestionSheetSettingsController)init
{
  v7.receiver = self;
  v7.super_class = MOSuggestionSheetSettingsController;
  v2 = [(MOSuggestionSheetSettingsController *)&v7 init];
  v3 = v2;
  if (v2)
  {
    supportedApplications = v2->supportedApplications;
    v2->supportedApplications = 0;

    supportedApplicationsWithDataAccess = v3->supportedApplicationsWithDataAccess;
    v3->supportedApplicationsWithDataAccess = 0;

    v3->supportedApplicationsLoading = 0;
  }

  return v3;
}

- (void)_processDevicesJSON:(id)n
{
  v75 = *MEMORY[0x277D85DE8];
  nCopy = n;
  v5 = [nCopy dataUsingEncoding:4];
  v6 = v5;
  if (v5)
  {
    selfCopy = self;
    v46 = v5;
    v7 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v5 options:16 error:0];
    v64 = 0u;
    v65 = 0u;
    v66 = 0u;
    v67 = 0u;
    v8 = [v7 countByEnumeratingWithState:&v64 objects:v74 count:16];
    v47 = nCopy;
    if (v8)
    {
      v9 = v8;
      v10 = 0;
      v49 = 0;
      v50 = 0;
      v55 = 0;
      v48 = 0;
      v51 = 0;
      v52 = 0;
      v11 = *v65;
      LOBYTE(v60) = 1;
      v12 = 0x277CBE000uLL;
      v54 = 1;
      v53 = v7;
      v58 = *v65;
      do
      {
        v13 = 0;
        v59 = v9;
        do
        {
          if (*v65 != v11)
          {
            objc_enumerationMutation(v7);
          }

          v14 = [v7 objectForKeyedSubscript:*(*(&v64 + 1) + 8 * v13)];
          v15 = *(v12 + 2752);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v16 = v14;
            v63 = [v16 objectForKeyedSubscript:@"idiom"];
            v62 = [v63 isEqualToString:@".phone"];
            v17 = [v16 objectForKeyedSubscript:@"thisDevice"];
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) != 0 && [v17 BOOLValue])
            {
              v18 = [v16 objectForKeyedSubscript:@"id"];
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) != 0 && [v18 length])
              {
                v19 = v10;
                v20 = v18;

                v50 = v20;
              }

              else
              {
                v19 = v10;
              }

              v21 = [v16 objectForKeyedSubscript:@"onboarded"];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v55 |= [v21 BOOLValue];
              }

              v22 = [v16 objectForKeyedSubscript:@"accountState"];
              if ([v22 isEqualToString:@"signedOut"])
              {
                v54 = 0;
              }

              else if ([v22 isEqualToString:@"tccDenied"])
              {
                LOBYTE(v49) = 0;
                v54 = 1;
              }

              else
              {
                LOBYTE(v49) = [v22 isEqualToString:@"signedIn"];
                BYTE4(v49) |= v49 ^ 1;
                v54 = v49;
              }

              v23 = [v16 objectForKeyedSubscript:@"deviceCapabilities"];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v48 = [v23 containsObject:@"neverOnboarded"];
              }

              v10 = v19;
              v11 = v58;
              v9 = v59;
            }

            v24 = [v16 objectForKeyedSubscript:@"primary"];
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) != 0 && [v24 BOOLValue])
            {
              v25 = [v16 objectForKeyedSubscript:@"id"];
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) != 0 && [v25 length])
              {
                v26 = v25;

                v51 = v26;
              }

              v27 = [v16 objectForKeyedSubscript:@"name"];
              objc_opt_class();
              v57 = v10;
              v56 = v27;
              if ((objc_opt_isKindOfClass() & 1) != 0 && [v27 length])
              {
                v28 = v27;

                v52 = v28;
              }

              v61 = [v16 objectForKeyedSubscript:@"userModificationDate"];
              v29 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.momentsui"];
              v30 = [v29 objectForKey:@"StalePrimaryWarningThreshold"];
              intValue = 604800;
              if (v30)
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  intValue = [v30 intValue];
                }
              }

              date = [MEMORY[0x277CBEAA8] date];
              [date timeIntervalSinceReferenceDate];
              v34 = v33;
              [v61 doubleValue];
              v36 = v34 - v35;

              v60 = (v36 >= intValue) & v60;
              v37 = _mo_log_facility_get_os_log(MOLogFacilitySettings);
              if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
              {
                *buf = 67109632;
                v69 = v60;
                v70 = 1024;
                v71 = intValue;
                v72 = 2048;
                v73 = v36;
                _os_log_impl(&dword_25A200000, v37, OS_LOG_TYPE_INFO, "primaryIsStale=%d, stalePrimaryWarningThreshold=%d, primaryStaleness=%f", buf, 0x18u);
              }

              v7 = v53;
              v10 = v57;
              v11 = v58;
              v9 = v59;
            }

            else
            {
              v25 = _mo_log_facility_get_os_log(MOLogFacilitySettings);
              if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
              {
                *buf = 0;
                _os_log_impl(&dword_25A200000, v25, OS_LOG_TYPE_INFO, "primaryIsStale=YES, no primary", buf, 2u);
              }
            }

            v10 += v62;

            v12 = 0x277CBE000;
          }

          ++v13;
        }

        while (v9 != v13);
        v9 = [v7 countByEnumeratingWithState:&v64 objects:v74 count:16];
      }

      while (v9);
    }

    else
    {
      v10 = 0;
      v49 = 0;
      v50 = 0;
      v48 = 0;
      v51 = 0;
      v52 = 0;
      LOBYTE(v60) = 1;
      v54 = 1;
      LOBYTE(v55) = 0;
    }

    currentDeviceID = selfCopy->_currentDeviceID;
    selfCopy->_currentDeviceID = v50;
    v39 = v50;

    primaryDeviceID = selfCopy->_primaryDeviceID;
    selfCopy->_primaryDeviceID = &v51->isa;
    v41 = v51;

    primaryName = selfCopy->_primaryName;
    selfCopy->_primaryName = v52;
    v43 = v52;

    selfCopy->_neverOnboarded = v48 & 1;
    selfCopy->_isOnboarded = v55 & 1;
    selfCopy->_isSignedIn = v54 & 1;
    selfCopy->_tcc = v49 & 1;
    selfCopy->_accountUnknown = BYTE4(v49) & 1;
    selfCopy->_numPhones = v10;
    selfCopy->_primaryIsStale = v60 & 1;

    v6 = v46;
    nCopy = v47;
  }

  v44 = *MEMORY[0x277D85DE8];
}

- (id)specifiers
{
  v218 = *MEMORY[0x277D85DE8];
  v2 = +[MOSuggestionSheetSettingsController onboardingSettingsBundle];
  v210 = 0;
  v211 = &v210;
  v212 = 0x3032000000;
  v213 = __Block_byref_object_copy__0;
  v214 = __Block_byref_object_dispose__0;
  v215 = 0;
  v3 = dispatch_group_create();
  v4 = objc_alloc_init(MEMORY[0x277D2A208]);
  dispatch_group_enter(v3);
  v207[0] = MEMORY[0x277D85DD0];
  v207[1] = 3221225472;
  v207[2] = __49__MOSuggestionSheetSettingsController_specifiers__block_invoke;
  v207[3] = &unk_27991F078;
  v209 = &v210;
  v5 = v3;
  v208 = v5;
  [v4 deviceListJSONWithCompletionHandler:v207];
  dispatch_group_wait(v5, 0xFFFFFFFFFFFFFFFFLL);

  [(MOSuggestionSheetSettingsController *)self _processDevicesJSON:v211[5]];
  v177 = [v2 localizedStringForKey:@"Go to Settings" value:&stru_286BDDEB8 table:0];
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (!userInterfaceIdiom)
  {
    v12 = +[MOOnboardingManager sharedInstance];
    self->_isOnboarded = [v12 isOnboarded];

    if (self->_accountUnknown)
    {
      v13 = 0;
    }

    else if (self->_isSignedIn)
    {
      currentDeviceID = self->_currentDeviceID;
      primaryDeviceID = self->_primaryDeviceID;
      if (self->_tcc)
      {
        if ([(NSString *)currentDeviceID isEqualToString:primaryDeviceID])
        {
          v13 = 1;
        }

        else
        {
          v13 = 3;
        }
      }

      else if ([(NSString *)currentDeviceID isEqualToString:primaryDeviceID])
      {
        v13 = 2;
      }

      else
      {
        v13 = 4;
      }
    }

    else
    {
      v13 = 5;
    }

    v192 = [v2 localizedStringForKey:@"Sync Settings" value:&stru_286BDDEB8 table:0];
    v10 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"SYNC_FROM_IPHONE_GROUP" name:v192];
    v179 = *MEMORY[0x277D3FFE8];
    [v10 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:?];
    v8 = [v2 localizedStringForKey:@"Suggestions will no longer be created from" value:&stru_286BDDEB8 table:0];
    v9 = [v2 localizedStringForKey:@"You can manage how journaling suggestions on this iPhone sync to iCloud in Settings." value:&stru_286BDDEB8 table:0];
    range = [v177 length];
    v171 = 0;
    v172 = v10;
    if (v13 <= 2)
    {
      if (v13 == 1)
      {
        v10 = [v2 localizedStringForKey:@"You’re using this iPhone to create journaling suggestions that can sync to iPad." value:&stru_286BDDEB8 table:0];
        v37 = MEMORY[0x277CCACA8];
        v38 = [v2 localizedStringForKey:@"%@\n\n%@ %@" value:&stru_286BDDEB8 table:0];
        v177 = [v37 localizedStringWithFormat:v38, v10, v9, v177];

        [v172 setObject:v177 forKeyedSubscript:*MEMORY[0x277D3FF88]];
        v39 = objc_opt_class();
        v40 = NSStringFromClass(v39);
        [v172 setProperty:v40 forKey:*MEMORY[0x277D3FF48]];

        v41 = [v177 length];
        v221.length = range;
        v221.location = v41 - range;
        v42 = NSStringFromRange(v221);
        [v172 setProperty:v42 forKey:*MEMORY[0x277D3FF58]];

        v43 = [MEMORY[0x277CCAE60] valueWithNonretainedObject:self];
        [v172 setProperty:v43 forKey:*MEMORY[0x277D3FF68]];

        [v172 setProperty:@"navigateToiCloudTCC:" forKey:*MEMORY[0x277D3FF50]];
        goto LABEL_43;
      }

      if (v13 != 2)
      {
        v181 = 0;
        v161 = 0;
        v172 = 0;
        goto LABEL_45;
      }
    }

    else
    {
      if (v13 == 3)
      {
        v10 = [v2 localizedStringForKey:@"Sync from This iPhone" value:&stru_286BDDEB8 table:0];
        v35 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v10 target:self set:0 get:0 detail:0 cell:13 edit:0];
        [v35 setButtonAction:sel_syncFromPhone_];
        v161 = v35;
        v177 = [v2 localizedStringForKey:@"Use this iPhone to create journaling suggestions that can sync to iPad." value:&stru_286BDDEB8 table:0];
        if (!self->_primaryDeviceID || self->_primaryIsStale)
        {
          goto LABEL_110;
        }

        if (self->_primaryName)
        {
          [MEMORY[0x277CCACA8] stringWithFormat:@"%@", self->_primaryName];
        }

        else
        {
          [v2 localizedStringForKey:@"your other iPhone" value:&stru_286BDDEB8 table:0];
        }
        v129 = ;
        v130 = MEMORY[0x277CCACA8];
        v131 = [v2 localizedStringForKey:@"%@ %@." value:&stru_286BDDEB8 table:0];
        v129 = [v130 localizedStringWithFormat:v131, v8, v129];

        if (v129)
        {
          v132 = MEMORY[0x277CCACA8];
          v133 = [v2 localizedStringForKey:@"%@ %@\n\n%@ %@" value:&stru_286BDDEB8 table:0];
          v1772 = [v132 localizedStringWithFormat:v133, v177, v129, v9, v177];
        }

        else
        {
LABEL_110:
          v134 = MEMORY[0x277CCACA8];
          v133 = [v2 localizedStringForKey:@"%@\n\n%@ %@" value:&stru_286BDDEB8 table:0];
          v1772 = [v134 localizedStringWithFormat:v133, v177, v9, v177];
          v129 = 0;
        }

        [v172 setObject:v1772 forKeyedSubscript:*MEMORY[0x277D3FF88]];
        v135 = objc_opt_class();
        v136 = NSStringFromClass(v135);
        [v172 setProperty:v136 forKey:*MEMORY[0x277D3FF48]];

        v137 = [v1772 length];
        v224.length = range;
        v224.location = v137 - range;
        v138 = NSStringFromRange(v224);
        [v172 setProperty:v138 forKey:*MEMORY[0x277D3FF58]];

        v139 = [MEMORY[0x277CCAE60] valueWithNonretainedObject:self];
        [v172 setProperty:v139 forKey:*MEMORY[0x277D3FF68]];

        [v172 setProperty:@"navigateToiCloudTCC:" forKey:*MEMORY[0x277D3FF50]];
        v171 = 0;
        v181 = 0;
        goto LABEL_17;
      }

      if (v13 == 4)
      {
        v10 = [v2 localizedStringForKey:@"Sync from This iPhone" value:&stru_286BDDEB8 table:0];
        v36 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v10 target:self set:0 get:0 detail:0 cell:13 edit:0];
        [v36 setButtonAction:sel_syncFromPhone_];
        [v36 setProperty:MEMORY[0x277CBEC28] forKey:*MEMORY[0x277D3FF38]];
        v161 = v36;
        v177 = [v2 localizedStringForKey:@"Use this iPhone to create journaling suggestions that can sync to iPad." value:&stru_286BDDEB8 table:0];
        v129 = [v2 localizedStringForKey:@"You'll need Journaling Suggestions enabled in iCloud settings." value:&stru_286BDDEB8 table:0];
        if (!self->_primaryDeviceID || self->_primaryIsStale)
        {
          goto LABEL_115;
        }

        if (self->_primaryName)
        {
          [MEMORY[0x277CCACA8] stringWithFormat:@"%@", self->_primaryName];
        }

        else
        {
          [v2 localizedStringForKey:@"your other iPhone" value:&stru_286BDDEB8 table:0];
        }
        v140 = ;
        v141 = MEMORY[0x277CCACA8];
        v142 = [v2 localizedStringForKey:@"%@ %@." value:&stru_286BDDEB8 table:0];
        v1772 = [v141 localizedStringWithFormat:v142, v8, v140];

        if (v1772)
        {
          v143 = MEMORY[0x277CCACA8];
          v144 = [v2 localizedStringForKey:@"%@ %@\n\n%@ %@" value:&stru_286BDDEB8 table:0];
          v1773 = [v143 localizedStringWithFormat:v144, v177, v1772, v129, v177];
        }

        else
        {
LABEL_115:
          v145 = MEMORY[0x277CCACA8];
          v144 = [v2 localizedStringForKey:@"%@\n\n%@ %@" value:&stru_286BDDEB8 table:0];
          v1773 = [v145 localizedStringWithFormat:v144, v177, v129, v177];
          v1772 = 0;
        }

        [v172 setObject:v1773 forKeyedSubscript:*MEMORY[0x277D3FF88]];
        v146 = objc_opt_class();
        v147 = NSStringFromClass(v146);
        [v172 setProperty:v147 forKey:*MEMORY[0x277D3FF48]];

        v148 = [v1773 length];
        v225.length = range;
        v225.location = v148 - range;
        v149 = NSStringFromRange(v225);
        [v172 setProperty:v149 forKey:*MEMORY[0x277D3FF58]];

        v150 = [MEMORY[0x277CCAE60] valueWithNonretainedObject:self];
        [v172 setProperty:v150 forKey:*MEMORY[0x277D3FF68]];

        [v172 setProperty:@"navigateToiCloudTCC:" forKey:*MEMORY[0x277D3FF50]];
        v171 = 0;
        v181 = 0;
        goto LABEL_16;
      }
    }

    v10 = [v2 localizedStringForKey:@"To use this iPhone to create journaling suggestions that can sync to iPad value:enable Journaling Suggestions in iCloud settings." table:{&stru_286BDDEB8, 0}];
    v28 = MEMORY[0x277CCACA8];
    v29 = [v2 localizedStringForKey:@"%@ %@" value:&stru_286BDDEB8 table:0];
    v177 = [v28 localizedStringWithFormat:v29, v10, v177];

    [v172 setObject:v177 forKeyedSubscript:*MEMORY[0x277D3FF88]];
    v30 = objc_opt_class();
    v31 = NSStringFromClass(v30);
    [v172 setProperty:v31 forKey:*MEMORY[0x277D3FF48]];

    v32 = [v177 length];
    v220.length = range;
    v220.location = v32 - range;
    v33 = NSStringFromRange(v220);
    [v172 setProperty:v33 forKey:*MEMORY[0x277D3FF58]];

    v34 = [MEMORY[0x277CCAE60] valueWithNonretainedObject:self];
    [v172 setProperty:v34 forKey:*MEMORY[0x277D3FF68]];

    [v172 setProperty:@"navigateToiCloudTCC:" forKey:*MEMORY[0x277D3FF50]];
LABEL_43:
    v171 = 0;
    v181 = 0;
    v161 = 0;
    goto LABEL_44;
  }

  v192 = [v2 localizedStringForKey:@"Sync Settings" value:&stru_286BDDEB8 table:0];
  v7 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"SYNC_TO_IPAD_GROUP" name:v192];
  v179 = *MEMORY[0x277D3FFE8];
  [v7 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:?];
  v8 = [v2 localizedStringForKey:@"Show suggested moments created on your iPhone." value:&stru_286BDDEB8 table:0];
  v9 = [v2 localizedStringForKey:@"Suggestions use data from apps and services you turn on value:but can appear in any app using suggestions. Data used for suggestions is private and stored on-device." table:{&stru_286BDDEB8, 0}];
  v10 = [v2 localizedStringForKey:@"About Journaling Suggestions & Privacy" value:&stru_286BDDEB8 table:0];
  v177 = [v2 localizedStringForKey:@"To customize journaling suggestions or clear history value:go to" table:{&stru_286BDDEB8, 0}];
  if (self->_primaryDeviceID && !self->_primaryIsStale)
  {
    v14 = v7;
    v15 = [v2 localizedStringForKey:@"the iPhone that’s set to sync journaling suggestions" value:&stru_286BDDEB8 table:0];
    v16 = MEMORY[0x277CCACA8];
    v17 = [v2 localizedStringForKey:@"%@ %@." value:&stru_286BDDEB8 table:0];
    v129 = [v16 localizedStringWithFormat:v17, v177, v15];

    v7 = v14;
  }

  else
  {
    v129 = 0;
  }

  v1772 = [v2 localizedStringForKey:@"You can manage how journaling suggestions sync from iCloud to this iPad in Settings." value:&stru_286BDDEB8 table:0];
  v181 = v7;
  v19 = MEMORY[0x277CCACA8];
  if (v129)
  {
    v20 = [v2 localizedStringForKey:@"%@\n\n%@ %@\n\n%@\n\n%@ %@" value:&stru_286BDDEB8 table:0];
    [v19 localizedStringWithFormat:v20, v8, v9, v10, v129, v1772, v177];
  }

  else
  {
    v20 = [v2 localizedStringForKey:@"%@\n\n%@ %@\n\n%@ %@" value:&stru_286BDDEB8 table:0];
    [v19 localizedStringWithFormat:v20, v8, v9, v10, v1772, v177];
  }
  v1773 = ;

  [v181 setObject:v1773 forKeyedSubscript:*MEMORY[0x277D3FF88]];
  v22 = objc_opt_class();
  v23 = NSStringFromClass(v22);
  [v181 setProperty:v23 forKey:*MEMORY[0x277D3FF48]];

  [v181 addFooterHyperlinkWithRange:objc_msgSend(v8 target:"length") + objc_msgSend(v9 action:{"length") + 3, objc_msgSend(v10, "length"), self, sel_showPrivacyExplanationSheet_}];
  [v181 addFooterHyperlinkWithRange:objc_msgSend(v1773 target:"length") - objc_msgSend(v177 action:{"length"), objc_msgSend(v177, "length"), self, sel_navigateToiCloudTCC_}];
  v24 = [v2 localizedStringForKey:@"Allow Sync to iPad" value:&stru_286BDDEB8 table:0];
  v171 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v24 target:self set:sel__setStreamToggle_withSpecifier_ get:sel__getStreamToggle_ detail:0 cell:6 edit:0];
  if (self->_isSignedIn && self->_tcc)
  {
    v25 = v171;
    [v171 setTarget:?];
  }

  else
  {
    v25 = v171;
    [v171 setProperty:MEMORY[0x277CBEC28] forKey:*MEMORY[0x277D3FF38]];
    [v171 setTarget:0];
  }

  [v25 setObject:@"Sync to iPad" forKeyedSubscript:*MEMORY[0x277D3FFB8]];
  [v25 setObject:NSClassFromString(&cfstr_Pssubtitleswit.isa) forKeyedSubscript:*MEMORY[0x277D3FE58]];
  [v25 setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FD80]];

  v161 = 0;
  v172 = 0;
LABEL_16:

LABEL_17:
LABEL_44:

LABEL_45:
  array = [MEMORY[0x277CBEB18] array];
  v175 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"PRE_ONBOARDING_NO_APP_WARMUP" name:&stru_286BDDEB8];
  [v175 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:v179];
  v45 = [v2 localizedStringForKey:@"Journaling Suggestions are only available when there is a journaling App on iPhone" value:&stru_286BDDEB8 table:0];
  v178 = *MEMORY[0x277D3FF88];
  [v175 setObject:v45 forKeyedSubscript:?];

  v46 = MEMORY[0x277D3FAD8];
  v47 = [v2 localizedStringForKey:@"Turn On Journaling Suggestions" value:&stru_286BDDEB8 table:0];
  v174 = [v46 preferenceSpecifierNamed:v47 target:self set:0 get:0 detail:0 cell:13 edit:0];

  v193 = *MEMORY[0x277D3FD80];
  [v174 setProperty:MEMORY[0x277CBEC38] forKey:?];
  [v174 setButtonAction:sel_didTapTurnOnJournalingSuggestion_];
  v167 = [v2 localizedStringForKey:@"Turn Off All" value:&stru_286BDDEB8 table:0];
  v166 = [v2 localizedStringForKey:@"Turn On All" value:&stru_286BDDEB8 table:0];
  v48 = MEMORY[0x277D3FAD8];
  if ([(MOSuggestionSheetSettingsController *)self _isAnySettingEnabled])
  {
    v49 = v167;
  }

  else
  {
    v49 = v166;
  }

  v170 = [v48 preferenceSpecifierNamed:v49 target:self set:0 get:0 detail:0 cell:13 edit:0];
  _isAnySettingEnabled = [(MOSuggestionSheetSettingsController *)self _isAnySettingEnabled];
  v51 = &selRef_didTapTurnOffAllWarmup_;
  if (!_isAnySettingEnabled)
  {
    v51 = &selRef_didTapTurnOnAll_;
  }

  [v170 setButtonAction:*v51];
  v154 = [v2 localizedStringForKey:@"Include Suggestions From" value:&stru_286BDDEB8 table:0];
  v52 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"INCLUDE_SUGGESTIONS_FROM_GROUP" name:?];
  [v52 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:v179];
  v191 = v52;
  v153 = [MEMORY[0x277D37630] bundleWithIdentifier:@"com.apple.onboarding.journal"];
  privacyFlow = [v153 privacyFlow];
  localizedButtonTitle = [privacyFlow localizedButtonTitle];

  v164 = [v2 localizedStringForKey:@"Suggestions use data from apps and services you turn on value:but can appear in any app using suggestions. Data used for suggestions is private and stored on-device." table:{&stru_286BDDEB8, 0}];
  v173 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@", v164, localizedButtonTitle];
  [v191 setObject:v173 forKeyedSubscript:v178];
  v54 = objc_opt_class();
  v55 = NSStringFromClass(v54);
  v158 = *MEMORY[0x277D3FF48];
  [v191 setProperty:v55 forKey:?];

  v56 = [v164 length];
  v222.length = [localizedButtonTitle length];
  v222.location = v56 + 1;
  v57 = NSStringFromRange(v222);
  v157 = *MEMORY[0x277D3FF58];
  [v191 setProperty:v57 forKey:?];

  v58 = [MEMORY[0x277CCAE60] valueWithNonretainedObject:self];
  v156 = *MEMORY[0x277D3FF68];
  [v191 setProperty:v58 forKey:?];

  v155 = *MEMORY[0x277D3FF50];
  [v191 setProperty:@"showPrivacyExplanationSheet:" forKey:?];
  v59 = MEMORY[0x277D3FAD8];
  v60 = [v2 localizedStringForKey:@"Activity" value:&stru_286BDDEB8 table:0];
  v187 = [v59 preferenceSpecifierNamed:v60 target:self set:sel__setStreamToggleWarmup_withSpecifier_ get:sel__getStreamToggle_ detail:0 cell:6 edit:0];

  v61 = *MEMORY[0x277D3FFB8];
  [v187 setObject:@"Activity" forKeyedSubscript:*MEMORY[0x277D3FFB8]];
  v62 = NSClassFromString(&cfstr_Pssubtitleswit.isa);
  v63 = *MEMORY[0x277D3FE58];
  [v187 setObject:v62 forKeyedSubscript:*MEMORY[0x277D3FE58]];
  v64 = [v2 localizedStringForKey:@"Your workouts and exercise" value:&stru_286BDDEB8 table:0];
  v65 = *MEMORY[0x277D40160];
  [v187 setObject:v64 forKeyedSubscript:*MEMORY[0x277D40160]];

  [v187 setProperty:MEMORY[0x277CBEC38] forKey:v193];
  v66 = MEMORY[0x277D3FAD8];
  v67 = [v2 localizedStringForKey:@"Media" value:&stru_286BDDEB8 table:0];
  v186 = [v66 preferenceSpecifierNamed:v67 target:self set:sel__setStreamToggleWarmup_withSpecifier_ get:sel__getStreamToggle_ detail:0 cell:6 edit:0];

  [v186 setObject:@"Media" forKeyedSubscript:v61];
  [v186 setObject:NSClassFromString(&cfstr_Pssubtitleswit.isa) forKeyedSubscript:v63];
  v68 = [v2 localizedStringForKey:@"Podcasts value:music table:{videos, and more", &stru_286BDDEB8, 0}];
  [v186 setObject:v68 forKeyedSubscript:v65];

  [v186 setProperty:MEMORY[0x277CBEC38] forKey:v193];
  v69 = MEMORY[0x277D3FAD8];
  v70 = [v2 localizedStringForKey:@"Contacts" value:&stru_286BDDEB8 table:0];
  v185 = [v69 preferenceSpecifierNamed:v70 target:self set:sel__setStreamToggleWarmup_withSpecifier_ get:sel__getStreamToggle_ detail:0 cell:6 edit:0];

  [v185 setObject:@"Contacts" forKeyedSubscript:v61];
  [v185 setObject:NSClassFromString(&cfstr_Pssubtitleswit.isa) forKeyedSubscript:v63];
  v71 = [v2 localizedStringForKey:@"People you message and call" value:&stru_286BDDEB8 table:0];
  [v185 setObject:v71 forKeyedSubscript:v65];

  [v185 setProperty:MEMORY[0x277CBEC38] forKey:v193];
  v72 = MEMORY[0x277D3FAD8];
  v73 = [v2 localizedStringForKey:@"Photos" value:&stru_286BDDEB8 table:0];
  v184 = [v72 preferenceSpecifierNamed:v73 target:self set:sel__setStreamToggleWarmup_withSpecifier_ get:sel__getStreamToggle_ detail:0 cell:6 edit:0];

  [v184 setObject:@"Photos" forKeyedSubscript:v61];
  [v184 setObject:NSClassFromString(&cfstr_Pssubtitleswit.isa) forKeyedSubscript:v63];
  v74 = [v2 localizedStringForKey:@"Library value:memories and people" table:{&stru_286BDDEB8, 0}];
  [v184 setObject:v74 forKeyedSubscript:v65];

  [v184 setProperty:MEMORY[0x277CBEC38] forKey:v193];
  LODWORD(v73) = +[MOSuggestionSheetSettingsController fetchSiginificantLocationEnablementStatus];
  v75 = MEMORY[0x277D3FAD8];
  v76 = [v2 localizedStringForKey:@"Significant Locations" value:&stru_286BDDEB8 table:0];
  rangea = [v75 preferenceSpecifierNamed:v76 target:self set:sel__setStreamToggleWarmup_withSpecifier_ get:sel__getStreamToggle_ detail:0 cell:6 edit:0];

  [rangea setObject:@"Significant Locations" forKeyedSubscript:v61];
  [rangea setObject:NSClassFromString(&cfstr_Pssubtitleswit.isa) forKeyedSubscript:v63];
  v77 = [v2 localizedStringForKey:@"Places where you spend time" value:&stru_286BDDEB8 table:0];
  [rangea setObject:v77 forKeyedSubscript:v65];

  v78 = MEMORY[0x277CBEC38];
  [rangea setProperty:MEMORY[0x277CBEC38] forKey:v193];
  if (v73)
  {
    v79 = v78;
  }

  else
  {
    v79 = MEMORY[0x277CBEC28];
  }

  [rangea setProperty:v79 forKey:*MEMORY[0x277D3FF38]];
  v80 = MEMORY[0x277D3FAD8];
  v81 = [v2 localizedStringForKey:@"State of Mind" value:&stru_286BDDEB8 table:0];
  v183 = [v80 preferenceSpecifierNamed:v81 target:self set:sel__setStreamToggleWarmup_withSpecifier_ get:sel__getStreamToggle_ detail:0 cell:6 edit:0];

  [v183 setObject:@"State of Mind" forKeyedSubscript:v61];
  [v183 setObject:NSClassFromString(&cfstr_Pssubtitleswit.isa) forKeyedSubscript:v63];
  v82 = [v2 localizedStringForKey:@"Moods and emotions you log" value:&stru_286BDDEB8 table:0];
  [v183 setObject:v82 forKeyedSubscript:v65];

  [v183 setProperty:MEMORY[0x277CBEC38] forKey:v193];
  emptyGroupSpecifier = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
  [emptyGroupSpecifier setObject:MEMORY[0x277CBEC38] forKeyedSubscript:v179];
  v83 = [v2 localizedStringForKey:@"General prompts to reflect on gratitude value:kindness table:{purpose, and more", &stru_286BDDEB8, 0}];
  [emptyGroupSpecifier setObject:v83 forKeyedSubscript:v178];

  v84 = MEMORY[0x277D3FAD8];
  v85 = [v2 localizedStringForKey:@"Reflection Prompts" value:&stru_286BDDEB8 table:0];
  v182 = [v84 preferenceSpecifierNamed:v85 target:self set:sel__setStreamToggle_withSpecifier_ get:sel__getStreamToggle_ detail:0 cell:6 edit:0];

  [v182 setObject:@"Reflection" forKeyedSubscript:v61];
  [v182 setObject:NSClassFromString(&cfstr_Pssubtitleswit.isa) forKeyedSubscript:v63];
  [v182 setProperty:MEMORY[0x277CBEC38] forKey:v193];
  emptyGroupSpecifier2 = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
  v86 = MEMORY[0x277D3FAD8];
  v87 = [v2 localizedStringForKey:@"Clear History" value:&stru_286BDDEB8 table:0];
  v169 = [v86 deleteButtonSpecifierWithName:v87 target:self action:sel__clearHistoryWarmup_];

  [v169 setObject:&unk_286BE0ED8 forKeyedSubscript:*MEMORY[0x277D3FD78]];
  v163 = [v2 localizedStringForKey:@"iPhone will discover nearby contacts to show moments spent with contacts higher up in your list of suggestions. This may also allow your contacts to discover when you’re nearby. Your name and location will not be shared." value:&stru_286BDDEB8 table:0];
  v152 = [v2 localizedStringForKey:@"Nearby People" value:&stru_286BDDEB8 table:0];
  v88 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"NEARBY_PEOPLE_GROUP" name:?];
  [v88 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:v179];
  [v88 setObject:v163 forKeyedSubscript:v178];
  v159 = v88;
  v89 = MEMORY[0x277D3FAD8];
  v90 = [v2 localizedStringForKey:@"Prioritize Moments with Contacts" value:&stru_286BDDEB8 table:0];
  v91 = [v89 preferenceSpecifierNamed:v90 target:self set:sel__setStreamToggle_withSpecifier_ get:sel__getStreamToggle_ detail:0 cell:6 edit:0];

  [v91 setObject:@"Prioritize Moments with Contacts" forKeyedSubscript:v61];
  [v91 setObject:NSClassFromString(&cfstr_Pssubtitleswit.isa) forKeyedSubscript:v63];
  [v91 setProperty:MEMORY[0x277CBEC38] forKey:v193];
  emptyGroupSpecifier3 = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
  v92 = MEMORY[0x277D3FAD8];
  v93 = [v2 localizedStringForKey:@"Notifications" value:&stru_286BDDEB8 table:0];
  v94 = [v92 preferenceSpecifierNamed:v93 target:self set:0 get:0 detail:0 cell:13 edit:0];

  [v94 setProperty:MEMORY[0x277CBEC38] forKey:v193];
  [v94 setButtonAction:sel_didTapSuggestionNotificationSettings_];
  v151 = [v2 localizedStringForKey:@"Apps Using Private Access" value:&stru_286BDDEB8 table:0];
  v95 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"APPS_USING_PRIVATE_ACCESS_GROUP" name:?];
  v194 = [v2 localizedStringForKey:@"Learn More" value:&stru_286BDDEB8 table:0];
  v96 = [v2 localizedStringForKey:@"Apps using Private Access for suggestions data will appear here." value:&stru_286BDDEB8 table:0];
  v194 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@", v96, v194];
  [v95 setObject:v194 forKeyedSubscript:v178];
  v97 = objc_opt_class();
  v98 = NSStringFromClass(v97);
  [v95 setProperty:v98 forKey:v158];

  v99 = [v96 length];
  v223.length = [v194 length];
  v223.location = v99 + 1;
  v100 = NSStringFromRange(v223);
  [v95 setProperty:v100 forKey:v157];

  v101 = [MEMORY[0x277CCAE60] valueWithNonretainedObject:self];
  [v95 setProperty:v101 forKey:v156];

  [v95 setProperty:@"showDataAccessExplanationSheet:" forKey:v155];
  if (!self->supportedApplicationsLoading && !self->supportedApplications && !self->supportedApplicationsWithDataAccess)
  {
    v102 = _mo_log_facility_get_os_log(MOLogFacilitySettings);
    if (os_log_type_enabled(v102, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_25A200000, v102, OS_LOG_TYPE_DEFAULT, "Triggering loading of supported applications specifiers", buf, 2u);
    }

    self->supportedApplicationsLoading = 1;
    v103 = objc_opt_new();
    supportedApplications = self->supportedApplications;
    self->supportedApplications = v103;

    v105 = objc_opt_new();
    supportedApplicationsWithDataAccess = self->supportedApplicationsWithDataAccess;
    self->supportedApplicationsWithDataAccess = v105;

    v107 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v108 = dispatch_queue_create("MOSuggestionSheetSettingsController", v107);

    objc_initWeak(buf, self);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __49__MOSuggestionSheetSettingsController_specifiers__block_invoke_287;
    block[3] = &unk_27991F020;
    objc_copyWeak(&v205, buf);
    dispatch_async(v108, block);
    objc_destroyWeak(&v205);
    objc_destroyWeak(buf);
  }

  if (userInterfaceIdiom)
  {
    if (self->_neverOnboarded)
    {
      if (!self->supportedApplicationsLoading)
      {
        v109 = self->supportedApplications;
        if (v109)
        {
          if ([(NSMutableArray *)v109 count])
          {
            v110 = v174;
          }

          else
          {
            v110 = v175;
          }

          [array addObject:v110];
        }
      }
    }

    else if (v181)
    {
      [array addObject:v181];
      if (v171)
      {
        [array addObject:v171];
      }
    }

    selfCopy6 = self;
    if (!self->_neverOnboarded)
    {
      [array addObject:emptyGroupSpecifier3];
      [array addObject:v94];
      [array addObject:v95];
      selfCopy6 = self;
      if (!self->supportedApplicationsLoading)
      {
        v113 = self->supportedApplicationsWithDataAccess;
        if (v113)
        {
          v198 = 0u;
          v199 = 0u;
          v196 = 0u;
          v197 = 0u;
          v114 = v113;
          v115 = [(NSMutableArray *)v114 countByEnumeratingWithState:&v196 objects:v216 count:16];
          if (v115)
          {
            v116 = *v197;
            do
            {
              for (i = 0; i != v115; ++i)
              {
                if (*v197 != v116)
                {
                  objc_enumerationMutation(v114);
                }

                [array addObject:*(*(&v196 + 1) + 8 * i)];
              }

              v115 = [(NSMutableArray *)v114 countByEnumeratingWithState:&v196 objects:v216 count:16];
            }

            while (v115);
          }

LABEL_103:

          selfCopy6 = self;
          goto LABEL_104;
        }
      }
    }

    goto LABEL_104;
  }

  if (self->_isOnboarded)
  {
    if (v172)
    {
      [array addObject:v172];
      if (v161)
      {
        [array addObject:v161];
      }
    }

    [array addObject:v191];
    [array addObject:v170];
    [array addObject:v187];
    [array addObject:v186];
    [array addObject:v185];
    [array addObject:v184];
    [array addObject:rangea];
    [array addObject:v183];
    [array addObject:emptyGroupSpecifier2];
    [array addObject:v169];
    [array addObject:emptyGroupSpecifier];
    v111 = v182;
    goto LABEL_91;
  }

  if (!self->supportedApplicationsLoading)
  {
    v118 = self->supportedApplications;
    if (v118)
    {
      if ([(NSMutableArray *)v118 count])
      {
        v111 = v174;
      }

      else
      {
        v111 = v175;
      }

LABEL_91:
      [array addObject:v111];
    }
  }

  selfCopy6 = self;
  if (self->_isOnboarded)
  {
    [array addObject:v159];
    [array addObject:v91];
    selfCopy6 = self;
    if (self->_isOnboarded)
    {
      [array addObject:emptyGroupSpecifier3];
      [array addObject:v94];
      [array addObject:v95];
      selfCopy6 = self;
      if (!self->supportedApplicationsLoading)
      {
        v119 = self->supportedApplicationsWithDataAccess;
        if (v119)
        {
          v202 = 0u;
          v203 = 0u;
          v200 = 0u;
          v201 = 0u;
          v114 = v119;
          v120 = [(NSMutableArray *)v114 countByEnumeratingWithState:&v200 objects:v217 count:16];
          if (v120)
          {
            v121 = *v201;
            do
            {
              for (j = 0; j != v120; ++j)
              {
                if (*v201 != v121)
                {
                  objc_enumerationMutation(v114);
                }

                [array addObject:*(*(&v200 + 1) + 8 * j)];
              }

              v120 = [(NSMutableArray *)v114 countByEnumeratingWithState:&v200 objects:v217 count:16];
            }

            while (v120);
          }

          goto LABEL_103;
        }
      }
    }
  }

LABEL_104:
  v123 = *MEMORY[0x277D3FC48];
  v124 = *(&selfCopy6->super.super.super.super.super.isa + v123);
  *(&selfCopy6->super.super.super.super.super.isa + v123) = array;
  v125 = array;

  v126 = *(&self->super.super.super.super.super.isa + v123);
  _Block_object_dispose(&v210, 8);

  v127 = *MEMORY[0x277D85DE8];

  return v126;
}

void __49__MOSuggestionSheetSettingsController_specifiers__block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

void __49__MOSuggestionSheetSettingsController_specifiers__block_invoke_287(uint64_t a1)
{
  v2 = _mo_log_facility_get_os_log(MOLogFacilitySettings);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_25A200000, v2, OS_LOG_TYPE_DEFAULT, "Loading of supported applications specifiers started", buf, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained fillSupportedApplicationsArray:WeakRetained[182] andSupportedApplicationsWithDataAccess:WeakRetained[183]];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__MOSuggestionSheetSettingsController_specifiers__block_invoke_288;
  block[3] = &unk_27991F020;
  objc_copyWeak(&v5, (a1 + 32));
  dispatch_async(MEMORY[0x277D85CD0], block);
  objc_destroyWeak(&v5);
}

void __49__MOSuggestionSheetSettingsController_specifiers__block_invoke_288(uint64_t a1)
{
  v2 = _mo_log_facility_get_os_log(MOLogFacilitySettings);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_25A200000, v2, OS_LOG_TYPE_DEFAULT, "Loading of supported applications specifiers complete", buf, 2u);
  }

  v3 = _mo_log_facility_get_os_log(MOLogFacilitySettings);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_25A200000, v3, OS_LOG_TYPE_DEFAULT, "Triggering specifiers reload", v6, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    WeakRetained[1472] = 0;
    [WeakRetained reloadSpecifiers];
  }
}

- (void)fillSupportedApplicationsArray:(id)array andSupportedApplicationsWithDataAccess:(id)access
{
  arrayCopy = array;
  accessCopy = access;
  v6 = +[MOApprovedApplicationsManager sharedInstance];
  v7 = [MEMORY[0x277CC1E70] enumeratorWithOptions:0];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __109__MOSuggestionSheetSettingsController_fillSupportedApplicationsArray_andSupportedApplicationsWithDataAccess___block_invoke;
  v29[3] = &unk_27991F0A0;
  v25 = v6;
  v30 = v25;
  v26 = arrayCopy;
  v31 = v26;
  [v7 setFilter:v29];
  v27 = v7;
  nextObject = [v7 nextObject];
  if (nextObject)
  {
    v9 = nextObject;
    v10 = *MEMORY[0x277D3FFC0];
    v11 = *MEMORY[0x277D401A8];
    do
    {
      v12 = [v9 URL];
      v13 = [MEMORY[0x277CCA8D8] bundleWithURL:v12];
      bundleIdentifier = [v13 bundleIdentifier];
      v15 = MEMORY[0x277D755B8];
      mainScreen = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen scale];
      v17 = [v15 _applicationIconImageForBundleIdentifier:bundleIdentifier format:0 scale:?];

      v18 = [v13 objectForInfoDictionaryKey:@"CFBundleDisplayName"];
      if (isValidString(v18))
      {
        v19 = v18;

        bundleIdentifier = v19;
      }

      v20 = [v13 objectForInfoDictionaryKey:@"CFBundleName"];

      if (isValidString(v20))
      {
        v21 = v20;

        bundleIdentifier = v21;
      }

      v22 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:bundleIdentifier target:0 set:0 get:0 detail:0 cell:3 edit:0];
      bundleIdentifier2 = [v9 bundleIdentifier];
      [v22 setUserInfo:bundleIdentifier2];

      [v22 setObject:v17 forKeyedSubscript:v10];
      [v22 setObject:bundleIdentifier forKeyedSubscript:v11];
      [accessCopy addObject:v22];

      nextObject2 = [v27 nextObject];

      v9 = nextObject2;
    }

    while (nextObject2);
  }
}

BOOL __109__MOSuggestionSheetSettingsController_fillSupportedApplicationsArray_andSupportedApplicationsWithDataAccess___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 bundleIdentifier];
  v5 = *(a1 + 32);
  v6 = [v3 bundleIdentifier];
  LODWORD(v5) = [v5 isJournalingSuggestionsAvailableForBundleIdentifier:v6];

  if (v5)
  {
    v7 = *(a1 + 40);
    v8 = [v4 copy];
    [v7 addObject:v8];
  }

  v9 = *(a1 + 32);
  v10 = [v3 bundleIdentifier];
  v11 = [v9 getJournalingSuggestionsApprovedApplicationRecordForBundleIdentifier:v10];

  return v11 != 0;
}

- (BOOL)_isAnySettingEnabled
{
  v2 = +[MOSettingsManager sharedInstance];
  v3 = [v2 getStateForSetting:1];
  v4 = v3 | [v2 getStateForSetting:2];
  v5 = [v2 getStateForSetting:3];
  v6 = v4 | v5 | [v2 getStateForSetting:4];
  v7 = [v2 getStateForSetting:5];
  v8 = v7 | [v2 getStateForSetting:6];
  v9 = v6 | v8 | [v2 getStateForSetting:9];

  return v9 & 1;
}

- (void)_clearHistoryWarmup:(id)warmup
{
  warmupCopy = warmup;
  objc_initWeak(&location, self);
  v5 = +[MOSuggestionSheetSettingsController onboardingSettingsBundle];
  v6 = MEMORY[0x277D75110];
  v7 = [v5 localizedStringForKey:@"Do you want to clear the history of Journaling Suggestions?" value:&stru_286BDDEB8 table:0];
  v8 = [v6 alertControllerWithTitle:v7 message:0 preferredStyle:0];

  v9 = MEMORY[0x277D750F8];
  v10 = [v5 localizedStringForKey:@"Clear History" value:&stru_286BDDEB8 table:0];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __59__MOSuggestionSheetSettingsController__clearHistoryWarmup___block_invoke;
  v16[3] = &unk_27991F0C8;
  objc_copyWeak(&v18, &location);
  v11 = warmupCopy;
  v17 = v11;
  v12 = [v9 actionWithTitle:v10 style:2 handler:v16];
  [v8 addAction:v12];

  v13 = MEMORY[0x277D750F8];
  v14 = [v5 localizedStringForKey:@"Cancel" value:&stru_286BDDEB8 table:0];
  v15 = [v13 actionWithTitle:v14 style:1 handler:0];
  [v8 addAction:v15];

  [(MOSuggestionSheetSettingsController *)self presentViewController:v8 animated:1 completion:0];
  objc_destroyWeak(&v18);

  objc_destroyWeak(&location);
}

void __59__MOSuggestionSheetSettingsController__clearHistoryWarmup___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _clearHistory:*(a1 + 32)];
}

- (void)_clearHistory:(id)history
{
  v12 = +[MOSettingsManager sharedInstance];
  v4 = [v12 getStateForSetting:1];
  v5 = [v12 getStateForSetting:2];
  v6 = [v12 getStateForSetting:3];
  v7 = [v12 getStateForSetting:4];
  v8 = [v12 getStateForSetting:5];
  v9 = [v12 getStateForSetting:6];
  v10 = [v12 getStateForSetting:9];
  v11 = [v12 getStateForSetting:10];
  [v12 setState:1 forSetting:1];
  [v12 setState:1 forSetting:2];
  [v12 setState:1 forSetting:3];
  [v12 setState:1 forSetting:4];
  [v12 setState:1 forSetting:5];
  [v12 setState:1 forSetting:6];
  [v12 setState:1 forSetting:9];
  [v12 setState:1 forSetting:10];
  [v12 setState:0 forSetting:1];
  [v12 setState:0 forSetting:2];
  [v12 setState:0 forSetting:3];
  [v12 setState:0 forSetting:4];
  [v12 setState:0 forSetting:5];
  [v12 setState:0 forSetting:6];
  [v12 setState:0 forSetting:9];
  [v12 setState:0 forSetting:10];
  [v12 setState:v4 forSetting:1];
  [v12 setState:v5 forSetting:2];
  [v12 setState:v6 forSetting:3];
  [v12 setState:v7 forSetting:4];
  [v12 setState:v8 forSetting:5];
  [v12 setState:v9 forSetting:6];
  [v12 setState:v10 forSetting:9];
  [v12 setState:v11 forSetting:10];
  [(MOSuggestionSheetSettingsController *)self reloadSpecifiers];
  [MOSuggestionSheetSettingsController runCommand:&unk_286BE0E60];
}

- (void)didTapTurnOnJournalingSuggestion:(id)suggestion
{
  v4 = objc_opt_new();
  connection = self->connection;
  self->connection = v4;

  remoteTarget = [(PresenterServerConnection *)self->connection remoteTarget];
  getConnectionID = [remoteTarget getConnectionID];

  [(PresenterServerConnection *)self->connection setPresenterDelegate:self];
  v7 = objc_opt_new();
  [v7 setOnboardingOnlyPresentation:1];
  [(PresenterServerConnection *)self->connection requestPresentationFor:0 with:v7];
  v8 = objc_opt_new();
  [v8 setupSceneHostingWithConnectionUUID:getConnectionID];
  [(MOSuggestionSheetSettingsController *)self presentViewController:v8 animated:1 completion:0];
}

- (void)shouldDismissOnboarding
{
  [(MOSuggestionSheetSettingsController *)self dismissViewControllerAnimated:1 completion:0];

  [(MOSuggestionSheetSettingsController *)self reloadSpecifiers];
}

- (void)didTapSuggestionNotificationSettings:(id)settings
{
  v4 = [MEMORY[0x277CBEBC0] URLWithString:@"app-prefs:com.apple.momentsd.MOUserNotifications&target=com.apple.settings.notifications"];
  defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
  [defaultWorkspace openSensitiveURL:v4 withOptions:0];
}

- (void)didTapTurnOffAllWarmup:(id)warmup
{
  warmupCopy = warmup;
  objc_initWeak(&location, self);
  v5 = +[MOSuggestionSheetSettingsController onboardingSettingsBundle];
  v6 = MEMORY[0x277D75110];
  v7 = [v5 localizedStringForKey:@"Do you want to turn off Journaling Suggestions?" value:&stru_286BDDEB8 table:0];
  v8 = [v6 alertControllerWithTitle:v7 message:0 preferredStyle:0];

  v9 = MEMORY[0x277D750F8];
  v10 = [v5 localizedStringForKey:@"Turn Off All" value:&stru_286BDDEB8 table:0];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __62__MOSuggestionSheetSettingsController_didTapTurnOffAllWarmup___block_invoke;
  v16[3] = &unk_27991F0C8;
  objc_copyWeak(&v18, &location);
  v11 = warmupCopy;
  v17 = v11;
  v12 = [v9 actionWithTitle:v10 style:2 handler:v16];
  [v8 addAction:v12];

  v13 = MEMORY[0x277D750F8];
  v14 = [v5 localizedStringForKey:@"Cancel" value:&stru_286BDDEB8 table:0];
  v15 = [v13 actionWithTitle:v14 style:1 handler:0];
  [v8 addAction:v15];

  [(MOSuggestionSheetSettingsController *)self presentViewController:v8 animated:1 completion:0];
  objc_destroyWeak(&v18);

  objc_destroyWeak(&location);
}

void __62__MOSuggestionSheetSettingsController_didTapTurnOffAllWarmup___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained didTapTurnOffAll:*(a1 + 32)];
}

- (void)didTapTurnOffAll:(id)all
{
  v4 = +[MOSettingsManager sharedInstance];
  [v4 setState:0 forSetting:1];
  [v4 setState:0 forSetting:2];
  [v4 setState:0 forSetting:3];
  [v4 setState:0 forSetting:4];
  [v4 setState:0 forSetting:5];
  [v4 setState:0 forSetting:6];
  [v4 setState:0 forSetting:9];
  [(MOSuggestionSheetSettingsController *)self reloadSpecifiers];
  [MOSuggestionSheetSettingsController runCommand:&unk_286BE0E78];
}

- (void)didTapTurnOnAll:(id)all
{
  v4 = +[MOSettingsManager sharedInstance];
  [v4 setState:1 forSetting:1];
  [v4 setState:1 forSetting:2];
  [v4 setState:1 forSetting:3];
  [v4 setState:1 forSetting:4];
  [v4 setState:1 forSetting:5];
  [v4 setState:1 forSetting:6];
  [v4 setState:1 forSetting:9];
  [(MOSuggestionSheetSettingsController *)self reloadSpecifiers];
  [MOSuggestionSheetSettingsController runCommand:&unk_286BE0E90];
}

- (void)_setStreamToggleWarmup:(id)warmup withSpecifier:(id)specifier
{
  warmupCopy = warmup;
  specifierCopy = specifier;
  bOOLValue = [warmupCopy BOOLValue];
  v9 = [specifierCopy objectForKeyedSubscript:*MEMORY[0x277D3FFB8]];
  v10 = [specifierCopy propertyForKey:*MEMORY[0x277D3FF38]];
  v11 = v10;
  if (!v10 || [v10 BOOLValue])
  {
    objc_initWeak(location, self);
    if (bOOLValue)
    {
      WeakRetained = objc_loadWeakRetained(location);
      [WeakRetained _setStreamToggle:MEMORY[0x277CBEC38] withSpecifier:specifierCopy];

      [(MOSuggestionSheetSettingsController *)self reloadSpecifiers];
    }

    else
    {
      v13 = +[MOSuggestionSheetSettingsController onboardingSettingsBundle];
      v14 = [(MOSuggestionSheetSettingsController *)self _getLocalizedSpecifier:v9];
      v15 = MEMORY[0x277CCACA8];
      v16 = [v13 localizedStringForKey:@"Turning off %@ will clear history of selected data of Journaling Suggestions. Continue?" value:&stru_286BDDEB8 table:0];
      v28 = [v15 localizedStringWithFormat:v16, v14];

      v17 = MEMORY[0x277CCACA8];
      v18 = [v13 localizedStringForKey:@"Clear %@ history" value:&stru_286BDDEB8 table:0];
      v27 = [v17 localizedStringWithFormat:v18, v14];

      [v13 localizedStringForKey:@"Cancel" value:&stru_286BDDEB8 table:0];
      v26 = v25 = v13;
      v19 = [MEMORY[0x277D75110] alertControllerWithTitle:v28 message:0 preferredStyle:0];
      v20 = MEMORY[0x277D750F8];
      v33[0] = MEMORY[0x277D85DD0];
      v33[1] = 3221225472;
      v33[2] = __76__MOSuggestionSheetSettingsController__setStreamToggleWarmup_withSpecifier___block_invoke;
      v33[3] = &unk_27991F0F0;
      objc_copyWeak(&v36, location);
      v21 = specifierCopy;
      v34 = v21;
      selfCopy = self;
      v22 = [v20 actionWithTitle:v27 style:2 handler:v33];
      [v19 addAction:v22];

      v23 = MEMORY[0x277D750F8];
      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = __76__MOSuggestionSheetSettingsController__setStreamToggleWarmup_withSpecifier___block_invoke_2;
      v29[3] = &unk_27991F0F0;
      objc_copyWeak(&v32, location);
      v30 = v21;
      selfCopy2 = self;
      v24 = [v23 actionWithTitle:v26 style:1 handler:v29];
      [v19 addAction:v24];

      [(MOSuggestionSheetSettingsController *)self presentViewController:v19 animated:1 completion:0];
      objc_destroyWeak(&v32);

      objc_destroyWeak(&v36);
    }

    objc_destroyWeak(location);
  }
}

uint64_t __76__MOSuggestionSheetSettingsController__setStreamToggleWarmup_withSpecifier___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _setStreamToggle:MEMORY[0x277CBEC28] withSpecifier:*(a1 + 32)];

  v3 = *(a1 + 40);

  return [v3 reloadSpecifiers];
}

uint64_t __76__MOSuggestionSheetSettingsController__setStreamToggleWarmup_withSpecifier___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _setStreamToggle:MEMORY[0x277CBEC38] withSpecifier:*(a1 + 32)];

  v3 = *(a1 + 40);

  return [v3 reloadSpecifiers];
}

- (void)_setStreamToggle:(id)toggle withSpecifier:(id)specifier
{
  toggleCopy = toggle;
  specifierCopy = specifier;
  v8 = [specifierCopy propertyForKey:*MEMORY[0x277D3FF38]];
  v9 = v8;
  if (!v8 || [v8 BOOLValue])
  {
    v10 = +[MOSettingsManager sharedInstance];
    bOOLValue = [toggleCopy BOOLValue];
    v12 = [specifierCopy objectForKeyedSubscript:*MEMORY[0x277D3FFB8]];
    if ([v12 isEqual:@"Activity"])
    {
      v13 = v10;
      v14 = bOOLValue;
      v15 = 1;
    }

    else if ([v12 isEqual:@"Media"])
    {
      v13 = v10;
      v14 = bOOLValue;
      v15 = 2;
    }

    else if ([v12 isEqual:@"Contacts"])
    {
      v13 = v10;
      v14 = bOOLValue;
      v15 = 3;
    }

    else if ([v12 isEqual:@"Photos"])
    {
      v13 = v10;
      v14 = bOOLValue;
      v15 = 4;
    }

    else if ([v12 isEqual:@"Significant Locations"])
    {
      v13 = v10;
      v14 = bOOLValue;
      v15 = 5;
    }

    else if ([v12 isEqual:@"Prioritize Moments with Contacts"])
    {
      v13 = v10;
      v14 = bOOLValue;
      v15 = 6;
    }

    else if ([v12 isEqual:@"State of Mind"])
    {
      v13 = v10;
      v14 = bOOLValue;
      v15 = 9;
    }

    else
    {
      if (![v12 isEqual:@"Reflection"])
      {
        if ([v12 isEqual:@"Sync to iPad"])
        {
          v16 = objc_alloc_init(MEMORY[0x277D2A208]);
          v17 = [v16 setOnboardedWithFlag:toggleCopy];
        }

        else
        {
          currentHandler = [MEMORY[0x277CCA890] currentHandler];
          [currentHandler handleFailureInMethod:a2 object:self file:@"MOSuggestionSheetSettingsController.m" lineNumber:1133 description:@"Specifier identifier is unknown"];
        }

        goto LABEL_20;
      }

      v13 = v10;
      v14 = bOOLValue;
      v15 = 10;
    }

    [v13 setState:v14 forSetting:v15];
LABEL_20:
    [MOSuggestionSheetSettingsController runCommand:&unk_286BE0EA8];
  }
}

- (id)_getStreamToggle:(id)toggle
{
  toggleCopy = toggle;
  v6 = [toggleCopy propertyForKey:*MEMORY[0x277D3FF38]];
  v7 = v6;
  if (v6 && ![v6 BOOLValue])
  {
    isOnboarded = MEMORY[0x277CBEC28];
    goto LABEL_22;
  }

  v8 = +[MOSettingsManager sharedInstance];
  v9 = [toggleCopy objectForKeyedSubscript:*MEMORY[0x277D3FFB8]];
  if ([v9 isEqual:@"Activity"])
  {
    v10 = MEMORY[0x277CCABB0];
    v11 = v8;
    v12 = 1;
  }

  else if ([v9 isEqual:@"Media"])
  {
    v10 = MEMORY[0x277CCABB0];
    v11 = v8;
    v12 = 2;
  }

  else if ([v9 isEqual:@"Contacts"])
  {
    v10 = MEMORY[0x277CCABB0];
    v11 = v8;
    v12 = 3;
  }

  else if ([v9 isEqual:@"Photos"])
  {
    v10 = MEMORY[0x277CCABB0];
    v11 = v8;
    v12 = 4;
  }

  else if ([v9 isEqual:@"Significant Locations"])
  {
    v10 = MEMORY[0x277CCABB0];
    v11 = v8;
    v12 = 5;
  }

  else if ([v9 isEqual:@"Prioritize Moments with Contacts"])
  {
    v10 = MEMORY[0x277CCABB0];
    v11 = v8;
    v12 = 6;
  }

  else if ([v9 isEqual:@"State of Mind"])
  {
    v10 = MEMORY[0x277CCABB0];
    v11 = v8;
    v12 = 9;
  }

  else
  {
    if (![v9 isEqual:@"Reflection"])
    {
      if ([v9 isEqual:@"Sync to iPad"])
      {
        v15 = objc_alloc_init(MEMORY[0x277D2A208]);
        isOnboarded = [v15 isOnboarded];
      }

      else
      {
        currentHandler = [MEMORY[0x277CCA890] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:self file:@"MOSuggestionSheetSettingsController.m" lineNumber:1170 description:@"Specifier identifier is unknown"];

        isOnboarded = 0;
      }

      goto LABEL_21;
    }

    v10 = MEMORY[0x277CCABB0];
    v11 = v8;
    v12 = 10;
  }

  isOnboarded = [v10 numberWithBool:{objc_msgSend(v11, "getStateForSetting:", v12)}];
LABEL_21:

LABEL_22:

  return isOnboarded;
}

- (id)_getLocalizedSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v6 = +[MOSuggestionSheetSettingsController onboardingSettingsBundle];
  if ([specifierCopy isEqual:@"Activity"])
  {
    v7 = @"Activity";
LABEL_19:
    v8 = [v6 localizedStringForKey:v7 value:&stru_286BDDEB8 table:0];
    goto LABEL_20;
  }

  if ([specifierCopy isEqual:@"Media"])
  {
    v7 = @"Media";
    goto LABEL_19;
  }

  if ([specifierCopy isEqual:@"Contacts"])
  {
    v7 = @"Contacts";
    goto LABEL_19;
  }

  if ([specifierCopy isEqual:@"Photos"])
  {
    v7 = @"Photos";
    goto LABEL_19;
  }

  if ([specifierCopy isEqual:@"Significant Locations"])
  {
    v7 = @"Significant Locations";
    goto LABEL_19;
  }

  if ([specifierCopy isEqual:@"Prioritize Moments with Contacts"])
  {
    v7 = @"Prioritize Moments with Contacts";
    goto LABEL_19;
  }

  if ([specifierCopy isEqual:@"State of Mind"])
  {
    v7 = @"State of Mind";
    goto LABEL_19;
  }

  if ([specifierCopy isEqual:@"Reflection"])
  {
    v7 = @"Reflection Prompts";
    goto LABEL_19;
  }

  if ([specifierCopy isEqual:@"Sync to iPad"])
  {
    v7 = @"Sync to iPad";
    goto LABEL_19;
  }

  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MOSuggestionSheetSettingsController.m" lineNumber:1198 description:@"Specifier identifier is unknown"];

  v8 = &stru_286BDDEB8;
LABEL_20:

  return v8;
}

- (void)showPrivacyExplanationSheet:(id)sheet
{
  v4 = [MEMORY[0x277D37678] presenterForPrivacySplashWithIdentifier:@"com.apple.onboarding.journal"];
  [v4 setPresentingViewController:self];
  [v4 present];
}

- (void)showDataAccessExplanationSheet:(id)sheet
{
  v12 = +[MOSuggestionSheetSettingsController onboardingSettingsBundle];
  v4 = [v12 localizedStringForKey:@"Private Access & Suggestions" value:&stru_286BDDEB8 table:0];
  v5 = [v12 localizedStringForKey:@"Your journal only has access to suggestions when you start writing about them or save them.\n\nThe information used to create a suggestion value:such as a photo or workout table:{is also shared with your journal at that time.\n\nApps that use Private Access to offer suggestions will appear in Journaling Suggestions settings.", &stru_286BDDEB8, 0}];
  v6 = [MEMORY[0x277D755B8] imageNamed:@"momentsPrivacy-80-masked" inBundle:v12];
  boldButton = [MEMORY[0x277D37618] boldButton];
  v8 = [v12 localizedStringForKey:@"Done" value:&stru_286BDDEB8 table:0];
  [boldButton setTitle:v8 forState:0];

  [boldButton addTarget:self action:sel_dismissDataAccessExplanationSheet_ forControlEvents:0x2000];
  v9 = [objc_alloc(MEMORY[0x277D37698]) initWithTitle:v4 detailText:v5 icon:v6 contentLayout:2];
  buttonTray = [(OBWelcomeController *)v9 buttonTray];
  [buttonTray addButton:boldButton];

  [(OBWelcomeController *)v9 setModalInPresentation:1];
  [(MOSuggestionSheetSettingsController *)self presentViewController:v9 animated:1 completion:0];
  dataAccessPresenter = self->dataAccessPresenter;
  self->dataAccessPresenter = v9;
}

- (void)dismissDataAccessExplanationSheet:(id)sheet
{
  [(OBWelcomeController *)self->dataAccessPresenter dismissViewControllerAnimated:1 completion:0];
  dataAccessPresenter = self->dataAccessPresenter;
  self->dataAccessPresenter = 0;
}

- (void)navigateToiCloudTCC:(id)c
{
  v4 = [MEMORY[0x277CBEBC0] URLWithString:@"settings-navigation://com.apple.Settings.AppleAccount/ICLOUD_SERVICE/com.apple.Dataclass"];
  defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
  [defaultWorkspace openSensitiveURL:v4 withOptions:0];
}

- (void)syncFromPhone:(id)phone
{
  phoneCopy = phone;
  v5 = objc_alloc_init(MEMORY[0x277D2A208]);
  objc_initWeak(&location, self);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __53__MOSuggestionSheetSettingsController_syncFromPhone___block_invoke;
  v6[3] = &unk_27991F140;
  objc_copyWeak(&v7, &location);
  [v5 deviceMakePrimaryJSONWithCompletionHandler:v6];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __53__MOSuggestionSheetSettingsController_syncFromPhone___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __53__MOSuggestionSheetSettingsController_syncFromPhone___block_invoke_2;
  v5[3] = &unk_27991F118;
  objc_copyWeak(&v7, (a1 + 32));
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v5);

  objc_destroyWeak(&v7);
}

void __53__MOSuggestionSheetSettingsController_syncFromPhone___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _processDevicesJSON:*(a1 + 32)];
  [WeakRetained reloadSpecifiers];
}

- (void)didTransitionTo:(id)to
{
  v11 = *MEMORY[0x277D85DE8];
  toCopy = to;
  v5 = _mo_log_facility_get_os_log(MOLogFacilitySettings);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v10 = toCopy;
    _os_log_impl(&dword_25A200000, v5, OS_LOG_TYPE_INFO, "Sheet didTransitionTo: %@", buf, 0xCu);
  }

  if (![toCopy intValue])
  {
    objc_initWeak(buf, self);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __55__MOSuggestionSheetSettingsController_didTransitionTo___block_invoke;
    block[3] = &unk_27991F020;
    objc_copyWeak(&v8, buf);
    dispatch_async(MEMORY[0x277D85CD0], block);
    objc_destroyWeak(&v8);
    objc_destroyWeak(buf);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void __55__MOSuggestionSheetSettingsController_didTransitionTo___block_invoke(uint64_t a1)
{
  v2 = _mo_log_facility_get_os_log(MOLogFacilitySettings);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_25A200000, v2, OS_LOG_TYPE_INFO, "Sheet dismiss onboarding and set streams", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained shouldDismissOnboarding];
}

@end