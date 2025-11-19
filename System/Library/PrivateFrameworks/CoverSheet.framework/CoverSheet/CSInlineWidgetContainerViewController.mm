@interface CSInlineWidgetContainerViewController
- (BOOL)interpretsViewAsContent:(id)a3;
- (CSInlineWidgetContainerViewController)initWithComplicationManager:(id)a3 inlineTextAlignment:(unint64_t)a4;
- (CSInlineWidgetContainerViewControllerDelegate)delegate;
- (id)_buildComplicationPresentationStateForTraitCollection:(id)a3;
- (id)_currentState;
- (id)_hostViewControllerForComplicationDescriptor:(id)a3;
- (id)_widgetTintParameters;
- (id)sceneHostEnvironmentEntriesForBacklightSession;
- (void)_backlightLuminanceDidChange:(id)a3 previousTraitCollection:(id)a4;
- (void)_setTextParametersAndFontForWidgetController:(id)a3;
- (void)_updatePresentationStyleForReason:(id)a3;
- (void)_updatePresentationStyleForTransitionToNewTraitCollection:(id)a3 reason:(id)a4;
- (void)beginCancellingTouches;
- (void)endCancellingTouches;
- (void)handleComplicationSelectionGesture:(id)a3;
- (void)setLayoutStyle:(int64_t)a3;
- (void)setScreenOff:(BOOL)a3;
- (void)setTintColor:(id)a3;
- (void)setVisible:(BOOL)a3;
- (void)setWidgetDescriptor:(id)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewWillAppear:(BOOL)a3;
- (void)widgetHostViewController:(id)a3 requestsLaunchWithAction:(id)a4;
- (void)willTransitionToTraitCollection:(id)a3 withTransitionCoordinator:(id)a4;
@end

@implementation CSInlineWidgetContainerViewController

- (CSInlineWidgetContainerViewController)initWithComplicationManager:(id)a3 inlineTextAlignment:(unint64_t)a4
{
  v15[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v14.receiver = self;
  v14.super_class = CSInlineWidgetContainerViewController;
  v8 = [(CSCoverSheetViewControllerBase *)&v14 initWithNibName:0 bundle:0];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_complicationManager, a3);
    v9->_inlineTextAlignment = a4;
    v9->_layoutStyle = 0;
    v10 = objc_opt_self();
    v15[0] = v10;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
    v12 = [(CSInlineWidgetContainerViewController *)v9 registerForTraitChanges:v11 withAction:sel__backlightLuminanceDidChange_previousTraitCollection_];
  }

  return v9;
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = CSInlineWidgetContainerViewController;
  [(CSCoverSheetViewControllerBase *)&v4 viewWillAppear:a3];
  [(CSInlineWidgetContainerViewController *)self setVisible:1];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = CSInlineWidgetContainerViewController;
  [(CSCoverSheetViewControllerBase *)&v4 viewDidDisappear:a3];
  [(CSInlineWidgetContainerViewController *)self setVisible:0];
}

- (void)setScreenOff:(BOOL)a3
{
  if (self->_screenOff != a3)
  {
    self->_screenOff = a3;
    v5 = MEMORY[0x277CCACA8];
    v7 = NSStringFromBOOL();
    v6 = [v5 stringWithFormat:@"setScreenOff:%@", v7];
    [(CSInlineWidgetContainerViewController *)self _updatePresentationStyleForReason:v6];
  }
}

- (void)willTransitionToTraitCollection:(id)a3 withTransitionCoordinator:(id)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = CSInlineWidgetContainerViewController;
  v7 = a4;
  [(CSInlineWidgetContainerViewController *)&v11 willTransitionToTraitCollection:v6 withTransitionCoordinator:v7];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __99__CSInlineWidgetContainerViewController_willTransitionToTraitCollection_withTransitionCoordinator___block_invoke;
  v9[3] = &unk_27838CAE8;
  v9[4] = self;
  v10 = v6;
  v8 = v6;
  [v7 animateAlongsideTransition:v9 completion:&__block_literal_global_10];
}

- (void)_backlightLuminanceDidChange:(id)a3 previousTraitCollection:(id)a4
{
  v7 = [a3 traitCollection];
  v6 = NSStringFromSelector(a2);
  [(CSInlineWidgetContainerViewController *)self _updatePresentationStyleForTransitionToNewTraitCollection:v7 reason:v6];
}

- (void)setVisible:(BOOL)a3
{
  if (self->_isVisible != a3)
  {
    self->_isVisible = a3;
    v5 = MEMORY[0x277CCACA8];
    v7 = NSStringFromBOOL();
    v6 = [v5 stringWithFormat:@"setVisible:%@", v7];
    [(CSInlineWidgetContainerViewController *)self _updatePresentationStyleForReason:v6];
  }
}

- (void)setLayoutStyle:(int64_t)a3
{
  if (self->_layoutStyle != a3)
  {
    self->_layoutStyle = a3;
    v4 = [(CSInlineWidgetContainerViewController *)self view];
    [v4 setNeedsLayout];
  }
}

- (void)viewDidLayoutSubviews
{
  v11.receiver = self;
  v11.super_class = CSInlineWidgetContainerViewController;
  [(CSCoverSheetViewControllerBase *)&v11 viewDidLayoutSubviews];
  v3 = [(CSComplicationWrapperViewController *)self->_widgetViewController view];
  v4 = [(CSInlineWidgetContainerViewController *)self view];
  [v4 bounds];
  [v3 setFrame:?];

  v5 = MEMORY[0x277CCACA8];
  v6 = [(CSComplicationDescriptor *)self->_widgetDescriptor widget];
  v7 = [v6 extensionBundleIdentifier];
  v8 = [(CSComplicationDescriptor *)self->_widgetDescriptor widget];
  v9 = [v8 kind];
  v10 = [v5 stringWithFormat:@"%@:%@", v7, v9];

  [v3 setAccessibilityIdentifier:v10];
  [v3 setAccessibilityValue:@"Widget"];
}

- (void)setWidgetDescriptor:(id)a3
{
  v12 = a3;
  if ((BSEqualObjects() & 1) == 0)
  {
    if (self->_widgetDescriptor)
    {
      [(CSInlineWidgetContainerViewController *)self bs_removeChildViewController:self->_widgetViewController];
      widgetViewController = self->_widgetViewController;
      self->_widgetViewController = 0;
    }

    objc_storeStrong(&self->_widgetDescriptor, a3);
    v7 = [(CSInlineWidgetContainerViewController *)self _hostViewControllerForComplicationDescriptor:v12];
    v8 = self->_widgetViewController;
    self->_widgetViewController = v7;

    [(CSInlineWidgetContainerViewController *)self loadViewIfNeeded];
    v9 = self->_widgetViewController;
    v10 = [(CSInlineWidgetContainerViewController *)self view];
    [(CSInlineWidgetContainerViewController *)self bs_addChildViewController:v9 withSuperview:v10];

    v11 = NSStringFromSelector(a2);
    [(CSInlineWidgetContainerViewController *)self _updatePresentationStyleForReason:v11];
  }
}

- (id)sceneHostEnvironmentEntriesForBacklightSession
{
  v3 = [(CSComplicationWrapperViewController *)self->_widgetViewController widgetHostViewController];
  v4 = [v3 backlightHostEnvironment];

  v5 = [(CSComplicationWrapperViewController *)self->_widgetViewController widgetHostViewController];
  v6 = [v5 widget];
  v7 = [v6 extensionIdentity];
  v8 = [v7 containerBundleIdentifier];

  if (v4)
  {
    v9 = [MEMORY[0x277D65E08] entryWithSceneHostEnvironment:v4 bundleIdentifier:v8];
    v10 = [MEMORY[0x277CBEB98] setWithObject:v9];
  }

  else
  {
    v10 = [MEMORY[0x277CBEB98] set];
  }

  return v10;
}

- (void)setTintColor:(id)a3
{
  v7 = a3;
  if ((BSEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_tintColor, a3);
    v5 = [(CSInlineWidgetContainerViewController *)self _widgetTintParameters];
    v6 = [(CSComplicationWrapperViewController *)self->_widgetViewController widgetHostViewController];
    [v6 setTintParameters:v5];
  }
}

- (void)beginCancellingTouches
{
  v11 = [(CSComplicationWrapperViewController *)self->_widgetViewController widgetHostViewController];
  v3 = [v11 cancelTouchesForCurrentEventInHostedContent];
  if (v3)
  {
    cancelTouchesAssertionsByUniqueIdentifier = self->_cancelTouchesAssertionsByUniqueIdentifier;
    if (!cancelTouchesAssertionsByUniqueIdentifier)
    {
      v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v6 = self->_cancelTouchesAssertionsByUniqueIdentifier;
      self->_cancelTouchesAssertionsByUniqueIdentifier = v5;

      cancelTouchesAssertionsByUniqueIdentifier = self->_cancelTouchesAssertionsByUniqueIdentifier;
    }

    v7 = [(CSComplicationDescriptor *)self->_widgetDescriptor uniqueIdentifier];
    v8 = [(NSMutableDictionary *)cancelTouchesAssertionsByUniqueIdentifier objectForKey:v7];

    if (v8)
    {
      [v8 invalidate];
    }

    v9 = self->_cancelTouchesAssertionsByUniqueIdentifier;
    v10 = [(CSComplicationDescriptor *)self->_widgetDescriptor uniqueIdentifier];
    [(NSMutableDictionary *)v9 setObject:v3 forKey:v10];
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

- (BOOL)interpretsViewAsContent:(id)a3
{
  v4 = a3;
  if (v4 && self->_isVisible)
  {
    v5 = [(CSComplicationWrapperViewController *)self->_widgetViewController view];
    v6 = [v5 containsView:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)handleComplicationSelectionGesture:(id)a3
{
  v14 = a3;
  v4 = [v14 state] == 1 || objc_msgSend(v14, "state") == 2;
  if ([v14 state] == 3 || objc_msgSend(v14, "state") == 4)
  {
    [(CSComplicationWrapperViewController *)self->_widgetViewController setHighlighted:0];
  }

  else
  {
    v5 = [(CSInlineWidgetContainerViewController *)self view];
    [v14 locationInView:v5];
    v7 = v6;
    v9 = v8;

    v10 = [(CSInlineWidgetContainerViewController *)self view];
    v11 = [v10 hitTest:0 withEvent:{v7, v9}];

    v12 = [(CSComplicationWrapperViewController *)self->_widgetViewController view];
    v13 = [v12 containsView:v11];

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

- (void)_setTextParametersAndFontForWidgetController:(id)a3
{
  v4 = MEMORY[0x277CFA260];
  v5 = a3;
  v8 = objc_alloc_init(v4);
  [v8 setSize:&unk_283078E50];
  v6 = [MEMORY[0x277CCABB0] numberWithDouble:*MEMORY[0x277D74410]];
  [v8 setWeight:v6];

  v7 = objc_alloc_init(MEMORY[0x277CFA270]);
  [v7 setFontSpecification:v8];
  [v7 setSymbolScale:1];
  [v7 setShowsDateAlongsideText:1];
  [v7 setHorizontalAlignment:self->_inlineTextAlignment];
  [v5 setInlineTextParameters:v7];
}

- (id)_hostViewControllerForComplicationDescriptor:(id)a3
{
  v4 = MEMORY[0x277CFA558];
  v5 = a3;
  v6 = [v4 alloc];
  v7 = [v5 widget];
  v8 = [v5 metrics];
  v9 = [v5 uniqueIdentifier];

  v10 = [v6 initWithWidget:v7 metrics:v8 widgetConfigurationIdentifier:v9];
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
  v11 = [(CSInlineWidgetContainerViewController *)self _widgetTintParameters];
  if (v11)
  {
    [v10 setTintParameters:v11];
  }

  v12 = [(CSInlineWidgetContainerViewController *)self _currentState];
  [v10 setPresentationMode:-[CSComplicationPresentationState suggestedComplicationPresentationMode](v12)];

  v13 = [[CSComplicationWrapperViewController alloc] initWithWidgetHostViewController:v10];

  return v13;
}

- (id)_currentState
{
  lastKnownComplicationPresentationState = self->_lastKnownComplicationPresentationState;
  if (!lastKnownComplicationPresentationState)
  {
    v4 = [(CSInlineWidgetContainerViewController *)self traitCollection];
    v5 = [(CSInlineWidgetContainerViewController *)self _buildComplicationPresentationStateForTraitCollection:v4];
    v6 = self->_lastKnownComplicationPresentationState;
    self->_lastKnownComplicationPresentationState = v5;

    lastKnownComplicationPresentationState = self->_lastKnownComplicationPresentationState;
  }

  v7 = lastKnownComplicationPresentationState;

  return v7;
}

- (id)_buildComplicationPresentationStateForTraitCollection:(id)a3
{
  v4 = a3;
  v5 = [CSComplicationPresentationState alloc];
  isVisible = self->_isVisible;
  screenOff = self->_screenOff;
  v8 = [v4 _backlightLuminance];

  v9 = [(CSComplicationPresentationState *)v5 initWithVisibility:screenOff isScreenOff:v8 backlightLuminance:[(CSInlineWidgetContainerViewController *)self interfaceOrientation] interfaceOrientation:?];

  return v9;
}

- (void)_updatePresentationStyleForReason:(id)a3
{
  v4 = a3;
  v5 = [(CSInlineWidgetContainerViewController *)self traitCollection];
  [(CSInlineWidgetContainerViewController *)self _updatePresentationStyleForTransitionToNewTraitCollection:v5 reason:v4];
}

- (void)_updatePresentationStyleForTransitionToNewTraitCollection:(id)a3 reason:(id)a4
{
  v33 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
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
  v9 = [(CSInlineWidgetContainerViewController *)self _buildComplicationPresentationStateForTraitCollection:v6];
  v10 = [(CSInlineWidgetContainerViewController *)self _currentState];
  if (BSEqualObjects() && lastKnownComplicationPresentationState)
  {
    v11 = SBLogCoverSheetWidgets();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134219010;
      v24 = self;
      v25 = 2114;
      v26 = _updatePresentationStyleForTransitionToNewTraitCollection_reason__className;
      v27 = 2114;
      v28 = v10;
      v29 = 2114;
      v30 = v9;
      v31 = 2114;
      v32 = v7;
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
        v24 = self;
        v25 = 2114;
        v26 = _updatePresentationStyleForTransitionToNewTraitCollection_reason__className;
        v27 = 2114;
        v28 = v10;
        v29 = 2114;
        v30 = v9;
        v31 = 2114;
        v32 = v7;
        _os_log_impl(&dword_21EB05000, v13, OS_LOG_TYPE_DEFAULT, "[%p/%{public}@] Proceeding w/ Presentation mode transition because we haven't done one yet, from %{public}@ -> %{public}@ for reason: %{public}@", buf, 0x34u);
      }
    }

    objc_storeStrong(&self->_lastKnownComplicationPresentationState, v9);
    v14 = SBLogCoverSheetWidgets();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134219010;
      v24 = self;
      v25 = 2114;
      v26 = _updatePresentationStyleForTransitionToNewTraitCollection_reason__className;
      v27 = 2114;
      v28 = v10;
      v29 = 2114;
      v30 = v9;
      v31 = 2114;
      v32 = v7;
      _os_log_impl(&dword_21EB05000, v14, OS_LOG_TYPE_DEFAULT, "[%p/%{public}@] Begin Presentation mode transition from %{public}@ -> %{public}@ for reason: %{public}@", buf, 0x34u);
    }

    v15 = [(CSComplicationPresentationState *)v9 suggestedComplicationPresentationMode];
    v16 = (v15 & 0xFFFFFFFFFFFFFFFELL) == 2;
    [(CSInlineWidgetContainerViewController *)self bs_beginAppearanceTransitionForChildViewController:self->_widgetViewController toVisible:v16 animated:0];
    v17 = [(CSComplicationWrapperViewController *)self->_widgetViewController widgetHostViewController];
    [v17 setPresentationMode:v15];

    [(CSInlineWidgetContainerViewController *)self bs_endAppearanceTransitionForChildViewController:self->_widgetViewController toVisible:v16];
    v18 = SBLogCoverSheetWidgets();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = _updatePresentationStyleForTransitionToNewTraitCollection_reason__className;
      v20 = NSStringFromWidgetPresentationMode(v15);
      v21 = [(CSComplicationWrapperViewController *)self->_widgetViewController widgetHostViewController];
      *buf = 134218754;
      v24 = self;
      v25 = 2114;
      v26 = v19;
      v27 = 2114;
      v28 = v20;
      v29 = 2114;
      v30 = v21;
      _os_log_impl(&dword_21EB05000, v18, OS_LOG_TYPE_DEFAULT, "[%p/%{public}@] Updating Presentation mode to '%{public}@' for %{public}@", buf, 0x2Au);
    }

    v11 = SBLogCoverSheetWidgets();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134219010;
      v24 = self;
      v25 = 2114;
      v26 = _updatePresentationStyleForTransitionToNewTraitCollection_reason__className;
      v27 = 2114;
      v28 = v10;
      v29 = 2114;
      v30 = v9;
      v31 = 2114;
      v32 = v7;
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

- (void)widgetHostViewController:(id)a3 requestsLaunchWithAction:(id)a4
{
  v11 = a3;
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v8 = WeakRetained;
  if (!WeakRetained || ([WeakRetained preventsLaunchFromWidgetWithAction:v6] & 1) == 0)
  {
    complicationManager = self->_complicationManager;
    v10 = [v11 widget];
    [(CSComplicationManager *)complicationManager handleLaunchRequestForWidget:v10 withAction:v6];
  }
}

- (CSInlineWidgetContainerViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end