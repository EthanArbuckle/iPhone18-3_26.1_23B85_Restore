@interface HiddenTitleView
- (_TtC13FitnessCoreUI15HiddenTitleView)initWithCoder:(id)coder;
- (_TtC13FitnessCoreUI15HiddenTitleView)initWithFrame:(CGRect)frame;
@end

@implementation HiddenTitleView

- (_TtC13FitnessCoreUI15HiddenTitleView)initWithFrame:(CGRect)frame
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
  v10.super_class = type metadata accessor for HiddenTitleView();
  height = [(_UINavigationBarTitleView *)&v10 initWithFrame:x, y, width, height];
  [(_UINavigationBarTitleView *)height setHideStandardTitle:1];

  return height;
}

- (_TtC13FitnessCoreUI15HiddenTitleView)initWithCoder:(id)coder
{
  sub_20C3E8E3C();
  sub_20C3E8E2C();
  sub_20C3E8E1C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = sub_20C3E921C();
  __break(1u);
  return result;
}

@end