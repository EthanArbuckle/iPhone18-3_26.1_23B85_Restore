@interface ControlCenterServer
- (_TtC10ChronoCore19ControlCenterServer)init;
- (void)dealloc;
- (void)listener:(id)a3 didReceiveConnection:(id)a4 withContext:(id)a5;
@end

@implementation ControlCenterServer

- (void)listener:(id)a3 didReceiveConnection:(id)a4 withContext:(id)a5
{
  v7 = a3;
  v8 = a4;
  swift_unknownObjectRetain();
  v9 = self;
  sub_224A37A68(v8);

  swift_unknownObjectRelease();
}

- (void)dealloc
{
  v3 = *(&self->super.isa + OBJC_IVAR____TtC10ChronoCore19ControlCenterServer__listener);
  v4 = self;
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