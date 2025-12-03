@interface MFSASLAuthenticator
- (BOOL)isUsingSSL;
- (MFSASLAuthenticator)initWithAuthScheme:(id)scheme account:(id)account connection:(id)connection;
- (void)dealloc;
- (void)setMissingPasswordError;
@end

@implementation MFSASLAuthenticator

- (MFSASLAuthenticator)initWithAuthScheme:(id)scheme account:(id)account connection:(id)connection
{
  v10.receiver = self;
  v10.super_class = MFSASLAuthenticator;
  v8 = [(MFSASLAuthenticator *)&v10 init];
  if (v8)
  {
    v8->_authScheme = scheme;
    v8->_account = account;
    v8->_connection = connection;
  }

  return v8;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MFSASLAuthenticator;
  [(MFSASLAuthenticator *)&v3 dealloc];
}

- (BOOL)isUsingSSL
{
  securityProtocol = [(MFConnection *)self->_connection securityProtocol];
  if (securityProtocol)
  {
    LOBYTE(securityProtocol) = [(NSString *)securityProtocol caseInsensitiveCompare:*MEMORY[0x277CBF0A0]]!= NSOrderedSame;
  }

  return securityProtocol;
}

- (void)setMissingPasswordError
{
  v2 = [-[MFSASLAuthenticator account](self "account")];
  v3 = +[MFActivityMonitor currentMonitor];

  [v3 setError:v2];
}

@end