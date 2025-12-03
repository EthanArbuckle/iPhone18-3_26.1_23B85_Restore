@interface FMSlidingPaneViewController
- (BOOL)isPaneShowing;
- (CGSize)_normalizeSize:(CGSize)size;
- (CGSize)_preferredSizeForPaneState:(id)state;
- (FMFuture)currentFuture;
- (FMSlidingPaneViewController)initWithNibName:(id)name bundle:(id)bundle;
- (FMSlidingPaneViewControllerDelegate)delegate;
- (UIEdgeInsets)paneContentInsets;
- (UIEdgeInsets)paneInsets;
- (UIView)paneView;
- (UIViewController)paneViewController;
- (UIVisualEffect)paneVisualEffect;
- (id)_metricsFromEdgeInsets:(UIEdgeInsets)insets;
- (id)newActionFuture;
- (id)traitCollectionForChildViewController:(id)controller;
- (void)_createPaneContentConstraintsForState:(id)state;
- (void)_createPaneViewForState:(id)state;
- (void)_crossDissolveOldPaneState:(id)state newPaneState:(id)paneState animated:(BOOL)animated completion:(id)completion;
- (void)_dismissPaneState:(id)state animated:(BOOL)animated completion:(id)completion;
- (void)_paneFrameChanged:(CGRect)changed;
- (void)_presentPaneState:(id)state animated:(BOOL)animated interactive:(BOOL)interactive completion:(id)completion;
- (void)_removeChildViewControllerForState:(id)state;
- (void)awakeFromNib;
- (void)commonConfiguration;
- (void)completeFuture:(id)future;
- (void)didDismissPane:(id)pane animated:(BOOL)animated;
- (void)didPresentPane:(id)pane inRect:(CGRect)rect animated:(BOOL)animated;
- (void)dismissPaneViewControllerAnimated:(BOOL)animated completion:(id)completion;
- (void)paneSizeChanged:(CGRect)changed forViewController:(id)controller;
- (void)presentPaneViewController:(id)controller fromEdge:(unint64_t)edge animated:(BOOL)animated completion:(id)completion;
- (void)presentPaneViewController:(id)controller fromEdge:(unint64_t)edge withPercent:(double)percent completion:(id)completion;
- (void)setPaneVisualEffect:(id)effect;
- (void)setPresentingConstraintConstant:(double)constant;
- (void)viewWillAppear:(BOOL)appear;
- (void)willDismissPane:(id)pane animated:(BOOL)animated;
- (void)willPresentPane:(id)pane inRect:(CGRect)rect animated:(BOOL)animated;
@end

@implementation FMSlidingPaneViewController

- (FMSlidingPaneViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v7.receiver = self;
  v7.super_class = FMSlidingPaneViewController;
  v4 = [(FMViewController *)&v7 initWithNibName:name bundle:bundle];
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

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = FMSlidingPaneViewController;
  [(FMViewController *)&v4 viewWillAppear:appear];
  [(FMSlidingPaneViewController *)self setExtendedLayoutIncludesOpaqueBars:1];
}

- (id)traitCollectionForChildViewController:(id)controller
{
  v21[2] = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  v19.receiver = self;
  v19.super_class = FMSlidingPaneViewController;
  traitCollection = [(FMSlidingPaneViewController *)&v19 traitCollection];
  paneState = [(FMSlidingPaneViewController *)self paneState];
  if (paneState)
  {
    v7 = paneState;
    paneState2 = [(FMSlidingPaneViewController *)self paneState];
    paneViewController = [paneState2 paneViewController];

    if (paneViewController == controllerCopy)
    {
      paneState3 = [(FMSlidingPaneViewController *)self paneState];
      edge = [paneState3 edge];

      if (edge > 3)
      {
        if (edge == 8)
        {
LABEL_10:
          v12 = [MEMORY[0x277D75C80] traitCollectionWithHorizontalSizeClass:1];
          v13 = MEMORY[0x277D75C80];
          v20[0] = traitCollection;
          v20[1] = v12;
          v14 = MEMORY[0x277CBEA60];
          v15 = v20;
          goto LABEL_11;
        }

        if (edge != 4)
        {
          goto LABEL_16;
        }
      }

      else if (edge != 1)
      {
        if (edge != 2)
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
      v21[0] = traitCollection;
      v21[1] = v12;
      v14 = MEMORY[0x277CBEA60];
      v15 = v21;
LABEL_11:
      v16 = [v14 arrayWithObjects:v15 count:2];
      v17 = [v13 traitCollectionWithTraitsFromCollections:v16];

      traitCollection = v17;
LABEL_12:
    }
  }

  return traitCollection;
}

- (UIView)paneView
{
  paneState = [(FMSlidingPaneViewController *)self paneState];
  paneView = [paneState paneView];

  return paneView;
}

- (UIViewController)paneViewController
{
  paneState = [(FMSlidingPaneViewController *)self paneState];
  paneViewController = [paneState paneViewController];

  return paneViewController;
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

- (void)setPaneVisualEffect:(id)effect
{
  effectCopy = effect;
  objc_storeStrong(&self->_paneVisualEffect, effect);
  paneState = [(FMSlidingPaneViewController *)self paneState];

  if (paneState)
  {
    paneState2 = [(FMSlidingPaneViewController *)self paneState];
    visualEffectView = [paneState2 visualEffectView];

    v8 = [objc_alloc(MEMORY[0x277D75D68]) initWithEffect:effectCopy];
    [visualEffectView frame];
    [v8 setFrame:?];
    [v8 setAutoresizingMask:{objc_msgSend(visualEffectView, "autoresizingMask")}];
    paneState3 = [(FMSlidingPaneViewController *)self paneState];
    [paneState3 setVisualEffectView:v8];

    [visualEffectView removeFromSuperview];
    paneState4 = [(FMSlidingPaneViewController *)self paneState];
    paneView = [paneState4 paneView];
    [paneView addSubview:v8];

    paneState5 = [(FMSlidingPaneViewController *)self paneState];
    paneView2 = [paneState5 paneView];
    [paneView2 sendSubviewToBack:v8];
  }
}

- (void)presentPaneViewController:(id)controller fromEdge:(unint64_t)edge animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  v42 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  completionCopy = completion;
  paneState = [(FMSlidingPaneViewController *)self paneState];
  objc_initWeak(&location, self);
  v13 = LogCategory_FMSlidingPaneViewController();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v37 = controllerCopy;
    v38 = 2048;
    edgeCopy = edge;
    v40 = 1024;
    v41 = animatedCopy;
    _os_log_impl(&dword_24A315000, v13, OS_LOG_TYPE_DEFAULT, "presentPaneViewController: %@ fromEdge:%ld animated:%d completed:", buf, 0x1Cu);
  }

  view = [controllerCopy view];
  navigationController = [(FMSlidingPaneViewController *)self navigationController];
  if (navigationController)
  {
    navigationController2 = [(FMSlidingPaneViewController *)self navigationController];
    isToolbarHidden = [navigationController2 isToolbarHidden];

    if ((isToolbarHidden & 1) == 0)
    {
      [(FMSlidingPaneViewController *)self setDidHideToolbar:1];
      navigationController3 = [(FMSlidingPaneViewController *)self navigationController];
      [navigationController3 setToolbarHidden:1 animated:animatedCopy];
    }
  }

  v19 = [[SlidingPaneViewState alloc] initWithViewController:controllerCopy edge:edge];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __86__FMSlidingPaneViewController_presentPaneViewController_fromEdge_animated_completion___block_invoke;
  v29[3] = &unk_278FDBA38;
  objc_copyWeak(&v33, &location);
  v20 = v19;
  v30 = v20;
  v21 = paneState;
  v31 = v21;
  v22 = completionCopy;
  v32 = v22;
  v34 = animatedCopy;
  v23 = MEMORY[0x24C216350](v29);
  currentFuture = [(FMSlidingPaneViewController *)self currentFuture];
  if (currentFuture)
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
    v26 = [currentFuture addCompletionBlock:v27];
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

- (void)presentPaneViewController:(id)controller fromEdge:(unint64_t)edge withPercent:(double)percent completion:(id)completion
{
  v56 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  completionCopy = completion;
  paneState = [(FMSlidingPaneViewController *)self paneState];
  v13 = LogCategory_FMSlidingPaneViewController();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v50 = 138412802;
    v51 = controllerCopy;
    v52 = 2048;
    edgeCopy = edge;
    v54 = 2048;
    percentCopy = percent;
    _os_log_impl(&dword_24A315000, v13, OS_LOG_TYPE_DEFAULT, "presentPaneViewController: %@ fromEdge:%ld withPercent:%f completion:", &v50, 0x20u);
  }

  view = [controllerCopy view];
  navigationController = [(FMSlidingPaneViewController *)self navigationController];
  if (navigationController)
  {
    v16 = navigationController;
    navigationController2 = [(FMSlidingPaneViewController *)self navigationController];
    isToolbarHidden = [navigationController2 isToolbarHidden];

    if ((isToolbarHidden & 1) == 0)
    {
      [(FMSlidingPaneViewController *)self setDidHideToolbar:1];
      navigationController3 = [(FMSlidingPaneViewController *)self navigationController];
      [navigationController3 setToolbarHidden:1 animated:1];
    }
  }

  currentFuture = [(FMSlidingPaneViewController *)self currentFuture];

  if (currentFuture)
  {
    v21 = LogCategory_FMSlidingPaneViewController();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [FMSlidingPaneViewController presentPaneViewController:fromEdge:withPercent:completion:];
    }
  }

  paneViewController = [paneState paneViewController];
  v23 = [paneViewController isEqual:controllerCopy];

  if ((v23 & 1) == 0)
  {
    v24 = [[SlidingPaneViewState alloc] initWithViewController:controllerCopy edge:edge];
    [(FMSlidingPaneViewController *)self setPaneState:v24];

    paneState2 = [(FMSlidingPaneViewController *)self paneState];
    if (paneState)
    {
      [(FMSlidingPaneViewController *)self _crossDissolveOldPaneState:paneState newPaneState:paneState2 animated:0 completion:completionCopy];
    }

    else
    {
      [(FMSlidingPaneViewController *)self _presentPaneState:paneState2 animated:0 interactive:1 completion:completionCopy];
    }
  }

  paneState3 = [(FMSlidingPaneViewController *)self paneState];
  [(FMSlidingPaneViewController *)self _preferredSizeForPaneState:paneState3];
  v28 = v27;
  v30 = v29;

  paneState4 = [(FMSlidingPaneViewController *)self paneState];
  edge = [paneState4 edge];

  if (edge <= 3)
  {
    if (edge != 1)
    {
      if (edge == 2)
      {
        v33 = -((v28 + 2.0) * (1.0 - percent));
LABEL_22:
        paneState5 = [(FMSlidingPaneViewController *)self paneState];
        paneHorizontalPositionConstraint = [paneState5 paneHorizontalPositionConstraint];
LABEL_28:
        v36 = paneHorizontalPositionConstraint;
        [paneHorizontalPositionConstraint setConstant:v33];

        goto LABEL_29;
      }

      goto LABEL_23;
    }

    v33 = -((v30 + 2.0) * (1.0 - percent));
LABEL_27:
    paneState5 = [(FMSlidingPaneViewController *)self paneState];
    paneHorizontalPositionConstraint = [paneState5 paneVerticalPositionConstraint];
    goto LABEL_28;
  }

  if (edge == 4)
  {
    v33 = (1.0 - percent) * (v30 + 2.0);
    goto LABEL_27;
  }

  if (edge == 8)
  {
    v33 = (1.0 - percent) * (v28 + 2.0);
    goto LABEL_22;
  }

LABEL_23:
  paneState5 = LogCategory_Unspecified();
  if (os_log_type_enabled(paneState5, OS_LOG_TYPE_ERROR))
  {
    [FMSlidingPaneViewController traitCollectionForChildViewController:?];
  }

LABEL_29:

  if (percent >= 1.0)
  {
    view2 = [(FMSlidingPaneViewController *)self view];
    [view2 frame];
    v39 = v38;
    paneState6 = [(FMSlidingPaneViewController *)self paneState];
    paneView = [paneState6 paneView];
    [paneView bounds];
    v43 = v39 - v42;
    paneState7 = [(FMSlidingPaneViewController *)self paneState];
    paneView2 = [paneState7 paneView];
    [paneView2 bounds];
    v47 = v46;

    paneState8 = [(FMSlidingPaneViewController *)self paneState];
    paneViewController2 = [paneState8 paneViewController];
    [(FMSlidingPaneViewController *)self didPresentPane:paneViewController2 inRect:0 animated:0.0, v43, v47, v30];

    if (completionCopy)
    {
      completionCopy[2](completionCopy);
    }
  }
}

- (void)dismissPaneViewControllerAnimated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  v22 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  objc_initWeak(&location, self);
  v7 = LogCategory_Unspecified();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v21 = animatedCopy;
    _os_log_impl(&dword_24A315000, v7, OS_LOG_TYPE_DEFAULT, "dismissPaneViewControllerAnimated:%d completion:", buf, 8u);
  }

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __76__FMSlidingPaneViewController_dismissPaneViewControllerAnimated_completion___block_invoke;
  v15[3] = &unk_278FDBA88;
  objc_copyWeak(&v17, &location);
  v8 = completionCopy;
  v15[4] = self;
  v16 = v8;
  v18 = animatedCopy;
  v9 = MEMORY[0x24C216350](v15);
  currentFuture = [(FMSlidingPaneViewController *)self currentFuture];
  if (currentFuture)
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
    v12 = [currentFuture addCompletionBlock:v13];
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

- (void)setPresentingConstraintConstant:(double)constant
{
  paneState = [(FMSlidingPaneViewController *)self paneState];
  edge = [paneState edge];

  if (edge > 3)
  {
    if (edge != 4)
    {
      if (edge == 8)
      {
        goto LABEL_7;
      }

      goto LABEL_8;
    }

LABEL_11:
    paneState2 = [(FMSlidingPaneViewController *)self paneState];
    paneVerticalPositionConstraint = [paneState2 paneVerticalPositionConstraint];
    goto LABEL_12;
  }

  if (edge == 1)
  {
    constant = -constant;
    goto LABEL_11;
  }

  if (edge == 2)
  {
    constant = -constant;
LABEL_7:
    paneState2 = [(FMSlidingPaneViewController *)self paneState];
    paneVerticalPositionConstraint = [paneState2 paneHorizontalPositionConstraint];
LABEL_12:
    v9 = paneVerticalPositionConstraint;
    [paneVerticalPositionConstraint setConstant:constant];

    goto LABEL_13;
  }

LABEL_8:
  paneState2 = LogCategory_Unspecified();
  if (os_log_type_enabled(paneState2, OS_LOG_TYPE_ERROR))
  {
    [FMSlidingPaneViewController traitCollectionForChildViewController:?];
  }

LABEL_13:

  paneState3 = [(FMSlidingPaneViewController *)self paneState];
  paneView = [paneState3 paneView];
  [paneView layoutIfNeeded];
}

- (void)willPresentPane:(id)pane inRect:(CGRect)rect animated:(BOOL)animated
{
  animatedCopy = animated;
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v21 = *MEMORY[0x277D85DE8];
  paneCopy = pane;
  delegate = [(FMSlidingPaneViewController *)self delegate];
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
      v16 = paneCopy;
      v17 = 2112;
      v18 = v14;
      v19 = 1024;
      v20 = animatedCopy;
      _os_log_impl(&dword_24A315000, v13, OS_LOG_TYPE_DEFAULT, "Calling willPresentPane: %@ inRect: %@ animated:%d", &v15, 0x1Cu);
    }

    [delegate slidingPaneViewController:self willPresentPane:paneCopy inRect:animatedCopy animated:{x, y, width, height}];
  }
}

- (void)didPresentPane:(id)pane inRect:(CGRect)rect animated:(BOOL)animated
{
  animatedCopy = animated;
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v21 = *MEMORY[0x277D85DE8];
  paneCopy = pane;
  delegate = [(FMSlidingPaneViewController *)self delegate];
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
      v16 = paneCopy;
      v17 = 2112;
      v18 = v14;
      v19 = 1024;
      v20 = animatedCopy;
      _os_log_impl(&dword_24A315000, v13, OS_LOG_TYPE_DEFAULT, "Calling didPresentPane: %@ inRect: %@ animated:%d", &v15, 0x1Cu);
    }

    [delegate slidingPaneViewController:self didPresentPane:paneCopy inRect:animatedCopy animated:{x, y, width, height}];
  }
}

- (void)willDismissPane:(id)pane animated:(BOOL)animated
{
  animatedCopy = animated;
  v13 = *MEMORY[0x277D85DE8];
  paneCopy = pane;
  delegate = [(FMSlidingPaneViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v8 = LogCategory_FMSlidingPaneViewController();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412546;
      v10 = paneCopy;
      v11 = 1024;
      v12 = animatedCopy;
      _os_log_impl(&dword_24A315000, v8, OS_LOG_TYPE_DEFAULT, "Calling willDismissPane: %@ animated:%d", &v9, 0x12u);
    }

    [delegate slidingPaneViewController:self willDismissPane:paneCopy animated:animatedCopy];
  }
}

- (void)didDismissPane:(id)pane animated:(BOOL)animated
{
  animatedCopy = animated;
  v13 = *MEMORY[0x277D85DE8];
  paneCopy = pane;
  delegate = [(FMSlidingPaneViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v8 = LogCategory_FMSlidingPaneViewController();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412546;
      v10 = paneCopy;
      v11 = 1024;
      v12 = animatedCopy;
      _os_log_impl(&dword_24A315000, v8, OS_LOG_TYPE_DEFAULT, "Calling didDismissPane: %@ animated:%d", &v9, 0x12u);
    }

    [delegate slidingPaneViewController:self didDismissPane:paneCopy animated:animatedCopy];
  }
}

- (void)paneSizeChanged:(CGRect)changed forViewController:(id)controller
{
  height = changed.size.height;
  width = changed.size.width;
  y = changed.origin.y;
  x = changed.origin.x;
  v17 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  delegate = [(FMSlidingPaneViewController *)self delegate];
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
      v16 = controllerCopy;
      _os_log_impl(&dword_24A315000, v11, OS_LOG_TYPE_DEFAULT, "Calling paneSizeChanged: %@ forViewController: %@", &v13, 0x16u);
    }

    [delegate slidingPaneViewController:self paneSizeChanged:controllerCopy forViewController:{x, y, width, height}];
  }
}

- (void)_paneFrameChanged:(CGRect)changed
{
  height = changed.size.height;
  width = changed.size.width;
  y = changed.origin.y;
  x = changed.origin.x;
  paneState = [(FMSlidingPaneViewController *)self paneState];
  shouldNotifyOfPaneSizeChanges = [paneState shouldNotifyOfPaneSizeChanges];

  if (shouldNotifyOfPaneSizeChanges)
  {
    paneState2 = [(FMSlidingPaneViewController *)self paneState];
    paneViewController = [paneState2 paneViewController];
    [(FMSlidingPaneViewController *)self paneSizeChanged:paneViewController forViewController:x, y, width, height];
  }
}

- (CGSize)_normalizeSize:(CGSize)size
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = ceil(size.width);
  v4 = ceil(size.height);
  if (size.width != v3 || size.height != v4)
  {
    height = size.height;
    width = size.width;
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

- (id)_metricsFromEdgeInsets:(UIEdgeInsets)insets
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v8 = [MEMORY[0x277CCABB0] numberWithDouble:top];
  [dictionary setObject:v8 forKeyedSubscript:@"top"];

  v9 = [MEMORY[0x277CCABB0] numberWithDouble:left];
  [dictionary setObject:v9 forKeyedSubscript:@"left"];

  v10 = [MEMORY[0x277CCABB0] numberWithDouble:bottom];
  [dictionary setObject:v10 forKeyedSubscript:@"bottom"];

  v11 = [MEMORY[0x277CCABB0] numberWithDouble:right];
  [dictionary setObject:v11 forKeyedSubscript:@"right"];

  return dictionary;
}

- (CGSize)_preferredSizeForPaneState:(id)state
{
  v26 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  paneViewController = [stateCopy paneViewController];
  [paneViewController preferredContentSize];
  v6 = v5;
  v8 = v7;

  if (v6 == 0.0 && v8 == 0.0)
  {
    paneViewController2 = [stateCopy paneViewController];
    view = [paneViewController2 view];
    LODWORD(v11) = 1112014848;
    LODWORD(v12) = 1112014848;
    [view systemLayoutSizeFittingSize:*MEMORY[0x277D76C78] withHorizontalFittingPriority:*(MEMORY[0x277D76C78] + 8) verticalFittingPriority:{v11, v12}];
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
        paneViewController3 = [stateCopy paneViewController];
        view2 = [paneViewController3 view];
        constraints = [view2 constraints];
        v22 = 138412546;
        v23 = v18;
        v24 = 2112;
        v25 = constraints;
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

- (void)_createPaneViewForState:(id)state
{
  stateCopy = state;
  [(FMSlidingPaneViewController *)self _preferredSizeForPaneState:stateCopy];
  v6 = v5;
  v8 = v7;
  _paneParentView = [(FMSlidingPaneViewController *)self _paneParentView];
  edge = [stateCopy edge];
  if (edge > 3)
  {
    if (edge == 8)
    {
      goto LABEL_8;
    }

    if (edge != 4)
    {
      goto LABEL_17;
    }

LABEL_7:
    v11 = [ISPaneFrameView alloc];
    [_paneParentView bounds];
    v13 = v8;
    goto LABEL_9;
  }

  if (edge == 1)
  {
    goto LABEL_7;
  }

  if (edge == 2)
  {
LABEL_8:
    v11 = [ISPaneFrameView alloc];
    [_paneParentView bounds];
    v12 = v6;
LABEL_9:
    v14 = [(ISPaneFrameView *)v11 initWithFrame:0.0, 0.0, v12, v13];
    [stateCopy setPaneView:v14];

    paneView = [stateCopy paneView];
    [paneView setOwningViewController:self];
    clearColor = [MEMORY[0x277D75348] clearColor];
    [paneView setBackgroundColor:clearColor];

    v17 = _NSDictionaryOfVariableBindings(&cfstr_Paneview.isa, paneView, 0);
    [(FMSlidingPaneViewController *)self paneInsets];
    v18 = [(FMSlidingPaneViewController *)self _metricsFromEdgeInsets:?];
    v19 = [v18 mutableCopy];

    v20 = [MEMORY[0x277CCABB0] numberWithDouble:v6];
    [v19 setObject:v20 forKeyedSubscript:@"preferredWidth"];

    v21 = [MEMORY[0x277CCABB0] numberWithDouble:v8];
    [v19 setObject:v21 forKeyedSubscript:@"preferredHeight"];

    paneView2 = [stateCopy paneView];
    [_paneParentView addSubview:paneView2];

    paneView3 = [stateCopy paneView];
    [paneView3 setTranslatesAutoresizingMaskIntoConstraints:0];

    paneViewController = [stateCopy paneViewController];
    view = [paneViewController view];
    [view setTranslatesAutoresizingMaskIntoConstraints:0];

    edge2 = [stateCopy edge];
    if (edge2 > 3)
    {
      if (edge2 != 4)
      {
        if (edge2 == 8)
        {
          v27 = MEMORY[0x277CCAAD0];
          v28 = 1.0;
          v29 = paneView;
          v30 = 2;
          v31 = _paneParentView;
          v32 = 2;
          goto LABEL_16;
        }

LABEL_19:
        v38 = LogCategory_Unspecified();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          [FMSlidingPaneViewController _createPaneViewForState:stateCopy];
        }

        goto LABEL_25;
      }

      v39 = MEMORY[0x277CCAAD0];
      v40 = 1.0;
      v41 = paneView;
      v42 = 4;
      v43 = _paneParentView;
      v44 = 4;
    }

    else
    {
      if (edge2 != 1)
      {
        if (edge2 == 2)
        {
          v27 = MEMORY[0x277CCAAD0];
          v28 = 1.0;
          v29 = paneView;
          v30 = 1;
          v31 = _paneParentView;
          v32 = 1;
LABEL_16:
          v33 = [v27 constraintWithItem:v29 attribute:v30 relatedBy:0 toItem:v31 attribute:v32 multiplier:v28 constant:0.0];
          [stateCopy setPaneHorizontalPositionConstraint:v33];

          paneHorizontalPositionConstraint = [stateCopy paneHorizontalPositionConstraint];
          [paneHorizontalPositionConstraint setIdentifier:@"paneHorizontalPositionConstraint"];

          paneHorizontalPositionConstraint2 = [stateCopy paneHorizontalPositionConstraint];
          [_paneParentView addConstraint:paneHorizontalPositionConstraint2];

          v36 = MEMORY[0x277CCAAD0];
          v37 = @"V:|-top-[paneView]-bottom-|";
LABEL_24:
          v38 = [v36 constraintsWithVisualFormat:v37 options:0 metrics:v19 views:v17];
          [_paneParentView addConstraints:v38];
LABEL_25:

          v48 = objc_alloc(MEMORY[0x277D75D68]);
          paneVisualEffect = [(FMSlidingPaneViewController *)self paneVisualEffect];
          v50 = [v48 initWithEffect:paneVisualEffect];
          [stateCopy setVisualEffectView:v50];

          paneView4 = [stateCopy paneView];
          [paneView4 bounds];
          v53 = v52;
          v55 = v54;
          v57 = v56;
          v59 = v58;
          visualEffectView = [stateCopy visualEffectView];
          [visualEffectView setFrame:{v53, v55, v57, v59}];

          visualEffectView2 = [stateCopy visualEffectView];
          [visualEffectView2 setAutoresizingMask:18];

          paneView5 = [stateCopy paneView];
          visualEffectView3 = [stateCopy visualEffectView];
          [paneView5 addSubview:visualEffectView3];

          paneView6 = [stateCopy paneView];
          visualEffectView4 = [stateCopy visualEffectView];
          [paneView6 sendSubviewToBack:visualEffectView4];

          paneView7 = [stateCopy paneView];
          [paneView7 layoutIfNeeded];

          goto LABEL_26;
        }

        goto LABEL_19;
      }

      v39 = MEMORY[0x277CCAAD0];
      v40 = 1.0;
      v41 = paneView;
      v42 = 3;
      v43 = _paneParentView;
      v44 = 3;
    }

    v45 = [v39 constraintWithItem:v41 attribute:v42 relatedBy:0 toItem:v43 attribute:v44 multiplier:v40 constant:0.0];
    [stateCopy setPaneVerticalPositionConstraint:v45];

    paneVerticalPositionConstraint = [stateCopy paneVerticalPositionConstraint];
    [paneVerticalPositionConstraint setIdentifier:@"paneVerticalPositionConstant"];

    paneVerticalPositionConstraint2 = [stateCopy paneVerticalPositionConstraint];
    [_paneParentView addConstraint:paneVerticalPositionConstraint2];

    v36 = MEMORY[0x277CCAAD0];
    v37 = @"H:|-left-[paneView]-right-|";
    goto LABEL_24;
  }

LABEL_17:
  paneView = LogCategory_Unspecified();
  if (os_log_type_enabled(paneView, OS_LOG_TYPE_ERROR))
  {
    [FMSlidingPaneViewController _createPaneViewForState:stateCopy];
  }

LABEL_26:
}

- (void)_createPaneContentConstraintsForState:(id)state
{
  paneViewController = [state paneViewController];
  firstValue = [paneViewController view];

  _paneParentView = [(FMSlidingPaneViewController *)self _paneParentView];
  v6 = _NSDictionaryOfVariableBindings(&cfstr_Contentview.isa, firstValue, 0);
  [(FMSlidingPaneViewController *)self paneContentInsets];
  v7 = [(FMSlidingPaneViewController *)self _metricsFromEdgeInsets:?];
  v8 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"V:|-top-[contentView]-bottom-|" options:0 metrics:v7 views:v6];
  [_paneParentView addConstraints:v8];
  v9 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"H:|-left-[contentView]-right-|" options:0 metrics:v7 views:v6];

  [_paneParentView addConstraints:v9];
  [_paneParentView setNeedsUpdateConstraints];
}

- (void)_removeChildViewControllerForState:(id)state
{
  v12 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  paneViewController = [stateCopy paneViewController];
  [paneViewController willMoveToParentViewController:0];

  v5 = LogCategory_FMSlidingPaneViewController();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    paneViewController2 = [stateCopy paneViewController];
    v10 = 138412290;
    v11 = paneViewController2;
    _os_log_impl(&dword_24A315000, v5, OS_LOG_TYPE_DEFAULT, "_removeChildViewControllerForState: %@", &v10, 0xCu);
  }

  paneViewController3 = [stateCopy paneViewController];
  view = [paneViewController3 view];
  [view removeFromSuperview];

  paneViewController4 = [stateCopy paneViewController];
  [paneViewController4 removeFromParentViewController];
}

- (void)_presentPaneState:(id)state animated:(BOOL)animated interactive:(BOOL)interactive completion:(id)completion
{
  interactiveCopy = interactive;
  animatedCopy = animated;
  v96 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  completionCopy = completion;
  objc_initWeak(&location, self);
  selfCopy = self;
  newActionFuture = [(FMSlidingPaneViewController *)selfCopy newActionFuture];
  if (!stateCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:selfCopy file:@"FMSlidingPaneViewController.m" lineNumber:571 description:{@"Invalid parameter not satisfying: %@", @"paneState != nil"}];
  }

  v15 = LogCategory_FMSlidingPaneViewController();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    paneViewController = [stateCopy paneViewController];
    *buf = 138412802;
    v91 = paneViewController;
    v92 = 1024;
    v93 = animatedCopy;
    v94 = 1024;
    v95 = interactiveCopy;
    _os_log_impl(&dword_24A315000, v15, OS_LOG_TYPE_DEFAULT, "_presentPaneState: %@ animated:%d interactive:%d completion:", buf, 0x18u);
  }

  paneView = [stateCopy paneView];
  v18 = paneView == 0;

  if (v18)
  {
    [(FMSlidingPaneViewController *)selfCopy _createPaneViewForState:stateCopy];
  }

  [(FMSlidingPaneViewController *)selfCopy _preferredSizeForPaneState:stateCopy];
  v20 = v19;
  v22 = v21;
  paneView2 = [stateCopy paneView];
  [paneView2 layoutIfNeeded];

  v24 = LogCategory_FMSlidingPaneViewController();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    paneViewController2 = [stateCopy paneViewController];
    *buf = 138412290;
    v91 = paneViewController2;
    _os_log_impl(&dword_24A315000, v24, OS_LOG_TYPE_DEFAULT, "addChildViewController: %@", buf, 0xCu);
  }

  paneViewController3 = [stateCopy paneViewController];
  [(FMSlidingPaneViewController *)selfCopy addChildViewController:paneViewController3];

  paneView3 = [stateCopy paneView];
  [paneView3 bounds];
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  paneViewController4 = [stateCopy paneViewController];
  view = [paneViewController4 view];
  [view setFrame:{v29, v31, v33, v35}];

  paneView4 = [stateCopy paneView];
  paneViewController5 = [stateCopy paneViewController];
  view2 = [paneViewController5 view];
  [paneView4 addSubview:view2];

  [(FMSlidingPaneViewController *)selfCopy _createPaneContentConstraintsForState:stateCopy];
  paneViewController6 = [stateCopy paneViewController];
  [paneViewController6 didMoveToParentViewController:selfCopy];

  edge = [stateCopy edge];
  if (edge > 3)
  {
    if (edge == 4)
    {
      paneVerticalPositionConstraint = [stateCopy paneVerticalPositionConstraint];
      [paneVerticalPositionConstraint setConstant:v22 + 2.0];
      goto LABEL_20;
    }

    if (edge == 8)
    {
      paneVerticalPositionConstraint = [stateCopy paneHorizontalPositionConstraint];
      [paneVerticalPositionConstraint setConstant:v20 + 2.0];
      goto LABEL_20;
    }
  }

  else
  {
    if (edge == 1)
    {
      paneVerticalPositionConstraint = [stateCopy paneVerticalPositionConstraint];
      [paneVerticalPositionConstraint setConstant:2.0 - v22];
      goto LABEL_20;
    }

    if (edge == 2)
    {
      paneVerticalPositionConstraint = [stateCopy paneHorizontalPositionConstraint];
      [paneVerticalPositionConstraint setConstant:2.0 - v20];
      goto LABEL_20;
    }
  }

  paneVerticalPositionConstraint = LogCategory_FMSlidingPaneViewController();
  if (os_log_type_enabled(paneVerticalPositionConstraint, OS_LOG_TYPE_ERROR))
  {
    -[FMSlidingPaneViewController _presentPaneState:animated:interactive:completion:].cold.1(buf, [stateCopy edge], paneVerticalPositionConstraint);
  }

LABEL_20:

  paneView5 = [stateCopy paneView];
  [paneView5 layoutIfNeeded];

  [(FMSlidingPaneViewController *)selfCopy _preferredSizeForPaneState:stateCopy];
  v46 = v45;
  view3 = [(FMSlidingPaneViewController *)selfCopy view];
  [view3 frame];
  v49 = v48;
  paneView6 = [stateCopy paneView];
  [paneView6 bounds];
  v52 = v51;
  paneView7 = [stateCopy paneView];
  [paneView7 bounds];
  v55 = v54;

  paneViewController7 = [stateCopy paneViewController];
  v57 = v49 - v52;
  [(FMSlidingPaneViewController *)selfCopy willPresentPane:paneViewController7 inRect:animatedCopy animated:0.0, v57, *&v55, *&v46];

  [stateCopy setShouldNotifyOfPaneSizeChanges:1];
  view4 = [(FMSlidingPaneViewController *)selfCopy view];
  [view4 layoutIfNeeded];

  edge2 = [stateCopy edge];
  if (edge2 > 3)
  {
    if (edge2 == 4)
    {
      [(FMSlidingPaneViewController *)selfCopy paneInsets];
      v68 = v67;
      paneVerticalPositionConstraint2 = [stateCopy paneVerticalPositionConstraint];
      [paneVerticalPositionConstraint2 setConstant:-v68];
      goto LABEL_31;
    }

    if (edge2 == 8)
    {
      [(FMSlidingPaneViewController *)selfCopy paneInsets];
      v64 = v63;
      paneVerticalPositionConstraint2 = [stateCopy paneHorizontalPositionConstraint];
      [paneVerticalPositionConstraint2 setConstant:-v64];
      goto LABEL_31;
    }
  }

  else
  {
    if (edge2 == 1)
    {
      [(FMSlidingPaneViewController *)selfCopy paneInsets];
      v66 = v65;
      paneVerticalPositionConstraint2 = [stateCopy paneVerticalPositionConstraint];
      [paneVerticalPositionConstraint2 setConstant:v66];
      goto LABEL_31;
    }

    if (edge2 == 2)
    {
      [(FMSlidingPaneViewController *)selfCopy paneInsets];
      v61 = v60;
      paneVerticalPositionConstraint2 = [stateCopy paneHorizontalPositionConstraint];
      [paneVerticalPositionConstraint2 setConstant:v61];
      goto LABEL_31;
    }
  }

  paneVerticalPositionConstraint2 = LogCategory_FMSlidingPaneViewController();
  if (os_log_type_enabled(paneVerticalPositionConstraint2, OS_LOG_TYPE_ERROR))
  {
    -[FMSlidingPaneViewController _presentPaneState:animated:interactive:completion:].cold.1(v89, [stateCopy edge], paneVerticalPositionConstraint2);
  }

LABEL_31:

  if (animatedCopy)
  {
    v69 = MEMORY[0x277D75D18];
    [(FMSlidingPaneViewController *)selfCopy animationDuration];
    v71 = v70;
    [(FMSlidingPaneViewController *)selfCopy animationSpringDamping];
    v73 = v72;
    [(FMSlidingPaneViewController *)selfCopy animationInitialVelocity];
    v75 = v74;
    animationOptions = [(FMSlidingPaneViewController *)selfCopy animationOptions];
    v86[0] = MEMORY[0x277D85DD0];
    v86[1] = 3221225472;
    v86[2] = __81__FMSlidingPaneViewController__presentPaneState_animated_interactive_completion___block_invoke;
    v86[3] = &unk_278FDB978;
    v87 = stateCopy;
    v81[0] = MEMORY[0x277D85DD0];
    v81[1] = 3221225472;
    v81[2] = __81__FMSlidingPaneViewController__presentPaneState_animated_interactive_completion___block_invoke_2;
    v81[3] = &unk_278FDBAB0;
    objc_copyWeak(v84, &location);
    v81[4] = selfCopy;
    v82 = newActionFuture;
    v84[1] = 0;
    v84[2] = *&v57;
    v84[3] = v55;
    v84[4] = v46;
    v85 = animatedCopy;
    v83 = completionCopy;
    [v69 animateWithDuration:animationOptions | 4 delay:v86 usingSpringWithDamping:v81 initialSpringVelocity:v71 options:0.0 animations:v73 completion:v75];

    objc_destroyWeak(v84);
  }

  else
  {
    paneView8 = [stateCopy paneView];
    [paneView8 layoutIfNeeded];

    [(FMSlidingPaneViewController *)selfCopy completeFuture:newActionFuture];
    if (!interactiveCopy)
    {
      paneState = [(FMSlidingPaneViewController *)selfCopy paneState];
      paneViewController8 = [paneState paneViewController];
      [(FMSlidingPaneViewController *)selfCopy didPresentPane:paneViewController8 inRect:0 animated:0.0, v57, *&v55, *&v46];

      if (completionCopy)
      {
        completionCopy[2](completionCopy);
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

- (void)_dismissPaneState:(id)state animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  v57 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  completionCopy = completion;
  objc_initWeak(&location, self);
  if (!stateCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"FMSlidingPaneViewController.m" lineNumber:677 description:{@"Invalid parameter not satisfying: %@", @"paneState != nil"}];
  }

  newActionFuture = [(FMSlidingPaneViewController *)self newActionFuture];
  v12 = LogCategory_FMSlidingPaneViewController();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    paneViewController = [stateCopy paneViewController];
    *buf = 138412546;
    v54 = paneViewController;
    v55 = 1024;
    v56 = animatedCopy;
    _os_log_impl(&dword_24A315000, v12, OS_LOG_TYPE_DEFAULT, "_dismissPaneState: %@ animated: %d completion:", buf, 0x12u);
  }

  [stateCopy setShouldNotifyOfPaneSizeChanges:0];
  v14 = LogCategory_FMSlidingPaneViewController();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    paneViewController2 = [stateCopy paneViewController];
    *buf = 138412546;
    v54 = paneViewController2;
    v55 = 1024;
    v56 = animatedCopy;
    _os_log_impl(&dword_24A315000, v14, OS_LOG_TYPE_DEFAULT, "Calling willDismissPane: %@ animated: %d", buf, 0x12u);
  }

  paneViewController3 = [stateCopy paneViewController];
  [(FMSlidingPaneViewController *)self willDismissPane:paneViewController3 animated:animatedCopy];

  edge = [stateCopy edge];
  if (edge > 3)
  {
    if (edge == 4)
    {
      paneView = [stateCopy paneView];
      [paneView bounds];
      v29 = v28;
      paneVerticalPositionConstraint = [stateCopy paneVerticalPositionConstraint];
      [paneVerticalPositionConstraint setConstant:v29 + 2.0];

      goto LABEL_18;
    }

    if (edge == 8)
    {
      paneView = [stateCopy paneView];
      [paneView bounds];
      v23 = v22;
      paneHorizontalPositionConstraint = [stateCopy paneHorizontalPositionConstraint];
      [paneHorizontalPositionConstraint setConstant:v23 + 2.0];

      goto LABEL_18;
    }
  }

  else
  {
    if (edge == 1)
    {
      paneView = [stateCopy paneView];
      [paneView bounds];
      v26 = v25;
      paneVerticalPositionConstraint2 = [stateCopy paneVerticalPositionConstraint];
      [paneVerticalPositionConstraint2 setConstant:-(v26 + 2.0)];

      goto LABEL_18;
    }

    if (edge == 2)
    {
      paneView = [stateCopy paneView];
      [paneView bounds];
      v20 = v19;
      paneHorizontalPositionConstraint2 = [stateCopy paneHorizontalPositionConstraint];
      [paneHorizontalPositionConstraint2 setConstant:-(v20 + 2.0)];

      goto LABEL_18;
    }
  }

  paneView = LogCategory_FMSlidingPaneViewController();
  if (os_log_type_enabled(paneView, OS_LOG_TYPE_ERROR))
  {
    -[FMSlidingPaneViewController _presentPaneState:animated:interactive:completion:].cold.1(buf, [stateCopy edge], paneView);
  }

LABEL_18:

  if (animatedCopy)
  {
    v31 = MEMORY[0x277D75D18];
    [(FMSlidingPaneViewController *)self animationDuration];
    v33 = v32;
    [(FMSlidingPaneViewController *)self animationSpringDamping];
    v35 = v34;
    [(FMSlidingPaneViewController *)self animationInitialVelocity];
    v37 = v36;
    animationOptions = [(FMSlidingPaneViewController *)self animationOptions];
    v50[0] = MEMORY[0x277D85DD0];
    v50[1] = 3221225472;
    v50[2] = __69__FMSlidingPaneViewController__dismissPaneState_animated_completion___block_invoke;
    v50[3] = &unk_278FDB978;
    v39 = stateCopy;
    v51 = v39;
    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = __69__FMSlidingPaneViewController__dismissPaneState_animated_completion___block_invoke_2;
    v43[3] = &unk_278FDBAD8;
    objc_copyWeak(&v48, &location);
    v44 = v39;
    selfCopy = self;
    v49 = animatedCopy;
    v47 = completionCopy;
    v46 = newActionFuture;
    [v31 animateWithDuration:animationOptions | 4 delay:v50 usingSpringWithDamping:v43 initialSpringVelocity:v33 options:0.0 animations:v35 completion:v37];

    objc_destroyWeak(&v48);
  }

  else
  {
    paneView2 = [stateCopy paneView];
    [paneView2 layoutIfNeeded];

    [(FMSlidingPaneViewController *)self _removeChildViewControllerForState:stateCopy];
    paneViewController4 = [stateCopy paneViewController];
    [(FMSlidingPaneViewController *)self didDismissPane:paneViewController4 animated:0];

    if (completionCopy)
    {
      completionCopy[2](completionCopy);
    }

    [(FMSlidingPaneViewController *)self completeFuture:newActionFuture];
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

- (void)_crossDissolveOldPaneState:(id)state newPaneState:(id)paneState animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  v73 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  paneStateCopy = paneState;
  completionCopy = completion;
  selfCopy = self;
  if (stateCopy)
  {
    if (paneStateCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [FMSlidingPaneViewController _crossDissolveOldPaneState:a2 newPaneState:selfCopy animated:? completion:?];
    if (paneStateCopy)
    {
      goto LABEL_3;
    }
  }

  [FMSlidingPaneViewController _crossDissolveOldPaneState:a2 newPaneState:selfCopy animated:? completion:?];
LABEL_3:
  v15 = objc_alloc_init(MEMORY[0x277D07B68]);
  paneView = [paneStateCopy paneView];

  if (!paneView)
  {
    [(FMSlidingPaneViewController *)selfCopy _createPaneViewForState:paneStateCopy];
  }

  paneVerticalPositionConstraint = [stateCopy paneVerticalPositionConstraint];
  [paneVerticalPositionConstraint constant];
  v19 = v18;
  paneVerticalPositionConstraint2 = [paneStateCopy paneVerticalPositionConstraint];
  [paneVerticalPositionConstraint2 setConstant:v19];

  view = [(FMSlidingPaneViewController *)selfCopy view];
  [view updateConstraintsIfNeeded];

  paneView2 = [paneStateCopy paneView];
  [paneView2 setHidden:1];

  paneView3 = [paneStateCopy paneView];
  [paneView3 bounds];
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  paneViewController = [paneStateCopy paneViewController];
  view2 = [paneViewController view];
  [view2 setFrame:{v25, v27, v29, v31}];

  paneView4 = [paneStateCopy paneView];
  paneViewController2 = [paneStateCopy paneViewController];
  view3 = [paneViewController2 view];
  [paneView4 addSubview:view3];

  [(FMSlidingPaneViewController *)selfCopy _createPaneContentConstraintsForState:paneStateCopy];
  view4 = [(FMSlidingPaneViewController *)selfCopy view];
  [view4 updateConstraintsIfNeeded];

  v38 = LogCategory_FMSlidingPaneViewController();
  if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
  {
    paneViewController3 = [paneStateCopy paneViewController];
    *buf = 138412290;
    v72 = paneViewController3;
    _os_log_impl(&dword_24A315000, v38, OS_LOG_TYPE_DEFAULT, "addChildViewController: %@", buf, 0xCu);
  }

  paneViewController4 = [paneStateCopy paneViewController];
  [(FMSlidingPaneViewController *)selfCopy addChildViewController:paneViewController4];

  paneViewController5 = [paneStateCopy paneViewController];
  [paneViewController5 didMoveToParentViewController:selfCopy];

  paneView5 = [paneStateCopy paneView];
  [paneView5 layoutIfNeeded];

  [(FMSlidingPaneViewController *)selfCopy _preferredSizeForPaneState:paneStateCopy];
  v44 = v43;
  view5 = [(FMSlidingPaneViewController *)selfCopy view];
  [view5 frame];
  v47 = v46 - v44;
  paneView6 = [paneStateCopy paneView];
  [paneView6 bounds];
  v50 = v49;

  [stateCopy setShouldNotifyOfPaneSizeChanges:0];
  paneViewController6 = [stateCopy paneViewController];
  if (animatedCopy)
  {
    [(FMSlidingPaneViewController *)selfCopy willDismissPane:paneViewController6 animated:1];

    paneViewController7 = [paneStateCopy paneViewController];
    [(FMSlidingPaneViewController *)selfCopy willPresentPane:paneViewController7 inRect:1 animated:0.0, v47, v50, v44];

    [paneStateCopy setShouldNotifyOfPaneSizeChanges:1];
    v53 = MEMORY[0x277D75D18];
    paneView7 = [stateCopy paneView];
    paneView8 = [paneStateCopy paneView];
    v61[0] = MEMORY[0x277D85DD0];
    v61[1] = 3221225472;
    v61[2] = __91__FMSlidingPaneViewController__crossDissolveOldPaneState_newPaneState_animated_completion___block_invoke;
    v61[3] = &unk_278FDBB00;
    v61[4] = selfCopy;
    v62 = stateCopy;
    v70 = animatedCopy;
    v63 = paneStateCopy;
    v66 = 0;
    v67 = v47;
    v68 = v50;
    v69 = v44;
    v64 = v15;
    v65 = completionCopy;
    [v53 transitionFromView:paneView7 toView:paneView8 duration:5243264 options:v61 completion:0.150000006];
  }

  else
  {
    [(FMSlidingPaneViewController *)selfCopy willDismissPane:paneViewController6 animated:0];

    paneViewController8 = [paneStateCopy paneViewController];
    [(FMSlidingPaneViewController *)selfCopy willPresentPane:paneViewController8 inRect:0 animated:0.0, v47, v50, v44];

    paneView9 = [stateCopy paneView];
    [paneView9 setHidden:1];

    paneView10 = [paneStateCopy paneView];
    [paneView10 setHidden:0];

    [(FMSlidingPaneViewController *)selfCopy _removeChildViewControllerForState:stateCopy];
    paneViewController9 = [stateCopy paneViewController];
    [(FMSlidingPaneViewController *)selfCopy didDismissPane:paneViewController9 animated:0];

    paneViewController10 = [paneStateCopy paneViewController];
    [(FMSlidingPaneViewController *)selfCopy didPresentPane:paneViewController10 inRect:0 animated:0.0, v47, v50, v44];

    [(FMSlidingPaneViewController *)selfCopy completeFuture:v15];
    if (completionCopy)
    {
      completionCopy[2](completionCopy);
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
  paneState = [(FMSlidingPaneViewController *)self paneState];
  paneView = [paneState paneView];
  superview = [paneView superview];
  v5 = superview != 0;

  return v5;
}

- (id)newActionFuture
{
  v3 = objc_alloc_init(MEMORY[0x277D07B68]);
  actionFutures = [(FMSlidingPaneViewController *)self actionFutures];
  [actionFutures addObject:v3];

  return v3;
}

- (FMFuture)currentFuture
{
  actionFutures = [(FMSlidingPaneViewController *)self actionFutures];
  lastObject = [actionFutures lastObject];

  return lastObject;
}

- (void)completeFuture:(id)future
{
  futureCopy = future;
  [futureCopy finishWithNoResult];
  actionFutures = [(FMSlidingPaneViewController *)self actionFutures];
  [actionFutures removeObject:futureCopy];
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