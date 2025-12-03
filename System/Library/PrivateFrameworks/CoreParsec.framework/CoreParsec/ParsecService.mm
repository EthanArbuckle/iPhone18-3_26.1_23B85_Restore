@interface ParsecService
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
@end

@implementation ParsecService

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  selfCopy = self;
  v9 = sub_100002C28(selfCopy, connectionCopy);

  return v9 & 1;
}

@end