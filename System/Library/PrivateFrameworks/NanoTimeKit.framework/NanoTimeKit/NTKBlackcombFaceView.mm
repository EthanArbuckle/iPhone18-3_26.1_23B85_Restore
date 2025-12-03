@interface NTKBlackcombFaceView
- (BOOL)_backgroundViewShouldUseLongSideTicks;
- (BOOL)_isBlackColor;
- (NTKBlackcombFaceView)initWithFaceStyle:(int64_t)style forDevice:(id)device clientIdentifier:(id)identifier;
- (id)_keylineViewForComplicationSlot:(id)slot;
- (id)_platterTextColorForEditMode:(int64_t)mode color:(id)color;
- (id)_renderBackgroundViewSwatchImageForBlackcombDialColor:(unint64_t)color;
- (id)_swatchImageForEditOption:(id)option mode:(int64_t)mode withSelectedOptions:(id)options;
- (id)createFaceColorPalette;
- (int64_t)_editMode;
- (void)_applyBreathingFraction:(double)fraction forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_applyComplicationTransitionFraction:(double)fraction fromColorPalette:(id)palette toColorPalette:(id)colorPalette;
- (void)_applyOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_applyRubberBandingFraction:(double)fraction forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_applyTransitionFraction:(double)fraction fromColorPalette:(id)palette toColorPalette:(id)colorPalette force:(BOOL)force;
- (void)_applyTransitionFraction:(double)fraction fromOption:(id)option toOption:(id)toOption forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_cleanupAfterEditing;
- (void)_configureComplicationView:(id)view forSlot:(id)slot;
- (void)_configureForEditMode:(int64_t)mode;
- (void)_configureForTransitionFraction:(double)fraction fromEditMode:(int64_t)mode toEditMode:(int64_t)editMode;
- (void)_configureTimeView:(id)view;
- (void)_forceUpdateColors;
- (void)_loadSnapshotContentViews;
- (void)_prepareForEditing;
- (void)_removeBackgroundView;
- (void)_reorderSwitcherSnapshotView;
- (void)_setupBackgroundView;
- (void)_unloadSnapshotContentViews;
- (void)_updateHandsColors;
- (void)_updateTickLengths;
- (void)layoutSubviews;
- (void)updateBlackcombDialColorStyle:(unint64_t)style;
- (void)updateWithColorPalette:(id)palette;
@end

@implementation NTKBlackcombFaceView

- (NTKBlackcombFaceView)initWithFaceStyle:(int64_t)style forDevice:(id)device clientIdentifier:(id)identifier
{
  deviceCopy = device;
  v13.receiver = self;
  v13.super_class = NTKBlackcombFaceView;
  v9 = [(NTKAnalogFaceView *)&v13 initWithFaceStyle:style forDevice:deviceCopy clientIdentifier:identifier];
  if (v9)
  {
    v10 = [[NTKFullscreenSubdialComplicationFactory alloc] initForDevice:deviceCopy];
    complicationFactory = v9->_complicationFactory;
    v9->_complicationFactory = v10;
  }

  return v9;
}

- (id)createFaceColorPalette
{
  v3 = objc_alloc_init(NTKBlackcombColorPalette);
  blackcombPalette = self->_blackcombPalette;
  self->_blackcombPalette = v3;

  v5 = self->_blackcombPalette;

  return v5;
}

- (void)_configureTimeView:(id)view
{
  v7.receiver = self;
  v7.super_class = NTKBlackcombFaceView;
  viewCopy = view;
  [(NTKAnalogFaceView *)&v7 _configureTimeView:viewCopy];
  [(NTKBlackcombFaceView *)self _updateHandsColors:v7.receiver];
  secondHandView = [viewCopy secondHandView];

  blackColor = [MEMORY[0x277D75348] blackColor];
  [secondHandView setHandDotColor:blackColor];
}

- (void)_setupBackgroundView
{
  if (!self->_backgroundContainerView)
  {
    v3 = objc_alloc_init(MEMORY[0x277D75D18]);
    backgroundContainerView = self->_backgroundContainerView;
    self->_backgroundContainerView = v3;

    contentView = [(NTKFaceView *)self contentView];
    v6 = self->_backgroundContainerView;
    complicationContainerView = [(NTKFaceView *)self complicationContainerView];
    [contentView insertSubview:v6 belowSubview:complicationContainerView];

    v8 = [NTKBlackcombBackgroundView alloc];
    device = [(NTKFaceView *)self device];
    v10 = [(NTKBlackcombBackgroundView *)v8 initForDevice:device];
    backgroundView = self->_backgroundView;
    self->_backgroundView = v10;

    [(UIView *)self->_backgroundContainerView addSubview:self->_backgroundView];
    layer = [(UIView *)self->_backgroundContainerView layer];
    device2 = [(NTKFaceView *)self device];
    [device2 screenCornerRadius];
    [layer setCornerRadius:?];

    layer2 = [(UIView *)self->_backgroundContainerView layer];
    [layer2 setCornerCurve:*MEMORY[0x277CDA138]];
  }
}

- (void)_removeBackgroundView
{
  [(NTKBlackcombBackgroundView *)self->_backgroundView removeFromSuperview];
  backgroundView = self->_backgroundView;
  self->_backgroundView = 0;

  [(UIView *)self->_backgroundContainerView removeFromSuperview];
  backgroundContainerView = self->_backgroundContainerView;
  self->_backgroundContainerView = 0;
}

- (void)_loadSnapshotContentViews
{
  v3.receiver = self;
  v3.super_class = NTKBlackcombFaceView;
  [(NTKAnalogFaceView *)&v3 _loadSnapshotContentViews];
  [(NTKBlackcombFaceView *)self _setupBackgroundView];
  [(NTKBlackcombFaceView *)self _forceUpdateColors];
}

- (void)_unloadSnapshotContentViews
{
  v3.receiver = self;
  v3.super_class = NTKBlackcombFaceView;
  [(NTKAnalogFaceView *)&v3 _unloadSnapshotContentViews];
  [(NTKBlackcombFaceView *)self _removeBackgroundView];
}

- (void)_reorderSwitcherSnapshotView
{
  switcherSnapshotView = [(NTKFaceView *)self switcherSnapshotView];

  if (switcherSnapshotView)
  {
    switcherSnapshotView2 = [(NTKFaceView *)self switcherSnapshotView];
    [(NTKBlackcombFaceView *)self bringSubviewToFront:switcherSnapshotView2];
  }
}

- (int64_t)_editMode
{
  [(NTKFaceView *)self editModeTransitionFraction];
  if (v3 <= 0.5)
  {

    return [(NTKFaceView *)self fromEditMode];
  }

  else
  {

    return [(NTKFaceView *)self toEditMode];
  }
}

- (void)_prepareForEditing
{
  v8.receiver = self;
  v8.super_class = NTKBlackcombFaceView;
  [(NTKAnalogFaceView *)&v8 _prepareForEditing];
  [(NTKBlackcombBackgroundView *)self->_backgroundView setUsesLongSideTicks:0];
  layer = [(UIView *)self->_backgroundContainerView layer];
  [layer setAllowsGroupOpacity:1];

  complicationContainerView = [(NTKFaceView *)self complicationContainerView];
  layer2 = [complicationContainerView layer];
  [layer2 setAllowsGroupOpacity:1];

  timeView = [(NTKFaceView *)self timeView];
  layer3 = [timeView layer];
  [layer3 setAllowsGroupOpacity:1];
}

- (void)_cleanupAfterEditing
{
  v9.receiver = self;
  v9.super_class = NTKBlackcombFaceView;
  [(NTKAnalogFaceView *)&v9 _cleanupAfterEditing];
  [(NTKBlackcombFaceView *)self _updateTickLengths];
  layer = [(UIView *)self->_backgroundContainerView layer];
  [layer setAllowsGroupOpacity:0];

  complicationContainerView = [(NTKFaceView *)self complicationContainerView];
  layer2 = [complicationContainerView layer];
  [layer2 setAllowsGroupOpacity:0];

  timeView = [(NTKFaceView *)self timeView];
  layer3 = [timeView layer];
  [layer3 setAllowsGroupOpacity:0];

  delegate = [(NTKFaceView *)self delegate];
  [delegate faceViewDidChangeWantsStatusBarIconShadow];
}

- (void)_updateTickLengths
{
  _backgroundViewShouldUseLongSideTicks = [(NTKBlackcombFaceView *)self _backgroundViewShouldUseLongSideTicks];
  backgroundView = self->_backgroundView;

  [(NTKBlackcombBackgroundView *)backgroundView setUsesLongSideTicks:_backgroundViewShouldUseLongSideTicks];
}

- (BOOL)_backgroundViewShouldUseLongSideTicks
{
  delegate = [(NTKFaceView *)self delegate];
  v4 = [delegate faceViewComplicationForSlot:@"subdial-left"];
  complicationType = [v4 complicationType];

  delegate2 = [(NTKFaceView *)self delegate];
  v7 = [delegate2 faceViewComplicationForSlot:@"subdial-right"];
  v8 = complicationType | [v7 complicationType];

  return v8 == 0;
}

- (void)_configureForEditMode:(int64_t)mode
{
  v19.receiver = self;
  v19.super_class = NTKBlackcombFaceView;
  [(NTKAnalogFaceView *)&v19 _configureForEditMode:?];
  if (mode > 0xF || (v5 = 1.0, ((1 << mode) & 0x8401) == 0))
  {
    v5 = 0.2;
  }

  if (mode == 15)
  {
    v6 = 0.2;
  }

  else
  {
    v6 = 1.0;
  }

  if (mode == 15 || mode == 0)
  {
    v8 = 1.0;
  }

  else
  {
    v8 = 0.2;
  }

  [(UIView *)self->_backgroundContainerView setAlpha:v5];
  complicationContainerView = [(NTKFaceView *)self complicationContainerView];
  v10 = complicationContainerView;
  if (mode)
  {
    v11 = v6;
  }

  else
  {
    v11 = 1.0;
  }

  [complicationContainerView setAlpha:v11];

  timeView = [(NTKFaceView *)self timeView];
  [timeView setAlpha:v8];

  v13 = [(NTKFaceView *)self normalComplicationDisplayWrapperForSlot:@"subdial-top"];
  display = [v13 display];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    blackcombPalette = self->_blackcombPalette;
    v16 = display;
    platterText = [(NTKBlackcombColorPalette *)blackcombPalette platterText];
    v18 = [(NTKBlackcombFaceView *)self _platterTextColorForEditMode:mode color:platterText];
    [v16 setForegroundColor:v18];
  }
}

- (void)_configureForTransitionFraction:(double)fraction fromEditMode:(int64_t)mode toEditMode:(int64_t)editMode
{
  v20.receiver = self;
  v20.super_class = NTKBlackcombFaceView;
  [NTKAnalogFaceView _configureForTransitionFraction:sel__configureForTransitionFraction_fromEditMode_toEditMode_ fromEditMode:? toEditMode:?];
  backgroundContainerView = self->_backgroundContainerView;
  CLKInterpolateBetweenFloatsClipped();
  [(UIView *)backgroundContainerView setAlpha:?];
  complicationContainerView = [(NTKFaceView *)self complicationContainerView];
  CLKInterpolateBetweenFloatsClipped();
  [complicationContainerView setAlpha:?];

  timeView = [(NTKFaceView *)self timeView];
  CLKInterpolateBetweenFloatsClipped();
  [timeView setAlpha:?];

  v11 = [(NTKFaceView *)self normalComplicationDisplayWrapperForSlot:@"subdial-top"];
  display = [v11 display];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    blackcombPalette = self->_blackcombPalette;
    v14 = display;
    platterText = [(NTKBlackcombColorPalette *)blackcombPalette platterText];
    v16 = [(NTKBlackcombFaceView *)self _platterTextColorForEditMode:mode color:platterText];
    platterText2 = [(NTKBlackcombColorPalette *)self->_blackcombPalette platterText];
    v18 = [(NTKBlackcombFaceView *)self _platterTextColorForEditMode:editMode color:platterText2];
    v19 = NTKInterpolateBetweenColors();

    [v14 setForegroundColor:v19];
  }
}

- (void)_applyOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot
{
  optionCopy = option;
  slotCopy = slot;
  if (mode == 10)
  {
    [(NTKBlackcombFaceView *)self updateWithColorPalette:self->_blackcombPalette];
  }

  else if (mode == 15)
  {
    -[NTKBlackcombFaceView updateBlackcombDialColorStyle:](self, "updateBlackcombDialColorStyle:", [optionCopy blackcombDialColor]);
    delegate = [(NTKFaceView *)self delegate];
    [delegate faceViewDidChangeWantsStatusBarIconShadow];
  }
}

- (void)_applyTransitionFraction:(double)fraction fromOption:(id)option toOption:(id)toOption forCustomEditMode:(int64_t)mode slot:(id)slot
{
  optionCopy = option;
  toOptionCopy = toOption;
  slotCopy = slot;
  if (mode == 10)
  {
    interpolatedColorPalette = [(NTKFaceView *)self interpolatedColorPalette];
    fromPalette = [interpolatedColorPalette fromPalette];
    interpolatedColorPalette2 = [(NTKFaceView *)self interpolatedColorPalette];
    toPalette = [interpolatedColorPalette2 toPalette];
    [(NTKBlackcombFaceView *)self _applyTransitionFraction:fromPalette fromColorPalette:toPalette toColorPalette:fraction];
  }

  else
  {
    if (mode != 15)
    {
      goto LABEL_6;
    }

    interpolatedColorPalette = -[NTKBlackcombColorPalette transitionalPaletteFromDialColor:toDialColor:](self->_blackcombPalette, "transitionalPaletteFromDialColor:toDialColor:", [optionCopy blackcombDialColor], objc_msgSend(toOptionCopy, "blackcombDialColor"));
    fromPalette = [interpolatedColorPalette fromPalette];
    interpolatedColorPalette2 = [interpolatedColorPalette toPalette];
    [(NTKBlackcombFaceView *)self _applyTransitionFraction:fromPalette fromColorPalette:interpolatedColorPalette2 toColorPalette:fraction];
  }

LABEL_6:
}

- (void)updateWithColorPalette:(id)palette
{
  paletteCopy = palette;
  if (self->_dialColorStyleTransitionPalette)
  {
    v4 = [[NTKInterpolatedColorPalette alloc] initWithColorPalette:self->_blackcombPalette];
    dialColorStyleTransitionPalette = self->_dialColorStyleTransitionPalette;
    self->_dialColorStyleTransitionPalette = v4;
  }

  [(NTKBlackcombFaceView *)self _applyTransitionFraction:paletteCopy fromColorPalette:paletteCopy toColorPalette:1 force:0.0];
  [(NTKBlackcombFaceView *)self _updateHandsColors];
}

- (void)updateBlackcombDialColorStyle:(unint64_t)style
{
  if ([(NTKBlackcombColorPalette *)self->_blackcombPalette dialColorStyle]!= style)
  {
    [(NTKBlackcombColorPalette *)self->_blackcombPalette setDialColorStyle:style];
    blackcombPalette = self->_blackcombPalette;

    [(NTKBlackcombFaceView *)self updateWithColorPalette:blackcombPalette];
  }
}

- (void)_forceUpdateColors
{
  [(NTKBlackcombFaceView *)self _applyTransitionFraction:self->_blackcombPalette fromColorPalette:self->_blackcombPalette toColorPalette:1 force:0.0];
  [(NTKBlackcombBackgroundView *)self->_backgroundView applyPalette:self->_blackcombPalette];

  [(NTKBlackcombFaceView *)self _updateHandsColors];
}

- (void)_applyTransitionFraction:(double)fraction fromColorPalette:(id)palette toColorPalette:(id)colorPalette force:(BOOL)force
{
  paletteCopy = palette;
  colorPaletteCopy = colorPalette;
  complication = [paletteCopy complication];
  complication2 = [colorPaletteCopy complication];
  v14 = NTKInterpolateBetweenColors();
  [(NTKFaceView *)self setInterpolatedComplicationColor:v14];
  if (force)
  {
    v15 = 1;
  }

  else
  {
    configuration = [paletteCopy configuration];
    configuration2 = [colorPaletteCopy configuration];
    v15 = [configuration isEqual:configuration2] ^ 1;
  }

  if (([paletteCopy isMulticolor] & 1) != 0 || objc_msgSend(colorPaletteCopy, "isMulticolor"))
  {
    if ([colorPaletteCopy isMulticolor] && !objc_msgSend(paletteCopy, "isMulticolor"))
    {
      fraction = 1.0 - fraction;
    }

    v18 = 1;
  }

  else
  {
    v18 = 0;
  }

  if ([colorPaletteCopy isMulticolor])
  {
    v19 = complication;
  }

  else
  {
    v19 = complication2;
  }

  [(NTKFaceView *)self setComplicationColor:v19];
  if (v15)
  {
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __87__NTKBlackcombFaceView__applyTransitionFraction_fromColorPalette_toColorPalette_force___block_invoke;
    v24[3] = &unk_2787874B0;
    v24[4] = self;
    v25 = v18;
    *&v24[5] = fraction;
    [(NTKFaceView *)self enumerateComplicationDisplayWrappersWithBlock:v24];
  }

  _secondHandColor = [(NTKBlackcombFaceView *)self _secondHandColor];
  _secondHandColor2 = [(NTKBlackcombFaceView *)self _secondHandColor];
  v22 = NTKInterpolateBetweenColors();
  timeView = [(NTKFaceView *)self timeView];
  [timeView applySecondHandColor:v22];

  [(NTKBlackcombBackgroundView *)self->_backgroundView applyTransitionFraction:paletteCopy fromPalette:colorPaletteCopy toPalette:fraction];
  [(NTKBlackcombFaceView *)self _applyComplicationTransitionFraction:paletteCopy fromColorPalette:colorPaletteCopy toColorPalette:fraction];
}

void __87__NTKBlackcombFaceView__applyTransitionFraction_fromColorPalette_toColorPalette_force___block_invoke(uint64_t a1, uint64_t a2)
{
  v8 = [*(a1 + 32) normalComplicationDisplayWrapperForSlot:a2];
  v3 = [v8 display];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v5 = v8;
  if (isKindOfClass)
  {
    v6 = [v8 display];
    v7 = v6;
    if (*(a1 + 48) == 1)
    {
      [v6 transitionToMonochromeWithFraction:*(a1 + 40)];
    }

    else
    {
      [v6 updateMonochromeColor];
    }

    v5 = v8;
  }
}

- (void)_applyComplicationTransitionFraction:(double)fraction fromColorPalette:(id)palette toColorPalette:(id)colorPalette
{
  paletteCopy = palette;
  colorPaletteCopy = colorPalette;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __93__NTKBlackcombFaceView__applyComplicationTransitionFraction_fromColorPalette_toColorPalette___block_invoke;
  v23[3] = &unk_2787874D8;
  v10 = paletteCopy;
  v24 = v10;
  v11 = colorPaletteCopy;
  v25 = v11;
  fractionCopy = fraction;
  [(NTKFaceView *)self enumerateComplicationDisplayWrappersWithBlock:v23];
  v12 = [(NTKFaceView *)self normalComplicationDisplayWrapperForSlot:@"subdial-top"];
  display = [v12 display];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    _editMode = [(NTKBlackcombFaceView *)self _editMode];
    platterText = [v10 platterText];
    v17 = [(NTKBlackcombFaceView *)self _platterTextColorForEditMode:_editMode color:platterText];

    _editMode2 = [(NTKBlackcombFaceView *)self _editMode];
    platterText2 = [v11 platterText];
    v20 = [(NTKBlackcombFaceView *)self _platterTextColorForEditMode:_editMode2 color:platterText2];

    v21 = NTKInterpolateBetweenColors();
    display2 = [v12 display];
    [display2 setForegroundColor:v21];
  }
}

void __93__NTKBlackcombFaceView__applyComplicationTransitionFraction_fromColorPalette_toColorPalette___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  v4 = [v7 display];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v6 = [v7 display];
    [v6 transitThemeFromTheme:objc_msgSend(*(a1 + 32) toTheme:"richComplicationViewTheme") fraction:{objc_msgSend(*(a1 + 40), "richComplicationViewTheme"), *(a1 + 48)}];
  }
}

- (void)_updateHandsColors
{
  _secondHandColor = [(NTKBlackcombFaceView *)self _secondHandColor];
  timeView = [(NTKFaceView *)self timeView];
  [timeView applySecondHandColor:_secondHandColor];

  timeView2 = [(NTKFaceView *)self timeView];
  whiteColor = [MEMORY[0x277D75348] whiteColor];
  blackColor = [MEMORY[0x277D75348] blackColor];
  [timeView2 applyHourMinuteHandsStrokeColor:whiteColor fillColor:blackColor];
}

- (void)_applyRubberBandingFraction:(double)fraction forCustomEditMode:(int64_t)mode slot:(id)slot
{
  v18.receiver = self;
  v18.super_class = NTKBlackcombFaceView;
  [(NTKFaceView *)&v18 _applyBreathingFraction:mode forCustomEditMode:slot slot:?];
  v8 = NTKScaleForRubberBandingFraction(fraction);
  memset(&v17, 0, sizeof(v17));
  CGAffineTransformMakeScale(&v17, v8, v8);
  v9 = NTKAlphaForRubberBandingFraction(fraction);
  if (mode == 10)
  {
    complicationContainerView = [(NTKFaceView *)self complicationContainerView];
    v16 = v17;
    [complicationContainerView setTransform:&v16];

    complicationContainerView2 = [(NTKFaceView *)self complicationContainerView];
  }

  else
  {
    if (mode != 15)
    {
      return;
    }

    contentView = [(NTKFaceView *)self contentView];
    v16 = v17;
    [contentView setTransform:&v16];

    contentView2 = [(NTKFaceView *)self contentView];
    [contentView2 setAlpha:v9];

    timeView = [(NTKFaceView *)self timeView];
    v16 = v17;
    [timeView setTransform:&v16];

    complicationContainerView2 = [(NTKFaceView *)self timeView];
  }

  v15 = complicationContainerView2;
  [complicationContainerView2 setAlpha:v9];
}

- (void)_applyBreathingFraction:(double)fraction forCustomEditMode:(int64_t)mode slot:(id)slot
{
  v14.receiver = self;
  v14.super_class = NTKBlackcombFaceView;
  [(NTKFaceView *)&v14 _applyBreathingFraction:mode forCustomEditMode:slot slot:?];
  v8 = NTKLargeElementScaleForBreathingFraction(fraction);
  memset(&v13, 0, sizeof(v13));
  CGAffineTransformMakeScale(&v13, v8, v8);
  if (mode == 10)
  {
    complicationContainerView = [(NTKFaceView *)self complicationContainerView];
  }

  else
  {
    if (mode != 15)
    {
      return;
    }

    contentView = [(NTKFaceView *)self contentView];
    v12 = v13;
    [contentView setTransform:&v12];

    complicationContainerView = [(NTKFaceView *)self timeView];
  }

  v11 = complicationContainerView;
  v12 = v13;
  [complicationContainerView setTransform:&v12];
}

- (id)_platterTextColorForEditMode:(int64_t)mode color:(id)color
{
  colorCopy = color;
  v6 = colorCopy;
  if (mode != 15 && mode)
  {
    whiteColor = [MEMORY[0x277D75348] whiteColor];
  }

  else
  {
    whiteColor = colorCopy;
  }

  v8 = whiteColor;

  return v8;
}

- (void)_configureComplicationView:(id)view forSlot:(id)slot
{
  viewCopy = view;
  slotCopy = slot;
  [(NTKFullscreenSubdialComplicationFactory *)self->_complicationFactory configureComplicationView:viewCopy forSlot:slotCopy faceView:self];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = viewCopy;
    if ([slotCopy isEqualToString:@"subdial-top"])
    {
      _editMode = [(NTKBlackcombFaceView *)self _editMode];
      platterText = [(NTKBlackcombColorPalette *)self->_blackcombPalette platterText];
      v10 = [(NTKBlackcombFaceView *)self _platterTextColorForEditMode:_editMode color:platterText];
      [v7 setForegroundColor:v10];
    }

    if ([(NTKFaceColorPalette *)self->_blackcombPalette isMulticolor])
    {
      [v7 transitionToMonochromeWithFraction:0.0];
    }

    else
    {
      [v7 updateMonochromeColor];
    }

    richComplicationViewTheme = [(NTKBlackcombColorPalette *)self->_blackcombPalette richComplicationViewTheme];
    [v7 transitThemeFromTheme:richComplicationViewTheme toTheme:richComplicationViewTheme fraction:1.0];
  }
}

- (id)_keylineViewForComplicationSlot:(id)slot
{
  slotCopy = slot;
  v5 = [(NTKFullscreenSubdialComplicationFactory *)self->_complicationFactory keylineViewForComplicationSlot:slotCopy];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = NTKBlackcombFaceView;
    v7 = [(NTKFaceView *)&v10 _keylineViewForComplicationSlot:slotCopy];
  }

  v8 = v7;

  return v8;
}

- (void)layoutSubviews
{
  v12.receiver = self;
  v12.super_class = NTKBlackcombFaceView;
  [(NTKAnalogFaceView *)&v12 layoutSubviews];
  contentView = [(NTKFaceView *)self contentView];
  [contentView bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [(UIView *)self->_backgroundContainerView ntk_setBoundsAndPositionFromFrame:v5, v7, v9, v11];
  [(UIView *)self->_backgroundView ntk_setBoundsAndPositionFromFrame:v5, v7, v9, v11];
  if (![(NTKFaceView *)self editing])
  {
    [(NTKBlackcombFaceView *)self _updateTickLengths];
  }
}

- (BOOL)_isBlackColor
{
  v2 = [(NTKFaceView *)self optionForCustomEditMode:15 slot:0];
  v3 = [v2 blackcombDialColor] == 0;

  return v3;
}

- (id)_swatchImageForEditOption:(id)option mode:(int64_t)mode withSelectedOptions:(id)options
{
  optionCopy = option;
  optionsCopy = options;
  if (mode == 15)
  {
    if (!_swatchImageForEditOption_mode_withSelectedOptions__cache)
    {
      v10 = objc_opt_new();
      v11 = _swatchImageForEditOption_mode_withSelectedOptions__cache;
      _swatchImageForEditOption_mode_withSelectedOptions__cache = v10;
    }

    blackcombDialColor = [optionCopy blackcombDialColor];
    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:blackcombDialColor];
    v14 = [v13 description];

    v15 = [_swatchImageForEditOption_mode_withSelectedOptions__cache objectForKey:v14];
    if (!v15)
    {
      v15 = [(NTKBlackcombFaceView *)self _renderBackgroundViewSwatchImageForBlackcombDialColor:blackcombDialColor];
      [_swatchImageForEditOption_mode_withSelectedOptions__cache setObject:v15 forKey:v14];
    }
  }

  else
  {
    v17.receiver = self;
    v17.super_class = NTKBlackcombFaceView;
    v15 = [(NTKFaceView *)&v17 _swatchImageForEditOption:optionCopy mode:mode withSelectedOptions:optionsCopy];
  }

  return v15;
}

- (id)_renderBackgroundViewSwatchImageForBlackcombDialColor:(unint64_t)color
{
  timeView = [(NTKFaceView *)self timeView];

  if (!timeView)
  {
    [(NTKBlackcombFaceView *)self _loadSnapshotContentViews];
  }

  dialColorStyle = [(NTKBlackcombColorPalette *)self->_blackcombPalette dialColorStyle];
  usesLongSideTicks = [(NTKBlackcombBackgroundView *)self->_backgroundView usesLongSideTicks];
  [(NTKBlackcombFaceView *)self updateBlackcombDialColorStyle:color];
  [(NTKBlackcombFaceView *)self layoutIfNeeded];
  [(NTKBlackcombBackgroundView *)self->_backgroundView setUsesLongSideTicks:1];
  [(UIView *)self->_backgroundContainerView bounds];
  v12 = [objc_alloc(MEMORY[0x277D75560]) initWithBounds:{v8, v9, v10, v11}];
  objc_initWeak(&location, self);
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __78__NTKBlackcombFaceView__renderBackgroundViewSwatchImageForBlackcombDialColor___block_invoke;
  v18 = &unk_278787500;
  objc_copyWeak(&v19, &location);
  v13 = [v12 imageWithActions:&v15];
  [(NTKBlackcombFaceView *)self updateBlackcombDialColorStyle:dialColorStyle, v15, v16, v17, v18];
  [(NTKBlackcombBackgroundView *)self->_backgroundView setUsesLongSideTicks:usesLongSideTicks];
  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);

  return v13;
}

void __78__NTKBlackcombFaceView__renderBackgroundViewSwatchImageForBlackcombDialColor___block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = [WeakRetained[111] layer];
    [v5 renderInContext:{objc_msgSend(v8, "CGContext")}];

    v6 = [v4 timeView];
    v7 = [v6 layer];
    [v7 renderInContext:{objc_msgSend(v8, "CGContext")}];
  }
}

@end