@interface ECAuthenticationScheme
+ (id)authenticationSchemesForAccount:(id)account connection:(id)connection;
+ (id)schemeWithName:(id)name;
+ (void)initialize;
+ (void)registerSchemeClass:(Class)class;
- (id)authenticatorForAccount:(id)account connection:(id)connection;
@end

@implementation ECAuthenticationScheme

+ (void)initialize
{
  v15 = *MEMORY[0x277D85DE8];
  if (!_schemesByName)
  {
    v3 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(&unk_2840507A0, "count")}];
    v4 = _schemesByName;
    _schemesByName = v3;

    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v5 = [&unk_2840507A0 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v5)
    {
      v6 = *v11;
      do
      {
        v7 = 0;
        do
        {
          if (*v11 != v6)
          {
            objc_enumerationMutation(&unk_2840507A0);
          }

          v8 = NSClassFromString(*(*(&v10 + 1) + 8 * v7));
          if (v8)
          {
            [self registerSchemeClass:v8];
          }

          ++v7;
        }

        while (v5 != v7);
        v5 = [&unk_2840507A0 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v5);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

+ (void)registerSchemeClass:(Class)class
{
  if (class)
  {
    v4 = objc_alloc_init(class);
    name = [v4 name];
    if (name)
    {
      [_schemesByName setObject:v4 forKeyedSubscript:name];
    }
  }
}

+ (id)schemeWithName:(id)name
{
  v3 = [_schemesByName objectForKeyedSubscript:name];

  return v3;
}

+ (id)authenticationSchemesForAccount:(id)account connection:(id)connection
{
  v21 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  connectionCopy = connection;
  authenticationMechanisms = [connectionCopy authenticationMechanisms];
  v7 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(authenticationMechanisms, "count")}];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = authenticationMechanisms;
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = *v17;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = [ECAuthenticationScheme schemeWithName:*(*(&v16 + 1) + 8 * i)];
        if (v12 && [v12 canAuthenticateAccountClass:objc_opt_class() connection:connectionCopy] && objc_msgSend(v7, "indexOfObject:", v12) == 0x7FFFFFFFFFFFFFFFLL)
        {
          [v7 addObject:v12];
        }
      }

      v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  v13 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)authenticatorForAccount:(id)account connection:(id)connection
{
  accountCopy = account;
  connectionCopy = connection;
  authenticatorClass = [(ECAuthenticationScheme *)self authenticatorClass];
  if (authenticatorClass)
  {
    v9 = [[authenticatorClass alloc] initWithAuthenticationScheme:self account:accountCopy connection:connectionCopy];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end