@interface MCUIBlockedAppViewController
- (BOOL)overridden;
- (MCUIBlockedAppViewController)init;
- (id)_reenableButtonSpecifier;
- (id)specifiers;
- (void)_askForReenableConfirmation;
- (void)dealloc;
- (void)setOverride:(id)a3;
@end

@implementation MCUIBlockedAppViewController

- (MCUIBlockedAppViewController)init
{
  v5.receiver = self;
  v5.super_class = MCUIBlockedAppViewController;
  v2 = [(MCUIBlockedAppViewController *)&v5 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCAB98] defaultCenter];
    [v3 addObserver:v2 selector:sel__blockedAppsUpdated name:*MEMORY[0x277D25CA0] object:0];
  }

  return v2;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x277D25CA0] object:0];

  v4.receiver = self;
  v4.super_class = MCUIBlockedAppViewController;
  [(MCUIBlockedAppViewController *)&v4 dealloc];
}

void __51__MCUIBlockedAppViewController__blockedAppsUpdated__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reloadSpecifiers];
}

- (BOOL)overridden
{
  v3 = *MEMORY[0x277D3FD20];
  v4 = [*(&self->super.super.super.super.super.isa + v3) propertyForKey:@"MCUIBlockedAppCdHash"];
  if (v4)
  {
    v5 = [*(&self->super.super.super.super.super.isa + v3) propertyForKey:@"MCUIBlockedAppHashType"];
    [v5 intValue];

    v6 = MISBlacklistOverriddenByUser();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setOverride:(id)a3
{
  v7 = a3;
  v4 = *MEMORY[0x277D3FD20];
  v5 = [*(&self->super.super.super.super.super.isa + v4) propertyForKey:@"MCUIBlockedAppCdHash"];
  if (v5)
  {
    v6 = [*(&self->super.super.super.super.super.isa + v4) propertyForKey:@"MCUIBlockedAppHashType"];
    [v6 intValue];

    [v7 BOOLValue];
    MISBlacklistSetOverride();
  }
}

- (void)_askForReenableConfirmation
{
  v3 = [*(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FD20]) propertyForKey:@"MCUIBlockedAppName"];
  v4 = MEMORY[0x277CCACA8];
  v5 = MCUILocalizedString(@"REENABLE_WARNING_TITLE_%@");
  v6 = [v4 stringWithFormat:v5, v3];

  v7 = MEMORY[0x277D75110];
  v8 = MCUILocalizedString(@"REENABLE_WARNING_TEXT");
  v9 = [v7 alertControllerWithTitle:v6 message:v8 preferredStyle:1];

  v10 = MCUILocalizedString(@"REENABLE_WARNING_CANCEL");
  [v9 MCUIAddCancelActionWithTitle:v10];

  objc_initWeak(&location, self);
  v11 = MCUILocalizedString(@"REENABLE_WARNING_OK");
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __59__MCUIBlockedAppViewController__askForReenableConfirmation__block_invoke;
  v12[3] = &unk_279861990;
  objc_copyWeak(&v13, &location);
  [v9 MCUIAddActionWithTitle:v11 style:2 completion:v12];

  [(MCUIBlockedAppViewController *)self dmc_presentAlert:v9 completion:0];
  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

void __59__MCUIBlockedAppViewController__askForReenableConfirmation__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setOverride:MEMORY[0x277CBEC38]];

  v3 = objc_loadWeakRetained((a1 + 32));
  [v3 reloadSpecifiers];
}

- (id)_reenableButtonSpecifier
{
  v3 = MEMORY[0x277D3FAD8];
  if (self->_reenabled)
  {
    v4 = @"DETAIL_REENABLED_BUTTON_TITLE";
  }

  else
  {
    v4 = @"DETAIL_REENABLE_BUTTON_TITLE";
  }

  v5 = MCUILocalizedString(v4);
  v6 = [v3 preferenceSpecifierNamed:v5 target:self set:0 get:0 detail:0 cell:13 edit:0];

  v7 = [MEMORY[0x277D262A0] sharedConnection];
  v8 = [v7 isOnDeviceAppInstallationAllowed];

  v9 = MEMORY[0x277CBEC28];
  if (!self->_reenabled && v8)
  {
    [v6 setButtonAction:sel__askForReenableConfirmation];
    v9 = MEMORY[0x277CBEC38];
  }

  [v6 setProperty:v9 forKey:*MEMORY[0x277D3FF38]];

  return v6;
}

- (id)specifiers
{
  v21[2] = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D3FC48];
  v3 = *(&self->super.super.super.super.super.isa + v2);
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v6 = *MEMORY[0x277D3FD20];
    v7 = [*(&self->super.super.super.super.super.isa + v6) propertyForKey:@"MCUIBlockedAppCdHash"];
    if (v7)
    {
      self->_reenabled = [(MCUIBlockedAppViewController *)self overridden];
      v8 = MEMORY[0x277D3FAD8];
      v9 = MCUILocalizedString(@"DETAIL_GROUP_TITLE");
      v10 = [v8 groupSpecifierWithName:v9];

      v11 = [*(&self->super.super.super.super.super.isa + v6) propertyForKey:@"MCUIBlockedAppName"];
      v12 = MEMORY[0x277CCACA8];
      if (self->_reenabled)
      {
        v13 = @"DETAIL_GROUP_REENABLED_FOOTER_%@";
      }

      else
      {
        v13 = @"DETAIL_GROUP_FOOTER_%@";
      }

      v14 = MCUILocalizedString(v13);
      v15 = [v12 stringWithFormat:v14, v11];

      [v10 setProperty:v15 forKey:*MEMORY[0x277D3FF88]];
      v21[0] = v10;
      v16 = [(MCUIBlockedAppViewController *)self _reenableButtonSpecifier];
      v21[1] = v16;
      v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:2];
      v18 = *(&self->super.super.super.super.super.isa + v2);
      *(&self->super.super.super.super.super.isa + v2) = v17;

      v4 = *(&self->super.super.super.super.super.isa + v2);
    }

    else
    {
      [(MCUIBlockedAppViewController *)self popRecursivelyToRootController];
      v4 = 0;
    }
  }

  v19 = *MEMORY[0x277D85DE8];

  return v4;
}

@end