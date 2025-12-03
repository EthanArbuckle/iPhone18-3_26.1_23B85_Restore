@interface MFPlainAuthScheme
- (BOOL)canAuthenticateAccountClass:(Class)class connection:(id)connection;
- (id)authenticatorForAccount:(id)account connection:(id)connection;
@end

@implementation MFPlainAuthScheme

- (id)authenticatorForAccount:(id)account connection:(id)connection
{
  saslProfileName = [objc_opt_class() saslProfileName];
  if ([saslProfileName isEqualToString:@"imap"] & 1) != 0 || (objc_msgSend(saslProfileName, "isEqualToString:", @"pop"))
  {
    return 0;
  }

  authenticationMechanisms = [connection authenticationMechanisms];
  if ([authenticationMechanisms indexOfObject:@"PLAIN"] == 0x7FFFFFFFFFFFFFFFLL)
  {
    if ([authenticationMechanisms indexOfObject:@"LOGIN"] == 0x7FFFFFFFFFFFFFFFLL)
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

  v12 = [[v11 alloc] initWithAuthScheme:self account:account connection:connection];

  return v12;
}

- (BOOL)canAuthenticateAccountClass:(Class)class connection:(id)connection
{
  v7.receiver = self;
  v7.super_class = MFPlainAuthScheme;
  v5 = [(MFAuthScheme *)&v7 canAuthenticateAccountClass:class connection:?];
  if (v5)
  {
    LOBYTE(v5) = [connection loginDisabled] ^ 1;
  }

  return v5;
}

@end