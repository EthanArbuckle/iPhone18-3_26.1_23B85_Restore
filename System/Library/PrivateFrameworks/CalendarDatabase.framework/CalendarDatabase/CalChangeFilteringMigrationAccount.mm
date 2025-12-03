@interface CalChangeFilteringMigrationAccount
- (BOOL)authenticated;
- (BOOL)dirty;
- (BOOL)enabledForCalendarsDataClass;
- (BOOL)provisionedForCalendarsDataClass;
- (BOOL)visible;
- (CalChangeFilteringMigrationAccount)initWithAccountIdentifier:(id)identifier accountTypeIdentifier:(id)typeIdentifier;
- (CalChangeFilteringMigrationAccount)initWithBackingAccount:(id)account;
- (NSString)accountDescription;
- (NSString)username;
- (id)accountPropertyForKey:(id)key;
- (void)setAccountDescription:(id)description;
- (void)setAccountProperty:(id)property forKey:(id)key;
- (void)setAuthenticationTypeNone;
- (void)setAuthenticationTypeParent;
- (void)setPassword:(id)password;
- (void)setUsername:(id)username;
@end

@implementation CalChangeFilteringMigrationAccount

- (CalChangeFilteringMigrationAccount)initWithBackingAccount:(id)account
{
  accountCopy = account;
  identifier = [accountCopy identifier];
  accountTypeIdentifier = [accountCopy accountTypeIdentifier];
  v8 = [(CalChangeFilteringMigrationAccount *)self initWithAccountIdentifier:identifier accountTypeIdentifier:accountTypeIdentifier];

  if (v8)
  {
    objc_storeStrong(&v8->_backingAccount, account);
  }

  return v8;
}

- (CalChangeFilteringMigrationAccount)initWithAccountIdentifier:(id)identifier accountTypeIdentifier:(id)typeIdentifier
{
  identifierCopy = identifier;
  typeIdentifierCopy = typeIdentifier;
  v14.receiver = self;
  v14.super_class = CalChangeFilteringMigrationAccount;
  v9 = [(CalChangeFilteringMigrationAccount *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_accountIdentifier, identifier);
    objc_storeStrong(&v10->_accountTypeIdentifier, typeIdentifier);
    v11 = objc_opt_new();
    modifiedPropertyValues = v10->_modifiedPropertyValues;
    v10->_modifiedPropertyValues = v11;
  }

  return v10;
}

- (id)accountPropertyForKey:(id)key
{
  keyCopy = key;
  modifiedPropertyValues = [(CalChangeFilteringMigrationAccount *)self modifiedPropertyValues];
  v6 = [modifiedPropertyValues objectForKeyedSubscript:keyCopy];

  if (v6)
  {
    v7 = v6;
  }

  else
  {
    backingAccount = [(CalChangeFilteringMigrationAccount *)self backingAccount];
    v7 = [backingAccount accountPropertyForKey:keyCopy];
  }

  return v7;
}

- (void)setAccountProperty:(id)property forKey:(id)key
{
  keyCopy = key;
  propertyCopy = property;
  modifiedPropertyValues = [(CalChangeFilteringMigrationAccount *)self modifiedPropertyValues];
  [modifiedPropertyValues setObject:propertyCopy forKeyedSubscript:keyCopy];
}

- (void)setAuthenticationTypeParent
{
  modifiedPropertyValues = [(CalChangeFilteringMigrationAccount *)self modifiedPropertyValues];
  [modifiedPropertyValues setObject:@"Parent" forKeyedSubscript:@"_CalChangeFilterMigrationAccount_setAuthenticationType"];
}

- (void)setAuthenticationTypeNone
{
  modifiedPropertyValues = [(CalChangeFilteringMigrationAccount *)self modifiedPropertyValues];
  [modifiedPropertyValues setObject:@"None" forKeyedSubscript:@"_CalChangeFilterMigrationAccount_setAuthenticationType"];
}

- (NSString)accountDescription
{
  modifiedPropertyValues = [(CalChangeFilteringMigrationAccount *)self modifiedPropertyValues];
  v4 = [modifiedPropertyValues objectForKeyedSubscript:@"_CalChangeFilterMigrationAccount_accountDescription"];

  if (v4)
  {
    accountDescription = v4;
  }

  else
  {
    backingAccount = [(CalChangeFilteringMigrationAccount *)self backingAccount];
    accountDescription = [backingAccount accountDescription];
  }

  return accountDescription;
}

- (void)setAccountDescription:(id)description
{
  descriptionCopy = description;
  modifiedPropertyValues = [(CalChangeFilteringMigrationAccount *)self modifiedPropertyValues];
  [modifiedPropertyValues setObject:descriptionCopy forKeyedSubscript:@"_CalChangeFilterMigrationAccount_accountDescription"];
}

- (BOOL)visible
{
  modifiedPropertyValues = [(CalChangeFilteringMigrationAccount *)self modifiedPropertyValues];
  v4 = [modifiedPropertyValues objectForKeyedSubscript:@"_CalChangeFilterMigrationAccount_visible"];

  if (v4)
  {
    bOOLValue = [v4 BOOLValue];
  }

  else
  {
    backingAccount = [(CalChangeFilteringMigrationAccount *)self backingAccount];
    bOOLValue = [backingAccount visible];
  }

  return bOOLValue;
}

- (BOOL)enabledForCalendarsDataClass
{
  modifiedPropertyValues = [(CalChangeFilteringMigrationAccount *)self modifiedPropertyValues];
  v4 = [modifiedPropertyValues objectForKeyedSubscript:@"_CalChangeFilterMigrationAccount_enabledForCalendarsDataClass"];

  if (v4)
  {
    bOOLValue = [v4 BOOLValue];
  }

  else
  {
    backingAccount = [(CalChangeFilteringMigrationAccount *)self backingAccount];
    bOOLValue = [backingAccount enabledForCalendarsDataClass];
  }

  return bOOLValue;
}

- (BOOL)provisionedForCalendarsDataClass
{
  modifiedPropertyValues = [(CalChangeFilteringMigrationAccount *)self modifiedPropertyValues];
  v4 = [modifiedPropertyValues objectForKeyedSubscript:@"_CalChangeFilterMigrationAccount_provisionedForCalendarsDataClass"];

  if (v4)
  {
    bOOLValue = [v4 BOOLValue];
  }

  else
  {
    backingAccount = [(CalChangeFilteringMigrationAccount *)self backingAccount];
    bOOLValue = [backingAccount provisionedForCalendarsDataClass];
  }

  return bOOLValue;
}

- (BOOL)authenticated
{
  modifiedPropertyValues = [(CalChangeFilteringMigrationAccount *)self modifiedPropertyValues];
  v4 = [modifiedPropertyValues objectForKeyedSubscript:@"_CalChangeFilterMigrationAccount_authenticated"];

  if (v4)
  {
    bOOLValue = [v4 BOOLValue];
  }

  else
  {
    backingAccount = [(CalChangeFilteringMigrationAccount *)self backingAccount];
    bOOLValue = [backingAccount authenticated];
  }

  return bOOLValue;
}

- (NSString)username
{
  modifiedPropertyValues = [(CalChangeFilteringMigrationAccount *)self modifiedPropertyValues];
  v4 = [modifiedPropertyValues objectForKeyedSubscript:@"_CalChangeFilterMigrationAccount_username"];

  if (v4)
  {
    username = v4;
  }

  else
  {
    backingAccount = [(CalChangeFilteringMigrationAccount *)self backingAccount];
    username = [backingAccount username];
  }

  return username;
}

- (void)setUsername:(id)username
{
  usernameCopy = username;
  modifiedPropertyValues = [(CalChangeFilteringMigrationAccount *)self modifiedPropertyValues];
  [modifiedPropertyValues setObject:usernameCopy forKeyedSubscript:@"_CalChangeFilterMigrationAccount_username"];
}

- (void)setPassword:(id)password
{
  passwordCopy = password;
  modifiedPropertyValues = [(CalChangeFilteringMigrationAccount *)self modifiedPropertyValues];
  [modifiedPropertyValues setObject:passwordCopy forKeyedSubscript:@"_CalChangeFilterMigrationAccount_password"];
}

- (BOOL)dirty
{
  backingAccount = [(CalChangeFilteringMigrationAccount *)self backingAccount];

  if (!backingAccount)
  {
    return 1;
  }

  modifiedPropertyValues = [(CalChangeFilteringMigrationAccount *)self modifiedPropertyValues];
  v5 = [modifiedPropertyValues count] != 0;

  return v5;
}

@end