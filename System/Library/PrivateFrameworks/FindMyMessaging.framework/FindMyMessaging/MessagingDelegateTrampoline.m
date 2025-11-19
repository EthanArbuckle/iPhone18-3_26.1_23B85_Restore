@interface MessagingDelegateTrampoline
- (_TtC15FindMyMessaging27MessagingDelegateTrampoline)init;
- (void)service:(id)a3 account:(id)a4 identifier:(id)a5 didSendWithSuccess:(BOOL)a6 error:(id)a7;
- (void)service:(id)a3 account:(id)a4 identifier:(id)a5 fromID:(id)a6 hasBeenDeliveredWithContext:(id)a7;
- (void)service:(id)a3 account:(id)a4 incomingData:(id)a5 fromID:(id)a6 context:(id)a7;
- (void)service:(id)a3 account:(id)a4 incomingMessage:(id)a5 fromID:(id)a6 context:(id)a7;
- (void)service:(id)a3 account:(id)a4 incomingResourceAtURL:(id)a5 metadata:(id)a6 fromID:(id)a7 context:(id)a8;
- (void)service:(id)a3 account:(id)a4 inviteReceivedForSession:(id)a5 fromID:(id)a6 withContext:(id)a7;
- (void)service:(id)a3 activeAccountsChanged:(id)a4;
@end

@implementation MessagingDelegateTrampoline

- (void)service:(id)a3 account:(id)a4 incomingData:(id)a5 fromID:(id)a6 context:(id)a7
{
  v9 = a5;
  if (a5)
  {
    v12 = a3;
    v13 = a4;
    v14 = a6;
    v15 = a7;
    v16 = self;
    v17 = v9;
    v9 = sub_24AF3517C();
    v19 = v18;

    if (a6)
    {
LABEL_3:
      v20 = sub_24AF353AC();
      v22 = v21;

      goto LABEL_6;
    }
  }

  else
  {
    v23 = a3;
    v24 = a4;
    v25 = a6;
    v26 = a7;
    v27 = self;
    v19 = 0xF000000000000000;
    if (a6)
    {
      goto LABEL_3;
    }
  }

  v20 = 0;
  v22 = 0;
LABEL_6:
  sub_24AF2A87C(a3, a4, v9, v19, v20, v22, a7);

  sub_24AF11EB0(v9, v19);
}

- (void)service:(id)a3 account:(id)a4 incomingResourceAtURL:(id)a5 metadata:(id)a6 fromID:(id)a7 context:(id)a8
{
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EFC11D0, &qword_24AF3A970);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v27 - v17;
  if (a5)
  {
    sub_24AF3512C();
    v19 = sub_24AF3513C();
    (*(*(v19 - 8) + 56))(v18, 0, 1, v19);
  }

  else
  {
    v20 = sub_24AF3513C();
    (*(*(v20 - 8) + 56))(v18, 1, 1, v20);
  }

  if (a6)
  {
    a6 = sub_24AF352FC();
  }

  if (a7)
  {
    v21 = sub_24AF353AC();
    a7 = v22;
  }

  else
  {
    v21 = 0;
  }

  v23 = a3;
  v24 = a4;
  v25 = a8;
  v26 = self;
  sub_24AF2B978(v23, v24, v18, a6, v21, a7, v25);

  sub_24AEE2E10(v18, &unk_27EFC11D0, &qword_24AF3A970);
}

- (void)service:(id)a3 account:(id)a4 incomingMessage:(id)a5 fromID:(id)a6 context:(id)a7
{
  v8 = a6;
  if (a5)
  {
    v12 = sub_24AF352FC();
    if (v8)
    {
LABEL_3:
      v13 = sub_24AF353AC();
      v8 = v14;
      goto LABEL_6;
    }
  }

  else
  {
    v12 = 0;
    if (a6)
    {
      goto LABEL_3;
    }
  }

  v13 = 0;
LABEL_6:
  v15 = a3;
  v16 = a4;
  v17 = a7;
  v18 = self;
  sub_24AF2CD44(a3, a4, v12, v13, v8, a7);
}

- (void)service:(id)a3 account:(id)a4 identifier:(id)a5 didSendWithSuccess:(BOOL)a6 error:(id)a7
{
  v8 = a6;
  if (a5)
  {
    v12 = sub_24AF353AC();
    v14 = v13;
  }

  else
  {
    v12 = 0;
    v14 = 0;
  }

  v15 = a3;
  v16 = a4;
  v17 = a7;
  v18 = self;
  sub_24AF2DBEC(a3, a4, v12, v14, v8, a7);
}

- (void)service:(id)a3 account:(id)a4 identifier:(id)a5 fromID:(id)a6 hasBeenDeliveredWithContext:(id)a7
{
  v8 = a6;
  if (a5)
  {
    v12 = sub_24AF353AC();
    v14 = v13;
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_6:
    v15 = 0;
    if (a7)
    {
      goto LABEL_4;
    }

LABEL_7:
    memset(v23, 0, sizeof(v23));
    v20 = a3;
    v21 = a4;
    v22 = self;
    goto LABEL_8;
  }

  v12 = 0;
  v14 = 0;
  if (!a6)
  {
    goto LABEL_6;
  }

LABEL_3:
  v15 = sub_24AF353AC();
  v8 = v16;
  if (!a7)
  {
    goto LABEL_7;
  }

LABEL_4:
  v17 = a3;
  v18 = a4;
  v19 = self;
  swift_unknownObjectRetain();
  sub_24AF357BC();
  swift_unknownObjectRelease();
LABEL_8:
  sub_24AF2E9B0(a3, a4, v12, v14, v15, v8);

  sub_24AEE2E10(v23, &qword_27EFC0968, &qword_24AF381E8);
}

- (void)service:(id)a3 activeAccountsChanged:(id)a4
{
  if (a4)
  {
    v6 = sub_24AF3566C();
  }

  else
  {
    v6 = 0;
  }

  v7 = a3;
  v8 = self;
  sub_24AF2F978(a3, v6);
}

- (void)service:(id)a3 account:(id)a4 inviteReceivedForSession:(id)a5 fromID:(id)a6 withContext:(id)a7
{
  if (a6)
  {
    v12 = sub_24AF353AC();
    v14 = v13;
  }

  else
  {
    v12 = 0;
    v14 = 0;
  }

  v15 = a3;
  v16 = a4;
  v17 = a5;
  if (a7)
  {
    v18 = a7;
    v19 = self;
    a7 = sub_24AF3517C();
    v21 = v20;
  }

  else
  {
    v22 = self;
    v21 = 0xF000000000000000;
  }

  sub_24AF306D8(v15, v16, v17, v12, v14, a7, v21);
  sub_24AF11EB0(a7, v21);
}

- (_TtC15FindMyMessaging27MessagingDelegateTrampoline)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end