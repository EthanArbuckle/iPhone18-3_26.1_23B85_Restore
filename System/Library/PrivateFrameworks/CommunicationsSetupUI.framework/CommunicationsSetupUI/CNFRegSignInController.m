@interface CNFRegSignInController
- (BOOL)passwordIsEmpty;
- (BOOL)usernameIsEmpty;
- (id)getPasswordForSpecifier:(id)a3;
- (id)getUserNameForSpecifier:(id)a3;
- (id)passwordTextField;
- (id)specifierList;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)usernameTextField;
- (id)validationString;
- (void)__userTappedTextField;
- (void)_buildCreateAccountButtonSpecifierCache:(id)a3;
- (void)_buildCredentialSpecifierCache:(id)a3;
- (void)_buildSignInGroupSpecifierCache:(id)a3;
- (void)_buildSpecifierCache:(id)a3;
- (void)_handleTimeout;
- (void)_incrementSigninFailureCount;
- (void)_launchForgotPasswordUrl;
- (void)_layoutLearnMoreButton;
- (void)_loadRegionsIfNecessary;
- (void)_resignFirstResponders;
- (void)_returnKeyPressed;
- (void)_setupAppearBlockForAccountAuthorizeWithAuthID:(id)a3 token:(id)a4;
- (void)_setupAppearBlockForNewPasswordWithAppleID:(id)a3;
- (void)_setupEventHandlers;
- (void)_showAccountNotAuthorizedSheetWithAuthID:(id)a3 token:(id)a4;
- (void)_showNewPasswordNeededSheetWithAppleID:(id)a3;
- (void)_showRegistrationFailureWithError:(id)a3;
- (void)_showSigninFailureAlert;
- (void)_updateControllerState;
- (void)_updateUI;
- (void)applicationDidResume;
- (void)cancelButtonTapped;
- (void)createAccountControllerDidFinish:(id)a3 withAppleId:(id)a4 authID:(id)a5 authToken:(id)a6;
- (void)dealloc;
- (void)forgotIDButtonTapped;
- (void)learnMorePressed:(id)a3;
- (void)loadView;
- (void)passwordFieldEmptyStateChanged:(id)a3 forSpecifier:(id)a4;
- (void)setHideLearnMoreButton:(BOOL)a3;
- (void)setPasswordText:(id)a3;
- (void)setSpecifier:(id)a3;
- (void)setUsernameText:(id)a3;
- (void)showCreateAccountController;
- (void)signInTapped:(id)a3;
- (void)signInWithUsername:(id)a3 password:(id)a4;
- (void)systemApplicationDidEnterBackground;
- (void)systemApplicationWillEnterForeground;
- (void)usernameFieldEmptyStateChanged:(id)a3 forSpecifier:(id)a4;
- (void)viewDidLoad;
@end

@implementation CNFRegSignInController

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = CNFRegSignInController;
  [(CNFRegFirstRunController *)&v4 dealloc];
}

- (id)specifierList
{
  v68 = *MEMORY[0x277D3FC48];
  v3 = *(&self->super.super.super.super.super.super.super.isa + v68);
  if (!v3)
  {
    v4 = _os_feature_enabled_impl();
    v5 = [(CNFRegListController *)self regController];
    [v5 refreshSystemAccount];

    v6 = [(CNFRegListController *)self regController];
    v7 = [v6 hasSystemAccount];

    if (v7)
    {
      v8 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_243BE5000, v8, OS_LOG_TYPE_DEFAULT, "We have a system account available, using it", buf, 2u);
      }

      if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
      {
        IMLogString();
      }

      self->_useSystemAccount = 1;
    }

    v9 = CNFRegLoadSpecifiersFromPlist(self, @"CNFRegSignIn", self);
    v10 = [v9 specifierForID:@"FACETIME_SIGNIN_USERNAME_ID"];
    v11 = CommunicationsSetupUIBundle();
    v12 = CNFRegStringTableName();
    if (v4)
    {
      v13 = @"FACETIME_USERNAME_DESCRIPTION_LABEL_APPLEACCOUNT";
    }

    else
    {
      v13 = @"FACETIME_USERNAME_DESCRIPTION_LABEL";
    }

    if (v4)
    {
      v14 = @"FACETIME_SIGNIN_FORGOT_BUTTON_LABEL_APPLEACCOUNT";
    }

    else
    {
      v14 = @"FACETIME_SIGNIN_FORGOT_BUTTON_LABEL";
    }

    v15 = [v11 localizedStringForKey:v13 value:&stru_2856D3978 table:v12];
    [v10 setName:v15];

    v16 = [v9 specifierForID:@"FACETIME_SIGNIN_PASSWORD_ID"];
    v17 = CommunicationsSetupUIBundle();
    v18 = CNFRegStringTableName();
    v19 = [v17 localizedStringForKey:@"FACETIME_PASSWORD_DESCRIPTION_LABEL" value:&stru_2856D3978 table:v18];
    [v16 setName:v19];

    v20 = [v9 specifierForID:@"FACETIME_SIGNIN_BUTTON_GROUP_ID"];
    v21 = CommunicationsSetupUIBundle();
    v22 = CNFRegStringTableName();
    v23 = [v21 localizedStringForKey:v14 value:&stru_2856D3978 table:v22];

    v24 = objc_opt_class();
    v25 = NSStringFromClass(v24);
    v66 = *MEMORY[0x277D3FF48];
    [v20 setProperty:v25 forKey:?];

    v65 = *MEMORY[0x277D3FF70];
    [v20 setProperty:v23 forKey:?];
    v26 = CNFRegiForgotURL();
    v64 = *MEMORY[0x277D3FF78];
    [v20 setProperty:v26 forKey:?];

    v67 = v23;
    v71.length = [v23 length];
    v71.location = 0;
    v27 = NSStringFromRange(v71);
    v63 = *MEMORY[0x277D3FF58];
    [v20 setProperty:v27 forKey:?];

    v28 = [MEMORY[0x277CCAE60] valueWithNonretainedObject:self];
    v62 = *MEMORY[0x277D3FF68];
    [v20 setProperty:v28 forKey:?];

    v29 = [(CNFRegListController *)self regController];
    if ([v29 hasSystemAccount])
    {
      v30 = 1;
    }

    else
    {
      v31 = [(CNFRegListController *)self regController];
      v32 = [v31 guessedAccountName];
      v30 = v32 != 0;
    }

    v33 = [v9 specifierForID:@"FACETIME_SIGNIN_CREATE_ACCOUNT_ID"];
    if (((v33 != 0) & v4) == 1)
    {
      v34 = CommunicationsSetupUIBundle();
      v35 = CNFRegStringTableName();
      [v34 localizedStringForKey:@"FACETIME_SIGNIN_CREATE_ACCOUNT_BUTTON_LABEL_APPLEACCOUNT" value:&stru_2856D3978 table:v35];
      v37 = v36 = v4;

      [v33 setProperty:v37 forKey:*MEMORY[0x277D40170]];
      [v33 setName:v37];

      v4 = v36;
    }

    v38 = [v9 specifierForID:@"FACETIME_SIGNIN_CREATE_ACCOUNT_GROUP_ID"];
    if (v30)
    {
      [v9 removeObject:v38];

      v38 = [v9 specifierForID:@"FACETIME_SIGNIN_CREATE_ACCOUNT_ID"];
      [v9 removeObject:v38];
    }

    else
    {
      CommunicationsSetupUIBundle();
      v61 = v33;
      v40 = v39 = v4;
      v41 = CNFRegStringTableName();
      v42 = [v40 localizedStringForKey:@"FACETIME_SIGNIN_CREATE_ACCOUNT_FOOTER_LEARN_MORE" value:&stru_2856D3978 table:v41];

      v43 = MEMORY[0x277CCACA8];
      v44 = CommunicationsSetupUIBundle();
      v45 = CNFRegStringTableName();
      if (v39)
      {
        v46 = @"FACETIME_SIGNIN_CREATE_ACCOUNT_FOOTER_FORMAT_APPLEACCOUNT";
      }

      else
      {
        v46 = @"FACETIME_SIGNIN_CREATE_ACCOUNT_FOOTER_FORMAT";
      }

      v47 = [v44 localizedStringForKey:v46 value:&stru_2856D3978 table:v45];
      v48 = [v43 stringWithFormat:v47, v42];

      v33 = v61;
      v49 = [v48 rangeOfString:v42];
      v51 = v50;
      v52 = objc_opt_class();
      v53 = NSStringFromClass(v52);
      [v38 setProperty:v53 forKey:v66];

      [v38 setProperty:v48 forKey:v65];
      v54 = CNFRegAppleIDLearnMoreURL();
      [v38 setProperty:v54 forKey:v64];

      v72.location = v49;
      v72.length = v51;
      v55 = NSStringFromRange(v72);
      [v38 setProperty:v55 forKey:v63];

      v56 = [MEMORY[0x277CCAE60] valueWithNonretainedObject:self];
      [v38 setProperty:v56 forKey:v62];
    }

    [(CNFRegSignInController *)self _buildSpecifierCache:v9];
    v57 = [(CNFRegSignInController *)self presentingViewController];
    if (v57)
    {
      createAccountButtonSpecifier = self->_createAccountButtonSpecifier;

      if (createAccountButtonSpecifier)
      {
        *(self->_createAccountButtonSpecifier + *MEMORY[0x277D3FC90]) = 2;
      }
    }

    v59 = *(&self->super.super.super.super.super.super.super.isa + v68);
    *(&self->super.super.super.super.super.super.super.isa + v68) = v9;

    [(CNFRegFirstRunController *)self _stopValidationModeAnimated:0];
    v3 = *(&self->super.super.super.super.super.super.super.isa + v68);
  }

  return v3;
}

- (void)loadView
{
  v3.receiver = self;
  v3.super_class = CNFRegSignInController;
  [(CNFRegListController *)&v3 loadView];
  [(CNFRegSignInController *)self _layoutLearnMoreButton];
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = CNFRegSignInController;
  [(CNFRegSignInController *)&v4 viewDidLoad];
  v3 = [(CNFRegSignInController *)self table];
  [v3 setShowsVerticalScrollIndicator:0];
}

- (void)setHideLearnMoreButton:(BOOL)a3
{
  if (self->_hideLearnMoreButton != a3)
  {
    self->_hideLearnMoreButton = a3;
    if ([(CNFRegSignInController *)self isViewLoaded])
    {

      [(CNFRegSignInController *)self _layoutLearnMoreButton];
    }
  }
}

- (void)_layoutLearnMoreButton
{
  learnMoreButton = self->_learnMoreButton;
  if (learnMoreButton)
  {
    if (self->_hideLearnMoreButton)
    {
      [(CNFRegLearnMoreButton *)learnMoreButton removeTarget:self forEvents:64];
      [(CNFRegLearnMoreButton *)self->_learnMoreButton removeFromSuperview];
      v4 = self->_learnMoreButton;
      self->_learnMoreButton = 0;
LABEL_6:
    }
  }

  else if (!self->_hideLearnMoreButton)
  {
    v5 = [CNFRegLearnMoreButton alloc];
    v6 = [(CNFRegLearnMoreButton *)v5 initWithFrame:0 style:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
    v7 = self->_learnMoreButton;
    self->_learnMoreButton = v6;

    [(CNFRegLearnMoreButton *)self->_learnMoreButton setAutoresizingMask:13];
    [(CNFRegLearnMoreButton *)self->_learnMoreButton addTarget:self action:sel_learnMorePressed_ forEvents:64];
    v4 = [(CNFRegSignInController *)self view];
    [v4 addSubview:self->_learnMoreButton];
    goto LABEL_6;
  }

  if (!self->_hideLearnMoreButton && self->_learnMoreButton)
  {
    v8 = [(CNFRegSignInController *)self view];
    [v8 bounds];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;

    [(CNFRegLearnMoreButton *)self->_learnMoreButton sizeToFit];
    v22.origin.x = v10;
    v22.origin.y = v12;
    v22.size.width = v14;
    v22.size.height = v16;
    MidX = CGRectGetMidX(v22);
    v23.origin.x = v10;
    v23.origin.y = v12;
    v23.size.width = v14;
    v23.size.height = v16;
    MaxY = CGRectGetMaxY(v23);
    [(CNFRegLearnMoreButton *)self->_learnMoreButton bounds];
    v19 = MaxY + CGRectGetHeight(v24) * -0.5 + -17.0;
    v20 = self->_learnMoreButton;

    [(CNFRegLearnMoreButton *)v20 setCenter:MidX, v19];
  }
}

- (void)setSpecifier:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CNFRegSignInController;
  [(CNFRegFirstRunController *)&v9 setSpecifier:v4];
  v5 = [v4 propertyForKey:@"cnf-hideLearnMoreButton"];
  if (v5)
  {
    v6 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v11 = v5;
      _os_log_impl(&dword_243BE5000, v6, OS_LOG_TYPE_DEFAULT, "Setting hide learn more button to : %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
    {
      v8 = v5;
      IMLogString();
    }

    -[CNFRegSignInController setHideLearnMoreButton:](self, "setHideLearnMoreButton:", [v5 BOOLValue]);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)systemApplicationWillEnterForeground
{
  v3.receiver = self;
  v3.super_class = CNFRegSignInController;
  [(CNFRegFirstRunController *)&v3 systemApplicationWillEnterForeground];
  [(CNFRegSignInController *)self _updateUI];
}

- (void)systemApplicationDidEnterBackground
{
  v2.receiver = self;
  v2.super_class = CNFRegSignInController;
  [(CNFRegFirstRunController *)&v2 systemApplicationDidEnterBackground];
}

- (void)applicationDidResume
{
  v3 = [(CNFRegFirstRunController *)self account];

  if (!v3)
  {
    v4 = [(CNFRegListController *)self regController];
    v5 = [v4 accounts];
    v6 = [v5 firstObject];
    [(CNFRegFirstRunController *)self setAccount:v6];
  }

  [(CNFRegSignInController *)self _updateControllerState];
}

- (id)validationString
{
  v2 = CommunicationsSetupUIBundle();
  v3 = CNFRegStringTableName();
  v4 = [v2 localizedStringForKey:@"SIGNING_IN" value:&stru_2856D3978 table:v3];

  return v4;
}

- (void)_resignFirstResponders
{
  v4 = [(CNFRegSignInController *)self usernameTextField];
  v3 = [(CNFRegSignInController *)self passwordTextField];
  if ([v4 isFirstResponder])
  {
    [v4 resignFirstResponder];
  }

  if ([v3 isFirstResponder])
  {
    [v3 resignFirstResponder];
  }
}

- (id)getUserNameForSpecifier:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (self->_useSystemAccount)
  {
    v5 = [(CNFRegListController *)self regController];
    v6 = [v5 systemAccount];

    v7 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v16 = v6;
      _os_log_impl(&dword_243BE5000, v7, OS_LOG_TYPE_DEFAULT, "Using system account for username field: %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
    {
      v14 = v6;
      IMLogString();
    }

    v8 = [(CNFRegListController *)self regController];
    v9 = [v8 loginForAccount:v6];

    if (!v9 || ![v9 length])
    {
      v10 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v16 = v6;
        _os_log_impl(&dword_243BE5000, v10, OS_LOG_TYPE_DEFAULT, "** WARNING ** We are using a system account but it has no login: %@", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
      {
        IMLogString();
      }
    }
  }

  else
  {
    v9 = [(CNFRegSignInController *)self pendingUsername];
    if (!v9)
    {
      v11 = [(CNFRegListController *)self regController];
      v9 = [v11 guessedAccountName];
    }
  }

  v12 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)getPasswordForSpecifier:(id)a3
{
  v4 = a3;
  if (self->_useSystemAccount)
  {
    v5 = [(CNFRegListController *)self regController];
    v6 = [v5 systemAccount];

    v7 = [(CNFRegListController *)self regController];
    v8 = [v7 loginForAccount:v6];

    if (v8)
    {
      if ([v8 length])
      {
        v9 = @"•••••••";
      }

      else
      {
        v9 = 0;
      }

      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v9 = [(CNFRegSignInController *)self pendingPassword];
  if (v9)
  {
    goto LABEL_11;
  }

  v6 = [(CNFRegSignInController *)self getUserNameForSpecifier:v4];
  v10 = [(CNFRegListController *)self regController];
  v8 = [v10 accountWithLogin:v6];

  if (!v8)
  {
LABEL_9:
    v9 = 0;
    goto LABEL_10;
  }

  v9 = [v8 password];
LABEL_10:

LABEL_11:

  return v9;
}

- (id)usernameTextField
{
  v2 = [(CNFRegSignInController *)self cachedCellForSpecifier:self->_usernameSpecifier];
  v3 = [v2 editableTextField];

  return v3;
}

- (void)setUsernameText:(id)a3
{
  usernameSpecifier = self->_usernameSpecifier;
  v5 = a3;
  v7 = [(CNFRegSignInController *)self cachedCellForSpecifier:usernameSpecifier];
  v6 = [v7 editableTextField];
  [v6 setText:v5];

  if (objc_opt_respondsToSelector())
  {
    [v7 textFieldChangedExternally];
  }
}

- (BOOL)usernameIsEmpty
{
  v3 = [(CNFRegSignInController *)self usernameTextField];

  if (!v3)
  {
    v5 = [(CNFRegSignInController *)self getUserNameForSpecifier:self->_usernameSpecifier];
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_5:
    v6 = 1;
    goto LABEL_6;
  }

  v4 = [(CNFRegSignInController *)self usernameTextField];
  v5 = [v4 text];

  if (!v5)
  {
    goto LABEL_5;
  }

LABEL_3:
  v6 = [v5 length] == 0;
LABEL_6:

  return v6;
}

- (id)passwordTextField
{
  v2 = [(CNFRegSignInController *)self cachedCellForSpecifier:self->_passwordSpecifier];
  v3 = [v2 editableTextField];

  return v3;
}

- (void)setPasswordText:(id)a3
{
  passwordSpecifier = self->_passwordSpecifier;
  v5 = a3;
  v7 = [(CNFRegSignInController *)self cachedCellForSpecifier:passwordSpecifier];
  v6 = [v7 editableTextField];
  [v6 setText:v5];

  if (objc_opt_respondsToSelector())
  {
    [v7 textFieldChangedExternally];
  }
}

- (BOOL)passwordIsEmpty
{
  v3 = [(CNFRegSignInController *)self passwordTextField];

  if (!v3)
  {
    v5 = [(CNFRegSignInController *)self getPasswordForSpecifier:self->_passwordSpecifier];
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_5:
    v6 = 1;
    goto LABEL_6;
  }

  v4 = [(CNFRegSignInController *)self passwordTextField];
  v5 = [v4 text];

  if (!v5)
  {
    goto LABEL_5;
  }

LABEL_3:
  v6 = [v5 length] == 0;
LABEL_6:

  return v6;
}

- (void)usernameFieldEmptyStateChanged:(id)a3 forSpecifier:(id)a4
{
  v5 = ([a3 BOOLValue] & 1) == 0 && !-[CNFRegSignInController passwordIsEmpty](self, "passwordIsEmpty");

  [(CNFRegSignInController *)self setSignInButtonEnabled:v5 animated:1];
}

- (void)passwordFieldEmptyStateChanged:(id)a3 forSpecifier:(id)a4
{
  v5 = ([a3 BOOLValue] & 1) == 0 && !-[CNFRegSignInController usernameIsEmpty](self, "usernameIsEmpty");

  [(CNFRegSignInController *)self setSignInButtonEnabled:v5 animated:1];
}

- (void)__userTappedTextField
{
  if (self->_useSystemAccount)
  {
    v3 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_243BE5000, v3, OS_LOG_TYPE_DEFAULT, "User tapped a text field and we were using a system account, clearing password and going to normal mode", v5, 2u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (IMShouldLog())
      {
        IMLogString();
      }
    }

    self->_useSystemAccount = 0;
    v4 = [(CNFRegSignInController *)self passwordTextField];
    [v4 setClearsOnBeginEditing:0];

    [(CNFRegSignInController *)self setPasswordText:0];
  }
}

- (void)showCreateAccountController
{
  if (![(CNFRegListController *)self _showWiFiAlertIfNecessary])
  {
    v3 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      _os_log_impl(&dword_243BE5000, v3, OS_LOG_TYPE_DEFAULT, "Show create account controller", v14, 2u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (IMShouldLog())
      {
        IMLogString();
      }
    }

    [(CNFRegListController *)self setShowingChildController:1];
    [(CNFRegSignInController *)self _resignFirstResponders];
    v4 = [CNFRegCreateAccountController alloc];
    v5 = [(CNFRegListController *)self regController];
    v6 = [(CNFRegAccountWebViewController *)v4 initWithRegController:v5];

    [(CNFRegCreateAccountController *)v6 setDelegate:self];
    [(CNFRegCreateAccountController *)v6 setEdgesForExtendedLayout:0];
    v7 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v6];
    v8 = +[CNFRegAppearanceController globalAppearanceController];
    [v7 setModalPresentationStyle:{objc_msgSend(v8, "modalPresentationStyle")}];
    v9 = [v8 navigationBarStyle];
    v10 = [v7 navigationBar];
    [v10 setBarStyle:v9];

    v11 = [v8 navigationBarIsTranslucent];
    v12 = [v7 navigationBar];
    [v12 setTranslucent:v11];

    v13 = [(CNFRegSignInController *)self navigationController];
    [v13 presentViewController:v7 animated:1 completion:0];
  }
}

- (void)forgotIDButtonTapped
{
  if (![(CNFRegListController *)self _showWiFiAlertIfNecessary])
  {

    [(CNFRegSignInController *)self _launchForgotPasswordUrl];
  }
}

- (void)createAccountControllerDidFinish:(id)a3 withAppleId:(id)a4 authID:(id)a5 authToken:(id)a6
{
  v35 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (v11)
  {
    [(CNFRegSignInController *)self setUsernameText:v11];
    v14 = 0;
    if (v12 && v13)
    {
      [(CNFRegSignInController *)self setPasswordText:0];
      v14 = 1;
    }
  }

  else
  {
    v14 = 0;
  }

  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __88__CNFRegSignInController_createAccountControllerDidFinish_withAppleId_authID_authToken___block_invoke;
  v26[3] = &unk_278DE81E0;
  v15 = v10;
  v27 = v15;
  v28 = self;
  [(CNFRegFirstRunController *)self _executeDismissBlock:v26];
  if (v14)
  {
    v16 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v30 = v11;
      v31 = 2112;
      v32 = v12;
      v33 = 2112;
      v34 = v13;
      _os_log_impl(&dword_243BE5000, v16, OS_LOG_TYPE_DEFAULT, "Signing in with username (new account): %@  profileID: %@ token: %@", buf, 0x20u);
    }

    if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
    {
      v20 = v12;
      v21 = v13;
      v19 = v11;
      IMLogString();
    }

    [(CNFRegSignInController *)self setPendingUsername:v11, v19, v20, v21];
    [(CNFRegSignInController *)self setPendingPassword:0];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __88__CNFRegSignInController_createAccountControllerDidFinish_withAppleId_authID_authToken___block_invoke_167;
    v22[3] = &unk_278DE8668;
    v22[4] = self;
    v23 = v11;
    v24 = v12;
    v25 = v13;
    v17 = MEMORY[0x245D4D850](v22);
    if ([(CNFRegListController *)self appeared])
    {
      v17[2](v17);
    }

    else
    {
      [(CNFRegListController *)self setAppearBlock:v17];
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

uint64_t __88__CNFRegSignInController_createAccountControllerDidFinish_withAppleId_authID_authToken___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setDelegate:0];
  v2 = *(a1 + 40);

  return [v2 dismissViewControllerAnimated:1 completion:0];
}

uint64_t __88__CNFRegSignInController_createAccountControllerDidFinish_withAppleId_authID_authToken___block_invoke_167(uint64_t a1)
{
  v5 = 0;
  [*(a1 + 32) _startValidationModeAnimated:0];
  v2 = [*(a1 + 32) regController];
  v3 = [v2 beginAccountSetupWithLogin:*(a1 + 40) authID:*(a1 + 48) authToken:*(a1 + 56) regionInfo:0 foundExisting:&v5];
  [*(a1 + 32) setAccount:v3];

  if ((v5 & 1) == 0)
  {
    [*(a1 + 32) _resetSigninFailureCount];
  }

  [*(a1 + 32) _startTimeout];
  return [*(a1 + 32) _loadRegionsIfNecessary];
}

- (void)_updateUI
{
  if (!self->super._showingActivityIndicator)
  {
    v3 = ![(CNFRegSignInController *)self passwordIsEmpty]&& ![(CNFRegSignInController *)self usernameIsEmpty];
    [(CNFRegSignInController *)self setSignInButtonEnabled:v3 animated:0];
  }

  [(CNFRegSignInController *)self _layoutLearnMoreButton];
}

- (void)_updateControllerState
{
  v14.receiver = self;
  v14.super_class = CNFRegSignInController;
  [(CNFRegFirstRunController *)&v14 _updateControllerState];
  v3 = [(CNFRegListController *)self regController];
  v4 = [(CNFRegFirstRunController *)self account];
  v5 = [v3 accountStateForAccount:v4];

  if (v5)
  {
    v6 = [(CNFRegSignInController *)self navigationController];
    v7 = [v6 visibleViewController];

    if ((v5 & 2) != 0)
    {
      if ((v5 & 4) != 0)
      {
        if ([(CNFRegFirstRunController *)self pushCompletionControllerIfPossible])
        {
          v13 = 1;
        }

        else
        {
          v13 = [(CNFRegFirstRunController *)self dismissWithState:v5];
        }

        CNFAssert(v13, 7, @"Finished signin but no action was taken");
        goto LABEL_13;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v8 = CNFRegEmailController;
        goto LABEL_8;
      }
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v8 = CNFRegLocaleController;
LABEL_8:
        v9 = [v8 alloc];
        v10 = [(CNFRegFirstRunController *)self account];
        v11 = [v9 initWithParentController:self account:v10];

        [v11 setCompletionControllerClass:{-[CNFRegFirstRunController completionControllerClass](self, "completionControllerClass")}];
        v12 = [(CNFRegFirstRunController *)self delegate];
        [v11 setDelegate:v12];

        [(CNFRegSignInController *)self showController:v11 animate:1];
      }
    }

LABEL_13:
  }
}

- (void)_returnKeyPressed
{
  if (![(CNFRegSignInController *)self usernameIsEmpty])
  {
    if ([(CNFRegSignInController *)self passwordIsEmpty])
    {
      v3 = [(CNFRegSignInController *)self usernameTextField];
      v4 = [v3 isFirstResponder];

      if (v4)
      {
        v6 = [(CNFRegSignInController *)self passwordTextField];
        [v6 becomeFirstResponder];
      }
    }

    else
    {
      signInButtonSpecifier = self->_signInButtonSpecifier;

      [(CNFRegSignInController *)self signInTapped:signInButtonSpecifier];
    }
  }
}

- (void)signInWithUsername:(id)a3 password:(id)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v14 = v6;
    _os_log_impl(&dword_243BE5000, v8, OS_LOG_TYPE_DEFAULT, "Signing in with username (password entered): %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
  {
    v12 = v6;
    IMLogString();
  }

  [(CNFRegSignInController *)self setPendingUsername:v6, v12];
  [(CNFRegSignInController *)self setPendingPassword:v7];
  [(CNFRegFirstRunController *)self _startValidationModeAnimated:0];
  buf[0] = 0;
  v9 = [(CNFRegListController *)self regController];
  v10 = [v9 beginAccountSetupWithLogin:v6 password:v7 foundExisting:buf];
  [(CNFRegFirstRunController *)self setAccount:v10];

  if ((buf[0] & 1) == 0)
  {
    [(CNFRegSignInController *)self _resetSigninFailureCount];
  }

  [(CNFRegSignInController *)self _startTimeout];
  [(CNFRegSignInController *)self _loadRegionsIfNecessary];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)signInTapped:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_243BE5000, v5, OS_LOG_TYPE_DEFAULT, "signInTapped", buf, 2u);
  }

  if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
  {
    IMLogString();
  }

  if (![(CNFRegListController *)self _showWiFiAlertIfNecessary])
  {
    if (!self->_useSystemAccount)
    {
      v7 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
      v10 = [(CNFRegSignInController *)self usernameTextField];
      v11 = [v10 text];

      v8 = [v11 stringByTrimmingCharactersInSet:v7];

      v12 = [(CNFRegSignInController *)self passwordTextField];
      v9 = [v12 text];

      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __39__CNFRegSignInController_signInTapped___block_invoke;
      v24[3] = &unk_278DE8A98;
      v24[4] = self;
      v13 = MEMORY[0x245D4D850](v24);
      if (v8 && [v8 length])
      {
        if (v9 && [v9 length])
        {
          v14 = OSLogHandleForIDSCategory();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v26 = v8;
            _os_log_impl(&dword_243BE5000, v14, OS_LOG_TYPE_DEFAULT, "Signing in with username (password entered): %@", buf, 0xCu);
          }

          if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
          {
            v23 = v8;
            IMLogString();
          }

          [(CNFRegSignInController *)self setPendingUsername:v8, v23];
          [(CNFRegSignInController *)self setPendingPassword:v9];
          [(CNFRegFirstRunController *)self _startValidationModeAnimated:0];
          buf[0] = 0;
          v15 = [(CNFRegListController *)self regController];
          v16 = [v15 beginAccountSetupWithLogin:v8 password:v9 foundExisting:buf];
          [(CNFRegFirstRunController *)self setAccount:v16];

          if ((buf[0] & 1) == 0)
          {
            [(CNFRegSignInController *)self _resetSigninFailureCount];
          }

          goto LABEL_10;
        }

        v20 = MEMORY[0x277CCACA8];
        v17 = CommunicationsSetupUIBundle();
        v18 = CNFRegStringTableName();
        v19 = [v17 localizedStringForKey:@"FACETIME_SIGNIN_ERROR_INVALID_CREDENTIALS_FOR_%@" value:&stru_2856D3978 table:v18];
        v21 = [v20 stringWithFormat:v19, v8];
        (v13)[2](v13, v21);
      }

      else
      {
        v17 = CommunicationsSetupUIBundle();
        v18 = CNFRegStringTableName();
        v19 = [v17 localizedStringForKey:@"FACETIME_SIGNIN_ERROR_BLANK_USERNAME" value:&stru_2856D3978 table:v18];
        (v13)[2](v13, v19);
      }

      goto LABEL_26;
    }

    v6 = [(CNFRegListController *)self regController];
    v7 = [v6 systemAccount];

    if (v7)
    {
      [(CNFRegFirstRunController *)self _startValidationModeAnimated:0];
      v8 = [(CNFRegListController *)self regController];
      v9 = [v8 beginAccountSetupWithAccount:v7];
      [(CNFRegFirstRunController *)self setAccount:v9];
LABEL_10:

      [(CNFRegSignInController *)self _startTimeout];
      [(CNFRegSignInController *)self _loadRegionsIfNecessary];
    }
  }

LABEL_26:

  v22 = *MEMORY[0x277D85DE8];
}

void __39__CNFRegSignInController_signInTapped___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = CommunicationsSetupUIBundle();
  v5 = CNFRegStringTableName();
  v11 = [v4 localizedStringForKey:@"FACETIME_ACTIVATION_ERROR_TITLE" value:&stru_2856D3978 table:v5];

  v6 = CommunicationsSetupUIBundle();
  v7 = CNFRegStringTableName();
  v8 = [v6 localizedStringForKey:@"FACETIME_ALERT_OK" value:&stru_2856D3978 table:v7];

  v9 = [MEMORY[0x277D75110] alertControllerWithTitle:v11 message:v3 preferredStyle:1];

  v10 = [MEMORY[0x277D750F8] actionWithTitle:v8 style:0 handler:0];
  [v9 addAction:v10];

  [*(a1 + 32) presentViewController:v9 animated:1 completion:0];
}

- (void)learnMorePressed:(id)a3
{
  v3 = *MEMORY[0x277D76620];
  v4 = CNFRegLocalizedSplashScreenURL();
  [v3 openURL:v4 withCompletionHandler:0];
}

- (void)_loadRegionsIfNecessary
{
  v2 = [MEMORY[0x277D07DE8] sharedInstance];
  if (([v2 isLoaded] & 1) == 0)
  {
    [v2 startLoading];
  }
}

- (void)_handleTimeout
{
  [(CNFRegFirstRunController *)self _stopValidationModeAnimated:1];
  v3 = CommunicationsSetupUIBundle();
  v4 = CNFRegStringTableName();
  v13 = [v3 localizedStringForKey:@"FACETIME_ACTIVATION_ERROR_TITLE" value:&stru_2856D3978 table:v4];

  v5 = CommunicationsSetupUIBundle();
  v6 = CNFRegStringTableName();
  v7 = [v5 localizedStringForKey:@"FACETIME_SIGNIN_ERROR_TIMEOUT" value:&stru_2856D3978 table:v6];

  v8 = CommunicationsSetupUIBundle();
  v9 = CNFRegStringTableName();
  v10 = [v8 localizedStringForKey:@"FACETIME_ALERT_OK" value:&stru_2856D3978 table:v9];

  v11 = [MEMORY[0x277D75110] alertControllerWithTitle:v13 message:v7 preferredStyle:1];
  v12 = [MEMORY[0x277D750F8] actionWithTitle:v10 style:0 handler:0];
  [v11 addAction:v12];

  [(CNFRegSignInController *)self presentViewController:v11 animated:1 completion:0];
}

- (void)cancelButtonTapped
{
  v3 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_243BE5000, v3, OS_LOG_TYPE_DEFAULT, "Cancel button tapped", v7, 2u);
  }

  if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
  {
    IMLogString();
  }

  v4 = [(CNFRegListController *)self regController];
  v5 = [v4 accountState];

  WeakRetained = objc_loadWeakRetained((&self->super.super.super.super.super.super.super.isa + *MEMORY[0x277D3FD08]));
  [WeakRetained dismissFinished:(v5 >> 30) & 1];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v9.receiver = self;
  v9.super_class = CNFRegSignInController;
  v5 = [(CNFRegSignInController *)&v9 tableView:a3 cellForRowAtIndexPath:a4];
  v6 = [(CNFRegSignInController *)self cachedCellForSpecifierID:@"FACETIME_SIGNIN_PASSWORD_ID"];

  if (v5 == v6 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v7 = [v5 textField];
    if ([v7 conformsToProtocol:&unk_285730F48])
    {
      [v7 setReturnKeyType:1];
    }

    if (self->_useSystemAccount)
    {
      [v7 setClearsOnBeginEditing:1];
    }
  }

  return v5;
}

- (void)_buildCreateAccountButtonSpecifierCache:(id)a3
{
  v4 = [a3 specifierForID:@"FACETIME_SIGNIN_CREATE_ACCOUNT_ID"];
  createAccountButtonSpecifier = self->_createAccountButtonSpecifier;
  self->_createAccountButtonSpecifier = v4;

  MEMORY[0x2821F96F8]();
}

- (void)_buildSignInGroupSpecifierCache:(id)a3
{
  v4 = a3;
  v5 = [v4 specifierForID:@"FACETIME_SIGNIN_BUTTON_GROUP_ID"];
  actionGroupSpecifier = self->_actionGroupSpecifier;
  self->_actionGroupSpecifier = v5;

  v7 = [v4 specifierForID:@"FACETIME_SIGNIN_BUTTON_ID"];

  signInButtonSpecifier = self->_signInButtonSpecifier;
  self->_signInButtonSpecifier = v7;
}

- (void)_buildCredentialSpecifierCache:(id)a3
{
  v4 = a3;
  v5 = [v4 specifierForID:@"FACETIME_SIGNIN_USERNAME_ID"];
  usernameSpecifier = self->_usernameSpecifier;
  self->_usernameSpecifier = v5;

  v7 = [v4 specifierForID:@"FACETIME_SIGNIN_PASSWORD_ID"];

  passwordSpecifier = self->_passwordSpecifier;
  self->_passwordSpecifier = v7;
}

- (void)_buildSpecifierCache:(id)a3
{
  v4 = a3;
  [(CNFRegSignInController *)self _buildCreateAccountButtonSpecifierCache:v4];
  [(CNFRegSignInController *)self _buildSignInGroupSpecifierCache:v4];
  [(CNFRegSignInController *)self _buildCredentialSpecifierCache:v4];
}

- (void)_showRegistrationFailureWithError:(id)a3
{
  v42 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v41 = v4;
      _os_log_impl(&dword_243BE5000, v5, OS_LOG_TYPE_DEFAULT, "Received sign in error : %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
    {
      v35 = v4;
      IMLogString();
    }

    v6 = [v4 code];
  }

  else
  {
    v6 = -1;
  }

  v7 = [(CNFRegListController *)self regController];
  v8 = [v7 shouldShowAlertForError:v4];

  if (v8 && (v6 > 0x1A || ((1 << v6) & 0x4100C00) == 0))
  {
    v10 = [v4 userInfo];
    v11 = [v10 objectForKey:@"cnf-customTitle"];
    v12 = v11;
    if (v11)
    {
      v13 = v11;
    }

    else
    {
      v14 = CommunicationsSetupUIBundle();
      v15 = CNFRegStringTableName();
      v13 = [v14 localizedStringForKey:@"FACETIME_ACTIVATION_ERROR_TITLE" value:&stru_2856D3978 table:v15];
    }

    v16 = [v4 localizedDescription];
    v17 = v16;
    if (v16)
    {
      v18 = v16;
    }

    else
    {
      v19 = CommunicationsSetupUIBundle();
      v20 = CNFRegStringTableName();
      v18 = [v19 localizedStringForKey:@"FACETIME_SIGNIN_ERROR_GENERIC" value:&stru_2856D3978 table:v20];
    }

    v21 = [v4 userInfo];
    v22 = [v21 objectForKey:@"cnf-customButton"];
    v23 = v22;
    if (v22)
    {
      v24 = v22;
    }

    else
    {
      v25 = CommunicationsSetupUIBundle();
      v26 = CNFRegStringTableName();
      v24 = [v25 localizedStringForKey:@"FACETIME_ALERT_OK" value:&stru_2856D3978 table:v26];
    }

    v27 = [MEMORY[0x277D75110] alertControllerWithTitle:v13 message:v18 preferredStyle:1];
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = __60__CNFRegSignInController__showRegistrationFailureWithError___block_invoke;
    v39[3] = &unk_278DE8AC0;
    v39[4] = self;
    v39[5] = v6;
    v28 = [MEMORY[0x277D750F8] actionWithTitle:v24 style:0 handler:v39];
    [v27 addAction:v28];

    v29 = [v4 userInfo];
    v30 = [v29 objectForKey:@"cnf-customActionTitle"];

    if (v30)
    {
      v31 = MEMORY[0x277D750F8];
      v32 = [v4 userInfo];
      v33 = [v32 objectForKey:@"cnf-customActionTitle"];
      v36[0] = MEMORY[0x277D85DD0];
      v36[1] = 3221225472;
      v36[2] = __60__CNFRegSignInController__showRegistrationFailureWithError___block_invoke_2;
      v36[3] = &unk_278DE8420;
      v37 = v4;
      v38 = self;
      v34 = [v31 actionWithTitle:v33 style:0 handler:v36];
      [v27 addAction:v34];
    }

    [(CNFRegSignInController *)self presentViewController:v27 animated:1 completion:0];
  }

  v9 = *MEMORY[0x277D85DE8];
}

unint64_t __60__CNFRegSignInController__showRegistrationFailureWithError___block_invoke(unint64_t result)
{
  if (*(result + 40) == 3)
  {
    v1 = result;
    [*(result + 32) _incrementSigninFailureCount];
    result = [*(v1 + 32) signinFailureCount];
    if (result >= 3)
    {
      v2 = *(v1 + 32);

      return [v2 _showSigninFailureAlert];
    }
  }

  return result;
}

void __60__CNFRegSignInController__showRegistrationFailureWithError___block_invoke_2(uint64_t a1, void *a2)
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

- (void)_showSigninFailureAlert
{
  v3 = _os_feature_enabled_impl();
  v4 = CommunicationsSetupUIBundle();
  v5 = CNFRegStringTableName();
  if (v3)
  {
    v6 = @"FACETIME_FORGOT_PASSWORD_ALERT_TITLE_APPLEACCOUNT";
  }

  else
  {
    v6 = @"FACETIME_FORGOT_PASSWORD_ALERT_TITLE";
  }

  v7 = [v4 localizedStringForKey:v6 value:&stru_2856D3978 table:v5];

  v8 = CommunicationsSetupUIBundle();
  v9 = CNFRegStringTableName();
  v10 = [v8 localizedStringForKey:@"FACETIME_FORGOT_PASSWORD_ALERT_MESSAGE" value:&stru_2856D3978 table:v9];

  v11 = CommunicationsSetupUIBundle();
  v12 = CNFRegStringTableName();
  v13 = [v11 localizedStringForKey:@"FACETIME_ALERT_CANCEL" value:&stru_2856D3978 table:v12];

  v14 = CommunicationsSetupUIBundle();
  v15 = CNFRegStringTableName();
  v16 = [v14 localizedStringForKey:@"FACETIME_FORGOT_PASSWORD_ALERT_OK" value:&stru_2856D3978 table:v15];

  v17 = [MEMORY[0x277D75110] alertControllerWithTitle:v7 message:v10 preferredStyle:1];
  v18 = [MEMORY[0x277D750F8] actionWithTitle:v13 style:1 handler:0];
  [v17 addAction:v18];

  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __49__CNFRegSignInController__showSigninFailureAlert__block_invoke;
  v20[3] = &unk_278DE8328;
  v20[4] = self;
  v19 = [MEMORY[0x277D750F8] actionWithTitle:v16 style:0 handler:v20];
  [v17 addAction:v19];

  [(CNFRegSignInController *)self presentViewController:v17 animated:1 completion:0];
}

- (void)_incrementSigninFailureCount
{
  if ([(CNFRegSignInController *)self signinFailureCount]!= -1)
  {
    v3 = [(CNFRegSignInController *)self signinFailureCount]+ 1;

    [(CNFRegSignInController *)self setSigninFailureCount:v3];
  }
}

- (void)_launchForgotPasswordUrl
{
  v3 = [MEMORY[0x277D75128] sharedApplication];
  v2 = CNFRegiForgotURL();
  [v3 openURL:v2 withCompletionHandler:0];
}

- (void)_showNewPasswordNeededSheetWithAppleID:(id)a3
{
  v4 = a3;
  v5 = [CNFRegChangeAccountPasswordController alloc];
  v6 = [(CNFRegListController *)self regController];
  v14 = [(CNFRegChangeAccountPasswordController *)v5 initWithRegController:v6 appleID:v4];

  [(CNFRegChangeAccountPasswordController *)v14 setDelegate:self];
  v7 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v14];
  v8 = +[CNFRegAppearanceController globalAppearanceController];
  [v7 setModalPresentationStyle:{objc_msgSend(v8, "modalPresentationStyle")}];
  v9 = [v8 navigationBarStyle];
  v10 = [v7 navigationBar];
  [v10 setBarStyle:v9];

  v11 = [v8 navigationBarIsTranslucent];
  v12 = [v7 navigationBar];
  [v12 setTranslucent:v11];

  v13 = [(CNFRegSignInController *)self navigationController];
  [v13 presentViewController:v7 animated:1 completion:0];
}

- (void)_setupAppearBlockForNewPasswordWithAppleID:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __69__CNFRegSignInController__setupAppearBlockForNewPasswordWithAppleID___block_invoke;
  v6[3] = &unk_278DE8AE8;
  objc_copyWeak(&v8, &location);
  v5 = v4;
  v7 = v5;
  [(CNFRegListController *)self setAppearBlock:v6];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __69__CNFRegSignInController__setupAppearBlockForNewPasswordWithAppleID___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _showNewPasswordNeededSheetWithAppleID:*(a1 + 32)];
}

- (void)_showAccountNotAuthorizedSheetWithAuthID:(id)a3 token:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [CNFRegAccountAuthorizationController alloc];
  v9 = [(CNFRegListController *)self regController];
  v17 = [(CNFRegAccountAuthorizationController *)v8 initWithRegController:v9 authID:v7 token:v6];

  [(CNFRegAccountAuthorizationController *)v17 setDelegate:self];
  v10 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v17];
  v11 = +[CNFRegAppearanceController globalAppearanceController];
  [v10 setModalPresentationStyle:{objc_msgSend(v11, "modalPresentationStyle")}];
  v12 = [v11 navigationBarStyle];
  v13 = [v10 navigationBar];
  [v13 setBarStyle:v12];

  v14 = [v11 navigationBarIsTranslucent];
  v15 = [v10 navigationBar];
  [v15 setTranslucent:v14];

  v16 = [(CNFRegSignInController *)self navigationController];
  [v16 presentViewController:v10 animated:1 completion:0];
}

- (void)_setupAppearBlockForAccountAuthorizeWithAuthID:(id)a3 token:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __79__CNFRegSignInController__setupAppearBlockForAccountAuthorizeWithAuthID_token___block_invoke;
  v10[3] = &unk_278DE8B10;
  objc_copyWeak(&v13, &location);
  v8 = v6;
  v11 = v8;
  v9 = v7;
  v12 = v9;
  [(CNFRegListController *)self setAppearBlock:v10];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

void __79__CNFRegSignInController__setupAppearBlockForAccountAuthorizeWithAuthID_token___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _showAccountNotAuthorizedSheetWithAuthID:*(a1 + 32) token:*(a1 + 40)];
}

- (void)_setupEventHandlers
{
  v5.receiver = self;
  v5.super_class = CNFRegSignInController;
  [(CNFRegFirstRunController *)&v5 _setupEventHandlers];
  v3 = [(CNFRegListController *)self regController];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __45__CNFRegSignInController__setupEventHandlers__block_invoke;
  v4[3] = &unk_278DE85A8;
  v4[4] = self;
  [v3 setAccountRegistrationBlock:v4];
}

void __45__CNFRegSignInController__setupEventHandlers__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = [v8 registrationStatus];
  v7 = [*(a1 + 32) account];

  if (v7 == v8)
  {
    if ((v6 - 3) >= 3)
    {
      if (v6 == -1)
      {
        [*(a1 + 32) _stopTimeout];
        if (([*(a1 + 32) timedOut] & 1) == 0)
        {
          [*(a1 + 32) _showRegistrationFailureWithError:v5];
          [*(a1 + 32) _stopValidationModeAnimated:1];
        }
      }
    }

    else
    {
      [*(a1 + 32) _stopTimeout];
      [*(a1 + 32) _resetSigninFailureCount];
      [*(a1 + 32) _finishSignInWithAccount:v8 animated:1];
    }
  }
}

@end