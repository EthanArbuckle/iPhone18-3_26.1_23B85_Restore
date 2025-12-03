@interface LockScreenMotionReplicatorLayer
- (_TtC11MediaCoreUI31LockScreenMotionReplicatorLayer)init;
- (_TtC11MediaCoreUI31LockScreenMotionReplicatorLayer)initWithCoder:(id)coder;
- (_TtC11MediaCoreUI31LockScreenMotionReplicatorLayer)initWithLayer:(id)layer;
- (void)layoutSublayers;
@end

@implementation LockScreenMotionReplicatorLayer

- (_TtC11MediaCoreUI31LockScreenMotionReplicatorLayer)init
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC11MediaCoreUI31LockScreenMotionReplicatorLayer_innerReplicator) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC11MediaCoreUI31LockScreenMotionReplicatorLayer_originalContent) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC11MediaCoreUI31LockScreenMotionReplicatorLayer_mirroringBehavior) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC11MediaCoreUI31LockScreenMotionReplicatorLayer_mirrorStretchFactor) = 0x4000000000000000;
  v3.receiver = self;
  v3.super_class = type metadata accessor for LockScreenMotionReplicatorLayer();
  return [(CAReplicatorLayer *)&v3 init];
}

- (_TtC11MediaCoreUI31LockScreenMotionReplicatorLayer)initWithLayer:(id)layer
{
  swift_unknownObjectRetain();
  sub_1C5BCB8D4();
  swift_unknownObjectRelease();
  *(&self->super.super.super.isa + OBJC_IVAR____TtC11MediaCoreUI31LockScreenMotionReplicatorLayer_innerReplicator) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC11MediaCoreUI31LockScreenMotionReplicatorLayer_originalContent) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC11MediaCoreUI31LockScreenMotionReplicatorLayer_mirroringBehavior) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC11MediaCoreUI31LockScreenMotionReplicatorLayer_mirrorStretchFactor) = 0x4000000000000000;
  __swift_project_boxed_opaque_existential_0(v8, v8[3]);
  v4 = sub_1C5BCBDD4();
  v7.receiver = self;
  v7.super_class = type metadata accessor for LockScreenMotionReplicatorLayer();
  v5 = [(LockScreenMotionReplicatorLayer *)&v7 initWithLayer:v4];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v8);
  return v5;
}

- (_TtC11MediaCoreUI31LockScreenMotionReplicatorLayer)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC11MediaCoreUI31LockScreenMotionReplicatorLayer_innerReplicator) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC11MediaCoreUI31LockScreenMotionReplicatorLayer_originalContent) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC11MediaCoreUI31LockScreenMotionReplicatorLayer_mirroringBehavior) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC11MediaCoreUI31LockScreenMotionReplicatorLayer_mirrorStretchFactor) = 0x4000000000000000;
  result = sub_1C5BCBBC4();
  __break(1u);
  return result;
}

- (void)layoutSublayers
{
  selfCopy = self;
  sub_1C5ACC850();
}

@end