@interface ActivityRendererServer
- (_TtC10ChronoCore22ActivityRendererServer)init;
- (void)dealloc;
- (void)listener:(id)listener didReceiveConnection:(id)connection withContext:(id)context;
@end

@implementation ActivityRendererServer

- (void)dealloc
{
  v3 = *(&self->super.isa + OBJC_IVAR____TtC10ChronoCore22ActivityRendererServer__listener);
  selfCopy = self;
  if (v3)
  {
    [v3 invalidate];
  }

  v5.receiver = self;
  v5.super_class = type metadata accessor for ActivityRendererServer();
  [(ActivityRendererServer *)&v5 dealloc];
}

- (_TtC10ChronoCore22ActivityRendererServer)init
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
  sub_224D1F6D0(connectionCopy);

  swift_unknownObjectRelease();
}

@end