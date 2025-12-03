@interface RMAccountDetailsViewController
- (id)_specifiersForAccount;
- (id)accountDescription:(id)description;
- (id)accountEmail:(id)email;
- (id)specifiers;
- (void)_processUserInfoDictionary;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation RMAccountDetailsViewController

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = RMAccountDetailsViewController;
  [(RMAccountDetailsViewController *)&v4 viewWillAppear:appear];
  if (([(RMAccountDetailsViewController *)self isMovingToParentViewController]& 1) == 0)
  {
    [(RMAccountDetailsViewController *)self reloadSpecifiers];
  }
}

- (id)specifiers
{
  v3 = *MEMORY[0x277D3FC48];
  v4 = *(&self->super.super.super.super.super.super.isa + v3);
  if (!v4)
  {
    [(RMAccountDetailsViewController *)self _processUserInfoDictionary];
    _specifiersForAccount = [(RMAccountDetailsViewController *)self _specifiersForAccount];
    v6 = *(&self->super.super.super.super.super.super.isa + v3);
    *(&self->super.super.super.super.super.super.isa + v3) = _specifiersForAccount;

    v4 = *(&self->super.super.super.super.super.super.isa + v3);
  }

  return v4;
}

- (void)_processUserInfoDictionary
{
  account = [(RMAccountDetailsViewController *)self account];

  if (!account)
  {
    userInfo = [*(&self->super.super.super.super.super.super.isa + *MEMORY[0x277D3FD20]) userInfo];
    v4 = [userInfo objectForKeyedSubscript:*MEMORY[0x277CE8550]];
    [(RMAccountDetailsViewController *)self setAccount:v4];

    account2 = [(RMAccountDetailsViewController *)self account];

    if (!account2)
    {
      v6 = [userInfo objectForKeyedSubscript:*MEMORY[0x277CE8548]];
      accountStore = [(ACUIViewController *)self accountStore];
      v8 = [accountStore accountWithIdentifier:v6];
      [(RMAccountDetailsViewController *)self setAccount:v8];
    }
  }
}

- (id)_specifiersForAccount
{
  v17[5] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"ACCOUNT_INFO"];
  v4 = MEMORY[0x277D3FAD8];
  v5 = DMCLocalizedString();
  v6 = [v4 preferenceSpecifierNamed:v5 target:self set:0 get:sel_accountEmail_ detail:0 cell:4 edit:0];

  v7 = MEMORY[0x277D3FAD8];
  v8 = DMCLocalizedString();
  v9 = [v7 preferenceSpecifierNamed:v8 target:self set:0 get:sel_accountDescription_ detail:0 cell:4 edit:0];

  v10 = DMCLocalizedString();
  account = [(RMAccountDetailsViewController *)self account];
  dmc_enrollmentToken = [account dmc_enrollmentToken];
  v13 = [RMDeviceIDCell specifierWithTitle:v10 value:dmc_enrollmentToken];

  v17[0] = v3;
  v17[1] = v6;
  v17[2] = v9;
  emptyGroupSpecifier = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
  v17[3] = emptyGroupSpecifier;
  v17[4] = v13;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:5];

  return v15;
}

- (id)accountEmail:(id)email
{
  account = [(RMAccountDetailsViewController *)self account];
  username = [account username];

  return username;
}

- (id)accountDescription:(id)description
{
  account = [(RMAccountDetailsViewController *)self account];
  accountDescription = [account accountDescription];

  return accountDescription;
}

@end