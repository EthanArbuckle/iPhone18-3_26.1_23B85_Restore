@interface NTKDualTimeView
- (CGSize)_hourTickSize;
- (CGSize)_minuteTickSize;
- (CGSize)_secondTickSize;
- (NTKDualTimeView)initWithFrame:(CGRect)a3 style:(unint64_t)a4 andDevice:(id)a5;
- (id)_activeTimeView;
- (id)_dialColorForColorPalette:(id)a3;
- (id)_digitalLabelFont;
- (id)_digitalStyle;
- (id)_digitalTimeLabelColorForColorPalette:(id)a3;
- (id)_hourMinuteHandFillColorForColorPalette:(id)a3;
- (id)_hourTickColorForColorPalette:(id)a3;
- (id)_minuteTickColorForColorPalette:(id)a3;
- (id)_secondTickActiveColorForColorPalette:(id)a3;
- (id)_secondTickInactiveColorForColorPalette:(id)a3;
- (void)_applyColorToAnalogHands;
- (void)_applyColorToDigitalLabelAndTicks;
- (void)_refreshDigitalTimeLabel;
- (void)_setupAnalogHandsView;
- (void)_setupAnalogTimeViews;
- (void)_setupDial;
- (void)_setupDigitalTicks;
- (void)_setupDigitalTimeViews;
- (void)_tearDownAnalogContainerView;
- (void)_tearDownDigitalContainerView;
- (void)applyGossamerColorPalette:(id)a3;
- (void)applyTransitionFraction:(double)a3 fromColorPalette:(id)a4 toColorPalette:(id)a5 ignoreTimeView:(BOOL)a6;
- (void)applyTransitionFraction:(double)a3 fromStyle:(unint64_t)a4 toStyle:(unint64_t)a5;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setColorPalette:(id)a3;
- (void)setEditing:(BOOL)a3;
- (void)setForcedNumberSystemForDigitalTimeLabel:(unint64_t)a3;
- (void)setFrozen:(BOOL)a3;
- (void)setOverrideDate:(id)a3 duration:(double)a4;
- (void)setSecondsHidden:(BOOL)a3 animated:(BOOL)a4;
- (void)setStyle:(unint64_t)a3;
- (void)setTimeOffset:(double)a3;
- (void)setUseMonospacedDigitalNumbers:(BOOL)a3;
- (void)setupTimeViews;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation NTKDualTimeView

- (NTKDualTimeView)initWithFrame:(CGRect)a3 style:(unint64_t)a4 andDevice:(id)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v12 = a5;
  v22.receiver = self;
  v22.super_class = NTKDualTimeView;
  v13 = [(NTKDualTimeView *)&v22 initWithFrame:x, y, width, height];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_device, a5);
    v14->_style = a4;
    v15 = [(NTKDualTimeView *)v14 layer];
    [v15 setAllowsGroupOpacity:1];

    [(NTKDualTimeView *)v14 _setupDial];
    [(NTKDualTimeView *)v14 setupTimeViews];
    [(NTKDualTimeView *)v14 setStyle:v14->_style];
    v16 = objc_alloc_init(NTKFaceColorPalette);
    v17 = [NTKPigmentEditOption pigmentNamed:@"seasons.spring2015.white"];
    [(NTKFaceColorPalette *)v16 setPigmentEditOption:v17];

    [(NTKDualTimeView *)v14 setColorPalette:v16];
    v18 = objc_alloc_init(NTKFaceColorPalette);
    blackPalette = v14->_blackPalette;
    v14->_blackPalette = v18;

    v20 = [NTKPigmentEditOption pigmentNamed:@"seasons.black"];
    [(NTKFaceColorPalette *)v14->_blackPalette setPigmentEditOption:v20];

    [(NTKDualTimeView *)v14 setColorPalette:v14->_blackPalette];
  }

  return v14;
}

- (void)dealloc
{
  [(NTKDualTimeView *)self _stopDigitalTicksAnimation];
  [(NTKDualTimeView *)self _tearDownAnalogContainerView];
  [(NTKDualTimeView *)self _tearDownDigitalContainerView];
  v3.receiver = self;
  v3.super_class = NTKDualTimeView;
  [(NTKDualTimeView *)&v3 dealloc];
}

- (void)setEditing:(BOOL)a3
{
  self->_editing = a3;
  [(NTKDualTimeDigitalTicksView *)self->_digitalTicksContainerView setEditing:?];

  [(NTKDualTimeView *)self _refreshDigitalTicks];
}

- (void)layoutSubviews
{
  v16.receiver = self;
  v16.super_class = NTKDualTimeView;
  [(NTKDualTimeView *)&v16 layoutSubviews];
  [(NTKDualTimeView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(UIView *)self->_analogContainerView ntk_setBoundsAndPositionFromFrame:?];
  [(UIView *)self->_digitalContainerView ntk_setBoundsAndPositionFromFrame:v4, v6, v8, v10];
  [(UIView *)self->_dialBackgroundView ntk_setBoundsAndPositionFromFrame:v4, v6, v8, v10];
  [(UIView *)self->_dialContainerView ntk_setBoundsAndPositionFromFrame:v4, v6, v8, v10];
  v11 = [(UIView *)self->_dialContainerView layer];
  [v11 setCornerRadius:v8 * 0.5];

  v12 = [(UIView *)self->_dialBackgroundView layer];
  [v12 setCornerRadius:v8 * 0.5];

  v13 = MEMORY[0x2318D8E70](v4, v6, v8, v10);
  v15 = v14;
  [(NTKAnalogHandsView *)self->_analogHandsView setCenter:?];
  [(CLKUIDualTimeAnalogTicksView *)self->_analogTickContainerView setCenter:v13, v15];
  [(NTKDigitalTimeLabel *)self->_digitalTimeLabel setCenter:v13, v15];
  [(NTKDualTimeDigitalTicksView *)self->_digitalTicksContainerView setFrame:v4, v6, v8, v10];
}

- (void)traitCollectionDidChange:(id)a3
{
  v6.receiver = self;
  v6.super_class = NTKDualTimeView;
  [(NTKDualTimeView *)&v6 traitCollectionDidChange:a3];
  digitalTimeLabel = self->_digitalTimeLabel;
  v5 = [(NTKDualTimeView *)self _digitalStyle];
  [(NTKDigitalTimeLabel *)digitalTimeLabel setStyle:v5];

  [(NTKDualTimeView *)self setNeedsLayout];
}

- (void)setupTimeViews
{
  [(NTKDualTimeView *)self _setupAnalogTimeViews];
  [(NTKDualTimeView *)self _setupDigitalTimeViews];

  [(NTKDualTimeView *)self _didFinishTimeViewSetup];
}

- (void)_setupDial
{
  v3 = objc_alloc_init(MEMORY[0x277D75D18]);
  dialContainerView = self->_dialContainerView;
  self->_dialContainerView = v3;

  v5 = self->_dialContainerView;
  [(NTKDualTimeView *)self bounds];
  [(UIView *)v5 ntk_setBoundsAndPositionFromFrame:?];
  v6 = [(UIView *)self->_dialContainerView layer];
  [(NTKDualTimeView *)self bounds];
  [v6 setCornerRadius:v7 * 0.5];

  [(NTKDualTimeView *)self addSubview:self->_dialContainerView];
  if ([(NTKDualTimeView *)self shouldUseCustomDialBackground])
  {
    v8 = [(NTKDualTimeView *)self _customDialBackgroundView];
  }

  else
  {
    v8 = objc_alloc_init(MEMORY[0x277D75D18]);
  }

  dialBackgroundView = self->_dialBackgroundView;
  self->_dialBackgroundView = v8;

  v10 = self->_dialBackgroundView;
  [(NTKDualTimeView *)self bounds];
  [(UIView *)v10 ntk_setBoundsAndPositionFromFrame:?];
  v11 = [(UIView *)self->_dialBackgroundView layer];
  [(NTKDualTimeView *)self bounds];
  [v11 setCornerRadius:v12 * 0.5];

  v13 = self->_dialContainerView;
  v14 = self->_dialBackgroundView;

  [(UIView *)v13 addSubview:v14];
}

- (void)_setupAnalogTimeViews
{
  if (!self->_analogContainerView)
  {
    v3 = objc_alloc(MEMORY[0x277D75D18]);
    [(NTKDualTimeView *)self bounds];
    v4 = [v3 initWithFrame:?];
    analogContainerView = self->_analogContainerView;
    self->_analogContainerView = v4;

    v6 = [(UIView *)self->_analogContainerView layer];
    [v6 setAllowsGroupOpacity:1];

    [(UIView *)self->_dialContainerView insertSubview:self->_analogContainerView aboveSubview:self->_dialBackgroundView];
    [(NTKDualTimeView *)self _setupAnalogHandsView];
    v7 = [(NTKDualTimeView *)self _minuteTickCount];
    v8 = [(NTKDualTimeView *)self _hourTickCount];
    [(NTKDualTimeView *)self _minuteTickSize];
    v10 = v9;
    v12 = v11;
    [(NTKDualTimeView *)self _hourTickSize];
    v14 = v13;
    v16 = v15;
    [(NTKDualTimeView *)self _minuteTickInset];
    v18 = v17;
    [(NTKDualTimeView *)self _hourTickInset];
    v20 = v19;
    v21 = [off_27877BF08 alloc];
    [(NTKDualTimeView *)self bounds];
    v24[0] = v7;
    v24[1] = v8;
    v24[2] = v10;
    v24[3] = v12;
    v24[4] = v14;
    v24[5] = v16;
    v24[6] = v18;
    v24[7] = v20;
    v24[8] = 0;
    v22 = [v21 initWithFrame:v24 configuration:?];
    analogTickContainerView = self->_analogTickContainerView;
    self->_analogTickContainerView = v22;

    [(UIView *)self->_analogContainerView addSubview:self->_analogTickContainerView];
    [(NTKDualTimeView *)self bringSubviewToFront:self->_analogHandsView];
  }
}

- (void)_setupAnalogHandsView
{
  v3 = [(NTKAnalogHandsView *)[NTKDualTimeAnalogHandsView alloc] initForDevice:self->_device];
  analogHandsView = self->_analogHandsView;
  self->_analogHandsView = v3;

  v5 = self->_analogHandsView;

  [(NTKDualTimeView *)self addSubview:v5];
}

- (void)_tearDownAnalogContainerView
{
  [(NTKAnalogHandsView *)self->_analogHandsView removeFromSuperview];
  analogContainerView = self->_analogContainerView;

  [(UIView *)analogContainerView removeFromSuperview];
}

- (void)_setupDigitalTimeViews
{
  if (!self->_digitalContainerView)
  {
    v3 = objc_alloc(MEMORY[0x277D75D18]);
    [(NTKDualTimeView *)self bounds];
    v4 = [v3 initWithFrame:?];
    digitalContainerView = self->_digitalContainerView;
    self->_digitalContainerView = v4;

    v6 = [(UIView *)self->_digitalContainerView layer];
    [v6 setAllowsGroupOpacity:1];

    [(UIView *)self->_dialContainerView insertSubview:self->_digitalContainerView aboveSubview:self->_dialBackgroundView];
    v7 = [[NTKDigitalTimeLabel alloc] initWithTimeLabelOptions:1 forDevice:self->_device];
    digitalTimeLabel = self->_digitalTimeLabel;
    self->_digitalTimeLabel = v7;

    v9 = self->_digitalTimeLabel;
    v10 = [(NTKDualTimeView *)self _digitalStyle];
    [(NTKDigitalTimeLabel *)v9 setStyle:v10];

    v11 = self->_digitalTimeLabel;
    MEMORY[0x2318D8E70]([(NTKDualTimeView *)self bounds]);
    [(NTKDigitalTimeLabel *)v11 setCenter:?];
    [(UIView *)self->_digitalContainerView addSubview:self->_digitalTimeLabel];
    [(NTKDualTimeView *)self _setupDigitalTicks];
    [(UIView *)self->_digitalContainerView bringSubviewToFront:self->_digitalTimeLabel];

    [(NTKDualTimeView *)self _startDigitalTicksAnimation];
  }
}

- (void)_tearDownDigitalContainerView
{
  [(NTKDualTimeView *)self _stopDigitalTicksAnimation];
  [(NTKDigitalTimeLabel *)self->_digitalTimeLabel removeFromSuperview];
  digitalContainerView = self->_digitalContainerView;

  [(UIView *)digitalContainerView removeFromSuperview];
}

- (void)_setupDigitalTicks
{
  [(NTKDualTimeView *)self _secondTickSize];
  v25 = v4;
  v26 = v3;
  [(NTKDualTimeView *)self _cardinalSecondTickSize];
  v6 = v5;
  v8 = v7;
  [(NTKDualTimeView *)self _secondTickInset];
  v10 = v9;
  [(NTKDualTimeView *)self _cardinalSecondTickInset];
  v12 = v11;
  v13 = [NTKDualTimeDigitalTicksView alloc];
  [(NTKDualTimeView *)self bounds];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v22 = [MEMORY[0x277CBB700] sharedInstance];
  v27[0] = v26;
  v27[1] = v25;
  v27[2] = v6;
  v27[3] = v8;
  v27[4] = v10;
  v27[5] = v12;
  v23 = [(NTKDualTimeDigitalTicksView *)v13 initWithFrame:v27 configuration:v22 timer:v15, v17, v19, v21];
  digitalTicksContainerView = self->_digitalTicksContainerView;
  self->_digitalTicksContainerView = v23;

  [(NTKDualTimeDigitalTicksView *)self->_digitalTicksContainerView setDelegate:self];
  [(UIView *)self->_digitalContainerView addSubview:self->_digitalTicksContainerView];
}

- (void)_refreshDigitalTimeLabel
{
  digitalTimeLabel = self->_digitalTimeLabel;
  v3 = [(NTKDualTimeView *)self _digitalStyle];
  [(NTKDigitalTimeLabel *)digitalTimeLabel setStyle:v3];
}

- (void)setUseMonospacedDigitalNumbers:(BOOL)a3
{
  if (self->_useMonospacedDigitalNumbers != a3)
  {
    self->_useMonospacedDigitalNumbers = a3;
    digitalTimeLabel = self->_digitalTimeLabel;
    v5 = [(NTKDualTimeView *)self _digitalStyle];
    [(NTKDigitalTimeLabel *)digitalTimeLabel setStyle:v5];
  }
}

- (id)_digitalLabelFont
{
  v3 = MEMORY[0x277CBBB08];
  [(NTKDualTimeView *)self _digitalTimeLabelFontSize];
  v4 = [v3 systemFontOfSize:*MEMORY[0x277CBB6C0] weight:? design:?];
  v5 = [v4 CLKFontWithAlternativePunctuation];

  if (self->_useMonospacedDigitalNumbers)
  {
    v6 = [v5 CLKFontWithMonospacedNumbers];
  }

  else
  {
    v6 = v5;
  }

  v7 = v6;

  return v7;
}

- (id)_digitalStyle
{
  v3 = [(NTKDualTimeView *)self _digitalLabelFont];
  v4 = [NTKDigitalTimeLabelStyle defaultStyleForBounds:0 withRightSideMargin:v3 applyAdvanceFudge:self->_device withBaselineY:*MEMORY[0x277CBF3A0] withFont:*(MEMORY[0x277CBF3A0] + 8) forDevice:*(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24), 0.0, 0.0];

  return v4;
}

- (id)_activeTimeView
{
  if (self->_style)
  {
    v2 = &OBJC_IVAR___NTKDualTimeView__digitalTimeLabel;
  }

  else
  {
    v2 = &OBJC_IVAR___NTKDualTimeView__analogHandsView;
  }

  return *(&self->super.super.super.isa + *v2);
}

- (void)setColorPalette:(id)a3
{
  v7 = a3;
  objc_storeStrong(&self->_colorPalette, a3);
  if (![(NTKDualTimeView *)self shouldUseCustomDialBackground])
  {
    v5 = [(NTKDualTimeView *)self _dialColorForColorPalette:v7];
    [(UIView *)self->_dialBackgroundView setBackgroundColor:v5];
    v6 = [(CLKUIAnalogHandsView *)self->_analogHandsView secondHandView];
    [v6 setHandDotColor:v5];
  }

  [(NTKDualTimeView *)self _applyColorToAnalogHands];
  [(NTKDualTimeView *)self _applyColorToDigitalLabelAndTicks];
}

- (void)_applyColorToAnalogHands
{
  analogHandsView = self->_analogHandsView;
  v4 = [(NTKDualTimeView *)self _hourMinuteHandStrokeColorForColorPalette:self->_colorPalette];
  v5 = [(NTKDualTimeView *)self _hourMinuteHandFillColorForColorPalette:self->_colorPalette];
  [(CLKUIAnalogHandsView *)analogHandsView applyHourMinuteHandsStrokeColor:v4 fillColor:v5];

  v6 = self->_analogHandsView;
  v7 = [(NTKDualTimeView *)self _secondHandColorForColorPalette:self->_colorPalette];
  [(NTKAnalogHandsView *)v6 applySecondHandColor:v7];

  v9 = [(NTKDualTimeView *)self _hourTickColorForColorPalette:self->_colorPalette];
  v8 = [(NTKDualTimeView *)self _minuteTickColorForColorPalette:self->_colorPalette];
  [(NTKDualTimeView *)self _colorizeAnalogTicksWithHourColor:v9 minuteColor:v8];
}

- (void)_applyColorToDigitalLabelAndTicks
{
  digitalTimeLabel = self->_digitalTimeLabel;
  v4 = [(NTKDualTimeView *)self _digitalTimeLabelColorForColorPalette:self->_colorPalette];
  [(NTKDigitalTimeLabel *)digitalTimeLabel setColor:v4];

  [(NTKDualTimeView *)self _refreshDigitalTicks];
}

- (void)applyTransitionFraction:(double)a3 fromColorPalette:(id)a4 toColorPalette:(id)a5 ignoreTimeView:(BOOL)a6
{
  v46 = a4;
  v10 = a5;
  v11 = [v46 configuration];
  v12 = [v10 configuration];
  v13 = [v11 isEqual:v12];

  if (v13)
  {
    [(NTKDualTimeView *)self setColorPalette:v46];
  }

  else
  {
    if (![(NTKDualTimeView *)self shouldUseCustomDialBackground])
    {
      v14 = [(NTKDualTimeView *)self _dialColorForColorPalette:v46];
      v15 = [(NTKDualTimeView *)self _dialColorForColorPalette:v10];
      v16 = NTKInterpolateBetweenColors();
      [(UIView *)self->_dialBackgroundView setBackgroundColor:v16];
      v17 = [(CLKUIAnalogHandsView *)self->_analogHandsView secondHandView];
      [v17 setHandDotColor:v16];
    }

    v18 = v46;
    if (!a6)
    {
      analogHandsView = self->_analogHandsView;
      v20 = [(NTKDualTimeView *)self _hourMinuteHandStrokeColorForColorPalette:v46];
      v21 = [(NTKDualTimeView *)self _hourMinuteHandFillColorForColorPalette:v46];
      v22 = [(NTKDualTimeView *)self _hourMinuteHandStrokeColorForColorPalette:v10];
      v23 = [(NTKDualTimeView *)self _hourMinuteHandFillColorForColorPalette:v10];
      [(NTKAnalogHandsView *)analogHandsView applyHourMinuteHandsTransitionFraction:v20 fromStrokeColor:v21 fromFillColor:v22 toStrokeColor:v23 toFillColor:a3];

      v24 = [(NTKDualTimeView *)self _secondHandColorForColorPalette:v46];
      v25 = [(NTKDualTimeView *)self _secondHandColorForColorPalette:v10];
      v26 = NTKInterpolateBetweenColors();
      [(NTKAnalogHandsView *)self->_analogHandsView applySecondHandColor:v26];

      v18 = v46;
    }

    v27 = [(NTKDualTimeView *)self _hourTickColorForColorPalette:v18];
    v44 = [(NTKDualTimeView *)self _hourTickColorForColorPalette:v10];
    v45 = v27;
    v28 = NTKInterpolateBetweenColors();
    v29 = [(NTKDualTimeView *)self _minuteTickColorForColorPalette:v46];
    v40 = [(NTKDualTimeView *)self _minuteTickColorForColorPalette:v10];
    v42 = v29;
    v30 = NTKInterpolateBetweenColors();
    v43 = v28;
    [(NTKDualTimeView *)self _colorizeAnalogTicksWithHourColor:v28 minuteColor:v30];
    if (!a6)
    {
      v31 = [(NTKDualTimeView *)self _digitalTimeLabelColorForColorPalette:v46, v40, v29];
      v32 = [(NTKDualTimeView *)self _digitalTimeLabelColorForColorPalette:v10];
      v33 = NTKInterpolateBetweenColors();
      [(NTKDigitalTimeLabel *)self->_digitalTimeLabel setColor:v33];
    }

    v34 = [(NTKDualTimeView *)self _secondTickActiveColorForColorPalette:v46, v40];
    v35 = [(NTKDualTimeView *)self _secondTickActiveColorForColorPalette:v10];
    v36 = NTKInterpolateBetweenColors();
    v37 = [(NTKDualTimeView *)self _secondTickInactiveColorForColorPalette:v46];
    v38 = [(NTKDualTimeView *)self _secondTickInactiveColorForColorPalette:v10];
    v39 = NTKInterpolateBetweenColors();
    [(NTKDualTimeDigitalTicksView *)self->_digitalTicksContainerView setActiveTickColor:v36];
    [(NTKDualTimeDigitalTicksView *)self->_digitalTicksContainerView setInactiveTickColor:v39];
    [(NTKDualTimeView *)self _refreshDigitalTicks];
  }
}

- (void)applyGossamerColorPalette:(id)a3
{
  dialBackgroundView = self->_dialBackgroundView;
  v5 = a3;
  v6 = [v5 dialColor];
  [(UIView *)dialBackgroundView setBackgroundColor:v6];

  v7 = [(CLKUIAnalogHandsView *)self->_analogHandsView secondHandView];
  v8 = [v5 dialColor];
  [v7 setHandDotColor:v8];

  analogHandsView = self->_analogHandsView;
  v10 = [v5 hourMinuteHandStrokeColor];
  v11 = [v5 hourMinuteHandFillColor];
  [(CLKUIAnalogHandsView *)analogHandsView applyHourMinuteHandsStrokeColor:v10 fillColor:v11];

  v12 = self->_analogHandsView;
  v13 = [v5 secondHandColor];
  [(NTKAnalogHandsView *)v12 applySecondHandColor:v13];

  v14 = [v5 hourTickColor];
  v15 = [v5 minuteTickColor];
  [(NTKDualTimeView *)self _colorizeAnalogTicksWithHourColor:v14 minuteColor:v15];

  digitalTimeLabel = self->_digitalTimeLabel;
  v17 = [v5 digitalTimeLabelColor];
  [(NTKDigitalTimeLabel *)digitalTimeLabel setColor:v17];

  v18 = [v5 secondTickActiveColor];
  [(NTKDualTimeDigitalTicksView *)self->_digitalTicksContainerView setActiveTickColor:v18];

  v19 = [v5 secondTickInactiveColor];

  [(NTKDualTimeDigitalTicksView *)self->_digitalTicksContainerView setInactiveTickColor:v19];

  [(NTKDualTimeView *)self _refreshDigitalTicks];
}

- (void)setSecondsHidden:(BOOL)a3 animated:(BOOL)a4
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __45__NTKDualTimeView_setSecondsHidden_animated___block_invoke;
  v4[3] = &unk_278787040;
  v4[4] = self;
  v5 = !a3;
  v6 = a3;
  [MEMORY[0x277D75D18] animateWithDuration:v4 animations:{a4, 0.1}];
}

void __45__NTKDualTimeView_setSecondsHidden_animated___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) style];
  v3 = *(a1 + 32);
  if (v2)
  {
    v4 = *(v3 + 488);
    v5 = *(a1 + 41);

    [v4 setHideActiveTicks:v5];
  }

  else
  {
    v7 = [*(v3 + 464) secondHandView];
    LOBYTE(v6) = *(a1 + 40);
    [v7 setAlpha:v6];
  }
}

- (void)setStyle:(unint64_t)a3
{
  self->_style = a3;
  if (a3 == 1)
  {
    [(UIView *)self->_analogContainerView setAlpha:0.0];
    [(NTKAnalogHandsView *)self->_analogHandsView setAlpha:0.0];
    [(UIView *)self->_digitalContainerView setAlpha:1.0];
    digitalContainerView = self->_digitalContainerView;
    v7 = *(MEMORY[0x277CBF2C0] + 16);
    v8 = *MEMORY[0x277CBF2C0];
    v9 = v7;
    v10 = *(MEMORY[0x277CBF2C0] + 32);
    [(UIView *)digitalContainerView setTransform:&v8];
    [(NTKDualTimeView *)self _startDigitalTicksAnimation];
  }

  else if (!a3)
  {
    [(UIView *)self->_analogContainerView setAlpha:1.0];
    [(NTKAnalogHandsView *)self->_analogHandsView setAlpha:1.0];
    analogHandsView = self->_analogHandsView;
    v5 = *(MEMORY[0x277CBF2C0] + 16);
    v8 = *MEMORY[0x277CBF2C0];
    v9 = v5;
    v10 = *(MEMORY[0x277CBF2C0] + 32);
    [(NTKAnalogHandsView *)analogHandsView setTransform:&v8];
    [(UIView *)self->_digitalContainerView setAlpha:0.0];
    [(NTKDualTimeView *)self _stopDigitalTicksAnimation];
  }
}

- (void)applyTransitionFraction:(double)a3 fromStyle:(unint64_t)a4 toStyle:(unint64_t)a5
{
  if (a4 == a5)
  {

    [(NTKDualTimeView *)self setStyle:a3];
  }

  else
  {
    CLKInterpolateBetweenFloatsClipped();
    v9 = v8;
    v10 = &OBJC_IVAR___NTKDualTimeView__digitalContainerView;
    if (a4)
    {
      v11 = &OBJC_IVAR___NTKDualTimeView__digitalContainerView;
    }

    else
    {
      v11 = &OBJC_IVAR___NTKDualTimeView__analogContainerView;
    }

    v12 = *(&self->super.super.super.isa + *v11);
    v13 = 1.0 - v8;
    if (!a5)
    {
      v10 = &OBJC_IVAR___NTKDualTimeView__analogContainerView;
    }

    v14 = *(&self->super.super.super.isa + *v10);
    v16 = v12;
    [(UIView *)v16 setAlpha:v13];
    [v14 setAlpha:v9];
    if (v16 == self->_analogContainerView)
    {
      v15 = v13;
    }

    else
    {
      v15 = v9;
    }

    [(NTKAnalogHandsView *)self->_analogHandsView setAlpha:v15];
  }
}

- (id)_dialColorForColorPalette:(id)a3
{
  if ([a3 isWhiteColor])
  {
    v3 = 0.898039216;
  }

  else
  {
    v3 = 0.129411765;
  }

  v4 = [MEMORY[0x277D75348] colorWithRed:v3 green:v3 blue:v3 alpha:1.0];

  return v4;
}

- (CGSize)_hourTickSize
{
  v2 = [(NTKDualTimeView *)self device];
  CLKSizeForDeviceMetrics();
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (CGSize)_minuteTickSize
{
  v2 = [(NTKDualTimeView *)self device];
  CLKSizeForDeviceMetrics();
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (id)_hourTickColorForColorPalette:(id)a3
{
  v3 = [a3 isWhiteColor];
  v4 = 1.0;
  if (v3)
  {
    v4 = 0.0;
  }

  v5 = [MEMORY[0x277D75348] colorWithWhite:v4 alpha:1.0];

  return v5;
}

- (id)_minuteTickColorForColorPalette:(id)a3
{
  v3 = [a3 isWhiteColor];
  v4 = 0.4;
  if (v3)
  {
    v4 = 0.6;
  }

  v5 = [MEMORY[0x277D75348] colorWithWhite:v4 alpha:1.0];

  return v5;
}

- (id)_hourMinuteHandFillColorForColorPalette:(id)a3
{
  if ([a3 isWhiteColor])
  {
    [MEMORY[0x277D75348] blackColor];
  }

  else
  {
    [MEMORY[0x277D75348] whiteColor];
  }
  v3 = ;

  return v3;
}

- (CGSize)_secondTickSize
{
  CLKSizeForDeviceMetrics();
  result.height = v3;
  result.width = v2;
  return result;
}

- (id)_digitalTimeLabelColorForColorPalette:(id)a3
{
  if ([a3 isWhiteColor])
  {
    [MEMORY[0x277D75348] blackColor];
  }

  else
  {
    [MEMORY[0x277D75348] whiteColor];
  }
  v3 = ;

  return v3;
}

- (id)_secondTickActiveColorForColorPalette:(id)a3
{
  v3 = [a3 isWhiteColor];
  v4 = 1.0;
  if (v3)
  {
    v4 = 0.0;
  }

  v5 = [MEMORY[0x277D75348] colorWithWhite:v4 alpha:1.0];

  return v5;
}

- (id)_secondTickInactiveColorForColorPalette:(id)a3
{
  v3 = [a3 isWhiteColor];
  v4 = 0.4;
  if (v3)
  {
    v4 = 0.7;
  }

  v5 = [MEMORY[0x277D75348] colorWithWhite:v4 alpha:1.0];

  return v5;
}

- (void)setOverrideDate:(id)a3 duration:(double)a4
{
  v7 = a3;
  if (self->_overrideDate != v7)
  {
    v8 = v7;
    [(NTKAnalogHandsView *)self->_analogHandsView setOverrideDate:v7 duration:a4];
    [(NTKDigitalTimeLabel *)self->_digitalTimeLabel setOverrideDate:v8 duration:a4];
    objc_storeStrong(&self->_overrideDate, a3);
    [(NTKDualTimeDigitalTicksView *)self->_digitalTicksContainerView setOverrideDate:v8];
    [(NTKDualTimeView *)self _refreshDigitalTicks];
    v7 = v8;
  }
}

- (void)setTimeOffset:(double)a3
{
  [(NTKAnalogHandsView *)self->_analogHandsView setTimeOffset:?];
  digitalTimeLabel = self->_digitalTimeLabel;

  [(NTKDigitalTimeLabel *)digitalTimeLabel setTimeOffset:a3];
}

- (void)setFrozen:(BOOL)a3
{
  v3 = a3;
  self->_frozen = a3;
  [(CLKUIAnalogHandsView *)self->_analogHandsView setFrozen:?];
  [(NTKDigitalTimeLabel *)self->_digitalTimeLabel setFrozen:v3];
  [(NTKDualTimeDigitalTicksView *)self->_digitalTicksContainerView setFrozen:v3];

  [(NTKDualTimeView *)self _refreshDigitalTicks];
}

- (void)setForcedNumberSystemForDigitalTimeLabel:(unint64_t)a3
{
  v4 = [(NTKDualTimeView *)self digitalTimeLabel];
  [v4 setForcedNumberSystem:a3];
}

@end