@interface MFPassthroughView
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (_TtC16MagnifierSupport17MFPassthroughView)initWithCoder:(id)coder;
- (_TtC16MagnifierSupport17MFPassthroughView)initWithFrame:(CGRect)frame;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
@end

@implementation MFPassthroughView

- (_TtC16MagnifierSupport17MFPassthroughView)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC16MagnifierSupport17MFPassthroughView_enabled) = 1;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC16MagnifierSupport17MFPassthroughView_heightOfPanAreaAboveDrawer) = 0x403E000000000000;
  result = sub_257ED0410();
  __break(1u);
  return result;
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  eventCopy = event;
  y = inside.y;
  x = inside.x;
  eventCopy2 = event;
  selfCopy = self;
  LOBYTE(eventCopy) = sub_257DD2A10(eventCopy, x, y);

  return eventCopy & 1;
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  selfCopy = self;
  v10 = sub_257DD2C74(event, x, y);

  return v10;
}

- (_TtC16MagnifierSupport17MFPassthroughView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end