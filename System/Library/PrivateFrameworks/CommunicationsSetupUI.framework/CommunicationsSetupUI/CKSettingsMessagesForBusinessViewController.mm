@interface CKSettingsMessagesForBusinessViewController
- (id)personalizedAlertsEnabled:(id)enabled;
- (id)specifiers;
- (void)_fetchFeatureState;
- (void)_showOnboarding;
- (void)_showPrivacySheetForBusinessChat;
- (void)setPersonalizedAlertsEnabled:(id)enabled specifier:(id)specifier;
- (void)viewDidLoad;
@end

@implementation CKSettingsMessagesForBusinessViewController

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = CKSettingsMessagesForBusinessViewController;
  [(CKSettingsMessagesForBusinessViewController *)&v6 viewDidLoad];
  v3 = MessagesSettingsLocalizedString(@"BUSINESS_CHAT");
  [(CKSettingsMessagesForBusinessViewController *)self setTitle:v3];
  v4 = objc_alloc(MEMORY[0x277D18708]);
  v5 = [v4 initWithService:*MEMORY[0x277D186B8] queue:MEMORY[0x277D85CD0]];
  [(CKSettingsMessagesForBusinessViewController *)self setFeatureToggler:v5];

  [(CKSettingsMessagesForBusinessViewController *)self _fetchFeatureState];
}

- (id)specifiers
{
  v3 = *MEMORY[0x277D3FC48];
  v4 = *(&self->super.super.super.super.super.isa + v3);
  if (!v4)
  {
    array = [MEMORY[0x277CBEB18] array];
    v6 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"messagesForBusinessGroup"];
    [array addObject:v6];
    erroredOut = [(CKSettingsMessagesForBusinessViewController *)self erroredOut];
    v8 = MEMORY[0x277D3FAD8];
    v9 = MessagesSettingsLocalizedString(@"PERSONALIZED_ALERTS_TOGGLE");
    if (erroredOut)
    {
      v10 = [v8 preferenceSpecifierNamed:v9 target:self set:0 get:sel_unavailableString detail:0 cell:4 edit:0];
    }

    else
    {
      v10 = [v8 preferenceSpecifierNamed:v9 target:self set:sel_setPersonalizedAlertsEnabled_specifier_ get:sel_personalizedAlertsEnabled_ detail:0 cell:6 edit:0];

      requestInFlight = [(CKSettingsMessagesForBusinessViewController *)self requestInFlight];
      v12 = MEMORY[0x277D3FF38];
      if (requestInFlight)
      {
        [v10 setProperty:MEMORY[0x277CBEC28] forKey:*MEMORY[0x277D3FF38]];
      }

      if (![(CKSettingsMessagesForBusinessViewController *)self featureState])
      {
        [v10 setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FEA8]];
      }

      if ([MEMORY[0x277D1A9A0] deviceIsLockedDown])
      {
        v13 = *v12;
        v14 = MEMORY[0x277CBEC28];
        [v10 setProperty:MEMORY[0x277CBEC28] forKey:v13];
        [v10 setProperty:v14 forKey:*MEMORY[0x277D3FEA8]];
      }
    }

    v34 = v10;
    [array addObject:v10];
    v15 = MessagesSettingsLocalizedString(@"PERSONALIZED_ALERTS_GROUP_DESCRIPTION");
    v16 = MEMORY[0x277D37668];
    v17 = [MEMORY[0x277D37630] bundleWithIdentifier:@"com.apple.onboarding.businesschat"];
    v18 = [v16 flowWithBundle:v17];

    localizedButtonTitle = [v18 localizedButtonTitle];
    v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"\r\r%@", localizedButtonTitle];
    [v15 stringByAppendingString:v20];
    v22 = v21 = array;

    v23 = [v22 rangeOfString:localizedButtonTitle];
    v25 = v24;
    v26 = objc_opt_class();
    v27 = NSStringFromClass(v26);
    [v6 setProperty:v27 forKey:*MEMORY[0x277D3FF48]];

    v36.location = v23;
    v36.length = v25;
    v28 = NSStringFromRange(v36);
    [v6 setProperty:v28 forKey:*MEMORY[0x277D3FF58]];

    [v6 setProperty:v22 forKey:*MEMORY[0x277D3FF70]];
    v29 = [MEMORY[0x277CCAE60] valueWithNonretainedObject:self];
    [v6 setProperty:v29 forKey:*MEMORY[0x277D3FF68]];

    v30 = NSStringFromSelector(sel__showPrivacySheetForBusinessChat);
    [v6 setProperty:v30 forKey:*MEMORY[0x277D3FF50]];

    v31 = [v21 copy];
    v32 = *(&self->super.super.super.super.super.isa + v3);
    *(&self->super.super.super.super.super.isa + v3) = v31;

    v4 = *(&self->super.super.super.super.super.isa + v3);
  }

  return v4;
}

- (void)setPersonalizedAlertsEnabled:(id)enabled specifier:(id)specifier
{
  enabledCopy = enabled;
  bOOLValue = [enabledCopy BOOLValue];
  [(CKSettingsMessagesForBusinessViewController *)self setRequestInFlight:1];
  featureState = [(CKSettingsMessagesForBusinessViewController *)self featureState];
  if (bOOLValue)
  {
    v8 = 1;
  }

  else
  {
    v8 = 2;
  }

  [(CKSettingsMessagesForBusinessViewController *)self setFeatureState:v8];
  [(CKSettingsMessagesForBusinessViewController *)self reloadSpecifiers];
  v9 = [MEMORY[0x277D18700] optionsWithFeatureID:@"bia-opt-out" state:v8];
  featureToggler = [(CKSettingsMessagesForBusinessViewController *)self featureToggler];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __86__CKSettingsMessagesForBusinessViewController_setPersonalizedAlertsEnabled_specifier___block_invoke;
  v12[3] = &unk_278DE8A40;
  v13 = enabledCopy;
  v14 = featureState;
  v12[4] = self;
  v11 = enabledCopy;
  [featureToggler updateFeatureToggleStateWithOptions:v9 completion:v12];
}

void __86__CKSettingsMessagesForBusinessViewController_setPersonalizedAlertsEnabled_specifier___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  [*(a1 + 32) setRequestInFlight:0];
  if ([v3 error])
  {
    [*(a1 + 32) setFeatureState:*(a1 + 48)];
    if (IMOSLoggingEnabled())
    {
      v4 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v5 = *(a1 + 40);
        v7 = 138412546;
        v8 = v5;
        v9 = 2048;
        v10 = [v3 error];
        _os_log_impl(&dword_243BE5000, v4, OS_LOG_TYPE_INFO, "Error setting Personalized Alerts toggle. Setting to value: %@. Error: %lu", &v7, 0x16u);
      }
    }
  }

  [*(a1 + 32) reloadSpecifiers];

  v6 = *MEMORY[0x277D85DE8];
}

- (id)personalizedAlertsEnabled:(id)enabled
{
  if ([MEMORY[0x277D1A9A0] deviceIsLockedDown])
  {
    v4 = MEMORY[0x277CBEC28];
  }

  else
  {
    v4 = [MEMORY[0x277CCABB0] numberWithInt:{-[CKSettingsMessagesForBusinessViewController featureState](self, "featureState") == 1}];
  }

  return v4;
}

- (void)_showPrivacySheetForBusinessChat
{
  v3 = [MEMORY[0x277D37678] presenterForPrivacySplashWithIdentifier:@"com.apple.onboarding.businesschat"];
  [v3 setPresentingViewController:self];
  [v3 present];
}

- (void)_showOnboarding
{
  if (([MEMORY[0x277D1A9A0] deviceIsLockedDown] & 1) == 0)
  {
    v3 = CUTWeakLinkClass();
    if (v3)
    {
      v4 = v3;
      objc_initWeak(&location, self);
      v8 = MEMORY[0x277D85DD0];
      v9 = 3221225472;
      v10 = __62__CKSettingsMessagesForBusinessViewController__showOnboarding__block_invoke;
      v11 = &unk_278DE8530;
      objc_copyWeak(&v12, &location);
      v5 = MEMORY[0x245D4D850](&v8);
      v6 = [v4 alloc];
      v7 = [v6 initWithCompletionHandler:{v5, v8, v9, v10, v11}];
      [v7 setupNotNowWithActionHandler:v5];
      [(CKSettingsMessagesForBusinessViewController *)self presentViewController:v7 animated:1 completion:0];

      objc_destroyWeak(&v12);
      objc_destroyWeak(&location);
    }
  }
}

void __62__CKSettingsMessagesForBusinessViewController__showOnboarding__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _fetchFeatureState];
}

- (void)_fetchFeatureState
{
  if (([MEMORY[0x277D1A9A0] deviceIsLockedDown] & 1) == 0)
  {
    v3 = [MEMORY[0x277D186F8] optionsWithFeatureID:@"bia-opt-out"];
    objc_initWeak(&location, self);
    featureToggler = [(CKSettingsMessagesForBusinessViewController *)self featureToggler];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __65__CKSettingsMessagesForBusinessViewController__fetchFeatureState__block_invoke;
    v5[3] = &unk_278DE8A68;
    objc_copyWeak(&v6, &location);
    [featureToggler retrieveFeatureToggleStateForOptions:v3 completion:v5];

    objc_destroyWeak(&v6);
    objc_destroyWeak(&location);
  }
}

void __65__CKSettingsMessagesForBusinessViewController__fetchFeatureState__block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  if (![v7 success])
  {
LABEL_6:
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained setErroredOut:1];
    goto LABEL_8;
  }

  v3 = [v7 state];
  if ((v3 - 1) >= 2)
  {
    if (v3 == 3 || !v3)
    {
      WeakRetained = objc_loadWeakRetained((a1 + 32));
      [WeakRetained _showOnboarding];
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  v5 = [v7 state];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setFeatureState:v5];
LABEL_8:

  v6 = objc_loadWeakRetained((a1 + 32));
  [v6 reloadSpecifiers];
}

@end