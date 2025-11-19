@interface MFAuthScheme
+ (id)authSchemesForAccount:(id)a3 connection:(id)a4;
+ (void)initialize;
+ (void)registerSchemeClass:(Class)a3;
- (id)authenticatorForAccount:(id)a3 connection:(id)a4;
@end

@implementation MFAuthScheme

+ (void)initialize
{
  if (!_schemesByName)
  {
    v3 = 0;
    _schemesByName = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:4];
    do
    {
      v4 = NSClassFromString(&initialize_schemes[v3]->isa);
      if (v4)
      {
        [a1 registerSchemeClass:v4];
      }

      ++v3;
    }

    while (v3 != 4);
  }
}

+ (void)registerSchemeClass:(Class)a3
{
  if (a3)
  {
    v4 = [objc_allocWithZone(a3) init];
    v3 = [v4 name];
    if (v3)
    {
      [_schemesByName setObject:v4 forKey:v3];
    }
  }
}

+ (id)authSchemesForAccount:(id)a3 connection:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = [a4 authenticationMechanisms];
  v16 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v5, "count")}];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        if ([@"PLAIN" isEqualToString:v10])
        {
          v11 = &stru_2869ED3E0;
        }

        else
        {
          v11 = v10;
        }

        v12 = [MFAuthScheme schemeWithName:v11];
        if (v12)
        {
          v13 = v12;
          if ([(MFAuthScheme *)v12 canAuthenticateAccountClass:objc_opt_class() connection:a4])
          {
            if ([v16 indexOfObject:v13] == 0x7FFFFFFFFFFFFFFFLL)
            {
              [v16 addObject:v13];
            }
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  result = v16;
  v15 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)authenticatorForAccount:(id)a3 connection:(id)a4
{
  result = [(MFAuthScheme *)self authenticatorClass];
  if (result)
  {
    v8 = [[result alloc] initWithAuthScheme:self account:a3 connection:a4];

    return v8;
  }

  return result;
}

@end