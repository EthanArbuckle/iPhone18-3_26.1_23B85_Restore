@interface FloatingTabsViewController
- (_TtC13FitnessCoreUI26FloatingTabsViewController)initWithCoder:(id)a3;
- (_TtC13FitnessCoreUI26FloatingTabsViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)expandTabBarButtonTapped:(id)a3;
- (void)viewLayoutMarginsDidChange;
@end

@implementation FloatingTabsViewController

- (_TtC13FitnessCoreUI26FloatingTabsViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  sub_20C3E8E3C();
  sub_20C3E8E2C();
  sub_20C3E8E1C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (a3)
  {
    v6 = sub_20C3E8C2C();
    a3 = v7;
  }

  else
  {
    v6 = 0;
  }

  v8 = a4;
  FloatingTabsViewController.init(nibName:bundle:)(v6, a3, a4);
  v10 = v9;

  return v10;
}

- (_TtC13FitnessCoreUI26FloatingTabsViewController)initWithCoder:(id)a3
{
  sub_20C3E8E3C();
  sub_20C3E8E2C();
  sub_20C3E8E1C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = a3;
  sub_20C3D5088();
}

- (void)viewLayoutMarginsDidChange
{
  sub_20C3E8E3C();
  sub_20C3E8E2C();
  sub_20C3E8E1C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = self;
  sub_20C3D2030();
}

- (void)expandTabBarButtonTapped:(id)a3
{
  sub_20C3E8E3C();
  sub_20C3E8E2C();
  sub_20C3E8E1C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = self;
  FloatingTabsViewController.expandTabBar(animated:)(1);
}

@end