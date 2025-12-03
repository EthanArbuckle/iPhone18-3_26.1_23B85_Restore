@interface ActivityRingCircleView
- (CGSize)sizeThatFits:(CGSize)fits;
- (_TtC19HealthVisualization22ActivityRingCircleView)initWithCoder:(id)coder;
- (_TtC19HealthVisualization22ActivityRingCircleView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation ActivityRingCircleView

- (_TtC19HealthVisualization22ActivityRingCircleView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  sub_1D15A4148();
  sub_1D15A4138();
  sub_1D15A4128();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *(&self->super.super.super.isa + OBJC_IVAR____TtC19HealthVisualization22ActivityRingCircleView____lazy_storage___activityRingView) = 0;
  v12.receiver = self;
  v12.super_class = type metadata accessor for ActivityRingCircleView();
  height = [(ActivityRingCircleView *)&v12 initWithFrame:x, y, width, height];
  v9 = sub_1D14F78D8();
  [(ActivityRingCircleView *)height addSubview:v9];

  clearColor = [objc_opt_self() clearColor];
  [(ActivityRingCircleView *)height setBackgroundColor:clearColor];

  return height;
}

- (_TtC19HealthVisualization22ActivityRingCircleView)initWithCoder:(id)coder
{
  sub_1D15A4148();
  sub_1D15A4138();
  sub_1D15A4128();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = sub_1D14F7AE4(coder);

  return v4;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  sub_1D15A4148();
  sub_1D15A4138();
  sub_1D15A4128();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  selfCopy = self;
  traitCollection = [(ActivityRingCircleView *)selfCopy traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];

  LOBYTE(traitCollection) = sub_1D15A44B8();

  v7 = 48.0;
  if (traitCollection)
  {
    v7 = 84.0;
  }

  v8 = v7;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)layoutSubviews
{
  sub_1D15A4148();
  sub_1D15A4138();
  sub_1D15A4128();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  selfCopy = self;
  sub_1D14F7D58();
}

@end