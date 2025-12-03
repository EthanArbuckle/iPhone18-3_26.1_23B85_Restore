@interface Pose
- (_TtC11DockKitCore4Pose)init;
- (int64_t)hash;
@end

@implementation Pose

- (int64_t)hash
{
  sub_2246287D8();
  v3 = *(&self->super.isa + OBJC_IVAR____TtC11DockKitCore4Pose_position);
  selfCopy = self;
  v5 = v3;
  sub_2246281F8();

  v6 = *(&selfCopy->super.isa + OBJC_IVAR____TtC11DockKitCore4Pose_rotation);
  sub_2246281F8();

  v7 = sub_2246287B8();
  return v7;
}

- (_TtC11DockKitCore4Pose)init
{
  v3 = OBJC_IVAR____TtC11DockKitCore4Pose_position;
  *(&self->super.isa + v3) = [objc_allocWithZone(type metadata accessor for Vector3()) init];
  v4 = OBJC_IVAR____TtC11DockKitCore4Pose_rotation;
  *(&self->super.isa + v4) = [objc_allocWithZone(type metadata accessor for Orientation()) init];
  v6.receiver = self;
  v6.super_class = type metadata accessor for Pose();
  return [(Pose *)&v6 init];
}

@end