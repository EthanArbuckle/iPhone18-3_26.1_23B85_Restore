@interface CalPlistSavingMigrationAccount
- (BOOL)authenticated;
- (BOOL)dirty;
- (BOOL)enabledForCalendarsDataClass;
- (BOOL)provisionedForCalendarsDataClass;
- (BOOL)visible;
- (CalPlistSavingMigrationAccount)initWithIdentifier:(id)identifier accountTypeIdentifier:(id)typeIdentifier backingAccount:(id)account initialProperties:(id)properties;
- (NSString)accountDescription;
- (NSString)username;
- (id)accountPropertyForKey:(id)key;
- (void)save;
- (void)setAccountDescription:(id)description;
- (void)setAccountProperty:(id)property forKey:(id)key;
- (void)setPassword:(id)password;
- (void)setUsername:(id)username;
@end

@implementation CalPlistSavingMigrationAccount

- (CalPlistSavingMigrationAccount)initWithIdentifier:(id)identifier accountTypeIdentifier:(id)typeIdentifier backingAccount:(id)account initialProperties:(id)properties
{
  identifierCopy = identifier;
  typeIdentifierCopy = typeIdentifier;
  accountCopy = account;
  propertiesCopy = properties;
  v22.receiver = self;
  v22.super_class = CalPlistSavingMigrationAccount;
  v15 = [(CalPlistSavingMigrationAccount *)&v22 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_identifier, identifier);
    objc_storeStrong(&v16->_accountTypeIdentifier, typeIdentifier);
    objc_storeStrong(&v16->_backingAccount, account);
    if (propertiesCopy)
    {
      dictionary = [propertiesCopy mutableCopy];
    }

    else
    {
      dictionary = [MEMORY[0x277CBEB38] dictionary];
    }

    savedProperties = v16->_savedProperties;
    v16->_savedProperties = dictionary;

    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    modifiedProperties = v16->_modifiedProperties;
    v16->_modifiedProperties = dictionary2;
  }

  return v16;
}

- (BOOL)dirty
{
  modifiedProperties = [(CalPlistSavingMigrationAccount *)self modifiedProperties];
  v3 = [modifiedProperties count] != 0;

  return v3;
}

- (id)accountPropertyForKey:(id)key
{
  keyCopy = key;
  modifiedProperties = [(CalPlistSavingMigrationAccount *)self modifiedProperties];
  v6 = [modifiedProperties objectForKeyedSubscript:keyCopy];

  if (!v6)
  {
    savedProperties = [(CalPlistSavingMigrationAccount *)self savedProperties];
    v6 = [savedProperties objectForKeyedSubscript:keyCopy];

    if (!v6)
    {
      backingAccount = [(CalPlistSavingMigrationAccount *)self backingAccount];
      v6 = [backingAccount accountPropertyForKey:keyCopy];
    }
  }

  v9 = v6;

  return v9;
}

- (void)setAccountProperty:(id)property forKey:(id)key
{
  keyCopy = key;
  propertyCopy = property;
  modifiedProperties = [(CalPlistSavingMigrationAccount *)self modifiedProperties];
  [modifiedProperties setObject:propertyCopy forKeyedSubscript:keyCopy];
}

- (void)save
{
  savedProperties = [(CalPlistSavingMigrationAccount *)self savedProperties];
  modifiedProperties = [(CalPlistSavingMigrationAccount *)self modifiedProperties];
  [savedProperties addEntriesFromDictionary:modifiedProperties];

  modifiedProperties2 = [(CalPlistSavingMigrationAccount *)self modifiedProperties];
  [modifiedProperties2 removeAllObjects];
}

- (NSString)accountDescription
{
  modifiedProperties = [(CalPlistSavingMigrationAccount *)self modifiedProperties];
  accountDescription = [modifiedProperties objectForKeyedSubscript:@"_CalPlistSavingMigrationAccount_accountDescription"];

  if (!accountDescription)
  {
    savedProperties = [(CalPlistSavingMigrationAccount *)self savedProperties];
    accountDescription = [savedProperties objectForKeyedSubscript:@"_CalPlistSavingMigrationAccount_accountDescription"];

    if (!accountDescription)
    {
      backingAccount = [(CalPlistSavingMigrationAccount *)self backingAccount];
      accountDescription = [backingAccount accountDescription];
    }
  }

  return accountDescription;
}

- (void)setAccountDescription:(id)description
{
  descriptionCopy = description;
  modifiedProperties = [(CalPlistSavingMigrationAccount *)self modifiedProperties];
  [modifiedProperties setObject:descriptionCopy forKeyedSubscript:@"_CalPlistSavingMigrationAccount_accountDescription"];
}

- (BOOL)visible
{
  modifiedProperties = [(CalPlistSavingMigrationAccount *)self modifiedProperties];
  backingAccount = [modifiedProperties objectForKeyedSubscript:@"_CalPlistSavingMigrationAccount_visible"];

  if (backingAccount || (-[CalPlistSavingMigrationAccount savedProperties](self, "savedProperties"), v5 = objc_claimAutoreleasedReturnValue(), [v5 objectForKeyedSubscript:@"_CalPlistSavingMigrationAccount_visible"], backingAccount = objc_claimAutoreleasedReturnValue(), v5, backingAccount))
  {
    bOOLValue = [backingAccount BOOLValue];
  }

  else
  {
    backingAccount = [(CalPlistSavingMigrationAccount *)self backingAccount];
    bOOLValue = [backingAccount visible];
  }

  v7 = bOOLValue;

  return v7;
}

- (BOOL)enabledForCalendarsDataClass
{
  modifiedProperties = [(CalPlistSavingMigrationAccount *)self modifiedProperties];
  backingAccount = [modifiedProperties objectForKeyedSubscript:@"_CalPlistSavingMigrationAccount_enabledForCalendarsDataClass"];

  if (backingAccount || (-[CalPlistSavingMigrationAccount savedProperties](self, "savedProperties"), v5 = objc_claimAutoreleasedReturnValue(), [v5 objectForKeyedSubscript:@"_CalPlistSavingMigrationAccount_enabledForCalendarsDataClass"], backingAccount = objc_claimAutoreleasedReturnValue(), v5, backingAccount))
  {
    bOOLValue = [backingAccount BOOLValue];
  }

  else
  {
    backingAccount = [(CalPlistSavingMigrationAccount *)self backingAccount];
    bOOLValue = [backingAccount enabledForCalendarsDataClass];
  }

  v7 = bOOLValue;

  return v7;
}

- (BOOL)provisionedForCalendarsDataClass
{
  modifiedProperties = [(CalPlistSavingMigrationAccount *)self modifiedProperties];
  backingAccount = [modifiedProperties objectForKeyedSubscript:@"_CalChangeFilterMigrationAccount_provisionedForCalendarsDataClass"];

  if (backingAccount || (-[CalPlistSavingMigrationAccount savedProperties](self, "savedProperties"), v5 = objc_claimAutoreleasedReturnValue(), [v5 objectForKeyedSubscript:@"_CalChangeFilterMigrationAccount_provisionedForCalendarsDataClass"], backingAccount = objc_claimAutoreleasedReturnValue(), v5, backingAccount))
  {
    bOOLValue = [backingAccount BOOLValue];
  }

  else
  {
    backingAccount = [(CalPlistSavingMigrationAccount *)self backingAccount];
    bOOLValue = [backingAccount provisionedForCalendarsDataClass];
  }

  v7 = bOOLValue;

  return v7;
}

- (BOOL)authenticated
{
  modifiedProperties = [(CalPlistSavingMigrationAccount *)self modifiedProperties];
  backingAccount = [modifiedProperties objectForKeyedSubscript:@"_CalChangeFilterMigrationAccount_authenticated"];

  if (backingAccount || (-[CalPlistSavingMigrationAccount savedProperties](self, "savedProperties"), v5 = objc_claimAutoreleasedReturnValue(), [v5 objectForKeyedSubscript:@"_CalChangeFilterMigrationAccount_authenticated"], backingAccount = objc_claimAutoreleasedReturnValue(), v5, backingAccount))
  {
    bOOLValue = [backingAccount BOOLValue];
  }

  else
  {
    backingAccount = [(CalPlistSavingMigrationAccount *)self backingAccount];
    bOOLValue = [backingAccount authenticated];
  }

  v7 = bOOLValue;

  return v7;
}

- (NSString)username
{
  modifiedProperties = [(CalPlistSavingMigrationAccount *)self modifiedProperties];
  username = [modifiedProperties objectForKeyedSubscript:@"_CalChangeFilterMigrationAccount_username"];

  if (!username)
  {
    savedProperties = [(CalPlistSavingMigrationAccount *)self savedProperties];
    username = [savedProperties objectForKeyedSubscript:@"_CalChangeFilterMigrationAccount_username"];

    if (!username)
    {
      backingAccount = [(CalPlistSavingMigrationAccount *)self backingAccount];
      username = [backingAccount username];
    }
  }

  return username;
}

- (void)setUsername:(id)username
{
  usernameCopy = username;
  modifiedProperties = [(CalPlistSavingMigrationAccount *)self modifiedProperties];
  [modifiedProperties setObject:usernameCopy forKeyedSubscript:@"_CalChangeFilterMigrationAccount_username"];
}

- (void)setPassword:(id)password
{
  passwordCopy = password;
  modifiedProperties = [(CalPlistSavingMigrationAccount *)self modifiedProperties];
  [modifiedProperties setObject:passwordCopy forKeyedSubscript:@"_CalChangeFilterMigrationAccount_password"];
}

@end