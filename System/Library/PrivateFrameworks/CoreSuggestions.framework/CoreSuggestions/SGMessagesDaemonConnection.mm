@interface SGMessagesDaemonConnection
- (SGMessagesDaemonConnection)initWithDaemonConnectionFuture:(id)future;
- (id)remoteSuggestionManagerWithErrorHandler:(id)handler;
@end

@implementation SGMessagesDaemonConnection

- (id)remoteSuggestionManagerWithErrorHandler:(id)handler
{
  remoteSuggestionManagerForTesting = self->_remoteSuggestionManagerForTesting;
  if (remoteSuggestionManagerForTesting)
  {
    v4 = remoteSuggestionManagerForTesting;
  }

  else
  {
    daemonConnectionFuture = self->_daemonConnectionFuture;
    handlerCopy = handler;
    wait = [(SGFuture *)daemonConnectionFuture wait];
    result = [(SGFuture *)self->_daemonConnectionFuture result];
    v4 = [result remoteObjectProxyWithErrorHandler:handlerCopy];
  }

  return v4;
}

- (SGMessagesDaemonConnection)initWithDaemonConnectionFuture:(id)future
{
  futureCopy = future;
  v9.receiver = self;
  v9.super_class = SGMessagesDaemonConnection;
  v6 = [(SGMessagesDaemonConnection *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_daemonConnectionFuture, future);
  }

  return v7;
}

@end