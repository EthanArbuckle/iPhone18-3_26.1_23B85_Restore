@interface CKSettingsMessagesController
+ (BOOL)currentMessageAutoKeepForType:(int)type;
+ (BOOL)shouldShowFirstPartyExtension;
+ (IMSyncedSettingsManaging)syncedSettingsManager;
+ (id)getDefaultExtension;
+ (id)removeFirstPartyExtensionFromArrayIfNecessary:(id)necessary;
- (AUSystemSettingsSpecifiersProvider)systemSettingsSpecifierProvider;
- (BOOL)_allAccountsAreDeactivated;
- (BOOL)_imageForkedFromMeCard;
- (BOOL)_isAppleIDUpdateNeeded;
- (BOOL)_isMadridAccountOperational;
- (BOOL)_isMadridSwitchOn;
- (BOOL)_isMessagesInICloudEnabled;
- (BOOL)_isMessagesTheDefaultMessagingApp;
- (BOOL)_isRaiseGestureSupported;
- (BOOL)_isRegistrationInProgress;
- (BOOL)_isSMSDevice;
- (BOOL)_meCardSharingEnabled;
- (BOOL)_registrationFailures:(id)failures areAllOfKind:(int64_t)kind;
- (BOOL)_registrationFailures:(id)failures containsFailure:(int64_t)failure;
- (BOOL)_sharedWithYouEnabled;
- (BOOL)_shouldShowNotificationsFromUnknownSenders;
- (BOOL)_shouldShowSatelliteDemoModeButton;
- (BOOL)_shouldShowTextMessageFilterForSpecifier:(id)specifier;
- (BOOL)authenticationController:(id)controller shouldContinueWithAuthenticationResults:(id)results error:(id)error forContext:(id)context;
- (BOOL)currentRegionWantsOnlineSafetyLink;
- (BOOL)hasPhoneNumber;
- (BOOL)hasiMessageFilteringExtensions;
- (BOOL)isCheckInAllowedInRegion;
- (BOOL)shouldShowBlocklistSettings;
- (BOOL)shouldShowCharacterCount;
- (BOOL)shouldShowCheckInLocationHistorySettings;
- (BOOL)shouldShowContactPhotoSettings;
- (BOOL)shouldShowInboxSummarySettings;
- (BOOL)shouldShowJunkConversationsRow;
- (BOOL)shouldShowJunkFilteringReceipts;
- (BOOL)shouldShowMadridAccounts;
- (BOOL)shouldShowMadridSignin;
- (BOOL)shouldShowMadridSwitch;
- (BOOL)shouldShowReadReceipts;
- (BOOL)shouldShowSMSRelaySettings;
- (BOOL)shouldShowSendAsSMS;
- (BOOL)shouldShowSharedWithYouSettings;
- (BOOL)shouldShowSiriSettings;
- (BOOL)shouldShowUpdateAppleID;
- (BOOL)shouldShowiMessageApps;
- (CKMultipleCTSubscriptionsController)mmsMessagingController;
- (CKRCSController)rcsMessagingController;
- (CKSafariViewControllerImportWorkaround)safariImportWorkaround;
- (CKSettingsMessagesController)init;
- (PSController)blackholeConversationListViewController;
- (id)_failedAccounts;
- (id)_iMessageAppsViewController;
- (id)_madridSettingsController;
- (id)_messagesForBusinessViewController;
- (id)_notificationsUnknownSendersViewController;
- (id)_registrationFailures;
- (id)_safetyURLForCurrentRegion;
- (id)_sharedWithYouViewController;
- (id)_smsRelayDevicesController;
- (id)_switchFooterText:(unint64_t *)text;
- (id)_syncManager;
- (id)_textMessageFilteringViewController;
- (id)areJunkFilteringReceiptsEnabled:(id)enabled;
- (id)areReadReceiptsEnabled:(id)enabled;
- (id)checkInLocationHistorySettingsSpecifierIdentifiers;
- (id)controllerForSpecifier:(id)specifier;
- (id)getAccountSummaryForSpecifier:(id)specifier;
- (id)getAudioMessageAutoKeep:(id)keep;
- (id)getCheckInLocationHistorySetting:(id)setting;
- (id)getMMSDictionary;
- (id)getMessagesInICloudEnabledSpecifier:(id)specifier;
- (id)getNameAndPhotoSharingFooterText;
- (id)getNameAndPhotoSharingSpecifierSummary:(id)summary;
- (id)getNotificationsUnknownSendersForSpecifier:(id)specifier;
- (id)getPreviewTranscodingEnabled:(id)enabled;
- (id)getRaiseToListenEnabled:(id)enabled;
- (id)getSMSRelayDevicesSummary:(id)summary;
- (id)getSharedWithYouForSpecifier:(id)specifier;
- (id)getTextMessageFilterForSpecifier:(id)specifier;
- (id)iMessageAppsIdentifiers;
- (id)inboxSummarySettingsSpecifierIdentifiers;
- (id)isConversationListFilteringEnabled:(id)enabled;
- (id)isDeliveryReportsEnabled:(id)enabled;
- (id)isInboxSummarizationEnabled:(id)enabled;
- (id)isMMSEnabled:(id)enabled;
- (id)isMadridEnabled:(id)enabled;
- (id)isSiriToneNotificationEnabled:(id)enabled;
- (id)isTranscriptBackgroundsEnabledViaSyncedSettings;
- (id)madridEnabledSpecifierIdentifiers;
- (id)madridSigninButtonTextForSpecifier:(id)specifier;
- (id)messagesFilteringSpecifierIdentifiers;
- (id)nameAndPhotoSharingSpecifiers;
- (id)newDNDGlobalConfigurationService;
- (id)onlineSafetyRegionCodesURLMapping;
- (id)onlineSafetySettingsSpecifierIdentifiers;
- (id)photoBackgroundAutomaticScrollDockingEnabled:(id)enabled;
- (id)sharedWithYouSettingsSpecifierIdentifiers;
- (id)specifiers;
- (id)suppressedConversationBackgroundSpecifierIdentifiers;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)willSendGroupMMS:(id)s;
- (int64_t)_debugFailureReason;
- (unint64_t)_meCardSharingAudience;
- (void)_clearMessagesAppExtensionSalt;
- (void)_isMessagesTheDefaultMessagingApp;
- (void)_openPhoneNumberActivationLearnMorePage:(id)page;
- (void)_setupAccountHandlers;
- (void)_setupAccountHandlersForDisabling;
- (void)_setupTextMessageGroupSpecifiers:(id)specifiers wantsTextMessageBasicGroup:(BOOL)group;
- (void)_showMadridSetupIfNecessary:(BOOL)necessary;
- (void)_showPrivacySheetForiMessageFaceTime:(id)time;
- (void)_showSetupMeCardAlert;
- (void)_showSignInController;
- (void)_startListeningForProfileChanges;
- (void)_stopListeningForProfileChanges;
- (void)_updateSwitchDelayed;
- (void)_updateUIWithError:(id)error;
- (void)applicationDidResume;
- (void)applicationWillSuspend;
- (void)configureCheckInSpecifiers:(id)specifiers;
- (void)dealloc;
- (void)emitNavigationEvent:(id)event deepLinkURL:(id)l;
- (void)endMatchingExtensions;
- (void)findSpamExtensions;
- (void)firstRunControllerDidFinish:(id)finish finished:(BOOL)finished;
- (void)messageFilteringTapped:(id)tapped;
- (void)nameAndPhotoSharingForSpecifier:(id)specifier;
- (void)notifyDNDFocusStatusAuthorizationChanged;
- (void)notifyThatConversationFilteringChanged;
- (void)onboardingControllerDidFinish:(id)finish;
- (void)openOnlineSafetyURL;
- (void)photoBackgroundAutomaticScrollDockingEnabled:(id)enabled specifier:(id)specifier;
- (void)presentCheckInPrivacySplashController;
- (void)satelliteDemoModeTappedWithSpecifier:(id)specifier;
- (void)setAudioMessageAutoKeep:(id)keep specifier:(id)specifier;
- (void)setConversationBackgroundsEnabled:(id)enabled specifier:(id)specifier;
- (void)setConversationListFilteringEnabled:(id)enabled specifier:(id)specifier;
- (void)setDeliveryReportsEnabled:(id)enabled specifier:(id)specifier;
- (void)setInboxSummarizationEnabled:(id)enabled specifier:(id)specifier;
- (void)setJunkFilteringReceiptsEnabled:(id)enabled specifier:(id)specifier;
- (void)setKeepMessages:(id)messages specifier:(id)specifier;
- (void)setMMSEnabled:(id)enabled specifier:(id)specifier;
- (void)setMadridEnabled:(id)enabled specifier:(id)specifier;
- (void)setPreviewTranscodingEnabled:(id)enabled specifier:(id)specifier;
- (void)setRaiseToListenEnabled:(id)enabled specifier:(id)specifier;
- (void)setReadReceiptsEnabled:(id)enabled specifier:(id)specifier;
- (void)setSiriToneNotificationEnabled:(id)enabled specifier:(id)specifier;
- (void)sharingSettingsViewController:(id)controller didSelectSharingAudience:(unint64_t)audience;
- (void)sharingSettingsViewController:(id)controller didUpdateWithSharingResult:(id)result;
- (void)showCKVSettings:(id)settings;
- (void)showMeCardViewControllerWithNickname:(id)nickname;
- (void)showMessagesInICloudSettings:(id)settings;
- (void)showMultiplePhoneNumbersAlertForNicknames;
- (void)showNicknameOnboardingController;
- (void)showNicknameOnboardingOrEditFlowController;
- (void)showiCloudNotSignedInAlertForNicknames;
- (void)systemApplicationDidEnterBackground;
- (void)systemApplicationWillEnterForeground;
- (void)systemPolicyForApp:(id)app didUpdateForSystemPolicyOptions:(unint64_t)options withValue:(id)value;
@end

@implementation CKSettingsMessagesController

+ (IMSyncedSettingsManaging)syncedSettingsManager
{
  v2 = _syncedSettingsManager_0;
  if (!_syncedSettingsManager_0)
  {
    v3 = objc_alloc_init(MEMORY[0x277D18DE8]);
    v4 = _syncedSettingsManager_0;
    _syncedSettingsManager_0 = v3;

    v2 = _syncedSettingsManager_0;
  }

  return v2;
}

- (CKSettingsMessagesController)init
{
  v26.receiver = self;
  v26.super_class = CKSettingsMessagesController;
  v2 = [(CKSettingsMessagesController *)&v26 init];
  if (v2)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel_newCarrierNotification name:@"PSNewCarrierNotification" object:0];

    if (!v2->_filteringController)
    {
      v4 = objc_alloc_init(CKFilteringListController);
      filteringController = v2->_filteringController;
      v2->_filteringController = v4;
    }

    v6 = [CNFRegController controllerForServiceType:1];
    [(CNFRegListController *)v2 setRegController:v6];

    regController = [(CNFRegListController *)v2 regController];
    [regController connect:1];

    [(CKSettingsMessagesController *)v2 _startListeningForProfileChanges];
    v8 = objc_alloc_init(CKSettingsiMessageAppManager);
    [(CKSettingsMessagesController *)v2 setIMessageAppManager:v8];

    currentDevice = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    if (userInterfaceIdiom == 1)
    {
      [CNFRegWizardController setGlobalAppearanceStyle:2];
      [CNFRegWizardController setSupportsAutoRotation:1];
    }

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, _reloadSpecifiersFromNotification, @"com.apple.MobileSMS.ReadReceiptsEnabled.changed", v2, CFNotificationSuspensionBehaviorDeliverImmediately);
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, _reloadSpecifiersFromNotification, @"com.apple.MobileSMS.SettingsChangedByAppIntents", v2, CFNotificationSuspensionBehaviorDeliverImmediately);
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, _reloadSpecifiersFromNotification, @"com.apple.MobileSMS.IncomingMessageAlertFiltration.changed", v2, CFNotificationSuspensionBehaviorDeliverImmediately);
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, _reloadSpecifiersFromNotification, *MEMORY[0x277D443B8], v2, CFNotificationSuspensionBehaviorDeliverImmediately);
    v12 = +[CKSettingsMessagesController syncedSettingsManager];
    [v12 addObserver:v2 selector:sel__syncedSettingsDidChange_ key:0];

    v13 = +[CKSettingsMessagesController syncedSettingsManager];
    [v13 addObserver:v2 selector:sel__syncedSettingsDidChange_ key:9];

    v14 = +[CKSettingsMessagesController syncedSettingsManager];
    [v14 addObserver:v2 selector:sel__syncedSettingsDidChange_ key:10];

    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, _reloadSpecifiersFromNotification, *MEMORY[0x277D18CC0], v2, CFNotificationSuspensionBehaviorDeliverImmediately);
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, _reloadSpecifiersFromNotification, @"CKSettingsiMessageAppManagerInstalledAppsDidChange", v2, CFNotificationSuspensionBehaviorDeliverImmediately);
    mEMORY[0x277D18D68] = [MEMORY[0x277D18D68] sharedInstance];
    [mEMORY[0x277D18D68] addListenerID:@"CKSettingsMessagesController" capabilities:(*MEMORY[0x277D19360] | *MEMORY[0x277D19350]) | *MEMORY[0x277D19378]];

    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 addObserver:v2 selector:sel__nicknameSettingsDidChange_ name:*MEMORY[0x277D1A3A8] object:0];

    v17 = objc_alloc_init(CKLazuliEnablementManager);
    [(CKSettingsMessagesController *)v2 setLazuliEnablementManager:v17];

    v18 = objc_alloc_init(CKSharedSettingsHelper);
    [(CKSettingsMessagesController *)v2 setSharedSettingsHelper:v18];

    mEMORY[0x277D18D48] = [MEMORY[0x277D18D48] sharedInstance];
    v20 = objc_opt_respondsToSelector();

    if (v20)
    {
      mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
      v22 = [mEMORY[0x277D75128] applicationState] == 0;

      mEMORY[0x277D18D48]2 = [MEMORY[0x277D18D48] sharedInstance];
      [mEMORY[0x277D18D48]2 startMonitorWithOffer:v22];
    }

    defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter3 addObserver:v2 selector:sel__lazuliDisabledByProfileDidChange name:@"CNFLazuliDisabledByProfileChangedNotification" object:0];
  }

  return v2;
}

- (AUSystemSettingsSpecifiersProvider)systemSettingsSpecifierProvider
{
  systemSettingsSpecifierProvider = self->_systemSettingsSpecifierProvider;
  if (!systemSettingsSpecifierProvider)
  {
    v4 = [objc_alloc(MEMORY[0x277CEC670]) initWithApplicationBundleIdentifier:@"com.apple.MobileSMS"];
    v5 = self->_systemSettingsSpecifierProvider;
    self->_systemSettingsSpecifierProvider = v4;

    [(AUSystemSettingsSpecifiersProvider *)self->_systemSettingsSpecifierProvider setDelegate:self];
    systemSettingsSpecifierProvider = self->_systemSettingsSpecifierProvider;
  }

  return systemSettingsSpecifierProvider;
}

- (void)dealloc
{
  [(CKSettingsMessagesController *)self endMatchingExtensions];
  filteringController = self->_filteringController;
  self->_filteringController = 0;

  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self];
  [(CKSettingsMessagesController *)self _stopListeningForProfileChanges];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"com.apple.MobileSMS.ReadReceiptsEnabled.changed", 0);
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"com.apple.MobileSMS.SettingsChangedByAppIntents", 0);
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"com.apple.MobileSMS.IncomingMessageAlertFiltration.changed", 0);
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"CKSettingsiMessageAppManagerInstalledAppsDidChange", 0);
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, *MEMORY[0x277D443B8], 0);
  v6 = +[CKSettingsMessagesController syncedSettingsManager];
  [v6 removeObserver:self key:0];

  v7 = +[CKSettingsMessagesController syncedSettingsManager];
  [v7 removeObserver:self key:9];

  v8 = +[CKSettingsMessagesController syncedSettingsManager];
  [v8 removeObserver:self key:10];

  [CKSettingsMessagesController setSyncedSettingsManager:0];
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, *MEMORY[0x277D18CC0], 0);
  v9.receiver = self;
  v9.super_class = CKSettingsMessagesController;
  [(CNFRegListController *)&v9 dealloc];
}

- (void)_startListeningForProfileChanges
{
  if (!self->_profileToken)
  {
    v6[0] = 0;
    v6[1] = v6;
    v6[2] = 0x3042000000;
    v6[3] = __Block_byref_object_copy__4;
    v6[4] = __Block_byref_object_dispose__4;
    objc_initWeak(&v7, self);
    v3 = MEMORY[0x277D85CD0];
    v4 = MEMORY[0x277D85CD0];
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __64__CKSettingsMessagesController__startListeningForProfileChanges__block_invoke;
    handler[3] = &unk_278DE8CE8;
    handler[4] = v6;
    notify_register_dispatch("com.apple.ManagedConfiguration.profileListChanged", &self->_profileToken, v3, handler);

    _Block_object_dispose(v6, 8);
    objc_destroyWeak(&v7);
  }
}

void __64__CKSettingsMessagesController__startListeningForProfileChanges__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(*(a1 + 32) + 8) + 40));
  [WeakRetained endMatchingExtensions];

  v3 = objc_loadWeakRetained((*(*(a1 + 32) + 8) + 40));
  [v3 findSpamExtensions];

  v4 = objc_loadWeakRetained((*(*(a1 + 32) + 8) + 40));
  [v4 reloadSpecifiers];
}

- (void)_stopListeningForProfileChanges
{
  profileToken = self->_profileToken;
  if (profileToken)
  {
    notify_cancel(profileToken);
    self->_profileToken = 0;
  }
}

void __46__CKSettingsMessagesController_viewDidAppear___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*&v1[*MEMORY[0x277D3FC48]] specifierForID:@"MADRID_ACCOUNTS_BUTTON"];
  [v1 reloadSpecifier:v2];
}

- (void)emitNavigationEvent:(id)event deepLinkURL:(id)l
{
  v6 = MEMORY[0x277CCAEB8];
  lCopy = l;
  eventCopy = event;
  v9 = [v6 alloc];
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  bundleURL = [v11 bundleURL];
  v13 = [v9 initWithKey:@"Messages" table:0 locale:currentLocale bundleURL:bundleURL];

  [(CKSettingsMessagesController *)self pe_emitNavigationEventForApplicationSettingsWithApplicationBundleIdentifier:@"com.apple.MobileSMS" title:v13 localizedNavigationComponents:eventCopy deepLink:lCopy];
}

- (void)applicationWillSuspend
{
  v3.receiver = self;
  v3.super_class = CKSettingsMessagesController;
  [(CKSettingsMessagesController *)&v3 applicationWillSuspend];
  [(CKSettingsMessagesController *)self endMatchingExtensions];
}

- (void)applicationDidResume
{
  v3.receiver = self;
  v3.super_class = CKSettingsMessagesController;
  [(CNFRegListController *)&v3 applicationDidResume];
  if (!self->_showingChildViewController)
  {
    [(CKSettingsMessagesController *)self findSpamExtensions];
  }
}

- (void)systemApplicationWillEnterForeground
{
  v5.receiver = self;
  v5.super_class = CKSettingsMessagesController;
  [(CNFRegListController *)&v5 systemApplicationWillEnterForeground];
  [(CKSettingsMessagesController *)self _setupAccountHandlers];
  regController = [(CNFRegListController *)self regController];
  isConnected = [regController isConnected];

  if (isConnected)
  {
    [(CKSettingsMessagesController *)self reloadSpecifiers];
  }
}

- (void)systemApplicationDidEnterBackground
{
  v3.receiver = self;
  v3.super_class = CKSettingsMessagesController;
  [(CNFRegListController *)&v3 systemApplicationDidEnterBackground];
  [(CNFRegListController *)self removeAllHandlers];
}

- (void)_showPrivacySheetForiMessageFaceTime:(id)time
{
  v4 = [MEMORY[0x277D37678] presenterForPrivacySplashWithIdentifier:*MEMORY[0x277D376F8]];
  [v4 setPresentingViewController:self];
  [v4 present];
}

- (void)_openPhoneNumberActivationLearnMorePage:(id)page
{
  mEMORY[0x277D07DF0] = [MEMORY[0x277D07DF0] sharedInstance];
  v3 = CNFStringKeyForProduct(@"phone-number-activation-learn-more");
  v4 = [mEMORY[0x277D07DF0] objectForKey:v3];
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = v4;
  }

  else
  {
    v6 = CNFRegStringTableName();
    v7 = CommunicationsSetupUIBundle();
    v5 = CNFLocalizedStringFromTableInBundleWithFallback(@"PHONE_NUMBER_ACTIVATION_LEARN_MORE_URL", v6, v7);
  }

  v8 = *MEMORY[0x277D76620];
  v9 = [MEMORY[0x277CBEBC0] URLWithString:v5];
  [v8 openURL:v9 withCompletionHandler:0];
}

- (void)systemPolicyForApp:(id)app didUpdateForSystemPolicyOptions:(unint64_t)options withValue:(id)value
{
  v16 = *MEMORY[0x277D85DE8];
  appCopy = app;
  valueCopy = value;
  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v12 = 134218242;
      optionsCopy = options;
      v14 = 2112;
      v15 = valueCopy;
      _os_log_impl(&dword_243BE5000, v10, OS_LOG_TYPE_INFO, "System policy %ld did update with value: %@", &v12, 0x16u);
    }
  }

  if ((options & 0x400000000) != 0)
  {
    [(CKSettingsMessagesController *)self notifyDNDFocusStatusAuthorizationChanged];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)notifyDNDFocusStatusAuthorizationChanged
{
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_243BE5000, v3, OS_LOG_TYPE_INFO, "Notifying DND that focus status authorization has changed.", v6, 2u);
    }
  }

  newDNDGlobalConfigurationService = [(CKSettingsMessagesController *)self newDNDGlobalConfigurationService];
  if (objc_opt_respondsToSelector())
  {
    [newDNDGlobalConfigurationService didChangeFocusStatusSharingSettingForApplicationIdentifier:@"com.apple.MobileSMS"];
  }

  else
  {
    v5 = IMLogHandleForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [CKSettingsMessagesController notifyDNDFocusStatusAuthorizationChanged];
    }
  }
}

- (id)newDNDGlobalConfigurationService
{
  v2 = CUTWeakLinkClass();
  if (v2)
  {
    v3 = [v2 serviceForClientIdentifier:@"com.apple.donotdisturb.preferences"];
    v4 = v3;
    if (v3)
    {
      v4 = v3;
      v5 = v4;
    }

    else
    {
      v6 = IMLogHandleForCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        [CKSettingsMessagesController newDNDGlobalConfigurationService];
      }

      v5 = 0;
    }
  }

  else
  {
    v4 = IMLogHandleForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [CKSettingsMessagesController newDNDGlobalConfigurationService];
    }

    v5 = 0;
  }

  return v5;
}

- (id)specifiers
{
  v134[1] = *MEMORY[0x277D85DE8];
  v3 = *(&self->super.super.super.super.super.super.isa + *MEMORY[0x277D3FC48]);
  if (v3)
  {
    goto LABEL_109;
  }

  v123 = *MEMORY[0x277D3FC48];
  v4 = objc_alloc(MEMORY[0x277CBEB18]);
  v5 = [(CKSettingsMessagesController *)self loadSpecifiersFromPlistName:@"Messages" target:self];
  v6 = [v4 initWithArray:v5];

  systemSettingsSpecifierProvider = [(CKSettingsMessagesController *)self systemSettingsSpecifierProvider];
  specifiers = [systemSettingsSpecifierProvider specifiers];
  v9 = [specifiers mutableCopy];

  v122 = v9;
  if (v9)
  {
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.wireless", @"com.apple.MobileSMS"];
    v11 = [v9 indexOfSpecifierWithID:v10];

    if (v11 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [v9 removeObjectAtIndex:v11];
    }

    v12 = [v9 arrayByAddingObjectsFromArray:v6];
    v13 = [v12 mutableCopy];

    v6 = v13;
  }

  CFPreferencesSynchronize(@"com.apple.MobileSMS", *MEMORY[0x277CBF040], *MEMORY[0x277CBF010]);
  mEMORY[0x277D07DB0] = [MEMORY[0x277D07DB0] sharedInstance];
  accountModificationRestricted = [mEMORY[0x277D07DB0] accountModificationRestricted];

  if ([(CKSettingsMessagesController *)self shouldShowMadridSwitch])
  {
    v15 = [v6 specifierForID:@"MADRID_ENABLED_GROUP"];
    *buf = 0;
    v16 = [(CKSettingsMessagesController *)self _switchFooterText:buf];
    if (*buf == 2)
    {
      v28 = objc_opt_class();
      v29 = NSStringFromClass(v28);
      [v15 setProperty:v29 forKey:*MEMORY[0x277D3FF48]];

      v30 = CommunicationsSetupUIBundle();
      v31 = CNFRegStringTableName();
      v32 = [v30 localizedStringForKey:@"PHONE_NUMBER_ACTIVATION_LEARN_MORE" value:&stru_2856D3978 table:v31];

      v33 = [MEMORY[0x277CCACA8] stringWithFormat:@" %@", v32];
      v23 = [v16 stringByAppendingString:v33];

      v137.location = [v23 rangeOfString:v32];
      v34 = NSStringFromRange(v137);
      [v15 setProperty:v34 forKey:*MEMORY[0x277D3FF58]];

      [v15 setProperty:v23 forKey:*MEMORY[0x277D3FF70]];
      v35 = [MEMORY[0x277CCAE60] valueWithNonretainedObject:self];
      [v15 setProperty:v35 forKey:*MEMORY[0x277D3FF68]];

      v36 = NSStringFromSelector(sel__openPhoneNumberActivationLearnMorePage_);
      [v15 setProperty:v36 forKey:*MEMORY[0x277D3FF50]];
    }

    else if (*buf == 1)
    {
      v17 = objc_opt_class();
      v18 = NSStringFromClass(v17);
      [v15 setProperty:v18 forKey:*MEMORY[0x277D3FF48]];

      v19 = CommunicationsSetupUIBundle();
      v20 = CNFRegStringTableName();
      v21 = [v19 localizedStringForKey:@"LEARN_MORE" value:&stru_2856D3978 table:v20];

      v22 = [MEMORY[0x277CCACA8] stringWithFormat:@" %@", v21];
      v23 = [v16 stringByAppendingString:v22];

      v136.location = [v23 rangeOfString:v21];
      v24 = NSStringFromRange(v136);
      [v15 setProperty:v24 forKey:*MEMORY[0x277D3FF58]];

      [v15 setProperty:v23 forKey:*MEMORY[0x277D3FF70]];
      v25 = [MEMORY[0x277CCAE60] valueWithNonretainedObject:self];
      [v15 setProperty:v25 forKey:*MEMORY[0x277D3FF68]];

      v26 = NSStringFromSelector(sel__showPrivacySheetForiMessageFaceTime_);
      [v15 setProperty:v26 forKey:*MEMORY[0x277D3FF50]];
    }

    else
    {
      [v15 setProperty:0 forKey:*MEMORY[0x277D3FF48]];
      [v15 setProperty:v16 forKey:*MEMORY[0x277D3FF88]];
      v23 = v16;
    }

    v37 = [v6 specifierForID:@"MADRID_ENABLED_SWITCH"];
    v38 = [MEMORY[0x277CCABB0] numberWithBool:accountModificationRestricted ^ 1u];
    [v37 setProperty:v38 forKey:*MEMORY[0x277D3FF38]];
  }

  else
  {
    madridSwitchSpecifierIdentifiers = [(CKSettingsMessagesController *)self madridSwitchSpecifierIdentifiers];
    _removeSpecifiersWithIdentifiers(v6, madridSwitchSpecifierIdentifiers);
  }

  if (![(CKSettingsMessagesController *)self shouldShowDeliveryReceipts])
  {
    deliveryReceiptSpecifierIdentifiers = [(CKSettingsMessagesController *)self deliveryReceiptSpecifierIdentifiers];
    _removeSpecifiersWithIdentifiers(v6, deliveryReceiptSpecifierIdentifiers);
  }

  if (![(CKSettingsMessagesController *)self shouldShowReadReceipts])
  {
    readReceiptSpecifierIdentifiers = [(CKSettingsMessagesController *)self readReceiptSpecifierIdentifiers];
    _removeSpecifiersWithIdentifiers(v6, readReceiptSpecifierIdentifiers);
  }

  suppressedConversationBackgroundSpecifierIdentifiers = [(CKSettingsMessagesController *)self suppressedConversationBackgroundSpecifierIdentifiers];
  _removeSpecifiersWithIdentifiers(v6, suppressedConversationBackgroundSpecifierIdentifiers);

  if (![(CKSettingsMessagesController *)self shouldShowContactPhotoSettings])
  {
    contactPhotoSettingsSpecifierIdentifiers = [(CKSettingsMessagesController *)self contactPhotoSettingsSpecifierIdentifiers];
    _removeSpecifiersWithIdentifiers(v6, contactPhotoSettingsSpecifierIdentifiers);
  }

  if ([(CKSettingsMessagesController *)self shouldShowMadridAccounts])
  {
    madridEnabledSpecifierIdentifiers = [v6 specifierForID:@"MADRID_ACCOUNTS_BUTTON"];
    v44 = [MEMORY[0x277CCABB0] numberWithBool:accountModificationRestricted ^ 1u];
    [madridEnabledSpecifierIdentifiers setProperty:v44 forKey:*MEMORY[0x277D3FF38]];
  }

  else
  {
    madridEnabledSpecifierIdentifiers = [(CKSettingsMessagesController *)self madridEnabledSpecifierIdentifiers];
    _removeSpecifiersWithIdentifiers(v6, madridEnabledSpecifierIdentifiers);
  }

  if (![(CKSettingsMessagesController *)self shouldShowUpdateAppleID])
  {
    v134[0] = @"MADRID_UPDATE_APPLEID_BUTTON";
    v45 = [MEMORY[0x277CBEA60] arrayWithObjects:v134 count:1];
    _removeSpecifiersWithIdentifiers(v6, v45);
    goto LABEL_27;
  }

  if (_os_feature_enabled_impl())
  {
    v45 = [v6 specifierForID:@"MADRID_UPDATE_APPLEID_BUTTON"];
    v46 = MessagesSettingsLocalizedString(@"MADRID_UPDATE_APPLEID_APPLEACCOUNT");
    [v45 setProperty:v46 forKey:*MEMORY[0x277D40170]];
    [v45 setName:v46];

LABEL_27:
  }

  v133 = @"MESSAGES_IN_ICLOUD";
  v47 = [MEMORY[0x277CBEA60] arrayWithObjects:&v133 count:1];
  _removeSpecifiersWithIdentifiers(v6, v47);

  shouldShowCharacterCount = [(CKSettingsMessagesController *)self shouldShowCharacterCount];
  if (!shouldShowCharacterCount)
  {
    characterCountSpecifierIdentifiers = [(CKSettingsMessagesController *)self characterCountSpecifierIdentifiers];
    _removeSpecifiersWithIdentifiers(v6, characterCountSpecifierIdentifiers);
  }

  if ([(CKSettingsMessagesController *)self shouldShowBlocklistSettings])
  {
    v50 = MEMORY[0x277D3FAD8];
    v51 = CommunicationsSetupUIBundle();
    v52 = CNFRegStringTableName();
    v53 = [v51 localizedStringForKey:@"BLOCKED_CONTACTS" value:&stru_2856D3978 table:v52];
    v54 = [v50 preferenceSpecifierNamed:v53 target:self set:0 get:0 detail:0 cell:2 edit:0];

    v55 = PSBundlePathForPreferenceBundle();
    [v54 setProperty:v55 forKey:*MEMORY[0x277D40000]];

    [v54 setProperty:@"PHBlocklistSettingsListController" forKey:*MEMORY[0x277D3FF08]];
    [v54 setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FE00]];
    [v54 setControllerLoadAction:sel_lazyLoadBundle_];
    [v54 setIdentifier:@"BLOCKLIST_SETTINGS_MAIN_SPECIFIER_IDENTIFIER"];
    v56 = [v6 indexOfSpecifierWithID:@"MMS_EMAIL_CELL"];
    if (v56 <= [v6 count])
    {
      [v6 insertObject:v54 atIndex:v56];
    }

    shouldShowCharacterCount = 1;
  }

  if ([(CKSettingsMessagesController *)self shouldShowSendAsSMS])
  {
    lazuliEnablementManager = [(CKSettingsMessagesController *)self lazuliEnablementManager];
    isRCSSupportedForAnyActiveSubscription = [lazuliEnablementManager isRCSSupportedForAnyActiveSubscription];

    if (isRCSSupportedForAnyActiveSubscription)
    {
      [v6 specifierForID:@"PRE_LAZULI_SEND_AS_SMS_GROUP"];
    }

    else
    {
      [v6 specifierForID:@"SEND_AS_SMS_GROUP"];
    }
    sendAsSMSIdentifiers = ;
    [v6 removeObject:sendAsSMSIdentifiers];
  }

  else
  {
    sendAsSMSIdentifiers = [(CKSettingsMessagesController *)self sendAsSMSIdentifiers];
    _removeSpecifiersWithIdentifiers(v6, sendAsSMSIdentifiers);
  }

  if (![(CKSettingsMessagesController *)self shouldShowiMessageApps])
  {
    iMessageAppsIdentifiers = [(CKSettingsMessagesController *)self iMessageAppsIdentifiers];
    _removeSpecifiersWithIdentifiers(v6, iMessageAppsIdentifiers);
  }

  if ([(CKSettingsMessagesController *)self shouldShowAudioMessageSettings])
  {
    if ([(CKSettingsMessagesController *)self shouldShowRaiseToListenSwitch])
    {
      raiseToListenSpecifierIdentifiers = MessagesSettingsLocalizedString(@"RAISE_TO_LISTEN_DESCRIPTION");
      v62 = [v6 specifierForID:@"AUDIO_MESSAGES_GROUP"];
      [v62 setProperty:raiseToListenSpecifierIdentifiers forKey:*MEMORY[0x277D3FF88]];
    }

    else
    {
      raiseToListenSpecifierIdentifiers = [(CKSettingsMessagesController *)self raiseToListenSpecifierIdentifiers];
      _removeSpecifiersWithIdentifiers(v6, raiseToListenSpecifierIdentifiers);
    }
  }

  else
  {
    raiseToListenSpecifierIdentifiers = [(CKSettingsMessagesController *)self audioMessageSettingsSpecifierIdentifiers];
    _removeSpecifiersWithIdentifiers(v6, raiseToListenSpecifierIdentifiers);
  }

  mEMORY[0x277D1A9B8] = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  isIntroductionsEnabled = [mEMORY[0x277D1A9B8] isIntroductionsEnabled];

  if (isIntroductionsEnabled)
  {
    iMessageFilteringSpecifierIdentifiers = [(CKSettingsMessagesController *)self iMessageFilteringSpecifierIdentifiers];
    _removeSpecifiersWithIdentifiers(v6, iMessageFilteringSpecifierIdentifiers);

    v132[0] = @"MADRID_FILTER_GROUP";
    v132[1] = @"SPAM_FILTERING";
    v66 = [MEMORY[0x277CBEA60] arrayWithObjects:v132 count:2];
    _removeSpecifiersWithIdentifiers(v6, v66);

    v67 = [v6 specifierForID:@"FILTER_NEW_SENDERS_SWITCH"];
    v68 = MessagesSettingsLocalizedString(@"FILTER_UNKNOWN_SENDERS_SUBTITLE");
    v69 = *MEMORY[0x277D40160];
    [v67 setObject:v68 forKeyedSubscript:*MEMORY[0x277D40160]];

    v70 = objc_opt_class();
    v71 = *MEMORY[0x277D3FE58];
    [v67 setProperty:v70 forKey:*MEMORY[0x277D3FE58]];
    if (![(CKSettingsMessagesController *)self _shouldShowNotificationsFromUnknownSenders])
    {
      v131 = @"NOTIFICATIONS_UNKNOWN_SENDERS_BUTTON";
      v72 = [MEMORY[0x277CBEA60] arrayWithObjects:&v131 count:1];
      _removeSpecifiersWithIdentifiers(v6, v72);
    }

    filterUnkownSendersSpecifierIdentifiers = [v6 specifierForID:@"TEXT_MESSAGE_FILTERING"];
    if (![(CKSettingsMessagesController *)self _shouldShowTextMessageFilterForSpecifier:filterUnkownSendersSpecifierIdentifiers])
    {
      v130 = @"TEXT_MESSAGE_FILTERING";
      v74 = [MEMORY[0x277CBEA60] arrayWithObjects:&v130 count:1];
      _removeSpecifiersWithIdentifiers(v6, v74);
    }

    v75 = [v6 specifierForID:@"SPAM_FILTERING_SWITCH"];
    v76 = MessagesSettingsLocalizedString(@"SPAM_FILTERING_SUBTITLE");
    [v75 setObject:v76 forKeyedSubscript:v69];

    [v75 setProperty:objc_opt_class() forKey:v71];
  }

  else
  {
    messagesFilteringSpecifierIdentifiers = [(CKSettingsMessagesController *)self messagesFilteringSpecifierIdentifiers];
    _removeSpecifiersWithIdentifiers(v6, messagesFilteringSpecifierIdentifiers);

    extensionIDArray = [(CKFilteringListController *)self->_filteringController extensionIDArray];
    v79 = [(CKSettingsMessagesController *)self hasTextMessageFilteringExtensions:extensionIDArray];

    v80 = [v6 specifierForID:@"MADRID_FILTER_GROUP"];
    v67 = v80;
    if (v79)
    {
      [v80 setProperty:0 forKey:*MEMORY[0x277D3FF88]];
      [(CKSettingsMessagesController *)self iMessageFilteringSpecifierIdentifiers];
    }

    else
    {
      v82 = MessagesSettingsLocalizedString(@"MADRID_FILTER");
      [v67 setProperty:v82 forKey:*MEMORY[0x277D3FF88]];

      [(CKSettingsMessagesController *)self spamFilteringSpecifierIdentifiers];
    }
    v81 = ;
    _removeSpecifiersWithIdentifiers(v6, v81);

    filterUnkownSendersSpecifierIdentifiers = [(CKSettingsMessagesController *)self filterUnkownSendersSpecifierIdentifiers];
    _removeSpecifiersWithIdentifiers(v6, filterUnkownSendersSpecifierIdentifiers);
  }

  if (![(CKSettingsMessagesController *)self shouldShowJunkConversationsRow])
  {
    junkConversationsRowIdentifier = [(CKSettingsMessagesController *)self junkConversationsRowIdentifier];
    _removeSpecifiersWithIdentifiers(v6, junkConversationsRowIdentifier);
  }

  if (![(CKSettingsMessagesController *)self shouldShowJunkFilteringReceipts])
  {
    v84 = [v6 specifierForID:@"JUNK_FILTERING_RECEIPTS_GROUP"];
    [v84 setProperty:0 forKey:*MEMORY[0x277D3FF88]];
    junkFilterReceiptsRowIdentifier = [(CKSettingsMessagesController *)self junkFilterReceiptsRowIdentifier];
    _removeSpecifiersWithIdentifiers(v6, junkFilterReceiptsRowIdentifier);
  }

  if (![(CKSettingsMessagesController *)self shouldShowSiriSettings])
  {
    siriSettingsIdentifiers = [(CKSettingsMessagesController *)self siriSettingsIdentifiers];
    _removeSpecifiersWithIdentifiers(v6, siriSettingsIdentifiers);
  }

  if (![(CKSettingsMessagesController *)self shouldShowSMSRelaySettings])
  {
    smsRelaySettingsSpecifierIdentifiers = [(CKSettingsMessagesController *)self smsRelaySettingsSpecifierIdentifiers];
    _removeSpecifiersWithIdentifiers(v6, smsRelaySettingsSpecifierIdentifiers);
  }

  if (![(CKSettingsMessagesController *)self shouldShowGenericSettings])
  {
    genericSettingsSpecifierIdentifiers = [(CKSettingsMessagesController *)self genericSettingsSpecifierIdentifiers];
    _removeSpecifiersWithIdentifiers(v6, genericSettingsSpecifierIdentifiers);
  }

  if ([(CKSettingsMessagesController *)self shouldShowMadridSignin])
  {
    v89 = _os_feature_enabled_impl();
    v90 = CommunicationsSetupUIBundle();
    v91 = CNFRegStringTableName();
    if (v89)
    {
      v92 = @"FACETIME_ACCOUNT_INFO_UNAVAILABLE_APPLEACCOUNT";
    }

    else
    {
      v92 = @"FACETIME_ACCOUNT_INFO_UNAVAILABLE";
    }

    madridSigninSpecifiers = [v90 localizedStringForKey:v92 value:&stru_2856D3978 table:v91];

    v94 = [v6 specifierForID:@"MADRID_SIGNIN_BUTTON"];
    v95 = [MEMORY[0x277CCABB0] numberWithBool:accountModificationRestricted ^ 1u];
    [v94 setProperty:v95 forKey:*MEMORY[0x277D3FF38]];

    [v94 setProperty:madridSigninSpecifiers forKey:*MEMORY[0x277D40170]];
    [v94 setName:madridSigninSpecifiers];
  }

  else
  {
    madridSigninSpecifiers = [(CKSettingsMessagesController *)self madridSigninSpecifiers];
    _removeSpecifiersWithIdentifiers(v6, madridSigninSpecifiers);
  }

  shouldShowNicknames = [(CKSettingsMessagesController *)self shouldShowNicknames];
  v97 = [v6 specifierForID:@"NAME_AND_PHOTO_SHARING_GROUP"];
  v98 = v97;
  if (shouldShowNicknames)
  {
    getNameAndPhotoSharingFooterText = [(CKSettingsMessagesController *)self getNameAndPhotoSharingFooterText];
    v100 = *MEMORY[0x277D3FF88];
    [v98 setProperty:getNameAndPhotoSharingFooterText forKey:*MEMORY[0x277D3FF88]];
  }

  else
  {
    v100 = *MEMORY[0x277D3FF88];
    [v97 setProperty:0 forKey:*MEMORY[0x277D3FF88]];
    getNameAndPhotoSharingFooterText = [(CKSettingsMessagesController *)self nameAndPhotoSharingSpecifiers];
    _removeSpecifiersWithIdentifiers(v6, getNameAndPhotoSharingFooterText);
  }

  mEMORY[0x277D1A908] = [MEMORY[0x277D1A908] sharedInstance];
  ctSubscriptionInfo = [mEMORY[0x277D1A908] ctSubscriptionInfo];
  [(CKSettingsMessagesController *)self setCtSubscriptionInfo:ctSubscriptionInfo];

  if (IMOSLoggingEnabled())
  {
    v103 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v103, OS_LOG_TYPE_INFO))
    {
      ctSubscriptionInfo2 = [(CKSettingsMessagesController *)self ctSubscriptionInfo];
      *buf = 138412290;
      *&buf[4] = ctSubscriptionInfo2;
      _os_log_impl(&dword_243BE5000, v103, OS_LOG_TYPE_INFO, "Sub info %@", buf, 0xCu);
    }
  }

  [(CKSettingsMessagesController *)self _setupTextMessageGroupSpecifiers:v6 wantsTextMessageBasicGroup:shouldShowCharacterCount];
  if (![(CKSettingsMessagesController *)self shouldShowSharedWithYouSettings])
  {
    sharedWithYouSettingsSpecifierIdentifiers = [(CKSettingsMessagesController *)self sharedWithYouSettingsSpecifierIdentifiers];
    _removeSpecifiersWithIdentifiers(v6, sharedWithYouSettingsSpecifierIdentifiers);
  }

  if (![(CKSettingsMessagesController *)self shouldShowOnlineSafetyLink])
  {
    onlineSafetySettingsSpecifierIdentifiers = [(CKSettingsMessagesController *)self onlineSafetySettingsSpecifierIdentifiers];
    _removeSpecifiersWithIdentifiers(v6, onlineSafetySettingsSpecifierIdentifiers);
  }

  if (![(CKSettingsMessagesController *)self shouldShowInboxSummarySettings])
  {
    inboxSummarySettingsSpecifierIdentifiers = [(CKSettingsMessagesController *)self inboxSummarySettingsSpecifierIdentifiers];
    _removeSpecifiersWithIdentifiers(v6, inboxSummarySettingsSpecifierIdentifiers);
  }

  if ([(CKSettingsMessagesController *)self _isSMSDevice]|| [(CKSettingsMessagesController *)self _isMadridAccountOperational])
  {
    v108 = v6;
  }

  else
  {
    v109 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v126 = 0u;
    v127 = 0u;
    v124 = 0u;
    v125 = 0u;
    madridSwitchSpecifierIdentifiers2 = [(CKSettingsMessagesController *)self madridSwitchSpecifierIdentifiers];
    v111 = [madridSwitchSpecifierIdentifiers2 countByEnumeratingWithState:&v124 objects:v128 count:16];
    if (v111)
    {
      v112 = *v125;
      do
      {
        for (i = 0; i != v111; ++i)
        {
          if (*v125 != v112)
          {
            objc_enumerationMutation(madridSwitchSpecifierIdentifiers2);
          }

          v114 = [v6 specifierForID:*(*(&v124 + 1) + 8 * i)];
          if (v114)
          {
            [v109 addObject:v114];
          }
        }

        v111 = [madridSwitchSpecifierIdentifiers2 countByEnumeratingWithState:&v124 objects:v128 count:16];
      }

      while (v111);
    }

    v108 = v109;
  }

  if ([(CKSettingsMessagesController *)self shouldShowCheckInLocationHistorySettings])
  {
    [(CKSettingsMessagesController *)self configureCheckInSpecifiers:v108];
  }

  else
  {
    checkInLocationHistorySettingsSpecifierIdentifiers = [(CKSettingsMessagesController *)self checkInLocationHistorySettingsSpecifierIdentifiers];
    _removeSpecifiersWithIdentifiers(v108, checkInLocationHistorySettingsSpecifierIdentifiers);
  }

  if ([(CKSettingsMessagesController *)self _shouldShowSatelliteDemoModeButton])
  {
    v116 = @"TRY_DEMO_MODE_FOOTER_DESCRIPTION_WLAN";
    if (([MEMORY[0x277D1A9A0] IMDeviceIsGreenTea] & 1) == 0 && !objc_msgSend(MEMORY[0x277D1A9A0], "IMDeviceIsChinaRegion"))
    {
      v116 = @"TRY_DEMO_MODE_FOOTER_DESCRIPTION";
    }

    _satelliteDemoModeSpecifierIdentifiers = MessagesSettingsLocalizedString(v116);
    v118 = [v108 specifierForID:@"SATELLITE_MESSAGING_TITLE_ID"];
    [v118 setProperty:_satelliteDemoModeSpecifierIdentifiers forKey:v100];
  }

  else
  {
    _satelliteDemoModeSpecifierIdentifiers = [(CKSettingsMessagesController *)self _satelliteDemoModeSpecifierIdentifiers];
    _removeSpecifiersWithIdentifiers(v108, _satelliteDemoModeSpecifierIdentifiers);
  }

  objc_storeStrong((&self->super.super.super.super.super.super.isa + v123), v108);
  v3 = *(&self->super.super.super.super.super.super.isa + v123);
LABEL_109:
  v119 = *MEMORY[0x277D85DE8];

  return v3;
}

- (void)_setupTextMessageGroupSpecifiers:(id)specifiers wantsTextMessageBasicGroup:(BOOL)group
{
  groupCopy = group;
  v85 = *MEMORY[0x277D85DE8];
  specifiersCopy = specifiers;
  selfCopy = self;
  __im_subscriptionsWithMMSSupport = [(IMCTXPCServiceSubscriptionInfo *)self->_ctSubscriptionInfo __im_subscriptionsWithMMSSupport];
  array = [MEMORY[0x277CBEB18] array];
  v6 = selfCopy;
  ctSubscriptionInfo = selfCopy->_ctSubscriptionInfo;
  if (objc_opt_respondsToSelector())
  {
    __im_subscriptionsWithRCSSupport = [(IMCTXPCServiceSubscriptionInfo *)selfCopy->_ctSubscriptionInfo __im_subscriptionsWithRCSSupport];
    v66 = [__im_subscriptionsWithRCSSupport mutableCopy];

    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v66, "count")}];
        *buf = 138412290;
        v76 = v10;
        _os_log_impl(&dword_243BE5000, v9, OS_LOG_TYPE_INFO, "subscriptionsWithRCSSupport count %@", buf, 0xCu);
      }
    }

    v6 = selfCopy;
  }

  else
  {
    v66 = array;
  }

  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  subscriptions = [(IMCTXPCServiceSubscriptionInfo *)v6->_ctSubscriptionInfo subscriptions];
  v12 = [subscriptions countByEnumeratingWithState:&v71 objects:v84 count:16];
  if (v12)
  {
    v13 = *v72;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v72 != v13)
        {
          objc_enumerationMutation(subscriptions);
        }

        v15 = *(*(&v71 + 1) + 8 * i);
        if (([v66 containsObject:v15] & 1) == 0)
        {
          lazuliEnablementManager = [(CKSettingsMessagesController *)selfCopy lazuliEnablementManager];
          v17 = [lazuliEnablementManager isRCSDisabledByProfileForSubscriptionContext:v15];

          if (v17)
          {
            [v66 addObject:v15];
            if (IMOSLoggingEnabled())
            {
              v18 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
              {
                label = [v15 label];
                *buf = 138412290;
                v76 = label;
                _os_log_impl(&dword_243BE5000, v18, OS_LOG_TYPE_INFO, "subscriptionsWithRCSSupport found %@ disabled", buf, 0xCu);
              }
            }
          }
        }
      }

      v12 = [subscriptions countByEnumeratingWithState:&v71 objects:v84 count:16];
    }

    while (v12);
  }

  _isMessagesTheDefaultMessagingApp = [(CKSettingsMessagesController *)selfCopy _isMessagesTheDefaultMessagingApp];
  if (_isMessagesTheDefaultMessagingApp)
  {
    v57 = [__im_subscriptionsWithMMSSupport count];
  }

  else
  {
    v57 = 0;
  }

  v60 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  obj = __im_subscriptionsWithMMSSupport;
  v20 = [obj countByEnumeratingWithState:&v67 objects:v83 count:16];
  if (v20)
  {
    v65 = 0;
    v21 = 0;
    v64 = *v68;
    do
    {
      for (j = 0; j != v20; ++j)
      {
        if (*v68 != v64)
        {
          objc_enumerationMutation(obj);
        }

        v23 = *(*(&v67 + 1) + 8 * j);
        mEMORY[0x277D1A908] = [MEMORY[0x277D1A908] sharedInstance];
        v25 = [mEMORY[0x277D1A908] copyCarrierBundleValueForSubscriptionContext:v23 keyHierarchy:&unk_2856EB940 defaultValue:MEMORY[0x277CBEC28] valueIfError:MEMORY[0x277CBEC28]];
        bOOLValue = [v25 BOOLValue];

        v27 = MEMORY[0x277D1A8F8];
        phoneNumber = [v23 phoneNumber];
        labelID = [v23 labelID];
        v30 = [v27 IMUniqueIdentifierForPhoneNumber:phoneNumber simID:labelID];

        v31 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", @"MMSEnabled-", v30];
        phoneNumber2 = [v23 phoneNumber];
        labelID2 = [v23 labelID];
        [CKSettingsMMSHelper mmsDefaultEnabledForPhoneNumber:phoneNumber2 simID:labelID2];

        if (IMGetDomainBoolForKeyWithDefaultValue())
        {
          [v60 addObject:v23];
          ++v65;
        }

        v21 |= bOOLValue;
      }

      v20 = [obj countByEnumeratingWithState:&v67 objects:v83 count:16];
    }

    while (v20);
  }

  else
  {
    v65 = 0;
    v21 = 0;
  }

  if (IMOSLoggingEnabled())
  {
    v34 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
    {
      v35 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v57];
      v36 = [MEMORY[0x277CCABB0] numberWithInt:v65];
      v37 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v60, "count")}];
      v38 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v66, "count")}];
      *buf = 138413058;
      v76 = v35;
      v77 = 2112;
      v78 = v36;
      v79 = 2112;
      v80 = v37;
      v81 = 2112;
      v82 = v38;
      _os_log_impl(&dword_243BE5000, v34, OS_LOG_TYPE_INFO, "ShouldShowMMS %@ subscriptionsWithMMSEnabledCount %@ subscriptionsWithMMSOverrideEnabledCount %@ subscriptionsWithRCSEnabledCount %@", buf, 0x2Au);
    }
  }

  v39 = [v66 count];
  v40 = !_isMessagesTheDefaultMessagingApp;
  if (!v39)
  {
    v40 = 1;
  }

  if (v40)
  {
    rcsMessagingController = [specifiersCopy specifierForID:@"RCS_MESSAGING_CELL"];
    [specifiersCopy removeObject:rcsMessagingController];
  }

  else
  {
    rcsMessagingController = [(CKSettingsMessagesController *)selfCopy rcsMessagingController];
    [rcsMessagingController setCtSubscriptions:v66];
  }

  v42 = v57 == 1 && _isMessagesTheDefaultMessagingApp;
  v43 = [specifiersCopy specifierForID:@"MMS_MESSAGING"];
  if (v42)
  {
    v44 = [obj objectAtIndexedSubscript:0];
    v45 = MEMORY[0x277D1A8F8];
    phoneNumber3 = [v44 phoneNumber];
    labelID3 = [v44 labelID];
    v48 = [v45 IMUniqueIdentifierForPhoneNumber:phoneNumber3 simID:labelID3];

    [v43 setProperty:v48 forKey:@"subscriptionIdentifier"];
  }

  else
  {
    [specifiersCopy removeObject:v43];

    v49 = !_isMessagesTheDefaultMessagingApp;
    if (v57 != 2)
    {
      v49 = 1;
    }

    if ((v49 & 1) == 0)
    {
      mmsMessagingController = [(CKSettingsMessagesController *)selfCopy mmsMessagingController];
      [mmsMessagingController setCtSubscriptions:obj];
      goto LABEL_54;
    }
  }

  mmsMessagingController = [specifiersCopy specifierForID:@"MMS_MESSAGING_CELL"];
  [specifiersCopy removeObject:mmsMessagingController];
LABEL_54:

  if (![(CKSettingsMessagesController *)selfCopy _isMadridAccountOperational]&& (!_isMessagesTheDefaultMessagingApp || v65 == 0))
  {
    v51 = [specifiersCopy specifierForID:@"SHOW_SUBJECT_FIELD_SWITCH"];
    [specifiersCopy removeObject:v51];
  }

  if (_isMessagesTheDefaultMessagingApp && groupCopy)
  {
    if (v57)
    {
      if (v21)
      {
        goto LABEL_63;
      }

      goto LABEL_62;
    }

    if ([v66 count])
    {
      goto LABEL_62;
    }
  }

  v52 = [specifiersCopy specifierForID:@"MMS_BASIC_GROUP"];
  [specifiersCopy removeObject:v52];

  if (((v57 != 0) & v21) == 0)
  {
LABEL_62:
    v53 = [specifiersCopy specifierForID:@"MMS_EMAIL_GROUP"];
    [specifiersCopy removeObject:v53];

    v54 = [specifiersCopy specifierForID:@"MMS_EMAIL_CELL"];
    [specifiersCopy removeObject:v54];
  }

LABEL_63:

  v55 = *MEMORY[0x277D85DE8];
}

- (id)isDeliveryReportsEnabled:(id)enabled
{
  v8 = 0;
  mEMORY[0x277CC36C0] = [MEMORY[0x277CC36C0] sharedMessageCenter];
  v4 = [mEMORY[0x277CC36C0] isDeliveryReportsEnabled:&v8];

  if (v4 == 2)
  {
    mEMORY[0x277CC36C0]2 = [MEMORY[0x277CC36C0] sharedMessageCenter];
    [mEMORY[0x277CC36C0]2 isDeliveryReportsEnabled:&v8];
  }

  v6 = [MEMORY[0x277CCABB0] numberWithBool:v8];

  return v6;
}

- (void)setDeliveryReportsEnabled:(id)enabled specifier:(id)specifier
{
  v5 = MEMORY[0x277CC36C0];
  enabledCopy = enabled;
  sharedMessageCenter = [v5 sharedMessageCenter];
  bOOLValue = [enabledCopy BOOLValue];

  [sharedMessageCenter setDeliveryReportsEnabled:bOOLValue];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.MobileSMS.EnableDeliveryReports.changed", 0, 0, 1u);

  [(CKSettingsMessagesController *)self reloadSpecifiers];
}

- (void)satelliteDemoModeTappedWithSpecifier:(id)specifier
{
  specifierCopy = specifier;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v8 = 0;
      _os_log_impl(&dword_243BE5000, v4, OS_LOG_TYPE_INFO, "Pressed satellite demo mode", v8, 2u);
    }
  }

  v5 = objc_alloc_init(MEMORY[0x277CC3750]);
  [v5 setReason:8];
  [v5 setMetadata:&unk_2856EBA30];
  v6 = objc_alloc(MEMORY[0x277CC37B0]);
  v7 = [v6 initWithQueue:MEMORY[0x277D85CD0]];
  [v7 requestStewieWithContext:v5 completion:&__block_literal_global_17];
}

void __69__CKSettingsMessagesController_satelliteDemoModeTappedWithSpecifier___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = IMLogHandleForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __69__CKSettingsMessagesController_satelliteDemoModeTappedWithSpecifier___block_invoke_cold_1(v2, v3);
    }
  }

  else
  {
    if (!IMOSLoggingEnabled())
    {
      goto LABEL_5;
    }

    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&dword_243BE5000, v3, OS_LOG_TYPE_INFO, "Presenting Satellite Demo app", v4, 2u);
    }
  }

LABEL_5:
}

- (BOOL)_shouldShowSatelliteDemoModeButton
{
  mEMORY[0x277D18D48] = [MEMORY[0x277D18D48] sharedInstance];
  getState = [mEMORY[0x277D18D48] getState];

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v5 = IMLogHandleForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [CKSettingsMessagesController _shouldShowSatelliteDemoModeButton];
    }

    goto LABEL_12;
  }

  if (([getState isDemoAllowedForService:16] & 1) == 0 && (objc_msgSend(getState, "isDemoAllowedForService:", 32) & 1) == 0)
  {
    goto LABEL_13;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v5 = IMLogHandleForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [CKSettingsMessagesController _shouldShowSatelliteDemoModeButton];
    }

LABEL_12:

LABEL_13:
    v4 = 0;
    goto LABEL_14;
  }

  if (([getState isPermittedAtCurrentLocation:16] & 1) == 0 && (objc_msgSend(getState, "isPermittedAtCurrentLocation:", 32) & 1) == 0)
  {
    goto LABEL_13;
  }

  v4 = 1;
LABEL_14:

  return v4;
}

- (id)getMMSDictionary
{
  mEMORY[0x277D1A908] = [MEMORY[0x277D1A908] sharedInstance];
  ctSubscriptionInfo = [mEMORY[0x277D1A908] ctSubscriptionInfo];
  subscriptions = [ctSubscriptionInfo subscriptions];
  firstObject = [subscriptions firstObject];

  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:{@"MMS", 0}];
  mEMORY[0x277D1A908]2 = [MEMORY[0x277D1A908] sharedInstance];
  v8 = [mEMORY[0x277D1A908]2 copyCarrierBundleValueForSubscriptionContext:firstObject keyHierarchy:v6 defaultValue:0 valueIfError:0];

  return v8;
}

- (id)isMMSEnabled:(id)enabled
{
  v34 = *MEMORY[0x277D85DE8];
  enabledCopy = enabled;
  CFPreferencesSynchronize(@"com.apple.MobileSMS", *MEMORY[0x277CBF040], *MEMORY[0x277CBF010]);
  if (IMSharedHelperDeviceHasMultipleActiveSubscriptions())
  {
    mEMORY[0x277D1A908] = [MEMORY[0x277D1A908] sharedInstance];
    ctSubscriptionInfo = [mEMORY[0x277D1A908] ctSubscriptionInfo];
    subscriptions = [ctSubscriptionInfo subscriptions];
    firstObject = [subscriptions firstObject];

    v8 = MEMORY[0x277D1A8F8];
    phoneNumber = [firstObject phoneNumber];
    labelID = [firstObject labelID];
    v11 = [v8 IMUniqueIdentifierForPhoneNumber:phoneNumber simID:labelID];

    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", @"MMSEnabled-", v11];
  }

  else
  {
    v11 = 0;
    v12 = @"MMSEnabled";
  }

  keyExistsAndHasValidFormat = 0;
  mEMORY[0x277D07DB0] = [MEMORY[0x277D07DB0] sharedInstance];
  supportsMMS = [mEMORY[0x277D07DB0] supportsMMS];

  v15 = CFPreferencesGetAppBooleanValue(v12, @"com.apple.MobileSMS", &keyExistsAndHasValidFormat) != 0;
  if (!keyExistsAndHasValidFormat)
  {
    mEMORY[0x277D1A908]2 = [MEMORY[0x277D1A908] sharedInstance];
    ctSubscriptionInfo2 = [mEMORY[0x277D1A908]2 ctSubscriptionInfo];
    subscriptions2 = [ctSubscriptionInfo2 subscriptions];
    firstObject2 = [subscriptions2 firstObject];

    phoneNumber2 = [firstObject2 phoneNumber];
    labelID2 = [firstObject2 labelID];
    v15 = [CKSettingsMMSHelper mmsDefaultEnabledForPhoneNumber:phoneNumber2 simID:labelID2];
  }

  if (IMOSLoggingEnabled())
  {
    v22 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = @"NO";
      *buf = 138412802;
      v29 = v11;
      v30 = 2112;
      if ((supportsMMS & v15) != 0)
      {
        v23 = @"YES";
      }

      v31 = v12;
      v32 = 2112;
      v33 = v23;
      _os_log_impl(&dword_243BE5000, v22, OS_LOG_TYPE_INFO, "isMMSEnabled for uniqueID %@ key %@: %@", buf, 0x20u);
    }
  }

  v24 = [MEMORY[0x277CCABB0] numberWithBool:supportsMMS & v15];

  v25 = *MEMORY[0x277D85DE8];

  return v24;
}

- (void)setMMSEnabled:(id)enabled specifier:(id)specifier
{
  v33 = *MEMORY[0x277D85DE8];
  enabledCopy = enabled;
  specifierCopy = specifier;
  if (IMSharedHelperDeviceHasMultipleActiveSubscriptions())
  {
    mEMORY[0x277D1A908] = [MEMORY[0x277D1A908] sharedInstance];
    ctSubscriptionInfo = [mEMORY[0x277D1A908] ctSubscriptionInfo];
    subscriptions = [ctSubscriptionInfo subscriptions];
    firstObject = [subscriptions firstObject];

    v12 = MEMORY[0x277D1A8F8];
    phoneNumber = [firstObject phoneNumber];
    labelID = [firstObject labelID];
    v15 = [v12 IMUniqueIdentifierForPhoneNumber:phoneNumber simID:labelID];

    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", @"MMSEnabled-", v15];
  }

  else
  {
    v15 = 0;
    v16 = @"MMSEnabled";
  }

  CFPreferencesSetAppValue(v16, enabledCopy, @"com.apple.MobileSMS");
  if (IMOSLoggingEnabled())
  {
    v17 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      bOOLValue = [enabledCopy BOOLValue];
      v19 = @"NO";
      *buf = 138412802;
      v28 = v15;
      v29 = 2112;
      if (bOOLValue)
      {
        v19 = @"YES";
      }

      v30 = v16;
      v31 = 2112;
      v32 = v19;
      _os_log_impl(&dword_243BE5000, v17, OS_LOG_TYPE_INFO, "setMMSEnabled for uniqueID %@ key %@: %@", buf, 0x20u);
    }
  }

  if (([enabledCopy BOOLValue] & 1) == 0 && !-[CKSettingsMessagesController _isMadridAccountOperational](self, "_isMadridAccountOperational"))
  {
    if (IMOSLoggingEnabled())
    {
      v20 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        bOOLValue2 = [enabledCopy BOOLValue];
        *buf = 138412802;
        v28 = v15;
        v29 = 2112;
        v30 = @"MMSShowSubject";
        if (bOOLValue2)
        {
          v22 = @"YES";
        }

        else
        {
          v22 = @"NO";
        }

        v31 = 2112;
        v32 = v22;
        _os_log_impl(&dword_243BE5000, v20, OS_LOG_TYPE_INFO, "setShowSubject for uniqueID %@ key %@: %@", buf, 0x20u);
      }
    }

    CFPreferencesSetAppValue(@"MMSShowSubject", enabledCopy, @"com.apple.MobileSMS");
  }

  CFPreferencesSynchronize(@"com.apple.MobileSMS", *MEMORY[0x277CBF040], *MEMORY[0x277CBF010]);
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.MobileSMS.MMSEnabled.changed", 0, 0, 1u);
  [(CKSettingsMessagesController *)self reloadSpecifiers];
  _syncManager = [(CKSettingsMessagesController *)self _syncManager];
  v25 = [MEMORY[0x277CBEB98] setWithObject:@"MMSEnabled"];
  [_syncManager synchronizeUserDefaultsDomain:@"com.apple.MobileSMS" keys:v25];

  v26 = *MEMORY[0x277D85DE8];
}

- (id)willSendGroupMMS:(id)s
{
  v26 = *MEMORY[0x277D85DE8];
  sCopy = s;
  CFPreferencesSynchronize(@"com.apple.MobileSMS", *MEMORY[0x277CBF040], *MEMORY[0x277CBF010]);
  if (IMSharedHelperDeviceHasMultipleSubscriptions())
  {
    mEMORY[0x277D1A908] = [MEMORY[0x277D1A908] sharedInstance];
    ctSubscriptionInfo = [mEMORY[0x277D1A908] ctSubscriptionInfo];
    subscriptions = [ctSubscriptionInfo subscriptions];
    firstObject = [subscriptions firstObject];

    v9 = MEMORY[0x277D1A8F8];
    phoneNumber = [firstObject phoneNumber];
    labelID = [firstObject labelID];
    v12 = [v9 IMUniqueIdentifierForPhoneNumber:phoneNumber simID:labelID];

    getMMSDictionary = 0;
  }

  else
  {
    getMMSDictionary = [(CKSettingsMessagesController *)self getMMSDictionary];
    firstObject = 0;
    v12 = 0;
  }

  if (IMSharedHelperDeviceHasMultipleSubscriptions())
  {
    mEMORY[0x277D1A908]2 = [MEMORY[0x277D1A908] sharedInstance];
    v15 = [mEMORY[0x277D1A908]2 copyCarrierBundleValueForSubscriptionContext:firstObject keyHierarchy:&unk_2856EB958 defaultValue:MEMORY[0x277CBEC28] valueIfError:MEMORY[0x277CBEC28]];
    bOOLValue = [v15 BOOLValue];
  }

  else
  {
    bOOLValue = [getMMSDictionary objectForKey:@"GroupModeEnabled"];

    if (!bOOLValue)
    {
      goto LABEL_9;
    }

    mEMORY[0x277D1A908]2 = [getMMSDictionary objectForKey:@"GroupModeEnabled"];
    bOOLValue = [mEMORY[0x277D1A908]2 BOOLValue];
  }

LABEL_9:
  if (IMOSLoggingEnabled())
  {
    v17 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = @"NO";
      if (bOOLValue)
      {
        v18 = @"YES";
      }

      v22 = 138412546;
      v23 = v12;
      v24 = 2112;
      v25 = v18;
      _os_log_impl(&dword_243BE5000, v17, OS_LOG_TYPE_INFO, "willSendGroupMMS for uniqueID %@ : %@", &v22, 0x16u);
    }
  }

  v19 = [MEMORY[0x277CCABB0] numberWithBool:bOOLValue];

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

- (id)getRaiseToListenEnabled:(id)enabled
{
  CFPreferencesSynchronize(@"com.apple.MobileSMS", *MEMORY[0x277CBF040], *MEMORY[0x277CBF010]);
  keyExistsAndHasValidFormat = 0;
  _isRaiseGestureSupported = CFPreferencesGetAppBooleanValue(@"RaiseToListenEnabled", @"com.apple.MobileSMS", &keyExistsAndHasValidFormat) != 0;
  if (!keyExistsAndHasValidFormat)
  {
    _isRaiseGestureSupported = [(CKSettingsMessagesController *)self _isRaiseGestureSupported];
  }

  v5 = [MEMORY[0x277CCABB0] numberWithBool:_isRaiseGestureSupported];

  return v5;
}

- (void)setRaiseToListenEnabled:(id)enabled specifier:(id)specifier
{
  CFPreferencesSetAppValue(@"RaiseToListenEnabled", enabled, @"com.apple.MobileSMS");
  CFPreferencesSynchronize(@"com.apple.MobileSMS", *MEMORY[0x277CBF040], *MEMORY[0x277CBF010]);
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.MobileSMS.RaiseToListenEnabled.changed", 0, 0, 1u);
}

+ (BOOL)currentMessageAutoKeepForType:(int)type
{
  keyExistsAndHasValidFormat = 0;
  if (CFPreferencesGetAppBooleanValue(@"AutomaticallySaveAudioMessagesEnabled", @"com.apple.imessage", &keyExistsAndHasValidFormat))
  {
    v3 = keyExistsAndHasValidFormat == 0;
  }

  else
  {
    v3 = 1;
  }

  return !v3;
}

- (id)getAudioMessageAutoKeep:(id)keep
{
  CFPreferencesSynchronize(@"com.apple.imessage", *MEMORY[0x277CBF040], *MEMORY[0x277CBF010]);
  v3 = MEMORY[0x277CCABB0];
  v4 = [CKSettingsMessagesController currentMessageAutoKeepOptionForType:1];

  return [v3 numberWithUnsignedInt:v4];
}

- (void)setAudioMessageAutoKeep:(id)keep specifier:(id)specifier
{
  if ([keep integerValue])
  {
    v5 = MEMORY[0x277CBEC38];
  }

  else
  {
    v5 = MEMORY[0x277CBEC28];
  }

  CFPreferencesSetAppValue(@"AutomaticallySaveAudioMessagesEnabled", v5, @"com.apple.imessage");
  CFPreferencesSynchronize(@"com.apple.imessage", *MEMORY[0x277CBF040], *MEMORY[0x277CBF010]);
  _syncManager = [(CKSettingsMessagesController *)self _syncManager];
  v6 = [MEMORY[0x277CBEB98] setWithObject:@"AutomaticallySaveAudioMessagesEnabled"];
  [_syncManager synchronizeUserDefaultsDomain:@"com.apple.imessage" keys:v6];
}

- (id)_syncManager
{
  v2 = CUTWeakLinkClass();
  if (v2)
  {
    v2 = objc_alloc_init(v2);
  }

  return v2;
}

- (BOOL)_isSMSDevice
{
  mEMORY[0x277D07DB0] = [MEMORY[0x277D07DB0] sharedInstance];
  supportsSMS = [mEMORY[0x277D07DB0] supportsSMS];

  return supportsSMS;
}

- (BOOL)_isMessagesTheDefaultMessagingApp
{
  if (!_os_feature_enabled_impl())
  {
    return 1;
  }

  mEMORY[0x277D19268] = [MEMORY[0x277D19268] sharedInstance];
  isInternalInstall = [mEMORY[0x277D19268] isInternalInstall];

  if (!isInternalInstall)
  {
    goto LABEL_7;
  }

  mEMORY[0x277D1A990] = [MEMORY[0x277D1A990] sharedInstance];
  v5 = [mEMORY[0x277D1A990] getBoolFromDomain:@"com.apple.MobileSMS" forKey:@"Force.MessageIsNotDefaultApp"];

  if ((v5 & 1) == 0)
  {
    mEMORY[0x277D1A990]2 = [MEMORY[0x277D1A990] sharedInstance];
    v7 = [mEMORY[0x277D1A990]2 getBoolFromDomain:@"com.apple.MobileSMS" forKey:@"Force.MessageIsDefaultApp"];

    if (!v7)
    {
LABEL_7:
      defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
      v10 = defaultWorkspace;
      if (defaultWorkspace)
      {
        if ([defaultWorkspace canChangeDefaultAppForCategory:10])
        {
          v19 = 0;
          v11 = [objc_alloc(MEMORY[0x277CC1E70]) initWithBundleIdentifier:@"com.apple.MobileSMS" allowPlaceholder:0 error:&v19];
          v12 = v19;
          if (v11)
          {
            defaultWorkspace2 = [MEMORY[0x277CC1E80] defaultWorkspace];
            v18 = v12;
            v14 = [defaultWorkspace2 defaultApplicationForCategory:10 error:&v18];
            v15 = v18;

            v8 = [v14 isEqual:v11];
            v12 = v15;
          }

          else
          {
            v14 = IMLogHandleForCategory();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
            {
              [(CKSettingsMessagesController *)v12 _isMessagesTheDefaultMessagingApp];
            }

            v8 = 0;
          }

          goto LABEL_20;
        }

        if (IMOSLoggingEnabled())
        {
          v16 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_243BE5000, v16, OS_LOG_TYPE_INFO, "Can't change default app so behaving as if Messages is the default", buf, 2u);
          }
        }
      }

      v8 = 1;
LABEL_20:

      return v8;
    }
  }

  return v5 ^ 1;
}

- (BOOL)_isMadridAccountOperational
{
  regController = [(CNFRegListController *)self regController];
  if ([regController isServiceSupported])
  {
    regController2 = [(CNFRegListController *)self regController];
    isServiceEnabled = [regController2 isServiceEnabled];

    if (isServiceEnabled)
    {
      regController3 = [(CNFRegListController *)self regController];
      accountState = [regController3 accountState];

      return (accountState & 0x60000000) == 0x40000000;
    }
  }

  else
  {
  }

  return 0;
}

- (BOOL)_isMadridSwitchOn
{
  regController = [(CNFRegListController *)self regController];
  if ([regController isServiceEnabled])
  {
    isAccountKeyCDPSyncingOrWaitingForUser = 1;
  }

  else
  {
    regController2 = [(CNFRegListController *)self regController];
    isAccountKeyCDPSyncingOrWaitingForUser = [regController2 isAccountKeyCDPSyncingOrWaitingForUser];
  }

  return isAccountKeyCDPSyncingOrWaitingForUser;
}

- (BOOL)shouldShowMadridSwitch
{
  regController = [(CNFRegListController *)self regController];
  isServiceSupported = [regController isServiceSupported];

  return isServiceSupported;
}

- (id)isMadridEnabled:(id)enabled
{
  v3 = MEMORY[0x277CCABB0];
  _isMadridSwitchOn = [(CKSettingsMessagesController *)self _isMadridSwitchOn];

  return [v3 numberWithBool:_isMadridSwitchOn];
}

- (void)setMadridEnabled:(id)enabled specifier:(id)specifier
{
  v42 = *MEMORY[0x277D85DE8];
  enabledCopy = enabled;
  specifierCopy = specifier;
  v8 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    intValue = [enabledCopy intValue];
    v10 = @"YES";
    if (!intValue)
    {
      v10 = @"NO";
    }

    *buf = 138412290;
    v41 = v10;
    _os_log_impl(&dword_243BE5000, v8, OS_LOG_TYPE_DEFAULT, "setMadridEnabled: %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
  {
    intValue2 = [enabledCopy intValue];
    v12 = @"YES";
    if (!intValue2)
    {
      v12 = @"NO";
    }

    v37 = v12;
    IMLogString();
  }

  bOOLValue = [enabledCopy BOOLValue];
  if (!bOOLValue || ![(CNFRegListController *)self _showWiFiAlertIfNecessary])
  {
    [(CKSettingsMessagesController *)self _clearMessagesAppExtensionSalt];
    regController = [(CNFRegListController *)self regController];
    IMSetUserLoginIntent();
    if (!bOOLValue)
    {
      v18 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_243BE5000, v18, OS_LOG_TYPE_DEFAULT, "Deactivating accounts", buf, 2u);
      }

      if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
      {
        IMLogString();
      }

      [(CKSettingsMessagesController *)self _setupAccountHandlersForDisabling];
      [regController deactivateAccounts];
      goto LABEL_32;
    }

    [(CKSettingsMessagesController *)self _setupAccountHandlers];
    accounts = [regController accounts];
    v17 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v41 = accounts;
      _os_log_impl(&dword_243BE5000, v17, OS_LOG_TYPE_DEFAULT, "Attempting to enable iMessage for accounts %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
    {
      v38 = accounts;
      IMLogString();
    }

    if (accounts && [(__CFString *)accounts count])
    {
      [regController activateAccounts];

LABEL_32:
      [(CKSettingsMessagesController *)self notifyThatConversationFilteringChanged];
      [(CKSettingsMessagesController *)self reloadSpecifiers];
LABEL_46:

      goto LABEL_47;
    }

    regController2 = [(CNFRegListController *)self regController];
    if ([regController2 isConnected])
    {
      if (![(CKSettingsMessagesController *)self _isSMSDevice])
      {

LABEL_44:
        [(CKSettingsMessagesController *)self _showMadridSetupIfNecessary:0];
        goto LABEL_45;
      }

      mEMORY[0x277D18998] = [MEMORY[0x277D18998] sharedInstance];
      supportsIdentification = [mEMORY[0x277D18998] supportsIdentification];

      if ((supportsIdentification & 1) == 0)
      {
        goto LABEL_44;
      }
    }

    else
    {
    }

    regController3 = [(CNFRegListController *)self regController];
    if ([regController3 serviceSupportsDeviceAliasEnablement])
    {
      regController4 = [(CNFRegListController *)self regController];
      usableDeviceAliases = [regController4 usableDeviceAliases];
      v25 = [usableDeviceAliases count] == 0;

      if (!v25)
      {
        v39 = [[CNFRegController alloc] initWithServiceType:1];
        [(CNFRegController *)v39 connect:1];
        v26 = [(CNFRegListController *)[CNFRegSettingsController alloc] initWithRegController:v39];
        rootController = [(CKSettingsMessagesController *)self rootController];
        [(CNFRegSettingsController *)v26 setRootController:rootController];

        [(CNFRegSettingsController *)v26 setParentController:self];
        specifier = [(CKSettingsMessagesController *)self specifier];
        [(CNFRegListController *)v26 setSpecifier:specifier];

        [(CNFRegSettingsController *)v26 setShowEnableSwitch:0];
        v29 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v26];
        v30 = +[CNFRegAppearanceController globalAppearanceController];
        navigationBarStyle = [v30 navigationBarStyle];
        navigationBar = [v29 navigationBar];
        [navigationBar setBarStyle:navigationBarStyle];

        navigationBarIsTranslucent = [v30 navigationBarIsTranslucent];
        navigationBar2 = [v29 navigationBar];
        [navigationBar2 setTranslucent:navigationBarIsTranslucent];

        regController5 = [(CNFRegListController *)self regController];
        [regController5 connect:1];

        [(CKSettingsMessagesController *)self presentModalViewController:v29 withTransition:3];
        [(CKSettingsMessagesController *)self reloadSpecifiers];

LABEL_45:
        goto LABEL_46;
      }
    }

    else
    {
    }

    [(CKSettingsMessagesController *)self reloadSpecifiers];
    goto LABEL_45;
  }

  [(CKSettingsMessagesController *)self reloadSpecifier:specifierCopy];
  v14 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_243BE5000, v14, OS_LOG_TYPE_DEFAULT, "No reasonable network found - not enabling iMessage", buf, 2u);
  }

  if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
  {
    IMLogString();
  }

LABEL_47:

  v36 = *MEMORY[0x277D85DE8];
}

- (BOOL)_isRegistrationInProgress
{
  v18 = *MEMORY[0x277D85DE8];
  regController = [(CNFRegListController *)self regController];
  activeAccounts = [regController activeAccounts];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = activeAccounts;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = 0;
    v7 = 0;
    v8 = *v14;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        if ([v10 registrationStatus] >= 2)
        {
          v6 |= [v10 CNFRegSignInComplete] ^ 1;
        }

        v7 |= [v10 CNFRegSignInComplete];
      }

      v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
    LOBYTE(v5) = v6 & (v7 ^ 1);
  }

  v11 = *MEMORY[0x277D85DE8];
  return v5 & 1;
}

- (id)_failedAccounts
{
  v18 = *MEMORY[0x277D85DE8];
  regController = [(CNFRegListController *)self regController];
  failedAccounts = [regController failedAccounts];

  if ([failedAccounts count])
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = failedAccounts;
    v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v13 + 1) + 8 * i);
          if ([v10 registrationFailureReason] != 14)
          {
            [v4 addObject:v10];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }
  }

  else
  {
    v4 = MEMORY[0x277CBEBF8];
  }

  v11 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)_registrationFailures
{
  v26[1] = *MEMORY[0x277D85DE8];
  if (![(CKSettingsMessagesController *)self _isIDSDelayRegistrationEnabled]|| (v3 = [(CKSettingsMessagesController *)self _debugFailureReason], v3 == -1))
  {
    _failedAccounts = [(CKSettingsMessagesController *)self _failedAccounts];
    if ([_failedAccounts count])
    {
      v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v17 = 0u;
      v18 = 0u;
      v19 = 0u;
      v20 = 0u;
      _failedAccounts = _failedAccounts;
      v9 = [_failedAccounts countByEnumeratingWithState:&v17 objects:v25 count:16];
      if (v9)
      {
        v10 = *v18;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v18 != v10)
            {
              objc_enumerationMutation(_failedAccounts);
            }

            v12 = *(*(&v17 + 1) + 8 * i);
            [v12 registrationFailureReason];
            if (-[CKSettingsMessagesController _isIDSDelayRegistrationEnabled](self, "_isIDSDelayRegistrationEnabled") || ([v12 isAccountKeyCDPSyncingOrWaitingForUser] & 1) == 0)
            {
              v13 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v12, "registrationFailureReason")}];
              [v8 addObject:v13];
            }
          }

          v9 = [_failedAccounts countByEnumeratingWithState:&v17 objects:v25 count:16];
        }

        while (v9);
      }

      if (IMOSLoggingEnabled())
      {
        v14 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          v22 = _failedAccounts;
          v23 = 2112;
          v24 = v8;
          _os_log_impl(&dword_243BE5000, v14, OS_LOG_TYPE_INFO, "Failed accounts: %@ with registration failures: %@", buf, 0x16u);
        }
      }
    }

    else
    {
      v8 = MEMORY[0x277CBEBF8];
    }
  }

  else
  {
    v4 = v3;
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v6 = [MEMORY[0x277CCABB0] numberWithInteger:v4];
        *buf = 138412290;
        v22 = v6;
        _os_log_impl(&dword_243BE5000, v5, OS_LOG_TYPE_INFO, "Using debug registration failure: %@", buf, 0xCu);
      }
    }

    _failedAccounts = [MEMORY[0x277CCABB0] numberWithInteger:v4];
    v26[0] = _failedAccounts;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:1];
  }

  v15 = *MEMORY[0x277D85DE8];

  return v8;
}

- (BOOL)_registrationFailures:(id)failures containsFailure:(int64_t)failure
{
  v5 = MEMORY[0x277CCABB0];
  failuresCopy = failures;
  v7 = [v5 numberWithInteger:failure];
  LOBYTE(v5) = [failuresCopy containsObject:v7];

  return v5;
}

- (BOOL)_registrationFailures:(id)failures areAllOfKind:(int64_t)kind
{
  v19 = *MEMORY[0x277D85DE8];
  failuresCopy = failures;
  if ([failuresCopy count])
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = failuresCopy;
    v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v6);
          }

          if ([*(*(&v14 + 1) + 8 * i) intValue] != kind)
          {
            v11 = 0;
            goto LABEL_12;
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    v11 = 1;
LABEL_12:
  }

  else
  {
    v11 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

- (id)_switchFooterText:(unint64_t *)text
{
  v5 = CommunicationsSetupUIBundle();
  v6 = CNFRegStringTableName();
  v7 = [v5 localizedStringForKey:@"FACETIME_SWITCH_STATUS_DEFAULT" value:&stru_2856D3978 table:v6];

  if (MGGetBoolAnswer())
  {
    mEMORY[0x277D07DB0] = [MEMORY[0x277D07DB0] sharedInstance];
    supportsSMSIdentification = [mEMORY[0x277D07DB0] supportsSMSIdentification];

    if (supportsSMSIdentification)
    {
      v10 = CommunicationsSetupUIBundle();
      v11 = CNFRegStringTableName();
      v12 = [v10 localizedStringForKey:@"FACETIME_SWITCH_STATUS_DEFAULT_WITH_WARNING" value:&stru_2856D3978 table:v11];

      v7 = v12;
    }
  }

  _isRegistrationInProgress = [(CKSettingsMessagesController *)self _isRegistrationInProgress];
  _registrationFailures = [(CKSettingsMessagesController *)self _registrationFailures];
  v15 = _registrationFailures;
  if (_isRegistrationInProgress)
  {
    v16 = CommunicationsSetupUIBundle();
    v17 = CNFRegStringTableName();
    v18 = [v16 localizedStringForKey:@"FACETIME_SWITCH_STATUS_IN_PROGRESS" value:&stru_2856D3978 table:v17];

    if (!text)
    {
      goto LABEL_20;
    }

    v19 = 2;
    goto LABEL_19;
  }

  if ([_registrationFailures count])
  {
    if ([(CKSettingsMessagesController *)self _registrationFailures:v15 containsFailure:28])
    {
      v20 = _os_feature_enabled_impl();
      v21 = CommunicationsSetupUIBundle();
      v22 = CNFRegStringTableName();
      if (v20)
      {
        v23 = @"UPDATE_APPLEID_DESCRIPTION_APPLEACCOUNT";
      }

      else
      {
        v23 = @"UPDATE_APPLEID_DESCRIPTION";
      }
    }

    else
    {
      v24 = [(CKSettingsMessagesController *)self _registrationFailures:v15 containsFailure:29];
      v21 = CommunicationsSetupUIBundle();
      v22 = CNFRegStringTableName();
      if (v24)
      {
        v23 = @"WAITING_FOR_ICLOUD_DESCRIPTION";
      }

      else
      {
        v23 = @"FACETIME_SWITCH_STATUS_FAILED";
      }
    }

    v18 = [v21 localizedStringForKey:v23 value:&stru_2856D3978 table:v22];

    if (!text)
    {
      goto LABEL_20;
    }

    v19 = 0;
    goto LABEL_19;
  }

  if (text)
  {
    v19 = 1;
    v18 = v7;
LABEL_19:
    *text = v19;
    goto LABEL_20;
  }

  v18 = v7;
LABEL_20:

  return v18;
}

- (void)_updateSwitchDelayed
{
  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel__updateSwitch object:0];

  [(CKSettingsMessagesController *)self performSelector:sel__updateSwitch withObject:0 afterDelay:0.75];
}

- (BOOL)shouldShowCharacterCount
{
  _isSMSDevice = [(CKSettingsMessagesController *)self _isSMSDevice];
  if (_isSMSDevice)
  {

    LOBYTE(_isSMSDevice) = [(CKSettingsMessagesController *)self _isMessagesTheDefaultMessagingApp];
  }

  return _isSMSDevice;
}

- (BOOL)shouldShowBlocklistSettings
{
  if ([(CKSettingsMessagesController *)self _isSMSDevice]&& [(CKSettingsMessagesController *)self _isMessagesTheDefaultMessagingApp])
  {
    return 1;
  }

  return [(CKSettingsMessagesController *)self _isMadridAccountOperational];
}

- (BOOL)_isRaiseGestureSupported
{
  if (_isRaiseGestureSupported_once != -1)
  {
    [CKSettingsMessagesController _isRaiseGestureSupported];
  }

  return _isRaiseGestureSupported_isRaiseGestureSupported;
}

void __56__CKSettingsMessagesController__isRaiseGestureSupported__block_invoke()
{
  if ([MEMORY[0x277CC1CA8] isGestureServiceAvailable])
  {
    v1 = [MEMORY[0x277D75418] currentDevice];
    v0 = [v1 isProximityMonitoringEnabled];
    [v1 setProximityMonitoringEnabled:1];
    _isRaiseGestureSupported_isRaiseGestureSupported = [v1 isProximityMonitoringEnabled];
    [v1 setProximityMonitoringEnabled:v0];
  }
}

+ (id)getDefaultExtension
{
  v2 = CFPreferencesCopyAppValue(@"spamFiltrationExtensionID", @"com.apple.MobileSMS");

  return v2;
}

- (void)notifyThatConversationFilteringChanged
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.MobileSMS.IncomingMessageAlertFiltration.changed", 0, 0, 1u);
}

- (void)endMatchingExtensions
{
  if ([(CKFilteringListController *)self->_filteringController deviceSupportsSMSFilteringExtensions])
  {
    [(CKNSExtension *)self->_ckExtension endMatchingExtensions];
    ckExtension = self->_ckExtension;
    self->_ckExtension = 0;
  }
}

- (void)findSpamExtensions
{
  if ([(CKFilteringListController *)self->_filteringController deviceSupportsSMSFilteringExtensions])
  {
    if (!self->_ckExtension)
    {
      v3 = objc_alloc_init(CKNSExtension);
      ckExtension = self->_ckExtension;
      self->_ckExtension = v3;

      v6[0] = MEMORY[0x277D85DD0];
      v6[1] = 3221225472;
      v6[2] = __50__CKSettingsMessagesController_findSpamExtensions__block_invoke;
      v6[3] = &unk_278DE8748;
      v6[4] = self;
      v5 = MEMORY[0x245D4D850](v6);
      [(CKNSExtension *)self->_ckExtension beginMatchingExtensions:v5];
    }
  }
}

void __50__CKSettingsMessagesController_findSpamExtensions__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v14 = [CKSettingsMessagesController removeFirstPartyExtensionFromArrayIfNecessary:a2];
  v6 = MEMORY[0x277CBEB98];
  v7 = [*(*(a1 + 32) + 1488) extensionIDArray];
  v8 = [v6 setWithArray:v7];

  v9 = [MEMORY[0x277CBEB98] setWithArray:v14];
  v10 = [v9 allObjects];
  v11 = [v10 sortedArrayUsingComparator:&__block_literal_global_584];

  if (([v8 isEqualToSet:v9] & 1) == 0)
  {
    [*(*(a1 + 32) + 1488) setExtensionIDArray:v11];
    [*(*(a1 + 32) + 1488) setExtensionNameMapping:v5];
    [*(a1 + 32) reloadSpecifiers];
  }

  if ([*(*(a1 + 32) + 1488) spamFilterState] == 1)
  {
    if (![v14 count])
    {
      [*(*(a1 + 32) + 1488) disableSpamFiltering];
      [*(a1 + 32) reloadSpecifiers];
    }

    [*(*(a1 + 32) + 1488) verifyCurrentExtensionIDValidity];
  }

  v12 = [v14 count];
  v13 = MEMORY[0x277CBED28];
  if (!v12)
  {
    v13 = MEMORY[0x277CBED10];
  }

  CFPreferencesSetAppValue(@"MessageSpamFilteringExtensionInstalled", *v13, @"com.apple.MobileSMS");
  CFPreferencesSynchronize(@"com.apple.MobileSMS", *MEMORY[0x277CBF040], *MEMORY[0x277CBF010]);
}

uint64_t __50__CKSettingsMessagesController_findSpamExtensions__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 _plugIn];
  v6 = [v5 localizedContainingName];

  v7 = [v4 _plugIn];

  v8 = [v7 localizedContainingName];

  v9 = [v8 localizedStandardCompare:v6];
  return v9;
}

+ (id)removeFirstPartyExtensionFromArrayIfNecessary:(id)necessary
{
  v21 = *MEMORY[0x277D85DE8];
  necessaryCopy = necessary;
  if ([self shouldShowFirstPartyExtension])
  {
    v5 = necessaryCopy;
  }

  else
  {
    v5 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(necessaryCopy, "count")}];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v6 = necessaryCopy;
    v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v17;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v17 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v16 + 1) + 8 * i);
          identifier = [v11 identifier];
          v13 = [identifier isEqualToString:@"com.apple.smsFilter.extension"];

          if ((v13 & 1) == 0)
          {
            [v5 addObject:v11];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v8);
    }
  }

  v14 = *MEMORY[0x277D85DE8];

  return v5;
}

- (void)messageFilteringTapped:(id)tapped
{
  [(CKFilteringListController *)self->_filteringController setSpecifier:tapped];
  filteringController = self->_filteringController;
  rootController = [(CKSettingsMessagesController *)self rootController];
  [(CKFilteringListController *)filteringController setRootController:rootController];

  self->_showingChildViewController = 1;
  [(CKFilteringListController *)self->_filteringController setShowingParentViewController:1];
  v6 = self->_filteringController;

  [(CKSettingsMessagesController *)self showController:v6 animate:1];
}

- (id)getTextMessageFilterForSpecifier:(id)specifier
{
  v3 = MEMORY[0x245D4CF30](@"com.apple.MobileSMS", @"spamFiltrationExtensionID", specifier);
  if ([v3 isEqualToString:@"com.apple.smsFilter.extension"])
  {
    v4 = MessagesSettingsLocalizedString(@"SPAM_EXTENSION_FIRST_PARTY_ENABLED");
  }

  else
  {
    v5 = MEMORY[0x245D4CF30](@"com.apple.MobileSMS", @"spamFiltrationExtensionName");
    if ([v5 length])
    {
      v6 = v5;
    }

    else
    {
      v6 = MessagesSettingsLocalizedString(@"SPAM_EXTENSION_NO_FILTER");
    }

    v4 = v6;
  }

  return v4;
}

- (id)_textMessageFilteringViewController
{
  [(CKFilteringListController *)self->_filteringController setParentController:self];
  filteringController = self->_filteringController;
  rootController = [(CKSettingsMessagesController *)self rootController];
  [(CKFilteringListController *)filteringController setRootController:rootController];

  v5 = self->_filteringController;

  return v5;
}

- (id)messagesFilteringSpecifierIdentifiers
{
  v5[5] = *MEMORY[0x277D85DE8];
  v5[0] = @"MESSAGES_UNKNOWN_SENDERS_GROUP";
  v5[1] = @"FILTER_NEW_SENDERS_SWITCH";
  v5[2] = @"NOTIFICATIONS_UNKNOWN_SENDERS_BUTTON";
  v5[3] = @"TEXT_MESSAGE_FILTERING";
  v5[4] = @"SPAM_FILTERING_SWITCH";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:5];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (id)getNotificationsUnknownSendersForSpecifier:(id)specifier
{
  v3 = +[CKSettingsMessagesController syncedSettingsManager];
  v4 = [v3 settingValueForKey:5];

  v5 = +[CKSettingsMessagesController syncedSettingsManager];
  v6 = [v5 settingValueForKey:6];

  v7 = +[CKSettingsMessagesController syncedSettingsManager];
  v8 = [v7 settingValueForKey:7];

  v9 = +[CKSettingsMessagesController syncedSettingsManager];
  v10 = [v9 settingValueForKey:8];

  v11 = +[CKSettingsMessagesController syncedSettingsManager];
  v12 = [v11 settingValueForKey:11];

  if ([v4 BOOLValue] && objc_msgSend(objc_opt_class(), "supportsTimeSensitiveNotifications"))
  {
    v13 = MessagesSettingsLocalizedString(@"TIME_SENSITIVE_LABEL");
    v14 = 1;
  }

  else
  {
    v13 = 0;
    v14 = 0;
  }

  if ([v6 BOOLValue])
  {
    if (+[CKSettingsMessagesController supportsUnknownTransactionsPromotions])
    {
      v15 = @"PERSONAL_LABEL";
    }

    else
    {
      v15 = @"OTHER_NOTIFICATIONS_LABEL";
    }

    v16 = MessagesSettingsLocalizedString(v15);

    ++v14;
    v13 = v16;
  }

  if ([v8 BOOLValue])
  {
    v17 = MessagesSettingsLocalizedString(@"TRANSACTIONS_LABEL");

    ++v14;
    v13 = v17;
  }

  if ([v10 BOOLValue])
  {
    v18 = MessagesSettingsLocalizedString(@"PROMOTIONS_LABEL");

    ++v14;
    v13 = v18;
  }

  if ([v12 BOOLValue] && (objc_msgSend(objc_opt_class(), "supportsTimeSensitiveNotifications") & 1) == 0)
  {
    v19 = MessagesSettingsLocalizedString(@"VERIFICATION_CODES_LABEL");

    ++v14;
    v13 = v19;
  }

  if (v14 == 1)
  {
    v21 = v13;
  }

  else
  {
    if (v14)
    {
      v22 = +[CKSettingsMessagesController supportsUnknownTransactionsPromotions];
      if (v14 == 2 && !v22 || v14 == 4)
      {
        v20 = @"ALL_NOTIFICATIONS_ALLOWED_SETTINGS";
      }

      else
      {
        v20 = @"SOME_NOTIFICATIONS_ALLOWED_SETTINGS";
      }
    }

    else
    {
      v20 = @"NO_NOTIFICATIONS_ALLOWED_SETTINGS";
    }

    v21 = MessagesSettingsLocalizedString(v20);
  }

  v23 = v21;

  return v23;
}

- (BOOL)hasiMessageFilteringExtensions
{
  extensionIDArray = [(CKFilteringListController *)self->_filteringController extensionIDArray];
  v3 = extensionIDArray;
  if (extensionIDArray)
  {
    v4 = [extensionIDArray count] != 0;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)isConversationListFilteringEnabled:(id)enabled
{
  mEMORY[0x277D1A9B8] = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  isIntroductionsEnabled = [mEMORY[0x277D1A9B8] isIntroductionsEnabled];

  if (isIntroductionsEnabled)
  {
    v5 = [_syncedSettingsManager_0 settingValueForKey:4];
    if ([v5 BOOLValue])
    {
      IMSetDomainBoolForKey();
    }
  }

  else
  {
    CFPreferencesSynchronize(@"com.apple.MobileSMS", *MEMORY[0x277CBF040], *MEMORY[0x277CBF010]);
    keyExistsAndHasValidFormat = 0;
    if (CFPreferencesGetAppBooleanValue(@"IncomingMessageAlertFiltration", @"com.apple.MobileSMS", &keyExistsAndHasValidFormat))
    {
      v6 = keyExistsAndHasValidFormat == 0;
    }

    else
    {
      v6 = 1;
    }

    v7 = !v6;
    v5 = [MEMORY[0x277CCABB0] numberWithBool:v7];
  }

  return v5;
}

- (void)setConversationListFilteringEnabled:(id)enabled specifier:(id)specifier
{
  enabledCopy = enabled;
  mEMORY[0x277D1A9B8] = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  isIntroductionsEnabled = [mEMORY[0x277D1A9B8] isIntroductionsEnabled];

  if (isIntroductionsEnabled)
  {
    if (([enabledCopy BOOLValue] & 1) == 0)
    {
      [(CKFilteringListController *)self->_filteringController disableSpamFiltering];
    }

    if ((IMGetDomainBoolForKey() & 1) == 0)
    {
      if (+[CKSettingsMessagesController supportsTimeSensitiveNotifications])
      {
        v7 = 5;
      }

      else
      {
        v7 = 11;
      }

      [_syncedSettingsManager_0 setSettingValue:MEMORY[0x277CBEC38] forKey:v7];
      IMSetDomainBoolForKey();
    }
  }

  sharedSettingsHelper = [(CKSettingsMessagesController *)self sharedSettingsHelper];
  [sharedSettingsHelper setConversationListFilteringEnabled:{objc_msgSend(enabledCopy, "BOOLValue")}];
}

- (BOOL)shouldShowJunkConversationsRow
{
  v2 = CUTWeakLinkSymbol();
  if (v2)
  {

    LOBYTE(v2) = v2();
  }

  return v2;
}

+ (BOOL)shouldShowFirstPartyExtension
{
  getDefaultExtension = [self getDefaultExtension];
  v3 = [getDefaultExtension isEqualToString:@"com.apple.smsFilter.extension"];

  if (v3)
  {
    LOBYTE(v4) = 1;
  }

  else
  {
    v4 = CUTWeakLinkSymbol();
    if (v4)
    {

      LOBYTE(v4) = v4();
    }
  }

  return v4;
}

- (BOOL)_shouldShowTextMessageFilterForSpecifier:(id)specifier
{
  specifierCopy = specifier;
  if ([(CKSettingsMessagesController *)self _isMessagesTheDefaultMessagingApp]&& ([(CKFilteringListController *)self->_filteringController extensionIDArray], v5 = objc_claimAutoreleasedReturnValue(), v6 = [(CKSettingsMessagesController *)self hasTextMessageFilteringExtensions:v5], v5, v6))
  {
    v7 = [(CKSettingsMessagesController *)self isConversationListFilteringEnabled:0];
    v8 = MEMORY[0x277CBEC28];
    v9 = [v7 isEqual:MEMORY[0x277CBEC28]];

    if (v9)
    {
      v10 = v8;
    }

    else
    {
      v10 = MEMORY[0x277CBEC38];
    }

    [specifierCopy setProperty:v10 forKey:*MEMORY[0x277D3FF38]];
    v11 = 1;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)_notificationsUnknownSendersViewController
{
  v3 = objc_alloc_init(CKNotificationsUnknownSendersController);
  [(CKNotificationsUnknownSendersController *)v3 setParentController:self];
  rootController = [(CKSettingsMessagesController *)self rootController];
  [(CKNotificationsUnknownSendersController *)v3 setRootController:rootController];

  return v3;
}

- (BOOL)_shouldShowNotificationsFromUnknownSenders
{
  mEMORY[0x277D1A9B8] = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  isIntroductionsEnabled = [mEMORY[0x277D1A9B8] isIntroductionsEnabled];

  if (!isIntroductionsEnabled)
  {
    return 0;
  }

  v5 = [(CKSettingsMessagesController *)self isConversationListFilteringEnabled:0];
  v6 = [v5 isEqual:MEMORY[0x277CBEC28]];

  return v6 ^ 1;
}

- (BOOL)shouldShowSiriSettings
{
  if (IMGetDomainBoolForKey())
  {
    IMSetDomainBoolForKey();
  }

  return 0;
}

- (id)isSiriToneNotificationEnabled:(id)enabled
{
  v3 = MEMORY[0x277CCABB0];
  v4 = IMGetDomainBoolForKey() ^ 1;

  return [v3 numberWithInt:v4];
}

- (void)setSiriToneNotificationEnabled:(id)enabled specifier:(id)specifier
{
  [enabled BOOLValue];

  IMSetDomainBoolForKey();
}

- (BOOL)shouldShowContactPhotoSettings
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    return 1;
  }

  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen _referenceBounds];
  v7 = v6;

  return v7 > 320.0;
}

- (id)suppressedConversationBackgroundSpecifierIdentifiers
{
  v14[3] = *MEMORY[0x277D85DE8];
  mEMORY[0x277D1A9B8] = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  isTranscriptBackgroundsEnabled = [mEMORY[0x277D1A9B8] isTranscriptBackgroundsEnabled];

  if (isTranscriptBackgroundsEnabled)
  {
    isTranscriptBackgroundsEnabledViaSyncedSettings = [(CKSettingsMessagesController *)self isTranscriptBackgroundsEnabledViaSyncedSettings];
    bOOLValue = [isTranscriptBackgroundsEnabledViaSyncedSettings BOOLValue];

    if (bOOLValue)
    {
      v7 = MEMORY[0x277CBEBF8];
      goto LABEL_7;
    }

    v13 = @"CONVERSATION_BACKGROUNDS_START_WITH_PHOTOS_VISIBLE";
    v8 = MEMORY[0x277CBEA60];
    v9 = &v13;
    v10 = 1;
  }

  else
  {
    v14[0] = @"CONVERSATION_BACKGROUNDS_GROUP";
    v14[1] = @"CONVERSATION_BACKGROUNDS_ENABLED_SWITCH";
    v14[2] = @"CONVERSATION_BACKGROUNDS_START_WITH_PHOTOS_VISIBLE";
    v8 = MEMORY[0x277CBEA60];
    v9 = v14;
    v10 = 3;
  }

  v7 = [v8 arrayWithObjects:v9 count:v10];
LABEL_7:
  v11 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)isTranscriptBackgroundsEnabledViaSyncedSettings
{
  v2 = +[CKSettingsMessagesController syncedSettingsManager];
  v3 = [v2 settingValueForKey:9];

  return v3;
}

- (void)setConversationBackgroundsEnabled:(id)enabled specifier:(id)specifier
{
  enabledCopy = enabled;
  v5 = +[CKSettingsMessagesController syncedSettingsManager];
  [v5 setSettingValue:enabledCopy forKey:9];

  LODWORD(v5) = [enabledCopy BOOLValue];
  messagesAppDomain = [MEMORY[0x277CBEBD0] messagesAppDomain];
  v7 = [messagesAppDomain BOOLForKey:@"MessagesBackgroundsEverEnabled"];
  if (v5 && (v7 & 1) == 0)
  {
    [messagesAppDomain setBool:1 forKey:@"MessagesBackgroundsEverEnabled"];
  }

  AnalyticsSendEventLazy();
}

id __76__CKSettingsMessagesController_setConversationBackgroundsEnabled_specifier___block_invoke(uint64_t a1)
{
  v10[3] = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D1A9D8] summarizationModelsAvailable])
  {
    v2 = 1;
  }

  else
  {
    v2 = [MEMORY[0x277D1A9D8] generativePlaygroundModelsAvailable];
  }

  v9[0] = @"adm_ready";
  v3 = [MEMORY[0x277CCABB0] numberWithInt:v2];
  v10[0] = v3;
  v9[1] = @"currently_enabled";
  v4 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 32)];
  v10[1] = v4;
  v9[2] = @"ever_enabled";
  v5 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 33)];
  v10[2] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:3];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)photoBackgroundAutomaticScrollDockingEnabled:(id)enabled
{
  v3 = +[CKSettingsMessagesController syncedSettingsManager];
  v4 = [v3 settingValueForKey:10];

  return v4;
}

- (void)photoBackgroundAutomaticScrollDockingEnabled:(id)enabled specifier:(id)specifier
{
  enabledCopy = enabled;
  v5 = +[CKSettingsMessagesController syncedSettingsManager];
  [v5 setSettingValue:enabledCopy forKey:10];
}

- (id)nameAndPhotoSharingSpecifiers
{
  v5[2] = *MEMORY[0x277D85DE8];
  v5[0] = @"NAME_AND_PHOTO_SHARING_GROUP";
  v5[1] = @"NAME_AND_PHOTO_SHARING_BUTTON";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:2];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (void)showiCloudNotSignedInAlertForNicknames
{
  v3 = MEMORY[0x277D75110];
  v4 = MessagesSettingsLocalizedString(@"NAME_AND_PHOTO_SHARING_NOT_AVAILABLE_TITLE");
  v5 = MessagesSettingsLocalizedString(@"NAME_AND_PHOTO_SHARING_ACCOUNT_MISMATCH_MESSAGE");
  v15 = [v3 alertControllerWithTitle:v4 message:v5 preferredStyle:1];

  if (_os_feature_enabled_impl())
  {
    if (_os_feature_enabled_impl())
    {
      v6 = @"NAME_AND_PHOTO_SHARING_ICLOUD_NOT_SIGNED_IN_MESSAGE_APPLEACCOUNT";
    }

    else
    {
      v6 = @"NAME_AND_PHOTO_SHARING_ICLOUD_NOT_SIGNED_IN_MESSAGE";
    }

    v7 = MessagesSettingsLocalizedString(v6);
    v8 = MEMORY[0x277D75110];
    v9 = MessagesSettingsLocalizedString(@"NAME_AND_PHOTO_SHARING_NOT_AVAILABLE_TITLE");
    v10 = [v8 alertControllerWithTitle:v9 message:v7 preferredStyle:1];

    v15 = v10;
  }

  v11 = MEMORY[0x277D750F8];
  v12 = MessagesSettingsLocalizedString(@"NAME_AND_PHOTO_SHARING_ME_CARD_SETUP_PROMPT_OK");
  v13 = [v11 actionWithTitle:v12 style:0 handler:0];

  [v15 addAction:v13];
  navigationController = [(CKSettingsMessagesController *)self navigationController];
  [navigationController presentViewController:v15 animated:1 completion:0];
}

- (BOOL)currentRegionWantsOnlineSafetyLink
{
  v12 = *MEMORY[0x277D85DE8];
  onlineSafetyRegionCodesURLMapping = [(CKSettingsMessagesController *)self onlineSafetyRegionCodesURLMapping];
  allKeys = [onlineSafetyRegionCodesURLMapping allKeys];

  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  regionCode = [currentLocale regionCode];

  v6 = [allKeys containsObject:regionCode];
  if (v6 && IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v10 = 138412290;
      v11 = regionCode;
      _os_log_impl(&dword_243BE5000, v7, OS_LOG_TYPE_INFO, "Region: %@ wanted to show the online safety link", &v10, 0xCu);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
  return v6;
}

- (void)showMultiplePhoneNumbersAlertForNicknames
{
  if (_os_feature_enabled_impl())
  {
    v3 = @"NAME_AND_PHOTO_SHARING_MULTIPLE_PHONE_NUMBERS_MESSAGE_APPLEACCOUNT";
  }

  else
  {
    v3 = @"NAME_AND_PHOTO_SHARING_MULTIPLE_PHONE_NUMBERS_MESSAGE";
  }

  v11 = MessagesSettingsLocalizedString(v3);
  v4 = MEMORY[0x277D75110];
  v5 = MessagesSettingsLocalizedString(@"NAME_AND_PHOTO_SHARING_NOT_AVAILABLE_TITLE");
  v6 = [v4 alertControllerWithTitle:v5 message:v11 preferredStyle:1];

  v7 = MEMORY[0x277D750F8];
  v8 = MessagesSettingsLocalizedString(@"NAME_AND_PHOTO_SHARING_ME_CARD_SETUP_PROMPT_OK");
  v9 = [v7 actionWithTitle:v8 style:0 handler:0];

  [v6 addAction:v9];
  navigationController = [(CKSettingsMessagesController *)self navigationController];
  [navigationController presentViewController:v6 animated:1 completion:0];
}

- (void)nameAndPhotoSharingForSpecifier:(id)specifier
{
  mEMORY[0x277D1AA48] = [MEMORY[0x277D1AA48] sharedInstance];
  if ((objc_opt_respondsToSelector() & 1) != 0 && ![MEMORY[0x277D18DA8] performSelector:sel_iCloudSignedInToUseNicknames withObject:0])
  {
    [(CKSettingsMessagesController *)self showiCloudNotSignedInAlertForNicknames];
    goto LABEL_19;
  }

  mEMORY[0x277D1A9B8] = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v7 = objc_opt_respondsToSelector();

    if ((v7 & 1) == 0)
    {
      goto LABEL_11;
    }

LABEL_9:
    if (![MEMORY[0x277D18DA8] performSelector:sel_multiplePhoneNumbersTiedToAppleID withObject:0])
    {
      goto LABEL_11;
    }

    [(CKSettingsMessagesController *)self showMultiplePhoneNumbersAlertForNicknames];
LABEL_19:
    [mEMORY[0x277D1AA48] setSharingEnabled:0];
    goto LABEL_20;
  }

  mEMORY[0x277D1A9B8]2 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  if (![mEMORY[0x277D1A9B8]2 isAllowMultiplePhoneNumbersSNaPEnabled])
  {
    v8 = objc_opt_respondsToSelector();

    if ((v8 & 1) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }

LABEL_11:
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  if ([currentDevice userInterfaceIdiom])
  {
    currentDevice2 = [MEMORY[0x277D75418] currentDevice];
    v11 = [currentDevice2 userInterfaceIdiom] == 1;
  }

  else
  {
    v11 = 1;
  }

  if (_os_feature_enabled_impl() && v11)
  {
    [(CKSettingsMessagesController *)self showNicknameOnboardingOrEditFlowController];
  }

  else
  {
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __64__CKSettingsMessagesController_nameAndPhotoSharingForSpecifier___block_invoke;
    v17[3] = &unk_278DE8D70;
    v17[4] = self;
    v12 = MEMORY[0x245D4D850](v17);
    mEMORY[0x277D18DA8] = [MEMORY[0x277D18DA8] sharedInstance];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __64__CKSettingsMessagesController_nameAndPhotoSharingForSpecifier___block_invoke_3;
    v15[3] = &unk_278DE8DC0;
    v16 = v12;
    v14 = v12;
    [mEMORY[0x277D18DA8] fetchPersonalNicknameWithCompletion:v15];
  }

LABEL_20:
}

void __64__CKSettingsMessagesController_nameAndPhotoSharingForSpecifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __64__CKSettingsMessagesController_nameAndPhotoSharingForSpecifier___block_invoke_2;
  v6[3] = &unk_278DE81E0;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

uint64_t __64__CKSettingsMessagesController_nameAndPhotoSharingForSpecifier___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  if (v2)
  {
    return [v1 showMeCardViewControllerWithNickname:?];
  }

  else
  {
    return [v1 showNicknameOnboardingController];
  }
}

void __64__CKSettingsMessagesController_nameAndPhotoSharingForSpecifier___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __64__CKSettingsMessagesController_nameAndPhotoSharingForSpecifier___block_invoke_4;
  v6[3] = &unk_278DE8D98;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

- (void)showNicknameOnboardingController
{
  v3 = CUTWeakLinkClass();
  if (v3)
  {
    v4 = objc_alloc_init(v3);
    [(CKSettingsMessagesController *)self setOnboardingController:v4];

    onboardingController = [(CKSettingsMessagesController *)self onboardingController];
    [onboardingController setDelegate:self];

    onboardingController2 = [(CKSettingsMessagesController *)self onboardingController];
    [onboardingController2 presentNicknameSharingSetupFlow];
  }
}

- (void)showNicknameOnboardingOrEditFlowController
{
  v3 = CUTWeakLinkClass();
  if (v3)
  {
    v4 = objc_alloc_init(v3);
    [(CKSettingsMessagesController *)self setOnboardingController:v4];

    onboardingController = [(CKSettingsMessagesController *)self onboardingController];
    [onboardingController setDelegate:self];

    onboardingController2 = [(CKSettingsMessagesController *)self onboardingController];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      onboardingController3 = [(CKSettingsMessagesController *)self onboardingController];
      [onboardingController3 performSelector:sel_presentNicknameOnboardingOrEditFlow];
    }
  }
}

- (void)onboardingControllerDidFinish:(id)finish
{
  [(CKSettingsMessagesController *)self setOnboardingController:0];

  [(CKSettingsMessagesController *)self reloadSpecifiers];
}

- (void)showMeCardViewControllerWithNickname:(id)nickname
{
  nicknameCopy = nickname;
  if (objc_opt_class())
  {
    mEMORY[0x277D1A968] = [MEMORY[0x277D1A968] sharedInstance];
    keysForNicknameHandling = [MEMORY[0x277D1A968] keysForNicknameHandling];
    v6 = [mEMORY[0x277D1A968] fetchMeContactWithKeys:keysForNicknameHandling];

    v7 = [CKSettingsMeCardSharingNameProvider nameProviderForNickname:nicknameCopy];
    mEMORY[0x277D1A968]2 = [MEMORY[0x277D1A968] sharedInstance];
    getContactStore = [mEMORY[0x277D1A968]2 getContactStore];

    _meCardSharingEnabled = [(CKSettingsMessagesController *)self _meCardSharingEnabled];
    _meCardSharingAudience = [(CKSettingsMessagesController *)self _meCardSharingAudience];
    if ([(CKSettingsMessagesController *)self _imageForkedFromMeCard])
    {
      v12 = [CKSettingsMeCardSharingNicknameAvatarProvider alloc];
      avatar = [nicknameCopy avatar];
      imageData = [avatar imageData];
      v15 = [(CKSettingsMeCardSharingNicknameAvatarProvider *)v12 initWithImageData:imageData];
    }

    else
    {
      v15 = [objc_alloc(MEMORY[0x277CBDC60]) initWithContact:v6];
    }

    v16 = [objc_alloc(MEMORY[0x277CBDC68]) initWithContactStore:getContactStore contact:v6 avatarProvider:v15 nameProvider:v7 sharingEnabled:_meCardSharingEnabled selectedSharingAudience:_meCardSharingAudience];
    [v16 setDelegate:self];
    navigationController = [(CKSettingsMessagesController *)self navigationController];
    [navigationController pushViewController:v16 animated:1];
  }
}

- (id)getNameAndPhotoSharingSpecifierSummary:(id)summary
{
  if (![(CKSettingsMessagesController *)self _meCardSharingEnabled])
  {
    v6 = @"GENERAL_OFF";
    goto LABEL_6;
  }

  v4 = objc_opt_class();
  if (!v4)
  {
    goto LABEL_7;
  }

  _meCardSharingAudience = [(CKSettingsMessagesController *)self _meCardSharingAudience];
  if (_meCardSharingAudience <= 2)
  {
    v6 = off_278DE8DE0[_meCardSharingAudience];
LABEL_6:
    v4 = MessagesSettingsLocalizedString(v6);
    goto LABEL_7;
  }

  v4 = 0;
LABEL_7:

  return v4;
}

- (id)getNameAndPhotoSharingFooterText
{
  if (![(CKSettingsMessagesController *)self _meCardSharingEnabled])
  {
    v5 = @"NAME_AND_PHOTO_SHARING_NOT_SHARING_FOOTER";
LABEL_9:
    v6 = MessagesSettingsLocalizedString(v5);
    goto LABEL_10;
  }

  if (objc_opt_class())
  {
    _meCardSharingAudience = [(CKSettingsMessagesController *)self _meCardSharingAudience];
    v4 = @"NAME_AND_PHOTO_SHARING_EVERYONE_FOOTER";
    if (_meCardSharingAudience == 1)
    {
      v4 = @"NAME_AND_PHOTO_SHARING_CONTACTS_ONLY_FOOTER";
    }

    if (_meCardSharingAudience == 2)
    {
      v5 = @"NAME_AND_PHOTO_SHARING_ALWAYS_ASK_FOOTER";
    }

    else
    {
      v5 = v4;
    }

    goto LABEL_9;
  }

  v6 = &stru_2856D3978;
LABEL_10:

  return v6;
}

- (void)_showSetupMeCardAlert
{
  v7 = MessagesSettingsLocalizedString(@"NAME_AND_PHOTO_SHARING_ME_CARD_SETUP_PROMPT_TITLE");
  v3 = MessagesSettingsLocalizedString(@"NAME_AND_PHOTO_SHARING_ME_CARD_SETUP_PROMPT_MESSAGE");
  v4 = MessagesSettingsLocalizedString(@"NAME_AND_PHOTO_SHARING_ME_CARD_SETUP_PROMPT_OK");
  v5 = [MEMORY[0x277D75110] alertControllerWithTitle:v7 message:v3 preferredStyle:1];
  v6 = [MEMORY[0x277D750F8] actionWithTitle:v4 style:0 handler:0];
  [v5 addAction:v6];

  [(CKSettingsMessagesController *)self presentViewController:v5 animated:1 completion:0];
}

- (BOOL)_meCardSharingEnabled
{
  keyExistsAndHasValidFormat = 0;
  if (CFPreferencesGetAppBooleanValue(@"MeCardSharingEnabled", @"com.apple.messages.nicknames", &keyExistsAndHasValidFormat))
  {
    v2 = keyExistsAndHasValidFormat == 0;
  }

  else
  {
    v2 = 1;
  }

  return !v2;
}

- (unint64_t)_meCardSharingAudience
{
  keyExistsAndHasValidFormat = 0;
  AppIntegerValue = CFPreferencesGetAppIntegerValue(@"MeCardSharingAudience", @"com.apple.messages.nicknames", &keyExistsAndHasValidFormat);
  v3 = objc_opt_class();
  if (keyExistsAndHasValidFormat)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3 == 0;
  }

  if (v4)
  {
    return AppIntegerValue;
  }

  else
  {
    return 1;
  }
}

- (BOOL)_imageForkedFromMeCard
{
  keyExistsAndHasValidFormat = 0;
  if (CFPreferencesGetAppBooleanValue(@"MeCardSharingImageForkedFromMeCard", @"com.apple.messages.nicknames", &keyExistsAndHasValidFormat))
  {
    v2 = keyExistsAndHasValidFormat == 0;
  }

  else
  {
    v2 = 1;
  }

  return !v2;
}

- (id)onlineSafetySettingsSpecifierIdentifiers
{
  v5[2] = *MEMORY[0x277D85DE8];
  v5[0] = @"ONLINE_SAFETY_GROUP";
  v5[1] = @"ONLINE_SAFETY_BUTTON";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:2];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (id)sharedWithYouSettingsSpecifierIdentifiers
{
  v5[2] = *MEMORY[0x277D85DE8];
  v5[0] = @"SHARED_WITH_YOU_GROUP";
  v5[1] = @"SHARED_WITH_YOU_BUTTON";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:2];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (BOOL)shouldShowSharedWithYouSettings
{
  if (_os_feature_enabled_impl())
  {
    return 1;
  }

  return _os_feature_enabled_impl();
}

- (id)getSharedWithYouForSpecifier:(id)specifier
{
  v4 = MessagesSettingsLocalizedString(@"GENERAL_ON");
  v5 = MessagesSettingsLocalizedString(@"GENERAL_OFF");
  if ([(CKSettingsMessagesController *)self _sharedWithYouEnabled])
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = v6;

  return v6;
}

- (BOOL)_sharedWithYouEnabled
{
  if ([MEMORY[0x277D1A9A0] deviceIsLockedDown])
  {
    return 0;
  }

  mEMORY[0x277D1A990] = [MEMORY[0x277D1A990] sharedInstance];
  v4 = [mEMORY[0x277D1A990] getBoolFromDomain:@"com.apple.SocialLayer" forKey:@"SharedWithYouEnabled"];

  return v4;
}

- (id)_sharedWithYouViewController
{
  v3 = objc_alloc_init(CKSettingsSharedWithYouController);
  [(CKSettingsSharedWithYouController *)v3 setParentController:self];
  rootController = [(CKSettingsMessagesController *)self rootController];
  [(CKSettingsSharedWithYouController *)v3 setRootController:rootController];

  return v3;
}

- (id)inboxSummarySettingsSpecifierIdentifiers
{
  v5[2] = *MEMORY[0x277D85DE8];
  v5[0] = @"INBOX_SUMMARY_GROUP";
  v5[1] = @"INBOX_SUMMARY_SWITCH";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:2];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (BOOL)shouldShowInboxSummarySettings
{
  mEMORY[0x277D1A9B8] = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  v3 = objc_opt_respondsToSelector();

  if ((v3 & 1) == 0)
  {
    return 0;
  }

  mEMORY[0x277D1A9B8]2 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  generativeModelsAvailable = [mEMORY[0x277D1A9B8]2 generativeModelsAvailable];

  return generativeModelsAvailable;
}

- (id)isInboxSummarizationEnabled:(id)enabled
{
  mEMORY[0x277D1A9B8] = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    mEMORY[0x277D1A9B8]2 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
    summarizationUserPreferenceEnabled = [mEMORY[0x277D1A9B8]2 summarizationUserPreferenceEnabled];
  }

  else
  {
    summarizationUserPreferenceEnabled = 1;
  }

  v7 = MEMORY[0x277CCABB0];

  return [v7 numberWithBool:summarizationUserPreferenceEnabled];
}

- (void)setInboxSummarizationEnabled:(id)enabled specifier:(id)specifier
{
  bOOLValue = [enabled BOOLValue];
  mEMORY[0x277D1A9B8] = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    mEMORY[0x277D1A9B8]2 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
    [mEMORY[0x277D1A9B8]2 setSummarizationUserPreferenceEnabled:bOOLValue];
  }
}

- (BOOL)shouldShowCheckInLocationHistorySettings
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = MGCopyAnswer();
  if (v3)
  {
    v4 = v3;
    if (!CFEqual(v3, @"iPhone"))
    {
      if (IMOSLoggingEnabled())
      {
        v8 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
        {
          v10 = 138412290;
          v11 = v4;
          _os_log_impl(&dword_243BE5000, v8, OS_LOG_TYPE_INFO, "Check In not supported for device type: %@", &v10, 0xCu);
        }
      }

      CFRelease(v4);
      goto LABEL_22;
    }

    CFRelease(v4);
  }

  if (![(CKSettingsMessagesController *)self isCheckInAllowedInRegion])
  {
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        LOWORD(v10) = 0;
        _os_log_impl(&dword_243BE5000, v7, OS_LOG_TYPE_INFO, "Check In not supported in region", &v10, 2u);
      }

      goto LABEL_21;
    }

LABEL_22:
    v9 = *MEMORY[0x277D85DE8];
    return 0;
  }

  if (([MEMORY[0x277D4AB40] hasUserCompletedOnboarding] & 1) == 0)
  {
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        LOWORD(v10) = 0;
        _os_log_impl(&dword_243BE5000, v7, OS_LOG_TYPE_INFO, "Check In onboarding not completed", &v10, 2u);
      }

LABEL_21:

      goto LABEL_22;
    }

    goto LABEL_22;
  }

  v5 = *MEMORY[0x277D85DE8];

  return _os_feature_enabled_impl();
}

- (id)checkInLocationHistorySettingsSpecifierIdentifiers
{
  v5[2] = *MEMORY[0x277D85DE8];
  v5[0] = @"CHECK_IN_LOCATION_HISTORY_SECTION_ID";
  v5[1] = @"CHECK_IN_LOCATION_HISTORY_ID";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:2];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (id)getCheckInLocationHistorySetting:(id)setting
{
  v3 = MessagesSettingsLocalizedString(@"CHECK_IN_LOCATION_HISTORY_ENABLED");
  v4 = MessagesSettingsLocalizedString(@"CHECK_IN_LOCATION_HISTORY_DISABLED");
  if ([MEMORY[0x277D4AB40] shareAllLocations])
  {
    v5 = v3;
  }

  else
  {
    v5 = v4;
  }

  v6 = v5;

  return v5;
}

- (BOOL)isCheckInAllowedInRegion
{
  v24 = *MEMORY[0x277D85DE8];
  currentEstimates = [MEMORY[0x277D443A8] currentEstimates];
  if ([currentEstimates count] || (objc_msgSend(MEMORY[0x277D443A8], "lastKnownEstimates"), v3 = objc_claimAutoreleasedReturnValue(), currentEstimates, currentEstimates = v3, objc_msgSend(v3, "count")))
  {
    if (IMOSLoggingEnabled())
    {
      v4 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v23 = currentEstimates;
        _os_log_impl(&dword_243BE5000, v4, OS_LOG_TYPE_INFO, "Current regulatory domain: %@", buf, 0xCu);
      }
    }

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    currentEstimates = currentEstimates;
    v5 = [currentEstimates countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v5)
    {
      v6 = *v18;
      while (2)
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v18 != v6)
          {
            objc_enumerationMutation(currentEstimates);
          }

          v8 = *(*(&v17 + 1) + 8 * i);
          v9 = objc_autoreleasePoolPush();
          if ((_os_feature_enabled_impl() & 1) == 0)
          {
            countryCode = [v8 countryCode];
            v11 = [countryCode isEqualToString:@"KR"];

            if (v11)
            {
              if (IMOSLoggingEnabled())
              {
                v13 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
                {
                  *buf = 138412290;
                  v23 = v8;
                  _os_log_impl(&dword_243BE5000, v13, OS_LOG_TYPE_INFO, "Check In not available in regulatory domain: %@", buf, 0xCu);
                }
              }

              objc_autoreleasePoolPop(v9);
              v12 = 0;
              goto LABEL_22;
            }
          }

          objc_autoreleasePoolPop(v9);
        }

        v5 = [currentEstimates countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }
    }

    v12 = 1;
LABEL_22:
  }

  else if (IMOSLoggingEnabled())
  {
    v16 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_243BE5000, v16, OS_LOG_TYPE_INFO, "Unable to determine Check In availability", buf, 2u);
    }

    v12 = 1;
    currentEstimates = v3;
  }

  else
  {
    v12 = 1;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v12;
}

- (void)configureCheckInSpecifiers:(id)specifiers
{
  v4 = MEMORY[0x277D37670];
  specifiersCopy = specifiers;
  v17 = [v4 linkWithBundleIdentifier:@"com.apple.onboarding.checkin"];
  flow = [v17 flow];
  localizedButtonTitle = [flow localizedButtonTitle];

  v8 = MessagesSettingsLocalizedString(@"CHECK_IN_LOCATION_HISTORY_FOOTER");
  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@", v8, localizedButtonTitle];
  v10 = [specifiersCopy specifierForID:@"CHECK_IN_LOCATION_HISTORY_SECTION_ID"];
  v11 = objc_opt_class();
  v12 = NSStringFromClass(v11);
  [v10 setProperty:v12 forKey:*MEMORY[0x277D3FF48]];

  [v10 setProperty:v9 forKey:*MEMORY[0x277D3FF70]];
  v19.location = [v9 rangeOfString:localizedButtonTitle];
  v13 = NSStringFromRange(v19);
  [v10 setProperty:v13 forKey:*MEMORY[0x277D3FF58]];

  v14 = [MEMORY[0x277CCAE60] valueWithNonretainedObject:self];
  [v10 setProperty:v14 forKey:*MEMORY[0x277D3FF68]];

  v15 = NSStringFromSelector(sel_presentCheckInPrivacySplashController);
  [v10 setProperty:v15 forKey:*MEMORY[0x277D3FF50]];

  v16 = [specifiersCopy specifierForID:@"CHECK_IN_LOCATION_HISTORY_ID"];

  [v16 setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FD80]];
}

- (void)presentCheckInPrivacySplashController
{
  v3 = [MEMORY[0x277D37678] presenterForPrivacySplashWithIdentifier:@"com.apple.onboarding.checkin"];
  [v3 setPresentingViewController:self];
  [v3 present];
}

- (void)sharingSettingsViewController:(id)controller didSelectSharingAudience:(unint64_t)audience
{
  CFPreferencesSetAppValue(@"MeCardSharingAudience", [MEMORY[0x277CCABB0] numberWithInteger:audience], @"com.apple.messages.nicknames");
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:*MEMORY[0x277D1A3A8] object:0];
}

- (void)sharingSettingsViewController:(id)controller didUpdateWithSharingResult:(id)result
{
  v4 = MEMORY[0x277D18DA8];
  resultCopy = result;
  sharedInstance = [v4 sharedInstance];
  [sharedInstance updatePersonalNicknameIfNecessaryWithMeCardSharingResult:resultCopy];
}

- (id)_messagesForBusinessViewController
{
  v3 = objc_alloc_init(CKSettingsMessagesForBusinessViewController);
  lazuliEnablementManager = [(CKSettingsMessagesController *)self lazuliEnablementManager];
  [(CKSettingsMessagesForBusinessViewController *)v3 setLazuliEnablementManager:lazuliEnablementManager];

  [(CKSettingsMessagesForBusinessViewController *)v3 setParentController:self];
  rootController = [(CKSettingsMessagesController *)self rootController];
  [(CKSettingsMessagesForBusinessViewController *)v3 setRootController:rootController];

  return v3;
}

- (BOOL)shouldShowSMSRelaySettings
{
  v23 = *MEMORY[0x277D85DE8];
  mEMORY[0x277D07DB0] = [MEMORY[0x277D07DB0] sharedInstance];
  supportsSMS = [mEMORY[0x277D07DB0] supportsSMS];

  _isMessagesTheDefaultMessagingApp = [(CKSettingsMessagesController *)self _isMessagesTheDefaultMessagingApp];
  hasPhoneNumber = [(CKSettingsMessagesController *)self hasPhoneNumber];
  v7 = +[CKSettingSMSRelayController shouldShowSMSRelaySettings];
  mEMORY[0x277D18D28] = [MEMORY[0x277D18D28] sharedInstance];
  iMessageService = [MEMORY[0x277D18DE0] iMessageService];
  v10 = [mEMORY[0x277D18D28] activeAccountsForService:iMessageService];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v11 = v10;
  v12 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v12)
  {
    v13 = *v19;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v19 != v13)
        {
          objc_enumerationMutation(v11);
        }

        if ([*(*(&v18 + 1) + 8 * i) accountType] == 1)
        {
          LOBYTE(v12) = 1;
          goto LABEL_11;
        }
      }

      v12 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  _isMadridAccountOperational = [(CKSettingsMessagesController *)self _isMadridAccountOperational];
  v16 = *MEMORY[0x277D85DE8];
  return v12 & _isMadridAccountOperational & hasPhoneNumber & _isMessagesTheDefaultMessagingApp & v7 & supportsSMS;
}

- (BOOL)hasPhoneNumber
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc(MEMORY[0x277CC37B0]);
  v3 = [v2 initWithQueue:MEMORY[0x277D85CD0]];
  v21 = 0;
  v4 = [v3 getSubscriptionInfoWithError:&v21];
  v5 = v21;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  subscriptions = [v4 subscriptions];
  v7 = [subscriptions countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (v7)
  {
    v8 = *v18;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(subscriptions);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        labelID = [v10 labelID];
        if (labelID)
        {
          v12 = labelID;
          phoneNumber = [v10 phoneNumber];
          v14 = [phoneNumber length];

          if (v14)
          {
            LOBYTE(v7) = 1;
            goto LABEL_12;
          }
        }
      }

      v7 = [subscriptions countByEnumeratingWithState:&v17 objects:v22 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  v15 = *MEMORY[0x277D85DE8];
  return v7;
}

- (BOOL)shouldShowReadReceipts
{
  if ([(CKSettingsMessagesController *)self _isMadridAccountOperational])
  {
    return 1;
  }

  lazuliEnablementManager = [(CKSettingsMessagesController *)self lazuliEnablementManager];
  isRCSEnabledForAnyActiveSubscription = [lazuliEnablementManager isRCSEnabledForAnyActiveSubscription];

  return isRCSEnabledForAnyActiveSubscription;
}

- (id)areReadReceiptsEnabled:(id)enabled
{
  CFPreferencesSynchronize(@"com.apple.madrid", *MEMORY[0x277CBF040], *MEMORY[0x277CBF010]);
  keyExistsAndHasValidFormat = 0;
  if (CFPreferencesGetAppBooleanValue(@"ReadReceiptsEnabled", @"com.apple.madrid", &keyExistsAndHasValidFormat))
  {
    v3 = keyExistsAndHasValidFormat == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = !v3;
  v5 = [MEMORY[0x277CCABB0] numberWithBool:v4];

  return v5;
}

- (void)setReadReceiptsEnabled:(id)enabled specifier:(id)specifier
{
  enabledCopy = enabled;
  sharedSettingsHelper = [(CKSettingsMessagesController *)self sharedSettingsHelper];
  bOOLValue = [enabledCopy BOOLValue];

  [sharedSettingsHelper setReadReceiptsEnabled:bOOLValue];
}

- (BOOL)shouldShowJunkFilteringReceipts
{
  v2 = CUTWeakLinkSymbol();
  if (v2)
  {

    LOBYTE(v2) = v2();
  }

  return v2;
}

- (id)areJunkFilteringReceiptsEnabled:(id)enabled
{
  CFPreferencesSynchronize(@"com.apple.madrid", *MEMORY[0x277CBF040], *MEMORY[0x277CBF010]);
  keyExistsAndHasValidFormat = 0;
  if (CFPreferencesGetAppBooleanValue(@"JunkFilteringReceiptsEnabled", @"com.apple.madrid", &keyExistsAndHasValidFormat))
  {
    v3 = 1;
  }

  else
  {
    v3 = keyExistsAndHasValidFormat == 0;
  }

  v4 = v3;
  v5 = [MEMORY[0x277CCABB0] numberWithBool:v4];

  return v5;
}

- (void)setJunkFilteringReceiptsEnabled:(id)enabled specifier:(id)specifier
{
  enabledCopy = enabled;
  v6 = MEMORY[0x245D4CF30](@"com.apple.madrid", @"JunkFilteringReceiptsVersionID");
  v11 = v6;
  if (v6)
  {
    v7 = [v6 integerValue] + 1;
  }

  else
  {
    v7 = 1;
  }

  CFPreferencesSetAppValue(@"JunkFilteringReceiptsVersionID", [MEMORY[0x277CCABB0] numberWithInteger:v7], @"com.apple.madrid");
  CFPreferencesSetAppValue(@"JunkFilteringReceiptsEnabled", enabledCopy, @"com.apple.madrid");

  CFPreferencesSynchronize(@"com.apple.madrid", *MEMORY[0x277CBF040], *MEMORY[0x277CBF010]);
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.MobileSMS.JunkFilteringReceiptsEnabled.changed", 0, 0, 1u);
  notify_post("com.apple.MobileSMS.JunkFilteringReceiptsEnabled.shouldUpdateDevices");
  if (PSIsNanoMirroringDomain())
  {
    _syncManager = [(CKSettingsMessagesController *)self _syncManager];
    v10 = [MEMORY[0x277CBEB98] setWithObject:@"JunkFilteringReceiptsEnabled"];
    [_syncManager synchronizeUserDefaultsDomain:@"com.apple.madrid" keys:v10];
  }
}

- (BOOL)shouldShowiMessageApps
{
  mEMORY[0x277D1A9B8] = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  isSendMenuEnabled = [mEMORY[0x277D1A9B8] isSendMenuEnabled];

  if (!isSendMenuEnabled)
  {
    return 0;
  }

  iMessageAppManager = [(CKSettingsMessagesController *)self iMessageAppManager];
  haveDeletableApps = [iMessageAppManager haveDeletableApps];

  return haveDeletableApps;
}

- (id)iMessageAppsIdentifiers
{
  v5[2] = *MEMORY[0x277D85DE8];
  v5[0] = @"IMESSAGE_APPS_GROUP";
  v5[1] = @"IMESSAGE_APPS_BUTTON";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:2];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (id)_iMessageAppsViewController
{
  iMessageAppManager = [(CKSettingsMessagesController *)self iMessageAppManager];
  v4 = [[CKSettingsiMessageAppsViewController alloc] initWithAppManager:iMessageAppManager];
  [(CKSettingsiMessageAppsViewController *)v4 setParentController:self];
  rootController = [(CKSettingsMessagesController *)self rootController];
  [(CKSettingsiMessageAppsViewController *)v4 setRootController:rootController];

  return v4;
}

- (BOOL)shouldShowSendAsSMS
{
  if (![(CKSettingsMessagesController *)self _isSMSDevice]|| ![(CKSettingsMessagesController *)self _isMessagesTheDefaultMessagingApp])
  {
    return 0;
  }

  return [(CKSettingsMessagesController *)self _isMadridAccountOperational];
}

- (void)showMessagesInICloudSettings:(id)settings
{
  v4 = [MEMORY[0x277CBEBC0] URLWithString:@"settings-navigation://com.apple.Settings.AppleAccount/ICLOUD_SERVICE/com.apple.Dataclass.Messages"];
  defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
  [defaultWorkspace openSensitiveURL:v4 withOptions:0];
}

- (id)getMessagesInICloudEnabledSpecifier:(id)specifier
{
  v4 = MessagesSettingsLocalizedString(@"GENERAL_ON");
  v5 = MessagesSettingsLocalizedString(@"GENERAL_OFF");
  if ([(CKSettingsMessagesController *)self _isMessagesInICloudEnabled])
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = v6;

  return v6;
}

- (BOOL)_isMessagesInICloudEnabled
{
  mEMORY[0x277D1A990] = [MEMORY[0x277D1A990] sharedInstance];
  v3 = [mEMORY[0x277D1A990] getBoolFromDomain:@"com.apple.madrid" forKey:@"CloudKitSyncingEnabled"];

  return v3;
}

- (void)openOnlineSafetyURL
{
  _safetyURLForCurrentRegion = [(CKSettingsMessagesController *)self _safetyURLForCurrentRegion];
  if (_safetyURLForCurrentRegion)
  {
    v6 = _safetyURLForCurrentRegion;
    safariImportWorkaround = [(CKSettingsMessagesController *)self safariImportWorkaround];
    v5 = [safariImportWorkaround safariViewControllerForURL:v6];

    [(CKSettingsMessagesController *)self presentViewController:v5 animated:1 completion:0];
    _safetyURLForCurrentRegion = v6;
  }
}

- (id)onlineSafetyRegionCodesURLMapping
{
  v8[2] = *MEMORY[0x277D85DE8];
  v7[0] = @"AU";
  v2 = MessagesSettingsLocalizedString(@"AU_ONLINE_SAFETY_URL");
  v7[1] = @"GB";
  v8[0] = v2;
  v3 = MessagesSettingsLocalizedString(@"UK_ONLINE_SAFETY_URL");
  v8[1] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)_safetyURLForCurrentRegion
{
  onlineSafetyRegionCodesURLMapping = [(CKSettingsMessagesController *)self onlineSafetyRegionCodesURLMapping];
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  regionCode = [currentLocale regionCode];

  v5 = [onlineSafetyRegionCodesURLMapping objectForKeyedSubscript:regionCode];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
    v8 = [MEMORY[0x277CBEBC0] URLWithString:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (CKSafariViewControllerImportWorkaround)safariImportWorkaround
{
  safariImportWorkaround = self->_safariImportWorkaround;
  if (!safariImportWorkaround)
  {
    v4 = objc_alloc_init(CKSafariViewControllerImportWorkaround);
    v5 = self->_safariImportWorkaround;
    self->_safariImportWorkaround = v4;

    [(CKSafariViewControllerImportWorkaround *)self->_safariImportWorkaround setDelegate:self];
    safariImportWorkaround = self->_safariImportWorkaround;
  }

  return safariImportWorkaround;
}

- (BOOL)shouldShowMadridAccounts
{
  regController = [(CNFRegListController *)self regController];
  if ([regController serviceSupportsDeviceAliasEnablement])
  {
    regController2 = [(CNFRegListController *)self regController];
    usableDeviceAliases = [regController2 usableDeviceAliases];
    v6 = [usableDeviceAliases count] != 0;
  }

  else
  {
    v6 = 0;
  }

  if ([(CKSettingsMessagesController *)self _isMadridAccountOperational])
  {
    return 1;
  }

  else
  {
    return [(CKSettingsMessagesController *)self _isMadridSwitchOn]&& v6;
  }
}

- (id)madridEnabledSpecifierIdentifiers
{
  v5[3] = *MEMORY[0x277D85DE8];
  v5[0] = @"MADRID_ACCOUNTS";
  v5[1] = @"MADRID_ACCOUNTS_BUTTON";
  v5[2] = @"MESSAGES_IN_ICLOUD";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:3];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (id)getAccountSummaryForSpecifier:(id)specifier
{
  v6 = 0;
  regController = [(CNFRegListController *)self regController];
  v4 = [regController aliasSummaryString:&v6];

  return v4;
}

- (BOOL)shouldShowUpdateAppleID
{
  shouldShowMadridSwitch = [(CKSettingsMessagesController *)self shouldShowMadridSwitch];
  if (shouldShowMadridSwitch)
  {

    LOBYTE(shouldShowMadridSwitch) = [(CKSettingsMessagesController *)self _isAppleIDUpdateNeeded];
  }

  return shouldShowMadridSwitch;
}

- (void)showCKVSettings:(id)settings
{
  v4 = [MEMORY[0x277CBEBC0] URLWithString:@"settings-navigation://com.apple.Settings.AppleAccount/TRANSPARENCY"];
  defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
  [defaultWorkspace openSensitiveURL:v4 withOptions:0];
}

- (BOOL)_isAppleIDUpdateNeeded
{
  selfCopy = self;
  _registrationFailures = [(CKSettingsMessagesController *)self _registrationFailures];
  LOBYTE(selfCopy) = [(CKSettingsMessagesController *)selfCopy _registrationFailures:_registrationFailures containsFailure:28];

  return selfCopy;
}

- (int64_t)_debugFailureReason
{
  v2 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.MobileSMS"];
  v3 = [v2 integerForKey:@"userRegistrationKTFailure"];
  v4 = 28;
  if (v3 != 2)
  {
    v4 = -1;
  }

  if (v3 == 1)
  {
    v5 = 29;
  }

  else
  {
    v5 = v4;
  }

  return v5;
}

- (BOOL)shouldShowMadridSignin
{
  v18 = *MEMORY[0x277D85DE8];
  if (![(CKSettingsMessagesController *)self _isMadridAccountOperational])
  {
    _isMadridSwitchOn = [(CKSettingsMessagesController *)self _isMadridSwitchOn];
    if (!_isMadridSwitchOn)
    {
      goto LABEL_17;
    }

    regController = [(CNFRegListController *)self regController];
    v5 = [regController accountsWithFilter:49156];

    if (![v5 count])
    {
LABEL_16:

      LOBYTE(_isMadridSwitchOn) = ![(CKSettingsMessagesController *)self shouldShowMadridAccounts];
      goto LABEL_17;
    }

    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = v5;
    v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v13 + 1) + 8 * i);
          if ([v10 registrationStatus] <= 3 && !objc_msgSend(v10, "isAccountKeyCDPSyncingOrWaitingForUser"))
          {

            goto LABEL_16;
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }
  }

  LOBYTE(_isMadridSwitchOn) = 0;
LABEL_17:
  v11 = *MEMORY[0x277D85DE8];
  return _isMadridSwitchOn;
}

- (id)madridSigninButtonTextForSpecifier:(id)specifier
{
  v3 = _os_feature_enabled_impl();
  v4 = CommunicationsSetupUIBundle();
  v5 = CNFRegStringTableName();
  if (v3)
  {
    v6 = @"FACETIME_ACCOUNT_INFO_UNAVAILABLE_APPLEACCOUNT";
  }

  else
  {
    v6 = @"FACETIME_ACCOUNT_INFO_UNAVAILABLE";
  }

  v7 = [v4 localizedStringForKey:v6 value:&stru_2856D3978 table:v5];

  return v7;
}

- (id)getPreviewTranscodingEnabled:(id)enabled
{
  CFPreferencesSynchronize(@"com.apple.imessage", *MEMORY[0x277CBF040], *MEMORY[0x277CBF010]);
  keyExistsAndHasValidFormat = 0;
  if (CFPreferencesGetAppBooleanValue(@"PreviewTranscodingEnabled", @"com.apple.imessage", &keyExistsAndHasValidFormat))
  {
    v3 = keyExistsAndHasValidFormat == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = !v3;
  v5 = [MEMORY[0x277CCABB0] numberWithBool:v4];

  return v5;
}

- (void)setPreviewTranscodingEnabled:(id)enabled specifier:(id)specifier
{
  CFPreferencesSetAppValue(@"PreviewTranscodingEnabled", enabled, @"com.apple.imessage");
  CFPreferencesSetAppValue(@"PreviewTranscodingSelectedByUser", *MEMORY[0x277CBED28], @"com.apple.imessage");
  v4 = *MEMORY[0x277CBF040];
  v5 = *MEMORY[0x277CBF010];

  CFPreferencesSynchronize(@"com.apple.imessage", v4, v5);
}

- (id)getSMSRelayDevicesSummary:(id)summary
{
  v3 = +[CKSettingSMSRelayController numberOfActiveDevices];
  v4 = v3;
  if (v3)
  {
    if (v3 == 1)
    {
      v5 = @"SMS_RELAY_SINGLE_DEVICE_LABEL";
    }

    else
    {
      v5 = @"SMS_RELAY_MULTIPLE_DEVICES_LABEL";
    }

    v6 = MessagesSettingsLocalizedString(v5);
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:v6, v4];
  }

  return v4;
}

- (void)setKeepMessages:(id)messages specifier:(id)specifier
{
  messagesCopy = messages;
  v5 = MEMORY[0x245D4CF30](@"com.apple.MobileSMS", @"KeepMessagesVersionID");
  v8 = v5;
  if (v5)
  {
    v6 = [v5 integerValue] + 1;
  }

  else
  {
    v6 = 1;
  }

  CFPreferencesSetAppValue(@"KeepMessagesVersionID", [MEMORY[0x277CCABB0] numberWithInteger:v6], @"com.apple.MobileSMS");
  CFPreferencesSetAppValue(@"KeepMessageForDays", messagesCopy, @"com.apple.MobileSMS");

  CFPreferencesSynchronize(@"com.apple.MobileSMS", *MEMORY[0x277CBF040], *MEMORY[0x277CBF010]);
  notify_post("com.apple.MobileSMS.KeepMessages.shouldUpdateDevices");
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.MobileSMS.KeepMessages.changed", 0, 0, 1u);
}

- (BOOL)authenticationController:(id)controller shouldContinueWithAuthenticationResults:(id)results error:(id)error forContext:(id)context
{
  v43 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  resultsCopy = results;
  errorCopy = error;
  contextCopy = context;
  if (!errorCopy)
  {
    v17 = [resultsCopy objectForKey:*MEMORY[0x277CEFFD8]];
    v18 = [resultsCopy objectForKey:*MEMORY[0x277CEFFC8]];
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

    regController = [(CNFRegListController *)self regController];
    serviceType = [regController serviceType];

    if (serviceType)
    {
      if (serviceType == 1)
      {
        iMessageService = [MEMORY[0x277D18DE0] iMessageService];
LABEL_27:
        v25 = iMessageService;
        if (iMessageService)
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
          regController2 = [(CNFRegListController *)self regController];
          v29 = -[CNFAccountRegistrar initWithServiceType:presentationViewController:](v27, "initWithServiceType:presentationViewController:", [regController2 serviceType], self);

          v35[0] = MEMORY[0x277D85DD0];
          v35[1] = 3221225472;
          v35[2] = __114__CKSettingsMessagesController_authenticationController_shouldContinueWithAuthenticationResults_error_forContext___block_invoke;
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

      if (serviceType != 2)
      {
        goto LABEL_34;
      }
    }

    iMessageService = [MEMORY[0x277D18DE0] facetimeService];
    goto LABEL_27;
  }

  v14 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = errorCopy;
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

void __114__CKSettingsMessagesController_authenticationController_shouldContinueWithAuthenticationResults_error_forContext___block_invoke(uint64_t a1, int a2, void *a3)
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
  regController = [(CNFRegListController *)self regController];
  serviceType = [regController serviceType];

  if (serviceType == 1)
  {
    v11 = 4;
  }

  else
  {
    v11 = 5;
  }

  [v3 setServiceType:v11];
  v12 = CUTWeakLinkSymbol();
  if (v12 && v12())
  {
    [v3 setIsUsernameEditable:0];
  }

  v13 = objc_alloc_init(CUTWeakLinkClass());
  aa_primaryAppleAccount = [v13 aa_primaryAppleAccount];
  username = [aa_primaryAppleAccount username];
  if ([username length])
  {
    [v3 setUsername:username];
    [v3 setReason:username];
    [v3 setShouldForceInteractiveAuth:0];
  }

  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__917;
  v22 = __Block_byref_object_dispose__918;
  v23 = objc_alloc_init(MEMORY[0x277CF0178]);
  [v19[5] setDelegate:self];
  v16 = v19[5];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __53__CKSettingsMessagesController__showSignInController__block_invoke;
  v17[3] = &unk_278DE8490;
  v17[4] = &v18;
  [v16 authenticateWithContext:v3 completion:v17];
  _Block_object_dispose(&v18, 8);
}

void __53__CKSettingsMessagesController__showSignInController__block_invoke(uint64_t a1, void *a2, void *a3)
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

- (void)_showMadridSetupIfNecessary:(BOOL)necessary
{
  necessaryCopy = necessary;
  v30 = *MEMORY[0x277D85DE8];
  if (![(CKSettingsMessagesController *)self _isSMSDevice]|| necessaryCopy)
  {
    regController = [(CNFRegListController *)self regController];
    accounts = [regController accounts];

    v7 = [accounts count];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v8 = accounts;
    v9 = [v8 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v9)
    {
      v10 = v9;
      v24 = v7;
      v11 = 0;
      v12 = 0;
      v13 = 0;
      v14 = *v26;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v26 != v14)
          {
            objc_enumerationMutation(v8);
          }

          v16 = *(*(&v25 + 1) + 8 * i);
          isActive = [v16 isActive];
          v11 |= isActive ^ 1;
          v13 |= isActive;
          if (([v16 registrationStatus] + 1) <= 1)
          {
            v12 = 1;
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v10);
      v18 = v13 | v12 ^ 1;
      v7 = v24;
    }

    else
    {
      v11 = 0;
      v18 = 1;
    }

    v19 = [[CNFRegWizardController alloc] initWithServiceTypes:1];
    v20 = v19;
    if (v7 && (v11 & 1) != 0 && (v18 & 1) != 0)
    {
      if (!necessaryCopy)
      {
        goto LABEL_22;
      }
    }

    else if (![(CNFRegWizardController *)v19 shouldShowFirstRunController]&& !necessaryCopy)
    {
      goto LABEL_22;
    }

    [(PSSetupController *)v20 setParentController:self];
    rootController = [(CKSettingsMessagesController *)self rootController];
    [(PSRootController *)v20 setRootController:rootController];

    [(CNFRegWizardController *)v20 setCanStartNested:0];
    [(CNFRegWizardController *)v20 setCanShowSplashScreen:0];
    [(CNFRegWizardController *)v20 setCanShowDisabledScreen:0];
    [(CNFRegWizardController *)v20 setAllowCancel:1];
    [(CNFRegWizardController *)v20 setHideLearnMoreButton:1];
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    -[CNFRegWizardController setShowSplashOnSignin:](v20, "setShowSplashOnSignin:", [currentDevice userInterfaceIdiom] == 1);

    [(CNFRegWizardController *)v20 setFirstRunDelegate:self];
    [(CKSettingsMessagesController *)self showController:v20 animate:1];
    self->_showingChildViewController = 1;
LABEL_22:
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)firstRunControllerDidFinish:(id)finish finished:(BOOL)finished
{
  finishedCopy = finished;
  finishCopy = finish;
  if (finishedCopy)
  {
    regController = [(CNFRegListController *)self regController];
    [regController setServiceEnabled:1];
  }

  [(CKSettingsMessagesController *)self reloadSpecifiers];
  [finishCopy dismiss];
}

- (void)_updateUIWithError:(id)error
{
  errorCopy = error;
  if (![(CKSettingsMessagesController *)self _isMadridAccountOperational])
  {
    _failedAccounts = [(CKSettingsMessagesController *)self _failedAccounts];
    v5 = [_failedAccounts count];
    if (errorCopy)
    {
      if (v5)
      {
        regController = [(CNFRegListController *)self regController];
        v7 = [regController shouldShowAlertForError:errorCopy];

        if (v7)
        {
          [(CKSettingsMessagesController *)self _showMadridSetupIfNecessary];
          v8 = CommunicationsSetupUIBundle();
          v9 = CNFRegStringTableName();
          v10 = [v8 localizedStringForKey:@"FACETIME_ACTIVATION_ERROR_TITLE" value:&stru_2856D3978 table:v9];

          localizedDescription = [errorCopy localizedDescription];
          v12 = CommunicationsSetupUIBundle();
          v13 = CNFRegStringTableName();
          v14 = [v12 localizedStringForKey:@"FACETIME_ALERT_OK" value:&stru_2856D3978 table:v13];

          v15 = [MEMORY[0x277D75110] alertControllerWithTitle:v10 message:localizedDescription preferredStyle:1];
          v16 = [MEMORY[0x277D750F8] actionWithTitle:v14 style:0 handler:0];
          [v15 addAction:v16];

          [(CKSettingsMessagesController *)self presentViewController:v15 animated:1 completion:0];
        }
      }
    }
  }

  [(CKSettingsMessagesController *)self reloadSpecifiers];
}

- (void)_setupAccountHandlers
{
  v12.receiver = self;
  v12.super_class = CKSettingsMessagesController;
  [(CNFRegListController *)&v12 _setupEventHandlers];
  regController = [(CNFRegListController *)self regController];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __53__CKSettingsMessagesController__setupAccountHandlers__block_invoke;
  v11[3] = &unk_278DE7E08;
  v11[4] = self;
  [regController setResetBlock:v11];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __53__CKSettingsMessagesController__setupAccountHandlers__block_invoke_2;
  v10[3] = &unk_278DE8580;
  v10[4] = self;
  [regController setAccountAddedBlock:v10];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __53__CKSettingsMessagesController__setupAccountHandlers__block_invoke_3;
  v9[3] = &unk_278DE8580;
  v9[4] = self;
  [regController setAccountRemovedBlock:v9];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __53__CKSettingsMessagesController__setupAccountHandlers__block_invoke_4;
  v8[3] = &unk_278DE8580;
  v8[4] = self;
  [regController setAccountActivationChangedBlock:v8];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __53__CKSettingsMessagesController__setupAccountHandlers__block_invoke_5;
  v7[3] = &unk_278DE85A8;
  v7[4] = self;
  [regController setAccountRegistrationBlock:v7];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __53__CKSettingsMessagesController__setupAccountHandlers__block_invoke_6;
  v6[3] = &unk_278DE85F8;
  v6[4] = self;
  [regController setAliasStatusChangedBlock:v6];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __53__CKSettingsMessagesController__setupAccountHandlers__block_invoke_7;
  v5[3] = &unk_278DE85D0;
  v5[4] = self;
  [regController setAliasAddedBlock:v5];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __53__CKSettingsMessagesController__setupAccountHandlers__block_invoke_8;
  v4[3] = &unk_278DE85D0;
  v4[4] = self;
  [regController setAliasRemovedBlock:v4];
}

- (BOOL)_allAccountsAreDeactivated
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  regController = [(CNFRegListController *)self regController];
  accounts = [regController accounts];

  v4 = [accounts countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(accounts);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        if (([v8 isActive] & 1) != 0 || objc_msgSend(v8, "registrationStatus") > 1)
        {
          v9 = 0;
          goto LABEL_13;
        }
      }

      v5 = [accounts countByEnumeratingWithState:&v12 objects:v16 count:16];
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
  v6.receiver = self;
  v6.super_class = CKSettingsMessagesController;
  [(CNFRegListController *)&v6 _setupEventHandlers];
  regController = [(CNFRegListController *)self regController];
  if ([(CKSettingsMessagesController *)self _allAccountsAreDeactivated])
  {
    [(CKSettingsMessagesController *)self _setupAccountHandlers];
  }

  else
  {
    [(CNFRegListController *)self removeAllHandlers];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __65__CKSettingsMessagesController__setupAccountHandlersForDisabling__block_invoke;
    v5[3] = &unk_278DE8580;
    v5[4] = self;
    [regController setAccountActivationChangedBlock:v5];
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __65__CKSettingsMessagesController__setupAccountHandlersForDisabling__block_invoke_2;
    v4[3] = &unk_278DE85A8;
    v4[4] = self;
    [regController setAccountRegistrationBlock:v4];
  }
}

uint64_t __65__CKSettingsMessagesController__setupAccountHandlersForDisabling__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _updateSwitchDelayed];
  result = [*(a1 + 32) _allAccountsAreDeactivated];
  if (result)
  {
    [*(a1 + 32) _setupAccountHandlers];
    v3 = *(a1 + 32);

    return [v3 _updateUIWithError:0];
  }

  return result;
}

uint64_t __65__CKSettingsMessagesController__setupAccountHandlersForDisabling__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _updateSwitchDelayed];
  result = [*(a1 + 32) _allAccountsAreDeactivated];
  if (result)
  {
    [*(a1 + 32) _setupAccountHandlers];
    v3 = *(a1 + 32);

    return [v3 _updateUIWithError:0];
  }

  return result;
}

- (void)_clearMessagesAppExtensionSalt
{
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v3 = [defaultManager fileExistsAtPath:@"/var/mobile/Library/SMS/PluginMetaDataCache"];

  if (v3)
  {
    defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
    v7 = 0;
    [defaultManager2 removeItemAtPath:@"/var/mobile/Library/SMS/PluginMetaDataCache" error:&v7];
    v5 = v7;

    if (!v5)
    {
      DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.MobileSMS.AppMetadataFolderDeleted", 0, 0, 1u);
    }
  }
}

- (id)_madridSettingsController
{
  v3 = [CNFRegSettingsController alloc];
  regController = [(CNFRegListController *)self regController];
  v5 = [(CNFRegListController *)v3 initWithRegController:regController];

  rootController = [(CKSettingsMessagesController *)self rootController];
  [(CNFRegSettingsController *)v5 setRootController:rootController];

  [(CNFRegSettingsController *)v5 setParentController:self];
  specifier = [(CKSettingsMessagesController *)self specifier];
  [(CNFRegListController *)v5 setSpecifier:specifier];

  [(CNFRegSettingsController *)v5 setShowEnableSwitch:0];

  return v5;
}

- (id)_smsRelayDevicesController
{
  v3 = objc_alloc_init(CKSettingSMSRelayController);
  [(CKSettingSMSRelayController *)v3 setParentController:self];
  rootController = [(CKSettingsMessagesController *)self rootController];
  [(CKSettingSMSRelayController *)v3 setRootController:rootController];

  return v3;
}

- (CKRCSController)rcsMessagingController
{
  rcsMessagingController = self->_rcsMessagingController;
  if (!rcsMessagingController)
  {
    v4 = objc_alloc_init(CKRCSController);
    [(CKRCSController *)v4 setMultiSimHeaderKey:@"RCS_MESSAGING_HEADER"];
    [(CKRCSController *)v4 setControllerTitle:@"RCS_MESSAGING"];
    lazuliEnablementManager = [(CKSettingsMessagesController *)self lazuliEnablementManager];
    [(CKRCSController *)v4 setLazuliEnablementManager:lazuliEnablementManager];

    [(CKRCSController *)v4 setParentController:self];
    rootController = [(CKSettingsMessagesController *)self rootController];
    [(CKRCSController *)v4 setRootController:rootController];

    v7 = self->_rcsMessagingController;
    self->_rcsMessagingController = v4;

    rcsMessagingController = self->_rcsMessagingController;
  }

  return rcsMessagingController;
}

- (CKMultipleCTSubscriptionsController)mmsMessagingController
{
  mmsMessagingController = self->_mmsMessagingController;
  if (!mmsMessagingController)
  {
    v4 = objc_alloc_init(CKMMSMultipleCTSubscriptionsController);
    [(CKMultipleCTSubscriptionsController *)v4 setHeaderKey:@"MMS_MESSAGING_HEADER"];
    [(CKMultipleCTSubscriptionsController *)v4 setDefaultsKey:@"MMSEnabled-"];
    [(CKMultipleCTSubscriptionsController *)v4 setControllerTitle:@"MMS_MESSAGING"];
    [(CKMMSMultipleCTSubscriptionsController *)v4 setParentController:self];
    rootController = [(CKSettingsMessagesController *)self rootController];
    [(CKMMSMultipleCTSubscriptionsController *)v4 setRootController:rootController];

    v6 = self->_mmsMessagingController;
    self->_mmsMessagingController = &v4->super;

    mmsMessagingController = self->_mmsMessagingController;
  }

  return mmsMessagingController;
}

- (PSController)blackholeConversationListViewController
{
  blackholeConversationListViewController = self->_blackholeConversationListViewController;
  if (!blackholeConversationListViewController)
  {
    v4 = objc_alloc_init(CUTWeakLinkClass());
    v5 = self->_blackholeConversationListViewController;
    self->_blackholeConversationListViewController = v4;

    blackholeConversationListViewController = self->_blackholeConversationListViewController;
  }

  return blackholeConversationListViewController;
}

- (id)controllerForSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v5 = specifierCopy;
  if (!specifierCopy)
  {
    goto LABEL_24;
  }

  identifier = [specifierCopy identifier];
  v7 = [identifier isEqualToString:@"MADRID_ACCOUNTS_BUTTON"];

  if (v7)
  {
    regController = [(CNFRegListController *)self regController];
    [regController connect:1];

    _madridSettingsController = [(CKSettingsMessagesController *)self _madridSettingsController];
  }

  else
  {
    identifier2 = [v5 identifier];
    v11 = [identifier2 isEqualToString:@"SMS_RELAY_DEVICES"];

    if (v11)
    {
      _madridSettingsController = [(CKSettingsMessagesController *)self _smsRelayDevicesController];
    }

    else
    {
      identifier3 = [v5 identifier];
      v13 = [identifier3 isEqualToString:@"RCS_MESSAGING_CELL"];

      if (v13)
      {
        _madridSettingsController = [(CKSettingsMessagesController *)self rcsMessagingController];
      }

      else
      {
        identifier4 = [v5 identifier];
        v15 = [identifier4 isEqualToString:@"MMS_MESSAGING_CELL"];

        if (v15)
        {
          _madridSettingsController = [(CKSettingsMessagesController *)self mmsMessagingController];
        }

        else
        {
          identifier5 = [v5 identifier];
          v17 = [identifier5 isEqualToString:@"JUNK_CONVERSATIONS_BUTTON"];

          if (v17)
          {
            _madridSettingsController = [(CKSettingsMessagesController *)self blackholeConversationListViewController];
          }

          else
          {
            identifier6 = [v5 identifier];
            v19 = [identifier6 isEqualToString:@"SHARED_WITH_YOU_BUTTON"];

            if (v19)
            {
              _madridSettingsController = [(CKSettingsMessagesController *)self _sharedWithYouViewController];
            }

            else
            {
              identifier7 = [v5 identifier];
              v21 = [identifier7 isEqualToString:@"IMESSAGE_APPS_BUTTON"];

              if (v21)
              {
                _madridSettingsController = [(CKSettingsMessagesController *)self _iMessageAppsViewController];
              }

              else
              {
                identifier8 = [v5 identifier];
                v23 = [identifier8 isEqualToString:@"BUSINESS_CHAT_BUTTON"];

                if (v23)
                {
                  _madridSettingsController = [(CKSettingsMessagesController *)self _messagesForBusinessViewController];
                }

                else
                {
                  identifier9 = [v5 identifier];
                  v25 = [identifier9 isEqualToString:@"TEXT_MESSAGE_FILTERING"];

                  if (v25)
                  {
                    _madridSettingsController = [(CKSettingsMessagesController *)self _textMessageFilteringViewController];
                  }

                  else
                  {
                    identifier10 = [v5 identifier];
                    v27 = [identifier10 isEqualToString:@"NOTIFICATIONS_UNKNOWN_SENDERS_BUTTON"];

                    if (!v27)
                    {
                      goto LABEL_24;
                    }

                    _madridSettingsController = [(CKSettingsMessagesController *)self _notificationsUnknownSendersViewController];
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  v28 = _madridSettingsController;
  if (_madridSettingsController)
  {
    self->_showingChildViewController = 1;
    goto LABEL_25;
  }

LABEL_24:
  v30.receiver = self;
  v30.super_class = CKSettingsMessagesController;
  v28 = [(CKSettingsMessagesController *)&v30 controllerForSpecifier:v5];
LABEL_25:

  return v28;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v13.receiver = self;
  v13.super_class = CKSettingsMessagesController;
  pathCopy = path;
  v7 = [(CKSettingsMessagesController *)&v13 tableView:view cellForRowAtIndexPath:pathCopy];
  v8 = [(CKSettingsMessagesController *)self indexForIndexPath:pathCopy, v13.receiver, v13.super_class];

  if (v8 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = [*(&self->super.super.super.super.super.super.isa + *MEMORY[0x277D3FC48]) objectAtIndex:v8];
    identifier = [v9 identifier];
    v11 = [identifier isEqualToString:@"MADRID_SIGNIN_BUTTON"];

    if (v11)
    {
      [v7 setAlignment:2];
    }
  }

  return v7;
}

void __69__CKSettingsMessagesController_satelliteDemoModeTappedWithSpecifier___block_invoke_cold_1(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [a1 localizedDescription];
  v5 = 138412290;
  v6 = v3;
  _os_log_error_impl(&dword_243BE5000, a2, OS_LOG_TYPE_ERROR, "Request Satellite Demo error: %@", &v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

- (void)_isMessagesTheDefaultMessagingApp
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138412546;
  v4 = @"com.apple.MobileSMS";
  v5 = 2112;
  selfCopy = self;
  _os_log_error_impl(&dword_243BE5000, a2, OS_LOG_TYPE_ERROR, "Can't find application record for domain %@, error %@", &v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

@end