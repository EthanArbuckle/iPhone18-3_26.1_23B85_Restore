@interface CoordinationXPC.Delegate
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
@end

@implementation CoordinationXPC.Delegate

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  selfCopy = self;
  v9 = sub_1C46A0A44(selfCopy, connectionCopy);

  return v9 & 1;
}

@end