@interface ML3Client
- (BOOL)isDaemonClient;
- (ML3Client)init;
- (ML3Client)initWithConnection:(id)connection;
- (id)description;
@end

@implementation ML3Client

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  bundleID = [(ML3Client *)self bundleID];
  v6 = [v3 stringWithFormat:@"<%@: %p %@ [%lld]>", v4, self, bundleID, -[ML3Client processID](self, "processID")];

  return v6;
}

- (BOOL)isDaemonClient
{
  daemonClient = [objc_opt_class() daemonClient];
  LOBYTE(self) = [(ML3Client *)self isEqual:daemonClient];

  return self;
}

- (ML3Client)init
{
  [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE648] format:{@"You must provide %@ with an XPC connection. Use initWithConnection: instead.", objc_opt_class()}];

  return 0;
}

- (ML3Client)initWithConnection:(id)connection
{
  connectionCopy = connection;
  v10.receiver = self;
  v10.super_class = ML3Client;
  v6 = [(ML3Client *)&v10 init];
  v7 = v6;
  if (connectionCopy && v6)
  {
    objc_storeStrong(&v6->_connection, connection);
    v7->_processID = [connectionCopy processIdentifier];
    [connectionCopy auditToken];
    CPCopyBundleIdentifierAndTeamFromAuditToken();
    bundleID = v7->_bundleID;
    v7->_bundleID = 0;
  }

  return v7;
}

@end