@interface MFOAuth2TokenAuthScheme
- (BOOL)canAuthenticateAccountClass:(Class)a3 connection:(id)a4;
- (id)authenticatorForAccount:(id)a3 connection:(id)a4;
@end

@implementation MFOAuth2TokenAuthScheme

- (id)authenticatorForAccount:(id)a3 connection:(id)a4
{
  if ([objc_msgSend(a4 "authenticationMechanisms")] && objc_msgSend(objc_msgSend(a3, "oauth2Token"), "length"))
  {
    v9.receiver = self;
    v9.super_class = MFOAuth2TokenAuthScheme;
    return [(MFAuthScheme *)&v9 authenticatorForAccount:a3 connection:a4];
  }

  else
  {
    v8 = [MEMORY[0x277D28408] schemeWithName:@"PLAIN-CLIENTTOKEN"];

    return [v8 authenticatorForAccount:a3 connection:a4];
  }
}

- (BOOL)canAuthenticateAccountClass:(Class)a3 connection:(id)a4
{
  v7 = [(objc_class *)a3 conformsToProtocol:&unk_2869EE2B0];
  v9.receiver = self;
  v9.super_class = MFOAuth2TokenAuthScheme;
  return v7 & [(MFAuthScheme *)&v9 canAuthenticateAccountClass:a3 connection:a4];
}

@end