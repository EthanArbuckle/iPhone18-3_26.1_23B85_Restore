@interface CDRichComplicationProgressView
- (CLKMonochromeFilterProvider)filterProvider;
- (id)backgroundColorForView:(id)a3;
- (id)filterForView:(id)a3 style:(int64_t)a4;
- (id)filterForView:(id)a3 style:(int64_t)a4 fraction:(double)a5;
- (id)filtersForView:(id)a3 style:(int64_t)a4;
- (id)filtersForView:(id)a3 style:(int64_t)a4 fraction:(double)a5;
- (id)initForFamily:(int64_t)a3 device:(id)a4 backgroundShapeView:(id)a5 foregroundShapeView:(id)a6;
- (id)interpolatedColorForView:(id)a3;
- (void)_adjustBackgroundViewAlphaWithPercentage:(float)a3;
- (void)_applyStyle;
- (void)_updateRingShape;
- (void)_updateUIFromGaugeProvider;
- (void)animateToProgress:(float)a3 duration:(double)a4;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setGaugeProvider:(id)a3;
- (void)setGradientColors:(id)a3;
- (void)setGradientColors:(id)a3 locations:(id)a4;
- (void)setProgress:(double)a3;
- (void)setShowHolePunch:(BOOL)a3;
- (void)setShowIndicatorView:(BOOL)a3;
- (void)transitionToMonochromeWithFraction:(double)a3;
- (void)updateMonochromeColor;
@end

@implementation CDRichComplicationProgressView

- (id)initForFamily:(int64_t)a3 device:(id)a4 backgroundShapeView:(id)a5 foregroundShapeView:(id)a6
{
  v29[1] = *MEMORY[0x277D85DE8];
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v27.receiver = self;
  v27.super_class = CDRichComplicationProgressView;
  v14 = [(CDRichComplicationProgressView *)&v27 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v15 = v14;
  if (v14)
  {
    v14->_family = a3;
    objc_storeStrong(&v14->_device, a4);
    v15->_showAlternateIndicatorColor = CDShowGossamerUI(v15->_device);
    objc_storeStrong(&v15->_backgroundView, a5);
    [(CDRichComplicationShapeView *)v15->_backgroundView setFilterProvider:v15];
    [(CDRichComplicationProgressView *)v15 addSubview:v15->_backgroundView];
    v16 = [MEMORY[0x277CD9F90] layer];
    ringLayer = v15->_ringLayer;
    v15->_ringLayer = v16;

    [(CAShapeLayer *)v15->_ringLayer setAnchorPoint:0.5, 0.5];
    [(CAShapeLayer *)v15->_ringLayer setFillRule:*MEMORY[0x277CDA248]];
    v18 = v15->_ringLayer;
    v19 = [MEMORY[0x277D75348] whiteColor];
    -[CAShapeLayer setFillColor:](v18, "setFillColor:", [v19 CGColor]);

    v20 = v15->_ringLayer;
    v28 = @"position";
    v21 = [MEMORY[0x277CBEB68] null];
    v29[0] = v21;
    v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:&v28 count:1];
    [(CAShapeLayer *)v20 setActions:v22];

    objc_storeStrong(&v15->_foregroundView, a6);
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
  v13 = [(UIView *)self->_indicatorView layer];
  [v13 setCornerRadius:v12];

  [(UIView *)self->_indicatorView setCenter:v10, v8];
}

- (void)setGradientColors:(id)a3
{
  objc_storeStrong(&self->_gradientColors, a3);
  v7 = a3;
  backgroundView = self->_backgroundView;
  v6 = [(CDRichComplicationProgressView *)self overrideBackgroundGradientColorsForGradientColors:v7];
  [(CDRichComplicationShapeView *)backgroundView setGradientColors:v6];

  [(CDRichComplicationShapeView *)self->_foregroundView setGradientColors:v7];
}

- (void)setGradientColors:(id)a3 locations:(id)a4
{
  backgroundView = self->_backgroundView;
  v7 = a4;
  v9 = a3;
  v8 = [(CDRichComplicationProgressView *)self overrideBackgroundGradientColorsForGradientColors:v9 locations:v7];
  [(CDRichComplicationShapeView *)backgroundView setGradientColors:v8 locations:v7];

  [(CDRichComplicationShapeView *)self->_foregroundView setGradientColors:v9 locations:v7];
}

- (void)setProgress:(double)a3
{
  v4 = fmin(a3, 1.0);
  if (v4 < 0.0)
  {
    v4 = 0.0;
  }

  self->_progress = v4;
  [(CDRichComplicationShapeView *)self->_foregroundView setProgress:?];

  [(CDRichComplicationProgressView *)self setNeedsLayout];
}

- (void)animateToProgress:(float)a3 duration:(double)a4
{
  objc_initWeak(&location, self);
  progress = self->_progress;
  v7 = progress;
  v8 = a3 - progress;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __61__CDRichComplicationProgressView_animateToProgress_duration___block_invoke;
  aBlock[3] = &unk_278DF3508;
  objc_copyWeak(&v11, &location);
  v12 = v7;
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

- (void)setGaugeProvider:(id)a3
{
  v5 = a3;
  if (v5)
  {
    gaugeProvider = self->_gaugeProvider;
    if (gaugeProvider != v5)
    {
      if (self->_updateToken)
      {
        [(CLKGaugeProvider *)gaugeProvider stopUpdatesForToken:?];
        updateToken = self->_updateToken;
        self->_updateToken = 0;
      }

      objc_storeStrong(&self->_gaugeProvider, a3);
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

- (void)transitionToMonochromeWithFraction:(double)a3
{
  [(CDRichComplicationShapeView *)self->_foregroundView transitionToMonochromeWithFraction:?];
  [(CDRichComplicationShapeView *)self->_backgroundView transitionToMonochromeWithFraction:a3];
  *&v5 = a3;
  [(CDRichComplicationProgressView *)self _adjustBackgroundViewAlphaWithPercentage:v5];
  v6 = [(UIView *)self->_indicatorView isHidden];
  v7 = a3 < 1.0 || v6;
  [(CDRichComplicationProgressView *)self setShowHolePunch:v7];
  WeakRetained = objc_loadWeakRetained(&self->_filterProvider);
  v9 = [WeakRetained colorForView:self accented:0];

  [(UIView *)self->_indicatorView setBackgroundColor:v9];
  [(UIView *)self->_indicatorView setAlpha:a3];
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
  v4 = [MEMORY[0x277CBEAA8] date];
  [(CLKGaugeProvider *)gaugeProvider progressFractionForNow:v4];
  v6 = v5;

  [(CDRichComplicationProgressView *)self setProgress:v6];
  LODWORD(v7) = *MEMORY[0x277CBB6C8];
  [(CDRichComplicationProgressView *)self setEnabled:*MEMORY[0x277CBB6C8] != v6, v7];
  v8 = [(CLKGaugeProvider *)self->_gaugeProvider gaugeColorLocations];
  v9 = [v8 count];

  v10 = [(CLKGaugeProvider *)self->_gaugeProvider gaugeColors];
  if (v9)
  {
    v11 = [(CLKGaugeProvider *)self->_gaugeProvider gaugeColorLocations];
    [(CDRichComplicationProgressView *)self setGradientColors:v10 locations:v11];
  }

  else
  {
    [(CDRichComplicationProgressView *)self setGradientColors:v10];
  }

  v12 = [(CLKGaugeProvider *)self->_gaugeProvider style];
  if (v12 == *MEMORY[0x277CBB698])
  {
    [(CDRichComplicationProgressView *)self setStyle:2];
  }

  v13 = [(CLKGaugeProvider *)self->_gaugeProvider style];
  if (v13 <= CLKGaugeProviderStyleFill)
  {

    [(CDRichComplicationProgressView *)self setStyle:v13];
  }
}

- (void)_adjustBackgroundViewAlphaWithPercentage:(float)a3
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
    self->_currentBackgroundViewAlphaPercentage = a3;
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
  v6 = a1;
  _os_log_error_impl(&dword_243D74000, a2, OS_LOG_TYPE_ERROR, "Unhandled complication family in %s constants: %ld", &v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)setShowHolePunch:(BOOL)a3
{
  if (self->_showHolePunch != a3)
  {
    self->_showHolePunch = a3;
    [(CDRichComplicationProgressView *)self _updateRingShape];
  }
}

- (void)setShowIndicatorView:(BOOL)a3
{
  if (self->_showIndicatorView != a3)
  {
    v4 = a3;
    self->_showIndicatorView = a3;
    v6 = [(CDRichComplicationShapeView *)self->_foregroundView layer];
    v7 = v6;
    if (v4)
    {
      ringLayer = self->_ringLayer;
    }

    else
    {
      ringLayer = 0;
    }

    [v6 setMask:ringLayer];

    v9 = [(CDRichComplicationShapeView *)self->_backgroundView layer];
    if (v4)
    {
      v10 = self->_ringLayer;
    }

    else
    {
      v10 = 0;
    }

    v11 = v9;
    [v9 setMask:v10];
  }
}

- (id)filtersForView:(id)a3 style:(int64_t)a4
{
  v6 = [(CDRichComplicationProgressView *)self filterProvider];
  v7 = [v6 filtersForView:self style:a4];

  return v7;
}

- (id)filtersForView:(id)a3 style:(int64_t)a4 fraction:(double)a5
{
  v8 = [(CDRichComplicationProgressView *)self filterProvider];
  v9 = [v8 filtersForView:self style:a4 fraction:a5];

  return v9;
}

- (id)filterForView:(id)a3 style:(int64_t)a4 fraction:(double)a5
{
  v8 = [(CDRichComplicationProgressView *)self filterProvider];
  v9 = [v8 filterForView:self style:a4 fraction:a5];

  return v9;
}

- (id)filterForView:(id)a3 style:(int64_t)a4
{
  v6 = [(CDRichComplicationProgressView *)self filterProvider];
  v7 = [v6 filterForView:self style:a4];

  return v7;
}

- (id)interpolatedColorForView:(id)a3
{
  v4 = a3;
  v5 = [(CDRichComplicationProgressView *)self filterProvider];
  v6 = [v5 interpolatedColorForView:v4];

  return v6;
}

- (id)backgroundColorForView:(id)a3
{
  v4 = a3;
  v5 = [(CDRichComplicationProgressView *)self filterProvider];
  v6 = [v5 backgroundColorForView:v4];

  return v6;
}

- (CLKMonochromeFilterProvider)filterProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_filterProvider);

  return WeakRetained;
}

@end