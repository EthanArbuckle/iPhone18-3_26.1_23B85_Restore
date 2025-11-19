@interface CNFRegAppleIDSplashViewController
+ (BOOL)shouldShowSplashViewForService:(id)a3 inProgressRegisteringNonPhoneAccount:(id *)a4;
+ (id)_inProgressRegisteringNonPhoneAccountForService:(id)a3;
- (id)_iCloudUserName;
- (id)_imService;
- (id)navigationItem;
- (id)serviceDescription;
- (id)serviceFooter;
- (id)serviceIcon;
- (id)serviceName;
- (void)_cnfSignInWithUsername:(id)a3 password:(id)a4;
- (void)_completeIfAccountIsAlreadyRegistered;
- (void)_handleRegistarResults:(BOOL)a3 alertController:(id)a4;
- (void)_showSettingsController;
- (void)continueRegisteringAccount:(id)a3;
- (void)dealloc;
- (void)handleAuthCompletionWithResults:(id)a3;
- (void)setSpecifier:(id)a3;
- (void)viewDidLoad;
- (void)willBeginAuthWithContext:(id)a3;
@end

@implementation CNFRegAppleIDSplashViewController

+ (BOOL)shouldShowSplashViewForService:(id)a3 inProgressRegisteringNonPhoneAccount:(id *)a4
{
  v40 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [MEMORY[0x277D18998] sharedInstance];
  v7 = [v6 currentSIMsWithError:0];
  if ([v7 count])
  {
    v8 = [MEMORY[0x277D18998] sharedInstance];
    v9 = [v8 supportsIdentification] ^ 1;
  }

  else
  {
    LOBYTE(v9) = 1;
  }

  v10 = [MEMORY[0x277D07DB0] sharedInstance];
  v11 = [v10 supportsSMS];

  v12 = [MEMORY[0x277D18D28] sharedInstance];
  v13 = [v12 accountsForService:v5];

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v14 = v13;
  v15 = [v14 countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v15)
  {
    v16 = v15;
    v31 = v11;
    v32 = v9;
    v33 = a4;
    v34 = v5;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = *v36;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v36 != v20)
        {
          objc_enumerationMutation(v14);
        }

        v22 = *(*(&v35 + 1) + 8 * i);
        v23 = [v22 accountType] == 2;
        v24 = [v22 registrationStatus];
        v25 = v24 == 5;
        if (v24 == 1)
        {
          v17 |= [v22 CNFRegIsSignedOut] ^ 1;
        }

        v19 |= v23;
        v18 |= v25;
      }

      v16 = [v14 countByEnumeratingWithState:&v35 objects:v39 count:16];
    }

    while (v16);
    v26 = v19 | v17;
    a4 = v33;
    v5 = v34;
    v11 = v31;
    LOBYTE(v9) = v32;
  }

  else
  {
    v18 = 0;
    v26 = 0;
  }

  v27 = [CNFRegAppleIDSplashViewController _inProgressRegisteringNonPhoneAccountForService:v5];
  if (a4)
  {
    v27 = v27;
    *a4 = v27;
  }

  if (v26 & 1 | v18 & (v27 == 0))
  {
    v28 = 0;
  }

  else
  {
    v28 = v9 | v11 ^ 1;
  }

  v29 = *MEMORY[0x277D85DE8];
  return v28 & 1;
}

+ (id)_inProgressRegisteringNonPhoneAccountForService:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277D18D28] sharedInstance];
  v5 = [v4 accountsForService:v3];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = [v10 accountType];
        v12 = [v10 registrationStatus];
        if (v12 != 5 && v11 != 2 && (v12 - 2) <= 2)
        {
          v7 = v10;
          goto LABEL_14;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

LABEL_14:

  v14 = *MEMORY[0x277D85DE8];

  return v7;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = CNFRegAppleIDSplashViewController;
  [(PSAppleIDSplashViewController *)&v4 dealloc];
}

- (void)setSpecifier:(id)a3
{
  v7.receiver = self;
  v7.super_class = CNFRegAppleIDSplashViewController;
  v4 = a3;
  [(PSAppleIDSplashViewController *)&v7 setSpecifier:v4];
  v5 = [v4 propertyForKey:{@"ft-serviceType", v7.receiver, v7.super_class}];

  -[CNFRegAppleIDSplashViewController setServiceType:](self, "setServiceType:", [v5 integerValue]);
  CNFRegSetStringTableForServiceType([(CNFRegAppleIDSplashViewController *)self serviceType]);
  v6 = [CNFRegController controllerForServiceType:[(CNFRegAppleIDSplashViewController *)self serviceType]];
  [(CNFRegAppleIDSplashViewController *)self setRegController:v6];
}

- (id)serviceName
{
  v2 = [(CNFRegAppleIDSplashViewController *)self serviceType];
  if (v2 > 2)
  {
    v6 = &stru_2856D3978;
  }

  else
  {
    v3 = off_278DE8E38[v2];
    v4 = CommunicationsSetupUIBundle();
    v5 = CNFRegStringTableName();
    v6 = [v4 localizedStringForKey:v3 value:&stru_2856D3978 table:v5];
  }

  return v6;
}

- (id)serviceDescription
{
  v2 = _os_feature_enabled_impl();
  v3 = CommunicationsSetupUIBundle();
  v4 = CNFRegStringTableName();
  if (v2)
  {
    v5 = @"FACETIME_SIGNIN_SETTINGS_BLURB_APPLEACCOUNT";
  }

  else
  {
    v5 = @"FACETIME_SIGNIN_SETTINGS_BLURB";
  }

  v6 = [v3 localizedStringForKey:v5 value:&stru_2856D3978 table:v4];

  return v6;
}

- (id)serviceFooter
{
  v2 = CommunicationsSetupUIBundle();
  v3 = CNFRegStringTableName();
  v4 = [v2 localizedStringForKey:@"FACETIME_SWITCH_STATUS_DEFAULT" value:&stru_2856D3978 table:v3];

  return v4;
}

- (id)serviceIcon
{
  v2 = [(CNFRegAppleIDSplashViewController *)self serviceType];
  if (v2 > 2)
  {
    v6 = 0;
  }

  else
  {
    v3 = off_278DE8E50[v2];
    v4 = MEMORY[0x277D755B8];
    v5 = [MEMORY[0x277D759A0] mainScreen];
    [v5 scale];
    v6 = [v4 _applicationIconImageForBundleIdentifier:v3 format:2 scale:?];
  }

  return v6;
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = CNFRegAppleIDSplashViewController;
  [(PSAppleIDSplashViewController *)&v4 viewDidLoad];
  v3 = [(CNFRegAppleIDSplashViewController *)self serviceName];
  [(CNFRegAppleIDSplashViewController *)self setTitle:v3];
}

- (id)navigationItem
{
  v3 = [(CNFRegAppleIDSplashViewController *)self parentViewController];
  if (v3 && (v4 = v3, [(CNFRegAppleIDSplashViewController *)self parentViewController], v5 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v5, v4, (isKindOfClass & 1) != 0))
  {
    v7 = [(CNFRegAppleIDSplashViewController *)self parentViewController];
    v8 = [v7 navigationItem];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = CNFRegAppleIDSplashViewController;
    v8 = [(CNFRegAppleIDSplashViewController *)&v10 navigationItem];
  }

  return v8;
}

- (void)willBeginAuthWithContext:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v15 = v4;
    _os_log_impl(&dword_243BE5000, v5, OS_LOG_TYPE_DEFAULT, "willBeginAuthWithContext: %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
  {
    v12 = v4;
    IMLogString();
  }

  v6 = [(CNFRegAppleIDSplashViewController *)self regController];
  v7 = [v6 serviceType] == 0;

  if (v7)
  {
    v10 = 5;
    goto LABEL_10;
  }

  v8 = [(CNFRegAppleIDSplashViewController *)self regController];
  v9 = [v8 serviceType] == 1;

  if (v9)
  {
    v10 = 4;
LABEL_10:
    [v4 setServiceType:v10];
  }

  v13.receiver = self;
  v13.super_class = CNFRegAppleIDSplashViewController;
  [(PSAppleIDSplashViewController *)&v13 willBeginAuthWithContext:v4];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)continueRegisteringAccount:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [(PSAppleIDSplashViewController *)self showBusyUI];
  [(CNFRegAppleIDSplashViewController *)self setShowBusyUIOnAppearance:1];
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__5;
  v14 = __Block_byref_object_dispose__5;
  v15 = [[CNFAccountRegistrar alloc] initWithServiceType:[(CNFRegAppleIDSplashViewController *)self serviceType] presentationViewController:self];
  v5 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v17 = v4;
    _os_log_impl(&dword_243BE5000, v5, OS_LOG_TYPE_DEFAULT, "Continuing registration of account: %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
  {
    v8 = v4;
    IMLogString();
  }

  v6 = v11[5];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __64__CNFRegAppleIDSplashViewController_continueRegisteringAccount___block_invoke;
  v9[3] = &unk_278DE8E18;
  v9[4] = self;
  v9[5] = &v10;
  [v6 continueRegistrationForAccount:v4 completionBlock:{v9, v8}];
  _Block_object_dispose(&v10, 8);

  v7 = *MEMORY[0x277D85DE8];
}

uint64_t __64__CNFRegAppleIDSplashViewController_continueRegisteringAccount___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  [*(a1 + 32) _handleRegistarResults:a2 alertController:a3];
  v4 = *(a1 + 32);

  return [v4 setShowBusyUIOnAppearance:0];
}

- (id)_imService
{
  v2 = [(CNFRegAppleIDSplashViewController *)self serviceType];
  switch(v2)
  {
    case 2:
      goto LABEL_4;
    case 1:
      v3 = [MEMORY[0x277D18DE0] iMessageService];
      break;
    case 0:
LABEL_4:
      v3 = [MEMORY[0x277D18DE0] facetimeService];
      break;
    default:
      v3 = 0;
      break;
  }

  return v3;
}

- (void)_showSettingsController
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 postNotificationName:@"CNFSettingsViewControllerNeedsContainerUpdate" object:0];
}

- (void)_completeIfAccountIsAlreadyRegistered
{
  v3 = [(CNFRegAppleIDSplashViewController *)self _imService];
  v4 = [CNFRegAppleIDSplashViewController shouldShowSplashViewForService:v3 inProgressRegisteringNonPhoneAccount:0];

  if (!v4)
  {

    [(CNFRegAppleIDSplashViewController *)self _showSettingsController];
  }
}

- (void)handleAuthCompletionWithResults:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = CNFRegAppleIDSplashViewController;
  [(PSAppleIDSplashViewController *)&v11 handleAuthCompletionWithResults:v4];
  v5 = [v4 objectForKey:*MEMORY[0x277CEFFD8]];
  v6 = [v4 objectForKey:*MEMORY[0x277CEFFC8]];
  v7 = v6;
  if (v5)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    v9 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_243BE5000, v9, OS_LOG_TYPE_DEFAULT, "AuthKit callback complete. Signing in.", v10, 2u);
    }

    if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
    {
      IMLogString();
    }

    [(PSAppleIDSplashViewController *)self showBusyUI];
    [(CNFRegAppleIDSplashViewController *)self _cnfSignInWithUsername:v5 password:v7];
  }
}

- (void)_handleRegistarResults:(BOOL)a3 alertController:(id)a4
{
  v4 = a3;
  v7 = a4;
  [(PSAppleIDSplashViewController *)self hideBusyUI];
  if (v4)
  {
    [(CNFRegAppleIDSplashViewController *)self _showSettingsController];
  }

  else
  {
    v6 = v7;
    if (!v7)
    {
      goto LABEL_6;
    }

    [(CNFRegAppleIDSplashViewController *)self presentViewController:v7 animated:1 completion:0];
  }

  v6 = v7;
LABEL_6:
}

- (void)_cnfSignInWithUsername:(id)a3 password:(id)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(CNFRegAppleIDSplashViewController *)self _imService];
  if (v8)
  {
    *v16 = 0;
    v17 = v16;
    v18 = 0x3032000000;
    v19 = __Block_byref_object_copy__5;
    v20 = __Block_byref_object_dispose__5;
    v21 = [[CNFAccountRegistrar alloc] initWithServiceType:[(CNFRegAppleIDSplashViewController *)self serviceType] presentationViewController:self];
    v9 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v23 = v6;
      v24 = 2112;
      v25 = v8;
      _os_log_impl(&dword_243BE5000, v9, OS_LOG_TYPE_DEFAULT, "Registering account: %@ (service: %@)", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
    {
      v13 = v6;
      v14 = v8;
      IMLogString();
    }

    v10 = *(v17 + 5);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __69__CNFRegAppleIDSplashViewController__cnfSignInWithUsername_password___block_invoke;
    v15[3] = &unk_278DE8E18;
    v15[4] = self;
    v15[5] = v16;
    [v10 registerAccountWithUsername:v6 password:v7 service:v8 completionBlock:{v15, v13, v14}];
    _Block_object_dispose(v16, 8);
  }

  else
  {
    v11 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v16 = 0;
      _os_log_impl(&dword_243BE5000, v11, OS_LOG_TYPE_DEFAULT, "Couldn't generate a service to register with!", v16, 2u);
    }

    if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
    {
      IMLogString();
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (id)_iCloudUserName
{
  v2 = objc_alloc_init(CUTWeakLinkClass());
  v3 = [v2 aa_primaryAppleAccount];
  v4 = [v3 username];

  return v4;
}

@end