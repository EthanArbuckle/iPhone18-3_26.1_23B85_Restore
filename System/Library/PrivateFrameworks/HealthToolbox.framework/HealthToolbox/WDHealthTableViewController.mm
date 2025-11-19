@interface WDHealthTableViewController
- (WDHealthTableViewController)initWithStyle:(int64_t)a3 profile:(id)a4;
@end

@implementation WDHealthTableViewController

- (WDHealthTableViewController)initWithStyle:(int64_t)a3 profile:(id)a4
{
  v6 = a4;
  v10.receiver = self;
  v10.super_class = WDHealthTableViewController;
  v7 = [(WDTableViewController *)&v10 initWithStyle:a3];
  v8 = v7;
  if (v7)
  {
    [(WDTableViewController *)v7 setProfile:v6];
  }

  return v8;
}

@end