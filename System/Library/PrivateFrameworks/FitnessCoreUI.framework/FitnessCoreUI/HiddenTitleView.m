@interface HiddenTitleView
- (_TtC13FitnessCoreUI15HiddenTitleView)initWithCoder:(id)a3;
- (_TtC13FitnessCoreUI15HiddenTitleView)initWithFrame:(CGRect)a3;
@end

@implementation HiddenTitleView

- (_TtC13FitnessCoreUI15HiddenTitleView)initWithFrame:(CGRect)a3
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

  v10.receiver = self;
  v10.super_class = type metadata accessor for HiddenTitleView();
  v8 = [(_UINavigationBarTitleView *)&v10 initWithFrame:x, y, width, height];
  [(_UINavigationBarTitleView *)v8 setHideStandardTitle:1];

  return v8;
}

- (_TtC13FitnessCoreUI15HiddenTitleView)initWithCoder:(id)a3
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