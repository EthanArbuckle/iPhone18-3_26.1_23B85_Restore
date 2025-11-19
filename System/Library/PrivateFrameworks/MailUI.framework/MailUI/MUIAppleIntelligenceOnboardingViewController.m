@interface MUIAppleIntelligenceOnboardingViewController
+ (UIImage)welcomeImage;
+ (id)_imageWithName:(id)a3;
+ (id)_symbolImageWithName:(id)a3;
+ (int64_t)currentAppleIntelligenceOnboardingState;
- (MUIAppleIntelligenceOnboardingViewController)init;
- (void)addBulletListItems;
- (void)continueOnboarding:(id)a3;
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
    v6 = [MEMORY[0x277D37618] boldButton];
    v7 = +[MUIAppleIntelligenceOnboardingViewController continueButtonTitle];
    [v6 setTitle:v7 forState:0];

    [v6 addTarget:v5 action:sel_continueOnboarding_ forControlEvents:0x2000];
    v8 = [(MUIAppleIntelligenceOnboardingViewController *)v5 buttonTray];
    [v8 addButton:v6];
  }

  return v5;
}

- (void)continueOnboarding:(id)a3
{
  v3 = [MEMORY[0x277CBEBD0] em_userDefaults];
  [v3 setBool:1 forKey:*MEMORY[0x277D06C80]];

  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 postNotificationName:@"AppleIntelligenceOnboardingViewControllerDidCompleteNotification" object:0];
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
  v10 = [MEMORY[0x277D75348] tertiaryLabelColor];
  [(MUIAppleIntelligenceOnboardingViewController *)self addBulletedListItemWithTitle:v14 description:v3 image:v4 tintColor:v10];

  v11 = [MEMORY[0x277D75348] tertiaryLabelColor];
  [(MUIAppleIntelligenceOnboardingViewController *)self addBulletedListItemWithTitle:v5 description:v6 image:v7 tintColor:v11];

  v12 = [MEMORY[0x277D75348] tertiaryLabelColor];
  [(MUIAppleIntelligenceOnboardingViewController *)self addBulletedListItemWithTitle:v13 description:v8 image:v9 tintColor:v12];
}

+ (int64_t)currentAppleIntelligenceOnboardingState
{
  if (!EMIsGreymatterSupported() || ([*MEMORY[0x277D76620] launchedToTest] & 1) != 0)
  {
    return 1;
  }

  v3 = [MEMORY[0x277CBEBD0] em_userDefaults];
  v4 = [v3 BOOLForKey:*MEMORY[0x277D06C80]];

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

  v7 = [v5 CGImage];
  if (v7)
  {
    v8 = [MEMORY[0x277D755B8] imageWithCGImage:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)_symbolImageWithName:(id)a3
{
  v3 = [MEMORY[0x277D755B8] mui_imageWithPrivateSystemSymbolName:a3];
  v4 = [MEMORY[0x277D755D0] configurationPreferringMulticolor];
  v5 = [v3 imageWithSymbolConfiguration:v4];

  return v5;
}

+ (id)_imageWithName:(id)a3
{
  v3 = MEMORY[0x277D755B8];
  v4 = MEMORY[0x277CCA8D8];
  v5 = a3;
  v6 = [v4 bundleForClass:objc_opt_class()];
  v7 = [v3 imageNamed:v5 inBundle:v6];

  v8 = [MEMORY[0x277D755D0] configurationPreferringMulticolor];
  v9 = [v7 imageWithSymbolConfiguration:v8];

  return v9;
}

@end