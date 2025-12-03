@interface MonogramLayer
- (_TtC14ContactsUICore13MonogramLayer)init;
- (_TtC14ContactsUICore13MonogramLayer)initWithCoder:(id)coder;
- (_TtC14ContactsUICore13MonogramLayer)initWithLayer:(id)layer;
- (void)drawInDisplayList:(id)list;
@end

@implementation MonogramLayer

- (_TtC14ContactsUICore13MonogramLayer)initWithLayer:(id)layer
{
  swift_unknownObjectRetain();
  sub_1A34CD920();
  swift_unknownObjectRelease();
  return sub_1A3364228(v4);
}

- (_TtC14ContactsUICore13MonogramLayer)initWithCoder:(id)coder
{
  result = sub_1A34CDC10();
  __break(1u);
  return result;
}

- (void)drawInDisplayList:(id)list
{
  listCopy = list;
  selfCopy = self;
  sub_1A3364558(listCopy);
}

- (_TtC14ContactsUICore13MonogramLayer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end