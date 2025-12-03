@interface PushManager
- (_TtC13jetpackassetd11PushManager)init;
- (void)connection:(id)connection channelSubscriptionsFailedWithFailures:(id)failures;
- (void)connection:(id)connection didChangeConnectedStatus:(BOOL)status;
- (void)connection:(id)connection didReceiveIncomingMessage:(id)message;
- (void)connection:(id)connection didReceivePublicToken:(id)token;
@end

@implementation PushManager

- (void)connection:(id)connection didReceivePublicToken:(id)token
{
  if (token)
  {
    tokenCopy = token;
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

- (void)connection:(id)connection didReceiveIncomingMessage:(id)message
{
  connectionCopy = connection;
  messageCopy = message;
  selfCopy = self;
  sub_10003E15C(messageCopy);
}

- (void)connection:(id)connection channelSubscriptionsFailedWithFailures:(id)failures
{
  failuresCopy = failures;
  if (failures)
  {
    sub_100040154(0, &qword_1000A5668, APSChannelSubscriptionFailure_ptr);
    failuresCopy = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  connectionCopy = connection;
  selfCopy = self;
  sub_10003EC74(failuresCopy);
}

- (void)connection:(id)connection didChangeConnectedStatus:(BOOL)status
{
  statusCopy = status;
  connectionCopy = connection;
  selfCopy = self;
  sub_10003F154(statusCopy);
}

- (_TtC13jetpackassetd11PushManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end