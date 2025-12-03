@interface MFXPCClient
- (BOOL)hasEntitlement:(id)entitlement;
- (MFXPCClient)initWithConnection:(id)connection;
- (NSXPCConnection)connection;
- (id)description;
@end

@implementation MFXPCClient

- (NSXPCConnection)connection
{
  WeakRetained = objc_loadWeakRetained(&self->_connection);

  return WeakRetained;
}

- (MFXPCClient)initWithConnection:(id)connection
{
  connectionCopy = connection;
  v9.receiver = self;
  v9.super_class = MFXPCClient;
  v5 = [(MFXPCClient *)&v9 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_connection, connectionCopy);
    v7 = v6;
  }

  return v6;
}

- (BOOL)hasEntitlement:(id)entitlement
{
  entitlementCopy = entitlement;
  connection = [(MFXPCClient *)self connection];
  v6 = [connection valueForEntitlement:entitlementCopy];

  if (objc_opt_respondsToSelector())
  {
    bOOLValue = [v6 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (id)description
{
  connection = [(MFXPCClient *)self connection];
  v4 = objc_opt_class();
  v5 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<%@: %p> / <%@: %p> connection from pid %d", v4, self, objc_opt_class(), connection, [connection processIdentifier]);

  return v5;
}

@end