@interface CalendarMonthHeaderView
- (_TtC8HealthUI23CalendarMonthHeaderView)initWithCoder:(id)coder;
- (_TtC8HealthUI23CalendarMonthHeaderView)initWithFrame:(CGRect)frame;
- (void)applyLayoutAttributes:(id)attributes;
@end

@implementation CalendarMonthHeaderView

- (_TtC8HealthUI23CalendarMonthHeaderView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
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

- (_TtC8HealthUI23CalendarMonthHeaderView)initWithCoder:(id)coder
{
  sub_1C3D20374();
  sub_1C3D20364();
  sub_1C3D20314();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  coderCopy = coder;
  sub_1C3CF495C();
}

- (void)applyLayoutAttributes:(id)attributes
{
  sub_1C3D20374();
  sub_1C3D20364();
  sub_1C3D20314();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  attributesCopy = attributes;
  selfCopy = self;
  sub_1C3CF4560(attributesCopy);
}

@end