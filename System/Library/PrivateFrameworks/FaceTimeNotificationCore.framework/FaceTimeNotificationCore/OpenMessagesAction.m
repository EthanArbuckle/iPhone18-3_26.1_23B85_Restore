@interface OpenMessagesAction
- (_TtC24FaceTimeNotificationCore18OpenMessagesAction)init;
- (_TtC24FaceTimeNotificationCore18OpenMessagesAction)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation OpenMessagesAction

- (void)encodeWithCoder:(id)a3
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC24FaceTimeNotificationCore18OpenMessagesAction_declineCall);
  v5 = a3;
  v7 = self;
  v6 = sub_24A9FEC30();
  [v5 encodeBool:v4 forKey:v6];
}

- (_TtC24FaceTimeNotificationCore18OpenMessagesAction)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = sub_24A9FEC30();
  v6 = [v4 decodeBoolForKey_];

  *(&self->super.super.isa + OBJC_IVAR____TtC24FaceTimeNotificationCore18OpenMessagesAction_declineCall) = v6;
  v9.receiver = self;
  v9.super_class = type metadata accessor for DownstreamAction();
  v7 = [(DownstreamAction *)&v9 init];

  return v7;
}

- (_TtC24FaceTimeNotificationCore18OpenMessagesAction)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end