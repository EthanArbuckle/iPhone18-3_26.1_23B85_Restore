@interface FinHealthService
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
@end

@implementation FinHealthService

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  selfCopy = self;
  v9 = sub_1000062F8(selfCopy, connectionCopy);

  return v9 & 1;
}

@end