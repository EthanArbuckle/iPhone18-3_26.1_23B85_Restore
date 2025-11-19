@interface _BMXPCTransportContext
- (OS_xpc_object)connection;
@end

@implementation _BMXPCTransportContext

- (OS_xpc_object)connection
{
  WeakRetained = objc_loadWeakRetained(&self->_connection);

  return WeakRetained;
}

@end