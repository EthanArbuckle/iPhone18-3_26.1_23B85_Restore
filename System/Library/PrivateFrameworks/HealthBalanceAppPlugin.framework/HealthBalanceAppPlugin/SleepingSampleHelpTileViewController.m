@interface SleepingSampleHelpTileViewController
- (_TtC22HealthBalanceAppPlugin36SleepingSampleHelpTileViewController)initWithCoder:(id)a3;
- (_TtC22HealthBalanceAppPlugin36SleepingSampleHelpTileViewController)initWithNibName:(id)a3 bundle:(id)a4;
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

  v4 = self;
  v3 = sub_25137B264();
  [(SleepingSampleHelpTileViewController *)v4 setView:v3];
}

- (_TtC22HealthBalanceAppPlugin36SleepingSampleHelpTileViewController)initWithNibName:(id)a3 bundle:(id)a4
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
    sub_251385E64();
    a3 = v7;
  }

  v8 = self + OBJC_IVAR____TtC22HealthBalanceAppPlugin36SleepingSampleHelpTileViewController_context;
  *v8 = 0u;
  *(v8 + 1) = 0u;
  *(v8 + 4) = 0;
  v9 = OBJC_IVAR____TtC22HealthBalanceAppPlugin36SleepingSampleHelpTileViewController_configuration;
  v10 = type metadata accessor for SleepingSampleHelpTileConfiguration(0);
  (*(*(v10 - 8) + 56))(self + v9, 1, 1, v10);
  *(&self->super.super.super.isa + OBJC_IVAR____TtC22HealthBalanceAppPlugin36SleepingSampleHelpTileViewController____lazy_storage___tileView) = 0;
  v11 = a4;
  if (a3)
  {
    v12 = sub_251385E34();
  }

  else
  {
    v12 = 0;
  }

  v15.receiver = self;
  v15.super_class = type metadata accessor for SleepingSampleHelpTileViewController(0);
  v13 = [(SleepingSampleHelpTileViewController *)&v15 initWithNibName:v12 bundle:a4];

  return v13;
}

- (_TtC22HealthBalanceAppPlugin36SleepingSampleHelpTileViewController)initWithCoder:(id)a3
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
  v8 = a3;
  v9 = [(SleepingSampleHelpTileViewController *)&v11 initWithCoder:v8];

  if (v9)
  {
  }

  return v9;
}

@end