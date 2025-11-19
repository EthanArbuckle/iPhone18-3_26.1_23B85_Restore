@interface NTKRichComplicationBaseCircularOpenGaugeSimpleTextView
- (NTKRichComplicationBaseCircularOpenGaugeSimpleTextView)initWithFamily:(int64_t)a3;
- (int64_t)_innerFilterStyle;
- (int64_t)_outerFilterStyle;
- (void)_editingDidEnd;
- (void)_enumerateLabelsWithBlock:(id)a3;
- (void)_setFontConfiguration:(CDRichComplicationFontConfiguration *)a3;
- (void)layoutSubviews;
- (void)transitionToMonochromeWithFraction:(double)a3;
- (void)updateMonochromeColor;
@end

@implementation NTKRichComplicationBaseCircularOpenGaugeSimpleTextView

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

- (NTKRichComplicationBaseCircularOpenGaugeSimpleTextView)initWithFamily:(int64_t)a3
{
  v23.receiver = self;
  v23.super_class = NTKRichComplicationBaseCircularOpenGaugeSimpleTextView;
  v4 = [(NTKRichComplicationCircularBaseView *)&v23 initWithFamily:?];
  v5 = v4;
  if (v4)
  {
    v22 = 0.0;
    v21 = 0u;
    v6 = [(CDRichComplicationView *)v4 device:0];
    _LayoutConstants_5(v6, a3, &v20);

    v7 = [off_27877BEA8 alloc];
    v8 = *(&v21 + 1);
    v9 = v22;
    v10 = 6.28318531 - v22;
    v11 = [(CDRichComplicationView *)v5 device];
    v12 = [v7 initWithFamily:a3 curveWidth:v11 padding:-[NTKRichComplicationBaseCircularOpenGaugeSimpleTextView _outerFilterStyle](v5 beginAngle:"_outerFilterStyle") endAngle:0 forDevice:v8 withFilterStyle:0.0 progressFillStyle:{v9, v10}];
    progressView = v5->_progressView;
    v5->_progressView = v12;

    [(CDRichComplicationCurvedProgressView *)v5->_progressView setFilterProvider:v5];
    v14 = [(NTKRichComplicationCircularBaseView *)v5 contentView];
    [v14 addSubview:v5->_progressView];

    v15 = [(NTKRichComplicationCircularBaseView *)v5 _createAndAddColoringLabel];
    smallLabel = v5->_smallLabel;
    v5->_smallLabel = v15;

    v17 = [(NTKRichComplicationCircularBaseView *)v5 _createAndAddColoringLabel];
    centerLabel = v5->_centerLabel;
    v5->_centerLabel = v17;
  }

  return v5;
}

- (void)layoutSubviews
{
  v45[2] = *MEMORY[0x277D85DE8];
  v41.receiver = self;
  v41.super_class = NTKRichComplicationBaseCircularOpenGaugeSimpleTextView;
  [(NTKRichComplicationCircularBaseView *)&v41 layoutSubviews];
  v40 = 0;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v35 = 0u;
  v3 = [(CDRichComplicationView *)self device];
  _LayoutConstants_5(v3, [(CDRichComplicationView *)self family], &v35);

  v4 = [(NTKRichComplicationCircularBaseView *)self contentView];
  [v4 bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  [(CDRichComplicationCurvedProgressView *)self->_progressView setFrame:v6, v8, v10, v12];
  centerLabel = self->_centerLabel;
  v14 = *MEMORY[0x277D74420];
  v15 = *&v36;
  v16 = [MEMORY[0x277CCABB0] numberWithDouble:*&v36];
  v45[0] = v16;
  v17 = [MEMORY[0x277CCABB0] numberWithDouble:v15];
  v45[1] = v17;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v45 count:2];
  v19 = [MEMORY[0x277CCABB0] numberWithDouble:*&v35];
  v44[0] = v19;
  v20 = [MEMORY[0x277CCABB0] numberWithDouble:*(&v35 + 1)];
  v44[1] = v20;
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v44 count:2];
  [(NTKRichComplicationCircularBaseView *)self _adjustFontSizeForLabel:centerLabel fontWeight:v18 possibleMaxWidths:v21 possibleFontSizes:v14];

  [(CLKUIColoringLabel *)self->_centerLabel frame];
  v22 = [(CLKUIColoringLabel *)self->_centerLabel text];
  [v22 length];

  v23 = [(CLKUIColoringLabel *)self->_centerLabel font];
  [v23 ascender];

  v24 = [(CDRichComplicationView *)self device];
  CLKPixelAlignRectForDevice();
  [(CLKUIColoringLabel *)self->_centerLabel setFrame:?];

  smallLabel = self->_smallLabel;
  v26 = *&v39;
  v27 = [MEMORY[0x277CCABB0] numberWithDouble:*&v39];
  v43[0] = v27;
  v28 = [MEMORY[0x277CCABB0] numberWithDouble:v26];
  v43[1] = v28;
  v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v43 count:2];
  v30 = [MEMORY[0x277CCABB0] numberWithDouble:*(&v37 + 1)];
  v42[0] = v30;
  v31 = [MEMORY[0x277CCABB0] numberWithDouble:*&v38];
  v42[1] = v31;
  v32 = [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:2];
  [(NTKRichComplicationCircularBaseView *)self _adjustFontSizeForLabel:smallLabel fontWeight:v29 possibleMaxWidths:v32 possibleFontSizes:v14];

  [(CLKUIColoringLabel *)self->_smallLabel frame];
  v33 = [(CLKUIColoringLabel *)self->_smallLabel font];
  [v33 ascender];

  v34 = [(CDRichComplicationView *)self device];
  CLKPixelAlignRectForDevice();
  [(CLKUIColoringLabel *)self->_smallLabel setFrame:?];
}

- (void)_setFontConfiguration:(CDRichComplicationFontConfiguration *)a3
{
  v10[0] = a3->var0;
  v5 = a3->var1;
  var2 = a3->var2;
  v11 = v5;
  v12 = var2;
  v9.receiver = self;
  v9.super_class = NTKRichComplicationBaseCircularOpenGaugeSimpleTextView;
  [(CDRichComplicationView *)&v9 _setFontConfiguration:v10];
  v7 = a3->var1;
  if (v7)
  {
    v8 = a3->var2;
    [(CDRichComplicationView *)self _updateColoringLabel:self->_smallLabel withFontDescriptor:v7 andSizeFactor:v8];
    [(CDRichComplicationView *)self _updateColoringLabel:self->_centerLabel withFontDescriptor:v7 andSizeFactor:v8];
  }
}

- (void)_enumerateLabelsWithBlock:(id)a3
{
  v5.receiver = self;
  v5.super_class = NTKRichComplicationBaseCircularOpenGaugeSimpleTextView;
  v4 = a3;
  [(CDRichComplicationView *)&v5 _enumerateLabelsWithBlock:v4];
  v4[2](v4, self->_smallLabel);
  v4[2](v4, self->_centerLabel);
}

- (void)_editingDidEnd
{
  [(CLKUIColoringLabel *)self->_smallLabel editingDidEnd];
  centerLabel = self->_centerLabel;

  [(CLKUIColoringLabel *)centerLabel editingDidEnd];
}

- (void)transitionToMonochromeWithFraction:(double)a3
{
  [(CLKUIColoringLabel *)self->_centerLabel transitionToMonochromeWithFraction:[(NTKRichComplicationBaseCircularOpenGaugeSimpleTextView *)self _innerFilterStyle] style:a3];
  [(CLKUIColoringLabel *)self->_smallLabel transitionToMonochromeWithFraction:[(NTKRichComplicationBaseCircularOpenGaugeSimpleTextView *)self _outerFilterStyle] style:a3];
  progressView = self->_progressView;

  [(CDRichComplicationCurvedProgressView *)progressView transitionToMonochromeWithFraction:a3];
}

- (void)updateMonochromeColor
{
  [(CLKUIColoringLabel *)self->_centerLabel updateMonochromeColorWithStyle:[(NTKRichComplicationBaseCircularOpenGaugeSimpleTextView *)self _innerFilterStyle]];
  [(CLKUIColoringLabel *)self->_smallLabel updateMonochromeColorWithStyle:[(NTKRichComplicationBaseCircularOpenGaugeSimpleTextView *)self _outerFilterStyle]];
  progressView = self->_progressView;

  [(CDRichComplicationCurvedProgressView *)progressView updateMonochromeColor];
}

@end