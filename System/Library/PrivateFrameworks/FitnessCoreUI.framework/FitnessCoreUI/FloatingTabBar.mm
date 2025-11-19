@interface FloatingTabBar
- (CGSize)intrinsicContentSize;
- (_TtC13FitnessCoreUI14FloatingTabBar)initWithCoder:(id)a3;
- (_TtC13FitnessCoreUI14FloatingTabBar)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation FloatingTabBar

- (CGSize)intrinsicContentSize
{
  sub_20C3E8E3C();
  sub_20C3E8E2C();
  sub_20C3E8E1C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (*(&self->super.super._responderFlags + OBJC_IVAR____TtC13FitnessCoreUI14FloatingTabBar_minimumHeight))
  {
    v3 = *MEMORY[0x277D77260];

    v4 = v3;
  }

  else
  {
    v5 = *(&self->super.super.super.isa + OBJC_IVAR____TtC13FitnessCoreUI14FloatingTabBar_minimumHeight);
    v3 = *MEMORY[0x277D77260];

    v4 = v5 + 8.0;
  }

  v6 = v3;
  result.height = v4;
  result.width = v6;
  return result;
}

- (_TtC13FitnessCoreUI14FloatingTabBar)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  sub_20C3E8E3C();
  sub_20C3E8E2C();
  sub_20C3E8E1C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  FloatingTabBar.init(frame:)(x, y, width, height);
  v8 = v7;

  return v8;
}

- (_TtC13FitnessCoreUI14FloatingTabBar)initWithCoder:(id)a3
{
  sub_20C3E8E3C();
  sub_20C3E8E2C();
  sub_20C3E8E1C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = a3;
  _s13FitnessCoreUI14FloatingTabBarC5coderACSgSo7NSCoderC_tcfc_0();
}

- (void)layoutSubviews
{
  sub_20C3E8E3C();
  sub_20C3E8E2C();
  sub_20C3E8E1C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4.receiver = self;
  v4.super_class = type metadata accessor for FloatingTabBar();
  v3 = self;
  [(FloatingTabBar *)&v4 layoutSubviews];
  sub_20C3979A8(0);
}

@end