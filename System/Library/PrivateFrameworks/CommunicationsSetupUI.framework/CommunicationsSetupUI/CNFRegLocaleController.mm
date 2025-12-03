@interface CNFRegLocaleController
- (CNFRegLocaleController)initWithRegController:(id)controller;
- (id)_currentRegion;
- (id)_phoneTextField;
- (id)_rightButtonItem;
- (id)_unformattedPhoneNumber:(id)number;
- (id)controllerForSpecifier:(id)specifier;
- (id)currentCountryValueForSpecifier:(id)specifier;
- (id)currentPhoneCompatibleCountryCode;
- (id)currentPhoneNumberForSpecifier:(id)specifier;
- (id)specifierList;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)validationString;
- (void)_buildCountryFieldSpecifierCache:(id)cache;
- (void)_buildPhoneNumberSpecifierCache:(id)cache;
- (void)_buildSpecifierCache:(id)cache;
- (void)_failValidationWithError:(id)error;
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
- (void)regionChooser:(id)chooser selectedRegionID:(id)d;
- (void)setCurrentPhoneNumber:(id)number forSpecifier:(id)specifier;
@end

@implementation CNFRegLocaleController

- (CNFRegLocaleController)initWithRegController:(id)controller
{
  v22 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  v20.receiver = self;
  v20.super_class = CNFRegLocaleController;
  v5 = [(CNFRegFirstRunController *)&v20 initWithRegController:controllerCopy];
  if (v5)
  {
    mEMORY[0x277D07DE8] = [MEMORY[0x277D07DE8] sharedInstance];
    if ([mEMORY[0x277D07DE8] isLoaded])
    {
      regions = [mEMORY[0x277D07DE8] regions];
      [(CNFRegLocaleController *)v5 setRegionData:regions];
    }

    else
    {
      [(CNFRegLocaleController *)v5 _loadRegionsIfNecessary];
    }

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    appleIDAccounts = [controllerCopy appleIDAccounts];
    v9 = [appleIDAccounts countByEnumeratingWithState:&v16 objects:v21 count:16];
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
            objc_enumerationMutation(appleIDAccounts);
          }

          v13 = *(*(&v16 + 1) + 8 * i);
          if ([v13 profileValidationStatus] != 3)
          {
            [(CNFRegFirstRunController *)v5 setAccount:v13];
            goto LABEL_15;
          }
        }

        v10 = [appleIDAccounts countByEnumeratingWithState:&v16 objects:v21 count:16];
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
  completionBlock = [(CNFRegLocaleController *)self completionBlock];

  if (completionBlock)
  {
    completionBlock2 = [(CNFRegLocaleController *)self completionBlock];
    completionBlock2[2](completionBlock2, 0);
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
    name = [v6 name];
    if ([name _isNaturallyRTL])
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

- (id)controllerForSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v5 = specifierCopy;
  if (!specifierCopy || ([specifierCopy identifier], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "isEqualToString:", @"FACETIME_LOCALE_COUNTRY_SELECT_ID"), v6, !v7) || (objc_msgSend(MEMORY[0x277CBEB68], "null"), v8 = objc_claimAutoreleasedReturnValue(), -[CNFRegLocaleController showCountryPicker](self, "showCountryPicker"), !v8))
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
    validationString = [v2 localizedStringForKey:@"LOADING" value:&stru_2856D3978 table:v3];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = CNFRegLocaleController;
    validationString = [(CNFRegFirstRunController *)&v6 validationString];
  }

  return validationString;
}

- (void)_loadRegionsIfNecessary
{
  mEMORY[0x277D07DE8] = [MEMORY[0x277D07DE8] sharedInstance];
  isLoaded = [mEMORY[0x277D07DE8] isLoaded];
  self->_isLoading = isLoaded ^ 1;
  if ((isLoaded & 1) == 0)
  {
    [(CNFRegLocaleController *)self _startListeningForRegionListChanges];
    [mEMORY[0x277D07DE8] startLoading];
  }
}

- (void)_loadInitialValues
{
  regController = [(CNFRegListController *)self regController];
  appleIDAccounts = [regController appleIDAccounts];

  if (appleIDAccounts && [appleIDAccounts count])
  {
    v16 = [appleIDAccounts objectAtIndex:0];
  }

  else
  {
    v16 = 0;
  }

  currentRegionID = [(CNFRegLocaleController *)self currentRegionID];
  if (!currentRegionID || (v6 = currentRegionID, -[CNFRegLocaleController currentRegionID](self, "currentRegionID"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 length], v7, v6, !v8))
  {
    v9 = [v16 profileStringForKey:*MEMORY[0x277D18C50]];
    [(CNFRegLocaleController *)self setCurrentRegionID:v9];
  }

  currentPhoneValue = [(CNFRegLocaleController *)self currentPhoneValue];
  if (!currentPhoneValue || (v11 = currentPhoneValue, -[CNFRegLocaleController currentPhoneValue](self, "currentPhoneValue"), v12 = objc_claimAutoreleasedReturnValue(), v13 = [v12 length], v12, v11, !v13))
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

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v9.receiver = self;
  v9.super_class = CNFRegLocaleController;
  v4 = [(CNFRegLocaleController *)&v9 tableView:view cellForRowAtIndexPath:path];
  v5 = +[CNFRegAppearanceController globalAppearanceController];
  if ([v5 styleUsesCustomAccessoryView])
  {
    if ([v4 accessoryType] == 1)
    {
      tableCellCustomAccessoryViewDisclosureIndicator = [v5 tableCellCustomAccessoryViewDisclosureIndicator];
      if (tableCellCustomAccessoryViewDisclosureIndicator)
      {
        v7 = tableCellCustomAccessoryViewDisclosureIndicator;
        [v4 setAccessoryView:tableCellCustomAccessoryViewDisclosureIndicator];
      }
    }
  }

  return v4;
}

- (void)_startListeningForRegionListChanges
{
  if (!self->_regionListChangeObserver)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
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
    mEMORY[0x277D07DE8] = [MEMORY[0x277D07DE8] sharedInstance];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __61__CNFRegLocaleController__startListeningForRegionListChanges__block_invoke;
    v10[3] = &unk_278DE8900;
    v10[4] = self;
    v7 = MEMORY[0x245D4D850](v10);
    v8 = [defaultCenter addObserverForName:v5 object:mEMORY[0x277D07DE8] queue:0 usingBlock:v7];
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

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter removeObserver:self->_regionListChangeObserver];
    regionListChangeObserver = self->_regionListChangeObserver;
    self->_regionListChangeObserver = 0;
  }
}

- (void)_handleRegionListLoad
{
  [(CNFRegLocaleController *)self _stopListeningForRegionListChanges];
  mEMORY[0x277D07DE8] = [MEMORY[0x277D07DE8] sharedInstance];
  regions = [mEMORY[0x277D07DE8] regions];
  [(CNFRegLocaleController *)self setRegionData:regions];

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
  bOOLValue = [v5 BOOLValue];

  if (bOOLValue == isLoading)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithBool:isLoading ^ 1u];
    [(PSSpecifier *)self->_countryFieldSpecifier setProperty:v7 forKey:v4];
  }

  [(CNFRegLocaleController *)self _refreshCountryFieldAnimated:0];
  [(CNFRegLocaleController *)self _refreshPhoneFieldAnimated:0];
  _currentRegion = [(CNFRegLocaleController *)self _currentRegion];
  v9 = _currentRegion;
  if (_currentRegion)
  {
    basePhoneNumber = [_currentRegion basePhoneNumber];
    v11 = basePhoneNumber;
    if (basePhoneNumber)
    {
      v12 = [basePhoneNumber length] == 0;
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
  account = [(CNFRegFirstRunController *)self account];
  v14 = [account profileValueForKey:*MEMORY[0x277D18C50]];
  currentRegionID = [(CNFRegLocaleController *)self currentRegionID];
  v16 = [v14 isEqualToString:currentRegionID];

  v17 = [account profileValueForKey:*MEMORY[0x277D18C40]];
  currentPhoneValue = [(CNFRegLocaleController *)self currentPhoneValue];
  v19 = [v17 isEqualToString:currentPhoneValue];

  if (!self->_isLoading)
  {
    if ((v16 & v19) != 1 || [account profileValidationStatus] != 2)
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
  regController = [(CNFRegListController *)self regController];
  account = [(CNFRegFirstRunController *)self account];
  v5 = [regController accountStateForAccount:account];

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
  completionBlock = [(CNFRegLocaleController *)self completionBlock];

  if (completionBlock)
  {
    completionBlock2 = [(CNFRegLocaleController *)self completionBlock];
    completionBlock2[2](completionBlock2, (v5 >> 1) & 1);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (id)_currentRegion
{
  mEMORY[0x277D07DE8] = [MEMORY[0x277D07DE8] sharedInstance];
  currentRegionID = [(CNFRegLocaleController *)self currentRegionID];
  v5 = [mEMORY[0x277D07DE8] regionForID:currentRegionID];

  return v5;
}

- (id)currentCountryValueForSpecifier:(id)specifier
{
  specifierCopy = specifier;
  if (self->_isLoading)
  {
    v5 = CommunicationsSetupUIBundle();
    v6 = CNFRegStringTableName();
    v7 = @"LOADING";
LABEL_5:
    label = [v5 localizedStringForKey:v7 value:&stru_2856D3978 table:v6];

    goto LABEL_6;
  }

  if (self->_isError)
  {
    v5 = CommunicationsSetupUIBundle();
    v6 = CNFRegStringTableName();
    v7 = @"ERROR";
    goto LABEL_5;
  }

  _currentRegion = [(CNFRegLocaleController *)self _currentRegion];
  v5 = _currentRegion;
  if (_currentRegion)
  {
    label = [_currentRegion label];
  }

  else
  {
    label = &stru_2856D3978;
  }

LABEL_6:

  return label;
}

- (id)_phoneTextField
{
  v2 = [(CNFRegLocaleController *)self cachedCellForSpecifier:self->_phoneNumberFieldSpecifier];
  editableTextField = [v2 editableTextField];

  return editableTextField;
}

- (id)currentPhoneCompatibleCountryCode
{
  _currentRegion = [(CNFRegLocaleController *)self _currentRegion];
  v3 = _currentRegion;
  if (_currentRegion)
  {
    isoCode = [_currentRegion isoCode];
  }

  else
  {
    isoCode = 0;
  }

  lowercaseString = [isoCode lowercaseString];

  return lowercaseString;
}

- (id)_unformattedPhoneNumber:(id)number
{
  if (number)
  {
    v4 = _PNCreateStringByStrippingFormattingAndNotVisiblyAllowable();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)currentPhoneNumberForSpecifier:(id)specifier
{
  v18 = *MEMORY[0x277D85DE8];
  specifierCopy = specifier;
  currentPhoneValue = [(CNFRegLocaleController *)self currentPhoneValue];
  currentPhoneCompatibleCountryCode = [(CNFRegLocaleController *)self currentPhoneCompatibleCountryCode];
  if (currentPhoneCompatibleCountryCode)
  {
    currentPhoneValue2 = [(CNFRegLocaleController *)self currentPhoneValue];
    v8 = PNCopyFormattedStringWithCountry();

    v9 = v8;
    v10 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v15 = currentPhoneCompatibleCountryCode;
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
      v15 = currentPhoneValue;
      _os_log_impl(&dword_243BE5000, v11, OS_LOG_TYPE_DEFAULT, "Getting unformatted phone number: %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
    {
      IMLogString();
    }

    v9 = currentPhoneValue;
  }

  v12 = *MEMORY[0x277D85DE8];

  return v9;
}

- (void)setCurrentPhoneNumber:(id)number forSpecifier:(id)specifier
{
  v14 = *MEMORY[0x277D85DE8];
  numberCopy = number;
  specifierCopy = specifier;
  v8 = [(CNFRegLocaleController *)self _unformattedPhoneNumber:numberCopy];
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

- (void)_failValidationWithError:(id)error
{
  v21 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v5 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v20 = errorCopy;
    _os_log_impl(&dword_243BE5000, v5, OS_LOG_TYPE_DEFAULT, "_failValidationWithError: %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
  {
    v18 = errorCopy;
    IMLogString();
  }

  [(CNFRegFirstRunController *)self _stopValidationModeAnimated:1, v18];
  v6 = CommunicationsSetupUIBundle();
  v7 = CNFRegStringTableName();
  v8 = [v6 localizedStringForKey:@"FACETIME_ACTIVATION_ERROR_TITLE" value:&stru_2856D3978 table:v7];

  localizedDescription = [errorCopy localizedDescription];
  if (!localizedDescription)
  {
    v10 = CommunicationsSetupUIBundle();
    v11 = CNFRegStringTableName();
    localizedDescription = [v10 localizedStringForKey:@"FACETIME_ACTIVATION_ERROR_GENERIC" value:&stru_2856D3978 table:v11];
  }

  v12 = CommunicationsSetupUIBundle();
  v13 = CNFRegStringTableName();
  v14 = [v12 localizedStringForKey:@"FACETIME_ALERT_OK" value:&stru_2856D3978 table:v13];

  v15 = [MEMORY[0x277D75110] alertControllerWithTitle:v8 message:localizedDescription preferredStyle:1];
  v16 = [MEMORY[0x277D750F8] actionWithTitle:v14 style:0 handler:0];
  [v15 addAction:v16];

  [(CNFRegLocaleController *)self presentViewController:v15 animated:1 completion:0];
  v17 = *MEMORY[0x277D85DE8];
}

- (void)_finishValidation
{
  [(CNFRegFirstRunController *)self _stopValidationModeAnimated:1];
  navigationItem = [(CNFRegLocaleController *)self navigationItem];
  [navigationItem setRightBarButtonItem:0];

  navigationItem2 = [(CNFRegLocaleController *)self navigationItem];
  [navigationItem2 setLeftBarButtonItem:0];

  navigationItem3 = [(CNFRegLocaleController *)self navigationItem];
  [navigationItem3 setHidesBackButton:1];

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
    _currentRegion = [(CNFRegLocaleController *)self _currentRegion];
    v4 = _currentRegion;
    if (!_currentRegion)
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

    regionID = [_currentRegion regionID];
    basePhoneNumber = [v4 basePhoneNumber];
    v7 = basePhoneNumber;
    if (!basePhoneNumber || ![(__CFString *)basePhoneNumber length])
    {
      _phoneTextField = [(CNFRegLocaleController *)self _phoneTextField];
      text = [_phoneTextField text];

      v10 = [(CNFRegLocaleController *)self _unformattedPhoneNumber:text];

      [(CNFRegLocaleController *)self setCurrentPhoneValue:v10];
      v7 = v10;
    }

    account = [(CNFRegFirstRunController *)self account];
    v12 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v35 = account;
      _os_log_impl(&dword_243BE5000, v12, OS_LOG_TYPE_DEFAULT, "Setting profile for account: %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
    {
      v32 = account;
      IMLogString();
    }

    v13 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v35 = regionID;
      _os_log_impl(&dword_243BE5000, v13, OS_LOG_TYPE_DEFAULT, "  => Region ID: %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
    {
      v32 = regionID;
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

    v15 = [(__CFString *)account setProfileString:regionID forKey:*MEMORY[0x277D18C50], v32];
    v16 = v15 | [(__CFString *)account setProfileString:v7 forKey:*MEMORY[0x277D18C40]];
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
      [(__CFString *)account writeSettings];
    }

    else if ([(__CFString *)account profileValidationStatus]== 3)
    {
      [(CNFRegLocaleController *)self _finishValidation];
LABEL_36:

      goto LABEL_37;
    }

    [(CNFRegFirstRunController *)self _startValidationModeAnimated:0, v33];
    [(CNFRegLocaleController *)self _startTimeout];
    [(__CFString *)account validateProfile];
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

- (void)regionChooser:(id)chooser selectedRegionID:(id)d
{
  [(CNFRegLocaleController *)self setCurrentRegionID:d];
  [(CNFRegLocaleController *)self _updateUI];

  [(CNFRegLocaleController *)self hideCountryPicker];
}

- (void)_buildCountryFieldSpecifierCache:(id)cache
{
  v4 = [cache specifierForID:@"FACETIME_LOCALE_COUNTRY_SELECT_ID"];
  countryFieldSpecifier = self->_countryFieldSpecifier;
  self->_countryFieldSpecifier = v4;

  MEMORY[0x2821F96F8]();
}

- (void)_buildPhoneNumberSpecifierCache:(id)cache
{
  cacheCopy = cache;
  v6 = [cacheCopy specifierForID:@"FACETIME_LOCALE_PHONE_GROUP_ID"];
  v7 = [cacheCopy specifierForID:@"FACETIME_LOCALE_PHONE_FIELD_ID"];

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

- (void)_buildSpecifierCache:(id)cache
{
  cacheCopy = cache;
  [(CNFRegLocaleController *)self _buildCountryFieldSpecifierCache:cacheCopy];
  [(CNFRegLocaleController *)self _buildPhoneNumberSpecifierCache:cacheCopy];
}

- (void)_setupEventHandlers
{
  v6.receiver = self;
  v6.super_class = CNFRegLocaleController;
  [(CNFRegFirstRunController *)&v6 _setupEventHandlers];
  regController = [(CNFRegListController *)self regController];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __45__CNFRegLocaleController__setupEventHandlers__block_invoke;
  v5[3] = &unk_278DE85A8;
  v5[4] = self;
  [regController setProfileStatusChangedBlock:v5];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __45__CNFRegLocaleController__setupEventHandlers__block_invoke_194;
  v4[3] = &unk_278DE85A8;
  v4[4] = self;
  [regController setAccountRegistrationBlock:v4];
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