@interface ChronoServicesServer
- (_TtC10ChronoCore20ChronoServicesServer)init;
- (void)dealloc;
- (void)listener:(id)listener didReceiveConnection:(id)connection withContext:(id)context;
@end

@implementation ChronoServicesServer

- (void)dealloc
{
  v3 = *(&self->super.isa + OBJC_IVAR____TtC10ChronoCore20ChronoServicesServer_connectionListener);
  selfCopy = self;
  if (v3)
  {
    [v3 invalidate];
  }

  v5.receiver = self;
  v5.super_class = type metadata accessor for ChronoServicesServer();
  [(ChronoServicesServer *)&v5 dealloc];
}

- (_TtC10ChronoCore20ChronoServicesServer)init
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
  sub_224BF5A0C(connectionCopy);

  swift_unknownObjectRelease();
}

@end