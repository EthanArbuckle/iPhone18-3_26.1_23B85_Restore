@interface CNFInternalAccountViewController
- (CNFInternalAccountViewController)initWithAccount:(id)a3;
- (id)accountDisplayName:(id)a3;
- (id)accountIsActive:(id)a3;
- (id)accountLogin:(id)a3;
- (id)accountLoginStatus:(id)a3;
- (id)accountType:(id)a3;
- (id)registrationFailureReason:(id)a3;
- (id)registrationStatus:(id)a3;
- (id)specifierForAlias:(id)a3;
- (id)specifiers;
- (id)statusForAlias:(id)a3;
- (void)_handleAccountNotification:(id)a3;
- (void)_startListeningForNotifications;
- (void)_stopListeningForNotifications;
@end

@implementation CNFInternalAccountViewController

- (CNFInternalAccountViewController)initWithAccount:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = CNFInternalAccountViewController;
  v5 = [(CNFInternalAccountViewController *)&v12 init];
  v6 = v5;
  if (v5)
  {
    [(CNFInternalAccountViewController *)v5 setAccount:v4];
    v7 = [v4 service];
    v8 = FTCServiceTypeForService(v7);

    v9 = [[FTRegConnectionHandler alloc] initWithServiceType:v8 name:@"InternalAccountView"];
    connectionHandler = v6->_connectionHandler;
    v6->_connectionHandler = v9;
  }

  return v6;
}

- (id)specifiers
{
  v3 = *MEMORY[0x277D3FC48];
  v4 = *(&self->super.super.super.super.super.isa + v3);
  if (!v4)
  {
    v5 = [(CNFInternalAccountViewController *)self loadSpecifiersFromPlistName:@"ConferenceInternalAccountViewSettings" target:self];
    v6 = [v5 specifierForID:@"ALIAS_GROUP"];
    v7 = 1;
    if ([(CNFInternalAccountViewController *)self isConnectedToDaemon])
    {
      if (v6)
      {
        v8 = [v5 indexOfObject:v6];
        if (v8 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v9 = v8 + 1;
          v10 = [(CNFInternalAccountViewController *)self account];
          v11 = [v10 aliases];

          v19[0] = MEMORY[0x277D85DD0];
          v19[1] = 3221225472;
          v19[2] = __46__CNFInternalAccountViewController_specifiers__block_invoke;
          v19[3] = &unk_278DE83B0;
          v19[4] = self;
          v20 = v5;
          v21 = v9;
          [v11 enumerateObjectsWithOptions:2 usingBlock:v19];

          v7 = 0;
        }
      }
    }

    if ([(CNFInternalAccountViewController *)self isConnectedToDaemon])
    {
      v12 = [(CNFInternalAccountViewController *)self account];
      v13 = [v12 registrationStatus];

      if (v13 == -1)
      {
        if (!v7)
        {
LABEL_10:
          v14 = *(&self->super.super.super.super.super.isa + v3);
          *(&self->super.super.super.super.super.isa + v3) = v5;

          v4 = *(&self->super.super.super.super.super.isa + v3);
          goto LABEL_11;
        }

LABEL_9:
        [v5 removeObject:v6];
        goto LABEL_10;
      }
    }

    else
    {
      v16 = [v5 specifierForID:@"DISPLAY_NAME_GROUP"];
      v17 = [v5 specifierForID:@"DISPLAY_NAME"];
      [v5 removeObject:v16];
      [v5 removeObject:v17];
    }

    v18 = [v5 specifierForID:@"REGISTRATION_FAILURE_REASON"];
    [v5 removeObject:v18];

    if (!v7)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_11:

  return v4;
}

uint64_t __46__CNFInternalAccountViewController_specifiers__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) specifierForAlias:a2];
  if (v3)
  {
    [*(a1 + 40) insertObject:v3 atIndex:*(a1 + 48)];
  }

  return MEMORY[0x2821F96F8]();
}

- (id)specifierForAlias:(id)a3
{
  v4 = MEMORY[0x277D3FAD8];
  v5 = a3;
  v6 = [v4 preferenceSpecifierNamed:v5 target:self set:0 get:sel_statusForAlias_ detail:0 cell:4 edit:0];
  [v6 setProperty:v5 forKey:@"cnf-internal-alias"];

  return v6;
}

- (id)accountLoginStatus:(id)a3
{
  if ([(CNFInternalAccountViewController *)self isConnectedToDaemon])
  {
    v4 = [(CNFInternalAccountViewController *)self account];
    v5 = v4;
    if (v4)
    {
      v6 = [v4 loginStatus];
      if (v6 > 4)
      {
        v7 = @"Unknown";
      }

      else
      {
        v7 = off_278DE8838[v6];
      }

      v10 = [v5 loginStatusMessage];
      if (v10)
      {
        v11 = [v5 loginStatusMessage];
        if (([v11 isEqualToIgnoringCase:&stru_2856D3978] & 1) == 0)
        {
          v7 = [v5 loginStatusMessage];
        }
      }
    }

    else
    {
      v7 = @"Account missing";
    }

    v9 = v7;

    v8 = v9;
  }

  else
  {
    v8 = @"Disconnected";
    v9 = @"Unavailable";
  }

  return v8;
}

- (id)registrationStatus:(id)a3
{
  if ([(CNFInternalAccountViewController *)self isConnectedToDaemon])
  {
    v4 = [(CNFInternalAccountViewController *)self account];
    v5 = v4;
    if (v4)
    {
      v6 = CNFRegNonLocStringForRegistrationStatus([v4 registrationStatus]);
    }

    else
    {
      v6 = @"Account missing";
    }

    v8 = v6;

    v7 = v8;
  }

  else
  {
    v7 = @"Disconnected";
    v8 = @"Unavailable";
  }

  return v7;
}

- (id)accountLogin:(id)a3
{
  if ([(CNFInternalAccountViewController *)self isConnectedToDaemon])
  {
    v4 = [(CNFInternalAccountViewController *)self account];
    v5 = [v4 login];
  }

  else
  {
    v5 = @"Disconnected";
  }

  return v5;
}

- (id)accountType:(id)a3
{
  if ([(CNFInternalAccountViewController *)self isConnectedToDaemon])
  {
    v4 = [(CNFInternalAccountViewController *)self account];
    v5 = [v4 accountType];

    if (v5 >= 3)
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown account type (%ld)", v5];
    }

    else
    {
      v6 = off_278DE8860[v5];
    }
  }

  else
  {
    v6 = @"Disconnected";
  }

  return v6;
}

- (id)statusForAlias:(id)a3
{
  v4 = a3;
  if ([(CNFInternalAccountViewController *)self isConnectedToDaemon])
  {
    v5 = [v4 propertyForKey:@"cnf-internal-alias"];
    v6 = [(CNFInternalAccountViewController *)self account];
    v7 = CNFRegNonLocStringForAliasValidationStatus([v6 validationStatusForAlias:v5]);
  }

  else
  {
    v7 = @"Disconnected";
  }

  return v7;
}

- (id)accountDisplayName:(id)a3
{
  if ([(CNFInternalAccountViewController *)self isConnectedToDaemon])
  {
    v4 = [(CNFInternalAccountViewController *)self account];
    v5 = [v4 displayName];
  }

  else
  {
    v5 = @"Disconnected";
  }

  return v5;
}

- (id)registrationFailureReason:(id)a3
{
  if ([(CNFInternalAccountViewController *)self isConnectedToDaemon])
  {
    v4 = [(CNFInternalAccountViewController *)self account];
    v5 = [v4 registrationFailureReason];

    v6 = MEMORY[0x277CCACA8];
    v7 = CNFRegNonLocStringForRegistrationFailure(v5);
    v8 = [v6 stringWithFormat:@"%ld: %@", v5, v7];
  }

  else
  {
    v8 = @"Disconnected";
  }

  return v8;
}

- (id)accountIsActive:(id)a3
{
  if ([(CNFInternalAccountViewController *)self isConnectedToDaemon])
  {
    v4 = [(CNFInternalAccountViewController *)self account];
    v5 = [v4 isActive];
    v6 = @"NO";
    if (v5)
    {
      v6 = @"YES";
    }

    v7 = v6;
  }

  else
  {
    v7 = @"Disconnected";
  }

  return v7;
}

- (void)_startListeningForNotifications
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 addObserver:self selector:sel__handleDaemonConnected_ name:*MEMORY[0x277D18CE0] object:0];
  [v3 addObserver:self selector:sel__handleDaemonDisconnected_ name:*MEMORY[0x277D18CE8] object:0];
  [v3 addObserver:self selector:sel__handleAccountNotification_ name:*MEMORY[0x277D18C18] object:0];
  [v3 addObserver:self selector:sel__handleAccountNotification_ name:*MEMORY[0x277D18C20] object:0];
  [v3 addObserver:self selector:sel__handleAccountNotification_ name:*MEMORY[0x277D18CA8] object:0];
  [v3 addObserver:self selector:sel__handleAccountNotification_ name:*MEMORY[0x277D18BF8] object:0];
  [v3 addObserver:self selector:sel__handleAccountNotification_ name:*MEMORY[0x277D18BA8] object:0];
  [v3 addObserver:self selector:sel__handleAccountNotification_ name:*MEMORY[0x277D18C48] object:0];
  [v3 addObserver:self selector:sel__handleAccountNotification_ name:*MEMORY[0x277D18C58] object:0];
  [v3 addObserver:self selector:sel__handleAccountNotification_ name:*MEMORY[0x277D18C08] object:0];
  [v3 addObserver:self selector:sel__handleAccountNotification_ name:*MEMORY[0x277D18C10] object:0];
  [v3 addObserver:self selector:sel__handleAccountNotification_ name:*MEMORY[0x277D18B98] object:0];
  [v3 addObserver:self selector:sel__handleAccountNotification_ name:*MEMORY[0x277D18C28] object:0];
}

- (void)_stopListeningForNotifications
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x277D18CE0] object:0];
  [v3 removeObserver:self name:*MEMORY[0x277D18CE8] object:0];
  [v3 removeObserver:self name:*MEMORY[0x277D18C18] object:0];
  [v3 removeObserver:self name:*MEMORY[0x277D18C20] object:0];
  [v3 removeObserver:self name:*MEMORY[0x277D18CA8] object:0];
  [v3 removeObserver:self name:*MEMORY[0x277D18BF8] object:0];
  [v3 removeObserver:self name:*MEMORY[0x277D18BA8] object:0];
  [v3 removeObserver:self name:*MEMORY[0x277D18C48] object:0];
  [v3 removeObserver:self name:*MEMORY[0x277D18C58] object:0];
  [v3 removeObserver:self name:*MEMORY[0x277D18C08] object:0];
  [v3 removeObserver:self name:*MEMORY[0x277D18C10] object:0];
  [v3 removeObserver:self name:*MEMORY[0x277D18B98] object:0];
  [v3 removeObserver:self name:*MEMORY[0x277D18C28] object:0];
}

- (void)_handleAccountNotification:(id)a3
{
  if ([(CNFInternalAccountViewController *)self isConnectedToDaemon])
  {

    [(CNFInternalAccountViewController *)self reloadSpecifiers];
  }
}

@end