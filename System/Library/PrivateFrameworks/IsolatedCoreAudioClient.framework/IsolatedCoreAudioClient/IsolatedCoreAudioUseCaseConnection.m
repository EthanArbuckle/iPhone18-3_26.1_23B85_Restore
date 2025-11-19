@interface IsolatedCoreAudioUseCaseConnection
- (IsolatedCoreAudioUseCaseConnection)initWithConnection:(id)a3;
- (void)invalidate;
@end

@implementation IsolatedCoreAudioUseCaseConnection

- (void)invalidate
{
  v2 = [(IsolatedCoreAudioUseCaseConnection *)self connection];
  [v2 invalidate];
}

- (IsolatedCoreAudioUseCaseConnection)initWithConnection:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = IsolatedCoreAudioUseCaseConnection;
  v5 = [(IsolatedCoreAudioUseCaseConnection *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(IsolatedCoreAudioUseCaseConnection *)v5 setConnection:v4];
    -[IsolatedCoreAudioUseCaseConnection setPid:](v6, "setPid:", [v4 getProcessID]);
  }

  return v6;
}

@end