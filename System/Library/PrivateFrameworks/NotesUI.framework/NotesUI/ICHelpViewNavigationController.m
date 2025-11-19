@interface ICHelpViewNavigationController
- (unint64_t)supportedInterfaceOrientations;
@end

@implementation ICHelpViewNavigationController

- (unint64_t)supportedInterfaceOrientations
{
  v3 = [MEMORY[0x1E69DC938] currentDevice];
  v4 = [v3 userInterfaceIdiom];

  if (!v4)
  {
    return 2;
  }

  v6.receiver = self;
  v6.super_class = ICHelpViewNavigationController;
  return [(ICHelpViewNavigationController *)&v6 supportedInterfaceOrientations];
}

@end