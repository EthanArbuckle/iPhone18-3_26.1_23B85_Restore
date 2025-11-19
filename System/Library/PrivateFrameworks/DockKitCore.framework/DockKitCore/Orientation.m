@interface Orientation
- (NSString)description;
- (_TtC11DockKitCore11Orientation)init;
@end

@implementation Orientation

- (_TtC11DockKitCore11Orientation)init
{
  v3 = OBJC_IVAR____TtC11DockKitCore11Orientation_allocatedLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9670);
  v4 = swift_allocObject();
  *(v4 + 4) = 0;
  *(&self->super.isa + v3) = v4;
  *(&self->super.isa + OBJC_IVAR____TtC11DockKitCore11Orientation__yaw) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC11DockKitCore11Orientation__pitch) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC11DockKitCore11Orientation__roll) = 0;
  v6.receiver = self;
  v6.super_class = type metadata accessor for Orientation();
  return [(Orientation *)&v6 init];
}

- (NSString)description
{
  v2 = self;
  sub_224621EB8();

  v3 = sub_224627CB8();

  return v3;
}

@end