@interface Vector3
- (_TtC11DockKitCore7Vector3)init;
- (_TtC11DockKitCore7Vector3)initWithX:(double)x y:(double)y z:(double)z;
@end

@implementation Vector3

- (_TtC11DockKitCore7Vector3)init
{
  *(&self->super.isa + OBJC_IVAR____TtC11DockKitCore7Vector3_x) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC11DockKitCore7Vector3_y) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC11DockKitCore7Vector3_z) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for Vector3();
  return [(Vector3 *)&v3 init];
}

- (_TtC11DockKitCore7Vector3)initWithX:(double)x y:(double)y z:(double)z
{
  v5 = OBJC_IVAR____TtC11DockKitCore7Vector3_y;
  v6 = OBJC_IVAR____TtC11DockKitCore7Vector3_z;
  *(&self->super.isa + OBJC_IVAR____TtC11DockKitCore7Vector3_x) = x;
  *(&self->super.isa + v5) = y;
  *(&self->super.isa + v6) = z;
  v8.receiver = self;
  v8.super_class = type metadata accessor for Vector3();
  return [(Vector3 *)&v8 init];
}

@end