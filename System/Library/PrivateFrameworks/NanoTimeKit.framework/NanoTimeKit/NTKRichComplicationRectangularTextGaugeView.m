@interface NTKRichComplicationRectangularTextGaugeView
+ (BOOL)handlesComplicationTemplate:(id)a3;
+ (BOOL)isMeteredProgressView;
- (NTKRichComplicationRectangularTextGaugeView)init;
- (void)_enumerateLabelsWithBlock:(id)a3;
- (void)_handleTemplate:(id)a3 reason:(int64_t)a4;
- (void)_handleTemplateUpdateWithReason:(int64_t)a3 headerViewData:(id)a4 headerImageProvider:(id)a5 headerTextProvider:(id)a6 bodyTextProvider:(id)a7 gaugeProvider:(id)a8;
- (void)layoutSubviews;
- (void)transitionToMonochromeWithFraction:(double)a3;
- (void)updateMonochromeColor;
@end

@implementation NTKRichComplicationRectangularTextGaugeView

+ (BOOL)isMeteredProgressView
{
  [a1 progressFillStyle];

  CDRichComplicationProgressFillStyleIsMetered();
}

- (NTKRichComplicationRectangularTextGaugeView)init
{
  v15.receiver = self;
  v15.super_class = NTKRichComplicationRectangularTextGaugeView;
  v2 = [(NTKRichComplicationRectangularLargeHeadlineBaseView *)&v15 init];
  if (v2)
  {
    v3 = [objc_opt_class() progressFillStyle];
    v14 = 0;
    memset(v13, 0, sizeof(v13));
    v4 = [(CDRichComplicationView *)v2 device];
    ___LayoutConstants_block_invoke_30(v4, v13);

    v5 = [(NTKRichComplicationRectangularBaseView *)v2 _createAndAddColoringLabelWithFontSize:1 weight:*(v13 + 1) usesTextProviderTintColoring:*MEMORY[0x277D74418]];
    bodyLabel = v2->_bodyLabel;
    v2->_bodyLabel = v5;

    [(CLKUIColoringLabel *)v2->_bodyLabel setNumberOfLines:1];
    v7 = [MEMORY[0x277D75348] whiteColor];
    [(CLKUIColoringLabel *)v2->_bodyLabel setTextColor:v7];

    v8 = [NTKRichComplicationLineProgressView alloc];
    v9 = [(CDRichComplicationView *)v2 device];
    v10 = [(NTKRichComplicationLineProgressView *)v8 initForFamily:11 device:v9 progressFillStyle:v3];
    progressView = v2->_progressView;
    v2->_progressView = v10;

    [(CDRichComplicationProgressView *)v2->_progressView setFilterProvider:v2];
    [(NTKRichComplicationRectangularTextGaugeView *)v2 addSubview:v2->_progressView];
  }

  return v2;
}

- (void)layoutSubviews
{
  v18.receiver = self;
  v18.super_class = NTKRichComplicationRectangularTextGaugeView;
  [(NTKRichComplicationRectangularLargeHeadlineBaseView *)&v18 layoutSubviews];
  v17 = 0;
  v15 = 0u;
  v16 = 0u;
  v3 = [(CDRichComplicationView *)self device];
  ___LayoutConstants_block_invoke_30(v3, &v15);

  [(NTKRichComplicationRectangularTextGaugeView *)self bounds];
  v5 = v4;
  v7 = v6;
  [(NTKRichComplicationRectangularBaseView *)self contentMargin];
  v9 = v8;
  v10 = v5 + v8 * -2.0;
  [(CLKUIColoringLabel *)self->_bodyLabel sizeToFit];
  [(CLKUIColoringLabel *)self->_bodyLabel frame];
  v11 = [(CLKUIColoringLabel *)self->_bodyLabel font];
  [v11 ascender];

  v12 = [(CLKUIColoringLabel *)self->_bodyLabel font];
  [v12 lineHeight];

  v13 = [(CDRichComplicationView *)self device];
  CLKPixelAlignRectForDevice();
  [(CLKUIColoringLabel *)self->_bodyLabel setFrame:?];

  [(CLKUIColoringLabel *)self->_bodyLabel setMaxWidth:v10];
  if ([objc_opt_class() isMeteredProgressView])
  {
    v14 = &v17;
  }

  else
  {
    v14 = &v16;
  }

  [(NTKRichComplicationLineProgressView *)self->_progressView setFrame:v9, v7 - *(&v16 + 1) - *v14, v10];
}

+ (BOOL)handlesComplicationTemplate:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    isKindOfClass = 1;
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  return isKindOfClass & 1;
}

- (void)_handleTemplate:(id)a3 reason:(int64_t)a4
{
  v12 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v12;
    v7 = [v6 headerLabelData];
    v8 = [v6 bodyTextProvider];

    v9 = 0;
  }

  else
  {
    v9 = [v12 headerImageProvider];
    v8 = [v12 body1TextProvider];
    v7 = 0;
  }

  v10 = [v12 headerTextProvider];
  v11 = [v12 gaugeProvider];
  [(NTKRichComplicationRectangularTextGaugeView *)self _handleTemplateUpdateWithReason:a4 headerViewData:v7 headerImageProvider:v9 headerTextProvider:v10 bodyTextProvider:v8 gaugeProvider:v11];
}

- (void)_handleTemplateUpdateWithReason:(int64_t)a3 headerViewData:(id)a4 headerImageProvider:(id)a5 headerTextProvider:(id)a6 bodyTextProvider:(id)a7 gaugeProvider:(id)a8
{
  v15 = a8;
  v14 = a7;
  [(NTKRichComplicationRectangularLargeHeadlineBaseView *)self _updateTemplateHeaderWithTextProvider:a6 imageProvider:a5 viewData:a4 reason:a3];
  [(CLKUIColoringLabel *)self->_bodyLabel setTextProvider:v14];

  [(CDRichComplicationProgressView *)self->_progressView setGaugeProvider:v15];
}

- (void)_enumerateLabelsWithBlock:(id)a3
{
  v5.receiver = self;
  v5.super_class = NTKRichComplicationRectangularTextGaugeView;
  v4 = a3;
  [(NTKRichComplicationRectangularLargeHeadlineBaseView *)&v5 _enumerateLabelsWithBlock:v4];
  v4[2](v4, self->_bodyLabel);
}

- (void)transitionToMonochromeWithFraction:(double)a3
{
  v5.receiver = self;
  v5.super_class = NTKRichComplicationRectangularTextGaugeView;
  [(NTKRichComplicationRectangularLargeHeadlineBaseView *)&v5 transitionToMonochromeWithFraction:?];
  [(CLKUIColoringLabel *)self->_bodyLabel transitionToMonochromeWithFraction:0 style:a3];
  [(CDRichComplicationProgressView *)self->_progressView transitionToMonochromeWithFraction:a3];
}

- (void)updateMonochromeColor
{
  v3.receiver = self;
  v3.super_class = NTKRichComplicationRectangularTextGaugeView;
  [(NTKRichComplicationRectangularLargeHeadlineBaseView *)&v3 updateMonochromeColor];
  [(CLKUIColoringLabel *)self->_bodyLabel updateMonochromeColorWithStyle:0];
  [(CDRichComplicationProgressView *)self->_progressView updateMonochromeColor];
}

@end