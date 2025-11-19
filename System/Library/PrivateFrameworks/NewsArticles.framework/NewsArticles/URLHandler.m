@interface URLHandler
- (_TtC12NewsArticles10URLHandler)init;
@end

@implementation URLHandler

- (_TtC12NewsArticles10URLHandler)init
{
  ObjectType = swift_getObjectType();
  v4 = MEMORY[0x1E69E7CC0];
  *(&self->super.isa + OBJC_IVAR____TtC12NewsArticles10URLHandler_closures) = MEMORY[0x1E69E7CC0];
  *(&self->super.isa + OBJC_IVAR____TtC12NewsArticles10URLHandler_newWindowClosures) = v4;
  v6.receiver = self;
  v6.super_class = ObjectType;
  return [(URLHandler *)&v6 init];
}

@end