@interface MRIDSClientConnection
- (MRIDSClientConnection)initWithConnection:(id)a3 replyQueue:(id)a4;
@end

@implementation MRIDSClientConnection

- (MRIDSClientConnection)initWithConnection:(id)a3 replyQueue:(id)a4
{
  v5.receiver = self;
  v5.super_class = MRIDSClientConnection;
  return [(MRProtocolClientConnection *)&v5 initWithConnection:a3 replyQueue:a4];
}

@end