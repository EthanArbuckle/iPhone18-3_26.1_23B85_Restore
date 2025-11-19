@interface SleepingSampleChangesAlertTileViewController
- (NSString)title;
- (_TtC22HealthBalanceAppPlugin44SleepingSampleChangesAlertTileViewController)initWithCoder:(id)a3;
- (_TtC22HealthBalanceAppPlugin44SleepingSampleChangesAlertTileViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)setTitle:(id)a3;
- (void)viewDidLoad;
@end

@implementation SleepingSampleChangesAlertTileViewController

- (void)viewDidLoad
{
  sub_251385F74();
  sub_251385F64();
  sub_251385F54();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = self;
  sub_25134E710();
}

- (_TtC22HealthBalanceAppPlugin44SleepingSampleChangesAlertTileViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  sub_251385F74();
  sub_251385F64();
  sub_251385F54();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (a3)
  {
    v6 = sub_251385E64();
    a3 = v7;
  }

  else
  {
    v6 = 0;
  }

  v8 = a4;
  v9 = SleepingSampleChangesAlertTileViewController.init(nibName:bundle:)(v6, a3, a4);

  return v9;
}

- (_TtC22HealthBalanceAppPlugin44SleepingSampleChangesAlertTileViewController)initWithCoder:(id)a3
{
  sub_251385F74();
  sub_251385F64();
  sub_251385F54();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = SleepingSampleChangesAlertTileViewController.init(coder:)(a3);

  return v4;
}

- (NSString)title
{
  v2 = sub_251384A84();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = sub_251385E24();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  sub_251385F74();
  sub_251385F64();
  sub_251385F54();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_251385DB4();
  type metadata accessor for HealthBalanceAppPlugin();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = [objc_opt_self() bundleForClass_];
  sub_251384A74();
  sub_251385E84();
  v8 = sub_251385E34();

  return v8;
}

- (void)setTitle:(id)a3
{
  sub_251385F74();
  sub_251385F64();
  sub_251385F54();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }
}

@end