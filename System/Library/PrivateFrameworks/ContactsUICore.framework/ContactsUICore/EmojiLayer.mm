@interface EmojiLayer
- (_TtC14ContactsUICore10EmojiLayer)init;
- (_TtC14ContactsUICore10EmojiLayer)initWithCoder:(id)a3;
- (_TtC14ContactsUICore10EmojiLayer)initWithLayer:(id)a3;
- (void)drawInDisplayList:(id)a3;
@end

@implementation EmojiLayer

- (_TtC14ContactsUICore10EmojiLayer)initWithLayer:(id)a3
{
  swift_unknownObjectRetain();
  sub_1A34CD920();
  swift_unknownObjectRelease();
  return sub_1A3475BF8(v4);
}

- (_TtC14ContactsUICore10EmojiLayer)initWithCoder:(id)a3
{
  result = sub_1A34CDC10();
  __break(1u);
  return result;
}

- (void)drawInDisplayList:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1A3475EF8(v4);
}

- (_TtC14ContactsUICore10EmojiLayer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end