@interface MRIDSClientConnection
- (MRIDSClientConnection)initWithConnection:(id)connection replyQueue:(id)queue;
@end

@implementation MRIDSClientConnection

- (MRIDSClientConnection)initWithConnection:(id)connection replyQueue:(id)queue
{
  v5.receiver = self;
  v5.super_class = MRIDSClientConnection;
  return [(MRProtocolClientConnection *)&v5 initWithConnection:connection replyQueue:queue];
}

@end