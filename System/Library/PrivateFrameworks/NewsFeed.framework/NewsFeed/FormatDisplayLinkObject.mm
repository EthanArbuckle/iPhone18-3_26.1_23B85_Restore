@interface FormatDisplayLinkObject
- (_TtC8NewsFeed23FormatDisplayLinkObject)init;
@end

@implementation FormatDisplayLinkObject

- (_TtC8NewsFeed23FormatDisplayLinkObject)init
{
  ObjectType = swift_getObjectType();
  *(&self->super.isa + OBJC_IVAR____TtC8NewsFeed23FormatDisplayLinkObject_storage) = MEMORY[0x1E69E7CC8];
  v5.receiver = self;
  v5.super_class = ObjectType;
  return [(FormatDisplayLinkObject *)&v5 init];
}

@end