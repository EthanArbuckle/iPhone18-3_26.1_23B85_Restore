@interface RMInteractiveLegacyProfilesViewController
- (id)_isActivatedProfile:(id)profile;
- (id)_specifiersForProfile;
- (id)specifiers;
- (void)_activateProfile:(id)profile specifier:(id)specifier;
- (void)_presentAlertForErrorModel:(id)model;
- (void)_processUserInfoDictionary;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation RMInteractiveLegacyProfilesViewController

- (void)viewDidLoad
{
  [(RMInteractiveLegacyProfilesViewController *)self _processUserInfoDictionary];
  v6.receiver = self;
  v6.super_class = RMInteractiveLegacyProfilesViewController;
  [(RMInteractiveLegacyProfilesViewController *)&v6 viewDidLoad];
  navigationItem = [(RMInteractiveLegacyProfilesViewController *)self navigationItem];
  [navigationItem setLeftBarButtonItem:0];

  navigationItem2 = [(RMInteractiveLegacyProfilesViewController *)self navigationItem];
  [navigationItem2 setRightBarButtonItem:0];

  navigationItem3 = [(RMInteractiveLegacyProfilesViewController *)self navigationItem];
  DMCSendNavUIUpdatedNotification(navigationItem3);
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = RMInteractiveLegacyProfilesViewController;
  [(RMInteractiveLegacyProfilesViewController *)&v4 viewWillAppear:appear];
  if (([(RMInteractiveLegacyProfilesViewController *)self isMovingToParentViewController]& 1) == 0)
  {
    [(RMInteractiveLegacyProfilesViewController *)self reloadSpecifiers];
  }
}

- (id)specifiers
{
  v3 = *MEMORY[0x277D3FC48];
  v4 = *(&self->super.super.super.super.super.isa + v3);
  if (!v4)
  {
    _specifiersForProfile = [(RMInteractiveLegacyProfilesViewController *)self _specifiersForProfile];
    v6 = *(&self->super.super.super.super.super.isa + v3);
    *(&self->super.super.super.super.super.isa + v3) = _specifiersForProfile;

    v4 = *(&self->super.super.super.super.super.isa + v3);
  }

  return v4;
}

- (void)_processUserInfoDictionary
{
  userInfo = [*(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FD20]) userInfo];
  v3 = [userInfo objectForKeyedSubscript:@"RMConfigurationViewModelKey"];
  [(RMInteractiveLegacyProfilesViewController *)self setProfileModel:v3];

  v4 = [userInfo objectForKeyedSubscript:@"RMConfigurationDataProviderKey"];
  [(RMInteractiveLegacyProfilesViewController *)self setRmDataProvider:v4];
}

- (id)_specifiersForProfile
{
  v21[1] = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v4 = MEMORY[0x277D3FAD8];
  profileModel = [(RMInteractiveLegacyProfilesViewController *)self profileModel];
  title = [profileModel title];
  v7 = [v4 preferenceSpecifierNamed:title target:self set:sel__activateProfile_specifier_ get:sel__isActivatedProfile_ detail:0 cell:6 edit:0];

  [v3 addObject:v7];
  profileModel2 = [(RMInteractiveLegacyProfilesViewController *)self profileModel];
  toggleViewModel = [profileModel2 toggleViewModel];
  LODWORD(title) = [toggleViewModel toggleState];

  v10 = MEMORY[0x277D3FAD8];
  if (title)
  {
    profileModel3 = [(RMInteractiveLegacyProfilesViewController *)self profileModel];
    interactiveDetailsText = [profileModel3 interactiveDetailsText];
    v13 = [v10 preferenceSpecifierNamed:interactiveDetailsText target:self set:0 get:0 detail:objc_opt_class() cell:2 edit:0];

    v20 = @"RMConfigurationViewModelKey";
    profileModel4 = [(RMInteractiveLegacyProfilesViewController *)self profileModel];
    v21[0] = profileModel4;
    footerViewModel = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:&v20 count:1];
    [v13 setUserInfo:footerViewModel];
  }

  else
  {
    v16 = objc_opt_new();
    uUIDString = [v16 UUIDString];
    v13 = [v10 groupSpecifierWithID:uUIDString];

    profileModel4 = [(RMInteractiveLegacyProfilesViewController *)self profileModel];
    footerViewModel = [profileModel4 footerViewModel];
    title2 = [footerViewModel title];
    [v13 setObject:title2 forKeyedSubscript:*MEMORY[0x277D3FF88]];
  }

  [v3 addObject:v13];

  return v3;
}

- (id)_isActivatedProfile:(id)profile
{
  v3 = MEMORY[0x277CCABB0];
  profileModel = [(RMInteractiveLegacyProfilesViewController *)self profileModel];
  toggleViewModel = [profileModel toggleViewModel];
  v6 = [v3 numberWithBool:{objc_msgSend(toggleViewModel, "toggleState")}];

  return v6;
}

- (void)_activateProfile:(id)profile specifier:(id)specifier
{
  profileCopy = profile;
  specifierCopy = specifier;
  mEMORY[0x277D3FA90] = [MEMORY[0x277D3FA90] sharedSpinnerManager];
  navigationItem = [(RMInteractiveLegacyProfilesViewController *)self navigationItem];
  [mEMORY[0x277D3FA90] startAnimatingInNavItem:navigationItem forIdentifier:@"com.apple.RemoteManagement.InteractiveLegacyProfilesViewController"];

  navigationItem2 = [(RMInteractiveLegacyProfilesViewController *)self navigationItem];
  DMCSendNavUIUpdatedNotification(navigationItem2);

  objc_initWeak(&location, self);
  rmDataProvider = [(RMInteractiveLegacyProfilesViewController *)self rmDataProvider];
  bOOLValue = [profileCopy BOOLValue];
  profileModel = [(RMInteractiveLegacyProfilesViewController *)self profileModel];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __72__RMInteractiveLegacyProfilesViewController__activateProfile_specifier___block_invoke;
  v14[3] = &unk_278EE82A0;
  objc_copyWeak(&v15, &location);
  [rmDataProvider setConfigurationActivated:bOOLValue forViewModel:profileModel completionHandler:v14];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

void __72__RMInteractiveLegacyProfilesViewController__activateProfile_specifier___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = a3;
  v4 = [MEMORY[0x277D3FA90] sharedSpinnerManager];
  [v4 stopAnimatingForIdentifier:@"com.apple.RemoteManagement.InteractiveLegacyProfilesViewController"];

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v7 = [WeakRetained navigationItem];
    DMCSendNavUIUpdatedNotification(v7);

    if (v8)
    {
      [v6 _presentAlertForErrorModel:v8];
    }

    [v6 reloadSpecifiers];
  }
}

- (void)_presentAlertForErrorModel:(id)model
{
  v4 = MEMORY[0x277D75110];
  modelCopy = model;
  title = [modelCopy title];
  message = [modelCopy message];
  v11 = [v4 alertControllerWithTitle:title message:message preferredStyle:1];

  v8 = MEMORY[0x277D750F8];
  okText = [modelCopy okText];

  v10 = [v8 actionWithTitle:okText style:0 handler:0];
  [v11 addAction:v10];

  [(UIViewController *)self dmc_presentAlert:v11 completion:0];
}

@end