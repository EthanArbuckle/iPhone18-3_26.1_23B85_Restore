@interface MFPlainAuthScheme
- (BOOL)canAuthenticateAccountClass:(Class)a3 connection:(id)a4;
- (id)authenticatorForAccount:(id)a3 connection:(id)a4;
@end

@implementation MFPlainAuthScheme

- (id)authenticatorForAccount:(id)a3 connection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [objc_opt_class() saslProfileName];
  if ([v8 isEqualToString:@"pop"])
  {
    goto LABEL_8;
  }

  v9 = [v7 authenticationMechanisms];
  if ([v9 indexOfObject:*MEMORY[0x1E699B1E8]] == 0x7FFFFFFFFFFFFFFFLL || (v10 = objc_opt_class()) == 0)
  {
    if ([v8 isEqualToString:@"smtp"] && objc_msgSend(v9, "indexOfObject:", *MEMORY[0x1E699B1E0]) != 0x7FFFFFFFFFFFFFFFLL)
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
  v11 = [[v10 alloc] initWithAuthenticationScheme:self account:v6 connection:v7];
LABEL_11:

  return v11;
}

- (BOOL)canAuthenticateAccountClass:(Class)a3 connection:(id)a4
{
  v6 = a4;
  v9.receiver = self;
  v9.super_class = MFPlainAuthScheme;
  if ([(ECAuthenticationScheme *)&v9 canAuthenticateAccountClass:a3 connection:v6])
  {
    v7 = [v6 loginDisabled] ^ 1;
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

@end