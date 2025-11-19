@interface NoOpUserDefaults
- (_TtC18CosmeticAssessmentP33_BE684D266D0968A7C25A12883B94DB4416NoOpUserDefaults)initWithSuiteName:(id)a3;
- (void)setObject:(id)a3 forKey:(id)a4;
- (void)setURL:(id)a3 forKey:(id)a4;
@end

@implementation NoOpUserDefaults

- (void)setObject:(id)a3 forKey:(id)a4
{
  if (a3)
  {
    swift_unknownObjectRetain();
    sub_247D20238();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v4, 0, sizeof(v4));
  }

  sub_247C27100(v4, &unk_27EE63300);
}

- (void)setURL:(id)a3 forKey:(id)a4
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63220);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v10 - v6;
  if (a3)
  {
    sub_247D1EDD8();
    v8 = sub_247D1EE08();
    (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  }

  else
  {
    v9 = sub_247D1EE08();
    (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  }

  sub_247C27100(v7, &qword_27EE63220);
}

- (_TtC18CosmeticAssessmentP33_BE684D266D0968A7C25A12883B94DB4416NoOpUserDefaults)initWithSuiteName:(id)a3
{
  ObjectType = swift_getObjectType();
  if (a3)
  {
    sub_247D1FBE8();
    a3 = sub_247D1FBB8();
  }

  v8.receiver = self;
  v8.super_class = ObjectType;
  v6 = [(NoOpUserDefaults *)&v8 initWithSuiteName:a3];

  if (v6)
  {
  }

  return v6;
}

@end