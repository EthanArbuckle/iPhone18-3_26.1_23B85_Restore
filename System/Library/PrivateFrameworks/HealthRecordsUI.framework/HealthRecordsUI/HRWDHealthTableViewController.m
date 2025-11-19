@interface HRWDHealthTableViewController
- (HRWDHealthTableViewController)initWithStyle:(int64_t)a3 profile:(id)a4;
@end

@implementation HRWDHealthTableViewController

- (HRWDHealthTableViewController)initWithStyle:(int64_t)a3 profile:(id)a4
{
  v6 = a4;
  v10.receiver = self;
  v10.super_class = HRWDHealthTableViewController;
  v7 = [(HRWDTableViewController *)&v10 initWithStyle:a3];
  v8 = v7;
  if (v7)
  {
    [(HRWDTableViewController *)v7 setProfile:v6];
  }

  return v8;
}

@end