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
  v8 = [a1 _dmcNavVC];
  v9 = v8;
  if (v8)
  {
    [v8 dmc_presentAlert:v7 completion:v6];
  }

  else
  {
    [a1 presentViewController:v7 animated:1 completion:v6];
  }
}

- (void)dmc_pushViewController:()DMC animated:
{
  v10 = a3;
  v6 = [a1 _dmcNavVC];
  v7 = v6;
  if (v6)
  {
    [v6 pushViewController:v10 animated:a4];
  }

  else if (([a1 dmc_navProxyAttemptPushViewController:v10] & 1) == 0)
  {
    v8 = [a1 _navVC];
    v9 = v8;
    if (v8)
    {
      [v8 pushViewController:v10 animated:a4];
    }

    else
    {
      [a1 presentViewController:v10 animated:a4 completion:0];
    }
  }
}

- (BOOL)dmc_popViewControllerAnimated:()DMC
{
  v5 = [a1 _dmcNavVC];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 popViewControllerAnimated:1];
    v8 = v7 != 0;
  }

  else
  {
    if ([a1 dmc_navProxyAttemptPopViewController])
    {
      v8 = 1;
      goto LABEL_4;
    }

    v10 = [a1 _navVC];
    v7 = v10;
    if (v10)
    {
      v11 = [v10 popViewControllerAnimated:a3];
      v8 = v11 != 0;
    }

    else
    {
      [a1 dismissViewControllerAnimated:a3 completion:0];
      v8 = 1;
    }
  }

LABEL_4:
  return v8;
}

- (BOOL)dmc_popToViewController:()DMC animated:
{
  v6 = a3;
  v7 = [a1 _dmcNavVC];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 popToViewController:v6 animated:a4];
    v10 = v9;
LABEL_6:
    v11 = v10 != 0;

    goto LABEL_7;
  }

  if (([a1 dmc_navProxyAttemptPopToViewController:v6] & 1) == 0)
  {
    v9 = [a1 _navVC];
    v10 = [v9 popToViewController:v6 animated:a4];

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
    v8 = a1;
  }

  else
  {
    v8 = [a1 navigationController];
  }

  v9 = v8;
  if (v8)
  {
    v10 = [MEMORY[0x277CBEB18] array];
    v11 = [v9 viewControllers];
    v12 = [v11 containsObject:v6];

    if (v12)
    {
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v13 = [v9 viewControllers];
      v14 = [v13 countByEnumeratingWithState:&v22 objects:v26 count:16];
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
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v22 + 1) + 8 * v17);
          [v10 addObject:v18];
          if (v18 == v6)
          {
            break;
          }

          if (v15 == ++v17)
          {
            v15 = [v13 countByEnumeratingWithState:&v22 objects:v26 count:16];
            if (v15)
            {
              goto LABEL_8;
            }

            break;
          }
        }
      }
    }

    if (([v10 containsObject:v7] & 1) == 0)
    {
      [v10 addObject:v7];
    }

    v19 = [v9 topViewController];
    v20 = [v10 lastObject];
    v21 = [v19 isEqual:v20];

    NSLog(&cfstr_SAfterStack.isa, "[UIViewController(DMC) dmc_popToViewController:pushViewController:]", v10);
    [v9 setViewControllers:v10 animated:v21 ^ 1u];
  }
}

- (id)_navVC
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = a1;
  }

  else
  {
    v2 = [a1 navigationController];
  }

  return v2;
}

- (id)_dmcNavVC
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = a1;
  }

  else
  {
    v3 = [a1 navigationController];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v2 = [a1 navigationController];
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

@end