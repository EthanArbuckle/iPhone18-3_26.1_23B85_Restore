@interface CFXEffectBrowserContentPresenterViewController
- (CFXEffectBrowserContentPresenterViewControllerDelegate)delegate;
- (CGSize)expandedAppViewControllerSizeForEffectBrowserViewController:(id)a3;
- (double)CFX_alwaysExpandedAppHeight;
- (id)CFX_constraintsForAlwaysExpandedAppView:(id)a3 containerView:(id)a4;
- (void)configureEffectBrowserContentPresentationForOrientation:(int64_t)a3;
- (void)effectBrowserViewController:(id)a3 dismissExpandedAppViewController:(id)a4 animated:(BOOL)a5 completion:(id)a6;
- (void)effectBrowserViewController:(id)a3 presentExpandedAppViewController:(id)a4 animated:(BOOL)a5 completion:(id)a6;
- (void)loadView;
@end

@implementation CFXEffectBrowserContentPresenterViewController

- (void)loadView
{
  v3 = objc_opt_new();
  [(CFXEffectBrowserContentPresenterViewController *)self setView:v3];
}

- (void)configureEffectBrowserContentPresentationForOrientation:(int64_t)a3
{
  v5 = [(CFXEffectBrowserContentPresenterViewController *)self parentViewController];
  v6 = [v5 view];
  [v6 bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v15 = [MEMORY[0x277D75418] currentDevice];
  v16 = [v15 userInterfaceIdiom];

  if (v16)
  {
    v17 = [(CFXEffectBrowserContentPresenterViewController *)self view];
    [v17 setFrame:{v8, v10, v12, v14}];
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
    switch(a3)
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
        if (a3 != 2)
        {
          v20 = 0.0;
        }

        break;
    }

    CGAffineTransformMakeRotation(&v35, -v20);
    v21 = [(CFXEffectBrowserContentPresenterViewController *)self view];
    v34 = v35;
    [v21 setTransform:&v34];

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

    v23 = [(CFXEffectBrowserContentPresenterViewController *)self view];
    [v23 setBounds:{0.0, 0.0, v22, Width}];

    v24 = [v5 view];
    [v24 frame];
    [v5 jfxCenterAdjustedForOrientationForPortraitFrame:a3 relativeToParentFrame:0.0 withOrientation:{0.0, v22, Width, v25, v26, v27, v28}];
    v30 = v29;
    v32 = v31;
    v33 = [(CFXEffectBrowserContentPresenterViewController *)self view];
    [v33 setCenter:{v30, v32}];
  }
}

- (CGSize)expandedAppViewControllerSizeForEffectBrowserViewController:(id)a3
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

  v17 = [(CFXEffectBrowserContentPresenterViewController *)self delegate];
  [v17 effectBrowserViewController:self screenTopBarHeightForWindowBounds:4 orientation:{0.0, 0.0, Width, v16}];
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

- (id)CFX_constraintsForAlwaysExpandedAppView:(id)a3 containerView:(id)a4
{
  v22[4] = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
  v8 = [v7 leftAnchor];
  v9 = [v6 leftAnchor];
  v10 = [v8 constraintEqualToAnchor:v9 constant:36.0];

  v11 = [v7 bottomAnchor];
  v12 = [v6 bottomAnchor];

  v13 = [v11 constraintEqualToAnchor:v12 constant:-36.0];

  v14 = [v7 widthAnchor];
  v15 = [v14 constraintEqualToConstant:375.0];

  [(CFXEffectBrowserContentPresenterViewController *)self CFX_alwaysExpandedAppHeight];
  v17 = v16;
  v18 = [v7 heightAnchor];

  v19 = [v18 constraintEqualToConstant:v17];

  v22[0] = v10;
  v22[1] = v13;
  v22[2] = v15;
  v22[3] = v19;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:4];

  return v20;
}

- (void)effectBrowserViewController:(id)a3 presentExpandedAppViewController:(id)a4 animated:(BOOL)a5 completion:(id)a6
{
  v7 = a5;
  v9 = a4;
  v10 = a6;
  [(CFXEffectBrowserContentPresenterViewController *)self addChildViewController:v9];
  v11 = [(CFXEffectBrowserContentPresenterViewController *)self view];
  v12 = [v9 view];
  [v11 addSubview:v12];

  v13 = [v9 view];
  v14 = 0.0;
  [v13 setAlpha:0.0];

  v15 = [v9 view];
  v16 = [(CFXEffectBrowserContentPresenterViewController *)self view];
  v17 = [(CFXEffectBrowserContentPresenterViewController *)self CFX_constraintsForAlwaysExpandedAppView:v15 containerView:v16];

  v18 = [v9 view];
  [v18 setTranslatesAutoresizingMaskIntoConstraints:0];

  [MEMORY[0x277CCAAD0] activateConstraints:v17];
  [v9 didMoveToParentViewController:self];
  if (v7)
  {
    v14 = 0.4;
  }

  v19 = MEMORY[0x277D75D40];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __131__CFXEffectBrowserContentPresenterViewController_effectBrowserViewController_presentExpandedAppViewController_animated_completion___block_invoke;
  v25[3] = &unk_278D79D20;
  v26 = v9;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __131__CFXEffectBrowserContentPresenterViewController_effectBrowserViewController_presentExpandedAppViewController_animated_completion___block_invoke_2;
  v23[3] = &unk_278D7A7C0;
  v24 = v10;
  v20 = v10;
  v21 = v9;
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

- (void)effectBrowserViewController:(id)a3 dismissExpandedAppViewController:(id)a4 animated:(BOOL)a5 completion:(id)a6
{
  v7 = a5;
  v8 = a4;
  v9 = a6;
  if (v7)
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
  v19 = v8;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __131__CFXEffectBrowserContentPresenterViewController_effectBrowserViewController_dismissExpandedAppViewController_animated_completion___block_invoke_2;
  v15[3] = &unk_278D7A7E8;
  v16 = v19;
  v17 = v9;
  v12 = v9;
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