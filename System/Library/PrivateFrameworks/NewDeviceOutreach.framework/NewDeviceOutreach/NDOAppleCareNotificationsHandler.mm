@interface NDOAppleCareNotificationsHandler
- (_TtC8ndoagent32NDOAppleCareNotificationsHandler)init;
- (void)handleNotification:(id)a3 forTopic:(id)a4;
- (void)performCheckIn:(id)a3 withCompletion:(id)a4;
@end

@implementation NDOAppleCareNotificationsHandler

- (void)performCheckIn:(id)a3 withCompletion:(id)a4
{
  v5 = _Block_copy(a4);
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  if (v5)
  {
    v9 = swift_allocObject();
    *(v9 + 16) = v5;
    v5 = sub_100045734;
  }

  else
  {
    v9 = 0;
  }

  v10 = self;
  NDOAppleCareNotificationsHandler.performCheck(in:withCompletion:)(v6, v8, v5, v9);
  sub_100003430(v5);
}

- (void)handleNotification:(id)a3 forTopic:(id)a4
{
  v5 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = self;
  _s8ndoagent32NDOAppleCareNotificationsHandlerC18handleNotification_8forTopicySDys11AnyHashableVypG_SStF_0(v5);
}

- (_TtC8ndoagent32NDOAppleCareNotificationsHandler)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end