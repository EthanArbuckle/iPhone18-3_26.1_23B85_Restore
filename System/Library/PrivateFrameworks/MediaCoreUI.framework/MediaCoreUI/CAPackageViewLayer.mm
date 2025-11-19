@interface CAPackageViewLayer
- (_TtC11MediaCoreUIP33_F4C8615D44A19A30266CA641FD3263FC18CAPackageViewLayer)init;
- (_TtC11MediaCoreUIP33_F4C8615D44A19A30266CA641FD3263FC18CAPackageViewLayer)initWithCoder:(id)a3;
- (_TtC11MediaCoreUIP33_F4C8615D44A19A30266CA641FD3263FC18CAPackageViewLayer)initWithLayer:(id)a3;
- (void)layoutSublayers;
@end

@implementation CAPackageViewLayer

- (_TtC11MediaCoreUIP33_F4C8615D44A19A30266CA641FD3263FC18CAPackageViewLayer)init
{
  *(&self->super.super.isa + OBJC_IVAR____TtC11MediaCoreUIP33_F4C8615D44A19A30266CA641FD3263FC18CAPackageViewLayer_packageLayer) = 0;
  *(&self->super.super.isa + OBJC_IVAR____TtC11MediaCoreUIP33_F4C8615D44A19A30266CA641FD3263FC18CAPackageViewLayer_foregroundColor) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for CAPackageViewLayer();
  return [(CAPackageViewLayer *)&v3 init];
}

- (void)layoutSublayers
{
  v2 = self;
  sub_1C597594C();
}

- (_TtC11MediaCoreUIP33_F4C8615D44A19A30266CA641FD3263FC18CAPackageViewLayer)initWithLayer:(id)a3
{
  swift_unknownObjectRetain();
  sub_1C5BCB8D4();
  swift_unknownObjectRelease();
  *(&self->super.super.isa + OBJC_IVAR____TtC11MediaCoreUIP33_F4C8615D44A19A30266CA641FD3263FC18CAPackageViewLayer_packageLayer) = 0;
  *(&self->super.super.isa + OBJC_IVAR____TtC11MediaCoreUIP33_F4C8615D44A19A30266CA641FD3263FC18CAPackageViewLayer_foregroundColor) = 0;
  __swift_project_boxed_opaque_existential_0(v8, v8[3]);
  v4 = sub_1C5BCBDD4();
  v7.receiver = self;
  v7.super_class = type metadata accessor for CAPackageViewLayer();
  v5 = [(CAPackageViewLayer *)&v7 initWithLayer:v4];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v8);
  return v5;
}

- (_TtC11MediaCoreUIP33_F4C8615D44A19A30266CA641FD3263FC18CAPackageViewLayer)initWithCoder:(id)a3
{
  *(&self->super.super.isa + OBJC_IVAR____TtC11MediaCoreUIP33_F4C8615D44A19A30266CA641FD3263FC18CAPackageViewLayer_packageLayer) = 0;
  *(&self->super.super.isa + OBJC_IVAR____TtC11MediaCoreUIP33_F4C8615D44A19A30266CA641FD3263FC18CAPackageViewLayer_foregroundColor) = 0;
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