@interface MFPlainAuthScheme
- (BOOL)canAuthenticateAccountClass:(Class)class connection:(id)connection;
- (id)authenticatorForAccount:(id)account connection:(id)connection;
@end

@implementation MFPlainAuthScheme

- (id)authenticatorForAccount:(id)account connection:(id)connection
{
  accountCopy = account;
  connectionCopy = connection;
  saslProfileName = [objc_opt_class() saslProfileName];
  if ([saslProfileName isEqualToString:@"pop"])
  {
    goto LABEL_8;
  }

  authenticationMechanisms = [connectionCopy authenticationMechanisms];
  if ([authenticationMechanisms indexOfObject:*MEMORY[0x1E699B1E8]] == 0x7FFFFFFFFFFFFFFFLL || (v10 = objc_opt_class()) == 0)
  {
    if ([saslProfileName isEqualToString:@"smtp"] && objc_msgSend(authenticationMechanisms, "indexOfObject:", *MEMORY[0x1E699B1E0]) != 0x7FFFFFFFFFFFFFFFLL)
    {
      v10 = objc_opt_class();

      if (v10)
      {
        goto LABEL_10;
      }
    }

    else
    {
    }

LABEL_8:
    v11 = 0;
    goto LABEL_11;
  }

LABEL_10:
  v11 = [[v10 alloc] initWithAuthenticationScheme:self account:accountCopy connection:connectionCopy];
LABEL_11:

  return v11;
}

- (BOOL)canAuthenticateAccountClass:(Class)class connection:(id)connection
{
  connectionCopy = connection;
  v9.receiver = self;
  v9.super_class = MFPlainAuthScheme;
  if ([(ECAuthenticationScheme *)&v9 canAuthenticateAccountClass:class connection:connectionCopy])
  {
    v7 = [connectionCopy loginDisabled] ^ 1;
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

@end