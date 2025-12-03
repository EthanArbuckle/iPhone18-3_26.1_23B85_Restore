@interface AperturedCameraSessionOverlayView
- (_TtC18CosmeticAssessment33AperturedCameraSessionOverlayView)initWithCoder:(id)coder;
- (_TtC18CosmeticAssessment33AperturedCameraSessionOverlayView)initWithFrame:(CGRect)frame;
- (void)drawRect:(CGRect)rect;
@end

@implementation AperturedCameraSessionOverlayView

- (_TtC18CosmeticAssessment33AperturedCameraSessionOverlayView)initWithCoder:(id)coder
{
  sub_247D1FEA8();
  sub_247D1FE98();
  sub_247D1FE38();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_247CC81F0(coder);

  return 0;
}

- (void)drawRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  sub_247D1FEA8();
  sub_247D1FE98();
  sub_247D1FE38();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  selfCopy = self;
  sub_247CC932C(x, y, width, height);
}

- (_TtC18CosmeticAssessment33AperturedCameraSessionOverlayView)initWithFrame:(CGRect)frame
{
  sub_247D1FEA8();
  sub_247D1FE98();
  sub_247D1FE38();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end