@interface MFAuthScheme
+ (id)authSchemesForAccount:(id)account connection:(id)connection;
+ (void)initialize;
+ (void)registerSchemeClass:(Class)class;
- (id)authenticatorForAccount:(id)account connection:(id)connection;
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
        [self registerSchemeClass:v4];
      }

      ++v3;
    }

    while (v3 != 4);
  }
}

+ (void)registerSchemeClass:(Class)class
{
  if (class)
  {
    v4 = [objc_allocWithZone(class) init];
    name = [v4 name];
    if (name)
    {
      [_schemesByName setObject:v4 forKey:name];
    }
  }
}

+ (id)authSchemesForAccount:(id)account connection:(id)connection
{
  v22 = *MEMORY[0x277D85DE8];
  authenticationMechanisms = [connection authenticationMechanisms];
  v16 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(authenticationMechanisms, "count")}];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = [authenticationMechanisms countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(authenticationMechanisms);
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
          if ([(MFAuthScheme *)v12 canAuthenticateAccountClass:objc_opt_class() connection:connection])
          {
            if ([v16 indexOfObject:v13] == 0x7FFFFFFFFFFFFFFFLL)
            {
              [v16 addObject:v13];
            }
          }
        }
      }

      v7 = [authenticationMechanisms countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  result = v16;
  v15 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)authenticatorForAccount:(id)account connection:(id)connection
{
  result = [(MFAuthScheme *)self authenticatorClass];
  if (result)
  {
    v8 = [[result alloc] initWithAuthScheme:self account:account connection:connection];

    return v8;
  }

  return result;
}

@end