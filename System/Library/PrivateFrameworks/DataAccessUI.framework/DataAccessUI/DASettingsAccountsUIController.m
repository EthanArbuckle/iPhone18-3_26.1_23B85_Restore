@interface DASettingsAccountsUIController
- (BOOL)accountIsManaged;
- (BOOL)haveEnoughValues;
- (BOOL)isRunningFromMobileMailApp;
- (BOOL)validateAccount;
- (DAAccount)account;
- (id)accountBooleanPropertyWithSpecifier:(id)a3;
- (id)accountFromSpecifier;
- (id)accountPropertyWithSpecifier:(id)a3;
- (id)currentlyEditingCell;
- (id)daAccountWithBackingAccountInfo:(id)a3;
- (id)lastGroupSpecifierInSpecifiers:(id)a3;
- (id)localizedAccountTitleString;
- (id)newDefaultAccount;
- (id)specifiers;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int)indexOfCurrentlyEditingCell;
- (void)_beginAccountValidation;
- (void)_confirmSaveUnvalidatedAccount;
- (void)_deleteAccount;
- (void)_dismissAndUpdateParent;
- (void)_finishSaveAccountDismissWhenDone:(BOOL)a3;
- (void)_saveAccountDismissWhenDone:(BOOL)a3;
- (void)cancelButtonTapped:(id)a3;
- (void)dealloc;
- (void)deleteAccountButtonTapped;
- (void)didConfirmSaveUnvalidatedAccount:(BOOL)a3;
- (void)didConfirmTryWithoutSSL:(BOOL)a3;
- (void)doneButtonTapped:(id)a3;
- (void)finishedAccountSetup;
- (void)hideProgressWithPrompt:(id)a3;
- (void)propertyValueChanged:(id)a3;
- (void)reloadAccount;
- (void)setAccountBooleanProperty:(id)a3 withSpecifier:(id)a4;
- (void)setAccountProperty:(id)a3 withSpecifier:(id)a4;
- (void)setHostString:(id)a3;
- (void)setNeedsSaveAndValidation:(BOOL)a3;
- (void)showAlertWithButtons:(id)a3 title:(id)a4 message:(id)a5 completion:(id)a6;
- (void)showIdenticalAccountFailureView;
- (void)showSSLFailureView;
- (void)updateDoneButton;
@end

@implementation DASettingsAccountsUIController

- (DAAccount)account
{
  v21 = *MEMORY[0x277D85DE8];
  if (!self->_account)
  {
    v3 = [(DASettingsAccountsUIController *)self accountFromSpecifier];
    account = self->_account;
    self->_account = v3;

    if (self->_account)
    {
      [(DASettingsAccountsUIController *)self setAttemptedValidation:1];
      [(DASettingsAccountsUIController *)self setValidatedSuccessfully:1];
    }

    else
    {
      [(DASettingsAccountsUIController *)self setIsSettingUpNewAccount:1];
      [(DASettingsAccountsUIController *)self setAccountNeedsAdd:1];
      v5 = [(DASettingsAccountsUIController *)self newDefaultAccount];
      v6 = self->_account;
      self->_account = v5;

      v7 = DALoggingwithCategory();
      v8 = *(MEMORY[0x277D03988] + 4);
      if (os_log_type_enabled(v7, v8))
      {
        v9 = [(DAAccount *)self->_account backingAccountInfo];
        v10 = [v9 identifier];
        v11 = [(DAAccount *)self->_account backingAccountInfo];
        v12 = [v11 username];
        v17 = 138412546;
        v18 = v10;
        v19 = 2112;
        v20 = v12;
        _os_log_impl(&dword_248599000, v7, v8, "Setting _backingAccountInfo.authenticated = YES for Account identifier %@ and username %@", &v17, 0x16u);
      }

      v13 = [(DAAccount *)self->_account backingAccountInfo];
      [v13 setAuthenticated:1];
    }
  }

  v14 = self->_account;
  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (void)reloadAccount
{
  v3 = [(DASettingsAccountsUIController *)self account];
  [v3 reload];

  v5 = [(DASettingsAccountsUIController *)self account];
  v4 = [v5 backingAccountInfo];
  [v4 setAuthenticated:1];
}

- (id)accountFromSpecifier
{
  v2 = [(DASettingsAccountsUIController *)self specifier];
  v3 = [v2 userInfo];
  v4 = [v3 objectForKeyedSubscript:*MEMORY[0x277CE8550]];

  if (v4)
  {
    v5 = [MEMORY[0x277D03738] sharedInstance];
    v6 = [v5 daemonAppropriateAccountClassForACAccount:v4];

    v7 = [[v6 alloc] initWithBackingAccountInfo:v4];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)daAccountWithBackingAccountInfo:(id)a3
{
  v3 = DALoggingwithCategory();
  v4 = *(MEMORY[0x277D03988] + 3);
  if (os_log_type_enabled(v3, v4))
  {
    *v6 = 0;
    _os_log_impl(&dword_248599000, v3, v4, "Individual Settings Bundles MUST create their own da accounts", v6, 2u);
  }

  return 0;
}

- (id)newDefaultAccount
{
  v2 = DALoggingwithCategory();
  v3 = *(MEMORY[0x277D03988] + 3);
  if (os_log_type_enabled(v2, v3))
  {
    *v5 = 0;
    _os_log_impl(&dword_248599000, v2, v3, "Individual Settings Bundles MUST create their own default accounts", v5, 2u);
  }

  return 0;
}

- (id)specifiers
{
  if (![(DASettingsAccountsUIController *)self haveRegisteredForAccountsChanged])
  {
    [(DASettingsAccountsUIController *)self setHaveRegisteredForAccountsChanged:1];
    v3 = [MEMORY[0x277CCAB98] defaultCenter];
    [v3 addObserver:self selector:sel__accountsChanged_ name:*MEMORY[0x277CB8B78] object:0];
  }

  v4 = *MEMORY[0x277D3FC48];
  v5 = *(&self->super.super.super.super.super.super.isa + v4);
  if (!v5)
  {
    v6 = [(DASettingsAccountsUIController *)self accountSpecifiers];
    v7 = *(&self->super.super.super.super.super.super.isa + v4);
    *(&self->super.super.super.super.super.super.isa + v4) = v6;

    v5 = *(&self->super.super.super.super.super.super.isa + v4);
  }

  return v5;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v16.receiver = self;
  v16.super_class = DASettingsAccountsUIController;
  v6 = a4;
  v7 = [(DASettingsAccountsUIController *)&v16 tableView:a3 cellForRowAtIndexPath:v6];
  v8 = [(DASettingsAccountsUIController *)self indexForIndexPath:v6, v16.receiver, v16.super_class];

  v9 = [(DASettingsAccountsUIController *)self specifierAtIndex:v8];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = [v9 identifier];
    v11 = [v10 isEqualToString:@"DESCRIPTION"];

    if ((v11 & 1) == 0)
    {
      v12 = [v7 textField];
      if (v12)
      {
        v13 = [MEMORY[0x277CCAB98] defaultCenter];
        [v13 removeObserver:self name:0 object:v12];

        v14 = [MEMORY[0x277CCAB98] defaultCenter];
        [v14 addObserver:self selector:sel_propertyValueChanged_ name:*MEMORY[0x277D770B0] object:v12];
      }
    }
  }

  return v7;
}

- (void)showAlertWithButtons:(id)a3 title:(id)a4 message:(id)a5 completion:(id)a6
{
  v23 = self;
  v33 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v24 = a6;
  v10 = [MEMORY[0x277D75110] alertControllerWithTitle:a4 message:a5 preferredStyle:1];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v11 = v9;
  v12 = [v11 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = 0;
    v15 = *v29;
    do
    {
      v16 = 0;
      do
      {
        if (*v29 != v15)
        {
          objc_enumerationMutation(v11);
        }

        v17 = *(*(&v28 + 1) + 8 * v16);
        v19 = [v11 count] > 1 && v14 == 0;
        v20 = MEMORY[0x277D750F8];
        v25[0] = MEMORY[0x277D85DD0];
        v25[1] = 3221225472;
        v25[2] = __80__DASettingsAccountsUIController_showAlertWithButtons_title_message_completion___block_invoke;
        v25[3] = &unk_278F217B8;
        v26 = v24;
        v27 = v14;
        v21 = [v20 actionWithTitle:v17 style:v19 handler:v25];
        ++v14;
        [v10 addAction:v21];

        ++v16;
      }

      while (v13 != v16);
      v13 = [v11 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v13);
  }

  [(DASettingsAccountsUIController *)v23 presentViewController:v10 animated:1 completion:0];
  v22 = *MEMORY[0x277D85DE8];
}

uint64_t __80__DASettingsAccountsUIController_showAlertWithButtons_title_message_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 40));
  }

  return result;
}

- (BOOL)validateAccount
{
  v2 = DALoggingwithCategory();
  v3 = *(MEMORY[0x277D03988] + 3);
  if (os_log_type_enabled(v2, v3))
  {
    *v5 = 0;
    _os_log_impl(&dword_248599000, v2, v3, "Individual Settings Bundles should handle account validation", v5, 2u);
  }

  return 0;
}

- (void)showIdenticalAccountFailureView
{
  v11[1] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"OK" value:&stru_285ACAC78 table:@"Localizable"];
  v11[0] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"ACCOUNT_UNIQUE_CONSTRAINT_FAILED_TITLE" value:&stru_285ACAC78 table:@"DataAccess"];
  v8 = [(DASettingsAccountsUIController *)self account];
  v9 = [v8 localizedIdenticalAccountFailureMessage];
  [(DASettingsAccountsUIController *)self showAlertWithButtons:v5 title:v7 message:v9 completion:0];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)showSSLFailureView
{
  v14[2] = *MEMORY[0x277D85DE8];
  v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v11 = [v12 localizedStringForKey:@"CANCEL" value:&stru_285ACAC78 table:@"Localizable"];
  v14[0] = v11;
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"CONTINUE" value:&stru_285ACAC78 table:@"Localizable"];
  v14[1] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:2];
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"SETUP_WITHOUT_SSL_TITLE" value:&stru_285ACAC78 table:@"Localizable"];
  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"SETUP_WITHOUT_SSL_BODY" value:&stru_285ACAC78 table:@"Localizable"];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __52__DASettingsAccountsUIController_showSSLFailureView__block_invoke;
  v13[3] = &unk_278F217E0;
  v13[4] = self;
  [(DASettingsAccountsUIController *)self showAlertWithButtons:v4 title:v6 message:v8 completion:v13];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)didConfirmTryWithoutSSL:(BOOL)a3
{
  if (a3)
  {
    v4 = [(DASettingsAccountsUIController *)self specifierForID:@"USE_SSL"];
    v9 = [v4 properties];

    v5 = [v9 objectForKeyedSubscript:*MEMORY[0x277D40148]];
    v6 = [v5 control];
    [v6 setOn:0 animated:1];

    v7 = [(DASettingsAccountsUIController *)self account];
    [v7 setUseSSL:0];

    [(DASettingsAccountsUIController *)self _beginAccountValidation];
  }

  else
  {
    v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v8 = [v9 localizedStringForKey:@"ACCOUNT_VERIFICATION_FAILED" value:&stru_285ACAC78 table:@"Localizable"];
    [(DASettingsAccountsUIController *)self hideProgressWithPrompt:v8];
  }
}

- (void)didConfirmSaveUnvalidatedAccount:(BOOL)a3
{
  if (a3)
  {
    [(DASettingsAccountsUIController *)self setConfirmedUnvalidatedAccount:1];
    v4 = [(DASettingsAccountsUIController *)self account];
    [(DASettingsAccountsUIController *)self account:v4 isValid:1 validationError:0];
  }
}

- (void)_confirmSaveUnvalidatedAccount
{
  v12[2] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"SAVE" value:&stru_285ACAC78 table:@"Localizable"];
  v12[0] = v4;
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"EDIT" value:&stru_285ACAC78 table:@"Localizable"];
  v12[1] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];
  v8 = [(DASettingsAccountsUIController *)self localizedConfirmSaveUnvalidatedAccountTitleString];
  v9 = [(DASettingsAccountsUIController *)self localizedConfirmSaveUnvalidatedAccountMessageString];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __64__DASettingsAccountsUIController__confirmSaveUnvalidatedAccount__block_invoke;
  v11[3] = &unk_278F217E0;
  v11[4] = self;
  [(ACUIViewController *)self showConfirmationWithButtons:v7 title:v8 message:v9 destructive:0 completion:v11];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_beginAccountValidation
{
  if ([(DASettingsAccountsUIController *)self validateAccount])
  {

    [(ACUIViewController *)self setTaskCompletionAssertionEnabled:1];
  }
}

- (void)finishedAccountSetup
{
  [(DASettingsAccountsUIController *)self setTransitioningToFinishedAccountSetup:0];
  [MEMORY[0x277D03760] reportActiveExchangeOAuthAccountsCount];
  if ([(DASettingsAccountsUIController *)self isSettingUpNewAccount]&& ![(DASettingsAccountsUIController *)self dismissesAfterInitialSetup])
  {
    if ([(DASettingsAccountsUIController *)self isSettingUpNewAccount]&& ![(DASettingsAccountsUIController *)self transitionsAfterInitialSetup])
    {

      [(DASettingsAccountsUIController *)self updateDoneButton];
    }

    else if ([(DASettingsAccountsUIController *)self transitionsAfterInitialSetup])
    {
      v3 = [(DASettingsAccountsUIController *)self parentController];
      v4 = objc_opt_respondsToSelector();

      if (v4)
      {
        v7 = [(DASettingsAccountsUIController *)self parentController];
        v5 = [(DASettingsAccountsUIController *)self account];
        v6 = [v5 backingAccountInfo];
        [v7 controller:self didFinishSettingUpAccount:v6];
      }
    }
  }

  else
  {

    [(DASettingsAccountsUIController *)self doneButtonTapped:self];
  }
}

- (void)doneButtonTapped:(id)a3
{
  v4 = [(DASettingsAccountsUIController *)self table];
  v5 = [v4 firstResponder];
  [v5 resignFirstResponder];

  if ([(DASettingsAccountsUIController *)self attemptedValidation])
  {
    if ([(DASettingsAccountsUIController *)self validatedSuccessfully])
    {
      if (self->_needsSave)
      {

        [(DASettingsAccountsUIController *)self _saveAccountDismissWhenDone:1];
      }

      else
      {

        [(ACUIViewController *)self dismissAnimated:1];
      }
    }

    else
    {

      [(DASettingsAccountsUIController *)self _confirmSaveUnvalidatedAccount];
    }
  }

  else
  {
    [(DASettingsAccountsUIController *)self setAttemptedValidation:1];

    [(DASettingsAccountsUIController *)self _beginAccountValidation];
  }
}

- (void)cancelButtonTapped:(id)a3
{
  if ([(DASettingsAccountsUIController *)self isSettingUpNewAccount])
  {
    v4 = [(DASettingsAccountsUIController *)self account];
    [v4 cleanupAccountFiles];
  }

  v5 = [*(&self->super.super.super.super.super.super.isa + *MEMORY[0x277D3FC60]) firstResponder];
  [v5 resignFirstResponder];

  v6 = [(DASettingsAccountsUIController *)self account];
  [v6 reload];

  [(ACUIViewController *)self dismissAnimated:1];
}

- (void)setNeedsSaveAndValidation:(BOOL)a3
{
  if (a3)
  {
    self->_attemptedValidation = 0;
  }

  self->_needsSave = 1;
  [(DASettingsAccountsUIController *)self updateDoneButton];
}

- (void)updateDoneButton
{
  if (self->_attemptedValidation || [(DASettingsAccountsUIController *)self haveEnoughValues])
  {
    v3 = [(DASettingsAccountsUIController *)self transitioningToFinishedAccountSetup]^ 1;
  }

  else
  {
    v3 = 0;
  }

  if ([(DASettingsAccountsUIController *)self isSettingUpNewAccount])
  {
    attemptedValidation = self->_attemptedValidation;
    v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v6 = v5;
    if (attemptedValidation)
    {
      v7 = @"SAVE";
    }

    else
    {
      v7 = @"NEXT";
    }
  }

  else
  {
    v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v6 = v5;
    v7 = @"DONE";
  }

  v8 = [v5 localizedStringForKey:v7 value:&stru_285ACAC78 table:@"Localizable"];
  v9 = [(ACUIViewController *)self doneButton];
  [v9 setTitle:v8];

  v10 = [(ACUIViewController *)self doneButton];
  [v10 setEnabled:v3];
}

- (BOOL)haveEnoughValues
{
  v2 = DALoggingwithCategory();
  v3 = *(MEMORY[0x277D03988] + 3);
  if (os_log_type_enabled(v2, v3))
  {
    *v5 = 0;
    _os_log_impl(&dword_248599000, v2, v3, "Individual Settings Bundles should know if they have enough values", v5, 2u);
  }

  return 0;
}

- (void)propertyValueChanged:(id)a3
{
  [(DASettingsAccountsUIController *)self setAttemptedValidation:0];

  [(DASettingsAccountsUIController *)self updateDoneButton];
}

- (void)setHostString:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [(DASettingsAccountsUIController *)self setDidSetFullHostURL:0];
  v5 = [v4 rangeOfString:@"/"];
  v6 = [v4 rangeOfString:@":"];
  if (![v4 length] || v5 == 0x7FFFFFFFFFFFFFFFLL && v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_11;
  }

  v7 = [MEMORY[0x277CBEBC0] URLWithString:v4];
  v8 = [v7 host];
  if (v8)
  {
    goto LABEL_7;
  }

  if (([v4 hasPrefix:@"http"] & 1) == 0)
  {
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"https://%@", v4];
    v9 = [MEMORY[0x277CBEBC0] URLWithString:v8];

    v7 = v9;
LABEL_7:
  }

  v10 = [v7 host];

  if (v10)
  {
    v11 = [(DASettingsAccountsUIController *)self account];
    [v11 setPrincipalURL:v7];

    [(DASettingsAccountsUIController *)self setDidSetFullHostURL:1];
    v12 = [(DASettingsAccountsUIController *)self account];
    [v12 setShouldDoInitialAutodiscovery:0];
  }

LABEL_11:
  if (![(DASettingsAccountsUIController *)self didSetFullHostURL])
  {
    v13 = DALoggingwithCategory();
    v14 = *(MEMORY[0x277D03988] + 6);
    if (os_log_type_enabled(v13, v14))
    {
      *buf = 138412290;
      v19 = v4;
      _os_log_impl(&dword_248599000, v13, v14, "Couldn't parse host string %@ into a URL. Using it directly", buf, 0xCu);
    }

    v15 = [(DASettingsAccountsUIController *)self account];
    [v15 setHost:v4];

    v16 = [(DASettingsAccountsUIController *)self account];
    [v16 setShouldDoInitialAutodiscovery:0];
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)setAccountProperty:(id)a3 withSpecifier:(id)a4
{
  v25 = a3;
  v6 = a4;
  v7 = [v6 identifier];
  v8 = [(DASettingsAccountsUIController *)self accountPropertyWithSpecifier:v6];

  if ([v25 isEqualToString:v8])
  {
    [v7 isEqualToString:@"EMAIL"];
  }

  else
  {
    if ([v25 length])
    {
      v9 = 0;
    }

    else
    {
      v9 = [v8 length] == 0;
    }

    if ([v7 isEqualToString:@"EMAIL"] && !v9)
    {
      v11 = [(DASettingsAccountsUIController *)self account];
      [v11 setEmailAddress:v25];

      v12 = [(DASettingsAccountsUIController *)self account];
      v13 = [v12 accountDescription];
      v14 = [v13 length];

      if (v14)
      {
        goto LABEL_19;
      }

      v10 = [(DASettingsAccountsUIController *)self _defaultAccountDescription];
      v15 = [(ACUIViewController *)self accountStore];
      v16 = [v15 hasAccountWithDescription:v10];

      if (v16)
      {
        v17 = v25;

        v10 = v17;
      }

      v18 = [(DASettingsAccountsUIController *)self account];
      [v18 setAccountDescription:v10];

      [(DASettingsAccountsUIController *)self reloadSpecifierID:@"DESCRIPTION"];
      goto LABEL_18;
    }
  }

  if ([v7 isEqualToString:@"HOST"])
  {
    [(DASettingsAccountsUIController *)self setHostString:v25];
    goto LABEL_19;
  }

  if ([v7 isEqualToString:@"USERNAME"])
  {
    v10 = [(DASettingsAccountsUIController *)self account];
    [v10 setUsername:v25];
LABEL_18:

    goto LABEL_19;
  }

  if ([v7 isEqualToString:@"PASSWORD"])
  {
    v10 = [(DASettingsAccountsUIController *)self account];
    [v10 setPassword:v25];
    goto LABEL_18;
  }

  if ([v7 isEqualToString:@"DESCRIPTION"])
  {
    v19 = [(DASettingsAccountsUIController *)self account];
    v20 = [v19 accountDescription];
    v21 = [v25 isEqualToString:v20];

    if ((v21 & 1) == 0)
    {
      v22 = [(DASettingsAccountsUIController *)self account];
      [v22 setAccountDescription:v25];

      v10 = [(DASettingsAccountsUIController *)self rootController];
      v23 = [v10 topViewController];
      if (v23 != self)
      {
LABEL_27:

        goto LABEL_18;
      }

      v24 = [(DASettingsAccountsUIController *)self isSettingUpNewAccount];

      if (!v24)
      {
        v10 = [(DASettingsAccountsUIController *)self navigationItem];
        v23 = [(DASettingsAccountsUIController *)self localizedAccountTitleString];
        [v10 setTitle:v23];
        goto LABEL_27;
      }
    }
  }

LABEL_19:
  [(DASettingsAccountsUIController *)self setNeedsSaveAndValidation:0];
}

- (id)accountPropertyWithSpecifier:(id)a3
{
  v4 = [a3 identifier];
  if ([v4 isEqualToString:@"EMAIL"])
  {
    v5 = [(DASettingsAccountsUIController *)self account];
    v6 = [v5 emailAddress];
    goto LABEL_3;
  }

  if ([v4 isEqualToString:@"HOST"])
  {
    v11 = [(DASettingsAccountsUIController *)self didSetFullHostURL];
    v12 = [(DASettingsAccountsUIController *)self account];
    v5 = v12;
    if (v11)
    {
      v13 = [v12 principalURL];
      v7 = [v13 absoluteString];

      goto LABEL_4;
    }

    v6 = [v12 host];
LABEL_3:
    v7 = v6;
LABEL_4:

    goto LABEL_5;
  }

  if ([v4 isEqualToString:@"USERNAME"])
  {
    v5 = [(DASettingsAccountsUIController *)self account];
    v6 = [v5 username];
    goto LABEL_3;
  }

  if ([v4 isEqualToString:@"PASSWORD"])
  {
    v5 = [(DASettingsAccountsUIController *)self account];
    v6 = [v5 passwordWithExpected:0];
    goto LABEL_3;
  }

  if ([v4 isEqualToString:@"DESCRIPTION"])
  {
    v5 = [(DASettingsAccountsUIController *)self account];
    v6 = [v5 accountDescription];
    goto LABEL_3;
  }

  v7 = 0;
LABEL_5:
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = &stru_285ACAC78;
  }

  v9 = v8;

  return v8;
}

- (void)setAccountBooleanProperty:(id)a3 withSpecifier:(id)a4
{
  v6 = a4;
  v7 = [a3 BOOLValue];
  v10 = [v6 identifier];

  v8 = [v10 isEqualToString:@"USE_SSL"];
  if (v8)
  {
    v9 = [(DASettingsAccountsUIController *)self account];
    [v9 setUseSSL:v7];
  }

  [(DASettingsAccountsUIController *)self setNeedsSaveAndValidation:v8];
}

- (id)accountBooleanPropertyWithSpecifier:(id)a3
{
  v4 = [a3 identifier];
  if ([v4 isEqualToString:@"USE_SSL"])
  {
    v5 = [(DASettingsAccountsUIController *)self account];
    v6 = [v5 useSSL];
  }

  else
  {
    v6 = 0;
  }

  v7 = [MEMORY[0x277CCABB0] numberWithBool:v6];

  return v7;
}

- (void)_dismissAndUpdateParent
{
  [(ACUIViewController *)self removeParentSpecifier];

  [(ACUIViewController *)self dismissAnimated:1];
}

- (void)_deleteAccount
{
  [(ACUIViewController *)self setTaskCompletionAssertionEnabled:1];
  v3 = DALoggingwithCategory();
  v4 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v3, v4))
  {
    *v8 = 0;
    _os_log_impl(&dword_248599000, v3, v4, "Requesting delete from ACAccountStore", v8, 2u);
  }

  v5 = [(ACUIViewController *)self accountOperationsHelper];
  v6 = [(DASettingsAccountsUIController *)self account];
  v7 = [v6 backingAccountInfo];
  [v5 removeAccount:v7];
}

uint64_t __86__DASettingsAccountsUIController_operationsHelper_didRemoveAccount_withSuccess_error___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  if ((*(a1 + 48) & 1) == 0)
  {
    v2 = DALoggingwithCategory();
    v3 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v2, v3))
    {
      v4 = *(a1 + 32);
      v7 = 138412290;
      v8 = v4;
      _os_log_impl(&dword_248599000, v2, v3, "Couldn't remove the account: %@", &v7, 0xCu);
    }
  }

  [*(a1 + 40) setTaskCompletionAssertionEnabled:0];
  result = [*(a1 + 40) performSelector:sel__dismissAndUpdateParent withObject:0 afterDelay:1.0];
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_finishSaveAccountDismissWhenDone:(BOOL)a3
{
  v3 = a3;
  [(ACUIViewController *)self reloadParentSpecifier];
  [(ACUIViewController *)self setTaskCompletionAssertionEnabled:0];
  if (v3)
  {
    v5 = [(DASettingsAccountsUIController *)self parentController];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      v9 = [(DASettingsAccountsUIController *)self parentController];
      v7 = [(DASettingsAccountsUIController *)self account];
      v8 = [v7 backingAccountInfo];
      [v9 controller:self didFinishSettingUpAccount:v8];
    }

    else
    {

      [(ACUIViewController *)self dismissAnimated:1];
    }
  }
}

- (void)_saveAccountDismissWhenDone:(BOOL)a3
{
  v3 = a3;
  [(ACUIViewController *)self setTaskCompletionAssertionEnabled:1];
  if (v3)
  {
    v5 = DALoggingwithCategory();
    v6 = *(MEMORY[0x277D03988] + 6);
    if (os_log_type_enabled(v5, v6))
    {
      *v11 = 0;
      _os_log_impl(&dword_248599000, v5, v6, "Requesting account save from ACAccountStore", v11, 2u);
    }

    v7 = [(DASettingsAccountsUIController *)self account];
    [v7 saveModifiedPropertiesOnBackingAccount];

    v8 = [(ACUIViewController *)self accountOperationsHelper];
    v9 = [(DASettingsAccountsUIController *)self account];
    v10 = [v9 backingAccountInfo];
    [v8 saveAccount:v10 requireVerification:0];
  }
}

uint64_t __84__DASettingsAccountsUIController_operationsHelper_didSaveAccount_withSuccess_error___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 48);
  v3 = DALoggingwithCategory();
  v4 = v3;
  if (v2)
  {
    v5 = *(MEMORY[0x277D03988] + 6);
    if (os_log_type_enabled(v3, v5))
    {
      LOWORD(v14) = 0;
      v6 = "ACAccountStore saved my account, dismissing";
      v7 = v4;
      v8 = v5;
      v9 = 2;
LABEL_6:
      _os_log_impl(&dword_248599000, v7, v8, v6, &v14, v9);
    }
  }

  else
  {
    v10 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v3, v10))
    {
      v11 = *(a1 + 32);
      v14 = 138412290;
      v15 = v11;
      v6 = "Couldn't save the account: %@";
      v7 = v4;
      v8 = v10;
      v9 = 12;
      goto LABEL_6;
    }
  }

  result = [*(a1 + 40) _finishSaveAccountDismissWhenDone:1];
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)isRunningFromMobileMailApp
{
  v2 = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [v2 bundleIdentifier];
  v4 = [v3 isEqualToString:@"com.apple.mobilemail"];

  return v4;
}

- (void)hideProgressWithPrompt:(id)a3
{
  v13 = a3;
  v4 = [(DASettingsAccountsUIController *)self localizedAccountSetupTitleString];
  [(ACUIViewController *)self stopValidationWithPrompt:v4 showButtons:1];

  [(DASettingsAccountsUIController *)self updateDoneButton];
  if (![(DASettingsAccountsUIController *)self isRunningFromMobileMailApp])
  {
    [*MEMORY[0x277D76620] setStatusBarShowsProgress:0];
  }

  v5 = v13;
  if (v13)
  {
    v6 = MEMORY[0x277D75110];
    v7 = [(DASettingsAccountsUIController *)self localizedValidationFailureTitleString];
    v8 = [v6 alertControllerWithTitle:v7 message:v13 preferredStyle:1];

    v9 = MEMORY[0x277D750F8];
    v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v11 = [v10 localizedStringForKey:@"OK" value:&stru_285ACAC78 table:@"Localizable"];
    v12 = [v9 actionWithTitle:v11 style:0 handler:&__block_literal_global];

    [v8 addAction:v12];
    [(DASettingsAccountsUIController *)self presentViewController:v8 animated:1 completion:0];

    v5 = v13;
  }
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = DASettingsAccountsUIController;
  [(ACUIViewController *)&v4 dealloc];
}

- (int)indexOfCurrentlyEditingCell
{
  v3 = [(DASettingsAccountsUIController *)self currentlyEditingCell];
  if (v3 && ([*(&self->super.super.super.super.super.super.isa + *MEMORY[0x277D3FC60]) indexPathForCell:v3], (v4 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v5 = v4;
    v6 = [(DASettingsAccountsUIController *)self indexForIndexPath:v4];
  }

  else
  {
    v6 = -1;
  }

  return v6;
}

- (id)currentlyEditingCell
{
  v2 = [(DASettingsAccountsUIController *)self view];
  v3 = [v2 window];
  v4 = [v3 firstResponder];

  v5 = v4;
  v6 = v5;
  if (v5)
  {
    v7 = v5;
    do
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        break;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        goto LABEL_8;
      }

      v8 = [v7 superview];

      v7 = v8;
    }

    while (v8);
  }

  v7 = 0;
LABEL_8:

  return v7;
}

- (id)lastGroupSpecifierInSpecifiers:(id)a3
{
  v3 = a3;
  v4 = [v3 count];
  if (v4 < 1)
  {
LABEL_5:
    v8 = 0;
  }

  else
  {
    v5 = (v4 & 0x7FFFFFFF) + 1;
    v6 = MEMORY[0x277D3FC90];
    while (1)
    {
      v7 = [v3 objectAtIndexedSubscript:v5 - 2];
      v8 = v7;
      if (!*&v7[*v6])
      {
        break;
      }

      if (--v5 <= 1)
      {
        goto LABEL_5;
      }
    }
  }

  return v8;
}

- (id)localizedAccountTitleString
{
  v3 = [(DASettingsAccountsUIController *)self account];
  v4 = [v3 accountDescription];

  if ([v4 length])
  {
    v5 = v4;
  }

  else
  {
    v5 = [(DASettingsAccountsUIController *)self localizedAccountSetupTitleString];
  }

  v6 = v5;

  return v6;
}

- (void)deleteAccountButtonTapped
{
  v3 = [(DASettingsAccountsUIController *)self account];
  v4 = [v3 backingAccountInfo];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __59__DASettingsAccountsUIController_deleteAccountButtonTapped__block_invoke;
  v5[3] = &unk_278F217E0;
  v5[4] = self;
  [(ACUIViewController *)self showConfirmationForDeletingAccount:v4 completion:v5];
}

uint64_t __59__DASettingsAccountsUIController_deleteAccountButtonTapped__block_invoke(uint64_t result, uint64_t a2)
{
  if (!a2)
  {
    return [*(result + 32) _deleteAccount];
  }

  return result;
}

- (BOOL)accountIsManaged
{
  v3 = [(DASettingsAccountsUIController *)self account];
  v4 = [v3 backingAccountInfo];
  v5 = [v4 managingOwnerIdentifier];

  if (v5)
  {
    return 1;
  }

  v7 = [(DASettingsAccountsUIController *)self account];
  v8 = [v7 backingAccountInfo];
  v9 = [v8 mcBackingProfile];
  v6 = v9 != 0;

  return v6;
}

@end