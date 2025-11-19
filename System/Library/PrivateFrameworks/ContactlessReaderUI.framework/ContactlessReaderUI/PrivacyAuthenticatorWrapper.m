@interface PrivacyAuthenticatorWrapper
- (_TtC19ContactlessReaderUI27PrivacyAuthenticatorWrapper)init;
- (void)authenticator:(id)a3 didTransitionToCoachingState:(int64_t)a4;
- (void)authenticator:(id)a3 didTransitionToEvaluationStateWithEvent:(id)a4;
- (void)dealloc;
- (void)dismissPasscodeViewController;
- (void)dismissPassphraseViewController;
- (void)presentPasscodeViewController:(id)a3 completionHandler:(id)a4 reply:(id)a5;
- (void)presentPassphraseViewController:(id)a3 completionHandler:(id)a4 reply:(id)a5;
@end

@implementation PrivacyAuthenticatorWrapper

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC19ContactlessReaderUI27PrivacyAuthenticatorWrapper_authenticator;
  v5 = *(&self->super.isa + OBJC_IVAR____TtC19ContactlessReaderUI27PrivacyAuthenticatorWrapper_authenticator);
  if (v5)
  {
    v6 = ObjectType;
    v7 = self;
    [v5 invalidate];
    v8 = *(&self->super.isa + v4);
    if (v8)
    {
      [v8 setDelegate_];
      v9.receiver = v7;
      v9.super_class = v6;
      [(PrivacyAuthenticatorWrapper *)&v9 dealloc];
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

- (_TtC19ContactlessReaderUI27PrivacyAuthenticatorWrapper)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)authenticator:(id)a3 didTransitionToEvaluationStateWithEvent:(id)a4
{
  var1 = a4.var1;
  var0 = a4.var0;
  v7 = a3;
  v8 = self;
  sub_2440AF830(var0, var1);
}

- (void)authenticator:(id)a3 didTransitionToCoachingState:(int64_t)a4
{
  v6 = a3;
  v7 = self;
  sub_2440B0930(a4);
}

- (void)presentPasscodeViewController:(id)a3 completionHandler:(id)a4 reply:(id)a5
{
  v8 = _Block_copy(a4);
  v9 = _Block_copy(a5);
  v10 = v9;
  if (v8)
  {
    v11 = swift_allocObject();
    *(v11 + 16) = v8;
    v8 = sub_2440B11B8;
    if (!v10)
    {
      goto LABEL_5;
    }

    goto LABEL_3;
  }

  v11 = 0;
  if (v9)
  {
LABEL_3:
    *(swift_allocObject() + 16) = v10;
    v10 = sub_2440B11B0;
  }

LABEL_5:
  v12 = a3;
  v13 = self;
  sub_2440B0B58(a3, v8, v11);
  sub_243F7EE58(v10);
  sub_243F7EE58(v8);
}

- (void)presentPassphraseViewController:(id)a3 completionHandler:(id)a4 reply:(id)a5
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v16 - v7;
  v9 = self;
  v10 = sub_243F4E0C8();
  sub_243F5F574(v10, v8, &qword_27EDC0A50);
  v11 = sub_2440D11E0();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v8, 1, v11) == 1)
  {

    sub_243F5EED4(v8, &qword_27EDC0A50);
  }

  else
  {
    v13 = sub_243F4E2F4();
    v14 = sub_243F4E2FC();
    sub_243F4E308(v13 & 1, v9, 0xD00000000000003BLL, 0x80000002440EF4D0, v14, v15);

    (*(v12 + 8))(v8, v11);
  }
}

- (void)dismissPasscodeViewController
{
  v2 = self;
  sub_2440AF118();
}

- (void)dismissPassphraseViewController
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v13 - v4;
  v6 = self;
  v7 = sub_243F4E0C8();
  sub_243F5F574(v7, v5, &qword_27EDC0A50);
  v8 = sub_2440D11E0();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v5, 1, v8) == 1)
  {

    sub_243F5EED4(v5, &qword_27EDC0A50);
  }

  else
  {
    v10 = sub_243F4E2F4();
    v11 = sub_243F4E2FC();
    sub_243F4E308(v10 & 1, v6, 0xD000000000000021, 0x80000002440EF530, v11, v12);

    (*(v9 + 8))(v5, v8);
  }
}

@end