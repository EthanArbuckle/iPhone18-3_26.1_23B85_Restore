@interface Quaternion
- (_TtC11DockKitCore10Quaternion)init;
- (_TtC11DockKitCore10Quaternion)initWithX:(double)a3 y:(double)a4 z:(double)a5 w:(double)a6;
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

- (_TtC11DockKitCore10Quaternion)initWithX:(double)a3 y:(double)a4 z:(double)a5 w:(double)a6
{
  v6 = OBJC_IVAR____TtC11DockKitCore10Quaternion_y;
  v7 = OBJC_IVAR____TtC11DockKitCore10Quaternion_z;
  v8 = OBJC_IVAR____TtC11DockKitCore10Quaternion_w;
  *(&self->super.isa + OBJC_IVAR____TtC11DockKitCore10Quaternion_x) = a3;
  *(&self->super.isa + v6) = a4;
  *(&self->super.isa + v7) = a5;
  *(&self->super.isa + v8) = a6;
  v10.receiver = self;
  v10.super_class = type metadata accessor for Quaternion();
  return [(Quaternion *)&v10 init];
}

@end