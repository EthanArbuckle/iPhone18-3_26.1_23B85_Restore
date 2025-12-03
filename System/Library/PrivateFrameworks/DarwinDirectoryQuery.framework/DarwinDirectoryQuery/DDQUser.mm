@interface DDQUser
+ (id)userWithName:(id)name;
+ (id)userWithUID:(unsigned int)d;
+ (id)userWithUUID:(id)d;
- (DDQUser)init;
- (DDQUser)userWithName:(id)name;
- (DDQUser)userWithUID:(unsigned int)d;
- (NSString)fullName;
- (NSString)homeDirectory;
- (NSString)shell;
- (int64_t)hash;
- (unsigned)primaryGroupID;
@end

@implementation DDQUser

- (NSString)fullName
{
  v3 = type metadata accessor for User();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_248135858(self + OBJC_IVAR___DDQUser__user, v12);
  swift_dynamicCast();
  v7 = &v6[*(v3 + 28)];
  v8 = *v7;
  v9 = v7[1];

  sub_248138234(v6, type metadata accessor for User);
  v10 = sub_248143B50();

  return v10;
}

- (NSString)homeDirectory
{
  v3 = type metadata accessor for User();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_248135858(self + OBJC_IVAR___DDQUser__user, v12);
  swift_dynamicCast();
  v7 = &v6[*(v3 + 32)];
  v8 = *v7;
  v9 = v7[1];

  sub_248138234(v6, type metadata accessor for User);
  v10 = sub_248143B50();

  return v10;
}

- (unsigned)primaryGroupID
{
  v3 = type metadata accessor for User();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_248135858(self + OBJC_IVAR___DDQUser__user, v8);
  swift_dynamicCast();
  LODWORD(self) = *&v6[*(v3 + 36)];
  sub_248138234(v6, type metadata accessor for User);
  return self;
}

- (NSString)shell
{
  v3 = type metadata accessor for User();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_248135858(self + OBJC_IVAR___DDQUser__user, v12);
  swift_dynamicCast();
  v7 = &v6[*(v3 + 40)];
  v8 = *v7;
  v9 = v7[1];

  sub_248138234(v6, type metadata accessor for User);
  v10 = sub_248143B50();

  return v10;
}

- (DDQUser)userWithUID:(unsigned int)d
{
  result = sub_248143D00();
  __break(1u);
  return result;
}

- (DDQUser)userWithName:(id)name
{
  result = sub_248143D00();
  __break(1u);
  return result;
}

- (DDQUser)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

+ (id)userWithUUID:(id)d
{
  v3 = sub_248143B30();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_248143B00();
  v8 = sub_248137370(v7);
  (*(v4 + 8))(v7, v3);

  return v8;
}

+ (id)userWithUID:(unsigned int)d
{
  v3 = sub_2481375A0(d);

  return v3;
}

+ (id)userWithName:(id)name
{
  v3 = sub_248143B60();
  v5 = sub_248137798(v3, v4);

  return v5;
}

- (int64_t)hash
{
  selfCopy = self;
  v3 = DDQUser.hash.getter();

  return v3;
}

@end