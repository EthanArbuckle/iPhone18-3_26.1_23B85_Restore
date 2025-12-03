@interface MRDIDSServerClientConnection
- (MRDIDSServerClientConnection)initWithConnection:(id)connection replyQueue:(id)queue;
@end

@implementation MRDIDSServerClientConnection

- (MRDIDSServerClientConnection)initWithConnection:(id)connection replyQueue:(id)queue
{
  v5.receiver = self;
  v5.super_class = MRDIDSServerClientConnection;
  return [(MRDIDSServerClientConnection *)&v5 initWithConnection:connection replyQueue:queue];
}

@end