@interface CKSQLBackingStore
+ (NSURL)directory;
+ (void)setDirectory:(id)directory;
- (_TtC13CoreKnowledge17CKSQLBackingStore)initWithName:(id)name;
@end

@implementation CKSQLBackingStore

- (_TtC13CoreKnowledge17CKSQLBackingStore)initWithName:(id)name
{
  v4 = sub_1C86F8EFC();
  sub_1C86A1D30(v4, v5);
  return self;
}

+ (NSURL)directory
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2AD9B8);
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = &v10 - v4;
  if (qword_1EC2AD758 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v2, qword_1EC2AEFB0);
  swift_beginAccess();
  sub_1C86A51A8(v6, v5);
  v7 = sub_1C86F8C1C();
  v8 = 0;
  if (__swift_getEnumTagSinglePayload(v5, 1, v7) != 1)
  {
    v8 = sub_1C86F8BCC();
    (*(*(v7 - 8) + 8))(v5, v7);
  }

  return v8;
}

+ (void)setDirectory:(id)directory
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2AD9B8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v11 - v6;
  if (directory)
  {
    sub_1C86F8BFC();
    v8 = sub_1C86F8C1C();
    v9 = 0;
  }

  else
  {
    v8 = sub_1C86F8C1C();
    v9 = 1;
  }

  __swift_storeEnumTagSinglePayload(v7, v9, 1, v8);
  if (qword_1EC2AD758 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v4, qword_1EC2AEFB0);
  swift_beginAccess();
  sub_1C86A50D8(v7, v10);
  swift_endAccess();
  sub_1C86A5148(v7, &qword_1EC2AD9B8);
}

@end