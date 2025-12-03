@interface DDUser
+ (id)userWithName:(id)name fullName:(id)fullName primaryGroup:(id)group;
- (DDGroup)primaryGroup;
- (DDUser)init;
- (DDUser)userWithName:(id)name fullName:(id)fullName primaryGroup:(id)group;
- (NSSet)aliases;
- (NSSet)memberships;
- (NSString)homeDirectory;
- (NSString)shell;
- (int64_t)hash;
- (void)setAliases:(id)aliases;
- (void)setHomeDirectory:(id)directory;
- (void)setPrimaryGroup:(id)group;
- (void)setShell:(id)shell;
@end

@implementation DDUser

- (NSString)homeDirectory
{
  v3 = type metadata accessor for User();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20]();
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  v7 = OBJC_IVAR___DDUser__user;
  swift_beginAccess();
  sub_2480D1F28(self + v7, v14);
  swift_dynamicCast();
  v8 = &v6[*(v3 + 36)];
  v9 = *v8;
  v10 = *(v8 + 1);

  sub_2480D8A88(v6, type metadata accessor for User);
  v11 = sub_2480DCA7C();

  return v11;
}

- (void)setHomeDirectory:(id)directory
{
  v4 = type metadata accessor for User();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20]();
  v7 = &v16[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_2480DCA8C();
  v10 = v9;
  v11 = OBJC_IVAR___DDUser__user;
  swift_beginAccess();
  sub_2480D1F28(self + v11, &v17);
  selfCopy = self;
  swift_dynamicCast();
  v13 = &v7[*(v4 + 36)];
  v14 = v13[1];
  *v13 = v8;
  v13[1] = v10;

  v18 = v4;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v17);
  sub_2480D8AE8(v7, boxed_opaque_existential_0, type metadata accessor for User);
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_0((self + v11));
  sub_2480D899C(&v17, (self + v11));
  swift_endAccess();
}

- (DDGroup)primaryGroup
{
  selfCopy = self;
  v3 = sub_2480D06AC();

  return v3;
}

- (void)setPrimaryGroup:(id)group
{
  groupCopy = group;
  selfCopy = self;
  sub_2480D0918(groupCopy);
}

- (NSString)shell
{
  v3 = type metadata accessor for User();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  v7 = OBJC_IVAR___DDUser__user;
  swift_beginAccess();
  sub_2480D1F28(self + v7, v14);
  swift_dynamicCast();
  v8 = &v6[*(v3 + 40)];
  v9 = *v8;
  v10 = *(v8 + 1);

  sub_2480D8A88(v6, type metadata accessor for User);
  v11 = sub_2480DCA7C();

  return v11;
}

- (void)setShell:(id)shell
{
  v4 = type metadata accessor for User();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v16[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_2480DCA8C();
  v10 = v9;
  v11 = OBJC_IVAR___DDUser__user;
  swift_beginAccess();
  sub_2480D1F28(self + v11, &v17);
  selfCopy = self;
  swift_dynamicCast();
  v13 = &v7[*(v4 + 40)];
  v14 = v13[1];
  *v13 = v8;
  v13[1] = v10;

  v18 = v4;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v17);
  sub_2480D8AE8(v7, boxed_opaque_existential_0, type metadata accessor for User);
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_0((self + v11));
  sub_2480D899C(&v17, (self + v11));
  swift_endAccess();
}

- (NSSet)aliases
{
  v3 = type metadata accessor for User();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  v7 = OBJC_IVAR___DDUser__user;
  swift_beginAccess();
  sub_2480D1F28(self + v7, v12);
  swift_dynamicCast();
  v8 = *&v6[*(v3 + 48)];

  sub_2480D8A88(v6, type metadata accessor for User);
  v9 = sub_2480DCABC();

  return v9;
}

- (void)setAliases:(id)aliases
{
  v4 = type metadata accessor for User();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_2480DCACC();
  v9 = OBJC_IVAR___DDUser__user;
  swift_beginAccess();
  sub_2480D1F28(self + v9, &v15);
  selfCopy = self;
  swift_dynamicCast();
  v11 = *(v4 + 48);
  v12 = *&v7[v11];
  *&v7[v11] = v8;

  v16 = v4;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v15);
  sub_2480D8AE8(v7, boxed_opaque_existential_0, type metadata accessor for User);
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_0((self + v9));
  sub_2480D899C(&v15, (self + v9));
  swift_endAccess();
}

- (NSSet)memberships
{
  v3 = type metadata accessor for User();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  v7 = OBJC_IVAR___DDUser__user;
  swift_beginAccess();
  sub_2480D1F28(self + v7, v17);
  selfCopy = self;
  swift_dynamicCast();
  v9 = *&v6[*(v3 + 44)];

  v11 = sub_2480D1304(v10);

  sub_2480D8A88(v6, type metadata accessor for User);
  sub_2480D8168(v11);

  type metadata accessor for DDGroup(v12);
  sub_2480D8908(&qword_27EE87380, v13, type metadata accessor for DDGroup);
  v14 = sub_2480DCABC();

  return v14;
}

- (DDUser)userWithName:(id)name fullName:(id)fullName primaryGroup:(id)group
{
  result = sub_2480DCC8C();
  __break(1u);
  return result;
}

- (DDUser)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

+ (id)userWithName:(id)name fullName:(id)fullName primaryGroup:(id)group
{
  v6 = sub_2480DCA8C();
  v8 = v7;
  v9 = sub_2480DCA8C();
  v11 = v10;
  groupCopy = group;
  v13 = sub_2480D8458(v6, v8, v9, v11, groupCopy);

  return v13;
}

- (int64_t)hash
{
  v3 = type metadata accessor for User();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR___DDUser__user;
  swift_beginAccess();
  sub_2480D1F28(self + v7, v11);
  selfCopy = self;
  swift_dynamicCast();
  sub_2480DCCCC();
  User.hash(into:)(v11);
  v9 = sub_2480DCD0C();

  sub_2480D8A88(v6, type metadata accessor for User);
  return v9;
}

@end