@interface RMAccountDetailsViewController
- (id)_specifiersForAccount;
- (id)accountDescription:(id)a3;
- (id)accountEmail:(id)a3;
- (id)specifiers;
- (void)_processUserInfoDictionary;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation RMAccountDetailsViewController

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = RMAccountDetailsViewController;
  [(RMAccountDetailsViewController *)&v4 viewWillAppear:a3];
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
    v5 = [(RMAccountDetailsViewController *)self _specifiersForAccount];
    v6 = *(&self->super.super.super.super.super.super.isa + v3);
    *(&self->super.super.super.super.super.super.isa + v3) = v5;

    v4 = *(&self->super.super.super.super.super.super.isa + v3);
  }

  return v4;
}

- (void)_processUserInfoDictionary
{
  v3 = [(RMAccountDetailsViewController *)self account];

  if (!v3)
  {
    v9 = [*(&self->super.super.super.super.super.super.isa + *MEMORY[0x277D3FD20]) userInfo];
    v4 = [v9 objectForKeyedSubscript:*MEMORY[0x277CE8550]];
    [(RMAccountDetailsViewController *)self setAccount:v4];

    v5 = [(RMAccountDetailsViewController *)self account];

    if (!v5)
    {
      v6 = [v9 objectForKeyedSubscript:*MEMORY[0x277CE8548]];
      v7 = [(ACUIViewController *)self accountStore];
      v8 = [v7 accountWithIdentifier:v6];
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
  v11 = [(RMAccountDetailsViewController *)self account];
  v12 = [v11 dmc_enrollmentToken];
  v13 = [RMDeviceIDCell specifierWithTitle:v10 value:v12];

  v17[0] = v3;
  v17[1] = v6;
  v17[2] = v9;
  v14 = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
  v17[3] = v14;
  v17[4] = v13;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:5];

  return v15;
}

- (id)accountEmail:(id)a3
{
  v3 = [(RMAccountDetailsViewController *)self account];
  v4 = [v3 username];

  return v4;
}

- (id)accountDescription:(id)a3
{
  v3 = [(RMAccountDetailsViewController *)self account];
  v4 = [v3 accountDescription];

  return v4;
}

@end