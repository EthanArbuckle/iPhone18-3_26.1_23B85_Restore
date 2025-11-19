@interface UIViewController(JFXAdditions)
+ (id)jfxTopmostPresentedController;
- (double)jfxCenterAdjustedForOrientationForPortraitFrame:()JFXAdditions relativeToParentFrame:withOrientation:;
- (double)jfxDisplayScale;
- (id)jfxAddChildViewControllerFromStoryboard:()JFXAdditions containerView:constrainToContainer:relativeToSafeArea:;
- (uint64_t)jfxRemoveFromParentViewController;
- (void)jfxAddChildViewController:()JFXAdditions;
- (void)jfxAddChildViewController:()JFXAdditions constrainRelativeToSafeAreas:;
- (void)jfxAddChildViewController:()JFXAdditions containerView:constrainToContainer:relativeToSafeArea:;
@end

@implementation UIViewController(JFXAdditions)

- (double)jfxDisplayScale
{
  v1 = [a1 traitCollection];
  [v1 displayScale];
  v3 = v2;

  if (v3 == 0.0)
  {
    v4 = [MEMORY[0x277D759A0] mainScreen];
    [v4 scale];
    v3 = v5;
  }

  return v3;
}

- (void)jfxAddChildViewController:()JFXAdditions
{
  v4 = a3;
  v5 = [a1 view];
  [a1 jfxAddChildViewController:v4 containerView:v5];
}

- (void)jfxAddChildViewController:()JFXAdditions constrainRelativeToSafeAreas:
{
  v6 = a3;
  v7 = [a1 view];
  [a1 jfxAddChildViewController:v6 containerView:v7 constrainToContainer:1 relativeToSafeArea:a4];
}

- (id)jfxAddChildViewControllerFromStoryboard:()JFXAdditions containerView:constrainToContainer:relativeToSafeArea:
{
  v10 = a3;
  v11 = a4;
  v12 = [MEMORY[0x277D75418] currentDevice];
  v13 = [v12 userInterfaceIdiom];

  if (v13 == 1 && (v14 = MEMORY[0x277D75AC8], [v10 stringByAppendingString:@"-ipad"], v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v14, "storyboardWithName:bundle:", v15, 0), v16 = objc_claimAutoreleasedReturnValue(), v15, v16) || (objc_msgSend(MEMORY[0x277D75AC8], "storyboardWithName:bundle:", v10, 0), (v16 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v17 = [v16 instantiateInitialViewController];
    [a1 jfxAddChildViewController:v17 containerView:v11 constrainToContainer:a5 relativeToSafeArea:a6];
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (void)jfxAddChildViewController:()JFXAdditions containerView:constrainToContainer:relativeToSafeArea:
{
  v47[4] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = v11;
  if (v10 && v11)
  {
    v13 = [v10 view];
    [a1 addChildViewController:v10];
    [v12 addSubview:v13];
    if (a5)
    {
      [v13 setTranslatesAutoresizingMaskIntoConstraints:0];
      v40 = MEMORY[0x277CCAAD0];
      v14 = [v13 leftAnchor];
      if (a6)
      {
        v41 = [v12 safeAreaLayoutGuide];
        v15 = [v41 leftAnchor];
      }

      else
      {
        v15 = [v12 leftAnchor];
        v41 = v15;
      }

      v39 = [v14 constraintEqualToAnchor:v15];
      v47[0] = v39;
      v16 = [v13 rightAnchor];
      if (a6)
      {
        v34 = [v12 safeAreaLayoutGuide];
        v18 = [v34 rightAnchor];
      }

      else
      {
        v18 = [v12 rightAnchor];
        v17 = v18;
      }

      v36 = v17;
      v38 = [v16 constraintEqualToAnchor:v18];
      v47[1] = v38;
      v19 = [v13 topAnchor];
      v42 = v14;
      if (a6)
      {
        v32 = [v12 safeAreaLayoutGuide];
        v20 = [v32 topAnchor];
      }

      else
      {
        v20 = [v12 topAnchor];
        v33 = v20;
      }

      v44 = v15;
      v45 = v16;
      v35 = v20;
      v21 = [v19 constraintEqualToAnchor:v20];
      v47[2] = v21;
      v22 = [v13 bottomAnchor];
      v43 = a1;
      v37 = v18;
      if (a6)
      {
        v31 = [v12 safeAreaLayoutGuide];
        [v31 bottomAnchor];
      }

      else
      {
        [v12 bottomAnchor];
      }
      v23 = ;
      v24 = [v22 constraintEqualToAnchor:v23];
      v47[3] = v24;
      v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v47 count:4];
      [v40 activateConstraints:v25];

      if (a6)
      {

        v26 = v38;
        v22 = v32;
        v27 = v45;
        v45 = v39;
        a1 = v43;
        v29 = v34;
        v28 = v35;
        v30 = v37;
      }

      else
      {
        v28 = v23;
        v30 = v19;
        v29 = v38;
        v44 = v39;
        a1 = v43;
        v19 = v21;
        v27 = v36;
        v26 = v33;
      }
    }

    [v10 didMoveToParentViewController:a1];
  }

  else
  {
    v13 = JFXLog_viewerUI();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_242A3B000, v13, OS_LOG_TYPE_DEFAULT, "Error trying to add a View Controller into a container view", buf, 2u);
    }
  }
}

- (uint64_t)jfxRemoveFromParentViewController
{
  [a1 willMoveToParentViewController:0];
  v2 = [a1 view];
  [v2 removeFromSuperview];

  return [a1 removeFromParentViewController];
}

- (double)jfxCenterAdjustedForOrientationForPortraitFrame:()JFXAdditions relativeToParentFrame:withOrientation:
{
  if ((a11 - 3) > 1)
  {
    v19 = a1 + CGRectGetWidth(*&a1) * 0.5;
    v24.origin.x = a1;
    v24.origin.y = a2;
    v24.size.width = a3;
    v24.size.height = a4;
    CGRectGetHeight(v24);
  }

  else
  {
    v19 = a2 + CGRectGetHeight(*&a1) * 0.5;
    if (a11 == 4)
    {
      v22.origin.x = a5;
      v22.origin.y = a6;
      v22.size.width = a7;
      v22.size.height = a8;
      v19 = CGRectGetWidth(v22) - v19;
    }

    v23.origin.x = a1;
    v23.origin.y = a2;
    v23.size.width = a3;
    v23.size.height = a4;
    CGRectGetWidth(v23);
  }

  return v19;
}

+ (id)jfxTopmostPresentedController
{
  v0 = [MEMORY[0x277D75128] sharedApplication];
  v1 = [v0 delegate];
  v2 = [v1 window];
  v3 = [v2 rootViewController];

  v4 = [v3 presentedViewController];

  if (v4)
  {
    do
    {
      v5 = [v3 presentedViewController];

      v6 = [v5 presentedViewController];

      v3 = v5;
    }

    while (v6);
  }

  else
  {
    v5 = v3;
  }

  return v5;
}

@end