@interface HRWDHealthTableViewController
- (HRWDHealthTableViewController)initWithStyle:(int64_t)style profile:(id)profile;
@end

@implementation HRWDHealthTableViewController

- (HRWDHealthTableViewController)initWithStyle:(int64_t)style profile:(id)profile
{
  profileCopy = profile;
  v10.receiver = self;
  v10.super_class = HRWDHealthTableViewController;
  v7 = [(HRWDTableViewController *)&v10 initWithStyle:style];
  v8 = v7;
  if (v7)
  {
    [(HRWDTableViewController *)v7 setProfile:profileCopy];
  }

  return v8;
}

@end