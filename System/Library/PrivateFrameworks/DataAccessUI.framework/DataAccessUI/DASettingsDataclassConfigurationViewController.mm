@interface DASettingsDataclassConfigurationViewController
- (Class)accountInfoControllerClass;
- (DAAccount)daAccount;
- (id)_navTitle;
- (id)accountDescriptionForFirstTimeSetup;
- (id)accountFromSpecifier;
- (id)otherSpecifiers;
- (id)specifiers;
- (void)_accountsChanged:(id)changed;
- (void)_listenForAccountsChangedNotifications;
- (void)cancelButtonClicked:(id)clicked;
- (void)dealloc;
- (void)loadView;
- (void)reloadAccount;
- (void)viewDidLoad;
@end

@implementation DASettingsDataclassConfigurationViewController

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x277CB8B78] object:0];

  v4.receiver = self;
  v4.super_class = DASettingsDataclassConfigurationViewController;
  [(ACUIDataclassConfigurationViewController *)&v4 dealloc];
}

- (id)accountDescriptionForFirstTimeSetup
{
  daAccount = [(DASettingsDataclassConfigurationViewController *)self daAccount];
  accountDescription = [daAccount accountDescription];

  return accountDescription;
}

- (id)_navTitle
{
  if ([(ACUIDataclassConfigurationViewController *)self isFirstTimeSetup])
  {
    accountDescriptionForFirstTimeSetup = [(DASettingsDataclassConfigurationViewController *)self accountDescriptionForFirstTimeSetup];
  }

  else
  {
    daAccount = [(DASettingsDataclassConfigurationViewController *)self daAccount];
    accountDescriptionForFirstTimeSetup = [daAccount accountDescription];
  }

  return accountDescriptionForFirstTimeSetup;
}

- (void)loadView
{
  navigationItem = [(DASettingsDataclassConfigurationViewController *)self navigationItem];
  _navTitle = [(DASettingsDataclassConfigurationViewController *)self _navTitle];
  [navigationItem setTitle:_navTitle];

  v5.receiver = self;
  v5.super_class = DASettingsDataclassConfigurationViewController;
  [(DASettingsDataclassConfigurationViewController *)&v5 loadView];
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = DASettingsDataclassConfigurationViewController;
  [(ACUIDataclassConfigurationViewController *)&v5 viewDidLoad];
  navigationItem = [(DASettingsDataclassConfigurationViewController *)self navigationItem];
  _navTitle = [(DASettingsDataclassConfigurationViewController *)self _navTitle];
  [navigationItem setTitle:_navTitle];
}

- (void)_listenForAccountsChangedNotifications
{
  if (!self->_haveRegisteredForAccountsChanged)
  {
    self->_haveRegisteredForAccountsChanged = 1;
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:self selector:sel__accountsChanged_ name:*MEMORY[0x277CB8B78] object:0];
  }
}

- (DAAccount)daAccount
{
  daAccount = self->_daAccount;
  if (!daAccount)
  {
    accountFromSpecifier = [(DASettingsDataclassConfigurationViewController *)self accountFromSpecifier];
    v5 = self->_daAccount;
    self->_daAccount = accountFromSpecifier;

    daAccount = self->_daAccount;
  }

  return daAccount;
}

- (void)reloadAccount
{
  daAccount = [(DASettingsDataclassConfigurationViewController *)self daAccount];
  [daAccount reload];

  daAccount2 = [(DASettingsDataclassConfigurationViewController *)self daAccount];
  backingAccountInfo = [daAccount2 backingAccountInfo];
  [backingAccountInfo setAuthenticated:1];
}

- (id)accountFromSpecifier
{
  specifier = [(DASettingsDataclassConfigurationViewController *)self specifier];
  userInfo = [specifier userInfo];
  v4 = [userInfo objectForKeyedSubscript:*MEMORY[0x277CE8550]];

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

    mEMORY[0x277D03738] = [MEMORY[0x277D03738] sharedInstance];
    v10 = [mEMORY[0x277D03738] daemonAppropriateAccountClassForACAccount:v4];

    v11 = [[v10 alloc] initWithBackingAccountInfo:v4];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)_accountsChanged:(id)changed
{
  [(DASettingsDataclassConfigurationViewController *)self reloadAccount];

  [(DASettingsDataclassConfigurationViewController *)self reloadSpecifiers];
}

- (id)specifiers
{
  [(DASettingsDataclassConfigurationViewController *)self _listenForAccountsChangedNotifications];
  v5.receiver = self;
  v5.super_class = DASettingsDataclassConfigurationViewController;
  specifiers = [(ACUIDataclassConfigurationViewController *)&v5 specifiers];

  return specifiers;
}

- (id)otherSpecifiers
{
  array = [MEMORY[0x277CBEB18] array];
  account = [(ACUIDataclassConfigurationViewController *)self account];
  mcBackingProfile = [account mcBackingProfile];

  if (mcBackingProfile)
  {
    v6 = MEMORY[0x277CCACA8];
    v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v8 = [v7 localizedStringForKey:@"PROFILE_ACCOUNT_DESCRIPTION" value:&stru_285ACAC78 table:@"Localizable"];
    friendlyName = [mcBackingProfile friendlyName];
    v10 = [v6 stringWithFormat:v8, friendlyName];

    [(ACUIDataclassConfigurationViewController *)self setShouldShowDeleteAccountButton:0];
    emptyGroupSpecifier = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
    [emptyGroupSpecifier setProperty:v10 forKey:*MEMORY[0x277D3FF88]];
    [array addObject:emptyGroupSpecifier];
  }

  return array;
}

- (Class)accountInfoControllerClass
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [currentHandler handleFailureInMethod:a2 object:self file:@"DASettingsDataclassConfigurationViewController.m" lineNumber:158 description:{@"You need to subclass %@", v6}];

  return 0;
}

- (void)cancelButtonClicked:(id)clicked
{
  rootController = [(DASettingsDataclassConfigurationViewController *)self rootController];
  if (objc_opt_respondsToSelector())
  {
    [rootController dismiss];
  }
}

@end