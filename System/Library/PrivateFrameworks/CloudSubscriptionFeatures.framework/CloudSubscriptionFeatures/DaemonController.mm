@interface DaemonController
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (DaemonController)init;
- (void)start;
@end

@implementation DaemonController

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = DaemonController.listener(_:shouldAcceptNewConnection:)(v6, v7);

  return v9;
}

- (DaemonController)init
{
  v2 = [objc_opt_self() sharedSessionWithNoUrlCache];
  v3 = [v2 urlSession];

  v4 = objc_allocWithZone(type metadata accessor for DaemonController());
  v5 = DaemonController.init(session:)(v3);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v5;
}

- (void)start
{
  v2 = self;
  sub_1DF53D14C();
}

@end