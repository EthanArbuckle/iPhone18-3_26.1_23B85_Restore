@interface DBDefaultUISyncSessionDelegate
- (DBUISyncSessionEventDelegate)eventDelegate;
- (_TtC9DashBoard30DBDefaultUISyncSessionDelegate)init;
- (_TtC9DashBoard30DBDefaultUISyncSessionDelegate)initWithUISyncSession:(id)session;
- (void)didConnect;
- (void)didReceiveData:(id)data;
- (void)didReset;
@end

@implementation DBDefaultUISyncSessionDelegate

- (DBUISyncSessionEventDelegate)eventDelegate
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (_TtC9DashBoard30DBDefaultUISyncSessionDelegate)initWithUISyncSession:(id)session
{
  swift_unknownObjectWeakInit();
  *(self + OBJC_IVAR____TtC9DashBoard30DBDefaultUISyncSessionDelegate_uisyncSession) = session;
  v10.receiver = self;
  v10.super_class = type metadata accessor for DBDefaultUISyncSessionDelegate();
  sessionCopy = session;
  v6 = [(DBDefaultUISyncSessionDelegate *)&v10 init];
  v7 = *((*MEMORY[0x277D85000] & *sessionCopy) + 0x138);
  v8 = v6;
  v7(v6);

  return v8;
}

- (void)didConnect
{
  selfCopy = self;
  DBDefaultUISyncSessionDelegate.didConnect()();
}

- (void)didReset
{
  selfCopy = self;
  DBDefaultUISyncSessionDelegate.didReset()();
}

- (void)didReceiveData:(id)data
{
  dataCopy = data;
  selfCopy = self;
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