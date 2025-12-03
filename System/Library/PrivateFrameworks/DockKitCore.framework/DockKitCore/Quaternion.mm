@interface Quaternion
- (_TtC11DockKitCore10Quaternion)init;
- (_TtC11DockKitCore10Quaternion)initWithX:(double)x y:(double)y z:(double)z w:(double)w;
@end

@implementation Quaternion

- (_TtC11DockKitCore10Quaternion)init
{
  *(&self->super.isa + OBJC_IVAR____TtC11DockKitCore10Quaternion_x) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC11DockKitCore10Quaternion_y) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC11DockKitCore10Quaternion_z) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC11DockKitCore10Quaternion_w) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for Quaternion();
  return [(Quaternion *)&v3 init];
}

- (_TtC11DockKitCore10Quaternion)initWithX:(double)x y:(double)y z:(double)z w:(double)w
{
  v6 = OBJC_IVAR____TtC11DockKitCore10Quaternion_y;
  v7 = OBJC_IVAR____TtC11DockKitCore10Quaternion_z;
  v8 = OBJC_IVAR____TtC11DockKitCore10Quaternion_w;
  *(&self->super.isa + OBJC_IVAR____TtC11DockKitCore10Quaternion_x) = x;
  *(&self->super.isa + v6) = y;
  *(&self->super.isa + v7) = z;
  *(&self->super.isa + v8) = w;
  v10.receiver = self;
  v10.super_class = type metadata accessor for Quaternion();
  return [(Quaternion *)&v10 init];
}

@end