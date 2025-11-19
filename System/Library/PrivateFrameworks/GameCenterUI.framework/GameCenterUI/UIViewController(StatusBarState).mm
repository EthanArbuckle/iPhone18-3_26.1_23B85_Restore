@interface UIViewController(StatusBarState)
- (void)_gkRestoreStatusBarStyle:()StatusBarState;
- (void)_gkSaveStatusBarStyleAnimated:()StatusBarState setToStyle:;
@end

@implementation UIViewController(StatusBarState)

- (void)_gkSaveStatusBarStyleAnimated:()StatusBarState setToStyle:
{
  v8 = [MEMORY[0x277D75128] sharedApplication];
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v8, "statusBarStyle")}];
  objc_setAssociatedObject(a1, "_GKSavedStatusBarStyleKey", v7, 0x301);

  [v8 setStatusBarStyle:a4 animated:a3];
}

- (void)_gkRestoreStatusBarStyle:()StatusBarState
{
  v5 = objc_getAssociatedObject(a1, "_GKSavedStatusBarStyleKey");
  if (v5)
  {
    v6 = [MEMORY[0x277D75128] sharedApplication];
    [v6 setStatusBarStyle:objc_msgSend(v5 animated:{"intValue"), a3}];
    objc_setAssociatedObject(a1, "_GKSavedStatusBarStyleKey", 0, 0x301);
  }

  else
  {
    v7 = MEMORY[0x277D0C2A0];
    v8 = *MEMORY[0x277D0C2A0];
    if (!*MEMORY[0x277D0C2A0])
    {
      v9 = GKOSLoggers();
      v8 = *v7;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [UIViewController(StatusBarState) _gkRestoreStatusBarStyle:v8];
    }
  }
}

@end