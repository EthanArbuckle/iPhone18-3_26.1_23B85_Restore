@interface ControlCenterServer
- (_TtC10ChronoCore19ControlCenterServer)init;
- (void)dealloc;
- (void)listener:(id)listener didReceiveConnection:(id)connection withContext:(id)context;
@end

@implementation ControlCenterServer

- (void)listener:(id)listener didReceiveConnection:(id)connection withContext:(id)context
{
  listenerCopy = listener;
  connectionCopy = connection;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_224A37A68(connectionCopy);

  swift_unknownObjectRelease();
}

- (void)dealloc
{
  v3 = *(&self->super.isa + OBJC_IVAR____TtC10ChronoCore19ControlCenterServer__listener);
  selfCopy = self;
  if (v3)
  {
    [v3 invalidate];
  }

  v5.receiver = self;
  v5.super_class = type metadata accessor for ControlCenterServer();
  [(ControlCenterServer *)&v5 dealloc];
}

- (_TtC10ChronoCore19ControlCenterServer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end