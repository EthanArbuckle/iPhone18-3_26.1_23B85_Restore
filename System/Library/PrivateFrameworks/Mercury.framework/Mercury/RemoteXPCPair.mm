@interface RemoteXPCPair
- (RemoteXPCPair)initWithClient:(id)client server:(id)server;
@end

@implementation RemoteXPCPair

- (RemoteXPCPair)initWithClient:(id)client server:(id)server
{
  clientCopy = client;
  serverCopy = server;
  v12.receiver = self;
  v12.super_class = RemoteXPCPair;
  v9 = [(RemoteXPCPair *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_client, client);
    objc_storeStrong(&v10->_server, server);
  }

  return v10;
}

@end