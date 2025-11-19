@interface OBPrivacySplashController
+ (id)splashPageWithBundleIdentifier:(id)a3;
- (OBPrivacySplashController)initWithFlow:(id)a3;
- (OBPrivacySplashController)initWithPrivacyIdentifier:(id)a3;
- (id)_defaultButtonTitle;
- (void)_initializeFromBundle;
- (void)_languageToggleTapped;
- (void)defaultButtonPressed:(id)a3;
- (void)loadView;
- (void)setCustomTintColor:(id)a3;
- (void)setDismissHandlerForDefaultButton:(id)a3;
- (void)showPrivacyGateway:(id)a3;
- (void)showUnifiedAbout:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateFontForPrivacyGateway;
- (void)updateFontForUnifiedAboutButton;
- (void)viewDidLoad;
@end

@implementation OBPrivacySplashController

+ (id)splashPageWithBundleIdentifier:(id)a3
{
  v3 = a3;
  v4 = [[OBPrivacySplashController alloc] initWithPrivacyIdentifier:v3];

  return v4;
}

- (OBPrivacySplashController)initWithPrivacyIdentifier:(id)a3
{
  if (a3)
  {
    v4 = [OBBundle bundleWithIdentifier:?];
    v5 = [v4 privacyFlow];
    v6 = [(OBPrivacySplashController *)self initWithFlow:v5];
  }

  else
  {
    v6 = [(OBPrivacySplashController *)self initWithFlow:?];
  }

  return v6;
}

- (id)_defaultButtonTitle
{
  v3 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v4 = [(OBPrivacySplashController *)self displayLanguage];
  v5 = [OBUtilities localizedString:@"SPLASH_CONTINUE" forTable:@"Localizable" inBundle:v3 forLanguage:v4];

  return v5;
}

- (OBPrivacySplashController)initWithFlow:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = OBPrivacySplashController;
  v6 = [(OBWelcomeController *)&v11 initWithTitle:&stru_1F2CE9518 detailText:0 icon:0 contentLayout:2];
  if (v6)
  {
    if (![v5 platformSupported])
    {
      v9 = 0;
      goto LABEL_6;
    }

    objc_storeStrong(&v6->_flow, a3);
    v7 = +[OBCapabilities sharedCapabilities];
    -[OBPrivacySplashController setAllowsOpeningSafari:](v6, "setAllowsOpeningSafari:", [v7 preventOpeningSafari] ^ 1);

    [(OBPrivacySplashController *)v6 setDisplayDeviceType:0];
    v8 = [(OBWelcomeController *)v6 buttonTray];
    [v8 setHidden:1];
  }

  v9 = v6;
LABEL_6:

  return v9;
}

- (void)loadView
{
  if (+[OBFeatureFlags isNaturalUIEnabled])
  {
    [(OBWelcomeController *)self setIncludePaddingAboveContentView:0];
  }

  v6.receiver = self;
  v6.super_class = OBPrivacySplashController;
  [(OBWelcomeController *)&v6 loadView];
  v3 = [(OBPrivacySplashController *)self customTintColor];

  if (v3)
  {
    v4 = [(OBPrivacySplashController *)self customTintColor];
    v5 = [(OBPrivacySplashController *)self view];
    [v5 setTintColor:v4];
  }
}

- (void)showUnifiedAbout:(id)a3
{
  v13 = +[OBPrivacyPresenter presenterForPrivacyUnifiedAbout];
  v4 = [(OBPrivacySplashController *)self displayLanguage];
  v5 = [v13 combinedController];
  [v5 setDisplayLanguage:v4];

  v6 = [(OBPrivacySplashController *)self additionalDisplayLanguageManager];
  v7 = [v13 combinedController];
  [v7 setAdditionalDisplayLanguageManager:v6];

  v8 = [(OBPrivacySplashController *)self underlineLinks];
  v9 = [v13 combinedController];
  [v9 setUnderlineLinks:v8];

  v10 = [(OBPrivacySplashController *)self customTintColor];
  v11 = [v13 combinedController];
  [v11 setCustomTintColor:v10];

  [v13 setDarkMode:{-[OBWelcomeController darkMode](self, "darkMode")}];
  [v13 setPresentingViewController:self];
  v12 = [(OBPrivacySplashController *)self navigationController];
  [v13 presentInNavigationStack:v12 animated:1];
}

- (void)showPrivacyGateway:(id)a3
{
  v9 = [MEMORY[0x1E69DC668] sharedApplication];
  v4 = MEMORY[0x1E695DFF8];
  v5 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v6 = [(OBPrivacySplashController *)self displayLanguage];
  v7 = [OBUtilities localizedString:@"PRIVACY_HTTP_WEB_LINK" forTable:@"Localizable" inBundle:v5 forLanguage:v6];
  v8 = [v4 URLWithString:v7];
  [v9 openURL:v8 options:MEMORY[0x1E695E0F8] completionHandler:0];
}

- (void)viewDidLoad
{
  v21 = *MEMORY[0x1E69E9840];
  v16.receiver = self;
  v16.super_class = OBPrivacySplashController;
  [(OBWelcomeController *)&v16 viewDidLoad];
  [(OBPrivacySplashController *)self _initializeFromBundle];
  v3 = [(OBPrivacySplashController *)self additionalDisplayLanguageManager];

  if (!v3)
  {
    v4 = [OBAdditionalDisplayLanguageManager alloc];
    v5 = [(OBPrivacySplashController *)self displayLanguage];
    v6 = [(OBAdditionalDisplayLanguageManager *)v4 initWithDisplayLanguage:v5];
    [(OBPrivacySplashController *)self setAdditionalDisplayLanguageManager:v6];

    v7 = _OBLoggingFacility();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [(OBPrivacySplashController *)self displayLanguage];
      v9 = [(OBPrivacySplashController *)self additionalDisplayLanguageManager];
      *buf = 138412546;
      v18 = v8;
      v19 = 2112;
      v20 = v9;
      _os_log_impl(&dword_1B4FB6000, v7, OS_LOG_TYPE_DEFAULT, "splash controller with displayLanguage %@ created %@", buf, 0x16u);
    }
  }

  v10 = _OBLoggingFacility();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [(OBPrivacySplashController *)self additionalDisplayLanguageManager];
    *buf = 138412290;
    v18 = v11;
    _os_log_impl(&dword_1B4FB6000, v10, OS_LOG_TYPE_DEFAULT, "splash controller using %@", buf, 0xCu);
  }

  v12 = [(OBPrivacyFlow *)self->_flow identifier];
  v13 = [v12 isEqualToString:@"com.apple.onboarding.privacypane"];

  if (v13)
  {
    v14 = 2;
  }

  else
  {
    v14 = 1;
  }

  [(OBWelcomeController *)self setTemplateType:v14];
  v15 = *MEMORY[0x1E69E9840];
}

- (void)setCustomTintColor:(id)a3
{
  objc_storeStrong(&self->_customTintColor, a3);
  v5 = a3;
  v6 = [(OBPrivacySplashController *)self view];
  [v6 setTintColor:v5];
}

- (void)_initializeFromBundle
{
  v128[3] = *MEMORY[0x1E69E9840];
  v3 = +[OBCapabilities sharedCapabilities];
  if ([v3 preventURLDataDetection])
  {
    v4 = 0;
  }

  else
  {
    v4 = 2;
  }

  v5 = [(OBPrivacyFlow *)self->_flow identifier];
  v6 = [v5 isEqualToString:@"com.apple.onboarding.privacypane"];

  flow = self->_flow;
  v8 = [(OBPrivacySplashController *)self displayLanguage];
  v9 = [(OBPrivacyFlow *)flow localizedContentListForLanguage:v8 preferredDeviceType:[(OBPrivacySplashController *)self displayDeviceType]];

  v10 = [OBPrivacySplashListView alloc];
  v11 = [(OBWelcomeController *)self scrollView];
  v124 = v9;
  v12 = [(OBPrivacySplashListView *)v10 initWithContentList:v9 dataDetectorTypes:v4 displayingPrivacyPane:v6 scrollView:v11];

  [(OBPrivacySplashListView *)v12 setUnderlineLinks:[(OBPrivacySplashController *)self underlineLinks]];
  [(OBPrivacySplashListView *)v12 setTranslatesAutoresizingMaskIntoConstraints:0];
  v125 = v12;
  if ([(OBPrivacySplashController *)self showLinkToPrivacyGateway])
  {
    if ([(OBPrivacySplashController *)self allowsOpeningSafari])
    {
      v13 = [OBPrivacyButton buttonWithType:1];
      [(OBPrivacySplashController *)self setLinkToPrivacyGatewayButton:v13];

      v14 = [(OBPrivacySplashController *)self underlineLinks];
      v15 = [(OBPrivacySplashController *)self linkToPrivacyGatewayButton];
      [v15 setUnderlineLinks:v14];

      v16 = [(OBPrivacySplashController *)self linkToPrivacyGatewayButton];
      v17 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v18 = [(OBPrivacySplashController *)self displayLanguage];
      v19 = [OBUtilities localizedString:@"MANAGE_YOUR_DATA" forTable:@"Localizable" inBundle:v17 forLanguage:v18];
      [v16 setTitle:v19 forState:0];

      v20 = [(OBPrivacySplashController *)self linkToPrivacyGatewayButton];
      [v20 addTarget:self action:sel_showPrivacyGateway_ forControlEvents:0x2000];

      v21 = [(OBPrivacySplashController *)self linkToPrivacyGatewayButton];
      v22 = [v21 titleLabel];
      [v22 setAdjustsFontSizeToFitWidth:1];

      [(OBPrivacySplashController *)self linkToPrivacyGatewayButton];
    }

    else
    {
      v23 = objc_alloc(MEMORY[0x1E69DCC10]);
      v24 = *MEMORY[0x1E695F058];
      v25 = *(MEMORY[0x1E695F058] + 8);
      v26 = *(MEMORY[0x1E695F058] + 16);
      v27 = *(MEMORY[0x1E695F058] + 24);
      v28 = [v23 initWithFrame:{*MEMORY[0x1E695F058], v25, v26, v27}];
      [(OBPrivacySplashController *)self setPrivacyGatewayDescription:v28];

      v29 = [(OBPrivacySplashController *)self privacyGatewayDescription];
      v30 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v31 = [(OBPrivacySplashController *)self displayLanguage];
      v32 = [OBUtilities localizedString:@"PRIVACY_WEB_DESCRIPTION" forTable:@"Localizable" inBundle:v30 forLanguage:v31];
      [v29 setText:v32];

      v33 = [(OBPrivacySplashController *)self privacyGatewayDescription];
      [v33 setNumberOfLines:0];

      v34 = [(OBPrivacySplashController *)self privacyGatewayDescription];
      [v34 setAdjustsFontSizeToFitWidth:1];

      v35 = [(OBPrivacySplashController *)self privacyGatewayDescription];
      [v35 setTextAlignment:1];

      v36 = [(OBPrivacySplashController *)self privacyGatewayDescription];
      [(OBPrivacySplashListView *)v12 addArrangedSubview:v36];

      v37 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v24, v25, v26, v27}];
      [(OBPrivacySplashController *)self setLinkToPrivacyGateway:v37];

      v38 = [(OBPrivacySplashController *)self linkToPrivacyGateway];
      v39 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v40 = [(OBPrivacySplashController *)self displayLanguage];
      v41 = [OBUtilities localizedString:@"PRIVACY_WEB_LINK" forTable:@"Localizable" inBundle:v39 forLanguage:v40];
      [v38 setText:v41];

      v42 = [(OBPrivacySplashController *)self linkToPrivacyGateway];
      [v42 setAdjustsFontSizeToFitWidth:1];

      v43 = [(OBPrivacySplashController *)self linkToPrivacyGateway];
      [v43 setTextAlignment:1];

      [(OBPrivacySplashController *)self linkToPrivacyGateway];
    }
    v44 = ;
    [(OBPrivacySplashListView *)v12 addArrangedSubview:v44];
  }

  v45 = 0x1E695D000;
  if ([(OBPrivacySplashController *)self showsLinkToUnifiedAbout])
  {
    v46 = [OBPrivacyButton buttonWithType:1];
    [(OBPrivacySplashController *)self setUnifiedAboutButton:v46];

    v47 = [(OBPrivacySplashController *)self underlineLinks];
    v48 = [(OBPrivacySplashController *)self unifiedAboutButton];
    [v48 setUnderlineLinks:v47];

    v49 = [(OBPrivacySplashController *)self unifiedAboutButton];
    v50 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v51 = [(OBPrivacySplashController *)self displayLanguage];
    v52 = [OBUtilities localizedString:@"LEARN_MORE_FOOTER" forTable:@"Localizable" inBundle:v50 forLanguage:v51];
    [v49 setTitle:v52 forState:0];

    v53 = [(OBPrivacySplashController *)self unifiedAboutButton];
    [v53 addTarget:self action:sel_showUnifiedAbout_ forControlEvents:0x2000];

    v54 = [(OBPrivacySplashController *)self unifiedAboutButton];
    v55 = [v54 titleLabel];
    [v55 setAdjustsFontSizeToFitWidth:1];

    v56 = objc_alloc(MEMORY[0x1E69DD250]);
    v57 = [v56 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    v58 = [(OBPrivacySplashController *)self unifiedAboutButton];
    [v57 addSubview:v58];

    v59 = [(OBPrivacySplashController *)self unifiedAboutButton];
    [v59 setTranslatesAutoresizingMaskIntoConstraints:0];

    LODWORD(v59) = +[OBFeatureFlags isNaturalUIEnabled];
    v60 = [(OBPrivacySplashController *)self unifiedAboutButton];
    v61 = v60;
    if (v59)
    {
      [v60 addInfoIcon];

      v61 = [(OBPrivacySplashController *)self unifiedAboutButton];
      v62 = [v61 leadingAnchor];
      [v57 leadingAnchor];
    }

    else
    {
      v62 = [v60 centerXAnchor];
      [v57 centerXAnchor];
    }
    v63 = ;
    v64 = [v62 constraintEqualToAnchor:v63];

    v120 = MEMORY[0x1E696ACD8];
    v65 = [(OBPrivacySplashController *)self unifiedAboutButton];
    v66 = [v65 topAnchor];
    v67 = [v57 topAnchor];
    v68 = [v66 constraintEqualToAnchor:v67];
    v128[0] = v68;
    v69 = [(OBPrivacySplashController *)self unifiedAboutButton];
    v70 = [v69 bottomAnchor];
    v122 = v57;
    v71 = [v57 bottomAnchor];
    v72 = [v70 constraintEqualToAnchor:v71];
    v128[1] = v72;
    v128[2] = v64;
    v121 = v64;
    v73 = [MEMORY[0x1E695DEC8] arrayWithObjects:v128 count:3];
    [v120 activateConstraints:v73];

    v74 = [(OBPrivacySplashController *)self customTintColor];

    if (v74)
    {
      v75 = [(OBPrivacySplashController *)self customTintColor];
      v76 = [(OBWelcomeController *)self headerView];
      [v76 setTintColor:v75];
    }

    v12 = v125;
    [(OBPrivacySplashListView *)v125 addArrangedSubview:v122];

    v45 = 0x1E695D000uLL;
  }

  v77 = [(OBWelcomeController *)self contentView];
  [v77 addSubview:v12];

  v78 = [MEMORY[0x1E695DF70] array];
  v79 = [(OBWelcomeController *)self contentView];
  v80 = [v79 topAnchor];
  v81 = [(OBPrivacySplashListView *)v12 topAnchor];
  v82 = [v80 constraintEqualToAnchor:v81];
  v127 = v82;
  v83 = [*(v45 + 3784) arrayWithObjects:&v127 count:1];
  [v78 addObjectsFromArray:v83];

  v84 = [(OBWelcomeController *)self contentView];
  v85 = [v84 bottomAnchor];
  v86 = [(OBPrivacySplashListView *)v12 bottomAnchor];
  v87 = [v85 constraintEqualToAnchor:v86];
  [v78 addObject:v87];

  v123 = [(OBWelcomeController *)self contentView];
  v88 = [v123 leadingAnchor];
  v89 = [(OBPrivacySplashListView *)v12 leadingAnchor];
  v90 = [v88 constraintEqualToAnchor:v89];
  v126[0] = v90;
  v91 = [(OBWelcomeController *)self contentView];
  v92 = [v91 trailingAnchor];
  v93 = [(OBPrivacySplashListView *)v12 trailingAnchor];
  v94 = [v92 constraintEqualToAnchor:v93];
  v126[1] = v94;
  v95 = [*(v45 + 3784) arrayWithObjects:v126 count:2];
  [v78 addObjectsFromArray:v95];

  [MEMORY[0x1E696ACD8] activateConstraints:v78];
  [(OBPrivacySplashController *)self updateFontForPrivacyGateway];
  [(OBPrivacySplashController *)self updateFontForUnifiedAboutButton];
  v96 = self->_flow;
  v97 = [(OBPrivacySplashController *)self displayLanguage];
  v98 = [(OBPrivacyFlow *)v96 localizedTitleForLanguage:v97 preferredDeviceType:[(OBPrivacySplashController *)self displayDeviceType]];
  [(OBPrivacySplashController *)self setTitle:v98];

  v99 = [(OBWelcomeController *)self headerView];
  v100 = [(OBPrivacySplashController *)self title];
  [v99 setTitle:v100];

  v101 = [(OBPrivacyFlow *)self->_flow identifier];
  if ([v101 isEqualToString:@"com.apple.onboarding.privacypane"])
  {
    v102 = [(OBWelcomeController *)self templateType];

    v103 = v125;
    if (v102 == 2)
    {
      v104 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v105 = [(OBPrivacySplashController *)self displayLanguage];
      v106 = [OBUtilities localizedString:@"PRIVACY_ICON_DESCRIPTION" forTable:@"Localizable" inBundle:v104 forLanguage:v105];
      v107 = [(OBWelcomeController *)self headerView];
      v108 = [v107 animationView];
      [v108 setAccessibilityLabel:v106];

      v109 = [(OBWelcomeController *)self headerView];
      v110 = [v109 animationView];
      [v110 setIsAccessibilityElement:1];
LABEL_23:

      goto LABEL_24;
    }
  }

  else
  {

    v103 = v125;
  }

  v111 = [(OBPrivacyFlow *)self->_flow _iconSymbolName];

  if (v111)
  {
    v112 = [(OBWelcomeController *)self headerView];
    v113 = [(OBPrivacyFlow *)self->_flow _iconSymbolName];
    v114 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v115 = [(OBPrivacySplashController *)self displayLanguage];
    v116 = [OBUtilities localizedString:@"PRIVACY_ICON_DESCRIPTION" forTable:@"Localizable" inBundle:v114 forLanguage:v115];
    [v112 setSymbol:v113 accessibilityLabel:v116];

    v117 = [(OBWelcomeController *)self headerView];
    [v117 setIconInheritsTint:1];

    v118 = [(OBPrivacySplashController *)self customTintColor];

    if (v118)
    {
      v109 = [(OBPrivacySplashController *)self customTintColor];
      v110 = [(OBWelcomeController *)self headerView];
      [v110 setTintColor:v109];
      goto LABEL_23;
    }
  }

LABEL_24:

  v119 = *MEMORY[0x1E69E9840];
}

- (void)setDismissHandlerForDefaultButton:(id)a3
{
  [(OBPrivacySplashController *)self setDefaultButtonHandler:a3];
  v7 = +[OBBoldTrayButton boldButton];
  v4 = [(OBPrivacySplashController *)self _defaultButtonTitle];
  [v7 setTitle:v4 forState:0];

  [v7 addTarget:self action:sel_defaultButtonPressed_ forControlEvents:0x2000];
  v5 = [(OBWelcomeController *)self buttonTray];
  [v5 addButton:v7];

  v6 = [(OBWelcomeController *)self buttonTray];
  [v6 setHidden:0];
}

- (void)traitCollectionDidChange:(id)a3
{
  v4.receiver = self;
  v4.super_class = OBPrivacySplashController;
  [(OBWelcomeController *)&v4 traitCollectionDidChange:a3];
  [(OBPrivacySplashController *)self updateFontForPrivacyGateway];
  [(OBPrivacySplashController *)self updateFontForUnifiedAboutButton];
}

- (void)updateFontForPrivacyGateway
{
  v3 = [(OBPrivacySplashController *)self linkToPrivacyGatewayButton];
  v4 = [v3 titleLabel];
  v5 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  [v4 setFont:v5];

  v6 = [(OBPrivacySplashController *)self privacyGatewayDescription];
  v7 = *MEMORY[0x1E69DDD80];
  v8 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD80]];
  [v6 setFont:v8];

  v10 = [(OBPrivacySplashController *)self linkToPrivacyGateway];
  v9 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:v7];
  [v10 setFont:v9];
}

- (void)updateFontForUnifiedAboutButton
{
  v4 = [(OBPrivacySplashController *)self unifiedAboutButton];
  v2 = [v4 titleLabel];
  v3 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  [v2 setFont:v3];
}

- (void)defaultButtonPressed:(id)a3
{
  v4 = [(OBPrivacySplashController *)self defaultButtonHandler];

  if (v4)
  {
    v5 = [(OBPrivacySplashController *)self defaultButtonHandler];
    v5[2]();
  }
}

- (void)_languageToggleTapped
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = [(OBPrivacySplashController *)self additionalDisplayLanguageManager];
  v4 = [(OBPrivacySplashController *)self displayLanguage];
  v5 = [v3 didTapRightBarButtonItemForWelcomeController:self currentDisplayLanguage:v4];
  [(OBPrivacySplashController *)self setDisplayLanguage:v5];

  v6 = [(OBPrivacySplashController *)self additionalDisplayLanguageManager];
  v7 = [(OBPrivacySplashController *)self displayLanguage];
  [v6 configureNavigationItemRightBarButtonItemForWelcomeController:self currentDisplayLanguage:v7 action:sel__languageToggleTapped];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = [(OBWelcomeController *)self contentView];
  v9 = [v8 _allSubviews];

  v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      v13 = 0;
      do
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [*(*(&v16 + 1) + 8 * v13++) removeFromSuperview];
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }

  [(OBPrivacySplashController *)self _initializeFromBundle];
  v14 = [(OBBaseWelcomeController *)self navigationItem];
  [v14 setTitle:0];

  v15 = *MEMORY[0x1E69E9840];
}

@end