@interface FMSlidingPaneViewController
- (BOOL)isPaneShowing;
- (CGSize)_normalizeSize:(CGSize)a3;
- (CGSize)_preferredSizeForPaneState:(id)a3;
- (FMFuture)currentFuture;
- (FMSlidingPaneViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (FMSlidingPaneViewControllerDelegate)delegate;
- (UIEdgeInsets)paneContentInsets;
- (UIEdgeInsets)paneInsets;
- (UIView)paneView;
- (UIViewController)paneViewController;
- (UIVisualEffect)paneVisualEffect;
- (id)_metricsFromEdgeInsets:(UIEdgeInsets)a3;
- (id)newActionFuture;
- (id)traitCollectionForChildViewController:(id)a3;
- (void)_createPaneContentConstraintsForState:(id)a3;
- (void)_createPaneViewForState:(id)a3;
- (void)_crossDissolveOldPaneState:(id)a3 newPaneState:(id)a4 animated:(BOOL)a5 completion:(id)a6;
- (void)_dismissPaneState:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)_paneFrameChanged:(CGRect)a3;
- (void)_presentPaneState:(id)a3 animated:(BOOL)a4 interactive:(BOOL)a5 completion:(id)a6;
- (void)_removeChildViewControllerForState:(id)a3;
- (void)awakeFromNib;
- (void)commonConfiguration;
- (void)completeFuture:(id)a3;
- (void)didDismissPane:(id)a3 animated:(BOOL)a4;
- (void)didPresentPane:(id)a3 inRect:(CGRect)a4 animated:(BOOL)a5;
- (void)dismissPaneViewControllerAnimated:(BOOL)a3 completion:(id)a4;
- (void)paneSizeChanged:(CGRect)a3 forViewController:(id)a4;
- (void)presentPaneViewController:(id)a3 fromEdge:(unint64_t)a4 animated:(BOOL)a5 completion:(id)a6;
- (void)presentPaneViewController:(id)a3 fromEdge:(unint64_t)a4 withPercent:(double)a5 completion:(id)a6;
- (void)setPaneVisualEffect:(id)a3;
- (void)setPresentingConstraintConstant:(double)a3;
- (void)viewWillAppear:(BOOL)a3;
- (void)willDismissPane:(id)a3 animated:(BOOL)a4;
- (void)willPresentPane:(id)a3 inRect:(CGRect)a4 animated:(BOOL)a5;
@end

@implementation FMSlidingPaneViewController

- (FMSlidingPaneViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v7.receiver = self;
  v7.super_class = FMSlidingPaneViewController;
  v4 = [(FMViewController *)&v7 initWithNibName:a3 bundle:a4];
  v5 = v4;
  if (v4)
  {
    [(FMSlidingPaneViewController *)v4 commonConfiguration];
  }

  return v5;
}

- (void)awakeFromNib
{
  v3.receiver = self;
  v3.super_class = FMSlidingPaneViewController;
  [(FMViewController *)&v3 awakeFromNib];
  [(FMSlidingPaneViewController *)self commonConfiguration];
}

- (void)commonConfiguration
{
  v3 = *MEMORY[0x277D768C8];
  v4 = *(MEMORY[0x277D768C8] + 8);
  v5 = *(MEMORY[0x277D768C8] + 16);
  v6 = *(MEMORY[0x277D768C8] + 24);
  [(FMSlidingPaneViewController *)self setPaneInsets:*MEMORY[0x277D768C8], v4, v5, v6];
  [(FMSlidingPaneViewController *)self setPaneContentInsets:v3, v4, v5, v6];
  [(FMSlidingPaneViewController *)self setAnimationDuration:0.200000003];
  [(FMSlidingPaneViewController *)self setAnimationSpringDamping:1.0];
  [(FMSlidingPaneViewController *)self setAnimationInitialVelocity:0.0];
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  [(FMSlidingPaneViewController *)self setActionFutures:v7];
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = FMSlidingPaneViewController;
  [(FMViewController *)&v4 viewWillAppear:a3];
  [(FMSlidingPaneViewController *)self setExtendedLayoutIncludesOpaqueBars:1];
}

- (id)traitCollectionForChildViewController:(id)a3
{
  v21[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v19.receiver = self;
  v19.super_class = FMSlidingPaneViewController;
  v5 = [(FMSlidingPaneViewController *)&v19 traitCollection];
  v6 = [(FMSlidingPaneViewController *)self paneState];
  if (v6)
  {
    v7 = v6;
    v8 = [(FMSlidingPaneViewController *)self paneState];
    v9 = [v8 paneViewController];

    if (v9 == v4)
    {
      v10 = [(FMSlidingPaneViewController *)self paneState];
      v11 = [v10 edge];

      if (v11 > 3)
      {
        if (v11 == 8)
        {
LABEL_10:
          v12 = [MEMORY[0x277D75C80] traitCollectionWithHorizontalSizeClass:1];
          v13 = MEMORY[0x277D75C80];
          v20[0] = v5;
          v20[1] = v12;
          v14 = MEMORY[0x277CBEA60];
          v15 = v20;
          goto LABEL_11;
        }

        if (v11 != 4)
        {
          goto LABEL_16;
        }
      }

      else if (v11 != 1)
      {
        if (v11 != 2)
        {
LABEL_16:
          v12 = LogCategory_Unspecified();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            [FMSlidingPaneViewController traitCollectionForChildViewController:?];
          }

          goto LABEL_12;
        }

        goto LABEL_10;
      }

      v12 = [MEMORY[0x277D75C80] traitCollectionWithVerticalSizeClass:1];
      v13 = MEMORY[0x277D75C80];
      v21[0] = v5;
      v21[1] = v12;
      v14 = MEMORY[0x277CBEA60];
      v15 = v21;
LABEL_11:
      v16 = [v14 arrayWithObjects:v15 count:2];
      v17 = [v13 traitCollectionWithTraitsFromCollections:v16];

      v5 = v17;
LABEL_12:
    }
  }

  return v5;
}

- (UIView)paneView
{
  v2 = [(FMSlidingPaneViewController *)self paneState];
  v3 = [v2 paneView];

  return v3;
}

- (UIViewController)paneViewController
{
  v2 = [(FMSlidingPaneViewController *)self paneState];
  v3 = [v2 paneViewController];

  return v3;
}

- (UIVisualEffect)paneVisualEffect
{
  paneVisualEffect = self->_paneVisualEffect;
  if (!paneVisualEffect)
  {
    v4 = [MEMORY[0x277D75210] effectWithStyle:0];
    v5 = self->_paneVisualEffect;
    self->_paneVisualEffect = v4;

    paneVisualEffect = self->_paneVisualEffect;
  }

  return paneVisualEffect;
}

- (void)setPaneVisualEffect:(id)a3
{
  v14 = a3;
  objc_storeStrong(&self->_paneVisualEffect, a3);
  v5 = [(FMSlidingPaneViewController *)self paneState];

  if (v5)
  {
    v6 = [(FMSlidingPaneViewController *)self paneState];
    v7 = [v6 visualEffectView];

    v8 = [objc_alloc(MEMORY[0x277D75D68]) initWithEffect:v14];
    [v7 frame];
    [v8 setFrame:?];
    [v8 setAutoresizingMask:{objc_msgSend(v7, "autoresizingMask")}];
    v9 = [(FMSlidingPaneViewController *)self paneState];
    [v9 setVisualEffectView:v8];

    [v7 removeFromSuperview];
    v10 = [(FMSlidingPaneViewController *)self paneState];
    v11 = [v10 paneView];
    [v11 addSubview:v8];

    v12 = [(FMSlidingPaneViewController *)self paneState];
    v13 = [v12 paneView];
    [v13 sendSubviewToBack:v8];
  }
}

- (void)presentPaneViewController:(id)a3 fromEdge:(unint64_t)a4 animated:(BOOL)a5 completion:(id)a6
{
  v7 = a5;
  v42 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a6;
  v12 = [(FMSlidingPaneViewController *)self paneState];
  objc_initWeak(&location, self);
  v13 = LogCategory_FMSlidingPaneViewController();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v37 = v10;
    v38 = 2048;
    v39 = a4;
    v40 = 1024;
    v41 = v7;
    _os_log_impl(&dword_24A315000, v13, OS_LOG_TYPE_DEFAULT, "presentPaneViewController: %@ fromEdge:%ld animated:%d completed:", buf, 0x1Cu);
  }

  v14 = [v10 view];
  v15 = [(FMSlidingPaneViewController *)self navigationController];
  if (v15)
  {
    v16 = [(FMSlidingPaneViewController *)self navigationController];
    v17 = [v16 isToolbarHidden];

    if ((v17 & 1) == 0)
    {
      [(FMSlidingPaneViewController *)self setDidHideToolbar:1];
      v18 = [(FMSlidingPaneViewController *)self navigationController];
      [v18 setToolbarHidden:1 animated:v7];
    }
  }

  v19 = [[SlidingPaneViewState alloc] initWithViewController:v10 edge:a4];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __86__FMSlidingPaneViewController_presentPaneViewController_fromEdge_animated_completion___block_invoke;
  v29[3] = &unk_278FDBA38;
  objc_copyWeak(&v33, &location);
  v20 = v19;
  v30 = v20;
  v21 = v12;
  v31 = v21;
  v22 = v11;
  v32 = v22;
  v34 = v7;
  v23 = MEMORY[0x24C216350](v29);
  v24 = [(FMSlidingPaneViewController *)self currentFuture];
  if (v24)
  {
    v25 = LogCategory_FMSlidingPaneViewController();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_24A315000, v25, OS_LOG_TYPE_DEFAULT, "Deferring presenting until previous action is complete", buf, 2u);
    }

    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __86__FMSlidingPaneViewController_presentPaneViewController_fromEdge_animated_completion___block_invoke_80;
    v27[3] = &unk_278FDBA60;
    v28 = v23;
    v26 = [v24 addCompletionBlock:v27];
  }

  else
  {
    v23[2](v23);
  }

  objc_destroyWeak(&v33);
  objc_destroyWeak(&location);
}

void __86__FMSlidingPaneViewController_presentPaneViewController_fromEdge_animated_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained setPaneState:*(a1 + 32)];
  v2 = *(a1 + 40);
  v3 = [WeakRetained paneState];
  if (v2)
  {
    [WeakRetained _crossDissolveOldPaneState:v2 newPaneState:v3 animated:1 completion:*(a1 + 48)];
  }

  else
  {
    [WeakRetained _presentPaneState:v3 animated:*(a1 + 64) interactive:0 completion:*(a1 + 48)];
  }
}

- (void)presentPaneViewController:(id)a3 fromEdge:(unint64_t)a4 withPercent:(double)a5 completion:(id)a6
{
  v56 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a6;
  v12 = [(FMSlidingPaneViewController *)self paneState];
  v13 = LogCategory_FMSlidingPaneViewController();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v50 = 138412802;
    v51 = v10;
    v52 = 2048;
    v53 = a4;
    v54 = 2048;
    v55 = a5;
    _os_log_impl(&dword_24A315000, v13, OS_LOG_TYPE_DEFAULT, "presentPaneViewController: %@ fromEdge:%ld withPercent:%f completion:", &v50, 0x20u);
  }

  v14 = [v10 view];
  v15 = [(FMSlidingPaneViewController *)self navigationController];
  if (v15)
  {
    v16 = v15;
    v17 = [(FMSlidingPaneViewController *)self navigationController];
    v18 = [v17 isToolbarHidden];

    if ((v18 & 1) == 0)
    {
      [(FMSlidingPaneViewController *)self setDidHideToolbar:1];
      v19 = [(FMSlidingPaneViewController *)self navigationController];
      [v19 setToolbarHidden:1 animated:1];
    }
  }

  v20 = [(FMSlidingPaneViewController *)self currentFuture];

  if (v20)
  {
    v21 = LogCategory_FMSlidingPaneViewController();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [FMSlidingPaneViewController presentPaneViewController:fromEdge:withPercent:completion:];
    }
  }

  v22 = [v12 paneViewController];
  v23 = [v22 isEqual:v10];

  if ((v23 & 1) == 0)
  {
    v24 = [[SlidingPaneViewState alloc] initWithViewController:v10 edge:a4];
    [(FMSlidingPaneViewController *)self setPaneState:v24];

    v25 = [(FMSlidingPaneViewController *)self paneState];
    if (v12)
    {
      [(FMSlidingPaneViewController *)self _crossDissolveOldPaneState:v12 newPaneState:v25 animated:0 completion:v11];
    }

    else
    {
      [(FMSlidingPaneViewController *)self _presentPaneState:v25 animated:0 interactive:1 completion:v11];
    }
  }

  v26 = [(FMSlidingPaneViewController *)self paneState];
  [(FMSlidingPaneViewController *)self _preferredSizeForPaneState:v26];
  v28 = v27;
  v30 = v29;

  v31 = [(FMSlidingPaneViewController *)self paneState];
  v32 = [v31 edge];

  if (v32 <= 3)
  {
    if (v32 != 1)
    {
      if (v32 == 2)
      {
        v33 = -((v28 + 2.0) * (1.0 - a5));
LABEL_22:
        v34 = [(FMSlidingPaneViewController *)self paneState];
        v35 = [v34 paneHorizontalPositionConstraint];
LABEL_28:
        v36 = v35;
        [v35 setConstant:v33];

        goto LABEL_29;
      }

      goto LABEL_23;
    }

    v33 = -((v30 + 2.0) * (1.0 - a5));
LABEL_27:
    v34 = [(FMSlidingPaneViewController *)self paneState];
    v35 = [v34 paneVerticalPositionConstraint];
    goto LABEL_28;
  }

  if (v32 == 4)
  {
    v33 = (1.0 - a5) * (v30 + 2.0);
    goto LABEL_27;
  }

  if (v32 == 8)
  {
    v33 = (1.0 - a5) * (v28 + 2.0);
    goto LABEL_22;
  }

LABEL_23:
  v34 = LogCategory_Unspecified();
  if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
  {
    [FMSlidingPaneViewController traitCollectionForChildViewController:?];
  }

LABEL_29:

  if (a5 >= 1.0)
  {
    v37 = [(FMSlidingPaneViewController *)self view];
    [v37 frame];
    v39 = v38;
    v40 = [(FMSlidingPaneViewController *)self paneState];
    v41 = [v40 paneView];
    [v41 bounds];
    v43 = v39 - v42;
    v44 = [(FMSlidingPaneViewController *)self paneState];
    v45 = [v44 paneView];
    [v45 bounds];
    v47 = v46;

    v48 = [(FMSlidingPaneViewController *)self paneState];
    v49 = [v48 paneViewController];
    [(FMSlidingPaneViewController *)self didPresentPane:v49 inRect:0 animated:0.0, v43, v47, v30];

    if (v11)
    {
      v11[2](v11);
    }
  }
}

- (void)dismissPaneViewControllerAnimated:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v22 = *MEMORY[0x277D85DE8];
  v6 = a4;
  objc_initWeak(&location, self);
  v7 = LogCategory_Unspecified();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v21 = v4;
    _os_log_impl(&dword_24A315000, v7, OS_LOG_TYPE_DEFAULT, "dismissPaneViewControllerAnimated:%d completion:", buf, 8u);
  }

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __76__FMSlidingPaneViewController_dismissPaneViewControllerAnimated_completion___block_invoke;
  v15[3] = &unk_278FDBA88;
  objc_copyWeak(&v17, &location);
  v8 = v6;
  v15[4] = self;
  v16 = v8;
  v18 = v4;
  v9 = MEMORY[0x24C216350](v15);
  v10 = [(FMSlidingPaneViewController *)self currentFuture];
  if (v10)
  {
    v11 = LogCategory_FMSlidingPaneViewController();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_24A315000, v11, OS_LOG_TYPE_DEFAULT, "Deferring dismissing until previous action is complete", buf, 2u);
    }

    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __76__FMSlidingPaneViewController_dismissPaneViewControllerAnimated_completion___block_invoke_82;
    v13[3] = &unk_278FDBA60;
    v14 = v9;
    v12 = [v10 addCompletionBlock:v13];
  }

  else
  {
    v9[2](v9);
  }

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

void __76__FMSlidingPaneViewController_dismissPaneViewControllerAnimated_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = [WeakRetained paneState];

  if (v2)
  {
    v3 = [WeakRetained paneState];
    v4 = [v3 paneViewController];

    if (v4)
    {
      v5 = [*(a1 + 32) paneState];
      [WeakRetained _dismissPaneState:v5 animated:*(a1 + 56) completion:*(a1 + 40)];

      if ([WeakRetained didHideToolbar])
      {
        v6 = [WeakRetained navigationController];
        [v6 setToolbarHidden:0 animated:*(a1 + 56)];

        [WeakRetained setDidHideToolbar:0];
      }

      [WeakRetained setPaneState:0];
    }
  }

  else
  {
    v7 = *(a1 + 40);
    if (v7)
    {
      (*(v7 + 16))();
    }
  }
}

- (void)setPresentingConstraintConstant:(double)a3
{
  v5 = [(FMSlidingPaneViewController *)self paneState];
  v6 = [v5 edge];

  if (v6 > 3)
  {
    if (v6 != 4)
    {
      if (v6 == 8)
      {
        goto LABEL_7;
      }

      goto LABEL_8;
    }

LABEL_11:
    v7 = [(FMSlidingPaneViewController *)self paneState];
    v8 = [v7 paneVerticalPositionConstraint];
    goto LABEL_12;
  }

  if (v6 == 1)
  {
    a3 = -a3;
    goto LABEL_11;
  }

  if (v6 == 2)
  {
    a3 = -a3;
LABEL_7:
    v7 = [(FMSlidingPaneViewController *)self paneState];
    v8 = [v7 paneHorizontalPositionConstraint];
LABEL_12:
    v9 = v8;
    [v8 setConstant:a3];

    goto LABEL_13;
  }

LABEL_8:
  v7 = LogCategory_Unspecified();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    [FMSlidingPaneViewController traitCollectionForChildViewController:?];
  }

LABEL_13:

  v10 = [(FMSlidingPaneViewController *)self paneState];
  v11 = [v10 paneView];
  [v11 layoutIfNeeded];
}

- (void)willPresentPane:(id)a3 inRect:(CGRect)a4 animated:(BOOL)a5
{
  v5 = a5;
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v21 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = [(FMSlidingPaneViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v13 = LogCategory_FMSlidingPaneViewController();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v22.origin.x = x;
      v22.origin.y = y;
      v22.size.width = width;
      v22.size.height = height;
      v14 = NSStringFromCGRect(v22);
      v15 = 138412802;
      v16 = v11;
      v17 = 2112;
      v18 = v14;
      v19 = 1024;
      v20 = v5;
      _os_log_impl(&dword_24A315000, v13, OS_LOG_TYPE_DEFAULT, "Calling willPresentPane: %@ inRect: %@ animated:%d", &v15, 0x1Cu);
    }

    [v12 slidingPaneViewController:self willPresentPane:v11 inRect:v5 animated:{x, y, width, height}];
  }
}

- (void)didPresentPane:(id)a3 inRect:(CGRect)a4 animated:(BOOL)a5
{
  v5 = a5;
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v21 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = [(FMSlidingPaneViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v13 = LogCategory_FMSlidingPaneViewController();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v22.origin.x = x;
      v22.origin.y = y;
      v22.size.width = width;
      v22.size.height = height;
      v14 = NSStringFromCGRect(v22);
      v15 = 138412802;
      v16 = v11;
      v17 = 2112;
      v18 = v14;
      v19 = 1024;
      v20 = v5;
      _os_log_impl(&dword_24A315000, v13, OS_LOG_TYPE_DEFAULT, "Calling didPresentPane: %@ inRect: %@ animated:%d", &v15, 0x1Cu);
    }

    [v12 slidingPaneViewController:self didPresentPane:v11 inRect:v5 animated:{x, y, width, height}];
  }
}

- (void)willDismissPane:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v13 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(FMSlidingPaneViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v8 = LogCategory_FMSlidingPaneViewController();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412546;
      v10 = v6;
      v11 = 1024;
      v12 = v4;
      _os_log_impl(&dword_24A315000, v8, OS_LOG_TYPE_DEFAULT, "Calling willDismissPane: %@ animated:%d", &v9, 0x12u);
    }

    [v7 slidingPaneViewController:self willDismissPane:v6 animated:v4];
  }
}

- (void)didDismissPane:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v13 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(FMSlidingPaneViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v8 = LogCategory_FMSlidingPaneViewController();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412546;
      v10 = v6;
      v11 = 1024;
      v12 = v4;
      _os_log_impl(&dword_24A315000, v8, OS_LOG_TYPE_DEFAULT, "Calling didDismissPane: %@ animated:%d", &v9, 0x12u);
    }

    [v7 slidingPaneViewController:self didDismissPane:v6 animated:v4];
  }
}

- (void)paneSizeChanged:(CGRect)a3 forViewController:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v17 = *MEMORY[0x277D85DE8];
  v9 = a4;
  v10 = [(FMSlidingPaneViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v11 = LogCategory_FMSlidingPaneViewController();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v18.origin.x = x;
      v18.origin.y = y;
      v18.size.width = width;
      v18.size.height = height;
      v12 = NSStringFromCGRect(v18);
      v13 = 138412546;
      v14 = v12;
      v15 = 2112;
      v16 = v9;
      _os_log_impl(&dword_24A315000, v11, OS_LOG_TYPE_DEFAULT, "Calling paneSizeChanged: %@ forViewController: %@", &v13, 0x16u);
    }

    [v10 slidingPaneViewController:self paneSizeChanged:v9 forViewController:{x, y, width, height}];
  }
}

- (void)_paneFrameChanged:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [(FMSlidingPaneViewController *)self paneState];
  v9 = [v8 shouldNotifyOfPaneSizeChanges];

  if (v9)
  {
    v11 = [(FMSlidingPaneViewController *)self paneState];
    v10 = [v11 paneViewController];
    [(FMSlidingPaneViewController *)self paneSizeChanged:v10 forViewController:x, y, width, height];
  }
}

- (CGSize)_normalizeSize:(CGSize)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = ceil(a3.width);
  v4 = ceil(a3.height);
  if (a3.width != v3 || a3.height != v4)
  {
    height = a3.height;
    width = a3.width;
    v8 = LogCategory_FMSlidingPaneViewController();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v15.width = width;
      v15.height = height;
      v9 = NSStringFromCGSize(v15);
      v12 = 138412290;
      v13 = v9;
      _os_log_impl(&dword_24A315000, v8, OS_LOG_TYPE_DEFAULT, "Un-normalized size: %@", &v12, 0xCu);
    }
  }

  v10 = v3;
  v11 = v4;
  result.height = v11;
  result.width = v10;
  return result;
}

- (id)_metricsFromEdgeInsets:(UIEdgeInsets)a3
{
  right = a3.right;
  bottom = a3.bottom;
  left = a3.left;
  top = a3.top;
  v7 = [MEMORY[0x277CBEB38] dictionary];
  v8 = [MEMORY[0x277CCABB0] numberWithDouble:top];
  [v7 setObject:v8 forKeyedSubscript:@"top"];

  v9 = [MEMORY[0x277CCABB0] numberWithDouble:left];
  [v7 setObject:v9 forKeyedSubscript:@"left"];

  v10 = [MEMORY[0x277CCABB0] numberWithDouble:bottom];
  [v7 setObject:v10 forKeyedSubscript:@"bottom"];

  v11 = [MEMORY[0x277CCABB0] numberWithDouble:right];
  [v7 setObject:v11 forKeyedSubscript:@"right"];

  return v7;
}

- (CGSize)_preferredSizeForPaneState:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 paneViewController];
  [v4 preferredContentSize];
  v6 = v5;
  v8 = v7;

  if (v6 == 0.0 && v8 == 0.0)
  {
    v9 = [v3 paneViewController];
    v10 = [v9 view];
    LODWORD(v11) = 1112014848;
    LODWORD(v12) = 1112014848;
    [v10 systemLayoutSizeFittingSize:*MEMORY[0x277D76C78] withHorizontalFittingPriority:*(MEMORY[0x277D76C78] + 8) verticalFittingPriority:{v11, v12}];
    v6 = v13;
    v8 = v14;

    if (v6 == 0.0 || v8 == 0.0)
    {
      v15 = LogCategory_Unspecified();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v27.width = v6;
        v27.height = v8;
        v18 = NSStringFromCGSize(v27);
        v19 = [v3 paneViewController];
        v20 = [v19 view];
        v21 = [v20 constraints];
        v22 = 138412546;
        v23 = v18;
        v24 = 2112;
        v25 = v21;
        _os_log_error_impl(&dword_24A315000, v15, OS_LOG_TYPE_ERROR, "Bad systemLayoutSize: %@ from constraints: %@", &v22, 0x16u);
      }
    }
  }

  v16 = v6;
  v17 = v8;
  result.height = v17;
  result.width = v16;
  return result;
}

- (void)_createPaneViewForState:(id)a3
{
  v4 = a3;
  [(FMSlidingPaneViewController *)self _preferredSizeForPaneState:v4];
  v6 = v5;
  v8 = v7;
  v9 = [(FMSlidingPaneViewController *)self _paneParentView];
  v10 = [v4 edge];
  if (v10 > 3)
  {
    if (v10 == 8)
    {
      goto LABEL_8;
    }

    if (v10 != 4)
    {
      goto LABEL_17;
    }

LABEL_7:
    v11 = [ISPaneFrameView alloc];
    [v9 bounds];
    v13 = v8;
    goto LABEL_9;
  }

  if (v10 == 1)
  {
    goto LABEL_7;
  }

  if (v10 == 2)
  {
LABEL_8:
    v11 = [ISPaneFrameView alloc];
    [v9 bounds];
    v12 = v6;
LABEL_9:
    v14 = [(ISPaneFrameView *)v11 initWithFrame:0.0, 0.0, v12, v13];
    [v4 setPaneView:v14];

    v15 = [v4 paneView];
    [v15 setOwningViewController:self];
    v16 = [MEMORY[0x277D75348] clearColor];
    [v15 setBackgroundColor:v16];

    v17 = _NSDictionaryOfVariableBindings(&cfstr_Paneview.isa, v15, 0);
    [(FMSlidingPaneViewController *)self paneInsets];
    v18 = [(FMSlidingPaneViewController *)self _metricsFromEdgeInsets:?];
    v19 = [v18 mutableCopy];

    v20 = [MEMORY[0x277CCABB0] numberWithDouble:v6];
    [v19 setObject:v20 forKeyedSubscript:@"preferredWidth"];

    v21 = [MEMORY[0x277CCABB0] numberWithDouble:v8];
    [v19 setObject:v21 forKeyedSubscript:@"preferredHeight"];

    v22 = [v4 paneView];
    [v9 addSubview:v22];

    v23 = [v4 paneView];
    [v23 setTranslatesAutoresizingMaskIntoConstraints:0];

    v24 = [v4 paneViewController];
    v25 = [v24 view];
    [v25 setTranslatesAutoresizingMaskIntoConstraints:0];

    v26 = [v4 edge];
    if (v26 > 3)
    {
      if (v26 != 4)
      {
        if (v26 == 8)
        {
          v27 = MEMORY[0x277CCAAD0];
          v28 = 1.0;
          v29 = v15;
          v30 = 2;
          v31 = v9;
          v32 = 2;
          goto LABEL_16;
        }

LABEL_19:
        v38 = LogCategory_Unspecified();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          [FMSlidingPaneViewController _createPaneViewForState:v4];
        }

        goto LABEL_25;
      }

      v39 = MEMORY[0x277CCAAD0];
      v40 = 1.0;
      v41 = v15;
      v42 = 4;
      v43 = v9;
      v44 = 4;
    }

    else
    {
      if (v26 != 1)
      {
        if (v26 == 2)
        {
          v27 = MEMORY[0x277CCAAD0];
          v28 = 1.0;
          v29 = v15;
          v30 = 1;
          v31 = v9;
          v32 = 1;
LABEL_16:
          v33 = [v27 constraintWithItem:v29 attribute:v30 relatedBy:0 toItem:v31 attribute:v32 multiplier:v28 constant:0.0];
          [v4 setPaneHorizontalPositionConstraint:v33];

          v34 = [v4 paneHorizontalPositionConstraint];
          [v34 setIdentifier:@"paneHorizontalPositionConstraint"];

          v35 = [v4 paneHorizontalPositionConstraint];
          [v9 addConstraint:v35];

          v36 = MEMORY[0x277CCAAD0];
          v37 = @"V:|-top-[paneView]-bottom-|";
LABEL_24:
          v38 = [v36 constraintsWithVisualFormat:v37 options:0 metrics:v19 views:v17];
          [v9 addConstraints:v38];
LABEL_25:

          v48 = objc_alloc(MEMORY[0x277D75D68]);
          v49 = [(FMSlidingPaneViewController *)self paneVisualEffect];
          v50 = [v48 initWithEffect:v49];
          [v4 setVisualEffectView:v50];

          v51 = [v4 paneView];
          [v51 bounds];
          v53 = v52;
          v55 = v54;
          v57 = v56;
          v59 = v58;
          v60 = [v4 visualEffectView];
          [v60 setFrame:{v53, v55, v57, v59}];

          v61 = [v4 visualEffectView];
          [v61 setAutoresizingMask:18];

          v62 = [v4 paneView];
          v63 = [v4 visualEffectView];
          [v62 addSubview:v63];

          v64 = [v4 paneView];
          v65 = [v4 visualEffectView];
          [v64 sendSubviewToBack:v65];

          v66 = [v4 paneView];
          [v66 layoutIfNeeded];

          goto LABEL_26;
        }

        goto LABEL_19;
      }

      v39 = MEMORY[0x277CCAAD0];
      v40 = 1.0;
      v41 = v15;
      v42 = 3;
      v43 = v9;
      v44 = 3;
    }

    v45 = [v39 constraintWithItem:v41 attribute:v42 relatedBy:0 toItem:v43 attribute:v44 multiplier:v40 constant:0.0];
    [v4 setPaneVerticalPositionConstraint:v45];

    v46 = [v4 paneVerticalPositionConstraint];
    [v46 setIdentifier:@"paneVerticalPositionConstant"];

    v47 = [v4 paneVerticalPositionConstraint];
    [v9 addConstraint:v47];

    v36 = MEMORY[0x277CCAAD0];
    v37 = @"H:|-left-[paneView]-right-|";
    goto LABEL_24;
  }

LABEL_17:
  v15 = LogCategory_Unspecified();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    [FMSlidingPaneViewController _createPaneViewForState:v4];
  }

LABEL_26:
}

- (void)_createPaneContentConstraintsForState:(id)a3
{
  v4 = [a3 paneViewController];
  firstValue = [v4 view];

  v5 = [(FMSlidingPaneViewController *)self _paneParentView];
  v6 = _NSDictionaryOfVariableBindings(&cfstr_Contentview.isa, firstValue, 0);
  [(FMSlidingPaneViewController *)self paneContentInsets];
  v7 = [(FMSlidingPaneViewController *)self _metricsFromEdgeInsets:?];
  v8 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"V:|-top-[contentView]-bottom-|" options:0 metrics:v7 views:v6];
  [v5 addConstraints:v8];
  v9 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"H:|-left-[contentView]-right-|" options:0 metrics:v7 views:v6];

  [v5 addConstraints:v9];
  [v5 setNeedsUpdateConstraints];
}

- (void)_removeChildViewControllerForState:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 paneViewController];
  [v4 willMoveToParentViewController:0];

  v5 = LogCategory_FMSlidingPaneViewController();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v3 paneViewController];
    v10 = 138412290;
    v11 = v6;
    _os_log_impl(&dword_24A315000, v5, OS_LOG_TYPE_DEFAULT, "_removeChildViewControllerForState: %@", &v10, 0xCu);
  }

  v7 = [v3 paneViewController];
  v8 = [v7 view];
  [v8 removeFromSuperview];

  v9 = [v3 paneViewController];
  [v9 removeFromParentViewController];
}

- (void)_presentPaneState:(id)a3 animated:(BOOL)a4 interactive:(BOOL)a5 completion:(id)a6
{
  v7 = a5;
  v8 = a4;
  v96 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a6;
  objc_initWeak(&location, self);
  v13 = self;
  v14 = [(FMSlidingPaneViewController *)v13 newActionFuture];
  if (!v11)
  {
    v80 = [MEMORY[0x277CCA890] currentHandler];
    [v80 handleFailureInMethod:a2 object:v13 file:@"FMSlidingPaneViewController.m" lineNumber:571 description:{@"Invalid parameter not satisfying: %@", @"paneState != nil"}];
  }

  v15 = LogCategory_FMSlidingPaneViewController();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [v11 paneViewController];
    *buf = 138412802;
    v91 = v16;
    v92 = 1024;
    v93 = v8;
    v94 = 1024;
    v95 = v7;
    _os_log_impl(&dword_24A315000, v15, OS_LOG_TYPE_DEFAULT, "_presentPaneState: %@ animated:%d interactive:%d completion:", buf, 0x18u);
  }

  v17 = [v11 paneView];
  v18 = v17 == 0;

  if (v18)
  {
    [(FMSlidingPaneViewController *)v13 _createPaneViewForState:v11];
  }

  [(FMSlidingPaneViewController *)v13 _preferredSizeForPaneState:v11];
  v20 = v19;
  v22 = v21;
  v23 = [v11 paneView];
  [v23 layoutIfNeeded];

  v24 = LogCategory_FMSlidingPaneViewController();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    v25 = [v11 paneViewController];
    *buf = 138412290;
    v91 = v25;
    _os_log_impl(&dword_24A315000, v24, OS_LOG_TYPE_DEFAULT, "addChildViewController: %@", buf, 0xCu);
  }

  v26 = [v11 paneViewController];
  [(FMSlidingPaneViewController *)v13 addChildViewController:v26];

  v27 = [v11 paneView];
  [v27 bounds];
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v36 = [v11 paneViewController];
  v37 = [v36 view];
  [v37 setFrame:{v29, v31, v33, v35}];

  v38 = [v11 paneView];
  v39 = [v11 paneViewController];
  v40 = [v39 view];
  [v38 addSubview:v40];

  [(FMSlidingPaneViewController *)v13 _createPaneContentConstraintsForState:v11];
  v41 = [v11 paneViewController];
  [v41 didMoveToParentViewController:v13];

  v42 = [v11 edge];
  if (v42 > 3)
  {
    if (v42 == 4)
    {
      v43 = [v11 paneVerticalPositionConstraint];
      [v43 setConstant:v22 + 2.0];
      goto LABEL_20;
    }

    if (v42 == 8)
    {
      v43 = [v11 paneHorizontalPositionConstraint];
      [v43 setConstant:v20 + 2.0];
      goto LABEL_20;
    }
  }

  else
  {
    if (v42 == 1)
    {
      v43 = [v11 paneVerticalPositionConstraint];
      [v43 setConstant:2.0 - v22];
      goto LABEL_20;
    }

    if (v42 == 2)
    {
      v43 = [v11 paneHorizontalPositionConstraint];
      [v43 setConstant:2.0 - v20];
      goto LABEL_20;
    }
  }

  v43 = LogCategory_FMSlidingPaneViewController();
  if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
  {
    -[FMSlidingPaneViewController _presentPaneState:animated:interactive:completion:].cold.1(buf, [v11 edge], v43);
  }

LABEL_20:

  v44 = [v11 paneView];
  [v44 layoutIfNeeded];

  [(FMSlidingPaneViewController *)v13 _preferredSizeForPaneState:v11];
  v46 = v45;
  v47 = [(FMSlidingPaneViewController *)v13 view];
  [v47 frame];
  v49 = v48;
  v50 = [v11 paneView];
  [v50 bounds];
  v52 = v51;
  v53 = [v11 paneView];
  [v53 bounds];
  v55 = v54;

  v56 = [v11 paneViewController];
  v57 = v49 - v52;
  [(FMSlidingPaneViewController *)v13 willPresentPane:v56 inRect:v8 animated:0.0, v57, *&v55, *&v46];

  [v11 setShouldNotifyOfPaneSizeChanges:1];
  v58 = [(FMSlidingPaneViewController *)v13 view];
  [v58 layoutIfNeeded];

  v59 = [v11 edge];
  if (v59 > 3)
  {
    if (v59 == 4)
    {
      [(FMSlidingPaneViewController *)v13 paneInsets];
      v68 = v67;
      v62 = [v11 paneVerticalPositionConstraint];
      [v62 setConstant:-v68];
      goto LABEL_31;
    }

    if (v59 == 8)
    {
      [(FMSlidingPaneViewController *)v13 paneInsets];
      v64 = v63;
      v62 = [v11 paneHorizontalPositionConstraint];
      [v62 setConstant:-v64];
      goto LABEL_31;
    }
  }

  else
  {
    if (v59 == 1)
    {
      [(FMSlidingPaneViewController *)v13 paneInsets];
      v66 = v65;
      v62 = [v11 paneVerticalPositionConstraint];
      [v62 setConstant:v66];
      goto LABEL_31;
    }

    if (v59 == 2)
    {
      [(FMSlidingPaneViewController *)v13 paneInsets];
      v61 = v60;
      v62 = [v11 paneHorizontalPositionConstraint];
      [v62 setConstant:v61];
      goto LABEL_31;
    }
  }

  v62 = LogCategory_FMSlidingPaneViewController();
  if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
  {
    -[FMSlidingPaneViewController _presentPaneState:animated:interactive:completion:].cold.1(v89, [v11 edge], v62);
  }

LABEL_31:

  if (v8)
  {
    v69 = MEMORY[0x277D75D18];
    [(FMSlidingPaneViewController *)v13 animationDuration];
    v71 = v70;
    [(FMSlidingPaneViewController *)v13 animationSpringDamping];
    v73 = v72;
    [(FMSlidingPaneViewController *)v13 animationInitialVelocity];
    v75 = v74;
    v76 = [(FMSlidingPaneViewController *)v13 animationOptions];
    v86[0] = MEMORY[0x277D85DD0];
    v86[1] = 3221225472;
    v86[2] = __81__FMSlidingPaneViewController__presentPaneState_animated_interactive_completion___block_invoke;
    v86[3] = &unk_278FDB978;
    v87 = v11;
    v81[0] = MEMORY[0x277D85DD0];
    v81[1] = 3221225472;
    v81[2] = __81__FMSlidingPaneViewController__presentPaneState_animated_interactive_completion___block_invoke_2;
    v81[3] = &unk_278FDBAB0;
    objc_copyWeak(v84, &location);
    v81[4] = v13;
    v82 = v14;
    v84[1] = 0;
    v84[2] = *&v57;
    v84[3] = v55;
    v84[4] = v46;
    v85 = v8;
    v83 = v12;
    [v69 animateWithDuration:v76 | 4 delay:v86 usingSpringWithDamping:v81 initialSpringVelocity:v71 options:0.0 animations:v73 completion:v75];

    objc_destroyWeak(v84);
  }

  else
  {
    v77 = [v11 paneView];
    [v77 layoutIfNeeded];

    [(FMSlidingPaneViewController *)v13 completeFuture:v14];
    if (!v7)
    {
      v78 = [(FMSlidingPaneViewController *)v13 paneState];
      v79 = [v78 paneViewController];
      [(FMSlidingPaneViewController *)v13 didPresentPane:v79 inRect:0 animated:0.0, v57, *&v55, *&v46];

      if (v12)
      {
        v12[2](v12);
      }
    }
  }

  objc_destroyWeak(&location);
}

void __81__FMSlidingPaneViewController__presentPaneState_animated_interactive_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) paneView];
  [v2 layoutIfNeeded];

  v3 = [*(a1 + 32) paneView];
  [v3 exerciseAmbiguityInLayout];

  v5 = [*(a1 + 32) paneViewController];
  v4 = [v5 view];
  [v4 exerciseAmbiguityInLayout];
}

void __81__FMSlidingPaneViewController__presentPaneState_animated_interactive_completion___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [*(a1 + 32) completeFuture:*(a1 + 40)];
  v3 = [WeakRetained paneState];
  v4 = [v3 paneViewController];
  [WeakRetained didPresentPane:v4 inRect:*(a1 + 96) animated:{*(a1 + 64), *(a1 + 72), *(a1 + 80), *(a1 + 88)}];

  if (*(a1 + 48))
  {
    v5 = LogCategory_FMSlidingPaneViewController();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_24A315000, v5, OS_LOG_TYPE_DEFAULT, "Calling present completion block", v6, 2u);
    }

    (*(*(a1 + 48) + 16))();
  }
}

- (void)_dismissPaneState:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v6 = a4;
  v57 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a5;
  objc_initWeak(&location, self);
  if (!v9)
  {
    v42 = [MEMORY[0x277CCA890] currentHandler];
    [v42 handleFailureInMethod:a2 object:self file:@"FMSlidingPaneViewController.m" lineNumber:677 description:{@"Invalid parameter not satisfying: %@", @"paneState != nil"}];
  }

  v11 = [(FMSlidingPaneViewController *)self newActionFuture];
  v12 = LogCategory_FMSlidingPaneViewController();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [v9 paneViewController];
    *buf = 138412546;
    v54 = v13;
    v55 = 1024;
    v56 = v6;
    _os_log_impl(&dword_24A315000, v12, OS_LOG_TYPE_DEFAULT, "_dismissPaneState: %@ animated: %d completion:", buf, 0x12u);
  }

  [v9 setShouldNotifyOfPaneSizeChanges:0];
  v14 = LogCategory_FMSlidingPaneViewController();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [v9 paneViewController];
    *buf = 138412546;
    v54 = v15;
    v55 = 1024;
    v56 = v6;
    _os_log_impl(&dword_24A315000, v14, OS_LOG_TYPE_DEFAULT, "Calling willDismissPane: %@ animated: %d", buf, 0x12u);
  }

  v16 = [v9 paneViewController];
  [(FMSlidingPaneViewController *)self willDismissPane:v16 animated:v6];

  v17 = [v9 edge];
  if (v17 > 3)
  {
    if (v17 == 4)
    {
      v18 = [v9 paneView];
      [v18 bounds];
      v29 = v28;
      v30 = [v9 paneVerticalPositionConstraint];
      [v30 setConstant:v29 + 2.0];

      goto LABEL_18;
    }

    if (v17 == 8)
    {
      v18 = [v9 paneView];
      [v18 bounds];
      v23 = v22;
      v24 = [v9 paneHorizontalPositionConstraint];
      [v24 setConstant:v23 + 2.0];

      goto LABEL_18;
    }
  }

  else
  {
    if (v17 == 1)
    {
      v18 = [v9 paneView];
      [v18 bounds];
      v26 = v25;
      v27 = [v9 paneVerticalPositionConstraint];
      [v27 setConstant:-(v26 + 2.0)];

      goto LABEL_18;
    }

    if (v17 == 2)
    {
      v18 = [v9 paneView];
      [v18 bounds];
      v20 = v19;
      v21 = [v9 paneHorizontalPositionConstraint];
      [v21 setConstant:-(v20 + 2.0)];

      goto LABEL_18;
    }
  }

  v18 = LogCategory_FMSlidingPaneViewController();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    -[FMSlidingPaneViewController _presentPaneState:animated:interactive:completion:].cold.1(buf, [v9 edge], v18);
  }

LABEL_18:

  if (v6)
  {
    v31 = MEMORY[0x277D75D18];
    [(FMSlidingPaneViewController *)self animationDuration];
    v33 = v32;
    [(FMSlidingPaneViewController *)self animationSpringDamping];
    v35 = v34;
    [(FMSlidingPaneViewController *)self animationInitialVelocity];
    v37 = v36;
    v38 = [(FMSlidingPaneViewController *)self animationOptions];
    v50[0] = MEMORY[0x277D85DD0];
    v50[1] = 3221225472;
    v50[2] = __69__FMSlidingPaneViewController__dismissPaneState_animated_completion___block_invoke;
    v50[3] = &unk_278FDB978;
    v39 = v9;
    v51 = v39;
    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = __69__FMSlidingPaneViewController__dismissPaneState_animated_completion___block_invoke_2;
    v43[3] = &unk_278FDBAD8;
    objc_copyWeak(&v48, &location);
    v44 = v39;
    v45 = self;
    v49 = v6;
    v47 = v10;
    v46 = v11;
    [v31 animateWithDuration:v38 | 4 delay:v50 usingSpringWithDamping:v43 initialSpringVelocity:v33 options:0.0 animations:v35 completion:v37];

    objc_destroyWeak(&v48);
  }

  else
  {
    v40 = [v9 paneView];
    [v40 layoutIfNeeded];

    [(FMSlidingPaneViewController *)self _removeChildViewControllerForState:v9];
    v41 = [v9 paneViewController];
    [(FMSlidingPaneViewController *)self didDismissPane:v41 animated:0];

    if (v10)
    {
      v10[2](v10);
    }

    [(FMSlidingPaneViewController *)self completeFuture:v11];
  }

  objc_destroyWeak(&location);
}

void __69__FMSlidingPaneViewController__dismissPaneState_animated_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) paneView];
  [v2 layoutIfNeeded];

  v3 = [*(a1 + 32) paneView];
  [v3 exerciseAmbiguityInLayout];

  v5 = [*(a1 + 32) paneViewController];
  v4 = [v5 view];
  [v4 exerciseAmbiguityInLayout];
}

void __69__FMSlidingPaneViewController__dismissPaneState_animated_completion___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  [WeakRetained _removeChildViewControllerForState:*(a1 + 32)];
  v3 = *(a1 + 40);
  v4 = [*(a1 + 32) paneViewController];
  [v3 didDismissPane:v4 animated:*(a1 + 72)];

  if (*(a1 + 56))
  {
    v5 = LogCategory_FMSlidingPaneViewController();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_24A315000, v5, OS_LOG_TYPE_DEFAULT, "Calling dismiss completionBlock", v6, 2u);
    }

    (*(*(a1 + 56) + 16))();
  }

  [*(a1 + 40) completeFuture:*(a1 + 48)];
}

- (void)_crossDissolveOldPaneState:(id)a3 newPaneState:(id)a4 animated:(BOOL)a5 completion:(id)a6
{
  v7 = a5;
  v73 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v14 = self;
  if (v11)
  {
    if (v12)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [FMSlidingPaneViewController _crossDissolveOldPaneState:a2 newPaneState:v14 animated:? completion:?];
    if (v12)
    {
      goto LABEL_3;
    }
  }

  [FMSlidingPaneViewController _crossDissolveOldPaneState:a2 newPaneState:v14 animated:? completion:?];
LABEL_3:
  v15 = objc_alloc_init(MEMORY[0x277D07B68]);
  v16 = [v12 paneView];

  if (!v16)
  {
    [(FMSlidingPaneViewController *)v14 _createPaneViewForState:v12];
  }

  v17 = [v11 paneVerticalPositionConstraint];
  [v17 constant];
  v19 = v18;
  v20 = [v12 paneVerticalPositionConstraint];
  [v20 setConstant:v19];

  v21 = [(FMSlidingPaneViewController *)v14 view];
  [v21 updateConstraintsIfNeeded];

  v22 = [v12 paneView];
  [v22 setHidden:1];

  v23 = [v12 paneView];
  [v23 bounds];
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v32 = [v12 paneViewController];
  v33 = [v32 view];
  [v33 setFrame:{v25, v27, v29, v31}];

  v34 = [v12 paneView];
  v35 = [v12 paneViewController];
  v36 = [v35 view];
  [v34 addSubview:v36];

  [(FMSlidingPaneViewController *)v14 _createPaneContentConstraintsForState:v12];
  v37 = [(FMSlidingPaneViewController *)v14 view];
  [v37 updateConstraintsIfNeeded];

  v38 = LogCategory_FMSlidingPaneViewController();
  if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
  {
    v39 = [v12 paneViewController];
    *buf = 138412290;
    v72 = v39;
    _os_log_impl(&dword_24A315000, v38, OS_LOG_TYPE_DEFAULT, "addChildViewController: %@", buf, 0xCu);
  }

  v40 = [v12 paneViewController];
  [(FMSlidingPaneViewController *)v14 addChildViewController:v40];

  v41 = [v12 paneViewController];
  [v41 didMoveToParentViewController:v14];

  v42 = [v12 paneView];
  [v42 layoutIfNeeded];

  [(FMSlidingPaneViewController *)v14 _preferredSizeForPaneState:v12];
  v44 = v43;
  v45 = [(FMSlidingPaneViewController *)v14 view];
  [v45 frame];
  v47 = v46 - v44;
  v48 = [v12 paneView];
  [v48 bounds];
  v50 = v49;

  [v11 setShouldNotifyOfPaneSizeChanges:0];
  v51 = [v11 paneViewController];
  if (v7)
  {
    [(FMSlidingPaneViewController *)v14 willDismissPane:v51 animated:1];

    v52 = [v12 paneViewController];
    [(FMSlidingPaneViewController *)v14 willPresentPane:v52 inRect:1 animated:0.0, v47, v50, v44];

    [v12 setShouldNotifyOfPaneSizeChanges:1];
    v53 = MEMORY[0x277D75D18];
    v54 = [v11 paneView];
    v55 = [v12 paneView];
    v61[0] = MEMORY[0x277D85DD0];
    v61[1] = 3221225472;
    v61[2] = __91__FMSlidingPaneViewController__crossDissolveOldPaneState_newPaneState_animated_completion___block_invoke;
    v61[3] = &unk_278FDBB00;
    v61[4] = v14;
    v62 = v11;
    v70 = v7;
    v63 = v12;
    v66 = 0;
    v67 = v47;
    v68 = v50;
    v69 = v44;
    v64 = v15;
    v65 = v13;
    [v53 transitionFromView:v54 toView:v55 duration:5243264 options:v61 completion:0.150000006];
  }

  else
  {
    [(FMSlidingPaneViewController *)v14 willDismissPane:v51 animated:0];

    v56 = [v12 paneViewController];
    [(FMSlidingPaneViewController *)v14 willPresentPane:v56 inRect:0 animated:0.0, v47, v50, v44];

    v57 = [v11 paneView];
    [v57 setHidden:1];

    v58 = [v12 paneView];
    [v58 setHidden:0];

    [(FMSlidingPaneViewController *)v14 _removeChildViewControllerForState:v11];
    v59 = [v11 paneViewController];
    [(FMSlidingPaneViewController *)v14 didDismissPane:v59 animated:0];

    v60 = [v12 paneViewController];
    [(FMSlidingPaneViewController *)v14 didPresentPane:v60 inRect:0 animated:0.0, v47, v50, v44];

    [(FMSlidingPaneViewController *)v14 completeFuture:v15];
    if (v13)
    {
      v13[2](v13);
    }
  }
}

uint64_t __91__FMSlidingPaneViewController__crossDissolveOldPaneState_newPaneState_animated_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _removeChildViewControllerForState:*(a1 + 40)];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) paneViewController];
  [v2 didDismissPane:v3 animated:*(a1 + 104)];

  v4 = *(a1 + 32);
  v5 = [*(a1 + 48) paneViewController];
  [v4 didPresentPane:v5 inRect:*(a1 + 104) animated:{*(a1 + 72), *(a1 + 80), *(a1 + 88), *(a1 + 96)}];

  [*(a1 + 32) completeFuture:*(a1 + 56)];
  result = *(a1 + 64);
  if (result)
  {
    v7 = *(result + 16);

    return v7();
  }

  return result;
}

- (BOOL)isPaneShowing
{
  v2 = [(FMSlidingPaneViewController *)self paneState];
  v3 = [v2 paneView];
  v4 = [v3 superview];
  v5 = v4 != 0;

  return v5;
}

- (id)newActionFuture
{
  v3 = objc_alloc_init(MEMORY[0x277D07B68]);
  v4 = [(FMSlidingPaneViewController *)self actionFutures];
  [v4 addObject:v3];

  return v3;
}

- (FMFuture)currentFuture
{
  v2 = [(FMSlidingPaneViewController *)self actionFutures];
  v3 = [v2 lastObject];

  return v3;
}

- (void)completeFuture:(id)a3
{
  v4 = a3;
  [v4 finishWithNoResult];
  v5 = [(FMSlidingPaneViewController *)self actionFutures];
  [v5 removeObject:v4];
}

- (FMSlidingPaneViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (UIEdgeInsets)paneInsets
{
  top = self->_paneInsets.top;
  left = self->_paneInsets.left;
  bottom = self->_paneInsets.bottom;
  right = self->_paneInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (UIEdgeInsets)paneContentInsets
{
  top = self->_paneContentInsets.top;
  left = self->_paneContentInsets.left;
  bottom = self->_paneContentInsets.bottom;
  right = self->_paneContentInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (void)traitCollectionForChildViewController:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 paneState];
  [v1 edge];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0(&dword_24A315000, v2, v3, "Unknown edge: %lu", v4, v5, v6, v7, v8);
}

- (void)presentPaneViewController:fromEdge:withPercent:completion:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2(&dword_24A315000, v0, v1, "Dismissing pane while previous pane is still presenting: %@", v2);
}

- (void)_createPaneViewForState:(void *)a1 .cold.1(void *a1)
{
  [a1 edge];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0(&dword_24A315000, v1, v2, "Unknown edge: %lu", v3, v4, v5, v6, v7);
}

- (void)_presentPaneState:(NSObject *)a3 animated:interactive:completion:.cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *a1 = 134217984;
  *(a1 + 4) = a2;
  OUTLINED_FUNCTION_2(&dword_24A315000, a3, a3, "Unknown edge: %lu", a1);
}

- (void)_crossDissolveOldPaneState:(uint64_t)a1 newPaneState:(uint64_t)a2 animated:completion:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"FMSlidingPaneViewController.m" lineNumber:747 description:{@"Invalid parameter not satisfying: %@", @"oldPaneState != nil"}];
}

- (void)_crossDissolveOldPaneState:(uint64_t)a1 newPaneState:(uint64_t)a2 animated:completion:.cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"FMSlidingPaneViewController.m" lineNumber:748 description:{@"Invalid parameter not satisfying: %@", @"newPaneState != nil"}];
}

@end