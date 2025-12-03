@interface FloatingTabsViewController
- (_TtC13FitnessCoreUI26FloatingTabsViewController)initWithCoder:(id)coder;
- (_TtC13FitnessCoreUI26FloatingTabsViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)expandTabBarButtonTapped:(id)tapped;
- (void)viewLayoutMarginsDidChange;
@end

@implementation FloatingTabsViewController

- (_TtC13FitnessCoreUI26FloatingTabsViewController)initWithNibName:(id)name bundle:(id)bundle
{
  sub_20C3E8E3C();
  sub_20C3E8E2C();
  sub_20C3E8E1C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (name)
  {
    v6 = sub_20C3E8C2C();
    name = v7;
  }

  else
  {
    v6 = 0;
  }

  bundleCopy = bundle;
  FloatingTabsViewController.init(nibName:bundle:)(v6, name, bundle);
  v10 = v9;

  return v10;
}

- (_TtC13FitnessCoreUI26FloatingTabsViewController)initWithCoder:(id)coder
{
  sub_20C3E8E3C();
  sub_20C3E8E2C();
  sub_20C3E8E1C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  coderCopy = coder;
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

  selfCopy = self;
  sub_20C3D2030();
}

- (void)expandTabBarButtonTapped:(id)tapped
{
  sub_20C3E8E3C();
  sub_20C3E8E2C();
  sub_20C3E8E1C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  selfCopy = self;
  FloatingTabsViewController.expandTabBar(animated:)(1);
}

@end