@interface APNSManager.PushDelegateTrampoline
- (_TtCC19FindMyDaemonSupport11APNSManagerP33_69672C9E20C2D053F65B88CE8A65B96022PushDelegateTrampoline)init;
- (void)connection:(id)connection channelSubscriptionsFailedWithFailures:(id)failures;
- (void)connection:(id)connection didChangeConnectedStatus:(BOOL)status;
- (void)connection:(id)connection didReceiveIncomingMessage:(id)message;
- (void)connection:(id)connection didReceivePublicToken:(id)token;
- (void)connection:(id)connection didReceiveToken:(id)token forInfo:(id)info;
- (void)connection:(id)connection didReceiveToken:(id)token forTopic:(id)topic identifier:(id)identifier;
- (void)connectionDidReconnect:(id)reconnect;
@end

@implementation APNSManager.PushDelegateTrampoline

- (void)connection:(id)connection didReceivePublicToken:(id)token
{
  selfCopy = self;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE620, &qword_24AE860B0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v20 - v8;
  connectionCopy = connection;
  v11 = selfCopy;
  if (token)
  {
    tokenCopy = token;
    token = sub_24AE83E40();
    v14 = v13;
  }

  else
  {
    v14 = 0xF000000000000000;
  }

  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    if (v14 >> 60 == 15)
    {
    }

    else
    {
      v18 = sub_24AE84120();
      (*(*(v18 - 8) + 56))(v9, 1, 1, v18);
      v19 = swift_allocObject();
      v19[2] = 0;
      v19[3] = 0;
      v19[4] = v16;
      v19[5] = token;
      v19[6] = v14;
      sub_24AE60350(token, v14);
      sub_24AE6E000(0, 0, v9, &unk_24AE86408, v19);

      sub_24AE60200(token, v14);
    }
  }

  else
  {
    sub_24AE60200(token, v14);

    v17 = selfCopy;
  }
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
    tokenCopy = sub_24AE83E40();
    v16 = v15;

    if (topic)
    {
      goto LABEL_3;
    }

LABEL_6:
    v17 = 0;
    v19 = 0;
    if (identifier)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  connectionCopy2 = connection;
  topicCopy2 = topic;
  identifierCopy2 = identifier;
  selfCopy2 = self;
  v16 = 0xF000000000000000;
  if (!topic)
  {
    goto LABEL_6;
  }

LABEL_3:
  v17 = sub_24AE83FB0();
  v19 = v18;

  if (identifier)
  {
LABEL_4:
    v20 = sub_24AE83FB0();
    v22 = v21;

    goto LABEL_8;
  }

LABEL_7:
  v20 = 0;
  v22 = 0;
LABEL_8:
  sub_24AE5FA1C(tokenCopy, v16, v17, v19, v20, v22);

  sub_24AE60200(tokenCopy, v16);
}

- (void)connection:(id)connection didReceiveToken:(id)token forInfo:(id)info
{
  if (token)
  {
    connectionCopy = connection;
    infoCopy = info;
    selfCopy = self;
    tokenCopy = token;
    v12 = sub_24AE83E40();
    v14 = v13;
  }

  else
  {
    connectionCopy2 = connection;
    infoCopy2 = info;
    selfCopy2 = self;
    v12 = 0;
    v14 = 0xF000000000000000;
  }

  sub_24AE5FBD0(v12, v14, info);
  sub_24AE60200(v12, v14);
}

- (void)connection:(id)connection didReceiveIncomingMessage:(id)message
{
  connectionCopy = connection;
  messageCopy = message;
  selfCopy = self;
  sub_24AE5FD48(message);
}

- (void)connection:(id)connection didChangeConnectedStatus:(BOOL)status
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE620, &qword_24AE860B0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v13 - v7;
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v11 = sub_24AE84120();
    (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
    v12 = swift_allocObject();
    *(v12 + 16) = 0;
    *(v12 + 24) = 0;
    *(v12 + 32) = v10;
    *(v12 + 40) = status;
    sub_24AE6E000(0, 0, v8, &unk_24AE863A0, v12);
  }
}

- (void)connectionDidReconnect:(id)reconnect
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE620, &qword_24AE860B0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v11 - v5;
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = sub_24AE84120();
    (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
    v10 = swift_allocObject();
    v10[2] = 0;
    v10[3] = 0;
    v10[4] = v8;
    sub_24AE6E000(0, 0, v6, &unk_24AE86378, v10);
  }
}

- (void)connection:(id)connection channelSubscriptionsFailedWithFailures:(id)failures
{
  if (failures)
  {
    sub_24AE5FF5C(0, &unk_27EFBE828, 0x277CEEA08);
    sub_24AE840A0();
  }

  connectionCopy = connection;
  selfCopy = self;
  sub_24AE5FE6C("NOT IMPLEMENTED: channelSubscriptionsFailedWith:");
}

- (_TtCC19FindMyDaemonSupport11APNSManagerP33_69672C9E20C2D053F65B88CE8A65B96022PushDelegateTrampoline)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end