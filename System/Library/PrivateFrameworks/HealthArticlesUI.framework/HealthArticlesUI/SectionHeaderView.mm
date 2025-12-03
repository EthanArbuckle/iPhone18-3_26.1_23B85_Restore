@interface SectionHeaderView
- (_TtC16HealthArticlesUI17SectionHeaderView)initWithCoder:(id)coder;
- (_TtC16HealthArticlesUI17SectionHeaderView)initWithFrame:(CGRect)frame;
@end

@implementation SectionHeaderView

- (_TtC16HealthArticlesUI17SectionHeaderView)initWithFrame:(CGRect)frame
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

  v10.receiver = self;
  v10.super_class = type metadata accessor for SectionHeaderView();
  height = [(DynamicHeightLabelView *)&v10 initWithFrame:x, y, width, height];

  return height;
}

- (_TtC16HealthArticlesUI17SectionHeaderView)initWithCoder:(id)coder
{
  sub_25133F8F4();
  sub_25133F8E4();
  sub_25133F894();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8.receiver = self;
  v8.super_class = type metadata accessor for SectionHeaderView();
  coderCopy = coder;
  v6 = [(DynamicHeightLabelView *)&v8 initWithCoder:coderCopy];

  if (v6)
  {
  }

  return v6;
}

@end