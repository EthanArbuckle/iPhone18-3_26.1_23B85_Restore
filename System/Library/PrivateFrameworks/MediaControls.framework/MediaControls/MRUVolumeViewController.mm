@interface MRUVolumeViewController
- (BOOL)isGroupRenderingRequired;
- (MRUVisualStylingProvider)stylingProvider;
- (MRUVolumeViewController)initWithAudioModuleController:(id)a3;
- (MRUVolumeViewControllerDelegate)delegate;
- (NSArray)containerViewsForPlatterTreatment;
- (NSArray)punchOutRenderingViews;
- (NSString)volumeAudioCategory;
- (UIWindowScene)windowSceneForVolumeDisplay;
- (double)preferredExpandedContentWidth;
- (void)audioModuleController:(id)a3 hearingServiceController:(id)a4 didChangePrimaryAmplification:(float)a5;
- (void)audioModuleController:(id)a3 volumeController:(id)a4 didChangeVolumeControlCapabilities:(unsigned int)a5 effectiveVolumeValue:(float)a6 forType:(int64_t)a7;
- (void)dealloc;
- (void)decreaseTouchUpInside:(id)a3;
- (void)didTransitionToExpandedContentMode:(BOOL)a3;
- (void)environmentSliderValueDidChange:(id)a3;
- (void)increaseTouchUpInside:(id)a3;
- (void)loadView;
- (void)primarySliderValueDidChange:(id)a3;
- (void)secondarySliderValueDidChange:(id)a3;
- (void)setCompactContinuousCornerRadius:(double)a3;
- (void)setContentMetrics:(id)a3;
- (void)setContentRenderingMode:(unint64_t)a3;
- (void)setPrimaryGlyphShouldBeTinted:(BOOL)a3;
- (void)setPrimaryInteractionEnabled:(BOOL)a3;
- (void)setSecondaryInteractionEnabled:(BOOL)a3;
- (void)updateEnvironmentSliderValueAnimated:(BOOL)a3;
- (void)updatePrimarySliderVolumeValueAfterDelay;
- (void)updatePrimarySliderVolumeValueAnimated:(BOOL)a3;
- (void)updateSecondarySliderVolumeValueAnimated:(BOOL)a3;
- (void)updateSliderAsset;
- (void)updateSliderInteractionEnabled;
- (void)updateSliderTint;
- (void)updateVisibility;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation MRUVolumeViewController

- (void)updateVisibility
{
  v3 = [(MRUAudioModuleController *)self->_audioModuleController spatialAudioController];
  v4 = [v3 availableModes];
  v5 = [v4 count];
  v6 = v5 > 1;

  v7 = [(MRUAudioModuleController *)self->_audioModuleController outputDeviceRouteController];
  v8 = [v7 isSplitRoute];

  v9 = [(MRUAudioModuleController *)self->_audioModuleController volumeController];
  v10 = [v9 volumeCapabilitiesForType:0];

  v11 = +[MRUFeatureFlagProvider isRelativeVolumeUIEnabled];
  v12 = (v10 & 5) != 0 && v11;
  v13 = [(MRUAudioModuleController *)self->_audioModuleController hearingServiceController];
  v14 = [v13 primaryHearingAidEnabled] & (v8 ^ 1);

  v15 = [(MRUVolumeViewController *)self view];
  v16 = v8 ^ [v15 showSecondarySlider];
  if (v16)
  {
    goto LABEL_5;
  }

  v17 = [(MRUVolumeViewController *)self view];
  v18 = [v17 showEnvironmentSlider];

  if (v14 == v18)
  {
    v15 = [(MRUVolumeViewController *)self view];
    if (v12 != [v15 showStepper])
    {
LABEL_5:

      goto LABEL_8;
    }

    v23 = v5 > 1;
    v24 = [(MRUVolumeViewController *)self view];
    v25 = v23 ^ [v24 showSpatialAudioModeButton];

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
  v20 = [(MRUVolumeViewController *)self view];
  v21 = [v20 window];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __43__MRUVolumeViewController_updateVisibility__block_invoke;
  v26[3] = &unk_1E7664308;
  v26[4] = self;
  v27 = v8;
  v28 = v14;
  v29 = v12;
  v30 = v6;
  [v19 performWithoutAnimationWhileHiddenInWindow:v21 actions:v26];

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
    v11 = +[MRUOutputDeviceAsset speakerAsset];
    CCUISliderPreviewRenderingModeValue();
    v4 = v3;
  }

  else
  {
    v5 = [(MRUAudioModuleController *)self->_audioModuleController outputDeviceRouteController];
    v11 = [v5 systemOutputDeviceAssetWithInCall];

    v6 = [(MRUAudioModuleController *)self->_audioModuleController volumeController];
    [v6 volumeValueForType:0];
    v4 = v7;
  }

  *&v3 = v4;
  v8 = [MRUSystemVolumeController packageStateForVolumeValue:v3];
  v9 = [(MRUVolumeViewController *)self view];
  v10 = [v9 primarySlider];
  [v10 setOutputDeviceAsset:v11 state:v8 animated:{-[MRUVolumeViewController isOnScreen](self, "isOnScreen")}];
}

- (MRUVolumeViewController)initWithAudioModuleController:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MRUVolumeViewController;
  v6 = [(MRUVolumeViewController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_audioModuleController, a3);
  }

  return v7;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E6970A38] sharedInstance];
  [v3 removeVolumeDisplay:self];

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
  v3 = [(MRUVolumeViewController *)self view];
  v4 = [v3 primarySlider];
  [v4 addTarget:self action:sel_primarySliderValueDidChange_ forControlEvents:4096];

  v5 = [(MRUVolumeViewController *)self view];
  v6 = [v5 secondarySlider];
  [v6 addTarget:self action:sel_secondarySliderValueDidChange_ forControlEvents:4096];

  v7 = [(MRUVolumeViewController *)self view];
  v8 = [v7 environmentSlider];
  [v8 addTarget:self action:sel_environmentSliderValueDidChange_ forControlEvents:0x40000];

  v9 = [(MRUVolumeViewController *)self view];
  v10 = [v9 stepper];
  v11 = [v10 increaseButton];
  [v11 addTarget:self action:sel_increaseTouchUpInside_ forControlEvents:64];

  v12 = [(MRUVolumeViewController *)self view];
  v13 = [v12 stepper];
  v14 = [v13 decreaseButton];
  [v14 addTarget:self action:sel_decreaseTouchUpInside_ forControlEvents:64];

  [(MRUVolumeViewController *)self compactContinuousCornerRadius];
  v16 = v15;
  v17 = [(MRUVolumeViewController *)self view];
  [v17 setCompactContinuousCornerRadius:v16];

  [(MRUAudioModuleController *)self->_audioModuleController addObserver:self];
  [(MRUVolumeViewController *)self updateSliderTint];
  [(MRUVolumeViewController *)self updateSliderAsset];
  [(MRUVolumeViewController *)self updateSliderInteractionEnabled];
  [(MRUVolumeViewController *)self updateVisibility];
  [(MRUVolumeViewController *)self setPrimaryInteractionEnabled:1];
  [(MRUVolumeViewController *)self setSecondaryInteractionEnabled:1];
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = MRUVolumeViewController;
  [(MRUVolumeViewController *)&v6 viewWillAppear:?];
  [(MRUVolumeViewController *)self updateSliderInteractionEnabled];
  [(MRUVolumeViewController *)self updatePrimarySliderVolumeValueAnimated:v3];
  v5 = [MEMORY[0x1E6970A38] sharedInstance];
  [v5 addVolumeDisplay:self];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = MRUVolumeViewController;
  [(MRUVolumeViewController *)&v5 viewWillDisappear:a3];
  [(MRUVolumeViewController *)self updateSliderInteractionEnabled];
  v4 = [MEMORY[0x1E6970A38] sharedInstance];
  [v4 removeVolumeDisplay:self];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v11.receiver = self;
  v11.super_class = MRUVolumeViewController;
  v7 = a4;
  [(MRUVolumeViewController *)&v11 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  v8 = [v7 isAnimated];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __78__MRUVolumeViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v9[3] = &unk_1E76642B8;
  v9[4] = self;
  v10 = v8;
  [v7 animateAlongsideTransition:v9 completion:0];
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
  v2 = [(MRUVolumeViewController *)self view];
  v3 = [v2 stylingProvider];

  return v3;
}

- (void)setPrimaryInteractionEnabled:(BOOL)a3
{
  if (self->_primaryInteractionEnabled != a3)
  {
    v4 = a3;
    self->_primaryInteractionEnabled = a3;
    v6 = [(MRUVolumeViewController *)self view];
    [v6 setPrimaryInteractionEnabled:v4];

    [(MRUVolumeViewController *)self updatePrimarySliderVolumeValueAnimated:0];
  }
}

- (void)setPrimaryGlyphShouldBeTinted:(BOOL)a3
{
  if (self->_primaryGlyphShouldBeTinted != a3)
  {
    self->_primaryGlyphShouldBeTinted = a3;
    [(MRUVolumeViewController *)self updateSliderTint];
  }
}

- (void)setSecondaryInteractionEnabled:(BOOL)a3
{
  if (self->_secondaryInteractionEnabled != a3)
  {
    v4 = a3;
    self->_secondaryInteractionEnabled = a3;
    v6 = [(MRUVolumeViewController *)self view];
    [v6 setSecondaryInteractionEnabled:v4];

    [(MRUVolumeViewController *)self updateSecondarySliderVolumeValueAnimated:0];
  }
}

- (void)primarySliderValueDidChange:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(MRUVolumeViewController *)self view];
  if ([v5 isExpanded])
  {
    v6 = [(MRUVolumeViewController *)self view];
    v7 = [v6 showSecondarySlider];

    if (v7)
    {
      v8 = [(MRUAudioModuleController *)self->_audioModuleController volumeController];
      [v4 value];
      [v8 setVolumeValue:1 forType:?];

      goto LABEL_8;
    }
  }

  else
  {
  }

  v9 = [(MRUAudioModuleController *)self->_audioModuleController volumeController];
  [v4 value];
  [v9 setVolumeValue:0 forType:?];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [v4 value];
  [WeakRetained volumeViewController:self didChangeSystemVolumeValue:?];

  v11 = MCLogCategoryDefault();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = objc_opt_class();
    v13 = MEMORY[0x1E696AD98];
    [v4 value];
    v14 = [v13 numberWithFloat:?];
    v16 = 138544130;
    v17 = v12;
    v18 = 2114;
    v19 = v14;
    v20 = 1024;
    v21 = [v4 isEditingValue];
    v22 = 1024;
    v23 = [v4 isTracking];
    _os_log_impl(&dword_1A20FC000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ slider value changed: %{public}@ | editing: %{BOOL}u | tracking: %{BOOL}u", &v16, 0x22u);
  }

  [(MRUVolumeViewController *)self updatePrimarySliderVolumeValueAfterDelay];
LABEL_8:
  [v4 value];
  v15 = [MRUSystemVolumeController packageStateForVolumeValue:?];
  [v4 setGlyphState:v15];
}

- (void)secondarySliderValueDidChange:(id)a3
{
  audioModuleController = self->_audioModuleController;
  v4 = a3;
  v8 = [(MRUAudioModuleController *)audioModuleController volumeController];
  [v4 value];
  v6 = v5;

  LODWORD(v7) = v6;
  [v8 setVolumeValue:2 forType:v7];
}

- (void)environmentSliderValueDidChange:(id)a3
{
  [a3 value];
  v5 = v4;
  v7 = [(MRUAudioModuleController *)self->_audioModuleController hearingServiceController];
  LODWORD(v6) = v5;
  [v7 setPrimaryAmplification:v6];
}

- (void)increaseTouchUpInside:(id)a3
{
  v3 = [(MRUAudioModuleController *)self->_audioModuleController volumeController];
  [v3 increaseVolume];
}

- (void)decreaseTouchUpInside:(id)a3
{
  v3 = [(MRUAudioModuleController *)self->_audioModuleController volumeController];
  [v3 decreaseVolume];
}

- (NSArray)containerViewsForPlatterTreatment
{
  v3 = MEMORY[0x1E695DF70];
  v4 = [(MRUVolumeViewController *)self view];
  v5 = [v4 primarySlider];
  v6 = [v5 elasticContentView];
  v7 = [v3 arrayWithObject:v6];

  v8 = [(MRUVolumeViewController *)self view];
  LODWORD(v5) = [v8 showSecondarySlider];

  if (v5)
  {
    v9 = [(MRUVolumeViewController *)self view];
    v10 = [v9 secondarySlider];
    v11 = [v10 elasticContentView];
    [v7 addObject:v11];
  }

  v12 = [(MRUVolumeViewController *)self view];
  v13 = [v12 showEnvironmentSlider];

  if (v13)
  {
    v14 = [(MRUVolumeViewController *)self view];
    v15 = [v14 environmentSlider];
    v16 = [v15 elasticContentView];
    [v7 addObject:v16];
  }

  return v7;
}

- (double)preferredExpandedContentWidth
{
  v3 = [(MRUVolumeViewController *)self view];
  ShouldBeVertical = MRULayoutShouldBeVertical();
  if (ShouldBeVertical)
  {
    Width = MRUDefaultExpandedWidth(ShouldBeVertical);
  }

  else
  {
    v6 = [(MRUVolumeViewController *)self view];
    v7 = [v6 window];
    [v7 bounds];
    Width = CGRectGetWidth(v9);
  }

  return Width;
}

- (void)setCompactContinuousCornerRadius:(double)a3
{
  if (self->_compactContinuousCornerRadius != a3)
  {
    self->_compactContinuousCornerRadius = a3;
    v4 = [(MRUVolumeViewController *)self viewIfLoaded];
    [v4 setCompactContinuousCornerRadius:a3];
  }
}

- (void)setContentRenderingMode:(unint64_t)a3
{
  self->_contentRenderingMode = a3;
  [(MRUVolumeViewController *)self updateSliderAsset];
  [(MRUVolumeViewController *)self updatePrimarySliderVolumeValueAnimated:0];

  [(MRUVolumeViewController *)self updateSliderInteractionEnabled];
}

- (void)setContentMetrics:(id)a3
{
  v4 = a3;
  v5 = [(MRUVolumeViewController *)self view];
  [v5 setContentMetrics:v4];
}

- (void)didTransitionToExpandedContentMode:(BOOL)a3
{
  v8[1] = *MEMORY[0x1E69E9840];
  if (a3)
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
  v2 = [(MRUVolumeViewController *)self view];
  v3 = [v2 isGroupRenderingRequired];

  return v3;
}

- (NSArray)punchOutRenderingViews
{
  v2 = [(MRUVolumeViewController *)self view];
  v3 = [v2 punchOutRenderingViews];

  return v3;
}

- (UIWindowScene)windowSceneForVolumeDisplay
{
  v2 = [(MRUVolumeViewController *)self viewIfLoaded];
  v3 = [v2 window];
  v4 = [v3 windowScene];

  return v4;
}

- (NSString)volumeAudioCategory
{
  v2 = [(MRUAudioModuleController *)self->_audioModuleController volumeController];
  v3 = [v2 volumeAudioCategory];

  return v3;
}

- (void)audioModuleController:(id)a3 volumeController:(id)a4 didChangeVolumeControlCapabilities:(unsigned int)a5 effectiveVolumeValue:(float)a6 forType:(int64_t)a7
{
  v36 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  if (a7 >= 2)
  {
    if (a7 == 2)
    {
      v24 = [(MRUVolumeViewController *)self view];
      v25 = [v24 secondarySlider];
      v26 = [v25 isEditingValue];

      if ((v26 & 1) == 0)
      {
        [(MRUVolumeViewController *)self updateSecondarySliderVolumeValueAnimated:1];
      }
    }
  }

  else
  {
    v13 = [(MRUVolumeViewController *)self view];
    v14 = [v13 primarySlider];
    v15 = [v14 isEditingValue];

    if ((v15 & 1) == 0)
    {
      [(MRUVolumeViewController *)self updatePrimarySliderVolumeValueAnimated:1];
    }

    v16 = MCLogCategoryDefault();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v27 = objc_opt_class();
      *&v17 = a6;
      v18 = [MEMORY[0x1E696AD98] numberWithFloat:v17];
      v19 = [(MRUVolumeViewController *)self view];
      v20 = [v19 primarySlider];
      v21 = [v20 isEditingValue];
      v22 = [(MRUVolumeViewController *)self view];
      v23 = [v22 primarySlider];
      *buf = 138544130;
      v29 = v27;
      v30 = 2114;
      v31 = v18;
      v32 = 1024;
      v33 = v21;
      v34 = 1024;
      v35 = [v23 isTracking];
      _os_log_impl(&dword_1A20FC000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@ system volume changed: %{public}@ | editing: %{BOOL}u | tracking: %{BOOL}u", buf, 0x22u);
    }
  }

  [(MRUVolumeViewController *)self updateVisibility];
}

- (void)audioModuleController:(id)a3 hearingServiceController:(id)a4 didChangePrimaryAmplification:(float)a5
{
  v6 = [(MRUVolumeViewController *)self view:a3];
  v7 = [v6 environmentSlider];
  v8 = [v7 isEditingValue];

  if ((v8 & 1) == 0)
  {

    [(MRUVolumeViewController *)self updateEnvironmentSliderValueAnimated:1];
  }
}

- (void)updateSliderTint
{
  if ([(MRUVolumeViewController *)self primaryGlyphShouldBeTinted])
  {
    v7 = [MEMORY[0x1E69DC888] systemCyanColor];
  }

  else
  {
    v7 = 0;
  }

  v3 = [(MRUVolumeViewController *)self view];
  v4 = [v3 primarySlider];
  [v4 setGlyphTintColor:v7];

  v5 = [(MRUVolumeViewController *)self view];
  v6 = [v5 environmentSlider];
  [v6 setGlyphTintColor:v7];
}

- (void)updateSliderInteractionEnabled
{
  v3 = [(MRUVolumeViewController *)self bs_isAppearingOrAppeared];
  if (v3)
  {
    v4 = self->_contentRenderingMode != 1;
  }

  else
  {
    v4 = 0;
  }

  v5 = [(MRUVolumeViewController *)self view];
  v6 = [v5 primarySlider];
  [v6 setUserInteractionEnabled:v4];

  v8 = [(MRUVolumeViewController *)self view];
  v7 = [v8 secondarySlider];
  [v7 setUserInteractionEnabled:v3];
}

- (void)updatePrimarySliderVolumeValueAfterDelay
{
  [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel_updatePrimarySliderVolumeValueAfterDelay object:0];
  v3 = [(MRUVolumeViewController *)self view];
  v4 = [v3 primarySlider];
  v5 = [v4 isEditingValue];

  if (v5)
  {

    [(MRUVolumeViewController *)self performSelector:sel_updatePrimarySliderVolumeValueAfterDelay withObject:0 afterDelay:0.25];
  }

  else
  {

    [(MRUVolumeViewController *)self updatePrimarySliderVolumeValueAnimated:1];
  }
}

- (void)updatePrimarySliderVolumeValueAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(MRUVolumeViewController *)self view];
  if ([v5 isExpanded])
  {
    v6 = [(MRUVolumeViewController *)self view];
    v7 = [v6 showSecondarySlider];
  }

  else
  {
    v7 = 0;
  }

  v8 = [(MRUAudioModuleController *)self->_audioModuleController volumeController];
  [v8 volumeValueForType:v7];
  v10 = v9;

  v11 = [(MRUAudioModuleController *)self->_audioModuleController volumeController];
  v12 = [v11 volumeCapabilitiesForType:v7];

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
  v15 = [(MRUVolumeViewController *)self view];
  v16 = [v15 primarySlider];
  *&v17 = v10;
  [v16 setValue:v3 animated:v17];

  v18 = [(MRUVolumeViewController *)self view];
  v19 = [v18 primarySlider];
  [v19 setInoperative:v14];

  *&v20 = v10;
  v21 = [MRUSystemVolumeController packageStateForVolumeValue:v20];
  v22 = [(MRUVolumeViewController *)self view];
  v23 = [v22 primarySlider];
  [v23 setGlyphState:v21];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  *&v24 = v10;
  [WeakRetained volumeViewController:self didChangeSystemVolumeValue:v24];
}

- (void)updateSecondarySliderVolumeValueAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(MRUAudioModuleController *)self->_audioModuleController volumeController];
  [v5 volumeValueForType:2];
  v7 = v6;

  v8 = [(MRUAudioModuleController *)self->_audioModuleController volumeController];
  v9 = [v8 volumeCapabilitiesForType:2];

  v10 = (v9 & 2) == 0 || !self->_secondaryInteractionEnabled;
  v11 = [(MRUVolumeViewController *)self view];
  v12 = [v11 secondarySlider];
  LODWORD(v13) = v7;
  [v12 setValue:v3 animated:v13];

  v15 = [(MRUVolumeViewController *)self view];
  v14 = [v15 secondarySlider];
  [v14 setInoperative:v10];
}

- (void)updateEnvironmentSliderValueAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(MRUAudioModuleController *)self->_audioModuleController listeningModeController];
  v6 = [v5 primaryListeningMode];
  v7 = [v6 isEqualToString:*MEMORY[0x1E6958738]];

  v8 = [(MRUAudioModuleController *)self->_audioModuleController hearingServiceController];
  [v8 primaryAmplification];
  v10 = v9;

  v11 = [(MRUVolumeViewController *)self view];
  v12 = [v11 environmentSlider];
  LODWORD(v13) = v10;
  [v12 setValue:v3 animated:v13];

  v15 = [(MRUVolumeViewController *)self view];
  v14 = [v15 environmentSlider];
  [v14 setInoperative:v7];
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