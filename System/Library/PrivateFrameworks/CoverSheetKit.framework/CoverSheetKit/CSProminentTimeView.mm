@interface CSProminentTimeView
+ (double)_lightVariantWeightForBaseFont:(uint64_t)font;
+ (id)_fontVariantForBaseFont:(uint64_t)font weight:(void *)weight size:;
+ (id)_lightVariantForBaseFont:(void *)font size:;
+ (id)_prominentFontFromBaseFont:(id)font usingLightVariant:(BOOL)variant usingLandscapeVariant:(BOOL)landscapeVariant;
+ (id)_prominentFontFromBaseFont:(id)font usingTextWeight:(double)weight usingLandscapeVariant:(BOOL)variant;
- (BOOL)animatesTimeChanges;
- (BOOL)isVisible;
- (BOOL)supportsAdaptiveTextHeight;
- (BOOL)usesGlassMaterial;
- (CGSize)intrinsicContentSize;
- (CSProminentTimeView)initWithDate:(id)date baseFont:(id)font textColor:(id)color;
- (CSProminentTimeView)initWithDate:(id)date font:(id)font textColor:(id)color;
- (double)_baseTightTimeHeight;
- (double)_effectiveAdaptiveTextHeight;
- (double)_sizeForString:(void *)string font:;
- (double)_textLayoutInsetForPortrait:(uint64_t)portrait deviceCategory:;
- (double)_valueForPortrait:(uint64_t)portrait;
- (double)_verticalLayoutExcessHeightForFont:(double)font labelSize:(double)size;
- (double)maximumAdaptiveTextHeight;
- (double)minimumAdaptiveTextHeight;
- (double)relativeAdaptiveTextWidth;
- (double)timeChangeAnimationDuration;
- (id)_attributedTimeString;
- (id)_correctedDateFormat;
- (id)_effectiveNumberingSystem;
- (id)_localeAccountingForNumberingSystem:(void *)system;
- (id)_selectFontForTextHeight:(double)height updatingState:;
- (id)_selectFontForTextHeight:(void *)height;
- (id)_timeString;
- (int64_t)glassInterfaceStyle;
- (uint64_t)_effectiveAdaptsTextHeight;
- (uint64_t)timeFormatter;
- (unsigned)_activeFontForMeasurements;
- (void)_animateInProcessWithAnimationSettings:(void *)settings animations:(void *)animations retarget:(void *)retarget completion:;
- (void)_attemptTimeAnimationUpdate;
- (void)_attemptTimeMaterialUpdate;
- (void)_createPropertyTransformer;
- (void)_isPortrait;
- (void)_queryFontAbilities;
- (void)_selectFontForTextHeight:(double)height portraitFraction:(double)fraction textWeight:;
- (void)_setNeedsFontUpdate;
- (void)_setPortrait:(uint64_t)portrait;
- (void)_updateAdaptiveFontProviderConfiguration;
- (void)_updateCurrentFont;
- (void)_updateTimeFormatter;
- (void)_updateTimeFormatterNumberingSystem;
- (void)_updateTimeString;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setAdaptiveTextHeight:(double)height;
- (void)setAdaptsTextHeight:(BOOL)height;
- (void)setAnimatesTimeChanges:(BOOL)changes;
- (void)setBaseFont:(id)font;
- (void)setCanShowSensitiveUI:(BOOL)i;
- (void)setContextHasSidebarContents:(BOOL)contents;
- (void)setDate:(id)date;
- (void)setGlassInterfaceStyle:(int64_t)style;
- (void)setNumberingSystem:(int64_t)system;
- (void)setTimeFormatter:(uint64_t)formatter;
- (void)setUsesGlassMaterial:(BOOL)material;
- (void)setUsesLandscapeTimeFontVariant:(BOOL)variant;
- (void)setUsesLightTimeFontVariant:(BOOL)variant response:(double)response;
- (void)setVisible:(BOOL)visible;
@end

@implementation CSProminentTimeView

- (double)maximumAdaptiveTextHeight
{
  if ([(CSProminentTimeView *)self supportsAdaptiveTextHeight])
  {
    adaptiveFontProvider = self->_adaptiveFontProvider;

    [(CSAdaptiveFontProvider *)adaptiveFontProvider maximumHeight];
  }

  else
  {

    [(CSProminentTimeView *)self minimumAdaptiveTextHeight];
  }

  return result;
}

- (double)minimumAdaptiveTextHeight
{
  if ([(CSProminentTimeView *)self supportsAdaptiveTextHeight])
  {
    adaptiveFontProvider = self->_adaptiveFontProvider;

    [(CSAdaptiveFontProvider *)adaptiveFontProvider minimumHeight];
  }

  else
  {
    primaryFont = [(CSProminentTextElementView *)self primaryFont];
    [primaryFont ascender];
    v7 = v6;

    return v7;
  }

  return result;
}

- (BOOL)supportsAdaptiveTextHeight
{
  adaptiveFontProvider = self->_adaptiveFontProvider;
  v4 = objc_opt_class();
  v5 = [v4 _numberingSystemSupportsAdaptiveTextHeight:-[CSProminentTimeView _effectiveNumberingSystem](&self->super.super.super.super.super.isa)];
  if (adaptiveFontProvider)
  {
    v6 = v5 == 0;
  }

  else
  {
    v6 = 1;
  }

  return !v6 && self->_canShowSensitiveUI;
}

- (id)_effectiveNumberingSystem
{
  if (result)
  {
    v1 = result;
    if ([result numberingSystem])
    {

      return [v1 numberingSystem];
    }

    else
    {
      locale = [v1[73] locale];
      _numberingSystem = [locale _numberingSystem];
      v4 = CSTimeNumberingSystemStringToType(_numberingSystem);

      return v4;
    }
  }

  return result;
}

- (void)_updateTimeString
{
  textLabel = [(CSProminentTextElementView *)self textLabel];
  v4 = objc_opt_respondsToSelector();

  textLabel2 = [(CSProminentTextElementView *)self textLabel];
  if (v4)
  {
    [(CSProminentTimeView *)&self->super.super.super.super.super.isa _attributedTimeString];
    objc_claimAutoreleasedReturnValue();
    [OUTLINED_FUNCTION_0_0() setAttributedText:?];
  }

  else
  {
    [(CSProminentTimeView *)&self->super.super.super.super.super.isa _timeString];
    objc_claimAutoreleasedReturnValue();
    [OUTLINED_FUNCTION_0_0() setText:?];
  }

  _timeString = [(CSProminentTimeView *)&self->super.super.super.super.super.isa _timeString];
  v7 = [_timeString length] > 4;

  [(CSProminentTimeView *)self setFourDigitTime:v7];
  if (self)
  {
    self->_needsFontUpdate = 1;
    [(CSProminentTimeView *)self setNeedsLayout];
  }

  [(CSProminentTimeView *)self setNeedsLayout];

  [(CSProminentTimeView *)self invalidateIntrinsicContentSize];
}

- (id)_timeString
{
  selfCopy = self;
  if (self)
  {
    date = [self date];
    if (date)
    {
      selfCopy = [selfCopy[73] stringFromDate:date];
    }

    else
    {
      selfCopy = &stru_1F158DED0;
    }
  }

  return selfCopy;
}

- (void)_setNeedsFontUpdate
{
  if (self)
  {
    *(self + 506) = 1;
    return [self setNeedsLayout];
  }

  return self;
}

- (void)layoutSubviews
{
  v24.receiver = self;
  v24.super_class = CSProminentTimeView;
  [(CSProminentTextElementView *)&v24 layoutSubviews];
  [(CSProminentTimeView *)self _updateAdaptiveFontProviderConfiguration];
  if (self->_needsFontUpdate)
  {
    self->_needsFontUpdate = 0;
    [(CSProminentTimeView *)&self->super.super.super.super.super.isa _updateCurrentFont];
  }

  textLabel = [(CSProminentTextElementView *)self textLabel];
  supportsAdaptiveTextHeight = [(CSProminentTimeView *)self supportsAdaptiveTextHeight];
  v5 = 0.5;
  if (supportsAdaptiveTextHeight)
  {
    adaptsTextHeight = [(CSProminentTimeView *)self adaptsTextHeight];
    v5 = 0.5;
    if (adaptsTextHeight)
    {
      v5 = 1.0;
    }
  }

  [textLabel setMinimumScaleFactor:v5];

  textLabel2 = [(CSProminentTextElementView *)self textLabel];
  textAlignment = [textLabel2 textAlignment];

  if (textAlignment == 1)
  {
    [(CSProminentTimeView *)self bounds];
    v10 = v9;
    _activeFontForMeasurements = [(CSProminentTimeView *)self _activeFontForMeasurements];
    textLabel3 = [(CSProminentTextElementView *)self textLabel];
    text = [textLabel3 text];
    v14 = [(CSProminentTimeView *)self _sizeForString:text font:_activeFontForMeasurements];
    v16 = v15;

    if (v14 > v10)
    {
      v14 = v10;
    }

    v17 = v10 - v14;
    if (v10 - v14 < 0.0)
    {
      v17 = 0.0;
    }

    v18 = v17 * 0.5;
    traitCollection = [(CSProminentTimeView *)self traitCollection];
    [traitCollection displayScale];

    v20 = -self->_baselineAdjustment;
    if (![(CSProminentTimeView *)self supportsAdaptiveTextHeight]|| ![(CSProminentTimeView *)self adaptsTextHeight])
    {
      BSPointRoundForScale();
      v18 = v21;
      v20 = v22;
    }

    textLabel4 = [(CSProminentTextElementView *)self textLabel];
    [textLabel4 setFrame:{v18, v20, v14, v16}];
  }
}

- (void)_updateAdaptiveFontProviderConfiguration
{
  if (self)
  {
    v2 = +[CSDeviceDetermination effectiveCategory];
    window = [self window];
    [window bounds];
    v5 = v4;
    v7 = v6;

    v8 = [(CSProminentTimeView *)self _textLayoutInsetForPortrait:v2 deviceCategory:?];
    v9 = [(CSProminentTimeView *)self _textLayoutInsetForPortrait:v2 deviceCategory:?];
    mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
    [mainScreen _referenceBounds];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;

    v30.origin.x = v12;
    v30.origin.y = v14;
    v30.size.width = v16;
    v30.size.height = v18;
    v31 = CGRectInset(v30, v8, v9);
    x = v31.origin.x;
    y = v31.origin.y;
    width = v31.size.width;
    height = v31.size.height;
    v23 = CGRectGetWidth(v31);
    v32.origin.x = x;
    v32.origin.y = y;
    v32.size.width = width;
    v32.size.height = height;
    v24 = CGRectGetHeight(v32);
    v25 = [MEMORY[0x1E696AD98] numberWithDouble:v23];
    v26 = [MEMORY[0x1E696AD98] numberWithDouble:v24];
    _attributedTimeString = [(CSProminentTimeView *)self _attributedTimeString];
    v28 = [CSAdaptiveFontLayoutContext layoutContextWithPortrait:v7 >= v5 deviceCategory:v2 maximumWidthPortrait:v25 maximumWidthLandscape:v26 text:_attributedTimeString];

    if ([*(self + 488) updateLayoutContext:v28])
    {
      [(CSProminentTimeView *)self _setPortrait:?];
      *(self + 506) = 1;
      [self setNeedsLayout];
    }
  }
}

- (void)_isPortrait
{
  if (result)
  {
    window = [result window];
    [window bounds];
    v3 = v2;
    v5 = v4;

    return (v5 >= v3);
  }

  return result;
}

- (void)_updateCurrentFont
{
  if (self)
  {
    [self minimumAdaptiveTextHeight];
    v3 = v2;
    [self maximumAdaptiveTextHeight];
    [self adaptiveTextHeight];
    v5 = OUTLINED_FUNCTION_1(v4);
    if (v6)
    {
      v3 = v5;
    }

    [self[66] presentationValue];
    v8 = v7;
    [self[67] presentationValue];
    v10 = [(CSProminentTimeView *)self _selectFontForTextHeight:v3 portraitFraction:v8 textWeight:v9];
    [self setPrimaryFont:v10];
  }
}

- (double)_effectiveAdaptiveTextHeight
{
  if (!self)
  {
    return 0.0;
  }

  [self minimumAdaptiveTextHeight];
  v3 = v2;
  [self maximumAdaptiveTextHeight];
  [self adaptiveTextHeight];
  result = OUTLINED_FUNCTION_1(v4);
  if (!v6)
  {
    return v3;
  }

  return result;
}

- (unsigned)_activeFontForMeasurements
{
  selfCopy = self;
  if (self)
  {
    if ([self supportsAdaptiveTextHeight] && objc_msgSend(selfCopy, "adaptsTextHeight"))
    {
      textLabel = [selfCopy textLabel];
      selfCopy = [textLabel font];
    }

    else
    {
      selfCopy = [objc_opt_class() _prominentFontFromBaseFont:*(selfCopy + 71) usingLightVariant:0 usingLandscapeVariant:selfCopy[556]];
    }
  }

  return selfCopy;
}

- (CSProminentTimeView)initWithDate:(id)date font:(id)font textColor:(id)color
{
  v16.receiver = self;
  v16.super_class = CSProminentTimeView;
  v5 = [(CSProminentTextElementView *)&v16 initWithDate:date font:font textColor:color];
  v6 = v5;
  if (v5)
  {
    [(CSProminentTimeView *)v5 _updateTimeFormatter];
    textLabel = [(CSProminentTextElementView *)v6 textLabel];
    v9 = objc_opt_respondsToSelector();

    if (v9)
    {
      textLabel2 = [(CSProminentTextElementView *)v6 textLabel];
      [textLabel2 setAdjustsFontSizeToFitWidth:1];
    }

    textLabel3 = [(CSProminentTextElementView *)v6 textLabel];
    v12 = objc_opt_respondsToSelector();

    if (v12)
    {
      textLabel4 = [(CSProminentTextElementView *)v6 textLabel];
      [textLabel4 setAnimatesChanges:0];
    }

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v6 selector:sel_currentLocaleDidChange_ name:*MEMORY[0x1E695D8F0] object:0];

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 addObserver:v6 selector:sel__updateTimeString name:*MEMORY[0x1E695DA68] object:0];
  }

  return v6;
}

- (CSProminentTimeView)initWithDate:(id)date baseFont:(id)font textColor:(id)color
{
  fontCopy = font;
  colorCopy = color;
  dateCopy = date;
  v12 = [objc_opt_class() _prominentFontFromBaseFont:fontCopy usingLightVariant:self->_usesLightTimeFontVariant usingLandscapeVariant:0];
  v13 = [(CSProminentTimeView *)self initWithDate:dateCopy font:v12 textColor:colorCopy];

  if (v13)
  {
    objc_storeStrong(&v13->_baseFont, font);
    [(CSProminentTimeView *)v13 _queryFontAbilities];
    v15 = objc_alloc_init(MEMORY[0x1E69DD268]);
    heightProperty = v13->_heightProperty;
    v13->_heightProperty = v15;

    v17 = objc_alloc_init(MEMORY[0x1E69DD268]);
    portraitProperty = v13->_portraitProperty;
    v13->_portraitProperty = v17;

    v19 = objc_alloc_init(MEMORY[0x1E69DD268]);
    weightProperty = v13->_weightProperty;
    v13->_weightProperty = v19;

    v21 = v13->_portraitProperty;
    window = [(CSProminentTimeView *)v13 window];
    [window bounds];
    v24 = v23;
    v26 = v25;

    v27 = 0.0;
    if (v26 >= v24)
    {
      v27 = 1.0;
    }

    [(UIViewFloatAnimatableProperty *)v21 setValue:v27];
    [(UIViewFloatAnimatableProperty *)v13->_weightProperty setValue:[(UIFont *)v13->_baseFont cs_variantWeight]];
    [(CSProminentTimeView *)v13 _createPropertyTransformer];
  }

  return v13;
}

- (double)_valueForPortrait:(uint64_t)portrait
{
  result = 0.0;
  v3 = 1.0;
  if (!a2)
  {
    v3 = 0.0;
  }

  if (portrait)
  {
    return v3;
  }

  return result;
}

- (void)_createPropertyTransformer
{
  v8[3] = *MEMORY[0x1E69E9840];
  if (val)
  {
    objc_initWeak(&location, val);
    v2 = MEMORY[0x1E69DD250];
    v3 = *(val + 66);
    v8[0] = *(val + 65);
    v8[1] = v3;
    v8[2] = *(val + 67);
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:3];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __49__CSProminentTimeView__createPropertyTransformer__block_invoke;
    v5[3] = &unk_1E76BA360;
    objc_copyWeak(&v6, &location);
    [v2 _createTransformerWithInputAnimatableProperties:v4 presentationValueChangedCallback:v5];

    objc_destroyWeak(&v6);
    objc_destroyWeak(&location);
  }
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = CSProminentTimeView;
  [(CSProminentTimeView *)&v4 dealloc];
}

void __49__CSProminentTimeView__createPropertyTransformer__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v8 = WeakRetained;
    [WeakRetained[65] presentationValue];
    v3 = v2;
    [v8[66] presentationValue];
    v5 = v4;
    [v8[67] presentationValue];
    v7 = [(CSProminentTimeView *)v8 _selectFontForTextHeight:v3 portraitFraction:v5 textWeight:v6];
    [v8 setPrimaryFont:v7];
    *(v8 + 506) = 0;
    [v8 setNeedsLayout];

    WeakRetained = v8;
  }
}

- (void)setCanShowSensitiveUI:(BOOL)i
{
  if (self->_canShowSensitiveUI != i)
  {
    self->_canShowSensitiveUI = i;
    self->_needsFontUpdate = 1;
    [(CSProminentTimeView *)self setNeedsLayout];
    [(CSProminentTimeView *)self _attemptTimeAnimationUpdate];

    [(CSProminentTimeView *)self _attemptTimeMaterialUpdate];
  }
}

- (void)setUsesLightTimeFontVariant:(BOOL)variant response:(double)response
{
  if ((BSEqualBools() & 1) == 0)
  {
    self->_usesLightTimeFontVariant = variant;
    cs_variantWeight = [(UIFont *)self->_adaptiveBaseFont cs_variantWeight];
    v8 = [CSProminentTimeView _lightVariantWeightForBaseFont:?];
    if (self->_usesLightTimeFontVariant)
    {
      cs_variantWeight = v8;
    }

    [(UIViewFloatAnimatableProperty *)self->_weightProperty value];
    if ((BSFloatEqualToFloat() & 1) == 0)
    {
      _currentAnimationSettings = [MEMORY[0x1E69DD250] _currentAnimationSettings];
      if (_currentAnimationSettings)
      {
        v10 = _currentAnimationSettings;
        if (response > 0.0)
        {
          v11 = MEMORY[0x1E698E608];
          timingFunction = [_currentAnimationSettings timingFunction];
          v13 = [v11 settingsWithDuration:timingFunction timingFunction:response];

          v10 = v13;
        }

        v16[0] = MEMORY[0x1E69E9820];
        v16[1] = 3221225472;
        v16[2] = __60__CSProminentTimeView_setUsesLightTimeFontVariant_response___block_invoke;
        v16[3] = &unk_1E76B9E20;
        v16[4] = self;
        *&v16[5] = cs_variantWeight;
        v15[0] = MEMORY[0x1E69E9820];
        v15[1] = 3221225472;
        v15[2] = __60__CSProminentTimeView_setUsesLightTimeFontVariant_response___block_invoke_2;
        v15[3] = &unk_1E76B9E48;
        v15[4] = self;
        [(CSProminentTimeView *)self _animateInProcessWithAnimationSettings:v10 animations:v16 retarget:v15 completion:0];
      }

      else
      {
        v14[0] = MEMORY[0x1E69E9820];
        v14[1] = 3221225472;
        v14[2] = __60__CSProminentTimeView_setUsesLightTimeFontVariant_response___block_invoke_3;
        v14[3] = &unk_1E76B9E20;
        v14[4] = self;
        *&v14[5] = cs_variantWeight;
        [MEMORY[0x1E69DD250] _performWithoutRetargetingAnimations:v14];
        self->_needsFontUpdate = 1;
        [(CSProminentTimeView *)self setNeedsLayout];
      }
    }
  }
}

+ (double)_lightVariantWeightForBaseFont:(uint64_t)font
{
  v2 = a2;
  objc_opt_self();
  cs_variantWeightRange = -1.0;
  if ([v2 cs_supportsVariantWeights])
  {
    cs_variantWeightRange = [v2 cs_variantWeightRange];
    v5 = (v4 - cs_variantWeightRange) * -0.1;
    cs_variantWeight = [v2 cs_variantWeight];
    if (cs_variantWeight + v5 >= cs_variantWeightRange)
    {
      cs_variantWeightRange = cs_variantWeight + v5;
    }
  }

  return cs_variantWeightRange;
}

uint64_t __60__CSProminentTimeView_setUsesLightTimeFontVariant_response___block_invoke_2(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 536);
  [v1 presentationValue];

  return [v1 setValue:?];
}

- (void)setUsesLandscapeTimeFontVariant:(BOOL)variant
{
  mEMORY[0x1E698E730] = [MEMORY[0x1E698E730] sharedInstance];
  deviceClass = [mEMORY[0x1E698E730] deviceClass];

  if (deviceClass == 2)
  {
    variant = 0;
  }

  if ((BSEqualBools() & 1) == 0)
  {
    self->_usesLandscapeTimeFontVariant = variant;
    self->_needsFontUpdate = 1;

    [(CSProminentTimeView *)self setNeedsLayout];
  }
}

- (BOOL)animatesTimeChanges
{
  textLabel = [(CSProminentTextElementView *)self textLabel];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  textLabel2 = [(CSProminentTextElementView *)self textLabel];
  animatesChanges = [textLabel2 animatesChanges];

  return animatesChanges;
}

- (void)setAnimatesTimeChanges:(BOOL)changes
{
  if (self->_wantsTimeAnimation != changes)
  {
    self->_wantsTimeAnimation = changes;
    [(CSProminentTimeView *)self _attemptTimeAnimationUpdate];
  }
}

- (double)timeChangeAnimationDuration
{
  if (![(CSProminentTimeView *)self animatesTimeChanges])
  {
    return 0.0;
  }

  textLabel = [(CSProminentTextElementView *)self textLabel];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 0.0;
  }

  textLabel2 = [(CSProminentTextElementView *)self textLabel];
  [textLabel2 timeWipeTransitionDuration];
  v7 = v6;

  return v7;
}

- (BOOL)usesGlassMaterial
{
  textLabel = [(CSProminentTextElementView *)self textLabel];
  if (objc_opt_respondsToSelector())
  {
    usesGlassMaterial = [textLabel usesGlassMaterial];
  }

  else
  {
    usesGlassMaterial = 0;
  }

  return usesGlassMaterial;
}

- (void)setUsesGlassMaterial:(BOOL)material
{
  if (self->_wantsGlassMaterial != material)
  {
    self->_wantsGlassMaterial = material;
    [(CSProminentTimeView *)self _attemptTimeMaterialUpdate];
  }
}

- (void)setContextHasSidebarContents:(BOOL)contents
{
  if (self->_contextHasSidebarContents != contents)
  {
    self->_contextHasSidebarContents = contents;
    [(CSProminentTimeView *)self _updateAdaptiveFontProviderConfiguration];
  }
}

- (BOOL)isVisible
{
  textLabel = [(CSProminentTextElementView *)self textLabel];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  textLabel2 = [(CSProminentTextElementView *)self textLabel];
  isVisible = [textLabel2 isVisible];

  return isVisible;
}

- (void)setVisible:(BOOL)visible
{
  visibleCopy = visible;
  textLabel = [(CSProminentTextElementView *)self textLabel];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    textLabel2 = [(CSProminentTextElementView *)self textLabel];
    [textLabel2 setVisible:visibleCopy];
  }
}

- (void)setBaseFont:(id)font
{
  obj = font;
  if ((BSEqualObjects() & 1) == 0)
  {
    [(CSProminentTimeView *)obj setBaseFont:self];
  }
}

- (void)setNumberingSystem:(int64_t)system
{
  if (self->_numberingSystem != system)
  {
    self->_numberingSystem = system;
    [(CSProminentTimeView *)self _updateTimeFormatterNumberingSystem];
  }
}

- (void)setAdaptsTextHeight:(BOOL)height
{
  if (self->_adaptsTextHeight != height)
  {
    self->_adaptsTextHeight = height;
    self->_needsFontUpdate = 1;
    [(CSProminentTimeView *)self setNeedsLayout];
  }
}

- (void)setAdaptiveTextHeight:(double)height
{
  if (self->_adaptiveTextHeight != height)
  {
    v16[6] = v6;
    v16[7] = v5;
    v16[12] = v3;
    v16[13] = v4;
    self->_adaptiveTextHeight = height;
    [(CSProminentTimeView *)self minimumAdaptiveTextHeight];
    v9 = v8;
    [(CSProminentTimeView *)self maximumAdaptiveTextHeight];
    v11 = v10;
    [(CSProminentTimeView *)self adaptiveTextHeight];
    if (v11 < v12)
    {
      v12 = v11;
    }

    if (v9 < v12)
    {
      v9 = v12;
    }

    [(UIViewFloatAnimatableProperty *)self->_heightProperty value];
    if ((BSFloatEqualToFloat() & 1) == 0)
    {
      _currentAnimationSettings = [MEMORY[0x1E69DD250] _currentAnimationSettings];
      if (_currentAnimationSettings)
      {
        self->_needsFontUpdate = 0;
        v16[0] = MEMORY[0x1E69E9820];
        v16[1] = 3221225472;
        v16[2] = __45__CSProminentTimeView_setAdaptiveTextHeight___block_invoke;
        v16[3] = &unk_1E76B9E20;
        v16[4] = self;
        *&v16[5] = v9;
        v15[0] = MEMORY[0x1E69E9820];
        v15[1] = 3221225472;
        v15[2] = __45__CSProminentTimeView_setAdaptiveTextHeight___block_invoke_2;
        v15[3] = &unk_1E76B9E48;
        v15[4] = self;
        [(CSProminentTimeView *)self _animateInProcessWithAnimationSettings:_currentAnimationSettings animations:v16 retarget:v15 completion:0];
      }

      else
      {
        v14[0] = MEMORY[0x1E69E9820];
        v14[1] = 3221225472;
        v14[2] = __45__CSProminentTimeView_setAdaptiveTextHeight___block_invoke_3;
        v14[3] = &unk_1E76B9E20;
        v14[4] = self;
        *&v14[5] = v9;
        [MEMORY[0x1E69DD250] _performWithoutRetargetingAnimations:v14];
        self->_needsFontUpdate = 1;
        [(CSProminentTimeView *)self setNeedsLayout];
      }
    }
  }
}

uint64_t __45__CSProminentTimeView_setAdaptiveTextHeight___block_invoke_2(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 520);
  [v1 presentationValue];

  return [v1 setValue:?];
}

- (void)setGlassInterfaceStyle:(int64_t)style
{
  textLabel = [(CSProminentTextElementView *)self textLabel];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    textLabel2 = [(CSProminentTextElementView *)self textLabel];
    [textLabel2 setGlassInterfaceStyle:style];
  }
}

- (int64_t)glassInterfaceStyle
{
  textLabel = [(CSProminentTextElementView *)self textLabel];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  textLabel2 = [(CSProminentTextElementView *)self textLabel];
  glassInterfaceStyle = [textLabel2 glassInterfaceStyle];

  return glassInterfaceStyle;
}

uint64_t __36__CSProminentTimeView__setPortrait___block_invoke_2(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 528);
  [v1 presentationValue];

  return [v1 setValue:?];
}

- (void)setDate:(id)date
{
  dateCopy = date;
  date = [(CSProminentTextElementView *)self date];
  v7.receiver = self;
  v7.super_class = CSProminentTimeView;
  [(CSProminentTextElementView *)&v7 setDate:dateCopy];
  v6 = BSEqualObjects();

  if ((v6 & 1) == 0)
  {
    [(CSProminentTimeView *)self _updateTimeString];
  }
}

- (CGSize)intrinsicContentSize
{
  textLabel = [(CSProminentTextElementView *)self textLabel];
  view = [textLabel view];
  [view intrinsicContentSize];
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

+ (id)_prominentFontFromBaseFont:(id)font usingTextWeight:(double)weight usingLandscapeVariant:(BOOL)variant
{
  variantCopy = variant;
  fontCopy = font;
  v9 = fontCopy;
  if (fontCopy)
  {
    v10 = fontCopy;
  }

  else
  {
    v10 = [MEMORY[0x1E69DB878] systemFontOfSize:0.0];
  }

  v11 = v10;
  +[CSProminentLayoutController fontSizeForElementType:isLandscapeVariant:](CSProminentLayoutController, "fontSizeForElementType:isLandscapeVariant:", [self elementType], variantCopy);
  v13 = [(CSProminentTimeView *)weight _fontVariantForBaseFont:v12 weight:self size:v11];

  return v13;
}

+ (id)_fontVariantForBaseFont:(uint64_t)font weight:(void *)weight size:
{
  weightCopy = weight;
  objc_opt_self();
  if (self >= 0.0 && ([weightCopy cs_supportsVariantWeights] & 1) != 0)
  {
    v7 = [weightCopy cs_fontWithVariantWeight:self];
    v8 = [v7 fontWithSize:a2];
  }

  else
  {
    v8 = [weightCopy fontWithSize:a2];
  }

  return v8;
}

+ (id)_prominentFontFromBaseFont:(id)font usingLightVariant:(BOOL)variant usingLandscapeVariant:(BOOL)landscapeVariant
{
  landscapeVariantCopy = landscapeVariant;
  variantCopy = variant;
  fontCopy = font;
  v9 = fontCopy;
  if (fontCopy)
  {
    v10 = fontCopy;
  }

  else
  {
    v10 = [MEMORY[0x1E69DB878] systemFontOfSize:0.0];
  }

  v11 = v10;
  +[CSProminentLayoutController fontSizeForElementType:isLandscapeVariant:](CSProminentLayoutController, "fontSizeForElementType:isLandscapeVariant:", [self elementType], landscapeVariantCopy);
  v13 = v12;
  if (variantCopy)
  {
    v14 = [(CSProminentTimeView *)v12 _lightVariantForBaseFont:self size:v11];
  }

  else
  {
    fontDescriptor = [v11 fontDescriptor];
    v14 = [MEMORY[0x1E69DB878] fontWithDescriptor:fontDescriptor size:v13];
  }

  return v14;
}

+ (id)_lightVariantForBaseFont:(void *)font size:
{
  fontCopy = font;
  v5 = objc_opt_self();
  v6 = [(CSProminentTimeView *)v5 _lightVariantWeightForBaseFont:fontCopy];
  v7 = [(CSProminentTimeView *)v6 _fontVariantForBaseFont:self weight:v5 size:fontCopy];

  return v7;
}

- (void)_updateTimeFormatter
{
  if (self)
  {
    mEMORY[0x1E698E670] = [MEMORY[0x1E698E670] sharedInstance];
    [mEMORY[0x1E698E670] resetFormattersIfNecessary];

    v5 = [(CSProminentTimeView *)self _localeAccountingForNumberingSystem:?];
    v3 = [MEMORY[0x1E698E670] formatterForDateAsTimeNoAMPMWithLocale:v5];
    v4 = self[73];
    self[73] = v3;

    [(CSProminentTimeView *)self _correctedDateFormat];
    objc_claimAutoreleasedReturnValue();
    [OUTLINED_FUNCTION_0_0() setDateFormat:?];

    [self _updateTimeString];
  }
}

- (void)_queryFontAbilities
{
  if (self)
  {
    v2 = [CSAdaptiveFontProvider providerForBaseFont:*(self + 568)];
    v3 = *(self + 488);
    *(self + 488) = v2;

    adaptiveBaseFont = [*(self + 488) adaptiveBaseFont];
    v5 = adaptiveBaseFont;
    if (!adaptiveBaseFont)
    {
      adaptiveBaseFont = *(self + 568);
    }

    objc_storeStrong((self + 496), adaptiveBaseFont);
  }
}

- (uint64_t)_effectiveAdaptsTextHeight
{
  if (!self || ![self supportsAdaptiveTextHeight])
  {
    return 0;
  }

  return [self adaptsTextHeight];
}

- (double)_sizeForString:(void *)string font:
{
  if (!self)
  {
    return 0.0;
  }

  stringCopy = string;
  v6 = a2;
  [self bounds];
  v8 = v7;
  v10 = v9;
  OUTLINED_FUNCTION_2();
  v12 = [v11 dictionaryWithObjects:? forKeys:? count:?];

  [v6 boundingRectWithSize:0 options:v12 attributes:0 context:{v8, v10}];
  v14 = v13;

  return v14;
}

- (void)_selectFontForTextHeight:(double)height portraitFraction:(double)fraction textWeight:
{
  selfCopy = self;
  if (self)
  {
    if ([self supportsAdaptiveTextHeight] && objc_msgSend(selfCopy, "adaptsTextHeight"))
    {
      v8 = [objc_opt_class() _prominentFontFromBaseFont:selfCopy[62] usingTextWeight:*(selfCopy + 556) usingLandscapeVariant:fraction];
      v9 = selfCopy[61];
      textLabel = [selfCopy textLabel];
      text = [textLabel text];
      selfCopy = [v9 fontFromFont:v8 forHeight:text portraitFraction:selfCopy + 64 string:a2 baselineAdjustment:height];
    }

    else
    {
      textLabel = [(CSProminentTimeView *)selfCopy _selectFontForTextHeight:a2];
      selfCopy = [textLabel cs_fontWithVariantWeight:fraction];
    }
  }

  return selfCopy;
}

- (double)_verticalLayoutExcessHeightForFont:(double)font labelSize:(double)size
{
  v6 = a2;
  v7 = 0.0;
  if (self && [self supportsAdaptiveTextHeight] && objc_msgSend(self, "adaptsTextHeight"))
  {
    [self minimumAdaptiveTextHeight];
    v9 = v8;
    [self maximumAdaptiveTextHeight];
    v11 = v10;
    [self adaptiveTextHeight];
    if (v11 < v12)
    {
      v12 = v11;
    }

    if (v9 >= v12)
    {
      v12 = v9;
    }

    v13 = v12 - size;
    if (v13 >= 0.0)
    {
      v7 = v13;
    }

    else
    {
      v7 = 0.0;
    }
  }

  return v7;
}

- (void)_attemptTimeAnimationUpdate
{
  if (self)
  {
    textLabel = [self textLabel];
    v3 = objc_opt_respondsToSelector();

    if (v3)
    {
      if (_os_feature_enabled_impl())
      {
        v4 = self[552];
      }

      else
      {
        v4 = 0;
      }

      textLabel2 = [self textLabel];
      [textLabel2 setAnimatesChanges:self[504] & v4 & 1];
    }
  }
}

- (void)_attemptTimeMaterialUpdate
{
  v8 = *MEMORY[0x1E69E9840];
  if (self)
  {
    textLabel = [self textLabel];
    if (objc_opt_respondsToSelector())
    {
      standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
      v4 = [standardUserDefaults BOOLForKey:@"SBDisallowGlassTime"];

      v5 = CSLogCommon();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        v7[0] = 67109120;
        v7[1] = v4;
        _os_log_debug_impl(&dword_1A2D63000, v5, OS_LOG_TYPE_DEBUG, "CSProminentTimeView disallowGlassTime: %{BOOL}u", v7, 8u);
      }

      if (_os_feature_enabled_impl() && _os_feature_enabled_impl())
      {
        v6 = self[552] & (v4 ^ 1);
      }

      else
      {
        v6 = 0;
      }

      [textLabel setUsesGlassMaterial:self[505] & v6 & 1];
    }
  }
}

- (void)_animateInProcessWithAnimationSettings:(void *)settings animations:(void *)animations retarget:(void *)retarget completion:
{
  v12 = a2;
  settingsCopy = settings;
  animationsCopy = animations;
  retargetCopy = retarget;
  if (self)
  {
    if (([v12 isSpringAnimation] & 1) == 0)
    {
      [MEMORY[0x1E69DD250] cs_animateInProcessWithSettings:v12 animations:animationsCopy];
    }

    [MEMORY[0x1E69DD250] cs_animateInProcessWithSettings:v12 animations:settingsCopy completion:retargetCopy];
  }
}

- (void)_updateTimeFormatterNumberingSystem
{
  if (result)
  {
    v2 = result;
    [(CSProminentTimeView *)result _localeAccountingForNumberingSystem:?];
    objc_claimAutoreleasedReturnValue();
    [OUTLINED_FUNCTION_0_0() setLocale:?];

    [(CSProminentTimeView *)v2 _correctedDateFormat];
    objc_claimAutoreleasedReturnValue();
    [OUTLINED_FUNCTION_0_0() setDateFormat:?];

    return [v2 _updateTimeString];
  }

  return result;
}

- (double)relativeAdaptiveTextWidth
{
  v25[1] = *MEMORY[0x1E69E9840];
  v2 = 1.0;
  if (self && [(CSProminentTimeView *)self supportsAdaptiveTextHeight]&& [(CSProminentTimeView *)self adaptsTextHeight])
  {
    [(CSProminentTimeView *)self _updateAdaptiveFontProviderConfiguration];
    [(CSProminentTimeView *)self minimumAdaptiveTextHeight];
    v6 = v5;
    [(CSProminentTimeView *)self maximumAdaptiveTextHeight];
    [(CSProminentTimeView *)self adaptiveTextHeight];
    v8 = OUTLINED_FUNCTION_1(v7);
    if (!v9)
    {
      v8 = v6;
    }

    v10 = [(CSProminentTimeView *)self _selectFontForTextHeight:v8 updatingState:?];
    [(CSProminentTimeView *)self minimumAdaptiveTextHeight];
    v12 = [(CSProminentTimeView *)self _selectFontForTextHeight:v11 updatingState:?];
    textLabel = [(CSProminentTextElementView *)self textLabel];
    text = [textLabel text];
    v24 = *MEMORY[0x1E69DB648];
    v25[0] = v10;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v24 count:1];
    [text boundingRectWithSize:0 options:v15 attributes:0 context:{INFINITY, INFINITY}];
    v17 = v16;

    textLabel2 = [(CSProminentTextElementView *)self textLabel];
    text2 = [textLabel2 text];
    OUTLINED_FUNCTION_2();
    v21 = [v20 dictionaryWithObjects:? forKeys:? count:?];
    [text2 boundingRectWithSize:0 options:v21 attributes:0 context:{INFINITY, INFINITY}];
    v23 = v22;

    if (BSFloatIsZero())
    {
      v2 = 1.0;
    }

    else
    {
      v2 = v17 / v23;
    }
  }

  return v2;
}

- (id)_selectFontForTextHeight:(double)height updatingState:
{
  if (self)
  {
    if ([self supportsAdaptiveTextHeight] && objc_msgSend(self, "adaptsTextHeight"))
    {
      v6 = [objc_opt_class() _prominentFontFromBaseFont:*(self + 496) usingLightVariant:*(self + 555) usingLandscapeVariant:*(self + 556)];
      v12 = 0;
      v7 = *(self + 488);
      textLabel = [self textLabel];
      text = [textLabel text];
      v10 = [v7 fontFromFont:v6 forHeight:text string:&v12 baselineAdjustment:height];

      if (a2)
      {
        *(self + 512) = v12;
      }
    }

    else
    {
      if (a2)
      {
        *(self + 512) = 0;
      }

      v10 = [objc_opt_class() _prominentFontFromBaseFont:*(self + 568) usingLightVariant:*(self + 555) usingLandscapeVariant:*(self + 556)];
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (double)_baseTightTimeHeight
{
  if (!self)
  {
    return 0.0;
  }

  [CSProminentLayoutController frameForElements:1 variant:1 forcePortraitBounds:0];
  return v1;
}

- (double)_textLayoutInsetForPortrait:(uint64_t)portrait deviceCategory:
{
  if (!self)
  {
    return 0.0;
  }

  v4 = a2;
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d-%d-%d", a2, portrait, *(self + 553)];
  v7 = [*(self + 544) objectForKeyedSubscript:v6];
  v8 = v7;
  if (v7)
  {
    [v7 bs_CGFloatValue];
    v10 = v9;
  }

  else
  {
    mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
    [mainScreen _referenceBounds];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;

    v20 = v13;
    v21 = v15;
    v22 = v17;
    v23 = v19;
    if (v4)
    {
      Width = CGRectGetWidth(*&v20);
      v25 = 1;
    }

    else
    {
      Width = CGRectGetHeight(*&v20);
      v25 = 4;
    }

    [CSProminentLayoutController adaptiveTimeWidthInsetForOrientation:v25 deviceCategory:portrait hasSidebarContents:*(self + 553) boundingWidth:Width];
    v10 = v26;
    if (!*(self + 544))
    {
      dictionary = [MEMORY[0x1E695DF90] dictionary];
      v28 = *(self + 544);
      *(self + 544) = dictionary;
    }

    v29 = [MEMORY[0x1E696AD98] numberWithDouble:v10];
    [*(self + 544) setObject:v29 forKeyedSubscript:v6];
  }

  return v10;
}

- (id)_attributedTimeString
{
  selfCopy = self;
  if (self)
  {
    _effectiveNumberingSystem = [(CSProminentTimeView *)self _effectiveNumberingSystem];
    if (CSTimeNumberingSystemTypeRequiresLanguageTagging(_effectiveNumberingSystem))
    {
      v3 = CSTimeNumberingSystemTypeLanguageTag(_effectiveNumberingSystem);
      OUTLINED_FUNCTION_2();
      v5 = [v4 dictionaryWithObjects:? forKeys:? count:?];
    }

    else
    {
      v5 = 0;
    }

    v6 = objc_alloc(MEMORY[0x1E696AAB0]);
    _timeString = [(CSProminentTimeView *)selfCopy _timeString];
    selfCopy = [v6 initWithString:_timeString attributes:v5];
  }

  return selfCopy;
}

- (void)_setPortrait:(uint64_t)portrait
{
  if (portrait)
  {
    v3 = a2 ? 1.0 : 0.0;
    [*(portrait + 528) value];
    if ((BSFloatEqualToFloat() & 1) == 0)
    {
      _currentAnimationSettings = [MEMORY[0x1E69DD250] _currentAnimationSettings];
      if (_currentAnimationSettings)
      {
        v7[0] = MEMORY[0x1E69E9820];
        v7[1] = 3221225472;
        v7[2] = __36__CSProminentTimeView__setPortrait___block_invoke;
        v7[3] = &unk_1E76B9E20;
        v7[4] = portrait;
        *&v7[5] = v3;
        v6[0] = MEMORY[0x1E69E9820];
        v6[1] = 3221225472;
        v6[2] = __36__CSProminentTimeView__setPortrait___block_invoke_2;
        v6[3] = &unk_1E76B9E48;
        v6[4] = portrait;
        [(CSProminentTimeView *)portrait _animateInProcessWithAnimationSettings:_currentAnimationSettings animations:v7 retarget:v6 completion:0];
      }

      else
      {
        v5[0] = MEMORY[0x1E69E9820];
        v5[1] = 3221225472;
        v5[2] = __36__CSProminentTimeView__setPortrait___block_invoke_3;
        v5[3] = &unk_1E76B9E20;
        v5[4] = portrait;
        *&v5[5] = v3;
        [MEMORY[0x1E69DD250] _performWithoutRetargetingAnimations:v5];
      }
    }
  }
}

- (id)_localeAccountingForNumberingSystem:(void *)system
{
  if (system)
  {
    autoupdatingCurrentLocale = [MEMORY[0x1E695DF58] autoupdatingCurrentLocale];
    v5 = CSTimeNumberingSystemTypeToString([system numberingSystem]);
    v6 = v5;
    if (a2 && v5)
    {
      currentLocale = [MEMORY[0x1E695DF58] currentLocale];
      localeIdentifier = [currentLocale localeIdentifier];

      v9 = [MEMORY[0x1E695DF58] componentsFromLocaleIdentifier:localeIdentifier];
      v10 = [v9 mutableCopy];

      [v10 setObject:v6 forKey:@"numbers"];
      v11 = [MEMORY[0x1E695DF58] localeIdentifierFromComponents:v10];
      v12 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:v11];

      autoupdatingCurrentLocale = v12;
    }
  }

  else
  {
    autoupdatingCurrentLocale = 0;
  }

  return autoupdatingCurrentLocale;
}

- (id)_correctedDateFormat
{
  if (self)
  {
    v1 = [(CSProminentTimeView *)self _localeAccountingForNumberingSystem:?];
    v2 = [MEMORY[0x1E698E670] formatterForDateAsTimeNoAMPMWithLocale:v1];
    dateFormat = [v2 dateFormat];
  }

  else
  {
    dateFormat = 0;
  }

  return dateFormat;
}

- (id)_selectFontForTextHeight:(void *)height
{
  if (height)
  {
    height = [(CSProminentTimeView *)height _selectFontForTextHeight:a2 updatingState:?];
    v2 = vars8;
  }

  return height;
}

- (uint64_t)timeFormatter
{
  if (result)
  {
    return *(result + 584);
  }

  return result;
}

- (void)setTimeFormatter:(uint64_t)formatter
{
  if (formatter)
  {
    objc_storeStrong((formatter + 584), a2);
  }
}

- (uint64_t)setBaseFont:(uint64_t)a3 .cold.1(id obj, id *location, uint64_t a3)
{
  objc_storeStrong(location, obj);
  v5 = [*location cs_variantWeight];
  [*(a3 + 536) value];
  if ((BSFloatEqualToFloat() & 1) == 0)
  {
    [*(a3 + 536) setValue:v5];
  }

  [(CSProminentTimeView *)a3 _queryFontAbilities];
  *(a3 + 506) = 1;

  return [a3 setNeedsLayout];
}

@end