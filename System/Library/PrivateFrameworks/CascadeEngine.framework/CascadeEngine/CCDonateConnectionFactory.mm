@interface CCDonateConnectionFactory
- (CCDonateConnectionFactory)initWithRequestManager:(id)a3;
- (id)makeConnection:(id)a3;
- (id)makeXPCConnection:(id)a3;
- (void)terminateConnection:(id)a3;
@end

@implementation CCDonateConnectionFactory

- (CCDonateConnectionFactory)initWithRequestManager:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CCDonateConnectionFactory;
  v6 = [(CCDonateConnectionFactory *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_requestManager, a3);
  }

  return v7;
}

- (id)makeXPCConnection:(id)a3
{
  v4 = a3;
  v5 = [[CCDonateConnection alloc] initWithRequestManager:self->_requestManager xpcConnection:v4];

  return v5;
}

- (id)makeConnection:(id)a3
{
  v3 = [[CCDonateConnection alloc] initWithRequestManager:self->_requestManager xpcConnection:0];

  return v3;
}

- (void)terminateConnection:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v3 abortSetDonation];
  }
}

@end