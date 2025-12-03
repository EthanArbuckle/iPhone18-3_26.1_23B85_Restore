@interface IMPersistentMenuItem
+ (id)contentWithType:(int64_t)type dictionary:(id)dictionary;
- (IMAttributableContent)content;
- (IMPersistentMenuItem)init;
- (IMPersistentMenuItem)initWithType:(int64_t)type content:(id)content;
- (id)dictionaryRepresentation;
@end

@implementation IMPersistentMenuItem

- (IMAttributableContent)content
{
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (IMPersistentMenuItem)initWithType:(int64_t)type content:(id)content
{
  *(&self->super.isa + OBJC_IVAR___IMPersistentMenuItem_type) = type;
  *(&self->super.isa + OBJC_IVAR___IMPersistentMenuItem_content) = content;
  v5.receiver = self;
  v5.super_class = IMPersistentMenuItem;
  swift_unknownObjectRetain();
  return [(IMPersistentMenuItem *)&v5 init];
}

- (id)dictionaryRepresentation
{
  selfCopy = self;
  sub_1A87E955C();

  v3 = sub_1A88C8188();

  return v3;
}

+ (id)contentWithType:(int64_t)type dictionary:(id)dictionary
{
  sub_1A88C81A8();
  v5 = sub_1A87E98CC(type);

  return v5;
}

- (IMPersistentMenuItem)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end