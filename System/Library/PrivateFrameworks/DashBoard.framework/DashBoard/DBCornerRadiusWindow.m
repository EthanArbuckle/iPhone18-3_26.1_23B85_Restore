@interface DBCornerRadiusWindow
- (CGRect)frame;
- (double)cornerRadius;
- (void)setCornerRadius:(double)a3;
- (void)setFrame:(CGRect)a3;
@end

@implementation DBCornerRadiusWindow

- (CGRect)frame
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for DBCornerRadiusWindow();
  [(DBCornerRadiusWindow *)&v6 frame];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (double)cornerRadius
{
  v3 = OBJC_IVAR____TtC9DashBoard20DBCornerRadiusWindow_cornerRadius;
  swift_beginAccess();
  return *(&self->super.super.super.super.super.super.isa + v3);
}

- (void)setCornerRadius:(double)a3
{
  v5 = OBJC_IVAR____TtC9DashBoard20DBCornerRadiusWindow_cornerRadius;
  swift_beginAccess();
  *(&self->super.super.super.super.super.super.isa + v5) = a3;
  v6 = self;
  sub_2482A0EEC();
}

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9.receiver = self;
  v9.super_class = type metadata accessor for DBCornerRadiusWindow();
  v7 = v9.receiver;
  [(DBCornerRadiusWindow *)&v9 setFrame:x, y, width, height];
  v8 = *&v7[OBJC_IVAR____TtC9DashBoard20DBCornerRadiusWindow__containerView];
  [v7 bounds];
  [v8 setFrame_];
  [v7 layoutIfNeeded];
}

@end