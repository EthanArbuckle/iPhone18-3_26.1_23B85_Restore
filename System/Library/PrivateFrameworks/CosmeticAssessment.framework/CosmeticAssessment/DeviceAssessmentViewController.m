@interface DeviceAssessmentViewController
- (BOOL)accessibilityPerformEscape;
- (_TtC18CosmeticAssessment30DeviceAssessmentViewController)initWithCoder:(id)a3;
- (_TtC18CosmeticAssessment30DeviceAssessmentViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)viewDidLoad;
@end

@implementation DeviceAssessmentViewController

- (_TtC18CosmeticAssessment30DeviceAssessmentViewController)initWithCoder:(id)a3
{
  sub_247D1FEA8();
  sub_247D1FE98();
  sub_247D1FE38();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = a3;
  sub_247CDA3F4();
}

- (void)viewDidLoad
{
  sub_247D1FEA8();
  sub_247D1FE98();
  sub_247D1FE38();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = self;
  DeviceAssessmentViewController.viewDidLoad()();
}

- (BOOL)accessibilityPerformEscape
{
  sub_247D1FEA8();
  sub_247D1FE98();
  sub_247D1FE38();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = self;
  DeviceAssessmentViewController.accessibilityPerformEscape()();

  return 1;
}

- (_TtC18CosmeticAssessment30DeviceAssessmentViewController)initWithNibName:(id)a3 bundle:(id)a4
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