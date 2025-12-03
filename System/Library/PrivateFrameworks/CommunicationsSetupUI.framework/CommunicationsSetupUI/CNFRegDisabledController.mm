@interface CNFRegDisabledController
- (id)getAccountNameForSpecifier:(id)specifier;
- (id)specifierList;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)_activateSpinner;
- (void)_deactivateSpinner;
- (void)_setupAccountHandlersForDisabledOperation;
- (void)turnOnTapped:(id)tapped;
@end

@implementation CNFRegDisabledController

- (id)specifierList
{
  v35 = *MEMORY[0x277D85DE8];
  v3 = *(&self->super.super.super.super.super.super.super.isa + *MEMORY[0x277D3FC48]);
  if (v3)
  {
    goto LABEL_20;
  }

  v27 = *MEMORY[0x277D3FC48];
  v4 = 1568;
  turnOnButton = self->_turnOnButton;
  self->_turnOnButton = 0;

  spinner = self->_spinner;
  self->_spinner = 0;

  v7 = CNFRegLoadSpecifiersFromPlist(self, @"CNFRegDisabled", self);
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (!v8)
  {
    goto LABEL_17;
  }

  v9 = v8;
  v10 = *v31;
  v28 = *MEMORY[0x277D40170];
  v29 = v7;
  do
  {
    for (i = 0; i != v9; ++i)
    {
      if (*v31 != v10)
      {
        objc_enumerationMutation(v7);
      }

      v12 = *(*(&v30 + 1) + 8 * i);
      identifier = [v12 identifier];
      v14 = [identifier isEqual:@"FACETIME_DISABLED_SPINNER_ID"];

      if (v14)
      {
        v15 = v12;
        identifier3 = self->_spinner;
        self->_spinner = v15;
      }

      else
      {
        identifier2 = [v12 identifier];
        v18 = [identifier2 isEqual:@"FACETIME_DISABLED_TURN_ON_ID"];

        if (v18)
        {
          v19 = v12;
          identifier3 = *(&self->super.super.super.super.super.super.super.isa + v4);
          *(&self->super.super.super.super.super.super.super.isa + v4) = v19;
        }

        else
        {
          identifier3 = [v12 identifier];
          if ([identifier3 isEqualToString:@"FACETIME_ACCOUNT_ID"])
          {
            v20 = _os_feature_enabled_impl();

            if (!v20)
            {
              continue;
            }

            v21 = CommunicationsSetupUIBundle();
            CNFRegStringTableName();
            v23 = v22 = v4;
            identifier3 = [v21 localizedStringForKey:@"FACETIME_SETTINGS_ACCOUNT_LABEL_APPLEACCOUNT" value:&stru_2856D3978 table:v23];

            v4 = v22;
            v7 = v29;

            [v12 setProperty:identifier3 forKey:v28];
            [v12 setName:identifier3];
          }
        }
      }
    }

    v9 = [v7 countByEnumeratingWithState:&v30 objects:v34 count:16];
  }

  while (v9);
LABEL_17:
  if (self->_spinner)
  {
    [v7 removeObjectAtIndex:{objc_msgSend(v7, "indexOfObject:")}];
  }

  v24 = *(&self->super.super.super.super.super.super.super.isa + v27);
  *(&self->super.super.super.super.super.super.super.isa + v27) = v7;

  v3 = *(&self->super.super.super.super.super.super.super.isa + v27);
LABEL_20:
  v25 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v6.receiver = self;
  v6.super_class = CNFRegDisabledController;
  v4 = [(CNFRegDisabledController *)&v6 tableView:view cellForRowAtIndexPath:path];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v4 setSelectionStyle:1];
  }

  return v4;
}

- (void)_activateSpinner
{
  if (self->_spinner && self->_turnOnButton && [(CNFRegDisabledController *)self containsSpecifier:?])
  {
    v4 = [MEMORY[0x277CBEA60] arrayWithObject:self->_turnOnButton];
    v3 = [MEMORY[0x277CBEA60] arrayWithObject:self->_spinner];
    [(CNFRegDisabledController *)self replaceContiguousSpecifiers:v4 withSpecifiers:v3 animated:1];
  }
}

- (void)_deactivateSpinner
{
  if (self->_turnOnButton && self->_spinner && [(CNFRegDisabledController *)self containsSpecifier:?])
  {
    v4 = [MEMORY[0x277CBEA60] arrayWithObject:self->_spinner];
    v3 = [MEMORY[0x277CBEA60] arrayWithObject:self->_turnOnButton];
    [(CNFRegDisabledController *)self replaceContiguousSpecifiers:v4 withSpecifiers:v3 animated:1];
  }
}

- (void)turnOnTapped:(id)tapped
{
  [(CNFRegDisabledController *)self _setupAccountHandlersForDisabledOperation];
  [(CNFRegDisabledController *)self _activateSpinner];
  regController = [(CNFRegListController *)self regController];
  [regController activateAccounts];
}

- (void)_setupAccountHandlersForDisabledOperation
{
  regController = [(CNFRegListController *)self regController];
  [regController removeAllHandlers];
  objc_initWeak(&location, regController);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __69__CNFRegDisabledController__setupAccountHandlersForDisabledOperation__block_invoke;
  v4[3] = &unk_278DE8B38;
  objc_copyWeak(&v5, &location);
  v4[4] = self;
  [regController setAccountRegistrationBlock:v4];
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __69__CNFRegDisabledController__setupAccountHandlersForDisabledOperation__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v28 = a2;
  v5 = a3;
  if ([v28 CNFRegSignInComplete])
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained setServiceEnabled:1];

    v7 = objc_loadWeakRetained((a1 + 40));
    v8 = [v7 accountState];

    [*(a1 + 32) dismissWithState:v8];
    [*(a1 + 32) _deactivateSpinner];
  }

  else if ([v28 CNFRegSignInFailed])
  {
    v9 = objc_loadWeakRetained((a1 + 40));
    [v9 setServiceEnabled:1];

    v10 = [CNFRegSignInController alloc];
    v11 = objc_loadWeakRetained((a1 + 40));
    v12 = [(CNFRegFirstRunController *)v10 initWithRegController:v11];

    v13 = [*(a1 + 32) rootController];
    [(CNFRegSignInController *)v12 setRootController:v13];

    v14 = [*(a1 + 32) rootController];
    [(CNFRegSignInController *)v12 setParentController:v14];

    v15 = [*(a1 + 32) delegate];
    [(CNFRegFirstRunController *)v12 setDelegate:v15];

    v16 = [*(a1 + 32) rootController];
    [v16 showController:v12];

    [*(a1 + 32) _deactivateSpinner];
  }

  if (v5)
  {
    [*(a1 + 32) _deactivateSpinner];
    v17 = [*(a1 + 32) regController];
    v18 = [v17 shouldShowAlertForError:v5];

    if (v18)
    {
      v19 = CommunicationsSetupUIBundle();
      v20 = CNFRegStringTableName();
      v21 = [v19 localizedStringForKey:@"FACETIME_ACTIVATION_ERROR_TITLE" value:&stru_2856D3978 table:v20];

      v22 = [v5 localizedDescription];
      v23 = CommunicationsSetupUIBundle();
      v24 = CNFRegStringTableName();
      v25 = [v23 localizedStringForKey:@"FACETIME_ALERT_OK" value:&stru_2856D3978 table:v24];

      v26 = [MEMORY[0x277D75110] alertControllerWithTitle:v21 message:v22 preferredStyle:1];
      v27 = [MEMORY[0x277D750F8] actionWithTitle:v25 style:0 handler:0];
      [v26 addAction:v27];

      [*(a1 + 32) presentViewController:v26 animated:1 completion:0];
    }
  }
}

- (id)getAccountNameForSpecifier:(id)specifier
{
  v15 = *MEMORY[0x277D85DE8];
  regController = [(CNFRegListController *)self regController];
  v4 = _os_feature_enabled_impl();
  v5 = CommunicationsSetupUIBundle();
  v6 = CNFRegStringTableName();
  if (v4)
  {
    v7 = @"FACETIME_ACCOUNT_INFO_UNAVAILABLE_APPLEACCOUNT";
  }

  else
  {
    v7 = @"FACETIME_ACCOUNT_INFO_UNAVAILABLE";
  }

  v8 = [v5 localizedStringForKey:v7 value:&stru_2856D3978 table:v6];

  memset(v13, 0, sizeof(v13));
  appleIDAccounts = [regController appleIDAccounts];
  if ([appleIDAccounts countByEnumeratingWithState:v13 objects:v14 count:16])
  {
    loginDisplayString = [**(&v13[0] + 1) loginDisplayString];

    v8 = loginDisplayString;
  }

  v11 = *MEMORY[0x277D85DE8];

  return v8;
}

@end