@interface CRDClient
- (BOOL)hasEntitlement:(id)entitlement;
- (CRDClient)initWithConnection:(id)connection library:(id)library;
- (NSString)bundleIdentifier;
- (void)dealloc;
@end

@implementation CRDClient

- (NSString)bundleIdentifier
{
  connection = self->_connection;
  if (connection)
  {
    [(NSXPCConnection *)connection auditToken];
  }

  else
  {
    memset(v4, 0, sizeof(v4));
  }

  return [CNAuditTokenUtilities bundleIdentifierForAuditToken:[CNAuditToken auditToken:v4]];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CRDClient;
  [(CRDClient *)&v3 dealloc];
}

- (CRDClient)initWithConnection:(id)connection library:(id)library
{
  v8.receiver = self;
  v8.super_class = CRDClient;
  v6 = [(CRDClient *)&v8 init];
  if (v6)
  {
    v6->_connection = connection;
    v6->_library = library;
  }

  return v6;
}

- (BOOL)hasEntitlement:(id)entitlement
{
  v3 = [(NSXPCConnection *)self->_connection valueForEntitlement:entitlement];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  return [v3 BOOLValue];
}

@end