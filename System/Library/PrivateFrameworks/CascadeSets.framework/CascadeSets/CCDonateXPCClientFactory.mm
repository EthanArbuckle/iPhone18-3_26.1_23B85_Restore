@interface CCDonateXPCClientFactory
- (id)makeConnection:(id)connection;
- (void)terminateConnection:(id)connection;
@end

@implementation CCDonateXPCClientFactory

- (id)makeConnection:(id)connection
{
  connectionCopy = connection;
  v4 = [[CCDonateXPCClient alloc] initWithClientId:connectionCopy];

  return v4;
}

- (void)terminateConnection:(id)connection
{
  connectionCopy = connection;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [connectionCopy invalidate];
  }
}

@end