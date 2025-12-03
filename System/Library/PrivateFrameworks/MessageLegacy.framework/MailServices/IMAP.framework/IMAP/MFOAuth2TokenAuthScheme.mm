@interface MFOAuth2TokenAuthScheme
- (BOOL)canAuthenticateAccountClass:(Class)class connection:(id)connection;
- (id)authenticatorForAccount:(id)account connection:(id)connection;
@end

@implementation MFOAuth2TokenAuthScheme

- (id)authenticatorForAccount:(id)account connection:(id)connection
{
  if ([objc_msgSend(connection "authenticationMechanisms")] && objc_msgSend(objc_msgSend(account, "oauth2Token"), "length"))
  {
    v9.receiver = self;
    v9.super_class = MFOAuth2TokenAuthScheme;
    return [(MFAuthScheme *)&v9 authenticatorForAccount:account connection:connection];
  }

  else
  {
    v8 = [MEMORY[0x277D28408] schemeWithName:@"PLAIN-CLIENTTOKEN"];

    return [v8 authenticatorForAccount:account connection:connection];
  }
}

- (BOOL)canAuthenticateAccountClass:(Class)class connection:(id)connection
{
  v7 = [(objc_class *)class conformsToProtocol:&unk_2869EE2B0];
  v9.receiver = self;
  v9.super_class = MFOAuth2TokenAuthScheme;
  return v7 & [(MFAuthScheme *)&v9 canAuthenticateAccountClass:class connection:connection];
}

@end