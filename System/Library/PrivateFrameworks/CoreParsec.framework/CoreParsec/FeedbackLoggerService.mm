@interface FeedbackLoggerService
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
@end

@implementation FeedbackLoggerService

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  selfCopy = self;
  v9 = sub_1000E90FC(selfCopy, connectionCopy);

  return v9;
}

@end