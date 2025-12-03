@interface Daemon
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
@end

@implementation Daemon

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  selfCopy = self;
  v9 = sub_100018FA0(connectionCopy);

  return v9 & 1;
}

@end