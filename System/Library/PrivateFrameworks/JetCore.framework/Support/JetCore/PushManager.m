@interface PushManager
- (_TtC13jetpackassetd11PushManager)init;
- (void)connection:(id)a3 channelSubscriptionsFailedWithFailures:(id)a4;
- (void)connection:(id)a3 didChangeConnectedStatus:(BOOL)a4;
- (void)connection:(id)a3 didReceiveIncomingMessage:(id)a4;
- (void)connection:(id)a3 didReceivePublicToken:(id)a4;
@end

@implementation PushManager

- (void)connection:(id)a3 didReceivePublicToken:(id)a4
{
  if (a4)
  {
    v4 = a4;
    v5 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10001FA78(v5, v6);
  }

  if (qword_1000A4D48 != -1)
  {
    swift_once();
  }

  TaskLocal.get()();
  sub_100001CC0(v10, v10[3]);
  sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
  v7 = *(type metadata accessor for LogMessage() - 8);
  v8 = *(v7 + 72);
  v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.init(stringLiteral:)();
  Logger.debug(_:)();

  sub_100001D4C(v10);
}

- (void)connection:(id)a3 didReceiveIncomingMessage:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_10003E15C(v7);
}

- (void)connection:(id)a3 channelSubscriptionsFailedWithFailures:(id)a4
{
  v4 = a4;
  if (a4)
  {
    sub_100040154(0, &qword_1000A5668, APSChannelSubscriptionFailure_ptr);
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v7 = a3;
  v8 = self;
  sub_10003EC74(v4);
}

- (void)connection:(id)a3 didChangeConnectedStatus:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = self;
  sub_10003F154(v4);
}

- (_TtC13jetpackassetd11PushManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end