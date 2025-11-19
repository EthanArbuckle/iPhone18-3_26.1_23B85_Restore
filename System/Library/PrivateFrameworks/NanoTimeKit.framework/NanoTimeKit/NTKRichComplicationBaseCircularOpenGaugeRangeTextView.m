@interface NTKRichComplicationBaseCircularOpenGaugeRangeTextView
- (NTKRichComplicationBaseCircularOpenGaugeRangeTextView)initWithFamily:(int64_t)a3;
- (int64_t)_innerFilterStyle;
- (int64_t)_outerFilterStyle;
- (void)_editingDidEnd;
- (void)_setFontConfiguration:(CDRichComplicationFontConfiguration *)a3;
- (void)layoutSubviews;
- (void)transitionToMonochromeWithFraction:(double)a3;
- (void)updateMonochromeColor;
@end

@implementation NTKRichComplicationBaseCircularOpenGaugeRangeTextView

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

- (NTKRichComplicationBaseCircularOpenGaugeRangeTextView)initWithFamily:(int64_t)a3
{
  v25.receiver = self;
  v25.super_class = NTKRichComplicationBaseCircularOpenGaugeRangeTextView;
  v4 = [(NTKRichComplicationCircularBaseView *)&v25 initWithFamily:?];
  v5 = v4;
  if (v4)
  {
    v24 = 0.0;
    v23 = 0u;
    v6 = [(CDRichComplicationView *)v4 device:0];
    _LayoutConstants_14(v6, a3, &v22);

    v7 = [off_27877BEA8 alloc];
    v8 = *(&v23 + 1);
    v9 = v24;
    v10 = 6.28318531 - v24;
    v11 = [(CDRichComplicationView *)v5 device];
    v12 = [v7 initWithFamily:a3 curveWidth:v11 padding:-[NTKRichComplicationBaseCircularOpenGaugeRangeTextView _outerFilterStyle](v5 beginAngle:"_outerFilterStyle") endAngle:objc_msgSend(objc_opt_class() forDevice:"progressFillStyle") withFilterStyle:v8 progressFillStyle:{0.0, v9, v10}];
    progressView = v5->_progressView;
    v5->_progressView = v12;

    [(CDRichComplicationCurvedProgressView *)v5->_progressView setFilterProvider:v5];
    v14 = [(NTKRichComplicationCircularBaseView *)v5 contentView];
    [v14 addSubview:v5->_progressView];

    v15 = [(NTKRichComplicationCircularBaseView *)v5 _createAndAddColoringLabel];
    leadingSmallLabel = v5->_leadingSmallLabel;
    v5->_leadingSmallLabel = v15;

    v17 = [(NTKRichComplicationCircularBaseView *)v5 _createAndAddColoringLabel];
    trailingSmallLabel = v5->_trailingSmallLabel;
    v5->_trailingSmallLabel = v17;

    v19 = [(NTKRichComplicationCircularBaseView *)v5 _createAndAddColoringLabel];
    centerLabel = v5->_centerLabel;
    v5->_centerLabel = v19;
  }

  return v5;
}

- (void)layoutSubviews
{
  v60[2] = *MEMORY[0x277D85DE8];
  v54.receiver = self;
  v54.super_class = NTKRichComplicationBaseCircularOpenGaugeRangeTextView;
  [(NTKRichComplicationCircularBaseView *)&v54 layoutSubviews];
  v53 = 0;
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v3 = [(CDRichComplicationView *)self device];
  _LayoutConstants_14(v3, [(CDRichComplicationView *)self family], &v47);

  v4 = [(NTKRichComplicationCircularBaseView *)self contentView];
  [v4 bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  [(CDRichComplicationCurvedProgressView *)self->_progressView setFrame:v6, v8, v10, v12];
  centerLabel = self->_centerLabel;
  v14 = *MEMORY[0x277D74420];
  v15 = *&v48;
  v16 = [MEMORY[0x277CCABB0] numberWithDouble:*&v48];
  v60[0] = v16;
  v17 = [MEMORY[0x277CCABB0] numberWithDouble:v15];
  v60[1] = v17;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v60 count:2];
  v19 = [MEMORY[0x277CCABB0] numberWithDouble:*&v47];
  v59[0] = v19;
  v20 = [MEMORY[0x277CCABB0] numberWithDouble:*(&v47 + 1)];
  v59[1] = v20;
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v59 count:2];
  [(NTKRichComplicationCircularBaseView *)self _adjustFontSizeForLabel:centerLabel fontWeight:v18 possibleMaxWidths:v21 possibleFontSizes:v14];

  [(CLKUIColoringLabel *)self->_centerLabel frame];
  v22 = [(CLKUIColoringLabel *)self->_centerLabel font];
  [v22 ascender];

  v23 = [(CDRichComplicationView *)self device];
  CLKPixelAlignRectForDevice();
  [(CLKUIColoringLabel *)self->_centerLabel setFrame:?];

  v24 = [(CLKUIColoringLabel *)self->_leadingSmallLabel text];
  [v24 length];

  v25 = [(CLKUIColoringLabel *)self->_trailingSmallLabel text];
  [v25 length];

  leadingSmallLabel = self->_leadingSmallLabel;
  v27 = *&v51;
  v28 = [MEMORY[0x277CCABB0] numberWithDouble:*&v51];
  v58[0] = v28;
  v29 = [MEMORY[0x277CCABB0] numberWithDouble:v27];
  v58[1] = v29;
  v30 = [MEMORY[0x277CBEA60] arrayWithObjects:v58 count:2];
  v31 = *&v49;
  v32 = [MEMORY[0x277CCABB0] numberWithDouble:*&v49];
  v57[0] = v32;
  v33 = *(&v49 + 1);
  v34 = [MEMORY[0x277CCABB0] numberWithDouble:*(&v49 + 1)];
  v57[1] = v34;
  v35 = [MEMORY[0x277CBEA60] arrayWithObjects:v57 count:2];
  [(NTKRichComplicationCircularBaseView *)self _adjustFontSizeForLabel:leadingSmallLabel fontWeight:v30 possibleMaxWidths:v35 possibleFontSizes:v14];

  [(CLKUIColoringLabel *)self->_leadingSmallLabel frame];
  v36 = [(CLKUIColoringLabel *)self->_leadingSmallLabel font];
  [v36 ascender];

  v37 = [(CDRichComplicationView *)self device];
  CLKPixelAlignRectForDevice();
  [(CLKUIColoringLabel *)self->_leadingSmallLabel setFrame:?];

  trailingSmallLabel = self->_trailingSmallLabel;
  v39 = [MEMORY[0x277CCABB0] numberWithDouble:v27];
  v56[0] = v39;
  v40 = [MEMORY[0x277CCABB0] numberWithDouble:v27];
  v56[1] = v40;
  v41 = [MEMORY[0x277CBEA60] arrayWithObjects:v56 count:2];
  v42 = [MEMORY[0x277CCABB0] numberWithDouble:v31];
  v55[0] = v42;
  v43 = [MEMORY[0x277CCABB0] numberWithDouble:v33];
  v55[1] = v43;
  v44 = [MEMORY[0x277CBEA60] arrayWithObjects:v55 count:2];
  [(NTKRichComplicationCircularBaseView *)self _adjustFontSizeForLabel:trailingSmallLabel fontWeight:v41 possibleMaxWidths:v44 possibleFontSizes:v14];

  [(CLKUIColoringLabel *)self->_trailingSmallLabel frame];
  v45 = [(CLKUIColoringLabel *)self->_trailingSmallLabel font];
  [v45 ascender];

  v46 = [(CDRichComplicationView *)self device];
  CLKPixelAlignRectForDevice();
  [(CLKUIColoringLabel *)self->_trailingSmallLabel setFrame:?];
}

- (void)_setFontConfiguration:(CDRichComplicationFontConfiguration *)a3
{
  v10[0] = a3->var0;
  v5 = a3->var1;
  var2 = a3->var2;
  v11 = v5;
  v12 = var2;
  v9.receiver = self;
  v9.super_class = NTKRichComplicationBaseCircularOpenGaugeRangeTextView;
  [(CDRichComplicationView *)&v9 _setFontConfiguration:v10];
  v7 = a3->var1;
  if (v7)
  {
    v8 = a3->var2;
    [(CDRichComplicationView *)self _updateColoringLabel:self->_leadingSmallLabel withFontDescriptor:v7 andSizeFactor:v8];
    [(CDRichComplicationView *)self _updateColoringLabel:self->_trailingSmallLabel withFontDescriptor:v7 andSizeFactor:v8];
    [(CDRichComplicationView *)self _updateColoringLabel:self->_centerLabel withFontDescriptor:v7 andSizeFactor:v8];
  }
}

- (void)_editingDidEnd
{
  [(CLKUIColoringLabel *)self->_leadingSmallLabel editingDidEnd];
  [(CLKUIColoringLabel *)self->_trailingSmallLabel editingDidEnd];
  centerLabel = self->_centerLabel;

  [(CLKUIColoringLabel *)centerLabel editingDidEnd];
}

- (void)transitionToMonochromeWithFraction:(double)a3
{
  [(CLKUIColoringLabel *)self->_centerLabel transitionToMonochromeWithFraction:[(NTKRichComplicationBaseCircularOpenGaugeRangeTextView *)self _innerFilterStyle] style:a3];
  [(CLKUIColoringLabel *)self->_leadingSmallLabel transitionToMonochromeWithFraction:[(NTKRichComplicationBaseCircularOpenGaugeRangeTextView *)self _outerFilterStyle] style:a3];
  [(CLKUIColoringLabel *)self->_trailingSmallLabel transitionToMonochromeWithFraction:[(NTKRichComplicationBaseCircularOpenGaugeRangeTextView *)self _outerFilterStyle] style:a3];
  progressView = self->_progressView;

  [(CDRichComplicationCurvedProgressView *)progressView transitionToMonochromeWithFraction:a3];
}

- (void)updateMonochromeColor
{
  [(CLKUIColoringLabel *)self->_centerLabel updateMonochromeColorWithStyle:[(NTKRichComplicationBaseCircularOpenGaugeRangeTextView *)self _innerFilterStyle]];
  [(CLKUIColoringLabel *)self->_leadingSmallLabel updateMonochromeColorWithStyle:[(NTKRichComplicationBaseCircularOpenGaugeRangeTextView *)self _outerFilterStyle]];
  [(CLKUIColoringLabel *)self->_trailingSmallLabel updateMonochromeColorWithStyle:[(NTKRichComplicationBaseCircularOpenGaugeRangeTextView *)self _outerFilterStyle]];
  progressView = self->_progressView;

  [(CDRichComplicationCurvedProgressView *)progressView updateMonochromeColor];
}

@end