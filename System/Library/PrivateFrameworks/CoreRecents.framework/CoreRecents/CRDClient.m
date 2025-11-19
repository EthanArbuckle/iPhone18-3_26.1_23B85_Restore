@interface CRDClient
- (BOOL)hasEntitlement:(id)a3;
- (CRDClient)initWithConnection:(id)a3 library:(id)a4;
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

- (CRDClient)initWithConnection:(id)a3 library:(id)a4
{
  v8.receiver = self;
  v8.super_class = CRDClient;
  v6 = [(CRDClient *)&v8 init];
  if (v6)
  {
    v6->_connection = a3;
    v6->_library = a4;
  }

  return v6;
}

- (BOOL)hasEntitlement:(id)a3
{
  v3 = [(NSXPCConnection *)self->_connection valueForEntitlement:a3];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  return [v3 BOOLValue];
}

@end