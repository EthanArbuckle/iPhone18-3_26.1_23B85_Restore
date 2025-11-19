@interface AnimatableSearchBar
- (_TtC13FitnessCoreUI19AnimatableSearchBar)initWithCoder:(id)a3;
- (_TtC13FitnessCoreUI19AnimatableSearchBar)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation AnimatableSearchBar

- (void)layoutSubviews
{
  sub_20C3E8E3C();
  sub_20C3E8E2C();
  sub_20C3E8E1C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = self;
  sub_20C3DA96C();
}

- (_TtC13FitnessCoreUI19AnimatableSearchBar)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  sub_20C3E8E3C();
  sub_20C3E8E2C();
  sub_20C3E8E1C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC13FitnessCoreUI19AnimatableSearchBar_isAnimating) = 0;
  v10.receiver = self;
  v10.super_class = type metadata accessor for AnimatableSearchBar();
  v8 = [(AnimatableSearchBar *)&v10 initWithFrame:x, y, width, height];

  return v8;
}

- (_TtC13FitnessCoreUI19AnimatableSearchBar)initWithCoder:(id)a3
{
  sub_20C3E8E3C();
  sub_20C3E8E2C();
  sub_20C3E8E1C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC13FitnessCoreUI19AnimatableSearchBar_isAnimating) = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for AnimatableSearchBar();
  v5 = a3;
  v6 = [(AnimatableSearchBar *)&v8 initWithCoder:v5];

  if (v6)
  {
  }

  return v6;
}

@end