@interface ImageView
- (_TtC16HealthArticlesUI9ImageView)initWithCoder:(id)coder;
- (_TtC16HealthArticlesUI9ImageView)initWithFrame:(CGRect)frame;
@end

@implementation ImageView

- (_TtC16HealthArticlesUI9ImageView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
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

- (_TtC16HealthArticlesUI9ImageView)initWithCoder:(id)coder
{
  sub_25133F8F4();
  sub_25133F8E4();
  sub_25133F894();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  coderCopy = coder;
  sub_25132D1FC();
}

@end