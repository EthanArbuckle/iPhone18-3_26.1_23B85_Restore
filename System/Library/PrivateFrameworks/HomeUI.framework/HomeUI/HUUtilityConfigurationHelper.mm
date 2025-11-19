@interface HUUtilityConfigurationHelper
- (HUUtilityConfigurationHelper)init;
- (NSArray)fields;
- (NSArray)sections;
- (NSString)logoURL;
- (NSString)name;
- (NSURL)OAuthURL;
- (void)isTAFEnabledWithCompletionHandler:(id)a3;
@end

@implementation HUUtilityConfigurationHelper

- (NSArray)fields
{
  type metadata accessor for HUTAFField();
  sub_20D5663C8();
  v2 = sub_20D567A58();

  return v2;
}

- (NSString)name
{
  v2 = self;
  sub_20D564C08();
  if (!v3)
  {
    sub_20D564BE8();
  }

  v4 = sub_20D5677F8();

  return v4;
}

- (NSURL)OAuthURL
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81CDF0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v13 - v4;
  v6 = self;
  sub_20D564BF8();

  v7 = sub_20D5636B8();
  v8 = *(v7 - 8);
  v9 = (*(v8 + 48))(v5, 1, v7);
  v10 = 0;
  if (v9 != 1)
  {
    v11 = sub_20D563678();
    (*(v8 + 8))(v5, v7);
    v10 = v11;
  }

  return v10;
}

- (NSString)logoURL
{
  v2 = self;
  v3 = sub_20D564BD8();
  v4 = sub_20D564B98();

  sub_20D564D28();
  v5 = sub_20D5677F8();

  return v5;
}

- (NSArray)sections
{
  v2 = self;
  UtilityConfigurationHelper.sections.getter();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C820E30);
  v3 = sub_20D567A58();

  return v3;
}

- (void)isTAFEnabledWithCompletionHandler:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C610);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(a3);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_20D567C58();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_20D5C5408;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_20D5C5200;
  v12[5] = v11;
  v13 = self;
  sub_20D11C1C8(0, 0, v7, &unk_20D5BCD00, v12);
}

- (HUUtilityConfigurationHelper)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end