@interface ToolServicesServer
- (_TtC10ChronoCore18ToolServicesServer)init;
- (void)listener:(id)listener didReceiveConnection:(id)connection withContext:(id)context;
@end

@implementation ToolServicesServer

- (_TtC10ChronoCore18ToolServicesServer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)listener:(id)listener didReceiveConnection:(id)connection withContext:(id)context
{
  listenerCopy = listener;
  connectionCopy = connection;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_224B765C0(connectionCopy);

  swift_unknownObjectRelease();
}

@end