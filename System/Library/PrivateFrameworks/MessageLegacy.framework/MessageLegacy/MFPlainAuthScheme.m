@interface MFPlainAuthScheme
- (BOOL)canAuthenticateAccountClass:(Class)a3 connection:(id)a4;
- (id)authenticatorForAccount:(id)a3 connection:(id)a4;
@end

@implementation MFPlainAuthScheme

- (id)authenticatorForAccount:(id)a3 connection:(id)a4
{
  v7 = [objc_opt_class() saslProfileName];
  if ([v7 isEqualToString:@"imap"] & 1) != 0 || (objc_msgSend(v7, "isEqualToString:", @"pop"))
  {
    return 0;
  }

  v8 = [a4 authenticationMechanisms];
  if ([v8 indexOfObject:@"PLAIN"] == 0x7FFFFFFFFFFFFFFFLL)
  {
    if ([v8 indexOfObject:@"LOGIN"] == 0x7FFFFFFFFFFFFFFFLL)
    {
      return 0;
    }

    v9 = off_2798B5790;
  }

  else
  {
    v9 = off_2798B57C0;
  }

  v10 = *v9;
  v11 = objc_opt_class();
  if (!v11)
  {
    return 0;
  }

  v12 = [[v11 alloc] initWithAuthScheme:self account:a3 connection:a4];

  return v12;
}

- (BOOL)canAuthenticateAccountClass:(Class)a3 connection:(id)a4
{
  v7.receiver = self;
  v7.super_class = MFPlainAuthScheme;
  v5 = [(MFAuthScheme *)&v7 canAuthenticateAccountClass:a3 connection:?];
  if (v5)
  {
    LOBYTE(v5) = [a4 loginDisabled] ^ 1;
  }

  return v5;
}

@end