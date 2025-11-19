@interface CSProminentDisplayViewController
+ (BOOL)_shouldAllowGlassMaterials;
- (BOOL)_allowsGlassAppearance;
- (BOOL)_sensitiveUIEnabled;
- (BOOL)adaptsTimeTextHeight;
- (BOOL)animatesTimeChanges;
- (BOOL)hasSidebarContents;
- (BOOL)isFourDigitTime;
- (BOOL)supportsAdaptiveTimeTextHeight;
- (BOOL)usesEditingLayout;
- (BOOL)usesLandscapeTimeFontVariant;
- (BOOL)usesLightTimeFontVariant;
- (BSUIVibrancyConfiguration)vibrancyConfiguration;
- (CGRect)_timeStyleBounds;
- (CGRect)contentBoundingBox;
- (CGRect)previousTimeStyleBounds;
- (CSProminentDisplayViewController)initWithElements:(unint64_t)a3 baseFont:(id)a4 date:(id)a5 textColor:(id)a6;
- (UIView)backgroundView;
- (double)maximumAdaptiveTimeTextHeight;
- (double)minimumAdaptiveTimeTextHeight;
- (double)relativeAdaptiveTimeTextWidth;
- (double)timeChangeAnimationDuration;
- (id)_customSubtitleGlyphWithName:(id)a3;
- (id)_dimmingColorFilter;
- (id)_dimmingPillLayerForBounds:(CGRect)a3;
- (id)_effectiveTitleTextColorForStyle:(id)a3;
- (id)_fallbackDate;
- (id)_shadowPillPathForBounds:(CGRect)a3;
- (id)beginInteractiveTransitionToBaseFont:(id)a3 textColor:(id)a4;
- (id)beginInteractiveTransitionToBaseFont:(id)a3 vibrancyConfiguration:(id)a4 cachingVibrancyTransitionProvider:(id)a5;
- (id)transientSubtitleText;
- (unint64_t)_suppressedElements;
- (void)_allowsGlassAppearance;
- (void)_createOrDestroyComplicationRowElementIfNecessary;
- (void)_createOrDestroyComplicationSidebarElementIfNecessary;
- (void)_createOrDestroySubtitleComplicationElementIfNecessary;
- (void)_createOrDestroySubtitleDimmingViewIfNecessary;
- (void)_createOrDestroySubtitleElementIfNecessary;
- (void)_createOrDestroyTimeElementIfNecessary;
- (void)_createOrDestroyVibrancyShadowViewIfNecessary;
- (void)_reevaluateTransientSubtitle;
- (void)_setElements:(unint64_t)a3 suppressed:(BOOL)a4 forReason:(id)a5;
- (void)_setTransientSubtitle:(id)a3 timeout:(double)a4;
- (void)_updateContentForSensitiveUI;
- (void)_updateElements;
- (void)_updateStyleBoundingRects;
- (void)_updateViewColors;
- (void)clearTransientSubtitleForPriority:(int64_t)a3;
- (void)dealloc;
- (void)interactiveTransition:(id)a3 didFinishSuccessfully:(BOOL)a4;
- (void)interactiveTransition:(id)a3 didUpdate:(double)a4;
- (void)loadView;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)setAdaptiveTimeTextHeight:(double)a3;
- (void)setAdaptsTimeTextHeight:(BOOL)a3;
- (void)setAlternateCalendarIdentifier:(id)a3 locale:(id)a4;
- (void)setAlternativeVibrancyEffectLUTIdentifier:(id)a3 alternativeVibrancyEffectLUTBundleURL:(id)a4;
- (void)setAlternativeVibrancyEffectLUTIdentifier:(id)a3 alternativeVibrancyEffectLUTBundleURL:(id)a4 luminanceReduced:(BOOL)a5;
- (void)setAnimatesTimeChanges:(BOOL)a3;
- (void)setBaseFont:(id)a3;
- (void)setComplicationContainerViewController:(id)a3;
- (void)setComplicationSidebarViewController:(id)a3;
- (void)setContentAlpha:(double)a3 forElements:(unint64_t)a4;
- (void)setCustomSubtitleWithText:(id)a3 glyphName:(id)a4;
- (void)setDateTimeAlignment:(int64_t)a3;
- (void)setDisplayDate:(id)a3;
- (void)setElements:(unint64_t)a3;
- (void)setElementsWithBackingDim:(unint64_t)a3;
- (void)setGroupName:(id)a3;
- (void)setHasSidebarContents:(BOOL)a3;
- (void)setNumberingSystem:(id)a3;
- (void)setShouldApplyVibrancyToComplications:(BOOL)a3;
- (void)setShowsCompactTime:(BOOL)a3 animated:(BOOL)a4;
- (void)setSubtitleComplicationViewController:(id)a3;
- (void)setTextColor:(id)a3;
- (void)setTimeGlassInterfaceStyle:(int64_t)a3;
- (void)setTitleContentStyle:(id)a3;
- (void)setTransientSubtitleText:(id)a3 priority:(int64_t)a4 timeout:(double)a5;
- (void)setUsesEditingLayout:(BOOL)a3;
- (void)setUsesLandscapeTimeFontVariant:(BOOL)a3;
- (void)setUsesLightTimeFontVariant:(BOOL)a3;
- (void)setUsesLightTimeFontVariant:(BOOL)a3 response:(double)a4;
- (void)setVibrancyContentType:(int64_t)a3;
- (void)updateCustomSubtitleWithText:(id)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation CSProminentDisplayViewController

- (double)maximumAdaptiveTimeTextHeight
{
  v2 = [(CSProminentDisplayViewController *)self _displayView];
  v3 = [v2 timeView];
  [v3 maximumAdaptiveTextHeight];
  v5 = v4;

  return v5;
}

- (double)minimumAdaptiveTimeTextHeight
{
  v2 = [(CSProminentDisplayViewController *)self _displayView];
  v3 = [v2 timeView];
  [v3 minimumAdaptiveTextHeight];
  v5 = v4;

  return v5;
}

- (UIView)backgroundView
{
  v2 = [(CSProminentDisplayViewController *)self _displayViewIfLoaded];
  v3 = [v2 backgroundView];

  return v3;
}

- (id)transientSubtitleText
{
  v2 = [(CSProminentDisplayViewController *)self _displayView];
  v3 = [v2 transientSubtitleView];
  v4 = [v3 textLabel];
  v5 = [v4 text];

  return v5;
}

+ (BOOL)_shouldAllowGlassMaterials
{
  if (_shouldAllowGlassMaterials_onceToken != -1)
  {
    +[CSProminentDisplayViewController _shouldAllowGlassMaterials];
  }

  return _shouldAllowGlassMaterials_shouldAllowGlassMaterials;
}

uint64_t __62__CSProminentDisplayViewController__shouldAllowGlassMaterials__block_invoke()
{
  result = _os_feature_enabled_impl();
  if (result)
  {
    result = _os_feature_enabled_impl();
  }

  _shouldAllowGlassMaterials_shouldAllowGlassMaterials = result;
  return result;
}

- (CSProminentDisplayViewController)initWithElements:(unint64_t)a3 baseFont:(id)a4 date:(id)a5 textColor:(id)a6
{
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v22.receiver = self;
  v22.super_class = CSProminentDisplayViewController;
  v14 = [(CSProminentDisplayViewController *)&v22 init];
  v15 = v14;
  if (v14)
  {
    v14->_elements = a3;
    v14->_elementsWithBackingDim = 0;
    if (v12)
    {
      v16 = v12;
    }

    else
    {
      v16 = [(CSProminentDisplayViewController *)v14 _fallbackDate];
    }

    displayDate = v15->_displayDate;
    v15->_displayDate = v16;

    v15->_effectType = 0;
    objc_storeStrong(&v15->_textColor, a6);
    objc_storeStrong(&v15->_baseFont, a4);
    v18 = [(CSProminentDisplayViewController *)v15 _dimmingColorFilter];
    dimmingFilter = v15->_dimmingFilter;
    v15->_dimmingFilter = v18;

    v20 = [MEMORY[0x1E695E000] standardUserDefaults];
    [v20 addObserver:v15 forKeyPath:@"SBSensitiveUIEnabled" options:1 context:0];

    [(CSProminentDisplayViewController *)v15 _updateContentForSensitiveUI];
  }

  return v15;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E695E000] standardUserDefaults];
  [v3 removeObserver:self forKeyPath:@"SBSensitiveUIEnabled"];

  v4.receiver = self;
  v4.super_class = CSProminentDisplayViewController;
  [(CSProminentDisplayViewController *)&v4 dealloc];
}

- (void)loadView
{
  v14[1] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc([objc_opt_class() viewClass]);
  v4 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v4 bounds];
  v5 = [v3 initWithFrame:?];

  v6 = [v5 layer];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  [v6 setName:v8];

  [(CSProminentDisplayViewController *)self setView:v5];
  v9 = [(CSProminentDisplayViewController *)self _displayView];
  [v9 setShouldApplyVibrancyToComplications:{-[CSProminentDisplayViewController shouldApplyVibrancyToComplications](self, "shouldApplyVibrancyToComplications")}];
  v10 = [v9 vibrancyEffectView];
  [v10 setContentType:{-[CSProminentDisplayViewController vibrancyContentType](self, "vibrancyContentType")}];

  v11 = [v9 subtitleVibrancyEffectView];
  [v11 setContentType:{-[CSProminentDisplayViewController vibrancyContentType](self, "vibrancyContentType")}];

  [v9 setContentAlpha:-1 forElements:1.0];
  [(CSProminentDisplayViewController *)self _updateElements];
  [(CSProminentDisplayViewController *)self _updateViewColors];
  v14[0] = objc_opt_class();
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  v13 = [(CSProminentDisplayViewController *)self registerForTraitChanges:v12 withHandler:&__block_literal_global_13_0];
}

- (void)setShouldApplyVibrancyToComplications:(BOOL)a3
{
  v3 = a3;
  self->_shouldApplyVibrancyToComplications = a3;
  v5 = [(CSProminentDisplayViewController *)self _displayViewIfLoaded];
  [v5 setShouldApplyVibrancyToComplications:v3];

  if (!v3)
  {
    complicationRenderer = self->_complicationRenderer;
    self->_complicationRenderer = 0;
  }
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = CSProminentDisplayViewController;
  [(CSProminentDisplayViewController *)&v12 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  v8 = [(CSProminentDisplayViewController *)self view];
  v9 = [v8 window];

  v10 = [v9 _toWindowOrientation];
  if (v10 != [v9 _fromWindowOrientation])
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __87__CSProminentDisplayViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
    v11[3] = &unk_1E76BA110;
    v11[4] = self;
    v11[5] = v10;
    [v7 animateAlongsideTransition:v11 completion:0];
  }
}

void __87__CSProminentDisplayViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _displayView];
  [v2 updateContainerOrientationForBackgroundViews:*(a1 + 40)];
}

- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4
{
  v9.receiver = self;
  v9.super_class = CSProminentDisplayViewController;
  [(CSProminentDisplayViewController *)&v9 viewDidMoveToWindow:a3 shouldAppearOrDisappear:a4];
  v5 = [(CSProminentDisplayViewController *)self view];
  v6 = [v5 window];
  v7 = [v6 _windowInterfaceOrientation];

  v8 = [(CSProminentDisplayViewController *)self _displayView];
  [v8 updateContainerOrientationForBackgroundViews:v7];
}

- (void)viewDidLoad
{
  v26[2] = *MEMORY[0x1E69E9840];
  v25.receiver = self;
  v25.super_class = CSProminentDisplayViewController;
  [(CSProminentDisplayViewController *)&v25 viewDidLoad];
  v3 = [(CSProminentDisplayViewController *)self _displayView];
  v4 = [v3 _screen];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [MEMORY[0x1E69DCEB0] mainScreen];
  }

  v7 = v6;

  [v7 bounds];
  [v3 setFrame:?];
  v8 = objc_alloc_init(MEMORY[0x1E69DD268]);
  timePositionXProperty = self->_timePositionXProperty;
  self->_timePositionXProperty = v8;

  v10 = objc_alloc_init(MEMORY[0x1E69DD268]);
  timePositionYProperty = self->_timePositionYProperty;
  self->_timePositionYProperty = v10;

  objc_initWeak(&location, self);
  v12 = [(CSProminentDisplayViewController *)self _displayView];
  v13 = [v12 timeView];
  objc_initWeak(&from, v13);

  v14 = MEMORY[0x1E69DD250];
  v15 = self->_timePositionYProperty;
  v26[0] = self->_timePositionXProperty;
  v26[1] = v15;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:2];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __47__CSProminentDisplayViewController_viewDidLoad__block_invoke;
  v20[3] = &unk_1E76BA138;
  objc_copyWeak(&v21, &location);
  objc_copyWeak(&v22, &from);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __47__CSProminentDisplayViewController_viewDidLoad__block_invoke_24;
  v17[3] = &unk_1E76BA138;
  objc_copyWeak(&v18, &location);
  objc_copyWeak(&v19, &from);
  [v14 _createTransformerWithInputAnimatableProperties:v16 modelValueSetter:v20 presentationValueSetter:v17];

  objc_destroyWeak(&v19);
  objc_destroyWeak(&v18);
  objc_destroyWeak(&v22);
  objc_destroyWeak(&v21);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
}

void __47__CSProminentDisplayViewController_viewDidLoad__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_loadWeakRetained((a1 + 40));
  v4 = v3;
  if (WeakRetained && v3)
  {
    v5 = CSLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      __47__CSProminentDisplayViewController_viewDidLoad__block_invoke_cold_1(WeakRetained, v5);
    }

    [WeakRetained[124] value];
    v7 = v6;
    [WeakRetained[125] value];
    [v4 setCenter:{v7, v8}];
  }
}

void __47__CSProminentDisplayViewController_viewDidLoad__block_invoke_24(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_loadWeakRetained((a1 + 40));
  v4 = v3;
  if (WeakRetained && v3)
  {
    v5 = CSLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      __47__CSProminentDisplayViewController_viewDidLoad__block_invoke_24_cold_1(WeakRetained, v5);
    }

    v6 = MEMORY[0x1E696AD98];
    [WeakRetained[124] presentationValue];
    v7 = [v6 numberWithDouble:?];
    [v4 _setPresentationValue:v7 forKey:@"position.x"];

    v8 = MEMORY[0x1E696AD98];
    [WeakRetained[125] presentationValue];
    v9 = [v8 numberWithDouble:?];
    [v4 _setPresentationValue:v9 forKey:@"position.y"];
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = CSProminentDisplayViewController;
  [(CSProminentDisplayViewController *)&v6 viewWillAppear:a3];
  v4 = [(CSProminentDisplayViewController *)self _displayView];
  v5 = [v4 timeView];
  [v5 setVisible:1];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = CSProminentDisplayViewController;
  [(CSProminentDisplayViewController *)&v6 viewDidDisappear:a3];
  v4 = [(CSProminentDisplayViewController *)self _displayView];
  v5 = [v4 timeView];
  [v5 setVisible:0];
}

- (void)viewDidLayoutSubviews
{
  [(CSProminentDisplayViewController *)self _timeStyleBounds];
  if ((BSRectEqualToRect() & 1) == 0)
  {
    [(CSProminentDisplayViewController *)self _updateViewColors];
  }

  if (self->_showsCompactTime)
  {
    v45 = [(CSProminentDisplayViewController *)self _displayView];
    v3 = [(CSProminentDisplayViewController *)self _displayView];
    v4 = [v3 subtitleView];
    v5 = objc_opt_class();
    v6 = v4;
    if (v5)
    {
      if (objc_opt_isKindOfClass())
      {
        v7 = v6;
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;

    v9 = [v8 timeView];
    v10 = [v45 timeView];
    [v9 bounds];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v19 = [v10 superview];
    [v9 convertRect:v19 toView:{v12, v14, v16, v18}];
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v27 = v26;

    v47.origin.x = v21;
    v47.origin.y = v23;
    v47.size.width = v25;
    v47.size.height = v27;
    MidX = CGRectGetMidX(v47);
    v48.origin.x = v21;
    v48.origin.y = v23;
    v48.size.width = v25;
    v48.size.height = v27;
    [v10 setCenter:{MidX, CGRectGetMinY(v48)}];
    v29 = [v8 contentView];

    [v29 bounds];
    [v29 convertRect:v45 toView:?];
    [(CSProminentDisplayViewController *)self _dimmingLayerOutsetFrameGivenBaseFrame:?];
    v31 = v30;
    v33 = v32;
    v35 = v34;
    v37 = v36;
    v38 = [v45 subtitleDimmingView];
    [v38 frame];
    v52.origin.x = v31;
    v52.origin.y = v33;
    v52.size.width = v35;
    v52.size.height = v37;
    v39 = CGRectEqualToRect(v49, v52);

    if (!v39)
    {
      v40 = [v45 subtitleDimmingView];
      [v40 setFrame:{v31, v33, v35, v37}];

      v50.origin.x = v31;
      v50.origin.y = v33;
      v50.size.width = v35;
      v50.size.height = v37;
      Width = CGRectGetWidth(v50);
      v51.origin.x = v31;
      v51.origin.y = v33;
      v51.size.width = v35;
      v51.size.height = v37;
      Height = CGRectGetHeight(v51);
      subtitleDimmingLayer = self->_subtitleDimmingLayer;
      v44 = [(CSProminentDisplayViewController *)self _shadowPillPathForBounds:0.0, 0.0, Width, Height];
      -[CALayer setShadowPath:](subtitleDimmingLayer, "setShadowPath:", [v44 CGPath]);

      [(CALayer *)self->_subtitleDimmingLayer setFrame:0.0, 0.0, Width, Height];
    }
  }
}

- (CGRect)_timeStyleBounds
{
  v2 = [(CSProminentDisplayViewController *)self _displayView];
  v3 = [v2 timeView];
  v4 = [v3 textLabel];
  [v4 frame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = v6;
  v14 = v8;
  v15 = v10;
  v16 = v12;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (CGRect)contentBoundingBox
{
  [CSProminentLayoutController frameForElements:self->_elements];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)setAlternateCalendarIdentifier:(id)a3 locale:(id)a4
{
  v13 = a3;
  v7 = a4;
  objc_storeStrong(&self->_alternateCalendarIdentifier, a3);
  objc_storeStrong(&self->_alternateCalendarLocale, a4);
  v8 = [(CSProminentDisplayViewController *)self _displayView];
  v9 = [v8 subtitleView];

  v10 = [(CSProminentDisplayViewController *)self _displayView];
  v11 = [v10 subtitleView];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    [v9 setAlternateCalendarIdentifier:v13 locale:v7];
  }
}

- (void)setContentAlpha:(double)a3 forElements:(unint64_t)a4
{
  v6 = [(CSProminentDisplayViewController *)self _displayView];
  [v6 setContentAlpha:a4 forElements:a3];
}

- (id)beginInteractiveTransitionToBaseFont:(id)a3 textColor:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v7)
  {
    v7 = [MEMORY[0x1E69DC888] whiteColor];
  }

  v8 = [(CSProminentDisplayViewController *)self _displayView];
  v9 = [v8 timeVibrancyEffectView];
  v10 = [v9 configuration];

  v11 = objc_alloc(MEMORY[0x1E698E810]);
  v12 = [v10 effectType];
  v13 = [v10 backgroundType];
  v14 = [(CSProminentDisplayViewController *)self alternativeVibrancyEffectLUT];
  v15 = [v11 initWithEffectType:v12 backgroundType:v13 color:v7 groupName:0 blendConfiguration:0 blendAmount:v14 alternativeVibrancyEffectLUT:0.0];

  v16 = [(CSProminentDisplayViewController *)self beginInteractiveTransitionToBaseFont:v6 vibrancyConfiguration:v15 cachingVibrancyTransitionProvider:0];

  return v16;
}

- (id)beginInteractiveTransitionToBaseFont:(id)a3 vibrancyConfiguration:(id)a4 cachingVibrancyTransitionProvider:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v8)
  {
    v8 = [MEMORY[0x1E69DB878] systemFontOfSize:0.0];
  }

  v11 = [(CSProminentDisplayViewController *)self _displayView];
  v12 = [v11 timeVibrancyEffectView];
  v13 = [v12 configuration];

  v14 = [[CSProminentDisplayInteractiveTransition alloc] initWithViewController:self baseFont:v8 fromVibrancyConfiguration:v13 toVibrancyConfiguration:v9 cachingVibrancyTransitionProvider:v10];
  [(CSProminentDisplayViewController *)self setCurrentTransition:v14];

  return v14;
}

- (BOOL)hasSidebarContents
{
  v2 = [(CSProminentDisplayViewController *)self _displayView];
  v3 = [v2 timeView];
  v4 = [v3 contextHasSidebarContents];

  return v4;
}

- (void)setHasSidebarContents:(BOOL)a3
{
  v3 = a3;
  v5 = [(CSProminentDisplayViewController *)self _displayView];
  v4 = [v5 timeView];
  [v4 setContextHasSidebarContents:v3];
}

- (void)setTimeGlassInterfaceStyle:(int64_t)a3
{
  if (self->_timeGlassInterfaceStyle != a3)
  {
    self->_timeGlassInterfaceStyle = a3;
    v5 = [(CSProminentDisplayViewController *)self _displayView];
    v4 = [v5 timeView];
    [v4 setGlassInterfaceStyle:self->_timeGlassInterfaceStyle];
  }
}

- (BOOL)usesLightTimeFontVariant
{
  v2 = [(CSProminentDisplayViewController *)self _displayView];
  v3 = [v2 timeView];
  v4 = [v3 usesLightTimeFontVariant];

  return v4;
}

- (void)setUsesLightTimeFontVariant:(BOOL)a3
{
  v3 = a3;
  v5 = [(CSProminentDisplayViewController *)self _displayView];
  v4 = [v5 timeView];
  [v4 setUsesLightTimeFontVariant:v3];
}

- (void)setUsesLightTimeFontVariant:(BOOL)a3 response:(double)a4
{
  v5 = a3;
  v7 = [(CSProminentDisplayViewController *)self _displayView];
  v6 = [v7 timeView];
  [v6 setUsesLightTimeFontVariant:v5 response:a4];
}

- (BOOL)usesLandscapeTimeFontVariant
{
  v2 = [(CSProminentDisplayViewController *)self _displayView];
  v3 = [v2 timeView];
  v4 = [v3 usesLandscapeTimeFontVariant];

  return v4;
}

- (void)setUsesLandscapeTimeFontVariant:(BOOL)a3
{
  v3 = a3;
  v5 = [(CSProminentDisplayViewController *)self _displayView];
  v4 = [v5 timeView];
  [v4 setUsesLandscapeTimeFontVariant:v3];
}

- (BOOL)animatesTimeChanges
{
  v2 = [(CSProminentDisplayViewController *)self _displayView];
  v3 = [v2 timeView];
  v4 = [v3 animatesTimeChanges];

  return v4;
}

- (void)setAnimatesTimeChanges:(BOOL)a3
{
  v3 = a3;
  v9 = *MEMORY[0x1E69E9840];
  v5 = CSLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8[0] = 67109120;
    v8[1] = v3;
    _os_log_impl(&dword_1A2D63000, v5, OS_LOG_TYPE_DEFAULT, "[CSProminentDisplayViewController] setAnimatesTimeChanges: %{BOOL}u", v8, 8u);
  }

  v6 = [(CSProminentDisplayViewController *)self _displayView];
  v7 = [v6 timeView];
  [v7 setAnimatesTimeChanges:v3];
}

- (double)timeChangeAnimationDuration
{
  if (![(CSProminentDisplayViewController *)self animatesTimeChanges])
  {
    return 0.0;
  }

  v3 = [(CSProminentDisplayViewController *)self _displayView];
  v4 = [v3 timeView];
  [v4 timeChangeAnimationDuration];
  v6 = v5;

  return v6;
}

- (void)setShowsCompactTime:(BOOL)a3 animated:(BOOL)a4
{
  if (self->_showsCompactTime != a3)
  {
    v4 = a4;
    v5 = a3;
    self->_showsCompactTime = a3;
    v7 = [(CSProminentDisplayViewController *)self _displayView];
    [v7 setHidesTimeViewForTransientSubtitle:self->_showsCompactTime];

    v8 = [(CSProminentDisplayViewController *)self _displayView];
    v9 = [v8 subtitleView];
    v10 = objc_opt_class();
    v11 = v9;
    if (v10)
    {
      if (objc_opt_isKindOfClass())
      {
        v12 = v11;
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }

    v13 = v12;

    [v13 setSupportsAlternateDate:!self->_showsCompactTime];
    self->_compactTimeTransitioning = 1;
    v14 = [MEMORY[0x1E698E730] sharedInstance];
    v15 = [v14 deviceClass];

    if (v15 == 2)
    {
      if (self->_showsCompactTime)
      {
        v16 = 2;
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

    [(CSProminentDisplayViewController *)self setElementsWithBackingDim:v16];
    v17 = [v13 timeView];
    [v13 setShowsTime:self->_showsCompactTime animated:v4];
    if (!v17)
    {
      v17 = [v13 timeView];
    }

    v18 = [(CSProminentDisplayViewController *)self _displayView];
    v19 = [v18 timeView];

    v112 = 0;
    v113 = &v112;
    v114 = 0x4010000000;
    v115 = &unk_1A2DAB007;
    v116 = 0u;
    v117 = 0u;
    v20 = MEMORY[0x1E69DD250];
    v106[0] = MEMORY[0x1E69E9820];
    v106[1] = 3221225472;
    v106[2] = __65__CSProminentDisplayViewController_setShowsCompactTime_animated___block_invoke;
    v106[3] = &unk_1E76BA160;
    v21 = v19;
    v107 = v21;
    v108 = self;
    v110 = &v112;
    v111 = v5;
    v70 = v17;
    v109 = v70;
    [v20 performWithoutAnimation:v106];
    v22 = dispatch_group_create();
    dispatch_group_enter(v22);
    v104[0] = 0;
    v104[1] = v104;
    v104[2] = 0x2020000000;
    v105 = 1;
    v102[0] = 0;
    v102[1] = v102;
    v102[2] = 0x2020000000;
    v103 = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __65__CSProminentDisplayViewController_setShowsCompactTime_animated___block_invoke_2;
    aBlock[3] = &unk_1E76BA188;
    v100 = v104;
    v101 = v102;
    v23 = v22;
    v99 = v23;
    v24 = _Block_copy(aBlock);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __65__CSProminentDisplayViewController_setShowsCompactTime_animated___block_invoke_3;
    block[3] = &unk_1E76B9F78;
    v97 = v104;
    block[4] = self;
    v25 = v21;
    v96 = v25;
    dispatch_group_notify(v23, MEMORY[0x1E69E96A0], block);
    v26 = MEMORY[0x1E69DD250];
    v90[0] = MEMORY[0x1E69E9820];
    v90[1] = 3221225472;
    v90[2] = __65__CSProminentDisplayViewController_setShowsCompactTime_animated___block_invoke_4;
    v90[3] = &unk_1E76BA1B0;
    v27 = v23;
    v91 = v27;
    v94 = v5;
    v28 = v25;
    v92 = v28;
    v93 = self;
    [v26 _animateUsingSpringWithDampingRatio:0 response:v90 tracking:v24 dampingRatioSmoothing:1.0 responseSmoothing:0.1 targetSmoothing:0.0 projectionDeceleration:0.0 animations:0.0 completion:0.0];
    v29 = MEMORY[0x1E69DD250];
    if (v5)
    {
      v30 = 0.55;
    }

    else
    {
      v30 = 0.3;
    }

    v85[0] = MEMORY[0x1E69E9820];
    v85[1] = 3221225472;
    v85[2] = __65__CSProminentDisplayViewController_setShowsCompactTime_animated___block_invoke_5;
    v85[3] = &unk_1E76BA1B0;
    v31 = v27;
    v86 = v31;
    v32 = v13;
    v87 = v32;
    v33 = v28;
    v88 = v33;
    v89 = v5;
    [v29 _animateUsingSpringWithDampingRatio:0 response:v85 tracking:v24 dampingRatioSmoothing:1.0 responseSmoothing:v30 targetSmoothing:0.0 projectionDeceleration:0.0 animations:0.0 completion:0.0];
    v69 = v30;
    v68 = v32;
    [v70 bounds];
    v35 = v34;
    v37 = v36;
    v39 = v38;
    v41 = v40;
    v42 = [v33 superview];
    [v70 convertRect:v42 toView:{v35, v37, v39, v41}];
    v44 = v43;
    v46 = v45;
    v48 = v47;
    v67 = v49;

    v50 = [(CSProminentDisplayViewController *)self view];
    v51 = v113;
    v52 = [v33 superview];
    [v50 convertRect:v52 toView:{v51[4], v51[5], v51[6], v51[7]}];
    v54 = v53;
    v56 = v55;
    v58 = v57;
    v60 = v59;

    if (v5)
    {
      v61 = 0.3;
    }

    else
    {
      v61 = 0.55;
    }

    if (v5)
    {
      v60 = v44;
    }

    else
    {
      v46 = v58;
    }

    if (v5)
    {
      v62 = v67;
    }

    else
    {
      v48 = v56;
      v62 = v54;
    }

    v63 = MEMORY[0x1E69DD250];
    v78[0] = MEMORY[0x1E69E9820];
    v78[1] = 3221225472;
    v78[2] = __65__CSProminentDisplayViewController_setShowsCompactTime_animated___block_invoke_6;
    v78[3] = &unk_1E76BA1D8;
    v64 = v31;
    v79 = v64;
    v80 = self;
    v81 = v62;
    v82 = v48;
    v83 = v46;
    v84 = v60;
    [v63 _animateUsingSpringWithDampingRatio:0 response:v78 tracking:v24 dampingRatioSmoothing:1.0 responseSmoothing:v61 targetSmoothing:0.0 projectionDeceleration:0.0 animations:0.0 completion:0.0];
    v65 = MEMORY[0x1E69DD250];
    v71[0] = MEMORY[0x1E69E9820];
    v71[1] = 3221225472;
    v71[2] = __65__CSProminentDisplayViewController_setShowsCompactTime_animated___block_invoke_7;
    v71[3] = &unk_1E76BA1D8;
    v66 = v64;
    v72 = v66;
    v73 = self;
    v74 = v62;
    v75 = v48;
    v76 = v46;
    v77 = v60;
    [v65 _animateUsingSpringWithDampingRatio:0 response:v71 tracking:v24 dampingRatioSmoothing:1.0 responseSmoothing:v69 targetSmoothing:0.0 projectionDeceleration:0.0 animations:0.0 completion:0.0];
    dispatch_group_leave(v66);
    [(CSProminentDisplayViewController *)self _setElements:12 suppressed:self->_showsCompactTime forReason:@"Compact Time"];

    _Block_object_dispose(v102, 8);
    _Block_object_dispose(v104, 8);

    _Block_object_dispose(&v112, 8);
  }
}

uint64_t __65__CSProminentDisplayViewController_setShowsCompactTime_animated___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setAnchorPoint:{0.5, 0.0}];
  v41 = 0u;
  v42 = 0u;
  v40 = 0u;
  v2 = *(a1 + 32);
  if (v2)
  {
    [v2 transform];
    v2 = *(a1 + 32);
  }

  v3 = *(MEMORY[0x1E695EFD0] + 16);
  v37 = *MEMORY[0x1E695EFD0];
  v38 = v3;
  v39 = *(MEMORY[0x1E695EFD0] + 32);
  [v2 setTransform:&v37];
  [*(a1 + 32) frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [*(a1 + 40) view];
  [v12 setNeedsLayout];

  v13 = [*(a1 + 40) view];
  [v13 layoutIfNeeded];

  v14 = *(a1 + 32);
  [v14 frame];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v23 = [*(a1 + 40) view];
  [v14 convertRect:v23 toView:{v16, v18, v20, v22}];
  v24 = *(*(a1 + 56) + 8);
  v24[4] = v25;
  v24[5] = v26;
  v24[6] = v27;
  v24[7] = v28;

  if ((*(a1 + 64) & 1) == 0)
  {
    v29 = *(a1 + 32);
    [v29 minimumAdaptiveTextHeight];
    [v29 setAdaptiveTextHeight:?];
  }

  [*(a1 + 32) setFrame:{v5, v7, v9, v11}];
  v30 = *(a1 + 32);
  v37 = v40;
  v38 = v41;
  v39 = v42;
  [v30 setTransform:&v37];
  [*(a1 + 48) setAlpha:0.0];
  [*(a1 + 32) setAlpha:1.0];
  if (*(a1 + 64) & 1) != 0 || (v31 = *(a1 + 32), [*(a1 + 48) center], result = objc_msgSend(v31, "setCenter:"), (*(a1 + 64)))
  {
    v33 = *(*(a1 + 40) + 992);
    [*(a1 + 32) center];
    [v33 setValue:?];
    v34 = *(a1 + 32);
    v35 = *(*(a1 + 40) + 1000);
    [v34 center];
    return [v35 setValue:v36];
  }

  return result;
}

void __65__CSProminentDisplayViewController_setShowsCompactTime_animated___block_invoke_2(uint64_t a1, char a2, char a3)
{
  *(*(*(a1 + 40) + 8) + 24) &= a2;
  *(*(*(a1 + 48) + 8) + 24) |= a3;
  dispatch_group_leave(*(a1 + 32));
}

uint64_t __65__CSProminentDisplayViewController_setShowsCompactTime_animated___block_invoke_3(uint64_t result)
{
  if (*(*(*(result + 48) + 8) + 24) == 1)
  {
    v1 = result;
    v2 = *(result + 32);
    if ((*(v2 + 1008) & 1) == 0)
    {
      result = [*(result + 40) setAdaptiveTextHeight:*(v2 + 1072)];
      v2 = *(v1 + 32);
    }

    *(v2 + 1010) = 0;
  }

  return result;
}

uint64_t __65__CSProminentDisplayViewController_setShowsCompactTime_animated___block_invoke_4(uint64_t a1)
{
  dispatch_group_enter(*(a1 + 32));
  if (*(a1 + 56) == 1)
  {
    [*(a1 + 40) minimumAdaptiveTextHeight];
  }

  else
  {
    v2 = *(*(a1 + 48) + 1072);
  }

  [*(a1 + 40) setAdaptiveTextHeight:v2];
  v3 = *(a1 + 40);

  return [v3 layoutIfNeeded];
}

uint64_t __65__CSProminentDisplayViewController_setShowsCompactTime_animated___block_invoke_5(uint64_t a1)
{
  dispatch_group_enter(*(a1 + 32));
  v2 = [*(a1 + 40) primaryFont];
  [v2 ascender];
  v4 = v3;
  [*(a1 + 48) minimumAdaptiveTextHeight];
  if (v5 == 0.0)
  {
    v5 = 1.0;
  }

  v6 = v4 / v5;

  if (*(a1 + 56))
  {
    v7 = v6;
  }

  else
  {
    v7 = 1.0;
  }

  memset(&v11, 0, sizeof(v11));
  CGAffineTransformMakeScale(&v11, v7, v7);
  v8 = *(a1 + 48);
  v10 = v11;
  return [v8 setTransform:&v10];
}

uint64_t __65__CSProminentDisplayViewController_setShowsCompactTime_animated___block_invoke_6(uint64_t a1)
{
  dispatch_group_enter(*(a1 + 32));
  v2 = *(*(a1 + 40) + 992);
  MidX = CGRectGetMidX(*(a1 + 48));

  return [v2 setValue:MidX];
}

uint64_t __65__CSProminentDisplayViewController_setShowsCompactTime_animated___block_invoke_7(uint64_t a1)
{
  dispatch_group_enter(*(a1 + 32));
  v2 = *(*(a1 + 40) + 1000);
  MinY = CGRectGetMinY(*(a1 + 48));

  return [v2 setValue:MinY];
}

- (BOOL)supportsAdaptiveTimeTextHeight
{
  v2 = [(CSProminentDisplayViewController *)self _displayView];
  v3 = [v2 timeView];
  v4 = [v3 supportsAdaptiveTextHeight];

  return v4;
}

- (BOOL)adaptsTimeTextHeight
{
  v2 = [(CSProminentDisplayViewController *)self _displayView];
  v3 = [v2 timeView];
  v4 = [v3 adaptsTextHeight];

  return v4;
}

- (void)setAdaptsTimeTextHeight:(BOOL)a3
{
  v3 = a3;
  v5 = [(CSProminentDisplayViewController *)self _displayView];
  v4 = [v5 timeView];
  [v4 setAdaptsTextHeight:v3];
}

- (void)setAdaptiveTimeTextHeight:(double)a3
{
  self->_adaptiveTimeTextHeight = a3;
  if (!self->_showsCompactTime && !self->_compactTimeTransitioning)
  {
    v5 = [(CSProminentDisplayViewController *)self _displayView];
    v6 = [v5 timeView];
    [v6 setAdaptiveTextHeight:a3];

    v7 = [(CSProminentDisplayViewController *)self view];
    [v7 setNeedsLayout];
  }

  if (self->_compactTimeTransitioning)
  {
    v8 = [(CSProminentDisplayViewController *)self _displayView];
    v9 = [v8 timeView];

    v10 = MEMORY[0x1E69DD250];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __62__CSProminentDisplayViewController_setAdaptiveTimeTextHeight___block_invoke;
    v12[3] = &unk_1E76BA200;
    v12[4] = self;
    v13 = v9;
    v11 = v9;
    [v10 _animateUsingSpringWithDampingRatio:0 response:v12 tracking:0 dampingRatioSmoothing:1.0 responseSmoothing:0.1 targetSmoothing:0.0 projectionDeceleration:0.0 animations:0.0 completion:0.0];
  }
}

uint64_t __62__CSProminentDisplayViewController_setAdaptiveTimeTextHeight___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 1008) == 1)
  {
    [*(a1 + 40) minimumAdaptiveTextHeight];
  }

  else
  {
    v3 = *(v2 + 1072);
  }

  [*(a1 + 40) setAdaptiveTextHeight:v3];
  v4 = *(a1 + 40);

  return [v4 layoutIfNeeded];
}

- (double)relativeAdaptiveTimeTextWidth
{
  v2 = [(CSProminentDisplayViewController *)self _displayView];
  v3 = [v2 timeView];
  [v3 relativeAdaptiveTextWidth];
  v5 = v4;

  return v5;
}

- (void)setDateTimeAlignment:(int64_t)a3
{
  v5 = [(CSProminentDisplayViewController *)self _displayView];
  v6 = [v5 timeView];
  v7 = [v6 textLabel];
  [v7 setTextAlignment:a3];

  v10 = [(CSProminentDisplayViewController *)self _displayView];
  v8 = [v10 subtitleView];
  v9 = [v8 textLabel];
  [v9 setTextAlignment:a3];
}

- (BOOL)usesEditingLayout
{
  v2 = [(CSProminentDisplayViewController *)self _displayView];
  v3 = [v2 usesEditingLayout];

  return v3;
}

- (void)setUsesEditingLayout:(BOOL)a3
{
  v3 = a3;
  v4 = [(CSProminentDisplayViewController *)self _displayView];
  [v4 setUsesEditingLayout:v3];
}

- (void)_setTransientSubtitle:(id)a3 timeout:(double)a4
{
  v6 = a3;
  v7 = [v6 text];
  v8 = v7;
  if (v6 && [v7 length])
  {
    v9 = [(CSProminentDisplayViewController *)self view];
    v10 = [v9 window];
    +[CSProminentLayoutController fontSizeForElementType:isLandscapeVariant:](CSProminentLayoutController, "fontSizeForElementType:isLandscapeVariant:", 2, ([v10 interfaceOrientation] - 3) < 2);
    v12 = v11;

    [CSProminentLayoutController fontWeightForElementType:2];
    v14 = [MEMORY[0x1E69DB878] systemFontOfSize:v12 weight:v13];
    v15 = [(CSProminentDisplayViewController *)self titleContentStyle];
    v16 = [(CSProminentDisplayViewController *)self _effectiveSubtitleTextColorForStyle:v15];

    v17 = [CSProminentTextElementView alloc];
    v18 = [MEMORY[0x1E695DF00] date];
    v19 = [(CSProminentTextElementView *)v17 initWithDate:v18 font:v14 textColor:v16];

    v20 = [(CSProminentTextElementView *)v19 textLabel];
    if (objc_opt_respondsToSelector())
    {
      [v20 setAdjustsFontSizeToFitWidth:1];
    }

    [v20 setMinimumScaleFactor:0.25];
    [(CSProminentTextElementView *)v19 setOverrideString:v8];
    v21 = [MEMORY[0x1E695DF00] now];
    [v6 setDisplayDate:v21];

    v22 = [(CSProminentDisplayViewController *)self _displayView];
    [v22 setTransientSubtitleView:v19];
  }

  else
  {
    v14 = [(CSProminentDisplayViewController *)self _displayView];
    [v14 setTransientSubtitleView:0];
  }

  objc_storeStrong(&self->_activeTransientSubtitle, a3);
  activeTransientSubtitleTimer = self->_activeTransientSubtitleTimer;
  if (activeTransientSubtitleTimer)
  {
    [(NSTimer *)activeTransientSubtitleTimer invalidate];
    v24 = self->_activeTransientSubtitleTimer;
    self->_activeTransientSubtitleTimer = 0;
  }

  if (v6)
  {
    objc_initWeak(&location, self);
    v25 = MEMORY[0x1E695DFF0];
    [v6 displayDuration];
    v27 = v26;
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __66__CSProminentDisplayViewController__setTransientSubtitle_timeout___block_invoke;
    v31[3] = &unk_1E76BA228;
    objc_copyWeak(&v33, &location);
    v32 = v6;
    v28 = [v25 timerWithTimeInterval:0 repeats:v31 block:v27];
    v29 = self->_activeTransientSubtitleTimer;
    self->_activeTransientSubtitleTimer = v28;

    v30 = [MEMORY[0x1E695DFD0] mainRunLoop];
    [v30 addTimer:self->_activeTransientSubtitleTimer forMode:*MEMORY[0x1E695DA28]];

    objc_destroyWeak(&v33);
    objc_destroyWeak(&location);
  }
}

void __66__CSProminentDisplayViewController__setTransientSubtitle_timeout___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setTransientSubtitleText:0 priority:objc_msgSend(*(a1 + 32) timeout:{"priority"), 0.0}];
  v2 = WeakRetained[158];
  WeakRetained[158] = 0;
}

- (void)setTransientSubtitleText:(id)a3 priority:(int64_t)a4 timeout:(double)a5
{
  v8 = a3;
  v14 = v8;
  if (self->_requestedTransientSubtitles)
  {
    if (v8)
    {
LABEL_3:
      v9 = [[CSProminentDisplayTransientSubtitle alloc] initWithText:v14 priority:a4 displayDuration:a5];
      goto LABEL_6;
    }
  }

  else
  {
    v10 = [MEMORY[0x1E695DF90] dictionary];
    requestedTransientSubtitles = self->_requestedTransientSubtitles;
    self->_requestedTransientSubtitles = v10;

    if (v14)
    {
      goto LABEL_3;
    }
  }

  v9 = 0;
LABEL_6:
  v12 = self->_requestedTransientSubtitles;
  v13 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
  [(NSMutableDictionary *)v12 setObject:v9 forKeyedSubscript:v13];

  [(CSProminentDisplayViewController *)self _reevaluateTransientSubtitle];
}

- (void)clearTransientSubtitleForPriority:(int64_t)a3
{
  requestedTransientSubtitles = self->_requestedTransientSubtitles;
  if (requestedTransientSubtitles)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
    [(NSMutableDictionary *)requestedTransientSubtitles setObject:0 forKeyedSubscript:v5];

    [(CSProminentDisplayViewController *)self _reevaluateTransientSubtitle];
  }
}

- (void)_reevaluateTransientSubtitle
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = [(NSMutableDictionary *)self->_requestedTransientSubtitles allKeys];
  v4 = [v3 sortedArrayUsingComparator:&__block_literal_global_58];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    while (2)
    {
      v9 = 0;
      do
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [(NSMutableDictionary *)self->_requestedTransientSubtitles objectForKey:*(*(&v18 + 1) + 8 * v9), v18];
        if (v10)
        {
          v11 = v10;
          goto LABEL_11;
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_11:

  if (self->_activeTransientSubtitle)
  {
    v12 = [v11 priority];
    if (v12 > [(CSProminentDisplayTransientSubtitle *)self->_activeTransientSubtitle priority])
    {
      [(CSProminentDisplayTransientSubtitle *)self->_activeTransientSubtitle displayDuration];
      v14 = v13;
      v15 = [(CSProminentDisplayTransientSubtitle *)self->_activeTransientSubtitle displayDate];
      [v15 timeIntervalSinceNow];
      [(CSProminentDisplayTransientSubtitle *)self->_activeTransientSubtitle setDisplayDuration:v14 + v16];
    }
  }

  [v11 displayDuration];
  if (v17 < 0.25)
  {
    v17 = 0.25;
  }

  [v11 setDisplayDuration:v17];
  [v11 displayDuration];
  [(CSProminentDisplayViewController *)self _setTransientSubtitle:v11 timeout:?];
}

- (void)setDisplayDate:(id)a3
{
  v6 = a3;
  if ((BSEqualObjects() & 1) == 0)
  {
    v4 = v6;
    if (!v6)
    {
      v4 = [(CSProminentDisplayViewController *)self _fallbackDate];
    }

    v6 = v4;
    objc_storeStrong(&self->_displayDate, v4);
    v5 = [(CSProminentDisplayViewController *)self _displayView];
    [v5 setDisplayDate:v6];
  }
}

- (BOOL)isFourDigitTime
{
  v2 = [(CSProminentDisplayViewController *)self _displayView];
  v3 = [v2 timeView];
  v4 = [v3 fourDigitTime];

  return v4;
}

- (void)setCustomSubtitleWithText:(id)a3 glyphName:(id)a4
{
  v19 = a3;
  v6 = a4;
  if ([v19 length])
  {
    v7 = [(CSProminentDisplayViewController *)self view];
    v8 = [v7 window];
    +[CSProminentLayoutController fontSizeForElementType:isLandscapeVariant:](CSProminentLayoutController, "fontSizeForElementType:isLandscapeVariant:", 2, ([v8 interfaceOrientation] - 3) < 2);
    v10 = v9;

    v11 = [MEMORY[0x1E69DB878] systemFontOfSize:v10];
    v12 = [(CSProminentDisplayViewController *)self titleContentStyle];
    v13 = [CSProminentLabeledElementView alloc];
    v14 = [MEMORY[0x1E695DF00] date];
    v15 = [(CSProminentDisplayViewController *)self _effectiveSubtitleTextColorForStyle:v12];
    v16 = [(CSProminentDisplayViewController *)self _customSubtitleGlyphWithName:v6];
    v17 = [(CSProminentLabeledElementView *)v13 initWithDate:v14 font:v11 textColor:v15 glyph:v16];

    [(CSProminentLabeledElementView *)v17 setAccessibilityIdentifier:@"cs-timer-countdown-view"];
    [(CSProminentLabeledElementView *)v17 setOverrideString:v19];
    v18 = [(CSProminentDisplayViewController *)self _displayView];
    [v18 setCustomSubtitleView:v17];
  }

  else
  {
    v11 = [(CSProminentDisplayViewController *)self _displayView];
    [v11 setCustomSubtitleView:0];
  }
}

- (void)updateCustomSubtitleWithText:(id)a3
{
  v4 = a3;
  v6 = [(CSProminentDisplayViewController *)self _displayView];
  v5 = [v6 customSubtitleView];
  [v5 setOverrideString:v4];
}

- (id)_customSubtitleGlyphWithName:(id)a3
{
  v4 = a3;
  v5 = [(CSProminentDisplayViewController *)self view];
  v6 = [v5 window];
  +[CSProminentLayoutController fontSizeForElementType:isLandscapeVariant:](CSProminentLayoutController, "fontSizeForElementType:isLandscapeVariant:", 2, ([v6 interfaceOrientation] - 3) < 2);
  v8 = v7;

  v9 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:4 weight:1 scale:v8];
  v10 = [MEMORY[0x1E69DCAB8] systemImageNamed:v4 withConfiguration:v9];

  v11 = [v10 imageWithRenderingMode:2];

  return v11;
}

- (id)_fallbackDate
{
  v2 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:1168335660.0];
  v3 = [MEMORY[0x1E695DFE8] systemTimeZone];
  v4 = 1168335660.0 - [v3 secondsFromGMTForDate:v2];

  v5 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:v4];

  return v5;
}

- (void)setBaseFont:(id)a3
{
  objc_storeStrong(&self->_baseFont, a3);
  v5 = a3;
  v7 = [(CSProminentDisplayViewController *)self _displayView];
  v6 = [v7 timeView];
  [v6 setBaseFont:v5];
}

- (void)setNumberingSystem:(id)a3
{
  v4 = a3;
  v5 = [v4 copy];
  numberingSystem = self->_numberingSystem;
  self->_numberingSystem = v5;

  v8 = [(CSProminentDisplayViewController *)self _displayView];
  v7 = CSTimeNumberingSystemStringToType(v4);

  [v8 setNumberingSystem:v7];
}

- (void)setSubtitleComplicationViewController:(id)a3
{
  v5 = a3;
  subtitleComplicationViewController = self->_subtitleComplicationViewController;
  if (subtitleComplicationViewController != v5)
  {
    v8 = v5;
    if (subtitleComplicationViewController)
    {
      [(UIViewController *)subtitleComplicationViewController willMoveToParentViewController:0];
      v7 = [(CSProminentDisplayViewController *)self _displayView];
      [v7 setSubtitleComplicationView:0];

      [(UIViewController *)self->_subtitleComplicationViewController removeFromParentViewController];
    }

    objc_storeStrong(&self->_subtitleComplicationViewController, a3);
    subtitleComplicationViewController = [(CSProminentDisplayViewController *)self _updateElements];
    v5 = v8;
  }

  MEMORY[0x1EEE66BB8](subtitleComplicationViewController, v5);
}

- (void)setComplicationContainerViewController:(id)a3
{
  v5 = a3;
  complicationContainerViewController = self->_complicationContainerViewController;
  if (complicationContainerViewController != v5)
  {
    v9 = v5;
    if (complicationContainerViewController)
    {
      [(UIViewController *)complicationContainerViewController willMoveToParentViewController:0];
      v7 = [(CSProminentDisplayViewController *)self _displayView];
      [v7 setComplicationRowView:0];

      v8 = [(CSProminentDisplayViewController *)self _displayView];
      [v8 setComplicationBottomRowView:0];

      [(UIViewController *)self->_complicationContainerViewController removeFromParentViewController];
    }

    objc_storeStrong(&self->_complicationContainerViewController, a3);
    complicationContainerViewController = [(CSProminentDisplayViewController *)self _updateElements];
    v5 = v9;
  }

  MEMORY[0x1EEE66BB8](complicationContainerViewController, v5);
}

- (void)setComplicationSidebarViewController:(id)a3
{
  v5 = a3;
  complicationSidebarViewController = self->_complicationSidebarViewController;
  if (complicationSidebarViewController != v5)
  {
    v8 = v5;
    if (complicationSidebarViewController)
    {
      [(UIViewController *)complicationSidebarViewController willMoveToParentViewController:0];
      v7 = [(CSProminentDisplayViewController *)self _displayView];
      [v7 setComplicationSidebarView:0];

      [(UIViewController *)self->_complicationSidebarViewController removeFromParentViewController];
    }

    objc_storeStrong(&self->_complicationSidebarViewController, a3);
    complicationSidebarViewController = [(CSProminentDisplayViewController *)self _updateElements];
    v5 = v8;
  }

  MEMORY[0x1EEE66BB8](complicationSidebarViewController, v5);
}

- (void)setTextColor:(id)a3
{
  objc_storeStrong(&self->_textColor, a3);

  [(CSProminentDisplayViewController *)self _updateViewColors];
}

- (void)setGroupName:(id)a3
{
  v4 = [a3 copy];
  groupName = self->_groupName;
  self->_groupName = v4;

  [(CSProminentDisplayViewController *)self _updateViewColors];
}

- (void)setAlternativeVibrancyEffectLUTIdentifier:(id)a3 alternativeVibrancyEffectLUTBundleURL:(id)a4
{
  v8 = a3;
  v6 = a4;
  if (v8 && v6)
  {
    alternativeVibrancyEffectLUT = [objc_alloc(MEMORY[0x1E698E820]) initWithIdentifier:v8 bundleURL:v6];
    if ((BSEqualObjects() & 1) == 0)
    {
      objc_storeStrong(&self->_alternativeVibrancyEffectLUT, alternativeVibrancyEffectLUT);
      [(CSProminentDisplayViewController *)self _updateViewColors];
    }
  }

  else
  {
    alternativeVibrancyEffectLUT = self->_alternativeVibrancyEffectLUT;
    self->_alternativeVibrancyEffectLUT = 0;
  }
}

- (void)setAlternativeVibrancyEffectLUTIdentifier:(id)a3 alternativeVibrancyEffectLUTBundleURL:(id)a4 luminanceReduced:(BOOL)a5
{
  v5 = a5;
  v11 = a3;
  v8 = a4;
  if (v11 && v8)
  {
    v9 = [objc_alloc(MEMORY[0x1E698E820]) initWithIdentifier:v11 bundleURL:v8];
    alternativeVibrancyEffectLUT = [v9 copyWithLuminanceReduced:v5];

    if ((BSEqualObjects() & 1) == 0)
    {
      objc_storeStrong(&self->_alternativeVibrancyEffectLUT, alternativeVibrancyEffectLUT);
      [(CSProminentDisplayViewController *)self _updateViewColors];
    }
  }

  else
  {
    alternativeVibrancyEffectLUT = self->_alternativeVibrancyEffectLUT;
    self->_alternativeVibrancyEffectLUT = 0;
  }
}

- (BSUIVibrancyConfiguration)vibrancyConfiguration
{
  vibrancyConfiguration = self->_vibrancyConfiguration;
  if (!vibrancyConfiguration || (v4 = [(BSUIVibrancyConfiguration *)vibrancyConfiguration backgroundType], v4 != [(CSProminentDisplayViewController *)self backgroundType]) || ([(BSUIVibrancyConfiguration *)self->_vibrancyConfiguration color], v5 = objc_claimAutoreleasedReturnValue(), [(CSProminentDisplayViewController *)self textColor], v6 = objc_claimAutoreleasedReturnValue(), v7 = BSEqualObjects(), v6, v5, !v7) || (v8 = [(BSUIVibrancyConfiguration *)self->_vibrancyConfiguration effectType], v8 != [(CSProminentDisplayViewController *)self effectType]) || ([(BSUIVibrancyConfiguration *)self->_vibrancyConfiguration groupName], v9 = objc_claimAutoreleasedReturnValue(), [(CSProminentDisplayViewController *)self groupName], v10 = objc_claimAutoreleasedReturnValue(), v11 = BSEqualObjects(), v10, v9, !v11) || ([(BSUIVibrancyConfiguration *)self->_vibrancyConfiguration alternativeVibrancyEffectLUT], v12 = objc_claimAutoreleasedReturnValue(), [(CSProminentDisplayViewController *)self alternativeVibrancyEffectLUT], v13 = objc_claimAutoreleasedReturnValue(), v14 = BSEqualObjects(), v13, v12, (v14 & 1) == 0))
  {
    v15 = objc_alloc(MEMORY[0x1E698E810]);
    v16 = [(CSProminentDisplayViewController *)self effectType];
    v17 = [(CSProminentDisplayViewController *)self backgroundType];
    v18 = [(CSProminentDisplayViewController *)self textColor];
    v19 = [(CSProminentDisplayViewController *)self groupName];
    v20 = [(CSProminentDisplayViewController *)self alternativeVibrancyEffectLUT];
    v21 = [v15 initWithEffectType:v16 backgroundType:v17 color:v18 groupName:v19 blendConfiguration:0 blendAmount:v20 alternativeVibrancyEffectLUT:0.0];
    v22 = self->_vibrancyConfiguration;
    self->_vibrancyConfiguration = v21;
  }

  v23 = self->_vibrancyConfiguration;

  return v23;
}

- (void)setVibrancyContentType:(int64_t)a3
{
  self->_vibrancyContentType = a3;
  v5 = [(CSProminentDisplayViewController *)self _displayViewIfLoaded];
  v6 = [v5 timeVibrancyEffectView];
  [v6 setContentType:a3];

  v7 = [(CSProminentDisplayViewController *)self _displayViewIfLoaded];
  v8 = [v7 subtitleVibrancyEffectView];
  [v8 setContentType:a3];

  v10 = [(CSProminentDisplayViewController *)self _displayViewIfLoaded];
  v9 = [v10 vibrancyEffectView];
  [v9 setContentType:a3];
}

- (BOOL)_allowsGlassAppearance
{
  v3 = [MEMORY[0x1E695E000] standardUserDefaults];
  v4 = [v3 BOOLForKey:@"SBDisallowGlassTime"];

  v5 = CSLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(CSProminentDisplayViewController *)v4 _allowsGlassAppearance];
  }

  v6 = _os_feature_enabled_impl();
  if (v6)
  {
    v6 = _os_feature_enabled_impl();
    if (v6)
    {
      LOBYTE(v6) = [(CSProminentDisplayViewController *)self _sensitiveUIEnabled]& (v4 ^ 1);
    }
  }

  return v6;
}

- (id)_effectiveTitleTextColorForStyle:(id)a3
{
  v4 = a3;
  if ([(CSProminentDisplayViewController *)self _allowsGlassAppearance])
  {
    v5 = v4;
    if ([v5 supportsGlassAppearance])
    {
      if ([v5 allowsVariation])
      {
        [v5 variationAppliedColors];
      }

      else
      {
        [v5 colors];
      }
      v7 = ;
      v6 = [v7 firstObject];

      if (v6)
      {
        v8 = [(CSProminentDisplayViewController *)self traitCollection];
        v9 = [v8 _backlightLuminance];

        if (v9 == 1)
        {
          v10 = [(CSProminentDisplayViewController *)self vibrancyConfiguration];
          v11 = v10;
          if (v10)
          {
            v12 = [v10 backgroundType];
            v13 = 0.2;
            if (v12)
            {
              v13 = 0.0;
            }

            v14 = [MEMORY[0x1E69DC888] colorWithWhite:v13 alpha:1.0];
            v15 = [v11 effectValues];
            v16 = [MEMORY[0x1E69DC888] whiteColor];
            v17 = [v15 transformColor:v14 withVibrantMask:v16];

            v6 = v17;
          }
        }
      }
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = [MEMORY[0x1E69DC888] whiteColor];
  }

  return v6;
}

- (void)_updateViewColors
{
  v47 = [(CSProminentDisplayViewController *)self _displayView];
  [(CSProminentDisplayViewController *)self _timeStyleBounds];
  v7 = v3;
  v8 = v4;
  v9 = v5;
  v10 = v6;
  timeRenderer = self->_timeRenderer;
  if (timeRenderer)
  {
    [(CSVibrantContentStyleRenderer *)timeRenderer setStyleBoundingRect:v3, v4, v5, v6];
  }

  else
  {
    v12 = [CSGlassContentStyleRenderer alloc];
    v13 = [v47 timeVibrancyEffectView];
    v14 = [(CSVibrantContentStyleRenderer *)v12 initWithVibrancyView:v13 styleBoundingRect:v7, v8, v9, v10];
    v15 = self->_timeRenderer;
    self->_timeRenderer = v14;
  }

  subtitleComplicationRenderer = self->_subtitleComplicationRenderer;
  if (subtitleComplicationRenderer)
  {
    [(CSVibrantContentStyleRenderer *)subtitleComplicationRenderer setStyleBoundingRect:v7, v8, v9, v10];
  }

  else
  {
    v17 = [CSVibrantContentStyleRenderer alloc];
    v18 = [v47 subtitleVibrancyEffectView];
    v19 = [(CSVibrantContentStyleRenderer *)v17 initWithVibrancyView:v18 styleBoundingRect:v7, v8, v9, v10];
    v20 = self->_subtitleComplicationRenderer;
    self->_subtitleComplicationRenderer = v19;

    [(CSVibrantContentStyleRenderer *)self->_subtitleComplicationRenderer setUseComplicationRenderStyle:1];
  }

  if (self->_shouldApplyVibrancyToComplications)
  {
    complicationRenderer = self->_complicationRenderer;
    if (complicationRenderer)
    {
      [(CSVibrantContentStyleRenderer *)complicationRenderer setStyleBoundingRect:v7, v8, v9, v10];
    }

    else
    {
      v22 = [CSVibrantContentStyleRenderer alloc];
      v23 = [v47 vibrancyEffectView];
      v24 = [(CSVibrantContentStyleRenderer *)v22 initWithVibrancyView:v23 styleBoundingRect:v7, v8, v9, v10];
      v25 = self->_complicationRenderer;
      self->_complicationRenderer = v24;

      [(CSVibrantContentStyleRenderer *)self->_complicationRenderer setUseComplicationRenderStyle:1];
    }
  }

  v26 = [(CSProminentDisplayViewController *)self vibrancyConfiguration];
  [(CSVibrantContentStyleRenderer *)self->_timeRenderer setVibrancyConfiguration:v26];
  v27 = self->_timeRenderer;
  v28 = [(CSProminentDisplayViewController *)self titleContentStyle];
  [(CSVibrantContentStyleRenderer *)v27 applyStyle:v28];

  v29 = [(CSProminentDisplayViewController *)self titleContentStyle];
  v30 = [v29 type];

  v31 = [(CSProminentDisplayViewController *)self titleContentStyle];
  v32 = v31;
  v33 = (v30 == 5 || [v31 supportsGlassAppearance]) && -[CSProminentDisplayViewController _allowsGlassAppearance](self, "_allowsGlassAppearance") && !self->_showsCompactTime;
  [(CSVibrantContentStyleRenderer *)self->_subtitleComplicationRenderer setVibrancyConfiguration:v26];
  v34 = self->_subtitleComplicationRenderer;
  v35 = [(CSProminentDisplayViewController *)self titleContentStyle];
  [(CSVibrantContentStyleRenderer *)v34 applyStyle:v35];

  [(CSVibrantContentStyleRenderer *)self->_complicationRenderer setVibrancyConfiguration:v26];
  v36 = self->_complicationRenderer;
  v37 = [(CSProminentDisplayViewController *)self titleContentStyle];
  [(CSVibrantContentStyleRenderer *)v36 applyStyle:v37];

  v38 = [v47 vibrancyShadowView];
  [v38 setConfiguration:v26];

  v39 = [v47 timeView];
  [v39 setUsesGlassMaterial:v33];

  v40 = [(CSProminentDisplayViewController *)self titleContentStyle];
  v41 = [(CSProminentDisplayViewController *)self _effectiveTitleTextColorForStyle:v40];
  v42 = [(CSProminentDisplayViewController *)self _effectiveSubtitleTextColorForStyle:v40];
  v43 = [(CSProminentDisplayViewController *)self _effectiveWidgetsColorForStyle:v40];
  v44 = [v47 timeView];
  [v44 setPrimaryTextColor:v41];

  v45 = [v47 subtitleView];
  [v45 setPrimaryTextColor:v42];

  v46 = [v47 transientSubtitleView];
  [v46 setPrimaryTextColor:v43];

  self->_previousTimeStyleBounds.origin.x = v7;
  self->_previousTimeStyleBounds.origin.y = v8;
  self->_previousTimeStyleBounds.size.width = v9;
  self->_previousTimeStyleBounds.size.height = v10;
}

- (void)_updateStyleBoundingRects
{
  [(CSProminentDisplayViewController *)self _timeStyleBounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(CSVibrantContentStyleRenderer *)self->_timeRenderer setStyleBoundingRect:?];
  [(CSVibrantContentStyleRenderer *)self->_subtitleComplicationRenderer setStyleBoundingRect:v4, v6, v8, v10];
  complicationRenderer = self->_complicationRenderer;

  [(CSVibrantContentStyleRenderer *)complicationRenderer setStyleBoundingRect:v4, v6, v8, v10];
}

- (void)setTitleContentStyle:(id)a3
{
  objc_storeStrong(&self->_titleContentStyle, a3);

  [(CSProminentDisplayViewController *)self _updateViewColors];
}

- (BOOL)_sensitiveUIEnabled
{
  v2 = [MEMORY[0x1E695E000] standardUserDefaults];
  if ([v2 BOOLForKey:@"SBSensitiveUIEnabled"])
  {
    v3 = 1;
  }

  else
  {
    v4 = [MEMORY[0x1E695E000] standardUserDefaults];
    v5 = [v4 objectForKey:@"SBSensitiveUIEnabled"];
    v3 = v5 == 0;
  }

  return v3;
}

- (void)_updateContentForSensitiveUI
{
  v3 = [(CSProminentDisplayViewController *)self _sensitiveUIEnabled];
  v4 = [(CSProminentDisplayViewController *)self _displayView];
  v5 = [v4 timeView];
  [v5 setCanShowSensitiveUI:v3];

  v6 = [(CSProminentDisplayViewController *)self _displayView];
  v7 = [v6 subtitleView];
  v8 = objc_opt_class();
  v9 = v7;
  if (v8)
  {
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  [v11 setCanShowSensitiveUI:v3];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if (BSEqualStrings())
  {

    [(CSProminentDisplayViewController *)self _updateContentForSensitiveUI];
  }
}

- (void)setElements:(unint64_t)a3
{
  if (self->_elements != a3)
  {
    self->_elements = a3;
    [(CSProminentDisplayViewController *)self _updateElements];
  }
}

- (void)setElementsWithBackingDim:(unint64_t)a3
{
  if (self->_elementsWithBackingDim != a3)
  {
    self->_elementsWithBackingDim = a3;
    [(CSProminentDisplayViewController *)self _updateElements];
  }
}

- (unint64_t)_suppressedElements
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v2 = [(CSProminentDisplayViewController *)self _elementSuppressionReasons];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __55__CSProminentDisplayViewController__suppressedElements__block_invoke;
  v5[3] = &unk_1E76BA270;
  v5[4] = &v6;
  [v2 enumerateKeysAndObjectsUsingBlock:v5];

  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __55__CSProminentDisplayViewController__suppressedElements__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  result = [a3 unsignedIntegerValue];
  *(*(*(a1 + 32) + 8) + 24) |= result;
  return result;
}

- (void)_setElements:(unint64_t)a3 suppressed:(BOOL)a4 forReason:(id)a5
{
  v5 = a4;
  v13 = a5;
  v8 = [(CSProminentDisplayViewController *)self _elementSuppressionReasons];
  if (!v8)
  {
    v8 = [MEMORY[0x1E695DF90] dictionary];
    [(CSProminentDisplayViewController *)self _setElementSuppressionReasons:v8];
  }

  v9 = [v8 objectForKeyedSubscript:v13];
  v10 = [v9 unsignedIntegerValue];

  if (v5)
  {
    v11 = v10 | a3;
  }

  else
  {
    v11 = v10 & ~a3;
  }

  if (v11)
  {
    v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
    [v8 setObject:v12 forKeyedSubscript:v13];
  }

  else
  {
    [v8 removeObjectForKey:v13];
  }

  [(CSProminentDisplayViewController *)self _updateElements];
}

- (void)_updateElements
{
  [(CSProminentDisplayViewController *)self _createOrDestroyVibrancyShadowViewIfNecessary];
  [(CSProminentDisplayViewController *)self _createOrDestroyTimeElementIfNecessary];
  [(CSProminentDisplayViewController *)self _createOrDestroySubtitleElementIfNecessary];
  [(CSProminentDisplayViewController *)self _createOrDestroySubtitleComplicationElementIfNecessary];
  [(CSProminentDisplayViewController *)self _createOrDestroySubtitleDimmingViewIfNecessary];
  [(CSProminentDisplayViewController *)self _createOrDestroyComplicationRowElementIfNecessary];
  [(CSProminentDisplayViewController *)self _createOrDestroyComplicationSidebarElementIfNecessary];
  [(CSProminentDisplayViewController *)self _updateViewColors];
  v3 = [(CSProminentDisplayViewController *)self view];
  [v3 setNeedsLayout];
}

- (void)_createOrDestroyVibrancyShadowViewIfNecessary
{
  v7 = [(CSProminentDisplayViewController *)self _displayView];
  v3 = [v7 vibrancyShadowView];

  v4 = [(CSProminentDisplayViewController *)self _shouldShowElement:64];
  if ((((v3 == 0) ^ v4) & 1) == 0)
  {
    if (v4)
    {
      v5 = objc_alloc_init(MEMORY[0x1E698E828]);
      v6 = [(CSProminentDisplayViewController *)self vibrancyConfiguration];
      [v5 setConfiguration:v6];

      [v7 setVibrancyShadowView:v5];
    }

    else
    {
      [v7 setVibrancyShadowView:0];
    }
  }
}

- (void)_createOrDestroyTimeElementIfNecessary
{
  v3 = [(CSProminentDisplayViewController *)self _displayView];
  v4 = [v3 timeView];

  v5 = [(CSProminentDisplayViewController *)self _shouldShowElement:1];
  if ((((v4 == 0) ^ v5) & 1) == 0)
  {
    if (v5)
    {
      baseFont = self->_baseFont;
      if (baseFont)
      {
        v7 = baseFont;
      }

      else
      {
        v7 = [MEMORY[0x1E69DB878] systemFontOfSize:0.0];
      }

      v10 = v7;
      v11 = [(CSProminentDisplayViewController *)self titleContentStyle];
      v22 = 0;
      v23 = &v22;
      v24 = 0x3032000000;
      v25 = __Block_byref_object_copy__0;
      v26 = __Block_byref_object_dispose__0;
      v27 = 0;
      v12 = MEMORY[0x1E69DD250];
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __74__CSProminentDisplayViewController__createOrDestroyTimeElementIfNecessary__block_invoke;
      v18[3] = &unk_1E76BA298;
      v21 = &v22;
      v18[4] = self;
      v9 = v10;
      v19 = v9;
      v13 = v11;
      v20 = v13;
      [v12 performWithoutAnimation:v18];
      [v23[5] setNumberingSystem:CSTimeNumberingSystemStringToType(self->_numberingSystem)];
      [v3 setTimeView:v23[5]];

      _Block_object_dispose(&v22, 8);
    }

    else
    {
      v8 = MEMORY[0x1E698E7D0];
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __74__CSProminentDisplayViewController__createOrDestroyTimeElementIfNecessary__block_invoke_2;
      v16[3] = &unk_1E76B9E48;
      v17 = v3;
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __74__CSProminentDisplayViewController__createOrDestroyTimeElementIfNecessary__block_invoke_3;
      v14[3] = &unk_1E76BA2C0;
      v15 = v17;
      [v8 addAlongsideAnimations:v16 completion:v14];

      v9 = v17;
    }
  }
}

uint64_t __74__CSProminentDisplayViewController__createOrDestroyTimeElementIfNecessary__block_invoke(void *a1)
{
  v2 = [CSProminentTimeView alloc];
  v3 = a1[4];
  v4 = a1[5];
  v5 = v3[129];
  v6 = [v3 _effectiveTitleTextColorForStyle:a1[6]];
  v7 = [(CSProminentTimeView *)v2 initWithDate:v5 baseFont:v4 textColor:v6];
  v8 = *(a1[7] + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  v10 = *(*(a1[7] + 8) + 40);

  return [v10 setAlpha:0.0];
}

void __74__CSProminentDisplayViewController__createOrDestroyTimeElementIfNecessary__block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) timeView];
  [v1 setAlpha:0.0];
}

uint64_t __74__CSProminentDisplayViewController__createOrDestroyTimeElementIfNecessary__block_invoke_3(uint64_t result, int a2)
{
  if (a2)
  {
    return [*(result + 32) setTimeView:0];
  }

  return result;
}

- (void)_createOrDestroySubtitleElementIfNecessary
{
  v10 = [(CSProminentDisplayViewController *)self _displayView];
  v3 = [v10 subtitleView];

  v4 = [(CSProminentDisplayViewController *)self _shouldShowElement:2];
  if ((((v3 == 0) ^ v4) & 1) == 0)
  {
    if (v4)
    {
      v5 = [(CSProminentDisplayViewController *)self titleContentStyle];
      v6 = [CSProminentSubtitleDateView alloc];
      displayDate = self->_displayDate;
      v8 = [(CSProminentDisplayViewController *)self _effectiveSubtitleTextColorForStyle:v5];
      v9 = [(CSProminentSubtitleDateView *)v6 initWithDate:displayDate textColor:v8];

      [(CSProminentSubtitleDateView *)v9 setAlternateCalendarIdentifier:self->_alternateCalendarIdentifier locale:self->_alternateCalendarLocale];
      [(CSProminentSubtitleDateView *)v9 setShowsTime:self->_showsCompactTime animated:0];
      [(CSProminentSubtitleDateView *)v9 setCanShowSensitiveUI:[(CSProminentDisplayViewController *)self _sensitiveUIEnabled]];
      [v10 setSubtitleView:v9];
    }

    else
    {
      [v10 setSubtitleView:0];
    }
  }
}

- (void)_createOrDestroySubtitleComplicationElementIfNecessary
{
  v8 = [(CSProminentDisplayViewController *)self _displayView];
  v3 = [v8 subtitleComplicationView];

  v4 = [(CSProminentDisplayViewController *)self _shouldShowElement:4];
  if ((((v3 == 0) ^ v4) & 1) == 0)
  {
    if (v4 && self->_subtitleComplicationViewController)
    {
      [(CSProminentDisplayViewController *)self addChildViewController:?];
      v5 = [CSProminentEmptyElementView alloc];
      v6 = [(UIViewController *)self->_subtitleComplicationViewController view];
      v7 = [(CSProminentEmptyElementView *)v5 initWithContentView:v6];

      [v8 setSubtitleComplicationView:v7];
      [(UIViewController *)self->_subtitleComplicationViewController didMoveToParentViewController:self];
    }

    else
    {
      [v8 setSubtitleComplicationView:0];
    }
  }
}

- (void)_createOrDestroySubtitleDimmingViewIfNecessary
{
  v15 = [(CSProminentDisplayViewController *)self _displayView];
  v3 = [v15 subtitleDimmingView];

  if ([(CSProminentDisplayViewController *)self _shouldDimElement:2])
  {
    if (v3)
    {
      goto LABEL_8;
    }

LABEL_6:
    [CSProminentLayoutController frameForElements:2];
    [(CSProminentDisplayViewController *)self _dimmingLayerOutsetFrameGivenBaseFrame:?];
    x = v17.origin.x;
    y = v17.origin.y;
    width = v17.size.width;
    height = v17.size.height;
    v9 = CGRectGetWidth(v17);
    v18.origin.x = x;
    v18.origin.y = y;
    v18.size.width = width;
    v18.size.height = height;
    v10 = CGRectGetHeight(v18);
    v11 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{x, y, width, height}];
    v12 = [(CSProminentDisplayViewController *)self _dimmingPillLayerForBounds:0.0, 0.0, v9, v10];
    subtitleDimmingLayer = self->_subtitleDimmingLayer;
    self->_subtitleDimmingLayer = v12;

    v14 = [v11 layer];
    [v14 addSublayer:self->_subtitleDimmingLayer];

    [v15 setSubtitleDimmingView:v11];
    goto LABEL_8;
  }

  v4 = [(CSProminentDisplayViewController *)self _shouldDimElement:4];
  if (((v3 == 0) ^ v4))
  {
    goto LABEL_8;
  }

  if (v4)
  {
    goto LABEL_6;
  }

  [v15 setSubtitleDimmingView:0];
LABEL_8:
}

- (id)_dimmingPillLayerForBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v14[1] = *MEMORY[0x1E69E9840];
  v8 = [MEMORY[0x1E69794A0] layer];
  v9 = [(CSProminentDisplayViewController *)self _shadowPillPathForBounds:x, y, width, height];
  [v8 setShadowPath:{objc_msgSend(v9, "CGPath")}];

  [v8 setMasksToBounds:0];
  [v8 setShadowRadius:20.0];
  v10 = [MEMORY[0x1E69DC888] blackColor];
  [v8 setShadowColor:{objc_msgSend(v10, "CGColor")}];

  [v8 setShadowOffset:{*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)}];
  LODWORD(v11) = 1.0;
  [v8 setShadowOpacity:v11];
  [v8 setFrame:{x, y, width, height}];
  v14[0] = self->_dimmingFilter;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  [v8 setFilters:v12];

  return v8;
}

- (id)_shadowPillPathForBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = CGRectGetHeight(a3) * 0.5;
  v8 = MEMORY[0x1E69DC728];

  return [v8 bezierPathWithRoundedRect:x cornerRadius:{y, width, height, v7}];
}

- (void)_createOrDestroyComplicationRowElementIfNecessary
{
  v3 = [(CSProminentDisplayViewController *)self _displayView];
  v4 = [v3 complicationRowView];

  v5 = [v3 complicationBottomRowView];

  v6 = [(CSProminentDisplayViewController *)self _shouldShowElement:8];
  v7 = [(CSProminentDisplayViewController *)self _shouldShowElement:32];
  v8 = v7;
  if (v6 && v7)
  {
    v9 = CSLogCommon();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(CSProminentDisplayViewController *)v9 _createOrDestroyComplicationRowElementIfNecessary];
    }

    v8 = 0;
  }

  if ((((v4 == 0) ^ v6) & 1) == 0)
  {
    if (v6 && self->_complicationContainerViewController)
    {
      [(CSProminentDisplayViewController *)self addChildViewController:?];
      v24 = 0;
      v25 = &v24;
      v26 = 0x3032000000;
      v27 = __Block_byref_object_copy__0;
      v28 = __Block_byref_object_dispose__0;
      v29 = 0;
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __85__CSProminentDisplayViewController__createOrDestroyComplicationRowElementIfNecessary__block_invoke;
      v23[3] = &unk_1E76BA2E8;
      v23[4] = self;
      v23[5] = &v24;
      [MEMORY[0x1E69DD250] performWithoutAnimation:v23];
      [v3 setComplicationRowView:v25[5]];
      [(UIViewController *)self->_complicationContainerViewController didMoveToParentViewController:self];
      _Block_object_dispose(&v24, 8);
      v10 = v29;
    }

    else
    {
      v11 = MEMORY[0x1E698E7D0];
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __85__CSProminentDisplayViewController__createOrDestroyComplicationRowElementIfNecessary__block_invoke_2;
      v21[3] = &unk_1E76B9E48;
      v22 = v3;
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __85__CSProminentDisplayViewController__createOrDestroyComplicationRowElementIfNecessary__block_invoke_3;
      v19[3] = &unk_1E76BA2C0;
      v20 = v22;
      [v11 addAlongsideAnimations:v21 completion:v19];

      v10 = v22;
    }
  }

  if ((((v5 == 0) ^ v8) & 1) == 0)
  {
    if (v8 && self->_complicationContainerViewController)
    {
      [(CSProminentDisplayViewController *)self addChildViewController:?];
      v24 = 0;
      v25 = &v24;
      v26 = 0x3032000000;
      v27 = __Block_byref_object_copy__0;
      v28 = __Block_byref_object_dispose__0;
      v29 = 0;
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __85__CSProminentDisplayViewController__createOrDestroyComplicationRowElementIfNecessary__block_invoke_4;
      v18[3] = &unk_1E76BA2E8;
      v18[4] = self;
      v18[5] = &v24;
      [MEMORY[0x1E69DD250] performWithoutAnimation:v18];
      [v3 setComplicationBottomRowView:v25[5]];
      [(UIViewController *)self->_complicationContainerViewController didMoveToParentViewController:self];
      _Block_object_dispose(&v24, 8);
      v12 = v29;
    }

    else
    {
      v13 = MEMORY[0x1E698E7D0];
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __85__CSProminentDisplayViewController__createOrDestroyComplicationRowElementIfNecessary__block_invoke_5;
      v16[3] = &unk_1E76B9E48;
      v17 = v3;
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __85__CSProminentDisplayViewController__createOrDestroyComplicationRowElementIfNecessary__block_invoke_6;
      v14[3] = &unk_1E76BA2C0;
      v15 = v17;
      [v13 addAlongsideAnimations:v16 completion:v14];

      v12 = v17;
    }
  }
}

uint64_t __85__CSProminentDisplayViewController__createOrDestroyComplicationRowElementIfNecessary__block_invoke(uint64_t a1)
{
  v2 = [CSProminentEmptyElementView alloc];
  v3 = [*(*(a1 + 32) + 1136) view];
  v4 = [(CSProminentEmptyElementView *)v2 initWithContentView:v3];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = *(*(*(a1 + 40) + 8) + 40);

  return [v7 setAlpha:0.0];
}

void __85__CSProminentDisplayViewController__createOrDestroyComplicationRowElementIfNecessary__block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) complicationRowView];
  [v1 setAlpha:0.0];
}

uint64_t __85__CSProminentDisplayViewController__createOrDestroyComplicationRowElementIfNecessary__block_invoke_3(uint64_t result, int a2)
{
  if (a2)
  {
    return [*(result + 32) setComplicationRowView:0];
  }

  return result;
}

uint64_t __85__CSProminentDisplayViewController__createOrDestroyComplicationRowElementIfNecessary__block_invoke_4(uint64_t a1)
{
  v2 = [CSProminentEmptyElementView alloc];
  v3 = [*(*(a1 + 32) + 1136) view];
  v4 = [(CSProminentEmptyElementView *)v2 initWithContentView:v3];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = *(*(*(a1 + 40) + 8) + 40);

  return [v7 setAlpha:0.0];
}

void __85__CSProminentDisplayViewController__createOrDestroyComplicationRowElementIfNecessary__block_invoke_5(uint64_t a1)
{
  v1 = [*(a1 + 32) complicationBottomRowView];
  [v1 setAlpha:0.0];
}

uint64_t __85__CSProminentDisplayViewController__createOrDestroyComplicationRowElementIfNecessary__block_invoke_6(uint64_t result, int a2)
{
  if (a2)
  {
    return [*(result + 32) setComplicationBottomRowView:0];
  }

  return result;
}

- (void)_createOrDestroyComplicationSidebarElementIfNecessary
{
  v8 = [(CSProminentDisplayViewController *)self _displayView];
  v3 = [v8 complicationSidebarView];

  v4 = [(CSProminentDisplayViewController *)self _shouldShowElement:16];
  if ((((v3 == 0) ^ v4) & 1) == 0)
  {
    if (v4 && self->_complicationSidebarViewController)
    {
      [(CSProminentDisplayViewController *)self addChildViewController:?];
      v5 = [CSProminentEmptyElementView alloc];
      v6 = [(UIViewController *)self->_complicationSidebarViewController view];
      v7 = [(CSProminentEmptyElementView *)v5 initWithContentView:v6];

      [v8 setComplicationSidebarView:v7];
      [(UIViewController *)self->_complicationSidebarViewController didMoveToParentViewController:self];
    }

    else
    {
      [v8 setComplicationSidebarView:0];
    }
  }
}

- (id)_dimmingColorFilter
{
  v2 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979D78]];
  v3 = MEMORY[0x1E696B098];
  v4 = objc_opt_class();
  if (v4)
  {
    [v4 legibilityColorMatrix];
  }

  else
  {
    memset(v7, 0, sizeof(v7));
  }

  v5 = [v3 valueWithCAColorMatrix:v7];
  [v2 setValue:v5 forKey:*MEMORY[0x1E6979AC0]];

  return v2;
}

- (void)interactiveTransition:(id)a3 didUpdate:(double)a4
{
  v23 = a3;
  v6 = [(CSProminentDisplayViewController *)self currentTransition];

  v7 = v23;
  if (v6 == v23)
  {
    v8 = [v23 cachingVibrancyTransitionProvider];

    if (v8)
    {
      v9 = [v23 cachingVibrancyTransitionProvider];
      v10 = [v23 fromVibrancyConfiguration];
      v11 = [v10 alternativeVibrancyEffectLUT];
      v12 = [v23 toVibrancyConfiguration];
      v13 = [v12 alternativeVibrancyEffectLUT];
      v14 = [v13 lutIdentifier];
      v15 = [v9 vibrancyLUTWithStartingLUT:v11 transitionProgress:v14 toIdentifier:a4];

      v16 = [v23 fromVibrancyConfiguration];
      v17 = [v23 toVibrancyConfiguration];
      v8 = [v16 copyWithBlendAmount:v17 blendConfiguration:v15 alternativeVibrancyEffectLUT:a4];
    }

    v18 = [(CSProminentDisplayViewController *)self _displayView];
    v19 = [v18 timeVibrancyEffectView];
    [v19 setConfiguration:v8];

    v20 = [v18 subtitleVibrancyEffectView];
    [v20 setConfiguration:v8];

    v21 = [v18 vibrancyEffectView];
    [v21 setConfiguration:v8];

    v22 = [v18 vibrancyShadowView];
    [v22 setConfiguration:v8];

    v7 = v23;
  }
}

- (void)interactiveTransition:(id)a3 didFinishSuccessfully:(BOOL)a4
{
  v15 = a3;
  v6 = [(CSProminentDisplayViewController *)self currentTransition];

  v7 = v15;
  if (v6 == v15)
  {
    if (a4)
    {
      v8 = [v15 baseFont];
      [(CSProminentDisplayViewController *)self setBaseFont:v8];

      [v15 toVibrancyConfiguration];
    }

    else
    {
      [v15 fromVibrancyConfiguration];
    }
    v9 = ;
    v10 = [v9 color];
    [(CSProminentDisplayViewController *)self setTextColor:v10];

    -[CSProminentDisplayViewController setBackgroundType:](self, "setBackgroundType:", [v9 backgroundType]);
    -[CSProminentDisplayViewController setEffectType:](self, "setEffectType:", [v9 effectType]);
    v11 = [v9 alternativeVibrancyEffectLUT];
    v12 = [v11 lutIdentifier];
    v13 = [v11 bundleURL];
    [(CSProminentDisplayViewController *)self setAlternativeVibrancyEffectLUTIdentifier:v12 alternativeVibrancyEffectLUTBundleURL:v13 luminanceReduced:0];

    v14 = [v9 groupName];
    [(CSProminentDisplayViewController *)self setGroupName:v14];

    [(CSProminentDisplayViewController *)self setCurrentTransition:0];
    v7 = v15;
  }
}

- (CGRect)previousTimeStyleBounds
{
  x = self->_previousTimeStyleBounds.origin.x;
  y = self->_previousTimeStyleBounds.origin.y;
  width = self->_previousTimeStyleBounds.size.width;
  height = self->_previousTimeStyleBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

void __47__CSProminentDisplayViewController_viewDidLoad__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  [*(a1 + 992) value];
  [*(a1 + 1000) value];
  OUTLINED_FUNCTION_0();
  v6 = v4;
  _os_log_debug_impl(&dword_1A2D63000, a2, OS_LOG_TYPE_DEBUG, "model values: time.position.x=%f  time.position.y=%f", v5, 0x16u);
}

void __47__CSProminentDisplayViewController_viewDidLoad__block_invoke_24_cold_1(uint64_t a1, NSObject *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  [*(a1 + 992) presentationValue];
  [*(a1 + 1000) presentationValue];
  v5 = v4;
  [*(a1 + 992) velocity];
  v7 = v6;
  [*(a1 + 1000) velocity];
  OUTLINED_FUNCTION_0();
  v11 = v5;
  v12 = v8;
  v13 = v7;
  v14 = v8;
  v15 = v9;
  _os_log_debug_impl(&dword_1A2D63000, a2, OS_LOG_TYPE_DEBUG, "presentation values: time.position.x=%f  time.position.y=%f  time.position.x.velocity=%f  time.position.y.velocity=%f", v10, 0x2Au);
}

- (void)_allowsGlassAppearance
{
  v3 = *MEMORY[0x1E69E9840];
  v2[0] = 67109120;
  v2[1] = a1 & 1;
  _os_log_debug_impl(&dword_1A2D63000, a2, OS_LOG_TYPE_DEBUG, "CSProminentDisplayViewController disallowGlassTime: %{BOOL}u", v2, 8u);
}

@end