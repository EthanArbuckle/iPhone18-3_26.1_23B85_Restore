@interface ServerListener
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (_TtC13DeviceSharingP33_49212DB15AC1BF3DB4C737D3A7547CBB14ServerListener)init;
@end

@implementation ServerListener

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v7 = self + OBJC_IVAR____TtC13DeviceSharingP33_49212DB15AC1BF3DB4C737D3A7547CBB14ServerListener_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v8 = *(v7 + 1);
    ObjectType = swift_getObjectType();
    v10 = *(v8 + 8);
    v11 = a3;
    v12 = a4;
    v13 = self;
    v14 = v10(v11, v12, ObjectType, v8);
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