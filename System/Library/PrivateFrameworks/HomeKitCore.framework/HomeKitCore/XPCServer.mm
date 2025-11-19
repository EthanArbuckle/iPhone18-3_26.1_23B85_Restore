@interface XPCServer
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (_TtC11HomeKitCore9XPCServer)init;
- (void)start;
@end

@implementation XPCServer

- (_TtC11HomeKitCore9XPCServer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)start
{
  v2 = self;
  XPCServer.start()();
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_25311BA10(v7);

  return v9 & 1;
}

@end