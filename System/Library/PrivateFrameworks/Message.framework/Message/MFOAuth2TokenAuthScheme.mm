@interface MFOAuth2TokenAuthScheme
- (BOOL)canAuthenticateAccountClass:(Class)class connection:(id)connection;
- (id)authenticatorForAccount:(id)account connection:(id)connection;
@end

@implementation MFOAuth2TokenAuthScheme

- (id)authenticatorForAccount:(id)account connection:(id)connection
{
  accountCopy = account;
  connectionCopy = connection;
  authenticationMechanisms = [connectionCopy authenticationMechanisms];
  if ([authenticationMechanisms containsObject:@"XOAUTH2"])
  {
    oauth2Token = [accountCopy oauth2Token];
    v10 = [oauth2Token length];

    if (v10)
    {
      v14.receiver = self;
      v14.super_class = MFOAuth2TokenAuthScheme;
      v11 = [(ECAuthenticationScheme *)&v14 authenticatorForAccount:accountCopy connection:connectionCopy];
      goto LABEL_6;
    }
  }

  else
  {
  }

  v12 = [MEMORY[0x1E699B208] schemeWithName:@"PLAIN-CLIENTTOKEN"];
  v11 = [v12 authenticatorForAccount:accountCopy connection:connectionCopy];

LABEL_6:

  return v11;
}

- (BOOL)canAuthenticateAccountClass:(Class)class connection:(id)connection
{
  connectionCopy = connection;
  v7 = [(objc_class *)class conformsToProtocol:&unk_1F277AC40];
  v9.receiver = self;
  v9.super_class = MFOAuth2TokenAuthScheme;
  LOBYTE(class) = [(ECAuthenticationScheme *)&v9 canAuthenticateAccountClass:class connection:connectionCopy];

  return v7 & class;
}

@end