@interface EmojiLayer
- (_TtC14ContactsUICore10EmojiLayer)init;
- (_TtC14ContactsUICore10EmojiLayer)initWithCoder:(id)coder;
- (_TtC14ContactsUICore10EmojiLayer)initWithLayer:(id)layer;
- (void)drawInDisplayList:(id)list;
@end

@implementation EmojiLayer

- (_TtC14ContactsUICore10EmojiLayer)initWithLayer:(id)layer
{
  swift_unknownObjectRetain();
  sub_1A34CD920();
  swift_unknownObjectRelease();
  return sub_1A3475BF8(v4);
}

- (_TtC14ContactsUICore10EmojiLayer)initWithCoder:(id)coder
{
  result = sub_1A34CDC10();
  __break(1u);
  return result;
}

- (void)drawInDisplayList:(id)list
{
  listCopy = list;
  selfCopy = self;
  sub_1A3475EF8(listCopy);
}

- (_TtC14ContactsUICore10EmojiLayer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end