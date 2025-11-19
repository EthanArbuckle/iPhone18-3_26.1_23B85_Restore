@interface CKRCSController
- (BOOL)_contextIsCurrentDataSubscription:(id)a3;
- (BOOL)_shouldShowRCSActivationProblemForSpecifier:(id)a3;
- (id)_contextForSpecifier:(id)a3;
- (id)isEnabledForSubscription:(id)a3;
- (id)isRCSEnabled:(id)a3;
- (id)rcsBusinessMessagesEnabled:(id)a3;
- (id)specifiers;
- (void)_showRCSLearnMore;
- (void)appendFooterLinkToCellularDataSettingsIfNecessaryFor:(id)a3 contextSpecifier:(id)a4 groupSpecifier:(id)a5;
- (void)appendFooterUncertifiedSubscriptionWarningIfNecessary:(BOOL)a3 groupSpecifier:(id)a4;
- (void)appendRCSSubtitleIfNecessaryFor:(id)a3 contextSpecifier:(id)a4;
- (void)setRCSBusinessMessagesEnabled:(id)a3 specifier:(id)a4;
- (void)setRCSEnabled:(id)a3 specifier:(id)a4;
- (void)setToggleAvailability:(id)a3 contextSpecifier:(id)a4;
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
  v5 = [MEMORY[0x277CCAB98] defaultCenter];
  [v5 addObserver:self selector:sel_lazuliRegistrationDidChange_ name:@"CNFLazuliRegistrationStateChangedNotification" object:0];

  v6 = [MEMORY[0x277CCAB98] defaultCenter];
  [v6 addObserver:self selector:sel_lazuliMessagingCapabilitiesDidChange_ name:@"CNFLazuliMessagesCapabilitiesStateChangedNotification" object:0];
}

- (id)specifiers
{
  v75 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D3FC48];
  v4 = *(&self->super.super.super.super.super.isa + v3);
  if (!v4)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v6 = [(CKRCSController *)self ctSubscriptions];
    v7 = [v6 count];

    if (v7 == 1)
    {
      v8 = [(CKRCSController *)self ctSubscriptions];
      v9 = [v8 objectAtIndexedSubscript:0];

      v10 = [(CKRCSController *)self lazuliEnablementManager];
      v11 = [v10 isRCSUncertifiedForSubscriptionContext:v9];

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

      v26 = [v9 phoneNumber];
      [v25 setProperty:v26 forKey:@"phoneNumber"];

      v27 = [v9 labelID];
      [v25 setProperty:v27 forKey:@"simID"];

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
            v40 = [v38 phoneNumber];
            v41 = [v38 labelID];
            v42 = [v39 IMUniqueIdentifierForPhoneNumber:v40 simID:v41];

            if (v42)
            {
              v43 = MEMORY[0x277D3FAD8];
              v44 = [v38 label];
              v45 = [v43 preferenceSpecifierNamed:v44 target:self set:sel_setRCSEnabled_specifier_ get:sel_isEnabledForSubscription_ detail:0 cell:6 edit:0];

              v46 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", @"RCSEnabled-", v42];
              [v45 setIdentifier:v46];
              v47 = [v38 labelID];

              if (v47)
              {
                v48 = [v38 labelID];
                [v45 setProperty:v48 forKey:@"simID"];
              }

              v49 = [v38 phoneNumber];

              if (v49)
              {
                v50 = [v38 phoneNumber];
                [v45 setProperty:v50 forKey:@"phoneNumber"];
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
                v51 = [(CKRCSController *)self lazuliEnablementManager];
                v35 = [v51 isRCSUncertifiedForSubscriptionContext:v38];
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

    v52 = [(CKRCSController *)self lazuliEnablementManager];
    v53 = [v52 isRCSBusinessMessagingSupported];

    if (v53)
    {
      v54 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"BusinessRCSMessages" name:0];
      v55 = MessagesSettingsLocalizedString(@"RCS_BUSINESS_MESSAGES_GROUP_FOOTER");
      [v54 setProperty:v55 forKey:*MEMORY[0x277D3FF88]];

      [v5 addObject:v54];
      v56 = MEMORY[0x277D3FAD8];
      v57 = MessagesSettingsLocalizedString(@"RCS_BUSINESS_MESSAGES_SWITCH");
      v58 = [v56 preferenceSpecifierNamed:v57 target:self set:sel_setRCSBusinessMessagesEnabled_specifier_ get:sel_rcsBusinessMessagesEnabled_ detail:0 cell:6 edit:0];

      v59 = [(CKRCSController *)self lazuliEnablementManager];
      v60 = [v59 isRCSEnabledForAnyActiveSubscription];

      if ((v60 & 1) == 0)
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

- (void)appendRCSSubtitleIfNecessaryFor:(id)a3 contextSpecifier:(id)a4
{
  v15 = a3;
  v6 = a4;
  v7 = [(CKRCSController *)self lazuliEnablementManager];
  v8 = [v7 isRCSDisabledByProfileForSubscriptionContext:v15];

  if (v8)
  {
    v9 = MessagesSettingsLocalizedString(@"RCS_SWITCH_STATUS_MDM_RESTRICTED");
  }

  else
  {
    v9 = 0;
  }

  v10 = [(CKRCSController *)self isRCSEnabled:v6];
  v11 = [v10 BOOLValue];

  v12 = [(CKRCSController *)self lazuliEnablementManager];
  v13 = [v12 rcsMessagingCapabilitiesForContext:v15];

  if (v11 && !v13)
  {
    v14 = MessagesSettingsLocalizedString(@"RCS_SWITCH_STATUS_IN_PROGRESS");

    v9 = v14;
  }

  if (v9)
  {
    [v6 setObject:v9 forKeyedSubscript:*MEMORY[0x277D40160]];
    [v6 setObject:objc_opt_class() forKeyedSubscript:*MEMORY[0x277D3FE58]];
  }
}

- (void)appendFooterLinkToCellularDataSettingsIfNecessaryFor:(id)a3 contextSpecifier:(id)a4 groupSpecifier:(id)a5
{
  v10 = a3;
  v8 = a5;
  if ([(CKRCSController *)self _shouldShowRCSActivationProblemForSpecifier:a4])
  {
    v9 = [v10 label];
    [v8 setProperty:v9 forKey:@"RCSFooterMultiHyperlinkViewSIMLabelKey"];
  }
}

- (void)appendFooterUncertifiedSubscriptionWarningIfNecessary:(BOOL)a3 groupSpecifier:(id)a4
{
  if (a3)
  {
    [a4 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"RCSFooterMultiHyperlinkViewUncertifiedSubscription"];
  }
}

- (BOOL)_shouldShowRCSActivationProblemForSpecifier:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(CKRCSController *)self _contextForSpecifier:v4];
  if (v5)
  {
    v6 = [(CKRCSController *)self lazuliEnablementManager];
    v7 = [v6 rcsMessagingCapabilitiesForContext:v5];

    v8 = [MEMORY[0x277D1A908] sharedInstance];
    v9 = [v8 copyIsoCountryCodeForSubscriptionContext:v5];

    v10 = [v9 isEqualToString:@"cn"];
    v11 = [(CKRCSController *)self isRCSEnabled:v4];
    v12 = [v11 BOOLValue];

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
        if (v12)
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
      v19 = v10 & v12;
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

- (id)_contextForSpecifier:(id)a3
{
  v3 = a3;
  v4 = [v3 properties];
  v5 = [v4 objectForKey:@"simID"];

  v6 = [v3 properties];

  v7 = [v6 objectForKey:@"phoneNumber"];

  v8 = [MEMORY[0x277D1A908] sharedInstance];
  v9 = [v8 ctSubscriptionInfo];
  v10 = [v9 __im_subscriptionContextForForSimID:v5 phoneNumber:v7];

  return v10;
}

- (BOOL)_contextIsCurrentDataSubscription:(id)a3
{
  v4 = a3;
  v5 = [(CKRCSController *)self lazuliEnablementManager];
  v6 = [v5 client];
  v13 = 0;
  v7 = [v6 getCurrentDataSubscriptionContextSync:&v13];
  v8 = v13;

  if (v8)
  {
    v9 = 0;
  }

  else
  {
    v10 = [v7 uuid];
    v11 = [v4 uuid];
    v9 = [v10 compare:v11] == 0;
  }

  return v9;
}

- (id)isRCSEnabled:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
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

  v6 = [(CKRCSController *)self lazuliEnablementManager];
  v7 = [v6 isRCSEnabled:v4];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (void)setRCSEnabled:(id)a3 specifier:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
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

  if (v6)
  {
    v9 = [(CKRCSController *)self lazuliEnablementManager];
    [v9 setRCSEnabled:v6 specifier:v7];

    [(CKRCSController *)self reloadSpecifiers];
    if ([v6 BOOLValue] && -[CKRCSController _shouldShowRCSActivationProblemForSpecifier:](self, "_shouldShowRCSActivationProblemForSpecifier:", v7))
    {
      v24 = [(CKRCSController *)self _contextForSpecifier:v7];
      v10 = [v24 label];
      v11 = MessagesSettingsLocalizedString(@"RCS_DUAL_SIM_ACTIVATION_ERROR_CELLULAR_DATA_SETTINGS");
      v12 = MEMORY[0x277CCACA8];
      v13 = MessagesSettingsLocalizedString(@"RCS_DUAL_SIM_ACTIVATION_ERROR_TITLE");
      v23 = [v12 localizedStringWithFormat:v13, v10];

      v14 = MEMORY[0x277CCACA8];
      v15 = MessagesSettingsLocalizedString(@"RCS_DUAL_SIM_ACTIVATION_ERROR_TEXT");
      v16 = [v14 localizedStringWithFormat:v15, v10, v11];

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

- (void)setRCSBusinessMessagesEnabled:(id)a3 specifier:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v15 = 138412290;
      v16 = v6;
      _os_log_impl(&dword_243BE5000, v8, OS_LOG_TYPE_INFO, "Set RCS Business Messages Enabled: %@", &v15, 0xCu);
    }
  }

  v9 = [(CKRCSController *)self lazuliEnablementManager];
  v10 = [v9 client];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    v12 = [(CKRCSController *)self lazuliEnablementManager];
    [v12 setRCSBusinessMessagingEnabled:v6 specifier:v7];
  }

  else
  {
    v12 = [MEMORY[0x277CBEBD0] messagesAppDomain];
    [v12 setObject:v6 forKey:@"RCSForBusinessEnabled"];
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.MobileSMS.RCSForBusinessEnabled.changed", 0, 0, 1u);

  v14 = *MEMORY[0x277D85DE8];
}

- (id)rcsBusinessMessagesEnabled:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(CKRCSController *)self lazuliEnablementManager];
  v6 = [v5 isRCSEnabledForAnyActiveSubscription];

  if (!v6)
  {
    v14 = MEMORY[0x277CBEC28];
    goto LABEL_25;
  }

  v7 = [(CKRCSController *)self lazuliEnablementManager];
  v8 = [v7 getSubscriptionWithRCSBusinessMessaging];

  if (!v8)
  {
    v12 = 0;
LABEL_9:
    v11 = 0;
    goto LABEL_10;
  }

  v9 = [(CKRCSController *)self lazuliEnablementManager];
  v10 = [v9 client];
  v28 = 0;
  v11 = [v10 getSystemConfiguration:v8 withError:&v28];
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
    v24 = [(CKRCSController *)self lazuliEnablementManager];
    v25 = [v24 isRCSBusinessMessagingEnabledByUserPreference];

    if (v25 == 1)
    {
      v12 = 0;
      v17 = 1;
    }

    else if (v25 == -1)
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

      v27 = [(CKRCSController *)self lazuliEnablementManager];
      v17 = [v27 isRCSBusinessMessagingEnabledByDefault];

      v12 = 0;
    }

    else
    {
      v12 = 0;
      v17 = 0;
    }

    goto LABEL_18;
  }

  v12 = 0;
LABEL_10:
  v15 = [MEMORY[0x277CBEBD0] messagesAppDomain];
  v16 = [v15 objectForKey:@"RCSForBusinessEnabled"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v17 = [v16 BOOLValue];
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

    v19 = [(CKRCSController *)self lazuliEnablementManager];
    v17 = [v19 isRCSBusinessMessagingEnabledByDefault];
  }

LABEL_18:
  if (IMOSLoggingEnabled())
  {
    v20 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = @"NO";
      if (v17)
      {
        v21 = @"YES";
      }

      *buf = 138412290;
      v30 = v21;
      _os_log_impl(&dword_243BE5000, v20, OS_LOG_TYPE_INFO, "RCS Business Messages Enabled: %@", buf, 0xCu);
    }
  }

  v14 = [MEMORY[0x277CCABB0] numberWithBool:v17];

LABEL_25:
  v22 = *MEMORY[0x277D85DE8];

  return v14;
}

- (void)setToggleAvailability:(id)a3 contextSpecifier:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CKRCSController *)self lazuliEnablementManager];
  v9 = [v8 isRCSDisabledByProfileForSubscriptionContext:v7];

  v10 = [MEMORY[0x277CCABB0] numberWithInt:v9 ^ 1u];
  [v6 setObject:v10 forKeyedSubscript:*MEMORY[0x277D3FF38]];
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

- (id)isEnabledForSubscription:(id)a3
{
  v4 = a3;
  v5 = [(CKRCSController *)self lazuliEnablementManager];
  v6 = [v5 isRCSEnabled:v4];

  return v6;
}

@end