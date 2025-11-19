@interface DBDefaultUISyncSessionDelegate
- (DBUISyncSessionEventDelegate)eventDelegate;
- (_TtC9DashBoard30DBDefaultUISyncSessionDelegate)init;
- (_TtC9DashBoard30DBDefaultUISyncSessionDelegate)initWithUISyncSession:(id)a3;
- (void)didConnect;
- (void)didReceiveData:(id)a3;
- (void)didReset;
@end

@implementation DBDefaultUISyncSessionDelegate

- (DBUISyncSessionEventDelegate)eventDelegate
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (_TtC9DashBoard30DBDefaultUISyncSessionDelegate)initWithUISyncSession:(id)a3
{
  swift_unknownObjectWeakInit();
  *(self + OBJC_IVAR____TtC9DashBoard30DBDefaultUISyncSessionDelegate_uisyncSession) = a3;
  v10.receiver = self;
  v10.super_class = type metadata accessor for DBDefaultUISyncSessionDelegate();
  v5 = a3;
  v6 = [(DBDefaultUISyncSessionDelegate *)&v10 init];
  v7 = *((*MEMORY[0x277D85000] & *v5) + 0x138);
  v8 = v6;
  v7(v6);

  return v8;
}

- (void)didConnect
{
  v2 = self;
  DBDefaultUISyncSessionDelegate.didConnect()();
}

- (void)didReset
{
  v2 = self;
  DBDefaultUISyncSessionDelegate.didReset()();
}

- (void)didReceiveData:(id)a3
{
  v4 = a3;
  v8 = self;
  v5 = sub_2483811B0();
  v7 = v6;

  DBDefaultUISyncSessionDelegate.didReceiveData(_:)(v5, v7);
  sub_24823BD70(v5, v7);
}

- (_TtC9DashBoard30DBDefaultUISyncSessionDelegate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end