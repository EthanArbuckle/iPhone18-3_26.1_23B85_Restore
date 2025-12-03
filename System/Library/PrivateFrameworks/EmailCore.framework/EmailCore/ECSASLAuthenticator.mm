@interface ECSASLAuthenticator
- (BOOL)isUsingSSL;
- (ECSASLAuthenticator)initWithAuthenticationScheme:(id)scheme account:(id)account connection:(id)connection;
- (void)setInvalidCredentialsError;
- (void)setMissingPasswordError;
@end

@implementation ECSASLAuthenticator

- (ECSASLAuthenticator)initWithAuthenticationScheme:(id)scheme account:(id)account connection:(id)connection
{
  schemeCopy = scheme;
  accountCopy = account;
  connectionCopy = connection;
  v15.receiver = self;
  v15.super_class = ECSASLAuthenticator;
  v12 = [(ECSASLAuthenticator *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_authenticationScheme, scheme);
    objc_storeStrong(&v13->_account, account);
    objc_storeStrong(&v13->_connection, connection);
  }

  return v13;
}

- (BOOL)isUsingSSL
{
  securityProtocol = [(ECAuthenticatableConnection *)self->_connection securityProtocol];
  v3 = securityProtocol;
  if (securityProtocol)
  {
    v4 = [securityProtocol caseInsensitiveCompare:*MEMORY[0x277CBF0A0]] != 0;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setMissingPasswordError
{
  account = [(ECSASLAuthenticator *)self account];
  [account setMissingPasswordError];
}

- (void)setInvalidCredentialsError
{
  account = [(ECSASLAuthenticator *)self account];
  [account setInvalidCredentialsError];
}

@end