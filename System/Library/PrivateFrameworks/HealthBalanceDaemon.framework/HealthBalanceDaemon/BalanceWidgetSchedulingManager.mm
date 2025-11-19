@interface BalanceWidgetSchedulingManager
- (_TtC19HealthBalanceDaemon30BalanceWidgetSchedulingManager)init;
- (void)dealloc;
- (void)profileDidBecomeReady:(id)a3;
@end

@implementation BalanceWidgetSchedulingManager

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = *(&self->super.isa + OBJC_IVAR____TtC19HealthBalanceDaemon30BalanceWidgetSchedulingManager_changeProvider);
  v5 = *&self->widgetReloader[OBJC_IVAR____TtC19HealthBalanceDaemon30BalanceWidgetSchedulingManager_changeProvider];
  v6 = swift_getObjectType();
  v7 = *(v5 + 16);
  v8 = self;
  swift_unknownObjectRetain();
  v7(v8, &off_283BD4620, v6, v5);
  swift_unknownObjectRelease();

  v9.receiver = v8;
  v9.super_class = ObjectType;
  [(BalanceWidgetSchedulingManager *)&v9 dealloc];
}

- (void)profileDidBecomeReady:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_2288F37AC(v4);
}

- (_TtC19HealthBalanceDaemon30BalanceWidgetSchedulingManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end