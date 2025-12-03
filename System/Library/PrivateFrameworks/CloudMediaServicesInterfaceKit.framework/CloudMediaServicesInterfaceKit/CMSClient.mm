@interface CMSClient
+ (id)clientWithConnection:(id)connection;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation CMSClient

+ (id)clientWithConnection:(id)connection
{
  connectionCopy = connection;
  v4 = objc_opt_new();
  [v4 setConnection:connectionCopy];

  return v4;
}

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  connection = [(CMSClient *)self connection];
  v4 = [v2 stringWithFormat:@"<CMSClient: Connection: %@>", connection];

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  connection = [(CMSClient *)self connection];
  [v4 setConnection:connection];

  return v4;
}

@end