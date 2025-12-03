@interface IsolatedCoreAudioUseCaseConnection
- (IsolatedCoreAudioUseCaseConnection)initWithConnection:(id)connection;
- (void)invalidate;
@end

@implementation IsolatedCoreAudioUseCaseConnection

- (void)invalidate
{
  connection = [(IsolatedCoreAudioUseCaseConnection *)self connection];
  [connection invalidate];
}

- (IsolatedCoreAudioUseCaseConnection)initWithConnection:(id)connection
{
  connectionCopy = connection;
  v8.receiver = self;
  v8.super_class = IsolatedCoreAudioUseCaseConnection;
  v5 = [(IsolatedCoreAudioUseCaseConnection *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(IsolatedCoreAudioUseCaseConnection *)v5 setConnection:connectionCopy];
    -[IsolatedCoreAudioUseCaseConnection setPid:](v6, "setPid:", [connectionCopy getProcessID]);
  }

  return v6;
}

@end