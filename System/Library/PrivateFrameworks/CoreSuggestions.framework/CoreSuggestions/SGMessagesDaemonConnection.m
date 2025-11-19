@interface SGMessagesDaemonConnection
- (SGMessagesDaemonConnection)initWithDaemonConnectionFuture:(id)a3;
- (id)remoteSuggestionManagerWithErrorHandler:(id)a3;
@end

@implementation SGMessagesDaemonConnection

- (id)remoteSuggestionManagerWithErrorHandler:(id)a3
{
  remoteSuggestionManagerForTesting = self->_remoteSuggestionManagerForTesting;
  if (remoteSuggestionManagerForTesting)
  {
    v4 = remoteSuggestionManagerForTesting;
  }

  else
  {
    daemonConnectionFuture = self->_daemonConnectionFuture;
    v7 = a3;
    v8 = [(SGFuture *)daemonConnectionFuture wait];
    v9 = [(SGFuture *)self->_daemonConnectionFuture result];
    v4 = [v9 remoteObjectProxyWithErrorHandler:v7];
  }

  return v4;
}

- (SGMessagesDaemonConnection)initWithDaemonConnectionFuture:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SGMessagesDaemonConnection;
  v6 = [(SGMessagesDaemonConnection *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_daemonConnectionFuture, a3);
  }

  return v7;
}

@end