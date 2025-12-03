@interface MFGmailClientTokenAuthScheme
- (BOOL)canAuthenticateAccountClass:(Class)class connection:(id)connection;
- (id)authenticatorForAccount:(id)account connection:(id)connection;
@end

@implementation MFGmailClientTokenAuthScheme

- (id)authenticatorForAccount:(id)account connection:(id)connection
{
  accountCopy = account;
  connectionCopy = connection;
  authenticationMechanisms = [connectionCopy authenticationMechanisms];
  v9 = [authenticationMechanisms containsObject:@"PLAIN-CLIENTTOKEN"];

  if (v9)
  {
    v13.receiver = self;
    v13.super_class = MFGmailClientTokenAuthScheme;
    v10 = [(ECAuthenticationScheme *)&v13 authenticatorForAccount:accountCopy connection:connectionCopy];
  }

  else
  {
    v11 = [MEMORY[0x1E699B208] schemeWithName:&stru_1F273A5E0];
    v10 = [v11 authenticatorForAccount:accountCopy connection:connectionCopy];
  }

  return v10;
}

- (BOOL)canAuthenticateAccountClass:(Class)class connection:(id)connection
{
  connectionCopy = connection;
  if (([(objc_class *)class isSubclassOfClass:objc_opt_class()]& 1) != 0)
  {
    v7 = 1;
  }

  else
  {
    v7 = [(objc_class *)class isSubclassOfClass:objc_opt_class()];
  }

  v10.receiver = self;
  v10.super_class = MFGmailClientTokenAuthScheme;
  v8 = [(ECAuthenticationScheme *)&v10 canAuthenticateAccountClass:class connection:connectionCopy];

  return v7 & v8;
}

@end