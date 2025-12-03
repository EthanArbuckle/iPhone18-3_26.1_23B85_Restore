@interface SleepingSampleChangesAlertTileViewController
- (NSString)title;
- (_TtC22HealthBalanceAppPlugin44SleepingSampleChangesAlertTileViewController)initWithCoder:(id)coder;
- (_TtC22HealthBalanceAppPlugin44SleepingSampleChangesAlertTileViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)setTitle:(id)title;
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

  selfCopy = self;
  sub_25134E710();
}

- (_TtC22HealthBalanceAppPlugin44SleepingSampleChangesAlertTileViewController)initWithNibName:(id)name bundle:(id)bundle
{
  sub_251385F74();
  sub_251385F64();
  sub_251385F54();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (name)
  {
    v6 = sub_251385E64();
    name = v7;
  }

  else
  {
    v6 = 0;
  }

  bundleCopy = bundle;
  v9 = SleepingSampleChangesAlertTileViewController.init(nibName:bundle:)(v6, name, bundle);

  return v9;
}

- (_TtC22HealthBalanceAppPlugin44SleepingSampleChangesAlertTileViewController)initWithCoder:(id)coder
{
  sub_251385F74();
  sub_251385F64();
  sub_251385F54();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = SleepingSampleChangesAlertTileViewController.init(coder:)(coder);

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
  bundleForClass_ = [objc_opt_self() bundleForClass_];
  sub_251384A74();
  sub_251385E84();
  v8 = sub_251385E34();

  return v8;
}

- (void)setTitle:(id)title
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