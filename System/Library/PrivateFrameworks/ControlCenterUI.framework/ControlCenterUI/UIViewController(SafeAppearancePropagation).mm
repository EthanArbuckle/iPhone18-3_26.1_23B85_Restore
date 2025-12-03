@interface UIViewController(SafeAppearancePropagation)
- (id)_ccui_childViewControllersForAppearancePropagation;
- (uint64_t)ccui_safelyEndAppearanceTransition;
- (void)ccui_safelyBeginAppearanceTransition:()SafeAppearancePropagation animated:;
- (void)ccui_safelyBeginAppearanceTransitionForChildViewControllers:()SafeAppearancePropagation animated:;
- (void)ccui_safelyEndAppearanceTransitionForChildViewControllers;
@end

@implementation UIViewController(SafeAppearancePropagation)

- (void)ccui_safelyBeginAppearanceTransition:()SafeAppearancePropagation animated:
{
  v15 = *MEMORY[0x277D85DE8];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  if (([v8 hasPrefix:@"CCUI"] & 1) == 0)
  {
    v9 = *MEMORY[0x277CFC8F8];
    if (os_log_type_enabled(*MEMORY[0x277CFC8F8], OS_LOG_TYPE_DEFAULT))
    {
      v10 = @"Disappearing";
      if (a3)
      {
        v10 = @"Appearing";
      }

      v11 = 138543618;
      v12 = v10;
      v13 = 2114;
      selfCopy = self;
      _os_log_impl(&dword_21E9F5000, v9, OS_LOG_TYPE_DEFAULT, "[Appearance Propagation] Begin transition (%{public}@) for %{public}@", &v11, 0x16u);
    }
  }

  [self bs_beginAppearanceTransition:a3 animated:a4];
  if ([self ccui_shouldPropagateAppearanceCalls])
  {
    [self ccui_safelyBeginAppearanceTransitionForChildViewControllers:a3 animated:a4];
  }
}

- (uint64_t)ccui_safelyEndAppearanceTransition
{
  [self bs_endAppearanceTransition];
  result = [self ccui_shouldPropagateAppearanceCalls];
  if (result)
  {

    return [self ccui_safelyEndAppearanceTransitionForChildViewControllers];
  }

  return result;
}

- (void)ccui_safelyBeginAppearanceTransitionForChildViewControllers:()SafeAppearancePropagation animated:
{
  v16 = *MEMORY[0x277D85DE8];
  _ccui_childViewControllersForAppearancePropagation = [self _ccui_childViewControllersForAppearancePropagation];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = [_ccui_childViewControllersForAppearancePropagation countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(_ccui_childViewControllersForAppearancePropagation);
        }

        [*(*(&v11 + 1) + 8 * v10++) ccui_safelyBeginAppearanceTransition:a3 animated:a4];
      }

      while (v8 != v10);
      v8 = [_ccui_childViewControllersForAppearancePropagation countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)ccui_safelyEndAppearanceTransitionForChildViewControllers
{
  v11 = *MEMORY[0x277D85DE8];
  _ccui_childViewControllersForAppearancePropagation = [self _ccui_childViewControllersForAppearancePropagation];
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v2 = [_ccui_childViewControllersForAppearancePropagation countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v7;
    do
    {
      v5 = 0;
      do
      {
        if (*v7 != v4)
        {
          objc_enumerationMutation(_ccui_childViewControllersForAppearancePropagation);
        }

        [*(*(&v6 + 1) + 8 * v5++) ccui_safelyEndAppearanceTransition];
      }

      while (v3 != v5);
      v3 = [_ccui_childViewControllersForAppearancePropagation countByEnumeratingWithState:&v6 objects:v10 count:16];
    }

    while (v3);
  }
}

- (id)_ccui_childViewControllersForAppearancePropagation
{
  if (objc_opt_respondsToSelector())
  {
    [self childViewControllersForAppearancePropagation];
  }

  else
  {
    [self childViewControllers];
  }
  v2 = ;

  return v2;
}

@end