@interface NTKRichComplicationBaseCircularClosedGaugeTextView
- (NTKRichComplicationBaseCircularClosedGaugeTextView)initWithFamily:(int64_t)family;
- (int64_t)_innerFilterStyle;
- (void)_setFontConfiguration:(CDRichComplicationFontConfiguration *)configuration;
- (void)layoutSubviews;
- (void)transitionToMonochromeWithFraction:(double)fraction;
- (void)updateMonochromeColor;
@end

@implementation NTKRichComplicationBaseCircularClosedGaugeTextView

- (NTKRichComplicationBaseCircularClosedGaugeTextView)initWithFamily:(int64_t)family
{
  v16.receiver = self;
  v16.super_class = NTKRichComplicationBaseCircularClosedGaugeTextView;
  v4 = [(NTKRichComplicationCircularBaseView *)&v16 initWithFamily:?];
  v5 = v4;
  if (v4)
  {
    device = [(CDRichComplicationView *)v4 device];
    v7 = _LayoutConstants(device, family);

    v8 = [NTKRichComplicationRingProgressView alloc];
    device2 = [(CDRichComplicationView *)v5 device];
    v10 = [(NTKRichComplicationRingProgressView *)v8 initWithFamily:family curveWidth:device2 padding:v7 forDevice:0.0];
    progressView = v5->_progressView;
    v5->_progressView = v10;

    [(CDRichComplicationProgressView *)v5->_progressView setFilterProvider:v5];
    contentView = [(NTKRichComplicationCircularBaseView *)v5 contentView];
    [contentView addSubview:v5->_progressView];

    _createAndAddColoringLabel = [(NTKRichComplicationCircularBaseView *)v5 _createAndAddColoringLabel];
    centerLabel = v5->_centerLabel;
    v5->_centerLabel = _createAndAddColoringLabel;
  }

  return v5;
}

- (void)layoutSubviews
{
  v26[1] = *MEMORY[0x277D85DE8];
  v24.receiver = self;
  v24.super_class = NTKRichComplicationBaseCircularClosedGaugeTextView;
  [(NTKRichComplicationCircularBaseView *)&v24 layoutSubviews];
  device = [(CDRichComplicationView *)self device];
  _LayoutConstants(device, [(CDRichComplicationView *)self family]);
  v5 = v4;
  v7 = v6;

  contentView = [(NTKRichComplicationCircularBaseView *)self contentView];
  [contentView bounds];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  [(NTKRichComplicationRingProgressView *)self->_progressView setFrame:v10, v12, v14, v16];
  centerLabel = self->_centerLabel;
  v18 = *MEMORY[0x277D74420];
  v19 = [MEMORY[0x277CCABB0] numberWithDouble:v5];
  v26[0] = v19;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:1];
  v21 = [MEMORY[0x277CCABB0] numberWithDouble:v7];
  v25 = v21;
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:&v25 count:1];
  [(NTKRichComplicationCircularBaseView *)self _adjustFontSizeForLabel:centerLabel fontWeight:v20 possibleMaxWidths:v22 possibleFontSizes:v18];

  [(CLKUIColoringLabel *)self->_centerLabel frame];
  device2 = [(CDRichComplicationView *)self device];
  CLKPixelAlignRectForDevice();
  [(CLKUIColoringLabel *)self->_centerLabel setFrame:?];
}

- (void)_setFontConfiguration:(CDRichComplicationFontConfiguration *)configuration
{
  v8[0] = configuration->var0;
  v5 = configuration->var1;
  var2 = configuration->var2;
  v9 = v5;
  v10 = var2;
  v7.receiver = self;
  v7.super_class = NTKRichComplicationBaseCircularClosedGaugeTextView;
  [(CDRichComplicationView *)&v7 _setFontConfiguration:v8];
  if (configuration->var1)
  {
    [(CDRichComplicationView *)self _updateColoringLabel:self->_centerLabel withFontDescriptor:configuration->var2 andSizeFactor:?];
  }
}

- (int64_t)_innerFilterStyle
{
  device = [(CDRichComplicationView *)self device];
  v3 = NTKShowGossamerUI(device);

  if (v3)
  {
    return 0;
  }

  else
  {
    return 2;
  }
}

- (void)transitionToMonochromeWithFraction:(double)fraction
{
  [(CLKUIColoringLabel *)self->_centerLabel transitionToMonochromeWithFraction:[(NTKRichComplicationBaseCircularClosedGaugeTextView *)self _innerFilterStyle] style:fraction];
  progressView = self->_progressView;

  [(CDRichComplicationProgressView *)progressView transitionToMonochromeWithFraction:fraction];
}

- (void)updateMonochromeColor
{
  [(CLKUIColoringLabel *)self->_centerLabel updateMonochromeColorWithStyle:[(NTKRichComplicationBaseCircularClosedGaugeTextView *)self _innerFilterStyle]];
  progressView = self->_progressView;

  [(CDRichComplicationProgressView *)progressView updateMonochromeColor];
}

@end