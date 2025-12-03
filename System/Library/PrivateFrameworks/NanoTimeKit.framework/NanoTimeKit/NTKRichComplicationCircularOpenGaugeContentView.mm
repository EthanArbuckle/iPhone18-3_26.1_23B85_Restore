@interface NTKRichComplicationCircularOpenGaugeContentView
- (NTKRichComplicationCircularOpenGaugeContentView)initWithFamily:(int64_t)family;
- (id)bottomView;
- (int64_t)_innerFilterStyle;
- (int64_t)_outerFilterStyle;
- (void)_handleTemplate:(id)template reason:(int64_t)reason;
- (void)gaugeProvider:(id *)provider andCenterTextProvider:(id *)textProvider fromTemplate:(id)template;
- (void)layoutSubviews;
- (void)transitionToMonochromeWithFraction:(double)fraction;
- (void)updateMonochromeColor;
@end

@implementation NTKRichComplicationCircularOpenGaugeContentView

- (int64_t)_outerFilterStyle
{
  device = [(CDRichComplicationView *)self device];
  v3 = NTKShowGossamerUI(device);

  if (v3)
  {
    return 2;
  }

  else
  {
    return 0;
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

- (NTKRichComplicationCircularOpenGaugeContentView)initWithFamily:(int64_t)family
{
  v22.receiver = self;
  v22.super_class = NTKRichComplicationCircularOpenGaugeContentView;
  v4 = [(NTKRichComplicationCircularBaseView *)&v22 initWithFamily:?];
  v5 = v4;
  if (v4)
  {
    v21 = 0u;
    v6 = [(CDRichComplicationView *)v4 device:0];
    _LayoutConstants_2(v6, family, &v20);

    v7 = [off_27877BEA8 alloc];
    v8 = v21;
    v9 = 6.28318531 - *(&v21 + 1);
    device = [(CDRichComplicationView *)v5 device];
    v11 = [v7 initWithFamily:family curveWidth:device padding:-[NTKRichComplicationCircularOpenGaugeContentView _outerFilterStyle](v5 beginAngle:"_outerFilterStyle") endAngle:objc_msgSend(objc_opt_class() forDevice:"progressFillStyle") withFilterStyle:*&v8 progressFillStyle:{0.0, *(&v8 + 1), v9}];
    progressView = v5->_progressView;
    v5->_progressView = v11;

    [(CDRichComplicationCurvedProgressView *)v5->_progressView setFilterProvider:v5];
    contentView = [(NTKRichComplicationCircularBaseView *)v5 contentView];
    [contentView addSubview:v5->_progressView];

    bottomView = [(NTKRichComplicationCircularOpenGaugeContentView *)v5 bottomView];
    bottomView = v5->_bottomView;
    v5->_bottomView = bottomView;

    contentView2 = [(NTKRichComplicationCircularBaseView *)v5 contentView];
    [contentView2 addSubview:v5->_bottomView];

    _createAndAddColoringLabel = [(NTKRichComplicationCircularBaseView *)v5 _createAndAddColoringLabel];
    centerLabel = v5->_centerLabel;
    v5->_centerLabel = _createAndAddColoringLabel;
  }

  return v5;
}

- (void)layoutSubviews
{
  v31[2] = *MEMORY[0x277D85DE8];
  v29.receiver = self;
  v29.super_class = NTKRichComplicationCircularOpenGaugeContentView;
  [(NTKRichComplicationCircularBaseView *)&v29 layoutSubviews];
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  device = [(CDRichComplicationView *)self device];
  _LayoutConstants_2(device, [(CDRichComplicationView *)self family], &v25);

  contentView = [(NTKRichComplicationCircularBaseView *)self contentView];
  [contentView bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  [(CDRichComplicationCurvedProgressView *)self->_progressView setFrame:v6, v8, v10, v12];
  centerLabel = self->_centerLabel;
  v14 = *MEMORY[0x277D74420];
  v15 = *&v26;
  v16 = [MEMORY[0x277CCABB0] numberWithDouble:*&v26];
  v31[0] = v16;
  v17 = [MEMORY[0x277CCABB0] numberWithDouble:v15];
  v31[1] = v17;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:2];
  v19 = [MEMORY[0x277CCABB0] numberWithDouble:v25.n128_f64[0]];
  v30[0] = v19;
  v20 = [MEMORY[0x277CCABB0] numberWithDouble:v25.n128_f64[1]];
  v30[1] = v20;
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:2];
  [(NTKRichComplicationCircularBaseView *)self _adjustFontSizeForLabel:centerLabel fontWeight:v18 possibleMaxWidths:v21 possibleFontSizes:v14];

  [(CLKUIColoringLabel *)self->_centerLabel frame];
  font = [(CLKUIColoringLabel *)self->_centerLabel font];
  [font ascender];

  device2 = [(CDRichComplicationView *)self device];
  CLKPixelAlignRectForDevice();
  [(CLKUIColoringLabel *)self->_centerLabel setFrame:?];

  [(UIView *)self->_bottomView frame];
  device3 = [(CDRichComplicationView *)self device];
  CLKPixelAlignRectForDevice();
  [(UIView *)self->_bottomView setFrame:?];
}

- (void)_handleTemplate:(id)template reason:(int64_t)reason
{
  v7 = 0;
  v8 = 0;
  [(NTKRichComplicationCircularOpenGaugeContentView *)self gaugeProvider:&v8 andCenterTextProvider:&v7 fromTemplate:template];
  v5 = v8;
  v6 = v7;
  [(CDRichComplicationCurvedProgressView *)self->_progressView setGaugeProvider:v5];
  [(CLKUIColoringLabel *)self->_centerLabel setTextProvider:v6];
}

- (void)transitionToMonochromeWithFraction:(double)fraction
{
  [(CLKUIColoringLabel *)self->_centerLabel transitionToMonochromeWithFraction:[(NTKRichComplicationCircularOpenGaugeContentView *)self _innerFilterStyle] style:fraction];
  progressView = self->_progressView;

  [(CDRichComplicationCurvedProgressView *)progressView transitionToMonochromeWithFraction:fraction];
}

- (void)updateMonochromeColor
{
  [(CLKUIColoringLabel *)self->_centerLabel updateMonochromeColorWithStyle:[(NTKRichComplicationCircularOpenGaugeContentView *)self _innerFilterStyle]];
  progressView = self->_progressView;

  [(CDRichComplicationCurvedProgressView *)progressView updateMonochromeColor];
}

- (id)bottomView
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

- (void)gaugeProvider:(id *)provider andCenterTextProvider:(id *)textProvider fromTemplate:(id)template
{
  objc_opt_class();

  NSRequestConcreteImplementation();
}

@end