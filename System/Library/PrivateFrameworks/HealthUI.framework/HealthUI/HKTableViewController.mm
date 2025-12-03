@interface HKTableViewController
- (HKTableViewController)init;
- (HKTableViewController)initWithUsingInsetStyling:(BOOL)styling;
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

- (HKTableViewController)initWithUsingInsetStyling:(BOOL)styling
{
  if (styling)
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
    result->_useInsetStyling = styling;
  }

  return result;
}

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = HKTableViewController;
  [(HKTableViewController *)&v7 viewDidLoad];
  useInsetStyling = self->_useInsetStyling;
  tableView = [(HKTableViewController *)self tableView];
  [tableView _setSectionContentInsetFollowsLayoutMargins:useInsetStyling];

  if (self->_useInsetStyling)
  {
    tableView2 = [(HKTableViewController *)self tableView];
    [tableView2 _setSectionCornerRadius:26.0];

    tableView3 = [(HKTableViewController *)self tableView];
    [tableView3 _setSectionContentInset:{0.0, 16.0, 20.0, 16.0}];
  }
}

@end