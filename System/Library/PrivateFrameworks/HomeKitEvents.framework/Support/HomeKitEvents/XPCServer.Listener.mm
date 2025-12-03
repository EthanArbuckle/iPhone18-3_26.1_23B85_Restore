@interface XPCServer.Listener
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (_TtCC11homeeventsd9XPCServer8Listener)init;
@end

@implementation XPCServer.Listener

- (_TtCC11homeeventsd9XPCServer8Listener)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    connectionCopy = connection;
    selfCopy = self;
    v10 = sub_10004CCC0(selfCopy, connectionCopy, v7);
    swift_unknownObjectRelease();
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

@end