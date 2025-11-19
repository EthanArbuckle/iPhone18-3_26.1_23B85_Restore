@interface CalPlistSavingMigrationAccount
- (BOOL)authenticated;
- (BOOL)dirty;
- (BOOL)enabledForCalendarsDataClass;
- (BOOL)provisionedForCalendarsDataClass;
- (BOOL)visible;
- (CalPlistSavingMigrationAccount)initWithIdentifier:(id)a3 accountTypeIdentifier:(id)a4 backingAccount:(id)a5 initialProperties:(id)a6;
- (NSString)accountDescription;
- (NSString)username;
- (id)accountPropertyForKey:(id)a3;
- (void)save;
- (void)setAccountDescription:(id)a3;
- (void)setAccountProperty:(id)a3 forKey:(id)a4;
- (void)setPassword:(id)a3;
- (void)setUsername:(id)a3;
@end

@implementation CalPlistSavingMigrationAccount

- (CalPlistSavingMigrationAccount)initWithIdentifier:(id)a3 accountTypeIdentifier:(id)a4 backingAccount:(id)a5 initialProperties:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v22.receiver = self;
  v22.super_class = CalPlistSavingMigrationAccount;
  v15 = [(CalPlistSavingMigrationAccount *)&v22 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_identifier, a3);
    objc_storeStrong(&v16->_accountTypeIdentifier, a4);
    objc_storeStrong(&v16->_backingAccount, a5);
    if (v14)
    {
      v17 = [v14 mutableCopy];
    }

    else
    {
      v17 = [MEMORY[0x277CBEB38] dictionary];
    }

    savedProperties = v16->_savedProperties;
    v16->_savedProperties = v17;

    v19 = [MEMORY[0x277CBEB38] dictionary];
    modifiedProperties = v16->_modifiedProperties;
    v16->_modifiedProperties = v19;
  }

  return v16;
}

- (BOOL)dirty
{
  v2 = [(CalPlistSavingMigrationAccount *)self modifiedProperties];
  v3 = [v2 count] != 0;

  return v3;
}

- (id)accountPropertyForKey:(id)a3
{
  v4 = a3;
  v5 = [(CalPlistSavingMigrationAccount *)self modifiedProperties];
  v6 = [v5 objectForKeyedSubscript:v4];

  if (!v6)
  {
    v7 = [(CalPlistSavingMigrationAccount *)self savedProperties];
    v6 = [v7 objectForKeyedSubscript:v4];

    if (!v6)
    {
      v8 = [(CalPlistSavingMigrationAccount *)self backingAccount];
      v6 = [v8 accountPropertyForKey:v4];
    }
  }

  v9 = v6;

  return v9;
}

- (void)setAccountProperty:(id)a3 forKey:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CalPlistSavingMigrationAccount *)self modifiedProperties];
  [v8 setObject:v7 forKeyedSubscript:v6];
}

- (void)save
{
  v3 = [(CalPlistSavingMigrationAccount *)self savedProperties];
  v4 = [(CalPlistSavingMigrationAccount *)self modifiedProperties];
  [v3 addEntriesFromDictionary:v4];

  v5 = [(CalPlistSavingMigrationAccount *)self modifiedProperties];
  [v5 removeAllObjects];
}

- (NSString)accountDescription
{
  v3 = [(CalPlistSavingMigrationAccount *)self modifiedProperties];
  v4 = [v3 objectForKeyedSubscript:@"_CalPlistSavingMigrationAccount_accountDescription"];

  if (!v4)
  {
    v5 = [(CalPlistSavingMigrationAccount *)self savedProperties];
    v4 = [v5 objectForKeyedSubscript:@"_CalPlistSavingMigrationAccount_accountDescription"];

    if (!v4)
    {
      v6 = [(CalPlistSavingMigrationAccount *)self backingAccount];
      v4 = [v6 accountDescription];
    }
  }

  return v4;
}

- (void)setAccountDescription:(id)a3
{
  v4 = a3;
  v5 = [(CalPlistSavingMigrationAccount *)self modifiedProperties];
  [v5 setObject:v4 forKeyedSubscript:@"_CalPlistSavingMigrationAccount_accountDescription"];
}

- (BOOL)visible
{
  v3 = [(CalPlistSavingMigrationAccount *)self modifiedProperties];
  v4 = [v3 objectForKeyedSubscript:@"_CalPlistSavingMigrationAccount_visible"];

  if (v4 || (-[CalPlistSavingMigrationAccount savedProperties](self, "savedProperties"), v5 = objc_claimAutoreleasedReturnValue(), [v5 objectForKeyedSubscript:@"_CalPlistSavingMigrationAccount_visible"], v4 = objc_claimAutoreleasedReturnValue(), v5, v4))
  {
    v6 = [v4 BOOLValue];
  }

  else
  {
    v4 = [(CalPlistSavingMigrationAccount *)self backingAccount];
    v6 = [v4 visible];
  }

  v7 = v6;

  return v7;
}

- (BOOL)enabledForCalendarsDataClass
{
  v3 = [(CalPlistSavingMigrationAccount *)self modifiedProperties];
  v4 = [v3 objectForKeyedSubscript:@"_CalPlistSavingMigrationAccount_enabledForCalendarsDataClass"];

  if (v4 || (-[CalPlistSavingMigrationAccount savedProperties](self, "savedProperties"), v5 = objc_claimAutoreleasedReturnValue(), [v5 objectForKeyedSubscript:@"_CalPlistSavingMigrationAccount_enabledForCalendarsDataClass"], v4 = objc_claimAutoreleasedReturnValue(), v5, v4))
  {
    v6 = [v4 BOOLValue];
  }

  else
  {
    v4 = [(CalPlistSavingMigrationAccount *)self backingAccount];
    v6 = [v4 enabledForCalendarsDataClass];
  }

  v7 = v6;

  return v7;
}

- (BOOL)provisionedForCalendarsDataClass
{
  v3 = [(CalPlistSavingMigrationAccount *)self modifiedProperties];
  v4 = [v3 objectForKeyedSubscript:@"_CalChangeFilterMigrationAccount_provisionedForCalendarsDataClass"];

  if (v4 || (-[CalPlistSavingMigrationAccount savedProperties](self, "savedProperties"), v5 = objc_claimAutoreleasedReturnValue(), [v5 objectForKeyedSubscript:@"_CalChangeFilterMigrationAccount_provisionedForCalendarsDataClass"], v4 = objc_claimAutoreleasedReturnValue(), v5, v4))
  {
    v6 = [v4 BOOLValue];
  }

  else
  {
    v4 = [(CalPlistSavingMigrationAccount *)self backingAccount];
    v6 = [v4 provisionedForCalendarsDataClass];
  }

  v7 = v6;

  return v7;
}

- (BOOL)authenticated
{
  v3 = [(CalPlistSavingMigrationAccount *)self modifiedProperties];
  v4 = [v3 objectForKeyedSubscript:@"_CalChangeFilterMigrationAccount_authenticated"];

  if (v4 || (-[CalPlistSavingMigrationAccount savedProperties](self, "savedProperties"), v5 = objc_claimAutoreleasedReturnValue(), [v5 objectForKeyedSubscript:@"_CalChangeFilterMigrationAccount_authenticated"], v4 = objc_claimAutoreleasedReturnValue(), v5, v4))
  {
    v6 = [v4 BOOLValue];
  }

  else
  {
    v4 = [(CalPlistSavingMigrationAccount *)self backingAccount];
    v6 = [v4 authenticated];
  }

  v7 = v6;

  return v7;
}

- (NSString)username
{
  v3 = [(CalPlistSavingMigrationAccount *)self modifiedProperties];
  v4 = [v3 objectForKeyedSubscript:@"_CalChangeFilterMigrationAccount_username"];

  if (!v4)
  {
    v5 = [(CalPlistSavingMigrationAccount *)self savedProperties];
    v4 = [v5 objectForKeyedSubscript:@"_CalChangeFilterMigrationAccount_username"];

    if (!v4)
    {
      v6 = [(CalPlistSavingMigrationAccount *)self backingAccount];
      v4 = [v6 username];
    }
  }

  return v4;
}

- (void)setUsername:(id)a3
{
  v4 = a3;
  v5 = [(CalPlistSavingMigrationAccount *)self modifiedProperties];
  [v5 setObject:v4 forKeyedSubscript:@"_CalChangeFilterMigrationAccount_username"];
}

- (void)setPassword:(id)a3
{
  v4 = a3;
  v5 = [(CalPlistSavingMigrationAccount *)self modifiedProperties];
  [v5 setObject:v4 forKeyedSubscript:@"_CalChangeFilterMigrationAccount_password"];
}

@end