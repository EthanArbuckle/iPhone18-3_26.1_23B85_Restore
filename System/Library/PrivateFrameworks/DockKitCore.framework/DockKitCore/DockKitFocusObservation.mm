@interface DockKitFocusObservation
- (_TtC11DockKitCore23DockKitFocusObservation)init;
- (_TtC11DockKitCore23DockKitFocusObservation)initWithCoder:(id)a3;
- (_TtC11DockKitCore23DockKitFocusObservation)initWithIdentifier:(int)a3 x:(double)a4 y:(double)a5 width:(double)a6 height:(double)a7 focusStrong:(BOOL)a8 type:(int64_t)a9;
- (void)encodeWith:(id)a3;
@end

@implementation DockKitFocusObservation

- (_TtC11DockKitCore23DockKitFocusObservation)initWithIdentifier:(int)a3 x:(double)a4 y:(double)a5 width:(double)a6 height:(double)a7 focusStrong:(BOOL)a8 type:(int64_t)a9
{
  *(&self->super.isa + OBJC_IVAR____TtC11DockKitCore23DockKitFocusObservation_identifier) = a3;
  *(&self->super.isa + OBJC_IVAR____TtC11DockKitCore23DockKitFocusObservation_x) = a4;
  *(&self->super.isa + OBJC_IVAR____TtC11DockKitCore23DockKitFocusObservation_y) = a5;
  *(&self->super.isa + OBJC_IVAR____TtC11DockKitCore23DockKitFocusObservation_width) = a6;
  *(&self->super.isa + OBJC_IVAR____TtC11DockKitCore23DockKitFocusObservation_height) = a7;
  *(&self->super.isa + OBJC_IVAR____TtC11DockKitCore23DockKitFocusObservation_focusStrong) = a8;
  *(&self->super.isa + OBJC_IVAR____TtC11DockKitCore23DockKitFocusObservation_type) = a9;
  v10.receiver = self;
  v10.super_class = type metadata accessor for DockKitFocusObservation();
  return [(DockKitFocusObservation *)&v10 init];
}

- (_TtC11DockKitCore23DockKitFocusObservation)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = sub_22461FC1C(v3);

  return v4;
}

- (void)encodeWith:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_22461ED64(v4);
}

- (_TtC11DockKitCore23DockKitFocusObservation)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end