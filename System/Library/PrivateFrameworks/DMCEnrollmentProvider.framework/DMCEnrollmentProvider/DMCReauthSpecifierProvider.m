@interface DMCReauthSpecifierProvider
- (BOOL)_shouldAutoPresentReauthFlow;
- (BOOL)handleURL:(id)a3;
- (DMCReauthSpecifierProvider)initWithAccount:(id)a3;
- (DMCReauthSpecifierProvider)initWithAccountManager:(id)a3 presenter:(id)a4;
- (PSListController)presenter;
- (id)_reauthSpecifier;
- (id)specifiers;
- (void)presentReauthFlow:(id)a3;
- (void)registerCustomCellClassesInTableView:(id)a3;
@end

@implementation DMCReauthSpecifierProvider

- (DMCReauthSpecifierProvider)initWithAccount:(id)a3
{
  v3 = *MEMORY[0x277D24CC8];
  v5.receiver = self;
  v5.super_class = DMCReauthSpecifierProvider;
  return [(DMCSpecifierProvider *)&v5 initWithAccount:a3 reloadNotification:v3 isLocalNotification:0 reloadIfMissingRMAccount:0];
}

- (DMCReauthSpecifierProvider)initWithAccountManager:(id)a3 presenter:(id)a4
{
  v6 = a4;
  v7 = *MEMORY[0x277D24CC8];
  v11.receiver = self;
  v11.super_class = DMCReauthSpecifierProvider;
  v8 = [(DMCSpecifierProvider *)&v11 initWithAccountManager:a3 reloadNotification:v7 isLocalNotification:0 reloadIfMissingRMAccount:0];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_presenter, v6);
    v9->_isReauthing = 0;
  }

  return v9;
}

- (id)specifiers
{
  v13[1] = *MEMORY[0x277D85DE8];
  v12.receiver = self;
  v12.super_class = DMCReauthSpecifierProvider;
  v3 = [(DMCSpecifierProvider *)&v12 specifiers];

  if (v3)
  {
    v11.receiver = self;
    v11.super_class = DMCReauthSpecifierProvider;
    v4 = [(DMCSpecifierProvider *)&v11 specifiers];
LABEL_3:
    v5 = v4;
    goto LABEL_6;
  }

  v6 = [(DMCSpecifierProvider *)self rmAccount];
  v7 = [v6 dmc_bearerReauthURL];

  if (!v7)
  {
    v4 = [(DMCSpecifierProvider *)self cachedSpecifiers:MEMORY[0x277CBEBF8]];
    goto LABEL_3;
  }

  v8 = [(DMCReauthSpecifierProvider *)self _reauthSpecifier];
  v13[0] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
  v5 = [(DMCSpecifierProvider *)self cachedSpecifiers:v9];

LABEL_6:

  return v5;
}

- (id)_reauthSpecifier
{
  v3 = [(DMCReauthSpecifierProvider *)self presenter];
  if (v3)
  {
    v4 = objc_opt_new();
    [v4 setTarget:self];
    [v4 setButtonAction:sel_presentReauthFlow_];
    if (![(DMCSpecifierProvider *)self isReloading]&& [(DMCReauthSpecifierProvider *)self _shouldAutoPresentReauthFlow])
    {
      v5 = [v3 specifier];
      [v5 setProperty:MEMORY[0x277CBEC28] forKey:@"PSDMCHandleReauthKey"];

      [(DMCReauthSpecifierProvider *)self presentReauthFlow:0];
    }
  }

  else
  {
    v6 = MEMORY[0x277CE8568];
    v7 = [(DMCSpecifierProvider *)self rmAccount];
    v8 = [v7 copy];
    v4 = [v6 specifierWithStyle:0 account:v8 target:self controllerLoadAction:sel_presentReauthFlow_];

    [v4 setProperty:MEMORY[0x277CBEC38] forKey:@"PSDMCHandleReauthKey"];
  }

  v9 = [(DMCSpecifierProvider *)self rmAccount];
  v10 = [v9 username];
  v11 = [DMCAccountSpecifierProvider itemSpecifierIDForReauthAccountUsername:v10];
  [v4 setIdentifier:v11];

  v12 = DMCLocalizedString();
  [v4 setName:v12];

  [v4 setCellType:1];
  [v4 setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FF38]];
  [v4 setProperty:objc_opt_class() forKey:*MEMORY[0x277D3FE58]];
  [v4 setProperty:&unk_285A0E3D0 forKey:*MEMORY[0x277D3FDB0]];

  return v4;
}

- (void)registerCustomCellClassesInTableView:(id)a3
{
  v6.receiver = self;
  v6.super_class = DMCReauthSpecifierProvider;
  v3 = a3;
  [(DMCSpecifierProvider *)&v6 registerCustomCellClassesInTableView:v3];
  v4 = objc_opt_class();
  v5 = [(PSTableCell *)DMCReauthCell cellReuseIdentifier:v6.receiver];
  [v3 registerClass:v4 forCellReuseIdentifier:v5];
}

- (void)presentReauthFlow:(id)a3
{
  v4 = [(DMCReauthSpecifierProvider *)self presenter];
  if (v4)
  {
    if ([(DMCReauthSpecifierProvider *)self isReauthing])
    {
      v5 = *DMCLogObjects();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_247E7D000, v5, OS_LOG_TYPE_DEFAULT, "DMCReauthSpecifierProvider ignoring reauth presentation because we are already reauthing", buf, 2u);
      }
    }

    else
    {
      if (!self->_enrollmentInterface)
      {
        v6 = [DMCEnrollmentInterface alloc];
        v12[0] = MEMORY[0x277D85DD0];
        v12[1] = 3221225472;
        v12[2] = __48__DMCReauthSpecifierProvider_presentReauthFlow___block_invoke;
        v12[3] = &unk_278EE7CA8;
        v12[4] = self;
        v7 = [(DMCEnrollmentInterface *)v6 initFromViewController:v4 enrollmentResultBlock:v12];
        enrollmentInterface = self->_enrollmentInterface;
        self->_enrollmentInterface = v7;
      }

      [(DMCReauthSpecifierProvider *)self setIsReauthing:1];
      v9 = [(DMCReauthSpecifierProvider *)self enrollmentInterface];
      v10 = [(DMCSpecifierProvider *)self rmAccount];
      v11 = [v10 identifier];
      [v9 startReauthWithRMAccountID:v11];
    }
  }
}

id __48__DMCReauthSpecifierProvider_presentReauthFlow___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setIsReauthing:0];
  v3.receiver = *(a1 + 32);
  v3.super_class = DMCReauthSpecifierProvider;
  return objc_msgSendSuper2(&v3, sel_reloadSpecifiers);
}

- (BOOL)_shouldAutoPresentReauthFlow
{
  v2 = [(DMCReauthSpecifierProvider *)self presenter];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 specifier];
    v5 = [v4 propertyForKey:@"PSDMCHandleReauthKey"];

    if (v5)
    {
      v6 = [v5 BOOLValue];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)handleURL:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(DMCSpecifierProvider *)self rmAccount];
    v6 = [v5 username];

    if (v6)
    {
      v7 = [v4 objectForKeyedSubscript:@"path"];
      v8 = [(DMCSpecifierProvider *)self rmAccount];
      v9 = [v8 username];
      v10 = [DMCAccountSpecifierProvider itemSpecifierIDForReauthAccountUsername:v9];
      LODWORD(v6) = [v7 containsString:v10];

      if (v6)
      {
        [(DMCReauthSpecifierProvider *)self presentReauthFlow:0];
      }
    }
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (PSListController)presenter
{
  WeakRetained = objc_loadWeakRetained(&self->_presenter);

  return WeakRetained;
}

@end