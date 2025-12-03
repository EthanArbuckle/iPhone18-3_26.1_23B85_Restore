@interface CustomContentViewControllerView
- (_TtC16HealthArticlesUI31CustomContentViewControllerView)initWithCoder:(id)coder;
- (_TtC16HealthArticlesUI31CustomContentViewControllerView)initWithFrame:(CGRect)frame;
@end

@implementation CustomContentViewControllerView

- (_TtC16HealthArticlesUI31CustomContentViewControllerView)initWithFrame:(CGRect)frame
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

  *(&self->super.super.super.isa + OBJC_IVAR____TtC16HealthArticlesUI31CustomContentViewControllerView_customViewController) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC16HealthArticlesUI31CustomContentViewControllerView_customView) = 0;
  v10.receiver = self;
  v10.super_class = type metadata accessor for CustomContentViewControllerView();
  height = [(CustomContentViewControllerView *)&v10 initWithFrame:x, y, width, height];
  [(CustomContentViewControllerView *)height setPreservesSuperviewLayoutMargins:1];

  return height;
}

- (_TtC16HealthArticlesUI31CustomContentViewControllerView)initWithCoder:(id)coder
{
  sub_25133F8F4();
  sub_25133F8E4();
  sub_25133F894();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *(&self->super.super.super.isa + OBJC_IVAR____TtC16HealthArticlesUI31CustomContentViewControllerView_customViewController) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC16HealthArticlesUI31CustomContentViewControllerView_customView) = 0;
  result = sub_25133FC14();
  __break(1u);
  return result;
}

@end