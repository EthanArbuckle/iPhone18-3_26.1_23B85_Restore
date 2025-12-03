@interface WidgetRendererServer
- (_TtC10ChronoCore20WidgetRendererServer)init;
- (void)dealloc;
- (void)listener:(id)listener didReceiveConnection:(id)connection withContext:(id)context;
@end

@implementation WidgetRendererServer

- (void)listener:(id)listener didReceiveConnection:(id)connection withContext:(id)context
{
  listenerCopy = listener;
  connectionCopy = connection;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_224A6A0E0(connectionCopy);

  swift_unknownObjectRelease();
}

- (void)dealloc
{
  v3 = *(&self->super.isa + OBJC_IVAR____TtC10ChronoCore20WidgetRendererServer__listener);
  selfCopy = self;
  if (v3)
  {
    [v3 invalidate];
  }

  v5.receiver = self;
  v5.super_class = type metadata accessor for WidgetRendererServer();
  [(WidgetRendererServer *)&v5 dealloc];
}

- (_TtC10ChronoCore20WidgetRendererServer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end