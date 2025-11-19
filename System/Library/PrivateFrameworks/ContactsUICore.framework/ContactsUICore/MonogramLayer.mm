@interface MonogramLayer
- (_TtC14ContactsUICore13MonogramLayer)init;
- (_TtC14ContactsUICore13MonogramLayer)initWithCoder:(id)a3;
- (_TtC14ContactsUICore13MonogramLayer)initWithLayer:(id)a3;
- (void)drawInDisplayList:(id)a3;
@end

@implementation MonogramLayer

- (_TtC14ContactsUICore13MonogramLayer)initWithLayer:(id)a3
{
  swift_unknownObjectRetain();
  sub_1A34CD920();
  swift_unknownObjectRelease();
  return sub_1A3364228(v4);
}

- (_TtC14ContactsUICore13MonogramLayer)initWithCoder:(id)a3
{
  result = sub_1A34CDC10();
  __break(1u);
  return result;
}

- (void)drawInDisplayList:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1A3364558(v4);
}

- (_TtC14ContactsUICore13MonogramLayer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end