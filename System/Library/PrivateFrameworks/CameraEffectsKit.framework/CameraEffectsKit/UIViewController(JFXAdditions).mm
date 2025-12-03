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
  traitCollection = [self traitCollection];
  [traitCollection displayScale];
  v3 = v2;

  if (v3 == 0.0)
  {
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen scale];
    v3 = v5;
  }

  return v3;
}

- (void)jfxAddChildViewController:()JFXAdditions
{
  v4 = a3;
  view = [self view];
  [self jfxAddChildViewController:v4 containerView:view];
}

- (void)jfxAddChildViewController:()JFXAdditions constrainRelativeToSafeAreas:
{
  v6 = a3;
  view = [self view];
  [self jfxAddChildViewController:v6 containerView:view constrainToContainer:1 relativeToSafeArea:a4];
}

- (id)jfxAddChildViewControllerFromStoryboard:()JFXAdditions containerView:constrainToContainer:relativeToSafeArea:
{
  v10 = a3;
  v11 = a4;
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (userInterfaceIdiom == 1 && (v14 = MEMORY[0x277D75AC8], [v10 stringByAppendingString:@"-ipad"], v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v14, "storyboardWithName:bundle:", v15, 0), v16 = objc_claimAutoreleasedReturnValue(), v15, v16) || (objc_msgSend(MEMORY[0x277D75AC8], "storyboardWithName:bundle:", v10, 0), (v16 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    instantiateInitialViewController = [v16 instantiateInitialViewController];
    [self jfxAddChildViewController:instantiateInitialViewController containerView:v11 constrainToContainer:a5 relativeToSafeArea:a6];
  }

  else
  {
    instantiateInitialViewController = 0;
  }

  return instantiateInitialViewController;
}

- (void)jfxAddChildViewController:()JFXAdditions containerView:constrainToContainer:relativeToSafeArea:
{
  v47[4] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = v11;
  if (v10 && v11)
  {
    view = [v10 view];
    [self addChildViewController:v10];
    [v12 addSubview:view];
    if (a5)
    {
      [view setTranslatesAutoresizingMaskIntoConstraints:0];
      v40 = MEMORY[0x277CCAAD0];
      leftAnchor = [view leftAnchor];
      if (a6)
      {
        safeAreaLayoutGuide = [v12 safeAreaLayoutGuide];
        leftAnchor2 = [safeAreaLayoutGuide leftAnchor];
      }

      else
      {
        leftAnchor2 = [v12 leftAnchor];
        safeAreaLayoutGuide = leftAnchor2;
      }

      v39 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
      v47[0] = v39;
      rightAnchor = [view rightAnchor];
      if (a6)
      {
        safeAreaLayoutGuide2 = [v12 safeAreaLayoutGuide];
        rightAnchor2 = [safeAreaLayoutGuide2 rightAnchor];
      }

      else
      {
        rightAnchor2 = [v12 rightAnchor];
        v17 = rightAnchor2;
      }

      v36 = v17;
      v38 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
      v47[1] = v38;
      topAnchor = [view topAnchor];
      v42 = leftAnchor;
      if (a6)
      {
        safeAreaLayoutGuide3 = [v12 safeAreaLayoutGuide];
        topAnchor2 = [safeAreaLayoutGuide3 topAnchor];
      }

      else
      {
        topAnchor2 = [v12 topAnchor];
        v33 = topAnchor2;
      }

      v44 = leftAnchor2;
      v45 = rightAnchor;
      v35 = topAnchor2;
      v21 = [topAnchor constraintEqualToAnchor:topAnchor2];
      v47[2] = v21;
      bottomAnchor = [view bottomAnchor];
      selfCopy = self;
      v37 = rightAnchor2;
      if (a6)
      {
        safeAreaLayoutGuide4 = [v12 safeAreaLayoutGuide];
        [safeAreaLayoutGuide4 bottomAnchor];
      }

      else
      {
        [v12 bottomAnchor];
      }
      v23 = ;
      v24 = [bottomAnchor constraintEqualToAnchor:v23];
      v47[3] = v24;
      v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v47 count:4];
      [v40 activateConstraints:v25];

      if (a6)
      {

        v26 = v38;
        bottomAnchor = safeAreaLayoutGuide3;
        v27 = v45;
        v45 = v39;
        self = selfCopy;
        v29 = safeAreaLayoutGuide2;
        v28 = v35;
        v30 = v37;
      }

      else
      {
        v28 = v23;
        v30 = topAnchor;
        v29 = v38;
        v44 = v39;
        self = selfCopy;
        topAnchor = v21;
        v27 = v36;
        v26 = v33;
      }
    }

    [v10 didMoveToParentViewController:self];
  }

  else
  {
    view = JFXLog_viewerUI();
    if (os_log_type_enabled(view, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_242A3B000, view, OS_LOG_TYPE_DEFAULT, "Error trying to add a View Controller into a container view", buf, 2u);
    }
  }
}

- (uint64_t)jfxRemoveFromParentViewController
{
  [self willMoveToParentViewController:0];
  view = [self view];
  [view removeFromSuperview];

  return [self removeFromParentViewController];
}

- (double)jfxCenterAdjustedForOrientationForPortraitFrame:()JFXAdditions relativeToParentFrame:withOrientation:
{
  if ((a11 - 3) > 1)
  {
    v19 = self + CGRectGetWidth(*&self) * 0.5;
    v24.origin.x = self;
    v24.origin.y = a2;
    v24.size.width = a3;
    v24.size.height = a4;
    CGRectGetHeight(v24);
  }

  else
  {
    v19 = a2 + CGRectGetHeight(*&self) * 0.5;
    if (a11 == 4)
    {
      v22.origin.x = a5;
      v22.origin.y = a6;
      v22.size.width = a7;
      v22.size.height = a8;
      v19 = CGRectGetWidth(v22) - v19;
    }

    v23.origin.x = self;
    v23.origin.y = a2;
    v23.size.width = a3;
    v23.size.height = a4;
    CGRectGetWidth(v23);
  }

  return v19;
}

+ (id)jfxTopmostPresentedController
{
  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  delegate = [mEMORY[0x277D75128] delegate];
  window = [delegate window];
  rootViewController = [window rootViewController];

  presentedViewController = [rootViewController presentedViewController];

  if (presentedViewController)
  {
    do
    {
      presentedViewController2 = [rootViewController presentedViewController];

      v5PresentedViewController = [presentedViewController2 presentedViewController];

      rootViewController = presentedViewController2;
    }

    while (v5PresentedViewController);
  }

  else
  {
    presentedViewController2 = rootViewController;
  }

  return presentedViewController2;
}

@end