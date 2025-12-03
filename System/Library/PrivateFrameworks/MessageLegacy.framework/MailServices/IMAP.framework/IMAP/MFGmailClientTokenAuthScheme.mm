@interface MFGmailClientTokenAuthScheme
- (BOOL)canAuthenticateAccountClass:(Class)class connection:(id)connection;
- (id)authenticatorForAccount:(id)account connection:(id)connection;
@end

@implementation MFGmailClientTokenAuthScheme

- (id)authenticatorForAccount:(id)account connection:(id)connection
{
  if ([objc_msgSend(connection "authenticationMechanisms")])
  {
    v9.receiver = self;
    v9.super_class = MFGmailClientTokenAuthScheme;
    return [(MFAuthScheme *)&v9 authenticatorForAccount:account connection:connection];
  }

  else
  {
    v8 = [MEMORY[0x277D28408] schemeWithName:&stru_2869E1DA0];

    return [v8 authenticatorForAccount:account connection:connection];
  }
}

- (BOOL)canAuthenticateAccountClass:(Class)class connection:(id)connection
{
  if (([(objc_class *)class isSubclassOfClass:objc_opt_class()]& 1) != 0)
  {
    v7 = 1;
  }

  else
  {
    v7 = [(objc_class *)class isSubclassOfClass:objc_opt_class()];
  }

  v9.receiver = self;
  v9.super_class = MFGmailClientTokenAuthScheme;
  return [(MFAuthScheme *)&v9 canAuthenticateAccountClass:class connection:connection]& v7;
}

@end