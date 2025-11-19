@interface RMInteractiveLegacyProfilesViewController
- (id)_isActivatedProfile:(id)a3;
- (id)_specifiersForProfile;
- (id)specifiers;
- (void)_activateProfile:(id)a3 specifier:(id)a4;
- (void)_presentAlertForErrorModel:(id)a3;
- (void)_processUserInfoDictionary;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation RMInteractiveLegacyProfilesViewController

- (void)viewDidLoad
{
  [(RMInteractiveLegacyProfilesViewController *)self _processUserInfoDictionary];
  v6.receiver = self;
  v6.super_class = RMInteractiveLegacyProfilesViewController;
  [(RMInteractiveLegacyProfilesViewController *)&v6 viewDidLoad];
  v3 = [(RMInteractiveLegacyProfilesViewController *)self navigationItem];
  [v3 setLeftBarButtonItem:0];

  v4 = [(RMInteractiveLegacyProfilesViewController *)self navigationItem];
  [v4 setRightBarButtonItem:0];

  v5 = [(RMInteractiveLegacyProfilesViewController *)self navigationItem];
  DMCSendNavUIUpdatedNotification(v5);
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = RMInteractiveLegacyProfilesViewController;
  [(RMInteractiveLegacyProfilesViewController *)&v4 viewWillAppear:a3];
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
    v5 = [(RMInteractiveLegacyProfilesViewController *)self _specifiersForProfile];
    v6 = *(&self->super.super.super.super.super.isa + v3);
    *(&self->super.super.super.super.super.isa + v3) = v5;

    v4 = *(&self->super.super.super.super.super.isa + v3);
  }

  return v4;
}

- (void)_processUserInfoDictionary
{
  v5 = [*(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FD20]) userInfo];
  v3 = [v5 objectForKeyedSubscript:@"RMConfigurationViewModelKey"];
  [(RMInteractiveLegacyProfilesViewController *)self setProfileModel:v3];

  v4 = [v5 objectForKeyedSubscript:@"RMConfigurationDataProviderKey"];
  [(RMInteractiveLegacyProfilesViewController *)self setRmDataProvider:v4];
}

- (id)_specifiersForProfile
{
  v21[1] = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v4 = MEMORY[0x277D3FAD8];
  v5 = [(RMInteractiveLegacyProfilesViewController *)self profileModel];
  v6 = [v5 title];
  v7 = [v4 preferenceSpecifierNamed:v6 target:self set:sel__activateProfile_specifier_ get:sel__isActivatedProfile_ detail:0 cell:6 edit:0];

  [v3 addObject:v7];
  v8 = [(RMInteractiveLegacyProfilesViewController *)self profileModel];
  v9 = [v8 toggleViewModel];
  LODWORD(v6) = [v9 toggleState];

  v10 = MEMORY[0x277D3FAD8];
  if (v6)
  {
    v11 = [(RMInteractiveLegacyProfilesViewController *)self profileModel];
    v12 = [v11 interactiveDetailsText];
    v13 = [v10 preferenceSpecifierNamed:v12 target:self set:0 get:0 detail:objc_opt_class() cell:2 edit:0];

    v20 = @"RMConfigurationViewModelKey";
    v14 = [(RMInteractiveLegacyProfilesViewController *)self profileModel];
    v21[0] = v14;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:&v20 count:1];
    [v13 setUserInfo:v15];
  }

  else
  {
    v16 = objc_opt_new();
    v17 = [v16 UUIDString];
    v13 = [v10 groupSpecifierWithID:v17];

    v14 = [(RMInteractiveLegacyProfilesViewController *)self profileModel];
    v15 = [v14 footerViewModel];
    v18 = [v15 title];
    [v13 setObject:v18 forKeyedSubscript:*MEMORY[0x277D3FF88]];
  }

  [v3 addObject:v13];

  return v3;
}

- (id)_isActivatedProfile:(id)a3
{
  v3 = MEMORY[0x277CCABB0];
  v4 = [(RMInteractiveLegacyProfilesViewController *)self profileModel];
  v5 = [v4 toggleViewModel];
  v6 = [v3 numberWithBool:{objc_msgSend(v5, "toggleState")}];

  return v6;
}

- (void)_activateProfile:(id)a3 specifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277D3FA90] sharedSpinnerManager];
  v9 = [(RMInteractiveLegacyProfilesViewController *)self navigationItem];
  [v8 startAnimatingInNavItem:v9 forIdentifier:@"com.apple.RemoteManagement.InteractiveLegacyProfilesViewController"];

  v10 = [(RMInteractiveLegacyProfilesViewController *)self navigationItem];
  DMCSendNavUIUpdatedNotification(v10);

  objc_initWeak(&location, self);
  v11 = [(RMInteractiveLegacyProfilesViewController *)self rmDataProvider];
  v12 = [v6 BOOLValue];
  v13 = [(RMInteractiveLegacyProfilesViewController *)self profileModel];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __72__RMInteractiveLegacyProfilesViewController__activateProfile_specifier___block_invoke;
  v14[3] = &unk_278EE82A0;
  objc_copyWeak(&v15, &location);
  [v11 setConfigurationActivated:v12 forViewModel:v13 completionHandler:v14];

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

- (void)_presentAlertForErrorModel:(id)a3
{
  v4 = MEMORY[0x277D75110];
  v5 = a3;
  v6 = [v5 title];
  v7 = [v5 message];
  v11 = [v4 alertControllerWithTitle:v6 message:v7 preferredStyle:1];

  v8 = MEMORY[0x277D750F8];
  v9 = [v5 okText];

  v10 = [v8 actionWithTitle:v9 style:0 handler:0];
  [v11 addAction:v10];

  [(UIViewController *)self dmc_presentAlert:v11 completion:0];
}

@end