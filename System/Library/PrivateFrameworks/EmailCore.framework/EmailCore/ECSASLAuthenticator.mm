@interface ECSASLAuthenticator
- (BOOL)isUsingSSL;
- (ECSASLAuthenticator)initWithAuthenticationScheme:(id)a3 account:(id)a4 connection:(id)a5;
- (void)setInvalidCredentialsError;
- (void)setMissingPasswordError;
@end

@implementation ECSASLAuthenticator

- (ECSASLAuthenticator)initWithAuthenticationScheme:(id)a3 account:(id)a4 connection:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = ECSASLAuthenticator;
  v12 = [(ECSASLAuthenticator *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_authenticationScheme, a3);
    objc_storeStrong(&v13->_account, a4);
    objc_storeStrong(&v13->_connection, a5);
  }

  return v13;
}

- (BOOL)isUsingSSL
{
  v2 = [(ECAuthenticatableConnection *)self->_connection securityProtocol];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 caseInsensitiveCompare:*MEMORY[0x277CBF0A0]] != 0;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setMissingPasswordError
{
  v2 = [(ECSASLAuthenticator *)self account];
  [v2 setMissingPasswordError];
}

- (void)setInvalidCredentialsError
{
  v2 = [(ECSASLAuthenticator *)self account];
  [v2 setInvalidCredentialsError];
}

@end