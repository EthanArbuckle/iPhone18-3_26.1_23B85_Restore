@interface APNSManager.PushDelegateTrampoline
- (_TtCC19FindMyDaemonSupport11APNSManagerP33_69672C9E20C2D053F65B88CE8A65B96022PushDelegateTrampoline)init;
- (void)connection:(id)a3 channelSubscriptionsFailedWithFailures:(id)a4;
- (void)connection:(id)a3 didChangeConnectedStatus:(BOOL)a4;
- (void)connection:(id)a3 didReceiveIncomingMessage:(id)a4;
- (void)connection:(id)a3 didReceivePublicToken:(id)a4;
- (void)connection:(id)a3 didReceiveToken:(id)a4 forInfo:(id)a5;
- (void)connection:(id)a3 didReceiveToken:(id)a4 forTopic:(id)a5 identifier:(id)a6;
- (void)connectionDidReconnect:(id)a3;
@end

@implementation APNSManager.PushDelegateTrampoline

- (void)connection:(id)a3 didReceivePublicToken:(id)a4
{
  v21 = self;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE620, &qword_24AE860B0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v20 - v8;
  v10 = a3;
  v11 = v21;
  if (a4)
  {
    v12 = a4;
    a4 = sub_24AE83E40();
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
      v19[5] = a4;
      v19[6] = v14;
      sub_24AE60350(a4, v14);
      sub_24AE6E000(0, 0, v9, &unk_24AE86408, v19);

      sub_24AE60200(a4, v14);
    }
  }

  else
  {
    sub_24AE60200(a4, v14);

    v17 = v21;
  }
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
    v8 = sub_24AE83E40();
    v16 = v15;

    if (a5)
    {
      goto LABEL_3;
    }

LABEL_6:
    v17 = 0;
    v19 = 0;
    if (a6)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v23 = a3;
  v24 = a5;
  v25 = a6;
  v26 = self;
  v16 = 0xF000000000000000;
  if (!a5)
  {
    goto LABEL_6;
  }

LABEL_3:
  v17 = sub_24AE83FB0();
  v19 = v18;

  if (a6)
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
  sub_24AE5FA1C(v8, v16, v17, v19, v20, v22);

  sub_24AE60200(v8, v16);
}

- (void)connection:(id)a3 didReceiveToken:(id)a4 forInfo:(id)a5
{
  if (a4)
  {
    v8 = a3;
    v9 = a5;
    v10 = self;
    v11 = a4;
    v12 = sub_24AE83E40();
    v14 = v13;
  }

  else
  {
    v15 = a3;
    v16 = a5;
    v17 = self;
    v12 = 0;
    v14 = 0xF000000000000000;
  }

  sub_24AE5FBD0(v12, v14, a5);
  sub_24AE60200(v12, v14);
}

- (void)connection:(id)a3 didReceiveIncomingMessage:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_24AE5FD48(a4);
}

- (void)connection:(id)a3 didChangeConnectedStatus:(BOOL)a4
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
    *(v12 + 40) = a4;
    sub_24AE6E000(0, 0, v8, &unk_24AE863A0, v12);
  }
}

- (void)connectionDidReconnect:(id)a3
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

- (void)connection:(id)a3 channelSubscriptionsFailedWithFailures:(id)a4
{
  if (a4)
  {
    sub_24AE5FF5C(0, &unk_27EFBE828, 0x277CEEA08);
    sub_24AE840A0();
  }

  v6 = a3;
  v7 = self;
  sub_24AE5FE6C("NOT IMPLEMENTED: channelSubscriptionsFailedWith:");
}

- (_TtCC19FindMyDaemonSupport11APNSManagerP33_69672C9E20C2D053F65B88CE8A65B96022PushDelegateTrampoline)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end