@interface CFXEffectBrowserContentPresenterViewController
- (CFXEffectBrowserContentPresenterViewControllerDelegate)delegate;
- (CGSize)expandedAppViewControllerSizeForEffectBrowserViewController:(id)controller;
- (double)CFX_alwaysExpandedAppHeight;
- (id)CFX_constraintsForAlwaysExpandedAppView:(id)view containerView:(id)containerView;
- (void)configureEffectBrowserContentPresentationForOrientation:(int64_t)orientation;
- (void)effectBrowserViewController:(id)controller dismissExpandedAppViewController:(id)viewController animated:(BOOL)animated completion:(id)completion;
- (void)effectBrowserViewController:(id)controller presentExpandedAppViewController:(id)viewController animated:(BOOL)animated completion:(id)completion;
- (void)loadView;
@end

@implementation CFXEffectBrowserContentPresenterViewController

- (void)loadView
{
  v3 = objc_opt_new();
  [(CFXEffectBrowserContentPresenterViewController *)self setView:v3];
}

- (void)configureEffectBrowserContentPresentationForOrientation:(int64_t)orientation
{
  parentViewController = [(CFXEffectBrowserContentPresenterViewController *)self parentViewController];
  view = [parentViewController view];
  [view bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (userInterfaceIdiom)
  {
    view2 = [(CFXEffectBrowserContentPresenterViewController *)self view];
    [view2 setFrame:{v8, v10, v12, v14}];
  }

  else
  {
    v36.origin.x = v8;
    v36.origin.y = v10;
    v36.size.width = v12;
    v36.size.height = v14;
    Width = CGRectGetWidth(v36);
    v37.origin.x = v8;
    v37.origin.y = v10;
    v37.size.width = v12;
    v37.size.height = v14;
    Height = CGRectGetHeight(v37);
    switch(orientation)
    {
      case 1:
        v20 = 0.0;
        break;
      case 3:
        v20 = 1.57079633;
        break;
      case 4:
        v20 = -1.57079633;
        break;
      default:
        v20 = 3.14159265;
        if (orientation != 2)
        {
          v20 = 0.0;
        }

        break;
    }

    CGAffineTransformMakeRotation(&v35, -v20);
    view3 = [(CFXEffectBrowserContentPresenterViewController *)self view];
    v34 = v35;
    [view3 setTransform:&v34];

    if (Width >= Height)
    {
      v22 = Height;
    }

    else
    {
      v22 = Width;
    }

    if (Width < Height)
    {
      Width = Height;
    }

    view4 = [(CFXEffectBrowserContentPresenterViewController *)self view];
    [view4 setBounds:{0.0, 0.0, v22, Width}];

    view5 = [parentViewController view];
    [view5 frame];
    [parentViewController jfxCenterAdjustedForOrientationForPortraitFrame:orientation relativeToParentFrame:0.0 withOrientation:{0.0, v22, Width, v25, v26, v27, v28}];
    v30 = v29;
    v32 = v31;
    view6 = [(CFXEffectBrowserContentPresenterViewController *)self view];
    [view6 setCenter:{v30, v32}];
  }
}

- (CGSize)expandedAppViewControllerSizeForEffectBrowserViewController:(id)controller
{
  [(CFXEffectBrowserContentPresenterViewController *)self CFX_alwaysExpandedAppHeight];
  v4 = v3;
  v5 = 375.0;
  result.height = v4;
  result.width = v5;
  return result;
}

- (double)CFX_alwaysExpandedAppHeight
{
  v3 = +[JFXOrientationMonitor keyWindow];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v23.origin.x = v5;
  v23.origin.y = v7;
  v23.size.width = v9;
  v23.size.height = v11;
  Width = CGRectGetWidth(v23);
  v24.origin.x = v5;
  v24.origin.y = v7;
  v24.size.width = v9;
  v24.size.height = v11;
  Height = CGRectGetHeight(v24);
  if (Width < Height)
  {
    Width = Height;
  }

  v25.origin.x = v5;
  v25.origin.y = v7;
  v25.size.width = v9;
  v25.size.height = v11;
  v14 = CGRectGetWidth(v25);
  v26.origin.x = v5;
  v26.origin.y = v7;
  v26.size.width = v9;
  v26.size.height = v11;
  v15 = CGRectGetHeight(v26);
  if (v14 >= v15)
  {
    v16 = v15;
  }

  else
  {
    v16 = v14;
  }

  delegate = [(CFXEffectBrowserContentPresenterViewController *)self delegate];
  [delegate effectBrowserViewController:self screenTopBarHeightForWindowBounds:4 orientation:{0.0, 0.0, Width, v16}];
  v19 = v18;

  v27.origin.x = 0.0;
  v27.origin.y = 0.0;
  v27.size.width = Width;
  v27.size.height = v16;
  v20 = CGRectGetHeight(v27);
  v21 = 112.0;
  if (v19 > 0.0)
  {
    v21 = v19 + 36.0;
  }

  return v20 - v21;
}

- (id)CFX_constraintsForAlwaysExpandedAppView:(id)view containerView:(id)containerView
{
  v22[4] = *MEMORY[0x277D85DE8];
  containerViewCopy = containerView;
  viewCopy = view;
  leftAnchor = [viewCopy leftAnchor];
  leftAnchor2 = [containerViewCopy leftAnchor];
  v10 = [leftAnchor constraintEqualToAnchor:leftAnchor2 constant:36.0];

  bottomAnchor = [viewCopy bottomAnchor];
  bottomAnchor2 = [containerViewCopy bottomAnchor];

  v13 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-36.0];

  widthAnchor = [viewCopy widthAnchor];
  v15 = [widthAnchor constraintEqualToConstant:375.0];

  [(CFXEffectBrowserContentPresenterViewController *)self CFX_alwaysExpandedAppHeight];
  v17 = v16;
  heightAnchor = [viewCopy heightAnchor];

  v19 = [heightAnchor constraintEqualToConstant:v17];

  v22[0] = v10;
  v22[1] = v13;
  v22[2] = v15;
  v22[3] = v19;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:4];

  return v20;
}

- (void)effectBrowserViewController:(id)controller presentExpandedAppViewController:(id)viewController animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  viewControllerCopy = viewController;
  completionCopy = completion;
  [(CFXEffectBrowserContentPresenterViewController *)self addChildViewController:viewControllerCopy];
  view = [(CFXEffectBrowserContentPresenterViewController *)self view];
  view2 = [viewControllerCopy view];
  [view addSubview:view2];

  view3 = [viewControllerCopy view];
  v14 = 0.0;
  [view3 setAlpha:0.0];

  view4 = [viewControllerCopy view];
  view5 = [(CFXEffectBrowserContentPresenterViewController *)self view];
  v17 = [(CFXEffectBrowserContentPresenterViewController *)self CFX_constraintsForAlwaysExpandedAppView:view4 containerView:view5];

  view6 = [viewControllerCopy view];
  [view6 setTranslatesAutoresizingMaskIntoConstraints:0];

  [MEMORY[0x277CCAAD0] activateConstraints:v17];
  [viewControllerCopy didMoveToParentViewController:self];
  if (animatedCopy)
  {
    v14 = 0.4;
  }

  v19 = MEMORY[0x277D75D40];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __131__CFXEffectBrowserContentPresenterViewController_effectBrowserViewController_presentExpandedAppViewController_animated_completion___block_invoke;
  v25[3] = &unk_278D79D20;
  v26 = viewControllerCopy;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __131__CFXEffectBrowserContentPresenterViewController_effectBrowserViewController_presentExpandedAppViewController_animated_completion___block_invoke_2;
  v23[3] = &unk_278D7A7C0;
  v24 = completionCopy;
  v20 = completionCopy;
  v21 = viewControllerCopy;
  v22 = [v19 runningPropertyAnimatorWithDuration:0 delay:v25 options:v23 animations:v14 completion:0.0];
}

void __131__CFXEffectBrowserContentPresenterViewController_effectBrowserViewController_presentExpandedAppViewController_animated_completion___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) view];
  [v1 setAlpha:1.0];
}

uint64_t __131__CFXEffectBrowserContentPresenterViewController_effectBrowserViewController_presentExpandedAppViewController_animated_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)effectBrowserViewController:(id)controller dismissExpandedAppViewController:(id)viewController animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  viewControllerCopy = viewController;
  completionCopy = completion;
  if (animatedCopy)
  {
    v10 = 0.4;
  }

  else
  {
    v10 = 0.0;
  }

  v11 = MEMORY[0x277D75D40];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __131__CFXEffectBrowserContentPresenterViewController_effectBrowserViewController_dismissExpandedAppViewController_animated_completion___block_invoke;
  v18[3] = &unk_278D79D20;
  v19 = viewControllerCopy;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __131__CFXEffectBrowserContentPresenterViewController_effectBrowserViewController_dismissExpandedAppViewController_animated_completion___block_invoke_2;
  v15[3] = &unk_278D7A7E8;
  v16 = v19;
  v17 = completionCopy;
  v12 = completionCopy;
  v13 = v19;
  v14 = [v11 runningPropertyAnimatorWithDuration:0 delay:v18 options:v15 animations:v10 completion:0.0];
}

void __131__CFXEffectBrowserContentPresenterViewController_effectBrowserViewController_dismissExpandedAppViewController_animated_completion___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) view];
  [v1 setAlpha:0.0];
}

uint64_t __131__CFXEffectBrowserContentPresenterViewController_effectBrowserViewController_dismissExpandedAppViewController_animated_completion___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) jfxRemoveFromParentViewController];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (CFXEffectBrowserContentPresenterViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end