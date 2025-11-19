@interface CNFRegEmailController
- (BOOL)_phoneNumberInAliases:(id)a3;
- (BOOL)emailFieldIsEmpty;
- (BOOL)onlyLocalPhoneNumberSentinelAliasIsSelected;
- (BOOL)shouldShowAllVettedAliases;
- (double)timeoutDuration;
- (id)_createSpecifierForAlias:(id)a3;
- (id)_rightButtonItem;
- (id)aliasSpecifiers;
- (id)emailTextField;
- (id)selectedAliases;
- (id)specifierList;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (void)_buildActionGroupSpecifierCache:(id)a3;
- (void)_buildCheckMailSpecifierCache:(id)a3;
- (void)_buildEmailSpecifierCache:(id)a3;
- (void)_buildSpecifierCache:(id)a3;
- (void)_failValidationWithError:(id)a3;
- (void)_finishValidation;
- (void)_handleValidationModeCancelled;
- (void)_refreshEnabledStateOfAliasSpecifiers;
- (void)_returnKeyPressed;
- (void)_setupEventHandlers;
- (void)_updateControllerState;
- (void)_updateUI;
- (void)checkMailTapped:(id)a3;
- (void)dealloc;
- (void)emailFieldEmptyStateChanged:(id)a3 forSpecifier:(id)a4;
- (void)nextTapped;
- (void)setAliasSelected:(id)a3;
- (void)startValidationTimeoutTimer;
- (void)stopValidationTimeoutTimer;
- (void)systemApplicationDidEnterBackground;
- (void)systemApplicationWillEnterForeground;
- (void)validationTimeout:(id)a3;
- (void)viewDidLoad;
@end

@implementation CNFRegEmailController

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

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
    v4 = [MEMORY[0x277D75348] clearColor];
    [v3 setBackgroundColor:v4];
  }

  else if (CNFRegGlobalAppearanceStyle() == 5)
  {
    v5 = *MEMORY[0x277D3FC60];
    v6 = *(&self->super.super.super.super.super.super.super.isa + v5);
    v7 = [MEMORY[0x277D75348] clearColor];
    [v6 setBackgroundColor:v7];

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
  v5 = [(CNFRegEmailController *)self shouldShowAllVettedAliases];
  v6 = [(CNFRegListController *)self regController];
  v7 = MEMORY[0x277CBEA60];
  v8 = [(CNFRegFirstRunController *)self account];
  v9 = [v7 arrayWithObject:v8];
  v10 = [v6 vettedAliasesForAccounts:v9];

  v11 = [v4 specifierForID:@"FACETIME_EMAIL_DESCRIPTION_GROUP_ID"];
  if (v5 && [v10 count] > 1)
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
    if (v5 && [v10 count])
    {
      v28 = [v4 specifierForID:@"FACETIME_EMAIL_ID"];
      [v4 removeObject:v28];
      v42[0] = MEMORY[0x277D85DD0];
      v42[1] = 3221225472;
      v42[2] = __38__CNFRegEmailController_specifierList__block_invoke;
      v42[3] = &unk_278DE83B0;
      v43 = v4;
      v44 = self;
      v45 = v27;
      [v10 enumerateObjectsWithOptions:2 usingBlock:v42];
    }

    if (CNFRegSupportsLocalPhoneNumberSentinelAlias())
    {
      v29 = [(CNFRegListController *)self regController];
      v30 = [v29 localPhoneNumberSentinelAlias];

      if (v30)
      {
        v31 = [(CNFRegEmailController *)self _createSpecifierForAlias:v30];
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
  v36 = [(CNFRegEmailController *)self navigationItem];
  v37 = [v36 rightBarButtonItem];
  [v37 setEnabled:0];

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
  v3 = [(CNFRegListController *)self regController];
  v4 = MEMORY[0x277CBEA60];
  v5 = [(CNFRegFirstRunController *)self account];
  v6 = [v4 arrayWithObject:v5];
  v7 = [v3 vettedAliasesForAccounts:v6];
  v8 = [v7 count] != 0;

  return v8;
}

- (BOOL)_phoneNumberInAliases:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = a3;
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v3);
        }

        if ([*(*(&v9 + 1) + 8 * i) type] == 2)
        {
          LOBYTE(v4) = 1;
          goto LABEL_11;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
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

- (id)_createSpecifierForAlias:(id)a3
{
  v4 = a3;
  v5 = [v4 displayName];
  v6 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v5 target:self set:0 get:0 detail:0 cell:13 edit:0];
  [v6 setButtonAction:sel_setAliasSelected_];
  v7 = NSStringFromSelector(sel_setAliasSelected_);
  [v6 setProperty:v7 forKey:*MEMORY[0x277D3FE10]];

  v8 = [v4 isLocalPhoneNumberAlias];
  v9 = [MEMORY[0x277CCABB0] numberWithBool:v8 ^ 1u];
  [v6 setProperty:v9 forKey:*MEMORY[0x277D3FF38]];

  [v6 setProperty:objc_opt_class() forKey:*MEMORY[0x277D3FE58]];
  v10 = [v4 identifier];
  [v6 setProperty:v10 forKey:*MEMORY[0x277D3FFB8]];

  [v6 setProperty:v5 forKey:*MEMORY[0x277D40170]];
  v11 = [MEMORY[0x277CCABB0] numberWithInt:0];
  [v6 setProperty:v11 forKey:*MEMORY[0x277D3FD78]];

  [v6 setProperty:v4 forKey:@"cnfreg-alias"];
  v12 = [MEMORY[0x277CCABB0] numberWithBool:1];
  [v6 setProperty:v12 forKey:@"cnfreg-alias-checked"];

  return v6;
}

- (void)setAliasSelected:(id)a3
{
  v4 = a3;
  v5 = [v4 propertyForKey:@"cnfreg-alias-checked"];
  v6 = [v5 BOOLValue];

  v7 = [MEMORY[0x277CCABB0] numberWithBool:v6 ^ 1u];
  [v4 setProperty:v7 forKey:@"cnfreg-alias-checked"];

  v8 = [(CNFRegEmailController *)self cachedCellForSpecifier:v4];

  [v8 setChecked:v6 ^ 1u];

  [(CNFRegEmailController *)self _updateUI];
}

- (id)selectedAliases
{
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v2 = [(CNFRegEmailController *)self aliasSpecifiers];
  v3 = [v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v15 + 1) + 8 * i);
        v9 = [v8 propertyForKey:@"cnfreg-alias"];
        if (v9)
        {
          v10 = [v8 propertyForKey:@"cnfreg-alias-checked"];
          v11 = [v10 BOOLValue];

          if (v11)
          {
            if (!v5)
            {
              v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(*(&self->super.super.super.super.super.super.super.isa + *MEMORY[0x277D3FC48]), "count")}];
            }

            [v5 addObject:v9];
          }
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
  v2 = [(CNFRegEmailController *)self selectedAliases];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v2);
        }

        if (![*(*(&v8 + 1) + 8 * i) isLocalPhoneNumberAlias])
        {
          LOBYTE(v3) = 0;
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
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

  v3 = [(CNFRegEmailController *)self navigationItem];
  [v3 setRightBarButtonItem:0];

  v4 = [(CNFRegEmailController *)self navigationItem];
  [v4 setHidesBackButton:1];
}

- (void)_failValidationWithError:(id)a3
{
  v4 = a3;
  [(CNFRegEmailController *)self _stopValidationModeAnimated:1];
  [(CNFRegEmailController *)self stopValidationTimeoutTimer];
  v5 = [(CNFRegEmailController *)self navigationItem];
  v6 = [v5 rightBarButtonItem];
  [v6 setEnabled:1];

  v7 = [v4 userInfo];
  v8 = [v7 objectForKey:@"cnf-customTitle"];
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

  v13 = [v4 localizedDescription];
  v14 = v13;
  if (v13)
  {
    v15 = v13;
  }

  else
  {
    v16 = CommunicationsSetupUIBundle();
    v17 = CNFRegStringTableName();
    v15 = [v16 localizedStringForKey:@"FACETIME_SIGNIN_ERROR_GENERIC" value:&stru_2856D3978 table:v17];
  }

  v18 = [v4 userInfo];
  v19 = [v18 objectForKey:@"cnf-customButton"];
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

  v26 = [v4 userInfo];
  v27 = [v26 objectForKey:@"cnf-customActionTitle"];

  if (v27)
  {
    v28 = MEMORY[0x277D750F8];
    v29 = [v4 userInfo];
    v30 = [v29 objectForKey:@"cnf-customActionTitle"];
    v32 = MEMORY[0x277D85DD0];
    v33 = 3221225472;
    v34 = __50__CNFRegEmailController__failValidationWithError___block_invoke;
    v35 = &unk_278DE8420;
    v36 = v4;
    v37 = self;
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
  v3 = [(CNFRegListController *)self regController];
  if (![(CNFRegEmailController *)self shouldShowAllVettedAliases])
  {
    v18 = [(CNFRegEmailController *)self emailTextField];
    v4 = [v18 text];

    v19 = [v3 aliases];
    v20 = [v19 copy];

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
            v26 = [v25 alias];
            v27 = [v26 isEqualToString:v4];

            if ((v27 & 1) == 0)
            {
              v28 = [v25 alias];
              v29 = [v25 account];
              v30 = [v3 removeAlias:v28 fromAccount:v29];

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

    v31 = [v3 aliasNamed:v4];
    v32 = v31;
    if (v31)
    {
      if ([v31 validationStatus] == 3)
      {
        v33 = [v32 account];
        v34 = [v33 CNFRegSignInComplete];

        if (v34)
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

        v50 = [v32 account];
        [v50 registerAccount];

        goto LABEL_57;
      }

      v35 = [v32 validate];

      if ((v35 & 1) == 0)
      {
LABEL_50:
        v36 = CommunicationsSetupUIBundle();
        v37 = CNFRegStringTableName();
        v38 = [v36 localizedStringForKey:@"FACETIME_ACTIVATION_ERROR_TITLE" value:&stru_2856D3978 table:v37];

        v39 = MEMORY[0x277CCACA8];
        v40 = CommunicationsSetupUIBundle();
        v41 = CNFRegStringTableName();
        v42 = [v40 localizedStringForKey:@"FACETIME_EMAIL_UNABLE_TO_ADD_ALIAS_%@" value:&stru_2856D3978 table:v41];
        v43 = [v39 stringWithFormat:v42, v4];

        v44 = CommunicationsSetupUIBundle();
        v45 = CNFRegStringTableName();
        v46 = [v44 localizedStringForKey:@"FACETIME_ALERT_OK" value:&stru_2856D3978 table:v45];

        v47 = [MEMORY[0x277D75110] alertControllerWithTitle:v38 message:v43 preferredStyle:1];
        v48 = [MEMORY[0x277D750F8] actionWithTitle:v46 style:0 handler:0];
        [v47 addAction:v48];

        [(CNFRegEmailController *)self presentViewController:v47 animated:1 completion:0];
LABEL_60:

        goto LABEL_61;
      }
    }

    else if (![v3 addAlias:v4])
    {
      goto LABEL_50;
    }

LABEL_57:
    [(CNFRegEmailController *)self setPendingAlias:v4];
    v51 = [(CNFRegEmailController *)self cachedCellForSpecifier:self->_emailSpecifier];
    v38 = [v51 editableTextField];

    if (objc_opt_respondsToSelector())
    {
      [v38 resignFirstResponder];
    }

    [(CNFRegFirstRunController *)self _startValidationModeAnimated:0 allowCancel:1];
    [(CNFRegEmailController *)self _showCheckMailButton:0 animated:1];
    [(CNFRegEmailController *)self startValidationTimeoutTimer];
    goto LABEL_60;
  }

  v4 = [(CNFRegEmailController *)self selectedAliases];
  v5 = [v4 arrayByApplyingSelector:sel_alias];
  v6 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v63 = v4;
    _os_log_impl(&dword_243BE5000, v6, OS_LOG_TYPE_DEFAULT, "  => Selected aliases: %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
  {
    v53 = v4;
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

  v8 = [(CNFRegFirstRunController *)self account];
  [v3 setAliases:v5 onAccount:v8];

  v9 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [(CNFRegFirstRunController *)self account];
    v11 = [v10 aliases];
    v12 = [(CNFRegFirstRunController *)self account];
    *buf = 138412546;
    v63 = v11;
    v64 = 2112;
    v65 = v12;
    _os_log_impl(&dword_243BE5000, v9, OS_LOG_TYPE_DEFAULT, "Set aliases %@ on account %@", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
  {
    v13 = [(CNFRegFirstRunController *)self account];
    v14 = [v13 aliases];
    [(CNFRegFirstRunController *)self account];
    v55 = v54 = v14;
    IMLogString();
  }

  v15 = [(CNFRegFirstRunController *)self account:v54];
  v16 = [v15 CNFRegSignInComplete];

  if (v16)
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
    v3 = [(CNFRegEmailController *)self selectedAliases];
    v4 = [v3 count] != 0;
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

- (void)checkMailTapped:(id)a3
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
  v3 = [(CNFRegEmailController *)self pendingAlias];
  v4 = v3;
  if (v3 && [v3 length])
  {
    v5 = [(CNFRegListController *)self regController];
    v6 = [v5 aliasNamed:v4];

    v7 = [(CNFRegListController *)self regController];
    v8 = [v6 alias];
    v9 = [v6 account];
    [v7 removeAlias:v8 fromAccount:v9];
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
  v2 = self;
  v25 = *MEMORY[0x277D85DE8];
  v3 = [(CNFRegEmailController *)self selectedAliases];
  v4 = [v3 count];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = [(CNFRegEmailController *)v2 aliasSpecifiers];
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
            v13 = v12 = v2;
            v14 = [v13 BOOLValue];

            v2 = v12;
            v4 = 1;
            v6 = v18;
            v15 = v14 ^ 1;
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

          [(CNFRegEmailController *)v2 reloadSpecifier:v10];
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
  v3 = [(CNFRegListController *)self regController];
  v4 = [(CNFRegEmailController *)self pendingAlias];
  v5 = [v3 aliasNamed:v4];

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
      v7 = [(CNFRegEmailController *)self selectedAliases];
      LOBYTE(v8) = [v7 count] != 0;

      [(CNFRegEmailController *)self _refreshEnabledStateOfAliasSpecifiers];
    }

    else
    {
      v9 = [(CNFRegEmailController *)self pendingAlias];

      if (!v9)
      {
        v10 = [v3 guessedAlias];
        [(CNFRegEmailController *)self setPendingAlias:v10];
      }

      v8 = ![(CNFRegEmailController *)self emailFieldIsEmpty];
      v11 = [(CNFRegEmailController *)self pendingAlias];
      if (v11)
      {
        v12 = [(CNFRegEmailController *)self pendingAlias];
        v13 = [v12 length] != 0;

        LOBYTE(v8) = v13 | v8;
      }

      [(CNFRegEmailController *)self reloadSpecifier:self->_emailSpecifier animated:1];
    }

    v14 = [(CNFRegEmailController *)self navigationItem];
    v15 = [v14 rightBarButtonItem];
    [v15 setEnabled:v8 & 1];
  }
}

- (void)_updateControllerState
{
  v22 = *MEMORY[0x277D85DE8];
  v17.receiver = self;
  v17.super_class = CNFRegEmailController;
  [(CNFRegFirstRunController *)&v17 _updateControllerState];
  [(CNFRegEmailController *)self _updateUI];
  v3 = [(CNFRegListController *)self regController];
  v4 = [(CNFRegFirstRunController *)self account];
  v5 = [v3 accountStateForAccount:v4];

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
    v11 = [(CNFRegEmailController *)self navigationController];
    [v11 popToSigninControllerAnimated:1];
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (id)emailTextField
{
  v2 = [(CNFRegEmailController *)self cachedCellForSpecifier:self->_emailSpecifier];
  v3 = [v2 editableTextField];
  v4 = CNFRegGlobalAppearanceController();
  [v3 setKeyboardAppearance:{objc_msgSend(v4, "keyboardAppearance")}];

  return v3;
}

- (BOOL)emailFieldIsEmpty
{
  v2 = [(CNFRegEmailController *)self emailTextField];
  v3 = [v2 text];

  if (v3)
  {
    v4 = [v3 length] == 0;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)emailFieldEmptyStateChanged:(id)a3 forSpecifier:(id)a4
{
  v5 = [a3 BOOLValue];
  v7 = [(CNFRegEmailController *)self navigationItem];
  v6 = [v7 rightBarButtonItem];
  [v6 setEnabled:v5 ^ 1u];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v21.receiver = self;
  v21.super_class = CNFRegEmailController;
  v6 = a4;
  v7 = [(CNFRegEmailController *)&v21 tableView:a3 cellForRowAtIndexPath:v6];
  v8 = [(CNFRegEmailController *)self indexForIndexPath:v6, v21.receiver, v21.super_class];

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
    v11 = [MEMORY[0x277D75348] clearColor];
    [v7 setBackgroundColor:v11];
  }

  v12 = [(CNFRegEmailController *)self cachedCellForSpecifierID:@"FACETIME_EMAIL_ID"];

  if (v7 == v12)
  {
    v13 = +[CNFRegAppearanceController globalAppearanceController];
    if ([v13 styleUsesCustomTableStyle])
    {
      v14 = [v13 tableCellTextLabelColor];

      if (v14)
      {
        v15 = [v13 tableCellTextLabelColor];
        v16 = [v7 editableTextField];
        v17 = [v16 _placeholderLabel];
        [v17 setTextColor:v15];

        v18 = [v13 tableCellTextLabelColor];
        v19 = [v7 editableTextField];
        [v19 setTextColor:v18];
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

  v5 = [MEMORY[0x277CBEBD0] CNFRegEmailValidationTimeout];
  result = v5;
  if (!v5)
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

- (void)validationTimeout:(id)a3
{
  v4 = a3;
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
  v6 = [(CNFRegEmailController *)self navigationItem];
  v7 = [v6 rightBarButtonItem];
  [v7 setEnabled:1];

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

- (void)_buildEmailSpecifierCache:(id)a3
{
  v4 = [a3 specifierForID:@"FACETIME_EMAIL_ID"];
  emailSpecifier = self->_emailSpecifier;
  self->_emailSpecifier = v4;

  MEMORY[0x2821F96F8]();
}

- (void)_buildActionGroupSpecifierCache:(id)a3
{
  v4 = [a3 specifierForID:@"FACETIME_EMAIL_BUTTON_GROUP_ID"];
  actionGroupSpecifier = self->_actionGroupSpecifier;
  self->_actionGroupSpecifier = v4;

  MEMORY[0x2821F96F8]();
}

- (void)_buildCheckMailSpecifierCache:(id)a3
{
  v5 = a3;
  v9 = [v5 specifierForID:@"FACETIME_EMAIL_CHECK_MAIL_GROUP_ID"];
  v6 = [v5 specifierForID:@"FACETIME_EMAIL_CHECK_MAIL_ID"];

  if (!v9 || !v6)
  {
    [(CNFRegEmailController *)a2 _buildCheckMailSpecifierCache:?];
  }

  v7 = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{v9, v6, 0}];
  checkMailSpecifiers = self->_checkMailSpecifiers;
  self->_checkMailSpecifiers = v7;
}

- (void)_buildSpecifierCache:(id)a3
{
  v4 = a3;
  [(CNFRegEmailController *)self _buildEmailSpecifierCache:v4];
  [(CNFRegEmailController *)self _buildCheckMailSpecifierCache:v4];
  [(CNFRegEmailController *)self _buildActionGroupSpecifierCache:v4];
}

- (void)_setupEventHandlers
{
  v8.receiver = self;
  v8.super_class = CNFRegEmailController;
  [(CNFRegFirstRunController *)&v8 _setupEventHandlers];
  v3 = [(CNFRegListController *)self regController];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __44__CNFRegEmailController__setupEventHandlers__block_invoke;
  v7[3] = &unk_278DE85A8;
  v7[4] = self;
  [v3 setAccountRegistrationBlock:v7];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __44__CNFRegEmailController__setupEventHandlers__block_invoke_2;
  v6[3] = &unk_278DE85D0;
  v6[4] = self;
  [v3 setAliasAddedBlock:v6];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __44__CNFRegEmailController__setupEventHandlers__block_invoke_243;
  v5[3] = &unk_278DE85F8;
  v5[4] = self;
  [v3 setAliasStatusChangedBlock:v5];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __44__CNFRegEmailController__setupEventHandlers__block_invoke_248;
  v4[3] = &unk_278DE8580;
  v4[4] = self;
  [v3 setVettedAliasesChangedBlock:v4];
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