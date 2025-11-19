@interface CAPackageViewLayer
- (_TtC17BridgePreferencesP33_4477CD76291733632ED654339973E37C18CAPackageViewLayer)init;
- (_TtC17BridgePreferencesP33_4477CD76291733632ED654339973E37C18CAPackageViewLayer)initWithCoder:(id)a3;
- (_TtC17BridgePreferencesP33_4477CD76291733632ED654339973E37C18CAPackageViewLayer)initWithLayer:(id)a3;
- (void)layoutSublayers;
@end

@implementation CAPackageViewLayer

- (void)layoutSublayers
{
  v2 = self;
  sub_241EA4108();
}

- (_TtC17BridgePreferencesP33_4477CD76291733632ED654339973E37C18CAPackageViewLayer)init
{
  *(&self->super.super.isa + OBJC_IVAR____TtC17BridgePreferencesP33_4477CD76291733632ED654339973E37C18CAPackageViewLayer_packageLayer) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for CAPackageViewLayer();
  return [(CAPackageViewLayer *)&v3 init];
}

- (_TtC17BridgePreferencesP33_4477CD76291733632ED654339973E37C18CAPackageViewLayer)initWithLayer:(id)a3
{
  swift_unknownObjectRetain();
  sub_241EA9E98();
  swift_unknownObjectRelease();
  *(&self->super.super.isa + OBJC_IVAR____TtC17BridgePreferencesP33_4477CD76291733632ED654339973E37C18CAPackageViewLayer_packageLayer) = 0;
  __swift_project_boxed_opaque_existential_0(v8, v8[3]);
  v4 = sub_241EA9F38();
  v7.receiver = self;
  v7.super_class = type metadata accessor for CAPackageViewLayer();
  v5 = [(CAPackageViewLayer *)&v7 initWithLayer:v4];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v8);
  return v5;
}

- (_TtC17BridgePreferencesP33_4477CD76291733632ED654339973E37C18CAPackageViewLayer)initWithCoder:(id)a3
{
  *(&self->super.super.isa + OBJC_IVAR____TtC17BridgePreferencesP33_4477CD76291733632ED654339973E37C18CAPackageViewLayer_packageLayer) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for CAPackageViewLayer();
  v4 = a3;
  v5 = [(CAPackageViewLayer *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end