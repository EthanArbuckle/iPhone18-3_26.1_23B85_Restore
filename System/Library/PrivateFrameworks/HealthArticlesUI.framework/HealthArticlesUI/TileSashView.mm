@interface TileSashView
- (_TtC16HealthArticlesUI12TileSashView)initWithCoder:(id)coder;
- (_TtC16HealthArticlesUI12TileSashView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)preferredContentSizeCategoryDidChange;
@end

@implementation TileSashView

- (_TtC16HealthArticlesUI12TileSashView)initWithFrame:(CGRect)frame
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

  v7 = sub_25133E0B0(x, y, width, height);

  return v7;
}

- (_TtC16HealthArticlesUI12TileSashView)initWithCoder:(id)coder
{
  sub_25133F8F4();
  sub_25133F8E4();
  sub_25133F894();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = sub_25133E3C4(coder);

  return v4;
}

- (void)layoutSubviews
{
  sub_25133F8F4();
  sub_25133F8E4();
  sub_25133F894();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  selfCopy = self;
  [(TileSashView *)selfCopy frame];
  v5 = v4;
  [(TileSashView *)selfCopy layoutMargins];
  v7 = v6;
  [(TileSashView *)selfCopy layoutMargins];
  v9 = v5 - (v7 + v8);
  v10 = sub_25133DFA0();
  [v10 setPreferredMaxLayoutWidth_];

  v11 = sub_25133DFAC();
  [v11 setPreferredMaxLayoutWidth_];

  v12.receiver = selfCopy;
  v12.super_class = type metadata accessor for TileSashView();
  [(TileSashView *)&v12 layoutSubviews];
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
  sub_25133E784();
}

@end