@interface CKRCSController
- (BOOL)_contextIsCurrentDataSubscription:(id)subscription;
- (BOOL)_shouldShowRCSActivationProblemForSpecifier:(id)specifier;
- (id)_contextForSpecifier:(id)specifier;
- (id)isEnabledForSubscription:(id)subscription;
- (id)isRCSEnabled:(id)enabled;
- (id)rcsBusinessMessagesEnabled:(id)enabled;
- (id)specifiers;
- (void)_showRCSLearnMore;
- (void)appendFooterLinkToCellularDataSettingsIfNecessaryFor:(id)for contextSpecifier:(id)specifier groupSpecifier:(id)groupSpecifier;
- (void)appendFooterUncertifiedSubscriptionWarningIfNecessary:(BOOL)necessary groupSpecifier:(id)specifier;
- (void)appendRCSSubtitleIfNecessaryFor:(id)for contextSpecifier:(id)specifier;
- (void)setRCSBusinessMessagesEnabled:(id)enabled specifier:(id)specifier;
- (void)setRCSEnabled:(id)enabled specifier:(id)specifier;
- (void)setToggleAvailability:(id)availability contextSpecifier:(id)specifier;
- (void)viewDidLoad;
@end

@implementation CKRCSController

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = CKRCSController;
  [(CKRCSController *)&v7 viewDidLoad];
  v3 = CommunicationsSetupUIBundle();
  v4 = [v3 localizedStringForKey:self->_controllerTitle value:self->_controllerTitle table:@"Messages"];

  [(CKRCSController *)self setTitle:v4];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel_lazuliRegistrationDidChange_ name:@"CNFLazuliRegistrationStateChangedNotification" object:0];

  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter2 addObserver:self selector:sel_lazuliMessagingCapabilitiesDidChange_ name:@"CNFLazuliMessagesCapabilitiesStateChangedNotification" object:0];
}

- (id)specifiers
{
  v75 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D3FC48];
  v4 = *(&self->super.super.super.super.super.isa + v3);
  if (!v4)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    ctSubscriptions = [(CKRCSController *)self ctSubscriptions];
    v7 = [ctSubscriptions count];

    if (v7 == 1)
    {
      ctSubscriptions2 = [(CKRCSController *)self ctSubscriptions];
      v9 = [ctSubscriptions2 objectAtIndexedSubscript:0];

      lazuliEnablementManager = [(CKRCSController *)self lazuliEnablementManager];
      v11 = [lazuliEnablementManager isRCSUncertifiedForSubscriptionContext:v9];

      v12 = [RCSFooterMultiHyperlinkView rcsFooterTextWithUncertifiedSubscriptions:v11];
      v13 = MessagesSettingsLocalizedString(@"RCS_FOOTER_LEARN_MORE");
      v14 = [v12 localizedStandardRangeOfString:v13];
      v16 = v15;
      v17 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"RCS" name:&stru_2856D3978];
      v18 = objc_opt_class();
      v19 = NSStringFromClass(v18);
      [v17 setProperty:v19 forKey:*MEMORY[0x277D3FF48]];

      v77.location = v14;
      v77.length = v16;
      v20 = NSStringFromRange(v77);
      [v17 setProperty:v20 forKey:*MEMORY[0x277D3FF58]];

      [v17 setProperty:v12 forKey:*MEMORY[0x277D3FF70]];
      v21 = [MEMORY[0x277CCAE60] valueWithNonretainedObject:self];
      [v17 setProperty:v21 forKey:*MEMORY[0x277D3FF68]];

      v22 = NSStringFromSelector(sel__showRCSLearnMore);
      [v17 setProperty:v22 forKey:*MEMORY[0x277D3FF50]];

      v69 = v17;
      [v5 addObject:v17];
      v23 = objc_alloc(MEMORY[0x277D3FAD8]);
      v24 = MessagesSettingsLocalizedString(@"RCS_MESSAGING");
      v25 = [v23 initWithName:v24 target:self set:sel_setRCSEnabled_specifier_ get:sel_isRCSEnabled_ detail:0 cell:6 edit:0];

      phoneNumber = [v9 phoneNumber];
      [v25 setProperty:phoneNumber forKey:@"phoneNumber"];

      labelID = [v9 labelID];
      [v25 setProperty:labelID forKey:@"simID"];

      [(CKRCSController *)self setToggleAvailability:v9 contextSpecifier:v25];
      [(CKRCSController *)self appendRCSSubtitleIfNecessaryFor:v9 contextSpecifier:v25];
      [v5 addObject:v25];
    }

    else
    {
      v66 = v3;
      v28 = CommunicationsSetupUIBundle();
      v29 = [v28 localizedStringForKey:self->_multiSimHeaderKey value:self->_multiSimHeaderKey table:@"Messages"];

      v65 = v29;
      v30 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v29 target:self set:0 get:0 detail:0 cell:0 edit:0];
      v31 = objc_opt_class();
      v32 = NSStringFromClass(v31);
      [v30 setProperty:v32 forKey:*MEMORY[0x277D3FF48]];

      [v30 setProperty:0 forKey:@"RCSFooterMultiHyperlinkViewSIMLabelKey"];
      [v30 setProperty:0 forKey:@"RCSFooterMultiHyperlinkViewUncertifiedSubscription"];
      v68 = v5;
      v69 = v30;
      [v5 addObject:v30];
      v72 = 0u;
      v73 = 0u;
      v70 = 0u;
      v71 = 0u;
      obj = [(CKRCSController *)self ctSubscriptions];
      v33 = [obj countByEnumeratingWithState:&v70 objects:v74 count:16];
      if (v33)
      {
        v34 = v33;
        v35 = 0;
        v36 = *v71;
        do
        {
          for (i = 0; i != v34; ++i)
          {
            if (*v71 != v36)
            {
              objc_enumerationMutation(obj);
            }

            v38 = *(*(&v70 + 1) + 8 * i);
            v39 = MEMORY[0x277D1A8F8];
            phoneNumber2 = [v38 phoneNumber];
            labelID2 = [v38 labelID];
            v42 = [v39 IMUniqueIdentifierForPhoneNumber:phoneNumber2 simID:labelID2];

            if (v42)
            {
              v43 = MEMORY[0x277D3FAD8];
              label = [v38 label];
              v45 = [v43 preferenceSpecifierNamed:label target:self set:sel_setRCSEnabled_specifier_ get:sel_isEnabledForSubscription_ detail:0 cell:6 edit:0];

              v46 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", @"RCSEnabled-", v42];
              [v45 setIdentifier:v46];
              labelID3 = [v38 labelID];

              if (labelID3)
              {
                labelID4 = [v38 labelID];
                [v45 setProperty:labelID4 forKey:@"simID"];
              }

              phoneNumber3 = [v38 phoneNumber];

              if (phoneNumber3)
              {
                phoneNumber4 = [v38 phoneNumber];
                [v45 setProperty:phoneNumber4 forKey:@"phoneNumber"];
              }

              [(CKRCSController *)self setToggleAvailability:v38 contextSpecifier:v45];
              [(CKRCSController *)self appendRCSSubtitleIfNecessaryFor:v38 contextSpecifier:v45];
              [(CKRCSController *)self appendFooterLinkToCellularDataSettingsIfNecessaryFor:v38 contextSpecifier:v45 groupSpecifier:v69];
              if (v35)
              {
                v35 = 1;
              }

              else
              {
                lazuliEnablementManager2 = [(CKRCSController *)self lazuliEnablementManager];
                v35 = [lazuliEnablementManager2 isRCSUncertifiedForSubscriptionContext:v38];
              }

              [v68 addObject:v45];
            }
          }

          v34 = [obj countByEnumeratingWithState:&v70 objects:v74 count:16];
        }

        while (v34);
      }

      else
      {
        v35 = 0;
      }

      [(CKRCSController *)self appendFooterUncertifiedSubscriptionWarningIfNecessary:v35 & 1 groupSpecifier:v69];
      v3 = v66;
      v5 = v68;
    }

    lazuliEnablementManager3 = [(CKRCSController *)self lazuliEnablementManager];
    isRCSBusinessMessagingSupported = [lazuliEnablementManager3 isRCSBusinessMessagingSupported];

    if (isRCSBusinessMessagingSupported)
    {
      v54 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"BusinessRCSMessages" name:0];
      v55 = MessagesSettingsLocalizedString(@"RCS_BUSINESS_MESSAGES_GROUP_FOOTER");
      [v54 setProperty:v55 forKey:*MEMORY[0x277D3FF88]];

      [v5 addObject:v54];
      v56 = MEMORY[0x277D3FAD8];
      v57 = MessagesSettingsLocalizedString(@"RCS_BUSINESS_MESSAGES_SWITCH");
      v58 = [v56 preferenceSpecifierNamed:v57 target:self set:sel_setRCSBusinessMessagesEnabled_specifier_ get:sel_rcsBusinessMessagesEnabled_ detail:0 cell:6 edit:0];

      lazuliEnablementManager4 = [(CKRCSController *)self lazuliEnablementManager];
      isRCSEnabledForAnyActiveSubscription = [lazuliEnablementManager4 isRCSEnabledForAnyActiveSubscription];

      if ((isRCSEnabledForAnyActiveSubscription & 1) == 0)
      {
        [v58 setProperty:MEMORY[0x277CBEC28] forKey:*MEMORY[0x277D3FF38]];
      }

      [v5 addObject:v58];
    }

    v61 = [MEMORY[0x277CBEA60] arrayWithArray:v5];
    v62 = *(&self->super.super.super.super.super.isa + v3);
    *(&self->super.super.super.super.super.isa + v3) = v61;

    v4 = *(&self->super.super.super.super.super.isa + v3);
  }

  v63 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)appendRCSSubtitleIfNecessaryFor:(id)for contextSpecifier:(id)specifier
{
  forCopy = for;
  specifierCopy = specifier;
  lazuliEnablementManager = [(CKRCSController *)self lazuliEnablementManager];
  v8 = [lazuliEnablementManager isRCSDisabledByProfileForSubscriptionContext:forCopy];

  if (v8)
  {
    v9 = MessagesSettingsLocalizedString(@"RCS_SWITCH_STATUS_MDM_RESTRICTED");
  }

  else
  {
    v9 = 0;
  }

  v10 = [(CKRCSController *)self isRCSEnabled:specifierCopy];
  bOOLValue = [v10 BOOLValue];

  lazuliEnablementManager2 = [(CKRCSController *)self lazuliEnablementManager];
  v13 = [lazuliEnablementManager2 rcsMessagingCapabilitiesForContext:forCopy];

  if (bOOLValue && !v13)
  {
    v14 = MessagesSettingsLocalizedString(@"RCS_SWITCH_STATUS_IN_PROGRESS");

    v9 = v14;
  }

  if (v9)
  {
    [specifierCopy setObject:v9 forKeyedSubscript:*MEMORY[0x277D40160]];
    [specifierCopy setObject:objc_opt_class() forKeyedSubscript:*MEMORY[0x277D3FE58]];
  }
}

- (void)appendFooterLinkToCellularDataSettingsIfNecessaryFor:(id)for contextSpecifier:(id)specifier groupSpecifier:(id)groupSpecifier
{
  forCopy = for;
  groupSpecifierCopy = groupSpecifier;
  if ([(CKRCSController *)self _shouldShowRCSActivationProblemForSpecifier:specifier])
  {
    label = [forCopy label];
    [groupSpecifierCopy setProperty:label forKey:@"RCSFooterMultiHyperlinkViewSIMLabelKey"];
  }
}

- (void)appendFooterUncertifiedSubscriptionWarningIfNecessary:(BOOL)necessary groupSpecifier:(id)specifier
{
  if (necessary)
  {
    [specifier setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"RCSFooterMultiHyperlinkViewUncertifiedSubscription"];
  }
}

- (BOOL)_shouldShowRCSActivationProblemForSpecifier:(id)specifier
{
  v33 = *MEMORY[0x277D85DE8];
  specifierCopy = specifier;
  v5 = [(CKRCSController *)self _contextForSpecifier:specifierCopy];
  if (v5)
  {
    lazuliEnablementManager = [(CKRCSController *)self lazuliEnablementManager];
    v7 = [lazuliEnablementManager rcsMessagingCapabilitiesForContext:v5];

    mEMORY[0x277D1A908] = [MEMORY[0x277D1A908] sharedInstance];
    v9 = [mEMORY[0x277D1A908] copyIsoCountryCodeForSubscriptionContext:v5];

    v10 = [v9 isEqualToString:@"cn"];
    v11 = [(CKRCSController *)self isRCSEnabled:specifierCopy];
    bOOLValue = [v11 BOOLValue];

    v13 = [(CKRCSController *)self _contextIsCurrentDataSubscription:v5];
    if (IMOSLoggingEnabled())
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = @"No";
        if (v10)
        {
          v16 = @"Yes";
        }

        else
        {
          v16 = @"No";
        }

        v23 = 136316162;
        v24 = "[CKRCSController _shouldShowRCSActivationProblemForSpecifier:]";
        if (bOOLValue)
        {
          v17 = @"Yes";
        }

        else
        {
          v17 = @"No";
        }

        v25 = 2112;
        v26 = v16;
        if (v7)
        {
          v18 = @"No";
        }

        else
        {
          v18 = @"Yes";
        }

        v27 = 2112;
        v28 = v17;
        v29 = 2112;
        if (!v13)
        {
          v15 = @"Yes";
        }

        v30 = v18;
        v31 = 2112;
        v32 = v15;
        _os_log_impl(&dword_243BE5000, v14, OS_LOG_TYPE_INFO, "%s: enabled: %@ region: %@ state: %@, notCurrent: %@", &v23, 0x34u);
      }
    }

    if (v7)
    {
      v19 = 0;
    }

    else
    {
      v19 = v10 & bOOLValue;
    }

    v20 = v19 & !v13;
  }

  else
  {
    v20 = 0;
  }

  v21 = *MEMORY[0x277D85DE8];
  return v20;
}

- (id)_contextForSpecifier:(id)specifier
{
  specifierCopy = specifier;
  properties = [specifierCopy properties];
  v5 = [properties objectForKey:@"simID"];

  properties2 = [specifierCopy properties];

  v7 = [properties2 objectForKey:@"phoneNumber"];

  mEMORY[0x277D1A908] = [MEMORY[0x277D1A908] sharedInstance];
  ctSubscriptionInfo = [mEMORY[0x277D1A908] ctSubscriptionInfo];
  v10 = [ctSubscriptionInfo __im_subscriptionContextForForSimID:v5 phoneNumber:v7];

  return v10;
}

- (BOOL)_contextIsCurrentDataSubscription:(id)subscription
{
  subscriptionCopy = subscription;
  lazuliEnablementManager = [(CKRCSController *)self lazuliEnablementManager];
  client = [lazuliEnablementManager client];
  v13 = 0;
  v7 = [client getCurrentDataSubscriptionContextSync:&v13];
  v8 = v13;

  if (v8)
  {
    v9 = 0;
  }

  else
  {
    uuid = [v7 uuid];
    uuid2 = [subscriptionCopy uuid];
    v9 = [uuid compare:uuid2] == 0;
  }

  return v9;
}

- (id)isRCSEnabled:(id)enabled
{
  v12 = *MEMORY[0x277D85DE8];
  enabledCopy = enabled;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v10 = 136315138;
      v11 = "[CKRCSController isRCSEnabled:]";
      _os_log_impl(&dword_243BE5000, v5, OS_LOG_TYPE_INFO, "%s", &v10, 0xCu);
    }
  }

  lazuliEnablementManager = [(CKRCSController *)self lazuliEnablementManager];
  v7 = [lazuliEnablementManager isRCSEnabled:enabledCopy];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (void)setRCSEnabled:(id)enabled specifier:(id)specifier
{
  v27 = *MEMORY[0x277D85DE8];
  enabledCopy = enabled;
  specifierCopy = specifier;
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v26 = "[CKRCSController setRCSEnabled:specifier:]";
      _os_log_impl(&dword_243BE5000, v8, OS_LOG_TYPE_INFO, "%s", buf, 0xCu);
    }
  }

  if (enabledCopy)
  {
    lazuliEnablementManager = [(CKRCSController *)self lazuliEnablementManager];
    [lazuliEnablementManager setRCSEnabled:enabledCopy specifier:specifierCopy];

    [(CKRCSController *)self reloadSpecifiers];
    if ([enabledCopy BOOLValue] && -[CKRCSController _shouldShowRCSActivationProblemForSpecifier:](self, "_shouldShowRCSActivationProblemForSpecifier:", specifierCopy))
    {
      v24 = [(CKRCSController *)self _contextForSpecifier:specifierCopy];
      label = [v24 label];
      v11 = MessagesSettingsLocalizedString(@"RCS_DUAL_SIM_ACTIVATION_ERROR_CELLULAR_DATA_SETTINGS");
      v12 = MEMORY[0x277CCACA8];
      v13 = MessagesSettingsLocalizedString(@"RCS_DUAL_SIM_ACTIVATION_ERROR_TITLE");
      v23 = [v12 localizedStringWithFormat:v13, label];

      v14 = MEMORY[0x277CCACA8];
      v15 = MessagesSettingsLocalizedString(@"RCS_DUAL_SIM_ACTIVATION_ERROR_TEXT");
      v16 = [v14 localizedStringWithFormat:v15, label, v11];

      v17 = MessagesSettingsLocalizedString(@"RCS_DUAL_SIM_ACTIVATION_ERROR_NOT_NOW");
      v18 = [MEMORY[0x277D75110] alertControllerWithTitle:v23 message:v16 preferredStyle:1];
      v19 = [MEMORY[0x277D750F8] actionWithTitle:v11 style:0 handler:&__block_literal_global_10];
      [v18 addAction:v19];

      v20 = [MEMORY[0x277D750F8] actionWithTitle:v17 style:1 handler:0];
      [v18 addAction:v20];

      [(CKRCSController *)self presentViewController:v18 animated:1 completion:0];
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v21 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_243BE5000, v21, OS_LOG_TYPE_INFO, "Ignoring attempt to set RCS enablement to NULL", buf, 2u);
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

void __43__CKRCSController_setRCSEnabled_specifier___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_243BE5000, v3, OS_LOG_TYPE_INFO, "Navigating to settings", v6, 2u);
    }
  }

  v4 = [MEMORY[0x277CC1E80] defaultWorkspace];
  v5 = [MEMORY[0x277CBEBC0] URLWithString:@"settings-navigation://com.apple.Settings.Cellular"];
  [v4 openSensitiveURL:v5 withOptions:0 error:0];
}

- (void)setRCSBusinessMessagesEnabled:(id)enabled specifier:(id)specifier
{
  v17 = *MEMORY[0x277D85DE8];
  enabledCopy = enabled;
  specifierCopy = specifier;
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v15 = 138412290;
      v16 = enabledCopy;
      _os_log_impl(&dword_243BE5000, v8, OS_LOG_TYPE_INFO, "Set RCS Business Messages Enabled: %@", &v15, 0xCu);
    }
  }

  lazuliEnablementManager = [(CKRCSController *)self lazuliEnablementManager];
  client = [lazuliEnablementManager client];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    lazuliEnablementManager2 = [(CKRCSController *)self lazuliEnablementManager];
    [lazuliEnablementManager2 setRCSBusinessMessagingEnabled:enabledCopy specifier:specifierCopy];
  }

  else
  {
    lazuliEnablementManager2 = [MEMORY[0x277CBEBD0] messagesAppDomain];
    [lazuliEnablementManager2 setObject:enabledCopy forKey:@"RCSForBusinessEnabled"];
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.MobileSMS.RCSForBusinessEnabled.changed", 0, 0, 1u);

  v14 = *MEMORY[0x277D85DE8];
}

- (id)rcsBusinessMessagesEnabled:(id)enabled
{
  v31 = *MEMORY[0x277D85DE8];
  enabledCopy = enabled;
  lazuliEnablementManager = [(CKRCSController *)self lazuliEnablementManager];
  isRCSEnabledForAnyActiveSubscription = [lazuliEnablementManager isRCSEnabledForAnyActiveSubscription];

  if (!isRCSEnabledForAnyActiveSubscription)
  {
    v14 = MEMORY[0x277CBEC28];
    goto LABEL_25;
  }

  lazuliEnablementManager2 = [(CKRCSController *)self lazuliEnablementManager];
  getSubscriptionWithRCSBusinessMessaging = [lazuliEnablementManager2 getSubscriptionWithRCSBusinessMessaging];

  if (!getSubscriptionWithRCSBusinessMessaging)
  {
    v12 = 0;
LABEL_9:
    v11 = 0;
    goto LABEL_10;
  }

  lazuliEnablementManager3 = [(CKRCSController *)self lazuliEnablementManager];
  client = [lazuliEnablementManager3 client];
  v28 = 0;
  v11 = [client getSystemConfiguration:getSubscriptionWithRCSBusinessMessaging withError:&v28];
  v12 = v28;

  if (v12)
  {
    v13 = IMLogHandleForCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [(CKLazuliEnablementManager *)v12 fetchSystemConfiguration:v13];
    }

    goto LABEL_9;
  }

  if (v11 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    lazuliEnablementManager4 = [(CKRCSController *)self lazuliEnablementManager];
    isRCSBusinessMessagingEnabledByUserPreference = [lazuliEnablementManager4 isRCSBusinessMessagingEnabledByUserPreference];

    if (isRCSBusinessMessagingEnabledByUserPreference == 1)
    {
      v12 = 0;
      isRCSBusinessMessagingEnabledByDefault = 1;
    }

    else if (isRCSBusinessMessagingEnabledByUserPreference == -1)
    {
      if (IMOSLoggingEnabled())
      {
        v26 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_243BE5000, v26, OS_LOG_TYPE_INFO, "Setting RCS Business Messages from CoreTelephony SPI", buf, 2u);
        }
      }

      lazuliEnablementManager5 = [(CKRCSController *)self lazuliEnablementManager];
      isRCSBusinessMessagingEnabledByDefault = [lazuliEnablementManager5 isRCSBusinessMessagingEnabledByDefault];

      v12 = 0;
    }

    else
    {
      v12 = 0;
      isRCSBusinessMessagingEnabledByDefault = 0;
    }

    goto LABEL_18;
  }

  v12 = 0;
LABEL_10:
  messagesAppDomain = [MEMORY[0x277CBEBD0] messagesAppDomain];
  v16 = [messagesAppDomain objectForKey:@"RCSForBusinessEnabled"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    isRCSBusinessMessagingEnabledByDefault = [v16 BOOLValue];
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v18 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_243BE5000, v18, OS_LOG_TYPE_INFO, "Setting RCS Business Messages from Carrier Bundle", buf, 2u);
      }
    }

    lazuliEnablementManager6 = [(CKRCSController *)self lazuliEnablementManager];
    isRCSBusinessMessagingEnabledByDefault = [lazuliEnablementManager6 isRCSBusinessMessagingEnabledByDefault];
  }

LABEL_18:
  if (IMOSLoggingEnabled())
  {
    v20 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = @"NO";
      if (isRCSBusinessMessagingEnabledByDefault)
      {
        v21 = @"YES";
      }

      *buf = 138412290;
      v30 = v21;
      _os_log_impl(&dword_243BE5000, v20, OS_LOG_TYPE_INFO, "RCS Business Messages Enabled: %@", buf, 0xCu);
    }
  }

  v14 = [MEMORY[0x277CCABB0] numberWithBool:isRCSBusinessMessagingEnabledByDefault];

LABEL_25:
  v22 = *MEMORY[0x277D85DE8];

  return v14;
}

- (void)setToggleAvailability:(id)availability contextSpecifier:(id)specifier
{
  specifierCopy = specifier;
  availabilityCopy = availability;
  lazuliEnablementManager = [(CKRCSController *)self lazuliEnablementManager];
  v9 = [lazuliEnablementManager isRCSDisabledByProfileForSubscriptionContext:availabilityCopy];

  v10 = [MEMORY[0x277CCABB0] numberWithInt:v9 ^ 1u];
  [specifierCopy setObject:v10 forKeyedSubscript:*MEMORY[0x277D3FF38]];
}

- (void)_showRCSLearnMore
{
  v2 = MEMORY[0x277CBEBC0];
  v3 = MessagesSettingsLocalizedString(@"RCS_LEARN_MORE_URL");
  v5 = [v2 URLWithString:v3];

  v4 = v5;
  if (v5)
  {
    [*MEMORY[0x277D76620] openURL:v5 withCompletionHandler:0];
    v4 = v5;
  }
}

- (id)isEnabledForSubscription:(id)subscription
{
  subscriptionCopy = subscription;
  lazuliEnablementManager = [(CKRCSController *)self lazuliEnablementManager];
  v6 = [lazuliEnablementManager isRCSEnabled:subscriptionCopy];

  return v6;
}

@end