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
- (CSProminentDisplayViewController)initWithElements:(unint64_t)elements baseFont:(id)font date:(id)date textColor:(id)color;
- (UIView)backgroundView;
- (double)maximumAdaptiveTimeTextHeight;
- (double)minimumAdaptiveTimeTextHeight;
- (double)relativeAdaptiveTimeTextWidth;
- (double)timeChangeAnimationDuration;
- (id)_customSubtitleGlyphWithName:(id)name;
- (id)_dimmingColorFilter;
- (id)_dimmingPillLayerForBounds:(CGRect)bounds;
- (id)_effectiveTitleTextColorForStyle:(id)style;
- (id)_fallbackDate;
- (id)_shadowPillPathForBounds:(CGRect)bounds;
- (id)beginInteractiveTransitionToBaseFont:(id)font textColor:(id)color;
- (id)beginInteractiveTransitionToBaseFont:(id)font vibrancyConfiguration:(id)configuration cachingVibrancyTransitionProvider:(id)provider;
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
- (void)_setElements:(unint64_t)elements suppressed:(BOOL)suppressed forReason:(id)reason;
- (void)_setTransientSubtitle:(id)subtitle timeout:(double)timeout;
- (void)_updateContentForSensitiveUI;
- (void)_updateElements;
- (void)_updateStyleBoundingRects;
- (void)_updateViewColors;
- (void)clearTransientSubtitleForPriority:(int64_t)priority;
- (void)dealloc;
- (void)interactiveTransition:(id)transition didFinishSuccessfully:(BOOL)successfully;
- (void)interactiveTransition:(id)transition didUpdate:(double)update;
- (void)loadView;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)setAdaptiveTimeTextHeight:(double)height;
- (void)setAdaptsTimeTextHeight:(BOOL)height;
- (void)setAlternateCalendarIdentifier:(id)identifier locale:(id)locale;
- (void)setAlternativeVibrancyEffectLUTIdentifier:(id)identifier alternativeVibrancyEffectLUTBundleURL:(id)l;
- (void)setAlternativeVibrancyEffectLUTIdentifier:(id)identifier alternativeVibrancyEffectLUTBundleURL:(id)l luminanceReduced:(BOOL)reduced;
- (void)setAnimatesTimeChanges:(BOOL)changes;
- (void)setBaseFont:(id)font;
- (void)setComplicationContainerViewController:(id)controller;
- (void)setComplicationSidebarViewController:(id)controller;
- (void)setContentAlpha:(double)alpha forElements:(unint64_t)elements;
- (void)setCustomSubtitleWithText:(id)text glyphName:(id)name;
- (void)setDateTimeAlignment:(int64_t)alignment;
- (void)setDisplayDate:(id)date;
- (void)setElements:(unint64_t)elements;
- (void)setElementsWithBackingDim:(unint64_t)dim;
- (void)setGroupName:(id)name;
- (void)setHasSidebarContents:(BOOL)contents;
- (void)setNumberingSystem:(id)system;
- (void)setShouldApplyVibrancyToComplications:(BOOL)complications;
- (void)setShowsCompactTime:(BOOL)time animated:(BOOL)animated;
- (void)setSubtitleComplicationViewController:(id)controller;
- (void)setTextColor:(id)color;
- (void)setTimeGlassInterfaceStyle:(int64_t)style;
- (void)setTitleContentStyle:(id)style;
- (void)setTransientSubtitleText:(id)text priority:(int64_t)priority timeout:(double)timeout;
- (void)setUsesEditingLayout:(BOOL)layout;
- (void)setUsesLandscapeTimeFontVariant:(BOOL)variant;
- (void)setUsesLightTimeFontVariant:(BOOL)variant;
- (void)setUsesLightTimeFontVariant:(BOOL)variant response:(double)response;
- (void)setVibrancyContentType:(int64_t)type;
- (void)updateCustomSubtitleWithText:(id)text;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation CSProminentDisplayViewController

- (double)maximumAdaptiveTimeTextHeight
{
  _displayView = [(CSProminentDisplayViewController *)self _displayView];
  timeView = [_displayView timeView];
  [timeView maximumAdaptiveTextHeight];
  v5 = v4;

  return v5;
}

- (double)minimumAdaptiveTimeTextHeight
{
  _displayView = [(CSProminentDisplayViewController *)self _displayView];
  timeView = [_displayView timeView];
  [timeView minimumAdaptiveTextHeight];
  v5 = v4;

  return v5;
}

- (UIView)backgroundView
{
  _displayViewIfLoaded = [(CSProminentDisplayViewController *)self _displayViewIfLoaded];
  backgroundView = [_displayViewIfLoaded backgroundView];

  return backgroundView;
}

- (id)transientSubtitleText
{
  _displayView = [(CSProminentDisplayViewController *)self _displayView];
  transientSubtitleView = [_displayView transientSubtitleView];
  textLabel = [transientSubtitleView textLabel];
  text = [textLabel text];

  return text;
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

- (CSProminentDisplayViewController)initWithElements:(unint64_t)elements baseFont:(id)font date:(id)date textColor:(id)color
{
  fontCopy = font;
  dateCopy = date;
  colorCopy = color;
  v22.receiver = self;
  v22.super_class = CSProminentDisplayViewController;
  v14 = [(CSProminentDisplayViewController *)&v22 init];
  v15 = v14;
  if (v14)
  {
    v14->_elements = elements;
    v14->_elementsWithBackingDim = 0;
    if (dateCopy)
    {
      _fallbackDate = dateCopy;
    }

    else
    {
      _fallbackDate = [(CSProminentDisplayViewController *)v14 _fallbackDate];
    }

    displayDate = v15->_displayDate;
    v15->_displayDate = _fallbackDate;

    v15->_effectType = 0;
    objc_storeStrong(&v15->_textColor, color);
    objc_storeStrong(&v15->_baseFont, font);
    _dimmingColorFilter = [(CSProminentDisplayViewController *)v15 _dimmingColorFilter];
    dimmingFilter = v15->_dimmingFilter;
    v15->_dimmingFilter = _dimmingColorFilter;

    standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
    [standardUserDefaults addObserver:v15 forKeyPath:@"SBSensitiveUIEnabled" options:1 context:0];

    [(CSProminentDisplayViewController *)v15 _updateContentForSensitiveUI];
  }

  return v15;
}

- (void)dealloc
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  [standardUserDefaults removeObserver:self forKeyPath:@"SBSensitiveUIEnabled"];

  v4.receiver = self;
  v4.super_class = CSProminentDisplayViewController;
  [(CSProminentDisplayViewController *)&v4 dealloc];
}

- (void)loadView
{
  v14[1] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc([objc_opt_class() viewClass]);
  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen bounds];
  v5 = [v3 initWithFrame:?];

  layer = [v5 layer];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  [layer setName:v8];

  [(CSProminentDisplayViewController *)self setView:v5];
  _displayView = [(CSProminentDisplayViewController *)self _displayView];
  [_displayView setShouldApplyVibrancyToComplications:{-[CSProminentDisplayViewController shouldApplyVibrancyToComplications](self, "shouldApplyVibrancyToComplications")}];
  vibrancyEffectView = [_displayView vibrancyEffectView];
  [vibrancyEffectView setContentType:{-[CSProminentDisplayViewController vibrancyContentType](self, "vibrancyContentType")}];

  subtitleVibrancyEffectView = [_displayView subtitleVibrancyEffectView];
  [subtitleVibrancyEffectView setContentType:{-[CSProminentDisplayViewController vibrancyContentType](self, "vibrancyContentType")}];

  [_displayView setContentAlpha:-1 forElements:1.0];
  [(CSProminentDisplayViewController *)self _updateElements];
  [(CSProminentDisplayViewController *)self _updateViewColors];
  v14[0] = objc_opt_class();
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  v13 = [(CSProminentDisplayViewController *)self registerForTraitChanges:v12 withHandler:&__block_literal_global_13_0];
}

- (void)setShouldApplyVibrancyToComplications:(BOOL)complications
{
  complicationsCopy = complications;
  self->_shouldApplyVibrancyToComplications = complications;
  _displayViewIfLoaded = [(CSProminentDisplayViewController *)self _displayViewIfLoaded];
  [_displayViewIfLoaded setShouldApplyVibrancyToComplications:complicationsCopy];

  if (!complicationsCopy)
  {
    complicationRenderer = self->_complicationRenderer;
    self->_complicationRenderer = 0;
  }
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  coordinatorCopy = coordinator;
  v12.receiver = self;
  v12.super_class = CSProminentDisplayViewController;
  [(CSProminentDisplayViewController *)&v12 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  view = [(CSProminentDisplayViewController *)self view];
  window = [view window];

  _toWindowOrientation = [window _toWindowOrientation];
  if (_toWindowOrientation != [window _fromWindowOrientation])
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __87__CSProminentDisplayViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
    v11[3] = &unk_1E76BA110;
    v11[4] = self;
    v11[5] = _toWindowOrientation;
    [coordinatorCopy animateAlongsideTransition:v11 completion:0];
  }
}

void __87__CSProminentDisplayViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _displayView];
  [v2 updateContainerOrientationForBackgroundViews:*(a1 + 40)];
}

- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear
{
  v9.receiver = self;
  v9.super_class = CSProminentDisplayViewController;
  [(CSProminentDisplayViewController *)&v9 viewDidMoveToWindow:window shouldAppearOrDisappear:disappear];
  view = [(CSProminentDisplayViewController *)self view];
  window = [view window];
  _windowInterfaceOrientation = [window _windowInterfaceOrientation];

  _displayView = [(CSProminentDisplayViewController *)self _displayView];
  [_displayView updateContainerOrientationForBackgroundViews:_windowInterfaceOrientation];
}

- (void)viewDidLoad
{
  v26[2] = *MEMORY[0x1E69E9840];
  v25.receiver = self;
  v25.super_class = CSProminentDisplayViewController;
  [(CSProminentDisplayViewController *)&v25 viewDidLoad];
  _displayView = [(CSProminentDisplayViewController *)self _displayView];
  _screen = [_displayView _screen];
  v5 = _screen;
  if (_screen)
  {
    mainScreen = _screen;
  }

  else
  {
    mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  }

  v7 = mainScreen;

  [v7 bounds];
  [_displayView setFrame:?];
  v8 = objc_alloc_init(MEMORY[0x1E69DD268]);
  timePositionXProperty = self->_timePositionXProperty;
  self->_timePositionXProperty = v8;

  v10 = objc_alloc_init(MEMORY[0x1E69DD268]);
  timePositionYProperty = self->_timePositionYProperty;
  self->_timePositionYProperty = v10;

  objc_initWeak(&location, self);
  _displayView2 = [(CSProminentDisplayViewController *)self _displayView];
  timeView = [_displayView2 timeView];
  objc_initWeak(&from, timeView);

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

- (void)viewWillAppear:(BOOL)appear
{
  v6.receiver = self;
  v6.super_class = CSProminentDisplayViewController;
  [(CSProminentDisplayViewController *)&v6 viewWillAppear:appear];
  _displayView = [(CSProminentDisplayViewController *)self _displayView];
  timeView = [_displayView timeView];
  [timeView setVisible:1];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v6.receiver = self;
  v6.super_class = CSProminentDisplayViewController;
  [(CSProminentDisplayViewController *)&v6 viewDidDisappear:disappear];
  _displayView = [(CSProminentDisplayViewController *)self _displayView];
  timeView = [_displayView timeView];
  [timeView setVisible:0];
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
    _displayView = [(CSProminentDisplayViewController *)self _displayView];
    _displayView2 = [(CSProminentDisplayViewController *)self _displayView];
    subtitleView = [_displayView2 subtitleView];
    v5 = objc_opt_class();
    v6 = subtitleView;
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

    timeView = [v8 timeView];
    timeView2 = [_displayView timeView];
    [timeView bounds];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    superview = [timeView2 superview];
    [timeView convertRect:superview toView:{v12, v14, v16, v18}];
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
    [timeView2 setCenter:{MidX, CGRectGetMinY(v48)}];
    contentView = [v8 contentView];

    [contentView bounds];
    [contentView convertRect:_displayView toView:?];
    [(CSProminentDisplayViewController *)self _dimmingLayerOutsetFrameGivenBaseFrame:?];
    v31 = v30;
    v33 = v32;
    v35 = v34;
    v37 = v36;
    subtitleDimmingView = [_displayView subtitleDimmingView];
    [subtitleDimmingView frame];
    v52.origin.x = v31;
    v52.origin.y = v33;
    v52.size.width = v35;
    v52.size.height = v37;
    v39 = CGRectEqualToRect(v49, v52);

    if (!v39)
    {
      subtitleDimmingView2 = [_displayView subtitleDimmingView];
      [subtitleDimmingView2 setFrame:{v31, v33, v35, v37}];

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
      height = [(CSProminentDisplayViewController *)self _shadowPillPathForBounds:0.0, 0.0, Width, Height];
      -[CALayer setShadowPath:](subtitleDimmingLayer, "setShadowPath:", [height CGPath]);

      [(CALayer *)self->_subtitleDimmingLayer setFrame:0.0, 0.0, Width, Height];
    }
  }
}

- (CGRect)_timeStyleBounds
{
  _displayView = [(CSProminentDisplayViewController *)self _displayView];
  timeView = [_displayView timeView];
  textLabel = [timeView textLabel];
  [textLabel frame];
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

- (void)setAlternateCalendarIdentifier:(id)identifier locale:(id)locale
{
  identifierCopy = identifier;
  localeCopy = locale;
  objc_storeStrong(&self->_alternateCalendarIdentifier, identifier);
  objc_storeStrong(&self->_alternateCalendarLocale, locale);
  _displayView = [(CSProminentDisplayViewController *)self _displayView];
  subtitleView = [_displayView subtitleView];

  _displayView2 = [(CSProminentDisplayViewController *)self _displayView];
  subtitleView2 = [_displayView2 subtitleView];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    [subtitleView setAlternateCalendarIdentifier:identifierCopy locale:localeCopy];
  }
}

- (void)setContentAlpha:(double)alpha forElements:(unint64_t)elements
{
  _displayView = [(CSProminentDisplayViewController *)self _displayView];
  [_displayView setContentAlpha:elements forElements:alpha];
}

- (id)beginInteractiveTransitionToBaseFont:(id)font textColor:(id)color
{
  fontCopy = font;
  colorCopy = color;
  if (!colorCopy)
  {
    colorCopy = [MEMORY[0x1E69DC888] whiteColor];
  }

  _displayView = [(CSProminentDisplayViewController *)self _displayView];
  timeVibrancyEffectView = [_displayView timeVibrancyEffectView];
  configuration = [timeVibrancyEffectView configuration];

  v11 = objc_alloc(MEMORY[0x1E698E810]);
  effectType = [configuration effectType];
  backgroundType = [configuration backgroundType];
  alternativeVibrancyEffectLUT = [(CSProminentDisplayViewController *)self alternativeVibrancyEffectLUT];
  v15 = [v11 initWithEffectType:effectType backgroundType:backgroundType color:colorCopy groupName:0 blendConfiguration:0 blendAmount:alternativeVibrancyEffectLUT alternativeVibrancyEffectLUT:0.0];

  v16 = [(CSProminentDisplayViewController *)self beginInteractiveTransitionToBaseFont:fontCopy vibrancyConfiguration:v15 cachingVibrancyTransitionProvider:0];

  return v16;
}

- (id)beginInteractiveTransitionToBaseFont:(id)font vibrancyConfiguration:(id)configuration cachingVibrancyTransitionProvider:(id)provider
{
  fontCopy = font;
  configurationCopy = configuration;
  providerCopy = provider;
  if (!fontCopy)
  {
    fontCopy = [MEMORY[0x1E69DB878] systemFontOfSize:0.0];
  }

  _displayView = [(CSProminentDisplayViewController *)self _displayView];
  timeVibrancyEffectView = [_displayView timeVibrancyEffectView];
  configuration = [timeVibrancyEffectView configuration];

  v14 = [[CSProminentDisplayInteractiveTransition alloc] initWithViewController:self baseFont:fontCopy fromVibrancyConfiguration:configuration toVibrancyConfiguration:configurationCopy cachingVibrancyTransitionProvider:providerCopy];
  [(CSProminentDisplayViewController *)self setCurrentTransition:v14];

  return v14;
}

- (BOOL)hasSidebarContents
{
  _displayView = [(CSProminentDisplayViewController *)self _displayView];
  timeView = [_displayView timeView];
  contextHasSidebarContents = [timeView contextHasSidebarContents];

  return contextHasSidebarContents;
}

- (void)setHasSidebarContents:(BOOL)contents
{
  contentsCopy = contents;
  _displayView = [(CSProminentDisplayViewController *)self _displayView];
  timeView = [_displayView timeView];
  [timeView setContextHasSidebarContents:contentsCopy];
}

- (void)setTimeGlassInterfaceStyle:(int64_t)style
{
  if (self->_timeGlassInterfaceStyle != style)
  {
    self->_timeGlassInterfaceStyle = style;
    _displayView = [(CSProminentDisplayViewController *)self _displayView];
    timeView = [_displayView timeView];
    [timeView setGlassInterfaceStyle:self->_timeGlassInterfaceStyle];
  }
}

- (BOOL)usesLightTimeFontVariant
{
  _displayView = [(CSProminentDisplayViewController *)self _displayView];
  timeView = [_displayView timeView];
  usesLightTimeFontVariant = [timeView usesLightTimeFontVariant];

  return usesLightTimeFontVariant;
}

- (void)setUsesLightTimeFontVariant:(BOOL)variant
{
  variantCopy = variant;
  _displayView = [(CSProminentDisplayViewController *)self _displayView];
  timeView = [_displayView timeView];
  [timeView setUsesLightTimeFontVariant:variantCopy];
}

- (void)setUsesLightTimeFontVariant:(BOOL)variant response:(double)response
{
  variantCopy = variant;
  _displayView = [(CSProminentDisplayViewController *)self _displayView];
  timeView = [_displayView timeView];
  [timeView setUsesLightTimeFontVariant:variantCopy response:response];
}

- (BOOL)usesLandscapeTimeFontVariant
{
  _displayView = [(CSProminentDisplayViewController *)self _displayView];
  timeView = [_displayView timeView];
  usesLandscapeTimeFontVariant = [timeView usesLandscapeTimeFontVariant];

  return usesLandscapeTimeFontVariant;
}

- (void)setUsesLandscapeTimeFontVariant:(BOOL)variant
{
  variantCopy = variant;
  _displayView = [(CSProminentDisplayViewController *)self _displayView];
  timeView = [_displayView timeView];
  [timeView setUsesLandscapeTimeFontVariant:variantCopy];
}

- (BOOL)animatesTimeChanges
{
  _displayView = [(CSProminentDisplayViewController *)self _displayView];
  timeView = [_displayView timeView];
  animatesTimeChanges = [timeView animatesTimeChanges];

  return animatesTimeChanges;
}

- (void)setAnimatesTimeChanges:(BOOL)changes
{
  changesCopy = changes;
  v9 = *MEMORY[0x1E69E9840];
  v5 = CSLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8[0] = 67109120;
    v8[1] = changesCopy;
    _os_log_impl(&dword_1A2D63000, v5, OS_LOG_TYPE_DEFAULT, "[CSProminentDisplayViewController] setAnimatesTimeChanges: %{BOOL}u", v8, 8u);
  }

  _displayView = [(CSProminentDisplayViewController *)self _displayView];
  timeView = [_displayView timeView];
  [timeView setAnimatesTimeChanges:changesCopy];
}

- (double)timeChangeAnimationDuration
{
  if (![(CSProminentDisplayViewController *)self animatesTimeChanges])
  {
    return 0.0;
  }

  _displayView = [(CSProminentDisplayViewController *)self _displayView];
  timeView = [_displayView timeView];
  [timeView timeChangeAnimationDuration];
  v6 = v5;

  return v6;
}

- (void)setShowsCompactTime:(BOOL)time animated:(BOOL)animated
{
  if (self->_showsCompactTime != time)
  {
    animatedCopy = animated;
    timeCopy = time;
    self->_showsCompactTime = time;
    _displayView = [(CSProminentDisplayViewController *)self _displayView];
    [_displayView setHidesTimeViewForTransientSubtitle:self->_showsCompactTime];

    _displayView2 = [(CSProminentDisplayViewController *)self _displayView];
    subtitleView = [_displayView2 subtitleView];
    v10 = objc_opt_class();
    v11 = subtitleView;
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
    mEMORY[0x1E698E730] = [MEMORY[0x1E698E730] sharedInstance];
    deviceClass = [mEMORY[0x1E698E730] deviceClass];

    if (deviceClass == 2)
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
    timeView = [v13 timeView];
    [v13 setShowsTime:self->_showsCompactTime animated:animatedCopy];
    if (!timeView)
    {
      timeView = [v13 timeView];
    }

    _displayView3 = [(CSProminentDisplayViewController *)self _displayView];
    timeView2 = [_displayView3 timeView];

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
    v21 = timeView2;
    v107 = v21;
    selfCopy = self;
    v110 = &v112;
    v111 = timeCopy;
    v70 = timeView;
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
    v94 = timeCopy;
    v28 = v25;
    v92 = v28;
    selfCopy2 = self;
    [v26 _animateUsingSpringWithDampingRatio:0 response:v90 tracking:v24 dampingRatioSmoothing:1.0 responseSmoothing:0.1 targetSmoothing:0.0 projectionDeceleration:0.0 animations:0.0 completion:0.0];
    v29 = MEMORY[0x1E69DD250];
    if (timeCopy)
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
    v89 = timeCopy;
    [v29 _animateUsingSpringWithDampingRatio:0 response:v85 tracking:v24 dampingRatioSmoothing:1.0 responseSmoothing:v30 targetSmoothing:0.0 projectionDeceleration:0.0 animations:0.0 completion:0.0];
    v69 = v30;
    v68 = v32;
    [v70 bounds];
    v35 = v34;
    v37 = v36;
    v39 = v38;
    v41 = v40;
    superview = [v33 superview];
    [v70 convertRect:superview toView:{v35, v37, v39, v41}];
    v44 = v43;
    v46 = v45;
    v48 = v47;
    v67 = v49;

    view = [(CSProminentDisplayViewController *)self view];
    v51 = v113;
    superview2 = [v33 superview];
    [view convertRect:superview2 toView:{v51[4], v51[5], v51[6], v51[7]}];
    v54 = v53;
    v56 = v55;
    v58 = v57;
    v60 = v59;

    if (timeCopy)
    {
      v61 = 0.3;
    }

    else
    {
      v61 = 0.55;
    }

    if (timeCopy)
    {
      v60 = v44;
    }

    else
    {
      v46 = v58;
    }

    if (timeCopy)
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
    selfCopy3 = self;
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
    selfCopy4 = self;
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
  _displayView = [(CSProminentDisplayViewController *)self _displayView];
  timeView = [_displayView timeView];
  supportsAdaptiveTextHeight = [timeView supportsAdaptiveTextHeight];

  return supportsAdaptiveTextHeight;
}

- (BOOL)adaptsTimeTextHeight
{
  _displayView = [(CSProminentDisplayViewController *)self _displayView];
  timeView = [_displayView timeView];
  adaptsTextHeight = [timeView adaptsTextHeight];

  return adaptsTextHeight;
}

- (void)setAdaptsTimeTextHeight:(BOOL)height
{
  heightCopy = height;
  _displayView = [(CSProminentDisplayViewController *)self _displayView];
  timeView = [_displayView timeView];
  [timeView setAdaptsTextHeight:heightCopy];
}

- (void)setAdaptiveTimeTextHeight:(double)height
{
  self->_adaptiveTimeTextHeight = height;
  if (!self->_showsCompactTime && !self->_compactTimeTransitioning)
  {
    _displayView = [(CSProminentDisplayViewController *)self _displayView];
    timeView = [_displayView timeView];
    [timeView setAdaptiveTextHeight:height];

    view = [(CSProminentDisplayViewController *)self view];
    [view setNeedsLayout];
  }

  if (self->_compactTimeTransitioning)
  {
    _displayView2 = [(CSProminentDisplayViewController *)self _displayView];
    timeView2 = [_displayView2 timeView];

    v10 = MEMORY[0x1E69DD250];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __62__CSProminentDisplayViewController_setAdaptiveTimeTextHeight___block_invoke;
    v12[3] = &unk_1E76BA200;
    v12[4] = self;
    v13 = timeView2;
    v11 = timeView2;
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
  _displayView = [(CSProminentDisplayViewController *)self _displayView];
  timeView = [_displayView timeView];
  [timeView relativeAdaptiveTextWidth];
  v5 = v4;

  return v5;
}

- (void)setDateTimeAlignment:(int64_t)alignment
{
  _displayView = [(CSProminentDisplayViewController *)self _displayView];
  timeView = [_displayView timeView];
  textLabel = [timeView textLabel];
  [textLabel setTextAlignment:alignment];

  _displayView2 = [(CSProminentDisplayViewController *)self _displayView];
  subtitleView = [_displayView2 subtitleView];
  textLabel2 = [subtitleView textLabel];
  [textLabel2 setTextAlignment:alignment];
}

- (BOOL)usesEditingLayout
{
  _displayView = [(CSProminentDisplayViewController *)self _displayView];
  usesEditingLayout = [_displayView usesEditingLayout];

  return usesEditingLayout;
}

- (void)setUsesEditingLayout:(BOOL)layout
{
  layoutCopy = layout;
  _displayView = [(CSProminentDisplayViewController *)self _displayView];
  [_displayView setUsesEditingLayout:layoutCopy];
}

- (void)_setTransientSubtitle:(id)subtitle timeout:(double)timeout
{
  subtitleCopy = subtitle;
  text = [subtitleCopy text];
  v8 = text;
  if (subtitleCopy && [text length])
  {
    view = [(CSProminentDisplayViewController *)self view];
    window = [view window];
    +[CSProminentLayoutController fontSizeForElementType:isLandscapeVariant:](CSProminentLayoutController, "fontSizeForElementType:isLandscapeVariant:", 2, ([window interfaceOrientation] - 3) < 2);
    v12 = v11;

    [CSProminentLayoutController fontWeightForElementType:2];
    _displayView2 = [MEMORY[0x1E69DB878] systemFontOfSize:v12 weight:v13];
    titleContentStyle = [(CSProminentDisplayViewController *)self titleContentStyle];
    v16 = [(CSProminentDisplayViewController *)self _effectiveSubtitleTextColorForStyle:titleContentStyle];

    v17 = [CSProminentTextElementView alloc];
    date = [MEMORY[0x1E695DF00] date];
    v19 = [(CSProminentTextElementView *)v17 initWithDate:date font:_displayView2 textColor:v16];

    textLabel = [(CSProminentTextElementView *)v19 textLabel];
    if (objc_opt_respondsToSelector())
    {
      [textLabel setAdjustsFontSizeToFitWidth:1];
    }

    [textLabel setMinimumScaleFactor:0.25];
    [(CSProminentTextElementView *)v19 setOverrideString:v8];
    v21 = [MEMORY[0x1E695DF00] now];
    [subtitleCopy setDisplayDate:v21];

    _displayView = [(CSProminentDisplayViewController *)self _displayView];
    [_displayView setTransientSubtitleView:v19];
  }

  else
  {
    _displayView2 = [(CSProminentDisplayViewController *)self _displayView];
    [_displayView2 setTransientSubtitleView:0];
  }

  objc_storeStrong(&self->_activeTransientSubtitle, subtitle);
  activeTransientSubtitleTimer = self->_activeTransientSubtitleTimer;
  if (activeTransientSubtitleTimer)
  {
    [(NSTimer *)activeTransientSubtitleTimer invalidate];
    v24 = self->_activeTransientSubtitleTimer;
    self->_activeTransientSubtitleTimer = 0;
  }

  if (subtitleCopy)
  {
    objc_initWeak(&location, self);
    v25 = MEMORY[0x1E695DFF0];
    [subtitleCopy displayDuration];
    v27 = v26;
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __66__CSProminentDisplayViewController__setTransientSubtitle_timeout___block_invoke;
    v31[3] = &unk_1E76BA228;
    objc_copyWeak(&v33, &location);
    v32 = subtitleCopy;
    v28 = [v25 timerWithTimeInterval:0 repeats:v31 block:v27];
    v29 = self->_activeTransientSubtitleTimer;
    self->_activeTransientSubtitleTimer = v28;

    mainRunLoop = [MEMORY[0x1E695DFD0] mainRunLoop];
    [mainRunLoop addTimer:self->_activeTransientSubtitleTimer forMode:*MEMORY[0x1E695DA28]];

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

- (void)setTransientSubtitleText:(id)text priority:(int64_t)priority timeout:(double)timeout
{
  textCopy = text;
  v14 = textCopy;
  if (self->_requestedTransientSubtitles)
  {
    if (textCopy)
    {
LABEL_3:
      v9 = [[CSProminentDisplayTransientSubtitle alloc] initWithText:v14 priority:priority displayDuration:timeout];
      goto LABEL_6;
    }
  }

  else
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    requestedTransientSubtitles = self->_requestedTransientSubtitles;
    self->_requestedTransientSubtitles = dictionary;

    if (v14)
    {
      goto LABEL_3;
    }
  }

  v9 = 0;
LABEL_6:
  v12 = self->_requestedTransientSubtitles;
  v13 = [MEMORY[0x1E696AD98] numberWithInteger:priority];
  [(NSMutableDictionary *)v12 setObject:v9 forKeyedSubscript:v13];

  [(CSProminentDisplayViewController *)self _reevaluateTransientSubtitle];
}

- (void)clearTransientSubtitleForPriority:(int64_t)priority
{
  requestedTransientSubtitles = self->_requestedTransientSubtitles;
  if (requestedTransientSubtitles)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithInteger:priority];
    [(NSMutableDictionary *)requestedTransientSubtitles setObject:0 forKeyedSubscript:v5];

    [(CSProminentDisplayViewController *)self _reevaluateTransientSubtitle];
  }
}

- (void)_reevaluateTransientSubtitle
{
  v23 = *MEMORY[0x1E69E9840];
  allKeys = [(NSMutableDictionary *)self->_requestedTransientSubtitles allKeys];
  v4 = [allKeys sortedArrayUsingComparator:&__block_literal_global_58];

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
    priority = [v11 priority];
    if (priority > [(CSProminentDisplayTransientSubtitle *)self->_activeTransientSubtitle priority])
    {
      [(CSProminentDisplayTransientSubtitle *)self->_activeTransientSubtitle displayDuration];
      v14 = v13;
      displayDate = [(CSProminentDisplayTransientSubtitle *)self->_activeTransientSubtitle displayDate];
      [displayDate timeIntervalSinceNow];
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

- (void)setDisplayDate:(id)date
{
  dateCopy = date;
  if ((BSEqualObjects() & 1) == 0)
  {
    _fallbackDate = dateCopy;
    if (!dateCopy)
    {
      _fallbackDate = [(CSProminentDisplayViewController *)self _fallbackDate];
    }

    dateCopy = _fallbackDate;
    objc_storeStrong(&self->_displayDate, _fallbackDate);
    _displayView = [(CSProminentDisplayViewController *)self _displayView];
    [_displayView setDisplayDate:dateCopy];
  }
}

- (BOOL)isFourDigitTime
{
  _displayView = [(CSProminentDisplayViewController *)self _displayView];
  timeView = [_displayView timeView];
  fourDigitTime = [timeView fourDigitTime];

  return fourDigitTime;
}

- (void)setCustomSubtitleWithText:(id)text glyphName:(id)name
{
  textCopy = text;
  nameCopy = name;
  if ([textCopy length])
  {
    view = [(CSProminentDisplayViewController *)self view];
    window = [view window];
    +[CSProminentLayoutController fontSizeForElementType:isLandscapeVariant:](CSProminentLayoutController, "fontSizeForElementType:isLandscapeVariant:", 2, ([window interfaceOrientation] - 3) < 2);
    v10 = v9;

    _displayView2 = [MEMORY[0x1E69DB878] systemFontOfSize:v10];
    titleContentStyle = [(CSProminentDisplayViewController *)self titleContentStyle];
    v13 = [CSProminentLabeledElementView alloc];
    date = [MEMORY[0x1E695DF00] date];
    v15 = [(CSProminentDisplayViewController *)self _effectiveSubtitleTextColorForStyle:titleContentStyle];
    v16 = [(CSProminentDisplayViewController *)self _customSubtitleGlyphWithName:nameCopy];
    v17 = [(CSProminentLabeledElementView *)v13 initWithDate:date font:_displayView2 textColor:v15 glyph:v16];

    [(CSProminentLabeledElementView *)v17 setAccessibilityIdentifier:@"cs-timer-countdown-view"];
    [(CSProminentLabeledElementView *)v17 setOverrideString:textCopy];
    _displayView = [(CSProminentDisplayViewController *)self _displayView];
    [_displayView setCustomSubtitleView:v17];
  }

  else
  {
    _displayView2 = [(CSProminentDisplayViewController *)self _displayView];
    [_displayView2 setCustomSubtitleView:0];
  }
}

- (void)updateCustomSubtitleWithText:(id)text
{
  textCopy = text;
  _displayView = [(CSProminentDisplayViewController *)self _displayView];
  customSubtitleView = [_displayView customSubtitleView];
  [customSubtitleView setOverrideString:textCopy];
}

- (id)_customSubtitleGlyphWithName:(id)name
{
  nameCopy = name;
  view = [(CSProminentDisplayViewController *)self view];
  window = [view window];
  +[CSProminentLayoutController fontSizeForElementType:isLandscapeVariant:](CSProminentLayoutController, "fontSizeForElementType:isLandscapeVariant:", 2, ([window interfaceOrientation] - 3) < 2);
  v8 = v7;

  v9 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:4 weight:1 scale:v8];
  v10 = [MEMORY[0x1E69DCAB8] systemImageNamed:nameCopy withConfiguration:v9];

  v11 = [v10 imageWithRenderingMode:2];

  return v11;
}

- (id)_fallbackDate
{
  v2 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:1168335660.0];
  systemTimeZone = [MEMORY[0x1E695DFE8] systemTimeZone];
  v4 = 1168335660.0 - [systemTimeZone secondsFromGMTForDate:v2];

  v5 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:v4];

  return v5;
}

- (void)setBaseFont:(id)font
{
  objc_storeStrong(&self->_baseFont, font);
  fontCopy = font;
  _displayView = [(CSProminentDisplayViewController *)self _displayView];
  timeView = [_displayView timeView];
  [timeView setBaseFont:fontCopy];
}

- (void)setNumberingSystem:(id)system
{
  systemCopy = system;
  v5 = [systemCopy copy];
  numberingSystem = self->_numberingSystem;
  self->_numberingSystem = v5;

  _displayView = [(CSProminentDisplayViewController *)self _displayView];
  v7 = CSTimeNumberingSystemStringToType(systemCopy);

  [_displayView setNumberingSystem:v7];
}

- (void)setSubtitleComplicationViewController:(id)controller
{
  controllerCopy = controller;
  subtitleComplicationViewController = self->_subtitleComplicationViewController;
  if (subtitleComplicationViewController != controllerCopy)
  {
    v8 = controllerCopy;
    if (subtitleComplicationViewController)
    {
      [(UIViewController *)subtitleComplicationViewController willMoveToParentViewController:0];
      _displayView = [(CSProminentDisplayViewController *)self _displayView];
      [_displayView setSubtitleComplicationView:0];

      [(UIViewController *)self->_subtitleComplicationViewController removeFromParentViewController];
    }

    objc_storeStrong(&self->_subtitleComplicationViewController, controller);
    subtitleComplicationViewController = [(CSProminentDisplayViewController *)self _updateElements];
    controllerCopy = v8;
  }

  MEMORY[0x1EEE66BB8](subtitleComplicationViewController, controllerCopy);
}

- (void)setComplicationContainerViewController:(id)controller
{
  controllerCopy = controller;
  complicationContainerViewController = self->_complicationContainerViewController;
  if (complicationContainerViewController != controllerCopy)
  {
    v9 = controllerCopy;
    if (complicationContainerViewController)
    {
      [(UIViewController *)complicationContainerViewController willMoveToParentViewController:0];
      _displayView = [(CSProminentDisplayViewController *)self _displayView];
      [_displayView setComplicationRowView:0];

      _displayView2 = [(CSProminentDisplayViewController *)self _displayView];
      [_displayView2 setComplicationBottomRowView:0];

      [(UIViewController *)self->_complicationContainerViewController removeFromParentViewController];
    }

    objc_storeStrong(&self->_complicationContainerViewController, controller);
    complicationContainerViewController = [(CSProminentDisplayViewController *)self _updateElements];
    controllerCopy = v9;
  }

  MEMORY[0x1EEE66BB8](complicationContainerViewController, controllerCopy);
}

- (void)setComplicationSidebarViewController:(id)controller
{
  controllerCopy = controller;
  complicationSidebarViewController = self->_complicationSidebarViewController;
  if (complicationSidebarViewController != controllerCopy)
  {
    v8 = controllerCopy;
    if (complicationSidebarViewController)
    {
      [(UIViewController *)complicationSidebarViewController willMoveToParentViewController:0];
      _displayView = [(CSProminentDisplayViewController *)self _displayView];
      [_displayView setComplicationSidebarView:0];

      [(UIViewController *)self->_complicationSidebarViewController removeFromParentViewController];
    }

    objc_storeStrong(&self->_complicationSidebarViewController, controller);
    complicationSidebarViewController = [(CSProminentDisplayViewController *)self _updateElements];
    controllerCopy = v8;
  }

  MEMORY[0x1EEE66BB8](complicationSidebarViewController, controllerCopy);
}

- (void)setTextColor:(id)color
{
  objc_storeStrong(&self->_textColor, color);

  [(CSProminentDisplayViewController *)self _updateViewColors];
}

- (void)setGroupName:(id)name
{
  v4 = [name copy];
  groupName = self->_groupName;
  self->_groupName = v4;

  [(CSProminentDisplayViewController *)self _updateViewColors];
}

- (void)setAlternativeVibrancyEffectLUTIdentifier:(id)identifier alternativeVibrancyEffectLUTBundleURL:(id)l
{
  identifierCopy = identifier;
  lCopy = l;
  if (identifierCopy && lCopy)
  {
    alternativeVibrancyEffectLUT = [objc_alloc(MEMORY[0x1E698E820]) initWithIdentifier:identifierCopy bundleURL:lCopy];
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

- (void)setAlternativeVibrancyEffectLUTIdentifier:(id)identifier alternativeVibrancyEffectLUTBundleURL:(id)l luminanceReduced:(BOOL)reduced
{
  reducedCopy = reduced;
  identifierCopy = identifier;
  lCopy = l;
  if (identifierCopy && lCopy)
  {
    v9 = [objc_alloc(MEMORY[0x1E698E820]) initWithIdentifier:identifierCopy bundleURL:lCopy];
    alternativeVibrancyEffectLUT = [v9 copyWithLuminanceReduced:reducedCopy];

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
    effectType = [(CSProminentDisplayViewController *)self effectType];
    backgroundType = [(CSProminentDisplayViewController *)self backgroundType];
    textColor = [(CSProminentDisplayViewController *)self textColor];
    groupName = [(CSProminentDisplayViewController *)self groupName];
    alternativeVibrancyEffectLUT = [(CSProminentDisplayViewController *)self alternativeVibrancyEffectLUT];
    v21 = [v15 initWithEffectType:effectType backgroundType:backgroundType color:textColor groupName:groupName blendConfiguration:0 blendAmount:alternativeVibrancyEffectLUT alternativeVibrancyEffectLUT:0.0];
    v22 = self->_vibrancyConfiguration;
    self->_vibrancyConfiguration = v21;
  }

  v23 = self->_vibrancyConfiguration;

  return v23;
}

- (void)setVibrancyContentType:(int64_t)type
{
  self->_vibrancyContentType = type;
  _displayViewIfLoaded = [(CSProminentDisplayViewController *)self _displayViewIfLoaded];
  timeVibrancyEffectView = [_displayViewIfLoaded timeVibrancyEffectView];
  [timeVibrancyEffectView setContentType:type];

  _displayViewIfLoaded2 = [(CSProminentDisplayViewController *)self _displayViewIfLoaded];
  subtitleVibrancyEffectView = [_displayViewIfLoaded2 subtitleVibrancyEffectView];
  [subtitleVibrancyEffectView setContentType:type];

  _displayViewIfLoaded3 = [(CSProminentDisplayViewController *)self _displayViewIfLoaded];
  vibrancyEffectView = [_displayViewIfLoaded3 vibrancyEffectView];
  [vibrancyEffectView setContentType:type];
}

- (BOOL)_allowsGlassAppearance
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v4 = [standardUserDefaults BOOLForKey:@"SBDisallowGlassTime"];

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

- (id)_effectiveTitleTextColorForStyle:(id)style
{
  styleCopy = style;
  if ([(CSProminentDisplayViewController *)self _allowsGlassAppearance])
  {
    v5 = styleCopy;
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
      firstObject = [v7 firstObject];

      if (firstObject)
      {
        traitCollection = [(CSProminentDisplayViewController *)self traitCollection];
        _backlightLuminance = [traitCollection _backlightLuminance];

        if (_backlightLuminance == 1)
        {
          vibrancyConfiguration = [(CSProminentDisplayViewController *)self vibrancyConfiguration];
          v11 = vibrancyConfiguration;
          if (vibrancyConfiguration)
          {
            backgroundType = [vibrancyConfiguration backgroundType];
            v13 = 0.2;
            if (backgroundType)
            {
              v13 = 0.0;
            }

            v14 = [MEMORY[0x1E69DC888] colorWithWhite:v13 alpha:1.0];
            effectValues = [v11 effectValues];
            whiteColor = [MEMORY[0x1E69DC888] whiteColor];
            v17 = [effectValues transformColor:v14 withVibrantMask:whiteColor];

            firstObject = v17;
          }
        }
      }
    }

    else
    {
      firstObject = 0;
    }
  }

  else
  {
    firstObject = [MEMORY[0x1E69DC888] whiteColor];
  }

  return firstObject;
}

- (void)_updateViewColors
{
  _displayView = [(CSProminentDisplayViewController *)self _displayView];
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
    timeVibrancyEffectView = [_displayView timeVibrancyEffectView];
    v14 = [(CSVibrantContentStyleRenderer *)v12 initWithVibrancyView:timeVibrancyEffectView styleBoundingRect:v7, v8, v9, v10];
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
    subtitleVibrancyEffectView = [_displayView subtitleVibrancyEffectView];
    v19 = [(CSVibrantContentStyleRenderer *)v17 initWithVibrancyView:subtitleVibrancyEffectView styleBoundingRect:v7, v8, v9, v10];
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
      vibrancyEffectView = [_displayView vibrancyEffectView];
      v24 = [(CSVibrantContentStyleRenderer *)v22 initWithVibrancyView:vibrancyEffectView styleBoundingRect:v7, v8, v9, v10];
      v25 = self->_complicationRenderer;
      self->_complicationRenderer = v24;

      [(CSVibrantContentStyleRenderer *)self->_complicationRenderer setUseComplicationRenderStyle:1];
    }
  }

  vibrancyConfiguration = [(CSProminentDisplayViewController *)self vibrancyConfiguration];
  [(CSVibrantContentStyleRenderer *)self->_timeRenderer setVibrancyConfiguration:vibrancyConfiguration];
  v27 = self->_timeRenderer;
  titleContentStyle = [(CSProminentDisplayViewController *)self titleContentStyle];
  [(CSVibrantContentStyleRenderer *)v27 applyStyle:titleContentStyle];

  titleContentStyle2 = [(CSProminentDisplayViewController *)self titleContentStyle];
  type = [titleContentStyle2 type];

  titleContentStyle3 = [(CSProminentDisplayViewController *)self titleContentStyle];
  v32 = titleContentStyle3;
  v33 = (type == 5 || [titleContentStyle3 supportsGlassAppearance]) && -[CSProminentDisplayViewController _allowsGlassAppearance](self, "_allowsGlassAppearance") && !self->_showsCompactTime;
  [(CSVibrantContentStyleRenderer *)self->_subtitleComplicationRenderer setVibrancyConfiguration:vibrancyConfiguration];
  v34 = self->_subtitleComplicationRenderer;
  titleContentStyle4 = [(CSProminentDisplayViewController *)self titleContentStyle];
  [(CSVibrantContentStyleRenderer *)v34 applyStyle:titleContentStyle4];

  [(CSVibrantContentStyleRenderer *)self->_complicationRenderer setVibrancyConfiguration:vibrancyConfiguration];
  v36 = self->_complicationRenderer;
  titleContentStyle5 = [(CSProminentDisplayViewController *)self titleContentStyle];
  [(CSVibrantContentStyleRenderer *)v36 applyStyle:titleContentStyle5];

  vibrancyShadowView = [_displayView vibrancyShadowView];
  [vibrancyShadowView setConfiguration:vibrancyConfiguration];

  timeView = [_displayView timeView];
  [timeView setUsesGlassMaterial:v33];

  titleContentStyle6 = [(CSProminentDisplayViewController *)self titleContentStyle];
  v41 = [(CSProminentDisplayViewController *)self _effectiveTitleTextColorForStyle:titleContentStyle6];
  v42 = [(CSProminentDisplayViewController *)self _effectiveSubtitleTextColorForStyle:titleContentStyle6];
  v43 = [(CSProminentDisplayViewController *)self _effectiveWidgetsColorForStyle:titleContentStyle6];
  timeView2 = [_displayView timeView];
  [timeView2 setPrimaryTextColor:v41];

  subtitleView = [_displayView subtitleView];
  [subtitleView setPrimaryTextColor:v42];

  transientSubtitleView = [_displayView transientSubtitleView];
  [transientSubtitleView setPrimaryTextColor:v43];

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

- (void)setTitleContentStyle:(id)style
{
  objc_storeStrong(&self->_titleContentStyle, style);

  [(CSProminentDisplayViewController *)self _updateViewColors];
}

- (BOOL)_sensitiveUIEnabled
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  if ([standardUserDefaults BOOLForKey:@"SBSensitiveUIEnabled"])
  {
    v3 = 1;
  }

  else
  {
    standardUserDefaults2 = [MEMORY[0x1E695E000] standardUserDefaults];
    v5 = [standardUserDefaults2 objectForKey:@"SBSensitiveUIEnabled"];
    v3 = v5 == 0;
  }

  return v3;
}

- (void)_updateContentForSensitiveUI
{
  _sensitiveUIEnabled = [(CSProminentDisplayViewController *)self _sensitiveUIEnabled];
  _displayView = [(CSProminentDisplayViewController *)self _displayView];
  timeView = [_displayView timeView];
  [timeView setCanShowSensitiveUI:_sensitiveUIEnabled];

  _displayView2 = [(CSProminentDisplayViewController *)self _displayView];
  subtitleView = [_displayView2 subtitleView];
  v8 = objc_opt_class();
  v9 = subtitleView;
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

  [v11 setCanShowSensitiveUI:_sensitiveUIEnabled];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (BSEqualStrings())
  {

    [(CSProminentDisplayViewController *)self _updateContentForSensitiveUI];
  }
}

- (void)setElements:(unint64_t)elements
{
  if (self->_elements != elements)
  {
    self->_elements = elements;
    [(CSProminentDisplayViewController *)self _updateElements];
  }
}

- (void)setElementsWithBackingDim:(unint64_t)dim
{
  if (self->_elementsWithBackingDim != dim)
  {
    self->_elementsWithBackingDim = dim;
    [(CSProminentDisplayViewController *)self _updateElements];
  }
}

- (unint64_t)_suppressedElements
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  _elementSuppressionReasons = [(CSProminentDisplayViewController *)self _elementSuppressionReasons];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __55__CSProminentDisplayViewController__suppressedElements__block_invoke;
  v5[3] = &unk_1E76BA270;
  v5[4] = &v6;
  [_elementSuppressionReasons enumerateKeysAndObjectsUsingBlock:v5];

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

- (void)_setElements:(unint64_t)elements suppressed:(BOOL)suppressed forReason:(id)reason
{
  suppressedCopy = suppressed;
  reasonCopy = reason;
  _elementSuppressionReasons = [(CSProminentDisplayViewController *)self _elementSuppressionReasons];
  if (!_elementSuppressionReasons)
  {
    _elementSuppressionReasons = [MEMORY[0x1E695DF90] dictionary];
    [(CSProminentDisplayViewController *)self _setElementSuppressionReasons:_elementSuppressionReasons];
  }

  v9 = [_elementSuppressionReasons objectForKeyedSubscript:reasonCopy];
  unsignedIntegerValue = [v9 unsignedIntegerValue];

  if (suppressedCopy)
  {
    v11 = unsignedIntegerValue | elements;
  }

  else
  {
    v11 = unsignedIntegerValue & ~elements;
  }

  if (v11)
  {
    v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
    [_elementSuppressionReasons setObject:v12 forKeyedSubscript:reasonCopy];
  }

  else
  {
    [_elementSuppressionReasons removeObjectForKey:reasonCopy];
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
  view = [(CSProminentDisplayViewController *)self view];
  [view setNeedsLayout];
}

- (void)_createOrDestroyVibrancyShadowViewIfNecessary
{
  _displayView = [(CSProminentDisplayViewController *)self _displayView];
  vibrancyShadowView = [_displayView vibrancyShadowView];

  v4 = [(CSProminentDisplayViewController *)self _shouldShowElement:64];
  if ((((vibrancyShadowView == 0) ^ v4) & 1) == 0)
  {
    if (v4)
    {
      v5 = objc_alloc_init(MEMORY[0x1E698E828]);
      vibrancyConfiguration = [(CSProminentDisplayViewController *)self vibrancyConfiguration];
      [v5 setConfiguration:vibrancyConfiguration];

      [_displayView setVibrancyShadowView:v5];
    }

    else
    {
      [_displayView setVibrancyShadowView:0];
    }
  }
}

- (void)_createOrDestroyTimeElementIfNecessary
{
  _displayView = [(CSProminentDisplayViewController *)self _displayView];
  timeView = [_displayView timeView];

  v5 = [(CSProminentDisplayViewController *)self _shouldShowElement:1];
  if ((((timeView == 0) ^ v5) & 1) == 0)
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
      titleContentStyle = [(CSProminentDisplayViewController *)self titleContentStyle];
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
      v13 = titleContentStyle;
      v20 = v13;
      [v12 performWithoutAnimation:v18];
      [v23[5] setNumberingSystem:CSTimeNumberingSystemStringToType(self->_numberingSystem)];
      [_displayView setTimeView:v23[5]];

      _Block_object_dispose(&v22, 8);
    }

    else
    {
      v8 = MEMORY[0x1E698E7D0];
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __74__CSProminentDisplayViewController__createOrDestroyTimeElementIfNecessary__block_invoke_2;
      v16[3] = &unk_1E76B9E48;
      v17 = _displayView;
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
  _displayView = [(CSProminentDisplayViewController *)self _displayView];
  subtitleView = [_displayView subtitleView];

  v4 = [(CSProminentDisplayViewController *)self _shouldShowElement:2];
  if ((((subtitleView == 0) ^ v4) & 1) == 0)
  {
    if (v4)
    {
      titleContentStyle = [(CSProminentDisplayViewController *)self titleContentStyle];
      v6 = [CSProminentSubtitleDateView alloc];
      displayDate = self->_displayDate;
      v8 = [(CSProminentDisplayViewController *)self _effectiveSubtitleTextColorForStyle:titleContentStyle];
      v9 = [(CSProminentSubtitleDateView *)v6 initWithDate:displayDate textColor:v8];

      [(CSProminentSubtitleDateView *)v9 setAlternateCalendarIdentifier:self->_alternateCalendarIdentifier locale:self->_alternateCalendarLocale];
      [(CSProminentSubtitleDateView *)v9 setShowsTime:self->_showsCompactTime animated:0];
      [(CSProminentSubtitleDateView *)v9 setCanShowSensitiveUI:[(CSProminentDisplayViewController *)self _sensitiveUIEnabled]];
      [_displayView setSubtitleView:v9];
    }

    else
    {
      [_displayView setSubtitleView:0];
    }
  }
}

- (void)_createOrDestroySubtitleComplicationElementIfNecessary
{
  _displayView = [(CSProminentDisplayViewController *)self _displayView];
  subtitleComplicationView = [_displayView subtitleComplicationView];

  v4 = [(CSProminentDisplayViewController *)self _shouldShowElement:4];
  if ((((subtitleComplicationView == 0) ^ v4) & 1) == 0)
  {
    if (v4 && self->_subtitleComplicationViewController)
    {
      [(CSProminentDisplayViewController *)self addChildViewController:?];
      v5 = [CSProminentEmptyElementView alloc];
      view = [(UIViewController *)self->_subtitleComplicationViewController view];
      v7 = [(CSProminentEmptyElementView *)v5 initWithContentView:view];

      [_displayView setSubtitleComplicationView:v7];
      [(UIViewController *)self->_subtitleComplicationViewController didMoveToParentViewController:self];
    }

    else
    {
      [_displayView setSubtitleComplicationView:0];
    }
  }
}

- (void)_createOrDestroySubtitleDimmingViewIfNecessary
{
  _displayView = [(CSProminentDisplayViewController *)self _displayView];
  subtitleDimmingView = [_displayView subtitleDimmingView];

  if ([(CSProminentDisplayViewController *)self _shouldDimElement:2])
  {
    if (subtitleDimmingView)
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

    layer = [v11 layer];
    [layer addSublayer:self->_subtitleDimmingLayer];

    [_displayView setSubtitleDimmingView:v11];
    goto LABEL_8;
  }

  v4 = [(CSProminentDisplayViewController *)self _shouldDimElement:4];
  if (((subtitleDimmingView == 0) ^ v4))
  {
    goto LABEL_8;
  }

  if (v4)
  {
    goto LABEL_6;
  }

  [_displayView setSubtitleDimmingView:0];
LABEL_8:
}

- (id)_dimmingPillLayerForBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v14[1] = *MEMORY[0x1E69E9840];
  layer = [MEMORY[0x1E69794A0] layer];
  height = [(CSProminentDisplayViewController *)self _shadowPillPathForBounds:x, y, width, height];
  [layer setShadowPath:{objc_msgSend(height, "CGPath")}];

  [layer setMasksToBounds:0];
  [layer setShadowRadius:20.0];
  blackColor = [MEMORY[0x1E69DC888] blackColor];
  [layer setShadowColor:{objc_msgSend(blackColor, "CGColor")}];

  [layer setShadowOffset:{*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)}];
  LODWORD(v11) = 1.0;
  [layer setShadowOpacity:v11];
  [layer setFrame:{x, y, width, height}];
  v14[0] = self->_dimmingFilter;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  [layer setFilters:v12];

  return layer;
}

- (id)_shadowPillPathForBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v7 = CGRectGetHeight(bounds) * 0.5;
  v8 = MEMORY[0x1E69DC728];

  return [v8 bezierPathWithRoundedRect:x cornerRadius:{y, width, height, v7}];
}

- (void)_createOrDestroyComplicationRowElementIfNecessary
{
  _displayView = [(CSProminentDisplayViewController *)self _displayView];
  complicationRowView = [_displayView complicationRowView];

  complicationBottomRowView = [_displayView complicationBottomRowView];

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

  if ((((complicationRowView == 0) ^ v6) & 1) == 0)
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
      [_displayView setComplicationRowView:v25[5]];
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
      v22 = _displayView;
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __85__CSProminentDisplayViewController__createOrDestroyComplicationRowElementIfNecessary__block_invoke_3;
      v19[3] = &unk_1E76BA2C0;
      v20 = v22;
      [v11 addAlongsideAnimations:v21 completion:v19];

      v10 = v22;
    }
  }

  if ((((complicationBottomRowView == 0) ^ v8) & 1) == 0)
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
      [_displayView setComplicationBottomRowView:v25[5]];
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
      v17 = _displayView;
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
  _displayView = [(CSProminentDisplayViewController *)self _displayView];
  complicationSidebarView = [_displayView complicationSidebarView];

  v4 = [(CSProminentDisplayViewController *)self _shouldShowElement:16];
  if ((((complicationSidebarView == 0) ^ v4) & 1) == 0)
  {
    if (v4 && self->_complicationSidebarViewController)
    {
      [(CSProminentDisplayViewController *)self addChildViewController:?];
      v5 = [CSProminentEmptyElementView alloc];
      view = [(UIViewController *)self->_complicationSidebarViewController view];
      v7 = [(CSProminentEmptyElementView *)v5 initWithContentView:view];

      [_displayView setComplicationSidebarView:v7];
      [(UIViewController *)self->_complicationSidebarViewController didMoveToParentViewController:self];
    }

    else
    {
      [_displayView setComplicationSidebarView:0];
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

- (void)interactiveTransition:(id)transition didUpdate:(double)update
{
  transitionCopy = transition;
  currentTransition = [(CSProminentDisplayViewController *)self currentTransition];

  v7 = transitionCopy;
  if (currentTransition == transitionCopy)
  {
    cachingVibrancyTransitionProvider = [transitionCopy cachingVibrancyTransitionProvider];

    if (cachingVibrancyTransitionProvider)
    {
      cachingVibrancyTransitionProvider2 = [transitionCopy cachingVibrancyTransitionProvider];
      fromVibrancyConfiguration = [transitionCopy fromVibrancyConfiguration];
      alternativeVibrancyEffectLUT = [fromVibrancyConfiguration alternativeVibrancyEffectLUT];
      toVibrancyConfiguration = [transitionCopy toVibrancyConfiguration];
      alternativeVibrancyEffectLUT2 = [toVibrancyConfiguration alternativeVibrancyEffectLUT];
      lutIdentifier = [alternativeVibrancyEffectLUT2 lutIdentifier];
      v15 = [cachingVibrancyTransitionProvider2 vibrancyLUTWithStartingLUT:alternativeVibrancyEffectLUT transitionProgress:lutIdentifier toIdentifier:update];

      fromVibrancyConfiguration2 = [transitionCopy fromVibrancyConfiguration];
      toVibrancyConfiguration2 = [transitionCopy toVibrancyConfiguration];
      cachingVibrancyTransitionProvider = [fromVibrancyConfiguration2 copyWithBlendAmount:toVibrancyConfiguration2 blendConfiguration:v15 alternativeVibrancyEffectLUT:update];
    }

    _displayView = [(CSProminentDisplayViewController *)self _displayView];
    timeVibrancyEffectView = [_displayView timeVibrancyEffectView];
    [timeVibrancyEffectView setConfiguration:cachingVibrancyTransitionProvider];

    subtitleVibrancyEffectView = [_displayView subtitleVibrancyEffectView];
    [subtitleVibrancyEffectView setConfiguration:cachingVibrancyTransitionProvider];

    vibrancyEffectView = [_displayView vibrancyEffectView];
    [vibrancyEffectView setConfiguration:cachingVibrancyTransitionProvider];

    vibrancyShadowView = [_displayView vibrancyShadowView];
    [vibrancyShadowView setConfiguration:cachingVibrancyTransitionProvider];

    v7 = transitionCopy;
  }
}

- (void)interactiveTransition:(id)transition didFinishSuccessfully:(BOOL)successfully
{
  transitionCopy = transition;
  currentTransition = [(CSProminentDisplayViewController *)self currentTransition];

  v7 = transitionCopy;
  if (currentTransition == transitionCopy)
  {
    if (successfully)
    {
      baseFont = [transitionCopy baseFont];
      [(CSProminentDisplayViewController *)self setBaseFont:baseFont];

      [transitionCopy toVibrancyConfiguration];
    }

    else
    {
      [transitionCopy fromVibrancyConfiguration];
    }
    v9 = ;
    color = [v9 color];
    [(CSProminentDisplayViewController *)self setTextColor:color];

    -[CSProminentDisplayViewController setBackgroundType:](self, "setBackgroundType:", [v9 backgroundType]);
    -[CSProminentDisplayViewController setEffectType:](self, "setEffectType:", [v9 effectType]);
    alternativeVibrancyEffectLUT = [v9 alternativeVibrancyEffectLUT];
    lutIdentifier = [alternativeVibrancyEffectLUT lutIdentifier];
    bundleURL = [alternativeVibrancyEffectLUT bundleURL];
    [(CSProminentDisplayViewController *)self setAlternativeVibrancyEffectLUTIdentifier:lutIdentifier alternativeVibrancyEffectLUTBundleURL:bundleURL luminanceReduced:0];

    groupName = [v9 groupName];
    [(CSProminentDisplayViewController *)self setGroupName:groupName];

    [(CSProminentDisplayViewController *)self setCurrentTransition:0];
    v7 = transitionCopy;
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
  v2[1] = self & 1;
  _os_log_debug_impl(&dword_1A2D63000, a2, OS_LOG_TYPE_DEBUG, "CSProminentDisplayViewController disallowGlassTime: %{BOOL}u", v2, 8u);
}

@end