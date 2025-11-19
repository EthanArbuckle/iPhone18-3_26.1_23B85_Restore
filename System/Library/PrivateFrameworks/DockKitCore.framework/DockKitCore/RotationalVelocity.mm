@interface RotationalVelocity
- (_TtC11DockKitCore18RotationalVelocity)init;
@end

@implementation RotationalVelocity

- (_TtC11DockKitCore18RotationalVelocity)init
{
  v3 = OBJC_IVAR____TtC11DockKitCore18RotationalVelocity_allocatedLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9670);
  v4 = swift_allocObject();
  *(v4 + 4) = 0;
  *(&self->super.isa + v3) = v4;
  *(&self->super.isa + OBJC_IVAR____TtC11DockKitCore18RotationalVelocity__yawVelocity) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC11DockKitCore18RotationalVelocity__pitchVelocity) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC11DockKitCore18RotationalVelocity__rollVelocity) = 0;
  v6.receiver = self;
  v6.super_class = type metadata accessor for RotationalVelocity();
  return [(RotationalVelocity *)&v6 init];
}

@end