@interface CDRichComplicationProgressView
- (CLKMonochromeFilterProvider)filterProvider;
- (id)backgroundColorForView:(id)view;
- (id)filterForView:(id)view style:(int64_t)style;
- (id)filterForView:(id)view style:(int64_t)style fraction:(double)fraction;
- (id)filtersForView:(id)view style:(int64_t)style;
- (id)filtersForView:(id)view style:(int64_t)style fraction:(double)fraction;
- (id)initForFamily:(int64_t)family device:(id)device backgroundShapeView:(id)view foregroundShapeView:(id)shapeView;
- (id)interpolatedColorForView:(id)view;
- (void)_adjustBackgroundViewAlphaWithPercentage:(float)percentage;
- (void)_applyStyle;
- (void)_updateRingShape;
- (void)_updateUIFromGaugeProvider;
- (void)animateToProgress:(float)progress duration:(double)duration;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setGaugeProvider:(id)provider;
- (void)setGradientColors:(id)colors;
- (void)setGradientColors:(id)colors locations:(id)locations;
- (void)setProgress:(double)progress;
- (void)setShowHolePunch:(BOOL)punch;
- (void)setShowIndicatorView:(BOOL)view;
- (void)transitionToMonochromeWithFraction:(double)fraction;
- (void)updateMonochromeColor;
@end

@implementation CDRichComplicationProgressView

- (id)initForFamily:(int64_t)family device:(id)device backgroundShapeView:(id)view foregroundShapeView:(id)shapeView
{
  v29[1] = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  viewCopy = view;
  shapeViewCopy = shapeView;
  v27.receiver = self;
  v27.super_class = CDRichComplicationProgressView;
  v14 = [(CDRichComplicationProgressView *)&v27 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v15 = v14;
  if (v14)
  {
    v14->_family = family;
    objc_storeStrong(&v14->_device, device);
    v15->_showAlternateIndicatorColor = CDShowGossamerUI(v15->_device);
    objc_storeStrong(&v15->_backgroundView, view);
    [(CDRichComplicationShapeView *)v15->_backgroundView setFilterProvider:v15];
    [(CDRichComplicationProgressView *)v15 addSubview:v15->_backgroundView];
    layer = [MEMORY[0x277CD9F90] layer];
    ringLayer = v15->_ringLayer;
    v15->_ringLayer = layer;

    [(CAShapeLayer *)v15->_ringLayer setAnchorPoint:0.5, 0.5];
    [(CAShapeLayer *)v15->_ringLayer setFillRule:*MEMORY[0x277CDA248]];
    v18 = v15->_ringLayer;
    whiteColor = [MEMORY[0x277D75348] whiteColor];
    -[CAShapeLayer setFillColor:](v18, "setFillColor:", [whiteColor CGColor]);

    v20 = v15->_ringLayer;
    v28 = @"position";
    null = [MEMORY[0x277CBEB68] null];
    v29[0] = null;
    v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:&v28 count:1];
    [(CAShapeLayer *)v20 setActions:v22];

    objc_storeStrong(&v15->_foregroundView, shapeView);
    [(CDRichComplicationShapeView *)v15->_foregroundView setFilterProvider:v15];
    [(CDRichComplicationProgressView *)v15 addSubview:v15->_foregroundView];
    v23 = objc_opt_new();
    indicatorView = v15->_indicatorView;
    v15->_indicatorView = v23;

    [(CDRichComplicationProgressView *)v15 addSubview:v15->_indicatorView];
    [(CDRichComplicationProgressView *)v15 setShowHolePunch:1];
    [(CDRichComplicationProgressView *)v15 setShowIndicatorView:1];
    [(CDRichComplicationProgressView *)v15 _applyStyle];
  }

  v25 = *MEMORY[0x277D85DE8];
  return v15;
}

- (void)dealloc
{
  if (self->_updateToken)
  {
    [(CLKGaugeProvider *)self->_gaugeProvider stopUpdatesForToken:?];
    updateToken = self->_updateToken;
    self->_updateToken = 0;
  }

  v4.receiver = self;
  v4.super_class = CDRichComplicationProgressView;
  [(CDRichComplicationProgressView *)&v4 dealloc];
}

- (void)layoutSubviews
{
  v14.receiver = self;
  v14.super_class = CDRichComplicationProgressView;
  [(CDRichComplicationProgressView *)&v14 layoutSubviews];
  [(CDRichComplicationProgressView *)self bounds];
  [(CDRichComplicationShapeView *)self->_backgroundView setFrame:?];
  [(CDRichComplicationProgressView *)self bounds];
  [(CDRichComplicationShapeView *)self->_foregroundView setFrame:?];
  [(CDRichComplicationProgressView *)self bounds];
  Width = CGRectGetWidth(v15);
  [(CDRichComplicationProgressView *)self bounds];
  Height = CGRectGetHeight(v16);
  [(CAShapeLayer *)self->_ringLayer setBounds:0.0, 0.0, Width + Width, Height + Height];
  [(CDRichComplicationProgressView *)self _updateRingShape];
  progress = self->_progress;
  *&progress = progress;
  [(CDRichComplicationShapeView *)self->_backgroundView pointAtProgress:progress];
  v6 = *(MEMORY[0x277CBF348] + 8);
  v8 = v7;
  v10 = v9;
  [(CAShapeLayer *)self->_ringLayer setPosition:v9, v7, *MEMORY[0x277CBF348]];
  [(CDRichComplicationShapeView *)self->_foregroundView _shapeLineWidth];
  v12 = v11 * 0.5;
  [(UIView *)self->_indicatorView setBounds:0.0, 0.0, v12 + v12, v12 + v12];
  layer = [(UIView *)self->_indicatorView layer];
  [layer setCornerRadius:v12];

  [(UIView *)self->_indicatorView setCenter:v10, v8];
}

- (void)setGradientColors:(id)colors
{
  objc_storeStrong(&self->_gradientColors, colors);
  colorsCopy = colors;
  backgroundView = self->_backgroundView;
  v6 = [(CDRichComplicationProgressView *)self overrideBackgroundGradientColorsForGradientColors:colorsCopy];
  [(CDRichComplicationShapeView *)backgroundView setGradientColors:v6];

  [(CDRichComplicationShapeView *)self->_foregroundView setGradientColors:colorsCopy];
}

- (void)setGradientColors:(id)colors locations:(id)locations
{
  backgroundView = self->_backgroundView;
  locationsCopy = locations;
  colorsCopy = colors;
  v8 = [(CDRichComplicationProgressView *)self overrideBackgroundGradientColorsForGradientColors:colorsCopy locations:locationsCopy];
  [(CDRichComplicationShapeView *)backgroundView setGradientColors:v8 locations:locationsCopy];

  [(CDRichComplicationShapeView *)self->_foregroundView setGradientColors:colorsCopy locations:locationsCopy];
}

- (void)setProgress:(double)progress
{
  v4 = fmin(progress, 1.0);
  if (v4 < 0.0)
  {
    v4 = 0.0;
  }

  self->_progress = v4;
  [(CDRichComplicationShapeView *)self->_foregroundView setProgress:?];

  [(CDRichComplicationProgressView *)self setNeedsLayout];
}

- (void)animateToProgress:(float)progress duration:(double)duration
{
  objc_initWeak(&location, self);
  progress = self->_progress;
  progressCopy = progress;
  v8 = progress - progress;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __61__CDRichComplicationProgressView_animateToProgress_duration___block_invoke;
  aBlock[3] = &unk_278DF3508;
  objc_copyWeak(&v11, &location);
  v12 = progressCopy;
  v13 = v8;
  v9 = _Block_copy(aBlock);
  v9[2](1.0);

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

uint64_t __61__CDRichComplicationProgressView_animateToProgress_duration___block_invoke(uint64_t a1, double a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    WeakRetained[57] = *(a1 + 40) + *(a1 + 44) * a2;
    v12 = WeakRetained;
    v5 = [WeakRetained style];
    if ((v5 - 1) >= 2)
    {
      if (!v5)
      {
        v6 = v12[57];
        *&v6 = v6;
        [*(v12 + 61) pointAtProgress:v6];
        v8 = v7;
        v10 = v9;
        [*(v12 + 64) setPosition:?];
        [*(v12 + 60) setCenter:{v8, v10}];
      }
    }

    else
    {
      [*(v12 + 62) setProgress:v12[57]];
    }
  }

  return MEMORY[0x2821F96F8]();
}

- (void)setGaugeProvider:(id)provider
{
  providerCopy = provider;
  if (providerCopy)
  {
    gaugeProvider = self->_gaugeProvider;
    if (gaugeProvider != providerCopy)
    {
      if (self->_updateToken)
      {
        [(CLKGaugeProvider *)gaugeProvider stopUpdatesForToken:?];
        updateToken = self->_updateToken;
        self->_updateToken = 0;
      }

      objc_storeStrong(&self->_gaugeProvider, provider);
      [(CDRichComplicationProgressView *)self _updateUIFromGaugeProvider];
      if ([(CLKGaugeProvider *)self->_gaugeProvider needsTimerUpdates])
      {
        objc_initWeak(&location, self);
        v8 = self->_gaugeProvider;
        v11[0] = MEMORY[0x277D85DD0];
        v11[1] = 3221225472;
        v11[2] = __51__CDRichComplicationProgressView_setGaugeProvider___block_invoke;
        v11[3] = &unk_278DF3530;
        objc_copyWeak(&v12, &location);
        v9 = [(CLKGaugeProvider *)v8 startUpdatesWithHandler:v11];
        v10 = self->_updateToken;
        self->_updateToken = v9;

        objc_destroyWeak(&v12);
        objc_destroyWeak(&location);
      }
    }
  }
}

void __51__CDRichComplicationProgressView_setGaugeProvider___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CBEAA8];
  v4 = a2;
  v5 = [v3 date];
  [v4 progressFractionForNow:v5];
  v7 = v6;

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  *&v7 = v7;
  LODWORD(v8) = LODWORD(v7);
  [WeakRetained animateToProgress:v8 duration:0.300000012];
}

- (void)transitionToMonochromeWithFraction:(double)fraction
{
  [(CDRichComplicationShapeView *)self->_foregroundView transitionToMonochromeWithFraction:?];
  [(CDRichComplicationShapeView *)self->_backgroundView transitionToMonochromeWithFraction:fraction];
  *&v5 = fraction;
  [(CDRichComplicationProgressView *)self _adjustBackgroundViewAlphaWithPercentage:v5];
  isHidden = [(UIView *)self->_indicatorView isHidden];
  v7 = fraction < 1.0 || isHidden;
  [(CDRichComplicationProgressView *)self setShowHolePunch:v7];
  WeakRetained = objc_loadWeakRetained(&self->_filterProvider);
  v9 = [WeakRetained colorForView:self accented:0];

  [(UIView *)self->_indicatorView setBackgroundColor:v9];
  [(UIView *)self->_indicatorView setAlpha:fraction];
}

- (void)updateMonochromeColor
{
  [(CDRichComplicationShapeView *)self->_foregroundView updateMonochromeColor];
  [(CDRichComplicationShapeView *)self->_backgroundView updateMonochromeColor];
  LODWORD(v3) = 1.0;
  [(CDRichComplicationProgressView *)self _adjustBackgroundViewAlphaWithPercentage:v3];
  [(CDRichComplicationProgressView *)self setShowHolePunch:[(UIView *)self->_indicatorView isHidden]];
  WeakRetained = objc_loadWeakRetained(&self->_filterProvider);
  v5 = [WeakRetained colorForView:self accented:0];

  [(UIView *)self->_indicatorView setBackgroundColor:v5];
  [(UIView *)self->_indicatorView setAlpha:1.0];
}

- (void)_updateUIFromGaugeProvider
{
  gaugeProvider = self->_gaugeProvider;
  date = [MEMORY[0x277CBEAA8] date];
  [(CLKGaugeProvider *)gaugeProvider progressFractionForNow:date];
  v6 = v5;

  [(CDRichComplicationProgressView *)self setProgress:v6];
  LODWORD(v7) = *MEMORY[0x277CBB6C8];
  [(CDRichComplicationProgressView *)self setEnabled:*MEMORY[0x277CBB6C8] != v6, v7];
  gaugeColorLocations = [(CLKGaugeProvider *)self->_gaugeProvider gaugeColorLocations];
  v9 = [gaugeColorLocations count];

  gaugeColors = [(CLKGaugeProvider *)self->_gaugeProvider gaugeColors];
  if (v9)
  {
    gaugeColorLocations2 = [(CLKGaugeProvider *)self->_gaugeProvider gaugeColorLocations];
    [(CDRichComplicationProgressView *)self setGradientColors:gaugeColors locations:gaugeColorLocations2];
  }

  else
  {
    [(CDRichComplicationProgressView *)self setGradientColors:gaugeColors];
  }

  style = [(CLKGaugeProvider *)self->_gaugeProvider style];
  if (style == *MEMORY[0x277CBB698])
  {
    [(CDRichComplicationProgressView *)self setStyle:2];
  }

  style2 = [(CLKGaugeProvider *)self->_gaugeProvider style];
  if (style2 <= CLKGaugeProviderStyleFill)
  {

    [(CDRichComplicationProgressView *)self setStyle:style2];
  }
}

- (void)_adjustBackgroundViewAlphaWithPercentage:(float)percentage
{
  style = self->_style;
  if (style != 1 && (style || self->_enabled))
  {
    backgroundView = self->_backgroundView;

    [(CDRichComplicationShapeView *)backgroundView setAlpha:1.0];
  }

  else
  {
    CLKInterpolateBetweenFloatsClipped();
    *&v7 = v7;
    [(CDRichComplicationShapeView *)self->_backgroundView setAlpha:*&v7];
    self->_currentBackgroundViewAlphaPercentage = percentage;
  }
}

- (void)_applyStyle
{
  style = self->_style;
  switch(style)
  {
    case 2:
      [(CDRichComplicationShapeView *)self->_backgroundView setHidden:1];
      goto LABEL_6;
    case 1:
LABEL_6:
      [(CDRichComplicationProgressView *)self setShowIndicatorView:0];
      v5 = !self->_enabled;
      goto LABEL_7;
    case 0:
      [(CDRichComplicationProgressView *)self setShowIndicatorView:self->_enabled];
      v5 = 1;
LABEL_7:
      [(CDRichComplicationShapeView *)self->_foregroundView setHidden:v5];
      break;
  }

  *&v2 = self->_currentBackgroundViewAlphaPercentage;
  [(CDRichComplicationProgressView *)self _adjustBackgroundViewAlphaWithPercentage:v2];
  v6 = !self->_showAlternateIndicatorColor || self->_style || !self->_enabled;
  indicatorView = self->_indicatorView;

  [(UIView *)indicatorView setHidden:v6];
}

- (void)_updateRingShape
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 136315394;
  v4 = "const LayoutConstants _LayoutConstants(CLKDevice *__strong, CLKComplicationFamily)";
  v5 = 2048;
  selfCopy = self;
  _os_log_error_impl(&dword_243D74000, a2, OS_LOG_TYPE_ERROR, "Unhandled complication family in %s constants: %ld", &v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)setShowHolePunch:(BOOL)punch
{
  if (self->_showHolePunch != punch)
  {
    self->_showHolePunch = punch;
    [(CDRichComplicationProgressView *)self _updateRingShape];
  }
}

- (void)setShowIndicatorView:(BOOL)view
{
  if (self->_showIndicatorView != view)
  {
    viewCopy = view;
    self->_showIndicatorView = view;
    layer = [(CDRichComplicationShapeView *)self->_foregroundView layer];
    v7 = layer;
    if (viewCopy)
    {
      ringLayer = self->_ringLayer;
    }

    else
    {
      ringLayer = 0;
    }

    [layer setMask:ringLayer];

    layer2 = [(CDRichComplicationShapeView *)self->_backgroundView layer];
    if (viewCopy)
    {
      v10 = self->_ringLayer;
    }

    else
    {
      v10 = 0;
    }

    v11 = layer2;
    [layer2 setMask:v10];
  }
}

- (id)filtersForView:(id)view style:(int64_t)style
{
  filterProvider = [(CDRichComplicationProgressView *)self filterProvider];
  v7 = [filterProvider filtersForView:self style:style];

  return v7;
}

- (id)filtersForView:(id)view style:(int64_t)style fraction:(double)fraction
{
  filterProvider = [(CDRichComplicationProgressView *)self filterProvider];
  v9 = [filterProvider filtersForView:self style:style fraction:fraction];

  return v9;
}

- (id)filterForView:(id)view style:(int64_t)style fraction:(double)fraction
{
  filterProvider = [(CDRichComplicationProgressView *)self filterProvider];
  v9 = [filterProvider filterForView:self style:style fraction:fraction];

  return v9;
}

- (id)filterForView:(id)view style:(int64_t)style
{
  filterProvider = [(CDRichComplicationProgressView *)self filterProvider];
  v7 = [filterProvider filterForView:self style:style];

  return v7;
}

- (id)interpolatedColorForView:(id)view
{
  viewCopy = view;
  filterProvider = [(CDRichComplicationProgressView *)self filterProvider];
  v6 = [filterProvider interpolatedColorForView:viewCopy];

  return v6;
}

- (id)backgroundColorForView:(id)view
{
  viewCopy = view;
  filterProvider = [(CDRichComplicationProgressView *)self filterProvider];
  v6 = [filterProvider backgroundColorForView:viewCopy];

  return v6;
}

- (CLKMonochromeFilterProvider)filterProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_filterProvider);

  return WeakRetained;
}

@end