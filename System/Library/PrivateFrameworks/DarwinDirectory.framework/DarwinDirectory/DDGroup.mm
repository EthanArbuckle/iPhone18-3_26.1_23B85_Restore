@interface DDGroup
+ (DDGroup)groupWithName:(id)name fullName:(id)fullName;
- (DDGroup)groupWithName:(id)name fullName:(id)fullName;
- (DDGroup)init;
- (NSSet)aliases;
- (NSSet)nestedGroups;
- (int64_t)hash;
- (void)setAliases:(id)aliases;
@end

@implementation DDGroup

- (NSSet)aliases
{
  v3 = type metadata accessor for Group();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  v7 = OBJC_IVAR___DDGroup__group;
  swift_beginAccess();
  sub_2480D1F28(self + v7, v12);
  swift_dynamicCast();
  v8 = *&v6[*(v3 + 32)];

  sub_2480D8A88(v6, type metadata accessor for Group);
  v9 = sub_2480DCABC();

  return v9;
}

- (void)setAliases:(id)aliases
{
  v4 = type metadata accessor for Group();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_2480DCACC();
  v9 = OBJC_IVAR___DDGroup__group;
  swift_beginAccess();
  sub_2480D1F28(self + v9, &v15);
  selfCopy = self;
  swift_dynamicCast();
  v11 = *(v4 + 32);
  v12 = *&v7[v11];
  *&v7[v11] = v8;

  v16 = v4;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v15);
  sub_2480D8AE8(v7, boxed_opaque_existential_0, type metadata accessor for Group);
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_0((self + v9));
  sub_2480D899C(&v15, (self + v9));
  swift_endAccess();
}

- (NSSet)nestedGroups
{
  v3 = type metadata accessor for Group();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  v7 = OBJC_IVAR___DDGroup__group;
  swift_beginAccess();
  sub_2480D1F28(self + v7, v17);
  selfCopy = self;
  swift_dynamicCast();
  v9 = *&v6[*(v3 + 36)];

  v11 = sub_2480D1304(v10);

  sub_2480D8A88(v6, type metadata accessor for Group);
  sub_2480D8168(v11);

  type metadata accessor for DDGroup(v12);
  sub_2480D8908(&qword_27EE87380, v13, type metadata accessor for DDGroup);
  v14 = sub_2480DCABC();

  return v14;
}

- (DDGroup)groupWithName:(id)name fullName:(id)fullName
{
  result = sub_2480DCC8C();
  __break(1u);
  return result;
}

- (DDGroup)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

+ (DDGroup)groupWithName:(id)name fullName:(id)fullName
{
  v4 = sub_2480DCA8C();
  v6 = v5;
  v7 = sub_2480DCA8C();
  v9 = sub_2480D8704(v4, v6, v7, v8);

  return v9;
}

- (int64_t)hash
{
  selfCopy = self;
  v3 = DDGroup.hash.getter();

  return v3;
}

@end