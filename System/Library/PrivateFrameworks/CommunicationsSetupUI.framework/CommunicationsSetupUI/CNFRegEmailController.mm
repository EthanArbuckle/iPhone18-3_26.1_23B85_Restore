@interface CNFRegEmailController
- (BOOL)_phoneNumberInAliases:(id)aliases;
- (BOOL)emailFieldIsEmpty;
- (BOOL)onlyLocalPhoneNumberSentinelAliasIsSelected;
- (BOOL)shouldShowAllVettedAliases;
- (double)timeoutDuration;
- (id)_createSpecifierForAlias:(id)alias;
- (id)_rightButtonItem;
- (id)aliasSpecifiers;
- (id)emailTextField;
- (id)selectedAliases;
- (id)specifierList;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)_buildActionGroupSpecifierCache:(id)cache;
- (void)_buildCheckMailSpecifierCache:(id)cache;
- (void)_buildEmailSpecifierCache:(id)cache;
- (void)_buildSpecifierCache:(id)cache;
- (void)_failValidationWithError:(id)error;
- (void)_finishValidation;
- (void)_handleValidationModeCancelled;
- (void)_refreshEnabledStateOfAliasSpecifiers;
- (void)_returnKeyPressed;
- (void)_setupEventHandlers;
- (void)_updateControllerState;
- (void)_updateUI;
- (void)checkMailTapped:(id)tapped;
- (void)dealloc;
- (void)emailFieldEmptyStateChanged:(id)changed forSpecifier:(id)specifier;
- (void)nextTapped;
- (void)setAliasSelected:(id)selected;
- (void)startValidationTimeoutTimer;
- (void)stopValidationTimeoutTimer;
- (void)systemApplicationDidEnterBackground;
- (void)systemApplicationWillEnterForeground;
- (void)validationTimeout:(id)timeout;
- (void)viewDidLoad;
@end

@implementation CNFRegEmailController

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  [(CNFRegEmailController *)self stopValidationTimeoutTimer];
  [(NSTimer *)self->_validationTimeoutTimer invalidate];
  v4.receiver = self;
  v4.super_class = CNFRegEmailController;
  [(CNFRegFirstRunController *)&v4 dealloc];
}

- (void)viewDidLoad
{
  v8.receiver = self;
  v8.super_class = CNFRegEmailController;
  [(CNFRegEmailController *)&v8 viewDidLoad];
  if (CNFRegGlobalAppearanceStyle() == 6)
  {
    v3 = *(&self->super.super.super.super.super.super.super.isa + *MEMORY[0x277D3FC60]);
    clearColor = [MEMORY[0x277D75348] clearColor];
    [v3 setBackgroundColor:clearColor];
  }

  else if (CNFRegGlobalAppearanceStyle() == 5)
  {
    v5 = *MEMORY[0x277D3FC60];
    v6 = *(&self->super.super.super.super.super.super.super.isa + v5);
    clearColor2 = [MEMORY[0x277D75348] clearColor];
    [v6 setBackgroundColor:clearColor2];

    [*(&self->super.super.super.super.super.super.super.isa + v5) _setSeparatorsDrawAsOverlay:1];
  }
}

- (id)specifierList
{
  v48 = *MEMORY[0x277D85DE8];
  v3 = *(&self->super.super.super.super.super.super.super.isa + *MEMORY[0x277D3FC48]);
  if (v3)
  {
    goto LABEL_29;
  }

  v41 = *MEMORY[0x277D3FC48];
  v4 = CNFRegLoadSpecifiersFromPlist(self, @"CNFRegEmail", self);
  shouldShowAllVettedAliases = [(CNFRegEmailController *)self shouldShowAllVettedAliases];
  regController = [(CNFRegListController *)self regController];
  v7 = MEMORY[0x277CBEA60];
  account = [(CNFRegFirstRunController *)self account];
  v9 = [v7 arrayWithObject:account];
  v10 = [regController vettedAliasesForAccounts:v9];

  v11 = [v4 specifierForID:@"FACETIME_EMAIL_DESCRIPTION_GROUP_ID"];
  if (shouldShowAllVettedAliases && [v10 count] > 1)
  {
    v12 = [(CNFRegEmailController *)self _phoneNumberInAliases:v10];
    v13 = CNFRegGlobalAppearanceStyle();
    if (v12)
    {
      v14 = v13 == 4;
      v15 = CommunicationsSetupUIBundle();
      if (v14)
      {
        v16 = @"FACETIME_EMAIL_AND_PHONE_DESCRIPTION_MODERN";
      }

      else
      {
        v16 = @"FACETIME_EMAIL_AND_PHONE_DESCRIPTION";
      }

      goto LABEL_12;
    }
  }

  else
  {
    v13 = CNFRegGlobalAppearanceStyle();
  }

  if (v13 == 4)
  {
    v15 = CommunicationsSetupUIBundle();
    v16 = @"FACETIME_EMAIL_DESCRIPTION_MODERN";
  }

  else
  {
    v15 = CommunicationsSetupUIBundle();
    v16 = @"FACETIME_EMAIL_DESCRIPTION";
  }

LABEL_12:
  v17 = CNFStringKeyForIdiom(v16);
  v18 = CNFRegStringTableName();
  v19 = [v15 localizedStringForKey:v17 value:&stru_2856D3978 table:v18];

  if ([v19 _isNaturallyRTL])
  {
    v20 = 2;
  }

  else
  {
    v20 = 0;
  }

  v21 = [MEMORY[0x277CCABB0] numberWithInteger:v20];
  [v11 setProperty:v21 forKey:*MEMORY[0x277D3FD78]];

  v22 = [MEMORY[0x277CCABB0] numberWithInteger:v20];
  [v11 setProperty:v22 forKey:*MEMORY[0x277D3FF40]];

  [v11 setProperty:v19 forKey:*MEMORY[0x277D3FF88]];
  v23 = [v4 specifierForID:@"FACETIME_EMAIL_GROUP_ID"];
  v24 = [v4 indexOfObject:v23];
  if (v24 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v25 = v24;
    v26 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v47 = v10;
      _os_log_impl(&dword_243BE5000, v26, OS_LOG_TYPE_DEFAULT, "Updating specifier list with vetted aliases: %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
    {
      v40 = v10;
      IMLogString();
    }

    v27 = v25 + 1;
    if (shouldShowAllVettedAliases && [v10 count])
    {
      v28 = [v4 specifierForID:@"FACETIME_EMAIL_ID"];
      [v4 removeObject:v28];
      v42[0] = MEMORY[0x277D85DD0];
      v42[1] = 3221225472;
      v42[2] = __38__CNFRegEmailController_specifierList__block_invoke;
      v42[3] = &unk_278DE83B0;
      v43 = v4;
      selfCopy = self;
      v45 = v27;
      [v10 enumerateObjectsWithOptions:2 usingBlock:v42];
    }

    if (CNFRegSupportsLocalPhoneNumberSentinelAlias())
    {
      regController2 = [(CNFRegListController *)self regController];
      localPhoneNumberSentinelAlias = [regController2 localPhoneNumberSentinelAlias];

      if (localPhoneNumberSentinelAlias)
      {
        v31 = [(CNFRegEmailController *)self _createSpecifierForAlias:localPhoneNumberSentinelAlias];
        [v4 insertObject:v31 atIndex:v27];
      }
    }
  }

  [(CNFRegEmailController *)self _buildSpecifierCache:v4, v40];
  v32 = [v4 specifierForID:@"FACETIME_EMAIL_CHECK_MAIL_GROUP_ID"];
  [v4 removeObject:v32];
  v33 = [v4 specifierForID:@"FACETIME_EMAIL_CHECK_MAIL_ID"];
  [v4 removeObject:v33];
  v34 = [v4 copy];
  v35 = *(&self->super.super.super.super.super.super.super.isa + v41);
  *(&self->super.super.super.super.super.super.super.isa + v41) = v34;

  [*(&self->super.super.super.super.super.super.super.isa + *MEMORY[0x277D3FC60]) reloadData];
  navigationItem = [(CNFRegEmailController *)self navigationItem];
  rightBarButtonItem = [navigationItem rightBarButtonItem];
  [rightBarButtonItem setEnabled:0];

  v3 = *(&self->super.super.super.super.super.super.super.isa + v41);
LABEL_29:
  v38 = *MEMORY[0x277D85DE8];

  return v3;
}

void __38__CNFRegEmailController_specifierList__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) _createSpecifierForAlias:a2];
  [v3 insertObject:v4 atIndex:*(a1 + 48)];
}

- (id)_rightButtonItem
{
  v3 = objc_alloc(MEMORY[0x277D751E0]);
  v4 = CommunicationsSetupUIBundle();
  v5 = CNFRegStringTableName();
  v6 = [v4 localizedStringForKey:@"NEXT" value:&stru_2856D3978 table:v5];
  v7 = [v3 initWithTitle:v6 style:2 target:self action:sel_nextTapped];

  return v7;
}

- (BOOL)shouldShowAllVettedAliases
{
  regController = [(CNFRegListController *)self regController];
  v4 = MEMORY[0x277CBEA60];
  account = [(CNFRegFirstRunController *)self account];
  v6 = [v4 arrayWithObject:account];
  v7 = [regController vettedAliasesForAccounts:v6];
  v8 = [v7 count] != 0;

  return v8;
}

- (BOOL)_phoneNumberInAliases:(id)aliases
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  aliasesCopy = aliases;
  v4 = [aliasesCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(aliasesCopy);
        }

        if ([*(*(&v9 + 1) + 8 * i) type] == 2)
        {
          LOBYTE(v4) = 1;
          goto LABEL_11;
        }
      }

      v4 = [aliasesCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v7 = *MEMORY[0x277D85DE8];
  return v4;
}

- (id)aliasSpecifiers
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277CBEB18]);
  v4 = *MEMORY[0x277D3FC48];
  v5 = [v3 initWithCapacity:{objc_msgSend(*(&self->super.super.super.super.super.super.super.isa + v4), "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = *(&self->super.super.super.super.super.super.super.isa + v4);
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        v12 = [v11 propertyForKey:{@"cnfreg-alias", v15}];
        if (v12)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v13 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)_createSpecifierForAlias:(id)alias
{
  aliasCopy = alias;
  displayName = [aliasCopy displayName];
  v6 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:displayName target:self set:0 get:0 detail:0 cell:13 edit:0];
  [v6 setButtonAction:sel_setAliasSelected_];
  v7 = NSStringFromSelector(sel_setAliasSelected_);
  [v6 setProperty:v7 forKey:*MEMORY[0x277D3FE10]];

  isLocalPhoneNumberAlias = [aliasCopy isLocalPhoneNumberAlias];
  v9 = [MEMORY[0x277CCABB0] numberWithBool:isLocalPhoneNumberAlias ^ 1u];
  [v6 setProperty:v9 forKey:*MEMORY[0x277D3FF38]];

  [v6 setProperty:objc_opt_class() forKey:*MEMORY[0x277D3FE58]];
  identifier = [aliasCopy identifier];
  [v6 setProperty:identifier forKey:*MEMORY[0x277D3FFB8]];

  [v6 setProperty:displayName forKey:*MEMORY[0x277D40170]];
  v11 = [MEMORY[0x277CCABB0] numberWithInt:0];
  [v6 setProperty:v11 forKey:*MEMORY[0x277D3FD78]];

  [v6 setProperty:aliasCopy forKey:@"cnfreg-alias"];
  v12 = [MEMORY[0x277CCABB0] numberWithBool:1];
  [v6 setProperty:v12 forKey:@"cnfreg-alias-checked"];

  return v6;
}

- (void)setAliasSelected:(id)selected
{
  selectedCopy = selected;
  v5 = [selectedCopy propertyForKey:@"cnfreg-alias-checked"];
  bOOLValue = [v5 BOOLValue];

  v7 = [MEMORY[0x277CCABB0] numberWithBool:bOOLValue ^ 1u];
  [selectedCopy setProperty:v7 forKey:@"cnfreg-alias-checked"];

  v8 = [(CNFRegEmailController *)self cachedCellForSpecifier:selectedCopy];

  [v8 setChecked:bOOLValue ^ 1u];

  [(CNFRegEmailController *)self _updateUI];
}

- (id)selectedAliases
{
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  aliasSpecifiers = [(CNFRegEmailController *)self aliasSpecifiers];
  v3 = [aliasSpecifiers countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v16;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(aliasSpecifiers);
        }

        v8 = *(*(&v15 + 1) + 8 * i);
        v9 = [v8 propertyForKey:@"cnfreg-alias"];
        if (v9)
        {
          v10 = [v8 propertyForKey:@"cnfreg-alias-checked"];
          bOOLValue = [v10 BOOLValue];

          if (bOOLValue)
          {
            if (!v5)
            {
              v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(*(&self->super.super.super.super.super.super.super.isa + *MEMORY[0x277D3FC48]), "count")}];
            }

            [v5 addObject:v9];
          }
        }
      }

      v4 = [aliasSpecifiers countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];

  return v5;
}

- (BOOL)onlyLocalPhoneNumberSentinelAliasIsSelected
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  selectedAliases = [(CNFRegEmailController *)self selectedAliases];
  v3 = [selectedAliases countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(selectedAliases);
        }

        if (![*(*(&v8 + 1) + 8 * i) isLocalPhoneNumberAlias])
        {
          LOBYTE(v3) = 0;
          goto LABEL_11;
        }
      }

      v3 = [selectedAliases countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }

    LOBYTE(v3) = 1;
  }

LABEL_11:

  v6 = *MEMORY[0x277D85DE8];
  return v3;
}

- (void)_finishValidation
{
  [(CNFRegEmailController *)self _stopValidationModeAnimated:0];
  [(CNFRegEmailController *)self stopValidationTimeoutTimer];
  if ([(CNFRegEmailController *)self shouldShowAllVettedAliases])
  {
    [(CNFRegEmailController *)self _updateControllerState];
  }

  else
  {
    [(CNFRegFirstRunController *)self setCellsChecked:1];
    [(CNFRegEmailController *)self performSelector:sel__updateControllerState withObject:0 afterDelay:1.0];
  }

  navigationItem = [(CNFRegEmailController *)self navigationItem];
  [navigationItem setRightBarButtonItem:0];

  navigationItem2 = [(CNFRegEmailController *)self navigationItem];
  [navigationItem2 setHidesBackButton:1];
}

- (void)_failValidationWithError:(id)error
{
  errorCopy = error;
  [(CNFRegEmailController *)self _stopValidationModeAnimated:1];
  [(CNFRegEmailController *)self stopValidationTimeoutTimer];
  navigationItem = [(CNFRegEmailController *)self navigationItem];
  rightBarButtonItem = [navigationItem rightBarButtonItem];
  [rightBarButtonItem setEnabled:1];

  userInfo = [errorCopy userInfo];
  v8 = [userInfo objectForKey:@"cnf-customTitle"];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v11 = CommunicationsSetupUIBundle();
    v12 = CNFRegStringTableName();
    v10 = [v11 localizedStringForKey:@"FACETIME_ACTIVATION_ERROR_TITLE" value:&stru_2856D3978 table:v12];
  }

  localizedDescription = [errorCopy localizedDescription];
  v14 = localizedDescription;
  if (localizedDescription)
  {
    v15 = localizedDescription;
  }

  else
  {
    v16 = CommunicationsSetupUIBundle();
    v17 = CNFRegStringTableName();
    v15 = [v16 localizedStringForKey:@"FACETIME_SIGNIN_ERROR_GENERIC" value:&stru_2856D3978 table:v17];
  }

  userInfo2 = [errorCopy userInfo];
  v19 = [userInfo2 objectForKey:@"cnf-customButton"];
  v20 = v19;
  if (v19)
  {
    v21 = v19;
  }

  else
  {
    v22 = CommunicationsSetupUIBundle();
    v23 = CNFRegStringTableName();
    v21 = [v22 localizedStringForKey:@"FACETIME_ALERT_OK" value:&stru_2856D3978 table:v23];
  }

  v24 = [MEMORY[0x277D75110] alertControllerWithTitle:v10 message:v15 preferredStyle:1];
  v25 = [MEMORY[0x277D750F8] actionWithTitle:v21 style:0 handler:0];
  [v24 addAction:v25];

  userInfo3 = [errorCopy userInfo];
  v27 = [userInfo3 objectForKey:@"cnf-customActionTitle"];

  if (v27)
  {
    v28 = MEMORY[0x277D750F8];
    userInfo4 = [errorCopy userInfo];
    v30 = [userInfo4 objectForKey:@"cnf-customActionTitle"];
    v32 = MEMORY[0x277D85DD0];
    v33 = 3221225472;
    v34 = __50__CNFRegEmailController__failValidationWithError___block_invoke;
    v35 = &unk_278DE8420;
    v36 = errorCopy;
    selfCopy = self;
    v31 = [v28 actionWithTitle:v30 style:0 handler:&v32];
    [v24 addAction:{v31, v32, v33, v34, v35}];
  }

  [(CNFRegEmailController *)self presentViewController:v24 animated:1 completion:0];
}

void __50__CNFRegEmailController__failValidationWithError___block_invoke(uint64_t a1, void *a2)
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

- (void)nextTapped
{
  v66 = *MEMORY[0x277D85DE8];
  v2 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_243BE5000, v2, OS_LOG_TYPE_DEFAULT, "Next tapped", buf, 2u);
  }

  if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
  {
    IMLogString();
  }

  self->_validating = 1;
  regController = [(CNFRegListController *)self regController];
  if (![(CNFRegEmailController *)self shouldShowAllVettedAliases])
  {
    emailTextField = [(CNFRegEmailController *)self emailTextField];
    text = [emailTextField text];

    aliases = [regController aliases];
    v20 = [aliases copy];

    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v5 = v20;
    v21 = [v5 countByEnumeratingWithState:&v57 objects:v61 count:16];
    if (v21)
    {
      v22 = *v58;
      v23 = 1;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v58 != v22)
          {
            objc_enumerationMutation(v5);
          }

          v25 = *(*(&v57 + 1) + 8 * i);
          if ([v25 type] != 2)
          {
            alias = [v25 alias];
            v27 = [alias isEqualToString:text];

            if ((v27 & 1) == 0)
            {
              alias2 = [v25 alias];
              account = [v25 account];
              v30 = [regController removeAlias:alias2 fromAccount:account];

              v23 &= v30;
            }
          }
        }

        v21 = [v5 countByEnumeratingWithState:&v57 objects:v61 count:16];
      }

      while (v21);

      if ((v23 & 1) == 0)
      {
        goto LABEL_50;
      }
    }

    else
    {
    }

    v31 = [regController aliasNamed:text];
    v32 = v31;
    if (v31)
    {
      if ([v31 validationStatus] == 3)
      {
        account2 = [v32 account];
        cNFRegSignInComplete = [account2 CNFRegSignInComplete];

        if (cNFRegSignInComplete)
        {
          [(CNFRegEmailController *)self _finishValidation];

          goto LABEL_61;
        }

        v49 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_243BE5000, v49, OS_LOG_TYPE_DEFAULT, "**** ERROR: We have a validated alias, but are not registered. Please file a radar.", buf, 2u);
        }

        if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
        {
          IMLogString();
        }

        account3 = [v32 account];
        [account3 registerAccount];

        goto LABEL_57;
      }

      validate = [v32 validate];

      if ((validate & 1) == 0)
      {
LABEL_50:
        v36 = CommunicationsSetupUIBundle();
        v37 = CNFRegStringTableName();
        editableTextField = [v36 localizedStringForKey:@"FACETIME_ACTIVATION_ERROR_TITLE" value:&stru_2856D3978 table:v37];

        v39 = MEMORY[0x277CCACA8];
        v40 = CommunicationsSetupUIBundle();
        v41 = CNFRegStringTableName();
        v42 = [v40 localizedStringForKey:@"FACETIME_EMAIL_UNABLE_TO_ADD_ALIAS_%@" value:&stru_2856D3978 table:v41];
        v43 = [v39 stringWithFormat:v42, text];

        v44 = CommunicationsSetupUIBundle();
        v45 = CNFRegStringTableName();
        v46 = [v44 localizedStringForKey:@"FACETIME_ALERT_OK" value:&stru_2856D3978 table:v45];

        v47 = [MEMORY[0x277D75110] alertControllerWithTitle:editableTextField message:v43 preferredStyle:1];
        v48 = [MEMORY[0x277D750F8] actionWithTitle:v46 style:0 handler:0];
        [v47 addAction:v48];

        [(CNFRegEmailController *)self presentViewController:v47 animated:1 completion:0];
LABEL_60:

        goto LABEL_61;
      }
    }

    else if (![regController addAlias:text])
    {
      goto LABEL_50;
    }

LABEL_57:
    [(CNFRegEmailController *)self setPendingAlias:text];
    v51 = [(CNFRegEmailController *)self cachedCellForSpecifier:self->_emailSpecifier];
    editableTextField = [v51 editableTextField];

    if (objc_opt_respondsToSelector())
    {
      [editableTextField resignFirstResponder];
    }

    [(CNFRegFirstRunController *)self _startValidationModeAnimated:0 allowCancel:1];
    [(CNFRegEmailController *)self _showCheckMailButton:0 animated:1];
    [(CNFRegEmailController *)self startValidationTimeoutTimer];
    goto LABEL_60;
  }

  text = [(CNFRegEmailController *)self selectedAliases];
  v5 = [text arrayByApplyingSelector:sel_alias];
  v6 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v63 = text;
    _os_log_impl(&dword_243BE5000, v6, OS_LOG_TYPE_DEFAULT, "  => Selected aliases: %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
  {
    v53 = text;
    IMLogString();
  }

  v7 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v63 = v5;
    _os_log_impl(&dword_243BE5000, v7, OS_LOG_TYPE_DEFAULT, "  => Alias strings: %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
  {
    v53 = v5;
    IMLogString();
  }

  account4 = [(CNFRegFirstRunController *)self account];
  [regController setAliases:v5 onAccount:account4];

  v9 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    account5 = [(CNFRegFirstRunController *)self account];
    aliases2 = [account5 aliases];
    account6 = [(CNFRegFirstRunController *)self account];
    *buf = 138412546;
    v63 = aliases2;
    v64 = 2112;
    v65 = account6;
    _os_log_impl(&dword_243BE5000, v9, OS_LOG_TYPE_DEFAULT, "Set aliases %@ on account %@", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
  {
    account7 = [(CNFRegFirstRunController *)self account];
    aliases3 = [account7 aliases];
    [(CNFRegFirstRunController *)self account];
    v55 = v54 = aliases3;
    IMLogString();
  }

  v15 = [(CNFRegFirstRunController *)self account:v54];
  cNFRegSignInComplete2 = [v15 CNFRegSignInComplete];

  if (cNFRegSignInComplete2)
  {
    v17 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_243BE5000, v17, OS_LOG_TYPE_DEFAULT, "Skipping validation because sign in is complete", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
    {
      IMLogString();
    }

    [(CNFRegEmailController *)self _finishValidation];
  }

  else
  {
    [(CNFRegFirstRunController *)self _startValidationModeAnimated:0 allowCancel:1];
    [(CNFRegEmailController *)self _showCheckMailButton:0 animated:1];
    [(CNFRegEmailController *)self startValidationTimeoutTimer];
  }

LABEL_61:

  v52 = *MEMORY[0x277D85DE8];
}

- (void)_returnKeyPressed
{
  if ([(CNFRegEmailController *)self shouldShowAllVettedAliases])
  {
    selectedAliases = [(CNFRegEmailController *)self selectedAliases];
    v4 = [selectedAliases count] != 0;
  }

  else
  {
    v4 = 0;
  }

  if ([(CNFRegEmailController *)self shouldShowAllVettedAliases])
  {
    v5 = 0;
  }

  else
  {
    v5 = ![(CNFRegEmailController *)self emailFieldIsEmpty];
  }

  if ((v4 | v5))
  {

    [(CNFRegEmailController *)self nextTapped];
  }
}

- (void)checkMailTapped:(id)tapped
{
  if (SBSLaunchApplicationWithIdentifier())
  {
    v4 = CommunicationsSetupUIBundle();
    v5 = CNFRegStringTableName();
    v14 = [v4 localizedStringForKey:@"FACETIME_ACTIVATION_ERROR_TITLE" value:&stru_2856D3978 table:v5];

    v6 = CommunicationsSetupUIBundle();
    v7 = CNFRegStringTableName();
    v8 = [v6 localizedStringForKey:@"FACETIME_SIGNIN_ERROR_COULDNT_LAUNCH_MAIL" value:&stru_2856D3978 table:v7];

    v9 = CommunicationsSetupUIBundle();
    v10 = CNFRegStringTableName();
    v11 = [v9 localizedStringForKey:@"FACETIME_ALERT_OK" value:&stru_2856D3978 table:v10];

    v12 = [MEMORY[0x277D75110] alertControllerWithTitle:v14 message:v8 preferredStyle:1];
    v13 = [MEMORY[0x277D750F8] actionWithTitle:v11 style:0 handler:0];
    [v12 addAction:v13];

    [(CNFRegEmailController *)self presentViewController:v12 animated:1 completion:0];
  }
}

- (void)_handleValidationModeCancelled
{
  v10.receiver = self;
  v10.super_class = CNFRegEmailController;
  [(CNFRegFirstRunController *)&v10 _handleValidationModeCancelled];
  pendingAlias = [(CNFRegEmailController *)self pendingAlias];
  v4 = pendingAlias;
  if (pendingAlias && [pendingAlias length])
  {
    regController = [(CNFRegListController *)self regController];
    v6 = [regController aliasNamed:v4];

    regController2 = [(CNFRegListController *)self regController];
    alias = [v6 alias];
    account = [v6 account];
    [regController2 removeAlias:alias fromAccount:account];
  }

  [(CNFRegEmailController *)self _stopValidationModeAnimated:0];
}

- (void)systemApplicationDidEnterBackground
{
  v3.receiver = self;
  v3.super_class = CNFRegEmailController;
  [(CNFRegFirstRunController *)&v3 systemApplicationDidEnterBackground];
  [(CNFRegEmailController *)self stopValidationTimeoutTimer];
  [(CNFRegEmailController *)self _stopValidationModeAnimated:1];
}

- (void)systemApplicationWillEnterForeground
{
  v4.receiver = self;
  v4.super_class = CNFRegEmailController;
  [(CNFRegFirstRunController *)&v4 systemApplicationWillEnterForeground];
  v2 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_243BE5000, v2, OS_LOG_TYPE_DEFAULT, "Will become active", v3, 2u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (IMShouldLog())
    {
      IMLogString();
    }
  }
}

- (void)_refreshEnabledStateOfAliasSpecifiers
{
  selfCopy = self;
  v25 = *MEMORY[0x277D85DE8];
  selectedAliases = [(CNFRegEmailController *)self selectedAliases];
  v4 = [selectedAliases count];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = [(CNFRegEmailController *)selfCopy aliasSpecifiers];
  v5 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v21;
    v8 = *MEMORY[0x277D3FF38];
    do
    {
      v9 = 0;
      v18 = v6;
      do
      {
        if (*v21 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v20 + 1) + 8 * v9);
        v11 = [v10 propertyForKey:@"cnfreg-alias"];
        if (v11)
        {
          if (v4 == 1)
          {
            [v10 propertyForKey:@"cnfreg-alias-checked"];
            v13 = v12 = selfCopy;
            bOOLValue = [v13 BOOLValue];

            selfCopy = v12;
            v4 = 1;
            v6 = v18;
            v15 = bOOLValue ^ 1;
          }

          else
          {
            v15 = 1;
          }

          if (CNFRegSupportsLocalPhoneNumberSentinelAlias())
          {
            v15 &= [v11 isLocalPhoneNumberAlias] ^ 1;
          }

          v16 = [MEMORY[0x277CCABB0] numberWithBool:v15 & 1];
          [v10 setProperty:v16 forKey:v8];

          [(CNFRegEmailController *)selfCopy reloadSpecifier:v10];
        }

        ++v9;
      }

      while (v6 != v9);
      v6 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v6);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)_updateUI
{
  regController = [(CNFRegListController *)self regController];
  pendingAlias = [(CNFRegEmailController *)self pendingAlias];
  v5 = [regController aliasNamed:pendingAlias];

  if (v5 && [v5 validationStatus] == 2)
  {
    [(CNFRegFirstRunController *)self _startValidationModeAnimated:1 allowCancel:1];
    if (!self->_validationTimeoutTimer)
    {
      [(CNFRegEmailController *)self startValidationTimeoutTimer];
    }
  }

  else
  {
    v6 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v16 = 0;
      _os_log_impl(&dword_243BE5000, v6, OS_LOG_TYPE_DEFAULT, "Handling initial state", v16, 2u);
    }

    if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
    {
      IMLogString();
    }

    [(CNFRegEmailController *)self _stopValidationModeAnimated:1];
    if ([(CNFRegEmailController *)self shouldShowAllVettedAliases])
    {
      selectedAliases = [(CNFRegEmailController *)self selectedAliases];
      LOBYTE(v8) = [selectedAliases count] != 0;

      [(CNFRegEmailController *)self _refreshEnabledStateOfAliasSpecifiers];
    }

    else
    {
      pendingAlias2 = [(CNFRegEmailController *)self pendingAlias];

      if (!pendingAlias2)
      {
        guessedAlias = [regController guessedAlias];
        [(CNFRegEmailController *)self setPendingAlias:guessedAlias];
      }

      v8 = ![(CNFRegEmailController *)self emailFieldIsEmpty];
      pendingAlias3 = [(CNFRegEmailController *)self pendingAlias];
      if (pendingAlias3)
      {
        pendingAlias4 = [(CNFRegEmailController *)self pendingAlias];
        v13 = [pendingAlias4 length] != 0;

        LOBYTE(v8) = v13 | v8;
      }

      [(CNFRegEmailController *)self reloadSpecifier:self->_emailSpecifier animated:1];
    }

    navigationItem = [(CNFRegEmailController *)self navigationItem];
    rightBarButtonItem = [navigationItem rightBarButtonItem];
    [rightBarButtonItem setEnabled:v8 & 1];
  }
}

- (void)_updateControllerState
{
  v22 = *MEMORY[0x277D85DE8];
  v17.receiver = self;
  v17.super_class = CNFRegEmailController;
  [(CNFRegFirstRunController *)&v17 _updateControllerState];
  [(CNFRegEmailController *)self _updateUI];
  regController = [(CNFRegListController *)self regController];
  account = [(CNFRegFirstRunController *)self account];
  v5 = [regController accountStateForAccount:account];

  v6 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"YES";
    if (v5)
    {
      v8 = @"YES";
    }

    else
    {
      v8 = @"NO";
    }

    if ((v5 & 4) == 0)
    {
      v7 = @"NO";
    }

    *buf = 138412546;
    v19 = v8;
    v20 = 2112;
    v21 = v7;
    _os_log_impl(&dword_243BE5000, v6, OS_LOG_TYPE_DEFAULT, "Updating email controller state, authenticated:%@   signInComplete:%@", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
  {
    v9 = @"YES";
    if (v5)
    {
      v10 = @"YES";
    }

    else
    {
      v10 = @"NO";
    }

    if ((v5 & 4) == 0)
    {
      v9 = @"NO";
    }

    v15 = v10;
    v16 = v9;
    IMLogString();
  }

  if (v5)
  {
    if ((v5 & 4) != 0)
    {
      v12 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_243BE5000, v12, OS_LOG_TYPE_DEFAULT, "Handling finished state", buf, 2u);
      }

      if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
      {
        IMLogString();
      }

      if ([(CNFRegFirstRunController *)self pushCompletionControllerIfPossible:v15])
      {
        v13 = 1;
      }

      else
      {
        v13 = [(CNFRegFirstRunController *)self dismissWithState:v5];
      }

      CNFAssert(v13, 7, @"Finished email verification but no action was taken");
    }

    else
    {
      [(CNFRegFirstRunController *)self _refreshNavBarAnimated:0];
    }
  }

  else
  {
    navigationController = [(CNFRegEmailController *)self navigationController];
    [navigationController popToSigninControllerAnimated:1];
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (id)emailTextField
{
  v2 = [(CNFRegEmailController *)self cachedCellForSpecifier:self->_emailSpecifier];
  editableTextField = [v2 editableTextField];
  v4 = CNFRegGlobalAppearanceController();
  [editableTextField setKeyboardAppearance:{objc_msgSend(v4, "keyboardAppearance")}];

  return editableTextField;
}

- (BOOL)emailFieldIsEmpty
{
  emailTextField = [(CNFRegEmailController *)self emailTextField];
  text = [emailTextField text];

  if (text)
  {
    v4 = [text length] == 0;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)emailFieldEmptyStateChanged:(id)changed forSpecifier:(id)specifier
{
  bOOLValue = [changed BOOLValue];
  navigationItem = [(CNFRegEmailController *)self navigationItem];
  rightBarButtonItem = [navigationItem rightBarButtonItem];
  [rightBarButtonItem setEnabled:bOOLValue ^ 1u];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v21.receiver = self;
  v21.super_class = CNFRegEmailController;
  pathCopy = path;
  v7 = [(CNFRegEmailController *)&v21 tableView:view cellForRowAtIndexPath:pathCopy];
  v8 = [(CNFRegEmailController *)self indexForIndexPath:pathCopy, v21.receiver, v21.super_class];

  if (v8 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = [*(&self->super.super.super.super.super.super.super.isa + *MEMORY[0x277D3FC48]) objectAtIndex:v8];
    v10 = [v9 propertyForKey:@"cnfreg-alias-checked"];

    if (v10)
    {
      [v7 setChecked:{objc_msgSend(v10, "BOOLValue")}];
    }
  }

  if (CNFRegGlobalAppearanceStyle() == 6 || CNFRegGlobalAppearanceStyle() == 5)
  {
    clearColor = [MEMORY[0x277D75348] clearColor];
    [v7 setBackgroundColor:clearColor];
  }

  v12 = [(CNFRegEmailController *)self cachedCellForSpecifierID:@"FACETIME_EMAIL_ID"];

  if (v7 == v12)
  {
    v13 = +[CNFRegAppearanceController globalAppearanceController];
    if ([v13 styleUsesCustomTableStyle])
    {
      tableCellTextLabelColor = [v13 tableCellTextLabelColor];

      if (tableCellTextLabelColor)
      {
        tableCellTextLabelColor2 = [v13 tableCellTextLabelColor];
        editableTextField = [v7 editableTextField];
        _placeholderLabel = [editableTextField _placeholderLabel];
        [_placeholderLabel setTextColor:tableCellTextLabelColor2];

        tableCellTextLabelColor3 = [v13 tableCellTextLabelColor];
        editableTextField2 = [v7 editableTextField];
        [editableTextField2 setTextColor:tableCellTextLabelColor3];
      }
    }
  }

  return v7;
}

- (double)timeoutDuration
{
  v3 = CUTWeakLinkClass();
  if (v3 && ([v3 hasActiveAccounts] & 1) != 0 || (v4 = 18.0, -[CNFRegEmailController shouldShowAllVettedAliases](self, "shouldShowAllVettedAliases")))
  {
    v4 = 75.0;
  }

  cNFRegEmailValidationTimeout = [MEMORY[0x277CBEBD0] CNFRegEmailValidationTimeout];
  result = cNFRegEmailValidationTimeout;
  if (!cNFRegEmailValidationTimeout)
  {
    return v4;
  }

  return result;
}

- (void)stopValidationTimeoutTimer
{
  if (self->_validationTimeoutTimer)
  {
    v3 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_243BE5000, v3, OS_LOG_TYPE_DEFAULT, "Stopping validation timer", v5, 2u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (IMShouldLog())
      {
        IMLogString();
      }
    }

    [(NSTimer *)self->_validationTimeoutTimer invalidate];
    validationTimeoutTimer = self->_validationTimeoutTimer;
    self->_validationTimeoutTimer = 0;
  }
}

- (void)startValidationTimeoutTimer
{
  v12 = *MEMORY[0x277D85DE8];
  if (self->_validationTimeoutTimer)
  {
    [(CNFRegEmailController *)self stopValidationTimeoutTimer];
  }

  [(CNFRegEmailController *)self timeoutDuration];
  v4 = v3;
  v5 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v11 = v4;
    _os_log_impl(&dword_243BE5000, v5, OS_LOG_TYPE_DEFAULT, "Starting validation timer with duration %0.3f", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
  {
    v9 = v4;
    IMLogString();
  }

  v6 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:self target:sel_validationTimeout_ selector:0 userInfo:0 repeats:{v4, *&v9}];
  validationTimeoutTimer = self->_validationTimeoutTimer;
  self->_validationTimeoutTimer = v6;

  v8 = *MEMORY[0x277D85DE8];
}

- (void)validationTimeout:(id)timeout
{
  timeoutCopy = timeout;
  v5 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v19 = 0;
    _os_log_impl(&dword_243BE5000, v5, OS_LOG_TYPE_DEFAULT, "Validation timeout occurred", v19, 2u);
  }

  if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
  {
    IMLogString();
  }

  [(CNFRegEmailController *)self _stopValidationModeAnimated:1];
  [(CNFRegEmailController *)self stopValidationTimeoutTimer];
  navigationItem = [(CNFRegEmailController *)self navigationItem];
  rightBarButtonItem = [navigationItem rightBarButtonItem];
  [rightBarButtonItem setEnabled:1];

  if ([(CNFRegEmailController *)self shouldShowAllVettedAliases])
  {
    v8 = CommunicationsSetupUIBundle();
    v9 = CNFRegStringTableName();
    v10 = [v8 localizedStringForKey:@"FACETIME_ACTIVATION_ERROR_TITLE" value:&stru_2856D3978 table:v9];

    v11 = CommunicationsSetupUIBundle();
    v12 = CNFRegStringTableName();
    v13 = [v11 localizedStringForKey:@"FACETIME_ACTIVATION_ERROR_GENERIC" value:&stru_2856D3978 table:v12];

    v14 = CommunicationsSetupUIBundle();
    v15 = CNFRegStringTableName();
    v16 = [v14 localizedStringForKey:@"FACETIME_ALERT_OK" value:&stru_2856D3978 table:v15];

    v17 = [MEMORY[0x277D75110] alertControllerWithTitle:v10 message:v13 preferredStyle:1];
    v18 = [MEMORY[0x277D750F8] actionWithTitle:v16 style:0 handler:0];
    [v17 addAction:v18];

    [(CNFRegEmailController *)self presentViewController:v17 animated:1 completion:0];
  }

  else
  {
    [(CNFRegEmailController *)self _showCheckMailButton:1 animated:1];
  }
}

- (void)_buildEmailSpecifierCache:(id)cache
{
  v4 = [cache specifierForID:@"FACETIME_EMAIL_ID"];
  emailSpecifier = self->_emailSpecifier;
  self->_emailSpecifier = v4;

  MEMORY[0x2821F96F8]();
}

- (void)_buildActionGroupSpecifierCache:(id)cache
{
  v4 = [cache specifierForID:@"FACETIME_EMAIL_BUTTON_GROUP_ID"];
  actionGroupSpecifier = self->_actionGroupSpecifier;
  self->_actionGroupSpecifier = v4;

  MEMORY[0x2821F96F8]();
}

- (void)_buildCheckMailSpecifierCache:(id)cache
{
  cacheCopy = cache;
  v9 = [cacheCopy specifierForID:@"FACETIME_EMAIL_CHECK_MAIL_GROUP_ID"];
  v6 = [cacheCopy specifierForID:@"FACETIME_EMAIL_CHECK_MAIL_ID"];

  if (!v9 || !v6)
  {
    [(CNFRegEmailController *)a2 _buildCheckMailSpecifierCache:?];
  }

  v7 = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{v9, v6, 0}];
  checkMailSpecifiers = self->_checkMailSpecifiers;
  self->_checkMailSpecifiers = v7;
}

- (void)_buildSpecifierCache:(id)cache
{
  cacheCopy = cache;
  [(CNFRegEmailController *)self _buildEmailSpecifierCache:cacheCopy];
  [(CNFRegEmailController *)self _buildCheckMailSpecifierCache:cacheCopy];
  [(CNFRegEmailController *)self _buildActionGroupSpecifierCache:cacheCopy];
}

- (void)_setupEventHandlers
{
  v8.receiver = self;
  v8.super_class = CNFRegEmailController;
  [(CNFRegFirstRunController *)&v8 _setupEventHandlers];
  regController = [(CNFRegListController *)self regController];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __44__CNFRegEmailController__setupEventHandlers__block_invoke;
  v7[3] = &unk_278DE85A8;
  v7[4] = self;
  [regController setAccountRegistrationBlock:v7];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __44__CNFRegEmailController__setupEventHandlers__block_invoke_2;
  v6[3] = &unk_278DE85D0;
  v6[4] = self;
  [regController setAliasAddedBlock:v6];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __44__CNFRegEmailController__setupEventHandlers__block_invoke_243;
  v5[3] = &unk_278DE85F8;
  v5[4] = self;
  [regController setAliasStatusChangedBlock:v5];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __44__CNFRegEmailController__setupEventHandlers__block_invoke_248;
  v4[3] = &unk_278DE8580;
  v4[4] = self;
  [regController setVettedAliasesChangedBlock:v4];
}

void __44__CNFRegEmailController__setupEventHandlers__block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if ([v4 CNFRegSignInComplete])
  {
    [*(a1 + 32) _finishValidation];
  }

  else if ([v4 CNFRegSignInFailed])
  {
    [*(a1 + 32) stopValidationTimeoutTimer];
    [*(a1 + 32) _stopValidationModeAnimated:0];
    v3 = [*(a1 + 32) navigationController];
    [v3 popToSigninControllerAnimated:1];
  }
}

void __44__CNFRegEmailController__setupEventHandlers__block_invoke_2(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v10 = v3;
    _os_log_impl(&dword_243BE5000, v4, OS_LOG_TYPE_DEFAULT, "Alias added: %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
  {
    v8 = v3;
    IMLogString();
  }

  v5 = [v3 account];
  v6 = [v5 CNFRegSignInComplete];

  if (v6)
  {
    [*(a1 + 32) _finishValidation];
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __44__CNFRegEmailController__setupEventHandlers__block_invoke_243(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v14 = v5;
    _os_log_impl(&dword_243BE5000, v7, OS_LOG_TYPE_DEFAULT, "Got alias status change: %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
  {
    v12 = v5;
    IMLogString();
  }

  v8 = [v5 account];
  v9 = [*(a1 + 32) account];
  v10 = v8 == v9;

  if (v10 && [v5 validationStatus] == -1)
  {
    [*(a1 + 32) _failValidationWithError:v6];
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __44__CNFRegEmailController__setupEventHandlers__block_invoke_248(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v10 = v3;
    _os_log_impl(&dword_243BE5000, v4, OS_LOG_TYPE_DEFAULT, "Got vetted aliases change: %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
  {
    IMLogString();
  }

  v5 = *(a1 + 32);
  if ((v5[1608] & 1) == 0)
  {
    v6 = [v5 account];
    v7 = v6 == v3;

    if (v7)
    {
      [*(a1 + 32) reloadSpecifiers];
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_buildCheckMailSpecifierCache:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"CNFRegEmailController.m" lineNumber:866 description:@"Could not retrieve check mail button from plist"];
}

@end