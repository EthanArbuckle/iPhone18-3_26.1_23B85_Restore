@interface FMNPushNotificatonHandler
- (_TtC12FMNetworking25FMNPushNotificatonHandler)init;
- (void)connection:(id)connection didReceiveMessageForTopic:(id)topic userInfo:(id)info;
- (void)connection:(id)connection didReceivePublicToken:(id)token;
- (void)connection:(id)connection didReceiveToken:(id)token forTopic:(id)topic identifier:(id)identifier;
- (void)dealloc;
@end

@implementation FMNPushNotificatonHandler

- (void)dealloc
{
  v3 = *(&self->super.isa + OBJC_IVAR____TtC12FMNetworking25FMNPushNotificatonHandler__apsConnection);
  if (v3)
  {
    *(&self->super.isa + OBJC_IVAR____TtC12FMNetworking25FMNPushNotificatonHandler__apsConnection) = 0;
    selfCopy = self;
    [v3 shutdown];
  }

  else
  {
    selfCopy2 = self;
  }

  v6.receiver = self;
  v6.super_class = type metadata accessor for FMNPushNotificatonHandler();
  [(FMNPushNotificatonHandler *)&v6 dealloc];
}

- (_TtC12FMNetworking25FMNPushNotificatonHandler)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)connection:(id)connection didReceivePublicToken:(id)token
{
  if (token)
  {
    connectionCopy = connection;
    selfCopy = self;
    tokenCopy = token;
    v9 = sub_24A8BB024();
    v11 = v10;
  }

  else
  {
    connectionCopy2 = connection;
    selfCopy2 = self;
    v9 = 0;
    v11 = 0xF000000000000000;
  }

  sub_24A8B5F3C();
  sub_24A88C814(v9, v11);
}

- (void)connection:(id)connection didReceiveToken:(id)token forTopic:(id)topic identifier:(id)identifier
{
  tokenCopy = token;
  if (token)
  {
    connectionCopy = connection;
    topicCopy = topic;
    identifierCopy = identifier;
    selfCopy = self;
    v14 = tokenCopy;
    tokenCopy = sub_24A8BB024();
    v16 = v15;

    if (topic)
    {
      goto LABEL_3;
    }
  }

  else
  {
    connectionCopy2 = connection;
    topicCopy2 = topic;
    identifierCopy2 = identifier;
    selfCopy2 = self;
    v16 = 0xF000000000000000;
    if (topic)
    {
LABEL_3:
      sub_24A8BB254();

      if (!identifier)
      {
        goto LABEL_7;
      }

      goto LABEL_4;
    }
  }

  if (identifier)
  {
LABEL_4:
    sub_24A8BB254();
  }

LABEL_7:
  sub_24A8B62F0();

  sub_24A88C814(tokenCopy, v16);
}

- (void)connection:(id)connection didReceiveMessageForTopic:(id)topic userInfo:(id)info
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF793A0, &unk_24A8BCD90);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_24A8BC300;
  v8 = *(&self->super.isa + OBJC_IVAR____TtC12FMNetworking25FMNPushNotificatonHandler_topic);
  v7 = *&self->topic[OBJC_IVAR____TtC12FMNetworking25FMNPushNotificatonHandler_topic];
  *(v6 + 56) = MEMORY[0x277D837D0];
  *(v6 + 64) = sub_24A8897F0();
  *(v6 + 32) = v8;
  *(v6 + 40) = v7;
  sub_24A882CB8(0, &qword_2814AB000, 0x277D86200);
  selfCopy = self;

  v9 = sub_24A8BB464();
  sub_24A8BB3D4();
  sub_24A8BB0A4();
}

@end