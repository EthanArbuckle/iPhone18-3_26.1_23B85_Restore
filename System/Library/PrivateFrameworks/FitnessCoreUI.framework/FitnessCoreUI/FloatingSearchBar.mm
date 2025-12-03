@interface FloatingSearchBar
- (_TtC13FitnessCoreUI17FloatingSearchBar)initWithCoder:(id)coder;
- (_TtC13FitnessCoreUI17FloatingSearchBar)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation FloatingSearchBar

- (void)layoutSubviews
{
  sub_20C3E8E3C();
  sub_20C3E8E2C();
  sub_20C3E8E1C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  selfCopy = self;
  sub_20C3DBF6C();
}

- (_TtC13FitnessCoreUI17FloatingSearchBar)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  sub_20C3E8E3C();
  sub_20C3E8E2C();
  sub_20C3E8E1C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v10.receiver = self;
  v10.super_class = type metadata accessor for FloatingSearchBar();
  height = [(FloatingSearchBar *)&v10 initWithFrame:x, y, width, height];

  return height;
}

- (_TtC13FitnessCoreUI17FloatingSearchBar)initWithCoder:(id)coder
{
  sub_20C3E8E3C();
  sub_20C3E8E2C();
  sub_20C3E8E1C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8.receiver = self;
  v8.super_class = type metadata accessor for FloatingSearchBar();
  coderCopy = coder;
  v6 = [(FloatingSearchBar *)&v8 initWithCoder:coderCopy];

  if (v6)
  {
  }

  return v6;
}

@end