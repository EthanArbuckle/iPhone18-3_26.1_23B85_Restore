@interface TitleView
- (_TtC16HealthArticlesUI9TitleView)initWithCoder:(id)a3;
- (_TtC16HealthArticlesUI9TitleView)initWithFrame:(CGRect)a3;
@end

@implementation TitleView

- (_TtC16HealthArticlesUI9TitleView)initWithFrame:(CGRect)a3
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

  v10.receiver = self;
  v10.super_class = type metadata accessor for TitleView();
  v8 = [(DynamicHeightLabelView *)&v10 initWithFrame:x, y, width, height];

  return v8;
}

- (_TtC16HealthArticlesUI9TitleView)initWithCoder:(id)a3
{
  sub_25133F8F4();
  sub_25133F8E4();
  sub_25133F894();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8.receiver = self;
  v8.super_class = type metadata accessor for TitleView();
  v5 = a3;
  v6 = [(DynamicHeightLabelView *)&v8 initWithCoder:v5];

  if (v6)
  {
  }

  return v6;
}

@end