@interface CCDonateConnectionFactory
- (CCDonateConnectionFactory)initWithRequestManager:(id)manager;
- (id)makeConnection:(id)connection;
- (id)makeXPCConnection:(id)connection;
- (void)terminateConnection:(id)connection;
@end

@implementation CCDonateConnectionFactory

- (CCDonateConnectionFactory)initWithRequestManager:(id)manager
{
  managerCopy = manager;
  v9.receiver = self;
  v9.super_class = CCDonateConnectionFactory;
  v6 = [(CCDonateConnectionFactory *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_requestManager, manager);
  }

  return v7;
}

- (id)makeXPCConnection:(id)connection
{
  connectionCopy = connection;
  v5 = [[CCDonateConnection alloc] initWithRequestManager:self->_requestManager xpcConnection:connectionCopy];

  return v5;
}

- (id)makeConnection:(id)connection
{
  v3 = [[CCDonateConnection alloc] initWithRequestManager:self->_requestManager xpcConnection:0];

  return v3;
}

- (void)terminateConnection:(id)connection
{
  connectionCopy = connection;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [connectionCopy abortSetDonation];
  }
}

@end