@interface DaemonController
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (DaemonController)init;
- (void)start;
@end

@implementation DaemonController

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  selfCopy = self;
  v9 = DaemonController.listener(_:shouldAcceptNewConnection:)(listenerCopy, connectionCopy);

  return v9;
}

- (DaemonController)init
{
  sharedSessionWithNoUrlCache = [objc_opt_self() sharedSessionWithNoUrlCache];
  urlSession = [sharedSessionWithNoUrlCache urlSession];

  v4 = objc_allocWithZone(type metadata accessor for DaemonController());
  v5 = DaemonController.init(session:)(urlSession);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v5;
}

- (void)start
{
  selfCopy = self;
  sub_1DF53D14C();
}

@end