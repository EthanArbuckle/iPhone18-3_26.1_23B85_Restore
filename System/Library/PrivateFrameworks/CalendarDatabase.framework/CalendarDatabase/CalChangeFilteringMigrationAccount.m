@interface CalChangeFilteringMigrationAccount
- (BOOL)authenticated;
- (BOOL)dirty;
- (BOOL)enabledForCalendarsDataClass;
- (BOOL)provisionedForCalendarsDataClass;
- (BOOL)visible;
- (CalChangeFilteringMigrationAccount)initWithAccountIdentifier:(id)a3 accountTypeIdentifier:(id)a4;
- (CalChangeFilteringMigrationAccount)initWithBackingAccount:(id)a3;
- (NSString)accountDescription;
- (NSString)username;
- (id)accountPropertyForKey:(id)a3;
- (void)setAccountDescription:(id)a3;
- (void)setAccountProperty:(id)a3 forKey:(id)a4;
- (void)setAuthenticationTypeNone;
- (void)setAuthenticationTypeParent;
- (void)setPassword:(id)a3;
- (void)setUsername:(id)a3;
@end

@implementation CalChangeFilteringMigrationAccount

- (CalChangeFilteringMigrationAccount)initWithBackingAccount:(id)a3
{
  v5 = a3;
  v6 = [v5 identifier];
  v7 = [v5 accountTypeIdentifier];
  v8 = [(CalChangeFilteringMigrationAccount *)self initWithAccountIdentifier:v6 accountTypeIdentifier:v7];

  if (v8)
  {
    objc_storeStrong(&v8->_backingAccount, a3);
  }

  return v8;
}

- (CalChangeFilteringMigrationAccount)initWithAccountIdentifier:(id)a3 accountTypeIdentifier:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = CalChangeFilteringMigrationAccount;
  v9 = [(CalChangeFilteringMigrationAccount *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_accountIdentifier, a3);
    objc_storeStrong(&v10->_accountTypeIdentifier, a4);
    v11 = objc_opt_new();
    modifiedPropertyValues = v10->_modifiedPropertyValues;
    v10->_modifiedPropertyValues = v11;
  }

  return v10;
}

- (id)accountPropertyForKey:(id)a3
{
  v4 = a3;
  v5 = [(CalChangeFilteringMigrationAccount *)self modifiedPropertyValues];
  v6 = [v5 objectForKeyedSubscript:v4];

  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v8 = [(CalChangeFilteringMigrationAccount *)self backingAccount];
    v7 = [v8 accountPropertyForKey:v4];
  }

  return v7;
}

- (void)setAccountProperty:(id)a3 forKey:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CalChangeFilteringMigrationAccount *)self modifiedPropertyValues];
  [v8 setObject:v7 forKeyedSubscript:v6];
}

- (void)setAuthenticationTypeParent
{
  v2 = [(CalChangeFilteringMigrationAccount *)self modifiedPropertyValues];
  [v2 setObject:@"Parent" forKeyedSubscript:@"_CalChangeFilterMigrationAccount_setAuthenticationType"];
}

- (void)setAuthenticationTypeNone
{
  v2 = [(CalChangeFilteringMigrationAccount *)self modifiedPropertyValues];
  [v2 setObject:@"None" forKeyedSubscript:@"_CalChangeFilterMigrationAccount_setAuthenticationType"];
}

- (NSString)accountDescription
{
  v3 = [(CalChangeFilteringMigrationAccount *)self modifiedPropertyValues];
  v4 = [v3 objectForKeyedSubscript:@"_CalChangeFilterMigrationAccount_accountDescription"];

  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v6 = [(CalChangeFilteringMigrationAccount *)self backingAccount];
    v5 = [v6 accountDescription];
  }

  return v5;
}

- (void)setAccountDescription:(id)a3
{
  v4 = a3;
  v5 = [(CalChangeFilteringMigrationAccount *)self modifiedPropertyValues];
  [v5 setObject:v4 forKeyedSubscript:@"_CalChangeFilterMigrationAccount_accountDescription"];
}

- (BOOL)visible
{
  v3 = [(CalChangeFilteringMigrationAccount *)self modifiedPropertyValues];
  v4 = [v3 objectForKeyedSubscript:@"_CalChangeFilterMigrationAccount_visible"];

  if (v4)
  {
    v5 = [v4 BOOLValue];
  }

  else
  {
    v6 = [(CalChangeFilteringMigrationAccount *)self backingAccount];
    v5 = [v6 visible];
  }

  return v5;
}

- (BOOL)enabledForCalendarsDataClass
{
  v3 = [(CalChangeFilteringMigrationAccount *)self modifiedPropertyValues];
  v4 = [v3 objectForKeyedSubscript:@"_CalChangeFilterMigrationAccount_enabledForCalendarsDataClass"];

  if (v4)
  {
    v5 = [v4 BOOLValue];
  }

  else
  {
    v6 = [(CalChangeFilteringMigrationAccount *)self backingAccount];
    v5 = [v6 enabledForCalendarsDataClass];
  }

  return v5;
}

- (BOOL)provisionedForCalendarsDataClass
{
  v3 = [(CalChangeFilteringMigrationAccount *)self modifiedPropertyValues];
  v4 = [v3 objectForKeyedSubscript:@"_CalChangeFilterMigrationAccount_provisionedForCalendarsDataClass"];

  if (v4)
  {
    v5 = [v4 BOOLValue];
  }

  else
  {
    v6 = [(CalChangeFilteringMigrationAccount *)self backingAccount];
    v5 = [v6 provisionedForCalendarsDataClass];
  }

  return v5;
}

- (BOOL)authenticated
{
  v3 = [(CalChangeFilteringMigrationAccount *)self modifiedPropertyValues];
  v4 = [v3 objectForKeyedSubscript:@"_CalChangeFilterMigrationAccount_authenticated"];

  if (v4)
  {
    v5 = [v4 BOOLValue];
  }

  else
  {
    v6 = [(CalChangeFilteringMigrationAccount *)self backingAccount];
    v5 = [v6 authenticated];
  }

  return v5;
}

- (NSString)username
{
  v3 = [(CalChangeFilteringMigrationAccount *)self modifiedPropertyValues];
  v4 = [v3 objectForKeyedSubscript:@"_CalChangeFilterMigrationAccount_username"];

  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v6 = [(CalChangeFilteringMigrationAccount *)self backingAccount];
    v5 = [v6 username];
  }

  return v5;
}

- (void)setUsername:(id)a3
{
  v4 = a3;
  v5 = [(CalChangeFilteringMigrationAccount *)self modifiedPropertyValues];
  [v5 setObject:v4 forKeyedSubscript:@"_CalChangeFilterMigrationAccount_username"];
}

- (void)setPassword:(id)a3
{
  v4 = a3;
  v5 = [(CalChangeFilteringMigrationAccount *)self modifiedPropertyValues];
  [v5 setObject:v4 forKeyedSubscript:@"_CalChangeFilterMigrationAccount_password"];
}

- (BOOL)dirty
{
  v3 = [(CalChangeFilteringMigrationAccount *)self backingAccount];

  if (!v3)
  {
    return 1;
  }

  v4 = [(CalChangeFilteringMigrationAccount *)self modifiedPropertyValues];
  v5 = [v4 count] != 0;

  return v5;
}

@end