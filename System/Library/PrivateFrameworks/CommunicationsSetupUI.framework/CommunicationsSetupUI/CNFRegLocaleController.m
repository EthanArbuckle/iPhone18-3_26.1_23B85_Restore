@interface CNFRegLocaleController
- (CNFRegLocaleController)initWithRegController:(id)a3;
- (id)_currentRegion;
- (id)_phoneTextField;
- (id)_rightButtonItem;
- (id)_unformattedPhoneNumber:(id)a3;
- (id)controllerForSpecifier:(id)a3;
- (id)currentCountryValueForSpecifier:(id)a3;
- (id)currentPhoneCompatibleCountryCode;
- (id)currentPhoneNumberForSpecifier:(id)a3;
- (id)specifierList;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)validationString;
- (void)_buildCountryFieldSpecifierCache:(id)a3;
- (void)_buildPhoneNumberSpecifierCache:(id)a3;
- (void)_buildSpecifierCache:(id)a3;
- (void)_failValidationWithError:(id)a3;
- (void)_finishValidation;
- (void)_handleRegionListLoad;
- (void)_handleTimeout;
- (void)_loadInitialValues;
- (void)_loadRegionsIfNecessary;
- (void)_rightButtonTapped;
- (void)_setupEventHandlers;
- (void)_startListeningForRegionListChanges;
- (void)_stopListeningForRegionListChanges;
- (void)_updateControllerState;
- (void)_updateUI;
- (void)dismiss;
- (void)regionChooser:(id)a3 selectedRegionID:(id)a4;
- (void)setCurrentPhoneNumber:(id)a3 forSpecifier:(id)a4;
@end

@implementation CNFRegLocaleController

- (CNFRegLocaleController)initWithRegController:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v20.receiver = self;
  v20.super_class = CNFRegLocaleController;
  v5 = [(CNFRegFirstRunController *)&v20 initWithRegController:v4];
  if (v5)
  {
    v6 = [MEMORY[0x277D07DE8] sharedInstance];
    if ([v6 isLoaded])
    {
      v7 = [v6 regions];
      [(CNFRegLocaleController *)v5 setRegionData:v7];
    }

    else
    {
      [(CNFRegLocaleController *)v5 _loadRegionsIfNecessary];
    }

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v8 = [v4 appleIDAccounts];
    v9 = [v8 countByEnumeratingWithState:&v16 objects:v21 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v17;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v16 + 1) + 8 * i);
          if ([v13 profileValidationStatus] != 3)
          {
            [(CNFRegFirstRunController *)v5 setAccount:v13];
            goto LABEL_15;
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v16 objects:v21 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

LABEL_15:
  }

  v14 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)dismiss
{
  [(CNFRegLocaleController *)self dismissModalViewControllerWithTransition:7];
  v3 = [(CNFRegLocaleController *)self completionBlock];

  if (v3)
  {
    v4 = [(CNFRegLocaleController *)self completionBlock];
    v4[2](v4, 0);
  }
}

- (id)specifierList
{
  v3 = *MEMORY[0x277D3FC48];
  v4 = *(&self->super.super.super.super.super.super.super.isa + v3);
  if (!v4)
  {
    v5 = CNFRegLoadSpecifiersFromPlist(self, @"CNFRegLocale", self);
    v6 = [v5 specifierForID:@"FACETIME_LOCALE_DESCRIPTION_GROUP_ID"];
    v7 = [v6 name];
    if ([v7 _isNaturallyRTL])
    {
      v8 = 2;
    }

    else
    {
      v8 = 0;
    }

    v9 = [MEMORY[0x277CCABB0] numberWithInteger:v8];
    [v6 setProperty:v9 forKey:*MEMORY[0x277D3FD78]];

    v10 = [v6 propertyForKey:*MEMORY[0x277D3FF88]];
    if ([v10 _isNaturallyRTL])
    {
      v11 = 2;
    }

    else
    {
      v11 = 0;
    }

    v12 = [MEMORY[0x277CCABB0] numberWithInteger:v11];
    [v6 setProperty:v12 forKey:*MEMORY[0x277D3FF40]];

    [(CNFRegLocaleController *)self _buildSpecifierCache:v5];
    [v5 removeObjectsInArray:self->_phoneNumberSpecifiers];
    v13 = *(&self->super.super.super.super.super.super.super.isa + v3);
    *(&self->super.super.super.super.super.super.super.isa + v3) = v5;

    v4 = *(&self->super.super.super.super.super.super.super.isa + v3);
  }

  return v4;
}

- (id)controllerForSpecifier:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4 || ([v4 identifier], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "isEqualToString:", @"FACETIME_LOCALE_COUNTRY_SELECT_ID"), v6, !v7) || (objc_msgSend(MEMORY[0x277CBEB68], "null"), v8 = objc_claimAutoreleasedReturnValue(), -[CNFRegLocaleController showCountryPicker](self, "showCountryPicker"), !v8))
  {
    v10.receiver = self;
    v10.super_class = CNFRegLocaleController;
    v8 = [(CNFRegLocaleController *)&v10 controllerForSpecifier:v5];
  }

  return v8;
}

- (id)validationString
{
  if (self->_isLoading)
  {
    v2 = CommunicationsSetupUIBundle();
    v3 = CNFRegStringTableName();
    v4 = [v2 localizedStringForKey:@"LOADING" value:&stru_2856D3978 table:v3];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = CNFRegLocaleController;
    v4 = [(CNFRegFirstRunController *)&v6 validationString];
  }

  return v4;
}

- (void)_loadRegionsIfNecessary
{
  v4 = [MEMORY[0x277D07DE8] sharedInstance];
  v3 = [v4 isLoaded];
  self->_isLoading = v3 ^ 1;
  if ((v3 & 1) == 0)
  {
    [(CNFRegLocaleController *)self _startListeningForRegionListChanges];
    [v4 startLoading];
  }
}

- (void)_loadInitialValues
{
  v3 = [(CNFRegListController *)self regController];
  v4 = [v3 appleIDAccounts];

  if (v4 && [v4 count])
  {
    v16 = [v4 objectAtIndex:0];
  }

  else
  {
    v16 = 0;
  }

  v5 = [(CNFRegLocaleController *)self currentRegionID];
  if (!v5 || (v6 = v5, -[CNFRegLocaleController currentRegionID](self, "currentRegionID"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 length], v7, v6, !v8))
  {
    v9 = [v16 profileStringForKey:*MEMORY[0x277D18C50]];
    [(CNFRegLocaleController *)self setCurrentRegionID:v9];
  }

  v10 = [(CNFRegLocaleController *)self currentPhoneValue];
  if (!v10 || (v11 = v10, -[CNFRegLocaleController currentPhoneValue](self, "currentPhoneValue"), v12 = objc_claimAutoreleasedReturnValue(), v13 = [v12 length], v12, v11, !v13))
  {
    v14 = [v16 profileStringForKey:*MEMORY[0x277D18C40]];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [(CNFRegLocaleController *)self _unformattedPhoneNumber:v14];
      [(CNFRegLocaleController *)self setCurrentPhoneValue:v15];
    }
  }
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v9.receiver = self;
  v9.super_class = CNFRegLocaleController;
  v4 = [(CNFRegLocaleController *)&v9 tableView:a3 cellForRowAtIndexPath:a4];
  v5 = +[CNFRegAppearanceController globalAppearanceController];
  if ([v5 styleUsesCustomAccessoryView])
  {
    if ([v4 accessoryType] == 1)
    {
      v6 = [v5 tableCellCustomAccessoryViewDisclosureIndicator];
      if (v6)
      {
        v7 = v6;
        [v4 setAccessoryView:v6];
      }
    }
  }

  return v4;
}

- (void)_startListeningForRegionListChanges
{
  if (!self->_regionListChangeObserver)
  {
    v3 = [MEMORY[0x277CCAB98] defaultCenter];
    v4 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_243BE5000, v4, OS_LOG_TYPE_DEFAULT, "Started listening for region list loading notifications", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (IMShouldLog())
      {
        IMLogString();
      }
    }

    v5 = *MEMORY[0x277D07D90];
    v6 = [MEMORY[0x277D07DE8] sharedInstance];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __61__CNFRegLocaleController__startListeningForRegionListChanges__block_invoke;
    v10[3] = &unk_278DE8900;
    v10[4] = self;
    v7 = MEMORY[0x245D4D850](v10);
    v8 = [v3 addObserverForName:v5 object:v6 queue:0 usingBlock:v7];
    regionListChangeObserver = self->_regionListChangeObserver;
    self->_regionListChangeObserver = v8;
  }
}

void __61__CNFRegLocaleController__startListeningForRegionListChanges__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_243BE5000, v4, OS_LOG_TYPE_DEFAULT, "Region list finished loading", v5, 2u);
  }

  if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
  {
    IMLogString();
  }

  [*(a1 + 32) _handleRegionListLoad];
}

- (void)_stopListeningForRegionListChanges
{
  if (self->_regionListChangeObserver)
  {
    v3 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_243BE5000, v3, OS_LOG_TYPE_DEFAULT, "Stopped listening for region list loading notifications", v6, 2u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (IMShouldLog())
      {
        IMLogString();
      }
    }

    v4 = [MEMORY[0x277CCAB98] defaultCenter];
    [v4 removeObserver:self->_regionListChangeObserver];
    regionListChangeObserver = self->_regionListChangeObserver;
    self->_regionListChangeObserver = 0;
  }
}

- (void)_handleRegionListLoad
{
  [(CNFRegLocaleController *)self _stopListeningForRegionListChanges];
  v4 = [MEMORY[0x277D07DE8] sharedInstance];
  v3 = [v4 regions];
  [(CNFRegLocaleController *)self setRegionData:v3];

  self->_isLoading = 0;
  if ([(CNFRegLocaleController *)self isViewLoaded])
  {
    [(CNFRegLocaleController *)self _updateUI];
    [(CNFRegFirstRunController *)self _stopValidationModeAnimated:1];
  }
}

- (void)_updateUI
{
  v20.receiver = self;
  v20.super_class = CNFRegLocaleController;
  [(CNFRegFirstRunController *)&v20 _updateUI];
  isLoading = self->_isLoading;
  v4 = *MEMORY[0x277D3FF38];
  v5 = [(PSSpecifier *)self->_countryFieldSpecifier propertyForKey:*MEMORY[0x277D3FF38]];
  v6 = [v5 BOOLValue];

  if (v6 == isLoading)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithBool:isLoading ^ 1u];
    [(PSSpecifier *)self->_countryFieldSpecifier setProperty:v7 forKey:v4];
  }

  [(CNFRegLocaleController *)self _refreshCountryFieldAnimated:0];
  [(CNFRegLocaleController *)self _refreshPhoneFieldAnimated:0];
  v8 = [(CNFRegLocaleController *)self _currentRegion];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 basePhoneNumber];
    v11 = v10;
    if (v10)
    {
      v12 = [v10 length] == 0;
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  [(CNFRegLocaleController *)self _showPhoneField:v12 animated:0];
  v13 = [(CNFRegFirstRunController *)self account];
  v14 = [v13 profileValueForKey:*MEMORY[0x277D18C50]];
  v15 = [(CNFRegLocaleController *)self currentRegionID];
  v16 = [v14 isEqualToString:v15];

  v17 = [v13 profileValueForKey:*MEMORY[0x277D18C40]];
  v18 = [(CNFRegLocaleController *)self currentPhoneValue];
  v19 = [v17 isEqualToString:v18];

  if (!self->_isLoading)
  {
    if ((v16 & v19) != 1 || [v13 profileValidationStatus] != 2)
    {
      [(CNFRegFirstRunController *)self _stopValidationModeAnimated:0];
      goto LABEL_15;
    }

    [(CNFRegLocaleController *)self _startTimeout];
  }

  [(CNFRegFirstRunController *)self _startValidationModeAnimated:0];
LABEL_15:
}

- (void)_updateControllerState
{
  v16 = *MEMORY[0x277D85DE8];
  v13.receiver = self;
  v13.super_class = CNFRegLocaleController;
  [(CNFRegFirstRunController *)&v13 _updateControllerState];
  [(CNFRegLocaleController *)self _updateUI];
  v3 = [(CNFRegListController *)self regController];
  v4 = [(CNFRegFirstRunController *)self account];
  v5 = [v3 accountStateForAccount:v4];

  v6 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"NO";
    if ((v5 & 2) != 0)
    {
      v7 = @"YES";
    }

    *buf = 138412290;
    v15 = v7;
    _os_log_impl(&dword_243BE5000, v6, OS_LOG_TYPE_DEFAULT, "Popping controller. Has local dialing support? %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
  {
    v8 = @"NO";
    if ((v5 & 2) != 0)
    {
      v8 = @"YES";
    }

    v12 = v8;
    IMLogString();
  }

  [(CNFRegLocaleController *)self dismissModalViewControllerWithTransition:7, v12];
  v9 = [(CNFRegLocaleController *)self completionBlock];

  if (v9)
  {
    v10 = [(CNFRegLocaleController *)self completionBlock];
    v10[2](v10, (v5 >> 1) & 1);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (id)_currentRegion
{
  v3 = [MEMORY[0x277D07DE8] sharedInstance];
  v4 = [(CNFRegLocaleController *)self currentRegionID];
  v5 = [v3 regionForID:v4];

  return v5;
}

- (id)currentCountryValueForSpecifier:(id)a3
{
  v4 = a3;
  if (self->_isLoading)
  {
    v5 = CommunicationsSetupUIBundle();
    v6 = CNFRegStringTableName();
    v7 = @"LOADING";
LABEL_5:
    v8 = [v5 localizedStringForKey:v7 value:&stru_2856D3978 table:v6];

    goto LABEL_6;
  }

  if (self->_isError)
  {
    v5 = CommunicationsSetupUIBundle();
    v6 = CNFRegStringTableName();
    v7 = @"ERROR";
    goto LABEL_5;
  }

  v10 = [(CNFRegLocaleController *)self _currentRegion];
  v5 = v10;
  if (v10)
  {
    v8 = [v10 label];
  }

  else
  {
    v8 = &stru_2856D3978;
  }

LABEL_6:

  return v8;
}

- (id)_phoneTextField
{
  v2 = [(CNFRegLocaleController *)self cachedCellForSpecifier:self->_phoneNumberFieldSpecifier];
  v3 = [v2 editableTextField];

  return v3;
}

- (id)currentPhoneCompatibleCountryCode
{
  v2 = [(CNFRegLocaleController *)self _currentRegion];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 isoCode];
  }

  else
  {
    v4 = 0;
  }

  v5 = [v4 lowercaseString];

  return v5;
}

- (id)_unformattedPhoneNumber:(id)a3
{
  if (a3)
  {
    v4 = _PNCreateStringByStrippingFormattingAndNotVisiblyAllowable();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)currentPhoneNumberForSpecifier:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(CNFRegLocaleController *)self currentPhoneValue];
  v6 = [(CNFRegLocaleController *)self currentPhoneCompatibleCountryCode];
  if (v6)
  {
    v7 = [(CNFRegLocaleController *)self currentPhoneValue];
    v8 = PNCopyFormattedStringWithCountry();

    v9 = v8;
    v10 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v15 = v6;
      v16 = 2112;
      v17 = v9;
      _os_log_impl(&dword_243BE5000, v10, OS_LOG_TYPE_DEFAULT, "Getting formatted phone number {%@}: %@", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
    {
      IMLogString();
    }
  }

  else
  {
    v11 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v15 = v5;
      _os_log_impl(&dword_243BE5000, v11, OS_LOG_TYPE_DEFAULT, "Getting unformatted phone number: %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
    {
      IMLogString();
    }

    v9 = v5;
  }

  v12 = *MEMORY[0x277D85DE8];

  return v9;
}

- (void)setCurrentPhoneNumber:(id)a3 forSpecifier:(id)a4
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(CNFRegLocaleController *)self _unformattedPhoneNumber:v6];
  v9 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v13 = v8;
    _os_log_impl(&dword_243BE5000, v9, OS_LOG_TYPE_DEFAULT, "Setting unformatted phone number: %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
  {
    v11 = v8;
    IMLogString();
  }

  [(CNFRegLocaleController *)self setCurrentPhoneValue:v8, v11];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_failValidationWithError:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v20 = v4;
    _os_log_impl(&dword_243BE5000, v5, OS_LOG_TYPE_DEFAULT, "_failValidationWithError: %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
  {
    v18 = v4;
    IMLogString();
  }

  [(CNFRegFirstRunController *)self _stopValidationModeAnimated:1, v18];
  v6 = CommunicationsSetupUIBundle();
  v7 = CNFRegStringTableName();
  v8 = [v6 localizedStringForKey:@"FACETIME_ACTIVATION_ERROR_TITLE" value:&stru_2856D3978 table:v7];

  v9 = [v4 localizedDescription];
  if (!v9)
  {
    v10 = CommunicationsSetupUIBundle();
    v11 = CNFRegStringTableName();
    v9 = [v10 localizedStringForKey:@"FACETIME_ACTIVATION_ERROR_GENERIC" value:&stru_2856D3978 table:v11];
  }

  v12 = CommunicationsSetupUIBundle();
  v13 = CNFRegStringTableName();
  v14 = [v12 localizedStringForKey:@"FACETIME_ALERT_OK" value:&stru_2856D3978 table:v13];

  v15 = [MEMORY[0x277D75110] alertControllerWithTitle:v8 message:v9 preferredStyle:1];
  v16 = [MEMORY[0x277D750F8] actionWithTitle:v14 style:0 handler:0];
  [v15 addAction:v16];

  [(CNFRegLocaleController *)self presentViewController:v15 animated:1 completion:0];
  v17 = *MEMORY[0x277D85DE8];
}

- (void)_finishValidation
{
  [(CNFRegFirstRunController *)self _stopValidationModeAnimated:1];
  v3 = [(CNFRegLocaleController *)self navigationItem];
  [v3 setRightBarButtonItem:0];

  v4 = [(CNFRegLocaleController *)self navigationItem];
  [v4 setLeftBarButtonItem:0];

  v5 = [(CNFRegLocaleController *)self navigationItem];
  [v5 setHidesBackButton:1];

  [(CNFRegLocaleController *)self _updateControllerState];
}

- (id)_rightButtonItem
{
  v3 = objc_alloc(MEMORY[0x277D751E0]);
  v4 = CommunicationsSetupUIBundle();
  v5 = CNFRegStringTableName();
  v6 = [v4 localizedStringForKey:@"SAVE" value:&stru_2856D3978 table:v5];
  v7 = [v3 initWithTitle:v6 style:2 target:self action:sel__rightButtonTapped];

  return v7;
}

- (void)_rightButtonTapped
{
  v36 = *MEMORY[0x277D85DE8];
  if (![(CNFRegListController *)self _showWiFiAlertIfNecessary])
  {
    v3 = [(CNFRegLocaleController *)self _currentRegion];
    v4 = v3;
    if (!v3)
    {
      v20 = CommunicationsSetupUIBundle();
      v21 = CNFRegStringTableName();
      v22 = [v20 localizedStringForKey:@"FACETIME_ACTIVATION_ERROR_TITLE" value:&stru_2856D3978 table:v21];

      v23 = CommunicationsSetupUIBundle();
      v24 = CNFRegStringTableName();
      v25 = [v23 localizedStringForKey:@"FACETIME_LOCALE_MISSING_REGION_ALERT_MESSAGE" value:&stru_2856D3978 table:v24];

      v26 = CommunicationsSetupUIBundle();
      v27 = CNFRegStringTableName();
      v28 = [v26 localizedStringForKey:@"FACETIME_ALERT_OK" value:&stru_2856D3978 table:v27];

      v29 = [MEMORY[0x277D75110] alertControllerWithTitle:v22 message:v25 preferredStyle:1];
      v30 = [MEMORY[0x277D750F8] actionWithTitle:v28 style:0 handler:0];
      [v29 addAction:v30];

      [(CNFRegLocaleController *)self presentViewController:v29 animated:1 completion:0];
LABEL_37:

      goto LABEL_38;
    }

    v5 = [v3 regionID];
    v6 = [v4 basePhoneNumber];
    v7 = v6;
    if (!v6 || ![(__CFString *)v6 length])
    {
      v8 = [(CNFRegLocaleController *)self _phoneTextField];
      v9 = [v8 text];

      v10 = [(CNFRegLocaleController *)self _unformattedPhoneNumber:v9];

      [(CNFRegLocaleController *)self setCurrentPhoneValue:v10];
      v7 = v10;
    }

    v11 = [(CNFRegFirstRunController *)self account];
    v12 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v35 = v11;
      _os_log_impl(&dword_243BE5000, v12, OS_LOG_TYPE_DEFAULT, "Setting profile for account: %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
    {
      v32 = v11;
      IMLogString();
    }

    v13 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v35 = v5;
      _os_log_impl(&dword_243BE5000, v13, OS_LOG_TYPE_DEFAULT, "  => Region ID: %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
    {
      v32 = v5;
      IMLogString();
    }

    v14 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v35 = v7;
      _os_log_impl(&dword_243BE5000, v14, OS_LOG_TYPE_DEFAULT, "  => Phone: %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
    {
      v32 = v7;
      IMLogString();
    }

    v15 = [(__CFString *)v11 setProfileString:v5 forKey:*MEMORY[0x277D18C50], v32];
    v16 = v15 | [(__CFString *)v11 setProfileString:v7 forKey:*MEMORY[0x277D18C40]];
    v17 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = @"NO";
      if (v16)
      {
        v18 = @"YES";
      }

      *buf = 138412290;
      v35 = v18;
      _os_log_impl(&dword_243BE5000, v17, OS_LOG_TYPE_DEFAULT, "  => Changed: %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
    {
      v19 = @"NO";
      if (v16)
      {
        v19 = @"YES";
      }

      v33 = v19;
      IMLogString();
    }

    if (v16)
    {
      [(__CFString *)v11 writeSettings];
    }

    else if ([(__CFString *)v11 profileValidationStatus]== 3)
    {
      [(CNFRegLocaleController *)self _finishValidation];
LABEL_36:

      goto LABEL_37;
    }

    [(CNFRegFirstRunController *)self _startValidationModeAnimated:0, v33];
    [(CNFRegLocaleController *)self _startTimeout];
    [(__CFString *)v11 validateProfile];
    goto LABEL_36;
  }

LABEL_38:
  v31 = *MEMORY[0x277D85DE8];
}

- (void)_handleTimeout
{
  v3 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_243BE5000, v3, OS_LOG_TYPE_DEFAULT, "_handleTimeout", v9, 2u);
  }

  if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
  {
    IMLogString();
  }

  v4 = CommunicationsSetupUIBundle();
  v5 = CNFRegStringTableName();
  v6 = [v4 localizedStringForKey:@"FACETIME_ACTIVATION_ERROR_GENERIC" value:&stru_2856D3978 table:v5];

  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObject:v6 forKey:*MEMORY[0x277CCA450]];
  v8 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.conference.registration" code:0 userInfo:v7];
  [(CNFRegLocaleController *)self _failValidationWithError:v8];
}

void __53__CNFRegLocaleController__hideCountryPickerAnimated___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) presentedViewController];
  [v1 dismiss];
}

- (void)regionChooser:(id)a3 selectedRegionID:(id)a4
{
  [(CNFRegLocaleController *)self setCurrentRegionID:a4];
  [(CNFRegLocaleController *)self _updateUI];

  [(CNFRegLocaleController *)self hideCountryPicker];
}

- (void)_buildCountryFieldSpecifierCache:(id)a3
{
  v4 = [a3 specifierForID:@"FACETIME_LOCALE_COUNTRY_SELECT_ID"];
  countryFieldSpecifier = self->_countryFieldSpecifier;
  self->_countryFieldSpecifier = v4;

  MEMORY[0x2821F96F8]();
}

- (void)_buildPhoneNumberSpecifierCache:(id)a3
{
  v5 = a3;
  v6 = [v5 specifierForID:@"FACETIME_LOCALE_PHONE_GROUP_ID"];
  v7 = [v5 specifierForID:@"FACETIME_LOCALE_PHONE_FIELD_ID"];

  if (!v6 || !v7)
  {
    [(CNFRegLocaleController *)a2 _buildPhoneNumberSpecifierCache:?];
  }

  phoneNumberGroupSpecifier = self->_phoneNumberGroupSpecifier;
  self->_phoneNumberGroupSpecifier = v6;
  v13 = v6;

  phoneNumberFieldSpecifier = self->_phoneNumberFieldSpecifier;
  self->_phoneNumberFieldSpecifier = v7;
  v10 = v7;

  v11 = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{v13, v10, 0}];
  phoneNumberSpecifiers = self->_phoneNumberSpecifiers;
  self->_phoneNumberSpecifiers = v11;
}

- (void)_buildSpecifierCache:(id)a3
{
  v4 = a3;
  [(CNFRegLocaleController *)self _buildCountryFieldSpecifierCache:v4];
  [(CNFRegLocaleController *)self _buildPhoneNumberSpecifierCache:v4];
}

- (void)_setupEventHandlers
{
  v6.receiver = self;
  v6.super_class = CNFRegLocaleController;
  [(CNFRegFirstRunController *)&v6 _setupEventHandlers];
  v3 = [(CNFRegListController *)self regController];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __45__CNFRegLocaleController__setupEventHandlers__block_invoke;
  v5[3] = &unk_278DE85A8;
  v5[4] = self;
  [v3 setProfileStatusChangedBlock:v5];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __45__CNFRegLocaleController__setupEventHandlers__block_invoke_194;
  v4[3] = &unk_278DE85A8;
  v4[4] = self;
  [v3 setAccountRegistrationBlock:v4];
}

void __45__CNFRegLocaleController__setupEventHandlers__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = CNFRegStringForAccount(v5);
    *buf = 138412290;
    v23 = v8;
    _os_log_impl(&dword_243BE5000, v7, OS_LOG_TYPE_DEFAULT, "Profile status changed for account: %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
  {
    v17 = CNFRegStringForAccount(v5);
    IMLogString();
  }

  v9 = [*(a1 + 32) account];
  v10 = v9 == v5;

  if (v10)
  {
    v15 = [v5 profileValidationStatus];
    if (v15 == 3)
    {
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __45__CNFRegLocaleController__setupEventHandlers__block_invoke_2;
      v19[3] = &unk_278DE7E08;
      v19[4] = *(a1 + 32);
      v14 = MEMORY[0x245D4D850](v19);
      if (!v14)
      {
        goto LABEL_20;
      }
    }

    else
    {
      if (v15 != -1)
      {
        v14 = 0;
        goto LABEL_20;
      }

      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __45__CNFRegLocaleController__setupEventHandlers__block_invoke_189;
      v20[3] = &unk_278DE81E0;
      v20[4] = *(a1 + 32);
      v21 = v6;
      v14 = MEMORY[0x245D4D850](v20);

      if (!v14)
      {
        goto LABEL_20;
      }
    }

    if (([*(a1 + 32) timedOut] & 1) == 0)
    {
      [*(a1 + 32) _stopTimeout];
      v14[2](v14);
    }

    goto LABEL_20;
  }

  v11 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [*(a1 + 32) account];
    v13 = CNFRegStringForAccount(v12);
    *buf = 138412290;
    v23 = v13;
    _os_log_impl(&dword_243BE5000, v11, OS_LOG_TYPE_DEFAULT, "  => Ignoring because the account does not match our account: %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
  {
    v14 = [*(a1 + 32) account];
    v18 = CNFRegStringForAccount(v14);
    IMLogString();

LABEL_20:
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __45__CNFRegLocaleController__setupEventHandlers__block_invoke_194(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v5 isActive];
    v9 = CNFRegStringForAccount(v5);
    v10 = v9;
    v11 = @"NO";
    if (v8)
    {
      v11 = @"YES";
    }

    *buf = 138412546;
    v17 = v11;
    v18 = 2112;
    v19 = v9;
    _os_log_impl(&dword_243BE5000, v7, OS_LOG_TYPE_DEFAULT, "Account status changed (isActive=%@): %@", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
  {
    if ([v5 isActive])
    {
      v12 = @"YES";
    }

    else
    {
      v12 = @"NO";
    }

    CNFRegStringForAccount(v5);
    v15 = v14 = v12;
    IMLogString();
  }

  [*(a1 + 32) _updateControllerState];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_buildPhoneNumberSpecifierCache:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"CNFRegLocaleController.m" lineNumber:675 description:@"Specifier list did not contain phone fields"];
}

@end