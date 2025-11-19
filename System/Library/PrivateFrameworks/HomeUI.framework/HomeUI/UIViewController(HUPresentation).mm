@interface UIViewController(HUPresentation)
- (id)hu_dismissViewControllerAnimated:()HUPresentation;
- (id)hu_performDismissalRequest:()HUPresentation;
- (id)hu_performPresentationRequest:()HUPresentation;
@end

@implementation UIViewController(HUPresentation)

- (id)hu_performPresentationRequest:()HUPresentation
{
  v5 = a3;
  v6 = [v5 viewController];

  if (!v6)
  {
    v20 = [MEMORY[0x277CCA890] currentHandler];
    [v20 handleFailureInMethod:a2 object:a1 file:@"UIViewController+HUPresentation.m" lineNumber:21 description:{@"Invalid parameter not satisfying: %@", @"presentationRequest.viewController != nil"}];
  }

  v7 = [v5 viewController];
  v8 = [v5 animated];
  v9 = [v5 preferredPresentationType];
  if (v9)
  {
    if (v9 != 1)
    {
      v14 = [MEMORY[0x277CCA890] currentHandler];
      v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v5, "preferredPresentationType")}];
      [v14 handleFailureInMethod:a2 object:a1 file:@"UIViewController+HUPresentation.m" lineNumber:41 description:{@"Unknown presentation type %@", v15}];

      v16 = MEMORY[0x277D2C900];
      v17 = [MEMORY[0x277CCA9B8] hf_internalErrorWithDescription:@"Unknown presentation type"];
      v18 = [v16 futureWithError:v17];

      goto LABEL_15;
    }

    objc_opt_class();
    v10 = a1;
    if (objc_opt_isKindOfClass())
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = v11;

    if (v12)
    {
      v13 = v10;

LABEL_12:
      v18 = [v13 hu_pushPreloadableViewController:v7 animated:v8];

      goto LABEL_15;
    }

    v13 = [v10 navigationController];
    if (v13)
    {
      goto LABEL_12;
    }

    NSLog(&cfstr_RequestedNavig.isa, v7, v10);
  }

  v18 = [a1 hu_presentPreloadableViewController:v7 animated:v8];
LABEL_15:

  return v18;
}

- (id)hu_performDismissalRequest:()HUPresentation
{
  v4 = a3;
  v5 = [v4 viewController];
  v6 = [v4 animated];

  objc_opt_class();
  v7 = a1;
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  if (v9)
  {
    v10 = v7;
  }

  else
  {
    v10 = [v7 navigationController];
    if (!v10)
    {
      goto LABEL_10;
    }
  }

  v11 = [v10 viewControllers];
  v12 = [v11 indexOfObject:v5];

  if (v12 != 0x7FFFFFFFFFFFFFFFLL)
  {
    if (v12)
    {
      v21 = [v10 viewControllers];
      v22 = [v21 objectAtIndexedSubscript:v12 - 1];

      v23 = MEMORY[0x277D2C900];
      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 3221225472;
      v31[2] = __63__UIViewController_HUPresentation__hu_performDismissalRequest___block_invoke;
      v31[3] = &unk_277DB89C0;
      v10 = v10;
      v32 = v10;
      v33 = v22;
      v34 = v6;
      v24 = v22;
      v15 = [v23 futureWithBlock:v31];
    }

    else
    {
      NSLog(&cfstr_AttemptingToDi.isa, v5, v10);
      v13 = MEMORY[0x277D2C900];
      v14 = [MEMORY[0x277CCA9B8] hf_internalErrorWithDescription:{@"Invalid dismiss request for %@", v5}];
      v15 = [v13 futureWithError:v14];
    }

    goto LABEL_15;
  }

LABEL_10:
  v16 = [v7 presentedViewController];
  v17 = [v16 childViewControllers];
  v26 = MEMORY[0x277D85DD0];
  v27 = 3221225472;
  v28 = __63__UIViewController_HUPresentation__hu_performDismissalRequest___block_invoke_2;
  v29 = &unk_277DB89E8;
  v18 = v5;
  v30 = v18;
  v19 = [v17 na_any:&v26];

  v20 = [v7 presentedViewController];

  if ((v19 & 1) == 0 && v20 != v18)
  {
    NSLog(&cfstr_AttemptingToDi_0.isa, v18, v7, v26, v27, v28, v29);
  }

  v15 = [v7 hu_dismissViewControllerAnimated:v6];

LABEL_15:

  return v15;
}

- (id)hu_dismissViewControllerAnimated:()HUPresentation
{
  v5 = [a1 presentedViewController];

  if (v5)
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __69__UIViewController_HUPresentation__hu_dismissViewControllerAnimated___block_invoke;
    v11[3] = &unk_277DB8A10;
    v11[4] = a1;
    v12 = a3;
    v6 = __69__UIViewController_HUPresentation__hu_dismissViewControllerAnimated___block_invoke(v11);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __69__UIViewController_HUPresentation__hu_dismissViewControllerAnimated___block_invoke_76;
    v9[3] = &unk_277DB8A38;
    v9[4] = a1;
    v10 = a3;
    v7 = [v6 flatMap:v9];
  }

  else
  {
    v7 = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  return v7;
}

@end