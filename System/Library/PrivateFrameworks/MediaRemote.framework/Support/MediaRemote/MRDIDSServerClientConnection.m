@interface MRDIDSServerClientConnection
- (MRDIDSServerClientConnection)initWithConnection:(id)a3 replyQueue:(id)a4;
@end

@implementation MRDIDSServerClientConnection

- (MRDIDSServerClientConnection)initWithConnection:(id)a3 replyQueue:(id)a4
{
  v5.receiver = self;
  v5.super_class = MRDIDSServerClientConnection;
  return [(MRDIDSServerClientConnection *)&v5 initWithConnection:a3 replyQueue:a4];
}

@end