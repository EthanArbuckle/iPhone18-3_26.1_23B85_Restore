@interface ServerListener
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (_TtC13DeviceSharingP33_49212DB15AC1BF3DB4C737D3A7547CBB14ServerListener)init;
@end

@implementation ServerListener

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  v7 = self + OBJC_IVAR____TtC13DeviceSharingP33_49212DB15AC1BF3DB4C737D3A7547CBB14ServerListener_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v8 = *(v7 + 1);
    ObjectType = swift_getObjectType();
    v10 = *(v8 + 8);
    listenerCopy = listener;
    connectionCopy = connection;
    selfCopy = self;
    v14 = v10(listenerCopy, connectionCopy, ObjectType, v8);
    swift_unknownObjectRelease();
  }

  else
  {
    v14 = 0;
  }

  return v14 & 1;
}

- (_TtC13DeviceSharingP33_49212DB15AC1BF3DB4C737D3A7547CBB14ServerListener)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end