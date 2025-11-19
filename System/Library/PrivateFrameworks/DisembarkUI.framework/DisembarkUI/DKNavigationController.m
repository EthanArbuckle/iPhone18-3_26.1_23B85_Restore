@interface DKNavigationController
- (unint64_t)supportedInterfaceOrientations;
@end

@implementation DKNavigationController

- (unint64_t)supportedInterfaceOrientations
{
  v2 = [MEMORY[0x277D75418] currentDevice];
  v3 = [v2 userInterfaceIdiom];

  if (v3 == 1)
  {
    return 30;
  }

  else
  {
    return 2;
  }
}

@end