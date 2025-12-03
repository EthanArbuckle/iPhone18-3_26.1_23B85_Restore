@interface NTKRichComplicationBaseCircularOpenMeteredGaugeImageView
- ($8502DCEA08BBBE1AB2005217B3838BBD)_layoutConstraintsWithDevice:(SEL)device family:(id)family;
- (NTKRichComplicationBaseCircularOpenMeteredGaugeImageView)initWithFamily:(int64_t)family;
- (int64_t)_innerFilterStyle;
- (int64_t)_outerFilterStyle;
- (int64_t)tritiumUpdateMode;
- (void)_editingDidEnd;
- (void)_enumerateLabelsWithBlock:(id)block;
- (void)layoutSubviews;
- (void)setPaused:(BOOL)paused;
- (void)transitionToMonochromeWithFraction:(double)fraction;
- (void)updateMonochromeColor;
@end

@implementation NTKRichComplicationBaseCircularOpenMeteredGaugeImageView

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

- (NTKRichComplicationBaseCircularOpenMeteredGaugeImageView)initWithFamily:(int64_t)family
{
  v20.receiver = self;
  v20.super_class = NTKRichComplicationBaseCircularOpenMeteredGaugeImageView;
  v4 = [(NTKRichComplicationCircularBaseView *)&v20 initWithFamily:?];
  v5 = v4;
  if (v4)
  {
    v6 = [(CDRichComplicationView *)v4 device:0];
    [(NTKRichComplicationBaseCircularOpenMeteredGaugeImageView *)v5 _layoutConstraintsWithDevice:v6 family:family];

    v7 = [off_27877BEA8 alloc];
    device = [(CDRichComplicationView *)v5 device];
    v9 = [v7 initWithFamily:family curveWidth:device padding:-[NTKRichComplicationBaseCircularOpenMeteredGaugeImageView _outerFilterStyle](v5 beginAngle:"_outerFilterStyle") endAngle:objc_msgSend(objc_opt_class() forDevice:"progressFillStyle") withFilterStyle:0.0 progressFillStyle:{0.0, 0.0, 6.28318531 - 0.0}];
    progressView = v5->_progressView;
    v5->_progressView = v9;

    [(CDRichComplicationCurvedProgressView *)v5->_progressView setFilterProvider:v5];
    contentView = [(NTKRichComplicationCircularBaseView *)v5 contentView];
    [contentView addSubview:v5->_progressView];

    v12 = [off_27877BEB0 alloc];
    device2 = [(CDRichComplicationView *)v5 device];
    v14 = [v12 initWithDevice:device2 useAccentColor:1];
    centerImageView = v5->_centerImageView;
    v5->_centerImageView = v14;

    [(CDRichComplicationImageView *)v5->_centerImageView setPaused:[(CDRichComplicationView *)v5 paused]];
    [(CDRichComplicationImageView *)v5->_centerImageView setFilterProvider:v5];
    contentView2 = [(NTKRichComplicationCircularBaseView *)v5 contentView];
    [contentView2 addSubview:v5->_centerImageView];

    _createAndAddColoringLabel = [(NTKRichComplicationCircularBaseView *)v5 _createAndAddColoringLabel];
    smallLabel = v5->_smallLabel;
    v5->_smallLabel = _createAndAddColoringLabel;

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
  device = [(CDRichComplicationView *)self device];
  [(NTKRichComplicationBaseCircularOpenMeteredGaugeImageView *)self _layoutConstraintsWithDevice:device family:[(CDRichComplicationView *)self family]];

  contentView = [(NTKRichComplicationCircularBaseView *)self contentView];
  [contentView bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  progressView = [(NTKRichComplicationBaseCircularOpenMeteredGaugeImageView *)self progressView];
  [progressView setFrame:{v6, v8, v10, v12}];

  device2 = [(CDRichComplicationView *)self device];
  CLKPixelAlignRectForDevice();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  centerImageView = [(NTKRichComplicationBaseCircularOpenMeteredGaugeImageView *)self centerImageView];
  [centerImageView setFrame:{v16, v18, v20, v22}];

  smallLabel = [(NTKRichComplicationBaseCircularOpenMeteredGaugeImageView *)self smallLabel];
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
  [(NTKRichComplicationCircularBaseView *)self _adjustFontSizeForLabel:smallLabel fontWeight:v29 possibleMaxWidths:v32 possibleFontSizes:v26];

  smallLabel2 = [(NTKRichComplicationBaseCircularOpenMeteredGaugeImageView *)self smallLabel];
  [smallLabel2 frame];

  smallLabel3 = [(NTKRichComplicationBaseCircularOpenMeteredGaugeImageView *)self smallLabel];
  font = [smallLabel3 font];
  [font ascender];

  device3 = [(CDRichComplicationView *)self device];
  CLKPixelAlignRectForDevice();
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v44 = v43;
  smallLabel4 = [(NTKRichComplicationBaseCircularOpenMeteredGaugeImageView *)self smallLabel];
  [smallLabel4 setFrame:{v38, v40, v42, v44}];
}

- (void)setPaused:(BOOL)paused
{
  pausedCopy = paused;
  v6.receiver = self;
  v6.super_class = NTKRichComplicationBaseCircularOpenMeteredGaugeImageView;
  [(CDRichComplicationView *)&v6 setPaused:?];
  centerImageView = [(NTKRichComplicationBaseCircularOpenMeteredGaugeImageView *)self centerImageView];
  [centerImageView setPaused:pausedCopy];
}

- (int64_t)tritiumUpdateMode
{
  centerImageView = [(NTKRichComplicationBaseCircularOpenMeteredGaugeImageView *)self centerImageView];
  tritiumUpdateMode = [centerImageView tritiumUpdateMode];

  if (tritiumUpdateMode)
  {
    integerValue = [tritiumUpdateMode integerValue];
    if (integerValue >= 2)
    {
      tritiumUpdateMode2 = 2;
    }

    else
    {
      tritiumUpdateMode2 = integerValue;
    }
  }

  else
  {
    v8.receiver = self;
    v8.super_class = NTKRichComplicationBaseCircularOpenMeteredGaugeImageView;
    tritiumUpdateMode2 = [(CDRichComplicationTemplateView *)&v8 tritiumUpdateMode];
  }

  return tritiumUpdateMode2;
}

- ($8502DCEA08BBBE1AB2005217B3838BBD)_layoutConstraintsWithDevice:(SEL)device family:(id)family
{
  memset(v13, 0, sizeof(v13));
  memset(v12, 0, sizeof(v12));
  v7 = v12;
  ___LayoutConstants_block_invoke_39(family, v12);
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

- (void)_enumerateLabelsWithBlock:(id)block
{
  v6.receiver = self;
  v6.super_class = NTKRichComplicationBaseCircularOpenMeteredGaugeImageView;
  blockCopy = block;
  [(CDRichComplicationView *)&v6 _enumerateLabelsWithBlock:blockCopy];
  v5 = [(NTKRichComplicationBaseCircularOpenMeteredGaugeImageView *)self smallLabel:v6.receiver];
  blockCopy[2](blockCopy, v5);
}

- (void)_editingDidEnd
{
  smallLabel = [(NTKRichComplicationBaseCircularOpenMeteredGaugeImageView *)self smallLabel];
  [smallLabel editingDidEnd];
}

- (void)transitionToMonochromeWithFraction:(double)fraction
{
  centerImageView = [(NTKRichComplicationBaseCircularOpenMeteredGaugeImageView *)self centerImageView];
  [centerImageView transitionToMonochromeWithFraction:fraction];

  smallLabel = [(NTKRichComplicationBaseCircularOpenMeteredGaugeImageView *)self smallLabel];
  [smallLabel transitionToMonochromeWithFraction:-[NTKRichComplicationBaseCircularOpenMeteredGaugeImageView _innerFilterStyle](self style:{"_innerFilterStyle"), fraction}];

  progressView = [(NTKRichComplicationBaseCircularOpenMeteredGaugeImageView *)self progressView];
  [progressView transitionToMonochromeWithFraction:fraction];
}

- (void)updateMonochromeColor
{
  centerImageView = [(NTKRichComplicationBaseCircularOpenMeteredGaugeImageView *)self centerImageView];
  [centerImageView updateMonochromeColor];

  smallLabel = [(NTKRichComplicationBaseCircularOpenMeteredGaugeImageView *)self smallLabel];
  [smallLabel updateMonochromeColorWithStyle:{-[NTKRichComplicationBaseCircularOpenMeteredGaugeImageView _innerFilterStyle](self, "_innerFilterStyle")}];

  progressView = [(NTKRichComplicationBaseCircularOpenMeteredGaugeImageView *)self progressView];
  [progressView updateMonochromeColor];
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