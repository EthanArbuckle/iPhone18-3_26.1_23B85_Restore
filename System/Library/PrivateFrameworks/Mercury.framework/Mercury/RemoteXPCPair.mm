@interface RemoteXPCPair
- (RemoteXPCPair)initWithClient:(id)a3 server:(id)a4;
@end

@implementation RemoteXPCPair

- (RemoteXPCPair)initWithClient:(id)a3 server:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = RemoteXPCPair;
  v9 = [(RemoteXPCPair *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_client, a3);
    objc_storeStrong(&v10->_server, a4);
  }

  return v10;
}

@end