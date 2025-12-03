@interface WDHealthTableViewController
- (WDHealthTableViewController)initWithStyle:(int64_t)style profile:(id)profile;
@end

@implementation WDHealthTableViewController

- (WDHealthTableViewController)initWithStyle:(int64_t)style profile:(id)profile
{
  profileCopy = profile;
  v10.receiver = self;
  v10.super_class = WDHealthTableViewController;
  v7 = [(WDTableViewController *)&v10 initWithStyle:style];
  v8 = v7;
  if (v7)
  {
    [(WDTableViewController *)v7 setProfile:profileCopy];
  }

  return v8;
}

@end