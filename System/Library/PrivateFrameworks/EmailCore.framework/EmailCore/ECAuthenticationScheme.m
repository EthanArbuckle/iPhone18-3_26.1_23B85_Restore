@interface ECAuthenticationScheme
+ (id)authenticationSchemesForAccount:(id)a3 connection:(id)a4;
+ (id)schemeWithName:(id)a3;
+ (void)initialize;
+ (void)registerSchemeClass:(Class)a3;
- (id)authenticatorForAccount:(id)a3 connection:(id)a4;
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
            [a1 registerSchemeClass:v8];
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

+ (void)registerSchemeClass:(Class)a3
{
  if (a3)
  {
    v4 = objc_alloc_init(a3);
    v3 = [v4 name];
    if (v3)
    {
      [_schemesByName setObject:v4 forKeyedSubscript:v3];
    }
  }
}

+ (id)schemeWithName:(id)a3
{
  v3 = [_schemesByName objectForKeyedSubscript:a3];

  return v3;
}

+ (id)authenticationSchemesForAccount:(id)a3 connection:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v15 = [v6 authenticationMechanisms];
  v7 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v15, "count")}];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = v15;
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
        if (v12 && [v12 canAuthenticateAccountClass:objc_opt_class() connection:v6] && objc_msgSend(v7, "indexOfObject:", v12) == 0x7FFFFFFFFFFFFFFFLL)
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

- (id)authenticatorForAccount:(id)a3 connection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(ECAuthenticationScheme *)self authenticatorClass];
  if (v8)
  {
    v9 = [[v8 alloc] initWithAuthenticationScheme:self account:v6 connection:v7];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end