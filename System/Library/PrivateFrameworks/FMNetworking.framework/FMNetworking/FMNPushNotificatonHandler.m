@interface FMNPushNotificatonHandler
- (_TtC12FMNetworking25FMNPushNotificatonHandler)init;
- (void)connection:(id)a3 didReceiveMessageForTopic:(id)a4 userInfo:(id)a5;
- (void)connection:(id)a3 didReceivePublicToken:(id)a4;
- (void)connection:(id)a3 didReceiveToken:(id)a4 forTopic:(id)a5 identifier:(id)a6;
- (void)dealloc;
@end

@implementation FMNPushNotificatonHandler

- (void)dealloc
{
  v3 = *(&self->super.isa + OBJC_IVAR____TtC12FMNetworking25FMNPushNotificatonHandler__apsConnection);
  if (v3)
  {
    *(&self->super.isa + OBJC_IVAR____TtC12FMNetworking25FMNPushNotificatonHandler__apsConnection) = 0;
    v4 = self;
    [v3 shutdown];
  }

  else
  {
    v5 = self;
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

- (void)connection:(id)a3 didReceivePublicToken:(id)a4
{
  if (a4)
  {
    v6 = a3;
    v7 = self;
    v8 = a4;
    v9 = sub_24A8BB024();
    v11 = v10;
  }

  else
  {
    v12 = a3;
    v13 = self;
    v9 = 0;
    v11 = 0xF000000000000000;
  }

  sub_24A8B5F3C();
  sub_24A88C814(v9, v11);
}

- (void)connection:(id)a3 didReceiveToken:(id)a4 forTopic:(id)a5 identifier:(id)a6
{
  v8 = a4;
  if (a4)
  {
    v10 = a3;
    v11 = a5;
    v12 = a6;
    v13 = self;
    v14 = v8;
    v8 = sub_24A8BB024();
    v16 = v15;

    if (a5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v17 = a3;
    v18 = a5;
    v19 = a6;
    v20 = self;
    v16 = 0xF000000000000000;
    if (a5)
    {
LABEL_3:
      sub_24A8BB254();

      if (!a6)
      {
        goto LABEL_7;
      }

      goto LABEL_4;
    }
  }

  if (a6)
  {
LABEL_4:
    sub_24A8BB254();
  }

LABEL_7:
  sub_24A8B62F0();

  sub_24A88C814(v8, v16);
}

- (void)connection:(id)a3 didReceiveMessageForTopic:(id)a4 userInfo:(id)a5
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
  v10 = self;

  v9 = sub_24A8BB464();
  sub_24A8BB3D4();
  sub_24A8BB0A4();
}

@end