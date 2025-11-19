@interface MFGmailClientTokenAuthScheme
- (BOOL)canAuthenticateAccountClass:(Class)a3 connection:(id)a4;
- (id)authenticatorForAccount:(id)a3 connection:(id)a4;
@end

@implementation MFGmailClientTokenAuthScheme

- (id)authenticatorForAccount:(id)a3 connection:(id)a4
{
  if ([objc_msgSend(a4 "authenticationMechanisms")])
  {
    v9.receiver = self;
    v9.super_class = MFGmailClientTokenAuthScheme;
    return [(MFAuthScheme *)&v9 authenticatorForAccount:a3 connection:a4];
  }

  else
  {
    v8 = [MEMORY[0x277D28408] schemeWithName:&stru_2869E1DA0];

    return [v8 authenticatorForAccount:a3 connection:a4];
  }
}

- (BOOL)canAuthenticateAccountClass:(Class)a3 connection:(id)a4
{
  if (([(objc_class *)a3 isSubclassOfClass:objc_opt_class()]& 1) != 0)
  {
    v7 = 1;
  }

  else
  {
    v7 = [(objc_class *)a3 isSubclassOfClass:objc_opt_class()];
  }

  v9.receiver = self;
  v9.super_class = MFGmailClientTokenAuthScheme;
  return [(MFAuthScheme *)&v9 canAuthenticateAccountClass:a3 connection:a4]& v7;
}

@end