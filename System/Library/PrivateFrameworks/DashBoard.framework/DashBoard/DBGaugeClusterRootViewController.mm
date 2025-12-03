@interface DBGaugeClusterRootViewController
- (BOOL)_showDisclaimerLabel;
- (BOOL)_showSerialNumber;
- (DBGaugeClusterRootViewController)initWithEnvironment:(id)environment workspaceIdentifier:(id)identifier;
- (DBInstrumentClusterEnvironment)environment;
- (id)_disclaimerLabelWithText:(id)text;
- (void)_createDisclaimerLabel;
- (void)_installLayoutViewControllerIfNeeded;
- (void)_showAssetErrorViewWithError:(id)error;
- (void)invalidate;
- (void)session:(id)session showUIForScreenInfo:(id)info withURL:(id)l;
- (void)session:(id)session stopUIForScreenInfo:(id)info;
- (void)viewDidLoad;
@end

@implementation DBGaugeClusterRootViewController

- (DBGaugeClusterRootViewController)initWithEnvironment:(id)environment workspaceIdentifier:(id)identifier
{
  v31 = *MEMORY[0x277D85DE8];
  environmentCopy = environment;
  identifierCopy = identifier;
  v28.receiver = self;
  v28.super_class = DBGaugeClusterRootViewController;
  v8 = [(DBGaugeClusterRootViewController *)&v28 initWithNibName:0 bundle:0];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_environment, environmentCopy);
    v10 = [identifierCopy copy];
    workspaceIdentifier = v9->_workspaceIdentifier;
    v9->_workspaceIdentifier = v10;

    WeakRetained = objc_loadWeakRetained(&v9->_environment);
    environmentConfiguration = [WeakRetained environmentConfiguration];
    session = [environmentConfiguration session];
    [session addObserver:v9];

    v15 = objc_loadWeakRetained(&v9->_environment);
    environmentConfiguration2 = [v15 environmentConfiguration];
    themeController = [environmentConfiguration2 themeController];

    if ([themeController allowsOEMIconForDisplayID:@"Center_Display"] && (v18 = objc_loadWeakRetained(&v9->_environment), objc_msgSend(v18, "environmentConfiguration"), v19 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v19, "session"), v20 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v20, "configuration"), v21 = objc_claimAutoreleasedReturnValue(), v22 = objc_msgSend(v21, "manufacturerIconVisible"), v21, v20, v19, v18, v22))
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
  layoutViewController = [(DBGaugeClusterRootViewController *)self layoutViewController];
  [layoutViewController invalidate];

  environment = [(DBGaugeClusterRootViewController *)self environment];
  environmentConfiguration = [environment environmentConfiguration];
  [environmentConfiguration removeObserver:self];

  WeakRetained = objc_loadWeakRetained(&self->_environment);
  environmentConfiguration2 = [WeakRetained environmentConfiguration];
  session = [environmentConfiguration2 session];
  [session removeObserver:self];

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
}

- (void)_installLayoutViewControllerIfNeeded
{
  v54 = *MEMORY[0x277D85DE8];
  layoutViewController = [(DBGaugeClusterRootViewController *)self layoutViewController];

  if (layoutViewController)
  {
    themeController = DBLogForCategory(0xAuLL);
    if (os_log_type_enabled(themeController, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_248146000, themeController, OS_LOG_TYPE_DEFAULT, "Layout has already been loaded", buf, 2u);
    }
  }

  else
  {
    environment = [(DBGaugeClusterRootViewController *)self environment];
    environmentConfiguration = [environment environmentConfiguration];
    themeController = [environmentConfiguration themeController];

    if (themeController)
    {
      themeAssetDocument = [themeController themeAssetDocument];
      v8 = DBLogForCategory(0xAuLL);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        documentURL = [themeAssetDocument documentURL];
        *buf = 138412290;
        v53 = documentURL;
        _os_log_impl(&dword_248146000, v8, OS_LOG_TYPE_INFO, "using cluster layout: %@", buf, 0xCu);
      }

      v10 = [_TtC9DashBoard39DBInstrumentClusterLayoutViewController alloc];
      environment2 = [(DBGaugeClusterRootViewController *)self environment];
      environment3 = [(DBGaugeClusterRootViewController *)self environment];
      displayInfo = [environment3 displayInfo];
      identifier = [displayInfo identifier];
      workspaceIdentifier = [(DBGaugeClusterRootViewController *)self workspaceIdentifier];
      v50 = 0;
      v16 = [(DBInstrumentClusterLayoutViewController *)v10 initWithThemeController:themeController environment:environment2 displayID:identifier workspaceIdentifier:workspaceIdentifier error:&v50];
      v17 = v50;

      if (v16)
      {
        v47 = v17;
        v49 = themeAssetDocument;
        [(DBGaugeClusterRootViewController *)self setLayoutViewController:v16];
        v18 = DBLogForCategory(0xAuLL);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v53 = v16;
          _os_log_impl(&dword_248146000, v18, OS_LOG_TYPE_DEFAULT, "Created gauge cluster layout view controller %@", buf, 0xCu);
        }

        view = [(DBInstrumentClusterLayoutViewController *)v16 view];
        [(DBGaugeClusterRootViewController *)self addChildViewController:v16];
        view2 = [(DBGaugeClusterRootViewController *)self view];
        [view2 addSubview:view];

        v48 = v16;
        [(DBInstrumentClusterLayoutViewController *)v16 didMoveToParentViewController:self];
        [view setTranslatesAutoresizingMaskIntoConstraints:0];
        v38 = MEMORY[0x277CCAAD0];
        leadingAnchor = [view leadingAnchor];
        view3 = [(DBGaugeClusterRootViewController *)self view];
        leadingAnchor2 = [view3 leadingAnchor];
        v42 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
        v51[0] = v42;
        trailingAnchor = [view trailingAnchor];
        view4 = [(DBGaugeClusterRootViewController *)self view];
        trailingAnchor2 = [view4 trailingAnchor];
        v37 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
        v51[1] = v37;
        topAnchor = [view topAnchor];
        view5 = [(DBGaugeClusterRootViewController *)self view];
        topAnchor2 = [view5 topAnchor];
        v23 = [topAnchor constraintEqualToAnchor:topAnchor2];
        v51[2] = v23;
        v46 = view;
        bottomAnchor = [view bottomAnchor];
        view6 = [(DBGaugeClusterRootViewController *)self view];
        bottomAnchor2 = [view6 bottomAnchor];
        v27 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
        v51[3] = v27;
        v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v51 count:4];
        [v38 activateConstraints:v28];

        themeAssetDocument = v49;
        documentInfo = [v49 documentInfo];
        v30 = [documentInfo objectForKey:@"removeDisclaimerLabelOverride"];

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
            showDisclaimerLabel = [MEMORY[0x277CF89D0] showDisclaimerLabel];
            [showDisclaimerLabel setInternalSettingsState:0];

            showSerialNumber = [MEMORY[0x277CF89D0] showSerialNumber];
            [showSerialNumber setInternalSettingsState:0];
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
      themeAssetDocument = DBLogForCategory(0xAuLL);
      if (os_log_type_enabled(themeAssetDocument, OS_LOG_TYPE_ERROR))
      {
        [(DBGaugeClusterRootViewController *)themeAssetDocument _installLayoutViewControllerIfNeeded];
      }
    }
  }
}

- (void)_showAssetErrorViewWithError:(id)error
{
  v44[6] = *MEMORY[0x277D85DE8];
  errorCopy = error;
  if (DBIsInternalInstall_onceToken_1 != -1)
  {
    [DBGaugeClusterRootViewController _showAssetErrorViewWithError:];
  }

  if (DBIsInternalInstall_isInternal_1 == 1)
  {
    v5 = objc_alloc_init(MEMORY[0x277D75D18]);
    blackColor = [MEMORY[0x277D75348] blackColor];
    [v5 setBackgroundColor:blackColor];

    [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
    view = [(DBGaugeClusterRootViewController *)self view];
    [view addSubview:v5];

    userInfo = [errorCopy userInfo];
    v42 = [userInfo objectForKey:*MEMORY[0x277CBED58]];

    userInfo2 = [errorCopy userInfo];
    v41 = [userInfo2 objectForKey:*MEMORY[0x277CBED38]];

    v10 = objc_alloc_init(MEMORY[0x277D756B8]);
    [v10 setNumberOfLines:0];
    [v10 setTextAlignment:1];
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unable to load layout from layout document.\nAsset version: %@, identifier: %@", v42, v41];
    [v10 setText:v11];

    whiteColor = [MEMORY[0x277D75348] whiteColor];
    [v10 setTextColor:whiteColor];

    [v10 sizeToFit];
    view2 = [(DBGaugeClusterRootViewController *)self view];
    [view2 addSubview:v10];

    [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
    v29 = MEMORY[0x277CCAAD0];
    leftAnchor = [v5 leftAnchor];
    view3 = [(DBGaugeClusterRootViewController *)self view];
    leftAnchor2 = [view3 leftAnchor];
    v37 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
    v44[0] = v37;
    rightAnchor = [v5 rightAnchor];
    view4 = [(DBGaugeClusterRootViewController *)self view];
    rightAnchor2 = [view4 rightAnchor];
    v32 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
    v44[1] = v32;
    v36 = v5;
    topAnchor = [v5 topAnchor];
    view5 = [(DBGaugeClusterRootViewController *)self view];
    topAnchor2 = [view5 topAnchor];
    v27 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v44[2] = v27;
    bottomAnchor = [v5 bottomAnchor];
    view6 = [(DBGaugeClusterRootViewController *)self view];
    bottomAnchor2 = [view6 bottomAnchor];
    v23 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v44[3] = v23;
    centerXAnchor = [v10 centerXAnchor];
    view7 = [(DBGaugeClusterRootViewController *)self view];
    [view7 centerXAnchor];
    v16 = v43 = errorCopy;
    v17 = [centerXAnchor constraintEqualToAnchor:v16];
    v44[4] = v17;
    centerYAnchor = [v10 centerYAnchor];
    view8 = [(DBGaugeClusterRootViewController *)self view];
    centerYAnchor2 = [view8 centerYAnchor];
    v21 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v44[5] = v21;
    v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v44 count:6];
    [v29 activateConstraints:v22];

    errorCopy = v43;
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
  appleConfidentialLabel = [(DBGaugeClusterRootViewController *)self appleConfidentialLabel];
  [appleConfidentialLabel removeFromSuperview];

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
    view = [(DBGaugeClusterRootViewController *)self view];
    [view addSubview:v9];

    [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
    v20 = MEMORY[0x277CCAAD0];
    topAnchor = [v9 topAnchor];
    view2 = [(DBGaugeClusterRootViewController *)self view];
    topAnchor2 = [view2 topAnchor];
    v21 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v25[0] = v21;
    bottomAnchor = [v9 bottomAnchor];
    view3 = [(DBGaugeClusterRootViewController *)self view];
    topAnchor3 = [view3 topAnchor];
    v12 = [bottomAnchor constraintEqualToAnchor:topAnchor3 constant:10.0];
    v25[1] = v12;
    centerXAnchor = [v9 centerXAnchor];
    view4 = [(DBGaugeClusterRootViewController *)self view];
    centerXAnchor2 = [view4 centerXAnchor];
    v16 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v25[2] = v16;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:3];
    [v20 activateConstraints:v17];

    [(DBGaugeClusterRootViewController *)self setAppleConfidentialLabel:v9];
  }
}

- (id)_disclaimerLabelWithText:(id)text
{
  v3 = MEMORY[0x277D756B8];
  textCopy = text;
  v5 = objc_alloc_init(v3);
  [v5 setText:textCopy];

  redColor = [MEMORY[0x277D75348] redColor];
  [v5 setTextColor:redColor];

  font = [v5 font];
  v8 = [font fontWithSize:10.0];
  [v5 setFont:v8];

  [v5 setTextAlignment:1];

  return v5;
}

- (void)session:(id)session showUIForScreenInfo:(id)info withURL:(id)l
{
  v20 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  lCopy = l;
  if (self->_OEMIconVisible)
  {
    environment = [(DBGaugeClusterRootViewController *)self environment];
    displayInfo = [environment displayInfo];
    identifier = [infoCopy identifier];
    if ([displayInfo hasVideoStreamWithIdentifier:identifier])
    {
      absoluteString = [lCopy absoluteString];
      lowercaseString = [absoluteString lowercaseString];
      v14 = [lowercaseString isEqualToString:@"gaugecluster:"];

      if (v14)
      {
        v15 = DBLogForCategory(0xAuLL);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          identifier2 = [infoCopy identifier];
          v18 = 138412290;
          v19 = identifier2;
          _os_log_impl(&dword_248146000, v15, OS_LOG_TYPE_DEFAULT, "Showing DBGaugeClusterRootViewController - showUI received for video stream: %@", &v18, 0xCu);
        }

        view = [(DBGaugeClusterRootViewController *)self view];
        [view setHidden:0];
      }
    }

    else
    {
    }
  }
}

- (void)session:(id)session stopUIForScreenInfo:(id)info
{
  v15 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  if (self->_OEMIconVisible)
  {
    environment = [(DBGaugeClusterRootViewController *)self environment];
    displayInfo = [environment displayInfo];
    identifier = [infoCopy identifier];
    v9 = [displayInfo hasVideoStreamWithIdentifier:identifier];

    if (v9)
    {
      v10 = DBLogForCategory(0xAuLL);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        identifier2 = [infoCopy identifier];
        v13 = 138412290;
        v14 = identifier2;
        _os_log_impl(&dword_248146000, v10, OS_LOG_TYPE_DEFAULT, "Hiding DBGaugeClusterRootViewController - stopUI received for video stream: %@", &v13, 0xCu);
      }

      view = [(DBGaugeClusterRootViewController *)self view];
      [view setHidden:1];
    }
  }
}

- (DBInstrumentClusterEnvironment)environment
{
  WeakRetained = objc_loadWeakRetained(&self->_environment);

  return WeakRetained;
}

@end