@interface AnimatedIconLayer
- (_TtC12HomeUICommon17AnimatedIconLayer)init;
- (_TtC12HomeUICommon17AnimatedIconLayer)initWithLayer:(id)a3;
- (void)layoutSublayers;
@end

@implementation AnimatedIconLayer

- (void)layoutSublayers
{
  v2 = self;
  sub_254586504();
}

- (_TtC12HomeUICommon17AnimatedIconLayer)init
{
  swift_unknownObjectWeakInit();
  *(&self->super.super.isa + OBJC_IVAR____TtC12HomeUICommon17AnimatedIconLayer_useAssetMarginSize) = 2;
  v3 = self + OBJC_IVAR____TtC12HomeUICommon17AnimatedIconLayer_size;
  *v3 = 0;
  *(v3 + 1) = 0;
  v3[16] = 1;
  v5.receiver = self;
  v5.super_class = type metadata accessor for AnimatedIconLayer();
  return [(AnimatedIconLayer *)&v5 init];
}

- (_TtC12HomeUICommon17AnimatedIconLayer)initWithLayer:(id)a3
{
  swift_unknownObjectRetain();
  sub_25459A9B0();
  swift_unknownObjectRelease();
  swift_unknownObjectWeakInit();
  *(&self->super.super.isa + OBJC_IVAR____TtC12HomeUICommon17AnimatedIconLayer_useAssetMarginSize) = 2;
  v4 = self + OBJC_IVAR____TtC12HomeUICommon17AnimatedIconLayer_size;
  *v4 = 0;
  *(v4 + 1) = 0;
  v4[16] = 1;
  __swift_project_boxed_opaque_existential_0(v9, v9[3]);
  v5 = sub_25459AB60();
  v8.receiver = self;
  v8.super_class = type metadata accessor for AnimatedIconLayer();
  v6 = [(AnimatedIconLayer *)&v8 initWithLayer:v5];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v9);
  return v6;
}

@end