@interface NTKOlympusTimeContentView
+ (double)scaleForViewDuringColorChangeTransitionWithFraction:(double)a3;
- (BOOL)containsSubview:(id)a3;
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (CGSize)logoImageSizeForCircularDial;
- (NTKOlympusContentViewDelegate)delegate;
- (NTKOlympusTimeContentView)initWithDevice:(id)a3 dial:(unint64_t)a4 style:(unint64_t)a5 colorPalette:(id)a6 useSmallFont:(BOOL)a7 circularLogoImage:(id)a8;
- (UIImage)circularLogoImage;
- (id)createLogoButtonWithBackgroundImage:(id)a3;
- (id)createTimeLabelWithFont:(id)a3 option:(unint64_t)a4;
- (id)fontForCircularDial;
- (id)fontForDigitalFullscreen;
- (id)fontForHybridFullscreen;
- (id)monospacedFontForCircularDial;
- (void)_applyAnimationPopTransitionWithFraction:(double)a3;
- (void)_applyTransitionFraction:(double)a3 fromColor:(id)a4 toColor:(id)a5 fromBackgroundColor:(id)a6 toBackgroundColor:(id)a7 fromLogoColor:(id)a8 toLogoColor:(id)a9;
- (void)_applyTransitionFraction:(double)a3 fromTextColor:(id)a4 toTextColor:(id)a5;
- (void)applyTransitionFraction:(double)a3 fromColorPalette:(id)a4 toColorPalette:(id)a5 animateElements:(BOOL)a6;
- (void)applyTransitionFraction:(double)a3 fromDial:(unint64_t)a4 toDial:(unint64_t)a5;
- (void)applyTransitionFraction:(double)a3 fromStyle:(unint64_t)a4 toStyle:(unint64_t)a5;
- (void)configureViewsForEditing;
- (void)createAndRemoveViewsForCurrentStateIfNeeded;
- (void)createCircularViewsIfNeeded;
- (void)createFullscreenDigitalViewsIfNeeded;
- (void)createFullscreenHybridViewsIfNeeded;
- (void)createFullscreenLogoIfNeeded;
- (void)dealloc;
- (void)ensureVisibleIfNeeded:(id)a3;
- (void)handleLogoButtonHighlighted:(id)a3;
- (void)handleLogoButtonResetHighlight:(id)a3;
- (void)handleLogoButtonTouchUpInside:(id)a3;
- (void)layoutSubviews;
- (void)removeCircularViews;
- (void)removeFullscreenViews;
- (void)setColorPalette:(id)a3;
- (void)setDial:(unint64_t)a3;
- (void)setInvertedColors:(BOOL)a3;
- (void)setLabelOutlineAlpha:(double)a3;
- (void)setLabelOutlineColor:(id)a3;
- (void)setLogoButtonHighlighted:(BOOL)a3;
- (void)setStyle:(unint64_t)a3;
- (void)setViewsVisibilityForDial:(unint64_t)a3 style:(unint64_t)a4;
- (void)setViewsVisibleForDialTransition;
- (void)setViewsVisibleForStyleTransition;
- (void)timeFormatterTextDidChange:(id)a3;
- (void)updateColors;
- (void)updateLogosFrame;
- (void)updateStylesFraction:(double)a3 fromStyle:(unint64_t)a4 toStyle:(unint64_t)a5;
- (void)updateTimeLabelsFrame;
@end

@implementation NTKOlympusTimeContentView

- (NTKOlympusTimeContentView)initWithDevice:(id)a3 dial:(unint64_t)a4 style:(unint64_t)a5 colorPalette:(id)a6 useSmallFont:(BOOL)a7 circularLogoImage:(id)a8
{
  v14 = a3;
  v15 = a6;
  v16 = a8;
  v33.receiver = self;
  v33.super_class = NTKOlympusTimeContentView;
  v17 = [(NTKOlympusTimeContentView *)&v33 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v18 = v17;
  if (v17)
  {
    [(NTKOlympusTimeContentView *)v17 setDevice:v14];
    v18->_style = a5;
    v18->_dial = a4;
    objc_storeStrong(&v18->_colorPalette, a6);
    v18->_useSmallFont = a7;
    objc_storeStrong(&v18->_circularLogoImage, a8);
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

    v26 = [(NTKOlympusTimeContentView *)v18 contentView];
    v27 = [(NTKOlympusTimeContentView *)v18 fullscreenDigitsContainerView];
    [v26 addSubview:v27];

    v28 = objc_alloc(MEMORY[0x277D75D18]);
    [(NTKOlympusTimeContentView *)v18 bounds];
    v29 = [v28 initWithFrame:?];
    [(NTKOlympusTimeContentView *)v18 setCircularDigitsContainerView:v29];

    v30 = [(NTKOlympusTimeContentView *)v18 contentView];
    v31 = [(NTKOlympusTimeContentView *)v18 circularDigitsContainerView];
    [v30 addSubview:v31];

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
    v3 = [(NTKOlympusTimeContentView *)self circularLogoImage];
    v4 = [(NTKOlympusTimeContentView *)self createLogoButtonWithBackgroundImage:v3];
    circularLogoButton = self->_circularLogoButton;
    self->_circularLogoButton = v4;

    v6 = [(NTKOlympusTimeContentView *)self contentView];
    [v6 addSubview:self->_circularLogoButton];
  }

  if (!self->_circularUpperTimeLabel)
  {
    v7 = objc_alloc_init(NTKVictoryLabel);
    circularUpperTimeLabel = self->_circularUpperTimeLabel;
    self->_circularUpperTimeLabel = v7;

    v9 = [(NTKOlympusTimeContentView *)self device];
    ___LayoutConstants_block_invoke_14(v9, v24);
    [(NTKVictoryLabel *)self->_circularUpperTimeLabel setAdditionalPaddingInsets:v24[0]];

    v10 = [(NTKOlympusTimeContentView *)self device];
    ___LayoutConstants_block_invoke_14(v10, v22);
    [(NTKVictoryLabel *)self->_circularUpperTimeLabel setDrawingRectOffset:v23, 0.0];

    v11 = [(NTKOlympusTimeContentView *)self fontForCircularDial];
    [(CLKUIColoringLabel *)self->_circularUpperTimeLabel setFont:v11];

    [(NTKVictoryLabel *)self->_circularUpperTimeLabel setTextAlignment:2];
    v12 = [(NTKOlympusTimeContentView *)self circularDigitsContainerView];
    [v12 addSubview:self->_circularUpperTimeLabel];
  }

  if (!self->_circularLowerTimeLabel)
  {
    v13 = objc_alloc_init(NTKVictoryLabel);
    circularLowerTimeLabel = self->_circularLowerTimeLabel;
    self->_circularLowerTimeLabel = v13;

    v15 = [(NTKOlympusTimeContentView *)self device];
    ___LayoutConstants_block_invoke_14(v15, v21);
    [(NTKVictoryLabel *)self->_circularLowerTimeLabel setAdditionalPaddingInsets:v21[0]];

    v16 = [(NTKOlympusTimeContentView *)self device];
    ___LayoutConstants_block_invoke_14(v16, v19);
    [(NTKVictoryLabel *)self->_circularLowerTimeLabel setDrawingRectOffset:v20, 0.0];

    v17 = [(NTKOlympusTimeContentView *)self fontForCircularDial];
    [(CLKUIColoringLabel *)self->_circularLowerTimeLabel setFont:v17];

    [(NTKVictoryLabel *)self->_circularLowerTimeLabel setTextAlignment:2];
    v18 = [(NTKOlympusTimeContentView *)self circularDigitsContainerView];
    [v18 addSubview:self->_circularLowerTimeLabel];
  }
}

- (id)createLogoButtonWithBackgroundImage:(id)a3
{
  v4 = a3;
  v5 = [NTKVictoryLogoButton buttonWithType:0];
  [v5 setBackgroundImage:v4 forState:0];

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

    v5 = [(NTKOlympusTimeContentView *)self device];
    ___LayoutConstants_block_invoke_14(v5, v20);
    [(NTKVictoryLabel *)self->_fullscreenDigitalUpperTimeLabel setAdditionalPaddingInsets:v20[0]];

    v6 = [(NTKOlympusTimeContentView *)self device];
    ___LayoutConstants_block_invoke_14(v6, v18);
    [(NTKVictoryLabel *)self->_fullscreenDigitalUpperTimeLabel setDrawingRectOffset:v19, 0.0];

    v7 = [(NTKOlympusTimeContentView *)self fontForDigitalFullscreen];
    [(CLKUIColoringLabel *)self->_fullscreenDigitalUpperTimeLabel setFont:v7];

    [(NTKVictoryLabel *)self->_fullscreenDigitalUpperTimeLabel setTextAlignment:2];
    v8 = [(NTKOlympusTimeContentView *)self fullscreenDigitsContainerView];
    [v8 addSubview:self->_fullscreenDigitalUpperTimeLabel];
  }

  if (!self->_fullscreenDigitalLowerTimeLabel)
  {
    v9 = objc_alloc_init(NTKVictoryLabel);
    fullscreenDigitalLowerTimeLabel = self->_fullscreenDigitalLowerTimeLabel;
    self->_fullscreenDigitalLowerTimeLabel = v9;

    v11 = [(NTKOlympusTimeContentView *)self device];
    ___LayoutConstants_block_invoke_14(v11, v17);
    [(NTKVictoryLabel *)self->_fullscreenDigitalLowerTimeLabel setAdditionalPaddingInsets:v17[0]];

    v12 = [(NTKOlympusTimeContentView *)self device];
    ___LayoutConstants_block_invoke_14(v12, v15);
    [(NTKVictoryLabel *)self->_fullscreenDigitalLowerTimeLabel setDrawingRectOffset:v16, 0.0];

    v13 = [(NTKOlympusTimeContentView *)self fontForDigitalFullscreen];
    [(CLKUIColoringLabel *)self->_fullscreenDigitalLowerTimeLabel setFont:v13];

    [(NTKVictoryLabel *)self->_fullscreenDigitalLowerTimeLabel setTextAlignment:2];
    v14 = [(NTKOlympusTimeContentView *)self fullscreenDigitsContainerView];
    [v14 addSubview:self->_fullscreenDigitalLowerTimeLabel];
  }
}

- (void)createFullscreenHybridViewsIfNeeded
{
  if (!self->_fullscreenHybridUpperTimeLabel)
  {
    v3 = [(NTKOlympusTimeContentView *)self fontForHybridFullscreen];
    v4 = [(NTKOlympusTimeContentView *)self createTimeLabelWithFont:v3 option:1024];
    fullscreenHybridUpperTimeLabel = self->_fullscreenHybridUpperTimeLabel;
    self->_fullscreenHybridUpperTimeLabel = v4;

    v6 = [(NTKOlympusTimeContentView *)self fullscreenDigitsContainerView];
    [v6 addSubview:self->_fullscreenHybridUpperTimeLabel];
  }

  if (!self->_fullscreenHybridLowerTimeLabel)
  {
    v7 = objc_alloc_init(NTKVictoryLabel);
    fullscreenHybridLowerTimeLabel = self->_fullscreenHybridLowerTimeLabel;
    self->_fullscreenHybridLowerTimeLabel = v7;

    v9 = [(NTKOlympusTimeContentView *)self device];
    ___LayoutConstants_block_invoke_14(v9, v12);
    [(NTKVictoryLabel *)self->_fullscreenHybridLowerTimeLabel setAdditionalPaddingInsets:v12[0]];

    v10 = [(NTKOlympusTimeContentView *)self fontForHybridFullscreen];
    [(CLKUIColoringLabel *)self->_fullscreenHybridLowerTimeLabel setFont:v10];

    [(NTKVictoryLabel *)self->_fullscreenHybridLowerTimeLabel setTextAlignment:1];
    v11 = [(NTKOlympusTimeContentView *)self fullscreenDigitsContainerView];
    [v11 addSubview:self->_fullscreenHybridLowerTimeLabel];
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

- (id)createTimeLabelWithFont:(id)a3 option:(unint64_t)a4
{
  v6 = [(NTKOlympusTimeContentView *)self styleWithFont:a3];
  v7 = [NTKVictoryTimeLabel alloc];
  device = self->_device;
  v9 = [(NTKOlympusTimeContentView *)self device];
  ___LayoutConstants_block_invoke_14(v9, v12);
  v10 = [(NTKVictoryTimeLabel *)v7 initWithTimeLabelOptions:a4 forDevice:device additionalPaddingInsets:v12[0]];

  [(NTKDigitalTimeLabel *)v10 setStyle:v6];

  return v10;
}

- (void)layoutSubviews
{
  v8.receiver = self;
  v8.super_class = NTKOlympusTimeContentView;
  [(NTKOlympusTimeContentView *)&v8 layoutSubviews];
  v3 = [(NTKOlympusTimeContentView *)self contentView];
  [(NTKOlympusTimeContentView *)self bounds];
  [v3 ntk_setBoundsAndPositionFromFrame:?];

  v4 = [(NTKOlympusTimeContentView *)self fullscreenDigitsContainerView];
  v5 = [(NTKOlympusTimeContentView *)self contentView];
  [v5 bounds];
  [v4 ntk_setBoundsAndPositionFromFrame:?];

  v6 = [(NTKOlympusTimeContentView *)self circularDigitsContainerView];
  v7 = [(NTKOlympusTimeContentView *)self contentView];
  [v7 bounds];
  [v6 ntk_setBoundsAndPositionFromFrame:?];

  [(NTKOlympusTimeContentView *)self updateLogosFrame];
  [(NTKOlympusTimeContentView *)self updateTimeLabelsFrame];
}

- (void)updateLogosFrame
{
  memset(v22, 0, sizeof(v22));
  v3 = [(NTKOlympusTimeContentView *)self device];
  ___LayoutConstants_block_invoke_14(v3, v22);

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
  v3 = [(NTKOlympusTimeContentView *)self device];
  ___LayoutConstants_block_invoke_14(v3, v91);

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

- (void)setInvertedColors:(BOOL)a3
{
  if (self->_invertedColors != a3)
  {
    self->_invertedColors = a3;
    [(NTKOlympusTimeContentView *)self updateColors];
  }
}

- (void)setDial:(unint64_t)a3
{
  self->_dial = a3;
  v4 = 0.0;
  if (!a3)
  {
    v4 = 1.0;
  }

  self->_dialFraction = v4;
  [NTKOlympusTimeContentView setViewsVisibilityForDial:"setViewsVisibilityForDial:style:" style:?];
  v5 = [(NTKOlympusTimeContentView *)self fullscreenDigitsContainerView];
  v8 = *(MEMORY[0x277CBF2C0] + 16);
  v10 = *MEMORY[0x277CBF2C0];
  v9 = v10;
  v11 = v8;
  v12 = *(MEMORY[0x277CBF2C0] + 32);
  v7 = v12;
  [v5 setTransform:&v10];

  v6 = [(NTKOlympusTimeContentView *)self circularDigitsContainerView];
  v10 = v9;
  v11 = v8;
  v12 = v7;
  [v6 setTransform:&v10];

  [(NTKOlympusTimeContentView *)self updateLogosFrame];
}

- (void)setStyle:(unint64_t)a3
{
  self->_style = a3;
  [(NTKOlympusTimeContentView *)self updateStylesFraction:a3 fromStyle:a3 toStyle:1.0];
  [(NTKOlympusTimeContentView *)self setViewsVisibilityForDial:self->_dial style:self->_style];
  [(NTKOlympusTimeContentView *)self updateLogosFrame];

  [(NTKOlympusTimeContentView *)self updateTimeLabelsFrame];
}

- (void)setColorPalette:(id)a3
{
  objc_storeStrong(&self->_colorPalette, a3);
  v5 = a3;
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
    v6 = [(NTKOlympusTimeContentView *)self circularLogoImage];
    [v6 size];
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
  v3 = [(NTKOlympusColorPalette *)v11 primaryTextColor];
  v4 = [(NTKOlympusColorPalette *)v11 primaryBackgroundColor];
  v5 = [(NTKOlympusColorPalette *)v11 primaryLogoColor];
  if (self->_invertedColors)
  {
    v6 = [(NTKOlympusColorPalette *)v11 secondaryTextColor];

    v7 = [(NTKOlympusColorPalette *)v11 secondaryBackgroundColor];

    v8 = [(NTKOlympusColorPalette *)v11 secondaryLogoColor];

    v3 = v6;
    v4 = v7;
    v5 = v8;
  }

  objc_storeStrong(&self->_currentForegroundColor, v3);
  objc_storeStrong(&self->_currentBackgroundColor, v4);
  objc_storeStrong(&self->_currentLogoColor, v5);
  style = self->_style;
  v10 = v5;
  if (!style)
  {
    v10 = [(NTKOlympusColorPalette *)v11 tritiumLogoColor];
  }

  objc_storeStrong(&self->_tritiumLogoColor, v10);
  if (!style)
  {
  }

  [(NTKOlympusTimeContentView *)self setBackgroundColor:v4];
  [(CLKUIColoringLabel *)self->_circularUpperTimeLabel setColor:v3];
  [(CLKUIColoringLabel *)self->_circularLowerTimeLabel setColor:v3];
  [(UIButton *)self->_circularLogoButton setTintColor:v5];
  [(UIButton *)self->_fullscreenLogoButton setTintColor:v5];
  [(NTKDigitalTimeLabel *)self->_fullscreenHybridUpperTimeLabel setColor:v3];
  [(NTKVictoryLabel *)self->_fullscreenHybridLowerTimeLabel setFillColor:v3];
  [(CLKUIColoringLabel *)self->_fullscreenDigitalUpperTimeLabel setColor:v3];
  [(CLKUIColoringLabel *)self->_fullscreenDigitalLowerTimeLabel setColor:v3];
}

- (void)applyTransitionFraction:(double)a3 fromDial:(unint64_t)a4 toDial:(unint64_t)a5
{
  if (a4 == a5)
  {

    [(NTKOlympusTimeContentView *)self setDial:a3];
  }

  else
  {
    if (a5 == 1 && a4 == 0)
    {
      v7 = 1.0 - a3;
    }

    else
    {
      v7 = a3;
    }

    self->_dialFraction = v7;
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
    v13 = [(NTKOlympusTimeContentView *)self fullscreenDigitsContainerView];
    v19 = v20;
    [v13 setTransform:&v19];

    CLKInterpolateBetweenFloatsClipped();
    CGAffineTransformMakeScale(&v19, v14, v14);
    v21 = v19;
    v18 = v19;
    v15 = [(NTKOlympusTimeContentView *)self circularDigitsContainerView];
    v19 = v18;
    [v15 setTransform:&v19];

    if (v7 >= 1.0)
    {
      v16 = 0.0;
    }

    else
    {
      v16 = 1.0;
    }

    if (v7 >= 1.0)
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

- (void)applyTransitionFraction:(double)a3 fromStyle:(unint64_t)a4 toStyle:(unint64_t)a5
{
  if (a4 == a5)
  {

    [(NTKOlympusTimeContentView *)self setStyle:a3];
  }

  else
  {
    [(NTKOlympusTimeContentView *)self setViewsVisibleForStyleTransition];
    [(NTKOlympusTimeContentView *)self updateStylesFraction:a4 fromStyle:a5 toStyle:a3];
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
    if ((a4 == 1 || a5 == 1) && (a4 == 2 || a5 == 2) && self->_olympusDigitalLabelsPositionFraction == 1.0)
    {
      CLKCompressFraction();
      CLKInterpolateBetweenFloatsClipped();
      memset(&v19, 0, sizeof(v19));
      CGAffineTransformMakeScale(&v19, v11, v11);
      v18 = v19;
      v12 = [(NTKOlympusTimeContentView *)self fullscreenDigitsContainerView];
      v17 = v18;
      [v12 setTransform:&v17];

      v16 = v19;
      v13 = [(NTKOlympusTimeContentView *)self circularDigitsContainerView];
      v17 = v16;
      [v13 setTransform:&v17];

      CLKInterpolateBetweenFloatsClipped();
      v15 = v14;
      [(NTKVictoryTimeLabel *)self->_fullscreenHybridUpperTimeLabel setAlpha:?];
      [(NTKVictoryLabel *)self->_fullscreenHybridLowerTimeLabel setAlpha:v15];
      [(NTKVictoryLabel *)self->_circularUpperTimeLabel setAlpha:v15];
      [(NTKVictoryLabel *)self->_circularLowerTimeLabel setAlpha:v15];
    }
  }
}

- (void)updateStylesFraction:(double)a3 fromStyle:(unint64_t)a4 toStyle:(unint64_t)a5
{
  self->_digitalStyleFraction = 0.0;
  self->_olympusDigitalStyleFraction = 0.0;
  self->_olympusAnalogStyleFraction = 0.0;
  self->_analogStyleFraction = 0.0;
  self->_olympusDigitalLabelsPositionFraction = 0.0;
  if (!a4 || !a5)
  {
    v5 = 1.0 - a3;
    if (!a5)
    {
      v5 = a3;
    }

    self->_digitalStyleFraction = v5;
  }

  if (a4 == 1 || a5 == 1)
  {
    v6 = 1.0 - a3;
    if (a5 == 1)
    {
      v6 = a3;
    }

    self->_olympusDigitalStyleFraction = v6;
    self->_olympusDigitalLabelsPositionFraction = v6;
  }

  if (a4 != 2)
  {
    v7 = 0.0;
    if (a5 != 2)
    {
      goto LABEL_13;
    }
  }

  v7 = 1.0;
  v8 = 1.0 - a3;
  if (a5 == 2)
  {
    v8 = a3;
  }

  self->_olympusAnalogStyleFraction = v8;
  self->_analogStyleSwooshPositionFraction = v8;
  self->_olympusDigitalLabelsPositionFraction = 1.0;
  if (a4 == 3 || a5 == 3)
  {
LABEL_13:
    self->_analogStyleSwooshPositionFraction = v7;
  }

  if (a4 == 3 || a5 == 3)
  {
    if (a5 != 3)
    {
      a3 = 1.0 - a3;
    }

    self->_analogStyleFraction = a3;
  }
}

- (void)setViewsVisibilityForDial:(unint64_t)a3 style:(unint64_t)a4
{
  v6 = a3 == 0;
  v7 = a4 != 1 || a3 == 0;
  v8 = a3 != 0;
  fullscreenHybridUpperTimeLabel = self->_fullscreenHybridUpperTimeLabel;
  if (a3)
  {
    v10 = 1;
  }

  else
  {
    v10 = a4 > 1;
  }

  [(CLKUITimeLabel *)fullscreenHybridUpperTimeLabel setHidden:v7];
  [(NTKVictoryLabel *)self->_fullscreenHybridLowerTimeLabel setHidden:v7];
  [(NTKOlympusTimeContentView *)self ensureVisibleIfNeeded:self->_fullscreenHybridUpperTimeLabel];
  [(NTKOlympusTimeContentView *)self ensureVisibleIfNeeded:self->_fullscreenHybridLowerTimeLabel];
  if (a4)
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

- (void)ensureVisibleIfNeeded:(id)a3
{
  v5 = a3;
  v3 = [v5 isHidden];
  v4 = 1.0;
  if (v3)
  {
    v4 = 0.0;
  }

  [v5 setAlpha:v4];
}

- (void)applyTransitionFraction:(double)a3 fromColorPalette:(id)a4 toColorPalette:(id)a5 animateElements:(BOOL)a6
{
  v6 = a6;
  v23 = a4;
  v10 = a5;
  if ([v23 isEqual:v10])
  {
    [(NTKOlympusTimeContentView *)self setPalette:v10];
  }

  else
  {
    v11 = [v23 primaryTextColor];
    v12 = [v10 primaryTextColor];
    v13 = [v23 primaryBackgroundColor];
    v14 = [v10 primaryBackgroundColor];
    v15 = [v10 primaryLogoColor];
    v16 = [v23 primaryLogoColor];
    if (self->_invertedColors)
    {
      v22 = [v23 secondaryTextColor];

      v21 = [v10 secondaryTextColor];

      v20 = [v23 secondaryBackgroundColor];

      v19 = [v10 secondaryBackgroundColor];

      v17 = [v23 secondaryLogoColor];

      v18 = [v10 secondaryLogoColor];

      v12 = v21;
      v11 = v22;
      v14 = v19;
      v13 = v20;
      v15 = v18;
      v16 = v17;
    }

    [(NTKOlympusTimeContentView *)self _applyTransitionFraction:v11 fromColor:v12 toColor:v13 fromBackgroundColor:v14 toBackgroundColor:v16 fromLogoColor:v15 toLogoColor:a3];
    if (v6)
    {
      [(NTKOlympusTimeContentView *)self _applyAnimationPopTransitionWithFraction:a3];
    }
  }
}

- (void)setLabelOutlineAlpha:(double)a3
{
  [(NTKVictoryLabel *)self->_fullscreenHybridLowerTimeLabel setOutlineAlpha:?];
  [(NTKVictoryTimeLabel *)self->_fullscreenHybridUpperTimeLabel setOutlineAlpha:a3];
  [(NTKVictoryLabel *)self->_fullscreenDigitalUpperTimeLabel setOutlineAlpha:a3];
  [(NTKVictoryLabel *)self->_fullscreenDigitalLowerTimeLabel setOutlineAlpha:a3];
  [(NTKVictoryLabel *)self->_circularUpperTimeLabel setOutlineAlpha:a3];
  circularLowerTimeLabel = self->_circularLowerTimeLabel;

  [(NTKVictoryLabel *)circularLowerTimeLabel setOutlineAlpha:a3];
}

- (void)setLabelOutlineColor:(id)a3
{
  fullscreenHybridLowerTimeLabel = self->_fullscreenHybridLowerTimeLabel;
  v5 = a3;
  [(NTKVictoryLabel *)fullscreenHybridLowerTimeLabel setOutlineColor:v5];
  [(NTKVictoryTimeLabel *)self->_fullscreenHybridUpperTimeLabel setOutlineColor:v5];
  [(NTKVictoryLabel *)self->_fullscreenDigitalUpperTimeLabel setOutlineColor:v5];
  [(NTKVictoryLabel *)self->_fullscreenDigitalLowerTimeLabel setOutlineColor:v5];
  [(NTKVictoryLabel *)self->_circularUpperTimeLabel setOutlineColor:v5];
  [(NTKVictoryLabel *)self->_circularLowerTimeLabel setOutlineColor:v5];
}

- (void)_applyAnimationPopTransitionWithFraction:(double)a3
{
  [objc_opt_class() scaleForViewDuringColorChangeTransitionWithFraction:a3];
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

- (void)_applyTransitionFraction:(double)a3 fromColor:(id)a4 toColor:(id)a5 fromBackgroundColor:(id)a6 toBackgroundColor:(id)a7 fromLogoColor:(id)a8 toLogoColor:(id)a9
{
  v16 = a9;
  v17 = a8;
  v18 = a7;
  v19 = a6;
  [(NTKOlympusTimeContentView *)self _applyTransitionFraction:a4 fromTextColor:a5 toTextColor:a3];
  v20 = NTKInterpolateBetweenColors();

  [(UIButton *)self->_circularLogoButton setTintColor:v20];
  [(UIButton *)self->_fullscreenLogoButton setTintColor:v20];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __136__NTKOlympusTimeContentView__applyTransitionFraction_fromColor_toColor_fromBackgroundColor_toBackgroundColor_fromLogoColor_toLogoColor___block_invoke;
  aBlock[3] = &__block_descriptor_40_e8_f12__0f8l;
  *&aBlock[4] = a3;
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

- (void)_applyTransitionFraction:(double)a3 fromTextColor:(id)a4 toTextColor:(id)a5
{
  v6 = NTKInterpolateBetweenColors();
  [(NTKDigitalTimeLabel *)self->_fullscreenHybridUpperTimeLabel setColor:v6];
  [(NTKVictoryLabel *)self->_fullscreenHybridLowerTimeLabel setFillColor:v6];
  [(CLKUIColoringLabel *)self->_fullscreenDigitalUpperTimeLabel setColor:v6];
  [(CLKUIColoringLabel *)self->_fullscreenDigitalLowerTimeLabel setColor:v6];
  [(CLKUIColoringLabel *)self->_circularUpperTimeLabel setColor:v6];
  [(CLKUIColoringLabel *)self->_circularLowerTimeLabel setColor:v6];
}

+ (double)scaleForViewDuringColorChangeTransitionWithFraction:(double)a3
{
  v4 = NTKVictoryTransitionTimingFunction();
  v5 = v4;
  *&v6 = a3;
  *&v6 = fabsf((*&v6 + -0.4) / 0.4);
  if (*&v6 > 1.0)
  {
    *&v6 = 1.0;
  }

  [v4 _solveForInput:v6];
  v8 = v7 * 0.075 + 0.925;

  return v8;
}

- (void)setLogoButtonHighlighted:(BOOL)a3
{
  v3 = a3;
  [(UIButton *)self->_fullscreenLogoButton setHighlighted:?];
  circularLogoButton = self->_circularLogoButton;

  [(UIButton *)circularLogoButton setHighlighted:v3];
}

- (void)handleLogoButtonHighlighted:(id)a3
{
  v4 = [(NTKOlympusTimeContentView *)self delegate];
  [v4 olympusContentViewDidHandleLogoHighlighted:self];
}

- (void)handleLogoButtonResetHighlight:(id)a3
{
  v4 = [(NTKOlympusTimeContentView *)self delegate];
  [v4 olympusContentViewDidHandleLogoResetHighlight:self];
}

- (void)handleLogoButtonTouchUpInside:(id)a3
{
  v4 = a3;
  [v4 bounds];
  [v4 convertRect:self toView:?];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = [(NTKOlympusTimeContentView *)self delegate];
  [v13 olympusContentView:self didHandleLogoTouchUpInsideFromRect:{v6, v8, v10, v12}];

  v14 = [(NTKOlympusTimeContentView *)self delegate];
  [v14 olympusContentViewDidHandleLogoResetHighlight:self];
}

- (BOOL)containsSubview:(id)a3
{
  v4 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v5 = [v4 superview];
  v6 = v5 == self;

  v16 = v6;
  if (v14[3])
  {
    v7 = 1;
  }

  else
  {
    v8 = [(NTKOlympusTimeContentView *)self subviews];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __45__NTKOlympusTimeContentView_containsSubview___block_invoke;
    v10[3] = &unk_278780528;
    v12 = &v13;
    v11 = v4;
    [v8 enumerateObjectsUsingBlock:v10];

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

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = [(NTKOlympusTimeContentView *)self layer];
  v9 = [v8 mask];
  v10 = [v9 path];

  if (v10)
  {
    v15.x = x;
    v15.y = y;
    v11 = CGPathContainsPoint(v10, 0, v15, 0);
  }

  else
  {
    v14.receiver = self;
    v14.super_class = NTKOlympusTimeContentView;
    v11 = [(NTKOlympusTimeContentView *)&v14 pointInside:v7 withEvent:x, y];
  }

  v12 = v11;

  return v12;
}

- (void)timeFormatterTextDidChange:(id)a3
{
  fullscreenHybridUpperTimeLabel = self->_fullscreenHybridUpperTimeLabel;
  v5 = [a3 overrideDate];
  [(NTKDigitalTimeLabel *)fullscreenHybridUpperTimeLabel setOverrideDate:v5 duration:0.0];

  v16 = [(CLKTimeFormatter *)self->_timeFormatter timeSubstringToSeparatorText];
  v6 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:v16];
  v7 = [v16 hasSuffix:@"1"];
  v8 = [(NTKOlympusTimeContentView *)self monospacedFontForCircularDial];
  v9 = v8;
  if (v7)
  {
    v10 = 1;
  }

  else
  {
    v10 = v8 == 0;
  }

  if (!v10)
  {
    [v6 addAttribute:*MEMORY[0x277D740A8] value:v8 range:{objc_msgSend(v16, "length") - 1, 1}];
  }

  v11 = [(CLKUIColoringLabel *)self->_circularUpperTimeLabel color];
  v12 = MEMORY[0x277D740C0];
  if (v11)
  {
    [v6 addAttribute:*MEMORY[0x277D740C0] value:v11 range:{0, objc_msgSend(v16, "length")}];
  }

  [(NTKVictoryLabel *)self->_circularUpperTimeLabel setAttributedText:v6];
  [(NTKVictoryLabel *)self->_circularUpperTimeLabel sizeToFit];
  [(NTKVictoryLabel *)self->_fullscreenDigitalUpperTimeLabel setText:v16];
  [(NTKVictoryLabel *)self->_fullscreenDigitalUpperTimeLabel sizeToFit];
  [(CLKTimeFormatter *)self->_timeFormatter setIncludeSeparatorInTimeSubstringFromSeparatorText:0];
  v13 = [(CLKTimeFormatter *)self->_timeFormatter timeSubstringFromSeparatorText];
  [(NTKVictoryLabel *)self->_fullscreenHybridLowerTimeLabel setText:v13];
  [(NTKVictoryLabel *)self->_fullscreenHybridLowerTimeLabel sizeToFit];
  [(NTKVictoryLabel *)self->_fullscreenDigitalLowerTimeLabel setText:v13];
  [(NTKVictoryLabel *)self->_fullscreenDigitalLowerTimeLabel sizeToFit];
  v14 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:v13];
  if (![v13 hasPrefix:@"1"] && v9)
  {
    [v14 addAttribute:*MEMORY[0x277D740A8] value:v9 range:{0, 1}];
  }

  v15 = [(CLKUIColoringLabel *)self->_circularLowerTimeLabel color];
  if (v15)
  {
    [v14 addAttribute:*v12 value:v15 range:{0, objc_msgSend(v13, "length")}];
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