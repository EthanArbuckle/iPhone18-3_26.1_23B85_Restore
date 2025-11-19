@interface ControlsServer
- (_TtC10ChronoCore14ControlsServer)init;
- (void)dealloc;
- (void)listener:(id)a3 didReceiveConnection:(id)a4 withContext:(id)a5;
@end

@implementation ControlsServer

- (void)dealloc
{
  v3 = *(&self->super.isa + OBJC_IVAR____TtC10ChronoCore14ControlsServer__listener);
  v4 = self;
  if (v3)
  {
    [v3 invalidate];
  }

  v5.receiver = self;
  v5.super_class = type metadata accessor for ControlsServer();
  [(ControlsServer *)&v5 dealloc];
}

- (_TtC10ChronoCore14ControlsServer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)listener:(id)a3 didReceiveConnection:(id)a4 withContext:(id)a5
{
  v7 = a3;
  v8 = a4;
  swift_unknownObjectRetain();
  v9 = self;
  sub_224D0AE80(v8);

  swift_unknownObjectRelease();
}

@end