@interface NTKCircularComplicationView
+ (id)_alarmImageProviderMedium:(BOOL)medium;
+ (id)_stopwatchImageProviderMedium:(BOOL)medium;
+ (id)_timerImageProviderMedium:(BOOL)medium;
+ (id)mediumViewForComplicationType:(unint64_t)type;
+ (id)viewForComplicationType:(unint64_t)type;
- ($E9F9932C2E83887F19F61B86DCD1B4AC)_layoutConstants;
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (CDComplicationDisplayObserver)displayObserver;
- (NTKCircularComplicationView)initWithFrame:(CGRect)frame;
- (id)_fontForDynamicFontSize:(int64_t)size;
- (id)_mediumStackFontForText:(id)text;
- (id)_newLabelSubviewWithFont:(id)font;
- (int64_t)_variableFontSizeForText:(id)text;
- (void)_updateColorChange;
- (void)_updateForegroundColor;
- (void)_updateImageViewColor:(id)color;
- (void)_updateLabelViewColor:(id)color;
- (void)layoutSubviews;
- (void)setComplicationTemplate:(id)template reason:(int64_t)reason;
- (void)setForegroundColor:(id)color;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setPlatterColor:(id)color;
- (void)setTimeTravelDate:(id)date animated:(BOOL)animated;
- (void)setUseRoundedFontDesign:(BOOL)design;
- (void)setUsesMediumLayout:(BOOL)layout;
- (void)setWantsPlatter:(BOOL)platter;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation NTKCircularComplicationView

+ (id)viewForComplicationType:(unint64_t)type
{
  v3 = objc_alloc_init(_ViewClassForComplicationType(type));

  return v3;
}

+ (id)mediumViewForComplicationType:(unint64_t)type
{
  if (type == 7)
  {
    objc_opt_class();
  }

  else
  {
    _ViewClassForComplicationType(type);
  }

  v3 = objc_alloc_init(objc_claimAutoreleasedReturnValue());
  [v3 setUsesMediumLayout:1];

  return v3;
}

- (NTKCircularComplicationView)initWithFrame:(CGRect)frame
{
  v10.receiver = self;
  v10.super_class = NTKCircularComplicationView;
  v3 = [(NTKCircularComplicationView *)&v10 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = +[(CLKRenderingContext *)NTKFaceViewRenderingContext];
    device = [v4 device];
    device = v3->_device;
    v3->_device = device;

    v7 = objc_alloc_init(MEMORY[0x277D75D18]);
    highlightView = v3->_highlightView;
    v3->_highlightView = v7;

    [(UIView *)v3->_highlightView setAlpha:0.0];
    [(UIView *)v3->_highlightView setUserInteractionEnabled:0];
    [(NTKCircularComplicationView *)v3 addSubview:v3->_highlightView];
    [(NTKCircularComplicationView *)v3 setWantsPlatter:1];
    [(NTKCircularComplicationView *)v3 _computeForegroundColor];
    [(NTKCircularComplicationView *)v3 _computePlatterColor];
  }

  return v3;
}

- (void)layoutSubviews
{
  [(NTKCircularComplicationView *)self bounds];
  v7 = v3;
  v8 = v4;
  v9 = v5;
  v10 = v6;
  platter = self->_platter;
  if (platter)
  {
    [(UIView *)platter setFrame:v3, v4, v5, v6];
    layer = [(UIView *)self->_platter layer];
    v13 = v9 * 0.5;
    [layer setCornerRadius:v9 * 0.5];

    [(NTKCircularComplicationView *)self sendSubviewToBack:self->_platter];
  }

  else
  {
    v13 = v5 * 0.5;
  }

  [(UIView *)self->_highlightView setFrame:v7, v8, v9, v10];
  layer2 = [(UIView *)self->_highlightView layer];
  [layer2 setCornerRadius:v13];

  highlightView = self->_highlightView;

  [(NTKCircularComplicationView *)self bringSubviewToFront:highlightView];
}

- (void)traitCollectionDidChange:(id)change
{
  v4.receiver = self;
  v4.super_class = NTKCircularComplicationView;
  [(NTKCircularComplicationView *)&v4 traitCollectionDidChange:change];
  [(NTKCircularComplicationView *)self setNeedsLayout];
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  [(NTKCircularComplicationView *)self bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  [(NTKCircularComplicationView *)self _layoutConstants];
  v21.origin.x = v8 + v17;
  v21.origin.y = v10 + v16;
  v21.size.width = v12 - (v17 + v19);
  v21.size.height = v14 - (v16 + v18);
  v20.x = x;
  v20.y = y;
  return CGRectContainsPoint(v21, v20);
}

- (void)setWantsPlatter:(BOOL)platter
{
  self->_wantsPlatter = platter;
  platter = self->_platter;
  if (platter)
  {
    if (!platter)
    {
      v6 = objc_alloc_init(MEMORY[0x277D75D18]);
      v7 = self->_platter;
      self->_platter = v6;

      [(UIView *)self->_platter setBackgroundColor:self->_platterColor];
      [(UIView *)self->_platter setUserInteractionEnabled:0];
      [(NTKCircularComplicationView *)self addSubview:self->_platter];
      v8 = self->_platter;

      [(NTKCircularComplicationView *)self sendSubviewToBack:v8];
    }
  }

  else
  {
    [(UIView *)platter removeFromSuperview];
    v5 = self->_platter;
    self->_platter = 0;
  }
}

- (void)_updateForegroundColor
{
  highlightView = self->_highlightView;
  v4 = [(UIColor *)self->_computedForegroundColor colorWithAlphaComponent:0.4];
  [(UIView *)highlightView setBackgroundColor:v4];

  [(NTKCircularComplicationView *)self _updateColorChange];
}

- (void)setForegroundColor:(id)color
{
  colorCopy = color;
  if (([colorCopy isEqual:self->_foregroundColor] & 1) == 0)
  {
    objc_storeStrong(&self->_foregroundColor, color);
    [(NTKCircularComplicationView *)self _computeForegroundColor];
    [(NTKCircularComplicationView *)self _updateForegroundColor];
  }
}

- (void)setPlatterColor:(id)color
{
  objc_storeStrong(&self->_platterColor, color);
  [(NTKCircularComplicationView *)self _computePlatterColor];

  [(NTKCircularComplicationView *)self _updatePlatterColor];
}

- (void)setUseRoundedFontDesign:(BOOL)design
{
  if (self->_useRoundedFontDesign != design)
  {
    self->_useRoundedFontDesign = design;
    [(NTKCircularComplicationView *)self _updateLabelsForFontChange];
  }
}

- (void)setUsesMediumLayout:(BOOL)layout
{
  if (self->_usesMediumLayout != layout)
  {
    self->_usesMediumLayout = layout;
    [(NTKCircularComplicationView *)self _updateLabelsForFontChange];

    [(NTKCircularComplicationView *)self setNeedsLayout];
  }
}

- (void)_updateColorChange
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __49__NTKCircularComplicationView__updateColorChange__block_invoke;
  v3[3] = &unk_278782C88;
  v3[4] = self;
  [(NTKCircularComplicationView *)self _enumerateForegroundColoringViewsWithBlock:v3];
  [(NTKCircularComplicationView *)self _updateForTemplateChange];
}

void __49__NTKCircularComplicationView__updateColorChange__block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [*(a1 + 32) usesMultiColor];
  if ((v3 & 1) == 0)
  {
    v4 = [*(a1 + 32) _computedForegroundColor];
    [v6 setColor:v4];
  }

  if (objc_opt_respondsToSelector())
  {
    v5 = 1.0;
    if (v3)
    {
      v5 = 0.0;
    }

    [v6 transitionToMonochromeWithFraction:v5];
  }
}

- (void)_updateImageViewColor:(id)color
{
  colorCopy = color;
  imageProvider = [colorCopy imageProvider];
  if (imageProvider)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = colorCopy;
      usesMultiColor = [(NTKCircularComplicationView *)self usesMultiColor];
      v7 = 0.0;
      if (usesMultiColor)
      {
        v7 = 1.0;
      }

      [v5 setMulticolorAlpha:v7];
    }

    if ([(NTKCircularComplicationView *)self usesMultiColor])
    {
      complicationTemplate = [(NTKCircularComplicationView *)self complicationTemplate];
      tintColor = [complicationTemplate tintColor];

      foregroundAccentImage = [imageProvider foregroundAccentImage];

      if (foregroundAccentImage)
      {
LABEL_13:

        goto LABEL_14;
      }

      tintColor2 = [imageProvider tintColor];

      if (tintColor2)
      {
        tintColor3 = [imageProvider tintColor];
LABEL_10:
        v13 = tintColor3;
        [colorCopy setColor:tintColor3];

        goto LABEL_13;
      }

      if (!tintColor)
      {
        tintColor3 = [(NTKCircularComplicationView *)self _computedForegroundColor];
        goto LABEL_10;
      }
    }

    else
    {
      tintColor = [(NTKCircularComplicationView *)self _computedForegroundColor];
    }

    [colorCopy setColor:tintColor];
    goto LABEL_13;
  }

LABEL_14:
}

- (void)_updateLabelViewColor:(id)color
{
  colorCopy = color;
  if (![(NTKCircularComplicationView *)self usesMultiColor])
  {
    _computedForegroundColor = [(NTKCircularComplicationView *)self _computedForegroundColor];
    [colorCopy setTextColor:_computedForegroundColor];
    goto LABEL_9;
  }

  complicationTemplate = [(NTKCircularComplicationView *)self complicationTemplate];
  _computedForegroundColor = [complicationTemplate tintColor];

  textProvider = [colorCopy textProvider];
  tintColor = [textProvider tintColor];

  if (tintColor)
  {
    v8 = colorCopy;
    v9 = tintColor;
  }

  else
  {
    if (!_computedForegroundColor)
    {
      _computedForegroundColor2 = [(NTKCircularComplicationView *)self _computedForegroundColor];
      [colorCopy setTextColor:_computedForegroundColor2];

      goto LABEL_8;
    }

    v8 = colorCopy;
    v9 = _computedForegroundColor;
  }

  [v8 setTextColor:v9];
LABEL_8:

LABEL_9:
}

- (void)setHighlighted:(BOOL)highlighted
{
  v3 = 0.2;
  v4 = 0.0;
  if (highlighted)
  {
    v3 = 0.0;
  }

  v5[1] = 3221225472;
  v5[0] = MEMORY[0x277D85DD0];
  v5[2] = __46__NTKCircularComplicationView_setHighlighted___block_invoke;
  v5[3] = &unk_2787805D8;
  if (highlighted)
  {
    v4 = 1.0;
  }

  v5[4] = self;
  *&v5[5] = v4;
  [MEMORY[0x277D75D18] animateWithDuration:v5 animations:v3];
}

- (void)setComplicationTemplate:(id)template reason:(int64_t)reason
{
  templateCopy = template;
  if (self->_complicationTemplate != templateCopy)
  {
    v7 = templateCopy;
    objc_storeStrong(&self->_complicationTemplate, template);
    if ([(CLKComplicationTemplate *)v7 isCompatibleWithFamily:*MEMORY[0x277CBB668]])
    {
      [(NTKCircularComplicationView *)self setUsesMediumLayout:1];
    }

    [(NTKCircularComplicationView *)self _updateForTemplateChange];
    templateCopy = v7;
  }
}

- (void)setTimeTravelDate:(id)date animated:(BOOL)animated
{
  dateCopy = date;
  v7 = dateCopy;
  timeTravelDate = self->_timeTravelDate;
  if (dateCopy)
  {
    if ([dateCopy isEqual:timeTravelDate])
    {
      goto LABEL_14;
    }

    v9 = self->_timeTravelDate;
    v11 = [(CLKComplicationTemplate *)self->_complicationTemplate timeTravelUpdateFrequency]== 2 || v9 == 0;
  }

  else
  {
    if (!timeTravelDate || ([0 isEqual:?] & 1) != 0)
    {
      goto LABEL_14;
    }

    v11 = 1;
  }

  objc_storeStrong(&self->_timeTravelDate, date);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __58__NTKCircularComplicationView_setTimeTravelDate_animated___block_invoke;
  v12[3] = &unk_278782C88;
  v12[4] = self;
  [(NTKCircularComplicationView *)self _enumerateForegroundColoringViewsWithBlock:v12];
  if (v11)
  {
    [(NTKCircularComplicationView *)self _updateForTemplateChange];
  }

LABEL_14:
}

void __58__NTKCircularComplicationView_setTimeTravelDate_animated___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 setInTimeTravel:*(*(a1 + 32) + 424) != 0];
  }
}

- (id)_newLabelSubviewWithFont:(id)font
{
  fontCopy = font;
  v5 = objc_alloc_init(off_27877BEF8);
  [v5 setFont:fontCopy];
  timeTravelDate = [(NTKCircularComplicationView *)self timeTravelDate];
  [v5 setInTimeTravel:timeTravelDate != 0];

  objc_initWeak(&location, self);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __56__NTKCircularComplicationView__newLabelSubviewWithFont___block_invoke;
  v10[3] = &unk_27877DC30;
  objc_copyWeak(&v11, &location);
  [v5 setNowProvider:v10];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __56__NTKCircularComplicationView__newLabelSubviewWithFont___block_invoke_2;
  v8[3] = &unk_27877DC58;
  objc_copyWeak(&v9, &location);
  [v5 setNeedsResizeHandler:v8];
  [(NTKCircularComplicationView *)self addSubview:v5];
  objc_destroyWeak(&v9);
  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);

  return v5;
}

id __56__NTKCircularComplicationView__newLabelSubviewWithFont___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained timeTravelDate];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = [MEMORY[0x277CBBAD8] complicationDate];
  }

  v5 = v4;

  return v5;
}

void __56__NTKCircularComplicationView__newLabelSubviewWithFont___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setNeedsLayout];
}

- (int64_t)_variableFontSizeForText:(id)text
{
  textCopy = text;
  v4 = [textCopy length];
  v5 = NTKClockFaceLocalizedString(@"WEATHER_DEGREE_SYMBOL", @"°");
  v6 = [textCopy rangeOfString:v5];

  v7 = v4 - (v6 != 0x7FFFFFFFFFFFFFFFLL);
  if (v7 >= 3)
  {
    if (v7 == 3)
    {
      v8 = 2;
    }

    else
    {
      v8 = v7 < 6;
    }
  }

  else
  {
    v8 = 3;
  }

  return v8;
}

- (id)_mediumStackFontForText:(id)text
{
  v4 = [(NTKCircularComplicationView *)self _variableFontSizeForText:text];
  if (v4 >= 2)
  {
    v5 = 2;
  }

  else
  {
    v5 = v4;
  }

  v6 = __55__NTKCircularComplicationView__mediumStackFontForText___block_invoke(v4, self->_device);
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:v5];
  v8 = [v6 objectForKey:v7];

  return v8;
}

id __55__NTKCircularComplicationView__mediumStackFontForText___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&_block_invoke_lock_63);
  if (_block_invoke___cachedDevice_63)
  {
    v3 = _block_invoke___cachedDevice_63 == v2;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v2 version], v4 != _block_invoke___previousCLKDeviceVersion_63))
  {
    _block_invoke___cachedDevice_63 = v2;
    _block_invoke___previousCLKDeviceVersion_63 = [v2 version];
    v5 = __55__NTKCircularComplicationView__mediumStackFontForText___block_invoke_2(_block_invoke___previousCLKDeviceVersion_63, v2);
    v6 = _block_invoke_value_46;
    _block_invoke_value_46 = v5;
  }

  v7 = _block_invoke_value_46;
  os_unfair_lock_unlock(&_block_invoke_lock_63);

  return v7;
}

id __55__NTKCircularComplicationView__mediumStackFontForText___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v9[3] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBBAF8] metricsWithDevice:a2 identitySizeClass:2];
  [v2 scaledValue:3 withOverride:11.5 forSizeClass:13.0];
  [v2 scaledValue:10.5];
  [v2 scaledValue:3 withOverride:9.5 forSizeClass:10.0];
  v8[0] = &unk_284185608;
  v3 = _MakeFont(0);
  v9[0] = v3;
  v8[1] = &unk_284185620;
  v4 = _MakeFont(0);
  v9[1] = v4;
  v8[2] = &unk_284185638;
  v5 = _MakeFont(0);
  v9[2] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:3];

  return v6;
}

- ($E9F9932C2E83887F19F61B86DCD1B4AC)_layoutConstants
{
  device = [(NTKCircularComplicationView *)self device];
  _LayoutConstants_11(device, [(NTKCircularComplicationView *)self usesMediumLayout], retstr);

  return result;
}

- (id)_fontForDynamicFontSize:(int64_t)size
{
  if (self->_usesMediumLayout)
  {
    v4 = ___MediumFontForDynamicSize_block_invoke(self, self->_device);
  }

  else
  {
    device = self->_device;
    if (self->_useRoundedFontDesign)
    {
      ___RoundedFontForDynamicSize_block_invoke(self, device);
    }

    else
    {
      ___StandardFontForDynamicSize_block_invoke(self, device);
    }
    v4 = ;
  }

  v6 = v4;
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:size];
  v8 = [v6 objectForKey:v7];

  return v8;
}

+ (id)_timerImageProviderMedium:(BOOL)medium
{
  if (medium)
  {
    v3 = @"victoryNTKTimer";
  }

  else
  {
    v3 = @"colorAnalogTimer";
  }

  NTKImageNamed(v3);
}

+ (id)_alarmImageProviderMedium:(BOOL)medium
{
  if (medium)
  {
    v3 = @"victoryNTKAlarm";
  }

  else
  {
    v3 = @"colorAnalogAlarm";
  }

  v4 = [NTKCircularComplicationView _imageProviderForImageSymbolName:@"alarm" imageAssetNamePrefix:v3];

  return v4;
}

+ (id)_stopwatchImageProviderMedium:(BOOL)medium
{
  if (medium)
  {
    v3 = @"victoryNTKStopwatch";
  }

  else
  {
    v3 = @"colorAnalogStopwatch";
  }

  v4 = [NTKCircularComplicationView _imageProviderForImageSymbolName:@"stopwatch" imageAssetNamePrefix:v3];

  return v4;
}

- (CDComplicationDisplayObserver)displayObserver
{
  WeakRetained = objc_loadWeakRetained(&self->displayObserver);

  return WeakRetained;
}

@end