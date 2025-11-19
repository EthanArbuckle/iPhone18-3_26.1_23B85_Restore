@interface MFOAuth2TokenAuthScheme
- (BOOL)canAuthenticateAccountClass:(Class)a3 connection:(id)a4;
- (id)authenticatorForAccount:(id)a3 connection:(id)a4;
@end

@implementation MFOAuth2TokenAuthScheme

- (id)authenticatorForAccount:(id)a3 connection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 authenticationMechanisms];
  if ([v8 containsObject:@"XOAUTH2"])
  {
    v9 = [v6 oauth2Token];
    v10 = [v9 length];

    if (v10)
    {
      v14.receiver = self;
      v14.super_class = MFOAuth2TokenAuthScheme;
      v11 = [(ECAuthenticationScheme *)&v14 authenticatorForAccount:v6 connection:v7];
      goto LABEL_6;
    }
  }

  else
  {
  }

  v12 = [MEMORY[0x1E699B208] schemeWithName:@"PLAIN-CLIENTTOKEN"];
  v11 = [v12 authenticatorForAccount:v6 connection:v7];

LABEL_6:

  return v11;
}

- (BOOL)canAuthenticateAccountClass:(Class)a3 connection:(id)a4
{
  v6 = a4;
  v7 = [(objc_class *)a3 conformsToProtocol:&unk_1F277AC40];
  v9.receiver = self;
  v9.super_class = MFOAuth2TokenAuthScheme;
  LOBYTE(a3) = [(ECAuthenticationScheme *)&v9 canAuthenticateAccountClass:a3 connection:v6];

  return v7 & a3;
}

@end