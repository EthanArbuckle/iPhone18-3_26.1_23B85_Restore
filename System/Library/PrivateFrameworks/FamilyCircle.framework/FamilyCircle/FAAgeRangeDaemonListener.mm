@interface FAAgeRangeDaemonListener
+ (id)createAndReturnError:(id *)error;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (FAAgeRangeDaemonListener)init;
@end

@implementation FAAgeRangeDaemonListener

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  selfCopy = self;
  v9 = sub_100026EFC(connectionCopy);

  return v9 & 1;
}

+ (id)createAndReturnError:(id *)error
{
  v3 = objc_allocWithZone(type metadata accessor for AgeRangeDaemonListener());
  v4 = sub_100026624(sub_100026A9C, 0);

  return v4;
}

- (FAAgeRangeDaemonListener)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end