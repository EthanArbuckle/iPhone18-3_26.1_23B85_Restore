@interface DASettingsDataclassConfigurationViewController
- (Class)accountInfoControllerClass;
- (DAAccount)daAccount;
- (id)_navTitle;
- (id)accountDescriptionForFirstTimeSetup;
- (id)accountFromSpecifier;
- (id)otherSpecifiers;
- (id)specifiers;
- (void)_accountsChanged:(id)a3;
- (void)_listenForAccountsChangedNotifications;
- (void)cancelButtonClicked:(id)a3;
- (void)dealloc;
- (void)loadView;
- (void)reloadAccount;
- (void)viewDidLoad;
@end

@implementation DASettingsDataclassConfigurationViewController

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x277CB8B78] object:0];

  v4.receiver = self;
  v4.super_class = DASettingsDataclassConfigurationViewController;
  [(ACUIDataclassConfigurationViewController *)&v4 dealloc];
}

- (id)accountDescriptionForFirstTimeSetup
{
  v2 = [(DASettingsDataclassConfigurationViewController *)self daAccount];
  v3 = [v2 accountDescription];

  return v3;
}

- (id)_navTitle
{
  if ([(ACUIDataclassConfigurationViewController *)self isFirstTimeSetup])
  {
    v3 = [(DASettingsDataclassConfigurationViewController *)self accountDescriptionForFirstTimeSetup];
  }

  else
  {
    v4 = [(DASettingsDataclassConfigurationViewController *)self daAccount];
    v3 = [v4 accountDescription];
  }

  return v3;
}

- (void)loadView
{
  v3 = [(DASettingsDataclassConfigurationViewController *)self navigationItem];
  v4 = [(DASettingsDataclassConfigurationViewController *)self _navTitle];
  [v3 setTitle:v4];

  v5.receiver = self;
  v5.super_class = DASettingsDataclassConfigurationViewController;
  [(DASettingsDataclassConfigurationViewController *)&v5 loadView];
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = DASettingsDataclassConfigurationViewController;
  [(ACUIDataclassConfigurationViewController *)&v5 viewDidLoad];
  v3 = [(DASettingsDataclassConfigurationViewController *)self navigationItem];
  v4 = [(DASettingsDataclassConfigurationViewController *)self _navTitle];
  [v3 setTitle:v4];
}

- (void)_listenForAccountsChangedNotifications
{
  if (!self->_haveRegisteredForAccountsChanged)
  {
    self->_haveRegisteredForAccountsChanged = 1;
    v4 = [MEMORY[0x277CCAB98] defaultCenter];
    [v4 addObserver:self selector:sel__accountsChanged_ name:*MEMORY[0x277CB8B78] object:0];
  }
}

- (DAAccount)daAccount
{
  daAccount = self->_daAccount;
  if (!daAccount)
  {
    v4 = [(DASettingsDataclassConfigurationViewController *)self accountFromSpecifier];
    v5 = self->_daAccount;
    self->_daAccount = v4;

    daAccount = self->_daAccount;
  }

  return daAccount;
}

- (void)reloadAccount
{
  v3 = [(DASettingsDataclassConfigurationViewController *)self daAccount];
  [v3 reload];

  v5 = [(DASettingsDataclassConfigurationViewController *)self daAccount];
  v4 = [v5 backingAccountInfo];
  [v4 setAuthenticated:1];
}

- (id)accountFromSpecifier
{
  v2 = [(DASettingsDataclassConfigurationViewController *)self specifier];
  v3 = [v2 userInfo];
  v4 = [v3 objectForKeyedSubscript:*MEMORY[0x277CE8550]];

  if (v4)
  {
    v5 = [v4 objectForKeyedSubscript:*MEMORY[0x277D03818]];
    v6 = *MEMORY[0x277D03830];
    v7 = [v4 objectForKeyedSubscript:*MEMORY[0x277D03830]];
    v8 = v7;
    if (v5 && ([v7 isEqualToString:v5] & 1) == 0)
    {
      [v4 setObject:v5 forKeyedSubscript:v6];
    }

    v9 = [MEMORY[0x277D03738] sharedInstance];
    v10 = [v9 daemonAppropriateAccountClassForACAccount:v4];

    v11 = [[v10 alloc] initWithBackingAccountInfo:v4];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)_accountsChanged:(id)a3
{
  [(DASettingsDataclassConfigurationViewController *)self reloadAccount];

  [(DASettingsDataclassConfigurationViewController *)self reloadSpecifiers];
}

- (id)specifiers
{
  [(DASettingsDataclassConfigurationViewController *)self _listenForAccountsChangedNotifications];
  v5.receiver = self;
  v5.super_class = DASettingsDataclassConfigurationViewController;
  v3 = [(ACUIDataclassConfigurationViewController *)&v5 specifiers];

  return v3;
}

- (id)otherSpecifiers
{
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = [(ACUIDataclassConfigurationViewController *)self account];
  v5 = [v4 mcBackingProfile];

  if (v5)
  {
    v6 = MEMORY[0x277CCACA8];
    v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v8 = [v7 localizedStringForKey:@"PROFILE_ACCOUNT_DESCRIPTION" value:&stru_285ACAC78 table:@"Localizable"];
    v9 = [v5 friendlyName];
    v10 = [v6 stringWithFormat:v8, v9];

    [(ACUIDataclassConfigurationViewController *)self setShouldShowDeleteAccountButton:0];
    v11 = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
    [v11 setProperty:v10 forKey:*MEMORY[0x277D3FF88]];
    [v3 addObject:v11];
  }

  return v3;
}

- (Class)accountInfoControllerClass
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v4 handleFailureInMethod:a2 object:self file:@"DASettingsDataclassConfigurationViewController.m" lineNumber:158 description:{@"You need to subclass %@", v6}];

  return 0;
}

- (void)cancelButtonClicked:(id)a3
{
  v3 = [(DASettingsDataclassConfigurationViewController *)self rootController];
  if (objc_opt_respondsToSelector())
  {
    [v3 dismiss];
  }
}

@end