@interface HMHearingTitle2BaseWelcomeController
- (void)viewDidLoad;
@end

@implementation HMHearingTitle2BaseWelcomeController

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = HMHearingTitle2BaseWelcomeController;
  [(OBBaseWelcomeController *)&v4 viewDidLoad];
  headerView = [(HMHearingTitle2BaseWelcomeController *)self headerView];
  [headerView setTitleStyle:1];
}

@end