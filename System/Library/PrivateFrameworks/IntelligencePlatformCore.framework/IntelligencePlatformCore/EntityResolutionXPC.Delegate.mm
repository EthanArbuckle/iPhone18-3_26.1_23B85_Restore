@interface EntityResolutionXPC.Delegate
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
@end

@implementation EntityResolutionXPC.Delegate

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  selfCopy = self;
  v9 = sub_1C47166A0(selfCopy, connectionCopy);

  return v9 & 1;
}

@end