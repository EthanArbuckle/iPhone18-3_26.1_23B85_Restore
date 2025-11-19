@interface ActivityRingCircleView
- (CGSize)sizeThatFits:(CGSize)a3;
- (_TtC19HealthVisualization22ActivityRingCircleView)initWithCoder:(id)a3;
- (_TtC19HealthVisualization22ActivityRingCircleView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation ActivityRingCircleView

- (_TtC19HealthVisualization22ActivityRingCircleView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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
  v8 = [(ActivityRingCircleView *)&v12 initWithFrame:x, y, width, height];
  v9 = sub_1D14F78D8();
  [(ActivityRingCircleView *)v8 addSubview:v9];

  v10 = [objc_opt_self() clearColor];
  [(ActivityRingCircleView *)v8 setBackgroundColor:v10];

  return v8;
}

- (_TtC19HealthVisualization22ActivityRingCircleView)initWithCoder:(id)a3
{
  sub_1D15A4148();
  sub_1D15A4138();
  sub_1D15A4128();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = sub_1D14F7AE4(a3);

  return v4;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  sub_1D15A4148();
  sub_1D15A4138();
  sub_1D15A4128();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = self;
  v5 = [(ActivityRingCircleView *)v4 traitCollection];
  v6 = [v5 preferredContentSizeCategory];

  LOBYTE(v5) = sub_1D15A44B8();

  v7 = 48.0;
  if (v5)
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

  v3 = self;
  sub_1D14F7D58();
}

@end