@interface CAPackageViewLayer
- (_TtC12HomeUICommonP33_8DF7C963BAAA969BCA457807AB0A8DB818CAPackageViewLayer)init;
- (_TtC12HomeUICommonP33_8DF7C963BAAA969BCA457807AB0A8DB818CAPackageViewLayer)initWithCoder:(id)coder;
- (_TtC12HomeUICommonP33_8DF7C963BAAA969BCA457807AB0A8DB818CAPackageViewLayer)initWithLayer:(id)layer;
- (void)layoutSublayers;
@end

@implementation CAPackageViewLayer

- (void)layoutSublayers
{
  selfCopy = self;
  sub_2545905E4();
}

- (_TtC12HomeUICommonP33_8DF7C963BAAA969BCA457807AB0A8DB818CAPackageViewLayer)init
{
  *(&self->super.super.isa + OBJC_IVAR____TtC12HomeUICommonP33_8DF7C963BAAA969BCA457807AB0A8DB818CAPackageViewLayer_packageState) = 0;
  *(&self->super.super.isa + OBJC_IVAR____TtC12HomeUICommonP33_8DF7C963BAAA969BCA457807AB0A8DB818CAPackageViewLayer_packageLayer) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for CAPackageViewLayer();
  return [(CAPackageViewLayer *)&v3 init];
}

- (_TtC12HomeUICommonP33_8DF7C963BAAA969BCA457807AB0A8DB818CAPackageViewLayer)initWithLayer:(id)layer
{
  swift_unknownObjectRetain();
  sub_25459A9B0();
  swift_unknownObjectRelease();
  *(&self->super.super.isa + OBJC_IVAR____TtC12HomeUICommonP33_8DF7C963BAAA969BCA457807AB0A8DB818CAPackageViewLayer_packageState) = 0;
  *(&self->super.super.isa + OBJC_IVAR____TtC12HomeUICommonP33_8DF7C963BAAA969BCA457807AB0A8DB818CAPackageViewLayer_packageLayer) = 0;
  __swift_project_boxed_opaque_existential_0(v8, v8[3]);
  v4 = sub_25459AB60();
  v7.receiver = self;
  v7.super_class = type metadata accessor for CAPackageViewLayer();
  v5 = [(CAPackageViewLayer *)&v7 initWithLayer:v4];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v8);
  return v5;
}

- (_TtC12HomeUICommonP33_8DF7C963BAAA969BCA457807AB0A8DB818CAPackageViewLayer)initWithCoder:(id)coder
{
  *(&self->super.super.isa + OBJC_IVAR____TtC12HomeUICommonP33_8DF7C963BAAA969BCA457807AB0A8DB818CAPackageViewLayer_packageState) = 0;
  *(&self->super.super.isa + OBJC_IVAR____TtC12HomeUICommonP33_8DF7C963BAAA969BCA457807AB0A8DB818CAPackageViewLayer_packageLayer) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for CAPackageViewLayer();
  coderCopy = coder;
  v5 = [(CAPackageViewLayer *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end