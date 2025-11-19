@interface ButtonView
- (_TtC16HealthArticlesUI10ButtonView)initWithCoder:(id)a3;
- (_TtC16HealthArticlesUI10ButtonView)initWithFrame:(CGRect)a3;
- (void)performActionWithSender:(id)a3;
@end

@implementation ButtonView

- (_TtC16HealthArticlesUI10ButtonView)initWithFrame:(CGRect)a3
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

  v7 = sub_2513341EC(x, y, width, height);

  return v7;
}

- (_TtC16HealthArticlesUI10ButtonView)initWithCoder:(id)a3
{
  sub_25133F8F4();
  sub_25133F8E4();
  sub_25133F894();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = OBJC_IVAR____TtC16HealthArticlesUI10ButtonView_button;
  *(&self->super.super.super.isa + v4) = sub_2513340AC();
  v5 = (&self->super.super.super.isa + OBJC_IVAR____TtC16HealthArticlesUI10ButtonView_buttonAction);
  *v5 = 0;
  v5[1] = 0;
  result = sub_25133FC14();
  __break(1u);
  return result;
}

- (void)performActionWithSender:(id)a3
{
  sub_25133F8F4();
  sub_25133F8E4();
  sub_25133F894();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = *(&self->super.super.super.isa + OBJC_IVAR____TtC16HealthArticlesUI10ButtonView_buttonAction);
  if (v4)
  {
    v5 = *(&self->super.super._responderFlags + OBJC_IVAR____TtC16HealthArticlesUI10ButtonView_buttonAction);
    v6 = self;
    v7 = sub_25131ACF0(v4);
    v4(v7);

    sub_251324764(v4);
  }
}

@end