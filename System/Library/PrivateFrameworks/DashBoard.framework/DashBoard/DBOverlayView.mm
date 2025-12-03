@interface DBOverlayView
- (_TtC9DashBoardP33_A2B08C6DB83AD2FD52A6D2095FBE4B7A13DBOverlayView)initWithCoder:(id)coder;
- (_TtC9DashBoardP33_A2B08C6DB83AD2FD52A6D2095FBE4B7A13DBOverlayView)initWithFrame:(CGRect)frame;
- (void)invalidate;
- (void)overlayViewService:(id)service didUpdateIdentifier:(id)identifier;
- (void)overlayViewService:(id)service didUpdateOn:(BOOL)on;
- (void)overlayViewService:(id)service didUpdateWidth:(float)width;
@end

@implementation DBOverlayView

- (void)invalidate
{
  selfCopy = self;
  sub_248371BA0();
}

- (_TtC9DashBoardP33_A2B08C6DB83AD2FD52A6D2095FBE4B7A13DBOverlayView)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC9DashBoardP33_A2B08C6DB83AD2FD52A6D2095FBE4B7A13DBOverlayView_imageView) = 0;
  result = sub_248384580();
  __break(1u);
  return result;
}

- (_TtC9DashBoardP33_A2B08C6DB83AD2FD52A6D2095FBE4B7A13DBOverlayView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)overlayViewService:(id)service didUpdateIdentifier:(id)identifier
{
  selfCopy = self;
  sub_248371E64();
}

- (void)overlayViewService:(id)service didUpdateOn:(BOOL)on
{
  selfCopy = self;
  sub_248371E64();
}

- (void)overlayViewService:(id)service didUpdateWidth:(float)width
{
  selfCopy = self;
  sub_248371E64();
}

@end