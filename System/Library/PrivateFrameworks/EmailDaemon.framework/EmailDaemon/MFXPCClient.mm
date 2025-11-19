@interface MFXPCClient
- (BOOL)hasEntitlement:(id)a3;
- (MFXPCClient)initWithConnection:(id)a3;
- (NSXPCConnection)connection;
- (id)description;
@end

@implementation MFXPCClient

- (NSXPCConnection)connection
{
  WeakRetained = objc_loadWeakRetained(&self->_connection);

  return WeakRetained;
}

- (MFXPCClient)initWithConnection:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = MFXPCClient;
  v5 = [(MFXPCClient *)&v9 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_connection, v4);
    v7 = v6;
  }

  return v6;
}

- (BOOL)hasEntitlement:(id)a3
{
  v4 = a3;
  v5 = [(MFXPCClient *)self connection];
  v6 = [v5 valueForEntitlement:v4];

  if (objc_opt_respondsToSelector())
  {
    v7 = [v6 BOOLValue];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)description
{
  v3 = [(MFXPCClient *)self connection];
  v4 = objc_opt_class();
  v5 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<%@: %p> / <%@: %p> connection from pid %d", v4, self, objc_opt_class(), v3, [v3 processIdentifier]);

  return v5;
}

@end