@interface HMHearingTitle2BaseTableWelcomeController
- (void)viewDidLoad;
@end

@implementation HMHearingTitle2BaseTableWelcomeController

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = HMHearingTitle2BaseTableWelcomeController;
  [(OBTableWelcomeController *)&v4 viewDidLoad];
  headerView = [(HMHearingTitle2BaseTableWelcomeController *)self headerView];
  [headerView setTitleStyle:1];
}

@end