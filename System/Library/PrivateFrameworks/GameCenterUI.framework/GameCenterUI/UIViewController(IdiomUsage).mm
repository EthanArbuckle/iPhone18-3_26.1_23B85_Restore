@interface UIViewController(IdiomUsage)
- (BOOL)_gkDesiredUserInterfaceIdiom;
@end

@implementation UIViewController(IdiomUsage)

- (BOOL)_gkDesiredUserInterfaceIdiom
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (userInterfaceIdiom == 1 && (*MEMORY[0x277D0C258] != 1 || (*MEMORY[0x277D0C8F0] & 1) != 0))
  {
    navigationController = [self navigationController];
    popoverPresentationController = [navigationController popoverPresentationController];
    if (!popoverPresentationController)
    {
      popoverPresentationController = [self popoverPresentationController];
      if (!popoverPresentationController)
      {
        _popoverController = [self _popoverController];
        v6 = _popoverController == 0;

        return v6;
      }
    }
  }

  return 0;
}

@end