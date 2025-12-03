@interface System
- (BOOL)isEqual:(id)equal;
- (NSDictionary)components;
- (NSString)description;
- (_TtC11DockKitCore6System)init;
- (_TtC11DockKitCore6System)initWithCoder:(id)coder;
- (_TtC11DockKitCore6System)initWithId:(int64_t)id type:(int64_t)type name:(id)name;
- (int64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setComponents:(id)components;
@end

@implementation System

- (NSDictionary)components
{
  type metadata accessor for Component();

  v2 = sub_224627C48();

  return v2;
}

- (void)setComponents:(id)components
{
  type metadata accessor for Component();
  *(self + OBJC_IVAR____TtC11DockKitCore6System_components) = sub_224627C58();
}

- (NSString)description
{
  selfCopy = self;
  sub_2245B4088();

  v3 = sub_224627CB8();

  return v3;
}

- (_TtC11DockKitCore6System)initWithId:(int64_t)id type:(int64_t)type name:(id)name
{
  v8 = sub_224627CD8();
  *(self + OBJC_IVAR____TtC11DockKitCore6System_components) = MEMORY[0x277D84F98];
  *(self + OBJC_IVAR____TtC11DockKitCore6System_id) = id;
  *(self + OBJC_IVAR____TtC11DockKitCore6System_type) = type;
  v9 = (self + OBJC_IVAR____TtC11DockKitCore6System_name);
  *v9 = v8;
  v9[1] = v10;
  v12.receiver = self;
  v12.super_class = type metadata accessor for System();
  return [(System *)&v12 init];
}

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_224628278();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = sub_2245B4398(v8);

  sub_2245B4E00(v8);
  return v6 & 1;
}

- (int64_t)hash
{
  sub_2246287D8();
  MEMORY[0x22AA51BF0](*(self + OBJC_IVAR____TtC11DockKitCore6System_id));
  MEMORY[0x22AA51BF0](*(self + OBJC_IVAR____TtC11DockKitCore6System_type));
  selfCopy = self;
  sub_224627D78();
  v4 = sub_2246287B8();

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_2245B3BA4(coderCopy);
}

- (_TtC11DockKitCore6System)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = sub_2245B4A54();

  return v4;
}

- (_TtC11DockKitCore6System)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end