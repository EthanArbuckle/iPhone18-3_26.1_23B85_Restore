@interface OBPrivacyCombinedController_iOS
- (BOOL)textView:(id)view shouldInteractWithURL:(id)l inRange:(_NSRange)range interaction:(int64_t)interaction;
- (OBPrivacyCombinedController_iOS)initWithBundles:(id)bundles;
- (id)_privacyFlowForIndexPath:(id)path;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view viewForFooterInSection:(int64_t)section;
- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_languageToggleTapped;
- (void)_loadViewsWithContentFromBundles;
- (void)setCustomTintColor:(id)color;
- (void)showPrivacyGateway:(id)gateway;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
@end

@implementation OBPrivacyCombinedController_iOS

- (OBPrivacyCombinedController_iOS)initWithBundles:(id)bundles
{
  bundlesCopy = bundles;
  v9.receiver = self;
  v9.super_class = OBPrivacyCombinedController_iOS;
  v5 = [(OBPrivacyCombinedController *)&v9 initWithBundles:bundlesCopy];
  if (v5)
  {
    v6 = [bundlesCopy copy];
    bundles = v5->_bundles;
    v5->_bundles = v6;
  }

  return v5;
}

- (void)viewDidLoad
{
  v65 = *MEMORY[0x1E69E9840];
  v60.receiver = self;
  v60.super_class = OBPrivacyCombinedController_iOS;
  [(OBTableWelcomeController *)&v60 viewDidLoad];
  additionalDisplayLanguageManager = [(OBPrivacyCombinedController *)self additionalDisplayLanguageManager];

  if (!additionalDisplayLanguageManager)
  {
    v4 = [OBAdditionalDisplayLanguageManager alloc];
    displayLanguage = [(OBPrivacyCombinedController *)self displayLanguage];
    v6 = [(OBAdditionalDisplayLanguageManager *)v4 initWithDisplayLanguage:displayLanguage];
    [(OBPrivacyCombinedController *)self setAdditionalDisplayLanguageManager:v6];

    v7 = _OBLoggingFacility();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      displayLanguage2 = [(OBPrivacyCombinedController *)self displayLanguage];
      additionalDisplayLanguageManager2 = [(OBPrivacyCombinedController *)self additionalDisplayLanguageManager];
      *buf = 138412546;
      v62 = displayLanguage2;
      v63 = 2112;
      v64 = additionalDisplayLanguageManager2;
      _os_log_impl(&dword_1B4FB6000, v7, OS_LOG_TYPE_DEFAULT, "combined controller with displayLanguage %@ created %@", buf, 0x16u);
    }
  }

  v10 = _OBLoggingFacility();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    additionalDisplayLanguageManager3 = [(OBPrivacyCombinedController *)self additionalDisplayLanguageManager];
    *buf = 138412290;
    v62 = additionalDisplayLanguageManager3;
    _os_log_impl(&dword_1B4FB6000, v10, OS_LOG_TYPE_DEFAULT, "combined controller using %@", buf, 0xCu);
  }

  [(OBWelcomeController *)self setTemplateType:1];
  navigationItem = [(OBBaseWelcomeController *)self navigationItem];
  v13 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  displayLanguage3 = [(OBPrivacyCombinedController *)self displayLanguage];
  v15 = [OBUtilities localizedString:@"COMBINED_SPLASH_TITLE" forTable:@"Localizable" inBundle:v13 forLanguage:displayLanguage3];
  [navigationItem setBackButtonTitle:v15];

  if (+[OBFeatureFlags isNaturalUIEnabled])
  {
    navigationItem2 = [(OBBaseWelcomeController *)self navigationItem];
    [navigationItem2 setBackButtonDisplayMode:2];
  }

  bundles = [(OBPrivacyCombinedController_iOS *)self bundles];
  -[OBPrivacyCombinedController_iOS setIsUnifiedAbout:](self, "setIsUnifiedAbout:", [bundles count] == 0);

  underlineLinks = [(OBPrivacyCombinedController *)self underlineLinks];
  headerView = [(OBWelcomeController *)self headerView];
  [headerView setUnderlineLinks:underlineLinks];

  bundles2 = [(OBPrivacyCombinedController_iOS *)self bundles];
  v21 = [bundles2 count];

  if (!v21)
  {
    v22 = MEMORY[0x1E695DF70];
    v23 = +[OBBundleManager sharedManager];
    v24 = [v23 orderedPrivacyBundlesWithInclusionOptions:9];
    v25 = [v22 arrayWithArray:v24];

    if ([(OBPrivacyCombinedController *)self presentedFromPrivacyPane])
    {
      v26 = @"com.apple.onboarding.privacypanemini";
    }

    else
    {
      v26 = @"com.apple.onboarding.privacypane";
    }

    v27 = [OBBundle bundleWithIdentifier:v26];
    [v25 insertObject:v27 atIndex:0];
    [(OBPrivacyCombinedController_iOS *)self setBundles:v25];
  }

  [(OBPrivacyCombinedController_iOS *)self setInitialPrivacyFlow:0];
  [(OBPrivacyCombinedController_iOS *)self setIconSymbolName:0];
  v28 = objc_alloc_init(MEMORY[0x1E695DF70]);
  bundles3 = [(OBPrivacyCombinedController_iOS *)self bundles];
  v30 = [bundles3 count];

  if (v30)
  {
    v31 = 0;
    do
    {
      bundles4 = [(OBPrivacyCombinedController_iOS *)self bundles];
      v33 = [bundles4 objectAtIndexedSubscript:v31];

      privacyFlow = [v33 privacyFlow];
      if ([(OBPrivacyCombinedController_iOS *)self isUnifiedAbout])
      {
        v35 = [privacyFlow showInCombinedListForPreferredDeviceType:{-[OBPrivacyCombinedController displayDeviceType](self, "displayDeviceType")}];
      }

      else
      {
        v35 = 1;
      }

      if ([privacyFlow supportsPlatformForPreferredDeviceType:{-[OBPrivacyCombinedController displayDeviceType](self, "displayDeviceType")}] && v35)
      {
        identifier = [privacyFlow identifier];
        if (([identifier isEqualToString:@"com.apple.onboarding.imessagefacetime"] & 1) == 0)
        {
          identifier2 = [privacyFlow identifier];
          v38 = [identifier2 isEqualToString:@"com.apple.onboarding.activation"];

          if (v38)
          {
            goto LABEL_29;
          }

          if ([(OBPrivacyCombinedController_iOS *)self isUnifiedAbout]&& ([(OBPrivacyCombinedController_iOS *)self initialPrivacyFlow], v39 = objc_claimAutoreleasedReturnValue(), v39, !v39))
          {
            [(OBPrivacyCombinedController_iOS *)self setInitialPrivacyFlow:privacyFlow];
          }

          else
          {
            [v28 addObject:privacyFlow];
          }

          if (![privacyFlow isPersonallyIdentifiable])
          {
            goto LABEL_29;
          }

          identifier = [privacyFlow _iconSymbolName];
          [(OBPrivacyCombinedController_iOS *)self setIconSymbolName:identifier];
        }
      }

LABEL_29:

      ++v31;
      bundles5 = [(OBPrivacyCombinedController_iOS *)self bundles];
      v41 = [bundles5 count];
    }

    while (v31 < v41);
  }

  v42 = [v28 copy];
  [(OBPrivacyCombinedController_iOS *)self setPrivacyFlows:v42];

  v43 = objc_alloc(MEMORY[0x1E69DD020]);
  v44 = [v43 initWithFrame:2 style:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  [(OBTableWelcomeController *)self setTableView:v44];

  tableView = [(OBTableWelcomeController *)self tableView];
  [tableView setDirectionalLayoutMargins:{1.0, 1.0, 1.0, 1.0}];

  tableView2 = [(OBTableWelcomeController *)self tableView];
  [tableView2 setDelegate:self];

  tableView3 = [(OBTableWelcomeController *)self tableView];
  [tableView3 setDataSource:self];

  clearColor = [MEMORY[0x1E69DC888] clearColor];
  tableView4 = [(OBTableWelcomeController *)self tableView];
  [tableView4 setBackgroundColor:clearColor];

  tableView5 = [(OBTableWelcomeController *)self tableView];
  [tableView5 setBackgroundView:0];

  tableView6 = [(OBTableWelcomeController *)self tableView];
  [tableView6 registerClass:objc_opt_class() forCellReuseIdentifier:@"privacyTitle"];

  tableView7 = [(OBTableWelcomeController *)self tableView];
  [tableView7 registerClass:objc_opt_class() forHeaderFooterViewReuseIdentifier:@"headerView"];

  tableView8 = [(OBTableWelcomeController *)self tableView];
  [tableView8 registerClass:objc_opt_class() forHeaderFooterViewReuseIdentifier:@"footerView"];

  buttonTray = [(OBWelcomeController *)self buttonTray];
  [buttonTray setHidden:1];

  customTintColor = [(OBPrivacyCombinedController *)self customTintColor];

  if (customTintColor)
  {
    v59.receiver = self;
    v59.super_class = OBPrivacyCombinedController_iOS;
    customTintColor2 = [(OBPrivacyCombinedController *)&v59 customTintColor];
    view = [(OBPrivacyCombinedController_iOS *)self view];
    [view setTintColor:customTintColor2];
  }

  [(OBPrivacyCombinedController_iOS *)self _loadViewsWithContentFromBundles];

  v58 = *MEMORY[0x1E69E9840];
}

- (void)_loadViewsWithContentFromBundles
{
  v51[1] = *MEMORY[0x1E69E9840];
  if ([(OBPrivacyCombinedController_iOS *)self isUnifiedAbout])
  {
    v3 = [OBPrivacyFlowGroup alloc];
    privacyFlows = [(OBPrivacyCombinedController_iOS *)self privacyFlows];
    v5 = [(OBPrivacyFlowGroup *)v3 initWithIdentifier:0 privacyFlows:privacyFlows];

    v51[0] = v5;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v51 count:1];
    [(OBPrivacyCombinedController_iOS *)self setPrivacyFlowGroups:v6];
  }

  else
  {
    privacyFlows2 = [(OBPrivacyCombinedController_iOS *)self privacyFlows];
    displayLanguage = [(OBPrivacyCombinedController *)self displayLanguage];
    v9 = [OBPrivacyFlowGroup groupFlowsByCombinedHeader:privacyFlows2 language:displayLanguage preferredDeviceType:[(OBPrivacyCombinedController *)self displayDeviceType]];
    [(OBPrivacyCombinedController_iOS *)self setPrivacyFlowGroups:v9];
  }

  initialPrivacyFlow = [(OBPrivacyCombinedController_iOS *)self initialPrivacyFlow];

  headerView = [(OBWelcomeController *)self headerView];
  if (!initialPrivacyFlow)
  {
    v39 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    displayLanguage2 = [(OBPrivacyCombinedController *)self displayLanguage];
    v41 = [OBUtilities localizedString:@"COMBINED_SPLASH_TITLE" forTable:@"Localizable" inBundle:v39 forLanguage:displayLanguage2];
    [headerView setTitle:v41];

    headerView2 = [(OBWelcomeController *)self headerView];
    v18 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    displayLanguage3 = [(OBPrivacyCombinedController *)self displayLanguage];
    linkToPrivacyGatewayButton4 = [OBUtilities localizedString:@"COMBINED_SPLASH_DETAIL" forTable:@"Localizable" inBundle:v18 forLanguage:displayLanguage3];
    [headerView2 setDetailText:linkToPrivacyGatewayButton4];
LABEL_19:

    goto LABEL_20;
  }

  initialPrivacyFlow2 = [(OBPrivacyCombinedController_iOS *)self initialPrivacyFlow];
  displayLanguage4 = [(OBPrivacyCombinedController *)self displayLanguage];
  v14 = [initialPrivacyFlow2 localizedTitleForLanguage:displayLanguage4 preferredDeviceType:{-[OBPrivacyCombinedController displayDeviceType](self, "displayDeviceType")}];
  [headerView setTitle:v14];

  headerView2 = objc_alloc_init(MEMORY[0x1E696AD60]);
  initialPrivacyFlow3 = [(OBPrivacyCombinedController_iOS *)self initialPrivacyFlow];
  displayLanguage5 = [(OBPrivacyCombinedController *)self displayLanguage];
  v18 = [initialPrivacyFlow3 localizedContentListForLanguage:displayLanguage5 preferredDeviceType:{-[OBPrivacyCombinedController displayDeviceType](self, "displayDeviceType")}];

  if ([v18 count])
  {
    v19 = 0;
    do
    {
      v20 = [v18 objectAtIndexedSubscript:v19];
      text = [v20 text];
      [headerView2 appendString:text];

      if (v19 < [v18 count] - 1)
      {
        [headerView2 appendFormat:@"\n\n"];
      }

      ++v19;
    }

    while (v19 < [v18 count]);
  }

  if (![(OBPrivacyCombinedController *)self allowsOpeningSafari])
  {
    if ([headerView2 length])
    {
      [headerView2 appendString:@" "];
    }

    v22 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    displayLanguage6 = [(OBPrivacyCombinedController *)self displayLanguage];
    v24 = [OBUtilities localizedString:@"PRIVACY_WEB_DESCRIPTION" forTable:@"Localizable" inBundle:v22 forLanguage:displayLanguage6];
    v25 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    displayLanguage7 = [(OBPrivacyCombinedController *)self displayLanguage];
    v27 = [OBUtilities localizedString:@"PRIVACY_WEB_LINK" forTable:@"Localizable" inBundle:v25 forLanguage:displayLanguage7];
    [headerView2 appendFormat:@"%@\n%@", v24, v27];
  }

  headerView3 = [(OBWelcomeController *)self headerView];
  [headerView3 setDetailText:headerView2];

  if ([(OBPrivacyCombinedController *)self allowsOpeningSafari])
  {
    linkToPrivacyGatewayButton = [(OBPrivacyCombinedController_iOS *)self linkToPrivacyGatewayButton];

    if (linkToPrivacyGatewayButton)
    {
      headerView4 = [(OBWelcomeController *)self headerView];
      [headerView4 removeAccessoryButton];
    }

    v31 = +[OBHeaderAccessoryButton accessoryButton];
    [(OBPrivacyCombinedController_iOS *)self setLinkToPrivacyGatewayButton:v31];

    linkToPrivacyGatewayButton2 = [(OBPrivacyCombinedController_iOS *)self linkToPrivacyGatewayButton];
    v33 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    displayLanguage8 = [(OBPrivacyCombinedController *)self displayLanguage];
    v35 = [OBUtilities localizedString:@"MANAGE_YOUR_DATA" forTable:@"Localizable" inBundle:v33 forLanguage:displayLanguage8];
    [linkToPrivacyGatewayButton2 setTitle:v35 forState:0];

    linkToPrivacyGatewayButton3 = [(OBPrivacyCombinedController_iOS *)self linkToPrivacyGatewayButton];
    [linkToPrivacyGatewayButton3 addTarget:self action:sel_showPrivacyGateway_ forControlEvents:0x2000];

    displayLanguage3 = [(OBWelcomeController *)self headerView];
    linkToPrivacyGatewayButton4 = [(OBPrivacyCombinedController_iOS *)self linkToPrivacyGatewayButton];
    [displayLanguage3 addAccessoryButton:linkToPrivacyGatewayButton4];
    goto LABEL_19;
  }

LABEL_20:

  iconSymbolName = [(OBPrivacyCombinedController_iOS *)self iconSymbolName];

  if (iconSymbolName)
  {
    headerView5 = [(OBWelcomeController *)self headerView];
    iconSymbolName2 = [(OBPrivacyCombinedController_iOS *)self iconSymbolName];
    v45 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    displayLanguage9 = [(OBPrivacyCombinedController *)self displayLanguage];
    v47 = [OBUtilities localizedString:@"PRIVACY_ICON_DESCRIPTION" forTable:@"Localizable" inBundle:v45 forLanguage:displayLanguage9];
    [headerView5 setSymbol:iconSymbolName2 accessibilityLabel:v47];

    headerView6 = [(OBWelcomeController *)self headerView];
    [headerView6 setIconInheritsTint:1];
  }

  tableView = [(OBTableWelcomeController *)self tableView];
  [tableView reloadData];

  v50 = *MEMORY[0x1E69E9840];
}

- (void)showPrivacyGateway:(id)gateway
{
  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  v4 = MEMORY[0x1E695DFF8];
  v5 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  displayLanguage = [(OBPrivacyCombinedController *)self displayLanguage];
  v7 = [OBUtilities localizedString:@"PRIVACY_HTTP_WEB_LINK" forTable:@"Localizable" inBundle:v5 forLanguage:displayLanguage];
  v8 = [v4 URLWithString:v7];
  [mEMORY[0x1E69DC668] openURL:v8 options:MEMORY[0x1E695E0F8] completionHandler:0];
}

- (void)setCustomTintColor:(id)color
{
  colorCopy = color;
  v6.receiver = self;
  v6.super_class = OBPrivacyCombinedController_iOS;
  [(OBPrivacyCombinedController *)&v6 setCustomTintColor:colorCopy];
  if ([(OBPrivacyCombinedController_iOS *)self isViewLoaded])
  {
    view = [(OBPrivacyCombinedController_iOS *)self view];
    [view setTintColor:colorCopy];
  }
}

- (id)_privacyFlowForIndexPath:(id)path
{
  pathCopy = path;
  privacyFlowGroups = [(OBPrivacyCombinedController_iOS *)self privacyFlowGroups];
  v6 = [privacyFlowGroups objectAtIndexedSubscript:{objc_msgSend(pathCopy, "section")}];
  privacyFlows = [v6 privacyFlows];
  v8 = [pathCopy row];

  v9 = [privacyFlows objectAtIndexedSubscript:v8];

  return v9;
}

- (void)_languageToggleTapped
{
  additionalDisplayLanguageManager = [(OBPrivacyCombinedController *)self additionalDisplayLanguageManager];
  displayLanguage = [(OBPrivacyCombinedController *)self displayLanguage];
  v5 = [additionalDisplayLanguageManager didTapRightBarButtonItemForWelcomeController:self currentDisplayLanguage:displayLanguage];
  [(OBPrivacyCombinedController *)self setDisplayLanguage:v5];

  additionalDisplayLanguageManager2 = [(OBPrivacyCombinedController *)self additionalDisplayLanguageManager];
  displayLanguage2 = [(OBPrivacyCombinedController *)self displayLanguage];
  [additionalDisplayLanguageManager2 configureNavigationItemRightBarButtonItemForWelcomeController:self currentDisplayLanguage:displayLanguage2 action:sel__languageToggleTapped];

  [(OBPrivacyCombinedController_iOS *)self _loadViewsWithContentFromBundles];
  view = [(OBPrivacyCombinedController_iOS *)self view];
  [view setNeedsLayout];
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v10 = [(OBPrivacyCombinedController_iOS *)self _privacyFlowForIndexPath:path];
  v5 = [[OBPrivacySplashController alloc] initWithFlow:v10];
  [(OBPrivacySplashController *)v5 setUnderlineLinks:[(OBPrivacyCombinedController *)self underlineLinks]];
  displayLanguage = [(OBPrivacyCombinedController *)self displayLanguage];
  [(OBPrivacySplashController *)v5 setDisplayLanguage:displayLanguage];

  [(OBPrivacySplashController *)v5 setDisplayDeviceType:[(OBPrivacyCombinedController *)self displayDeviceType]];
  additionalDisplayLanguageManager = [(OBPrivacyCombinedController *)self additionalDisplayLanguageManager];
  [(OBPrivacySplashController *)v5 setAdditionalDisplayLanguageManager:additionalDisplayLanguageManager];

  [(OBPrivacySplashController *)v5 setShowsLinkToUnifiedAbout:[(OBPrivacyCombinedController_iOS *)self isUnifiedAbout]^ 1];
  customTintColor = [(OBPrivacyCombinedController *)self customTintColor];
  [(OBPrivacySplashController *)v5 setCustomTintColor:customTintColor];

  [(OBWelcomeController *)v5 setDarkMode:[(OBWelcomeController *)self darkMode]];
  navigationController = [(OBPrivacyCombinedController_iOS *)self navigationController];
  [navigationController pushViewController:v5 animated:1];
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  privacyFlowGroups = [(OBPrivacyCombinedController_iOS *)self privacyFlowGroups];
  v4 = [privacyFlowGroups count];

  return v4;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  privacyFlowGroups = [(OBPrivacyCombinedController_iOS *)self privacyFlowGroups];
  v6 = [privacyFlowGroups objectAtIndexedSubscript:section];
  privacyFlows = [v6 privacyFlows];
  v8 = [privacyFlows count];

  return v8;
}

- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  privacyFlowGroups = [(OBPrivacyCombinedController_iOS *)self privacyFlowGroups];
  v8 = [privacyFlowGroups objectAtIndexedSubscript:section];

  identifier = [v8 identifier];

  if (identifier)
  {
    identifier = [viewCopy dequeueReusableHeaderFooterViewWithIdentifier:@"headerView"];
    footerConfiguration = [MEMORY[0x1E69DCC28] footerConfiguration];
    identifier2 = [v8 identifier];
    [footerConfiguration setText:identifier2];

    labelColor = [MEMORY[0x1E69DC888] labelColor];
    textProperties = [footerConfiguration textProperties];
    [textProperties setColor:labelColor];

    v14 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
    textProperties2 = [footerConfiguration textProperties];
    [textProperties2 setFont:v14];

    textProperties3 = [footerConfiguration textProperties];
    [textProperties3 setTransform:0];

    [identifier setContentConfiguration:footerConfiguration];
  }

  return identifier;
}

- (id)tableView:(id)view viewForFooterInSection:(int64_t)section
{
  v47[4] = *MEMORY[0x1E69E9840];
  viewCopy = view;
  privacyFlowGroups = [(OBPrivacyCombinedController_iOS *)self privacyFlowGroups];
  v8 = [privacyFlowGroups objectAtIndexedSubscript:section];

  privacyFlows = [v8 privacyFlows];
  firstObject = [privacyFlows firstObject];
  displayLanguage = [(OBPrivacyCombinedController *)self displayLanguage];
  v12 = [firstObject localizedCombinedFooterForLanguage:displayLanguage preferredDeviceType:{-[OBPrivacyCombinedController displayDeviceType](self, "displayDeviceType")}];

  if (v12)
  {
    v13 = [viewCopy dequeueReusableHeaderFooterViewWithIdentifier:@"footerView"];
    v14 = objc_alloc(MEMORY[0x1E69DD168]);
    v45 = v8;
    v15 = [v14 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    [v15 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v15 setAttributedText:v12];
    labelColor = [MEMORY[0x1E69DC888] labelColor];
    [v15 setTextColor:labelColor];

    v17 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
    [v15 setFont:v17];

    [v15 setScrollEnabled:0];
    [v15 setEditable:0];
    [v15 setSelectable:1];
    [v15 setInsetsLayoutMarginsFromSafeArea:0];
    textContainer = [v15 textContainer];
    [textContainer setLineFragmentPadding:0.0];

    [v15 setDelegate:self];
    contentView = [v13 contentView];
    [contentView addSubview:v15];

    v34 = MEMORY[0x1E696ACD8];
    leadingAnchor = [v15 leadingAnchor];
    contentView2 = [v13 contentView];
    layoutMarginsGuide = [contentView2 layoutMarginsGuide];
    leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
    v39 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v47[0] = v39;
    trailingAnchor = [v15 trailingAnchor];
    contentView3 = [v13 contentView];
    layoutMarginsGuide2 = [contentView3 layoutMarginsGuide];
    trailingAnchor2 = [layoutMarginsGuide2 trailingAnchor];
    v33 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v47[1] = v33;
    topAnchor = [v15 topAnchor];
    contentView4 = [v13 contentView];
    layoutMarginsGuide3 = [contentView4 layoutMarginsGuide];
    topAnchor2 = [layoutMarginsGuide3 topAnchor];
    v21 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v47[2] = v21;
    bottomAnchor = [v15 bottomAnchor];
    v46 = v13;
    [v13 contentView];
    v23 = v44 = v12;
    layoutMarginsGuide4 = [v23 layoutMarginsGuide];
    bottomAnchor2 = [layoutMarginsGuide4 bottomAnchor];
    v26 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v47[3] = v26;
    v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v47 count:4];
    [v34 activateConstraints:v27];

    v12 = v44;
    v8 = v45;
  }

  else
  {
    v46 = 0;
  }

  v28 = *MEMORY[0x1E69E9840];

  return v46;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = [view dequeueReusableCellWithIdentifier:@"privacyTitle"];
  v8 = [(OBPrivacyCombinedController_iOS *)self _privacyFlowForIndexPath:pathCopy];

  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [v7 setBackgroundColor:clearColor];

  [v7 setSelectionStyle:0];
  textLabel = [v7 textLabel];
  displayLanguage = [(OBPrivacyCombinedController *)self displayLanguage];
  v12 = [v8 localizedShortTitleForLanguage:displayLanguage preferredDeviceType:{-[OBPrivacyCombinedController displayDeviceType](self, "displayDeviceType")}];
  [textLabel setText:v12];

  textLabel2 = [v7 textLabel];
  labelColor = [MEMORY[0x1E69DC888] labelColor];
  [textLabel2 setTextColor:labelColor];

  textLabel3 = [v7 textLabel];
  v16 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD40]];
  [textLabel3 setFont:v16];

  textLabel4 = [v7 textLabel];
  [textLabel4 setNumberOfLines:0];

  [v7 setAccessoryType:1];
  [v7 setSelectionStyle:2];
  secondarySystemBackgroundColor = [MEMORY[0x1E69DC888] secondarySystemBackgroundColor];
  [v7 setBackgroundColor:secondarySystemBackgroundColor];

  return v7;
}

- (BOOL)textView:(id)view shouldInteractWithURL:(id)l inRange:(_NSRange)range interaction:(int64_t)interaction
{
  v6 = MEMORY[0x1E6963608];
  lCopy = l;
  defaultWorkspace = [v6 defaultWorkspace];
  [defaultWorkspace openSensitiveURL:lCopy withOptions:0];

  return 0;
}

@end