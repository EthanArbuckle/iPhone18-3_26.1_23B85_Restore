@interface MRUVolumeViewController
- (BOOL)isGroupRenderingRequired;
- (MRUVisualStylingProvider)stylingProvider;
- (MRUVolumeViewController)initWithAudioModuleController:(id)controller;
- (MRUVolumeViewControllerDelegate)delegate;
- (NSArray)containerViewsForPlatterTreatment;
- (NSArray)punchOutRenderingViews;
- (NSString)volumeAudioCategory;
- (UIWindowScene)windowSceneForVolumeDisplay;
- (double)preferredExpandedContentWidth;
- (void)audioModuleController:(id)controller hearingServiceController:(id)serviceController didChangePrimaryAmplification:(float)amplification;
- (void)audioModuleController:(id)controller volumeController:(id)volumeController didChangeVolumeControlCapabilities:(unsigned int)capabilities effectiveVolumeValue:(float)value forType:(int64_t)type;
- (void)dealloc;
- (void)decreaseTouchUpInside:(id)inside;
- (void)didTransitionToExpandedContentMode:(BOOL)mode;
- (void)environmentSliderValueDidChange:(id)change;
- (void)increaseTouchUpInside:(id)inside;
- (void)loadView;
- (void)primarySliderValueDidChange:(id)change;
- (void)secondarySliderValueDidChange:(id)change;
- (void)setCompactContinuousCornerRadius:(double)radius;
- (void)setContentMetrics:(id)metrics;
- (void)setContentRenderingMode:(unint64_t)mode;
- (void)setPrimaryGlyphShouldBeTinted:(BOOL)tinted;
- (void)setPrimaryInteractionEnabled:(BOOL)enabled;
- (void)setSecondaryInteractionEnabled:(BOOL)enabled;
- (void)updateEnvironmentSliderValueAnimated:(BOOL)animated;
- (void)updatePrimarySliderVolumeValueAfterDelay;
- (void)updatePrimarySliderVolumeValueAnimated:(BOOL)animated;
- (void)updateSecondarySliderVolumeValueAnimated:(BOOL)animated;
- (void)updateSliderAsset;
- (void)updateSliderInteractionEnabled;
- (void)updateSliderTint;
- (void)updateVisibility;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation MRUVolumeViewController

- (void)updateVisibility
{
  spatialAudioController = [(MRUAudioModuleController *)self->_audioModuleController spatialAudioController];
  availableModes = [spatialAudioController availableModes];
  v5 = [availableModes count];
  v6 = v5 > 1;

  outputDeviceRouteController = [(MRUAudioModuleController *)self->_audioModuleController outputDeviceRouteController];
  isSplitRoute = [outputDeviceRouteController isSplitRoute];

  volumeController = [(MRUAudioModuleController *)self->_audioModuleController volumeController];
  v10 = [volumeController volumeCapabilitiesForType:0];

  v11 = +[MRUFeatureFlagProvider isRelativeVolumeUIEnabled];
  v12 = (v10 & 5) != 0 && v11;
  hearingServiceController = [(MRUAudioModuleController *)self->_audioModuleController hearingServiceController];
  v14 = [hearingServiceController primaryHearingAidEnabled] & (isSplitRoute ^ 1);

  view = [(MRUVolumeViewController *)self view];
  v16 = isSplitRoute ^ [view showSecondarySlider];
  if (v16)
  {
    goto LABEL_5;
  }

  view2 = [(MRUVolumeViewController *)self view];
  showEnvironmentSlider = [view2 showEnvironmentSlider];

  if (v14 == showEnvironmentSlider)
  {
    view = [(MRUVolumeViewController *)self view];
    if (v12 != [view showStepper])
    {
LABEL_5:

      goto LABEL_8;
    }

    v23 = v5 > 1;
    view3 = [(MRUVolumeViewController *)self view];
    v25 = v23 ^ [view3 showSpatialAudioModeButton];

    if ((v25 & 1) == 0)
    {
      return;
    }

    v16 = 0;
  }

  else
  {
    v16 = 1;
  }

LABEL_8:
  v19 = MEMORY[0x1E6997258];
  view4 = [(MRUVolumeViewController *)self view];
  window = [view4 window];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __43__MRUVolumeViewController_updateVisibility__block_invoke;
  v26[3] = &unk_1E7664308;
  v26[4] = self;
  v27 = isSplitRoute;
  v28 = v14;
  v29 = v12;
  v30 = v6;
  [v19 performWithoutAnimationWhileHiddenInWindow:window actions:v26];

  if (v16)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained volumeViewControllerDidInvalidateContainerViewsForPlatterTreatment:self];
  }
}

- (void)updateSliderAsset
{
  if (self->_contentRenderingMode == 1)
  {
    systemOutputDeviceAssetWithInCall = +[MRUOutputDeviceAsset speakerAsset];
    CCUISliderPreviewRenderingModeValue();
    v4 = v3;
  }

  else
  {
    outputDeviceRouteController = [(MRUAudioModuleController *)self->_audioModuleController outputDeviceRouteController];
    systemOutputDeviceAssetWithInCall = [outputDeviceRouteController systemOutputDeviceAssetWithInCall];

    volumeController = [(MRUAudioModuleController *)self->_audioModuleController volumeController];
    [volumeController volumeValueForType:0];
    v4 = v7;
  }

  *&v3 = v4;
  v8 = [MRUSystemVolumeController packageStateForVolumeValue:v3];
  view = [(MRUVolumeViewController *)self view];
  primarySlider = [view primarySlider];
  [primarySlider setOutputDeviceAsset:systemOutputDeviceAssetWithInCall state:v8 animated:{-[MRUVolumeViewController isOnScreen](self, "isOnScreen")}];
}

- (MRUVolumeViewController)initWithAudioModuleController:(id)controller
{
  controllerCopy = controller;
  v9.receiver = self;
  v9.super_class = MRUVolumeViewController;
  v6 = [(MRUVolumeViewController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_audioModuleController, controller);
  }

  return v7;
}

- (void)dealloc
{
  mEMORY[0x1E6970A38] = [MEMORY[0x1E6970A38] sharedInstance];
  [mEMORY[0x1E6970A38] removeVolumeDisplay:self];

  v4.receiver = self;
  v4.super_class = MRUVolumeViewController;
  [(MRUVolumeViewController *)&v4 dealloc];
}

- (void)loadView
{
  v3 = [MRUVolumeView alloc];
  v4 = [(MRUVolumeView *)v3 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  [(MRUVolumeViewController *)self setView:v4];
}

- (void)viewDidLoad
{
  v18.receiver = self;
  v18.super_class = MRUVolumeViewController;
  [(MRUVolumeViewController *)&v18 viewDidLoad];
  view = [(MRUVolumeViewController *)self view];
  primarySlider = [view primarySlider];
  [primarySlider addTarget:self action:sel_primarySliderValueDidChange_ forControlEvents:4096];

  view2 = [(MRUVolumeViewController *)self view];
  secondarySlider = [view2 secondarySlider];
  [secondarySlider addTarget:self action:sel_secondarySliderValueDidChange_ forControlEvents:4096];

  view3 = [(MRUVolumeViewController *)self view];
  environmentSlider = [view3 environmentSlider];
  [environmentSlider addTarget:self action:sel_environmentSliderValueDidChange_ forControlEvents:0x40000];

  view4 = [(MRUVolumeViewController *)self view];
  stepper = [view4 stepper];
  increaseButton = [stepper increaseButton];
  [increaseButton addTarget:self action:sel_increaseTouchUpInside_ forControlEvents:64];

  view5 = [(MRUVolumeViewController *)self view];
  stepper2 = [view5 stepper];
  decreaseButton = [stepper2 decreaseButton];
  [decreaseButton addTarget:self action:sel_decreaseTouchUpInside_ forControlEvents:64];

  [(MRUVolumeViewController *)self compactContinuousCornerRadius];
  v16 = v15;
  view6 = [(MRUVolumeViewController *)self view];
  [view6 setCompactContinuousCornerRadius:v16];

  [(MRUAudioModuleController *)self->_audioModuleController addObserver:self];
  [(MRUVolumeViewController *)self updateSliderTint];
  [(MRUVolumeViewController *)self updateSliderAsset];
  [(MRUVolumeViewController *)self updateSliderInteractionEnabled];
  [(MRUVolumeViewController *)self updateVisibility];
  [(MRUVolumeViewController *)self setPrimaryInteractionEnabled:1];
  [(MRUVolumeViewController *)self setSecondaryInteractionEnabled:1];
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v6.receiver = self;
  v6.super_class = MRUVolumeViewController;
  [(MRUVolumeViewController *)&v6 viewWillAppear:?];
  [(MRUVolumeViewController *)self updateSliderInteractionEnabled];
  [(MRUVolumeViewController *)self updatePrimarySliderVolumeValueAnimated:appearCopy];
  mEMORY[0x1E6970A38] = [MEMORY[0x1E6970A38] sharedInstance];
  [mEMORY[0x1E6970A38] addVolumeDisplay:self];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = MRUVolumeViewController;
  [(MRUVolumeViewController *)&v5 viewWillDisappear:disappear];
  [(MRUVolumeViewController *)self updateSliderInteractionEnabled];
  mEMORY[0x1E6970A38] = [MEMORY[0x1E6970A38] sharedInstance];
  [mEMORY[0x1E6970A38] removeVolumeDisplay:self];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v11.receiver = self;
  v11.super_class = MRUVolumeViewController;
  coordinatorCopy = coordinator;
  [(MRUVolumeViewController *)&v11 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  isAnimated = [coordinatorCopy isAnimated];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __78__MRUVolumeViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v9[3] = &unk_1E76642B8;
  v9[4] = self;
  v10 = isAnimated;
  [coordinatorCopy animateAlongsideTransition:v9 completion:0];
}

uint64_t __78__MRUVolumeViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x1E69DD250];
  v6 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __78__MRUVolumeViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_2;
  v4[3] = &unk_1E7663F38;
  v4[4] = *(a1 + 32);
  v5 = *(a1 + 40);
  return [v2 _modifyAnimationsWithPreferredFrameRateRange:1966082 updateReason:v4 animations:{*&v6.minimum, *&v6.maximum, *&v6.preferred}];
}

void __78__MRUVolumeViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) pendingExpanded];
  v3 = [*(a1 + 32) view];
  [v3 setExpanded:v2];

  [*(a1 + 32) updatePrimarySliderVolumeValueAnimated:*(a1 + 40)];
  [*(a1 + 32) updateSecondarySliderVolumeValueAnimated:*(a1 + 40)];
  v4 = [*(a1 + 32) view];
  [v4 layoutIfNeeded];
}

- (MRUVisualStylingProvider)stylingProvider
{
  view = [(MRUVolumeViewController *)self view];
  stylingProvider = [view stylingProvider];

  return stylingProvider;
}

- (void)setPrimaryInteractionEnabled:(BOOL)enabled
{
  if (self->_primaryInteractionEnabled != enabled)
  {
    enabledCopy = enabled;
    self->_primaryInteractionEnabled = enabled;
    view = [(MRUVolumeViewController *)self view];
    [view setPrimaryInteractionEnabled:enabledCopy];

    [(MRUVolumeViewController *)self updatePrimarySliderVolumeValueAnimated:0];
  }
}

- (void)setPrimaryGlyphShouldBeTinted:(BOOL)tinted
{
  if (self->_primaryGlyphShouldBeTinted != tinted)
  {
    self->_primaryGlyphShouldBeTinted = tinted;
    [(MRUVolumeViewController *)self updateSliderTint];
  }
}

- (void)setSecondaryInteractionEnabled:(BOOL)enabled
{
  if (self->_secondaryInteractionEnabled != enabled)
  {
    enabledCopy = enabled;
    self->_secondaryInteractionEnabled = enabled;
    view = [(MRUVolumeViewController *)self view];
    [view setSecondaryInteractionEnabled:enabledCopy];

    [(MRUVolumeViewController *)self updateSecondarySliderVolumeValueAnimated:0];
  }
}

- (void)primarySliderValueDidChange:(id)change
{
  v24 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  view = [(MRUVolumeViewController *)self view];
  if ([view isExpanded])
  {
    view2 = [(MRUVolumeViewController *)self view];
    showSecondarySlider = [view2 showSecondarySlider];

    if (showSecondarySlider)
    {
      volumeController = [(MRUAudioModuleController *)self->_audioModuleController volumeController];
      [changeCopy value];
      [volumeController setVolumeValue:1 forType:?];

      goto LABEL_8;
    }
  }

  else
  {
  }

  volumeController2 = [(MRUAudioModuleController *)self->_audioModuleController volumeController];
  [changeCopy value];
  [volumeController2 setVolumeValue:0 forType:?];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [changeCopy value];
  [WeakRetained volumeViewController:self didChangeSystemVolumeValue:?];

  v11 = MCLogCategoryDefault();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = objc_opt_class();
    v13 = MEMORY[0x1E696AD98];
    [changeCopy value];
    v14 = [v13 numberWithFloat:?];
    v16 = 138544130;
    v17 = v12;
    v18 = 2114;
    v19 = v14;
    v20 = 1024;
    isEditingValue = [changeCopy isEditingValue];
    v22 = 1024;
    isTracking = [changeCopy isTracking];
    _os_log_impl(&dword_1A20FC000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ slider value changed: %{public}@ | editing: %{BOOL}u | tracking: %{BOOL}u", &v16, 0x22u);
  }

  [(MRUVolumeViewController *)self updatePrimarySliderVolumeValueAfterDelay];
LABEL_8:
  [changeCopy value];
  v15 = [MRUSystemVolumeController packageStateForVolumeValue:?];
  [changeCopy setGlyphState:v15];
}

- (void)secondarySliderValueDidChange:(id)change
{
  audioModuleController = self->_audioModuleController;
  changeCopy = change;
  volumeController = [(MRUAudioModuleController *)audioModuleController volumeController];
  [changeCopy value];
  v6 = v5;

  LODWORD(v7) = v6;
  [volumeController setVolumeValue:2 forType:v7];
}

- (void)environmentSliderValueDidChange:(id)change
{
  [change value];
  v5 = v4;
  hearingServiceController = [(MRUAudioModuleController *)self->_audioModuleController hearingServiceController];
  LODWORD(v6) = v5;
  [hearingServiceController setPrimaryAmplification:v6];
}

- (void)increaseTouchUpInside:(id)inside
{
  volumeController = [(MRUAudioModuleController *)self->_audioModuleController volumeController];
  [volumeController increaseVolume];
}

- (void)decreaseTouchUpInside:(id)inside
{
  volumeController = [(MRUAudioModuleController *)self->_audioModuleController volumeController];
  [volumeController decreaseVolume];
}

- (NSArray)containerViewsForPlatterTreatment
{
  v3 = MEMORY[0x1E695DF70];
  view = [(MRUVolumeViewController *)self view];
  primarySlider = [view primarySlider];
  elasticContentView = [primarySlider elasticContentView];
  v7 = [v3 arrayWithObject:elasticContentView];

  view2 = [(MRUVolumeViewController *)self view];
  LODWORD(primarySlider) = [view2 showSecondarySlider];

  if (primarySlider)
  {
    view3 = [(MRUVolumeViewController *)self view];
    secondarySlider = [view3 secondarySlider];
    elasticContentView2 = [secondarySlider elasticContentView];
    [v7 addObject:elasticContentView2];
  }

  view4 = [(MRUVolumeViewController *)self view];
  showEnvironmentSlider = [view4 showEnvironmentSlider];

  if (showEnvironmentSlider)
  {
    view5 = [(MRUVolumeViewController *)self view];
    environmentSlider = [view5 environmentSlider];
    elasticContentView3 = [environmentSlider elasticContentView];
    [v7 addObject:elasticContentView3];
  }

  return v7;
}

- (double)preferredExpandedContentWidth
{
  view = [(MRUVolumeViewController *)self view];
  ShouldBeVertical = MRULayoutShouldBeVertical();
  if (ShouldBeVertical)
  {
    Width = MRUDefaultExpandedWidth(ShouldBeVertical);
  }

  else
  {
    view2 = [(MRUVolumeViewController *)self view];
    window = [view2 window];
    [window bounds];
    Width = CGRectGetWidth(v9);
  }

  return Width;
}

- (void)setCompactContinuousCornerRadius:(double)radius
{
  if (self->_compactContinuousCornerRadius != radius)
  {
    self->_compactContinuousCornerRadius = radius;
    viewIfLoaded = [(MRUVolumeViewController *)self viewIfLoaded];
    [viewIfLoaded setCompactContinuousCornerRadius:radius];
  }
}

- (void)setContentRenderingMode:(unint64_t)mode
{
  self->_contentRenderingMode = mode;
  [(MRUVolumeViewController *)self updateSliderAsset];
  [(MRUVolumeViewController *)self updatePrimarySliderVolumeValueAnimated:0];

  [(MRUVolumeViewController *)self updateSliderInteractionEnabled];
}

- (void)setContentMetrics:(id)metrics
{
  metricsCopy = metrics;
  view = [(MRUVolumeViewController *)self view];
  [view setContentMetrics:metricsCopy];
}

- (void)didTransitionToExpandedContentMode:(BOOL)mode
{
  v8[1] = *MEMORY[0x1E69E9840];
  if (mode)
  {
    v7 = *MEMORY[0x1E69B0B90];
    v3 = +[MRUSystemOutputDeviceRouteController outputContextDescription];
    v8[0] = v3;
    v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];

    v6 = v4;
    v5 = v4;
    MRAnalyticsSendEvent();
  }
}

- (BOOL)isGroupRenderingRequired
{
  view = [(MRUVolumeViewController *)self view];
  isGroupRenderingRequired = [view isGroupRenderingRequired];

  return isGroupRenderingRequired;
}

- (NSArray)punchOutRenderingViews
{
  view = [(MRUVolumeViewController *)self view];
  punchOutRenderingViews = [view punchOutRenderingViews];

  return punchOutRenderingViews;
}

- (UIWindowScene)windowSceneForVolumeDisplay
{
  viewIfLoaded = [(MRUVolumeViewController *)self viewIfLoaded];
  window = [viewIfLoaded window];
  windowScene = [window windowScene];

  return windowScene;
}

- (NSString)volumeAudioCategory
{
  volumeController = [(MRUAudioModuleController *)self->_audioModuleController volumeController];
  volumeAudioCategory = [volumeController volumeAudioCategory];

  return volumeAudioCategory;
}

- (void)audioModuleController:(id)controller volumeController:(id)volumeController didChangeVolumeControlCapabilities:(unsigned int)capabilities effectiveVolumeValue:(float)value forType:(int64_t)type
{
  v36 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  volumeControllerCopy = volumeController;
  if (type >= 2)
  {
    if (type == 2)
    {
      view = [(MRUVolumeViewController *)self view];
      secondarySlider = [view secondarySlider];
      isEditingValue = [secondarySlider isEditingValue];

      if ((isEditingValue & 1) == 0)
      {
        [(MRUVolumeViewController *)self updateSecondarySliderVolumeValueAnimated:1];
      }
    }
  }

  else
  {
    view2 = [(MRUVolumeViewController *)self view];
    primarySlider = [view2 primarySlider];
    isEditingValue2 = [primarySlider isEditingValue];

    if ((isEditingValue2 & 1) == 0)
    {
      [(MRUVolumeViewController *)self updatePrimarySliderVolumeValueAnimated:1];
    }

    v16 = MCLogCategoryDefault();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v27 = objc_opt_class();
      *&v17 = value;
      v18 = [MEMORY[0x1E696AD98] numberWithFloat:v17];
      view3 = [(MRUVolumeViewController *)self view];
      primarySlider2 = [view3 primarySlider];
      isEditingValue3 = [primarySlider2 isEditingValue];
      view4 = [(MRUVolumeViewController *)self view];
      primarySlider3 = [view4 primarySlider];
      *buf = 138544130;
      v29 = v27;
      v30 = 2114;
      v31 = v18;
      v32 = 1024;
      v33 = isEditingValue3;
      v34 = 1024;
      isTracking = [primarySlider3 isTracking];
      _os_log_impl(&dword_1A20FC000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@ system volume changed: %{public}@ | editing: %{BOOL}u | tracking: %{BOOL}u", buf, 0x22u);
    }
  }

  [(MRUVolumeViewController *)self updateVisibility];
}

- (void)audioModuleController:(id)controller hearingServiceController:(id)serviceController didChangePrimaryAmplification:(float)amplification
{
  v6 = [(MRUVolumeViewController *)self view:controller];
  environmentSlider = [v6 environmentSlider];
  isEditingValue = [environmentSlider isEditingValue];

  if ((isEditingValue & 1) == 0)
  {

    [(MRUVolumeViewController *)self updateEnvironmentSliderValueAnimated:1];
  }
}

- (void)updateSliderTint
{
  if ([(MRUVolumeViewController *)self primaryGlyphShouldBeTinted])
  {
    systemCyanColor = [MEMORY[0x1E69DC888] systemCyanColor];
  }

  else
  {
    systemCyanColor = 0;
  }

  view = [(MRUVolumeViewController *)self view];
  primarySlider = [view primarySlider];
  [primarySlider setGlyphTintColor:systemCyanColor];

  view2 = [(MRUVolumeViewController *)self view];
  environmentSlider = [view2 environmentSlider];
  [environmentSlider setGlyphTintColor:systemCyanColor];
}

- (void)updateSliderInteractionEnabled
{
  bs_isAppearingOrAppeared = [(MRUVolumeViewController *)self bs_isAppearingOrAppeared];
  if (bs_isAppearingOrAppeared)
  {
    v4 = self->_contentRenderingMode != 1;
  }

  else
  {
    v4 = 0;
  }

  view = [(MRUVolumeViewController *)self view];
  primarySlider = [view primarySlider];
  [primarySlider setUserInteractionEnabled:v4];

  view2 = [(MRUVolumeViewController *)self view];
  secondarySlider = [view2 secondarySlider];
  [secondarySlider setUserInteractionEnabled:bs_isAppearingOrAppeared];
}

- (void)updatePrimarySliderVolumeValueAfterDelay
{
  [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel_updatePrimarySliderVolumeValueAfterDelay object:0];
  view = [(MRUVolumeViewController *)self view];
  primarySlider = [view primarySlider];
  isEditingValue = [primarySlider isEditingValue];

  if (isEditingValue)
  {

    [(MRUVolumeViewController *)self performSelector:sel_updatePrimarySliderVolumeValueAfterDelay withObject:0 afterDelay:0.25];
  }

  else
  {

    [(MRUVolumeViewController *)self updatePrimarySliderVolumeValueAnimated:1];
  }
}

- (void)updatePrimarySliderVolumeValueAnimated:(BOOL)animated
{
  animatedCopy = animated;
  view = [(MRUVolumeViewController *)self view];
  if ([view isExpanded])
  {
    view2 = [(MRUVolumeViewController *)self view];
    showSecondarySlider = [view2 showSecondarySlider];
  }

  else
  {
    showSecondarySlider = 0;
  }

  volumeController = [(MRUAudioModuleController *)self->_audioModuleController volumeController];
  [volumeController volumeValueForType:showSecondarySlider];
  v10 = v9;

  volumeController2 = [(MRUAudioModuleController *)self->_audioModuleController volumeController];
  v12 = [volumeController2 volumeCapabilitiesForType:showSecondarySlider];

  if (self->_contentRenderingMode == 1)
  {
    CCUISliderPreviewRenderingModeValue();
    v10 = v13;
  }

  else if ((v12 & 2) == 0)
  {
    v14 = 1;
    goto LABEL_9;
  }

  v14 = !self->_primaryInteractionEnabled;
LABEL_9:
  view3 = [(MRUVolumeViewController *)self view];
  primarySlider = [view3 primarySlider];
  *&v17 = v10;
  [primarySlider setValue:animatedCopy animated:v17];

  view4 = [(MRUVolumeViewController *)self view];
  primarySlider2 = [view4 primarySlider];
  [primarySlider2 setInoperative:v14];

  *&v20 = v10;
  v21 = [MRUSystemVolumeController packageStateForVolumeValue:v20];
  view5 = [(MRUVolumeViewController *)self view];
  primarySlider3 = [view5 primarySlider];
  [primarySlider3 setGlyphState:v21];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  *&v24 = v10;
  [WeakRetained volumeViewController:self didChangeSystemVolumeValue:v24];
}

- (void)updateSecondarySliderVolumeValueAnimated:(BOOL)animated
{
  animatedCopy = animated;
  volumeController = [(MRUAudioModuleController *)self->_audioModuleController volumeController];
  [volumeController volumeValueForType:2];
  v7 = v6;

  volumeController2 = [(MRUAudioModuleController *)self->_audioModuleController volumeController];
  v9 = [volumeController2 volumeCapabilitiesForType:2];

  v10 = (v9 & 2) == 0 || !self->_secondaryInteractionEnabled;
  view = [(MRUVolumeViewController *)self view];
  secondarySlider = [view secondarySlider];
  LODWORD(v13) = v7;
  [secondarySlider setValue:animatedCopy animated:v13];

  view2 = [(MRUVolumeViewController *)self view];
  secondarySlider2 = [view2 secondarySlider];
  [secondarySlider2 setInoperative:v10];
}

- (void)updateEnvironmentSliderValueAnimated:(BOOL)animated
{
  animatedCopy = animated;
  listeningModeController = [(MRUAudioModuleController *)self->_audioModuleController listeningModeController];
  primaryListeningMode = [listeningModeController primaryListeningMode];
  v7 = [primaryListeningMode isEqualToString:*MEMORY[0x1E6958738]];

  hearingServiceController = [(MRUAudioModuleController *)self->_audioModuleController hearingServiceController];
  [hearingServiceController primaryAmplification];
  v10 = v9;

  view = [(MRUVolumeViewController *)self view];
  environmentSlider = [view environmentSlider];
  LODWORD(v13) = v10;
  [environmentSlider setValue:animatedCopy animated:v13];

  view2 = [(MRUVolumeViewController *)self view];
  environmentSlider2 = [view2 environmentSlider];
  [environmentSlider2 setInoperative:v7];
}

uint64_t __43__MRUVolumeViewController_updateVisibility__block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __43__MRUVolumeViewController_updateVisibility__block_invoke_2;
  v2[3] = &unk_1E7664308;
  v2[4] = *(a1 + 32);
  v3 = *(a1 + 40);
  return [MEMORY[0x1E69DD250] animateWithDuration:v2 animations:0.25];
}

void __43__MRUVolumeViewController_updateVisibility__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) view];
  [v3 setShowSecondarySlider:v2];

  v4 = *(a1 + 41);
  v5 = [*(a1 + 32) view];
  [v5 setShowEnvironmentSlider:v4];

  v6 = *(a1 + 42);
  v7 = [*(a1 + 32) view];
  [v7 setShowStepper:v6];

  v8 = *(a1 + 43);
  v9 = [*(a1 + 32) view];
  [v9 setShowSpatialAudioModeButton:v8];

  v10 = [*(a1 + 32) view];
  [v10 layoutIfNeeded];
}

- (MRUVolumeViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end