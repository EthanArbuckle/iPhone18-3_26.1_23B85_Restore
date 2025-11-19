@interface PregnancyStateInputSignal
- (NSString)description;
- (_TtC14HealthPlatform25PregnancyStateInputSignal)init;
@end

@implementation PregnancyStateInputSignal

- (NSString)description
{
  v2 = sub_22855C85C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v9 = &v15[-v8];
  if (qword_280DEB2E0 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v2, qword_280DEB2E8);
  v11 = *(v3 + 16);
  v11(v9, v10, v2);
  v11(v7, v9, v2);
  sub_22855E19C();
  v12 = HKSensitiveLogItem();
  swift_unknownObjectRelease();
  sub_22855DA7C();
  swift_unknownObjectRelease();
  sub_22855D1BC();
  (*(v3 + 8))(v9, v2);
  v13 = sub_22855D17C();

  return v13;
}

- (_TtC14HealthPlatform25PregnancyStateInputSignal)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end