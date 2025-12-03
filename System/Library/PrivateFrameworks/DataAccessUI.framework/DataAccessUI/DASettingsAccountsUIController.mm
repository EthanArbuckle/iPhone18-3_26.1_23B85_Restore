@interface DASettingsAccountsUIController
- (BOOL)accountIsManaged;
- (BOOL)haveEnoughValues;
- (BOOL)isRunningFromMobileMailApp;
- (BOOL)validateAccount;
- (DAAccount)account;
- (id)accountBooleanPropertyWithSpecifier:(id)specifier;
- (id)accountFromSpecifier;
- (id)accountPropertyWithSpecifier:(id)specifier;
- (id)currentlyEditingCell;
- (id)daAccountWithBackingAccountInfo:(id)info;
- (id)lastGroupSpecifierInSpecifiers:(id)specifiers;
- (id)localizedAccountTitleString;
- (id)newDefaultAccount;
- (id)specifiers;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int)indexOfCurrentlyEditingCell;
- (void)_beginAccountValidation;
- (void)_confirmSaveUnvalidatedAccount;
- (void)_deleteAccount;
- (void)_dismissAndUpdateParent;
- (void)_finishSaveAccountDismissWhenDone:(BOOL)done;
- (void)_saveAccountDismissWhenDone:(BOOL)done;
- (void)cancelButtonTapped:(id)tapped;
- (void)dealloc;
- (void)deleteAccountButtonTapped;
- (void)didConfirmSaveUnvalidatedAccount:(BOOL)account;
- (void)didConfirmTryWithoutSSL:(BOOL)l;
- (void)doneButtonTapped:(id)tapped;
- (void)finishedAccountSetup;
- (void)hideProgressWithPrompt:(id)prompt;
- (void)propertyValueChanged:(id)changed;
- (void)reloadAccount;
- (void)setAccountBooleanProperty:(id)property withSpecifier:(id)specifier;
- (void)setAccountProperty:(id)property withSpecifier:(id)specifier;
- (void)setHostString:(id)string;
- (void)setNeedsSaveAndValidation:(BOOL)validation;
- (void)showAlertWithButtons:(id)buttons title:(id)title message:(id)message completion:(id)completion;
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
    accountFromSpecifier = [(DASettingsAccountsUIController *)self accountFromSpecifier];
    account = self->_account;
    self->_account = accountFromSpecifier;

    if (self->_account)
    {
      [(DASettingsAccountsUIController *)self setAttemptedValidation:1];
      [(DASettingsAccountsUIController *)self setValidatedSuccessfully:1];
    }

    else
    {
      [(DASettingsAccountsUIController *)self setIsSettingUpNewAccount:1];
      [(DASettingsAccountsUIController *)self setAccountNeedsAdd:1];
      newDefaultAccount = [(DASettingsAccountsUIController *)self newDefaultAccount];
      v6 = self->_account;
      self->_account = newDefaultAccount;

      v7 = DALoggingwithCategory();
      v8 = *(MEMORY[0x277D03988] + 4);
      if (os_log_type_enabled(v7, v8))
      {
        backingAccountInfo = [(DAAccount *)self->_account backingAccountInfo];
        identifier = [backingAccountInfo identifier];
        backingAccountInfo2 = [(DAAccount *)self->_account backingAccountInfo];
        username = [backingAccountInfo2 username];
        v17 = 138412546;
        v18 = identifier;
        v19 = 2112;
        v20 = username;
        _os_log_impl(&dword_248599000, v7, v8, "Setting _backingAccountInfo.authenticated = YES for Account identifier %@ and username %@", &v17, 0x16u);
      }

      backingAccountInfo3 = [(DAAccount *)self->_account backingAccountInfo];
      [backingAccountInfo3 setAuthenticated:1];
    }
  }

  v14 = self->_account;
  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (void)reloadAccount
{
  account = [(DASettingsAccountsUIController *)self account];
  [account reload];

  account2 = [(DASettingsAccountsUIController *)self account];
  backingAccountInfo = [account2 backingAccountInfo];
  [backingAccountInfo setAuthenticated:1];
}

- (id)accountFromSpecifier
{
  specifier = [(DASettingsAccountsUIController *)self specifier];
  userInfo = [specifier userInfo];
  v4 = [userInfo objectForKeyedSubscript:*MEMORY[0x277CE8550]];

  if (v4)
  {
    mEMORY[0x277D03738] = [MEMORY[0x277D03738] sharedInstance];
    v6 = [mEMORY[0x277D03738] daemonAppropriateAccountClassForACAccount:v4];

    v7 = [[v6 alloc] initWithBackingAccountInfo:v4];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)daAccountWithBackingAccountInfo:(id)info
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
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:self selector:sel__accountsChanged_ name:*MEMORY[0x277CB8B78] object:0];
  }

  v4 = *MEMORY[0x277D3FC48];
  v5 = *(&self->super.super.super.super.super.super.isa + v4);
  if (!v5)
  {
    accountSpecifiers = [(DASettingsAccountsUIController *)self accountSpecifiers];
    v7 = *(&self->super.super.super.super.super.super.isa + v4);
    *(&self->super.super.super.super.super.super.isa + v4) = accountSpecifiers;

    v5 = *(&self->super.super.super.super.super.super.isa + v4);
  }

  return v5;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v16.receiver = self;
  v16.super_class = DASettingsAccountsUIController;
  pathCopy = path;
  v7 = [(DASettingsAccountsUIController *)&v16 tableView:view cellForRowAtIndexPath:pathCopy];
  v8 = [(DASettingsAccountsUIController *)self indexForIndexPath:pathCopy, v16.receiver, v16.super_class];

  v9 = [(DASettingsAccountsUIController *)self specifierAtIndex:v8];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    identifier = [v9 identifier];
    v11 = [identifier isEqualToString:@"DESCRIPTION"];

    if ((v11 & 1) == 0)
    {
      textField = [v7 textField];
      if (textField)
      {
        defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
        [defaultCenter removeObserver:self name:0 object:textField];

        defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
        [defaultCenter2 addObserver:self selector:sel_propertyValueChanged_ name:*MEMORY[0x277D770B0] object:textField];
      }
    }
  }

  return v7;
}

- (void)showAlertWithButtons:(id)buttons title:(id)title message:(id)message completion:(id)completion
{
  selfCopy = self;
  v33 = *MEMORY[0x277D85DE8];
  buttonsCopy = buttons;
  completionCopy = completion;
  v10 = [MEMORY[0x277D75110] alertControllerWithTitle:title message:message preferredStyle:1];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v11 = buttonsCopy;
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
        v26 = completionCopy;
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

  [(DASettingsAccountsUIController *)selfCopy presentViewController:v10 animated:1 completion:0];
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
  account = [(DASettingsAccountsUIController *)self account];
  localizedIdenticalAccountFailureMessage = [account localizedIdenticalAccountFailureMessage];
  [(DASettingsAccountsUIController *)self showAlertWithButtons:v5 title:v7 message:localizedIdenticalAccountFailureMessage completion:0];

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

- (void)didConfirmTryWithoutSSL:(BOOL)l
{
  if (l)
  {
    v4 = [(DASettingsAccountsUIController *)self specifierForID:@"USE_SSL"];
    properties = [v4 properties];

    v5 = [properties objectForKeyedSubscript:*MEMORY[0x277D40148]];
    control = [v5 control];
    [control setOn:0 animated:1];

    account = [(DASettingsAccountsUIController *)self account];
    [account setUseSSL:0];

    [(DASettingsAccountsUIController *)self _beginAccountValidation];
  }

  else
  {
    properties = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v8 = [properties localizedStringForKey:@"ACCOUNT_VERIFICATION_FAILED" value:&stru_285ACAC78 table:@"Localizable"];
    [(DASettingsAccountsUIController *)self hideProgressWithPrompt:v8];
  }
}

- (void)didConfirmSaveUnvalidatedAccount:(BOOL)account
{
  if (account)
  {
    [(DASettingsAccountsUIController *)self setConfirmedUnvalidatedAccount:1];
    account = [(DASettingsAccountsUIController *)self account];
    [(DASettingsAccountsUIController *)self account:account isValid:1 validationError:0];
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
  localizedConfirmSaveUnvalidatedAccountTitleString = [(DASettingsAccountsUIController *)self localizedConfirmSaveUnvalidatedAccountTitleString];
  localizedConfirmSaveUnvalidatedAccountMessageString = [(DASettingsAccountsUIController *)self localizedConfirmSaveUnvalidatedAccountMessageString];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __64__DASettingsAccountsUIController__confirmSaveUnvalidatedAccount__block_invoke;
  v11[3] = &unk_278F217E0;
  v11[4] = self;
  [(ACUIViewController *)self showConfirmationWithButtons:v7 title:localizedConfirmSaveUnvalidatedAccountTitleString message:localizedConfirmSaveUnvalidatedAccountMessageString destructive:0 completion:v11];

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
      parentController = [(DASettingsAccountsUIController *)self parentController];
      v4 = objc_opt_respondsToSelector();

      if (v4)
      {
        parentController2 = [(DASettingsAccountsUIController *)self parentController];
        account = [(DASettingsAccountsUIController *)self account];
        backingAccountInfo = [account backingAccountInfo];
        [parentController2 controller:self didFinishSettingUpAccount:backingAccountInfo];
      }
    }
  }

  else
  {

    [(DASettingsAccountsUIController *)self doneButtonTapped:self];
  }
}

- (void)doneButtonTapped:(id)tapped
{
  table = [(DASettingsAccountsUIController *)self table];
  firstResponder = [table firstResponder];
  [firstResponder resignFirstResponder];

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

- (void)cancelButtonTapped:(id)tapped
{
  if ([(DASettingsAccountsUIController *)self isSettingUpNewAccount])
  {
    account = [(DASettingsAccountsUIController *)self account];
    [account cleanupAccountFiles];
  }

  firstResponder = [*(&self->super.super.super.super.super.super.isa + *MEMORY[0x277D3FC60]) firstResponder];
  [firstResponder resignFirstResponder];

  account2 = [(DASettingsAccountsUIController *)self account];
  [account2 reload];

  [(ACUIViewController *)self dismissAnimated:1];
}

- (void)setNeedsSaveAndValidation:(BOOL)validation
{
  if (validation)
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
  doneButton = [(ACUIViewController *)self doneButton];
  [doneButton setTitle:v8];

  doneButton2 = [(ACUIViewController *)self doneButton];
  [doneButton2 setEnabled:v3];
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

- (void)propertyValueChanged:(id)changed
{
  [(DASettingsAccountsUIController *)self setAttemptedValidation:0];

  [(DASettingsAccountsUIController *)self updateDoneButton];
}

- (void)setHostString:(id)string
{
  v20 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  [(DASettingsAccountsUIController *)self setDidSetFullHostURL:0];
  v5 = [stringCopy rangeOfString:@"/"];
  v6 = [stringCopy rangeOfString:@":"];
  if (![stringCopy length] || v5 == 0x7FFFFFFFFFFFFFFFLL && v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_11;
  }

  v7 = [MEMORY[0x277CBEBC0] URLWithString:stringCopy];
  host = [v7 host];
  if (host)
  {
    goto LABEL_7;
  }

  if (([stringCopy hasPrefix:@"http"] & 1) == 0)
  {
    host = [MEMORY[0x277CCACA8] stringWithFormat:@"https://%@", stringCopy];
    v9 = [MEMORY[0x277CBEBC0] URLWithString:host];

    v7 = v9;
LABEL_7:
  }

  host2 = [v7 host];

  if (host2)
  {
    account = [(DASettingsAccountsUIController *)self account];
    [account setPrincipalURL:v7];

    [(DASettingsAccountsUIController *)self setDidSetFullHostURL:1];
    account2 = [(DASettingsAccountsUIController *)self account];
    [account2 setShouldDoInitialAutodiscovery:0];
  }

LABEL_11:
  if (![(DASettingsAccountsUIController *)self didSetFullHostURL])
  {
    v13 = DALoggingwithCategory();
    v14 = *(MEMORY[0x277D03988] + 6);
    if (os_log_type_enabled(v13, v14))
    {
      *buf = 138412290;
      v19 = stringCopy;
      _os_log_impl(&dword_248599000, v13, v14, "Couldn't parse host string %@ into a URL. Using it directly", buf, 0xCu);
    }

    account3 = [(DASettingsAccountsUIController *)self account];
    [account3 setHost:stringCopy];

    account4 = [(DASettingsAccountsUIController *)self account];
    [account4 setShouldDoInitialAutodiscovery:0];
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)setAccountProperty:(id)property withSpecifier:(id)specifier
{
  propertyCopy = property;
  specifierCopy = specifier;
  identifier = [specifierCopy identifier];
  v8 = [(DASettingsAccountsUIController *)self accountPropertyWithSpecifier:specifierCopy];

  if ([propertyCopy isEqualToString:v8])
  {
    [identifier isEqualToString:@"EMAIL"];
  }

  else
  {
    if ([propertyCopy length])
    {
      v9 = 0;
    }

    else
    {
      v9 = [v8 length] == 0;
    }

    if ([identifier isEqualToString:@"EMAIL"] && !v9)
    {
      account = [(DASettingsAccountsUIController *)self account];
      [account setEmailAddress:propertyCopy];

      account2 = [(DASettingsAccountsUIController *)self account];
      accountDescription = [account2 accountDescription];
      v14 = [accountDescription length];

      if (v14)
      {
        goto LABEL_19;
      }

      _defaultAccountDescription = [(DASettingsAccountsUIController *)self _defaultAccountDescription];
      accountStore = [(ACUIViewController *)self accountStore];
      v16 = [accountStore hasAccountWithDescription:_defaultAccountDescription];

      if (v16)
      {
        v17 = propertyCopy;

        _defaultAccountDescription = v17;
      }

      account3 = [(DASettingsAccountsUIController *)self account];
      [account3 setAccountDescription:_defaultAccountDescription];

      [(DASettingsAccountsUIController *)self reloadSpecifierID:@"DESCRIPTION"];
      goto LABEL_18;
    }
  }

  if ([identifier isEqualToString:@"HOST"])
  {
    [(DASettingsAccountsUIController *)self setHostString:propertyCopy];
    goto LABEL_19;
  }

  if ([identifier isEqualToString:@"USERNAME"])
  {
    _defaultAccountDescription = [(DASettingsAccountsUIController *)self account];
    [_defaultAccountDescription setUsername:propertyCopy];
LABEL_18:

    goto LABEL_19;
  }

  if ([identifier isEqualToString:@"PASSWORD"])
  {
    _defaultAccountDescription = [(DASettingsAccountsUIController *)self account];
    [_defaultAccountDescription setPassword:propertyCopy];
    goto LABEL_18;
  }

  if ([identifier isEqualToString:@"DESCRIPTION"])
  {
    account4 = [(DASettingsAccountsUIController *)self account];
    accountDescription2 = [account4 accountDescription];
    v21 = [propertyCopy isEqualToString:accountDescription2];

    if ((v21 & 1) == 0)
    {
      account5 = [(DASettingsAccountsUIController *)self account];
      [account5 setAccountDescription:propertyCopy];

      _defaultAccountDescription = [(DASettingsAccountsUIController *)self rootController];
      topViewController = [_defaultAccountDescription topViewController];
      if (topViewController != self)
      {
LABEL_27:

        goto LABEL_18;
      }

      isSettingUpNewAccount = [(DASettingsAccountsUIController *)self isSettingUpNewAccount];

      if (!isSettingUpNewAccount)
      {
        _defaultAccountDescription = [(DASettingsAccountsUIController *)self navigationItem];
        topViewController = [(DASettingsAccountsUIController *)self localizedAccountTitleString];
        [_defaultAccountDescription setTitle:topViewController];
        goto LABEL_27;
      }
    }
  }

LABEL_19:
  [(DASettingsAccountsUIController *)self setNeedsSaveAndValidation:0];
}

- (id)accountPropertyWithSpecifier:(id)specifier
{
  identifier = [specifier identifier];
  if ([identifier isEqualToString:@"EMAIL"])
  {
    account = [(DASettingsAccountsUIController *)self account];
    emailAddress = [account emailAddress];
    goto LABEL_3;
  }

  if ([identifier isEqualToString:@"HOST"])
  {
    didSetFullHostURL = [(DASettingsAccountsUIController *)self didSetFullHostURL];
    account2 = [(DASettingsAccountsUIController *)self account];
    account = account2;
    if (didSetFullHostURL)
    {
      principalURL = [account2 principalURL];
      absoluteString = [principalURL absoluteString];

      goto LABEL_4;
    }

    emailAddress = [account2 host];
LABEL_3:
    absoluteString = emailAddress;
LABEL_4:

    goto LABEL_5;
  }

  if ([identifier isEqualToString:@"USERNAME"])
  {
    account = [(DASettingsAccountsUIController *)self account];
    emailAddress = [account username];
    goto LABEL_3;
  }

  if ([identifier isEqualToString:@"PASSWORD"])
  {
    account = [(DASettingsAccountsUIController *)self account];
    emailAddress = [account passwordWithExpected:0];
    goto LABEL_3;
  }

  if ([identifier isEqualToString:@"DESCRIPTION"])
  {
    account = [(DASettingsAccountsUIController *)self account];
    emailAddress = [account accountDescription];
    goto LABEL_3;
  }

  absoluteString = 0;
LABEL_5:
  if (absoluteString)
  {
    v8 = absoluteString;
  }

  else
  {
    v8 = &stru_285ACAC78;
  }

  v9 = v8;

  return v8;
}

- (void)setAccountBooleanProperty:(id)property withSpecifier:(id)specifier
{
  specifierCopy = specifier;
  bOOLValue = [property BOOLValue];
  identifier = [specifierCopy identifier];

  v8 = [identifier isEqualToString:@"USE_SSL"];
  if (v8)
  {
    account = [(DASettingsAccountsUIController *)self account];
    [account setUseSSL:bOOLValue];
  }

  [(DASettingsAccountsUIController *)self setNeedsSaveAndValidation:v8];
}

- (id)accountBooleanPropertyWithSpecifier:(id)specifier
{
  identifier = [specifier identifier];
  if ([identifier isEqualToString:@"USE_SSL"])
  {
    account = [(DASettingsAccountsUIController *)self account];
    useSSL = [account useSSL];
  }

  else
  {
    useSSL = 0;
  }

  v7 = [MEMORY[0x277CCABB0] numberWithBool:useSSL];

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

  accountOperationsHelper = [(ACUIViewController *)self accountOperationsHelper];
  account = [(DASettingsAccountsUIController *)self account];
  backingAccountInfo = [account backingAccountInfo];
  [accountOperationsHelper removeAccount:backingAccountInfo];
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

- (void)_finishSaveAccountDismissWhenDone:(BOOL)done
{
  doneCopy = done;
  [(ACUIViewController *)self reloadParentSpecifier];
  [(ACUIViewController *)self setTaskCompletionAssertionEnabled:0];
  if (doneCopy)
  {
    parentController = [(DASettingsAccountsUIController *)self parentController];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      parentController2 = [(DASettingsAccountsUIController *)self parentController];
      account = [(DASettingsAccountsUIController *)self account];
      backingAccountInfo = [account backingAccountInfo];
      [parentController2 controller:self didFinishSettingUpAccount:backingAccountInfo];
    }

    else
    {

      [(ACUIViewController *)self dismissAnimated:1];
    }
  }
}

- (void)_saveAccountDismissWhenDone:(BOOL)done
{
  doneCopy = done;
  [(ACUIViewController *)self setTaskCompletionAssertionEnabled:1];
  if (doneCopy)
  {
    v5 = DALoggingwithCategory();
    v6 = *(MEMORY[0x277D03988] + 6);
    if (os_log_type_enabled(v5, v6))
    {
      *v11 = 0;
      _os_log_impl(&dword_248599000, v5, v6, "Requesting account save from ACAccountStore", v11, 2u);
    }

    account = [(DASettingsAccountsUIController *)self account];
    [account saveModifiedPropertiesOnBackingAccount];

    accountOperationsHelper = [(ACUIViewController *)self accountOperationsHelper];
    account2 = [(DASettingsAccountsUIController *)self account];
    backingAccountInfo = [account2 backingAccountInfo];
    [accountOperationsHelper saveAccount:backingAccountInfo requireVerification:0];
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
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  v4 = [bundleIdentifier isEqualToString:@"com.apple.mobilemail"];

  return v4;
}

- (void)hideProgressWithPrompt:(id)prompt
{
  promptCopy = prompt;
  localizedAccountSetupTitleString = [(DASettingsAccountsUIController *)self localizedAccountSetupTitleString];
  [(ACUIViewController *)self stopValidationWithPrompt:localizedAccountSetupTitleString showButtons:1];

  [(DASettingsAccountsUIController *)self updateDoneButton];
  if (![(DASettingsAccountsUIController *)self isRunningFromMobileMailApp])
  {
    [*MEMORY[0x277D76620] setStatusBarShowsProgress:0];
  }

  v5 = promptCopy;
  if (promptCopy)
  {
    v6 = MEMORY[0x277D75110];
    localizedValidationFailureTitleString = [(DASettingsAccountsUIController *)self localizedValidationFailureTitleString];
    v8 = [v6 alertControllerWithTitle:localizedValidationFailureTitleString message:promptCopy preferredStyle:1];

    v9 = MEMORY[0x277D750F8];
    v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v11 = [v10 localizedStringForKey:@"OK" value:&stru_285ACAC78 table:@"Localizable"];
    v12 = [v9 actionWithTitle:v11 style:0 handler:&__block_literal_global];

    [v8 addAction:v12];
    [(DASettingsAccountsUIController *)self presentViewController:v8 animated:1 completion:0];

    v5 = promptCopy;
  }
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = DASettingsAccountsUIController;
  [(ACUIViewController *)&v4 dealloc];
}

- (int)indexOfCurrentlyEditingCell
{
  currentlyEditingCell = [(DASettingsAccountsUIController *)self currentlyEditingCell];
  if (currentlyEditingCell && ([*(&self->super.super.super.super.super.super.isa + *MEMORY[0x277D3FC60]) indexPathForCell:currentlyEditingCell], (v4 = objc_claimAutoreleasedReturnValue()) != 0))
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
  view = [(DASettingsAccountsUIController *)self view];
  window = [view window];
  firstResponder = [window firstResponder];

  v5 = firstResponder;
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

      superview = [v7 superview];

      v7 = superview;
    }

    while (superview);
  }

  v7 = 0;
LABEL_8:

  return v7;
}

- (id)lastGroupSpecifierInSpecifiers:(id)specifiers
{
  specifiersCopy = specifiers;
  v4 = [specifiersCopy count];
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
      v7 = [specifiersCopy objectAtIndexedSubscript:v5 - 2];
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
  account = [(DASettingsAccountsUIController *)self account];
  accountDescription = [account accountDescription];

  if ([accountDescription length])
  {
    localizedAccountSetupTitleString = accountDescription;
  }

  else
  {
    localizedAccountSetupTitleString = [(DASettingsAccountsUIController *)self localizedAccountSetupTitleString];
  }

  v6 = localizedAccountSetupTitleString;

  return v6;
}

- (void)deleteAccountButtonTapped
{
  account = [(DASettingsAccountsUIController *)self account];
  backingAccountInfo = [account backingAccountInfo];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __59__DASettingsAccountsUIController_deleteAccountButtonTapped__block_invoke;
  v5[3] = &unk_278F217E0;
  v5[4] = self;
  [(ACUIViewController *)self showConfirmationForDeletingAccount:backingAccountInfo completion:v5];
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
  account = [(DASettingsAccountsUIController *)self account];
  backingAccountInfo = [account backingAccountInfo];
  managingOwnerIdentifier = [backingAccountInfo managingOwnerIdentifier];

  if (managingOwnerIdentifier)
  {
    return 1;
  }

  account2 = [(DASettingsAccountsUIController *)self account];
  backingAccountInfo2 = [account2 backingAccountInfo];
  mcBackingProfile = [backingAccountInfo2 mcBackingProfile];
  v6 = mcBackingProfile != 0;

  return v6;
}

@end