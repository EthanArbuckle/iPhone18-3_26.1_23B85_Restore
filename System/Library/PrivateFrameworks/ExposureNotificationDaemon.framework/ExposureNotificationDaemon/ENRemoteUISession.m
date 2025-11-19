@interface ENRemoteUISession
- (ENXPCConnection)connection;
@end

@implementation ENRemoteUISession

- (ENXPCConnection)connection
{
  WeakRetained = objc_loadWeakRetained(&self->_connection);

  return WeakRetained;
}

@end