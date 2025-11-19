@interface Vector3
- (_TtC11DockKitCore7Vector3)init;
- (_TtC11DockKitCore7Vector3)initWithX:(double)a3 y:(double)a4 z:(double)a5;
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

- (_TtC11DockKitCore7Vector3)initWithX:(double)a3 y:(double)a4 z:(double)a5
{
  v5 = OBJC_IVAR____TtC11DockKitCore7Vector3_y;
  v6 = OBJC_IVAR____TtC11DockKitCore7Vector3_z;
  *(&self->super.isa + OBJC_IVAR____TtC11DockKitCore7Vector3_x) = a3;
  *(&self->super.isa + v5) = a4;
  *(&self->super.isa + v6) = a5;
  v8.receiver = self;
  v8.super_class = type metadata accessor for Vector3();
  return [(Vector3 *)&v8 init];
}

@end