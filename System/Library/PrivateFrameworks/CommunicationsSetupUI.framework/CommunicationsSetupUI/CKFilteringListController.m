@interface CKFilteringListController
- (BOOL)deviceSupportsSMSFilteringExtensions;
- (BOOL)enableSpamForExtensionID:(id)a3 withName:(id)a4;
- (BOOL)verifyCurrentExtensionIDValidity;
- (CKFilteringListController)init;
- (id)_syncManager;
- (id)getDefaultExtension;
- (id)getSpamSpecifiers;
- (id)isConversationListFilteringEnabled:(id)a3;
- (id)specifiers;
- (void)_checkAndUpdateExtensionIDArray;
- (void)appendAboutWiFiCallingFooterToGroupSpecifier:(id)a3;
- (void)applicationDidResume;
- (void)applicationWillSuspend;
- (void)checkSMSFilteringExtensionIfNecessary:(id)a3;
- (void)dealloc;
- (void)disableSpamFiltering;
- (void)enableSpamFiltering:(id)a3;
- (void)endMatchingExtensions;
- (void)findSpamExtensions;
- (void)grayOutSMSFilteringExtensionIfNecessary:(id)a3;
- (void)setConversationListFilteringEnabled:(id)a3 specifier:(id)a4;
- (void)setIsSpamFilteringDefaultEnabled;
- (void)setSpamAppEnabled:(id)a3;
- (void)showPrivacyAccessWarningAndChangeSpamAppIfNeeded:(id)a3 completion:(id)a4;
- (void)showPrivacyLegalVC;
- (void)userChangedSpamFilteringSettings;
@end

@implementation CKFilteringListController

- (id)_syncManager
{
  if (!_syncManager_syncManager)
  {
    v2 = CUTWeakLinkClass();
    if (v2)
    {
      v3 = objc_alloc_init(v2);
      v4 = _syncManager_syncManager;
      _syncManager_syncManager = v3;
    }
  }

  v5 = _syncManager_syncManager;

  return v5;
}

- (CKFilteringListController)init
{
  v8.receiver = self;
  v8.super_class = CKFilteringListController;
  v2 = [(CKFilteringListController *)&v8 init];
  v3 = v2;
  if (v2)
  {
    v2->_spamFilterState = -1;
    [(CKFilteringListController *)v2 setIsSpamFilteringDefaultEnabled];
    v4 = MessagesSettingsLocalizedString(@"TEXT_MESSAGE_FILTER_LABEL");
    [(CKFilteringListController *)v3 setTitle:v4];

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    v6 = v3;
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v6, _handleSIMSubscriptionsUpdateNotification, *MEMORY[0x277D1A4E8], 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  return v3;
}

- (void)dealloc
{
  [(CKFilteringListController *)self endMatchingExtensions];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, *MEMORY[0x277D1A4E8], 0);
  v4.receiver = self;
  v4.super_class = CKFilteringListController;
  [(CKFilteringListController *)&v4 dealloc];
}

- (void)applicationWillSuspend
{
  v3.receiver = self;
  v3.super_class = CKFilteringListController;
  [(CKFilteringListController *)&v3 applicationWillSuspend];
  [(CKFilteringListController *)self endMatchingExtensions];
}

- (void)applicationDidResume
{
  v3.receiver = self;
  v3.super_class = CKFilteringListController;
  [(CKFilteringListController *)&v3 applicationDidResume];
  if (!self->_showingParentViewController)
  {
    [(CKFilteringListController *)self findSpamExtensions];
  }
}

- (void)endMatchingExtensions
{
  if ([(CKFilteringListController *)self deviceSupportsSMSFilteringExtensions])
  {
    [(CKNSExtension *)self->_ckExtension endMatchingExtensions];
    ckExtension = self->_ckExtension;
    self->_ckExtension = 0;
  }
}

- (id)isConversationListFilteringEnabled:(id)a3
{
  v3 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  v4 = [v3 isIntroductionsEnabled];

  if (v4)
  {
    v5 = +[CKSettingsMessagesController syncedSettingsManager];
    v6 = [v5 settingValueForKey:4];

    if ([v6 BOOLValue])
    {
      IMSetDomainBoolForKey();
    }
  }

  else
  {
    keyExistsAndHasValidFormat = 0;
    if (CFPreferencesGetAppBooleanValue(@"IncomingMessageAlertFiltration", @"com.apple.MobileSMS", &keyExistsAndHasValidFormat))
    {
      v7 = keyExistsAndHasValidFormat == 0;
    }

    else
    {
      v7 = 1;
    }

    v8 = !v7;
    v6 = [MEMORY[0x277CCABB0] numberWithBool:v8];
  }

  return v6;
}

- (void)setConversationListFilteringEnabled:(id)a3 specifier:(id)a4
{
  value = a3;
  v5 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  v6 = [v5 isIntroductionsEnabled];

  if (v6)
  {
    v7 = +[CKSettingsMessagesController syncedSettingsManager];
    [v7 setSettingValue:value forKey:4];
  }

  else
  {
    CFPreferencesSetAppValue(@"IncomingMessageAlertFiltration", value, @"com.apple.MobileSMS");
  }

  CFPreferencesSetAppValue(@"IncomingMessageAlertFiltrationForcedOn", *MEMORY[0x277CBED10], @"com.apple.MobileSMS");
  v8 = *MEMORY[0x277CBED28];
  CFPreferencesSetAppValue(@"MessageFilteringSettingsConfirmed", *MEMORY[0x277CBED28], @"com.apple.MobileSMS");
  if (self->_spamFilterState == 1)
  {
    CFPreferencesSetAppValue(@"MessageSpamFilteringSettingsConfirmed", v8, @"com.apple.MobileSMS");
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.MobileSMS.IncomingMessageAlertFiltration.changed", 0, 0, 1u);
  v10 = CUTWeakLinkSymbol();
  if (v10)
  {
    v10();
  }

  [(CKFilteringListController *)self reloadSpecifiers];
  v11 = [(CKFilteringListController *)self _syncManager];
  v12 = [MEMORY[0x277CBEB98] setWithObjects:{@"IncomingMessageAlertFiltration", @"IncomingMessageAlertFiltrationForcedOn", @"MessageFilteringSettingsConfirmed", 0}];
  [v11 synchronizeUserDefaultsDomain:@"com.apple.MobileSMS" keys:v12];
}

- (void)enableSpamFiltering:(id)a3
{
  v4 = a3;
  CFPreferencesSetAppValue(@"IncomingMessageAlertSpamFiltration", v4, @"com.apple.MobileSMS");
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.MobileSMS.IncomingMessageAlertSpamFiltration.changed", 0, 0, 1u);
  v6 = [v4 integerValue];

  self->_spamFilterState = v6;
}

- (void)showPrivacyAccessWarningAndChangeSpamAppIfNeeded:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 identifier];
  if ([v8 isEqualToString:@"noFilter"])
  {

LABEL_4:
    v7[2](v7, 1);
    goto LABEL_15;
  }

  v9 = [v6 identifier];
  v10 = [v9 isEqualToString:@"com.apple.smsFilter.extension"];

  if (v10)
  {
    goto LABEL_4;
  }

  v11 = [v6 name];
  v36 = v11;
  v12 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  v13 = [v12 isIntroductionsEnabled];

  v14 = MEMORY[0x277CCACA8];
  if (v13)
  {
    v15 = @"USE_APP_TO_FILTER_YOUR_MESSAGES";
  }

  else
  {
    v15 = @"PRIVACY_WARNING_APP_NAME_TITLE";
  }

  v16 = MessagesSettingsLocalizedString(v15);
  v17 = [v14 localizedStringWithFormat:v16, v11];
  v35 = v17;

  v18 = MEMORY[0x277CCACA8];
  v19 = MessagesSettingsLocalizedString(@"PRIVACY_WARNING_TEXT");
  v20 = [v18 localizedStringWithFormat:v19, v11];

  v21 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  v22 = [v21 isIntroductionsEnabled];

  if (v22)
  {
    v23 = @"DONT_USE";
  }

  else
  {
    v23 = @"PRIVACY_WARNING_CANCEL";
  }

  v24 = MessagesSettingsLocalizedString(v23);
  v25 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  v26 = [v25 isIntroductionsEnabled];

  if (v26)
  {
    v27 = @"USE";
  }

  else
  {
    v27 = @"PRIVACY_WARNING_ACTION";
  }

  v28 = MessagesSettingsLocalizedString(v27);
  v29 = [MEMORY[0x277D75110] alertControllerWithTitle:v17 message:v20 preferredStyle:1];
  v30 = MEMORY[0x277D750F8];
  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = __89__CKFilteringListController_showPrivacyAccessWarningAndChangeSpamAppIfNeeded_completion___block_invoke;
  v39[3] = &unk_278DE8230;
  v31 = v7;
  v40 = v31;
  v32 = [v30 actionWithTitle:v24 style:1 handler:v39];
  [v29 addAction:v32];

  v33 = MEMORY[0x277D750F8];
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __89__CKFilteringListController_showPrivacyAccessWarningAndChangeSpamAppIfNeeded_completion___block_invoke_2;
  v37[3] = &unk_278DE8230;
  v38 = v31;
  v34 = [v33 actionWithTitle:v28 style:0 handler:v37];
  [v29 addAction:v34];

  [(CKFilteringListController *)self presentViewController:v29 animated:1 completion:0];
LABEL_15:
}

- (BOOL)enableSpamForExtensionID:(id)a3 withName:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (v7 && [v7 length])
  {
    CFPreferencesSetAppValue(@"spamFiltrationExtensionID", v7, @"com.apple.MobileSMS");
    CFPreferencesSetAppValue(@"spamFiltrationExtensionName", v8, @"com.apple.MobileSMS");
    [(CKFilteringListController *)self enableSpamFiltering:&unk_2856EB988];
    objc_storeStrong(&self->_currentExtensionID, a3);
    [(CKFilteringListController *)self _updateSMSFilteringParams];
    v9 = 1;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)disableSpamFiltering
{
  CFPreferencesSetAppValue(@"spamFiltrationExtensionID", 0, @"com.apple.MobileSMS");
  CFPreferencesSetAppValue(@"spamFiltrationExtensionName", 0, @"com.apple.MobileSMS");
  self->_spamFilterState = 0;
  [(CKFilteringListController *)self enableSpamFiltering:&unk_2856EB9A0];

  [(CKFilteringListController *)self _updateSMSFilteringParams];
}

- (id)getDefaultExtension
{
  v3 = CFPreferencesCopyAppValue(@"spamFiltrationExtensionID", @"com.apple.MobileSMS");
  objc_storeStrong(&self->_currentExtensionID, v3);
  if (v3)
  {
    self->_spamFilterState = 1;
  }

  return v3;
}

- (void)setIsSpamFilteringDefaultEnabled
{
  if (self->_spamFilterState == -1)
  {
    keyExistsAndHasValidFormat = 0;
    if (CFPreferencesGetAppBooleanValue(@"IncomingMessageAlertSpamFiltration", @"com.apple.MobileSMS", &keyExistsAndHasValidFormat))
    {
      v3 = keyExistsAndHasValidFormat == 0;
    }

    else
    {
      v3 = 1;
    }

    v4 = !v3;
    self->_spamFilterState = v4;
  }
}

- (void)setSpamAppEnabled:(id)a3
{
  v4 = a3;
  if (self->_currentExtensionID)
  {
    currentExtensionID = self->_currentExtensionID;
  }

  else
  {
    currentExtensionID = @"noFilter";
  }

  v6 = [(CKFilteringListController *)self specifierForID:currentExtensionID];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __47__CKFilteringListController_setSpamAppEnabled___block_invoke;
  v16[3] = &unk_278DE80D8;
  v16[4] = self;
  v7 = v6;
  v17 = v7;
  v8 = v4;
  v18 = v8;
  v9 = MEMORY[0x245D4D850](v16);
  v10 = [v8 identifier];

  if (v10)
  {
    v11 = [v8 identifier];
    v12 = [v11 isEqualToString:self->_currentExtensionID];

    if ((v12 & 1) == 0)
    {
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __47__CKFilteringListController_setSpamAppEnabled___block_invoke_2;
      v13[3] = &unk_278DE8720;
      v13[4] = self;
      v14 = v8;
      v15 = v9;
      [(CKFilteringListController *)self showPrivacyAccessWarningAndChangeSpamAppIfNeeded:v14 completion:v13];
    }
  }

  else
  {
    [(CKFilteringListController *)self disableSpamFiltering];
    [(CKFilteringListController *)self userChangedSpamFilteringSettings];
    v9[2](v9);
  }
}

uint64_t __47__CKFilteringListController_setSpamAppEnabled___block_invoke(uint64_t a1)
{
  [*(a1 + 32) checkSMSFilteringExtensionIfNecessary:*(a1 + 40)];
  [*(a1 + 32) checkSMSFilteringExtensionIfNecessary:*(a1 + 48)];
  [*(a1 + 32) reloadSpecifier:*(a1 + 40) animated:1];
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);

  return [v2 reloadSpecifier:v3 animated:1];
}

uint64_t __47__CKFilteringListController_setSpamAppEnabled___block_invoke_2(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = result;
    v3 = *(result + 32);
    v4 = [*(result + 40) identifier];
    v5 = [*(v2 + 40) name];
    [v3 enableSpamForExtensionID:v4 withName:v5];

    v6 = [*(v2 + 40) identifier];
    LODWORD(v4) = [v6 isEqual:@"noFilter"];

    if (v4)
    {
      [*(v2 + 32) disableSpamFiltering];
    }

    [*(v2 + 32) userChangedSpamFilteringSettings];
    v7 = *(*(v2 + 48) + 16);

    return v7();
  }

  return result;
}

- (void)userChangedSpamFilteringSettings
{
  CFPreferencesSetAppValue(@"MessageSpamFilteringSettingsConfirmed", *MEMORY[0x277CBED28], @"com.apple.MobileSMS");

  [(CKFilteringListController *)self _checkAndUpdateExtensionIDArray];
}

- (void)findSpamExtensions
{
  if ([(CKFilteringListController *)self deviceSupportsSMSFilteringExtensions])
  {
    if (!self->_ckExtension)
    {
      v3 = objc_alloc_init(CKNSExtension);
      ckExtension = self->_ckExtension;
      self->_ckExtension = v3;

      v6[0] = MEMORY[0x277D85DD0];
      v6[1] = 3221225472;
      v6[2] = __47__CKFilteringListController_findSpamExtensions__block_invoke;
      v6[3] = &unk_278DE8748;
      v6[4] = self;
      v5 = MEMORY[0x245D4D850](v6);
      [(CKNSExtension *)self->_ckExtension beginMatchingExtensions:v5];
    }
  }
}

void __47__CKFilteringListController_findSpamExtensions__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v13 = [CKSettingsMessagesController removeFirstPartyExtensionFromArrayIfNecessary:a2];
  v6 = [MEMORY[0x277CBEB98] setWithArray:*(*(a1 + 32) + 1464)];
  v7 = [MEMORY[0x277CBEB98] setWithArray:v13];
  v8 = [v6 isEqualToSet:v7];
  if ((v8 & 1) == 0)
  {
    [*(a1 + 32) setExtensionIDArray:v13];
    [*(a1 + 32) setExtensionNameMapping:v5];
  }

  v9 = [v13 count];
  v10 = *(a1 + 32);
  if (v9 || v10[185] != 1)
  {
    if (([v10 verifyCurrentExtensionIDValidity] | v8 ^ 1) != 1)
    {
      goto LABEL_8;
    }
  }

  else
  {
    [v10 disableSpamFiltering];
    [*(a1 + 32) verifyCurrentExtensionIDValidity];
  }

  [*(a1 + 32) reloadSpecifiers];
LABEL_8:
  v11 = [v13 count];
  v12 = MEMORY[0x277CBED28];
  if (!v11)
  {
    v12 = MEMORY[0x277CBED10];
  }

  CFPreferencesSetAppValue(@"MessageSpamFilteringExtensionInstalled", *v12, @"com.apple.MobileSMS");
}

- (void)_checkAndUpdateExtensionIDArray
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_243BE5000, v3, OS_LOG_TYPE_DEFAULT, "Checking if we need to remove firstPartyExtension and reload specifiers.", buf, 2u);
  }

  if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
  {
    IMLogString();
  }

  v4 = [(NSArray *)self->_extensionIDArray copy];
  v5 = [CKSettingsMessagesController removeFirstPartyExtensionFromArrayIfNecessary:v4];
  v6 = [MEMORY[0x277CBEB98] setWithArray:v4];
  v7 = [MEMORY[0x277CBEB98] setWithArray:v5];
  v8 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v14 = v4;
    v15 = 2112;
    v16 = v5;
    _os_log_impl(&dword_243BE5000, v8, OS_LOG_TYPE_DEFAULT, "currentExtensionIDArray:%@, newExtensionIDArray:%@", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
  {
    v11 = v4;
    v12 = v5;
    IMLogString();
  }

  if (([v6 isEqualToSet:{v7, v11, v12}] & 1) == 0)
  {
    v9 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_243BE5000, v9, OS_LOG_TYPE_DEFAULT, "Extensions changed. Resetting extensionIDArray and reloading", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
    {
      IMLogString();
    }

    [(CKFilteringListController *)self setExtensionIDArray:v5];
    [(CKFilteringListController *)self reloadSpecifiers];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (BOOL)verifyCurrentExtensionIDValidity
{
  v18 = *MEMORY[0x277D85DE8];
  if (self->_spamFilterState == 1)
  {
    v3 = [(CKFilteringListController *)self getDefaultExtension];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v4 = self->_extensionIDArray;
    v5 = [(NSArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v14;
      while (2)
      {
        v8 = 0;
        do
        {
          if (*v14 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = [*(*(&v13 + 1) + 8 * v8) identifier];
          v10 = [v9 isEqualToString:self->_currentExtensionID];

          if (v10)
          {

            goto LABEL_12;
          }

          ++v8;
        }

        while (v6 != v8);
        v6 = [(NSArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

    [(CKFilteringListController *)self disableSpamFiltering];
    [(CKFilteringListController *)self reloadSpecifiers];
    result = 0;
  }

  else
  {
LABEL_12:
    result = 1;
  }

  v12 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)appendAboutWiFiCallingFooterToGroupSpecifier:(id)a3
{
  v4 = a3;
  v14 = MessagesSettingsLocalizedString(@"SPAM_EXTENSION_DESCRIPTION");
  v5 = MEMORY[0x277D37668];
  v6 = [MEMORY[0x277D37630] bundleWithIdentifier:@"com.apple.onboarding.smsfiltering"];
  v7 = [v5 flowWithBundle:v6];
  v8 = [v7 localizedButtonTitle];

  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@\n\n%@", v14, v8];
  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  [v4 setProperty:v11 forKey:*MEMORY[0x277D3FF48]];

  [v4 setProperty:v9 forKey:*MEMORY[0x277D3FF70]];
  v16.location = [v9 rangeOfString:v8];
  v12 = NSStringFromRange(v16);
  [v4 setProperty:v12 forKey:*MEMORY[0x277D3FF58]];

  v13 = [MEMORY[0x277CCAE60] valueWithNonretainedObject:self];
  [v4 setProperty:v13 forKey:*MEMORY[0x277D3FF68]];

  [v4 setProperty:@"showPrivacyLegalVC" forKey:*MEMORY[0x277D3FF50]];
}

- (void)showPrivacyLegalVC
{
  v3 = [MEMORY[0x277D37678] presenterForPrivacySplashWithIdentifier:@"com.apple.onboarding.smsfiltering"];
  [v3 setPresentingViewController:self];
  [v3 present];
}

- (id)getSpamSpecifiers
{
  if ([(CKFilteringListController *)self deviceSupportsSMSFilteringExtensions])
  {
    v3 = [(CKFilteringListController *)self getDefaultExtension];
    v4 = [(CKFilteringListController *)self isConversationListFilteringEnabled:0];
    v5 = [v4 isEqual:MEMORY[0x277CBEC28]];

    if (v5)
    {
      [(CKFilteringListController *)self disableSpamFiltering];
    }

    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
    v8 = [v7 isIntroductionsEnabled];

    if (v8)
    {
      v9 = 0;
    }

    else
    {
      v9 = MessagesSettingsLocalizedString(@"SPAM_FILTERING_GROUP_LABEL");
    }

    v11 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"SPAM_FILTERING_GROUP" name:v9];
    [(CKFilteringListController *)self appendAboutWiFiCallingFooterToGroupSpecifier:v11];
    [v6 addObject:v11];
    v12 = MEMORY[0x277D3FAD8];
    v13 = MessagesSettingsLocalizedString(@"SPAM_EXTENSION_NO_FILTER");
    v14 = [v12 preferenceSpecifierNamed:v13 target:self set:0 get:0 detail:0 cell:3 edit:0];

    [v14 setButtonAction:sel_setSpamAppEnabled_];
    [v14 setIdentifier:@"noFilter"];
    [(CKFilteringListController *)self grayOutSMSFilteringExtensionIfNecessary:v14];
    [(CKFilteringListController *)self checkSMSFilteringExtensionIfNecessary:v14];
    v15 = self->_extensionIDArray;
    v16 = [(NSArray *)v15 firstObject];
    v17 = MEMORY[0x277D755B8];
    v18 = [v16 identifier];
    v19 = [v17 _applicationIconImageForBundleIdentifier:v18 format:0];

    [v19 size];
    v21 = v20;
    v23 = v22;
    [v19 scale];
    v25 = v24;
    v31.width = v21;
    v31.height = v23;
    UIGraphicsBeginImageContextWithOptions(v31, 0, v25);
    v26 = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    [v14 setObject:v26 forKeyedSubscript:*MEMORY[0x277D3FFC0]];
    [v6 addObject:v14];
    if ([(NSArray *)v15 count])
    {
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __46__CKFilteringListController_getSpamSpecifiers__block_invoke;
      v28[3] = &unk_278DE8770;
      v28[4] = self;
      v29 = v6;
      [(NSArray *)v15 enumerateObjectsWithOptions:2 usingBlock:v28];
    }

    v10 = v6;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

void __46__CKFilteringListController_getSpamSpecifiers__block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277D3FAD8];
  v4 = a2;
  v5 = [v4 _plugIn];
  v6 = [v5 localizedContainingName];
  v11 = [v3 preferenceSpecifierNamed:v6 target:*(a1 + 32) set:0 get:0 detail:0 cell:3 edit:0];

  v7 = [v4 identifier];
  [v11 setIdentifier:v7];

  [v11 setButtonAction:sel_setSpamAppEnabled_];
  v8 = MEMORY[0x277D755B8];
  v9 = [v4 identifier];

  v10 = [v8 _applicationIconImageForBundleIdentifier:v9 format:0];
  [v11 setObject:v10 forKeyedSubscript:*MEMORY[0x277D3FFC0]];

  [*(a1 + 32) grayOutSMSFilteringExtensionIfNecessary:v11];
  [*(a1 + 32) checkSMSFilteringExtensionIfNecessary:v11];
  [*(a1 + 40) addObject:v11];
}

- (void)grayOutSMSFilteringExtensionIfNecessary:(id)a3
{
  v8 = a3;
  v4 = [(CKFilteringListController *)self isConversationListFilteringEnabled:0];
  v5 = MEMORY[0x277CBEC28];
  v6 = [v4 isEqual:MEMORY[0x277CBEC28]];

  if (v6)
  {
    v7 = v5;
  }

  else
  {
    v7 = MEMORY[0x277CBEC38];
  }

  [v8 setProperty:v7 forKey:*MEMORY[0x277D3FF38]];
}

- (void)checkSMSFilteringExtensionIfNecessary:(id)a3
{
  v9 = a3;
  v4 = [v9 identifier];
  if (![v4 isEqualToString:@"noFilter"] || self->_currentExtensionID && self->_spamFilterState == 1)
  {
    v5 = [v9 identifier];
    v6 = [v5 isEqualToString:self->_currentExtensionID];

    if (!v6)
    {
      v7 = 0;
      goto LABEL_8;
    }
  }

  else
  {
  }

  v7 = 3;
LABEL_8:
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:v7];
  [v9 setObject:v8 forKeyedSubscript:*MEMORY[0x277D3FD68]];
}

- (id)specifiers
{
  v3 = *MEMORY[0x277D3FC48];
  v4 = *(&self->super.super.super.super.super.isa + v3);
  if (!v4)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v6 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
    v7 = [v6 isIntroductionsEnabled];

    if ((v7 & 1) == 0)
    {
      v8 = MessagesSettingsLocalizedString(@"MESSAGES_FILTERING_LABEL");
      v9 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"IMESSAGE_FILTERING_GROUP" name:v8];
      v10 = MessagesSettingsLocalizedString(@"MADRID_FILTER");
      [v9 setProperty:v10 forKey:*MEMORY[0x277D3FF88]];

      [v5 addObject:v9];
      v11 = MEMORY[0x277D3FAD8];
      v12 = MessagesSettingsLocalizedString(@"MADRID_FILTER_LABEL");
      v13 = [v11 preferenceSpecifierNamed:v12 target:self set:sel_setConversationListFilteringEnabled_specifier_ get:sel_isConversationListFilteringEnabled_ detail:0 cell:6 edit:0];

      [v13 setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FD80]];
      [v5 addObject:v13];
    }

    v14 = [(CKFilteringListController *)self getSpamSpecifiers];
    if (v14)
    {
      [v5 addObjectsFromArray:v14];
    }

    v15 = *(&self->super.super.super.super.super.isa + v3);
    *(&self->super.super.super.super.super.isa + v3) = v5;

    v4 = *(&self->super.super.super.super.super.isa + v3);
  }

  return v4;
}

- (BOOL)deviceSupportsSMSFilteringExtensions
{
  v2 = [MEMORY[0x277D75418] currentDevice];
  v3 = [v2 userInterfaceIdiom] == 0;

  return v3;
}

@end