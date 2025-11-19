@interface HKTableViewController
- (HKTableViewController)init;
- (HKTableViewController)initWithUsingInsetStyling:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation HKTableViewController

- (HKTableViewController)init
{
  v3.receiver = self;
  v3.super_class = HKTableViewController;
  result = [(HKTableViewController *)&v3 initWithStyle:2];
  if (result)
  {
    result->_useInsetStyling = 1;
  }

  return result;
}

- (HKTableViewController)initWithUsingInsetStyling:(BOOL)a3
{
  if (a3)
  {
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  v6.receiver = self;
  v6.super_class = HKTableViewController;
  result = [(HKTableViewController *)&v6 initWithStyle:v4];
  if (result)
  {
    result->_useInsetStyling = a3;
  }

  return result;
}

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = HKTableViewController;
  [(HKTableViewController *)&v7 viewDidLoad];
  useInsetStyling = self->_useInsetStyling;
  v4 = [(HKTableViewController *)self tableView];
  [v4 _setSectionContentInsetFollowsLayoutMargins:useInsetStyling];

  if (self->_useInsetStyling)
  {
    v5 = [(HKTableViewController *)self tableView];
    [v5 _setSectionCornerRadius:26.0];

    v6 = [(HKTableViewController *)self tableView];
    [v6 _setSectionContentInset:{0.0, 16.0, 20.0, 16.0}];
  }
}

@end