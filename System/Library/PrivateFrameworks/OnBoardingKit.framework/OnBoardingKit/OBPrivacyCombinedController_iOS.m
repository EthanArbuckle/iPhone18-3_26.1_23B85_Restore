@interface OBPrivacyCombinedController_iOS
- (BOOL)textView:(id)a3 shouldInteractWithURL:(id)a4 inRange:(_NSRange)a5 interaction:(int64_t)a6;
- (OBPrivacyCombinedController_iOS)initWithBundles:(id)a3;
- (id)_privacyFlowForIndexPath:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4;
- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_languageToggleTapped;
- (void)_loadViewsWithContentFromBundles;
- (void)setCustomTintColor:(id)a3;
- (void)showPrivacyGateway:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
@end

@implementation OBPrivacyCombinedController_iOS

- (OBPrivacyCombinedController_iOS)initWithBundles:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = OBPrivacyCombinedController_iOS;
  v5 = [(OBPrivacyCombinedController *)&v9 initWithBundles:v4];
  if (v5)
  {
    v6 = [v4 copy];
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
  v3 = [(OBPrivacyCombinedController *)self additionalDisplayLanguageManager];

  if (!v3)
  {
    v4 = [OBAdditionalDisplayLanguageManager alloc];
    v5 = [(OBPrivacyCombinedController *)self displayLanguage];
    v6 = [(OBAdditionalDisplayLanguageManager *)v4 initWithDisplayLanguage:v5];
    [(OBPrivacyCombinedController *)self setAdditionalDisplayLanguageManager:v6];

    v7 = _OBLoggingFacility();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [(OBPrivacyCombinedController *)self displayLanguage];
      v9 = [(OBPrivacyCombinedController *)self additionalDisplayLanguageManager];
      *buf = 138412546;
      v62 = v8;
      v63 = 2112;
      v64 = v9;
      _os_log_impl(&dword_1B4FB6000, v7, OS_LOG_TYPE_DEFAULT, "combined controller with displayLanguage %@ created %@", buf, 0x16u);
    }
  }

  v10 = _OBLoggingFacility();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [(OBPrivacyCombinedController *)self additionalDisplayLanguageManager];
    *buf = 138412290;
    v62 = v11;
    _os_log_impl(&dword_1B4FB6000, v10, OS_LOG_TYPE_DEFAULT, "combined controller using %@", buf, 0xCu);
  }

  [(OBWelcomeController *)self setTemplateType:1];
  v12 = [(OBBaseWelcomeController *)self navigationItem];
  v13 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v14 = [(OBPrivacyCombinedController *)self displayLanguage];
  v15 = [OBUtilities localizedString:@"COMBINED_SPLASH_TITLE" forTable:@"Localizable" inBundle:v13 forLanguage:v14];
  [v12 setBackButtonTitle:v15];

  if (+[OBFeatureFlags isNaturalUIEnabled])
  {
    v16 = [(OBBaseWelcomeController *)self navigationItem];
    [v16 setBackButtonDisplayMode:2];
  }

  v17 = [(OBPrivacyCombinedController_iOS *)self bundles];
  -[OBPrivacyCombinedController_iOS setIsUnifiedAbout:](self, "setIsUnifiedAbout:", [v17 count] == 0);

  v18 = [(OBPrivacyCombinedController *)self underlineLinks];
  v19 = [(OBWelcomeController *)self headerView];
  [v19 setUnderlineLinks:v18];

  v20 = [(OBPrivacyCombinedController_iOS *)self bundles];
  v21 = [v20 count];

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
  v29 = [(OBPrivacyCombinedController_iOS *)self bundles];
  v30 = [v29 count];

  if (v30)
  {
    v31 = 0;
    do
    {
      v32 = [(OBPrivacyCombinedController_iOS *)self bundles];
      v33 = [v32 objectAtIndexedSubscript:v31];

      v34 = [v33 privacyFlow];
      if ([(OBPrivacyCombinedController_iOS *)self isUnifiedAbout])
      {
        v35 = [v34 showInCombinedListForPreferredDeviceType:{-[OBPrivacyCombinedController displayDeviceType](self, "displayDeviceType")}];
      }

      else
      {
        v35 = 1;
      }

      if ([v34 supportsPlatformForPreferredDeviceType:{-[OBPrivacyCombinedController displayDeviceType](self, "displayDeviceType")}] && v35)
      {
        v36 = [v34 identifier];
        if (([v36 isEqualToString:@"com.apple.onboarding.imessagefacetime"] & 1) == 0)
        {
          v37 = [v34 identifier];
          v38 = [v37 isEqualToString:@"com.apple.onboarding.activation"];

          if (v38)
          {
            goto LABEL_29;
          }

          if ([(OBPrivacyCombinedController_iOS *)self isUnifiedAbout]&& ([(OBPrivacyCombinedController_iOS *)self initialPrivacyFlow], v39 = objc_claimAutoreleasedReturnValue(), v39, !v39))
          {
            [(OBPrivacyCombinedController_iOS *)self setInitialPrivacyFlow:v34];
          }

          else
          {
            [v28 addObject:v34];
          }

          if (![v34 isPersonallyIdentifiable])
          {
            goto LABEL_29;
          }

          v36 = [v34 _iconSymbolName];
          [(OBPrivacyCombinedController_iOS *)self setIconSymbolName:v36];
        }
      }

LABEL_29:

      ++v31;
      v40 = [(OBPrivacyCombinedController_iOS *)self bundles];
      v41 = [v40 count];
    }

    while (v31 < v41);
  }

  v42 = [v28 copy];
  [(OBPrivacyCombinedController_iOS *)self setPrivacyFlows:v42];

  v43 = objc_alloc(MEMORY[0x1E69DD020]);
  v44 = [v43 initWithFrame:2 style:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  [(OBTableWelcomeController *)self setTableView:v44];

  v45 = [(OBTableWelcomeController *)self tableView];
  [v45 setDirectionalLayoutMargins:{1.0, 1.0, 1.0, 1.0}];

  v46 = [(OBTableWelcomeController *)self tableView];
  [v46 setDelegate:self];

  v47 = [(OBTableWelcomeController *)self tableView];
  [v47 setDataSource:self];

  v48 = [MEMORY[0x1E69DC888] clearColor];
  v49 = [(OBTableWelcomeController *)self tableView];
  [v49 setBackgroundColor:v48];

  v50 = [(OBTableWelcomeController *)self tableView];
  [v50 setBackgroundView:0];

  v51 = [(OBTableWelcomeController *)self tableView];
  [v51 registerClass:objc_opt_class() forCellReuseIdentifier:@"privacyTitle"];

  v52 = [(OBTableWelcomeController *)self tableView];
  [v52 registerClass:objc_opt_class() forHeaderFooterViewReuseIdentifier:@"headerView"];

  v53 = [(OBTableWelcomeController *)self tableView];
  [v53 registerClass:objc_opt_class() forHeaderFooterViewReuseIdentifier:@"footerView"];

  v54 = [(OBWelcomeController *)self buttonTray];
  [v54 setHidden:1];

  v55 = [(OBPrivacyCombinedController *)self customTintColor];

  if (v55)
  {
    v59.receiver = self;
    v59.super_class = OBPrivacyCombinedController_iOS;
    v56 = [(OBPrivacyCombinedController *)&v59 customTintColor];
    v57 = [(OBPrivacyCombinedController_iOS *)self view];
    [v57 setTintColor:v56];
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
    v4 = [(OBPrivacyCombinedController_iOS *)self privacyFlows];
    v5 = [(OBPrivacyFlowGroup *)v3 initWithIdentifier:0 privacyFlows:v4];

    v51[0] = v5;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v51 count:1];
    [(OBPrivacyCombinedController_iOS *)self setPrivacyFlowGroups:v6];
  }

  else
  {
    v7 = [(OBPrivacyCombinedController_iOS *)self privacyFlows];
    v8 = [(OBPrivacyCombinedController *)self displayLanguage];
    v9 = [OBPrivacyFlowGroup groupFlowsByCombinedHeader:v7 language:v8 preferredDeviceType:[(OBPrivacyCombinedController *)self displayDeviceType]];
    [(OBPrivacyCombinedController_iOS *)self setPrivacyFlowGroups:v9];
  }

  v10 = [(OBPrivacyCombinedController_iOS *)self initialPrivacyFlow];

  v11 = [(OBWelcomeController *)self headerView];
  if (!v10)
  {
    v39 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v40 = [(OBPrivacyCombinedController *)self displayLanguage];
    v41 = [OBUtilities localizedString:@"COMBINED_SPLASH_TITLE" forTable:@"Localizable" inBundle:v39 forLanguage:v40];
    [v11 setTitle:v41];

    v15 = [(OBWelcomeController *)self headerView];
    v18 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v37 = [(OBPrivacyCombinedController *)self displayLanguage];
    v38 = [OBUtilities localizedString:@"COMBINED_SPLASH_DETAIL" forTable:@"Localizable" inBundle:v18 forLanguage:v37];
    [v15 setDetailText:v38];
LABEL_19:

    goto LABEL_20;
  }

  v12 = [(OBPrivacyCombinedController_iOS *)self initialPrivacyFlow];
  v13 = [(OBPrivacyCombinedController *)self displayLanguage];
  v14 = [v12 localizedTitleForLanguage:v13 preferredDeviceType:{-[OBPrivacyCombinedController displayDeviceType](self, "displayDeviceType")}];
  [v11 setTitle:v14];

  v15 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v16 = [(OBPrivacyCombinedController_iOS *)self initialPrivacyFlow];
  v17 = [(OBPrivacyCombinedController *)self displayLanguage];
  v18 = [v16 localizedContentListForLanguage:v17 preferredDeviceType:{-[OBPrivacyCombinedController displayDeviceType](self, "displayDeviceType")}];

  if ([v18 count])
  {
    v19 = 0;
    do
    {
      v20 = [v18 objectAtIndexedSubscript:v19];
      v21 = [v20 text];
      [v15 appendString:v21];

      if (v19 < [v18 count] - 1)
      {
        [v15 appendFormat:@"\n\n"];
      }

      ++v19;
    }

    while (v19 < [v18 count]);
  }

  if (![(OBPrivacyCombinedController *)self allowsOpeningSafari])
  {
    if ([v15 length])
    {
      [v15 appendString:@" "];
    }

    v22 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v23 = [(OBPrivacyCombinedController *)self displayLanguage];
    v24 = [OBUtilities localizedString:@"PRIVACY_WEB_DESCRIPTION" forTable:@"Localizable" inBundle:v22 forLanguage:v23];
    v25 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v26 = [(OBPrivacyCombinedController *)self displayLanguage];
    v27 = [OBUtilities localizedString:@"PRIVACY_WEB_LINK" forTable:@"Localizable" inBundle:v25 forLanguage:v26];
    [v15 appendFormat:@"%@\n%@", v24, v27];
  }

  v28 = [(OBWelcomeController *)self headerView];
  [v28 setDetailText:v15];

  if ([(OBPrivacyCombinedController *)self allowsOpeningSafari])
  {
    v29 = [(OBPrivacyCombinedController_iOS *)self linkToPrivacyGatewayButton];

    if (v29)
    {
      v30 = [(OBWelcomeController *)self headerView];
      [v30 removeAccessoryButton];
    }

    v31 = +[OBHeaderAccessoryButton accessoryButton];
    [(OBPrivacyCombinedController_iOS *)self setLinkToPrivacyGatewayButton:v31];

    v32 = [(OBPrivacyCombinedController_iOS *)self linkToPrivacyGatewayButton];
    v33 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v34 = [(OBPrivacyCombinedController *)self displayLanguage];
    v35 = [OBUtilities localizedString:@"MANAGE_YOUR_DATA" forTable:@"Localizable" inBundle:v33 forLanguage:v34];
    [v32 setTitle:v35 forState:0];

    v36 = [(OBPrivacyCombinedController_iOS *)self linkToPrivacyGatewayButton];
    [v36 addTarget:self action:sel_showPrivacyGateway_ forControlEvents:0x2000];

    v37 = [(OBWelcomeController *)self headerView];
    v38 = [(OBPrivacyCombinedController_iOS *)self linkToPrivacyGatewayButton];
    [v37 addAccessoryButton:v38];
    goto LABEL_19;
  }

LABEL_20:

  v42 = [(OBPrivacyCombinedController_iOS *)self iconSymbolName];

  if (v42)
  {
    v43 = [(OBWelcomeController *)self headerView];
    v44 = [(OBPrivacyCombinedController_iOS *)self iconSymbolName];
    v45 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v46 = [(OBPrivacyCombinedController *)self displayLanguage];
    v47 = [OBUtilities localizedString:@"PRIVACY_ICON_DESCRIPTION" forTable:@"Localizable" inBundle:v45 forLanguage:v46];
    [v43 setSymbol:v44 accessibilityLabel:v47];

    v48 = [(OBWelcomeController *)self headerView];
    [v48 setIconInheritsTint:1];
  }

  v49 = [(OBTableWelcomeController *)self tableView];
  [v49 reloadData];

  v50 = *MEMORY[0x1E69E9840];
}

- (void)showPrivacyGateway:(id)a3
{
  v9 = [MEMORY[0x1E69DC668] sharedApplication];
  v4 = MEMORY[0x1E695DFF8];
  v5 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v6 = [(OBPrivacyCombinedController *)self displayLanguage];
  v7 = [OBUtilities localizedString:@"PRIVACY_HTTP_WEB_LINK" forTable:@"Localizable" inBundle:v5 forLanguage:v6];
  v8 = [v4 URLWithString:v7];
  [v9 openURL:v8 options:MEMORY[0x1E695E0F8] completionHandler:0];
}

- (void)setCustomTintColor:(id)a3
{
  v4 = a3;
  v6.receiver = self;
  v6.super_class = OBPrivacyCombinedController_iOS;
  [(OBPrivacyCombinedController *)&v6 setCustomTintColor:v4];
  if ([(OBPrivacyCombinedController_iOS *)self isViewLoaded])
  {
    v5 = [(OBPrivacyCombinedController_iOS *)self view];
    [v5 setTintColor:v4];
  }
}

- (id)_privacyFlowForIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(OBPrivacyCombinedController_iOS *)self privacyFlowGroups];
  v6 = [v5 objectAtIndexedSubscript:{objc_msgSend(v4, "section")}];
  v7 = [v6 privacyFlows];
  v8 = [v4 row];

  v9 = [v7 objectAtIndexedSubscript:v8];

  return v9;
}

- (void)_languageToggleTapped
{
  v3 = [(OBPrivacyCombinedController *)self additionalDisplayLanguageManager];
  v4 = [(OBPrivacyCombinedController *)self displayLanguage];
  v5 = [v3 didTapRightBarButtonItemForWelcomeController:self currentDisplayLanguage:v4];
  [(OBPrivacyCombinedController *)self setDisplayLanguage:v5];

  v6 = [(OBPrivacyCombinedController *)self additionalDisplayLanguageManager];
  v7 = [(OBPrivacyCombinedController *)self displayLanguage];
  [v6 configureNavigationItemRightBarButtonItemForWelcomeController:self currentDisplayLanguage:v7 action:sel__languageToggleTapped];

  [(OBPrivacyCombinedController_iOS *)self _loadViewsWithContentFromBundles];
  v8 = [(OBPrivacyCombinedController_iOS *)self view];
  [v8 setNeedsLayout];
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v10 = [(OBPrivacyCombinedController_iOS *)self _privacyFlowForIndexPath:a4];
  v5 = [[OBPrivacySplashController alloc] initWithFlow:v10];
  [(OBPrivacySplashController *)v5 setUnderlineLinks:[(OBPrivacyCombinedController *)self underlineLinks]];
  v6 = [(OBPrivacyCombinedController *)self displayLanguage];
  [(OBPrivacySplashController *)v5 setDisplayLanguage:v6];

  [(OBPrivacySplashController *)v5 setDisplayDeviceType:[(OBPrivacyCombinedController *)self displayDeviceType]];
  v7 = [(OBPrivacyCombinedController *)self additionalDisplayLanguageManager];
  [(OBPrivacySplashController *)v5 setAdditionalDisplayLanguageManager:v7];

  [(OBPrivacySplashController *)v5 setShowsLinkToUnifiedAbout:[(OBPrivacyCombinedController_iOS *)self isUnifiedAbout]^ 1];
  v8 = [(OBPrivacyCombinedController *)self customTintColor];
  [(OBPrivacySplashController *)v5 setCustomTintColor:v8];

  [(OBWelcomeController *)v5 setDarkMode:[(OBWelcomeController *)self darkMode]];
  v9 = [(OBPrivacyCombinedController_iOS *)self navigationController];
  [v9 pushViewController:v5 animated:1];
}

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  v3 = [(OBPrivacyCombinedController_iOS *)self privacyFlowGroups];
  v4 = [v3 count];

  return v4;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v5 = [(OBPrivacyCombinedController_iOS *)self privacyFlowGroups];
  v6 = [v5 objectAtIndexedSubscript:a4];
  v7 = [v6 privacyFlows];
  v8 = [v7 count];

  return v8;
}

- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4
{
  v6 = a3;
  v7 = [(OBPrivacyCombinedController_iOS *)self privacyFlowGroups];
  v8 = [v7 objectAtIndexedSubscript:a4];

  v9 = [v8 identifier];

  if (v9)
  {
    v9 = [v6 dequeueReusableHeaderFooterViewWithIdentifier:@"headerView"];
    v10 = [MEMORY[0x1E69DCC28] footerConfiguration];
    v11 = [v8 identifier];
    [v10 setText:v11];

    v12 = [MEMORY[0x1E69DC888] labelColor];
    v13 = [v10 textProperties];
    [v13 setColor:v12];

    v14 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
    v15 = [v10 textProperties];
    [v15 setFont:v14];

    v16 = [v10 textProperties];
    [v16 setTransform:0];

    [v9 setContentConfiguration:v10];
  }

  return v9;
}

- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4
{
  v47[4] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(OBPrivacyCombinedController_iOS *)self privacyFlowGroups];
  v8 = [v7 objectAtIndexedSubscript:a4];

  v9 = [v8 privacyFlows];
  v10 = [v9 firstObject];
  v11 = [(OBPrivacyCombinedController *)self displayLanguage];
  v12 = [v10 localizedCombinedFooterForLanguage:v11 preferredDeviceType:{-[OBPrivacyCombinedController displayDeviceType](self, "displayDeviceType")}];

  if (v12)
  {
    v13 = [v6 dequeueReusableHeaderFooterViewWithIdentifier:@"footerView"];
    v14 = objc_alloc(MEMORY[0x1E69DD168]);
    v45 = v8;
    v15 = [v14 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    [v15 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v15 setAttributedText:v12];
    v16 = [MEMORY[0x1E69DC888] labelColor];
    [v15 setTextColor:v16];

    v17 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
    [v15 setFont:v17];

    [v15 setScrollEnabled:0];
    [v15 setEditable:0];
    [v15 setSelectable:1];
    [v15 setInsetsLayoutMarginsFromSafeArea:0];
    v18 = [v15 textContainer];
    [v18 setLineFragmentPadding:0.0];

    [v15 setDelegate:self];
    v19 = [v13 contentView];
    [v19 addSubview:v15];

    v34 = MEMORY[0x1E696ACD8];
    v42 = [v15 leadingAnchor];
    v43 = [v13 contentView];
    v41 = [v43 layoutMarginsGuide];
    v40 = [v41 leadingAnchor];
    v39 = [v42 constraintEqualToAnchor:v40];
    v47[0] = v39;
    v37 = [v15 trailingAnchor];
    v38 = [v13 contentView];
    v36 = [v38 layoutMarginsGuide];
    v35 = [v36 trailingAnchor];
    v33 = [v37 constraintEqualToAnchor:v35];
    v47[1] = v33;
    v31 = [v15 topAnchor];
    v32 = [v13 contentView];
    v30 = [v32 layoutMarginsGuide];
    v20 = [v30 topAnchor];
    v21 = [v31 constraintEqualToAnchor:v20];
    v47[2] = v21;
    v22 = [v15 bottomAnchor];
    v46 = v13;
    [v13 contentView];
    v23 = v44 = v12;
    v24 = [v23 layoutMarginsGuide];
    v25 = [v24 bottomAnchor];
    v26 = [v22 constraintEqualToAnchor:v25];
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

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = [a3 dequeueReusableCellWithIdentifier:@"privacyTitle"];
  v8 = [(OBPrivacyCombinedController_iOS *)self _privacyFlowForIndexPath:v6];

  v9 = [MEMORY[0x1E69DC888] clearColor];
  [v7 setBackgroundColor:v9];

  [v7 setSelectionStyle:0];
  v10 = [v7 textLabel];
  v11 = [(OBPrivacyCombinedController *)self displayLanguage];
  v12 = [v8 localizedShortTitleForLanguage:v11 preferredDeviceType:{-[OBPrivacyCombinedController displayDeviceType](self, "displayDeviceType")}];
  [v10 setText:v12];

  v13 = [v7 textLabel];
  v14 = [MEMORY[0x1E69DC888] labelColor];
  [v13 setTextColor:v14];

  v15 = [v7 textLabel];
  v16 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD40]];
  [v15 setFont:v16];

  v17 = [v7 textLabel];
  [v17 setNumberOfLines:0];

  [v7 setAccessoryType:1];
  [v7 setSelectionStyle:2];
  v18 = [MEMORY[0x1E69DC888] secondarySystemBackgroundColor];
  [v7 setBackgroundColor:v18];

  return v7;
}

- (BOOL)textView:(id)a3 shouldInteractWithURL:(id)a4 inRange:(_NSRange)a5 interaction:(int64_t)a6
{
  v6 = MEMORY[0x1E6963608];
  v7 = a4;
  v8 = [v6 defaultWorkspace];
  [v8 openSensitiveURL:v7 withOptions:0];

  return 0;
}

@end