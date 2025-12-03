@interface OAuthLoginManager
- (_TtC6HomeUI17OAuthLoginManager)init;
- (_TtC6HomeUI17OAuthLoginManager)initWithAuthURL:(id)l presentingContext:(id)context;
- (id)processRedirectURL:(id)l;
- (void)startAuthenticationWithPresentationContext:(id)context completion:(id)completion;
- (void)startSessionWithAuthURL:(id)l context:(id)context completion:(id)completion;
@end

@implementation OAuthLoginManager

- (_TtC6HomeUI17OAuthLoginManager)initWithAuthURL:(id)l presentingContext:(id)context
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81CDF0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v13 - v8;
  if (l)
  {
    sub_20D563698();
    v10 = sub_20D5636B8();
    (*(*(v10 - 8) + 56))(v9, 0, 1, v10);
  }

  else
  {
    v11 = sub_20D5636B8();
    (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
  }

  swift_getObjectType();
  swift_unknownObjectRetain();
  return sub_20CFD2A78(v9, context, self);
}

- (void)startSessionWithAuthURL:(id)l context:(id)context completion:(id)completion
{
  v8 = sub_20D5636B8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = _Block_copy(completion);
  sub_20D563698();
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_20CFD355C(v11, context, sub_20CFD51B0, v13, selfCopy);
  swift_unknownObjectRelease();

  (*(v9 + 8))(v11, v8);
}

- (void)startAuthenticationWithPresentationContext:(id)context completion:(id)completion
{
  v6 = _Block_copy(completion);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  swift_getObjectType();
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_20CFD2C3C(context, sub_20CFD51A8, v7, selfCopy);
  swift_unknownObjectRelease();
}

- (id)processRedirectURL:(id)l
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81CDF0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11 - v5;
  if (l)
  {
    sub_20D563698();
    v7 = sub_20D5636B8();
    (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  }

  else
  {
    v8 = sub_20D5636B8();
    (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  }

  sub_20CFD3EBC(v6);
  sub_20CEF928C(v6, &unk_27C81CDF0);
  v9 = sub_20D567738();

  return v9;
}

- (_TtC6HomeUI17OAuthLoginManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end