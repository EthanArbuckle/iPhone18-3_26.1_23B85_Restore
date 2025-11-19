@interface FloatingTabBarContentView
- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (_TtC13FitnessCoreUI25FloatingTabBarContentView)initWithCoder:(id)a3;
- (_TtC13FitnessCoreUI25FloatingTabBarContentView)initWithFrame:(CGRect)a3;
- (void)handleSelectionGesture:(id)a3;
- (void)layoutSubviews;
@end

@implementation FloatingTabBarContentView

- (_TtC13FitnessCoreUI25FloatingTabBarContentView)initWithCoder:(id)a3
{
  sub_20C3E8E3C();
  sub_20C3E8E2C();
  sub_20C3E8E1C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = a3;
  sub_20C3B20C8();
}

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
  sub_20C3AB6B0();
}

- (void)handleSelectionGesture:(id)a3
{
  sub_20C3E8E3C();
  sub_20C3E8E2C();
  sub_20C3E8E1C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = a3;
  v6 = self;
  sub_20C3AF5F8(v5);
}

- (_TtC13FitnessCoreUI25FloatingTabBarContentView)initWithFrame:(CGRect)a3
{
  sub_20C3E8E3C();
  sub_20C3E8E2C();
  sub_20C3E8E1C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  sub_20C3E8E3C();
  sub_20C3E8E2C();
  sub_20C3E8E1C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  return 1;
}

- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4
{
  sub_20C3E8E3C();
  sub_20C3E8E2C();
  sub_20C3E8E1C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  return 0;
}

@end