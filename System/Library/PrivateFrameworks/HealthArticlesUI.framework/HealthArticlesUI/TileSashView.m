@interface TileSashView
- (_TtC16HealthArticlesUI12TileSashView)initWithCoder:(id)a3;
- (_TtC16HealthArticlesUI12TileSashView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)preferredContentSizeCategoryDidChange;
@end

@implementation TileSashView

- (_TtC16HealthArticlesUI12TileSashView)initWithFrame:(CGRect)a3
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

  v7 = sub_25133E0B0(x, y, width, height);

  return v7;
}

- (_TtC16HealthArticlesUI12TileSashView)initWithCoder:(id)a3
{
  sub_25133F8F4();
  sub_25133F8E4();
  sub_25133F894();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = sub_25133E3C4(a3);

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

  v3 = self;
  [(TileSashView *)v3 frame];
  v5 = v4;
  [(TileSashView *)v3 layoutMargins];
  v7 = v6;
  [(TileSashView *)v3 layoutMargins];
  v9 = v5 - (v7 + v8);
  v10 = sub_25133DFA0();
  [v10 setPreferredMaxLayoutWidth_];

  v11 = sub_25133DFAC();
  [v11 setPreferredMaxLayoutWidth_];

  v12.receiver = v3;
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

  v3 = self;
  sub_25133E784();
}

@end