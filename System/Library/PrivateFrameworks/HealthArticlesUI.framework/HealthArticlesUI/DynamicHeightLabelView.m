@interface DynamicHeightLabelView
- (_TtC16HealthArticlesUI22DynamicHeightLabelView)initWithCoder:(id)a3;
- (_TtC16HealthArticlesUI22DynamicHeightLabelView)initWithFrame:(CGRect)a3;
- (void)preferredContentSizeCategoryDidChange;
@end

@implementation DynamicHeightLabelView

- (_TtC16HealthArticlesUI22DynamicHeightLabelView)initWithFrame:(CGRect)a3
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

  v7 = sub_25131ADD4(x, y, width, height);

  return v7;
}

- (_TtC16HealthArticlesUI22DynamicHeightLabelView)initWithCoder:(id)a3
{
  sub_25133F8F4();
  sub_25133F8E4();
  sub_25133F894();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *(&self->super.super.super.isa + OBJC_IVAR____TtC16HealthArticlesUI22DynamicHeightLabelView____lazy_storage___label) = 0;
  v4 = (&self->super.super.super.isa + OBJC_IVAR____TtC16HealthArticlesUI22DynamicHeightLabelView_text);
  *v4 = 0;
  v4[1] = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC16HealthArticlesUI22DynamicHeightLabelView_attributes) = 7;
  result = sub_25133FC14();
  __break(1u);
  return result;
}

- (void)preferredContentSizeCategoryDidChange
{
  sub_25133F8F4();
  sub_25133F8E4();
  sub_25133F894();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = self;
  sub_25131B180();
}

@end