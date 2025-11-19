@interface NTKRichComplicationBaseCircularOpenMeteredGaugeImageView
- ($8502DCEA08BBBE1AB2005217B3838BBD)_layoutConstraintsWithDevice:(SEL)a3 family:(id)a4;
- (NTKRichComplicationBaseCircularOpenMeteredGaugeImageView)initWithFamily:(int64_t)a3;
- (int64_t)_innerFilterStyle;
- (int64_t)_outerFilterStyle;
- (int64_t)tritiumUpdateMode;
- (void)_editingDidEnd;
- (void)_enumerateLabelsWithBlock:(id)a3;
- (void)layoutSubviews;
- (void)setPaused:(BOOL)a3;
- (void)transitionToMonochromeWithFraction:(double)a3;
- (void)updateMonochromeColor;
@end

@implementation NTKRichComplicationBaseCircularOpenMeteredGaugeImageView

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

- (NTKRichComplicationBaseCircularOpenMeteredGaugeImageView)initWithFamily:(int64_t)a3
{
  v20.receiver = self;
  v20.super_class = NTKRichComplicationBaseCircularOpenMeteredGaugeImageView;
  v4 = [(NTKRichComplicationCircularBaseView *)&v20 initWithFamily:?];
  v5 = v4;
  if (v4)
  {
    v6 = [(CDRichComplicationView *)v4 device:0];
    [(NTKRichComplicationBaseCircularOpenMeteredGaugeImageView *)v5 _layoutConstraintsWithDevice:v6 family:a3];

    v7 = [off_27877BEA8 alloc];
    v8 = [(CDRichComplicationView *)v5 device];
    v9 = [v7 initWithFamily:a3 curveWidth:v8 padding:-[NTKRichComplicationBaseCircularOpenMeteredGaugeImageView _outerFilterStyle](v5 beginAngle:"_outerFilterStyle") endAngle:objc_msgSend(objc_opt_class() forDevice:"progressFillStyle") withFilterStyle:0.0 progressFillStyle:{0.0, 0.0, 6.28318531 - 0.0}];
    progressView = v5->_progressView;
    v5->_progressView = v9;

    [(CDRichComplicationCurvedProgressView *)v5->_progressView setFilterProvider:v5];
    v11 = [(NTKRichComplicationCircularBaseView *)v5 contentView];
    [v11 addSubview:v5->_progressView];

    v12 = [off_27877BEB0 alloc];
    v13 = [(CDRichComplicationView *)v5 device];
    v14 = [v12 initWithDevice:v13 useAccentColor:1];
    centerImageView = v5->_centerImageView;
    v5->_centerImageView = v14;

    [(CDRichComplicationImageView *)v5->_centerImageView setPaused:[(CDRichComplicationView *)v5 paused]];
    [(CDRichComplicationImageView *)v5->_centerImageView setFilterProvider:v5];
    v16 = [(NTKRichComplicationCircularBaseView *)v5 contentView];
    [v16 addSubview:v5->_centerImageView];

    v17 = [(NTKRichComplicationCircularBaseView *)v5 _createAndAddColoringLabel];
    smallLabel = v5->_smallLabel;
    v5->_smallLabel = v17;

    [(CLKUIColoringLabel *)v5->_smallLabel setUppercase:0];
  }

  return v5;
}

- (void)layoutSubviews
{
  v48[2] = *MEMORY[0x277D85DE8];
  v46.receiver = self;
  v46.super_class = NTKRichComplicationBaseCircularOpenMeteredGaugeImageView;
  [(NTKRichComplicationCircularBaseView *)&v46 layoutSubviews];
  v3 = [(CDRichComplicationView *)self device];
  [(NTKRichComplicationBaseCircularOpenMeteredGaugeImageView *)self _layoutConstraintsWithDevice:v3 family:[(CDRichComplicationView *)self family]];

  v4 = [(NTKRichComplicationCircularBaseView *)self contentView];
  [v4 bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = [(NTKRichComplicationBaseCircularOpenMeteredGaugeImageView *)self progressView];
  [v13 setFrame:{v6, v8, v10, v12}];

  v14 = [(CDRichComplicationView *)self device];
  CLKPixelAlignRectForDevice();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v23 = [(NTKRichComplicationBaseCircularOpenMeteredGaugeImageView *)self centerImageView];
  [v23 setFrame:{v16, v18, v20, v22}];

  v24 = [(NTKRichComplicationBaseCircularOpenMeteredGaugeImageView *)self smallLabel];
  [(NTKRichComplicationBaseCircularOpenMeteredGaugeImageView *)self _smallLabelFontWeight];
  v26 = v25;
  v27 = [MEMORY[0x277CCABB0] numberWithDouble:0.0];
  v48[0] = v27;
  v28 = [MEMORY[0x277CCABB0] numberWithDouble:0.0];
  v48[1] = v28;
  v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v48 count:2];
  v30 = [MEMORY[0x277CCABB0] numberWithDouble:0.0];
  v47[0] = v30;
  v31 = [MEMORY[0x277CCABB0] numberWithDouble:0.0];
  v47[1] = v31;
  v32 = [MEMORY[0x277CBEA60] arrayWithObjects:v47 count:2];
  [(NTKRichComplicationCircularBaseView *)self _adjustFontSizeForLabel:v24 fontWeight:v29 possibleMaxWidths:v32 possibleFontSizes:v26];

  v33 = [(NTKRichComplicationBaseCircularOpenMeteredGaugeImageView *)self smallLabel];
  [v33 frame];

  v34 = [(NTKRichComplicationBaseCircularOpenMeteredGaugeImageView *)self smallLabel];
  v35 = [v34 font];
  [v35 ascender];

  v36 = [(CDRichComplicationView *)self device];
  CLKPixelAlignRectForDevice();
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v45 = [(NTKRichComplicationBaseCircularOpenMeteredGaugeImageView *)self smallLabel];
  [v45 setFrame:{v38, v40, v42, v44}];
}

- (void)setPaused:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = NTKRichComplicationBaseCircularOpenMeteredGaugeImageView;
  [(CDRichComplicationView *)&v6 setPaused:?];
  v5 = [(NTKRichComplicationBaseCircularOpenMeteredGaugeImageView *)self centerImageView];
  [v5 setPaused:v3];
}

- (int64_t)tritiumUpdateMode
{
  v3 = [(NTKRichComplicationBaseCircularOpenMeteredGaugeImageView *)self centerImageView];
  v4 = [v3 tritiumUpdateMode];

  if (v4)
  {
    v5 = [v4 integerValue];
    if (v5 >= 2)
    {
      v6 = 2;
    }

    else
    {
      v6 = v5;
    }
  }

  else
  {
    v8.receiver = self;
    v8.super_class = NTKRichComplicationBaseCircularOpenMeteredGaugeImageView;
    v6 = [(CDRichComplicationTemplateView *)&v8 tritiumUpdateMode];
  }

  return v6;
}

- ($8502DCEA08BBBE1AB2005217B3838BBD)_layoutConstraintsWithDevice:(SEL)a3 family:(id)a4
{
  memset(v13, 0, sizeof(v13));
  memset(v12, 0, sizeof(v12));
  v7 = v12;
  ___LayoutConstants_block_invoke_39(a4, v12);
  if (a5 != 10)
  {
    if (a5 == 12)
    {
      v7 = v13;
    }

    else
    {
      v9 = _NTKLoggingObjectForDomain(18, "NTKLoggingDomainComplication");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [NTKRichComplicationBaseCircularOpenMeteredGaugeImageView _layoutConstraintsWithDevice:a5 family:v9];
      }

      v7 = v12;
    }
  }

  v10 = v7[1];
  *&retstr->var0 = *v7;
  *&retstr->var2 = v10;
  v11 = v7[3];
  *&retstr->var4 = v7[2];
  *&retstr->var6 = v11;
  return result;
}

- (void)_enumerateLabelsWithBlock:(id)a3
{
  v6.receiver = self;
  v6.super_class = NTKRichComplicationBaseCircularOpenMeteredGaugeImageView;
  v4 = a3;
  [(CDRichComplicationView *)&v6 _enumerateLabelsWithBlock:v4];
  v5 = [(NTKRichComplicationBaseCircularOpenMeteredGaugeImageView *)self smallLabel:v6.receiver];
  v4[2](v4, v5);
}

- (void)_editingDidEnd
{
  v2 = [(NTKRichComplicationBaseCircularOpenMeteredGaugeImageView *)self smallLabel];
  [v2 editingDidEnd];
}

- (void)transitionToMonochromeWithFraction:(double)a3
{
  v5 = [(NTKRichComplicationBaseCircularOpenMeteredGaugeImageView *)self centerImageView];
  [v5 transitionToMonochromeWithFraction:a3];

  v6 = [(NTKRichComplicationBaseCircularOpenMeteredGaugeImageView *)self smallLabel];
  [v6 transitionToMonochromeWithFraction:-[NTKRichComplicationBaseCircularOpenMeteredGaugeImageView _innerFilterStyle](self style:{"_innerFilterStyle"), a3}];

  v7 = [(NTKRichComplicationBaseCircularOpenMeteredGaugeImageView *)self progressView];
  [v7 transitionToMonochromeWithFraction:a3];
}

- (void)updateMonochromeColor
{
  v3 = [(NTKRichComplicationBaseCircularOpenMeteredGaugeImageView *)self centerImageView];
  [v3 updateMonochromeColor];

  v4 = [(NTKRichComplicationBaseCircularOpenMeteredGaugeImageView *)self smallLabel];
  [v4 updateMonochromeColorWithStyle:{-[NTKRichComplicationBaseCircularOpenMeteredGaugeImageView _innerFilterStyle](self, "_innerFilterStyle")}];

  v5 = [(NTKRichComplicationBaseCircularOpenMeteredGaugeImageView *)self progressView];
  [v5 updateMonochromeColor];
}

- (void)_layoutConstraintsWithDevice:(uint64_t)a1 family:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = 136315394;
  v3 = "const OpenMeteredGaugeViewLayoutConstants _LayoutConstants(CLKDevice *__strong, CLKComplicationFamily)";
  v4 = 2048;
  v5 = a1;
  _os_log_error_impl(&dword_22D9C5000, a2, OS_LOG_TYPE_ERROR, "Unhandled complication family in %s constants: %ld", &v2, 0x16u);
}

@end