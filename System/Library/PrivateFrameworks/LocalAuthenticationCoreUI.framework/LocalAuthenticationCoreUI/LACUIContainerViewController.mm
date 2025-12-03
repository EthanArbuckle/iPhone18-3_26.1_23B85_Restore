@interface LACUIContainerViewController
- (BOOL)becomeFirstResponder;
- (BOOL)canBecomeFirstResponder;
- (BOOL)resignFirstResponder;
- (LACUIContainerViewController)init;
- (LACUIContainerViewControllerDelegate)delegate;
- (UIViewController)currentViewController;
- (id)navigationItem;
- (int64_t)_effectiveTransitionStyle:(int64_t)style;
- (void)_preferredContentSizeDidChangeForChildViewController:(id)controller;
- (void)_setupScrollView;
- (void)presentViewController:(id)controller transitionStyle:(int64_t)style;
- (void)setBackgroundColor:(id)color;
@end

@implementation LACUIContainerViewController

- (LACUIContainerViewController)init
{
  v5.receiver = self;
  v5.super_class = LACUIContainerViewController;
  v2 = [(LACUIContainerViewController *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(LACUIContainerViewController *)v2 _setupScrollView];
  }

  return v3;
}

- (BOOL)canBecomeFirstResponder
{
  currentViewController = [(LACUIContainerViewController *)self currentViewController];
  canBecomeFirstResponder = [currentViewController canBecomeFirstResponder];

  return canBecomeFirstResponder;
}

- (BOOL)becomeFirstResponder
{
  currentViewController = [(LACUIContainerViewController *)self currentViewController];
  becomeFirstResponder = [currentViewController becomeFirstResponder];

  return becomeFirstResponder;
}

- (BOOL)resignFirstResponder
{
  currentViewController = [(LACUIContainerViewController *)self currentViewController];
  resignFirstResponder = [currentViewController resignFirstResponder];

  return resignFirstResponder;
}

- (id)navigationItem
{
  parentViewController = [(LACUIContainerViewController *)self parentViewController];
  navigationItem = [parentViewController navigationItem];
  v5 = navigationItem;
  if (navigationItem)
  {
    navigationItem2 = navigationItem;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = LACUIContainerViewController;
    navigationItem2 = [(LACUIContainerViewController *)&v9 navigationItem];
  }

  v7 = navigationItem2;

  return v7;
}

- (void)_preferredContentSizeDidChangeForChildViewController:(id)controller
{
  v9.receiver = self;
  v9.super_class = LACUIContainerViewController;
  controllerCopy = controller;
  [(LACUIContainerViewController *)&v9 _preferredContentSizeDidChangeForChildViewController:controllerCopy];
  [controllerCopy preferredContentSize];
  v6 = v5;
  v8 = v7;

  [(LACUIContainerViewController *)self setPreferredContentSize:v6, v8];
}

- (void)presentViewController:(id)controller transitionStyle:(int64_t)style
{
  v72[5] = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  if (controllerCopy)
  {
    [(LACUIContainerViewController *)self addChildViewController:controllerCopy];
    [controllerCopy view];
    v7 = v61 = style;
    [v7 setTranslatesAutoresizingMaskIntoConstraints:0];

    containerView = [(LACUIContainerViewController *)self containerView];
    view = [controllerCopy view];
    [containerView addSubview:view];

    v48 = MEMORY[0x277CCAAD0];
    view2 = [controllerCopy view];
    topAnchor = [view2 topAnchor];
    containerView2 = [(LACUIContainerViewController *)self containerView];
    topAnchor2 = [containerView2 topAnchor];
    v55 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v72[0] = v55;
    view3 = [controllerCopy view];
    bottomAnchor = [view3 bottomAnchor];
    containerView3 = [(LACUIContainerViewController *)self containerView];
    bottomAnchor2 = [containerView3 bottomAnchor];
    v50 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v72[1] = v50;
    view4 = [controllerCopy view];
    widthAnchor = [view4 widthAnchor];
    view5 = [(LACUIContainerViewController *)self view];
    widthAnchor2 = [view5 widthAnchor];
    v44 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
    v72[2] = v44;
    view6 = [controllerCopy view];
    heightAnchor = [view6 heightAnchor];
    [(LACUIContainerViewController *)self view];
    v62 = controllerCopy;
    v11 = v10 = self;
    heightAnchor2 = [v11 heightAnchor];
    v13 = [heightAnchor constraintEqualToAnchor:heightAnchor2];
    v72[3] = v13;
    view7 = [v62 view];
    leadingAnchor = [view7 leadingAnchor];
    containerView4 = [(LACUIContainerViewController *)self containerView];
    leadingAnchor2 = [containerView4 leadingAnchor];
    v18 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v72[4] = v18;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v72 count:5];
    [v48 activateConstraints:v19];

    v20 = v10;
    controllerCopy = v62;

    [v62 didMoveToParentViewController:v20];
    v21 = [(LACUIContainerViewController *)v20 _effectiveTransitionStyle:v61];
    v22 = *MEMORY[0x277CBF2C0];
    v23 = *(MEMORY[0x277CBF2C0] + 16);
    v24 = *(MEMORY[0x277CBF2C0] + 32);
    *&v71.c = v23;
    *&v71.tx = v24;
    *&v70.a = v22;
    *&v70.c = v23;
    *&v70.tx = v24;
    *&v71.a = v22;
    if (v21)
    {
      v25 = 0.3;
    }

    else
    {
      v25 = 0.0;
    }

    if (v21 == 2)
    {
      *&v59.a = v22;
      *&v59.c = v23;
      *&v59.tx = v24;
      view8 = [(LACUIContainerViewController *)v20 view];
      [view8 bounds];
      v69 = v59;
      CGAffineTransformTranslate(&v71, &v69, -v32, 0.0);

      view9 = [(LACUIContainerViewController *)v20 view];
      [view9 bounds];
      v30 = v33;
    }

    else
    {
      if (v21 != 1)
      {
LABEL_10:
        currentViewController = [(LACUIContainerViewController *)v20 currentViewController];
        v35 = v62;
        view10 = [v35 view];
        v69 = v71;
        [view10 setTransform:&v69];

        v37 = MEMORY[0x277D75D18];
        v65[0] = MEMORY[0x277D85DD0];
        v65[1] = 3221225472;
        v65[2] = __70__LACUIContainerViewController_presentViewController_transitionStyle___block_invoke;
        v65[3] = &unk_27981E9F8;
        v38 = currentViewController;
        v68 = v70;
        v66 = v38;
        v67 = v35;
        v63[0] = MEMORY[0x277D85DD0];
        v63[1] = 3221225472;
        v63[2] = __70__LACUIContainerViewController_presentViewController_transitionStyle___block_invoke_2;
        v63[3] = &unk_27981EA20;
        v64 = v38;
        v39 = v38;
        v40 = v35;
        [v37 animateWithDuration:v65 animations:v63 completion:v25];
        [(LACUIContainerViewController *)v20 setCurrentViewController:v40];

        goto LABEL_11;
      }

      *&v59.a = v22;
      *&v59.c = v23;
      *&v59.tx = v24;
      view11 = [(LACUIContainerViewController *)v20 view];
      [view11 bounds];
      v69 = v59;
      CGAffineTransformTranslate(&v71, &v69, v27, 0.0);

      view9 = [(LACUIContainerViewController *)v20 view];
      [view9 bounds];
      v30 = -v29;
    }

    v69 = v59;
    CGAffineTransformTranslate(&v70, &v69, v30, 0.0);

    goto LABEL_10;
  }

LABEL_11:

  v41 = *MEMORY[0x277D85DE8];
}

void __70__LACUIContainerViewController_presentViewController_transitionStyle___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  v3 = *(a1 + 64);
  v6 = *(a1 + 48);
  v7 = v3;
  v8 = *(a1 + 80);
  [v2 setTransform:&v6];

  v4 = [*(a1 + 40) view];
  v5 = *(MEMORY[0x277CBF2C0] + 16);
  v6 = *MEMORY[0x277CBF2C0];
  v7 = v5;
  v8 = *(MEMORY[0x277CBF2C0] + 32);
  [v4 setTransform:&v6];
}

uint64_t __70__LACUIContainerViewController_presentViewController_transitionStyle___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) willMoveToParentViewController:0];
  v2 = [*(a1 + 32) view];
  [v2 removeFromSuperview];

  v3 = *(a1 + 32);

  return [v3 removeFromParentViewController];
}

- (void)setBackgroundColor:(id)color
{
  colorCopy = color;
  containerView = [(LACUIContainerViewController *)self containerView];
  [containerView setBackgroundColor:colorCopy];
}

- (void)_setupScrollView
{
  v35[4] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277D759D8]);
  [(LACUIContainerViewController *)self setContainerView:v3];

  containerView = [(LACUIContainerViewController *)self containerView];
  [containerView setSemanticContentAttribute:3];

  containerView2 = [(LACUIContainerViewController *)self containerView];
  [containerView2 setScrollEnabled:0];

  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    containerView3 = [(LACUIContainerViewController *)self containerView];
    [containerView3 setContentInsetAdjustmentBehavior:2];
  }

  containerView4 = [(LACUIContainerViewController *)self containerView];
  [containerView4 setTranslatesAutoresizingMaskIntoConstraints:0];

  view = [(LACUIContainerViewController *)self view];
  containerView5 = [(LACUIContainerViewController *)self containerView];
  [view addSubview:containerView5];

  v25 = MEMORY[0x277CCAAD0];
  containerView6 = [(LACUIContainerViewController *)self containerView];
  topAnchor = [containerView6 topAnchor];
  view2 = [(LACUIContainerViewController *)self view];
  topAnchor2 = [view2 topAnchor];
  v30 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v35[0] = v30;
  containerView7 = [(LACUIContainerViewController *)self containerView];
  leadingAnchor = [containerView7 leadingAnchor];
  view3 = [(LACUIContainerViewController *)self view];
  leadingAnchor2 = [view3 leadingAnchor];
  v24 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v35[1] = v24;
  containerView8 = [(LACUIContainerViewController *)self containerView];
  trailingAnchor = [containerView8 trailingAnchor];
  view4 = [(LACUIContainerViewController *)self view];
  trailingAnchor2 = [view4 trailingAnchor];
  v15 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v35[2] = v15;
  containerView9 = [(LACUIContainerViewController *)self containerView];
  bottomAnchor = [containerView9 bottomAnchor];
  view5 = [(LACUIContainerViewController *)self view];
  bottomAnchor2 = [view5 bottomAnchor];
  v20 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v35[3] = v20;
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:4];
  [v25 activateConstraints:v21];

  v22 = *MEMORY[0x277D85DE8];
}

- (int64_t)_effectiveTransitionStyle:(int64_t)style
{
  v4 = [MEMORY[0x277D75D18] userInterfaceLayoutDirectionForSemanticContentAttribute:0];
  v5 = 2;
  styleCopy = 1;
  if (style != 2)
  {
    styleCopy = style;
  }

  if (style != 1)
  {
    v5 = styleCopy;
  }

  if (v4)
  {
    return v5;
  }

  else
  {
    return style;
  }
}

- (UIViewController)currentViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_currentViewController);

  return WeakRetained;
}

- (LACUIContainerViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end