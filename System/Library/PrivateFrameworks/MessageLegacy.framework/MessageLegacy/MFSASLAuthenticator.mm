@interface MFSASLAuthenticator
- (BOOL)isUsingSSL;
- (MFSASLAuthenticator)initWithAuthScheme:(id)a3 account:(id)a4 connection:(id)a5;
- (void)dealloc;
- (void)setMissingPasswordError;
@end

@implementation MFSASLAuthenticator

- (MFSASLAuthenticator)initWithAuthScheme:(id)a3 account:(id)a4 connection:(id)a5
{
  v10.receiver = self;
  v10.super_class = MFSASLAuthenticator;
  v8 = [(MFSASLAuthenticator *)&v10 init];
  if (v8)
  {
    v8->_authScheme = a3;
    v8->_account = a4;
    v8->_connection = a5;
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
  v2 = [(MFConnection *)self->_connection securityProtocol];
  if (v2)
  {
    LOBYTE(v2) = [(NSString *)v2 caseInsensitiveCompare:*MEMORY[0x277CBF0A0]]!= NSOrderedSame;
  }

  return v2;
}

- (void)setMissingPasswordError
{
  v2 = [-[MFSASLAuthenticator account](self "account")];
  v3 = +[MFActivityMonitor currentMonitor];

  [v3 setError:v2];
}

@end