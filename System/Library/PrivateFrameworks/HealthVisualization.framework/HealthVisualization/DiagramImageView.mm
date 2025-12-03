@interface DiagramImageView
- (CGRect)bounds;
- (CGRect)frame;
- (CGSize)intrinsicContentSize;
- (_TtC19HealthVisualization16DiagramImageView)initWithCoder:(id)coder;
- (_TtC19HealthVisualization16DiagramImageView)initWithFrame:(CGRect)frame;
- (_TtC19HealthVisualization16DiagramImageView)initWithImage:(id)image;
- (_TtC19HealthVisualization16DiagramImageView)initWithImage:(id)image highlightedImage:(id)highlightedImage;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation DiagramImageView

- (_TtC19HealthVisualization16DiagramImageView)initWithFrame:(CGRect)frame
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

- (void)traitCollectionDidChange:(id)change
{
  sub_1D15A4148();
  sub_1D15A4138();
  sub_1D15A4128();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  changeCopy = change;
  selfCopy = self;
  sub_1D144FE20(change);
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

- (_TtC19HealthVisualization16DiagramImageView)initWithCoder:(id)coder
{
  sub_1D15A4148();
  sub_1D15A4138();
  sub_1D15A4128();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = DiagramImageView.init(coder:)(coder);

  return v4;
}

- (_TtC19HealthVisualization16DiagramImageView)initWithImage:(id)image
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

- (_TtC19HealthVisualization16DiagramImageView)initWithImage:(id)image highlightedImage:(id)highlightedImage
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