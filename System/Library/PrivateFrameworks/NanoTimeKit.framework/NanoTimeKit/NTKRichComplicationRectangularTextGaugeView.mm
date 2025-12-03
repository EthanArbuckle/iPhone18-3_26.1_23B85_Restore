@interface NTKRichComplicationRectangularTextGaugeView
+ (BOOL)handlesComplicationTemplate:(id)template;
+ (BOOL)isMeteredProgressView;
- (NTKRichComplicationRectangularTextGaugeView)init;
- (void)_enumerateLabelsWithBlock:(id)block;
- (void)_handleTemplate:(id)template reason:(int64_t)reason;
- (void)_handleTemplateUpdateWithReason:(int64_t)reason headerViewData:(id)data headerImageProvider:(id)provider headerTextProvider:(id)textProvider bodyTextProvider:(id)bodyTextProvider gaugeProvider:(id)gaugeProvider;
- (void)layoutSubviews;
- (void)transitionToMonochromeWithFraction:(double)fraction;
- (void)updateMonochromeColor;
@end

@implementation NTKRichComplicationRectangularTextGaugeView

+ (BOOL)isMeteredProgressView
{
  [self progressFillStyle];

  CDRichComplicationProgressFillStyleIsMetered();
}

- (NTKRichComplicationRectangularTextGaugeView)init
{
  v15.receiver = self;
  v15.super_class = NTKRichComplicationRectangularTextGaugeView;
  v2 = [(NTKRichComplicationRectangularLargeHeadlineBaseView *)&v15 init];
  if (v2)
  {
    progressFillStyle = [objc_opt_class() progressFillStyle];
    v14 = 0;
    memset(v13, 0, sizeof(v13));
    device = [(CDRichComplicationView *)v2 device];
    ___LayoutConstants_block_invoke_30(device, v13);

    v5 = [(NTKRichComplicationRectangularBaseView *)v2 _createAndAddColoringLabelWithFontSize:1 weight:*(v13 + 1) usesTextProviderTintColoring:*MEMORY[0x277D74418]];
    bodyLabel = v2->_bodyLabel;
    v2->_bodyLabel = v5;

    [(CLKUIColoringLabel *)v2->_bodyLabel setNumberOfLines:1];
    whiteColor = [MEMORY[0x277D75348] whiteColor];
    [(CLKUIColoringLabel *)v2->_bodyLabel setTextColor:whiteColor];

    v8 = [NTKRichComplicationLineProgressView alloc];
    device2 = [(CDRichComplicationView *)v2 device];
    v10 = [(NTKRichComplicationLineProgressView *)v8 initForFamily:11 device:device2 progressFillStyle:progressFillStyle];
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
  device = [(CDRichComplicationView *)self device];
  ___LayoutConstants_block_invoke_30(device, &v15);

  [(NTKRichComplicationRectangularTextGaugeView *)self bounds];
  v5 = v4;
  v7 = v6;
  [(NTKRichComplicationRectangularBaseView *)self contentMargin];
  v9 = v8;
  v10 = v5 + v8 * -2.0;
  [(CLKUIColoringLabel *)self->_bodyLabel sizeToFit];
  [(CLKUIColoringLabel *)self->_bodyLabel frame];
  font = [(CLKUIColoringLabel *)self->_bodyLabel font];
  [font ascender];

  font2 = [(CLKUIColoringLabel *)self->_bodyLabel font];
  [font2 lineHeight];

  device2 = [(CDRichComplicationView *)self device];
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

+ (BOOL)handlesComplicationTemplate:(id)template
{
  templateCopy = template;
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

- (void)_handleTemplate:(id)template reason:(int64_t)reason
{
  templateCopy = template;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = templateCopy;
    headerLabelData = [v6 headerLabelData];
    bodyTextProvider = [v6 bodyTextProvider];

    headerImageProvider = 0;
  }

  else
  {
    headerImageProvider = [templateCopy headerImageProvider];
    bodyTextProvider = [templateCopy body1TextProvider];
    headerLabelData = 0;
  }

  headerTextProvider = [templateCopy headerTextProvider];
  gaugeProvider = [templateCopy gaugeProvider];
  [(NTKRichComplicationRectangularTextGaugeView *)self _handleTemplateUpdateWithReason:reason headerViewData:headerLabelData headerImageProvider:headerImageProvider headerTextProvider:headerTextProvider bodyTextProvider:bodyTextProvider gaugeProvider:gaugeProvider];
}

- (void)_handleTemplateUpdateWithReason:(int64_t)reason headerViewData:(id)data headerImageProvider:(id)provider headerTextProvider:(id)textProvider bodyTextProvider:(id)bodyTextProvider gaugeProvider:(id)gaugeProvider
{
  gaugeProviderCopy = gaugeProvider;
  bodyTextProviderCopy = bodyTextProvider;
  [(NTKRichComplicationRectangularLargeHeadlineBaseView *)self _updateTemplateHeaderWithTextProvider:textProvider imageProvider:provider viewData:data reason:reason];
  [(CLKUIColoringLabel *)self->_bodyLabel setTextProvider:bodyTextProviderCopy];

  [(CDRichComplicationProgressView *)self->_progressView setGaugeProvider:gaugeProviderCopy];
}

- (void)_enumerateLabelsWithBlock:(id)block
{
  v5.receiver = self;
  v5.super_class = NTKRichComplicationRectangularTextGaugeView;
  blockCopy = block;
  [(NTKRichComplicationRectangularLargeHeadlineBaseView *)&v5 _enumerateLabelsWithBlock:blockCopy];
  blockCopy[2](blockCopy, self->_bodyLabel);
}

- (void)transitionToMonochromeWithFraction:(double)fraction
{
  v5.receiver = self;
  v5.super_class = NTKRichComplicationRectangularTextGaugeView;
  [(NTKRichComplicationRectangularLargeHeadlineBaseView *)&v5 transitionToMonochromeWithFraction:?];
  [(CLKUIColoringLabel *)self->_bodyLabel transitionToMonochromeWithFraction:0 style:fraction];
  [(CDRichComplicationProgressView *)self->_progressView transitionToMonochromeWithFraction:fraction];
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