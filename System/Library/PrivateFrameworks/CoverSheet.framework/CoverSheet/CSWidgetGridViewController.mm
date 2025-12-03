@interface CSWidgetGridViewController
- (BOOL)interpretsViewAsContent:(id)content;
- (CSWidgetGridViewController)initWithComplicationManager:(id)manager type:(unint64_t)type applicationInformer:(id)informer;
- (CSWidgetGridViewControllerDelegate)delegate;
- (UIView)widgetGridContentView;
- (id)_buildComplicationPresentationStateForTraitCollection:(id)collection interfaceOrientation:(int64_t)orientation;
- (id)_currentState;
- (id)_widgetTintParameters;
- (id)sceneHostEnvironmentEntriesForBacklightSession;
- (void)_backlightLuminanceDidChange:(id)change previousTraitCollection:(id)collection;
- (void)_updateColors;
- (void)_updateComplicationPresentationState:(id)state reason:(id)reason;
- (void)_updateGridViewControllerOccluded:(BOOL)occluded;
- (void)_updatePresentationStyleForReason:(id)reason;
- (void)beginCancellingTouches;
- (void)dealloc;
- (void)endCancellingTouches;
- (void)setComplicationDescriptors:(id)descriptors iconLayout:(id)layout;
- (void)setContentStyle:(id)style;
- (void)setNeedsNestedVibrancyEffectView:(BOOL)view;
- (void)setScreenOff:(BOOL)off;
- (void)setVibrancyConfiguration:(id)configuration;
- (void)setVisible:(BOOL)visible;
- (void)updatePresentationStyleForNewOrientation:(int64_t)orientation;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
- (void)widgetGridModelDidUpdateContent:(id)content;
- (void)widgetGridViewController:(id)controller didRequestLaunchForComplicationDescriptor:(id)descriptor withAction:(id)action;
- (void)willTransitionToTraitCollection:(id)collection withTransitionCoordinator:(id)coordinator;
@end

@implementation CSWidgetGridViewController

- (id)sceneHostEnvironmentEntriesForBacklightSession
{
  v24 = *MEMORY[0x277D85DE8];
  v18 = [MEMORY[0x277CBEB58] set];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  model = [(PRWidgetGridViewController *)self->_widgetGridViewController model];
  complicationDescriptors = [model complicationDescriptors];

  obj = complicationDescriptors;
  v5 = [complicationDescriptors countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v20;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = [(PRWidgetGridViewController *)self->_widgetGridViewController widgetHostViewControllerForComplicationDescriptor:*(*(&v19 + 1) + 8 * i)];
        backlightHostEnvironment = [v9 backlightHostEnvironment];
        if (backlightHostEnvironment)
        {
          widget = [v9 widget];
          extensionIdentity = [widget extensionIdentity];
          containerBundleIdentifier = [extensionIdentity containerBundleIdentifier];

          v14 = [MEMORY[0x277D65E08] entryWithSceneHostEnvironment:backlightHostEnvironment bundleIdentifier:containerBundleIdentifier];
          [v18 addObject:v14];
        }
      }

      v6 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v6);
  }

  v15 = [v18 copy];

  return v15;
}

- (void)beginCancellingTouches
{
  v22 = *MEMORY[0x277D85DE8];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  model = [(PRWidgetGridViewController *)self->_widgetGridViewController model];
  complicationDescriptors = [model complicationDescriptors];

  v5 = [complicationDescriptors countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v18;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(complicationDescriptors);
        }

        v9 = *(*(&v17 + 1) + 8 * i);
        v10 = [(PRWidgetGridViewController *)self->_widgetGridViewController widgetHostViewControllerForComplicationDescriptor:v9];
        cancelTouchesForCurrentEventInHostedContent = [v10 cancelTouchesForCurrentEventInHostedContent];
        if (cancelTouchesForCurrentEventInHostedContent)
        {
          if (!self->_cancelTouchesAssertionsByUniqueIdentifier)
          {
            v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
            cancelTouchesAssertionsByUniqueIdentifier = self->_cancelTouchesAssertionsByUniqueIdentifier;
            self->_cancelTouchesAssertionsByUniqueIdentifier = v12;
          }

          uniqueIdentifier = [v9 uniqueIdentifier];
          v15 = [(NSMutableDictionary *)self->_cancelTouchesAssertionsByUniqueIdentifier objectForKey:uniqueIdentifier];
          v16 = v15;
          if (v15)
          {
            [v15 invalidate];
          }

          [(NSMutableDictionary *)self->_cancelTouchesAssertionsByUniqueIdentifier setObject:cancelTouchesForCurrentEventInHostedContent forKey:uniqueIdentifier];
        }
      }

      v6 = [complicationDescriptors countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v6);
  }
}

- (id)_currentState
{
  lastKnownComplicationPresentationState = self->_lastKnownComplicationPresentationState;
  if (!lastKnownComplicationPresentationState)
  {
    traitCollection = [(CSWidgetGridViewController *)self traitCollection];
    v5 = [(CSWidgetGridViewController *)self _buildComplicationPresentationStateForTraitCollection:traitCollection interfaceOrientation:[(CSWidgetGridViewController *)self interfaceOrientation]];
    v6 = self->_lastKnownComplicationPresentationState;
    self->_lastKnownComplicationPresentationState = v5;

    lastKnownComplicationPresentationState = self->_lastKnownComplicationPresentationState;
  }

  v7 = lastKnownComplicationPresentationState;

  return v7;
}

- (CSWidgetGridViewController)initWithComplicationManager:(id)manager type:(unint64_t)type applicationInformer:(id)informer
{
  v22[1] = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  informerCopy = informer;
  v21.receiver = self;
  v21.super_class = CSWidgetGridViewController;
  v11 = [(CSWidgetGridViewController *)&v21 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_complicationManager, manager);
    v13 = [CSWidgetGridModel alloc];
    v14 = [(CSWidgetGridModel *)v13 initWithComplicationDescriptors:MEMORY[0x277CBEBF8] iconLayout:0 type:type];
    [(CSWidgetGridModel *)v14 setApplicationInformer:informerCopy];
    [(PRWidgetGridModel *)v14 addWidgetGridModelObserver:v12];
    v15 = [objc_alloc(MEMORY[0x277D3EE80]) initWithModel:v14];
    widgetGridViewController = v12->_widgetGridViewController;
    v12->_widgetGridViewController = v15;

    [(PRWidgetGridViewController *)v12->_widgetGridViewController setDelegate:v12];
    [(CSWidgetGridViewController *)v12 _updateGridViewControllerOccluded:1];
    v17 = objc_opt_self();
    v22[0] = v17;
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:1];
    v19 = [(CSWidgetGridViewController *)v12 registerForTraitChanges:v18 withAction:sel__backlightLuminanceDidChange_previousTraitCollection_];
  }

  return v12;
}

- (void)dealloc
{
  model = [(PRWidgetGridViewController *)self->_widgetGridViewController model];
  [model removeWidgetGridModelObserver:self];

  v4.receiver = self;
  v4.super_class = CSWidgetGridViewController;
  [(CSCoverSheetViewControllerBase *)&v4 dealloc];
}

- (void)setNeedsNestedVibrancyEffectView:(BOOL)view
{
  viewCopy = view;
  viewIfLoaded = [(CSWidgetGridViewController *)self viewIfLoaded];

  if (viewIfLoaded)
  {
    if (self->_needsNestedVibrancyEffectView == viewCopy)
    {
      return;
    }

    if (viewCopy)
    {
      vibrancyEffectView = self->_vibrancyEffectView;
      if (!vibrancyEffectView)
      {
        v7 = objc_alloc_init(MEMORY[0x277CF0D98]);
        v8 = self->_vibrancyEffectView;
        self->_vibrancyEffectView = v7;

        view = [(CSWidgetGridViewController *)self view];
        [view addSubview:self->_vibrancyEffectView];

        vibrancyEffectView = self->_vibrancyEffectView;
      }

      contentView = [(BSUIVibrancyEffectView *)vibrancyEffectView contentView];
      view2 = [(PRWidgetGridViewController *)self->_widgetGridViewController view];
      [contentView addSubview:view2];

      v12 = self->_vibrancyEffectView;
      view3 = [(CSWidgetGridViewController *)self view];
      [view3 bounds];
      [(BSUIVibrancyEffectView *)v12 setFrame:?];

      view4 = [(PRWidgetGridViewController *)self->_widgetGridViewController view];
      view5 = [(CSWidgetGridViewController *)self view];
      [view5 bounds];
      [view4 setFrame:?];

      [(CSWidgetGridViewController *)self _updateColors];
    }

    else
    {
      view6 = [(PRWidgetGridViewController *)self->_widgetGridViewController view];
      [view6 removeFromSuperview];

      [(BSUIVibrancyEffectView *)self->_vibrancyEffectView removeFromSuperview];
      v17 = self->_vibrancyEffectView;
      self->_vibrancyEffectView = 0;

      contentStyleRenderer = self->_contentStyleRenderer;
      self->_contentStyleRenderer = 0;

      view7 = [(CSWidgetGridViewController *)self view];
      view8 = [(PRWidgetGridViewController *)self->_widgetGridViewController view];
      [view7 addSubview:view8];
    }
  }

  self->_needsNestedVibrancyEffectView = viewCopy;
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = CSWidgetGridViewController;
  [(CSCoverSheetViewControllerBase *)&v6 viewDidLoad];
  if (self->_needsNestedVibrancyEffectView)
  {
    v3 = objc_alloc_init(MEMORY[0x277CF0D98]);
    vibrancyEffectView = self->_vibrancyEffectView;
    self->_vibrancyEffectView = v3;

    view = [(CSWidgetGridViewController *)self view];
    [view addSubview:self->_vibrancyEffectView];
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = CSWidgetGridViewController;
  [(CSCoverSheetViewControllerBase *)&v4 viewWillAppear:appear];
  [(CSWidgetGridViewController *)self setVisible:1];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = CSWidgetGridViewController;
  [(CSCoverSheetViewControllerBase *)&v4 viewDidDisappear:disappear];
  [(CSWidgetGridViewController *)self setVisible:0];
}

- (UIView)widgetGridContentView
{
  widgetGridViewController = [(CSWidgetGridViewController *)self widgetGridViewController];
  view = [widgetGridViewController view];

  return view;
}

- (void)setComplicationDescriptors:(id)descriptors iconLayout:(id)layout
{
  layoutCopy = layout;
  descriptorsCopy = descriptors;
  widgetGridViewController = [(CSWidgetGridViewController *)self widgetGridViewController];
  model = [widgetGridViewController model];
  [model setComplicationDescriptors:descriptorsCopy iconLayout:layoutCopy];
}

- (void)setScreenOff:(BOOL)off
{
  if (self->_screenOff != off)
  {
    self->_screenOff = off;
    v4 = MEMORY[0x277CCACA8];
    v5 = NSStringFromBOOL();
    v6 = [v4 stringWithFormat:@"setScreenOff:%@", v5];
    [(CSWidgetGridViewController *)self _updatePresentationStyleForReason:v6];

    if (!self->_screenOff)
    {

      [(CSWidgetGridViewController *)self setVisible:1];
    }
  }
}

- (void)willTransitionToTraitCollection:(id)collection withTransitionCoordinator:(id)coordinator
{
  collectionCopy = collection;
  v11.receiver = self;
  v11.super_class = CSWidgetGridViewController;
  coordinatorCopy = coordinator;
  [(CSWidgetGridViewController *)&v11 willTransitionToTraitCollection:collectionCopy withTransitionCoordinator:coordinatorCopy];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __88__CSWidgetGridViewController_willTransitionToTraitCollection_withTransitionCoordinator___block_invoke;
  v9[3] = &unk_27838CAE8;
  v9[4] = self;
  v10 = collectionCopy;
  v8 = collectionCopy;
  [coordinatorCopy animateAlongsideTransition:v9 completion:&__block_literal_global_25];
}

void __88__CSWidgetGridViewController_willTransitionToTraitCollection_withTransitionCoordinator___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 _buildComplicationPresentationStateForTraitCollection:*(a1 + 40) interfaceOrientation:{objc_msgSend(v1, "interfaceOrientation")}];
  [v1 _updateComplicationPresentationState:v2 reason:@"willTransitionToTraitCollection:withTransitionCoordinator:"];
}

- (void)_backlightLuminanceDidChange:(id)change previousTraitCollection:(id)collection
{
  v19 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  collectionCopy = collection;
  v9 = SBLogDashBoard();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    _backlightLuminance = [collectionCopy _backlightLuminance];
    traitCollection = [changeCopy traitCollection];
    v15 = 134218240;
    v16 = _backlightLuminance;
    v17 = 2048;
    _backlightLuminance2 = [traitCollection _backlightLuminance];
    _os_log_impl(&dword_21EB05000, v9, OS_LOG_TYPE_DEFAULT, "[Widget Grid] Backlight luminance changed from %lu to %lu", &v15, 0x16u);
  }

  traitCollection2 = [changeCopy traitCollection];
  v13 = [(CSWidgetGridViewController *)self _buildComplicationPresentationStateForTraitCollection:traitCollection2 interfaceOrientation:[(CSWidgetGridViewController *)self interfaceOrientation]];
  v14 = NSStringFromSelector(a2);
  [(CSWidgetGridViewController *)self _updateComplicationPresentationState:v13 reason:v14];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v19.receiver = self;
  v19.super_class = CSWidgetGridViewController;
  coordinatorCopy = coordinator;
  [(CSCoverSheetViewControllerBase *)&v19 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  v8 = SBFWindowForViewControllerTransition();
  _toWindowOrientation = [v8 _toWindowOrientation];

  traitCollection = [(CSWidgetGridViewController *)self traitCollection];
  v11 = [(CSWidgetGridViewController *)self _buildComplicationPresentationStateForTraitCollection:traitCollection interfaceOrientation:_toWindowOrientation];

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __81__CSWidgetGridViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v16[3] = &unk_27838CAE8;
  v17 = v11;
  selfCopy = self;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __81__CSWidgetGridViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_2;
  v13[3] = &unk_27838CAE8;
  v14 = v17;
  selfCopy2 = self;
  v12 = v17;
  [coordinatorCopy animateAlongsideTransition:v16 completion:v13];
}

uint64_t __81__CSWidgetGridViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1)
{
  result = [(CSComplicationPresentationState *)*(a1 + 32) shouldPresentLandscapeComplications];
  if (result)
  {
    v4 = *(a1 + 32);
    v3 = *(a1 + 40);

    return [v3 _updateComplicationPresentationState:v4 reason:@"viewWillTransitionToSize:withTransitionCoordinator: - transition"];
  }

  return result;
}

uint64_t __81__CSWidgetGridViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_2(uint64_t a1)
{
  result = [(CSComplicationPresentationState *)*(a1 + 32) shouldPresentLandscapeComplications];
  if ((result & 1) == 0)
  {
    v4 = *(a1 + 32);
    v3 = *(a1 + 40);

    return [v3 _updateComplicationPresentationState:v4 reason:@"viewWillTransitionToSize:withTransitionCoordinator: - completion"];
  }

  return result;
}

- (void)setVisible:(BOOL)visible
{
  if (self->_isVisible != visible)
  {
    self->_isVisible = visible;
    v5 = MEMORY[0x277CCACA8];
    v7 = NSStringFromBOOL();
    v6 = [v5 stringWithFormat:@"setVisible:%@", v7];
    [(CSWidgetGridViewController *)self _updatePresentationStyleForReason:v6];
  }
}

- (void)viewDidLayoutSubviews
{
  v7.receiver = self;
  v7.super_class = CSWidgetGridViewController;
  [(CSCoverSheetViewControllerBase *)&v7 viewDidLayoutSubviews];
  vibrancyEffectView = self->_vibrancyEffectView;
  view = [(CSWidgetGridViewController *)self view];
  [view bounds];
  [(BSUIVibrancyEffectView *)vibrancyEffectView setFrame:?];

  view2 = [(PRWidgetGridViewController *)self->_widgetGridViewController view];
  view3 = [(CSWidgetGridViewController *)self view];
  [view3 bounds];
  [view2 setFrame:?];
}

- (BOOL)interpretsViewAsContent:(id)content
{
  contentCopy = content;
  if (contentCopy && self->_isVisible)
  {
    v5 = [(PRWidgetGridViewController *)self->_widgetGridViewController interpretsViewAsContent:contentCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
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

- (void)setVibrancyConfiguration:(id)configuration
{
  configurationCopy = configuration;
  if ((BSEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_vibrancyConfiguration, configuration);
    [(CSWidgetGridViewController *)self _updateColors];
  }
}

- (void)setContentStyle:(id)style
{
  styleCopy = style;
  if ((BSEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_contentStyle, style);
    [(CSWidgetGridViewController *)self _updateColors];
  }
}

- (void)_updateColors
{
  if (self->_vibrancyEffectView)
  {
    contentStyleRenderer = self->_contentStyleRenderer;
    if (!contentStyleRenderer)
    {
      v4 = objc_alloc(MEMORY[0x277D02CF8]);
      vibrancyEffectView = self->_vibrancyEffectView;
      [(BSUIVibrancyEffectView *)vibrancyEffectView frame];
      v6 = [v4 initWithVibrancyView:vibrancyEffectView styleBoundingRect:?];
      v7 = self->_contentStyleRenderer;
      self->_contentStyleRenderer = v6;

      [(CSVibrantContentStyleRenderer *)self->_contentStyleRenderer setUseComplicationRenderStyle:1];
      contentStyleRenderer = self->_contentStyleRenderer;
    }

    [(CSVibrantContentStyleRenderer *)contentStyleRenderer setVibrancyConfiguration:self->_vibrancyConfiguration];
    v8 = self->_contentStyleRenderer;
    contentStyle = self->_contentStyle;

    [(CSVibrantContentStyleRenderer *)v8 applyStyle:contentStyle];
  }
}

- (id)_widgetTintParameters
{
  v2 = [objc_alloc(MEMORY[0x277CFA440]) initWithPrimaryTintColor:0 secondaryTintColor:0 filterStyle:1 fallbackFilterStyle:1 fraction:1.0];

  return v2;
}

- (void)updatePresentationStyleForNewOrientation:(int64_t)orientation
{
  traitCollection = [(CSWidgetGridViewController *)self traitCollection];
  v6 = [(CSWidgetGridViewController *)self _buildComplicationPresentationStateForTraitCollection:traitCollection interfaceOrientation:orientation];

  [(CSWidgetGridViewController *)self _updateComplicationPresentationState:v6 reason:@"Forced Orientation Change"];
}

- (id)_buildComplicationPresentationStateForTraitCollection:(id)collection interfaceOrientation:(int64_t)orientation
{
  collectionCopy = collection;
  v7 = [CSComplicationPresentationState alloc];
  isVisible = self->_isVisible;
  LOBYTE(self) = self->_screenOff;
  _backlightLuminance = [collectionCopy _backlightLuminance];

  v10 = [(CSComplicationPresentationState *)v7 initWithVisibility:self isScreenOff:_backlightLuminance backlightLuminance:orientation interfaceOrientation:?];

  return v10;
}

- (void)_updatePresentationStyleForReason:(id)reason
{
  reasonCopy = reason;
  traitCollection = [(CSWidgetGridViewController *)self traitCollection];
  v5 = [(CSWidgetGridViewController *)self _buildComplicationPresentationStateForTraitCollection:traitCollection interfaceOrientation:[(CSWidgetGridViewController *)self interfaceOrientation]];
  [(CSWidgetGridViewController *)self _updateComplicationPresentationState:v5 reason:reasonCopy];
}

- (void)_updateComplicationPresentationState:(id)state reason:(id)reason
{
  v42 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  reasonCopy = reason;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __74__CSWidgetGridViewController__updateComplicationPresentationState_reason___block_invoke;
  block[3] = &unk_27838B770;
  block[4] = self;
  if (_updateComplicationPresentationState_reason__onceToken != -1)
  {
    dispatch_once(&_updateComplicationPresentationState_reason__onceToken, block);
  }

  lastKnownComplicationPresentationState = self->_lastKnownComplicationPresentationState;
  _currentState = [(CSWidgetGridViewController *)self _currentState];
  if (BSEqualObjects() && lastKnownComplicationPresentationState)
  {
    v11 = SBLogCoverSheetWidgets();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134219010;
      selfCopy4 = self;
      v30 = 2114;
      v31 = _updateComplicationPresentationState_reason__className;
      v32 = 2114;
      v33 = _currentState;
      v34 = 2114;
      v35 = stateCopy;
      v36 = 2114;
      v37 = reasonCopy;
      _os_log_impl(&dword_21EB05000, v11, OS_LOG_TYPE_DEFAULT, "[%p/%{public}@] Bailing (equal state) on Presentation mode transition from %{public}@ -> %{public}@ for reason: %{public}@", buf, 0x34u);
    }
  }

  else
  {
    if (!lastKnownComplicationPresentationState)
    {
      v12 = SBLogCoverSheetWidgets();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134219010;
        selfCopy4 = self;
        v30 = 2114;
        v31 = _updateComplicationPresentationState_reason__className;
        v32 = 2114;
        v33 = _currentState;
        v34 = 2114;
        v35 = stateCopy;
        v36 = 2114;
        v37 = reasonCopy;
        _os_log_impl(&dword_21EB05000, v12, OS_LOG_TYPE_DEFAULT, "[%p/%{public}@] Proceeding w/ Presentation mode transition because we haven't done one yet, from %{public}@ -> %{public}@ for reason: %{public}@", buf, 0x34u);
      }
    }

    objc_storeStrong(&self->_lastKnownComplicationPresentationState, state);
    v13 = [(CSComplicationPresentationState *)stateCopy suggestedComplicationPresentationMode]& 0xFFFFFFFFFFFFFFFELL;
    widgetGridViewController = [(CSWidgetGridViewController *)self widgetGridViewController];
    model = [widgetGridViewController model];
    type = [model type];

    shouldPresentLandscapeComplications = v13 == 2 && type != 1;
    if (type == 1 && v13 == 2)
    {
      shouldPresentLandscapeComplications = [(CSComplicationPresentationState *)stateCopy shouldPresentLandscapeComplications];
    }

    v18 = SBLogCoverSheetWidgets();
    v19 = @"VISIBLE";
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      if (shouldPresentLandscapeComplications)
      {
        v20 = @"VISIBLE";
      }

      else
      {
        v20 = @"OCCLUDED";
      }

      *buf = 134219266;
      selfCopy4 = self;
      v30 = 2114;
      v31 = _updateComplicationPresentationState_reason__className;
      v32 = 2114;
      v33 = v20;
      v34 = 2114;
      v35 = _currentState;
      v36 = 2114;
      v37 = stateCopy;
      v38 = 2114;
      v39 = reasonCopy;
      _os_log_impl(&dword_21EB05000, v18, OS_LOG_TYPE_DEFAULT, "[%p/%{public}@] Begin Presentation mode transition to %{public}@ for %{public}@ -> %{public}@ for reason: %{public}@", buf, 0x3Eu);
    }

    if (shouldPresentLandscapeComplications)
    {
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __74__CSWidgetGridViewController__updateComplicationPresentationState_reason___block_invoke_50;
      v26[3] = &unk_27838B770;
      v26[4] = self;
      [MEMORY[0x277D75D18] performWithoutAnimation:v26];
    }

    [(PRWidgetGridViewController *)self->_widgetGridViewController bs_beginAppearanceTransition:shouldPresentLandscapeComplications animated:0];
    [(CSWidgetGridViewController *)self _updateGridViewControllerOccluded:shouldPresentLandscapeComplications ^ 1];
    [(PRWidgetGridViewController *)self->_widgetGridViewController bs_endAppearanceTransition:shouldPresentLandscapeComplications];
    if ((shouldPresentLandscapeComplications & 1) == 0)
    {
      [(CSWidgetGridViewController *)self bs_removeChildViewController:self->_widgetGridViewController];
    }

    v11 = SBLogCoverSheetWidgets();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v21 = _updateComplicationPresentationState_reason__className;
      if (!shouldPresentLandscapeComplications)
      {
        v19 = @"OCCLUDED";
      }

      widgetGridViewController2 = [(CSWidgetGridViewController *)self widgetGridViewController];
      model2 = [widgetGridViewController2 model];
      complicationDescriptors = [model2 complicationDescriptors];
      v25 = [complicationDescriptors count];
      *buf = 134219522;
      selfCopy4 = self;
      v30 = 2114;
      v31 = v21;
      v32 = 2114;
      v33 = v19;
      v34 = 2114;
      v35 = _currentState;
      v36 = 2114;
      v37 = stateCopy;
      v38 = 2114;
      v39 = reasonCopy;
      v40 = 2048;
      v41 = v25;
      _os_log_impl(&dword_21EB05000, v11, OS_LOG_TYPE_DEFAULT, "[%p/%{public}@] End Presentation mode transition to %{public}@ from %{public}@ -> %{public}@ completed for reason: %{public}@ for %lu widgets", buf, 0x48u);
    }
  }
}

uint64_t __74__CSWidgetGridViewController__updateComplicationPresentationState_reason___block_invoke()
{
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  v2 = _updateComplicationPresentationState_reason__className;
  _updateComplicationPresentationState_reason__className = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

void __74__CSWidgetGridViewController__updateComplicationPresentationState_reason___block_invoke_50(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 1065))
  {
    [*(v2 + 1120) contentView];
  }

  else
  {
    [v2 view];
  }
  v3 = ;
  [*(a1 + 32) bs_addChildViewController:*(*(a1 + 32) + 1136) withSuperview:v3];
}

- (void)_updateGridViewControllerOccluded:(BOOL)occluded
{
  occludedCopy = occluded;
  view = [(PRWidgetGridViewController *)self->_widgetGridViewController view];
  subviews = [view subviews];
  firstObject = [subviews firstObject];

  if (objc_opt_respondsToSelector())
  {
    [firstObject setOccluded:occludedCopy];
  }
}

- (void)widgetGridViewController:(id)controller didRequestLaunchForComplicationDescriptor:(id)descriptor withAction:(id)action
{
  descriptorCopy = descriptor;
  actionCopy = action;
  delegate = [(CSWidgetGridViewController *)self delegate];

  if (!delegate || (WeakRetained = objc_loadWeakRetained(&self->_delegate), v10 = [WeakRetained widgetGridViewControllerShouldPreventLaunchFromWidget:self], WeakRetained, (v10 & 1) == 0))
  {
    complicationManager = self->_complicationManager;
    widget = [descriptorCopy widget];
    [(CSComplicationManager *)complicationManager handleLaunchRequestForWidget:widget withAction:actionCopy];
  }
}

- (void)widgetGridModelDidUpdateContent:(id)content
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained widgetGridViewControllerDidUpdateComplicationDescriptors];
}

- (CSWidgetGridViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end