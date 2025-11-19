@interface DBOverlayView
- (_TtC9DashBoardP33_A2B08C6DB83AD2FD52A6D2095FBE4B7A13DBOverlayView)initWithCoder:(id)a3;
- (_TtC9DashBoardP33_A2B08C6DB83AD2FD52A6D2095FBE4B7A13DBOverlayView)initWithFrame:(CGRect)a3;
- (void)invalidate;
- (void)overlayViewService:(id)a3 didUpdateIdentifier:(id)a4;
- (void)overlayViewService:(id)a3 didUpdateOn:(BOOL)a4;
- (void)overlayViewService:(id)a3 didUpdateWidth:(float)a4;
@end

@implementation DBOverlayView

- (void)invalidate
{
  v2 = self;
  sub_248371BA0();
}

- (_TtC9DashBoardP33_A2B08C6DB83AD2FD52A6D2095FBE4B7A13DBOverlayView)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC9DashBoardP33_A2B08C6DB83AD2FD52A6D2095FBE4B7A13DBOverlayView_imageView) = 0;
  result = sub_248384580();
  __break(1u);
  return result;
}

- (_TtC9DashBoardP33_A2B08C6DB83AD2FD52A6D2095FBE4B7A13DBOverlayView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)overlayViewService:(id)a3 didUpdateIdentifier:(id)a4
{
  v4 = self;
  sub_248371E64();
}

- (void)overlayViewService:(id)a3 didUpdateOn:(BOOL)a4
{
  v4 = self;
  sub_248371E64();
}

- (void)overlayViewService:(id)a3 didUpdateWidth:(float)a4
{
  v4 = self;
  sub_248371E64();
}

@end