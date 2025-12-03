@interface UIViewController(DMC)
- (BOOL)dmc_popToViewController:()DMC animated:;
- (BOOL)dmc_popViewControllerAnimated:()DMC;
- (id)_dmcNavVC;
- (id)_navVC;
- (void)dmc_popToViewController:()DMC pushViewController:;
- (void)dmc_presentAlert:()DMC completion:;
- (void)dmc_pushViewController:()DMC animated:;
@end

@implementation UIViewController(DMC)

- (void)dmc_presentAlert:()DMC completion:
{
  v6 = a4;
  v7 = a3;
  _dmcNavVC = [self _dmcNavVC];
  v9 = _dmcNavVC;
  if (_dmcNavVC)
  {
    [_dmcNavVC dmc_presentAlert:v7 completion:v6];
  }

  else
  {
    [self presentViewController:v7 animated:1 completion:v6];
  }
}

- (void)dmc_pushViewController:()DMC animated:
{
  v10 = a3;
  _dmcNavVC = [self _dmcNavVC];
  v7 = _dmcNavVC;
  if (_dmcNavVC)
  {
    [_dmcNavVC pushViewController:v10 animated:a4];
  }

  else if (([self dmc_navProxyAttemptPushViewController:v10] & 1) == 0)
  {
    _navVC = [self _navVC];
    v9 = _navVC;
    if (_navVC)
    {
      [_navVC pushViewController:v10 animated:a4];
    }

    else
    {
      [self presentViewController:v10 animated:a4 completion:0];
    }
  }
}

- (BOOL)dmc_popViewControllerAnimated:()DMC
{
  _dmcNavVC = [self _dmcNavVC];
  v6 = _dmcNavVC;
  if (_dmcNavVC)
  {
    v7 = [_dmcNavVC popViewControllerAnimated:1];
    v8 = v7 != 0;
  }

  else
  {
    if ([self dmc_navProxyAttemptPopViewController])
    {
      v8 = 1;
      goto LABEL_4;
    }

    _navVC = [self _navVC];
    v7 = _navVC;
    if (_navVC)
    {
      v11 = [_navVC popViewControllerAnimated:a3];
      v8 = v11 != 0;
    }

    else
    {
      [self dismissViewControllerAnimated:a3 completion:0];
      v8 = 1;
    }
  }

LABEL_4:
  return v8;
}

- (BOOL)dmc_popToViewController:()DMC animated:
{
  v6 = a3;
  _dmcNavVC = [self _dmcNavVC];
  v8 = _dmcNavVC;
  if (_dmcNavVC)
  {
    _navVC = [_dmcNavVC popToViewController:v6 animated:a4];
    v10 = _navVC;
LABEL_6:
    v11 = v10 != 0;

    goto LABEL_7;
  }

  if (([self dmc_navProxyAttemptPopToViewController:v6] & 1) == 0)
  {
    _navVC = [self _navVC];
    v10 = [_navVC popToViewController:v6 animated:a4];

    goto LABEL_6;
  }

  v11 = 1;
LABEL_7:

  return v11;
}

- (void)dmc_popToViewController:()DMC pushViewController:
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = [self navigationController];
  }

  v9 = selfCopy;
  if (selfCopy)
  {
    array = [MEMORY[0x277CBEB18] array];
    viewControllers = [v9 viewControllers];
    v12 = [viewControllers containsObject:v6];

    if (v12)
    {
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      viewControllers2 = [v9 viewControllers];
      v14 = [viewControllers2 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v23;
LABEL_8:
        v17 = 0;
        while (1)
        {
          if (*v23 != v16)
          {
            objc_enumerationMutation(viewControllers2);
          }

          v18 = *(*(&v22 + 1) + 8 * v17);
          [array addObject:v18];
          if (v18 == v6)
          {
            break;
          }

          if (v15 == ++v17)
          {
            v15 = [viewControllers2 countByEnumeratingWithState:&v22 objects:v26 count:16];
            if (v15)
            {
              goto LABEL_8;
            }

            break;
          }
        }
      }
    }

    if (([array containsObject:v7] & 1) == 0)
    {
      [array addObject:v7];
    }

    topViewController = [v9 topViewController];
    lastObject = [array lastObject];
    v21 = [topViewController isEqual:lastObject];

    NSLog(&cfstr_SAfterStack.isa, "[UIViewController(DMC) dmc_popToViewController:pushViewController:]", array);
    [v9 setViewControllers:array animated:v21 ^ 1u];
  }
}

- (id)_navVC
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = [self navigationController];
  }

  return selfCopy;
}

- (id)_dmcNavVC
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    selfCopy = self;
  }

  else
  {
    navigationController = [self navigationController];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      selfCopy = [self navigationController];
    }

    else
    {
      selfCopy = 0;
    }
  }

  return selfCopy;
}

@end