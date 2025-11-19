@interface MFGmailClientTokenAuthScheme
- (BOOL)canAuthenticateAccountClass:(Class)a3 connection:(id)a4;
- (id)authenticatorForAccount:(id)a3 connection:(id)a4;
@end

@implementation MFGmailClientTokenAuthScheme

- (id)authenticatorForAccount:(id)a3 connection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 authenticationMechanisms];
  v9 = [v8 containsObject:@"PLAIN-CLIENTTOKEN"];

  if (v9)
  {
    v13.receiver = self;
    v13.super_class = MFGmailClientTokenAuthScheme;
    v10 = [(ECAuthenticationScheme *)&v13 authenticatorForAccount:v6 connection:v7];
  }

  else
  {
    v11 = [MEMORY[0x1E699B208] schemeWithName:&stru_1F273A5E0];
    v10 = [v11 authenticatorForAccount:v6 connection:v7];
  }

  return v10;
}

- (BOOL)canAuthenticateAccountClass:(Class)a3 connection:(id)a4
{
  v6 = a4;
  if (([(objc_class *)a3 isSubclassOfClass:objc_opt_class()]& 1) != 0)
  {
    v7 = 1;
  }

  else
  {
    v7 = [(objc_class *)a3 isSubclassOfClass:objc_opt_class()];
  }

  v10.receiver = self;
  v10.super_class = MFGmailClientTokenAuthScheme;
  v8 = [(ECAuthenticationScheme *)&v10 canAuthenticateAccountClass:a3 connection:v6];

  return v7 & v8;
}

@end