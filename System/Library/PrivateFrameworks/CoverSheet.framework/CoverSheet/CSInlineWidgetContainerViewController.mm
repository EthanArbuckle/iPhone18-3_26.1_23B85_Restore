@interface CSInlineWidgetContainerViewController
- (BOOL)interpretsViewAsContent:(id)content;
- (CSInlineWidgetContainerViewController)initWithComplicationManager:(id)manager inlineTextAlignment:(unint64_t)alignment;
- (CSInlineWidgetContainerViewControllerDelegate)delegate;
- (id)_buildComplicationPresentationStateForTraitCollection:(id)collection;
- (id)_currentState;
- (id)_hostViewControllerForComplicationDescriptor:(id)descriptor;
- (id)_widgetTintParameters;
- (id)sceneHostEnvironmentEntriesForBacklightSession;
- (void)_backlightLuminanceDidChange:(id)change previousTraitCollection:(id)collection;
- (void)_setTextParametersAndFontForWidgetController:(id)controller;
- (void)_updatePresentationStyleForReason:(id)reason;
- (void)_updatePresentationStyleForTransitionToNewTraitCollection:(id)collection reason:(id)reason;
- (void)beginCancellingTouches;
- (void)endCancellingTouches;
- (void)handleComplicationSelectionGesture:(id)gesture;
- (void)setLayoutStyle:(int64_t)style;
- (void)setScreenOff:(BOOL)off;
- (void)setTintColor:(id)color;
- (void)setVisible:(BOOL)visible;
- (void)setWidgetDescriptor:(id)descriptor;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewWillAppear:(BOOL)appear;
- (void)widgetHostViewController:(id)controller requestsLaunchWithAction:(id)action;
- (void)willTransitionToTraitCollection:(id)collection withTransitionCoordinator:(id)coordinator;
@end

@implementation CSInlineWidgetContainerViewController

- (CSInlineWidgetContainerViewController)initWithComplicationManager:(id)manager inlineTextAlignment:(unint64_t)alignment
{
  v15[1] = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  v14.receiver = self;
  v14.super_class = CSInlineWidgetContainerViewController;
  v8 = [(CSCoverSheetViewControllerBase *)&v14 initWithNibName:0 bundle:0];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_complicationManager, manager);
    v9->_inlineTextAlignment = alignment;
    v9->_layoutStyle = 0;
    v10 = objc_opt_self();
    v15[0] = v10;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
    v12 = [(CSInlineWidgetContainerViewController *)v9 registerForTraitChanges:v11 withAction:sel__backlightLuminanceDidChange_previousTraitCollection_];
  }

  return v9;
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = CSInlineWidgetContainerViewController;
  [(CSCoverSheetViewControllerBase *)&v4 viewWillAppear:appear];
  [(CSInlineWidgetContainerViewController *)self setVisible:1];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = CSInlineWidgetContainerViewController;
  [(CSCoverSheetViewControllerBase *)&v4 viewDidDisappear:disappear];
  [(CSInlineWidgetContainerViewController *)self setVisible:0];
}

- (void)setScreenOff:(BOOL)off
{
  if (self->_screenOff != off)
  {
    self->_screenOff = off;
    v5 = MEMORY[0x277CCACA8];
    v7 = NSStringFromBOOL();
    v6 = [v5 stringWithFormat:@"setScreenOff:%@", v7];
    [(CSInlineWidgetContainerViewController *)self _updatePresentationStyleForReason:v6];
  }
}

- (void)willTransitionToTraitCollection:(id)collection withTransitionCoordinator:(id)coordinator
{
  collectionCopy = collection;
  v11.receiver = self;
  v11.super_class = CSInlineWidgetContainerViewController;
  coordinatorCopy = coordinator;
  [(CSInlineWidgetContainerViewController *)&v11 willTransitionToTraitCollection:collectionCopy withTransitionCoordinator:coordinatorCopy];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __99__CSInlineWidgetContainerViewController_willTransitionToTraitCollection_withTransitionCoordinator___block_invoke;
  v9[3] = &unk_27838CAE8;
  v9[4] = self;
  v10 = collectionCopy;
  v8 = collectionCopy;
  [coordinatorCopy animateAlongsideTransition:v9 completion:&__block_literal_global_10];
}

- (void)_backlightLuminanceDidChange:(id)change previousTraitCollection:(id)collection
{
  traitCollection = [change traitCollection];
  v6 = NSStringFromSelector(a2);
  [(CSInlineWidgetContainerViewController *)self _updatePresentationStyleForTransitionToNewTraitCollection:traitCollection reason:v6];
}

- (void)setVisible:(BOOL)visible
{
  if (self->_isVisible != visible)
  {
    self->_isVisible = visible;
    v5 = MEMORY[0x277CCACA8];
    v7 = NSStringFromBOOL();
    v6 = [v5 stringWithFormat:@"setVisible:%@", v7];
    [(CSInlineWidgetContainerViewController *)self _updatePresentationStyleForReason:v6];
  }
}

- (void)setLayoutStyle:(int64_t)style
{
  if (self->_layoutStyle != style)
  {
    self->_layoutStyle = style;
    view = [(CSInlineWidgetContainerViewController *)self view];
    [view setNeedsLayout];
  }
}

- (void)viewDidLayoutSubviews
{
  v11.receiver = self;
  v11.super_class = CSInlineWidgetContainerViewController;
  [(CSCoverSheetViewControllerBase *)&v11 viewDidLayoutSubviews];
  view = [(CSComplicationWrapperViewController *)self->_widgetViewController view];
  view2 = [(CSInlineWidgetContainerViewController *)self view];
  [view2 bounds];
  [view setFrame:?];

  v5 = MEMORY[0x277CCACA8];
  widget = [(CSComplicationDescriptor *)self->_widgetDescriptor widget];
  extensionBundleIdentifier = [widget extensionBundleIdentifier];
  widget2 = [(CSComplicationDescriptor *)self->_widgetDescriptor widget];
  kind = [widget2 kind];
  v10 = [v5 stringWithFormat:@"%@:%@", extensionBundleIdentifier, kind];

  [view setAccessibilityIdentifier:v10];
  [view setAccessibilityValue:@"Widget"];
}

- (void)setWidgetDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  if ((BSEqualObjects() & 1) == 0)
  {
    if (self->_widgetDescriptor)
    {
      [(CSInlineWidgetContainerViewController *)self bs_removeChildViewController:self->_widgetViewController];
      widgetViewController = self->_widgetViewController;
      self->_widgetViewController = 0;
    }

    objc_storeStrong(&self->_widgetDescriptor, descriptor);
    v7 = [(CSInlineWidgetContainerViewController *)self _hostViewControllerForComplicationDescriptor:descriptorCopy];
    v8 = self->_widgetViewController;
    self->_widgetViewController = v7;

    [(CSInlineWidgetContainerViewController *)self loadViewIfNeeded];
    v9 = self->_widgetViewController;
    view = [(CSInlineWidgetContainerViewController *)self view];
    [(CSInlineWidgetContainerViewController *)self bs_addChildViewController:v9 withSuperview:view];

    v11 = NSStringFromSelector(a2);
    [(CSInlineWidgetContainerViewController *)self _updatePresentationStyleForReason:v11];
  }
}

- (id)sceneHostEnvironmentEntriesForBacklightSession
{
  widgetHostViewController = [(CSComplicationWrapperViewController *)self->_widgetViewController widgetHostViewController];
  backlightHostEnvironment = [widgetHostViewController backlightHostEnvironment];

  widgetHostViewController2 = [(CSComplicationWrapperViewController *)self->_widgetViewController widgetHostViewController];
  widget = [widgetHostViewController2 widget];
  extensionIdentity = [widget extensionIdentity];
  containerBundleIdentifier = [extensionIdentity containerBundleIdentifier];

  if (backlightHostEnvironment)
  {
    v9 = [MEMORY[0x277D65E08] entryWithSceneHostEnvironment:backlightHostEnvironment bundleIdentifier:containerBundleIdentifier];
    v10 = [MEMORY[0x277CBEB98] setWithObject:v9];
  }

  else
  {
    v10 = [MEMORY[0x277CBEB98] set];
  }

  return v10;
}

- (void)setTintColor:(id)color
{
  colorCopy = color;
  if ((BSEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_tintColor, color);
    _widgetTintParameters = [(CSInlineWidgetContainerViewController *)self _widgetTintParameters];
    widgetHostViewController = [(CSComplicationWrapperViewController *)self->_widgetViewController widgetHostViewController];
    [widgetHostViewController setTintParameters:_widgetTintParameters];
  }
}

- (void)beginCancellingTouches
{
  widgetHostViewController = [(CSComplicationWrapperViewController *)self->_widgetViewController widgetHostViewController];
  cancelTouchesForCurrentEventInHostedContent = [widgetHostViewController cancelTouchesForCurrentEventInHostedContent];
  if (cancelTouchesForCurrentEventInHostedContent)
  {
    cancelTouchesAssertionsByUniqueIdentifier = self->_cancelTouchesAssertionsByUniqueIdentifier;
    if (!cancelTouchesAssertionsByUniqueIdentifier)
    {
      v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v6 = self->_cancelTouchesAssertionsByUniqueIdentifier;
      self->_cancelTouchesAssertionsByUniqueIdentifier = v5;

      cancelTouchesAssertionsByUniqueIdentifier = self->_cancelTouchesAssertionsByUniqueIdentifier;
    }

    uniqueIdentifier = [(CSComplicationDescriptor *)self->_widgetDescriptor uniqueIdentifier];
    v8 = [(NSMutableDictionary *)cancelTouchesAssertionsByUniqueIdentifier objectForKey:uniqueIdentifier];

    if (v8)
    {
      [v8 invalidate];
    }

    v9 = self->_cancelTouchesAssertionsByUniqueIdentifier;
    uniqueIdentifier2 = [(CSComplicationDescriptor *)self->_widgetDescriptor uniqueIdentifier];
    [(NSMutableDictionary *)v9 setObject:cancelTouchesForCurrentEventInHostedContent forKey:uniqueIdentifier2];
  }
}

- (void)endCancellingTouches
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = self->_cancelTouchesAssertionsByUniqueIdentifier;
  v4 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [(NSMutableDictionary *)self->_cancelTouchesAssertionsByUniqueIdentifier objectForKey:*(*(&v9 + 1) + 8 * v7), v9];
        [v8 invalidate];

        ++v7;
      }

      while (v5 != v7);
      v5 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  [(NSMutableDictionary *)self->_cancelTouchesAssertionsByUniqueIdentifier removeAllObjects];
}

- (BOOL)interpretsViewAsContent:(id)content
{
  contentCopy = content;
  if (contentCopy && self->_isVisible)
  {
    view = [(CSComplicationWrapperViewController *)self->_widgetViewController view];
    v6 = [view containsView:contentCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)handleComplicationSelectionGesture:(id)gesture
{
  gestureCopy = gesture;
  v4 = [gestureCopy state] == 1 || objc_msgSend(gestureCopy, "state") == 2;
  if ([gestureCopy state] == 3 || objc_msgSend(gestureCopy, "state") == 4)
  {
    [(CSComplicationWrapperViewController *)self->_widgetViewController setHighlighted:0];
  }

  else
  {
    view = [(CSInlineWidgetContainerViewController *)self view];
    [gestureCopy locationInView:view];
    v7 = v6;
    v9 = v8;

    view2 = [(CSInlineWidgetContainerViewController *)self view];
    v11 = [view2 hitTest:0 withEvent:{v7, v9}];

    view3 = [(CSComplicationWrapperViewController *)self->_widgetViewController view];
    v13 = [view3 containsView:v11];

    if (v13)
    {
      [(CSComplicationWrapperViewController *)self->_widgetViewController setHighlighted:v4];
    }
  }
}

- (id)_widgetTintParameters
{
  v2 = [objc_alloc(MEMORY[0x277CFA440]) initWithPrimaryTintColor:0 secondaryTintColor:0 filterStyle:1 fallbackFilterStyle:1 fraction:1.0];

  return v2;
}

- (void)_setTextParametersAndFontForWidgetController:(id)controller
{
  v4 = MEMORY[0x277CFA260];
  controllerCopy = controller;
  v8 = objc_alloc_init(v4);
  [v8 setSize:&unk_283078E50];
  v6 = [MEMORY[0x277CCABB0] numberWithDouble:*MEMORY[0x277D74410]];
  [v8 setWeight:v6];

  v7 = objc_alloc_init(MEMORY[0x277CFA270]);
  [v7 setFontSpecification:v8];
  [v7 setSymbolScale:1];
  [v7 setShowsDateAlongsideText:1];
  [v7 setHorizontalAlignment:self->_inlineTextAlignment];
  [controllerCopy setInlineTextParameters:v7];
}

- (id)_hostViewControllerForComplicationDescriptor:(id)descriptor
{
  v4 = MEMORY[0x277CFA558];
  descriptorCopy = descriptor;
  v6 = [v4 alloc];
  widget = [descriptorCopy widget];
  metrics = [descriptorCopy metrics];
  uniqueIdentifier = [descriptorCopy uniqueIdentifier];

  v10 = [v6 initWithWidget:widget metrics:metrics widgetConfigurationIdentifier:uniqueIdentifier];
  [(CSInlineWidgetContainerViewController *)self _setTextParametersAndFontForWidgetController:v10];
  [v10 setDrawSystemBackgroundMaterialIfNecessary:0];
  [v10 setVisibility:2];
  [v10 setCanAppearInSecureEnvironment:1];
  [v10 setShouldShareTouchesWithHost:1];
  [v10 setSupportsLowLuminance:1];
  [v10 setPrefersUnredactedContentInLowLuminanceEnvironment:1];
  [v10 setColorScheme:2];
  [v10 setContentType:0];
  [v10 setDelegate:self];
  _widgetTintParameters = [(CSInlineWidgetContainerViewController *)self _widgetTintParameters];
  if (_widgetTintParameters)
  {
    [v10 setTintParameters:_widgetTintParameters];
  }

  _currentState = [(CSInlineWidgetContainerViewController *)self _currentState];
  [v10 setPresentationMode:-[CSComplicationPresentationState suggestedComplicationPresentationMode](_currentState)];

  v13 = [[CSComplicationWrapperViewController alloc] initWithWidgetHostViewController:v10];

  return v13;
}

- (id)_currentState
{
  lastKnownComplicationPresentationState = self->_lastKnownComplicationPresentationState;
  if (!lastKnownComplicationPresentationState)
  {
    traitCollection = [(CSInlineWidgetContainerViewController *)self traitCollection];
    v5 = [(CSInlineWidgetContainerViewController *)self _buildComplicationPresentationStateForTraitCollection:traitCollection];
    v6 = self->_lastKnownComplicationPresentationState;
    self->_lastKnownComplicationPresentationState = v5;

    lastKnownComplicationPresentationState = self->_lastKnownComplicationPresentationState;
  }

  v7 = lastKnownComplicationPresentationState;

  return v7;
}

- (id)_buildComplicationPresentationStateForTraitCollection:(id)collection
{
  collectionCopy = collection;
  v5 = [CSComplicationPresentationState alloc];
  isVisible = self->_isVisible;
  screenOff = self->_screenOff;
  _backlightLuminance = [collectionCopy _backlightLuminance];

  v9 = [(CSComplicationPresentationState *)v5 initWithVisibility:screenOff isScreenOff:_backlightLuminance backlightLuminance:[(CSInlineWidgetContainerViewController *)self interfaceOrientation] interfaceOrientation:?];

  return v9;
}

- (void)_updatePresentationStyleForReason:(id)reason
{
  reasonCopy = reason;
  traitCollection = [(CSInlineWidgetContainerViewController *)self traitCollection];
  [(CSInlineWidgetContainerViewController *)self _updatePresentationStyleForTransitionToNewTraitCollection:traitCollection reason:reasonCopy];
}

- (void)_updatePresentationStyleForTransitionToNewTraitCollection:(id)collection reason:(id)reason
{
  v33 = *MEMORY[0x277D85DE8];
  collectionCopy = collection;
  reasonCopy = reason;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __106__CSInlineWidgetContainerViewController__updatePresentationStyleForTransitionToNewTraitCollection_reason___block_invoke;
  block[3] = &unk_27838B770;
  block[4] = self;
  if (_updatePresentationStyleForTransitionToNewTraitCollection_reason__onceToken != -1)
  {
    dispatch_once(&_updatePresentationStyleForTransitionToNewTraitCollection_reason__onceToken, block);
  }

  lastKnownComplicationPresentationState = self->_lastKnownComplicationPresentationState;
  v9 = [(CSInlineWidgetContainerViewController *)self _buildComplicationPresentationStateForTraitCollection:collectionCopy];
  _currentState = [(CSInlineWidgetContainerViewController *)self _currentState];
  if (BSEqualObjects() && lastKnownComplicationPresentationState)
  {
    v11 = SBLogCoverSheetWidgets();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134219010;
      selfCopy5 = self;
      v25 = 2114;
      v26 = _updatePresentationStyleForTransitionToNewTraitCollection_reason__className;
      v27 = 2114;
      v28 = _currentState;
      v29 = 2114;
      v30 = v9;
      v31 = 2114;
      v32 = reasonCopy;
      v12 = "[%p/%{public}@] Bailing (equal state) on Presentation mode transition from %{public}@ -> %{public}@ for reason: %{public}@";
LABEL_17:
      _os_log_impl(&dword_21EB05000, v11, OS_LOG_TYPE_DEFAULT, v12, buf, 0x34u);
    }
  }

  else
  {
    if (!lastKnownComplicationPresentationState)
    {
      v13 = SBLogCoverSheetWidgets();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134219010;
        selfCopy5 = self;
        v25 = 2114;
        v26 = _updatePresentationStyleForTransitionToNewTraitCollection_reason__className;
        v27 = 2114;
        v28 = _currentState;
        v29 = 2114;
        v30 = v9;
        v31 = 2114;
        v32 = reasonCopy;
        _os_log_impl(&dword_21EB05000, v13, OS_LOG_TYPE_DEFAULT, "[%p/%{public}@] Proceeding w/ Presentation mode transition because we haven't done one yet, from %{public}@ -> %{public}@ for reason: %{public}@", buf, 0x34u);
      }
    }

    objc_storeStrong(&self->_lastKnownComplicationPresentationState, v9);
    v14 = SBLogCoverSheetWidgets();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134219010;
      selfCopy5 = self;
      v25 = 2114;
      v26 = _updatePresentationStyleForTransitionToNewTraitCollection_reason__className;
      v27 = 2114;
      v28 = _currentState;
      v29 = 2114;
      v30 = v9;
      v31 = 2114;
      v32 = reasonCopy;
      _os_log_impl(&dword_21EB05000, v14, OS_LOG_TYPE_DEFAULT, "[%p/%{public}@] Begin Presentation mode transition from %{public}@ -> %{public}@ for reason: %{public}@", buf, 0x34u);
    }

    suggestedComplicationPresentationMode = [(CSComplicationPresentationState *)v9 suggestedComplicationPresentationMode];
    v16 = (suggestedComplicationPresentationMode & 0xFFFFFFFFFFFFFFFELL) == 2;
    [(CSInlineWidgetContainerViewController *)self bs_beginAppearanceTransitionForChildViewController:self->_widgetViewController toVisible:v16 animated:0];
    widgetHostViewController = [(CSComplicationWrapperViewController *)self->_widgetViewController widgetHostViewController];
    [widgetHostViewController setPresentationMode:suggestedComplicationPresentationMode];

    [(CSInlineWidgetContainerViewController *)self bs_endAppearanceTransitionForChildViewController:self->_widgetViewController toVisible:v16];
    v18 = SBLogCoverSheetWidgets();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = _updatePresentationStyleForTransitionToNewTraitCollection_reason__className;
      v20 = NSStringFromWidgetPresentationMode(suggestedComplicationPresentationMode);
      widgetHostViewController2 = [(CSComplicationWrapperViewController *)self->_widgetViewController widgetHostViewController];
      *buf = 134218754;
      selfCopy5 = self;
      v25 = 2114;
      v26 = v19;
      v27 = 2114;
      v28 = v20;
      v29 = 2114;
      v30 = widgetHostViewController2;
      _os_log_impl(&dword_21EB05000, v18, OS_LOG_TYPE_DEFAULT, "[%p/%{public}@] Updating Presentation mode to '%{public}@' for %{public}@", buf, 0x2Au);
    }

    v11 = SBLogCoverSheetWidgets();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134219010;
      selfCopy5 = self;
      v25 = 2114;
      v26 = _updatePresentationStyleForTransitionToNewTraitCollection_reason__className;
      v27 = 2114;
      v28 = _currentState;
      v29 = 2114;
      v30 = v9;
      v31 = 2114;
      v32 = reasonCopy;
      v12 = "[%p/%{public}@] End Presentation mode transition from %{public}@ -> %{public}@ completed for reason: %{public}@";
      goto LABEL_17;
    }
  }
}

uint64_t __106__CSInlineWidgetContainerViewController__updatePresentationStyleForTransitionToNewTraitCollection_reason___block_invoke()
{
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  v2 = _updatePresentationStyleForTransitionToNewTraitCollection_reason__className;
  _updatePresentationStyleForTransitionToNewTraitCollection_reason__className = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

- (void)widgetHostViewController:(id)controller requestsLaunchWithAction:(id)action
{
  controllerCopy = controller;
  actionCopy = action;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v8 = WeakRetained;
  if (!WeakRetained || ([WeakRetained preventsLaunchFromWidgetWithAction:actionCopy] & 1) == 0)
  {
    complicationManager = self->_complicationManager;
    widget = [controllerCopy widget];
    [(CSComplicationManager *)complicationManager handleLaunchRequestForWidget:widget withAction:actionCopy];
  }
}

- (CSInlineWidgetContainerViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end