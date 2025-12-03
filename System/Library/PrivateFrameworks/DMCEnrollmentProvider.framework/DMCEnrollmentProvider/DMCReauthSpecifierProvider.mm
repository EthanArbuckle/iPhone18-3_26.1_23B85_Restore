@interface DMCReauthSpecifierProvider
- (BOOL)_shouldAutoPresentReauthFlow;
- (BOOL)handleURL:(id)l;
- (DMCReauthSpecifierProvider)initWithAccount:(id)account;
- (DMCReauthSpecifierProvider)initWithAccountManager:(id)manager presenter:(id)presenter;
- (PSListController)presenter;
- (id)_reauthSpecifier;
- (id)specifiers;
- (void)presentReauthFlow:(id)flow;
- (void)registerCustomCellClassesInTableView:(id)view;
@end

@implementation DMCReauthSpecifierProvider

- (DMCReauthSpecifierProvider)initWithAccount:(id)account
{
  v3 = *MEMORY[0x277D24CC8];
  v5.receiver = self;
  v5.super_class = DMCReauthSpecifierProvider;
  return [(DMCSpecifierProvider *)&v5 initWithAccount:account reloadNotification:v3 isLocalNotification:0 reloadIfMissingRMAccount:0];
}

- (DMCReauthSpecifierProvider)initWithAccountManager:(id)manager presenter:(id)presenter
{
  presenterCopy = presenter;
  v7 = *MEMORY[0x277D24CC8];
  v11.receiver = self;
  v11.super_class = DMCReauthSpecifierProvider;
  v8 = [(DMCSpecifierProvider *)&v11 initWithAccountManager:manager reloadNotification:v7 isLocalNotification:0 reloadIfMissingRMAccount:0];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_presenter, presenterCopy);
    v9->_isReauthing = 0;
  }

  return v9;
}

- (id)specifiers
{
  v13[1] = *MEMORY[0x277D85DE8];
  v12.receiver = self;
  v12.super_class = DMCReauthSpecifierProvider;
  specifiers = [(DMCSpecifierProvider *)&v12 specifiers];

  if (specifiers)
  {
    v11.receiver = self;
    v11.super_class = DMCReauthSpecifierProvider;
    specifiers2 = [(DMCSpecifierProvider *)&v11 specifiers];
LABEL_3:
    v5 = specifiers2;
    goto LABEL_6;
  }

  rmAccount = [(DMCSpecifierProvider *)self rmAccount];
  dmc_bearerReauthURL = [rmAccount dmc_bearerReauthURL];

  if (!dmc_bearerReauthURL)
  {
    specifiers2 = [(DMCSpecifierProvider *)self cachedSpecifiers:MEMORY[0x277CBEBF8]];
    goto LABEL_3;
  }

  _reauthSpecifier = [(DMCReauthSpecifierProvider *)self _reauthSpecifier];
  v13[0] = _reauthSpecifier;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
  v5 = [(DMCSpecifierProvider *)self cachedSpecifiers:v9];

LABEL_6:

  return v5;
}

- (id)_reauthSpecifier
{
  presenter = [(DMCReauthSpecifierProvider *)self presenter];
  if (presenter)
  {
    v4 = objc_opt_new();
    [v4 setTarget:self];
    [v4 setButtonAction:sel_presentReauthFlow_];
    if (![(DMCSpecifierProvider *)self isReloading]&& [(DMCReauthSpecifierProvider *)self _shouldAutoPresentReauthFlow])
    {
      specifier = [presenter specifier];
      [specifier setProperty:MEMORY[0x277CBEC28] forKey:@"PSDMCHandleReauthKey"];

      [(DMCReauthSpecifierProvider *)self presentReauthFlow:0];
    }
  }

  else
  {
    v6 = MEMORY[0x277CE8568];
    rmAccount = [(DMCSpecifierProvider *)self rmAccount];
    v8 = [rmAccount copy];
    v4 = [v6 specifierWithStyle:0 account:v8 target:self controllerLoadAction:sel_presentReauthFlow_];

    [v4 setProperty:MEMORY[0x277CBEC38] forKey:@"PSDMCHandleReauthKey"];
  }

  rmAccount2 = [(DMCSpecifierProvider *)self rmAccount];
  username = [rmAccount2 username];
  v11 = [DMCAccountSpecifierProvider itemSpecifierIDForReauthAccountUsername:username];
  [v4 setIdentifier:v11];

  v12 = DMCLocalizedString();
  [v4 setName:v12];

  [v4 setCellType:1];
  [v4 setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FF38]];
  [v4 setProperty:objc_opt_class() forKey:*MEMORY[0x277D3FE58]];
  [v4 setProperty:&unk_285A0E3D0 forKey:*MEMORY[0x277D3FDB0]];

  return v4;
}

- (void)registerCustomCellClassesInTableView:(id)view
{
  v6.receiver = self;
  v6.super_class = DMCReauthSpecifierProvider;
  viewCopy = view;
  [(DMCSpecifierProvider *)&v6 registerCustomCellClassesInTableView:viewCopy];
  v4 = objc_opt_class();
  v5 = [(PSTableCell *)DMCReauthCell cellReuseIdentifier:v6.receiver];
  [viewCopy registerClass:v4 forCellReuseIdentifier:v5];
}

- (void)presentReauthFlow:(id)flow
{
  presenter = [(DMCReauthSpecifierProvider *)self presenter];
  if (presenter)
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
        v7 = [(DMCEnrollmentInterface *)v6 initFromViewController:presenter enrollmentResultBlock:v12];
        enrollmentInterface = self->_enrollmentInterface;
        self->_enrollmentInterface = v7;
      }

      [(DMCReauthSpecifierProvider *)self setIsReauthing:1];
      enrollmentInterface = [(DMCReauthSpecifierProvider *)self enrollmentInterface];
      rmAccount = [(DMCSpecifierProvider *)self rmAccount];
      identifier = [rmAccount identifier];
      [enrollmentInterface startReauthWithRMAccountID:identifier];
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
  presenter = [(DMCReauthSpecifierProvider *)self presenter];
  v3 = presenter;
  if (presenter)
  {
    specifier = [presenter specifier];
    v5 = [specifier propertyForKey:@"PSDMCHandleReauthKey"];

    if (v5)
    {
      bOOLValue = [v5 BOOLValue];
    }

    else
    {
      bOOLValue = 0;
    }
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (BOOL)handleURL:(id)l
{
  lCopy = l;
  if (lCopy)
  {
    rmAccount = [(DMCSpecifierProvider *)self rmAccount];
    username = [rmAccount username];

    if (username)
    {
      v7 = [lCopy objectForKeyedSubscript:@"path"];
      rmAccount2 = [(DMCSpecifierProvider *)self rmAccount];
      username2 = [rmAccount2 username];
      v10 = [DMCAccountSpecifierProvider itemSpecifierIDForReauthAccountUsername:username2];
      LODWORD(username) = [v7 containsString:v10];

      if (username)
      {
        [(DMCReauthSpecifierProvider *)self presentReauthFlow:0];
      }
    }
  }

  else
  {
    LOBYTE(username) = 0;
  }

  return username;
}

- (PSListController)presenter
{
  WeakRetained = objc_loadWeakRetained(&self->_presenter);

  return WeakRetained;
}

@end