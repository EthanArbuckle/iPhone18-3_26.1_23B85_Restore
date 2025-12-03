@interface JSMediaTokenServiceObject
- (NSString)tokenString;
- (_TtC12GameStoreKit25JSMediaTokenServiceObject)init;
- (id)overrideToken:(id)token;
- (id)refreshToken;
- (void)resetToken;
@end

@implementation JSMediaTokenServiceObject

- (id)refreshToken
{
  selfCopy = self;
  v3 = sub_24E976F7C();

  return v3;
}

- (id)overrideToken:(id)token
{
  swift_getObjectType();
  sub_24E69A5C4(0, &qword_27F21C8C8);
  tokenCopy = token;
  v5 = sub_24F92C448();
  v6 = sub_24F92C458();

  return v6;
}

- (NSString)tokenString
{
  sub_24F929388();
  _s9JetEngine16LocalPreferencesC12GameStoreKitE03AppfG0ACvgZ_0();
  if (qword_27F210028 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222F58);
  __swift_project_value_buffer(v2, qword_27F222F30);
  sub_24F928868();

  v3 = sub_24F92B098();

  return v3;
}

- (void)resetToken
{
  sub_24F929388();
  selfCopy = self;
  _s9JetEngine16LocalPreferencesC12GameStoreKitE03AppfG0ACvgZ_0();
  if (qword_27F210028 != -1)
  {
    swift_once();
  }

  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222F58);
  v5 = __swift_project_value_buffer(v4, qword_27F222F30);
  v7[3] = v4;
  v7[4] = sub_24E979394();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v7);
  (*(*(v4 - 8) + 16))(boxed_opaque_existential_1, v5, v4);
  sub_24F929358();

  __swift_destroy_boxed_opaque_existential_1(v7);
  [*(&selfCopy->super.isa + OBJC_IVAR____TtC12GameStoreKit25JSMediaTokenServiceObject_tokenService) invalidateMediaToken];
}

- (_TtC12GameStoreKit25JSMediaTokenServiceObject)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end