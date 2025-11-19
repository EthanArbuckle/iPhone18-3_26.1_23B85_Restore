@interface CSProminentTimeView
+ (double)_lightVariantWeightForBaseFont:(uint64_t)a1;
+ (id)_fontVariantForBaseFont:(uint64_t)a3 weight:(void *)a4 size:;
+ (id)_lightVariantForBaseFont:(void *)a3 size:;
+ (id)_prominentFontFromBaseFont:(id)a3 usingLightVariant:(BOOL)a4 usingLandscapeVariant:(BOOL)a5;
+ (id)_prominentFontFromBaseFont:(id)a3 usingTextWeight:(double)a4 usingLandscapeVariant:(BOOL)a5;
- (BOOL)animatesTimeChanges;
- (BOOL)isVisible;
- (BOOL)supportsAdaptiveTextHeight;
- (BOOL)usesGlassMaterial;
- (CGSize)intrinsicContentSize;
- (CSProminentTimeView)initWithDate:(id)a3 baseFont:(id)a4 textColor:(id)a5;
- (CSProminentTimeView)initWithDate:(id)a3 font:(id)a4 textColor:(id)a5;
- (double)_baseTightTimeHeight;
- (double)_effectiveAdaptiveTextHeight;
- (double)_sizeForString:(void *)a3 font:;
- (double)_textLayoutInsetForPortrait:(uint64_t)a3 deviceCategory:;
- (double)_valueForPortrait:(uint64_t)a1;
- (double)_verticalLayoutExcessHeightForFont:(double)a3 labelSize:(double)a4;
- (double)maximumAdaptiveTextHeight;
- (double)minimumAdaptiveTextHeight;
- (double)relativeAdaptiveTextWidth;
- (double)timeChangeAnimationDuration;
- (id)_attributedTimeString;
- (id)_correctedDateFormat;
- (id)_effectiveNumberingSystem;
- (id)_localeAccountingForNumberingSystem:(void *)a1;
- (id)_selectFontForTextHeight:(double)a3 updatingState:;
- (id)_selectFontForTextHeight:(void *)a1;
- (id)_timeString;
- (int64_t)glassInterfaceStyle;
- (uint64_t)_effectiveAdaptsTextHeight;
- (uint64_t)timeFormatter;
- (unsigned)_activeFontForMeasurements;
- (void)_animateInProcessWithAnimationSettings:(void *)a3 animations:(void *)a4 retarget:(void *)a5 completion:;
- (void)_attemptTimeAnimationUpdate;
- (void)_attemptTimeMaterialUpdate;
- (void)_createPropertyTransformer;
- (void)_isPortrait;
- (void)_queryFontAbilities;
- (void)_selectFontForTextHeight:(double)a3 portraitFraction:(double)a4 textWeight:;
- (void)_setNeedsFontUpdate;
- (void)_setPortrait:(uint64_t)a1;
- (void)_updateAdaptiveFontProviderConfiguration;
- (void)_updateCurrentFont;
- (void)_updateTimeFormatter;
- (void)_updateTimeFormatterNumberingSystem;
- (void)_updateTimeString;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setAdaptiveTextHeight:(double)a3;
- (void)setAdaptsTextHeight:(BOOL)a3;
- (void)setAnimatesTimeChanges:(BOOL)a3;
- (void)setBaseFont:(id)a3;
- (void)setCanShowSensitiveUI:(BOOL)a3;
- (void)setContextHasSidebarContents:(BOOL)a3;
- (void)setDate:(id)a3;
- (void)setGlassInterfaceStyle:(int64_t)a3;
- (void)setNumberingSystem:(int64_t)a3;
- (void)setTimeFormatter:(uint64_t)a1;
- (void)setUsesGlassMaterial:(BOOL)a3;
- (void)setUsesLandscapeTimeFontVariant:(BOOL)a3;
- (void)setUsesLightTimeFontVariant:(BOOL)a3 response:(double)a4;
- (void)setVisible:(BOOL)a3;
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
    v5 = [(CSProminentTextElementView *)self primaryFont];
    [v5 ascender];
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
      v2 = [v1[73] locale];
      v3 = [v2 _numberingSystem];
      v4 = CSTimeNumberingSystemStringToType(v3);

      return v4;
    }
  }

  return result;
}

- (void)_updateTimeString
{
  v3 = [(CSProminentTextElementView *)self textLabel];
  v4 = objc_opt_respondsToSelector();

  v5 = [(CSProminentTextElementView *)self textLabel];
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

  v6 = [(CSProminentTimeView *)&self->super.super.super.super.super.isa _timeString];
  v7 = [v6 length] > 4;

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
  v1 = a1;
  if (a1)
  {
    v2 = [a1 date];
    if (v2)
    {
      v1 = [v1[73] stringFromDate:v2];
    }

    else
    {
      v1 = &stru_1F158DED0;
    }
  }

  return v1;
}

- (void)_setNeedsFontUpdate
{
  if (a1)
  {
    *(a1 + 506) = 1;
    return [a1 setNeedsLayout];
  }

  return a1;
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

  v3 = [(CSProminentTextElementView *)self textLabel];
  v4 = [(CSProminentTimeView *)self supportsAdaptiveTextHeight];
  v5 = 0.5;
  if (v4)
  {
    v6 = [(CSProminentTimeView *)self adaptsTextHeight];
    v5 = 0.5;
    if (v6)
    {
      v5 = 1.0;
    }
  }

  [v3 setMinimumScaleFactor:v5];

  v7 = [(CSProminentTextElementView *)self textLabel];
  v8 = [v7 textAlignment];

  if (v8 == 1)
  {
    [(CSProminentTimeView *)self bounds];
    v10 = v9;
    v11 = [(CSProminentTimeView *)self _activeFontForMeasurements];
    v12 = [(CSProminentTextElementView *)self textLabel];
    v13 = [v12 text];
    v14 = [(CSProminentTimeView *)self _sizeForString:v13 font:v11];
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
    v19 = [(CSProminentTimeView *)self traitCollection];
    [v19 displayScale];

    v20 = -self->_baselineAdjustment;
    if (![(CSProminentTimeView *)self supportsAdaptiveTextHeight]|| ![(CSProminentTimeView *)self adaptsTextHeight])
    {
      BSPointRoundForScale();
      v18 = v21;
      v20 = v22;
    }

    v23 = [(CSProminentTextElementView *)self textLabel];
    [v23 setFrame:{v18, v20, v14, v16}];
  }
}

- (void)_updateAdaptiveFontProviderConfiguration
{
  if (a1)
  {
    v2 = +[CSDeviceDetermination effectiveCategory];
    v3 = [a1 window];
    [v3 bounds];
    v5 = v4;
    v7 = v6;

    v8 = [(CSProminentTimeView *)a1 _textLayoutInsetForPortrait:v2 deviceCategory:?];
    v9 = [(CSProminentTimeView *)a1 _textLayoutInsetForPortrait:v2 deviceCategory:?];
    v10 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v10 _referenceBounds];
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
    v27 = [(CSProminentTimeView *)a1 _attributedTimeString];
    v28 = [CSAdaptiveFontLayoutContext layoutContextWithPortrait:v7 >= v5 deviceCategory:v2 maximumWidthPortrait:v25 maximumWidthLandscape:v26 text:v27];

    if ([*(a1 + 488) updateLayoutContext:v28])
    {
      [(CSProminentTimeView *)a1 _setPortrait:?];
      *(a1 + 506) = 1;
      [a1 setNeedsLayout];
    }
  }
}

- (void)_isPortrait
{
  if (result)
  {
    v1 = [result window];
    [v1 bounds];
    v3 = v2;
    v5 = v4;

    return (v5 >= v3);
  }

  return result;
}

- (void)_updateCurrentFont
{
  if (a1)
  {
    [a1 minimumAdaptiveTextHeight];
    v3 = v2;
    [a1 maximumAdaptiveTextHeight];
    [a1 adaptiveTextHeight];
    v5 = OUTLINED_FUNCTION_1(v4);
    if (v6)
    {
      v3 = v5;
    }

    [a1[66] presentationValue];
    v8 = v7;
    [a1[67] presentationValue];
    v10 = [(CSProminentTimeView *)a1 _selectFontForTextHeight:v3 portraitFraction:v8 textWeight:v9];
    [a1 setPrimaryFont:v10];
  }
}

- (double)_effectiveAdaptiveTextHeight
{
  if (!a1)
  {
    return 0.0;
  }

  [a1 minimumAdaptiveTextHeight];
  v3 = v2;
  [a1 maximumAdaptiveTextHeight];
  [a1 adaptiveTextHeight];
  result = OUTLINED_FUNCTION_1(v4);
  if (!v6)
  {
    return v3;
  }

  return result;
}

- (unsigned)_activeFontForMeasurements
{
  v1 = a1;
  if (a1)
  {
    if ([a1 supportsAdaptiveTextHeight] && objc_msgSend(v1, "adaptsTextHeight"))
    {
      v2 = [v1 textLabel];
      v1 = [v2 font];
    }

    else
    {
      v1 = [objc_opt_class() _prominentFontFromBaseFont:*(v1 + 71) usingLightVariant:0 usingLandscapeVariant:v1[556]];
    }
  }

  return v1;
}

- (CSProminentTimeView)initWithDate:(id)a3 font:(id)a4 textColor:(id)a5
{
  v16.receiver = self;
  v16.super_class = CSProminentTimeView;
  v5 = [(CSProminentTextElementView *)&v16 initWithDate:a3 font:a4 textColor:a5];
  v6 = v5;
  if (v5)
  {
    [(CSProminentTimeView *)v5 _updateTimeFormatter];
    v8 = [(CSProminentTextElementView *)v6 textLabel];
    v9 = objc_opt_respondsToSelector();

    if (v9)
    {
      v10 = [(CSProminentTextElementView *)v6 textLabel];
      [v10 setAdjustsFontSizeToFitWidth:1];
    }

    v11 = [(CSProminentTextElementView *)v6 textLabel];
    v12 = objc_opt_respondsToSelector();

    if (v12)
    {
      v13 = [(CSProminentTextElementView *)v6 textLabel];
      [v13 setAnimatesChanges:0];
    }

    v14 = [MEMORY[0x1E696AD88] defaultCenter];
    [v14 addObserver:v6 selector:sel_currentLocaleDidChange_ name:*MEMORY[0x1E695D8F0] object:0];

    v15 = [MEMORY[0x1E696AD88] defaultCenter];
    [v15 addObserver:v6 selector:sel__updateTimeString name:*MEMORY[0x1E695DA68] object:0];
  }

  return v6;
}

- (CSProminentTimeView)initWithDate:(id)a3 baseFont:(id)a4 textColor:(id)a5
{
  v9 = a4;
  v10 = a5;
  v11 = a3;
  v12 = [objc_opt_class() _prominentFontFromBaseFont:v9 usingLightVariant:self->_usesLightTimeFontVariant usingLandscapeVariant:0];
  v13 = [(CSProminentTimeView *)self initWithDate:v11 font:v12 textColor:v10];

  if (v13)
  {
    objc_storeStrong(&v13->_baseFont, a4);
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
    v22 = [(CSProminentTimeView *)v13 window];
    [v22 bounds];
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

- (double)_valueForPortrait:(uint64_t)a1
{
  result = 0.0;
  v3 = 1.0;
  if (!a2)
  {
    v3 = 0.0;
  }

  if (a1)
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
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

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

- (void)setCanShowSensitiveUI:(BOOL)a3
{
  if (self->_canShowSensitiveUI != a3)
  {
    self->_canShowSensitiveUI = a3;
    self->_needsFontUpdate = 1;
    [(CSProminentTimeView *)self setNeedsLayout];
    [(CSProminentTimeView *)self _attemptTimeAnimationUpdate];

    [(CSProminentTimeView *)self _attemptTimeMaterialUpdate];
  }
}

- (void)setUsesLightTimeFontVariant:(BOOL)a3 response:(double)a4
{
  if ((BSEqualBools() & 1) == 0)
  {
    self->_usesLightTimeFontVariant = a3;
    v7 = [(UIFont *)self->_adaptiveBaseFont cs_variantWeight];
    v8 = [CSProminentTimeView _lightVariantWeightForBaseFont:?];
    if (self->_usesLightTimeFontVariant)
    {
      v7 = v8;
    }

    [(UIViewFloatAnimatableProperty *)self->_weightProperty value];
    if ((BSFloatEqualToFloat() & 1) == 0)
    {
      v9 = [MEMORY[0x1E69DD250] _currentAnimationSettings];
      if (v9)
      {
        v10 = v9;
        if (a4 > 0.0)
        {
          v11 = MEMORY[0x1E698E608];
          v12 = [v9 timingFunction];
          v13 = [v11 settingsWithDuration:v12 timingFunction:a4];

          v10 = v13;
        }

        v16[0] = MEMORY[0x1E69E9820];
        v16[1] = 3221225472;
        v16[2] = __60__CSProminentTimeView_setUsesLightTimeFontVariant_response___block_invoke;
        v16[3] = &unk_1E76B9E20;
        v16[4] = self;
        *&v16[5] = v7;
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
        *&v14[5] = v7;
        [MEMORY[0x1E69DD250] _performWithoutRetargetingAnimations:v14];
        self->_needsFontUpdate = 1;
        [(CSProminentTimeView *)self setNeedsLayout];
      }
    }
  }
}

+ (double)_lightVariantWeightForBaseFont:(uint64_t)a1
{
  v2 = a2;
  objc_opt_self();
  v3 = -1.0;
  if ([v2 cs_supportsVariantWeights])
  {
    v3 = [v2 cs_variantWeightRange];
    v5 = (v4 - v3) * -0.1;
    v6 = [v2 cs_variantWeight];
    if (v6 + v5 >= v3)
    {
      v3 = v6 + v5;
    }
  }

  return v3;
}

uint64_t __60__CSProminentTimeView_setUsesLightTimeFontVariant_response___block_invoke_2(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 536);
  [v1 presentationValue];

  return [v1 setValue:?];
}

- (void)setUsesLandscapeTimeFontVariant:(BOOL)a3
{
  v5 = [MEMORY[0x1E698E730] sharedInstance];
  v6 = [v5 deviceClass];

  if (v6 == 2)
  {
    a3 = 0;
  }

  if ((BSEqualBools() & 1) == 0)
  {
    self->_usesLandscapeTimeFontVariant = a3;
    self->_needsFontUpdate = 1;

    [(CSProminentTimeView *)self setNeedsLayout];
  }
}

- (BOOL)animatesTimeChanges
{
  v3 = [(CSProminentTextElementView *)self textLabel];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = [(CSProminentTextElementView *)self textLabel];
  v6 = [v5 animatesChanges];

  return v6;
}

- (void)setAnimatesTimeChanges:(BOOL)a3
{
  if (self->_wantsTimeAnimation != a3)
  {
    self->_wantsTimeAnimation = a3;
    [(CSProminentTimeView *)self _attemptTimeAnimationUpdate];
  }
}

- (double)timeChangeAnimationDuration
{
  if (![(CSProminentTimeView *)self animatesTimeChanges])
  {
    return 0.0;
  }

  v3 = [(CSProminentTextElementView *)self textLabel];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 0.0;
  }

  v5 = [(CSProminentTextElementView *)self textLabel];
  [v5 timeWipeTransitionDuration];
  v7 = v6;

  return v7;
}

- (BOOL)usesGlassMaterial
{
  v2 = [(CSProminentTextElementView *)self textLabel];
  if (objc_opt_respondsToSelector())
  {
    v3 = [v2 usesGlassMaterial];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setUsesGlassMaterial:(BOOL)a3
{
  if (self->_wantsGlassMaterial != a3)
  {
    self->_wantsGlassMaterial = a3;
    [(CSProminentTimeView *)self _attemptTimeMaterialUpdate];
  }
}

- (void)setContextHasSidebarContents:(BOOL)a3
{
  if (self->_contextHasSidebarContents != a3)
  {
    self->_contextHasSidebarContents = a3;
    [(CSProminentTimeView *)self _updateAdaptiveFontProviderConfiguration];
  }
}

- (BOOL)isVisible
{
  v3 = [(CSProminentTextElementView *)self textLabel];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = [(CSProminentTextElementView *)self textLabel];
  v6 = [v5 isVisible];

  return v6;
}

- (void)setVisible:(BOOL)a3
{
  v3 = a3;
  v5 = [(CSProminentTextElementView *)self textLabel];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(CSProminentTextElementView *)self textLabel];
    [v7 setVisible:v3];
  }
}

- (void)setBaseFont:(id)a3
{
  obj = a3;
  if ((BSEqualObjects() & 1) == 0)
  {
    [(CSProminentTimeView *)obj setBaseFont:self];
  }
}

- (void)setNumberingSystem:(int64_t)a3
{
  if (self->_numberingSystem != a3)
  {
    self->_numberingSystem = a3;
    [(CSProminentTimeView *)self _updateTimeFormatterNumberingSystem];
  }
}

- (void)setAdaptsTextHeight:(BOOL)a3
{
  if (self->_adaptsTextHeight != a3)
  {
    self->_adaptsTextHeight = a3;
    self->_needsFontUpdate = 1;
    [(CSProminentTimeView *)self setNeedsLayout];
  }
}

- (void)setAdaptiveTextHeight:(double)a3
{
  if (self->_adaptiveTextHeight != a3)
  {
    v16[6] = v6;
    v16[7] = v5;
    v16[12] = v3;
    v16[13] = v4;
    self->_adaptiveTextHeight = a3;
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
      v13 = [MEMORY[0x1E69DD250] _currentAnimationSettings];
      if (v13)
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
        [(CSProminentTimeView *)self _animateInProcessWithAnimationSettings:v13 animations:v16 retarget:v15 completion:0];
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

- (void)setGlassInterfaceStyle:(int64_t)a3
{
  v5 = [(CSProminentTextElementView *)self textLabel];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(CSProminentTextElementView *)self textLabel];
    [v7 setGlassInterfaceStyle:a3];
  }
}

- (int64_t)glassInterfaceStyle
{
  v3 = [(CSProminentTextElementView *)self textLabel];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = [(CSProminentTextElementView *)self textLabel];
  v6 = [v5 glassInterfaceStyle];

  return v6;
}

uint64_t __36__CSProminentTimeView__setPortrait___block_invoke_2(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 528);
  [v1 presentationValue];

  return [v1 setValue:?];
}

- (void)setDate:(id)a3
{
  v4 = a3;
  v5 = [(CSProminentTextElementView *)self date];
  v7.receiver = self;
  v7.super_class = CSProminentTimeView;
  [(CSProminentTextElementView *)&v7 setDate:v4];
  v6 = BSEqualObjects();

  if ((v6 & 1) == 0)
  {
    [(CSProminentTimeView *)self _updateTimeString];
  }
}

- (CGSize)intrinsicContentSize
{
  v2 = [(CSProminentTextElementView *)self textLabel];
  v3 = [v2 view];
  [v3 intrinsicContentSize];
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

+ (id)_prominentFontFromBaseFont:(id)a3 usingTextWeight:(double)a4 usingLandscapeVariant:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = [MEMORY[0x1E69DB878] systemFontOfSize:0.0];
  }

  v11 = v10;
  +[CSProminentLayoutController fontSizeForElementType:isLandscapeVariant:](CSProminentLayoutController, "fontSizeForElementType:isLandscapeVariant:", [a1 elementType], v5);
  v13 = [(CSProminentTimeView *)a4 _fontVariantForBaseFont:v12 weight:a1 size:v11];

  return v13;
}

+ (id)_fontVariantForBaseFont:(uint64_t)a3 weight:(void *)a4 size:
{
  v6 = a4;
  objc_opt_self();
  if (a1 >= 0.0 && ([v6 cs_supportsVariantWeights] & 1) != 0)
  {
    v7 = [v6 cs_fontWithVariantWeight:a1];
    v8 = [v7 fontWithSize:a2];
  }

  else
  {
    v8 = [v6 fontWithSize:a2];
  }

  return v8;
}

+ (id)_prominentFontFromBaseFont:(id)a3 usingLightVariant:(BOOL)a4 usingLandscapeVariant:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v8 = a3;
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = [MEMORY[0x1E69DB878] systemFontOfSize:0.0];
  }

  v11 = v10;
  +[CSProminentLayoutController fontSizeForElementType:isLandscapeVariant:](CSProminentLayoutController, "fontSizeForElementType:isLandscapeVariant:", [a1 elementType], v5);
  v13 = v12;
  if (v6)
  {
    v14 = [(CSProminentTimeView *)v12 _lightVariantForBaseFont:a1 size:v11];
  }

  else
  {
    v15 = [v11 fontDescriptor];
    v14 = [MEMORY[0x1E69DB878] fontWithDescriptor:v15 size:v13];
  }

  return v14;
}

+ (id)_lightVariantForBaseFont:(void *)a3 size:
{
  v4 = a3;
  v5 = objc_opt_self();
  v6 = [(CSProminentTimeView *)v5 _lightVariantWeightForBaseFont:v4];
  v7 = [(CSProminentTimeView *)v6 _fontVariantForBaseFont:a1 weight:v5 size:v4];

  return v7;
}

- (void)_updateTimeFormatter
{
  if (a1)
  {
    v2 = [MEMORY[0x1E698E670] sharedInstance];
    [v2 resetFormattersIfNecessary];

    v5 = [(CSProminentTimeView *)a1 _localeAccountingForNumberingSystem:?];
    v3 = [MEMORY[0x1E698E670] formatterForDateAsTimeNoAMPMWithLocale:v5];
    v4 = a1[73];
    a1[73] = v3;

    [(CSProminentTimeView *)a1 _correctedDateFormat];
    objc_claimAutoreleasedReturnValue();
    [OUTLINED_FUNCTION_0_0() setDateFormat:?];

    [a1 _updateTimeString];
  }
}

- (void)_queryFontAbilities
{
  if (a1)
  {
    v2 = [CSAdaptiveFontProvider providerForBaseFont:*(a1 + 568)];
    v3 = *(a1 + 488);
    *(a1 + 488) = v2;

    v4 = [*(a1 + 488) adaptiveBaseFont];
    v5 = v4;
    if (!v4)
    {
      v4 = *(a1 + 568);
    }

    objc_storeStrong((a1 + 496), v4);
  }
}

- (uint64_t)_effectiveAdaptsTextHeight
{
  if (!a1 || ![a1 supportsAdaptiveTextHeight])
  {
    return 0;
  }

  return [a1 adaptsTextHeight];
}

- (double)_sizeForString:(void *)a3 font:
{
  if (!a1)
  {
    return 0.0;
  }

  v5 = a3;
  v6 = a2;
  [a1 bounds];
  v8 = v7;
  v10 = v9;
  OUTLINED_FUNCTION_2();
  v12 = [v11 dictionaryWithObjects:? forKeys:? count:?];

  [v6 boundingRectWithSize:0 options:v12 attributes:0 context:{v8, v10}];
  v14 = v13;

  return v14;
}

- (void)_selectFontForTextHeight:(double)a3 portraitFraction:(double)a4 textWeight:
{
  v4 = a1;
  if (a1)
  {
    if ([a1 supportsAdaptiveTextHeight] && objc_msgSend(v4, "adaptsTextHeight"))
    {
      v8 = [objc_opt_class() _prominentFontFromBaseFont:v4[62] usingTextWeight:*(v4 + 556) usingLandscapeVariant:a4];
      v9 = v4[61];
      v10 = [v4 textLabel];
      v11 = [v10 text];
      v4 = [v9 fontFromFont:v8 forHeight:v11 portraitFraction:v4 + 64 string:a2 baselineAdjustment:a3];
    }

    else
    {
      v10 = [(CSProminentTimeView *)v4 _selectFontForTextHeight:a2];
      v4 = [v10 cs_fontWithVariantWeight:a4];
    }
  }

  return v4;
}

- (double)_verticalLayoutExcessHeightForFont:(double)a3 labelSize:(double)a4
{
  v6 = a2;
  v7 = 0.0;
  if (a1 && [a1 supportsAdaptiveTextHeight] && objc_msgSend(a1, "adaptsTextHeight"))
  {
    [a1 minimumAdaptiveTextHeight];
    v9 = v8;
    [a1 maximumAdaptiveTextHeight];
    v11 = v10;
    [a1 adaptiveTextHeight];
    if (v11 < v12)
    {
      v12 = v11;
    }

    if (v9 >= v12)
    {
      v12 = v9;
    }

    v13 = v12 - a4;
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
  if (a1)
  {
    v2 = [a1 textLabel];
    v3 = objc_opt_respondsToSelector();

    if (v3)
    {
      if (_os_feature_enabled_impl())
      {
        v4 = a1[552];
      }

      else
      {
        v4 = 0;
      }

      v5 = [a1 textLabel];
      [v5 setAnimatesChanges:a1[504] & v4 & 1];
    }
  }
}

- (void)_attemptTimeMaterialUpdate
{
  v8 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = [a1 textLabel];
    if (objc_opt_respondsToSelector())
    {
      v3 = [MEMORY[0x1E695E000] standardUserDefaults];
      v4 = [v3 BOOLForKey:@"SBDisallowGlassTime"];

      v5 = CSLogCommon();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        v7[0] = 67109120;
        v7[1] = v4;
        _os_log_debug_impl(&dword_1A2D63000, v5, OS_LOG_TYPE_DEBUG, "CSProminentTimeView disallowGlassTime: %{BOOL}u", v7, 8u);
      }

      if (_os_feature_enabled_impl() && _os_feature_enabled_impl())
      {
        v6 = a1[552] & (v4 ^ 1);
      }

      else
      {
        v6 = 0;
      }

      [v2 setUsesGlassMaterial:a1[505] & v6 & 1];
    }
  }
}

- (void)_animateInProcessWithAnimationSettings:(void *)a3 animations:(void *)a4 retarget:(void *)a5 completion:
{
  v12 = a2;
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (a1)
  {
    if (([v12 isSpringAnimation] & 1) == 0)
    {
      [MEMORY[0x1E69DD250] cs_animateInProcessWithSettings:v12 animations:v10];
    }

    [MEMORY[0x1E69DD250] cs_animateInProcessWithSettings:v12 animations:v9 completion:v11];
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
    v13 = [(CSProminentTextElementView *)self textLabel];
    v14 = [v13 text];
    v24 = *MEMORY[0x1E69DB648];
    v25[0] = v10;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v24 count:1];
    [v14 boundingRectWithSize:0 options:v15 attributes:0 context:{INFINITY, INFINITY}];
    v17 = v16;

    v18 = [(CSProminentTextElementView *)self textLabel];
    v19 = [v18 text];
    OUTLINED_FUNCTION_2();
    v21 = [v20 dictionaryWithObjects:? forKeys:? count:?];
    [v19 boundingRectWithSize:0 options:v21 attributes:0 context:{INFINITY, INFINITY}];
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

- (id)_selectFontForTextHeight:(double)a3 updatingState:
{
  if (a1)
  {
    if ([a1 supportsAdaptiveTextHeight] && objc_msgSend(a1, "adaptsTextHeight"))
    {
      v6 = [objc_opt_class() _prominentFontFromBaseFont:*(a1 + 496) usingLightVariant:*(a1 + 555) usingLandscapeVariant:*(a1 + 556)];
      v12 = 0;
      v7 = *(a1 + 488);
      v8 = [a1 textLabel];
      v9 = [v8 text];
      v10 = [v7 fontFromFont:v6 forHeight:v9 string:&v12 baselineAdjustment:a3];

      if (a2)
      {
        *(a1 + 512) = v12;
      }
    }

    else
    {
      if (a2)
      {
        *(a1 + 512) = 0;
      }

      v10 = [objc_opt_class() _prominentFontFromBaseFont:*(a1 + 568) usingLightVariant:*(a1 + 555) usingLandscapeVariant:*(a1 + 556)];
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
  if (!a1)
  {
    return 0.0;
  }

  [CSProminentLayoutController frameForElements:1 variant:1 forcePortraitBounds:0];
  return v1;
}

- (double)_textLayoutInsetForPortrait:(uint64_t)a3 deviceCategory:
{
  if (!a1)
  {
    return 0.0;
  }

  v4 = a2;
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d-%d-%d", a2, a3, *(a1 + 553)];
  v7 = [*(a1 + 544) objectForKeyedSubscript:v6];
  v8 = v7;
  if (v7)
  {
    [v7 bs_CGFloatValue];
    v10 = v9;
  }

  else
  {
    v11 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v11 _referenceBounds];
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

    [CSProminentLayoutController adaptiveTimeWidthInsetForOrientation:v25 deviceCategory:a3 hasSidebarContents:*(a1 + 553) boundingWidth:Width];
    v10 = v26;
    if (!*(a1 + 544))
    {
      v27 = [MEMORY[0x1E695DF90] dictionary];
      v28 = *(a1 + 544);
      *(a1 + 544) = v27;
    }

    v29 = [MEMORY[0x1E696AD98] numberWithDouble:v10];
    [*(a1 + 544) setObject:v29 forKeyedSubscript:v6];
  }

  return v10;
}

- (id)_attributedTimeString
{
  v1 = a1;
  if (a1)
  {
    v2 = [(CSProminentTimeView *)a1 _effectiveNumberingSystem];
    if (CSTimeNumberingSystemTypeRequiresLanguageTagging(v2))
    {
      v3 = CSTimeNumberingSystemTypeLanguageTag(v2);
      OUTLINED_FUNCTION_2();
      v5 = [v4 dictionaryWithObjects:? forKeys:? count:?];
    }

    else
    {
      v5 = 0;
    }

    v6 = objc_alloc(MEMORY[0x1E696AAB0]);
    v7 = [(CSProminentTimeView *)v1 _timeString];
    v1 = [v6 initWithString:v7 attributes:v5];
  }

  return v1;
}

- (void)_setPortrait:(uint64_t)a1
{
  if (a1)
  {
    v3 = a2 ? 1.0 : 0.0;
    [*(a1 + 528) value];
    if ((BSFloatEqualToFloat() & 1) == 0)
    {
      v4 = [MEMORY[0x1E69DD250] _currentAnimationSettings];
      if (v4)
      {
        v7[0] = MEMORY[0x1E69E9820];
        v7[1] = 3221225472;
        v7[2] = __36__CSProminentTimeView__setPortrait___block_invoke;
        v7[3] = &unk_1E76B9E20;
        v7[4] = a1;
        *&v7[5] = v3;
        v6[0] = MEMORY[0x1E69E9820];
        v6[1] = 3221225472;
        v6[2] = __36__CSProminentTimeView__setPortrait___block_invoke_2;
        v6[3] = &unk_1E76B9E48;
        v6[4] = a1;
        [(CSProminentTimeView *)a1 _animateInProcessWithAnimationSettings:v4 animations:v7 retarget:v6 completion:0];
      }

      else
      {
        v5[0] = MEMORY[0x1E69E9820];
        v5[1] = 3221225472;
        v5[2] = __36__CSProminentTimeView__setPortrait___block_invoke_3;
        v5[3] = &unk_1E76B9E20;
        v5[4] = a1;
        *&v5[5] = v3;
        [MEMORY[0x1E69DD250] _performWithoutRetargetingAnimations:v5];
      }
    }
  }
}

- (id)_localeAccountingForNumberingSystem:(void *)a1
{
  if (a1)
  {
    v4 = [MEMORY[0x1E695DF58] autoupdatingCurrentLocale];
    v5 = CSTimeNumberingSystemTypeToString([a1 numberingSystem]);
    v6 = v5;
    if (a2 && v5)
    {
      v7 = [MEMORY[0x1E695DF58] currentLocale];
      v8 = [v7 localeIdentifier];

      v9 = [MEMORY[0x1E695DF58] componentsFromLocaleIdentifier:v8];
      v10 = [v9 mutableCopy];

      [v10 setObject:v6 forKey:@"numbers"];
      v11 = [MEMORY[0x1E695DF58] localeIdentifierFromComponents:v10];
      v12 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:v11];

      v4 = v12;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_correctedDateFormat
{
  if (a1)
  {
    v1 = [(CSProminentTimeView *)a1 _localeAccountingForNumberingSystem:?];
    v2 = [MEMORY[0x1E698E670] formatterForDateAsTimeNoAMPMWithLocale:v1];
    v3 = [v2 dateFormat];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)_selectFontForTextHeight:(void *)a1
{
  if (a1)
  {
    a1 = [(CSProminentTimeView *)a1 _selectFontForTextHeight:a2 updatingState:?];
    v2 = vars8;
  }

  return a1;
}

- (uint64_t)timeFormatter
{
  if (result)
  {
    return *(result + 584);
  }

  return result;
}

- (void)setTimeFormatter:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 584), a2);
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