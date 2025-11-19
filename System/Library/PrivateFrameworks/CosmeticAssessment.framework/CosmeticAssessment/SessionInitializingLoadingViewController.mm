@interface SessionInitializingLoadingViewController
- (_TtC18CosmeticAssessment40SessionInitializingLoadingViewController)initWithSpinnerText:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation SessionInitializingLoadingViewController

- (void)viewDidLoad
{
  ObjectType = swift_getObjectType();
  sub_247D1FEA8();
  sub_247D1FE98();
  sub_247D1FE38();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6.receiver = self;
  v6.super_class = ObjectType;
  v4 = self;
  [(OBBaseWelcomeController *)&v6 viewDidLoad];
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_247CC5F14(1, sub_247CE7E64, v5);
}

- (void)viewDidAppear:(BOOL)a3
{
  sub_247D1FEA8();
  sub_247D1FE98();
  sub_247D1FE38();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = self;
  sub_247CE78CC(a3);
}

- (_TtC18CosmeticAssessment40SessionInitializingLoadingViewController)initWithSpinnerText:(id)a3
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