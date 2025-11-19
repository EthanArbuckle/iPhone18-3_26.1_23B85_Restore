@interface IMPersistentMenuItem
+ (id)contentWithType:(int64_t)a3 dictionary:(id)a4;
- (IMAttributableContent)content;
- (IMPersistentMenuItem)init;
- (IMPersistentMenuItem)initWithType:(int64_t)a3 content:(id)a4;
- (id)dictionaryRepresentation;
@end

@implementation IMPersistentMenuItem

- (IMAttributableContent)content
{
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (IMPersistentMenuItem)initWithType:(int64_t)a3 content:(id)a4
{
  *(&self->super.isa + OBJC_IVAR___IMPersistentMenuItem_type) = a3;
  *(&self->super.isa + OBJC_IVAR___IMPersistentMenuItem_content) = a4;
  v5.receiver = self;
  v5.super_class = IMPersistentMenuItem;
  swift_unknownObjectRetain();
  return [(IMPersistentMenuItem *)&v5 init];
}

- (id)dictionaryRepresentation
{
  v2 = self;
  sub_1A87E955C();

  v3 = sub_1A88C8188();

  return v3;
}

+ (id)contentWithType:(int64_t)a3 dictionary:(id)a4
{
  sub_1A88C81A8();
  v5 = sub_1A87E98CC(a3);

  return v5;
}

- (IMPersistentMenuItem)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end