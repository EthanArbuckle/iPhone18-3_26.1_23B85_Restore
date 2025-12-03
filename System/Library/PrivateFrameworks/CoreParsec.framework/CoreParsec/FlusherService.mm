@interface FlusherService
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
@end

@implementation FlusherService

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  selfCopy = self;
  v9 = sub_100002328(selfCopy, connectionCopy);

  return v9;
}

@end