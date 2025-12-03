@interface SysdiagnoseXPC.Delegate
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
@end

@implementation SysdiagnoseXPC.Delegate

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  selfCopy = self;
  v9 = sub_1C4B7EB8C(selfCopy, connectionCopy);

  return v9 & 1;
}

@end