@interface DDQGroup
+ (NSSet)mutableGroups;
+ (id)groupWithGID:(unsigned int)a3;
+ (id)groupWithName:(id)a3;
+ (id)groupWithUUID:(id)a3;
- (DDQGroup)groupWithGID:(unsigned int)a3;
- (DDQGroup)groupWithName:(id)a3;
- (DDQGroup)init;
- (NSSet)members;
- (int64_t)hash;
@end

@implementation DDQGroup

+ (NSSet)mutableGroups
{
  v2 = _s20DarwinDirectoryQuery5GroupV13mutableGroupsShyACGvgZ_0();
  v3 = sub_248134B30(v2);

  sub_248142F2C(v3);

  type metadata accessor for DDQGroup(v4);
  sub_248137EF8(&qword_27EE8AEC8, v5, type metadata accessor for DDQGroup);
  v6 = sub_248143B90();

  return v6;
}

- (NSSet)members
{
  v3 = type metadata accessor for Group();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v15[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_248135858(self + OBJC_IVAR___DDQGroup__group, v15);
  v7 = self;
  swift_dynamicCast();
  v8 = *&v6[*(v3 + 28)];

  sub_248138234(v6, type metadata accessor for Group);
  v9 = sub_2481347B4(v8);

  sub_248142D94(v9);

  type metadata accessor for DDQUser(v10);
  sub_248137EF8(&qword_27EE8AEC0, v11, type metadata accessor for DDQUser);
  v12 = sub_248143B90();

  return v12;
}

- (DDQGroup)groupWithGID:(unsigned int)a3
{
  result = sub_248143D00();
  __break(1u);
  return result;
}

- (DDQGroup)groupWithName:(id)a3
{
  result = sub_248143D00();
  __break(1u);
  return result;
}

- (DDQGroup)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

+ (id)groupWithUUID:(id)a3
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8AEB8, &qword_2481444D0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v14 - v5;
  v7 = sub_248143B30();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_248143B00();
  static Group.with(uuid:)(v11, v6);
  v12 = sub_248137C1C(v6);
  (*(v8 + 8))(v11, v7);

  return v12;
}

+ (id)groupWithGID:(unsigned int)a3
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8AEB8, &qword_2481444D0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v10 - v6;
  static Group.with(gid:)(a3, &v10 - v6);
  v8 = sub_248137C1C(v7);

  return v8;
}

+ (id)groupWithName:(id)a3
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8AEB8, &qword_2481444D0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v11 - v5;
  v7 = sub_248143B60();
  static Group.with(name:)(v7, v8, v6);

  v9 = sub_248137C1C(v6);

  return v9;
}

- (int64_t)hash
{
  v2 = self;
  v3 = DDQGroup.hash.getter();

  return v3;
}

@end