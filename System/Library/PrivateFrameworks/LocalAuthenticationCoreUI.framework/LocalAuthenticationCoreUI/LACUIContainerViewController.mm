@interface LACUIContainerViewController
- (BOOL)becomeFirstResponder;
- (BOOL)canBecomeFirstResponder;
- (BOOL)resignFirstResponder;
- (LACUIContainerViewController)init;
- (LACUIContainerViewControllerDelegate)delegate;
- (UIViewController)currentViewController;
- (id)navigationItem;
- (int64_t)_effectiveTransitionStyle:(int64_t)a3;
- (void)_preferredContentSizeDidChangeForChildViewController:(id)a3;
- (void)_setupScrollView;
- (void)presentViewController:(id)a3 transitionStyle:(int64_t)a4;
- (void)setBackgroundColor:(id)a3;
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
  v2 = [(LACUIContainerViewController *)self currentViewController];
  v3 = [v2 canBecomeFirstResponder];

  return v3;
}

- (BOOL)becomeFirstResponder
{
  v2 = [(LACUIContainerViewController *)self currentViewController];
  v3 = [v2 becomeFirstResponder];

  return v3;
}

- (BOOL)resignFirstResponder
{
  v2 = [(LACUIContainerViewController *)self currentViewController];
  v3 = [v2 resignFirstResponder];

  return v3;
}

- (id)navigationItem
{
  v3 = [(LACUIContainerViewController *)self parentViewController];
  v4 = [v3 navigationItem];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = LACUIContainerViewController;
    v6 = [(LACUIContainerViewController *)&v9 navigationItem];
  }

  v7 = v6;

  return v7;
}

- (void)_preferredContentSizeDidChangeForChildViewController:(id)a3
{
  v9.receiver = self;
  v9.super_class = LACUIContainerViewController;
  v4 = a3;
  [(LACUIContainerViewController *)&v9 _preferredContentSizeDidChangeForChildViewController:v4];
  [v4 preferredContentSize];
  v6 = v5;
  v8 = v7;

  [(LACUIContainerViewController *)self setPreferredContentSize:v6, v8];
}

- (void)presentViewController:(id)a3 transitionStyle:(int64_t)a4
{
  v72[5] = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (v6)
  {
    [(LACUIContainerViewController *)self addChildViewController:v6];
    [v6 view];
    v7 = v61 = a4;
    [v7 setTranslatesAutoresizingMaskIntoConstraints:0];

    v8 = [(LACUIContainerViewController *)self containerView];
    v9 = [v6 view];
    [v8 addSubview:v9];

    v48 = MEMORY[0x277CCAAD0];
    v60 = [v6 view];
    v57 = [v60 topAnchor];
    v58 = [(LACUIContainerViewController *)self containerView];
    v56 = [v58 topAnchor];
    v55 = [v57 constraintEqualToAnchor:v56];
    v72[0] = v55;
    v54 = [v6 view];
    v52 = [v54 bottomAnchor];
    v53 = [(LACUIContainerViewController *)self containerView];
    v51 = [v53 bottomAnchor];
    v50 = [v52 constraintEqualToAnchor:v51];
    v72[1] = v50;
    v49 = [v6 view];
    v46 = [v49 widthAnchor];
    v47 = [(LACUIContainerViewController *)self view];
    v45 = [v47 widthAnchor];
    v44 = [v46 constraintEqualToAnchor:v45];
    v72[2] = v44;
    v43 = [v6 view];
    v42 = [v43 heightAnchor];
    [(LACUIContainerViewController *)self view];
    v62 = v6;
    v11 = v10 = self;
    v12 = [v11 heightAnchor];
    v13 = [v42 constraintEqualToAnchor:v12];
    v72[3] = v13;
    v14 = [v62 view];
    v15 = [v14 leadingAnchor];
    v16 = [(LACUIContainerViewController *)self containerView];
    v17 = [v16 leadingAnchor];
    v18 = [v15 constraintEqualToAnchor:v17];
    v72[4] = v18;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v72 count:5];
    [v48 activateConstraints:v19];

    v20 = v10;
    v6 = v62;

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
      v31 = [(LACUIContainerViewController *)v20 view];
      [v31 bounds];
      v69 = v59;
      CGAffineTransformTranslate(&v71, &v69, -v32, 0.0);

      v28 = [(LACUIContainerViewController *)v20 view];
      [v28 bounds];
      v30 = v33;
    }

    else
    {
      if (v21 != 1)
      {
LABEL_10:
        v34 = [(LACUIContainerViewController *)v20 currentViewController];
        v35 = v62;
        v36 = [v35 view];
        v69 = v71;
        [v36 setTransform:&v69];

        v37 = MEMORY[0x277D75D18];
        v65[0] = MEMORY[0x277D85DD0];
        v65[1] = 3221225472;
        v65[2] = __70__LACUIContainerViewController_presentViewController_transitionStyle___block_invoke;
        v65[3] = &unk_27981E9F8;
        v38 = v34;
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
      v26 = [(LACUIContainerViewController *)v20 view];
      [v26 bounds];
      v69 = v59;
      CGAffineTransformTranslate(&v71, &v69, v27, 0.0);

      v28 = [(LACUIContainerViewController *)v20 view];
      [v28 bounds];
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

- (void)setBackgroundColor:(id)a3
{
  v4 = a3;
  v5 = [(LACUIContainerViewController *)self containerView];
  [v5 setBackgroundColor:v4];
}

- (void)_setupScrollView
{
  v35[4] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277D759D8]);
  [(LACUIContainerViewController *)self setContainerView:v3];

  v4 = [(LACUIContainerViewController *)self containerView];
  [v4 setSemanticContentAttribute:3];

  v5 = [(LACUIContainerViewController *)self containerView];
  [v5 setScrollEnabled:0];

  v6 = [MEMORY[0x277D75418] currentDevice];
  v7 = [v6 userInterfaceIdiom];

  if ((v7 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v8 = [(LACUIContainerViewController *)self containerView];
    [v8 setContentInsetAdjustmentBehavior:2];
  }

  v9 = [(LACUIContainerViewController *)self containerView];
  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];

  v10 = [(LACUIContainerViewController *)self view];
  v11 = [(LACUIContainerViewController *)self containerView];
  [v10 addSubview:v11];

  v25 = MEMORY[0x277CCAAD0];
  v34 = [(LACUIContainerViewController *)self containerView];
  v32 = [v34 topAnchor];
  v33 = [(LACUIContainerViewController *)self view];
  v31 = [v33 topAnchor];
  v30 = [v32 constraintEqualToAnchor:v31];
  v35[0] = v30;
  v29 = [(LACUIContainerViewController *)self containerView];
  v27 = [v29 leadingAnchor];
  v28 = [(LACUIContainerViewController *)self view];
  v26 = [v28 leadingAnchor];
  v24 = [v27 constraintEqualToAnchor:v26];
  v35[1] = v24;
  v23 = [(LACUIContainerViewController *)self containerView];
  v12 = [v23 trailingAnchor];
  v13 = [(LACUIContainerViewController *)self view];
  v14 = [v13 trailingAnchor];
  v15 = [v12 constraintEqualToAnchor:v14];
  v35[2] = v15;
  v16 = [(LACUIContainerViewController *)self containerView];
  v17 = [v16 bottomAnchor];
  v18 = [(LACUIContainerViewController *)self view];
  v19 = [v18 bottomAnchor];
  v20 = [v17 constraintEqualToAnchor:v19];
  v35[3] = v20;
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:4];
  [v25 activateConstraints:v21];

  v22 = *MEMORY[0x277D85DE8];
}

- (int64_t)_effectiveTransitionStyle:(int64_t)a3
{
  v4 = [MEMORY[0x277D75D18] userInterfaceLayoutDirectionForSemanticContentAttribute:0];
  v5 = 2;
  v6 = 1;
  if (a3 != 2)
  {
    v6 = a3;
  }

  if (a3 != 1)
  {
    v5 = v6;
  }

  if (v4)
  {
    return v5;
  }

  else
  {
    return a3;
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