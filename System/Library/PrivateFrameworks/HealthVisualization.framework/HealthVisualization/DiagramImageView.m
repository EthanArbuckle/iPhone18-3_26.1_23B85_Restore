@interface DiagramImageView
- (CGRect)bounds;
- (CGRect)frame;
- (CGSize)intrinsicContentSize;
- (_TtC19HealthVisualization16DiagramImageView)initWithCoder:(id)a3;
- (_TtC19HealthVisualization16DiagramImageView)initWithFrame:(CGRect)a3;
- (_TtC19HealthVisualization16DiagramImageView)initWithImage:(id)a3;
- (_TtC19HealthVisualization16DiagramImageView)initWithImage:(id)a3 highlightedImage:(id)a4;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation DiagramImageView

- (_TtC19HealthVisualization16DiagramImageView)initWithFrame:(CGRect)a3
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

  v7 = DiagramImageView.init(frame:)(x, y, width, height);

  return v7;
}

- (CGRect)bounds
{
  v2 = sub_1D144E6D0(self, a2, 57, &selRef_bounds);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGRect)frame
{
  v2 = sub_1D144E6D0(self, a2, 51, &selRef_frame);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)traitCollectionDidChange:(id)a3
{
  sub_1D15A4148();
  sub_1D15A4138();
  sub_1D15A4128();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = a3;
  v6 = self;
  sub_1D144FE20(a3);
}

- (CGSize)intrinsicContentSize
{
  sub_1D15A4148();
  sub_1D15A4138();
  sub_1D15A4128();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = *MEMORY[0x1E69DE788];

  v3 = v2;
  v4 = v2;
  result.height = v4;
  result.width = v3;
  return result;
}

- (_TtC19HealthVisualization16DiagramImageView)initWithCoder:(id)a3
{
  sub_1D15A4148();
  sub_1D15A4138();
  sub_1D15A4128();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = DiagramImageView.init(coder:)(a3);

  return v4;
}

- (_TtC19HealthVisualization16DiagramImageView)initWithImage:(id)a3
{
  sub_1D15A4148();
  sub_1D15A4138();
  sub_1D15A4128();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC19HealthVisualization16DiagramImageView)initWithImage:(id)a3 highlightedImage:(id)a4
{
  sub_1D15A4148();
  sub_1D15A4138();
  sub_1D15A4128();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end