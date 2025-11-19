@interface CNFRegSettingsController
- (AUSystemSettingsSpecifiersProvider)specifiersProvider;
- (BOOL)_allAccountsAreDeactivated;
- (BOOL)_canDeselectAlias:(id)a3;
- (BOOL)_hasActiveFaceTimeCall;
- (BOOL)_isEnrolledInContactKeyVerification;
- (BOOL)_isTravelAlias:(id)a3;
- (BOOL)_shouldDisableAccountConfigurationUI;
- (BOOL)_shouldShowAliasInfo;
- (BOOL)_shouldUseDisabledHandlers;
- (BOOL)additionalAliasesAvailable;
- (BOOL)authenticationController:(id)a3 shouldContinueWithAuthenticationResults:(id)a4 error:(id)a5 forContext:(id)a6;
- (BOOL)captioningSupported;
- (BOOL)deviceHWSupportsAlwaysFullBleed;
- (BOOL)oppositeServiceTypeEnabled;
- (BOOL)refreshiMessageAccountFooterText:(BOOL)a3;
- (BOOL)shouldShowAlwaysFullBleedSpecifiers;
- (BOOL)shouldShowBlocklistSettings;
- (BOOL)shouldShowCallDirectorySettingsBundleSpecifiers;
- (BOOL)shouldShowFaceTimeCaptionsSpecifiers;
- (BOOL)shouldShowFaceTimePhotosSpecifiers;
- (BOOL)shouldShowFaceTimeVPCSpecifiers;
- (BOOL)shouldShowGFTProminenceSpecifiers;
- (BOOL)shouldShowIncomingCallSettingsBundleSpecifiers;
- (BOOL)shouldShowOnlineSafetyLink;
- (BOOL)shouldShowReceiveRelayCalls;
- (BOOL)shouldShowReceiveThumperCalls;
- (BOOL)shouldShowReplyWithMessage;
- (BOOL)shouldShowSharePlaySpecifiers;
- (BOOL)shouldShowSharedNameAndPhotoSpecifiers;
- (BOOL)shouldShowSiriSpecifiers;
- (CNFRegSettingsController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)_appleIDAccounts;
- (id)_localeChooserForAccount:(id)a3;
- (id)_makeRedactedIdentifierFromSpecifier:(id)a3;
- (id)_makeRedactedIdentifierFromSpecifierId:(id)a3;
- (id)_makeRedactedIdentifiersFromSpecifiers:(id)a3;
- (id)_onlineSafetyRegionCodesURLMapping;
- (id)_operationalAccounts;
- (id)_operationalAccountsForService:(int64_t)a3;
- (id)_safariViewControllerWithURL:(id)a3;
- (id)_safetyURLForCurrentRegionIfAny;
- (id)_specifierIdentifierForAccount:(id)a3;
- (id)_switchFooterText;
- (id)_useableAccounts;
- (id)accountSpecifiers;
- (id)accountToShowInCallerIDFooter;
- (id)aliasForSpecifier:(id)a3;
- (id)aliasSpecifiers;
- (id)aliasWithIdentifier:(id)a3;
- (id)callerIdAliasSpecifiers;
- (id)createSpecifierForAccount:(id)a3;
- (id)createSpecifierForAlias:(id)a3;
- (id)createSpecifierForCallerIdAlias:(id)a3;
- (id)customTitle;
- (id)ftImServiceString;
- (id)getAccountNameForSpecifier:(id)a3;
- (id)getAlwaysFullBleedEnabledForSpecifier:(id)a3;
- (id)getFaceTimeCaptionsEnabledForSpecifier:(id)a3;
- (id)getFaceTimeEnabledForSpecifier:(id)a3;
- (id)getFaceTimePhotosEnabledForSpecifier:(id)a3;
- (id)getFaceTimeVPCEnabledForSpecifier:(id)a3;
- (id)getGFTAudioProminenceEnabledForSpecifier:(id)a3;
- (id)getReceiveRelayedCallsEnabledForSpecifier:(id)a3;
- (id)loadSpecifiersFromPlistName:(id)a3 target:(id)a4 bundle:(id)a5;
- (id)possibleCallerIdAliases;
- (id)primaryAppleAccount;
- (id)specifierList;
- (id)statusForAlias:(id)a3;
- (id)statusForSpecifier:(id)a3;
- (int64_t)groupIdForSpecifier:(id)a3;
- (int64_t)groupIdForSpecifierId:(id)a3;
- (int64_t)indexOfLastSpecifierInGroup:(id)a3;
- (void)_buildSpecifierCache:(id)a3;
- (void)_cacheSpecifierGroup:(id)a3 withSpecifiers:(id)a4;
- (void)_handleDeactivation:(id)a3;
- (void)_handleFailedAccountReactivation:(id)a3 error:(id)a4;
- (void)_handleSuccessfulAccountReactivation:(id)a3;
- (void)_hideLocaleChooser;
- (void)_refreshFaceTimeSettingsDelayed:(id)a3;
- (void)_reloadSpecifier:(id)a3 withBlock:(id)a4;
- (void)_setupAccountHandlers;
- (void)_setupAccountHandlersForDisabledOperation;
- (void)_setupAccountHandlersForDisabling;
- (void)_setupAccountHandlersForNormalOperation;
- (void)_showAccountAlertForAccount:(id)a3;
- (void)_showAccountSignOutCKVAlert;
- (void)_showAliasValidationError:(id)a3;
- (void)_showLocaleChooserWithAccount:(id)a3;
- (void)_showPrivacySheet:(id)a3;
- (void)_showRemoveAlertForAlias:(id)a3 specifier:(id)a4;
- (void)_showRemoveTemporaryPhoneAlertForAlias:(id)a3;
- (void)_showRemoveTravelPhoneAlertForAlias:(id)a3 simIdentifier:(id)a4;
- (void)_showSignInController;
- (void)_showViewAccountControllerForAccount:(id)a3;
- (void)_updateSwitch;
- (void)_updateSwitchDelayed;
- (void)_updateUnlocalizedBackendIdentifier;
- (void)accountTappedWithSpecifier:(id)a3;
- (void)clearAccountCache;
- (void)clearFooterFromSpecifier:(id)a3;
- (void)configureAccountFooterForGroupSpecifier:(id)a3;
- (void)configureSignOutForSpecifier:(id)a3;
- (void)dealloc;
- (void)deleteTemporaryPhoneAliasSelected:(id)a3;
- (void)deleteTravelPhoneAliasSelected:(id)a3;
- (void)doneButtonTapped:(id)a3;
- (void)emitNavigationEvent;
- (void)firstRunControllerDidFinish:(id)a3 finished:(BOOL)a4;
- (void)formSheetViewDidDisappear;
- (void)formSheetViewWillDisappear;
- (void)goToCellularSettings:(id)a3;
- (void)handleCallStatusChanged;
- (void)openOnlineSafetyURL;
- (void)refreshAliasSpecifier:(id)a3;
- (void)refreshAllAliasSpecifiers;
- (void)refreshAllCallerIdAliasSpecifiers;
- (void)refreshCallerIdSpecifier:(id)a3;
- (void)refreshMDMRestrictionStatusWithCompletion:(BOOL)a3;
- (void)refreshTemporaryPhoneAnimated:(BOOL)a3;
- (void)setAliasSelected:(id)a3;
- (void)setAlwaysFullBleedEnabled:(id)a3 specifier:(id)a4;
- (void)setCallerId:(id)a3;
- (void)setFaceTimeCaptionsEnabled:(id)a3 specifier:(id)a4;
- (void)setFaceTimePhotosEnabled:(id)a3 specifier:(id)a4;
- (void)setFaceTimeVPCEnabled:(id)a3 specifier:(id)a4;
- (void)setGFTAudioProminenceEnabled:(id)a3 specifier:(id)a4;
- (void)setReceiveRelayedCallsEnabled:(id)a3 specifier:(id)a4;
- (void)setShowEnableSwitch:(BOOL)a3;
- (void)signoutAccount:(id)a3;
- (void)systemApplicationDidEnterBackground;
- (void)systemApplicationDidResume;
- (void)systemApplicationDidSuspend;
- (void)systemApplicationWillEnterForeground;
- (void)systemSettingsSpecifiersProviderDidReloadSpecifiers:(id)a3;
- (void)updateSpecifier:(id)a3 withAlias:(id)a4;
- (void)updateSpecifier:(id)a3 withCallerIdAlias:(id)a4;
- (void)viewAccountControllerDidFinish:(id)a3 withAppleId:(id)a4;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation CNFRegSettingsController

- (CNFRegSettingsController)initWithNibName:(id)a3 bundle:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v22.receiver = self;
  v22.super_class = CNFRegSettingsController;
  v8 = [(CNFRegSettingsController *)&v22 initWithNibName:v6 bundle:v7];
  v9 = v8;
  if (v8)
  {
    *&v8->_settingsFlags |= 8u;
    [(CNFRegListController *)v8 _updateTitle];
    [(CNFRegSettingsController *)v9 _updateUnlocalizedBackendIdentifier];
    v10 = [MEMORY[0x277D6EDF8] sharedInstance];
    v11 = [MEMORY[0x277D07DB8] sharedInstance];
    v12 = [MEMORY[0x277CCAB98] defaultCenter];
    [v12 addObserver:v9 selector:sel_handleCallStatusChanged name:*MEMORY[0x277D6F038] object:0];
    [v12 addObserver:v9 selector:sel_handleCallStatusChanged name:*MEMORY[0x277D6EFF0] object:0];
    [v12 addObserver:v9 selector:sel__handleFaceTimeCTRegistrationStatusChanged name:*MEMORY[0x277D07D78] object:0];
    [v12 addObserver:v9 selector:sel__handleFaceTimeEntitlementStatusChanged name:*MEMORY[0x277D07D80] object:0];
    [v12 addObserver:v9 selector:sel__handleDeactivation_ name:*MEMORY[0x277D77338] object:0];
    [v12 addObserver:v9 selector:sel__handleRelayCapabilitiesChanged name:*MEMORY[0x277D6EFC0] object:0];
    [v12 addObserver:v9 selector:sel__handleThumperCapabilitiesChanged name:*MEMORY[0x277D6EFD0] object:0];
    [v12 addObserver:v9 selector:sel__handleOutgoingRelayCallerIDChanged name:*MEMORY[0x277D6EFB8] object:0];
    [v12 addObserver:v9 selector:sel__handleAccountRegistrarChanged name:@"CNFAccountRegistarStateChangedNotification" object:0];
    SystemEncoding = CFStringGetSystemEncoding();
    CStringPtr = CFStringGetCStringPtr(*MEMORY[0x277D81BF0], SystemEncoding);
    objc_initWeak(&location, v9);
    v15 = MEMORY[0x277D85CD0];
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __51__CNFRegSettingsController_initWithNibName_bundle___block_invoke;
    handler[3] = &unk_278DE8368;
    objc_copyWeak(&v20, &location);
    notify_register_dispatch(CStringPtr, &v9->_captionsSubscriptionToken, MEMORY[0x277D85CD0], handler);

    v16 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v24 = v9;
      _os_log_impl(&dword_243BE5000, v16, OS_LOG_TYPE_DEFAULT, "Instantiated CNFRegSettingsController %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
    {
      IMLogString();
    }

    objc_destroyWeak(&v20);
    objc_destroyWeak(&location);
  }

  v17 = *MEMORY[0x277D85DE8];
  return v9;
}

void __51__CNFRegSettingsController_initWithNibName_bundle___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained refreshFaceTimeCaptionsSettingsAnimated:1];
}

- (void)dealloc
{
  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self];
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  notify_cancel(self->_captionsSubscriptionToken);
  v4.receiver = self;
  v4.super_class = CNFRegSettingsController;
  [(CNFRegListController *)&v4 dealloc];
}

- (BOOL)_hasActiveFaceTimeCall
{
  v2 = [MEMORY[0x277D6EDF8] sharedInstance];
  v3 = [v2 anyCallPassesTest:&__block_literal_global_6];

  return v3;
}

uint64_t __50__CNFRegSettingsController__hasActiveFaceTimeCall__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 provider];
  v3 = [v2 isFaceTimeProvider];

  return v3;
}

- (BOOL)_shouldDisableAccountConfigurationUI
{
  if ([(CNFRegSettingsController *)self _hasActiveFaceTimeCall])
  {
    return 1;
  }

  v3 = [MEMORY[0x277D07DB0] sharedInstance];
  v4 = [v3 faceTimeBlocked];

  return v4;
}

- (BOOL)_isTravelAlias:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v5 = [(CNFRegListController *)self regController];
  v6 = [v5 travelAliases];

  v7 = [v6 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v23;
    v10 = *MEMORY[0x277D18AC8];
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v23 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v22 + 1) + 8 * i);
        v13 = [v4 alias];
        v14 = [v12 alias];
        v15 = [v13 isEqualToString:v14];

        if (v15)
        {
          goto LABEL_11;
        }

        v16 = [v4 account];
        v17 = [v16 objectForKey:v10];

        v18 = [v12 deviceAliasIdentifier];
        LOBYTE(v16) = [v17 isEqualToString:v18];

        if (v16)
        {
LABEL_11:
          v19 = 1;
          goto LABEL_13;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v22 objects:v26 count:16];
      v19 = 0;
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v19 = 0;
  }

LABEL_13:

  v20 = *MEMORY[0x277D85DE8];
  return v19;
}

- (AUSystemSettingsSpecifiersProvider)specifiersProvider
{
  specifiersProvider = self->_specifiersProvider;
  if (!specifiersProvider)
  {
    v4 = objc_alloc(MEMORY[0x277CEC670]);
    v5 = [v4 initWithApplicationBundleIdentifier:*MEMORY[0x277D6EF78]];
    v6 = self->_specifiersProvider;
    self->_specifiersProvider = v5;

    [(AUSystemSettingsSpecifiersProvider *)self->_specifiersProvider setDelegate:self];
    specifiersProvider = self->_specifiersProvider;
  }

  return specifiersProvider;
}

- (void)systemSettingsSpecifiersProviderDidReloadSpecifiers:(id)a3
{
  v4 = a3;
  v5 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_243BE5000, v5, OS_LOG_TYPE_DEFAULT, "FACETIME SETTINGS > DEFAULT APP: Calling systemSettingsSpecifiersProviderDidReloadSpecifiers", v6, 2u);
  }

  if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
  {
    IMLogString();
  }

  [(CNFRegSettingsController *)self reloadSpecifiers];
}

- (id)loadSpecifiersFromPlistName:(id)a3 target:(id)a4 bundle:(id)a5
{
  v27 = 0;
  v28 = 0;
  v8 = a5;
  v9 = a4;
  v10 = [v8 pathForResource:a3 ofType:@"plist"];
  v11 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithContentsOfFile:v10];
  v12 = objc_opt_new();
  v13 = *(&self->super.super.super.super.super.super.isa + *MEMORY[0x277D3FD20]);
  v14 = CNFRegStringTableName();
  v25 = &v26;
  v26 = v12;
  v15 = SpecifiersFromPlist();

  v16 = v26;
  v17 = v26;

  v18 = *MEMORY[0x277D3FC20];
  v19 = *(&self->super.super.super.super.super.super.isa + v18);
  if (v19)
  {
    [v19 addObjectsFromArray:{v17, &v26}];
  }

  else
  {
    objc_storeStrong((&self->super.super.super.super.super.super.isa + v18), v16);
  }

  if (!v28)
  {
    v20 = [(CNFRegListController *)self regController];
    v21 = [v20 serviceType];

    v22 = @"com.apple.preferences.imessage";
    v23 = v28;
    if (!v21)
    {
      v22 = @"com.apple.preferences.facetime";
    }

    v28 = v22;
  }

  [(CNFRegSettingsController *)self setSpecifierID:v28, v25];
  [(CNFRegSettingsController *)self setTitle:v27];

  return v15;
}

- (id)specifierList
{
  v268[2] = *MEMORY[0x277D85DE8];
  v3 = *(&self->super.super.super.super.super.super.isa + *MEMORY[0x277D3FC48]);
  if (v3)
  {
    goto LABEL_224;
  }

  v193 = *MEMORY[0x277D3FC48];
  v216 = self;
  v4 = [(CNFRegSettingsController *)self bundle];
  v5 = [(CNFRegSettingsController *)v216 loadSpecifiersFromPlistName:@"ConferenceRegistrationSettings" target:v216 bundle:v4];

  v192 = [v5 specifierForID:@"INCOMING_CALL_STYLE"];
  v191 = [v5 specifierForID:@"ANNOUNCE_CALLS"];
  v6 = (*&v216->_settingsFlags & 8) == 0;
  v7 = [v5 specifierForID:@"FACETIME_ENABLED_GROUP_ID"];
  if (v6)
  {
    [v5 removeObject:v7];

    v7 = [v5 specifierForID:@"FACETIME_ENABLED_ID"];
    [v5 removeObject:v7];
  }

  else
  {
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    [v7 setProperty:v9 forKey:*MEMORY[0x277D3FF48]];

    v10 = CommunicationsSetupUIBundle();
    v11 = CNFRegStringTableName();
    v12 = [v10 localizedStringForKey:@"LEARN_MORE" value:&stru_2856D3978 table:v11];

    v13 = [(CNFRegSettingsController *)v216 _switchFooterText];
    v14 = [MEMORY[0x277CCACA8] stringWithFormat:@" %@", v12];
    v15 = [v13 stringByAppendingString:v14];

    v270.location = [v15 rangeOfString:v12];
    v16 = NSStringFromRange(v270);
    [v7 setProperty:v16 forKey:*MEMORY[0x277D3FF58]];

    [v7 setProperty:v15 forKey:*MEMORY[0x277D3FF70]];
    v17 = [MEMORY[0x277CCAE60] valueWithNonretainedObject:v216];
    [v7 setProperty:v17 forKey:*MEMORY[0x277D3FF68]];

    v18 = NSStringFromSelector(sel__showPrivacySheet_);
    [v7 setProperty:v18 forKey:*MEMORY[0x277D3FF50]];
  }

  v19 = v216;
  if (![(CNFRegSettingsController *)v216 shouldShowOnlineSafetyLink])
  {
    v268[0] = @"ONLINE_SAFETY_GROUP_ID";
    v268[1] = @"ONLINE_SAFETY_BUTTON_ID";
    [MEMORY[0x277CBEA60] arrayWithObjects:v268 count:2];
    v254 = 0u;
    v255 = 0u;
    v252 = 0u;
    v20 = v253 = 0u;
    v21 = [v20 countByEnumeratingWithState:&v252 objects:v267 count:16];
    if (v21)
    {
      v22 = *v253;
      v23 = *MEMORY[0x277D3FFF0];
      v24 = *MEMORY[0x277D40170];
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v253 != v22)
          {
            objc_enumerationMutation(v20);
          }

          v26 = [v5 specifierForID:*(*(&v252 + 1) + 8 * i)];
          if (v26)
          {
            [v5 removeObject:v26];
            [v26 removePropertyForKey:v23];
            [v26 removePropertyForKey:v24];
            [v26 setName:0];
          }
        }

        v21 = [v20 countByEnumeratingWithState:&v252 objects:v267 count:16];
      }

      while (v21);
    }

    v19 = v216;
  }

  v27 = [(CNFRegListController *)v19 regController];
  v28 = [v27 serviceType] == 0;

  if (!v28)
  {
    v266[0] = @"FACETIME_BLOCKLIST_GROUP_ID";
    v266[1] = @"DIRECT_TO_VOICEMAIL";
    v266[2] = @"INTELLIGENT_CALL_SCREENING";
    v266[3] = @"FILTER_AS_NEW_CALLERS";
    v266[4] = @"FILTER_SPAM";
    v266[5] = @"CALL_FILTERING_GROUP_SPACER";
    v266[6] = @"CALLS_FROM_UNKNOWN_NUMBERS_GROUP_SPACER";
    [MEMORY[0x277CBEA60] arrayWithObjects:v266 count:7];
    v250 = 0u;
    v251 = 0u;
    v248 = 0u;
    v29 = v249 = 0u;
    v30 = [v29 countByEnumeratingWithState:&v248 objects:v265 count:16];
    if (v30)
    {
      v31 = *v249;
      v32 = *MEMORY[0x277D3FFF0];
      v33 = *MEMORY[0x277D40170];
      do
      {
        for (j = 0; j != v30; ++j)
        {
          if (*v249 != v31)
          {
            objc_enumerationMutation(v29);
          }

          v35 = [v5 specifierForID:*(*(&v248 + 1) + 8 * j)];
          if (v35)
          {
            [v5 removeObject:v35];
            [v35 removePropertyForKey:v32];
            [v35 removePropertyForKey:v33];
            [v35 setName:0];
          }
        }

        v30 = [v29 countByEnumeratingWithState:&v248 objects:v265 count:16];
      }

      while (v30);
    }
  }

  if ([(CNFRegSettingsController *)v216 shouldShowSiriSpecifiers])
  {
    v36 = [(CNFRegSettingsController *)v216 specifiersProvider];
    v37 = [v36 specifiers];

    if (v37)
    {
      v38 = [v37 arrayByAddingObjectsFromArray:v5];
      v39 = [v38 mutableCopy];

      v5 = v39;
    }
  }

  if ([(CNFRegSettingsController *)v216 shouldShowBlocklistSettings])
  {
    v40 = MEMORY[0x277D3FAD8];
    v41 = CommunicationsSetupUIBundle();
    v42 = CNFRegStringTableName();
    v43 = [v41 localizedStringForKey:@"BLOCKED_CONTACTS" value:&stru_2856D3978 table:v42];
    v44 = [v40 preferenceSpecifierNamed:v43 target:v216 set:0 get:0 detail:0 cell:2 edit:0];

    v45 = PSBundlePathForPreferenceBundle();
    [v44 setProperty:v45 forKey:*MEMORY[0x277D40000]];

    [v44 setProperty:@"BLOCKLIST_SETTINGS_MAIN_SPECIFIER_IDENTIFIER" forKey:*MEMORY[0x277D3FFB8]];
    [v44 setProperty:@"PHBlocklistSettingsListController" forKey:*MEMORY[0x277D3FF08]];
    [v44 setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FE00]];
    [v44 setControllerLoadAction:sel_lazyLoadBundle_];
    v46 = [v5 indexOfSpecifierWithID:@"FACETIME_BLOCKLIST_GROUP_ID"];
    if (v46 + 1 >= [v5 count])
    {
      v47 = [v5 count];
    }

    else
    {
      v47 = [v5 indexOfSpecifierWithID:@"FACETIME_BLOCKLIST_GROUP_ID"] + 1;
    }

    [v5 insertObject:v44 atIndex:v47];
  }

  if (![(CNFRegSettingsController *)v216 shouldShowCallDirectorySettingsBundleSpecifiers])
  {
    v48 = [v5 specifierForID:@"CALL_DIRECTORIES"];
    if (v48)
    {
      [v5 removeObject:v48];
    }
  }

  if (![(CNFRegSettingsController *)v216 shouldShowIncomingCallSettingsBundleSpecifiers])
  {
    if (v192)
    {
      [v5 removeObject:v192];
    }

    if (v191)
    {
      [v5 removeObject:v191];
    }

    v49 = [v5 specifierForID:@"CALL_PROVIDERS"];
    if (v49)
    {
      [v5 removeObject:v49];
    }
  }

  v199 = [v5 specifierForID:@"FACETIME_ALIAS_GROUP_ID"];
  if (v199)
  {
    v50 = CommunicationsSetupUIBundle();
    v51 = CNFStringKeyForIdiom(@"FACETIME_SETTINGS_ALIAS_LABEL");
    v52 = CNFRegStringTableName();
    v53 = [v50 localizedStringForKey:v51 value:&stru_2856D3978 table:v52];

    [v199 setProperty:v53 forKey:*MEMORY[0x277D40170]];
    [v199 setName:v53];
    if ([(NSArray *)v216->_aliasGroupSpecifiers count]>= 2)
    {
      v54 = [v5 indexOfObject:v199];
      if (v54 != 0x7FFFFFFFFFFFFFFFLL && [(NSArray *)v216->_aliasGroupSpecifiers count]>= 2)
      {
        v55 = v54 + 1;
        v56 = 1;
        do
        {
          v57 = [(NSArray *)v216->_aliasGroupSpecifiers objectAtIndexedSubscript:v56];
          [v5 insertObject:v57 atIndex:v55];

          ++v56;
          ++v55;
        }

        while (v56 < [(NSArray *)v216->_aliasGroupSpecifiers count]);
      }
    }
  }

  v196 = [v5 specifierForID:@"FACETIME_ACCOUNT_GROUP_ID"];
  if ([(CNFRegSettingsController *)v216 hideAppleIDLogin])
  {
LABEL_56:
    [v5 removeObject:v196];
    goto LABEL_61;
  }

  if (v196)
  {
    v58 = [v5 indexOfObject:v196];
    if (v58 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v59 = [(CNFRegSettingsController *)v216 accountToShowInCallerIDFooter];
      v60 = v59 == 0;

      if (v60)
      {
        v61 = [(CNFRegSettingsController *)v216 createSpecifierForAccount:0];
        [v5 insertObject:v61 atIndex:v58 + 1];

        goto LABEL_61;
      }

      goto LABEL_56;
    }
  }

LABEL_61:
  v194 = [v5 specifierForID:@"FACETIME_CALLERID_GROUP_ID"];
  if (v194)
  {
    v62 = [v5 indexOfObject:v194];
    if (v62 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v63 = [(CNFRegSettingsController *)v216 possibleCallerIdAliases];
      v245[0] = MEMORY[0x277D85DD0];
      v245[1] = 3221225472;
      v245[2] = __41__CNFRegSettingsController_specifierList__block_invoke;
      v245[3] = &unk_278DE83B0;
      v245[4] = v216;
      v246 = v5;
      v247 = v62 + 1;
      [v63 enumerateObjectsWithOptions:2 usingBlock:v245];
    }
  }

  [(CNFRegSettingsController *)v216 _buildSpecifierCache:v5];
  if (v199)
  {
    v64 = [(CNFRegListController *)v216 regController];
    v65 = [(CNFRegListController *)v216 regController];
    v66 = [v65 accounts];
    v67 = [v64 aliasesForAccounts:v66];

    v68 = [(CNFRegListController *)v216 regController];
    v69 = [v68 usableDeviceAliases];

    if ([(CNFRegSettingsController *)v216 showDeviceAliases])
    {
      v70 = 1;
    }

    else
    {
      v71 = [(CNFRegListController *)v216 regController];
      if ([v71 serviceType])
      {
        v70 = 1;
      }

      else
      {
        v72 = [(CNFRegListController *)v216 regController];
        v70 = [v72 isServiceEnabled];
      }
    }

    v73 = [(CNFRegListController *)v216 regController];
    if ([v73 serviceSupportsDeviceAliasEnablement])
    {
      v74 = ([v69 count] != 0) & v70;
    }

    else
    {
      v74 = 0;
    }

    if (!(([v67 count] != 0) | v74 & 1))
    {
      [v5 removeObject:v199];
    }
  }

  if (![(NSArray *)v216->_accountGroupSpecifiers count])
  {
    v75 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{v196, 0}];
    accountGroupSpecifiers = v216->_accountGroupSpecifiers;
    v216->_accountGroupSpecifiers = v75;
  }

  v243 = 0u;
  v244 = 0u;
  v241 = 0u;
  v242 = 0u;
  v77 = [(CNFRegListController *)v216 regController];
  v78 = [(CNFRegListController *)v216 regController];
  v79 = [v78 accounts];
  v80 = [v77 allAvailableAliasesForAccounts:v79];

  v81 = [v80 countByEnumeratingWithState:&v241 objects:v264 count:16];
  if (v81)
  {
    v215 = 0;
    v82 = *v242;
    do
    {
      for (k = 0; k != v81; ++k)
      {
        if (*v242 != v82)
        {
          objc_enumerationMutation(v80);
        }

        v84 = *(*(&v241 + 1) + 8 * k);
        if ([v84 isTemporaryPhoneNumberAlias])
        {
          v85 = v84;

          v215 = v85;
        }
      }

      v81 = [v80 countByEnumeratingWithState:&v241 objects:v264 count:16];
    }

    while (v81);
  }

  else
  {
    v215 = 0;
  }

  v197 = [v5 specifierForID:@"FACETIME_TEMPORARY_PHONE_GROUP_ID"];
  v195 = [v5 specifierForID:@"FACETIME_TEMPORARY_PHONE_ID"];
  v198 = [v5 specifierForID:@"FACETIME_TEMPORARY_PHONE_REMOVE"];
  v86 = MEMORY[0x277D3FE58];
  if (v197 && v195 && v198)
  {
    if (v215)
    {
      v87 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v87, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v263 = v215;
        _os_log_impl(&dword_243BE5000, v87, OS_LOG_TYPE_DEFAULT, "Initial load found temporary phone alias %@", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
      {
        IMLogString();
      }

      v88 = CommunicationsSetupUIBundle();
      v89 = CNFRegStringTableName();
      v90 = [v88 localizedStringForKey:@"FACETIME_SETTINGS_TEMPORARY_PHONE_LABEL" value:&stru_2856D3978 table:v89];

      v91 = *MEMORY[0x277D40170];
      [v197 setProperty:v90 forKey:*MEMORY[0x277D40170]];
      [v197 setName:v90];
      v92 = objc_opt_class();
      v93 = *v86;
      [v195 setProperty:v92 forKey:*v86];
      [v195 setProperty:v215 forKey:@"cnfreg-temp-alias"];
      v94 = [(CNFRegSettingsController *)v216 ftImServiceString];
      v95 = MEMORY[0x277CCACA8];
      v96 = CommunicationsSetupUIBundle();
      v97 = CNFRegStringTableName();
      v98 = [v96 localizedStringForKey:@"FACETIME_SETTINGS_TEMPORARY_PHONE_REMOVE" value:&stru_2856D3978 table:v97];
      v99 = [v95 stringWithFormat:v98, v94];

      [v198 setName:v99];
      [v198 setProperty:v99 forKey:v91];
      v100 = [MEMORY[0x277CCABB0] numberWithBool:1];
      [v198 setProperty:v100 forKey:*MEMORY[0x277D3FF38]];

      [v198 setProperty:objc_opt_class() forKey:v93];
      [v198 setButtonAction:sel_deleteTemporaryPhoneAliasSelected_];
      v101 = NSStringFromSelector(sel_deleteTemporaryPhoneAliasSelected_);
      [v198 setProperty:v101 forKey:*MEMORY[0x277D3FE10]];

      [v198 setProperty:v215 forKey:@"cnfreg-temp-alias"];
    }

    else
    {
      v102 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v102, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_243BE5000, v102, OS_LOG_TYPE_DEFAULT, "Initial load found no temporary phone alias. Deleting specifiers", buf, 2u);
      }

      if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
      {
        IMLogString();
      }

      [v5 removeObject:v197];
      [v5 removeObject:v195];
      [v5 removeObject:v198];
    }
  }

  v214 = [MEMORY[0x277CBEB18] array];
  v103 = [(CNFRegListController *)v216 regController];
  v104 = [(CNFRegListController *)v216 regController];
  v105 = [v104 accounts];
  v106 = [v103 allAvailableAliasesForAccounts:v105];

  v239 = 0u;
  v240 = 0u;
  v237 = 0u;
  v238 = 0u;
  obj = v106;
  v107 = [obj countByEnumeratingWithState:&v237 objects:v261 count:16];
  if (v107)
  {
    v108 = *v238;
    do
    {
      for (m = 0; m != v107; ++m)
      {
        if (*v238 != v108)
        {
          objc_enumerationMutation(obj);
        }

        v110 = *(*(&v237 + 1) + 8 * m);
        if ([(CNFRegSettingsController *)v216 _isTravelAlias:v110])
        {
          [v214 addObject:v110];
        }
      }

      v107 = [obj countByEnumeratingWithState:&v237 objects:v261 count:16];
    }

    while (v107);
  }

  v111 = 0;
  v203 = *v86;
  v204 = *MEMORY[0x277D40170];
  v201 = *MEMORY[0x277D3FF38];
  v200 = *MEMORY[0x277D3FE10];
  do
  {
    v112 = [MEMORY[0x277CCACA8] stringWithFormat:@"SIM_%lu", v111 + 1];
    v211 = [MEMORY[0x277CCACA8] stringWithFormat:@"FACETIME_TRAVEL_PHONE_%@_GROUP_ID", v112];
    v210 = [MEMORY[0x277CCACA8] stringWithFormat:@"FACETIME_TRAVEL_PHONE_%@_ID", v112];
    v209 = [MEMORY[0x277CCACA8] stringWithFormat:@"FACETIME_TRAVEL_PHONE_%@_REMOVE", v112];
    v208 = [MEMORY[0x277CCACA8] stringWithFormat:@"FACETIME_TRAVEL_PHONE_%@_CELLULAR_SETTINGS", v112];
    v113 = [v5 specifierForID:v211];
    v212 = [v5 specifierForID:v210];
    v114 = [v5 specifierForID:v209];
    v115 = [v5 specifierForID:v208];
    v116 = v115;
    if (v113 && v212 && v114 && v115)
    {
      if ([v214 count] >= (v111 + 1))
      {
        v207 = [v214 objectAtIndexedSubscript:v111];
        v118 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v118, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v263 = v207;
          _os_log_impl(&dword_243BE5000, v118, OS_LOG_TYPE_DEFAULT, "Initial load found travel phone alias %@", buf, 0xCu);
        }

        if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
        {
          IMLogString();
        }

        v119 = CommunicationsSetupUIBundle();
        v120 = CNFRegStringTableName();
        v206 = [v119 localizedStringForKey:@"FACETIME_SETTINGS_TEMPORARY_PHONE_LABEL" value:&stru_2856D3978 table:v120];

        [v113 setProperty:v206 forKey:v204];
        [v113 setName:v206];
        [v113 setProperty:v207 forKey:@"cnfreg-travel-sim"];
        [v212 setProperty:objc_opt_class() forKey:v203];
        [v212 setProperty:v207 forKey:@"cnfreg-travel-sim"];
        v202 = [(CNFRegSettingsController *)v216 ftImServiceString];
        v121 = MEMORY[0x277CCACA8];
        v122 = CommunicationsSetupUIBundle();
        v123 = CNFRegStringTableName();
        v124 = [v122 localizedStringForKey:@"FACETIME_SETTINGS_TEMPORARY_PHONE_REMOVE" value:&stru_2856D3978 table:v123];
        v205 = [v121 localizedStringWithFormat:v124, v202];

        [v114 setName:v205];
        [v114 setProperty:v205 forKey:v204];
        v125 = [MEMORY[0x277CCABB0] numberWithBool:1];
        [v114 setProperty:v125 forKey:v201];

        [v114 setProperty:objc_opt_class() forKey:v203];
        [v114 setButtonAction:sel_deleteTravelPhoneAliasSelected_];
        v126 = NSStringFromSelector(sel_deleteTravelPhoneAliasSelected_);
        [v114 setProperty:v126 forKey:v200];

        [v114 setProperty:v207 forKey:@"cnfreg-travel-sim"];
        [v114 setProperty:v112 forKey:@"cnfreg-sim-identifier"];
        v127 = CommunicationsSetupUIBundle();
        v128 = CNFRegStringTableName();
        v129 = [v127 localizedStringForKey:@"FACETIME_SETTINGS_TRAVEL_PHONE_CELLULAR_SETTINGS" value:&stru_2856D3978 table:v128];

        [v116 setName:v129];
        [v116 setProperty:v129 forKey:v204];
        v130 = [MEMORY[0x277CCABB0] numberWithBool:1];
        [v116 setProperty:v130 forKey:v201];

        [v116 setProperty:objc_opt_class() forKey:v203];
        [v116 setButtonAction:sel_goToCellularSettings_];
        v131 = NSStringFromSelector(sel_goToCellularSettings_);
        [v116 setProperty:v131 forKey:v200];
      }

      else
      {
        v117 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v117, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v263 = v112;
          _os_log_impl(&dword_243BE5000, v117, OS_LOG_TYPE_DEFAULT, "%@ is not in travel mode. Removing specifiers", buf, 0xCu);
        }

        if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
        {
          v190 = v112;
          IMLogString();
        }

        [v5 removeObject:{v113, v190}];
        [v5 removeObject:v212];
        [v5 removeObject:v114];
        [v5 removeObject:v116];
      }
    }

    ++v111;
  }

  while (v111 != 2);
  v132 = [(CNFRegListController *)v216 regController];
  v133 = [v132 serviceType];

  if ((v133 & 0xFFFFFFFFFFFFFFFDLL) != 0)
  {
    v134 = [v5 specifierForID:@"FACETIME_ENABLED_GROUP_ID"];
    v135 = v134;
    if (v134)
    {
      [v134 removePropertyForKey:*MEMORY[0x277D3FF88]];
      [v135 removePropertyForKey:*MEMORY[0x277D3FF48]];
    }
  }

  if (![(CNFRegSettingsController *)v216 shouldShowReplyWithMessage])
  {
    v235 = 0u;
    v236 = 0u;
    v233 = 0u;
    v234 = 0u;
    v136 = v216->_replyWithMessageGroupSpecifiers;
    v137 = [(NSArray *)v136 countByEnumeratingWithState:&v233 objects:v260 count:16];
    if (v137)
    {
      v138 = *v234;
      do
      {
        for (n = 0; n != v137; ++n)
        {
          if (*v234 != v138)
          {
            objc_enumerationMutation(v136);
          }

          [v5 removeObject:*(*(&v233 + 1) + 8 * n)];
        }

        v137 = [(NSArray *)v136 countByEnumeratingWithState:&v233 objects:v260 count:16];
      }

      while (v137);
    }
  }

  v140 = [(CNFRegListController *)v216 regController];
  v141 = [(CNFRegSettingsController *)v216 _useableAccounts];
  v142 = [v140 useableAliasesForAccounts:v141];

  if (v142 && [v142 count] > 1)
  {
    v147 = [v5 specifierForID:@"FACETIME_CALLERID_GROUP_ID"];
    [(CNFRegSettingsController *)v216 configureAccountFooterForGroupSpecifier:v147];
  }

  else
  {
    v231 = 0u;
    v232 = 0u;
    v229 = 0u;
    v230 = 0u;
    v143 = v216->_callerIdGroupSpecifiers;
    v144 = [(NSArray *)v143 countByEnumeratingWithState:&v229 objects:v259 count:16];
    if (v144)
    {
      v145 = *v230;
      do
      {
        for (ii = 0; ii != v144; ++ii)
        {
          if (*v230 != v145)
          {
            objc_enumerationMutation(v143);
          }

          [v5 removeObject:*(*(&v229 + 1) + 8 * ii)];
        }

        v144 = [(NSArray *)v143 countByEnumeratingWithState:&v229 objects:v259 count:16];
      }

      while (v144);
    }

    [(CNFRegSettingsController *)v216 configureAccountFooterForGroupSpecifier:v199];
  }

  v148 = [v5 specifierForID:@"MESSAGES_SIGN_OUT_GROUP_ID"];
  v149 = [v5 specifierForID:@"MESSAGES_SIGN_OUT_ID"];
  v150 = [(CNFRegListController *)v216 regController];
  v151 = [(CNFRegSettingsController *)v216 primaryAppleAccount];
  v152 = [v151 aa_personID];
  v153 = [v150 iMessageAccountMatchesiCloudAccount:v152];

  if (v153)
  {
    v154 = [MEMORY[0x277CCABB0] numberWithInt:1];
    [v148 setProperty:v154 forKey:*MEMORY[0x277D3FD78]];

    [(CNFRegSettingsController *)v216 configureSignOutForSpecifier:v149];
  }

  else
  {
    [v5 removeObject:v148];
    [v5 removeObject:v149];
  }

  if ([(CNFRegSettingsController *)v216 shouldShowReceiveThumperCalls])
  {
    v155 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v155, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_243BE5000, v155, OS_LOG_TYPE_DEFAULT, "Removing Calls from iPhone switch, adding Calls on Other Devices drill down", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
    {
      IMLogString();
    }

    v156 = [v5 specifierForID:@"RECEIVE_RELAYED_PHONE_CALLS_ID"];
    if (v156)
    {
      [v5 removeObject:v156];
    }

LABEL_182:

    goto LABEL_183;
  }

  if (![(CNFRegSettingsController *)v216 shouldShowReceiveRelayCalls])
  {
    v157 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v157, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_243BE5000, v157, OS_LOG_TYPE_DEFAULT, "Removing Calls from iPhone group entirely.  Neither Thumper nor Relay supported", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
    {
      IMLogString();
    }

    v227 = 0u;
    v228 = 0u;
    v225 = 0u;
    v226 = 0u;
    v156 = v216->_receiveRelayCallsGroupSpecifiers;
    v158 = [(NSArray *)v156 countByEnumeratingWithState:&v225 objects:v258 count:16];
    if (v158)
    {
      v159 = *v226;
      do
      {
        for (jj = 0; jj != v158; ++jj)
        {
          if (*v226 != v159)
          {
            objc_enumerationMutation(v156);
          }

          [v5 removeObject:*(*(&v225 + 1) + 8 * jj)];
        }

        v158 = [(NSArray *)v156 countByEnumeratingWithState:&v225 objects:v258 count:16];
      }

      while (v158);
    }

    goto LABEL_182;
  }

LABEL_183:
  if (![(CNFRegSettingsController *)v216 shouldShowFaceTimeCaptionsSpecifiers])
  {
    v161 = [v5 specifierForID:@"FACETIME_CAPTIONS_ENABLED_GROUP_ID"];
    [v5 removeObject:v161];

    v162 = [v5 specifierForID:@"FACETIME_CAPTIONS_ENABLED_ID"];
    [v5 removeObject:v162];
  }

  if (![(CNFRegSettingsController *)v216 shouldShowFaceTimePhotosSpecifiers])
  {
    v163 = [v5 specifierForID:@"FACETIME_PHOTOS_ENABLED_GROUP_ID"];
    [v5 removeObject:v163];

    v164 = [v5 specifierForID:@"FACETIME_PHOTOS_ENABLED_ID"];
    [v5 removeObject:v164];
  }

  if (![(CNFRegSettingsController *)v216 shouldShowAlwaysFullBleedSpecifiers])
  {
    v165 = [v5 specifierForID:@"FACETIME_ALWAYS_FULL_BLEED_GROUP_ID"];
    [v5 removeObject:v165];

    v166 = [v5 specifierForID:@"FACETIME_ALWAYS_FULL_BLEED_SWITCH_ID"];
    [v5 removeObject:v166];
  }

  if (![(CNFRegSettingsController *)v216 shouldShowGFTProminenceSpecifiers])
  {
    v167 = [v5 specifierForID:@"GFT_PROMINENCE_GROUP_ID"];
    [v5 removeObject:v167];

    v168 = [v5 specifierForID:@"GFT_AUDIO_PROMINENCE_ENABLED_ID"];
    [v5 removeObject:v168];
  }

  if (![(CNFRegSettingsController *)v216 shouldShowFaceTimeVPCSpecifiers])
  {
    v169 = [v5 specifierForID:@"FACETIME_VPC_GROUP_ID"];
    [v5 removeObject:v169];

    v170 = [v5 specifierForID:@"FACETIME_VPC_SWITCH_ID"];
    [v5 removeObject:v170];
  }

  if (![(CNFRegSettingsController *)v216 shouldShowSharePlaySpecifiers])
  {
    v223 = 0u;
    v224 = 0u;
    v221 = 0u;
    v222 = 0u;
    v171 = v216->_sharePlaySpecifiers;
    v172 = [(NSArray *)v171 countByEnumeratingWithState:&v221 objects:v257 count:16];
    if (v172)
    {
      v173 = *v222;
      do
      {
        for (kk = 0; kk != v172; ++kk)
        {
          if (*v222 != v173)
          {
            objc_enumerationMutation(v171);
          }

          [v5 removeObject:*(*(&v221 + 1) + 8 * kk)];
        }

        v172 = [(NSArray *)v171 countByEnumeratingWithState:&v221 objects:v257 count:16];
      }

      while (v172);
    }
  }

  if (![(CNFRegSettingsController *)v216 shouldShowSharedNameAndPhotoSpecifiers])
  {
    v219 = 0u;
    v220 = 0u;
    v217 = 0u;
    v218 = 0u;
    v175 = v216->_sharedNameAndPhotoSpecifiers;
    v176 = [(NSArray *)v175 countByEnumeratingWithState:&v217 objects:v256 count:16];
    if (v176)
    {
      v177 = *v218;
      do
      {
        for (mm = 0; mm != v176; ++mm)
        {
          if (*v218 != v177)
          {
            objc_enumerationMutation(v175);
          }

          [v5 removeObject:*(*(&v217 + 1) + 8 * mm)];
        }

        v176 = [(NSArray *)v175 countByEnumeratingWithState:&v217 objects:v256 count:16];
      }

      while (v176);
    }
  }

  if (![(CNFRegSettingsController *)v216 shouldShowCallRecordingSpecifier]&& ![(CNFRegSettingsController *)v216 shouldShowCallScreeningSpecifier])
  {
    v179 = [v5 specifierForID:@"CALL_FEATURES_GROUP_ID"];
    [v5 removeObject:v179];
  }

  if (![(CNFRegSettingsController *)v216 shouldShowCallRecordingSpecifier])
  {
    v180 = [v5 specifierForID:@"CALL_RECORDING"];
    [v5 removeObject:v180];
  }

  v181 = [v5 specifierForID:@"CALL_SCREENING_GROUP"];
  [v5 removeObject:v181];

  if (![(CNFRegSettingsController *)v216 shouldShowCallScreeningSpecifier])
  {
    v182 = [v5 specifierForID:@"CALL_SCREENING_ROW"];
    [v5 removeObject:v182];
  }

  if ([(CNFRegSettingsController *)v216 shouldShowSilenceUnknownCallers])
  {
    v183 = @"CALLS_FROM_UNKNOWN_NUMBERS_GROUP_SPACER";
  }

  else
  {
    v183 = @"SILENCE_CALLS";
  }

  v184 = [v5 specifierForID:v183];
  [v5 removeObject:v184];

  if (![(CNFRegSettingsController *)v216 shouldShowCallFilteringGroupSpecifier])
  {
    v185 = [v5 specifierForID:@"CALL_FILTERING_GROUP_SPACER"];
    [v5 removeObject:v185];
  }

  v186 = [v5 copy];
  v187 = *(&v216->super.super.super.super.super.super.isa + v193);
  *(&v216->super.super.super.super.super.super.isa + v193) = v186;

  v3 = *(&v216->super.super.super.super.super.super.isa + v193);
LABEL_224:
  v188 = *MEMORY[0x277D85DE8];

  return v3;
}

void __41__CNFRegSettingsController_specifierList__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) createSpecifierForCallerIdAlias:a2];
  [*(a1 + 40) insertObject:v3 atIndex:*(a1 + 48)];
}

- (void)doneButtonTapped:(id)a3
{
  v4 = [(CNFRegSettingsController *)self navigationController];
  v3 = [v4 presentingViewController];
  [v3 dismissViewControllerAnimated:1 completion:0];
}

- (void)viewDidLoad
{
  v11.receiver = self;
  v11.super_class = CNFRegSettingsController;
  [(CNFRegSettingsController *)&v11 viewDidLoad];
  v3 = [(CNFRegSettingsController *)self navigationController];
  v4 = [v3 isBeingPresented];

  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:self action:sel_doneButtonTapped_];
    v6 = [(CNFRegSettingsController *)self navigationItem];
    [v6 setRightBarButtonItem:v5];

    v7 = CommunicationsSetupUIBundle();
    v8 = CNFRegStringTableName();
    v9 = [v7 localizedStringForKey:@"FACETIME_ALIAS_MODAL_TITLE" value:&stru_2856D3978 table:v8];
    v10 = [(CNFRegSettingsController *)self navigationItem];
    [v10 setTitle:v9];
  }
}

- (void)emitNavigationEvent
{
  v18[1] = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D6EF78];
  v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"settings-navigation://com.apple.Settings.Apps/%@", *MEMORY[0x277D6EF78]];
  v4 = [MEMORY[0x277CBEBC0] URLWithString:v17];
  v5 = objc_alloc(MEMORY[0x277CCAEB8]);
  v6 = [MEMORY[0x277CBEAF8] currentLocale];
  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v8 = [v7 bundleURL];
  v9 = [v5 initWithKey:@"FaceTime" table:0 locale:v6 bundleURL:v8];

  v10 = objc_alloc(MEMORY[0x277CCAEB8]);
  v11 = [MEMORY[0x277CBEAF8] currentLocale];
  v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v13 = [v12 bundleURL];
  v14 = [v10 initWithKey:@"Apps" table:0 locale:v11 bundleURL:v13];

  v18[0] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];
  [(CNFRegSettingsController *)self pe_emitNavigationEventForApplicationSettingsWithApplicationBundleIdentifier:v3 title:v9 localizedNavigationComponents:v15 deepLink:v4];

  v16 = *MEMORY[0x277D85DE8];
}

uint64_t __44__CNFRegSettingsController_viewIsAppearing___block_invoke(uint64_t a1)
{
  [*(a1 + 32) refreshFaceTimeSettingsAnimated:0];
  [*(a1 + 32) refreshAllAliasSpecifiers];
  v2 = *(a1 + 32);

  return [v2 refreshAllCallerIdAliasSpecifiers];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  *&self->_settingsFlags |= 4u;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __79__CNFRegSettingsController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_2;
  v9[3] = &unk_278DE83F8;
  v9[4] = self;
  v7 = a4;
  [v7 animateAlongsideTransition:&__block_literal_global_395 completion:v9];
  v8.receiver = self;
  v8.super_class = CNFRegSettingsController;
  [(CNFRegSettingsController *)&v8 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
}

- (id)_useableAccounts
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v4 = [(CNFRegListController *)self regController];
  v5 = [v4 phoneAccounts];
  [v3 addObjectsFromArray:v5];

  v6 = [(CNFRegSettingsController *)self _appleIDAccounts];
  [v3 addObjectsFromArray:v6];

  return v3;
}

- (id)_appleIDAccounts
{
  v2 = [(CNFRegListController *)self regController];
  v3 = [v2 accountsWithFilter:102405];

  return v3;
}

- (id)_operationalAccounts
{
  v2 = [(CNFRegListController *)self regController];
  v3 = [v2 accountsWithFilter:102400];

  return v3;
}

- (id)_operationalAccountsForService:(int64_t)a3
{
  v3 = [CNFRegController controllerForServiceType:a3];
  v4 = [v3 accountsWithFilter:102400];

  return v4;
}

- (void)formSheetViewWillDisappear
{
  v2.receiver = self;
  v2.super_class = CNFRegSettingsController;
  [(CNFRegSettingsController *)&v2 formSheetViewWillDisappear];
}

- (void)formSheetViewDidDisappear
{
  v3.receiver = self;
  v3.super_class = CNFRegSettingsController;
  [(CNFRegSettingsController *)&v3 formSheetViewDidDisappear];
  [(CNFRegSettingsController *)self _setupAllListeners];
}

- (void)systemApplicationWillEnterForeground
{
  v3.receiver = self;
  v3.super_class = CNFRegSettingsController;
  [(CNFRegListController *)&v3 systemApplicationWillEnterForeground];
  [(CNFRegSettingsController *)self refreshFaceTimeSettingsAnimated:0];
  [(CNFRegSettingsController *)self _setupAccountHandlers];
  [(CNFRegSettingsController *)self refreshMDMRestrictionStatusWithCompletion:1];
}

- (void)systemApplicationDidEnterBackground
{
  v5.receiver = self;
  v5.super_class = CNFRegSettingsController;
  [(CNFRegListController *)&v5 systemApplicationDidEnterBackground];
  v3 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_243BE5000, v3, OS_LOG_TYPE_DEFAULT, "Removing all event handlers due to suspension", v4, 2u);
  }

  if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
  {
    IMLogString();
  }

  [(CNFRegListController *)self removeAllHandlers];
}

- (void)systemApplicationDidSuspend
{
  v12 = *MEMORY[0x277D85DE8];
  v9.receiver = self;
  v9.super_class = CNFRegSettingsController;
  [(CNFRegListController *)&v9 systemApplicationDidSuspend];
  v3 = [(CNFRegSettingsController *)self presentedViewController];

  if (v3)
  {
    v4 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [(CNFRegSettingsController *)self presentedViewController];
      *buf = 138412290;
      v11 = v5;
      _os_log_impl(&dword_243BE5000, v4, OS_LOG_TYPE_DEFAULT, "Dismissing presented view controller (%@) due to suspension", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
    {
      v8 = [(CNFRegSettingsController *)self presentedViewController];
      IMLogString();
    }

    v6 = [(CNFRegSettingsController *)self presentedViewController];
    [v6 dismissViewControllerAnimated:0 completion:0];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)systemApplicationDidResume
{
  v2.receiver = self;
  v2.super_class = CNFRegSettingsController;
  [(CNFRegListController *)&v2 systemApplicationDidResume];
}

- (void)_handleDeactivation:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [v5 objectForKey:*MEMORY[0x277D77300]];

  if ([v6 intValue] == 11)
  {
    v7 = [(CNFRegSettingsController *)self presentedViewController];

    if (v7)
    {
      v18 = [(CNFRegSettingsController *)self presentedViewController];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
LABEL_16:
        v14 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v15 = [(CNFRegSettingsController *)self presentedViewController];
          *buf = 138412290;
          v24 = v15;
          _os_log_impl(&dword_243BE5000, v14, OS_LOG_TYPE_DEFAULT, "Dismissing presented view controller (%@) due to deactivation (suspension)", buf, 0xCu);
        }

        if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
        {
          v17 = [(CNFRegSettingsController *)self presentedViewController];
          IMLogString();
        }

        [(CNFRegSettingsController *)self dismissViewControllerAnimated:0 completion:0, v17];
      }

      else
      {
        objc_opt_class();
        v8 = v18;
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
LABEL_23:

          goto LABEL_24;
        }

        v21 = 0u;
        v22 = 0u;
        v19 = 0u;
        v20 = 0u;
        v9 = [v18 viewControllers];
        v10 = [v9 countByEnumeratingWithState:&v19 objects:v25 count:16];
        if (v10)
        {
          v11 = *v20;
          while (2)
          {
            for (i = 0; i != v10; ++i)
            {
              if (*v20 != v11)
              {
                objc_enumerationMutation(v9);
              }

              v13 = *(*(&v19 + 1) + 8 * i);
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  continue;
                }
              }

              goto LABEL_16;
            }

            v10 = [v9 countByEnumeratingWithState:&v19 objects:v25 count:16];
            if (v10)
            {
              continue;
            }

            break;
          }
        }
      }

      v8 = v18;
      goto LABEL_23;
    }
  }

LABEL_24:

  v16 = *MEMORY[0x277D85DE8];
}

- (id)customTitle
{
  v2 = [(CNFRegListController *)self regController];
  v3 = [v2 serviceType];

  if (v3 > 2)
  {
    v7 = &stru_2856D3978;
  }

  else
  {
    v4 = off_278DE8618[v3];
    v5 = CommunicationsSetupUIBundle();
    v6 = CNFRegStringTableName();
    v7 = [v5 localizedStringForKey:v4 value:&stru_2856D3978 table:v6];
  }

  return v7;
}

- (void)_updateUnlocalizedBackendIdentifier
{
  v3 = [(CNFRegListController *)self regController];
  v4 = [v3 serviceType];

  if (!v4)
  {
    v5 = [(CNFRegSettingsController *)self specifier];
    [v5 setIdentifier:@"FaceTime"];
  }
}

- (void)_cacheSpecifierGroup:(id)a3 withSpecifiers:(id)a4
{
  if (a3 && a4)
  {
    v6 = a4;
    v9 = a3;
    _cacheSpecifierGroupMatchingID(@"FACETIME_ACCOUNT_GROUP_ID", v9, v6, &self->_accountGroupSpecifiers);
    _cacheSpecifierGroupMatchingID(@"FACETIME_REPLY_WITH_MESSAGE_GROUP_ID", v9, v6, &self->_replyWithMessageGroupSpecifiers);
    _cacheSpecifierGroupMatchingID(@"FACETIME_ALIAS_GROUP_ID", v9, v6, &self->_aliasGroupSpecifiers);
    _cacheSpecifierGroupMatchingID(@"FACETIME_TEMPORARY_PHONE_GROUP_ID", v9, v6, &self->_temporaryPhoneGroupSpecifiers);
    _cacheSpecifierGroupMatchingID(@"FACETIME_TEMPORARY_PHONE_ID", v9, v6, &self->_temporaryPhoneDescriptionGroupSpecifiers);
    _cacheSpecifierGroupMatchingID(@"FACETIME_TEMPORARY_PHONE_REMOVE", v9, v6, &self->_temporaryPhoneRemoveGroupSpecifiers);
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"FACETIME_TRAVEL_PHONE_%@_GROUP_ID", @"SIM_1"];
    _cacheSpecifierGroupMatchingID(v7, v9, v6, &self->_travelPhoneSIMOneGroupSpecifiers);

    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"FACETIME_TRAVEL_PHONE_%@_GROUP_ID", @"SIM_2"];
    _cacheSpecifierGroupMatchingID(v8, v9, v6, &self->_travelPhoneSIMTwoGroupSpecifiers);

    _cacheSpecifierGroupMatchingID(@"FACETIME_CALLERID_GROUP_ID", v9, v6, &self->_callerIdGroupSpecifiers);
    _cacheSpecifierGroupMatchingID(@"FACETIME_BLOCKLIST_GROUP_ID", v9, v6, &self->_blocklistGroupSpecifiers);
    _cacheSpecifierGroupMatchingID(@"RECEIVE_RELAYED_PHONE_CALLS_GROUP_ID", v9, v6, &self->_receiveRelayCallsGroupSpecifiers);
    _cacheSpecifierGroupMatchingID(@"GFT_PROMINENCE_GROUP_ID", v9, v6, &self->_GFTProminenceGroupSpecifiers);
    _cacheSpecifierGroupMatchingID(@"FACETIME_CAPTIONS_ENABLED_GROUP_ID", v9, v6, &self->_faceTimeCaptionsGroupSpecifiers);
    _cacheSpecifierGroupMatchingID(@"FACETIME_PHOTOS_ENABLED_GROUP_ID", v9, v6, &self->_faceTimePhotosGroupSpecifiers);
    _cacheSpecifierGroupMatchingID(@"FACETIME_ALWAYS_FULL_BLEED_GROUP_ID", v9, v6, &self->_alwaysFullBleedGroupSpecifiers);
    _cacheSpecifierGroupMatchingID(@"SHAREPLAY_SETTINGS_GROUP", v9, v6, &self->_sharePlaySpecifiers);
    _cacheSpecifierGroupMatchingID(@"FACETIME_VPC_GROUP_ID", v9, v6, &self->_faceTimeVPCGroupSpecifiers);
    _cacheSpecifierGroupMatchingID(@"SHARED_NAME_AND_PHOTO_SETTINGS_GROUP", v9, v6, &self->_sharedNameAndPhotoSpecifiers);
    _cacheSpecifierGroupMatchingID(@"ONLINE_SAFETY_GROUP_ID", v9, v6, &self->_onlineSafetyGroupSpecifiers);
  }
}

- (void)_buildSpecifierCache:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = a3;
  v4 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = 0;
    v8 = *v17;
    v9 = MEMORY[0x277D3FC90];
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        _cacheSpecifierMatchingID(@"FACETIME_ENABLED_GROUP_ID", v11, &self->_faceTimeEnabledGroupSpecifier);
        _cacheSpecifierMatchingID(@"FACETIME_ENABLED_ID", v11, &self->_faceTimeEnabledSpecifier);
        if (*&v11[*v9])
        {
          [v6 addObject:v11];
        }

        else
        {
          [(CNFRegSettingsController *)self _cacheSpecifierGroup:v7 withSpecifiers:v6];
          v12 = v11;

          v13 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{v12, 0}];
          v6 = v13;
          v7 = v12;
        }
      }

      v5 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  [(CNFRegSettingsController *)self _cacheSpecifierGroup:v7 withSpecifiers:v6];

  v14 = *MEMORY[0x277D85DE8];
}

- (id)_switchFooterText
{
  v56 = *MEMORY[0x277D85DE8];
  v3 = CommunicationsSetupUIBundle();
  v4 = CNFRegStringTableName();
  v5 = [v3 localizedStringForKey:@"FACETIME_SWITCH_STATUS_DEFAULT" value:&stru_2856D3978 table:v4];

  if (MGGetBoolAnswer() && ([MEMORY[0x277D07DB0] sharedInstance], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "supportsSMSIdentification"), v6, v7))
  {
    v8 = CNFRegStringTableName();
    v9 = CommunicationsSetupUIBundle();
    v10 = CNFLocalizedStringFromTableInBundleWithFallback(@"FACETIME_SWITCH_STATUS_DEFAULT_WITH_WARNING", v8, v9);

    v45 = v10;
  }

  else
  {
    v45 = v5;
  }

  SIMStatus = CTSIMSupportGetSIMStatus();
  v11 = MEMORY[0x277CC3ED8];
  v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v13 = [(CNFRegListController *)self regController];
  v14 = [v13 accountsWithFilter:8];
  [v12 addObjectsFromArray:v14];

  v15 = [(CNFRegListController *)self regController];
  v16 = [v15 accountsWithFilter:8200];
  [v12 addObjectsFromArray:v16];

  v17 = [MEMORY[0x277D07DB0] sharedInstance];
  LOBYTE(v16) = [v17 supportsSMSIdentification];

  if ((v16 & 1) == 0)
  {
    v18 = [(CNFRegListController *)self regController];
    v19 = [v18 accountsWithFilter:16389];
    [v12 addObjectsFromArray:v19];
  }

  v20 = *v11;
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v21 = v12;
  v22 = [v21 countByEnumeratingWithState:&v50 objects:v55 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = 0;
    v25 = 0;
    v26 = *v51;
    do
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v51 != v26)
        {
          objc_enumerationMutation(v21);
        }

        v28 = *(*(&v50 + 1) + 8 * i);
        v29 = [v28 registrationStatus];
        if (v29 == -1)
        {
          v25 |= [v28 registrationFailureReason] != 14;
          [v28 isActive];
        }

        else
        {
          v30 = v29;
          v31 = [v28 isActive];
          if (v30 >= 2 && v31 != 0)
          {
            v24 |= [v28 CNFRegSignInComplete] ^ 1;
          }
        }
      }

      v23 = [v21 countByEnumeratingWithState:&v50 objects:v55 count:16];
    }

    while (v23);
  }

  else
  {
    v24 = 0;
    v25 = 0;
  }

  if (SIMStatus == v20)
  {
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v37 = [(CNFRegListController *)self regController];
    v34 = [v37 accountsWithFilter:4];

    v38 = [v34 countByEnumeratingWithState:&v46 objects:v54 count:16];
    if (v38)
    {
      v39 = v38;
      v40 = *v47;
      while (2)
      {
        for (j = 0; j != v39; ++j)
        {
          if (*v47 != v40)
          {
            objc_enumerationMutation(v34);
          }

          if ([*(*(&v46 + 1) + 8 * j) registrationStatus] == 5)
          {
            v36 = v45;
            goto LABEL_40;
          }
        }

        v39 = [v34 countByEnumeratingWithState:&v46 objects:v54 count:16];
        if (v39)
        {
          continue;
        }

        break;
      }
    }
  }

  if ((v25 | v24))
  {
    if (v25)
    {
      v33 = @"FACETIME_SWITCH_STATUS_FAILED";
    }

    else
    {
      v33 = @"FACETIME_SWITCH_STATUS_IN_PROGRESS";
    }

    v34 = CommunicationsSetupUIBundle();
    v35 = CNFRegStringTableName();
    v36 = [v34 localizedStringForKey:v33 value:&stru_2856D3978 table:v35];

LABEL_40:
  }

  else
  {
    v36 = v45;
  }

  v42 = *MEMORY[0x277D85DE8];

  return v36;
}

- (void)_updateSwitch
{
  if ([(CNFRegSettingsController *)self showEnableSwitch])
  {
    v3 = self->_faceTimeEnabledGroupSpecifier;
    v4 = [(CNFRegSettingsController *)self _switchFooterText];
    [(CNFRegListController *)self _setLabel:v4 forSpecifier:v3 header:0];
    [(CNFRegSettingsController *)self reloadSpecifier:self->_faceTimeEnabledGroupSpecifier animated:0];
    [(CNFRegSettingsController *)self reloadSpecifier:self->_faceTimeEnabledSpecifier animated:0];
  }
}

- (void)_updateSwitchDelayed
{
  if ([(CNFRegSettingsController *)self showEnableSwitch])
  {
    [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel__updateSwitch object:0];

    [(CNFRegSettingsController *)self performSelector:sel__updateSwitch withObject:0 afterDelay:0.75];
  }
}

- (id)getFaceTimeEnabledForSpecifier:(id)a3
{
  v3 = MEMORY[0x277CCABB0];
  v4 = [(CNFRegListController *)self regController];
  v5 = [v3 numberWithBool:{objc_msgSend(v4, "isServiceEnabled")}];

  return v5;
}

- (void)setReceiveRelayedCallsEnabled:(id)a3 specifier:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v26 = [v6 BOOLValue];
    _os_log_impl(&dword_243BE5000, v8, OS_LOG_TYPE_DEFAULT, "SetReceiveRelayedCallsEnabled %d", buf, 8u);
  }

  if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
  {
    v23 = [v6 BOOLValue];
    IMLogString();
  }

  if ([v6 BOOLValue] && (objc_msgSend(MEMORY[0x277D6EDE8], "accountsSupportSecondaryCalling") & 1) == 0)
  {
    v9 = CommunicationsSetupUIBundle();
    v10 = CNFRegStringTableName();
    v11 = [v9 localizedStringForKey:@"RELAY_CALLS_ACCOUNT_ALERT_TITLE" value:&stru_2856D3978 table:v10];

    LODWORD(v9) = _os_feature_enabled_impl();
    v12 = CommunicationsSetupUIBundle();
    v13 = CNFRegStringTableName();
    if (v9)
    {
      v14 = @"RELAY_CALLS_ACCOUNT_ALERT_MESSAGE_APPLEACCOUNT";
    }

    else
    {
      v14 = @"RELAY_CALLS_ACCOUNT_ALERT_MESSAGE";
    }

    v15 = [v12 localizedStringForKey:v14 value:&stru_2856D3978 table:v13];

    v16 = [MEMORY[0x277D75110] alertControllerWithTitle:v11 message:v15 preferredStyle:1];
    v17 = MEMORY[0x277D750F8];
    v18 = CommunicationsSetupUIBundle();
    v19 = CNFRegStringTableName();
    v20 = [v18 localizedStringForKey:@"FACETIME_ALERT_OK" value:&stru_2856D3978 table:v19];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __68__CNFRegSettingsController_setReceiveRelayedCallsEnabled_specifier___block_invoke;
    v24[3] = &unk_278DE8328;
    v24[4] = self;
    v21 = [v17 actionWithTitle:v20 style:0 handler:v24];
    [v16 addAction:v21];

    [(CNFRegSettingsController *)self presentViewController:v16 animated:1 completion:0];
  }

  else
  {
    [MEMORY[0x277D6EDE8] setRelayCallingEnabled:{objc_msgSend(v6, "BOOLValue")}];
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (id)getReceiveRelayedCallsEnabledForSpecifier:(id)a3
{
  v3 = MEMORY[0x277CCABB0];
  v4 = [MEMORY[0x277D6EDE8] isRelayCallingEnabled];

  return [v3 numberWithBool:v4];
}

- (void)_showPrivacySheet:(id)a3
{
  v4 = [MEMORY[0x277D37678] presenterForPrivacySplashWithIdentifier:@"com.apple.onboarding.imessagefacetime"];
  [v4 setPresentingViewController:self];
  [v4 present];
}

- (void)_refreshFaceTimeSettingsDelayed:(id)a3
{
  -[CNFRegSettingsController refreshFaceTimeSettingsAnimated:](self, "refreshFaceTimeSettingsAnimated:", [a3 BOOLValue]);
  delayedRefreshAnimatedFlag = self->_delayedRefreshAnimatedFlag;
  self->_delayedRefreshAnimatedFlag = 0;
}

- (void)setShowEnableSwitch:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_settingsFlags = *&self->_settingsFlags & 0xF7 | v3;
}

- (BOOL)shouldShowCallDirectorySettingsBundleSpecifiers
{
  v3 = [(CNFRegListController *)self regController];
  v4 = [v3 serviceType];

  v5 = [(CNFRegListController *)self regController];
  v6 = [v5 isServiceEnabled];

  result = 0;
  if (!v4)
  {
    if (v6)
    {
      return [MEMORY[0x277D6EDE8] supportsPrimaryCalling] ^ 1;
    }
  }

  return result;
}

- (BOOL)shouldShowIncomingCallSettingsBundleSpecifiers
{
  v3 = [(CNFRegListController *)self regController];
  v4 = [v3 serviceType] == 0;

  v5 = [(CNFRegListController *)self regController];
  LOBYTE(v3) = [v5 isServiceEnabled];

  return v4 & v3;
}

- (BOOL)shouldShowReceiveRelayCalls
{
  v3 = [(CNFRegListController *)self regController];
  v4 = [v3 serviceType];

  v5 = [(CNFRegListController *)self regController];
  v6 = [v5 isServiceEnabled];

  LOBYTE(v7) = 0;
  if (!v4)
  {
    if (v6)
    {
      v7 = [MEMORY[0x277D6EDE8] supportsRelayCalling];
      if (v7)
      {
        LOBYTE(v7) = [MEMORY[0x277D6EDE8] supportsPrimaryCalling] ^ 1;
      }
    }
  }

  return v7;
}

- (BOOL)shouldShowSiriSpecifiers
{
  v3 = [(CNFRegListController *)self regController];
  v4 = [v3 serviceType] == 0;

  v5 = [(CNFRegListController *)self regController];
  LOBYTE(v3) = [v5 isServiceEnabled];

  return v4 & v3;
}

- (BOOL)shouldShowReceiveThumperCalls
{
  v3 = [(CNFRegListController *)self regController];
  v4 = [v3 serviceType];

  v5 = [(CNFRegListController *)self regController];
  v6 = [v5 isServiceEnabled];

  LOBYTE(v7) = 0;
  if (!v4)
  {
    if (v6)
    {
      v7 = [MEMORY[0x277D6EDE8] supportsThumperCalling];
      if (v7)
      {
        LOBYTE(v7) = [MEMORY[0x277D6EDE8] supportsPrimaryCalling] ^ 1;
      }
    }
  }

  return v7;
}

- (id)accountToShowInCallerIDFooter
{
  v2 = [(CNFRegSettingsController *)self _appleIDAccounts];
  v3 = [v2 firstObject];

  return v3;
}

- (BOOL)refreshiMessageAccountFooterText:(BOOL)a3
{
  v4 = *MEMORY[0x277D3FC48];
  v5 = [*(&self->super.super.super.super.super.super.isa + v4) specifierForID:@"FACETIME_CALLERID_GROUP_ID"];
  v6 = [*(&self->super.super.super.super.super.super.isa + v4) specifierForID:@"FACETIME_ALIAS_GROUP_ID"];
  v7 = v6;
  if (v5)
  {
    [(CNFRegSettingsController *)self configureAccountFooterForGroupSpecifier:v5];
    [(CNFRegSettingsController *)self clearFooterFromSpecifier:v7];
  }

  else
  {
    if (!v6)
    {
      v8 = 0;
      goto LABEL_6;
    }

    [(CNFRegSettingsController *)self configureAccountFooterForGroupSpecifier:v6];
  }

  v8 = 1;
LABEL_6:
  objc_initWeak(&location, self);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__CNFRegSettingsController_refreshiMessageAccountFooterText___block_invoke;
  block[3] = &unk_278DE81E0;
  v12 = v5;
  v13 = self;
  v9 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&location);
  return v8;
}

uint64_t __61__CNFRegSettingsController_refreshiMessageAccountFooterText___block_invoke(uint64_t a1)
{
  if (*(a1 + 32))
  {
    [*(a1 + 40) reloadSpecifierID:@"FACETIME_CALLERID_GROUP_ID"];
  }

  v2 = *(a1 + 40);

  return [v2 reloadSpecifierID:@"FACETIME_ALIAS_GROUP_ID"];
}

- (void)clearFooterFromSpecifier:(id)a3
{
  v3 = *MEMORY[0x277D3FF48];
  v4 = a3;
  [v4 removePropertyForKey:v3];
  [v4 removePropertyForKey:*MEMORY[0x277D3FF70]];
}

- (void)configureAccountFooterForGroupSpecifier:(id)a3
{
  v20 = a3;
  v4 = [(CNFRegSettingsController *)self accountToShowInCallerIDFooter];
  if (v4)
  {
    v5 = CommunicationsSetupUIBundle();
    v6 = CNFRegStringTableName();
    v7 = [v5 localizedStringForKey:@"FACETIME_SETTINGS_ALIAS_LABEL_FOOTER" value:&stru_2856D3978 table:v6];

    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    [v20 setProperty:v9 forKey:*MEMORY[0x277D3FF48]];

    v10 = [MEMORY[0x277CCAE60] valueWithNonretainedObject:self];
    [v20 setProperty:v10 forKey:*MEMORY[0x277D3FF68]];

    v11 = NSStringFromSelector(sel_accountTappedWithSpecifier_);
    [v20 setProperty:v11 forKey:*MEMORY[0x277D3FF50]];

    v12 = MEMORY[0x277CCACA8];
    v13 = [v4 loginDisplayString];
    v14 = [v12 localizedStringWithFormat:v7, v13];

    [v20 setProperty:v14 forKey:*MEMORY[0x277D3FF70]];
    v15 = [v4 loginDisplayString];
    v16 = [v14 rangeOfString:v15];
    v18 = v17;

    v22.location = v16;
    v22.length = v18;
    v19 = NSStringFromRange(v22);
    [v20 setProperty:v19 forKey:*MEMORY[0x277D3FF58]];
  }

  else
  {
    [(CNFRegSettingsController *)self clearFooterFromSpecifier:v20];
  }
}

- (void)configureSignOutForSpecifier:(id)a3
{
  v3 = a3;
  v4 = CommunicationsSetupUIBundle();
  v5 = CNFRegStringTableName();
  v6 = [v4 localizedStringForKey:@"FACETIME_ACCOUNT_POPUP_SIGN_OUT" value:&stru_2856D3978 table:v5];
  [v3 setName:v6];

  v7 = CommunicationsSetupUIBundle();
  v8 = CNFRegStringTableName();
  v9 = [v7 localizedStringForKey:@"FACETIME_ACCOUNT_POPUP_SIGN_OUT" value:&stru_2856D3978 table:v8];
  [v3 setProperty:v9 forKey:*MEMORY[0x277D40170]];

  v10 = [MEMORY[0x277CCABB0] numberWithBool:1];
  [v3 setProperty:v10 forKey:*MEMORY[0x277D3FF38]];

  [v3 setButtonAction:sel_signoutAccount_];
  v11 = NSStringFromSelector(sel_signoutAccount_);
  [v3 setProperty:v11 forKey:*MEMORY[0x277D3FE10]];
}

- (id)getAccountNameForSpecifier:(id)a3
{
  v3 = a3;
  v4 = [v3 CNFRegAccount];

  if (v4)
  {
    v5 = [v3 CNFRegAccount];
    v6 = [v5 loginDisplayString];
  }

  else
  {
    v6 = &stru_2856D3978;
  }

  return v6;
}

- (void)_showAccountAlertForAccount:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = CommunicationsSetupUIBundle();
    v6 = CNFRegStringTableName();
    v24 = [v5 localizedStringForKey:@"FACETIME_ACCOUNT_POPUP_TITLE" value:&stru_2856D3978 table:v6];

    v23 = [v4 loginDisplayString];
    v7 = CommunicationsSetupUIBundle();
    v8 = CNFRegStringTableName();
    v22 = [v7 localizedStringForKey:@"FACETIME_ALERT_CANCEL" value:&stru_2856D3978 table:v8];

    v9 = [MEMORY[0x277D75110] alertControllerWithTitle:v24 message:v23 preferredStyle:1];
    v10 = [MEMORY[0x277D750F8] actionWithTitle:v22 style:1 handler:0];
    [v9 addAction:v10];

    v11 = CommunicationsSetupUIBundle();
    v12 = CNFRegStringTableName();
    v13 = [v11 localizedStringForKey:@"FACETIME_ACCOUNT_POPUP_EDIT_LOCATION" value:&stru_2856D3978 table:v12];

    v14 = MEMORY[0x277D750F8];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __56__CNFRegSettingsController__showAccountAlertForAccount___block_invoke;
    v27[3] = &unk_278DE8420;
    v27[4] = self;
    v15 = v4;
    v28 = v15;
    v16 = [v14 actionWithTitle:v13 style:0 handler:v27];
    [v9 addAction:v16];

    v17 = CommunicationsSetupUIBundle();
    v18 = CNFRegStringTableName();
    v19 = [v17 localizedStringForKey:@"FACETIME_ACCOUNT_POPUP_SIGN_OUT" value:&stru_2856D3978 table:v18];

    v20 = MEMORY[0x277D750F8];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __56__CNFRegSettingsController__showAccountAlertForAccount___block_invoke_2;
    v25[3] = &unk_278DE8420;
    v25[4] = self;
    v26 = v15;
    v21 = [v20 actionWithTitle:v19 style:0 handler:v25];
    [v9 addAction:v21];

    [(CNFRegSettingsController *)self presentViewController:v9 animated:1 completion:0];
  }
}

void __56__CNFRegSettingsController__showAccountAlertForAccount___block_invoke_2(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  if (!_os_feature_enabled_impl())
  {
    goto LABEL_15;
  }

  v2 = [*(a1 + 32) regController];
  if ([v2 serviceType] != 1)
  {
    goto LABEL_14;
  }

  v3 = [*(a1 + 32) _isEnrolledInContactKeyVerification];

  if (v3)
  {
    v4 = [*(a1 + 32) regController];
    v5 = [v4 accounts];

    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v2 = v5;
    v6 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v2);
          }

          v10 = *(*(&v13 + 1) + 8 * i);
          if ([v10 accountType] == 2 && objc_msgSend(v10, "loginStatus") == 4)
          {
            block[0] = MEMORY[0x277D85DD0];
            block[1] = 3221225472;
            block[2] = __56__CNFRegSettingsController__showAccountAlertForAccount___block_invoke_3;
            block[3] = &unk_278DE7E08;
            block[4] = *(a1 + 32);
            dispatch_async(MEMORY[0x277D85CD0], block);

            goto LABEL_16;
          }
        }

        v7 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

LABEL_14:
  }

LABEL_15:
  v2 = [*(a1 + 32) regController];
  [v2 signoutAccount:*(a1 + 40)];
LABEL_16:

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_showAccountSignOutCKVAlert
{
  v3 = CommunicationsSetupUIBundle();
  v4 = CNFRegStringTableName();
  v17 = [v3 localizedStringForKey:@"ACCOUNT_SIGN_OUT_CKV_POPUP_TITLE" value:&stru_2856D3978 table:v4];

  v5 = CommunicationsSetupUIBundle();
  v6 = CNFRegStringTableName();
  v7 = [v5 localizedStringForKey:@"ACCOUNT_SIGN_OUT_CKV_POPUP_MESSAGE" value:&stru_2856D3978 table:v6];

  v8 = CommunicationsSetupUIBundle();
  v9 = CNFRegStringTableName();
  v10 = [v8 localizedStringForKey:@"FACETIME_ALERT_CANCEL" value:&stru_2856D3978 table:v9];

  v11 = [MEMORY[0x277D75110] alertControllerWithTitle:v17 message:v7 preferredStyle:1];
  v12 = [MEMORY[0x277D750F8] actionWithTitle:v10 style:1 handler:0];
  [v11 addAction:v12];

  v13 = CommunicationsSetupUIBundle();
  v14 = CNFRegStringTableName();
  v15 = [v13 localizedStringForKey:@"ACCOUNT_SIGN_OUT_CKV_POPUP_SETTINGS" value:&stru_2856D3978 table:v14];

  v16 = [MEMORY[0x277D750F8] actionWithTitle:v15 style:0 handler:&__block_literal_global_546];
  [v11 addAction:v16];

  [(CNFRegSettingsController *)self presentViewController:v11 animated:1 completion:0];
}

void __55__CNFRegSettingsController__showAccountSignOutCKVAlert__block_invoke()
{
  v1 = [MEMORY[0x277CC1E80] defaultWorkspace];
  v0 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:@"settings-navigation://com.apple.Settings.AppleAccount"];
  [v1 openSensitiveURL:v0 withOptions:0];
}

- (BOOL)_isEnrolledInContactKeyVerification
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = CUTWeakLinkSymbol();
  if (v2)
  {
    v3 = v2();
  }

  else
  {
    v3 = 0;
  }

  v4 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [MEMORY[0x277CCABB0] numberWithBool:v3];
    *buf = 138412290;
    v10 = v5;
    _os_log_impl(&dword_243BE5000, v4, OS_LOG_TYPE_DEFAULT, "_isEnrolledInContactKeyVerification: %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
  {
    v8 = [MEMORY[0x277CCABB0] numberWithBool:v3];
    IMLogString();
  }

  v6 = *MEMORY[0x277D85DE8];
  return v3;
}

- (void)accountTappedWithSpecifier:(id)a3
{
  if ([(CNFRegSettingsController *)self _shouldDisableAccountConfigurationUI])
  {

    [(CNFRegSettingsController *)self refreshFaceTimeSettingsAnimated:0];
  }

  else
  {
    v6 = [(CNFRegSettingsController *)self accountToShowInCallerIDFooter];
    v4 = [(CNFRegListController *)self regController];
    v5 = [v4 accountStateForAccount:v6];

    if (v6 && (v5 & 0x40000000) != 0)
    {
      [(CNFRegSettingsController *)self _showAccountAlertForAccount:v6];
    }

    else
    {
      [(CNFRegSettingsController *)self _showSignInController];
    }
  }
}

- (void)signoutAccount:(id)a3
{
  v5 = [(CNFRegSettingsController *)self accountToShowInCallerIDFooter];
  v4 = [(CNFRegListController *)self regController];
  [v4 signoutAccount:v5];
}

- (id)accountSpecifiers
{
  v3 = [(NSArray *)self->_accountGroupSpecifiers count]- 1;
  accountGroupSpecifiers = self->_accountGroupSpecifiers;

  return [(NSArray *)accountGroupSpecifiers subarrayWithRange:1, v3];
}

- (void)_reloadSpecifier:(id)a3 withBlock:(id)a4
{
  v7 = a3;
  v6 = a4;
  if (v7)
  {
    if (v6)
    {
      v6[2](v6, v7);
    }

    [(CNFRegSettingsController *)self reloadSpecifier:v7];
  }
}

- (id)_specifierIdentifierForAccount:(id)a3
{
  if (a3)
  {
    v3 = [a3 login];
    if (v3)
    {
      v4 = [@"account:" stringByAppendingString:v3];
    }

    else
    {
      v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", 0];
      v4 = [@"account:" stringByAppendingString:v5];
    }
  }

  else
  {
    v4 = @"empty-account";
  }

  return v4;
}

- (id)createSpecifierForAccount:(id)a3
{
  v4 = a3;
  v5 = _os_feature_enabled_impl();
  v6 = CommunicationsSetupUIBundle();
  v7 = CNFRegStringTableName();
  v8 = @"FACETIME_SETTINGS_ACCOUNT_LABEL";
  if (v5)
  {
    v8 = @"FACETIME_SETTINGS_ACCOUNT_LABEL_APPLEACCOUNT";
  }

  v9 = @"FACETIME_ACCOUNT_INFO_UNAVAILABLE_APPLEACCOUNT";
  if (!v5)
  {
    v9 = @"FACETIME_ACCOUNT_INFO_UNAVAILABLE";
  }

  if (v4)
  {
    v10 = v8;
  }

  else
  {
    v10 = v9;
  }

  v11 = [v6 localizedStringForKey:v10 value:&stru_2856D3978 table:v7];

  v12 = objc_opt_class();
  v13 = [(CNFRegSettingsController *)self _specifierIdentifierForAccount:v4];
  v14 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v11 target:self set:0 get:sel_getAccountNameForSpecifier_ detail:0 cell:2 edit:0];
  [v14 setButtonAction:sel_accountTappedWithSpecifier_];
  v15 = NSStringFromSelector(sel_accountTappedWithSpecifier_);
  [v14 setProperty:v15 forKey:*MEMORY[0x277D3FE10]];

  [v14 setProperty:v12 forKey:*MEMORY[0x277D3FE58]];
  [v14 setProperty:v11 forKey:*MEMORY[0x277D40170]];
  v16 = [MEMORY[0x277CCABB0] numberWithBool:1];
  [v14 setProperty:v16 forKey:*MEMORY[0x277D3FF38]];

  [v14 setProperty:v4 forKey:@"cnfreg-account"];
  [v14 setProperty:v13 forKey:*MEMORY[0x277D3FFB8]];

  return v14;
}

- (void)firstRunControllerDidFinish:(id)a3 finished:(BOOL)a4
{
  v4 = a4;
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_243BE5000, v7, OS_LOG_TYPE_DEFAULT, "First run controller finished", buf, 2u);
  }

  if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
  {
    IMLogString();
  }

  v8 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [(CNFRegSettingsController *)self navigationController];
    v10 = [v9 visibleViewController];
    *buf = 138412290;
    v22 = v10;
    _os_log_impl(&dword_243BE5000, v8, OS_LOG_TYPE_DEFAULT, "Visible controller: %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
  {
    v11 = [(CNFRegSettingsController *)self navigationController];
    v20 = [v11 visibleViewController];
    IMLogString();
  }

  v12 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [(CNFRegSettingsController *)self presentedViewController];
    *buf = 138412290;
    v22 = v13;
    _os_log_impl(&dword_243BE5000, v12, OS_LOG_TYPE_DEFAULT, "Presented view controller: %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
  {
    v20 = [(CNFRegSettingsController *)self presentedViewController];
    IMLogString();
  }

  v14 = [(CNFRegSettingsController *)self navigationController];
  v15 = [v14 visibleViewController];
  v16 = v15 == self;

  if (!v16)
  {
    v17 = [(CNFRegSettingsController *)self presentedViewController];
    [v17 dismiss];
  }

  [v6 setDelegate:0];
  if (v4)
  {
    v18 = [MEMORY[0x277CCABB0] numberWithBool:1];
    [(CNFRegSettingsController *)self setFaceTimeEnabled:v18 specifier:0];
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (BOOL)authenticationController:(id)a3 shouldContinueWithAuthenticationResults:(id)a4 error:(id)a5 forContext:(id)a6
{
  v43 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (!v12)
  {
    v17 = [v11 objectForKey:*MEMORY[0x277CEFFD8]];
    v18 = [v11 objectForKey:*MEMORY[0x277CEFFC8]];
    v19 = v18;
    v16 = 0;
    *&buf = 0;
    *(&buf + 1) = &buf;
    v41 = 0x2020000000;
    v42 = 0;
    if (v17)
    {
      v20 = v18 == 0;
    }

    else
    {
      v20 = 1;
    }

    if (v20)
    {
      goto LABEL_40;
    }

    v21 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *v38 = 0;
      _os_log_impl(&dword_243BE5000, v21, OS_LOG_TYPE_DEFAULT, "Obtained user/pass from AuthKit.", v38, 2u);
    }

    if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
    {
      IMLogString();
    }

    v22 = [(CNFRegListController *)self regController];
    v23 = [v22 serviceType];

    if (v23)
    {
      if (v23 == 1)
      {
        v24 = [MEMORY[0x277D18DE0] iMessageService];
LABEL_27:
        v25 = v24;
        if (v24)
        {
          v34 = dispatch_semaphore_create(0);
          v26 = OSLogHandleForIDSCategory();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
          {
            *v38 = 138412290;
            v39 = v25;
            _os_log_impl(&dword_243BE5000, v26, OS_LOG_TYPE_DEFAULT, "Registering for service: %@", v38, 0xCu);
          }

          if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
          {
            IMLogString();
          }

          v27 = [CNFAccountRegistrar alloc];
          v28 = [(CNFRegListController *)self regController];
          v29 = -[CNFAccountRegistrar initWithServiceType:presentationViewController:](v27, "initWithServiceType:presentationViewController:", [v28 serviceType], self);

          v35[0] = MEMORY[0x277D85DD0];
          v35[1] = 3221225472;
          v35[2] = __110__CNFRegSettingsController_authenticationController_shouldContinueWithAuthenticationResults_error_forContext___block_invoke;
          v35[3] = &unk_278DE8468;
          p_buf = &buf;
          v35[4] = self;
          v30 = v34;
          v36 = v30;
          [(CNFAccountRegistrar *)v29 registerAccountWithUsername:v17 password:v19 service:v25 completionBlock:v35];
          dispatch_semaphore_wait(v30, 0xFFFFFFFFFFFFFFFFLL);

LABEL_39:
          v16 = *(*(&buf + 1) + 24);
LABEL_40:
          _Block_object_dispose(&buf, 8);

          goto LABEL_41;
        }

LABEL_34:
        v31 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          *v38 = 0;
          _os_log_impl(&dword_243BE5000, v31, OS_LOG_TYPE_DEFAULT, "Couldn't determine a service from the regController.", v38, 2u);
        }

        if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
        {
          IMLogString();
        }

        goto LABEL_39;
      }

      if (v23 != 2)
      {
        goto LABEL_34;
      }
    }

    v24 = [MEMORY[0x277D18DE0] facetimeService];
    goto LABEL_27;
  }

  v14 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v12;
    _os_log_impl(&dword_243BE5000, v14, OS_LOG_TYPE_DEFAULT, "AuthKit had an error authenticating: %@", &buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
  {
    IMLogString();
  }

  v15 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&dword_243BE5000, v15, OS_LOG_TYPE_DEFAULT, "NOT registering.", &buf, 2u);
  }

  if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
  {
    IMLogString();
  }

  v16 = 0;
LABEL_41:

  v32 = *MEMORY[0x277D85DE8];
  return v16 & 1;
}

void __110__CNFRegSettingsController_authenticationController_shouldContinueWithAuthenticationResults_error_forContext___block_invoke(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a2)
  {
    v7 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_243BE5000, v7, OS_LOG_TYPE_DEFAULT, "Successfully registered.", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
    {
      IMLogString();
    }

    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  else if (v5)
  {
    v8 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_243BE5000, v8, OS_LOG_TYPE_DEFAULT, "Failed registration. Showing alert.", v9, 2u);
    }

    if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
    {
      IMLogString();
    }

    [*(a1 + 32) dismissModalViewControllerWithTransition:0];
    [*(a1 + 32) presentViewController:v6 animated:1 completion:0];
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

- (void)_showSignInController
{
  v3 = objc_alloc_init(MEMORY[0x277CF0380]);
  [v3 setPresentingViewController:self];
  v4 = _os_feature_enabled_impl();
  v5 = CommunicationsSetupUIBundle();
  v6 = CNFRegStringTableName();
  if (v4)
  {
    v7 = @"FACETIME_SIGNIN_SETTINGS_BLURB_APPLEACCOUNT";
  }

  else
  {
    v7 = @"FACETIME_SIGNIN_SETTINGS_BLURB";
  }

  v8 = [v5 localizedStringForKey:v7 value:&stru_2856D3978 table:v6];
  [v3 setReason:v8];

  [v3 setShouldForceInteractiveAuth:1];
  v9 = [(CNFRegListController *)self regController];
  v10 = [v9 serviceType];

  if (v10 == 1)
  {
    v11 = 4;
  }

  else
  {
    v11 = 5;
  }

  [v3 setServiceType:v11];
  v12 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  v13 = [v12 isKeyTransparencyEnabled];

  if (v13 && [(CNFRegSettingsController *)self _isEnrolledInContactKeyVerification])
  {
    [v3 setIsUsernameEditable:0];
  }

  v14 = [(CNFRegSettingsController *)self primaryAppleAccount];
  v15 = [v14 username];
  if ([v15 length])
  {
    [v3 setUsername:v15];
    [v3 setReason:v15];
    [v3 setShouldForceInteractiveAuth:0];
  }

  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__0;
  v22 = __Block_byref_object_dispose__0;
  v23 = objc_alloc_init(MEMORY[0x277CF0178]);
  [v19[5] setDelegate:self];
  v16 = v19[5];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __49__CNFRegSettingsController__showSignInController__block_invoke;
  v17[3] = &unk_278DE8490;
  v17[4] = &v18;
  [v16 authenticateWithContext:v3 completion:v17];
  _Block_object_dispose(&v18, 8);
}

void __49__CNFRegSettingsController__showSignInController__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a3;
  if (v5)
  {
    v6 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v9 = v5;
      _os_log_impl(&dword_243BE5000, v6, OS_LOG_TYPE_DEFAULT, "Error getting credentials using AuthKit: %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
    {
      IMLogString();
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (id)primaryAppleAccount
{
  v2 = objc_autoreleasePoolPush();
  v3 = objc_alloc_init(CUTWeakLinkClass());
  v4 = [v3 aa_primaryAppleAccount];

  objc_autoreleasePoolPop(v2);

  return v4;
}

- (void)_showViewAccountControllerForAccount:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v17 = v4;
    _os_log_impl(&dword_243BE5000, v5, OS_LOG_TYPE_DEFAULT, "_showViewAccountControllerForAccount: %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
  {
    IMLogString();
  }

  if (v4)
  {
    v6 = +[CNFRegAppearanceController globalAppearanceController];
    v7 = [CNFRegViewAccountController alloc];
    v8 = [(CNFRegListController *)self regController];
    v9 = [(CNFRegSecureAccountWebViewController *)v7 initWithRegController:v8 account:v4];

    [(CNFRegViewAccountController *)v9 setDelegate:self];
    v10 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v9];
    [v10 setModalPresentationStyle:{objc_msgSend(v6, "modalPresentationStyle")}];
    v11 = [v6 navigationBarStyle];
    v12 = [v10 navigationBar];
    [v12 setBarStyle:v11];

    v13 = [v6 navigationBarIsTranslucent];
    v14 = [v10 navigationBar];
    [v14 setTranslucent:v13];

    [(CNFRegSettingsController *)self _tearDownAllListeners];
    [(CNFRegSettingsController *)self presentViewController:v10 animated:1 completion:0];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_hideLocaleChooser
{
  v3 = [(CNFRegSettingsController *)self navigationController];
  v4 = [v3 visibleViewController];

  if (v4 != self)
  {
    v5 = [(CNFRegSettingsController *)self presentedViewController];
    [v5 dismiss];
  }
}

- (id)_localeChooserForAccount:(id)a3
{
  v18[1] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277D3FAC8];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  [v6 setParentController:self];
  v7 = [(CNFRegSettingsController *)self rootController];
  [v6 setRootController:v7];

  v8 = [CNFRegLocaleController alloc];
  v9 = [(CNFRegListController *)self regController];
  v10 = [(CNFRegFirstRunController *)v8 initWithRegController:v9 account:v5];

  v11 = [(CNFRegSettingsController *)self specifier];
  [(CNFRegFirstRunController *)v10 setSpecifier:v11];

  [(CNFRegFirstRunController *)v10 setDelegate:self];
  [(CNFRegLocaleController *)v10 setRootController:v6];
  [(CNFRegLocaleController *)v10 setParentController:v6];
  [(CNFRegFirstRunController *)v10 setCompletionControllerClass:0];
  v12 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:v6 action:sel_dismiss];
  [(CNFRegFirstRunController *)v10 setCustomLeftButton:v12];
  v13 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:3 target:0 action:0];
  [(CNFRegFirstRunController *)v10 setCustomRightButton:v13];
  v14 = [v6 view];
  [v14 setClipsToBounds:1];

  v18[0] = v10;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];
  [v6 setViewControllers:v15];

  v16 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)_showLocaleChooserWithAccount:(id)a3
{
  v5 = a3;
  if (![(CNFRegListController *)self _showWiFiAlertIfNecessary])
  {
    v4 = [(CNFRegSettingsController *)self _localeChooserForAccount:v5];
    if (v4)
    {
      [(CNFRegSettingsController *)self showController:v4 animate:1];
    }
  }

  MEMORY[0x2821F9730]();
}

- (void)viewAccountControllerDidFinish:(id)a3 withAppleId:(id)a4
{
  [a3 setDelegate:{0, a4}];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __71__CNFRegSettingsController_viewAccountControllerDidFinish_withAppleId___block_invoke;
  v5[3] = &unk_278DE7E08;
  v5[4] = self;
  [(CNFRegSettingsController *)self dismissViewControllerAnimated:1 completion:v5];
}

uint64_t __71__CNFRegSettingsController_viewAccountControllerDidFinish_withAppleId___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _setupAllListeners];
  v2 = *(a1 + 32);

  return [v2 _updateControllerStateAnimated:1];
}

- (void)clearAccountCache
{
  addresses = self->_addresses;
  self->_addresses = 0;
  MEMORY[0x2821F96F8]();
}

- (id)aliasSpecifiers
{
  v3 = [(NSArray *)self->_aliasGroupSpecifiers count]- 1;
  aliasGroupSpecifiers = self->_aliasGroupSpecifiers;

  return [(NSArray *)aliasGroupSpecifiers subarrayWithRange:1, v3];
}

- (BOOL)_shouldShowAliasInfo
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = [(CNFRegSettingsController *)self _appleIDAccounts];
  v4 = [v3 count];

  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = [(CNFRegListController *)self regController];
    v7 = [v6 phoneAccounts];

    v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v15;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v15 != v10)
          {
            objc_enumerationMutation(v7);
          }

          if ([*(*(&v14 + 1) + 8 * i) CNFRegSignInComplete])
          {
            v5 = 1;
            goto LABEL_13;
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    v7 = [(CNFRegListController *)self regController];
    v5 = [v7 serviceSupportsDeviceAliasEnablement];
LABEL_13:
  }

  v12 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)refreshAliasSpecifier:(id)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __50__CNFRegSettingsController_refreshAliasSpecifier___block_invoke;
  v3[3] = &unk_278DE84B8;
  v3[4] = self;
  [(CNFRegSettingsController *)self _reloadSpecifier:a3 withBlock:v3];
}

void __50__CNFRegSettingsController_refreshAliasSpecifier___block_invoke(uint64_t a1, void *a2)
{
  v40 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 CNFRegAlias];
  v5 = [*(a1 + 32) regController];
  v6 = [v5 isAliasMDMRestricted:v4];

  v7 = [v4 displayName];
  v8 = objc_opt_class();
  if (([v4 isPhoneNumberAliasOnPhoneNumberAccount] & 1) != 0 || objc_msgSend(v4, "isDeviceAlias"))
  {
    v9 = [v4 account];
    v10 = [v9 registrationStatus];
    v11 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v37 = v9;
      v38 = 2048;
      v39 = v10;
      _os_log_impl(&dword_243BE5000, v11, OS_LOG_TYPE_DEFAULT, "refreshAliasSpecifier phone number account: [%@], registrationStatus: [%ld]", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
    {
      v34 = v9;
      v35 = v10;
      IMLogString();
    }

    if (v10 == -1)
    {
      v13 = 1;
    }

    else
    {
      v12 = [*(a1 + 32) regController];
      if ([v12 serviceSupportsDeviceAliasEnablement])
      {
        v13 = 1;
      }

      else
      {
        v13 = [v4 isTemporaryPhoneNumberAlias];
      }
    }

    v18 = v10 != 5 && v9 != 0 && v10 >= 0;
    if (v9)
    {
      v19 = 0;
    }

    else
    {
      v19 = [v4 isSelectedDeviceAlias];
    }

    v15 = v6 ^ 1;
    v20 = [MEMORY[0x277CCABB0] numberWithBool:{(v18 | v19) & (v6 ^ 1) & 1, v34, v35}];
    [v3 setProperty:v20 forKey:@"cnfreg-alias-spinning"];
  }

  else
  {
    v13 = [*(a1 + 32) _canDeselectAlias:v4];
    v14 = [MEMORY[0x277CCABB0] numberWithBool:0];
    [v3 setProperty:v14 forKey:@"cnfreg-alias-spinning"];

    v15 = v6 ^ 1;
  }

  v21 = [v4 validationStatus];
  v22 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v37 = v21;
    _os_log_impl(&dword_243BE5000, v22, OS_LOG_TYPE_DEFAULT, "refreshAliasSpecifier account validationStatus is: [%ld]", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
  {
    v34 = v21;
    IMLogString();
  }

  if ((v6 & 1) != 0 || (v23 = 0, (v21 + 1) <= 3) && v21 != 1)
  {
    v23 = sel_statusForSpecifier_;
  }

  objc_storeWeak(&v3[*MEMORY[0x277D3FCB8]], *(a1 + 32));
  *&v3[*MEMORY[0x277D3FC90]] = 3;
  [v3 setProperty:v7 forKey:*MEMORY[0x277D40170]];
  [v3 setName:v7];
  [v3 setProperty:v8 forKey:*MEMORY[0x277D3FE58]];
  [v3 setButtonAction:sel_setAliasSelected_];
  v24 = NSStringFromSelector(sel_setAliasSelected_);
  [v3 setProperty:v24 forKey:*MEMORY[0x277D3FE10]];

  *&v3[*MEMORY[0x277D3FCA8]] = v23;
  v25 = NSStringFromSelector(v23);
  [v3 setProperty:v25 forKey:*MEMORY[0x277D3FF98]];

  v26 = [v4 identifier];
  [v3 setProperty:v26 forKey:*MEMORY[0x277D3FFB8]];

  v27 = [MEMORY[0x277CCABB0] numberWithBool:v13 & v15];
  [v3 setProperty:v27 forKey:*MEMORY[0x277D3FF38]];

  v28 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v4, "isTemporaryPhoneNumberAlias")}];
  [v3 setObject:v28 forKeyedSubscript:@"cnfreg-alias-temporary"];

  if (v6)
  {
    goto LABEL_43;
  }

  v29 = [v4 account];
  if (!v29)
  {
    goto LABEL_43;
  }

  v30 = [v4 account];
  v31 = [v30 CNFRegSignInComplete];

  if (!v31 || (v21 - 1) < 2)
  {
    goto LABEL_43;
  }

  if (v21 == 3)
  {
    v33 = [MEMORY[0x277CCABB0] numberWithBool:1];
    [v3 setProperty:v33 forKey:@"cnfreg-alias-checked"];

    goto LABEL_44;
  }

  if (v21 == -1)
  {
LABEL_43:
    [v3 removePropertyForKey:{@"cnfreg-alias-checked", v34}];
  }

LABEL_44:
  [*(a1 + 32) _setSpecifierEnabled:v3 enabled:v13 & v15 animated:{1, v34}];

  v32 = *MEMORY[0x277D85DE8];
}

- (void)refreshAllAliasSpecifiers
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = *(&self->super.super.super.super.super.super.isa + *MEMORY[0x277D3FC48]);
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
        v9 = [v8 CNFRegAlias];

        if (v9)
        {
          [(CNFRegSettingsController *)self refreshAliasSpecifier:v8];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)updateSpecifier:(id)a3 withAlias:(id)a4
{
  v8 = a3;
  v6 = a4;
  if (v6)
  {
    v7 = [v8 CNFRegAlias];

    if (v7 != v6)
    {
      [v8 setCNFRegAlias:v6];
      [v8 removePropertyForKey:@"cnfreg-alias-checked"];
    }

    [(CNFRegSettingsController *)self refreshAliasSpecifier:v8];
  }
}

- (void)refreshTemporaryPhoneAnimated:(BOOL)a3
{
  v39 = a3;
  v49 = *MEMORY[0x277D85DE8];
  v4 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_243BE5000, v4, OS_LOG_TYPE_DEFAULT, "Refreshing temporary phone settings", buf, 2u);
  }

  if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
  {
    IMLogString();
  }

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v5 = [(CNFRegListController *)self regController];
  v6 = [(CNFRegListController *)self regController];
  v7 = [v6 accounts];
  v8 = [v5 allAvailableAliasesForAccounts:v7];

  v9 = 0;
  v10 = [v8 countByEnumeratingWithState:&v40 objects:v48 count:16];
  if (v10)
  {
    v11 = *v41;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v41 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v40 + 1) + 8 * i);
        if ([v13 isTemporaryPhoneNumberAlias])
        {
          v14 = v13;

          v9 = v14;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v40 objects:v48 count:16];
    }

    while (v10);
  }

  v15 = [(NSArray *)self->_temporaryPhoneGroupSpecifiers firstObject];
  v16 = [(NSArray *)self->_temporaryPhoneDescriptionGroupSpecifiers firstObject];
  v17 = [(NSArray *)self->_temporaryPhoneRemoveGroupSpecifiers firstObject];
  v18 = v17;
  if (v15 && v16 && v17)
  {
    v47[0] = v17;
    v47[1] = v16;
    v47[2] = v15;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v47 count:3];
    [(CNFRegSettingsController *)self removeContiguousSpecifiers:v19 animated:v39];

    if (v9)
    {
      v20 = CommunicationsSetupUIBundle();
      v21 = CNFRegStringTableName();
      v38 = [v20 localizedStringForKey:@"FACETIME_SETTINGS_TEMPORARY_PHONE_LABEL" value:&stru_2856D3978 table:v21];

      v22 = *MEMORY[0x277D40170];
      [v15 setProperty:v38 forKey:*MEMORY[0x277D40170]];
      [v15 setName:v38];
      v23 = objc_opt_class();
      v36 = *MEMORY[0x277D3FE58];
      [v16 setProperty:v23 forKey:?];
      [v16 setProperty:v9 forKey:@"cnfreg-temp-alias"];
      v37 = [(CNFRegSettingsController *)self ftImServiceString];
      v24 = MEMORY[0x277CCACA8];
      v25 = CommunicationsSetupUIBundle();
      v26 = CNFRegStringTableName();
      v27 = [v25 localizedStringForKey:@"FACETIME_SETTINGS_TEMPORARY_PHONE_REMOVE" value:&stru_2856D3978 table:v26];
      v28 = [v24 stringWithFormat:v27, v37];

      [v18 setName:v28];
      [v18 setProperty:v28 forKey:v22];
      v29 = [MEMORY[0x277CCABB0] numberWithBool:1];
      [v18 setProperty:v29 forKey:*MEMORY[0x277D3FF38]];

      [v18 setProperty:objc_opt_class() forKey:v36];
      [v18 setButtonAction:sel_deleteTemporaryPhoneAliasSelected_];
      v30 = NSStringFromSelector(sel_deleteTemporaryPhoneAliasSelected_);
      [v18 setProperty:v30 forKey:*MEMORY[0x277D3FE10]];

      [v18 setProperty:v9 forKey:@"cnfreg-temp-alias"];
      v46[0] = v15;
      v46[1] = v16;
      v46[2] = v18;
      v31 = [MEMORY[0x277CBEA60] arrayWithObjects:v46 count:3];
      [(CNFRegSettingsController *)self insertContiguousSpecifiers:v31 atIndex:0 animated:v39];

      v32 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v45 = v9;
        _os_log_impl(&dword_243BE5000, v32, OS_LOG_TYPE_DEFAULT, "Inserted temporary phone specifiers for %@", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
      {
        IMLogString();
      }

      goto LABEL_35;
    }

    v34 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_243BE5000, v34, OS_LOG_TYPE_DEFAULT, "Removed temporary phone specifiers", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
    {
LABEL_34:
      IMLogString();
    }
  }

  else
  {
    v33 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_243BE5000, v33, OS_LOG_TYPE_DEFAULT, "No temporary phone specifiers in cache", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
    {
      goto LABEL_34;
    }
  }

LABEL_35:

  v35 = *MEMORY[0x277D85DE8];
}

- (BOOL)additionalAliasesAvailable
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [(CNFRegListController *)self regController];
  v4 = [(CNFRegSettingsController *)self _useableAccounts];
  v5 = [v3 vettedAliasesForAccounts:v4];

  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v5);
        }

        if ([*(*(&v11 + 1) + 8 * i) validationStatus] != 3)
        {
          LOBYTE(v6) = 1;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

- (id)aliasForSpecifier:(id)a3
{
  v3 = [a3 CNFRegAlias];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 displayName];
  }

  else
  {
    v6 = CommunicationsSetupUIBundle();
    v7 = CNFRegStringTableName();
    v5 = [v6 localizedStringForKey:@"FACETIME_ALIAS_INFO_UNAVAILABLE" value:&stru_2856D3978 table:v7];
  }

  return v5;
}

- (id)statusForSpecifier:(id)a3
{
  v4 = a3;
  v5 = [v4 CNFRegAlias];
  if (v5)
  {
    v6 = v5;
LABEL_4:
    v7 = [(CNFRegSettingsController *)self statusForAlias:v6];
    goto LABEL_5;
  }

  v6 = [v4 CNFRegCallerIdAlias];
  if (v6)
  {
    goto LABEL_4;
  }

  v7 = 0;
LABEL_5:

  return v7;
}

- (id)statusForAlias:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(CNFRegListController *)self regController];
  v6 = [v5 isAliasMDMRestricted:v4];

  if (v6)
  {
    v7 = CommunicationsSetupUIBundle();
    v8 = [v7 localizedStringForKey:@"FACETIME_IMESSAGE_STATUS_MDM_RESTRICTED" value:@"FACETIME_IMESSAGE_STATUS_MDM_RESTRICTED" table:@"Messages"];
  }

  else
  {
    v9 = [v4 validationStatus];
    if (v9 <= 2)
    {
      v10 = 2;
    }

    else
    {
      v10 = v9;
    }

    if ([v4 validationStatus] == 3)
    {
      v11 = [v4 account];
      if ([v11 CNFRegSignInFailed])
      {
        v10 = -1;
      }

      else if (![v11 CNFRegSignInComplete])
      {
        v10 = 2;
      }
    }

    [v4 type];
    v8 = CNFRegStringForAliasValidationStatus(v10);
    v12 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v16 = v4;
      v17 = 2048;
      v18 = v10;
      v19 = 2112;
      v20 = v8;
      _os_log_impl(&dword_243BE5000, v12, OS_LOG_TYPE_DEFAULT, "Verification status for {%@} : <%ld>%@", buf, 0x20u);
    }

    if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
    {
      IMLogString();
    }
  }

  v13 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)aliasWithIdentifier:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [(CNFRegListController *)self regController];
  v6 = [v5 aliases];

  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = *v16;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [v10 identifier];
        v12 = [v11 isEqualToString:v4];

        if (v12)
        {
          v7 = v10;
          goto LABEL_11;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v13 = *MEMORY[0x277D85DE8];

  return v7;
}

- (BOOL)_canDeselectAlias:(id)a3
{
  v4 = a3;
  v5 = [(CNFRegListController *)self regController];
  v6 = [v5 isAliasMDMRestricted:v4];

  if ((v6 & 1) != 0 || [v4 isPhoneNumberAliasOnPhoneNumberAccount] && (-[CNFRegListController regController](self, "regController"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "serviceSupportsDeviceAliasEnablement"), v8, !v9))
  {
    v7 = 0;
  }

  else if ([v4 validationStatus] == 3)
  {
    v10 = [(CNFRegListController *)self regController];
    v11 = MEMORY[0x277CBEA60];
    v12 = [v4 account];
    v13 = [v11 arrayWithObject:v12];
    v14 = [v10 aliasesForAccounts:v13];

    if ([v14 count] <= 1)
    {
      v7 = CNFRegSupportsLocalPhoneNumberSentinelAlias();
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (id)createSpecifierForAlias:(id)a3
{
  v4 = MEMORY[0x277D3FAD8];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  [(CNFRegSettingsController *)self updateSpecifier:v6 withAlias:v5];

  return v6;
}

- (void)deleteTravelPhoneAliasSelected:(id)a3
{
  v4 = a3;
  v6 = [v4 propertyForKey:@"cnfreg-travel-sim"];
  v5 = [v4 propertyForKey:@"cnfreg-sim-identifier"];

  [(CNFRegSettingsController *)self _showRemoveTravelPhoneAlertForAlias:v6 simIdentifier:v5];
}

- (void)deleteTemporaryPhoneAliasSelected:(id)a3
{
  v4 = [a3 propertyForKey:@"cnfreg-temp-alias"];
  [(CNFRegSettingsController *)self _showRemoveTemporaryPhoneAlertForAlias:v4];
}

- (void)goToCellularSettings:(id)a3
{
  v4 = [(CNFRegListController *)self regController];
  v3 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:@"settings-navigation://com.apple.Settings.Cellular"];
  [v4 openURL:v3];
}

- (void)setAliasSelected:(id)a3
{
  v26 = a3;
  v4 = [v26 CNFRegAlias];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 validationStatus];
    if ([v5 isPhoneNumberAliasOnPhoneNumberAccount])
    {
      v7 = [v5 account];
      v8 = [v7 registrationStatus];

      if (v8 == -1)
      {
        v23 = [MEMORY[0x277D18D28] sharedInstance];
        v24 = [v5 account];
        [v23 activateAccount:v24];

        v25 = [v5 account];
        [v25 registerAccount];

LABEL_19:
        [(CNFRegSettingsController *)self refreshAliasSpecifier:v26];
        goto LABEL_23;
      }
    }

    if (([v5 isDeviceAlias] & 1) != 0 || objc_msgSend(v5, "isPhoneNumberAliasOnPhoneNumberAccount"))
    {
      v9 = [(CNFRegListController *)self regController];
      if ([v9 serviceSupportsDeviceAliasEnablement])
      {

        goto LABEL_9;
      }

      v10 = [v5 isTemporaryPhoneNumberAlias];

      if (v10)
      {
LABEL_9:
        v11 = [v26 propertyForKey:@"cnfreg-alias-checked"];
        v12 = [v11 BOOLValue];

        v13 = [v26 propertyForKey:@"cnfreg-alias-spinning"];
        v14 = [v13 BOOLValue];

        if ((v12 & 1) != 0 || v14)
        {
          [(CNFRegSettingsController *)self _showRemoveAlertForAlias:v5 specifier:v26];
          goto LABEL_23;
        }

        v15 = [(CNFRegListController *)self regController];
        [v15 addDeviceAlias:v5];

        v16 = [MEMORY[0x277CCABB0] numberWithBool:1];
        [v26 setProperty:v16 forKey:@"cnfreg-alias-spinning"];

        goto LABEL_19;
      }
    }

    if (v6 != -1 && v6 != 2)
    {
      v17 = [v26 propertyForKey:@"cnfreg-alias-checked"];
      v18 = [v17 BOOLValue];

      v19 = [v5 account];
      if (v18)
      {
        if (![(CNFRegSettingsController *)self _canDeselectAlias:v5])
        {
LABEL_22:
          [(CNFRegSettingsController *)self refreshAliasSpecifier:v26];

          goto LABEL_23;
        }

        v20 = [MEMORY[0x277CCABB0] numberWithBool:0];
        [v26 setProperty:v20 forKey:@"cnfreg-alias-checked"];

        [(CNFRegSettingsController *)self refreshAliasSpecifier:v26];
        v21 = [(CNFRegListController *)self regController];
        v22 = [v5 alias];
        [v21 removeAlias:v22 fromAccount:v19];
      }

      else
      {
        v21 = [(CNFRegListController *)self regController];
        v22 = [v5 alias];
        [v21 addAlias:v22 toAccount:v19];
      }

      goto LABEL_22;
    }
  }

LABEL_23:
}

- (BOOL)oppositeServiceTypeEnabled
{
  v2 = [(CNFRegListController *)self regController];
  v3 = [v2 serviceType] != 1;

  v4 = [CNFRegController controllerForServiceType:v3];
  v5 = [v4 accountsWithFilter:1];
  v6 = [v5 count] != 0;

  return v6;
}

- (id)ftImServiceString
{
  if ([(CNFRegSettingsController *)self oppositeServiceTypeEnabled])
  {
    v3 = MEMORY[0x277CCACA8];
    v4 = CommunicationsSetupUIBundle();
    v5 = CNFRegStringTableName();
    v6 = [v4 localizedStringForKey:@"JOINT_SERVICE_NAME" value:&stru_2856D3978 table:v5];
    v7 = CommunicationsSetupUIBundle();
    v8 = CNFRegStringTableName();
    v9 = [v7 localizedStringForKey:@"IM_SERVICE_NAME" value:&stru_2856D3978 table:v8];
    v10 = CommunicationsSetupUIBundle();
    v11 = CNFRegStringTableName();
    v12 = [v10 localizedStringForKey:@"FT_SERVICE_NAME" value:&stru_2856D3978 table:v11];
    v13 = [v3 stringWithFormat:v6, v9, v12];
  }

  else
  {
    v14 = [(CNFRegListController *)self regController];
    v15 = [v14 serviceType];

    v4 = CommunicationsSetupUIBundle();
    v5 = CNFRegStringTableName();
    if (v15 == 1)
    {
      v16 = @"IM_SERVICE_NAME";
    }

    else
    {
      v16 = @"FT_SERVICE_NAME";
    }

    v13 = [v4 localizedStringForKey:v16 value:&stru_2856D3978 table:v5];
  }

  return v13;
}

- (void)_showRemoveAlertForAlias:(id)a3 specifier:(id)a4
{
  v49 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v46 = v6;
    v47 = 2112;
    v48 = v7;
    _os_log_impl(&dword_243BE5000, v8, OS_LOG_TYPE_DEFAULT, "Showing alias remove alert {alias: %@, specifier: %@}", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
  {
    v32 = v6;
    v33 = v7;
    IMLogString();
  }

  v38 = [(CNFRegSettingsController *)self ftImServiceString:v32];
  v9 = [(CNFRegSettingsController *)self _isTravelAlias:v6];
  v10 = [v6 isTemporaryPhoneNumberAlias];
  v11 = CommunicationsSetupUIBundle();
  v12 = CNFRegStringTableName();
  if (v10)
  {
    v13 = @"FACETIME_DISABLE_ALERT_TITLE_TEMP";
  }

  else
  {
    v13 = @"FACETIME_REMOVE_ALERT_TITLE";
  }

  v37 = [v11 localizedStringForKey:v13 value:&stru_2856D3978 table:v12];

  v35 = [MEMORY[0x277CCACA8] stringWithFormat:v37, v38];
  v14 = CommunicationsSetupUIBundle();
  v15 = CNFRegStringTableName();
  v16 = @"FACETIME_REMOVE_ALERT_MESSAGE";
  if (v10)
  {
    v16 = @"FACETIME_DISABLE_ALERT_MESSAGE_TEMP";
  }

  if (v9)
  {
    v17 = @"FACETIME_REMOVE_ALERT_MESSAGE_TRAVEL";
  }

  else
  {
    v17 = v16;
  }

  v36 = [v14 localizedStringForKey:v17 value:&stru_2856D3978 table:v15];

  v34 = [MEMORY[0x277CCACA8] stringWithFormat:v36, v38];
  if (v10)
  {
    v18 = @"FACETIME_ALERT_OK";
  }

  else
  {
    v18 = @"FACETIME_REMOVE_ALERT_REMOVE_BUTTON";
  }

  v19 = CommunicationsSetupUIBundle();
  v20 = CNFRegStringTableName();
  v21 = [v19 localizedStringForKey:v18 value:&stru_2856D3978 table:v20];

  v22 = CommunicationsSetupUIBundle();
  v23 = CNFRegStringTableName();
  v24 = [v22 localizedStringForKey:@"FACETIME_REMOVE_ALERT_CANCEL_BUTTON" value:&stru_2856D3978 table:v23];

  objc_initWeak(buf, v7);
  v25 = [MEMORY[0x277D75110] alertControllerWithTitle:v35 message:v34 preferredStyle:1];
  v26 = MEMORY[0x277D750F8];
  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = __63__CNFRegSettingsController__showRemoveAlertForAlias_specifier___block_invoke;
  v39[3] = &unk_278DE84E0;
  objc_copyWeak(&v43, buf);
  v27 = v6;
  v44 = v10;
  v40 = v27;
  v41 = self;
  v28 = v7;
  v42 = v28;
  v29 = [v26 actionWithTitle:v21 style:0 handler:v39];
  [v25 addAction:v29];

  if ((v10 & 1) == 0)
  {
    v30 = [MEMORY[0x277D750F8] actionWithTitle:v24 style:1 handler:0];
    [v25 addAction:v30];
  }

  [(CNFRegSettingsController *)self presentViewController:v25 animated:1 completion:0];

  objc_destroyWeak(&v43);
  objc_destroyWeak(buf);

  v31 = *MEMORY[0x277D85DE8];
}

void __63__CNFRegSettingsController__showRemoveAlertForAlias_specifier___block_invoke(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v5 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    *buf = 138412290;
    v25 = v6;
    _os_log_impl(&dword_243BE5000, v5, OS_LOG_TYPE_DEFAULT, "Selected remove! Removing %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
  {
    v23 = *(a1 + 32);
    IMLogString();
  }

  if (!WeakRetained)
  {
    goto LABEL_10;
  }

  v7 = [WeakRetained CNFRegAlias];
  v8 = [v7 alias];
  v9 = [*(a1 + 32) alias];
  v10 = [v8 isEqualToString:v9];

  if (v10)
  {
    v11 = *(a1 + 64);
    v12 = [*(a1 + 40) regController];
    v13 = v12;
    v14 = *(a1 + 32);
    if (v11)
    {
      [v12 disableDeviceAlias:v14];
    }

    else
    {
      [v12 removeDeviceAlias:v14];
    }

    v16 = [CNFRegAlias alloc];
    v17 = [*(a1 + 32) alias];
    v18 = [*(a1 + 32) deviceAliasIdentifier];
    v19 = [(CNFRegAlias *)v16 initWithAlias:v17 type:2 selected:0 deviceAliasIdentifier:v18];
    [*(a1 + 48) setCNFRegAlias:v19];

    v20 = *(a1 + 48);
    v21 = [MEMORY[0x277CCABB0] numberWithBool:0];
    [v20 setProperty:v21 forKey:@"cnfreg-alias-checked"];

    [*(a1 + 40) refreshAliasSpecifier:*(a1 + 48)];
  }

  else
  {
LABEL_10:
    v15 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_243BE5000, v15, OS_LOG_TYPE_DEFAULT, "This specifier is no longer applicable -- ignoring", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
    {
      IMLogString();
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)_showRemoveTravelPhoneAlertForAlias:(id)a3 simIdentifier:(id)a4
{
  v41 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v38 = v5;
    v39 = 2112;
    v40 = v6;
    _os_log_impl(&dword_243BE5000, v7, OS_LOG_TYPE_DEFAULT, "Showing alias remove travel phone alert {alias: %@ simIdentifier: %@}", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
  {
    v27 = v5;
    v28 = v6;
    IMLogString();
  }

  v31 = [(CNFRegSettingsController *)self ftImServiceString:v27];
  v8 = CommunicationsSetupUIBundle();
  v9 = CNFRegStringTableName();
  v30 = [v8 localizedStringForKey:@"FACETIME_REMOVE_ALERT_TITLE" value:&stru_2856D3978 table:v9];

  v29 = [MEMORY[0x277CCACA8] localizedStringWithFormat:v30, v31];
  v10 = CommunicationsSetupUIBundle();
  v11 = CNFRegStringTableName();
  v12 = [v10 localizedStringForKey:@"FACETIME_REMOVE_ALERT_MESSAGE_TRAVEL" value:&stru_2856D3978 table:v11];

  v13 = [MEMORY[0x277CCACA8] localizedStringWithFormat:v12, v31];
  v14 = CommunicationsSetupUIBundle();
  v15 = CNFRegStringTableName();
  v16 = [v14 localizedStringForKey:@"FACETIME_REMOVE_ALERT_REMOVE_BUTTON" value:&stru_2856D3978 table:v15];

  v17 = CommunicationsSetupUIBundle();
  v18 = CNFRegStringTableName();
  v19 = [v17 localizedStringForKey:@"FACETIME_REMOVE_ALERT_CANCEL_BUTTON" value:&stru_2856D3978 table:v18];

  v20 = [MEMORY[0x277D75110] alertControllerWithTitle:v29 message:v13 preferredStyle:1];
  v21 = MEMORY[0x277D750F8];
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __78__CNFRegSettingsController__showRemoveTravelPhoneAlertForAlias_simIdentifier___block_invoke;
  v33[3] = &unk_278DE8508;
  v34 = v5;
  v35 = self;
  v36 = v6;
  v22 = v6;
  v23 = v5;
  v24 = [v21 actionWithTitle:v16 style:0 handler:v33];
  [v20 addAction:v24];

  v25 = [MEMORY[0x277D750F8] actionWithTitle:v19 style:1 handler:0];
  [v20 addAction:v25];

  [(CNFRegSettingsController *)self presentViewController:v20 animated:1 completion:0];
  v26 = *MEMORY[0x277D85DE8];
}

void __78__CNFRegSettingsController__showRemoveTravelPhoneAlertForAlias_simIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v21 = a2;
  v3 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    *buf = 138412290;
    v26 = v4;
    _os_log_impl(&dword_243BE5000, v3, OS_LOG_TYPE_DEFAULT, "Selected remove! Removing %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
  {
    v20 = *(a1 + 32);
    IMLogString();
  }

  v5 = [*(a1 + 40) specifiers];
  v6 = [v5 mutableCopy];

  v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"FACETIME_TRAVEL_PHONE_%@_GROUP_ID", *(a1 + 48)];
  v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"FACETIME_TRAVEL_PHONE_%@_ID", *(a1 + 48)];
  v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"FACETIME_TRAVEL_PHONE_%@_REMOVE", *(a1 + 48)];
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"FACETIME_TRAVEL_PHONE_%@_CELLULAR_SETTINGS", *(a1 + 48)];
  v8 = [*(a1 + 40) specifiers];
  v9 = [v8 specifierForID:v24];

  v10 = [*(a1 + 40) specifiers];
  v11 = [v10 specifierForID:v23];

  v12 = [*(a1 + 40) specifiers];
  v13 = [v12 specifierForID:v22];

  v14 = [*(a1 + 40) specifiers];
  v15 = [v14 specifierForID:v7];

  if (v9)
  {
    [v6 removeObject:v9];
  }

  if (v11)
  {
    [v6 removeObject:v11];
  }

  if (v13)
  {
    [v6 removeObject:v13];
  }

  if (v15)
  {
    [v6 removeObject:v15];
  }

  v16 = *(a1 + 40);
  v17 = [v16 specifiers];
  [v16 updateSpecifiers:v17 withSpecifiers:v6];

  v18 = [*(a1 + 40) regController];
  [v18 removeDeviceAlias:*(a1 + 32)];

  v19 = *MEMORY[0x277D85DE8];
}

- (void)_showRemoveTemporaryPhoneAlertForAlias:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v32 = v3;
    _os_log_impl(&dword_243BE5000, v4, OS_LOG_TYPE_DEFAULT, "Showing alias remove temporary phone alert {alias: %@}", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
  {
    v24 = v3;
    IMLogString();
  }

  v5 = [(CNFRegSettingsController *)self ftImServiceString];
  v6 = CommunicationsSetupUIBundle();
  v7 = CNFRegStringTableName();
  v26 = [v6 localizedStringForKey:@"FACETIME_REMOVE_ALERT_TITLE" value:&stru_2856D3978 table:v7];

  v25 = [MEMORY[0x277CCACA8] stringWithFormat:v26, v5];
  v8 = CommunicationsSetupUIBundle();
  v9 = CNFRegStringTableName();
  v10 = [v8 localizedStringForKey:@"FACETIME_REMOVE_ALERT_MESSAGE_TEMP" value:&stru_2856D3978 table:v9];

  v11 = [MEMORY[0x277CCACA8] stringWithFormat:v10, v5];
  v12 = CommunicationsSetupUIBundle();
  v13 = CNFRegStringTableName();
  v14 = [v12 localizedStringForKey:@"FACETIME_REMOVE_ALERT_REMOVE_BUTTON" value:&stru_2856D3978 table:v13];

  v15 = CommunicationsSetupUIBundle();
  v16 = CNFRegStringTableName();
  v17 = [v15 localizedStringForKey:@"FACETIME_REMOVE_ALERT_CANCEL_BUTTON" value:&stru_2856D3978 table:v16];

  v18 = [MEMORY[0x277D75110] alertControllerWithTitle:v25 message:v11 preferredStyle:1];
  v19 = MEMORY[0x277D750F8];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __67__CNFRegSettingsController__showRemoveTemporaryPhoneAlertForAlias___block_invoke;
  v28[3] = &unk_278DE8420;
  v29 = v3;
  v30 = self;
  v20 = v3;
  v21 = [v19 actionWithTitle:v14 style:0 handler:v28];
  [v18 addAction:v21];

  v22 = [MEMORY[0x277D750F8] actionWithTitle:v17 style:1 handler:0];
  [v18 addAction:v22];

  [(CNFRegSettingsController *)self presentViewController:v18 animated:1 completion:0];
  v23 = *MEMORY[0x277D85DE8];
}

void __67__CNFRegSettingsController__showRemoveTemporaryPhoneAlertForAlias___block_invoke(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v24 = a2;
  v3 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    *buf = 138412290;
    v27 = v4;
    _os_log_impl(&dword_243BE5000, v3, OS_LOG_TYPE_DEFAULT, "Selected remove! Removing %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
  {
    v23 = *(a1 + 32);
    IMLogString();
  }

  v5 = [*(a1 + 40) specifiers];
  v6 = [v5 mutableCopy];

  v7 = [*(a1 + 40) specifiers];
  v25 = [v7 specifierForID:@"FACETIME_TEMPORARY_PHONE_GROUP_ID"];

  v8 = [*(a1 + 40) specifiers];
  v9 = [v8 specifierForID:@"FACETIME_TEMPORARY_PHONE_ID"];

  v10 = [*(a1 + 40) specifiers];
  v11 = [v10 specifierForID:@"FACETIME_TEMPORARY_PHONE_REMOVE"];

  if (v25)
  {
    [v6 removeObject:v25];
  }

  if (v9)
  {
    [v6 removeObject:v9];
  }

  if (v11)
  {
    [v6 removeObject:v11];
  }

  v12 = [*(a1 + 40) _useableAccounts];
  v13 = [*(a1 + 40) regController];
  v14 = [v13 allAvailableAliasesForAccounts:v12];

  if ([v14 count])
  {
    v15 = 0;
    do
    {
      v16 = [v14 objectAtIndex:v15];
      if ([v16 isEqual:*(a1 + 32)])
      {
        v17 = [*(a1 + 40) aliasSpecifiers];
        v18 = [v17 objectAtIndex:v15];

        [v6 removeObject:v18];
      }

      ++v15;
    }

    while (v15 < [v14 count]);
  }

  v19 = *(a1 + 40);
  v20 = [v19 specifiers];
  [v19 updateSpecifiers:v20 withSpecifiers:v6];

  v21 = [*(a1 + 40) regController];
  [v21 removeDeviceAlias:*(a1 + 32)];

  v22 = *MEMORY[0x277D85DE8];
}

- (void)_showAliasValidationError:(id)a3
{
  v36 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v35 = v4;
    _os_log_impl(&dword_243BE5000, v5, OS_LOG_TYPE_DEFAULT, "Showing alias validation error: %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
  {
    v30 = v4;
    IMLogString();
  }

  v6 = [v4 userInfo];
  v7 = [v6 objectForKey:@"cnf-customTitle"];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v10 = CommunicationsSetupUIBundle();
    v11 = CNFRegStringTableName();
    v9 = [v10 localizedStringForKey:@"FACETIME_ACTIVATION_ERROR_TITLE" value:&stru_2856D3978 table:v11];
  }

  v12 = [v4 localizedDescription];
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v15 = CommunicationsSetupUIBundle();
    v16 = CNFRegStringTableName();
    v14 = [v15 localizedStringForKey:@"FACETIME_SIGNIN_ERROR_GENERIC" value:&stru_2856D3978 table:v16];
  }

  v17 = [v4 userInfo];
  v18 = [v17 objectForKey:@"cnf-customButton"];
  v19 = v18;
  if (v18)
  {
    v20 = v18;
  }

  else
  {
    v21 = CommunicationsSetupUIBundle();
    v22 = CNFRegStringTableName();
    v20 = [v21 localizedStringForKey:@"FACETIME_ALERT_OK" value:&stru_2856D3978 table:v22];
  }

  v23 = [MEMORY[0x277D75110] alertControllerWithTitle:v9 message:v14 preferredStyle:1];
  v24 = [MEMORY[0x277D750F8] actionWithTitle:v20 style:0 handler:0];
  [v23 addAction:v24];

  v25 = [v4 userInfo];
  v26 = [v25 objectForKey:@"cnf-customActionTitle"];

  if (v26)
  {
    v27 = MEMORY[0x277D750F8];
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __54__CNFRegSettingsController__showAliasValidationError___block_invoke;
    v31[3] = &unk_278DE8420;
    v32 = v4;
    v33 = self;
    v28 = [v27 actionWithTitle:v26 style:0 handler:v31];
    [v23 addAction:v28];
  }

  [(CNFRegSettingsController *)self presentViewController:v23 animated:1 completion:0];

  v29 = *MEMORY[0x277D85DE8];
}

void __54__CNFRegSettingsController__showAliasValidationError___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) userInfo];
  v5 = [v4 objectForKey:@"cnf-customActionURLString"];

  if (v5)
  {
    v6 = [MEMORY[0x277CBEBC0] URLWithString:v5];
    if (v6)
    {
      v7 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v12 = v6;
        _os_log_impl(&dword_243BE5000, v7, OS_LOG_TYPE_DEFAULT, "Launching URL : %@", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
      {
        v10 = v6;
        IMLogString();
      }

      v8 = [*(a1 + 40) regController];
      [v8 openURL:v6];
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)refreshMDMRestrictionStatusWithCompletion:(BOOL)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v6 = [(CNFRegListController *)self regController];
  if (v4)
  {
    v7 = v8;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __70__CNFRegSettingsController_refreshMDMRestrictionStatusWithCompletion___block_invoke;
    v8[3] = &unk_278DE8530;
    v3 = &v9;
    objc_copyWeak(&v9, &location);
  }

  else
  {
    v7 = 0;
  }

  [v6 updateMDMRestrictedSubscriptions:v7];

  if (v4)
  {
    objc_destroyWeak(v3);
  }

  objc_destroyWeak(&location);
}

void __70__CNFRegSettingsController_refreshMDMRestrictionStatusWithCompletion___block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__CNFRegSettingsController_refreshMDMRestrictionStatusWithCompletion___block_invoke_2;
  block[3] = &unk_278DE8530;
  objc_copyWeak(&v2, (a1 + 32));
  dispatch_async(MEMORY[0x277D85CD0], block);
  objc_destroyWeak(&v2);
}

void __70__CNFRegSettingsController_refreshMDMRestrictionStatusWithCompletion___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained refreshFaceTimeSettingsAnimated:0];
}

- (BOOL)shouldShowFaceTimeCaptionsSpecifiers
{
  v3 = [(CNFRegListController *)self regController];
  v4 = [v3 serviceType];

  v5 = [(CNFRegListController *)self regController];
  v6 = [v5 isServiceEnabled];

  v7 = [(CNFRegSettingsController *)self captioningSupported];
  if (v4)
  {
    v8 = 0;
  }

  else
  {
    v8 = v6;
  }

  return v8 & v7;
}

- (id)getFaceTimeCaptionsEnabledForSpecifier:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:_AXSFaceTimeCaptionsEnabled()];
  v5 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v9 = [v4 BOOLValue];
    _os_log_impl(&dword_243BE5000, v5, OS_LOG_TYPE_DEFAULT, "faceTimeCaptionsEnabled: %d", buf, 8u);
  }

  if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
  {
    [v4 BOOLValue];
    IMLogString();
  }

  v6 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)setFaceTimeCaptionsEnabled:(id)a3 specifier:(id)a4
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v11 = [v5 BOOLValue];
    _os_log_impl(&dword_243BE5000, v7, OS_LOG_TYPE_DEFAULT, "faceTimeCaptionsEnabled: %d", buf, 8u);
  }

  if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
  {
    v9 = [v5 BOOLValue];
    IMLogString();
  }

  [v5 BOOLValue];
  _AXSSetFaceTimeCaptionsEnabled();

  v8 = *MEMORY[0x277D85DE8];
}

- (BOOL)captioningSupported
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CE56F8] isCaptioningSupported];
  if (_os_feature_enabled_impl())
  {
    LODWORD(v3) = FTLiveCaptionsActivatable();
  }

  else
  {
    v4 = [MEMORY[0x277CBEB98] setWithArray:&unk_2856EB910];
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = [MEMORY[0x277D75BF0] activeInputModes];
    v3 = [v5 countByEnumeratingWithState:&v13 objects:v23 count:16];
    if (v3)
    {
      v6 = *v14;
      while (2)
      {
        for (i = 0; i != v3; ++i)
        {
          if (*v14 != v6)
          {
            objc_enumerationMutation(v5);
          }

          v8 = [*(*(&v13 + 1) + 8 * i) primaryLanguage];
          v9 = [v4 containsObject:v8];

          if (v9)
          {
            LODWORD(v3) = 1;
            goto LABEL_13;
          }
        }

        v3 = [v5 countByEnumeratingWithState:&v13 objects:v23 count:16];
        if (v3)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
  }

  v10 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109632;
    v18 = v2 & v3;
    v19 = 1024;
    v20 = v2;
    v21 = 1024;
    v22 = v3;
    _os_log_impl(&dword_243BE5000, v10, OS_LOG_TYPE_DEFAULT, "captioningSupported: %d, hardwareSupported: %d, localeSupported: %d", buf, 0x14u);
  }

  if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
  {
    IMLogString();
  }

  v11 = *MEMORY[0x277D85DE8];
  return v2 & v3;
}

- (BOOL)shouldShowFaceTimePhotosSpecifiers
{
  v3 = [(CNFRegListController *)self regController];
  v4 = [v3 serviceType];

  v5 = [(CNFRegListController *)self regController];
  v6 = [v5 isServiceEnabled];

  v7 = [MEMORY[0x277D6EF08] isFaceTimePhotosRestricted];
  if (v4)
  {
    return 0;
  }

  else
  {
    return v6 & (v7 ^ 1);
  }
}

- (id)getFaceTimePhotosEnabledForSpecifier:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(MEMORY[0x277D6EF08], "isFaceTimePhotosEnabled")}];
  v5 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v9 = [v4 BOOLValue];
    _os_log_impl(&dword_243BE5000, v5, OS_LOG_TYPE_DEFAULT, "faceTimePhotosEnabled: %d", buf, 8u);
  }

  if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
  {
    [v4 BOOLValue];
    IMLogString();
  }

  v6 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)setFaceTimePhotosEnabled:(id)a3 specifier:(id)a4
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v12 = [v5 BOOLValue];
    _os_log_impl(&dword_243BE5000, v7, OS_LOG_TYPE_DEFAULT, "faceTimePhotosEnabled: %d", buf, 8u);
  }

  if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
  {
    v10 = [v5 BOOLValue];
    IMLogString();
  }

  v8 = [v5 BOOLValue];
  [MEMORY[0x277D6EF08] setFaceTimePhotosEnabled:v8];

  v9 = *MEMORY[0x277D85DE8];
}

- (BOOL)shouldShowAlwaysFullBleedSpecifiers
{
  v3 = [(CNFRegListController *)self regController];
  v4 = [v3 serviceType];

  if (v4)
  {
    return 0;
  }

  return [(CNFRegSettingsController *)self deviceHWSupportsAlwaysFullBleed];
}

- (BOOL)deviceHWSupportsAlwaysFullBleed
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D07DB0] sharedInstance];
  v3 = [v2 deviceType];

  v4 = *MEMORY[0x277CE59F8];
  BoolAnswer = AVGestaltGetBoolAnswer();
  v6 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109632;
    v10 = (v3 == 2) & BoolAnswer;
    v11 = 1024;
    v12 = v3 == 2;
    v13 = 1024;
    v14 = BoolAnswer & 1;
    _os_log_impl(&dword_243BE5000, v6, OS_LOG_TYPE_DEFAULT, "FaceTime AlwaysFullBleed availability is %d since deviceIsiPhone = %d and deviceSupportsDynamicAspectRatio = %d", buf, 0x14u);
  }

  if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
  {
    IMLogString();
  }

  v7 = *MEMORY[0x277D85DE8];
  return (v3 == 2) & BoolAnswer;
}

- (id)getAlwaysFullBleedEnabledForSpecifier:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = CNFGetDomainBooleanValueForKeyDefaultValue(@"com.apple.VideoConference", @"userPreferTxAFBDisabled", 0);
  v5 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    v12 = v4 ^ 1;
    v13 = 1024;
    v14 = v4;
    _os_log_impl(&dword_243BE5000, v5, OS_LOG_TYPE_DEFAULT, "FaceTime AlwaysFullBleed enabled is %d since kAFBDisabledDefaultsKey is %d", buf, 0xEu);
  }

  if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
  {
    v9 = v4 ^ 1;
    v10 = v4;
    IMLogString();
  }

  v6 = [MEMORY[0x277CCABB0] numberWithBool:{v4 ^ 1, v9, v10}];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)setAlwaysFullBleedEnabled:(id)a3 specifier:(id)a4
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v13 = [v5 BOOLValue];
    _os_log_impl(&dword_243BE5000, v7, OS_LOG_TYPE_DEFAULT, "FaceTime AlwaysFullBleed enabled changing to: %d", buf, 8u);
  }

  if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
  {
    v11 = [v5 BOOLValue];
    IMLogString();
  }

  CNFSetDomainIntegerForKey(@"com.apple.VideoConference", @"userPreferTxAFBDisabled", [v5 integerValue] == 0);
  v8 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = CNFGetDomainBooleanValueForKeyDefaultValue(@"com.apple.VideoConference", @"userPreferTxAFBDisabled", 1u);
    *buf = 67109120;
    v13 = v9;
    _os_log_impl(&dword_243BE5000, v8, OS_LOG_TYPE_DEFAULT, "FaceTime AlwaysFullBleed enabled changing DONE, kAFBDisabledDefaultsKey now set to: %d", buf, 8u);
  }

  if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
  {
    CNFGetDomainBooleanValueForKeyDefaultValue(@"com.apple.VideoConference", @"userPreferTxAFBDisabled", 1u);
    IMLogString();
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (BOOL)shouldShowFaceTimeVPCSpecifiers
{
  v2 = [(CNFRegListController *)self regController];
  v3 = [v2 serviceType];

  if (v3)
  {
    LOBYTE(v4) = 0;
  }

  else
  {
    v5 = [MEMORY[0x277D07DF0] sharedInstance];
    v6 = [v5 objectForKey:@"vc-viewpoint-correction-enabled"];
    if (v6)
    {
      v7 = v6;
    }

    else
    {
      v7 = MEMORY[0x277CBEC38];
    }

    v8 = [MEMORY[0x277D75418] currentDevice];
    if ([v8 userInterfaceIdiom] == 1)
    {
      v4 = [MEMORY[0x277CE5768] isEyeContactSupported];
    }

    else
    {
      v4 = 0;
    }

    v9 = [MEMORY[0x277D75418] currentDevice];
    v10 = [v9 userInterfaceIdiom];

    if (!v10 || v4)
    {
      if (MGGetBoolAnswer() && _os_feature_enabled_impl())
      {
        LOBYTE(v4) = [v7 BOOLValue];
      }

      else
      {
        LOBYTE(v4) = 0;
      }
    }
  }

  return v4;
}

- (id)getFaceTimeVPCEnabledForSpecifier:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = CNFGetDomainBooleanValueForKeyDefaultValue(@"com.apple.VideoConference", @"VPCEnabled", 1u);
  v5 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v11 = v4;
    _os_log_impl(&dword_243BE5000, v5, OS_LOG_TYPE_DEFAULT, "Viewpoint correction enabled: %d", buf, 8u);
  }

  if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
  {
    v9 = v4;
    IMLogString();
  }

  v6 = [MEMORY[0x277CCABB0] numberWithBool:{v4, v9}];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)setFaceTimeVPCEnabled:(id)a3 specifier:(id)a4
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v11 = [v5 BOOLValue];
    _os_log_impl(&dword_243BE5000, v7, OS_LOG_TYPE_DEFAULT, "Setting viewpoint correction enabled: %d", buf, 8u);
  }

  if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
  {
    v9 = [v5 BOOLValue];
    IMLogString();
  }

  CNFSetDomainIntegerForKey(@"com.apple.VideoConference", @"VPCEnabled", [v5 integerValue]);

  v8 = *MEMORY[0x277D85DE8];
}

- (BOOL)shouldShowGFTProminenceSpecifiers
{
  v3 = [(CNFRegListController *)self regController];
  v4 = [v3 serviceType];

  v5 = [(CNFRegListController *)self regController];
  v6 = [v5 isServiceEnabled];

  if (v4 || !v6)
  {
    return 0;
  }

  v7 = [MEMORY[0x277D07DB0] sharedInstance];
  v8 = [v7 multiwaySupported];

  return v8;
}

- (id)getGFTAudioProminenceEnabledForSpecifier:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = CNFGetDomainBooleanValueForKeyDefaultValue(*MEMORY[0x277D6EF80], @"allowAudioProminence", 1u);
  v5 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v11 = v4;
    _os_log_impl(&dword_243BE5000, v5, OS_LOG_TYPE_DEFAULT, "GFT audio prominence enabled: %d", buf, 8u);
  }

  if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
  {
    v9 = v4;
    IMLogString();
  }

  v6 = [MEMORY[0x277CCABB0] numberWithBool:{v4, v9}];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)setGFTAudioProminenceEnabled:(id)a3 specifier:(id)a4
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v12 = [v5 BOOLValue];
    _os_log_impl(&dword_243BE5000, v7, OS_LOG_TYPE_DEFAULT, "Setting GFT audio prominence enabled: %d", buf, 8u);
  }

  if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
  {
    v10 = [v5 BOOLValue];
    IMLogString();
  }

  v8 = [v5 BOOLValue];
  CNFSetDomainBooleanForKey(*MEMORY[0x277D6EF80], @"allowAudioProminence", v8);

  v9 = *MEMORY[0x277D85DE8];
}

- (BOOL)shouldShowSharePlaySpecifiers
{
  v3 = [(CNFRegListController *)self regController];
  v4 = [v3 serviceType];

  v5 = [(CNFRegListController *)self regController];
  v6 = [v5 isServiceEnabled];

  if (v4 || !v6)
  {
    return 0;
  }

  v7 = [MEMORY[0x277D07DB0] sharedInstance];
  v8 = [v7 multiwaySupported];

  return v8;
}

- (BOOL)shouldShowSharedNameAndPhotoSpecifiers
{
  v3 = [(CNFRegListController *)self regController];
  v4 = [v3 serviceType] == 0;

  v5 = [(CNFRegListController *)self regController];
  LOBYTE(v3) = [v5 isServiceEnabled];

  return v4 & v3;
}

- (id)possibleCallerIdAliases
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = [(CNFRegListController *)self regController];
  v4 = [(CNFRegSettingsController *)self _useableAccounts];
  v5 = [v3 useableAliasesForAccounts:v4];

  v6 = [v5 sortedArrayUsingSelector:sel_localizedCaseInsensitiveCompare_];

  v7 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v6, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [v7 addObject:{*(*(&v15 + 1) + 8 * i), v15}];
      }

      v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  v13 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)callerIdAliasSpecifiers
{
  v3 = [(NSArray *)self->_callerIdGroupSpecifiers count]- 1;
  callerIdGroupSpecifiers = self->_callerIdGroupSpecifiers;

  return [(NSArray *)callerIdGroupSpecifiers subarrayWithRange:1, v3];
}

- (void)setCallerId:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 CNFRegCallerIdAlias];
  v6 = v5;
  if (v5)
  {
    if ([v5 validationStatus] == 3)
    {
      v7 = [(CNFRegListController *)self regController];
      [v7 setDisplayAlias:v6];

      [(CNFRegSettingsController *)self refreshAllCallerIdAliasSpecifiers];
      [(CNFRegSettingsController *)self refreshReceiveRelayCallsSettingsAnimated:1];
      goto LABEL_14;
    }

    v9 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v12 = v6;
      _os_log_impl(&dword_243BE5000, v9, OS_LOG_TYPE_DEFAULT, "Can't set caller ID with alias %@ because it is not validated", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
    {
LABEL_13:
      IMLogString();
    }
  }

  else
  {
    v8 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v12 = v4;
      _os_log_impl(&dword_243BE5000, v8, OS_LOG_TYPE_DEFAULT, "No alias found for specifier: %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
    {
      goto LABEL_13;
    }
  }

LABEL_14:

  v10 = *MEMORY[0x277D85DE8];
}

- (void)refreshCallerIdSpecifier:(id)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __53__CNFRegSettingsController_refreshCallerIdSpecifier___block_invoke;
  v3[3] = &unk_278DE84B8;
  v3[4] = self;
  [(CNFRegSettingsController *)self _reloadSpecifier:a3 withBlock:v3];
}

void __53__CNFRegSettingsController_refreshCallerIdSpecifier___block_invoke(uint64_t a1, void *a2)
{
  v19 = a2;
  v3 = [v19 CNFRegCallerIdAlias];
  v4 = [*(a1 + 32) regController];
  v5 = [v4 isAliasMDMRestricted:v3];

  v6 = [v3 displayName];
  v7 = objc_opt_class();
  if (v5)
  {
    v8 = sel_statusForSpecifier_;
  }

  else
  {
    v8 = 0;
  }

  objc_storeWeak(&v19[*MEMORY[0x277D3FCB8]], *(a1 + 32));
  *&v19[*MEMORY[0x277D3FC90]] = 3;
  [v19 setProperty:v6 forKey:*MEMORY[0x277D40170]];
  [v19 setName:v6];
  [v19 setProperty:v7 forKey:*MEMORY[0x277D3FE58]];
  [v19 setButtonAction:sel_setCallerId_];
  v9 = NSStringFromSelector(sel_setCallerId_);
  [v19 setProperty:v9 forKey:*MEMORY[0x277D3FE10]];

  *&v19[*MEMORY[0x277D3FC98]] = 0;
  [v19 setDetailControllerClass:0];
  *&v19[*MEMORY[0x277D3FCA8]] = v8;
  v10 = NSStringFromSelector(v8);
  [v19 setProperty:v10 forKey:*MEMORY[0x277D3FF98]];

  v11 = [v3 identifier];
  [v19 setProperty:v11 forKey:*MEMORY[0x277D3FFB8]];

  if (v5)
  {
    v12 = 0;
  }

  else
  {
    v13 = [v3 account];
    if (v13)
    {
      v14 = [v3 account];
      v12 = [v14 CNFRegSignInComplete];
    }

    else
    {
      v12 = 0;
    }
  }

  v15 = [*(a1 + 32) regController];
  v16 = [v15 displayAlias];

  v17 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v3, "isTemporaryPhoneNumberAlias")}];
  [v19 setObject:v17 forKeyedSubscript:@"cnfreg-alias-temporary"];

  if (v12 && ([v16 isEqual:v3] || objc_msgSend(v16, "isLocalPhoneNumberAlias") && objc_msgSend(v3, "isLocalPhoneNumberAlias")))
  {
    v18 = [MEMORY[0x277CCABB0] numberWithBool:1];
    [v19 setProperty:v18 forKey:@"cnfreg-alias-checked"];
  }

  else
  {
    [v19 removePropertyForKey:@"cnfreg-alias-checked"];
  }

  [*(a1 + 32) _setSpecifierEnabled:v19 enabled:v5 ^ 1u animated:1];
}

- (void)refreshAllCallerIdAliasSpecifiers
{
  v16 = *MEMORY[0x277D85DE8];
  if ((*&self->_settingsFlags & 0x10) == 0)
  {
    *&self->_settingsFlags |= 0x10u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v3 = *(&self->super.super.super.super.super.super.isa + *MEMORY[0x277D3FC48]);
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
          v9 = [v8 CNFRegCallerIdAlias];

          if (v9)
          {
            [(CNFRegSettingsController *)self refreshCallerIdSpecifier:v8];
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v5);
    }

    *&self->_settingsFlags &= ~0x10u;
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)updateSpecifier:(id)a3 withCallerIdAlias:(id)a4
{
  v9 = a3;
  v6 = a4;
  if (v6)
  {
    v7 = [v9 CNFRegCallerIdAlias];
    v8 = [v7 isEqual:v6];

    if ((v8 & 1) == 0)
    {
      [v9 setCNFRegCallerIdAlias:v6];
      [v9 removePropertyForKey:@"cnfreg-alias-checked"];
    }

    [(CNFRegSettingsController *)self refreshCallerIdSpecifier:v9];
  }
}

- (id)createSpecifierForCallerIdAlias:(id)a3
{
  v4 = MEMORY[0x277D3FAD8];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  [(CNFRegSettingsController *)self updateSpecifier:v6 withCallerIdAlias:v5];

  return v6;
}

- (BOOL)shouldShowReplyWithMessage
{
  v3 = [(CNFRegListController *)self regController];
  v4 = [v3 serviceType];

  v5 = [(CNFRegListController *)self regController];
  v6 = [v5 isServiceEnabled];

  v7 = [MEMORY[0x277D07DB0] sharedInstance];
  v8 = [v7 isTelephonyDevice];

  v9 = [MEMORY[0x277D07DB0] sharedInstance];
  if ([v9 supportsSMS])
  {
    v10 = 1;
  }

  else
  {
    v11 = [(CNFRegSettingsController *)self _operationalAccountsForService:1];
    v10 = [v11 count] != 0;
  }

  if (v4)
  {
    v12 = 0;
  }

  else
  {
    v12 = v6;
  }

  v13 = v12 & v10;

  return v13 & (v8 ^ 1);
}

- (BOOL)shouldShowBlocklistSettings
{
  v3 = [(CNFRegListController *)self regController];
  v4 = [v3 serviceType];

  v5 = [(CNFRegListController *)self regController];
  v6 = [v5 isServiceEnabled];
  if (v4)
  {
    v7 = 0;
  }

  else
  {
    v7 = v6;
  }

  return v7;
}

- (int64_t)indexOfLastSpecifierInGroup:(id)a3
{
  v4 = 0x7FFFFFFFFFFFFFFFLL;
  v7 = 0x7FFFFFFFFFFFFFFFLL;
  if ([(CNFRegSettingsController *)self getGroup:&v7 row:0 ofSpecifier:a3])
  {
    v5 = [(CNFRegSettingsController *)self indexOfGroup:v7];
    return [(CNFRegSettingsController *)self rowsForGroup:v7]+ v5;
  }

  return v4;
}

- (int64_t)groupIdForSpecifier:(id)a3
{
  v4 = 0x7FFFFFFFFFFFFFFFLL;
  if ([(CNFRegSettingsController *)self getGroup:&v4 row:0 ofSpecifier:a3])
  {
    return v4;
  }

  else
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }
}

- (int64_t)groupIdForSpecifierId:(id)a3
{
  v4 = [(CNFRegSettingsController *)self specifierForID:a3];
  v5 = [(CNFRegSettingsController *)self groupIdForSpecifier:v4];

  return v5;
}

- (id)_makeRedactedIdentifierFromSpecifier:(id)a3
{
  v4 = [a3 identifier];
  v5 = [(CNFRegSettingsController *)self _makeRedactedIdentifierFromSpecifierId:v4];

  return v5;
}

- (id)_makeRedactedIdentifierFromSpecifierId:(id)a3
{
  v3 = a3;
  if ([v3 hasPrefix:@"account:"])
  {
    v4 = [@"account:" stringByAppendingString:@"<redacted>"];
  }

  else
  {
    v4 = v3;
  }

  v5 = v4;

  return v5;
}

- (id)_makeRedactedIdentifiersFromSpecifiers:(id)a3
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __67__CNFRegSettingsController__makeRedactedIdentifiersFromSpecifiers___block_invoke;
  v5[3] = &unk_278DE8558;
  v5[4] = self;
  v3 = [a3 tu_mapObjectsUsingBlock:v5];

  return v3;
}

- (BOOL)_shouldUseDisabledHandlers
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = [(CNFRegListController *)self regController];
  v3 = [v2 accounts];

  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v6 |= [*(*(&v11 + 1) + 8 * i) isActive] ^ 1;
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v6 & 1;
}

- (void)_setupAccountHandlers
{
  if ([(CNFRegSettingsController *)self _shouldUseDisabledHandlers])
  {

    [(CNFRegSettingsController *)self _setupAccountHandlersForDisabledOperation];
  }

  else
  {

    [(CNFRegSettingsController *)self _setupAccountHandlersForNormalOperation];
  }
}

- (void)_handleFailedAccountReactivation:(id)a3 error:(id)a4
{
  v31 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(CNFRegListController *)self regController];
  [v8 setServiceEnabled:1];

  v9 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [v7 localizedDescription];
    *buf = 138412546;
    v28 = v6;
    v29 = 2112;
    v30 = v10;
    _os_log_impl(&dword_243BE5000, v9, OS_LOG_TYPE_DEFAULT, "Failed to re-register account {%@} : %@", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
  {
    [v7 localizedDescription];
    v26 = v25 = v6;
    IMLogString();
  }

  v11 = [MEMORY[0x277D07DB0] sharedInstance];
  v12 = [v11 supportsSMSIdentification];

  if (v12)
  {
    [(CNFRegSettingsController *)self refreshFaceTimeSettingsAnimated:1];
  }

  else
  {
    [(CNFRegSettingsController *)self popToFirstRunControllerAnimated:1];
  }

  if (v7)
  {
    v13 = [(CNFRegListController *)self regController];
    v14 = [v13 shouldShowAlertForError:v7];

    if (v14)
    {
      v15 = CommunicationsSetupUIBundle();
      v16 = CNFRegStringTableName();
      v17 = [v15 localizedStringForKey:@"FACETIME_ACTIVATION_ERROR_TITLE" value:&stru_2856D3978 table:v16];

      v18 = [v7 localizedDescription];
      v19 = CommunicationsSetupUIBundle();
      v20 = CNFRegStringTableName();
      v21 = [v19 localizedStringForKey:@"FACETIME_ALERT_OK" value:&stru_2856D3978 table:v20];

      v22 = [MEMORY[0x277D75110] alertControllerWithTitle:v17 message:v18 preferredStyle:1];
      v23 = [MEMORY[0x277D750F8] actionWithTitle:v21 style:0 handler:0];
      [v22 addAction:v23];

      [(CNFRegSettingsController *)self presentViewController:v22 animated:1 completion:0];
    }
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (void)_handleSuccessfulAccountReactivation:(id)a3
{
  v4 = [(CNFRegListController *)self regController];
  [v4 setServiceEnabled:1];

  v5 = [(CNFRegListController *)self regController];
  v6 = [v5 accountState];

  if ((v6 & 0x40000000) != 0)
  {
    [(CNFRegSettingsController *)self _setupAccountHandlersForNormalOperation];

    [(CNFRegSettingsController *)self refreshFaceTimeSettingsAnimated:1];
  }

  else
  {

    [(CNFRegSettingsController *)self popToFirstRunControllerAnimated:1];
  }
}

- (BOOL)_allAccountsAreDeactivated
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = [(CNFRegListController *)self regController];
  v3 = [v2 accounts];

  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        if (([v8 isActive] & 1) != 0 || objc_msgSend(v8, "registrationStatus") > 1)
        {
          v9 = 0;
          goto LABEL_13;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      v9 = 1;
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v9 = 1;
  }

LABEL_13:

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

- (void)_setupAccountHandlersForDisabling
{
  v10.receiver = self;
  v10.super_class = CNFRegSettingsController;
  [(CNFRegListController *)&v10 _setupEventHandlers];
  v3 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_243BE5000, v3, OS_LOG_TYPE_DEFAULT, "Setting up account handlers for disabling accounts", buf, 2u);
  }

  if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
  {
    IMLogString();
  }

  v4 = [(CNFRegListController *)self regController];
  if ([(CNFRegSettingsController *)self _allAccountsAreDeactivated])
  {
    [(CNFRegSettingsController *)self _setupAccountHandlers];
  }

  else
  {
    [(CNFRegListController *)self removeAllHandlers];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __61__CNFRegSettingsController__setupAccountHandlersForDisabling__block_invoke;
    v8[3] = &unk_278DE7E08;
    v8[4] = self;
    [v4 setResetBlock:v8];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __61__CNFRegSettingsController__setupAccountHandlersForDisabling__block_invoke_2;
    v7[3] = &unk_278DE7E08;
    v7[4] = self;
    [v4 setServiceDidBecomeUnsupportedBlock:v7];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __61__CNFRegSettingsController__setupAccountHandlersForDisabling__block_invoke_3;
    v6[3] = &unk_278DE8580;
    v6[4] = self;
    [v4 setAccountActivationChangedBlock:v6];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __61__CNFRegSettingsController__setupAccountHandlersForDisabling__block_invoke_4;
    v5[3] = &unk_278DE85A8;
    v5[4] = self;
    [v4 setAccountRegistrationBlock:v5];
  }
}

uint64_t __61__CNFRegSettingsController__setupAccountHandlersForDisabling__block_invoke(uint64_t a1)
{
  if (([*(a1 + 32) _shouldUseDisabledHandlers] & 1) == 0)
  {
    [*(a1 + 32) _setupAccountHandlers];
  }

  v2 = *(a1 + 32);

  return [v2 refreshFaceTimeSettingsAnimated:0];
}

void __61__CNFRegSettingsController__setupAccountHandlersForDisabling__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) regController];
  v3 = [v2 isServiceSupported];

  if ((v3 & 1) == 0)
  {
    v4 = *(a1 + 32);

    [v4 popRecursivelyToRootController];
  }
}

uint64_t __61__CNFRegSettingsController__setupAccountHandlersForDisabling__block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) _updateSwitchDelayed];
  result = [*(a1 + 32) _allAccountsAreDeactivated];
  if (result)
  {
    v3 = *(a1 + 32);

    return [v3 _setupAccountHandlersForDisabledOperation];
  }

  return result;
}

uint64_t __61__CNFRegSettingsController__setupAccountHandlersForDisabling__block_invoke_4(uint64_t a1)
{
  [*(a1 + 32) _updateSwitchDelayed];
  result = [*(a1 + 32) _allAccountsAreDeactivated];
  if (result)
  {
    v3 = *(a1 + 32);

    return [v3 _setupAccountHandlersForDisabledOperation];
  }

  return result;
}

- (void)_setupAccountHandlersForDisabledOperation
{
  v10.receiver = self;
  v10.super_class = CNFRegSettingsController;
  [(CNFRegListController *)&v10 _setupEventHandlers];
  v3 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_243BE5000, v3, OS_LOG_TYPE_DEFAULT, "Setting up disabled account handlers", buf, 2u);
  }

  if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
  {
    IMLogString();
  }

  v4 = [(CNFRegListController *)self regController];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __69__CNFRegSettingsController__setupAccountHandlersForDisabledOperation__block_invoke;
  v8[3] = &unk_278DE7E08;
  v8[4] = self;
  [v4 setResetBlock:v8];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __69__CNFRegSettingsController__setupAccountHandlersForDisabledOperation__block_invoke_2;
  v7[3] = &unk_278DE7E08;
  v7[4] = self;
  [v4 setServiceDidBecomeUnsupportedBlock:v7];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __69__CNFRegSettingsController__setupAccountHandlersForDisabledOperation__block_invoke_3;
  v6[3] = &unk_278DE8580;
  v6[4] = self;
  [v4 setAccountActivationChangedBlock:v6];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __69__CNFRegSettingsController__setupAccountHandlersForDisabledOperation__block_invoke_891;
  v5[3] = &unk_278DE85A8;
  v5[4] = self;
  [v4 setAccountRegistrationBlock:v5];
}

uint64_t __69__CNFRegSettingsController__setupAccountHandlersForDisabledOperation__block_invoke(uint64_t a1)
{
  if (([*(a1 + 32) _shouldUseDisabledHandlers] & 1) == 0)
  {
    [*(a1 + 32) _setupAccountHandlers];
  }

  v2 = *(a1 + 32);

  return [v2 refreshFaceTimeSettingsAnimated:0];
}

void __69__CNFRegSettingsController__setupAccountHandlersForDisabledOperation__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) regController];
  v3 = [v2 isServiceSupported];

  if ((v3 & 1) == 0)
  {
    v4 = *(a1 + 32);

    [v4 popRecursivelyToRootController];
  }
}

void __69__CNFRegSettingsController__setupAccountHandlersForDisabledOperation__block_invoke_3(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = CNFRegStringForAccount(v3);
    *buf = 138412290;
    v10 = v5;
    _os_log_impl(&dword_243BE5000, v4, OS_LOG_TYPE_DEFAULT, "Handling activation state change on account: %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
  {
    v8 = CNFRegStringForAccount(v3);
    IMLogString();
  }

  [*(a1 + 32) _updateSwitchDelayed];
  if ([v3 isActive] && objc_msgSend(v3, "CNFRegSignInComplete"))
  {
    v6 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_243BE5000, v6, OS_LOG_TYPE_DEFAULT, "Activated an account that was registered, running success path", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
    {
      IMLogString();
    }

    [*(a1 + 32) _handleSuccessfulAccountReactivation:v3];
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __69__CNFRegSettingsController__setupAccountHandlersForDisabledOperation__block_invoke_891(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  [*(a1 + 32) _updateSwitchDelayed];
  if ([v6 CNFRegSignInComplete])
  {
    [*(a1 + 32) _handleSuccessfulAccountReactivation:v6];
  }

  else if ([v6 CNFRegSignInFailed])
  {
    [*(a1 + 32) _handleFailedAccountReactivation:v6 error:v5];
  }
}

- (void)_setupAccountHandlersForNormalOperation
{
  v16.receiver = self;
  v16.super_class = CNFRegSettingsController;
  [(CNFRegListController *)&v16 _setupEventHandlers];
  v3 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_243BE5000, v3, OS_LOG_TYPE_DEFAULT, "Setting up normal account handlers", buf, 2u);
  }

  if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
  {
    IMLogString();
  }

  v4 = [(CNFRegListController *)self regController];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __67__CNFRegSettingsController__setupAccountHandlersForNormalOperation__block_invoke;
  v14[3] = &unk_278DE7E08;
  v14[4] = self;
  [v4 setResetBlock:v14];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __67__CNFRegSettingsController__setupAccountHandlersForNormalOperation__block_invoke_2;
  v13[3] = &unk_278DE7E08;
  v13[4] = self;
  [v4 setServiceDidBecomeUnsupportedBlock:v13];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __67__CNFRegSettingsController__setupAccountHandlersForNormalOperation__block_invoke_3;
  v12[3] = &unk_278DE7E08;
  v12[4] = self;
  [v4 setCallerIdChangedBlock:v12];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __67__CNFRegSettingsController__setupAccountHandlersForNormalOperation__block_invoke_898;
  v11[3] = &unk_278DE8580;
  v11[4] = self;
  [v4 setAccountRemovedBlock:v11];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __67__CNFRegSettingsController__setupAccountHandlersForNormalOperation__block_invoke_902;
  v10[3] = &unk_278DE8580;
  v10[4] = self;
  [v4 setAccountActivationChangedBlock:v10];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __67__CNFRegSettingsController__setupAccountHandlersForNormalOperation__block_invoke_903;
  v9[3] = &unk_278DE85A8;
  v9[4] = self;
  [v4 setAccountRegistrationBlock:v9];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __67__CNFRegSettingsController__setupAccountHandlersForNormalOperation__block_invoke_922;
  v8[3] = &unk_278DE85D0;
  v8[4] = self;
  [v4 setAliasRemovedBlock:v8];
  v5 = [v4 aliasRemovedBlock];
  [v4 setAliasAddedBlock:v5];

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __67__CNFRegSettingsController__setupAccountHandlersForNormalOperation__block_invoke_2_924;
  v7[3] = &unk_278DE85F8;
  v7[4] = self;
  [v4 setAliasStatusChangedBlock:v7];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __67__CNFRegSettingsController__setupAccountHandlersForNormalOperation__block_invoke_3_926;
  v6[3] = &unk_278DE8580;
  v6[4] = self;
  [v4 setVettedAliasesChangedBlock:v6];
}

uint64_t __67__CNFRegSettingsController__setupAccountHandlersForNormalOperation__block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) _shouldUseDisabledHandlers])
  {
    [*(a1 + 32) _setupAccountHandlers];
  }

  v2 = *(a1 + 32);

  return [v2 refreshFaceTimeSettingsAnimated:0];
}

void __67__CNFRegSettingsController__setupAccountHandlersForNormalOperation__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) regController];
  v3 = [v2 isServiceSupported];

  if ((v3 & 1) == 0)
  {
    v4 = *(a1 + 32);

    [v4 popRecursivelyToRootController];
  }
}

uint64_t __67__CNFRegSettingsController__setupAccountHandlersForNormalOperation__block_invoke_3(uint64_t a1)
{
  v2 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_243BE5000, v2, OS_LOG_TYPE_DEFAULT, "Refreshing caller id", v4, 2u);
  }

  if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
  {
    IMLogString();
  }

  [*(a1 + 32) refreshCallerIdAliasesAnimated:1];
  return [*(a1 + 32) refreshReceiveRelayCallsSettingsAnimated:1];
}

void __67__CNFRegSettingsController__setupAccountHandlersForNormalOperation__block_invoke_898(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) regController];
  v5 = [v4 serviceType];

  v6 = [*(a1 + 32) regController];
  if ([v6 serviceSupportsDeviceAliasEnablement])
  {
    v7 = [*(a1 + 32) regController];
    v8 = [v7 usableDeviceAliases];
    v9 = [v8 count] != 0;
  }

  else
  {
    v9 = 0;
  }

  v10 = v5 == 0;

  v11 = [*(a1 + 32) regController];
  v12 = [v11 accountsWithFilter:1];
  v13 = [v12 count];

  if (v13 || v10 && v9)
  {
    [*(a1 + 32) refreshFaceTimeSettingsAnimated:1];
  }

  else
  {
    v14 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *v15 = 0;
      _os_log_impl(&dword_243BE5000, v14, OS_LOG_TYPE_DEFAULT, "Account used for settings was removed, popping", v15, 2u);
    }

    if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
    {
      IMLogString();
    }

    [*(a1 + 32) _popFromSettingsAnimated:1];
  }
}

void __67__CNFRegSettingsController__setupAccountHandlersForNormalOperation__block_invoke_902(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) regController];
  v5 = [v4 accountsWithFilter:1];
  v6 = [v5 count];

  if (v6)
  {
    [*(a1 + 32) refreshFaceTimeSettingsAnimated:1];
  }

  else
  {
    v7 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_243BE5000, v7, OS_LOG_TYPE_DEFAULT, "Account used for settings was removed, popping", v8, 2u);
    }

    if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
    {
      IMLogString();
    }

    [*(a1 + 32) refreshFaceTimeSettingsAnimated:1];
    [*(a1 + 32) _popFromSettingsAnimated:1];
  }
}

void __67__CNFRegSettingsController__setupAccountHandlersForNormalOperation__block_invoke_903(uint64_t a1, void *a2, void *a3)
{
  v42 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v5 isActive];
    v9 = CNFRegStringForAccount(v5);
    v10 = v9;
    v11 = @"NO";
    if (v8)
    {
      v11 = @"YES";
    }

    *buf = 138412546;
    v39 = v11;
    v40 = 2112;
    v41 = v9;
    _os_log_impl(&dword_243BE5000, v7, OS_LOG_TYPE_DEFAULT, "Account status changed (isActive=%@): %@", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
  {
    if ([v5 isActive])
    {
      v12 = @"YES";
    }

    else
    {
      v12 = @"NO";
    }

    CNFRegStringForAccount(v5);
    v36 = v34 = v12;
    IMLogString();
  }

  if (v6)
  {
    v13 = [*(a1 + 32) regController];
    v14 = [v13 shouldShowAlertForError:v6];
  }

  else
  {
    v14 = 0;
  }

  if ([v5 CNFRegSignInComplete])
  {
    goto LABEL_34;
  }

  v15 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [v5 isActive];
    v17 = CNFRegStringForAccount(v5);
    v18 = v17;
    v19 = @"NO";
    if (v16)
    {
      v19 = @"YES";
    }

    *buf = 138412546;
    v39 = v19;
    v40 = 2112;
    v41 = v17;
    _os_log_impl(&dword_243BE5000, v15, OS_LOG_TYPE_DEFAULT, "Account no longer signed in (isActive=%@): %@", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
  {
    if ([v5 isActive])
    {
      v20 = @"YES";
    }

    else
    {
      v20 = @"NO";
    }

    CNFRegStringForAccount(v5);
    v37 = v35 = v20;
    IMLogString();
  }

  CNFRegLogIndent();
  CNFRegLogBacktrace();
  CNFRegLogOutdent();
  v21 = [*(a1 + 32) _operationalAccounts];
  v22 = [v21 count] == 0;

  if (!v22)
  {
    goto LABEL_34;
  }

  v23 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_243BE5000, v23, OS_LOG_TYPE_DEFAULT, "No more useable accounts, popping", buf, 2u);
  }

  if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
  {
    IMLogString();
  }

  if ([*(a1 + 32) _popFromSettingsAnimated:{1, v35, v37}])
  {
    if ((v14 & 1) == 0)
    {
      goto LABEL_37;
    }
  }

  else
  {
LABEL_34:
    [*(a1 + 32) _updateSwitchDelayed];
    if (!v14)
    {
      [*(a1 + 32) refreshFaceTimeSettingsWithDelayAnimated:1];
      goto LABEL_37;
    }
  }

  v24 = CommunicationsSetupUIBundle();
  v25 = CNFRegStringTableName();
  v26 = [v24 localizedStringForKey:@"FACETIME_ACTIVATION_ERROR_TITLE" value:&stru_2856D3978 table:v25];

  v27 = [v6 localizedDescription];
  v28 = CommunicationsSetupUIBundle();
  v29 = CNFRegStringTableName();
  v30 = [v28 localizedStringForKey:@"FACETIME_ALERT_OK" value:&stru_2856D3978 table:v29];

  v31 = [MEMORY[0x277D75110] alertControllerWithTitle:v26 message:v27 preferredStyle:1];
  v32 = [MEMORY[0x277D750F8] actionWithTitle:v30 style:0 handler:0];
  [v31 addAction:v32];

  [*(a1 + 32) presentViewController:v31 animated:1 completion:0];
LABEL_37:

  v33 = *MEMORY[0x277D85DE8];
}

uint64_t __67__CNFRegSettingsController__setupAccountHandlersForNormalOperation__block_invoke_922(uint64_t a1)
{
  [*(a1 + 32) refreshAliasesAnimated:0];
  [*(a1 + 32) refreshCallerIdAliasesAnimated:1];
  [*(a1 + 32) refreshTemporaryPhoneAnimated:1];
  [*(a1 + 32) refreshTravelPhoneAnimated:1];
  v2 = *(a1 + 32);

  return [v2 refreshReceiveRelayCallsSettingsAnimated:1];
}

void __67__CNFRegSettingsController__setupAccountHandlersForNormalOperation__block_invoke_2_924(uint64_t a1, void *a2, void *a3)
{
  v8 = a3;
  v5 = *(a1 + 32);
  v6 = a2;
  [v5 refreshAllAliasSpecifiers];
  [*(a1 + 32) refreshCallerIdAliasesAnimated:1];
  v7 = [v6 validationStatus];

  if (v7 == -1)
  {
    [*(a1 + 32) _showAliasValidationError:v8];
  }
}

uint64_t __67__CNFRegSettingsController__setupAccountHandlersForNormalOperation__block_invoke_3_926(uint64_t a1)
{
  [*(a1 + 32) refreshAliasesAnimated:0];
  [*(a1 + 32) refreshCallerIdAliasesAnimated:1];
  [*(a1 + 32) refreshTemporaryPhoneAnimated:1];
  v2 = *(a1 + 32);

  return [v2 refreshTravelPhoneAnimated:1];
}

- (void)handleCallStatusChanged
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__CNFRegSettingsController_handleCallStatusChanged__block_invoke;
  block[3] = &unk_278DE7E08;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (BOOL)shouldShowOnlineSafetyLink
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = [(CNFRegSettingsController *)self _safetyURLForCurrentRegionIfAny];

  v4 = [(CNFRegListController *)self regController];
  v5 = [v4 serviceType];

  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = v3 != 0;
  }

  v7 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [(CNFRegListController *)self regController];
    *buf = 67109632;
    v13 = v6;
    v14 = 1024;
    v15 = v3 != 0;
    v16 = 2048;
    v17 = [v8 serviceType];
    _os_log_impl(&dword_243BE5000, v7, OS_LOG_TYPE_DEFAULT, "ONLINE SAFETY: shouldShowOnlineSafetyLink = %d since safety URL = %d and current service = %ld", buf, 0x18u);
  }

  if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
  {
    v9 = [(CNFRegListController *)self regController];
    [v9 serviceType];
    IMLogString();
  }

  v10 = *MEMORY[0x277D85DE8];
  return v6;
}

- (void)openOnlineSafetyURL
{
  v3 = [(CNFRegSettingsController *)self _safetyURLForCurrentRegionIfAny];
  if (v3)
  {
    v4 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_243BE5000, v4, OS_LOG_TYPE_DEFAULT, "ONLINE SAFETY: Opening safety URL...", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
    {
      IMLogString();
    }

    v5 = [(CNFRegSettingsController *)self _safariViewControllerWithURL:v3];
    [(CNFRegSettingsController *)self presentViewController:v5 animated:1 completion:0];
    v6 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_243BE5000, v6, OS_LOG_TYPE_DEFAULT, "ONLINE SAFETY: Successfully opened safety URL!", v9, 2u);
    }

    if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
    {
      IMLogString();
    }
  }

  else
  {
    v7 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_243BE5000, v7, OS_LOG_TYPE_DEFAULT, "ONLINE SAFETY: Failed to open safety URL because it was not valid", v8, 2u);
    }

    if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
    {
      IMLogString();
    }
  }
}

- (id)_safetyURLForCurrentRegionIfAny
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = [(CNFRegSettingsController *)self _onlineSafetyRegionCodesURLMapping];
  v3 = [MEMORY[0x277CBEAF8] currentLocale];
  v4 = [v3 regionCode];

  v5 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v17 = v4;
    _os_log_impl(&dword_243BE5000, v5, OS_LOG_TYPE_DEFAULT, "ONLINE SAFETY: Checking if region %@ requires safety URL to be shown...", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
  {
    v14 = v4;
    IMLogString();
  }

  v6 = [v2 objectForKey:{v4, v14}];
  v7 = v6 == 0;

  if (v7)
  {
    v11 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_243BE5000, v11, OS_LOG_TYPE_DEFAULT, "ONLINE SAFETY: No valid safety URL was found for any of user's region", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
    {
      IMLogString();
    }

    v10 = 0;
  }

  else
  {
    v8 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v17 = v4;
      _os_log_impl(&dword_243BE5000, v8, OS_LOG_TYPE_DEFAULT, "ONLINE SAFETY: Valid safety URL found for region %@!", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
    {
      v15 = v4;
      IMLogString();
    }

    v9 = [v2 objectForKeyedSubscript:{v4, v15}];
    v10 = [MEMORY[0x277CBEBC0] URLWithString:v9];
  }

  v12 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)_onlineSafetyRegionCodesURLMapping
{
  v6[2] = *MEMORY[0x277D85DE8];
  v5[0] = @"AU";
  v5[1] = @"GB";
  v6[0] = @"https://www.apple.com/au/legal/online-safety/";
  v6[1] = @"https://www.apple.com/uk/legal/online-safety/";
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5 count:2];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (id)_safariViewControllerWithURL:(id)a3
{
  v4 = MEMORY[0x277CDB708];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  [v6 setEntersReaderIfAvailable:0];
  v7 = [objc_alloc(MEMORY[0x277CDB700]) initWithURL:v5 configuration:v6];

  [v7 setDelegate:self];
  [v7 setModalPresentationStyle:2];

  return v7;
}

- (void)refreshAliasesAnimated:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)refreshAliasesAnimated:.cold.2()
{
  OUTLINED_FUNCTION_0();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)refreshCallerIdAliasesAnimated:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)refreshCallerIdAliasesAnimated:.cold.2()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

@end