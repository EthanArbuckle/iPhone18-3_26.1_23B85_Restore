@interface DynamicHeightTextView
- (_TtC16HealthArticlesUI21DynamicHeightTextView)initWithCoder:(id)coder;
- (_TtC16HealthArticlesUI21DynamicHeightTextView)initWithFrame:(CGRect)frame;
- (void)preferredContentSizeCategoryDidChange;
@end

@implementation DynamicHeightTextView

- (_TtC16HealthArticlesUI21DynamicHeightTextView)initWithFrame:(CGRect)frame
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

  v7 = sub_25132D704(x, y, width, height);

  return v7;
}

- (_TtC16HealthArticlesUI21DynamicHeightTextView)initWithCoder:(id)coder
{
  sub_25133F8F4();
  sub_25133F8E4();
  sub_25133F894();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *(&self->super.super.super.isa + OBJC_IVAR____TtC16HealthArticlesUI21DynamicHeightTextView____lazy_storage___textView) = 0;
  v4 = (&self->super.super.super.isa + OBJC_IVAR____TtC16HealthArticlesUI21DynamicHeightTextView_text);
  *v4 = 0;
  v4[1] = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC16HealthArticlesUI21DynamicHeightTextView_attributes) = 7;
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

  selfCopy = self;
  sub_25132D374();
}

@end