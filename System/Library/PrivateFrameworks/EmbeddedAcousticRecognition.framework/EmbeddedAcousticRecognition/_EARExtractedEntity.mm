@interface _EARExtractedEntity
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (_EARExtractedEntity)init;
- (_EARExtractedEntity)initWithEntityContent:(id)content tagName:(id)name;
- (int64_t)hash;
@end

@implementation _EARExtractedEntity

- (_EARExtractedEntity)initWithEntityContent:(id)content tagName:(id)name
{
  v5 = sub_1B5AD6664();
  v7 = v6;
  v8 = sub_1B5AD6664();
  v9 = (self + OBJC_IVAR____EARExtractedEntity_entityContent);
  *v9 = v5;
  v9[1] = v7;
  v10 = (self + OBJC_IVAR____EARExtractedEntity_tagName);
  *v10 = v8;
  v10[1] = v11;
  v13.receiver = self;
  v13.super_class = type metadata accessor for _EARExtractedEntity();
  return [(_EARExtractedEntity *)&v13 init];
}

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_1B5AD6744();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = sub_1B5A92B9C(v8);

  sub_1B5A95024(v8);
  return v6 & 1;
}

- (int64_t)hash
{
  v2 = *(self + OBJC_IVAR____EARExtractedEntity_entityContent);
  v3 = *(self + OBJC_IVAR____EARExtractedEntity_entityContent + 8);
  selfCopy = self;
  v5 = MEMORY[0x1B8C83C80](v2, v3);
  v6 = MEMORY[0x1B8C83C80](*(selfCopy + OBJC_IVAR____EARExtractedEntity_tagName), *(selfCopy + OBJC_IVAR____EARExtractedEntity_tagName + 8));

  return v6 ^ v5;
}

- (NSString)description
{
  selfCopy = self;
  sub_1B5A92DDC();

  v3 = sub_1B5AD6634();

  return v3;
}

- (_EARExtractedEntity)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end