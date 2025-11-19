@interface AnimationPackageView.CAPackageViewLayer
- (_TtCV17NanoControlCenter20AnimationPackageViewP33_BAF0D071F2C9015A0B315C0F79AC2BC918CAPackageViewLayer)init;
- (_TtCV17NanoControlCenter20AnimationPackageViewP33_BAF0D071F2C9015A0B315C0F79AC2BC918CAPackageViewLayer)initWithCoder:(id)a3;
- (_TtCV17NanoControlCenter20AnimationPackageViewP33_BAF0D071F2C9015A0B315C0F79AC2BC918CAPackageViewLayer)initWithLayer:(id)a3;
- (void)layoutSublayers;
@end

@implementation AnimationPackageView.CAPackageViewLayer

- (void)layoutSublayers
{
  v2 = self;
  sub_25AF40BA8();
}

- (_TtCV17NanoControlCenter20AnimationPackageViewP33_BAF0D071F2C9015A0B315C0F79AC2BC918CAPackageViewLayer)init
{
  *(&self->super.super.isa + OBJC_IVAR____TtCV17NanoControlCenter20AnimationPackageViewP33_BAF0D071F2C9015A0B315C0F79AC2BC918CAPackageViewLayer_packageLayer) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for AnimationPackageView.CAPackageViewLayer();
  return [(AnimationPackageView.CAPackageViewLayer *)&v3 init];
}

- (_TtCV17NanoControlCenter20AnimationPackageViewP33_BAF0D071F2C9015A0B315C0F79AC2BC918CAPackageViewLayer)initWithLayer:(id)a3
{
  swift_unknownObjectRetain();
  sub_25B005E34();
  swift_unknownObjectRelease();
  *(&self->super.super.isa + OBJC_IVAR____TtCV17NanoControlCenter20AnimationPackageViewP33_BAF0D071F2C9015A0B315C0F79AC2BC918CAPackageViewLayer_packageLayer) = 0;
  __swift_project_boxed_opaque_existential_1(v8, v8[3]);
  v4 = sub_25B006154();
  v7.receiver = self;
  v7.super_class = type metadata accessor for AnimationPackageView.CAPackageViewLayer();
  v5 = [(AnimationPackageView.CAPackageViewLayer *)&v7 initWithLayer:v4];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0Tm(v8);
  return v5;
}

- (_TtCV17NanoControlCenter20AnimationPackageViewP33_BAF0D071F2C9015A0B315C0F79AC2BC918CAPackageViewLayer)initWithCoder:(id)a3
{
  *(&self->super.super.isa + OBJC_IVAR____TtCV17NanoControlCenter20AnimationPackageViewP33_BAF0D071F2C9015A0B315C0F79AC2BC918CAPackageViewLayer_packageLayer) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for AnimationPackageView.CAPackageViewLayer();
  v4 = a3;
  v5 = [(AnimationPackageView.CAPackageViewLayer *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end