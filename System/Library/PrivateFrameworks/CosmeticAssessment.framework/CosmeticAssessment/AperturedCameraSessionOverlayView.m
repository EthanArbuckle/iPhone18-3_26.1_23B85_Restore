@interface AperturedCameraSessionOverlayView
- (_TtC18CosmeticAssessment33AperturedCameraSessionOverlayView)initWithCoder:(id)a3;
- (_TtC18CosmeticAssessment33AperturedCameraSessionOverlayView)initWithFrame:(CGRect)a3;
- (void)drawRect:(CGRect)a3;
@end

@implementation AperturedCameraSessionOverlayView

- (_TtC18CosmeticAssessment33AperturedCameraSessionOverlayView)initWithCoder:(id)a3
{
  sub_247D1FEA8();
  sub_247D1FE98();
  sub_247D1FE38();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_247CC81F0(a3);

  return 0;
}

- (void)drawRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  sub_247D1FEA8();
  sub_247D1FE98();
  sub_247D1FE38();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8 = self;
  sub_247CC932C(x, y, width, height);
}

- (_TtC18CosmeticAssessment33AperturedCameraSessionOverlayView)initWithFrame:(CGRect)a3
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