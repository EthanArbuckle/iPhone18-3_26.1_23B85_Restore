@interface AvatarViewLayer
- (_TtC14ContactsUICore15AvatarViewLayer)initWithCoder:(id)a3;
- (_TtC14ContactsUICore15AvatarViewLayer)initWithLayer:(id)a3;
- (void)display;
@end

@implementation AvatarViewLayer

- (_TtC14ContactsUICore15AvatarViewLayer)initWithLayer:(id)a3
{
  swift_unknownObjectRetain();
  sub_1A34CD920();
  swift_unknownObjectRelease();
  return AvatarViewLayer.init(layer:)(v4);
}

- (_TtC14ContactsUICore15AvatarViewLayer)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____TtC14ContactsUICore15AvatarViewLayer_spec;
  v5 = type metadata accessor for AvatarViewLayer.RenderSpec(0);
  (*(*(v5 - 8) + 56))(self + v4, 1, 1, v5);
  *(&self->super.super.isa + OBJC_IVAR____TtC14ContactsUICore15AvatarViewLayer_model) = 0;
  *(&self->super.super.isa + OBJC_IVAR____TtC14ContactsUICore15AvatarViewLayer_modelListener) = 0;
  *(&self->super.super.isa + OBJC_IVAR____TtC14ContactsUICore15AvatarViewLayer_foregroundLayer) = 0;
  *(&self->super.super.isa + OBJC_IVAR____TtC14ContactsUICore15AvatarViewLayer_backgroundLayer) = 0;
  result = sub_1A34CDC10();
  __break(1u);
  return result;
}

- (void)display
{
  v2 = self;
  sub_1A32FA140();
}

@end