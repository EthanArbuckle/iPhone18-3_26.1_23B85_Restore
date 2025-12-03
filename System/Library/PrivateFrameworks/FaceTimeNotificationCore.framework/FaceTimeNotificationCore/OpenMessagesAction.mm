@interface OpenMessagesAction
- (_TtC24FaceTimeNotificationCore18OpenMessagesAction)init;
- (_TtC24FaceTimeNotificationCore18OpenMessagesAction)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation OpenMessagesAction

- (void)encodeWithCoder:(id)coder
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC24FaceTimeNotificationCore18OpenMessagesAction_declineCall);
  coderCopy = coder;
  selfCopy = self;
  v6 = sub_24A9FEC30();
  [coderCopy encodeBool:v4 forKey:v6];
}

- (_TtC24FaceTimeNotificationCore18OpenMessagesAction)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = sub_24A9FEC30();
  decodeBoolForKey_ = [coderCopy decodeBoolForKey_];

  *(&self->super.super.isa + OBJC_IVAR____TtC24FaceTimeNotificationCore18OpenMessagesAction_declineCall) = decodeBoolForKey_;
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