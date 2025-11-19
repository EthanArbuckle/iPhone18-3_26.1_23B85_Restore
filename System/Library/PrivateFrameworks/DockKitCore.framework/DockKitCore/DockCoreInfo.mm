@interface DockCoreInfo
- (NSString)name;
- (NSUUID)identifier;
- (_TtC11DockKitCore12DockCoreInfo)init;
- (_TtC11DockKitCore12DockCoreInfo)initWithCoder:(id)a3;
- (_TtC11DockKitCore12DockCoreInfo)initWithType:(int64_t)a3 name:(id)a4 identifier:(id)a5;
- (int64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DockCoreInfo

- (NSString)name
{

  v2 = sub_224627CB8();

  return v2;
}

- (NSUUID)identifier
{
  v3 = sub_224627188();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6, self + OBJC_IVAR____TtC11DockKitCore12DockCoreInfo_identifier, v3);
  v7 = sub_224627148();
  (*(v4 + 8))(v6, v3);

  return v7;
}

- (_TtC11DockKitCore12DockCoreInfo)init
{
  ObjectType = swift_getObjectType();
  v4 = sub_224627188();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(self + OBJC_IVAR____TtC11DockKitCore12DockCoreInfo_type) = 2;
  v8 = (self + OBJC_IVAR____TtC11DockKitCore12DockCoreInfo_name);
  *v8 = 0;
  v8[1] = 0xE000000000000000;
  sub_224627178();
  (*(v5 + 32))(self + OBJC_IVAR____TtC11DockKitCore12DockCoreInfo_identifier, v7, v4);
  v10.receiver = self;
  v10.super_class = ObjectType;
  return [(DockCoreInfo *)&v10 init];
}

- (_TtC11DockKitCore12DockCoreInfo)initWithType:(int64_t)a3 name:(id)a4 identifier:(id)a5
{
  ObjectType = swift_getObjectType();
  v8 = sub_224627188();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_224627CD8();
  v14 = v13;
  sub_224627168();
  *(self + OBJC_IVAR____TtC11DockKitCore12DockCoreInfo_type) = a3;
  v15 = (self + OBJC_IVAR____TtC11DockKitCore12DockCoreInfo_name);
  *v15 = v12;
  v15[1] = v14;
  (*(v9 + 16))(self + OBJC_IVAR____TtC11DockKitCore12DockCoreInfo_identifier, v11, v8);
  v18.receiver = self;
  v18.super_class = ObjectType;
  v16 = [(DockCoreInfo *)&v18 init];
  (*(v9 + 8))(v11, v8);
  return v16;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  DockCoreInfo.encode(with:)(v4);
}

- (_TtC11DockKitCore12DockCoreInfo)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = sub_22452DA80();

  return v4;
}

- (int64_t)hash
{
  sub_2246287D8();
  MEMORY[0x22AA51BF0](*(self + OBJC_IVAR____TtC11DockKitCore12DockCoreInfo_type));
  sub_224627188();
  sub_224534E68(&qword_27D0C8C60, 255, MEMORY[0x277CC95F0]);
  v3 = self;
  sub_224627C88();
  v4 = sub_2246287B8();

  return v4;
}

@end