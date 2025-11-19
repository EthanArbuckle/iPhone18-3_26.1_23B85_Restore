@interface CSWidgetGridViewController
- (BOOL)interpretsViewAsContent:(id)a3;
- (CSWidgetGridViewController)initWithComplicationManager:(id)a3 type:(unint64_t)a4 applicationInformer:(id)a5;
- (CSWidgetGridViewControllerDelegate)delegate;
- (UIView)widgetGridContentView;
- (id)_buildComplicationPresentationStateForTraitCollection:(id)a3 interfaceOrientation:(int64_t)a4;
- (id)_currentState;
- (id)_widgetTintParameters;
- (id)sceneHostEnvironmentEntriesForBacklightSession;
- (void)_backlightLuminanceDidChange:(id)a3 previousTraitCollection:(id)a4;
- (void)_updateColors;
- (void)_updateComplicationPresentationState:(id)a3 reason:(id)a4;
- (void)_updateGridViewControllerOccluded:(BOOL)a3;
- (void)_updatePresentationStyleForReason:(id)a3;
- (void)beginCancellingTouches;
- (void)dealloc;
- (void)endCancellingTouches;
- (void)setComplicationDescriptors:(id)a3 iconLayout:(id)a4;
- (void)setContentStyle:(id)a3;
- (void)setNeedsNestedVibrancyEffectView:(BOOL)a3;
- (void)setScreenOff:(BOOL)a3;
- (void)setVibrancyConfiguration:(id)a3;
- (void)setVisible:(BOOL)a3;
- (void)updatePresentationStyleForNewOrientation:(int64_t)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
- (void)widgetGridModelDidUpdateContent:(id)a3;
- (void)widgetGridViewController:(id)a3 didRequestLaunchForComplicationDescriptor:(id)a4 withAction:(id)a5;
- (void)willTransitionToTraitCollection:(id)a3 withTransitionCoordinator:(id)a4;
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
  v3 = [(PRWidgetGridViewController *)self->_widgetGridViewController model];
  v4 = [v3 complicationDescriptors];

  obj = v4;
  v5 = [v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
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
        v10 = [v9 backlightHostEnvironment];
        if (v10)
        {
          v11 = [v9 widget];
          v12 = [v11 extensionIdentity];
          v13 = [v12 containerBundleIdentifier];

          v14 = [MEMORY[0x277D65E08] entryWithSceneHostEnvironment:v10 bundleIdentifier:v13];
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
  v3 = [(PRWidgetGridViewController *)self->_widgetGridViewController model];
  v4 = [v3 complicationDescriptors];

  v5 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v17 + 1) + 8 * i);
        v10 = [(PRWidgetGridViewController *)self->_widgetGridViewController widgetHostViewControllerForComplicationDescriptor:v9];
        v11 = [v10 cancelTouchesForCurrentEventInHostedContent];
        if (v11)
        {
          if (!self->_cancelTouchesAssertionsByUniqueIdentifier)
          {
            v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
            cancelTouchesAssertionsByUniqueIdentifier = self->_cancelTouchesAssertionsByUniqueIdentifier;
            self->_cancelTouchesAssertionsByUniqueIdentifier = v12;
          }

          v14 = [v9 uniqueIdentifier];
          v15 = [(NSMutableDictionary *)self->_cancelTouchesAssertionsByUniqueIdentifier objectForKey:v14];
          v16 = v15;
          if (v15)
          {
            [v15 invalidate];
          }

          [(NSMutableDictionary *)self->_cancelTouchesAssertionsByUniqueIdentifier setObject:v11 forKey:v14];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v6);
  }
}

- (id)_currentState
{
  lastKnownComplicationPresentationState = self->_lastKnownComplicationPresentationState;
  if (!lastKnownComplicationPresentationState)
  {
    v4 = [(CSWidgetGridViewController *)self traitCollection];
    v5 = [(CSWidgetGridViewController *)self _buildComplicationPresentationStateForTraitCollection:v4 interfaceOrientation:[(CSWidgetGridViewController *)self interfaceOrientation]];
    v6 = self->_lastKnownComplicationPresentationState;
    self->_lastKnownComplicationPresentationState = v5;

    lastKnownComplicationPresentationState = self->_lastKnownComplicationPresentationState;
  }

  v7 = lastKnownComplicationPresentationState;

  return v7;
}

- (CSWidgetGridViewController)initWithComplicationManager:(id)a3 type:(unint64_t)a4 applicationInformer:(id)a5
{
  v22[1] = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a5;
  v21.receiver = self;
  v21.super_class = CSWidgetGridViewController;
  v11 = [(CSWidgetGridViewController *)&v21 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_complicationManager, a3);
    v13 = [CSWidgetGridModel alloc];
    v14 = [(CSWidgetGridModel *)v13 initWithComplicationDescriptors:MEMORY[0x277CBEBF8] iconLayout:0 type:a4];
    [(CSWidgetGridModel *)v14 setApplicationInformer:v10];
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
  v3 = [(PRWidgetGridViewController *)self->_widgetGridViewController model];
  [v3 removeWidgetGridModelObserver:self];

  v4.receiver = self;
  v4.super_class = CSWidgetGridViewController;
  [(CSCoverSheetViewControllerBase *)&v4 dealloc];
}

- (void)setNeedsNestedVibrancyEffectView:(BOOL)a3
{
  v3 = a3;
  v5 = [(CSWidgetGridViewController *)self viewIfLoaded];

  if (v5)
  {
    if (self->_needsNestedVibrancyEffectView == v3)
    {
      return;
    }

    if (v3)
    {
      vibrancyEffectView = self->_vibrancyEffectView;
      if (!vibrancyEffectView)
      {
        v7 = objc_alloc_init(MEMORY[0x277CF0D98]);
        v8 = self->_vibrancyEffectView;
        self->_vibrancyEffectView = v7;

        v9 = [(CSWidgetGridViewController *)self view];
        [v9 addSubview:self->_vibrancyEffectView];

        vibrancyEffectView = self->_vibrancyEffectView;
      }

      v10 = [(BSUIVibrancyEffectView *)vibrancyEffectView contentView];
      v11 = [(PRWidgetGridViewController *)self->_widgetGridViewController view];
      [v10 addSubview:v11];

      v12 = self->_vibrancyEffectView;
      v13 = [(CSWidgetGridViewController *)self view];
      [v13 bounds];
      [(BSUIVibrancyEffectView *)v12 setFrame:?];

      v14 = [(PRWidgetGridViewController *)self->_widgetGridViewController view];
      v15 = [(CSWidgetGridViewController *)self view];
      [v15 bounds];
      [v14 setFrame:?];

      [(CSWidgetGridViewController *)self _updateColors];
    }

    else
    {
      v16 = [(PRWidgetGridViewController *)self->_widgetGridViewController view];
      [v16 removeFromSuperview];

      [(BSUIVibrancyEffectView *)self->_vibrancyEffectView removeFromSuperview];
      v17 = self->_vibrancyEffectView;
      self->_vibrancyEffectView = 0;

      contentStyleRenderer = self->_contentStyleRenderer;
      self->_contentStyleRenderer = 0;

      v19 = [(CSWidgetGridViewController *)self view];
      v20 = [(PRWidgetGridViewController *)self->_widgetGridViewController view];
      [v19 addSubview:v20];
    }
  }

  self->_needsNestedVibrancyEffectView = v3;
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

    v5 = [(CSWidgetGridViewController *)self view];
    [v5 addSubview:self->_vibrancyEffectView];
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = CSWidgetGridViewController;
  [(CSCoverSheetViewControllerBase *)&v4 viewWillAppear:a3];
  [(CSWidgetGridViewController *)self setVisible:1];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = CSWidgetGridViewController;
  [(CSCoverSheetViewControllerBase *)&v4 viewDidDisappear:a3];
  [(CSWidgetGridViewController *)self setVisible:0];
}

- (UIView)widgetGridContentView
{
  v2 = [(CSWidgetGridViewController *)self widgetGridViewController];
  v3 = [v2 view];

  return v3;
}

- (void)setComplicationDescriptors:(id)a3 iconLayout:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [(CSWidgetGridViewController *)self widgetGridViewController];
  v8 = [v9 model];
  [v8 setComplicationDescriptors:v7 iconLayout:v6];
}

- (void)setScreenOff:(BOOL)a3
{
  if (self->_screenOff != a3)
  {
    self->_screenOff = a3;
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

- (void)willTransitionToTraitCollection:(id)a3 withTransitionCoordinator:(id)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = CSWidgetGridViewController;
  v7 = a4;
  [(CSWidgetGridViewController *)&v11 willTransitionToTraitCollection:v6 withTransitionCoordinator:v7];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __88__CSWidgetGridViewController_willTransitionToTraitCollection_withTransitionCoordinator___block_invoke;
  v9[3] = &unk_27838CAE8;
  v9[4] = self;
  v10 = v6;
  v8 = v6;
  [v7 animateAlongsideTransition:v9 completion:&__block_literal_global_25];
}

void __88__CSWidgetGridViewController_willTransitionToTraitCollection_withTransitionCoordinator___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 _buildComplicationPresentationStateForTraitCollection:*(a1 + 40) interfaceOrientation:{objc_msgSend(v1, "interfaceOrientation")}];
  [v1 _updateComplicationPresentationState:v2 reason:@"willTransitionToTraitCollection:withTransitionCoordinator:"];
}

- (void)_backlightLuminanceDidChange:(id)a3 previousTraitCollection:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = SBLogDashBoard();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [v8 _backlightLuminance];
    v11 = [v7 traitCollection];
    v15 = 134218240;
    v16 = v10;
    v17 = 2048;
    v18 = [v11 _backlightLuminance];
    _os_log_impl(&dword_21EB05000, v9, OS_LOG_TYPE_DEFAULT, "[Widget Grid] Backlight luminance changed from %lu to %lu", &v15, 0x16u);
  }

  v12 = [v7 traitCollection];
  v13 = [(CSWidgetGridViewController *)self _buildComplicationPresentationStateForTraitCollection:v12 interfaceOrientation:[(CSWidgetGridViewController *)self interfaceOrientation]];
  v14 = NSStringFromSelector(a2);
  [(CSWidgetGridViewController *)self _updateComplicationPresentationState:v13 reason:v14];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v19.receiver = self;
  v19.super_class = CSWidgetGridViewController;
  v7 = a4;
  [(CSCoverSheetViewControllerBase *)&v19 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  v8 = SBFWindowForViewControllerTransition();
  v9 = [v8 _toWindowOrientation];

  v10 = [(CSWidgetGridViewController *)self traitCollection];
  v11 = [(CSWidgetGridViewController *)self _buildComplicationPresentationStateForTraitCollection:v10 interfaceOrientation:v9];

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __81__CSWidgetGridViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v16[3] = &unk_27838CAE8;
  v17 = v11;
  v18 = self;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __81__CSWidgetGridViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_2;
  v13[3] = &unk_27838CAE8;
  v14 = v17;
  v15 = self;
  v12 = v17;
  [v7 animateAlongsideTransition:v16 completion:v13];
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

- (void)setVisible:(BOOL)a3
{
  if (self->_isVisible != a3)
  {
    self->_isVisible = a3;
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
  v4 = [(CSWidgetGridViewController *)self view];
  [v4 bounds];
  [(BSUIVibrancyEffectView *)vibrancyEffectView setFrame:?];

  v5 = [(PRWidgetGridViewController *)self->_widgetGridViewController view];
  v6 = [(CSWidgetGridViewController *)self view];
  [v6 bounds];
  [v5 setFrame:?];
}

- (BOOL)interpretsViewAsContent:(id)a3
{
  v4 = a3;
  if (v4 && self->_isVisible)
  {
    v5 = [(PRWidgetGridViewController *)self->_widgetGridViewController interpretsViewAsContent:v4];
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

- (void)setVibrancyConfiguration:(id)a3
{
  v5 = a3;
  if ((BSEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_vibrancyConfiguration, a3);
    [(CSWidgetGridViewController *)self _updateColors];
  }
}

- (void)setContentStyle:(id)a3
{
  v5 = a3;
  if ((BSEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_contentStyle, a3);
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

- (void)updatePresentationStyleForNewOrientation:(int64_t)a3
{
  v5 = [(CSWidgetGridViewController *)self traitCollection];
  v6 = [(CSWidgetGridViewController *)self _buildComplicationPresentationStateForTraitCollection:v5 interfaceOrientation:a3];

  [(CSWidgetGridViewController *)self _updateComplicationPresentationState:v6 reason:@"Forced Orientation Change"];
}

- (id)_buildComplicationPresentationStateForTraitCollection:(id)a3 interfaceOrientation:(int64_t)a4
{
  v6 = a3;
  v7 = [CSComplicationPresentationState alloc];
  isVisible = self->_isVisible;
  LOBYTE(self) = self->_screenOff;
  v9 = [v6 _backlightLuminance];

  v10 = [(CSComplicationPresentationState *)v7 initWithVisibility:self isScreenOff:v9 backlightLuminance:a4 interfaceOrientation:?];

  return v10;
}

- (void)_updatePresentationStyleForReason:(id)a3
{
  v4 = a3;
  v6 = [(CSWidgetGridViewController *)self traitCollection];
  v5 = [(CSWidgetGridViewController *)self _buildComplicationPresentationStateForTraitCollection:v6 interfaceOrientation:[(CSWidgetGridViewController *)self interfaceOrientation]];
  [(CSWidgetGridViewController *)self _updateComplicationPresentationState:v5 reason:v4];
}

- (void)_updateComplicationPresentationState:(id)a3 reason:(id)a4
{
  v42 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
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
  v10 = [(CSWidgetGridViewController *)self _currentState];
  if (BSEqualObjects() && lastKnownComplicationPresentationState)
  {
    v11 = SBLogCoverSheetWidgets();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134219010;
      v29 = self;
      v30 = 2114;
      v31 = _updateComplicationPresentationState_reason__className;
      v32 = 2114;
      v33 = v10;
      v34 = 2114;
      v35 = v7;
      v36 = 2114;
      v37 = v8;
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
        v29 = self;
        v30 = 2114;
        v31 = _updateComplicationPresentationState_reason__className;
        v32 = 2114;
        v33 = v10;
        v34 = 2114;
        v35 = v7;
        v36 = 2114;
        v37 = v8;
        _os_log_impl(&dword_21EB05000, v12, OS_LOG_TYPE_DEFAULT, "[%p/%{public}@] Proceeding w/ Presentation mode transition because we haven't done one yet, from %{public}@ -> %{public}@ for reason: %{public}@", buf, 0x34u);
      }
    }

    objc_storeStrong(&self->_lastKnownComplicationPresentationState, a3);
    v13 = [(CSComplicationPresentationState *)v7 suggestedComplicationPresentationMode]& 0xFFFFFFFFFFFFFFFELL;
    v14 = [(CSWidgetGridViewController *)self widgetGridViewController];
    v15 = [v14 model];
    v16 = [v15 type];

    v17 = v13 == 2 && v16 != 1;
    if (v16 == 1 && v13 == 2)
    {
      v17 = [(CSComplicationPresentationState *)v7 shouldPresentLandscapeComplications];
    }

    v18 = SBLogCoverSheetWidgets();
    v19 = @"VISIBLE";
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      if (v17)
      {
        v20 = @"VISIBLE";
      }

      else
      {
        v20 = @"OCCLUDED";
      }

      *buf = 134219266;
      v29 = self;
      v30 = 2114;
      v31 = _updateComplicationPresentationState_reason__className;
      v32 = 2114;
      v33 = v20;
      v34 = 2114;
      v35 = v10;
      v36 = 2114;
      v37 = v7;
      v38 = 2114;
      v39 = v8;
      _os_log_impl(&dword_21EB05000, v18, OS_LOG_TYPE_DEFAULT, "[%p/%{public}@] Begin Presentation mode transition to %{public}@ for %{public}@ -> %{public}@ for reason: %{public}@", buf, 0x3Eu);
    }

    if (v17)
    {
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __74__CSWidgetGridViewController__updateComplicationPresentationState_reason___block_invoke_50;
      v26[3] = &unk_27838B770;
      v26[4] = self;
      [MEMORY[0x277D75D18] performWithoutAnimation:v26];
    }

    [(PRWidgetGridViewController *)self->_widgetGridViewController bs_beginAppearanceTransition:v17 animated:0];
    [(CSWidgetGridViewController *)self _updateGridViewControllerOccluded:v17 ^ 1];
    [(PRWidgetGridViewController *)self->_widgetGridViewController bs_endAppearanceTransition:v17];
    if ((v17 & 1) == 0)
    {
      [(CSWidgetGridViewController *)self bs_removeChildViewController:self->_widgetGridViewController];
    }

    v11 = SBLogCoverSheetWidgets();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v21 = _updateComplicationPresentationState_reason__className;
      if (!v17)
      {
        v19 = @"OCCLUDED";
      }

      v22 = [(CSWidgetGridViewController *)self widgetGridViewController];
      v23 = [v22 model];
      v24 = [v23 complicationDescriptors];
      v25 = [v24 count];
      *buf = 134219522;
      v29 = self;
      v30 = 2114;
      v31 = v21;
      v32 = 2114;
      v33 = v19;
      v34 = 2114;
      v35 = v10;
      v36 = 2114;
      v37 = v7;
      v38 = 2114;
      v39 = v8;
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

- (void)_updateGridViewControllerOccluded:(BOOL)a3
{
  v3 = a3;
  v4 = [(PRWidgetGridViewController *)self->_widgetGridViewController view];
  v5 = [v4 subviews];
  v6 = [v5 firstObject];

  if (objc_opt_respondsToSelector())
  {
    [v6 setOccluded:v3];
  }
}

- (void)widgetGridViewController:(id)a3 didRequestLaunchForComplicationDescriptor:(id)a4 withAction:(id)a5
{
  v13 = a4;
  v7 = a5;
  v8 = [(CSWidgetGridViewController *)self delegate];

  if (!v8 || (WeakRetained = objc_loadWeakRetained(&self->_delegate), v10 = [WeakRetained widgetGridViewControllerShouldPreventLaunchFromWidget:self], WeakRetained, (v10 & 1) == 0))
  {
    complicationManager = self->_complicationManager;
    v12 = [v13 widget];
    [(CSComplicationManager *)complicationManager handleLaunchRequestForWidget:v12 withAction:v7];
  }
}

- (void)widgetGridModelDidUpdateContent:(id)a3
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