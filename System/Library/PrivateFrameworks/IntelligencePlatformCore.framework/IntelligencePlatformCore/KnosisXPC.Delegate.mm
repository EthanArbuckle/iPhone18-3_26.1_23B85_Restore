@interface KnosisXPC.Delegate
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
@end

@implementation KnosisXPC.Delegate

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  selfCopy = self;
  sub_1C49AD390(selfCopy, connectionCopy);
  v10 = v9;

  return v10 & 1;
}

@end