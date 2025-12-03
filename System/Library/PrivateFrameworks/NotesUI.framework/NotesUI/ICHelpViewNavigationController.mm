@interface ICHelpViewNavigationController
- (unint64_t)supportedInterfaceOrientations;
@end

@implementation ICHelpViewNavigationController

- (unint64_t)supportedInterfaceOrientations
{
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (!userInterfaceIdiom)
  {
    return 2;
  }

  v6.receiver = self;
  v6.super_class = ICHelpViewNavigationController;
  return [(ICHelpViewNavigationController *)&v6 supportedInterfaceOrientations];
}

@end