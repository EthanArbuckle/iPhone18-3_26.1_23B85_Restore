@interface MUIAppleIntelligenceOnboardingViewController
+ (UIImage)welcomeImage;
+ (id)_imageWithName:(id)name;
+ (id)_symbolImageWithName:(id)name;
+ (int64_t)currentAppleIntelligenceOnboardingState;
- (MUIAppleIntelligenceOnboardingViewController)init;
- (void)addBulletListItems;
- (void)continueOnboarding:(id)onboarding;
@end

@implementation MUIAppleIntelligenceOnboardingViewController

- (MUIAppleIntelligenceOnboardingViewController)init
{
  v3 = +[MUIAppleIntelligenceOnboardingViewController welcomeTitle];
  v4 = +[MUIAppleIntelligenceOnboardingViewController welcomeImage];
  v10.receiver = self;
  v10.super_class = MUIAppleIntelligenceOnboardingViewController;
  v5 = [(MUIAppleIntelligenceOnboardingViewController *)&v10 initWithTitle:v3 detailText:0 icon:v4 contentLayout:2];

  if (v5)
  {
    [(MUIAppleIntelligenceOnboardingViewController *)v5 setModalPresentationStyle:2];
    [(MUIAppleIntelligenceOnboardingViewController *)v5 setModalInPresentation:1];
    [(MUIAppleIntelligenceOnboardingViewController *)v5 addBulletListItems];
    boldButton = [MEMORY[0x277D37618] boldButton];
    v7 = +[MUIAppleIntelligenceOnboardingViewController continueButtonTitle];
    [boldButton setTitle:v7 forState:0];

    [boldButton addTarget:v5 action:sel_continueOnboarding_ forControlEvents:0x2000];
    buttonTray = [(MUIAppleIntelligenceOnboardingViewController *)v5 buttonTray];
    [buttonTray addButton:boldButton];
  }

  return v5;
}

- (void)continueOnboarding:(id)onboarding
{
  em_userDefaults = [MEMORY[0x277CBEBD0] em_userDefaults];
  [em_userDefaults setBool:1 forKey:*MEMORY[0x277D06C80]];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"AppleIntelligenceOnboardingViewControllerDidCompleteNotification" object:0];
}

- (void)addBulletListItems
{
  v14 = _EFLocalizedString();
  v3 = _EFLocalizedString();
  v4 = [MUIAppleIntelligenceOnboardingViewController _symbolImageWithName:@"apple.intelligence"];
  v5 = _EFLocalizedString();
  v6 = _EFLocalizedString();
  v7 = [MUIAppleIntelligenceOnboardingViewController _imageWithName:@"text.line.2.summary"];
  v13 = _EFLocalizedString();
  v8 = _EFLocalizedString();
  v9 = [MUIAppleIntelligenceOnboardingViewController _imageWithName:@"arrowshape.turn.up.left"];
  tertiaryLabelColor = [MEMORY[0x277D75348] tertiaryLabelColor];
  [(MUIAppleIntelligenceOnboardingViewController *)self addBulletedListItemWithTitle:v14 description:v3 image:v4 tintColor:tertiaryLabelColor];

  tertiaryLabelColor2 = [MEMORY[0x277D75348] tertiaryLabelColor];
  [(MUIAppleIntelligenceOnboardingViewController *)self addBulletedListItemWithTitle:v5 description:v6 image:v7 tintColor:tertiaryLabelColor2];

  tertiaryLabelColor3 = [MEMORY[0x277D75348] tertiaryLabelColor];
  [(MUIAppleIntelligenceOnboardingViewController *)self addBulletedListItemWithTitle:v13 description:v8 image:v9 tintColor:tertiaryLabelColor3];
}

+ (int64_t)currentAppleIntelligenceOnboardingState
{
  if (!EMIsGreymatterSupported() || ([*MEMORY[0x277D76620] launchedToTest] & 1) != 0)
  {
    return 1;
  }

  em_userDefaults = [MEMORY[0x277CBEBD0] em_userDefaults];
  v4 = [em_userDefaults BOOLForKey:*MEMORY[0x277D06C80]];

  if (v4)
  {
    return 4;
  }

  if (_os_feature_enabled_impl() && (EMIsGreymatterAvailable() & 1) != 0)
  {
    return 3;
  }

  if (!_os_feature_enabled_impl())
  {
    return 2;
  }

  if (EMIsGreymatterAvailable())
  {
    return 3;
  }

  return 2;
}

+ (UIImage)welcomeImage
{
  v2 = [objc_alloc(MEMORY[0x277D1B1A8]) initWithType:@"com.apple.application-icon.apple-intelligence"];
  v3 = objc_opt_new();
  [v3 setShape:0];
  v4 = [v2 imageForDescriptor:v3];
  v5 = v4;
  if (v4 && [v4 placeholder])
  {
    v6 = [v2 prepareImageForDescriptor:v3];

    v5 = v6;
  }

  cGImage = [v5 CGImage];
  if (cGImage)
  {
    v8 = [MEMORY[0x277D755B8] imageWithCGImage:cGImage];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)_symbolImageWithName:(id)name
{
  v3 = [MEMORY[0x277D755B8] mui_imageWithPrivateSystemSymbolName:name];
  configurationPreferringMulticolor = [MEMORY[0x277D755D0] configurationPreferringMulticolor];
  v5 = [v3 imageWithSymbolConfiguration:configurationPreferringMulticolor];

  return v5;
}

+ (id)_imageWithName:(id)name
{
  v3 = MEMORY[0x277D755B8];
  v4 = MEMORY[0x277CCA8D8];
  nameCopy = name;
  v6 = [v4 bundleForClass:objc_opt_class()];
  v7 = [v3 imageNamed:nameCopy inBundle:v6];

  configurationPreferringMulticolor = [MEMORY[0x277D755D0] configurationPreferringMulticolor];
  v9 = [v7 imageWithSymbolConfiguration:configurationPreferringMulticolor];

  return v9;
}

@end