@interface ConversationChangeNotifier
- (_TtC24FaceTimeNotificationCore26ConversationChangeNotifier)init;
- (void)conversationManager:(id)a3 activeRemoteParticipantsChangedForConversation:(id)a4;
@end

@implementation ConversationChangeNotifier

- (void)conversationManager:(id)a3 activeRemoteParticipantsChangedForConversation:(id)a4
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC24FaceTimeNotificationCore26ConversationChangeNotifier_activeRemoteParticipantsChangedPublisher);
  v5 = self;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82AE0, &qword_24AA00CD0);
  sub_24A9DC39C();
  sub_24A9FEAF0();
}

- (_TtC24FaceTimeNotificationCore26ConversationChangeNotifier)init
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC24FaceTimeNotificationCore26ConversationChangeNotifier_activeRemoteParticipantsChangedPublisher;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82AE0, &qword_24AA00CD0);
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  *(&self->super.isa + v4) = sub_24A9FEAD0();
  v9.receiver = self;
  v9.super_class = ObjectType;
  return [(ConversationChangeNotifier *)&v9 init];
}

@end