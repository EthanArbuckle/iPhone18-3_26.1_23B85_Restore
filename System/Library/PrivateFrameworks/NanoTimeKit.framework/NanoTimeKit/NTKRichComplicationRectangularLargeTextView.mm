@interface NTKRichComplicationRectangularLargeTextView
+ (BOOL)handlesComplicationTemplate:(id)template;
- (NTKRichComplicationRectangularLargeTextView)init;
- (void)_enumerateLabelsWithBlock:(id)block;
- (void)_handleTemplate:(id)template reason:(int64_t)reason;
- (void)layoutSubviews;
- (void)transitionToMonochromeWithFraction:(double)fraction;
- (void)updateMonochromeColor;
@end

@implementation NTKRichComplicationRectangularLargeTextView

- (NTKRichComplicationRectangularLargeTextView)init
{
  v12.receiver = self;
  v12.super_class = NTKRichComplicationRectangularLargeTextView;
  v2 = [(NTKRichComplicationRectangularLargeHeadlineBaseView *)&v12 init];
  v3 = v2;
  if (v2)
  {
    v11 = 0;
    v10 = 0u;
    v4 = [(CDRichComplicationView *)v2 device:0];
    ___LayoutConstants_block_invoke_74(v4, &v9);

    v5 = [(NTKRichComplicationRectangularBaseView *)v3 _createAndAddColoringLabelWithFontSize:0 weight:v10 usesTextProviderTintColoring:?];
    line1Label = v3->_line1Label;
    v3->_line1Label = v5;

    whiteColor = [MEMORY[0x277D75348] whiteColor];
    [(CLKUIColoringLabel *)v3->_line1Label setTextColor:whiteColor];
  }

  return v3;
}

- (void)layoutSubviews
{
  v14.receiver = self;
  v14.super_class = NTKRichComplicationRectangularLargeTextView;
  [(NTKRichComplicationRectangularLargeHeadlineBaseView *)&v14 layoutSubviews];
  v13 = 0.0;
  memset(v12, 0, sizeof(v12));
  device = [(CDRichComplicationView *)self device];
  ___LayoutConstants_block_invoke_74(device, v12);

  [(NTKRichComplicationRectangularLargeTextView *)self bounds];
  v5 = v4;
  [(NTKRichComplicationRectangularBaseView *)self contentMargin];
  v7 = v5 + v6 * -2.0;
  [(CLKUIColoringLabel *)self->_line1Label sizeToFit];
  [(CLKUIColoringLabel *)self->_line1Label frame];
  [(NTKRichComplicationRectangularBaseView *)self contentMargin];
  v8 = v13;
  font = [(CLKUIColoringLabel *)self->_line1Label font];
  [font ascender];

  font2 = [(CLKUIColoringLabel *)self->_line1Label font];
  [font2 lineHeight];

  device2 = [(CDRichComplicationView *)self device];
  CLKPixelAlignRectForDevice();
  [(CLKUIColoringLabel *)self->_line1Label setFrame:?];

  [(CLKUIColoringLabel *)self->_line1Label setMaxWidth:v7 + v8 * -2.0];
}

+ (BOOL)handlesComplicationTemplate:(id)template
{
  templateCopy = template;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)_handleTemplate:(id)template reason:(int64_t)reason
{
  templateCopy = template;
  headerTextProvider = [templateCopy headerTextProvider];
  headerImageProvider = [templateCopy headerImageProvider];
  [(NTKRichComplicationRectangularLargeHeadlineBaseView *)self _updateTemplateHeaderWithTextProvider:headerTextProvider imageProvider:headerImageProvider viewData:0 reason:reason];

  bodyTextProvider = [templateCopy bodyTextProvider];

  [(CLKUIColoringLabel *)self->_line1Label setTextProvider:bodyTextProvider];
}

- (void)_enumerateLabelsWithBlock:(id)block
{
  v5.receiver = self;
  v5.super_class = NTKRichComplicationRectangularLargeTextView;
  blockCopy = block;
  [(NTKRichComplicationRectangularLargeHeadlineBaseView *)&v5 _enumerateLabelsWithBlock:blockCopy];
  blockCopy[2](blockCopy, self->_line1Label);
}

- (void)transitionToMonochromeWithFraction:(double)fraction
{
  v5.receiver = self;
  v5.super_class = NTKRichComplicationRectangularLargeTextView;
  [(NTKRichComplicationRectangularLargeHeadlineBaseView *)&v5 transitionToMonochromeWithFraction:?];
  [(CLKUIColoringLabel *)self->_line1Label transitionToMonochromeWithFraction:0 style:fraction];
}

- (void)updateMonochromeColor
{
  v3.receiver = self;
  v3.super_class = NTKRichComplicationRectangularLargeTextView;
  [(NTKRichComplicationRectangularLargeHeadlineBaseView *)&v3 updateMonochromeColor];
  [(CLKUIColoringLabel *)self->_line1Label updateMonochromeColorWithStyle:0];
}

@end