@interface ProgressViewController
- (_TtC18CosmeticAssessment22ProgressViewController)initWithSpinnerText:(id)a3;
- (void)viewDidLoad;
@end

@implementation ProgressViewController

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
  sub_247C7C744();
}

- (_TtC18CosmeticAssessment22ProgressViewController)initWithSpinnerText:(id)a3
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