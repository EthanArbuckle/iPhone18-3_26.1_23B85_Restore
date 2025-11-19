@interface CNFRegListController
- (BOOL)_handleURLDictionary:(id)a3;
- (BOOL)_showWiFiAlertIfNecessary;
- (CNFRegListController)initWithParentController:(id)a3;
- (CNFRegListController)initWithRegController:(id)a3;
- (double)tableView:(id)a3 heightForFooterInSection:(int64_t)a4;
- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4;
- (id)_existingLabelForSpecifier:(id)a3 header:(BOOL)a4;
- (id)specifierList;
- (id)specifiers;
- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4;
- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4;
- (void)_performAppearBlock;
- (void)_setupEventHandlers;
- (void)_updateTitle;
- (void)applicationDidResume;
- (void)changePasswordControllerDidFinish:(id)a3 withAppleID:(id)a4 authID:(id)a5 authToken:(id)a6;
- (void)dealloc;
- (void)handleURL:(id)a3;
- (void)loadView;
- (void)removeAllHandlers;
- (void)setAppearBlock:(id)a3;
- (void)setSpecifier:(id)a3;
- (void)showAuthKitSignInIfNecessary;
- (void)systemApplicationDidBecomeActive;
- (void)systemApplicationDidEnterBackground;
- (void)systemApplicationDidResume;
- (void)systemApplicationDidSuspend;
- (void)systemApplicationWillEnterForeground;
- (void)systemApplicationWillResignActive;
- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation CNFRegListController

- (CNFRegListController)initWithRegController:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = CNFRegListController;
  v5 = [(CNFRegListController *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(CNFRegListController *)v5 setRegController:v4];
    if ((CNFRegGlobalAppearanceStyle() - 5) <= 1)
    {
      [(CNFRegListController *)v6 setEdgeToEdgeCells:1];
    }
  }

  return v6;
}

- (CNFRegListController)initWithParentController:(id)a3
{
  v4 = a3;
  v5 = [v4 regController];
  v6 = [(CNFRegListController *)self initWithRegController:v5];

  if (v6)
  {
    v7 = [v4 rootController];
    [(CNFRegListController *)v6 setRootController:v7];

    [(CNFRegListController *)v6 setParentController:v4];
    v8 = [v4 specifier];
    [(CNFRegListController *)v6 setSpecifier:v8];
  }

  return v6;
}

- (void)dealloc
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277D192A8] sharedInstance];
  [v3 removeListener:self];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = *(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FC48]);
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [(CNFRegListController *)self _existingLabelForSpecifier:v9 header:1];
        [v10 clearSpecifier];
        v11 = [(CNFRegListController *)self _existingLabelForSpecifier:v9 header:0];
        [v11 clearSpecifier];
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v13.receiver = self;
  v13.super_class = CNFRegListController;
  [(CNFRegListController *)&v13 dealloc];
  v12 = *MEMORY[0x277D85DE8];
}

- (void)setSpecifier:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = CNFRegListController;
  [(CNFRegListController *)&v10 setSpecifier:v5];
  v6 = [(CNFRegListController *)self regController];

  if (!v6)
  {
    v7 = [v5 propertyForKey:@"ft-serviceType"];
    v8 = +[CNFRegController controllerForServiceType:](CNFRegController, "controllerForServiceType:", [v7 integerValue]);
    [(CNFRegListController *)self setRegController:v8];
  }

  v9 = [(CNFRegListController *)self regController];

  if (!v9)
  {
    [(CNFRegListController *)a2 setSpecifier:?];
  }
}

- (id)specifiers
{
  v3 = [(CNFRegListController *)self specifierList];
  [(CNFRegListController *)self _updateTitle];

  return v3;
}

- (id)specifierList
{
  v4.receiver = self;
  v4.super_class = CNFRegListController;
  v2 = [(CNFRegListController *)&v4 specifiers];

  return v2;
}

- (void)_updateTitle
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = [(CNFRegListController *)self customTitle];
  if (v3)
  {
    v4 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v8 = v3;
      _os_log_impl(&dword_243BE5000, v4, OS_LOG_TYPE_DEFAULT, "Setting custom title: %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
    {
      v6 = v3;
      IMLogString();
    }

    [(CNFRegListController *)self setTitle:v3, v6];
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)setAppearBlock:(id)a3
{
  v4 = a3;
  if (self->_appearBlock != v4)
  {
    v7 = v4;
    v5 = [v4 copy];
    appearBlock = self->_appearBlock;
    self->_appearBlock = v5;

    v4 = v7;
    if (v7)
    {
      if (self->_appeared)
      {
        [(CNFRegListController *)self performSelector:sel__performAppearBlock withObject:0 afterDelay:0.0];
        v4 = v7;
      }
    }
  }
}

- (void)_performAppearBlock
{
  v4 = [(CNFRegListController *)self appearBlock];
  [(CNFRegListController *)self setAppearBlock:0];
  v3 = v4;
  if (v4)
  {
    (*(v4 + 16))(v4);
    v3 = v4;
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v16 = *MEMORY[0x277D85DE8];
  v13.receiver = self;
  v13.super_class = CNFRegListController;
  [(CNFRegListController *)&v13 viewDidAppear:?];
  v5 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_243BE5000, v5, OS_LOG_TYPE_DEBUG, "View did appear, adding listener", buf, 2u);
  }

  if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
  {
    IMLogString();
  }

  v6 = [MEMORY[0x277D192A8] sharedInstance];
  if (([v6 isActive] & 1) == 0)
  {
    [v6 setActive:1];
  }

  [v6 addListener:self];
  v7 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = @"not ";
    if (v3)
    {
      v8 = &stru_2856D3978;
    }

    *buf = 138412290;
    v15 = v8;
    _os_log_impl(&dword_243BE5000, v7, OS_LOG_TYPE_DEBUG, "View did appear, %@animated", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
  {
    v9 = @"not ";
    if (v3)
    {
      v9 = &stru_2856D3978;
    }

    v12 = v9;
    IMLogString();
  }

  if (*(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FD20]) && [(CNFRegListController *)self shouldRerootPreferences])
  {
    v10 = [MEMORY[0x277CCAB98] defaultCenter];
    [v10 postNotificationName:*MEMORY[0x277D400A8] object:0];
    [(CNFRegListController *)self setShouldRerootPreferences:0];
  }

  [(CNFRegListController *)self _performAppearBlock];
  self->_appeared = 1;

  v11 = *MEMORY[0x277D85DE8];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v16 = *MEMORY[0x277D85DE8];
  v13.receiver = self;
  v13.super_class = CNFRegListController;
  [(CNFRegListController *)&v13 viewWillDisappear:?];
  v5 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_243BE5000, v5, OS_LOG_TYPE_DEBUG, "View will disappear, removing listener", buf, 2u);
  }

  if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
  {
    IMLogString();
  }

  v6 = [MEMORY[0x277D192A8] sharedInstance];
  [v6 removeListener:self];

  v7 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = @"not ";
    if (v3)
    {
      v8 = &stru_2856D3978;
    }

    *buf = 138412290;
    v15 = v8;
    _os_log_impl(&dword_243BE5000, v7, OS_LOG_TYPE_DEBUG, "View will disappear, %@animated", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
  {
    v9 = @"not ";
    if (v3)
    {
      v9 = &stru_2856D3978;
    }

    v12 = v9;
    IMLogString();
  }

  if ([(CNFRegListController *)self wantsWiFiChooser])
  {
    v10 = [(CNFRegListController *)self regController];
    [v10 stopRequiringWifi];
  }

  [(CNFRegListController *)self setAppearBlock:0];
  self->_appeared = 0;
  v11 = *MEMORY[0x277D85DE8];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  v11 = *MEMORY[0x277D85DE8];
  v8.receiver = self;
  v8.super_class = CNFRegListController;
  [(CNFRegListController *)&v8 viewDidDisappear:?];
  v5 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = @"not ";
    if (v3)
    {
      v6 = &stru_2856D3978;
    }

    *buf = 138412290;
    v10 = v6;
    _os_log_impl(&dword_243BE5000, v5, OS_LOG_TYPE_DEBUG, "View did disappear, %@animated", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
  {
    IMLogString();
  }

  self->_appeared = 0;
  v7 = *MEMORY[0x277D85DE8];
}

- (void)applicationDidResume
{
  v3.receiver = self;
  v3.super_class = CNFRegListController;
  [(CNFRegListController *)&v3 applicationDidResume];
  [(CNFRegListController *)self _performAppearBlock];
}

- (void)systemApplicationDidEnterBackground
{
  v2 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *v3 = 0;
    _os_log_impl(&dword_243BE5000, v2, OS_LOG_TYPE_DEBUG, "systemApplicationDidEnterBackground", v3, 2u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (IMShouldLog())
    {
      IMLogString();
    }
  }
}

- (void)systemApplicationWillEnterForeground
{
  v2 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *v3 = 0;
    _os_log_impl(&dword_243BE5000, v2, OS_LOG_TYPE_DEBUG, "systemApplicationWillEnterForeground", v3, 2u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (IMShouldLog())
    {
      IMLogString();
    }
  }
}

- (void)systemApplicationDidBecomeActive
{
  v2 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *v3 = 0;
    _os_log_impl(&dword_243BE5000, v2, OS_LOG_TYPE_DEBUG, "systemApplicationDidBecomeActive", v3, 2u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (IMShouldLog())
    {
      IMLogString();
    }
  }
}

- (void)systemApplicationWillResignActive
{
  v2 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *v3 = 0;
    _os_log_impl(&dword_243BE5000, v2, OS_LOG_TYPE_DEBUG, "systemApplicationWillResignActive", v3, 2u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (IMShouldLog())
    {
      IMLogString();
    }
  }
}

- (void)systemApplicationDidSuspend
{
  v2 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *v3 = 0;
    _os_log_impl(&dword_243BE5000, v2, OS_LOG_TYPE_DEBUG, "systemApplicationDidSuspend", v3, 2u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (IMShouldLog())
    {
      IMLogString();
    }
  }
}

- (void)systemApplicationDidResume
{
  v2 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *v3 = 0;
    _os_log_impl(&dword_243BE5000, v2, OS_LOG_TYPE_DEBUG, "systemApplicationDidResume", v3, 2u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (IMShouldLog())
    {
      IMLogString();
    }
  }
}

- (BOOL)_showWiFiAlertIfNecessary
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = [(CNFRegListController *)self regController];
  v4 = [v3 serviceType];

  if (!v4 || v4 == 2)
  {
    v5 = 0;
    v6 = @"com.apple.facetime";
  }

  else
  {
    v5 = v4 != 1;
    if (v4 == 1)
    {
      v6 = @"com.apple.MobileSMS";
    }

    else
    {
      v6 = 0;
    }
  }

  v7 = [(CNFRegListController *)self regController];
  if ([v7 deviceCanTakeNetworkAction])
  {
    if (v5)
    {
LABEL_13:
      v10 = 0;
      goto LABEL_33;
    }

    v8 = [(CNFRegListController *)self regController];
    if ([v8 serviceType] == 1)
    {
LABEL_12:

      goto LABEL_13;
    }

    v9 = [MEMORY[0x277D07DB0] sharedInstance];
    if ([v9 nonWifiAvailableForBundleId:v6])
    {

      goto LABEL_12;
    }

    v11 = [MEMORY[0x277D07DB0] sharedInstance];
    v12 = [v11 wifiAllowedForBundleId:v6];

    if (v12)
    {
      goto LABEL_13;
    }
  }

  v13 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [MEMORY[0x277D07DB0] sharedInstance];
    if ([v14 nonWifiAvailableForBundleId:v6])
    {
      v15 = @"YES";
    }

    else
    {
      v15 = @"NO";
    }

    v16 = [MEMORY[0x277D07DB0] sharedInstance];
    if ([v16 wifiAllowedForBundleId:v6])
    {
      v17 = @"YES";
    }

    else
    {
      v17 = @"NO";
    }

    *buf = 138412802;
    v28 = v6;
    v29 = 2112;
    v30 = v15;
    v31 = 2112;
    v32 = v17;
    _os_log_impl(&dword_243BE5000, v13, OS_LOG_TYPE_DEFAULT, "Showing alert nonWifiAvailableForBUndleID:%@ %@, wifiAllowedForBUndleID %@", buf, 0x20u);
  }

  if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
  {
    v18 = [MEMORY[0x277D07DB0] sharedInstance];
    if ([v18 nonWifiAvailableForBundleId:v6])
    {
      v19 = @"YES";
    }

    else
    {
      v19 = @"NO";
    }

    v20 = [MEMORY[0x277D07DB0] sharedInstance];
    if ([v20 wifiAllowedForBundleId:v6])
    {
      v21 = @"YES";
    }

    else
    {
      v21 = @"NO";
    }

    v25 = v19;
    v26 = v21;
    v24 = v6;
    IMLogString();
  }

  [v7 showNetworkAlert:{self, v24, v25, v26}];
  v10 = 1;
LABEL_33:

  v22 = *MEMORY[0x277D85DE8];
  return v10;
}

- (void)handleURL:(id)a3
{
  v4 = a3;
  if (![(CNFRegListController *)self _handleURLDictionary:v4])
  {
    v5.receiver = self;
    v5.super_class = CNFRegListController;
    [(CNFRegListController *)&v5 handleURL:v4];
  }
}

- (BOOL)_handleURLDictionary:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v16 = v4;
  v15 = 0;
  v5 = *(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FD20]);
  if (v5)
  {
    WeakRetained = objc_loadWeakRetained((v5 + *MEMORY[0x277D3FCB8]));
    if (WeakRetained && (objc_opt_respondsToSelector() & 1) != 0)
    {
      v7 = [WeakRetained methodSignatureForSelector:sel__cnfreg_overrideForController_withDictionary_];
      v8 = [MEMORY[0x277CBEAE8] invocationWithMethodSignature:v7];
      v14 = self;
      [v8 setTarget:WeakRetained];
      [v8 setSelector:sel__cnfreg_overrideForController_withDictionary_];
      [v8 setArgument:&v14 atIndex:2];
      [v8 setArgument:&v16 atIndex:3];
      [v8 invoke];
      [v8 getReturnValue:&v15];
      v9 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        if (v15)
        {
          v10 = @"YES";
        }

        else
        {
          v10 = @"NO";
        }

        *buf = 138412546;
        v18 = v10;
        v19 = 2112;
        v20 = v16;
        _os_log_impl(&dword_243BE5000, v9, OS_LOG_TYPE_DEFAULT, "Handling url dictionary {%@} : %@", buf, 0x16u);
      }

      if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
      {
        IMLogString();
      }
    }

    v4 = v16;
    v11 = v15;
  }

  else
  {
    v11 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];
  return v11 & 1;
}

- (void)changePasswordControllerDidFinish:(id)a3 withAppleID:(id)a4 authID:(id)a5 authToken:(id)a6
{
  v28 = *MEMORY[0x277D85DE8];
  v9 = a4;
  v10 = a5;
  v11 = a6;
  if ([v10 length] && objc_msgSend(v11, "length"))
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v22 = self;
    v12 = [(CNFRegListController *)self regController];
    v13 = [v12 appleIDAccounts];

    v14 = [v13 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v24;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v24 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v23 + 1) + 8 * i);
          v19 = [v18 loginDisplayString];
          v20 = [v19 isEqualToString:v9];

          if (v20)
          {
            [v18 updateAuthorizationCredentials:v10 token:v11];
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v15);
    }

    self = v22;
  }

  [(CNFRegListController *)self dismissViewControllerAnimated:1 completion:0];

  v21 = *MEMORY[0x277D85DE8];
}

- (void)loadView
{
  v20.receiver = self;
  v20.super_class = CNFRegListController;
  [(CNFRegListController *)&v20 loadView];
  v3 = +[CNFRegAppearanceController globalAppearanceController];
  if ([v3 styleUsesCustomTableStyle])
  {
    v4 = [v3 tableBackgroundColor];

    v5 = MEMORY[0x277D3FC60];
    if (v4)
    {
      v6 = [v3 tableBackgroundColor];
      v7 = *v5;
      [*(&self->super.super.super.super.super.isa + v7) setBackgroundColor:v6];

      [*(&self->super.super.super.super.super.isa + v7) setBackgroundView:0];
    }

    if ([v3 styleUsesCustomSeparatorStyle])
    {
      v8 = *v5;
      [*(&self->super.super.super.super.super.isa + v8) _setDrawsTopShadowInGroupedSections:0];
      [*(&self->super.super.super.super.super.isa + v8) setSeparatorStyle:{objc_msgSend(v3, "tableSeparatorStyle")}];
      v9 = [v3 tableSeparatorColor];

      if (v9)
      {
        v10 = [v3 tableSeparatorColor];
        [*(&self->super.super.super.super.super.isa + v8) setSeparatorColor:v10];
      }

      v11 = [v3 tableSeparatorTopShadowColor];

      if (v11)
      {
        v12 = [v3 tableSeparatorTopShadowColor];
        [*(&self->super.super.super.super.super.isa + v8) setSeparatorTopShadowColor:v12];
      }

      v13 = [v3 tableSeparatorBottomShadowColor];

      if (v13)
      {
        v14 = [v3 tableSeparatorBottomShadowColor];
        [*(&self->super.super.super.super.super.isa + v8) setSeparatorBottomShadowColor:v14];
      }
    }

    v15 = [v3 tableSectionBorderColor];

    if (v15)
    {
      v16 = [v3 tableSectionBorderColor];
      [*(&self->super.super.super.super.super.isa + *v5) setSectionBorderColor:v16];
    }
  }

  v17 = [v3 customBackgroundColor];

  if (v17)
  {
    v18 = [v3 customBackgroundColor];
    v19 = [(CNFRegListController *)self view];
    [v19 setBackgroundColor:v18];
  }
}

- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5
{
  v50 = a4;
  v6 = a5;
  v7 = [v50 tag];
  v8 = v7;
  v9 = v7 << 32;
  if (v7 << 32 == 0x800000000)
  {
    v10 = [v50 editableTextField];
    [v10 setClearButtonMode:1];
  }

  v11 = +[CNFRegAppearanceController globalAppearanceController];
  if ([v11 styleUsesCustomTableStyle])
  {
    if (objc_opt_respondsToSelector())
    {
      v12 = [v50 usesStandardBackgroundImage];
    }

    else
    {
      v12 = 0;
    }

    if (v9 != 0xD00000000 || (v12 & 1) != 0)
    {
      v13 = [v11 tableCellBackgroundColor];
      [v50 setBackgroundColor:v13];
    }

    else
    {
      v13 = [v11 tableCellButtonImage];
      if (v13)
      {
        v14 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v13];
        [v50 setBackgroundView:v14];
      }

      v15 = [v11 tableCellButtonImageSelected];
      v16 = v50;
      if (v15)
      {
        v17 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v15];
        [v50 setSelectedBackgroundView:v17];

        v16 = v50;
      }

      [v16 setBackgroundColor:0];
    }

    v18 = [v11 tableCellTextLabelColor];

    if (v18)
    {
      v19 = [v11 tableCellTextLabelColor];
      v20 = [v50 textLabel];
      [v20 setTextColor:v19];
    }

    v21 = [v11 tableCellTextLabelBackgroundColor];

    if (v21)
    {
      v22 = [v11 tableCellTextLabelBackgroundColor];
      v23 = [v50 textLabel];
      [v23 setBackgroundColor:v22];
    }

    v24 = [v11 tableCellDetailLabelColor];

    if (v24)
    {
      v25 = [v11 tableCellDetailLabelColor];
      v26 = [v50 detailTextLabel];
      [v26 setTextColor:v25];
    }

    v27 = v8;
    v28 = [v11 tableCellDetailLabelBackgroundColor];

    if (v28)
    {
      v29 = [v11 tableCellDetailLabelBackgroundColor];
      v30 = [v50 detailTextLabel];
      [v30 setBackgroundColor:v29];
    }

    if ((v27 | 4) == 0xC)
    {
      v31 = [v11 tableCellEditableTextPlaceholderColor];

      if (v31)
      {
        v32 = [v11 tableCellEditableTextPlaceholderColor];
        v33 = [v50 editableTextField];
        v34 = [v33 _placeholderLabel];
        [v34 setTextColor:v32];
      }

      v35 = [v11 tableCellEditableTextFieldClearButton];

      if (v35)
      {
        v36 = [v50 editableTextField];
        v37 = [v36 _clearButton];
        v38 = [v11 tableCellEditableTextFieldClearButton];
        [v37 setImage:v38 forState:0];
      }

      v39 = [v11 tableCellEditableTextFieldClearButtonPressed];

      if (v39)
      {
        v40 = [v50 editableTextField];
        v41 = [v40 _clearButton];
        v42 = [v11 tableCellEditableTextFieldClearButtonPressed];
        [v41 setImage:v42 forState:1];
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v43 = v50;
        v44 = [v11 tableCellEditableTextColor];

        if (v44)
        {
          v45 = [v11 tableCellEditableTextColor];
          v46 = [v43 editableTextField];
          [v46 setTextColor:v45];
        }

        v47 = [v11 tableCellCheckmarkImage];
        [v43 setCustomCheckmarkImage:v47];

        v48 = [v11 tableCellCheckmarkImageSelected];
        [v43 setCustomCheckmarkImageSelected:v48];

        if ([v6 row])
        {
          [v43 setShadowImage:0];
        }

        else
        {
          v49 = [v11 tableSectionShadowImage];
          [v43 setShadowImage:v49];
        }

        [v43 setNeedsLayout];
      }
    }
  }
}

- (id)_existingLabelForSpecifier:(id)a3 header:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = v5;
  if (v5 && !*&v5[*MEMORY[0x277D3FC90]])
  {
    v8 = MEMORY[0x277D3FFB0];
    if (!v4)
    {
      v8 = MEMORY[0x277D3FF90];
    }

    v9 = [v5 propertyForKey:*v8];
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v7 = v9;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4
{
  v6 = a3;
  v7 = [(CNFRegListController *)self _existingLabelForSection:a4 header:1];
  [(CNFRegListController *)self _updateTableLabel:v7 withTableView:v6 isTopMostHeader:a4 == 0];
  v14.receiver = self;
  v14.super_class = CNFRegListController;
  [(CNFRegListController *)&v14 tableView:v6 heightForHeaderInSection:a4];
  if (a4 && v7)
  {
    v9 = v8;
  }

  else
  {
    v10 = [(CNFRegListController *)self _existingLabelForSection:a4 header:1];

    [(CNFRegListController *)self _updateTableLabel:v10 withTableView:v6 isTopMostHeader:a4 == 0];
    v13.receiver = self;
    v13.super_class = CNFRegListController;
    [(CNFRegListController *)&v13 tableView:v6 heightForHeaderInSection:a4];
    v9 = v11;
    v7 = v10;
  }

  return v9;
}

- (double)tableView:(id)a3 heightForFooterInSection:(int64_t)a4
{
  v6 = a3;
  v7 = [(CNFRegListController *)self _existingLabelForSection:a4 header:0];
  [(CNFRegListController *)self _updateTableLabel:v7 withTableView:v6 isTopMostHeader:0];
  v12.receiver = self;
  v12.super_class = CNFRegListController;
  [(CNFRegListController *)&v12 tableView:v6 heightForFooterInSection:a4];
  if (!v7)
  {
    v7 = [(CNFRegListController *)self _existingLabelForSection:a4 header:0];
    [(CNFRegListController *)self _updateTableLabel:v7 withTableView:v6 isTopMostHeader:0];
    v11.receiver = self;
    v11.super_class = CNFRegListController;
    [(CNFRegListController *)&v11 tableView:v6 heightForFooterInSection:a4];
  }

  v9 = v8;

  return v9;
}

- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4
{
  v6 = a3;
  v9.receiver = self;
  v9.super_class = CNFRegListController;
  v7 = [(CNFRegListController *)&v9 tableView:v6 viewForHeaderInSection:a4];
  if (v7)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(CNFRegListController *)self _updateTableLabel:v7 withTableView:v6 isTopMostHeader:a4 == 0];
    }
  }

  return v7;
}

- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4
{
  v6 = a3;
  v9.receiver = self;
  v9.super_class = CNFRegListController;
  v7 = [(CNFRegListController *)&v9 tableView:v6 viewForFooterInSection:a4];
  if (v7)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(CNFRegListController *)self _updateTableLabel:v7 withTableView:v6 isTopMostHeader:0];
    }
  }

  return v7;
}

- (void)showAuthKitSignInIfNecessary
{
  v3 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_243BE5000, v3, OS_LOG_TYPE_DEBUG, "Asked to show AuthKit Sign In", buf, 2u);
  }

  if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
  {
    IMLogString();
  }

  v4 = [(CNFRegListController *)self regController];
  v5 = [v4 serviceType];

  if (v5 == 2)
  {
LABEL_9:
    v6 = [MEMORY[0x277D18DD8] facetimeService];
    goto LABEL_11;
  }

  if (v5 != 1)
  {
    if (v5)
    {
      v9 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        *v13 = 0;
        _os_log_impl(&dword_243BE5000, v9, OS_LOG_TYPE_DEBUG, "Unsupported FTCServiceType provided from regController. Likely programming error.", v13, 2u);
      }

      if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
      {
        IMLogString();
      }

      goto LABEL_20;
    }

    goto LABEL_9;
  }

  v6 = [MEMORY[0x277D18DD8] iMessageService];
LABEL_11:
  v7 = v6;
  if (v6)
  {
    v11 = 0;
    if ([CNFRegAppleIDSplashViewController shouldShowSplashViewForService:v6 inProgressRegisteringNonPhoneAccount:&v11])
    {
      v8 = [MEMORY[0x277CCAB98] defaultCenter];
      [v8 postNotificationName:@"CNFSettingsViewControllerNeedsContainerUpdate" object:0];
    }

    return;
  }

LABEL_20:
  v10 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    *v12 = 0;
    _os_log_impl(&dword_243BE5000, v10, OS_LOG_TYPE_DEBUG, "No IMService found for regController. Will now show Apple ID Splash.", v12, 2u);
  }

  if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
  {
    IMLogString();
  }
}

- (void)_setupEventHandlers
{
  v3 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_impl(&dword_243BE5000, v3, OS_LOG_TYPE_DEBUG, "Setting up event handlers", v4, 2u);
  }

  if (os_log_shim_legacy_logging_enabled() && IMShouldLog())
  {
    IMLogString();
  }

  [(CNFRegListController *)self removeAllHandlers];
}

- (void)removeAllHandlers
{
  v2 = [(CNFRegListController *)self regController];
  [v2 removeAllHandlers];
}

- (void)setSpecifier:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"CNFRegListController.m" lineNumber:101 description:@"Did not have a registration controller after setting specifier"];
}

- (void)_updateExistingLabelForSpecifier:(uint64_t)a1 header:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"CNFRegListController.m" lineNumber:587 description:@"Attempted to set a label on a non-group cell"];
}

- (void)_setLabel:(uint64_t)a1 forSpecifier:(uint64_t)a2 header:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"CNFRegListController.m" lineNumber:608 description:@"Attempted to set a label on a non-group cell"];
}

@end