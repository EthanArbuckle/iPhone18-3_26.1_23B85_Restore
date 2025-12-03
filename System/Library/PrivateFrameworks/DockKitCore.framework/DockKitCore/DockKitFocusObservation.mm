@interface DockKitFocusObservation
- (_TtC11DockKitCore23DockKitFocusObservation)init;
- (_TtC11DockKitCore23DockKitFocusObservation)initWithCoder:(id)coder;
- (_TtC11DockKitCore23DockKitFocusObservation)initWithIdentifier:(int)identifier x:(double)x y:(double)y width:(double)width height:(double)height focusStrong:(BOOL)strong type:(int64_t)type;
- (void)encodeWith:(id)with;
@end

@implementation DockKitFocusObservation

- (_TtC11DockKitCore23DockKitFocusObservation)initWithIdentifier:(int)identifier x:(double)x y:(double)y width:(double)width height:(double)height focusStrong:(BOOL)strong type:(int64_t)type
{
  *(&self->super.isa + OBJC_IVAR____TtC11DockKitCore23DockKitFocusObservation_identifier) = identifier;
  *(&self->super.isa + OBJC_IVAR____TtC11DockKitCore23DockKitFocusObservation_x) = x;
  *(&self->super.isa + OBJC_IVAR____TtC11DockKitCore23DockKitFocusObservation_y) = y;
  *(&self->super.isa + OBJC_IVAR____TtC11DockKitCore23DockKitFocusObservation_width) = width;
  *(&self->super.isa + OBJC_IVAR____TtC11DockKitCore23DockKitFocusObservation_height) = height;
  *(&self->super.isa + OBJC_IVAR____TtC11DockKitCore23DockKitFocusObservation_focusStrong) = strong;
  *(&self->super.isa + OBJC_IVAR____TtC11DockKitCore23DockKitFocusObservation_type) = type;
  v10.receiver = self;
  v10.super_class = type metadata accessor for DockKitFocusObservation();
  return [(DockKitFocusObservation *)&v10 init];
}

- (_TtC11DockKitCore23DockKitFocusObservation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = sub_22461FC1C(coderCopy);

  return v4;
}

- (void)encodeWith:(id)with
{
  withCopy = with;
  selfCopy = self;
  sub_22461ED64(withCopy);
}

- (_TtC11DockKitCore23DockKitFocusObservation)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end