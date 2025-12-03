@interface NTKOlympusTimeContentView
+ (double)scaleForViewDuringColorChangeTransitionWithFraction:(double)fraction;
- (BOOL)containsSubview:(id)subview;
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (CGSize)logoImageSizeForCircularDial;
- (NTKOlympusContentViewDelegate)delegate;
- (NTKOlympusTimeContentView)initWithDevice:(id)device dial:(unint64_t)dial style:(unint64_t)style colorPalette:(id)palette useSmallFont:(BOOL)font circularLogoImage:(id)image;
- (UIImage)circularLogoImage;
- (id)createLogoButtonWithBackgroundImage:(id)image;
- (id)createTimeLabelWithFont:(id)font option:(unint64_t)option;
- (id)fontForCircularDial;
- (id)fontForDigitalFullscreen;
- (id)fontForHybridFullscreen;
- (id)monospacedFontForCircularDial;
- (void)_applyAnimationPopTransitionWithFraction:(double)fraction;
- (void)_applyTransitionFraction:(double)fraction fromColor:(id)color toColor:(id)toColor fromBackgroundColor:(id)backgroundColor toBackgroundColor:(id)toBackgroundColor fromLogoColor:(id)logoColor toLogoColor:(id)toLogoColor;
- (void)_applyTransitionFraction:(double)fraction fromTextColor:(id)color toTextColor:(id)textColor;
- (void)applyTransitionFraction:(double)fraction fromColorPalette:(id)palette toColorPalette:(id)colorPalette animateElements:(BOOL)elements;
- (void)applyTransitionFraction:(double)fraction fromDial:(unint64_t)dial toDial:(unint64_t)toDial;
- (void)applyTransitionFraction:(double)fraction fromStyle:(unint64_t)style toStyle:(unint64_t)toStyle;
- (void)configureViewsForEditing;
- (void)createAndRemoveViewsForCurrentStateIfNeeded;
- (void)createCircularViewsIfNeeded;
- (void)createFullscreenDigitalViewsIfNeeded;
- (void)createFullscreenHybridViewsIfNeeded;
- (void)createFullscreenLogoIfNeeded;
- (void)dealloc;
- (void)ensureVisibleIfNeeded:(id)needed;
- (void)handleLogoButtonHighlighted:(id)highlighted;
- (void)handleLogoButtonResetHighlight:(id)highlight;
- (void)handleLogoButtonTouchUpInside:(id)inside;
- (void)layoutSubviews;
- (void)removeCircularViews;
- (void)removeFullscreenViews;
- (void)setColorPalette:(id)palette;
- (void)setDial:(unint64_t)dial;
- (void)setInvertedColors:(BOOL)colors;
- (void)setLabelOutlineAlpha:(double)alpha;
- (void)setLabelOutlineColor:(id)color;
- (void)setLogoButtonHighlighted:(BOOL)highlighted;
- (void)setStyle:(unint64_t)style;
- (void)setViewsVisibilityForDial:(unint64_t)dial style:(unint64_t)style;
- (void)setViewsVisibleForDialTransition;
- (void)setViewsVisibleForStyleTransition;
- (void)timeFormatterTextDidChange:(id)change;
- (void)updateColors;
- (void)updateLogosFrame;
- (void)updateStylesFraction:(double)fraction fromStyle:(unint64_t)style toStyle:(unint64_t)toStyle;
- (void)updateTimeLabelsFrame;
@end

@implementation NTKOlympusTimeContentView

- (NTKOlympusTimeContentView)initWithDevice:(id)device dial:(unint64_t)dial style:(unint64_t)style colorPalette:(id)palette useSmallFont:(BOOL)font circularLogoImage:(id)image
{
  deviceCopy = device;
  paletteCopy = palette;
  imageCopy = image;
  v33.receiver = self;
  v33.super_class = NTKOlympusTimeContentView;
  v17 = [(NTKOlympusTimeContentView *)&v33 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v18 = v17;
  if (v17)
  {
    [(NTKOlympusTimeContentView *)v17 setDevice:deviceCopy];
    v18->_style = style;
    v18->_dial = dial;
    objc_storeStrong(&v18->_colorPalette, palette);
    v18->_useSmallFont = font;
    objc_storeStrong(&v18->_circularLogoImage, image);
    v19 = [objc_alloc(MEMORY[0x277CBBBA8]) initWithForcesLatinNumbers:1];
    timeFormatter = v18->_timeFormatter;
    v18->_timeFormatter = v19;

    [(CLKTimeFormatter *)v18->_timeFormatter addObserver:v18];
    [(CLKTimeFormatter *)v18->_timeFormatter setZeroPadTimeSubstringToSeparatorText:1];
    v21 = objc_alloc(MEMORY[0x277D75D18]);
    [(NTKOlympusTimeContentView *)v18 bounds];
    v22 = [v21 initWithFrame:?];
    contentView = v18->_contentView;
    v18->_contentView = v22;

    [(NTKOlympusTimeContentView *)v18 addSubview:v18->_contentView];
    v24 = objc_alloc(MEMORY[0x277D75D18]);
    [(NTKOlympusTimeContentView *)v18 bounds];
    v25 = [v24 initWithFrame:?];
    [(NTKOlympusTimeContentView *)v18 setFullscreenDigitsContainerView:v25];

    contentView = [(NTKOlympusTimeContentView *)v18 contentView];
    fullscreenDigitsContainerView = [(NTKOlympusTimeContentView *)v18 fullscreenDigitsContainerView];
    [contentView addSubview:fullscreenDigitsContainerView];

    v28 = objc_alloc(MEMORY[0x277D75D18]);
    [(NTKOlympusTimeContentView *)v18 bounds];
    v29 = [v28 initWithFrame:?];
    [(NTKOlympusTimeContentView *)v18 setCircularDigitsContainerView:v29];

    contentView2 = [(NTKOlympusTimeContentView *)v18 contentView];
    circularDigitsContainerView = [(NTKOlympusTimeContentView *)v18 circularDigitsContainerView];
    [contentView2 addSubview:circularDigitsContainerView];

    [(NTKOlympusTimeContentView *)v18 createAndRemoveViewsForCurrentStateIfNeeded];
    [(NTKOlympusTimeContentView *)v18 updateColors];
  }

  return v18;
}

- (void)dealloc
{
  [(CLKTimeFormatter *)self->_timeFormatter removeObserver:self];
  v3.receiver = self;
  v3.super_class = NTKOlympusTimeContentView;
  [(NTKOlympusTimeContentView *)&v3 dealloc];
}

- (void)createAndRemoveViewsForCurrentStateIfNeeded
{
  dial = self->_dial;
  if (dial == 1)
  {
    [(NTKOlympusTimeContentView *)self removeCircularViews];
    [(NTKOlympusTimeContentView *)self createFullscreenLogoIfNeeded];
    style = self->_style;
    if (!style)
    {
      [(NTKOlympusTimeContentView *)self createFullscreenDigitalViewsIfNeeded];
      style = self->_style;
    }

    if (style == 1)
    {
      [(NTKOlympusTimeContentView *)self createFullscreenHybridViewsIfNeeded];
    }
  }

  else if (!dial)
  {
    [(NTKOlympusTimeContentView *)self createCircularViewsIfNeeded];
    [(NTKOlympusTimeContentView *)self removeFullscreenViews];
  }

  [(NTKOlympusTimeContentView *)self timeFormatterTextDidChange:self->_timeFormatter];
  [(NTKOlympusTimeContentView *)self setDial:self->_dial];
  [(NTKOlympusTimeContentView *)self setStyle:self->_style];
  colorPalette = self->_colorPalette;

  [(NTKOlympusTimeContentView *)self setColorPalette:colorPalette];
}

- (void)configureViewsForEditing
{
  [(NTKOlympusTimeContentView *)self createCircularViewsIfNeeded];
  [(NTKOlympusTimeContentView *)self createFullscreenLogoIfNeeded];
  [(NTKOlympusTimeContentView *)self createFullscreenDigitalViewsIfNeeded];
  [(NTKOlympusTimeContentView *)self createFullscreenHybridViewsIfNeeded];
  [(NTKOlympusTimeContentView *)self timeFormatterTextDidChange:self->_timeFormatter];
  [(NTKOlympusTimeContentView *)self setDial:self->_dial];
  [(NTKOlympusTimeContentView *)self setStyle:self->_style];
  colorPalette = self->_colorPalette;

  [(NTKOlympusTimeContentView *)self setColorPalette:colorPalette];
}

- (void)createFullscreenLogoIfNeeded
{
  if (!self->_fullscreenLogoButton)
  {
    NTKImageNamed(@"victoryNTK-fullscreen-logo");
  }
}

- (void)createCircularViewsIfNeeded
{
  if (!self->_circularLogoButton)
  {
    circularLogoImage = [(NTKOlympusTimeContentView *)self circularLogoImage];
    v4 = [(NTKOlympusTimeContentView *)self createLogoButtonWithBackgroundImage:circularLogoImage];
    circularLogoButton = self->_circularLogoButton;
    self->_circularLogoButton = v4;

    contentView = [(NTKOlympusTimeContentView *)self contentView];
    [contentView addSubview:self->_circularLogoButton];
  }

  if (!self->_circularUpperTimeLabel)
  {
    v7 = objc_alloc_init(NTKVictoryLabel);
    circularUpperTimeLabel = self->_circularUpperTimeLabel;
    self->_circularUpperTimeLabel = v7;

    device = [(NTKOlympusTimeContentView *)self device];
    ___LayoutConstants_block_invoke_14(device, v24);
    [(NTKVictoryLabel *)self->_circularUpperTimeLabel setAdditionalPaddingInsets:v24[0]];

    device2 = [(NTKOlympusTimeContentView *)self device];
    ___LayoutConstants_block_invoke_14(device2, v22);
    [(NTKVictoryLabel *)self->_circularUpperTimeLabel setDrawingRectOffset:v23, 0.0];

    fontForCircularDial = [(NTKOlympusTimeContentView *)self fontForCircularDial];
    [(CLKUIColoringLabel *)self->_circularUpperTimeLabel setFont:fontForCircularDial];

    [(NTKVictoryLabel *)self->_circularUpperTimeLabel setTextAlignment:2];
    circularDigitsContainerView = [(NTKOlympusTimeContentView *)self circularDigitsContainerView];
    [circularDigitsContainerView addSubview:self->_circularUpperTimeLabel];
  }

  if (!self->_circularLowerTimeLabel)
  {
    v13 = objc_alloc_init(NTKVictoryLabel);
    circularLowerTimeLabel = self->_circularLowerTimeLabel;
    self->_circularLowerTimeLabel = v13;

    device3 = [(NTKOlympusTimeContentView *)self device];
    ___LayoutConstants_block_invoke_14(device3, v21);
    [(NTKVictoryLabel *)self->_circularLowerTimeLabel setAdditionalPaddingInsets:v21[0]];

    device4 = [(NTKOlympusTimeContentView *)self device];
    ___LayoutConstants_block_invoke_14(device4, v19);
    [(NTKVictoryLabel *)self->_circularLowerTimeLabel setDrawingRectOffset:v20, 0.0];

    fontForCircularDial2 = [(NTKOlympusTimeContentView *)self fontForCircularDial];
    [(CLKUIColoringLabel *)self->_circularLowerTimeLabel setFont:fontForCircularDial2];

    [(NTKVictoryLabel *)self->_circularLowerTimeLabel setTextAlignment:2];
    circularDigitsContainerView2 = [(NTKOlympusTimeContentView *)self circularDigitsContainerView];
    [circularDigitsContainerView2 addSubview:self->_circularLowerTimeLabel];
  }
}

- (id)createLogoButtonWithBackgroundImage:(id)image
{
  imageCopy = image;
  v5 = [NTKVictoryLogoButton buttonWithType:0];
  [v5 setBackgroundImage:imageCopy forState:0];

  [v5 setUserInteractionEnabled:1];
  [v5 addTarget:self action:sel_handleLogoButtonHighlighted_ forControlEvents:1];
  [v5 addTarget:self action:sel_handleLogoButtonResetHighlight_ forControlEvents:256];
  [v5 addTarget:self action:sel_handleLogoButtonTouchUpInside_ forControlEvents:64];
  [v5 sizeToFit];

  return v5;
}

- (void)createFullscreenDigitalViewsIfNeeded
{
  if (!self->_fullscreenDigitalUpperTimeLabel)
  {
    v3 = objc_alloc_init(NTKVictoryLabel);
    fullscreenDigitalUpperTimeLabel = self->_fullscreenDigitalUpperTimeLabel;
    self->_fullscreenDigitalUpperTimeLabel = v3;

    device = [(NTKOlympusTimeContentView *)self device];
    ___LayoutConstants_block_invoke_14(device, v20);
    [(NTKVictoryLabel *)self->_fullscreenDigitalUpperTimeLabel setAdditionalPaddingInsets:v20[0]];

    device2 = [(NTKOlympusTimeContentView *)self device];
    ___LayoutConstants_block_invoke_14(device2, v18);
    [(NTKVictoryLabel *)self->_fullscreenDigitalUpperTimeLabel setDrawingRectOffset:v19, 0.0];

    fontForDigitalFullscreen = [(NTKOlympusTimeContentView *)self fontForDigitalFullscreen];
    [(CLKUIColoringLabel *)self->_fullscreenDigitalUpperTimeLabel setFont:fontForDigitalFullscreen];

    [(NTKVictoryLabel *)self->_fullscreenDigitalUpperTimeLabel setTextAlignment:2];
    fullscreenDigitsContainerView = [(NTKOlympusTimeContentView *)self fullscreenDigitsContainerView];
    [fullscreenDigitsContainerView addSubview:self->_fullscreenDigitalUpperTimeLabel];
  }

  if (!self->_fullscreenDigitalLowerTimeLabel)
  {
    v9 = objc_alloc_init(NTKVictoryLabel);
    fullscreenDigitalLowerTimeLabel = self->_fullscreenDigitalLowerTimeLabel;
    self->_fullscreenDigitalLowerTimeLabel = v9;

    device3 = [(NTKOlympusTimeContentView *)self device];
    ___LayoutConstants_block_invoke_14(device3, v17);
    [(NTKVictoryLabel *)self->_fullscreenDigitalLowerTimeLabel setAdditionalPaddingInsets:v17[0]];

    device4 = [(NTKOlympusTimeContentView *)self device];
    ___LayoutConstants_block_invoke_14(device4, v15);
    [(NTKVictoryLabel *)self->_fullscreenDigitalLowerTimeLabel setDrawingRectOffset:v16, 0.0];

    fontForDigitalFullscreen2 = [(NTKOlympusTimeContentView *)self fontForDigitalFullscreen];
    [(CLKUIColoringLabel *)self->_fullscreenDigitalLowerTimeLabel setFont:fontForDigitalFullscreen2];

    [(NTKVictoryLabel *)self->_fullscreenDigitalLowerTimeLabel setTextAlignment:2];
    fullscreenDigitsContainerView2 = [(NTKOlympusTimeContentView *)self fullscreenDigitsContainerView];
    [fullscreenDigitsContainerView2 addSubview:self->_fullscreenDigitalLowerTimeLabel];
  }
}

- (void)createFullscreenHybridViewsIfNeeded
{
  if (!self->_fullscreenHybridUpperTimeLabel)
  {
    fontForHybridFullscreen = [(NTKOlympusTimeContentView *)self fontForHybridFullscreen];
    v4 = [(NTKOlympusTimeContentView *)self createTimeLabelWithFont:fontForHybridFullscreen option:1024];
    fullscreenHybridUpperTimeLabel = self->_fullscreenHybridUpperTimeLabel;
    self->_fullscreenHybridUpperTimeLabel = v4;

    fullscreenDigitsContainerView = [(NTKOlympusTimeContentView *)self fullscreenDigitsContainerView];
    [fullscreenDigitsContainerView addSubview:self->_fullscreenHybridUpperTimeLabel];
  }

  if (!self->_fullscreenHybridLowerTimeLabel)
  {
    v7 = objc_alloc_init(NTKVictoryLabel);
    fullscreenHybridLowerTimeLabel = self->_fullscreenHybridLowerTimeLabel;
    self->_fullscreenHybridLowerTimeLabel = v7;

    device = [(NTKOlympusTimeContentView *)self device];
    ___LayoutConstants_block_invoke_14(device, v12);
    [(NTKVictoryLabel *)self->_fullscreenHybridLowerTimeLabel setAdditionalPaddingInsets:v12[0]];

    fontForHybridFullscreen2 = [(NTKOlympusTimeContentView *)self fontForHybridFullscreen];
    [(CLKUIColoringLabel *)self->_fullscreenHybridLowerTimeLabel setFont:fontForHybridFullscreen2];

    [(NTKVictoryLabel *)self->_fullscreenHybridLowerTimeLabel setTextAlignment:1];
    fullscreenDigitsContainerView2 = [(NTKOlympusTimeContentView *)self fullscreenDigitsContainerView];
    [fullscreenDigitsContainerView2 addSubview:self->_fullscreenHybridLowerTimeLabel];
  }
}

- (void)removeFullscreenViews
{
  [(UIButton *)self->_fullscreenLogoButton removeFromSuperview];
  fullscreenLogoButton = self->_fullscreenLogoButton;
  self->_fullscreenLogoButton = 0;

  [(NTKVictoryTimeLabel *)self->_fullscreenHybridUpperTimeLabel removeFromSuperview];
  fullscreenHybridUpperTimeLabel = self->_fullscreenHybridUpperTimeLabel;
  self->_fullscreenHybridUpperTimeLabel = 0;

  [(NTKVictoryLabel *)self->_fullscreenHybridLowerTimeLabel removeFromSuperview];
  fullscreenHybridLowerTimeLabel = self->_fullscreenHybridLowerTimeLabel;
  self->_fullscreenHybridLowerTimeLabel = 0;

  [(NTKVictoryLabel *)self->_fullscreenDigitalUpperTimeLabel removeFromSuperview];
  fullscreenDigitalUpperTimeLabel = self->_fullscreenDigitalUpperTimeLabel;
  self->_fullscreenDigitalUpperTimeLabel = 0;

  [(NTKVictoryLabel *)self->_fullscreenDigitalLowerTimeLabel removeFromSuperview];
  fullscreenDigitalLowerTimeLabel = self->_fullscreenDigitalLowerTimeLabel;
  self->_fullscreenDigitalLowerTimeLabel = 0;
}

- (void)removeCircularViews
{
  [(NTKVictoryLabel *)self->_circularUpperTimeLabel removeFromSuperview];
  circularUpperTimeLabel = self->_circularUpperTimeLabel;
  self->_circularUpperTimeLabel = 0;

  [(NTKVictoryLabel *)self->_circularLowerTimeLabel removeFromSuperview];
  circularLowerTimeLabel = self->_circularLowerTimeLabel;
  self->_circularLowerTimeLabel = 0;

  [(UIButton *)self->_circularLogoButton removeFromSuperview];
  circularLogoButton = self->_circularLogoButton;
  self->_circularLogoButton = 0;
}

- (id)fontForCircularDial
{
  v3 = [(NTKOlympusTimeContentView *)self device:0];
  ___LayoutConstants_block_invoke_14(v3, &v7);

  if (self->_useSmallFont)
  {
    v4 = &v9;
  }

  else
  {
    v4 = &v8 + 1;
  }

  v5 = *v4;

  return [NTKVictoryLabel victoryFontWithSize:0 style:0 monospacedNumbers:v5];
}

- (id)monospacedFontForCircularDial
{
  v3 = [(NTKOlympusTimeContentView *)self device:0];
  ___LayoutConstants_block_invoke_14(v3, &v7);

  if (self->_useSmallFont)
  {
    v4 = &v9;
  }

  else
  {
    v4 = &v8 + 1;
  }

  v5 = *v4;

  return [NTKVictoryLabel victoryFontWithSize:0 style:1 monospacedNumbers:v5];
}

- (id)fontForHybridFullscreen
{
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  v6 = 0u;
  v2 = [(NTKOlympusTimeContentView *)self device:0];
  ___LayoutConstants_block_invoke_14(v2, &v5);

  v3 = *(&v6 + 1);

  return [NTKVictoryLabel victoryFontWithSize:0 style:v3];
}

- (id)fontForDigitalFullscreen
{
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v6 = 0u;
  v7 = 0u;
  v2 = [(NTKOlympusTimeContentView *)self device:0];
  ___LayoutConstants_block_invoke_14(v2, &v5);

  v3 = *&v6;

  return [NTKVictoryLabel victoryFontWithSize:0 style:v3];
}

- (id)createTimeLabelWithFont:(id)font option:(unint64_t)option
{
  v6 = [(NTKOlympusTimeContentView *)self styleWithFont:font];
  v7 = [NTKVictoryTimeLabel alloc];
  device = self->_device;
  device = [(NTKOlympusTimeContentView *)self device];
  ___LayoutConstants_block_invoke_14(device, v12);
  v10 = [(NTKVictoryTimeLabel *)v7 initWithTimeLabelOptions:option forDevice:device additionalPaddingInsets:v12[0]];

  [(NTKDigitalTimeLabel *)v10 setStyle:v6];

  return v10;
}

- (void)layoutSubviews
{
  v8.receiver = self;
  v8.super_class = NTKOlympusTimeContentView;
  [(NTKOlympusTimeContentView *)&v8 layoutSubviews];
  contentView = [(NTKOlympusTimeContentView *)self contentView];
  [(NTKOlympusTimeContentView *)self bounds];
  [contentView ntk_setBoundsAndPositionFromFrame:?];

  fullscreenDigitsContainerView = [(NTKOlympusTimeContentView *)self fullscreenDigitsContainerView];
  contentView2 = [(NTKOlympusTimeContentView *)self contentView];
  [contentView2 bounds];
  [fullscreenDigitsContainerView ntk_setBoundsAndPositionFromFrame:?];

  circularDigitsContainerView = [(NTKOlympusTimeContentView *)self circularDigitsContainerView];
  contentView3 = [(NTKOlympusTimeContentView *)self contentView];
  [contentView3 bounds];
  [circularDigitsContainerView ntk_setBoundsAndPositionFromFrame:?];

  [(NTKOlympusTimeContentView *)self updateLogosFrame];
  [(NTKOlympusTimeContentView *)self updateTimeLabelsFrame];
}

- (void)updateLogosFrame
{
  memset(v22, 0, sizeof(v22));
  device = [(NTKOlympusTimeContentView *)self device];
  ___LayoutConstants_block_invoke_14(device, v22);

  [(UIButton *)self->_fullscreenLogoButton bounds];
  CGRectGetWidth(v23);
  [(UIButton *)self->_fullscreenLogoButton bounds];
  CGRectGetHeight(v24);
  [(UIButton *)self->_fullscreenLogoButton bounds];
  CGRectGetWidth(v25);
  [(UIButton *)self->_fullscreenLogoButton bounds];
  CGRectGetHeight(v26);
  CLKInterpolateBetweenFloatsClipped();
  v5 = v4;
  CLKInterpolateBetweenFloatsClipped();
  [(UIButton *)self->_fullscreenLogoButton setCenter:v5, v6];
  [(UIButton *)self->_circularLogoButton bounds];
  CGRectGetWidth(v27);
  [(UIButton *)self->_circularLogoButton bounds];
  CGRectGetHeight(v28);
  [(NTKOlympusTimeContentView *)self bounds];
  CGRectGetMidX(v29);
  [(UIButton *)self->_circularLogoButton bounds];
  CGRectGetHeight(v30);
  CLKInterpolateBetweenFloatsClipped();
  v8 = v7;
  CLKInterpolateBetweenFloatsClipped();
  [(UIButton *)self->_circularLogoButton setCenter:v8, v9];
  dialFraction = self->_dialFraction;
  if (dialFraction <= 0.0 || dialFraction >= 1.0)
  {
    fullscreenLogoButton = self->_fullscreenLogoButton;
    v17 = *(MEMORY[0x277CBF2C0] + 16);
    v18 = *MEMORY[0x277CBF2C0];
    v19 = v17;
    v16 = *(MEMORY[0x277CBF2C0] + 32);
  }

  else
  {
    CLKCompressFraction();
    [(UIButton *)self->_fullscreenLogoButton center];
    [(UIButton *)self->_circularLogoButton center];
    CLKInterpolateBetweenFloatsClipped();
    v12 = v11;
    [(UIButton *)self->_fullscreenLogoButton center];
    [(UIButton *)self->_circularLogoButton center];
    CLKInterpolateBetweenFloatsClipped();
    [(UIButton *)self->_fullscreenLogoButton setCenter:v12, v13];
    [(UIButton *)self->_circularLogoButton bounds];
    [(UIButton *)self->_fullscreenLogoButton bounds];
    CLKInterpolateBetweenFloatsClipped();
    CGAffineTransformMakeScale(&v21, v14, v14);
    fullscreenLogoButton = self->_fullscreenLogoButton;
    v18 = *&v21.a;
    v19 = *&v21.c;
    v16 = *&v21.tx;
  }

  v20 = v16;
  [(UIButton *)fullscreenLogoButton setTransform:&v18];
}

- (void)updateTimeLabelsFrame
{
  v98 = 0u;
  v99 = 0u;
  v96 = 0u;
  v97 = 0u;
  v94 = 0u;
  v95 = 0u;
  v92 = 0u;
  v93 = 0u;
  memset(v91, 0, sizeof(v91));
  device = [(NTKOlympusTimeContentView *)self device];
  ___LayoutConstants_block_invoke_14(device, v91);

  if (self->_useSmallFont)
  {
    v4 = *(&v97 + 1);
    v5 = *&v98;
    [(NTKVictoryLabel *)self->_circularUpperTimeLabel bounds];
    v6 = v5 + CGRectGetHeight(v100) * -0.5;
    [(NTKVictoryLabel *)self->_circularUpperTimeLabel _baselineOffsetFromBottom];
    v8 = v6 + v7;
  }

  else
  {
    [(UIView *)self->_circularDigitsContainerView bounds];
    Width = CGRectGetWidth(v101);
    [(NTKVictoryLabel *)self->_circularUpperTimeLabel bounds];
    v4 = Width - v10 * 0.5 - *&v96;
    [(NTKVictoryLabel *)self->_circularUpperTimeLabel bounds];
    v8 = *(&v95 + 1) + v11 * 0.5;
  }

  [(NTKVictoryLabel *)self->_circularUpperTimeLabel setCenter:v4, v8];
  if (self->_useSmallFont)
  {
    v12 = *(&v98 + 1);
    v13 = *&v99;
    [(NTKVictoryLabel *)self->_circularLowerTimeLabel bounds];
    v14 = v13 + CGRectGetHeight(v102) * -0.5;
    [(NTKVictoryLabel *)self->_circularLowerTimeLabel _baselineOffsetFromBottom];
    v16 = v14 + v15;
  }

  else
  {
    [(NTKVictoryLabel *)self->_circularLowerTimeLabel bounds];
    v12 = *&v97 + v17 * 0.5;
    [(NTKVictoryLabel *)self->_circularLowerTimeLabel bounds];
    v16 = *(&v96 + 1) + v18 * 0.5;
  }

  [(NTKVictoryLabel *)self->_circularLowerTimeLabel setCenter:v12, v16];
  [(NTKVictoryTimeLabel *)self->_fullscreenHybridUpperTimeLabel bounds];
  v20 = v19;
  v22 = v21;
  [(NTKOlympusTimeContentView *)self bounds];
  v23 = CGRectGetWidth(v103);
  v24 = *&v93;
  [(UIView *)self->_fullscreenHybridUpperTimeLabel ntk_setBoundsAndPositionFromFrame:v23 - v20 - *&v93, *(&v92 + 1), v20, v22];
  [(NTKVictoryLabel *)self->_fullscreenDigitalUpperTimeLabel bounds];
  v26 = v25;
  v28 = v27;
  [(NTKOlympusTimeContentView *)self bounds];
  v29 = CGRectGetWidth(v104);
  v30 = v94;
  [(UIView *)self->_fullscreenDigitalUpperTimeLabel ntk_setBoundsAndPositionFromFrame:v29 - v26 - *(&v94 + 1), *&v94, v26, v28];
  [(NTKVictoryLabel *)self->_fullscreenHybridLowerTimeLabel bounds];
  v32 = v31;
  v34 = v33;
  [(NTKOlympusTimeContentView *)self bounds];
  v35 = CGRectGetWidth(v105) - v32 - v24;
  [(NTKVictoryTimeLabel *)self->_fullscreenHybridUpperTimeLabel frame];
  MaxY = CGRectGetMaxY(v106);
  v37 = *(&v93 + 1);
  [(UIView *)self->_fullscreenHybridLowerTimeLabel ntk_setBoundsAndPositionFromFrame:v35, MaxY + *(&v93 + 1), v32, v34];
  [(NTKVictoryLabel *)self->_fullscreenDigitalLowerTimeLabel bounds];
  v39 = v38;
  v41 = v40;
  [(NTKOlympusTimeContentView *)self bounds];
  v42 = CGRectGetWidth(v107) - v39 - *(&v30 + 1);
  [(NTKVictoryLabel *)self->_fullscreenDigitalUpperTimeLabel frame];
  v43 = CGRectGetMaxY(v108);
  v44 = *&v95;
  [(UIView *)self->_fullscreenDigitalLowerTimeLabel ntk_setBoundsAndPositionFromFrame:v42, v43 + *&v95, v39, v41];
  [(NTKVictoryTimeLabel *)self->_fullscreenHybridUpperTimeLabel center];
  [(NTKVictoryLabel *)self->_fullscreenDigitalUpperTimeLabel center];
  olympusDigitalLabelsPositionFraction = self->_olympusDigitalLabelsPositionFraction;
  if (olympusDigitalLabelsPositionFraction > 0.0 && olympusDigitalLabelsPositionFraction < 1.0)
  {
    CLKInterpolateBetweenFloatsClipped();
    v85 = v44;
    v47 = v46;
    CLKInterpolateBetweenFloatsClipped();
    [(NTKVictoryTimeLabel *)self->_fullscreenHybridUpperTimeLabel setCenter:v47, v48];
    CLKInterpolateBetweenFloatsClipped();
    v50 = v49;
    CGAffineTransformMakeScale(&v90, v49, v49);
    fullscreenHybridUpperTimeLabel = self->_fullscreenHybridUpperTimeLabel;
    v89 = v90;
    [(NTKVictoryTimeLabel *)fullscreenHybridUpperTimeLabel setTransform:&v89];
    [(NTKVictoryTimeLabel *)self->_fullscreenHybridUpperTimeLabel center];
    v53 = v52;
    [(NTKVictoryTimeLabel *)self->_fullscreenHybridUpperTimeLabel frame];
    v55 = v53 + v54 * 0.5;
    [(NTKVictoryLabel *)self->_fullscreenHybridLowerTimeLabel frame];
    v57 = v55 - v56 * 0.5;
    [(NTKVictoryTimeLabel *)self->_fullscreenHybridUpperTimeLabel center];
    v59 = v58;
    [(NTKVictoryTimeLabel *)self->_fullscreenHybridUpperTimeLabel frame];
    v61 = v37 + v59 + v60 * 0.5;
    [(NTKVictoryLabel *)self->_fullscreenHybridLowerTimeLabel frame];
    [(NTKVictoryLabel *)self->_fullscreenHybridLowerTimeLabel setCenter:v57, v61 + v62 * 0.5];
    v63 = v50;
    v64 = v50;
    v44 = v85;
    CGAffineTransformMakeScale(&v88, v63, v64);
    fullscreenHybridLowerTimeLabel = self->_fullscreenHybridLowerTimeLabel;
    v89 = v88;
    [(NTKVictoryLabel *)fullscreenHybridLowerTimeLabel setTransform:&v89];
  }

  digitalStyleFraction = self->_digitalStyleFraction;
  if (digitalStyleFraction > 0.0 && digitalStyleFraction < 1.0)
  {
    CLKInterpolateBetweenFloatsClipped();
    v68 = v67;
    CLKInterpolateBetweenFloatsClipped();
    [(NTKVictoryLabel *)self->_fullscreenDigitalUpperTimeLabel setCenter:v68, v69];
    CLKInterpolateBetweenFloatsClipped();
    v71 = v70;
    CGAffineTransformMakeScale(&v87, v70, v70);
    fullscreenDigitalUpperTimeLabel = self->_fullscreenDigitalUpperTimeLabel;
    v89 = v87;
    [(NTKVictoryLabel *)fullscreenDigitalUpperTimeLabel setTransform:&v89];
    [(NTKVictoryLabel *)self->_fullscreenDigitalUpperTimeLabel center];
    v74 = v73;
    [(NTKVictoryLabel *)self->_fullscreenDigitalUpperTimeLabel frame];
    v76 = v74 + v75 * 0.5;
    [(NTKVictoryLabel *)self->_fullscreenDigitalLowerTimeLabel frame];
    v78 = v76 - v77 * 0.5;
    [(NTKVictoryLabel *)self->_fullscreenDigitalUpperTimeLabel center];
    v80 = v79;
    [(NTKVictoryLabel *)self->_fullscreenDigitalUpperTimeLabel frame];
    v82 = v44 + v80 + v81 * 0.5;
    [(NTKVictoryLabel *)self->_fullscreenDigitalLowerTimeLabel frame];
    [(NTKVictoryLabel *)self->_fullscreenDigitalLowerTimeLabel setCenter:v78, v82 + v83 * 0.5];
    CGAffineTransformMakeScale(&v86, v71, v71);
    fullscreenDigitalLowerTimeLabel = self->_fullscreenDigitalLowerTimeLabel;
    v89 = v86;
    [(NTKVictoryLabel *)fullscreenDigitalLowerTimeLabel setTransform:&v89];
  }
}

- (void)setInvertedColors:(BOOL)colors
{
  if (self->_invertedColors != colors)
  {
    self->_invertedColors = colors;
    [(NTKOlympusTimeContentView *)self updateColors];
  }
}

- (void)setDial:(unint64_t)dial
{
  self->_dial = dial;
  v4 = 0.0;
  if (!dial)
  {
    v4 = 1.0;
  }

  self->_dialFraction = v4;
  [NTKOlympusTimeContentView setViewsVisibilityForDial:"setViewsVisibilityForDial:style:" style:?];
  fullscreenDigitsContainerView = [(NTKOlympusTimeContentView *)self fullscreenDigitsContainerView];
  v8 = *(MEMORY[0x277CBF2C0] + 16);
  v10 = *MEMORY[0x277CBF2C0];
  v9 = v10;
  v11 = v8;
  v12 = *(MEMORY[0x277CBF2C0] + 32);
  v7 = v12;
  [fullscreenDigitsContainerView setTransform:&v10];

  circularDigitsContainerView = [(NTKOlympusTimeContentView *)self circularDigitsContainerView];
  v10 = v9;
  v11 = v8;
  v12 = v7;
  [circularDigitsContainerView setTransform:&v10];

  [(NTKOlympusTimeContentView *)self updateLogosFrame];
}

- (void)setStyle:(unint64_t)style
{
  self->_style = style;
  [(NTKOlympusTimeContentView *)self updateStylesFraction:style fromStyle:style toStyle:1.0];
  [(NTKOlympusTimeContentView *)self setViewsVisibilityForDial:self->_dial style:self->_style];
  [(NTKOlympusTimeContentView *)self updateLogosFrame];

  [(NTKOlympusTimeContentView *)self updateTimeLabelsFrame];
}

- (void)setColorPalette:(id)palette
{
  objc_storeStrong(&self->_colorPalette, palette);
  paletteCopy = palette;
  objc_storeStrong(&self->_palette, self->_colorPalette);

  [(NTKOlympusTimeContentView *)self updateColors];
}

- (UIImage)circularLogoImage
{
  circularLogoImage = self->_circularLogoImage;
  if (!circularLogoImage)
  {
    NTKImageNamed(@"VictoryNTK-circular-logo");
  }

  v3 = circularLogoImage;

  return v3;
}

- (CGSize)logoImageSizeForCircularDial
{
  p_logoImageSizeForCircularDial = &self->_logoImageSizeForCircularDial;
  width = self->_logoImageSizeForCircularDial.width;
  height = self->_logoImageSizeForCircularDial.height;
  if (width == *MEMORY[0x277CBF3A8] && height == *(MEMORY[0x277CBF3A8] + 8))
  {
    circularLogoImage = [(NTKOlympusTimeContentView *)self circularLogoImage];
    [circularLogoImage size];
    p_logoImageSizeForCircularDial->width = v7;
    p_logoImageSizeForCircularDial->height = v8;

    width = p_logoImageSizeForCircularDial->width;
    height = p_logoImageSizeForCircularDial->height;
  }

  result.height = height;
  result.width = width;
  return result;
}

- (void)updateColors
{
  v11 = self->_palette;
  primaryTextColor = [(NTKOlympusColorPalette *)v11 primaryTextColor];
  primaryBackgroundColor = [(NTKOlympusColorPalette *)v11 primaryBackgroundColor];
  primaryLogoColor = [(NTKOlympusColorPalette *)v11 primaryLogoColor];
  if (self->_invertedColors)
  {
    secondaryTextColor = [(NTKOlympusColorPalette *)v11 secondaryTextColor];

    secondaryBackgroundColor = [(NTKOlympusColorPalette *)v11 secondaryBackgroundColor];

    secondaryLogoColor = [(NTKOlympusColorPalette *)v11 secondaryLogoColor];

    primaryTextColor = secondaryTextColor;
    primaryBackgroundColor = secondaryBackgroundColor;
    primaryLogoColor = secondaryLogoColor;
  }

  objc_storeStrong(&self->_currentForegroundColor, primaryTextColor);
  objc_storeStrong(&self->_currentBackgroundColor, primaryBackgroundColor);
  objc_storeStrong(&self->_currentLogoColor, primaryLogoColor);
  style = self->_style;
  tritiumLogoColor = primaryLogoColor;
  if (!style)
  {
    tritiumLogoColor = [(NTKOlympusColorPalette *)v11 tritiumLogoColor];
  }

  objc_storeStrong(&self->_tritiumLogoColor, tritiumLogoColor);
  if (!style)
  {
  }

  [(NTKOlympusTimeContentView *)self setBackgroundColor:primaryBackgroundColor];
  [(CLKUIColoringLabel *)self->_circularUpperTimeLabel setColor:primaryTextColor];
  [(CLKUIColoringLabel *)self->_circularLowerTimeLabel setColor:primaryTextColor];
  [(UIButton *)self->_circularLogoButton setTintColor:primaryLogoColor];
  [(UIButton *)self->_fullscreenLogoButton setTintColor:primaryLogoColor];
  [(NTKDigitalTimeLabel *)self->_fullscreenHybridUpperTimeLabel setColor:primaryTextColor];
  [(NTKVictoryLabel *)self->_fullscreenHybridLowerTimeLabel setFillColor:primaryTextColor];
  [(CLKUIColoringLabel *)self->_fullscreenDigitalUpperTimeLabel setColor:primaryTextColor];
  [(CLKUIColoringLabel *)self->_fullscreenDigitalLowerTimeLabel setColor:primaryTextColor];
}

- (void)applyTransitionFraction:(double)fraction fromDial:(unint64_t)dial toDial:(unint64_t)toDial
{
  if (dial == toDial)
  {

    [(NTKOlympusTimeContentView *)self setDial:fraction];
  }

  else
  {
    if (toDial == 1 && dial == 0)
    {
      fractionCopy = 1.0 - fraction;
    }

    else
    {
      fractionCopy = fraction;
    }

    self->_dialFraction = fractionCopy;
    [(NTKOlympusTimeContentView *)self setViewsVisibleForDialTransition];
    CLKCompressFraction();
    v9 = v8;
    CLKCompressFraction();
    v11 = v10;
    [(NTKVictoryLabel *)self->_circularUpperTimeLabel setAlpha:?];
    [(NTKVictoryLabel *)self->_circularLowerTimeLabel setAlpha:v11];
    [(NTKVictoryTimeLabel *)self->_fullscreenHybridUpperTimeLabel setAlpha:1.0 - v9];
    [(NTKVictoryLabel *)self->_fullscreenHybridLowerTimeLabel setAlpha:1.0 - v9];
    [(NTKVictoryLabel *)self->_fullscreenDigitalUpperTimeLabel setAlpha:1.0 - v9];
    [(NTKVictoryLabel *)self->_fullscreenDigitalLowerTimeLabel setAlpha:1.0 - v9];
    CLKInterpolateBetweenFloatsClipped();
    memset(&v21, 0, sizeof(v21));
    CGAffineTransformMakeScale(&v21, v12, v12);
    v20 = v21;
    fullscreenDigitsContainerView = [(NTKOlympusTimeContentView *)self fullscreenDigitsContainerView];
    v19 = v20;
    [fullscreenDigitsContainerView setTransform:&v19];

    CLKInterpolateBetweenFloatsClipped();
    CGAffineTransformMakeScale(&v19, v14, v14);
    v21 = v19;
    v18 = v19;
    circularDigitsContainerView = [(NTKOlympusTimeContentView *)self circularDigitsContainerView];
    v19 = v18;
    [circularDigitsContainerView setTransform:&v19];

    if (fractionCopy >= 1.0)
    {
      v16 = 0.0;
    }

    else
    {
      v16 = 1.0;
    }

    if (fractionCopy >= 1.0)
    {
      v17 = 1.0;
    }

    else
    {
      v17 = 0.0;
    }

    [(UIButton *)self->_fullscreenLogoButton setAlpha:v16];
    [(UIButton *)self->_circularLogoButton setAlpha:v17];
    [(NTKOlympusTimeContentView *)self updateLogosFrame];
  }
}

- (void)applyTransitionFraction:(double)fraction fromStyle:(unint64_t)style toStyle:(unint64_t)toStyle
{
  if (style == toStyle)
  {

    [(NTKOlympusTimeContentView *)self setStyle:fraction];
  }

  else
  {
    [(NTKOlympusTimeContentView *)self setViewsVisibleForStyleTransition];
    [(NTKOlympusTimeContentView *)self updateStylesFraction:style fromStyle:toStyle toStyle:fraction];
    [(NTKOlympusTimeContentView *)self updateTimeLabelsFrame];
    [(NTKOlympusTimeContentView *)self updateLogosFrame];
    [(NTKVictoryTimeLabel *)self->_fullscreenHybridUpperTimeLabel setAlpha:self->_olympusDigitalStyleFraction];
    [(NTKVictoryLabel *)self->_fullscreenHybridLowerTimeLabel setAlpha:self->_olympusDigitalStyleFraction];
    [(NTKVictoryLabel *)self->_fullscreenDigitalUpperTimeLabel setAlpha:self->_digitalStyleFraction];
    [(NTKVictoryLabel *)self->_fullscreenDigitalLowerTimeLabel setAlpha:self->_digitalStyleFraction];
    digitalStyleFraction = self->_digitalStyleFraction;
    if (digitalStyleFraction < self->_olympusDigitalStyleFraction)
    {
      digitalStyleFraction = self->_olympusDigitalStyleFraction;
    }

    [(NTKVictoryLabel *)self->_circularUpperTimeLabel setAlpha:digitalStyleFraction];
    olympusDigitalStyleFraction = self->_digitalStyleFraction;
    if (olympusDigitalStyleFraction < self->_olympusDigitalStyleFraction)
    {
      olympusDigitalStyleFraction = self->_olympusDigitalStyleFraction;
    }

    [(NTKVictoryLabel *)self->_circularLowerTimeLabel setAlpha:olympusDigitalStyleFraction];
    [(UIButton *)self->_fullscreenLogoButton setAlpha:1.0 - self->_analogStyleFraction];
    [(UIButton *)self->_fullscreenLogoButton alpha];
    [(UIButton *)self->_circularLogoButton setAlpha:?];
    if ((style == 1 || toStyle == 1) && (style == 2 || toStyle == 2) && self->_olympusDigitalLabelsPositionFraction == 1.0)
    {
      CLKCompressFraction();
      CLKInterpolateBetweenFloatsClipped();
      memset(&v19, 0, sizeof(v19));
      CGAffineTransformMakeScale(&v19, v11, v11);
      v18 = v19;
      fullscreenDigitsContainerView = [(NTKOlympusTimeContentView *)self fullscreenDigitsContainerView];
      v17 = v18;
      [fullscreenDigitsContainerView setTransform:&v17];

      v16 = v19;
      circularDigitsContainerView = [(NTKOlympusTimeContentView *)self circularDigitsContainerView];
      v17 = v16;
      [circularDigitsContainerView setTransform:&v17];

      CLKInterpolateBetweenFloatsClipped();
      v15 = v14;
      [(NTKVictoryTimeLabel *)self->_fullscreenHybridUpperTimeLabel setAlpha:?];
      [(NTKVictoryLabel *)self->_fullscreenHybridLowerTimeLabel setAlpha:v15];
      [(NTKVictoryLabel *)self->_circularUpperTimeLabel setAlpha:v15];
      [(NTKVictoryLabel *)self->_circularLowerTimeLabel setAlpha:v15];
    }
  }
}

- (void)updateStylesFraction:(double)fraction fromStyle:(unint64_t)style toStyle:(unint64_t)toStyle
{
  self->_digitalStyleFraction = 0.0;
  self->_olympusDigitalStyleFraction = 0.0;
  self->_olympusAnalogStyleFraction = 0.0;
  self->_analogStyleFraction = 0.0;
  self->_olympusDigitalLabelsPositionFraction = 0.0;
  if (!style || !toStyle)
  {
    fractionCopy = 1.0 - fraction;
    if (!toStyle)
    {
      fractionCopy = fraction;
    }

    self->_digitalStyleFraction = fractionCopy;
  }

  if (style == 1 || toStyle == 1)
  {
    fractionCopy2 = 1.0 - fraction;
    if (toStyle == 1)
    {
      fractionCopy2 = fraction;
    }

    self->_olympusDigitalStyleFraction = fractionCopy2;
    self->_olympusDigitalLabelsPositionFraction = fractionCopy2;
  }

  if (style != 2)
  {
    v7 = 0.0;
    if (toStyle != 2)
    {
      goto LABEL_13;
    }
  }

  v7 = 1.0;
  fractionCopy3 = 1.0 - fraction;
  if (toStyle == 2)
  {
    fractionCopy3 = fraction;
  }

  self->_olympusAnalogStyleFraction = fractionCopy3;
  self->_analogStyleSwooshPositionFraction = fractionCopy3;
  self->_olympusDigitalLabelsPositionFraction = 1.0;
  if (style == 3 || toStyle == 3)
  {
LABEL_13:
    self->_analogStyleSwooshPositionFraction = v7;
  }

  if (style == 3 || toStyle == 3)
  {
    if (toStyle != 3)
    {
      fraction = 1.0 - fraction;
    }

    self->_analogStyleFraction = fraction;
  }
}

- (void)setViewsVisibilityForDial:(unint64_t)dial style:(unint64_t)style
{
  v6 = dial == 0;
  v7 = style != 1 || dial == 0;
  v8 = dial != 0;
  fullscreenHybridUpperTimeLabel = self->_fullscreenHybridUpperTimeLabel;
  if (dial)
  {
    v10 = 1;
  }

  else
  {
    v10 = style > 1;
  }

  [(CLKUITimeLabel *)fullscreenHybridUpperTimeLabel setHidden:v7];
  [(NTKVictoryLabel *)self->_fullscreenHybridLowerTimeLabel setHidden:v7];
  [(NTKOlympusTimeContentView *)self ensureVisibleIfNeeded:self->_fullscreenHybridUpperTimeLabel];
  [(NTKOlympusTimeContentView *)self ensureVisibleIfNeeded:self->_fullscreenHybridLowerTimeLabel];
  if (style)
  {
    v11 = 1;
  }

  else
  {
    v11 = v6;
  }

  [(NTKVictoryLabel *)self->_fullscreenDigitalUpperTimeLabel setHidden:v11];
  [(NTKVictoryLabel *)self->_fullscreenDigitalLowerTimeLabel setHidden:v11];
  [(NTKOlympusTimeContentView *)self ensureVisibleIfNeeded:self->_fullscreenDigitalUpperTimeLabel];
  [(NTKOlympusTimeContentView *)self ensureVisibleIfNeeded:self->_fullscreenDigitalLowerTimeLabel];
  [(NTKVictoryLabel *)self->_circularUpperTimeLabel setHidden:v10];
  [(NTKVictoryLabel *)self->_circularLowerTimeLabel setHidden:v10];
  [(NTKOlympusTimeContentView *)self ensureVisibleIfNeeded:self->_circularUpperTimeLabel];
  [(NTKOlympusTimeContentView *)self ensureVisibleIfNeeded:self->_circularLowerTimeLabel];
  [(UIButton *)self->_fullscreenLogoButton setHidden:v6];
  [(UIButton *)self->_circularLogoButton setHidden:v8];
  [(NTKOlympusTimeContentView *)self ensureVisibleIfNeeded:self->_fullscreenLogoButton];
  circularLogoButton = self->_circularLogoButton;

  [(NTKOlympusTimeContentView *)self ensureVisibleIfNeeded:circularLogoButton];
}

- (void)setViewsVisibleForDialTransition
{
  style = self->_style;
  v4 = style != 0;
  v5 = style != 1;
  v6 = style > 1;
  [(CLKUITimeLabel *)self->_fullscreenHybridUpperTimeLabel setHidden:v5];
  [(NTKVictoryLabel *)self->_fullscreenHybridLowerTimeLabel setHidden:v5];
  [(NTKVictoryLabel *)self->_fullscreenDigitalUpperTimeLabel setHidden:v4];
  [(NTKVictoryLabel *)self->_fullscreenDigitalLowerTimeLabel setHidden:v4];
  [(NTKVictoryLabel *)self->_circularUpperTimeLabel setHidden:v6];
  [(NTKVictoryLabel *)self->_circularLowerTimeLabel setHidden:v6];
  [(UIButton *)self->_fullscreenLogoButton setHidden:0];
  circularLogoButton = self->_circularLogoButton;

  [(UIButton *)circularLogoButton setHidden:0];
}

- (void)setViewsVisibleForStyleTransition
{
  dial = self->_dial;
  v4 = dial != 0;
  v5 = dial == 0;
  [(CLKUITimeLabel *)self->_fullscreenHybridUpperTimeLabel setHidden:v5];
  [(NTKVictoryLabel *)self->_fullscreenHybridLowerTimeLabel setHidden:v5];
  [(NTKVictoryLabel *)self->_fullscreenDigitalUpperTimeLabel setHidden:v5];
  [(NTKVictoryLabel *)self->_fullscreenDigitalLowerTimeLabel setHidden:v5];
  [(NTKVictoryLabel *)self->_circularUpperTimeLabel setHidden:v4];
  [(NTKVictoryLabel *)self->_circularLowerTimeLabel setHidden:v4];
  [(UIButton *)self->_circularLogoButton setHidden:v4];
  [(UIButton *)self->_fullscreenLogoButton setHidden:v5];
  fullscreenDigitalUpperTimeLabel = self->_fullscreenDigitalUpperTimeLabel;

  [(NTKOlympusTimeContentView *)self ensureVisibleIfNeeded:fullscreenDigitalUpperTimeLabel];
}

- (void)ensureVisibleIfNeeded:(id)needed
{
  neededCopy = needed;
  isHidden = [neededCopy isHidden];
  v4 = 1.0;
  if (isHidden)
  {
    v4 = 0.0;
  }

  [neededCopy setAlpha:v4];
}

- (void)applyTransitionFraction:(double)fraction fromColorPalette:(id)palette toColorPalette:(id)colorPalette animateElements:(BOOL)elements
{
  elementsCopy = elements;
  paletteCopy = palette;
  colorPaletteCopy = colorPalette;
  if ([paletteCopy isEqual:colorPaletteCopy])
  {
    [(NTKOlympusTimeContentView *)self setPalette:colorPaletteCopy];
  }

  else
  {
    primaryTextColor = [paletteCopy primaryTextColor];
    primaryTextColor2 = [colorPaletteCopy primaryTextColor];
    primaryBackgroundColor = [paletteCopy primaryBackgroundColor];
    primaryBackgroundColor2 = [colorPaletteCopy primaryBackgroundColor];
    primaryLogoColor = [colorPaletteCopy primaryLogoColor];
    primaryLogoColor2 = [paletteCopy primaryLogoColor];
    if (self->_invertedColors)
    {
      secondaryTextColor = [paletteCopy secondaryTextColor];

      secondaryTextColor2 = [colorPaletteCopy secondaryTextColor];

      secondaryBackgroundColor = [paletteCopy secondaryBackgroundColor];

      secondaryBackgroundColor2 = [colorPaletteCopy secondaryBackgroundColor];

      secondaryLogoColor = [paletteCopy secondaryLogoColor];

      secondaryLogoColor2 = [colorPaletteCopy secondaryLogoColor];

      primaryTextColor2 = secondaryTextColor2;
      primaryTextColor = secondaryTextColor;
      primaryBackgroundColor2 = secondaryBackgroundColor2;
      primaryBackgroundColor = secondaryBackgroundColor;
      primaryLogoColor = secondaryLogoColor2;
      primaryLogoColor2 = secondaryLogoColor;
    }

    [(NTKOlympusTimeContentView *)self _applyTransitionFraction:primaryTextColor fromColor:primaryTextColor2 toColor:primaryBackgroundColor fromBackgroundColor:primaryBackgroundColor2 toBackgroundColor:primaryLogoColor2 fromLogoColor:primaryLogoColor toLogoColor:fraction];
    if (elementsCopy)
    {
      [(NTKOlympusTimeContentView *)self _applyAnimationPopTransitionWithFraction:fraction];
    }
  }
}

- (void)setLabelOutlineAlpha:(double)alpha
{
  [(NTKVictoryLabel *)self->_fullscreenHybridLowerTimeLabel setOutlineAlpha:?];
  [(NTKVictoryTimeLabel *)self->_fullscreenHybridUpperTimeLabel setOutlineAlpha:alpha];
  [(NTKVictoryLabel *)self->_fullscreenDigitalUpperTimeLabel setOutlineAlpha:alpha];
  [(NTKVictoryLabel *)self->_fullscreenDigitalLowerTimeLabel setOutlineAlpha:alpha];
  [(NTKVictoryLabel *)self->_circularUpperTimeLabel setOutlineAlpha:alpha];
  circularLowerTimeLabel = self->_circularLowerTimeLabel;

  [(NTKVictoryLabel *)circularLowerTimeLabel setOutlineAlpha:alpha];
}

- (void)setLabelOutlineColor:(id)color
{
  fullscreenHybridLowerTimeLabel = self->_fullscreenHybridLowerTimeLabel;
  colorCopy = color;
  [(NTKVictoryLabel *)fullscreenHybridLowerTimeLabel setOutlineColor:colorCopy];
  [(NTKVictoryTimeLabel *)self->_fullscreenHybridUpperTimeLabel setOutlineColor:colorCopy];
  [(NTKVictoryLabel *)self->_fullscreenDigitalUpperTimeLabel setOutlineColor:colorCopy];
  [(NTKVictoryLabel *)self->_fullscreenDigitalLowerTimeLabel setOutlineColor:colorCopy];
  [(NTKVictoryLabel *)self->_circularUpperTimeLabel setOutlineColor:colorCopy];
  [(NTKVictoryLabel *)self->_circularLowerTimeLabel setOutlineColor:colorCopy];
}

- (void)_applyAnimationPopTransitionWithFraction:(double)fraction
{
  [objc_opt_class() scaleForViewDuringColorChangeTransitionWithFraction:fraction];
  memset(&v6, 0, sizeof(v6));
  CGAffineTransformMakeScale(&v6, v4, v4);
  v5 = v6;
  [(NTKVictoryLabel *)self->_circularUpperTimeLabel setTransform:&v5];
  v5 = v6;
  [(NTKVictoryLabel *)self->_circularLowerTimeLabel setTransform:&v5];
  v5 = v6;
  [(UIButton *)self->_fullscreenLogoButton setTransform:&v5];
  v5 = v6;
  [(UIButton *)self->_circularLogoButton setTransform:&v5];
  v5 = v6;
  [(NTKVictoryTimeLabel *)self->_fullscreenHybridUpperTimeLabel setTransform:&v5];
  v5 = v6;
  [(NTKVictoryLabel *)self->_fullscreenHybridLowerTimeLabel setTransform:&v5];
  v5 = v6;
  [(NTKVictoryLabel *)self->_fullscreenDigitalUpperTimeLabel setTransform:&v5];
  v5 = v6;
  [(NTKVictoryLabel *)self->_fullscreenDigitalLowerTimeLabel setTransform:&v5];
}

- (void)_applyTransitionFraction:(double)fraction fromColor:(id)color toColor:(id)toColor fromBackgroundColor:(id)backgroundColor toBackgroundColor:(id)toBackgroundColor fromLogoColor:(id)logoColor toLogoColor:(id)toLogoColor
{
  toLogoColorCopy = toLogoColor;
  logoColorCopy = logoColor;
  toBackgroundColorCopy = toBackgroundColor;
  backgroundColorCopy = backgroundColor;
  [(NTKOlympusTimeContentView *)self _applyTransitionFraction:color fromTextColor:toColor toTextColor:fraction];
  v20 = NTKInterpolateBetweenColors();

  [(UIButton *)self->_circularLogoButton setTintColor:v20];
  [(UIButton *)self->_fullscreenLogoButton setTintColor:v20];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __136__NTKOlympusTimeContentView__applyTransitionFraction_fromColor_toColor_fromBackgroundColor_toBackgroundColor_fromLogoColor_toLogoColor___block_invoke;
  aBlock[3] = &__block_descriptor_40_e8_f12__0f8l;
  *&aBlock[4] = fraction;
  v21 = _Block_copy(aBlock);
  v21[2](0.0);
  v22 = NTKInterpolateBetweenColors();

  [(NTKOlympusTimeContentView *)self setBackgroundColor:v22];
}

float __136__NTKOlympusTimeContentView__applyTransitionFraction_fromColor_toColor_fromBackgroundColor_toBackgroundColor_fromLogoColor_toLogoColor___block_invoke(uint64_t a1, float a2)
{
  v2 = (*(a1 + 32) - ((a2 + 0.4) + -0.1)) / 0.200000003;
  if (v2 > 1.0)
  {
    v2 = 1.0;
  }

  return fmax(v2, 0.0);
}

- (void)_applyTransitionFraction:(double)fraction fromTextColor:(id)color toTextColor:(id)textColor
{
  v6 = NTKInterpolateBetweenColors();
  [(NTKDigitalTimeLabel *)self->_fullscreenHybridUpperTimeLabel setColor:v6];
  [(NTKVictoryLabel *)self->_fullscreenHybridLowerTimeLabel setFillColor:v6];
  [(CLKUIColoringLabel *)self->_fullscreenDigitalUpperTimeLabel setColor:v6];
  [(CLKUIColoringLabel *)self->_fullscreenDigitalLowerTimeLabel setColor:v6];
  [(CLKUIColoringLabel *)self->_circularUpperTimeLabel setColor:v6];
  [(CLKUIColoringLabel *)self->_circularLowerTimeLabel setColor:v6];
}

+ (double)scaleForViewDuringColorChangeTransitionWithFraction:(double)fraction
{
  v4 = NTKVictoryTransitionTimingFunction();
  v5 = v4;
  *&v6 = fraction;
  *&v6 = fabsf((*&v6 + -0.4) / 0.4);
  if (*&v6 > 1.0)
  {
    *&v6 = 1.0;
  }

  [v4 _solveForInput:v6];
  v8 = v7 * 0.075 + 0.925;

  return v8;
}

- (void)setLogoButtonHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  [(UIButton *)self->_fullscreenLogoButton setHighlighted:?];
  circularLogoButton = self->_circularLogoButton;

  [(UIButton *)circularLogoButton setHighlighted:highlightedCopy];
}

- (void)handleLogoButtonHighlighted:(id)highlighted
{
  delegate = [(NTKOlympusTimeContentView *)self delegate];
  [delegate olympusContentViewDidHandleLogoHighlighted:self];
}

- (void)handleLogoButtonResetHighlight:(id)highlight
{
  delegate = [(NTKOlympusTimeContentView *)self delegate];
  [delegate olympusContentViewDidHandleLogoResetHighlight:self];
}

- (void)handleLogoButtonTouchUpInside:(id)inside
{
  insideCopy = inside;
  [insideCopy bounds];
  [insideCopy convertRect:self toView:?];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  delegate = [(NTKOlympusTimeContentView *)self delegate];
  [delegate olympusContentView:self didHandleLogoTouchUpInsideFromRect:{v6, v8, v10, v12}];

  delegate2 = [(NTKOlympusTimeContentView *)self delegate];
  [delegate2 olympusContentViewDidHandleLogoResetHighlight:self];
}

- (BOOL)containsSubview:(id)subview
{
  subviewCopy = subview;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  superview = [subviewCopy superview];
  v6 = superview == self;

  v16 = v6;
  if (v14[3])
  {
    v7 = 1;
  }

  else
  {
    subviews = [(NTKOlympusTimeContentView *)self subviews];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __45__NTKOlympusTimeContentView_containsSubview___block_invoke;
    v10[3] = &unk_278780528;
    v12 = &v13;
    v11 = subviewCopy;
    [subviews enumerateObjectsUsingBlock:v10];

    v7 = *(v14 + 24);
  }

  _Block_object_dispose(&v13, 8);

  return v7 & 1;
}

uint64_t __45__NTKOlympusTimeContentView_containsSubview___block_invoke(uint64_t result, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  *(*(*(result + 40) + 8) + 24) = *(result + 32) == a2;
  *a4 = *(*(*(result + 40) + 8) + 24);
  return result;
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  eventCopy = event;
  layer = [(NTKOlympusTimeContentView *)self layer];
  mask = [layer mask];
  path = [mask path];

  if (path)
  {
    v15.x = x;
    v15.y = y;
    v11 = CGPathContainsPoint(path, 0, v15, 0);
  }

  else
  {
    v14.receiver = self;
    v14.super_class = NTKOlympusTimeContentView;
    v11 = [(NTKOlympusTimeContentView *)&v14 pointInside:eventCopy withEvent:x, y];
  }

  v12 = v11;

  return v12;
}

- (void)timeFormatterTextDidChange:(id)change
{
  fullscreenHybridUpperTimeLabel = self->_fullscreenHybridUpperTimeLabel;
  overrideDate = [change overrideDate];
  [(NTKDigitalTimeLabel *)fullscreenHybridUpperTimeLabel setOverrideDate:overrideDate duration:0.0];

  timeSubstringToSeparatorText = [(CLKTimeFormatter *)self->_timeFormatter timeSubstringToSeparatorText];
  v6 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:timeSubstringToSeparatorText];
  v7 = [timeSubstringToSeparatorText hasSuffix:@"1"];
  monospacedFontForCircularDial = [(NTKOlympusTimeContentView *)self monospacedFontForCircularDial];
  v9 = monospacedFontForCircularDial;
  if (v7)
  {
    v10 = 1;
  }

  else
  {
    v10 = monospacedFontForCircularDial == 0;
  }

  if (!v10)
  {
    [v6 addAttribute:*MEMORY[0x277D740A8] value:monospacedFontForCircularDial range:{objc_msgSend(timeSubstringToSeparatorText, "length") - 1, 1}];
  }

  color = [(CLKUIColoringLabel *)self->_circularUpperTimeLabel color];
  v12 = MEMORY[0x277D740C0];
  if (color)
  {
    [v6 addAttribute:*MEMORY[0x277D740C0] value:color range:{0, objc_msgSend(timeSubstringToSeparatorText, "length")}];
  }

  [(NTKVictoryLabel *)self->_circularUpperTimeLabel setAttributedText:v6];
  [(NTKVictoryLabel *)self->_circularUpperTimeLabel sizeToFit];
  [(NTKVictoryLabel *)self->_fullscreenDigitalUpperTimeLabel setText:timeSubstringToSeparatorText];
  [(NTKVictoryLabel *)self->_fullscreenDigitalUpperTimeLabel sizeToFit];
  [(CLKTimeFormatter *)self->_timeFormatter setIncludeSeparatorInTimeSubstringFromSeparatorText:0];
  timeSubstringFromSeparatorText = [(CLKTimeFormatter *)self->_timeFormatter timeSubstringFromSeparatorText];
  [(NTKVictoryLabel *)self->_fullscreenHybridLowerTimeLabel setText:timeSubstringFromSeparatorText];
  [(NTKVictoryLabel *)self->_fullscreenHybridLowerTimeLabel sizeToFit];
  [(NTKVictoryLabel *)self->_fullscreenDigitalLowerTimeLabel setText:timeSubstringFromSeparatorText];
  [(NTKVictoryLabel *)self->_fullscreenDigitalLowerTimeLabel sizeToFit];
  v14 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:timeSubstringFromSeparatorText];
  if (![timeSubstringFromSeparatorText hasPrefix:@"1"] && v9)
  {
    [v14 addAttribute:*MEMORY[0x277D740A8] value:v9 range:{0, 1}];
  }

  color2 = [(CLKUIColoringLabel *)self->_circularLowerTimeLabel color];
  if (color2)
  {
    [v14 addAttribute:*v12 value:color2 range:{0, objc_msgSend(timeSubstringFromSeparatorText, "length")}];
  }

  [(NTKVictoryLabel *)self->_circularLowerTimeLabel setAttributedText:v14];
  [(NTKVictoryLabel *)self->_circularLowerTimeLabel sizeToFit];
  [(NTKOlympusTimeContentView *)self updateTimeLabelsFrame];
}

- (NTKOlympusContentViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end