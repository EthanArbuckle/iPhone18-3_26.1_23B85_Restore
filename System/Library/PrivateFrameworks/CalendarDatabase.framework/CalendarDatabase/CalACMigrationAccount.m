@interface CalACMigrationAccount
- (BOOL)authenticated;
- (BOOL)dirty;
- (BOOL)enabledForCalendarsDataClass;
- (BOOL)provisionedForCalendarsDataClass;
- (BOOL)visible;
- (CalACMigrationAccount)initWithACAccount:(id)a3;
- (NSString)accountDescription;
- (NSString)username;
- (id)accountPropertyForKey:(id)a3;
- (id)accountTypeIdentifier;
- (id)identifier;
- (id)parentAccountIdentifier;
- (void)setAccountDescription:(id)a3;
- (void)setAccountProperty:(id)a3 forKey:(id)a4;
- (void)setAuthenticationTypeNone;
- (void)setAuthenticationTypeParent;
- (void)setPassword:(id)a3;
- (void)setUsername:(id)a3;
@end

@implementation CalACMigrationAccount

- (CalACMigrationAccount)initWithACAccount:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CalACMigrationAccount;
  v6 = [(CalACMigrationAccount *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_account, a3);
  }

  return v7;
}

- (id)identifier
{
  v2 = [(CalACMigrationAccount *)self account];
  v3 = [v2 identifier];

  return v3;
}

- (id)parentAccountIdentifier
{
  v2 = [(CalACMigrationAccount *)self account];
  v3 = [v2 parentAccountIdentifier];

  return v3;
}

- (id)accountTypeIdentifier
{
  v2 = [(CalACMigrationAccount *)self account];
  v3 = [v2 accountType];
  v4 = [v3 identifier];

  return v4;
}

- (BOOL)dirty
{
  v2 = [(CalACMigrationAccount *)self account];
  v3 = [v2 isDirty];

  return v3;
}

- (NSString)accountDescription
{
  v2 = [(CalACMigrationAccount *)self account];
  v3 = [v2 accountDescription];

  return v3;
}

- (void)setAccountDescription:(id)a3
{
  v4 = a3;
  v5 = [(CalACMigrationAccount *)self account];
  [v5 setAccountDescription:v4];
}

- (BOOL)visible
{
  v2 = [(CalACMigrationAccount *)self account];
  v3 = [v2 isVisible];

  return v3;
}

- (BOOL)enabledForCalendarsDataClass
{
  v2 = [(CalACMigrationAccount *)self account];
  v3 = [v2 isEnabledForDataclass:*MEMORY[0x1E6959630]];

  return v3;
}

- (BOOL)provisionedForCalendarsDataClass
{
  v2 = [(CalACMigrationAccount *)self account];
  v3 = [v2 isProvisionedForDataclass:*MEMORY[0x1E6959630]];

  return v3;
}

- (id)accountPropertyForKey:(id)a3
{
  v4 = a3;
  v5 = [(CalACMigrationAccount *)self account];
  v6 = [v5 accountPropertyForKey:v4];

  return v6;
}

- (void)setAccountProperty:(id)a3 forKey:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CalACMigrationAccount *)self account];
  [v8 setAccountProperty:v7 forKey:v6];
}

- (void)setAuthenticationTypeParent
{
  v2 = *MEMORY[0x1E6959AC8];
  v3 = [(CalACMigrationAccount *)self account];
  [v3 setAuthenticationType:v2];
}

- (void)setAuthenticationTypeNone
{
  v2 = *MEMORY[0x1E6959AC0];
  v3 = [(CalACMigrationAccount *)self account];
  [v3 setAuthenticationType:v2];
}

- (BOOL)authenticated
{
  v2 = [(CalACMigrationAccount *)self account];
  v3 = [v2 isAuthenticated];

  return v3;
}

- (NSString)username
{
  v2 = [(CalACMigrationAccount *)self account];
  v3 = [v2 username];

  return v3;
}

- (void)setUsername:(id)a3
{
  v4 = a3;
  v5 = [(CalACMigrationAccount *)self account];
  [v5 setUsername:v4];
}

- (void)setPassword:(id)a3
{
  v4 = MEMORY[0x1E6959A30];
  v5 = a3;
  v7 = [[v4 alloc] initWithPassword:v5];

  v6 = [(CalACMigrationAccount *)self account];
  [v6 setCredential:v7];
}

@end