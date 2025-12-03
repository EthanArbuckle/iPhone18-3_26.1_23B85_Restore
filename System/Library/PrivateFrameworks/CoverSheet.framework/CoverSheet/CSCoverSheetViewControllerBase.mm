@interface CSCoverSheetViewControllerBase
- (BOOL)_presentationParticipant;
- (BOOL)_rebuildAppearance;
- (BOOL)_rebuildBehavior;
- (BOOL)_rebuildPresentation;
- (BOOL)handleEvent:(id)event;
- (CAFrameRateRange)presentationPreferredFrameRateRange;
- (CGSize)effectiveContentSizeForScrollView:(id)view;
- (CSAppearance)activeAppearance;
- (CSBehavior)activeBehavior;
- (CSCoverSheetViewControllerBase)initWithNibName:(id)name bundle:(id)bundle;
- (CSCoverSheetViewPresenting)presenter;
- (CSPresentation)externalPresentation;
- (NSString)coverSheetIdentifier;
- (SBSDisplayLayoutElement)_displayLayoutElement;
- (UIViewController)kitPresentedViewController;
- (id)_presenter;
- (id)_regionsForView:(id)view;
- (id)_timelinesForDateInterval:(id)interval;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (int64_t)participantState;
- (void)_layoutIfNeededForPresentation;
- (void)_rebuildDisposition;
- (void)_setDisplayLayoutElementActive:(BOOL)active immediately:(BOOL)immediately;
- (void)_updateDisplayLayoutElementForActivation:(id)activation;
- (void)_updateWithFrameSpecifier:(id)specifier;
- (void)aggregateAppearance:(id)appearance;
- (void)aggregatePresentation:(id)presentation;
- (void)dealloc;
- (void)didTransitionToPresented:(BOOL)presented;
- (void)dismiss;
- (void)handleAction:(id)action fromSender:(id)sender;
- (void)loadView;
- (void)performCustomTransitionToVisible:(BOOL)visible withAnimationSettings:(id)settings completion:(id)completion;
- (void)rebuildEverythingForReason:(id)reason;
- (void)registerView:(id)view forRole:(int64_t)role options:(unint64_t)options;
- (void)sendAction:(id)action;
- (void)setDisplayLayoutElementActive:(BOOL)active;
- (void)unregisterAllViews;
- (void)unregisterView:(id)view;
- (void)updateAppearance:(id)appearance completion:(id)completion;
- (void)updateAppearanceForController:(id)controller withAnimationSettings:(id)settings completion:(id)completion;
- (void)updateBehavior:(id)behavior;
- (void)updateBehaviorForController:(id)controller;
- (void)updateDisplayLayoutElementWithBuilder:(id)builder;
- (void)updateForPresentation:(id)presentation;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
- (void)willTransitionToPresented:(BOOL)presented;
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
    navigationController = WeakRetained;
  }

  else
  {
    navigationController = [(CSCoverSheetViewControllerBase *)self navigationController];
    if (navigationController)
    {
      navigationController2 = [(CSCoverSheetViewControllerBase *)self navigationController];
      parentViewController = [navigationController2 parentViewController];
      v12 = objc_opt_respondsToSelector();

      if (v12)
      {
        navigationController3 = [(CSCoverSheetViewControllerBase *)self navigationController];
        navigationController = [navigationController3 parentViewController];
      }

      else
      {
        navigationController = 0;
      }
    }
  }

  return navigationController;
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

  viewIfLoaded = [(CSCoverSheetViewControllerBase *)self viewIfLoaded];
  window = [viewIfLoaded window];
  v5 = window != 0;

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
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen bounds];
  v8 = [v3 initWithFrame:?];

  layer = [v8 layer];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  [layer setName:v7];

  [v8 setAutoresizingMask:18];
  [v8 setAutoresizesSubviews:1];
  [(CSCoverSheetViewControllerBase *)self setView:v8];
}

- (void)viewDidLoad
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"_bs_assert_object != nil"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(self);
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
  identifier = [(CSAppearance *)self->_appearance identifier];
  v4 = [CSAppearance appearanceWithIdentifier:identifier];

  [(CSCoverSheetViewControllerBase *)self aggregateAppearance:v4];
  _rebuildPresentation = [(CSCoverSheetViewControllerBase *)self _rebuildPresentation];
  if (![(CSAppearance *)self->_appearance isEqualToAppearance:v4])
  {
    objc_storeStrong(&self->_appearance, v4);
    _rebuildPresentation = 1;
  }

  return _rebuildPresentation;
}

- (BOOL)_rebuildPresentation
{
  if (![(CSCoverSheetViewControllerBase *)self _presentationParticipant])
  {
    return 0;
  }

  coordinateSpace = [(CSPresentation *)self->_presentation coordinateSpace];
  view = [(CSCoverSheetViewControllerBase *)self view];
  window = [view window];

  if (coordinateSpace != window)
  {
    view2 = [(CSCoverSheetViewControllerBase *)self view];
    window2 = [view2 window];
    v8 = [CSPresentation presentationWithCoordinateSpace:window2];
    presentation = self->_presentation;
    self->_presentation = v8;

    v10 = self->_presentation;
    coverSheetIdentifier = [(CSCoverSheetViewControllerBase *)self coverSheetIdentifier];
    [(CSPresentation *)v10 setIdentifier:coverSheetIdentifier];
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
    _newDisplayLayoutElement = [(CSCoverSheetViewControllerBase *)self _newDisplayLayoutElement];
    v5 = self->_displayLayoutElement;
    self->_displayLayoutElement = _newDisplayLayoutElement;

    displayLayoutElement = self->_displayLayoutElement;
  }

  return displayLayoutElement;
}

- (void)_layoutIfNeededForPresentation
{
  if ([(CSCoverSheetViewControllerBase *)self _appearState])
  {
    self->_forcingLayoutForPresentation = 1;
    view = [(CSCoverSheetViewControllerBase *)self view];
    [view layoutIfNeeded];

    self->_forcingLayoutForPresentation = 0;
  }
}

- (CSPresentation)externalPresentation
{
  _presenter = [(CSCoverSheetViewControllerBase *)self _presenter];
  externalPresentation = [_presenter externalPresentation];

  return externalPresentation;
}

- (CSAppearance)activeAppearance
{
  _presenter = [(CSCoverSheetViewControllerBase *)self _presenter];
  activeAppearance = [_presenter activeAppearance];

  return activeAppearance;
}

- (CSBehavior)activeBehavior
{
  _presenter = [(CSCoverSheetViewControllerBase *)self _presenter];
  activeBehavior = [_presenter activeBehavior];

  return activeBehavior;
}

- (UIViewController)kitPresentedViewController
{
  v4.receiver = self;
  v4.super_class = CSCoverSheetViewControllerBase;
  presentedViewController = [(CSCoverSheetViewControllerBase *)&v4 presentedViewController];

  return presentedViewController;
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

- (CSCoverSheetViewControllerBase)initWithNibName:(id)name bundle:(id)bundle
{
  v12.receiver = self;
  v12.super_class = CSCoverSheetViewControllerBase;
  v4 = [(CSCoverSheetViewControllerBase *)&v12 initWithNibName:name bundle:bundle];
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

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
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
    childViewControllers = [(CSCoverSheetViewControllerBase *)self childViewControllers];
    v7 = [childViewControllers countByEnumeratingWithState:&v13 objects:v18 count:16];
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
            objc_enumerationMutation(childViewControllers);
          }

          [(CSCoverSheetViewControllerBase *)self bs_beginAppearanceTransitionForChildViewController:*(*(&v13 + 1) + 8 * v10++) toVisible:1 animated:appearCopy];
        }

        while (v8 != v10);
        v8 = [childViewControllers countByEnumeratingWithState:&v13 objects:v18 count:16];
      }

      while (v8);
    }
  }
}

- (void)viewDidAppear:(BOOL)appear
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
    childViewControllers = [(CSCoverSheetViewControllerBase *)self childViewControllers];
    v6 = [childViewControllers countByEnumeratingWithState:&v12 objects:v17 count:16];
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
            objc_enumerationMutation(childViewControllers);
          }

          [(CSCoverSheetViewControllerBase *)self bs_endAppearanceTransitionForChildViewController:*(*(&v12 + 1) + 8 * v9++) toVisible:1];
        }

        while (v7 != v9);
        v7 = [childViewControllers countByEnumeratingWithState:&v12 objects:v17 count:16];
      }

      while (v7);
    }
  }

  [(CSCoverSheetViewControllerBase *)self rebuildEverythingForReason:@"ViewController Did Appear"];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
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
    childViewControllers = [(CSCoverSheetViewControllerBase *)self childViewControllers];
    v7 = [childViewControllers countByEnumeratingWithState:&v13 objects:v18 count:16];
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
            objc_enumerationMutation(childViewControllers);
          }

          [(CSCoverSheetViewControllerBase *)self bs_beginAppearanceTransitionForChildViewController:*(*(&v13 + 1) + 8 * v10++) toVisible:0 animated:disappearCopy];
        }

        while (v8 != v10);
        v8 = [childViewControllers countByEnumeratingWithState:&v13 objects:v18 count:16];
      }

      while (v8);
    }
  }
}

- (void)viewDidDisappear:(BOOL)disappear
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
    childViewControllers = [(CSCoverSheetViewControllerBase *)self childViewControllers];
    v6 = [childViewControllers countByEnumeratingWithState:&v12 objects:v17 count:16];
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
            objc_enumerationMutation(childViewControllers);
          }

          [(CSCoverSheetViewControllerBase *)self bs_endAppearanceTransitionForChildViewController:*(*(&v12 + 1) + 8 * v9++) toVisible:0];
        }

        while (v7 != v9);
        v7 = [childViewControllers countByEnumeratingWithState:&v12 objects:v17 count:16];
      }

      while (v7);
    }
  }
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  coordinatorCopy = coordinator;
  v10.receiver = self;
  v10.super_class = CSCoverSheetViewControllerBase;
  [(CSCoverSheetViewControllerBase *)&v10 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
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
    [coordinatorCopy animateAlongsideTransition:v9 completion:v8];
  }
}

- (void)registerView:(id)view forRole:(int64_t)role options:(unint64_t)options
{
  optionsCopy = options;
  viewCopy = view;
  if (role)
  {
    if (!viewCopy)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v13 = viewCopy;
    [CSCoverSheetViewControllerBase registerView:a2 forRole:self options:?];
    viewCopy = v13;
    if (!v13)
    {
      goto LABEL_6;
    }
  }

  v12 = viewCopy;
  if (!self->_regionProviders)
  {
    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    regionProviders = self->_regionProviders;
    self->_regionProviders = weakObjectsHashTable;
  }

  [v12 setCoverSheetRegionRole:role];
  [v12 setCoverSheetRegionReservedForHorizontalScrolling:optionsCopy & 1];
  [(NSHashTable *)self->_regionProviders addObject:v12];
  viewCopy = v12;
LABEL_6:
}

- (void)unregisterView:(id)view
{
  viewCopy = view;
  [viewCopy setCoverSheetRegionRole:0];
  [viewCopy setCoverSheetRegionReservedForHorizontalScrolling:0];
  [(NSHashTable *)self->_regionProviders removeObject:viewCopy];
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

- (void)rebuildEverythingForReason:(id)reason
{
  v11 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  v5 = SBLogDashBoard();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = _SBFLoggingMethodProem();
    v7 = 138412546;
    v8 = v6;
    v9 = 2112;
    v10 = reasonCopy;
    _os_log_debug_impl(&dword_21EB05000, v5, OS_LOG_TYPE_DEBUG, "%@ reason = %@", &v7, 0x16u);
  }

  [(CSCoverSheetViewControllerBase *)self rebuildAppearance];
  [(CSCoverSheetViewControllerBase *)self rebuildBehavior];
}

- (void)updateAppearance:(id)appearance completion:(id)completion
{
  completionCopy = completion;
  if (appearance)
  {
    appearance = (*(appearance + 2))(appearance, self->_appearance);
  }

  [(CSCoverSheetViewControllerBase *)self updateAppearanceForController:self withAnimationSettings:appearance completion:completionCopy];
}

- (void)updateBehavior:(id)behavior
{
  if (behavior)
  {
    (*(behavior + 2))(behavior, self->_behavior);
  }

  _presenter = [(CSCoverSheetViewControllerBase *)self _presenter];
  [_presenter updateBehaviorForController:self];
}

- (void)sendAction:(id)action
{
  actionCopy = action;
  _presenter = [(CSCoverSheetViewControllerBase *)self _presenter];
  [_presenter handleAction:actionCopy fromSender:self];
}

- (void)willTransitionToPresented:(BOOL)presented
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

  v6 = presented || self->_isBeingPresented;
  self->_isBeingPresented = v6;
}

- (void)didTransitionToPresented:(BOOL)presented
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

  self->_isBeingPresented = presented;
}

- (void)updateForPresentation:(id)presentation
{
  v49 = *MEMORY[0x277D85DE8];
  presentationCopy = presentation;
  v5 = [presentationCopy presentationForRole:2];
  v35 = presentationCopy;
  v6 = [presentationCopy presentationForRole:3];
  v37 = v5;
  [v5 unionPresentation:v6];

  [(CSCoverSheetViewControllerBase *)self _rebuildPresentation];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  presentationRegions = [(CSCoverSheetViewControllerBase *)self presentationRegions];
  v8 = [presentationRegions countByEnumeratingWithState:&v38 objects:v48 count:16];
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
          objc_enumerationMutation(presentationRegions);
        }

        v12 = *(*(&v38 + 1) + 8 * v11);
        identity = [v12 identity];
        v14 = objc_opt_class();
        v15 = identity;
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
          provider = [v12 provider];
          LODWORD(regionProviders) = [(NSHashTable *)regionProviders containsObject:provider];

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
                    identifier = [v37 identifier];
                    *buf = 138412802;
                    v43 = v36;
                    v44 = 2112;
                    v45 = v20;
                    v46 = 2112;
                    v47 = identifier;
                    v28 = identifier;
                    v29 = v25;
                    v30 = "Hiding view %@ because it intersects %@ within %@";
                    v31 = 32;
                    goto LABEL_32;
                  }
                }

                else if (v26)
                {
                  v36 = [MEMORY[0x277CF0C00] descriptionForObject:v17];
                  identifier2 = [v37 identifier];
                  *buf = 138412546;
                  v43 = v36;
                  v44 = 2112;
                  v45 = identifier2;
                  v28 = identifier2;
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
      v34 = [presentationRegions countByEnumeratingWithState:&v38 objects:v48 count:16];
      v9 = v34;
    }

    while (v34);
  }

  [(CSCoverSheetViewControllerBase *)self _rebuildPresentation];
}

- (void)aggregateAppearance:(id)appearance
{
  appearanceCopy = appearance;
  legibilitySettings = [appearanceCopy legibilitySettings];

  if (!legibilitySettings)
  {
    v4 = [appearanceCopy componentForType:19 property:4];
    value = [v4 value];
    integerValue = [value integerValue];

    v7 = CSGetLegibilitySettingsForBackgroundStyle(integerValue);
    if (v7)
    {
      [appearanceCopy setLegibilitySettings:v7];
    }
  }
}

- (void)aggregatePresentation:(id)presentation
{
  v18 = *MEMORY[0x277D85DE8];
  presentationCopy = presentation;
  externalPresentation = [(CSCoverSheetViewControllerBase *)self externalPresentation];
  [presentationCopy unionPresentation:externalPresentation];

  array = [MEMORY[0x277CBEB18] array];
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
        [array addObjectsFromArray:v12];

        ++v11;
      }

      while (v9 != v11);
      v9 = [(NSHashTable *)v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  [presentationCopy addRegions:array];
}

- (void)performCustomTransitionToVisible:(BOOL)visible withAnimationSettings:(id)settings completion:(id)completion
{
  if (completion)
  {
    (*(completion + 2))(completion);
  }
}

- (void)_updateDisplayLayoutElementForActivation:(id)activation
{
  activationCopy = activation;
  view = [(CSCoverSheetViewControllerBase *)self view];
  window = [view window];
  [window level];
  [activationCopy setLevel:v6];
}

- (void)_setDisplayLayoutElementActive:(BOOL)active immediately:(BOOL)immediately
{
  immediatelyCopy = immediately;
  [(CSCoverSheetViewControllerBase *)self setDisplayLayoutElementActive:active];
  if (immediatelyCopy && self->_displayLayoutElement)
  {
    _displayLayoutPublisher = [(CSCoverSheetViewControllerBase *)self _displayLayoutPublisher];
    [_displayLayoutPublisher flush];
  }
}

- (id)_timelinesForDateInterval:(id)interval
{
  v20 = *MEMORY[0x277D85DE8];
  intervalCopy = interval;
  v18.receiver = self;
  v18.super_class = CSCoverSheetViewControllerBase;
  v5 = [(CSCoverSheetViewControllerBase *)&v18 _timelinesForDateInterval:intervalCopy];
  v6 = [v5 mutableCopy];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  childViewControllers = [(CSCoverSheetViewControllerBase *)self childViewControllers];
  v8 = [childViewControllers countByEnumeratingWithState:&v14 objects:v19 count:16];
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
          objc_enumerationMutation(childViewControllers);
        }

        v12 = [*(*(&v14 + 1) + 8 * i) _timelinesForDateInterval:intervalCopy];
        if (v12)
        {
          [v6 addObjectsFromArray:v12];
        }
      }

      v9 = [childViewControllers countByEnumeratingWithState:&v14 objects:v19 count:16];
    }

    while (v9);
  }

  return v6;
}

- (void)_updateWithFrameSpecifier:(id)specifier
{
  v16 = *MEMORY[0x277D85DE8];
  specifierCopy = specifier;
  v14.receiver = self;
  v14.super_class = CSCoverSheetViewControllerBase;
  [(CSCoverSheetViewControllerBase *)&v14 _updateWithFrameSpecifier:specifierCopy];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  childViewControllers = [(CSCoverSheetViewControllerBase *)self childViewControllers];
  v6 = [childViewControllers countByEnumeratingWithState:&v10 objects:v15 count:16];
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
          objc_enumerationMutation(childViewControllers);
        }

        [*(*(&v10 + 1) + 8 * v9++) _updateWithFrameSpecifier:specifierCopy];
      }

      while (v7 != v9);
      v7 = [childViewControllers countByEnumeratingWithState:&v10 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)updateBehaviorForController:(id)controller
{
  controllerCopy = controller;
  if ([(CSCoverSheetViewControllerBase *)self _rebuildBehavior])
  {
    _presenter = [(CSCoverSheetViewControllerBase *)self _presenter];
    [_presenter updateBehaviorForController:self];
  }

  else
  {
    _presenter = SBLogDashBoard();
    if (os_log_type_enabled(_presenter, OS_LOG_TYPE_DEBUG))
    {
      [(CSCoverSheetViewControllerBase *)self updateBehaviorForController:controllerCopy];
    }
  }
}

- (void)updateAppearanceForController:(id)controller withAnimationSettings:(id)settings completion:(id)completion
{
  controllerCopy = controller;
  settingsCopy = settings;
  completionCopy = completion;
  if (settingsCopy)
  {
    _currentAnimationSettings = settingsCopy;
  }

  else
  {
    _currentAnimationSettings = [MEMORY[0x277D75D18] _currentAnimationSettings];
  }

  v12 = _currentAnimationSettings;
  v17 = _currentAnimationSettings;
  v13 = [(CSCoverSheetViewControllerBase *)self handleAppearanceUpdateFromController:controllerCopy animationSettings:&v17];
  v14 = v17;

  if (v13)
  {
    _presenter = [(CSCoverSheetViewControllerBase *)self _presenter];
    [_presenter updateAppearanceForController:self withAnimationSettings:v14 completion:completionCopy];
  }

  else
  {
    v16 = SBLogDashBoard();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      [CSCoverSheetViewControllerBase updateAppearanceForController:controllerCopy withAnimationSettings:? completion:?];
    }

    if (completionCopy)
    {
      completionCopy[2](completionCopy, 0);
    }
  }
}

- (void)handleAction:(id)action fromSender:(id)sender
{
  actionCopy = action;
  senderCopy = sender;
  if ((objc_opt_respondsToSelector() & 1) != 0 && ![(CSCoverSheetViewControllerBase *)self handleAction:actionCopy fromController:senderCopy])
  {
    _presenter = [(CSCoverSheetViewControllerBase *)self _presenter];
    [_presenter handleAction:actionCopy fromSender:senderCopy];
  }
}

- (BOOL)handleEvent:(id)event
{
  v18 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  if (([eventCopy type] - 5) <= 2)
  {
    [(BSInvalidatable *)self->_displayLayoutElementAssertion invalidate];
    displayLayoutElementAssertion = self->_displayLayoutElementAssertion;
    self->_displayLayoutElementAssertion = 0;
  }

  if (([eventCopy isConsumable] & 1) == 0)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    childViewControllers = [(CSCoverSheetViewControllerBase *)self childViewControllers];
    v7 = [childViewControllers countByEnumeratingWithState:&v13 objects:v17 count:16];
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
            objc_enumerationMutation(childViewControllers);
          }

          v11 = *(*(&v13 + 1) + 8 * v10);
          if (objc_opt_respondsToSelector())
          {
            [v11 handleEvent:eventCopy];
          }

          ++v10;
        }

        while (v8 != v10);
        v8 = [childViewControllers countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v8);
    }
  }

  return 0;
}

- (void)updateDisplayLayoutElementWithBuilder:(id)builder
{
  builderCopy = builder;
  _displayLayoutElement = [(CSCoverSheetViewControllerBase *)self _displayLayoutElement];
  if (_displayLayoutElement)
  {
    if (self->_displayLayoutElementAssertion)
    {
      _displayLayoutPublisher = [(CSCoverSheetViewControllerBase *)self _displayLayoutPublisher];
      if (!_displayLayoutPublisher)
      {
        [(CSCoverSheetViewControllerBase *)a2 updateDisplayLayoutElementWithBuilder:?];
      }

      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v9 = [_displayLayoutPublisher transitionAssertionWithReason:v8];

      [(BSInvalidatable *)self->_displayLayoutElementAssertion invalidate];
      displayLayoutElementAssertion = self->_displayLayoutElementAssertion;
      self->_displayLayoutElementAssertion = 0;

      builderCopy[2](builderCopy, _displayLayoutElement);
      v11 = [_displayLayoutPublisher addElement:_displayLayoutElement];
      v12 = self->_displayLayoutElementAssertion;
      self->_displayLayoutElementAssertion = v11;

      [v9 invalidate];
    }

    else
    {
      builderCopy[2](builderCopy, _displayLayoutElement);
    }
  }
}

- (void)setDisplayLayoutElementActive:(BOOL)active
{
  activeCopy = active;
  _displayLayoutElement = [(CSCoverSheetViewControllerBase *)self _displayLayoutElement];
  if (_displayLayoutElement)
  {
    v14 = _displayLayoutElement;
    _displayLayoutPublisher = [(CSCoverSheetViewControllerBase *)self _displayLayoutPublisher];
    if (!_displayLayoutPublisher)
    {
      [(CSCoverSheetViewControllerBase *)a2 setDisplayLayoutElementActive:?];
    }

    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = [_displayLayoutPublisher transitionAssertionWithReason:v9];

    [(BSInvalidatable *)self->_displayLayoutElementAssertion invalidate];
    displayLayoutElementAssertion = self->_displayLayoutElementAssertion;
    self->_displayLayoutElementAssertion = 0;

    if (activeCopy)
    {
      [(CSCoverSheetViewControllerBase *)self _updateDisplayLayoutElementForActivation:v14];
      v12 = [_displayLayoutPublisher addElement:v14];
      v13 = self->_displayLayoutElementAssertion;
      self->_displayLayoutElementAssertion = v12;
    }

    [v10 invalidate];

    _displayLayoutElement = v14;
  }
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(CSCoverSheetViewControllerBase *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  _displayLayoutElement = [(CSCoverSheetViewControllerBase *)self _displayLayoutElement];
  identifier = [_displayLayoutElement identifier];
  v6 = [v3 appendObject:identifier withName:@"layoutID" skipIfNil:1];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(CSCoverSheetViewControllerBase *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  prefixCopy = prefix;
  succinctDescriptionBuilder = [(CSCoverSheetViewControllerBase *)self succinctDescriptionBuilder];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __72__CSCoverSheetViewControllerBase_descriptionBuilderWithMultilinePrefix___block_invoke;
  v9[3] = &unk_27838B838;
  v6 = succinctDescriptionBuilder;
  v10 = v6;
  selfCopy = self;
  [v6 appendBodySectionWithName:0 multilinePrefix:prefixCopy block:v9];

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

- (id)_regionsForView:(id)view
{
  v45[1] = *MEMORY[0x277D85DE8];
  viewCopy = view;
  superview = [viewCopy superview];
  v6 = superview;
  v7 = 0;
  if (viewCopy && superview)
  {
    if ([viewCopy isCoverSheetView])
    {
      presentationRegions = [viewCopy presentationRegions];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = viewCopy;
        superview2 = [v9 superview];
        [(CSCoverSheetViewControllerBase *)self effectiveContentSizeForScrollView:v9];
        BSRectWithSize();
        [v9 convertRect:superview2 toView:?];
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
        [v9 convertRect:superview2 fromView:{v48.origin.x, v48.origin.y, v48.size.width, v48.size.height}];
        v23 = [CSRegion regionForCoordinateSpace:v9 withExtent:?];

        v45[0] = v23;
        presentationRegions = [MEMORY[0x277CBEA60] arrayWithObjects:v45 count:1];
      }

      else
      {
        [viewCopy bounds];
        superview2 = [CSRegion regionForCoordinateSpace:viewCopy withExtent:?];
        v44 = superview2;
        presentationRegions = [MEMORY[0x277CBEA60] arrayWithObjects:&v44 count:1];
      }
    }

    coverSheetRegionRole = [viewCopy coverSheetRegionRole];
    coverSheetRegionIsReservedForHorizontalScrolling = [viewCopy coverSheetRegionIsReservedForHorizontalScrolling];
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v7 = presentationRegions;
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
          identity = [v29 identity];
          v31 = objc_opt_class();
          v32 = identity;
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
            [v29 setRole:coverSheetRegionRole];
            if (!v34)
            {
              goto LABEL_27;
            }
          }

          [v34 alpha];
          if (BSFloatIsZero())
          {
            isHidden = 1;
          }

          else
          {
            isHidden = [v34 isHidden];
          }

          [v29 setHidden:isHidden];
LABEL_27:
          if (([v29 isReservedForHorizontalScrolling] & 1) == 0)
          {
            [v29 setReservedForHorizontalScrolling:coverSheetRegionIsReservedForHorizontalScrolling];
          }

          [v29 setProvider:viewCopy];
        }

        v26 = [v7 countByEnumeratingWithState:&v39 objects:v43 count:16];
      }

      while (v26);
    }

    v6 = v37;
  }

  return v7;
}

- (CGSize)effectiveContentSizeForScrollView:(id)view
{
  viewCopy = view;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    collectionViewLayout = [viewCopy collectionViewLayout];

    [collectionViewLayout collectionViewContentSize];
    v6 = v5;
    v8 = v7;
    viewCopy = collectionViewLayout;
  }

  else
  {
    [viewCopy contentSize];
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