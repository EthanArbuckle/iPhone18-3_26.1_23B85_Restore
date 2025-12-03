@interface AnimatableSearchBar
- (_TtC13FitnessCoreUI19AnimatableSearchBar)initWithCoder:(id)coder;
- (_TtC13FitnessCoreUI19AnimatableSearchBar)initWithFrame:(CGRect)frame;
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

  selfCopy = self;
  sub_20C3DA96C();
}

- (_TtC13FitnessCoreUI19AnimatableSearchBar)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
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
  height = [(AnimatableSearchBar *)&v10 initWithFrame:x, y, width, height];

  return height;
}

- (_TtC13FitnessCoreUI19AnimatableSearchBar)initWithCoder:(id)coder
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
  coderCopy = coder;
  v6 = [(AnimatableSearchBar *)&v8 initWithCoder:coderCopy];

  if (v6)
  {
  }

  return v6;
}

@end