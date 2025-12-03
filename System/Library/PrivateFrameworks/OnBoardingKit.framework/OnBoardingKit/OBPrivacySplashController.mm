@interface OBPrivacySplashController
+ (id)splashPageWithBundleIdentifier:(id)identifier;
- (OBPrivacySplashController)initWithFlow:(id)flow;
- (OBPrivacySplashController)initWithPrivacyIdentifier:(id)identifier;
- (id)_defaultButtonTitle;
- (void)_initializeFromBundle;
- (void)_languageToggleTapped;
- (void)defaultButtonPressed:(id)pressed;
- (void)loadView;
- (void)setCustomTintColor:(id)color;
- (void)setDismissHandlerForDefaultButton:(id)button;
- (void)showPrivacyGateway:(id)gateway;
- (void)showUnifiedAbout:(id)about;
- (void)traitCollectionDidChange:(id)change;
- (void)updateFontForPrivacyGateway;
- (void)updateFontForUnifiedAboutButton;
- (void)viewDidLoad;
@end

@implementation OBPrivacySplashController

+ (id)splashPageWithBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = [[OBPrivacySplashController alloc] initWithPrivacyIdentifier:identifierCopy];

  return v4;
}

- (OBPrivacySplashController)initWithPrivacyIdentifier:(id)identifier
{
  if (identifier)
  {
    v4 = [OBBundle bundleWithIdentifier:?];
    privacyFlow = [v4 privacyFlow];
    v6 = [(OBPrivacySplashController *)self initWithFlow:privacyFlow];
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
  displayLanguage = [(OBPrivacySplashController *)self displayLanguage];
  v5 = [OBUtilities localizedString:@"SPLASH_CONTINUE" forTable:@"Localizable" inBundle:v3 forLanguage:displayLanguage];

  return v5;
}

- (OBPrivacySplashController)initWithFlow:(id)flow
{
  flowCopy = flow;
  v11.receiver = self;
  v11.super_class = OBPrivacySplashController;
  v6 = [(OBWelcomeController *)&v11 initWithTitle:&stru_1F2CE9518 detailText:0 icon:0 contentLayout:2];
  if (v6)
  {
    if (![flowCopy platformSupported])
    {
      v9 = 0;
      goto LABEL_6;
    }

    objc_storeStrong(&v6->_flow, flow);
    v7 = +[OBCapabilities sharedCapabilities];
    -[OBPrivacySplashController setAllowsOpeningSafari:](v6, "setAllowsOpeningSafari:", [v7 preventOpeningSafari] ^ 1);

    [(OBPrivacySplashController *)v6 setDisplayDeviceType:0];
    buttonTray = [(OBWelcomeController *)v6 buttonTray];
    [buttonTray setHidden:1];
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
  customTintColor = [(OBPrivacySplashController *)self customTintColor];

  if (customTintColor)
  {
    customTintColor2 = [(OBPrivacySplashController *)self customTintColor];
    view = [(OBPrivacySplashController *)self view];
    [view setTintColor:customTintColor2];
  }
}

- (void)showUnifiedAbout:(id)about
{
  v13 = +[OBPrivacyPresenter presenterForPrivacyUnifiedAbout];
  displayLanguage = [(OBPrivacySplashController *)self displayLanguage];
  combinedController = [v13 combinedController];
  [combinedController setDisplayLanguage:displayLanguage];

  additionalDisplayLanguageManager = [(OBPrivacySplashController *)self additionalDisplayLanguageManager];
  combinedController2 = [v13 combinedController];
  [combinedController2 setAdditionalDisplayLanguageManager:additionalDisplayLanguageManager];

  underlineLinks = [(OBPrivacySplashController *)self underlineLinks];
  combinedController3 = [v13 combinedController];
  [combinedController3 setUnderlineLinks:underlineLinks];

  customTintColor = [(OBPrivacySplashController *)self customTintColor];
  combinedController4 = [v13 combinedController];
  [combinedController4 setCustomTintColor:customTintColor];

  [v13 setDarkMode:{-[OBWelcomeController darkMode](self, "darkMode")}];
  [v13 setPresentingViewController:self];
  navigationController = [(OBPrivacySplashController *)self navigationController];
  [v13 presentInNavigationStack:navigationController animated:1];
}

- (void)showPrivacyGateway:(id)gateway
{
  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  v4 = MEMORY[0x1E695DFF8];
  v5 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  displayLanguage = [(OBPrivacySplashController *)self displayLanguage];
  v7 = [OBUtilities localizedString:@"PRIVACY_HTTP_WEB_LINK" forTable:@"Localizable" inBundle:v5 forLanguage:displayLanguage];
  v8 = [v4 URLWithString:v7];
  [mEMORY[0x1E69DC668] openURL:v8 options:MEMORY[0x1E695E0F8] completionHandler:0];
}

- (void)viewDidLoad
{
  v21 = *MEMORY[0x1E69E9840];
  v16.receiver = self;
  v16.super_class = OBPrivacySplashController;
  [(OBWelcomeController *)&v16 viewDidLoad];
  [(OBPrivacySplashController *)self _initializeFromBundle];
  additionalDisplayLanguageManager = [(OBPrivacySplashController *)self additionalDisplayLanguageManager];

  if (!additionalDisplayLanguageManager)
  {
    v4 = [OBAdditionalDisplayLanguageManager alloc];
    displayLanguage = [(OBPrivacySplashController *)self displayLanguage];
    v6 = [(OBAdditionalDisplayLanguageManager *)v4 initWithDisplayLanguage:displayLanguage];
    [(OBPrivacySplashController *)self setAdditionalDisplayLanguageManager:v6];

    v7 = _OBLoggingFacility();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      displayLanguage2 = [(OBPrivacySplashController *)self displayLanguage];
      additionalDisplayLanguageManager2 = [(OBPrivacySplashController *)self additionalDisplayLanguageManager];
      *buf = 138412546;
      v18 = displayLanguage2;
      v19 = 2112;
      v20 = additionalDisplayLanguageManager2;
      _os_log_impl(&dword_1B4FB6000, v7, OS_LOG_TYPE_DEFAULT, "splash controller with displayLanguage %@ created %@", buf, 0x16u);
    }
  }

  v10 = _OBLoggingFacility();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    additionalDisplayLanguageManager3 = [(OBPrivacySplashController *)self additionalDisplayLanguageManager];
    *buf = 138412290;
    v18 = additionalDisplayLanguageManager3;
    _os_log_impl(&dword_1B4FB6000, v10, OS_LOG_TYPE_DEFAULT, "splash controller using %@", buf, 0xCu);
  }

  identifier = [(OBPrivacyFlow *)self->_flow identifier];
  v13 = [identifier isEqualToString:@"com.apple.onboarding.privacypane"];

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

- (void)setCustomTintColor:(id)color
{
  objc_storeStrong(&self->_customTintColor, color);
  colorCopy = color;
  view = [(OBPrivacySplashController *)self view];
  [view setTintColor:colorCopy];
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

  identifier = [(OBPrivacyFlow *)self->_flow identifier];
  v6 = [identifier isEqualToString:@"com.apple.onboarding.privacypane"];

  flow = self->_flow;
  displayLanguage = [(OBPrivacySplashController *)self displayLanguage];
  v9 = [(OBPrivacyFlow *)flow localizedContentListForLanguage:displayLanguage preferredDeviceType:[(OBPrivacySplashController *)self displayDeviceType]];

  v10 = [OBPrivacySplashListView alloc];
  scrollView = [(OBWelcomeController *)self scrollView];
  v124 = v9;
  v12 = [(OBPrivacySplashListView *)v10 initWithContentList:v9 dataDetectorTypes:v4 displayingPrivacyPane:v6 scrollView:scrollView];

  [(OBPrivacySplashListView *)v12 setUnderlineLinks:[(OBPrivacySplashController *)self underlineLinks]];
  [(OBPrivacySplashListView *)v12 setTranslatesAutoresizingMaskIntoConstraints:0];
  v125 = v12;
  if ([(OBPrivacySplashController *)self showLinkToPrivacyGateway])
  {
    if ([(OBPrivacySplashController *)self allowsOpeningSafari])
    {
      v13 = [OBPrivacyButton buttonWithType:1];
      [(OBPrivacySplashController *)self setLinkToPrivacyGatewayButton:v13];

      underlineLinks = [(OBPrivacySplashController *)self underlineLinks];
      linkToPrivacyGatewayButton = [(OBPrivacySplashController *)self linkToPrivacyGatewayButton];
      [linkToPrivacyGatewayButton setUnderlineLinks:underlineLinks];

      linkToPrivacyGatewayButton2 = [(OBPrivacySplashController *)self linkToPrivacyGatewayButton];
      v17 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      displayLanguage2 = [(OBPrivacySplashController *)self displayLanguage];
      v19 = [OBUtilities localizedString:@"MANAGE_YOUR_DATA" forTable:@"Localizable" inBundle:v17 forLanguage:displayLanguage2];
      [linkToPrivacyGatewayButton2 setTitle:v19 forState:0];

      linkToPrivacyGatewayButton3 = [(OBPrivacySplashController *)self linkToPrivacyGatewayButton];
      [linkToPrivacyGatewayButton3 addTarget:self action:sel_showPrivacyGateway_ forControlEvents:0x2000];

      linkToPrivacyGatewayButton4 = [(OBPrivacySplashController *)self linkToPrivacyGatewayButton];
      titleLabel = [linkToPrivacyGatewayButton4 titleLabel];
      [titleLabel setAdjustsFontSizeToFitWidth:1];

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

      privacyGatewayDescription = [(OBPrivacySplashController *)self privacyGatewayDescription];
      v30 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      displayLanguage3 = [(OBPrivacySplashController *)self displayLanguage];
      v32 = [OBUtilities localizedString:@"PRIVACY_WEB_DESCRIPTION" forTable:@"Localizable" inBundle:v30 forLanguage:displayLanguage3];
      [privacyGatewayDescription setText:v32];

      privacyGatewayDescription2 = [(OBPrivacySplashController *)self privacyGatewayDescription];
      [privacyGatewayDescription2 setNumberOfLines:0];

      privacyGatewayDescription3 = [(OBPrivacySplashController *)self privacyGatewayDescription];
      [privacyGatewayDescription3 setAdjustsFontSizeToFitWidth:1];

      privacyGatewayDescription4 = [(OBPrivacySplashController *)self privacyGatewayDescription];
      [privacyGatewayDescription4 setTextAlignment:1];

      privacyGatewayDescription5 = [(OBPrivacySplashController *)self privacyGatewayDescription];
      [(OBPrivacySplashListView *)v12 addArrangedSubview:privacyGatewayDescription5];

      v37 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v24, v25, v26, v27}];
      [(OBPrivacySplashController *)self setLinkToPrivacyGateway:v37];

      linkToPrivacyGateway = [(OBPrivacySplashController *)self linkToPrivacyGateway];
      v39 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      displayLanguage4 = [(OBPrivacySplashController *)self displayLanguage];
      v41 = [OBUtilities localizedString:@"PRIVACY_WEB_LINK" forTable:@"Localizable" inBundle:v39 forLanguage:displayLanguage4];
      [linkToPrivacyGateway setText:v41];

      linkToPrivacyGateway2 = [(OBPrivacySplashController *)self linkToPrivacyGateway];
      [linkToPrivacyGateway2 setAdjustsFontSizeToFitWidth:1];

      linkToPrivacyGateway3 = [(OBPrivacySplashController *)self linkToPrivacyGateway];
      [linkToPrivacyGateway3 setTextAlignment:1];

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

    underlineLinks2 = [(OBPrivacySplashController *)self underlineLinks];
    unifiedAboutButton = [(OBPrivacySplashController *)self unifiedAboutButton];
    [unifiedAboutButton setUnderlineLinks:underlineLinks2];

    unifiedAboutButton2 = [(OBPrivacySplashController *)self unifiedAboutButton];
    v50 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    displayLanguage5 = [(OBPrivacySplashController *)self displayLanguage];
    v52 = [OBUtilities localizedString:@"LEARN_MORE_FOOTER" forTable:@"Localizable" inBundle:v50 forLanguage:displayLanguage5];
    [unifiedAboutButton2 setTitle:v52 forState:0];

    unifiedAboutButton3 = [(OBPrivacySplashController *)self unifiedAboutButton];
    [unifiedAboutButton3 addTarget:self action:sel_showUnifiedAbout_ forControlEvents:0x2000];

    unifiedAboutButton4 = [(OBPrivacySplashController *)self unifiedAboutButton];
    titleLabel2 = [unifiedAboutButton4 titleLabel];
    [titleLabel2 setAdjustsFontSizeToFitWidth:1];

    v56 = objc_alloc(MEMORY[0x1E69DD250]);
    v57 = [v56 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    unifiedAboutButton5 = [(OBPrivacySplashController *)self unifiedAboutButton];
    [v57 addSubview:unifiedAboutButton5];

    unifiedAboutButton6 = [(OBPrivacySplashController *)self unifiedAboutButton];
    [unifiedAboutButton6 setTranslatesAutoresizingMaskIntoConstraints:0];

    LODWORD(unifiedAboutButton6) = +[OBFeatureFlags isNaturalUIEnabled];
    unifiedAboutButton7 = [(OBPrivacySplashController *)self unifiedAboutButton];
    unifiedAboutButton8 = unifiedAboutButton7;
    if (unifiedAboutButton6)
    {
      [unifiedAboutButton7 addInfoIcon];

      unifiedAboutButton8 = [(OBPrivacySplashController *)self unifiedAboutButton];
      leadingAnchor = [unifiedAboutButton8 leadingAnchor];
      [v57 leadingAnchor];
    }

    else
    {
      leadingAnchor = [unifiedAboutButton7 centerXAnchor];
      [v57 centerXAnchor];
    }
    v63 = ;
    v64 = [leadingAnchor constraintEqualToAnchor:v63];

    v120 = MEMORY[0x1E696ACD8];
    unifiedAboutButton9 = [(OBPrivacySplashController *)self unifiedAboutButton];
    topAnchor = [unifiedAboutButton9 topAnchor];
    topAnchor2 = [v57 topAnchor];
    v68 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v128[0] = v68;
    unifiedAboutButton10 = [(OBPrivacySplashController *)self unifiedAboutButton];
    bottomAnchor = [unifiedAboutButton10 bottomAnchor];
    v122 = v57;
    bottomAnchor2 = [v57 bottomAnchor];
    v72 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v128[1] = v72;
    v128[2] = v64;
    v121 = v64;
    v73 = [MEMORY[0x1E695DEC8] arrayWithObjects:v128 count:3];
    [v120 activateConstraints:v73];

    customTintColor = [(OBPrivacySplashController *)self customTintColor];

    if (customTintColor)
    {
      customTintColor2 = [(OBPrivacySplashController *)self customTintColor];
      headerView = [(OBWelcomeController *)self headerView];
      [headerView setTintColor:customTintColor2];
    }

    v12 = v125;
    [(OBPrivacySplashListView *)v125 addArrangedSubview:v122];

    v45 = 0x1E695D000uLL;
  }

  contentView = [(OBWelcomeController *)self contentView];
  [contentView addSubview:v12];

  array = [MEMORY[0x1E695DF70] array];
  contentView2 = [(OBWelcomeController *)self contentView];
  topAnchor3 = [contentView2 topAnchor];
  topAnchor4 = [(OBPrivacySplashListView *)v12 topAnchor];
  v82 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
  v127 = v82;
  v83 = [*(v45 + 3784) arrayWithObjects:&v127 count:1];
  [array addObjectsFromArray:v83];

  contentView3 = [(OBWelcomeController *)self contentView];
  bottomAnchor3 = [contentView3 bottomAnchor];
  bottomAnchor4 = [(OBPrivacySplashListView *)v12 bottomAnchor];
  v87 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
  [array addObject:v87];

  contentView4 = [(OBWelcomeController *)self contentView];
  leadingAnchor2 = [contentView4 leadingAnchor];
  leadingAnchor3 = [(OBPrivacySplashListView *)v12 leadingAnchor];
  v90 = [leadingAnchor2 constraintEqualToAnchor:leadingAnchor3];
  v126[0] = v90;
  contentView5 = [(OBWelcomeController *)self contentView];
  trailingAnchor = [contentView5 trailingAnchor];
  trailingAnchor2 = [(OBPrivacySplashListView *)v12 trailingAnchor];
  v94 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v126[1] = v94;
  v95 = [*(v45 + 3784) arrayWithObjects:v126 count:2];
  [array addObjectsFromArray:v95];

  [MEMORY[0x1E696ACD8] activateConstraints:array];
  [(OBPrivacySplashController *)self updateFontForPrivacyGateway];
  [(OBPrivacySplashController *)self updateFontForUnifiedAboutButton];
  v96 = self->_flow;
  displayLanguage6 = [(OBPrivacySplashController *)self displayLanguage];
  v98 = [(OBPrivacyFlow *)v96 localizedTitleForLanguage:displayLanguage6 preferredDeviceType:[(OBPrivacySplashController *)self displayDeviceType]];
  [(OBPrivacySplashController *)self setTitle:v98];

  headerView2 = [(OBWelcomeController *)self headerView];
  title = [(OBPrivacySplashController *)self title];
  [headerView2 setTitle:title];

  identifier2 = [(OBPrivacyFlow *)self->_flow identifier];
  if ([identifier2 isEqualToString:@"com.apple.onboarding.privacypane"])
  {
    templateType = [(OBWelcomeController *)self templateType];

    v103 = v125;
    if (templateType == 2)
    {
      v104 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      displayLanguage7 = [(OBPrivacySplashController *)self displayLanguage];
      v106 = [OBUtilities localizedString:@"PRIVACY_ICON_DESCRIPTION" forTable:@"Localizable" inBundle:v104 forLanguage:displayLanguage7];
      headerView3 = [(OBWelcomeController *)self headerView];
      animationView = [headerView3 animationView];
      [animationView setAccessibilityLabel:v106];

      headerView4 = [(OBWelcomeController *)self headerView];
      animationView2 = [headerView4 animationView];
      [animationView2 setIsAccessibilityElement:1];
LABEL_23:

      goto LABEL_24;
    }
  }

  else
  {

    v103 = v125;
  }

  _iconSymbolName = [(OBPrivacyFlow *)self->_flow _iconSymbolName];

  if (_iconSymbolName)
  {
    headerView5 = [(OBWelcomeController *)self headerView];
    _iconSymbolName2 = [(OBPrivacyFlow *)self->_flow _iconSymbolName];
    v114 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    displayLanguage8 = [(OBPrivacySplashController *)self displayLanguage];
    v116 = [OBUtilities localizedString:@"PRIVACY_ICON_DESCRIPTION" forTable:@"Localizable" inBundle:v114 forLanguage:displayLanguage8];
    [headerView5 setSymbol:_iconSymbolName2 accessibilityLabel:v116];

    headerView6 = [(OBWelcomeController *)self headerView];
    [headerView6 setIconInheritsTint:1];

    customTintColor3 = [(OBPrivacySplashController *)self customTintColor];

    if (customTintColor3)
    {
      headerView4 = [(OBPrivacySplashController *)self customTintColor];
      animationView2 = [(OBWelcomeController *)self headerView];
      [animationView2 setTintColor:headerView4];
      goto LABEL_23;
    }
  }

LABEL_24:

  v119 = *MEMORY[0x1E69E9840];
}

- (void)setDismissHandlerForDefaultButton:(id)button
{
  [(OBPrivacySplashController *)self setDefaultButtonHandler:button];
  v7 = +[OBBoldTrayButton boldButton];
  _defaultButtonTitle = [(OBPrivacySplashController *)self _defaultButtonTitle];
  [v7 setTitle:_defaultButtonTitle forState:0];

  [v7 addTarget:self action:sel_defaultButtonPressed_ forControlEvents:0x2000];
  buttonTray = [(OBWelcomeController *)self buttonTray];
  [buttonTray addButton:v7];

  buttonTray2 = [(OBWelcomeController *)self buttonTray];
  [buttonTray2 setHidden:0];
}

- (void)traitCollectionDidChange:(id)change
{
  v4.receiver = self;
  v4.super_class = OBPrivacySplashController;
  [(OBWelcomeController *)&v4 traitCollectionDidChange:change];
  [(OBPrivacySplashController *)self updateFontForPrivacyGateway];
  [(OBPrivacySplashController *)self updateFontForUnifiedAboutButton];
}

- (void)updateFontForPrivacyGateway
{
  linkToPrivacyGatewayButton = [(OBPrivacySplashController *)self linkToPrivacyGatewayButton];
  titleLabel = [linkToPrivacyGatewayButton titleLabel];
  v5 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  [titleLabel setFont:v5];

  privacyGatewayDescription = [(OBPrivacySplashController *)self privacyGatewayDescription];
  v7 = *MEMORY[0x1E69DDD80];
  v8 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD80]];
  [privacyGatewayDescription setFont:v8];

  linkToPrivacyGateway = [(OBPrivacySplashController *)self linkToPrivacyGateway];
  v9 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:v7];
  [linkToPrivacyGateway setFont:v9];
}

- (void)updateFontForUnifiedAboutButton
{
  unifiedAboutButton = [(OBPrivacySplashController *)self unifiedAboutButton];
  titleLabel = [unifiedAboutButton titleLabel];
  v3 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  [titleLabel setFont:v3];
}

- (void)defaultButtonPressed:(id)pressed
{
  defaultButtonHandler = [(OBPrivacySplashController *)self defaultButtonHandler];

  if (defaultButtonHandler)
  {
    defaultButtonHandler2 = [(OBPrivacySplashController *)self defaultButtonHandler];
    defaultButtonHandler2[2]();
  }
}

- (void)_languageToggleTapped
{
  v21 = *MEMORY[0x1E69E9840];
  additionalDisplayLanguageManager = [(OBPrivacySplashController *)self additionalDisplayLanguageManager];
  displayLanguage = [(OBPrivacySplashController *)self displayLanguage];
  v5 = [additionalDisplayLanguageManager didTapRightBarButtonItemForWelcomeController:self currentDisplayLanguage:displayLanguage];
  [(OBPrivacySplashController *)self setDisplayLanguage:v5];

  additionalDisplayLanguageManager2 = [(OBPrivacySplashController *)self additionalDisplayLanguageManager];
  displayLanguage2 = [(OBPrivacySplashController *)self displayLanguage];
  [additionalDisplayLanguageManager2 configureNavigationItemRightBarButtonItemForWelcomeController:self currentDisplayLanguage:displayLanguage2 action:sel__languageToggleTapped];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  contentView = [(OBWelcomeController *)self contentView];
  _allSubviews = [contentView _allSubviews];

  v10 = [_allSubviews countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(_allSubviews);
        }

        [*(*(&v16 + 1) + 8 * v13++) removeFromSuperview];
      }

      while (v11 != v13);
      v11 = [_allSubviews countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }

  [(OBPrivacySplashController *)self _initializeFromBundle];
  navigationItem = [(OBBaseWelcomeController *)self navigationItem];
  [navigationItem setTitle:0];

  v15 = *MEMORY[0x1E69E9840];
}

@end