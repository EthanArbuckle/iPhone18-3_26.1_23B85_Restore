@interface CCUIContentModuleContainerViewController
+ (id)editingSettings;
- (BOOL)_isContentViewControllerImplicitlyExpanded;
- (BOOL)_isEffectivelyExpanded;
- (BOOL)_isForceTouchAvailable;
- (BOOL)clickPresentationInteractionShouldBegin:(id)a3;
- (BOOL)clickPresentationInteractionShouldPresent:(id)a3;
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (CCUIContentModuleContainerViewController)init;
- (CCUIContentModuleContainerViewController)initWithCoder:(id)a3;
- (CCUIContentModuleContainerViewController)initWithModuleIdentifier:(id)a3 uniqueIdentifier:(id)a4 contentModule:(id)a5 presentationContext:(id)a6 contentRenderingMode:(unint64_t)a7;
- (CCUIContentModuleContainerViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (CCUIContentModuleContainerViewControllerDelegate)delegate;
- (CGRect)_backgroundFrameForExpandedState;
- (CGRect)_contentBoundsForExpandedState;
- (CGRect)_contentBoundsForTransitionProgress:(double)a3;
- (CGRect)_contentFrameForExpandedState;
- (CGRect)_contentFrameForRestState;
- (CGRect)_presentationFrameForExpandedState;
- (CGRect)visibleBounds;
- (CGSize)maxResizeDimensions;
- (CGSize)minResizeDimensions;
- (double)_continuousCornerRadiusForCompactState;
- (double)_continuousCornerRadiusForExpandedState;
- (id)_contentSourceView;
- (id)clickPresentationInteraction:(id)a3 presentationForPresentingViewController:(id)a4;
- (id)clickPresentationInteraction:(id)a3 previewForHighlightingAtLocation:(CGPoint)a4;
- (id)contextMenuPreviewForControlHostViewController:(id)a3;
- (id)pointerInteraction:(id)a3 regionForRequest:(id)a4 defaultRegion:(id)a5;
- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4;
- (id)rootPassThroughView;
- (void)_addTopLevelGestureRecognizersFromViewAndSubviews:(id)a3 toBlockingGestureRecognizers:(id)a4;
- (void)_applyTreatmentToContainerViewPlatters;
- (void)_closeExpandedModule:(BOOL)a3;
- (void)_configureContentViewControllerEditingAnimated:(BOOL)a3;
- (void)_configureEditingAnimated:(BOOL)a3;
- (void)_configureForContentModuleGroupRenderingIfNecessary;
- (void)_configureJittering;
- (void)_configureMaskViewIfNecessary;
- (void)_configureTouchBlockingIfNecessary;
- (void)_configureTouchPassThrough;
- (void)_didEndTransitionWithContentModuleContainerTransition:(id)a3 completed:(BOOL)a4;
- (void)_ensureAndConfigureEditingBorderView;
- (void)_findTopLevelGestureRecognizersForView:(id)a3 installOnView:(id)a4;
- (void)_handleExpandModuleForTapGestureRecognizer:(id)a3;
- (void)_handleTapGestureRecognizer:(id)a3;
- (void)_loadBackgroundViewController:(id)a3;
- (void)_loadContentViewController:(id)a3;
- (void)_removeEditingBorderView;
- (void)_setDidExpandModulePreference;
- (void)_updateContainerViewPlatters;
- (void)_updateDisplayedCompactContinuousCornerRadius;
- (void)clickPresentationInteractionEnded:(id)a3 wasCancelled:(BOOL)a4;
- (void)dismissExpandedModuleAnimated:(BOOL)a3;
- (void)dismissModulePresentedContentAnimated:(BOOL)a3 completion:(id)a4;
- (void)dismissPresentedContentAnimated:(BOOL)a3;
- (void)dismissViewControllerWithTransition:(int)a3 completion:(id)a4;
- (void)displayWillTurnOff;
- (void)expandModule;
- (void)invalidateContainerViewsForPlatterTreatment;
- (void)loadView;
- (void)pointerInteraction:(id)a3 willEnterRegion:(id)a4 animator:(id)a5;
- (void)pointerInteraction:(id)a3 willExitRegion:(id)a4 animator:(id)a5;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3;
- (void)redirectTapsWithAction:(id)a3;
- (void)setAllowsGlassGrouping:(BOOL)a3;
- (void)setContentMetrics:(id)a3;
- (void)setContentRenderingMode:(unint64_t)a3;
- (void)setEditing:(BOOL)a3 animated:(BOOL)a4;
- (void)setGridSizeClass:(int64_t)a3;
- (void)setIconImageInfo:(SBIconImageInfo *)a3;
- (void)setJittering:(BOOL)a3;
- (void)setResizing:(BOOL)a3;
- (void)setSuppressesCompactContinuousCornerRadiusUpdates:(BOOL)a3;
- (void)setSuppressesContentTransitions:(BOOL)a3;
- (void)setUserVisibilityStatus:(unint64_t)a3;
- (void)setWantsSubduedBackground:(BOOL)a3;
- (void)transitionToExpandedMode:(BOOL)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
- (void)willBecomeActive;
- (void)willDismissViewController:(id)a3;
- (void)willPresentViewController:(id)a3;
- (void)willResignActive;
@end

@implementation CCUIContentModuleContainerViewController

- (void)viewWillLayoutSubviews
{
  v47.receiver = self;
  v47.super_class = CCUIContentModuleContainerViewController;
  [(CCUIContentModuleContainerViewController *)&v47 viewWillLayoutSubviews];
  if ([(CCUIContentModuleContainerViewController *)self isExpanded])
  {
    highlightWrapperView = self->_highlightWrapperView;
    [(CCUIContentModuleContainerViewController *)self _backgroundFrameForExpandedState];
    [(UIView *)highlightWrapperView setFrame:?];
    backgroundView = self->_backgroundView;
    [(CCUIContentModuleContainerViewController *)self _backgroundFrameForExpandedState];
    [(CCUIContentModuleBackgroundView *)backgroundView setFrame:?];
    contentContainerView = self->_contentContainerView;
    [(CCUIContentModuleContainerViewController *)self _contentFrameForExpandedState];
    [(CCUIContentModuleContentContainerView *)contentContainerView setFrame:?];
  }

  else
  {
    v6 = [(CCUIContentModuleContainerViewController *)self view];
    [v6 bounds];
    v43 = v8;
    v44 = v7;
    v10 = v9;
    v12 = v11;
    v13 = 1.0;
    v14 = 1.0;
    if (self->_resizing)
    {
      v15 = *MEMORY[0x277CBF3A8];
      v16 = *(MEMORY[0x277CBF3A8] + 8);
      if (self->_minResizeDimensions.width != *MEMORY[0x277CBF3A8] || self->_minResizeDimensions.height != v16)
      {
        if (BSFloatLessThanFloat())
        {
          v14 = v10 / self->_minResizeDimensions.width;
        }

        if (BSFloatLessThanFloat())
        {
          v13 = v12 / self->_minResizeDimensions.height;
        }
      }

      if (self->_maxResizeDimensions.width != v15 || self->_maxResizeDimensions.height != v16)
      {
        if (BSFloatGreaterThanFloat())
        {
          v14 = v10 / self->_maxResizeDimensions.width;
        }

        if (BSFloatGreaterThanFloat())
        {
          v13 = v12 / self->_maxResizeDimensions.height;
        }
      }
    }

    v41 = v10;
    v42 = v12;
    BSRectWithSize();
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v26 = v25;
    [v6 center];
    v28 = v27;
    v30 = v29;
    [(UIView *)self->_highlightWrapperView setBounds:v20, v22, v24, v26];
    [(UIView *)self->_highlightWrapperView setCenter:v28, v30];
    [(UIView *)self->_editingBorderMaskView setBounds:v20, v22, v24, v26];
    if (BSFloatEqualToFloat() && (BSFloatEqualToFloat() & 1) != 0)
    {
      v31 = self->_highlightWrapperView;
      v39 = *(MEMORY[0x277CBF2C0] + 16);
      *&v46.a = *MEMORY[0x277CBF2C0];
      v40 = *&v46.a;
      *&v46.c = v39;
      *&v46.tx = *(MEMORY[0x277CBF2C0] + 32);
      v38 = *&v46.tx;
      [(UIView *)v31 setTransform:&v46];
      editingBorderMaskView = self->_editingBorderMaskView;
      *&v46.a = v40;
      *&v46.c = v39;
      *&v46.tx = v38;
      v33 = &v46;
    }

    else
    {
      memset(&v46, 0, sizeof(v46));
      CGAffineTransformMakeScale(&v46, v14, v13);
      v34 = self->_highlightWrapperView;
      v45 = v46;
      [(UIView *)v34 setTransform:&v45];
      editingBorderMaskView = self->_editingBorderMaskView;
      v45 = v46;
      v33 = &v45;
    }

    [(UIView *)editingBorderMaskView setTransform:v33];
    [(UIView *)self->_highlightWrapperView setFrame:v20, v22, v24, v26];
    [(CCUIContentModuleBackgroundView *)self->_backgroundView setFrame:v20, v22, v24, v26];
    [(CCUIContentModuleContentContainerView *)self->_contentContainerView setFrame:v20, v22, v24, v26];
    [(UIControl *)self->_touchBlockingView setFrame:v20, v22, v24, v26];
    [(UIView *)self->_maskView setFrame:v44, v43, v41, v42];
    v35 = [objc_opt_class() editingSettings];
    [v35 pulsingBorderWidth];

    [v6 _shouldReverseLayoutDirection];
    UIRectInset();
    [(UIView *)self->_editingBorderContainerView setFrame:?];
    editingBorderView = self->_editingBorderView;
    [(UIView *)self->_editingBorderContainerView bounds];
    [(UIView *)editingBorderView setFrame:?];
    v37 = self->_editingBorderMaskView;
    [(UIView *)self->_editingBorderView convertPoint:v6 fromView:v28, v30];
    [(UIView *)v37 setCenter:?];
  }
}

+ (id)editingSettings
{
  if (editingSettings_onceToken != -1)
  {
    +[CCUIContentModuleContainerViewController editingSettings];
  }

  v3 = editingSettings___editingSettings;

  return v3;
}

- (void)invalidateContainerViewsForPlatterTreatment
{
  v8 = *MEMORY[0x277D85DE8];
  if (self->_contentModuleProvidesOwnPlatter)
  {
    v3 = *MEMORY[0x277CFC8F8];
    if (os_log_type_enabled(*MEMORY[0x277CFC8F8], OS_LOG_TYPE_DEFAULT))
    {
      v4 = v3;
      v5 = [(CCUIContentModuleContainerViewController *)self moduleIdentifier];
      v6 = 138543362;
      v7 = v5;
      _os_log_impl(&dword_21E9F5000, v4, OS_LOG_TYPE_DEFAULT, "Content module requested to invalidate container views for platter treatment (%{public}@)", &v6, 0xCu);
    }

    [(CCUIContentModuleContainerViewController *)self _updateContainerViewPlatters];
  }
}

- (void)_applyTreatmentToContainerViewPlatters
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = [(CCUIContentModuleContainerViewController *)self containerViewPlatters];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v10 + 1) + 8 * v7);
        allowsGlassGrouping = self->_allowsGlassGrouping;
        if (self->_wantsSubduedBackground)
        {
          [v8 ccui_applySubduedGlassWithGrouping:allowsGlassGrouping];
        }

        else
        {
          [v8 ccui_applyGlassWithGrouping:allowsGlassGrouping];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }
}

- (CCUIContentModuleContainerViewController)initWithModuleIdentifier:(id)a3 uniqueIdentifier:(id)a4 contentModule:(id)a5 presentationContext:(id)a6 contentRenderingMode:(unint64_t)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v23.receiver = self;
  v23.super_class = CCUIContentModuleContainerViewController;
  v16 = [(CCUIContentModuleContainerViewController *)&v23 initWithNibName:0 bundle:0];
  if (v16)
  {
    v17 = [v12 copy];
    moduleIdentifier = v16->_moduleIdentifier;
    v16->_moduleIdentifier = v17;

    v19 = [v13 copy];
    uniqueIdentifier = v16->_uniqueIdentifier;
    v16->_uniqueIdentifier = v19;

    objc_storeStrong(&v16->_contentModule, a5);
    v16->_allowsGlassGrouping = 1;
    [(CCUIContentModuleContainerViewController *)v16 setOverrideUserInterfaceStyle:1];
    [(CCUIContentModuleContainerViewController *)v16 _loadContentViewController:v15];
    if (objc_opt_respondsToSelector())
    {
      [(CCUIContentModuleContentViewController *)v16->_contentViewController setContentRenderingMode:a7];
    }

    if (objc_opt_respondsToSelector())
    {
      contentViewController = v16->_contentViewController;
      [(CCUIContentModuleContainerViewController *)v16 _continuousCornerRadiusForCompactState];
      [(CCUIContentModuleContentViewController *)contentViewController setCompactContinuousCornerRadius:?];
    }

    if (objc_opt_respondsToSelector() & 1) != 0 && [(CCUIContentModule *)v16->_contentModule expandsGridSizeClassesForAccessibility]&& (objc_opt_respondsToSelector())
    {
      [(CCUIContentModuleContentViewController *)v16->_contentViewController setSupportsAccessibilityContentSizeCategories:1];
    }

    [(CCUIContentModuleContainerViewController *)v16 addChildViewController:v16->_contentViewController];
    [(CCUIContentModuleContentViewController *)v16->_contentViewController didMoveToParentViewController:v16];
    if (objc_opt_respondsToSelector())
    {
      v16->_contentModuleProvidesOwnPlatter = [(CCUIContentModuleContentViewController *)v16->_contentViewController providesOwnPlatter];
    }

    [(CCUIContentModuleContainerViewController *)v16 _configureContentViewControllerEditingAnimated:0];
    [(CCUIContentModuleContainerViewController *)v16 _loadBackgroundViewController:v15];
  }

  return v16;
}

- (void)_loadContentViewController:(id)a3
{
  v9 = a3;
  if (objc_opt_respondsToSelector())
  {
    v5 = [(CCUIContentModule *)self->_contentModule contentViewController];
    contentViewController = self->_contentViewController;
    self->_contentViewController = v5;
  }

  if (!self->_contentViewController)
  {
    if (objc_opt_respondsToSelector())
    {
      v7 = [(CCUIContentModule *)self->_contentModule contentViewControllerForContext:v9];
      v8 = self->_contentViewController;
      self->_contentViewController = v7;
    }

    if (!self->_contentViewController)
    {
      [(CCUIContentModuleContainerViewController *)self _loadContentViewController:a2];
    }
  }
}

- (void)dismissViewControllerWithTransition:(int)a3 completion:(id)a4
{
  v6.receiver = self;
  v6.super_class = CCUIContentModuleContainerViewController;
  [(CCUIContentModuleContainerViewController *)&v6 dismissViewControllerWithTransition:*&a3 completion:a4];
  if (!a3)
  {
    [(CCUIContentModuleContentContainerView *)self->_contentContainerView setAlpha:1.0];
  }
}

- (void)_loadBackgroundViewController:(id)a3
{
  v8 = a3;
  if (objc_opt_respondsToSelector())
  {
    v4 = [(CCUIContentModule *)self->_contentModule backgroundViewController];
    backgroundViewController = self->_backgroundViewController;
    self->_backgroundViewController = v4;
  }

  if (!self->_backgroundViewController && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v6 = [(CCUIContentModule *)self->_contentModule backgroundViewControllerForContext:v8];
    v7 = self->_backgroundViewController;
    self->_backgroundViewController = v6;
  }
}

- (void)transitionToExpandedMode:(BOOL)a3
{
  if (a3)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __69__CCUIContentModuleContainerViewController_transitionToExpandedMode___block_invoke;
    v6[3] = &unk_278381DF0;
    v6[4] = self;
    [MEMORY[0x277D75D18] performWithoutAnimation:v6];
    [(CCUIContentModuleBackgroundView *)self->_backgroundView setAlpha:1.0];
    [(CCUIContentModuleBackgroundView *)self->_backgroundView setUserInteractionEnabled:1];
    [(CCUIContentModuleContainerViewController *)self _contentFrameForExpandedState];
    [(CCUIContentModuleContentContainerView *)self->_contentContainerView setFrame:?];
    contentContainerView = self->_contentContainerView;
    [(CCUIContentModuleContainerViewController *)self _continuousCornerRadiusForExpandedState];
    [(CCUIContentModuleContentContainerView *)contentContainerView setExpandedContinuousCornerRadius:?];
    [(CCUIContentModuleContentContainerView *)self->_contentContainerView transitionToExpandedMode:1];
  }

  else
  {
    [(CCUIContentModuleBackgroundView *)self->_backgroundView setAlpha:0.0];
    [(CCUIContentModuleBackgroundView *)self->_backgroundView setUserInteractionEnabled:0];
    v5 = self->_contentContainerView;
    [(CCUIContentModuleContainerViewController *)self _continuousCornerRadiusForCompactState];
    [(CCUIContentModuleContentContainerView *)v5 setCompactContinuousCornerRadius:?];
    [(CCUIContentModuleContentContainerView *)self->_contentContainerView transitionToExpandedMode:0];
    [(CCUIContentModuleBackgroundViewController *)self->_backgroundViewController beginAppearanceTransition:0 animated:1];
  }

  [(CCUIContentModuleContainerViewController *)self _configureTouchPassThrough];
}

void __69__CCUIContentModuleContainerViewController_transitionToExpandedMode___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _backgroundFrameForExpandedState];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = [*(a1 + 32) view];
  [v10 setFrame:{v3, v5, v7, v9}];

  [*(*(a1 + 32) + 1104) setFrame:{v3, v5, v7, v9}];
  v11 = *(*(a1 + 32) + 1080);
  if (v11)
  {
    [v11 beginAppearanceTransition:1 animated:0];
    [*(a1 + 32) addChildViewController:*(*(a1 + 32) + 1080)];
    [*(*(a1 + 32) + 1080) didMoveToParentViewController:?];
    v12 = [*(*(a1 + 32) + 1080) view];
    [*(a1 + 32) _presentationFrameForExpandedState];
    [v12 setFrame:?];
    [*(*(a1 + 32) + 1104) addSubview:v12];
  }
}

- (void)redirectTapsWithAction:(id)a3
{
  v5 = a3;
  if (self->_redirectedTapAction != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_redirectedTapAction, a3);
    [(CCUIContentModuleContainerViewController *)self _configureTouchBlockingIfNecessary];
    v5 = v6;
  }
}

- (CCUIContentModuleContainerViewController)init
{
  [(CCUIContentModuleContainerViewController *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (CCUIContentModuleContainerViewController)initWithCoder:(id)a3
{
  [(CCUIContentModuleContainerViewController *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (CCUIContentModuleContainerViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  [(CCUIContentModuleContainerViewController *)self doesNotRecognizeSelector:a2, a4];

  return 0;
}

- (void)setContentRenderingMode:(unint64_t)a3
{
  if (objc_opt_respondsToSelector())
  {
    contentViewController = self->_contentViewController;

    [(CCUIContentModuleContentViewController *)contentViewController setContentRenderingMode:a3];
  }
}

- (void)setContentMetrics:(id)a3
{
  v5 = a3;
  objc_storeStrong(&self->_contentMetrics, a3);
  if (objc_opt_respondsToSelector())
  {
    [(CCUIContentModuleContentViewController *)self->_contentViewController setContentMetrics:v5];
  }
}

- (void)setGridSizeClass:(int64_t)a3
{
  if (objc_opt_respondsToSelector())
  {
    [(CCUIContentModuleContentViewController *)self->_contentViewController setGridSizeClass:a3];

    [(CCUIContentModuleContainerViewController *)self _configureTouchPassThrough];
  }
}

- (void)setResizing:(BOOL)a3
{
  v3 = a3;
  if (self->_resizing != a3)
  {
    self->_resizing = a3;
    if (objc_opt_respondsToSelector())
    {
      [(CCUIContentModuleContentViewController *)self->_contentViewController setResizing:v3];
    }

    [(CCUIContentModuleContainerViewController *)self _ensureAndConfigureEditingBorderView];
  }

  contentContainerView = self->_contentContainerView;

  [(CCUIContentModuleContentContainerView *)contentContainerView setClipsToBounds:v3];
}

- (void)setWantsSubduedBackground:(BOOL)a3
{
  if (self->_wantsSubduedBackground != a3)
  {
    self->_wantsSubduedBackground = a3;
    [(CCUIContentModuleContentContainerView *)self->_contentContainerView setWantsSubduedBackground:?];
    if (self->_contentModuleProvidesOwnPlatter)
    {

      [(CCUIContentModuleContainerViewController *)self _applyTreatmentToContainerViewPlatters];
    }
  }
}

- (void)expandModule
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  v4 = [a1 moduleIdentifier];
  [v5 handleFailureInMethod:a2 object:a1 file:@"CCUIContentModuleContainerViewController.m" lineNumber:317 description:{@"View must be in a window to expand (identifier: %@)", v4}];
}

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3
{
  v5.receiver = self;
  v5.super_class = CCUIContentModuleContainerViewController;
  [(CCUIContentModuleContainerViewController *)&v5 preferredContentSizeDidChangeForChildContentContainer:a3];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __98__CCUIContentModuleContainerViewController_preferredContentSizeDidChangeForChildContentContainer___block_invoke;
  v4[3] = &unk_278381DF0;
  v4[4] = self;
  [MEMORY[0x277D75D18] animateWithDuration:v4 animations:0.3];
}

uint64_t __98__CCUIContentModuleContainerViewController_preferredContentSizeDidChangeForChildContentContainer___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[139];
  [v2 _contentFrameForExpandedState];
  [v3 setFrame:?];
  v4 = *(*(a1 + 32) + 1112);

  return [v4 layoutIfNeeded];
}

- (void)dismissExpandedModuleAnimated:(BOOL)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __74__CCUIContentModuleContainerViewController_dismissExpandedModuleAnimated___block_invoke;
  v3[3] = &unk_278382CE0;
  v3[4] = self;
  v4 = a3;
  [(CCUIContentModuleContainerViewController *)self dismissModulePresentedContentAnimated:a3 completion:v3];
}

- (void)dismissPresentedContentAnimated:(BOOL)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __76__CCUIContentModuleContainerViewController_dismissPresentedContentAnimated___block_invoke;
  v3[3] = &unk_278382CE0;
  v3[4] = self;
  v4 = a3;
  [(CCUIContentModuleContainerViewController *)self dismissModulePresentedContentAnimated:a3 completion:v3];
}

uint64_t __76__CCUIContentModuleContainerViewController_dismissPresentedContentAnimated___block_invoke(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
    return [*(result + 32) _closeExpandedModule:*(result + 40)];
  }

  return result;
}

- (void)dismissModulePresentedContentAnimated:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v6 = a4;
  if (objc_opt_respondsToSelector() & 1) != 0 && [(CCUIContentModuleContentViewController *)self->_contentViewController canDismissPresentedContent]&& (objc_opt_respondsToSelector())
  {
    contentViewController = self->_contentViewController;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __93__CCUIContentModuleContainerViewController_dismissModulePresentedContentAnimated_completion___block_invoke;
    v8[3] = &unk_2783821E0;
    v9 = v6;
    [(CCUIContentModuleContentViewController *)contentViewController dismissPresentedContentAnimated:v4 completion:v8];
  }

  else if (v6)
  {
    (*(v6 + 2))(v6, 0);
  }
}

uint64_t __93__CCUIContentModuleContainerViewController_dismissModulePresentedContentAnimated_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1);
  }

  return result;
}

- (void)_closeExpandedModule:(BOOL)a3
{
  v3 = a3;
  if ([(CCUIContentModuleContainerViewController *)self isExpanded])
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __65__CCUIContentModuleContainerViewController__closeExpandedModule___block_invoke;
    v5[3] = &unk_278382CE0;
    v5[4] = self;
    v6 = v3;
    [(CCUIContentModuleContainerViewController *)self dismissModulePresentedContentAnimated:v3 completion:v5];
  }
}

- (void)displayWillTurnOff
{
  if ([(CCUIContentModuleContainerViewController *)self _appearState]== 2 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    contentViewController = self->_contentViewController;

    [(CCUIContentModuleContentViewController *)contentViewController displayWillTurnOff];
  }
}

- (void)willBecomeActive
{
  v3 = objc_opt_respondsToSelector();
  contentViewController = self->_contentViewController;
  if (v3)
  {

    [(CCUIContentModuleContentViewController *)contentViewController willBecomeActive];
  }

  else if (objc_opt_respondsToSelector())
  {
    v5 = self->_contentViewController;

    [(CCUIContentModuleContentViewController *)v5 controlCenterWillPresent];
  }
}

- (void)willResignActive
{
  v3 = objc_opt_respondsToSelector();
  contentViewController = self->_contentViewController;
  if (v3)
  {

    [(CCUIContentModuleContentViewController *)contentViewController willResignActive];
  }

  else if (objc_opt_respondsToSelector())
  {
    v5 = self->_contentViewController;

    [(CCUIContentModuleContentViewController *)v5 controlCenterDidDismiss];
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = CCUIContentModuleContainerViewController;
  [(CCUIContentModuleContainerViewController *)&v4 viewWillAppear:a3];
  [(CCUIContentModuleContainerViewController *)self _configureForContentModuleGroupRenderingIfNecessary];
  [(CCUIContentModuleContainerViewController *)self _configureContentViewControllerEditingAnimated:0];
}

- (void)viewDidAppear:(BOOL)a3
{
  v3.receiver = self;
  v3.super_class = CCUIContentModuleContainerViewController;
  [(CCUIContentModuleContainerViewController *)&v3 viewDidAppear:a3];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v7.receiver = self;
  v7.super_class = CCUIContentModuleContainerViewController;
  [(CCUIContentModuleContainerViewController *)&v7 viewWillDisappear:?];
  if ([(CCUIContentModuleContainerViewController *)self isExpanded])
  {
    [(CCUIContentModuleContainerViewController *)self _closeExpandedModule:v3];
  }

  else
  {
    v5 = [(CCUIContentModuleContainerViewController *)self clickPresentationInteraction];
    [v5 cancelInteraction];

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained contentModuleContainerViewController:self didFinishInteractionWithModule:self->_contentModule];
  }
}

- (void)loadView
{
  v30 = objc_alloc_init(MEMORY[0x277CFC9D0]);
  [(CCUIContentModuleContainerViewController *)self setView:?];
  v3 = [MEMORY[0x277D75418] currentDevice];
  v4 = [v3 userInterfaceIdiom];

  if (v4 == 1)
  {
    v5 = [objc_alloc(MEMORY[0x277D75870]) initWithDelegate:self];
    [v30 addInteraction:v5];
  }

  v6 = objc_alloc(MEMORY[0x277CFC9D0]);
  [v30 bounds];
  v7 = [v6 initWithFrame:?];
  highlightWrapperView = self->_highlightWrapperView;
  self->_highlightWrapperView = v7;

  [(UIView *)self->_highlightWrapperView _setLayoutDebuggingIdentifier:@"HighlightWrapperView"];
  [(UIView *)self->_highlightWrapperView setAutoresizingMask:18];
  v9 = self->_highlightWrapperView;
  v10 = [MEMORY[0x277D75348] clearColor];
  [(UIView *)v9 setBackgroundColor:v10];

  [v30 addSubview:self->_highlightWrapperView];
  v11 = objc_alloc_init(CCUIContentModuleBackgroundView);
  backgroundView = self->_backgroundView;
  self->_backgroundView = v11;

  [(CCUIContentModuleBackgroundView *)self->_backgroundView setAutoresizesSubviews:0];
  v13 = self->_backgroundView;
  [v30 bounds];
  [(CCUIContentModuleBackgroundView *)v13 setFrame:?];
  [(UIView *)self->_highlightWrapperView addSubview:self->_backgroundView];
  v14 = objc_alloc_init(CCUIContentModuleContentContainerView);
  contentContainerView = self->_contentContainerView;
  self->_contentContainerView = v14;

  v16 = self->_contentContainerView;
  [(CCUIContentModuleContainerViewController *)self _continuousCornerRadiusForCompactState];
  [(CCUIContentModuleContentContainerView *)v16 setCompactContinuousCornerRadius:?];
  v17 = self->_contentContainerView;
  [(CCUIContentModuleContainerViewController *)self _continuousCornerRadiusForExpandedState];
  [(CCUIContentModuleContentContainerView *)v17 setExpandedContinuousCornerRadius:?];
  [(CCUIContentModuleContentContainerView *)self->_contentContainerView setModuleProvidesOwnPlatter:self->_contentModuleProvidesOwnPlatter];
  [(CCUIContentModuleContentContainerView *)self->_contentContainerView setWantsSubduedBackground:self->_wantsSubduedBackground];
  v18 = self->_contentContainerView;
  [v30 bounds];
  [(CCUIContentModuleContentContainerView *)v18 setFrame:?];
  [(UIView *)self->_highlightWrapperView addSubview:self->_contentContainerView];
  v19 = [(CCUIContentModuleContentViewController *)self->_contentViewController view];
  contentView = self->_contentView;
  self->_contentView = v19;

  [(UIView *)self->_contentView setAutoresizingMask:18];
  v21 = self->_contentView;
  [(CCUIContentModuleContentContainerView *)self->_contentContainerView bounds];
  [(UIView *)v21 setFrame:?];
  [(CCUIContentModuleContentContainerView *)self->_contentContainerView addSubview:self->_contentView];
  [(CCUIContentModuleContainerViewController *)self _findTopLevelGestureRecognizersForView:self->_contentView installOnView:self->_contentView];
  v22 = [objc_alloc(MEMORY[0x277D75E40]) initWithDelegate:self];
  clickPresentationInteraction = self->_clickPresentationInteraction;
  self->_clickPresentationInteraction = v22;

  [(_UIClickPresentationInteraction *)self->_clickPresentationInteraction setAllowSimultaneousRecognition:1];
  v24 = [(CCUIContentModuleContainerViewController *)self view];
  [v24 addInteraction:self->_clickPresentationInteraction];

  v25 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel__handleTapGestureRecognizer_];
  [(CCUIContentModuleBackgroundView *)self->_backgroundView addGestureRecognizer:v25];
  [(CCUIContentModuleContainerViewController *)self setTapRecognizer:v25];
  v26 = [(CCUIContentModuleContainerViewController *)self contentViewController];
  if (objc_opt_respondsToSelector())
  {
    v27 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel__handleExpandModuleForTapGestureRecognizer_];
    expandModuleOnTouchTapRecognizer = self->_expandModuleOnTouchTapRecognizer;
    self->_expandModuleOnTouchTapRecognizer = v27;

    v29 = [(CCUIContentModuleContainerViewController *)self view];
    [v29 addGestureRecognizer:self->_expandModuleOnTouchTapRecognizer];

    [(UITapGestureRecognizer *)self->_expandModuleOnTouchTapRecognizer setDelegate:self];
  }

  [(CCUIContentModuleContainerViewController *)self _configureTouchPassThrough];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = CCUIContentModuleContainerViewController;
  [(CCUIContentModuleContainerViewController *)&v3 viewDidLoad];
  [(CCUIContentModuleContainerViewController *)self _configureTouchBlockingIfNecessary];
  if (self->_contentModuleProvidesOwnPlatter)
  {
    [(CCUIContentModuleContainerViewController *)self _updateContainerViewPlatters];
  }
}

- (void)_findTopLevelGestureRecognizersForView:(id)a3 installOnView:(id)a4
{
  v5 = MEMORY[0x277CBEB18];
  v6 = a3;
  v9 = objc_alloc_init(v5);
  [(CCUIContentModuleContainerViewController *)self _addTopLevelGestureRecognizersFromViewAndSubviews:v6 toBlockingGestureRecognizers:v9];

  v7 = [v9 copy];
  topLevelBlockingGestureRecognizers = self->_topLevelBlockingGestureRecognizers;
  self->_topLevelBlockingGestureRecognizers = v7;
}

- (void)_addTopLevelGestureRecognizersFromViewAndSubviews:(id)a3 toBlockingGestureRecognizers:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (objc_opt_respondsToSelector())
  {
    v8 = [v6 topLevelBlockingGestureRecognizers];
    [v7 addObjectsFromArray:v8];
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v9 = [v6 subviews];
  v10 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v15;
    do
    {
      v13 = 0;
      do
      {
        if (*v15 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [(CCUIContentModuleContainerViewController *)self _addTopLevelGestureRecognizersFromViewAndSubviews:*(*(&v14 + 1) + 8 * v13++) toBlockingGestureRecognizers:v7];
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v11);
  }
}

- (BOOL)clickPresentationInteractionShouldBegin:(id)a3
{
  if ((objc_opt_respondsToSelector() & 1) == 0 || (v4 = [(CCUIContentModuleContentViewController *)self->_contentViewController shouldPerformClickInteraction]) != 0)
  {
    if (-[CCUIContentModuleContainerViewController _isEffectivelyExpanded](self, "_isEffectivelyExpanded") || (v5 = objc_loadWeakRetained(&self->_delegate), v6 = [v5 contentModuleContainerViewController:self canBeginInteractionWithModule:self->_contentModule], v5, !v6))
    {
      LOBYTE(v4) = 0;
    }

    else
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained contentModuleContainerViewController:self didBeginInteractionWithModule:self->_contentModule];

      LOBYTE(v4) = 1;
    }
  }

  return v4;
}

- (BOOL)clickPresentationInteractionShouldPresent:(id)a3
{
  v4 = a3;
  if ((objc_opt_respondsToSelector() & 1) != 0 && ![(CCUIContentModuleContentViewController *)self->_contentViewController shouldBeginTransitionToExpandedContentModule])
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained contentModuleContainerViewController:self didFinishInteractionWithModule:self->_contentModule];

    goto LABEL_10;
  }

  if (objc_opt_respondsToSelector() & 1) != 0 && [(CCUIContentModuleContentViewController *)self->_contentViewController shouldRequestAuthenticationForTransitionToExpandedContent]&& !self->_authenticatedForExpandedModulePresentation && (objc_opt_respondsToSelector())
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __86__CCUIContentModuleContainerViewController_clickPresentationInteractionShouldPresent___block_invoke;
    block[3] = &unk_278381DC8;
    block[4] = self;
    v12 = v4;
    dispatch_async(MEMORY[0x277D85CD0], block);

LABEL_10:
    objc_initWeak(&location, self);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __86__CCUIContentModuleContainerViewController_clickPresentationInteractionShouldPresent___block_invoke_3;
    v8[3] = &unk_278382038;
    objc_copyWeak(&v9, &location);
    dispatch_async(MEMORY[0x277D85CD0], v8);
    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
    v5 = 0;
    goto LABEL_11;
  }

  v5 = 1;
  self->_transitioning = 1;
  [MEMORY[0x277CD9FF0] setFrameStallSkipRequest:1];
LABEL_11:

  return v5;
}

void __86__CCUIContentModuleContainerViewController_clickPresentationInteractionShouldPresent___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(v2 + 1048);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __86__CCUIContentModuleContainerViewController_clickPresentationInteractionShouldPresent___block_invoke_2;
  v4[3] = &unk_278382D08;
  v4[4] = v2;
  v5 = v1;
  [v3 requestAuthenticationForTransitionToExpandedContentModuleWithCompletionHandler:v4];
}

void __86__CCUIContentModuleContainerViewController_clickPresentationInteractionShouldPresent___block_invoke_2(uint64_t a1, int a2)
{
  *(*(a1 + 32) + 1009) = a2;
  v3 = *(a1 + 40);
  if (a2)
  {

    [v3 present];
  }

  else
  {
    [v3 cancelInteraction];
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 1056));
    [WeakRetained contentModuleContainerViewController:*(a1 + 32) didFinishInteractionWithModule:*(*(a1 + 32) + 1072)];
  }
}

void __86__CCUIContentModuleContainerViewController_clickPresentationInteractionShouldPresent___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained clickPresentationInteraction];
  [v1 cancelInteraction];
}

- (void)clickPresentationInteractionEnded:(id)a3 wasCancelled:(BOOL)a4
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained contentModuleContainerViewController:self didFinishInteractionWithModule:self->_contentModule];

  presentationController = self->_presentationController;
  self->_presentationController = 0;

  self->_authenticatedForExpandedModulePresentation = 0;
}

- (id)clickPresentationInteraction:(id)a3 previewForHighlightingAtLocation:(CGPoint)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = [(CCUIContentModuleContainerViewController *)self view:a3];
  if ([v4 _isInAWindow])
  {
    v5 = [v4 window];
    v6 = *MEMORY[0x277CFC8F8];
    if (os_log_type_enabled(*MEMORY[0x277CFC8F8], OS_LOG_TYPE_DEFAULT))
    {
      v7 = v6;
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      v12 = 138543874;
      v13 = v9;
      v14 = 2114;
      v15 = v4;
      v16 = 2114;
      v17 = v5;
      _os_log_impl(&dword_21E9F5000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] Control Center is about to call [UITargetedPreview initWithView:], view = %{public}@, window = %{public}@", &v12, 0x20u);
    }

    v10 = [objc_alloc(MEMORY[0x277D75B90]) initWithView:v4];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)clickPresentationInteraction:(id)a3 presentationForPresentingViewController:(id)a4
{
  if ((objc_opt_respondsToSelector() & 1) != 0 && ![(CCUIContentModuleContentViewController *)self->_contentViewController shouldFinishTransitionToExpandedContentModule])
  {
    v7 = 0;
  }

  else
  {
    v5 = [[CCUIContentModuleContainerPresentationController alloc] initWithPresentedViewController:self presentingViewController:self];
    presentationController = self->_presentationController;
    self->_presentationController = v5;

    v7 = [objc_alloc(MEMORY[0x277D75E38]) initWithPresentedViewController:self presentationController:self->_presentationController];
    if (objc_opt_respondsToSelector())
    {
      v8 = [(CCUIContentModuleContentViewController *)self->_contentViewController viewForTouchContinuation];
    }

    else
    {
      v8 = 0;
    }

    [v7 setCustomViewForTouchContinuation:v8];
    if (UIAccessibilityIsReduceMotionEnabled())
    {
      v9 = objc_alloc_init(CCUIContentModuleContainerReducedMotionTransition);
      v10 = objc_alloc_init(CCUIContentModuleContainerReducedMotionTransition);
      v11 = [(CCUIContentModuleContainerViewController *)self view];
      v12 = [v11 window];

      [(CCUIContentModuleContainerReducedMotionTransition *)v9 setSnapshotHostWindow:v12];
      [(CCUIContentModuleContainerReducedMotionTransition *)v10 setSnapshotHostWindow:v12];
      v13 = [(CCUIContentModuleContainerViewController *)self bs_presentationContextDefiningViewController];
      v14 = [v13 view];
      v15 = [v14 window];
      [v15 interfaceOrientation];

      v24 = 0u;
      v25 = 0u;
      v23 = 0u;
      [*MEMORY[0x277D76620] activeInterfaceOrientation];
      CCUIAffineTransformBetweenInterfaceOrientations();
      v20 = 0u;
      v21 = 0u;
      v22 = 0u;
      [(CCUIContentModuleContainerReducedMotionTransition *)v9 setSnapshotCorrectiveTransform:&v20];
      v20 = v23;
      v21 = v24;
      v22 = v25;
      [(CCUIContentModuleContainerReducedMotionTransition *)v10 setSnapshotCorrectiveTransform:&v20];
    }

    else
    {
      v16 = [(CCUIContentModuleContainerViewController *)self contentViewController];
      v17 = objc_opt_respondsToSelector();

      if (v17)
      {
        v9 = objc_alloc_init(CCUIContentModuleContainerClientDrivenTransition);
        v18 = CCUIContentModuleContainerClientDrivenTransition;
      }

      else
      {
        v9 = objc_alloc_init(CCUIContentModuleContainerTransition);
        v18 = CCUIContentModuleContainerTransition;
      }

      v10 = objc_alloc_init(v18);
    }

    [(CCUIContentModuleContainerTransition *)v9 setViewController:self];
    [(CCUIContentModuleContainerTransition *)v9 setAppearanceTransition:1];
    [(CCUIContentModuleContainerViewController *)self _contentFrameForRestState];
    [(CCUIContentModuleContainerTransition *)v9 setContentRestOverrideFrame:?];
    [v7 setAppearanceTransition:v9];
    [(CCUIContentModuleContainerTransition *)v10 setViewController:self];
    [(CCUIContentModuleContainerTransition *)v10 setAppearanceTransition:0];
    [v7 setDisappearanceTransition:v10];
  }

  return v7;
}

- (void)willPresentViewController:(id)a3
{
  v4 = a3;
  v5 = [(CCUIContentModuleContainerViewController *)self delegate];
  [v5 contentModuleContainerViewController:self willPresentViewController:v4];
}

- (void)willDismissViewController:(id)a3
{
  v4 = a3;
  v5 = [(CCUIContentModuleContainerViewController *)self delegate];
  [v5 contentModuleContainerViewController:self willDismissViewController:v4];
}

- (id)contextMenuPreviewForControlHostViewController:(id)a3
{
  v3 = [(CCUIContentModuleContainerViewController *)self contentContainerView];
  v4 = [objc_alloc(MEMORY[0x277D75B90]) initWithView:v3];

  return v4;
}

- (id)pointerInteraction:(id)a3 regionForRequest:(id)a4 defaultRegion:(id)a5
{
  v6 = a5;
  v7 = [(CCUIContentModuleContainerViewController *)self contentViewController];
  v8 = [MEMORY[0x277D75418] currentDevice];
  if ([v8 userInterfaceIdiom] == 1)
  {
    if (objc_opt_respondsToSelector())
    {
      v9 = [v7 shouldPerformHoverInteraction];

      if ((v9 & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    else
    {
    }

    if ([(CCUIContentModuleContainerViewController *)self isExpanded])
    {
LABEL_8:
      v10 = 0;
      goto LABEL_11;
    }

    [(CCUIModuleContentMetrics *)self->_contentMetrics gridGeometryInfo];
    v12 = v11;
    [v6 rect];
    v21 = CGRectInset(v20, -v12, -v12);
    x = v21.origin.x;
    y = v21.origin.y;
    width = v21.size.width;
    height = v21.size.height;
    v17 = MEMORY[0x277D75880];
    v8 = [(CCUIContentModuleContainerViewController *)self moduleIdentifier];
    v10 = [v17 regionWithRect:v8 identifier:{x, y, width, height}];
  }

  else
  {
    v10 = 0;
  }

LABEL_11:

  return v10;
}

- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4
{
  v36 = *MEMORY[0x277D85DE8];
  v5 = [(CCUIContentModuleContainerViewController *)self view:a3];
  v6 = [v5 _isInAWindow];

  if (v6)
  {
    v7 = [(CCUIContentModuleContainerViewController *)self view];
    v8 = [v7 window];
    v9 = *MEMORY[0x277CFC8F8];
    if (os_log_type_enabled(*MEMORY[0x277CFC8F8], OS_LOG_TYPE_DEFAULT))
    {
      v10 = v9;
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      v30 = 138543874;
      v31 = v12;
      v32 = 2114;
      v33 = v7;
      v34 = 2114;
      v35 = v8;
      _os_log_impl(&dword_21E9F5000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] Control Center is about to call [UITargetedPreview initWithView:], view = %{public}@, window = %{public}@", &v30, 0x20u);
    }

    v13 = [objc_alloc(MEMORY[0x277D75B90]) initWithView:v7];
    v14 = [MEMORY[0x277D75878] effectWithPreview:v13];
    v15 = MEMORY[0x277D75888];
    v16 = [(CCUIContentModuleContainerViewController *)self view];
    [v16 frame];
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;
    [(CCUIContentModuleContainerViewController *)self _continuousCornerRadiusForCompactState];
    v26 = [v15 shapeWithRoundedRect:v18 cornerRadius:{v20, v22, v24, v25}];

    v27 = [MEMORY[0x277D75890] styleWithEffect:v14 shape:v26];
  }

  else
  {
    v28 = *MEMORY[0x277CFC8F8];
    if (os_log_type_enabled(*MEMORY[0x277CFC8F8], OS_LOG_TYPE_ERROR))
    {
      [CCUIContentModuleContainerViewController pointerInteraction:v28 styleForRegion:?];
    }

    v27 = 0;
  }

  return v27;
}

- (void)pointerInteraction:(id)a3 willEnterRegion:(id)a4 animator:(id)a5
{
  v14 = a3;
  v8 = a4;
  v9 = a5;
  if (!self->_activePointerRegions)
  {
    v10 = objc_alloc_init(MEMORY[0x277CCA940]);
    activePointerRegions = self->_activePointerRegions;
    self->_activePointerRegions = v10;
  }

  v12 = [(CCUIContentModuleContainerViewController *)self isPointerActive];
  [(NSCountedSet *)self->_activePointerRegions addObject:v8];
  if (!v12)
  {
    v13 = [(CCUIContentModuleContainerViewController *)self delegate];
    [v13 pointerWillEnterContentModuleContainerViewController:self];
  }
}

- (void)pointerInteraction:(id)a3 willExitRegion:(id)a4 animator:(id)a5
{
  v7 = a4;
  v8 = v7;
  if (a5)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __87__CCUIContentModuleContainerViewController_pointerInteraction_willExitRegion_animator___block_invoke;
    v10[3] = &unk_278382D08;
    v10[4] = self;
    v11 = v7;
    [a5 addCompletion:v10];
  }

  else
  {
    [(NSCountedSet *)self->_activePointerRegions removeObject:v7];
    if (![(CCUIContentModuleContainerViewController *)self isPointerActive])
    {
      v9 = [(CCUIContentModuleContainerViewController *)self delegate];
      [v9 pointerDidExitContentModuleContainerViewController:self];
    }
  }
}

void __87__CCUIContentModuleContainerViewController_pointerInteraction_willExitRegion_animator___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    [*(*(a1 + 32) + 1216) removeObject:*(a1 + 40)];
    if (([*(a1 + 32) isPointerActive] & 1) == 0)
    {
      v3 = [*(a1 + 32) delegate];
      [v3 pointerDidExitContentModuleContainerViewController:*(a1 + 32)];
    }
  }
}

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  v5 = a4;
  v6 = [(CCUIContentModuleContainerViewController *)self contentViewController];
  if ([(CCUIContentModuleContainerViewController *)self _isEffectivelyExpanded]|| (objc_opt_respondsToSelector() & 1) == 0)
  {
    v7 = 0;
  }

  else
  {
    v7 = [v6 shouldExpandModuleOnTouch:v5];
  }

  return v7;
}

- (CGRect)visibleBounds
{
  [(CCUIContentModuleContainerViewController *)self iconImageInfo];

  BSRectWithSize();
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)setIconImageInfo:(SBIconImageInfo *)a3
{
  v7 = v6;
  v8 = v5;
  v9 = v4;
  v10 = v3;
  p_iconImageInfo = &self->_iconImageInfo;
  if ((SBIconImageInfoEqualToIconImageInfo() & 1) == 0)
  {
    p_iconImageInfo->size.width = v10;
    p_iconImageInfo->size.height = v9;
    p_iconImageInfo->scale = v8;
    p_iconImageInfo->continuousCornerRadius = v7;

    [(CCUIContentModuleContainerViewController *)self _updateDisplayedCompactContinuousCornerRadius];
  }
}

- (void)setEditing:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v7.receiver = self;
  v7.super_class = CCUIContentModuleContainerViewController;
  [CCUIContentModuleContainerViewController setEditing:sel_setEditing_animated_ animated:?];
  if (self->_editing != v5)
  {
    self->_editing = v5;
    [(CCUIContentModuleContainerViewController *)self _configureTouchBlockingIfNecessary];
    [(CCUIContentModuleContainerViewController *)self _configureEditingAnimated:v4];
  }
}

- (void)setJittering:(BOOL)a3
{
  if (self->_jittering != a3)
  {
    self->_jittering = a3;
    [(CCUIContentModuleContainerViewController *)self _configureJittering];
  }
}

- (void)setUserVisibilityStatus:(unint64_t)a3
{
  if (self->_userVisibilityStatus != a3)
  {
    self->_userVisibilityStatus = a3;
    if (objc_opt_respondsToSelector())
    {
      contentViewController = self->_contentViewController;
      if (a3 == 2)
      {
        v6 = 1;
      }

      else
      {
        v6 = 2 * (a3 == 3);
      }

      [(CCUIContentModuleContentViewController *)contentViewController setUserVisibilityStatus:v6];
    }
  }
}

- (void)setAllowsGlassGrouping:(BOOL)a3
{
  if (self->_allowsGlassGrouping != a3)
  {
    self->_allowsGlassGrouping = a3;
    [(CCUIContentModuleContentContainerView *)self->_contentContainerView setAllowsGlassGrouping:?];
    if (self->_contentModuleProvidesOwnPlatter)
    {

      [(CCUIContentModuleContainerViewController *)self _applyTreatmentToContainerViewPlatters];
    }
  }
}

void __59__CCUIContentModuleContainerViewController_editingSettings__block_invoke()
{
  v2 = +[CCUIControlCenterDomain rootSettings];
  v0 = [v2 editingSettings];
  v1 = editingSettings___editingSettings;
  editingSettings___editingSettings = v0;
}

- (BOOL)_isForceTouchAvailable
{
  v2 = [(CCUIContentModuleContainerViewController *)self view];
  v3 = [v2 window];
  v4 = [v3 windowScene];
  v5 = [v4 screen];

  v6 = [v5 traitCollection];
  LOBYTE(v3) = [v6 forceTouchCapability] == 2;

  return v3;
}

- (void)_handleTapGestureRecognizer:(id)a3
{
  v7 = a3;
  if (-[CCUIContentModuleContainerViewController isExpanded](self, "isExpanded") && (!v7 || [v7 state] == 3))
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      v6 = objc_loadWeakRetained(&self->_delegate);
      [v6 contentModuleContainerViewControllerDismissPresentedContent:self];
    }
  }
}

- (void)_handleExpandModuleForTapGestureRecognizer:(id)a3
{
  v4 = a3;
  if (!-[CCUIContentModuleContainerViewController _isEffectivelyExpanded](self, "_isEffectivelyExpanded") && [v4 state] == 3)
  {
    [(CCUIContentModuleContainerViewController *)self expandModule];
  }
}

- (void)_configureTouchBlockingIfNecessary
{
  if ([(CCUIContentModuleContainerViewController *)self isViewLoaded])
  {
    if (self->_redirectedTapAction || [(CCUIContentModuleContainerViewController *)self isEditing])
    {
      if (!self->_touchBlockingView)
      {
        v3 = objc_alloc(MEMORY[0x277CFC930]);
        v4 = [(CCUIContentModuleContainerViewController *)self view];
        [v4 bounds];
        v5 = [v3 initWithFrame:?];
        touchBlockingView = self->_touchBlockingView;
        self->_touchBlockingView = v5;

        [(UIControl *)self->_touchBlockingView addTarget:self action:sel__handleBlockedTap_ forControlEvents:64];
        v7 = self->_touchBlockingView;
        [(CCUIContentModuleContainerViewController *)self _continuousCornerRadiusForCompactState];
        [(UIControl *)v7 _setContinuousCornerRadius:?];
        v8 = [(UIControl *)self->_touchBlockingView layer];
        [v8 setHitTestsAsOpaque:1];

        [(UIView *)self->_highlightWrapperView addSubview:self->_touchBlockingView];
      }

      v9 = 0;
    }

    else
    {
      v11 = self->_touchBlockingView;
      if (v11)
      {
        [(UIControl *)v11 removeFromSuperview];
        v12 = self->_touchBlockingView;
        self->_touchBlockingView = 0;
      }

      v9 = 1;
    }

    expandModuleOnTouchTapRecognizer = self->_expandModuleOnTouchTapRecognizer;

    [(UITapGestureRecognizer *)expandModuleOnTouchTapRecognizer setEnabled:v9];
  }
}

- (void)_ensureAndConfigureEditingBorderView
{
  if (self->_editingBorderContainerView)
  {
    v3 = [(CCUIContentModuleContainerViewController *)self view];
    v4 = [objc_opt_class() editingSettings];
    [v4 pulsingBorderWidth];
    v6 = v5;
    [(CCUIContentModuleContainerViewController *)self _continuousCornerRadiusForCompactState];
    v8 = v7;
    editingBorderView = self->_editingBorderView;
    if (!editingBorderView)
    {
      v10 = objc_alloc(MEMORY[0x277D75D18]);
      [(UIView *)self->_editingBorderContainerView bounds];
      v11 = [v10 initWithFrame:?];
      v12 = self->_editingBorderView;
      self->_editingBorderView = v11;

      v13 = MEMORY[0x277D75D18];
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __80__CCUIContentModuleContainerViewController__ensureAndConfigureEditingBorderView__block_invoke;
      v21[3] = &unk_278382D30;
      v23 = v8;
      v24 = v6;
      v21[4] = self;
      v22 = v4;
      [v13 performWithoutAnimation:v21];
      [(CCUIContentModuleContainerViewController *)self _configureJittering];

      editingBorderView = self->_editingBorderView;
    }

    v14 = [(UIView *)editingBorderView layer];
    v15 = v14;
    v16 = MEMORY[0x277D75D18];
    if (self->_resizing)
    {
      v17 = v20;
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __80__CCUIContentModuleContainerViewController__ensureAndConfigureEditingBorderView__block_invoke_2;
      v20[3] = &unk_278381F00;
      v20[4] = v14;
      v20[5] = self;
      v20[6] = v3;
      v20[7] = v6;
      v20[8] = v8;
    }

    else
    {
      v17 = v19;
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __80__CCUIContentModuleContainerViewController__ensureAndConfigureEditingBorderView__block_invoke_3;
      v19[3] = &unk_278382D58;
      v19[4] = v14;
      v19[5] = self;
      v19[7] = v6;
      v19[6] = v3;
    }

    v18 = v3;
    [v16 performWithoutAnimation:v17];
  }
}

void __80__CCUIContentModuleContainerViewController__ensureAndConfigureEditingBorderView__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 1144) _setContinuousCornerRadius:*(a1 + 48) + *(a1 + 56)];
  v2 = *(*(a1 + 32) + 1144);
  [*(a1 + 40) pulsingBorderMinAlpha];
  [v2 setAlpha:?];
  v4 = [*(*(a1 + 32) + 1144) layer];
  v3 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA5E8]];
  [v4 setCompositingFilter:v3];
}

uint64_t __80__CCUIContentModuleContainerViewController__ensureAndConfigureEditingBorderView__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setBorderWidth:0.0];
  [*(a1 + 32) setBorderColor:0];
  v2 = *(a1 + 40);
  if (!*(v2 + 1152))
  {
    [*(a1 + 48) bounds];
    v5 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{*(a1 + 56), *(a1 + 56), v3, v4}];
    v6 = *(a1 + 40);
    v7 = *(v6 + 1152);
    *(v6 + 1152) = v5;

    v8 = *(*(a1 + 40) + 1152);
    v9 = [MEMORY[0x277D75348] blackColor];
    [v8 setBackgroundColor:v9];

    [*(*(a1 + 40) + 1152) _setContinuousCornerRadius:*(a1 + 64)];
    v2 = *(a1 + 40);
  }

  v10 = *(v2 + 1144);
  v11 = [MEMORY[0x277D75348] whiteColor];
  [v10 setBackgroundColor:v11];

  v12 = *(a1 + 32);
  v13 = [*(*(a1 + 40) + 1152) layer];
  [v12 setMask:v13];

  v14 = *(a1 + 32);

  return [v14 setInvertsMask:1];
}

void __80__CCUIContentModuleContainerViewController__ensureAndConfigureEditingBorderView__block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) setMask:0];
  [*(a1 + 32) setInvertsMask:0];
  v2 = *(a1 + 40);
  v3 = *(v2 + 1152);
  *(v2 + 1152) = 0;

  [*(*(a1 + 40) + 1144) setBackgroundColor:0];
  v4 = *(a1 + 32);
  v5 = *(a1 + 56);
  v6 = [*(a1 + 48) traitCollection];
  [v6 displayScale];
  [v4 setBorderWidth:v5 + 1.0 / v7];

  v8 = *(a1 + 32);
  v10 = [MEMORY[0x277D75348] whiteColor];
  v9 = v10;
  [v8 setBorderColor:{objc_msgSend(v10, "CGColor")}];
}

- (void)_configureEditingAnimated:(BOOL)a3
{
  v3 = a3;
  editing = self->_editing;
  v6 = [objc_opt_class() editingSettings];
  [v6 pulsingBorderFadeDuration];
  v8 = v7;
  if (editing)
  {
    if (!self->_editingBorderContainerView)
    {
      v9 = [(CCUIContentModuleContainerViewController *)self view];
      [v9 bounds];
      [v6 pulsingBorderWidth];
      UIRectInset();
      v14 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v10, v11, v12, v13}];
      editingBorderContainerView = self->_editingBorderContainerView;
      self->_editingBorderContainerView = v14;

      v16 = [(UIView *)self->_editingBorderContainerView layer];
      [v16 setAllowsGroupBlending:0];

      [(CCUIContentModuleContainerViewController *)self _ensureAndConfigureEditingBorderView];
      v17 = MEMORY[0x277D75D18];
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __70__CCUIContentModuleContainerViewController__configureEditingAnimated___block_invoke;
      v28[3] = &unk_278382258;
      v28[4] = self;
      v29 = v9;
      v30 = v3;
      v18 = v9;
      [v17 performWithoutAnimation:v28];
    }

    if (v3)
    {
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __70__CCUIContentModuleContainerViewController__configureEditingAnimated___block_invoke_2;
      v27[3] = &unk_278381DF0;
      v27[4] = self;
      [MEMORY[0x277D75D18] animateWithDuration:v27 animations:v8];
    }

    else
    {
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __70__CCUIContentModuleContainerViewController__configureEditingAnimated___block_invoke_3;
      v26[3] = &unk_278381DF0;
      v26[4] = self;
      [MEMORY[0x277D75D18] performWithoutAnimation:v26];
    }
  }

  else if (v3)
  {
    v19 = self->_editingBorderViewRemovalAnimationGeneration + 1;
    self->_editingBorderViewRemovalAnimationGeneration = v19;
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __70__CCUIContentModuleContainerViewController__configureEditingAnimated___block_invoke_4;
    v25[3] = &unk_278381DF0;
    v25[4] = self;
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __70__CCUIContentModuleContainerViewController__configureEditingAnimated___block_invoke_5;
    v24[3] = &unk_278382D80;
    v24[4] = self;
    v24[5] = v19;
    [MEMORY[0x277D75D18] animateWithDuration:v25 animations:v24 completion:v7];
  }

  else
  {
    [(CCUIContentModuleContainerViewController *)self _removeEditingBorderView];
  }

  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __70__CCUIContentModuleContainerViewController__configureEditingAnimated___block_invoke_6;
  v22[3] = &unk_278381EB8;
  v22[4] = self;
  v23 = v3;
  v20 = _Block_copy(v22);
  v21 = v20;
  if (v3)
  {
    [MEMORY[0x277D75D18] animateWithDuration:v20 animations:v8];
  }

  else
  {
    (*(v20 + 2))(v20);
  }
}

uint64_t __70__CCUIContentModuleContainerViewController__configureEditingAnimated___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 1136) addSubview:*(*(a1 + 32) + 1144)];
  [*(a1 + 40) addSubview:*(*(a1 + 32) + 1136)];
  result = [*(a1 + 40) sendSubviewToBack:*(*(a1 + 32) + 1136)];
  if (*(a1 + 48) == 1)
  {
    v3 = *(*(a1 + 32) + 1136);

    return [v3 setAlpha:0.0];
  }

  return result;
}

uint64_t __70__CCUIContentModuleContainerViewController__configureEditingAnimated___block_invoke_5(uint64_t a1)
{
  result = *(a1 + 32);
  if (*(result + 1160) == *(a1 + 40) && (*(result + 1001) & 1) == 0)
  {
    if (*(result + 1144))
    {
      return [result _removeEditingBorderView];
    }
  }

  return result;
}

- (void)_configureJittering
{
  editingBorderView = self->_editingBorderView;
  if (editingBorderView)
  {
    if (self->_jittering)
    {
      v17 = [objc_opt_class() editingSettings];
      [objc_opt_class() editingBorderPulseAnimationStartTime];
      v5 = v4;
      v6 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"opacity"];
      [v6 setBeginTime:v5];
      [v17 pulsingBorderPulseDuration];
      [v6 setDuration:?];
      [v6 setAutoreverses:1];
      LODWORD(v7) = 2139095039;
      [v6 setRepeatCount:v7];
      v8 = [MEMORY[0x277CCABB0] numberWithFloat:0.0];
      [v6 setFromValue:v8];

      v9 = MEMORY[0x277CCABB0];
      [v17 pulsingBorderMaxAlpha];
      v11 = v10;
      [v17 pulsingBorderMinAlpha];
      v13 = v11 - v12;
      *&v13 = v13;
      v14 = [v9 numberWithFloat:v13];
      [v6 setToValue:v14];

      [v6 setAdditive:1];
      v15 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7B8]];
      [v6 setTimingFunction:v15];

      v16 = [(UIView *)self->_editingBorderView layer];
      [v16 addAnimation:v6 forKey:@"CCUIContentModuleContainerEditingBorderPulseAnimationKey"];
    }

    else
    {
      v17 = [(UIView *)editingBorderView layer];
      [v17 removeAnimationForKey:@"CCUIContentModuleContainerEditingBorderPulseAnimationKey"];
    }
  }
}

- (void)_configureContentViewControllerEditingAnimated:(BOOL)a3
{
  v3 = a3;
  editing = self->_editing;
  v5 = self->_contentViewController;
  if (objc_opt_respondsToSelector())
  {
    [(CCUIContentModuleContentViewController *)v5 setEditing:editing animated:v3];
  }

  else if (objc_opt_respondsToSelector())
  {
    [(CCUIContentModuleContentViewController *)v5 setEditing:editing];
  }
}

- (void)_removeEditingBorderView
{
  [(UIView *)self->_editingBorderContainerView removeFromSuperview];
  editingBorderContainerView = self->_editingBorderContainerView;
  self->_editingBorderContainerView = 0;

  editingBorderView = self->_editingBorderView;
  self->_editingBorderView = 0;
}

- (void)_setDidExpandModulePreference
{
  v2 = [(CCUIContentModuleContainerViewController *)self _isForceTouchAvailable];
  v3 = +[CCUIControlCenterDefaults standardDefaults];
  v4 = v3;
  if (v2)
  {
    [v3 setHasForceTouchedToExpandModule:1];
  }

  else
  {
    [v3 setHasLongPressedToExpandModule:1];
  }
}

- (id)_contentSourceView
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = [WeakRetained compactModeSourceViewForContentModuleContainerViewController:self];

  return v4;
}

- (id)rootPassThroughView
{
  v2 = [(CCUIContentModuleContainerViewController *)self view];
  v3 = objc_opt_class();
  v4 = v2;
  if (v3)
  {
    if (objc_opt_isKindOfClass())
    {
      v3 = v4;
    }

    else
    {
      v3 = 0;
    }
  }

  v5 = v3;

  return v3;
}

- (CGRect)_contentFrameForRestState
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained compactModeFrameForContentModuleContainerViewController:self];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = v5;
  v13 = v7;
  v14 = v9;
  v15 = v11;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (CGRect)_contentBoundsForExpandedState
{
  if ((objc_opt_respondsToSelector() & 1) != 0 && [(CCUIContentModuleContentViewController *)self->_contentViewController prefersExpandedContentSizeMatchesGridSize])
  {
    v3 = [(CCUIContentModuleContainerViewController *)self delegate];
    [v3 controlCenterGridSizeForContentModuleContainerViewController:self];
    v5 = v4;
    v7 = v6;

    v8 = 0.0;
    v9 = 0.0;
  }

  else
  {
    CCUIDefaultExpandedContentModuleWidth();
    v5 = v10;
    if (objc_opt_respondsToSelector())
    {
      [(CCUIContentModuleContentViewController *)self->_contentViewController preferredExpandedContentWidth];
      v5 = v11;
      v12 = [(CCUIContentModuleContainerViewController *)self view];
      [v12 bounds];
      Width = CGRectGetWidth(v19);

      if (v5 >= Width)
      {
        v5 = Width;
      }
    }

    [(CCUIContentModuleContentViewController *)self->_contentViewController preferredExpandedContentHeight];
    v7 = v14;
    v15 = [(CCUIContentModuleContainerViewController *)self view];
    [v15 bounds];
    Height = CGRectGetHeight(v20);

    if (v7 >= Height)
    {
      v7 = Height;
    }

    v9 = *MEMORY[0x277CBF348];
    v8 = *(MEMORY[0x277CBF348] + 8);
  }

  v17 = v5;
  v18 = v7;
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v8;
  result.origin.x = v9;
  return result;
}

- (void)_updateDisplayedCompactContinuousCornerRadius
{
  if (!self->_suppressesCompactContinuousCornerRadiusUpdates)
  {
    [(CCUIContentModuleContainerViewController *)self _continuousCornerRadiusForCompactState];
    v5 = v4;
    if (objc_opt_respondsToSelector())
    {
      [(CCUIContentModuleContentViewController *)self->_contentViewController setCompactContinuousCornerRadius:v5];
    }

    [(CCUIContentModuleContentContainerView *)self->_contentContainerView setCompactContinuousCornerRadius:v5];
    [(CCUIContentModuleContentContainerView *)self->_contentContainerView updateContinuousCornerRadius];
    [(UIControl *)self->_touchBlockingView _setContinuousCornerRadius:v5];
    v6 = [objc_opt_class() editingSettings];
    [v6 pulsingBorderWidth];
    v8 = v7;

    [(UIView *)self->_editingBorderView _setContinuousCornerRadius:v5 + v8];
    editingBorderMaskView = self->_editingBorderMaskView;

    [(UIView *)editingBorderMaskView _setContinuousCornerRadius:v5];
  }
}

- (void)setSuppressesCompactContinuousCornerRadiusUpdates:(BOOL)a3
{
  if (self->_suppressesCompactContinuousCornerRadiusUpdates != a3)
  {
    self->_suppressesCompactContinuousCornerRadiusUpdates = a3;
    if (!a3)
    {
      [(CCUIContentModuleContainerViewController *)self _updateDisplayedCompactContinuousCornerRadius];
    }
  }
}

- (void)setSuppressesContentTransitions:(BOOL)a3
{
  if (self->_suppressesContentTransitions != a3)
  {
    v3 = a3;
    self->_suppressesContentTransitions = a3;
    if (objc_opt_respondsToSelector())
    {
      contentViewController = self->_contentViewController;

      [(CCUIContentModuleContentViewController *)contentViewController setSuppressesContentTransitions:v3];
    }
  }
}

- (BOOL)_isEffectivelyExpanded
{
  if ([(CCUIContentModuleContainerViewController *)self isExpanded])
  {
    return 1;
  }

  return [(CCUIContentModuleContainerViewController *)self _isContentViewControllerImplicitlyExpanded];
}

- (void)_configureTouchPassThrough
{
  v3 = [(CCUIContentModuleContainerViewController *)self _isEffectivelyExpanded];
  v4 = [(CCUIContentModuleContainerViewController *)self rootPassThroughView];
  [v4 setTouchPassThroughDisabled:!v3];
}

- (BOOL)_isContentViewControllerImplicitlyExpanded
{
  if ((objc_opt_respondsToSelector() & 1) == 0 || (objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  v3 = [(CCUIContentModuleContentViewController *)self->_contentViewController gridSizeClass];
  return ([(CCUIContentModuleContentViewController *)self->_contentViewController implicitlyExpandedGridSizeClasses]& (1 << v3)) != 0;
}

- (double)_continuousCornerRadiusForCompactState
{
  v3 = [(NSString *)self->_moduleIdentifier isEqualToString:@"com.apple.mediaremote.controlcenter.nowplaying"];
  if ((objc_opt_respondsToSelector() & 1) != 0 && [(CCUIContentModuleContentViewController *)self->_contentViewController gridSizeClass]== 3 && v3)
  {
    [(CCUIModuleContentMetrics *)self->_contentMetrics gridGeometryInfo];

    JUMPOUT(0x223D675B0);
  }

  [(CCUIContentModuleContainerViewController *)self continuousCornerRadius];
  return result;
}

- (double)_continuousCornerRadiusForExpandedState
{
  if (objc_opt_respondsToSelector())
  {
    contentViewController = self->_contentViewController;

    [(CCUIContentModuleContentViewController *)contentViewController preferredExpandedContinuousCornerRadius];
  }

  else
  {

    MEMORY[0x28214F460]();
  }

  return result;
}

- (CGRect)_contentFrameForExpandedState
{
  if ((objc_opt_respondsToSelector() & 1) != 0 && [(CCUIContentModuleContentViewController *)self->_contentViewController shouldUseCompactContentFrameForExpandedContent])
  {
    [(CCUIContentModuleContainerViewController *)self _contentFrameForRestState];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
  }

  else
  {
    [(CCUIContentModuleContainerViewController *)self _contentBoundsForExpandedState];
    [(CCUIContentModuleContainerViewController *)self _presentationFrameForExpandedState];
    UIRectCenteredIntegralRect();
    v4 = v11;
    v6 = v12;
    v8 = v13;
    v10 = v14;
    v15 = [MEMORY[0x277D75418] currentDevice];
    v16 = [v15 userInterfaceIdiom];

    if (v16 == 1)
    {
      v22.origin.x = v4;
      v22.origin.y = v6;
      v22.size.width = v8;
      v22.size.height = v10;
      MinY = CGRectGetMinY(v22);
      if (MinY >= 8.0)
      {
        v6 = MinY;
      }

      else
      {
        v6 = 8.0;
      }
    }
  }

  v18 = v4;
  v19 = v6;
  v20 = v8;
  v21 = v10;
  result.size.height = v21;
  result.size.width = v20;
  result.origin.y = v19;
  result.origin.x = v18;
  return result;
}

- (CGRect)_backgroundFrameForExpandedState
{
  v2 = [(CCUIContentModuleContainerViewController *)self bs_presentationContextDefiningViewController];
  v3 = [v2 view];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = v5;
  v13 = v7;
  v14 = v9;
  v15 = v11;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (CGRect)_presentationFrameForExpandedState
{
  v3 = [MEMORY[0x277D75418] currentDevice];
  v4 = [v3 userInterfaceIdiom];

  if (v4)
  {
    v5 = [(CCUIContentModuleContainerViewController *)self delegate];
    [v5 expandedModeFrameForContentModuleContainerViewController:self];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
  }

  else
  {
    [(CCUIContentModuleContainerViewController *)self _backgroundFrameForExpandedState];
    v7 = v14;
    v9 = v15;
    v11 = v16;
    v13 = v17;
  }

  v18 = v7;
  v19 = v9;
  v20 = v11;
  v21 = v13;
  result.size.height = v21;
  result.size.width = v20;
  result.origin.y = v19;
  result.origin.x = v18;
  return result;
}

- (CGRect)_contentBoundsForTransitionProgress:(double)a3
{
  v4 = [(CCUIContentModuleContainerViewController *)self view];
  v5 = [v4 traitCollection];
  [v5 displayScale];

  [(CCUIContentModuleContainerViewController *)self _contentFrameForRestState];
  UIRoundToScale();
  v7 = v6;
  UIRoundToScale();
  v9 = v8;
  v10 = *MEMORY[0x277CBF348];
  v11 = *(MEMORY[0x277CBF348] + 8);
  v12 = v7;
  result.size.height = v9;
  result.size.width = v12;
  result.origin.y = v11;
  result.origin.x = v10;
  return result;
}

- (void)_configureMaskViewIfNecessary
{
  if (!self->_maskView)
  {
    v3 = objc_alloc_init(MEMORY[0x277D75D18]);
    maskView = self->_maskView;
    self->_maskView = v3;

    [(UIView *)self->_maskView setUserInteractionEnabled:0];
    v5 = [(CCUIContentModuleContainerViewController *)self view];
    [v5 addSubview:self->_maskView];

    v6 = [(UIView *)self->_maskView layer];
    [v6 setCompositingFilter:*MEMORY[0x277CDA310]];
  }
}

- (void)_configureForContentModuleGroupRenderingIfNecessary
{
  if ((objc_opt_respondsToSelector() & 1) != 0 && [(CCUIContentModuleContentViewController *)self->_contentViewController isGroupRenderingRequired])
  {

    [(CCUIContentModuleContainerViewController *)self _configureMaskViewIfNecessary];
  }
}

- (void)_didEndTransitionWithContentModuleContainerTransition:(id)a3 completed:(BOOL)a4
{
  self->_transitioning = 0;
  if (a4)
  {
    contentContainerView = self->_contentContainerView;
    v5 = [a3 isAppearanceTransition];

    [(CCUIContentModuleContentContainerView *)contentContainerView didEndTransitionToExpandedMode:v5];
  }
}

- (void)_updateContainerViewPlatters
{
  if (objc_opt_respondsToSelector())
  {
    v7 = self->_containerViewPlatters;
    v3 = [(CCUIContentModuleContentViewController *)self->_contentViewController containerViewsForPlatterTreatment];
    v4 = [v3 copy];
    containerViewPlatters = self->_containerViewPlatters;
    self->_containerViewPlatters = v4;

    if ((BSEqualArrays() & 1) == 0)
    {
      [(CCUIContentModuleContainerViewController *)self _applyTreatmentToContainerViewPlatters];
      v6 = [(CCUIContentModuleContainerViewController *)self delegate];
      [v6 contentModuleContainerViewController:self didUpdateContainerViewPlatters:v7];
    }
  }
}

- (CCUIContentModuleContainerViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CGSize)maxResizeDimensions
{
  width = self->_maxResizeDimensions.width;
  height = self->_maxResizeDimensions.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)minResizeDimensions
{
  width = self->_minResizeDimensions.width;
  height = self->_minResizeDimensions.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)_loadContentViewController:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"CCUIContentModuleContainerViewController.m" lineNumber:180 description:{@"No valid CCUIContentModuleContentViewController was found: %@", *(a1 + 1032)}];
}

@end