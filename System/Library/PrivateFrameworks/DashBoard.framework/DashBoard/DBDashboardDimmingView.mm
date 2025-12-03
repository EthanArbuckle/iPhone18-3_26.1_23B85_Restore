@interface DBDashboardDimmingView
- (CGRect)contentFrame;
- (_TtC9DashBoard22DBDashboardDimmingView)initWithCoder:(id)coder;
- (double)cornerRadius;
- (void)setContentFrame:(CGRect)frame;
- (void)setCornerRadius:(double)radius;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation DBDashboardDimmingView

- (void)setContentFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8 = (self + OBJC_IVAR____TtC9DashBoard22DBDashboardDimmingView_contentFrame);
  swift_beginAccess();
  *v8 = x;
  v8[1] = y;
  v8[2] = width;
  v8[3] = height;
  selfCopy = self;
  sub_2481542AC();
}

- (void)traitCollectionDidChange:(id)change
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for DBDashboardDimmingView();
  changeCopy = change;
  v5 = v6.receiver;
  [(DBDashboardDimmingView *)&v6 traitCollectionDidChange:changeCopy];
  sub_248159ED4();
  sub_2481542AC();
}

- (_TtC9DashBoard22DBDashboardDimmingView)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC9DashBoard22DBDashboardDimmingView_cornerRadius) = 0;
  v3 = (self + OBJC_IVAR____TtC9DashBoard22DBDashboardDimmingView_contentFrame);
  *v3 = 0u;
  v3[1] = 0u;
  result = sub_248384580();
  __break(1u);
  return result;
}

- (double)cornerRadius
{
  v3 = OBJC_IVAR____TtC9DashBoard22DBDashboardDimmingView_cornerRadius;
  swift_beginAccess();
  return *(&self->super.super.super.isa + v3);
}

- (void)setCornerRadius:(double)radius
{
  v5 = OBJC_IVAR____TtC9DashBoard22DBDashboardDimmingView_cornerRadius;
  swift_beginAccess();
  *(&self->super.super.super.isa + v5) = radius;
  selfCopy = self;
  sub_248159ED4();
  sub_2481542AC();
}

- (CGRect)contentFrame
{
  v2 = (self + OBJC_IVAR____TtC9DashBoard22DBDashboardDimmingView_contentFrame);
  swift_beginAccess();
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[2];
  v6 = v2[3];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

@end