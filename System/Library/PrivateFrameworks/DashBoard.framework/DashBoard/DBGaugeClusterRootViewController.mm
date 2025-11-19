@interface DBGaugeClusterRootViewController
- (BOOL)_showDisclaimerLabel;
- (BOOL)_showSerialNumber;
- (DBGaugeClusterRootViewController)initWithEnvironment:(id)a3 workspaceIdentifier:(id)a4;
- (DBInstrumentClusterEnvironment)environment;
- (id)_disclaimerLabelWithText:(id)a3;
- (void)_createDisclaimerLabel;
- (void)_installLayoutViewControllerIfNeeded;
- (void)_showAssetErrorViewWithError:(id)a3;
- (void)invalidate;
- (void)session:(id)a3 showUIForScreenInfo:(id)a4 withURL:(id)a5;
- (void)session:(id)a3 stopUIForScreenInfo:(id)a4;
- (void)viewDidLoad;
@end

@implementation DBGaugeClusterRootViewController

- (DBGaugeClusterRootViewController)initWithEnvironment:(id)a3 workspaceIdentifier:(id)a4
{
  v31 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v28.receiver = self;
  v28.super_class = DBGaugeClusterRootViewController;
  v8 = [(DBGaugeClusterRootViewController *)&v28 initWithNibName:0 bundle:0];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_environment, v6);
    v10 = [v7 copy];
    workspaceIdentifier = v9->_workspaceIdentifier;
    v9->_workspaceIdentifier = v10;

    WeakRetained = objc_loadWeakRetained(&v9->_environment);
    v13 = [WeakRetained environmentConfiguration];
    v14 = [v13 session];
    [v14 addObserver:v9];

    v15 = objc_loadWeakRetained(&v9->_environment);
    v16 = [v15 environmentConfiguration];
    v17 = [v16 themeController];

    if ([v17 allowsOEMIconForDisplayID:@"Center_Display"] && (v18 = objc_loadWeakRetained(&v9->_environment), objc_msgSend(v18, "environmentConfiguration"), v19 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v19, "session"), v20 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v20, "configuration"), v21 = objc_claimAutoreleasedReturnValue(), v22 = objc_msgSend(v21, "manufacturerIconVisible"), v21, v20, v19, v18, v22))
    {
      v9->_OEMIconVisible = 1;
      v23 = DBLogForCategory(0xAuLL);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        if (v9->_OEMIconVisible)
        {
          v24 = @"YES";
        }

        else
        {
          v24 = @"NO";
        }

        *buf = 138412290;
        v30 = v24;
        v25 = "OEMIconVisible is: %@. ShowUI and StopUI commands will be handled.";
LABEL_14:
        _os_log_impl(&dword_248146000, v23, OS_LOG_TYPE_DEFAULT, v25, buf, 0xCu);
      }
    }

    else
    {
      v9->_OEMIconVisible = 0;
      v23 = DBLogForCategory(0xAuLL);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        if (v9->_OEMIconVisible)
        {
          v26 = @"YES";
        }

        else
        {
          v26 = @"NO";
        }

        *buf = 138412290;
        v30 = v26;
        v25 = "OEMIconVisible is: %@. ShowUI and StopUI commands will not be handled.";
        goto LABEL_14;
      }
    }
  }

  return v9;
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = DBGaugeClusterRootViewController;
  [(DBGaugeClusterRootViewController *)&v4 viewDidLoad];
  [(DBGaugeClusterRootViewController *)self _installLayoutViewControllerIfNeeded];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, self, _showDisclaimerCallback, @"com.apple.CarPlay.internal.showDisclaimer", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
}

- (void)invalidate
{
  v3 = [(DBGaugeClusterRootViewController *)self layoutViewController];
  [v3 invalidate];

  v4 = [(DBGaugeClusterRootViewController *)self environment];
  v5 = [v4 environmentConfiguration];
  [v5 removeObserver:self];

  WeakRetained = objc_loadWeakRetained(&self->_environment);
  v7 = [WeakRetained environmentConfiguration];
  v8 = [v7 session];
  [v8 removeObserver:self];

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
}

- (void)_installLayoutViewControllerIfNeeded
{
  v54 = *MEMORY[0x277D85DE8];
  v3 = [(DBGaugeClusterRootViewController *)self layoutViewController];

  if (v3)
  {
    v4 = DBLogForCategory(0xAuLL);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_248146000, v4, OS_LOG_TYPE_DEFAULT, "Layout has already been loaded", buf, 2u);
    }
  }

  else
  {
    v5 = [(DBGaugeClusterRootViewController *)self environment];
    v6 = [v5 environmentConfiguration];
    v4 = [v6 themeController];

    if (v4)
    {
      v7 = [v4 themeAssetDocument];
      v8 = DBLogForCategory(0xAuLL);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = [v7 documentURL];
        *buf = 138412290;
        v53 = v9;
        _os_log_impl(&dword_248146000, v8, OS_LOG_TYPE_INFO, "using cluster layout: %@", buf, 0xCu);
      }

      v10 = [_TtC9DashBoard39DBInstrumentClusterLayoutViewController alloc];
      v11 = [(DBGaugeClusterRootViewController *)self environment];
      v12 = [(DBGaugeClusterRootViewController *)self environment];
      v13 = [v12 displayInfo];
      v14 = [v13 identifier];
      v15 = [(DBGaugeClusterRootViewController *)self workspaceIdentifier];
      v50 = 0;
      v16 = [(DBInstrumentClusterLayoutViewController *)v10 initWithThemeController:v4 environment:v11 displayID:v14 workspaceIdentifier:v15 error:&v50];
      v17 = v50;

      if (v16)
      {
        v47 = v17;
        v49 = v7;
        [(DBGaugeClusterRootViewController *)self setLayoutViewController:v16];
        v18 = DBLogForCategory(0xAuLL);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v53 = v16;
          _os_log_impl(&dword_248146000, v18, OS_LOG_TYPE_DEFAULT, "Created gauge cluster layout view controller %@", buf, 0xCu);
        }

        v19 = [(DBInstrumentClusterLayoutViewController *)v16 view];
        [(DBGaugeClusterRootViewController *)self addChildViewController:v16];
        v20 = [(DBGaugeClusterRootViewController *)self view];
        [v20 addSubview:v19];

        v48 = v16;
        [(DBInstrumentClusterLayoutViewController *)v16 didMoveToParentViewController:self];
        [v19 setTranslatesAutoresizingMaskIntoConstraints:0];
        v38 = MEMORY[0x277CCAAD0];
        v44 = [v19 leadingAnchor];
        v45 = [(DBGaugeClusterRootViewController *)self view];
        v43 = [v45 leadingAnchor];
        v42 = [v44 constraintEqualToAnchor:v43];
        v51[0] = v42;
        v40 = [v19 trailingAnchor];
        v41 = [(DBGaugeClusterRootViewController *)self view];
        v39 = [v41 trailingAnchor];
        v37 = [v40 constraintEqualToAnchor:v39];
        v51[1] = v37;
        v36 = [v19 topAnchor];
        v21 = [(DBGaugeClusterRootViewController *)self view];
        v22 = [v21 topAnchor];
        v23 = [v36 constraintEqualToAnchor:v22];
        v51[2] = v23;
        v46 = v19;
        v24 = [v19 bottomAnchor];
        v25 = [(DBGaugeClusterRootViewController *)self view];
        v26 = [v25 bottomAnchor];
        v27 = [v24 constraintEqualToAnchor:v26];
        v51[3] = v27;
        v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v51 count:4];
        [v38 activateConstraints:v28];

        v7 = v49;
        v29 = [v49 documentInfo];
        v30 = [v29 objectForKey:@"removeDisclaimerLabelOverride"];

        v31 = DBLogForCategory(0xAuLL);
        v32 = os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT);
        if (v30)
        {
          if (v32)
          {
            *buf = 0;
            _os_log_impl(&dword_248146000, v31, OS_LOG_TYPE_DEFAULT, "removeDisclaimerLabel value present - not creating disclaimer label", buf, 2u);
          }

          v17 = v47;
          v16 = v48;
          if (CRIsInternalInstall())
          {
            v33 = [MEMORY[0x277CF89D0] showDisclaimerLabel];
            [v33 setInternalSettingsState:0];

            v34 = [MEMORY[0x277CF89D0] showSerialNumber];
            [v34 setInternalSettingsState:0];
          }
        }

        else
        {
          if (v32)
          {
            *buf = 0;
            _os_log_impl(&dword_248146000, v31, OS_LOG_TYPE_DEFAULT, "removeDisclaimerLabel value not present - creating disclaimer label", buf, 2u);
          }

          [(DBGaugeClusterRootViewController *)self _createDisclaimerLabel];
          v17 = v47;
          v16 = v48;
        }
      }

      else
      {
        v35 = DBLogForCategory(0xAuLL);
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          [(DBGaugeClusterRootViewController *)v35 _installLayoutViewControllerIfNeeded];
        }

        [(DBGaugeClusterRootViewController *)self _showAssetErrorViewWithError:v17];
      }
    }

    else
    {
      v7 = DBLogForCategory(0xAuLL);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [(DBGaugeClusterRootViewController *)v7 _installLayoutViewControllerIfNeeded];
      }
    }
  }
}

- (void)_showAssetErrorViewWithError:(id)a3
{
  v44[6] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (DBIsInternalInstall_onceToken_1 != -1)
  {
    [DBGaugeClusterRootViewController _showAssetErrorViewWithError:];
  }

  if (DBIsInternalInstall_isInternal_1 == 1)
  {
    v5 = objc_alloc_init(MEMORY[0x277D75D18]);
    v6 = [MEMORY[0x277D75348] blackColor];
    [v5 setBackgroundColor:v6];

    [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
    v7 = [(DBGaugeClusterRootViewController *)self view];
    [v7 addSubview:v5];

    v8 = [v4 userInfo];
    v42 = [v8 objectForKey:*MEMORY[0x277CBED58]];

    v9 = [v4 userInfo];
    v41 = [v9 objectForKey:*MEMORY[0x277CBED38]];

    v10 = objc_alloc_init(MEMORY[0x277D756B8]);
    [v10 setNumberOfLines:0];
    [v10 setTextAlignment:1];
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unable to load layout from layout document.\nAsset version: %@, identifier: %@", v42, v41];
    [v10 setText:v11];

    v12 = [MEMORY[0x277D75348] whiteColor];
    [v10 setTextColor:v12];

    [v10 sizeToFit];
    v13 = [(DBGaugeClusterRootViewController *)self view];
    [v13 addSubview:v10];

    [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
    v29 = MEMORY[0x277CCAAD0];
    v39 = [v5 leftAnchor];
    v40 = [(DBGaugeClusterRootViewController *)self view];
    v38 = [v40 leftAnchor];
    v37 = [v39 constraintEqualToAnchor:v38];
    v44[0] = v37;
    v34 = [v5 rightAnchor];
    v35 = [(DBGaugeClusterRootViewController *)self view];
    v33 = [v35 rightAnchor];
    v32 = [v34 constraintEqualToAnchor:v33];
    v44[1] = v32;
    v36 = v5;
    v30 = [v5 topAnchor];
    v31 = [(DBGaugeClusterRootViewController *)self view];
    v28 = [v31 topAnchor];
    v27 = [v30 constraintEqualToAnchor:v28];
    v44[2] = v27;
    v25 = [v5 bottomAnchor];
    v26 = [(DBGaugeClusterRootViewController *)self view];
    v24 = [v26 bottomAnchor];
    v23 = [v25 constraintEqualToAnchor:v24];
    v44[3] = v23;
    v14 = [v10 centerXAnchor];
    v15 = [(DBGaugeClusterRootViewController *)self view];
    [v15 centerXAnchor];
    v16 = v43 = v4;
    v17 = [v14 constraintEqualToAnchor:v16];
    v44[4] = v17;
    v18 = [v10 centerYAnchor];
    v19 = [(DBGaugeClusterRootViewController *)self view];
    v20 = [v19 centerYAnchor];
    v21 = [v18 constraintEqualToAnchor:v20];
    v44[5] = v21;
    v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v44 count:6];
    [v29 activateConstraints:v22];

    v4 = v43;
  }
}

- (BOOL)_showDisclaimerLabel
{
  if (!CRIsInternalInstall())
  {
    return 1;
  }

  keyExistsAndHasValidFormat = 0;
  if (CFPreferencesGetAppBooleanValue(@"showDisclaimerLabel", @"com.apple.carplay.internal", &keyExistsAndHasValidFormat))
  {
    v2 = keyExistsAndHasValidFormat == 0;
  }

  else
  {
    v2 = 1;
  }

  return !v2;
}

- (BOOL)_showSerialNumber
{
  if (!CRIsInternalInstall())
  {
    return 1;
  }

  keyExistsAndHasValidFormat = 0;
  if (CFPreferencesGetAppBooleanValue(@"showSerialNumber", @"com.apple.carplay.internal", &keyExistsAndHasValidFormat))
  {
    v2 = keyExistsAndHasValidFormat == 0;
  }

  else
  {
    v2 = 1;
  }

  return !v2;
}

- (void)_createDisclaimerLabel
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = [(DBGaugeClusterRootViewController *)self appleConfidentialLabel];
  [v3 removeFromSuperview];

  [(DBGaugeClusterRootViewController *)self setAppleConfidentialLabel:0];
  if ([(DBGaugeClusterRootViewController *)self _showDisclaimerLabel])
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Apple Confidential: This test UI is for development purposes only and is not representative of the actual UI"];
  }

  else
  {
    v4 = &stru_285A57218;
  }

  if ([(DBGaugeClusterRootViewController *)self _showSerialNumber])
  {
    v5 = MGCopyAnswer();
    if ([v5 length])
    {
      if ([(__CFString *)v4 length])
      {
        v6 = [(__CFString *)v4 stringByAppendingString:@" - "];

        v4 = v6;
      }

      v7 = [(__CFString *)v4 stringByAppendingString:v5];

      v4 = v7;
    }
  }

  if ([(__CFString *)v4 length])
  {
    v8 = DBLogForCategory(0xAuLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v27 = v4;
      _os_log_impl(&dword_248146000, v8, OS_LOG_TYPE_DEFAULT, "Created Disclaimer Label: %@", buf, 0xCu);
    }

    v9 = [(DBGaugeClusterRootViewController *)self _disclaimerLabelWithText:v4];
    v10 = [(DBGaugeClusterRootViewController *)self view];
    [v10 addSubview:v9];

    [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
    v20 = MEMORY[0x277CCAAD0];
    v23 = [v9 topAnchor];
    v24 = [(DBGaugeClusterRootViewController *)self view];
    v22 = [v24 topAnchor];
    v21 = [v23 constraintEqualToAnchor:v22];
    v25[0] = v21;
    v18 = [v9 bottomAnchor];
    v19 = [(DBGaugeClusterRootViewController *)self view];
    v11 = [v19 topAnchor];
    v12 = [v18 constraintEqualToAnchor:v11 constant:10.0];
    v25[1] = v12;
    v13 = [v9 centerXAnchor];
    v14 = [(DBGaugeClusterRootViewController *)self view];
    v15 = [v14 centerXAnchor];
    v16 = [v13 constraintEqualToAnchor:v15];
    v25[2] = v16;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:3];
    [v20 activateConstraints:v17];

    [(DBGaugeClusterRootViewController *)self setAppleConfidentialLabel:v9];
  }
}

- (id)_disclaimerLabelWithText:(id)a3
{
  v3 = MEMORY[0x277D756B8];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  [v5 setText:v4];

  v6 = [MEMORY[0x277D75348] redColor];
  [v5 setTextColor:v6];

  v7 = [v5 font];
  v8 = [v7 fontWithSize:10.0];
  [v5 setFont:v8];

  [v5 setTextAlignment:1];

  return v5;
}

- (void)session:(id)a3 showUIForScreenInfo:(id)a4 withURL:(id)a5
{
  v20 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = a5;
  if (self->_OEMIconVisible)
  {
    v9 = [(DBGaugeClusterRootViewController *)self environment];
    v10 = [v9 displayInfo];
    v11 = [v7 identifier];
    if ([v10 hasVideoStreamWithIdentifier:v11])
    {
      v12 = [v8 absoluteString];
      v13 = [v12 lowercaseString];
      v14 = [v13 isEqualToString:@"gaugecluster:"];

      if (v14)
      {
        v15 = DBLogForCategory(0xAuLL);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v16 = [v7 identifier];
          v18 = 138412290;
          v19 = v16;
          _os_log_impl(&dword_248146000, v15, OS_LOG_TYPE_DEFAULT, "Showing DBGaugeClusterRootViewController - showUI received for video stream: %@", &v18, 0xCu);
        }

        v17 = [(DBGaugeClusterRootViewController *)self view];
        [v17 setHidden:0];
      }
    }

    else
    {
    }
  }
}

- (void)session:(id)a3 stopUIForScreenInfo:(id)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a4;
  if (self->_OEMIconVisible)
  {
    v6 = [(DBGaugeClusterRootViewController *)self environment];
    v7 = [v6 displayInfo];
    v8 = [v5 identifier];
    v9 = [v7 hasVideoStreamWithIdentifier:v8];

    if (v9)
    {
      v10 = DBLogForCategory(0xAuLL);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = [v5 identifier];
        v13 = 138412290;
        v14 = v11;
        _os_log_impl(&dword_248146000, v10, OS_LOG_TYPE_DEFAULT, "Hiding DBGaugeClusterRootViewController - stopUI received for video stream: %@", &v13, 0xCu);
      }

      v12 = [(DBGaugeClusterRootViewController *)self view];
      [v12 setHidden:1];
    }
  }
}

- (DBInstrumentClusterEnvironment)environment
{
  WeakRetained = objc_loadWeakRetained(&self->_environment);

  return WeakRetained;
}

@end