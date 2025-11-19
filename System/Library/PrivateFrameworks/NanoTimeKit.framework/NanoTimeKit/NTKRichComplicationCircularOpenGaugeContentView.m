@interface NTKRichComplicationCircularOpenGaugeContentView
- (NTKRichComplicationCircularOpenGaugeContentView)initWithFamily:(int64_t)a3;
- (id)bottomView;
- (int64_t)_innerFilterStyle;
- (int64_t)_outerFilterStyle;
- (void)_handleTemplate:(id)a3 reason:(int64_t)a4;
- (void)gaugeProvider:(id *)a3 andCenterTextProvider:(id *)a4 fromTemplate:(id)a5;
- (void)layoutSubviews;
- (void)transitionToMonochromeWithFraction:(double)a3;
- (void)updateMonochromeColor;
@end

@implementation NTKRichComplicationCircularOpenGaugeContentView

- (int64_t)_outerFilterStyle
{
  v2 = [(CDRichComplicationView *)self device];
  v3 = NTKShowGossamerUI(v2);

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
  v2 = [(CDRichComplicationView *)self device];
  v3 = NTKShowGossamerUI(v2);

  if (v3)
  {
    return 0;
  }

  else
  {
    return 2;
  }
}

- (NTKRichComplicationCircularOpenGaugeContentView)initWithFamily:(int64_t)a3
{
  v22.receiver = self;
  v22.super_class = NTKRichComplicationCircularOpenGaugeContentView;
  v4 = [(NTKRichComplicationCircularBaseView *)&v22 initWithFamily:?];
  v5 = v4;
  if (v4)
  {
    v21 = 0u;
    v6 = [(CDRichComplicationView *)v4 device:0];
    _LayoutConstants_2(v6, a3, &v20);

    v7 = [off_27877BEA8 alloc];
    v8 = v21;
    v9 = 6.28318531 - *(&v21 + 1);
    v10 = [(CDRichComplicationView *)v5 device];
    v11 = [v7 initWithFamily:a3 curveWidth:v10 padding:-[NTKRichComplicationCircularOpenGaugeContentView _outerFilterStyle](v5 beginAngle:"_outerFilterStyle") endAngle:objc_msgSend(objc_opt_class() forDevice:"progressFillStyle") withFilterStyle:*&v8 progressFillStyle:{0.0, *(&v8 + 1), v9}];
    progressView = v5->_progressView;
    v5->_progressView = v11;

    [(CDRichComplicationCurvedProgressView *)v5->_progressView setFilterProvider:v5];
    v13 = [(NTKRichComplicationCircularBaseView *)v5 contentView];
    [v13 addSubview:v5->_progressView];

    v14 = [(NTKRichComplicationCircularOpenGaugeContentView *)v5 bottomView];
    bottomView = v5->_bottomView;
    v5->_bottomView = v14;

    v16 = [(NTKRichComplicationCircularBaseView *)v5 contentView];
    [v16 addSubview:v5->_bottomView];

    v17 = [(NTKRichComplicationCircularBaseView *)v5 _createAndAddColoringLabel];
    centerLabel = v5->_centerLabel;
    v5->_centerLabel = v17;
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
  v3 = [(CDRichComplicationView *)self device];
  _LayoutConstants_2(v3, [(CDRichComplicationView *)self family], &v25);

  v4 = [(NTKRichComplicationCircularBaseView *)self contentView];
  [v4 bounds];
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
  v22 = [(CLKUIColoringLabel *)self->_centerLabel font];
  [v22 ascender];

  v23 = [(CDRichComplicationView *)self device];
  CLKPixelAlignRectForDevice();
  [(CLKUIColoringLabel *)self->_centerLabel setFrame:?];

  [(UIView *)self->_bottomView frame];
  v24 = [(CDRichComplicationView *)self device];
  CLKPixelAlignRectForDevice();
  [(UIView *)self->_bottomView setFrame:?];
}

- (void)_handleTemplate:(id)a3 reason:(int64_t)a4
{
  v7 = 0;
  v8 = 0;
  [(NTKRichComplicationCircularOpenGaugeContentView *)self gaugeProvider:&v8 andCenterTextProvider:&v7 fromTemplate:a3];
  v5 = v8;
  v6 = v7;
  [(CDRichComplicationCurvedProgressView *)self->_progressView setGaugeProvider:v5];
  [(CLKUIColoringLabel *)self->_centerLabel setTextProvider:v6];
}

- (void)transitionToMonochromeWithFraction:(double)a3
{
  [(CLKUIColoringLabel *)self->_centerLabel transitionToMonochromeWithFraction:[(NTKRichComplicationCircularOpenGaugeContentView *)self _innerFilterStyle] style:a3];
  progressView = self->_progressView;

  [(CDRichComplicationCurvedProgressView *)progressView transitionToMonochromeWithFraction:a3];
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

- (void)gaugeProvider:(id *)a3 andCenterTextProvider:(id *)a4 fromTemplate:(id)a5
{
  objc_opt_class();

  NSRequestConcreteImplementation();
}

@end