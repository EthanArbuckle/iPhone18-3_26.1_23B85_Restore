@interface DBUISyncSession
- (BOOL)isReady;
- (BOOL)sendTransitionStart:(id)a3 description:(id)a4 error:(id *)a5;
- (_TtC9DashBoard15DBUISyncSession)init;
- (_TtC9DashBoard15DBUISyncSession)initWithChannel:(id)a3 vehicleID:(id)a4 displayID:(id)a5;
- (_TtP9DashBoard23DBUISyncSessionDelegate_)delegate;
- (void)clusterController:(id)a3 didReceivePayload:(id)a4;
- (void)dealloc;
@end

@implementation DBUISyncSession

- (BOOL)sendTransitionStart:(id)a3 description:(id)a4 error:(id *)a5
{
  v8 = sub_2483838A0();
  if (a4)
  {
    a4 = sub_248383960();
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = self;
  v12.value._countAndFlagsBits = a4;
  v12.value._object = v10;
  DBUISyncSession.sendTransitionStart(_:description:)(v8, v12);

  if (v13)
  {
    if (a5)
    {
      v14 = sub_2483810B0();

      v15 = v14;
      *a5 = v14;
    }

    else
    {
    }
  }

  return v13 == 0;
}

- (_TtP9DashBoard23DBUISyncSessionDelegate_)delegate
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (BOOL)isReady
{
  v2 = *((*MEMORY[0x277D85000] & *self) + 0x100);
  v3 = self;
  if (v2() > 2u)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_248384680();
  }

  return v4 & 1;
}

- (_TtC9DashBoard15DBUISyncSession)initWithChannel:(id)a3 vehicleID:(id)a4 displayID:(id)a5
{
  v5 = sub_248383960();
  v7 = v6;
  v8 = sub_248383960();
  v10 = v9;
  v11 = swift_unknownObjectRetain();
  return DBUISyncSession.init(channel:vehicleID:displayID:)(v11, v5, v7, v8, v10);
}

- (void)dealloc
{
  v2 = *(self + OBJC_IVAR____TtC9DashBoard15DBUISyncSession_channel);
  v3 = self;
  swift_unknownObjectRetain();

  v4 = sub_248383930();

  [v2 removeObserver:v3 forDisplayID:v4];
  swift_unknownObjectRelease();

  v5.receiver = v3;
  v5.super_class = type metadata accessor for DBUISyncSession();
  [(DBUISyncSession *)&v5 dealloc];
}

- (_TtC9DashBoard15DBUISyncSession)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)clusterController:(id)a3 didReceivePayload:(id)a4
{
  swift_unknownObjectRetain();
  v6 = a4;
  v10 = self;
  v7 = sub_2483811B0();
  v9 = v8;

  sub_24834C170();
  sub_24823BD70(v7, v9);
  swift_unknownObjectRelease();
}

@end