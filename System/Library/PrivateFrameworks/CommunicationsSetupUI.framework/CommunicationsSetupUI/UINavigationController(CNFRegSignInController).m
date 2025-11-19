@interface UINavigationController(CNFRegSignInController)
- (id)signInControllerInHierarchy;
- (void)popToSigninControllerAnimated:()CNFRegSignInController;
@end

@implementation UINavigationController(CNFRegSignInController)

- (id)signInControllerInHierarchy
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v1 = [a1 viewControllers];
  v2 = [v1 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v2)
  {
    v3 = *v9;
    while (2)
    {
      for (i = 0; i != v2; i = i + 1)
      {
        if (*v9 != v3)
        {
          objc_enumerationMutation(v1);
        }

        v5 = *(*(&v8 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v2 = v5;
          goto LABEL_11;
        }
      }

      v2 = [v1 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v2)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v6 = *MEMORY[0x277D85DE8];

  return v2;
}

- (void)popToSigninControllerAnimated:()CNFRegSignInController
{
  v5 = [a1 signInControllerInHierarchy];
  v7 = v5;
  if (v5)
  {
    v6 = [a1 popToViewController:v5 animated:a3];
  }

  else
  {
    [a1 popRecursivelyToRootController];
  }
}

@end