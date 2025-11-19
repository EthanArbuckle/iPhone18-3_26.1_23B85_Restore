@interface CSCoverSheetViewControllerBase
- (BOOL)_presentationParticipant;
- (BOOL)_rebuildAppearance;
- (BOOL)_rebuildBehavior;
- (BOOL)_rebuildPresentation;
- (BOOL)handleEvent:(id)a3;
- (CAFrameRateRange)presentationPreferredFrameRateRange;
- (CGSize)effectiveContentSizeForScrollView:(id)a3;
- (CSAppearance)activeAppearance;
- (CSBehavior)activeBehavior;
- (CSCoverSheetViewControllerBase)initWithNibName:(id)a3 bundle:(id)a4;
- (CSCoverSheetViewPresenting)presenter;
- (CSPresentation)externalPresentation;
- (NSString)coverSheetIdentifier;
- (SBSDisplayLayoutElement)_displayLayoutElement;
- (UIViewController)kitPresentedViewController;
- (id)_presenter;
- (id)_regionsForView:(id)a3;
- (id)_timelinesForDateInterval:(id)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (int64_t)participantState;
- (void)_layoutIfNeededForPresentation;
- (void)_rebuildDisposition;
- (void)_setDisplayLayoutElementActive:(BOOL)a3 immediately:(BOOL)a4;
- (void)_updateDisplayLayoutElementForActivation:(id)a3;
- (void)_updateWithFrameSpecifier:(id)a3;
- (void)aggregateAppearance:(id)a3;
- (void)aggregatePresentation:(id)a3;
- (void)dealloc;
- (void)didTransitionToPresented:(BOOL)a3;
- (void)dismiss;
- (void)handleAction:(id)a3 fromSender:(id)a4;
- (void)loadView;
- (void)performCustomTransitionToVisible:(BOOL)a3 withAnimationSettings:(id)a4 completion:(id)a5;
- (void)rebuildEverythingForReason:(id)a3;
- (void)registerView:(id)a3 forRole:(int64_t)a4 options:(unint64_t)a5;
- (void)sendAction:(id)a3;
- (void)setDisplayLayoutElementActive:(BOOL)a3;
- (void)unregisterAllViews;
- (void)unregisterView:(id)a3;
- (void)updateAppearance:(id)a3 completion:(id)a4;
- (void)updateAppearanceForController:(id)a3 withAnimationSettings:(id)a4 completion:(id)a5;
- (void)updateBehavior:(id)a3;
- (void)updateBehaviorForController:(id)a3;
- (void)updateDisplayLayoutElementWithBuilder:(id)a3;
- (void)updateForPresentation:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
- (void)willTransitionToPresented:(BOOL)a3;
@end

@implementation CSCoverSheetViewControllerBase

- (BOOL)_rebuildBehavior
{
  v3 = +[CSBehavior behavior];
  [(CSCoverSheetViewControllerBase *)self aggregateBehavior:v3];
  v4 = [(CSBehavior *)self->_behavior isEqual:v3];
  if (!v4)
  {
    objc_storeStrong(&self->_behavior, v3);
  }

  return !v4;
}

- (id)_presenter
{
  WeakRetained = objc_loadWeakRetained(&self->_presenter);
  if (WeakRetained || ([(CSCoverSheetViewControllerBase *)self parentViewController], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_opt_respondsToSelector(), v6, (v7 & 1) != 0) && ([(CSCoverSheetViewControllerBase *)self parentViewController], (WeakRetained = objc_claimAutoreleasedReturnValue()) != 0) || ([(CSCoverSheetViewControllerBase *)self presentingViewController], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_opt_respondsToSelector(), v8, (v9 & 1) != 0) && ([(CSCoverSheetViewControllerBase *)self presentingViewController], (WeakRetained = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v4 = WeakRetained;
  }

  else
  {
    v4 = [(CSCoverSheetViewControllerBase *)self navigationController];
    if (v4)
    {
      v10 = [(CSCoverSheetViewControllerBase *)self navigationController];
      v11 = [v10 parentViewController];
      v12 = objc_opt_respondsToSelector();

      if (v12)
      {
        v13 = [(CSCoverSheetViewControllerBase *)self navigationController];
        v4 = [v13 parentViewController];
      }

      else
      {
        v4 = 0;
      }
    }
  }

  return v4;
}

- (void)viewWillLayoutSubviews
{
  v3 = SBLogDashBoard();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [CSCoverSheetViewControllerBase initWithNibName:bundle:];
  }

  v4.receiver = self;
  v4.super_class = CSCoverSheetViewControllerBase;
  [(CSCoverSheetViewControllerBase *)&v4 viewWillLayoutSubviews];
}

- (void)viewDidLayoutSubviews
{
  v4.receiver = self;
  v4.super_class = CSCoverSheetViewControllerBase;
  [(CSCoverSheetViewControllerBase *)&v4 viewDidLayoutSubviews];
  v3 = SBLogDashBoard();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [CSCoverSheetViewControllerBase initWithNibName:bundle:];
  }

  if ([(CSCoverSheetViewControllerBase *)self _presentationParticipant])
  {
    if (!self->_forcingLayoutForPresentation)
    {
      [(CSCoverSheetViewControllerBase *)self rebuildAppearance];
    }
  }
}

- (BOOL)_presentationParticipant
{
  if (!self->_isBeingPresented)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      return 0;
    }
  }

  v3 = [(CSCoverSheetViewControllerBase *)self viewIfLoaded];
  v4 = [v3 window];
  v5 = v4 != 0;

  return v5;
}

- (NSString)coverSheetIdentifier
{
  v2 = objc_opt_class();

  return [v2 coverSheetIdentifier];
}

- (int64_t)participantState
{
  if ([(CSCoverSheetViewControllerBase *)self isDisappeared])
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

- (void)loadView
{
  v3 = objc_alloc([objc_opt_class() viewClass]);
  v4 = [MEMORY[0x277D759A0] mainScreen];
  [v4 bounds];
  v8 = [v3 initWithFrame:?];

  v5 = [v8 layer];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  [v5 setName:v7];

  [v8 setAutoresizingMask:18];
  [v8 setAutoresizesSubviews:1];
  [(CSCoverSheetViewControllerBase *)self setView:v8];
}

- (void)viewDidLoad
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"_bs_assert_object != nil"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_0_0();
    v8 = @"CSCoverSheetViewControllerBase.m";
    v9 = 1024;
    v10 = 80;
    v11 = v6;
    v12 = v2;
    _os_log_error_impl(&dword_21EB05000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_rebuildDisposition
{
  [(CSCoverSheetViewControllerBase *)self _rebuildAppearance];

  [(CSCoverSheetViewControllerBase *)self _rebuildBehavior];
}

- (BOOL)_rebuildAppearance
{
  v3 = [(CSAppearance *)self->_appearance identifier];
  v4 = [CSAppearance appearanceWithIdentifier:v3];

  [(CSCoverSheetViewControllerBase *)self aggregateAppearance:v4];
  v5 = [(CSCoverSheetViewControllerBase *)self _rebuildPresentation];
  if (![(CSAppearance *)self->_appearance isEqualToAppearance:v4])
  {
    objc_storeStrong(&self->_appearance, v4);
    v5 = 1;
  }

  return v5;
}

- (BOOL)_rebuildPresentation
{
  if (![(CSCoverSheetViewControllerBase *)self _presentationParticipant])
  {
    return 0;
  }

  v3 = [(CSPresentation *)self->_presentation coordinateSpace];
  v4 = [(CSCoverSheetViewControllerBase *)self view];
  v5 = [v4 window];

  if (v3 != v5)
  {
    v6 = [(CSCoverSheetViewControllerBase *)self view];
    v7 = [v6 window];
    v8 = [CSPresentation presentationWithCoordinateSpace:v7];
    presentation = self->_presentation;
    self->_presentation = v8;

    v10 = self->_presentation;
    v11 = [(CSCoverSheetViewControllerBase *)self coverSheetIdentifier];
    [(CSPresentation *)v10 setIdentifier:v11];
  }

  v12 = [(CSPresentation *)self->_presentation presentationForRole:0];
  [(CSCoverSheetViewControllerBase *)self _layoutIfNeededForPresentation];
  [(CSCoverSheetViewControllerBase *)self aggregatePresentation:v12];
  v13 = [(CSPresentation *)self->_presentation isEqual:v12];
  if (!v13)
  {
    objc_storeStrong(&self->_presentation, v12);
  }

  v14 = !v13;

  return v14;
}

- (SBSDisplayLayoutElement)_displayLayoutElement
{
  displayLayoutElement = self->_displayLayoutElement;
  if (!displayLayoutElement)
  {
    v4 = [(CSCoverSheetViewControllerBase *)self _newDisplayLayoutElement];
    v5 = self->_displayLayoutElement;
    self->_displayLayoutElement = v4;

    displayLayoutElement = self->_displayLayoutElement;
  }

  return displayLayoutElement;
}

- (void)_layoutIfNeededForPresentation
{
  if ([(CSCoverSheetViewControllerBase *)self _appearState])
  {
    self->_forcingLayoutForPresentation = 1;
    v3 = [(CSCoverSheetViewControllerBase *)self view];
    [v3 layoutIfNeeded];

    self->_forcingLayoutForPresentation = 0;
  }
}

- (CSPresentation)externalPresentation
{
  v2 = [(CSCoverSheetViewControllerBase *)self _presenter];
  v3 = [v2 externalPresentation];

  return v3;
}

- (CSAppearance)activeAppearance
{
  v2 = [(CSCoverSheetViewControllerBase *)self _presenter];
  v3 = [v2 activeAppearance];

  return v3;
}

- (CSBehavior)activeBehavior
{
  v2 = [(CSCoverSheetViewControllerBase *)self _presenter];
  v3 = [v2 activeBehavior];

  return v3;
}

- (UIViewController)kitPresentedViewController
{
  v4.receiver = self;
  v4.super_class = CSCoverSheetViewControllerBase;
  v2 = [(CSCoverSheetViewControllerBase *)&v4 presentedViewController];

  return v2;
}

- (void)dealloc
{
  [(BSInvalidatable *)self->_displayLayoutElementAssertion invalidate];
  v3 = SBLogDashBoard();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [CSCoverSheetViewControllerBase initWithNibName:bundle:];
  }

  v4.receiver = self;
  v4.super_class = CSCoverSheetViewControllerBase;
  [(CSCoverSheetViewControllerBase *)&v4 dealloc];
}

- (CAFrameRateRange)presentationPreferredFrameRateRange
{
  v2 = *MEMORY[0x277CD9DD0];
  v3 = *(MEMORY[0x277CD9DD0] + 4);
  v4 = *(MEMORY[0x277CD9DD0] + 8);
  result.preferred = v4;
  result.maximum = v3;
  result.minimum = v2;
  return result;
}

- (void)dismiss
{
  if (dismiss_onceToken != -1)
  {
    [CSCoverSheetViewControllerBase dismiss];
  }

  v3 = dismiss___DismissAction;

  [(CSCoverSheetViewControllerBase *)self sendAction:v3];
}

uint64_t __41__CSCoverSheetViewControllerBase_dismiss__block_invoke()
{
  dismiss___DismissAction = [CSAction actionWithType:1];

  return MEMORY[0x2821F96F8]();
}

- (CSCoverSheetViewControllerBase)initWithNibName:(id)a3 bundle:(id)a4
{
  v12.receiver = self;
  v12.super_class = CSCoverSheetViewControllerBase;
  v4 = [(CSCoverSheetViewControllerBase *)&v12 initWithNibName:a3 bundle:a4];
  if (v4)
  {
    v5 = SBLogDashBoard();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [CSCoverSheetViewControllerBase initWithNibName:bundle:];
    }

    v6 = [MEMORY[0x277CF0C00] descriptionForObject:v4];
    v7 = [CSAppearance appearanceWithIdentifier:v6];
    appearance = v4->_appearance;
    v4->_appearance = v7;

    v9 = +[CSBehavior behavior];
    behavior = v4->_behavior;
    v4->_behavior = v9;
  }

  return v4;
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v23 = *MEMORY[0x277D85DE8];
  v17.receiver = self;
  v17.super_class = CSCoverSheetViewControllerBase;
  [(CSCoverSheetViewControllerBase *)&v17 viewWillAppear:?];
  v5 = SBLogDashBoard();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v11 = _SBFLoggingMethodProem();
    v12 = NSStringFromBOOL();
    *buf = 138412546;
    v20 = v11;
    v21 = 2112;
    v22 = v12;
    _os_log_debug_impl(&dword_21EB05000, v5, OS_LOG_TYPE_DEBUG, "%@ animated: %@", buf, 0x16u);
  }

  if (([(CSCoverSheetViewControllerBase *)self shouldAutomaticallyForwardAppearanceMethods]& 1) == 0 && [(CSCoverSheetViewControllerBase *)self sendAppearanceTransitionForChildViewControllers])
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = [(CSCoverSheetViewControllerBase *)self childViewControllers];
    v7 = [v6 countByEnumeratingWithState:&v13 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      do
      {
        v10 = 0;
        do
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [(CSCoverSheetViewControllerBase *)self bs_beginAppearanceTransitionForChildViewController:*(*(&v13 + 1) + 8 * v10++) toVisible:1 animated:v3];
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v13 objects:v18 count:16];
      }

      while (v8);
    }
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v16.receiver = self;
  v16.super_class = CSCoverSheetViewControllerBase;
  [(CSCoverSheetViewControllerBase *)&v16 viewDidAppear:?];
  v4 = SBLogDashBoard();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v10 = _SBFLoggingMethodProem();
    v11 = NSStringFromBOOL();
    *buf = 138412546;
    v19 = v10;
    v20 = 2112;
    v21 = v11;
    _os_log_debug_impl(&dword_21EB05000, v4, OS_LOG_TYPE_DEBUG, "%@ animated: %@", buf, 0x16u);
  }

  [(CSCoverSheetViewControllerBase *)self setDisplayLayoutElementActive:1];
  if (([(CSCoverSheetViewControllerBase *)self shouldAutomaticallyForwardAppearanceMethods]& 1) == 0 && [(CSCoverSheetViewControllerBase *)self sendAppearanceTransitionForChildViewControllers])
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v5 = [(CSCoverSheetViewControllerBase *)self childViewControllers];
    v6 = [v5 countByEnumeratingWithState:&v12 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      do
      {
        v9 = 0;
        do
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(v5);
          }

          [(CSCoverSheetViewControllerBase *)self bs_endAppearanceTransitionForChildViewController:*(*(&v12 + 1) + 8 * v9++) toVisible:1];
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v12 objects:v17 count:16];
      }

      while (v7);
    }
  }

  [(CSCoverSheetViewControllerBase *)self rebuildEverythingForReason:@"ViewController Did Appear"];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v23 = *MEMORY[0x277D85DE8];
  v17.receiver = self;
  v17.super_class = CSCoverSheetViewControllerBase;
  [(CSCoverSheetViewControllerBase *)&v17 viewWillDisappear:?];
  v5 = SBLogDashBoard();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v11 = _SBFLoggingMethodProem();
    v12 = NSStringFromBOOL();
    *buf = 138412546;
    v20 = v11;
    v21 = 2112;
    v22 = v12;
    _os_log_debug_impl(&dword_21EB05000, v5, OS_LOG_TYPE_DEBUG, "%@ animated: %@", buf, 0x16u);
  }

  [(CSCoverSheetViewControllerBase *)self setDisplayLayoutElementActive:0];
  if (([(CSCoverSheetViewControllerBase *)self shouldAutomaticallyForwardAppearanceMethods]& 1) == 0 && [(CSCoverSheetViewControllerBase *)self sendAppearanceTransitionForChildViewControllers])
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = [(CSCoverSheetViewControllerBase *)self childViewControllers];
    v7 = [v6 countByEnumeratingWithState:&v13 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      do
      {
        v10 = 0;
        do
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [(CSCoverSheetViewControllerBase *)self bs_beginAppearanceTransitionForChildViewController:*(*(&v13 + 1) + 8 * v10++) toVisible:0 animated:v3];
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v13 objects:v18 count:16];
      }

      while (v8);
    }
  }
}

- (void)viewDidDisappear:(BOOL)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v16.receiver = self;
  v16.super_class = CSCoverSheetViewControllerBase;
  [(CSCoverSheetViewControllerBase *)&v16 viewDidDisappear:?];
  v4 = SBLogDashBoard();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v10 = _SBFLoggingMethodProem();
    v11 = NSStringFromBOOL();
    *buf = 138412546;
    v19 = v10;
    v20 = 2112;
    v21 = v11;
    _os_log_debug_impl(&dword_21EB05000, v4, OS_LOG_TYPE_DEBUG, "%@ animated: %@", buf, 0x16u);
  }

  if (([(CSCoverSheetViewControllerBase *)self shouldAutomaticallyForwardAppearanceMethods]& 1) == 0 && [(CSCoverSheetViewControllerBase *)self sendAppearanceTransitionForChildViewControllers])
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v5 = [(CSCoverSheetViewControllerBase *)self childViewControllers];
    v6 = [v5 countByEnumeratingWithState:&v12 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      do
      {
        v9 = 0;
        do
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(v5);
          }

          [(CSCoverSheetViewControllerBase *)self bs_endAppearanceTransitionForChildViewController:*(*(&v12 + 1) + 8 * v9++) toVisible:0];
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v12 objects:v17 count:16];
      }

      while (v7);
    }
  }
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  v10.receiver = self;
  v10.super_class = CSCoverSheetViewControllerBase;
  [(CSCoverSheetViewControllerBase *)&v10 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  if ([(CSCoverSheetViewControllerBase *)self _presentationParticipant])
  {
    v8[4] = self;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __85__CSCoverSheetViewControllerBase_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
    v9[3] = &unk_27838C938;
    v9[4] = self;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __85__CSCoverSheetViewControllerBase_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_2;
    v8[3] = &unk_27838C938;
    [v7 animateAlongsideTransition:v9 completion:v8];
  }
}

- (void)registerView:(id)a3 forRole:(int64_t)a4 options:(unint64_t)a5
{
  v5 = a5;
  v9 = a3;
  if (a4)
  {
    if (!v9)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v13 = v9;
    [CSCoverSheetViewControllerBase registerView:a2 forRole:self options:?];
    v9 = v13;
    if (!v13)
    {
      goto LABEL_6;
    }
  }

  v12 = v9;
  if (!self->_regionProviders)
  {
    v10 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    regionProviders = self->_regionProviders;
    self->_regionProviders = v10;
  }

  [v12 setCoverSheetRegionRole:a4];
  [v12 setCoverSheetRegionReservedForHorizontalScrolling:v5 & 1];
  [(NSHashTable *)self->_regionProviders addObject:v12];
  v9 = v12;
LABEL_6:
}

- (void)unregisterView:(id)a3
{
  v4 = a3;
  [v4 setCoverSheetRegionRole:0];
  [v4 setCoverSheetRegionReservedForHorizontalScrolling:0];
  [(NSHashTable *)self->_regionProviders removeObject:v4];
}

- (void)unregisterAllViews
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = self->_regionProviders;
  v4 = [(NSHashTable *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v9 + 1) + 8 * i);
        [v8 setCoverSheetRegionRole:{0, v9}];
        [v8 setCoverSheetRegionReservedForHorizontalScrolling:0];
      }

      v5 = [(NSHashTable *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  [(NSHashTable *)self->_regionProviders removeAllObjects];
}

- (void)rebuildEverythingForReason:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = SBLogDashBoard();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = _SBFLoggingMethodProem();
    v7 = 138412546;
    v8 = v6;
    v9 = 2112;
    v10 = v4;
    _os_log_debug_impl(&dword_21EB05000, v5, OS_LOG_TYPE_DEBUG, "%@ reason = %@", &v7, 0x16u);
  }

  [(CSCoverSheetViewControllerBase *)self rebuildAppearance];
  [(CSCoverSheetViewControllerBase *)self rebuildBehavior];
}

- (void)updateAppearance:(id)a3 completion:(id)a4
{
  v6 = a4;
  if (a3)
  {
    a3 = (*(a3 + 2))(a3, self->_appearance);
  }

  [(CSCoverSheetViewControllerBase *)self updateAppearanceForController:self withAnimationSettings:a3 completion:v6];
}

- (void)updateBehavior:(id)a3
{
  if (a3)
  {
    (*(a3 + 2))(a3, self->_behavior);
  }

  v4 = [(CSCoverSheetViewControllerBase *)self _presenter];
  [v4 updateBehaviorForController:self];
}

- (void)sendAction:(id)a3
{
  v4 = a3;
  v5 = [(CSCoverSheetViewControllerBase *)self _presenter];
  [v5 handleAction:v4 fromSender:self];
}

- (void)willTransitionToPresented:(BOOL)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = SBLogDashBoard();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = _SBFLoggingMethodProem();
    v8 = NSStringFromBOOL();
    v9 = 138412546;
    v10 = v7;
    v11 = 2112;
    v12 = v8;
    _os_log_debug_impl(&dword_21EB05000, v5, OS_LOG_TYPE_DEBUG, "%@ presented = %@", &v9, 0x16u);
  }

  v6 = a3 || self->_isBeingPresented;
  self->_isBeingPresented = v6;
}

- (void)didTransitionToPresented:(BOOL)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = SBLogDashBoard();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = _SBFLoggingMethodProem();
    v7 = NSStringFromBOOL();
    v8 = 138412546;
    v9 = v6;
    v10 = 2112;
    v11 = v7;
    _os_log_debug_impl(&dword_21EB05000, v5, OS_LOG_TYPE_DEBUG, "%@ presented = %@", &v8, 0x16u);
  }

  self->_isBeingPresented = a3;
}

- (void)updateForPresentation:(id)a3
{
  v49 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 presentationForRole:2];
  v35 = v4;
  v6 = [v4 presentationForRole:3];
  v37 = v5;
  [v5 unionPresentation:v6];

  [(CSCoverSheetViewControllerBase *)self _rebuildPresentation];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v7 = [(CSCoverSheetViewControllerBase *)self presentationRegions];
  v8 = [v7 countByEnumeratingWithState:&v38 objects:v48 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v39;
    do
    {
      v11 = 0;
      do
      {
        if (*v39 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v38 + 1) + 8 * v11);
        v13 = [v12 identity];
        v14 = objc_opt_class();
        v15 = v13;
        if (v14)
        {
          if (objc_opt_isKindOfClass())
          {
            v16 = v15;
          }

          else
          {
            v16 = 0;
          }
        }

        else
        {
          v16 = 0;
        }

        v17 = v16;

        if (v17)
        {
          regionProviders = self->_regionProviders;
          v19 = [v12 provider];
          LODWORD(regionProviders) = [(NSHashTable *)regionProviders containsObject:v19];

          if (regionProviders)
          {
            if ([v12 role] == 2)
            {
              [v37 firstRegionIntersectingCoordinateSpace:v17 excludingRegionsWithRole:3];
            }

            else
            {
              [v37 firstRegionIntersectingCoordinateSpace:v17];
            }
            v20 = ;
            if (v20)
            {
              v21 = SBLogDashBoard();
              if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
              {
                v32 = [MEMORY[0x277CF0C00] descriptionForObject:v17];
                *buf = 138412546;
                v43 = v32;
                v44 = 2112;
                v45 = v20;
                _os_log_debug_impl(&dword_21EB05000, v21, OS_LOG_TYPE_DEBUG, "View %@ intersects %@.", buf, 0x16u);
              }

              v22 = 0.0;
            }

            else
            {
              v22 = 1.0;
            }

            [v17 alpha];
            if ((BSFloatEqualToFloat() & 1) == 0)
            {
              [v17 setAlpha:v22];
              v23 = SBLogDashBoard();
              v24 = os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG);

              if (v24)
              {
                v25 = SBLogDashBoard();
                v26 = os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG);
                if (v20)
                {
                  if (v26)
                  {
                    v36 = [MEMORY[0x277CF0C00] descriptionForObject:v17];
                    v27 = [v37 identifier];
                    *buf = 138412802;
                    v43 = v36;
                    v44 = 2112;
                    v45 = v20;
                    v46 = 2112;
                    v47 = v27;
                    v28 = v27;
                    v29 = v25;
                    v30 = "Hiding view %@ because it intersects %@ within %@";
                    v31 = 32;
                    goto LABEL_32;
                  }
                }

                else if (v26)
                {
                  v36 = [MEMORY[0x277CF0C00] descriptionForObject:v17];
                  v33 = [v37 identifier];
                  *buf = 138412546;
                  v43 = v36;
                  v44 = 2112;
                  v45 = v33;
                  v28 = v33;
                  v29 = v25;
                  v30 = "Showing view %@ because it doesn't intersect any regions within %@.";
                  v31 = 22;
LABEL_32:
                  _os_log_debug_impl(&dword_21EB05000, v29, OS_LOG_TYPE_DEBUG, v30, buf, v31);
                }
              }
            }
          }
        }

        ++v11;
      }

      while (v9 != v11);
      v34 = [v7 countByEnumeratingWithState:&v38 objects:v48 count:16];
      v9 = v34;
    }

    while (v34);
  }

  [(CSCoverSheetViewControllerBase *)self _rebuildPresentation];
}

- (void)aggregateAppearance:(id)a3
{
  v8 = a3;
  v3 = [v8 legibilitySettings];

  if (!v3)
  {
    v4 = [v8 componentForType:19 property:4];
    v5 = [v4 value];
    v6 = [v5 integerValue];

    v7 = CSGetLegibilitySettingsForBackgroundStyle(v6);
    if (v7)
    {
      [v8 setLegibilitySettings:v7];
    }
  }
}

- (void)aggregatePresentation:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(CSCoverSheetViewControllerBase *)self externalPresentation];
  [v4 unionPresentation:v5];

  v6 = [MEMORY[0x277CBEB18] array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = self->_regionProviders;
  v8 = [(NSHashTable *)v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [(CSCoverSheetViewControllerBase *)self _regionsForView:*(*(&v13 + 1) + 8 * v11), v13];
        [v6 addObjectsFromArray:v12];

        ++v11;
      }

      while (v9 != v11);
      v9 = [(NSHashTable *)v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  [v4 addRegions:v6];
}

- (void)performCustomTransitionToVisible:(BOOL)a3 withAnimationSettings:(id)a4 completion:(id)a5
{
  if (a5)
  {
    (*(a5 + 2))(a5);
  }
}

- (void)_updateDisplayLayoutElementForActivation:(id)a3
{
  v4 = a3;
  v7 = [(CSCoverSheetViewControllerBase *)self view];
  v5 = [v7 window];
  [v5 level];
  [v4 setLevel:v6];
}

- (void)_setDisplayLayoutElementActive:(BOOL)a3 immediately:(BOOL)a4
{
  v4 = a4;
  [(CSCoverSheetViewControllerBase *)self setDisplayLayoutElementActive:a3];
  if (v4 && self->_displayLayoutElement)
  {
    v6 = [(CSCoverSheetViewControllerBase *)self _displayLayoutPublisher];
    [v6 flush];
  }
}

- (id)_timelinesForDateInterval:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v18.receiver = self;
  v18.super_class = CSCoverSheetViewControllerBase;
  v5 = [(CSCoverSheetViewControllerBase *)&v18 _timelinesForDateInterval:v4];
  v6 = [v5 mutableCopy];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = [(CSCoverSheetViewControllerBase *)self childViewControllers];
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v14 + 1) + 8 * i) _timelinesForDateInterval:v4];
        if (v12)
        {
          [v6 addObjectsFromArray:v12];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v14 objects:v19 count:16];
    }

    while (v9);
  }

  return v6;
}

- (void)_updateWithFrameSpecifier:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v14.receiver = self;
  v14.super_class = CSCoverSheetViewControllerBase;
  [(CSCoverSheetViewControllerBase *)&v14 _updateWithFrameSpecifier:v4];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = [(CSCoverSheetViewControllerBase *)self childViewControllers];
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v9++) _updateWithFrameSpecifier:v4];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)updateBehaviorForController:(id)a3
{
  v4 = a3;
  if ([(CSCoverSheetViewControllerBase *)self _rebuildBehavior])
  {
    v5 = [(CSCoverSheetViewControllerBase *)self _presenter];
    [v5 updateBehaviorForController:self];
  }

  else
  {
    v5 = SBLogDashBoard();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [(CSCoverSheetViewControllerBase *)self updateBehaviorForController:v4];
    }
  }
}

- (void)updateAppearanceForController:(id)a3 withAnimationSettings:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = [MEMORY[0x277D75D18] _currentAnimationSettings];
  }

  v12 = v11;
  v17 = v11;
  v13 = [(CSCoverSheetViewControllerBase *)self handleAppearanceUpdateFromController:v8 animationSettings:&v17];
  v14 = v17;

  if (v13)
  {
    v15 = [(CSCoverSheetViewControllerBase *)self _presenter];
    [v15 updateAppearanceForController:self withAnimationSettings:v14 completion:v10];
  }

  else
  {
    v16 = SBLogDashBoard();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      [CSCoverSheetViewControllerBase updateAppearanceForController:v8 withAnimationSettings:? completion:?];
    }

    if (v10)
    {
      v10[2](v10, 0);
    }
  }
}

- (void)handleAction:(id)a3 fromSender:(id)a4
{
  v8 = a3;
  v6 = a4;
  if ((objc_opt_respondsToSelector() & 1) != 0 && ![(CSCoverSheetViewControllerBase *)self handleAction:v8 fromController:v6])
  {
    v7 = [(CSCoverSheetViewControllerBase *)self _presenter];
    [v7 handleAction:v8 fromSender:v6];
  }
}

- (BOOL)handleEvent:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (([v4 type] - 5) <= 2)
  {
    [(BSInvalidatable *)self->_displayLayoutElementAssertion invalidate];
    displayLayoutElementAssertion = self->_displayLayoutElementAssertion;
    self->_displayLayoutElementAssertion = 0;
  }

  if (([v4 isConsumable] & 1) == 0)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = [(CSCoverSheetViewControllerBase *)self childViewControllers];
    v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      do
      {
        v10 = 0;
        do
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v13 + 1) + 8 * v10);
          if (objc_opt_respondsToSelector())
          {
            [v11 handleEvent:v4];
          }

          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v8);
    }
  }

  return 0;
}

- (void)updateDisplayLayoutElementWithBuilder:(id)a3
{
  v13 = a3;
  v5 = [(CSCoverSheetViewControllerBase *)self _displayLayoutElement];
  if (v5)
  {
    if (self->_displayLayoutElementAssertion)
    {
      v6 = [(CSCoverSheetViewControllerBase *)self _displayLayoutPublisher];
      if (!v6)
      {
        [(CSCoverSheetViewControllerBase *)a2 updateDisplayLayoutElementWithBuilder:?];
      }

      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v9 = [v6 transitionAssertionWithReason:v8];

      [(BSInvalidatable *)self->_displayLayoutElementAssertion invalidate];
      displayLayoutElementAssertion = self->_displayLayoutElementAssertion;
      self->_displayLayoutElementAssertion = 0;

      v13[2](v13, v5);
      v11 = [v6 addElement:v5];
      v12 = self->_displayLayoutElementAssertion;
      self->_displayLayoutElementAssertion = v11;

      [v9 invalidate];
    }

    else
    {
      v13[2](v13, v5);
    }
  }
}

- (void)setDisplayLayoutElementActive:(BOOL)a3
{
  v3 = a3;
  v6 = [(CSCoverSheetViewControllerBase *)self _displayLayoutElement];
  if (v6)
  {
    v14 = v6;
    v7 = [(CSCoverSheetViewControllerBase *)self _displayLayoutPublisher];
    if (!v7)
    {
      [(CSCoverSheetViewControllerBase *)a2 setDisplayLayoutElementActive:?];
    }

    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = [v7 transitionAssertionWithReason:v9];

    [(BSInvalidatable *)self->_displayLayoutElementAssertion invalidate];
    displayLayoutElementAssertion = self->_displayLayoutElementAssertion;
    self->_displayLayoutElementAssertion = 0;

    if (v3)
    {
      [(CSCoverSheetViewControllerBase *)self _updateDisplayLayoutElementForActivation:v14];
      v12 = [v7 addElement:v14];
      v13 = self->_displayLayoutElementAssertion;
      self->_displayLayoutElementAssertion = v12;
    }

    [v10 invalidate];

    v6 = v14;
  }
}

- (id)succinctDescription
{
  v2 = [(CSCoverSheetViewControllerBase *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [(CSCoverSheetViewControllerBase *)self _displayLayoutElement];
  v5 = [v4 identifier];
  v6 = [v3 appendObject:v5 withName:@"layoutID" skipIfNil:1];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(CSCoverSheetViewControllerBase *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = a3;
  v5 = [(CSCoverSheetViewControllerBase *)self succinctDescriptionBuilder];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __72__CSCoverSheetViewControllerBase_descriptionBuilderWithMultilinePrefix___block_invoke;
  v9[3] = &unk_27838B838;
  v6 = v5;
  v10 = v6;
  v11 = self;
  [v6 appendBodySectionWithName:0 multilinePrefix:v4 block:v9];

  v7 = v6;
  return v6;
}

id __72__CSCoverSheetViewControllerBase_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x277CF0C00];
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) _presenter];
  v5 = [v2 descriptionForObject:v4];
  v6 = [v3 appendObject:v5 withName:@"presenter"];

  v7 = *(a1 + 32);
  v8 = [*(a1 + 40) viewIfLoaded];
  v9 = [v7 appendObject:v8 withName:@"view"];

  v10 = *(a1 + 32);
  [*(a1 + 40) _appearState];
  v11 = SBFStringForAppearState();
  v12 = [v10 appendObject:v11 withName:@"appearState"];

  v13 = *(a1 + 32);
  v14 = [*(a1 + 40) childViewControllers];
  [v13 appendArraySection:v14 withName:@"childViewControllers" skipIfEmpty:1];

  v15 = [*(a1 + 32) appendInteger:objc_msgSend(*(a1 + 40) withName:{"presentationStyle"), @"presentationStyle"}];
  v16 = [*(a1 + 32) appendInteger:objc_msgSend(*(a1 + 40) withName:{"presentationType"), @"presentationType"}];
  v17 = [*(a1 + 32) appendInteger:objc_msgSend(*(a1 + 40) withName:{"presentationPriority"), @"presentationPriority"}];
  v18 = [*(a1 + 32) appendInteger:objc_msgSend(*(a1 + 40) withName:{"presentationTransition"), @"presentationTransition"}];
  v19 = *(a1 + 32);
  v20 = [*(*(a1 + 40) + 1040) allObjects];
  v21 = [*(a1 + 32) activeMultilinePrefix];
  [v19 appendArraySection:v20 withName:@"regionProviders" multilinePrefix:v21 skipIfEmpty:1 objectTransformer:&__block_literal_global_98];

  v22 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 992) withName:@"appearance"];
  v23 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 1000) withName:@"behavior"];
  return [*(a1 + 32) appendObject:*(*(a1 + 40) + 1008) withName:@"presentation" skipIfNil:1];
}

- (id)_regionsForView:(id)a3
{
  v45[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 superview];
  v6 = v5;
  v7 = 0;
  if (v4 && v5)
  {
    if ([v4 isCoverSheetView])
    {
      v8 = [v4 presentationRegions];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = v4;
        v10 = [v9 superview];
        [(CSCoverSheetViewControllerBase *)self effectiveContentSizeForScrollView:v9];
        BSRectWithSize();
        [v9 convertRect:v10 toView:?];
        v12 = v11;
        v14 = v13;
        v16 = v15;
        v18 = v17;
        [v9 frame];
        v49.origin.x = v19;
        v49.origin.y = v20;
        v49.size.width = v21;
        v49.size.height = v22;
        v47.origin.x = v12;
        v47.origin.y = v14;
        v47.size.width = v16;
        v47.size.height = v18;
        v48 = CGRectIntersection(v47, v49);
        [v9 convertRect:v10 fromView:{v48.origin.x, v48.origin.y, v48.size.width, v48.size.height}];
        v23 = [CSRegion regionForCoordinateSpace:v9 withExtent:?];

        v45[0] = v23;
        v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v45 count:1];
      }

      else
      {
        [v4 bounds];
        v10 = [CSRegion regionForCoordinateSpace:v4 withExtent:?];
        v44 = v10;
        v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v44 count:1];
      }
    }

    v38 = [v4 coverSheetRegionRole];
    v24 = [v4 coverSheetRegionIsReservedForHorizontalScrolling];
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v7 = v8;
    v25 = [v7 countByEnumeratingWithState:&v39 objects:v43 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v40;
      do
      {
        for (i = 0; i != v26; ++i)
        {
          if (*v40 != v27)
          {
            objc_enumerationMutation(v7);
          }

          v29 = *(*(&v39 + 1) + 8 * i);
          v30 = [v29 identity];
          v31 = objc_opt_class();
          v32 = v30;
          if (v31)
          {
            if (objc_opt_isKindOfClass())
            {
              v33 = v32;
            }

            else
            {
              v33 = 0;
            }
          }

          else
          {
            v33 = 0;
          }

          v34 = v33;

          if ([v29 role])
          {
            if (!v34)
            {
              goto LABEL_27;
            }
          }

          else
          {
            [v29 setRole:v38];
            if (!v34)
            {
              goto LABEL_27;
            }
          }

          [v34 alpha];
          if (BSFloatIsZero())
          {
            v35 = 1;
          }

          else
          {
            v35 = [v34 isHidden];
          }

          [v29 setHidden:v35];
LABEL_27:
          if (([v29 isReservedForHorizontalScrolling] & 1) == 0)
          {
            [v29 setReservedForHorizontalScrolling:v24];
          }

          [v29 setProvider:v4];
        }

        v26 = [v7 countByEnumeratingWithState:&v39 objects:v43 count:16];
      }

      while (v26);
    }

    v6 = v37;
  }

  return v7;
}

- (CGSize)effectiveContentSizeForScrollView:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 collectionViewLayout];

    [v4 collectionViewContentSize];
    v6 = v5;
    v8 = v7;
    v3 = v4;
  }

  else
  {
    [v3 contentSize];
    v6 = v9;
    v8 = v10;
  }

  v11 = v6;
  v12 = v8;
  result.height = v12;
  result.width = v11;
  return result;
}

- (CSCoverSheetViewPresenting)presenter
{
  WeakRetained = objc_loadWeakRetained(&self->_presenter);

  return WeakRetained;
}

- (void)initWithNibName:bundle:.cold.1()
{
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_2_2();
  v0 = _SBFLoggingMethodProem();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_5();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

- (void)registerView:(uint64_t)a1 forRole:(uint64_t)a2 options:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"CSCoverSheetViewControllerBase.m" lineNumber:193 description:{@"Invalid parameter not satisfying: %@", @"role != CSRegionRoleNone"}];
}

- (void)updateBehaviorForController:(uint64_t)a1 .cold.1(uint64_t a1, void *a2)
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [a2 coverSheetIdentifier];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_5();
  _os_log_debug_impl(v6, v7, v8, v9, v10, 0x16u);
}

- (void)updateAppearanceForController:(uint64_t)a1 withAnimationSettings:(void *)a2 completion:.cold.1(uint64_t a1, void *a2)
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [a2 coverSheetIdentifier];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_5();
  _os_log_debug_impl(v6, v7, v8, v9, v10, 0x16u);
}

- (void)updateDisplayLayoutElementWithBuilder:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"CSCoverSheetViewControllerBase.m" lineNumber:717 description:@"No publisher"];
}

- (void)setDisplayLayoutElementActive:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"CSCoverSheetViewControllerBase.m" lineNumber:744 description:@"No publisher"];
}

@end