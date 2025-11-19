@interface UIViewController(IdiomUsage)
- (BOOL)_gkDesiredUserInterfaceIdiom;
@end

@implementation UIViewController(IdiomUsage)

- (BOOL)_gkDesiredUserInterfaceIdiom
{
  v2 = [MEMORY[0x277D75418] currentDevice];
  v3 = [v2 userInterfaceIdiom];

  if (v3 == 1 && (*MEMORY[0x277D0C258] != 1 || (*MEMORY[0x277D0C8F0] & 1) != 0))
  {
    v4 = [a1 navigationController];
    v5 = [v4 popoverPresentationController];
    if (!v5)
    {
      v5 = [a1 popoverPresentationController];
      if (!v5)
      {
        v8 = [a1 _popoverController];
        v6 = v8 == 0;

        return v6;
      }
    }
  }

  return 0;
}

@end