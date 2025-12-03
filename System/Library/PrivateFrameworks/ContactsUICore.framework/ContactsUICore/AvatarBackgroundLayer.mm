@interface AvatarBackgroundLayer
- (_TtC14ContactsUICore21AvatarBackgroundLayer)init;
- (_TtC14ContactsUICore21AvatarBackgroundLayer)initWithCoder:(id)coder;
- (_TtC14ContactsUICore21AvatarBackgroundLayer)initWithLayer:(id)layer;
- (void)display;
@end

@implementation AvatarBackgroundLayer

- (_TtC14ContactsUICore21AvatarBackgroundLayer)initWithLayer:(id)layer
{
  swift_unknownObjectRetain();
  sub_1A34CD920();
  swift_unknownObjectRelease();
  return sub_1A32A7E08(v4);
}

- (_TtC14ContactsUICore21AvatarBackgroundLayer)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtC14ContactsUICore21AvatarBackgroundLayer_spec;
  v5 = type metadata accessor for AvatarBackgroundLayer.RenderSpec(0);
  (*(*(v5 - 8) + 56))(self + v4, 1, 1, v5);
  v6 = OBJC_IVAR____TtC14ContactsUICore21AvatarBackgroundLayer_gradientLayer;
  *(&self->super.super.isa + v6) = [objc_allocWithZone(MEMORY[0x1E6979380]) init];
  result = sub_1A34CDC10();
  __break(1u);
  return result;
}

- (void)display
{
  selfCopy = self;
  sub_1A32A8254();
}

- (_TtC14ContactsUICore21AvatarBackgroundLayer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end