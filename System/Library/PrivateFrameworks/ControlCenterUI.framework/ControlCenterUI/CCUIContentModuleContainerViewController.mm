@interface CCUIContentModuleContainerViewController
+ (id)editingSettings;
- (BOOL)_isContentViewControllerImplicitlyExpanded;
- (BOOL)_isEffectivelyExpanded;
- (BOOL)_isForceTouchAvailable;
- (BOOL)clickPresentationInteractionShouldBegin:(id)begin;
- (BOOL)clickPresentationInteractionShouldPresent:(id)present;
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (CCUIContentModuleContainerViewController)init;
- (CCUIContentModuleContainerViewController)initWithCoder:(id)coder;
- (CCUIContentModuleContainerViewController)initWithModuleIdentifier:(id)identifier uniqueIdentifier:(id)uniqueIdentifier contentModule:(id)module presentationContext:(id)context contentRenderingMode:(unint64_t)mode;
- (CCUIContentModuleContainerViewController)initWithNibName:(id)name bundle:(id)bundle;
- (CCUIContentModuleContainerViewControllerDelegate)delegate;
- (CGRect)_backgroundFrameForExpandedState;
- (CGRect)_contentBoundsForExpandedState;
- (CGRect)_contentBoundsForTransitionProgress:(double)progress;
- (CGRect)_contentFrameForExpandedState;
- (CGRect)_contentFrameForRestState;
- (CGRect)_presentationFrameForExpandedState;
- (CGRect)visibleBounds;
- (CGSize)maxResizeDimensions;
- (CGSize)minResizeDimensions;
- (double)_continuousCornerRadiusForCompactState;
- (double)_continuousCornerRadiusForExpandedState;
- (id)_contentSourceView;
- (id)clickPresentationInteraction:(id)interaction presentationForPresentingViewController:(id)controller;
- (id)clickPresentationInteraction:(id)interaction previewForHighlightingAtLocation:(CGPoint)location;
- (id)contextMenuPreviewForControlHostViewController:(id)controller;
- (id)pointerInteraction:(id)interaction regionForRequest:(id)request defaultRegion:(id)region;
- (id)pointerInteraction:(id)interaction styleForRegion:(id)region;
- (id)rootPassThroughView;
- (void)_addTopLevelGestureRecognizersFromViewAndSubviews:(id)subviews toBlockingGestureRecognizers:(id)recognizers;
- (void)_applyTreatmentToContainerViewPlatters;
- (void)_closeExpandedModule:(BOOL)module;
- (void)_configureContentViewControllerEditingAnimated:(BOOL)animated;
- (void)_configureEditingAnimated:(BOOL)animated;
- (void)_configureForContentModuleGroupRenderingIfNecessary;
- (void)_configureJittering;
- (void)_configureMaskViewIfNecessary;
- (void)_configureTouchBlockingIfNecessary;
- (void)_configureTouchPassThrough;
- (void)_didEndTransitionWithContentModuleContainerTransition:(id)transition completed:(BOOL)completed;
- (void)_ensureAndConfigureEditingBorderView;
- (void)_findTopLevelGestureRecognizersForView:(id)view installOnView:(id)onView;
- (void)_handleExpandModuleForTapGestureRecognizer:(id)recognizer;
- (void)_handleTapGestureRecognizer:(id)recognizer;
- (void)_loadBackgroundViewController:(id)controller;
- (void)_loadContentViewController:(id)controller;
- (void)_removeEditingBorderView;
- (void)_setDidExpandModulePreference;
- (void)_updateContainerViewPlatters;
- (void)_updateDisplayedCompactContinuousCornerRadius;
- (void)clickPresentationInteractionEnded:(id)ended wasCancelled:(BOOL)cancelled;
- (void)dismissExpandedModuleAnimated:(BOOL)animated;
- (void)dismissModulePresentedContentAnimated:(BOOL)animated completion:(id)completion;
- (void)dismissPresentedContentAnimated:(BOOL)animated;
- (void)dismissViewControllerWithTransition:(int)transition completion:(id)completion;
- (void)displayWillTurnOff;
- (void)expandModule;
- (void)invalidateContainerViewsForPlatterTreatment;
- (void)loadView;
- (void)pointerInteraction:(id)interaction willEnterRegion:(id)region animator:(id)animator;
- (void)pointerInteraction:(id)interaction willExitRegion:(id)region animator:(id)animator;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container;
- (void)redirectTapsWithAction:(id)action;
- (void)setAllowsGlassGrouping:(BOOL)grouping;
- (void)setContentMetrics:(id)metrics;
- (void)setContentRenderingMode:(unint64_t)mode;
- (void)setEditing:(BOOL)editing animated:(BOOL)animated;
- (void)setGridSizeClass:(int64_t)class;
- (void)setIconImageInfo:(SBIconImageInfo *)info;
- (void)setJittering:(BOOL)jittering;
- (void)setResizing:(BOOL)resizing;
- (void)setSuppressesCompactContinuousCornerRadiusUpdates:(BOOL)updates;
- (void)setSuppressesContentTransitions:(BOOL)transitions;
- (void)setUserVisibilityStatus:(unint64_t)status;
- (void)setWantsSubduedBackground:(BOOL)background;
- (void)transitionToExpandedMode:(BOOL)mode;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviews;
- (void)willBecomeActive;
- (void)willDismissViewController:(id)controller;
- (void)willPresentViewController:(id)controller;
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
    view = [(CCUIContentModuleContainerViewController *)self view];
    [view bounds];
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
    [view center];
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
    editingSettings = [objc_opt_class() editingSettings];
    [editingSettings pulsingBorderWidth];

    [view _shouldReverseLayoutDirection];
    UIRectInset();
    [(UIView *)self->_editingBorderContainerView setFrame:?];
    editingBorderView = self->_editingBorderView;
    [(UIView *)self->_editingBorderContainerView bounds];
    [(UIView *)editingBorderView setFrame:?];
    v37 = self->_editingBorderMaskView;
    [(UIView *)self->_editingBorderView convertPoint:view fromView:v28, v30];
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
      moduleIdentifier = [(CCUIContentModuleContainerViewController *)self moduleIdentifier];
      v6 = 138543362;
      v7 = moduleIdentifier;
      _os_log_impl(&dword_21E9F5000, v4, OS_LOG_TYPE_DEFAULT, "Content module requested to invalidate container views for platter treatment (%{public}@)", &v6, 0xCu);
    }

    [(CCUIContentModuleContainerViewController *)self _updateContainerViewPlatters];
  }
}

- (void)_applyTreatmentToContainerViewPlatters
{
  v15 = *MEMORY[0x277D85DE8];
  containerViewPlatters = [(CCUIContentModuleContainerViewController *)self containerViewPlatters];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [containerViewPlatters countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(containerViewPlatters);
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
      v5 = [containerViewPlatters countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }
}

- (CCUIContentModuleContainerViewController)initWithModuleIdentifier:(id)identifier uniqueIdentifier:(id)uniqueIdentifier contentModule:(id)module presentationContext:(id)context contentRenderingMode:(unint64_t)mode
{
  identifierCopy = identifier;
  uniqueIdentifierCopy = uniqueIdentifier;
  moduleCopy = module;
  contextCopy = context;
  v23.receiver = self;
  v23.super_class = CCUIContentModuleContainerViewController;
  v16 = [(CCUIContentModuleContainerViewController *)&v23 initWithNibName:0 bundle:0];
  if (v16)
  {
    v17 = [identifierCopy copy];
    moduleIdentifier = v16->_moduleIdentifier;
    v16->_moduleIdentifier = v17;

    v19 = [uniqueIdentifierCopy copy];
    uniqueIdentifier = v16->_uniqueIdentifier;
    v16->_uniqueIdentifier = v19;

    objc_storeStrong(&v16->_contentModule, module);
    v16->_allowsGlassGrouping = 1;
    [(CCUIContentModuleContainerViewController *)v16 setOverrideUserInterfaceStyle:1];
    [(CCUIContentModuleContainerViewController *)v16 _loadContentViewController:contextCopy];
    if (objc_opt_respondsToSelector())
    {
      [(CCUIContentModuleContentViewController *)v16->_contentViewController setContentRenderingMode:mode];
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
    [(CCUIContentModuleContainerViewController *)v16 _loadBackgroundViewController:contextCopy];
  }

  return v16;
}

- (void)_loadContentViewController:(id)controller
{
  controllerCopy = controller;
  if (objc_opt_respondsToSelector())
  {
    contentViewController = [(CCUIContentModule *)self->_contentModule contentViewController];
    contentViewController = self->_contentViewController;
    self->_contentViewController = contentViewController;
  }

  if (!self->_contentViewController)
  {
    if (objc_opt_respondsToSelector())
    {
      v7 = [(CCUIContentModule *)self->_contentModule contentViewControllerForContext:controllerCopy];
      v8 = self->_contentViewController;
      self->_contentViewController = v7;
    }

    if (!self->_contentViewController)
    {
      [(CCUIContentModuleContainerViewController *)self _loadContentViewController:a2];
    }
  }
}

- (void)dismissViewControllerWithTransition:(int)transition completion:(id)completion
{
  v6.receiver = self;
  v6.super_class = CCUIContentModuleContainerViewController;
  [(CCUIContentModuleContainerViewController *)&v6 dismissViewControllerWithTransition:*&transition completion:completion];
  if (!transition)
  {
    [(CCUIContentModuleContentContainerView *)self->_contentContainerView setAlpha:1.0];
  }
}

- (void)_loadBackgroundViewController:(id)controller
{
  controllerCopy = controller;
  if (objc_opt_respondsToSelector())
  {
    backgroundViewController = [(CCUIContentModule *)self->_contentModule backgroundViewController];
    backgroundViewController = self->_backgroundViewController;
    self->_backgroundViewController = backgroundViewController;
  }

  if (!self->_backgroundViewController && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v6 = [(CCUIContentModule *)self->_contentModule backgroundViewControllerForContext:controllerCopy];
    v7 = self->_backgroundViewController;
    self->_backgroundViewController = v6;
  }
}

- (void)transitionToExpandedMode:(BOOL)mode
{
  if (mode)
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

- (void)redirectTapsWithAction:(id)action
{
  actionCopy = action;
  if (self->_redirectedTapAction != actionCopy)
  {
    v6 = actionCopy;
    objc_storeStrong(&self->_redirectedTapAction, action);
    [(CCUIContentModuleContainerViewController *)self _configureTouchBlockingIfNecessary];
    actionCopy = v6;
  }
}

- (CCUIContentModuleContainerViewController)init
{
  [(CCUIContentModuleContainerViewController *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (CCUIContentModuleContainerViewController)initWithCoder:(id)coder
{
  [(CCUIContentModuleContainerViewController *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (CCUIContentModuleContainerViewController)initWithNibName:(id)name bundle:(id)bundle
{
  [(CCUIContentModuleContainerViewController *)self doesNotRecognizeSelector:a2, bundle];

  return 0;
}

- (void)setContentRenderingMode:(unint64_t)mode
{
  if (objc_opt_respondsToSelector())
  {
    contentViewController = self->_contentViewController;

    [(CCUIContentModuleContentViewController *)contentViewController setContentRenderingMode:mode];
  }
}

- (void)setContentMetrics:(id)metrics
{
  metricsCopy = metrics;
  objc_storeStrong(&self->_contentMetrics, metrics);
  if (objc_opt_respondsToSelector())
  {
    [(CCUIContentModuleContentViewController *)self->_contentViewController setContentMetrics:metricsCopy];
  }
}

- (void)setGridSizeClass:(int64_t)class
{
  if (objc_opt_respondsToSelector())
  {
    [(CCUIContentModuleContentViewController *)self->_contentViewController setGridSizeClass:class];

    [(CCUIContentModuleContainerViewController *)self _configureTouchPassThrough];
  }
}

- (void)setResizing:(BOOL)resizing
{
  resizingCopy = resizing;
  if (self->_resizing != resizing)
  {
    self->_resizing = resizing;
    if (objc_opt_respondsToSelector())
    {
      [(CCUIContentModuleContentViewController *)self->_contentViewController setResizing:resizingCopy];
    }

    [(CCUIContentModuleContainerViewController *)self _ensureAndConfigureEditingBorderView];
  }

  contentContainerView = self->_contentContainerView;

  [(CCUIContentModuleContentContainerView *)contentContainerView setClipsToBounds:resizingCopy];
}

- (void)setWantsSubduedBackground:(BOOL)background
{
  if (self->_wantsSubduedBackground != background)
  {
    self->_wantsSubduedBackground = background;
    [(CCUIContentModuleContentContainerView *)self->_contentContainerView setWantsSubduedBackground:?];
    if (self->_contentModuleProvidesOwnPlatter)
    {

      [(CCUIContentModuleContainerViewController *)self _applyTreatmentToContainerViewPlatters];
    }
  }
}

- (void)expandModule
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  moduleIdentifier = [self moduleIdentifier];
  [currentHandler handleFailureInMethod:a2 object:self file:@"CCUIContentModuleContainerViewController.m" lineNumber:317 description:{@"View must be in a window to expand (identifier: %@)", moduleIdentifier}];
}

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container
{
  v5.receiver = self;
  v5.super_class = CCUIContentModuleContainerViewController;
  [(CCUIContentModuleContainerViewController *)&v5 preferredContentSizeDidChangeForChildContentContainer:container];
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

- (void)dismissExpandedModuleAnimated:(BOOL)animated
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __74__CCUIContentModuleContainerViewController_dismissExpandedModuleAnimated___block_invoke;
  v3[3] = &unk_278382CE0;
  v3[4] = self;
  animatedCopy = animated;
  [(CCUIContentModuleContainerViewController *)self dismissModulePresentedContentAnimated:animated completion:v3];
}

- (void)dismissPresentedContentAnimated:(BOOL)animated
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __76__CCUIContentModuleContainerViewController_dismissPresentedContentAnimated___block_invoke;
  v3[3] = &unk_278382CE0;
  v3[4] = self;
  animatedCopy = animated;
  [(CCUIContentModuleContainerViewController *)self dismissModulePresentedContentAnimated:animated completion:v3];
}

uint64_t __76__CCUIContentModuleContainerViewController_dismissPresentedContentAnimated___block_invoke(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
    return [*(result + 32) _closeExpandedModule:*(result + 40)];
  }

  return result;
}

- (void)dismissModulePresentedContentAnimated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  if (objc_opt_respondsToSelector() & 1) != 0 && [(CCUIContentModuleContentViewController *)self->_contentViewController canDismissPresentedContent]&& (objc_opt_respondsToSelector())
  {
    contentViewController = self->_contentViewController;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __93__CCUIContentModuleContainerViewController_dismissModulePresentedContentAnimated_completion___block_invoke;
    v8[3] = &unk_2783821E0;
    v9 = completionCopy;
    [(CCUIContentModuleContentViewController *)contentViewController dismissPresentedContentAnimated:animatedCopy completion:v8];
  }

  else if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 0);
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

- (void)_closeExpandedModule:(BOOL)module
{
  moduleCopy = module;
  if ([(CCUIContentModuleContainerViewController *)self isExpanded])
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __65__CCUIContentModuleContainerViewController__closeExpandedModule___block_invoke;
    v5[3] = &unk_278382CE0;
    v5[4] = self;
    v6 = moduleCopy;
    [(CCUIContentModuleContainerViewController *)self dismissModulePresentedContentAnimated:moduleCopy completion:v5];
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

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = CCUIContentModuleContainerViewController;
  [(CCUIContentModuleContainerViewController *)&v4 viewWillAppear:appear];
  [(CCUIContentModuleContainerViewController *)self _configureForContentModuleGroupRenderingIfNecessary];
  [(CCUIContentModuleContainerViewController *)self _configureContentViewControllerEditingAnimated:0];
}

- (void)viewDidAppear:(BOOL)appear
{
  v3.receiver = self;
  v3.super_class = CCUIContentModuleContainerViewController;
  [(CCUIContentModuleContainerViewController *)&v3 viewDidAppear:appear];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v7.receiver = self;
  v7.super_class = CCUIContentModuleContainerViewController;
  [(CCUIContentModuleContainerViewController *)&v7 viewWillDisappear:?];
  if ([(CCUIContentModuleContainerViewController *)self isExpanded])
  {
    [(CCUIContentModuleContainerViewController *)self _closeExpandedModule:disappearCopy];
  }

  else
  {
    clickPresentationInteraction = [(CCUIContentModuleContainerViewController *)self clickPresentationInteraction];
    [clickPresentationInteraction cancelInteraction];

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained contentModuleContainerViewController:self didFinishInteractionWithModule:self->_contentModule];
  }
}

- (void)loadView
{
  v30 = objc_alloc_init(MEMORY[0x277CFC9D0]);
  [(CCUIContentModuleContainerViewController *)self setView:?];
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (userInterfaceIdiom == 1)
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
  clearColor = [MEMORY[0x277D75348] clearColor];
  [(UIView *)v9 setBackgroundColor:clearColor];

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
  view = [(CCUIContentModuleContentViewController *)self->_contentViewController view];
  contentView = self->_contentView;
  self->_contentView = view;

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
  view2 = [(CCUIContentModuleContainerViewController *)self view];
  [view2 addInteraction:self->_clickPresentationInteraction];

  v25 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel__handleTapGestureRecognizer_];
  [(CCUIContentModuleBackgroundView *)self->_backgroundView addGestureRecognizer:v25];
  [(CCUIContentModuleContainerViewController *)self setTapRecognizer:v25];
  contentViewController = [(CCUIContentModuleContainerViewController *)self contentViewController];
  if (objc_opt_respondsToSelector())
  {
    v27 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel__handleExpandModuleForTapGestureRecognizer_];
    expandModuleOnTouchTapRecognizer = self->_expandModuleOnTouchTapRecognizer;
    self->_expandModuleOnTouchTapRecognizer = v27;

    view3 = [(CCUIContentModuleContainerViewController *)self view];
    [view3 addGestureRecognizer:self->_expandModuleOnTouchTapRecognizer];

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

- (void)_findTopLevelGestureRecognizersForView:(id)view installOnView:(id)onView
{
  v5 = MEMORY[0x277CBEB18];
  viewCopy = view;
  v9 = objc_alloc_init(v5);
  [(CCUIContentModuleContainerViewController *)self _addTopLevelGestureRecognizersFromViewAndSubviews:viewCopy toBlockingGestureRecognizers:v9];

  v7 = [v9 copy];
  topLevelBlockingGestureRecognizers = self->_topLevelBlockingGestureRecognizers;
  self->_topLevelBlockingGestureRecognizers = v7;
}

- (void)_addTopLevelGestureRecognizersFromViewAndSubviews:(id)subviews toBlockingGestureRecognizers:(id)recognizers
{
  v19 = *MEMORY[0x277D85DE8];
  subviewsCopy = subviews;
  recognizersCopy = recognizers;
  if (objc_opt_respondsToSelector())
  {
    topLevelBlockingGestureRecognizers = [subviewsCopy topLevelBlockingGestureRecognizers];
    [recognizersCopy addObjectsFromArray:topLevelBlockingGestureRecognizers];
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  subviews = [subviewsCopy subviews];
  v10 = [subviews countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(subviews);
        }

        [(CCUIContentModuleContainerViewController *)self _addTopLevelGestureRecognizersFromViewAndSubviews:*(*(&v14 + 1) + 8 * v13++) toBlockingGestureRecognizers:recognizersCopy];
      }

      while (v11 != v13);
      v11 = [subviews countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v11);
  }
}

- (BOOL)clickPresentationInteractionShouldBegin:(id)begin
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

- (BOOL)clickPresentationInteractionShouldPresent:(id)present
{
  presentCopy = present;
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
    v12 = presentCopy;
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

- (void)clickPresentationInteractionEnded:(id)ended wasCancelled:(BOOL)cancelled
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained contentModuleContainerViewController:self didFinishInteractionWithModule:self->_contentModule];

  presentationController = self->_presentationController;
  self->_presentationController = 0;

  self->_authenticatedForExpandedModulePresentation = 0;
}

- (id)clickPresentationInteraction:(id)interaction previewForHighlightingAtLocation:(CGPoint)location
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = [(CCUIContentModuleContainerViewController *)self view:interaction];
  if ([v4 _isInAWindow])
  {
    window = [v4 window];
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
      v17 = window;
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

- (id)clickPresentationInteraction:(id)interaction presentationForPresentingViewController:(id)controller
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
      viewForTouchContinuation = [(CCUIContentModuleContentViewController *)self->_contentViewController viewForTouchContinuation];
    }

    else
    {
      viewForTouchContinuation = 0;
    }

    [v7 setCustomViewForTouchContinuation:viewForTouchContinuation];
    if (UIAccessibilityIsReduceMotionEnabled())
    {
      v9 = objc_alloc_init(CCUIContentModuleContainerReducedMotionTransition);
      v10 = objc_alloc_init(CCUIContentModuleContainerReducedMotionTransition);
      view = [(CCUIContentModuleContainerViewController *)self view];
      window = [view window];

      [(CCUIContentModuleContainerReducedMotionTransition *)v9 setSnapshotHostWindow:window];
      [(CCUIContentModuleContainerReducedMotionTransition *)v10 setSnapshotHostWindow:window];
      bs_presentationContextDefiningViewController = [(CCUIContentModuleContainerViewController *)self bs_presentationContextDefiningViewController];
      view2 = [bs_presentationContextDefiningViewController view];
      window2 = [view2 window];
      [window2 interfaceOrientation];

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
      contentViewController = [(CCUIContentModuleContainerViewController *)self contentViewController];
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

- (void)willPresentViewController:(id)controller
{
  controllerCopy = controller;
  delegate = [(CCUIContentModuleContainerViewController *)self delegate];
  [delegate contentModuleContainerViewController:self willPresentViewController:controllerCopy];
}

- (void)willDismissViewController:(id)controller
{
  controllerCopy = controller;
  delegate = [(CCUIContentModuleContainerViewController *)self delegate];
  [delegate contentModuleContainerViewController:self willDismissViewController:controllerCopy];
}

- (id)contextMenuPreviewForControlHostViewController:(id)controller
{
  contentContainerView = [(CCUIContentModuleContainerViewController *)self contentContainerView];
  v4 = [objc_alloc(MEMORY[0x277D75B90]) initWithView:contentContainerView];

  return v4;
}

- (id)pointerInteraction:(id)interaction regionForRequest:(id)request defaultRegion:(id)region
{
  regionCopy = region;
  contentViewController = [(CCUIContentModuleContainerViewController *)self contentViewController];
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  if ([currentDevice userInterfaceIdiom] == 1)
  {
    if (objc_opt_respondsToSelector())
    {
      shouldPerformHoverInteraction = [contentViewController shouldPerformHoverInteraction];

      if ((shouldPerformHoverInteraction & 1) == 0)
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
    [regionCopy rect];
    v21 = CGRectInset(v20, -v12, -v12);
    x = v21.origin.x;
    y = v21.origin.y;
    width = v21.size.width;
    height = v21.size.height;
    v17 = MEMORY[0x277D75880];
    currentDevice = [(CCUIContentModuleContainerViewController *)self moduleIdentifier];
    v10 = [v17 regionWithRect:currentDevice identifier:{x, y, width, height}];
  }

  else
  {
    v10 = 0;
  }

LABEL_11:

  return v10;
}

- (id)pointerInteraction:(id)interaction styleForRegion:(id)region
{
  v36 = *MEMORY[0x277D85DE8];
  v5 = [(CCUIContentModuleContainerViewController *)self view:interaction];
  _isInAWindow = [v5 _isInAWindow];

  if (_isInAWindow)
  {
    view = [(CCUIContentModuleContainerViewController *)self view];
    window = [view window];
    v9 = *MEMORY[0x277CFC8F8];
    if (os_log_type_enabled(*MEMORY[0x277CFC8F8], OS_LOG_TYPE_DEFAULT))
    {
      v10 = v9;
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      v30 = 138543874;
      v31 = v12;
      v32 = 2114;
      v33 = view;
      v34 = 2114;
      v35 = window;
      _os_log_impl(&dword_21E9F5000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] Control Center is about to call [UITargetedPreview initWithView:], view = %{public}@, window = %{public}@", &v30, 0x20u);
    }

    v13 = [objc_alloc(MEMORY[0x277D75B90]) initWithView:view];
    v14 = [MEMORY[0x277D75878] effectWithPreview:v13];
    v15 = MEMORY[0x277D75888];
    view2 = [(CCUIContentModuleContainerViewController *)self view];
    [view2 frame];
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

- (void)pointerInteraction:(id)interaction willEnterRegion:(id)region animator:(id)animator
{
  interactionCopy = interaction;
  regionCopy = region;
  animatorCopy = animator;
  if (!self->_activePointerRegions)
  {
    v10 = objc_alloc_init(MEMORY[0x277CCA940]);
    activePointerRegions = self->_activePointerRegions;
    self->_activePointerRegions = v10;
  }

  isPointerActive = [(CCUIContentModuleContainerViewController *)self isPointerActive];
  [(NSCountedSet *)self->_activePointerRegions addObject:regionCopy];
  if (!isPointerActive)
  {
    delegate = [(CCUIContentModuleContainerViewController *)self delegate];
    [delegate pointerWillEnterContentModuleContainerViewController:self];
  }
}

- (void)pointerInteraction:(id)interaction willExitRegion:(id)region animator:(id)animator
{
  regionCopy = region;
  v8 = regionCopy;
  if (animator)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __87__CCUIContentModuleContainerViewController_pointerInteraction_willExitRegion_animator___block_invoke;
    v10[3] = &unk_278382D08;
    v10[4] = self;
    v11 = regionCopy;
    [animator addCompletion:v10];
  }

  else
  {
    [(NSCountedSet *)self->_activePointerRegions removeObject:regionCopy];
    if (![(CCUIContentModuleContainerViewController *)self isPointerActive])
    {
      delegate = [(CCUIContentModuleContainerViewController *)self delegate];
      [delegate pointerDidExitContentModuleContainerViewController:self];
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

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  touchCopy = touch;
  contentViewController = [(CCUIContentModuleContainerViewController *)self contentViewController];
  if ([(CCUIContentModuleContainerViewController *)self _isEffectivelyExpanded]|| (objc_opt_respondsToSelector() & 1) == 0)
  {
    v7 = 0;
  }

  else
  {
    v7 = [contentViewController shouldExpandModuleOnTouch:touchCopy];
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

- (void)setIconImageInfo:(SBIconImageInfo *)info
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

- (void)setEditing:(BOOL)editing animated:(BOOL)animated
{
  animatedCopy = animated;
  editingCopy = editing;
  v7.receiver = self;
  v7.super_class = CCUIContentModuleContainerViewController;
  [CCUIContentModuleContainerViewController setEditing:sel_setEditing_animated_ animated:?];
  if (self->_editing != editingCopy)
  {
    self->_editing = editingCopy;
    [(CCUIContentModuleContainerViewController *)self _configureTouchBlockingIfNecessary];
    [(CCUIContentModuleContainerViewController *)self _configureEditingAnimated:animatedCopy];
  }
}

- (void)setJittering:(BOOL)jittering
{
  if (self->_jittering != jittering)
  {
    self->_jittering = jittering;
    [(CCUIContentModuleContainerViewController *)self _configureJittering];
  }
}

- (void)setUserVisibilityStatus:(unint64_t)status
{
  if (self->_userVisibilityStatus != status)
  {
    self->_userVisibilityStatus = status;
    if (objc_opt_respondsToSelector())
    {
      contentViewController = self->_contentViewController;
      if (status == 2)
      {
        v6 = 1;
      }

      else
      {
        v6 = 2 * (status == 3);
      }

      [(CCUIContentModuleContentViewController *)contentViewController setUserVisibilityStatus:v6];
    }
  }
}

- (void)setAllowsGlassGrouping:(BOOL)grouping
{
  if (self->_allowsGlassGrouping != grouping)
  {
    self->_allowsGlassGrouping = grouping;
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
  view = [(CCUIContentModuleContainerViewController *)self view];
  window = [view window];
  windowScene = [window windowScene];
  screen = [windowScene screen];

  traitCollection = [screen traitCollection];
  LOBYTE(window) = [traitCollection forceTouchCapability] == 2;

  return window;
}

- (void)_handleTapGestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  if (-[CCUIContentModuleContainerViewController isExpanded](self, "isExpanded") && (!recognizerCopy || [recognizerCopy state] == 3))
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

- (void)_handleExpandModuleForTapGestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  if (!-[CCUIContentModuleContainerViewController _isEffectivelyExpanded](self, "_isEffectivelyExpanded") && [recognizerCopy state] == 3)
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
        view = [(CCUIContentModuleContainerViewController *)self view];
        [view bounds];
        v5 = [v3 initWithFrame:?];
        touchBlockingView = self->_touchBlockingView;
        self->_touchBlockingView = v5;

        [(UIControl *)self->_touchBlockingView addTarget:self action:sel__handleBlockedTap_ forControlEvents:64];
        v7 = self->_touchBlockingView;
        [(CCUIContentModuleContainerViewController *)self _continuousCornerRadiusForCompactState];
        [(UIControl *)v7 _setContinuousCornerRadius:?];
        layer = [(UIControl *)self->_touchBlockingView layer];
        [layer setHitTestsAsOpaque:1];

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
    view = [(CCUIContentModuleContainerViewController *)self view];
    editingSettings = [objc_opt_class() editingSettings];
    [editingSettings pulsingBorderWidth];
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
      v22 = editingSettings;
      [v13 performWithoutAnimation:v21];
      [(CCUIContentModuleContainerViewController *)self _configureJittering];

      editingBorderView = self->_editingBorderView;
    }

    layer = [(UIView *)editingBorderView layer];
    v15 = layer;
    v16 = MEMORY[0x277D75D18];
    if (self->_resizing)
    {
      v17 = v20;
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __80__CCUIContentModuleContainerViewController__ensureAndConfigureEditingBorderView__block_invoke_2;
      v20[3] = &unk_278381F00;
      v20[4] = layer;
      v20[5] = self;
      v20[6] = view;
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
      v19[4] = layer;
      v19[5] = self;
      v19[7] = v6;
      v19[6] = view;
    }

    v18 = view;
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

- (void)_configureEditingAnimated:(BOOL)animated
{
  animatedCopy = animated;
  editing = self->_editing;
  editingSettings = [objc_opt_class() editingSettings];
  [editingSettings pulsingBorderFadeDuration];
  v8 = v7;
  if (editing)
  {
    if (!self->_editingBorderContainerView)
    {
      view = [(CCUIContentModuleContainerViewController *)self view];
      [view bounds];
      [editingSettings pulsingBorderWidth];
      UIRectInset();
      v14 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v10, v11, v12, v13}];
      editingBorderContainerView = self->_editingBorderContainerView;
      self->_editingBorderContainerView = v14;

      layer = [(UIView *)self->_editingBorderContainerView layer];
      [layer setAllowsGroupBlending:0];

      [(CCUIContentModuleContainerViewController *)self _ensureAndConfigureEditingBorderView];
      v17 = MEMORY[0x277D75D18];
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __70__CCUIContentModuleContainerViewController__configureEditingAnimated___block_invoke;
      v28[3] = &unk_278382258;
      v28[4] = self;
      v29 = view;
      v30 = animatedCopy;
      v18 = view;
      [v17 performWithoutAnimation:v28];
    }

    if (animatedCopy)
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

  else if (animatedCopy)
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
  v23 = animatedCopy;
  v20 = _Block_copy(v22);
  v21 = v20;
  if (animatedCopy)
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
      editingSettings = [objc_opt_class() editingSettings];
      [objc_opt_class() editingBorderPulseAnimationStartTime];
      v5 = v4;
      v6 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"opacity"];
      [v6 setBeginTime:v5];
      [editingSettings pulsingBorderPulseDuration];
      [v6 setDuration:?];
      [v6 setAutoreverses:1];
      LODWORD(v7) = 2139095039;
      [v6 setRepeatCount:v7];
      v8 = [MEMORY[0x277CCABB0] numberWithFloat:0.0];
      [v6 setFromValue:v8];

      v9 = MEMORY[0x277CCABB0];
      [editingSettings pulsingBorderMaxAlpha];
      v11 = v10;
      [editingSettings pulsingBorderMinAlpha];
      v13 = v11 - v12;
      *&v13 = v13;
      v14 = [v9 numberWithFloat:v13];
      [v6 setToValue:v14];

      [v6 setAdditive:1];
      v15 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7B8]];
      [v6 setTimingFunction:v15];

      layer = [(UIView *)self->_editingBorderView layer];
      [layer addAnimation:v6 forKey:@"CCUIContentModuleContainerEditingBorderPulseAnimationKey"];
    }

    else
    {
      editingSettings = [(UIView *)editingBorderView layer];
      [editingSettings removeAnimationForKey:@"CCUIContentModuleContainerEditingBorderPulseAnimationKey"];
    }
  }
}

- (void)_configureContentViewControllerEditingAnimated:(BOOL)animated
{
  animatedCopy = animated;
  editing = self->_editing;
  v5 = self->_contentViewController;
  if (objc_opt_respondsToSelector())
  {
    [(CCUIContentModuleContentViewController *)v5 setEditing:editing animated:animatedCopy];
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
  _isForceTouchAvailable = [(CCUIContentModuleContainerViewController *)self _isForceTouchAvailable];
  v3 = +[CCUIControlCenterDefaults standardDefaults];
  v4 = v3;
  if (_isForceTouchAvailable)
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
  view = [(CCUIContentModuleContainerViewController *)self view];
  v3 = objc_opt_class();
  v4 = view;
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
    delegate = [(CCUIContentModuleContainerViewController *)self delegate];
    [delegate controlCenterGridSizeForContentModuleContainerViewController:self];
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
      view = [(CCUIContentModuleContainerViewController *)self view];
      [view bounds];
      Width = CGRectGetWidth(v19);

      if (v5 >= Width)
      {
        v5 = Width;
      }
    }

    [(CCUIContentModuleContentViewController *)self->_contentViewController preferredExpandedContentHeight];
    v7 = v14;
    view2 = [(CCUIContentModuleContainerViewController *)self view];
    [view2 bounds];
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
    editingSettings = [objc_opt_class() editingSettings];
    [editingSettings pulsingBorderWidth];
    v8 = v7;

    [(UIView *)self->_editingBorderView _setContinuousCornerRadius:v5 + v8];
    editingBorderMaskView = self->_editingBorderMaskView;

    [(UIView *)editingBorderMaskView _setContinuousCornerRadius:v5];
  }
}

- (void)setSuppressesCompactContinuousCornerRadiusUpdates:(BOOL)updates
{
  if (self->_suppressesCompactContinuousCornerRadiusUpdates != updates)
  {
    self->_suppressesCompactContinuousCornerRadiusUpdates = updates;
    if (!updates)
    {
      [(CCUIContentModuleContainerViewController *)self _updateDisplayedCompactContinuousCornerRadius];
    }
  }
}

- (void)setSuppressesContentTransitions:(BOOL)transitions
{
  if (self->_suppressesContentTransitions != transitions)
  {
    transitionsCopy = transitions;
    self->_suppressesContentTransitions = transitions;
    if (objc_opt_respondsToSelector())
    {
      contentViewController = self->_contentViewController;

      [(CCUIContentModuleContentViewController *)contentViewController setSuppressesContentTransitions:transitionsCopy];
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
  _isEffectivelyExpanded = [(CCUIContentModuleContainerViewController *)self _isEffectivelyExpanded];
  rootPassThroughView = [(CCUIContentModuleContainerViewController *)self rootPassThroughView];
  [rootPassThroughView setTouchPassThroughDisabled:!_isEffectivelyExpanded];
}

- (BOOL)_isContentViewControllerImplicitlyExpanded
{
  if ((objc_opt_respondsToSelector() & 1) == 0 || (objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  gridSizeClass = [(CCUIContentModuleContentViewController *)self->_contentViewController gridSizeClass];
  return ([(CCUIContentModuleContentViewController *)self->_contentViewController implicitlyExpandedGridSizeClasses]& (1 << gridSizeClass)) != 0;
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
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    if (userInterfaceIdiom == 1)
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
  bs_presentationContextDefiningViewController = [(CCUIContentModuleContainerViewController *)self bs_presentationContextDefiningViewController];
  view = [bs_presentationContextDefiningViewController view];
  [view bounds];
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
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (userInterfaceIdiom)
  {
    delegate = [(CCUIContentModuleContainerViewController *)self delegate];
    [delegate expandedModeFrameForContentModuleContainerViewController:self];
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

- (CGRect)_contentBoundsForTransitionProgress:(double)progress
{
  view = [(CCUIContentModuleContainerViewController *)self view];
  traitCollection = [view traitCollection];
  [traitCollection displayScale];

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
    view = [(CCUIContentModuleContainerViewController *)self view];
    [view addSubview:self->_maskView];

    layer = [(UIView *)self->_maskView layer];
    [layer setCompositingFilter:*MEMORY[0x277CDA310]];
  }
}

- (void)_configureForContentModuleGroupRenderingIfNecessary
{
  if ((objc_opt_respondsToSelector() & 1) != 0 && [(CCUIContentModuleContentViewController *)self->_contentViewController isGroupRenderingRequired])
  {

    [(CCUIContentModuleContainerViewController *)self _configureMaskViewIfNecessary];
  }
}

- (void)_didEndTransitionWithContentModuleContainerTransition:(id)transition completed:(BOOL)completed
{
  self->_transitioning = 0;
  if (completed)
  {
    contentContainerView = self->_contentContainerView;
    isAppearanceTransition = [transition isAppearanceTransition];

    [(CCUIContentModuleContentContainerView *)contentContainerView didEndTransitionToExpandedMode:isAppearanceTransition];
  }
}

- (void)_updateContainerViewPlatters
{
  if (objc_opt_respondsToSelector())
  {
    v7 = self->_containerViewPlatters;
    containerViewsForPlatterTreatment = [(CCUIContentModuleContentViewController *)self->_contentViewController containerViewsForPlatterTreatment];
    v4 = [containerViewsForPlatterTreatment copy];
    containerViewPlatters = self->_containerViewPlatters;
    self->_containerViewPlatters = v4;

    if ((BSEqualArrays() & 1) == 0)
    {
      [(CCUIContentModuleContainerViewController *)self _applyTreatmentToContainerViewPlatters];
      delegate = [(CCUIContentModuleContainerViewController *)self delegate];
      [delegate contentModuleContainerViewController:self didUpdateContainerViewPlatters:v7];
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