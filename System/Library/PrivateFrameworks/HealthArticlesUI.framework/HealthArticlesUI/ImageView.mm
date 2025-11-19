@interface ImageView
- (_TtC16HealthArticlesUI9ImageView)initWithCoder:(id)a3;
- (_TtC16HealthArticlesUI9ImageView)initWithFrame:(CGRect)a3;
@end

@implementation ImageView

- (_TtC16HealthArticlesUI9ImageView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  sub_25133F8F4();
  sub_25133F8E4();
  sub_25133F894();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = sub_25132CC24(x, y, width, height);

  return v7;
}

- (_TtC16HealthArticlesUI9ImageView)initWithCoder:(id)a3
{
  sub_25133F8F4();
  sub_25133F8E4();
  sub_25133F894();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = a3;
  sub_25132D1FC();
}

@end