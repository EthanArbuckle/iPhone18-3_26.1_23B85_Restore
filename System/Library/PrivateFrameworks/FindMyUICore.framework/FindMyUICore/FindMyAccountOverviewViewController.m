@interface FindMyAccountOverviewViewController
- (FindMyAccountOverviewViewController)initWithCoder:(id)a3;
- (FindMyAccountOverviewViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)viewDidLoad;
@end

@implementation FindMyAccountOverviewViewController

- (void)viewDidLoad
{
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = self;
  FindMyAccountOverviewViewController.viewDidLoad()();
}

- (FindMyAccountOverviewViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (a3)
  {
    sub_24B2D5394();
    v7 = a4;
    a3 = sub_24B2D5374();
  }

  else
  {
    v8 = a4;
  }

  v11.receiver = self;
  v11.super_class = FindMyAccountOverviewViewController;
  v9 = [(FindMyAccountOverviewViewController *)&v11 initWithNibName:a3 bundle:a4];

  return v9;
}

- (FindMyAccountOverviewViewController)initWithCoder:(id)a3
{
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8.receiver = self;
  v8.super_class = FindMyAccountOverviewViewController;
  v5 = a3;
  v6 = [(FindMyAccountOverviewViewController *)&v8 initWithCoder:v5];

  if (v6)
  {
  }

  return v6;
}

@end