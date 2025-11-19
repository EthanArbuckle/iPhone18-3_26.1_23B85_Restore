@interface NTKRichComplicationBaseCircularClosedGaugeTextView
- (NTKRichComplicationBaseCircularClosedGaugeTextView)initWithFamily:(int64_t)a3;
- (int64_t)_innerFilterStyle;
- (void)_setFontConfiguration:(CDRichComplicationFontConfiguration *)a3;
- (void)layoutSubviews;
- (void)transitionToMonochromeWithFraction:(double)a3;
- (void)updateMonochromeColor;
@end

@implementation NTKRichComplicationBaseCircularClosedGaugeTextView

- (NTKRichComplicationBaseCircularClosedGaugeTextView)initWithFamily:(int64_t)a3
{
  v16.receiver = self;
  v16.super_class = NTKRichComplicationBaseCircularClosedGaugeTextView;
  v4 = [(NTKRichComplicationCircularBaseView *)&v16 initWithFamily:?];
  v5 = v4;
  if (v4)
  {
    v6 = [(CDRichComplicationView *)v4 device];
    v7 = _LayoutConstants(v6, a3);

    v8 = [NTKRichComplicationRingProgressView alloc];
    v9 = [(CDRichComplicationView *)v5 device];
    v10 = [(NTKRichComplicationRingProgressView *)v8 initWithFamily:a3 curveWidth:v9 padding:v7 forDevice:0.0];
    progressView = v5->_progressView;
    v5->_progressView = v10;

    [(CDRichComplicationProgressView *)v5->_progressView setFilterProvider:v5];
    v12 = [(NTKRichComplicationCircularBaseView *)v5 contentView];
    [v12 addSubview:v5->_progressView];

    v13 = [(NTKRichComplicationCircularBaseView *)v5 _createAndAddColoringLabel];
    centerLabel = v5->_centerLabel;
    v5->_centerLabel = v13;
  }

  return v5;
}

- (void)layoutSubviews
{
  v26[1] = *MEMORY[0x277D85DE8];
  v24.receiver = self;
  v24.super_class = NTKRichComplicationBaseCircularClosedGaugeTextView;
  [(NTKRichComplicationCircularBaseView *)&v24 layoutSubviews];
  v3 = [(CDRichComplicationView *)self device];
  _LayoutConstants(v3, [(CDRichComplicationView *)self family]);
  v5 = v4;
  v7 = v6;

  v8 = [(NTKRichComplicationCircularBaseView *)self contentView];
  [v8 bounds];
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
  v23 = [(CDRichComplicationView *)self device];
  CLKPixelAlignRectForDevice();
  [(CLKUIColoringLabel *)self->_centerLabel setFrame:?];
}

- (void)_setFontConfiguration:(CDRichComplicationFontConfiguration *)a3
{
  v8[0] = a3->var0;
  v5 = a3->var1;
  var2 = a3->var2;
  v9 = v5;
  v10 = var2;
  v7.receiver = self;
  v7.super_class = NTKRichComplicationBaseCircularClosedGaugeTextView;
  [(CDRichComplicationView *)&v7 _setFontConfiguration:v8];
  if (a3->var1)
  {
    [(CDRichComplicationView *)self _updateColoringLabel:self->_centerLabel withFontDescriptor:a3->var2 andSizeFactor:?];
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

- (void)transitionToMonochromeWithFraction:(double)a3
{
  [(CLKUIColoringLabel *)self->_centerLabel transitionToMonochromeWithFraction:[(NTKRichComplicationBaseCircularClosedGaugeTextView *)self _innerFilterStyle] style:a3];
  progressView = self->_progressView;

  [(CDRichComplicationProgressView *)progressView transitionToMonochromeWithFraction:a3];
}

- (void)updateMonochromeColor
{
  [(CLKUIColoringLabel *)self->_centerLabel updateMonochromeColorWithStyle:[(NTKRichComplicationBaseCircularClosedGaugeTextView *)self _innerFilterStyle]];
  progressView = self->_progressView;

  [(CDRichComplicationProgressView *)progressView updateMonochromeColor];
}

@end