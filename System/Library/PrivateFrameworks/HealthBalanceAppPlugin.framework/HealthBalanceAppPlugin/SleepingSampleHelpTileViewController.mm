@interface SleepingSampleHelpTileViewController
- (_TtC22HealthBalanceAppPlugin36SleepingSampleHelpTileViewController)initWithCoder:(id)coder;
- (_TtC22HealthBalanceAppPlugin36SleepingSampleHelpTileViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)loadView;
@end

@implementation SleepingSampleHelpTileViewController

- (void)loadView
{
  sub_251385F74();
  sub_251385F64();
  sub_251385F54();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  selfCopy = self;
  v3 = sub_25137B264();
  [(SleepingSampleHelpTileViewController *)selfCopy setView:v3];
}

- (_TtC22HealthBalanceAppPlugin36SleepingSampleHelpTileViewController)initWithNibName:(id)name bundle:(id)bundle
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
    sub_251385E64();
    name = v7;
  }

  v8 = self + OBJC_IVAR____TtC22HealthBalanceAppPlugin36SleepingSampleHelpTileViewController_context;
  *v8 = 0u;
  *(v8 + 1) = 0u;
  *(v8 + 4) = 0;
  v9 = OBJC_IVAR____TtC22HealthBalanceAppPlugin36SleepingSampleHelpTileViewController_configuration;
  v10 = type metadata accessor for SleepingSampleHelpTileConfiguration(0);
  (*(*(v10 - 8) + 56))(self + v9, 1, 1, v10);
  *(&self->super.super.super.isa + OBJC_IVAR____TtC22HealthBalanceAppPlugin36SleepingSampleHelpTileViewController____lazy_storage___tileView) = 0;
  bundleCopy = bundle;
  if (name)
  {
    v12 = sub_251385E34();
  }

  else
  {
    v12 = 0;
  }

  v15.receiver = self;
  v15.super_class = type metadata accessor for SleepingSampleHelpTileViewController(0);
  v13 = [(SleepingSampleHelpTileViewController *)&v15 initWithNibName:v12 bundle:bundle];

  return v13;
}

- (_TtC22HealthBalanceAppPlugin36SleepingSampleHelpTileViewController)initWithCoder:(id)coder
{
  sub_251385F74();
  sub_251385F64();
  sub_251385F54();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = self + OBJC_IVAR____TtC22HealthBalanceAppPlugin36SleepingSampleHelpTileViewController_context;
  *v5 = 0u;
  *(v5 + 1) = 0u;
  *(v5 + 4) = 0;
  v6 = OBJC_IVAR____TtC22HealthBalanceAppPlugin36SleepingSampleHelpTileViewController_configuration;
  v7 = type metadata accessor for SleepingSampleHelpTileConfiguration(0);
  (*(*(v7 - 8) + 56))(self + v6, 1, 1, v7);
  *(&self->super.super.super.isa + OBJC_IVAR____TtC22HealthBalanceAppPlugin36SleepingSampleHelpTileViewController____lazy_storage___tileView) = 0;
  v11.receiver = self;
  v11.super_class = type metadata accessor for SleepingSampleHelpTileViewController(0);
  coderCopy = coder;
  v9 = [(SleepingSampleHelpTileViewController *)&v11 initWithCoder:coderCopy];

  if (v9)
  {
  }

  return v9;
}

@end