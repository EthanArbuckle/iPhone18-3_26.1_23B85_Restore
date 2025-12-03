@interface UIViewController(HUPresentation)
- (id)hu_dismissViewControllerAnimated:()HUPresentation;
- (id)hu_performDismissalRequest:()HUPresentation;
- (id)hu_performPresentationRequest:()HUPresentation;
@end

@implementation UIViewController(HUPresentation)

- (id)hu_performPresentationRequest:()HUPresentation
{
  v5 = a3;
  viewController = [v5 viewController];

  if (!viewController)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIViewController+HUPresentation.m" lineNumber:21 description:{@"Invalid parameter not satisfying: %@", @"presentationRequest.viewController != nil"}];
  }

  viewController2 = [v5 viewController];
  animated = [v5 animated];
  preferredPresentationType = [v5 preferredPresentationType];
  if (preferredPresentationType)
  {
    if (preferredPresentationType != 1)
    {
      currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
      v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v5, "preferredPresentationType")}];
      [currentHandler2 handleFailureInMethod:a2 object:self file:@"UIViewController+HUPresentation.m" lineNumber:41 description:{@"Unknown presentation type %@", v15}];

      v16 = MEMORY[0x277D2C900];
      v17 = [MEMORY[0x277CCA9B8] hf_internalErrorWithDescription:@"Unknown presentation type"];
      v18 = [v16 futureWithError:v17];

      goto LABEL_15;
    }

    objc_opt_class();
    selfCopy = self;
    if (objc_opt_isKindOfClass())
    {
      v11 = selfCopy;
    }

    else
    {
      v11 = 0;
    }

    v12 = v11;

    if (v12)
    {
      navigationController = selfCopy;

LABEL_12:
      v18 = [navigationController hu_pushPreloadableViewController:viewController2 animated:animated];

      goto LABEL_15;
    }

    navigationController = [selfCopy navigationController];
    if (navigationController)
    {
      goto LABEL_12;
    }

    NSLog(&cfstr_RequestedNavig.isa, viewController2, selfCopy);
  }

  v18 = [self hu_presentPreloadableViewController:viewController2 animated:animated];
LABEL_15:

  return v18;
}

- (id)hu_performDismissalRequest:()HUPresentation
{
  v4 = a3;
  viewController = [v4 viewController];
  animated = [v4 animated];

  objc_opt_class();
  selfCopy = self;
  if (objc_opt_isKindOfClass())
  {
    v8 = selfCopy;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  if (v9)
  {
    navigationController = selfCopy;
  }

  else
  {
    navigationController = [selfCopy navigationController];
    if (!navigationController)
    {
      goto LABEL_10;
    }
  }

  viewControllers = [navigationController viewControllers];
  v12 = [viewControllers indexOfObject:viewController];

  if (v12 != 0x7FFFFFFFFFFFFFFFLL)
  {
    if (v12)
    {
      viewControllers2 = [navigationController viewControllers];
      v22 = [viewControllers2 objectAtIndexedSubscript:v12 - 1];

      v23 = MEMORY[0x277D2C900];
      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 3221225472;
      v31[2] = __63__UIViewController_HUPresentation__hu_performDismissalRequest___block_invoke;
      v31[3] = &unk_277DB89C0;
      navigationController = navigationController;
      v32 = navigationController;
      v33 = v22;
      v34 = animated;
      v24 = v22;
      v15 = [v23 futureWithBlock:v31];
    }

    else
    {
      NSLog(&cfstr_AttemptingToDi.isa, viewController, navigationController);
      v13 = MEMORY[0x277D2C900];
      v14 = [MEMORY[0x277CCA9B8] hf_internalErrorWithDescription:{@"Invalid dismiss request for %@", viewController}];
      v15 = [v13 futureWithError:v14];
    }

    goto LABEL_15;
  }

LABEL_10:
  presentedViewController = [selfCopy presentedViewController];
  childViewControllers = [presentedViewController childViewControllers];
  v26 = MEMORY[0x277D85DD0];
  v27 = 3221225472;
  v28 = __63__UIViewController_HUPresentation__hu_performDismissalRequest___block_invoke_2;
  v29 = &unk_277DB89E8;
  v18 = viewController;
  v30 = v18;
  v19 = [childViewControllers na_any:&v26];

  presentedViewController2 = [selfCopy presentedViewController];

  if ((v19 & 1) == 0 && presentedViewController2 != v18)
  {
    NSLog(&cfstr_AttemptingToDi_0.isa, v18, selfCopy, v26, v27, v28, v29);
  }

  v15 = [selfCopy hu_dismissViewControllerAnimated:animated];

LABEL_15:

  return v15;
}

- (id)hu_dismissViewControllerAnimated:()HUPresentation
{
  presentedViewController = [self presentedViewController];

  if (presentedViewController)
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __69__UIViewController_HUPresentation__hu_dismissViewControllerAnimated___block_invoke;
    v11[3] = &unk_277DB8A10;
    v11[4] = self;
    v12 = a3;
    v6 = __69__UIViewController_HUPresentation__hu_dismissViewControllerAnimated___block_invoke(v11);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __69__UIViewController_HUPresentation__hu_dismissViewControllerAnimated___block_invoke_76;
    v9[3] = &unk_277DB8A38;
    v9[4] = self;
    v10 = a3;
    futureWithNoResult = [v6 flatMap:v9];
  }

  else
  {
    futureWithNoResult = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  return futureWithNoResult;
}

@end