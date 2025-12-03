@interface CAPackageViewLayer
- (_TtC11MediaCoreUIP33_F4C8615D44A19A30266CA641FD3263FC18CAPackageViewLayer)init;
- (_TtC11MediaCoreUIP33_F4C8615D44A19A30266CA641FD3263FC18CAPackageViewLayer)initWithCoder:(id)coder;
- (_TtC11MediaCoreUIP33_F4C8615D44A19A30266CA641FD3263FC18CAPackageViewLayer)initWithLayer:(id)layer;
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
  selfCopy = self;
  sub_1C597594C();
}

- (_TtC11MediaCoreUIP33_F4C8615D44A19A30266CA641FD3263FC18CAPackageViewLayer)initWithLayer:(id)layer
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

- (_TtC11MediaCoreUIP33_F4C8615D44A19A30266CA641FD3263FC18CAPackageViewLayer)initWithCoder:(id)coder
{
  *(&self->super.super.isa + OBJC_IVAR____TtC11MediaCoreUIP33_F4C8615D44A19A30266CA641FD3263FC18CAPackageViewLayer_packageLayer) = 0;
  *(&self->super.super.isa + OBJC_IVAR____TtC11MediaCoreUIP33_F4C8615D44A19A30266CA641FD3263FC18CAPackageViewLayer_foregroundColor) = 0;
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