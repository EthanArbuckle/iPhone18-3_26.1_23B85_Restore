@interface CalendarMonthHeaderView
- (_TtC8HealthUI23CalendarMonthHeaderView)initWithCoder:(id)a3;
- (_TtC8HealthUI23CalendarMonthHeaderView)initWithFrame:(CGRect)a3;
- (void)applyLayoutAttributes:(id)a3;
@end

@implementation CalendarMonthHeaderView

- (_TtC8HealthUI23CalendarMonthHeaderView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  sub_1C3D20374();
  sub_1C3D20364();
  sub_1C3D20314();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = CalendarMonthHeaderView.init(frame:)(x, y, width, height);

  return v7;
}

- (_TtC8HealthUI23CalendarMonthHeaderView)initWithCoder:(id)a3
{
  sub_1C3D20374();
  sub_1C3D20364();
  sub_1C3D20314();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = a3;
  sub_1C3CF495C();
}

- (void)applyLayoutAttributes:(id)a3
{
  sub_1C3D20374();
  sub_1C3D20364();
  sub_1C3D20314();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = a3;
  v6 = self;
  sub_1C3CF4560(v5);
}

@end